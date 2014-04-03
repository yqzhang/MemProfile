	.file	"new_fe.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -I . -I libutil -imultiarch x86_64-linux-gnu
# -D SPEC_CPU -D NDEBUG -D SPEC_CPU -D HAVE_CONFIG_H -D SPEC_CPU_LP64
# new_fe.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.string	"memory alloc failed in fe_init()\n...exiting\n"
	.align 8
.LC2:
	.string	"MEL SCALE IS CURRENTLY THE ONLY IMPLEMENTATION!\n"
	.text
	.globl	fe_init
	.type	fe_init, @function
fe_init:
.LFB2:
	.file 1 "new_fe.c"
	.loc 1 87 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# P, P
	.loc 1 88 0
	movl	$80, %esi	#,
	movl	$1, %edi	#,
	call	calloc	#
	movq	%rax, -8(%rbp)	# tmp94, FE
	.loc 1 90 0
	cmpq	$0, -8(%rbp)	#, FE
	jne	.L2	#,
	.loc 1 91 0
	movq	stderr(%rip), %rax	# stderr, stderr.0
	movq	%rax, %rcx	# stderr.0,
	movl	$44, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC0, %edi	#,
	call	fwrite	#
	.loc 1 92 0
	movl	$0, %eax	#, D.5337
	jmp	.L3	#
.L2:
	.loc 1 96 0
	movq	-8(%rbp), %rdx	# FE, tmp95
	movq	-24(%rbp), %rax	# P, tmp96
	movq	%rdx, %rsi	# tmp95,
	movq	%rax, %rdi	# tmp96,
	call	fe_parse_general_params	#
	.loc 1 99 0
	movq	-8(%rbp), %rax	# FE, tmp97
	movss	(%rax), %xmm1	# FE_2->SAMPLING_RATE, D.5338
	movq	-8(%rbp), %rax	# FE, tmp98
	movl	4(%rax), %eax	# FE_2->FRAME_RATE, D.5339
	cvtsi2ss	%eax, %xmm0	# D.5339, D.5338
	divss	%xmm0, %xmm1	# D.5338, D.5338
	movaps	%xmm1, %xmm0	# D.5338, D.5338
	unpcklps	%xmm0, %xmm0	# D.5338, D.5338
	cvtps2pd	%xmm0, %xmm0	# D.5338, D.5340
	movsd	.LC1(%rip), %xmm1	#, tmp99
	addsd	%xmm1, %xmm0	# tmp99, D.5340
	cvttsd2si	%xmm0, %edx	# D.5340, D.5339
	movq	-8(%rbp), %rax	# FE, tmp100
	movl	%edx, 8(%rax)	# D.5339, FE_2->FRAME_SHIFT
	.loc 1 100 0
	movq	-8(%rbp), %rax	# FE, tmp101
	movss	12(%rax), %xmm1	# FE_2->WINDOW_LENGTH, D.5338
	movq	-8(%rbp), %rax	# FE, tmp102
	movss	(%rax), %xmm0	# FE_2->SAMPLING_RATE, D.5338
	mulss	%xmm1, %xmm0	# D.5338, D.5338
	unpcklps	%xmm0, %xmm0	# D.5338, D.5338
	cvtps2pd	%xmm0, %xmm0	# D.5338, D.5340
	movsd	.LC1(%rip), %xmm1	#, tmp103
	addsd	%xmm1, %xmm0	# tmp103, D.5340
	cvttsd2si	%xmm0, %edx	# D.5340, D.5339
	movq	-8(%rbp), %rax	# FE, tmp104
	movl	%edx, 16(%rax)	# D.5339, FE_2->FRAME_SIZE
	.loc 1 101 0
	movq	-8(%rbp), %rax	# FE, tmp105
	movw	$0, 68(%rax)	#, FE_2->PRIOR
	.loc 1 104 0
	movq	-8(%rbp), %rax	# FE, tmp106
	movl	16(%rax), %eax	# FE_2->FRAME_SIZE, D.5339
	cltq
	movl	$2, %esi	#,
	movq	%rax, %rdi	# D.5341,
	call	calloc	#
	movq	%rax, %rdx	# tmp107, D.5342
	movq	-8(%rbp), %rax	# FE, tmp108
	movq	%rdx, 40(%rax)	# D.5342, FE_2->OVERFLOW_SAMPS
	.loc 1 105 0
	movq	-8(%rbp), %rax	# FE, tmp109
	movl	16(%rax), %eax	# FE_2->FRAME_SIZE, D.5339
	cltq
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.5341,
	call	calloc	#
	movq	%rax, %rdx	# tmp110, D.5342
	movq	-8(%rbp), %rax	# FE, tmp111
	movq	%rdx, 72(%rax)	# D.5342, FE_2->HAMMING_WINDOW
	.loc 1 107 0
	movq	-8(%rbp), %rax	# FE, tmp112
	movq	40(%rax), %rax	# FE_2->OVERFLOW_SAMPS, D.5343
	testq	%rax, %rax	# D.5343
	je	.L4	#,
	.loc 1 107 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# FE, tmp113
	movq	72(%rax), %rax	# FE_2->HAMMING_WINDOW, D.5344
	testq	%rax, %rax	# D.5344
	jne	.L5	#,
.L4:
	.loc 1 108 0 is_stmt 1
	movq	stderr(%rip), %rax	# stderr, stderr.1
	movq	%rax, %rcx	# stderr.1,
	movl	$44, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC0, %edi	#,
	call	fwrite	#
	.loc 1 109 0
	movl	$0, %eax	#, D.5337
	jmp	.L3	#
.L5:
	.loc 1 113 0
	movq	-8(%rbp), %rax	# FE, tmp114
	movl	16(%rax), %edx	# FE_2->FRAME_SIZE, D.5339
	movq	-8(%rbp), %rax	# FE, tmp115
	movq	72(%rax), %rax	# FE_2->HAMMING_WINDOW, D.5344
	movl	%edx, %esi	# D.5339,
	movq	%rax, %rdi	# D.5344,
	call	fe_create_hamming	#
	.loc 1 116 0
	movq	-8(%rbp), %rax	# FE, tmp116
	movl	24(%rax), %eax	# FE_2->FB_TYPE, D.5339
	cmpl	$1, %eax	#, D.5339
	jne	.L6	#,
	.loc 1 117 0
	movl	$64, %esi	#,
	movl	$1, %edi	#,
	call	calloc	#
	movq	%rax, %rdx	# tmp117, D.5342
	movq	-8(%rbp), %rax	# FE, tmp118
	movq	%rdx, 56(%rax)	# D.5342, FE_2->MEL_FB
	movq	-8(%rbp), %rax	# FE, tmp119
	movq	56(%rax), %rax	# FE_2->MEL_FB, D.5345
	testq	%rax, %rax	# D.5345
	jne	.L7	#,
	.loc 1 118 0
	movq	stderr(%rip), %rax	# stderr, stderr.2
	movq	%rax, %rcx	# stderr.2,
	movl	$44, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC0, %edi	#,
	call	fwrite	#
	.loc 1 119 0
	movl	$0, %eax	#, D.5337
	jmp	.L3	#
.L7:
	.loc 1 122 0
	movq	-8(%rbp), %rax	# FE, tmp120
	movq	56(%rax), %rdx	# FE_2->MEL_FB, D.5345
	movq	-24(%rbp), %rax	# P, tmp121
	movq	%rdx, %rsi	# D.5345,
	movq	%rax, %rdi	# tmp121,
	call	fe_parse_melfb_params	#
	.loc 1 124 0
	movq	-8(%rbp), %rax	# FE, tmp122
	movq	56(%rax), %rax	# FE_2->MEL_FB, D.5345
	movq	%rax, %rdi	# D.5345,
	call	fe_build_melfilters	#
	.loc 1 125 0
	movq	-8(%rbp), %rax	# FE, tmp123
	movq	56(%rax), %rax	# FE_2->MEL_FB, D.5345
	movq	%rax, %rdi	# D.5345,
	call	fe_compute_melcosine	#
	.loc 1 131 0
	movq	-8(%rbp), %rax	# FE, D.5337
	jmp	.L3	#
.L6:
	.loc 1 128 0
	movq	stderr(%rip), %rax	# stderr, stderr.3
	movq	%rax, %rcx	# stderr.3,
	movl	$48, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC2, %edi	#,
	call	fwrite	#
	.loc 1 129 0
	movl	$0, %eax	#, D.5337
.L3:
	.loc 1 132 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	fe_init, .-fe_init
	.globl	fe_start_utt
	.type	fe_start_utt, @function
fe_start_utt:
.LFB3:
	.loc 1 143 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# FE, FE
	.loc 1 144 0
	movq	-8(%rbp), %rax	# FE, tmp65
	movl	$0, 48(%rax)	#, FE_1(D)->NUM_OVERFLOW_SAMPS
	.loc 1 145 0
	movq	-8(%rbp), %rax	# FE, tmp66
	movl	16(%rax), %eax	# FE_1(D)->FRAME_SIZE, D.5348
	cltq
	leaq	(%rax,%rax), %rdx	#, D.5349
	movq	-8(%rbp), %rax	# FE, tmp67
	movq	40(%rax), %rax	# FE_1(D)->OVERFLOW_SAMPS, D.5350
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.5350,
	call	memset	#
	.loc 1 146 0
	movq	-8(%rbp), %rax	# FE, tmp68
	movl	$1, 64(%rax)	#, FE_1(D)->START_FLAG
	.loc 1 147 0
	movq	-8(%rbp), %rax	# FE, tmp69
	movw	$0, 68(%rax)	#, FE_1(D)->PRIOR
	.loc 1 148 0
	movl	$0, %eax	#, D.5351
	.loc 1 149 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	fe_start_utt, .-fe_start_utt
	.section	.rodata
	.align 8
.LC3:
	.string	"memory alloc failed in fe_process_utt()\n...exiting\n"
	.align 8
.LC4:
	.string	"memory alloc for cep failed in fe_process_utt()\n\tfe_create_2d(%ld,%d,%d)\n...exiting\n"
	.text
	.globl	fe_process_utt
	.type	fe_process_utt, @function
fe_process_utt:
.LFB4:
	.loc 1 161 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -72(%rbp)	# FE, FE
	movq	%rsi, -80(%rbp)	# spch, spch
	movl	%edx, -84(%rbp)	# nsamps, nsamps
	movq	%rcx, -96(%rbp)	# cep_block, cep_block
	.loc 1 162 0
	movl	$0, -60(%rbp)	#, frame_count
	movl	$0, -56(%rbp)	#, whichframe
	.loc 1 163 0
	movl	$0, -48(%rbp)	#, offset
	.loc 1 165 0
	movq	-80(%rbp), %rax	# spch, tmp154
	movq	%rax, -40(%rbp)	# tmp154, tmp_spch
	.loc 1 166 0
	movq	$0, -32(%rbp)	#, cep
	.loc 1 169 0
	movq	-72(%rbp), %rax	# FE, tmp155
	movl	48(%rax), %edx	# FE_16(D)->NUM_OVERFLOW_SAMPS, D.5352
	movl	-84(%rbp), %eax	# nsamps, tmp156
	addl	%eax, %edx	# tmp156, D.5352
	movq	-72(%rbp), %rax	# FE, tmp157
	movl	16(%rax), %eax	# FE_16(D)->FRAME_SIZE, D.5352
	cmpl	%eax, %edx	# D.5352, D.5352
	jl	.L12	#,
	.loc 1 172 0
	movq	-72(%rbp), %rax	# FE, tmp158
	movl	48(%rax), %eax	# FE_16(D)->NUM_OVERFLOW_SAMPS, D.5352
	testl	%eax, %eax	# D.5352
	jle	.L13	#,
	.loc 1 174 0
	movq	-72(%rbp), %rax	# FE, tmp159
	movl	48(%rax), %edx	# FE_16(D)->NUM_OVERFLOW_SAMPS, D.5352
	movl	-84(%rbp), %eax	# nsamps, tmp160
	addl	%edx, %eax	# D.5352, D.5352
	cltq
	addq	%rax, %rax	# D.5353
	movq	%rax, %rdi	# D.5353,
	call	malloc	#
	movq	%rax, -40(%rbp)	# tmp161, tmp_spch
	cmpq	$0, -40(%rbp)	#, tmp_spch
	jne	.L14	#,
	.loc 1 175 0
	movq	stderr(%rip), %rax	# stderr, stderr.4
	movq	%rax, %rcx	# stderr.4,
	movl	$51, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC3, %edi	#,
	call	fwrite	#
	.loc 1 176 0
	movl	$0, %edi	#,
	call	exit	#
.L14:
	.loc 1 179 0
	movq	-72(%rbp), %rax	# FE, tmp162
	movl	48(%rax), %eax	# FE_16(D)->NUM_OVERFLOW_SAMPS, D.5352
	cltq
	leaq	(%rax,%rax), %rdx	#, D.5353
	movq	-72(%rbp), %rax	# FE, tmp163
	movq	40(%rax), %rcx	# FE_16(D)->OVERFLOW_SAMPS, D.5354
	movq	-40(%rbp), %rax	# tmp_spch, tmp164
	movq	%rcx, %rsi	# D.5354,
	movq	%rax, %rdi	# tmp164,
	call	memcpy	#
	.loc 1 180 0
	movl	-84(%rbp), %eax	# nsamps, tmp165
	cltq
	leaq	(%rax,%rax), %rdx	#, D.5353
	movq	-72(%rbp), %rax	# FE, tmp166
	movl	48(%rax), %eax	# FE_16(D)->NUM_OVERFLOW_SAMPS, D.5352
	cltq
	leaq	(%rax,%rax), %rcx	#, D.5353
	movq	-40(%rbp), %rax	# tmp_spch, tmp167
	addq	%rax, %rcx	# tmp167, D.5354
	movq	-80(%rbp), %rax	# spch, tmp168
	movq	%rax, %rsi	# tmp168,
	movq	%rcx, %rdi	# D.5354,
	call	memcpy	#
	.loc 1 181 0
	movq	-72(%rbp), %rax	# FE, tmp169
	movl	48(%rax), %eax	# FE_16(D)->NUM_OVERFLOW_SAMPS, D.5352
	addl	%eax, -84(%rbp)	# D.5352, nsamps
	.loc 1 182 0
	movq	-72(%rbp), %rax	# FE, tmp170
	movl	$0, 48(%rax)	#, FE_16(D)->NUM_OVERFLOW_SAMPS
.L13:
	.loc 1 185 0
	movl	$0, -60(%rbp)	#, frame_count
	.loc 1 186 0
	movl	$0, -64(%rbp)	#, frame_start
	jmp	.L15	#
.L16:
	.loc 1 187 0 discriminator 2
	addl	$1, -60(%rbp)	#, frame_count
	.loc 1 186 0 discriminator 2
	movq	-72(%rbp), %rax	# FE, tmp171
	movl	8(%rax), %eax	# FE_16(D)->FRAME_SHIFT, D.5352
	addl	%eax, -64(%rbp)	# D.5352, frame_start
.L15:
	.loc 1 186 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# FE, tmp172
	movl	16(%rax), %edx	# FE_16(D)->FRAME_SIZE, D.5352
	movl	-64(%rbp), %eax	# frame_start, tmp173
	addl	%edx, %eax	# D.5352, D.5352
	cmpl	-84(%rbp), %eax	# nsamps, D.5352
	jle	.L16	#,
	.loc 1 192 0 is_stmt 1
	movq	-72(%rbp), %rax	# FE, tmp174
	movl	28(%rax), %eax	# FE_16(D)->NUM_CEPSTRA, D.5352
	movl	-60(%rbp), %edx	# frame_count, tmp175
	leal	1(%rdx), %ecx	#, D.5352
	movl	$4, %edx	#,
	movl	%eax, %esi	# D.5352,
	movl	%ecx, %edi	# D.5352,
	call	fe_create_2d	#
	movq	%rax, -32(%rbp)	# tmp176, cep
	cmpq	$0, -32(%rbp)	#, cep
	jne	.L17	#,
	.loc 1 193 0
	movq	-72(%rbp), %rax	# FE, tmp177
	movl	28(%rax), %ecx	# FE_16(D)->NUM_CEPSTRA, D.5352
	movl	-60(%rbp), %eax	# frame_count, tmp178
	addl	$1, %eax	#, D.5352
	movslq	%eax, %rdx	# D.5352, D.5355
	movq	stderr(%rip), %rax	# stderr, stderr.5
	movl	$4, %r8d	#,
	movl	$.LC4, %esi	#,
	movq	%rax, %rdi	# stderr.5,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 194 0
	movl	$0, %edi	#,
	call	exit	#
.L17:
	.loc 1 198 0
	movl	-60(%rbp), %eax	# frame_count, tmp179
	leal	-1(%rax), %edx	#, D.5352
	movq	-72(%rbp), %rax	# FE, tmp180
	movl	8(%rax), %eax	# FE_16(D)->FRAME_SHIFT, D.5352
	imull	%eax, %edx	# D.5352, D.5352
	movq	-72(%rbp), %rax	# FE, tmp181
	movl	16(%rax), %eax	# FE_16(D)->FRAME_SIZE, D.5352
	addl	%edx, %eax	# D.5352, tmp182
	movl	%eax, -44(%rbp)	# tmp182, spbuf_len
	.loc 1 200 0
	movl	-44(%rbp), %eax	# spbuf_len, tmp183
	cltq
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.5353,
	call	calloc	#
	movq	%rax, -24(%rbp)	# tmp184, spbuf
	cmpq	$0, -24(%rbp)	#, spbuf
	jne	.L18	#,
	.loc 1 201 0
	movq	stderr(%rip), %rax	# stderr, stderr.6
	movq	%rax, %rcx	# stderr.6,
	movl	$51, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC3, %edi	#,
	call	fwrite	#
	.loc 1 202 0
	movl	$0, %edi	#,
	call	exit	#
.L18:
	.loc 1 206 0
	movq	-72(%rbp), %rax	# FE, tmp185
	movss	32(%rax), %xmm0	# FE_16(D)->PRE_EMPHASIS_ALPHA, D.5356
	xorps	%xmm1, %xmm1	# tmp186
	ucomiss	%xmm1, %xmm0	# tmp186, D.5356
	jp	.L34	#,
	xorps	%xmm1, %xmm1	# tmp187
	ucomiss	%xmm1, %xmm0	# tmp187, D.5356
	je	.L35	#,
.L34:
	.loc 1 207 0
	movq	-72(%rbp), %rax	# FE, tmp188
	movzwl	68(%rax), %eax	# FE_16(D)->PRIOR, D.5357
	movswl	%ax, %ecx	# D.5357, D.5352
	movq	-72(%rbp), %rax	# FE, tmp189
	movl	32(%rax), %eax	# FE_16(D)->PRE_EMPHASIS_ALPHA, D.5356
	movl	-44(%rbp), %edx	# spbuf_len, tmp190
	movq	-24(%rbp), %rsi	# spbuf, tmp191
	movq	-40(%rbp), %rdi	# tmp_spch, tmp192
	movl	%eax, -88(%rbp)	# D.5356, %sfp
	movss	-88(%rbp), %xmm0	# %sfp,
	call	fe_pre_emphasis	#
	jmp	.L21	#
.L35:
	.loc 1 209 0
	movl	-44(%rbp), %edx	# spbuf_len, tmp193
	movq	-24(%rbp), %rcx	# spbuf, tmp194
	movq	-40(%rbp), %rax	# tmp_spch, tmp195
	movq	%rcx, %rsi	# tmp194,
	movq	%rax, %rdi	# tmp195,
	call	fe_short_to_double	#
.L21:
	.loc 1 213 0
	movq	-72(%rbp), %rax	# FE, tmp196
	movl	16(%rax), %eax	# FE_16(D)->FRAME_SIZE, D.5352
	cltq
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.5353,
	call	calloc	#
	movq	%rax, -16(%rbp)	# tmp197, fr_data
	.loc 1 214 0
	movq	-72(%rbp), %rax	# FE, tmp198
	movl	28(%rax), %eax	# FE_16(D)->NUM_CEPSTRA, D.5352
	cltq
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.5353,
	call	calloc	#
	movq	%rax, -8(%rbp)	# tmp199, fr_fea
	.loc 1 216 0
	cmpq	$0, -16(%rbp)	#, fr_data
	je	.L22	#,
	.loc 1 216 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, fr_fea
	jne	.L23	#,
.L22:
	.loc 1 217 0 is_stmt 1
	movq	stderr(%rip), %rax	# stderr, stderr.7
	movq	%rax, %rcx	# stderr.7,
	movl	$51, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC3, %edi	#,
	call	fwrite	#
	.loc 1 218 0
	movl	$0, %edi	#,
	call	exit	#
.L23:
	.loc 1 221 0
	movl	$0, -56(%rbp)	#, whichframe
	jmp	.L24	#
.L29:
	.loc 1 222 0
	movl	$0, -52(%rbp)	#, i
	jmp	.L25	#
.L26:
	.loc 1 223 0 discriminator 2
	movl	-52(%rbp), %eax	# i, tmp200
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5353
	movq	-16(%rbp), %rax	# fr_data, tmp201
	addq	%rax, %rdx	# tmp201, D.5358
	movq	-72(%rbp), %rax	# FE, tmp202
	movl	8(%rax), %eax	# FE_16(D)->FRAME_SHIFT, D.5352
	imull	-56(%rbp), %eax	# whichframe, D.5352
	movl	%eax, %ecx	# D.5352, D.5352
	movl	-52(%rbp), %eax	# i, tmp203
	addl	%ecx, %eax	# D.5352, D.5352
	cltq
	leaq	0(,%rax,8), %rcx	#, D.5353
	movq	-24(%rbp), %rax	# spbuf, tmp204
	addq	%rcx, %rax	# D.5353, D.5358
	movq	(%rax), %rax	# *_83, D.5359
	movq	%rax, (%rdx)	# D.5359, *_77
	.loc 1 222 0 discriminator 2
	addl	$1, -52(%rbp)	#, i
.L25:
	.loc 1 222 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# FE, tmp205
	movl	16(%rax), %eax	# FE_16(D)->FRAME_SIZE, D.5352
	cmpl	-52(%rbp), %eax	# i, D.5352
	jg	.L26	#,
	.loc 1 225 0 is_stmt 1
	movq	-72(%rbp), %rax	# FE, tmp206
	movl	16(%rax), %edx	# FE_16(D)->FRAME_SIZE, D.5352
	movq	-72(%rbp), %rax	# FE, tmp207
	movq	72(%rax), %rcx	# FE_16(D)->HAMMING_WINDOW, D.5358
	movq	-16(%rbp), %rax	# fr_data, tmp208
	movq	%rcx, %rsi	# D.5358,
	movq	%rax, %rdi	# tmp208,
	call	fe_hamming_window	#
	.loc 1 227 0
	movq	-8(%rbp), %rdx	# fr_fea, tmp209
	movq	-16(%rbp), %rcx	# fr_data, tmp210
	movq	-72(%rbp), %rax	# FE, tmp211
	movq	%rcx, %rsi	# tmp210,
	movq	%rax, %rdi	# tmp211,
	call	fe_frame_to_fea	#
	.loc 1 229 0
	movl	$0, -52(%rbp)	#, i
	jmp	.L27	#
.L28:
	.loc 1 230 0 discriminator 2
	movl	-56(%rbp), %eax	# whichframe, tmp212
	cltq
	leaq	0(,%rax,8), %rdx	#, D.5353
	movq	-32(%rbp), %rax	# cep, tmp213
	addq	%rdx, %rax	# D.5353, D.5360
	movq	(%rax), %rax	# *_92, D.5361
	movl	-52(%rbp), %edx	# i, tmp214
	movslq	%edx, %rdx	# tmp214, D.5353
	salq	$2, %rdx	#, D.5353
	addq	%rdx, %rax	# D.5353, D.5361
	movl	-52(%rbp), %edx	# i, tmp215
	movslq	%edx, %rdx	# tmp215, D.5353
	leaq	0(,%rdx,8), %rcx	#, D.5353
	movq	-8(%rbp), %rdx	# fr_fea, tmp216
	addq	%rcx, %rdx	# D.5353, D.5358
	movsd	(%rdx), %xmm0	# *_99, D.5359
	unpcklpd	%xmm0, %xmm0	# D.5359
	cvtpd2ps	%xmm0, %xmm0	# D.5359, D.5356
	movss	%xmm0, (%rax)	# D.5356, *_96
	.loc 1 229 0 discriminator 2
	addl	$1, -52(%rbp)	#, i
.L27:
	.loc 1 229 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# FE, tmp217
	movl	28(%rax), %eax	# FE_16(D)->NUM_CEPSTRA, D.5352
	cmpl	-52(%rbp), %eax	# i, D.5352
	jg	.L28	#,
	.loc 1 221 0 is_stmt 1
	addl	$1, -56(%rbp)	#, whichframe
.L24:
	.loc 1 221 0 is_stmt 0 discriminator 1
	movl	-56(%rbp), %eax	# whichframe, tmp218
	cmpl	-60(%rbp), %eax	# frame_count, tmp218
	jl	.L29	#,
	.loc 1 236 0 is_stmt 1
	movl	-44(%rbp), %eax	# spbuf_len, tmp219
	cmpl	-84(%rbp), %eax	# nsamps, tmp219
	jge	.L30	#,
	.loc 1 237 0
	movq	-72(%rbp), %rax	# FE, tmp220
	movl	8(%rax), %eax	# FE_16(D)->FRAME_SHIFT, D.5352
	imull	-60(%rbp), %eax	# frame_count, tmp221
	movl	%eax, -48(%rbp)	# tmp221, offset
	.loc 1 238 0
	movl	-48(%rbp), %eax	# offset, tmp222
	movl	-84(%rbp), %edx	# nsamps, tmp223
	subl	%eax, %edx	# tmp222, D.5352
	movl	%edx, %eax	# D.5352, D.5352
	cltq
	leaq	(%rax,%rax), %rdx	#, D.5353
	movl	-48(%rbp), %eax	# offset, tmp224
	cltq
	leaq	(%rax,%rax), %rcx	#, D.5353
	movq	-40(%rbp), %rax	# tmp_spch, tmp225
	addq	%rax, %rcx	# tmp225, D.5354
	movq	-72(%rbp), %rax	# FE, tmp226
	movq	40(%rax), %rax	# FE_16(D)->OVERFLOW_SAMPS, D.5354
	movq	%rcx, %rsi	# D.5354,
	movq	%rax, %rdi	# D.5354,
	call	memcpy	#
	.loc 1 239 0
	movl	-48(%rbp), %eax	# offset, tmp227
	movl	-84(%rbp), %edx	# nsamps, tmp228
	subl	%eax, %edx	# tmp227, D.5352
	movq	-72(%rbp), %rax	# FE, tmp229
	movl	%edx, 48(%rax)	# D.5352, FE_16(D)->NUM_OVERFLOW_SAMPS
	.loc 1 240 0
	movl	-48(%rbp), %eax	# offset, tmp230
	cltq
	addq	%rax, %rax	# D.5353
	leaq	-2(%rax), %rdx	#, D.5362
	movq	-40(%rbp), %rax	# tmp_spch, tmp231
	addq	%rdx, %rax	# D.5362, D.5354
	movzwl	(%rax), %edx	# *_117, D.5357
	movq	-72(%rbp), %rax	# FE, tmp232
	movw	%dx, 68(%rax)	# D.5357, FE_16(D)->PRIOR
.L30:
	.loc 1 244 0
	movq	-80(%rbp), %rax	# spch, tmp233
	cmpq	-40(%rbp), %rax	# tmp_spch, tmp233
	je	.L31	#,
	.loc 1 245 0
	movq	-40(%rbp), %rax	# tmp_spch, tmp234
	movq	%rax, %rdi	# tmp234,
	call	free	#
.L31:
	.loc 1 247 0
	movq	-24(%rbp), %rax	# spbuf, tmp235
	movq	%rax, %rdi	# tmp235,
	call	free	#
	.loc 1 248 0
	movq	-16(%rbp), %rax	# fr_data, tmp236
	movq	%rax, %rdi	# tmp236,
	call	free	#
	.loc 1 249 0
	movq	-8(%rbp), %rax	# fr_fea, tmp237
	movq	%rax, %rdi	# tmp237,
	call	free	#
	jmp	.L32	#
.L12:
	.loc 1 255 0
	movl	-84(%rbp), %eax	# nsamps, tmp238
	cltq
	leaq	(%rax,%rax), %rdx	#, D.5353
	movq	-72(%rbp), %rax	# FE, tmp239
	movq	40(%rax), %rcx	# FE_16(D)->OVERFLOW_SAMPS, D.5354
	movq	-72(%rbp), %rax	# FE, tmp240
	movl	48(%rax), %eax	# FE_16(D)->NUM_OVERFLOW_SAMPS, D.5352
	cltq
	addq	%rax, %rax	# D.5353
	addq	%rax, %rcx	# D.5353, D.5354
	movq	-40(%rbp), %rax	# tmp_spch, tmp241
	movq	%rax, %rsi	# tmp241,
	movq	%rcx, %rdi	# D.5354,
	call	memcpy	#
	.loc 1 256 0
	movq	-72(%rbp), %rax	# FE, tmp242
	movl	48(%rax), %edx	# FE_16(D)->NUM_OVERFLOW_SAMPS, D.5352
	movl	-84(%rbp), %eax	# nsamps, tmp243
	addl	%eax, %edx	# tmp243, D.5352
	movq	-72(%rbp), %rax	# FE, tmp244
	movl	%edx, 48(%rax)	# D.5352, FE_16(D)->NUM_OVERFLOW_SAMPS
	.loc 1 258 0
	movl	$0, -60(%rbp)	#, frame_count
.L32:
	.loc 1 261 0
	movq	-96(%rbp), %rax	# cep_block, tmp245
	movq	-32(%rbp), %rdx	# cep, tmp246
	movq	%rdx, (%rax)	# tmp246, *cep_block_130(D)
	.loc 1 262 0
	movl	-60(%rbp), %eax	# frame_count, D.5363
	.loc 1 263 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	fe_process_utt, .-fe_process_utt
	.section	.rodata
	.align 8
.LC6:
	.string	"memory alloc failed in fe_end_utt()\n...exiting\n"
	.text
	.globl	fe_end_utt
	.type	fe_end_utt, @function
fe_end_utt:
.LFB5:
	.loc 1 276 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# FE, FE
	movq	%rsi, -48(%rbp)	# cepvector, cepvector
	.loc 1 277 0
	movl	$0, -20(%rbp)	#, pad_len
	movl	$0, -28(%rbp)	#, frame_count
	.loc 1 279 0
	movq	$0, -16(%rbp)	#, fr_fea
	.loc 1 284 0
	movq	-40(%rbp), %rax	# FE, tmp98
	movl	48(%rax), %eax	# FE_6(D)->NUM_OVERFLOW_SAMPS, D.5367
	testl	%eax, %eax	# D.5367
	jle	.L37	#,
	.loc 1 285 0
	movq	-40(%rbp), %rax	# FE, tmp99
	movl	16(%rax), %edx	# FE_6(D)->FRAME_SIZE, D.5367
	movq	-40(%rbp), %rax	# FE, tmp100
	movl	48(%rax), %eax	# FE_6(D)->NUM_OVERFLOW_SAMPS, D.5367
	subl	%eax, %edx	# D.5367, tmp101
	movl	%edx, %eax	# tmp101, tmp101
	movl	%eax, -20(%rbp)	# tmp101, pad_len
	.loc 1 286 0
	movl	-20(%rbp), %eax	# pad_len, tmp102
	cltq
	leaq	(%rax,%rax), %rdx	#, D.5368
	movq	-40(%rbp), %rax	# FE, tmp103
	movq	40(%rax), %rcx	# FE_6(D)->OVERFLOW_SAMPS, D.5369
	movq	-40(%rbp), %rax	# FE, tmp104
	movl	48(%rax), %eax	# FE_6(D)->NUM_OVERFLOW_SAMPS, D.5367
	cltq
	addq	%rax, %rax	# D.5368
	addq	%rcx, %rax	# D.5369, D.5370
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.5370,
	call	memset	#
	.loc 1 287 0
	movq	-40(%rbp), %rax	# FE, tmp105
	movl	48(%rax), %edx	# FE_6(D)->NUM_OVERFLOW_SAMPS, D.5367
	movl	-20(%rbp), %eax	# pad_len, tmp106
	addl	%eax, %edx	# tmp106, D.5367
	movq	-40(%rbp), %rax	# FE, tmp107
	movl	%edx, 48(%rax)	# D.5367, FE_6(D)->NUM_OVERFLOW_SAMPS
	.loc 1 290 0
	movq	-40(%rbp), %rax	# FE, tmp108
	movl	16(%rax), %eax	# FE_6(D)->FRAME_SIZE, D.5367
	cltq
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.5368,
	call	calloc	#
	movq	%rax, -8(%rbp)	# tmp109, spbuf
	cmpq	$0, -8(%rbp)	#, spbuf
	jne	.L38	#,
	.loc 1 291 0
	movq	stderr(%rip), %rax	# stderr, stderr.8
	movq	%rax, %rcx	# stderr.8,
	movl	$47, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC6, %edi	#,
	call	fwrite	#
	.loc 1 292 0
	movl	$0, %edi	#,
	call	exit	#
.L38:
	.loc 1 295 0
	movq	-40(%rbp), %rax	# FE, tmp110
	movss	32(%rax), %xmm0	# FE_6(D)->PRE_EMPHASIS_ALPHA, D.5371
	xorps	%xmm1, %xmm1	# tmp111
	ucomiss	%xmm1, %xmm0	# tmp111, D.5371
	jp	.L47	#,
	xorps	%xmm1, %xmm1	# tmp112
	ucomiss	%xmm1, %xmm0	# tmp112, D.5371
	je	.L48	#,
.L47:
	.loc 1 296 0
	movq	-40(%rbp), %rax	# FE, tmp113
	movzwl	68(%rax), %eax	# FE_6(D)->PRIOR, D.5372
	movswl	%ax, %ecx	# D.5372, D.5367
	movq	-40(%rbp), %rax	# FE, tmp114
	movl	32(%rax), %eax	# FE_6(D)->PRE_EMPHASIS_ALPHA, D.5371
	movq	-40(%rbp), %rdx	# FE, tmp115
	movl	16(%rdx), %edx	# FE_6(D)->FRAME_SIZE, D.5367
	movq	-40(%rbp), %rsi	# FE, tmp116
	movq	40(%rsi), %rdi	# FE_6(D)->OVERFLOW_SAMPS, D.5369
	movq	-8(%rbp), %rsi	# spbuf, tmp117
	movl	%eax, -52(%rbp)	# D.5371, %sfp
	movss	-52(%rbp), %xmm0	# %sfp,
	call	fe_pre_emphasis	#
	jmp	.L41	#
.L48:
	.loc 1 298 0
	movq	-40(%rbp), %rax	# FE, tmp118
	movl	16(%rax), %edx	# FE_6(D)->FRAME_SIZE, D.5367
	movq	-40(%rbp), %rax	# FE, tmp119
	movq	40(%rax), %rax	# FE_6(D)->OVERFLOW_SAMPS, D.5369
	movq	-8(%rbp), %rcx	# spbuf, tmp120
	movq	%rcx, %rsi	# tmp120,
	movq	%rax, %rdi	# D.5369,
	call	fe_short_to_double	#
.L41:
	.loc 1 303 0
	movq	-40(%rbp), %rax	# FE, tmp121
	movl	28(%rax), %eax	# FE_6(D)->NUM_CEPSTRA, D.5367
	cltq
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.5368,
	call	calloc	#
	movq	%rax, -16(%rbp)	# tmp122, fr_fea
	cmpq	$0, -16(%rbp)	#, fr_fea
	jne	.L42	#,
	.loc 1 304 0
	movq	stderr(%rip), %rax	# stderr, stderr.9
	movq	%rax, %rcx	# stderr.9,
	movl	$47, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC6, %edi	#,
	call	fwrite	#
	.loc 1 305 0
	movl	$0, %edi	#,
	call	exit	#
.L42:
	.loc 1 308 0
	movq	-40(%rbp), %rax	# FE, tmp123
	movl	16(%rax), %edx	# FE_6(D)->FRAME_SIZE, D.5367
	movq	-40(%rbp), %rax	# FE, tmp124
	movq	72(%rax), %rcx	# FE_6(D)->HAMMING_WINDOW, D.5373
	movq	-8(%rbp), %rax	# spbuf, tmp125
	movq	%rcx, %rsi	# D.5373,
	movq	%rax, %rdi	# tmp125,
	call	fe_hamming_window	#
	.loc 1 309 0
	movq	-16(%rbp), %rdx	# fr_fea, tmp126
	movq	-8(%rbp), %rcx	# spbuf, tmp127
	movq	-40(%rbp), %rax	# FE, tmp128
	movq	%rcx, %rsi	# tmp127,
	movq	%rax, %rdi	# tmp128,
	call	fe_frame_to_fea	#
	.loc 1 310 0
	movl	$0, -24(%rbp)	#, i
	jmp	.L43	#
.L44:
	.loc 1 311 0 discriminator 2
	movl	-24(%rbp), %eax	# i, tmp129
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5368
	movq	-48(%rbp), %rax	# cepvector, tmp130
	addq	%rdx, %rax	# D.5368, D.5374
	movl	-24(%rbp), %edx	# i, tmp131
	movslq	%edx, %rdx	# tmp131, D.5368
	leaq	0(,%rdx,8), %rcx	#, D.5368
	movq	-16(%rbp), %rdx	# fr_fea, tmp132
	addq	%rcx, %rdx	# D.5368, D.5373
	movsd	(%rdx), %xmm0	# *_46, D.5375
	unpcklpd	%xmm0, %xmm0	# D.5375
	cvtpd2ps	%xmm0, %xmm0	# D.5375, D.5371
	movss	%xmm0, (%rax)	# D.5371, *_43
	.loc 1 310 0 discriminator 2
	addl	$1, -24(%rbp)	#, i
.L43:
	.loc 1 310 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# FE, tmp133
	movl	28(%rax), %eax	# FE_6(D)->NUM_CEPSTRA, D.5367
	cmpl	-24(%rbp), %eax	# i, D.5367
	jg	.L44	#,
	.loc 1 312 0 is_stmt 1
	movl	$1, -28(%rbp)	#, frame_count
	.loc 1 313 0
	movq	-16(%rbp), %rax	# fr_fea, tmp134
	movq	%rax, %rdi	# tmp134,
	call	free	#
	.loc 1 314 0
	movq	-8(%rbp), %rax	# spbuf, tmp135
	movq	%rax, %rdi	# tmp135,
	call	free	#
	jmp	.L45	#
.L37:
	.loc 1 316 0
	movl	$0, -28(%rbp)	#, frame_count
	.loc 1 317 0
	movq	$0, -48(%rbp)	#, cepvector
.L45:
	.loc 1 321 0
	movq	-40(%rbp), %rax	# FE, tmp136
	movl	$0, 48(%rax)	#, FE_6(D)->NUM_OVERFLOW_SAMPS
	.loc 1 322 0
	movq	-40(%rbp), %rax	# FE, tmp137
	movl	$0, 64(%rax)	#, FE_6(D)->START_FLAG
	.loc 1 324 0
	movl	-28(%rbp), %eax	# frame_count, D.5376
	.loc 1 325 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	fe_end_utt, .-fe_end_utt
	.globl	fe_close
	.type	fe_close, @function
fe_close:
.LFB6:
	.loc 1 335 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# FE, FE
	.loc 1 337 0
	movq	-8(%rbp), %rax	# FE, tmp73
	movl	24(%rax), %eax	# FE_1(D)->FB_TYPE, D.5378
	cmpl	$1, %eax	#, D.5378
	jne	.L50	#,
	.loc 1 338 0
	movq	-8(%rbp), %rax	# FE, tmp74
	movq	56(%rax), %rax	# FE_1(D)->MEL_FB, D.5379
	movq	24(%rax), %rax	# _3->filter_coeffs, D.5380
	movq	%rax, %rdi	# D.5380,
	call	fe_free_2d	#
	.loc 1 339 0
	movq	-8(%rbp), %rax	# FE, tmp75
	movq	56(%rax), %rax	# FE_1(D)->MEL_FB, D.5379
	movq	32(%rax), %rax	# _5->mel_cosine, D.5380
	movq	%rax, %rdi	# D.5380,
	call	fe_free_2d	#
	.loc 1 340 0
	movq	-8(%rbp), %rax	# FE, tmp76
	movq	56(%rax), %rax	# FE_1(D)->MEL_FB, D.5379
	movq	40(%rax), %rax	# _7->left_apex, D.5381
	movq	%rax, %rdi	# D.5381,
	call	free	#
	.loc 1 341 0
	movq	-8(%rbp), %rax	# FE, tmp77
	movq	56(%rax), %rax	# FE_1(D)->MEL_FB, D.5379
	movq	48(%rax), %rax	# _9->width, D.5382
	movq	%rax, %rdi	# D.5382,
	call	free	#
	.loc 1 342 0
	movq	-8(%rbp), %rax	# FE, tmp78
	movq	56(%rax), %rax	# FE_1(D)->MEL_FB, D.5379
	movq	%rax, %rdi	# D.5379,
	call	free	#
	jmp	.L51	#
.L50:
	.loc 1 344 0
	movq	stderr(%rip), %rax	# stderr, stderr.10
	movq	%rax, %rcx	# stderr.10,
	movl	$48, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC2, %edi	#,
	call	fwrite	#
.L51:
	.loc 1 347 0
	movq	-8(%rbp), %rax	# FE, tmp79
	movq	40(%rax), %rax	# FE_1(D)->OVERFLOW_SAMPS, D.5383
	movq	%rax, %rdi	# D.5383,
	call	free	#
	.loc 1 348 0
	movq	-8(%rbp), %rax	# FE, tmp80
	movq	%rax, %rdi	# tmp80,
	call	free	#
	.loc 1 349 0
	movl	$0, %eax	#, D.5384
	.loc 1 350 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	fe_close, .-fe_close
	.section	.rodata
	.align 8
.LC1:
	.long	0
	.long	1071644672
	.text
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/libio.h"
	.file 5 "./libutil/prim_type.h"
	.file 6 "new_fe.h"
	.file 7 "/usr/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x7b3
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF117
	.byte	0x1
	.long	.LASF118
	.long	.LASF119
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
	.uleb128 0x7
	.long	.LASF41
	.byte	0xd8
	.byte	0x4
	.byte	0xf6
	.long	0x21d
	.uleb128 0x8
	.long	.LASF12
	.byte	0x4
	.byte	0xf7
	.long	0x62
	.byte	0
	.uleb128 0x8
	.long	.LASF13
	.byte	0x4
	.byte	0xfc
	.long	0x8f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF14
	.byte	0x4
	.byte	0xfd
	.long	0x8f
	.byte	0x10
	.uleb128 0x8
	.long	.LASF15
	.byte	0x4
	.byte	0xfe
	.long	0x8f
	.byte	0x18
	.uleb128 0x8
	.long	.LASF16
	.byte	0x4
	.byte	0xff
	.long	0x8f
	.byte	0x20
	.uleb128 0x9
	.long	.LASF17
	.byte	0x4
	.value	0x100
	.long	0x8f
	.byte	0x28
	.uleb128 0x9
	.long	.LASF18
	.byte	0x4
	.value	0x101
	.long	0x8f
	.byte	0x30
	.uleb128 0x9
	.long	.LASF19
	.byte	0x4
	.value	0x102
	.long	0x8f
	.byte	0x38
	.uleb128 0x9
	.long	.LASF20
	.byte	0x4
	.value	0x103
	.long	0x8f
	.byte	0x40
	.uleb128 0x9
	.long	.LASF21
	.byte	0x4
	.value	0x105
	.long	0x8f
	.byte	0x48
	.uleb128 0x9
	.long	.LASF22
	.byte	0x4
	.value	0x106
	.long	0x8f
	.byte	0x50
	.uleb128 0x9
	.long	.LASF23
	.byte	0x4
	.value	0x107
	.long	0x8f
	.byte	0x58
	.uleb128 0x9
	.long	.LASF24
	.byte	0x4
	.value	0x109
	.long	0x255
	.byte	0x60
	.uleb128 0x9
	.long	.LASF25
	.byte	0x4
	.value	0x10b
	.long	0x25b
	.byte	0x68
	.uleb128 0x9
	.long	.LASF26
	.byte	0x4
	.value	0x10d
	.long	0x62
	.byte	0x70
	.uleb128 0x9
	.long	.LASF27
	.byte	0x4
	.value	0x111
	.long	0x62
	.byte	0x74
	.uleb128 0x9
	.long	.LASF28
	.byte	0x4
	.value	0x113
	.long	0x70
	.byte	0x78
	.uleb128 0x9
	.long	.LASF29
	.byte	0x4
	.value	0x117
	.long	0x46
	.byte	0x80
	.uleb128 0x9
	.long	.LASF30
	.byte	0x4
	.value	0x118
	.long	0x54
	.byte	0x82
	.uleb128 0x9
	.long	.LASF31
	.byte	0x4
	.value	0x119
	.long	0x261
	.byte	0x83
	.uleb128 0x9
	.long	.LASF32
	.byte	0x4
	.value	0x11d
	.long	0x271
	.byte	0x88
	.uleb128 0x9
	.long	.LASF33
	.byte	0x4
	.value	0x126
	.long	0x7b
	.byte	0x90
	.uleb128 0x9
	.long	.LASF34
	.byte	0x4
	.value	0x12f
	.long	0x8d
	.byte	0x98
	.uleb128 0x9
	.long	.LASF35
	.byte	0x4
	.value	0x130
	.long	0x8d
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF36
	.byte	0x4
	.value	0x131
	.long	0x8d
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF37
	.byte	0x4
	.value	0x132
	.long	0x8d
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF38
	.byte	0x4
	.value	0x133
	.long	0x2d
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF39
	.byte	0x4
	.value	0x135
	.long	0x62
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF40
	.byte	0x4
	.value	0x137
	.long	0x277
	.byte	0xc4
	.byte	0
	.uleb128 0xa
	.long	.LASF120
	.byte	0x4
	.byte	0x9b
	.uleb128 0x7
	.long	.LASF42
	.byte	0x18
	.byte	0x4
	.byte	0xa1
	.long	0x255
	.uleb128 0x8
	.long	.LASF43
	.byte	0x4
	.byte	0xa2
	.long	0x255
	.byte	0
	.uleb128 0x8
	.long	.LASF44
	.byte	0x4
	.byte	0xa3
	.long	0x25b
	.byte	0x8
	.uleb128 0x8
	.long	.LASF45
	.byte	0x4
	.byte	0xa7
	.long	0x62
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x224
	.uleb128 0x6
	.byte	0x8
	.long	0x9c
	.uleb128 0xb
	.long	0x95
	.long	0x271
	.uleb128 0xc
	.long	0x86
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x21d
	.uleb128 0xb
	.long	0x95
	.long	0x287
	.uleb128 0xc
	.long	0x86
	.byte	0x13
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF46
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF47
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF48
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF49
	.uleb128 0x2
	.long	.LASF50
	.byte	0x5
	.byte	0x3f
	.long	0x62
	.uleb128 0x2
	.long	.LASF51
	.byte	0x5
	.byte	0x40
	.long	0x5b
	.uleb128 0x2
	.long	.LASF52
	.byte	0x5
	.byte	0x45
	.long	0x287
	.uleb128 0xd
	.byte	0x78
	.byte	0x6
	.byte	0x29
	.long	0x3e1
	.uleb128 0x8
	.long	.LASF53
	.byte	0x6
	.byte	0x2a
	.long	0x287
	.byte	0
	.uleb128 0x8
	.long	.LASF54
	.byte	0x6
	.byte	0x2b
	.long	0x2a3
	.byte	0x4
	.uleb128 0x8
	.long	.LASF55
	.byte	0x6
	.byte	0x2c
	.long	0x287
	.byte	0x8
	.uleb128 0x8
	.long	.LASF56
	.byte	0x6
	.byte	0x2d
	.long	0x2a3
	.byte	0xc
	.uleb128 0x8
	.long	.LASF57
	.byte	0x6
	.byte	0x2e
	.long	0x2a3
	.byte	0x10
	.uleb128 0x8
	.long	.LASF58
	.byte	0x6
	.byte	0x2f
	.long	0x2a3
	.byte	0x14
	.uleb128 0x8
	.long	.LASF59
	.byte	0x6
	.byte	0x30
	.long	0x2a3
	.byte	0x18
	.uleb128 0x8
	.long	.LASF60
	.byte	0x6
	.byte	0x31
	.long	0x287
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF61
	.byte	0x6
	.byte	0x32
	.long	0x287
	.byte	0x20
	.uleb128 0x8
	.long	.LASF62
	.byte	0x6
	.byte	0x33
	.long	0x287
	.byte	0x24
	.uleb128 0x8
	.long	.LASF63
	.byte	0x6
	.byte	0x35
	.long	0x8f
	.byte	0x28
	.uleb128 0x8
	.long	.LASF64
	.byte	0x6
	.byte	0x36
	.long	0x8f
	.byte	0x30
	.uleb128 0x8
	.long	.LASF65
	.byte	0x6
	.byte	0x37
	.long	0x8f
	.byte	0x38
	.uleb128 0x8
	.long	.LASF66
	.byte	0x6
	.byte	0x38
	.long	0x8f
	.byte	0x40
	.uleb128 0x8
	.long	.LASF67
	.byte	0x6
	.byte	0x39
	.long	0x8f
	.byte	0x48
	.uleb128 0x8
	.long	.LASF68
	.byte	0x6
	.byte	0x3a
	.long	0x8f
	.byte	0x50
	.uleb128 0x8
	.long	.LASF69
	.byte	0x6
	.byte	0x3b
	.long	0x8f
	.byte	0x58
	.uleb128 0x8
	.long	.LASF70
	.byte	0x6
	.byte	0x3c
	.long	0x2a3
	.byte	0x60
	.uleb128 0x8
	.long	.LASF71
	.byte	0x6
	.byte	0x3d
	.long	0x2a3
	.byte	0x64
	.uleb128 0x8
	.long	.LASF72
	.byte	0x6
	.byte	0x3e
	.long	0x2a3
	.byte	0x68
	.uleb128 0x8
	.long	.LASF73
	.byte	0x6
	.byte	0x3f
	.long	0x2a3
	.byte	0x6c
	.uleb128 0x8
	.long	.LASF74
	.byte	0x6
	.byte	0x40
	.long	0x2a3
	.byte	0x70
	.uleb128 0x8
	.long	.LASF75
	.byte	0x6
	.byte	0x41
	.long	0x2a3
	.byte	0x74
	.byte	0
	.uleb128 0x2
	.long	.LASF76
	.byte	0x6
	.byte	0x45
	.long	0x2c4
	.uleb128 0xd
	.byte	0x40
	.byte	0x6
	.byte	0x48
	.long	0x479
	.uleb128 0x8
	.long	.LASF77
	.byte	0x6
	.byte	0x49
	.long	0x287
	.byte	0
	.uleb128 0x8
	.long	.LASF78
	.byte	0x6
	.byte	0x4a
	.long	0x2a3
	.byte	0x4
	.uleb128 0x8
	.long	.LASF79
	.byte	0x6
	.byte	0x4b
	.long	0x2a3
	.byte	0x8
	.uleb128 0x8
	.long	.LASF80
	.byte	0x6
	.byte	0x4c
	.long	0x2a3
	.byte	0xc
	.uleb128 0x8
	.long	.LASF81
	.byte	0x6
	.byte	0x4d
	.long	0x287
	.byte	0x10
	.uleb128 0x8
	.long	.LASF82
	.byte	0x6
	.byte	0x4e
	.long	0x287
	.byte	0x14
	.uleb128 0x8
	.long	.LASF83
	.byte	0x6
	.byte	0x4f
	.long	0x479
	.byte	0x18
	.uleb128 0x8
	.long	.LASF84
	.byte	0x6
	.byte	0x50
	.long	0x479
	.byte	0x20
	.uleb128 0x8
	.long	.LASF85
	.byte	0x6
	.byte	0x51
	.long	0x47f
	.byte	0x28
	.uleb128 0x8
	.long	.LASF86
	.byte	0x6
	.byte	0x52
	.long	0x485
	.byte	0x30
	.uleb128 0x8
	.long	.LASF87
	.byte	0x6
	.byte	0x53
	.long	0x2a3
	.byte	0x38
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x47f
	.uleb128 0x6
	.byte	0x8
	.long	0x287
	.uleb128 0x6
	.byte	0x8
	.long	0x2a3
	.uleb128 0x2
	.long	.LASF88
	.byte	0x6
	.byte	0x54
	.long	0x3ec
	.uleb128 0xd
	.byte	0x50
	.byte	0x6
	.byte	0x57
	.long	0x553
	.uleb128 0x8
	.long	.LASF53
	.byte	0x6
	.byte	0x58
	.long	0x287
	.byte	0
	.uleb128 0x8
	.long	.LASF54
	.byte	0x6
	.byte	0x59
	.long	0x2a3
	.byte	0x4
	.uleb128 0x8
	.long	.LASF89
	.byte	0x6
	.byte	0x5a
	.long	0x2a3
	.byte	0x8
	.uleb128 0x8
	.long	.LASF55
	.byte	0x6
	.byte	0x5b
	.long	0x287
	.byte	0xc
	.uleb128 0x8
	.long	.LASF90
	.byte	0x6
	.byte	0x5c
	.long	0x2a3
	.byte	0x10
	.uleb128 0x8
	.long	.LASF59
	.byte	0x6
	.byte	0x5d
	.long	0x2a3
	.byte	0x14
	.uleb128 0x8
	.long	.LASF56
	.byte	0x6
	.byte	0x5e
	.long	0x2a3
	.byte	0x18
	.uleb128 0x8
	.long	.LASF57
	.byte	0x6
	.byte	0x5f
	.long	0x2a3
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF62
	.byte	0x6
	.byte	0x60
	.long	0x287
	.byte	0x20
	.uleb128 0x8
	.long	.LASF91
	.byte	0x6
	.byte	0x61
	.long	0x553
	.byte	0x28
	.uleb128 0x8
	.long	.LASF92
	.byte	0x6
	.byte	0x62
	.long	0x2a3
	.byte	0x30
	.uleb128 0x8
	.long	.LASF93
	.byte	0x6
	.byte	0x63
	.long	0x559
	.byte	0x38
	.uleb128 0x8
	.long	.LASF94
	.byte	0x6
	.byte	0x64
	.long	0x2a3
	.byte	0x40
	.uleb128 0x8
	.long	.LASF95
	.byte	0x6
	.byte	0x65
	.long	0x2ae
	.byte	0x44
	.uleb128 0x8
	.long	.LASF96
	.byte	0x6
	.byte	0x66
	.long	0x55f
	.byte	0x48
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2ae
	.uleb128 0x6
	.byte	0x8
	.long	0x48b
	.uleb128 0x6
	.byte	0x8
	.long	0x28e
	.uleb128 0x2
	.long	.LASF97
	.byte	0x6
	.byte	0x68
	.long	0x496
	.uleb128 0xe
	.long	.LASF98
	.byte	0x1
	.byte	0x56
	.long	0x5ab
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x5ab
	.uleb128 0xf
	.string	"P"
	.byte	0x1
	.byte	0x56
	.long	0x5b1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x10
	.string	"FE"
	.byte	0x1
	.byte	0x58
	.long	0x5ab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x565
	.uleb128 0x6
	.byte	0x8
	.long	0x3e1
	.uleb128 0xe
	.long	.LASF99
	.byte	0x1
	.byte	0x8e
	.long	0x62
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x5e6
	.uleb128 0xf
	.string	"FE"
	.byte	0x1
	.byte	0x8e
	.long	0x5ab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xe
	.long	.LASF100
	.byte	0x1
	.byte	0xa0
	.long	0x62
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x6df
	.uleb128 0xf
	.string	"FE"
	.byte	0x1
	.byte	0xa0
	.long	0x5ab
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x11
	.long	.LASF101
	.byte	0x1
	.byte	0xa0
	.long	0x553
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x11
	.long	.LASF102
	.byte	0x1
	.byte	0xa0
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x11
	.long	.LASF103
	.byte	0x1
	.byte	0xa0
	.long	0x6df
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x12
	.long	.LASF104
	.byte	0x1
	.byte	0xa2
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x12
	.long	.LASF105
	.byte	0x1
	.byte	0xa2
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x12
	.long	.LASF106
	.byte	0x1
	.byte	0xa2
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x10
	.string	"i"
	.byte	0x1
	.byte	0xa3
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x12
	.long	.LASF107
	.byte	0x1
	.byte	0xa3
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x12
	.long	.LASF108
	.byte	0x1
	.byte	0xa3
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x12
	.long	.LASF109
	.byte	0x1
	.byte	0xa4
	.long	0x55f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x12
	.long	.LASF110
	.byte	0x1
	.byte	0xa4
	.long	0x55f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x12
	.long	.LASF111
	.byte	0x1
	.byte	0xa4
	.long	0x55f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.long	.LASF112
	.byte	0x1
	.byte	0xa5
	.long	0x553
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x10
	.string	"cep"
	.byte	0x1
	.byte	0xa6
	.long	0x6e5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x6e5
	.uleb128 0x6
	.byte	0x8
	.long	0x6eb
	.uleb128 0x6
	.byte	0x8
	.long	0x2b9
	.uleb128 0x13
	.long	.LASF113
	.byte	0x1
	.value	0x113
	.long	0x62
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x77a
	.uleb128 0x14
	.string	"FE"
	.byte	0x1
	.value	0x113
	.long	0x5ab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x15
	.long	.LASF114
	.byte	0x1
	.value	0x113
	.long	0x6eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x16
	.long	.LASF115
	.byte	0x1
	.value	0x115
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x16
	.long	.LASF105
	.byte	0x1
	.value	0x115
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.value	0x116
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x16
	.long	.LASF109
	.byte	0x1
	.value	0x117
	.long	0x55f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x16
	.long	.LASF111
	.byte	0x1
	.value	0x117
	.long	0x55f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x13
	.long	.LASF116
	.byte	0x1
	.value	0x14e
	.long	0x62
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x7ab
	.uleb128 0x14
	.string	"FE"
	.byte	0x1
	.value	0x14e
	.long	0x5ab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x18
	.long	.LASF121
	.byte	0x7
	.byte	0xaa
	.long	0x25b
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
	.uleb128 0xf
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x18
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
.LASF80:
	.string	"fft_size"
.LASF8:
	.string	"__off_t"
.LASF13:
	.string	"_IO_read_ptr"
.LASF53:
	.string	"SAMPLING_RATE"
.LASF7:
	.string	"size_t"
.LASF103:
	.string	"cep_block"
.LASF85:
	.string	"left_apex"
.LASF31:
	.string	"_shortbuf"
.LASF99:
	.string	"fe_start_utt"
.LASF95:
	.string	"PRIOR"
.LASF96:
	.string	"HAMMING_WINDOW"
.LASF71:
	.string	"is_batch"
.LASF19:
	.string	"_IO_buf_base"
.LASF49:
	.string	"long long unsigned int"
.LASF101:
	.string	"spch"
.LASF82:
	.string	"upper_filt_freq"
.LASF48:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF58:
	.string	"NUM_FILTERS"
.LASF104:
	.string	"frame_start"
.LASF64:
	.string	"cepfile"
.LASF50:
	.string	"int32"
.LASF26:
	.string	"_fileno"
.LASF14:
	.string	"_IO_read_end"
.LASF90:
	.string	"FRAME_SIZE"
.LASF6:
	.string	"long int"
.LASF12:
	.string	"_flags"
.LASF81:
	.string	"lower_filt_freq"
.LASF20:
	.string	"_IO_buf_end"
.LASF29:
	.string	"_cur_column"
.LASF47:
	.string	"double"
.LASF28:
	.string	"_old_offset"
.LASF33:
	.string	"_offset"
.LASF37:
	.string	"__pad4"
.LASF106:
	.string	"whichframe"
.LASF59:
	.string	"FFT_SIZE"
.LASF72:
	.string	"is_single"
.LASF100:
	.string	"fe_process_utt"
.LASF87:
	.string	"doublewide"
.LASF42:
	.string	"_IO_marker"
.LASF3:
	.string	"unsigned int"
.LASF119:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/482.sphinx3/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF73:
	.string	"blocksize"
.LASF0:
	.string	"long unsigned int"
.LASF17:
	.string	"_IO_write_ptr"
.LASF44:
	.string	"_sbuf"
.LASF86:
	.string	"width"
.LASF88:
	.string	"melfb_t"
.LASF2:
	.string	"short unsigned int"
.LASF112:
	.string	"tmp_spch"
.LASF57:
	.string	"NUM_CEPSTRA"
.LASF89:
	.string	"FRAME_SHIFT"
.LASF21:
	.string	"_IO_save_base"
.LASF75:
	.string	"doublebw"
.LASF98:
	.string	"fe_init"
.LASF92:
	.string	"NUM_OVERFLOW_SAMPS"
.LASF111:
	.string	"fr_fea"
.LASF32:
	.string	"_lock"
.LASF69:
	.string	"cepext"
.LASF27:
	.string	"_flags2"
.LASF39:
	.string	"_mode"
.LASF76:
	.string	"param_t"
.LASF91:
	.string	"OVERFLOW_SAMPS"
.LASF56:
	.string	"FB_TYPE"
.LASF52:
	.string	"float32"
.LASF10:
	.string	"sizetype"
.LASF105:
	.string	"frame_count"
.LASF84:
	.string	"mel_cosine"
.LASF61:
	.string	"UPPER_FILT_FREQ"
.LASF68:
	.string	"wavext"
.LASF110:
	.string	"fr_data"
.LASF18:
	.string	"_IO_write_end"
.LASF120:
	.string	"_IO_lock_t"
.LASF41:
	.string	"_IO_FILE"
.LASF109:
	.string	"spbuf"
.LASF46:
	.string	"float"
.LASF79:
	.string	"num_filters"
.LASF45:
	.string	"_pos"
.LASF24:
	.string	"_markers"
.LASF60:
	.string	"LOWER_FILT_FREQ"
.LASF83:
	.string	"filter_coeffs"
.LASF1:
	.string	"unsigned char"
.LASF67:
	.string	"cepdir"
.LASF5:
	.string	"short int"
.LASF25:
	.string	"_chain"
.LASF118:
	.string	"new_fe.c"
.LASF30:
	.string	"_vtable_offset"
.LASF97:
	.string	"fe_t"
.LASF66:
	.string	"wavdir"
.LASF63:
	.string	"wavfile"
.LASF94:
	.string	"START_FLAG"
.LASF107:
	.string	"spbuf_len"
.LASF11:
	.string	"char"
.LASF74:
	.string	"verbose"
.LASF43:
	.string	"_next"
.LASF62:
	.string	"PRE_EMPHASIS_ALPHA"
.LASF9:
	.string	"__off64_t"
.LASF108:
	.string	"offset"
.LASF15:
	.string	"_IO_read_base"
.LASF23:
	.string	"_IO_save_end"
.LASF114:
	.string	"cepvector"
.LASF78:
	.string	"num_cepstra"
.LASF34:
	.string	"__pad1"
.LASF35:
	.string	"__pad2"
.LASF36:
	.string	"__pad3"
.LASF115:
	.string	"pad_len"
.LASF38:
	.string	"__pad5"
.LASF70:
	.string	"input_format"
.LASF40:
	.string	"_unused2"
.LASF121:
	.string	"stderr"
.LASF116:
	.string	"fe_close"
.LASF93:
	.string	"MEL_FB"
.LASF117:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF22:
	.string	"_IO_backup_base"
.LASF113:
	.string	"fe_end_utt"
.LASF51:
	.string	"int16"
.LASF55:
	.string	"WINDOW_LENGTH"
.LASF102:
	.string	"nsamps"
.LASF54:
	.string	"FRAME_RATE"
.LASF16:
	.string	"_IO_write_base"
.LASF65:
	.string	"ctlfile"
.LASF77:
	.string	"sampling_rate"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
