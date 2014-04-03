	.file	"ssi.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 ssi.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.data
	.align 4
	.type	v20magic, @object
	.size	v20magic, 4
v20magic:
	.long	-202118735
	.align 4
	.type	v20swap, @object
	.size	v20swap, 4
v20swap:
	.long	-1310067725
	.section	.rodata
.LC0:
	.string	"rb"
	.text
	.globl	SSIOpen
	.type	SSIOpen, @function
SSIOpen:
.LFB2:
	.file 1 "ssi.c"
	.loc 1 61 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# filename, filename
	movq	%rsi, -32(%rbp)	# ret_sfp, ret_sfp
	.loc 1 62 0
	movq	$0, -8(%rbp)	#, sfp
	.loc 1 64 0
	movl	$144, %edi	#,
	call	malloc	#
	movq	%rax, -8(%rbp)	# tmp63, sfp
	cmpq	$0, -8(%rbp)	#, sfp
	jne	.L2	#,
	.loc 1 64 0 is_stmt 0 discriminator 1
	movl	$3, %eax	#, D.7594
	jmp	.L3	#
.L2:
	.loc 1 65 0 is_stmt 1
	movq	-24(%rbp), %rax	# filename, tmp64
	movl	$.LC0, %esi	#,
	movq	%rax, %rdi	# tmp64,
	call	fopen	#
	movq	-8(%rbp), %rdx	# sfp, tmp65
	movq	%rax, (%rdx)	# D.7595, sfp_3->fp
	movq	-8(%rbp), %rax	# sfp, tmp66
	movq	(%rax), %rax	# sfp_3->fp, D.7595
	testq	%rax, %rax	# D.7595
	jne	.L4	#,
	.loc 1 66 0
	movq	-8(%rbp), %rax	# sfp, tmp67
	movq	%rax, %rdi	# tmp67,
	call	free	#
	.loc 1 67 0
	movl	$4, %eax	#, D.7594
	jmp	.L3	#
.L4:
	.loc 1 69 0
	movq	-8(%rbp), %rax	# sfp, tmp68
	movq	%rax, %rdi	# tmp68,
	call	load_indexfile	#
	movl	%eax, -12(%rbp)	# tmp69, status
	.loc 1 70 0
	movq	-32(%rbp), %rax	# ret_sfp, tmp70
	movq	-8(%rbp), %rdx	# sfp, tmp71
	movq	%rdx, (%rax)	# tmp71, *ret_sfp_10(D)
	.loc 1 71 0
	movl	-12(%rbp), %eax	# status, D.7594
.L3:
	.loc 1 72 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	SSIOpen, .-SSIOpen
	.type	load_indexfile, @function
load_indexfile:
.LFB3:
	.loc 1 80 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# sfp, sfp
	.loc 1 85 0
	movl	$6, -20(%rbp)	#, status
	.loc 1 87 0
	movq	-40(%rbp), %rax	# sfp, tmp205
	movq	$0, 104(%rax)	#, sfp_6(D)->filename
	.loc 1 88 0
	movq	-40(%rbp), %rax	# sfp, tmp206
	movq	$0, 112(%rax)	#, sfp_6(D)->fileformat
	.loc 1 89 0
	movq	-40(%rbp), %rax	# sfp, tmp207
	movq	$0, 120(%rax)	#, sfp_6(D)->fileflags
	.loc 1 90 0
	movq	-40(%rbp), %rax	# sfp, tmp208
	movq	$0, 128(%rax)	#, sfp_6(D)->bpl
	.loc 1 91 0
	movq	-40(%rbp), %rax	# sfp, tmp209
	movq	$0, 136(%rax)	#, sfp_6(D)->rpl
	.loc 1 92 0
	movq	-40(%rbp), %rax	# sfp, tmp210
	movw	$0, 12(%rax)	#, sfp_6(D)->nfiles
	.loc 1 93 0
	movq	-40(%rbp), %rax	# sfp, tmp211
	movq	(%rax), %rax	# sfp_6(D)->fp, D.7598
	leaq	-24(%rbp), %rdx	#, tmp212
	movq	%rdx, %rsi	# tmp212,
	movq	%rax, %rdi	# D.7598,
	call	read_i32	#
	testl	%eax, %eax	# D.7597
	jne	.L6	#,
	.loc 1 93 0 is_stmt 0 discriminator 1
	movl	$5, -20(%rbp)	#, status
	jmp	.L7	#
.L6:
	.loc 1 94 0 is_stmt 1
	movl	-24(%rbp), %edx	# magic, magic.0
	movl	v20magic(%rip), %eax	# v20magic, v20magic.1
	cmpl	%eax, %edx	# v20magic.1, magic.0
	je	.L8	#,
	.loc 1 94 0 is_stmt 0 discriminator 1
	movl	-24(%rbp), %edx	# magic, magic.2
	movl	v20swap(%rip), %eax	# v20swap, v20swap.3
	cmpl	%eax, %edx	# v20swap.3, magic.2
	je	.L8	#,
	movl	$5, -20(%rbp)	#, status
	jmp	.L7	#
.L8:
	.loc 1 95 0 is_stmt 1
	movq	-40(%rbp), %rax	# sfp, tmp213
	leaq	8(%rax), %rdx	#, D.7599
	movq	-40(%rbp), %rax	# sfp, tmp214
	movq	(%rax), %rax	# sfp_6(D)->fp, D.7598
	movq	%rdx, %rsi	# D.7599,
	movq	%rax, %rdi	# D.7598,
	call	read_i32	#
	testl	%eax, %eax	# D.7597
	jne	.L9	#,
	.loc 1 95 0 is_stmt 0 discriminator 1
	jmp	.L7	#
.L9:
	.loc 1 100 0 is_stmt 1
	movq	-40(%rbp), %rax	# sfp, tmp215
	movl	8(%rax), %eax	# sfp_6(D)->flags, D.7600
	andl	$2, %eax	#, D.7600
	testl	%eax, %eax	# D.7600
	jne	.L10	#,
	.loc 1 101 0 discriminator 1
	movq	-40(%rbp), %rax	# sfp, tmp216
	movl	8(%rax), %eax	# sfp_6(D)->flags, D.7600
	andl	$1, %eax	#, D.7600
	.loc 1 100 0 discriminator 1
	testl	%eax, %eax	# D.7600
	je	.L11	#,
.L10:
	.loc 1 102 0
	movl	$7, -20(%rbp)	#, status
	jmp	.L7	#
.L11:
	.loc 1 105 0
	movq	-40(%rbp), %rax	# sfp, tmp217
	movl	8(%rax), %eax	# sfp_6(D)->flags, D.7600
	andl	$2, %eax	#, D.7600
	testl	%eax, %eax	# D.7600
	setne	%al	#, D.7601
	movl	%eax, %edx	# D.7601, D.7602
	movq	-40(%rbp), %rax	# sfp, tmp218
	movb	%dl, 96(%rax)	# D.7602, sfp_6(D)->imode
	.loc 1 106 0
	movq	-40(%rbp), %rax	# sfp, tmp219
	movl	8(%rax), %eax	# sfp_6(D)->flags, D.7600
	andl	$1, %eax	#, D.7600
	testl	%eax, %eax	# D.7600
	setne	%al	#, D.7601
	movl	%eax, %edx	# D.7601, D.7602
	movq	-40(%rbp), %rax	# sfp, tmp220
	movb	%dl, 97(%rax)	# D.7602, sfp_6(D)->smode
	.loc 1 108 0
	movq	-40(%rbp), %rax	# sfp, tmp221
	leaq	12(%rax), %rdx	#, D.7603
	movq	-40(%rbp), %rax	# sfp, tmp222
	movq	(%rax), %rax	# sfp_6(D)->fp, D.7598
	movq	%rdx, %rsi	# D.7603,
	movq	%rax, %rdi	# D.7598,
	call	read_i16	#
	testl	%eax, %eax	# D.7597
	jne	.L12	#,
	.loc 1 108 0 is_stmt 0 discriminator 1
	jmp	.L7	#
.L12:
	.loc 1 109 0 is_stmt 1
	movq	-40(%rbp), %rax	# sfp, tmp223
	leaq	16(%rax), %rdx	#, D.7599
	movq	-40(%rbp), %rax	# sfp, tmp224
	movq	(%rax), %rax	# sfp_6(D)->fp, D.7598
	movq	%rdx, %rsi	# D.7599,
	movq	%rax, %rdi	# D.7598,
	call	read_i32	#
	testl	%eax, %eax	# D.7597
	jne	.L13	#,
	.loc 1 109 0 is_stmt 0 discriminator 1
	jmp	.L7	#
.L13:
	.loc 1 110 0 is_stmt 1
	movq	-40(%rbp), %rax	# sfp, tmp225
	leaq	20(%rax), %rdx	#, D.7599
	movq	-40(%rbp), %rax	# sfp, tmp226
	movq	(%rax), %rax	# sfp_6(D)->fp, D.7598
	movq	%rdx, %rsi	# D.7599,
	movq	%rax, %rdi	# D.7598,
	call	read_i32	#
	testl	%eax, %eax	# D.7597
	jne	.L14	#,
	.loc 1 110 0 is_stmt 0 discriminator 1
	jmp	.L7	#
.L14:
	.loc 1 111 0 is_stmt 1
	movq	-40(%rbp), %rax	# sfp, tmp227
	leaq	24(%rax), %rdx	#, D.7599
	movq	-40(%rbp), %rax	# sfp, tmp228
	movq	(%rax), %rax	# sfp_6(D)->fp, D.7598
	movq	%rdx, %rsi	# D.7599,
	movq	%rax, %rdi	# D.7598,
	call	read_i32	#
	testl	%eax, %eax	# D.7597
	jne	.L15	#,
	.loc 1 111 0 is_stmt 0 discriminator 1
	jmp	.L7	#
.L15:
	.loc 1 112 0 is_stmt 1
	movq	-40(%rbp), %rax	# sfp, tmp229
	leaq	28(%rax), %rdx	#, D.7599
	movq	-40(%rbp), %rax	# sfp, tmp230
	movq	(%rax), %rax	# sfp_6(D)->fp, D.7598
	movq	%rdx, %rsi	# D.7599,
	movq	%rax, %rdi	# D.7598,
	call	read_i32	#
	testl	%eax, %eax	# D.7597
	jne	.L16	#,
	.loc 1 112 0 is_stmt 0 discriminator 1
	jmp	.L7	#
.L16:
	.loc 1 113 0 is_stmt 1
	movq	-40(%rbp), %rax	# sfp, tmp231
	leaq	32(%rax), %rdx	#, D.7599
	movq	-40(%rbp), %rax	# sfp, tmp232
	movq	(%rax), %rax	# sfp_6(D)->fp, D.7598
	movq	%rdx, %rsi	# D.7599,
	movq	%rax, %rdi	# D.7598,
	call	read_i32	#
	testl	%eax, %eax	# D.7597
	jne	.L17	#,
	.loc 1 113 0 is_stmt 0 discriminator 1
	jmp	.L7	#
.L17:
	.loc 1 114 0 is_stmt 1
	movq	-40(%rbp), %rax	# sfp, tmp233
	leaq	36(%rax), %rdx	#, D.7599
	movq	-40(%rbp), %rax	# sfp, tmp234
	movq	(%rax), %rax	# sfp_6(D)->fp, D.7598
	movq	%rdx, %rsi	# D.7599,
	movq	%rax, %rdi	# D.7598,
	call	read_i32	#
	testl	%eax, %eax	# D.7597
	jne	.L18	#,
	.loc 1 114 0 is_stmt 0 discriminator 1
	jmp	.L7	#
.L18:
	.loc 1 115 0 is_stmt 1
	movq	-40(%rbp), %rax	# sfp, tmp235
	leaq	40(%rax), %rdx	#, D.7599
	movq	-40(%rbp), %rax	# sfp, tmp236
	movq	(%rax), %rax	# sfp_6(D)->fp, D.7598
	movq	%rdx, %rsi	# D.7599,
	movq	%rax, %rdi	# D.7598,
	call	read_i32	#
	testl	%eax, %eax	# D.7597
	jne	.L19	#,
	.loc 1 115 0 is_stmt 0 discriminator 1
	jmp	.L7	#
.L19:
	.loc 1 116 0 is_stmt 1
	movq	-40(%rbp), %rax	# sfp, tmp237
	leaq	44(%rax), %rdx	#, D.7599
	movq	-40(%rbp), %rax	# sfp, tmp238
	movq	(%rax), %rax	# sfp_6(D)->fp, D.7598
	movq	%rdx, %rsi	# D.7599,
	movq	%rax, %rdi	# D.7598,
	call	read_i32	#
	testl	%eax, %eax	# D.7597
	jne	.L20	#,
	.loc 1 116 0 is_stmt 0 discriminator 1
	jmp	.L7	#
.L20:
	.loc 1 118 0 is_stmt 1
	movq	-40(%rbp), %rax	# sfp, tmp239
	leaq	48(%rax), %rdx	#, D.7604
	movq	-40(%rbp), %rax	# sfp, tmp240
	movzbl	96(%rax), %eax	# sfp_6(D)->imode, D.7602
	movsbl	%al, %ecx	# D.7602, D.7597
	movq	-40(%rbp), %rax	# sfp, tmp241
	movq	(%rax), %rax	# sfp_6(D)->fp, D.7598
	movl	%ecx, %esi	# D.7597,
	movq	%rax, %rdi	# D.7598,
	call	read_offset	#
	testl	%eax, %eax	# D.7597
	jne	.L21	#,
	.loc 1 118 0 is_stmt 0 discriminator 1
	jmp	.L7	#
.L21:
	.loc 1 119 0 is_stmt 1
	movq	-40(%rbp), %rax	# sfp, tmp242
	leaq	64(%rax), %rdx	#, D.7604
	movq	-40(%rbp), %rax	# sfp, tmp243
	movzbl	96(%rax), %eax	# sfp_6(D)->imode, D.7602
	movsbl	%al, %ecx	# D.7602, D.7597
	movq	-40(%rbp), %rax	# sfp, tmp244
	movq	(%rax), %rax	# sfp_6(D)->fp, D.7598
	movl	%ecx, %esi	# D.7597,
	movq	%rax, %rdi	# D.7598,
	call	read_offset	#
	testl	%eax, %eax	# D.7597
	jne	.L22	#,
	.loc 1 119 0 is_stmt 0 discriminator 1
	jmp	.L7	#
.L22:
	.loc 1 120 0 is_stmt 1
	movq	-40(%rbp), %rax	# sfp, tmp245
	leaq	80(%rax), %rdx	#, D.7604
	movq	-40(%rbp), %rax	# sfp, tmp246
	movzbl	96(%rax), %eax	# sfp_6(D)->imode, D.7602
	movsbl	%al, %ecx	# D.7602, D.7597
	movq	-40(%rbp), %rax	# sfp, tmp247
	movq	(%rax), %rax	# sfp_6(D)->fp, D.7598
	movl	%ecx, %esi	# D.7597,
	movq	%rax, %rdi	# D.7598,
	call	read_offset	#
	testl	%eax, %eax	# D.7597
	jne	.L23	#,
	.loc 1 120 0 is_stmt 0 discriminator 1
	jmp	.L7	#
.L23:
	.loc 1 128 0 is_stmt 1
	movq	-40(%rbp), %rax	# sfp, tmp248
	movzwl	12(%rax), %eax	# sfp_6(D)->nfiles, D.7605
	testw	%ax, %ax	# D.7605
	jne	.L24	#,
	.loc 1 128 0 is_stmt 0 discriminator 1
	jmp	.L7	#
.L24:
	.loc 1 129 0 is_stmt 1
	movq	-40(%rbp), %rax	# sfp, tmp249
	movzwl	12(%rax), %eax	# sfp_6(D)->nfiles, D.7605
	movzwl	%ax, %eax	# D.7605, D.7606
	salq	$3, %rax	#, D.7606
	movq	%rax, %rdi	# D.7606,
	call	malloc	#
	movq	%rax, %rdx	# tmp250, D.7607
	movq	-40(%rbp), %rax	# sfp, tmp251
	movq	%rdx, 104(%rax)	# D.7607, sfp_6(D)->filename
	movq	-40(%rbp), %rax	# sfp, tmp252
	movq	104(%rax), %rax	# sfp_6(D)->filename, D.7608
	testq	%rax, %rax	# D.7608
	jne	.L25	#,
	.loc 1 129 0 is_stmt 0 discriminator 1
	movl	$3, -20(%rbp)	#, status
	jmp	.L7	#
.L25:
	.loc 1 130 0 is_stmt 1
	movw	$0, -26(%rbp)	#, i
	jmp	.L26	#
.L27:
	.loc 1 130 0 is_stmt 0 discriminator 2
	movq	-40(%rbp), %rax	# sfp, tmp253
	movq	104(%rax), %rax	# sfp_6(D)->filename, D.7608
	movzwl	-26(%rbp), %edx	# i, D.7606
	salq	$3, %rdx	#, D.7606
	addq	%rdx, %rax	# D.7606, D.7608
	movq	$0, (%rax)	#, *_84
	movzwl	-26(%rbp), %eax	# i, i.4
	addl	$1, %eax	#, tmp254
	movw	%ax, -26(%rbp)	# tmp254, i
.L26:
	.loc 1 130 0 discriminator 1
	movq	-40(%rbp), %rax	# sfp, tmp255
	movzwl	12(%rax), %eax	# sfp_6(D)->nfiles, D.7605
	cmpw	-26(%rbp), %ax	# i, D.7605
	ja	.L27	#,
	.loc 1 131 0 is_stmt 1
	movq	-40(%rbp), %rax	# sfp, tmp256
	movzwl	12(%rax), %eax	# sfp_6(D)->nfiles, D.7605
	movzwl	%ax, %eax	# D.7605, D.7606
	salq	$2, %rax	#, D.7606
	movq	%rax, %rdi	# D.7606,
	call	malloc	#
	movq	%rax, %rdx	# tmp257, D.7607
	movq	-40(%rbp), %rax	# sfp, tmp258
	movq	%rdx, 112(%rax)	# D.7607, sfp_6(D)->fileformat
	movq	-40(%rbp), %rax	# sfp, tmp259
	movq	112(%rax), %rax	# sfp_6(D)->fileformat, D.7599
	testq	%rax, %rax	# D.7599
	jne	.L28	#,
	.loc 1 131 0 is_stmt 0 discriminator 1
	movl	$3, -20(%rbp)	#, status
	jmp	.L7	#
.L28:
	.loc 1 132 0 is_stmt 1
	movq	-40(%rbp), %rax	# sfp, tmp260
	movzwl	12(%rax), %eax	# sfp_6(D)->nfiles, D.7605
	movzwl	%ax, %eax	# D.7605, D.7606
	salq	$2, %rax	#, D.7606
	movq	%rax, %rdi	# D.7606,
	call	malloc	#
	movq	%rax, %rdx	# tmp261, D.7607
	movq	-40(%rbp), %rax	# sfp, tmp262
	movq	%rdx, 120(%rax)	# D.7607, sfp_6(D)->fileflags
	movq	-40(%rbp), %rax	# sfp, tmp263
	movq	120(%rax), %rax	# sfp_6(D)->fileflags, D.7599
	testq	%rax, %rax	# D.7599
	jne	.L29	#,
	.loc 1 132 0 is_stmt 0 discriminator 1
	movl	$3, -20(%rbp)	#, status
	jmp	.L7	#
.L29:
	.loc 1 133 0 is_stmt 1
	movq	-40(%rbp), %rax	# sfp, tmp264
	movzwl	12(%rax), %eax	# sfp_6(D)->nfiles, D.7605
	movzwl	%ax, %eax	# D.7605, D.7606
	salq	$2, %rax	#, D.7606
	movq	%rax, %rdi	# D.7606,
	call	malloc	#
	movq	%rax, %rdx	# tmp265, D.7607
	movq	-40(%rbp), %rax	# sfp, tmp266
	movq	%rdx, 128(%rax)	# D.7607, sfp_6(D)->bpl
	movq	-40(%rbp), %rax	# sfp, tmp267
	movq	128(%rax), %rax	# sfp_6(D)->bpl, D.7599
	testq	%rax, %rax	# D.7599
	jne	.L30	#,
	.loc 1 133 0 is_stmt 0 discriminator 1
	movl	$3, -20(%rbp)	#, status
	jmp	.L7	#
.L30:
	.loc 1 134 0 is_stmt 1
	movq	-40(%rbp), %rax	# sfp, tmp268
	movzwl	12(%rax), %eax	# sfp_6(D)->nfiles, D.7605
	movzwl	%ax, %eax	# D.7605, D.7606
	salq	$2, %rax	#, D.7606
	movq	%rax, %rdi	# D.7606,
	call	malloc	#
	movq	%rax, %rdx	# tmp269, D.7607
	movq	-40(%rbp), %rax	# sfp, tmp270
	movq	%rdx, 136(%rax)	# D.7607, sfp_6(D)->rpl
	movq	-40(%rbp), %rax	# sfp, tmp271
	movq	136(%rax), %rax	# sfp_6(D)->rpl, D.7599
	testq	%rax, %rax	# D.7599
	jne	.L31	#,
	.loc 1 134 0 is_stmt 0 discriminator 1
	movl	$3, -20(%rbp)	#, status
	jmp	.L7	#
.L31:
	.loc 1 136 0 is_stmt 1
	movw	$0, -26(%rbp)	#, i
	jmp	.L32	#
.L40:
	.loc 1 142 0
	movzwl	-26(%rbp), %ecx	# i, D.7600
	movq	-40(%rbp), %rax	# sfp, tmp272
	movl	36(%rax), %edx	# sfp_6(D)->frecsize, D.7600
	movq	-40(%rbp), %rax	# sfp, tmp273
	leaq	48(%rax), %rsi	#, D.7604
	movq	-40(%rbp), %rax	# sfp, tmp274
	movq	%rax, %rdi	# tmp274,
	call	indexfile_position	#
	testl	%eax, %eax	# D.7597
	je	.L33	#,
	.loc 1 142 0 is_stmt 0 discriminator 1
	jmp	.L7	#
.L33:
	.loc 1 143 0 is_stmt 1
	movq	-40(%rbp), %rax	# sfp, tmp275
	movq	104(%rax), %rax	# sfp_6(D)->filename, D.7608
	movzwl	-26(%rbp), %edx	# i, D.7606
	salq	$3, %rdx	#, D.7606
	leaq	(%rax,%rdx), %rbx	#, D.7608
	movq	-40(%rbp), %rax	# sfp, tmp276
	movl	24(%rax), %eax	# sfp_6(D)->flen, D.7600
	movl	%eax, %eax	# D.7600, D.7606
	movq	%rax, %rdi	# D.7606,
	call	malloc	#
	movq	%rax, (%rbx)	# D.7607, *_120
	movq	(%rbx), %rax	# *_120, D.7609
	testq	%rax, %rax	# D.7609
	jne	.L34	#,
	.loc 1 143 0 is_stmt 0 discriminator 1
	movl	$3, -20(%rbp)	#, status
	jmp	.L7	#
.L34:
	.loc 1 144 0 is_stmt 1
	movq	-40(%rbp), %rax	# sfp, tmp278
	movq	(%rax), %rcx	# sfp_6(D)->fp, D.7598
	movq	-40(%rbp), %rax	# sfp, tmp279
	movl	24(%rax), %eax	# sfp_6(D)->flen, D.7600
	movl	%eax, %edx	# D.7600, D.7606
	movq	-40(%rbp), %rax	# sfp, tmp280
	movq	104(%rax), %rax	# sfp_6(D)->filename, D.7608
	movzwl	-26(%rbp), %esi	# i, D.7606
	salq	$3, %rsi	#, D.7606
	addq	%rsi, %rax	# D.7606, D.7608
	movq	(%rax), %rax	# *_132, D.7609
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.7609,
	call	fread	#
	movq	-40(%rbp), %rdx	# sfp, tmp281
	movl	24(%rdx), %edx	# sfp_6(D)->flen, D.7600
	movl	%edx, %edx	# D.7600, D.7606
	cmpq	%rdx, %rax	# D.7606, D.7606
	je	.L35	#,
	.loc 1 144 0 is_stmt 0 discriminator 1
	jmp	.L7	#
.L35:
	.loc 1 145 0 is_stmt 1
	movq	-40(%rbp), %rax	# sfp, tmp282
	movq	112(%rax), %rax	# sfp_6(D)->fileformat, D.7599
	movzwl	-26(%rbp), %edx	# i, D.7606
	salq	$2, %rdx	#, D.7606
	addq	%rax, %rdx	# D.7599, D.7599
	movq	-40(%rbp), %rax	# sfp, tmp283
	movq	(%rax), %rax	# sfp_6(D)->fp, D.7598
	movq	%rdx, %rsi	# D.7599,
	movq	%rax, %rdi	# D.7598,
	call	read_i32	#
	testl	%eax, %eax	# D.7597
	jne	.L36	#,
	.loc 1 145 0 is_stmt 0 discriminator 1
	jmp	.L7	#
.L36:
	.loc 1 146 0 is_stmt 1
	movq	-40(%rbp), %rax	# sfp, tmp284
	movq	120(%rax), %rax	# sfp_6(D)->fileflags, D.7599
	movzwl	-26(%rbp), %edx	# i, D.7606
	salq	$2, %rdx	#, D.7606
	addq	%rax, %rdx	# D.7599, D.7599
	movq	-40(%rbp), %rax	# sfp, tmp285
	movq	(%rax), %rax	# sfp_6(D)->fp, D.7598
	movq	%rdx, %rsi	# D.7599,
	movq	%rax, %rdi	# D.7598,
	call	read_i32	#
	testl	%eax, %eax	# D.7597
	jne	.L37	#,
	.loc 1 146 0 is_stmt 0 discriminator 1
	jmp	.L7	#
.L37:
	.loc 1 147 0 is_stmt 1
	movq	-40(%rbp), %rax	# sfp, tmp286
	movq	128(%rax), %rax	# sfp_6(D)->bpl, D.7599
	movzwl	-26(%rbp), %edx	# i, D.7606
	salq	$2, %rdx	#, D.7606
	addq	%rax, %rdx	# D.7599, D.7599
	movq	-40(%rbp), %rax	# sfp, tmp287
	movq	(%rax), %rax	# sfp_6(D)->fp, D.7598
	movq	%rdx, %rsi	# D.7599,
	movq	%rax, %rdi	# D.7598,
	call	read_i32	#
	testl	%eax, %eax	# D.7597
	jne	.L38	#,
	.loc 1 147 0 is_stmt 0 discriminator 1
	jmp	.L7	#
.L38:
	.loc 1 148 0 is_stmt 1
	movq	-40(%rbp), %rax	# sfp, tmp288
	movq	136(%rax), %rax	# sfp_6(D)->rpl, D.7599
	movzwl	-26(%rbp), %edx	# i, D.7606
	salq	$2, %rdx	#, D.7606
	addq	%rax, %rdx	# D.7599, D.7599
	movq	-40(%rbp), %rax	# sfp, tmp289
	movq	(%rax), %rax	# sfp_6(D)->fp, D.7598
	movq	%rdx, %rsi	# D.7599,
	movq	%rax, %rdi	# D.7598,
	call	read_i32	#
	testl	%eax, %eax	# D.7597
	jne	.L39	#,
	.loc 1 148 0 is_stmt 0 discriminator 1
	jmp	.L7	#
.L39:
	.loc 1 136 0 is_stmt 1
	movzwl	-26(%rbp), %eax	# i, i.5
	addl	$1, %eax	#, tmp290
	movw	%ax, -26(%rbp)	# tmp290, i
.L32:
	.loc 1 136 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# sfp, tmp291
	movzwl	12(%rax), %eax	# sfp_6(D)->nfiles, D.7605
	cmpw	-26(%rbp), %ax	# i, D.7605
	ja	.L40	#,
	.loc 1 153 0 is_stmt 1
	movl	$0, %eax	#, D.7597
	jmp	.L42	#
.L7:
	.loc 1 158 0
	movq	-40(%rbp), %rax	# sfp, tmp292
	movq	%rax, %rdi	# tmp292,
	call	SSIClose	#
	.loc 1 159 0
	movl	-20(%rbp), %eax	# status, D.7597
.L42:
	.loc 1 160 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	load_indexfile, .-load_indexfile
	.globl	SSIGetOffsetByName
	.type	SSIGetOffsetByName, @function
SSIGetOffsetByName:
.LFB4:
	.loc 1 186 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# sfp, sfp
	movq	%rsi, -32(%rbp)	# key, key
	movq	%rdx, -40(%rbp)	# ret_fh, ret_fh
	movq	%rcx, -48(%rbp)	# ret_offset, ret_offset
	.loc 1 192 0
	movq	-24(%rbp), %rax	# sfp, tmp88
	movl	16(%rax), %r8d	# sfp_3(D)->nprimary, D.7611
	movq	-24(%rbp), %rax	# sfp, tmp89
	movl	40(%rax), %edi	# sfp_3(D)->precsize, D.7611
	movq	-24(%rbp), %rax	# sfp, tmp90
	leaq	64(%rax), %rcx	#, D.7612
	movq	-24(%rbp), %rax	# sfp, tmp91
	movl	28(%rax), %eax	# sfp_3(D)->plen, D.7611
	movl	%eax, %edx	# D.7611, D.7610
	movq	-32(%rbp), %rsi	# key, tmp92
	movq	-24(%rbp), %rax	# sfp, tmp93
	movl	%r8d, %r9d	# D.7611,
	movl	%edi, %r8d	# D.7611,
	movq	%rax, %rdi	# tmp93,
	call	binary_search	#
	movl	%eax, -12(%rbp)	# tmp94, status
	.loc 1 194 0
	cmpl	$0, -12(%rbp)	#, status
	jne	.L44	#,
	.loc 1 197 0
	movq	-24(%rbp), %rax	# sfp, tmp95
	movq	(%rax), %rax	# sfp_3(D)->fp, D.7613
	leaq	-14(%rbp), %rdx	#, tmp96
	movq	%rdx, %rsi	# tmp96,
	movq	%rax, %rdi	# D.7613,
	call	read_i16	#
	testl	%eax, %eax	# D.7610
	jne	.L45	#,
	.loc 1 197 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, D.7610
	jmp	.L53	#
.L45:
	.loc 1 198 0 is_stmt 1
	movzwl	-14(%rbp), %eax	# fnum, fnum.6
	movzwl	%ax, %edx	# fnum.6, D.7610
	movq	-40(%rbp), %rax	# ret_fh, tmp97
	movl	%edx, (%rax)	# D.7610, *ret_fh_16(D)
	.loc 1 199 0
	movq	-24(%rbp), %rax	# sfp, tmp98
	movzbl	97(%rax), %eax	# sfp_3(D)->smode, D.7614
	movsbl	%al, %ecx	# D.7614, D.7610
	movq	-24(%rbp), %rax	# sfp, tmp99
	movq	(%rax), %rax	# sfp_3(D)->fp, D.7613
	movq	-48(%rbp), %rdx	# ret_offset, tmp100
	movl	%ecx, %esi	# D.7610,
	movq	%rax, %rdi	# D.7613,
	call	read_offset	#
	testl	%eax, %eax	# D.7610
	jne	.L47	#,
	.loc 1 199 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, D.7610
	jmp	.L53	#
.L47:
	.loc 1 201 0 is_stmt 1
	movl	$0, %eax	#, D.7610
	jmp	.L53	#
.L44:
	.loc 1 202 0
	cmpl	$2, -12(%rbp)	#, status
	jne	.L48	#,
	.loc 1 205 0
	movq	-24(%rbp), %rax	# sfp, tmp101
	movl	20(%rax), %eax	# sfp_3(D)->nsecondary, D.7611
	testl	%eax, %eax	# D.7611
	je	.L49	#,
.LBB2:
	.loc 1 207 0
	movq	-24(%rbp), %rax	# sfp, tmp102
	movl	20(%rax), %r8d	# sfp_3(D)->nsecondary, D.7611
	movq	-24(%rbp), %rax	# sfp, tmp103
	movl	44(%rax), %edi	# sfp_3(D)->srecsize, D.7611
	movq	-24(%rbp), %rax	# sfp, tmp104
	leaq	80(%rax), %rcx	#, D.7612
	movq	-24(%rbp), %rax	# sfp, tmp105
	movl	32(%rax), %eax	# sfp_3(D)->slen, D.7611
	movl	%eax, %edx	# D.7611, D.7610
	movq	-32(%rbp), %rsi	# key, tmp106
	movq	-24(%rbp), %rax	# sfp, tmp107
	movl	%r8d, %r9d	# D.7611,
	movl	%edi, %r8d	# D.7611,
	movq	%rax, %rdi	# tmp107,
	call	binary_search	#
	movl	%eax, -12(%rbp)	# tmp108, status
	.loc 1 209 0
	cmpl	$0, -12(%rbp)	#, status
	je	.L50	#,
	.loc 1 209 0 is_stmt 0 discriminator 1
	movl	-12(%rbp), %eax	# status, D.7610
	jmp	.L53	#
.L50:
	.loc 1 210 0 is_stmt 1
	movq	-24(%rbp), %rax	# sfp, tmp109
	movl	28(%rax), %eax	# sfp_3(D)->plen, D.7611
	movl	%eax, %eax	# D.7611, D.7615
	movq	%rax, %rdi	# D.7615,
	call	malloc	#
	movq	%rax, -8(%rbp)	# tmp110, pkey
	cmpq	$0, -8(%rbp)	#, pkey
	jne	.L51	#,
	.loc 1 210 0 is_stmt 0 discriminator 1
	movl	$3, %eax	#, D.7610
	jmp	.L53	#
.L51:
	.loc 1 211 0 is_stmt 1
	movq	-24(%rbp), %rax	# sfp, tmp111
	movq	(%rax), %rcx	# sfp_3(D)->fp, D.7613
	movq	-24(%rbp), %rax	# sfp, tmp112
	movl	28(%rax), %eax	# sfp_3(D)->plen, D.7611
	movl	%eax, %edx	# D.7611, D.7615
	movq	-8(%rbp), %rax	# pkey, tmp113
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp113,
	call	fread	#
	movq	-24(%rbp), %rdx	# sfp, tmp114
	movl	28(%rdx), %edx	# sfp_3(D)->plen, D.7611
	movl	%edx, %edx	# D.7611, D.7615
	cmpq	%rdx, %rax	# D.7615, D.7615
	je	.L52	#,
	.loc 1 211 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, D.7610
	jmp	.L53	#
.L52:
	.loc 1 213 0 is_stmt 1
	movq	-48(%rbp), %rcx	# ret_offset, tmp115
	movq	-40(%rbp), %rdx	# ret_fh, tmp116
	movq	-8(%rbp), %rsi	# pkey, tmp117
	movq	-24(%rbp), %rax	# sfp, tmp118
	movq	%rax, %rdi	# tmp118,
	call	SSIGetOffsetByName	#
	movl	%eax, -12(%rbp)	# tmp119, status
	.loc 1 214 0
	movq	-8(%rbp), %rax	# pkey, tmp120
	movq	%rax, %rdi	# tmp120,
	call	free	#
.L49:
.LBE2:
	.loc 1 216 0
	movl	-12(%rbp), %eax	# status, D.7610
	jmp	.L53	#
.L48:
	.loc 1 218 0
	movl	-12(%rbp), %eax	# status, D.7610
.L53:
	.loc 1 220 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	SSIGetOffsetByName, .-SSIGetOffsetByName
	.globl	SSIGetOffsetByNumber
	.type	SSIGetOffsetByNumber, @function
SSIGetOffsetByNumber:
.LFB5:
	.loc 1 243 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# sfp, sfp
	movl	%esi, -28(%rbp)	# n, n
	movq	%rdx, -40(%rbp)	# ret_fh, ret_fh
	movq	%rcx, -48(%rbp)	# ret_offset, ret_offset
	.loc 1 247 0
	movl	-28(%rbp), %edx	# n, n.7
	movq	-24(%rbp), %rax	# sfp, tmp83
	movl	16(%rax), %eax	# sfp_4(D)->nprimary, D.7617
	cmpl	%eax, %edx	# D.7617, n.7
	jb	.L55	#,
	.loc 1 247 0 is_stmt 0 discriminator 1
	movl	$2, %eax	#, D.7616
	jmp	.L62	#
.L55:
	.loc 1 248 0 is_stmt 1
	movl	-28(%rbp), %ecx	# n, n.8
	movq	-24(%rbp), %rax	# sfp, tmp84
	movl	40(%rax), %edx	# sfp_4(D)->precsize, D.7617
	movq	-24(%rbp), %rax	# sfp, tmp85
	leaq	64(%rax), %rsi	#, D.7618
	movq	-24(%rbp), %rax	# sfp, tmp86
	movq	%rax, %rdi	# tmp86,
	call	indexfile_position	#
	testl	%eax, %eax	# D.7616
	je	.L57	#,
	.loc 1 249 0
	movl	$8, %eax	#, D.7616
	jmp	.L62	#
.L57:
	.loc 1 251 0
	movq	-24(%rbp), %rax	# sfp, tmp87
	movl	28(%rax), %eax	# sfp_4(D)->plen, D.7617
	movl	%eax, %eax	# D.7617, D.7619
	movq	%rax, %rdi	# D.7619,
	call	malloc	#
	movq	%rax, -8(%rbp)	# tmp88, pkey
	cmpq	$0, -8(%rbp)	#, pkey
	jne	.L58	#,
	.loc 1 251 0 is_stmt 0 discriminator 1
	movl	$3, %eax	#, D.7616
	jmp	.L62	#
.L58:
	.loc 1 252 0 is_stmt 1
	movq	-24(%rbp), %rax	# sfp, tmp89
	movq	(%rax), %rcx	# sfp_4(D)->fp, D.7620
	movq	-24(%rbp), %rax	# sfp, tmp90
	movl	28(%rax), %eax	# sfp_4(D)->plen, D.7617
	movl	%eax, %edx	# D.7617, D.7619
	movq	-8(%rbp), %rax	# pkey, tmp91
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp91,
	call	fread	#
	movq	-24(%rbp), %rdx	# sfp, tmp92
	movl	28(%rdx), %edx	# sfp_4(D)->plen, D.7617
	movl	%edx, %edx	# D.7617, D.7619
	cmpq	%rdx, %rax	# D.7619, D.7619
	je	.L59	#,
	.loc 1 252 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, D.7616
	jmp	.L62	#
.L59:
	.loc 1 253 0 is_stmt 1
	movq	-24(%rbp), %rax	# sfp, tmp93
	movq	(%rax), %rax	# sfp_4(D)->fp, D.7620
	leaq	-10(%rbp), %rdx	#, tmp94
	movq	%rdx, %rsi	# tmp94,
	movq	%rax, %rdi	# D.7620,
	call	read_i16	#
	testl	%eax, %eax	# D.7616
	jne	.L60	#,
	.loc 1 253 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, D.7616
	jmp	.L62	#
.L60:
	.loc 1 254 0 is_stmt 1
	movq	-24(%rbp), %rax	# sfp, tmp95
	movzbl	97(%rax), %eax	# sfp_4(D)->smode, D.7621
	movsbl	%al, %ecx	# D.7621, D.7616
	movq	-24(%rbp), %rax	# sfp, tmp96
	movq	(%rax), %rax	# sfp_4(D)->fp, D.7620
	movq	-48(%rbp), %rdx	# ret_offset, tmp97
	movl	%ecx, %esi	# D.7616,
	movq	%rax, %rdi	# D.7620,
	call	read_offset	#
	testl	%eax, %eax	# D.7616
	jne	.L61	#,
	.loc 1 254 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, D.7616
	jmp	.L62	#
.L61:
	.loc 1 255 0 is_stmt 1
	movzwl	-10(%rbp), %eax	# fnum, fnum.9
	movzwl	%ax, %edx	# fnum.9, D.7616
	movq	-40(%rbp), %rax	# ret_fh, tmp98
	movl	%edx, (%rax)	# D.7616, *ret_fh_34(D)
	.loc 1 256 0
	movq	-8(%rbp), %rax	# pkey, tmp99
	movq	%rax, %rdi	# tmp99,
	call	free	#
	.loc 1 257 0
	movl	$0, %eax	#, D.7616
.L62:
	.loc 1 258 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	SSIGetOffsetByNumber, .-SSIGetOffsetByNumber
	.globl	SSIGetSubseqOffset
	.type	SSIGetSubseqOffset, @function
SSIGetSubseqOffset:
.LFB6:
	.loc 1 296 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -40(%rbp)	# sfp, sfp
	movq	%rsi, -48(%rbp)	# key, key
	movl	%edx, -52(%rbp)	# requested_start, requested_start
	movq	%rcx, -64(%rbp)	# ret_fh, ret_fh
	movq	%r8, -72(%rbp)	# record_offset, record_offset
	movq	%r9, -80(%rbp)	# data_offset, data_offset
	.loc 1 304 0
	movq	-72(%rbp), %rcx	# record_offset, tmp120
	movq	-64(%rbp), %rdx	# ret_fh, tmp121
	movq	-48(%rbp), %rsi	# key, tmp122
	movq	-40(%rbp), %rax	# sfp, tmp123
	movq	%rax, %rdi	# tmp123,
	call	SSIGetOffsetByName	#
	movl	%eax, -20(%rbp)	# tmp124, status
	.loc 1 305 0
	cmpl	$0, -20(%rbp)	#, status
	je	.L64	#,
	.loc 1 305 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# status, D.7622
	jmp	.L79	#
.L64:
	.loc 1 309 0 is_stmt 1
	movq	-40(%rbp), %rax	# sfp, tmp125
	movq	120(%rax), %rdx	# sfp_2(D)->fileflags, D.7623
	movq	-64(%rbp), %rax	# ret_fh, tmp126
	movl	(%rax), %eax	# *ret_fh_4(D), D.7622
	cltq
	salq	$2, %rax	#, D.7624
	addq	%rdx, %rax	# D.7623, D.7623
	movl	(%rax), %eax	# *_12, D.7625
	andl	$1, %eax	#, D.7625
	testl	%eax, %eax	# D.7625
	jne	.L66	#,
	.loc 1 310 0
	movl	$10, %eax	#, D.7622
	jmp	.L79	#
.L66:
	.loc 1 314 0
	movq	-40(%rbp), %rax	# sfp, tmp127
	movzbl	97(%rax), %eax	# sfp_2(D)->smode, D.7626
	movsbl	%al, %ecx	# D.7626, D.7622
	movq	-40(%rbp), %rax	# sfp, tmp128
	movq	(%rax), %rax	# sfp_2(D)->fp, D.7627
	movq	-80(%rbp), %rdx	# data_offset, tmp129
	movl	%ecx, %esi	# D.7622,
	movq	%rax, %rdi	# D.7627,
	call	read_offset	#
	testl	%eax, %eax	# D.7622
	jne	.L67	#,
	.loc 1 314 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, D.7622
	jmp	.L79	#
.L67:
	.loc 1 315 0 is_stmt 1
	movq	-40(%rbp), %rax	# sfp, tmp130
	movq	(%rax), %rax	# sfp_2(D)->fp, D.7627
	leaq	-24(%rbp), %rdx	#, tmp131
	movq	%rdx, %rsi	# tmp131,
	movq	%rax, %rdi	# D.7627,
	call	read_i32	#
	testl	%eax, %eax	# D.7622
	jne	.L68	#,
	.loc 1 315 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, D.7622
	jmp	.L79	#
.L68:
	.loc 1 320 0 is_stmt 1
	movq	-40(%rbp), %rax	# sfp, tmp132
	movq	136(%rax), %rdx	# sfp_2(D)->rpl, D.7623
	movq	-64(%rbp), %rax	# ret_fh, tmp133
	movl	(%rax), %eax	# *ret_fh_4(D), D.7622
	cltq
	salq	$2, %rax	#, D.7624
	addq	%rdx, %rax	# D.7623, D.7623
	movl	(%rax), %eax	# *_29, D.7625
	movl	%eax, -16(%rbp)	# D.7625, r
	.loc 1 321 0
	movq	-40(%rbp), %rax	# sfp, tmp134
	movq	128(%rax), %rdx	# sfp_2(D)->bpl, D.7623
	movq	-64(%rbp), %rax	# ret_fh, tmp135
	movl	(%rax), %eax	# *ret_fh_4(D), D.7622
	cltq
	salq	$2, %rax	#, D.7624
	addq	%rdx, %rax	# D.7623, D.7623
	movl	(%rax), %eax	# *_36, D.7625
	movl	%eax, -12(%rbp)	# D.7625, b
	.loc 1 322 0
	movl	-52(%rbp), %eax	# requested_start, tmp136
	movl	%eax, -8(%rbp)	# tmp136, i
	.loc 1 323 0
	movl	-8(%rbp), %eax	# i, tmp137
	subl	$1, %eax	#, D.7622
	cltd
	idivl	-16(%rbp)	# r
	movl	%eax, -4(%rbp)	# tmp139, l
	.loc 1 324 0
	cmpl	$0, -16(%rbp)	#, r
	je	.L69	#,
	.loc 1 324 0 is_stmt 0 discriminator 2
	cmpl	$0, -12(%rbp)	#, b
	jne	.L70	#,
.L69:
	.loc 1 324 0 discriminator 1
	movl	$10, %eax	#, D.7622
	jmp	.L79	#
.L70:
	.loc 1 325 0 is_stmt 1
	cmpl	$0, -8(%rbp)	#, i
	js	.L71	#,
	.loc 1 325 0 is_stmt 0 discriminator 2
	movl	-8(%rbp), %edx	# i, i.10
	movl	-24(%rbp), %eax	# len, len.11
	cmpl	%eax, %edx	# len.11, i.10
	jbe	.L72	#,
.L71:
	.loc 1 325 0 discriminator 1
	movl	$11, %eax	#, D.7622
	jmp	.L79	#
.L72:
	.loc 1 330 0 is_stmt 1
	movl	-16(%rbp), %eax	# r, tmp141
	addl	$1, %eax	#, D.7622
	cmpl	-12(%rbp), %eax	# b, D.7622
	jne	.L73	#,
	.loc 1 331 0
	movq	-40(%rbp), %rax	# sfp, tmp142
	movzbl	97(%rax), %eax	# sfp_2(D)->smode, D.7626
	testb	%al, %al	# D.7626
	jne	.L74	#,
	.loc 1 332 0
	movq	-80(%rbp), %rax	# data_offset, tmp143
	movb	$0, (%rax)	#, data_offset_19(D)->mode
	.loc 1 333 0
	movq	-80(%rbp), %rax	# data_offset, tmp144
	movl	8(%rax), %edx	# data_offset_19(D)->off.i32, D.7625
	movl	-4(%rbp), %eax	# l, tmp145
	imull	-12(%rbp), %eax	# b, D.7622
	leal	(%rdx,%rax), %ecx	#, D.7625
	movl	-8(%rbp), %eax	# i, tmp146
	subl	$1, %eax	#, D.7622
	cltd
	idivl	-16(%rbp)	# r
	movl	%edx, %eax	# tmp147, D.7622
	leal	(%rcx,%rax), %edx	#, D.7625
	movq	-80(%rbp), %rax	# data_offset, tmp149
	movl	%edx, 8(%rax)	# D.7625, data_offset_19(D)->off.i32
	jmp	.L75	#
.L74:
	.loc 1 334 0
	movq	-40(%rbp), %rax	# sfp, tmp150
	movzbl	97(%rax), %eax	# sfp_2(D)->smode, D.7626
	cmpb	$1, %al	#, D.7626
	jne	.L75	#,
	.loc 1 335 0
	movq	-80(%rbp), %rax	# data_offset, tmp151
	movb	$1, (%rax)	#, data_offset_19(D)->mode
	.loc 1 336 0
	movq	-80(%rbp), %rax	# data_offset, tmp152
	movq	8(%rax), %rdx	# data_offset_19(D)->off.i64, D.7628
	movl	-4(%rbp), %eax	# l, tmp153
	imull	-12(%rbp), %eax	# b, D.7622
	cltq
	leaq	(%rdx,%rax), %rcx	#, D.7628
	movl	-8(%rbp), %eax	# i, tmp154
	subl	$1, %eax	#, D.7622
	cltd
	idivl	-16(%rbp)	# r
	movl	%edx, %eax	# tmp155, D.7622
	cltq
	leaq	(%rcx,%rax), %rdx	#, D.7628
	movq	-80(%rbp), %rax	# data_offset, tmp157
	movq	%rdx, 8(%rax)	# D.7628, data_offset_19(D)->off.i64
.L75:
	.loc 1 338 0 discriminator 1
	movq	16(%rbp), %rax	# ret_actual_start, tmp158
	movl	-52(%rbp), %edx	# requested_start, tmp159
	movl	%edx, (%rax)	# tmp159, *ret_actual_start_64(D)
	jmp	.L76	#
.L73:
	.loc 1 343 0
	movq	-40(%rbp), %rax	# sfp, tmp160
	movzbl	97(%rax), %eax	# sfp_2(D)->smode, D.7626
	testb	%al, %al	# D.7626
	jne	.L77	#,
	.loc 1 344 0
	movq	-80(%rbp), %rax	# data_offset, tmp161
	movb	$0, (%rax)	#, data_offset_19(D)->mode
	.loc 1 345 0
	movq	-80(%rbp), %rax	# data_offset, tmp162
	movl	8(%rax), %edx	# data_offset_19(D)->off.i32, D.7625
	movl	-4(%rbp), %eax	# l, tmp163
	imull	-12(%rbp), %eax	# b, D.7622
	addl	%eax, %edx	# D.7625, D.7625
	movq	-80(%rbp), %rax	# data_offset, tmp164
	movl	%edx, 8(%rax)	# D.7625, data_offset_19(D)->off.i32
	jmp	.L78	#
.L77:
	.loc 1 346 0
	movq	-40(%rbp), %rax	# sfp, tmp165
	movzbl	97(%rax), %eax	# sfp_2(D)->smode, D.7626
	cmpb	$1, %al	#, D.7626
	jne	.L78	#,
	.loc 1 347 0
	movq	-80(%rbp), %rax	# data_offset, tmp166
	movb	$1, (%rax)	#, data_offset_19(D)->mode
	.loc 1 348 0
	movq	-80(%rbp), %rax	# data_offset, tmp167
	movq	8(%rax), %rdx	# data_offset_19(D)->off.i64, D.7628
	movl	-4(%rbp), %eax	# l, tmp168
	imull	-12(%rbp), %eax	# b, D.7622
	cltq
	addq	%rax, %rdx	# D.7628, D.7628
	movq	-80(%rbp), %rax	# data_offset, tmp169
	movq	%rdx, 8(%rax)	# D.7628, data_offset_19(D)->off.i64
.L78:
	.loc 1 351 0
	movl	-4(%rbp), %eax	# l, tmp170
	imull	-16(%rbp), %eax	# r, D.7622
	leal	1(%rax), %edx	#, D.7622
	movq	16(%rbp), %rax	# ret_actual_start, tmp171
	movl	%edx, (%rax)	# D.7622, *ret_actual_start_64(D)
.L76:
	.loc 1 353 0
	movl	$0, %eax	#, D.7622
.L79:
	.loc 1 354 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	SSIGetSubseqOffset, .-SSIGetSubseqOffset
	.globl	SSISetFilePosition
	.type	SSISetFilePosition, @function
SSISetFilePosition:
.LFB7:
	.loc 1 380 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# fp, fp
	movq	%rsi, -16(%rbp)	# offset, offset
	.loc 1 381 0
	movq	-16(%rbp), %rax	# offset, tmp65
	movzbl	(%rax), %eax	# offset_2(D)->mode, D.7630
	testb	%al, %al	# D.7630
	jne	.L81	#,
	.loc 1 382 0
	movq	-16(%rbp), %rax	# offset, tmp66
	movl	8(%rax), %eax	# offset_2(D)->off.i32, D.7631
	movl	%eax, %ecx	# D.7631, D.7632
	movq	-8(%rbp), %rax	# fp, tmp67
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.7632,
	movq	%rax, %rdi	# tmp67,
	call	fseek	#
	testl	%eax, %eax	# D.7629
	je	.L82	#,
	.loc 1 382 0 is_stmt 0 discriminator 1
	movl	$8, %eax	#, D.7629
	jmp	.L83	#
.L81:
	.loc 1 385 0 is_stmt 1
	movl	$7, %eax	#, D.7629
	jmp	.L83	#
.L82:
	.loc 1 395 0
	movl	$0, %eax	#, D.7629
.L83:
	.loc 1 396 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	SSISetFilePosition, .-SSISetFilePosition
	.globl	SSIFileInfo
	.type	SSIFileInfo, @function
SSIFileInfo:
.LFB8:
	.loc 1 419 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# sfp, sfp
	movl	%esi, -12(%rbp)	# fh, fh
	movq	%rdx, -24(%rbp)	# ret_filename, ret_filename
	movq	%rcx, -32(%rbp)	# ret_format, ret_format
	.loc 1 420 0
	cmpl	$0, -12(%rbp)	#, fh
	js	.L85	#,
	.loc 1 420 0 is_stmt 0 discriminator 2
	movq	-8(%rbp), %rax	# sfp, tmp74
	movzwl	12(%rax), %eax	# sfp_3(D)->nfiles, D.7634
	movzwl	%ax, %eax	# D.7634, D.7633
	cmpl	-12(%rbp), %eax	# fh, D.7633
	jg	.L86	#,
.L85:
	.loc 1 420 0 discriminator 1
	movl	$12, %eax	#, D.7633
	jmp	.L87	#
.L86:
	.loc 1 421 0 is_stmt 1
	movq	-8(%rbp), %rax	# sfp, tmp75
	movq	104(%rax), %rax	# sfp_3(D)->filename, D.7635
	movl	-12(%rbp), %edx	# fh, tmp76
	movslq	%edx, %rdx	# tmp76, D.7636
	salq	$3, %rdx	#, D.7636
	addq	%rdx, %rax	# D.7636, D.7635
	movq	(%rax), %rdx	# *_9, D.7637
	movq	-24(%rbp), %rax	# ret_filename, tmp77
	movq	%rdx, (%rax)	# D.7637, *ret_filename_11(D)
	.loc 1 422 0
	movq	-8(%rbp), %rax	# sfp, tmp78
	movq	112(%rax), %rax	# sfp_3(D)->fileformat, D.7638
	movl	-12(%rbp), %edx	# fh, tmp79
	movslq	%edx, %rdx	# tmp79, D.7636
	salq	$2, %rdx	#, D.7636
	addq	%rdx, %rax	# D.7636, D.7638
	movl	(%rax), %eax	# *_15, D.7639
	movl	%eax, %edx	# D.7639, D.7633
	movq	-32(%rbp), %rax	# ret_format, tmp80
	movl	%edx, (%rax)	# D.7633, *ret_format_18(D)
	.loc 1 423 0
	movl	$0, %eax	#, D.7633
.L87:
	.loc 1 424 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	SSIFileInfo, .-SSIFileInfo
	.globl	SSIClose
	.type	SSIClose, @function
SSIClose:
.LFB9:
	.loc 1 437 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# sfp, sfp
	.loc 1 438 0
	cmpq	$0, -8(%rbp)	#, sfp
	je	.L88	#,
	.loc 1 439 0
	movq	-8(%rbp), %rax	# sfp, tmp61
	movq	%rax, %rdi	# tmp61,
	call	clear_ssifile	#
	.loc 1 440 0
	movq	-8(%rbp), %rax	# sfp, tmp62
	movq	(%rax), %rax	# sfp_1(D)->fp, D.7640
	testq	%rax, %rax	# D.7640
	je	.L90	#,
	.loc 1 440 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# sfp, tmp63
	movq	(%rax), %rax	# sfp_1(D)->fp, D.7640
	movq	%rax, %rdi	# D.7640,
	call	fclose	#
.L90:
	.loc 1 441 0 is_stmt 1
	movq	-8(%rbp), %rax	# sfp, tmp64
	movq	%rax, %rdi	# tmp64,
	call	free	#
.L88:
	.loc 1 443 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	SSIClose, .-SSIClose
	.type	clear_ssifile, @function
clear_ssifile:
.LFB10:
	.loc 1 449 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# sfp, sfp
	.loc 1 452 0
	movq	-24(%rbp), %rax	# sfp, tmp81
	movq	104(%rax), %rax	# sfp_2(D)->filename, D.7641
	testq	%rax, %rax	# D.7641
	je	.L92	#,
	.loc 1 453 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L93	#
.L95:
	.loc 1 454 0
	movq	-24(%rbp), %rax	# sfp, tmp82
	movq	104(%rax), %rax	# sfp_2(D)->filename, D.7641
	movl	-4(%rbp), %edx	# i, tmp83
	movslq	%edx, %rdx	# tmp83, D.7644
	salq	$3, %rdx	#, D.7644
	addq	%rdx, %rax	# D.7644, D.7641
	movq	(%rax), %rax	# *_10, D.7645
	testq	%rax, %rax	# D.7645
	je	.L94	#,
	.loc 1 454 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# sfp, tmp84
	movq	104(%rax), %rax	# sfp_2(D)->filename, D.7641
	movl	-4(%rbp), %edx	# i, tmp85
	movslq	%edx, %rdx	# tmp85, D.7644
	salq	$3, %rdx	#, D.7644
	addq	%rdx, %rax	# D.7644, D.7641
	movq	(%rax), %rax	# *_15, D.7645
	movq	%rax, %rdi	# D.7645,
	call	free	#
.L94:
	.loc 1 453 0 is_stmt 1
	addl	$1, -4(%rbp)	#, i
.L93:
	.loc 1 453 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# sfp, tmp86
	movzwl	12(%rax), %eax	# sfp_2(D)->nfiles, D.7642
	movzwl	%ax, %eax	# D.7642, D.7643
	cmpl	-4(%rbp), %eax	# i, D.7643
	jg	.L95	#,
	.loc 1 455 0 is_stmt 1
	movq	-24(%rbp), %rax	# sfp, tmp87
	movq	104(%rax), %rax	# sfp_2(D)->filename, D.7641
	movq	%rax, %rdi	# D.7641,
	call	free	#
.L92:
	.loc 1 457 0
	movq	-24(%rbp), %rax	# sfp, tmp88
	movq	112(%rax), %rax	# sfp_2(D)->fileformat, D.7646
	testq	%rax, %rax	# D.7646
	je	.L96	#,
	.loc 1 457 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# sfp, tmp89
	movq	112(%rax), %rax	# sfp_2(D)->fileformat, D.7646
	movq	%rax, %rdi	# D.7646,
	call	free	#
.L96:
	.loc 1 458 0 is_stmt 1
	movq	-24(%rbp), %rax	# sfp, tmp90
	movq	120(%rax), %rax	# sfp_2(D)->fileflags, D.7646
	testq	%rax, %rax	# D.7646
	je	.L97	#,
	.loc 1 458 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# sfp, tmp91
	movq	120(%rax), %rax	# sfp_2(D)->fileflags, D.7646
	movq	%rax, %rdi	# D.7646,
	call	free	#
.L97:
	.loc 1 459 0 is_stmt 1
	movq	-24(%rbp), %rax	# sfp, tmp92
	movq	128(%rax), %rax	# sfp_2(D)->bpl, D.7646
	testq	%rax, %rax	# D.7646
	je	.L98	#,
	.loc 1 459 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# sfp, tmp93
	movq	128(%rax), %rax	# sfp_2(D)->bpl, D.7646
	movq	%rax, %rdi	# D.7646,
	call	free	#
.L98:
	.loc 1 460 0 is_stmt 1
	movq	-24(%rbp), %rax	# sfp, tmp94
	movq	136(%rax), %rax	# sfp_2(D)->rpl, D.7646
	testq	%rax, %rax	# D.7646
	je	.L91	#,
	.loc 1 460 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# sfp, tmp95
	movq	136(%rax), %rax	# sfp_2(D)->rpl, D.7646
	movq	%rax, %rdi	# D.7646,
	call	free	#
.L91:
	.loc 1 461 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	clear_ssifile, .-clear_ssifile
	.globl	SSIRecommendMode
	.type	SSIRecommendMode, @function
SSIRecommendMode:
.LFB11:
	.loc 1 480 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# file, file
	.loc 1 482 0
	movl	$0, %eax	#, D.7647
	.loc 1 499 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	SSIRecommendMode, .-SSIRecommendMode
	.section	.rodata
	.align 8
.LC1:
	.string	"Can't create a 64-bit SSI index on this system, sorry;\nI don't have 64-bit file offset functions available.\n"
.LC2:
	.string	"tmp.ssi.1"
.LC3:
	.string	"tmp.ssi.2"
	.text
	.globl	SSICreateIndex
	.type	SSICreateIndex, @function
SSICreateIndex:
.LFB12:
	.loc 1 516 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# mode, mode
	.loc 1 519 0
	movq	$0, -8(%rbp)	#, g
	.loc 1 520 0
	movl	$120, %edi	#,
	call	malloc	#
	movq	%rax, -8(%rbp)	# tmp73, g
	cmpq	$0, -8(%rbp)	#, g
	jne	.L103	#,
	.loc 1 520 0 is_stmt 0 discriminator 1
	jmp	.L104	#
.L103:
	.loc 1 521 0 is_stmt 1
	movq	-8(%rbp), %rax	# g, tmp74
	movl	-20(%rbp), %edx	# mode, tmp75
	movl	%edx, (%rax)	# tmp75, g_3->smode
	.loc 1 522 0
	movq	-8(%rbp), %rax	# g, tmp76
	movl	$0, 4(%rax)	#, g_3->imode
	.loc 1 523 0
	movq	-8(%rbp), %rax	# g, tmp77
	movl	$0, 8(%rax)	#, g_3->external
	.loc 1 524 0
	movq	-8(%rbp), %rax	# g, tmp78
	movl	$200, 12(%rax)	#, g_3->max_ram
	.loc 1 527 0
	cmpl	$1, -20(%rbp)	#, mode
	jne	.L105	#,
	.loc 1 528 0
	movl	$.LC1, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L105:
	.loc 1 533 0
	movq	-8(%rbp), %rax	# g, tmp79
	movq	$0, 16(%rax)	#, g_3->filenames
	.loc 1 534 0
	movq	-8(%rbp), %rax	# g, tmp80
	movq	$0, 24(%rax)	#, g_3->fileformat
	.loc 1 535 0
	movq	-8(%rbp), %rax	# g, tmp81
	movq	$0, 32(%rax)	#, g_3->bpl
	.loc 1 536 0
	movq	-8(%rbp), %rax	# g, tmp82
	movq	$0, 40(%rax)	#, g_3->rpl
	.loc 1 537 0
	movq	-8(%rbp), %rax	# g, tmp83
	movl	$0, 48(%rax)	#, g_3->flen
	.loc 1 538 0
	movq	-8(%rbp), %rax	# g, tmp84
	movw	$0, 52(%rax)	#, g_3->nfiles
	.loc 1 540 0
	movq	-8(%rbp), %rax	# g, tmp85
	movq	$0, 56(%rax)	#, g_3->pkeys
	.loc 1 541 0
	movq	-8(%rbp), %rax	# g, tmp86
	movl	$0, 64(%rax)	#, g_3->plen
	.loc 1 542 0
	movq	-8(%rbp), %rax	# g, tmp87
	movl	$0, 68(%rax)	#, g_3->nprimary
	.loc 1 543 0
	movq	-8(%rbp), %rax	# g, tmp88
	movq	$.LC2, 72(%rax)	#, g_3->ptmpfile
	.loc 1 544 0
	movq	-8(%rbp), %rax	# g, tmp89
	movq	$0, 80(%rax)	#, g_3->ptmp
	.loc 1 546 0
	movq	-8(%rbp), %rax	# g, tmp90
	movq	$0, 88(%rax)	#, g_3->skeys
	.loc 1 547 0
	movq	-8(%rbp), %rax	# g, tmp91
	movl	$0, 96(%rax)	#, g_3->slen
	.loc 1 548 0
	movq	-8(%rbp), %rax	# g, tmp92
	movl	$0, 100(%rax)	#, g_3->nsecondary
	.loc 1 549 0
	movq	-8(%rbp), %rax	# g, tmp93
	movq	$.LC3, 104(%rax)	#, g_3->stmpfile
	.loc 1 550 0
	movq	-8(%rbp), %rax	# g, tmp94
	movq	$0, 112(%rax)	#, g_3->stmp
	.loc 1 555 0
	movl	$80, %edi	#,
	call	malloc	#
	movq	%rax, %rdx	# tmp95, D.7649
	movq	-8(%rbp), %rax	# g, tmp96
	movq	%rdx, 16(%rax)	# D.7649, g_3->filenames
	movq	-8(%rbp), %rax	# g, tmp97
	movq	16(%rax), %rax	# g_3->filenames, D.7650
	testq	%rax, %rax	# D.7650
	jne	.L106	#,
	.loc 1 555 0 is_stmt 0 discriminator 1
	jmp	.L104	#
.L106:
	.loc 1 556 0 is_stmt 1
	movl	$40, %edi	#,
	call	malloc	#
	movq	%rax, %rdx	# tmp98, D.7649
	movq	-8(%rbp), %rax	# g, tmp99
	movq	%rdx, 24(%rax)	# D.7649, g_3->fileformat
	movq	-8(%rbp), %rax	# g, tmp100
	movq	24(%rax), %rax	# g_3->fileformat, D.7651
	testq	%rax, %rax	# D.7651
	jne	.L107	#,
	.loc 1 556 0 is_stmt 0 discriminator 1
	jmp	.L104	#
.L107:
	.loc 1 557 0 is_stmt 1
	movl	$40, %edi	#,
	call	malloc	#
	movq	%rax, %rdx	# tmp101, D.7649
	movq	-8(%rbp), %rax	# g, tmp102
	movq	%rdx, 32(%rax)	# D.7649, g_3->bpl
	movq	-8(%rbp), %rax	# g, tmp103
	movq	32(%rax), %rax	# g_3->bpl, D.7651
	testq	%rax, %rax	# D.7651
	jne	.L108	#,
	.loc 1 557 0 is_stmt 0 discriminator 1
	jmp	.L104	#
.L108:
	.loc 1 558 0 is_stmt 1
	movl	$40, %edi	#,
	call	malloc	#
	movq	%rax, %rdx	# tmp104, D.7649
	movq	-8(%rbp), %rax	# g, tmp105
	movq	%rdx, 40(%rax)	# D.7649, g_3->rpl
	movq	-8(%rbp), %rax	# g, tmp106
	movq	40(%rax), %rax	# g_3->rpl, D.7651
	testq	%rax, %rax	# D.7651
	jne	.L109	#,
	.loc 1 558 0 is_stmt 0 discriminator 1
	jmp	.L104	#
.L109:
	.loc 1 560 0 is_stmt 1
	movl	$5600, %edi	#,
	call	malloc	#
	movq	%rax, %rdx	# tmp107, D.7649
	movq	-8(%rbp), %rax	# g, tmp108
	movq	%rdx, 56(%rax)	# D.7649, g_3->pkeys
	movq	-8(%rbp), %rax	# g, tmp109
	movq	56(%rax), %rax	# g_3->pkeys, D.7652
	testq	%rax, %rax	# D.7652
	jne	.L110	#,
	.loc 1 560 0 is_stmt 0 discriminator 1
	jmp	.L104	#
.L110:
	.loc 1 561 0 is_stmt 1
	movl	$5600, %edi	#,
	call	malloc	#
	movq	%rax, %rdx	# tmp110, D.7649
	movq	-8(%rbp), %rax	# g, tmp111
	movq	%rdx, 88(%rax)	# D.7649, g_3->skeys
	movq	-8(%rbp), %rax	# g, tmp112
	movq	88(%rax), %rax	# g_3->skeys, D.7653
	testq	%rax, %rax	# D.7653
	jne	.L111	#,
	.loc 1 561 0 is_stmt 0 discriminator 1
	jmp	.L104	#
.L111:
	.loc 1 563 0 is_stmt 1
	movq	-8(%rbp), %rax	# g, D.7648
	jmp	.L112	#
.L104:
	.loc 1 566 0
	movq	-8(%rbp), %rax	# g, tmp113
	movq	%rax, %rdi	# tmp113,
	call	SSIFreeIndex	#
	.loc 1 567 0
	movl	$0, %eax	#, D.7648
.L112:
	.loc 1 568 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	SSICreateIndex, .-SSICreateIndex
	.globl	SSIGetFilePosition
	.type	SSIGetFilePosition, @function
SSIGetFilePosition:
.LFB13:
	.loc 1 588 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# fp, fp
	movl	%esi, -12(%rbp)	# mode, mode
	movq	%rdx, -24(%rbp)	# ret_offset, ret_offset
	.loc 1 589 0
	cmpl	$0, -12(%rbp)	#, mode
	jne	.L114	#,
	.loc 1 591 0
	movq	-24(%rbp), %rax	# ret_offset, tmp64
	movb	$0, (%rax)	#, ret_offset_3(D)->mode
	.loc 1 592 0
	movq	-8(%rbp), %rax	# fp, tmp65
	movq	%rax, %rdi	# tmp65,
	call	ftell	#
	movl	%eax, %edx	# D.7658, D.7659
	movq	-24(%rbp), %rax	# ret_offset, tmp66
	movl	%edx, 8(%rax)	# D.7659, ret_offset_3(D)->off.i32
	.loc 1 593 0
	movq	-24(%rbp), %rax	# ret_offset, tmp67
	movl	8(%rax), %eax	# ret_offset_3(D)->off.i32, D.7659
	cmpl	$-1, %eax	#, D.7659
	jne	.L115	#,
	.loc 1 593 0 is_stmt 0 discriminator 1
	movl	$9, %eax	#, D.7657
	jmp	.L116	#
.L114:
	.loc 1 595 0 is_stmt 1
	cmpl	$1, -12(%rbp)	#, mode
	je	.L117	#,
	.loc 1 595 0 is_stmt 0 discriminator 1
	call	abort	#
.L117:
	.loc 1 597 0 is_stmt 1
	movq	-24(%rbp), %rax	# ret_offset, tmp68
	movb	$1, (%rax)	#, ret_offset_3(D)->mode
	.loc 1 599 0
	movl	$7, %eax	#, D.7657
	jmp	.L116	#
.L115:
	.loc 1 610 0
	movl	$0, %eax	#, D.7657
.L116:
	.loc 1 611 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	SSIGetFilePosition, .-SSIGetFilePosition
	.globl	SSIAddFileToIndex
	.type	SSIAddFileToIndex, @function
SSIAddFileToIndex:
.LFB14:
	.loc 1 630 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# g, g
	movq	%rsi, -48(%rbp)	# filename, filename
	movl	%edx, -52(%rbp)	# fmt, fmt
	movq	%rcx, -64(%rbp)	# ret_fh, ret_fh
	.loc 1 633 0
	movq	-40(%rbp), %rax	# g, tmp128
	movzwl	52(%rax), %eax	# g_2(D)->nfiles, D.7661
	cmpw	$32766, %ax	#, D.7661
	jbe	.L119	#,
	.loc 1 633 0 is_stmt 0 discriminator 1
	movl	$13, %eax	#, D.7660
	jmp	.L120	#
.L119:
	.loc 1 635 0 is_stmt 1
	movq	-48(%rbp), %rax	# filename, tmp129
	movq	%rax, %rdi	# tmp129,
	call	strlen	#
	movl	%eax, -20(%rbp)	# D.7662, n
	.loc 1 636 0
	movl	-20(%rbp), %eax	# n, tmp130
	addl	$1, %eax	#, D.7660
	movl	%eax, %edx	# D.7660, D.7663
	movq	-40(%rbp), %rax	# g, tmp131
	movl	48(%rax), %eax	# g_2(D)->flen, D.7663
	cmpl	%eax, %edx	# D.7663, D.7663
	jbe	.L121	#,
	.loc 1 636 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# n, tmp132
	addl	$1, %eax	#, D.7660
	movl	%eax, %edx	# D.7660, D.7663
	movq	-40(%rbp), %rax	# g, tmp133
	movl	%edx, 48(%rax)	# D.7663, g_2(D)->flen
.L121:
	.loc 1 638 0 is_stmt 1
	movq	-40(%rbp), %rax	# g, tmp134
	movq	16(%rax), %rdx	# g_2(D)->filenames, D.7664
	movq	-40(%rbp), %rax	# g, tmp135
	movzwl	52(%rax), %eax	# g_2(D)->nfiles, D.7661
	movzwl	%ax, %eax	# D.7661, D.7662
	salq	$3, %rax	#, D.7662
	leaq	(%rdx,%rax), %rbx	#, D.7664
	movq	-48(%rbp), %rax	# filename, tmp136
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp136,
	call	FileTail	#
	movq	%rax, (%rbx)	# D.7665, *_17
	.loc 1 639 0
	movq	-40(%rbp), %rax	# g, tmp137
	movq	24(%rax), %rdx	# g_2(D)->fileformat, D.7666
	movq	-40(%rbp), %rax	# g, tmp138
	movzwl	52(%rax), %eax	# g_2(D)->nfiles, D.7661
	movzwl	%ax, %eax	# D.7661, D.7662
	salq	$2, %rax	#, D.7662
	addq	%rax, %rdx	# D.7662, D.7666
	movl	-52(%rbp), %eax	# fmt, fmt.12
	movl	%eax, (%rdx)	# fmt.12, *_23
	.loc 1 640 0
	movq	-40(%rbp), %rax	# g, tmp139
	movq	32(%rax), %rdx	# g_2(D)->bpl, D.7666
	movq	-40(%rbp), %rax	# g, tmp140
	movzwl	52(%rax), %eax	# g_2(D)->nfiles, D.7661
	movzwl	%ax, %eax	# D.7661, D.7662
	salq	$2, %rax	#, D.7662
	addq	%rdx, %rax	# D.7666, D.7666
	movl	$0, (%rax)	#, *_30
	.loc 1 641 0
	movq	-40(%rbp), %rax	# g, tmp141
	movq	40(%rax), %rdx	# g_2(D)->rpl, D.7666
	movq	-40(%rbp), %rax	# g, tmp142
	movzwl	52(%rax), %eax	# g_2(D)->nfiles, D.7661
	movzwl	%ax, %eax	# D.7661, D.7662
	salq	$2, %rax	#, D.7662
	addq	%rdx, %rax	# D.7666, D.7666
	movl	$0, (%rax)	#, *_35
	.loc 1 642 0
	movq	-40(%rbp), %rax	# g, tmp143
	movzwl	52(%rax), %eax	# g_2(D)->nfiles, D.7661
	movzwl	%ax, %edx	# D.7661, D.7660
	movq	-64(%rbp), %rax	# ret_fh, tmp144
	movl	%edx, (%rax)	# D.7660, *ret_fh_38(D)
	.loc 1 643 0
	movq	-40(%rbp), %rax	# g, tmp145
	movzwl	52(%rax), %eax	# g_2(D)->nfiles, D.7661
	leal	1(%rax), %edx	#, D.7661
	movq	-40(%rbp), %rax	# g, tmp146
	movw	%dx, 52(%rax)	# D.7661, g_2(D)->nfiles
	.loc 1 645 0
	movq	-40(%rbp), %rax	# g, tmp147
	movzwl	52(%rax), %ecx	# g_2(D)->nfiles, D.7661
	movzwl	%cx, %eax	# D.7661, tmp148
	imull	$52429, %eax, %eax	#, tmp148, tmp149
	shrl	$16, %eax	#, tmp150
	movl	%eax, %edx	# tmp150, D.7661
	shrw	$3, %dx	#, D.7661
	movl	%edx, %eax	# D.7661, tmp151
	sall	$2, %eax	#, tmp151
	addl	%edx, %eax	# D.7661, tmp151
	addl	%eax, %eax	# tmp152
	subl	%eax, %ecx	# tmp151, D.7661
	movl	%ecx, %edx	# D.7661, D.7661
	testw	%dx, %dx	# D.7661
	jne	.L122	#,
	.loc 1 646 0
	movq	-40(%rbp), %rax	# g, tmp153
	movzwl	52(%rax), %eax	# g_2(D)->nfiles, D.7661
	movzwl	%ax, %eax	# D.7661, D.7660
	addl	$10, %eax	#, D.7660
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7662
	movq	-40(%rbp), %rax	# g, tmp154
	movq	16(%rax), %rax	# g_2(D)->filenames, D.7664
	movq	%rdx, %rsi	# D.7662,
	movq	%rax, %rdi	# D.7664,
	call	realloc	#
	movq	-40(%rbp), %rdx	# g, tmp155
	movq	%rax, 16(%rdx)	# D.7667, g_2(D)->filenames
	.loc 1 647 0
	movq	-40(%rbp), %rax	# g, tmp156
	movq	16(%rax), %rax	# g_2(D)->filenames, D.7664
	testq	%rax, %rax	# D.7664
	jne	.L123	#,
	.loc 1 647 0 is_stmt 0 discriminator 1
	movl	$3, %eax	#, D.7660
	jmp	.L120	#
.L123:
	.loc 1 648 0 is_stmt 1
	movq	-40(%rbp), %rax	# g, tmp157
	movzwl	52(%rax), %eax	# g_2(D)->nfiles, D.7661
	movzwl	%ax, %eax	# D.7661, D.7660
	addl	$10, %eax	#, D.7660
	cltq
	leaq	0(,%rax,4), %rdx	#, D.7662
	movq	-40(%rbp), %rax	# g, tmp158
	movq	24(%rax), %rax	# g_2(D)->fileformat, D.7666
	movq	%rdx, %rsi	# D.7662,
	movq	%rax, %rdi	# D.7666,
	call	realloc	#
	movq	-40(%rbp), %rdx	# g, tmp159
	movq	%rax, 24(%rdx)	# D.7667, g_2(D)->fileformat
	.loc 1 649 0
	movq	-40(%rbp), %rax	# g, tmp160
	movq	24(%rax), %rax	# g_2(D)->fileformat, D.7666
	testq	%rax, %rax	# D.7666
	jne	.L124	#,
	.loc 1 649 0 is_stmt 0 discriminator 1
	movl	$3, %eax	#, D.7660
	jmp	.L120	#
.L124:
	.loc 1 650 0 is_stmt 1
	movq	-40(%rbp), %rax	# g, tmp161
	movzwl	52(%rax), %eax	# g_2(D)->nfiles, D.7661
	movzwl	%ax, %eax	# D.7661, D.7660
	addl	$10, %eax	#, D.7660
	cltq
	leaq	0(,%rax,4), %rdx	#, D.7662
	movq	-40(%rbp), %rax	# g, tmp162
	movq	32(%rax), %rax	# g_2(D)->bpl, D.7666
	movq	%rdx, %rsi	# D.7662,
	movq	%rax, %rdi	# D.7666,
	call	realloc	#
	movq	-40(%rbp), %rdx	# g, tmp163
	movq	%rax, 32(%rdx)	# D.7667, g_2(D)->bpl
	.loc 1 651 0
	movq	-40(%rbp), %rax	# g, tmp164
	movq	32(%rax), %rax	# g_2(D)->bpl, D.7666
	testq	%rax, %rax	# D.7666
	jne	.L125	#,
	.loc 1 651 0 is_stmt 0 discriminator 1
	movl	$3, %eax	#, D.7660
	jmp	.L120	#
.L125:
	.loc 1 652 0 is_stmt 1
	movq	-40(%rbp), %rax	# g, tmp165
	movzwl	52(%rax), %eax	# g_2(D)->nfiles, D.7661
	movzwl	%ax, %eax	# D.7661, D.7660
	addl	$10, %eax	#, D.7660
	cltq
	leaq	0(,%rax,4), %rdx	#, D.7662
	movq	-40(%rbp), %rax	# g, tmp166
	movq	40(%rax), %rax	# g_2(D)->rpl, D.7666
	movq	%rdx, %rsi	# D.7662,
	movq	%rax, %rdi	# D.7666,
	call	realloc	#
	movq	-40(%rbp), %rdx	# g, tmp167
	movq	%rax, 40(%rdx)	# D.7667, g_2(D)->rpl
	.loc 1 653 0
	movq	-40(%rbp), %rax	# g, tmp168
	movq	40(%rax), %rax	# g_2(D)->rpl, D.7666
	testq	%rax, %rax	# D.7666
	jne	.L122	#,
	.loc 1 653 0 is_stmt 0 discriminator 1
	movl	$3, %eax	#, D.7660
	jmp	.L120	#
.L122:
	.loc 1 655 0 is_stmt 1
	movl	$0, %eax	#, D.7660
.L120:
	.loc 1 656 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	SSIAddFileToIndex, .-SSIAddFileToIndex
	.globl	SSISetFileForSubseq
	.type	SSISetFileForSubseq, @function
SSISetFileForSubseq:
.LFB15:
	.loc 1 683 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# g, g
	movl	%esi, -12(%rbp)	# fh, fh
	movl	%edx, -16(%rbp)	# bpl, bpl
	movl	%ecx, -20(%rbp)	# rpl, rpl
	.loc 1 684 0
	cmpl	$0, -12(%rbp)	#, fh
	js	.L127	#,
	.loc 1 684 0 is_stmt 0 discriminator 2
	movq	-8(%rbp), %rax	# g, tmp73
	movzwl	52(%rax), %eax	# g_3(D)->nfiles, D.7669
	movzwl	%ax, %eax	# D.7669, D.7668
	cmpl	-12(%rbp), %eax	# fh, D.7668
	jg	.L128	#,
.L127:
	.loc 1 684 0 discriminator 1
	movl	$12, %eax	#, D.7668
	jmp	.L129	#
.L128:
	.loc 1 685 0 is_stmt 1
	cmpl	$0, -16(%rbp)	#, bpl
	jle	.L130	#,
	.loc 1 685 0 is_stmt 0 discriminator 2
	cmpl	$0, -20(%rbp)	#, rpl
	jg	.L131	#,
.L130:
	.loc 1 685 0 discriminator 1
	movl	$12, %eax	#, D.7668
	jmp	.L129	#
.L131:
	.loc 1 686 0 is_stmt 1
	movq	-8(%rbp), %rax	# g, tmp74
	movq	32(%rax), %rax	# g_3(D)->bpl, D.7670
	movl	-12(%rbp), %edx	# fh, tmp75
	movslq	%edx, %rdx	# tmp75, D.7671
	salq	$2, %rdx	#, D.7671
	addq	%rax, %rdx	# D.7670, D.7670
	movl	-16(%rbp), %eax	# bpl, bpl.13
	movl	%eax, (%rdx)	# bpl.13, *_11
	.loc 1 687 0
	movq	-8(%rbp), %rax	# g, tmp76
	movq	40(%rax), %rax	# g_3(D)->rpl, D.7670
	movl	-12(%rbp), %edx	# fh, tmp77
	movslq	%edx, %rdx	# tmp77, D.7671
	salq	$2, %rdx	#, D.7671
	addq	%rax, %rdx	# D.7670, D.7670
	movl	-20(%rbp), %eax	# rpl, rpl.14
	movl	%eax, (%rdx)	# rpl.14, *_16
	.loc 1 688 0
	movl	$0, %eax	#, D.7668
.L129:
	.loc 1 689 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	SSISetFileForSubseq, .-SSISetFileForSubseq
	.section	.rodata
.LC4:
	.string	"%s\t%d\t%lu\t%lu\t%lu\n"
.LC5:
	.string	"%s\t%d\t%llu\t%llu\t%lu\n"
	.text
	.globl	SSIAddPrimaryKeyToIndex
	.type	SSIAddPrimaryKeyToIndex, @function
SSIAddPrimaryKeyToIndex:
.LFB16:
	.loc 1 728 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# g, g
	movq	%rsi, -48(%rbp)	# key, key
	movl	%edx, -52(%rbp)	# fh, fh
	movq	%rcx, -64(%rbp)	# r_off, r_off
	movq	%r8, -72(%rbp)	# d_off, d_off
	movl	%r9d, -56(%rbp)	# L, L
	.loc 1 731 0
	cmpl	$32766, -52(%rbp)	#, fh
	jle	.L133	#,
	.loc 1 731 0 is_stmt 0 discriminator 1
	movl	$13, %eax	#, D.7672
	jmp	.L134	#
.L133:
	.loc 1 732 0 is_stmt 1
	movq	-40(%rbp), %rax	# g, tmp137
	movl	68(%rax), %eax	# g_6(D)->nprimary, D.7673
	cmpl	$2147483646, %eax	#, D.7673
	jbe	.L135	#,
	.loc 1 732 0 is_stmt 0 discriminator 1
	movl	$14, %eax	#, D.7672
	jmp	.L134	#
.L135:
	.loc 1 733 0 is_stmt 1
	cmpl	$0, -56(%rbp)	#, L
	jle	.L136	#,
	.loc 1 733 0 is_stmt 0 discriminator 1
	cmpq	$0, -72(%rbp)	#, d_off
	jne	.L136	#,
	call	abort	#
.L136:
	.loc 1 738 0 is_stmt 1
	movq	-40(%rbp), %rax	# g, tmp138
	movl	8(%rax), %eax	# g_6(D)->external, D.7672
	testl	%eax, %eax	# D.7672
	jne	.L137	#,
	.loc 1 738 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# g, tmp139
	movq	%rax, %rdi	# tmp139,
	call	current_index_size	#
	movq	-40(%rbp), %rdx	# g, tmp140
	movl	12(%rdx), %edx	# g_6(D)->max_ram, D.7672
	movslq	%edx, %rdx	# D.7672, D.7674
	cmpq	%rdx, %rax	# D.7674, D.7674
	jb	.L137	#,
	.loc 1 739 0 is_stmt 1
	movq	-40(%rbp), %rax	# g, tmp141
	movq	%rax, %rdi	# tmp141,
	call	activate_external_sort	#
	testl	%eax, %eax	# D.7672
	je	.L137	#,
	.loc 1 739 0 is_stmt 0 discriminator 1
	movl	$4, %eax	#, D.7672
	jmp	.L134	#
.L137:
	.loc 1 743 0 is_stmt 1
	movq	-48(%rbp), %rax	# key, tmp142
	movq	%rax, %rdi	# tmp142,
	call	strlen	#
	movl	%eax, -20(%rbp)	# D.7675, n
	.loc 1 744 0
	movl	-20(%rbp), %eax	# n, tmp143
	addl	$1, %eax	#, D.7672
	movl	%eax, %edx	# D.7672, D.7673
	movq	-40(%rbp), %rax	# g, tmp144
	movl	64(%rax), %eax	# g_6(D)->plen, D.7673
	cmpl	%eax, %edx	# D.7673, D.7673
	jbe	.L138	#,
	.loc 1 744 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# n, tmp145
	addl	$1, %eax	#, D.7672
	movl	%eax, %edx	# D.7672, D.7673
	movq	-40(%rbp), %rax	# g, tmp146
	movl	%edx, 64(%rax)	# D.7673, g_6(D)->plen
.L138:
	.loc 1 748 0 is_stmt 1
	movq	-40(%rbp), %rax	# g, tmp147
	movl	8(%rax), %eax	# g_6(D)->external, D.7672
	testl	%eax, %eax	# D.7672
	je	.L139	#,
	.loc 1 749 0
	movq	-40(%rbp), %rax	# g, tmp148
	movl	(%rax), %eax	# g_6(D)->smode, D.7672
	testl	%eax, %eax	# D.7672
	jne	.L140	#,
	.loc 1 750 0
	movl	-56(%rbp), %eax	# L, tmp149
	movslq	%eax, %rsi	# tmp149, D.7675
	cmpq	$0, -72(%rbp)	#, d_off
	je	.L141	#,
	.loc 1 752 0
	movq	-72(%rbp), %rax	# d_off, tmp150
	movl	8(%rax), %eax	# d_off_10(D)->off.i32, D.7673
	.loc 1 750 0
	movl	%eax, %eax	# D.7673, iftmp.15
	jmp	.L142	#
.L141:
	.loc 1 750 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, iftmp.15
.L142:
	.loc 1 751 0 is_stmt 1 discriminator 1
	movq	-64(%rbp), %rdx	# r_off, tmp151
	movl	8(%rdx), %edx	# r_off_31(D)->off.i32, D.7673
	.loc 1 750 0 discriminator 1
	movl	%edx, %r8d	# D.7673, D.7675
	movq	-40(%rbp), %rdx	# g, tmp152
	movq	80(%rdx), %rdi	# g_6(D)->ptmp, D.7676
	movl	-52(%rbp), %ecx	# fh, tmp153
	movq	-48(%rbp), %rdx	# key, tmp154
	movq	%rsi, (%rsp)	# D.7675,
	movq	%rax, %r9	# iftmp.15,
	movl	$.LC4, %esi	#,
	movl	$0, %eax	#,
	call	fprintf	#
	jmp	.L143	#
.L140:
	.loc 1 755 0
	movl	-56(%rbp), %eax	# L, tmp155
	movslq	%eax, %rsi	# tmp155, D.7675
	cmpq	$0, -72(%rbp)	#, d_off
	je	.L144	#,
	.loc 1 755 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# d_off, tmp156
	movq	8(%rax), %rax	# d_off_10(D)->off.i64, iftmp.16
	jmp	.L145	#
.L144:
	.loc 1 755 0 discriminator 2
	movl	$0, %eax	#, iftmp.16
.L145:
	.loc 1 755 0 discriminator 3
	movq	-64(%rbp), %rdx	# r_off, tmp157
	movq	8(%rdx), %r8	# r_off_31(D)->off.i64, D.7674
	movq	-40(%rbp), %rdx	# g, tmp158
	movq	80(%rdx), %rdi	# g_6(D)->ptmp, D.7676
	movl	-52(%rbp), %ecx	# fh, tmp159
	movq	-48(%rbp), %rdx	# key, tmp160
	movq	%rsi, (%rsp)	# D.7675,
	movq	%rax, %r9	# iftmp.16,
	movl	$.LC5, %esi	#,
	movl	$0, %eax	#,
	call	fprintf	#
.L143:
	.loc 1 760 0 is_stmt 1
	movq	-40(%rbp), %rax	# g, tmp161
	movl	68(%rax), %eax	# g_6(D)->nprimary, D.7673
	leal	1(%rax), %edx	#, D.7673
	movq	-40(%rbp), %rax	# g, tmp162
	movl	%edx, 68(%rax)	# D.7673, g_6(D)->nprimary
	.loc 1 761 0
	movl	$0, %eax	#, D.7672
	jmp	.L134	#
.L139:
	.loc 1 766 0
	movq	-40(%rbp), %rax	# g, tmp163
	movq	56(%rax), %rdx	# g_6(D)->pkeys, D.7677
	movq	-40(%rbp), %rax	# g, tmp164
	movl	68(%rax), %eax	# g_6(D)->nprimary, D.7673
	movl	%eax, %eax	# D.7673, D.7675
	salq	$3, %rax	#, tmp166
	leaq	0(,%rax,8), %rcx	#, tmp167
	subq	%rax, %rcx	# tmp165, D.7675
	movq	%rcx, %rax	# D.7675, D.7675
	leaq	(%rdx,%rax), %rbx	#, D.7677
	movl	-20(%rbp), %edx	# n, tmp168
	movq	-48(%rbp), %rax	# key, tmp169
	movl	%edx, %esi	# tmp168,
	movq	%rax, %rdi	# tmp169,
	call	sre_strdup	#
	movq	%rax, (%rbx)	# D.7678, _47->key
	movq	(%rbx), %rax	# _47->key, D.7678
	testq	%rax, %rax	# D.7678
	jne	.L146	#,
	.loc 1 766 0 is_stmt 0 discriminator 1
	movl	$3, %eax	#, D.7672
	jmp	.L134	#
.L146:
	.loc 1 767 0 is_stmt 1
	movq	-40(%rbp), %rax	# g, tmp170
	movq	56(%rax), %rdx	# g_6(D)->pkeys, D.7677
	movq	-40(%rbp), %rax	# g, tmp171
	movl	68(%rax), %eax	# g_6(D)->nprimary, D.7673
	movl	%eax, %eax	# D.7673, D.7675
	salq	$3, %rax	#, tmp173
	leaq	0(,%rax,8), %rcx	#, tmp174
	subq	%rax, %rcx	# tmp172, D.7675
	movq	%rcx, %rax	# D.7675, D.7675
	addq	%rax, %rdx	# D.7675, D.7677
	movl	-52(%rbp), %eax	# fh, tmp175
	movw	%ax, 8(%rdx)	# D.7679, _55->fnum
	.loc 1 768 0
	movq	-40(%rbp), %rax	# g, tmp176
	movq	56(%rax), %rdx	# g_6(D)->pkeys, D.7677
	movq	-40(%rbp), %rax	# g, tmp177
	movl	68(%rax), %eax	# g_6(D)->nprimary, D.7673
	movl	%eax, %eax	# D.7673, D.7675
	salq	$3, %rax	#, tmp179
	leaq	0(,%rax,8), %rcx	#, tmp180
	subq	%rax, %rcx	# tmp178, D.7675
	movq	%rcx, %rax	# D.7675, D.7675
	leaq	(%rdx,%rax), %rcx	#, D.7677
	movq	-64(%rbp), %rax	# r_off, tmp181
	movq	8(%rax), %rdx	# *r_off_31(D),
	movq	(%rax), %rax	# *r_off_31(D), tmp182
	movq	%rax, 16(%rcx)	# tmp182, _61->r_off
	movq	%rdx, 24(%rcx)	#, _61->r_off
	.loc 1 769 0
	cmpq	$0, -72(%rbp)	#, d_off
	je	.L147	#,
	.loc 1 769 0 is_stmt 0 discriminator 1
	cmpl	$0, -56(%rbp)	#, L
	jle	.L147	#,
	.loc 1 770 0 is_stmt 1
	movq	-40(%rbp), %rax	# g, tmp183
	movq	56(%rax), %rdx	# g_6(D)->pkeys, D.7677
	movq	-40(%rbp), %rax	# g, tmp184
	movl	68(%rax), %eax	# g_6(D)->nprimary, D.7673
	movl	%eax, %eax	# D.7673, D.7675
	salq	$3, %rax	#, tmp186
	leaq	0(,%rax,8), %rcx	#, tmp187
	subq	%rax, %rcx	# tmp185, D.7675
	movq	%rcx, %rax	# D.7675, D.7675
	leaq	(%rdx,%rax), %rcx	#, D.7677
	movq	-72(%rbp), %rax	# d_off, tmp188
	movq	8(%rax), %rdx	# *d_off_10(D),
	movq	(%rax), %rax	# *d_off_10(D), tmp189
	movq	%rax, 32(%rcx)	# tmp189, _66->d_off
	movq	%rdx, 40(%rcx)	#, _66->d_off
	.loc 1 771 0
	movq	-40(%rbp), %rax	# g, tmp190
	movq	56(%rax), %rdx	# g_6(D)->pkeys, D.7677
	movq	-40(%rbp), %rax	# g, tmp191
	movl	68(%rax), %eax	# g_6(D)->nprimary, D.7673
	movl	%eax, %eax	# D.7673, D.7675
	salq	$3, %rax	#, tmp193
	leaq	0(,%rax,8), %rcx	#, tmp194
	subq	%rax, %rcx	# tmp192, D.7675
	movq	%rcx, %rax	# D.7675, D.7675
	addq	%rax, %rdx	# D.7675, D.7677
	movl	-56(%rbp), %eax	# L, L.17
	movl	%eax, 48(%rdx)	# L.17, _71->len
	jmp	.L148	#
.L147:
	.loc 1 776 0
	movq	-40(%rbp), %rax	# g, tmp195
	movq	56(%rax), %rdx	# g_6(D)->pkeys, D.7677
	movq	-40(%rbp), %rax	# g, tmp196
	movl	68(%rax), %eax	# g_6(D)->nprimary, D.7673
	movl	%eax, %eax	# D.7673, D.7675
	salq	$3, %rax	#, tmp198
	leaq	0(,%rax,8), %rcx	#, tmp199
	subq	%rax, %rcx	# tmp197, D.7675
	movq	%rcx, %rax	# D.7675, D.7675
	leaq	(%rdx,%rax), %rcx	#, D.7677
	movq	-64(%rbp), %rax	# r_off, tmp200
	movq	8(%rax), %rdx	# *r_off_31(D),
	movq	(%rax), %rax	# *r_off_31(D), tmp201
	movq	%rax, 32(%rcx)	# tmp201, _77->d_off
	movq	%rdx, 40(%rcx)	#, _77->d_off
	.loc 1 777 0
	movq	-40(%rbp), %rax	# g, tmp202
	movq	56(%rax), %rdx	# g_6(D)->pkeys, D.7677
	movq	-40(%rbp), %rax	# g, tmp203
	movl	68(%rax), %eax	# g_6(D)->nprimary, D.7673
	movl	%eax, %eax	# D.7673, D.7675
	salq	$3, %rax	#, tmp205
	leaq	0(,%rax,8), %rcx	#, tmp206
	subq	%rax, %rcx	# tmp204, D.7675
	movq	%rcx, %rax	# D.7675, D.7675
	addq	%rdx, %rax	# D.7677, D.7677
	movl	$0, 48(%rax)	#, _82->len
.L148:
	.loc 1 779 0
	movq	-40(%rbp), %rax	# g, tmp207
	movl	68(%rax), %eax	# g_6(D)->nprimary, D.7673
	leal	1(%rax), %edx	#, D.7673
	movq	-40(%rbp), %rax	# g, tmp208
	movl	%edx, 68(%rax)	# D.7673, g_6(D)->nprimary
	.loc 1 781 0
	movq	-40(%rbp), %rax	# g, tmp209
	movl	68(%rax), %ecx	# g_6(D)->nprimary, D.7673
	movl	$1374389535, %edx	#, tmp211
	movl	%ecx, %eax	# D.7673, tmp221
	mull	%edx	# tmp211
	movl	%edx, %eax	# tmp210, D.7673
	shrl	$5, %eax	#, D.7673
	imull	$100, %eax, %eax	#, D.7673, tmp212
	subl	%eax, %ecx	# tmp212, D.7673
	movl	%ecx, %eax	# D.7673, D.7673
	testl	%eax, %eax	# D.7673
	jne	.L149	#,
	.loc 1 782 0
	movq	-40(%rbp), %rax	# g, tmp213
	movl	68(%rax), %eax	# g_6(D)->nprimary, D.7673
	addl	$100, %eax	#, D.7673
	movl	%eax, %eax	# D.7673, D.7675
	salq	$3, %rax	#, tmp215
	leaq	0(,%rax,8), %rdx	#, tmp216
	subq	%rax, %rdx	# tmp214, D.7675
	movq	-40(%rbp), %rax	# g, tmp217
	movq	56(%rax), %rax	# g_6(D)->pkeys, D.7677
	movq	%rdx, %rsi	# D.7675,
	movq	%rax, %rdi	# D.7677,
	call	realloc	#
	movq	-40(%rbp), %rdx	# g, tmp218
	movq	%rax, 56(%rdx)	# D.7680, g_6(D)->pkeys
	.loc 1 783 0
	movq	-40(%rbp), %rax	# g, tmp219
	movq	56(%rax), %rax	# g_6(D)->pkeys, D.7677
	testq	%rax, %rax	# D.7677
	jne	.L149	#,
	.loc 1 783 0 is_stmt 0 discriminator 1
	movl	$3, %eax	#, D.7672
	jmp	.L134	#
.L149:
	.loc 1 785 0 is_stmt 1
	movl	$0, %eax	#, D.7672
.L134:
	.loc 1 786 0
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	SSIAddPrimaryKeyToIndex, .-SSIAddPrimaryKeyToIndex
	.section	.rodata
.LC6:
	.string	"%s\t%s\n"
	.text
	.globl	SSIAddSecondaryKeyToIndex
	.type	SSIAddSecondaryKeyToIndex, @function
SSIAddSecondaryKeyToIndex:
.LFB17:
	.loc 1 804 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# g, g
	movq	%rsi, -48(%rbp)	# key, key
	movq	%rdx, -56(%rbp)	# pkey, pkey
	.loc 1 807 0
	movq	-40(%rbp), %rax	# g, tmp102
	movl	100(%rax), %eax	# g_2(D)->nsecondary, D.7684
	cmpl	$2147483646, %eax	#, D.7684
	jbe	.L151	#,
	.loc 1 807 0 is_stmt 0 discriminator 1
	movl	$14, %eax	#, D.7683
	jmp	.L152	#
.L151:
	.loc 1 812 0 is_stmt 1
	movq	-40(%rbp), %rax	# g, tmp103
	movl	8(%rax), %eax	# g_2(D)->external, D.7683
	testl	%eax, %eax	# D.7683
	jne	.L153	#,
	.loc 1 812 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# g, tmp104
	movq	%rax, %rdi	# tmp104,
	call	current_index_size	#
	movq	-40(%rbp), %rdx	# g, tmp105
	movl	12(%rdx), %edx	# g_2(D)->max_ram, D.7683
	movslq	%edx, %rdx	# D.7683, D.7685
	cmpq	%rdx, %rax	# D.7685, D.7685
	jb	.L153	#,
	.loc 1 813 0 is_stmt 1
	movq	-40(%rbp), %rax	# g, tmp106
	movq	%rax, %rdi	# tmp106,
	call	activate_external_sort	#
	testl	%eax, %eax	# D.7683
	je	.L153	#,
	.loc 1 813 0 is_stmt 0 discriminator 1
	movl	$4, %eax	#, D.7683
	jmp	.L152	#
.L153:
	.loc 1 817 0 is_stmt 1
	movq	-48(%rbp), %rax	# key, tmp107
	movq	%rax, %rdi	# tmp107,
	call	strlen	#
	movl	%eax, -20(%rbp)	# D.7686, n
	.loc 1 818 0
	movl	-20(%rbp), %eax	# n, tmp108
	addl	$1, %eax	#, D.7683
	movl	%eax, %edx	# D.7683, D.7684
	movq	-40(%rbp), %rax	# g, tmp109
	movl	96(%rax), %eax	# g_2(D)->slen, D.7684
	cmpl	%eax, %edx	# D.7684, D.7684
	jbe	.L154	#,
	.loc 1 818 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# n, tmp110
	addl	$1, %eax	#, D.7683
	movl	%eax, %edx	# D.7683, D.7684
	movq	-40(%rbp), %rax	# g, tmp111
	movl	%edx, 96(%rax)	# D.7684, g_2(D)->slen
.L154:
	.loc 1 822 0 is_stmt 1
	movq	-40(%rbp), %rax	# g, tmp112
	movl	8(%rax), %eax	# g_2(D)->external, D.7683
	testl	%eax, %eax	# D.7683
	je	.L155	#,
	.loc 1 823 0
	movq	-40(%rbp), %rax	# g, tmp113
	movq	112(%rax), %rax	# g_2(D)->stmp, D.7687
	movq	-56(%rbp), %rcx	# pkey, tmp114
	movq	-48(%rbp), %rdx	# key, tmp115
	movl	$.LC6, %esi	#,
	movq	%rax, %rdi	# D.7687,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 824 0
	movq	-40(%rbp), %rax	# g, tmp116
	movl	100(%rax), %eax	# g_2(D)->nsecondary, D.7684
	leal	1(%rax), %edx	#, D.7684
	movq	-40(%rbp), %rax	# g, tmp117
	movl	%edx, 100(%rax)	# D.7684, g_2(D)->nsecondary
	.loc 1 825 0
	movl	$0, %eax	#, D.7683
	jmp	.L152	#
.L155:
	.loc 1 830 0
	movq	-40(%rbp), %rax	# g, tmp118
	movq	88(%rax), %rdx	# g_2(D)->skeys, D.7688
	movq	-40(%rbp), %rax	# g, tmp119
	movl	100(%rax), %eax	# g_2(D)->nsecondary, D.7684
	movl	%eax, %eax	# D.7684, D.7686
	salq	$4, %rax	#, D.7686
	leaq	(%rdx,%rax), %rbx	#, D.7688
	movl	-20(%rbp), %edx	# n, tmp120
	movq	-48(%rbp), %rax	# key, tmp121
	movl	%edx, %esi	# tmp120,
	movq	%rax, %rdi	# tmp121,
	call	sre_strdup	#
	movq	%rax, (%rbx)	# D.7689, _29->key
	movq	(%rbx), %rax	# _29->key, D.7689
	testq	%rax, %rax	# D.7689
	jne	.L156	#,
	.loc 1 830 0 is_stmt 0 discriminator 1
	movl	$3, %eax	#, D.7683
	jmp	.L152	#
.L156:
	.loc 1 831 0 is_stmt 1
	movq	-40(%rbp), %rax	# g, tmp122
	movq	88(%rax), %rdx	# g_2(D)->skeys, D.7688
	movq	-40(%rbp), %rax	# g, tmp123
	movl	100(%rax), %eax	# g_2(D)->nsecondary, D.7684
	movl	%eax, %eax	# D.7684, D.7686
	salq	$4, %rax	#, D.7686
	leaq	(%rdx,%rax), %rbx	#, D.7688
	movq	-56(%rbp), %rax	# pkey, tmp124
	movl	$-1, %esi	#,
	movq	%rax, %rdi	# tmp124,
	call	sre_strdup	#
	movq	%rax, 8(%rbx)	# D.7689, _37->pkey
	movq	8(%rbx), %rax	# _37->pkey, D.7689
	testq	%rax, %rax	# D.7689
	jne	.L157	#,
	.loc 1 831 0 is_stmt 0 discriminator 1
	movl	$3, %eax	#, D.7683
	jmp	.L152	#
.L157:
	.loc 1 832 0 is_stmt 1
	movq	-40(%rbp), %rax	# g, tmp125
	movl	100(%rax), %eax	# g_2(D)->nsecondary, D.7684
	leal	1(%rax), %edx	#, D.7684
	movq	-40(%rbp), %rax	# g, tmp126
	movl	%edx, 100(%rax)	# D.7684, g_2(D)->nsecondary
	.loc 1 834 0
	movq	-40(%rbp), %rax	# g, tmp127
	movl	100(%rax), %ecx	# g_2(D)->nsecondary, D.7684
	movl	$1374389535, %edx	#, tmp129
	movl	%ecx, %eax	# D.7684, tmp136
	mull	%edx	# tmp129
	movl	%edx, %eax	# tmp128, D.7684
	shrl	$5, %eax	#, D.7684
	imull	$100, %eax, %eax	#, D.7684, tmp130
	subl	%eax, %ecx	# tmp130, D.7684
	movl	%ecx, %eax	# D.7684, D.7684
	testl	%eax, %eax	# D.7684
	jne	.L158	#,
	.loc 1 835 0
	movq	-40(%rbp), %rax	# g, tmp131
	movl	100(%rax), %eax	# g_2(D)->nsecondary, D.7684
	addl	$100, %eax	#, D.7684
	movl	%eax, %eax	# D.7684, D.7686
	salq	$4, %rax	#, D.7686
	movq	%rax, %rdx	# D.7686, D.7686
	movq	-40(%rbp), %rax	# g, tmp132
	movq	88(%rax), %rax	# g_2(D)->skeys, D.7688
	movq	%rdx, %rsi	# D.7686,
	movq	%rax, %rdi	# D.7688,
	call	realloc	#
	movq	-40(%rbp), %rdx	# g, tmp133
	movq	%rax, 88(%rdx)	# D.7690, g_2(D)->skeys
	.loc 1 836 0
	movq	-40(%rbp), %rax	# g, tmp134
	movq	88(%rax), %rax	# g_2(D)->skeys, D.7688
	testq	%rax, %rax	# D.7688
	jne	.L158	#,
	.loc 1 836 0 is_stmt 0 discriminator 1
	movl	$3, %eax	#, D.7683
	jmp	.L152	#
.L158:
	.loc 1 838 0 is_stmt 1
	movl	$0, %eax	#, D.7683
.L152:
	.loc 1 839 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	SSIAddSecondaryKeyToIndex, .-SSIAddSecondaryKeyToIndex
	.type	pkeysort, @function
pkeysort:
.LFB18:
	.loc 1 861 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# k1, k1
	movq	%rsi, -32(%rbp)	# k2, k2
	.loc 1 864 0
	movq	-24(%rbp), %rax	# k1, tmp63
	movq	%rax, -16(%rbp)	# tmp63, key1
	.loc 1 865 0
	movq	-32(%rbp), %rax	# k2, tmp64
	movq	%rax, -8(%rbp)	# tmp64, key2
	.loc 1 866 0
	movq	-8(%rbp), %rax	# key2, tmp65
	movq	(%rax), %rdx	# key2_4->key, D.7692
	movq	-16(%rbp), %rax	# key1, tmp66
	movq	(%rax), %rax	# key1_2->key, D.7692
	movq	%rdx, %rsi	# D.7692,
	movq	%rax, %rdi	# D.7692,
	call	strcmp	#
	.loc 1 867 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	pkeysort, .-pkeysort
	.type	skeysort, @function
skeysort:
.LFB19:
	.loc 1 870 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# k1, k1
	movq	%rsi, -32(%rbp)	# k2, k2
	.loc 1 873 0
	movq	-24(%rbp), %rax	# k1, tmp63
	movq	%rax, -16(%rbp)	# tmp63, key1
	.loc 1 874 0
	movq	-32(%rbp), %rax	# k2, tmp64
	movq	%rax, -8(%rbp)	# tmp64, key2
	.loc 1 875 0
	movq	-8(%rbp), %rax	# key2, tmp65
	movq	(%rax), %rdx	# key2_4->key, D.7694
	movq	-16(%rbp), %rax	# key1, tmp66
	movq	(%rax), %rax	# key1_2->key, D.7694
	movq	%rdx, %rsi	# D.7694,
	movq	%rax, %rdi	# D.7694,
	call	strcmp	#
	.loc 1 876 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	skeysort, .-skeysort
	.section	.rodata
.LC7:
	.string	"wb"
	.align 8
.LC8:
	.string	"Can't switch to 64-bit SSI index mode on this system, sorry;\nI don't have 64-bit file offset functions available.\n"
	.align 8
.LC9:
	.string	"env LC_ALL=POSIX sort -o %s %s\n"
.LC10:
	.string	"r"
	.text
	.globl	SSIWriteIndex
	.type	SSIWriteIndex, @function
SSIWriteIndex:
.LFB20:
	.loc 1 879 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$1224, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -1224(%rbp)	# file, file
	movq	%rsi, -1232(%rbp)	# g, g
	.loc 1 879 0
	movq	%fs:40, %rax	#, tmp482
	movq	%rax, -24(%rbp)	# tmp482, D.7710
	xorl	%eax, %eax	# tmp482
	.loc 1 888 0
	movq	-1224(%rbp), %rax	# file, tmp277
	movl	$.LC7, %esi	#,
	movq	%rax, %rdi	# tmp277,
	call	fopen	#
	movq	%rax, -1168(%rbp)	# tmp278, fp
	cmpq	$0, -1168(%rbp)	#, fp
	jne	.L164	#,
	.loc 1 888 0 is_stmt 0 discriminator 1
	movl	$4, %eax	#, D.7696
	jmp	.L165	#
.L164:
	.loc 1 889 0 is_stmt 1
	movl	$0, -1204(%rbp)	#, status
	.loc 1 898 0
	movq	-1232(%rbp), %rax	# g, tmp279
	movq	%rax, %rdi	# tmp279,
	call	current_index_size	#
	cmpq	$2046, %rax	#, D.7697
	jbe	.L166	#,
	.loc 1 899 0
	movq	-1232(%rbp), %rax	# g, tmp280
	movl	$1, 4(%rax)	#, g_20(D)->imode
	.loc 1 901 0
	movl	$.LC8, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L166:
	.loc 1 910 0
	movq	-1232(%rbp), %rax	# g, tmp281
	movl	48(%rax), %eax	# g_20(D)->flen, D.7698
	addl	$16, %eax	#, tmp282
	movl	%eax, -1188(%rbp)	# tmp282, frecsize
	.loc 1 911 0
	movq	-1232(%rbp), %rax	# g, tmp283
	movl	(%rax), %eax	# g_20(D)->smode, D.7696
	cmpl	$1, %eax	#, D.7696
	jne	.L167	#,
	.loc 1 911 0 is_stmt 0 discriminator 1
	movq	-1232(%rbp), %rax	# g, tmp284
	movl	64(%rax), %eax	# g_20(D)->plen, D.7698
	addl	$22, %eax	#, iftmp.18
	jmp	.L168	#
.L167:
	.loc 1 911 0 discriminator 2
	movq	-1232(%rbp), %rax	# g, tmp285
	movl	64(%rax), %eax	# g_20(D)->plen, D.7698
	addl	$14, %eax	#, iftmp.18
.L168:
	.loc 1 911 0 discriminator 3
	movl	%eax, -1184(%rbp)	# iftmp.18, precsize
	.loc 1 912 0 is_stmt 1 discriminator 3
	movq	-1232(%rbp), %rax	# g, tmp286
	movl	96(%rax), %edx	# g_20(D)->slen, D.7698
	movq	-1232(%rbp), %rax	# g, tmp287
	movl	64(%rax), %eax	# g_20(D)->plen, D.7698
	addl	%edx, %eax	# D.7698, tmp288
	movl	%eax, -1180(%rbp)	# tmp288, srecsize
	.loc 1 914 0 discriminator 3
	movl	$0, -1196(%rbp)	#, header_flags
	.loc 1 915 0 discriminator 3
	movq	-1232(%rbp), %rax	# g, tmp289
	movl	(%rax), %eax	# g_20(D)->smode, D.7696
	cmpl	$1, %eax	#, D.7696
	jne	.L169	#,
	.loc 1 915 0 is_stmt 0 discriminator 1
	orl	$1, -1196(%rbp)	#, header_flags
.L169:
	.loc 1 916 0 is_stmt 1
	movq	-1232(%rbp), %rax	# g, tmp290
	movl	4(%rax), %eax	# g_20(D)->imode, D.7696
	cmpl	$1, %eax	#, D.7696
	jne	.L170	#,
	.loc 1 916 0 is_stmt 0 discriminator 1
	orl	$2, -1196(%rbp)	#, header_flags
.L170:
	.loc 1 921 0 is_stmt 1
	movl	-1196(%rbp), %eax	# header_flags, tmp291
	andl	$2, %eax	#, D.7698
	testl	%eax, %eax	# D.7698
	je	.L171	#,
	.loc 1 921 0 is_stmt 0 discriminator 1
	movl	$66, %eax	#, iftmp.19
	jmp	.L172	#
.L171:
	.loc 1 921 0 discriminator 2
	movl	$54, %eax	#, iftmp.19
.L172:
	.loc 1 921 0 discriminator 3
	movq	%rax, -1160(%rbp)	# iftmp.19, foffset
	.loc 1 922 0 is_stmt 1 discriminator 3
	movq	-1232(%rbp), %rax	# g, tmp292
	movzwl	52(%rax), %eax	# g_20(D)->nfiles, D.7699
	movzwl	%ax, %eax	# D.7699, D.7698
	imull	-1188(%rbp), %eax	# frecsize, D.7698
	movl	%eax, %edx	# D.7698, D.7697
	movq	-1160(%rbp), %rax	# foffset, tmp296
	addq	%rdx, %rax	# D.7697, tmp295
	movq	%rax, -1152(%rbp)	# tmp295, poffset
	.loc 1 923 0 discriminator 3
	movq	-1232(%rbp), %rax	# g, tmp297
	movl	68(%rax), %eax	# g_20(D)->nprimary, D.7698
	imull	-1184(%rbp), %eax	# precsize, D.7698
	movl	%eax, %edx	# D.7698, D.7697
	movq	-1152(%rbp), %rax	# poffset, tmp301
	addq	%rdx, %rax	# D.7697, tmp300
	movq	%rax, -1144(%rbp)	# tmp300, soffset
	.loc 1 935 0 discriminator 3
	movq	-1232(%rbp), %rax	# g, tmp302
	movl	8(%rax), %eax	# g_20(D)->external, D.7696
	testl	%eax, %eax	# D.7696
	je	.L173	#,
.LBB3:
	.loc 1 938 0
	movq	-1232(%rbp), %rax	# g, tmp303
	movq	80(%rax), %rax	# g_20(D)->ptmp, D.7700
	movq	%rax, %rdi	# D.7700,
	call	fclose	#
	.loc 1 939 0
	movq	-1232(%rbp), %rax	# g, tmp304
	movq	$0, 80(%rax)	#, g_20(D)->ptmp
	.loc 1 940 0
	movq	-1232(%rbp), %rax	# g, tmp305
	movq	72(%rax), %rcx	# g_20(D)->ptmpfile, D.7701
	movq	-1232(%rbp), %rax	# g, tmp306
	movq	72(%rax), %rdx	# g_20(D)->ptmpfile, D.7701
	leaq	-1056(%rbp), %rax	#, tmp307
	movl	$.LC9, %esi	#,
	movq	%rax, %rdi	# tmp307,
	movl	$0, %eax	#,
	call	sprintf	#
	.loc 1 941 0
	leaq	-1056(%rbp), %rax	#, tmp308
	movq	%rax, %rdi	# tmp308,
	call	system	#
	movl	%eax, -1204(%rbp)	# tmp309, status
	cmpl	$0, -1204(%rbp)	#, status
	je	.L174	#,
	.loc 1 941 0 is_stmt 0 discriminator 1
	movl	$16, %eax	#, D.7696
	jmp	.L165	#
.L174:
	.loc 1 942 0 is_stmt 1
	movq	-1232(%rbp), %rax	# g, tmp310
	movq	72(%rax), %rax	# g_20(D)->ptmpfile, D.7701
	movl	$.LC10, %esi	#,
	movq	%rax, %rdi	# D.7701,
	call	fopen	#
	movq	-1232(%rbp), %rdx	# g, tmp311
	movq	%rax, 80(%rdx)	# D.7700, g_20(D)->ptmp
	movq	-1232(%rbp), %rax	# g, tmp312
	movq	80(%rax), %rax	# g_20(D)->ptmp, D.7700
	testq	%rax, %rax	# D.7700
	jne	.L176	#,
	.loc 1 942 0 is_stmt 0 discriminator 1
	movl	$16, %eax	#, D.7696
	jmp	.L165	#
.L176:
	.loc 1 944 0 is_stmt 1
	movq	-1232(%rbp), %rax	# g, tmp313
	movq	112(%rax), %rax	# g_20(D)->stmp, D.7700
	movq	%rax, %rdi	# D.7700,
	call	fclose	#
	.loc 1 945 0
	movq	-1232(%rbp), %rax	# g, tmp314
	movq	$0, 112(%rax)	#, g_20(D)->stmp
	.loc 1 946 0
	movq	-1232(%rbp), %rax	# g, tmp315
	movq	104(%rax), %rcx	# g_20(D)->stmpfile, D.7701
	movq	-1232(%rbp), %rax	# g, tmp316
	movq	104(%rax), %rdx	# g_20(D)->stmpfile, D.7701
	leaq	-1056(%rbp), %rax	#, tmp317
	movl	$.LC9, %esi	#,
	movq	%rax, %rdi	# tmp317,
	movl	$0, %eax	#,
	call	sprintf	#
	.loc 1 947 0
	leaq	-1056(%rbp), %rax	#, tmp318
	movq	%rax, %rdi	# tmp318,
	call	system	#
	movl	%eax, -1204(%rbp)	# tmp319, status
	cmpl	$0, -1204(%rbp)	#, status
	je	.L177	#,
	.loc 1 947 0 is_stmt 0 discriminator 1
	movl	$16, %eax	#, D.7696
	jmp	.L165	#
.L177:
	.loc 1 948 0 is_stmt 1
	movq	-1232(%rbp), %rax	# g, tmp320
	movq	104(%rax), %rax	# g_20(D)->stmpfile, D.7701
	movl	$.LC10, %esi	#,
	movq	%rax, %rdi	# D.7701,
	call	fopen	#
	movq	-1232(%rbp), %rdx	# g, tmp321
	movq	%rax, 112(%rdx)	# D.7700, g_20(D)->stmp
	movq	-1232(%rbp), %rax	# g, tmp322
	movq	112(%rax), %rax	# g_20(D)->stmp, D.7700
	testq	%rax, %rax	# D.7700
	jne	.L178	#,
	.loc 1 948 0 is_stmt 0 discriminator 1
	movl	$16, %eax	#, D.7696
	jmp	.L165	#
.L178:
.LBE3:
	jmp	.L179	#
.L173:
.LBB4:
	.loc 1 950 0 is_stmt 1
	movq	-1232(%rbp), %rax	# g, tmp323
	movl	68(%rax), %esi	# g_20(D)->nprimary, D.7698
	movq	-1232(%rbp), %rax	# g, tmp324
	movq	56(%rax), %rax	# g_20(D)->pkeys, D.7702
	movl	$pkeysort, %ecx	#,
	movl	$56, %edx	#,
	movq	%rax, %rdi	# D.7702,
	movl	$0, %eax	#,
	call	specqsort	#
	.loc 1 951 0
	movq	-1232(%rbp), %rax	# g, tmp325
	movl	100(%rax), %esi	# g_20(D)->nsecondary, D.7698
	movq	-1232(%rbp), %rax	# g, tmp326
	movq	88(%rax), %rax	# g_20(D)->skeys, D.7703
	movl	$skeysort, %ecx	#,
	movl	$16, %edx	#,
	movq	%rax, %rdi	# D.7703,
	movl	$0, %eax	#,
	call	specqsort	#
.L179:
.LBE4:
	.loc 1 956 0
	movl	v20magic(%rip), %edx	# v20magic, v20magic.20
	movq	-1168(%rbp), %rax	# fp, tmp327
	movl	%edx, %esi	# v20magic.20,
	movq	%rax, %rdi	# tmp327,
	call	write_i32	#
	testl	%eax, %eax	# D.7696
	jne	.L180	#,
	.loc 1 956 0 is_stmt 0 discriminator 1
	movl	$15, %eax	#, D.7696
	jmp	.L165	#
.L180:
	.loc 1 957 0 is_stmt 1
	movl	-1196(%rbp), %edx	# header_flags, tmp328
	movq	-1168(%rbp), %rax	# fp, tmp329
	movl	%edx, %esi	# tmp328,
	movq	%rax, %rdi	# tmp329,
	call	write_i32	#
	testl	%eax, %eax	# D.7696
	jne	.L181	#,
	.loc 1 957 0 is_stmt 0 discriminator 1
	movl	$15, %eax	#, D.7696
	jmp	.L165	#
.L181:
	.loc 1 958 0 is_stmt 1
	movq	-1232(%rbp), %rax	# g, tmp330
	movzwl	52(%rax), %eax	# g_20(D)->nfiles, D.7699
	movzwl	%ax, %edx	# D.7699, D.7696
	movq	-1168(%rbp), %rax	# fp, tmp331
	movl	%edx, %esi	# D.7696,
	movq	%rax, %rdi	# tmp331,
	call	write_i16	#
	testl	%eax, %eax	# D.7696
	jne	.L182	#,
	.loc 1 958 0 is_stmt 0 discriminator 1
	movl	$15, %eax	#, D.7696
	jmp	.L165	#
.L182:
	.loc 1 959 0 is_stmt 1
	movq	-1232(%rbp), %rax	# g, tmp332
	movl	68(%rax), %edx	# g_20(D)->nprimary, D.7698
	movq	-1168(%rbp), %rax	# fp, tmp333
	movl	%edx, %esi	# D.7698,
	movq	%rax, %rdi	# tmp333,
	call	write_i32	#
	testl	%eax, %eax	# D.7696
	jne	.L183	#,
	.loc 1 959 0 is_stmt 0 discriminator 1
	movl	$15, %eax	#, D.7696
	jmp	.L165	#
.L183:
	.loc 1 960 0 is_stmt 1
	movq	-1232(%rbp), %rax	# g, tmp334
	movl	100(%rax), %edx	# g_20(D)->nsecondary, D.7698
	movq	-1168(%rbp), %rax	# fp, tmp335
	movl	%edx, %esi	# D.7698,
	movq	%rax, %rdi	# tmp335,
	call	write_i32	#
	testl	%eax, %eax	# D.7696
	jne	.L184	#,
	.loc 1 960 0 is_stmt 0 discriminator 1
	movl	$15, %eax	#, D.7696
	jmp	.L165	#
.L184:
	.loc 1 961 0 is_stmt 1
	movq	-1232(%rbp), %rax	# g, tmp336
	movl	48(%rax), %edx	# g_20(D)->flen, D.7698
	movq	-1168(%rbp), %rax	# fp, tmp337
	movl	%edx, %esi	# D.7698,
	movq	%rax, %rdi	# tmp337,
	call	write_i32	#
	testl	%eax, %eax	# D.7696
	jne	.L185	#,
	.loc 1 961 0 is_stmt 0 discriminator 1
	movl	$15, %eax	#, D.7696
	jmp	.L165	#
.L185:
	.loc 1 962 0 is_stmt 1
	movq	-1232(%rbp), %rax	# g, tmp338
	movl	64(%rax), %edx	# g_20(D)->plen, D.7698
	movq	-1168(%rbp), %rax	# fp, tmp339
	movl	%edx, %esi	# D.7698,
	movq	%rax, %rdi	# tmp339,
	call	write_i32	#
	testl	%eax, %eax	# D.7696
	jne	.L186	#,
	.loc 1 962 0 is_stmt 0 discriminator 1
	movl	$15, %eax	#, D.7696
	jmp	.L165	#
.L186:
	.loc 1 963 0 is_stmt 1
	movq	-1232(%rbp), %rax	# g, tmp340
	movl	96(%rax), %edx	# g_20(D)->slen, D.7698
	movq	-1168(%rbp), %rax	# fp, tmp341
	movl	%edx, %esi	# D.7698,
	movq	%rax, %rdi	# tmp341,
	call	write_i32	#
	testl	%eax, %eax	# D.7696
	jne	.L187	#,
	.loc 1 963 0 is_stmt 0 discriminator 1
	movl	$15, %eax	#, D.7696
	jmp	.L165	#
.L187:
	.loc 1 964 0 is_stmt 1
	movl	-1188(%rbp), %edx	# frecsize, tmp342
	movq	-1168(%rbp), %rax	# fp, tmp343
	movl	%edx, %esi	# tmp342,
	movq	%rax, %rdi	# tmp343,
	call	write_i32	#
	testl	%eax, %eax	# D.7696
	jne	.L188	#,
	.loc 1 964 0 is_stmt 0 discriminator 1
	movl	$15, %eax	#, D.7696
	jmp	.L165	#
.L188:
	.loc 1 965 0 is_stmt 1
	movl	-1184(%rbp), %edx	# precsize, tmp344
	movq	-1168(%rbp), %rax	# fp, tmp345
	movl	%edx, %esi	# tmp344,
	movq	%rax, %rdi	# tmp345,
	call	write_i32	#
	testl	%eax, %eax	# D.7696
	jne	.L189	#,
	.loc 1 965 0 is_stmt 0 discriminator 1
	movl	$15, %eax	#, D.7696
	jmp	.L165	#
.L189:
	.loc 1 966 0 is_stmt 1
	movl	-1180(%rbp), %edx	# srecsize, tmp346
	movq	-1168(%rbp), %rax	# fp, tmp347
	movl	%edx, %esi	# tmp346,
	movq	%rax, %rdi	# tmp347,
	call	write_i32	#
	testl	%eax, %eax	# D.7696
	jne	.L190	#,
	.loc 1 966 0 is_stmt 0 discriminator 1
	movl	$15, %eax	#, D.7696
	jmp	.L165	#
.L190:
	.loc 1 967 0 is_stmt 1
	movq	-1232(%rbp), %rax	# g, tmp348
	movl	4(%rax), %eax	# g_20(D)->imode, D.7696
	testl	%eax, %eax	# D.7696
	jne	.L191	#,
	.loc 1 968 0
	movq	-1160(%rbp), %rax	# foffset, tmp349
	movl	%eax, %edx	# tmp349, D.7698
	movq	-1168(%rbp), %rax	# fp, tmp350
	movl	%edx, %esi	# D.7698,
	movq	%rax, %rdi	# tmp350,
	call	write_i32	#
	testl	%eax, %eax	# D.7696
	jne	.L192	#,
	.loc 1 968 0 is_stmt 0 discriminator 1
	movl	$15, %eax	#, D.7696
	jmp	.L165	#
.L192:
	.loc 1 969 0 is_stmt 1
	movq	-1152(%rbp), %rax	# poffset, tmp351
	movl	%eax, %edx	# tmp351, D.7698
	movq	-1168(%rbp), %rax	# fp, tmp352
	movl	%edx, %esi	# D.7698,
	movq	%rax, %rdi	# tmp352,
	call	write_i32	#
	testl	%eax, %eax	# D.7696
	jne	.L193	#,
	.loc 1 969 0 is_stmt 0 discriminator 1
	movl	$15, %eax	#, D.7696
	jmp	.L165	#
.L193:
	.loc 1 970 0 is_stmt 1
	movq	-1144(%rbp), %rax	# soffset, tmp353
	movl	%eax, %edx	# tmp353, D.7698
	movq	-1168(%rbp), %rax	# fp, tmp354
	movl	%edx, %esi	# D.7698,
	movq	%rax, %rdi	# tmp354,
	call	write_i32	#
	testl	%eax, %eax	# D.7696
	jne	.L194	#,
	.loc 1 970 0 is_stmt 0 discriminator 1
	movl	$15, %eax	#, D.7696
	jmp	.L165	#
.L191:
	.loc 1 972 0 is_stmt 1
	movq	-1160(%rbp), %rdx	# foffset, tmp355
	movq	-1168(%rbp), %rax	# fp, tmp356
	movq	%rdx, %rsi	# tmp355,
	movq	%rax, %rdi	# tmp356,
	call	write_i64	#
	testl	%eax, %eax	# D.7696
	jne	.L195	#,
	.loc 1 972 0 is_stmt 0 discriminator 1
	movl	$15, %eax	#, D.7696
	jmp	.L165	#
.L195:
	.loc 1 973 0 is_stmt 1
	movq	-1152(%rbp), %rdx	# poffset, tmp357
	movq	-1168(%rbp), %rax	# fp, tmp358
	movq	%rdx, %rsi	# tmp357,
	movq	%rax, %rdi	# tmp358,
	call	write_i64	#
	testl	%eax, %eax	# D.7696
	jne	.L196	#,
	.loc 1 973 0 is_stmt 0 discriminator 1
	movl	$15, %eax	#, D.7696
	jmp	.L165	#
.L196:
	.loc 1 974 0 is_stmt 1
	movq	-1144(%rbp), %rdx	# soffset, tmp359
	movq	-1168(%rbp), %rax	# fp, tmp360
	movq	%rdx, %rsi	# tmp359,
	movq	%rax, %rdi	# tmp360,
	call	write_i64	#
	testl	%eax, %eax	# D.7696
	jne	.L194	#,
	.loc 1 974 0 is_stmt 0 discriminator 1
	movl	$15, %eax	#, D.7696
	jmp	.L165	#
.L194:
	.loc 1 979 0 is_stmt 1
	movq	-1232(%rbp), %rax	# g, tmp361
	movl	48(%rax), %eax	# g_20(D)->flen, D.7698
	movl	%eax, %eax	# D.7698, D.7704
	movq	%rax, %rdi	# D.7704,
	call	malloc	#
	movq	%rax, -1136(%rbp)	# tmp362, s
	cmpq	$0, -1136(%rbp)	#, s
	jne	.L197	#,
	.loc 1 979 0 is_stmt 0 discriminator 1
	movl	$3, %eax	#, D.7696
	jmp	.L165	#
.L197:
	.loc 1 980 0 is_stmt 1
	movl	$0, -1200(%rbp)	#, i
	jmp	.L198	#
.L205:
	.loc 1 982 0
	movl	$0, -1192(%rbp)	#, file_flags
	.loc 1 983 0
	movq	-1232(%rbp), %rax	# g, tmp363
	movq	32(%rax), %rax	# g_20(D)->bpl, D.7705
	movl	-1200(%rbp), %edx	# i, tmp364
	movslq	%edx, %rdx	# tmp364, D.7704
	salq	$2, %rdx	#, D.7704
	addq	%rdx, %rax	# D.7704, D.7705
	movl	(%rax), %eax	# *_131, D.7698
	testl	%eax, %eax	# D.7698
	je	.L199	#,
	.loc 1 983 0 is_stmt 0 discriminator 1
	movq	-1232(%rbp), %rax	# g, tmp365
	movq	40(%rax), %rax	# g_20(D)->rpl, D.7705
	movl	-1200(%rbp), %edx	# i, tmp366
	movslq	%edx, %rdx	# tmp366, D.7704
	salq	$2, %rdx	#, D.7704
	addq	%rdx, %rax	# D.7704, D.7705
	movl	(%rax), %eax	# *_136, D.7698
	testl	%eax, %eax	# D.7698
	je	.L199	#,
	orl	$1, -1192(%rbp)	#, file_flags
.L199:
	.loc 1 985 0 is_stmt 1
	movq	-1232(%rbp), %rax	# g, tmp367
	movq	16(%rax), %rax	# g_20(D)->filenames, D.7706
	movl	-1200(%rbp), %edx	# i, tmp368
	movslq	%edx, %rdx	# tmp368, D.7704
	salq	$3, %rdx	#, D.7704
	addq	%rdx, %rax	# D.7704, D.7706
	movq	(%rax), %rdx	# *_142, D.7701
	movq	-1136(%rbp), %rax	# s, tmp369
	movq	%rdx, %rsi	# D.7701,
	movq	%rax, %rdi	# tmp369,
	call	strcpy	#
	.loc 1 986 0
	movq	-1232(%rbp), %rax	# g, tmp370
	movl	48(%rax), %eax	# g_20(D)->flen, D.7698
	movl	%eax, %edx	# D.7698, D.7704
	movq	-1168(%rbp), %rcx	# fp, tmp371
	movq	-1136(%rbp), %rax	# s, tmp372
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp372,
	call	fwrite	#
	movq	-1232(%rbp), %rdx	# g, tmp373
	movl	48(%rdx), %edx	# g_20(D)->flen, D.7698
	movl	%edx, %edx	# D.7698, D.7704
	cmpq	%rdx, %rax	# D.7704, D.7704
	je	.L200	#,
	.loc 1 986 0 is_stmt 0 discriminator 1
	movl	$15, %eax	#, D.7696
	jmp	.L165	#
.L200:
	.loc 1 987 0 is_stmt 1
	movq	-1232(%rbp), %rax	# g, tmp374
	movq	24(%rax), %rax	# g_20(D)->fileformat, D.7705
	movl	-1200(%rbp), %edx	# i, tmp375
	movslq	%edx, %rdx	# tmp375, D.7704
	salq	$2, %rdx	#, D.7704
	addq	%rdx, %rax	# D.7704, D.7705
	movl	(%rax), %edx	# *_153, D.7698
	movq	-1168(%rbp), %rax	# fp, tmp376
	movl	%edx, %esi	# D.7698,
	movq	%rax, %rdi	# tmp376,
	call	write_i32	#
	testl	%eax, %eax	# D.7696
	jne	.L201	#,
	.loc 1 987 0 is_stmt 0 discriminator 1
	movl	$15, %eax	#, D.7696
	jmp	.L165	#
.L201:
	.loc 1 988 0 is_stmt 1
	movl	-1192(%rbp), %edx	# file_flags, tmp377
	movq	-1168(%rbp), %rax	# fp, tmp378
	movl	%edx, %esi	# tmp377,
	movq	%rax, %rdi	# tmp378,
	call	write_i32	#
	testl	%eax, %eax	# D.7696
	jne	.L202	#,
	.loc 1 988 0 is_stmt 0 discriminator 1
	movl	$15, %eax	#, D.7696
	jmp	.L165	#
.L202:
	.loc 1 989 0 is_stmt 1
	movq	-1232(%rbp), %rax	# g, tmp379
	movq	32(%rax), %rax	# g_20(D)->bpl, D.7705
	movl	-1200(%rbp), %edx	# i, tmp380
	movslq	%edx, %rdx	# tmp380, D.7704
	salq	$2, %rdx	#, D.7704
	addq	%rdx, %rax	# D.7704, D.7705
	movl	(%rax), %edx	# *_162, D.7698
	movq	-1168(%rbp), %rax	# fp, tmp381
	movl	%edx, %esi	# D.7698,
	movq	%rax, %rdi	# tmp381,
	call	write_i32	#
	testl	%eax, %eax	# D.7696
	jne	.L203	#,
	.loc 1 989 0 is_stmt 0 discriminator 1
	movl	$15, %eax	#, D.7696
	jmp	.L165	#
.L203:
	.loc 1 990 0 is_stmt 1
	movq	-1232(%rbp), %rax	# g, tmp382
	movq	40(%rax), %rax	# g_20(D)->rpl, D.7705
	movl	-1200(%rbp), %edx	# i, tmp383
	movslq	%edx, %rdx	# tmp383, D.7704
	salq	$2, %rdx	#, D.7704
	addq	%rdx, %rax	# D.7704, D.7705
	movl	(%rax), %edx	# *_169, D.7698
	movq	-1168(%rbp), %rax	# fp, tmp384
	movl	%edx, %esi	# D.7698,
	movq	%rax, %rdi	# tmp384,
	call	write_i32	#
	testl	%eax, %eax	# D.7696
	jne	.L204	#,
	.loc 1 990 0 is_stmt 0 discriminator 1
	movl	$15, %eax	#, D.7696
	jmp	.L165	#
.L204:
	.loc 1 980 0 is_stmt 1
	addl	$1, -1200(%rbp)	#, i
.L198:
	.loc 1 980 0 is_stmt 0 discriminator 1
	movq	-1232(%rbp), %rax	# g, tmp385
	movzwl	52(%rax), %eax	# g_20(D)->nfiles, D.7699
	movzwl	%ax, %eax	# D.7699, D.7696
	cmpl	-1200(%rbp), %eax	# i, D.7696
	jg	.L205	#,
	.loc 1 992 0 is_stmt 1
	movq	-1136(%rbp), %rax	# s, tmp386
	movq	%rax, %rdi	# tmp386,
	call	free	#
	.loc 1 996 0
	movq	-1232(%rbp), %rax	# g, tmp387
	movl	64(%rax), %eax	# g_20(D)->plen, D.7698
	movl	%eax, %eax	# D.7698, D.7704
	movq	%rax, %rdi	# D.7704,
	call	malloc	#
	movq	%rax, -1136(%rbp)	# tmp388, s
	cmpq	$0, -1136(%rbp)	#, s
	jne	.L206	#,
	.loc 1 996 0 is_stmt 0 discriminator 1
	movl	$3, %eax	#, D.7696
	jmp	.L165	#
.L206:
	.loc 1 997 0 is_stmt 1
	movq	-1232(%rbp), %rax	# g, tmp389
	movl	8(%rax), %eax	# g_20(D)->external, D.7696
	testl	%eax, %eax	# D.7696
	je	.L207	#,
.LBB5:
	.loc 1 998 0
	movq	$0, -1176(%rbp)	#, buf
	.loc 1 999 0
	movl	$0, -1208(%rbp)	#, buflen
	.loc 1 1001 0
	movl	$0, -1200(%rbp)	#, i
	jmp	.L208	#
.L217:
	.loc 1 1003 0
	movq	-1232(%rbp), %rax	# g, tmp390
	movq	80(%rax), %rdx	# g_20(D)->ptmp, D.7700
	leaq	-1208(%rbp), %rcx	#, tmp391
	leaq	-1176(%rbp), %rax	#, tmp392
	movq	%rcx, %rsi	# tmp391,
	movq	%rax, %rdi	# tmp392,
	call	sre_fgets	#
	testq	%rax, %rax	# D.7701
	jne	.L209	#,
	.loc 1 1003 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, D.7696
	jmp	.L165	#
.L209:
	.loc 1 1004 0 is_stmt 1
	movq	-1232(%rbp), %rax	# g, tmp393
	movl	(%rax), %eax	# g_20(D)->smode, D.7696
	movsbl	%al, %ecx	# D.7707, D.7696
	movq	-1176(%rbp), %rax	# buf, buf.21
	leaq	-1120(%rbp), %rdx	#, tmp394
	movl	%ecx, %esi	# D.7696,
	movq	%rax, %rdi	# buf.21,
	call	parse_pkey_info	#
	testl	%eax, %eax	# D.7696
	je	.L211	#,
	.loc 1 1004 0 is_stmt 0 discriminator 1
	movl	$6, %eax	#, D.7696
	jmp	.L165	#
.L211:
	.loc 1 1005 0 is_stmt 1
	movq	-1120(%rbp), %rdx	# pkey.key, D.7701
	movq	-1136(%rbp), %rax	# s, tmp395
	movq	%rdx, %rsi	# D.7701,
	movq	%rax, %rdi	# tmp395,
	call	strcpy	#
	.loc 1 1006 0
	movq	-1232(%rbp), %rax	# g, tmp396
	movl	64(%rax), %eax	# g_20(D)->plen, D.7698
	movl	%eax, %edx	# D.7698, D.7704
	movq	-1168(%rbp), %rcx	# fp, tmp397
	movq	-1136(%rbp), %rax	# s, tmp398
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp398,
	call	fwrite	#
	movq	-1232(%rbp), %rdx	# g, tmp399
	movl	64(%rdx), %edx	# g_20(D)->plen, D.7698
	movl	%edx, %edx	# D.7698, D.7704
	cmpq	%rdx, %rax	# D.7704, D.7704
	je	.L212	#,
	.loc 1 1006 0 is_stmt 0 discriminator 1
	movl	$15, %eax	#, D.7696
	jmp	.L165	#
.L212:
	.loc 1 1007 0 is_stmt 1
	movzwl	-1112(%rbp), %eax	# pkey.fnum, D.7699
	movzwl	%ax, %edx	# D.7699, D.7696
	movq	-1168(%rbp), %rax	# fp, tmp400
	movl	%edx, %esi	# D.7696,
	movq	%rax, %rdi	# tmp400,
	call	write_i16	#
	testl	%eax, %eax	# D.7696
	jne	.L213	#,
	.loc 1 1007 0 is_stmt 0 discriminator 1
	movl	$15, %eax	#, D.7696
	jmp	.L165	#
.L213:
	.loc 1 1008 0 is_stmt 1
	leaq	-1120(%rbp), %rax	#, tmp401
	leaq	16(%rax), %rdx	#, tmp402
	movq	-1168(%rbp), %rax	# fp, tmp403
	movq	%rdx, %rsi	# tmp402,
	movq	%rax, %rdi	# tmp403,
	call	write_offset	#
	testl	%eax, %eax	# D.7696
	jne	.L214	#,
	.loc 1 1008 0 is_stmt 0 discriminator 1
	movl	$15, %eax	#, D.7696
	jmp	.L165	#
.L214:
	.loc 1 1009 0 is_stmt 1
	leaq	-1120(%rbp), %rax	#, tmp404
	leaq	32(%rax), %rdx	#, tmp405
	movq	-1168(%rbp), %rax	# fp, tmp406
	movq	%rdx, %rsi	# tmp405,
	movq	%rax, %rdi	# tmp406,
	call	write_offset	#
	testl	%eax, %eax	# D.7696
	jne	.L215	#,
	.loc 1 1009 0 is_stmt 0 discriminator 1
	movl	$15, %eax	#, D.7696
	jmp	.L165	#
.L215:
	.loc 1 1010 0 is_stmt 1
	movl	-1072(%rbp), %edx	# pkey.len, D.7698
	movq	-1168(%rbp), %rax	# fp, tmp407
	movl	%edx, %esi	# D.7698,
	movq	%rax, %rdi	# tmp407,
	call	write_i32	#
	testl	%eax, %eax	# D.7696
	jne	.L216	#,
	.loc 1 1010 0 is_stmt 0 discriminator 1
	movl	$15, %eax	#, D.7696
	jmp	.L165	#
.L216:
	.loc 1 1001 0 is_stmt 1
	addl	$1, -1200(%rbp)	#, i
.L208:
	.loc 1 1001 0 is_stmt 0 discriminator 1
	movl	-1200(%rbp), %edx	# i, i.22
	movq	-1232(%rbp), %rax	# g, tmp408
	movl	68(%rax), %eax	# g_20(D)->nprimary, D.7698
	cmpl	%eax, %edx	# D.7698, i.22
	jb	.L217	#,
	.loc 1 1012 0 is_stmt 1
	movq	-1176(%rbp), %rax	# buf, buf.23
	movq	%rax, %rdi	# buf.23,
	call	free	#
.LBE5:
	jmp	.L218	#
.L207:
	.loc 1 1014 0
	movl	$0, -1200(%rbp)	#, i
	jmp	.L219	#
.L225:
	.loc 1 1016 0
	movq	-1232(%rbp), %rax	# g, tmp409
	movq	56(%rax), %rdx	# g_20(D)->pkeys, D.7702
	movl	-1200(%rbp), %eax	# i, tmp410
	cltq
	salq	$3, %rax	#, tmp412
	leaq	0(,%rax,8), %rcx	#, tmp413
	subq	%rax, %rcx	# tmp411, D.7704
	movq	%rcx, %rax	# D.7704, D.7704
	addq	%rdx, %rax	# D.7702, D.7702
	movq	(%rax), %rdx	# _217->key, D.7701
	movq	-1136(%rbp), %rax	# s, tmp414
	movq	%rdx, %rsi	# D.7701,
	movq	%rax, %rdi	# tmp414,
	call	strcpy	#
	.loc 1 1017 0
	movq	-1232(%rbp), %rax	# g, tmp415
	movl	64(%rax), %eax	# g_20(D)->plen, D.7698
	movl	%eax, %edx	# D.7698, D.7704
	movq	-1168(%rbp), %rcx	# fp, tmp416
	movq	-1136(%rbp), %rax	# s, tmp417
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp417,
	call	fwrite	#
	movq	-1232(%rbp), %rdx	# g, tmp418
	movl	64(%rdx), %edx	# g_20(D)->plen, D.7698
	movl	%edx, %edx	# D.7698, D.7704
	cmpq	%rdx, %rax	# D.7704, D.7704
	je	.L220	#,
	.loc 1 1017 0 is_stmt 0 discriminator 1
	movl	$15, %eax	#, D.7696
	jmp	.L165	#
.L220:
	.loc 1 1018 0 is_stmt 1
	movq	-1232(%rbp), %rax	# g, tmp419
	movq	56(%rax), %rdx	# g_20(D)->pkeys, D.7702
	movl	-1200(%rbp), %eax	# i, tmp420
	cltq
	salq	$3, %rax	#, tmp422
	leaq	0(,%rax,8), %rcx	#, tmp423
	subq	%rax, %rcx	# tmp421, D.7704
	movq	%rcx, %rax	# D.7704, D.7704
	addq	%rdx, %rax	# D.7702, D.7702
	movzwl	8(%rax), %eax	# _228->fnum, D.7699
	movzwl	%ax, %edx	# D.7699, D.7696
	movq	-1168(%rbp), %rax	# fp, tmp424
	movl	%edx, %esi	# D.7696,
	movq	%rax, %rdi	# tmp424,
	call	write_i16	#
	testl	%eax, %eax	# D.7696
	jne	.L221	#,
	.loc 1 1018 0 is_stmt 0 discriminator 1
	movl	$15, %eax	#, D.7696
	jmp	.L165	#
.L221:
	.loc 1 1019 0 is_stmt 1
	movq	-1232(%rbp), %rax	# g, tmp425
	movq	56(%rax), %rdx	# g_20(D)->pkeys, D.7702
	movl	-1200(%rbp), %eax	# i, tmp426
	cltq
	salq	$3, %rax	#, tmp428
	leaq	0(,%rax,8), %rcx	#, tmp429
	subq	%rax, %rcx	# tmp427, D.7704
	movq	%rcx, %rax	# D.7704, D.7704
	addq	%rdx, %rax	# D.7702, D.7702
	leaq	16(%rax), %rdx	#, D.7708
	movq	-1168(%rbp), %rax	# fp, tmp430
	movq	%rdx, %rsi	# D.7708,
	movq	%rax, %rdi	# tmp430,
	call	write_offset	#
	testl	%eax, %eax	# D.7696
	jne	.L222	#,
	.loc 1 1019 0 is_stmt 0 discriminator 1
	movl	$15, %eax	#, D.7696
	jmp	.L165	#
.L222:
	.loc 1 1020 0 is_stmt 1
	movq	-1232(%rbp), %rax	# g, tmp431
	movq	56(%rax), %rdx	# g_20(D)->pkeys, D.7702
	movl	-1200(%rbp), %eax	# i, tmp432
	cltq
	salq	$3, %rax	#, tmp434
	leaq	0(,%rax,8), %rcx	#, tmp435
	subq	%rax, %rcx	# tmp433, D.7704
	movq	%rcx, %rax	# D.7704, D.7704
	addq	%rdx, %rax	# D.7702, D.7702
	leaq	32(%rax), %rdx	#, D.7708
	movq	-1168(%rbp), %rax	# fp, tmp436
	movq	%rdx, %rsi	# D.7708,
	movq	%rax, %rdi	# tmp436,
	call	write_offset	#
	testl	%eax, %eax	# D.7696
	jne	.L223	#,
	.loc 1 1020 0 is_stmt 0 discriminator 1
	movl	$15, %eax	#, D.7696
	jmp	.L165	#
.L223:
	.loc 1 1021 0 is_stmt 1
	movq	-1232(%rbp), %rax	# g, tmp437
	movq	56(%rax), %rdx	# g_20(D)->pkeys, D.7702
	movl	-1200(%rbp), %eax	# i, tmp438
	cltq
	salq	$3, %rax	#, tmp440
	leaq	0(,%rax,8), %rcx	#, tmp441
	subq	%rax, %rcx	# tmp439, D.7704
	movq	%rcx, %rax	# D.7704, D.7704
	addq	%rdx, %rax	# D.7702, D.7702
	movl	48(%rax), %edx	# _250->len, D.7698
	movq	-1168(%rbp), %rax	# fp, tmp442
	movl	%edx, %esi	# D.7698,
	movq	%rax, %rdi	# tmp442,
	call	write_i32	#
	testl	%eax, %eax	# D.7696
	jne	.L224	#,
	.loc 1 1021 0 is_stmt 0 discriminator 1
	movl	$15, %eax	#, D.7696
	jmp	.L165	#
.L224:
	.loc 1 1014 0 is_stmt 1
	addl	$1, -1200(%rbp)	#, i
.L219:
	.loc 1 1014 0 is_stmt 0 discriminator 1
	movl	-1200(%rbp), %edx	# i, i.24
	movq	-1232(%rbp), %rax	# g, tmp443
	movl	68(%rax), %eax	# g_20(D)->nprimary, D.7698
	cmpl	%eax, %edx	# D.7698, i.24
	jb	.L225	#,
.L218:
	.loc 1 1027 0 is_stmt 1
	movq	-1232(%rbp), %rax	# g, tmp444
	movl	100(%rax), %eax	# g_20(D)->nsecondary, D.7698
	testl	%eax, %eax	# D.7698
	je	.L226	#,
	.loc 1 1028 0
	movq	-1232(%rbp), %rax	# g, tmp445
	movl	96(%rax), %eax	# g_20(D)->slen, D.7698
	movl	%eax, %eax	# D.7698, D.7704
	movq	%rax, %rdi	# D.7704,
	call	malloc	#
	movq	%rax, -1128(%rbp)	# tmp446, s2
	cmpq	$0, -1128(%rbp)	#, s2
	jne	.L227	#,
	.loc 1 1028 0 is_stmt 0 discriminator 1
	movl	$3, %eax	#, D.7696
	jmp	.L165	#
.L227:
	.loc 1 1030 0 is_stmt 1
	movq	-1232(%rbp), %rax	# g, tmp447
	movl	8(%rax), %eax	# g_20(D)->external, D.7696
	testl	%eax, %eax	# D.7696
	je	.L228	#,
.LBB6:
	.loc 1 1032 0
	movq	$0, -1176(%rbp)	#, buf
	.loc 1 1033 0
	movl	$0, -1208(%rbp)	#, n
	.loc 1 1035 0
	movl	$0, -1200(%rbp)	#, i
	jmp	.L229	#
.L235:
	.loc 1 1037 0
	movq	-1232(%rbp), %rax	# g, tmp448
	movq	112(%rax), %rdx	# g_20(D)->stmp, D.7700
	leaq	-1208(%rbp), %rcx	#, tmp449
	leaq	-1176(%rbp), %rax	#, tmp450
	movq	%rcx, %rsi	# tmp449,
	movq	%rax, %rdi	# tmp450,
	call	sre_fgets	#
	testq	%rax, %rax	# D.7701
	jne	.L230	#,
	.loc 1 1037 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, D.7696
	jmp	.L165	#
.L230:
	.loc 1 1038 0 is_stmt 1
	movq	-1176(%rbp), %rax	# buf, buf.25
	leaq	-1120(%rbp), %rdx	#, tmp451
	movq	%rdx, %rsi	# tmp451,
	movq	%rax, %rdi	# buf.25,
	call	parse_skey_info	#
	testl	%eax, %eax	# D.7696
	je	.L232	#,
	.loc 1 1038 0 is_stmt 0 discriminator 1
	movl	$6, %eax	#, D.7696
	jmp	.L165	#
.L232:
	.loc 1 1039 0 is_stmt 1
	movq	-1120(%rbp), %rdx	# skey.key, D.7701
	movq	-1128(%rbp), %rax	# s2, tmp452
	movq	%rdx, %rsi	# D.7701,
	movq	%rax, %rdi	# tmp452,
	call	strcpy	#
	.loc 1 1040 0
	movq	-1112(%rbp), %rdx	# skey.pkey, D.7701
	movq	-1136(%rbp), %rax	# s, tmp453
	movq	%rdx, %rsi	# D.7701,
	movq	%rax, %rdi	# tmp453,
	call	strcpy	#
	.loc 1 1041 0
	movq	-1232(%rbp), %rax	# g, tmp454
	movl	96(%rax), %eax	# g_20(D)->slen, D.7698
	movl	%eax, %edx	# D.7698, D.7704
	movq	-1168(%rbp), %rcx	# fp, tmp455
	movq	-1128(%rbp), %rax	# s2, tmp456
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp456,
	call	fwrite	#
	movq	-1232(%rbp), %rdx	# g, tmp457
	movl	96(%rdx), %edx	# g_20(D)->slen, D.7698
	movl	%edx, %edx	# D.7698, D.7704
	cmpq	%rdx, %rax	# D.7704, D.7704
	je	.L233	#,
	.loc 1 1041 0 is_stmt 0 discriminator 1
	movl	$15, %eax	#, D.7696
	jmp	.L165	#
.L233:
	.loc 1 1042 0 is_stmt 1
	movq	-1232(%rbp), %rax	# g, tmp458
	movl	64(%rax), %eax	# g_20(D)->plen, D.7698
	movl	%eax, %edx	# D.7698, D.7704
	movq	-1168(%rbp), %rcx	# fp, tmp459
	movq	-1136(%rbp), %rax	# s, tmp460
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp460,
	call	fwrite	#
	movq	-1232(%rbp), %rdx	# g, tmp461
	movl	64(%rdx), %edx	# g_20(D)->plen, D.7698
	movl	%edx, %edx	# D.7698, D.7704
	cmpq	%rdx, %rax	# D.7704, D.7704
	je	.L234	#,
	.loc 1 1042 0 is_stmt 0 discriminator 1
	movl	$15, %eax	#, D.7696
	jmp	.L165	#
.L234:
	.loc 1 1035 0 is_stmt 1
	addl	$1, -1200(%rbp)	#, i
.L229:
	.loc 1 1035 0 is_stmt 0 discriminator 1
	movl	-1200(%rbp), %edx	# i, i.26
	movq	-1232(%rbp), %rax	# g, tmp462
	movl	100(%rax), %eax	# g_20(D)->nsecondary, D.7698
	cmpl	%eax, %edx	# D.7698, i.26
	jb	.L235	#,
	.loc 1 1044 0 is_stmt 1
	movq	-1176(%rbp), %rax	# buf, buf.27
	movq	%rax, %rdi	# buf.27,
	call	free	#
.LBE6:
	jmp	.L236	#
.L228:
	.loc 1 1046 0
	movl	$0, -1200(%rbp)	#, i
	jmp	.L237	#
.L240:
	.loc 1 1048 0
	movq	-1232(%rbp), %rax	# g, tmp463
	movq	88(%rax), %rax	# g_20(D)->skeys, D.7703
	movl	-1200(%rbp), %edx	# i, tmp464
	movslq	%edx, %rdx	# tmp464, D.7704
	salq	$4, %rdx	#, D.7704
	addq	%rdx, %rax	# D.7704, D.7703
	movq	(%rax), %rdx	# _292->key, D.7701
	movq	-1128(%rbp), %rax	# s2, tmp465
	movq	%rdx, %rsi	# D.7701,
	movq	%rax, %rdi	# tmp465,
	call	strcpy	#
	.loc 1 1049 0
	movq	-1232(%rbp), %rax	# g, tmp466
	movq	88(%rax), %rax	# g_20(D)->skeys, D.7703
	movl	-1200(%rbp), %edx	# i, tmp467
	movslq	%edx, %rdx	# tmp467, D.7704
	salq	$4, %rdx	#, D.7704
	addq	%rdx, %rax	# D.7704, D.7703
	movq	8(%rax), %rdx	# _297->pkey, D.7701
	movq	-1136(%rbp), %rax	# s, tmp468
	movq	%rdx, %rsi	# D.7701,
	movq	%rax, %rdi	# tmp468,
	call	strcpy	#
	.loc 1 1050 0
	movq	-1232(%rbp), %rax	# g, tmp469
	movl	96(%rax), %eax	# g_20(D)->slen, D.7698
	movl	%eax, %edx	# D.7698, D.7704
	movq	-1168(%rbp), %rcx	# fp, tmp470
	movq	-1128(%rbp), %rax	# s2, tmp471
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp471,
	call	fwrite	#
	movq	-1232(%rbp), %rdx	# g, tmp472
	movl	96(%rdx), %edx	# g_20(D)->slen, D.7698
	movl	%edx, %edx	# D.7698, D.7704
	cmpq	%rdx, %rax	# D.7704, D.7704
	je	.L238	#,
	.loc 1 1050 0 is_stmt 0 discriminator 1
	movl	$15, %eax	#, D.7696
	jmp	.L165	#
.L238:
	.loc 1 1051 0 is_stmt 1
	movq	-1232(%rbp), %rax	# g, tmp473
	movl	64(%rax), %eax	# g_20(D)->plen, D.7698
	movl	%eax, %edx	# D.7698, D.7704
	movq	-1168(%rbp), %rcx	# fp, tmp474
	movq	-1136(%rbp), %rax	# s, tmp475
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp475,
	call	fwrite	#
	movq	-1232(%rbp), %rdx	# g, tmp476
	movl	64(%rdx), %edx	# g_20(D)->plen, D.7698
	movl	%edx, %edx	# D.7698, D.7704
	cmpq	%rdx, %rax	# D.7704, D.7704
	je	.L239	#,
	.loc 1 1051 0 is_stmt 0 discriminator 1
	movl	$15, %eax	#, D.7696
	jmp	.L165	#
.L239:
	.loc 1 1046 0 is_stmt 1
	addl	$1, -1200(%rbp)	#, i
.L237:
	.loc 1 1046 0 is_stmt 0 discriminator 1
	movl	-1200(%rbp), %edx	# i, i.28
	movq	-1232(%rbp), %rax	# g, tmp477
	movl	100(%rax), %eax	# g_20(D)->nsecondary, D.7698
	cmpl	%eax, %edx	# D.7698, i.28
	jb	.L240	#,
.L236:
	.loc 1 1054 0 is_stmt 1
	movq	-1128(%rbp), %rax	# s2, tmp478
	movq	%rax, %rdi	# tmp478,
	call	free	#
.L226:
	.loc 1 1057 0
	movq	-1136(%rbp), %rax	# s, tmp479
	movq	%rax, %rdi	# tmp479,
	call	free	#
	.loc 1 1058 0
	movq	-1168(%rbp), %rax	# fp, tmp480
	movq	%rax, %rdi	# tmp480,
	call	fclose	#
	.loc 1 1059 0
	movl	-1204(%rbp), %eax	# status, D.7696
.L165:
	.loc 1 1060 0
	movq	-24(%rbp), %rbx	# D.7710, tmp483
	xorq	%fs:40, %rbx	#, tmp483
	je	.L241	#,
	call	__stack_chk_fail	#
.L241:
	addq	$1224, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	SSIWriteIndex, .-SSIWriteIndex
	.globl	SSIFreeIndex
	.type	SSIFreeIndex, @function
SSIFreeIndex:
.LFB21:
	.loc 1 1074 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# g, g
	.loc 1 1076 0
	cmpq	$0, -24(%rbp)	#, g
	je	.L242	#,
	.loc 1 1078 0
	movq	-24(%rbp), %rax	# g, tmp106
	movl	8(%rax), %eax	# g_5(D)->external, D.7717
	testl	%eax, %eax	# D.7717
	jne	.L244	#,
	.loc 1 1079 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L245	#
.L246:
	.loc 1 1079 0 is_stmt 0 discriminator 2
	movq	-24(%rbp), %rax	# g, tmp107
	movq	56(%rax), %rdx	# g_5(D)->pkeys, D.7719
	movl	-4(%rbp), %eax	# i, tmp108
	cltq
	salq	$3, %rax	#, tmp110
	leaq	0(,%rax,8), %rcx	#, tmp111
	subq	%rax, %rcx	# tmp109, D.7720
	movq	%rcx, %rax	# D.7720, D.7720
	addq	%rdx, %rax	# D.7719, D.7719
	movq	(%rax), %rax	# _13->key, D.7721
	movq	%rax, %rdi	# D.7721,
	call	free	#
	addl	$1, -4(%rbp)	#, i
.L245:
	.loc 1 1079 0 discriminator 1
	movl	-4(%rbp), %edx	# i, i.29
	movq	-24(%rbp), %rax	# g, tmp112
	movl	68(%rax), %eax	# g_5(D)->nprimary, D.7718
	cmpl	%eax, %edx	# D.7718, i.29
	jb	.L246	#,
	.loc 1 1080 0 is_stmt 1
	movl	$0, -4(%rbp)	#, i
	jmp	.L247	#
.L248:
	.loc 1 1080 0 is_stmt 0 discriminator 2
	movq	-24(%rbp), %rax	# g, tmp113
	movq	88(%rax), %rax	# g_5(D)->skeys, D.7722
	movl	-4(%rbp), %edx	# i, tmp114
	movslq	%edx, %rdx	# tmp114, D.7720
	salq	$4, %rdx	#, D.7720
	addq	%rdx, %rax	# D.7720, D.7722
	movq	(%rax), %rax	# _22->key, D.7721
	movq	%rax, %rdi	# D.7721,
	call	free	#
	addl	$1, -4(%rbp)	#, i
.L247:
	.loc 1 1080 0 discriminator 1
	movl	-4(%rbp), %edx	# i, i.30
	movq	-24(%rbp), %rax	# g, tmp115
	movl	100(%rax), %eax	# g_5(D)->nsecondary, D.7718
	cmpl	%eax, %edx	# D.7718, i.30
	jb	.L248	#,
	.loc 1 1081 0 is_stmt 1
	movl	$0, -4(%rbp)	#, i
	jmp	.L249	#
.L250:
	.loc 1 1081 0 is_stmt 0 discriminator 2
	movq	-24(%rbp), %rax	# g, tmp116
	movq	88(%rax), %rax	# g_5(D)->skeys, D.7722
	movl	-4(%rbp), %edx	# i, tmp117
	movslq	%edx, %rdx	# tmp117, D.7720
	salq	$4, %rdx	#, D.7720
	addq	%rdx, %rax	# D.7720, D.7722
	movq	8(%rax), %rax	# _31->pkey, D.7721
	movq	%rax, %rdi	# D.7721,
	call	free	#
	addl	$1, -4(%rbp)	#, i
.L249:
	.loc 1 1081 0 discriminator 1
	movl	-4(%rbp), %edx	# i, i.31
	movq	-24(%rbp), %rax	# g, tmp118
	movl	100(%rax), %eax	# g_5(D)->nsecondary, D.7718
	cmpl	%eax, %edx	# D.7718, i.31
	jb	.L250	#,
	.loc 1 1082 0 is_stmt 1
	movq	-24(%rbp), %rax	# g, tmp119
	movq	56(%rax), %rax	# g_5(D)->pkeys, D.7719
	testq	%rax, %rax	# D.7719
	je	.L251	#,
	.loc 1 1082 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# g, tmp120
	movq	56(%rax), %rax	# g_5(D)->pkeys, D.7719
	movq	%rax, %rdi	# D.7719,
	call	free	#
.L251:
	.loc 1 1083 0 is_stmt 1
	movq	-24(%rbp), %rax	# g, tmp121
	movq	88(%rax), %rax	# g_5(D)->skeys, D.7722
	testq	%rax, %rax	# D.7722
	je	.L253	#,
	.loc 1 1083 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# g, tmp122
	movq	88(%rax), %rax	# g_5(D)->skeys, D.7722
	movq	%rax, %rdi	# D.7722,
	call	free	#
	jmp	.L253	#
.L244:
	.loc 1 1085 0 is_stmt 1
	movq	-24(%rbp), %rax	# g, tmp123
	movq	80(%rax), %rax	# g_5(D)->ptmp, D.7723
	testq	%rax, %rax	# D.7723
	je	.L254	#,
	.loc 1 1085 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# g, tmp124
	movq	80(%rax), %rax	# g_5(D)->ptmp, D.7723
	movq	%rax, %rdi	# D.7723,
	call	fclose	#
.L254:
	.loc 1 1086 0 is_stmt 1
	movq	-24(%rbp), %rax	# g, tmp125
	movq	112(%rax), %rax	# g_5(D)->stmp, D.7723
	testq	%rax, %rax	# D.7723
	je	.L255	#,
	.loc 1 1086 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# g, tmp126
	movq	112(%rax), %rax	# g_5(D)->stmp, D.7723
	movq	%rax, %rdi	# D.7723,
	call	fclose	#
.L255:
	.loc 1 1088 0 is_stmt 1
	movq	-24(%rbp), %rax	# g, tmp127
	movq	72(%rax), %rax	# g_5(D)->ptmpfile, D.7721
	movq	%rax, %rdi	# D.7721,
	call	remove	#
	.loc 1 1089 0
	movq	-24(%rbp), %rax	# g, tmp128
	movq	104(%rax), %rax	# g_5(D)->stmpfile, D.7721
	movq	%rax, %rdi	# D.7721,
	call	remove	#
.L253:
	.loc 1 1092 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L256	#
.L257:
	.loc 1 1092 0 is_stmt 0 discriminator 2
	movq	-24(%rbp), %rax	# g, tmp129
	movq	16(%rax), %rax	# g_5(D)->filenames, D.7725
	movl	-4(%rbp), %edx	# i, tmp130
	movslq	%edx, %rdx	# tmp130, D.7720
	salq	$3, %rdx	#, D.7720
	addq	%rdx, %rax	# D.7720, D.7725
	movq	(%rax), %rax	# *_50, D.7721
	movq	%rax, %rdi	# D.7721,
	call	free	#
	addl	$1, -4(%rbp)	#, i
.L256:
	.loc 1 1092 0 discriminator 1
	movq	-24(%rbp), %rax	# g, tmp131
	movzwl	52(%rax), %eax	# g_5(D)->nfiles, D.7724
	movzwl	%ax, %eax	# D.7724, D.7717
	cmpl	-4(%rbp), %eax	# i, D.7717
	jg	.L257	#,
	.loc 1 1093 0 is_stmt 1
	movq	-24(%rbp), %rax	# g, tmp132
	movq	16(%rax), %rax	# g_5(D)->filenames, D.7725
	testq	%rax, %rax	# D.7725
	je	.L258	#,
	.loc 1 1093 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# g, tmp133
	movq	16(%rax), %rax	# g_5(D)->filenames, D.7725
	movq	%rax, %rdi	# D.7725,
	call	free	#
.L258:
	.loc 1 1094 0 is_stmt 1
	movq	-24(%rbp), %rax	# g, tmp134
	movq	24(%rax), %rax	# g_5(D)->fileformat, D.7726
	testq	%rax, %rax	# D.7726
	je	.L259	#,
	.loc 1 1094 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# g, tmp135
	movq	24(%rax), %rax	# g_5(D)->fileformat, D.7726
	movq	%rax, %rdi	# D.7726,
	call	free	#
.L259:
	.loc 1 1095 0 is_stmt 1
	movq	-24(%rbp), %rax	# g, tmp136
	movq	32(%rax), %rax	# g_5(D)->bpl, D.7726
	testq	%rax, %rax	# D.7726
	je	.L260	#,
	.loc 1 1095 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# g, tmp137
	movq	32(%rax), %rax	# g_5(D)->bpl, D.7726
	movq	%rax, %rdi	# D.7726,
	call	free	#
.L260:
	.loc 1 1096 0 is_stmt 1
	movq	-24(%rbp), %rax	# g, tmp138
	movq	40(%rax), %rax	# g_5(D)->rpl, D.7726
	testq	%rax, %rax	# D.7726
	je	.L261	#,
	.loc 1 1096 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# g, tmp139
	movq	40(%rax), %rax	# g_5(D)->rpl, D.7726
	movq	%rax, %rdi	# D.7726,
	call	free	#
.L261:
	.loc 1 1097 0 is_stmt 1
	movq	-24(%rbp), %rax	# g, tmp140
	movq	%rax, %rdi	# tmp140,
	call	free	#
.L242:
	.loc 1 1099 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	SSIFreeIndex, .-SSIFreeIndex
	.section	.rodata
.LC11:
	.string	"ok (no error)"
.LC12:
	.string	"no data, fread() failed"
.LC13:
	.string	"no such key"
	.align 8
.LC14:
	.string	"out of memory, malloc() failed"
	.align 8
.LC15:
	.string	"file not found, fopen() failed"
.LC16:
	.string	"not a SSI file? (bad magic)"
	.align 8
.LC17:
	.string	"corrupt format? unexpected data"
	.align 8
.LC18:
	.string	"no large file support for this system"
.LC19:
	.string	"failed to reposition on disk"
	.align 8
.LC20:
	.string	"failed to get file position on disk"
	.align 8
.LC21:
	.string	"no fast subseq support for this seqfile"
.LC22:
	.string	"subseq start is out of range"
.LC23:
	.string	"an argument is out of range"
.LC24:
	.string	"number of files exceeds limit"
.LC25:
	.string	"number of keys exceeds limit"
.LC26:
	.string	"an fwrite() failed"
	.align 8
.LC27:
	.string	"some problem with external sorting"
.LC28:
	.string	"unrecognized code"
	.text
	.globl	SSIErrorString
	.type	SSIErrorString, @function
SSIErrorString:
.LFB22:
	.loc 1 1115 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# n, n
	.loc 1 1116 0
	cmpl	$16, -4(%rbp)	#, n
	ja	.L263	#,
	movl	-4(%rbp), %eax	# n, tmp61
	movq	.L265(,%rax,8), %rax	#, tmp62
	jmp	*%rax	# tmp62
	.section	.rodata
	.align 8
	.align 4
.L265:
	.quad	.L264
	.quad	.L266
	.quad	.L267
	.quad	.L268
	.quad	.L269
	.quad	.L270
	.quad	.L271
	.quad	.L272
	.quad	.L273
	.quad	.L274
	.quad	.L275
	.quad	.L276
	.quad	.L277
	.quad	.L278
	.quad	.L279
	.quad	.L280
	.quad	.L281
	.text
.L264:
	.loc 1 1117 0
	movl	$.LC11, %eax	#, D.7727
	jmp	.L282	#
.L266:
	.loc 1 1118 0
	movl	$.LC12, %eax	#, D.7727
	jmp	.L282	#
.L267:
	.loc 1 1119 0
	movl	$.LC13, %eax	#, D.7727
	jmp	.L282	#
.L268:
	.loc 1 1120 0
	movl	$.LC14, %eax	#, D.7727
	jmp	.L282	#
.L269:
	.loc 1 1121 0
	movl	$.LC15, %eax	#, D.7727
	jmp	.L282	#
.L270:
	.loc 1 1122 0
	movl	$.LC16, %eax	#, D.7727
	jmp	.L282	#
.L271:
	.loc 1 1123 0
	movl	$.LC17, %eax	#, D.7727
	jmp	.L282	#
.L272:
	.loc 1 1124 0
	movl	$.LC18, %eax	#, D.7727
	jmp	.L282	#
.L273:
	.loc 1 1125 0
	movl	$.LC19, %eax	#, D.7727
	jmp	.L282	#
.L274:
	.loc 1 1126 0
	movl	$.LC20, %eax	#, D.7727
	jmp	.L282	#
.L275:
	.loc 1 1127 0
	movl	$.LC21, %eax	#, D.7727
	jmp	.L282	#
.L276:
	.loc 1 1128 0
	movl	$.LC22, %eax	#, D.7727
	jmp	.L282	#
.L277:
	.loc 1 1129 0
	movl	$.LC23, %eax	#, D.7727
	jmp	.L282	#
.L278:
	.loc 1 1130 0
	movl	$.LC24, %eax	#, D.7727
	jmp	.L282	#
.L279:
	.loc 1 1131 0
	movl	$.LC25, %eax	#, D.7727
	jmp	.L282	#
.L280:
	.loc 1 1132 0
	movl	$.LC26, %eax	#, D.7727
	jmp	.L282	#
.L281:
	.loc 1 1133 0
	movl	$.LC27, %eax	#, D.7727
	jmp	.L282	#
.L263:
	.loc 1 1134 0
	movl	$.LC28, %eax	#, D.7727
.L282:
	.loc 1 1137 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	SSIErrorString, .-SSIErrorString
	.type	read_i16, @function
read_i16:
.LFB23:
	.loc 1 1141 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# fp, fp
	movq	%rsi, -32(%rbp)	# ret_result, ret_result
	.loc 1 1143 0
	movq	-24(%rbp), %rdx	# fp, tmp65
	leaq	-2(%rbp), %rax	#, tmp66
	movq	%rdx, %rcx	# tmp65,
	movl	$1, %edx	#,
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp66,
	call	fread	#
	cmpq	$1, %rax	#, D.7747
	je	.L284	#,
	.loc 1 1143 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.7746
	jmp	.L286	#
.L284:
	.loc 1 1144 0 is_stmt 1
	movzwl	-2(%rbp), %eax	# result, result.32
	movzwl	%ax, %eax	# result.32, D.7746
	movl	%eax, %edi	# D.7746,
	call	sre_ntoh16	#
	movq	-32(%rbp), %rdx	# ret_result, tmp67
	movw	%ax, (%rdx)	# D.7748, *ret_result_8(D)
	.loc 1 1145 0
	movl	$1, %eax	#, D.7746
.L286:
	.loc 1 1146 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	read_i16, .-read_i16
	.type	write_i16, @function
write_i16:
.LFB24:
	.loc 1 1149 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# fp, fp
	movl	%esi, %eax	# n, tmp65
	movw	%ax, -12(%rbp)	# tmp65, n
	.loc 1 1150 0
	movzwl	-12(%rbp), %eax	# n, n.33
	movzwl	%ax, %eax	# n.33, D.7749
	movl	%eax, %edi	# D.7749,
	call	sre_hton16	#
	movw	%ax, -12(%rbp)	# n.34, n
	.loc 1 1151 0
	movq	-8(%rbp), %rdx	# fp, tmp66
	leaq	-12(%rbp), %rax	#, tmp67
	movq	%rdx, %rcx	# tmp66,
	movl	$1, %edx	#,
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp67,
	call	fwrite	#
	cmpq	$1, %rax	#, D.7750
	je	.L288	#,
	.loc 1 1151 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.7749
	jmp	.L289	#
.L288:
	.loc 1 1152 0 is_stmt 1
	movl	$1, %eax	#, D.7749
.L289:
	.loc 1 1153 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	write_i16, .-write_i16
	.type	read_i32, @function
read_i32:
.LFB25:
	.loc 1 1156 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# fp, fp
	movq	%rsi, -32(%rbp)	# ret_result, ret_result
	.loc 1 1158 0
	movq	-24(%rbp), %rdx	# fp, tmp64
	leaq	-4(%rbp), %rax	#, tmp65
	movq	%rdx, %rcx	# tmp64,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp65,
	call	fread	#
	cmpq	$1, %rax	#, D.7752
	je	.L291	#,
	.loc 1 1158 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.7751
	jmp	.L293	#
.L291:
	.loc 1 1159 0 is_stmt 1
	movl	-4(%rbp), %eax	# result, result.35
	movl	%eax, %edi	# result.35,
	call	sre_ntoh32	#
	movq	-32(%rbp), %rdx	# ret_result, tmp66
	movl	%eax, (%rdx)	# D.7753, *ret_result_7(D)
	.loc 1 1160 0
	movl	$1, %eax	#, D.7751
.L293:
	.loc 1 1161 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	read_i32, .-read_i32
	.type	write_i32, @function
write_i32:
.LFB26:
	.loc 1 1164 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# fp, fp
	movl	%esi, -12(%rbp)	# n, n
	.loc 1 1165 0
	movl	-12(%rbp), %eax	# n, n.36
	movl	%eax, %edi	# n.36,
	call	sre_hton32	#
	movl	%eax, -12(%rbp)	# n.37, n
	.loc 1 1166 0
	movq	-8(%rbp), %rdx	# fp, tmp64
	leaq	-12(%rbp), %rax	#, tmp65
	movq	%rdx, %rcx	# tmp64,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp65,
	call	fwrite	#
	cmpq	$1, %rax	#, D.7755
	je	.L295	#,
	.loc 1 1166 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.7754
	jmp	.L296	#
.L295:
	.loc 1 1167 0 is_stmt 1
	movl	$1, %eax	#, D.7754
.L296:
	.loc 1 1168 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	write_i32, .-write_i32
	.type	read_i64, @function
read_i64:
.LFB27:
	.loc 1 1171 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# fp, fp
	movq	%rsi, -32(%rbp)	# ret_result, ret_result
	.loc 1 1173 0
	movq	-24(%rbp), %rdx	# fp, tmp64
	leaq	-8(%rbp), %rax	#, tmp65
	movq	%rdx, %rcx	# tmp64,
	movl	$1, %edx	#,
	movl	$8, %esi	#,
	movq	%rax, %rdi	# tmp65,
	call	fread	#
	cmpq	$1, %rax	#, D.7757
	je	.L298	#,
	.loc 1 1173 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.7756
	jmp	.L300	#
.L298:
	.loc 1 1174 0 is_stmt 1
	movq	-8(%rbp), %rax	# result, result.38
	movq	%rax, %rdi	# result.38,
	call	sre_ntoh64	#
	movq	-32(%rbp), %rdx	# ret_result, tmp66
	movq	%rax, (%rdx)	# D.7758, *ret_result_7(D)
	.loc 1 1175 0
	movl	$1, %eax	#, D.7756
.L300:
	.loc 1 1176 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	read_i64, .-read_i64
	.type	write_i64, @function
write_i64:
.LFB28:
	.loc 1 1179 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# fp, fp
	movq	%rsi, -16(%rbp)	# n, n
	.loc 1 1180 0
	movq	-16(%rbp), %rax	# n, n.39
	movq	%rax, %rdi	# n.39,
	call	sre_hton64	#
	movq	%rax, -16(%rbp)	# n.40, n
	.loc 1 1181 0
	movq	-8(%rbp), %rdx	# fp, tmp64
	leaq	-16(%rbp), %rax	#, tmp65
	movq	%rdx, %rcx	# tmp64,
	movl	$1, %edx	#,
	movl	$8, %esi	#,
	movq	%rax, %rdi	# tmp65,
	call	fwrite	#
	cmpq	$1, %rax	#, D.7760
	je	.L302	#,
	.loc 1 1181 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.7759
	jmp	.L303	#
.L302:
	.loc 1 1182 0 is_stmt 1
	movl	$1, %eax	#, D.7759
.L303:
	.loc 1 1183 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	write_i64, .-write_i64
	.type	read_offset, @function
read_offset:
.LFB29:
	.loc 1 1186 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# fp, fp
	movl	%esi, %eax	# mode, tmp65
	movq	%rdx, -24(%rbp)	# ret_offset, ret_offset
	movb	%al, -12(%rbp)	# tmp65, mode
	.loc 1 1187 0
	cmpb	$0, -12(%rbp)	#, mode
	jne	.L305	#,
	.loc 1 1188 0
	movq	-24(%rbp), %rax	# ret_offset, tmp66
	movb	$0, (%rax)	#, ret_offset_3(D)->mode
	.loc 1 1189 0
	movq	-24(%rbp), %rax	# ret_offset, tmp67
	leaq	8(%rax), %rdx	#, D.7762
	movq	-8(%rbp), %rax	# fp, tmp68
	movq	%rdx, %rsi	# D.7762,
	movq	%rax, %rdi	# tmp68,
	call	read_i32	#
	testl	%eax, %eax	# D.7761
	jne	.L306	#,
	.loc 1 1189 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.7761
	jmp	.L307	#
.L305:
	.loc 1 1190 0 is_stmt 1
	cmpb	$1, -12(%rbp)	#, mode
	jne	.L308	#,
	.loc 1 1191 0
	movq	-24(%rbp), %rax	# ret_offset, tmp69
	movb	$1, (%rax)	#, ret_offset_3(D)->mode
	.loc 1 1192 0
	movq	-24(%rbp), %rax	# ret_offset, tmp70
	leaq	8(%rax), %rdx	#, D.7763
	movq	-8(%rbp), %rax	# fp, tmp71
	movq	%rdx, %rsi	# D.7763,
	movq	%rax, %rdi	# tmp71,
	call	read_i64	#
	testl	%eax, %eax	# D.7761
	jne	.L306	#,
	.loc 1 1192 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.7761
	jmp	.L307	#
.L308:
	.loc 1 1193 0 is_stmt 1
	movl	$0, %eax	#, D.7761
	jmp	.L307	#
.L306:
	.loc 1 1195 0
	movl	$1, %eax	#, D.7761
.L307:
	.loc 1 1196 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	read_offset, .-read_offset
	.type	write_offset, @function
write_offset:
.LFB30:
	.loc 1 1199 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# fp, fp
	movq	%rsi, -16(%rbp)	# offset, offset
	.loc 1 1200 0
	movq	-16(%rbp), %rax	# offset, tmp65
	movzbl	(%rax), %eax	# offset_2(D)->mode, D.7765
	testb	%al, %al	# D.7765
	jne	.L310	#,
	.loc 1 1200 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# offset, tmp66
	movl	8(%rax), %edx	# offset_2(D)->off.i32, D.7766
	movq	-8(%rbp), %rax	# fp, tmp67
	movl	%edx, %esi	# D.7766,
	movq	%rax, %rdi	# tmp67,
	call	write_i32	#
	jmp	.L311	#
.L310:
	.loc 1 1201 0 is_stmt 1
	movq	-16(%rbp), %rax	# offset, tmp68
	movzbl	(%rax), %eax	# offset_2(D)->mode, D.7765
	cmpb	$1, %al	#, D.7765
	jne	.L312	#,
	.loc 1 1201 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# offset, tmp69
	movq	8(%rax), %rdx	# offset_2(D)->off.i64, D.7767
	movq	-8(%rbp), %rax	# fp, tmp70
	movq	%rdx, %rsi	# D.7767,
	movq	%rax, %rdi	# tmp70,
	call	write_i64	#
	jmp	.L311	#
.L312:
	.loc 1 1202 0 is_stmt 1
	call	abort	#
.L311:
	.loc 1 1205 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	write_offset, .-write_offset
	.section	.rodata
.LC29:
	.string	"\t\n"
	.text
	.type	parse_pkey_info, @function
parse_pkey_info:
.LFB31:
	.loc 1 1209 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# buf, buf
	movl	%esi, %eax	# mode, tmp69
	movq	%rdx, -56(%rbp)	# pkey, pkey
	movb	%al, -44(%rbp)	# tmp69, mode
	.loc 1 1213 0
	movq	-40(%rbp), %rax	# buf, tmp70
	movq	%rax, -16(%rbp)	# tmp70, s
	.loc 1 1214 0
	leaq	-20(%rbp), %rdx	#, tmp71
	leaq	-16(%rbp), %rax	#, tmp72
	movl	$.LC29, %esi	#,
	movq	%rax, %rdi	# tmp72,
	call	sre_strtok	#
	movq	%rax, -8(%rbp)	# tmp73, tok
	cmpq	$0, -8(%rbp)	#, tok
	jne	.L314	#,
	.loc 1 1214 0 is_stmt 0 discriminator 1
	movl	$6, %eax	#, D.7768
	jmp	.L322	#
.L314:
	.loc 1 1215 0 is_stmt 1
	movq	-56(%rbp), %rax	# pkey, tmp74
	movq	-8(%rbp), %rdx	# tok, tmp75
	movq	%rdx, (%rax)	# tmp75, pkey_5(D)->key
	.loc 1 1216 0
	leaq	-20(%rbp), %rdx	#, tmp76
	leaq	-16(%rbp), %rax	#, tmp77
	movl	$.LC29, %esi	#,
	movq	%rax, %rdi	# tmp77,
	call	sre_strtok	#
	movq	%rax, -8(%rbp)	# tmp78, tok
	cmpq	$0, -8(%rbp)	#, tok
	jne	.L316	#,
	.loc 1 1216 0 is_stmt 0 discriminator 1
	movl	$6, %eax	#, D.7768
	jmp	.L322	#
.L316:
	.loc 1 1217 0 is_stmt 1
	movq	-8(%rbp), %rax	# tok, tmp79
	movq	%rax, %rdi	# tmp79,
	call	atoi	#
	movl	%eax, %edx	# D.7768, D.7769
	movq	-56(%rbp), %rax	# pkey, tmp80
	movw	%dx, 8(%rax)	# D.7769, pkey_5(D)->fnum
	.loc 1 1219 0
	cmpb	$0, -44(%rbp)	#, mode
	jne	.L317	#,
	.loc 1 1220 0
	leaq	-20(%rbp), %rdx	#, tmp81
	leaq	-16(%rbp), %rax	#, tmp82
	movl	$.LC29, %esi	#,
	movq	%rax, %rdi	# tmp82,
	call	sre_strtok	#
	movq	%rax, -8(%rbp)	# tmp83, tok
	cmpq	$0, -8(%rbp)	#, tok
	jne	.L318	#,
	.loc 1 1220 0 is_stmt 0 discriminator 1
	movl	$6, %eax	#, D.7768
	jmp	.L322	#
.L318:
	.loc 1 1221 0 is_stmt 1
	movq	-56(%rbp), %rax	# pkey, tmp84
	movzbl	-44(%rbp), %edx	# mode, tmp85
	movb	%dl, 16(%rax)	# tmp85, pkey_5(D)->r_off.mode
	.loc 1 1222 0
	movq	-8(%rbp), %rax	# tok, tmp86
	movl	$10, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp86,
	call	strtoul	#
	movl	%eax, %edx	# D.7770, D.7771
	movq	-56(%rbp), %rax	# pkey, tmp87
	movl	%edx, 24(%rax)	# D.7771, pkey_5(D)->r_off.off.i32
	.loc 1 1223 0
	leaq	-20(%rbp), %rdx	#, tmp88
	leaq	-16(%rbp), %rax	#, tmp89
	movl	$.LC29, %esi	#,
	movq	%rax, %rdi	# tmp89,
	call	sre_strtok	#
	movq	%rax, -8(%rbp)	# tmp90, tok
	cmpq	$0, -8(%rbp)	#, tok
	jne	.L319	#,
	.loc 1 1223 0 is_stmt 0 discriminator 1
	movl	$6, %eax	#, D.7768
	jmp	.L322	#
.L319:
	.loc 1 1224 0 is_stmt 1
	movq	-56(%rbp), %rax	# pkey, tmp91
	movzbl	-44(%rbp), %edx	# mode, tmp92
	movb	%dl, 32(%rax)	# tmp92, pkey_5(D)->d_off.mode
	.loc 1 1225 0
	movq	-8(%rbp), %rax	# tok, tmp93
	movl	$10, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp93,
	call	strtoul	#
	movl	%eax, %edx	# D.7770, D.7771
	movq	-56(%rbp), %rax	# pkey, tmp94
	movl	%edx, 40(%rax)	# D.7771, pkey_5(D)->d_off.off.i32
	.loc 1 1241 0
	leaq	-20(%rbp), %rdx	#, tmp95
	leaq	-16(%rbp), %rax	#, tmp96
	movl	$.LC29, %esi	#,
	movq	%rax, %rdi	# tmp96,
	call	sre_strtok	#
	movq	%rax, -8(%rbp)	# tmp97, tok
	cmpq	$0, -8(%rbp)	#, tok
	jne	.L321	#,
	jmp	.L323	#
.L317:
	.loc 1 1238 0
	movl	$7, %eax	#, D.7768
	jmp	.L322	#
.L323:
	.loc 1 1241 0 discriminator 1
	movl	$6, %eax	#, D.7768
	jmp	.L322	#
.L321:
	.loc 1 1242 0
	movq	-8(%rbp), %rax	# tok, tmp98
	movl	$10, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp98,
	call	strtoul	#
	movl	%eax, %edx	# D.7770, D.7771
	movq	-56(%rbp), %rax	# pkey, tmp99
	movl	%edx, 48(%rax)	# D.7771, pkey_5(D)->len
	.loc 1 1244 0
	movl	$0, %eax	#, D.7768
.L322:
	.loc 1 1245 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	parse_pkey_info, .-parse_pkey_info
	.type	parse_skey_info, @function
parse_skey_info:
.LFB32:
	.loc 1 1248 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# buf, buf
	movq	%rsi, -48(%rbp)	# skey, skey
	.loc 1 1252 0
	movq	-40(%rbp), %rax	# buf, tmp61
	movq	%rax, -16(%rbp)	# tmp61, s
	.loc 1 1253 0
	leaq	-20(%rbp), %rdx	#, tmp62
	leaq	-16(%rbp), %rax	#, tmp63
	movl	$.LC29, %esi	#,
	movq	%rax, %rdi	# tmp63,
	call	sre_strtok	#
	movq	%rax, -8(%rbp)	# tmp64, tok
	cmpq	$0, -8(%rbp)	#, tok
	jne	.L325	#,
	.loc 1 1253 0 is_stmt 0 discriminator 1
	movl	$6, %eax	#, D.7773
	jmp	.L328	#
.L325:
	.loc 1 1254 0 is_stmt 1
	movq	-48(%rbp), %rax	# skey, tmp65
	movq	-8(%rbp), %rdx	# tok, tmp66
	movq	%rdx, (%rax)	# tmp66, skey_5(D)->key
	.loc 1 1255 0
	leaq	-20(%rbp), %rdx	#, tmp67
	leaq	-16(%rbp), %rax	#, tmp68
	movl	$.LC29, %esi	#,
	movq	%rax, %rdi	# tmp68,
	call	sre_strtok	#
	movq	%rax, -8(%rbp)	# tmp69, tok
	cmpq	$0, -8(%rbp)	#, tok
	jne	.L327	#,
	.loc 1 1255 0 is_stmt 0 discriminator 1
	movl	$6, %eax	#, D.7773
	jmp	.L328	#
.L327:
	.loc 1 1256 0 is_stmt 1
	movq	-48(%rbp), %rax	# skey, tmp70
	movq	-8(%rbp), %rdx	# tok, tmp71
	movq	%rdx, 8(%rax)	# tmp71, skey_5(D)->pkey
	.loc 1 1257 0
	movl	$0, %eax	#, D.7773
.L328:
	.loc 1 1258 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	parse_skey_info, .-parse_skey_info
	.type	binary_search, @function
binary_search:
.LFB33:
	.loc 1 1285 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -40(%rbp)	# sfp, sfp
	movq	%rsi, -48(%rbp)	# key, key
	movl	%edx, -52(%rbp)	# klen, klen
	movq	%rcx, -64(%rbp)	# base, base
	movl	%r8d, -56(%rbp)	# recsize, recsize
	movl	%r9d, -68(%rbp)	# maxidx, maxidx
	.loc 1 1291 0
	cmpl	$0, -68(%rbp)	#, maxidx
	jne	.L330	#,
	.loc 1 1291 0 is_stmt 0 discriminator 1
	movl	$2, %eax	#, D.7774
	jmp	.L331	#
.L330:
	.loc 1 1292 0 is_stmt 1
	movl	-52(%rbp), %eax	# klen, tmp67
	cltq
	movq	%rax, %rdi	# D.7775,
	call	malloc	#
	movq	%rax, -8(%rbp)	# tmp68, name
	cmpq	$0, -8(%rbp)	#, name
	jne	.L332	#,
	.loc 1 1292 0 is_stmt 0 discriminator 1
	movl	$3, %eax	#, D.7774
	jmp	.L331	#
.L332:
	.loc 1 1293 0 is_stmt 1
	movl	$0, -28(%rbp)	#, left
	.loc 1 1294 0
	movl	-68(%rbp), %eax	# maxidx, tmp72
	subl	$1, %eax	#, tmp71
	movl	%eax, -24(%rbp)	# tmp71, right
.L341:
	.loc 1 1296 0
	movl	-24(%rbp), %eax	# right, tmp73
	movl	-28(%rbp), %edx	# left, tmp74
	addl	%edx, %eax	# tmp74, D.7776
	shrl	%eax	# tmp75
	movl	%eax, -20(%rbp)	# tmp75, mid
	.loc 1 1298 0
	movl	-20(%rbp), %ecx	# mid, tmp76
	movl	-56(%rbp), %edx	# recsize, tmp77
	movq	-64(%rbp), %rsi	# base, tmp78
	movq	-40(%rbp), %rax	# sfp, tmp79
	movq	%rax, %rdi	# tmp79,
	call	indexfile_position	#
	movl	%eax, -16(%rbp)	# tmp80, status
	cmpl	$0, -16(%rbp)	#, status
	je	.L333	#,
	.loc 1 1299 0
	movq	-8(%rbp), %rax	# name, tmp81
	movq	%rax, %rdi	# tmp81,
	call	free	#
	movl	-16(%rbp), %eax	# status, D.7774
	jmp	.L331	#
.L333:
	.loc 1 1300 0
	movq	-40(%rbp), %rax	# sfp, tmp82
	movq	(%rax), %rcx	# sfp_16(D)->fp, D.7777
	movl	-52(%rbp), %eax	# klen, tmp83
	movslq	%eax, %rdx	# tmp83, D.7775
	movq	-8(%rbp), %rax	# name, tmp84
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp84,
	call	fread	#
	movl	-52(%rbp), %edx	# klen, tmp85
	movslq	%edx, %rdx	# tmp85, D.7775
	cmpq	%rdx, %rax	# D.7775, D.7775
	je	.L334	#,
	.loc 1 1301 0
	movq	-8(%rbp), %rax	# name, tmp86
	movq	%rax, %rdi	# tmp86,
	call	free	#
	movl	$1, %eax	#, D.7774
	jmp	.L331	#
.L334:
	.loc 1 1302 0
	movq	-48(%rbp), %rdx	# key, tmp87
	movq	-8(%rbp), %rax	# name, tmp88
	movq	%rdx, %rsi	# tmp87,
	movq	%rax, %rdi	# tmp88,
	call	strcmp	#
	movl	%eax, -12(%rbp)	# tmp89, cmp
	.loc 1 1303 0
	cmpl	$0, -12(%rbp)	#, cmp
	jne	.L335	#,
	.loc 1 1303 0 is_stmt 0 discriminator 1
	nop
	.loc 1 1312 0 is_stmt 1 discriminator 1
	movq	-8(%rbp), %rax	# name, tmp101
	movq	%rax, %rdi	# tmp101,
	call	free	#
	.loc 1 1313 0 discriminator 1
	movl	$0, %eax	#, D.7774
	jmp	.L331	#
.L335:
	.loc 1 1304 0
	movl	-28(%rbp), %eax	# left, tmp90
	cmpl	-24(%rbp), %eax	# right, tmp90
	jb	.L337	#,
	.loc 1 1305 0
	movq	-8(%rbp), %rax	# name, tmp91
	movq	%rax, %rdi	# tmp91,
	call	free	#
	movl	$2, %eax	#, D.7774
	jmp	.L331	#
.L337:
	.loc 1 1306 0
	cmpl	$0, -12(%rbp)	#, cmp
	jns	.L338	#,
	.loc 1 1306 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# mid, tmp95
	addl	$1, %eax	#, tmp94
	movl	%eax, -28(%rbp)	# tmp94, left
	jmp	.L339	#
.L338:
	.loc 1 1307 0 is_stmt 1
	cmpl	$0, -12(%rbp)	#, cmp
	jle	.L339	#,
	.loc 1 1308 0
	cmpl	$0, -20(%rbp)	#, mid
	jne	.L340	#,
	.loc 1 1308 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# name, tmp96
	movq	%rax, %rdi	# tmp96,
	call	free	#
	movl	$2, %eax	#, D.7774
	jmp	.L331	#
.L340:
	.loc 1 1309 0 is_stmt 1
	movl	-20(%rbp), %eax	# mid, tmp100
	subl	$1, %eax	#, tmp99
	movl	%eax, -24(%rbp)	# tmp99, right
	.loc 1 1311 0
	jmp	.L341	#
.L339:
	jmp	.L341	#
.L331:
	.loc 1 1314 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	binary_search, .-binary_search
	.type	indexfile_position, @function
indexfile_position:
.LFB34:
	.loc 1 1333 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# sfp, sfp
	movq	%rsi, -48(%rbp)	# base, base
	movl	%edx, -52(%rbp)	# len, len
	movl	%ecx, -56(%rbp)	# n, n
	.loc 1 1337 0
	movq	-48(%rbp), %rax	# base, tmp71
	movzbl	(%rax), %eax	# base_2(D)->mode, D.7779
	testb	%al, %al	# D.7779
	jne	.L343	#,
	.loc 1 1338 0
	movb	$0, -16(%rbp)	#, pos.mode
	.loc 1 1339 0
	movq	-48(%rbp), %rax	# base, tmp72
	movl	8(%rax), %edx	# base_2(D)->off.i32, D.7780
	movl	-56(%rbp), %eax	# n, tmp73
	imull	-52(%rbp), %eax	# len, D.7780
	addl	%edx, %eax	# D.7780, D.7780
	movl	%eax, -8(%rbp)	# D.7780, pos.off.i32
	jmp	.L344	#
.L343:
	.loc 1 1340 0
	movq	-48(%rbp), %rax	# base, tmp74
	movzbl	(%rax), %eax	# base_2(D)->mode, D.7779
	cmpb	$1, %al	#, D.7779
	jne	.L345	#,
	.loc 1 1341 0
	movb	$1, -16(%rbp)	#, pos.mode
	.loc 1 1342 0
	movq	-48(%rbp), %rax	# base, tmp75
	movq	8(%rax), %rdx	# base_2(D)->off.i64, D.7781
	movl	-56(%rbp), %eax	# n, tmp76
	imull	-52(%rbp), %eax	# len, D.7780
	movl	%eax, %eax	# D.7780, D.7781
	addq	%rdx, %rax	# D.7781, D.7781
	movq	%rax, -8(%rbp)	# D.7781, pos.off.i64
	jmp	.L344	#
.L345:
	.loc 1 1343 0
	movl	$0, %eax	#, D.7778
	jmp	.L348	#
.L344:
	.loc 1 1344 0
	movq	-40(%rbp), %rax	# sfp, tmp77
	movq	(%rax), %rax	# sfp_15(D)->fp, D.7782
	leaq	-16(%rbp), %rdx	#, tmp78
	movq	%rdx, %rsi	# tmp78,
	movq	%rax, %rdi	# D.7782,
	call	SSISetFilePosition	#
	movl	%eax, -20(%rbp)	# tmp79, status
	cmpl	$0, -20(%rbp)	#, status
	je	.L347	#,
	.loc 1 1344 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# status, D.7778
	jmp	.L348	#
.L347:
	.loc 1 1345 0 is_stmt 1
	movl	$0, %eax	#, D.7778
.L348:
	.loc 1 1346 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	indexfile_position, .-indexfile_position
	.type	current_index_size, @function
current_index_size:
.LFB35:
	.loc 1 1356 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)	# g, g
	.loc 1 1363 0
	movq	-40(%rbp), %rax	# g, tmp84
	movl	48(%rax), %eax	# g_2(D)->flen, D.7783
	addl	$16, %eax	#, D.7783
	movl	%eax, %eax	# D.7783, tmp95
	movq	%rax, -32(%rbp)	# tmp95, frecsize
	.loc 1 1364 0
	movq	-40(%rbp), %rax	# g, tmp85
	movl	(%rax), %eax	# g_2(D)->smode, D.7784
	cmpl	$1, %eax	#, D.7784
	jne	.L350	#,
	.loc 1 1364 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# g, tmp86
	movl	64(%rax), %eax	# g_2(D)->plen, D.7783
	addl	$22, %eax	#, D.7783
	movl	%eax, %eax	# D.7783, iftmp.41
	jmp	.L351	#
.L350:
	.loc 1 1364 0 discriminator 2
	movq	-40(%rbp), %rax	# g, tmp87
	movl	64(%rax), %eax	# g_2(D)->plen, D.7783
	addl	$14, %eax	#, D.7783
	movl	%eax, %eax	# D.7783, iftmp.41
.L351:
	.loc 1 1364 0 discriminator 3
	movq	%rax, -24(%rbp)	# iftmp.41, precsize
	.loc 1 1365 0 is_stmt 1 discriminator 3
	movq	-40(%rbp), %rax	# g, tmp88
	movl	64(%rax), %edx	# g_2(D)->plen, D.7783
	movq	-40(%rbp), %rax	# g, tmp89
	movl	96(%rax), %eax	# g_2(D)->slen, D.7783
	addl	%edx, %eax	# D.7783, D.7783
	movl	%eax, %eax	# D.7783, tmp96
	movq	%rax, -16(%rbp)	# tmp96, srecsize
	.loc 1 1367 0 discriminator 3
	movq	-40(%rbp), %rax	# g, tmp90
	movzwl	52(%rax), %eax	# g_2(D)->nfiles, D.7785
	movzwl	%ax, %eax	# D.7785, D.7786
	imulq	-32(%rbp), %rax	# frecsize, D.7786
	movq	%rax, %rdx	# D.7786, D.7786
	.loc 1 1368 0 discriminator 3
	movq	-40(%rbp), %rax	# g, tmp91
	movl	68(%rax), %eax	# g_2(D)->nprimary, D.7783
	.loc 1 1367 0 discriminator 3
	movl	%eax, %eax	# D.7783, D.7786
	.loc 1 1368 0 discriminator 3
	imulq	-24(%rbp), %rax	# precsize, D.7786
	.loc 1 1367 0 discriminator 3
	addq	%rax, %rdx	# D.7786, D.7786
	.loc 1 1369 0 discriminator 3
	movq	-40(%rbp), %rax	# g, tmp92
	movl	100(%rax), %eax	# g_2(D)->nsecondary, D.7783
	.loc 1 1368 0 discriminator 3
	movl	%eax, %eax	# D.7783, D.7786
	.loc 1 1369 0 discriminator 3
	imulq	-16(%rbp), %rax	# srecsize, D.7786
	.loc 1 1368 0 discriminator 3
	addq	%rdx, %rax	# D.7786, D.7786
	addq	$66, %rax	#, D.7786
	.loc 1 1366 0 discriminator 3
	shrq	$20, %rax	#, tmp93
	movq	%rax, -8(%rbp)	# tmp93, total
	.loc 1 1371 0 discriminator 3
	movq	-8(%rbp), %rax	# total, D.7787
	.loc 1 1372 0 discriminator 3
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	current_index_size, .-current_index_size
	.section	.rodata
.LC30:
	.string	"w"
.LC31:
	.string	"%s\t%u\t%lu\t%lu\t%lu\n"
.LC32:
	.string	"%s\t%u\t%llu\t%llu\t%lu\n"
	.text
	.type	activate_external_sort, @function
activate_external_sort:
.LFB36:
	.loc 1 1385 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# g, g
	.loc 1 1388 0
	movq	-24(%rbp), %rax	# g, tmp171
	movl	8(%rax), %eax	# g_7(D)->external, D.7788
	testl	%eax, %eax	# D.7788
	je	.L354	#,
	.loc 1 1388 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.7788
	jmp	.L355	#
.L354:
	.loc 1 1389 0 is_stmt 1
	movq	-24(%rbp), %rax	# g, tmp172
	movq	72(%rax), %rax	# g_7(D)->ptmpfile, D.7789
	movq	%rax, %rdi	# D.7789,
	call	FileExists	#
	testl	%eax, %eax	# D.7788
	je	.L356	#,
	.loc 1 1389 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, D.7788
	jmp	.L355	#
.L356:
	.loc 1 1390 0 is_stmt 1
	movq	-24(%rbp), %rax	# g, tmp173
	movq	104(%rax), %rax	# g_7(D)->stmpfile, D.7789
	movq	%rax, %rdi	# D.7789,
	call	FileExists	#
	testl	%eax, %eax	# D.7788
	je	.L357	#,
	.loc 1 1390 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, D.7788
	jmp	.L355	#
.L357:
	.loc 1 1391 0 is_stmt 1
	movq	-24(%rbp), %rax	# g, tmp174
	movq	72(%rax), %rax	# g_7(D)->ptmpfile, D.7789
	movl	$.LC30, %esi	#,
	movq	%rax, %rdi	# D.7789,
	call	fopen	#
	movq	-24(%rbp), %rdx	# g, tmp175
	movq	%rax, 80(%rdx)	# D.7790, g_7(D)->ptmp
	movq	-24(%rbp), %rax	# g, tmp176
	movq	80(%rax), %rax	# g_7(D)->ptmp, D.7790
	testq	%rax, %rax	# D.7790
	jne	.L358	#,
	.loc 1 1391 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, D.7788
	jmp	.L355	#
.L358:
	.loc 1 1392 0 is_stmt 1
	movq	-24(%rbp), %rax	# g, tmp177
	movq	104(%rax), %rax	# g_7(D)->stmpfile, D.7789
	movl	$.LC30, %esi	#,
	movq	%rax, %rdi	# D.7789,
	call	fopen	#
	movq	-24(%rbp), %rdx	# g, tmp178
	movq	%rax, 112(%rdx)	# D.7790, g_7(D)->stmp
	movq	-24(%rbp), %rax	# g, tmp179
	movq	112(%rax), %rax	# g_7(D)->stmp, D.7790
	testq	%rax, %rax	# D.7790
	jne	.L359	#,
	.loc 1 1392 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, D.7788
	jmp	.L355	#
.L359:
	.loc 1 1397 0 is_stmt 1
	movl	$0, -4(%rbp)	#, i
	jmp	.L360	#
.L363:
	.loc 1 1398 0
	movq	-24(%rbp), %rax	# g, tmp180
	movl	(%rax), %eax	# g_7(D)->smode, D.7788
	testl	%eax, %eax	# D.7788
	jne	.L361	#,
	.loc 1 1403 0
	movq	-24(%rbp), %rax	# g, tmp181
	movq	56(%rax), %rdx	# g_7(D)->pkeys, D.7792
	movl	-4(%rbp), %eax	# i, tmp182
	cltq
	salq	$3, %rax	#, tmp184
	leaq	0(,%rax,8), %rcx	#, tmp185
	subq	%rax, %rcx	# tmp183, D.7793
	movq	%rcx, %rax	# D.7793, D.7793
	addq	%rdx, %rax	# D.7792, D.7792
	movl	48(%rax), %eax	# _31->len, D.7791
	.loc 1 1399 0
	movl	%eax, %esi	# D.7791, D.7793
	.loc 1 1402 0
	movq	-24(%rbp), %rax	# g, tmp186
	movq	56(%rax), %rdx	# g_7(D)->pkeys, D.7792
	movl	-4(%rbp), %eax	# i, tmp187
	cltq
	salq	$3, %rax	#, tmp189
	leaq	0(,%rax,8), %rcx	#, tmp190
	subq	%rax, %rcx	# tmp188, D.7793
	movq	%rcx, %rax	# D.7793, D.7793
	addq	%rdx, %rax	# D.7792, D.7792
	movl	40(%rax), %eax	# _37->d_off.off.i32, D.7791
	.loc 1 1399 0
	movl	%eax, %r8d	# D.7791, D.7793
	.loc 1 1401 0
	movq	-24(%rbp), %rax	# g, tmp191
	movq	56(%rax), %rdx	# g_7(D)->pkeys, D.7792
	movl	-4(%rbp), %eax	# i, tmp192
	cltq
	salq	$3, %rax	#, tmp194
	leaq	0(,%rax,8), %rcx	#, tmp195
	subq	%rax, %rcx	# tmp193, D.7793
	movq	%rcx, %rax	# D.7793, D.7793
	addq	%rdx, %rax	# D.7792, D.7792
	movl	24(%rax), %eax	# _43->r_off.off.i32, D.7791
	.loc 1 1399 0
	movl	%eax, %edi	# D.7791, D.7793
	.loc 1 1400 0
	movq	-24(%rbp), %rax	# g, tmp196
	movq	56(%rax), %rdx	# g_7(D)->pkeys, D.7792
	movl	-4(%rbp), %eax	# i, tmp197
	cltq
	salq	$3, %rax	#, tmp199
	leaq	0(,%rax,8), %rcx	#, tmp200
	subq	%rax, %rcx	# tmp198, D.7793
	movq	%rcx, %rax	# D.7793, D.7793
	addq	%rdx, %rax	# D.7792, D.7792
	movzwl	8(%rax), %eax	# _49->fnum, D.7794
	.loc 1 1399 0
	movzwl	%ax, %ecx	# D.7794, D.7791
	.loc 1 1400 0
	movq	-24(%rbp), %rax	# g, tmp201
	movq	56(%rax), %rdx	# g_7(D)->pkeys, D.7792
	movl	-4(%rbp), %eax	# i, tmp202
	cltq
	salq	$3, %rax	#, tmp204
	leaq	0(,%rax,8), %r9	#, tmp205
	subq	%rax, %r9	# tmp203, D.7793
	movq	%r9, %rax	# D.7793, D.7793
	addq	%rdx, %rax	# D.7792, D.7792
	.loc 1 1399 0
	movq	(%rax), %rdx	# _55->key, D.7789
	movq	-24(%rbp), %rax	# g, tmp206
	movq	80(%rax), %rax	# g_7(D)->ptmp, D.7790
	movq	%rsi, (%rsp)	# D.7793,
	movq	%r8, %r9	# D.7793,
	movq	%rdi, %r8	# D.7793,
	movl	$.LC31, %esi	#,
	movq	%rax, %rdi	# D.7790,
	movl	$0, %eax	#,
	call	fprintf	#
	jmp	.L362	#
.L361:
	.loc 1 1409 0
	movq	-24(%rbp), %rax	# g, tmp207
	movq	56(%rax), %rdx	# g_7(D)->pkeys, D.7792
	movl	-4(%rbp), %eax	# i, tmp208
	cltq
	salq	$3, %rax	#, tmp210
	leaq	0(,%rax,8), %rcx	#, tmp211
	subq	%rax, %rcx	# tmp209, D.7793
	movq	%rcx, %rax	# D.7793, D.7793
	addq	%rdx, %rax	# D.7792, D.7792
	movl	48(%rax), %eax	# _61->len, D.7791
	.loc 1 1405 0
	movl	%eax, %esi	# D.7791, D.7793
	.loc 1 1408 0
	movq	-24(%rbp), %rax	# g, tmp212
	movq	56(%rax), %rdx	# g_7(D)->pkeys, D.7792
	movl	-4(%rbp), %eax	# i, tmp213
	cltq
	salq	$3, %rax	#, tmp215
	leaq	0(,%rax,8), %rcx	#, tmp216
	subq	%rax, %rcx	# tmp214, D.7793
	movq	%rcx, %rax	# D.7793, D.7793
	addq	%rdx, %rax	# D.7792, D.7792
	.loc 1 1405 0
	movq	40(%rax), %r8	# _67->d_off.off.i64, D.7795
	.loc 1 1407 0
	movq	-24(%rbp), %rax	# g, tmp217
	movq	56(%rax), %rdx	# g_7(D)->pkeys, D.7792
	movl	-4(%rbp), %eax	# i, tmp218
	cltq
	salq	$3, %rax	#, tmp220
	leaq	0(,%rax,8), %rcx	#, tmp221
	subq	%rax, %rcx	# tmp219, D.7793
	movq	%rcx, %rax	# D.7793, D.7793
	addq	%rdx, %rax	# D.7792, D.7792
	.loc 1 1405 0
	movq	24(%rax), %rdi	# _72->r_off.off.i64, D.7795
	.loc 1 1406 0
	movq	-24(%rbp), %rax	# g, tmp222
	movq	56(%rax), %rdx	# g_7(D)->pkeys, D.7792
	movl	-4(%rbp), %eax	# i, tmp223
	cltq
	salq	$3, %rax	#, tmp225
	leaq	0(,%rax,8), %rcx	#, tmp226
	subq	%rax, %rcx	# tmp224, D.7793
	movq	%rcx, %rax	# D.7793, D.7793
	addq	%rdx, %rax	# D.7792, D.7792
	movzwl	8(%rax), %eax	# _77->fnum, D.7794
	.loc 1 1405 0
	movzwl	%ax, %ecx	# D.7794, D.7791
	.loc 1 1406 0
	movq	-24(%rbp), %rax	# g, tmp227
	movq	56(%rax), %rdx	# g_7(D)->pkeys, D.7792
	movl	-4(%rbp), %eax	# i, tmp228
	cltq
	salq	$3, %rax	#, tmp230
	leaq	0(,%rax,8), %r9	#, tmp231
	subq	%rax, %r9	# tmp229, D.7793
	movq	%r9, %rax	# D.7793, D.7793
	addq	%rdx, %rax	# D.7792, D.7792
	.loc 1 1405 0
	movq	(%rax), %rdx	# _83->key, D.7789
	movq	-24(%rbp), %rax	# g, tmp232
	movq	80(%rax), %rax	# g_7(D)->ptmp, D.7790
	movq	%rsi, (%rsp)	# D.7793,
	movq	%r8, %r9	# D.7795,
	movq	%rdi, %r8	# D.7795,
	movl	$.LC32, %esi	#,
	movq	%rax, %rdi	# D.7790,
	movl	$0, %eax	#,
	call	fprintf	#
.L362:
	.loc 1 1397 0
	addl	$1, -4(%rbp)	#, i
.L360:
	.loc 1 1397 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %edx	# i, i.42
	movq	-24(%rbp), %rax	# g, tmp233
	movl	68(%rax), %eax	# g_7(D)->nprimary, D.7791
	cmpl	%eax, %edx	# D.7791, i.42
	jb	.L363	#,
	.loc 1 1412 0 is_stmt 1
	movl	$0, -4(%rbp)	#, i
	jmp	.L364	#
.L365:
	.loc 1 1413 0 discriminator 2
	movq	-24(%rbp), %rax	# g, tmp234
	movq	88(%rax), %rax	# g_7(D)->skeys, D.7796
	movl	-4(%rbp), %edx	# i, tmp235
	movslq	%edx, %rdx	# tmp235, D.7793
	salq	$4, %rdx	#, D.7793
	addq	%rdx, %rax	# D.7793, D.7796
	movq	8(%rax), %rcx	# _93->pkey, D.7789
	movq	-24(%rbp), %rax	# g, tmp236
	movq	88(%rax), %rax	# g_7(D)->skeys, D.7796
	movl	-4(%rbp), %edx	# i, tmp237
	movslq	%edx, %rdx	# tmp237, D.7793
	salq	$4, %rdx	#, D.7793
	addq	%rdx, %rax	# D.7793, D.7796
	movq	(%rax), %rdx	# _98->key, D.7789
	movq	-24(%rbp), %rax	# g, tmp238
	movq	112(%rax), %rax	# g_7(D)->stmp, D.7790
	movl	$.LC6, %esi	#,
	movq	%rax, %rdi	# D.7790,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1412 0 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L364:
	.loc 1 1412 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %edx	# i, i.43
	movq	-24(%rbp), %rax	# g, tmp239
	movl	100(%rax), %eax	# g_7(D)->nsecondary, D.7791
	cmpl	%eax, %edx	# D.7791, i.43
	jb	.L365	#,
	.loc 1 1417 0 is_stmt 1
	movl	$0, -4(%rbp)	#, i
	jmp	.L366	#
.L367:
	.loc 1 1417 0 is_stmt 0 discriminator 2
	movq	-24(%rbp), %rax	# g, tmp240
	movq	56(%rax), %rdx	# g_7(D)->pkeys, D.7792
	movl	-4(%rbp), %eax	# i, tmp241
	cltq
	salq	$3, %rax	#, tmp243
	leaq	0(,%rax,8), %rcx	#, tmp244
	subq	%rax, %rcx	# tmp242, D.7793
	movq	%rcx, %rax	# D.7793, D.7793
	addq	%rdx, %rax	# D.7792, D.7792
	movq	(%rax), %rax	# _108->key, D.7789
	movq	%rax, %rdi	# D.7789,
	call	free	#
	addl	$1, -4(%rbp)	#, i
.L366:
	.loc 1 1417 0 discriminator 1
	movl	-4(%rbp), %edx	# i, i.44
	movq	-24(%rbp), %rax	# g, tmp245
	movl	68(%rax), %eax	# g_7(D)->nprimary, D.7791
	cmpl	%eax, %edx	# D.7791, i.44
	jb	.L367	#,
	.loc 1 1418 0 is_stmt 1
	movl	$0, -4(%rbp)	#, i
	jmp	.L368	#
.L369:
	.loc 1 1418 0 is_stmt 0 discriminator 2
	movq	-24(%rbp), %rax	# g, tmp246
	movq	88(%rax), %rax	# g_7(D)->skeys, D.7796
	movl	-4(%rbp), %edx	# i, tmp247
	movslq	%edx, %rdx	# tmp247, D.7793
	salq	$4, %rdx	#, D.7793
	addq	%rdx, %rax	# D.7793, D.7796
	movq	(%rax), %rax	# _117->key, D.7789
	movq	%rax, %rdi	# D.7789,
	call	free	#
	addl	$1, -4(%rbp)	#, i
.L368:
	.loc 1 1418 0 discriminator 1
	movl	-4(%rbp), %edx	# i, i.45
	movq	-24(%rbp), %rax	# g, tmp248
	movl	100(%rax), %eax	# g_7(D)->nsecondary, D.7791
	cmpl	%eax, %edx	# D.7791, i.45
	jb	.L369	#,
	.loc 1 1419 0 is_stmt 1
	movl	$0, -4(%rbp)	#, i
	jmp	.L370	#
.L371:
	.loc 1 1419 0 is_stmt 0 discriminator 2
	movq	-24(%rbp), %rax	# g, tmp249
	movq	88(%rax), %rax	# g_7(D)->skeys, D.7796
	movl	-4(%rbp), %edx	# i, tmp250
	movslq	%edx, %rdx	# tmp250, D.7793
	salq	$4, %rdx	#, D.7793
	addq	%rdx, %rax	# D.7793, D.7796
	movq	8(%rax), %rax	# _126->pkey, D.7789
	movq	%rax, %rdi	# D.7789,
	call	free	#
	addl	$1, -4(%rbp)	#, i
.L370:
	.loc 1 1419 0 discriminator 1
	movl	-4(%rbp), %edx	# i, i.46
	movq	-24(%rbp), %rax	# g, tmp251
	movl	100(%rax), %eax	# g_7(D)->nsecondary, D.7791
	cmpl	%eax, %edx	# D.7791, i.46
	jb	.L371	#,
	.loc 1 1420 0 is_stmt 1
	movq	-24(%rbp), %rax	# g, tmp252
	movq	56(%rax), %rax	# g_7(D)->pkeys, D.7792
	testq	%rax, %rax	# D.7792
	je	.L372	#,
	.loc 1 1420 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# g, tmp253
	movq	56(%rax), %rax	# g_7(D)->pkeys, D.7792
	movq	%rax, %rdi	# D.7792,
	call	free	#
.L372:
	.loc 1 1421 0 is_stmt 1
	movq	-24(%rbp), %rax	# g, tmp254
	movq	88(%rax), %rax	# g_7(D)->skeys, D.7796
	testq	%rax, %rax	# D.7796
	je	.L373	#,
	.loc 1 1421 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# g, tmp255
	movq	88(%rax), %rax	# g_7(D)->skeys, D.7796
	movq	%rax, %rdi	# D.7796,
	call	free	#
.L373:
	.loc 1 1422 0 is_stmt 1
	movq	-24(%rbp), %rax	# g, tmp256
	movq	$0, 56(%rax)	#, g_7(D)->pkeys
	.loc 1 1423 0
	movq	-24(%rbp), %rax	# g, tmp257
	movq	$0, 88(%rax)	#, g_7(D)->skeys
	.loc 1 1427 0
	movq	-24(%rbp), %rax	# g, tmp258
	movl	$1, 8(%rax)	#, g_7(D)->external
	.loc 1 1428 0
	movl	$0, %eax	#, D.7788
.L355:
	.loc 1 1429 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	activate_external_sort, .-activate_external_sort
	.section	.rodata
	.align 8
.LC33:
	.string	"failed to turn external sorting on."
	.text
	.globl	SSIForceExternalSort
	.type	SSIForceExternalSort, @function
SSIForceExternalSort:
.LFB37:
	.loc 1 1437 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# g, g
	.loc 1 1438 0
	movq	-8(%rbp), %rax	# g, tmp60
	movq	%rax, %rdi	# tmp60,
	call	activate_external_sort	#
	testl	%eax, %eax	# D.7800
	je	.L374	#,
	.loc 1 1439 0
	movl	$.LC33, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L374:
	.loc 1 1440 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	SSIForceExternalSort, .-SSIForceExternalSort
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "squid.h"
	.file 7 "ssi.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x14a4
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF161
	.byte	0x1
	.long	.LASF162
	.long	.LASF163
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
	.uleb128 0x2
	.long	.LASF12
	.byte	0x4
	.byte	0x30
	.long	0xa7
	.uleb128 0x7
	.long	.LASF42
	.byte	0xd8
	.byte	0x5
	.byte	0xf6
	.long	0x228
	.uleb128 0x8
	.long	.LASF13
	.byte	0x5
	.byte	0xf7
	.long	0x62
	.byte	0
	.uleb128 0x8
	.long	.LASF14
	.byte	0x5
	.byte	0xfc
	.long	0x8f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF15
	.byte	0x5
	.byte	0xfd
	.long	0x8f
	.byte	0x10
	.uleb128 0x8
	.long	.LASF16
	.byte	0x5
	.byte	0xfe
	.long	0x8f
	.byte	0x18
	.uleb128 0x8
	.long	.LASF17
	.byte	0x5
	.byte	0xff
	.long	0x8f
	.byte	0x20
	.uleb128 0x9
	.long	.LASF18
	.byte	0x5
	.value	0x100
	.long	0x8f
	.byte	0x28
	.uleb128 0x9
	.long	.LASF19
	.byte	0x5
	.value	0x101
	.long	0x8f
	.byte	0x30
	.uleb128 0x9
	.long	.LASF20
	.byte	0x5
	.value	0x102
	.long	0x8f
	.byte	0x38
	.uleb128 0x9
	.long	.LASF21
	.byte	0x5
	.value	0x103
	.long	0x8f
	.byte	0x40
	.uleb128 0x9
	.long	.LASF22
	.byte	0x5
	.value	0x105
	.long	0x8f
	.byte	0x48
	.uleb128 0x9
	.long	.LASF23
	.byte	0x5
	.value	0x106
	.long	0x8f
	.byte	0x50
	.uleb128 0x9
	.long	.LASF24
	.byte	0x5
	.value	0x107
	.long	0x8f
	.byte	0x58
	.uleb128 0x9
	.long	.LASF25
	.byte	0x5
	.value	0x109
	.long	0x260
	.byte	0x60
	.uleb128 0x9
	.long	.LASF26
	.byte	0x5
	.value	0x10b
	.long	0x266
	.byte	0x68
	.uleb128 0x9
	.long	.LASF27
	.byte	0x5
	.value	0x10d
	.long	0x62
	.byte	0x70
	.uleb128 0x9
	.long	.LASF28
	.byte	0x5
	.value	0x111
	.long	0x62
	.byte	0x74
	.uleb128 0x9
	.long	.LASF29
	.byte	0x5
	.value	0x113
	.long	0x70
	.byte	0x78
	.uleb128 0x9
	.long	.LASF30
	.byte	0x5
	.value	0x117
	.long	0x46
	.byte	0x80
	.uleb128 0x9
	.long	.LASF31
	.byte	0x5
	.value	0x118
	.long	0x54
	.byte	0x82
	.uleb128 0x9
	.long	.LASF32
	.byte	0x5
	.value	0x119
	.long	0x26c
	.byte	0x83
	.uleb128 0x9
	.long	.LASF33
	.byte	0x5
	.value	0x11d
	.long	0x27c
	.byte	0x88
	.uleb128 0x9
	.long	.LASF34
	.byte	0x5
	.value	0x126
	.long	0x7b
	.byte	0x90
	.uleb128 0x9
	.long	.LASF35
	.byte	0x5
	.value	0x12f
	.long	0x8d
	.byte	0x98
	.uleb128 0x9
	.long	.LASF36
	.byte	0x5
	.value	0x130
	.long	0x8d
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF37
	.byte	0x5
	.value	0x131
	.long	0x8d
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF38
	.byte	0x5
	.value	0x132
	.long	0x8d
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF39
	.byte	0x5
	.value	0x133
	.long	0x2d
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF40
	.byte	0x5
	.value	0x135
	.long	0x62
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF41
	.byte	0x5
	.value	0x137
	.long	0x282
	.byte	0xc4
	.byte	0
	.uleb128 0xa
	.long	.LASF164
	.byte	0x5
	.byte	0x9b
	.uleb128 0x7
	.long	.LASF43
	.byte	0x18
	.byte	0x5
	.byte	0xa1
	.long	0x260
	.uleb128 0x8
	.long	.LASF44
	.byte	0x5
	.byte	0xa2
	.long	0x260
	.byte	0
	.uleb128 0x8
	.long	.LASF45
	.byte	0x5
	.byte	0xa3
	.long	0x266
	.byte	0x8
	.uleb128 0x8
	.long	.LASF46
	.byte	0x5
	.byte	0xa7
	.long	0x62
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x22f
	.uleb128 0x6
	.byte	0x8
	.long	0xa7
	.uleb128 0xb
	.long	0x95
	.long	0x27c
	.uleb128 0xc
	.long	0x86
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x228
	.uleb128 0xb
	.long	0x95
	.long	0x292
	.uleb128 0xc
	.long	0x86
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x62
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF47
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF48
	.uleb128 0x6
	.byte	0x8
	.long	0x2ac
	.uleb128 0xd
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF49
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF50
	.uleb128 0x2
	.long	.LASF51
	.byte	0x6
	.byte	0x28
	.long	0x46
	.uleb128 0x2
	.long	.LASF52
	.byte	0x6
	.byte	0x29
	.long	0x4d
	.uleb128 0x2
	.long	.LASF53
	.byte	0x6
	.byte	0x2a
	.long	0x29f
	.uleb128 0xe
	.byte	0x8
	.byte	0x7
	.byte	0x25
	.long	0x2fb
	.uleb128 0xf
	.string	"i32"
	.byte	0x7
	.byte	0x26
	.long	0x2c6
	.uleb128 0xf
	.string	"i64"
	.byte	0x7
	.byte	0x27
	.long	0x2d1
	.byte	0
	.uleb128 0x7
	.long	.LASF54
	.byte	0x10
	.byte	0x7
	.byte	0x23
	.long	0x320
	.uleb128 0x8
	.long	.LASF55
	.byte	0x7
	.byte	0x24
	.long	0x95
	.byte	0
	.uleb128 0x10
	.string	"off"
	.byte	0x7
	.byte	0x28
	.long	0x2dc
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.long	.LASF56
	.byte	0x7
	.byte	0x2a
	.long	0x2fb
	.uleb128 0x7
	.long	.LASF57
	.byte	0x90
	.byte	0x7
	.byte	0x31
	.long	0x433
	.uleb128 0x10
	.string	"fp"
	.byte	0x7
	.byte	0x32
	.long	0x433
	.byte	0
	.uleb128 0x8
	.long	.LASF58
	.byte	0x7
	.byte	0x33
	.long	0x2c6
	.byte	0x8
	.uleb128 0x8
	.long	.LASF59
	.byte	0x7
	.byte	0x34
	.long	0x2bb
	.byte	0xc
	.uleb128 0x8
	.long	.LASF60
	.byte	0x7
	.byte	0x35
	.long	0x2c6
	.byte	0x10
	.uleb128 0x8
	.long	.LASF61
	.byte	0x7
	.byte	0x36
	.long	0x2c6
	.byte	0x14
	.uleb128 0x8
	.long	.LASF62
	.byte	0x7
	.byte	0x37
	.long	0x2c6
	.byte	0x18
	.uleb128 0x8
	.long	.LASF63
	.byte	0x7
	.byte	0x38
	.long	0x2c6
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF64
	.byte	0x7
	.byte	0x39
	.long	0x2c6
	.byte	0x20
	.uleb128 0x8
	.long	.LASF65
	.byte	0x7
	.byte	0x3a
	.long	0x2c6
	.byte	0x24
	.uleb128 0x8
	.long	.LASF66
	.byte	0x7
	.byte	0x3b
	.long	0x2c6
	.byte	0x28
	.uleb128 0x8
	.long	.LASF67
	.byte	0x7
	.byte	0x3c
	.long	0x2c6
	.byte	0x2c
	.uleb128 0x8
	.long	.LASF68
	.byte	0x7
	.byte	0x3d
	.long	0x320
	.byte	0x30
	.uleb128 0x8
	.long	.LASF69
	.byte	0x7
	.byte	0x3e
	.long	0x320
	.byte	0x40
	.uleb128 0x8
	.long	.LASF70
	.byte	0x7
	.byte	0x3f
	.long	0x320
	.byte	0x50
	.uleb128 0x8
	.long	.LASF71
	.byte	0x7
	.byte	0x41
	.long	0x95
	.byte	0x60
	.uleb128 0x8
	.long	.LASF72
	.byte	0x7
	.byte	0x42
	.long	0x95
	.byte	0x61
	.uleb128 0x8
	.long	.LASF73
	.byte	0x7
	.byte	0x46
	.long	0x439
	.byte	0x68
	.uleb128 0x8
	.long	.LASF74
	.byte	0x7
	.byte	0x47
	.long	0x43f
	.byte	0x70
	.uleb128 0x8
	.long	.LASF75
	.byte	0x7
	.byte	0x48
	.long	0x43f
	.byte	0x78
	.uleb128 0x10
	.string	"bpl"
	.byte	0x7
	.byte	0x49
	.long	0x43f
	.byte	0x80
	.uleb128 0x10
	.string	"rpl"
	.byte	0x7
	.byte	0x4a
	.long	0x43f
	.byte	0x88
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x9c
	.uleb128 0x6
	.byte	0x8
	.long	0x8f
	.uleb128 0x6
	.byte	0x8
	.long	0x2c6
	.uleb128 0x2
	.long	.LASF76
	.byte	0x7
	.byte	0x4c
	.long	0x32b
	.uleb128 0x7
	.long	.LASF77
	.byte	0x38
	.byte	0x7
	.byte	0x5b
	.long	0x499
	.uleb128 0x10
	.string	"key"
	.byte	0x7
	.byte	0x5c
	.long	0x8f
	.byte	0
	.uleb128 0x8
	.long	.LASF78
	.byte	0x7
	.byte	0x5d
	.long	0x2bb
	.byte	0x8
	.uleb128 0x8
	.long	.LASF79
	.byte	0x7
	.byte	0x5e
	.long	0x320
	.byte	0x10
	.uleb128 0x8
	.long	.LASF80
	.byte	0x7
	.byte	0x5f
	.long	0x320
	.byte	0x20
	.uleb128 0x10
	.string	"len"
	.byte	0x7
	.byte	0x60
	.long	0x2c6
	.byte	0x30
	.byte	0
	.uleb128 0x7
	.long	.LASF81
	.byte	0x10
	.byte	0x7
	.byte	0x62
	.long	0x4be
	.uleb128 0x10
	.string	"key"
	.byte	0x7
	.byte	0x63
	.long	0x8f
	.byte	0
	.uleb128 0x8
	.long	.LASF82
	.byte	0x7
	.byte	0x64
	.long	0x8f
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.long	.LASF83
	.byte	0x78
	.byte	0x7
	.byte	0x66
	.long	0x5bb
	.uleb128 0x8
	.long	.LASF72
	.byte	0x7
	.byte	0x67
	.long	0x62
	.byte	0
	.uleb128 0x8
	.long	.LASF71
	.byte	0x7
	.byte	0x68
	.long	0x62
	.byte	0x4
	.uleb128 0x8
	.long	.LASF84
	.byte	0x7
	.byte	0x69
	.long	0x62
	.byte	0x8
	.uleb128 0x8
	.long	.LASF85
	.byte	0x7
	.byte	0x6a
	.long	0x62
	.byte	0xc
	.uleb128 0x8
	.long	.LASF86
	.byte	0x7
	.byte	0x6c
	.long	0x439
	.byte	0x10
	.uleb128 0x8
	.long	.LASF74
	.byte	0x7
	.byte	0x6d
	.long	0x43f
	.byte	0x18
	.uleb128 0x10
	.string	"bpl"
	.byte	0x7
	.byte	0x6e
	.long	0x43f
	.byte	0x20
	.uleb128 0x10
	.string	"rpl"
	.byte	0x7
	.byte	0x6f
	.long	0x43f
	.byte	0x28
	.uleb128 0x8
	.long	.LASF62
	.byte	0x7
	.byte	0x70
	.long	0x2c6
	.byte	0x30
	.uleb128 0x8
	.long	.LASF59
	.byte	0x7
	.byte	0x71
	.long	0x2bb
	.byte	0x34
	.uleb128 0x8
	.long	.LASF87
	.byte	0x7
	.byte	0x73
	.long	0x5bb
	.byte	0x38
	.uleb128 0x8
	.long	.LASF63
	.byte	0x7
	.byte	0x74
	.long	0x2c6
	.byte	0x40
	.uleb128 0x8
	.long	.LASF60
	.byte	0x7
	.byte	0x75
	.long	0x2c6
	.byte	0x44
	.uleb128 0x8
	.long	.LASF88
	.byte	0x7
	.byte	0x76
	.long	0x8f
	.byte	0x48
	.uleb128 0x8
	.long	.LASF89
	.byte	0x7
	.byte	0x77
	.long	0x433
	.byte	0x50
	.uleb128 0x8
	.long	.LASF90
	.byte	0x7
	.byte	0x79
	.long	0x5c1
	.byte	0x58
	.uleb128 0x8
	.long	.LASF64
	.byte	0x7
	.byte	0x7a
	.long	0x2c6
	.byte	0x60
	.uleb128 0x8
	.long	.LASF61
	.byte	0x7
	.byte	0x7b
	.long	0x2c6
	.byte	0x64
	.uleb128 0x8
	.long	.LASF91
	.byte	0x7
	.byte	0x7c
	.long	0x8f
	.byte	0x68
	.uleb128 0x8
	.long	.LASF92
	.byte	0x7
	.byte	0x7d
	.long	0x433
	.byte	0x70
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x450
	.uleb128 0x6
	.byte	0x8
	.long	0x499
	.uleb128 0x2
	.long	.LASF93
	.byte	0x7
	.byte	0x7f
	.long	0x4be
	.uleb128 0x6
	.byte	0x8
	.long	0x445
	.uleb128 0x11
	.long	.LASF97
	.byte	0x1
	.byte	0x3c
	.long	0x62
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x632
	.uleb128 0x12
	.long	.LASF73
	.byte	0x1
	.byte	0x3c
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x12
	.long	.LASF94
	.byte	0x1
	.byte	0x3c
	.long	0x632
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x13
	.string	"sfp"
	.byte	0x1
	.byte	0x3e
	.long	0x5d2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x14
	.long	.LASF95
	.byte	0x1
	.byte	0x3f
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5d2
	.uleb128 0x15
	.long	.LASF121
	.byte	0x1
	.byte	0x4f
	.long	0x62
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x69f
	.uleb128 0x16
	.string	"sfp"
	.byte	0x1
	.byte	0x4f
	.long	0x5d2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x14
	.long	.LASF96
	.byte	0x1
	.byte	0x51
	.long	0x2c6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.string	"i"
	.byte	0x1
	.byte	0x52
	.long	0x2bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -42
	.uleb128 0x14
	.long	.LASF95
	.byte	0x1
	.byte	0x53
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x17
	.long	.LASF115
	.byte	0x1
	.byte	0x9b
	.quad	.L7
	.byte	0
	.uleb128 0x11
	.long	.LASF98
	.byte	0x1
	.byte	0xb8
	.long	0x62
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x735
	.uleb128 0x16
	.string	"sfp"
	.byte	0x1
	.byte	0xb8
	.long	0x5d2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x16
	.string	"key"
	.byte	0x1
	.byte	0xb8
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x12
	.long	.LASF99
	.byte	0x1
	.byte	0xb8
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x12
	.long	.LASF100
	.byte	0x1
	.byte	0xb9
	.long	0x735
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x14
	.long	.LASF95
	.byte	0x1
	.byte	0xbb
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x14
	.long	.LASF78
	.byte	0x1
	.byte	0xbc
	.long	0x2bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -30
	.uleb128 0x18
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x14
	.long	.LASF82
	.byte	0x1
	.byte	0xce
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x320
	.uleb128 0x11
	.long	.LASF101
	.byte	0x1
	.byte	0xf2
	.long	0x62
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x7af
	.uleb128 0x16
	.string	"sfp"
	.byte	0x1
	.byte	0xf2
	.long	0x5d2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x16
	.string	"n"
	.byte	0x1
	.byte	0xf2
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x12
	.long	.LASF99
	.byte	0x1
	.byte	0xf2
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x12
	.long	.LASF100
	.byte	0x1
	.byte	0xf2
	.long	0x735
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x14
	.long	.LASF78
	.byte	0x1
	.byte	0xf4
	.long	0x2bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x14
	.long	.LASF82
	.byte	0x1
	.byte	0xf5
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x19
	.long	.LASF102
	.byte	0x1
	.value	0x125
	.long	0x62
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x891
	.uleb128 0x1a
	.string	"sfp"
	.byte	0x1
	.value	0x125
	.long	0x5d2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1a
	.string	"key"
	.byte	0x1
	.value	0x125
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1b
	.long	.LASF103
	.byte	0x1
	.value	0x125
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1b
	.long	.LASF99
	.byte	0x1
	.value	0x126
	.long	0x292
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1b
	.long	.LASF104
	.byte	0x1
	.value	0x126
	.long	0x735
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1b
	.long	.LASF105
	.byte	0x1
	.value	0x127
	.long	0x735
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1b
	.long	.LASF106
	.byte	0x1
	.value	0x127
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.long	.LASF95
	.byte	0x1
	.value	0x129
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1d
	.string	"len"
	.byte	0x1
	.value	0x12a
	.long	0x2c6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.string	"r"
	.byte	0x1
	.value	0x12b
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1d
	.string	"b"
	.byte	0x1
	.value	0x12b
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.value	0x12b
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.string	"l"
	.byte	0x1
	.value	0x12b
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x19
	.long	.LASF107
	.byte	0x1
	.value	0x17b
	.long	0x62
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x8d1
	.uleb128 0x1a
	.string	"fp"
	.byte	0x1
	.value	0x17b
	.long	0x433
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.long	.LASF108
	.byte	0x1
	.value	0x17b
	.long	0x735
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1e
	.long	.LASF109
	.byte	0x1
	.value	0x1a2
	.long	0x62
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x92f
	.uleb128 0x1a
	.string	"sfp"
	.byte	0x1
	.value	0x1a2
	.long	0x5d2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1a
	.string	"fh"
	.byte	0x1
	.value	0x1a2
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1b
	.long	.LASF110
	.byte	0x1
	.value	0x1a2
	.long	0x439
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.long	.LASF111
	.byte	0x1
	.value	0x1a2
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x1f
	.long	.LASF131
	.byte	0x1
	.value	0x1b4
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x95d
	.uleb128 0x1a
	.string	"sfp"
	.byte	0x1
	.value	0x1b4
	.long	0x5d2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x20
	.long	.LASF165
	.byte	0x1
	.value	0x1c0
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x998
	.uleb128 0x1a
	.string	"sfp"
	.byte	0x1
	.value	0x1c0
	.long	0x5d2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.value	0x1c2
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1e
	.long	.LASF112
	.byte	0x1
	.value	0x1df
	.long	0x62
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x9ca
	.uleb128 0x1b
	.long	.LASF113
	.byte	0x1
	.value	0x1df
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x19
	.long	.LASF114
	.byte	0x1
	.value	0x203
	.long	0xa19
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0xa19
	.uleb128 0x1b
	.long	.LASF55
	.byte	0x1
	.value	0x203
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1d
	.string	"g"
	.byte	0x1
	.value	0x205
	.long	0xa19
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x21
	.long	.LASF115
	.byte	0x1
	.value	0x235
	.quad	.L104
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5c7
	.uleb128 0x19
	.long	.LASF116
	.byte	0x1
	.value	0x24b
	.long	0x62
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0xa6e
	.uleb128 0x1a
	.string	"fp"
	.byte	0x1
	.value	0x24b
	.long	0x433
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.long	.LASF55
	.byte	0x1
	.value	0x24b
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1b
	.long	.LASF100
	.byte	0x1
	.value	0x24b
	.long	0x735
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x19
	.long	.LASF117
	.byte	0x1
	.value	0x275
	.long	0x62
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0xada
	.uleb128 0x1a
	.string	"g"
	.byte	0x1
	.value	0x275
	.long	0xa19
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.long	.LASF73
	.byte	0x1
	.value	0x275
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1a
	.string	"fmt"
	.byte	0x1
	.value	0x275
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1b
	.long	.LASF99
	.byte	0x1
	.value	0x275
	.long	0x292
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1d
	.string	"n"
	.byte	0x1
	.value	0x277
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x1e
	.long	.LASF118
	.byte	0x1
	.value	0x2aa
	.long	0x62
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0xb36
	.uleb128 0x1a
	.string	"g"
	.byte	0x1
	.value	0x2aa
	.long	0xa19
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1a
	.string	"fh"
	.byte	0x1
	.value	0x2aa
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1a
	.string	"bpl"
	.byte	0x1
	.value	0x2aa
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1a
	.string	"rpl"
	.byte	0x1
	.value	0x2aa
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x19
	.long	.LASF119
	.byte	0x1
	.value	0x2d6
	.long	0x62
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0xbbf
	.uleb128 0x1a
	.string	"g"
	.byte	0x1
	.value	0x2d6
	.long	0xa19
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1a
	.string	"key"
	.byte	0x1
	.value	0x2d6
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1a
	.string	"fh"
	.byte	0x1
	.value	0x2d6
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1b
	.long	.LASF79
	.byte	0x1
	.value	0x2d7
	.long	0x735
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1b
	.long	.LASF80
	.byte	0x1
	.value	0x2d7
	.long	0x735
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1a
	.string	"L"
	.byte	0x1
	.value	0x2d7
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1d
	.string	"n"
	.byte	0x1
	.value	0x2d9
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x19
	.long	.LASF120
	.byte	0x1
	.value	0x323
	.long	0x62
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0xc1b
	.uleb128 0x1a
	.string	"g"
	.byte	0x1
	.value	0x323
	.long	0xa19
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1a
	.string	"key"
	.byte	0x1
	.value	0x323
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1b
	.long	.LASF82
	.byte	0x1
	.value	0x323
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1d
	.string	"n"
	.byte	0x1
	.value	0x325
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x22
	.long	.LASF122
	.byte	0x1
	.value	0x35c
	.long	0x62
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0xc78
	.uleb128 0x1a
	.string	"k1"
	.byte	0x1
	.value	0x35c
	.long	0x2a6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1a
	.string	"k2"
	.byte	0x1
	.value	0x35c
	.long	0x2a6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.long	.LASF123
	.byte	0x1
	.value	0x35e
	.long	0x5bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1c
	.long	.LASF124
	.byte	0x1
	.value	0x35f
	.long	0x5bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x22
	.long	.LASF125
	.byte	0x1
	.value	0x365
	.long	0x62
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0xcd5
	.uleb128 0x1a
	.string	"k1"
	.byte	0x1
	.value	0x365
	.long	0x2a6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1a
	.string	"k2"
	.byte	0x1
	.value	0x365
	.long	0x2a6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.long	.LASF123
	.byte	0x1
	.value	0x367
	.long	0x5c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1c
	.long	.LASF124
	.byte	0x1
	.value	0x368
	.long	0x5c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x19
	.long	.LASF126
	.byte	0x1
	.value	0x36e
	.long	0x62
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0xeb0
	.uleb128 0x1b
	.long	.LASF113
	.byte	0x1
	.value	0x36e
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1240
	.uleb128 0x1a
	.string	"g"
	.byte	0x1
	.value	0x36e
	.long	0xa19
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1248
	.uleb128 0x1d
	.string	"fp"
	.byte	0x1
	.value	0x370
	.long	0x433
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1184
	.uleb128 0x1c
	.long	.LASF95
	.byte	0x1
	.value	0x371
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1220
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.value	0x372
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1216
	.uleb128 0x1c
	.long	.LASF127
	.byte	0x1
	.value	0x373
	.long	0x2c6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1212
	.uleb128 0x1c
	.long	.LASF128
	.byte	0x1
	.value	0x373
	.long	0x2c6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1208
	.uleb128 0x1c
	.long	.LASF65
	.byte	0x1
	.value	0x374
	.long	0x2c6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1204
	.uleb128 0x1c
	.long	.LASF66
	.byte	0x1
	.value	0x374
	.long	0x2c6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1200
	.uleb128 0x1c
	.long	.LASF67
	.byte	0x1
	.value	0x374
	.long	0x2c6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1196
	.uleb128 0x1c
	.long	.LASF68
	.byte	0x1
	.value	0x375
	.long	0x2d1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1176
	.uleb128 0x1c
	.long	.LASF69
	.byte	0x1
	.value	0x375
	.long	0x2d1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1168
	.uleb128 0x1c
	.long	.LASF70
	.byte	0x1
	.value	0x375
	.long	0x2d1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1160
	.uleb128 0x1d
	.string	"s"
	.byte	0x1
	.value	0x376
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1152
	.uleb128 0x1d
	.string	"s2"
	.byte	0x1
	.value	0x376
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1144
	.uleb128 0x23
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.long	0xe05
	.uleb128 0x1d
	.string	"cmd"
	.byte	0x1
	.value	0x3a8
	.long	0xeb0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.byte	0
	.uleb128 0x23
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.long	0xe29
	.uleb128 0x24
	.long	.LASF166
	.byte	0x1
	.value	0x3b6
	.long	0x62
	.uleb128 0x25
	.byte	0
	.byte	0
	.uleb128 0x23
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.long	0xe6f
	.uleb128 0x1d
	.string	"buf"
	.byte	0x1
	.value	0x3e6
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1192
	.uleb128 0x1c
	.long	.LASF129
	.byte	0x1
	.value	0x3e7
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1224
	.uleb128 0x1c
	.long	.LASF82
	.byte	0x1
	.value	0x3e8
	.long	0x450
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1136
	.byte	0
	.uleb128 0x18
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x1c
	.long	.LASF130
	.byte	0x1
	.value	0x407
	.long	0x499
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1136
	.uleb128 0x1d
	.string	"buf"
	.byte	0x1
	.value	0x408
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1192
	.uleb128 0x1d
	.string	"n"
	.byte	0x1
	.value	0x409
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1224
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x95
	.long	0xec1
	.uleb128 0x26
	.long	0x86
	.value	0x3ff
	.byte	0
	.uleb128 0x1f
	.long	.LASF132
	.byte	0x1
	.value	0x431
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0xefa
	.uleb128 0x1a
	.string	"g"
	.byte	0x1
	.value	0x431
	.long	0xa19
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.value	0x433
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1e
	.long	.LASF133
	.byte	0x1
	.value	0x45a
	.long	0x8f
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0xf2a
	.uleb128 0x1a
	.string	"n"
	.byte	0x1
	.value	0x45a
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x22
	.long	.LASF134
	.byte	0x1
	.value	0x474
	.long	0x62
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0xf79
	.uleb128 0x1a
	.string	"fp"
	.byte	0x1
	.value	0x474
	.long	0x433
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.long	.LASF135
	.byte	0x1
	.value	0x474
	.long	0xf79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.long	.LASF136
	.byte	0x1
	.value	0x476
	.long	0x2bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2bb
	.uleb128 0x22
	.long	.LASF137
	.byte	0x1
	.value	0x47c
	.long	0x62
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0xfbd
	.uleb128 0x1a
	.string	"fp"
	.byte	0x1
	.value	0x47c
	.long	0x433
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1a
	.string	"n"
	.byte	0x1
	.value	0x47c
	.long	0x2bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x22
	.long	.LASF138
	.byte	0x1
	.value	0x483
	.long	0x62
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x100c
	.uleb128 0x1a
	.string	"fp"
	.byte	0x1
	.value	0x483
	.long	0x433
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.long	.LASF135
	.byte	0x1
	.value	0x483
	.long	0x43f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.long	.LASF136
	.byte	0x1
	.value	0x485
	.long	0x2c6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x22
	.long	.LASF139
	.byte	0x1
	.value	0x48b
	.long	0x62
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x104a
	.uleb128 0x1a
	.string	"fp"
	.byte	0x1
	.value	0x48b
	.long	0x433
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1a
	.string	"n"
	.byte	0x1
	.value	0x48b
	.long	0x2c6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x22
	.long	.LASF140
	.byte	0x1
	.value	0x492
	.long	0x62
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x1099
	.uleb128 0x1a
	.string	"fp"
	.byte	0x1
	.value	0x492
	.long	0x433
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.long	.LASF135
	.byte	0x1
	.value	0x492
	.long	0x1099
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.long	.LASF136
	.byte	0x1
	.value	0x494
	.long	0x2d1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2d1
	.uleb128 0x22
	.long	.LASF141
	.byte	0x1
	.value	0x49a
	.long	0x62
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x10dd
	.uleb128 0x1a
	.string	"fp"
	.byte	0x1
	.value	0x49a
	.long	0x433
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1a
	.string	"n"
	.byte	0x1
	.value	0x49a
	.long	0x2d1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x22
	.long	.LASF142
	.byte	0x1
	.value	0x4a1
	.long	0x62
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x112c
	.uleb128 0x1a
	.string	"fp"
	.byte	0x1
	.value	0x4a1
	.long	0x433
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.long	.LASF55
	.byte	0x1
	.value	0x4a1
	.long	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1b
	.long	.LASF100
	.byte	0x1
	.value	0x4a1
	.long	0x735
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x22
	.long	.LASF143
	.byte	0x1
	.value	0x4ae
	.long	0x62
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x116c
	.uleb128 0x1a
	.string	"fp"
	.byte	0x1
	.value	0x4ae
	.long	0x433
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.long	.LASF108
	.byte	0x1
	.value	0x4ae
	.long	0x735
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x22
	.long	.LASF144
	.byte	0x1
	.value	0x4b8
	.long	0x62
	.quad	.LFB31
	.quad	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0x11e6
	.uleb128 0x1a
	.string	"buf"
	.byte	0x1
	.value	0x4b8
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.long	.LASF55
	.byte	0x1
	.value	0x4b8
	.long	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1b
	.long	.LASF82
	.byte	0x1
	.value	0x4b8
	.long	0x5bb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1d
	.string	"s"
	.byte	0x1
	.value	0x4ba
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1d
	.string	"tok"
	.byte	0x1
	.value	0x4ba
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.string	"n"
	.byte	0x1
	.value	0x4bb
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x22
	.long	.LASF145
	.byte	0x1
	.value	0x4df
	.long	0x62
	.quad	.LFB32
	.quad	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0x1250
	.uleb128 0x1a
	.string	"buf"
	.byte	0x1
	.value	0x4df
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.long	.LASF130
	.byte	0x1
	.value	0x4df
	.long	0x5c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1d
	.string	"s"
	.byte	0x1
	.value	0x4e1
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1d
	.string	"tok"
	.byte	0x1
	.value	0x4e1
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.string	"n"
	.byte	0x1
	.value	0x4e2
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x22
	.long	.LASF146
	.byte	0x1
	.value	0x503
	.long	0x62
	.quad	.LFB33
	.quad	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0x132b
	.uleb128 0x1a
	.string	"sfp"
	.byte	0x1
	.value	0x503
	.long	0x5d2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1a
	.string	"key"
	.byte	0x1
	.value	0x503
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1b
	.long	.LASF147
	.byte	0x1
	.value	0x503
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1b
	.long	.LASF148
	.byte	0x1
	.value	0x503
	.long	0x735
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1b
	.long	.LASF149
	.byte	0x1
	.value	0x504
	.long	0x2c6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1b
	.long	.LASF150
	.byte	0x1
	.value	0x504
	.long	0x2c6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x1c
	.long	.LASF151
	.byte	0x1
	.value	0x506
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.long	.LASF152
	.byte	0x1
	.value	0x507
	.long	0x2c6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1c
	.long	.LASF153
	.byte	0x1
	.value	0x507
	.long	0x2c6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.string	"mid"
	.byte	0x1
	.value	0x507
	.long	0x2c6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1d
	.string	"cmp"
	.byte	0x1
	.value	0x508
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1c
	.long	.LASF95
	.byte	0x1
	.value	0x509
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x22
	.long	.LASF154
	.byte	0x1
	.value	0x534
	.long	0x62
	.quad	.LFB34
	.quad	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0x13a8
	.uleb128 0x1a
	.string	"sfp"
	.byte	0x1
	.value	0x534
	.long	0x5d2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.long	.LASF148
	.byte	0x1
	.value	0x534
	.long	0x735
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1a
	.string	"len"
	.byte	0x1
	.value	0x534
	.long	0x2c6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1a
	.string	"n"
	.byte	0x1
	.value	0x534
	.long	0x2c6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1d
	.string	"pos"
	.byte	0x1
	.value	0x536
	.long	0x320
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1c
	.long	.LASF95
	.byte	0x1
	.value	0x537
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x27
	.long	.LASF155
	.byte	0x1
	.value	0x54b
	.long	0x2d1
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0x1414
	.uleb128 0x1a
	.string	"g"
	.byte	0x1
	.value	0x54b
	.long	0xa19
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1c
	.long	.LASF65
	.byte	0x1
	.value	0x54d
	.long	0x2d1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.long	.LASF66
	.byte	0x1
	.value	0x54d
	.long	0x2d1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1c
	.long	.LASF67
	.byte	0x1
	.value	0x54d
	.long	0x2d1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1c
	.long	.LASF156
	.byte	0x1
	.value	0x54e
	.long	0x2d1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x22
	.long	.LASF157
	.byte	0x1
	.value	0x568
	.long	0x62
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.long	0x1451
	.uleb128 0x1a
	.string	"g"
	.byte	0x1
	.value	0x568
	.long	0xa19
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.value	0x56a
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1f
	.long	.LASF158
	.byte	0x1
	.value	0x59c
	.quad	.LFB37
	.quad	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0x147d
	.uleb128 0x1a
	.string	"g"
	.byte	0x1
	.value	0x59c
	.long	0xa19
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x14
	.long	.LASF159
	.byte	0x1
	.byte	0x18
	.long	0x2c6
	.uleb128 0x9
	.byte	0x3
	.quad	v20magic
	.uleb128 0x14
	.long	.LASF160
	.byte	0x1
	.byte	0x19
	.long	0x2c6
	.uleb128 0x9
	.byte	0x3
	.quad	v20swap
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
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x17
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
.LASF98:
	.string	"SSIGetOffsetByName"
.LASF14:
	.string	"_IO_read_ptr"
.LASF26:
	.string	"_chain"
.LASF155:
	.string	"current_index_size"
.LASF158:
	.string	"SSIForceExternalSort"
.LASF131:
	.string	"SSIClose"
.LASF7:
	.string	"size_t"
.LASF52:
	.string	"sqd_uint32"
.LASF70:
	.string	"soffset"
.LASF99:
	.string	"ret_fh"
.LASF143:
	.string	"write_offset"
.LASF32:
	.string	"_shortbuf"
.LASF107:
	.string	"SSISetFilePosition"
.LASF84:
	.string	"external"
.LASF20:
	.string	"_IO_buf_base"
.LASF48:
	.string	"long long unsigned int"
.LASF64:
	.string	"slen"
.LASF88:
	.string	"ptmpfile"
.LASF140:
	.string	"read_i64"
.LASF63:
	.string	"plen"
.LASF116:
	.string	"SSIGetFilePosition"
.LASF76:
	.string	"SSIFILE"
.LASF105:
	.string	"data_offset"
.LASF153:
	.string	"right"
.LASF75:
	.string	"fileflags"
.LASF61:
	.string	"nsecondary"
.LASF4:
	.string	"signed char"
.LASF65:
	.string	"frecsize"
.LASF126:
	.string	"SSIWriteIndex"
.LASF27:
	.string	"_fileno"
.LASF15:
	.string	"_IO_read_end"
.LASF166:
	.string	"specqsort"
.LASF142:
	.string	"read_offset"
.LASF6:
	.string	"long int"
.LASF13:
	.string	"_flags"
.LASF21:
	.string	"_IO_buf_end"
.LASF133:
	.string	"SSIErrorString"
.LASF144:
	.string	"parse_pkey_info"
.LASF47:
	.string	"long long int"
.LASF90:
	.string	"skeys"
.LASF50:
	.string	"double"
.LASF29:
	.string	"_old_offset"
.LASF34:
	.string	"_offset"
.LASF106:
	.string	"ret_actual_start"
.LASF121:
	.string	"load_indexfile"
.LASF85:
	.string	"max_ram"
.LASF114:
	.string	"SSICreateIndex"
.LASF69:
	.string	"poffset"
.LASF130:
	.string	"skey"
.LASF117:
	.string	"SSIAddFileToIndex"
.LASF43:
	.string	"_IO_marker"
.LASF72:
	.string	"smode"
.LASF3:
	.string	"unsigned int"
.LASF82:
	.string	"pkey"
.LASF57:
	.string	"ssifile_s"
.LASF0:
	.string	"long unsigned int"
.LASF145:
	.string	"parse_skey_info"
.LASF18:
	.string	"_IO_write_ptr"
.LASF151:
	.string	"name"
.LASF45:
	.string	"_sbuf"
.LASF127:
	.string	"header_flags"
.LASF2:
	.string	"short unsigned int"
.LASF115:
	.string	"FAILURE"
.LASF80:
	.string	"d_off"
.LASF22:
	.string	"_IO_save_base"
.LASF62:
	.string	"flen"
.LASF149:
	.string	"recsize"
.LASF53:
	.string	"sqd_uint64"
.LASF33:
	.string	"_lock"
.LASF111:
	.string	"ret_format"
.LASF28:
	.string	"_flags2"
.LASF156:
	.string	"total"
.LASF123:
	.string	"key1"
.LASF124:
	.string	"key2"
.LASF97:
	.string	"SSIOpen"
.LASF109:
	.string	"SSIFileInfo"
.LASF134:
	.string	"read_i16"
.LASF139:
	.string	"write_i32"
.LASF148:
	.string	"base"
.LASF104:
	.string	"record_offset"
.LASF91:
	.string	"stmpfile"
.LASF79:
	.string	"r_off"
.LASF10:
	.string	"sizetype"
.LASF73:
	.string	"filename"
.LASF132:
	.string	"SSIFreeIndex"
.LASF68:
	.string	"foffset"
.LASF128:
	.string	"file_flags"
.LASF122:
	.string	"pkeysort"
.LASF100:
	.string	"ret_offset"
.LASF81:
	.string	"ssiskey_s"
.LASF164:
	.string	"_IO_lock_t"
.LASF42:
	.string	"_IO_FILE"
.LASF101:
	.string	"SSIGetOffsetByNumber"
.LASF160:
	.string	"v20swap"
.LASF8:
	.string	"__off_t"
.LASF40:
	.string	"_mode"
.LASF49:
	.string	"float"
.LASF46:
	.string	"_pos"
.LASF25:
	.string	"_markers"
.LASF110:
	.string	"ret_filename"
.LASF59:
	.string	"nfiles"
.LASF162:
	.string	"ssi.c"
.LASF1:
	.string	"unsigned char"
.LASF103:
	.string	"requested_start"
.LASF60:
	.string	"nprimary"
.LASF5:
	.string	"short int"
.LASF96:
	.string	"magic"
.LASF113:
	.string	"file"
.LASF147:
	.string	"klen"
.LASF31:
	.string	"_vtable_offset"
.LASF12:
	.string	"FILE"
.LASF129:
	.string	"buflen"
.LASF92:
	.string	"stmp"
.LASF120:
	.string	"SSIAddSecondaryKeyToIndex"
.LASF135:
	.string	"ret_result"
.LASF138:
	.string	"read_i32"
.LASF66:
	.string	"precsize"
.LASF71:
	.string	"imode"
.LASF89:
	.string	"ptmp"
.LASF119:
	.string	"SSIAddPrimaryKeyToIndex"
.LASF112:
	.string	"SSIRecommendMode"
.LASF93:
	.string	"SSIINDEX"
.LASF11:
	.string	"char"
.LASF55:
	.string	"mode"
.LASF102:
	.string	"SSIGetSubseqOffset"
.LASF54:
	.string	"ssioffset_s"
.LASF51:
	.string	"sqd_uint16"
.LASF74:
	.string	"fileformat"
.LASF44:
	.string	"_next"
.LASF9:
	.string	"__off64_t"
.LASF108:
	.string	"offset"
.LASF30:
	.string	"_cur_column"
.LASF16:
	.string	"_IO_read_base"
.LASF24:
	.string	"_IO_save_end"
.LASF67:
	.string	"srecsize"
.LASF150:
	.string	"maxidx"
.LASF141:
	.string	"write_i64"
.LASF35:
	.string	"__pad1"
.LASF36:
	.string	"__pad2"
.LASF37:
	.string	"__pad3"
.LASF38:
	.string	"__pad4"
.LASF39:
	.string	"__pad5"
.LASF159:
	.string	"v20magic"
.LASF19:
	.string	"_IO_write_end"
.LASF41:
	.string	"_unused2"
.LASF95:
	.string	"status"
.LASF77:
	.string	"ssipkey_s"
.LASF157:
	.string	"activate_external_sort"
.LASF94:
	.string	"ret_sfp"
.LASF161:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF23:
	.string	"_IO_backup_base"
.LASF165:
	.string	"clear_ssifile"
.LASF58:
	.string	"flags"
.LASF154:
	.string	"indexfile_position"
.LASF146:
	.string	"binary_search"
.LASF125:
	.string	"skeysort"
.LASF83:
	.string	"ssiindex_s"
.LASF86:
	.string	"filenames"
.LASF163:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/456.hmmer/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF87:
	.string	"pkeys"
.LASF137:
	.string	"write_i16"
.LASF78:
	.string	"fnum"
.LASF17:
	.string	"_IO_write_base"
.LASF152:
	.string	"left"
.LASF136:
	.string	"result"
.LASF56:
	.string	"SSIOFFSET"
.LASF118:
	.string	"SSISetFileForSubseq"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
