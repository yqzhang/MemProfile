	.file	"leaky_bucket.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 leaky_bucket.c -mtune=generic -march=x86-64 -g
# -fverbose-asm -fno-strict-aliasing -fstack-protector -Wformat
# -Wformat-security
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
	.comm	Bit_Buffer,80000,32
	.globl	total_frame_buffer
	.bss
	.align 8
	.type	total_frame_buffer, @object
	.size	total_frame_buffer, 8
total_frame_buffer:
	.zero	8
	.section	.rodata
.LC0:
	.string	"r"
	.align 8
.LC1:
	.string	" LeakyBucketRate File does not exist; using rate calculated from avg. rate "
.LC2:
	.string	"%ld"
	.align 8
.LC3:
	.string	" Leaky BucketRateFile does not have valid entries;\n using rate calculated from avg. rate "
	.text
	.globl	get_LeakyBucketRate
	.type	get_LeakyBucketRate, @function
get_LeakyBucketRate:
.LFB2:
	.file 1 "leaky_bucket.c"
	.loc 1 48 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# NumberLeakyBuckets, NumberLeakyBuckets
	movq	%rsi, -48(%rbp)	# Rmin, Rmin
	.loc 1 52 0
	movq	input(%rip), %rax	# input, input.0
	addq	$2480, %rax	#, D.4354
	movl	$.LC0, %esi	#,
	movq	%rax, %rdi	# D.4354,
	call	fopen	#
	movq	%rax, -8(%rbp)	# tmp67, f
	cmpq	$0, -8(%rbp)	#, f
	jne	.L2	#,
	.loc 1 54 0
	movl	$.LC1, %edi	#,
	call	puts	#
	.loc 1 55 0
	movl	$0, %eax	#, D.4353
	jmp	.L7	#
.L2:
	.loc 1 58 0
	movq	$0, -16(%rbp)	#, i
	jmp	.L4	#
.L6:
	.loc 1 60 0
	leaq	-24(%rbp), %rdx	#, tmp68
	movq	-8(%rbp), %rax	# f, tmp69
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# tmp69,
	movl	$0, %eax	#,
	call	__isoc99_fscanf	#
	cmpl	$1, %eax	#, D.4353
	je	.L5	#,
	.loc 1 62 0
	movl	$.LC3, %edi	#,
	call	puts	#
	.loc 1 63 0
	movq	-8(%rbp), %rax	# f, tmp70
	movq	%rax, %rdi	# tmp70,
	call	fclose	#
	.loc 1 64 0
	movl	$0, %eax	#, D.4353
	jmp	.L7	#
.L5:
	.loc 1 66 0
	movq	-16(%rbp), %rax	# i, tmp71
	leaq	0(,%rax,8), %rdx	#, D.4355
	movq	-48(%rbp), %rax	# Rmin, tmp72
	addq	%rax, %rdx	# tmp72, D.4356
	movq	-24(%rbp), %rax	# buf, buf.1
	movq	%rax, (%rdx)	# buf.1, *_13
	.loc 1 58 0
	addq	$1, -16(%rbp)	#, i
.L4:
	.loc 1 58 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# i, tmp73
	cmpq	-40(%rbp), %rax	# NumberLeakyBuckets, tmp73
	jb	.L6	#,
	.loc 1 68 0 is_stmt 1
	movq	-8(%rbp), %rax	# f, tmp74
	movq	%rax, %rdi	# tmp74,
	call	fclose	#
	.loc 1 69 0
	movl	$1, %eax	#, D.4353
.L7:
	.loc 1 70 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	get_LeakyBucketRate, .-get_LeakyBucketRate
	.globl	PutBigDoubleWord
	.type	PutBigDoubleWord, @function
PutBigDoubleWord:
.LFB3:
	.loc 1 91 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# dw, dw
	movq	%rsi, -16(%rbp)	# fp, fp
	.loc 1 92 0
	movq	-8(%rbp), %rax	# dw, tmp70
	shrq	$24, %rax	#, D.4361
	movzbl	%al, %eax	# D.4362, D.4362
	movq	-16(%rbp), %rdx	# fp, tmp71
	movq	%rdx, %rsi	# tmp71,
	movl	%eax, %edi	# D.4362,
	call	fputc	#
	.loc 1 93 0
	movq	-8(%rbp), %rax	# dw, tmp72
	shrq	$16, %rax	#, D.4361
	movzbl	%al, %eax	# D.4362, D.4362
	movq	-16(%rbp), %rdx	# fp, tmp73
	movq	%rdx, %rsi	# tmp73,
	movl	%eax, %edi	# D.4362,
	call	fputc	#
	.loc 1 94 0
	movq	-8(%rbp), %rax	# dw, tmp74
	shrq	$8, %rax	#, D.4361
	movzbl	%al, %eax	# D.4362, D.4362
	movq	-16(%rbp), %rdx	# fp, tmp75
	movq	%rdx, %rsi	# tmp75,
	movl	%eax, %edi	# D.4362,
	call	fputc	#
	.loc 1 95 0
	movq	-8(%rbp), %rax	# dw, tmp76
	movzbl	%al, %eax	# D.4362, D.4362
	movq	-16(%rbp), %rdx	# fp, tmp77
	movq	%rdx, %rsi	# tmp77,
	movl	%eax, %edi	# D.4362,
	call	fputc	#
	.loc 1 96 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	PutBigDoubleWord, .-PutBigDoubleWord
	.section	.rodata
.LC4:
	.string	"wb"
.LC5:
	.string	"Error open file %s  \n"
	.align 8
.LC6:
	.string	" Number Leaky Buckets: %ld \n     Rmin     Bmin     Fmin \n"
.LC7:
	.string	" %8ld %8ld %8ld \n"
	.text
	.globl	write_buffer
	.type	write_buffer, @function
write_buffer:
.LFB4:
	.loc 1 125 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# NumberLeakyBuckets, NumberLeakyBuckets
	movq	%rsi, -32(%rbp)	# Rmin, Rmin
	movq	%rdx, -40(%rbp)	# Bmin, Bmin
	movq	%rcx, -48(%rbp)	# Fmin, Fmin
	.loc 1 129 0
	movq	input(%rip), %rax	# input, input.2
	addq	$2680, %rax	#, D.4363
	movl	$.LC4, %esi	#,
	movq	%rax, %rdi	# D.4363,
	call	fopen	#
	movq	%rax, -8(%rbp)	# tmp81, outf
	cmpq	$0, -8(%rbp)	#, outf
	jne	.L10	#,
	.loc 1 131 0
	movq	input(%rip), %rax	# input, input.3
	addq	$2680, %rax	#, D.4363
	movq	%rax, %rcx	# D.4363,
	movl	$.LC5, %edx	#,
	movl	$300, %esi	#,
	movl	$errortext, %edi	#,
	movl	$0, %eax	#,
	call	snprintf	#
	.loc 1 132 0
	movl	$1, %esi	#,
	movl	$errortext, %edi	#,
	call	error	#
.L10:
	.loc 1 135 0
	movq	-8(%rbp), %rdx	# outf, tmp82
	movq	-24(%rbp), %rax	# NumberLeakyBuckets, tmp83
	movq	%rdx, %rsi	# tmp82,
	movq	%rax, %rdi	# tmp83,
	call	PutBigDoubleWord	#
	.loc 1 136 0
	movq	-24(%rbp), %rax	# NumberLeakyBuckets, tmp84
	movq	%rax, %rsi	# tmp84,
	movl	$.LC6, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 137 0
	movq	$0, -16(%rbp)	#, iBucket
	jmp	.L11	#
.L12:
	.loc 1 142 0 discriminator 2
	movq	-16(%rbp), %rax	# iBucket, tmp85
	leaq	0(,%rax,8), %rdx	#, D.4364
	movq	-32(%rbp), %rax	# Rmin, tmp86
	addq	%rdx, %rax	# D.4364, D.4365
	movq	(%rax), %rax	# *_11, D.4364
	movq	-8(%rbp), %rdx	# outf, tmp87
	movq	%rdx, %rsi	# tmp87,
	movq	%rax, %rdi	# D.4364,
	call	PutBigDoubleWord	#
	.loc 1 143 0 discriminator 2
	movq	-16(%rbp), %rax	# iBucket, tmp88
	leaq	0(,%rax,8), %rdx	#, D.4364
	movq	-40(%rbp), %rax	# Bmin, tmp89
	addq	%rdx, %rax	# D.4364, D.4365
	movq	(%rax), %rax	# *_15, D.4364
	movq	-8(%rbp), %rdx	# outf, tmp90
	movq	%rdx, %rsi	# tmp90,
	movq	%rax, %rdi	# D.4364,
	call	PutBigDoubleWord	#
	.loc 1 144 0 discriminator 2
	movq	-16(%rbp), %rax	# iBucket, tmp91
	leaq	0(,%rax,8), %rdx	#, D.4364
	movq	-48(%rbp), %rax	# Fmin, tmp92
	addq	%rdx, %rax	# D.4364, D.4365
	movq	(%rax), %rax	# *_19, D.4364
	movq	-8(%rbp), %rdx	# outf, tmp93
	movq	%rdx, %rsi	# tmp93,
	movq	%rax, %rdi	# D.4364,
	call	PutBigDoubleWord	#
	.loc 1 145 0 discriminator 2
	movq	-16(%rbp), %rax	# iBucket, tmp94
	leaq	0(,%rax,8), %rdx	#, D.4364
	movq	-48(%rbp), %rax	# Fmin, tmp95
	addq	%rdx, %rax	# D.4364, D.4365
	movq	(%rax), %rcx	# *_22, D.4364
	movq	-16(%rbp), %rax	# iBucket, tmp96
	leaq	0(,%rax,8), %rdx	#, D.4364
	movq	-40(%rbp), %rax	# Bmin, tmp97
	addq	%rdx, %rax	# D.4364, D.4365
	movq	(%rax), %rdx	# *_25, D.4364
	movq	-16(%rbp), %rax	# iBucket, tmp98
	leaq	0(,%rax,8), %rsi	#, D.4364
	movq	-32(%rbp), %rax	# Rmin, tmp99
	addq	%rsi, %rax	# D.4364, D.4365
	movq	(%rax), %rax	# *_28, D.4364
	movq	%rax, %rsi	# D.4364,
	movl	$.LC7, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 137 0 discriminator 2
	addq	$1, -16(%rbp)	#, iBucket
.L11:
	.loc 1 137 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# iBucket, tmp100
	cmpq	-24(%rbp), %rax	# NumberLeakyBuckets, tmp100
	jb	.L12	#,
	.loc 1 147 0 is_stmt 1
	movq	-8(%rbp), %rax	# outf, tmp101
	movq	%rax, %rdi	# tmp101,
	call	fclose	#
	.loc 1 148 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	write_buffer, .-write_buffer
	.globl	Sort
	.type	Sort, @function
Sort:
.LFB5:
	.loc 1 169 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)	# NumberLeakyBuckets, NumberLeakyBuckets
	movq	%rsi, -48(%rbp)	# Rmin, Rmin
	.loc 1 172 0
	movq	$0, -24(%rbp)	#, i
	jmp	.L14	#
.L18:
	.loc 1 174 0
	movq	-24(%rbp), %rax	# i, tmp78
	addq	$1, %rax	#, tmp77
	movq	%rax, -16(%rbp)	# tmp77, j
	jmp	.L15	#
.L17:
	.loc 1 176 0
	movq	-24(%rbp), %rax	# i, tmp79
	leaq	0(,%rax,8), %rdx	#, D.4370
	movq	-48(%rbp), %rax	# Rmin, tmp80
	addq	%rdx, %rax	# D.4370, D.4371
	movq	(%rax), %rdx	# *_9, D.4370
	movq	-16(%rbp), %rax	# j, tmp81
	leaq	0(,%rax,8), %rcx	#, D.4370
	movq	-48(%rbp), %rax	# Rmin, tmp82
	addq	%rcx, %rax	# D.4370, D.4371
	movq	(%rax), %rax	# *_12, D.4370
	cmpq	%rax, %rdx	# D.4370, D.4370
	jbe	.L16	#,
	.loc 1 177 0
	movq	-24(%rbp), %rax	# i, tmp83
	leaq	0(,%rax,8), %rdx	#, D.4370
	movq	-48(%rbp), %rax	# Rmin, tmp84
	addq	%rdx, %rax	# D.4370, D.4371
	movq	(%rax), %rax	# *_15, tmp85
	movq	%rax, -8(%rbp)	# tmp85, temp
	.loc 1 178 0
	movq	-24(%rbp), %rax	# i, tmp86
	leaq	0(,%rax,8), %rdx	#, D.4370
	movq	-48(%rbp), %rax	# Rmin, tmp87
	addq	%rax, %rdx	# tmp87, D.4371
	movq	-16(%rbp), %rax	# j, tmp88
	leaq	0(,%rax,8), %rcx	#, D.4370
	movq	-48(%rbp), %rax	# Rmin, tmp89
	addq	%rcx, %rax	# D.4370, D.4371
	movq	(%rax), %rax	# *_20, D.4370
	movq	%rax, (%rdx)	# D.4370, *_18
	.loc 1 179 0
	movq	-16(%rbp), %rax	# j, tmp90
	leaq	0(,%rax,8), %rdx	#, D.4370
	movq	-48(%rbp), %rax	# Rmin, tmp91
	addq	%rax, %rdx	# tmp91, D.4371
	movq	-8(%rbp), %rax	# temp, tmp92
	movq	%rax, (%rdx)	# tmp92, *_23
.L16:
	.loc 1 174 0
	addq	$1, -16(%rbp)	#, j
.L15:
	.loc 1 174 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# j, tmp93
	cmpq	-40(%rbp), %rax	# NumberLeakyBuckets, tmp93
	jb	.L17	#,
	.loc 1 172 0 is_stmt 1
	addq	$1, -24(%rbp)	#, i
.L14:
	.loc 1 172 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# NumberLeakyBuckets, tmp94
	subq	$1, %rax	#, D.4370
	cmpq	-24(%rbp), %rax	# i, D.4370
	ja	.L18	#,
	.loc 1 183 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	Sort, .-Sort
	.section	.rodata
	.align 8
.LC8:
	.string	"-------------------------------------------------------------------------------\n"
.LC9:
	.string	" Total Frames:  %ld (%d) \n"
.LC10:
	.string	"init_buffer: buffer_frame"
.LC11:
	.string	"init_buffer: Rmin"
.LC12:
	.string	"init_buffer: Bmin"
.LC13:
	.string	"init_buffer: Fmin"
	.text
	.globl	calc_buffer
	.type	calc_buffer, @function
calc_buffer:
.LFB6:
	.loc 1 201 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$136, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 204 0
	movq	$0, -104(%rbp)	#, FrameIndex
	.loc 1 208 0
	movq	stdout(%rip), %rax	# stdout, stdout.4
	movq	%rax, %rcx	# stdout.4,
	movl	$80, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC8, %edi	#,
	call	fwrite	#
	.loc 1 209 0
	movq	input(%rip), %rax	# input, input.5
	movl	8(%rax), %edx	# input.5_17->no_frames, D.4372
	movq	total_frame_buffer(%rip), %rax	# total_frame_buffer, total_frame_buffer.6
	movq	%rax, %rsi	# total_frame_buffer.6,
	movl	$.LC9, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 210 0
	movq	input(%rip), %rax	# input, input.7
	movl	2476(%rax), %eax	# input.7_20->NumberLeakyBuckets, D.4372
	cltq
	movq	%rax, -88(%rbp)	# tmp179, NumberLeakyBuckets
	.loc 1 211 0
	movq	total_frame_buffer(%rip), %rax	# total_frame_buffer, total_frame_buffer.8
	addq	$1, %rax	#, D.4373
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.4373,
	call	calloc	#
	movq	%rax, -80(%rbp)	# tmp180, buffer_frame
	.loc 1 212 0
	cmpq	$0, -80(%rbp)	#, buffer_frame
	jne	.L20	#,
	.loc 1 213 0
	movl	$.LC10, %edi	#,
	call	no_mem_exit	#
.L20:
	.loc 1 214 0
	movq	-88(%rbp), %rax	# NumberLeakyBuckets, tmp181
	movl	$8, %esi	#,
	movq	%rax, %rdi	# tmp181,
	call	calloc	#
	movq	%rax, -72(%rbp)	# tmp182, Rmin
	.loc 1 215 0
	cmpq	$0, -72(%rbp)	#, Rmin
	jne	.L21	#,
	.loc 1 216 0
	movl	$.LC11, %edi	#,
	call	no_mem_exit	#
.L21:
	.loc 1 217 0
	movq	-88(%rbp), %rax	# NumberLeakyBuckets, tmp183
	movl	$8, %esi	#,
	movq	%rax, %rdi	# tmp183,
	call	calloc	#
	movq	%rax, -64(%rbp)	# tmp184, Bmin
	.loc 1 218 0
	cmpq	$0, -64(%rbp)	#, Bmin
	jne	.L22	#,
	.loc 1 219 0
	movl	$.LC12, %edi	#,
	call	no_mem_exit	#
.L22:
	.loc 1 220 0
	movq	-88(%rbp), %rax	# NumberLeakyBuckets, tmp185
	movl	$8, %esi	#,
	movq	%rax, %rdi	# tmp185,
	call	calloc	#
	movq	%rax, -56(%rbp)	# tmp186, Fmin
	.loc 1 221 0
	cmpq	$0, -56(%rbp)	#, Fmin
	jne	.L23	#,
	.loc 1 222 0
	movl	$.LC13, %edi	#,
	call	no_mem_exit	#
.L23:
	.loc 1 224 0
	movq	$0, -136(%rbp)	#, TotalRate
	.loc 1 225 0
	movq	$0, -112(%rbp)	#, iFrame
	jmp	.L24	#
.L25:
	.loc 1 227 0 discriminator 2
	movq	-112(%rbp), %rax	# iFrame, tmp187
	movq	Bit_Buffer(,%rax,8), %rax	# Bit_Buffer, D.4374
	addq	%rax, -136(%rbp)	# D.4373, TotalRate
	.loc 1 225 0 discriminator 2
	addq	$1, -112(%rbp)	#, iFrame
.L24:
	.loc 1 225 0 is_stmt 0 discriminator 1
	movq	total_frame_buffer(%rip), %rax	# total_frame_buffer, total_frame_buffer.9
	cmpq	%rax, -112(%rbp)	# total_frame_buffer.9, iFrame
	jb	.L25	#,
	.loc 1 229 0 is_stmt 1
	movq	-136(%rbp), %rax	# TotalRate, tmp188
	testq	%rax, %rax	# tmp188
	js	.L26	#,
	cvtsi2ssq	%rax, %xmm0	# tmp188, D.4375
	jmp	.L27	#
.L26:
	movq	%rax, %rdx	# tmp188, tmp190
	shrq	%rdx	# tmp190
	andl	$1, %eax	#, tmp191
	orq	%rax, %rdx	# tmp191, tmp190
	cvtsi2ssq	%rdx, %xmm0	# tmp190, tmp189
	addss	%xmm0, %xmm0	# tmp189, D.4375
.L27:
	movq	total_frame_buffer(%rip), %rax	# total_frame_buffer, total_frame_buffer.10
	testq	%rax, %rax	# total_frame_buffer.10
	js	.L28	#,
	cvtsi2ssq	%rax, %xmm1	# total_frame_buffer.10, D.4375
	jmp	.L29	#
.L28:
	movq	%rax, %rdx	# total_frame_buffer.10, tmp193
	shrq	%rdx	# tmp193
	andl	$1, %eax	#, tmp194
	orq	%rax, %rdx	# tmp194, tmp193
	cvtsi2ssq	%rdx, %xmm1	# tmp193, tmp192
	addss	%xmm1, %xmm1	# tmp192, D.4375
.L29:
	divss	%xmm1, %xmm0	# D.4375, D.4375
	ucomiss	.LC14(%rip), %xmm0	#, D.4375
	jae	.L30	#,
	cvttss2siq	%xmm0, %rax	# D.4375, tmp195
	movq	%rax, -48(%rbp)	# tmp195, AvgRate
	jmp	.L31	#
.L30:
	movss	.LC14(%rip), %xmm1	#, tmp197
	subss	%xmm1, %xmm0	# tmp197, tmp196
	cvttss2siq	%xmm0, %rax	# tmp196, tmp198
	movq	%rax, -48(%rbp)	# tmp198, AvgRate
	movabsq	$-9223372036854775808, %rax	#, tmp199
	xorq	%rax, -48(%rbp)	# tmp199, AvgRate
.L31:
	movq	-48(%rbp), %rax	# AvgRate, tmp200
	movq	%rax, -48(%rbp)	# tmp200, AvgRate
	.loc 1 231 0
	movq	-72(%rbp), %rdx	# Rmin, tmp201
	movq	-88(%rbp), %rax	# NumberLeakyBuckets, tmp202
	movq	%rdx, %rsi	# tmp201,
	movq	%rax, %rdi	# tmp202,
	call	get_LeakyBucketRate	#
	cmpl	$1, %eax	#, D.4372
	je	.L32	#,
	.loc 1 233 0
	movq	$0, -120(%rbp)	#, iBucket
	jmp	.L33	#
.L46:
	.loc 1 235 0
	cmpq	$0, -120(%rbp)	#, iBucket
	jne	.L34	#,
	.loc 1 236 0
	movq	-120(%rbp), %rax	# iBucket, tmp203
	leaq	0(,%rax,8), %rdx	#, D.4373
	movq	-72(%rbp), %rax	# Rmin, tmp204
	leaq	(%rdx,%rax), %rcx	#, D.4376
	movq	-48(%rbp), %rax	# AvgRate, tmp205
	testq	%rax, %rax	# tmp205
	js	.L35	#,
	cvtsi2ssq	%rax, %xmm0	# tmp205, D.4375
	jmp	.L36	#
.L35:
	movq	%rax, %rdx	# tmp205, tmp207
	shrq	%rdx	# tmp207
	andl	$1, %eax	#, tmp208
	orq	%rax, %rdx	# tmp208, tmp207
	cvtsi2ssq	%rdx, %xmm0	# tmp207, tmp206
	addss	%xmm0, %xmm0	# tmp206, D.4375
.L36:
	movq	img(%rip), %rax	# img, img.11
	movss	48(%rax), %xmm1	# img.11_46->framerate, D.4375
	mulss	%xmm1, %xmm0	# D.4375, D.4375
	ucomiss	.LC14(%rip), %xmm0	#, D.4375
	jae	.L37	#,
	cvttss2siq	%xmm0, %rax	# D.4375, D.4373
	jmp	.L38	#
.L37:
	movss	.LC14(%rip), %xmm1	#, tmp210
	subss	%xmm1, %xmm0	# tmp210, tmp209
	cvttss2siq	%xmm0, %rax	# tmp209, D.4373
	movabsq	$-9223372036854775808, %rdx	#, tmp211
	xorq	%rdx, %rax	# tmp211, D.4373
.L38:
	movq	input(%rip), %rdx	# input, input.12
	movl	20(%rdx), %edx	# input.12_50->jumpd, D.4372
	addl	$1, %edx	#, D.4372
	movslq	%edx, %rbx	# D.4372, D.4373
	movl	$0, %edx	#, tmp213
	divq	%rbx	# D.4373
	movq	%rax, (%rcx)	# D.4373, *_44
	jmp	.L39	#
.L34:
	.loc 1 238 0
	movq	-120(%rbp), %rax	# iBucket, tmp214
	leaq	0(,%rax,8), %rdx	#, D.4373
	movq	-72(%rbp), %rax	# Rmin, tmp215
	leaq	(%rdx,%rax), %rcx	#, D.4376
	movq	-120(%rbp), %rax	# iBucket, tmp216
	salq	$3, %rax	#, D.4373
	leaq	-8(%rax), %rdx	#, D.4377
	movq	-72(%rbp), %rax	# Rmin, tmp217
	addq	%rdx, %rax	# D.4377, D.4376
	movq	(%rax), %rax	# *_59, D.4373
	testq	%rax, %rax	# D.4373
	js	.L40	#,
	cvtsi2ssq	%rax, %xmm0	# D.4373, D.4375
	jmp	.L41	#
.L40:
	movq	%rax, %rdx	# D.4373, tmp219
	shrq	%rdx	# tmp219
	andl	$1, %eax	#, tmp220
	orq	%rax, %rdx	# tmp220, tmp219
	cvtsi2ssq	%rdx, %xmm0	# tmp219, tmp218
	addss	%xmm0, %xmm0	# tmp218, D.4375
.L41:
	movq	-48(%rbp), %rax	# AvgRate, tmp221
	shrq	$2, %rax	#, D.4373
	testq	%rax, %rax	# D.4373
	js	.L42	#,
	cvtsi2ssq	%rax, %xmm1	# D.4373, D.4375
	jmp	.L43	#
.L42:
	movq	%rax, %rdx	# D.4373, tmp223
	shrq	%rdx	# tmp223
	andl	$1, %eax	#, tmp224
	orq	%rax, %rdx	# tmp224, tmp223
	cvtsi2ssq	%rdx, %xmm1	# tmp223, tmp222
	addss	%xmm1, %xmm1	# tmp222, D.4375
.L43:
	movq	img(%rip), %rax	# img, img.13
	movss	48(%rax), %xmm2	# img.13_64->framerate, D.4375
	mulss	%xmm2, %xmm1	# D.4375, D.4375
	movq	input(%rip), %rax	# input, input.14
	movl	20(%rax), %eax	# input.14_67->jumpd, D.4372
	addl	$1, %eax	#, D.4372
	cvtsi2ss	%eax, %xmm2	# D.4372, D.4375
	divss	%xmm2, %xmm1	# D.4375, D.4375
	addss	%xmm1, %xmm0	# D.4375, D.4375
	ucomiss	.LC14(%rip), %xmm0	#, D.4375
	jae	.L44	#,
	cvttss2siq	%xmm0, %rax	# D.4375, D.4373
	jmp	.L45	#
.L44:
	movss	.LC14(%rip), %xmm1	#, tmp226
	subss	%xmm1, %xmm0	# tmp226, tmp225
	cvttss2siq	%xmm0, %rax	# tmp225, D.4373
	movabsq	$-9223372036854775808, %rdx	#, tmp227
	xorq	%rdx, %rax	# tmp227, D.4373
.L45:
	movq	%rax, (%rcx)	# D.4373, *_56
.L39:
	.loc 1 233 0
	addq	$1, -120(%rbp)	#, iBucket
.L33:
	.loc 1 233 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# iBucket, tmp228
	cmpq	-88(%rbp), %rax	# NumberLeakyBuckets, tmp228
	jb	.L46	#,
.L32:
	.loc 1 241 0 is_stmt 1
	movq	-72(%rbp), %rdx	# Rmin, tmp229
	movq	-88(%rbp), %rax	# NumberLeakyBuckets, tmp230
	movq	%rdx, %rsi	# tmp229,
	movq	%rax, %rdi	# tmp230,
	call	Sort	#
	.loc 1 243 0
	movq	-48(%rbp), %rdx	# AvgRate, tmp231
	movq	%rdx, %rax	# tmp231, tmp232
	salq	$2, %rax	#, tmp232
	addq	%rdx, %rax	# tmp231, tmp232
	salq	$2, %rax	#, tmp233
	movq	%rax, -40(%rbp)	# D.4373, maxBuffer
	.loc 1 244 0
	movq	$0, -120(%rbp)	#, iBucket
	jmp	.L47	#
.L59:
	.loc 1 246 0
	movq	-120(%rbp), %rax	# iBucket, tmp234
	leaq	0(,%rax,8), %rdx	#, D.4373
	movq	-72(%rbp), %rax	# Rmin, tmp235
	addq	%rdx, %rax	# D.4373, D.4376
	movq	(%rax), %rdx	# *_79, D.4373
	movq	input(%rip), %rax	# input, input.15
	movl	20(%rax), %eax	# input.15_81->jumpd, D.4372
	addl	$1, %eax	#, D.4372
	cltq
	imulq	%rdx, %rax	# D.4373, D.4373
	testq	%rax, %rax	# D.4373
	js	.L48	#,
	cvtsi2ssq	%rax, %xmm0	# D.4373, D.4375
	jmp	.L49	#
.L48:
	movq	%rax, %rdx	# D.4373, tmp237
	shrq	%rdx	# tmp237
	andl	$1, %eax	#, tmp238
	orq	%rax, %rdx	# tmp238, tmp237
	cvtsi2ssq	%rdx, %xmm0	# tmp237, tmp236
	addss	%xmm0, %xmm0	# tmp236, D.4375
.L49:
	movq	img(%rip), %rax	# img, img.16
	movss	48(%rax), %xmm1	# img.16_87->framerate, D.4375
	divss	%xmm1, %xmm0	# D.4375, D.4375
	cvttss2siq	%xmm0, %rax	# D.4375, tmp239
	movq	%rax, -32(%rbp)	# tmp239, iChannelRate
	.loc 1 248 0
	movq	-40(%rbp), %rax	# maxBuffer, tmp240
	movq	%rax, -96(%rbp)	# tmp240, InitFullness
	.loc 1 249 0
	movq	-80(%rbp), %rax	# buffer_frame, tmp241
	movq	-96(%rbp), %rdx	# InitFullness, tmp242
	movq	%rdx, (%rax)	# tmp242, *buffer_frame_25
	.loc 1 250 0
	movq	-40(%rbp), %rax	# maxBuffer, tmp243
	movq	%rax, -128(%rbp)	# tmp243, minB
	.loc 1 252 0
	movq	$0, -112(%rbp)	#, iFrame
	jmp	.L50	#
.L53:
	.loc 1 254 0
	movq	-112(%rbp), %rax	# iFrame, tmp244
	leaq	0(,%rax,8), %rdx	#, D.4373
	movq	-80(%rbp), %rax	# buffer_frame, tmp245
	addq	%rax, %rdx	# tmp245, D.4378
	movq	-112(%rbp), %rax	# iFrame, tmp246
	leaq	0(,%rax,8), %rcx	#, D.4373
	movq	-80(%rbp), %rax	# buffer_frame, tmp247
	addq	%rcx, %rax	# D.4373, D.4378
	movq	(%rax), %rcx	# *_98, D.4374
	movq	-112(%rbp), %rax	# iFrame, tmp248
	movq	Bit_Buffer(,%rax,8), %rax	# Bit_Buffer, D.4374
	subq	%rax, %rcx	# D.4374, D.4374
	movq	%rcx, %rax	# D.4374, D.4374
	movq	%rax, (%rdx)	# D.4374, *_96
	.loc 1 255 0
	movq	-112(%rbp), %rax	# iFrame, tmp249
	leaq	0(,%rax,8), %rdx	#, D.4373
	movq	-80(%rbp), %rax	# buffer_frame, tmp250
	addq	%rdx, %rax	# D.4373, D.4378
	movq	(%rax), %rax	# *_103, D.4374
	cmpq	-128(%rbp), %rax	# minB, D.4374
	jge	.L51	#,
	.loc 1 257 0
	movq	-112(%rbp), %rax	# iFrame, tmp251
	leaq	0(,%rax,8), %rdx	#, D.4373
	movq	-80(%rbp), %rax	# buffer_frame, tmp252
	addq	%rdx, %rax	# D.4373, D.4378
	movq	(%rax), %rax	# *_106, tmp253
	movq	%rax, -128(%rbp)	# tmp253, minB
	.loc 1 258 0
	movq	-112(%rbp), %rax	# iFrame, tmp254
	movq	%rax, -104(%rbp)	# tmp254, FrameIndex
.L51:
	.loc 1 261 0
	movq	-112(%rbp), %rax	# iFrame, tmp255
	addq	$1, %rax	#, D.4377
	leaq	0(,%rax,8), %rdx	#, D.4377
	movq	-80(%rbp), %rax	# buffer_frame, tmp256
	addq	%rdx, %rax	# D.4377, D.4378
	movq	-112(%rbp), %rdx	# iFrame, tmp257
	leaq	0(,%rdx,8), %rcx	#, D.4373
	movq	-80(%rbp), %rdx	# buffer_frame, tmp258
	addq	%rcx, %rdx	# D.4373, D.4378
	movq	(%rdx), %rcx	# *_113, D.4374
	movq	-32(%rbp), %rdx	# iChannelRate, tmp259
	addq	%rcx, %rdx	# D.4374, D.4374
	movq	%rdx, (%rax)	# D.4374, *_111
	.loc 1 262 0
	movq	-112(%rbp), %rax	# iFrame, tmp260
	addq	$1, %rax	#, D.4377
	leaq	0(,%rax,8), %rdx	#, D.4377
	movq	-80(%rbp), %rax	# buffer_frame, tmp261
	addq	%rdx, %rax	# D.4377, D.4378
	movq	(%rax), %rax	# *_118, D.4374
	cmpq	-40(%rbp), %rax	# maxBuffer, D.4374
	jle	.L52	#,
	.loc 1 263 0
	movq	-112(%rbp), %rax	# iFrame, tmp262
	addq	$1, %rax	#, D.4377
	leaq	0(,%rax,8), %rdx	#, D.4377
	movq	-80(%rbp), %rax	# buffer_frame, tmp263
	addq	%rax, %rdx	# tmp263, D.4378
	movq	-40(%rbp), %rax	# maxBuffer, tmp264
	movq	%rax, (%rdx)	# tmp264, *_122
.L52:
	.loc 1 252 0
	addq	$1, -112(%rbp)	#, iFrame
.L50:
	.loc 1 252 0 is_stmt 0 discriminator 1
	movq	total_frame_buffer(%rip), %rax	# total_frame_buffer, total_frame_buffer.17
	cmpq	%rax, -112(%rbp)	# total_frame_buffer.17, iFrame
	jb	.L53	#,
	.loc 1 265 0 is_stmt 1
	movq	-128(%rbp), %rax	# minB, tmp269
	movq	-40(%rbp), %rdx	# maxBuffer, tmp270
	subq	%rax, %rdx	# tmp269, tmp268
	movq	%rdx, %rax	# tmp268, tmp268
	movq	%rax, -24(%rbp)	# tmp268, actualBuffer
	.loc 1 268 0
	movq	Bit_Buffer(%rip), %rax	# Bit_Buffer, tmp271
	movq	%rax, -96(%rbp)	# tmp271, InitFullness
	.loc 1 269 0
	movq	-80(%rbp), %rax	# buffer_frame, tmp272
	movq	-96(%rbp), %rdx	# InitFullness, tmp273
	movq	%rdx, (%rax)	# tmp273, *buffer_frame_25
	.loc 1 270 0
	movq	$0, -112(%rbp)	#, iFrame
	jmp	.L54	#
.L58:
	.loc 1 272 0
	movq	-112(%rbp), %rax	# iFrame, tmp274
	leaq	0(,%rax,8), %rdx	#, D.4373
	movq	-80(%rbp), %rax	# buffer_frame, tmp275
	addq	%rax, %rdx	# tmp275, D.4378
	movq	-112(%rbp), %rax	# iFrame, tmp276
	leaq	0(,%rax,8), %rcx	#, D.4373
	movq	-80(%rbp), %rax	# buffer_frame, tmp277
	addq	%rcx, %rax	# D.4373, D.4378
	movq	(%rax), %rcx	# *_131, D.4374
	movq	-112(%rbp), %rax	# iFrame, tmp278
	movq	Bit_Buffer(,%rax,8), %rax	# Bit_Buffer, D.4374
	subq	%rax, %rcx	# D.4374, D.4374
	movq	%rcx, %rax	# D.4374, D.4374
	movq	%rax, (%rdx)	# D.4374, *_129
	.loc 1 273 0
	movq	-112(%rbp), %rax	# iFrame, tmp279
	leaq	0(,%rax,8), %rdx	#, D.4373
	movq	-80(%rbp), %rax	# buffer_frame, tmp280
	addq	%rdx, %rax	# D.4373, D.4378
	movq	(%rax), %rax	# *_136, D.4374
	testq	%rax, %rax	# D.4374
	jns	.L55	#,
	.loc 1 274 0
	movq	-112(%rbp), %rax	# iFrame, tmp281
	leaq	0(,%rax,8), %rdx	#, D.4373
	movq	-80(%rbp), %rax	# buffer_frame, tmp282
	addq	%rdx, %rax	# D.4373, D.4378
	movq	(%rax), %rax	# *_139, D.4374
	subq	%rax, -96(%rbp)	# D.4374, InitFullness
	.loc 1 275 0
	movq	-112(%rbp), %rax	# iFrame, tmp283
	leaq	0(,%rax,8), %rdx	#, D.4373
	movq	-80(%rbp), %rax	# buffer_frame, tmp284
	addq	%rdx, %rax	# D.4373, D.4378
	movq	$0, (%rax)	#, *_143
.L55:
	.loc 1 277 0
	movq	-112(%rbp), %rax	# iFrame, tmp285
	addq	$1, %rax	#, D.4377
	leaq	0(,%rax,8), %rdx	#, D.4377
	movq	-80(%rbp), %rax	# buffer_frame, tmp286
	addq	%rdx, %rax	# D.4377, D.4378
	movq	-112(%rbp), %rdx	# iFrame, tmp287
	leaq	0(,%rdx,8), %rcx	#, D.4373
	movq	-80(%rbp), %rdx	# buffer_frame, tmp288
	addq	%rcx, %rdx	# D.4373, D.4378
	movq	(%rdx), %rcx	# *_148, D.4374
	movq	-32(%rbp), %rdx	# iChannelRate, tmp289
	addq	%rcx, %rdx	# D.4374, D.4374
	movq	%rdx, (%rax)	# D.4374, *_146
	.loc 1 278 0
	movq	-112(%rbp), %rax	# iFrame, tmp290
	addq	$1, %rax	#, D.4377
	leaq	0(,%rax,8), %rdx	#, D.4377
	movq	-80(%rbp), %rax	# buffer_frame, tmp291
	addq	%rdx, %rax	# D.4377, D.4378
	movq	(%rax), %rax	# *_153, D.4374
	cmpq	-24(%rbp), %rax	# actualBuffer, D.4374
	jle	.L56	#,
	.loc 1 279 0
	jmp	.L57	#
.L56:
	.loc 1 270 0
	addq	$1, -112(%rbp)	#, iFrame
.L54:
	.loc 1 270 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# FrameIndex, tmp292
	addq	$1, %rax	#, D.4373
	cmpq	-112(%rbp), %rax	# iFrame, D.4373
	ja	.L58	#,
.L57:
	.loc 1 281 0 is_stmt 1
	movq	-120(%rbp), %rax	# iBucket, tmp293
	leaq	0(,%rax,8), %rdx	#, D.4373
	movq	-64(%rbp), %rax	# Bmin, tmp294
	addq	%rax, %rdx	# tmp294, D.4376
	movq	-24(%rbp), %rax	# actualBuffer, actualBuffer.18
	movq	%rax, (%rdx)	# actualBuffer.18, *_157
	.loc 1 282 0
	movq	-120(%rbp), %rax	# iBucket, tmp295
	leaq	0(,%rax,8), %rdx	#, D.4373
	movq	-56(%rbp), %rax	# Fmin, tmp296
	addq	%rax, %rdx	# tmp296, D.4376
	movq	-96(%rbp), %rax	# InitFullness, InitFullness.19
	movq	%rax, (%rdx)	# InitFullness.19, *_160
	.loc 1 244 0
	addq	$1, -120(%rbp)	#, iBucket
.L47:
	.loc 1 244 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# iBucket, tmp297
	cmpq	-88(%rbp), %rax	# NumberLeakyBuckets, tmp297
	jb	.L59	#,
	.loc 1 285 0 is_stmt 1
	movq	-56(%rbp), %rcx	# Fmin, tmp298
	movq	-64(%rbp), %rdx	# Bmin, tmp299
	movq	-72(%rbp), %rsi	# Rmin, tmp300
	movq	-88(%rbp), %rax	# NumberLeakyBuckets, tmp301
	movq	%rax, %rdi	# tmp301,
	call	write_buffer	#
	.loc 1 287 0
	movq	-80(%rbp), %rax	# buffer_frame, tmp302
	movq	%rax, %rdi	# tmp302,
	call	free	#
	.loc 1 288 0
	movq	-72(%rbp), %rax	# Rmin, tmp303
	movq	%rax, %rdi	# tmp303,
	call	free	#
	.loc 1 289 0
	movq	-64(%rbp), %rax	# Bmin, tmp304
	movq	%rax, %rdi	# tmp304,
	call	free	#
	.loc 1 290 0
	movq	-56(%rbp), %rax	# Fmin, tmp305
	movq	%rax, %rdi	# tmp305,
	call	free	#
	.loc 1 291 0
	nop
	.loc 1 292 0
	addq	$136, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	calc_buffer, .-calc_buffer
	.section	.rodata
	.align 4
.LC14:
	.long	1593835520
	.text
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 5 "/usr/include/stdio.h"
	.file 6 "/usr/include/libio.h"
	.file 7 "defines.h"
	.file 8 "parsetcommon.h"
	.file 9 "global.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x2481
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF530
	.byte	0x1
	.long	.LASF531
	.long	.LASF532
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
	.uleb128 0x5
	.long	0x3f
	.long	0x96
	.uleb128 0x6
	.long	0x96
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x7
	.byte	0x8
	.uleb128 0x8
	.byte	0x8
	.long	0xa5
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x8
	.byte	0x8
	.long	0x3f
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF12
	.uleb128 0x2
	.long	.LASF13
	.byte	0x4
	.byte	0xc5
	.long	0x69
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF14
	.uleb128 0x2
	.long	.LASF15
	.byte	0x5
	.byte	0x30
	.long	0xd6
	.uleb128 0x9
	.long	.LASF45
	.byte	0xd8
	.byte	0x6
	.byte	0xf6
	.long	0x257
	.uleb128 0xa
	.long	.LASF16
	.byte	0x6
	.byte	0xf7
	.long	0x3f
	.byte	0
	.uleb128 0xa
	.long	.LASF17
	.byte	0x6
	.byte	0xfc
	.long	0x9f
	.byte	0x8
	.uleb128 0xa
	.long	.LASF18
	.byte	0x6
	.byte	0xfd
	.long	0x9f
	.byte	0x10
	.uleb128 0xa
	.long	.LASF19
	.byte	0x6
	.byte	0xfe
	.long	0x9f
	.byte	0x18
	.uleb128 0xa
	.long	.LASF20
	.byte	0x6
	.byte	0xff
	.long	0x9f
	.byte	0x20
	.uleb128 0xb
	.long	.LASF21
	.byte	0x6
	.value	0x100
	.long	0x9f
	.byte	0x28
	.uleb128 0xb
	.long	.LASF22
	.byte	0x6
	.value	0x101
	.long	0x9f
	.byte	0x30
	.uleb128 0xb
	.long	.LASF23
	.byte	0x6
	.value	0x102
	.long	0x9f
	.byte	0x38
	.uleb128 0xb
	.long	.LASF24
	.byte	0x6
	.value	0x103
	.long	0x9f
	.byte	0x40
	.uleb128 0xb
	.long	.LASF25
	.byte	0x6
	.value	0x105
	.long	0x9f
	.byte	0x48
	.uleb128 0xb
	.long	.LASF26
	.byte	0x6
	.value	0x106
	.long	0x9f
	.byte	0x50
	.uleb128 0xb
	.long	.LASF27
	.byte	0x6
	.value	0x107
	.long	0x9f
	.byte	0x58
	.uleb128 0xb
	.long	.LASF28
	.byte	0x6
	.value	0x109
	.long	0x28f
	.byte	0x60
	.uleb128 0xb
	.long	.LASF29
	.byte	0x6
	.value	0x10b
	.long	0x295
	.byte	0x68
	.uleb128 0xb
	.long	.LASF30
	.byte	0x6
	.value	0x10d
	.long	0x3f
	.byte	0x70
	.uleb128 0xb
	.long	.LASF31
	.byte	0x6
	.value	0x111
	.long	0x3f
	.byte	0x74
	.uleb128 0xb
	.long	.LASF32
	.byte	0x6
	.value	0x113
	.long	0x70
	.byte	0x78
	.uleb128 0xb
	.long	.LASF33
	.byte	0x6
	.value	0x117
	.long	0x4d
	.byte	0x80
	.uleb128 0xb
	.long	.LASF34
	.byte	0x6
	.value	0x118
	.long	0x5b
	.byte	0x82
	.uleb128 0xb
	.long	.LASF35
	.byte	0x6
	.value	0x119
	.long	0x29b
	.byte	0x83
	.uleb128 0xb
	.long	.LASF36
	.byte	0x6
	.value	0x11d
	.long	0x2ab
	.byte	0x88
	.uleb128 0xb
	.long	.LASF37
	.byte	0x6
	.value	0x126
	.long	0x7b
	.byte	0x90
	.uleb128 0xb
	.long	.LASF38
	.byte	0x6
	.value	0x12f
	.long	0x9d
	.byte	0x98
	.uleb128 0xb
	.long	.LASF39
	.byte	0x6
	.value	0x130
	.long	0x9d
	.byte	0xa0
	.uleb128 0xb
	.long	.LASF40
	.byte	0x6
	.value	0x131
	.long	0x9d
	.byte	0xa8
	.uleb128 0xb
	.long	.LASF41
	.byte	0x6
	.value	0x132
	.long	0x9d
	.byte	0xb0
	.uleb128 0xb
	.long	.LASF42
	.byte	0x6
	.value	0x133
	.long	0x2d
	.byte	0xb8
	.uleb128 0xb
	.long	.LASF43
	.byte	0x6
	.value	0x135
	.long	0x3f
	.byte	0xc0
	.uleb128 0xb
	.long	.LASF44
	.byte	0x6
	.value	0x137
	.long	0x2b1
	.byte	0xc4
	.byte	0
	.uleb128 0xc
	.long	.LASF533
	.byte	0x6
	.byte	0x9b
	.uleb128 0x9
	.long	.LASF46
	.byte	0x18
	.byte	0x6
	.byte	0xa1
	.long	0x28f
	.uleb128 0xa
	.long	.LASF47
	.byte	0x6
	.byte	0xa2
	.long	0x28f
	.byte	0
	.uleb128 0xa
	.long	.LASF48
	.byte	0x6
	.byte	0xa3
	.long	0x295
	.byte	0x8
	.uleb128 0xa
	.long	.LASF49
	.byte	0x6
	.byte	0xa7
	.long	0x3f
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x25e
	.uleb128 0x8
	.byte	0x8
	.long	0xd6
	.uleb128 0x5
	.long	0xa5
	.long	0x2ab
	.uleb128 0x6
	.long	0x96
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x257
	.uleb128 0x5
	.long	0xa5
	.long	0x2c1
	.uleb128 0x6
	.long	0x96
	.byte	0x13
	.byte	0
	.uleb128 0x2
	.long	.LASF50
	.byte	0x7
	.byte	0x1e
	.long	0x46
	.uleb128 0xd
	.byte	0x4
	.byte	0x8
	.byte	0x2a
	.long	0x2e1
	.uleb128 0xe
	.long	.LASF51
	.sleb128 0
	.uleb128 0xe
	.long	.LASF52
	.sleb128 1
	.byte	0
	.uleb128 0x2
	.long	.LASF53
	.byte	0x8
	.byte	0x2d
	.long	0x2cc
	.uleb128 0x5
	.long	0x3f
	.long	0x2fc
	.uleb128 0x6
	.long	0x96
	.byte	0x7
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x2c1
	.uleb128 0x2
	.long	.LASF54
	.byte	0x9
	.byte	0x3e
	.long	0xb9
	.uleb128 0xd
	.byte	0x4
	.byte	0x9
	.byte	0x9b
	.long	0x34c
	.uleb128 0xe
	.long	.LASF55
	.sleb128 0
	.uleb128 0xe
	.long	.LASF56
	.sleb128 1
	.uleb128 0xe
	.long	.LASF57
	.sleb128 2
	.uleb128 0xe
	.long	.LASF58
	.sleb128 3
	.uleb128 0xe
	.long	.LASF59
	.sleb128 4
	.uleb128 0xe
	.long	.LASF60
	.sleb128 5
	.uleb128 0xe
	.long	.LASF61
	.sleb128 6
	.uleb128 0xe
	.long	.LASF62
	.sleb128 7
	.uleb128 0xe
	.long	.LASF63
	.sleb128 8
	.byte	0
	.uleb128 0xf
	.byte	0x68
	.byte	0x9
	.byte	0xcf
	.long	0x43c
	.uleb128 0xa
	.long	.LASF64
	.byte	0x9
	.byte	0xd1
	.long	0x54
	.byte	0
	.uleb128 0xa
	.long	.LASF65
	.byte	0x9
	.byte	0xd1
	.long	0x54
	.byte	0x4
	.uleb128 0xa
	.long	.LASF66
	.byte	0x9
	.byte	0xd2
	.long	0x54
	.byte	0x8
	.uleb128 0xa
	.long	.LASF67
	.byte	0x9
	.byte	0xd3
	.long	0x54
	.byte	0xc
	.uleb128 0xa
	.long	.LASF68
	.byte	0x9
	.byte	0xd4
	.long	0x54
	.byte	0x10
	.uleb128 0xa
	.long	.LASF69
	.byte	0x9
	.byte	0xd5
	.long	0x2fc
	.byte	0x18
	.uleb128 0xa
	.long	.LASF70
	.byte	0x9
	.byte	0xd6
	.long	0xac
	.byte	0x20
	.uleb128 0xa
	.long	.LASF71
	.byte	0x9
	.byte	0xd9
	.long	0x54
	.byte	0x28
	.uleb128 0xa
	.long	.LASF72
	.byte	0x9
	.byte	0xd9
	.long	0x54
	.byte	0x2c
	.uleb128 0xa
	.long	.LASF73
	.byte	0x9
	.byte	0xda
	.long	0x54
	.byte	0x30
	.uleb128 0xa
	.long	.LASF74
	.byte	0x9
	.byte	0xdb
	.long	0x54
	.byte	0x34
	.uleb128 0xa
	.long	.LASF75
	.byte	0x9
	.byte	0xdc
	.long	0x54
	.byte	0x38
	.uleb128 0xa
	.long	.LASF76
	.byte	0x9
	.byte	0xdd
	.long	0x2fc
	.byte	0x40
	.uleb128 0xa
	.long	.LASF77
	.byte	0x9
	.byte	0xde
	.long	0xac
	.byte	0x48
	.uleb128 0x10
	.string	"C"
	.byte	0x9
	.byte	0xdf
	.long	0x3f
	.byte	0x50
	.uleb128 0x10
	.string	"CS"
	.byte	0x9
	.byte	0xdf
	.long	0x3f
	.byte	0x54
	.uleb128 0x10
	.string	"E"
	.byte	0x9
	.byte	0xe0
	.long	0x3f
	.byte	0x58
	.uleb128 0x10
	.string	"ES"
	.byte	0x9
	.byte	0xe0
	.long	0x3f
	.byte	0x5c
	.uleb128 0x10
	.string	"B"
	.byte	0x9
	.byte	0xe1
	.long	0x3f
	.byte	0x60
	.uleb128 0x10
	.string	"BS"
	.byte	0x9
	.byte	0xe1
	.long	0x3f
	.byte	0x64
	.byte	0
	.uleb128 0x2
	.long	.LASF78
	.byte	0x9
	.byte	0xe2
	.long	0x34c
	.uleb128 0x2
	.long	.LASF79
	.byte	0x9
	.byte	0xe4
	.long	0x452
	.uleb128 0x8
	.byte	0x8
	.long	0x43c
	.uleb128 0xf
	.byte	0x10
	.byte	0x9
	.byte	0xe7
	.long	0x485
	.uleb128 0xa
	.long	.LASF80
	.byte	0x9
	.byte	0xe9
	.long	0x4d
	.byte	0
	.uleb128 0x10
	.string	"MPS"
	.byte	0x9
	.byte	0xea
	.long	0x46
	.byte	0x2
	.uleb128 0xa
	.long	.LASF81
	.byte	0x9
	.byte	0xec
	.long	0x38
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.long	.LASF82
	.byte	0x9
	.byte	0xee
	.long	0x458
	.uleb128 0x11
	.value	0x5e0
	.byte	0x9
	.value	0x102
	.long	0x4fc
	.uleb128 0xb
	.long	.LASF83
	.byte	0x9
	.value	0x104
	.long	0x4fc
	.byte	0
	.uleb128 0x12
	.long	.LASF84
	.byte	0x9
	.value	0x105
	.long	0x512
	.value	0x210
	.uleb128 0x12
	.long	.LASF85
	.byte	0x9
	.value	0x106
	.long	0x528
	.value	0x330
	.uleb128 0x12
	.long	.LASF86
	.byte	0x9
	.value	0x107
	.long	0x53e
	.value	0x470
	.uleb128 0x12
	.long	.LASF87
	.byte	0x9
	.value	0x108
	.long	0x554
	.value	0x530
	.uleb128 0x12
	.long	.LASF88
	.byte	0x9
	.value	0x109
	.long	0x554
	.value	0x570
	.uleb128 0x12
	.long	.LASF89
	.byte	0x9
	.value	0x10a
	.long	0x564
	.value	0x5b0
	.byte	0
	.uleb128 0x5
	.long	0x485
	.long	0x512
	.uleb128 0x6
	.long	0x96
	.byte	0x2
	.uleb128 0x6
	.long	0x96
	.byte	0xa
	.byte	0
	.uleb128 0x5
	.long	0x485
	.long	0x528
	.uleb128 0x6
	.long	0x96
	.byte	0x1
	.uleb128 0x6
	.long	0x96
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	0x485
	.long	0x53e
	.uleb128 0x6
	.long	0x96
	.byte	0x1
	.uleb128 0x6
	.long	0x96
	.byte	0x9
	.byte	0
	.uleb128 0x5
	.long	0x485
	.long	0x554
	.uleb128 0x6
	.long	0x96
	.byte	0x1
	.uleb128 0x6
	.long	0x96
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.long	0x485
	.long	0x564
	.uleb128 0x6
	.long	0x96
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.long	0x485
	.long	0x574
	.uleb128 0x6
	.long	0x96
	.byte	0x2
	.byte	0
	.uleb128 0x13
	.long	.LASF90
	.byte	0x9
	.value	0x10c
	.long	0x490
	.uleb128 0x11
	.value	0x2f60
	.byte	0x9
	.value	0x119
	.long	0x614
	.uleb128 0xb
	.long	.LASF91
	.byte	0x9
	.value	0x11b
	.long	0x614
	.byte	0
	.uleb128 0xb
	.long	.LASF92
	.byte	0x9
	.value	0x11c
	.long	0x554
	.byte	0x20
	.uleb128 0xb
	.long	.LASF93
	.byte	0x9
	.value	0x11d
	.long	0x624
	.byte	0x60
	.uleb128 0x12
	.long	.LASF94
	.byte	0x9
	.value	0x11e
	.long	0x63a
	.value	0x120
	.uleb128 0x12
	.long	.LASF95
	.byte	0x9
	.value	0x11f
	.long	0x650
	.value	0x3a0
	.uleb128 0x12
	.long	.LASF96
	.byte	0x9
	.value	0x120
	.long	0x650
	.value	0xd00
	.uleb128 0x12
	.long	.LASF97
	.byte	0x9
	.value	0x121
	.long	0x666
	.value	0x1660
	.uleb128 0x12
	.long	.LASF98
	.byte	0x9
	.value	0x122
	.long	0x666
	.value	0x1980
	.uleb128 0x12
	.long	.LASF99
	.byte	0x9
	.value	0x123
	.long	0x650
	.value	0x1ca0
	.uleb128 0x12
	.long	.LASF100
	.byte	0x9
	.value	0x124
	.long	0x650
	.value	0x2600
	.byte	0
	.uleb128 0x5
	.long	0x485
	.long	0x624
	.uleb128 0x6
	.long	0x96
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.long	0x485
	.long	0x63a
	.uleb128 0x6
	.long	0x96
	.byte	0x2
	.uleb128 0x6
	.long	0x96
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.long	0x485
	.long	0x650
	.uleb128 0x6
	.long	0x96
	.byte	0x9
	.uleb128 0x6
	.long	0x96
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.long	0x485
	.long	0x666
	.uleb128 0x6
	.long	0x96
	.byte	0x9
	.uleb128 0x6
	.long	0x96
	.byte	0xe
	.byte	0
	.uleb128 0x5
	.long	0x485
	.long	0x67c
	.uleb128 0x6
	.long	0x96
	.byte	0x9
	.uleb128 0x6
	.long	0x96
	.byte	0x4
	.byte	0
	.uleb128 0x13
	.long	.LASF101
	.byte	0x9
	.value	0x125
	.long	0x580
	.uleb128 0x14
	.long	.LASF102
	.byte	0x10
	.byte	0x9
	.value	0x134
	.long	0x6bd
	.uleb128 0xb
	.long	.LASF103
	.byte	0x9
	.value	0x136
	.long	0x3f
	.byte	0
	.uleb128 0xb
	.long	.LASF104
	.byte	0x9
	.value	0x137
	.long	0x3f
	.byte	0x4
	.uleb128 0xb
	.long	.LASF105
	.byte	0x9
	.value	0x138
	.long	0x6bd
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x688
	.uleb128 0x13
	.long	.LASF106
	.byte	0x9
	.value	0x139
	.long	0x688
	.uleb128 0x14
	.long	.LASF107
	.byte	0x20
	.byte	0x9
	.value	0x13c
	.long	0x72b
	.uleb128 0xb
	.long	.LASF108
	.byte	0x9
	.value	0x13e
	.long	0x3f
	.byte	0
	.uleb128 0xb
	.long	.LASF109
	.byte	0x9
	.value	0x13f
	.long	0x3f
	.byte	0x4
	.uleb128 0xb
	.long	.LASF110
	.byte	0x9
	.value	0x140
	.long	0x3f
	.byte	0x8
	.uleb128 0xb
	.long	.LASF111
	.byte	0x9
	.value	0x141
	.long	0x3f
	.byte	0xc
	.uleb128 0xb
	.long	.LASF112
	.byte	0x9
	.value	0x142
	.long	0x3f
	.byte	0x10
	.uleb128 0xb
	.long	.LASF105
	.byte	0x9
	.value	0x143
	.long	0x72b
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x6cf
	.uleb128 0x13
	.long	.LASF113
	.byte	0x9
	.value	0x144
	.long	0x6cf
	.uleb128 0x14
	.long	.LASF114
	.byte	0x30
	.byte	0x9
	.value	0x147
	.long	0x7cb
	.uleb128 0xb
	.long	.LASF115
	.byte	0x9
	.value	0x149
	.long	0x3f
	.byte	0
	.uleb128 0xb
	.long	.LASF116
	.byte	0x9
	.value	0x14a
	.long	0x3f
	.byte	0x4
	.uleb128 0xb
	.long	.LASF117
	.byte	0x9
	.value	0x14b
	.long	0x3f
	.byte	0x8
	.uleb128 0x15
	.string	"len"
	.byte	0x9
	.value	0x14c
	.long	0x3f
	.byte	0xc
	.uleb128 0x15
	.string	"inf"
	.byte	0x9
	.value	0x14d
	.long	0x3f
	.byte	0x10
	.uleb128 0xb
	.long	.LASF118
	.byte	0x9
	.value	0x14e
	.long	0x54
	.byte	0x14
	.uleb128 0xb
	.long	.LASF119
	.byte	0x9
	.value	0x14f
	.long	0x3f
	.byte	0x18
	.uleb128 0x15
	.string	"k"
	.byte	0x9
	.value	0x150
	.long	0x3f
	.byte	0x1c
	.uleb128 0xb
	.long	.LASF120
	.byte	0x9
	.value	0x158
	.long	0x7e5
	.byte	0x20
	.uleb128 0xb
	.long	.LASF121
	.byte	0x9
	.value	0x15a
	.long	0x801
	.byte	0x28
	.byte	0
	.uleb128 0x16
	.long	0x7e5
	.uleb128 0x17
	.long	0x3f
	.uleb128 0x17
	.long	0x3f
	.uleb128 0x17
	.long	0xac
	.uleb128 0x17
	.long	0xac
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x7cb
	.uleb128 0x16
	.long	0x7fb
	.uleb128 0x17
	.long	0x7fb
	.uleb128 0x17
	.long	0x447
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x73d
	.uleb128 0x8
	.byte	0x8
	.long	0x7eb
	.uleb128 0x13
	.long	.LASF122
	.byte	0x9
	.value	0x15c
	.long	0x73d
	.uleb128 0x18
	.long	.LASF123
	.value	0x278
	.byte	0x9
	.value	0x15f
	.long	0xa8d
	.uleb128 0xb
	.long	.LASF124
	.byte	0x9
	.value	0x161
	.long	0x3f
	.byte	0
	.uleb128 0xb
	.long	.LASF125
	.byte	0x9
	.value	0x162
	.long	0x3f
	.byte	0x4
	.uleb128 0xb
	.long	.LASF126
	.byte	0x9
	.value	0x163
	.long	0x3f
	.byte	0x8
	.uleb128 0x15
	.string	"qp"
	.byte	0x9
	.value	0x164
	.long	0x3f
	.byte	0xc
	.uleb128 0xb
	.long	.LASF127
	.byte	0x9
	.value	0x165
	.long	0x3f
	.byte	0x10
	.uleb128 0xb
	.long	.LASF128
	.byte	0x9
	.value	0x166
	.long	0x2ec
	.byte	0x14
	.uleb128 0xb
	.long	.LASF129
	.byte	0x9
	.value	0x168
	.long	0xa8d
	.byte	0x38
	.uleb128 0xb
	.long	.LASF130
	.byte	0x9
	.value	0x169
	.long	0xa8d
	.byte	0x40
	.uleb128 0xb
	.long	.LASF131
	.byte	0x9
	.value	0x16b
	.long	0x3f
	.byte	0x48
	.uleb128 0x15
	.string	"mvd"
	.byte	0x9
	.value	0x16c
	.long	0xa93
	.byte	0x4c
	.uleb128 0x12
	.long	.LASF132
	.byte	0x9
	.value	0x16d
	.long	0xab5
	.value	0x14c
	.uleb128 0x12
	.long	.LASF133
	.byte	0x9
	.value	0x16e
	.long	0xab5
	.value	0x18c
	.uleb128 0x19
	.string	"cbp"
	.byte	0x9
	.value	0x16f
	.long	0x3f
	.value	0x1cc
	.uleb128 0x12
	.long	.LASF134
	.byte	0x9
	.value	0x170
	.long	0x302
	.value	0x1d0
	.uleb128 0x12
	.long	.LASF135
	.byte	0x9
	.value	0x171
	.long	0xac5
	.value	0x1d8
	.uleb128 0x12
	.long	.LASF136
	.byte	0x9
	.value	0x172
	.long	0xac5
	.value	0x1e8
	.uleb128 0x12
	.long	.LASF137
	.byte	0x9
	.value	0x173
	.long	0x38
	.value	0x1f8
	.uleb128 0x12
	.long	.LASF138
	.byte	0x9
	.value	0x175
	.long	0x3f
	.value	0x200
	.uleb128 0x12
	.long	.LASF139
	.byte	0x9
	.value	0x176
	.long	0x3f
	.value	0x204
	.uleb128 0x12
	.long	.LASF140
	.byte	0x9
	.value	0x177
	.long	0x3f
	.value	0x208
	.uleb128 0x12
	.long	.LASF141
	.byte	0x9
	.value	0x179
	.long	0x3f
	.value	0x20c
	.uleb128 0x12
	.long	.LASF142
	.byte	0x9
	.value	0x17a
	.long	0x3f
	.value	0x210
	.uleb128 0x12
	.long	.LASF143
	.byte	0x9
	.value	0x17c
	.long	0x3f
	.value	0x214
	.uleb128 0x12
	.long	.LASF144
	.byte	0x9
	.value	0x17e
	.long	0x3f
	.value	0x218
	.uleb128 0x12
	.long	.LASF145
	.byte	0x9
	.value	0x17e
	.long	0x3f
	.value	0x21c
	.uleb128 0x12
	.long	.LASF146
	.byte	0x9
	.value	0x17e
	.long	0x3f
	.value	0x220
	.uleb128 0x12
	.long	.LASF147
	.byte	0x9
	.value	0x17e
	.long	0x3f
	.value	0x224
	.uleb128 0x12
	.long	.LASF148
	.byte	0x9
	.value	0x17f
	.long	0x3f
	.value	0x228
	.uleb128 0x12
	.long	.LASF149
	.byte	0x9
	.value	0x17f
	.long	0x3f
	.value	0x22c
	.uleb128 0x12
	.long	.LASF150
	.byte	0x9
	.value	0x17f
	.long	0x3f
	.value	0x230
	.uleb128 0x12
	.long	.LASF151
	.byte	0x9
	.value	0x17f
	.long	0x3f
	.value	0x234
	.uleb128 0x12
	.long	.LASF152
	.byte	0x9
	.value	0x181
	.long	0x3f
	.value	0x238
	.uleb128 0x12
	.long	.LASF153
	.byte	0x9
	.value	0x182
	.long	0x3f
	.value	0x23c
	.uleb128 0x12
	.long	.LASF154
	.byte	0x9
	.value	0x183
	.long	0x3f
	.value	0x240
	.uleb128 0x12
	.long	.LASF155
	.byte	0x9
	.value	0x186
	.long	0x3f
	.value	0x244
	.uleb128 0x12
	.long	.LASF156
	.byte	0x9
	.value	0x18a
	.long	0xad5
	.value	0x248
	.uleb128 0x12
	.long	.LASF157
	.byte	0x9
	.value	0x18b
	.long	0x3f
	.value	0x250
	.uleb128 0x12
	.long	.LASF158
	.byte	0x9
	.value	0x18c
	.long	0x3f
	.value	0x254
	.uleb128 0x12
	.long	.LASF159
	.byte	0x9
	.value	0x18d
	.long	0x3f
	.value	0x258
	.uleb128 0x12
	.long	.LASF160
	.byte	0x9
	.value	0x18e
	.long	0x3f
	.value	0x25c
	.uleb128 0x12
	.long	.LASF161
	.byte	0x9
	.value	0x18f
	.long	0x3f
	.value	0x260
	.uleb128 0x12
	.long	.LASF162
	.byte	0x9
	.value	0x191
	.long	0x3f
	.value	0x264
	.uleb128 0x12
	.long	.LASF163
	.byte	0x9
	.value	0x192
	.long	0x3f
	.value	0x268
	.uleb128 0x12
	.long	.LASF164
	.byte	0x9
	.value	0x193
	.long	0x3f
	.value	0x26c
	.uleb128 0x12
	.long	.LASF165
	.byte	0x9
	.value	0x195
	.long	0x3f
	.value	0x270
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x813
	.uleb128 0x5
	.long	0x3f
	.long	0xab5
	.uleb128 0x6
	.long	0x96
	.byte	0x1
	.uleb128 0x6
	.long	0x96
	.byte	0x3
	.uleb128 0x6
	.long	0x96
	.byte	0x3
	.uleb128 0x6
	.long	0x96
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.long	0x3f
	.long	0xac5
	.uleb128 0x6
	.long	0x96
	.byte	0xf
	.byte	0
	.uleb128 0x5
	.long	0x3f
	.long	0xad5
	.uleb128 0x6
	.long	0x96
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF166
	.uleb128 0x13
	.long	.LASF167
	.byte	0x9
	.value	0x196
	.long	0x813
	.uleb128 0x1a
	.byte	0x30
	.byte	0x9
	.value	0x19b
	.long	0xb81
	.uleb128 0xb
	.long	.LASF168
	.byte	0x9
	.value	0x19d
	.long	0x3f
	.byte	0
	.uleb128 0xb
	.long	.LASF169
	.byte	0x9
	.value	0x19e
	.long	0x3f
	.byte	0x4
	.uleb128 0xb
	.long	.LASF170
	.byte	0x9
	.value	0x19f
	.long	0x2c1
	.byte	0x8
	.uleb128 0xb
	.long	.LASF171
	.byte	0x9
	.value	0x1a0
	.long	0x3f
	.byte	0xc
	.uleb128 0xb
	.long	.LASF172
	.byte	0x9
	.value	0x1a1
	.long	0x3f
	.byte	0x10
	.uleb128 0xb
	.long	.LASF173
	.byte	0x9
	.value	0x1a2
	.long	0x2c1
	.byte	0x14
	.uleb128 0xb
	.long	.LASF174
	.byte	0x9
	.value	0x1a4
	.long	0x2c1
	.byte	0x15
	.uleb128 0xb
	.long	.LASF175
	.byte	0x9
	.value	0x1a5
	.long	0x3f
	.byte	0x18
	.uleb128 0xb
	.long	.LASF176
	.byte	0x9
	.value	0x1a6
	.long	0x3f
	.byte	0x1c
	.uleb128 0xb
	.long	.LASF177
	.byte	0x9
	.value	0x1a8
	.long	0x2fc
	.byte	0x20
	.uleb128 0xb
	.long	.LASF178
	.byte	0x9
	.value	0x1a9
	.long	0x3f
	.byte	0x28
	.byte	0
	.uleb128 0x13
	.long	.LASF179
	.byte	0x9
	.value	0x1ab
	.long	0xae8
	.uleb128 0x14
	.long	.LASF180
	.byte	0x78
	.byte	0x9
	.value	0x1ae
	.long	0xbc2
	.uleb128 0xb
	.long	.LASF181
	.byte	0x9
	.value	0x1b1
	.long	0xbc2
	.byte	0
	.uleb128 0xb
	.long	.LASF182
	.byte	0x9
	.value	0x1b2
	.long	0x43c
	.byte	0x8
	.uleb128 0xb
	.long	.LASF183
	.byte	0x9
	.value	0x1b4
	.long	0xbe8
	.byte	0x70
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xb81
	.uleb128 0x1b
	.long	0x3f
	.long	0xbdc
	.uleb128 0x17
	.long	0xbdc
	.uleb128 0x17
	.long	0xbe2
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x807
	.uleb128 0x8
	.byte	0x8
	.long	0xb8d
	.uleb128 0x8
	.byte	0x8
	.long	0xbc8
	.uleb128 0x13
	.long	.LASF184
	.byte	0x9
	.value	0x1b8
	.long	0xb8d
	.uleb128 0x1a
	.byte	0x98
	.byte	0x9
	.value	0x1bb
	.long	0xd07
	.uleb128 0xb
	.long	.LASF185
	.byte	0x9
	.value	0x1bd
	.long	0x3f
	.byte	0
	.uleb128 0x15
	.string	"qp"
	.byte	0x9
	.value	0x1be
	.long	0x3f
	.byte	0x4
	.uleb128 0xb
	.long	.LASF186
	.byte	0x9
	.value	0x1bf
	.long	0x3f
	.byte	0x8
	.uleb128 0xb
	.long	.LASF187
	.byte	0x9
	.value	0x1c0
	.long	0x3f
	.byte	0xc
	.uleb128 0xb
	.long	.LASF188
	.byte	0x9
	.value	0x1c1
	.long	0x3f
	.byte	0x10
	.uleb128 0xb
	.long	.LASF189
	.byte	0x9
	.value	0x1c2
	.long	0x3f
	.byte	0x14
	.uleb128 0xb
	.long	.LASF190
	.byte	0x9
	.value	0x1c3
	.long	0xd07
	.byte	0x18
	.uleb128 0xb
	.long	.LASF191
	.byte	0x9
	.value	0x1c4
	.long	0xd0d
	.byte	0x20
	.uleb128 0xb
	.long	.LASF192
	.byte	0x9
	.value	0x1c5
	.long	0xd13
	.byte	0x28
	.uleb128 0xb
	.long	.LASF193
	.byte	0x9
	.value	0x1c8
	.long	0xd19
	.byte	0x30
	.uleb128 0xb
	.long	.LASF194
	.byte	0x9
	.value	0x1ca
	.long	0x3f
	.byte	0x38
	.uleb128 0xb
	.long	.LASF195
	.byte	0x9
	.value	0x1cb
	.long	0xac
	.byte	0x40
	.uleb128 0xb
	.long	.LASF196
	.byte	0x9
	.value	0x1cc
	.long	0xac
	.byte	0x48
	.uleb128 0xb
	.long	.LASF197
	.byte	0x9
	.value	0x1cd
	.long	0xac
	.byte	0x50
	.uleb128 0xb
	.long	.LASF198
	.byte	0x9
	.value	0x1ce
	.long	0x3f
	.byte	0x58
	.uleb128 0xb
	.long	.LASF199
	.byte	0x9
	.value	0x1cf
	.long	0xac
	.byte	0x60
	.uleb128 0xb
	.long	.LASF200
	.byte	0x9
	.value	0x1d0
	.long	0xac
	.byte	0x68
	.uleb128 0xb
	.long	.LASF201
	.byte	0x9
	.value	0x1d1
	.long	0xac
	.byte	0x70
	.uleb128 0xb
	.long	.LASF202
	.byte	0x9
	.value	0x1d3
	.long	0xd2e
	.byte	0x78
	.uleb128 0xb
	.long	.LASF203
	.byte	0x9
	.value	0x1d5
	.long	0xd34
	.byte	0x80
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xbee
	.uleb128 0x8
	.byte	0x8
	.long	0x574
	.uleb128 0x8
	.byte	0x8
	.long	0x67c
	.uleb128 0x8
	.byte	0x8
	.long	0x6c3
	.uleb128 0x1b
	.long	0x2e1
	.long	0xd2e
	.uleb128 0x17
	.long	0x3f
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xd1f
	.uleb128 0x5
	.long	0x3f
	.long	0xd4a
	.uleb128 0x6
	.long	0x96
	.byte	0x2
	.uleb128 0x6
	.long	0x96
	.byte	0x1
	.byte	0
	.uleb128 0x13
	.long	.LASF204
	.byte	0x9
	.value	0x1d7
	.long	0xbfa
	.uleb128 0x11
	.value	0x338
	.byte	0x9
	.value	0x1db
	.long	0xdc0
	.uleb128 0xb
	.long	.LASF205
	.byte	0x9
	.value	0x1dd
	.long	0x3f
	.byte	0
	.uleb128 0xb
	.long	.LASF206
	.byte	0x9
	.value	0x1de
	.long	0x3f
	.byte	0x4
	.uleb128 0xb
	.long	.LASF207
	.byte	0x9
	.value	0x1df
	.long	0xdc0
	.byte	0x8
	.uleb128 0x12
	.long	.LASF208
	.byte	0x9
	.value	0x1e0
	.long	0x3f
	.value	0x328
	.uleb128 0x12
	.long	.LASF209
	.byte	0x9
	.value	0x1e1
	.long	0xdd6
	.value	0x32c
	.uleb128 0x12
	.long	.LASF210
	.byte	0x9
	.value	0x1e2
	.long	0xdd6
	.value	0x330
	.uleb128 0x12
	.long	.LASF211
	.byte	0x9
	.value	0x1e3
	.long	0xdd6
	.value	0x334
	.byte	0
	.uleb128 0x5
	.long	0xdd0
	.long	0xdd0
	.uleb128 0x6
	.long	0x96
	.byte	0x63
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xd4a
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF212
	.uleb128 0x13
	.long	.LASF213
	.byte	0x9
	.value	0x1e4
	.long	0xd56
	.uleb128 0x8
	.byte	0x8
	.long	0xac
	.uleb128 0x11
	.value	0xe08
	.byte	0x9
	.value	0x295
	.long	0x15f7
	.uleb128 0xb
	.long	.LASF214
	.byte	0x9
	.value	0x297
	.long	0x3f
	.byte	0
	.uleb128 0xb
	.long	.LASF215
	.byte	0x9
	.value	0x298
	.long	0x3f
	.byte	0x4
	.uleb128 0xb
	.long	.LASF216
	.byte	0x9
	.value	0x29a
	.long	0x3f
	.byte	0x8
	.uleb128 0x15
	.string	"qp0"
	.byte	0x9
	.value	0x29b
	.long	0x3f
	.byte	0xc
	.uleb128 0x15
	.string	"qpN"
	.byte	0x9
	.value	0x29c
	.long	0x3f
	.byte	0x10
	.uleb128 0xb
	.long	.LASF217
	.byte	0x9
	.value	0x29d
	.long	0x3f
	.byte	0x14
	.uleb128 0xb
	.long	.LASF218
	.byte	0x9
	.value	0x29e
	.long	0x3f
	.byte	0x18
	.uleb128 0xb
	.long	.LASF219
	.byte	0x9
	.value	0x2a0
	.long	0x3f
	.byte	0x1c
	.uleb128 0xb
	.long	.LASF220
	.byte	0x9
	.value	0x2a1
	.long	0x3f
	.byte	0x20
	.uleb128 0xb
	.long	.LASF221
	.byte	0x9
	.value	0x2a4
	.long	0x3f
	.byte	0x24
	.uleb128 0xb
	.long	.LASF222
	.byte	0x9
	.value	0x2a5
	.long	0x3f
	.byte	0x28
	.uleb128 0xb
	.long	.LASF223
	.byte	0x9
	.value	0x2a6
	.long	0x3f
	.byte	0x2c
	.uleb128 0xb
	.long	.LASF224
	.byte	0x9
	.value	0x2a7
	.long	0x3f
	.byte	0x30
	.uleb128 0xb
	.long	.LASF225
	.byte	0x9
	.value	0x2a8
	.long	0x3f
	.byte	0x34
	.uleb128 0xb
	.long	.LASF226
	.byte	0x9
	.value	0x2a9
	.long	0x3f
	.byte	0x38
	.uleb128 0xb
	.long	.LASF227
	.byte	0x9
	.value	0x2aa
	.long	0x3f
	.byte	0x3c
	.uleb128 0xb
	.long	.LASF228
	.byte	0x9
	.value	0x2ac
	.long	0x3f
	.byte	0x40
	.uleb128 0xb
	.long	.LASF229
	.byte	0x9
	.value	0x2ad
	.long	0x3f
	.byte	0x44
	.uleb128 0xb
	.long	.LASF230
	.byte	0x9
	.value	0x2ae
	.long	0x3f
	.byte	0x48
	.uleb128 0xb
	.long	.LASF231
	.byte	0x9
	.value	0x2af
	.long	0x3f
	.byte	0x4c
	.uleb128 0xb
	.long	.LASF232
	.byte	0x9
	.value	0x2b3
	.long	0x15f7
	.byte	0x50
	.uleb128 0xb
	.long	.LASF233
	.byte	0x9
	.value	0x2b4
	.long	0x15f7
	.byte	0x90
	.uleb128 0xb
	.long	.LASF234
	.byte	0x9
	.value	0x2b5
	.long	0x3f
	.byte	0xd0
	.uleb128 0xb
	.long	.LASF235
	.byte	0x9
	.value	0x2b6
	.long	0x3f
	.byte	0xd4
	.uleb128 0xb
	.long	.LASF236
	.byte	0x9
	.value	0x2b7
	.long	0x3f
	.byte	0xd8
	.uleb128 0xb
	.long	.LASF237
	.byte	0x9
	.value	0x2b8
	.long	0x3f
	.byte	0xdc
	.uleb128 0xb
	.long	.LASF238
	.byte	0x9
	.value	0x2b9
	.long	0x160d
	.byte	0xe0
	.uleb128 0x12
	.long	.LASF239
	.byte	0x9
	.value	0x2ba
	.long	0x160d
	.value	0x1a8
	.uleb128 0x12
	.long	.LASF240
	.byte	0x9
	.value	0x2bb
	.long	0x160d
	.value	0x270
	.uleb128 0x12
	.long	.LASF241
	.byte	0x9
	.value	0x2bc
	.long	0x160d
	.value	0x338
	.uleb128 0x12
	.long	.LASF242
	.byte	0x9
	.value	0x2bd
	.long	0x160d
	.value	0x400
	.uleb128 0x12
	.long	.LASF243
	.byte	0x9
	.value	0x2be
	.long	0x3f
	.value	0x4c8
	.uleb128 0x12
	.long	.LASF244
	.byte	0x9
	.value	0x2c0
	.long	0x3f
	.value	0x4cc
	.uleb128 0x12
	.long	.LASF245
	.byte	0x9
	.value	0x2c1
	.long	0x3f
	.value	0x4d0
	.uleb128 0x12
	.long	.LASF246
	.byte	0x9
	.value	0x2c4
	.long	0x3f
	.value	0x4d4
	.uleb128 0x19
	.string	"qpB"
	.byte	0x9
	.value	0x2c5
	.long	0x3f
	.value	0x4d8
	.uleb128 0x12
	.long	.LASF247
	.byte	0x9
	.value	0x2c6
	.long	0x3f
	.value	0x4dc
	.uleb128 0x12
	.long	.LASF248
	.byte	0x9
	.value	0x2c7
	.long	0x3f
	.value	0x4e0
	.uleb128 0x12
	.long	.LASF249
	.byte	0x9
	.value	0x2c8
	.long	0x3f
	.value	0x4e4
	.uleb128 0x12
	.long	.LASF250
	.byte	0x9
	.value	0x2ca
	.long	0x3f
	.value	0x4e8
	.uleb128 0x12
	.long	.LASF251
	.byte	0x9
	.value	0x2cb
	.long	0x3f
	.value	0x4ec
	.uleb128 0x12
	.long	.LASF252
	.byte	0x9
	.value	0x2cc
	.long	0x3f
	.value	0x4f0
	.uleb128 0x12
	.long	.LASF253
	.byte	0x9
	.value	0x2cd
	.long	0x3f
	.value	0x4f4
	.uleb128 0x12
	.long	.LASF254
	.byte	0x9
	.value	0x2d1
	.long	0x3f
	.value	0x4f8
	.uleb128 0x12
	.long	.LASF127
	.byte	0x9
	.value	0x2d2
	.long	0x3f
	.value	0x4fc
	.uleb128 0x12
	.long	.LASF255
	.byte	0x9
	.value	0x2d3
	.long	0x3f
	.value	0x500
	.uleb128 0x12
	.long	.LASF256
	.byte	0x9
	.value	0x2d5
	.long	0x3f
	.value	0x504
	.uleb128 0x12
	.long	.LASF257
	.byte	0x9
	.value	0x2d6
	.long	0x3f
	.value	0x508
	.uleb128 0x12
	.long	.LASF258
	.byte	0x9
	.value	0x2d7
	.long	0x3f
	.value	0x50c
	.uleb128 0x12
	.long	.LASF259
	.byte	0x9
	.value	0x2d8
	.long	0x3f
	.value	0x510
	.uleb128 0x12
	.long	.LASF260
	.byte	0x9
	.value	0x2d9
	.long	0x3f
	.value	0x514
	.uleb128 0x12
	.long	.LASF261
	.byte	0x9
	.value	0x2da
	.long	0x3f
	.value	0x518
	.uleb128 0x12
	.long	.LASF262
	.byte	0x9
	.value	0x2db
	.long	0x3f
	.value	0x51c
	.uleb128 0x12
	.long	.LASF263
	.byte	0x9
	.value	0x2dc
	.long	0x3f
	.value	0x520
	.uleb128 0x12
	.long	.LASF264
	.byte	0x9
	.value	0x2dd
	.long	0x3f
	.value	0x524
	.uleb128 0x12
	.long	.LASF265
	.byte	0x9
	.value	0x2de
	.long	0x3f
	.value	0x528
	.uleb128 0x12
	.long	.LASF266
	.byte	0x9
	.value	0x2df
	.long	0x161d
	.value	0x52c
	.uleb128 0x12
	.long	.LASF267
	.byte	0x9
	.value	0x2e0
	.long	0x3f
	.value	0x92c
	.uleb128 0x12
	.long	.LASF268
	.byte	0x9
	.value	0x2e1
	.long	0x3f
	.value	0x930
	.uleb128 0x12
	.long	.LASF269
	.byte	0x9
	.value	0x2e3
	.long	0x3f
	.value	0x934
	.uleb128 0x12
	.long	.LASF270
	.byte	0x9
	.value	0x2e4
	.long	0x3f
	.value	0x938
	.uleb128 0x12
	.long	.LASF271
	.byte	0x9
	.value	0x2e5
	.long	0x3f
	.value	0x93c
	.uleb128 0x12
	.long	.LASF272
	.byte	0x9
	.value	0x2e7
	.long	0x3f
	.value	0x940
	.uleb128 0x12
	.long	.LASF273
	.byte	0x9
	.value	0x2e8
	.long	0x3f
	.value	0x944
	.uleb128 0x12
	.long	.LASF274
	.byte	0x9
	.value	0x2e9
	.long	0x3f
	.value	0x948
	.uleb128 0x12
	.long	.LASF275
	.byte	0x9
	.value	0x2ea
	.long	0x3f
	.value	0x94c
	.uleb128 0x12
	.long	.LASF276
	.byte	0x9
	.value	0x2eb
	.long	0x3f
	.value	0x950
	.uleb128 0x12
	.long	.LASF277
	.byte	0x9
	.value	0x2ec
	.long	0x3f
	.value	0x954
	.uleb128 0x12
	.long	.LASF278
	.byte	0x9
	.value	0x2ed
	.long	0x3f
	.value	0x958
	.uleb128 0x12
	.long	.LASF279
	.byte	0x9
	.value	0x2ef
	.long	0x3f
	.value	0x95c
	.uleb128 0x12
	.long	.LASF280
	.byte	0x9
	.value	0x2f0
	.long	0x3f
	.value	0x960
	.uleb128 0x12
	.long	.LASF281
	.byte	0x9
	.value	0x2f1
	.long	0x3f
	.value	0x964
	.uleb128 0x12
	.long	.LASF282
	.byte	0x9
	.value	0x2f2
	.long	0x3f
	.value	0x968
	.uleb128 0x12
	.long	.LASF283
	.byte	0x9
	.value	0x2f3
	.long	0x3f
	.value	0x96c
	.uleb128 0x12
	.long	.LASF284
	.byte	0x9
	.value	0x2f4
	.long	0x3f
	.value	0x970
	.uleb128 0x12
	.long	.LASF285
	.byte	0x9
	.value	0x2f5
	.long	0x3f
	.value	0x974
	.uleb128 0x12
	.long	.LASF286
	.byte	0x9
	.value	0x2f7
	.long	0xad5
	.value	0x978
	.uleb128 0x12
	.long	.LASF287
	.byte	0x9
	.value	0x2f9
	.long	0x3f
	.value	0x980
	.uleb128 0x12
	.long	.LASF288
	.byte	0x9
	.value	0x2fb
	.long	0x3f
	.value	0x984
	.uleb128 0x12
	.long	.LASF289
	.byte	0x9
	.value	0x2fe
	.long	0x3f
	.value	0x988
	.uleb128 0x12
	.long	.LASF290
	.byte	0x9
	.value	0x301
	.long	0x3f
	.value	0x98c
	.uleb128 0x12
	.long	.LASF291
	.byte	0x9
	.value	0x301
	.long	0x3f
	.value	0x990
	.uleb128 0x12
	.long	.LASF292
	.byte	0x9
	.value	0x301
	.long	0x3f
	.value	0x994
	.uleb128 0x12
	.long	.LASF293
	.byte	0x9
	.value	0x302
	.long	0x3f
	.value	0x998
	.uleb128 0x12
	.long	.LASF294
	.byte	0x9
	.value	0x302
	.long	0x3f
	.value	0x99c
	.uleb128 0x12
	.long	.LASF295
	.byte	0x9
	.value	0x304
	.long	0x3f
	.value	0x9a0
	.uleb128 0x12
	.long	.LASF296
	.byte	0x9
	.value	0x305
	.long	0x3f
	.value	0x9a4
	.uleb128 0x12
	.long	.LASF297
	.byte	0x9
	.value	0x306
	.long	0x3f
	.value	0x9a8
	.uleb128 0x12
	.long	.LASF298
	.byte	0x9
	.value	0x309
	.long	0x3f
	.value	0x9ac
	.uleb128 0x12
	.long	.LASF299
	.byte	0x9
	.value	0x30a
	.long	0x160d
	.value	0x9b0
	.uleb128 0x12
	.long	.LASF300
	.byte	0x9
	.value	0x30b
	.long	0x160d
	.value	0xa78
	.uleb128 0x12
	.long	.LASF301
	.byte	0x9
	.value	0x30e
	.long	0x3f
	.value	0xb40
	.uleb128 0x12
	.long	.LASF302
	.byte	0x9
	.value	0x30f
	.long	0x3f
	.value	0xb44
	.uleb128 0x12
	.long	.LASF303
	.byte	0x9
	.value	0x311
	.long	0x3f
	.value	0xb48
	.uleb128 0x12
	.long	.LASF304
	.byte	0x9
	.value	0x313
	.long	0x3f
	.value	0xb4c
	.uleb128 0x12
	.long	.LASF305
	.byte	0x9
	.value	0x314
	.long	0x3f
	.value	0xb50
	.uleb128 0x12
	.long	.LASF306
	.byte	0x9
	.value	0x315
	.long	0x3f
	.value	0xb54
	.uleb128 0x12
	.long	.LASF307
	.byte	0x9
	.value	0x316
	.long	0x3f
	.value	0xb58
	.uleb128 0x12
	.long	.LASF308
	.byte	0x9
	.value	0x317
	.long	0x3f
	.value	0xb5c
	.uleb128 0x12
	.long	.LASF309
	.byte	0x9
	.value	0x318
	.long	0x3f
	.value	0xb60
	.uleb128 0x12
	.long	.LASF310
	.byte	0x9
	.value	0x319
	.long	0x3f
	.value	0xb64
	.uleb128 0x12
	.long	.LASF311
	.byte	0x9
	.value	0x31b
	.long	0x3f
	.value	0xb68
	.uleb128 0x12
	.long	.LASF312
	.byte	0x9
	.value	0x31d
	.long	0x3f
	.value	0xb6c
	.uleb128 0x12
	.long	.LASF162
	.byte	0x9
	.value	0x31e
	.long	0x3f
	.value	0xb70
	.uleb128 0x12
	.long	.LASF163
	.byte	0x9
	.value	0x31f
	.long	0x3f
	.value	0xb74
	.uleb128 0x12
	.long	.LASF164
	.byte	0x9
	.value	0x320
	.long	0x3f
	.value	0xb78
	.uleb128 0x12
	.long	.LASF313
	.byte	0x9
	.value	0x322
	.long	0x3f
	.value	0xb7c
	.uleb128 0x12
	.long	.LASF314
	.byte	0x9
	.value	0x323
	.long	0x3f
	.value	0xb80
	.uleb128 0x12
	.long	.LASF315
	.byte	0x9
	.value	0x324
	.long	0x3f
	.value	0xb84
	.uleb128 0x12
	.long	.LASF316
	.byte	0x9
	.value	0x327
	.long	0x160d
	.value	0xb88
	.uleb128 0x12
	.long	.LASF317
	.byte	0x9
	.value	0x328
	.long	0x3f
	.value	0xc50
	.uleb128 0x12
	.long	.LASF318
	.byte	0x9
	.value	0x329
	.long	0x3f
	.value	0xc54
	.uleb128 0x12
	.long	.LASF319
	.byte	0x9
	.value	0x32b
	.long	0xac
	.value	0xc58
	.uleb128 0x12
	.long	.LASF320
	.byte	0x9
	.value	0x32c
	.long	0xac
	.value	0xc60
	.uleb128 0x12
	.long	.LASF321
	.byte	0x9
	.value	0x32d
	.long	0x2fc
	.value	0xc68
	.uleb128 0x12
	.long	.LASF322
	.byte	0x9
	.value	0x32e
	.long	0xac
	.value	0xc70
	.uleb128 0x12
	.long	.LASF323
	.byte	0x9
	.value	0x330
	.long	0x3f
	.value	0xc78
	.uleb128 0x12
	.long	.LASF324
	.byte	0x9
	.value	0x331
	.long	0x3f
	.value	0xc7c
	.uleb128 0x12
	.long	.LASF325
	.byte	0x9
	.value	0x332
	.long	0x3f
	.value	0xc80
	.uleb128 0x12
	.long	.LASF326
	.byte	0x9
	.value	0x334
	.long	0x3f
	.value	0xc84
	.uleb128 0x12
	.long	.LASF327
	.byte	0x9
	.value	0x335
	.long	0x3f
	.value	0xc88
	.uleb128 0x12
	.long	.LASF328
	.byte	0x9
	.value	0x337
	.long	0x3f
	.value	0xc8c
	.uleb128 0x12
	.long	.LASF329
	.byte	0x9
	.value	0x338
	.long	0x3f
	.value	0xc90
	.uleb128 0x12
	.long	.LASF330
	.byte	0x9
	.value	0x339
	.long	0x3f
	.value	0xc94
	.uleb128 0x12
	.long	.LASF331
	.byte	0x9
	.value	0x33a
	.long	0x3f
	.value	0xc98
	.uleb128 0x12
	.long	.LASF332
	.byte	0x9
	.value	0x33b
	.long	0x3f
	.value	0xc9c
	.uleb128 0x12
	.long	.LASF333
	.byte	0x9
	.value	0x33c
	.long	0x3f
	.value	0xca0
	.uleb128 0x12
	.long	.LASF334
	.byte	0x9
	.value	0x33f
	.long	0x3f
	.value	0xca4
	.uleb128 0x12
	.long	.LASF335
	.byte	0x9
	.value	0x340
	.long	0x3f
	.value	0xca8
	.uleb128 0x12
	.long	.LASF336
	.byte	0x9
	.value	0x341
	.long	0x3f
	.value	0xcac
	.uleb128 0x12
	.long	.LASF337
	.byte	0x9
	.value	0x342
	.long	0x3f
	.value	0xcb0
	.uleb128 0x12
	.long	.LASF338
	.byte	0x9
	.value	0x343
	.long	0x3f
	.value	0xcb4
	.uleb128 0x12
	.long	.LASF339
	.byte	0x9
	.value	0x345
	.long	0x3f
	.value	0xcb8
	.uleb128 0x12
	.long	.LASF340
	.byte	0x9
	.value	0x346
	.long	0x2ec
	.value	0xcbc
	.uleb128 0x12
	.long	.LASF341
	.byte	0x9
	.value	0x349
	.long	0x3f
	.value	0xcdc
	.uleb128 0x12
	.long	.LASF342
	.byte	0x9
	.value	0x34c
	.long	0x3f
	.value	0xce0
	.uleb128 0x12
	.long	.LASF343
	.byte	0x9
	.value	0x34d
	.long	0x3f
	.value	0xce4
	.uleb128 0x12
	.long	.LASF344
	.byte	0x9
	.value	0x34e
	.long	0x3f
	.value	0xce8
	.uleb128 0x12
	.long	.LASF345
	.byte	0x9
	.value	0x34f
	.long	0x3f
	.value	0xcec
	.uleb128 0x12
	.long	.LASF346
	.byte	0x9
	.value	0x350
	.long	0x3f
	.value	0xcf0
	.uleb128 0x12
	.long	.LASF347
	.byte	0x9
	.value	0x351
	.long	0x3f
	.value	0xcf4
	.uleb128 0x12
	.long	.LASF348
	.byte	0x9
	.value	0x352
	.long	0x3f
	.value	0xcf8
	.uleb128 0x12
	.long	.LASF349
	.byte	0x9
	.value	0x355
	.long	0x3f
	.value	0xcfc
	.uleb128 0x12
	.long	.LASF350
	.byte	0x9
	.value	0x358
	.long	0x3f
	.value	0xd00
	.uleb128 0x12
	.long	.LASF351
	.byte	0x9
	.value	0x35b
	.long	0x3f
	.value	0xd04
	.uleb128 0x12
	.long	.LASF352
	.byte	0x9
	.value	0x35c
	.long	0x162e
	.value	0xd08
	.uleb128 0x12
	.long	.LASF353
	.byte	0x9
	.value	0x35e
	.long	0x160d
	.value	0xd38
	.uleb128 0x12
	.long	.LASF354
	.byte	0x9
	.value	0x35f
	.long	0x3f
	.value	0xe00
	.byte	0
	.uleb128 0x5
	.long	0x3f
	.long	0x160d
	.uleb128 0x6
	.long	0x96
	.byte	0x7
	.uleb128 0x6
	.long	0x96
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.long	0xa5
	.long	0x161d
	.uleb128 0x6
	.long	0x96
	.byte	0xc7
	.byte	0
	.uleb128 0x5
	.long	0xa5
	.long	0x162e
	.uleb128 0x1c
	.long	0x96
	.value	0x3ff
	.byte	0
	.uleb128 0x5
	.long	0xad5
	.long	0x163e
	.uleb128 0x6
	.long	0x96
	.byte	0x5
	.byte	0
	.uleb128 0x13
	.long	.LASF355
	.byte	0x9
	.value	0x361
	.long	0xdef
	.uleb128 0x1d
	.long	0x11c20
	.byte	0x9
	.value	0x364
	.long	0x202f
	.uleb128 0xb
	.long	.LASF356
	.byte	0x9
	.value	0x366
	.long	0x3f
	.byte	0
	.uleb128 0x15
	.string	"pn"
	.byte	0x9
	.value	0x367
	.long	0x3f
	.byte	0x4
	.uleb128 0xb
	.long	.LASF357
	.byte	0x9
	.value	0x368
	.long	0x3f
	.byte	0x8
	.uleb128 0xb
	.long	.LASF358
	.byte	0x9
	.value	0x369
	.long	0x3f
	.byte	0xc
	.uleb128 0xb
	.long	.LASF359
	.byte	0x9
	.value	0x36a
	.long	0x3f
	.byte	0x10
	.uleb128 0xb
	.long	.LASF360
	.byte	0x9
	.value	0x36b
	.long	0x3f
	.byte	0x14
	.uleb128 0xb
	.long	.LASF115
	.byte	0x9
	.value	0x36c
	.long	0x3f
	.byte	0x18
	.uleb128 0xb
	.long	.LASF361
	.byte	0x9
	.value	0x36d
	.long	0x3f
	.byte	0x1c
	.uleb128 0xb
	.long	.LASF221
	.byte	0x9
	.value	0x36e
	.long	0x3f
	.byte	0x20
	.uleb128 0xb
	.long	.LASF362
	.byte	0x9
	.value	0x36f
	.long	0x3f
	.byte	0x24
	.uleb128 0x15
	.string	"qp"
	.byte	0x9
	.value	0x370
	.long	0x3f
	.byte	0x28
	.uleb128 0xb
	.long	.LASF127
	.byte	0x9
	.value	0x371
	.long	0x3f
	.byte	0x2c
	.uleb128 0xb
	.long	.LASF363
	.byte	0x9
	.value	0x372
	.long	0xdd6
	.byte	0x30
	.uleb128 0xb
	.long	.LASF364
	.byte	0x9
	.value	0x373
	.long	0x3f
	.byte	0x34
	.uleb128 0xb
	.long	.LASF365
	.byte	0x9
	.value	0x374
	.long	0x3f
	.byte	0x38
	.uleb128 0xb
	.long	.LASF366
	.byte	0x9
	.value	0x375
	.long	0x3f
	.byte	0x3c
	.uleb128 0xb
	.long	.LASF367
	.byte	0x9
	.value	0x376
	.long	0x3f
	.byte	0x40
	.uleb128 0xb
	.long	.LASF368
	.byte	0x9
	.value	0x377
	.long	0x3f
	.byte	0x44
	.uleb128 0xb
	.long	.LASF369
	.byte	0x9
	.value	0x378
	.long	0x3f
	.byte	0x48
	.uleb128 0xb
	.long	.LASF370
	.byte	0x9
	.value	0x379
	.long	0x3f
	.byte	0x4c
	.uleb128 0xb
	.long	.LASF371
	.byte	0x9
	.value	0x37a
	.long	0x3f
	.byte	0x50
	.uleb128 0xb
	.long	.LASF372
	.byte	0x9
	.value	0x37b
	.long	0x3f
	.byte	0x54
	.uleb128 0xb
	.long	.LASF373
	.byte	0x9
	.value	0x37c
	.long	0x3f
	.byte	0x58
	.uleb128 0xb
	.long	.LASF374
	.byte	0x9
	.value	0x37d
	.long	0x3f
	.byte	0x5c
	.uleb128 0xb
	.long	.LASF375
	.byte	0x9
	.value	0x37e
	.long	0x3f
	.byte	0x60
	.uleb128 0xb
	.long	.LASF376
	.byte	0x9
	.value	0x37f
	.long	0xde9
	.byte	0x68
	.uleb128 0xb
	.long	.LASF377
	.byte	0x9
	.value	0x380
	.long	0xde9
	.byte	0x70
	.uleb128 0xb
	.long	.LASF378
	.byte	0x9
	.value	0x382
	.long	0x3f
	.byte	0x78
	.uleb128 0xb
	.long	.LASF379
	.byte	0x9
	.value	0x383
	.long	0x202f
	.byte	0x80
	.uleb128 0xb
	.long	.LASF380
	.byte	0x9
	.value	0x385
	.long	0x3f
	.byte	0x88
	.uleb128 0xb
	.long	.LASF381
	.byte	0x9
	.value	0x386
	.long	0x3f
	.byte	0x8c
	.uleb128 0xb
	.long	.LASF382
	.byte	0x9
	.value	0x387
	.long	0x3f
	.byte	0x90
	.uleb128 0xb
	.long	.LASF383
	.byte	0x9
	.value	0x388
	.long	0x3f
	.byte	0x94
	.uleb128 0xb
	.long	.LASF384
	.byte	0x9
	.value	0x389
	.long	0x3f
	.byte	0x98
	.uleb128 0xb
	.long	.LASF385
	.byte	0x9
	.value	0x38a
	.long	0x3f
	.byte	0x9c
	.uleb128 0xb
	.long	.LASF386
	.byte	0x9
	.value	0x38b
	.long	0x3f
	.byte	0xa0
	.uleb128 0xb
	.long	.LASF387
	.byte	0x9
	.value	0x38c
	.long	0x3f
	.byte	0xa4
	.uleb128 0xb
	.long	.LASF388
	.byte	0x9
	.value	0x38e
	.long	0x3f
	.byte	0xa8
	.uleb128 0xb
	.long	.LASF389
	.byte	0x9
	.value	0x38f
	.long	0x3f
	.byte	0xac
	.uleb128 0xb
	.long	.LASF390
	.byte	0x9
	.value	0x390
	.long	0x3f
	.byte	0xb0
	.uleb128 0xb
	.long	.LASF391
	.byte	0x9
	.value	0x391
	.long	0x3f
	.byte	0xb4
	.uleb128 0xb
	.long	.LASF392
	.byte	0x9
	.value	0x395
	.long	0x2035
	.byte	0xb8
	.uleb128 0x12
	.long	.LASF393
	.byte	0x9
	.value	0x397
	.long	0x2051
	.value	0x12b8
	.uleb128 0x12
	.long	.LASF394
	.byte	0x9
	.value	0x398
	.long	0x206d
	.value	0x1cb8
	.uleb128 0x12
	.long	.LASF395
	.byte	0x9
	.value	0x399
	.long	0x2089
	.value	0x2138
	.uleb128 0x19
	.string	"mpr"
	.byte	0x9
	.value	0x39a
	.long	0x20ab
	.value	0x3138
	.uleb128 0x19
	.string	"m7"
	.byte	0x9
	.value	0x39b
	.long	0x20c1
	.value	0x3338
	.uleb128 0x12
	.long	.LASF396
	.byte	0x9
	.value	0x39d
	.long	0x20d7
	.value	0x3738
	.uleb128 0x12
	.long	.LASF397
	.byte	0x9
	.value	0x39e
	.long	0x202f
	.value	0x3740
	.uleb128 0x12
	.long	.LASF398
	.byte	0x9
	.value	0x3a0
	.long	0x20dd
	.value	0x3748
	.uleb128 0x12
	.long	.LASF399
	.byte	0x9
	.value	0x3a1
	.long	0xdd0
	.value	0x3750
	.uleb128 0x12
	.long	.LASF400
	.byte	0x9
	.value	0x3a2
	.long	0x20e3
	.value	0x3758
	.uleb128 0x12
	.long	.LASF401
	.byte	0x9
	.value	0x3a3
	.long	0x20e9
	.value	0x3760
	.uleb128 0x1e
	.long	.LASF402
	.byte	0x9
	.value	0x3a5
	.long	0xac
	.long	0x11860
	.uleb128 0x1e
	.long	.LASF403
	.byte	0x9
	.value	0x3a6
	.long	0xac
	.long	0x11868
	.uleb128 0x1f
	.string	"tr"
	.byte	0x9
	.value	0x3a8
	.long	0x3f
	.long	0x11870
	.uleb128 0x1e
	.long	.LASF404
	.byte	0x9
	.value	0x3a9
	.long	0x3f
	.long	0x11874
	.uleb128 0x1e
	.long	.LASF405
	.byte	0x9
	.value	0x3aa
	.long	0x54
	.long	0x11878
	.uleb128 0x1e
	.long	.LASF406
	.byte	0x9
	.value	0x3ab
	.long	0x54
	.long	0x1187c
	.uleb128 0x1e
	.long	.LASF407
	.byte	0x9
	.value	0x3ac
	.long	0x20fa
	.long	0x11880
	.uleb128 0x1e
	.long	.LASF408
	.byte	0x9
	.value	0x3ad
	.long	0x3f
	.long	0x118c0
	.uleb128 0x1e
	.long	.LASF409
	.byte	0x9
	.value	0x3ae
	.long	0x3f
	.long	0x118c4
	.uleb128 0x1e
	.long	.LASF410
	.byte	0x9
	.value	0x3af
	.long	0x3f
	.long	0x118c8
	.uleb128 0x1e
	.long	.LASF411
	.byte	0x9
	.value	0x3b0
	.long	0x3f
	.long	0x118cc
	.uleb128 0x1e
	.long	.LASF412
	.byte	0x9
	.value	0x3b1
	.long	0x3f
	.long	0x118d0
	.uleb128 0x1e
	.long	.LASF413
	.byte	0x9
	.value	0x3b4
	.long	0xad5
	.long	0x118d8
	.uleb128 0x1e
	.long	.LASF414
	.byte	0x9
	.value	0x3b5
	.long	0x3f
	.long	0x118e0
	.uleb128 0x1e
	.long	.LASF415
	.byte	0x9
	.value	0x3b6
	.long	0x3f
	.long	0x118e4
	.uleb128 0x1e
	.long	.LASF416
	.byte	0x9
	.value	0x3b7
	.long	0x3f
	.long	0x118e8
	.uleb128 0x1e
	.long	.LASF417
	.byte	0x9
	.value	0x3b8
	.long	0x3f
	.long	0x118ec
	.uleb128 0x1e
	.long	.LASF418
	.byte	0x9
	.value	0x3ba
	.long	0x2110
	.long	0x118f0
	.uleb128 0x1e
	.long	.LASF419
	.byte	0x9
	.value	0x3bb
	.long	0x2110
	.long	0x118f8
	.uleb128 0x1e
	.long	.LASF420
	.byte	0x9
	.value	0x3bd
	.long	0x2110
	.long	0x11900
	.uleb128 0x1e
	.long	.LASF421
	.byte	0x9
	.value	0x3be
	.long	0x2110
	.long	0x11908
	.uleb128 0x1e
	.long	.LASF155
	.byte	0x9
	.value	0x3bf
	.long	0x2134
	.long	0x11910
	.uleb128 0x1e
	.long	.LASF162
	.byte	0x9
	.value	0x3c3
	.long	0x3f
	.long	0x11930
	.uleb128 0x1e
	.long	.LASF163
	.byte	0x9
	.value	0x3c4
	.long	0x3f
	.long	0x11934
	.uleb128 0x1e
	.long	.LASF164
	.byte	0x9
	.value	0x3c5
	.long	0x3f
	.long	0x11938
	.uleb128 0x1e
	.long	.LASF248
	.byte	0x9
	.value	0x3c7
	.long	0x3f
	.long	0x1193c
	.uleb128 0x1e
	.long	.LASF422
	.byte	0x9
	.value	0x3c9
	.long	0x3f
	.long	0x11940
	.uleb128 0x1e
	.long	.LASF423
	.byte	0x9
	.value	0x3ca
	.long	0x3f
	.long	0x11944
	.uleb128 0x1e
	.long	.LASF424
	.byte	0x9
	.value	0x3cc
	.long	0x3f
	.long	0x11948
	.uleb128 0x1e
	.long	.LASF425
	.byte	0x9
	.value	0x3cd
	.long	0x3f
	.long	0x1194c
	.uleb128 0x1e
	.long	.LASF426
	.byte	0x9
	.value	0x3ce
	.long	0x2144
	.long	0x11950
	.uleb128 0x1e
	.long	.LASF427
	.byte	0x9
	.value	0x3cf
	.long	0x3f
	.long	0x11ab8
	.uleb128 0x1e
	.long	.LASF428
	.byte	0x9
	.value	0x3d0
	.long	0x3f
	.long	0x11abc
	.uleb128 0x1e
	.long	.LASF429
	.byte	0x9
	.value	0x3d2
	.long	0x3f
	.long	0x11ac0
	.uleb128 0x1e
	.long	.LASF430
	.byte	0x9
	.value	0x3d3
	.long	0x3f
	.long	0x11ac4
	.uleb128 0x1e
	.long	.LASF431
	.byte	0x9
	.value	0x3d4
	.long	0x3f
	.long	0x11ac8
	.uleb128 0x1e
	.long	.LASF432
	.byte	0x9
	.value	0x3d6
	.long	0x3f
	.long	0x11acc
	.uleb128 0x1e
	.long	.LASF433
	.byte	0x9
	.value	0x3d8
	.long	0x3f
	.long	0x11ad0
	.uleb128 0x1e
	.long	.LASF327
	.byte	0x9
	.value	0x3dc
	.long	0x54
	.long	0x11ad4
	.uleb128 0x1e
	.long	.LASF434
	.byte	0x9
	.value	0x3e0
	.long	0x54
	.long	0x11ad8
	.uleb128 0x1e
	.long	.LASF435
	.byte	0x9
	.value	0x3e1
	.long	0x3f
	.long	0x11adc
	.uleb128 0x1e
	.long	.LASF436
	.byte	0x9
	.value	0x3e2
	.long	0x3f
	.long	0x11ae0
	.uleb128 0x1e
	.long	.LASF437
	.byte	0x9
	.value	0x3e3
	.long	0x54
	.long	0x11ae4
	.uleb128 0x1e
	.long	.LASF438
	.byte	0x9
	.value	0x3e4
	.long	0x215a
	.long	0x11ae8
	.uleb128 0x1e
	.long	.LASF439
	.byte	0x9
	.value	0x3e9
	.long	0x54
	.long	0x11aec
	.uleb128 0x1e
	.long	.LASF440
	.byte	0x9
	.value	0x3ea
	.long	0x3f
	.long	0x11af0
	.uleb128 0x1e
	.long	.LASF441
	.byte	0x9
	.value	0x3ec
	.long	0x86
	.long	0x11af4
	.uleb128 0x1e
	.long	.LASF442
	.byte	0x9
	.value	0x3f0
	.long	0x54
	.long	0x11afc
	.uleb128 0x1e
	.long	.LASF443
	.byte	0x9
	.value	0x3f1
	.long	0x3f
	.long	0x11b00
	.uleb128 0x1e
	.long	.LASF444
	.byte	0x9
	.value	0x3f2
	.long	0x3f
	.long	0x11b04
	.uleb128 0x1e
	.long	.LASF445
	.byte	0x9
	.value	0x3f3
	.long	0x3f
	.long	0x11b08
	.uleb128 0x1e
	.long	.LASF446
	.byte	0x9
	.value	0x3f4
	.long	0x3f
	.long	0x11b0c
	.uleb128 0x1e
	.long	.LASF447
	.byte	0x9
	.value	0x3f5
	.long	0x54
	.long	0x11b10
	.uleb128 0x1e
	.long	.LASF448
	.byte	0x9
	.value	0x3f7
	.long	0x54
	.long	0x11b14
	.uleb128 0x1e
	.long	.LASF449
	.byte	0x9
	.value	0x3f8
	.long	0x54
	.long	0x11b18
	.uleb128 0x1e
	.long	.LASF450
	.byte	0x9
	.value	0x3f9
	.long	0x54
	.long	0x11b1c
	.uleb128 0x1e
	.long	.LASF451
	.byte	0x9
	.value	0x3fa
	.long	0x54
	.long	0x11b20
	.uleb128 0x1e
	.long	.LASF452
	.byte	0x9
	.value	0x3fb
	.long	0x54
	.long	0x11b24
	.uleb128 0x1e
	.long	.LASF453
	.byte	0x9
	.value	0x3fc
	.long	0x54
	.long	0x11b28
	.uleb128 0x1e
	.long	.LASF454
	.byte	0x9
	.value	0x3ff
	.long	0x54
	.long	0x11b2c
	.uleb128 0x1e
	.long	.LASF455
	.byte	0x9
	.value	0x403
	.long	0x3f
	.long	0x11b30
	.uleb128 0x1e
	.long	.LASF456
	.byte	0x9
	.value	0x405
	.long	0x3f
	.long	0x11b34
	.uleb128 0x1e
	.long	.LASF457
	.byte	0x9
	.value	0x406
	.long	0x3f
	.long	0x11b38
	.uleb128 0x1e
	.long	.LASF458
	.byte	0x9
	.value	0x407
	.long	0x3f
	.long	0x11b3c
	.uleb128 0x1e
	.long	.LASF459
	.byte	0x9
	.value	0x409
	.long	0x216a
	.long	0x11b40
	.uleb128 0x1e
	.long	.LASF329
	.byte	0x9
	.value	0x40b
	.long	0x3f
	.long	0x11b48
	.uleb128 0x1e
	.long	.LASF460
	.byte	0x9
	.value	0x40f
	.long	0x3f
	.long	0x11b4c
	.uleb128 0x1e
	.long	.LASF461
	.byte	0x9
	.value	0x410
	.long	0x3f
	.long	0x11b50
	.uleb128 0x1e
	.long	.LASF462
	.byte	0x9
	.value	0x411
	.long	0x3f
	.long	0x11b54
	.uleb128 0x1e
	.long	.LASF463
	.byte	0x9
	.value	0x412
	.long	0x3f
	.long	0x11b58
	.uleb128 0x1e
	.long	.LASF464
	.byte	0x9
	.value	0x413
	.long	0xad5
	.long	0x11b60
	.uleb128 0x1e
	.long	.LASF465
	.byte	0x9
	.value	0x414
	.long	0x3f
	.long	0x11b68
	.uleb128 0x1e
	.long	.LASF466
	.byte	0x9
	.value	0x415
	.long	0x3f
	.long	0x11b6c
	.uleb128 0x1e
	.long	.LASF467
	.byte	0x9
	.value	0x416
	.long	0x3f
	.long	0x11b70
	.uleb128 0x1e
	.long	.LASF468
	.byte	0x9
	.value	0x417
	.long	0x3f
	.long	0x11b74
	.uleb128 0x1e
	.long	.LASF469
	.byte	0x9
	.value	0x418
	.long	0x3f
	.long	0x11b78
	.uleb128 0x1e
	.long	.LASF470
	.byte	0x9
	.value	0x419
	.long	0x3f
	.long	0x11b7c
	.uleb128 0x1e
	.long	.LASF471
	.byte	0x9
	.value	0x41a
	.long	0x3f
	.long	0x11b80
	.uleb128 0x1e
	.long	.LASF472
	.byte	0x9
	.value	0x41b
	.long	0x2170
	.long	0x11b88
	.uleb128 0x1e
	.long	.LASF473
	.byte	0x9
	.value	0x41c
	.long	0x3f
	.long	0x11b90
	.uleb128 0x1e
	.long	.LASF474
	.byte	0x9
	.value	0x41d
	.long	0x3f
	.long	0x11b94
	.uleb128 0x1e
	.long	.LASF475
	.byte	0x9
	.value	0x41e
	.long	0x3f
	.long	0x11b98
	.uleb128 0x1e
	.long	.LASF476
	.byte	0x9
	.value	0x41f
	.long	0x3f
	.long	0x11b9c
	.uleb128 0x1e
	.long	.LASF477
	.byte	0x9
	.value	0x420
	.long	0x3f
	.long	0x11ba0
	.uleb128 0x1e
	.long	.LASF478
	.byte	0x9
	.value	0x421
	.long	0x3f
	.long	0x11ba4
	.uleb128 0x1e
	.long	.LASF479
	.byte	0x9
	.value	0x422
	.long	0x3f
	.long	0x11ba8
	.uleb128 0x1e
	.long	.LASF480
	.byte	0x9
	.value	0x423
	.long	0x3f
	.long	0x11bac
	.uleb128 0x1e
	.long	.LASF481
	.byte	0x9
	.value	0x424
	.long	0x3f
	.long	0x11bb0
	.uleb128 0x1e
	.long	.LASF482
	.byte	0x9
	.value	0x425
	.long	0x3f
	.long	0x11bb4
	.uleb128 0x1e
	.long	.LASF483
	.byte	0x9
	.value	0x426
	.long	0x3f
	.long	0x11bb8
	.uleb128 0x1e
	.long	.LASF484
	.byte	0x9
	.value	0x428
	.long	0x3f
	.long	0x11bbc
	.uleb128 0x1e
	.long	.LASF485
	.byte	0x9
	.value	0x42a
	.long	0x3f
	.long	0x11bc0
	.uleb128 0x1e
	.long	.LASF486
	.byte	0x9
	.value	0x42b
	.long	0x3f
	.long	0x11bc4
	.uleb128 0x1e
	.long	.LASF487
	.byte	0x9
	.value	0x42c
	.long	0x3f
	.long	0x11bc8
	.uleb128 0x1e
	.long	.LASF325
	.byte	0x9
	.value	0x42e
	.long	0x3f
	.long	0x11bcc
	.uleb128 0x1e
	.long	.LASF488
	.byte	0x9
	.value	0x430
	.long	0x3f
	.long	0x11bd0
	.uleb128 0x1e
	.long	.LASF489
	.byte	0x9
	.value	0x431
	.long	0x3f
	.long	0x11bd4
	.uleb128 0x1e
	.long	.LASF490
	.byte	0x9
	.value	0x432
	.long	0x3f
	.long	0x11bd8
	.uleb128 0x1e
	.long	.LASF491
	.byte	0x9
	.value	0x433
	.long	0x3f
	.long	0x11bdc
	.uleb128 0x1e
	.long	.LASF492
	.byte	0x9
	.value	0x434
	.long	0x3f
	.long	0x11be0
	.uleb128 0x1e
	.long	.LASF493
	.byte	0x9
	.value	0x435
	.long	0x3f
	.long	0x11be4
	.uleb128 0x1e
	.long	.LASF494
	.byte	0x9
	.value	0x436
	.long	0x54
	.long	0x11be8
	.uleb128 0x1e
	.long	.LASF495
	.byte	0x9
	.value	0x437
	.long	0x3f
	.long	0x11bec
	.uleb128 0x1e
	.long	.LASF496
	.byte	0x9
	.value	0x438
	.long	0x3f
	.long	0x11bf0
	.uleb128 0x1e
	.long	.LASF497
	.byte	0x9
	.value	0x43a
	.long	0x3f
	.long	0x11bf4
	.uleb128 0x1e
	.long	.LASF498
	.byte	0x9
	.value	0x43b
	.long	0x3f
	.long	0x11bf8
	.uleb128 0x1e
	.long	.LASF230
	.byte	0x9
	.value	0x43c
	.long	0x3f
	.long	0x11bfc
	.uleb128 0x1e
	.long	.LASF499
	.byte	0x9
	.value	0x43d
	.long	0x3f
	.long	0x11c00
	.uleb128 0x1e
	.long	.LASF500
	.byte	0x9
	.value	0x43e
	.long	0x3f
	.long	0x11c04
	.uleb128 0x1e
	.long	.LASF501
	.byte	0x9
	.value	0x43f
	.long	0x3f
	.long	0x11c08
	.uleb128 0x1e
	.long	.LASF502
	.byte	0x9
	.value	0x441
	.long	0x86
	.long	0x11c0c
	.uleb128 0x1e
	.long	.LASF350
	.byte	0x9
	.value	0x444
	.long	0x3f
	.long	0x11c14
	.uleb128 0x1e
	.long	.LASF503
	.byte	0x9
	.value	0x446
	.long	0x3f
	.long	0x11c18
	.uleb128 0x1e
	.long	.LASF504
	.byte	0x9
	.value	0x447
	.long	0x3f
	.long	0x11c1c
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xde9
	.uleb128 0x5
	.long	0x4d
	.long	0x2051
	.uleb128 0x6
	.long	0x96
	.byte	0x8
	.uleb128 0x6
	.long	0x96
	.byte	0xf
	.uleb128 0x6
	.long	0x96
	.byte	0xf
	.byte	0
	.uleb128 0x5
	.long	0x4d
	.long	0x206d
	.uleb128 0x6
	.long	0x96
	.byte	0x4
	.uleb128 0x6
	.long	0x96
	.byte	0xf
	.uleb128 0x6
	.long	0x96
	.byte	0xf
	.byte	0
	.uleb128 0x5
	.long	0x4d
	.long	0x2089
	.uleb128 0x6
	.long	0x96
	.byte	0x8
	.uleb128 0x6
	.long	0x96
	.byte	0x7
	.uleb128 0x6
	.long	0x96
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.long	0x4d
	.long	0x20ab
	.uleb128 0x6
	.long	0x96
	.byte	0x1
	.uleb128 0x6
	.long	0x96
	.byte	0x3
	.uleb128 0x6
	.long	0x96
	.byte	0xf
	.uleb128 0x6
	.long	0x96
	.byte	0xf
	.byte	0
	.uleb128 0x5
	.long	0x4d
	.long	0x20c1
	.uleb128 0x6
	.long	0x96
	.byte	0xf
	.uleb128 0x6
	.long	0x96
	.byte	0xf
	.byte	0
	.uleb128 0x5
	.long	0x3f
	.long	0x20d7
	.uleb128 0x6
	.long	0x96
	.byte	0xf
	.uleb128 0x6
	.long	0x96
	.byte	0xf
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x202f
	.uleb128 0x8
	.byte	0x8
	.long	0xddd
	.uleb128 0x8
	.byte	0x8
	.long	0xadc
	.uleb128 0x5
	.long	0x807
	.long	0x20fa
	.uleb128 0x1c
	.long	0x96
	.value	0x4af
	.byte	0
	.uleb128 0x5
	.long	0x3f
	.long	0x2110
	.uleb128 0x6
	.long	0x96
	.byte	0x3
	.uleb128 0x6
	.long	0x96
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x2116
	.uleb128 0x8
	.byte	0x8
	.long	0x211c
	.uleb128 0x8
	.byte	0x8
	.long	0x2122
	.uleb128 0x8
	.byte	0x8
	.long	0x2128
	.uleb128 0x8
	.byte	0x8
	.long	0x212e
	.uleb128 0x8
	.byte	0x8
	.long	0x62
	.uleb128 0x5
	.long	0x62
	.long	0x2144
	.uleb128 0x6
	.long	0x96
	.byte	0xe
	.byte	0
	.uleb128 0x5
	.long	0x3f
	.long	0x215a
	.uleb128 0x6
	.long	0x96
	.byte	0x5
	.uleb128 0x6
	.long	0x96
	.byte	0xe
	.byte	0
	.uleb128 0x5
	.long	0x3f
	.long	0x216a
	.uleb128 0x6
	.long	0x96
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x731
	.uleb128 0x8
	.byte	0x8
	.long	0xad5
	.uleb128 0x13
	.long	.LASF505
	.byte	0x9
	.value	0x449
	.long	0x164a
	.uleb128 0x20
	.long	.LASF534
	.byte	0x1
	.byte	0x2f
	.long	0x3f
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x21e6
	.uleb128 0x21
	.long	.LASF298
	.byte	0x1
	.byte	0x2f
	.long	0x38
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x21
	.long	.LASF506
	.byte	0x1
	.byte	0x2f
	.long	0x21e6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x22
	.string	"f"
	.byte	0x1
	.byte	0x31
	.long	0x21ec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.byte	0x32
	.long	0x38
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x22
	.string	"buf"
	.byte	0x1
	.byte	0x32
	.long	0x38
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x38
	.uleb128 0x8
	.byte	0x8
	.long	0xcb
	.uleb128 0x23
	.long	.LASF507
	.byte	0x1
	.byte	0x5a
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x222a
	.uleb128 0x24
	.string	"dw"
	.byte	0x1
	.byte	0x5a
	.long	0x38
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.string	"fp"
	.byte	0x1
	.byte	0x5a
	.long	0x21ec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x23
	.long	.LASF508
	.byte	0x1
	.byte	0x7c
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x229c
	.uleb128 0x21
	.long	.LASF298
	.byte	0x1
	.byte	0x7c
	.long	0x38
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.long	.LASF506
	.byte	0x1
	.byte	0x7c
	.long	0x21e6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x21
	.long	.LASF509
	.byte	0x1
	.byte	0x7c
	.long	0x21e6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x21
	.long	.LASF510
	.byte	0x1
	.byte	0x7c
	.long	0x21e6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x25
	.long	.LASF511
	.byte	0x1
	.byte	0x7e
	.long	0x21ec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.long	.LASF512
	.byte	0x1
	.byte	0x7f
	.long	0x38
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x26
	.long	.LASF513
	.byte	0x1
	.byte	0xa8
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x22fc
	.uleb128 0x21
	.long	.LASF298
	.byte	0x1
	.byte	0xa8
	.long	0x38
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x21
	.long	.LASF506
	.byte	0x1
	.byte	0xa8
	.long	0x21e6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.byte	0xaa
	.long	0x38
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.string	"j"
	.byte	0x1
	.byte	0xaa
	.long	0x38
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x25
	.long	.LASF514
	.byte	0x1
	.byte	0xab
	.long	0x38
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x27
	.long	.LASF535
	.byte	0x1
	.byte	0xc8
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x23f7
	.uleb128 0x25
	.long	.LASF515
	.byte	0x1
	.byte	0xca
	.long	0x38
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x25
	.long	.LASF516
	.byte	0x1
	.byte	0xca
	.long	0x38
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x25
	.long	.LASF298
	.byte	0x1
	.byte	0xca
	.long	0x38
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x25
	.long	.LASF517
	.byte	0x1
	.byte	0xcb
	.long	0x23f7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x25
	.long	.LASF518
	.byte	0x1
	.byte	0xcb
	.long	0x69
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x25
	.long	.LASF512
	.byte	0x1
	.byte	0xcc
	.long	0x38
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x25
	.long	.LASF519
	.byte	0x1
	.byte	0xcc
	.long	0x38
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x25
	.long	.LASF520
	.byte	0x1
	.byte	0xcc
	.long	0x38
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x25
	.long	.LASF521
	.byte	0x1
	.byte	0xcd
	.long	0x69
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.long	.LASF522
	.byte	0x1
	.byte	0xcd
	.long	0x69
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.long	.LASF523
	.byte	0x1
	.byte	0xcd
	.long	0x69
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x25
	.long	.LASF524
	.byte	0x1
	.byte	0xcd
	.long	0x69
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.long	.LASF506
	.byte	0x1
	.byte	0xce
	.long	0x21e6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x25
	.long	.LASF509
	.byte	0x1
	.byte	0xce
	.long	0x21e6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x25
	.long	.LASF510
	.byte	0x1
	.byte	0xce
	.long	0x21e6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x69
	.uleb128 0x28
	.long	.LASF525
	.byte	0x5
	.byte	0xa9
	.long	0x295
	.uleb128 0x5
	.long	0xa5
	.long	0x2419
	.uleb128 0x1c
	.long	0x96
	.value	0x12b
	.byte	0
	.uleb128 0x29
	.long	.LASF526
	.byte	0x9
	.value	0x222
	.long	0x2408
	.uleb128 0x29
	.long	.LASF527
	.byte	0x9
	.value	0x4b7
	.long	0x2431
	.uleb128 0x8
	.byte	0x8
	.long	0x163e
	.uleb128 0x2a
	.string	"img"
	.byte	0x9
	.value	0x4b8
	.long	0x2443
	.uleb128 0x8
	.byte	0x8
	.long	0x2176
	.uleb128 0x5
	.long	0x69
	.long	0x245a
	.uleb128 0x1c
	.long	0x96
	.value	0x270f
	.byte	0
	.uleb128 0x2b
	.long	.LASF528
	.byte	0x1
	.byte	0x15
	.long	0x2449
	.uleb128 0x9
	.byte	0x3
	.quad	Bit_Buffer
	.uleb128 0x2b
	.long	.LASF529
	.byte	0x1
	.byte	0x16
	.long	0x38
	.uleb128 0x9
	.byte	0x3
	.quad	total_frame_buffer
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x6
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2b
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
.LASF491:
	.string	"bitdepth_luma_qp_scale"
.LASF338:
	.string	"channel_type"
.LASF511:
	.string	"outf"
.LASF357:
	.string	"nb_references"
.LASF492:
	.string	"bitdepth_chroma_qp_scale"
.LASF339:
	.string	"ScalingMatrixPresentFlag"
.LASF457:
	.string	"no_output_of_prior_pics_flag"
.LASF58:
	.string	"BITS_INTER_MB"
.LASF423:
	.string	"num_ref_idx_l1_active"
.LASF439:
	.string	"pic_order_cnt_lsb"
.LASF7:
	.string	"size_t"
.LASF481:
	.string	"write_macroblock"
.LASF10:
	.string	"sizetype"
.LASF484:
	.string	"DeblockCall"
.LASF63:
	.string	"MAX_BITCOUNTER_MB"
.LASF365:
	.string	"width_cr"
.LASF452:
	.string	"PicSizeInMbs"
.LASF401:
	.string	"MB_SyntaxElements"
.LASF396:
	.string	"cofAC"
.LASF499:
	.string	"lossless_qpprime_flag"
.LASF268:
	.string	"PocMemoryManagement"
.LASF411:
	.string	"imgtr_next_P_fld"
.LASF220:
	.string	"search_range"
.LASF426:
	.string	"mvscale"
.LASF54:
	.string	"int64"
.LASF27:
	.string	"_IO_save_end"
.LASF207:
	.string	"slices"
.LASF110:
	.string	"long_term_pic_num"
.LASF377:
	.string	"ipredmode8x8"
.LASF381:
	.string	"mb_y"
.LASF459:
	.string	"dec_ref_pic_marking_buffer"
.LASF237:
	.string	"infile_header"
.LASF288:
	.string	"full_search"
.LASF521:
	.string	"maxBuffer"
.LASF112:
	.string	"max_long_term_frame_idx_plus1"
.LASF500:
	.string	"mb_cr_size_x"
.LASF333:
	.string	"DisplayEncParams"
.LASF20:
	.string	"_IO_write_base"
.LASF425:
	.string	"top_field"
.LASF80:
	.string	"state"
.LASF36:
	.string	"_lock"
.LASF283:
	.string	"Intra16x16ParDisable"
.LASF94:
	.string	"bcbp_contexts"
.LASF114:
	.string	"syntaxelement"
.LASF246:
	.string	"successive_Bframe"
.LASF256:
	.string	"WeightedPrediction"
.LASF115:
	.string	"type"
.LASF416:
	.string	"fw_mb_mode"
.LASF453:
	.string	"FrameSizeInMbs"
.LASF25:
	.string	"_IO_save_base"
.LASF162:
	.string	"LFDisableIdc"
.LASF249:
	.string	"directInferenceFlag"
.LASF176:
	.string	"bits_to_go_skip"
.LASF418:
	.string	"pred_mv"
.LASF328:
	.string	"context_init_method"
.LASF330:
	.string	"AllowTransform8x8"
.LASF497:
	.string	"num_blk8x8_uv"
.LASF235:
	.string	"slice_argument"
.LASF193:
	.string	"rmpni_buffer"
.LASF29:
	.string	"_chain"
.LASF276:
	.string	"InterSearch8x4"
.LASF143:
	.string	"mb_field"
.LASF275:
	.string	"InterSearch8x8"
.LASF309:
	.string	"NumFramesInELSubSeq"
.LASF33:
	.string	"_cur_column"
.LASF376:
	.string	"ipredmode"
.LASF262:
	.string	"RDBSliceWeightOnly"
.LASF227:
	.string	"GenerateMultiplePPS"
.LASF135:
	.string	"b8mode"
.LASF348:
	.string	"cr_qp_index_offset"
.LASF202:
	.string	"slice_too_big"
.LASF393:
	.string	"mprr_2"
.LASF394:
	.string	"mprr_3"
.LASF169:
	.string	"bits_to_go"
.LASF107:
	.string	"DecRefPicMarking_s"
.LASF113:
	.string	"DecRefPicMarking_t"
.LASF482:
	.string	"bot_MB"
.LASF391:
	.string	"opix_c_y"
.LASF480:
	.string	"BasicUnit"
.LASF221:
	.string	"num_ref_frames"
.LASF76:
	.string	"EcodestrmS"
.LASF403:
	.string	"intra_block"
.LASF62:
	.string	"BITS_DELTA_QUANT_MB"
.LASF6:
	.string	"long int"
.LASF503:
	.string	"auto_crop_right"
.LASF395:
	.string	"mprr_c"
.LASF513:
	.string	"Sort"
.LASF152:
	.string	"all_blk_8x8"
.LASF297:
	.string	"nobskip"
.LASF455:
	.string	"nal_reference_idc"
.LASF445:
	.string	"framepoc"
.LASF461:
	.string	"NumberofTextureBits"
.LASF46:
	.string	"_IO_marker"
.LASF258:
	.string	"UseWeightedReferenceME"
.LASF281:
	.string	"Intra4x4DiagDisable"
.LASF311:
	.string	"RandomIntraMBRefresh"
.LASF483:
	.string	"write_macroblock_frame"
.LASF173:
	.string	"stored_byte_buf"
.LASF55:
	.string	"BITS_HEADER"
.LASF355:
	.string	"InputParameters"
.LASF312:
	.string	"LFSendParameters"
.LASF449:
	.string	"PicHeightInMapUnits"
.LASF469:
	.string	"NumberofGOP"
.LASF489:
	.string	"bitdepth_luma"
.LASF512:
	.string	"iBucket"
.LASF59:
	.string	"BITS_CBP_MB"
.LASF390:
	.string	"opix_c_x"
.LASF66:
	.string	"Ebuffer"
.LASF238:
	.string	"infile"
.LASF65:
	.string	"Erange"
.LASF4:
	.string	"signed char"
.LASF363:
	.string	"framerate"
.LASF188:
	.string	"max_part_nr"
.LASF79:
	.string	"EncodingEnvironmentPtr"
.LASF45:
	.string	"_IO_FILE"
.LASF434:
	.string	"delta_pic_order_always_zero_flag"
.LASF444:
	.string	"bottompoc"
.LASF270:
	.string	"of_mode"
.LASF142:
	.string	"IntraChromaPredModeFlag"
.LASF119:
	.string	"context"
.LASF197:
	.string	"long_term_pic_idx_l0"
.LASF201:
	.string	"long_term_pic_idx_l1"
.LASF194:
	.string	"ref_pic_list_reordering_flag_l0"
.LASF198:
	.string	"ref_pic_list_reordering_flag_l1"
.LASF471:
	.string	"NumberofPPicture"
.LASF466:
	.string	"NumberofMBHeaderBits"
.LASF397:
	.string	"cofDC"
.LASF1:
	.string	"unsigned char"
.LASF133:
	.string	"intra_pred_modes8x8"
.LASF485:
	.string	"last_pic_bottom_field"
.LASF250:
	.string	"BiPredMotionEstimation"
.LASF420:
	.string	"bipred_mv1"
.LASF421:
	.string	"bipred_mv2"
.LASF96:
	.string	"last_contexts"
.LASF141:
	.string	"c_ipred_mode"
.LASF322:
	.string	"run_length_minus1"
.LASF496:
	.string	"max_imgpel_value_uv"
.LASF231:
	.string	"intra_upd"
.LASF195:
	.string	"remapping_of_pic_nums_idc_l0"
.LASF199:
	.string	"remapping_of_pic_nums_idc_l1"
.LASF196:
	.string	"abs_diff_pic_num_minus1_l0"
.LASF200:
	.string	"abs_diff_pic_num_minus1_l1"
.LASF315:
	.string	"SPPercentageThreshold"
.LASF170:
	.string	"byte_buf"
.LASF214:
	.string	"ProfileIDC"
.LASF155:
	.string	"bi_pred_me"
.LASF126:
	.string	"delta_qp"
.LASF287:
	.string	"chroma_qp_index_offset"
.LASF362:
	.string	"max_num_references"
.LASF11:
	.string	"char"
.LASF375:
	.string	"block_c_x"
.LASF89:
	.string	"transform_size_contexts"
.LASF458:
	.string	"long_term_reference_flag"
.LASF225:
	.string	"Log2MaxFrameNum"
.LASF371:
	.string	"is_intra_block"
.LASF187:
	.string	"start_mb_nr"
.LASF334:
	.string	"RCEnable"
.LASF260:
	.string	"RDPictureIntra"
.LASF224:
	.string	"B_List1_refs"
.LASF533:
	.string	"_IO_lock_t"
.LASF247:
	.string	"qpBRSOffset"
.LASF313:
	.string	"SparePictureOption"
.LASF56:
	.string	"BITS_TOTAL_MB"
.LASF290:
	.string	"qpN2"
.LASF531:
	.string	"leaky_bucket.c"
.LASF243:
	.string	"intra_period"
.LASF129:
	.string	"mb_available_up"
.LASF441:
	.string	"delta_pic_order_cnt"
.LASF278:
	.string	"InterSearch4x4"
.LASF277:
	.string	"InterSearch4x8"
.LASF532:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/464.h264ref/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF17:
	.string	"_IO_read_ptr"
.LASF460:
	.string	"NumberofHeaderBits"
.LASF293:
	.string	"qp02"
.LASF118:
	.string	"bitpattern"
.LASF88:
	.string	"mb_aff_contexts"
.LASF153:
	.string	"luma_transform_size_8x8_flag"
.LASF340:
	.string	"ScalingListPresentFlag"
.LASF383:
	.string	"block_y"
.LASF263:
	.string	"SkipIntraInInterSlices"
.LASF49:
	.string	"_pos"
.LASF398:
	.string	"currentPicture"
.LASF84:
	.string	"b8_type_contexts"
.LASF320:
	.string	"bottom_right"
.LASF257:
	.string	"WeightedBiprediction"
.LASF414:
	.string	"p_interval"
.LASF213:
	.string	"Picture"
.LASF412:
	.string	"imgtr_last_P_fld"
.LASF525:
	.string	"stdout"
.LASF527:
	.string	"input"
.LASF300:
	.string	"LeakyBucketParamFile"
.LASF28:
	.string	"_markers"
.LASF216:
	.string	"no_frames"
.LASF158:
	.string	"prev_delta_qp"
.LASF228:
	.string	"img_width"
.LASF267:
	.string	"PyramidRefReorder"
.LASF372:
	.string	"is_v_block"
.LASF234:
	.string	"slice_mode"
.LASF272:
	.string	"InterSearch16x16"
.LASF374:
	.string	"mb_y_intra"
.LASF83:
	.string	"mb_type_contexts"
.LASF319:
	.string	"top_left"
.LASF177:
	.string	"streamBuffer"
.LASF74:
	.string	"Ebits_to_goS"
.LASF273:
	.string	"InterSearch16x8"
.LASF472:
	.string	"MADofMB"
.LASF422:
	.string	"num_ref_idx_l0_active"
.LASF329:
	.string	"model_number"
.LASF252:
	.string	"BiPredMESearchRange"
.LASF123:
	.string	"macroblock"
.LASF443:
	.string	"toppoc"
.LASF433:
	.string	"MbaffFrameFlag"
.LASF64:
	.string	"Elow"
.LASF37:
	.string	"_offset"
.LASF337:
	.string	"basicunit"
.LASF301:
	.string	"PicInterlace"
.LASF186:
	.string	"picture_type"
.LASF502:
	.string	"chroma_qp_offset"
.LASF266:
	.string	"ExplicitPyramidFormat"
.LASF451:
	.string	"PicHeightInMbs"
.LASF349:
	.string	"lossless_qpprime_y_zero_flag"
.LASF242:
	.string	"QmatrixFile"
.LASF259:
	.string	"RDPictureDecision"
.LASF78:
	.string	"EncodingEnvironment"
.LASF183:
	.string	"writeSyntaxElement"
.LASF522:
	.string	"actualBuffer"
.LASF215:
	.string	"LevelIDC"
.LASF0:
	.string	"long unsigned int"
.LASF92:
	.string	"cipr_contexts"
.LASF77:
	.string	"Ecodestrm_lenS"
.LASF335:
	.string	"bit_rate"
.LASF189:
	.string	"num_mb"
.LASF31:
	.string	"_flags2"
.LASF226:
	.string	"ResendPPS"
.LASF515:
	.string	"AvgRate"
.LASF19:
	.string	"_IO_read_base"
.LASF408:
	.string	"pstruct_next_P"
.LASF139:
	.string	"lf_alpha_c0_offset"
.LASF504:
	.string	"auto_crop_bottom"
.LASF241:
	.string	"TraceFile"
.LASF44:
	.string	"_unused2"
.LASF236:
	.string	"UseConstrainedIntraPred"
.LASF473:
	.string	"BasicUnitQP"
.LASF465:
	.string	"NumberofMBTextureBits"
.LASF137:
	.string	"cbp_bits"
.LASF32:
	.string	"_old_offset"
.LASF386:
	.string	"pix_c_x"
.LASF387:
	.string	"pix_c_y"
.LASF218:
	.string	"hadamard"
.LASF415:
	.string	"b_frame_to_code"
.LASF208:
	.string	"bits_per_picture"
.LASF373:
	.string	"mb_y_upd"
.LASF354:
	.string	"OffsetMatrixPresentFlag"
.LASF307:
	.string	"NoOfDecoders"
.LASF103:
	.string	"RMPNI"
.LASF163:
	.string	"LFAlphaC0Offset"
.LASF140:
	.string	"lf_beta_offset"
.LASF510:
	.string	"Fmin"
.LASF109:
	.string	"difference_of_pic_nums_minus1"
.LASF310:
	.string	"NumFrameIn2ndIGOP"
.LASF442:
	.string	"field_picture"
.LASF244:
	.string	"idr_enable"
.LASF392:
	.string	"mprr"
.LASF245:
	.string	"start_frame"
.LASF90:
	.string	"MotionInfoContexts"
.LASF12:
	.string	"long long int"
.LASF413:
	.string	"b_interval"
.LASF67:
	.string	"Ebits_to_go"
.LASF405:
	.string	"fld_flag"
.LASF407:
	.string	"direct_intraP_ref"
.LASF364:
	.string	"width"
.LASF131:
	.string	"mb_type"
.LASF172:
	.string	"stored_bits_to_go"
.LASF501:
	.string	"mb_cr_size_y"
.LASF438:
	.string	"offset_for_ref_frame"
.LASF125:
	.string	"slice_nr"
.LASF210:
	.string	"distortion_u"
.LASF211:
	.string	"distortion_v"
.LASF209:
	.string	"distortion_y"
.LASF175:
	.string	"byte_pos_skip"
.LASF164:
	.string	"LFBetaOffset"
.LASF146:
	.string	"mbAddrC"
.LASF166:
	.string	"double"
.LASF517:
	.string	"buffer_frame"
.LASF22:
	.string	"_IO_write_end"
.LASF367:
	.string	"height_cr"
.LASF314:
	.string	"SPDetectionThreshold"
.LASF171:
	.string	"stored_byte_pos"
.LASF350:
	.string	"residue_transform_flag"
.LASF410:
	.string	"imgtr_last_P_frm"
.LASF508:
	.string	"write_buffer"
.LASF97:
	.string	"one_contexts"
.LASF302:
	.string	"MbInterlace"
.LASF127:
	.string	"qpsp"
.LASF212:
	.string	"float"
.LASF332:
	.string	"ReportFrameStats"
.LASF265:
	.string	"PyramidCoding"
.LASF81:
	.string	"count"
.LASF159:
	.string	"prev_cbp"
.LASF269:
	.string	"symbol_mode"
.LASF82:
	.string	"BiContextType"
.LASF23:
	.string	"_IO_buf_base"
.LASF406:
	.string	"rd_pass"
.LASF402:
	.string	"quad"
.LASF3:
	.string	"unsigned int"
.LASF98:
	.string	"abs_contexts"
.LASF68:
	.string	"Ebits_to_follow"
.LASF178:
	.string	"write_flag"
.LASF359:
	.string	"total_number_mb"
.LASF240:
	.string	"ReconFile"
.LASF70:
	.string	"Ecodestrm_len"
.LASF192:
	.string	"tex_ctx"
.LASF254:
	.string	"sp_periodicity"
.LASF38:
	.string	"__pad1"
.LASF39:
	.string	"__pad2"
.LASF40:
	.string	"__pad3"
.LASF41:
	.string	"__pad4"
.LASF42:
	.string	"__pad5"
.LASF130:
	.string	"mb_available_left"
.LASF102:
	.string	"RMPNIbuffer_s"
.LASF106:
	.string	"RMPNIbuffer_t"
.LASF48:
	.string	"_sbuf"
.LASF325:
	.string	"slice_group_change_cycle"
.LASF352:
	.string	"LambdaWeight"
.LASF101:
	.string	"TextureInfoContexts"
.LASF358:
	.string	"current_mb_nr"
.LASF298:
	.string	"NumberLeakyBuckets"
.LASF429:
	.string	"layer"
.LASF136:
	.string	"b8pdir"
.LASF205:
	.string	"no_slices"
.LASF436:
	.string	"offset_for_top_to_bottom_field"
.LASF524:
	.string	"iChannelRate"
.LASF16:
	.string	"_flags"
.LASF285:
	.string	"ChromaIntraDisable"
.LASF409:
	.string	"imgtr_next_P_frm"
.LASF475:
	.string	"FieldControl"
.LASF467:
	.string	"NumberofCodedBFrame"
.LASF428:
	.string	"i16offset"
.LASF284:
	.string	"Intra16x16PlaneDisable"
.LASF255:
	.string	"qpsp_pred"
.LASF43:
	.string	"_mode"
.LASF327:
	.string	"pic_order_cnt_type"
.LASF384:
	.string	"pix_x"
.LASF385:
	.string	"pix_y"
.LASF530:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF505:
	.string	"ImageParameters"
.LASF182:
	.string	"ee_cabac"
.LASF51:
	.string	"FALSE"
.LASF160:
	.string	"predict_qp"
.LASF219:
	.string	"hadamardqpel"
.LASF424:
	.string	"field_mode"
.LASF280:
	.string	"Intra4x4ParDisable"
.LASF382:
	.string	"block_x"
.LASF299:
	.string	"LeakyBucketRateFile"
.LASF229:
	.string	"img_height"
.LASF233:
	.string	"part_size"
.LASF271:
	.string	"partition_mode"
.LASF486:
	.string	"last_has_mmco_5"
.LASF100:
	.string	"fld_last_contexts"
.LASF516:
	.string	"TotalRate"
.LASF435:
	.string	"offset_for_non_ref_pic"
.LASF15:
	.string	"FILE"
.LASF165:
	.string	"skip_flag"
.LASF447:
	.string	"frame_num"
.LASF95:
	.string	"map_contexts"
.LASF316:
	.string	"SliceGroupConfigFileName"
.LASF108:
	.string	"memory_management_control_operation"
.LASF303:
	.string	"IntraBottom"
.LASF179:
	.string	"Bitstream"
.LASF353:
	.string	"QOffsetMatrixFile"
.LASF223:
	.string	"B_List0_refs"
.LASF431:
	.string	"NoResidueDirect"
.LASF528:
	.string	"Bit_Buffer"
.LASF479:
	.string	"NumberofCodedMacroBlocks"
.LASF185:
	.string	"picture_id"
.LASF404:
	.string	"fld_type"
.LASF468:
	.string	"NumberofCodedPFrame"
.LASF14:
	.string	"long long unsigned int"
.LASF57:
	.string	"BITS_MB_MODE"
.LASF111:
	.string	"long_term_frame_idx"
.LASF251:
	.string	"BiPredMERefinements"
.LASF132:
	.string	"intra_pred_modes"
.LASF8:
	.string	"__off_t"
.LASF419:
	.string	"all_mv"
.LASF292:
	.string	"qp2start"
.LASF366:
	.string	"height"
.LASF361:
	.string	"structure"
.LASF203:
	.string	"field_ctx"
.LASF184:
	.string	"DataPartition"
.LASF400:
	.string	"mb_data"
.LASF336:
	.string	"SeinitialQP"
.LASF463:
	.string	"NumberofBasicUnitTextureBits"
.LASF437:
	.string	"num_ref_frames_in_pic_order_cnt_cycle"
.LASF204:
	.string	"Slice"
.LASF180:
	.string	"datapartition"
.LASF75:
	.string	"Ebits_to_followS"
.LASF368:
	.string	"height_cr_frame"
.LASF477:
	.string	"Frame_Total_Number_MB"
.LASF116:
	.string	"value1"
.LASF117:
	.string	"value2"
.LASF346:
	.string	"rgb_input_flag"
.LASF181:
	.string	"bitstream"
.LASF222:
	.string	"P_List0_refs"
.LASF308:
	.string	"RestrictRef"
.LASF26:
	.string	"_IO_backup_base"
.LASF35:
	.string	"_shortbuf"
.LASF71:
	.string	"ElowS"
.LASF318:
	.string	"slice_group_map_type"
.LASF53:
	.string	"Boolean"
.LASF47:
	.string	"_next"
.LASF9:
	.string	"__off64_t"
.LASF493:
	.string	"bitdepth_lambda_scale"
.LASF296:
	.string	"disthres"
.LASF430:
	.string	"old_layer"
.LASF356:
	.string	"number"
.LASF294:
	.string	"qpBRS2Offset"
.LASF495:
	.string	"max_imgpel_value"
.LASF448:
	.string	"PicWidthInMbs"
.LASF304:
	.string	"LossRateA"
.LASF305:
	.string	"LossRateB"
.LASF306:
	.string	"LossRateC"
.LASF488:
	.string	"pic_unit_size_on_disk"
.LASF494:
	.string	"dc_pred_value"
.LASF498:
	.string	"num_cdc_coeff"
.LASF24:
	.string	"_IO_buf_end"
.LASF345:
	.string	"img_width_cr"
.LASF380:
	.string	"mb_x"
.LASF167:
	.string	"Macroblock"
.LASF86:
	.string	"ref_no_contexts"
.LASF232:
	.string	"blc_size"
.LASF456:
	.string	"adaptive_ref_pic_buffering_flag"
.LASF61:
	.string	"BITS_COEFF_UV_MB"
.LASF50:
	.string	"byte"
.LASF105:
	.string	"Next"
.LASF264:
	.string	"BRefPictures"
.LASF104:
	.string	"Data"
.LASF474:
	.string	"TopFieldFlag"
.LASF5:
	.string	"short int"
.LASF388:
	.string	"opix_x"
.LASF69:
	.string	"Ecodestrm"
.LASF389:
	.string	"opix_y"
.LASF230:
	.string	"yuv_format"
.LASF341:
	.string	"FMEnable"
.LASF432:
	.string	"redundant_pic_cnt"
.LASF535:
	.string	"calc_buffer"
.LASF417:
	.string	"bw_mb_mode"
.LASF326:
	.string	"redundant_slice_flag"
.LASF526:
	.string	"errortext"
.LASF342:
	.string	"BitDepthLuma"
.LASF52:
	.string	"TRUE"
.LASF34:
	.string	"_vtable_offset"
.LASF295:
	.string	"rdopt"
.LASF73:
	.string	"EbufferS"
.LASF446:
	.string	"ThisPOC"
.LASF464:
	.string	"TotalMADBasicUnit"
.LASF157:
	.string	"prev_qp"
.LASF279:
	.string	"IntraDisableInterOnly"
.LASF534:
	.string	"get_LeakyBucketRate"
.LASF85:
	.string	"mv_res_contexts"
.LASF509:
	.string	"Bmin"
.LASF274:
	.string	"InterSearch8x16"
.LASF156:
	.string	"actj"
.LASF317:
	.string	"num_slice_groups_minus1"
.LASF440:
	.string	"delta_pic_order_cnt_bottom"
.LASF427:
	.string	"buf_cycle"
.LASF60:
	.string	"BITS_COEFF_Y_MB"
.LASF378:
	.string	"cod_counter"
.LASF523:
	.string	"InitFullness"
.LASF190:
	.string	"partArr"
.LASF168:
	.string	"byte_pos"
.LASF239:
	.string	"outfile"
.LASF91:
	.string	"ipr_contexts"
.LASF144:
	.string	"mbAddrA"
.LASF145:
	.string	"mbAddrB"
.LASF18:
	.string	"_IO_read_end"
.LASF147:
	.string	"mbAddrD"
.LASF331:
	.string	"LowPassForIntra8x8"
.LASF379:
	.string	"nz_coeff"
.LASF529:
	.string	"total_frame_buffer"
.LASF87:
	.string	"delta_qp_contexts"
.LASF282:
	.string	"Intra4x4DirDisable"
.LASF462:
	.string	"NumberofBasicUnitHeaderBits"
.LASF122:
	.string	"SyntaxElement"
.LASF291:
	.string	"qpB2"
.LASF343:
	.string	"BitDepthChroma"
.LASF478:
	.string	"IFLAG"
.LASF520:
	.string	"FrameIndex"
.LASF30:
	.string	"_fileno"
.LASF487:
	.string	"pre_frame_num"
.LASF519:
	.string	"iFrame"
.LASF454:
	.string	"pic_order_present_flag"
.LASF138:
	.string	"lf_disable"
.LASF253:
	.string	"BiPredMESubPel"
.LASF518:
	.string	"minB"
.LASF206:
	.string	"idr_flag"
.LASF2:
	.string	"short unsigned int"
.LASF476:
	.string	"FieldFrame"
.LASF289:
	.string	"last_frame"
.LASF161:
	.string	"predict_error"
.LASF360:
	.string	"current_slice_nr"
.LASF248:
	.string	"direct_spatial_mv_pred_flag"
.LASF217:
	.string	"jumpd"
.LASF490:
	.string	"bitdepth_chroma"
.LASF21:
	.string	"_IO_write_ptr"
.LASF120:
	.string	"mapping"
.LASF470:
	.string	"TotalQpforPPicture"
.LASF344:
	.string	"img_height_cr"
.LASF506:
	.string	"Rmin"
.LASF324:
	.string	"slice_group_change_rate_minus1"
.LASF13:
	.string	"int64_t"
.LASF121:
	.string	"writing"
.LASF321:
	.string	"slice_group_id"
.LASF99:
	.string	"fld_map_contexts"
.LASF174:
	.string	"byte_buf_skip"
.LASF323:
	.string	"slice_group_change_direction_flag"
.LASF286:
	.string	"FrameRate"
.LASF514:
	.string	"temp"
.LASF261:
	.string	"RDPSliceWeightOnly"
.LASF93:
	.string	"cbp_contexts"
.LASF347:
	.string	"cb_qp_index_offset"
.LASF191:
	.string	"mot_ctx"
.LASF507:
	.string	"PutBigDoubleWord"
.LASF154:
	.string	"NoMbPartLessThan8x8Flag"
.LASF369:
	.string	"subblock_x"
.LASF370:
	.string	"subblock_y"
.LASF351:
	.string	"UseExplicitLambdaParams"
.LASF124:
	.string	"currSEnr"
.LASF450:
	.string	"FrameHeightInMbs"
.LASF399:
	.string	"currentSlice"
.LASF128:
	.string	"bitcounter"
.LASF72:
	.string	"ErangeS"
.LASF148:
	.string	"mbAvailA"
.LASF149:
	.string	"mbAvailB"
.LASF150:
	.string	"mbAvailC"
.LASF151:
	.string	"mbAvailD"
.LASF134:
	.string	"cbp_blk"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
