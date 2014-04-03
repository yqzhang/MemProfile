	.file	"bzlib.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 bzlib.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.align 8
.LC0:
	.ascii	"\n\nbzip2/libb"
	.string	"zip2: internal error number %d.\nThis may be a bug in bzip2/libbzip2, %s.\nIt may also be a bug in your compiler.  Please do not bother the\noriginal author of bzip2 with a bug report for this.  He\ndoesn't know anything about bzip2 as it appears in CPU2006.\n\n"
	.align 8
.LC1:
	.ascii	"\n*** A special note about internal error number 1007 ***\n\n"
	.ascii	"Experience suggests that a common cause of i.e. 1007\nis unr"
	.ascii	"eliable memory or other hardware.  The 1007 assertion\njust "
	.ascii	"happens to cross-check the results of huge numbers of\nmemor"
	.ascii	"y reads/writes, and so acts (unintendedly) as a stress\ntest"
	.ascii	" of your memory system.\n\nI suggest the following: try comp"
	.ascii	"ressing the file again,\npossibly monitoring progress in det"
	.ascii	"ail with the -vv flag.\n\n* If the error cannot be reproduce"
	.ascii	"d, and/or happens at different\n  points in compression, you"
	.ascii	" may have a flaky memory system.\n  Try a memory-test progra"
	.ascii	"m.  I have used Memtest86\n  (www.memtest86.com).  At the ti"
	.ascii	"me of writing it is free (GPLd).\n  Memtest86 tests memory m"
	.ascii	"uch more thorougly than your BIOSs\n  power-on test, and may"
	.ascii	" find failures that the BIOS doesn't"
	.string	".\n\n* If the error can be repeatably reproduced, this is a bug in\n  bzip2, and I would very much like to hear about it.  Please\n  let me know, and, ideally, save a copy of the file causing the\n  problem -- without which I will be unable to investigate it.\n\n"
	.text
	.globl	BZ2_bz__AssertH__fail
	.type	BZ2_bz__AssertH__fail, @function
BZ2_bz__AssertH__fail:
.LFB2:
	.file 1 "bzlib.c"
	.loc 1 88 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# errcode, errcode
	.loc 1 89 0
	call	BZ2_bzlibVersion	#
	movq	%rax, %rcx	#, D.5640
	movq	stderr(%rip), %rax	# stderr, stderr.0
	movl	-4(%rbp), %edx	# errcode, tmp62
	movl	$.LC0, %esi	#,
	movq	%rax, %rdi	# stderr.0,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 109 0
	cmpl	$1007, -4(%rbp)	#, errcode
	jne	.L2	#,
	.loc 1 110 0
	movq	stderr(%rip), %rax	# stderr, stderr.1
	movq	%rax, %rcx	# stderr.1,
	movl	$1056, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC1, %edi	#,
	call	fwrite	#
.L2:
	.loc 1 140 0
	movl	$0, %edi	#,
	call	exit	#
	.cfi_endproc
.LFE2:
	.size	BZ2_bz__AssertH__fail, .-BZ2_bz__AssertH__fail
	.type	bz_config_ok, @function
bz_config_ok:
.LFB3:
	.loc 1 149 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 153 0
	movl	$1, %eax	#, D.5643
	.loc 1 154 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	bz_config_ok, .-bz_config_ok
	.type	default_bzalloc, @function
default_bzalloc:
.LFB4:
	.loc 1 160 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# opaque, opaque
	movl	%esi, -28(%rbp)	# items, items
	movl	%edx, -32(%rbp)	# size, size
	.loc 1 161 0
	movl	-28(%rbp), %eax	# items, tmp63
	imull	-32(%rbp), %eax	# size, D.5644
	cltq
	movq	%rax, %rdi	# D.5645,
	call	malloc	#
	movq	%rax, -8(%rbp)	# tmp64, v
	.loc 1 162 0
	movq	-8(%rbp), %rax	# v, D.5646
	.loc 1 163 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	default_bzalloc, .-default_bzalloc
	.type	default_bzfree, @function
default_bzfree:
.LFB5:
	.loc 1 167 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# opaque, opaque
	movq	%rsi, -16(%rbp)	# addr, addr
	.loc 1 168 0
	cmpq	$0, -16(%rbp)	#, addr
	je	.L7	#,
	.loc 1 168 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# addr, tmp59
	movq	%rax, %rdi	# tmp59,
	call	free	#
.L7:
	.loc 1 169 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	default_bzfree, .-default_bzfree
	.type	prepare_new_block, @function
prepare_new_block:
.LFB6:
	.loc 1 175 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# s, s
	.loc 1 177 0
	movq	-24(%rbp), %rax	# s, tmp61
	movl	$0, 108(%rax)	#, s_2(D)->nblock
	.loc 1 178 0
	movq	-24(%rbp), %rax	# s, tmp62
	movl	$0, 116(%rax)	#, s_2(D)->numZ
	.loc 1 179 0
	movq	-24(%rbp), %rax	# s, tmp63
	movl	$0, 120(%rax)	#, s_2(D)->state_out_pos
	.loc 1 180 0
	movq	-24(%rbp), %rax	# s, tmp64
	movl	$-1, 648(%rax)	#, s_2(D)->blockCRC
	.loc 1 181 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L10	#
.L11:
	.loc 1 181 0 is_stmt 0 discriminator 2
	movq	-24(%rbp), %rdx	# s, tmp65
	movl	-4(%rbp), %eax	# i, tmp67
	cltq
	movb	$0, 128(%rdx,%rax)	#, s_2(D)->inUse
	addl	$1, -4(%rbp)	#, i
.L10:
	.loc 1 181 0 discriminator 1
	cmpl	$255, -4(%rbp)	#, i
	jle	.L11	#,
	.loc 1 182 0 is_stmt 1
	movq	-24(%rbp), %rax	# s, tmp68
	movl	660(%rax), %eax	# s_2(D)->blockNo, D.5647
	leal	1(%rax), %edx	#, D.5647
	movq	-24(%rbp), %rax	# s, tmp69
	movl	%edx, 660(%rax)	# D.5647, s_2(D)->blockNo
	.loc 1 183 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	prepare_new_block, .-prepare_new_block
	.type	init_RL, @function
init_RL:
.LFB7:
	.loc 1 189 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# s, s
	.loc 1 190 0
	movq	-8(%rbp), %rax	# s, tmp59
	movl	$256, 92(%rax)	#, s_1(D)->state_in_ch
	.loc 1 191 0
	movq	-8(%rbp), %rax	# s, tmp60
	movl	$0, 96(%rax)	#, s_1(D)->state_in_len
	.loc 1 192 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	init_RL, .-init_RL
	.type	isempty_RL, @function
isempty_RL:
.LFB8:
	.loc 1 197 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# s, s
	.loc 1 198 0
	movq	-8(%rbp), %rax	# s, tmp63
	movl	92(%rax), %eax	# s_2(D)->state_in_ch, D.5649
	cmpl	$255, %eax	#, D.5649
	ja	.L14	#,
	.loc 1 198 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# s, tmp64
	movl	96(%rax), %eax	# s_2(D)->state_in_len, D.5650
	testl	%eax, %eax	# D.5650
	jle	.L14	#,
	.loc 1 199 0 is_stmt 1
	movl	$0, %eax	#, D.5648
	jmp	.L15	#
.L14:
	.loc 1 200 0
	movl	$1, %eax	#, D.5648
.L15:
	.loc 1 201 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	isempty_RL, .-isempty_RL
	.globl	BZ2_bzCompressInit
	.type	BZ2_bzCompressInit, @function
BZ2_bzCompressInit:
.LFB9:
	.loc 1 210 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# strm, strm
	movl	%esi, -28(%rbp)	# blockSize100k, blockSize100k
	movl	%edx, -32(%rbp)	# verbosity, verbosity
	movl	%ecx, -36(%rbp)	# workFactor, workFactor
	.loc 1 214 0
	call	bz_config_ok	#
	testl	%eax, %eax	# D.5651
	jne	.L17	#,
	.loc 1 214 0 is_stmt 0 discriminator 1
	movl	$-9, %eax	#, D.5651
	jmp	.L18	#
.L17:
	.loc 1 216 0 is_stmt 1
	cmpq	$0, -24(%rbp)	#, strm
	je	.L19	#,
	.loc 1 216 0 is_stmt 0 discriminator 1
	cmpl	$0, -28(%rbp)	#, blockSize100k
	jle	.L19	#,
	.loc 1 217 0 is_stmt 1
	cmpl	$9, -28(%rbp)	#, blockSize100k
	jg	.L19	#,
	.loc 1 217 0 is_stmt 0 discriminator 1
	cmpl	$0, -36(%rbp)	#, workFactor
	js	.L19	#,
	.loc 1 218 0 is_stmt 1
	cmpl	$250, -36(%rbp)	#, workFactor
	jle	.L20	#,
.L19:
	.loc 1 219 0
	movl	$-2, %eax	#, D.5651
	jmp	.L18	#
.L20:
	.loc 1 221 0
	cmpl	$0, -36(%rbp)	#, workFactor
	jne	.L21	#,
	.loc 1 221 0 is_stmt 0 discriminator 1
	movl	$30, -36(%rbp)	#, workFactor
.L21:
	.loc 1 222 0 is_stmt 1
	movq	-24(%rbp), %rax	# strm, tmp104
	movq	56(%rax), %rax	# strm_5(D)->bzalloc, D.5652
	testq	%rax, %rax	# D.5652
	jne	.L22	#,
	.loc 1 222 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# strm, tmp105
	movq	$default_bzalloc, 56(%rax)	#, strm_5(D)->bzalloc
.L22:
	.loc 1 223 0 is_stmt 1
	movq	-24(%rbp), %rax	# strm, tmp106
	movq	64(%rax), %rax	# strm_5(D)->bzfree, D.5653
	testq	%rax, %rax	# D.5653
	jne	.L23	#,
	.loc 1 223 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# strm, tmp107
	movq	$default_bzfree, 64(%rax)	#, strm_5(D)->bzfree
.L23:
	.loc 1 225 0 is_stmt 1
	movq	-24(%rbp), %rax	# strm, tmp108
	movq	56(%rax), %rax	# strm_5(D)->bzalloc, D.5652
	movq	-24(%rbp), %rdx	# strm, tmp109
	movq	72(%rdx), %rcx	# strm_5(D)->opaque, D.5654
	movl	$1, %edx	#,
	movl	$55768, %esi	#,
	movq	%rcx, %rdi	# D.5654,
	call	*%rax	# D.5652
	movq	%rax, -8(%rbp)	# tmp110, s
	.loc 1 226 0
	cmpq	$0, -8(%rbp)	#, s
	jne	.L24	#,
	.loc 1 226 0 is_stmt 0 discriminator 1
	movl	$-3, %eax	#, D.5651
	jmp	.L18	#
.L24:
	.loc 1 227 0 is_stmt 1
	movq	-8(%rbp), %rax	# s, tmp111
	movq	-24(%rbp), %rdx	# strm, tmp112
	movq	%rdx, (%rax)	# tmp112, s_13->strm
	.loc 1 229 0
	movq	-8(%rbp), %rax	# s, tmp113
	movq	$0, 24(%rax)	#, s_13->arr1
	.loc 1 230 0
	movq	-8(%rbp), %rax	# s, tmp114
	movq	$0, 32(%rax)	#, s_13->arr2
	.loc 1 231 0
	movq	-8(%rbp), %rax	# s, tmp115
	movq	$0, 40(%rax)	#, s_13->ftab
	.loc 1 233 0
	movl	-28(%rbp), %eax	# blockSize100k, tmp117
	imull	$100000, %eax, %eax	#, tmp117, tmp116
	movl	%eax, -12(%rbp)	# tmp116, n
	.loc 1 234 0
	movq	-24(%rbp), %rax	# strm, tmp118
	movq	56(%rax), %rax	# strm_5(D)->bzalloc, D.5652
	movl	-12(%rbp), %edx	# n, n.2
	sall	$2, %edx	#, D.5655
	movl	%edx, %esi	# D.5655, D.5651
	movq	-24(%rbp), %rdx	# strm, tmp119
	movq	72(%rdx), %rcx	# strm_5(D)->opaque, D.5654
	movl	$1, %edx	#,
	movq	%rcx, %rdi	# D.5654,
	call	*%rax	# D.5652
	movq	-8(%rbp), %rdx	# s, tmp120
	movq	%rax, 24(%rdx)	# D.5654, s_13->arr1
	.loc 1 235 0
	movq	-24(%rbp), %rax	# strm, tmp121
	movq	56(%rax), %rax	# strm_5(D)->bzalloc, D.5652
	movl	-12(%rbp), %edx	# n, tmp122
	addl	$34, %edx	#, D.5651
	sall	$2, %edx	#, D.5655
	movl	%edx, %esi	# D.5655, D.5651
	movq	-24(%rbp), %rdx	# strm, tmp123
	movq	72(%rdx), %rcx	# strm_5(D)->opaque, D.5654
	movl	$1, %edx	#,
	movq	%rcx, %rdi	# D.5654,
	call	*%rax	# D.5652
	movq	-8(%rbp), %rdx	# s, tmp124
	movq	%rax, 32(%rdx)	# D.5654, s_13->arr2
	.loc 1 236 0
	movq	-24(%rbp), %rax	# strm, tmp125
	movq	56(%rax), %rax	# strm_5(D)->bzalloc, D.5652
	movq	-24(%rbp), %rdx	# strm, tmp126
	movq	72(%rdx), %rcx	# strm_5(D)->opaque, D.5654
	movl	$1, %edx	#,
	movl	$262148, %esi	#,
	movq	%rcx, %rdi	# D.5654,
	call	*%rax	# D.5652
	movq	-8(%rbp), %rdx	# s, tmp127
	movq	%rax, 40(%rdx)	# D.5654, s_13->ftab
	.loc 1 238 0
	movq	-8(%rbp), %rax	# s, tmp128
	movq	24(%rax), %rax	# s_13->arr1, D.5656
	testq	%rax, %rax	# D.5656
	je	.L25	#,
	.loc 1 238 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# s, tmp129
	movq	32(%rax), %rax	# s_13->arr2, D.5656
	testq	%rax, %rax	# D.5656
	je	.L25	#,
	movq	-8(%rbp), %rax	# s, tmp130
	movq	40(%rax), %rax	# s_13->ftab, D.5656
	testq	%rax, %rax	# D.5656
	jne	.L26	#,
.L25:
	.loc 1 239 0 is_stmt 1
	movq	-8(%rbp), %rax	# s, tmp131
	movq	24(%rax), %rax	# s_13->arr1, D.5656
	testq	%rax, %rax	# D.5656
	je	.L27	#,
	.loc 1 239 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# strm, tmp132
	movq	64(%rax), %rax	# strm_5(D)->bzfree, D.5653
	movq	-8(%rbp), %rdx	# s, tmp133
	movq	24(%rdx), %rcx	# s_13->arr1, D.5656
	movq	-24(%rbp), %rdx	# strm, tmp134
	movq	72(%rdx), %rdx	# strm_5(D)->opaque, D.5654
	movq	%rcx, %rsi	# D.5656,
	movq	%rdx, %rdi	# D.5654,
	call	*%rax	# D.5653
.L27:
	.loc 1 240 0 is_stmt 1
	movq	-8(%rbp), %rax	# s, tmp135
	movq	32(%rax), %rax	# s_13->arr2, D.5656
	testq	%rax, %rax	# D.5656
	je	.L28	#,
	.loc 1 240 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# strm, tmp136
	movq	64(%rax), %rax	# strm_5(D)->bzfree, D.5653
	movq	-8(%rbp), %rdx	# s, tmp137
	movq	32(%rdx), %rcx	# s_13->arr2, D.5656
	movq	-24(%rbp), %rdx	# strm, tmp138
	movq	72(%rdx), %rdx	# strm_5(D)->opaque, D.5654
	movq	%rcx, %rsi	# D.5656,
	movq	%rdx, %rdi	# D.5654,
	call	*%rax	# D.5653
.L28:
	.loc 1 241 0 is_stmt 1
	movq	-8(%rbp), %rax	# s, tmp139
	movq	40(%rax), %rax	# s_13->ftab, D.5656
	testq	%rax, %rax	# D.5656
	je	.L29	#,
	.loc 1 241 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# strm, tmp140
	movq	64(%rax), %rax	# strm_5(D)->bzfree, D.5653
	movq	-8(%rbp), %rdx	# s, tmp141
	movq	40(%rdx), %rcx	# s_13->ftab, D.5656
	movq	-24(%rbp), %rdx	# strm, tmp142
	movq	72(%rdx), %rdx	# strm_5(D)->opaque, D.5654
	movq	%rcx, %rsi	# D.5656,
	movq	%rdx, %rdi	# D.5654,
	call	*%rax	# D.5653
.L29:
	.loc 1 242 0 is_stmt 1
	cmpq	$0, -8(%rbp)	#, s
	je	.L30	#,
	.loc 1 242 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# strm, tmp143
	movq	64(%rax), %rax	# strm_5(D)->bzfree, D.5653
	movq	-24(%rbp), %rdx	# strm, tmp144
	movq	72(%rdx), %rdx	# strm_5(D)->opaque, D.5654
	movq	-8(%rbp), %rcx	# s, tmp145
	movq	%rcx, %rsi	# tmp145,
	movq	%rdx, %rdi	# D.5654,
	call	*%rax	# D.5653
.L30:
	.loc 1 243 0 is_stmt 1
	movl	$-3, %eax	#, D.5651
	jmp	.L18	#
.L26:
	.loc 1 246 0
	movq	-8(%rbp), %rax	# s, tmp146
	movl	$0, 660(%rax)	#, s_13->blockNo
	.loc 1 247 0
	movq	-8(%rbp), %rax	# s, tmp147
	movl	$2, 12(%rax)	#, s_13->state
	.loc 1 248 0
	movq	-8(%rbp), %rax	# s, tmp148
	movl	$2, 8(%rax)	#, s_13->mode
	.loc 1 249 0
	movq	-8(%rbp), %rax	# s, tmp149
	movl	$0, 652(%rax)	#, s_13->combinedCRC
	.loc 1 250 0
	movq	-8(%rbp), %rax	# s, tmp150
	movl	-28(%rbp), %edx	# blockSize100k, tmp151
	movl	%edx, 664(%rax)	# tmp151, s_13->blockSize100k
	.loc 1 251 0
	movl	-28(%rbp), %eax	# blockSize100k, tmp152
	imull	$100000, %eax, %eax	#, tmp152, D.5651
	leal	-19(%rax), %edx	#, D.5651
	movq	-8(%rbp), %rax	# s, tmp153
	movl	%edx, 112(%rax)	# D.5651, s_13->nblockMAX
	.loc 1 252 0
	movq	-8(%rbp), %rax	# s, tmp154
	movl	-32(%rbp), %edx	# verbosity, tmp155
	movl	%edx, 656(%rax)	# tmp155, s_13->verbosity
	.loc 1 253 0
	movq	-8(%rbp), %rax	# s, tmp156
	movl	-36(%rbp), %edx	# workFactor, tmp157
	movl	%edx, 88(%rax)	# tmp157, s_13->workFactor
	.loc 1 255 0
	movq	-8(%rbp), %rax	# s, tmp158
	movq	32(%rax), %rdx	# s_13->arr2, D.5656
	movq	-8(%rbp), %rax	# s, tmp159
	movq	%rdx, 64(%rax)	# D.5656, s_13->block
	.loc 1 256 0
	movq	-8(%rbp), %rax	# s, tmp160
	movq	24(%rax), %rdx	# s_13->arr1, D.5656
	movq	-8(%rbp), %rax	# s, tmp161
	movq	%rdx, 72(%rax)	# D.5656, s_13->mtfv
	.loc 1 257 0
	movq	-8(%rbp), %rax	# s, tmp162
	movq	$0, 80(%rax)	#, s_13->zbits
	.loc 1 258 0
	movq	-8(%rbp), %rax	# s, tmp163
	movq	24(%rax), %rdx	# s_13->arr1, D.5656
	movq	-8(%rbp), %rax	# s, tmp164
	movq	%rdx, 56(%rax)	# D.5656, s_13->ptr
	.loc 1 260 0
	movq	-24(%rbp), %rax	# strm, tmp165
	movq	-8(%rbp), %rdx	# s, tmp166
	movq	%rdx, 48(%rax)	# tmp166, strm_5(D)->state
	.loc 1 261 0
	movq	-24(%rbp), %rax	# strm, tmp167
	movl	$0, 12(%rax)	#, strm_5(D)->total_in_lo32
	.loc 1 262 0
	movq	-24(%rbp), %rax	# strm, tmp168
	movl	$0, 16(%rax)	#, strm_5(D)->total_in_hi32
	.loc 1 263 0
	movq	-24(%rbp), %rax	# strm, tmp169
	movl	$0, 36(%rax)	#, strm_5(D)->total_out_lo32
	.loc 1 264 0
	movq	-24(%rbp), %rax	# strm, tmp170
	movl	$0, 40(%rax)	#, strm_5(D)->total_out_hi32
	.loc 1 265 0
	movq	-8(%rbp), %rax	# s, tmp171
	movq	%rax, %rdi	# tmp171,
	call	init_RL	#
	.loc 1 266 0
	movq	-8(%rbp), %rax	# s, tmp172
	movq	%rax, %rdi	# tmp172,
	call	prepare_new_block	#
	.loc 1 267 0
	movl	$0, %eax	#, D.5651
.L18:
	.loc 1 268 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	BZ2_bzCompressInit, .-BZ2_bzCompressInit
	.type	add_pair_to_block, @function
add_pair_to_block:
.LFB10:
	.loc 1 274 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# s, s
	.loc 1 276 0
	movq	-24(%rbp), %rax	# s, tmp142
	movl	92(%rax), %eax	# s_2(D)->state_in_ch, D.5657
	movb	%al, -5(%rbp)	# D.5657, ch
	.loc 1 277 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L32	#
.L33:
	.loc 1 278 0 discriminator 2
	movq	-24(%rbp), %rax	# s, tmp143
	movl	648(%rax), %eax	# s_2(D)->blockCRC, D.5657
	sall	$8, %eax	#, D.5657
	movl	%eax, %edx	# D.5657, D.5657
	movq	-24(%rbp), %rax	# s, tmp144
	movl	648(%rax), %eax	# s_2(D)->blockCRC, D.5657
	shrl	$24, %eax	#, D.5657
	movl	%eax, %ecx	# D.5657, D.5657
	movzbl	-5(%rbp), %eax	# ch, D.5657
	xorl	%ecx, %eax	# D.5657, D.5657
	movl	%eax, %eax	# D.5657, tmp145
	movl	BZ2_crc32Table(,%rax,4), %eax	# BZ2_crc32Table, D.5657
	xorl	%eax, %edx	# D.5657, D.5657
	movq	-24(%rbp), %rax	# s, tmp146
	movl	%edx, 648(%rax)	# D.5657, s_2(D)->blockCRC
	.loc 1 277 0 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L32:
	.loc 1 277 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# s, tmp147
	movl	96(%rax), %eax	# s_2(D)->state_in_len, D.5658
	cmpl	-4(%rbp), %eax	# i, D.5658
	jg	.L33	#,
	.loc 1 280 0 is_stmt 1
	movq	-24(%rbp), %rax	# s, tmp148
	movl	92(%rax), %eax	# s_2(D)->state_in_ch, D.5657
	movq	-24(%rbp), %rdx	# s, tmp149
	movl	%eax, %eax	# D.5657, tmp150
	movb	$1, 128(%rdx,%rax)	#, s_2(D)->inUse
	.loc 1 281 0
	movq	-24(%rbp), %rax	# s, tmp151
	movl	96(%rax), %eax	# s_2(D)->state_in_len, D.5658
	cmpl	$2, %eax	#, D.5658
	je	.L35	#,
	cmpl	$3, %eax	#, D.5658
	je	.L36	#,
	cmpl	$1, %eax	#, D.5658
	jne	.L39	#,
	.loc 1 283 0
	movq	-24(%rbp), %rax	# s, tmp152
	movq	64(%rax), %rdx	# s_2(D)->block, D.5659
	movq	-24(%rbp), %rax	# s, tmp153
	movl	108(%rax), %eax	# s_2(D)->nblock, D.5658
	cltq
	addq	%rax, %rdx	# D.5660, D.5659
	movzbl	-5(%rbp), %eax	# ch, tmp154
	movb	%al, (%rdx)	# tmp154, *_21
	movq	-24(%rbp), %rax	# s, tmp155
	movl	108(%rax), %eax	# s_2(D)->nblock, D.5658
	leal	1(%rax), %edx	#, D.5658
	movq	-24(%rbp), %rax	# s, tmp156
	movl	%edx, 108(%rax)	# D.5658, s_2(D)->nblock
	.loc 1 284 0
	jmp	.L31	#
.L35:
	.loc 1 286 0
	movq	-24(%rbp), %rax	# s, tmp157
	movq	64(%rax), %rdx	# s_2(D)->block, D.5659
	movq	-24(%rbp), %rax	# s, tmp158
	movl	108(%rax), %eax	# s_2(D)->nblock, D.5658
	cltq
	addq	%rax, %rdx	# D.5660, D.5659
	movzbl	-5(%rbp), %eax	# ch, tmp159
	movb	%al, (%rdx)	# tmp159, *_27
	movq	-24(%rbp), %rax	# s, tmp160
	movl	108(%rax), %eax	# s_2(D)->nblock, D.5658
	leal	1(%rax), %edx	#, D.5658
	movq	-24(%rbp), %rax	# s, tmp161
	movl	%edx, 108(%rax)	# D.5658, s_2(D)->nblock
	.loc 1 287 0
	movq	-24(%rbp), %rax	# s, tmp162
	movq	64(%rax), %rdx	# s_2(D)->block, D.5659
	movq	-24(%rbp), %rax	# s, tmp163
	movl	108(%rax), %eax	# s_2(D)->nblock, D.5658
	cltq
	addq	%rax, %rdx	# D.5660, D.5659
	movzbl	-5(%rbp), %eax	# ch, tmp164
	movb	%al, (%rdx)	# tmp164, *_33
	movq	-24(%rbp), %rax	# s, tmp165
	movl	108(%rax), %eax	# s_2(D)->nblock, D.5658
	leal	1(%rax), %edx	#, D.5658
	movq	-24(%rbp), %rax	# s, tmp166
	movl	%edx, 108(%rax)	# D.5658, s_2(D)->nblock
	.loc 1 288 0
	jmp	.L31	#
.L36:
	.loc 1 290 0
	movq	-24(%rbp), %rax	# s, tmp167
	movq	64(%rax), %rdx	# s_2(D)->block, D.5659
	movq	-24(%rbp), %rax	# s, tmp168
	movl	108(%rax), %eax	# s_2(D)->nblock, D.5658
	cltq
	addq	%rax, %rdx	# D.5660, D.5659
	movzbl	-5(%rbp), %eax	# ch, tmp169
	movb	%al, (%rdx)	# tmp169, *_39
	movq	-24(%rbp), %rax	# s, tmp170
	movl	108(%rax), %eax	# s_2(D)->nblock, D.5658
	leal	1(%rax), %edx	#, D.5658
	movq	-24(%rbp), %rax	# s, tmp171
	movl	%edx, 108(%rax)	# D.5658, s_2(D)->nblock
	.loc 1 291 0
	movq	-24(%rbp), %rax	# s, tmp172
	movq	64(%rax), %rdx	# s_2(D)->block, D.5659
	movq	-24(%rbp), %rax	# s, tmp173
	movl	108(%rax), %eax	# s_2(D)->nblock, D.5658
	cltq
	addq	%rax, %rdx	# D.5660, D.5659
	movzbl	-5(%rbp), %eax	# ch, tmp174
	movb	%al, (%rdx)	# tmp174, *_45
	movq	-24(%rbp), %rax	# s, tmp175
	movl	108(%rax), %eax	# s_2(D)->nblock, D.5658
	leal	1(%rax), %edx	#, D.5658
	movq	-24(%rbp), %rax	# s, tmp176
	movl	%edx, 108(%rax)	# D.5658, s_2(D)->nblock
	.loc 1 292 0
	movq	-24(%rbp), %rax	# s, tmp177
	movq	64(%rax), %rdx	# s_2(D)->block, D.5659
	movq	-24(%rbp), %rax	# s, tmp178
	movl	108(%rax), %eax	# s_2(D)->nblock, D.5658
	cltq
	addq	%rax, %rdx	# D.5660, D.5659
	movzbl	-5(%rbp), %eax	# ch, tmp179
	movb	%al, (%rdx)	# tmp179, *_51
	movq	-24(%rbp), %rax	# s, tmp180
	movl	108(%rax), %eax	# s_2(D)->nblock, D.5658
	leal	1(%rax), %edx	#, D.5658
	movq	-24(%rbp), %rax	# s, tmp181
	movl	%edx, 108(%rax)	# D.5658, s_2(D)->nblock
	.loc 1 293 0
	jmp	.L31	#
.L39:
	.loc 1 295 0
	movq	-24(%rbp), %rax	# s, tmp182
	movl	96(%rax), %eax	# s_2(D)->state_in_len, D.5658
	subl	$4, %eax	#, D.5658
	movq	-24(%rbp), %rdx	# s, tmp183
	cltq
	movb	$1, 128(%rdx,%rax)	#, s_2(D)->inUse
	.loc 1 296 0
	movq	-24(%rbp), %rax	# s, tmp185
	movq	64(%rax), %rdx	# s_2(D)->block, D.5659
	movq	-24(%rbp), %rax	# s, tmp186
	movl	108(%rax), %eax	# s_2(D)->nblock, D.5658
	cltq
	addq	%rax, %rdx	# D.5660, D.5659
	movzbl	-5(%rbp), %eax	# ch, tmp187
	movb	%al, (%rdx)	# tmp187, *_59
	movq	-24(%rbp), %rax	# s, tmp188
	movl	108(%rax), %eax	# s_2(D)->nblock, D.5658
	leal	1(%rax), %edx	#, D.5658
	movq	-24(%rbp), %rax	# s, tmp189
	movl	%edx, 108(%rax)	# D.5658, s_2(D)->nblock
	.loc 1 297 0
	movq	-24(%rbp), %rax	# s, tmp190
	movq	64(%rax), %rdx	# s_2(D)->block, D.5659
	movq	-24(%rbp), %rax	# s, tmp191
	movl	108(%rax), %eax	# s_2(D)->nblock, D.5658
	cltq
	addq	%rax, %rdx	# D.5660, D.5659
	movzbl	-5(%rbp), %eax	# ch, tmp192
	movb	%al, (%rdx)	# tmp192, *_65
	movq	-24(%rbp), %rax	# s, tmp193
	movl	108(%rax), %eax	# s_2(D)->nblock, D.5658
	leal	1(%rax), %edx	#, D.5658
	movq	-24(%rbp), %rax	# s, tmp194
	movl	%edx, 108(%rax)	# D.5658, s_2(D)->nblock
	.loc 1 298 0
	movq	-24(%rbp), %rax	# s, tmp195
	movq	64(%rax), %rdx	# s_2(D)->block, D.5659
	movq	-24(%rbp), %rax	# s, tmp196
	movl	108(%rax), %eax	# s_2(D)->nblock, D.5658
	cltq
	addq	%rax, %rdx	# D.5660, D.5659
	movzbl	-5(%rbp), %eax	# ch, tmp197
	movb	%al, (%rdx)	# tmp197, *_71
	movq	-24(%rbp), %rax	# s, tmp198
	movl	108(%rax), %eax	# s_2(D)->nblock, D.5658
	leal	1(%rax), %edx	#, D.5658
	movq	-24(%rbp), %rax	# s, tmp199
	movl	%edx, 108(%rax)	# D.5658, s_2(D)->nblock
	.loc 1 299 0
	movq	-24(%rbp), %rax	# s, tmp200
	movq	64(%rax), %rdx	# s_2(D)->block, D.5659
	movq	-24(%rbp), %rax	# s, tmp201
	movl	108(%rax), %eax	# s_2(D)->nblock, D.5658
	cltq
	addq	%rax, %rdx	# D.5660, D.5659
	movzbl	-5(%rbp), %eax	# ch, tmp202
	movb	%al, (%rdx)	# tmp202, *_77
	movq	-24(%rbp), %rax	# s, tmp203
	movl	108(%rax), %eax	# s_2(D)->nblock, D.5658
	leal	1(%rax), %edx	#, D.5658
	movq	-24(%rbp), %rax	# s, tmp204
	movl	%edx, 108(%rax)	# D.5658, s_2(D)->nblock
	.loc 1 300 0
	movq	-24(%rbp), %rax	# s, tmp205
	movq	64(%rax), %rdx	# s_2(D)->block, D.5659
	movq	-24(%rbp), %rax	# s, tmp206
	movl	108(%rax), %eax	# s_2(D)->nblock, D.5658
	cltq
	addq	%rax, %rdx	# D.5660, D.5659
	movq	-24(%rbp), %rax	# s, tmp207
	movl	96(%rax), %eax	# s_2(D)->state_in_len, D.5658
	subl	$4, %eax	#, D.5661
	movb	%al, (%rdx)	# D.5661, *_83
	.loc 1 301 0
	movq	-24(%rbp), %rax	# s, tmp208
	movl	108(%rax), %eax	# s_2(D)->nblock, D.5658
	leal	1(%rax), %edx	#, D.5658
	movq	-24(%rbp), %rax	# s, tmp209
	movl	%edx, 108(%rax)	# D.5658, s_2(D)->nblock
	.loc 1 302 0
	nop
.L31:
	.loc 1 304 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	add_pair_to_block, .-add_pair_to_block
	.type	flush_RL, @function
flush_RL:
.LFB11:
	.loc 1 310 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$8, %rsp	#,
	movq	%rdi, -8(%rbp)	# s, s
	.loc 1 311 0
	movq	-8(%rbp), %rax	# s, tmp60
	movl	92(%rax), %eax	# s_1(D)->state_in_ch, D.5662
	cmpl	$255, %eax	#, D.5662
	ja	.L41	#,
	.loc 1 311 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# s, tmp61
	movq	%rax, %rdi	# tmp61,
	call	add_pair_to_block	#
.L41:
	.loc 1 312 0 is_stmt 1
	movq	-8(%rbp), %rax	# s, tmp62
	movq	%rax, %rdi	# tmp62,
	call	init_RL	#
	.loc 1 313 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	flush_RL, .-flush_RL
	.type	copy_input_until_stop, @function
copy_input_until_stop:
.LFB12:
	.loc 1 347 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$24, %rsp	#,
	movq	%rdi, -24(%rbp)	# s, s
	.loc 1 348 0
	movb	$0, -11(%rbp)	#, progress_in
	.loc 1 350 0
	movq	-24(%rbp), %rax	# s, tmp153
	movl	8(%rax), %eax	# s_5(D)->mode, D.5663
	cmpl	$2, %eax	#, D.5663
	jne	.L43	#,
.L53:
	.loc 1 355 0
	movq	-24(%rbp), %rax	# s, tmp154
	movl	108(%rax), %edx	# s_5(D)->nblock, D.5663
	movq	-24(%rbp), %rax	# s, tmp155
	movl	112(%rax), %eax	# s_5(D)->nblockMAX, D.5663
	cmpl	%eax, %edx	# D.5663, D.5663
	jl	.L44	#,
	.loc 1 355 0 is_stmt 0 discriminator 1
	jmp	.L45	#
.L44:
	.loc 1 357 0 is_stmt 1
	movq	-24(%rbp), %rax	# s, tmp156
	movq	(%rax), %rax	# s_5(D)->strm, D.5664
	movl	8(%rax), %eax	# _9->avail_in, D.5665
	testl	%eax, %eax	# D.5665
	jne	.L46	#,
	.loc 1 357 0 is_stmt 0 discriminator 1
	jmp	.L45	#
.L46:
	.loc 1 358 0 is_stmt 1
	movb	$1, -11(%rbp)	#, progress_in
.LBB2:
	.loc 1 359 0
	movq	-24(%rbp), %rax	# s, tmp157
	movq	(%rax), %rax	# s_5(D)->strm, D.5664
	movq	(%rax), %rax	# _12->next_in, D.5666
	movzbl	(%rax), %eax	# MEM[(UChar *)_13], D.5667
	movzbl	%al, %eax	# D.5667, tmp158
	movl	%eax, -8(%rbp)	# tmp158, zchh
	movq	-24(%rbp), %rax	# s, tmp159
	movl	92(%rax), %eax	# s_5(D)->state_in_ch, D.5665
	cmpl	-8(%rbp), %eax	# zchh, D.5665
	je	.L47	#,
	.loc 1 359 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# s, tmp160
	movl	96(%rax), %eax	# s_5(D)->state_in_len, D.5663
	cmpl	$1, %eax	#, D.5663
	jne	.L47	#,
.LBB3:
	movq	-24(%rbp), %rax	# s, tmp161
	movl	92(%rax), %eax	# s_5(D)->state_in_ch, D.5665
	movb	%al, -10(%rbp)	# D.5665, ch
	movq	-24(%rbp), %rax	# s, tmp162
	movl	648(%rax), %eax	# s_5(D)->blockCRC, D.5665
	sall	$8, %eax	#, D.5665
	movl	%eax, %edx	# D.5665, D.5665
	movq	-24(%rbp), %rax	# s, tmp163
	movl	648(%rax), %eax	# s_5(D)->blockCRC, D.5665
	shrl	$24, %eax	#, D.5665
	movl	%eax, %ecx	# D.5665, D.5665
	movzbl	-10(%rbp), %eax	# ch, D.5665
	xorl	%ecx, %eax	# D.5665, D.5665
	movl	%eax, %eax	# D.5665, tmp164
	movl	BZ2_crc32Table(,%rax,4), %eax	# BZ2_crc32Table, D.5665
	xorl	%eax, %edx	# D.5665, D.5665
	movq	-24(%rbp), %rax	# s, tmp165
	movl	%edx, 648(%rax)	# D.5665, s_5(D)->blockCRC
	movq	-24(%rbp), %rax	# s, tmp166
	movl	92(%rax), %eax	# s_5(D)->state_in_ch, D.5665
	movq	-24(%rbp), %rdx	# s, tmp167
	movl	%eax, %eax	# D.5665, tmp168
	movb	$1, 128(%rdx,%rax)	#, s_5(D)->inUse
	movq	-24(%rbp), %rax	# s, tmp169
	movq	64(%rax), %rdx	# s_5(D)->block, D.5668
	movq	-24(%rbp), %rax	# s, tmp170
	movl	108(%rax), %eax	# s_5(D)->nblock, D.5663
	cltq
	addq	%rax, %rdx	# D.5669, D.5668
	movzbl	-10(%rbp), %eax	# ch, tmp171
	movb	%al, (%rdx)	# tmp171, *_32
	movq	-24(%rbp), %rax	# s, tmp172
	movl	108(%rax), %eax	# s_5(D)->nblock, D.5663
	leal	1(%rax), %edx	#, D.5663
	movq	-24(%rbp), %rax	# s, tmp173
	movl	%edx, 108(%rax)	# D.5663, s_5(D)->nblock
	movq	-24(%rbp), %rax	# s, tmp174
	movl	-8(%rbp), %edx	# zchh, tmp175
	movl	%edx, 92(%rax)	# tmp175, s_5(D)->state_in_ch
.LBE3:
	jmp	.L48	#
.L47:
	.loc 1 359 0 discriminator 2
	movq	-24(%rbp), %rax	# s, tmp176
	movl	92(%rax), %eax	# s_5(D)->state_in_ch, D.5665
	cmpl	-8(%rbp), %eax	# zchh, D.5665
	jne	.L49	#,
	movq	-24(%rbp), %rax	# s, tmp177
	movl	96(%rax), %eax	# s_5(D)->state_in_len, D.5663
	cmpl	$255, %eax	#, D.5663
	jne	.L50	#,
.L49:
	.loc 1 359 0 discriminator 1
	movq	-24(%rbp), %rax	# s, tmp178
	movl	92(%rax), %eax	# s_5(D)->state_in_ch, D.5665
	cmpl	$255, %eax	#, D.5665
	ja	.L51	#,
	movq	-24(%rbp), %rax	# s, tmp179
	movq	%rax, %rdi	# tmp179,
	call	add_pair_to_block	#
.L51:
	.loc 1 359 0 discriminator 2
	movq	-24(%rbp), %rax	# s, tmp180
	movl	-8(%rbp), %edx	# zchh, tmp181
	movl	%edx, 92(%rax)	# tmp181, s_5(D)->state_in_ch
	movq	-24(%rbp), %rax	# s, tmp182
	movl	$1, 96(%rax)	#, s_5(D)->state_in_len
	jmp	.L48	#
.L50:
	.loc 1 359 0 discriminator 1
	movq	-24(%rbp), %rax	# s, tmp183
	movl	96(%rax), %eax	# s_5(D)->state_in_len, D.5663
	leal	1(%rax), %edx	#, D.5663
	movq	-24(%rbp), %rax	# s, tmp184
	movl	%edx, 96(%rax)	# D.5663, s_5(D)->state_in_len
.L48:
.LBE2:
	.loc 1 360 0 is_stmt 1
	movq	-24(%rbp), %rax	# s, tmp185
	movq	(%rax), %rax	# s_5(D)->strm, D.5664
	movq	(%rax), %rdx	# _40->next_in, D.5666
	addq	$1, %rdx	#, D.5666
	movq	%rdx, (%rax)	# D.5666, _40->next_in
	.loc 1 361 0
	movq	-24(%rbp), %rax	# s, tmp186
	movq	(%rax), %rax	# s_5(D)->strm, D.5664
	movl	8(%rax), %edx	# _43->avail_in, D.5665
	subl	$1, %edx	#, D.5665
	movl	%edx, 8(%rax)	# D.5665, _43->avail_in
	.loc 1 362 0
	movq	-24(%rbp), %rax	# s, tmp187
	movq	(%rax), %rax	# s_5(D)->strm, D.5664
	movl	12(%rax), %edx	# _46->total_in_lo32, D.5665
	addl	$1, %edx	#, D.5665
	movl	%edx, 12(%rax)	# D.5665, _46->total_in_lo32
	.loc 1 363 0
	movq	-24(%rbp), %rax	# s, tmp188
	movq	(%rax), %rax	# s_5(D)->strm, D.5664
	movl	12(%rax), %eax	# _49->total_in_lo32, D.5665
	testl	%eax, %eax	# D.5665
	jne	.L52	#,
	.loc 1 363 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# s, tmp189
	movq	(%rax), %rax	# s_5(D)->strm, D.5664
	movl	16(%rax), %edx	# _51->total_in_hi32, D.5665
	addl	$1, %edx	#, D.5665
	movl	%edx, 16(%rax)	# D.5665, _51->total_in_hi32
	.loc 1 364 0 is_stmt 1 discriminator 1
	jmp	.L53	#
.L52:
	.loc 1 364 0 is_stmt 0
	jmp	.L53	#
.L45:
	jmp	.L54	#
.L43:
	.loc 1 371 0 is_stmt 1
	movq	-24(%rbp), %rax	# s, tmp190
	movl	108(%rax), %edx	# s_5(D)->nblock, D.5663
	movq	-24(%rbp), %rax	# s, tmp191
	movl	112(%rax), %eax	# s_5(D)->nblockMAX, D.5663
	cmpl	%eax, %edx	# D.5663, D.5663
	jl	.L55	#,
	.loc 1 371 0 is_stmt 0 discriminator 1
	jmp	.L54	#
.L55:
	.loc 1 373 0 is_stmt 1
	movq	-24(%rbp), %rax	# s, tmp192
	movq	(%rax), %rax	# s_5(D)->strm, D.5664
	movl	8(%rax), %eax	# _56->avail_in, D.5665
	testl	%eax, %eax	# D.5665
	jne	.L56	#,
	.loc 1 373 0 is_stmt 0 discriminator 1
	jmp	.L54	#
.L56:
	.loc 1 375 0 is_stmt 1
	movq	-24(%rbp), %rax	# s, tmp193
	movl	16(%rax), %eax	# s_5(D)->avail_in_expect, D.5665
	testl	%eax, %eax	# D.5665
	jne	.L57	#,
	.loc 1 375 0 is_stmt 0 discriminator 1
	jmp	.L54	#
.L57:
	.loc 1 376 0 is_stmt 1
	movb	$1, -11(%rbp)	#, progress_in
.LBB4:
	.loc 1 377 0
	movq	-24(%rbp), %rax	# s, tmp194
	movq	(%rax), %rax	# s_5(D)->strm, D.5664
	movq	(%rax), %rax	# _60->next_in, D.5666
	movzbl	(%rax), %eax	# MEM[(UChar *)_61], D.5667
	movzbl	%al, %eax	# D.5667, tmp195
	movl	%eax, -4(%rbp)	# tmp195, zchh
	movq	-24(%rbp), %rax	# s, tmp196
	movl	92(%rax), %eax	# s_5(D)->state_in_ch, D.5665
	cmpl	-4(%rbp), %eax	# zchh, D.5665
	je	.L58	#,
	.loc 1 377 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# s, tmp197
	movl	96(%rax), %eax	# s_5(D)->state_in_len, D.5663
	cmpl	$1, %eax	#, D.5663
	jne	.L58	#,
.LBB5:
	movq	-24(%rbp), %rax	# s, tmp198
	movl	92(%rax), %eax	# s_5(D)->state_in_ch, D.5665
	movb	%al, -9(%rbp)	# D.5665, ch
	movq	-24(%rbp), %rax	# s, tmp199
	movl	648(%rax), %eax	# s_5(D)->blockCRC, D.5665
	sall	$8, %eax	#, D.5665
	movl	%eax, %edx	# D.5665, D.5665
	movq	-24(%rbp), %rax	# s, tmp200
	movl	648(%rax), %eax	# s_5(D)->blockCRC, D.5665
	shrl	$24, %eax	#, D.5665
	movl	%eax, %ecx	# D.5665, D.5665
	movzbl	-9(%rbp), %eax	# ch, D.5665
	xorl	%ecx, %eax	# D.5665, D.5665
	movl	%eax, %eax	# D.5665, tmp201
	movl	BZ2_crc32Table(,%rax,4), %eax	# BZ2_crc32Table, D.5665
	xorl	%eax, %edx	# D.5665, D.5665
	movq	-24(%rbp), %rax	# s, tmp202
	movl	%edx, 648(%rax)	# D.5665, s_5(D)->blockCRC
	movq	-24(%rbp), %rax	# s, tmp203
	movl	92(%rax), %eax	# s_5(D)->state_in_ch, D.5665
	movq	-24(%rbp), %rdx	# s, tmp204
	movl	%eax, %eax	# D.5665, tmp205
	movb	$1, 128(%rdx,%rax)	#, s_5(D)->inUse
	movq	-24(%rbp), %rax	# s, tmp206
	movq	64(%rax), %rdx	# s_5(D)->block, D.5668
	movq	-24(%rbp), %rax	# s, tmp207
	movl	108(%rax), %eax	# s_5(D)->nblock, D.5663
	cltq
	addq	%rax, %rdx	# D.5669, D.5668
	movzbl	-9(%rbp), %eax	# ch, tmp208
	movb	%al, (%rdx)	# tmp208, *_80
	movq	-24(%rbp), %rax	# s, tmp209
	movl	108(%rax), %eax	# s_5(D)->nblock, D.5663
	leal	1(%rax), %edx	#, D.5663
	movq	-24(%rbp), %rax	# s, tmp210
	movl	%edx, 108(%rax)	# D.5663, s_5(D)->nblock
	movq	-24(%rbp), %rax	# s, tmp211
	movl	-4(%rbp), %edx	# zchh, tmp212
	movl	%edx, 92(%rax)	# tmp212, s_5(D)->state_in_ch
.LBE5:
	jmp	.L59	#
.L58:
	.loc 1 377 0 discriminator 2
	movq	-24(%rbp), %rax	# s, tmp213
	movl	92(%rax), %eax	# s_5(D)->state_in_ch, D.5665
	cmpl	-4(%rbp), %eax	# zchh, D.5665
	jne	.L60	#,
	movq	-24(%rbp), %rax	# s, tmp214
	movl	96(%rax), %eax	# s_5(D)->state_in_len, D.5663
	cmpl	$255, %eax	#, D.5663
	jne	.L61	#,
.L60:
	.loc 1 377 0 discriminator 1
	movq	-24(%rbp), %rax	# s, tmp215
	movl	92(%rax), %eax	# s_5(D)->state_in_ch, D.5665
	cmpl	$255, %eax	#, D.5665
	ja	.L62	#,
	movq	-24(%rbp), %rax	# s, tmp216
	movq	%rax, %rdi	# tmp216,
	call	add_pair_to_block	#
.L62:
	.loc 1 377 0 discriminator 2
	movq	-24(%rbp), %rax	# s, tmp217
	movl	-4(%rbp), %edx	# zchh, tmp218
	movl	%edx, 92(%rax)	# tmp218, s_5(D)->state_in_ch
	movq	-24(%rbp), %rax	# s, tmp219
	movl	$1, 96(%rax)	#, s_5(D)->state_in_len
	jmp	.L59	#
.L61:
	.loc 1 377 0 discriminator 1
	movq	-24(%rbp), %rax	# s, tmp220
	movl	96(%rax), %eax	# s_5(D)->state_in_len, D.5663
	leal	1(%rax), %edx	#, D.5663
	movq	-24(%rbp), %rax	# s, tmp221
	movl	%edx, 96(%rax)	# D.5663, s_5(D)->state_in_len
.L59:
.LBE4:
	.loc 1 378 0 is_stmt 1
	movq	-24(%rbp), %rax	# s, tmp222
	movq	(%rax), %rax	# s_5(D)->strm, D.5664
	movq	(%rax), %rdx	# _88->next_in, D.5666
	addq	$1, %rdx	#, D.5666
	movq	%rdx, (%rax)	# D.5666, _88->next_in
	.loc 1 379 0
	movq	-24(%rbp), %rax	# s, tmp223
	movq	(%rax), %rax	# s_5(D)->strm, D.5664
	movl	8(%rax), %edx	# _91->avail_in, D.5665
	subl	$1, %edx	#, D.5665
	movl	%edx, 8(%rax)	# D.5665, _91->avail_in
	.loc 1 380 0
	movq	-24(%rbp), %rax	# s, tmp224
	movq	(%rax), %rax	# s_5(D)->strm, D.5664
	movl	12(%rax), %edx	# _94->total_in_lo32, D.5665
	addl	$1, %edx	#, D.5665
	movl	%edx, 12(%rax)	# D.5665, _94->total_in_lo32
	.loc 1 381 0
	movq	-24(%rbp), %rax	# s, tmp225
	movq	(%rax), %rax	# s_5(D)->strm, D.5664
	movl	12(%rax), %eax	# _97->total_in_lo32, D.5665
	testl	%eax, %eax	# D.5665
	jne	.L63	#,
	.loc 1 381 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# s, tmp226
	movq	(%rax), %rax	# s_5(D)->strm, D.5664
	movl	16(%rax), %edx	# _99->total_in_hi32, D.5665
	addl	$1, %edx	#, D.5665
	movl	%edx, 16(%rax)	# D.5665, _99->total_in_hi32
.L63:
	.loc 1 382 0 is_stmt 1
	movq	-24(%rbp), %rax	# s, tmp227
	movl	16(%rax), %eax	# s_5(D)->avail_in_expect, D.5665
	leal	-1(%rax), %edx	#, D.5665
	movq	-24(%rbp), %rax	# s, tmp228
	movl	%edx, 16(%rax)	# D.5665, s_5(D)->avail_in_expect
	.loc 1 383 0
	jmp	.L43	#
.L54:
	.loc 1 385 0
	movzbl	-11(%rbp), %eax	# progress_in, D.5670
	.loc 1 386 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	copy_input_until_stop, .-copy_input_until_stop
	.type	copy_output_until_stop, @function
copy_output_until_stop:
.LFB13:
	.loc 1 392 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# s, s
	.loc 1 393 0
	movb	$0, -1(%rbp)	#, progress_out
.L70:
	.loc 1 398 0
	movq	-24(%rbp), %rax	# s, tmp89
	movq	(%rax), %rax	# s_3(D)->strm, D.5671
	movl	32(%rax), %eax	# _4->avail_out, D.5672
	testl	%eax, %eax	# D.5672
	jne	.L66	#,
	.loc 1 398 0 is_stmt 0 discriminator 1
	jmp	.L67	#
.L66:
	.loc 1 401 0 is_stmt 1
	movq	-24(%rbp), %rax	# s, tmp90
	movl	120(%rax), %edx	# s_3(D)->state_out_pos, D.5673
	movq	-24(%rbp), %rax	# s, tmp91
	movl	116(%rax), %eax	# s_3(D)->numZ, D.5673
	cmpl	%eax, %edx	# D.5673, D.5673
	jl	.L68	#,
	.loc 1 401 0 is_stmt 0 discriminator 1
	jmp	.L67	#
.L68:
	.loc 1 403 0 is_stmt 1
	movb	$1, -1(%rbp)	#, progress_out
	.loc 1 404 0
	movq	-24(%rbp), %rax	# s, tmp92
	movq	(%rax), %rax	# s_3(D)->strm, D.5671
	movq	24(%rax), %rax	# _9->next_out, D.5674
	movq	-24(%rbp), %rdx	# s, tmp93
	movq	80(%rdx), %rcx	# s_3(D)->zbits, D.5675
	movq	-24(%rbp), %rdx	# s, tmp94
	movl	120(%rdx), %edx	# s_3(D)->state_out_pos, D.5673
	movslq	%edx, %rdx	# D.5673, D.5676
	addq	%rcx, %rdx	# D.5675, D.5675
	movzbl	(%rdx), %edx	# *_14, D.5677
	movb	%dl, (%rax)	# D.5678, *_10
	.loc 1 405 0
	movq	-24(%rbp), %rax	# s, tmp95
	movl	120(%rax), %eax	# s_3(D)->state_out_pos, D.5673
	leal	1(%rax), %edx	#, D.5673
	movq	-24(%rbp), %rax	# s, tmp96
	movl	%edx, 120(%rax)	# D.5673, s_3(D)->state_out_pos
	.loc 1 406 0
	movq	-24(%rbp), %rax	# s, tmp97
	movq	(%rax), %rax	# s_3(D)->strm, D.5671
	movl	32(%rax), %edx	# _19->avail_out, D.5672
	subl	$1, %edx	#, D.5672
	movl	%edx, 32(%rax)	# D.5672, _19->avail_out
	.loc 1 407 0
	movq	-24(%rbp), %rax	# s, tmp98
	movq	(%rax), %rax	# s_3(D)->strm, D.5671
	movq	24(%rax), %rdx	# _22->next_out, D.5674
	addq	$1, %rdx	#, D.5674
	movq	%rdx, 24(%rax)	# D.5674, _22->next_out
	.loc 1 408 0
	movq	-24(%rbp), %rax	# s, tmp99
	movq	(%rax), %rax	# s_3(D)->strm, D.5671
	movl	36(%rax), %edx	# _25->total_out_lo32, D.5672
	addl	$1, %edx	#, D.5672
	movl	%edx, 36(%rax)	# D.5672, _25->total_out_lo32
	.loc 1 409 0
	movq	-24(%rbp), %rax	# s, tmp100
	movq	(%rax), %rax	# s_3(D)->strm, D.5671
	movl	36(%rax), %eax	# _28->total_out_lo32, D.5672
	testl	%eax, %eax	# D.5672
	jne	.L69	#,
	.loc 1 409 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# s, tmp101
	movq	(%rax), %rax	# s_3(D)->strm, D.5671
	movl	40(%rax), %edx	# _30->total_out_hi32, D.5672
	addl	$1, %edx	#, D.5672
	movl	%edx, 40(%rax)	# D.5672, _30->total_out_hi32
	.loc 1 410 0 is_stmt 1 discriminator 1
	jmp	.L70	#
.L69:
	.loc 1 410 0 is_stmt 0
	jmp	.L70	#
.L67:
	.loc 1 412 0 is_stmt 1
	movzbl	-1(%rbp), %eax	# progress_out, D.5679
	.loc 1 413 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	copy_output_until_stop, .-copy_output_until_stop
	.type	handle_compress, @function
handle_compress:
.LFB14:
	.loc 1 419 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# strm, strm
	.loc 1 420 0
	movb	$0, -10(%rbp)	#, progress_in
	.loc 1 421 0
	movb	$0, -9(%rbp)	#, progress_out
	.loc 1 422 0
	movq	-24(%rbp), %rax	# strm, tmp83
	movq	48(%rax), %rax	# strm_10(D)->state, tmp84
	movq	%rax, -8(%rbp)	# tmp84, s
.L80:
	.loc 1 426 0
	movq	-8(%rbp), %rax	# s, tmp85
	movl	12(%rax), %eax	# s_11->state, D.5680
	cmpl	$1, %eax	#, D.5680
	jne	.L73	#,
	.loc 1 427 0
	movq	-8(%rbp), %rax	# s, tmp86
	movq	%rax, %rdi	# tmp86,
	call	copy_output_until_stop	#
	orb	%al, -9(%rbp)	# D.5681, progress_out
	.loc 1 428 0
	movq	-8(%rbp), %rax	# s, tmp87
	movl	120(%rax), %edx	# s_11->state_out_pos, D.5680
	movq	-8(%rbp), %rax	# s, tmp88
	movl	116(%rax), %eax	# s_11->numZ, D.5680
	cmpl	%eax, %edx	# D.5680, D.5680
	jge	.L74	#,
	.loc 1 428 0 is_stmt 0 discriminator 1
	jmp	.L75	#
.L74:
	.loc 1 429 0 is_stmt 1
	movq	-8(%rbp), %rax	# s, tmp89
	movl	8(%rax), %eax	# s_11->mode, D.5680
	cmpl	$4, %eax	#, D.5680
	jne	.L76	#,
	.loc 1 430 0 discriminator 1
	movq	-8(%rbp), %rax	# s, tmp90
	movl	16(%rax), %eax	# s_11->avail_in_expect, D.5682
	.loc 1 429 0 discriminator 1
	testl	%eax, %eax	# D.5682
	jne	.L76	#,
	.loc 1 431 0
	movq	-8(%rbp), %rax	# s, tmp91
	movq	%rax, %rdi	# tmp91,
	call	isempty_RL	#
	.loc 1 430 0
	testb	%al, %al	# D.5681
	je	.L76	#,
	.loc 1 431 0
	jmp	.L75	#
.L76:
	.loc 1 432 0
	movq	-8(%rbp), %rax	# s, tmp92
	movq	%rax, %rdi	# tmp92,
	call	prepare_new_block	#
	.loc 1 433 0
	movq	-8(%rbp), %rax	# s, tmp93
	movl	$2, 12(%rax)	#, s_11->state
	.loc 1 434 0
	movq	-8(%rbp), %rax	# s, tmp94
	movl	8(%rax), %eax	# s_11->mode, D.5680
	cmpl	$3, %eax	#, D.5680
	jne	.L73	#,
	.loc 1 435 0 discriminator 1
	movq	-8(%rbp), %rax	# s, tmp95
	movl	16(%rax), %eax	# s_11->avail_in_expect, D.5682
	.loc 1 434 0 discriminator 1
	testl	%eax, %eax	# D.5682
	jne	.L73	#,
	.loc 1 436 0
	movq	-8(%rbp), %rax	# s, tmp96
	movq	%rax, %rdi	# tmp96,
	call	isempty_RL	#
	.loc 1 435 0
	testb	%al, %al	# D.5681
	je	.L73	#,
	.loc 1 436 0
	jmp	.L75	#
.L73:
	.loc 1 439 0
	movq	-8(%rbp), %rax	# s, tmp97
	movl	12(%rax), %eax	# s_11->state, D.5680
	cmpl	$2, %eax	#, D.5680
	jne	.L77	#,
	.loc 1 440 0
	movq	-8(%rbp), %rax	# s, tmp98
	movq	%rax, %rdi	# tmp98,
	call	copy_input_until_stop	#
	orb	%al, -10(%rbp)	# D.5681, progress_in
	.loc 1 441 0
	movq	-8(%rbp), %rax	# s, tmp99
	movl	8(%rax), %eax	# s_11->mode, D.5680
	cmpl	$2, %eax	#, D.5680
	je	.L78	#,
	.loc 1 441 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# s, tmp100
	movl	16(%rax), %eax	# s_11->avail_in_expect, D.5682
	testl	%eax, %eax	# D.5682
	jne	.L78	#,
	.loc 1 442 0 is_stmt 1
	movq	-8(%rbp), %rax	# s, tmp101
	movq	%rax, %rdi	# tmp101,
	call	flush_RL	#
	.loc 1 443 0
	movq	-8(%rbp), %rax	# s, tmp102
	movl	8(%rax), %eax	# s_11->mode, D.5680
	cmpl	$4, %eax	#, D.5680
	sete	%al	#, D.5683
	movzbl	%al, %edx	# D.5683, D.5680
	movq	-8(%rbp), %rax	# s, tmp103
	movl	%edx, %esi	# D.5680,
	movq	%rax, %rdi	# tmp103,
	call	BZ2_compressBlock	#
	.loc 1 444 0
	movq	-8(%rbp), %rax	# s, tmp104
	movl	$1, 12(%rax)	#, s_11->state
	jmp	.L77	#
.L78:
	.loc 1 447 0
	movq	-8(%rbp), %rax	# s, tmp105
	movl	108(%rax), %edx	# s_11->nblock, D.5680
	movq	-8(%rbp), %rax	# s, tmp106
	movl	112(%rax), %eax	# s_11->nblockMAX, D.5680
	cmpl	%eax, %edx	# D.5680, D.5680
	jl	.L79	#,
	.loc 1 448 0
	movq	-8(%rbp), %rax	# s, tmp107
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp107,
	call	BZ2_compressBlock	#
	.loc 1 449 0
	movq	-8(%rbp), %rax	# s, tmp108
	movl	$1, 12(%rax)	#, s_11->state
	jmp	.L77	#
.L79:
	.loc 1 452 0
	movq	-8(%rbp), %rax	# s, tmp109
	movq	(%rax), %rax	# s_11->strm, D.5684
	movl	8(%rax), %eax	# _33->avail_in, D.5682
	testl	%eax, %eax	# D.5682
	jne	.L77	#,
	.loc 1 453 0
	jmp	.L75	#
.L77:
	.loc 1 457 0
	jmp	.L80	#
.L75:
	.loc 1 459 0
	cmpb	$0, -10(%rbp)	#, progress_in
	jne	.L81	#,
	.loc 1 459 0 is_stmt 0 discriminator 2
	cmpb	$0, -9(%rbp)	#, progress_out
	je	.L82	#,
.L81:
	.loc 1 459 0 discriminator 1
	movl	$1, %eax	#, iftmp.3
	jmp	.L83	#
.L82:
	.loc 1 459 0 discriminator 3
	movl	$0, %eax	#, iftmp.3
.L83:
	.loc 1 460 0 is_stmt 1 discriminator 4
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	handle_compress, .-handle_compress
	.globl	BZ2_bzCompress
	.type	BZ2_bzCompress, @function
BZ2_bzCompress:
.LFB15:
	.loc 1 465 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# strm, strm
	movl	%esi, -28(%rbp)	# action, action
	.loc 1 468 0
	cmpq	$0, -24(%rbp)	#, strm
	jne	.L86	#,
	.loc 1 468 0 is_stmt 0 discriminator 1
	movl	$-2, %eax	#, D.5686
	jmp	.L87	#
.L86:
	.loc 1 469 0 is_stmt 1
	movq	-24(%rbp), %rax	# strm, tmp80
	movq	48(%rax), %rax	# strm_3(D)->state, tmp81
	movq	%rax, -8(%rbp)	# tmp81, s
	.loc 1 470 0
	cmpq	$0, -8(%rbp)	#, s
	jne	.L88	#,
	.loc 1 470 0 is_stmt 0 discriminator 1
	movl	$-2, %eax	#, D.5686
	jmp	.L87	#
.L88:
	.loc 1 471 0 is_stmt 1
	movq	-8(%rbp), %rax	# s, tmp82
	movq	(%rax), %rax	# s_5->strm, D.5687
	cmpq	-24(%rbp), %rax	# strm, D.5687
	je	.L89	#,
	.loc 1 471 0 is_stmt 0 discriminator 1
	movl	$-2, %eax	#, D.5686
	jmp	.L87	#
.L89:
	.loc 1 474 0 is_stmt 1
	movq	-8(%rbp), %rax	# s, tmp83
	movl	8(%rax), %eax	# s_5->mode, D.5686
	cmpl	$2, %eax	#, D.5686
	je	.L91	#,
	cmpl	$2, %eax	#, D.5686
	jg	.L92	#,
	cmpl	$1, %eax	#, D.5686
	je	.L93	#,
	jmp	.L90	#
.L92:
	cmpl	$3, %eax	#, D.5686
	je	.L94	#,
	cmpl	$4, %eax	#, D.5686
	je	.L95	#,
	jmp	.L90	#
.L93:
	.loc 1 477 0
	movl	$-1, %eax	#, D.5686
	jmp	.L87	#
.L91:
	.loc 1 480 0
	cmpl	$0, -28(%rbp)	#, action
	jne	.L96	#,
	.loc 1 481 0
	movq	-24(%rbp), %rax	# strm, tmp84
	movq	%rax, %rdi	# tmp84,
	call	handle_compress	#
	movb	%al, -9(%rbp)	# tmp85, progress
	.loc 1 482 0
	cmpb	$0, -9(%rbp)	#, progress
	je	.L97	#,
	.loc 1 482 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, iftmp.4
	jmp	.L98	#
.L97:
	.loc 1 482 0 discriminator 2
	movl	$-2, %eax	#, iftmp.4
.L98:
	.loc 1 482 0 discriminator 3
	jmp	.L87	#
.L96:
	.loc 1 485 0 is_stmt 1
	cmpl	$1, -28(%rbp)	#, action
	jne	.L99	#,
	.loc 1 486 0
	movq	-24(%rbp), %rax	# strm, tmp86
	movl	8(%rax), %edx	# strm_3(D)->avail_in, D.5688
	movq	-8(%rbp), %rax	# s, tmp87
	movl	%edx, 16(%rax)	# D.5688, s_5->avail_in_expect
	.loc 1 487 0
	movq	-8(%rbp), %rax	# s, tmp88
	movl	$3, 8(%rax)	#, s_5->mode
	.loc 1 488 0
	jmp	.L89	#
.L99:
	.loc 1 491 0
	cmpl	$2, -28(%rbp)	#, action
	jne	.L100	#,
	.loc 1 492 0
	movq	-24(%rbp), %rax	# strm, tmp89
	movl	8(%rax), %edx	# strm_3(D)->avail_in, D.5688
	movq	-8(%rbp), %rax	# s, tmp90
	movl	%edx, 16(%rax)	# D.5688, s_5->avail_in_expect
	.loc 1 493 0
	movq	-8(%rbp), %rax	# s, tmp91
	movl	$4, 8(%rax)	#, s_5->mode
	.loc 1 494 0
	jmp	.L89	#
.L100:
	.loc 1 497 0
	movl	$-2, %eax	#, D.5686
	jmp	.L87	#
.L94:
	.loc 1 500 0
	cmpl	$1, -28(%rbp)	#, action
	je	.L101	#,
	.loc 1 500 0 is_stmt 0 discriminator 1
	movl	$-1, %eax	#, D.5686
	jmp	.L87	#
.L101:
	.loc 1 501 0 is_stmt 1
	movq	-8(%rbp), %rax	# s, tmp92
	movl	16(%rax), %edx	# s_5->avail_in_expect, D.5688
	movq	-8(%rbp), %rax	# s, tmp93
	movq	(%rax), %rax	# s_5->strm, D.5687
	movl	8(%rax), %eax	# _21->avail_in, D.5688
	cmpl	%eax, %edx	# D.5688, D.5688
	je	.L102	#,
	.loc 1 502 0
	movl	$-1, %eax	#, D.5686
	jmp	.L87	#
.L102:
	.loc 1 503 0
	movq	-24(%rbp), %rax	# strm, tmp94
	movq	%rax, %rdi	# tmp94,
	call	handle_compress	#
	movb	%al, -9(%rbp)	# tmp95, progress
	.loc 1 504 0
	movq	-8(%rbp), %rax	# s, tmp96
	movl	16(%rax), %eax	# s_5->avail_in_expect, D.5688
	testl	%eax, %eax	# D.5688
	jne	.L103	#,
	.loc 1 504 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# s, tmp97
	movq	%rax, %rdi	# tmp97,
	call	isempty_RL	#
	testb	%al, %al	# D.5689
	je	.L103	#,
	.loc 1 505 0 is_stmt 1 discriminator 1
	movq	-8(%rbp), %rax	# s, tmp98
	movl	120(%rax), %edx	# s_5->state_out_pos, D.5686
	movq	-8(%rbp), %rax	# s, tmp99
	movl	116(%rax), %eax	# s_5->numZ, D.5686
	.loc 1 504 0 discriminator 1
	cmpl	%eax, %edx	# D.5686, D.5686
	jge	.L104	#,
.L103:
	.loc 1 505 0
	movl	$2, %eax	#, D.5686
	jmp	.L87	#
.L104:
	.loc 1 506 0
	movq	-8(%rbp), %rax	# s, tmp100
	movl	$2, 8(%rax)	#, s_5->mode
	.loc 1 507 0
	movl	$1, %eax	#, D.5686
	jmp	.L87	#
.L95:
	.loc 1 510 0
	cmpl	$2, -28(%rbp)	#, action
	je	.L105	#,
	.loc 1 510 0 is_stmt 0 discriminator 1
	movl	$-1, %eax	#, D.5686
	jmp	.L87	#
.L105:
	.loc 1 511 0 is_stmt 1
	movq	-8(%rbp), %rax	# s, tmp101
	movl	16(%rax), %edx	# s_5->avail_in_expect, D.5688
	movq	-8(%rbp), %rax	# s, tmp102
	movq	(%rax), %rax	# s_5->strm, D.5687
	movl	8(%rax), %eax	# _33->avail_in, D.5688
	cmpl	%eax, %edx	# D.5688, D.5688
	je	.L106	#,
	.loc 1 512 0
	movl	$-1, %eax	#, D.5686
	jmp	.L87	#
.L106:
	.loc 1 513 0
	movq	-24(%rbp), %rax	# strm, tmp103
	movq	%rax, %rdi	# tmp103,
	call	handle_compress	#
	movb	%al, -9(%rbp)	# tmp104, progress
	.loc 1 514 0
	cmpb	$0, -9(%rbp)	#, progress
	jne	.L107	#,
	.loc 1 514 0 is_stmt 0 discriminator 1
	movl	$-1, %eax	#, D.5686
	jmp	.L87	#
.L107:
	.loc 1 515 0 is_stmt 1
	movq	-8(%rbp), %rax	# s, tmp105
	movl	16(%rax), %eax	# s_5->avail_in_expect, D.5688
	testl	%eax, %eax	# D.5688
	jne	.L108	#,
	.loc 1 515 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# s, tmp106
	movq	%rax, %rdi	# tmp106,
	call	isempty_RL	#
	testb	%al, %al	# D.5689
	je	.L108	#,
	.loc 1 516 0 is_stmt 1 discriminator 1
	movq	-8(%rbp), %rax	# s, tmp107
	movl	120(%rax), %edx	# s_5->state_out_pos, D.5686
	movq	-8(%rbp), %rax	# s, tmp108
	movl	116(%rax), %eax	# s_5->numZ, D.5686
	.loc 1 515 0 discriminator 1
	cmpl	%eax, %edx	# D.5686, D.5686
	jge	.L109	#,
.L108:
	.loc 1 516 0
	movl	$3, %eax	#, D.5686
	jmp	.L87	#
.L109:
	.loc 1 517 0
	movq	-8(%rbp), %rax	# s, tmp109
	movl	$1, 8(%rax)	#, s_5->mode
	.loc 1 518 0
	movl	$4, %eax	#, D.5686
	jmp	.L87	#
.L90:
	.loc 1 520 0
	movl	$0, %eax	#, D.5686
.L87:
	.loc 1 521 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	BZ2_bzCompress, .-BZ2_bzCompress
	.globl	BZ2_bzCompressEnd
	.type	BZ2_bzCompressEnd, @function
BZ2_bzCompressEnd:
.LFB16:
	.loc 1 526 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# strm, strm
	.loc 1 528 0
	cmpq	$0, -24(%rbp)	#, strm
	jne	.L111	#,
	.loc 1 528 0 is_stmt 0 discriminator 1
	movl	$-2, %eax	#, D.5691
	jmp	.L112	#
.L111:
	.loc 1 529 0 is_stmt 1
	movq	-24(%rbp), %rax	# strm, tmp77
	movq	48(%rax), %rax	# strm_2(D)->state, tmp78
	movq	%rax, -8(%rbp)	# tmp78, s
	.loc 1 530 0
	cmpq	$0, -8(%rbp)	#, s
	jne	.L113	#,
	.loc 1 530 0 is_stmt 0 discriminator 1
	movl	$-2, %eax	#, D.5691
	jmp	.L112	#
.L113:
	.loc 1 531 0 is_stmt 1
	movq	-8(%rbp), %rax	# s, tmp79
	movq	(%rax), %rax	# s_4->strm, D.5692
	cmpq	-24(%rbp), %rax	# strm, D.5692
	je	.L114	#,
	.loc 1 531 0 is_stmt 0 discriminator 1
	movl	$-2, %eax	#, D.5691
	jmp	.L112	#
.L114:
	.loc 1 533 0 is_stmt 1
	movq	-8(%rbp), %rax	# s, tmp80
	movq	24(%rax), %rax	# s_4->arr1, D.5693
	testq	%rax, %rax	# D.5693
	je	.L115	#,
	.loc 1 533 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# strm, tmp81
	movq	64(%rax), %rax	# strm_2(D)->bzfree, D.5694
	movq	-8(%rbp), %rdx	# s, tmp82
	movq	24(%rdx), %rcx	# s_4->arr1, D.5693
	movq	-24(%rbp), %rdx	# strm, tmp83
	movq	72(%rdx), %rdx	# strm_2(D)->opaque, D.5695
	movq	%rcx, %rsi	# D.5693,
	movq	%rdx, %rdi	# D.5695,
	call	*%rax	# D.5694
.L115:
	.loc 1 534 0 is_stmt 1
	movq	-8(%rbp), %rax	# s, tmp84
	movq	32(%rax), %rax	# s_4->arr2, D.5693
	testq	%rax, %rax	# D.5693
	je	.L116	#,
	.loc 1 534 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# strm, tmp85
	movq	64(%rax), %rax	# strm_2(D)->bzfree, D.5694
	movq	-8(%rbp), %rdx	# s, tmp86
	movq	32(%rdx), %rcx	# s_4->arr2, D.5693
	movq	-24(%rbp), %rdx	# strm, tmp87
	movq	72(%rdx), %rdx	# strm_2(D)->opaque, D.5695
	movq	%rcx, %rsi	# D.5693,
	movq	%rdx, %rdi	# D.5695,
	call	*%rax	# D.5694
.L116:
	.loc 1 535 0 is_stmt 1
	movq	-8(%rbp), %rax	# s, tmp88
	movq	40(%rax), %rax	# s_4->ftab, D.5693
	testq	%rax, %rax	# D.5693
	je	.L117	#,
	.loc 1 535 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# strm, tmp89
	movq	64(%rax), %rax	# strm_2(D)->bzfree, D.5694
	movq	-8(%rbp), %rdx	# s, tmp90
	movq	40(%rdx), %rcx	# s_4->ftab, D.5693
	movq	-24(%rbp), %rdx	# strm, tmp91
	movq	72(%rdx), %rdx	# strm_2(D)->opaque, D.5695
	movq	%rcx, %rsi	# D.5693,
	movq	%rdx, %rdi	# D.5695,
	call	*%rax	# D.5694
.L117:
	.loc 1 536 0 is_stmt 1
	movq	-24(%rbp), %rax	# strm, tmp92
	movq	64(%rax), %rax	# strm_2(D)->bzfree, D.5694
	movq	-24(%rbp), %rdx	# strm, tmp93
	movq	48(%rdx), %rcx	# strm_2(D)->state, D.5695
	movq	-24(%rbp), %rdx	# strm, tmp94
	movq	72(%rdx), %rdx	# strm_2(D)->opaque, D.5695
	movq	%rcx, %rsi	# D.5695,
	movq	%rdx, %rdi	# D.5695,
	call	*%rax	# D.5694
	.loc 1 538 0
	movq	-24(%rbp), %rax	# strm, tmp95
	movq	$0, 48(%rax)	#, strm_2(D)->state
	.loc 1 540 0
	movl	$0, %eax	#, D.5691
.L112:
	.loc 1 541 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	BZ2_bzCompressEnd, .-BZ2_bzCompressEnd
	.globl	BZ2_bzDecompressInit
	.type	BZ2_bzDecompressInit, @function
BZ2_bzDecompressInit:
.LFB17:
	.loc 1 553 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# strm, strm
	movl	%esi, -28(%rbp)	# verbosity, verbosity
	movl	%edx, -32(%rbp)	# small, small
	.loc 1 556 0
	call	bz_config_ok	#
	testl	%eax, %eax	# D.5696
	jne	.L119	#,
	.loc 1 556 0 is_stmt 0 discriminator 1
	movl	$-9, %eax	#, D.5696
	jmp	.L120	#
.L119:
	.loc 1 558 0 is_stmt 1
	cmpq	$0, -24(%rbp)	#, strm
	jne	.L121	#,
	.loc 1 558 0 is_stmt 0 discriminator 1
	movl	$-2, %eax	#, D.5696
	jmp	.L120	#
.L121:
	.loc 1 559 0 is_stmt 1
	cmpl	$0, -32(%rbp)	#, small
	je	.L122	#,
	.loc 1 559 0 is_stmt 0 discriminator 1
	cmpl	$1, -32(%rbp)	#, small
	je	.L122	#,
	movl	$-2, %eax	#, D.5696
	jmp	.L120	#
.L122:
	.loc 1 560 0 is_stmt 1
	cmpl	$0, -28(%rbp)	#, verbosity
	js	.L123	#,
	.loc 1 560 0 is_stmt 0 discriminator 2
	cmpl	$4, -28(%rbp)	#, verbosity
	jle	.L124	#,
.L123:
	.loc 1 560 0 discriminator 1
	movl	$-2, %eax	#, D.5696
	jmp	.L120	#
.L124:
	.loc 1 562 0 is_stmt 1
	movq	-24(%rbp), %rax	# strm, tmp67
	movq	56(%rax), %rax	# strm_4(D)->bzalloc, D.5697
	testq	%rax, %rax	# D.5697
	jne	.L125	#,
	.loc 1 562 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# strm, tmp68
	movq	$default_bzalloc, 56(%rax)	#, strm_4(D)->bzalloc
.L125:
	.loc 1 563 0 is_stmt 1
	movq	-24(%rbp), %rax	# strm, tmp69
	movq	64(%rax), %rax	# strm_4(D)->bzfree, D.5698
	testq	%rax, %rax	# D.5698
	jne	.L126	#,
	.loc 1 563 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# strm, tmp70
	movq	$default_bzfree, 64(%rax)	#, strm_4(D)->bzfree
.L126:
	.loc 1 565 0 is_stmt 1
	movq	-24(%rbp), %rax	# strm, tmp71
	movq	56(%rax), %rax	# strm_4(D)->bzalloc, D.5697
	movq	-24(%rbp), %rdx	# strm, tmp72
	movq	72(%rdx), %rcx	# strm_4(D)->opaque, D.5699
	movl	$1, %edx	#,
	movl	$64144, %esi	#,
	movq	%rcx, %rdi	# D.5699,
	call	*%rax	# D.5697
	movq	%rax, -8(%rbp)	# tmp73, s
	.loc 1 566 0
	cmpq	$0, -8(%rbp)	#, s
	jne	.L127	#,
	.loc 1 566 0 is_stmt 0 discriminator 1
	movl	$-3, %eax	#, D.5696
	jmp	.L120	#
.L127:
	.loc 1 567 0 is_stmt 1
	movq	-8(%rbp), %rax	# s, tmp74
	movq	-24(%rbp), %rdx	# strm, tmp75
	movq	%rdx, (%rax)	# tmp75, s_13->strm
	.loc 1 568 0
	movq	-24(%rbp), %rax	# strm, tmp76
	movq	-8(%rbp), %rdx	# s, tmp77
	movq	%rdx, 48(%rax)	# tmp77, strm_4(D)->state
	.loc 1 569 0
	movq	-8(%rbp), %rax	# s, tmp78
	movl	$10, 8(%rax)	#, s_13->state
	.loc 1 570 0
	movq	-8(%rbp), %rax	# s, tmp79
	movl	$0, 36(%rax)	#, s_13->bsLive
	.loc 1 571 0
	movq	-8(%rbp), %rax	# s, tmp80
	movl	$0, 32(%rax)	#, s_13->bsBuff
	.loc 1 572 0
	movq	-8(%rbp), %rax	# s, tmp81
	movl	$0, 3188(%rax)	#, s_13->calculatedCombinedCRC
	.loc 1 573 0
	movq	-24(%rbp), %rax	# strm, tmp82
	movl	$0, 12(%rax)	#, strm_4(D)->total_in_lo32
	.loc 1 574 0
	movq	-24(%rbp), %rax	# strm, tmp83
	movl	$0, 16(%rax)	#, strm_4(D)->total_in_hi32
	.loc 1 575 0
	movq	-24(%rbp), %rax	# strm, tmp84
	movl	$0, 36(%rax)	#, strm_4(D)->total_out_lo32
	.loc 1 576 0
	movq	-24(%rbp), %rax	# strm, tmp85
	movl	$0, 40(%rax)	#, strm_4(D)->total_out_hi32
	.loc 1 577 0
	movl	-32(%rbp), %eax	# small, tmp86
	movl	%eax, %edx	# tmp86, D.5700
	movq	-8(%rbp), %rax	# s, tmp87
	movb	%dl, 44(%rax)	# D.5700, s_13->smallDecompress
	.loc 1 578 0
	movq	-8(%rbp), %rax	# s, tmp88
	movq	$0, 3168(%rax)	#, s_13->ll4
	.loc 1 579 0
	movq	-8(%rbp), %rax	# s, tmp89
	movq	$0, 3160(%rax)	#, s_13->ll16
	.loc 1 580 0
	movq	-8(%rbp), %rax	# s, tmp90
	movq	$0, 3152(%rax)	#, s_13->tt
	.loc 1 581 0
	movq	-8(%rbp), %rax	# s, tmp91
	movl	$0, 48(%rax)	#, s_13->currBlockNo
	.loc 1 582 0
	movq	-8(%rbp), %rax	# s, tmp92
	movl	-28(%rbp), %edx	# verbosity, tmp93
	movl	%edx, 52(%rax)	# tmp93, s_13->verbosity
	.loc 1 584 0
	movl	$0, %eax	#, D.5696
.L120:
	.loc 1 585 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	BZ2_bzDecompressInit, .-BZ2_bzDecompressInit
	.type	unRLE_obuf_to_output_FAST, @function
unRLE_obuf_to_output_FAST:
.LFB18:
	.loc 1 594 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -72(%rbp)	# s, s
	.loc 1 597 0
	movq	-72(%rbp), %rax	# s, tmp289
	movzbl	20(%rax), %eax	# s_40(D)->blockRandomised, D.5702
	testb	%al, %al	# D.5702
	je	.L129	#,
.L135:
	.loc 1 602 0
	movq	-72(%rbp), %rax	# s, tmp290
	movq	(%rax), %rax	# s_40(D)->strm, D.5703
	movl	32(%rax), %eax	# _42->avail_out, D.5704
	testl	%eax, %eax	# D.5704
	jne	.L130	#,
	.loc 1 602 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.5701
	jmp	.L131	#
.L130:
	.loc 1 603 0 is_stmt 1
	movq	-72(%rbp), %rax	# s, tmp291
	movl	16(%rax), %eax	# s_40(D)->state_out_len, D.5705
	testl	%eax, %eax	# D.5705
	jne	.L132	#,
	.loc 1 603 0 is_stmt 0 discriminator 1
	nop
	.loc 1 614 0 is_stmt 1 discriminator 1
	movq	-72(%rbp), %rax	# s, tmp306
	movl	1092(%rax), %edx	# s_40(D)->nblock_used, D.5705
	movq	-72(%rbp), %rax	# s, tmp307
	movl	64080(%rax), %eax	# s_40(D)->save_nblock, D.5705
	addl	$1, %eax	#, D.5705
	cmpl	%eax, %edx	# D.5705, D.5705
	jne	.L136	#,
	jmp	.L168	#
.L132:
	.loc 1 604 0
	movq	-72(%rbp), %rax	# s, tmp292
	movq	(%rax), %rax	# s_40(D)->strm, D.5703
	movq	24(%rax), %rax	# _206->next_out, D.5710
	movq	-72(%rbp), %rdx	# s, tmp293
	movzbl	12(%rdx), %edx	# s_40(D)->state_out_ch, D.5702
	movb	%dl, (%rax)	# D.5702, MEM[(UChar *)_207]
	.loc 1 605 0
	movq	-72(%rbp), %rax	# s, tmp294
	movl	3184(%rax), %eax	# s_40(D)->calculatedBlockCRC, D.5704
	sall	$8, %eax	#, D.5704
	movl	%eax, %edx	# D.5704, D.5704
	movq	-72(%rbp), %rax	# s, tmp295
	movl	3184(%rax), %eax	# s_40(D)->calculatedBlockCRC, D.5704
	shrl	$24, %eax	#, D.5704
	movl	%eax, %ecx	# D.5704, D.5704
	movq	-72(%rbp), %rax	# s, tmp296
	movzbl	12(%rax), %eax	# s_40(D)->state_out_ch, D.5702
	movzbl	%al, %eax	# D.5702, D.5704
	xorl	%ecx, %eax	# D.5704, D.5704
	movl	%eax, %eax	# D.5704, tmp297
	movl	BZ2_crc32Table(,%rax,4), %eax	# BZ2_crc32Table, D.5704
	xorl	%eax, %edx	# D.5704, D.5704
	movq	-72(%rbp), %rax	# s, tmp298
	movl	%edx, 3184(%rax)	# D.5704, s_40(D)->calculatedBlockCRC
	.loc 1 606 0
	movq	-72(%rbp), %rax	# s, tmp299
	movl	16(%rax), %eax	# s_40(D)->state_out_len, D.5705
	leal	-1(%rax), %edx	#, D.5705
	movq	-72(%rbp), %rax	# s, tmp300
	movl	%edx, 16(%rax)	# D.5705, s_40(D)->state_out_len
	.loc 1 607 0
	movq	-72(%rbp), %rax	# s, tmp301
	movq	(%rax), %rax	# s_40(D)->strm, D.5703
	movq	24(%rax), %rdx	# _220->next_out, D.5710
	addq	$1, %rdx	#, D.5710
	movq	%rdx, 24(%rax)	# D.5710, _220->next_out
	.loc 1 608 0
	movq	-72(%rbp), %rax	# s, tmp302
	movq	(%rax), %rax	# s_40(D)->strm, D.5703
	movl	32(%rax), %edx	# _223->avail_out, D.5704
	subl	$1, %edx	#, D.5704
	movl	%edx, 32(%rax)	# D.5704, _223->avail_out
	.loc 1 609 0
	movq	-72(%rbp), %rax	# s, tmp303
	movq	(%rax), %rax	# s_40(D)->strm, D.5703
	movl	36(%rax), %edx	# _226->total_out_lo32, D.5704
	addl	$1, %edx	#, D.5704
	movl	%edx, 36(%rax)	# D.5704, _226->total_out_lo32
	.loc 1 610 0
	movq	-72(%rbp), %rax	# s, tmp304
	movq	(%rax), %rax	# s_40(D)->strm, D.5703
	movl	36(%rax), %eax	# _229->total_out_lo32, D.5704
	testl	%eax, %eax	# D.5704
	jne	.L134	#,
	.loc 1 610 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# s, tmp305
	movq	(%rax), %rax	# s_40(D)->strm, D.5703
	movl	40(%rax), %edx	# _231->total_out_hi32, D.5704
	addl	$1, %edx	#, D.5704
	movl	%edx, 40(%rax)	# D.5704, _231->total_out_hi32
	.loc 1 611 0 is_stmt 1 discriminator 1
	jmp	.L135	#
.L134:
	.loc 1 611 0 is_stmt 0
	jmp	.L135	#
.L168:
	.loc 1 614 0 is_stmt 1 discriminator 1
	movl	$0, %eax	#, D.5701
	jmp	.L131	#
.L136:
	.loc 1 617 0
	movq	-72(%rbp), %rax	# s, tmp308
	movl	1092(%rax), %edx	# s_40(D)->nblock_used, D.5705
	movq	-72(%rbp), %rax	# s, tmp309
	movl	64080(%rax), %eax	# s_40(D)->save_nblock, D.5705
	addl	$1, %eax	#, D.5705
	cmpl	%eax, %edx	# D.5705, D.5705
	jle	.L137	#,
	.loc 1 618 0
	movl	$1, %eax	#, D.5701
	jmp	.L131	#
.L137:
	.loc 1 620 0
	movq	-72(%rbp), %rax	# s, tmp310
	movl	$1, 16(%rax)	#, s_40(D)->state_out_len
	.loc 1 621 0
	movq	-72(%rbp), %rax	# s, tmp311
	movl	64(%rax), %eax	# s_40(D)->k0, D.5705
	movl	%eax, %edx	# D.5705, D.5702
	movq	-72(%rbp), %rax	# s, tmp312
	movb	%dl, 12(%rax)	# D.5702, s_40(D)->state_out_ch
	.loc 1 622 0
	movq	-72(%rbp), %rax	# s, tmp313
	movq	3152(%rax), %rdx	# s_40(D)->tt, D.5706
	movq	-72(%rbp), %rax	# s, tmp314
	movl	60(%rax), %eax	# s_40(D)->tPos, D.5704
	movl	%eax, %eax	# D.5704, D.5707
	salq	$2, %rax	#, D.5707
	addq	%rdx, %rax	# D.5706, D.5706
	movl	(%rax), %edx	# *_60, D.5704
	movq	-72(%rbp), %rax	# s, tmp315
	movl	%edx, 60(%rax)	# D.5704, s_40(D)->tPos
	movq	-72(%rbp), %rax	# s, tmp316
	movl	60(%rax), %eax	# s_40(D)->tPos, D.5704
	movb	%al, -53(%rbp)	# D.5704, k1
	movq	-72(%rbp), %rax	# s, tmp317
	movl	60(%rax), %eax	# s_40(D)->tPos, D.5704
	shrl	$8, %eax	#, D.5704
	movl	%eax, %edx	# D.5704, D.5704
	movq	-72(%rbp), %rax	# s, tmp318
	movl	%edx, 60(%rax)	# D.5704, s_40(D)->tPos
	movq	-72(%rbp), %rax	# s, tmp319
	movl	24(%rax), %eax	# s_40(D)->rNToGo, D.5705
	testl	%eax, %eax	# D.5705
	jne	.L138	#,
	.loc 1 622 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# s, tmp320
	movl	28(%rax), %eax	# s_40(D)->rTPos, D.5705
	cltq
	movl	BZ2_rNums(,%rax,4), %edx	# BZ2_rNums, D.5705
	movq	-72(%rbp), %rax	# s, tmp322
	movl	%edx, 24(%rax)	# D.5705, s_40(D)->rNToGo
	movq	-72(%rbp), %rax	# s, tmp323
	movl	28(%rax), %eax	# s_40(D)->rTPos, D.5705
	leal	1(%rax), %edx	#, D.5705
	movq	-72(%rbp), %rax	# s, tmp324
	movl	%edx, 28(%rax)	# D.5705, s_40(D)->rTPos
	movq	-72(%rbp), %rax	# s, tmp325
	movl	28(%rax), %eax	# s_40(D)->rTPos, D.5705
	cmpl	$512, %eax	#, D.5705
	jne	.L138	#,
	movq	-72(%rbp), %rax	# s, tmp326
	movl	$0, 28(%rax)	#, s_40(D)->rTPos
.L138:
	.loc 1 622 0 discriminator 2
	movq	-72(%rbp), %rax	# s, tmp327
	movl	24(%rax), %eax	# s_40(D)->rNToGo, D.5705
	leal	-1(%rax), %edx	#, D.5705
	movq	-72(%rbp), %rax	# s, tmp328
	movl	%edx, 24(%rax)	# D.5705, s_40(D)->rNToGo
	.loc 1 623 0 is_stmt 1 discriminator 2
	movq	-72(%rbp), %rax	# s, tmp329
	movl	24(%rax), %eax	# s_40(D)->rNToGo, D.5705
	cmpl	$1, %eax	#, D.5705
	sete	%al	#, D.5708
	movl	%eax, %edx	# D.5708, D.5709
	movzbl	-53(%rbp), %eax	# k1, k1.5
	xorl	%edx, %eax	# D.5709, D.5709
	movb	%al, -53(%rbp)	# D.5709, k1
	movq	-72(%rbp), %rax	# s, tmp330
	movl	1092(%rax), %eax	# s_40(D)->nblock_used, D.5705
	leal	1(%rax), %edx	#, D.5705
	movq	-72(%rbp), %rax	# s, tmp331
	movl	%edx, 1092(%rax)	# D.5705, s_40(D)->nblock_used
	.loc 1 624 0 discriminator 2
	movq	-72(%rbp), %rax	# s, tmp332
	movl	1092(%rax), %edx	# s_40(D)->nblock_used, D.5705
	movq	-72(%rbp), %rax	# s, tmp333
	movl	64080(%rax), %eax	# s_40(D)->save_nblock, D.5705
	addl	$1, %eax	#, D.5705
	cmpl	%eax, %edx	# D.5705, D.5705
	jne	.L139	#,
	.loc 1 624 0 is_stmt 0 discriminator 1
	jmp	.L140	#
.L139:
	.loc 1 625 0 is_stmt 1
	movzbl	-53(%rbp), %edx	# k1, D.5705
	movq	-72(%rbp), %rax	# s, tmp334
	movl	64(%rax), %eax	# s_40(D)->k0, D.5705
	cmpl	%eax, %edx	# D.5705, D.5705
	je	.L141	#,
	.loc 1 625 0 is_stmt 0 discriminator 1
	movzbl	-53(%rbp), %edx	# k1, D.5705
	movq	-72(%rbp), %rax	# s, tmp335
	movl	%edx, 64(%rax)	# D.5705, s_40(D)->k0
	jmp	.L140	#
.L141:
	.loc 1 627 0 is_stmt 1
	movq	-72(%rbp), %rax	# s, tmp336
	movl	$2, 16(%rax)	#, s_40(D)->state_out_len
	.loc 1 628 0
	movq	-72(%rbp), %rax	# s, tmp337
	movq	3152(%rax), %rdx	# s_40(D)->tt, D.5706
	movq	-72(%rbp), %rax	# s, tmp338
	movl	60(%rax), %eax	# s_40(D)->tPos, D.5704
	movl	%eax, %eax	# D.5704, D.5707
	salq	$2, %rax	#, D.5707
	addq	%rdx, %rax	# D.5706, D.5706
	movl	(%rax), %edx	# *_92, D.5704
	movq	-72(%rbp), %rax	# s, tmp339
	movl	%edx, 60(%rax)	# D.5704, s_40(D)->tPos
	movq	-72(%rbp), %rax	# s, tmp340
	movl	60(%rax), %eax	# s_40(D)->tPos, D.5704
	movb	%al, -53(%rbp)	# D.5704, k1
	movq	-72(%rbp), %rax	# s, tmp341
	movl	60(%rax), %eax	# s_40(D)->tPos, D.5704
	shrl	$8, %eax	#, D.5704
	movl	%eax, %edx	# D.5704, D.5704
	movq	-72(%rbp), %rax	# s, tmp342
	movl	%edx, 60(%rax)	# D.5704, s_40(D)->tPos
	movq	-72(%rbp), %rax	# s, tmp343
	movl	24(%rax), %eax	# s_40(D)->rNToGo, D.5705
	testl	%eax, %eax	# D.5705
	jne	.L142	#,
	.loc 1 628 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# s, tmp344
	movl	28(%rax), %eax	# s_40(D)->rTPos, D.5705
	cltq
	movl	BZ2_rNums(,%rax,4), %edx	# BZ2_rNums, D.5705
	movq	-72(%rbp), %rax	# s, tmp346
	movl	%edx, 24(%rax)	# D.5705, s_40(D)->rNToGo
	movq	-72(%rbp), %rax	# s, tmp347
	movl	28(%rax), %eax	# s_40(D)->rTPos, D.5705
	leal	1(%rax), %edx	#, D.5705
	movq	-72(%rbp), %rax	# s, tmp348
	movl	%edx, 28(%rax)	# D.5705, s_40(D)->rTPos
	movq	-72(%rbp), %rax	# s, tmp349
	movl	28(%rax), %eax	# s_40(D)->rTPos, D.5705
	cmpl	$512, %eax	#, D.5705
	jne	.L142	#,
	movq	-72(%rbp), %rax	# s, tmp350
	movl	$0, 28(%rax)	#, s_40(D)->rTPos
.L142:
	.loc 1 628 0 discriminator 2
	movq	-72(%rbp), %rax	# s, tmp351
	movl	24(%rax), %eax	# s_40(D)->rNToGo, D.5705
	leal	-1(%rax), %edx	#, D.5705
	movq	-72(%rbp), %rax	# s, tmp352
	movl	%edx, 24(%rax)	# D.5705, s_40(D)->rNToGo
	.loc 1 629 0 is_stmt 1 discriminator 2
	movq	-72(%rbp), %rax	# s, tmp353
	movl	24(%rax), %eax	# s_40(D)->rNToGo, D.5705
	cmpl	$1, %eax	#, D.5705
	sete	%al	#, D.5708
	movl	%eax, %edx	# D.5708, D.5709
	movzbl	-53(%rbp), %eax	# k1, k1.6
	xorl	%edx, %eax	# D.5709, D.5709
	movb	%al, -53(%rbp)	# D.5709, k1
	movq	-72(%rbp), %rax	# s, tmp354
	movl	1092(%rax), %eax	# s_40(D)->nblock_used, D.5705
	leal	1(%rax), %edx	#, D.5705
	movq	-72(%rbp), %rax	# s, tmp355
	movl	%edx, 1092(%rax)	# D.5705, s_40(D)->nblock_used
	.loc 1 630 0 discriminator 2
	movq	-72(%rbp), %rax	# s, tmp356
	movl	1092(%rax), %edx	# s_40(D)->nblock_used, D.5705
	movq	-72(%rbp), %rax	# s, tmp357
	movl	64080(%rax), %eax	# s_40(D)->save_nblock, D.5705
	addl	$1, %eax	#, D.5705
	cmpl	%eax, %edx	# D.5705, D.5705
	jne	.L143	#,
	.loc 1 630 0 is_stmt 0 discriminator 1
	jmp	.L140	#
.L143:
	.loc 1 631 0 is_stmt 1
	movzbl	-53(%rbp), %edx	# k1, D.5705
	movq	-72(%rbp), %rax	# s, tmp358
	movl	64(%rax), %eax	# s_40(D)->k0, D.5705
	cmpl	%eax, %edx	# D.5705, D.5705
	je	.L144	#,
	.loc 1 631 0 is_stmt 0 discriminator 1
	movzbl	-53(%rbp), %edx	# k1, D.5705
	movq	-72(%rbp), %rax	# s, tmp359
	movl	%edx, 64(%rax)	# D.5705, s_40(D)->k0
	jmp	.L140	#
.L144:
	.loc 1 633 0 is_stmt 1
	movq	-72(%rbp), %rax	# s, tmp360
	movl	$3, 16(%rax)	#, s_40(D)->state_out_len
	.loc 1 634 0
	movq	-72(%rbp), %rax	# s, tmp361
	movq	3152(%rax), %rdx	# s_40(D)->tt, D.5706
	movq	-72(%rbp), %rax	# s, tmp362
	movl	60(%rax), %eax	# s_40(D)->tPos, D.5704
	movl	%eax, %eax	# D.5704, D.5707
	salq	$2, %rax	#, D.5707
	addq	%rdx, %rax	# D.5706, D.5706
	movl	(%rax), %edx	# *_124, D.5704
	movq	-72(%rbp), %rax	# s, tmp363
	movl	%edx, 60(%rax)	# D.5704, s_40(D)->tPos
	movq	-72(%rbp), %rax	# s, tmp364
	movl	60(%rax), %eax	# s_40(D)->tPos, D.5704
	movb	%al, -53(%rbp)	# D.5704, k1
	movq	-72(%rbp), %rax	# s, tmp365
	movl	60(%rax), %eax	# s_40(D)->tPos, D.5704
	shrl	$8, %eax	#, D.5704
	movl	%eax, %edx	# D.5704, D.5704
	movq	-72(%rbp), %rax	# s, tmp366
	movl	%edx, 60(%rax)	# D.5704, s_40(D)->tPos
	movq	-72(%rbp), %rax	# s, tmp367
	movl	24(%rax), %eax	# s_40(D)->rNToGo, D.5705
	testl	%eax, %eax	# D.5705
	jne	.L145	#,
	.loc 1 634 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# s, tmp368
	movl	28(%rax), %eax	# s_40(D)->rTPos, D.5705
	cltq
	movl	BZ2_rNums(,%rax,4), %edx	# BZ2_rNums, D.5705
	movq	-72(%rbp), %rax	# s, tmp370
	movl	%edx, 24(%rax)	# D.5705, s_40(D)->rNToGo
	movq	-72(%rbp), %rax	# s, tmp371
	movl	28(%rax), %eax	# s_40(D)->rTPos, D.5705
	leal	1(%rax), %edx	#, D.5705
	movq	-72(%rbp), %rax	# s, tmp372
	movl	%edx, 28(%rax)	# D.5705, s_40(D)->rTPos
	movq	-72(%rbp), %rax	# s, tmp373
	movl	28(%rax), %eax	# s_40(D)->rTPos, D.5705
	cmpl	$512, %eax	#, D.5705
	jne	.L145	#,
	movq	-72(%rbp), %rax	# s, tmp374
	movl	$0, 28(%rax)	#, s_40(D)->rTPos
.L145:
	.loc 1 634 0 discriminator 2
	movq	-72(%rbp), %rax	# s, tmp375
	movl	24(%rax), %eax	# s_40(D)->rNToGo, D.5705
	leal	-1(%rax), %edx	#, D.5705
	movq	-72(%rbp), %rax	# s, tmp376
	movl	%edx, 24(%rax)	# D.5705, s_40(D)->rNToGo
	.loc 1 635 0 is_stmt 1 discriminator 2
	movq	-72(%rbp), %rax	# s, tmp377
	movl	24(%rax), %eax	# s_40(D)->rNToGo, D.5705
	cmpl	$1, %eax	#, D.5705
	sete	%al	#, D.5708
	movl	%eax, %edx	# D.5708, D.5709
	movzbl	-53(%rbp), %eax	# k1, k1.7
	xorl	%edx, %eax	# D.5709, D.5709
	movb	%al, -53(%rbp)	# D.5709, k1
	movq	-72(%rbp), %rax	# s, tmp378
	movl	1092(%rax), %eax	# s_40(D)->nblock_used, D.5705
	leal	1(%rax), %edx	#, D.5705
	movq	-72(%rbp), %rax	# s, tmp379
	movl	%edx, 1092(%rax)	# D.5705, s_40(D)->nblock_used
	.loc 1 636 0 discriminator 2
	movq	-72(%rbp), %rax	# s, tmp380
	movl	1092(%rax), %edx	# s_40(D)->nblock_used, D.5705
	movq	-72(%rbp), %rax	# s, tmp381
	movl	64080(%rax), %eax	# s_40(D)->save_nblock, D.5705
	addl	$1, %eax	#, D.5705
	cmpl	%eax, %edx	# D.5705, D.5705
	jne	.L146	#,
	.loc 1 636 0 is_stmt 0 discriminator 1
	jmp	.L140	#
.L146:
	.loc 1 637 0 is_stmt 1
	movzbl	-53(%rbp), %edx	# k1, D.5705
	movq	-72(%rbp), %rax	# s, tmp382
	movl	64(%rax), %eax	# s_40(D)->k0, D.5705
	cmpl	%eax, %edx	# D.5705, D.5705
	je	.L147	#,
	.loc 1 637 0 is_stmt 0 discriminator 1
	movzbl	-53(%rbp), %edx	# k1, D.5705
	movq	-72(%rbp), %rax	# s, tmp383
	movl	%edx, 64(%rax)	# D.5705, s_40(D)->k0
	jmp	.L140	#
.L147:
	.loc 1 639 0 is_stmt 1
	movq	-72(%rbp), %rax	# s, tmp384
	movq	3152(%rax), %rdx	# s_40(D)->tt, D.5706
	movq	-72(%rbp), %rax	# s, tmp385
	movl	60(%rax), %eax	# s_40(D)->tPos, D.5704
	movl	%eax, %eax	# D.5704, D.5707
	salq	$2, %rax	#, D.5707
	addq	%rdx, %rax	# D.5706, D.5706
	movl	(%rax), %edx	# *_156, D.5704
	movq	-72(%rbp), %rax	# s, tmp386
	movl	%edx, 60(%rax)	# D.5704, s_40(D)->tPos
	movq	-72(%rbp), %rax	# s, tmp387
	movl	60(%rax), %eax	# s_40(D)->tPos, D.5704
	movb	%al, -53(%rbp)	# D.5704, k1
	movq	-72(%rbp), %rax	# s, tmp388
	movl	60(%rax), %eax	# s_40(D)->tPos, D.5704
	shrl	$8, %eax	#, D.5704
	movl	%eax, %edx	# D.5704, D.5704
	movq	-72(%rbp), %rax	# s, tmp389
	movl	%edx, 60(%rax)	# D.5704, s_40(D)->tPos
	movq	-72(%rbp), %rax	# s, tmp390
	movl	24(%rax), %eax	# s_40(D)->rNToGo, D.5705
	testl	%eax, %eax	# D.5705
	jne	.L148	#,
	.loc 1 639 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# s, tmp391
	movl	28(%rax), %eax	# s_40(D)->rTPos, D.5705
	cltq
	movl	BZ2_rNums(,%rax,4), %edx	# BZ2_rNums, D.5705
	movq	-72(%rbp), %rax	# s, tmp393
	movl	%edx, 24(%rax)	# D.5705, s_40(D)->rNToGo
	movq	-72(%rbp), %rax	# s, tmp394
	movl	28(%rax), %eax	# s_40(D)->rTPos, D.5705
	leal	1(%rax), %edx	#, D.5705
	movq	-72(%rbp), %rax	# s, tmp395
	movl	%edx, 28(%rax)	# D.5705, s_40(D)->rTPos
	movq	-72(%rbp), %rax	# s, tmp396
	movl	28(%rax), %eax	# s_40(D)->rTPos, D.5705
	cmpl	$512, %eax	#, D.5705
	jne	.L148	#,
	movq	-72(%rbp), %rax	# s, tmp397
	movl	$0, 28(%rax)	#, s_40(D)->rTPos
.L148:
	.loc 1 639 0 discriminator 2
	movq	-72(%rbp), %rax	# s, tmp398
	movl	24(%rax), %eax	# s_40(D)->rNToGo, D.5705
	leal	-1(%rax), %edx	#, D.5705
	movq	-72(%rbp), %rax	# s, tmp399
	movl	%edx, 24(%rax)	# D.5705, s_40(D)->rNToGo
	.loc 1 640 0 is_stmt 1 discriminator 2
	movq	-72(%rbp), %rax	# s, tmp400
	movl	24(%rax), %eax	# s_40(D)->rNToGo, D.5705
	cmpl	$1, %eax	#, D.5705
	sete	%al	#, D.5708
	movl	%eax, %edx	# D.5708, D.5709
	movzbl	-53(%rbp), %eax	# k1, k1.8
	xorl	%edx, %eax	# D.5709, D.5709
	movb	%al, -53(%rbp)	# D.5709, k1
	movq	-72(%rbp), %rax	# s, tmp401
	movl	1092(%rax), %eax	# s_40(D)->nblock_used, D.5705
	leal	1(%rax), %edx	#, D.5705
	movq	-72(%rbp), %rax	# s, tmp402
	movl	%edx, 1092(%rax)	# D.5705, s_40(D)->nblock_used
	.loc 1 641 0 discriminator 2
	movzbl	-53(%rbp), %eax	# k1, D.5705
	leal	4(%rax), %edx	#, D.5705
	movq	-72(%rbp), %rax	# s, tmp403
	movl	%edx, 16(%rax)	# D.5705, s_40(D)->state_out_len
	.loc 1 642 0 discriminator 2
	movq	-72(%rbp), %rax	# s, tmp404
	movq	3152(%rax), %rdx	# s_40(D)->tt, D.5706
	movq	-72(%rbp), %rax	# s, tmp405
	movl	60(%rax), %eax	# s_40(D)->tPos, D.5704
	movl	%eax, %eax	# D.5704, D.5707
	salq	$2, %rax	#, D.5707
	addq	%rdx, %rax	# D.5706, D.5706
	movl	(%rax), %edx	# *_184, D.5704
	movq	-72(%rbp), %rax	# s, tmp406
	movl	%edx, 60(%rax)	# D.5704, s_40(D)->tPos
	movq	-72(%rbp), %rax	# s, tmp407
	movl	60(%rax), %eax	# s_40(D)->tPos, D.5704
	movzbl	%al, %edx	# D.5702, D.5705
	movq	-72(%rbp), %rax	# s, tmp408
	movl	%edx, 64(%rax)	# D.5705, s_40(D)->k0
	movq	-72(%rbp), %rax	# s, tmp409
	movl	60(%rax), %eax	# s_40(D)->tPos, D.5704
	shrl	$8, %eax	#, D.5704
	movl	%eax, %edx	# D.5704, D.5704
	movq	-72(%rbp), %rax	# s, tmp410
	movl	%edx, 60(%rax)	# D.5704, s_40(D)->tPos
	movq	-72(%rbp), %rax	# s, tmp411
	movl	24(%rax), %eax	# s_40(D)->rNToGo, D.5705
	testl	%eax, %eax	# D.5705
	jne	.L149	#,
	.loc 1 642 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# s, tmp412
	movl	28(%rax), %eax	# s_40(D)->rTPos, D.5705
	cltq
	movl	BZ2_rNums(,%rax,4), %edx	# BZ2_rNums, D.5705
	movq	-72(%rbp), %rax	# s, tmp414
	movl	%edx, 24(%rax)	# D.5705, s_40(D)->rNToGo
	movq	-72(%rbp), %rax	# s, tmp415
	movl	28(%rax), %eax	# s_40(D)->rTPos, D.5705
	leal	1(%rax), %edx	#, D.5705
	movq	-72(%rbp), %rax	# s, tmp416
	movl	%edx, 28(%rax)	# D.5705, s_40(D)->rTPos
	movq	-72(%rbp), %rax	# s, tmp417
	movl	28(%rax), %eax	# s_40(D)->rTPos, D.5705
	cmpl	$512, %eax	#, D.5705
	jne	.L149	#,
	movq	-72(%rbp), %rax	# s, tmp418
	movl	$0, 28(%rax)	#, s_40(D)->rTPos
.L149:
	.loc 1 642 0 discriminator 2
	movq	-72(%rbp), %rax	# s, tmp419
	movl	24(%rax), %eax	# s_40(D)->rNToGo, D.5705
	leal	-1(%rax), %edx	#, D.5705
	movq	-72(%rbp), %rax	# s, tmp420
	movl	%edx, 24(%rax)	# D.5705, s_40(D)->rNToGo
	.loc 1 643 0 is_stmt 1 discriminator 2
	movq	-72(%rbp), %rax	# s, tmp421
	movl	64(%rax), %edx	# s_40(D)->k0, D.5705
	movq	-72(%rbp), %rax	# s, tmp422
	movl	24(%rax), %eax	# s_40(D)->rNToGo, D.5705
	cmpl	$1, %eax	#, D.5705
	sete	%al	#, D.5708
	movzbl	%al, %eax	# D.5708, D.5705
	xorl	%eax, %edx	# D.5705, D.5705
	movq	-72(%rbp), %rax	# s, tmp423
	movl	%edx, 64(%rax)	# D.5705, s_40(D)->k0
	movq	-72(%rbp), %rax	# s, tmp424
	movl	1092(%rax), %eax	# s_40(D)->nblock_used, D.5705
	leal	1(%rax), %edx	#, D.5705
	movq	-72(%rbp), %rax	# s, tmp425
	movl	%edx, 1092(%rax)	# D.5705, s_40(D)->nblock_used
	.loc 1 644 0 discriminator 2
	jmp	.L135	#
.L140:
	.loc 1 644 0 is_stmt 0
	jmp	.L135	#
.L129:
.LBB6:
	.loc 1 649 0 is_stmt 1
	movq	-72(%rbp), %rax	# s, tmp426
	movl	3184(%rax), %eax	# s_40(D)->calculatedBlockCRC, tmp427
	movl	%eax, -52(%rbp)	# tmp427, c_calculatedBlockCRC
	.loc 1 650 0
	movq	-72(%rbp), %rax	# s, tmp428
	movzbl	12(%rax), %eax	# s_40(D)->state_out_ch, tmp429
	movb	%al, -54(%rbp)	# tmp429, c_state_out_ch
	.loc 1 651 0
	movq	-72(%rbp), %rax	# s, tmp430
	movl	16(%rax), %eax	# s_40(D)->state_out_len, tmp431
	movl	%eax, -48(%rbp)	# tmp431, c_state_out_len
	.loc 1 652 0
	movq	-72(%rbp), %rax	# s, tmp432
	movl	1092(%rax), %eax	# s_40(D)->nblock_used, tmp433
	movl	%eax, -44(%rbp)	# tmp433, c_nblock_used
	.loc 1 653 0
	movq	-72(%rbp), %rax	# s, tmp434
	movl	64(%rax), %eax	# s_40(D)->k0, tmp435
	movl	%eax, -40(%rbp)	# tmp435, c_k0
	.loc 1 654 0
	movq	-72(%rbp), %rax	# s, tmp436
	movq	3152(%rax), %rax	# s_40(D)->tt, tmp437
	movq	%rax, -8(%rbp)	# tmp437, c_tt
	.loc 1 655 0
	movq	-72(%rbp), %rax	# s, tmp438
	movl	60(%rax), %eax	# s_40(D)->tPos, tmp439
	movl	%eax, -36(%rbp)	# tmp439, c_tPos
	.loc 1 656 0
	movq	-72(%rbp), %rax	# s, tmp440
	movq	(%rax), %rax	# s_40(D)->strm, D.5703
	movq	24(%rax), %rax	# _241->next_out, tmp441
	movq	%rax, -16(%rbp)	# tmp441, cs_next_out
	.loc 1 657 0
	movq	-72(%rbp), %rax	# s, tmp442
	movq	(%rax), %rax	# s_40(D)->strm, D.5703
	movl	32(%rax), %eax	# _243->avail_out, tmp443
	movl	%eax, -32(%rbp)	# tmp443, cs_avail_out
	.loc 1 660 0
	movl	-32(%rbp), %eax	# cs_avail_out, tmp444
	movl	%eax, -28(%rbp)	# tmp444, avail_out_INIT
	.loc 1 661 0
	movq	-72(%rbp), %rax	# s, tmp445
	movl	64080(%rax), %eax	# s_40(D)->save_nblock, D.5705
	addl	$1, %eax	#, tmp446
	movl	%eax, -24(%rbp)	# tmp446, s_save_nblockPP
.L166:
	.loc 1 667 0
	cmpl	$0, -48(%rbp)	#, c_state_out_len
	jle	.L150	#,
.L155:
	.loc 1 669 0
	cmpl	$0, -32(%rbp)	#, cs_avail_out
	jne	.L151	#,
	.loc 1 669 0 is_stmt 0 discriminator 1
	jmp	.L152	#
.L151:
	.loc 1 670 0 is_stmt 1
	cmpl	$1, -48(%rbp)	#, c_state_out_len
	jne	.L153	#,
	.loc 1 670 0 is_stmt 0 discriminator 1
	jmp	.L154	#
.L153:
	.loc 1 671 0 is_stmt 1
	movq	-16(%rbp), %rax	# cs_next_out, tmp447
	movzbl	-54(%rbp), %edx	# c_state_out_ch, tmp448
	movb	%dl, (%rax)	# tmp448, MEM[(UChar *)cs_next_out_30]
	.loc 1 672 0
	movl	-52(%rbp), %eax	# c_calculatedBlockCRC, tmp449
	sall	$8, %eax	#, D.5704
	movl	%eax, %edx	# D.5704, D.5704
	movl	-52(%rbp), %eax	# c_calculatedBlockCRC, tmp450
	shrl	$24, %eax	#, D.5704
	movl	%eax, %ecx	# D.5704, D.5704
	movzbl	-54(%rbp), %eax	# c_state_out_ch, D.5704
	xorl	%ecx, %eax	# D.5704, D.5704
	movl	%eax, %eax	# D.5704, tmp451
	movl	BZ2_crc32Table(,%rax,4), %eax	# BZ2_crc32Table, D.5704
	xorl	%edx, %eax	# D.5704, tmp452
	movl	%eax, -52(%rbp)	# tmp452, c_calculatedBlockCRC
	.loc 1 673 0
	subl	$1, -48(%rbp)	#, c_state_out_len
	.loc 1 674 0
	addq	$1, -16(%rbp)	#, cs_next_out
	.loc 1 675 0
	subl	$1, -32(%rbp)	#, cs_avail_out
	.loc 1 676 0
	jmp	.L155	#
.L154:
	.loc 1 679 0
	cmpl	$0, -32(%rbp)	#, cs_avail_out
	jne	.L156	#,
	.loc 1 680 0
	movl	$1, -48(%rbp)	#, c_state_out_len
	jmp	.L152	#
.L156:
	.loc 1 682 0
	movq	-16(%rbp), %rax	# cs_next_out, tmp453
	movzbl	-54(%rbp), %edx	# c_state_out_ch, tmp454
	movb	%dl, (%rax)	# tmp454, MEM[(UChar *)cs_next_out_31]
	.loc 1 683 0
	movl	-52(%rbp), %eax	# c_calculatedBlockCRC, tmp455
	sall	$8, %eax	#, D.5704
	movl	%eax, %edx	# D.5704, D.5704
	movl	-52(%rbp), %eax	# c_calculatedBlockCRC, tmp456
	shrl	$24, %eax	#, D.5704
	movl	%eax, %ecx	# D.5704, D.5704
	movzbl	-54(%rbp), %eax	# c_state_out_ch, D.5704
	xorl	%ecx, %eax	# D.5704, D.5704
	movl	%eax, %eax	# D.5704, tmp457
	movl	BZ2_crc32Table(,%rax,4), %eax	# BZ2_crc32Table, D.5704
	xorl	%edx, %eax	# D.5704, tmp458
	movl	%eax, -52(%rbp)	# tmp458, c_calculatedBlockCRC
	.loc 1 684 0
	addq	$1, -16(%rbp)	#, cs_next_out
	.loc 1 685 0
	subl	$1, -32(%rbp)	#, cs_avail_out
.L150:
	.loc 1 689 0
	movl	-44(%rbp), %eax	# c_nblock_used, tmp459
	cmpl	-24(%rbp), %eax	# s_save_nblockPP, tmp459
	jle	.L157	#,
	.loc 1 690 0
	movl	$1, %eax	#, D.5701
	jmp	.L131	#
.L157:
	.loc 1 693 0
	movl	-44(%rbp), %eax	# c_nblock_used, tmp460
	cmpl	-24(%rbp), %eax	# s_save_nblockPP, tmp460
	jne	.L158	#,
	.loc 1 694 0
	movl	$0, -48(%rbp)	#, c_state_out_len
	jmp	.L152	#
.L158:
	.loc 1 696 0
	movl	-40(%rbp), %eax	# c_k0, tmp461
	movb	%al, -54(%rbp)	# tmp461, c_state_out_ch
	.loc 1 697 0
	movl	-36(%rbp), %eax	# c_tPos, D.5707
	leaq	0(,%rax,4), %rdx	#, D.5707
	movq	-8(%rbp), %rax	# c_tt, tmp462
	addq	%rdx, %rax	# D.5707, D.5706
	movl	(%rax), %eax	# *_286, tmp463
	movl	%eax, -36(%rbp)	# tmp463, c_tPos
	movl	-36(%rbp), %eax	# c_tPos, tmp464
	movb	%al, -53(%rbp)	# tmp464, k1
	shrl	$8, -36(%rbp)	#, c_tPos
	addl	$1, -44(%rbp)	#, c_nblock_used
	.loc 1 698 0
	movzbl	-53(%rbp), %eax	# k1, D.5705
	cmpl	-40(%rbp), %eax	# c_k0, D.5705
	je	.L159	#,
	.loc 1 699 0
	movzbl	-53(%rbp), %eax	# k1, tmp465
	movl	%eax, -40(%rbp)	# tmp465, c_k0
	jmp	.L154	#
.L159:
	.loc 1 701 0
	movl	-44(%rbp), %eax	# c_nblock_used, tmp466
	cmpl	-24(%rbp), %eax	# s_save_nblockPP, tmp466
	jne	.L160	#,
	.loc 1 702 0
	jmp	.L154	#
.L160:
	.loc 1 704 0
	movl	$2, -48(%rbp)	#, c_state_out_len
	.loc 1 705 0
	movl	-36(%rbp), %eax	# c_tPos, D.5707
	leaq	0(,%rax,4), %rdx	#, D.5707
	movq	-8(%rbp), %rax	# c_tt, tmp467
	addq	%rdx, %rax	# D.5707, D.5706
	movl	(%rax), %eax	# *_296, tmp468
	movl	%eax, -36(%rbp)	# tmp468, c_tPos
	movl	-36(%rbp), %eax	# c_tPos, tmp469
	movb	%al, -53(%rbp)	# tmp469, k1
	shrl	$8, -36(%rbp)	#, c_tPos
	addl	$1, -44(%rbp)	#, c_nblock_used
	.loc 1 706 0
	movl	-44(%rbp), %eax	# c_nblock_used, tmp470
	cmpl	-24(%rbp), %eax	# s_save_nblockPP, tmp470
	jne	.L161	#,
	.loc 1 706 0 is_stmt 0 discriminator 1
	jmp	.L162	#
.L161:
	.loc 1 707 0 is_stmt 1
	movzbl	-53(%rbp), %eax	# k1, D.5705
	cmpl	-40(%rbp), %eax	# c_k0, D.5705
	je	.L163	#,
	.loc 1 707 0 is_stmt 0 discriminator 1
	movzbl	-53(%rbp), %eax	# k1, tmp471
	movl	%eax, -40(%rbp)	# tmp471, c_k0
	jmp	.L162	#
.L163:
	.loc 1 709 0 is_stmt 1
	movl	$3, -48(%rbp)	#, c_state_out_len
	.loc 1 710 0
	movl	-36(%rbp), %eax	# c_tPos, D.5707
	leaq	0(,%rax,4), %rdx	#, D.5707
	movq	-8(%rbp), %rax	# c_tt, tmp472
	addq	%rdx, %rax	# D.5707, D.5706
	movl	(%rax), %eax	# *_306, tmp473
	movl	%eax, -36(%rbp)	# tmp473, c_tPos
	movl	-36(%rbp), %eax	# c_tPos, tmp474
	movb	%al, -53(%rbp)	# tmp474, k1
	shrl	$8, -36(%rbp)	#, c_tPos
	addl	$1, -44(%rbp)	#, c_nblock_used
	.loc 1 711 0
	movl	-44(%rbp), %eax	# c_nblock_used, tmp475
	cmpl	-24(%rbp), %eax	# s_save_nblockPP, tmp475
	jne	.L164	#,
	.loc 1 711 0 is_stmt 0 discriminator 1
	jmp	.L162	#
.L164:
	.loc 1 712 0 is_stmt 1
	movzbl	-53(%rbp), %eax	# k1, D.5705
	cmpl	-40(%rbp), %eax	# c_k0, D.5705
	je	.L165	#,
	.loc 1 712 0 is_stmt 0 discriminator 1
	movzbl	-53(%rbp), %eax	# k1, tmp476
	movl	%eax, -40(%rbp)	# tmp476, c_k0
	jmp	.L162	#
.L165:
	.loc 1 714 0 is_stmt 1
	movl	-36(%rbp), %eax	# c_tPos, D.5707
	leaq	0(,%rax,4), %rdx	#, D.5707
	movq	-8(%rbp), %rax	# c_tt, tmp477
	addq	%rdx, %rax	# D.5707, D.5706
	movl	(%rax), %eax	# *_315, tmp478
	movl	%eax, -36(%rbp)	# tmp478, c_tPos
	movl	-36(%rbp), %eax	# c_tPos, tmp479
	movb	%al, -53(%rbp)	# tmp479, k1
	shrl	$8, -36(%rbp)	#, c_tPos
	addl	$1, -44(%rbp)	#, c_nblock_used
	.loc 1 715 0
	movzbl	-53(%rbp), %eax	# k1, D.5705
	addl	$4, %eax	#, tmp480
	movl	%eax, -48(%rbp)	# tmp480, c_state_out_len
	.loc 1 716 0
	movl	-36(%rbp), %eax	# c_tPos, D.5707
	leaq	0(,%rax,4), %rdx	#, D.5707
	movq	-8(%rbp), %rax	# c_tt, tmp481
	addq	%rdx, %rax	# D.5707, D.5706
	movl	(%rax), %eax	# *_324, tmp482
	movl	%eax, -36(%rbp)	# tmp482, c_tPos
	movl	-36(%rbp), %eax	# c_tPos, tmp483
	movzbl	%al, %eax	# D.5702, tmp484
	movl	%eax, -40(%rbp)	# tmp484, c_k0
	shrl	$8, -36(%rbp)	#, c_tPos
	addl	$1, -44(%rbp)	#, c_nblock_used
	.loc 1 717 0
	jmp	.L166	#
.L162:
	jmp	.L166	#
.L152:
	.loc 1 720 0
	movq	-72(%rbp), %rax	# s, tmp485
	movq	(%rax), %rax	# s_40(D)->strm, D.5703
	movl	36(%rax), %eax	# _257->total_out_lo32, tmp486
	movl	%eax, -20(%rbp)	# tmp486, total_out_lo32_old
	.loc 1 721 0
	movq	-72(%rbp), %rax	# s, tmp487
	movq	(%rax), %rax	# s_40(D)->strm, D.5703
	movq	-72(%rbp), %rdx	# s, tmp488
	movq	(%rdx), %rdx	# s_40(D)->strm, D.5703
	movl	36(%rdx), %edx	# _260->total_out_lo32, D.5704
	movl	-32(%rbp), %ecx	# cs_avail_out, tmp489
	movl	-28(%rbp), %esi	# avail_out_INIT, tmp490
	subl	%ecx, %esi	# tmp489, D.5704
	movl	%esi, %ecx	# D.5704, D.5704
	addl	%ecx, %edx	# D.5704, D.5704
	movl	%edx, 36(%rax)	# D.5704, _259->total_out_lo32
	.loc 1 722 0
	movq	-72(%rbp), %rax	# s, tmp491
	movq	(%rax), %rax	# s_40(D)->strm, D.5703
	movl	36(%rax), %eax	# _264->total_out_lo32, D.5704
	cmpl	-20(%rbp), %eax	# total_out_lo32_old, D.5704
	jae	.L167	#,
	.loc 1 723 0
	movq	-72(%rbp), %rax	# s, tmp492
	movq	(%rax), %rax	# s_40(D)->strm, D.5703
	movl	40(%rax), %edx	# _266->total_out_hi32, D.5704
	addl	$1, %edx	#, D.5704
	movl	%edx, 40(%rax)	# D.5704, _266->total_out_hi32
.L167:
	.loc 1 726 0
	movq	-72(%rbp), %rax	# s, tmp493
	movl	-52(%rbp), %edx	# c_calculatedBlockCRC, tmp494
	movl	%edx, 3184(%rax)	# tmp494, s_40(D)->calculatedBlockCRC
	.loc 1 727 0
	movq	-72(%rbp), %rax	# s, tmp495
	movzbl	-54(%rbp), %edx	# c_state_out_ch, tmp496
	movb	%dl, 12(%rax)	# tmp496, s_40(D)->state_out_ch
	.loc 1 728 0
	movq	-72(%rbp), %rax	# s, tmp497
	movl	-48(%rbp), %edx	# c_state_out_len, tmp498
	movl	%edx, 16(%rax)	# tmp498, s_40(D)->state_out_len
	.loc 1 729 0
	movq	-72(%rbp), %rax	# s, tmp499
	movl	-44(%rbp), %edx	# c_nblock_used, tmp500
	movl	%edx, 1092(%rax)	# tmp500, s_40(D)->nblock_used
	.loc 1 730 0
	movq	-72(%rbp), %rax	# s, tmp501
	movl	-40(%rbp), %edx	# c_k0, tmp502
	movl	%edx, 64(%rax)	# tmp502, s_40(D)->k0
	.loc 1 731 0
	movq	-72(%rbp), %rax	# s, tmp503
	movq	-8(%rbp), %rdx	# c_tt, tmp504
	movq	%rdx, 3152(%rax)	# tmp504, s_40(D)->tt
	.loc 1 732 0
	movq	-72(%rbp), %rax	# s, tmp505
	movl	-36(%rbp), %edx	# c_tPos, tmp506
	movl	%edx, 60(%rax)	# tmp506, s_40(D)->tPos
	.loc 1 733 0
	movq	-72(%rbp), %rax	# s, tmp507
	movq	(%rax), %rax	# s_40(D)->strm, D.5703
	movq	-16(%rbp), %rdx	# cs_next_out, tmp508
	movq	%rdx, 24(%rax)	# tmp508, _269->next_out
	.loc 1 734 0
	movq	-72(%rbp), %rax	# s, tmp509
	movq	(%rax), %rax	# s_40(D)->strm, D.5703
	movl	-32(%rbp), %edx	# cs_avail_out, tmp510
	movl	%edx, 32(%rax)	# tmp510, _270->avail_out
.LBE6:
	.loc 1 737 0
	movl	$0, %eax	#, D.5701
.L131:
	.loc 1 738 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	unRLE_obuf_to_output_FAST, .-unRLE_obuf_to_output_FAST
	.globl	BZ2_indexIntoF
	.type	BZ2_indexIntoF, @function
BZ2_indexIntoF:
.LFB19:
	.loc 1 744 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)	# indx, indx
	movq	%rsi, -32(%rbp)	# cftab, cftab
	.loc 1 746 0
	movl	$0, -12(%rbp)	#, nb
	.loc 1 747 0
	movl	$256, -8(%rbp)	#, na
.L172:
	.loc 1 749 0
	movl	-8(%rbp), %eax	# na, tmp67
	movl	-12(%rbp), %edx	# nb, tmp68
	addl	%edx, %eax	# tmp68, D.5711
	sarl	%eax	# tmp69
	movl	%eax, -4(%rbp)	# tmp69, mid
	.loc 1 750 0
	movl	-4(%rbp), %eax	# mid, tmp70
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5712
	movq	-32(%rbp), %rax	# cftab, tmp71
	addq	%rdx, %rax	# D.5712, D.5713
	movl	(%rax), %eax	# *_12, D.5711
	cmpl	-20(%rbp), %eax	# indx, D.5711
	jg	.L170	#,
	.loc 1 750 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# mid, tmp72
	movl	%eax, -12(%rbp)	# tmp72, nb
	jmp	.L171	#
.L170:
	.loc 1 750 0 discriminator 2
	movl	-4(%rbp), %eax	# mid, tmp73
	movl	%eax, -8(%rbp)	# tmp73, na
.L171:
	.loc 1 752 0 is_stmt 1
	movl	-12(%rbp), %eax	# nb, tmp74
	movl	-8(%rbp), %edx	# na, tmp75
	subl	%eax, %edx	# tmp74, D.5711
	movl	%edx, %eax	# D.5711, D.5711
	cmpl	$1, %eax	#, D.5711
	jne	.L172	#,
	.loc 1 753 0
	movl	-12(%rbp), %eax	# nb, D.5714
	.loc 1 754 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	BZ2_indexIntoF, .-BZ2_indexIntoF
	.type	unRLE_obuf_to_output_SMALL, @function
unRLE_obuf_to_output_SMALL:
.LFB20:
	.loc 1 763 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$24, %rsp	#,
	movq	%rdi, -24(%rbp)	# s, s
	.loc 1 766 0
	movq	-24(%rbp), %rax	# s, tmp525
	movzbl	20(%rax), %eax	# s_2(D)->blockRandomised, D.5716
	testb	%al, %al	# D.5716
	je	.L175	#,
.L181:
	.loc 1 771 0
	movq	-24(%rbp), %rax	# s, tmp526
	movq	(%rax), %rax	# s_2(D)->strm, D.5717
	movl	32(%rax), %eax	# _4->avail_out, D.5718
	testl	%eax, %eax	# D.5718
	jne	.L176	#,
	.loc 1 771 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.5715
	jmp	.L177	#
.L176:
	.loc 1 772 0 is_stmt 1
	movq	-24(%rbp), %rax	# s, tmp527
	movl	16(%rax), %eax	# s_2(D)->state_out_len, D.5719
	testl	%eax, %eax	# D.5719
	jne	.L178	#,
	.loc 1 772 0 is_stmt 0 discriminator 1
	nop
	.loc 1 783 0 is_stmt 1 discriminator 1
	movq	-24(%rbp), %rax	# s, tmp542
	movl	1092(%rax), %edx	# s_2(D)->nblock_used, D.5719
	movq	-24(%rbp), %rax	# s, tmp543
	movl	64080(%rax), %eax	# s_2(D)->save_nblock, D.5719
	addl	$1, %eax	#, D.5719
	cmpl	%eax, %edx	# D.5719, D.5719
	jne	.L182	#,
	jmp	.L209	#
.L178:
	.loc 1 773 0
	movq	-24(%rbp), %rax	# s, tmp528
	movq	(%rax), %rax	# s_2(D)->strm, D.5717
	movq	24(%rax), %rax	# _251->next_out, D.5728
	movq	-24(%rbp), %rdx	# s, tmp529
	movzbl	12(%rdx), %edx	# s_2(D)->state_out_ch, D.5716
	movb	%dl, (%rax)	# D.5716, MEM[(UChar *)_252]
	.loc 1 774 0
	movq	-24(%rbp), %rax	# s, tmp530
	movl	3184(%rax), %eax	# s_2(D)->calculatedBlockCRC, D.5718
	sall	$8, %eax	#, D.5718
	movl	%eax, %edx	# D.5718, D.5718
	movq	-24(%rbp), %rax	# s, tmp531
	movl	3184(%rax), %eax	# s_2(D)->calculatedBlockCRC, D.5718
	shrl	$24, %eax	#, D.5718
	movl	%eax, %ecx	# D.5718, D.5718
	movq	-24(%rbp), %rax	# s, tmp532
	movzbl	12(%rax), %eax	# s_2(D)->state_out_ch, D.5716
	movzbl	%al, %eax	# D.5716, D.5718
	xorl	%ecx, %eax	# D.5718, D.5718
	movl	%eax, %eax	# D.5718, tmp533
	movl	BZ2_crc32Table(,%rax,4), %eax	# BZ2_crc32Table, D.5718
	xorl	%eax, %edx	# D.5718, D.5718
	movq	-24(%rbp), %rax	# s, tmp534
	movl	%edx, 3184(%rax)	# D.5718, s_2(D)->calculatedBlockCRC
	.loc 1 775 0
	movq	-24(%rbp), %rax	# s, tmp535
	movl	16(%rax), %eax	# s_2(D)->state_out_len, D.5719
	leal	-1(%rax), %edx	#, D.5719
	movq	-24(%rbp), %rax	# s, tmp536
	movl	%edx, 16(%rax)	# D.5719, s_2(D)->state_out_len
	.loc 1 776 0
	movq	-24(%rbp), %rax	# s, tmp537
	movq	(%rax), %rax	# s_2(D)->strm, D.5717
	movq	24(%rax), %rdx	# _265->next_out, D.5728
	addq	$1, %rdx	#, D.5728
	movq	%rdx, 24(%rax)	# D.5728, _265->next_out
	.loc 1 777 0
	movq	-24(%rbp), %rax	# s, tmp538
	movq	(%rax), %rax	# s_2(D)->strm, D.5717
	movl	32(%rax), %edx	# _268->avail_out, D.5718
	subl	$1, %edx	#, D.5718
	movl	%edx, 32(%rax)	# D.5718, _268->avail_out
	.loc 1 778 0
	movq	-24(%rbp), %rax	# s, tmp539
	movq	(%rax), %rax	# s_2(D)->strm, D.5717
	movl	36(%rax), %edx	# _271->total_out_lo32, D.5718
	addl	$1, %edx	#, D.5718
	movl	%edx, 36(%rax)	# D.5718, _271->total_out_lo32
	.loc 1 779 0
	movq	-24(%rbp), %rax	# s, tmp540
	movq	(%rax), %rax	# s_2(D)->strm, D.5717
	movl	36(%rax), %eax	# _274->total_out_lo32, D.5718
	testl	%eax, %eax	# D.5718
	jne	.L180	#,
	.loc 1 779 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# s, tmp541
	movq	(%rax), %rax	# s_2(D)->strm, D.5717
	movl	40(%rax), %edx	# _276->total_out_hi32, D.5718
	addl	$1, %edx	#, D.5718
	movl	%edx, 40(%rax)	# D.5718, _276->total_out_hi32
	.loc 1 780 0 is_stmt 1 discriminator 1
	jmp	.L181	#
.L180:
	.loc 1 780 0 is_stmt 0
	jmp	.L181	#
.L209:
	.loc 1 783 0 is_stmt 1 discriminator 1
	movl	$0, %eax	#, D.5715
	jmp	.L177	#
.L182:
	.loc 1 786 0
	movq	-24(%rbp), %rax	# s, tmp544
	movl	1092(%rax), %edx	# s_2(D)->nblock_used, D.5719
	movq	-24(%rbp), %rax	# s, tmp545
	movl	64080(%rax), %eax	# s_2(D)->save_nblock, D.5719
	addl	$1, %eax	#, D.5719
	cmpl	%eax, %edx	# D.5719, D.5719
	jle	.L183	#,
	.loc 1 787 0
	movl	$1, %eax	#, D.5715
	jmp	.L177	#
.L183:
	.loc 1 789 0
	movq	-24(%rbp), %rax	# s, tmp546
	movl	$1, 16(%rax)	#, s_2(D)->state_out_len
	.loc 1 790 0
	movq	-24(%rbp), %rax	# s, tmp547
	movl	64(%rax), %eax	# s_2(D)->k0, D.5719
	movl	%eax, %edx	# D.5719, D.5716
	movq	-24(%rbp), %rax	# s, tmp548
	movb	%dl, 12(%rax)	# D.5716, s_2(D)->state_out_ch
	.loc 1 791 0
	movq	-24(%rbp), %rax	# s, tmp549
	leaq	1096(%rax), %rdx	#, D.5720
	movq	-24(%rbp), %rax	# s, tmp550
	movl	60(%rax), %eax	# s_2(D)->tPos, D.5718
	movq	%rdx, %rsi	# D.5720,
	movl	%eax, %edi	# D.5719,
	call	BZ2_indexIntoF	#
	movb	%al, -1(%rbp)	# D.5719, k1
	movq	-24(%rbp), %rax	# s, tmp551
	movq	3160(%rax), %rdx	# s_2(D)->ll16, D.5721
	movq	-24(%rbp), %rax	# s, tmp552
	movl	60(%rax), %eax	# s_2(D)->tPos, D.5718
	movl	%eax, %eax	# D.5718, D.5722
	addq	%rax, %rax	# D.5722
	addq	%rdx, %rax	# D.5721, D.5721
	movzwl	(%rax), %eax	# *_27, D.5723
	movzwl	%ax, %edx	# D.5723, D.5718
	movq	-24(%rbp), %rax	# s, tmp553
	movq	3168(%rax), %rcx	# s_2(D)->ll4, D.5724
	movq	-24(%rbp), %rax	# s, tmp554
	movl	60(%rax), %eax	# s_2(D)->tPos, D.5718
	shrl	%eax	# D.5718
	movl	%eax, %eax	# D.5718, D.5725
	addq	%rcx, %rax	# D.5724, D.5724
	movzbl	(%rax), %eax	# *_34, D.5716
	movzbl	%al, %esi	# D.5716, D.5718
	movq	-24(%rbp), %rax	# s, tmp555
	movl	60(%rax), %eax	# s_2(D)->tPos, D.5718
	sall	$2, %eax	#, D.5718
	andl	$4, %eax	#, D.5719
	movl	%eax, %ecx	# D.5719, tmp765
	shrl	%cl, %esi	# tmp765, D.5718
	movl	%esi, %eax	# D.5718, D.5718
	andl	$15, %eax	#, D.5718
	sall	$16, %eax	#, D.5718
	orl	%eax, %edx	# D.5718, D.5718
	movq	-24(%rbp), %rax	# s, tmp556
	movl	%edx, 60(%rax)	# D.5718, s_2(D)->tPos
	movq	-24(%rbp), %rax	# s, tmp557
	movl	24(%rax), %eax	# s_2(D)->rNToGo, D.5719
	testl	%eax, %eax	# D.5719
	jne	.L184	#,
	.loc 1 791 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# s, tmp558
	movl	28(%rax), %eax	# s_2(D)->rTPos, D.5719
	cltq
	movl	BZ2_rNums(,%rax,4), %edx	# BZ2_rNums, D.5719
	movq	-24(%rbp), %rax	# s, tmp560
	movl	%edx, 24(%rax)	# D.5719, s_2(D)->rNToGo
	movq	-24(%rbp), %rax	# s, tmp561
	movl	28(%rax), %eax	# s_2(D)->rTPos, D.5719
	leal	1(%rax), %edx	#, D.5719
	movq	-24(%rbp), %rax	# s, tmp562
	movl	%edx, 28(%rax)	# D.5719, s_2(D)->rTPos
	movq	-24(%rbp), %rax	# s, tmp563
	movl	28(%rax), %eax	# s_2(D)->rTPos, D.5719
	cmpl	$512, %eax	#, D.5719
	jne	.L184	#,
	movq	-24(%rbp), %rax	# s, tmp564
	movl	$0, 28(%rax)	#, s_2(D)->rTPos
.L184:
	.loc 1 791 0 discriminator 2
	movq	-24(%rbp), %rax	# s, tmp565
	movl	24(%rax), %eax	# s_2(D)->rNToGo, D.5719
	leal	-1(%rax), %edx	#, D.5719
	movq	-24(%rbp), %rax	# s, tmp566
	movl	%edx, 24(%rax)	# D.5719, s_2(D)->rNToGo
	.loc 1 792 0 is_stmt 1 discriminator 2
	movq	-24(%rbp), %rax	# s, tmp567
	movl	24(%rax), %eax	# s_2(D)->rNToGo, D.5719
	cmpl	$1, %eax	#, D.5719
	sete	%al	#, D.5726
	movl	%eax, %edx	# D.5726, D.5727
	movzbl	-1(%rbp), %eax	# k1, k1.9
	xorl	%edx, %eax	# D.5727, D.5727
	movb	%al, -1(%rbp)	# D.5727, k1
	movq	-24(%rbp), %rax	# s, tmp568
	movl	1092(%rax), %eax	# s_2(D)->nblock_used, D.5719
	leal	1(%rax), %edx	#, D.5719
	movq	-24(%rbp), %rax	# s, tmp569
	movl	%edx, 1092(%rax)	# D.5719, s_2(D)->nblock_used
	.loc 1 793 0 discriminator 2
	movq	-24(%rbp), %rax	# s, tmp570
	movl	1092(%rax), %edx	# s_2(D)->nblock_used, D.5719
	movq	-24(%rbp), %rax	# s, tmp571
	movl	64080(%rax), %eax	# s_2(D)->save_nblock, D.5719
	addl	$1, %eax	#, D.5719
	cmpl	%eax, %edx	# D.5719, D.5719
	jne	.L185	#,
	.loc 1 793 0 is_stmt 0 discriminator 1
	jmp	.L186	#
.L185:
	.loc 1 794 0 is_stmt 1
	movzbl	-1(%rbp), %edx	# k1, D.5719
	movq	-24(%rbp), %rax	# s, tmp572
	movl	64(%rax), %eax	# s_2(D)->k0, D.5719
	cmpl	%eax, %edx	# D.5719, D.5719
	je	.L187	#,
	.loc 1 794 0 is_stmt 0 discriminator 1
	movzbl	-1(%rbp), %edx	# k1, D.5719
	movq	-24(%rbp), %rax	# s, tmp573
	movl	%edx, 64(%rax)	# D.5719, s_2(D)->k0
	jmp	.L186	#
.L187:
	.loc 1 796 0 is_stmt 1
	movq	-24(%rbp), %rax	# s, tmp574
	movl	$2, 16(%rax)	#, s_2(D)->state_out_len
	.loc 1 797 0
	movq	-24(%rbp), %rax	# s, tmp575
	leaq	1096(%rax), %rdx	#, D.5720
	movq	-24(%rbp), %rax	# s, tmp576
	movl	60(%rax), %eax	# s_2(D)->tPos, D.5718
	movq	%rdx, %rsi	# D.5720,
	movl	%eax, %edi	# D.5719,
	call	BZ2_indexIntoF	#
	movb	%al, -1(%rbp)	# D.5719, k1
	movq	-24(%rbp), %rax	# s, tmp577
	movq	3160(%rax), %rdx	# s_2(D)->ll16, D.5721
	movq	-24(%rbp), %rax	# s, tmp578
	movl	60(%rax), %eax	# s_2(D)->tPos, D.5718
	movl	%eax, %eax	# D.5718, D.5722
	addq	%rax, %rax	# D.5722
	addq	%rdx, %rax	# D.5721, D.5721
	movzwl	(%rax), %eax	# *_76, D.5723
	movzwl	%ax, %edx	# D.5723, D.5718
	movq	-24(%rbp), %rax	# s, tmp579
	movq	3168(%rax), %rcx	# s_2(D)->ll4, D.5724
	movq	-24(%rbp), %rax	# s, tmp580
	movl	60(%rax), %eax	# s_2(D)->tPos, D.5718
	shrl	%eax	# D.5718
	movl	%eax, %eax	# D.5718, D.5725
	addq	%rcx, %rax	# D.5724, D.5724
	movzbl	(%rax), %eax	# *_83, D.5716
	movzbl	%al, %esi	# D.5716, D.5718
	movq	-24(%rbp), %rax	# s, tmp581
	movl	60(%rax), %eax	# s_2(D)->tPos, D.5718
	sall	$2, %eax	#, D.5718
	andl	$4, %eax	#, D.5719
	movl	%eax, %ecx	# D.5719, tmp767
	shrl	%cl, %esi	# tmp767, D.5718
	movl	%esi, %eax	# D.5718, D.5718
	andl	$15, %eax	#, D.5718
	sall	$16, %eax	#, D.5718
	orl	%eax, %edx	# D.5718, D.5718
	movq	-24(%rbp), %rax	# s, tmp582
	movl	%edx, 60(%rax)	# D.5718, s_2(D)->tPos
	movq	-24(%rbp), %rax	# s, tmp583
	movl	24(%rax), %eax	# s_2(D)->rNToGo, D.5719
	testl	%eax, %eax	# D.5719
	jne	.L188	#,
	.loc 1 797 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# s, tmp584
	movl	28(%rax), %eax	# s_2(D)->rTPos, D.5719
	cltq
	movl	BZ2_rNums(,%rax,4), %edx	# BZ2_rNums, D.5719
	movq	-24(%rbp), %rax	# s, tmp586
	movl	%edx, 24(%rax)	# D.5719, s_2(D)->rNToGo
	movq	-24(%rbp), %rax	# s, tmp587
	movl	28(%rax), %eax	# s_2(D)->rTPos, D.5719
	leal	1(%rax), %edx	#, D.5719
	movq	-24(%rbp), %rax	# s, tmp588
	movl	%edx, 28(%rax)	# D.5719, s_2(D)->rTPos
	movq	-24(%rbp), %rax	# s, tmp589
	movl	28(%rax), %eax	# s_2(D)->rTPos, D.5719
	cmpl	$512, %eax	#, D.5719
	jne	.L188	#,
	movq	-24(%rbp), %rax	# s, tmp590
	movl	$0, 28(%rax)	#, s_2(D)->rTPos
.L188:
	.loc 1 797 0 discriminator 2
	movq	-24(%rbp), %rax	# s, tmp591
	movl	24(%rax), %eax	# s_2(D)->rNToGo, D.5719
	leal	-1(%rax), %edx	#, D.5719
	movq	-24(%rbp), %rax	# s, tmp592
	movl	%edx, 24(%rax)	# D.5719, s_2(D)->rNToGo
	.loc 1 798 0 is_stmt 1 discriminator 2
	movq	-24(%rbp), %rax	# s, tmp593
	movl	24(%rax), %eax	# s_2(D)->rNToGo, D.5719
	cmpl	$1, %eax	#, D.5719
	sete	%al	#, D.5726
	movl	%eax, %edx	# D.5726, D.5727
	movzbl	-1(%rbp), %eax	# k1, k1.10
	xorl	%edx, %eax	# D.5727, D.5727
	movb	%al, -1(%rbp)	# D.5727, k1
	movq	-24(%rbp), %rax	# s, tmp594
	movl	1092(%rax), %eax	# s_2(D)->nblock_used, D.5719
	leal	1(%rax), %edx	#, D.5719
	movq	-24(%rbp), %rax	# s, tmp595
	movl	%edx, 1092(%rax)	# D.5719, s_2(D)->nblock_used
	.loc 1 799 0 discriminator 2
	movq	-24(%rbp), %rax	# s, tmp596
	movl	1092(%rax), %edx	# s_2(D)->nblock_used, D.5719
	movq	-24(%rbp), %rax	# s, tmp597
	movl	64080(%rax), %eax	# s_2(D)->save_nblock, D.5719
	addl	$1, %eax	#, D.5719
	cmpl	%eax, %edx	# D.5719, D.5719
	jne	.L189	#,
	.loc 1 799 0 is_stmt 0 discriminator 1
	jmp	.L186	#
.L189:
	.loc 1 800 0 is_stmt 1
	movzbl	-1(%rbp), %edx	# k1, D.5719
	movq	-24(%rbp), %rax	# s, tmp598
	movl	64(%rax), %eax	# s_2(D)->k0, D.5719
	cmpl	%eax, %edx	# D.5719, D.5719
	je	.L190	#,
	.loc 1 800 0 is_stmt 0 discriminator 1
	movzbl	-1(%rbp), %edx	# k1, D.5719
	movq	-24(%rbp), %rax	# s, tmp599
	movl	%edx, 64(%rax)	# D.5719, s_2(D)->k0
	jmp	.L186	#
.L190:
	.loc 1 802 0 is_stmt 1
	movq	-24(%rbp), %rax	# s, tmp600
	movl	$3, 16(%rax)	#, s_2(D)->state_out_len
	.loc 1 803 0
	movq	-24(%rbp), %rax	# s, tmp601
	leaq	1096(%rax), %rdx	#, D.5720
	movq	-24(%rbp), %rax	# s, tmp602
	movl	60(%rax), %eax	# s_2(D)->tPos, D.5718
	movq	%rdx, %rsi	# D.5720,
	movl	%eax, %edi	# D.5719,
	call	BZ2_indexIntoF	#
	movb	%al, -1(%rbp)	# D.5719, k1
	movq	-24(%rbp), %rax	# s, tmp603
	movq	3160(%rax), %rdx	# s_2(D)->ll16, D.5721
	movq	-24(%rbp), %rax	# s, tmp604
	movl	60(%rax), %eax	# s_2(D)->tPos, D.5718
	movl	%eax, %eax	# D.5718, D.5722
	addq	%rax, %rax	# D.5722
	addq	%rdx, %rax	# D.5721, D.5721
	movzwl	(%rax), %eax	# *_125, D.5723
	movzwl	%ax, %edx	# D.5723, D.5718
	movq	-24(%rbp), %rax	# s, tmp605
	movq	3168(%rax), %rcx	# s_2(D)->ll4, D.5724
	movq	-24(%rbp), %rax	# s, tmp606
	movl	60(%rax), %eax	# s_2(D)->tPos, D.5718
	shrl	%eax	# D.5718
	movl	%eax, %eax	# D.5718, D.5725
	addq	%rcx, %rax	# D.5724, D.5724
	movzbl	(%rax), %eax	# *_132, D.5716
	movzbl	%al, %esi	# D.5716, D.5718
	movq	-24(%rbp), %rax	# s, tmp607
	movl	60(%rax), %eax	# s_2(D)->tPos, D.5718
	sall	$2, %eax	#, D.5718
	andl	$4, %eax	#, D.5719
	movl	%eax, %ecx	# D.5719, tmp769
	shrl	%cl, %esi	# tmp769, D.5718
	movl	%esi, %eax	# D.5718, D.5718
	andl	$15, %eax	#, D.5718
	sall	$16, %eax	#, D.5718
	orl	%eax, %edx	# D.5718, D.5718
	movq	-24(%rbp), %rax	# s, tmp608
	movl	%edx, 60(%rax)	# D.5718, s_2(D)->tPos
	movq	-24(%rbp), %rax	# s, tmp609
	movl	24(%rax), %eax	# s_2(D)->rNToGo, D.5719
	testl	%eax, %eax	# D.5719
	jne	.L191	#,
	.loc 1 803 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# s, tmp610
	movl	28(%rax), %eax	# s_2(D)->rTPos, D.5719
	cltq
	movl	BZ2_rNums(,%rax,4), %edx	# BZ2_rNums, D.5719
	movq	-24(%rbp), %rax	# s, tmp612
	movl	%edx, 24(%rax)	# D.5719, s_2(D)->rNToGo
	movq	-24(%rbp), %rax	# s, tmp613
	movl	28(%rax), %eax	# s_2(D)->rTPos, D.5719
	leal	1(%rax), %edx	#, D.5719
	movq	-24(%rbp), %rax	# s, tmp614
	movl	%edx, 28(%rax)	# D.5719, s_2(D)->rTPos
	movq	-24(%rbp), %rax	# s, tmp615
	movl	28(%rax), %eax	# s_2(D)->rTPos, D.5719
	cmpl	$512, %eax	#, D.5719
	jne	.L191	#,
	movq	-24(%rbp), %rax	# s, tmp616
	movl	$0, 28(%rax)	#, s_2(D)->rTPos
.L191:
	.loc 1 803 0 discriminator 2
	movq	-24(%rbp), %rax	# s, tmp617
	movl	24(%rax), %eax	# s_2(D)->rNToGo, D.5719
	leal	-1(%rax), %edx	#, D.5719
	movq	-24(%rbp), %rax	# s, tmp618
	movl	%edx, 24(%rax)	# D.5719, s_2(D)->rNToGo
	.loc 1 804 0 is_stmt 1 discriminator 2
	movq	-24(%rbp), %rax	# s, tmp619
	movl	24(%rax), %eax	# s_2(D)->rNToGo, D.5719
	cmpl	$1, %eax	#, D.5719
	sete	%al	#, D.5726
	movl	%eax, %edx	# D.5726, D.5727
	movzbl	-1(%rbp), %eax	# k1, k1.11
	xorl	%edx, %eax	# D.5727, D.5727
	movb	%al, -1(%rbp)	# D.5727, k1
	movq	-24(%rbp), %rax	# s, tmp620
	movl	1092(%rax), %eax	# s_2(D)->nblock_used, D.5719
	leal	1(%rax), %edx	#, D.5719
	movq	-24(%rbp), %rax	# s, tmp621
	movl	%edx, 1092(%rax)	# D.5719, s_2(D)->nblock_used
	.loc 1 805 0 discriminator 2
	movq	-24(%rbp), %rax	# s, tmp622
	movl	1092(%rax), %edx	# s_2(D)->nblock_used, D.5719
	movq	-24(%rbp), %rax	# s, tmp623
	movl	64080(%rax), %eax	# s_2(D)->save_nblock, D.5719
	addl	$1, %eax	#, D.5719
	cmpl	%eax, %edx	# D.5719, D.5719
	jne	.L192	#,
	.loc 1 805 0 is_stmt 0 discriminator 1
	jmp	.L186	#
.L192:
	.loc 1 806 0 is_stmt 1
	movzbl	-1(%rbp), %edx	# k1, D.5719
	movq	-24(%rbp), %rax	# s, tmp624
	movl	64(%rax), %eax	# s_2(D)->k0, D.5719
	cmpl	%eax, %edx	# D.5719, D.5719
	je	.L193	#,
	.loc 1 806 0 is_stmt 0 discriminator 1
	movzbl	-1(%rbp), %edx	# k1, D.5719
	movq	-24(%rbp), %rax	# s, tmp625
	movl	%edx, 64(%rax)	# D.5719, s_2(D)->k0
	jmp	.L186	#
.L193:
	.loc 1 808 0 is_stmt 1
	movq	-24(%rbp), %rax	# s, tmp626
	leaq	1096(%rax), %rdx	#, D.5720
	movq	-24(%rbp), %rax	# s, tmp627
	movl	60(%rax), %eax	# s_2(D)->tPos, D.5718
	movq	%rdx, %rsi	# D.5720,
	movl	%eax, %edi	# D.5719,
	call	BZ2_indexIntoF	#
	movb	%al, -1(%rbp)	# D.5719, k1
	movq	-24(%rbp), %rax	# s, tmp628
	movq	3160(%rax), %rdx	# s_2(D)->ll16, D.5721
	movq	-24(%rbp), %rax	# s, tmp629
	movl	60(%rax), %eax	# s_2(D)->tPos, D.5718
	movl	%eax, %eax	# D.5718, D.5722
	addq	%rax, %rax	# D.5722
	addq	%rdx, %rax	# D.5721, D.5721
	movzwl	(%rax), %eax	# *_174, D.5723
	movzwl	%ax, %edx	# D.5723, D.5718
	movq	-24(%rbp), %rax	# s, tmp630
	movq	3168(%rax), %rcx	# s_2(D)->ll4, D.5724
	movq	-24(%rbp), %rax	# s, tmp631
	movl	60(%rax), %eax	# s_2(D)->tPos, D.5718
	shrl	%eax	# D.5718
	movl	%eax, %eax	# D.5718, D.5725
	addq	%rcx, %rax	# D.5724, D.5724
	movzbl	(%rax), %eax	# *_181, D.5716
	movzbl	%al, %esi	# D.5716, D.5718
	movq	-24(%rbp), %rax	# s, tmp632
	movl	60(%rax), %eax	# s_2(D)->tPos, D.5718
	sall	$2, %eax	#, D.5718
	andl	$4, %eax	#, D.5719
	movl	%eax, %ecx	# D.5719, tmp771
	shrl	%cl, %esi	# tmp771, D.5718
	movl	%esi, %eax	# D.5718, D.5718
	andl	$15, %eax	#, D.5718
	sall	$16, %eax	#, D.5718
	orl	%eax, %edx	# D.5718, D.5718
	movq	-24(%rbp), %rax	# s, tmp633
	movl	%edx, 60(%rax)	# D.5718, s_2(D)->tPos
	movq	-24(%rbp), %rax	# s, tmp634
	movl	24(%rax), %eax	# s_2(D)->rNToGo, D.5719
	testl	%eax, %eax	# D.5719
	jne	.L194	#,
	.loc 1 808 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# s, tmp635
	movl	28(%rax), %eax	# s_2(D)->rTPos, D.5719
	cltq
	movl	BZ2_rNums(,%rax,4), %edx	# BZ2_rNums, D.5719
	movq	-24(%rbp), %rax	# s, tmp637
	movl	%edx, 24(%rax)	# D.5719, s_2(D)->rNToGo
	movq	-24(%rbp), %rax	# s, tmp638
	movl	28(%rax), %eax	# s_2(D)->rTPos, D.5719
	leal	1(%rax), %edx	#, D.5719
	movq	-24(%rbp), %rax	# s, tmp639
	movl	%edx, 28(%rax)	# D.5719, s_2(D)->rTPos
	movq	-24(%rbp), %rax	# s, tmp640
	movl	28(%rax), %eax	# s_2(D)->rTPos, D.5719
	cmpl	$512, %eax	#, D.5719
	jne	.L194	#,
	movq	-24(%rbp), %rax	# s, tmp641
	movl	$0, 28(%rax)	#, s_2(D)->rTPos
.L194:
	.loc 1 808 0 discriminator 2
	movq	-24(%rbp), %rax	# s, tmp642
	movl	24(%rax), %eax	# s_2(D)->rNToGo, D.5719
	leal	-1(%rax), %edx	#, D.5719
	movq	-24(%rbp), %rax	# s, tmp643
	movl	%edx, 24(%rax)	# D.5719, s_2(D)->rNToGo
	.loc 1 809 0 is_stmt 1 discriminator 2
	movq	-24(%rbp), %rax	# s, tmp644
	movl	24(%rax), %eax	# s_2(D)->rNToGo, D.5719
	cmpl	$1, %eax	#, D.5719
	sete	%al	#, D.5726
	movl	%eax, %edx	# D.5726, D.5727
	movzbl	-1(%rbp), %eax	# k1, k1.12
	xorl	%edx, %eax	# D.5727, D.5727
	movb	%al, -1(%rbp)	# D.5727, k1
	movq	-24(%rbp), %rax	# s, tmp645
	movl	1092(%rax), %eax	# s_2(D)->nblock_used, D.5719
	leal	1(%rax), %edx	#, D.5719
	movq	-24(%rbp), %rax	# s, tmp646
	movl	%edx, 1092(%rax)	# D.5719, s_2(D)->nblock_used
	.loc 1 810 0 discriminator 2
	movzbl	-1(%rbp), %eax	# k1, D.5719
	leal	4(%rax), %edx	#, D.5719
	movq	-24(%rbp), %rax	# s, tmp647
	movl	%edx, 16(%rax)	# D.5719, s_2(D)->state_out_len
	.loc 1 811 0 discriminator 2
	movq	-24(%rbp), %rax	# s, tmp648
	leaq	1096(%rax), %rdx	#, D.5720
	movq	-24(%rbp), %rax	# s, tmp649
	movl	60(%rax), %eax	# s_2(D)->tPos, D.5718
	movq	%rdx, %rsi	# D.5720,
	movl	%eax, %edi	# D.5719,
	call	BZ2_indexIntoF	#
	movq	-24(%rbp), %rdx	# s, tmp650
	movl	%eax, 64(%rdx)	# D.5719, s_2(D)->k0
	movq	-24(%rbp), %rax	# s, tmp651
	movq	3160(%rax), %rdx	# s_2(D)->ll16, D.5721
	movq	-24(%rbp), %rax	# s, tmp652
	movl	60(%rax), %eax	# s_2(D)->tPos, D.5718
	movl	%eax, %eax	# D.5718, D.5722
	addq	%rax, %rax	# D.5722
	addq	%rdx, %rax	# D.5721, D.5721
	movzwl	(%rax), %eax	# *_218, D.5723
	movzwl	%ax, %edx	# D.5723, D.5718
	movq	-24(%rbp), %rax	# s, tmp653
	movq	3168(%rax), %rcx	# s_2(D)->ll4, D.5724
	movq	-24(%rbp), %rax	# s, tmp654
	movl	60(%rax), %eax	# s_2(D)->tPos, D.5718
	shrl	%eax	# D.5718
	movl	%eax, %eax	# D.5718, D.5725
	addq	%rcx, %rax	# D.5724, D.5724
	movzbl	(%rax), %eax	# *_225, D.5716
	movzbl	%al, %esi	# D.5716, D.5718
	movq	-24(%rbp), %rax	# s, tmp655
	movl	60(%rax), %eax	# s_2(D)->tPos, D.5718
	sall	$2, %eax	#, D.5718
	andl	$4, %eax	#, D.5719
	movl	%eax, %ecx	# D.5719, tmp773
	shrl	%cl, %esi	# tmp773, D.5718
	movl	%esi, %eax	# D.5718, D.5718
	andl	$15, %eax	#, D.5718
	sall	$16, %eax	#, D.5718
	orl	%eax, %edx	# D.5718, D.5718
	movq	-24(%rbp), %rax	# s, tmp656
	movl	%edx, 60(%rax)	# D.5718, s_2(D)->tPos
	movq	-24(%rbp), %rax	# s, tmp657
	movl	24(%rax), %eax	# s_2(D)->rNToGo, D.5719
	testl	%eax, %eax	# D.5719
	jne	.L195	#,
	.loc 1 811 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# s, tmp658
	movl	28(%rax), %eax	# s_2(D)->rTPos, D.5719
	cltq
	movl	BZ2_rNums(,%rax,4), %edx	# BZ2_rNums, D.5719
	movq	-24(%rbp), %rax	# s, tmp660
	movl	%edx, 24(%rax)	# D.5719, s_2(D)->rNToGo
	movq	-24(%rbp), %rax	# s, tmp661
	movl	28(%rax), %eax	# s_2(D)->rTPos, D.5719
	leal	1(%rax), %edx	#, D.5719
	movq	-24(%rbp), %rax	# s, tmp662
	movl	%edx, 28(%rax)	# D.5719, s_2(D)->rTPos
	movq	-24(%rbp), %rax	# s, tmp663
	movl	28(%rax), %eax	# s_2(D)->rTPos, D.5719
	cmpl	$512, %eax	#, D.5719
	jne	.L195	#,
	movq	-24(%rbp), %rax	# s, tmp664
	movl	$0, 28(%rax)	#, s_2(D)->rTPos
.L195:
	.loc 1 811 0 discriminator 2
	movq	-24(%rbp), %rax	# s, tmp665
	movl	24(%rax), %eax	# s_2(D)->rNToGo, D.5719
	leal	-1(%rax), %edx	#, D.5719
	movq	-24(%rbp), %rax	# s, tmp666
	movl	%edx, 24(%rax)	# D.5719, s_2(D)->rNToGo
	.loc 1 812 0 is_stmt 1 discriminator 2
	movq	-24(%rbp), %rax	# s, tmp667
	movl	64(%rax), %edx	# s_2(D)->k0, D.5719
	movq	-24(%rbp), %rax	# s, tmp668
	movl	24(%rax), %eax	# s_2(D)->rNToGo, D.5719
	cmpl	$1, %eax	#, D.5719
	sete	%al	#, D.5726
	movzbl	%al, %eax	# D.5726, D.5719
	xorl	%eax, %edx	# D.5719, D.5719
	movq	-24(%rbp), %rax	# s, tmp669
	movl	%edx, 64(%rax)	# D.5719, s_2(D)->k0
	movq	-24(%rbp), %rax	# s, tmp670
	movl	1092(%rax), %eax	# s_2(D)->nblock_used, D.5719
	leal	1(%rax), %edx	#, D.5719
	movq	-24(%rbp), %rax	# s, tmp671
	movl	%edx, 1092(%rax)	# D.5719, s_2(D)->nblock_used
	.loc 1 813 0 discriminator 2
	jmp	.L181	#
.L186:
	.loc 1 813 0 is_stmt 0
	jmp	.L181	#
.L175:
	.loc 1 820 0 is_stmt 1
	movq	-24(%rbp), %rax	# s, tmp672
	movq	(%rax), %rax	# s_2(D)->strm, D.5717
	movl	32(%rax), %eax	# _279->avail_out, D.5718
	testl	%eax, %eax	# D.5718
	jne	.L196	#,
	.loc 1 820 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.5715
	jmp	.L177	#
.L196:
	.loc 1 821 0 is_stmt 1
	movq	-24(%rbp), %rax	# s, tmp673
	movl	16(%rax), %eax	# s_2(D)->state_out_len, D.5719
	testl	%eax, %eax	# D.5719
	jne	.L197	#,
	.loc 1 821 0 is_stmt 0 discriminator 1
	nop
	.loc 1 832 0 is_stmt 1 discriminator 1
	movq	-24(%rbp), %rax	# s, tmp688
	movl	1092(%rax), %edx	# s_2(D)->nblock_used, D.5719
	movq	-24(%rbp), %rax	# s, tmp689
	movl	64080(%rax), %eax	# s_2(D)->save_nblock, D.5719
	addl	$1, %eax	#, D.5719
	cmpl	%eax, %edx	# D.5719, D.5719
	jne	.L200	#,
	jmp	.L210	#
.L197:
	.loc 1 822 0
	movq	-24(%rbp), %rax	# s, tmp674
	movq	(%rax), %rax	# s_2(D)->strm, D.5717
	movq	24(%rax), %rax	# _457->next_out, D.5728
	movq	-24(%rbp), %rdx	# s, tmp675
	movzbl	12(%rdx), %edx	# s_2(D)->state_out_ch, D.5716
	movb	%dl, (%rax)	# D.5716, MEM[(UChar *)_458]
	.loc 1 823 0
	movq	-24(%rbp), %rax	# s, tmp676
	movl	3184(%rax), %eax	# s_2(D)->calculatedBlockCRC, D.5718
	sall	$8, %eax	#, D.5718
	movl	%eax, %edx	# D.5718, D.5718
	movq	-24(%rbp), %rax	# s, tmp677
	movl	3184(%rax), %eax	# s_2(D)->calculatedBlockCRC, D.5718
	shrl	$24, %eax	#, D.5718
	movl	%eax, %ecx	# D.5718, D.5718
	movq	-24(%rbp), %rax	# s, tmp678
	movzbl	12(%rax), %eax	# s_2(D)->state_out_ch, D.5716
	movzbl	%al, %eax	# D.5716, D.5718
	xorl	%ecx, %eax	# D.5718, D.5718
	movl	%eax, %eax	# D.5718, tmp679
	movl	BZ2_crc32Table(,%rax,4), %eax	# BZ2_crc32Table, D.5718
	xorl	%eax, %edx	# D.5718, D.5718
	movq	-24(%rbp), %rax	# s, tmp680
	movl	%edx, 3184(%rax)	# D.5718, s_2(D)->calculatedBlockCRC
	.loc 1 824 0
	movq	-24(%rbp), %rax	# s, tmp681
	movl	16(%rax), %eax	# s_2(D)->state_out_len, D.5719
	leal	-1(%rax), %edx	#, D.5719
	movq	-24(%rbp), %rax	# s, tmp682
	movl	%edx, 16(%rax)	# D.5719, s_2(D)->state_out_len
	.loc 1 825 0
	movq	-24(%rbp), %rax	# s, tmp683
	movq	(%rax), %rax	# s_2(D)->strm, D.5717
	movq	24(%rax), %rdx	# _471->next_out, D.5728
	addq	$1, %rdx	#, D.5728
	movq	%rdx, 24(%rax)	# D.5728, _471->next_out
	.loc 1 826 0
	movq	-24(%rbp), %rax	# s, tmp684
	movq	(%rax), %rax	# s_2(D)->strm, D.5717
	movl	32(%rax), %edx	# _474->avail_out, D.5718
	subl	$1, %edx	#, D.5718
	movl	%edx, 32(%rax)	# D.5718, _474->avail_out
	.loc 1 827 0
	movq	-24(%rbp), %rax	# s, tmp685
	movq	(%rax), %rax	# s_2(D)->strm, D.5717
	movl	36(%rax), %edx	# _477->total_out_lo32, D.5718
	addl	$1, %edx	#, D.5718
	movl	%edx, 36(%rax)	# D.5718, _477->total_out_lo32
	.loc 1 828 0
	movq	-24(%rbp), %rax	# s, tmp686
	movq	(%rax), %rax	# s_2(D)->strm, D.5717
	movl	36(%rax), %eax	# _480->total_out_lo32, D.5718
	testl	%eax, %eax	# D.5718
	jne	.L199	#,
	.loc 1 828 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# s, tmp687
	movq	(%rax), %rax	# s_2(D)->strm, D.5717
	movl	40(%rax), %edx	# _482->total_out_hi32, D.5718
	addl	$1, %edx	#, D.5718
	movl	%edx, 40(%rax)	# D.5718, _482->total_out_hi32
	.loc 1 829 0 is_stmt 1 discriminator 1
	jmp	.L175	#
.L199:
	.loc 1 829 0 is_stmt 0
	jmp	.L175	#
.L210:
	.loc 1 832 0 is_stmt 1 discriminator 1
	movl	$0, %eax	#, D.5715
	jmp	.L177	#
.L200:
	.loc 1 835 0
	movq	-24(%rbp), %rax	# s, tmp690
	movl	1092(%rax), %edx	# s_2(D)->nblock_used, D.5719
	movq	-24(%rbp), %rax	# s, tmp691
	movl	64080(%rax), %eax	# s_2(D)->save_nblock, D.5719
	addl	$1, %eax	#, D.5719
	cmpl	%eax, %edx	# D.5719, D.5719
	jle	.L201	#,
	.loc 1 836 0
	movl	$1, %eax	#, D.5715
	jmp	.L177	#
.L201:
	.loc 1 838 0
	movq	-24(%rbp), %rax	# s, tmp692
	movl	$1, 16(%rax)	#, s_2(D)->state_out_len
	.loc 1 839 0
	movq	-24(%rbp), %rax	# s, tmp693
	movl	64(%rax), %eax	# s_2(D)->k0, D.5719
	movl	%eax, %edx	# D.5719, D.5716
	movq	-24(%rbp), %rax	# s, tmp694
	movb	%dl, 12(%rax)	# D.5716, s_2(D)->state_out_ch
	.loc 1 840 0
	movq	-24(%rbp), %rax	# s, tmp695
	leaq	1096(%rax), %rdx	#, D.5720
	movq	-24(%rbp), %rax	# s, tmp696
	movl	60(%rax), %eax	# s_2(D)->tPos, D.5718
	movq	%rdx, %rsi	# D.5720,
	movl	%eax, %edi	# D.5719,
	call	BZ2_indexIntoF	#
	movb	%al, -1(%rbp)	# D.5719, k1
	movq	-24(%rbp), %rax	# s, tmp697
	movq	3160(%rax), %rdx	# s_2(D)->ll16, D.5721
	movq	-24(%rbp), %rax	# s, tmp698
	movl	60(%rax), %eax	# s_2(D)->tPos, D.5718
	movl	%eax, %eax	# D.5718, D.5722
	addq	%rax, %rax	# D.5722
	addq	%rdx, %rax	# D.5721, D.5721
	movzwl	(%rax), %eax	# *_302, D.5723
	movzwl	%ax, %edx	# D.5723, D.5718
	movq	-24(%rbp), %rax	# s, tmp699
	movq	3168(%rax), %rcx	# s_2(D)->ll4, D.5724
	movq	-24(%rbp), %rax	# s, tmp700
	movl	60(%rax), %eax	# s_2(D)->tPos, D.5718
	shrl	%eax	# D.5718
	movl	%eax, %eax	# D.5718, D.5725
	addq	%rcx, %rax	# D.5724, D.5724
	movzbl	(%rax), %eax	# *_309, D.5716
	movzbl	%al, %esi	# D.5716, D.5718
	movq	-24(%rbp), %rax	# s, tmp701
	movl	60(%rax), %eax	# s_2(D)->tPos, D.5718
	sall	$2, %eax	#, D.5718
	andl	$4, %eax	#, D.5719
	movl	%eax, %ecx	# D.5719, tmp777
	shrl	%cl, %esi	# tmp777, D.5718
	movl	%esi, %eax	# D.5718, D.5718
	andl	$15, %eax	#, D.5718
	sall	$16, %eax	#, D.5718
	orl	%eax, %edx	# D.5718, D.5718
	movq	-24(%rbp), %rax	# s, tmp702
	movl	%edx, 60(%rax)	# D.5718, s_2(D)->tPos
	movq	-24(%rbp), %rax	# s, tmp703
	movl	1092(%rax), %eax	# s_2(D)->nblock_used, D.5719
	leal	1(%rax), %edx	#, D.5719
	movq	-24(%rbp), %rax	# s, tmp704
	movl	%edx, 1092(%rax)	# D.5719, s_2(D)->nblock_used
	.loc 1 841 0
	movq	-24(%rbp), %rax	# s, tmp705
	movl	1092(%rax), %edx	# s_2(D)->nblock_used, D.5719
	movq	-24(%rbp), %rax	# s, tmp706
	movl	64080(%rax), %eax	# s_2(D)->save_nblock, D.5719
	addl	$1, %eax	#, D.5719
	cmpl	%eax, %edx	# D.5719, D.5719
	jne	.L202	#,
	.loc 1 841 0 is_stmt 0 discriminator 1
	jmp	.L203	#
.L202:
	.loc 1 842 0 is_stmt 1
	movzbl	-1(%rbp), %edx	# k1, D.5719
	movq	-24(%rbp), %rax	# s, tmp707
	movl	64(%rax), %eax	# s_2(D)->k0, D.5719
	cmpl	%eax, %edx	# D.5719, D.5719
	je	.L204	#,
	.loc 1 842 0 is_stmt 0 discriminator 1
	movzbl	-1(%rbp), %edx	# k1, D.5719
	movq	-24(%rbp), %rax	# s, tmp708
	movl	%edx, 64(%rax)	# D.5719, s_2(D)->k0
	jmp	.L203	#
.L204:
	.loc 1 844 0 is_stmt 1
	movq	-24(%rbp), %rax	# s, tmp709
	movl	$2, 16(%rax)	#, s_2(D)->state_out_len
	.loc 1 845 0
	movq	-24(%rbp), %rax	# s, tmp710
	leaq	1096(%rax), %rdx	#, D.5720
	movq	-24(%rbp), %rax	# s, tmp711
	movl	60(%rax), %eax	# s_2(D)->tPos, D.5718
	movq	%rdx, %rsi	# D.5720,
	movl	%eax, %edi	# D.5719,
	call	BZ2_indexIntoF	#
	movb	%al, -1(%rbp)	# D.5719, k1
	movq	-24(%rbp), %rax	# s, tmp712
	movq	3160(%rax), %rdx	# s_2(D)->ll16, D.5721
	movq	-24(%rbp), %rax	# s, tmp713
	movl	60(%rax), %eax	# s_2(D)->tPos, D.5718
	movl	%eax, %eax	# D.5718, D.5722
	addq	%rax, %rax	# D.5722
	addq	%rdx, %rax	# D.5721, D.5721
	movzwl	(%rax), %eax	# *_337, D.5723
	movzwl	%ax, %edx	# D.5723, D.5718
	movq	-24(%rbp), %rax	# s, tmp714
	movq	3168(%rax), %rcx	# s_2(D)->ll4, D.5724
	movq	-24(%rbp), %rax	# s, tmp715
	movl	60(%rax), %eax	# s_2(D)->tPos, D.5718
	shrl	%eax	# D.5718
	movl	%eax, %eax	# D.5718, D.5725
	addq	%rcx, %rax	# D.5724, D.5724
	movzbl	(%rax), %eax	# *_344, D.5716
	movzbl	%al, %esi	# D.5716, D.5718
	movq	-24(%rbp), %rax	# s, tmp716
	movl	60(%rax), %eax	# s_2(D)->tPos, D.5718
	sall	$2, %eax	#, D.5718
	andl	$4, %eax	#, D.5719
	movl	%eax, %ecx	# D.5719, tmp779
	shrl	%cl, %esi	# tmp779, D.5718
	movl	%esi, %eax	# D.5718, D.5718
	andl	$15, %eax	#, D.5718
	sall	$16, %eax	#, D.5718
	orl	%eax, %edx	# D.5718, D.5718
	movq	-24(%rbp), %rax	# s, tmp717
	movl	%edx, 60(%rax)	# D.5718, s_2(D)->tPos
	movq	-24(%rbp), %rax	# s, tmp718
	movl	1092(%rax), %eax	# s_2(D)->nblock_used, D.5719
	leal	1(%rax), %edx	#, D.5719
	movq	-24(%rbp), %rax	# s, tmp719
	movl	%edx, 1092(%rax)	# D.5719, s_2(D)->nblock_used
	.loc 1 846 0
	movq	-24(%rbp), %rax	# s, tmp720
	movl	1092(%rax), %edx	# s_2(D)->nblock_used, D.5719
	movq	-24(%rbp), %rax	# s, tmp721
	movl	64080(%rax), %eax	# s_2(D)->save_nblock, D.5719
	addl	$1, %eax	#, D.5719
	cmpl	%eax, %edx	# D.5719, D.5719
	jne	.L205	#,
	.loc 1 846 0 is_stmt 0 discriminator 1
	jmp	.L203	#
.L205:
	.loc 1 847 0 is_stmt 1
	movzbl	-1(%rbp), %edx	# k1, D.5719
	movq	-24(%rbp), %rax	# s, tmp722
	movl	64(%rax), %eax	# s_2(D)->k0, D.5719
	cmpl	%eax, %edx	# D.5719, D.5719
	je	.L206	#,
	.loc 1 847 0 is_stmt 0 discriminator 1
	movzbl	-1(%rbp), %edx	# k1, D.5719
	movq	-24(%rbp), %rax	# s, tmp723
	movl	%edx, 64(%rax)	# D.5719, s_2(D)->k0
	jmp	.L203	#
.L206:
	.loc 1 849 0 is_stmt 1
	movq	-24(%rbp), %rax	# s, tmp724
	movl	$3, 16(%rax)	#, s_2(D)->state_out_len
	.loc 1 850 0
	movq	-24(%rbp), %rax	# s, tmp725
	leaq	1096(%rax), %rdx	#, D.5720
	movq	-24(%rbp), %rax	# s, tmp726
	movl	60(%rax), %eax	# s_2(D)->tPos, D.5718
	movq	%rdx, %rsi	# D.5720,
	movl	%eax, %edi	# D.5719,
	call	BZ2_indexIntoF	#
	movb	%al, -1(%rbp)	# D.5719, k1
	movq	-24(%rbp), %rax	# s, tmp727
	movq	3160(%rax), %rdx	# s_2(D)->ll16, D.5721
	movq	-24(%rbp), %rax	# s, tmp728
	movl	60(%rax), %eax	# s_2(D)->tPos, D.5718
	movl	%eax, %eax	# D.5718, D.5722
	addq	%rax, %rax	# D.5722
	addq	%rdx, %rax	# D.5721, D.5721
	movzwl	(%rax), %eax	# *_372, D.5723
	movzwl	%ax, %edx	# D.5723, D.5718
	movq	-24(%rbp), %rax	# s, tmp729
	movq	3168(%rax), %rcx	# s_2(D)->ll4, D.5724
	movq	-24(%rbp), %rax	# s, tmp730
	movl	60(%rax), %eax	# s_2(D)->tPos, D.5718
	shrl	%eax	# D.5718
	movl	%eax, %eax	# D.5718, D.5725
	addq	%rcx, %rax	# D.5724, D.5724
	movzbl	(%rax), %eax	# *_379, D.5716
	movzbl	%al, %esi	# D.5716, D.5718
	movq	-24(%rbp), %rax	# s, tmp731
	movl	60(%rax), %eax	# s_2(D)->tPos, D.5718
	sall	$2, %eax	#, D.5718
	andl	$4, %eax	#, D.5719
	movl	%eax, %ecx	# D.5719, tmp781
	shrl	%cl, %esi	# tmp781, D.5718
	movl	%esi, %eax	# D.5718, D.5718
	andl	$15, %eax	#, D.5718
	sall	$16, %eax	#, D.5718
	orl	%eax, %edx	# D.5718, D.5718
	movq	-24(%rbp), %rax	# s, tmp732
	movl	%edx, 60(%rax)	# D.5718, s_2(D)->tPos
	movq	-24(%rbp), %rax	# s, tmp733
	movl	1092(%rax), %eax	# s_2(D)->nblock_used, D.5719
	leal	1(%rax), %edx	#, D.5719
	movq	-24(%rbp), %rax	# s, tmp734
	movl	%edx, 1092(%rax)	# D.5719, s_2(D)->nblock_used
	.loc 1 851 0
	movq	-24(%rbp), %rax	# s, tmp735
	movl	1092(%rax), %edx	# s_2(D)->nblock_used, D.5719
	movq	-24(%rbp), %rax	# s, tmp736
	movl	64080(%rax), %eax	# s_2(D)->save_nblock, D.5719
	addl	$1, %eax	#, D.5719
	cmpl	%eax, %edx	# D.5719, D.5719
	jne	.L207	#,
	.loc 1 851 0 is_stmt 0 discriminator 1
	jmp	.L203	#
.L207:
	.loc 1 852 0 is_stmt 1
	movzbl	-1(%rbp), %edx	# k1, D.5719
	movq	-24(%rbp), %rax	# s, tmp737
	movl	64(%rax), %eax	# s_2(D)->k0, D.5719
	cmpl	%eax, %edx	# D.5719, D.5719
	je	.L208	#,
	.loc 1 852 0 is_stmt 0 discriminator 1
	movzbl	-1(%rbp), %edx	# k1, D.5719
	movq	-24(%rbp), %rax	# s, tmp738
	movl	%edx, 64(%rax)	# D.5719, s_2(D)->k0
	jmp	.L203	#
.L208:
	.loc 1 854 0 is_stmt 1
	movq	-24(%rbp), %rax	# s, tmp739
	leaq	1096(%rax), %rdx	#, D.5720
	movq	-24(%rbp), %rax	# s, tmp740
	movl	60(%rax), %eax	# s_2(D)->tPos, D.5718
	movq	%rdx, %rsi	# D.5720,
	movl	%eax, %edi	# D.5719,
	call	BZ2_indexIntoF	#
	movb	%al, -1(%rbp)	# D.5719, k1
	movq	-24(%rbp), %rax	# s, tmp741
	movq	3160(%rax), %rdx	# s_2(D)->ll16, D.5721
	movq	-24(%rbp), %rax	# s, tmp742
	movl	60(%rax), %eax	# s_2(D)->tPos, D.5718
	movl	%eax, %eax	# D.5718, D.5722
	addq	%rax, %rax	# D.5722
	addq	%rdx, %rax	# D.5721, D.5721
	movzwl	(%rax), %eax	# *_407, D.5723
	movzwl	%ax, %edx	# D.5723, D.5718
	movq	-24(%rbp), %rax	# s, tmp743
	movq	3168(%rax), %rcx	# s_2(D)->ll4, D.5724
	movq	-24(%rbp), %rax	# s, tmp744
	movl	60(%rax), %eax	# s_2(D)->tPos, D.5718
	shrl	%eax	# D.5718
	movl	%eax, %eax	# D.5718, D.5725
	addq	%rcx, %rax	# D.5724, D.5724
	movzbl	(%rax), %eax	# *_414, D.5716
	movzbl	%al, %esi	# D.5716, D.5718
	movq	-24(%rbp), %rax	# s, tmp745
	movl	60(%rax), %eax	# s_2(D)->tPos, D.5718
	sall	$2, %eax	#, D.5718
	andl	$4, %eax	#, D.5719
	movl	%eax, %ecx	# D.5719, tmp783
	shrl	%cl, %esi	# tmp783, D.5718
	movl	%esi, %eax	# D.5718, D.5718
	andl	$15, %eax	#, D.5718
	sall	$16, %eax	#, D.5718
	orl	%eax, %edx	# D.5718, D.5718
	movq	-24(%rbp), %rax	# s, tmp746
	movl	%edx, 60(%rax)	# D.5718, s_2(D)->tPos
	movq	-24(%rbp), %rax	# s, tmp747
	movl	1092(%rax), %eax	# s_2(D)->nblock_used, D.5719
	leal	1(%rax), %edx	#, D.5719
	movq	-24(%rbp), %rax	# s, tmp748
	movl	%edx, 1092(%rax)	# D.5719, s_2(D)->nblock_used
	.loc 1 855 0
	movzbl	-1(%rbp), %eax	# k1, D.5719
	leal	4(%rax), %edx	#, D.5719
	movq	-24(%rbp), %rax	# s, tmp749
	movl	%edx, 16(%rax)	# D.5719, s_2(D)->state_out_len
	.loc 1 856 0
	movq	-24(%rbp), %rax	# s, tmp750
	leaq	1096(%rax), %rdx	#, D.5720
	movq	-24(%rbp), %rax	# s, tmp751
	movl	60(%rax), %eax	# s_2(D)->tPos, D.5718
	movq	%rdx, %rsi	# D.5720,
	movl	%eax, %edi	# D.5719,
	call	BZ2_indexIntoF	#
	movq	-24(%rbp), %rdx	# s, tmp752
	movl	%eax, 64(%rdx)	# D.5719, s_2(D)->k0
	movq	-24(%rbp), %rax	# s, tmp753
	movq	3160(%rax), %rdx	# s_2(D)->ll16, D.5721
	movq	-24(%rbp), %rax	# s, tmp754
	movl	60(%rax), %eax	# s_2(D)->tPos, D.5718
	movl	%eax, %eax	# D.5718, D.5722
	addq	%rax, %rax	# D.5722
	addq	%rdx, %rax	# D.5721, D.5721
	movzwl	(%rax), %eax	# *_437, D.5723
	movzwl	%ax, %edx	# D.5723, D.5718
	movq	-24(%rbp), %rax	# s, tmp755
	movq	3168(%rax), %rcx	# s_2(D)->ll4, D.5724
	movq	-24(%rbp), %rax	# s, tmp756
	movl	60(%rax), %eax	# s_2(D)->tPos, D.5718
	shrl	%eax	# D.5718
	movl	%eax, %eax	# D.5718, D.5725
	addq	%rcx, %rax	# D.5724, D.5724
	movzbl	(%rax), %eax	# *_444, D.5716
	movzbl	%al, %esi	# D.5716, D.5718
	movq	-24(%rbp), %rax	# s, tmp757
	movl	60(%rax), %eax	# s_2(D)->tPos, D.5718
	sall	$2, %eax	#, D.5718
	andl	$4, %eax	#, D.5719
	movl	%eax, %ecx	# D.5719, tmp785
	shrl	%cl, %esi	# tmp785, D.5718
	movl	%esi, %eax	# D.5718, D.5718
	andl	$15, %eax	#, D.5718
	sall	$16, %eax	#, D.5718
	orl	%eax, %edx	# D.5718, D.5718
	movq	-24(%rbp), %rax	# s, tmp758
	movl	%edx, 60(%rax)	# D.5718, s_2(D)->tPos
	movq	-24(%rbp), %rax	# s, tmp759
	movl	1092(%rax), %eax	# s_2(D)->nblock_used, D.5719
	leal	1(%rax), %edx	#, D.5719
	movq	-24(%rbp), %rax	# s, tmp760
	movl	%edx, 1092(%rax)	# D.5719, s_2(D)->nblock_used
	.loc 1 857 0
	jmp	.L175	#
.L203:
	jmp	.L175	#
.L177:
	.loc 1 860 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	unRLE_obuf_to_output_SMALL, .-unRLE_obuf_to_output_SMALL
	.section	.rodata
.LC2:
	.string	" {0x%08x, 0x%08x}"
	.align 8
.LC3:
	.string	"\n    combined CRCs: stored = 0x%08x, computed = 0x%08x"
	.text
	.globl	BZ2_bzDecompress
	.type	BZ2_bzDecompress, @function
BZ2_bzDecompress:
.LFB21:
	.loc 1 865 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# strm, strm
	.loc 1 868 0
	cmpq	$0, -24(%rbp)	#, strm
	jne	.L212	#,
	.loc 1 868 0 is_stmt 0 discriminator 1
	movl	$-2, %eax	#, D.5729
	jmp	.L213	#
.L212:
	.loc 1 869 0 is_stmt 1
	movq	-24(%rbp), %rax	# strm, tmp92
	movq	48(%rax), %rax	# strm_3(D)->state, tmp93
	movq	%rax, -8(%rbp)	# tmp93, s
	.loc 1 870 0
	cmpq	$0, -8(%rbp)	#, s
	jne	.L214	#,
	.loc 1 870 0 is_stmt 0 discriminator 1
	movl	$-2, %eax	#, D.5729
	jmp	.L213	#
.L214:
	.loc 1 871 0 is_stmt 1
	movq	-8(%rbp), %rax	# s, tmp94
	movq	(%rax), %rax	# s_5->strm, D.5730
	cmpq	-24(%rbp), %rax	# strm, D.5730
	je	.L215	#,
	.loc 1 871 0 is_stmt 0 discriminator 1
	movl	$-2, %eax	#, D.5729
	jmp	.L213	#
.L215:
	.loc 1 874 0 is_stmt 1
	movq	-8(%rbp), %rax	# s, tmp95
	movl	8(%rax), %eax	# s_5->state, D.5729
	cmpl	$1, %eax	#, D.5729
	jne	.L216	#,
	.loc 1 874 0 is_stmt 0 discriminator 1
	movl	$-1, %eax	#, D.5729
	jmp	.L213	#
.L216:
	.loc 1 875 0 is_stmt 1
	movq	-8(%rbp), %rax	# s, tmp96
	movl	8(%rax), %eax	# s_5->state, D.5729
	cmpl	$2, %eax	#, D.5729
	jne	.L217	#,
	.loc 1 876 0
	movq	-8(%rbp), %rax	# s, tmp97
	movzbl	44(%rax), %eax	# s_5->smallDecompress, D.5731
	testb	%al, %al	# D.5731
	je	.L218	#,
	.loc 1 877 0
	movq	-8(%rbp), %rax	# s, tmp98
	movq	%rax, %rdi	# tmp98,
	call	unRLE_obuf_to_output_SMALL	#
	movb	%al, -13(%rbp)	# tmp99, corrupt
	jmp	.L219	#
.L218:
	.loc 1 878 0
	movq	-8(%rbp), %rax	# s, tmp100
	movq	%rax, %rdi	# tmp100,
	call	unRLE_obuf_to_output_FAST	#
	movb	%al, -13(%rbp)	# tmp101, corrupt
.L219:
	.loc 1 879 0
	cmpb	$0, -13(%rbp)	#, corrupt
	je	.L220	#,
	.loc 1 879 0 is_stmt 0 discriminator 1
	movl	$-4, %eax	#, D.5729
	jmp	.L213	#
.L220:
	.loc 1 880 0 is_stmt 1
	movq	-8(%rbp), %rax	# s, tmp102
	movl	1092(%rax), %edx	# s_5->nblock_used, D.5729
	movq	-8(%rbp), %rax	# s, tmp103
	movl	64080(%rax), %eax	# s_5->save_nblock, D.5729
	addl	$1, %eax	#, D.5729
	cmpl	%eax, %edx	# D.5729, D.5729
	jne	.L221	#,
	.loc 1 880 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# s, tmp104
	movl	16(%rax), %eax	# s_5->state_out_len, D.5729
	testl	%eax, %eax	# D.5729
	jne	.L221	#,
	.loc 1 881 0 is_stmt 1
	movq	-8(%rbp), %rax	# s, tmp105
	movl	3184(%rax), %eax	# s_5->calculatedBlockCRC, D.5732
	notl	%eax	# D.5732
	movl	%eax, %edx	# D.5732, D.5732
	movq	-8(%rbp), %rax	# s, tmp106
	movl	%edx, 3184(%rax)	# D.5732, s_5->calculatedBlockCRC
	.loc 1 882 0
	movq	-8(%rbp), %rax	# s, tmp107
	movl	52(%rax), %eax	# s_5->verbosity, D.5729
	cmpl	$2, %eax	#, D.5729
	jle	.L222	#,
	.loc 1 883 0
	movq	-8(%rbp), %rax	# s, tmp108
	movl	3184(%rax), %ecx	# s_5->calculatedBlockCRC, D.5732
	movq	-8(%rbp), %rax	# s, tmp109
	movl	3176(%rax), %edx	# s_5->storedBlockCRC, D.5732
	movq	stderr(%rip), %rax	# stderr, stderr.13
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# stderr.13,
	movl	$0, %eax	#,
	call	fprintf	#
.L222:
	.loc 1 885 0
	movq	-8(%rbp), %rax	# s, tmp110
	movl	52(%rax), %eax	# s_5->verbosity, D.5729
	cmpl	$1, %eax	#, D.5729
	jle	.L223	#,
	.loc 1 885 0 is_stmt 0 discriminator 1
	movq	stderr(%rip), %rax	# stderr, stderr.14
	movq	%rax, %rsi	# stderr.14,
	movl	$93, %edi	#,
	call	fputc	#
.L223:
	.loc 1 886 0 is_stmt 1
	movq	-8(%rbp), %rax	# s, tmp111
	movl	3184(%rax), %edx	# s_5->calculatedBlockCRC, D.5732
	movq	-8(%rbp), %rax	# s, tmp112
	movl	3176(%rax), %eax	# s_5->storedBlockCRC, D.5732
	cmpl	%eax, %edx	# D.5732, D.5732
	je	.L224	#,
	.loc 1 887 0
	movl	$-4, %eax	#, D.5729
	jmp	.L213	#
.L224:
	.loc 1 889 0
	movq	-8(%rbp), %rax	# s, tmp113
	movl	3188(%rax), %eax	# s_5->calculatedCombinedCRC, D.5732
	rorl	$31, %eax	#, D.5732
	movl	%eax, %edx	# D.5732, D.5732
	movq	-8(%rbp), %rax	# s, tmp114
	movl	%edx, 3188(%rax)	# D.5732, s_5->calculatedCombinedCRC
	.loc 1 891 0
	movq	-8(%rbp), %rax	# s, tmp115
	movl	3188(%rax), %edx	# s_5->calculatedCombinedCRC, D.5732
	movq	-8(%rbp), %rax	# s, tmp116
	movl	3184(%rax), %eax	# s_5->calculatedBlockCRC, D.5732
	xorl	%eax, %edx	# D.5732, D.5732
	movq	-8(%rbp), %rax	# s, tmp117
	movl	%edx, 3188(%rax)	# D.5732, s_5->calculatedCombinedCRC
	.loc 1 892 0
	movq	-8(%rbp), %rax	# s, tmp118
	movl	$14, 8(%rax)	#, s_5->state
	jmp	.L217	#
.L221:
	.loc 1 894 0
	movl	$0, %eax	#, D.5729
	jmp	.L213	#
.L217:
	.loc 1 897 0
	movq	-8(%rbp), %rax	# s, tmp119
	movl	8(%rax), %eax	# s_5->state, D.5729
	cmpl	$9, %eax	#, D.5729
	jle	.L225	#,
.LBB7:
	.loc 1 898 0
	movq	-8(%rbp), %rax	# s, tmp120
	movq	%rax, %rdi	# tmp120,
	call	BZ2_decompress	#
	movl	%eax, -12(%rbp)	# tmp121, r
	.loc 1 899 0
	cmpl	$4, -12(%rbp)	#, r
	jne	.L226	#,
	.loc 1 900 0
	movq	-8(%rbp), %rax	# s, tmp122
	movl	52(%rax), %eax	# s_5->verbosity, D.5729
	cmpl	$2, %eax	#, D.5729
	jle	.L227	#,
	.loc 1 901 0
	movq	-8(%rbp), %rax	# s, tmp123
	movl	3188(%rax), %ecx	# s_5->calculatedCombinedCRC, D.5732
	movq	-8(%rbp), %rax	# s, tmp124
	movl	3180(%rax), %edx	# s_5->storedCombinedCRC, D.5732
	movq	stderr(%rip), %rax	# stderr, stderr.15
	movl	$.LC3, %esi	#,
	movq	%rax, %rdi	# stderr.15,
	movl	$0, %eax	#,
	call	fprintf	#
.L227:
	.loc 1 903 0
	movq	-8(%rbp), %rax	# s, tmp125
	movl	3188(%rax), %edx	# s_5->calculatedCombinedCRC, D.5732
	movq	-8(%rbp), %rax	# s, tmp126
	movl	3180(%rax), %eax	# s_5->storedCombinedCRC, D.5732
	cmpl	%eax, %edx	# D.5732, D.5732
	je	.L228	#,
	.loc 1 904 0
	movl	$-4, %eax	#, D.5729
	jmp	.L213	#
.L228:
	.loc 1 905 0
	movl	-12(%rbp), %eax	# r, D.5729
	jmp	.L213	#
.L226:
	.loc 1 907 0
	movq	-8(%rbp), %rax	# s, tmp127
	movl	8(%rax), %eax	# s_5->state, D.5729
	cmpl	$2, %eax	#, D.5729
	je	.L225	#,
	.loc 1 907 0 is_stmt 0 discriminator 1
	movl	-12(%rbp), %eax	# r, D.5729
	jmp	.L213	#
.L225:
.LBE7:
	.loc 1 909 0 is_stmt 1
	jmp	.L215	#
.L213:
	.loc 1 914 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	BZ2_bzDecompress, .-BZ2_bzDecompress
	.globl	BZ2_bzDecompressEnd
	.type	BZ2_bzDecompressEnd, @function
BZ2_bzDecompressEnd:
.LFB22:
	.loc 1 919 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# strm, strm
	.loc 1 921 0
	cmpq	$0, -24(%rbp)	#, strm
	jne	.L230	#,
	.loc 1 921 0 is_stmt 0 discriminator 1
	movl	$-2, %eax	#, D.5735
	jmp	.L231	#
.L230:
	.loc 1 922 0 is_stmt 1
	movq	-24(%rbp), %rax	# strm, tmp77
	movq	48(%rax), %rax	# strm_2(D)->state, tmp78
	movq	%rax, -8(%rbp)	# tmp78, s
	.loc 1 923 0
	cmpq	$0, -8(%rbp)	#, s
	jne	.L232	#,
	.loc 1 923 0 is_stmt 0 discriminator 1
	movl	$-2, %eax	#, D.5735
	jmp	.L231	#
.L232:
	.loc 1 924 0 is_stmt 1
	movq	-8(%rbp), %rax	# s, tmp79
	movq	(%rax), %rax	# s_4->strm, D.5736
	cmpq	-24(%rbp), %rax	# strm, D.5736
	je	.L233	#,
	.loc 1 924 0 is_stmt 0 discriminator 1
	movl	$-2, %eax	#, D.5735
	jmp	.L231	#
.L233:
	.loc 1 926 0 is_stmt 1
	movq	-8(%rbp), %rax	# s, tmp80
	movq	3152(%rax), %rax	# s_4->tt, D.5737
	testq	%rax, %rax	# D.5737
	je	.L234	#,
	.loc 1 926 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# strm, tmp81
	movq	64(%rax), %rax	# strm_2(D)->bzfree, D.5738
	movq	-8(%rbp), %rdx	# s, tmp82
	movq	3152(%rdx), %rcx	# s_4->tt, D.5737
	movq	-24(%rbp), %rdx	# strm, tmp83
	movq	72(%rdx), %rdx	# strm_2(D)->opaque, D.5739
	movq	%rcx, %rsi	# D.5737,
	movq	%rdx, %rdi	# D.5739,
	call	*%rax	# D.5738
.L234:
	.loc 1 927 0 is_stmt 1
	movq	-8(%rbp), %rax	# s, tmp84
	movq	3160(%rax), %rax	# s_4->ll16, D.5740
	testq	%rax, %rax	# D.5740
	je	.L235	#,
	.loc 1 927 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# strm, tmp85
	movq	64(%rax), %rax	# strm_2(D)->bzfree, D.5738
	movq	-8(%rbp), %rdx	# s, tmp86
	movq	3160(%rdx), %rcx	# s_4->ll16, D.5740
	movq	-24(%rbp), %rdx	# strm, tmp87
	movq	72(%rdx), %rdx	# strm_2(D)->opaque, D.5739
	movq	%rcx, %rsi	# D.5740,
	movq	%rdx, %rdi	# D.5739,
	call	*%rax	# D.5738
.L235:
	.loc 1 928 0 is_stmt 1
	movq	-8(%rbp), %rax	# s, tmp88
	movq	3168(%rax), %rax	# s_4->ll4, D.5741
	testq	%rax, %rax	# D.5741
	je	.L236	#,
	.loc 1 928 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# strm, tmp89
	movq	64(%rax), %rax	# strm_2(D)->bzfree, D.5738
	movq	-8(%rbp), %rdx	# s, tmp90
	movq	3168(%rdx), %rcx	# s_4->ll4, D.5741
	movq	-24(%rbp), %rdx	# strm, tmp91
	movq	72(%rdx), %rdx	# strm_2(D)->opaque, D.5739
	movq	%rcx, %rsi	# D.5741,
	movq	%rdx, %rdi	# D.5739,
	call	*%rax	# D.5738
.L236:
	.loc 1 930 0 is_stmt 1
	movq	-24(%rbp), %rax	# strm, tmp92
	movq	64(%rax), %rax	# strm_2(D)->bzfree, D.5738
	movq	-24(%rbp), %rdx	# strm, tmp93
	movq	48(%rdx), %rcx	# strm_2(D)->state, D.5739
	movq	-24(%rbp), %rdx	# strm, tmp94
	movq	72(%rdx), %rdx	# strm_2(D)->opaque, D.5739
	movq	%rcx, %rsi	# D.5739,
	movq	%rdx, %rdi	# D.5739,
	call	*%rax	# D.5738
	.loc 1 931 0
	movq	-24(%rbp), %rax	# strm, tmp95
	movq	$0, 48(%rax)	#, strm_2(D)->state
	.loc 1 933 0
	movl	$0, %eax	#, D.5735
.L231:
	.loc 1 934 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	BZ2_bzDecompressEnd, .-BZ2_bzDecompressEnd
	.type	myfeof, @function
myfeof:
.LFB23:
	.loc 1 971 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# f, f
	.loc 1 972 0
	movl	-20(%rbp), %eax	# f, tmp63
	movl	%eax, %edi	# tmp63,
	call	spec_getc	#
	movl	%eax, -4(%rbp)	# tmp64, c
	.loc 1 973 0
	cmpl	$-1, -4(%rbp)	#, c
	jne	.L238	#,
	.loc 1 973 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, D.5742
	jmp	.L239	#
.L238:
	.loc 1 974 0 is_stmt 1
	movl	-4(%rbp), %eax	# c, tmp65
	movzbl	%al, %eax	# D.5743, D.5744
	movl	-20(%rbp), %edx	# f, tmp66
	movl	%edx, %esi	# tmp66,
	movl	%eax, %edi	# D.5744,
	call	spec_ungetc	#
	.loc 1 975 0
	movl	$0, %eax	#, D.5742
.L239:
	.loc 1 976 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	myfeof, .-myfeof
	.globl	BZ2_bzWriteOpen
	.type	BZ2_bzWriteOpen, @function
BZ2_bzWriteOpen:
.LFB24:
	.loc 1 990 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# bzerror, bzerror
	movl	%esi, -28(%rbp)	# f, f
	movl	%edx, -32(%rbp)	# blockSize100k, blockSize100k
	movl	%ecx, -36(%rbp)	# verbosity, verbosity
	movl	%r8d, -40(%rbp)	# workFactor, workFactor
	.loc 1 992 0
	movq	$0, -8(%rbp)	#, bzf
	.loc 1 994 0
	cmpq	$0, -24(%rbp)	#, bzerror
	je	.L241	#,
	.loc 1 994 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# bzerror, tmp62
	movl	$0, (%rax)	#, *bzerror_4(D)
.L241:
	.loc 1 994 0 discriminator 2
	cmpq	$0, -8(%rbp)	#, bzf
	je	.L242	#,
	.loc 1 994 0 discriminator 1
	movq	-8(%rbp), %rax	# bzf, tmp63
	movl	$0, 5096(%rax)	#, bzf_3->lastErr
.L242:
	.loc 1 996 0 is_stmt 1
	cmpl	$0, -28(%rbp)	#, f
	je	.L243	#,
	.loc 1 996 0 is_stmt 0 discriminator 1
	cmpl	$0, -32(%rbp)	#, blockSize100k
	jle	.L243	#,
	.loc 1 997 0 is_stmt 1
	cmpl	$9, -32(%rbp)	#, blockSize100k
	jg	.L243	#,
	.loc 1 997 0 is_stmt 0 discriminator 1
	cmpl	$0, -40(%rbp)	#, workFactor
	js	.L243	#,
	.loc 1 998 0 is_stmt 1
	cmpl	$250, -40(%rbp)	#, workFactor
	jg	.L243	#,
	.loc 1 998 0 is_stmt 0 discriminator 1
	cmpl	$0, -36(%rbp)	#, verbosity
	js	.L243	#,
	.loc 1 999 0 is_stmt 1
	cmpl	$4, -36(%rbp)	#, verbosity
	jle	.L244	#,
.L243:
	.loc 1 1000 0
	cmpq	$0, -24(%rbp)	#, bzerror
	je	.L245	#,
	.loc 1 1000 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# bzerror, tmp64
	movl	$-2, (%rax)	#, *bzerror_4(D)
.L245:
	.loc 1 1000 0 discriminator 2
	cmpq	$0, -8(%rbp)	#, bzf
	je	.L246	#,
	.loc 1 1000 0 discriminator 1
	movq	-8(%rbp), %rax	# bzf, tmp65
	movl	$-2, 5096(%rax)	#, bzf_3->lastErr
.L246:
	.loc 1 1000 0 discriminator 2
	movl	$0, %eax	#, D.5745
	jmp	.L247	#
.L244:
	.loc 1 1005 0 is_stmt 1
	movl	$5104, %edi	#,
	call	malloc	#
	movq	%rax, -8(%rbp)	# tmp66, bzf
	.loc 1 1006 0
	cmpq	$0, -8(%rbp)	#, bzf
	jne	.L248	#,
	.loc 1 1007 0
	cmpq	$0, -24(%rbp)	#, bzerror
	je	.L249	#,
	.loc 1 1007 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# bzerror, tmp67
	movl	$-3, (%rax)	#, *bzerror_4(D)
.L249:
	.loc 1 1007 0 discriminator 2
	cmpq	$0, -8(%rbp)	#, bzf
	je	.L250	#,
	.loc 1 1007 0 discriminator 1
	movq	-8(%rbp), %rax	# bzf, tmp68
	movl	$-3, 5096(%rax)	#, bzf_9->lastErr
.L250:
	.loc 1 1007 0 discriminator 2
	movl	$0, %eax	#, D.5745
	jmp	.L247	#
.L248:
	.loc 1 1009 0 is_stmt 1
	cmpq	$0, -24(%rbp)	#, bzerror
	je	.L251	#,
	.loc 1 1009 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# bzerror, tmp69
	movl	$0, (%rax)	#, *bzerror_4(D)
.L251:
	.loc 1 1009 0 discriminator 2
	cmpq	$0, -8(%rbp)	#, bzf
	je	.L252	#,
	.loc 1 1009 0 discriminator 1
	movq	-8(%rbp), %rax	# bzf, tmp70
	movl	$0, 5096(%rax)	#, bzf_9->lastErr
.L252:
	.loc 1 1010 0 is_stmt 1
	movq	-8(%rbp), %rax	# bzf, tmp71
	movb	$0, 5100(%rax)	#, bzf_9->initialisedOk
	.loc 1 1011 0
	movq	-8(%rbp), %rax	# bzf, tmp72
	movl	$0, 5004(%rax)	#, bzf_9->bufN
	.loc 1 1012 0
	movq	-8(%rbp), %rax	# bzf, tmp73
	movl	-28(%rbp), %edx	# f, tmp74
	movl	%edx, (%rax)	# tmp74, bzf_9->handle
	.loc 1 1013 0
	movq	-8(%rbp), %rax	# bzf, tmp75
	movb	$1, 5008(%rax)	#, bzf_9->writing
	.loc 1 1014 0
	movq	-8(%rbp), %rax	# bzf, tmp76
	movq	$0, 5072(%rax)	#, bzf_9->strm.bzalloc
	.loc 1 1015 0
	movq	-8(%rbp), %rax	# bzf, tmp77
	movq	$0, 5080(%rax)	#, bzf_9->strm.bzfree
	.loc 1 1016 0
	movq	-8(%rbp), %rax	# bzf, tmp78
	movq	$0, 5088(%rax)	#, bzf_9->strm.opaque
	.loc 1 1018 0
	cmpl	$0, -40(%rbp)	#, workFactor
	jne	.L253	#,
	.loc 1 1018 0 is_stmt 0 discriminator 1
	movl	$30, -40(%rbp)	#, workFactor
.L253:
	.loc 1 1019 0 is_stmt 1
	movq	-8(%rbp), %rax	# bzf, tmp79
	leaq	5016(%rax), %rdi	#, D.5746
	movl	-40(%rbp), %ecx	# workFactor, tmp80
	movl	-36(%rbp), %edx	# verbosity, tmp81
	movl	-32(%rbp), %eax	# blockSize100k, tmp82
	movl	%eax, %esi	# tmp82,
	call	BZ2_bzCompressInit	#
	movl	%eax, -12(%rbp)	# tmp83, ret
	.loc 1 1021 0
	cmpl	$0, -12(%rbp)	#, ret
	je	.L254	#,
	.loc 1 1022 0
	cmpq	$0, -24(%rbp)	#, bzerror
	je	.L255	#,
	.loc 1 1022 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# bzerror, tmp84
	movl	-12(%rbp), %edx	# ret, tmp85
	movl	%edx, (%rax)	# tmp85, *bzerror_4(D)
.L255:
	.loc 1 1022 0 discriminator 2
	cmpq	$0, -8(%rbp)	#, bzf
	je	.L256	#,
	.loc 1 1022 0 discriminator 1
	movq	-8(%rbp), %rax	# bzf, tmp86
	movl	-12(%rbp), %edx	# ret, tmp87
	movl	%edx, 5096(%rax)	# tmp87, bzf_9->lastErr
.L256:
	.loc 1 1022 0 discriminator 2
	movq	-8(%rbp), %rax	# bzf, tmp88
	movq	%rax, %rdi	# tmp88,
	call	free	#
	movl	$0, %eax	#, D.5745
	jmp	.L247	#
.L254:
	.loc 1 1024 0 is_stmt 1
	movq	-8(%rbp), %rax	# bzf, tmp89
	movl	$0, 5024(%rax)	#, bzf_9->strm.avail_in
	.loc 1 1025 0
	movq	-8(%rbp), %rax	# bzf, tmp90
	movb	$1, 5100(%rax)	#, bzf_9->initialisedOk
	.loc 1 1026 0
	movq	-8(%rbp), %rax	# bzf, D.5745
.L247:
	.loc 1 1027 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	BZ2_bzWriteOpen, .-BZ2_bzWriteOpen
	.globl	BZ2_bzWrite
	.type	BZ2_bzWrite, @function
BZ2_bzWrite:
.LFB25:
	.loc 1 1037 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# bzerror, bzerror
	movq	%rsi, -48(%rbp)	# b, b
	movq	%rdx, -56(%rbp)	# buf, buf
	movl	%ecx, -60(%rbp)	# len, len
	.loc 1 1039 0
	movq	-48(%rbp), %rax	# b, tmp69
	movq	%rax, -8(%rbp)	# tmp69, bzf
	.loc 1 1041 0
	cmpq	$0, -40(%rbp)	#, bzerror
	je	.L258	#,
	.loc 1 1041 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# bzerror, tmp70
	movl	$0, (%rax)	#, *bzerror_3(D)
.L258:
	.loc 1 1041 0 discriminator 2
	cmpq	$0, -8(%rbp)	#, bzf
	je	.L259	#,
	.loc 1 1041 0 discriminator 1
	movq	-8(%rbp), %rax	# bzf, tmp71
	movl	$0, 5096(%rax)	#, bzf_2->lastErr
.L259:
	.loc 1 1042 0 is_stmt 1
	cmpq	$0, -8(%rbp)	#, bzf
	je	.L260	#,
	.loc 1 1042 0 is_stmt 0 discriminator 1
	cmpq	$0, -56(%rbp)	#, buf
	je	.L260	#,
	cmpl	$0, -60(%rbp)	#, len
	jns	.L261	#,
.L260:
	.loc 1 1043 0 is_stmt 1
	cmpq	$0, -40(%rbp)	#, bzerror
	je	.L262	#,
	.loc 1 1043 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# bzerror, tmp72
	movl	$-2, (%rax)	#, *bzerror_3(D)
.L262:
	.loc 1 1043 0 discriminator 2
	cmpq	$0, -8(%rbp)	#, bzf
	je	.L263	#,
	.loc 1 1043 0 discriminator 1
	movq	-8(%rbp), %rax	# bzf, tmp73
	movl	$-2, 5096(%rax)	#, bzf_2->lastErr
	jmp	.L257	#
.L263:
	.loc 1 1043 0 discriminator 2
	jmp	.L257	#
.L261:
	.loc 1 1044 0 is_stmt 1
	movq	-8(%rbp), %rax	# bzf, tmp74
	movzbl	5008(%rax), %eax	# bzf_2->writing, D.5747
	testb	%al, %al	# D.5747
	jne	.L265	#,
	.loc 1 1045 0
	cmpq	$0, -40(%rbp)	#, bzerror
	je	.L266	#,
	.loc 1 1045 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# bzerror, tmp75
	movl	$-1, (%rax)	#, *bzerror_3(D)
.L266:
	.loc 1 1045 0 discriminator 2
	cmpq	$0, -8(%rbp)	#, bzf
	je	.L267	#,
	.loc 1 1045 0 discriminator 1
	movq	-8(%rbp), %rax	# bzf, tmp76
	movl	$-1, 5096(%rax)	#, bzf_2->lastErr
	jmp	.L257	#
.L267:
	.loc 1 1045 0 discriminator 2
	jmp	.L257	#
.L265:
	.loc 1 1049 0 is_stmt 1
	cmpl	$0, -60(%rbp)	#, len
	jne	.L268	#,
	.loc 1 1050 0
	cmpq	$0, -40(%rbp)	#, bzerror
	je	.L269	#,
	.loc 1 1050 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# bzerror, tmp77
	movl	$0, (%rax)	#, *bzerror_3(D)
.L269:
	.loc 1 1050 0 discriminator 2
	cmpq	$0, -8(%rbp)	#, bzf
	je	.L270	#,
	.loc 1 1050 0 discriminator 1
	movq	-8(%rbp), %rax	# bzf, tmp78
	movl	$0, 5096(%rax)	#, bzf_2->lastErr
	jmp	.L257	#
.L270:
	.loc 1 1050 0 discriminator 2
	jmp	.L257	#
.L268:
	.loc 1 1052 0 is_stmt 1
	movl	-60(%rbp), %edx	# len, len.16
	movq	-8(%rbp), %rax	# bzf, tmp79
	movl	%edx, 5024(%rax)	# len.16, bzf_2->strm.avail_in
	.loc 1 1053 0
	movq	-8(%rbp), %rax	# bzf, tmp80
	movq	-56(%rbp), %rdx	# buf, tmp81
	movq	%rdx, 5016(%rax)	# tmp81, bzf_2->strm.next_in
.L280:
	.loc 1 1056 0
	movq	-8(%rbp), %rax	# bzf, tmp82
	movl	$5000, 5048(%rax)	#, bzf_2->strm.avail_out
	.loc 1 1057 0
	movq	-8(%rbp), %rax	# bzf, tmp83
	leaq	4(%rax), %rdx	#, D.5748
	movq	-8(%rbp), %rax	# bzf, tmp84
	movq	%rdx, 5040(%rax)	# D.5748, bzf_2->strm.next_out
	.loc 1 1058 0
	movq	-8(%rbp), %rax	# bzf, tmp85
	addq	$5016, %rax	#, D.5749
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.5749,
	call	BZ2_bzCompress	#
	movl	%eax, -20(%rbp)	# tmp86, ret
	.loc 1 1059 0
	cmpl	$1, -20(%rbp)	#, ret
	je	.L271	#,
	.loc 1 1060 0
	cmpq	$0, -40(%rbp)	#, bzerror
	je	.L272	#,
	.loc 1 1060 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# bzerror, tmp87
	movl	-20(%rbp), %edx	# ret, tmp88
	movl	%edx, (%rax)	# tmp88, *bzerror_3(D)
.L272:
	.loc 1 1060 0 discriminator 2
	cmpq	$0, -8(%rbp)	#, bzf
	je	.L273	#,
	.loc 1 1060 0 discriminator 1
	movq	-8(%rbp), %rax	# bzf, tmp89
	movl	-20(%rbp), %edx	# ret, tmp90
	movl	%edx, 5096(%rax)	# tmp90, bzf_2->lastErr
	jmp	.L257	#
.L273:
	.loc 1 1060 0 discriminator 2
	jmp	.L257	#
.L271:
	.loc 1 1062 0 is_stmt 1
	movq	-8(%rbp), %rax	# bzf, tmp91
	movl	5048(%rax), %eax	# bzf_2->strm.avail_out, D.5750
	cmpl	$4999, %eax	#, D.5750
	ja	.L274	#,
	.loc 1 1063 0
	movq	-8(%rbp), %rax	# bzf, tmp92
	movl	5048(%rax), %eax	# bzf_2->strm.avail_out, D.5750
	movl	$5000, %edx	#, tmp93
	subl	%eax, %edx	# D.5750, D.5750
	movl	%edx, %eax	# D.5750, D.5750
	movl	%eax, -16(%rbp)	# D.5750, n
	.loc 1 1064 0
	movq	-8(%rbp), %rax	# bzf, tmp94
	movl	(%rax), %edx	# bzf_2->handle, D.5751
	movq	-8(%rbp), %rax	# bzf, tmp95
	leaq	4(%rax), %rdi	#, D.5748
	movl	-16(%rbp), %eax	# n, tmp96
	movl	%edx, %ecx	# D.5751,
	movl	%eax, %edx	# tmp96,
	movl	$1, %esi	#,
	call	spec_fwrite	#
	movl	%eax, -12(%rbp)	# tmp97, n2
	.loc 1 1066 0
	movl	-16(%rbp), %eax	# n, tmp98
	cmpl	-12(%rbp), %eax	# n2, tmp98
	je	.L274	#,
	.loc 1 1067 0
	cmpq	$0, -40(%rbp)	#, bzerror
	je	.L275	#,
	.loc 1 1067 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# bzerror, tmp99
	movl	$-6, (%rax)	#, *bzerror_3(D)
.L275:
	.loc 1 1067 0 discriminator 2
	cmpq	$0, -8(%rbp)	#, bzf
	je	.L276	#,
	.loc 1 1067 0 discriminator 1
	movq	-8(%rbp), %rax	# bzf, tmp100
	movl	$-6, 5096(%rax)	#, bzf_2->lastErr
	jmp	.L257	#
.L276:
	.loc 1 1067 0 discriminator 2
	jmp	.L257	#
.L274:
	.loc 1 1070 0 is_stmt 1
	movq	-8(%rbp), %rax	# bzf, tmp101
	movl	5024(%rax), %eax	# bzf_2->strm.avail_in, D.5750
	testl	%eax, %eax	# D.5750
	jne	.L277	#,
	.loc 1 1071 0
	cmpq	$0, -40(%rbp)	#, bzerror
	je	.L278	#,
	.loc 1 1071 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# bzerror, tmp102
	movl	$0, (%rax)	#, *bzerror_3(D)
.L278:
	.loc 1 1071 0 discriminator 2
	cmpq	$0, -8(%rbp)	#, bzf
	je	.L279	#,
	.loc 1 1071 0 discriminator 1
	movq	-8(%rbp), %rax	# bzf, tmp103
	movl	$0, 5096(%rax)	#, bzf_2->lastErr
	jmp	.L257	#
.L279:
	.loc 1 1071 0 discriminator 2
	jmp	.L257	#
.L277:
	.loc 1 1072 0 is_stmt 1
	jmp	.L280	#
.L257:
	.loc 1 1073 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	BZ2_bzWrite, .-BZ2_bzWrite
	.globl	BZ2_bzWriteClose
	.type	BZ2_bzWriteClose, @function
BZ2_bzWriteClose:
.LFB26:
	.loc 1 1083 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -8(%rbp)	# bzerror, bzerror
	movq	%rsi, -16(%rbp)	# b, b
	movl	%edx, -20(%rbp)	# abandon, abandon
	movq	%rcx, -32(%rbp)	# nbytes_in, nbytes_in
	movq	%r8, -40(%rbp)	# nbytes_out, nbytes_out
	.loc 1 1084 0
	movq	-40(%rbp), %rdi	# nbytes_out, tmp59
	movq	-32(%rbp), %rcx	# nbytes_in, tmp60
	movl	-20(%rbp), %edx	# abandon, tmp61
	movq	-16(%rbp), %rsi	# b, tmp62
	movq	-8(%rbp), %rax	# bzerror, tmp63
	movq	$0, (%rsp)	#,
	movq	%rdi, %r9	# tmp59,
	movl	$0, %r8d	#,
	movq	%rax, %rdi	# tmp63,
	call	BZ2_bzWriteClose64	#
	.loc 1 1086 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	BZ2_bzWriteClose, .-BZ2_bzWriteClose
	.globl	BZ2_bzWriteClose64
	.type	BZ2_bzWriteClose64, @function
BZ2_bzWriteClose64:
.LFB27:
	.loc 1 1097 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -40(%rbp)	# bzerror, bzerror
	movq	%rsi, -48(%rbp)	# b, b
	movl	%edx, -52(%rbp)	# abandon, abandon
	movq	%rcx, -64(%rbp)	# nbytes_in_lo32, nbytes_in_lo32
	movq	%r8, -72(%rbp)	# nbytes_in_hi32, nbytes_in_hi32
	movq	%r9, -80(%rbp)	# nbytes_out_lo32, nbytes_out_lo32
	.loc 1 1099 0
	movq	-48(%rbp), %rax	# b, tmp73
	movq	%rax, -8(%rbp)	# tmp73, bzf
	.loc 1 1101 0
	cmpq	$0, -8(%rbp)	#, bzf
	jne	.L283	#,
	.loc 1 1102 0
	cmpq	$0, -40(%rbp)	#, bzerror
	je	.L284	#,
	.loc 1 1102 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# bzerror, tmp74
	movl	$0, (%rax)	#, *bzerror_3(D)
.L284:
	.loc 1 1102 0 discriminator 2
	cmpq	$0, -8(%rbp)	#, bzf
	je	.L285	#,
	.loc 1 1102 0 discriminator 1
	movq	-8(%rbp), %rax	# bzf, tmp75
	movl	$0, 5096(%rax)	#, bzf_2->lastErr
	jmp	.L282	#
.L285:
	.loc 1 1102 0 discriminator 2
	jmp	.L282	#
.L283:
	.loc 1 1103 0 is_stmt 1
	movq	-8(%rbp), %rax	# bzf, tmp76
	movzbl	5008(%rax), %eax	# bzf_2->writing, D.5752
	testb	%al, %al	# D.5752
	jne	.L287	#,
	.loc 1 1104 0
	cmpq	$0, -40(%rbp)	#, bzerror
	je	.L288	#,
	.loc 1 1104 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# bzerror, tmp77
	movl	$-1, (%rax)	#, *bzerror_3(D)
.L288:
	.loc 1 1104 0 discriminator 2
	cmpq	$0, -8(%rbp)	#, bzf
	je	.L289	#,
	.loc 1 1104 0 discriminator 1
	movq	-8(%rbp), %rax	# bzf, tmp78
	movl	$-1, 5096(%rax)	#, bzf_2->lastErr
	jmp	.L282	#
.L289:
	.loc 1 1104 0 discriminator 2
	jmp	.L282	#
.L287:
	.loc 1 1108 0 is_stmt 1
	cmpq	$0, -64(%rbp)	#, nbytes_in_lo32
	je	.L290	#,
	.loc 1 1108 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# nbytes_in_lo32, tmp79
	movl	$0, (%rax)	#, *nbytes_in_lo32_5(D)
.L290:
	.loc 1 1109 0 is_stmt 1
	cmpq	$0, -72(%rbp)	#, nbytes_in_hi32
	je	.L291	#,
	.loc 1 1109 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# nbytes_in_hi32, tmp80
	movl	$0, (%rax)	#, *nbytes_in_hi32_6(D)
.L291:
	.loc 1 1110 0 is_stmt 1
	cmpq	$0, -80(%rbp)	#, nbytes_out_lo32
	je	.L292	#,
	.loc 1 1110 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# nbytes_out_lo32, tmp81
	movl	$0, (%rax)	#, *nbytes_out_lo32_7(D)
.L292:
	.loc 1 1111 0 is_stmt 1
	cmpq	$0, 16(%rbp)	#, nbytes_out_hi32
	je	.L293	#,
	.loc 1 1111 0 is_stmt 0 discriminator 1
	movq	16(%rbp), %rax	# nbytes_out_hi32, tmp82
	movl	$0, (%rax)	#, *nbytes_out_hi32_8(D)
.L293:
	.loc 1 1113 0 is_stmt 1
	cmpl	$0, -52(%rbp)	#, abandon
	jne	.L309	#,
	.loc 1 1113 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# bzf, tmp83
	movl	5096(%rax), %eax	# bzf_2->lastErr, D.5753
	testl	%eax, %eax	# D.5753
	jne	.L309	#,
.L302:
	.loc 1 1115 0 is_stmt 1
	movq	-8(%rbp), %rax	# bzf, tmp84
	movl	$5000, 5048(%rax)	#, bzf_2->strm.avail_out
	.loc 1 1116 0
	movq	-8(%rbp), %rax	# bzf, tmp85
	leaq	4(%rax), %rdx	#, D.5754
	movq	-8(%rbp), %rax	# bzf, tmp86
	movq	%rdx, 5040(%rax)	# D.5754, bzf_2->strm.next_out
	.loc 1 1117 0
	movq	-8(%rbp), %rax	# bzf, tmp87
	addq	$5016, %rax	#, D.5755
	movl	$2, %esi	#,
	movq	%rax, %rdi	# D.5755,
	call	BZ2_bzCompress	#
	movl	%eax, -20(%rbp)	# tmp88, ret
	.loc 1 1118 0
	cmpl	$3, -20(%rbp)	#, ret
	je	.L295	#,
	.loc 1 1118 0 is_stmt 0 discriminator 1
	cmpl	$4, -20(%rbp)	#, ret
	je	.L295	#,
	.loc 1 1119 0 is_stmt 1
	cmpq	$0, -40(%rbp)	#, bzerror
	je	.L296	#,
	.loc 1 1119 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# bzerror, tmp89
	movl	-20(%rbp), %edx	# ret, tmp90
	movl	%edx, (%rax)	# tmp90, *bzerror_3(D)
.L296:
	.loc 1 1119 0 discriminator 2
	cmpq	$0, -8(%rbp)	#, bzf
	je	.L297	#,
	.loc 1 1119 0 discriminator 1
	movq	-8(%rbp), %rax	# bzf, tmp91
	movl	-20(%rbp), %edx	# ret, tmp92
	movl	%edx, 5096(%rax)	# tmp92, bzf_2->lastErr
	jmp	.L282	#
.L297:
	.loc 1 1119 0 discriminator 2
	jmp	.L282	#
.L295:
	.loc 1 1121 0 is_stmt 1
	movq	-8(%rbp), %rax	# bzf, tmp93
	movl	5048(%rax), %eax	# bzf_2->strm.avail_out, D.5756
	cmpl	$4999, %eax	#, D.5756
	ja	.L298	#,
	.loc 1 1122 0
	movq	-8(%rbp), %rax	# bzf, tmp94
	movl	5048(%rax), %eax	# bzf_2->strm.avail_out, D.5756
	movl	$5000, %edx	#, tmp95
	subl	%eax, %edx	# D.5756, D.5756
	movl	%edx, %eax	# D.5756, D.5756
	movl	%eax, -16(%rbp)	# D.5756, n
	.loc 1 1123 0
	movq	-8(%rbp), %rax	# bzf, tmp96
	movl	(%rax), %edx	# bzf_2->handle, D.5753
	movq	-8(%rbp), %rax	# bzf, tmp97
	leaq	4(%rax), %rdi	#, D.5754
	movl	-16(%rbp), %eax	# n, tmp98
	movl	%edx, %ecx	# D.5753,
	movl	%eax, %edx	# tmp98,
	movl	$1, %esi	#,
	call	spec_fwrite	#
	movl	%eax, -12(%rbp)	# tmp99, n2
	.loc 1 1125 0
	movl	-16(%rbp), %eax	# n, tmp100
	cmpl	-12(%rbp), %eax	# n2, tmp100
	je	.L298	#,
	.loc 1 1126 0
	cmpq	$0, -40(%rbp)	#, bzerror
	je	.L299	#,
	.loc 1 1126 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# bzerror, tmp101
	movl	$-6, (%rax)	#, *bzerror_3(D)
.L299:
	.loc 1 1126 0 discriminator 2
	cmpq	$0, -8(%rbp)	#, bzf
	je	.L300	#,
	.loc 1 1126 0 discriminator 1
	movq	-8(%rbp), %rax	# bzf, tmp102
	movl	$-6, 5096(%rax)	#, bzf_2->lastErr
	jmp	.L282	#
.L300:
	.loc 1 1126 0 discriminator 2
	jmp	.L282	#
.L298:
	.loc 1 1129 0 is_stmt 1
	cmpl	$4, -20(%rbp)	#, ret
	jne	.L301	#,
	.loc 1 1129 0 is_stmt 0 discriminator 1
	nop
	jmp	.L309	#
.L301:
	.loc 1 1130 0 is_stmt 1
	jmp	.L302	#
.L309:
	.loc 1 1139 0
	cmpq	$0, -64(%rbp)	#, nbytes_in_lo32
	je	.L303	#,
	.loc 1 1140 0
	movq	-8(%rbp), %rax	# bzf, tmp103
	movl	5028(%rax), %edx	# bzf_2->strm.total_in_lo32, D.5756
	movq	-64(%rbp), %rax	# nbytes_in_lo32, tmp104
	movl	%edx, (%rax)	# D.5756, *nbytes_in_lo32_5(D)
.L303:
	.loc 1 1141 0
	cmpq	$0, -72(%rbp)	#, nbytes_in_hi32
	je	.L304	#,
	.loc 1 1142 0
	movq	-8(%rbp), %rax	# bzf, tmp105
	movl	5032(%rax), %edx	# bzf_2->strm.total_in_hi32, D.5756
	movq	-72(%rbp), %rax	# nbytes_in_hi32, tmp106
	movl	%edx, (%rax)	# D.5756, *nbytes_in_hi32_6(D)
.L304:
	.loc 1 1143 0
	cmpq	$0, -80(%rbp)	#, nbytes_out_lo32
	je	.L305	#,
	.loc 1 1144 0
	movq	-8(%rbp), %rax	# bzf, tmp107
	movl	5052(%rax), %edx	# bzf_2->strm.total_out_lo32, D.5756
	movq	-80(%rbp), %rax	# nbytes_out_lo32, tmp108
	movl	%edx, (%rax)	# D.5756, *nbytes_out_lo32_7(D)
.L305:
	.loc 1 1145 0
	cmpq	$0, 16(%rbp)	#, nbytes_out_hi32
	je	.L306	#,
	.loc 1 1146 0
	movq	-8(%rbp), %rax	# bzf, tmp109
	movl	5056(%rax), %edx	# bzf_2->strm.total_out_hi32, D.5756
	movq	16(%rbp), %rax	# nbytes_out_hi32, tmp110
	movl	%edx, (%rax)	# D.5756, *nbytes_out_hi32_8(D)
.L306:
	.loc 1 1148 0
	cmpq	$0, -40(%rbp)	#, bzerror
	je	.L307	#,
	.loc 1 1148 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# bzerror, tmp111
	movl	$0, (%rax)	#, *bzerror_3(D)
.L307:
	.loc 1 1148 0 discriminator 2
	cmpq	$0, -8(%rbp)	#, bzf
	je	.L308	#,
	.loc 1 1148 0 discriminator 1
	movq	-8(%rbp), %rax	# bzf, tmp112
	movl	$0, 5096(%rax)	#, bzf_2->lastErr
.L308:
	.loc 1 1149 0 is_stmt 1
	movq	-8(%rbp), %rax	# bzf, tmp113
	addq	$5016, %rax	#, D.5755
	movq	%rax, %rdi	# D.5755,
	call	BZ2_bzCompressEnd	#
	.loc 1 1150 0
	movq	-8(%rbp), %rax	# bzf, tmp114
	movq	%rax, %rdi	# tmp114,
	call	free	#
.L282:
	.loc 1 1151 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	BZ2_bzWriteClose64, .-BZ2_bzWriteClose64
	.globl	BZ2_bzReadOpen
	.type	BZ2_bzReadOpen, @function
BZ2_bzReadOpen:
.LFB28:
	.loc 1 1166 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# bzerror, bzerror
	movl	%esi, -28(%rbp)	# f, f
	movl	%edx, -32(%rbp)	# verbosity, verbosity
	movl	%ecx, -36(%rbp)	# small, small
	movq	%r8, -48(%rbp)	# unused, unused
	movl	%r9d, -40(%rbp)	# nUnused, nUnused
	.loc 1 1167 0
	movq	$0, -8(%rbp)	#, bzf
	.loc 1 1170 0
	cmpq	$0, -24(%rbp)	#, bzerror
	je	.L311	#,
	.loc 1 1170 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# bzerror, tmp70
	movl	$0, (%rax)	#, *bzerror_5(D)
.L311:
	.loc 1 1170 0 discriminator 2
	cmpq	$0, -8(%rbp)	#, bzf
	je	.L312	#,
	.loc 1 1170 0 discriminator 1
	movq	-8(%rbp), %rax	# bzf, tmp71
	movl	$0, 5096(%rax)	#, bzf_4->lastErr
.L312:
	.loc 1 1172 0 is_stmt 1
	cmpl	$0, -28(%rbp)	#, f
	je	.L313	#,
	.loc 1 1172 0 is_stmt 0 discriminator 1
	cmpl	$0, -36(%rbp)	#, small
	je	.L314	#,
	.loc 1 1173 0 is_stmt 1
	cmpl	$1, -36(%rbp)	#, small
	jne	.L313	#,
.L314:
	.loc 1 1173 0 is_stmt 0 discriminator 1
	cmpl	$0, -32(%rbp)	#, verbosity
	js	.L313	#,
	.loc 1 1174 0 is_stmt 1
	cmpl	$4, -32(%rbp)	#, verbosity
	jg	.L313	#,
	.loc 1 1174 0 is_stmt 0 discriminator 1
	cmpq	$0, -48(%rbp)	#, unused
	jne	.L315	#,
	.loc 1 1175 0 is_stmt 1
	cmpl	$0, -40(%rbp)	#, nUnused
	jne	.L313	#,
.L315:
	.loc 1 1175 0 is_stmt 0 discriminator 1
	cmpq	$0, -48(%rbp)	#, unused
	je	.L316	#,
	.loc 1 1176 0 is_stmt 1
	cmpl	$0, -40(%rbp)	#, nUnused
	js	.L313	#,
	.loc 1 1176 0 is_stmt 0 discriminator 1
	cmpl	$5000, -40(%rbp)	#, nUnused
	jle	.L316	#,
.L313:
	.loc 1 1177 0 is_stmt 1
	cmpq	$0, -24(%rbp)	#, bzerror
	je	.L317	#,
	.loc 1 1177 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# bzerror, tmp72
	movl	$-2, (%rax)	#, *bzerror_5(D)
.L317:
	.loc 1 1177 0 discriminator 2
	cmpq	$0, -8(%rbp)	#, bzf
	je	.L318	#,
	.loc 1 1177 0 discriminator 1
	movq	-8(%rbp), %rax	# bzf, tmp73
	movl	$-2, 5096(%rax)	#, bzf_4->lastErr
.L318:
	.loc 1 1177 0 discriminator 2
	movl	$0, %eax	#, D.5757
	jmp	.L319	#
.L316:
	.loc 1 1182 0 is_stmt 1
	movl	$5104, %edi	#,
	call	malloc	#
	movq	%rax, -8(%rbp)	# tmp74, bzf
	.loc 1 1183 0
	cmpq	$0, -8(%rbp)	#, bzf
	jne	.L320	#,
	.loc 1 1184 0
	cmpq	$0, -24(%rbp)	#, bzerror
	je	.L321	#,
	.loc 1 1184 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# bzerror, tmp75
	movl	$-3, (%rax)	#, *bzerror_5(D)
.L321:
	.loc 1 1184 0 discriminator 2
	cmpq	$0, -8(%rbp)	#, bzf
	je	.L322	#,
	.loc 1 1184 0 discriminator 1
	movq	-8(%rbp), %rax	# bzf, tmp76
	movl	$-3, 5096(%rax)	#, bzf_11->lastErr
.L322:
	.loc 1 1184 0 discriminator 2
	movl	$0, %eax	#, D.5757
	jmp	.L319	#
.L320:
	.loc 1 1186 0 is_stmt 1
	cmpq	$0, -24(%rbp)	#, bzerror
	je	.L323	#,
	.loc 1 1186 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# bzerror, tmp77
	movl	$0, (%rax)	#, *bzerror_5(D)
.L323:
	.loc 1 1186 0 discriminator 2
	cmpq	$0, -8(%rbp)	#, bzf
	je	.L324	#,
	.loc 1 1186 0 discriminator 1
	movq	-8(%rbp), %rax	# bzf, tmp78
	movl	$0, 5096(%rax)	#, bzf_11->lastErr
.L324:
	.loc 1 1188 0 is_stmt 1
	movq	-8(%rbp), %rax	# bzf, tmp79
	movb	$0, 5100(%rax)	#, bzf_11->initialisedOk
	.loc 1 1189 0
	movq	-8(%rbp), %rax	# bzf, tmp80
	movl	-28(%rbp), %edx	# f, tmp81
	movl	%edx, (%rax)	# tmp81, bzf_11->handle
	.loc 1 1190 0
	movq	-8(%rbp), %rax	# bzf, tmp82
	movl	$0, 5004(%rax)	#, bzf_11->bufN
	.loc 1 1191 0
	movq	-8(%rbp), %rax	# bzf, tmp83
	movb	$0, 5008(%rax)	#, bzf_11->writing
	.loc 1 1192 0
	movq	-8(%rbp), %rax	# bzf, tmp84
	movq	$0, 5072(%rax)	#, bzf_11->strm.bzalloc
	.loc 1 1193 0
	movq	-8(%rbp), %rax	# bzf, tmp85
	movq	$0, 5080(%rax)	#, bzf_11->strm.bzfree
	.loc 1 1194 0
	movq	-8(%rbp), %rax	# bzf, tmp86
	movq	$0, 5088(%rax)	#, bzf_11->strm.opaque
	.loc 1 1196 0
	jmp	.L325	#
.L326:
	.loc 1 1197 0
	movq	-8(%rbp), %rax	# bzf, tmp87
	movl	5004(%rax), %esi	# bzf_11->bufN, D.5758
	movq	-48(%rbp), %rax	# unused, tmp88
	movzbl	(%rax), %eax	# MEM[(UChar *)unused_1], D.5759
	movl	%eax, %ecx	# D.5759, D.5760
	movq	-8(%rbp), %rdx	# bzf, tmp89
	movslq	%esi, %rax	# D.5758, tmp90
	movb	%cl, 4(%rdx,%rax)	# D.5760, bzf_11->buf
	movq	-8(%rbp), %rax	# bzf, tmp91
	movl	5004(%rax), %eax	# bzf_11->bufN, D.5758
	leal	1(%rax), %edx	#, D.5758
	movq	-8(%rbp), %rax	# bzf, tmp92
	movl	%edx, 5004(%rax)	# D.5758, bzf_11->bufN
	.loc 1 1198 0
	addq	$1, -48(%rbp)	#, unused
	.loc 1 1199 0
	subl	$1, -40(%rbp)	#, nUnused
.L325:
	.loc 1 1196 0 discriminator 1
	cmpl	$0, -40(%rbp)	#, nUnused
	jg	.L326	#,
	.loc 1 1202 0
	movq	-8(%rbp), %rax	# bzf, tmp93
	leaq	5016(%rax), %rcx	#, D.5761
	movl	-36(%rbp), %edx	# small, tmp94
	movl	-32(%rbp), %eax	# verbosity, tmp95
	movl	%eax, %esi	# tmp95,
	movq	%rcx, %rdi	# D.5761,
	call	BZ2_bzDecompressInit	#
	movl	%eax, -12(%rbp)	# tmp96, ret
	.loc 1 1203 0
	cmpl	$0, -12(%rbp)	#, ret
	je	.L327	#,
	.loc 1 1204 0
	cmpq	$0, -24(%rbp)	#, bzerror
	je	.L328	#,
	.loc 1 1204 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# bzerror, tmp97
	movl	-12(%rbp), %edx	# ret, tmp98
	movl	%edx, (%rax)	# tmp98, *bzerror_5(D)
.L328:
	.loc 1 1204 0 discriminator 2
	cmpq	$0, -8(%rbp)	#, bzf
	je	.L329	#,
	.loc 1 1204 0 discriminator 1
	movq	-8(%rbp), %rax	# bzf, tmp99
	movl	-12(%rbp), %edx	# ret, tmp100
	movl	%edx, 5096(%rax)	# tmp100, bzf_11->lastErr
.L329:
	.loc 1 1204 0 discriminator 2
	movq	-8(%rbp), %rax	# bzf, tmp101
	movq	%rax, %rdi	# tmp101,
	call	free	#
	movl	$0, %eax	#, D.5757
	jmp	.L319	#
.L327:
	.loc 1 1206 0 is_stmt 1
	movq	-8(%rbp), %rax	# bzf, tmp102
	movl	5004(%rax), %eax	# bzf_11->bufN, D.5758
	movl	%eax, %edx	# D.5758, D.5762
	movq	-8(%rbp), %rax	# bzf, tmp103
	movl	%edx, 5024(%rax)	# D.5762, bzf_11->strm.avail_in
	.loc 1 1207 0
	movq	-8(%rbp), %rax	# bzf, tmp104
	leaq	4(%rax), %rdx	#, D.5763
	movq	-8(%rbp), %rax	# bzf, tmp105
	movq	%rdx, 5016(%rax)	# D.5763, bzf_11->strm.next_in
	.loc 1 1209 0
	movq	-8(%rbp), %rax	# bzf, tmp106
	movb	$1, 5100(%rax)	#, bzf_11->initialisedOk
	.loc 1 1210 0
	movq	-8(%rbp), %rax	# bzf, D.5757
.L319:
	.loc 1 1211 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	BZ2_bzReadOpen, .-BZ2_bzReadOpen
	.globl	BZ2_bzReadClose
	.type	BZ2_bzReadClose, @function
BZ2_bzReadClose:
.LFB29:
	.loc 1 1216 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# bzerror, bzerror
	movq	%rsi, -32(%rbp)	# b, b
	.loc 1 1217 0
	movq	-32(%rbp), %rax	# b, tmp62
	movq	%rax, -8(%rbp)	# tmp62, bzf
	.loc 1 1219 0
	cmpq	$0, -24(%rbp)	#, bzerror
	je	.L331	#,
	.loc 1 1219 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# bzerror, tmp63
	movl	$0, (%rax)	#, *bzerror_3(D)
.L331:
	.loc 1 1219 0 discriminator 2
	cmpq	$0, -8(%rbp)	#, bzf
	je	.L332	#,
	.loc 1 1219 0 discriminator 1
	movq	-8(%rbp), %rax	# bzf, tmp64
	movl	$0, 5096(%rax)	#, bzf_2->lastErr
.L332:
	.loc 1 1220 0 is_stmt 1
	cmpq	$0, -8(%rbp)	#, bzf
	jne	.L333	#,
	.loc 1 1221 0
	cmpq	$0, -24(%rbp)	#, bzerror
	je	.L334	#,
	.loc 1 1221 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# bzerror, tmp65
	movl	$0, (%rax)	#, *bzerror_3(D)
.L334:
	.loc 1 1221 0 discriminator 2
	cmpq	$0, -8(%rbp)	#, bzf
	je	.L335	#,
	.loc 1 1221 0 discriminator 1
	movq	-8(%rbp), %rax	# bzf, tmp66
	movl	$0, 5096(%rax)	#, bzf_2->lastErr
	jmp	.L330	#
.L335:
	.loc 1 1221 0 discriminator 2
	jmp	.L330	#
.L333:
	.loc 1 1223 0 is_stmt 1
	movq	-8(%rbp), %rax	# bzf, tmp67
	movzbl	5008(%rax), %eax	# bzf_2->writing, D.5764
	testb	%al, %al	# D.5764
	je	.L337	#,
	.loc 1 1224 0
	cmpq	$0, -24(%rbp)	#, bzerror
	je	.L338	#,
	.loc 1 1224 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# bzerror, tmp68
	movl	$-1, (%rax)	#, *bzerror_3(D)
.L338:
	.loc 1 1224 0 discriminator 2
	cmpq	$0, -8(%rbp)	#, bzf
	je	.L339	#,
	.loc 1 1224 0 discriminator 1
	movq	-8(%rbp), %rax	# bzf, tmp69
	movl	$-1, 5096(%rax)	#, bzf_2->lastErr
	jmp	.L330	#
.L339:
	.loc 1 1224 0 discriminator 2
	jmp	.L330	#
.L337:
	.loc 1 1226 0 is_stmt 1
	movq	-8(%rbp), %rax	# bzf, tmp70
	movzbl	5100(%rax), %eax	# bzf_2->initialisedOk, D.5764
	testb	%al, %al	# D.5764
	je	.L340	#,
	.loc 1 1227 0
	movq	-8(%rbp), %rax	# bzf, tmp71
	addq	$5016, %rax	#, D.5765
	movq	%rax, %rdi	# D.5765,
	call	BZ2_bzDecompressEnd	#
.L340:
	.loc 1 1228 0
	movq	-8(%rbp), %rax	# bzf, tmp72
	movq	%rax, %rdi	# tmp72,
	call	free	#
.L330:
	.loc 1 1229 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	BZ2_bzReadClose, .-BZ2_bzReadClose
	.globl	BZ2_bzRead
	.type	BZ2_bzRead, @function
BZ2_bzRead:
.LFB30:
	.loc 1 1238 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# bzerror, bzerror
	movq	%rsi, -32(%rbp)	# b, b
	movq	%rdx, -40(%rbp)	# buf, buf
	movl	%ecx, -44(%rbp)	# len, len
	.loc 1 1240 0
	movq	-32(%rbp), %rax	# b, tmp80
	movq	%rax, -8(%rbp)	# tmp80, bzf
	.loc 1 1242 0
	cmpq	$0, -24(%rbp)	#, bzerror
	je	.L342	#,
	.loc 1 1242 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# bzerror, tmp81
	movl	$0, (%rax)	#, *bzerror_4(D)
.L342:
	.loc 1 1242 0 discriminator 2
	cmpq	$0, -8(%rbp)	#, bzf
	je	.L343	#,
	.loc 1 1242 0 discriminator 1
	movq	-8(%rbp), %rax	# bzf, tmp82
	movl	$0, 5096(%rax)	#, bzf_3->lastErr
.L343:
	.loc 1 1244 0 is_stmt 1
	cmpq	$0, -8(%rbp)	#, bzf
	je	.L344	#,
	.loc 1 1244 0 is_stmt 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, buf
	je	.L344	#,
	cmpl	$0, -44(%rbp)	#, len
	jns	.L345	#,
.L344:
	.loc 1 1245 0 is_stmt 1
	cmpq	$0, -24(%rbp)	#, bzerror
	je	.L346	#,
	.loc 1 1245 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# bzerror, tmp83
	movl	$-2, (%rax)	#, *bzerror_4(D)
.L346:
	.loc 1 1245 0 discriminator 2
	cmpq	$0, -8(%rbp)	#, bzf
	je	.L347	#,
	.loc 1 1245 0 discriminator 1
	movq	-8(%rbp), %rax	# bzf, tmp84
	movl	$-2, 5096(%rax)	#, bzf_3->lastErr
.L347:
	.loc 1 1245 0 discriminator 2
	movl	$0, %eax	#, D.5766
	jmp	.L348	#
.L345:
	.loc 1 1247 0 is_stmt 1
	movq	-8(%rbp), %rax	# bzf, tmp85
	movzbl	5008(%rax), %eax	# bzf_3->writing, D.5767
	testb	%al, %al	# D.5767
	je	.L349	#,
	.loc 1 1248 0
	cmpq	$0, -24(%rbp)	#, bzerror
	je	.L350	#,
	.loc 1 1248 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# bzerror, tmp86
	movl	$-1, (%rax)	#, *bzerror_4(D)
.L350:
	.loc 1 1248 0 discriminator 2
	cmpq	$0, -8(%rbp)	#, bzf
	je	.L351	#,
	.loc 1 1248 0 discriminator 1
	movq	-8(%rbp), %rax	# bzf, tmp87
	movl	$-1, 5096(%rax)	#, bzf_3->lastErr
.L351:
	.loc 1 1248 0 discriminator 2
	movl	$0, %eax	#, D.5766
	jmp	.L348	#
.L349:
	.loc 1 1250 0 is_stmt 1
	cmpl	$0, -44(%rbp)	#, len
	jne	.L352	#,
	.loc 1 1251 0
	cmpq	$0, -24(%rbp)	#, bzerror
	je	.L353	#,
	.loc 1 1251 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# bzerror, tmp88
	movl	$0, (%rax)	#, *bzerror_4(D)
.L353:
	.loc 1 1251 0 discriminator 2
	cmpq	$0, -8(%rbp)	#, bzf
	je	.L354	#,
	.loc 1 1251 0 discriminator 1
	movq	-8(%rbp), %rax	# bzf, tmp89
	movl	$0, 5096(%rax)	#, bzf_3->lastErr
.L354:
	.loc 1 1251 0 discriminator 2
	movl	$0, %eax	#, D.5766
	jmp	.L348	#
.L352:
	.loc 1 1253 0 is_stmt 1
	movl	-44(%rbp), %edx	# len, len.17
	movq	-8(%rbp), %rax	# bzf, tmp90
	movl	%edx, 5048(%rax)	# len.17, bzf_3->strm.avail_out
	.loc 1 1254 0
	movq	-8(%rbp), %rax	# bzf, tmp91
	movq	-40(%rbp), %rdx	# buf, tmp92
	movq	%rdx, 5040(%rax)	# tmp92, bzf_3->strm.next_out
.L368:
	.loc 1 1261 0
	movq	-8(%rbp), %rax	# bzf, tmp93
	movl	5024(%rax), %eax	# bzf_3->strm.avail_in, D.5768
	testl	%eax, %eax	# D.5768
	jne	.L355	#,
	.loc 1 1261 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# bzf, tmp94
	movl	(%rax), %eax	# bzf_3->handle, D.5766
	movl	%eax, %edi	# D.5766,
	call	myfeof	#
	testb	%al, %al	# D.5767
	jne	.L355	#,
	.loc 1 1262 0 is_stmt 1
	movq	-8(%rbp), %rax	# bzf, tmp95
	movl	(%rax), %eax	# bzf_3->handle, D.5766
	movq	-8(%rbp), %rdx	# bzf, tmp96
	leaq	4(%rdx), %rdi	#, D.5769
	movl	%eax, %ecx	# D.5766,
	movl	$5000, %edx	#,
	movl	$1, %esi	#,
	call	spec_fread	#
	movl	%eax, -16(%rbp)	# tmp97, n
	.loc 1 1266 0
	movq	-8(%rbp), %rax	# bzf, tmp98
	movl	-16(%rbp), %edx	# n, tmp99
	movl	%edx, 5004(%rax)	# tmp99, bzf_3->bufN
	.loc 1 1267 0
	movq	-8(%rbp), %rax	# bzf, tmp100
	movl	5004(%rax), %eax	# bzf_3->bufN, D.5766
	movl	%eax, %edx	# D.5766, D.5768
	movq	-8(%rbp), %rax	# bzf, tmp101
	movl	%edx, 5024(%rax)	# D.5768, bzf_3->strm.avail_in
	.loc 1 1268 0
	movq	-8(%rbp), %rax	# bzf, tmp102
	leaq	4(%rax), %rdx	#, D.5769
	movq	-8(%rbp), %rax	# bzf, tmp103
	movq	%rdx, 5016(%rax)	# D.5769, bzf_3->strm.next_in
.L355:
	.loc 1 1271 0
	movq	-8(%rbp), %rax	# bzf, tmp104
	addq	$5016, %rax	#, D.5770
	movq	%rax, %rdi	# D.5770,
	call	BZ2_bzDecompress	#
	movl	%eax, -12(%rbp)	# tmp105, ret
	.loc 1 1273 0
	cmpl	$0, -12(%rbp)	#, ret
	je	.L356	#,
	.loc 1 1273 0 is_stmt 0 discriminator 1
	cmpl	$4, -12(%rbp)	#, ret
	je	.L356	#,
	.loc 1 1274 0 is_stmt 1
	cmpq	$0, -24(%rbp)	#, bzerror
	je	.L357	#,
	.loc 1 1274 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# bzerror, tmp106
	movl	-12(%rbp), %edx	# ret, tmp107
	movl	%edx, (%rax)	# tmp107, *bzerror_4(D)
.L357:
	.loc 1 1274 0 discriminator 2
	cmpq	$0, -8(%rbp)	#, bzf
	je	.L358	#,
	.loc 1 1274 0 discriminator 1
	movq	-8(%rbp), %rax	# bzf, tmp108
	movl	-12(%rbp), %edx	# ret, tmp109
	movl	%edx, 5096(%rax)	# tmp109, bzf_3->lastErr
.L358:
	.loc 1 1274 0 discriminator 2
	movl	$0, %eax	#, D.5766
	jmp	.L348	#
.L356:
	.loc 1 1276 0 is_stmt 1
	cmpl	$0, -12(%rbp)	#, ret
	jne	.L359	#,
	.loc 1 1276 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# bzf, tmp110
	movl	(%rax), %eax	# bzf_3->handle, D.5766
	movl	%eax, %edi	# D.5766,
	call	myfeof	#
	testb	%al, %al	# D.5767
	je	.L359	#,
	.loc 1 1277 0 is_stmt 1 discriminator 1
	movq	-8(%rbp), %rax	# bzf, tmp111
	movl	5024(%rax), %eax	# bzf_3->strm.avail_in, D.5768
	.loc 1 1276 0 discriminator 1
	testl	%eax, %eax	# D.5768
	jne	.L359	#,
	.loc 1 1277 0
	movq	-8(%rbp), %rax	# bzf, tmp112
	movl	5048(%rax), %eax	# bzf_3->strm.avail_out, D.5768
	testl	%eax, %eax	# D.5768
	je	.L359	#,
	.loc 1 1278 0
	cmpq	$0, -24(%rbp)	#, bzerror
	je	.L360	#,
	.loc 1 1278 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# bzerror, tmp113
	movl	$-7, (%rax)	#, *bzerror_4(D)
.L360:
	.loc 1 1278 0 discriminator 2
	cmpq	$0, -8(%rbp)	#, bzf
	je	.L361	#,
	.loc 1 1278 0 discriminator 1
	movq	-8(%rbp), %rax	# bzf, tmp114
	movl	$-7, 5096(%rax)	#, bzf_3->lastErr
.L361:
	.loc 1 1278 0 discriminator 2
	movl	$0, %eax	#, D.5766
	jmp	.L348	#
.L359:
	.loc 1 1280 0 is_stmt 1
	cmpl	$4, -12(%rbp)	#, ret
	jne	.L362	#,
	.loc 1 1281 0
	cmpq	$0, -24(%rbp)	#, bzerror
	je	.L363	#,
	.loc 1 1281 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# bzerror, tmp115
	movl	$4, (%rax)	#, *bzerror_4(D)
.L363:
	.loc 1 1281 0 discriminator 2
	cmpq	$0, -8(%rbp)	#, bzf
	je	.L364	#,
	.loc 1 1281 0 discriminator 1
	movq	-8(%rbp), %rax	# bzf, tmp116
	movl	$4, 5096(%rax)	#, bzf_3->lastErr
.L364:
	.loc 1 1282 0 is_stmt 1
	movl	-44(%rbp), %edx	# len, len.18
	movq	-8(%rbp), %rax	# bzf, tmp117
	movl	5048(%rax), %eax	# bzf_3->strm.avail_out, D.5768
	subl	%eax, %edx	# D.5768, D.5768
	movl	%edx, %eax	# D.5768, D.5768
	jmp	.L348	#
.L362:
	.loc 1 1283 0
	movq	-8(%rbp), %rax	# bzf, tmp118
	movl	5048(%rax), %eax	# bzf_3->strm.avail_out, D.5768
	testl	%eax, %eax	# D.5768
	jne	.L365	#,
	.loc 1 1284 0
	cmpq	$0, -24(%rbp)	#, bzerror
	je	.L366	#,
	.loc 1 1284 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# bzerror, tmp119
	movl	$0, (%rax)	#, *bzerror_4(D)
.L366:
	.loc 1 1284 0 discriminator 2
	cmpq	$0, -8(%rbp)	#, bzf
	je	.L367	#,
	.loc 1 1284 0 discriminator 1
	movq	-8(%rbp), %rax	# bzf, tmp120
	movl	$0, 5096(%rax)	#, bzf_3->lastErr
.L367:
	.loc 1 1284 0 discriminator 2
	movl	-44(%rbp), %eax	# len, D.5766
	jmp	.L348	#
.L365:
	.loc 1 1286 0 is_stmt 1
	jmp	.L368	#
.L348:
	.loc 1 1289 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	BZ2_bzRead, .-BZ2_bzRead
	.globl	BZ2_bzReadGetUnused
	.type	BZ2_bzReadGetUnused, @function
BZ2_bzReadGetUnused:
.LFB31:
	.loc 1 1298 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# bzerror, bzerror
	movq	%rsi, -32(%rbp)	# b, b
	movq	%rdx, -40(%rbp)	# unused, unused
	movq	%rcx, -48(%rbp)	# nUnused, nUnused
	.loc 1 1299 0
	movq	-32(%rbp), %rax	# b, tmp63
	movq	%rax, -8(%rbp)	# tmp63, bzf
	.loc 1 1300 0
	cmpq	$0, -8(%rbp)	#, bzf
	jne	.L370	#,
	.loc 1 1301 0
	cmpq	$0, -24(%rbp)	#, bzerror
	je	.L371	#,
	.loc 1 1301 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# bzerror, tmp64
	movl	$-2, (%rax)	#, *bzerror_3(D)
.L371:
	.loc 1 1301 0 discriminator 2
	cmpq	$0, -8(%rbp)	#, bzf
	je	.L372	#,
	.loc 1 1301 0 discriminator 1
	movq	-8(%rbp), %rax	# bzf, tmp65
	movl	$-2, 5096(%rax)	#, bzf_2->lastErr
	jmp	.L369	#
.L372:
	.loc 1 1301 0 discriminator 2
	jmp	.L369	#
.L370:
	.loc 1 1302 0 is_stmt 1
	movq	-8(%rbp), %rax	# bzf, tmp66
	movl	5096(%rax), %eax	# bzf_2->lastErr, D.5771
	cmpl	$4, %eax	#, D.5771
	je	.L374	#,
	.loc 1 1303 0
	cmpq	$0, -24(%rbp)	#, bzerror
	je	.L375	#,
	.loc 1 1303 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# bzerror, tmp67
	movl	$-1, (%rax)	#, *bzerror_3(D)
.L375:
	.loc 1 1303 0 discriminator 2
	cmpq	$0, -8(%rbp)	#, bzf
	je	.L376	#,
	.loc 1 1303 0 discriminator 1
	movq	-8(%rbp), %rax	# bzf, tmp68
	movl	$-1, 5096(%rax)	#, bzf_2->lastErr
	jmp	.L369	#
.L376:
	.loc 1 1303 0 discriminator 2
	jmp	.L369	#
.L374:
	.loc 1 1304 0 is_stmt 1
	cmpq	$0, -40(%rbp)	#, unused
	je	.L377	#,
	.loc 1 1304 0 is_stmt 0 discriminator 1
	cmpq	$0, -48(%rbp)	#, nUnused
	jne	.L378	#,
.L377:
	.loc 1 1305 0 is_stmt 1
	cmpq	$0, -24(%rbp)	#, bzerror
	je	.L379	#,
	.loc 1 1305 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# bzerror, tmp69
	movl	$-2, (%rax)	#, *bzerror_3(D)
.L379:
	.loc 1 1305 0 discriminator 2
	cmpq	$0, -8(%rbp)	#, bzf
	je	.L380	#,
	.loc 1 1305 0 discriminator 1
	movq	-8(%rbp), %rax	# bzf, tmp70
	movl	$-2, 5096(%rax)	#, bzf_2->lastErr
	jmp	.L369	#
.L380:
	.loc 1 1305 0 discriminator 2
	jmp	.L369	#
.L378:
	.loc 1 1307 0 is_stmt 1
	cmpq	$0, -24(%rbp)	#, bzerror
	je	.L381	#,
	.loc 1 1307 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# bzerror, tmp71
	movl	$0, (%rax)	#, *bzerror_3(D)
.L381:
	.loc 1 1307 0 discriminator 2
	cmpq	$0, -8(%rbp)	#, bzf
	je	.L382	#,
	.loc 1 1307 0 discriminator 1
	movq	-8(%rbp), %rax	# bzf, tmp72
	movl	$0, 5096(%rax)	#, bzf_2->lastErr
.L382:
	.loc 1 1308 0 is_stmt 1
	movq	-8(%rbp), %rax	# bzf, tmp73
	movl	5024(%rax), %eax	# bzf_2->strm.avail_in, D.5772
	movl	%eax, %edx	# D.5772, D.5771
	movq	-48(%rbp), %rax	# nUnused, tmp74
	movl	%edx, (%rax)	# D.5771, *nUnused_6(D)
	.loc 1 1309 0
	movq	-8(%rbp), %rax	# bzf, tmp75
	movq	5016(%rax), %rdx	# bzf_2->strm.next_in, D.5773
	movq	-40(%rbp), %rax	# unused, tmp76
	movq	%rdx, (%rax)	# D.5773, *unused_5(D)
.L369:
	.loc 1 1310 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	BZ2_bzReadGetUnused, .-BZ2_bzReadGetUnused
	.globl	BZ2_bzBuffToBuffCompress
	.type	BZ2_bzBuffToBuffCompress, @function
BZ2_bzBuffToBuffCompress:
.LFB32:
	.loc 1 1327 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$144, %rsp	#,
	movq	%rdi, -104(%rbp)	# dest, dest
	movq	%rsi, -112(%rbp)	# destLen, destLen
	movq	%rdx, -120(%rbp)	# source, source
	movl	%ecx, -124(%rbp)	# sourceLen, sourceLen
	movl	%r8d, -128(%rbp)	# blockSize100k, blockSize100k
	movl	%r9d, -132(%rbp)	# verbosity, verbosity
	.loc 1 1331 0
	cmpq	$0, -104(%rbp)	#, dest
	je	.L384	#,
	.loc 1 1331 0 is_stmt 0 discriminator 1
	cmpq	$0, -112(%rbp)	#, destLen
	je	.L384	#,
	cmpq	$0, -120(%rbp)	#, source
	je	.L384	#,
	.loc 1 1332 0 is_stmt 1
	cmpl	$0, -128(%rbp)	#, blockSize100k
	jle	.L384	#,
	.loc 1 1333 0
	cmpl	$9, -128(%rbp)	#, blockSize100k
	jg	.L384	#,
	.loc 1 1333 0 is_stmt 0 discriminator 1
	cmpl	$0, -132(%rbp)	#, verbosity
	js	.L384	#,
	.loc 1 1334 0 is_stmt 1
	cmpl	$4, -132(%rbp)	#, verbosity
	jg	.L384	#,
	.loc 1 1334 0 is_stmt 0 discriminator 1
	cmpl	$0, 16(%rbp)	#, workFactor
	js	.L384	#,
	.loc 1 1335 0 is_stmt 1
	cmpl	$250, 16(%rbp)	#, workFactor
	jle	.L385	#,
.L384:
	.loc 1 1336 0
	movl	$-2, %eax	#, D.5774
	jmp	.L393	#
.L385:
	.loc 1 1338 0
	cmpl	$0, 16(%rbp)	#, workFactor
	jne	.L387	#,
	.loc 1 1338 0 is_stmt 0 discriminator 1
	movl	$30, 16(%rbp)	#, workFactor
.L387:
	.loc 1 1339 0 is_stmt 1
	movq	$0, -24(%rbp)	#, strm.bzalloc
	.loc 1 1340 0
	movq	$0, -16(%rbp)	#, strm.bzfree
	.loc 1 1341 0
	movq	$0, -8(%rbp)	#, strm.opaque
	.loc 1 1342 0
	movl	-132(%rbp), %edx	# verbosity, tmp65
	movl	-128(%rbp), %esi	# blockSize100k, tmp66
	leaq	-80(%rbp), %rax	#, tmp67
	movl	16(%rbp), %ecx	# workFactor,
	movq	%rax, %rdi	# tmp67,
	call	BZ2_bzCompressInit	#
	movl	%eax, -84(%rbp)	# tmp68, ret
	.loc 1 1344 0
	cmpl	$0, -84(%rbp)	#, ret
	je	.L388	#,
	.loc 1 1344 0 is_stmt 0 discriminator 1
	movl	-84(%rbp), %eax	# ret, D.5774
	jmp	.L393	#
.L388:
	.loc 1 1346 0 is_stmt 1
	movq	-120(%rbp), %rax	# source, tmp69
	movq	%rax, -80(%rbp)	# tmp69, strm.next_in
	.loc 1 1347 0
	movq	-104(%rbp), %rax	# dest, tmp70
	movq	%rax, -56(%rbp)	# tmp70, strm.next_out
	.loc 1 1348 0
	movl	-124(%rbp), %eax	# sourceLen, tmp71
	movl	%eax, -72(%rbp)	# tmp71, strm.avail_in
	.loc 1 1349 0
	movq	-112(%rbp), %rax	# destLen, tmp72
	movl	(%rax), %eax	# *destLen_4(D), D.5775
	movl	%eax, -48(%rbp)	# D.5775, strm.avail_out
	.loc 1 1351 0
	leaq	-80(%rbp), %rax	#, tmp73
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp73,
	call	BZ2_bzCompress	#
	movl	%eax, -84(%rbp)	# tmp74, ret
	.loc 1 1352 0
	cmpl	$3, -84(%rbp)	#, ret
	jne	.L389	#,
	.loc 1 1352 0 is_stmt 0 discriminator 1
	nop
.L390:
	.loc 1 1361 0 is_stmt 1 discriminator 1
	leaq	-80(%rbp), %rax	#, tmp78
	movq	%rax, %rdi	# tmp78,
	call	BZ2_bzCompressEnd	#
	.loc 1 1362 0 discriminator 1
	movl	$-8, %eax	#, D.5774
	jmp	.L393	#
.L389:
	.loc 1 1353 0
	cmpl	$4, -84(%rbp)	#, ret
	je	.L391	#,
	.loc 1 1353 0 is_stmt 0 discriminator 1
	nop
.L392:
	.loc 1 1365 0 is_stmt 1 discriminator 1
	leaq	-80(%rbp), %rax	#, tmp79
	movq	%rax, %rdi	# tmp79,
	call	BZ2_bzCompressEnd	#
	.loc 1 1366 0 discriminator 1
	movl	-84(%rbp), %eax	# ret, D.5774
	jmp	.L393	#
.L391:
	.loc 1 1356 0
	movq	-112(%rbp), %rax	# destLen, tmp75
	movl	(%rax), %edx	# *destLen_4(D), D.5775
	movl	-48(%rbp), %eax	# strm.avail_out, D.5775
	subl	%eax, %edx	# D.5775, D.5775
	movq	-112(%rbp), %rax	# destLen, tmp76
	movl	%edx, (%rax)	# D.5775, *destLen_4(D)
	.loc 1 1357 0
	leaq	-80(%rbp), %rax	#, tmp77
	movq	%rax, %rdi	# tmp77,
	call	BZ2_bzCompressEnd	#
	.loc 1 1358 0
	movl	$0, %eax	#, D.5774
.L393:
	.loc 1 1367 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	BZ2_bzBuffToBuffCompress, .-BZ2_bzBuffToBuffCompress
	.globl	BZ2_bzBuffToBuffDecompress
	.type	BZ2_bzBuffToBuffDecompress, @function
BZ2_bzBuffToBuffDecompress:
.LFB33:
	.loc 1 1378 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$144, %rsp	#,
	movq	%rdi, -104(%rbp)	# dest, dest
	movq	%rsi, -112(%rbp)	# destLen, destLen
	movq	%rdx, -120(%rbp)	# source, source
	movl	%ecx, -124(%rbp)	# sourceLen, sourceLen
	movl	%r8d, -128(%rbp)	# small, small
	movl	%r9d, -132(%rbp)	# verbosity, verbosity
	.loc 1 1382 0
	cmpq	$0, -104(%rbp)	#, dest
	je	.L395	#,
	.loc 1 1382 0 is_stmt 0 discriminator 1
	cmpq	$0, -112(%rbp)	#, destLen
	je	.L395	#,
	cmpq	$0, -120(%rbp)	#, source
	je	.L395	#,
	.loc 1 1383 0 is_stmt 1
	cmpl	$0, -128(%rbp)	#, small
	je	.L396	#,
	.loc 1 1384 0
	cmpl	$1, -128(%rbp)	#, small
	jne	.L395	#,
.L396:
	.loc 1 1384 0 is_stmt 0 discriminator 1
	cmpl	$0, -132(%rbp)	#, verbosity
	js	.L395	#,
	.loc 1 1385 0 is_stmt 1
	cmpl	$4, -132(%rbp)	#, verbosity
	jle	.L397	#,
.L395:
	.loc 1 1386 0
	movl	$-2, %eax	#, D.5776
	jmp	.L405	#
.L397:
	.loc 1 1388 0
	movq	$0, -24(%rbp)	#, strm.bzalloc
	.loc 1 1389 0
	movq	$0, -16(%rbp)	#, strm.bzfree
	.loc 1 1390 0
	movq	$0, -8(%rbp)	#, strm.opaque
	.loc 1 1391 0
	movl	-128(%rbp), %edx	# small, tmp66
	movl	-132(%rbp), %ecx	# verbosity, tmp67
	leaq	-80(%rbp), %rax	#, tmp68
	movl	%ecx, %esi	# tmp67,
	movq	%rax, %rdi	# tmp68,
	call	BZ2_bzDecompressInit	#
	movl	%eax, -84(%rbp)	# tmp69, ret
	.loc 1 1392 0
	cmpl	$0, -84(%rbp)	#, ret
	je	.L399	#,
	.loc 1 1392 0 is_stmt 0 discriminator 1
	movl	-84(%rbp), %eax	# ret, D.5776
	jmp	.L405	#
.L399:
	.loc 1 1394 0 is_stmt 1
	movq	-120(%rbp), %rax	# source, tmp70
	movq	%rax, -80(%rbp)	# tmp70, strm.next_in
	.loc 1 1395 0
	movq	-104(%rbp), %rax	# dest, tmp71
	movq	%rax, -56(%rbp)	# tmp71, strm.next_out
	.loc 1 1396 0
	movl	-124(%rbp), %eax	# sourceLen, tmp72
	movl	%eax, -72(%rbp)	# tmp72, strm.avail_in
	.loc 1 1397 0
	movq	-112(%rbp), %rax	# destLen, tmp73
	movl	(%rax), %eax	# *destLen_3(D), D.5777
	movl	%eax, -48(%rbp)	# D.5777, strm.avail_out
	.loc 1 1399 0
	leaq	-80(%rbp), %rax	#, tmp74
	movq	%rax, %rdi	# tmp74,
	call	BZ2_bzDecompress	#
	movl	%eax, -84(%rbp)	# tmp75, ret
	.loc 1 1400 0
	cmpl	$0, -84(%rbp)	#, ret
	jne	.L400	#,
	.loc 1 1400 0 is_stmt 0 discriminator 1
	nop
.L401:
	.loc 1 1409 0 is_stmt 1 discriminator 1
	movl	-48(%rbp), %eax	# strm.avail_out, D.5777
	testl	%eax, %eax	# D.5777
	je	.L404	#,
	jmp	.L406	#
.L400:
	.loc 1 1401 0
	cmpl	$4, -84(%rbp)	#, ret
	je	.L402	#,
	.loc 1 1401 0 is_stmt 0 discriminator 1
	nop
.L403:
	.loc 1 1418 0 is_stmt 1 discriminator 1
	leaq	-80(%rbp), %rax	#, tmp81
	movq	%rax, %rdi	# tmp81,
	call	BZ2_bzDecompressEnd	#
	.loc 1 1419 0 discriminator 1
	movl	-84(%rbp), %eax	# ret, D.5776
	jmp	.L405	#
.L402:
	.loc 1 1404 0
	movq	-112(%rbp), %rax	# destLen, tmp76
	movl	(%rax), %edx	# *destLen_3(D), D.5777
	movl	-48(%rbp), %eax	# strm.avail_out, D.5777
	subl	%eax, %edx	# D.5777, D.5777
	movq	-112(%rbp), %rax	# destLen, tmp77
	movl	%edx, (%rax)	# D.5777, *destLen_3(D)
	.loc 1 1405 0
	leaq	-80(%rbp), %rax	#, tmp78
	movq	%rax, %rdi	# tmp78,
	call	BZ2_bzDecompressEnd	#
	.loc 1 1406 0
	movl	$0, %eax	#, D.5776
	jmp	.L405	#
.L406:
	.loc 1 1410 0
	leaq	-80(%rbp), %rax	#, tmp79
	movq	%rax, %rdi	# tmp79,
	call	BZ2_bzDecompressEnd	#
	.loc 1 1411 0
	movl	$-7, %eax	#, D.5776
	jmp	.L405	#
.L404:
	.loc 1 1413 0
	leaq	-80(%rbp), %rax	#, tmp80
	movq	%rax, %rdi	# tmp80,
	call	BZ2_bzDecompressEnd	#
	.loc 1 1414 0
	movl	$-8, %eax	#, D.5776
.L405:
	.loc 1 1420 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	BZ2_bzBuffToBuffDecompress, .-BZ2_bzBuffToBuffDecompress
	.section	.rodata
.LC4:
	.string	"1.0.3, 15-Feb-2005"
	.text
	.globl	BZ2_bzlibVersion
	.type	BZ2_bzlibVersion, @function
BZ2_bzlibVersion:
.LFB34:
	.loc 1 1440 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 1441 0
	movl	$.LC4, %eax	#, D.5778
	.loc 1 1442 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	BZ2_bzlibVersion, .-BZ2_bzlibVersion
	.section	.rodata
.LC5:
	.string	"w"
.LC6:
	.string	"r"
	.text
	.type	bzopen_or_bzdopen, @function
bzopen_or_bzdopen:
.LFB35:
	.loc 1 1463 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$5112, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -5096(%rbp)	# path, path
	movl	%esi, -5100(%rbp)	# fd, fd
	movq	%rdx, -5112(%rbp)	# mode, mode
	movl	%ecx, -5104(%rbp)	# open_mode, open_mode
	.loc 1 1463 0
	movq	%fs:40, %rax	#, tmp118
	movq	%rax, -24(%rbp)	# tmp118, D.5790
	xorl	%eax, %eax	# tmp118
	.loc 1 1466 0
	movl	$9, -5076(%rbp)	#, blockSize100k
	.loc 1 1467 0
	movl	$0, -5072(%rbp)	#, writing
	.loc 1 1468 0
	movq	$0, -5040(%rbp)	#, mode2
	movw	$0, -5032(%rbp)	#, mode2
	.loc 1 1470 0
	movl	$0, -5068(%rbp)	#, fp
	.loc 1 1474 0
	movq	$0, -5048(%rbp)	#, bzfp
	.loc 1 1475 0
	movl	$0, -5060(%rbp)	#, verbosity
	.loc 1 1476 0
	movl	$30, -5056(%rbp)	#, workFactor
	.loc 1 1477 0
	movl	$0, -5064(%rbp)	#, smallMode
	.loc 1 1478 0
	movl	$0, -5052(%rbp)	#, nUnused
	.loc 1 1480 0
	cmpq	$0, -5112(%rbp)	#, mode
	jne	.L410	#,
	.loc 1 1480 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.5780
	jmp	.L432	#
.L410:
	.loc 1 1481 0 is_stmt 1
	jmp	.L412	#
.L418:
	.loc 1 1482 0
	movq	-5112(%rbp), %rax	# mode, tmp82
	movzbl	(%rax), %eax	# *mode_1, D.5781
	movsbl	%al, %eax	# D.5781, D.5782
	cmpl	$115, %eax	#, D.5782
	je	.L414	#,
	cmpl	$119, %eax	#, D.5782
	je	.L415	#,
	cmpl	$114, %eax	#, D.5782
	jne	.L434	#,
	.loc 1 1484 0
	movl	$0, -5072(%rbp)	#, writing
	jmp	.L417	#
.L415:
	.loc 1 1486 0
	movl	$1, -5072(%rbp)	#, writing
	jmp	.L417	#
.L414:
	.loc 1 1488 0
	movl	$1, -5064(%rbp)	#, smallMode
	jmp	.L417	#
.L434:
	.loc 1 1490 0
	call	__ctype_b_loc	#
	movq	(%rax), %rdx	# *_31, D.5784
	movq	-5112(%rbp), %rax	# mode, tmp83
	movzbl	(%rax), %eax	# *mode_1, D.5781
	movsbq	%al, %rax	# D.5781, D.5785
	addq	%rax, %rax	# D.5785
	addq	%rdx, %rax	# D.5784, D.5784
	movzwl	(%rax), %eax	# *_36, D.5786
	movzwl	%ax, %eax	# D.5786, D.5782
	andl	$2048, %eax	#, D.5782
	testl	%eax, %eax	# D.5782
	je	.L417	#,
	.loc 1 1491 0
	movq	-5112(%rbp), %rax	# mode, tmp84
	movzbl	(%rax), %eax	# *mode_1, D.5781
	movsbl	%al, %eax	# D.5781, D.5782
	subl	$48, %eax	#, tmp85
	movl	%eax, -5076(%rbp)	# tmp85, blockSize100k
.L417:
	.loc 1 1494 0
	addq	$1, -5112(%rbp)	#, mode
.L412:
	.loc 1 1481 0 discriminator 1
	movq	-5112(%rbp), %rax	# mode, tmp86
	movzbl	(%rax), %eax	# *mode_1, D.5781
	testb	%al, %al	# D.5781
	jne	.L418	#,
	.loc 1 1496 0
	cmpl	$0, -5072(%rbp)	#, writing
	je	.L419	#,
	.loc 1 1496 0 is_stmt 0 discriminator 1
	movl	$.LC5, %edx	#, iftmp.19
	jmp	.L420	#
.L419:
	.loc 1 1496 0 discriminator 2
	movl	$.LC6, %edx	#, iftmp.19
.L420:
	.loc 1 1496 0 discriminator 3
	leaq	-5040(%rbp), %rax	#, tmp87
	movq	$-1, %rcx	#, tmp91
	movq	%rax, %rsi	# tmp87, tmp90
	movl	$0, %eax	#, tmp92
	movq	%rsi, %rdi	# tmp90, tmp90
	repnz scasb
	movq	%rcx, %rax	# tmp88, tmp88
	notq	%rax	# tmp89
	leaq	-1(%rax), %rcx	#, D.5785
	leaq	-5040(%rbp), %rax	#, tmp93
	addq	%rax, %rcx	# tmp93, D.5787
	movzwl	(%rdx), %eax	# MEM[(void *)iftmp.19_14], tmp94
	movw	%ax, (%rcx)	# tmp94, MEM[(void *)_47]
	.loc 1 1497 0 is_stmt 1 discriminator 3
	leaq	-5040(%rbp), %rax	#, tmp95
	movq	$-1, %rcx	#, tmp99
	movq	%rax, %rdx	# tmp95, tmp98
	movl	$0, %eax	#, tmp100
	movq	%rdx, %rdi	# tmp98, tmp98
	repnz scasb
	movq	%rcx, %rax	# tmp96, tmp96
	notq	%rax	# tmp97
	leaq	-1(%rax), %rdx	#, D.5785
	leaq	-5040(%rbp), %rax	#, tmp101
	addq	%rdx, %rax	# D.5785, D.5787
	movw	$98, (%rax)	#, MEM[(void *)_49]
	.loc 1 1499 0 discriminator 3
	cmpl	$0, -5104(%rbp)	#, open_mode
	jne	.L421	#,
	.loc 1 1500 0
	cmpq	$0, -5096(%rbp)	#, path
	je	.L422	#,
	.loc 1 1500 0 is_stmt 0 discriminator 1
	movq	-5096(%rbp), %rax	# path, tmp102
	movzbl	(%rax), %eax	# MEM[(const unsigned char * {ref-all})path_51(D)], D.5788
	testb	%al, %al	# D.5788
	jne	.L423	#,
.L422:
	.loc 1 1502 0 is_stmt 1
	cmpl	$0, -5072(%rbp)	#, writing
	setne	%al	#, D.5789
	movzbl	%al, %eax	# D.5789, tmp103
	movl	%eax, -5068(%rbp)	# tmp103, fp
	jmp	.L425	#
.L423:
	.loc 1 1508 0
	movl	$0, -5068(%rbp)	#, fp
	jmp	.L425	#
.L421:
	.loc 1 1512 0
	movl	$0, -5068(%rbp)	#, fp
.L425:
	.loc 1 1521 0
	cmpl	$0, -5068(%rbp)	#, fp
	jne	.L426	#,
	.loc 1 1521 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.5780
	jmp	.L432	#
.L426:
	.loc 1 1523 0 is_stmt 1
	cmpl	$0, -5072(%rbp)	#, writing
	je	.L427	#,
	.loc 1 1525 0
	cmpl	$0, -5076(%rbp)	#, blockSize100k
	jg	.L428	#,
	.loc 1 1525 0 is_stmt 0 discriminator 1
	movl	$1, -5076(%rbp)	#, blockSize100k
.L428:
	.loc 1 1526 0 is_stmt 1
	cmpl	$9, -5076(%rbp)	#, blockSize100k
	jle	.L429	#,
	.loc 1 1526 0 is_stmt 0 discriminator 1
	movl	$9, -5076(%rbp)	#, blockSize100k
.L429:
	.loc 1 1527 0 is_stmt 1
	movl	-5056(%rbp), %edi	# workFactor, tmp104
	movl	-5060(%rbp), %ecx	# verbosity, tmp105
	movl	-5076(%rbp), %edx	# blockSize100k, tmp106
	movl	-5068(%rbp), %esi	# fp, tmp107
	leaq	-5080(%rbp), %rax	#, tmp108
	movl	%edi, %r8d	# tmp104,
	movq	%rax, %rdi	# tmp108,
	call	BZ2_bzWriteOpen	#
	movq	%rax, -5048(%rbp)	# tmp109, bzfp
	jmp	.L430	#
.L427:
	.loc 1 1530 0
	movl	-5052(%rbp), %r8d	# nUnused, tmp110
	leaq	-5024(%rbp), %rdi	#, tmp111
	movl	-5064(%rbp), %ecx	# smallMode, tmp112
	movl	-5060(%rbp), %edx	# verbosity, tmp113
	movl	-5068(%rbp), %esi	# fp, tmp114
	leaq	-5080(%rbp), %rax	#, tmp115
	movl	%r8d, %r9d	# tmp110,
	movq	%rdi, %r8	# tmp111,
	movq	%rax, %rdi	# tmp115,
	call	BZ2_bzReadOpen	#
	movq	%rax, -5048(%rbp)	# tmp116, bzfp
.L430:
	.loc 1 1533 0
	cmpq	$0, -5048(%rbp)	#, bzfp
	jne	.L431	#,
	.loc 1 1539 0
	movl	$0, %eax	#, D.5780
	jmp	.L432	#
.L431:
	.loc 1 1541 0
	movq	-5048(%rbp), %rax	# bzfp, D.5780
.L432:
	.loc 1 1542 0
	movq	-24(%rbp), %rbx	# D.5790, tmp119
	xorq	%fs:40, %rbx	#, tmp119
	je	.L433	#,
	call	__stack_chk_fail	#
.L433:
	addq	$5112, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	bzopen_or_bzdopen, .-bzopen_or_bzdopen
	.globl	BZ2_bzopen
	.type	BZ2_bzopen, @function
BZ2_bzopen:
.LFB36:
	.loc 1 1554 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# path, path
	movq	%rsi, -16(%rbp)	# mode, mode
	.loc 1 1555 0
	movq	-16(%rbp), %rdx	# mode, tmp61
	movq	-8(%rbp), %rax	# path, tmp62
	movl	$0, %ecx	#,
	movl	$-1, %esi	#,
	movq	%rax, %rdi	# tmp62,
	call	bzopen_or_bzdopen	#
	.loc 1 1556 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	BZ2_bzopen, .-BZ2_bzopen
	.globl	BZ2_bzdopen
	.type	BZ2_bzdopen, @function
BZ2_bzdopen:
.LFB37:
	.loc 1 1563 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# fd, fd
	movq	%rsi, -16(%rbp)	# mode, mode
	.loc 1 1564 0
	movq	-16(%rbp), %rdx	# mode, tmp61
	movl	-4(%rbp), %eax	# fd, tmp62
	movl	$1, %ecx	#,
	movl	%eax, %esi	# tmp62,
	movl	$0, %edi	#,
	call	bzopen_or_bzdopen	#
	.loc 1 1565 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	BZ2_bzdopen, .-BZ2_bzdopen
	.globl	BZ2_bzread
	.type	BZ2_bzread, @function
BZ2_bzread:
.LFB38:
	.loc 1 1570 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# b, b
	movq	%rsi, -32(%rbp)	# buf, buf
	movl	%edx, -36(%rbp)	# len, len
	.loc 1 1572 0
	movq	-24(%rbp), %rax	# b, tmp64
	movl	5096(%rax), %eax	# MEM[(struct bzFile *)b_2(D)].lastErr, D.5797
	cmpl	$4, %eax	#, D.5797
	jne	.L440	#,
	.loc 1 1572 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.5797
	jmp	.L444	#
.L440:
	.loc 1 1573 0 is_stmt 1
	movl	-36(%rbp), %ecx	# len, tmp65
	movq	-32(%rbp), %rdx	# buf, tmp66
	movq	-24(%rbp), %rsi	# b, tmp67
	leaq	-8(%rbp), %rax	#, tmp68
	movq	%rax, %rdi	# tmp68,
	call	BZ2_bzRead	#
	movl	%eax, -4(%rbp)	# tmp69, nread
	.loc 1 1574 0
	movl	-8(%rbp), %eax	# bzerr, bzerr.20
	testl	%eax, %eax	# bzerr.20
	je	.L442	#,
	.loc 1 1574 0 is_stmt 0 discriminator 1
	movl	-8(%rbp), %eax	# bzerr, bzerr.21
	cmpl	$4, %eax	#, bzerr.21
	jne	.L443	#,
.L442:
	.loc 1 1575 0 is_stmt 1
	movl	-4(%rbp), %eax	# nread, D.5797
	jmp	.L444	#
.L443:
	.loc 1 1577 0
	movl	$-1, %eax	#, D.5797
.L444:
	.loc 1 1579 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	BZ2_bzread, .-BZ2_bzread
	.globl	BZ2_bzwrite
	.type	BZ2_bzwrite, @function
BZ2_bzwrite:
.LFB39:
	.loc 1 1584 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# b, b
	movq	%rsi, -32(%rbp)	# buf, buf
	movl	%edx, -36(%rbp)	# len, len
	.loc 1 1587 0
	movl	-36(%rbp), %ecx	# len, tmp62
	movq	-32(%rbp), %rdx	# buf, tmp63
	movq	-24(%rbp), %rsi	# b, tmp64
	leaq	-4(%rbp), %rax	#, tmp65
	movq	%rax, %rdi	# tmp65,
	call	BZ2_bzWrite	#
	.loc 1 1588 0
	movl	-4(%rbp), %eax	# bzerr, bzerr.22
	testl	%eax, %eax	# bzerr.22
	jne	.L446	#,
	.loc 1 1589 0
	movl	-36(%rbp), %eax	# len, D.5798
	jmp	.L448	#
.L446:
	.loc 1 1591 0
	movl	$-1, %eax	#, D.5798
.L448:
	.loc 1 1593 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	BZ2_bzwrite, .-BZ2_bzwrite
	.globl	BZ2_bzflush
	.type	BZ2_bzflush, @function
BZ2_bzflush:
.LFB40:
	.loc 1 1598 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# b, b
	.loc 1 1600 0
	movl	$0, %eax	#, D.5799
	.loc 1 1601 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	BZ2_bzflush, .-BZ2_bzflush
	.globl	BZ2_bzclose
	.type	BZ2_bzclose, @function
BZ2_bzclose:
.LFB41:
	.loc 1 1606 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# b, b
	.loc 1 1609 0
	movq	-24(%rbp), %rax	# b, tmp61
	movl	(%rax), %eax	# MEM[(struct bzFile *)b_1(D)].handle, tmp62
	movl	%eax, -4(%rbp)	# tmp62, fp
	.loc 1 1614 0
	cmpq	$0, -24(%rbp)	#, b
	je	.L451	#,
	.loc 1 1615 0
	movq	-24(%rbp), %rax	# b, tmp63
	movzbl	5008(%rax), %eax	# MEM[(struct bzFile *)b_1(D)].writing, D.5800
	testb	%al, %al	# D.5800
	je	.L454	#,
	.loc 1 1616 0
	movq	-24(%rbp), %rsi	# b, tmp64
	leaq	-8(%rbp), %rax	#, tmp65
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp65,
	call	BZ2_bzWriteClose	#
	.loc 1 1617 0
	movl	-8(%rbp), %eax	# bzerr, bzerr.23
	testl	%eax, %eax	# bzerr.23
	je	.L451	#,
	.loc 1 1618 0
	movq	-24(%rbp), %rax	# b, tmp66
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	$1, %edx	#,
	movq	%rax, %rsi	# tmp66,
	movl	$0, %edi	#,
	call	BZ2_bzWriteClose	#
	jmp	.L451	#
.L454:
	.loc 1 1621 0
	movq	-24(%rbp), %rdx	# b, tmp67
	leaq	-8(%rbp), %rax	#, tmp68
	movq	%rdx, %rsi	# tmp67,
	movq	%rax, %rdi	# tmp68,
	call	BZ2_bzReadClose	#
.L451:
	.loc 1 1630 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE41:
	.size	BZ2_bzclose, .-BZ2_bzclose
	.section	.rodata
.LC7:
	.string	"OK"
.LC8:
	.string	"SEQUENCE_ERROR"
.LC9:
	.string	"PARAM_ERROR"
.LC10:
	.string	"MEM_ERROR"
.LC11:
	.string	"DATA_ERROR"
.LC12:
	.string	"DATA_ERROR_MAGIC"
.LC13:
	.string	"IO_ERROR"
.LC14:
	.string	"UNEXPECTED_EOF"
.LC15:
	.string	"OUTBUFF_FULL"
.LC16:
	.string	"CONFIG_ERROR"
.LC17:
	.string	"???"
	.data
	.align 32
	.type	bzerrorstrings, @object
	.size	bzerrorstrings, 128
bzerrorstrings:
	.quad	.LC7
	.quad	.LC8
	.quad	.LC9
	.quad	.LC10
	.quad	.LC11
	.quad	.LC12
	.quad	.LC13
	.quad	.LC14
	.quad	.LC15
	.quad	.LC16
	.quad	.LC17
	.quad	.LC17
	.quad	.LC17
	.quad	.LC17
	.quad	.LC17
	.quad	.LC17
	.text
	.globl	BZ2_bzerror
	.type	BZ2_bzerror, @function
BZ2_bzerror:
.LFB42:
	.loc 1 1658 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# b, b
	movq	%rsi, -32(%rbp)	# errnum, errnum
	.loc 1 1659 0
	movq	-24(%rbp), %rax	# b, tmp62
	movl	5096(%rax), %eax	# MEM[(struct bzFile *)b_2(D)].lastErr, tmp63
	movl	%eax, -4(%rbp)	# tmp63, err
	.loc 1 1661 0
	cmpl	$0, -4(%rbp)	#, err
	jle	.L458	#,
	.loc 1 1661 0 is_stmt 0 discriminator 1
	movl	$0, -4(%rbp)	#, err
.L458:
	.loc 1 1662 0 is_stmt 1
	movq	-32(%rbp), %rax	# errnum, tmp64
	movl	-4(%rbp), %edx	# err, tmp65
	movl	%edx, (%rax)	# tmp65, *errnum_5(D)
	.loc 1 1663 0
	movl	-4(%rbp), %eax	# err, tmp66
	negl	%eax	# D.5812
	cltq
	movq	bzerrorstrings(,%rax,8), %rax	# bzerrorstrings, D.5813
	.loc 1 1664 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.size	BZ2_bzerror, .-BZ2_bzerror
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/libio.h"
	.file 5 "bzlib.h"
	.file 6 "bzlib_private.h"
	.file 7 "/usr/include/stdio.h"
	.file 8 "/usr/include/ctype.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1c5b
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF267
	.byte	0x1
	.long	.LASF268
	.long	.LASF269
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
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
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
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.long	.LASF8
	.byte	0x3
	.byte	0x8c
	.long	0x69
	.uleb128 0x2
	.long	.LASF9
	.byte	0x3
	.byte	0x8d
	.long	0x69
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0x95
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x6
	.byte	0x8
	.long	0x3f
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF12
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF13
	.uleb128 0x7
	.long	.LASF43
	.byte	0xd8
	.byte	0x4
	.byte	0xf6
	.long	0x231
	.uleb128 0x8
	.long	.LASF14
	.byte	0x4
	.byte	0xf7
	.long	0x3f
	.byte	0
	.uleb128 0x8
	.long	.LASF15
	.byte	0x4
	.byte	0xfc
	.long	0x8f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF16
	.byte	0x4
	.byte	0xfd
	.long	0x8f
	.byte	0x10
	.uleb128 0x8
	.long	.LASF17
	.byte	0x4
	.byte	0xfe
	.long	0x8f
	.byte	0x18
	.uleb128 0x8
	.long	.LASF18
	.byte	0x4
	.byte	0xff
	.long	0x8f
	.byte	0x20
	.uleb128 0x9
	.long	.LASF19
	.byte	0x4
	.value	0x100
	.long	0x8f
	.byte	0x28
	.uleb128 0x9
	.long	.LASF20
	.byte	0x4
	.value	0x101
	.long	0x8f
	.byte	0x30
	.uleb128 0x9
	.long	.LASF21
	.byte	0x4
	.value	0x102
	.long	0x8f
	.byte	0x38
	.uleb128 0x9
	.long	.LASF22
	.byte	0x4
	.value	0x103
	.long	0x8f
	.byte	0x40
	.uleb128 0x9
	.long	.LASF23
	.byte	0x4
	.value	0x105
	.long	0x8f
	.byte	0x48
	.uleb128 0x9
	.long	.LASF24
	.byte	0x4
	.value	0x106
	.long	0x8f
	.byte	0x50
	.uleb128 0x9
	.long	.LASF25
	.byte	0x4
	.value	0x107
	.long	0x8f
	.byte	0x58
	.uleb128 0x9
	.long	.LASF26
	.byte	0x4
	.value	0x109
	.long	0x269
	.byte	0x60
	.uleb128 0x9
	.long	.LASF27
	.byte	0x4
	.value	0x10b
	.long	0x26f
	.byte	0x68
	.uleb128 0x9
	.long	.LASF28
	.byte	0x4
	.value	0x10d
	.long	0x3f
	.byte	0x70
	.uleb128 0x9
	.long	.LASF29
	.byte	0x4
	.value	0x111
	.long	0x3f
	.byte	0x74
	.uleb128 0x9
	.long	.LASF30
	.byte	0x4
	.value	0x113
	.long	0x70
	.byte	0x78
	.uleb128 0x9
	.long	.LASF31
	.byte	0x4
	.value	0x117
	.long	0x4d
	.byte	0x80
	.uleb128 0x9
	.long	.LASF32
	.byte	0x4
	.value	0x118
	.long	0x5b
	.byte	0x82
	.uleb128 0x9
	.long	.LASF33
	.byte	0x4
	.value	0x119
	.long	0x275
	.byte	0x83
	.uleb128 0x9
	.long	.LASF34
	.byte	0x4
	.value	0x11d
	.long	0x285
	.byte	0x88
	.uleb128 0x9
	.long	.LASF35
	.byte	0x4
	.value	0x126
	.long	0x7b
	.byte	0x90
	.uleb128 0x9
	.long	.LASF36
	.byte	0x4
	.value	0x12f
	.long	0x8d
	.byte	0x98
	.uleb128 0x9
	.long	.LASF37
	.byte	0x4
	.value	0x130
	.long	0x8d
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF38
	.byte	0x4
	.value	0x131
	.long	0x8d
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF39
	.byte	0x4
	.value	0x132
	.long	0x8d
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF40
	.byte	0x4
	.value	0x133
	.long	0x2d
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF41
	.byte	0x4
	.value	0x135
	.long	0x3f
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF42
	.byte	0x4
	.value	0x137
	.long	0x28b
	.byte	0xc4
	.byte	0
	.uleb128 0xa
	.long	.LASF73
	.byte	0x4
	.byte	0x9b
	.uleb128 0x7
	.long	.LASF44
	.byte	0x18
	.byte	0x4
	.byte	0xa1
	.long	0x269
	.uleb128 0x8
	.long	.LASF45
	.byte	0x4
	.byte	0xa2
	.long	0x269
	.byte	0
	.uleb128 0x8
	.long	.LASF46
	.byte	0x4
	.byte	0xa3
	.long	0x26f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF47
	.byte	0x4
	.byte	0xa7
	.long	0x3f
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x238
	.uleb128 0x6
	.byte	0x8
	.long	0xb0
	.uleb128 0xb
	.long	0x95
	.long	0x285
	.uleb128 0xc
	.long	0x86
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x231
	.uleb128 0xb
	.long	0x95
	.long	0x29b
	.uleb128 0xc
	.long	0x86
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2a1
	.uleb128 0xd
	.long	0x95
	.uleb128 0xe
	.byte	0x4
	.byte	0x8
	.byte	0x30
	.long	0x302
	.uleb128 0xf
	.long	.LASF48
	.sleb128 256
	.uleb128 0xf
	.long	.LASF49
	.sleb128 512
	.uleb128 0xf
	.long	.LASF50
	.sleb128 1024
	.uleb128 0xf
	.long	.LASF51
	.sleb128 2048
	.uleb128 0xf
	.long	.LASF52
	.sleb128 4096
	.uleb128 0xf
	.long	.LASF53
	.sleb128 8192
	.uleb128 0xf
	.long	.LASF54
	.sleb128 16384
	.uleb128 0xf
	.long	.LASF55
	.sleb128 32768
	.uleb128 0xf
	.long	.LASF56
	.sleb128 1
	.uleb128 0xf
	.long	.LASF57
	.sleb128 2
	.uleb128 0xf
	.long	.LASF58
	.sleb128 4
	.uleb128 0xf
	.long	.LASF59
	.sleb128 8
	.byte	0
	.uleb128 0x10
	.byte	0x50
	.byte	0x5
	.byte	0xcc
	.long	0x39b
	.uleb128 0x8
	.long	.LASF60
	.byte	0x5
	.byte	0xcd
	.long	0x8f
	.byte	0
	.uleb128 0x8
	.long	.LASF61
	.byte	0x5
	.byte	0xce
	.long	0x54
	.byte	0x8
	.uleb128 0x8
	.long	.LASF62
	.byte	0x5
	.byte	0xcf
	.long	0x54
	.byte	0xc
	.uleb128 0x8
	.long	.LASF63
	.byte	0x5
	.byte	0xd0
	.long	0x54
	.byte	0x10
	.uleb128 0x8
	.long	.LASF64
	.byte	0x5
	.byte	0xd2
	.long	0x8f
	.byte	0x18
	.uleb128 0x8
	.long	.LASF65
	.byte	0x5
	.byte	0xd3
	.long	0x54
	.byte	0x20
	.uleb128 0x8
	.long	.LASF66
	.byte	0x5
	.byte	0xd4
	.long	0x54
	.byte	0x24
	.uleb128 0x8
	.long	.LASF67
	.byte	0x5
	.byte	0xd5
	.long	0x54
	.byte	0x28
	.uleb128 0x8
	.long	.LASF68
	.byte	0x5
	.byte	0xd7
	.long	0x8d
	.byte	0x30
	.uleb128 0x8
	.long	.LASF69
	.byte	0x5
	.byte	0xd9
	.long	0x3b4
	.byte	0x38
	.uleb128 0x8
	.long	.LASF70
	.byte	0x5
	.byte	0xda
	.long	0x3ca
	.byte	0x40
	.uleb128 0x8
	.long	.LASF71
	.byte	0x5
	.byte	0xdb
	.long	0x8d
	.byte	0x48
	.byte	0
	.uleb128 0x11
	.long	0x8d
	.long	0x3b4
	.uleb128 0x12
	.long	0x8d
	.uleb128 0x12
	.long	0x3f
	.uleb128 0x12
	.long	0x3f
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x39b
	.uleb128 0x13
	.long	0x3ca
	.uleb128 0x12
	.long	0x8d
	.uleb128 0x12
	.long	0x8d
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x3ba
	.uleb128 0x2
	.long	.LASF72
	.byte	0x5
	.byte	0xdd
	.long	0x302
	.uleb128 0x14
	.long	.LASF74
	.byte	0x5
	.value	0x124
	.uleb128 0x2
	.long	.LASF75
	.byte	0x6
	.byte	0x51
	.long	0x95
	.uleb128 0x2
	.long	.LASF76
	.byte	0x6
	.byte	0x52
	.long	0x46
	.uleb128 0x2
	.long	.LASF77
	.byte	0x6
	.byte	0x53
	.long	0x46
	.uleb128 0x2
	.long	.LASF78
	.byte	0x6
	.byte	0x54
	.long	0x3f
	.uleb128 0x2
	.long	.LASF79
	.byte	0x6
	.byte	0x55
	.long	0x54
	.uleb128 0x2
	.long	.LASF80
	.byte	0x6
	.byte	0x57
	.long	0x4d
	.uleb128 0x15
	.value	0xd9d8
	.byte	0x6
	.byte	0xe7
	.long	0x62e
	.uleb128 0x8
	.long	.LASF81
	.byte	0x6
	.byte	0xe9
	.long	0x62e
	.byte	0
	.uleb128 0x8
	.long	.LASF82
	.byte	0x6
	.byte	0xed
	.long	0x404
	.byte	0x8
	.uleb128 0x8
	.long	.LASF68
	.byte	0x6
	.byte	0xee
	.long	0x404
	.byte	0xc
	.uleb128 0x8
	.long	.LASF83
	.byte	0x6
	.byte	0xf1
	.long	0x40f
	.byte	0x10
	.uleb128 0x8
	.long	.LASF84
	.byte	0x6
	.byte	0xf4
	.long	0x634
	.byte	0x18
	.uleb128 0x8
	.long	.LASF85
	.byte	0x6
	.byte	0xf5
	.long	0x634
	.byte	0x20
	.uleb128 0x8
	.long	.LASF86
	.byte	0x6
	.byte	0xf6
	.long	0x634
	.byte	0x28
	.uleb128 0x8
	.long	.LASF87
	.byte	0x6
	.byte	0xf7
	.long	0x404
	.byte	0x30
	.uleb128 0x16
	.string	"ptr"
	.byte	0x6
	.byte	0xfa
	.long	0x634
	.byte	0x38
	.uleb128 0x8
	.long	.LASF88
	.byte	0x6
	.byte	0xfb
	.long	0x63a
	.byte	0x40
	.uleb128 0x8
	.long	.LASF89
	.byte	0x6
	.byte	0xfc
	.long	0x640
	.byte	0x48
	.uleb128 0x8
	.long	.LASF90
	.byte	0x6
	.byte	0xfd
	.long	0x63a
	.byte	0x50
	.uleb128 0x9
	.long	.LASF91
	.byte	0x6
	.value	0x100
	.long	0x404
	.byte	0x58
	.uleb128 0x9
	.long	.LASF92
	.byte	0x6
	.value	0x103
	.long	0x40f
	.byte	0x5c
	.uleb128 0x9
	.long	.LASF93
	.byte	0x6
	.value	0x104
	.long	0x404
	.byte	0x60
	.uleb128 0x9
	.long	.LASF94
	.byte	0x6
	.value	0x105
	.long	0x404
	.byte	0x64
	.uleb128 0x9
	.long	.LASF95
	.byte	0x6
	.value	0x105
	.long	0x404
	.byte	0x68
	.uleb128 0x9
	.long	.LASF96
	.byte	0x6
	.value	0x108
	.long	0x404
	.byte	0x6c
	.uleb128 0x9
	.long	.LASF97
	.byte	0x6
	.value	0x109
	.long	0x404
	.byte	0x70
	.uleb128 0x9
	.long	.LASF98
	.byte	0x6
	.value	0x10a
	.long	0x404
	.byte	0x74
	.uleb128 0x9
	.long	.LASF99
	.byte	0x6
	.value	0x10b
	.long	0x404
	.byte	0x78
	.uleb128 0x9
	.long	.LASF100
	.byte	0x6
	.value	0x10e
	.long	0x404
	.byte	0x7c
	.uleb128 0x9
	.long	.LASF101
	.byte	0x6
	.value	0x10f
	.long	0x646
	.byte	0x80
	.uleb128 0x17
	.long	.LASF102
	.byte	0x6
	.value	0x110
	.long	0x656
	.value	0x180
	.uleb128 0x17
	.long	.LASF103
	.byte	0x6
	.value	0x113
	.long	0x40f
	.value	0x280
	.uleb128 0x17
	.long	.LASF104
	.byte	0x6
	.value	0x114
	.long	0x404
	.value	0x284
	.uleb128 0x17
	.long	.LASF105
	.byte	0x6
	.value	0x117
	.long	0x40f
	.value	0x288
	.uleb128 0x17
	.long	.LASF106
	.byte	0x6
	.value	0x118
	.long	0x40f
	.value	0x28c
	.uleb128 0x17
	.long	.LASF107
	.byte	0x6
	.value	0x11b
	.long	0x404
	.value	0x290
	.uleb128 0x17
	.long	.LASF108
	.byte	0x6
	.value	0x11c
	.long	0x404
	.value	0x294
	.uleb128 0x17
	.long	.LASF109
	.byte	0x6
	.value	0x11d
	.long	0x404
	.value	0x298
	.uleb128 0x17
	.long	.LASF110
	.byte	0x6
	.value	0x120
	.long	0x404
	.value	0x29c
	.uleb128 0x17
	.long	.LASF111
	.byte	0x6
	.value	0x121
	.long	0x666
	.value	0x2a0
	.uleb128 0x17
	.long	.LASF112
	.byte	0x6
	.value	0x122
	.long	0x677
	.value	0x6a8
	.uleb128 0x17
	.long	.LASF113
	.byte	0x6
	.value	0x123
	.long	0x677
	.value	0x4cfa
	.uleb128 0x18
	.string	"len"
	.byte	0x6
	.value	0x125
	.long	0x688
	.value	0x934c
	.uleb128 0x17
	.long	.LASF114
	.byte	0x6
	.value	0x126
	.long	0x69f
	.value	0x9958
	.uleb128 0x17
	.long	.LASF115
	.byte	0x6
	.value	0x127
	.long	0x69f
	.value	0xb188
	.uleb128 0x17
	.long	.LASF116
	.byte	0x6
	.value	0x129
	.long	0x6b6
	.value	0xc9b8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x3d0
	.uleb128 0x6
	.byte	0x8
	.long	0x40f
	.uleb128 0x6
	.byte	0x8
	.long	0x3f9
	.uleb128 0x6
	.byte	0x8
	.long	0x41a
	.uleb128 0xb
	.long	0x3ee
	.long	0x656
	.uleb128 0xc
	.long	0x86
	.byte	0xff
	.byte	0
	.uleb128 0xb
	.long	0x3f9
	.long	0x666
	.uleb128 0xc
	.long	0x86
	.byte	0xff
	.byte	0
	.uleb128 0xb
	.long	0x404
	.long	0x677
	.uleb128 0x19
	.long	0x86
	.value	0x101
	.byte	0
	.uleb128 0xb
	.long	0x3f9
	.long	0x688
	.uleb128 0x19
	.long	0x86
	.value	0x4651
	.byte	0
	.uleb128 0xb
	.long	0x3f9
	.long	0x69f
	.uleb128 0xc
	.long	0x86
	.byte	0x5
	.uleb128 0x19
	.long	0x86
	.value	0x101
	.byte	0
	.uleb128 0xb
	.long	0x404
	.long	0x6b6
	.uleb128 0xc
	.long	0x86
	.byte	0x5
	.uleb128 0x19
	.long	0x86
	.value	0x101
	.byte	0
	.uleb128 0xb
	.long	0x40f
	.long	0x6cd
	.uleb128 0x19
	.long	0x86
	.value	0x101
	.uleb128 0xc
	.long	0x86
	.byte	0x3
	.byte	0
	.uleb128 0x1a
	.long	.LASF117
	.byte	0x6
	.value	0x12c
	.long	0x425
	.uleb128 0x1b
	.value	0xfa90
	.byte	0x6
	.value	0x17e
	.long	0xa51
	.uleb128 0x9
	.long	.LASF81
	.byte	0x6
	.value	0x180
	.long	0x62e
	.byte	0
	.uleb128 0x9
	.long	.LASF68
	.byte	0x6
	.value	0x183
	.long	0x404
	.byte	0x8
	.uleb128 0x9
	.long	.LASF118
	.byte	0x6
	.value	0x186
	.long	0x3f9
	.byte	0xc
	.uleb128 0x9
	.long	.LASF119
	.byte	0x6
	.value	0x187
	.long	0x404
	.byte	0x10
	.uleb128 0x9
	.long	.LASF120
	.byte	0x6
	.value	0x188
	.long	0x3ee
	.byte	0x14
	.uleb128 0x9
	.long	.LASF94
	.byte	0x6
	.value	0x189
	.long	0x404
	.byte	0x18
	.uleb128 0x9
	.long	.LASF95
	.byte	0x6
	.value	0x189
	.long	0x404
	.byte	0x1c
	.uleb128 0x9
	.long	.LASF103
	.byte	0x6
	.value	0x18c
	.long	0x40f
	.byte	0x20
	.uleb128 0x9
	.long	.LASF104
	.byte	0x6
	.value	0x18d
	.long	0x404
	.byte	0x24
	.uleb128 0x9
	.long	.LASF109
	.byte	0x6
	.value	0x190
	.long	0x404
	.byte	0x28
	.uleb128 0x9
	.long	.LASF121
	.byte	0x6
	.value	0x191
	.long	0x3ee
	.byte	0x2c
	.uleb128 0x9
	.long	.LASF122
	.byte	0x6
	.value	0x192
	.long	0x404
	.byte	0x30
	.uleb128 0x9
	.long	.LASF107
	.byte	0x6
	.value	0x193
	.long	0x404
	.byte	0x34
	.uleb128 0x9
	.long	.LASF87
	.byte	0x6
	.value	0x196
	.long	0x404
	.byte	0x38
	.uleb128 0x9
	.long	.LASF123
	.byte	0x6
	.value	0x197
	.long	0x40f
	.byte	0x3c
	.uleb128 0x1c
	.string	"k0"
	.byte	0x6
	.value	0x198
	.long	0x404
	.byte	0x40
	.uleb128 0x9
	.long	.LASF124
	.byte	0x6
	.value	0x199
	.long	0xa51
	.byte	0x44
	.uleb128 0x17
	.long	.LASF125
	.byte	0x6
	.value	0x19a
	.long	0x404
	.value	0x444
	.uleb128 0x17
	.long	.LASF126
	.byte	0x6
	.value	0x19b
	.long	0xa61
	.value	0x448
	.uleb128 0x17
	.long	.LASF127
	.byte	0x6
	.value	0x19c
	.long	0xa61
	.value	0x84c
	.uleb128 0x18
	.string	"tt"
	.byte	0x6
	.value	0x19f
	.long	0x634
	.value	0xc50
	.uleb128 0x17
	.long	.LASF128
	.byte	0x6
	.value	0x1a2
	.long	0x640
	.value	0xc58
	.uleb128 0x18
	.string	"ll4"
	.byte	0x6
	.value	0x1a3
	.long	0x63a
	.value	0xc60
	.uleb128 0x17
	.long	.LASF129
	.byte	0x6
	.value	0x1a6
	.long	0x40f
	.value	0xc68
	.uleb128 0x17
	.long	.LASF130
	.byte	0x6
	.value	0x1a7
	.long	0x40f
	.value	0xc6c
	.uleb128 0x17
	.long	.LASF131
	.byte	0x6
	.value	0x1a8
	.long	0x40f
	.value	0xc70
	.uleb128 0x17
	.long	.LASF132
	.byte	0x6
	.value	0x1a9
	.long	0x40f
	.value	0xc74
	.uleb128 0x17
	.long	.LASF100
	.byte	0x6
	.value	0x1ac
	.long	0x404
	.value	0xc78
	.uleb128 0x17
	.long	.LASF101
	.byte	0x6
	.value	0x1ad
	.long	0x646
	.value	0xc7c
	.uleb128 0x17
	.long	.LASF133
	.byte	0x6
	.value	0x1ae
	.long	0xa72
	.value	0xd7c
	.uleb128 0x17
	.long	.LASF134
	.byte	0x6
	.value	0x1af
	.long	0x656
	.value	0xd8c
	.uleb128 0x17
	.long	.LASF135
	.byte	0x6
	.value	0x1b2
	.long	0xa82
	.value	0xe8c
	.uleb128 0x17
	.long	.LASF136
	.byte	0x6
	.value	0x1b3
	.long	0xa93
	.value	0x1e8c
	.uleb128 0x17
	.long	.LASF112
	.byte	0x6
	.value	0x1b4
	.long	0x677
	.value	0x1ecc
	.uleb128 0x17
	.long	.LASF113
	.byte	0x6
	.value	0x1b5
	.long	0x677
	.value	0x651e
	.uleb128 0x18
	.string	"len"
	.byte	0x6
	.value	0x1b6
	.long	0x688
	.value	0xab70
	.uleb128 0x17
	.long	.LASF137
	.byte	0x6
	.value	0x1b8
	.long	0x69f
	.value	0xb17c
	.uleb128 0x17
	.long	.LASF138
	.byte	0x6
	.value	0x1b9
	.long	0x69f
	.value	0xc9ac
	.uleb128 0x17
	.long	.LASF139
	.byte	0x6
	.value	0x1ba
	.long	0x69f
	.value	0xe1dc
	.uleb128 0x17
	.long	.LASF140
	.byte	0x6
	.value	0x1bb
	.long	0xaa3
	.value	0xfa0c
	.uleb128 0x17
	.long	.LASF141
	.byte	0x6
	.value	0x1be
	.long	0x404
	.value	0xfa24
	.uleb128 0x17
	.long	.LASF142
	.byte	0x6
	.value	0x1bf
	.long	0x404
	.value	0xfa28
	.uleb128 0x17
	.long	.LASF143
	.byte	0x6
	.value	0x1c0
	.long	0x404
	.value	0xfa2c
	.uleb128 0x17
	.long	.LASF144
	.byte	0x6
	.value	0x1c1
	.long	0x404
	.value	0xfa30
	.uleb128 0x17
	.long	.LASF145
	.byte	0x6
	.value	0x1c2
	.long	0x404
	.value	0xfa34
	.uleb128 0x17
	.long	.LASF146
	.byte	0x6
	.value	0x1c3
	.long	0x404
	.value	0xfa38
	.uleb128 0x17
	.long	.LASF147
	.byte	0x6
	.value	0x1c4
	.long	0x404
	.value	0xfa3c
	.uleb128 0x17
	.long	.LASF148
	.byte	0x6
	.value	0x1c5
	.long	0x404
	.value	0xfa40
	.uleb128 0x17
	.long	.LASF149
	.byte	0x6
	.value	0x1c6
	.long	0x404
	.value	0xfa44
	.uleb128 0x17
	.long	.LASF150
	.byte	0x6
	.value	0x1c7
	.long	0x404
	.value	0xfa48
	.uleb128 0x17
	.long	.LASF151
	.byte	0x6
	.value	0x1c8
	.long	0x404
	.value	0xfa4c
	.uleb128 0x17
	.long	.LASF152
	.byte	0x6
	.value	0x1c9
	.long	0x404
	.value	0xfa50
	.uleb128 0x17
	.long	.LASF153
	.byte	0x6
	.value	0x1ca
	.long	0x404
	.value	0xfa54
	.uleb128 0x17
	.long	.LASF154
	.byte	0x6
	.value	0x1cb
	.long	0x404
	.value	0xfa58
	.uleb128 0x17
	.long	.LASF155
	.byte	0x6
	.value	0x1cc
	.long	0x404
	.value	0xfa5c
	.uleb128 0x17
	.long	.LASF156
	.byte	0x6
	.value	0x1cd
	.long	0x404
	.value	0xfa60
	.uleb128 0x17
	.long	.LASF157
	.byte	0x6
	.value	0x1ce
	.long	0x404
	.value	0xfa64
	.uleb128 0x17
	.long	.LASF158
	.byte	0x6
	.value	0x1cf
	.long	0x404
	.value	0xfa68
	.uleb128 0x17
	.long	.LASF159
	.byte	0x6
	.value	0x1d0
	.long	0x404
	.value	0xfa6c
	.uleb128 0x17
	.long	.LASF160
	.byte	0x6
	.value	0x1d1
	.long	0x404
	.value	0xfa70
	.uleb128 0x17
	.long	.LASF161
	.byte	0x6
	.value	0x1d2
	.long	0x404
	.value	0xfa74
	.uleb128 0x17
	.long	.LASF162
	.byte	0x6
	.value	0x1d3
	.long	0xab3
	.value	0xfa78
	.uleb128 0x17
	.long	.LASF163
	.byte	0x6
	.value	0x1d4
	.long	0xab3
	.value	0xfa80
	.uleb128 0x17
	.long	.LASF164
	.byte	0x6
	.value	0x1d5
	.long	0xab3
	.value	0xfa88
	.byte	0
	.uleb128 0xb
	.long	0x404
	.long	0xa61
	.uleb128 0xc
	.long	0x86
	.byte	0xff
	.byte	0
	.uleb128 0xb
	.long	0x404
	.long	0xa72
	.uleb128 0x19
	.long	0x86
	.value	0x100
	.byte	0
	.uleb128 0xb
	.long	0x3ee
	.long	0xa82
	.uleb128 0xc
	.long	0x86
	.byte	0xf
	.byte	0
	.uleb128 0xb
	.long	0x3f9
	.long	0xa93
	.uleb128 0x19
	.long	0x86
	.value	0xfff
	.byte	0
	.uleb128 0xb
	.long	0x404
	.long	0xaa3
	.uleb128 0xc
	.long	0x86
	.byte	0xf
	.byte	0
	.uleb128 0xb
	.long	0x404
	.long	0xab3
	.uleb128 0xc
	.long	0x86
	.byte	0x5
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x404
	.uleb128 0x1a
	.long	.LASF165
	.byte	0x6
	.value	0x1d8
	.long	0x6d9
	.uleb128 0x1b
	.value	0x13f0
	.byte	0x1
	.value	0x3b5
	.long	0xb30
	.uleb128 0x9
	.long	.LASF166
	.byte	0x1
	.value	0x3b7
	.long	0x3f
	.byte	0
	.uleb128 0x1c
	.string	"buf"
	.byte	0x1
	.value	0x3bb
	.long	0xb30
	.byte	0x4
	.uleb128 0x17
	.long	.LASF167
	.byte	0x1
	.value	0x3bc
	.long	0x404
	.value	0x138c
	.uleb128 0x17
	.long	.LASF168
	.byte	0x1
	.value	0x3bd
	.long	0x3ee
	.value	0x1390
	.uleb128 0x17
	.long	.LASF81
	.byte	0x1
	.value	0x3be
	.long	0x3d0
	.value	0x1398
	.uleb128 0x17
	.long	.LASF169
	.byte	0x1
	.value	0x3bf
	.long	0x404
	.value	0x13e8
	.uleb128 0x17
	.long	.LASF170
	.byte	0x1
	.value	0x3c0
	.long	0x3ee
	.value	0x13ec
	.byte	0
	.uleb128 0xb
	.long	0x3e3
	.long	0xb41
	.uleb128 0x19
	.long	0x86
	.value	0x1387
	.byte	0
	.uleb128 0x1a
	.long	.LASF171
	.byte	0x1
	.value	0x3c2
	.long	0xac5
	.uleb128 0x1d
	.long	.LASF221
	.byte	0x1
	.byte	0x57
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0xb79
	.uleb128 0x1e
	.long	.LASF172
	.byte	0x1
	.byte	0x57
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1f
	.long	.LASF270
	.byte	0x1
	.byte	0x94
	.long	0x3f
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x20
	.long	.LASF179
	.byte	0x1
	.byte	0x9f
	.long	0x8d
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0xbee
	.uleb128 0x1e
	.long	.LASF71
	.byte	0x1
	.byte	0x9f
	.long	0x8d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1e
	.long	.LASF173
	.byte	0x1
	.byte	0x9f
	.long	0x404
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1e
	.long	.LASF174
	.byte	0x1
	.byte	0x9f
	.long	0x404
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x21
	.string	"v"
	.byte	0x1
	.byte	0xa1
	.long	0x8d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x22
	.long	.LASF176
	.byte	0x1
	.byte	0xa6
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0xc28
	.uleb128 0x1e
	.long	.LASF71
	.byte	0x1
	.byte	0xa6
	.long	0x8d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.long	.LASF175
	.byte	0x1
	.byte	0xa6
	.long	0x8d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x23
	.long	.LASF177
	.byte	0x1
	.byte	0xae
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0xc5e
	.uleb128 0x24
	.string	"s"
	.byte	0x1
	.byte	0xae
	.long	0xc5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.byte	0xb0
	.long	0x404
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x6cd
	.uleb128 0x23
	.long	.LASF178
	.byte	0x1
	.byte	0xbc
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0xc8e
	.uleb128 0x24
	.string	"s"
	.byte	0x1
	.byte	0xbc
	.long	0xc5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x25
	.long	.LASF180
	.byte	0x1
	.byte	0xc4
	.long	0x3ee
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0xcbc
	.uleb128 0x24
	.string	"s"
	.byte	0x1
	.byte	0xc4
	.long	0xc5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x26
	.long	.LASF189
	.byte	0x1
	.byte	0xcd
	.long	0x3f
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0xd2e
	.uleb128 0x1e
	.long	.LASF81
	.byte	0x1
	.byte	0xce
	.long	0x62e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1e
	.long	.LASF109
	.byte	0x1
	.byte	0xcf
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1e
	.long	.LASF107
	.byte	0x1
	.byte	0xd0
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.long	.LASF91
	.byte	0x1
	.byte	0xd1
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x21
	.string	"n"
	.byte	0x1
	.byte	0xd3
	.long	0x404
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x21
	.string	"s"
	.byte	0x1
	.byte	0xd4
	.long	0xc5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x27
	.long	.LASF181
	.byte	0x1
	.value	0x111
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0xd75
	.uleb128 0x28
	.string	"s"
	.byte	0x1
	.value	0x111
	.long	0xc5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"i"
	.byte	0x1
	.value	0x113
	.long	0x404
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x29
	.string	"ch"
	.byte	0x1
	.value	0x114
	.long	0x3f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.uleb128 0x2a
	.long	.LASF182
	.byte	0x1
	.value	0x135
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0xda1
	.uleb128 0x28
	.string	"s"
	.byte	0x1
	.value	0x135
	.long	0xc5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2b
	.long	.LASF183
	.byte	0x1
	.value	0x15a
	.long	0x3ee
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0xe66
	.uleb128 0x28
	.string	"s"
	.byte	0x1
	.value	0x15a
	.long	0xc5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF184
	.byte	0x1
	.value	0x15c
	.long	0x3ee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -27
	.uleb128 0x2d
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0xe24
	.uleb128 0x2c
	.long	.LASF185
	.byte	0x1
	.value	0x167
	.long	0x40f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x29
	.string	"ch"
	.byte	0x1
	.value	0x167
	.long	0x3f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.byte	0
	.byte	0
	.uleb128 0x2e
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x2c
	.long	.LASF185
	.byte	0x1
	.value	0x179
	.long	0x40f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2e
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x29
	.string	"ch"
	.byte	0x1
	.value	0x179
	.long	0x3f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	.LASF186
	.byte	0x1
	.value	0x187
	.long	0x3ee
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0xea5
	.uleb128 0x28
	.string	"s"
	.byte	0x1
	.value	0x187
	.long	0xc5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF187
	.byte	0x1
	.value	0x189
	.long	0x3ee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x2b
	.long	.LASF188
	.byte	0x1
	.value	0x1a2
	.long	0x3ee
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0xf02
	.uleb128 0x30
	.long	.LASF81
	.byte	0x1
	.value	0x1a2
	.long	0x62e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF184
	.byte	0x1
	.value	0x1a4
	.long	0x3ee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x2c
	.long	.LASF187
	.byte	0x1
	.value	0x1a5
	.long	0x3ee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x29
	.string	"s"
	.byte	0x1
	.value	0x1a6
	.long	0xc5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x31
	.long	.LASF190
	.byte	0x1
	.value	0x1d0
	.long	0x3f
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0xf6f
	.uleb128 0x30
	.long	.LASF81
	.byte	0x1
	.value	0x1d0
	.long	0x62e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.long	.LASF191
	.byte	0x1
	.value	0x1d0
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2c
	.long	.LASF192
	.byte	0x1
	.value	0x1d2
	.long	0x3ee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x29
	.string	"s"
	.byte	0x1
	.value	0x1d3
	.long	0xc5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.long	.LASF197
	.byte	0x1
	.value	0x1d9
	.quad	.L89
	.byte	0
	.uleb128 0x31
	.long	.LASF193
	.byte	0x1
	.value	0x20d
	.long	0x3f
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0xfae
	.uleb128 0x30
	.long	.LASF81
	.byte	0x1
	.value	0x20d
	.long	0x62e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"s"
	.byte	0x1
	.value	0x20f
	.long	0xc5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x31
	.long	.LASF194
	.byte	0x1
	.value	0x225
	.long	0x3f
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x100b
	.uleb128 0x30
	.long	.LASF81
	.byte	0x1
	.value	0x226
	.long	0x62e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.long	.LASF107
	.byte	0x1
	.value	0x227
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x30
	.long	.LASF195
	.byte	0x1
	.value	0x228
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.string	"s"
	.byte	0x1
	.value	0x22a
	.long	0x100b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xab9
	.uleb128 0x2f
	.long	.LASF196
	.byte	0x1
	.value	0x251
	.long	0x3ee
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x1139
	.uleb128 0x28
	.string	"s"
	.byte	0x1
	.value	0x251
	.long	0x100b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x29
	.string	"k1"
	.byte	0x1
	.value	0x253
	.long	0x3f9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -69
	.uleb128 0x32
	.long	.LASF198
	.byte	0x1
	.value	0x2cf
	.quad	.L152
	.uleb128 0x32
	.long	.LASF199
	.byte	0x1
	.value	0x2a5
	.quad	.L154
	.uleb128 0x2e
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x2c
	.long	.LASF200
	.byte	0x1
	.value	0x289
	.long	0x40f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2c
	.long	.LASF201
	.byte	0x1
	.value	0x28a
	.long	0x3f9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -70
	.uleb128 0x2c
	.long	.LASF202
	.byte	0x1
	.value	0x28b
	.long	0x404
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2c
	.long	.LASF203
	.byte	0x1
	.value	0x28c
	.long	0x404
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2c
	.long	.LASF204
	.byte	0x1
	.value	0x28d
	.long	0x404
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.long	.LASF205
	.byte	0x1
	.value	0x28e
	.long	0x634
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.long	.LASF206
	.byte	0x1
	.value	0x28f
	.long	0x40f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2c
	.long	.LASF207
	.byte	0x1
	.value	0x290
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.long	.LASF208
	.byte	0x1
	.value	0x291
	.long	0x54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.long	.LASF209
	.byte	0x1
	.value	0x294
	.long	0x40f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2c
	.long	.LASF210
	.byte	0x1
	.value	0x295
	.long	0x404
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF211
	.byte	0x1
	.value	0x296
	.long	0x54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x33
	.long	.LASF212
	.byte	0x1
	.value	0x2e7
	.long	0x404
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x11a5
	.uleb128 0x30
	.long	.LASF213
	.byte	0x1
	.value	0x2e7
	.long	0x404
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x30
	.long	.LASF126
	.byte	0x1
	.value	0x2e7
	.long	0xab3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.string	"nb"
	.byte	0x1
	.value	0x2e9
	.long	0x404
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x29
	.string	"na"
	.byte	0x1
	.value	0x2e9
	.long	0x404
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.string	"mid"
	.byte	0x1
	.value	0x2e9
	.long	0x404
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2b
	.long	.LASF214
	.byte	0x1
	.value	0x2fa
	.long	0x3ee
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x11e3
	.uleb128 0x28
	.string	"s"
	.byte	0x1
	.value	0x2fa
	.long	0x100b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"k1"
	.byte	0x1
	.value	0x2fc
	.long	0x3f9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x31
	.long	.LASF215
	.byte	0x1
	.value	0x360
	.long	0x3f
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x1250
	.uleb128 0x30
	.long	.LASF81
	.byte	0x1
	.value	0x360
	.long	0x62e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF216
	.byte	0x1
	.value	0x362
	.long	0x3ee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.uleb128 0x29
	.string	"s"
	.byte	0x1
	.value	0x363
	.long	0x100b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x29
	.string	"r"
	.byte	0x1
	.value	0x382
	.long	0x404
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	.LASF217
	.byte	0x1
	.value	0x396
	.long	0x3f
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x128f
	.uleb128 0x30
	.long	.LASF81
	.byte	0x1
	.value	0x396
	.long	0x62e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x29
	.string	"s"
	.byte	0x1
	.value	0x398
	.long	0x100b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2b
	.long	.LASF218
	.byte	0x1
	.value	0x3c7
	.long	0x3ee
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x12cc
	.uleb128 0x28
	.string	"f"
	.byte	0x1
	.value	0x3c7
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.string	"c"
	.byte	0x1
	.value	0x3cc
	.long	0x404
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x31
	.long	.LASF219
	.byte	0x1
	.value	0x3d4
	.long	0x1356
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x1356
	.uleb128 0x30
	.long	.LASF220
	.byte	0x1
	.value	0x3d5
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.string	"f"
	.byte	0x1
	.value	0x3d7
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x30
	.long	.LASF109
	.byte	0x1
	.value	0x3db
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.long	.LASF107
	.byte	0x1
	.value	0x3dc
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x30
	.long	.LASF91
	.byte	0x1
	.value	0x3dd
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.string	"ret"
	.byte	0x1
	.value	0x3df
	.long	0x404
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x29
	.string	"bzf"
	.byte	0x1
	.value	0x3e0
	.long	0x135c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x3db
	.uleb128 0x6
	.byte	0x8
	.long	0xb41
	.uleb128 0x34
	.long	.LASF222
	.byte	0x1
	.value	0x408
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x13f6
	.uleb128 0x30
	.long	.LASF220
	.byte	0x1
	.value	0x409
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.string	"b"
	.byte	0x1
	.value	0x40a
	.long	0x1356
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.string	"buf"
	.byte	0x1
	.value	0x40b
	.long	0x8d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.string	"len"
	.byte	0x1
	.value	0x40c
	.long	0x3f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x29
	.string	"n"
	.byte	0x1
	.value	0x40e
	.long	0x404
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.string	"n2"
	.byte	0x1
	.value	0x40e
	.long	0x404
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x29
	.string	"ret"
	.byte	0x1
	.value	0x40e
	.long	0x404
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.string	"bzf"
	.byte	0x1
	.value	0x40f
	.long	0x135c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x34
	.long	.LASF223
	.byte	0x1
	.value	0x435
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x145e
	.uleb128 0x30
	.long	.LASF220
	.byte	0x1
	.value	0x436
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.string	"b"
	.byte	0x1
	.value	0x437
	.long	0x1356
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.long	.LASF224
	.byte	0x1
	.value	0x438
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x30
	.long	.LASF225
	.byte	0x1
	.value	0x439
	.long	0x145e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.long	.LASF226
	.byte	0x1
	.value	0x43a
	.long	0x145e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x54
	.uleb128 0x34
	.long	.LASF227
	.byte	0x1
	.value	0x441
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x1527
	.uleb128 0x30
	.long	.LASF220
	.byte	0x1
	.value	0x442
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.string	"b"
	.byte	0x1
	.value	0x443
	.long	0x1356
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x30
	.long	.LASF224
	.byte	0x1
	.value	0x444
	.long	0x3f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x30
	.long	.LASF228
	.byte	0x1
	.value	0x445
	.long	0x145e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x30
	.long	.LASF229
	.byte	0x1
	.value	0x446
	.long	0x145e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x30
	.long	.LASF230
	.byte	0x1
	.value	0x447
	.long	0x145e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x30
	.long	.LASF231
	.byte	0x1
	.value	0x448
	.long	0x145e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"n"
	.byte	0x1
	.value	0x44a
	.long	0x404
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.string	"n2"
	.byte	0x1
	.value	0x44a
	.long	0x404
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x29
	.string	"ret"
	.byte	0x1
	.value	0x44a
	.long	0x404
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.string	"bzf"
	.byte	0x1
	.value	0x44b
	.long	0x135c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x31
	.long	.LASF232
	.byte	0x1
	.value	0x483
	.long	0x1356
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x15c0
	.uleb128 0x30
	.long	.LASF220
	.byte	0x1
	.value	0x484
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.string	"f"
	.byte	0x1
	.value	0x486
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x30
	.long	.LASF107
	.byte	0x1
	.value	0x48a
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.long	.LASF195
	.byte	0x1
	.value	0x48b
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x30
	.long	.LASF233
	.byte	0x1
	.value	0x48c
	.long	0x8d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x30
	.long	.LASF234
	.byte	0x1
	.value	0x48d
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x29
	.string	"bzf"
	.byte	0x1
	.value	0x48f
	.long	0x135c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.string	"ret"
	.byte	0x1
	.value	0x490
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x34
	.long	.LASF235
	.byte	0x1
	.value	0x4bf
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x160a
	.uleb128 0x30
	.long	.LASF220
	.byte	0x1
	.value	0x4bf
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.string	"b"
	.byte	0x1
	.value	0x4bf
	.long	0x1356
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.string	"bzf"
	.byte	0x1
	.value	0x4c1
	.long	0x135c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x31
	.long	.LASF236
	.byte	0x1
	.value	0x4d1
	.long	0x3f
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x1692
	.uleb128 0x30
	.long	.LASF220
	.byte	0x1
	.value	0x4d2
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.string	"b"
	.byte	0x1
	.value	0x4d3
	.long	0x1356
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.string	"buf"
	.byte	0x1
	.value	0x4d4
	.long	0x8d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.string	"len"
	.byte	0x1
	.value	0x4d5
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x29
	.string	"n"
	.byte	0x1
	.value	0x4d7
	.long	0x404
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.string	"ret"
	.byte	0x1
	.value	0x4d7
	.long	0x404
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x29
	.string	"bzf"
	.byte	0x1
	.value	0x4d8
	.long	0x135c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x35
	.long	.LASF237
	.byte	0x1
	.value	0x50d
	.quad	.LFB31
	.quad	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0x16fa
	.uleb128 0x30
	.long	.LASF220
	.byte	0x1
	.value	0x50e
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.string	"b"
	.byte	0x1
	.value	0x50f
	.long	0x1356
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.long	.LASF233
	.byte	0x1
	.value	0x510
	.long	0x16fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.long	.LASF234
	.byte	0x1
	.value	0x511
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.string	"bzf"
	.byte	0x1
	.value	0x513
	.long	0x135c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x8d
	.uleb128 0x31
	.long	.LASF238
	.byte	0x1
	.value	0x527
	.long	0x3f
	.quad	.LFB32
	.quad	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0x17d2
	.uleb128 0x30
	.long	.LASF239
	.byte	0x1
	.value	0x528
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x30
	.long	.LASF240
	.byte	0x1
	.value	0x529
	.long	0x145e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x30
	.long	.LASF241
	.byte	0x1
	.value	0x52a
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x30
	.long	.LASF242
	.byte	0x1
	.value	0x52b
	.long	0x54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x30
	.long	.LASF109
	.byte	0x1
	.value	0x52c
	.long	0x3f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x30
	.long	.LASF107
	.byte	0x1
	.value	0x52d
	.long	0x3f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x30
	.long	.LASF91
	.byte	0x1
	.value	0x52e
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF81
	.byte	0x1
	.value	0x530
	.long	0x3d0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x29
	.string	"ret"
	.byte	0x1
	.value	0x531
	.long	0x3f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x32
	.long	.LASF243
	.byte	0x1
	.value	0x550
	.quad	.L390
	.uleb128 0x32
	.long	.LASF244
	.byte	0x1
	.value	0x554
	.quad	.L392
	.byte	0
	.uleb128 0x31
	.long	.LASF245
	.byte	0x1
	.value	0x55b
	.long	0x3f
	.quad	.LFB33
	.quad	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0x1895
	.uleb128 0x30
	.long	.LASF239
	.byte	0x1
	.value	0x55c
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x30
	.long	.LASF240
	.byte	0x1
	.value	0x55d
	.long	0x145e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x30
	.long	.LASF241
	.byte	0x1
	.value	0x55e
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x30
	.long	.LASF242
	.byte	0x1
	.value	0x55f
	.long	0x54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x30
	.long	.LASF195
	.byte	0x1
	.value	0x560
	.long	0x3f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x30
	.long	.LASF107
	.byte	0x1
	.value	0x561
	.long	0x3f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x2c
	.long	.LASF81
	.byte	0x1
	.value	0x563
	.long	0x3d0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x29
	.string	"ret"
	.byte	0x1
	.value	0x564
	.long	0x3f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x32
	.long	.LASF246
	.byte	0x1
	.value	0x580
	.quad	.L401
	.uleb128 0x32
	.long	.LASF244
	.byte	0x1
	.value	0x589
	.quad	.L403
	.byte	0
	.uleb128 0x36
	.long	.LASF271
	.byte	0x1
	.value	0x59f
	.long	0x29b
	.quad	.LFB34
	.quad	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2b
	.long	.LASF247
	.byte	0x1
	.value	0x5b2
	.long	0x1356
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0x19c4
	.uleb128 0x30
	.long	.LASF248
	.byte	0x1
	.value	0x5b3
	.long	0x29b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -5112
	.uleb128 0x28
	.string	"fd"
	.byte	0x1
	.value	0x5b4
	.long	0x3f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -5116
	.uleb128 0x30
	.long	.LASF82
	.byte	0x1
	.value	0x5b5
	.long	0x29b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -5128
	.uleb128 0x30
	.long	.LASF249
	.byte	0x1
	.value	0x5b6
	.long	0x3f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -5120
	.uleb128 0x2c
	.long	.LASF250
	.byte	0x1
	.value	0x5b8
	.long	0x3f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -5096
	.uleb128 0x2c
	.long	.LASF233
	.byte	0x1
	.value	0x5b9
	.long	0x19c4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -5040
	.uleb128 0x2c
	.long	.LASF109
	.byte	0x1
	.value	0x5ba
	.long	0x3f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -5092
	.uleb128 0x2c
	.long	.LASF168
	.byte	0x1
	.value	0x5bb
	.long	0x3f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -5088
	.uleb128 0x2c
	.long	.LASF251
	.byte	0x1
	.value	0x5bc
	.long	0x19d5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -5056
	.uleb128 0x29
	.string	"fp"
	.byte	0x1
	.value	0x5be
	.long	0x3f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -5084
	.uleb128 0x2c
	.long	.LASF252
	.byte	0x1
	.value	0x5c2
	.long	0x1356
	.uleb128 0x3
	.byte	0x91
	.sleb128 -5064
	.uleb128 0x2c
	.long	.LASF107
	.byte	0x1
	.value	0x5c3
	.long	0x3f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -5076
	.uleb128 0x2c
	.long	.LASF91
	.byte	0x1
	.value	0x5c4
	.long	0x3f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -5072
	.uleb128 0x2c
	.long	.LASF253
	.byte	0x1
	.value	0x5c5
	.long	0x3f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -5080
	.uleb128 0x2c
	.long	.LASF234
	.byte	0x1
	.value	0x5c6
	.long	0x3f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -5068
	.byte	0
	.uleb128 0xb
	.long	0x95
	.long	0x19d5
	.uleb128 0x19
	.long	0x86
	.value	0x1387
	.byte	0
	.uleb128 0xb
	.long	0x95
	.long	0x19e5
	.uleb128 0xc
	.long	0x86
	.byte	0x9
	.byte	0
	.uleb128 0x31
	.long	.LASF254
	.byte	0x1
	.value	0x60f
	.long	0x1356
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a26
	.uleb128 0x30
	.long	.LASF248
	.byte	0x1
	.value	0x610
	.long	0x29b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.long	.LASF82
	.byte	0x1
	.value	0x611
	.long	0x29b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x31
	.long	.LASF255
	.byte	0x1
	.value	0x618
	.long	0x1356
	.quad	.LFB37
	.quad	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a66
	.uleb128 0x28
	.string	"fd"
	.byte	0x1
	.value	0x619
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x30
	.long	.LASF82
	.byte	0x1
	.value	0x61a
	.long	0x29b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x31
	.long	.LASF256
	.byte	0x1
	.value	0x621
	.long	0x3f
	.quad	.LFB38
	.quad	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ad2
	.uleb128 0x28
	.string	"b"
	.byte	0x1
	.value	0x621
	.long	0x1356
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.string	"buf"
	.byte	0x1
	.value	0x621
	.long	0x8d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.string	"len"
	.byte	0x1
	.value	0x621
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2c
	.long	.LASF250
	.byte	0x1
	.value	0x623
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.long	.LASF257
	.byte	0x1
	.value	0x623
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x31
	.long	.LASF258
	.byte	0x1
	.value	0x62f
	.long	0x3f
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b2f
	.uleb128 0x28
	.string	"b"
	.byte	0x1
	.value	0x62f
	.long	0x1356
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.string	"buf"
	.byte	0x1
	.value	0x62f
	.long	0x8d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.string	"len"
	.byte	0x1
	.value	0x62f
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2c
	.long	.LASF250
	.byte	0x1
	.value	0x631
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x33
	.long	.LASF259
	.byte	0x1
	.value	0x63d
	.long	0x3f
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b5f
	.uleb128 0x28
	.string	"b"
	.byte	0x1
	.value	0x63d
	.long	0x1356
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x34
	.long	.LASF260
	.byte	0x1
	.value	0x645
	.quad	.LFB41
	.quad	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ba8
	.uleb128 0x28
	.string	"b"
	.byte	0x1
	.value	0x645
	.long	0x1356
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF250
	.byte	0x1
	.value	0x647
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.string	"fp"
	.byte	0x1
	.value	0x649
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x33
	.long	.LASF261
	.byte	0x1
	.value	0x679
	.long	0x29b
	.quad	.LFB42
	.quad	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.long	0x1bf6
	.uleb128 0x28
	.string	"b"
	.byte	0x1
	.value	0x679
	.long	0x1356
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.long	.LASF262
	.byte	0x1
	.value	0x679
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.string	"err"
	.byte	0x1
	.value	0x67b
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xb
	.long	0x8f
	.long	0x1c06
	.uleb128 0xc
	.long	0x86
	.byte	0xf
	.byte	0
	.uleb128 0x2c
	.long	.LASF263
	.byte	0x1
	.value	0x665
	.long	0x1bf6
	.uleb128 0x9
	.byte	0x3
	.quad	bzerrorstrings
	.uleb128 0x37
	.long	.LASF264
	.byte	0x7
	.byte	0xaa
	.long	0x26f
	.uleb128 0xb
	.long	0x404
	.long	0x1c38
	.uleb128 0x19
	.long	0x86
	.value	0x1ff
	.byte	0
	.uleb128 0x37
	.long	.LASF265
	.byte	0x6
	.byte	0xa5
	.long	0x1c27
	.uleb128 0xb
	.long	0x40f
	.long	0x1c53
	.uleb128 0xc
	.long	0x86
	.byte	0xff
	.byte	0
	.uleb128 0x37
	.long	.LASF266
	.byte	0x6
	.byte	0xbd
	.long	0x1c43
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
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
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x2b
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x37
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
.LASF99:
	.string	"state_out_pos"
.LASF238:
	.string	"BZ2_bzBuffToBuffCompress"
.LASF93:
	.string	"state_in_len"
.LASF265:
	.string	"BZ2_rNums"
.LASF158:
	.string	"save_zvec"
.LASF196:
	.string	"unRLE_obuf_to_output_FAST"
.LASF33:
	.string	"_shortbuf"
.LASF73:
	.string	"_IO_lock_t"
.LASF256:
	.string	"BZ2_bzread"
.LASF240:
	.string	"destLen"
.LASF63:
	.string	"total_in_hi32"
.LASF264:
	.string	"stderr"
.LASF185:
	.string	"zchh"
.LASF22:
	.string	"_IO_buf_end"
.LASF104:
	.string	"bsLive"
.LASF262:
	.string	"errnum"
.LASF76:
	.string	"Bool"
.LASF70:
	.string	"bzfree"
.LASF20:
	.string	"_IO_write_end"
.LASF3:
	.string	"unsigned int"
.LASF124:
	.string	"unzftab"
.LASF205:
	.string	"c_tt"
.LASF14:
	.string	"_flags"
.LASF178:
	.string	"init_RL"
.LASF222:
	.string	"BZ2_bzWrite"
.LASF179:
	.string	"default_bzalloc"
.LASF148:
	.string	"save_groupNo"
.LASF243:
	.string	"output_overflow"
.LASF26:
	.string	"_markers"
.LASF149:
	.string	"save_groupPos"
.LASF137:
	.string	"limit"
.LASF219:
	.string	"BZ2_bzWriteOpen"
.LASF82:
	.string	"mode"
.LASF110:
	.string	"nMTF"
.LASF197:
	.string	"preswitch"
.LASF209:
	.string	"avail_out_INIT"
.LASF129:
	.string	"storedBlockCRC"
.LASF168:
	.string	"writing"
.LASF101:
	.string	"inUse"
.LASF160:
	.string	"save_gSel"
.LASF116:
	.string	"len_pack"
.LASF198:
	.string	"return_notr"
.LASF47:
	.string	"_pos"
.LASF71:
	.string	"opaque"
.LASF174:
	.string	"size"
.LASF25:
	.string	"_IO_save_end"
.LASF242:
	.string	"sourceLen"
.LASF155:
	.string	"save_curr"
.LASF80:
	.string	"UInt16"
.LASF157:
	.string	"save_zn"
.LASF138:
	.string	"base"
.LASF156:
	.string	"save_zt"
.LASF131:
	.string	"calculatedBlockCRC"
.LASF90:
	.string	"zbits"
.LASF217:
	.string	"BZ2_bzDecompressEnd"
.LASF169:
	.string	"lastErr"
.LASF13:
	.string	"long long unsigned int"
.LASF135:
	.string	"mtfa"
.LASF113:
	.string	"selectorMtf"
.LASF163:
	.string	"save_gBase"
.LASF210:
	.string	"s_save_nblockPP"
.LASF261:
	.string	"BZ2_bzerror"
.LASF221:
	.string	"BZ2_bz__AssertH__fail"
.LASF89:
	.string	"mtfv"
.LASF112:
	.string	"selector"
.LASF24:
	.string	"_IO_backup_base"
.LASF84:
	.string	"arr1"
.LASF85:
	.string	"arr2"
.LASF35:
	.string	"_offset"
.LASF167:
	.string	"bufN"
.LASF211:
	.string	"total_out_lo32_old"
.LASF49:
	.string	"_ISlower"
.LASF92:
	.string	"state_in_ch"
.LASF28:
	.string	"_fileno"
.LASF65:
	.string	"avail_out"
.LASF252:
	.string	"bzfp"
.LASF207:
	.string	"cs_next_out"
.LASF111:
	.string	"mtfFreq"
.LASF145:
	.string	"save_nGroups"
.LASF195:
	.string	"small"
.LASF7:
	.string	"size_t"
.LASF52:
	.string	"_ISxdigit"
.LASF193:
	.string	"BZ2_bzCompressEnd"
.LASF188:
	.string	"handle_compress"
.LASF17:
	.string	"_IO_read_base"
.LASF251:
	.string	"mode2"
.LASF79:
	.string	"UInt32"
.LASF45:
	.string	"_next"
.LASF250:
	.string	"bzerr"
.LASF139:
	.string	"perm"
.LASF184:
	.string	"progress_in"
.LASF141:
	.string	"save_i"
.LASF248:
	.string	"path"
.LASF114:
	.string	"code"
.LASF206:
	.string	"c_tPos"
.LASF247:
	.string	"bzopen_or_bzdopen"
.LASF120:
	.string	"blockRandomised"
.LASF78:
	.string	"Int32"
.LASF246:
	.string	"output_overflow_or_eof"
.LASF83:
	.string	"avail_in_expect"
.LASF143:
	.string	"save_t"
.LASF199:
	.string	"s_state_out_len_eq_one"
.LASF170:
	.string	"initialisedOk"
.LASF102:
	.string	"unseqToSeq"
.LASF81:
	.string	"strm"
.LASF11:
	.string	"char"
.LASF117:
	.string	"EState"
.LASF266:
	.string	"BZ2_crc32Table"
.LASF41:
	.string	"_mode"
.LASF255:
	.string	"BZ2_bzdopen"
.LASF201:
	.string	"c_state_out_ch"
.LASF44:
	.string	"_IO_marker"
.LASF162:
	.string	"save_gLimit"
.LASF204:
	.string	"c_k0"
.LASF15:
	.string	"_IO_read_ptr"
.LASF223:
	.string	"BZ2_bzWriteClose"
.LASF263:
	.string	"bzerrorstrings"
.LASF74:
	.string	"BZFILE"
.LASF214:
	.string	"unRLE_obuf_to_output_SMALL"
.LASF151:
	.string	"save_nblockMAX"
.LASF192:
	.string	"progress"
.LASF228:
	.string	"nbytes_in_lo32"
.LASF91:
	.string	"workFactor"
.LASF123:
	.string	"tPos"
.LASF212:
	.string	"BZ2_indexIntoF"
.LASF187:
	.string	"progress_out"
.LASF18:
	.string	"_IO_write_base"
.LASF171:
	.string	"bzFile"
.LASF12:
	.string	"long long int"
.LASF23:
	.string	"_IO_save_base"
.LASF64:
	.string	"next_out"
.LASF57:
	.string	"_IScntrl"
.LASF271:
	.string	"BZ2_bzlibVersion"
.LASF106:
	.string	"combinedCRC"
.LASF100:
	.string	"nInUse"
.LASF51:
	.string	"_ISdigit"
.LASF107:
	.string	"verbosity"
.LASF186:
	.string	"copy_output_until_stop"
.LASF260:
	.string	"BZ2_bzclose"
.LASF53:
	.string	"_ISspace"
.LASF94:
	.string	"rNToGo"
.LASF231:
	.string	"nbytes_out_hi32"
.LASF236:
	.string	"BZ2_bzRead"
.LASF36:
	.string	"__pad1"
.LASF37:
	.string	"__pad2"
.LASF38:
	.string	"__pad3"
.LASF39:
	.string	"__pad4"
.LASF40:
	.string	"__pad5"
.LASF189:
	.string	"BZ2_bzCompressInit"
.LASF224:
	.string	"abandon"
.LASF230:
	.string	"nbytes_out_lo32"
.LASF253:
	.string	"smallMode"
.LASF32:
	.string	"_vtable_offset"
.LASF108:
	.string	"blockNo"
.LASF173:
	.string	"items"
.LASF67:
	.string	"total_out_hi32"
.LASF109:
	.string	"blockSize100k"
.LASF182:
	.string	"flush_RL"
.LASF136:
	.string	"mtfbase"
.LASF226:
	.string	"nbytes_out"
.LASF218:
	.string	"myfeof"
.LASF161:
	.string	"save_gMinlen"
.LASF87:
	.string	"origPtr"
.LASF213:
	.string	"indx"
.LASF270:
	.string	"bz_config_ok"
.LASF267:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF232:
	.string	"BZ2_bzReadOpen"
.LASF58:
	.string	"_ISpunct"
.LASF16:
	.string	"_IO_read_end"
.LASF54:
	.string	"_ISprint"
.LASF5:
	.string	"short int"
.LASF254:
	.string	"BZ2_bzopen"
.LASF98:
	.string	"numZ"
.LASF150:
	.string	"save_nextSym"
.LASF133:
	.string	"inUse16"
.LASF6:
	.string	"long int"
.LASF105:
	.string	"blockCRC"
.LASF60:
	.string	"next_in"
.LASF190:
	.string	"BZ2_bzCompress"
.LASF97:
	.string	"nblockMAX"
.LASF140:
	.string	"minLens"
.LASF95:
	.string	"rTPos"
.LASF269:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/401.bzip2/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF77:
	.string	"UChar"
.LASF225:
	.string	"nbytes_in"
.LASF191:
	.string	"action"
.LASF62:
	.string	"total_in_lo32"
.LASF239:
	.string	"dest"
.LASF258:
	.string	"BZ2_bzwrite"
.LASF134:
	.string	"seqToUnseq"
.LASF88:
	.string	"block"
.LASF146:
	.string	"save_nSelectors"
.LASF227:
	.string	"BZ2_bzWriteClose64"
.LASF69:
	.string	"bzalloc"
.LASF241:
	.string	"source"
.LASF119:
	.string	"state_out_len"
.LASF55:
	.string	"_ISgraph"
.LASF154:
	.string	"save_N"
.LASF126:
	.string	"cftab"
.LASF229:
	.string	"nbytes_in_hi32"
.LASF34:
	.string	"_lock"
.LASF10:
	.string	"sizetype"
.LASF152:
	.string	"save_nblock"
.LASF61:
	.string	"avail_in"
.LASF0:
	.string	"long unsigned int"
.LASF216:
	.string	"corrupt"
.LASF208:
	.string	"cs_avail_out"
.LASF30:
	.string	"_old_offset"
.LASF142:
	.string	"save_j"
.LASF43:
	.string	"_IO_FILE"
.LASF233:
	.string	"unused"
.LASF259:
	.string	"BZ2_bzflush"
.LASF181:
	.string	"add_pair_to_block"
.LASF50:
	.string	"_ISalpha"
.LASF237:
	.string	"BZ2_bzReadGetUnused"
.LASF202:
	.string	"c_state_out_len"
.LASF215:
	.string	"BZ2_bzDecompress"
.LASF121:
	.string	"smallDecompress"
.LASF122:
	.string	"currBlockNo"
.LASF1:
	.string	"unsigned char"
.LASF234:
	.string	"nUnused"
.LASF159:
	.string	"save_zj"
.LASF46:
	.string	"_sbuf"
.LASF19:
	.string	"_IO_write_ptr"
.LASF153:
	.string	"save_es"
.LASF200:
	.string	"c_calculatedBlockCRC"
.LASF245:
	.string	"BZ2_bzBuffToBuffDecompress"
.LASF164:
	.string	"save_gPerm"
.LASF203:
	.string	"c_nblock_used"
.LASF175:
	.string	"addr"
.LASF68:
	.string	"state"
.LASF59:
	.string	"_ISalnum"
.LASF183:
	.string	"copy_input_until_stop"
.LASF165:
	.string	"DState"
.LASF86:
	.string	"ftab"
.LASF249:
	.string	"open_mode"
.LASF177:
	.string	"prepare_new_block"
.LASF172:
	.string	"errcode"
.LASF8:
	.string	"__off_t"
.LASF220:
	.string	"bzerror"
.LASF176:
	.string	"default_bzfree"
.LASF257:
	.string	"nread"
.LASF56:
	.string	"_ISblank"
.LASF4:
	.string	"signed char"
.LASF72:
	.string	"bz_stream"
.LASF127:
	.string	"cftabCopy"
.LASF115:
	.string	"rfreq"
.LASF2:
	.string	"short unsigned int"
.LASF166:
	.string	"handle"
.LASF96:
	.string	"nblock"
.LASF180:
	.string	"isempty_RL"
.LASF235:
	.string	"BZ2_bzReadClose"
.LASF194:
	.string	"BZ2_bzDecompressInit"
.LASF118:
	.string	"state_out_ch"
.LASF66:
	.string	"total_out_lo32"
.LASF244:
	.string	"errhandler"
.LASF268:
	.string	"bzlib.c"
.LASF130:
	.string	"storedCombinedCRC"
.LASF75:
	.string	"Char"
.LASF27:
	.string	"_chain"
.LASF48:
	.string	"_ISupper"
.LASF29:
	.string	"_flags2"
.LASF132:
	.string	"calculatedCombinedCRC"
.LASF144:
	.string	"save_alphaSize"
.LASF31:
	.string	"_cur_column"
.LASF128:
	.string	"ll16"
.LASF147:
	.string	"save_EOB"
.LASF9:
	.string	"__off64_t"
.LASF42:
	.string	"_unused2"
.LASF21:
	.string	"_IO_buf_base"
.LASF103:
	.string	"bsBuff"
.LASF125:
	.string	"nblock_used"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
