	.file	"dslash_fn2.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D FN -D FAST -D CONGRAD_TMP_VECTORS -D DSLASH_TMP_LINKS -D SPEC_CPU_LP64
# dslash_fn2.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.local	temp
	.comm	temp,72,32
	.data
	.align 4
	.type	temp_not_allocated, @object
	.size	temp_not_allocated, 4
temp_not_allocated:
	.long	1
	.text
	.globl	cleanup_gathers
	.type	cleanup_gathers, @function
cleanup_gathers:
.LFB2:
	.file 1 "dslash_fn2.c"
	.loc 1 31 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# tags1, tags1
	movq	%rsi, -32(%rbp)	# tags2, tags2
	.loc 1 34 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L2	#
.L3:
	.loc 1 35 0 discriminator 2
	movl	-4(%rbp), %eax	# i, tmp95
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6177
	movq	-24(%rbp), %rax	# tags1, tmp96
	addq	%rdx, %rax	# D.6177, D.6178
	movq	(%rax), %rax	# *_7, D.6179
	movq	%rax, %rdi	# D.6179,
	call	cleanup_gather	#
	.loc 1 36 0 discriminator 2
	movl	$7, %eax	#, tmp97
	subl	-4(%rbp), %eax	# i, D.6180
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6177
	movq	-24(%rbp), %rax	# tags1, tmp98
	addq	%rdx, %rax	# D.6177, D.6178
	movq	(%rax), %rax	# *_12, D.6179
	movq	%rax, %rdi	# D.6179,
	call	cleanup_gather	#
	.loc 1 37 0 discriminator 2
	movl	-4(%rbp), %eax	# i, tmp99
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6177
	movq	-32(%rbp), %rax	# tags2, tmp100
	addq	%rdx, %rax	# D.6177, D.6178
	movq	(%rax), %rax	# *_17, D.6179
	movq	%rax, %rdi	# D.6179,
	call	cleanup_gather	#
	.loc 1 38 0 discriminator 2
	movl	$7, %eax	#, tmp101
	subl	-4(%rbp), %eax	# i, D.6180
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6177
	movq	-32(%rbp), %rax	# tags2, tmp102
	addq	%rdx, %rax	# D.6177, D.6178
	movq	(%rax), %rax	# *_22, D.6179
	movq	%rax, %rdi	# D.6179,
	call	cleanup_gather	#
	.loc 1 34 0 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L2:
	.loc 1 34 0 is_stmt 0 discriminator 1
	cmpl	$3, -4(%rbp)	#, i
	jle	.L3	#,
	.loc 1 41 0 is_stmt 1
	movl	$8, -4(%rbp)	#, i
	jmp	.L4	#
.L5:
	.loc 1 42 0 discriminator 2
	movl	-4(%rbp), %eax	# i, tmp103
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6177
	movq	-24(%rbp), %rax	# tags1, tmp104
	addq	%rdx, %rax	# D.6177, D.6178
	movq	(%rax), %rax	# *_28, D.6179
	movq	%rax, %rdi	# D.6179,
	call	cleanup_gather	#
	.loc 1 43 0 discriminator 2
	movl	$23, %eax	#, tmp105
	subl	-4(%rbp), %eax	# i, D.6180
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6177
	movq	-24(%rbp), %rax	# tags1, tmp106
	addq	%rdx, %rax	# D.6177, D.6178
	movq	(%rax), %rax	# *_33, D.6179
	movq	%rax, %rdi	# D.6179,
	call	cleanup_gather	#
	.loc 1 44 0 discriminator 2
	movl	-4(%rbp), %eax	# i, tmp107
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6177
	movq	-32(%rbp), %rax	# tags2, tmp108
	addq	%rdx, %rax	# D.6177, D.6178
	movq	(%rax), %rax	# *_37, D.6179
	movq	%rax, %rdi	# D.6179,
	call	cleanup_gather	#
	.loc 1 45 0 discriminator 2
	movl	$23, %eax	#, tmp109
	subl	-4(%rbp), %eax	# i, D.6180
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6177
	movq	-32(%rbp), %rax	# tags2, tmp110
	addq	%rdx, %rax	# D.6177, D.6178
	movq	(%rax), %rax	# *_42, D.6179
	movq	%rax, %rdi	# D.6179,
	call	cleanup_gather	#
	.loc 1 41 0 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L4:
	.loc 1 41 0 is_stmt 0 discriminator 1
	cmpl	$11, -4(%rbp)	#, i
	jle	.L5	#,
	.loc 1 47 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	cleanup_gathers, .-cleanup_gathers
	.globl	cleanup_dslash_temps
	.type	cleanup_dslash_temps, @function
cleanup_dslash_temps:
.LFB3:
	.loc 1 49 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$8, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 51 0
	movl	temp_not_allocated(%rip), %eax	# temp_not_allocated, temp_not_allocated.0
	testl	%eax, %eax	# temp_not_allocated.0
	jne	.L7	#,
	.loc 1 52 0
	movl	$0, %ebx	#, i
	jmp	.L8	#
.L9:
	.loc 1 53 0 discriminator 2
	movslq	%ebx, %rax	# i, tmp62
	movq	temp(,%rax,8), %rax	# temp, D.6181
	movq	%rax, %rdi	# D.6181,
	call	free	#
	.loc 1 52 0 discriminator 2
	addl	$1, %ebx	#, i
.L8:
	.loc 1 52 0 is_stmt 0 discriminator 1
	cmpl	$8, %ebx	#, i
	jle	.L9	#,
.L7:
	.loc 1 55 0 is_stmt 1
	movl	$1, temp_not_allocated(%rip)	#, temp_not_allocated
	.loc 1 56 0
	addq	$8, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	cleanup_dslash_temps, .-cleanup_dslash_temps
	.globl	dslash_fn
	.type	dslash_fn, @function
dslash_fn:
.LFB4:
	.loc 1 63 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r15	#
	pushq	%r14	#
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	subq	$152, %rsp	#,
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movl	%edi, -180(%rbp)	# src, src
	movl	%esi, -184(%rbp)	# dest, dest
	movl	%edx, -188(%rbp)	# parity, parity
	.loc 1 70 0
	movl	valid_longlinks(%rip), %eax	# valid_longlinks, valid_longlinks.1
	testl	%eax, %eax	# valid_longlinks.1
	jne	.L11	#,
	.loc 1 70 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#,
	call	load_longlinks	#
.L11:
	.loc 1 71 0 is_stmt 1
	movl	valid_fatlinks(%rip), %eax	# valid_fatlinks, valid_fatlinks.2
	testl	%eax, %eax	# valid_fatlinks.2
	jne	.L12	#,
	.loc 1 71 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#,
	call	load_fatlinks	#
.L12:
	.loc 1 72 0 is_stmt 1
	movl	-188(%rbp), %eax	# parity, parity
	cmpl	$2, %eax	#, parity
	je	.L14	#,
	cmpl	$3, %eax	#, parity
	je	.L15	#,
	cmpl	$1, %eax	#, parity
	je	.L16	#,
	jmp	.L13	#
.L14:
	.loc 1 73 0
	movl	$1, %r12d	#, otherparity
	jmp	.L13	#
.L16:
	.loc 1 74 0
	movl	$2, %r12d	#, otherparity
	jmp	.L13	#
.L15:
	.loc 1 75 0
	movl	$3, %r12d	#, otherparity
	nop
.L13:
	.loc 1 80 0
	movl	$0, %ebx	#, dir
	jmp	.L17	#
.L18:
	.loc 1 81 0 discriminator 2
	movslq	%ebx, %rax	# dir, tmp234
	movq	gen_pt(,%rax,8), %rcx	# gen_pt, D.6182
	movl	-188(%rbp), %edx	# parity, tmp235
	movl	-180(%rbp), %eax	# src, tmp236
	movq	%rcx, %r8	# D.6182,
	movl	%edx, %ecx	# tmp235,
	movl	%ebx, %edx	# dir,
	movl	$48, %esi	#,
	movl	%eax, %edi	# tmp236,
	call	start_gather	#
	movslq	%ebx, %rdx	# dir, tmp237
	movq	%rax, -176(%rbp,%rdx,8)	# D.6183, tag
	.loc 1 83 0 discriminator 2
	leal	8(%rbx), %r13d	#, D.6184
	.loc 1 84 0 discriminator 2
	leal	8(%rbx), %eax	#, D.6184
	.loc 1 83 0 discriminator 2
	cltq
	movq	gen_pt(,%rax,8), %rsi	# gen_pt, D.6182
	leal	8(%rbx), %edx	#, D.6184
	movl	-188(%rbp), %ecx	# parity, tmp239
	movl	-180(%rbp), %eax	# src, tmp240
	movq	%rsi, %r8	# D.6182,
	movl	$48, %esi	#,
	movl	%eax, %edi	# tmp240,
	call	start_gather	#
	movslq	%r13d, %rdx	# D.6184, tmp241
	movq	%rax, -176(%rbp,%rdx,8)	# D.6183, tag
	.loc 1 80 0 discriminator 2
	addl	$1, %ebx	#, dir
.L17:
	.loc 1 80 0 is_stmt 0 discriminator 1
	cmpl	$3, %ebx	#, dir
	jle	.L18	#,
.LBB2:
	.loc 1 89 0 is_stmt 1
	cmpl	$2, %r12d	#, otherparity
	jne	.L19	#,
	.loc 1 89 0 is_stmt 0 discriminator 1
	movl	even_sites_on_node(%rip), %eax	# even_sites_on_node, iftmp.3
	jmp	.L20	#
.L19:
	.loc 1 89 0 discriminator 2
	movl	sites_on_node(%rip), %eax	# sites_on_node, iftmp.3
.L20:
	.loc 1 89 0 discriminator 3
	movl	%eax, %r15d	# iftmp.3, loopend
	cmpl	$1, %r12d	#, otherparity
	jne	.L21	#,
	.loc 1 89 0 discriminator 1
	movl	even_sites_on_node(%rip), %eax	# even_sites_on_node, iftmp.4
	jmp	.L22	#
.L21:
	.loc 1 89 0 discriminator 2
	movl	$0, %eax	#, iftmp.4
.L22:
	.loc 1 89 0 discriminator 3
	movl	%eax, %ebx	# iftmp.4, i
	movq	lattice(%rip), %rax	# lattice, lattice.5
	movslq	%ebx, %rdx	# i, D.6185
	salq	$11, %rdx	#, D.6185
	leaq	(%rax,%rdx), %r12	#, s
	jmp	.L23	#
.L24:
	.loc 1 92 0 is_stmt 1 discriminator 2
	movq	t_fatlink(%rip), %rcx	# t_fatlink, t_fatlink.6
	movslq	%ebx, %rdx	# i, D.6185
	movq	%rdx, %rax	# D.6185, tmp242
	salq	$3, %rax	#, tmp242
	addq	%rdx, %rax	# D.6185, tmp242
	salq	$6, %rax	#, tmp243
	leaq	(%rcx,%rax), %r14	#, fat4
	.loc 1 93 0 discriminator 2
	movq	t_longlink(%rip), %rcx	# t_longlink, t_longlink.7
	movslq	%ebx, %rdx	# i, D.6185
	movq	%rdx, %rax	# D.6185, tmp244
	salq	$3, %rax	#, tmp244
	addq	%rdx, %rax	# D.6185, tmp244
	salq	$6, %rax	#, tmp245
	leaq	(%rcx,%rax), %r13	#, long4
	.loc 1 99 0 discriminator 2
	leaq	1328(%r12), %rax	#, D.6186
	.loc 1 98 0 discriminator 2
	movl	-180(%rbp), %edx	# src, tmp246
	movslq	%edx, %rdx	# tmp246, D.6187
	leaq	(%r12,%rdx), %rcx	#, D.6188
	movq	%rax, %rdx	# D.6186,
	movq	%rcx, %rsi	# D.6188,
	movq	%r14, %rdi	# fat4,
	call	mult_adj_su3_mat_vec_4dir	#
	.loc 1 102 0 discriminator 2
	leaq	1520(%r12), %rax	#, D.6186
	.loc 1 101 0 discriminator 2
	movl	-180(%rbp), %edx	# src, tmp247
	movslq	%edx, %rdx	# tmp247, D.6187
	leaq	(%r12,%rdx), %rcx	#, D.6188
	movq	%rax, %rdx	# D.6186,
	movq	%rcx, %rsi	# D.6188,
	movq	%r13, %rdi	# long4,
	call	mult_adj_su3_mat_vec_4dir	#
	.loc 1 89 0 discriminator 2
	addl	$1, %ebx	#, i
	addq	$2048, %r12	#, s
.L23:
	.loc 1 89 0 is_stmt 0 discriminator 1
	cmpl	%r15d, %ebx	# loopend, i
	jl	.L24	#,
.LBE2:
	.loc 1 106 0 is_stmt 1
	movl	$0, %ebx	#, dir
	jmp	.L25	#
.L26:
	.loc 1 107 0 discriminator 2
	movl	$7, %eax	#, tmp248
	subl	%ebx, %eax	# dir, D.6184
	movl	%eax, %r12d	# D.6184, D.6184
	.loc 1 109 0 discriminator 2
	movl	$7, %eax	#, tmp249
	subl	%ebx, %eax	# dir, D.6184
	.loc 1 107 0 discriminator 2
	cltq
	movq	gen_pt(,%rax,8), %rcx	# gen_pt, D.6182
	movl	$7, %eax	#, tmp251
	subl	%ebx, %eax	# dir, D.6184
	movl	%eax, %esi	# D.6184, D.6184
	movq	lattice(%rip), %rdi	# lattice, lattice.8
	movslq	%ebx, %rdx	# dir, tmp252
	movq	%rdx, %rax	# tmp252, tmp253
	addq	%rax, %rax	# tmp253
	addq	%rdx, %rax	# tmp252, tmp253
	salq	$4, %rax	#, tmp254
	addq	$1328, %rax	#, tmp255
	addq	%rdi, %rax	# lattice.8, D.6188
	movq	%rax, %rdx	# D.6188, D.6189
	movq	lattice(%rip), %rax	# lattice, lattice.9
	subq	%rax, %rdx	# lattice.10, D.6189
	movq	%rdx, %rax	# D.6189, D.6189
	movl	-188(%rbp), %edx	# parity, tmp256
	movq	%rcx, %r8	# D.6182,
	movl	%edx, %ecx	# tmp256,
	movl	%esi, %edx	# D.6184,
	movl	$48, %esi	#,
	movl	%eax, %edi	# D.6184,
	call	start_gather	#
	movslq	%r12d, %rdx	# D.6184, tmp257
	movq	%rax, -176(%rbp,%rdx,8)	# D.6183, tag
	.loc 1 106 0 discriminator 2
	addl	$1, %ebx	#, dir
.L25:
	.loc 1 106 0 is_stmt 0 discriminator 1
	cmpl	$3, %ebx	#, dir
	jle	.L26	#,
	.loc 1 113 0 is_stmt 1
	movl	$8, %ebx	#, dir
	jmp	.L27	#
.L28:
	.loc 1 114 0 discriminator 2
	movl	$23, %eax	#, tmp258
	subl	%ebx, %eax	# dir, D.6184
	movl	%eax, %r12d	# D.6184, D.6184
	.loc 1 117 0 discriminator 2
	movl	$23, %eax	#, tmp259
	subl	%ebx, %eax	# dir, D.6184
	.loc 1 115 0 discriminator 2
	cltq
	movq	gen_pt(,%rax,8), %rcx	# gen_pt, D.6182
	movl	$23, %eax	#, tmp261
	subl	%ebx, %eax	# dir, D.6184
	movl	%eax, %esi	# D.6184, D.6184
	movq	lattice(%rip), %rdi	# lattice, lattice.11
	leal	-8(%rbx), %eax	#, D.6184
	movslq	%eax, %rdx	# D.6184, tmp262
	movq	%rdx, %rax	# tmp262, tmp263
	addq	%rax, %rax	# tmp263
	addq	%rdx, %rax	# tmp262, tmp263
	salq	$4, %rax	#, tmp264
	addq	$1520, %rax	#, tmp265
	addq	%rdi, %rax	# lattice.11, D.6188
	movq	%rax, %rdx	# D.6188, D.6189
	movq	lattice(%rip), %rax	# lattice, lattice.12
	subq	%rax, %rdx	# lattice.13, D.6189
	movq	%rdx, %rax	# D.6189, D.6189
	movl	-188(%rbp), %edx	# parity, tmp266
	movq	%rcx, %r8	# D.6182,
	movl	%edx, %ecx	# tmp266,
	movl	%esi, %edx	# D.6184,
	movl	$48, %esi	#,
	movl	%eax, %edi	# D.6184,
	call	start_gather	#
	movslq	%r12d, %rdx	# D.6184, tmp267
	movq	%rax, -176(%rbp,%rdx,8)	# D.6183, tag
	.loc 1 113 0 discriminator 2
	addl	$1, %ebx	#, dir
.L27:
	.loc 1 113 0 is_stmt 0 discriminator 1
	cmpl	$11, %ebx	#, dir
	jle	.L28	#,
	.loc 1 123 0 is_stmt 1
	movl	$0, %ebx	#, dir
	jmp	.L29	#
.L30:
	.loc 1 124 0 discriminator 2
	movslq	%ebx, %rax	# dir, tmp268
	movq	-176(%rbp,%rax,8), %rax	# tag, D.6183
	movq	%rax, %rdi	# D.6183,
	call	wait_gather	#
	.loc 1 125 0 discriminator 2
	leal	8(%rbx), %eax	#, D.6184
	cltq
	movq	-176(%rbp,%rax,8), %rax	# tag, D.6183
	movq	%rax, %rdi	# D.6183,
	call	wait_gather	#
	.loc 1 123 0 discriminator 2
	addl	$1, %ebx	#, dir
.L29:
	.loc 1 123 0 is_stmt 0 discriminator 1
	cmpl	$3, %ebx	#, dir
	jle	.L30	#,
	.loc 1 129 0 is_stmt 1
	movl	$0, %ebx	#, dir
	jmp	.L31	#
.L32:
	.loc 1 130 0 discriminator 2
	movl	$7, %eax	#, tmp270
	subl	%ebx, %eax	# dir, D.6184
	cltq
	movq	-176(%rbp,%rax,8), %rax	# tag, D.6183
	movq	%rax, %rdi	# D.6183,
	call	wait_gather	#
	.loc 1 129 0 discriminator 2
	addl	$1, %ebx	#, dir
.L31:
	.loc 1 129 0 is_stmt 0 discriminator 1
	cmpl	$3, %ebx	#, dir
	jle	.L32	#,
	.loc 1 132 0 is_stmt 1
	movl	$8, %ebx	#, dir
	jmp	.L33	#
.L34:
	.loc 1 133 0 discriminator 2
	movl	$23, %eax	#, tmp272
	subl	%ebx, %eax	# dir, D.6184
	cltq
	movq	-176(%rbp,%rax,8), %rax	# tag, D.6183
	movq	%rax, %rdi	# D.6183,
	call	wait_gather	#
	.loc 1 132 0 discriminator 2
	addl	$1, %ebx	#, dir
.L33:
	.loc 1 132 0 is_stmt 0 discriminator 1
	cmpl	$11, %ebx	#, dir
	jle	.L34	#,
.LBB3:
	.loc 1 137 0 is_stmt 1
	cmpl	$2, -188(%rbp)	#, parity
	jne	.L35	#,
	.loc 1 137 0 is_stmt 0 discriminator 1
	movl	even_sites_on_node(%rip), %eax	# even_sites_on_node, iftmp.14
	jmp	.L36	#
.L35:
	.loc 1 137 0 discriminator 2
	movl	sites_on_node(%rip), %eax	# sites_on_node, iftmp.14
.L36:
	.loc 1 137 0 discriminator 3
	movl	%eax, %r15d	# iftmp.14, loopend
	cmpl	$1, -188(%rbp)	#, parity
	jne	.L37	#,
	.loc 1 137 0 discriminator 1
	movl	even_sites_on_node(%rip), %eax	# even_sites_on_node, iftmp.15
	jmp	.L38	#
.L37:
	.loc 1 137 0 discriminator 2
	movl	$0, %eax	#, iftmp.15
.L38:
	.loc 1 137 0 discriminator 3
	movl	%eax, %ebx	# iftmp.15, i
	movq	lattice(%rip), %rax	# lattice, lattice.16
	movslq	%ebx, %rdx	# i, D.6185
	salq	$11, %rdx	#, D.6185
	leaq	(%rax,%rdx), %r12	#, s
	jmp	.L39	#
.L40:
	.loc 1 139 0 is_stmt 1 discriminator 2
	movq	t_fatlink(%rip), %rcx	# t_fatlink, t_fatlink.17
	movslq	%ebx, %rdx	# i, D.6185
	movq	%rdx, %rax	# D.6185, tmp274
	salq	$3, %rax	#, tmp274
	addq	%rdx, %rax	# D.6185, tmp274
	salq	$6, %rax	#, tmp275
	leaq	(%rcx,%rax), %r14	#, fat4
	.loc 1 140 0 discriminator 2
	movq	t_longlink(%rip), %rcx	# t_longlink, t_longlink.18
	movslq	%ebx, %rdx	# i, D.6185
	movq	%rdx, %rax	# D.6185, tmp276
	salq	$3, %rax	#, tmp276
	addq	%rdx, %rax	# D.6185, tmp276
	salq	$6, %rax	#, tmp277
	leaq	(%rcx,%rax), %r13	#, long4
	.loc 1 145 0 discriminator 2
	movl	-184(%rbp), %eax	# dest, tmp278
	cltq
	leaq	(%r12,%rax), %r8	#, D.6188
	.loc 1 147 0 discriminator 2
	movq	gen_pt+24(%rip), %rax	# gen_pt, D.6182
	movslq	%ebx, %rdx	# i, D.6185
	salq	$3, %rdx	#, D.6185
	addq	%rdx, %rax	# D.6185, D.6182
	.loc 1 145 0 discriminator 2
	movq	(%rax), %rsi	# *_127, D.6190
	.loc 1 147 0 discriminator 2
	movq	gen_pt+16(%rip), %rax	# gen_pt, D.6182
	movslq	%ebx, %rdx	# i, D.6185
	salq	$3, %rdx	#, D.6185
	addq	%rdx, %rax	# D.6185, D.6182
	.loc 1 145 0 discriminator 2
	movq	(%rax), %rcx	# *_132, D.6190
	.loc 1 146 0 discriminator 2
	movq	gen_pt+8(%rip), %rax	# gen_pt, D.6182
	movslq	%ebx, %rdx	# i, D.6185
	salq	$3, %rdx	#, D.6185
	addq	%rdx, %rax	# D.6185, D.6182
	.loc 1 145 0 discriminator 2
	movq	(%rax), %rdx	# *_137, D.6190
	.loc 1 146 0 discriminator 2
	movq	gen_pt(%rip), %rax	# gen_pt, D.6182
	movslq	%ebx, %rdi	# i, D.6185
	salq	$3, %rdi	#, D.6185
	addq	%rdi, %rax	# D.6185, D.6182
	.loc 1 145 0 discriminator 2
	movq	(%rax), %rax	# *_142, D.6190
	movq	%r8, %r9	# D.6188,
	movq	%rsi, %r8	# D.6190,
	movq	%rax, %rsi	# D.6190,
	movq	%r14, %rdi	# fat4,
	call	mult_su3_mat_vec_sum_4dir	#
	.loc 1 150 0 discriminator 2
	leaq	1712(%r12), %rdi	#, D.6188
	.loc 1 152 0 discriminator 2
	movq	gen_pt+88(%rip), %rax	# gen_pt, D.6182
	movslq	%ebx, %rdx	# i, D.6185
	salq	$3, %rdx	#, D.6185
	addq	%rdx, %rax	# D.6185, D.6182
	.loc 1 150 0 discriminator 2
	movq	(%rax), %rsi	# *_148, D.6190
	.loc 1 152 0 discriminator 2
	movq	gen_pt+80(%rip), %rax	# gen_pt, D.6182
	movslq	%ebx, %rdx	# i, D.6185
	salq	$3, %rdx	#, D.6185
	addq	%rdx, %rax	# D.6185, D.6182
	.loc 1 150 0 discriminator 2
	movq	(%rax), %rcx	# *_153, D.6190
	.loc 1 151 0 discriminator 2
	movq	gen_pt+72(%rip), %rax	# gen_pt, D.6182
	movslq	%ebx, %rdx	# i, D.6185
	salq	$3, %rdx	#, D.6185
	addq	%rdx, %rax	# D.6185, D.6182
	.loc 1 150 0 discriminator 2
	movq	(%rax), %rdx	# *_158, D.6190
	.loc 1 151 0 discriminator 2
	movq	gen_pt+64(%rip), %rax	# gen_pt, D.6182
	movslq	%ebx, %r8	# i, D.6185
	salq	$3, %r8	#, D.6185
	addq	%r8, %rax	# D.6185, D.6182
	.loc 1 150 0 discriminator 2
	movq	(%rax), %rax	# *_163, D.6190
	movq	%rdi, %r9	# D.6188,
	movq	%rsi, %r8	# D.6190,
	movq	%rax, %rsi	# D.6190,
	movq	%r13, %rdi	# long4,
	call	mult_su3_mat_vec_sum_4dir	#
	.loc 1 159 0 discriminator 2
	movq	gen_pt+32(%rip), %rax	# gen_pt, D.6182
	movslq	%ebx, %rdx	# i, D.6185
	salq	$3, %rdx	#, D.6185
	addq	%rdx, %rax	# D.6185, D.6182
	.loc 1 155 0 discriminator 2
	movq	(%rax), %rsi	# *_168, D.6190
	.loc 1 158 0 discriminator 2
	movq	gen_pt+40(%rip), %rax	# gen_pt, D.6182
	movslq	%ebx, %rdx	# i, D.6185
	salq	$3, %rdx	#, D.6185
	addq	%rdx, %rax	# D.6185, D.6182
	.loc 1 155 0 discriminator 2
	movq	(%rax), %rcx	# *_173, D.6190
	.loc 1 157 0 discriminator 2
	movq	gen_pt+48(%rip), %rax	# gen_pt, D.6182
	movslq	%ebx, %rdx	# i, D.6185
	salq	$3, %rdx	#, D.6185
	addq	%rdx, %rax	# D.6185, D.6182
	.loc 1 155 0 discriminator 2
	movq	(%rax), %rdx	# *_178, D.6190
	.loc 1 156 0 discriminator 2
	movq	gen_pt+56(%rip), %rax	# gen_pt, D.6182
	movslq	%ebx, %rdi	# i, D.6185
	salq	$3, %rdi	#, D.6185
	addq	%rdi, %rax	# D.6185, D.6182
	.loc 1 155 0 discriminator 2
	movq	(%rax), %rax	# *_183, D.6190
	movl	-184(%rbp), %edi	# dest, tmp279
	movslq	%edi, %rdi	# tmp279, D.6187
	addq	%r12, %rdi	# s, D.6188
	movq	%rsi, %r8	# D.6190,
	movq	%rax, %rsi	# D.6190,
	call	sub_four_su3_vecs	#
	.loc 1 164 0 discriminator 2
	movq	gen_pt+96(%rip), %rax	# gen_pt, D.6182
	movslq	%ebx, %rdx	# i, D.6185
	salq	$3, %rdx	#, D.6185
	addq	%rdx, %rax	# D.6185, D.6182
	.loc 1 160 0 discriminator 2
	movq	(%rax), %rdi	# *_190, D.6190
	.loc 1 163 0 discriminator 2
	movq	gen_pt+104(%rip), %rax	# gen_pt, D.6182
	movslq	%ebx, %rdx	# i, D.6185
	salq	$3, %rdx	#, D.6185
	addq	%rdx, %rax	# D.6185, D.6182
	.loc 1 160 0 discriminator 2
	movq	(%rax), %rcx	# *_195, D.6190
	.loc 1 162 0 discriminator 2
	movq	gen_pt+112(%rip), %rax	# gen_pt, D.6182
	movslq	%ebx, %rdx	# i, D.6185
	salq	$3, %rdx	#, D.6185
	addq	%rdx, %rax	# D.6185, D.6182
	.loc 1 160 0 discriminator 2
	movq	(%rax), %rdx	# *_200, D.6190
	.loc 1 161 0 discriminator 2
	movq	gen_pt+120(%rip), %rax	# gen_pt, D.6182
	movslq	%ebx, %rsi	# i, D.6185
	salq	$3, %rsi	#, D.6185
	addq	%rsi, %rax	# D.6185, D.6182
	.loc 1 160 0 discriminator 2
	movq	(%rax), %rsi	# *_205, D.6190
	leaq	1712(%r12), %rax	#, D.6188
	movq	%rdi, %r8	# D.6190,
	movq	%rax, %rdi	# D.6188,
	call	sub_four_su3_vecs	#
	.loc 1 166 0 discriminator 2
	movl	-184(%rbp), %eax	# dest, tmp280
	cltq
	leaq	(%r12,%rax), %rdx	#, D.6188
	leaq	1712(%r12), %rax	#, D.6188
	movl	-184(%rbp), %ecx	# dest, tmp281
	movslq	%ecx, %rcx	# tmp281, D.6187
	addq	%r12, %rcx	# s, D.6188
	movq	%rax, %rsi	# D.6188,
	movq	%rcx, %rdi	# D.6188,
	call	add_su3_vector	#
	.loc 1 137 0 discriminator 2
	addl	$1, %ebx	#, i
	addq	$2048, %r12	#, s
.L39:
	.loc 1 137 0 is_stmt 0 discriminator 1
	cmpl	%r15d, %ebx	# loopend, i
	jl	.L40	#,
.LBE3:
	.loc 1 171 0 is_stmt 1
	movl	$0, %ebx	#, dir
	jmp	.L41	#
.L42:
	.loc 1 172 0 discriminator 2
	movslq	%ebx, %rax	# dir, tmp282
	movq	-176(%rbp,%rax,8), %rax	# tag, D.6183
	movq	%rax, %rdi	# D.6183,
	call	cleanup_gather	#
	.loc 1 173 0 discriminator 2
	movl	$7, %eax	#, tmp283
	subl	%ebx, %eax	# dir, D.6184
	cltq
	movq	-176(%rbp,%rax,8), %rax	# tag, D.6183
	movq	%rax, %rdi	# D.6183,
	call	cleanup_gather	#
	.loc 1 171 0 discriminator 2
	addl	$1, %ebx	#, dir
.L41:
	.loc 1 171 0 is_stmt 0 discriminator 1
	cmpl	$3, %ebx	#, dir
	jle	.L42	#,
	.loc 1 175 0 is_stmt 1
	movl	$8, %ebx	#, dir
	jmp	.L43	#
.L44:
	.loc 1 176 0 discriminator 2
	movslq	%ebx, %rax	# dir, tmp285
	movq	-176(%rbp,%rax,8), %rax	# tag, D.6183
	movq	%rax, %rdi	# D.6183,
	call	cleanup_gather	#
	.loc 1 177 0 discriminator 2
	movl	$23, %eax	#, tmp286
	subl	%ebx, %eax	# dir, D.6184
	cltq
	movq	-176(%rbp,%rax,8), %rax	# tag, D.6183
	movq	%rax, %rdi	# D.6183,
	call	cleanup_gather	#
	.loc 1 175 0 discriminator 2
	addl	$1, %ebx	#, dir
.L43:
	.loc 1 175 0 is_stmt 0 discriminator 1
	cmpl	$11, %ebx	#, dir
	jle	.L44	#,
	.loc 1 179 0 is_stmt 1
	addq	$152, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%r15	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	dslash_fn, .-dslash_fn
	.globl	dslash_fn_special
	.type	dslash_fn_special, @function
dslash_fn_special:
.LFB5:
	.loc 1 187 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r15	#
	pushq	%r14	#
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movl	%edi, -52(%rbp)	# src, src
	movl	%esi, -56(%rbp)	# dest, dest
	movl	%edx, -60(%rbp)	# parity, parity
	movq	%rcx, -72(%rbp)	# tag, tag
	movl	%r8d, -64(%rbp)	# start, start
	.loc 1 193 0
	movl	valid_longlinks(%rip), %eax	# valid_longlinks, valid_longlinks.19
	testl	%eax, %eax	# valid_longlinks.19
	jne	.L46	#,
	.loc 1 193 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#,
	call	load_longlinks	#
.L46:
	.loc 1 194 0 is_stmt 1
	movl	valid_fatlinks(%rip), %eax	# valid_fatlinks, valid_fatlinks.20
	testl	%eax, %eax	# valid_fatlinks.20
	jne	.L47	#,
	.loc 1 194 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#,
	call	load_fatlinks	#
.L47:
	.loc 1 195 0 is_stmt 1
	movl	-60(%rbp), %eax	# parity, parity
	cmpl	$2, %eax	#, parity
	je	.L49	#,
	cmpl	$3, %eax	#, parity
	je	.L50	#,
	cmpl	$1, %eax	#, parity
	je	.L51	#,
	jmp	.L48	#
.L49:
	.loc 1 196 0
	movl	$1, %r12d	#, otherparity
	jmp	.L48	#
.L51:
	.loc 1 197 0
	movl	$2, %r12d	#, otherparity
	jmp	.L48	#
.L50:
	.loc 1 198 0
	movl	$3, %r12d	#, otherparity
	nop
.L48:
	.loc 1 202 0
	movl	$0, %ebx	#, dir
	jmp	.L52	#
.L55:
	.loc 1 204 0
	cmpl	$1, -64(%rbp)	#, start
	jne	.L53	#,
	.loc 1 204 0 is_stmt 0 discriminator 1
	movslq	%ebx, %rax	# dir, D.6191
	leaq	0(,%rax,8), %rdx	#, D.6191
	movq	-72(%rbp), %rax	# tag, tmp289
	leaq	(%rdx,%rax), %r13	#, D.6192
	movslq	%ebx, %rax	# dir, tmp290
	movq	gen_pt(,%rax,8), %rcx	# gen_pt, D.6193
	movl	-60(%rbp), %edx	# parity, tmp291
	movl	-52(%rbp), %eax	# src, tmp292
	movq	%rcx, %r8	# D.6193,
	movl	%edx, %ecx	# tmp291,
	movl	%ebx, %edx	# dir,
	movl	$48, %esi	#,
	movl	%eax, %edi	# tmp292,
	call	start_gather	#
	movq	%rax, 0(%r13)	# D.6194, *_30
	jmp	.L54	#
.L53:
	.loc 1 207 0 is_stmt 1
	movslq	%ebx, %rax	# dir, D.6191
	leaq	0(,%rax,8), %rdx	#, D.6191
	movq	-72(%rbp), %rax	# tag, tmp293
	addq	%rdx, %rax	# D.6191, D.6192
	.loc 1 206 0
	movq	(%rax), %rsi	# *_36, D.6194
	movslq	%ebx, %rax	# dir, tmp294
	movq	gen_pt(,%rax,8), %rcx	# gen_pt, D.6193
	movl	-60(%rbp), %edx	# parity, tmp295
	movl	-52(%rbp), %eax	# src, tmp296
	movq	%rsi, %r9	# D.6194,
	movq	%rcx, %r8	# D.6193,
	movl	%edx, %ecx	# tmp295,
	movl	%ebx, %edx	# dir,
	movl	$48, %esi	#,
	movl	%eax, %edi	# tmp296,
	call	restart_gather	#
.L54:
	.loc 1 202 0
	addl	$1, %ebx	#, dir
.L52:
	.loc 1 202 0 is_stmt 0 discriminator 1
	cmpl	$3, %ebx	#, dir
	jle	.L55	#,
	.loc 1 211 0 is_stmt 1
	movl	$8, %ebx	#, dir
	jmp	.L56	#
.L59:
	.loc 1 212 0
	cmpl	$1, -64(%rbp)	#, start
	jne	.L57	#,
	.loc 1 212 0 is_stmt 0 discriminator 1
	movslq	%ebx, %rax	# dir, D.6191
	leaq	0(,%rax,8), %rdx	#, D.6191
	movq	-72(%rbp), %rax	# tag, tmp297
	leaq	(%rdx,%rax), %r13	#, D.6192
	movslq	%ebx, %rax	# dir, tmp298
	movq	gen_pt(,%rax,8), %rcx	# gen_pt, D.6193
	movl	-60(%rbp), %edx	# parity, tmp299
	movl	-52(%rbp), %eax	# src, tmp300
	movq	%rcx, %r8	# D.6193,
	movl	%edx, %ecx	# tmp299,
	movl	%ebx, %edx	# dir,
	movl	$48, %esi	#,
	movl	%eax, %edi	# tmp300,
	call	start_gather	#
	movq	%rax, 0(%r13)	# D.6194, *_43
	jmp	.L58	#
.L57:
	.loc 1 215 0 is_stmt 1
	movslq	%ebx, %rax	# dir, D.6191
	leaq	0(,%rax,8), %rdx	#, D.6191
	movq	-72(%rbp), %rax	# tag, tmp301
	addq	%rdx, %rax	# D.6191, D.6192
	.loc 1 214 0
	movq	(%rax), %rsi	# *_48, D.6194
	movslq	%ebx, %rax	# dir, tmp302
	movq	gen_pt(,%rax,8), %rcx	# gen_pt, D.6193
	movl	-60(%rbp), %edx	# parity, tmp303
	movl	-52(%rbp), %eax	# src, tmp304
	movq	%rsi, %r9	# D.6194,
	movq	%rcx, %r8	# D.6193,
	movl	%edx, %ecx	# tmp303,
	movl	%ebx, %edx	# dir,
	movl	$48, %esi	#,
	movl	%eax, %edi	# tmp304,
	call	restart_gather	#
.L58:
	.loc 1 211 0
	addl	$1, %ebx	#, dir
.L56:
	.loc 1 211 0 is_stmt 0 discriminator 1
	cmpl	$11, %ebx	#, dir
	jle	.L59	#,
.LBB4:
	.loc 1 219 0 is_stmt 1
	cmpl	$2, %r12d	#, otherparity
	jne	.L60	#,
	.loc 1 219 0 is_stmt 0 discriminator 1
	movl	even_sites_on_node(%rip), %eax	# even_sites_on_node, iftmp.21
	jmp	.L61	#
.L60:
	.loc 1 219 0 discriminator 2
	movl	sites_on_node(%rip), %eax	# sites_on_node, iftmp.21
.L61:
	.loc 1 219 0 discriminator 3
	movl	%eax, %r15d	# iftmp.21, loopend
	cmpl	$1, %r12d	#, otherparity
	jne	.L62	#,
	.loc 1 219 0 discriminator 1
	movl	even_sites_on_node(%rip), %eax	# even_sites_on_node, iftmp.22
	jmp	.L63	#
.L62:
	.loc 1 219 0 discriminator 2
	movl	$0, %eax	#, iftmp.22
.L63:
	.loc 1 219 0 discriminator 3
	movl	%eax, %ebx	# iftmp.22, i
	movq	lattice(%rip), %rax	# lattice, lattice.23
	movslq	%ebx, %rdx	# i, D.6191
	salq	$11, %rdx	#, D.6191
	leaq	(%rax,%rdx), %r12	#, s
	jmp	.L64	#
.L65:
	.loc 1 222 0 is_stmt 1 discriminator 2
	movq	t_fatlink(%rip), %rcx	# t_fatlink, t_fatlink.24
	movslq	%ebx, %rdx	# i, D.6191
	movq	%rdx, %rax	# D.6191, tmp305
	salq	$3, %rax	#, tmp305
	addq	%rdx, %rax	# D.6191, tmp305
	salq	$6, %rax	#, tmp306
	leaq	(%rcx,%rax), %r14	#, fat4
	.loc 1 223 0 discriminator 2
	movq	t_longlink(%rip), %rcx	# t_longlink, t_longlink.25
	movslq	%ebx, %rdx	# i, D.6191
	movq	%rdx, %rax	# D.6191, tmp307
	salq	$3, %rax	#, tmp307
	addq	%rdx, %rax	# D.6191, tmp307
	salq	$6, %rax	#, tmp308
	leaq	(%rcx,%rax), %r13	#, long4
	.loc 1 229 0 discriminator 2
	leaq	1328(%r12), %rax	#, D.6195
	.loc 1 228 0 discriminator 2
	movl	-52(%rbp), %edx	# src, tmp309
	movslq	%edx, %rdx	# tmp309, D.6196
	leaq	(%r12,%rdx), %rcx	#, D.6197
	movq	%rax, %rdx	# D.6195,
	movq	%rcx, %rsi	# D.6197,
	movq	%r14, %rdi	# fat4,
	call	mult_adj_su3_mat_vec_4dir	#
	.loc 1 232 0 discriminator 2
	leaq	1520(%r12), %rax	#, D.6195
	.loc 1 231 0 discriminator 2
	movl	-52(%rbp), %edx	# src, tmp310
	movslq	%edx, %rdx	# tmp310, D.6196
	leaq	(%r12,%rdx), %rcx	#, D.6197
	movq	%rax, %rdx	# D.6195,
	movq	%rcx, %rsi	# D.6197,
	movq	%r13, %rdi	# long4,
	call	mult_adj_su3_mat_vec_4dir	#
	.loc 1 219 0 discriminator 2
	addl	$1, %ebx	#, i
	addq	$2048, %r12	#, s
.L64:
	.loc 1 219 0 is_stmt 0 discriminator 1
	cmpl	%r15d, %ebx	# loopend, i
	jl	.L65	#,
.LBE4:
	.loc 1 236 0 is_stmt 1
	movl	$0, %ebx	#, dir
	jmp	.L66	#
.L69:
	.loc 1 238 0
	cmpl	$1, -64(%rbp)	#, start
	jne	.L67	#,
	.loc 1 238 0 is_stmt 0 discriminator 1
	movl	$7, %eax	#, tmp311
	subl	%ebx, %eax	# dir, D.6198
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6191
	movq	-72(%rbp), %rax	# tag, tmp312
	leaq	(%rdx,%rax), %r12	#, D.6192
	.loc 1 239 0 is_stmt 1 discriminator 1
	movl	$7, %eax	#, tmp313
	subl	%ebx, %eax	# dir, D.6198
	.loc 1 238 0 discriminator 1
	cltq
	movq	gen_pt(,%rax,8), %rcx	# gen_pt, D.6193
	movl	$7, %eax	#, tmp315
	subl	%ebx, %eax	# dir, D.6198
	movl	%eax, %esi	# D.6198, D.6198
	movq	lattice(%rip), %rdi	# lattice, lattice.26
	movslq	%ebx, %rdx	# dir, tmp316
	movq	%rdx, %rax	# tmp316, tmp317
	addq	%rax, %rax	# tmp317
	addq	%rdx, %rax	# tmp316, tmp317
	salq	$4, %rax	#, tmp318
	addq	$1328, %rax	#, tmp319
	addq	%rdi, %rax	# lattice.26, D.6197
	movq	%rax, %rdx	# D.6197, D.6199
	movq	lattice(%rip), %rax	# lattice, lattice.27
	subq	%rax, %rdx	# lattice.28, D.6199
	movq	%rdx, %rax	# D.6199, D.6199
	movl	-60(%rbp), %edx	# parity, tmp320
	movq	%rcx, %r8	# D.6193,
	movl	%edx, %ecx	# tmp320,
	movl	%esi, %edx	# D.6198,
	movl	$48, %esi	#,
	movl	%eax, %edi	# D.6198,
	call	start_gather	#
	movq	%rax, (%r12)	# D.6194, *_82
	jmp	.L68	#
.L67:
	.loc 1 241 0
	movl	$7, %eax	#, tmp321
	subl	%ebx, %eax	# dir, D.6198
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6191
	movq	-72(%rbp), %rax	# tag, tmp322
	addq	%rdx, %rax	# D.6191, D.6192
	.loc 1 240 0
	movq	(%rax), %rdi	# *_97, D.6194
	.loc 1 241 0
	movl	$7, %eax	#, tmp323
	subl	%ebx, %eax	# dir, D.6198
	.loc 1 240 0
	cltq
	movq	gen_pt(,%rax,8), %rcx	# gen_pt, D.6193
	movl	$7, %eax	#, tmp325
	subl	%ebx, %eax	# dir, D.6198
	movl	%eax, %esi	# D.6198, D.6198
	movq	lattice(%rip), %r8	# lattice, lattice.29
	movslq	%ebx, %rdx	# dir, tmp326
	movq	%rdx, %rax	# tmp326, tmp327
	addq	%rax, %rax	# tmp327
	addq	%rdx, %rax	# tmp326, tmp327
	salq	$4, %rax	#, tmp328
	addq	$1328, %rax	#, tmp329
	addq	%r8, %rax	# lattice.29, D.6197
	movq	%rax, %rdx	# D.6197, D.6199
	movq	lattice(%rip), %rax	# lattice, lattice.30
	subq	%rax, %rdx	# lattice.31, D.6199
	movq	%rdx, %rax	# D.6199, D.6199
	movl	-60(%rbp), %edx	# parity, tmp330
	movq	%rdi, %r9	# D.6194,
	movq	%rcx, %r8	# D.6193,
	movl	%edx, %ecx	# tmp330,
	movl	%esi, %edx	# D.6198,
	movl	$48, %esi	#,
	movl	%eax, %edi	# D.6198,
	call	restart_gather	#
.L68:
	.loc 1 236 0
	addl	$1, %ebx	#, dir
.L66:
	.loc 1 236 0 is_stmt 0 discriminator 1
	cmpl	$3, %ebx	#, dir
	jle	.L69	#,
	.loc 1 245 0 is_stmt 1
	movl	$8, %ebx	#, dir
	jmp	.L70	#
.L73:
	.loc 1 247 0
	cmpl	$1, -64(%rbp)	#, start
	jne	.L71	#,
	.loc 1 247 0 is_stmt 0 discriminator 1
	movl	$23, %eax	#, tmp331
	subl	%ebx, %eax	# dir, D.6198
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6191
	movq	-72(%rbp), %rax	# tag, tmp332
	leaq	(%rdx,%rax), %r12	#, D.6192
	.loc 1 249 0 is_stmt 1 discriminator 1
	movl	$23, %eax	#, tmp333
	subl	%ebx, %eax	# dir, D.6198
	.loc 1 248 0 discriminator 1
	cltq
	movq	gen_pt(,%rax,8), %rcx	# gen_pt, D.6193
	movl	$23, %eax	#, tmp335
	subl	%ebx, %eax	# dir, D.6198
	movl	%eax, %esi	# D.6198, D.6198
	movq	lattice(%rip), %rdi	# lattice, lattice.32
	leal	-8(%rbx), %eax	#, D.6198
	movslq	%eax, %rdx	# D.6198, tmp336
	movq	%rdx, %rax	# tmp336, tmp337
	addq	%rax, %rax	# tmp337
	addq	%rdx, %rax	# tmp336, tmp337
	salq	$4, %rax	#, tmp338
	addq	$1520, %rax	#, tmp339
	addq	%rdi, %rax	# lattice.32, D.6197
	movq	%rax, %rdx	# D.6197, D.6199
	movq	lattice(%rip), %rax	# lattice, lattice.33
	subq	%rax, %rdx	# lattice.34, D.6199
	movq	%rdx, %rax	# D.6199, D.6199
	movl	-60(%rbp), %edx	# parity, tmp340
	movq	%rcx, %r8	# D.6193,
	movl	%edx, %ecx	# tmp340,
	movl	%esi, %edx	# D.6198,
	movl	$48, %esi	#,
	movl	%eax, %edi	# D.6198,
	call	start_gather	#
	.loc 1 247 0 discriminator 1
	movq	%rax, (%r12)	# D.6194, *_114
	jmp	.L72	#
.L71:
	.loc 1 252 0
	movl	$23, %eax	#, tmp341
	subl	%ebx, %eax	# dir, D.6198
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6191
	movq	-72(%rbp), %rax	# tag, tmp342
	addq	%rdx, %rax	# D.6191, D.6192
	.loc 1 250 0
	movq	(%rax), %rdi	# *_130, D.6194
	.loc 1 251 0
	movl	$23, %eax	#, tmp343
	subl	%ebx, %eax	# dir, D.6198
	.loc 1 250 0
	cltq
	movq	gen_pt(,%rax,8), %rcx	# gen_pt, D.6193
	movl	$23, %eax	#, tmp345
	subl	%ebx, %eax	# dir, D.6198
	movl	%eax, %esi	# D.6198, D.6198
	movq	lattice(%rip), %r8	# lattice, lattice.35
	leal	-8(%rbx), %eax	#, D.6198
	movslq	%eax, %rdx	# D.6198, tmp346
	movq	%rdx, %rax	# tmp346, tmp347
	addq	%rax, %rax	# tmp347
	addq	%rdx, %rax	# tmp346, tmp347
	salq	$4, %rax	#, tmp348
	addq	$1520, %rax	#, tmp349
	addq	%r8, %rax	# lattice.35, D.6197
	movq	%rax, %rdx	# D.6197, D.6199
	movq	lattice(%rip), %rax	# lattice, lattice.36
	subq	%rax, %rdx	# lattice.37, D.6199
	movq	%rdx, %rax	# D.6199, D.6199
	movl	-60(%rbp), %edx	# parity, tmp350
	movq	%rdi, %r9	# D.6194,
	movq	%rcx, %r8	# D.6193,
	movl	%edx, %ecx	# tmp350,
	movl	%esi, %edx	# D.6198,
	movl	$48, %esi	#,
	movl	%eax, %edi	# D.6198,
	call	restart_gather	#
.L72:
	.loc 1 245 0
	addl	$1, %ebx	#, dir
.L70:
	.loc 1 245 0 is_stmt 0 discriminator 1
	cmpl	$11, %ebx	#, dir
	jle	.L73	#,
	.loc 1 257 0 is_stmt 1
	movl	$0, %ebx	#, dir
	jmp	.L74	#
.L75:
	.loc 1 258 0 discriminator 2
	movslq	%ebx, %rax	# dir, D.6191
	leaq	0(,%rax,8), %rdx	#, D.6191
	movq	-72(%rbp), %rax	# tag, tmp351
	addq	%rdx, %rax	# D.6191, D.6192
	movq	(%rax), %rax	# *_147, D.6194
	movq	%rax, %rdi	# D.6194,
	call	wait_gather	#
	.loc 1 257 0 discriminator 2
	addl	$1, %ebx	#, dir
.L74:
	.loc 1 257 0 is_stmt 0 discriminator 1
	cmpl	$3, %ebx	#, dir
	jle	.L75	#,
	.loc 1 262 0 is_stmt 1
	movl	$8, %ebx	#, dir
	jmp	.L76	#
.L77:
	.loc 1 263 0 discriminator 2
	movslq	%ebx, %rax	# dir, D.6191
	leaq	0(,%rax,8), %rdx	#, D.6191
	movq	-72(%rbp), %rax	# tag, tmp352
	addq	%rdx, %rax	# D.6191, D.6192
	movq	(%rax), %rax	# *_153, D.6194
	movq	%rax, %rdi	# D.6194,
	call	wait_gather	#
	.loc 1 262 0 discriminator 2
	addl	$1, %ebx	#, dir
.L76:
	.loc 1 262 0 is_stmt 0 discriminator 1
	cmpl	$11, %ebx	#, dir
	jle	.L77	#,
	.loc 1 268 0 is_stmt 1
	movl	$0, %ebx	#, dir
	jmp	.L78	#
.L79:
	.loc 1 269 0 discriminator 2
	movl	$7, %eax	#, tmp353
	subl	%ebx, %eax	# dir, D.6198
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6191
	movq	-72(%rbp), %rax	# tag, tmp354
	addq	%rdx, %rax	# D.6191, D.6192
	movq	(%rax), %rax	# *_160, D.6194
	movq	%rax, %rdi	# D.6194,
	call	wait_gather	#
	.loc 1 268 0 discriminator 2
	addl	$1, %ebx	#, dir
.L78:
	.loc 1 268 0 is_stmt 0 discriminator 1
	cmpl	$3, %ebx	#, dir
	jle	.L79	#,
	.loc 1 271 0 is_stmt 1
	movl	$8, %ebx	#, dir
	jmp	.L80	#
.L81:
	.loc 1 272 0 discriminator 2
	movl	$23, %eax	#, tmp355
	subl	%ebx, %eax	# dir, D.6198
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6191
	movq	-72(%rbp), %rax	# tag, tmp356
	addq	%rdx, %rax	# D.6191, D.6192
	movq	(%rax), %rax	# *_167, D.6194
	movq	%rax, %rdi	# D.6194,
	call	wait_gather	#
	.loc 1 271 0 discriminator 2
	addl	$1, %ebx	#, dir
.L80:
	.loc 1 271 0 is_stmt 0 discriminator 1
	cmpl	$11, %ebx	#, dir
	jle	.L81	#,
.LBB5:
	.loc 1 275 0 is_stmt 1
	cmpl	$2, -60(%rbp)	#, parity
	jne	.L82	#,
	.loc 1 275 0 is_stmt 0 discriminator 1
	movl	even_sites_on_node(%rip), %eax	# even_sites_on_node, iftmp.38
	jmp	.L83	#
.L82:
	.loc 1 275 0 discriminator 2
	movl	sites_on_node(%rip), %eax	# sites_on_node, iftmp.38
.L83:
	.loc 1 275 0 discriminator 3
	movl	%eax, %r15d	# iftmp.38, loopend
	cmpl	$1, -60(%rbp)	#, parity
	jne	.L84	#,
	.loc 1 275 0 discriminator 1
	movl	even_sites_on_node(%rip), %eax	# even_sites_on_node, iftmp.39
	jmp	.L85	#
.L84:
	.loc 1 275 0 discriminator 2
	movl	$0, %eax	#, iftmp.39
.L85:
	.loc 1 275 0 discriminator 3
	movl	%eax, %ebx	# iftmp.39, i
	movq	lattice(%rip), %rax	# lattice, lattice.40
	movslq	%ebx, %rdx	# i, D.6191
	salq	$11, %rdx	#, D.6191
	leaq	(%rax,%rdx), %r12	#, s
	jmp	.L86	#
.L87:
	.loc 1 278 0 is_stmt 1 discriminator 2
	movq	t_fatlink(%rip), %rcx	# t_fatlink, t_fatlink.41
	movslq	%ebx, %rdx	# i, D.6191
	movq	%rdx, %rax	# D.6191, tmp357
	salq	$3, %rax	#, tmp357
	addq	%rdx, %rax	# D.6191, tmp357
	salq	$6, %rax	#, tmp358
	leaq	(%rcx,%rax), %r14	#, fat4
	.loc 1 279 0 discriminator 2
	movq	t_longlink(%rip), %rcx	# t_longlink, t_longlink.42
	movslq	%ebx, %rdx	# i, D.6191
	movq	%rdx, %rax	# D.6191, tmp359
	salq	$3, %rax	#, tmp359
	addq	%rdx, %rax	# D.6191, tmp359
	salq	$6, %rax	#, tmp360
	leaq	(%rcx,%rax), %r13	#, long4
	.loc 1 284 0 discriminator 2
	movl	-56(%rbp), %eax	# dest, tmp361
	cltq
	leaq	(%r12,%rax), %r8	#, D.6197
	.loc 1 286 0 discriminator 2
	movq	gen_pt+24(%rip), %rax	# gen_pt, D.6193
	movslq	%ebx, %rdx	# i, D.6191
	salq	$3, %rdx	#, D.6191
	addq	%rdx, %rax	# D.6191, D.6193
	.loc 1 284 0 discriminator 2
	movq	(%rax), %rsi	# *_194, D.6200
	.loc 1 286 0 discriminator 2
	movq	gen_pt+16(%rip), %rax	# gen_pt, D.6193
	movslq	%ebx, %rdx	# i, D.6191
	salq	$3, %rdx	#, D.6191
	addq	%rdx, %rax	# D.6191, D.6193
	.loc 1 284 0 discriminator 2
	movq	(%rax), %rcx	# *_199, D.6200
	.loc 1 285 0 discriminator 2
	movq	gen_pt+8(%rip), %rax	# gen_pt, D.6193
	movslq	%ebx, %rdx	# i, D.6191
	salq	$3, %rdx	#, D.6191
	addq	%rdx, %rax	# D.6191, D.6193
	.loc 1 284 0 discriminator 2
	movq	(%rax), %rdx	# *_204, D.6200
	.loc 1 285 0 discriminator 2
	movq	gen_pt(%rip), %rax	# gen_pt, D.6193
	movslq	%ebx, %rdi	# i, D.6191
	salq	$3, %rdi	#, D.6191
	addq	%rdi, %rax	# D.6191, D.6193
	.loc 1 284 0 discriminator 2
	movq	(%rax), %rax	# *_209, D.6200
	movq	%r8, %r9	# D.6197,
	movq	%rsi, %r8	# D.6200,
	movq	%rax, %rsi	# D.6200,
	movq	%r14, %rdi	# fat4,
	call	mult_su3_mat_vec_sum_4dir	#
	.loc 1 288 0 discriminator 2
	leaq	1712(%r12), %rdi	#, D.6197
	.loc 1 290 0 discriminator 2
	movq	gen_pt+88(%rip), %rax	# gen_pt, D.6193
	movslq	%ebx, %rdx	# i, D.6191
	salq	$3, %rdx	#, D.6191
	addq	%rdx, %rax	# D.6191, D.6193
	.loc 1 288 0 discriminator 2
	movq	(%rax), %rsi	# *_215, D.6200
	.loc 1 290 0 discriminator 2
	movq	gen_pt+80(%rip), %rax	# gen_pt, D.6193
	movslq	%ebx, %rdx	# i, D.6191
	salq	$3, %rdx	#, D.6191
	addq	%rdx, %rax	# D.6191, D.6193
	.loc 1 288 0 discriminator 2
	movq	(%rax), %rcx	# *_220, D.6200
	.loc 1 289 0 discriminator 2
	movq	gen_pt+72(%rip), %rax	# gen_pt, D.6193
	movslq	%ebx, %rdx	# i, D.6191
	salq	$3, %rdx	#, D.6191
	addq	%rdx, %rax	# D.6191, D.6193
	.loc 1 288 0 discriminator 2
	movq	(%rax), %rdx	# *_225, D.6200
	.loc 1 289 0 discriminator 2
	movq	gen_pt+64(%rip), %rax	# gen_pt, D.6193
	movslq	%ebx, %r8	# i, D.6191
	salq	$3, %r8	#, D.6191
	addq	%r8, %rax	# D.6191, D.6193
	.loc 1 288 0 discriminator 2
	movq	(%rax), %rax	# *_230, D.6200
	movq	%rdi, %r9	# D.6197,
	movq	%rsi, %r8	# D.6200,
	movq	%rax, %rsi	# D.6200,
	movq	%r13, %rdi	# long4,
	call	mult_su3_mat_vec_sum_4dir	#
	.loc 1 297 0 discriminator 2
	movq	gen_pt+32(%rip), %rax	# gen_pt, D.6193
	movslq	%ebx, %rdx	# i, D.6191
	salq	$3, %rdx	#, D.6191
	addq	%rdx, %rax	# D.6191, D.6193
	.loc 1 293 0 discriminator 2
	movq	(%rax), %rsi	# *_235, D.6200
	.loc 1 296 0 discriminator 2
	movq	gen_pt+40(%rip), %rax	# gen_pt, D.6193
	movslq	%ebx, %rdx	# i, D.6191
	salq	$3, %rdx	#, D.6191
	addq	%rdx, %rax	# D.6191, D.6193
	.loc 1 293 0 discriminator 2
	movq	(%rax), %rcx	# *_240, D.6200
	.loc 1 295 0 discriminator 2
	movq	gen_pt+48(%rip), %rax	# gen_pt, D.6193
	movslq	%ebx, %rdx	# i, D.6191
	salq	$3, %rdx	#, D.6191
	addq	%rdx, %rax	# D.6191, D.6193
	.loc 1 293 0 discriminator 2
	movq	(%rax), %rdx	# *_245, D.6200
	.loc 1 294 0 discriminator 2
	movq	gen_pt+56(%rip), %rax	# gen_pt, D.6193
	movslq	%ebx, %rdi	# i, D.6191
	salq	$3, %rdi	#, D.6191
	addq	%rdi, %rax	# D.6191, D.6193
	.loc 1 293 0 discriminator 2
	movq	(%rax), %rax	# *_250, D.6200
	movl	-56(%rbp), %edi	# dest, tmp362
	movslq	%edi, %rdi	# tmp362, D.6196
	addq	%r12, %rdi	# s, D.6197
	movq	%rsi, %r8	# D.6200,
	movq	%rax, %rsi	# D.6200,
	call	sub_four_su3_vecs	#
	.loc 1 302 0 discriminator 2
	movq	gen_pt+96(%rip), %rax	# gen_pt, D.6193
	movslq	%ebx, %rdx	# i, D.6191
	salq	$3, %rdx	#, D.6191
	addq	%rdx, %rax	# D.6191, D.6193
	.loc 1 298 0 discriminator 2
	movq	(%rax), %rdi	# *_257, D.6200
	.loc 1 301 0 discriminator 2
	movq	gen_pt+104(%rip), %rax	# gen_pt, D.6193
	movslq	%ebx, %rdx	# i, D.6191
	salq	$3, %rdx	#, D.6191
	addq	%rdx, %rax	# D.6191, D.6193
	.loc 1 298 0 discriminator 2
	movq	(%rax), %rcx	# *_262, D.6200
	.loc 1 300 0 discriminator 2
	movq	gen_pt+112(%rip), %rax	# gen_pt, D.6193
	movslq	%ebx, %rdx	# i, D.6191
	salq	$3, %rdx	#, D.6191
	addq	%rdx, %rax	# D.6191, D.6193
	.loc 1 298 0 discriminator 2
	movq	(%rax), %rdx	# *_267, D.6200
	.loc 1 299 0 discriminator 2
	movq	gen_pt+120(%rip), %rax	# gen_pt, D.6193
	movslq	%ebx, %rsi	# i, D.6191
	salq	$3, %rsi	#, D.6191
	addq	%rsi, %rax	# D.6191, D.6193
	.loc 1 298 0 discriminator 2
	movq	(%rax), %rsi	# *_272, D.6200
	leaq	1712(%r12), %rax	#, D.6197
	movq	%rdi, %r8	# D.6200,
	movq	%rax, %rdi	# D.6197,
	call	sub_four_su3_vecs	#
	.loc 1 304 0 discriminator 2
	movl	-56(%rbp), %eax	# dest, tmp363
	cltq
	leaq	(%r12,%rax), %rdx	#, D.6197
	leaq	1712(%r12), %rax	#, D.6197
	movl	-56(%rbp), %ecx	# dest, tmp364
	movslq	%ecx, %rcx	# tmp364, D.6196
	addq	%r12, %rcx	# s, D.6197
	movq	%rax, %rsi	# D.6197,
	movq	%rcx, %rdi	# D.6197,
	call	add_su3_vector	#
	.loc 1 275 0 discriminator 2
	addl	$1, %ebx	#, i
	addq	$2048, %r12	#, s
.L86:
	.loc 1 275 0 is_stmt 0 discriminator 1
	cmpl	%r15d, %ebx	# loopend, i
	jl	.L87	#,
.LBE5:
	.loc 1 308 0 is_stmt 1
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%r15	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	dslash_fn_special, .-dslash_fn_special
	.globl	dslash_fn_on_temp
	.type	dslash_fn_on_temp, @function
dslash_fn_on_temp:
.LFB6:
	.loc 1 310 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r14	#
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	subq	$240, %rsp	#,
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -248(%rbp)	# src, src
	movq	%rsi, -256(%rbp)	# dest, dest
	movl	%edx, -260(%rbp)	# parity, parity
	.loc 1 318 0
	movl	$0, %ebx	#, dir
	jmp	.L89	#
.L90:
	.loc 1 320 0 discriminator 2
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.43
	cltq
	movl	$48, %esi	#,
	movq	%rax, %rdi	# D.6201,
	call	calloc	#
	movq	%rax, %rdx	# tmp279, D.6202
	movslq	%ebx, %rax	# dir, tmp280
	movq	%rdx, -224(%rbp,%rax,8)	# D.6202, tempvec
	.loc 1 321 0 discriminator 2
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.44
	cltq
	movl	$48, %esi	#,
	movq	%rax, %rdi	# D.6201,
	call	calloc	#
	movq	%rax, %rdx	# tmp281, D.6202
	movslq	%ebx, %rax	# dir, tmp282
	movq	%rdx, -192(%rbp,%rax,8)	# D.6202, templongvec
	.loc 1 318 0 discriminator 2
	addl	$1, %ebx	#, dir
.L89:
	.loc 1 318 0 is_stmt 0 discriminator 1
	cmpl	$3, %ebx	#, dir
	jle	.L90	#,
	.loc 1 323 0 is_stmt 1
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.45
	cltq
	movl	$48, %esi	#,
	movq	%rax, %rdi	# D.6201,
	call	calloc	#
	movq	%rax, -232(%rbp)	# tmp283, templongv1
	.loc 1 325 0
	movl	valid_longlinks(%rip), %eax	# valid_longlinks, valid_longlinks.46
	testl	%eax, %eax	# valid_longlinks.46
	jne	.L91	#,
	.loc 1 325 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#,
	call	load_longlinks	#
.L91:
	.loc 1 326 0 is_stmt 1
	movl	valid_fatlinks(%rip), %eax	# valid_fatlinks, valid_fatlinks.47
	testl	%eax, %eax	# valid_fatlinks.47
	jne	.L92	#,
	.loc 1 326 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#,
	call	load_fatlinks	#
.L92:
	.loc 1 327 0 is_stmt 1
	movl	-260(%rbp), %eax	# parity, parity
	cmpl	$2, %eax	#, parity
	je	.L94	#,
	cmpl	$3, %eax	#, parity
	je	.L95	#,
	cmpl	$1, %eax	#, parity
	je	.L96	#,
	jmp	.L93	#
.L94:
	.loc 1 329 0
	movl	$1, %r12d	#, otherparity
	jmp	.L93	#
.L96:
	.loc 1 330 0
	movl	$2, %r12d	#, otherparity
	jmp	.L93	#
.L95:
	.loc 1 331 0
	movl	$3, %r12d	#, otherparity
	nop
.L93:
	.loc 1 336 0
	movl	$0, %ebx	#, dir
	jmp	.L97	#
.L98:
	.loc 1 337 0 discriminator 2
	movslq	%ebx, %rax	# dir, tmp285
	movq	gen_pt(,%rax,8), %rcx	# gen_pt, D.6203
	movl	-260(%rbp), %edx	# parity, tmp286
	movq	-248(%rbp), %rax	# src, tmp287
	movq	%rcx, %r8	# D.6203,
	movl	%edx, %ecx	# tmp286,
	movl	%ebx, %edx	# dir,
	movl	$48, %esi	#,
	movq	%rax, %rdi	# tmp287,
	call	start_gather_from_temp	#
	movslq	%ebx, %rdx	# dir, tmp288
	movq	%rax, -160(%rbp,%rdx,8)	# D.6204, tag
	.loc 1 339 0 discriminator 2
	leal	8(%rbx), %r13d	#, D.6205
	.loc 1 341 0 discriminator 2
	leal	8(%rbx), %eax	#, D.6205
	.loc 1 339 0 discriminator 2
	cltq
	movq	gen_pt(,%rax,8), %rsi	# gen_pt, D.6203
	leal	8(%rbx), %edx	#, D.6205
	movl	-260(%rbp), %ecx	# parity, tmp290
	movq	-248(%rbp), %rax	# src, tmp291
	movq	%rsi, %r8	# D.6203,
	movl	$48, %esi	#,
	movq	%rax, %rdi	# tmp291,
	call	start_gather_from_temp	#
	movslq	%r13d, %rdx	# D.6205, tmp292
	movq	%rax, -160(%rbp,%rdx,8)	# D.6204, tag
	.loc 1 336 0 discriminator 2
	addl	$1, %ebx	#, dir
.L97:
	.loc 1 336 0 is_stmt 0 discriminator 1
	cmpl	$3, %ebx	#, dir
	jle	.L98	#,
.LBB6:
	.loc 1 346 0 is_stmt 1
	cmpl	$2, %r12d	#, otherparity
	jne	.L99	#,
	.loc 1 346 0 is_stmt 0 discriminator 1
	movl	even_sites_on_node(%rip), %eax	# even_sites_on_node, iftmp.48
	jmp	.L100	#
.L99:
	.loc 1 346 0 discriminator 2
	movl	sites_on_node(%rip), %eax	# sites_on_node, iftmp.48
.L100:
	.loc 1 346 0 discriminator 3
	movl	%eax, %r14d	# iftmp.48, loopend
	cmpl	$1, %r12d	#, otherparity
	jne	.L101	#,
	.loc 1 346 0 discriminator 1
	movl	even_sites_on_node(%rip), %eax	# even_sites_on_node, iftmp.49
	jmp	.L102	#
.L101:
	.loc 1 346 0 discriminator 2
	movl	$0, %eax	#, iftmp.49
.L102:
	.loc 1 346 0 discriminator 3
	movl	%eax, %ebx	# iftmp.49, i
	jmp	.L103	#
.L104:
	.loc 1 349 0 is_stmt 1 discriminator 2
	movq	t_fatlink(%rip), %rcx	# t_fatlink, t_fatlink.51
	movslq	%ebx, %rdx	# i, D.6201
	movq	%rdx, %rax	# D.6201, tmp293
	salq	$3, %rax	#, tmp293
	addq	%rdx, %rax	# D.6201, tmp293
	salq	$6, %rax	#, tmp294
	leaq	(%rcx,%rax), %r13	#, fat4
	.loc 1 350 0 discriminator 2
	movq	t_longlink(%rip), %rcx	# t_longlink, t_longlink.52
	movslq	%ebx, %rdx	# i, D.6201
	movq	%rdx, %rax	# D.6201, tmp295
	salq	$3, %rax	#, tmp295
	addq	%rdx, %rax	# D.6201, tmp295
	salq	$6, %rax	#, tmp296
	leaq	(%rcx,%rax), %r12	#, long4
	.loc 1 357 0 discriminator 2
	movq	-200(%rbp), %rcx	# tempvec, D.6206
	.loc 1 355 0 discriminator 2
	movslq	%ebx, %rdx	# i, D.6201
	.loc 1 357 0 discriminator 2
	movq	%rdx, %rax	# D.6201, tmp297
	addq	%rax, %rax	# tmp297
	addq	%rdx, %rax	# D.6201, tmp297
	salq	$4, %rax	#, tmp298
	.loc 1 355 0 discriminator 2
	leaq	(%rcx,%rax), %r8	#, D.6206
	.loc 1 356 0 discriminator 2
	movq	-208(%rbp), %rcx	# tempvec, D.6206
	.loc 1 355 0 discriminator 2
	movslq	%ebx, %rdx	# i, D.6201
	.loc 1 356 0 discriminator 2
	movq	%rdx, %rax	# D.6201, tmp299
	addq	%rax, %rax	# tmp299
	addq	%rdx, %rax	# D.6201, tmp299
	salq	$4, %rax	#, tmp300
	.loc 1 355 0 discriminator 2
	leaq	(%rcx,%rax), %rdi	#, D.6206
	.loc 1 356 0 discriminator 2
	movq	-216(%rbp), %rcx	# tempvec, D.6206
	.loc 1 355 0 discriminator 2
	movslq	%ebx, %rdx	# i, D.6201
	.loc 1 356 0 discriminator 2
	movq	%rdx, %rax	# D.6201, tmp301
	addq	%rax, %rax	# tmp301
	addq	%rdx, %rax	# D.6201, tmp301
	salq	$4, %rax	#, tmp302
	.loc 1 355 0 discriminator 2
	addq	%rax, %rcx	# D.6201, D.6206
	movq	-224(%rbp), %rsi	# tempvec, D.6206
	movslq	%ebx, %rdx	# i, D.6201
	movq	%rdx, %rax	# D.6201, tmp303
	addq	%rax, %rax	# tmp303
	addq	%rdx, %rax	# D.6201, tmp303
	salq	$4, %rax	#, tmp304
	addq	%rax, %rsi	# D.6201, D.6206
	movslq	%ebx, %rdx	# i, D.6201
	movq	%rdx, %rax	# D.6201, tmp305
	addq	%rax, %rax	# tmp305
	addq	%rdx, %rax	# D.6201, tmp305
	salq	$4, %rax	#, tmp306
	movq	%rax, %rdx	# tmp305, D.6201
	movq	-248(%rbp), %rax	# src, tmp307
	addq	%rdx, %rax	# D.6201, D.6206
	movq	%r8, %r9	# D.6206,
	movq	%rdi, %r8	# D.6206,
	movq	%rsi, %rdx	# D.6206,
	movq	%rax, %rsi	# D.6206,
	movq	%r13, %rdi	# fat4,
	call	mult_adj_su3_mat_4vec	#
	.loc 1 361 0 discriminator 2
	movq	-168(%rbp), %rcx	# templongvec, D.6206
	.loc 1 359 0 discriminator 2
	movslq	%ebx, %rdx	# i, D.6201
	.loc 1 361 0 discriminator 2
	movq	%rdx, %rax	# D.6201, tmp308
	addq	%rax, %rax	# tmp308
	addq	%rdx, %rax	# D.6201, tmp308
	salq	$4, %rax	#, tmp309
	.loc 1 359 0 discriminator 2
	leaq	(%rcx,%rax), %r8	#, D.6206
	.loc 1 360 0 discriminator 2
	movq	-176(%rbp), %rcx	# templongvec, D.6206
	.loc 1 359 0 discriminator 2
	movslq	%ebx, %rdx	# i, D.6201
	.loc 1 360 0 discriminator 2
	movq	%rdx, %rax	# D.6201, tmp310
	addq	%rax, %rax	# tmp310
	addq	%rdx, %rax	# D.6201, tmp310
	salq	$4, %rax	#, tmp311
	.loc 1 359 0 discriminator 2
	leaq	(%rcx,%rax), %rdi	#, D.6206
	.loc 1 360 0 discriminator 2
	movq	-184(%rbp), %rcx	# templongvec, D.6206
	.loc 1 359 0 discriminator 2
	movslq	%ebx, %rdx	# i, D.6201
	.loc 1 360 0 discriminator 2
	movq	%rdx, %rax	# D.6201, tmp312
	addq	%rax, %rax	# tmp312
	addq	%rdx, %rax	# D.6201, tmp312
	salq	$4, %rax	#, tmp313
	.loc 1 359 0 discriminator 2
	addq	%rax, %rcx	# D.6201, D.6206
	movq	-192(%rbp), %rsi	# templongvec, D.6206
	movslq	%ebx, %rdx	# i, D.6201
	movq	%rdx, %rax	# D.6201, tmp314
	addq	%rax, %rax	# tmp314
	addq	%rdx, %rax	# D.6201, tmp314
	salq	$4, %rax	#, tmp315
	addq	%rax, %rsi	# D.6201, D.6206
	movslq	%ebx, %rdx	# i, D.6201
	movq	%rdx, %rax	# D.6201, tmp316
	addq	%rax, %rax	# tmp316
	addq	%rdx, %rax	# D.6201, tmp316
	salq	$4, %rax	#, tmp317
	movq	%rax, %rdx	# tmp316, D.6201
	movq	-248(%rbp), %rax	# src, tmp318
	addq	%rdx, %rax	# D.6201, D.6206
	movq	%r8, %r9	# D.6206,
	movq	%rdi, %r8	# D.6206,
	movq	%rsi, %rdx	# D.6206,
	movq	%rax, %rsi	# D.6206,
	movq	%r12, %rdi	# long4,
	call	mult_adj_su3_mat_4vec	#
	.loc 1 346 0 discriminator 2
	addl	$1, %ebx	#, i
.L103:
	.loc 1 346 0 is_stmt 0 discriminator 1
	cmpl	%r14d, %ebx	# loopend, i
	jl	.L104	#,
.LBE6:
	.loc 1 365 0 is_stmt 1
	movl	$0, %ebx	#, dir
	jmp	.L105	#
.L106:
	.loc 1 366 0 discriminator 2
	movl	$7, %eax	#, tmp319
	subl	%ebx, %eax	# dir, D.6205
	movl	%eax, %r12d	# D.6205, D.6205
	.loc 1 367 0 discriminator 2
	movl	$7, %eax	#, tmp320
	subl	%ebx, %eax	# dir, D.6205
	.loc 1 366 0 discriminator 2
	cltq
	movq	gen_pt(,%rax,8), %rcx	# gen_pt, D.6203
	movl	$7, %eax	#, tmp322
	subl	%ebx, %eax	# dir, D.6205
	movl	%eax, %esi	# D.6205, D.6205
	movslq	%ebx, %rax	# dir, tmp323
	movq	-224(%rbp,%rax,8), %rax	# tempvec, D.6206
	movl	-260(%rbp), %edx	# parity, tmp324
	movq	%rcx, %r8	# D.6203,
	movl	%edx, %ecx	# tmp324,
	movl	%esi, %edx	# D.6205,
	movl	$48, %esi	#,
	movq	%rax, %rdi	# D.6206,
	call	start_gather_from_temp	#
	movslq	%r12d, %rdx	# D.6205, tmp325
	movq	%rax, -160(%rbp,%rdx,8)	# D.6204, tag
	.loc 1 365 0 discriminator 2
	addl	$1, %ebx	#, dir
.L105:
	.loc 1 365 0 is_stmt 0 discriminator 1
	cmpl	$3, %ebx	#, dir
	jle	.L106	#,
	.loc 1 371 0 is_stmt 1
	movl	$8, %ebx	#, dir
	jmp	.L107	#
.L108:
	.loc 1 372 0 discriminator 2
	movl	$23, %eax	#, tmp326
	subl	%ebx, %eax	# dir, D.6205
	movl	%eax, %r12d	# D.6205, D.6205
	.loc 1 373 0 discriminator 2
	movl	$23, %eax	#, tmp327
	subl	%ebx, %eax	# dir, D.6205
	.loc 1 372 0 discriminator 2
	cltq
	movq	gen_pt(,%rax,8), %rcx	# gen_pt, D.6203
	movl	$23, %eax	#, tmp329
	subl	%ebx, %eax	# dir, D.6205
	movl	%eax, %esi	# D.6205, D.6205
	leal	-8(%rbx), %eax	#, D.6205
	cltq
	movq	-192(%rbp,%rax,8), %rax	# templongvec, D.6206
	movl	-260(%rbp), %edx	# parity, tmp331
	movq	%rcx, %r8	# D.6203,
	movl	%edx, %ecx	# tmp331,
	movl	%esi, %edx	# D.6205,
	movl	$48, %esi	#,
	movq	%rax, %rdi	# D.6206,
	call	start_gather_from_temp	#
	movslq	%r12d, %rdx	# D.6205, tmp332
	movq	%rax, -160(%rbp,%rdx,8)	# D.6204, tag
	.loc 1 371 0 discriminator 2
	addl	$1, %ebx	#, dir
.L107:
	.loc 1 371 0 is_stmt 0 discriminator 1
	cmpl	$11, %ebx	#, dir
	jle	.L108	#,
	.loc 1 379 0 is_stmt 1
	movl	$0, %ebx	#, dir
	jmp	.L109	#
.L110:
	.loc 1 380 0 discriminator 2
	movslq	%ebx, %rax	# dir, tmp333
	movq	-160(%rbp,%rax,8), %rax	# tag, D.6204
	movq	%rax, %rdi	# D.6204,
	call	wait_gather	#
	.loc 1 381 0 discriminator 2
	leal	8(%rbx), %eax	#, D.6205
	cltq
	movq	-160(%rbp,%rax,8), %rax	# tag, D.6204
	movq	%rax, %rdi	# D.6204,
	call	wait_gather	#
	.loc 1 379 0 discriminator 2
	addl	$1, %ebx	#, dir
.L109:
	.loc 1 379 0 is_stmt 0 discriminator 1
	cmpl	$3, %ebx	#, dir
	jle	.L110	#,
.LBB7:
	.loc 1 384 0 is_stmt 1
	cmpl	$2, -260(%rbp)	#, parity
	jne	.L111	#,
	.loc 1 384 0 is_stmt 0 discriminator 1
	movl	even_sites_on_node(%rip), %eax	# even_sites_on_node, iftmp.53
	jmp	.L112	#
.L111:
	.loc 1 384 0 discriminator 2
	movl	sites_on_node(%rip), %eax	# sites_on_node, iftmp.53
.L112:
	.loc 1 384 0 discriminator 3
	movl	%eax, %r14d	# iftmp.53, loopend
	cmpl	$1, -260(%rbp)	#, parity
	jne	.L113	#,
	.loc 1 384 0 discriminator 1
	movl	even_sites_on_node(%rip), %eax	# even_sites_on_node, iftmp.54
	jmp	.L114	#
.L113:
	.loc 1 384 0 discriminator 2
	movl	$0, %eax	#, iftmp.54
.L114:
	.loc 1 384 0 discriminator 3
	movl	%eax, %ebx	# iftmp.54, i
	jmp	.L115	#
.L116:
	.loc 1 387 0 is_stmt 1 discriminator 2
	movq	t_fatlink(%rip), %rcx	# t_fatlink, t_fatlink.56
	movslq	%ebx, %rdx	# i, D.6201
	movq	%rdx, %rax	# D.6201, tmp335
	salq	$3, %rax	#, tmp335
	addq	%rdx, %rax	# D.6201, tmp335
	salq	$6, %rax	#, tmp336
	leaq	(%rcx,%rax), %r13	#, fat4
	.loc 1 388 0 discriminator 2
	movq	t_longlink(%rip), %rcx	# t_longlink, t_longlink.57
	movslq	%ebx, %rdx	# i, D.6201
	movq	%rdx, %rax	# D.6201, tmp337
	salq	$3, %rax	#, tmp337
	addq	%rdx, %rax	# D.6201, tmp337
	salq	$6, %rax	#, tmp338
	leaq	(%rcx,%rax), %r12	#, long4
	.loc 1 393 0 discriminator 2
	movslq	%ebx, %rdx	# i, D.6201
	.loc 1 396 0 discriminator 2
	movq	%rdx, %rax	# D.6201, tmp339
	addq	%rax, %rax	# tmp339
	addq	%rdx, %rax	# D.6201, tmp339
	salq	$4, %rax	#, tmp340
	movq	%rax, %rdx	# tmp339, D.6201
	.loc 1 393 0 discriminator 2
	movq	-256(%rbp), %rax	# dest, tmp341
	leaq	(%rdx,%rax), %r8	#, D.6206
	.loc 1 395 0 discriminator 2
	movq	gen_pt+24(%rip), %rax	# gen_pt, D.6203
	movslq	%ebx, %rdx	# i, D.6201
	salq	$3, %rdx	#, D.6201
	addq	%rdx, %rax	# D.6201, D.6203
	.loc 1 393 0 discriminator 2
	movq	(%rax), %rsi	# *_157, D.6207
	.loc 1 395 0 discriminator 2
	movq	gen_pt+16(%rip), %rax	# gen_pt, D.6203
	movslq	%ebx, %rdx	# i, D.6201
	salq	$3, %rdx	#, D.6201
	addq	%rdx, %rax	# D.6201, D.6203
	.loc 1 393 0 discriminator 2
	movq	(%rax), %rcx	# *_162, D.6207
	.loc 1 394 0 discriminator 2
	movq	gen_pt+8(%rip), %rax	# gen_pt, D.6203
	movslq	%ebx, %rdx	# i, D.6201
	salq	$3, %rdx	#, D.6201
	addq	%rdx, %rax	# D.6201, D.6203
	.loc 1 393 0 discriminator 2
	movq	(%rax), %rdx	# *_167, D.6207
	.loc 1 394 0 discriminator 2
	movq	gen_pt(%rip), %rax	# gen_pt, D.6203
	movslq	%ebx, %rdi	# i, D.6201
	salq	$3, %rdi	#, D.6201
	addq	%rdi, %rax	# D.6201, D.6203
	.loc 1 393 0 discriminator 2
	movq	(%rax), %rax	# *_172, D.6207
	movq	%r8, %r9	# D.6206,
	movq	%rsi, %r8	# D.6207,
	movq	%rax, %rsi	# D.6207,
	movq	%r13, %rdi	# fat4,
	call	mult_su3_mat_vec_sum_4dir	#
	.loc 1 398 0 discriminator 2
	movslq	%ebx, %rdx	# i, D.6201
	.loc 1 401 0 discriminator 2
	movq	%rdx, %rax	# D.6201, tmp342
	addq	%rax, %rax	# tmp342
	addq	%rdx, %rax	# D.6201, tmp342
	salq	$4, %rax	#, tmp343
	movq	%rax, %rdx	# tmp342, D.6201
	.loc 1 398 0 discriminator 2
	movq	-232(%rbp), %rax	# templongv1, tmp344
	leaq	(%rdx,%rax), %r8	#, D.6206
	.loc 1 400 0 discriminator 2
	movq	gen_pt+88(%rip), %rax	# gen_pt, D.6203
	movslq	%ebx, %rdx	# i, D.6201
	salq	$3, %rdx	#, D.6201
	addq	%rdx, %rax	# D.6201, D.6203
	.loc 1 398 0 discriminator 2
	movq	(%rax), %rsi	# *_180, D.6207
	.loc 1 400 0 discriminator 2
	movq	gen_pt+80(%rip), %rax	# gen_pt, D.6203
	movslq	%ebx, %rdx	# i, D.6201
	salq	$3, %rdx	#, D.6201
	addq	%rdx, %rax	# D.6201, D.6203
	.loc 1 398 0 discriminator 2
	movq	(%rax), %rcx	# *_185, D.6207
	.loc 1 399 0 discriminator 2
	movq	gen_pt+72(%rip), %rax	# gen_pt, D.6203
	movslq	%ebx, %rdx	# i, D.6201
	salq	$3, %rdx	#, D.6201
	addq	%rdx, %rax	# D.6201, D.6203
	.loc 1 398 0 discriminator 2
	movq	(%rax), %rdx	# *_190, D.6207
	.loc 1 399 0 discriminator 2
	movq	gen_pt+64(%rip), %rax	# gen_pt, D.6203
	movslq	%ebx, %rdi	# i, D.6201
	salq	$3, %rdi	#, D.6201
	addq	%rdi, %rax	# D.6201, D.6203
	.loc 1 398 0 discriminator 2
	movq	(%rax), %rax	# *_195, D.6207
	movq	%r8, %r9	# D.6206,
	movq	%rsi, %r8	# D.6207,
	movq	%rax, %rsi	# D.6207,
	movq	%r12, %rdi	# long4,
	call	mult_su3_mat_vec_sum_4dir	#
	.loc 1 384 0 discriminator 2
	addl	$1, %ebx	#, i
.L115:
	.loc 1 384 0 is_stmt 0 discriminator 1
	cmpl	%r14d, %ebx	# loopend, i
	jl	.L116	#,
.LBE7:
	.loc 1 406 0 is_stmt 1
	movl	$0, %ebx	#, dir
	jmp	.L117	#
.L118:
	.loc 1 407 0 discriminator 2
	movl	$7, %eax	#, tmp345
	subl	%ebx, %eax	# dir, D.6205
	cltq
	movq	-160(%rbp,%rax,8), %rax	# tag, D.6204
	movq	%rax, %rdi	# D.6204,
	call	wait_gather	#
	.loc 1 406 0 discriminator 2
	addl	$1, %ebx	#, dir
.L117:
	.loc 1 406 0 is_stmt 0 discriminator 1
	cmpl	$3, %ebx	#, dir
	jle	.L118	#,
	.loc 1 409 0 is_stmt 1
	movl	$8, %ebx	#, dir
	jmp	.L119	#
.L120:
	.loc 1 410 0 discriminator 2
	movl	$23, %eax	#, tmp347
	subl	%ebx, %eax	# dir, D.6205
	cltq
	movq	-160(%rbp,%rax,8), %rax	# tag, D.6204
	movq	%rax, %rdi	# D.6204,
	call	wait_gather	#
	.loc 1 409 0 discriminator 2
	addl	$1, %ebx	#, dir
.L119:
	.loc 1 409 0 is_stmt 0 discriminator 1
	cmpl	$11, %ebx	#, dir
	jle	.L120	#,
.LBB8:
	.loc 1 413 0 is_stmt 1
	cmpl	$2, -260(%rbp)	#, parity
	jne	.L121	#,
	.loc 1 413 0 is_stmt 0 discriminator 1
	movl	even_sites_on_node(%rip), %eax	# even_sites_on_node, iftmp.58
	jmp	.L122	#
.L121:
	.loc 1 413 0 discriminator 2
	movl	sites_on_node(%rip), %eax	# sites_on_node, iftmp.58
.L122:
	.loc 1 413 0 discriminator 3
	movl	%eax, %r12d	# iftmp.58, loopend
	cmpl	$1, -260(%rbp)	#, parity
	jne	.L123	#,
	.loc 1 413 0 discriminator 1
	movl	even_sites_on_node(%rip), %eax	# even_sites_on_node, iftmp.59
	jmp	.L124	#
.L123:
	.loc 1 413 0 discriminator 2
	movl	$0, %eax	#, iftmp.59
.L124:
	.loc 1 413 0 discriminator 3
	movl	%eax, %ebx	# iftmp.59, i
	jmp	.L125	#
.L126:
	.loc 1 419 0 is_stmt 1 discriminator 2
	movq	gen_pt+32(%rip), %rax	# gen_pt, D.6203
	movslq	%ebx, %rdx	# i, D.6201
	salq	$3, %rdx	#, D.6201
	addq	%rdx, %rax	# D.6201, D.6203
	.loc 1 415 0 discriminator 2
	movq	(%rax), %r8	# *_220, D.6207
	.loc 1 418 0 discriminator 2
	movq	gen_pt+40(%rip), %rax	# gen_pt, D.6203
	movslq	%ebx, %rdx	# i, D.6201
	salq	$3, %rdx	#, D.6201
	addq	%rdx, %rax	# D.6201, D.6203
	.loc 1 415 0 discriminator 2
	movq	(%rax), %rcx	# *_225, D.6207
	.loc 1 417 0 discriminator 2
	movq	gen_pt+48(%rip), %rax	# gen_pt, D.6203
	movslq	%ebx, %rdx	# i, D.6201
	salq	$3, %rdx	#, D.6201
	addq	%rdx, %rax	# D.6201, D.6203
	.loc 1 415 0 discriminator 2
	movq	(%rax), %rdi	# *_230, D.6207
	.loc 1 416 0 discriminator 2
	movq	gen_pt+56(%rip), %rax	# gen_pt, D.6203
	movslq	%ebx, %rdx	# i, D.6201
	salq	$3, %rdx	#, D.6201
	addq	%rdx, %rax	# D.6201, D.6203
	.loc 1 415 0 discriminator 2
	movq	(%rax), %rsi	# *_235, D.6207
	movslq	%ebx, %rdx	# i, D.6201
	movq	%rdx, %rax	# D.6201, tmp349
	addq	%rax, %rax	# tmp349
	addq	%rdx, %rax	# D.6201, tmp349
	salq	$4, %rax	#, tmp350
	movq	%rax, %rdx	# tmp349, D.6201
	movq	-256(%rbp), %rax	# dest, tmp351
	addq	%rdx, %rax	# D.6201, D.6206
	movq	%rdi, %rdx	# D.6207,
	movq	%rax, %rdi	# D.6206,
	call	sub_four_su3_vecs	#
	.loc 1 424 0 discriminator 2
	movq	gen_pt+96(%rip), %rax	# gen_pt, D.6203
	movslq	%ebx, %rdx	# i, D.6201
	salq	$3, %rdx	#, D.6201
	addq	%rdx, %rax	# D.6201, D.6203
	.loc 1 420 0 discriminator 2
	movq	(%rax), %r8	# *_243, D.6207
	.loc 1 423 0 discriminator 2
	movq	gen_pt+104(%rip), %rax	# gen_pt, D.6203
	movslq	%ebx, %rdx	# i, D.6201
	salq	$3, %rdx	#, D.6201
	addq	%rdx, %rax	# D.6201, D.6203
	.loc 1 420 0 discriminator 2
	movq	(%rax), %rcx	# *_248, D.6207
	.loc 1 422 0 discriminator 2
	movq	gen_pt+112(%rip), %rax	# gen_pt, D.6203
	movslq	%ebx, %rdx	# i, D.6201
	salq	$3, %rdx	#, D.6201
	addq	%rdx, %rax	# D.6201, D.6203
	.loc 1 420 0 discriminator 2
	movq	(%rax), %rdi	# *_253, D.6207
	.loc 1 421 0 discriminator 2
	movq	gen_pt+120(%rip), %rax	# gen_pt, D.6203
	movslq	%ebx, %rdx	# i, D.6201
	salq	$3, %rdx	#, D.6201
	addq	%rdx, %rax	# D.6201, D.6203
	.loc 1 420 0 discriminator 2
	movq	(%rax), %rsi	# *_258, D.6207
	movslq	%ebx, %rdx	# i, D.6201
	movq	%rdx, %rax	# D.6201, tmp352
	addq	%rax, %rax	# tmp352
	addq	%rdx, %rax	# D.6201, tmp352
	salq	$4, %rax	#, tmp353
	movq	%rax, %rdx	# tmp352, D.6201
	movq	-232(%rbp), %rax	# templongv1, tmp354
	addq	%rdx, %rax	# D.6201, D.6206
	movq	%rdi, %rdx	# D.6207,
	movq	%rax, %rdi	# D.6206,
	call	sub_four_su3_vecs	#
	.loc 1 426 0 discriminator 2
	movslq	%ebx, %rdx	# i, D.6201
	movq	%rdx, %rax	# D.6201, tmp355
	addq	%rax, %rax	# tmp355
	addq	%rdx, %rax	# D.6201, tmp355
	salq	$4, %rax	#, tmp356
	movq	%rax, %rdx	# tmp355, D.6201
	movq	-256(%rbp), %rax	# dest, tmp357
	leaq	(%rdx,%rax), %rsi	#, D.6206
	movslq	%ebx, %rdx	# i, D.6201
	movq	%rdx, %rax	# D.6201, tmp358
	addq	%rax, %rax	# tmp358
	addq	%rdx, %rax	# D.6201, tmp358
	salq	$4, %rax	#, tmp359
	movq	%rax, %rdx	# tmp358, D.6201
	movq	-232(%rbp), %rax	# templongv1, tmp360
	leaq	(%rdx,%rax), %rcx	#, D.6206
	movslq	%ebx, %rdx	# i, D.6201
	movq	%rdx, %rax	# D.6201, tmp361
	addq	%rax, %rax	# tmp361
	addq	%rdx, %rax	# D.6201, tmp361
	salq	$4, %rax	#, tmp362
	movq	%rax, %rdx	# tmp361, D.6201
	movq	-256(%rbp), %rax	# dest, tmp363
	addq	%rdx, %rax	# D.6201, D.6206
	movq	%rsi, %rdx	# D.6206,
	movq	%rcx, %rsi	# D.6206,
	movq	%rax, %rdi	# D.6206,
	call	add_su3_vector	#
	.loc 1 413 0 discriminator 2
	addl	$1, %ebx	#, i
.L125:
	.loc 1 413 0 is_stmt 0 discriminator 1
	cmpl	%r12d, %ebx	# loopend, i
	jl	.L126	#,
.LBE8:
	.loc 1 430 0 is_stmt 1
	movl	$0, %ebx	#, dir
	jmp	.L127	#
.L128:
	.loc 1 431 0 discriminator 2
	movslq	%ebx, %rax	# dir, tmp364
	movq	-160(%rbp,%rax,8), %rax	# tag, D.6204
	movq	%rax, %rdi	# D.6204,
	call	cleanup_gather	#
	.loc 1 432 0 discriminator 2
	movl	$7, %eax	#, tmp365
	subl	%ebx, %eax	# dir, D.6205
	cltq
	movq	-160(%rbp,%rax,8), %rax	# tag, D.6204
	movq	%rax, %rdi	# D.6204,
	call	cleanup_gather	#
	.loc 1 430 0 discriminator 2
	addl	$1, %ebx	#, dir
.L127:
	.loc 1 430 0 is_stmt 0 discriminator 1
	cmpl	$3, %ebx	#, dir
	jle	.L128	#,
	.loc 1 435 0 is_stmt 1
	movl	$8, %ebx	#, dir
	jmp	.L129	#
.L130:
	.loc 1 436 0 discriminator 2
	movslq	%ebx, %rax	# dir, tmp367
	movq	-160(%rbp,%rax,8), %rax	# tag, D.6204
	movq	%rax, %rdi	# D.6204,
	call	cleanup_gather	#
	.loc 1 437 0 discriminator 2
	movl	$23, %eax	#, tmp368
	subl	%ebx, %eax	# dir, D.6205
	cltq
	movq	-160(%rbp,%rax,8), %rax	# tag, D.6204
	movq	%rax, %rdi	# D.6204,
	call	cleanup_gather	#
	.loc 1 435 0 discriminator 2
	addl	$1, %ebx	#, dir
.L129:
	.loc 1 435 0 is_stmt 0 discriminator 1
	cmpl	$11, %ebx	#, dir
	jle	.L130	#,
	.loc 1 440 0 is_stmt 1
	movl	$0, %ebx	#, dir
	jmp	.L131	#
.L132:
	.loc 1 441 0 discriminator 2
	movslq	%ebx, %rax	# dir, tmp370
	movq	-224(%rbp,%rax,8), %rax	# tempvec, D.6206
	movq	%rax, %rdi	# D.6206,
	call	free	#
	.loc 1 442 0 discriminator 2
	movslq	%ebx, %rax	# dir, tmp371
	movq	-192(%rbp,%rax,8), %rax	# templongvec, D.6206
	movq	%rax, %rdi	# D.6206,
	call	free	#
	.loc 1 440 0 discriminator 2
	addl	$1, %ebx	#, dir
.L131:
	.loc 1 440 0 is_stmt 0 discriminator 1
	cmpl	$3, %ebx	#, dir
	jle	.L132	#,
	.loc 1 444 0 is_stmt 1
	movq	-232(%rbp), %rax	# templongv1, tmp372
	movq	%rax, %rdi	# tmp372,
	call	free	#
	.loc 1 445 0
	addq	$240, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	dslash_fn_on_temp, .-dslash_fn_on_temp
	.globl	dslash_fn_on_temp_special
	.type	dslash_fn_on_temp_special, @function
dslash_fn_on_temp_special:
.LFB7:
	.loc 1 453 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r14	#
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	subq	$32, %rsp	#,
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -40(%rbp)	# src, src
	movq	%rsi, -48(%rbp)	# dest, dest
	movl	%edx, -52(%rbp)	# parity, parity
	movq	%rcx, -64(%rbp)	# tag, tag
	movl	%r8d, -56(%rbp)	# start, start
	.loc 1 460 0
	movl	temp_not_allocated(%rip), %eax	# temp_not_allocated, temp_not_allocated.61
	testl	%eax, %eax	# temp_not_allocated.61
	je	.L134	#,
	.loc 1 462 0
	movl	$0, %ebx	#, dir
	jmp	.L135	#
.L136:
	.loc 1 463 0 discriminator 2
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.62
	cltq
	movl	$48, %esi	#,
	movq	%rax, %rdi	# D.6208,
	call	calloc	#
	movq	%rax, %rdx	# tmp333, D.6209
	movslq	%ebx, %rax	# dir, tmp334
	movq	%rdx, temp(,%rax,8)	# D.6209, temp
	.loc 1 464 0 discriminator 2
	leal	4(%rbx), %r13d	#, D.6210
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.63
	cltq
	movl	$48, %esi	#,
	movq	%rax, %rdi	# D.6208,
	call	calloc	#
	movq	%rax, %rdx	# tmp335, D.6209
	movslq	%r13d, %rax	# D.6210, tmp336
	movq	%rdx, temp(,%rax,8)	# D.6209, temp
	.loc 1 462 0 discriminator 2
	addl	$1, %ebx	#, dir
.L135:
	.loc 1 462 0 is_stmt 0 discriminator 1
	cmpl	$3, %ebx	#, dir
	jle	.L136	#,
	.loc 1 466 0 is_stmt 1
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.64
	cltq
	movl	$48, %esi	#,
	movq	%rax, %rdi	# D.6208,
	call	calloc	#
	movq	%rax, temp+64(%rip)	# D.6209, temp
	.loc 1 467 0
	movl	$0, temp_not_allocated(%rip)	#, temp_not_allocated
.L134:
	.loc 1 471 0
	movl	valid_longlinks(%rip), %eax	# valid_longlinks, valid_longlinks.65
	testl	%eax, %eax	# valid_longlinks.65
	jne	.L137	#,
	.loc 1 471 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#,
	call	load_longlinks	#
.L137:
	.loc 1 472 0 is_stmt 1
	movl	valid_fatlinks(%rip), %eax	# valid_fatlinks, valid_fatlinks.66
	testl	%eax, %eax	# valid_fatlinks.66
	jne	.L138	#,
	.loc 1 472 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#,
	call	load_fatlinks	#
.L138:
	.loc 1 474 0 is_stmt 1
	movl	-52(%rbp), %eax	# parity, parity
	cmpl	$2, %eax	#, parity
	je	.L140	#,
	cmpl	$3, %eax	#, parity
	je	.L141	#,
	cmpl	$1, %eax	#, parity
	je	.L142	#,
	jmp	.L139	#
.L140:
	.loc 1 476 0
	movl	$1, %r12d	#, otherparity
	jmp	.L139	#
.L142:
	.loc 1 477 0
	movl	$2, %r12d	#, otherparity
	jmp	.L139	#
.L141:
	.loc 1 478 0
	movl	$3, %r12d	#, otherparity
	nop
.L139:
	.loc 1 483 0
	movl	$0, %ebx	#, dir
	jmp	.L143	#
.L146:
	.loc 1 484 0
	cmpl	$1, -56(%rbp)	#, start
	jne	.L144	#,
	.loc 1 486 0
	movslq	%ebx, %rax	# dir, D.6208
	leaq	0(,%rax,8), %rdx	#, D.6208
	movq	-64(%rbp), %rax	# tag, tmp339
	leaq	(%rdx,%rax), %r13	#, D.6211
	movslq	%ebx, %rax	# dir, tmp340
	movq	gen_pt(,%rax,8), %rcx	# gen_pt, D.6212
	movl	-52(%rbp), %edx	# parity, tmp341
	movq	-40(%rbp), %rax	# src, tmp342
	movq	%rcx, %r8	# D.6212,
	movl	%edx, %ecx	# tmp341,
	movl	%ebx, %edx	# dir,
	movl	$48, %esi	#,
	movq	%rax, %rdi	# tmp342,
	call	start_gather_from_temp	#
	movq	%rax, 0(%r13)	# D.6213, *_46
	.loc 1 488 0
	movslq	%ebx, %rax	# dir, D.6214
	addq	$8, %rax	#, D.6214
	leaq	0(,%rax,8), %rdx	#, D.6214
	movq	-64(%rbp), %rax	# tag, tmp343
	leaq	(%rdx,%rax), %r13	#, D.6211
	.loc 1 490 0
	leal	8(%rbx), %eax	#, D.6210
	.loc 1 488 0
	cltq
	movq	gen_pt(,%rax,8), %rsi	# gen_pt, D.6212
	leal	8(%rbx), %edx	#, D.6210
	movl	-52(%rbp), %ecx	# parity, tmp345
	movq	-40(%rbp), %rax	# src, tmp346
	movq	%rsi, %r8	# D.6212,
	movl	$48, %esi	#,
	movq	%rax, %rdi	# tmp346,
	call	start_gather_from_temp	#
	movq	%rax, 0(%r13)	# D.6213, *_53
	jmp	.L145	#
.L144:
	.loc 1 495 0
	movslq	%ebx, %rax	# dir, D.6208
	leaq	0(,%rax,8), %rdx	#, D.6208
	movq	-64(%rbp), %rax	# tag, tmp347
	addq	%rdx, %rax	# D.6208, D.6211
	.loc 1 494 0
	movq	(%rax), %rsi	# *_60, D.6213
	movslq	%ebx, %rax	# dir, tmp348
	movq	gen_pt(,%rax,8), %rcx	# gen_pt, D.6212
	movl	-52(%rbp), %edx	# parity, tmp349
	movq	-40(%rbp), %rax	# src, tmp350
	movq	%rsi, %r9	# D.6213,
	movq	%rcx, %r8	# D.6212,
	movl	%edx, %ecx	# tmp349,
	movl	%ebx, %edx	# dir,
	movl	$48, %esi	#,
	movq	%rax, %rdi	# tmp350,
	call	restart_gather_from_temp	#
	.loc 1 497 0
	movslq	%ebx, %rax	# dir, D.6214
	addq	$8, %rax	#, D.6214
	leaq	0(,%rax,8), %rdx	#, D.6214
	movq	-64(%rbp), %rax	# tag, tmp351
	addq	%rdx, %rax	# D.6214, D.6211
	.loc 1 496 0
	movq	(%rax), %rdi	# *_66, D.6213
	.loc 1 497 0
	leal	8(%rbx), %eax	#, D.6210
	.loc 1 496 0
	cltq
	movq	gen_pt(,%rax,8), %rsi	# gen_pt, D.6212
	leal	8(%rbx), %edx	#, D.6210
	movl	-52(%rbp), %ecx	# parity, tmp353
	movq	-40(%rbp), %rax	# src, tmp354
	movq	%rdi, %r9	# D.6213,
	movq	%rsi, %r8	# D.6212,
	movl	$48, %esi	#,
	movq	%rax, %rdi	# tmp354,
	call	restart_gather_from_temp	#
.L145:
	.loc 1 483 0
	addl	$1, %ebx	#, dir
.L143:
	.loc 1 483 0 is_stmt 0 discriminator 1
	cmpl	$3, %ebx	#, dir
	jle	.L146	#,
.LBB9:
	.loc 1 503 0 is_stmt 1
	cmpl	$2, %r12d	#, otherparity
	jne	.L147	#,
	.loc 1 503 0 is_stmt 0 discriminator 1
	movl	even_sites_on_node(%rip), %eax	# even_sites_on_node, iftmp.67
	jmp	.L148	#
.L147:
	.loc 1 503 0 discriminator 2
	movl	sites_on_node(%rip), %eax	# sites_on_node, iftmp.67
.L148:
	.loc 1 503 0 discriminator 3
	movl	%eax, %r14d	# iftmp.67, loopend
	cmpl	$1, %r12d	#, otherparity
	jne	.L149	#,
	.loc 1 503 0 discriminator 1
	movl	even_sites_on_node(%rip), %eax	# even_sites_on_node, iftmp.68
	jmp	.L150	#
.L149:
	.loc 1 503 0 discriminator 2
	movl	$0, %eax	#, iftmp.68
.L150:
	.loc 1 503 0 discriminator 3
	movl	%eax, %ebx	# iftmp.68, i
	jmp	.L151	#
.L152:
	.loc 1 506 0 is_stmt 1 discriminator 2
	movq	t_fatlink(%rip), %rcx	# t_fatlink, t_fatlink.70
	movslq	%ebx, %rdx	# i, D.6208
	movq	%rdx, %rax	# D.6208, tmp355
	salq	$3, %rax	#, tmp355
	addq	%rdx, %rax	# D.6208, tmp355
	salq	$6, %rax	#, tmp356
	leaq	(%rcx,%rax), %r13	#, fat4
	.loc 1 507 0 discriminator 2
	movq	t_longlink(%rip), %rcx	# t_longlink, t_longlink.71
	movslq	%ebx, %rdx	# i, D.6208
	movq	%rdx, %rax	# D.6208, tmp357
	salq	$3, %rax	#, tmp357
	addq	%rdx, %rax	# D.6208, tmp357
	salq	$6, %rax	#, tmp358
	leaq	(%rcx,%rax), %r12	#, long4
	.loc 1 513 0 discriminator 2
	movq	temp+24(%rip), %rcx	# temp, D.6215
	.loc 1 512 0 discriminator 2
	movslq	%ebx, %rdx	# i, D.6208
	.loc 1 513 0 discriminator 2
	movq	%rdx, %rax	# D.6208, tmp359
	addq	%rax, %rax	# tmp359
	addq	%rdx, %rax	# D.6208, tmp359
	salq	$4, %rax	#, tmp360
	.loc 1 512 0 discriminator 2
	leaq	(%rcx,%rax), %r8	#, D.6215
	.loc 1 513 0 discriminator 2
	movq	temp+16(%rip), %rcx	# temp, D.6215
	.loc 1 512 0 discriminator 2
	movslq	%ebx, %rdx	# i, D.6208
	.loc 1 513 0 discriminator 2
	movq	%rdx, %rax	# D.6208, tmp361
	addq	%rax, %rax	# tmp361
	addq	%rdx, %rax	# D.6208, tmp361
	salq	$4, %rax	#, tmp362
	.loc 1 512 0 discriminator 2
	leaq	(%rcx,%rax), %rdi	#, D.6215
	.loc 1 513 0 discriminator 2
	movq	temp+8(%rip), %rcx	# temp, D.6215
	.loc 1 512 0 discriminator 2
	movslq	%ebx, %rdx	# i, D.6208
	.loc 1 513 0 discriminator 2
	movq	%rdx, %rax	# D.6208, tmp363
	addq	%rax, %rax	# tmp363
	addq	%rdx, %rax	# D.6208, tmp363
	salq	$4, %rax	#, tmp364
	.loc 1 512 0 discriminator 2
	addq	%rax, %rcx	# D.6208, D.6215
	movq	temp(%rip), %rsi	# temp, D.6215
	movslq	%ebx, %rdx	# i, D.6208
	movq	%rdx, %rax	# D.6208, tmp365
	addq	%rax, %rax	# tmp365
	addq	%rdx, %rax	# D.6208, tmp365
	salq	$4, %rax	#, tmp366
	addq	%rax, %rsi	# D.6208, D.6215
	movslq	%ebx, %rdx	# i, D.6208
	movq	%rdx, %rax	# D.6208, tmp367
	addq	%rax, %rax	# tmp367
	addq	%rdx, %rax	# D.6208, tmp367
	salq	$4, %rax	#, tmp368
	movq	%rax, %rdx	# tmp367, D.6208
	movq	-40(%rbp), %rax	# src, tmp369
	addq	%rdx, %rax	# D.6208, D.6215
	movq	%r8, %r9	# D.6215,
	movq	%rdi, %r8	# D.6215,
	movq	%rsi, %rdx	# D.6215,
	movq	%rax, %rsi	# D.6215,
	movq	%r13, %rdi	# fat4,
	call	mult_adj_su3_mat_4vec	#
	.loc 1 516 0 discriminator 2
	movq	temp+56(%rip), %rcx	# temp, D.6215
	.loc 1 515 0 discriminator 2
	movslq	%ebx, %rdx	# i, D.6208
	.loc 1 516 0 discriminator 2
	movq	%rdx, %rax	# D.6208, tmp370
	addq	%rax, %rax	# tmp370
	addq	%rdx, %rax	# D.6208, tmp370
	salq	$4, %rax	#, tmp371
	.loc 1 515 0 discriminator 2
	leaq	(%rcx,%rax), %r8	#, D.6215
	.loc 1 516 0 discriminator 2
	movq	temp+48(%rip), %rcx	# temp, D.6215
	.loc 1 515 0 discriminator 2
	movslq	%ebx, %rdx	# i, D.6208
	.loc 1 516 0 discriminator 2
	movq	%rdx, %rax	# D.6208, tmp372
	addq	%rax, %rax	# tmp372
	addq	%rdx, %rax	# D.6208, tmp372
	salq	$4, %rax	#, tmp373
	.loc 1 515 0 discriminator 2
	leaq	(%rcx,%rax), %rdi	#, D.6215
	.loc 1 516 0 discriminator 2
	movq	temp+40(%rip), %rcx	# temp, D.6215
	.loc 1 515 0 discriminator 2
	movslq	%ebx, %rdx	# i, D.6208
	.loc 1 516 0 discriminator 2
	movq	%rdx, %rax	# D.6208, tmp374
	addq	%rax, %rax	# tmp374
	addq	%rdx, %rax	# D.6208, tmp374
	salq	$4, %rax	#, tmp375
	.loc 1 515 0 discriminator 2
	addq	%rax, %rcx	# D.6208, D.6215
	movq	temp+32(%rip), %rsi	# temp, D.6215
	movslq	%ebx, %rdx	# i, D.6208
	movq	%rdx, %rax	# D.6208, tmp376
	addq	%rax, %rax	# tmp376
	addq	%rdx, %rax	# D.6208, tmp376
	salq	$4, %rax	#, tmp377
	addq	%rax, %rsi	# D.6208, D.6215
	movslq	%ebx, %rdx	# i, D.6208
	movq	%rdx, %rax	# D.6208, tmp378
	addq	%rax, %rax	# tmp378
	addq	%rdx, %rax	# D.6208, tmp378
	salq	$4, %rax	#, tmp379
	movq	%rax, %rdx	# tmp378, D.6208
	movq	-40(%rbp), %rax	# src, tmp380
	addq	%rdx, %rax	# D.6208, D.6215
	movq	%r8, %r9	# D.6215,
	movq	%rdi, %r8	# D.6215,
	movq	%rsi, %rdx	# D.6215,
	movq	%rax, %rsi	# D.6215,
	movq	%r12, %rdi	# long4,
	call	mult_adj_su3_mat_4vec	#
	.loc 1 503 0 discriminator 2
	addl	$1, %ebx	#, i
.L151:
	.loc 1 503 0 is_stmt 0 discriminator 1
	cmpl	%r14d, %ebx	# loopend, i
	jl	.L152	#,
.LBE9:
	.loc 1 520 0 is_stmt 1
	movl	$0, %ebx	#, dir
	jmp	.L153	#
.L156:
	.loc 1 521 0
	cmpl	$1, -56(%rbp)	#, start
	jne	.L154	#,
	.loc 1 521 0 is_stmt 0 discriminator 1
	movl	$7, %eax	#, tmp381
	subl	%ebx, %eax	# dir, D.6210
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6208
	movq	-64(%rbp), %rax	# tag, tmp382
	leaq	(%rdx,%rax), %r12	#, D.6211
	.loc 1 522 0 is_stmt 1 discriminator 1
	movl	$7, %eax	#, tmp383
	subl	%ebx, %eax	# dir, D.6210
	.loc 1 521 0 discriminator 1
	cltq
	movq	gen_pt(,%rax,8), %rcx	# gen_pt, D.6212
	movl	$7, %eax	#, tmp385
	subl	%ebx, %eax	# dir, D.6210
	movl	%eax, %esi	# D.6210, D.6210
	movslq	%ebx, %rax	# dir, tmp386
	movq	temp(,%rax,8), %rax	# temp, D.6215
	movl	-52(%rbp), %edx	# parity, tmp387
	movq	%rcx, %r8	# D.6212,
	movl	%edx, %ecx	# tmp387,
	movl	%esi, %edx	# D.6210,
	movl	$48, %esi	#,
	movq	%rax, %rdi	# D.6215,
	call	start_gather_from_temp	#
	movq	%rax, (%r12)	# D.6213, *_134
	jmp	.L155	#
.L154:
	.loc 1 524 0
	movl	$7, %eax	#, tmp388
	subl	%ebx, %eax	# dir, D.6210
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6208
	movq	-64(%rbp), %rax	# tag, tmp389
	addq	%rdx, %rax	# D.6208, D.6211
	.loc 1 523 0
	movq	(%rax), %rdi	# *_143, D.6213
	.loc 1 524 0
	movl	$7, %eax	#, tmp390
	subl	%ebx, %eax	# dir, D.6210
	.loc 1 523 0
	cltq
	movq	gen_pt(,%rax,8), %rcx	# gen_pt, D.6212
	movl	$7, %eax	#, tmp392
	subl	%ebx, %eax	# dir, D.6210
	movl	%eax, %esi	# D.6210, D.6210
	movslq	%ebx, %rax	# dir, tmp393
	movq	temp(,%rax,8), %rax	# temp, D.6215
	movl	-52(%rbp), %edx	# parity, tmp394
	movq	%rdi, %r9	# D.6213,
	movq	%rcx, %r8	# D.6212,
	movl	%edx, %ecx	# tmp394,
	movl	%esi, %edx	# D.6210,
	movl	$48, %esi	#,
	movq	%rax, %rdi	# D.6215,
	call	restart_gather_from_temp	#
.L155:
	.loc 1 520 0
	addl	$1, %ebx	#, dir
.L153:
	.loc 1 520 0 is_stmt 0 discriminator 1
	cmpl	$3, %ebx	#, dir
	jle	.L156	#,
	.loc 1 528 0 is_stmt 1
	movl	$8, %ebx	#, dir
	jmp	.L157	#
.L160:
	.loc 1 529 0
	cmpl	$1, -56(%rbp)	#, start
	jne	.L158	#,
	.loc 1 529 0 is_stmt 0 discriminator 1
	movl	$23, %eax	#, tmp395
	subl	%ebx, %eax	# dir, D.6210
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6208
	movq	-64(%rbp), %rax	# tag, tmp396
	leaq	(%rdx,%rax), %r12	#, D.6211
	.loc 1 531 0 is_stmt 1 discriminator 1
	movl	$23, %eax	#, tmp397
	subl	%ebx, %eax	# dir, D.6210
	.loc 1 529 0 discriminator 1
	cltq
	movq	gen_pt(,%rax,8), %rcx	# gen_pt, D.6212
	movl	$23, %eax	#, tmp399
	subl	%ebx, %eax	# dir, D.6210
	movl	%eax, %esi	# D.6210, D.6210
	.loc 1 530 0 discriminator 1
	leal	-4(%rbx), %eax	#, D.6210
	cltq
	movq	temp(,%rax,8), %rax	# temp, D.6215
	.loc 1 529 0 discriminator 1
	movl	-52(%rbp), %edx	# parity, tmp401
	movq	%rcx, %r8	# D.6212,
	movl	%edx, %ecx	# tmp401,
	movl	%esi, %edx	# D.6210,
	movl	$48, %esi	#,
	movq	%rax, %rdi	# D.6215,
	call	start_gather_from_temp	#
	movq	%rax, (%r12)	# D.6213, *_154
	jmp	.L159	#
.L158:
	.loc 1 534 0
	movl	$23, %eax	#, tmp402
	subl	%ebx, %eax	# dir, D.6210
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6208
	movq	-64(%rbp), %rax	# tag, tmp403
	addq	%rdx, %rax	# D.6208, D.6211
	.loc 1 532 0
	movq	(%rax), %rdi	# *_164, D.6213
	.loc 1 534 0
	movl	$23, %eax	#, tmp404
	subl	%ebx, %eax	# dir, D.6210
	.loc 1 532 0
	cltq
	movq	gen_pt(,%rax,8), %rcx	# gen_pt, D.6212
	movl	$23, %eax	#, tmp406
	subl	%ebx, %eax	# dir, D.6210
	movl	%eax, %esi	# D.6210, D.6210
	leal	-4(%rbx), %eax	#, D.6210
	cltq
	movq	temp(,%rax,8), %rax	# temp, D.6215
	movl	-52(%rbp), %edx	# parity, tmp408
	movq	%rdi, %r9	# D.6213,
	movq	%rcx, %r8	# D.6212,
	movl	%edx, %ecx	# tmp408,
	movl	%esi, %edx	# D.6210,
	movl	$48, %esi	#,
	movq	%rax, %rdi	# D.6215,
	call	restart_gather_from_temp	#
.L159:
	.loc 1 528 0
	addl	$1, %ebx	#, dir
.L157:
	.loc 1 528 0 is_stmt 0 discriminator 1
	cmpl	$11, %ebx	#, dir
	jle	.L160	#,
	.loc 1 540 0 is_stmt 1
	movl	$0, %ebx	#, dir
	jmp	.L161	#
.L162:
	.loc 1 541 0 discriminator 2
	movslq	%ebx, %rax	# dir, D.6208
	leaq	0(,%rax,8), %rdx	#, D.6208
	movq	-64(%rbp), %rax	# tag, tmp409
	addq	%rdx, %rax	# D.6208, D.6211
	movq	(%rax), %rax	# *_175, D.6213
	movq	%rax, %rdi	# D.6213,
	call	wait_gather	#
	.loc 1 542 0 discriminator 2
	movslq	%ebx, %rax	# dir, D.6214
	addq	$8, %rax	#, D.6214
	leaq	0(,%rax,8), %rdx	#, D.6214
	movq	-64(%rbp), %rax	# tag, tmp410
	addq	%rdx, %rax	# D.6214, D.6211
	movq	(%rax), %rax	# *_180, D.6213
	movq	%rax, %rdi	# D.6213,
	call	wait_gather	#
	.loc 1 540 0 discriminator 2
	addl	$1, %ebx	#, dir
.L161:
	.loc 1 540 0 is_stmt 0 discriminator 1
	cmpl	$3, %ebx	#, dir
	jle	.L162	#,
.LBB10:
	.loc 1 545 0 is_stmt 1
	cmpl	$2, -52(%rbp)	#, parity
	jne	.L163	#,
	.loc 1 545 0 is_stmt 0 discriminator 1
	movl	even_sites_on_node(%rip), %eax	# even_sites_on_node, iftmp.72
	jmp	.L164	#
.L163:
	.loc 1 545 0 discriminator 2
	movl	sites_on_node(%rip), %eax	# sites_on_node, iftmp.72
.L164:
	.loc 1 545 0 discriminator 3
	movl	%eax, %r14d	# iftmp.72, loopend
	cmpl	$1, -52(%rbp)	#, parity
	jne	.L165	#,
	.loc 1 545 0 discriminator 1
	movl	even_sites_on_node(%rip), %eax	# even_sites_on_node, iftmp.73
	jmp	.L166	#
.L165:
	.loc 1 545 0 discriminator 2
	movl	$0, %eax	#, iftmp.73
.L166:
	.loc 1 545 0 discriminator 3
	movl	%eax, %ebx	# iftmp.73, i
	jmp	.L167	#
.L168:
	.loc 1 548 0 is_stmt 1 discriminator 2
	movq	t_fatlink(%rip), %rcx	# t_fatlink, t_fatlink.75
	movslq	%ebx, %rdx	# i, D.6208
	movq	%rdx, %rax	# D.6208, tmp411
	salq	$3, %rax	#, tmp411
	addq	%rdx, %rax	# D.6208, tmp411
	salq	$6, %rax	#, tmp412
	leaq	(%rcx,%rax), %r13	#, fat4
	.loc 1 549 0 discriminator 2
	movq	t_longlink(%rip), %rcx	# t_longlink, t_longlink.76
	movslq	%ebx, %rdx	# i, D.6208
	movq	%rdx, %rax	# D.6208, tmp413
	salq	$3, %rax	#, tmp413
	addq	%rdx, %rax	# D.6208, tmp413
	salq	$6, %rax	#, tmp414
	leaq	(%rcx,%rax), %r12	#, long4
	.loc 1 554 0 discriminator 2
	movslq	%ebx, %rdx	# i, D.6208
	.loc 1 557 0 discriminator 2
	movq	%rdx, %rax	# D.6208, tmp415
	addq	%rax, %rax	# tmp415
	addq	%rdx, %rax	# D.6208, tmp415
	salq	$4, %rax	#, tmp416
	movq	%rax, %rdx	# tmp415, D.6208
	.loc 1 554 0 discriminator 2
	movq	-48(%rbp), %rax	# dest, tmp417
	leaq	(%rdx,%rax), %r8	#, D.6215
	.loc 1 556 0 discriminator 2
	movq	gen_pt+24(%rip), %rax	# gen_pt, D.6212
	movslq	%ebx, %rdx	# i, D.6208
	salq	$3, %rdx	#, D.6208
	addq	%rdx, %rax	# D.6208, D.6212
	.loc 1 554 0 discriminator 2
	movq	(%rax), %rsi	# *_208, D.6216
	.loc 1 556 0 discriminator 2
	movq	gen_pt+16(%rip), %rax	# gen_pt, D.6212
	movslq	%ebx, %rdx	# i, D.6208
	salq	$3, %rdx	#, D.6208
	addq	%rdx, %rax	# D.6208, D.6212
	.loc 1 554 0 discriminator 2
	movq	(%rax), %rcx	# *_213, D.6216
	.loc 1 555 0 discriminator 2
	movq	gen_pt+8(%rip), %rax	# gen_pt, D.6212
	movslq	%ebx, %rdx	# i, D.6208
	salq	$3, %rdx	#, D.6208
	addq	%rdx, %rax	# D.6208, D.6212
	.loc 1 554 0 discriminator 2
	movq	(%rax), %rdx	# *_218, D.6216
	.loc 1 555 0 discriminator 2
	movq	gen_pt(%rip), %rax	# gen_pt, D.6212
	movslq	%ebx, %rdi	# i, D.6208
	salq	$3, %rdi	#, D.6208
	addq	%rdi, %rax	# D.6208, D.6212
	.loc 1 554 0 discriminator 2
	movq	(%rax), %rax	# *_223, D.6216
	movq	%r8, %r9	# D.6215,
	movq	%rsi, %r8	# D.6216,
	movq	%rax, %rsi	# D.6216,
	movq	%r13, %rdi	# fat4,
	call	mult_su3_mat_vec_sum_4dir	#
	.loc 1 562 0 discriminator 2
	movq	temp+64(%rip), %rcx	# temp, D.6215
	.loc 1 559 0 discriminator 2
	movslq	%ebx, %rdx	# i, D.6208
	.loc 1 562 0 discriminator 2
	movq	%rdx, %rax	# D.6208, tmp418
	addq	%rax, %rax	# tmp418
	addq	%rdx, %rax	# D.6208, tmp418
	salq	$4, %rax	#, tmp419
	.loc 1 559 0 discriminator 2
	leaq	(%rcx,%rax), %r8	#, D.6215
	.loc 1 561 0 discriminator 2
	movq	gen_pt+88(%rip), %rax	# gen_pt, D.6212
	movslq	%ebx, %rdx	# i, D.6208
	salq	$3, %rdx	#, D.6208
	addq	%rdx, %rax	# D.6208, D.6212
	.loc 1 559 0 discriminator 2
	movq	(%rax), %rsi	# *_232, D.6216
	.loc 1 561 0 discriminator 2
	movq	gen_pt+80(%rip), %rax	# gen_pt, D.6212
	movslq	%ebx, %rdx	# i, D.6208
	salq	$3, %rdx	#, D.6208
	addq	%rdx, %rax	# D.6208, D.6212
	.loc 1 559 0 discriminator 2
	movq	(%rax), %rcx	# *_237, D.6216
	.loc 1 560 0 discriminator 2
	movq	gen_pt+72(%rip), %rax	# gen_pt, D.6212
	movslq	%ebx, %rdx	# i, D.6208
	salq	$3, %rdx	#, D.6208
	addq	%rdx, %rax	# D.6208, D.6212
	.loc 1 559 0 discriminator 2
	movq	(%rax), %rdx	# *_242, D.6216
	.loc 1 560 0 discriminator 2
	movq	gen_pt+64(%rip), %rax	# gen_pt, D.6212
	movslq	%ebx, %rdi	# i, D.6208
	salq	$3, %rdi	#, D.6208
	addq	%rdi, %rax	# D.6208, D.6212
	.loc 1 559 0 discriminator 2
	movq	(%rax), %rax	# *_247, D.6216
	movq	%r8, %r9	# D.6215,
	movq	%rsi, %r8	# D.6216,
	movq	%rax, %rsi	# D.6216,
	movq	%r12, %rdi	# long4,
	call	mult_su3_mat_vec_sum_4dir	#
	.loc 1 545 0 discriminator 2
	addl	$1, %ebx	#, i
.L167:
	.loc 1 545 0 is_stmt 0 discriminator 1
	cmpl	%r14d, %ebx	# loopend, i
	jl	.L168	#,
.LBE10:
	.loc 1 567 0 is_stmt 1
	movl	$0, %ebx	#, dir
	jmp	.L169	#
.L170:
	.loc 1 568 0 discriminator 2
	movl	$7, %eax	#, tmp420
	subl	%ebx, %eax	# dir, D.6210
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6208
	movq	-64(%rbp), %rax	# tag, tmp421
	addq	%rdx, %rax	# D.6208, D.6211
	movq	(%rax), %rax	# *_255, D.6213
	movq	%rax, %rdi	# D.6213,
	call	wait_gather	#
	.loc 1 567 0 discriminator 2
	addl	$1, %ebx	#, dir
.L169:
	.loc 1 567 0 is_stmt 0 discriminator 1
	cmpl	$3, %ebx	#, dir
	jle	.L170	#,
	.loc 1 570 0 is_stmt 1
	movl	$8, %ebx	#, dir
	jmp	.L171	#
.L172:
	.loc 1 571 0 discriminator 2
	movl	$23, %eax	#, tmp422
	subl	%ebx, %eax	# dir, D.6210
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6208
	movq	-64(%rbp), %rax	# tag, tmp423
	addq	%rdx, %rax	# D.6208, D.6211
	movq	(%rax), %rax	# *_262, D.6213
	movq	%rax, %rdi	# D.6213,
	call	wait_gather	#
	.loc 1 570 0 discriminator 2
	addl	$1, %ebx	#, dir
.L171:
	.loc 1 570 0 is_stmt 0 discriminator 1
	cmpl	$11, %ebx	#, dir
	jle	.L172	#,
.LBB11:
	.loc 1 574 0 is_stmt 1
	cmpl	$2, -52(%rbp)	#, parity
	jne	.L173	#,
	.loc 1 574 0 is_stmt 0 discriminator 1
	movl	even_sites_on_node(%rip), %eax	# even_sites_on_node, iftmp.77
	jmp	.L174	#
.L173:
	.loc 1 574 0 discriminator 2
	movl	sites_on_node(%rip), %eax	# sites_on_node, iftmp.77
.L174:
	.loc 1 574 0 discriminator 3
	movl	%eax, %r12d	# iftmp.77, loopend
	cmpl	$1, -52(%rbp)	#, parity
	jne	.L175	#,
	.loc 1 574 0 discriminator 1
	movl	even_sites_on_node(%rip), %eax	# even_sites_on_node, iftmp.78
	jmp	.L176	#
.L175:
	.loc 1 574 0 discriminator 2
	movl	$0, %eax	#, iftmp.78
.L176:
	.loc 1 574 0 discriminator 3
	movl	%eax, %ebx	# iftmp.78, i
	jmp	.L177	#
.L178:
	.loc 1 580 0 is_stmt 1 discriminator 2
	movq	gen_pt+32(%rip), %rax	# gen_pt, D.6212
	movslq	%ebx, %rdx	# i, D.6208
	salq	$3, %rdx	#, D.6208
	addq	%rdx, %rax	# D.6208, D.6212
	.loc 1 576 0 discriminator 2
	movq	(%rax), %r8	# *_278, D.6216
	.loc 1 579 0 discriminator 2
	movq	gen_pt+40(%rip), %rax	# gen_pt, D.6212
	movslq	%ebx, %rdx	# i, D.6208
	salq	$3, %rdx	#, D.6208
	addq	%rdx, %rax	# D.6208, D.6212
	.loc 1 576 0 discriminator 2
	movq	(%rax), %rcx	# *_283, D.6216
	.loc 1 578 0 discriminator 2
	movq	gen_pt+48(%rip), %rax	# gen_pt, D.6212
	movslq	%ebx, %rdx	# i, D.6208
	salq	$3, %rdx	#, D.6208
	addq	%rdx, %rax	# D.6208, D.6212
	.loc 1 576 0 discriminator 2
	movq	(%rax), %rdi	# *_288, D.6216
	.loc 1 577 0 discriminator 2
	movq	gen_pt+56(%rip), %rax	# gen_pt, D.6212
	movslq	%ebx, %rdx	# i, D.6208
	salq	$3, %rdx	#, D.6208
	addq	%rdx, %rax	# D.6208, D.6212
	.loc 1 576 0 discriminator 2
	movq	(%rax), %rsi	# *_293, D.6216
	movslq	%ebx, %rdx	# i, D.6208
	movq	%rdx, %rax	# D.6208, tmp424
	addq	%rax, %rax	# tmp424
	addq	%rdx, %rax	# D.6208, tmp424
	salq	$4, %rax	#, tmp425
	movq	%rax, %rdx	# tmp424, D.6208
	movq	-48(%rbp), %rax	# dest, tmp426
	addq	%rdx, %rax	# D.6208, D.6215
	movq	%rdi, %rdx	# D.6216,
	movq	%rax, %rdi	# D.6215,
	call	sub_four_su3_vecs	#
	.loc 1 585 0 discriminator 2
	movq	gen_pt+96(%rip), %rax	# gen_pt, D.6212
	movslq	%ebx, %rdx	# i, D.6208
	salq	$3, %rdx	#, D.6208
	addq	%rdx, %rax	# D.6208, D.6212
	.loc 1 581 0 discriminator 2
	movq	(%rax), %r8	# *_301, D.6216
	.loc 1 584 0 discriminator 2
	movq	gen_pt+104(%rip), %rax	# gen_pt, D.6212
	movslq	%ebx, %rdx	# i, D.6208
	salq	$3, %rdx	#, D.6208
	addq	%rdx, %rax	# D.6208, D.6212
	.loc 1 581 0 discriminator 2
	movq	(%rax), %rcx	# *_306, D.6216
	.loc 1 583 0 discriminator 2
	movq	gen_pt+112(%rip), %rax	# gen_pt, D.6212
	movslq	%ebx, %rdx	# i, D.6208
	salq	$3, %rdx	#, D.6208
	addq	%rdx, %rax	# D.6208, D.6212
	.loc 1 581 0 discriminator 2
	movq	(%rax), %rdi	# *_311, D.6216
	.loc 1 582 0 discriminator 2
	movq	gen_pt+120(%rip), %rax	# gen_pt, D.6212
	movslq	%ebx, %rdx	# i, D.6208
	salq	$3, %rdx	#, D.6208
	addq	%rdx, %rax	# D.6208, D.6212
	.loc 1 581 0 discriminator 2
	movq	(%rax), %rsi	# *_316, D.6216
	movq	temp+64(%rip), %r9	# temp, D.6215
	movslq	%ebx, %rdx	# i, D.6208
	movq	%rdx, %rax	# D.6208, tmp427
	addq	%rax, %rax	# tmp427
	addq	%rdx, %rax	# D.6208, tmp427
	salq	$4, %rax	#, tmp428
	addq	%r9, %rax	# D.6215, D.6215
	movq	%rdi, %rdx	# D.6216,
	movq	%rax, %rdi	# D.6215,
	call	sub_four_su3_vecs	#
	.loc 1 587 0 discriminator 2
	movslq	%ebx, %rdx	# i, D.6208
	movq	%rdx, %rax	# D.6208, tmp429
	addq	%rax, %rax	# tmp429
	addq	%rdx, %rax	# D.6208, tmp429
	salq	$4, %rax	#, tmp430
	movq	%rax, %rdx	# tmp429, D.6208
	movq	-48(%rbp), %rax	# dest, tmp431
	leaq	(%rdx,%rax), %rsi	#, D.6215
	movq	temp+64(%rip), %rcx	# temp, D.6215
	movslq	%ebx, %rdx	# i, D.6208
	movq	%rdx, %rax	# D.6208, tmp432
	addq	%rax, %rax	# tmp432
	addq	%rdx, %rax	# D.6208, tmp432
	salq	$4, %rax	#, tmp433
	addq	%rax, %rcx	# D.6208, D.6215
	movslq	%ebx, %rdx	# i, D.6208
	movq	%rdx, %rax	# D.6208, tmp434
	addq	%rax, %rax	# tmp434
	addq	%rdx, %rax	# D.6208, tmp434
	salq	$4, %rax	#, tmp435
	movq	%rax, %rdx	# tmp434, D.6208
	movq	-48(%rbp), %rax	# dest, tmp436
	addq	%rdx, %rax	# D.6208, D.6215
	movq	%rsi, %rdx	# D.6215,
	movq	%rcx, %rsi	# D.6215,
	movq	%rax, %rdi	# D.6215,
	call	add_su3_vector	#
	.loc 1 574 0 discriminator 2
	addl	$1, %ebx	#, i
.L177:
	.loc 1 574 0 is_stmt 0 discriminator 1
	cmpl	%r12d, %ebx	# loopend, i
	jl	.L178	#,
.LBE11:
	.loc 1 590 0 is_stmt 1
	addq	$32, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	dslash_fn_on_temp_special, .-dslash_fn_on_temp_special
.Letext0:
	.file 2 "random.h"
	.file 3 "./macros.h"
	.file 4 "./complex.h"
	.file 5 "./su3.h"
	.file 6 "./lattice.h"
	.file 7 "comdefs.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x963
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF72
	.byte	0x1
	.long	.LASF73
	.long	.LASF74
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
	.uleb128 0x4
	.byte	0x8
	.long	0x72
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
	.uleb128 0x5
	.byte	0x58
	.byte	0x2
	.byte	0x6
	.long	0x11b
	.uleb128 0x6
	.string	"r0"
	.byte	0x2
	.byte	0x8
	.long	0x2d
	.byte	0
	.uleb128 0x6
	.string	"r1"
	.byte	0x2
	.byte	0x8
	.long	0x2d
	.byte	0x8
	.uleb128 0x6
	.string	"r2"
	.byte	0x2
	.byte	0x8
	.long	0x2d
	.byte	0x10
	.uleb128 0x6
	.string	"r3"
	.byte	0x2
	.byte	0x8
	.long	0x2d
	.byte	0x18
	.uleb128 0x6
	.string	"r4"
	.byte	0x2
	.byte	0x8
	.long	0x2d
	.byte	0x20
	.uleb128 0x6
	.string	"r5"
	.byte	0x2
	.byte	0x8
	.long	0x2d
	.byte	0x28
	.uleb128 0x6
	.string	"r6"
	.byte	0x2
	.byte	0x8
	.long	0x2d
	.byte	0x30
	.uleb128 0x7
	.long	.LASF13
	.byte	0x2
	.byte	0x9
	.long	0x2d
	.byte	0x38
	.uleb128 0x7
	.long	.LASF14
	.byte	0x2
	.byte	0x9
	.long	0x2d
	.byte	0x40
	.uleb128 0x7
	.long	.LASF15
	.byte	0x2
	.byte	0x9
	.long	0x2d
	.byte	0x48
	.uleb128 0x7
	.long	.LASF16
	.byte	0x2
	.byte	0xa
	.long	0x8e
	.byte	0x50
	.byte	0
	.uleb128 0x8
	.long	.LASF17
	.byte	0x2
	.byte	0xb
	.long	0x95
	.uleb128 0x8
	.long	.LASF18
	.byte	0x3
	.byte	0x2a
	.long	0x57
	.uleb128 0x4
	.byte	0x8
	.long	0x6c
	.uleb128 0x5
	.byte	0x10
	.byte	0x4
	.byte	0x49
	.long	0x158
	.uleb128 0x7
	.long	.LASF19
	.byte	0x4
	.byte	0x4a
	.long	0x8e
	.byte	0
	.uleb128 0x7
	.long	.LASF20
	.byte	0x4
	.byte	0x4b
	.long	0x8e
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	.LASF21
	.byte	0x4
	.byte	0x4c
	.long	0x137
	.uleb128 0x5
	.byte	0x90
	.byte	0x5
	.byte	0xe
	.long	0x176
	.uleb128 0x6
	.string	"e"
	.byte	0x5
	.byte	0xe
	.long	0x176
	.byte	0
	.byte	0
	.uleb128 0x9
	.long	0x158
	.long	0x18c
	.uleb128 0xa
	.long	0x65
	.byte	0x2
	.uleb128 0xa
	.long	0x65
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.long	.LASF22
	.byte	0x5
	.byte	0xe
	.long	0x163
	.uleb128 0x5
	.byte	0x30
	.byte	0x5
	.byte	0xf
	.long	0x1aa
	.uleb128 0x6
	.string	"c"
	.byte	0x5
	.byte	0xf
	.long	0x1aa
	.byte	0
	.byte	0
	.uleb128 0x9
	.long	0x158
	.long	0x1ba
	.uleb128 0xa
	.long	0x65
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.long	.LASF23
	.byte	0x5
	.byte	0xf
	.long	0x197
	.uleb128 0x5
	.byte	0x50
	.byte	0x5
	.byte	0x10
	.long	0x222
	.uleb128 0x6
	.string	"m01"
	.byte	0x5
	.byte	0x11
	.long	0x158
	.byte	0
	.uleb128 0x6
	.string	"m02"
	.byte	0x5
	.byte	0x11
	.long	0x158
	.byte	0x10
	.uleb128 0x6
	.string	"m12"
	.byte	0x5
	.byte	0x11
	.long	0x158
	.byte	0x20
	.uleb128 0x7
	.long	.LASF24
	.byte	0x5
	.byte	0x11
	.long	0x8e
	.byte	0x30
	.uleb128 0x7
	.long	.LASF25
	.byte	0x5
	.byte	0x11
	.long	0x8e
	.byte	0x38
	.uleb128 0x7
	.long	.LASF26
	.byte	0x5
	.byte	0x11
	.long	0x8e
	.byte	0x40
	.uleb128 0x7
	.long	.LASF27
	.byte	0x5
	.byte	0x11
	.long	0x8e
	.byte	0x48
	.byte	0
	.uleb128 0x8
	.long	.LASF28
	.byte	0x5
	.byte	0x11
	.long	0x1c5
	.uleb128 0x9
	.long	0x1ba
	.long	0x23d
	.uleb128 0xa
	.long	0x65
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.value	0x800
	.byte	0x6
	.byte	0x1f
	.long	0x354
	.uleb128 0x6
	.string	"x"
	.byte	0x6
	.byte	0x22
	.long	0x50
	.byte	0
	.uleb128 0x6
	.string	"y"
	.byte	0x6
	.byte	0x22
	.long	0x50
	.byte	0x2
	.uleb128 0x6
	.string	"z"
	.byte	0x6
	.byte	0x22
	.long	0x50
	.byte	0x4
	.uleb128 0x6
	.string	"t"
	.byte	0x6
	.byte	0x22
	.long	0x50
	.byte	0x6
	.uleb128 0x7
	.long	.LASF29
	.byte	0x6
	.byte	0x24
	.long	0x72
	.byte	0x8
	.uleb128 0x7
	.long	.LASF30
	.byte	0x6
	.byte	0x26
	.long	0x57
	.byte	0xc
	.uleb128 0x7
	.long	.LASF31
	.byte	0x6
	.byte	0x29
	.long	0x11b
	.byte	0x10
	.uleb128 0x7
	.long	.LASF32
	.byte	0x6
	.byte	0x2b
	.long	0x57
	.byte	0x68
	.uleb128 0x7
	.long	.LASF33
	.byte	0x6
	.byte	0x32
	.long	0x354
	.byte	0x70
	.uleb128 0xc
	.string	"mom"
	.byte	0x6
	.byte	0x3e
	.long	0x364
	.value	0x2b0
	.uleb128 0xd
	.long	.LASF34
	.byte	0x6
	.byte	0x42
	.long	0x374
	.value	0x3f0
	.uleb128 0xc
	.string	"phi"
	.byte	0x6
	.byte	0x45
	.long	0x1ba
	.value	0x410
	.uleb128 0xd
	.long	.LASF35
	.byte	0x6
	.byte	0x46
	.long	0x1ba
	.value	0x440
	.uleb128 0xd
	.long	.LASF36
	.byte	0x6
	.byte	0x47
	.long	0x1ba
	.value	0x470
	.uleb128 0xc
	.string	"xxx"
	.byte	0x6
	.byte	0x48
	.long	0x1ba
	.value	0x4a0
	.uleb128 0xc
	.string	"ttt"
	.byte	0x6
	.byte	0x49
	.long	0x1ba
	.value	0x4d0
	.uleb128 0xd
	.long	.LASF37
	.byte	0x6
	.byte	0x4a
	.long	0x1ba
	.value	0x500
	.uleb128 0xd
	.long	.LASF38
	.byte	0x6
	.byte	0x5d
	.long	0x22d
	.value	0x530
	.uleb128 0xd
	.long	.LASF39
	.byte	0x6
	.byte	0x5f
	.long	0x22d
	.value	0x5f0
	.uleb128 0xd
	.long	.LASF40
	.byte	0x6
	.byte	0x60
	.long	0x1ba
	.value	0x6b0
	.uleb128 0xd
	.long	.LASF41
	.byte	0x6
	.byte	0x62
	.long	0x18c
	.value	0x6e0
	.uleb128 0xd
	.long	.LASF42
	.byte	0x6
	.byte	0x62
	.long	0x18c
	.value	0x770
	.byte	0
	.uleb128 0x9
	.long	0x18c
	.long	0x364
	.uleb128 0xa
	.long	0x65
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.long	0x222
	.long	0x374
	.uleb128 0xa
	.long	0x65
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.long	0x8e
	.long	0x384
	.uleb128 0xa
	.long	0x65
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.long	.LASF43
	.byte	0x6
	.byte	0x63
	.long	0x23d
	.uleb128 0x5
	.byte	0x18
	.byte	0x7
	.byte	0x35
	.long	0x3c8
	.uleb128 0x7
	.long	.LASF44
	.byte	0x7
	.byte	0x37
	.long	0x57
	.byte	0
	.uleb128 0x7
	.long	.LASF45
	.byte	0x7
	.byte	0x39
	.long	0x57
	.byte	0x4
	.uleb128 0x7
	.long	.LASF46
	.byte	0x7
	.byte	0x3b
	.long	0x6c
	.byte	0x8
	.uleb128 0x7
	.long	.LASF47
	.byte	0x7
	.byte	0x40
	.long	0x57
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.long	.LASF48
	.byte	0x7
	.byte	0x42
	.long	0x38f
	.uleb128 0xe
	.long	.LASF51
	.byte	0x1
	.byte	0x1e
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x419
	.uleb128 0xf
	.long	.LASF49
	.byte	0x1
	.byte	0x1e
	.long	0x419
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xf
	.long	.LASF50
	.byte	0x1
	.byte	0x1e
	.long	0x419
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x10
	.string	"i"
	.byte	0x1
	.byte	0x20
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0x41f
	.uleb128 0x4
	.byte	0x8
	.long	0x3c8
	.uleb128 0x11
	.long	.LASF75
	.byte	0x1
	.byte	0x31
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x44e
	.uleb128 0x10
	.string	"i"
	.byte	0x1
	.byte	0x32
	.long	0x57
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0xe
	.long	.LASF52
	.byte	0x1
	.byte	0x3f
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x534
	.uleb128 0x12
	.string	"src"
	.byte	0x1
	.byte	0x3f
	.long	0x126
	.uleb128 0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0xf
	.long	.LASF53
	.byte	0x1
	.byte	0x3f
	.long	0x126
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0xf
	.long	.LASF29
	.byte	0x1
	.byte	0x3f
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -204
	.uleb128 0x10
	.string	"i"
	.byte	0x1
	.byte	0x40
	.long	0x57
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x10
	.string	"s"
	.byte	0x1
	.byte	0x41
	.long	0x534
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x10
	.string	"dir"
	.byte	0x1
	.byte	0x42
	.long	0x57
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x13
	.long	.LASF54
	.byte	0x1
	.byte	0x42
	.long	0x57
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x13
	.long	.LASF55
	.byte	0x1
	.byte	0x43
	.long	0x53a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x13
	.long	.LASF56
	.byte	0x1
	.byte	0x43
	.long	0x53a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x10
	.string	"tag"
	.byte	0x1
	.byte	0x44
	.long	0x540
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x14
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x514
	.uleb128 0x13
	.long	.LASF57
	.byte	0x1
	.byte	0x59
	.long	0x57
	.uleb128 0x1
	.byte	0x5f
	.byte	0
	.uleb128 0x15
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x13
	.long	.LASF57
	.byte	0x1
	.byte	0x89
	.long	0x57
	.uleb128 0x1
	.byte	0x5f
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0x384
	.uleb128 0x4
	.byte	0x8
	.long	0x18c
	.uleb128 0x9
	.long	0x41f
	.long	0x550
	.uleb128 0xa
	.long	0x65
	.byte	0xf
	.byte	0
	.uleb128 0xe
	.long	.LASF58
	.byte	0x1
	.byte	0xba
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x646
	.uleb128 0x12
	.string	"src"
	.byte	0x1
	.byte	0xba
	.long	0x126
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0xf
	.long	.LASF53
	.byte	0x1
	.byte	0xba
	.long	0x126
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0xf
	.long	.LASF29
	.byte	0x1
	.byte	0xbb
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x12
	.string	"tag"
	.byte	0x1
	.byte	0xbb
	.long	0x419
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0xf
	.long	.LASF59
	.byte	0x1
	.byte	0xbb
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x10
	.string	"i"
	.byte	0x1
	.byte	0xbc
	.long	0x57
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x10
	.string	"s"
	.byte	0x1
	.byte	0xbd
	.long	0x534
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x10
	.string	"dir"
	.byte	0x1
	.byte	0xbe
	.long	0x57
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x13
	.long	.LASF54
	.byte	0x1
	.byte	0xbe
	.long	0x57
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x13
	.long	.LASF55
	.byte	0x1
	.byte	0xbf
	.long	0x53a
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x13
	.long	.LASF56
	.byte	0x1
	.byte	0xbf
	.long	0x53a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x14
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.long	0x625
	.uleb128 0x13
	.long	.LASF57
	.byte	0x1
	.byte	0xdb
	.long	0x57
	.uleb128 0x1
	.byte	0x5f
	.byte	0
	.uleb128 0x15
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x16
	.long	.LASF57
	.byte	0x1
	.value	0x113
	.long	0x57
	.uleb128 0x1
	.byte	0x5f
	.byte	0
	.byte	0
	.uleb128 0x17
	.long	.LASF60
	.byte	0x1
	.value	0x136
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x78b
	.uleb128 0x18
	.string	"src"
	.byte	0x1
	.value	0x136
	.long	0x78b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x19
	.long	.LASF53
	.byte	0x1
	.value	0x136
	.long	0x78b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x19
	.long	.LASF29
	.byte	0x1
	.value	0x136
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -276
	.uleb128 0x1a
	.string	"i"
	.byte	0x1
	.value	0x137
	.long	0x57
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1b
	.string	"s"
	.byte	0x1
	.value	0x138
	.long	0x534
	.uleb128 0x1a
	.string	"dir"
	.byte	0x1
	.value	0x139
	.long	0x57
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x16
	.long	.LASF54
	.byte	0x1
	.value	0x139
	.long	0x57
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1a
	.string	"tag"
	.byte	0x1
	.value	0x13a
	.long	0x540
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x16
	.long	.LASF38
	.byte	0x1
	.value	0x13b
	.long	0x791
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x16
	.long	.LASF39
	.byte	0x1
	.value	0x13b
	.long	0x791
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x16
	.long	.LASF40
	.byte	0x1
	.value	0x13b
	.long	0x78b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x16
	.long	.LASF55
	.byte	0x1
	.value	0x13c
	.long	0x53a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x16
	.long	.LASF56
	.byte	0x1
	.value	0x13c
	.long	0x53a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x14
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.long	0x746
	.uleb128 0x16
	.long	.LASF57
	.byte	0x1
	.value	0x15a
	.long	0x57
	.uleb128 0x1
	.byte	0x5e
	.byte	0
	.uleb128 0x14
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.long	0x76a
	.uleb128 0x16
	.long	.LASF57
	.byte	0x1
	.value	0x180
	.long	0x57
	.uleb128 0x1
	.byte	0x5e
	.byte	0
	.uleb128 0x15
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x16
	.long	.LASF57
	.byte	0x1
	.value	0x19d
	.long	0x57
	.uleb128 0x1
	.byte	0x5c
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0x1ba
	.uleb128 0x9
	.long	0x78b
	.long	0x7a1
	.uleb128 0xa
	.long	0x65
	.byte	0x3
	.byte	0
	.uleb128 0x17
	.long	.LASF61
	.byte	0x1
	.value	0x1c4
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x8c4
	.uleb128 0x18
	.string	"src"
	.byte	0x1
	.value	0x1c4
	.long	0x78b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x19
	.long	.LASF53
	.byte	0x1
	.value	0x1c4
	.long	0x78b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x19
	.long	.LASF29
	.byte	0x1
	.value	0x1c5
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x18
	.string	"tag"
	.byte	0x1
	.value	0x1c5
	.long	0x419
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x19
	.long	.LASF59
	.byte	0x1
	.value	0x1c5
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1a
	.string	"i"
	.byte	0x1
	.value	0x1c6
	.long	0x57
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1b
	.string	"s"
	.byte	0x1
	.value	0x1c7
	.long	0x534
	.uleb128 0x1a
	.string	"dir"
	.byte	0x1
	.value	0x1c8
	.long	0x57
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x16
	.long	.LASF54
	.byte	0x1
	.value	0x1c8
	.long	0x57
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x16
	.long	.LASF55
	.byte	0x1
	.value	0x1c9
	.long	0x53a
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x16
	.long	.LASF56
	.byte	0x1
	.value	0x1c9
	.long	0x53a
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x14
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.long	0x87f
	.uleb128 0x16
	.long	.LASF57
	.byte	0x1
	.value	0x1f7
	.long	0x57
	.uleb128 0x1
	.byte	0x5e
	.byte	0
	.uleb128 0x14
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.long	0x8a3
	.uleb128 0x16
	.long	.LASF57
	.byte	0x1
	.value	0x221
	.long	0x57
	.uleb128 0x1
	.byte	0x5e
	.byte	0
	.uleb128 0x15
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x16
	.long	.LASF57
	.byte	0x1
	.value	0x23e
	.long	0x57
	.uleb128 0x1
	.byte	0x5c
	.byte	0
	.byte	0
	.uleb128 0x9
	.long	0x78b
	.long	0x8d4
	.uleb128 0xa
	.long	0x65
	.byte	0x8
	.byte	0
	.uleb128 0x13
	.long	.LASF62
	.byte	0x1
	.byte	0x1a
	.long	0x8c4
	.uleb128 0x9
	.byte	0x3
	.quad	temp
	.uleb128 0x13
	.long	.LASF63
	.byte	0x1
	.byte	0x1c
	.long	0x57
	.uleb128 0x9
	.byte	0x3
	.quad	temp_not_allocated
	.uleb128 0x1c
	.long	.LASF64
	.byte	0x6
	.byte	0x87
	.long	0x57
	.uleb128 0x1c
	.long	.LASF65
	.byte	0x6
	.byte	0x88
	.long	0x57
	.uleb128 0x1c
	.long	.LASF66
	.byte	0x6
	.byte	0x8e
	.long	0x57
	.uleb128 0x1c
	.long	.LASF67
	.byte	0x6
	.byte	0x8f
	.long	0x57
	.uleb128 0x1c
	.long	.LASF68
	.byte	0x6
	.byte	0x9a
	.long	0x534
	.uleb128 0x9
	.long	0x131
	.long	0x945
	.uleb128 0xa
	.long	0x65
	.byte	0xf
	.byte	0
	.uleb128 0x1c
	.long	.LASF69
	.byte	0x6
	.byte	0x9f
	.long	0x935
	.uleb128 0x1c
	.long	.LASF70
	.byte	0x6
	.byte	0xa3
	.long	0x53a
	.uleb128 0x1c
	.long	.LASF71
	.byte	0x6
	.byte	0xa4
	.long	0x53a
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
.LASF37:
	.string	"g_rand"
.LASF55:
	.string	"fat4"
.LASF18:
	.string	"field_offset"
.LASF13:
	.string	"multiplier"
.LASF72:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF62:
	.string	"temp"
.LASF5:
	.string	"short int"
.LASF7:
	.string	"sizetype"
.LASF52:
	.string	"dslash_fn"
.LASF34:
	.string	"phase"
.LASF21:
	.string	"complex"
.LASF65:
	.string	"even_sites_on_node"
.LASF43:
	.string	"site"
.LASF38:
	.string	"tempvec"
.LASF36:
	.string	"cg_p"
.LASF39:
	.string	"templongvec"
.LASF30:
	.string	"index"
.LASF45:
	.string	"msg_size"
.LASF33:
	.string	"link"
.LASF58:
	.string	"dslash_fn_special"
.LASF11:
	.string	"float"
.LASF31:
	.string	"site_prn"
.LASF22:
	.string	"su3_matrix"
.LASF9:
	.string	"long long int"
.LASF54:
	.string	"otherparity"
.LASF19:
	.string	"real"
.LASF68:
	.string	"lattice"
.LASF6:
	.string	"long int"
.LASF57:
	.string	"loopend"
.LASF64:
	.string	"sites_on_node"
.LASF44:
	.string	"msg_node"
.LASF29:
	.string	"parity"
.LASF26:
	.string	"m22im"
.LASF47:
	.string	"msg_id"
.LASF53:
	.string	"dest"
.LASF66:
	.string	"valid_longlinks"
.LASF24:
	.string	"m00im"
.LASF17:
	.string	"double_prn"
.LASF1:
	.string	"unsigned char"
.LASF27:
	.string	"space"
.LASF56:
	.string	"long4"
.LASF10:
	.string	"long long unsigned int"
.LASF16:
	.string	"scale"
.LASF3:
	.string	"unsigned int"
.LASF41:
	.string	"tempmat1"
.LASF20:
	.string	"imag"
.LASF70:
	.string	"t_longlink"
.LASF59:
	.string	"start"
.LASF2:
	.string	"short unsigned int"
.LASF23:
	.string	"su3_vector"
.LASF42:
	.string	"staple"
.LASF61:
	.string	"dslash_fn_on_temp_special"
.LASF8:
	.string	"char"
.LASF40:
	.string	"templongv1"
.LASF32:
	.string	"space1"
.LASF51:
	.string	"cleanup_gathers"
.LASF14:
	.string	"addend"
.LASF74:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/433.milc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF0:
	.string	"long unsigned int"
.LASF25:
	.string	"m11im"
.LASF12:
	.string	"double"
.LASF67:
	.string	"valid_fatlinks"
.LASF63:
	.string	"temp_not_allocated"
.LASF49:
	.string	"tags1"
.LASF50:
	.string	"tags2"
.LASF35:
	.string	"resid"
.LASF4:
	.string	"signed char"
.LASF75:
	.string	"cleanup_dslash_temps"
.LASF15:
	.string	"ic_state"
.LASF69:
	.string	"gen_pt"
.LASF73:
	.string	"dslash_fn2.c"
.LASF71:
	.string	"t_fatlink"
.LASF60:
	.string	"dslash_fn_on_temp"
.LASF28:
	.string	"anti_hermitmat"
.LASF46:
	.string	"msg_buf"
.LASF48:
	.string	"msg_tag"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
