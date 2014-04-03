	.file	"epd.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 epd.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.globl	setup_epd_line
	.type	setup_epd_line, @function
setup_epd_line:
.LFB2:
	.file 1 "epd.c"
	.loc 1 15 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# inbuff, inbuff
	.loc 1 16 0
	movl	$0, -48(%rbp)	#, i
	.loc 1 17 0
	movl	$0, -44(%rbp)	#, rankp
	.loc 1 18 0
	movl	$0, -40(%rbp)	#, rankoffset
	.loc 1 19 0
	movl	$0, -36(%rbp)	#, fileoffset
	.loc 1 29 0
	movl	$0, -28(%rbp)	#, stage
	.loc 1 34 0
	movl	$97, -24(%rbp)	#, converterf
	.loc 1 35 0
	movl	$49, -20(%rbp)	#, converterr
	.loc 1 38 0
	movl	$576, %edx	#,
	movl	$0, %esi	#,
	movl	$board, %edi	#,
	call	memset	#
	.loc 1 40 0
	movl	$0, white_castled(%rip)	#, white_castled
	.loc 1 41 0
	movl	$0, black_castled(%rip)	#, black_castled
	.loc 1 43 0
	movl	$50, book_ply(%rip)	#, book_ply
	.loc 1 45 0
	movl	rankoffsets.3883(%rip), %eax	# rankoffsets, tmp163
	movl	%eax, -40(%rbp)	# tmp163, rankoffset
	.loc 1 47 0
	jmp	.L2	#
.L3:
	.loc 1 47 0 is_stmt 0 discriminator 2
	addl	$1, -48(%rbp)	#, i
.L2:
	.loc 1 47 0 discriminator 1
	movl	-48(%rbp), %eax	# i, tmp164
	movslq	%eax, %rdx	# tmp164, D.4210
	movq	-56(%rbp), %rax	# inbuff, tmp165
	addq	%rdx, %rax	# D.4210, D.4211
	movzbl	(%rax), %eax	# *_28, D.4212
	cmpb	$32, %al	#, D.4212
	je	.L3	#,
	.loc 1 49 0 is_stmt 1
	jmp	.L4	#
.L47:
	.loc 1 51 0
	cmpl	$0, -28(%rbp)	#, stage
	jne	.L5	#,
	.loc 1 51 0 is_stmt 0 discriminator 1
	call	__ctype_b_loc	#
	movq	(%rax), %rax	# *_37, D.4214
	movl	-48(%rbp), %edx	# i, tmp166
	movslq	%edx, %rcx	# tmp166, D.4210
	movq	-56(%rbp), %rdx	# inbuff, tmp167
	addq	%rcx, %rdx	# D.4210, D.4211
	movzbl	(%rdx), %edx	# *_40, D.4212
	movsbq	%dl, %rdx	# D.4212, D.4215
	addq	%rdx, %rdx	# D.4215
	addq	%rdx, %rax	# D.4215, D.4214
	movzwl	(%rax), %eax	# *_44, D.4216
	movzwl	%ax, %eax	# D.4216, D.4217
	andl	$2048, %eax	#, D.4217
	testl	%eax, %eax	# D.4217
	je	.L5	#,
	.loc 1 53 0 is_stmt 1
	movl	$0, -32(%rbp)	#, j
	jmp	.L6	#
.L7:
	.loc 1 54 0 discriminator 2
	movl	-32(%rbp), %eax	# j, tmp168
	movl	-40(%rbp), %edx	# rankoffset, tmp169
	addl	%eax, %edx	# tmp168, D.4217
	movl	-36(%rbp), %eax	# fileoffset, tmp170
	addl	%edx, %eax	# D.4217, D.4217
	cltq
	movl	$13, board(,%rax,4)	#, board
	.loc 1 53 0 discriminator 2
	addl	$1, -32(%rbp)	#, j
.L6:
	.loc 1 53 0 is_stmt 0 discriminator 1
	movl	-48(%rbp), %eax	# i, tmp172
	movslq	%eax, %rdx	# tmp172, D.4210
	movq	-56(%rbp), %rax	# inbuff, tmp173
	addq	%rdx, %rax	# D.4210, D.4218
	movq	%rax, %rdi	# D.4218,
	call	atoi	#
	cmpl	-32(%rbp), %eax	# j, D.4217
	jg	.L7	#,
	.loc 1 56 0 is_stmt 1
	movl	-48(%rbp), %eax	# i, tmp174
	movslq	%eax, %rdx	# tmp174, D.4210
	movq	-56(%rbp), %rax	# inbuff, tmp175
	addq	%rdx, %rax	# D.4210, D.4218
	movq	%rax, %rdi	# D.4218,
	call	atoi	#
	addl	%eax, -36(%rbp)	# D.4217, fileoffset
	jmp	.L8	#
.L5:
	.loc 1 58 0
	cmpl	$0, -28(%rbp)	#, stage
	jne	.L9	#,
	.loc 1 58 0 is_stmt 0 discriminator 1
	movl	-48(%rbp), %eax	# i, tmp176
	movslq	%eax, %rdx	# tmp176, D.4210
	movq	-56(%rbp), %rax	# inbuff, tmp177
	addq	%rdx, %rax	# D.4210, D.4211
	movzbl	(%rax), %eax	# *_60, D.4212
	cmpb	$47, %al	#, D.4212
	jne	.L9	#,
	.loc 1 60 0 is_stmt 1
	addl	$1, -44(%rbp)	#, rankp
	.loc 1 61 0
	movl	-44(%rbp), %eax	# rankp, tmp179
	cltq
	movl	rankoffsets.3883(,%rax,4), %eax	# rankoffsets, tmp180
	movl	%eax, -40(%rbp)	# tmp180, rankoffset
	.loc 1 62 0
	movl	$0, -36(%rbp)	#, fileoffset
	jmp	.L8	#
.L9:
	.loc 1 64 0
	cmpl	$0, -28(%rbp)	#, stage
	jne	.L10	#,
	.loc 1 64 0 is_stmt 0 discriminator 1
	call	__ctype_b_loc	#
	movq	(%rax), %rax	# *_65, D.4214
	movl	-48(%rbp), %edx	# i, tmp181
	movslq	%edx, %rcx	# tmp181, D.4210
	movq	-56(%rbp), %rdx	# inbuff, tmp182
	addq	%rcx, %rdx	# D.4210, D.4211
	movzbl	(%rdx), %edx	# *_68, D.4212
	movsbq	%dl, %rdx	# D.4212, D.4215
	addq	%rdx, %rdx	# D.4215
	addq	%rdx, %rax	# D.4215, D.4214
	movzwl	(%rax), %eax	# *_72, D.4216
	movzwl	%ax, %eax	# D.4216, D.4217
	andl	$1024, %eax	#, D.4217
	testl	%eax, %eax	# D.4217
	je	.L10	#,
	.loc 1 66 0 is_stmt 1
	movl	-48(%rbp), %eax	# i, tmp183
	movslq	%eax, %rdx	# tmp183, D.4210
	movq	-56(%rbp), %rax	# inbuff, tmp184
	addq	%rdx, %rax	# D.4210, D.4211
	movzbl	(%rax), %eax	# *_77, D.4212
	movsbl	%al, %eax	# D.4212, D.4217
	subl	$66, %eax	#, tmp185
	cmpl	$48, %eax	#, tmp185
	ja	.L11	#,
	movl	%eax, %eax	# tmp185, tmp186
	movq	.L13(,%rax,8), %rax	#, tmp187
	jmp	*%rax	# tmp187
	.section	.rodata
	.align 8
	.align 4
.L13:
	.quad	.L12
	.quad	.L11
	.quad	.L11
	.quad	.L11
	.quad	.L11
	.quad	.L11
	.quad	.L11
	.quad	.L11
	.quad	.L11
	.quad	.L14
	.quad	.L11
	.quad	.L11
	.quad	.L15
	.quad	.L11
	.quad	.L16
	.quad	.L17
	.quad	.L18
	.quad	.L11
	.quad	.L11
	.quad	.L11
	.quad	.L11
	.quad	.L11
	.quad	.L11
	.quad	.L11
	.quad	.L11
	.quad	.L11
	.quad	.L11
	.quad	.L11
	.quad	.L11
	.quad	.L11
	.quad	.L11
	.quad	.L11
	.quad	.L19
	.quad	.L11
	.quad	.L11
	.quad	.L11
	.quad	.L11
	.quad	.L11
	.quad	.L11
	.quad	.L11
	.quad	.L11
	.quad	.L20
	.quad	.L11
	.quad	.L11
	.quad	.L21
	.quad	.L11
	.quad	.L22
	.quad	.L23
	.quad	.L24
	.text
.L22:
	.loc 1 68 0
	movl	-36(%rbp), %eax	# fileoffset, tmp188
	movl	-40(%rbp), %edx	# rankoffset, tmp189
	addl	%edx, %eax	# tmp189, D.4217
	cltq
	movl	$2, board(,%rax,4)	#, board
	jmp	.L11	#
.L16:
	.loc 1 69 0
	movl	-36(%rbp), %eax	# fileoffset, tmp191
	movl	-40(%rbp), %edx	# rankoffset, tmp192
	addl	%edx, %eax	# tmp192, D.4217
	cltq
	movl	$1, board(,%rax,4)	#, board
	jmp	.L11	#
.L21:
	.loc 1 70 0
	movl	-36(%rbp), %eax	# fileoffset, tmp194
	movl	-40(%rbp), %edx	# rankoffset, tmp195
	addl	%edx, %eax	# tmp195, D.4217
	cltq
	movl	$4, board(,%rax,4)	#, board
	jmp	.L11	#
.L15:
	.loc 1 71 0
	movl	-36(%rbp), %eax	# fileoffset, tmp197
	movl	-40(%rbp), %edx	# rankoffset, tmp198
	addl	%edx, %eax	# tmp198, D.4217
	cltq
	movl	$3, board(,%rax,4)	#, board
	jmp	.L11	#
.L19:
	.loc 1 72 0
	movl	-36(%rbp), %eax	# fileoffset, tmp200
	movl	-40(%rbp), %edx	# rankoffset, tmp201
	addl	%edx, %eax	# tmp201, D.4217
	cltq
	movl	$12, board(,%rax,4)	#, board
	jmp	.L11	#
.L12:
	.loc 1 73 0
	movl	-36(%rbp), %eax	# fileoffset, tmp203
	movl	-40(%rbp), %edx	# rankoffset, tmp204
	addl	%edx, %eax	# tmp204, D.4217
	cltq
	movl	$11, board(,%rax,4)	#, board
	jmp	.L11	#
.L24:
	.loc 1 74 0
	movl	-36(%rbp), %eax	# fileoffset, tmp206
	movl	-40(%rbp), %edx	# rankoffset, tmp207
	addl	%edx, %eax	# tmp207, D.4217
	cltq
	movl	$8, board(,%rax,4)	#, board
	jmp	.L11	#
.L18:
	.loc 1 75 0
	movl	-36(%rbp), %eax	# fileoffset, tmp209
	movl	-40(%rbp), %edx	# rankoffset, tmp210
	addl	%edx, %eax	# tmp210, D.4217
	cltq
	movl	$7, board(,%rax,4)	#, board
	jmp	.L11	#
.L23:
	.loc 1 76 0
	movl	-36(%rbp), %eax	# fileoffset, tmp212
	movl	-40(%rbp), %edx	# rankoffset, tmp213
	addl	%edx, %eax	# tmp213, D.4217
	cltq
	movl	$10, board(,%rax,4)	#, board
	jmp	.L11	#
.L17:
	.loc 1 77 0
	movl	-36(%rbp), %eax	# fileoffset, tmp215
	movl	-40(%rbp), %edx	# rankoffset, tmp216
	addl	%edx, %eax	# tmp216, D.4217
	cltq
	movl	$9, board(,%rax,4)	#, board
	jmp	.L11	#
.L20:
	.loc 1 79 0
	movl	-36(%rbp), %eax	# fileoffset, tmp218
	movl	-40(%rbp), %edx	# rankoffset, tmp219
	addl	%edx, %eax	# tmp219, bking_loc.0
	movl	%eax, bking_loc(%rip)	# bking_loc.0, bking_loc
	.loc 1 80 0
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.1
	cltq
	movl	$6, board(,%rax,4)	#, board
	.loc 1 81 0
	jmp	.L11	#
.L14:
	.loc 1 83 0
	movl	-36(%rbp), %eax	# fileoffset, tmp221
	movl	-40(%rbp), %edx	# rankoffset, tmp222
	addl	%edx, %eax	# tmp222, wking_loc.2
	movl	%eax, wking_loc(%rip)	# wking_loc.2, wking_loc
	.loc 1 84 0
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.3
	cltq
	movl	$5, board(,%rax,4)	#, board
	.loc 1 85 0
	nop
.L11:
	.loc 1 87 0
	addl	$1, -36(%rbp)	#, fileoffset
	jmp	.L8	#
.L10:
	.loc 1 89 0
	movl	-48(%rbp), %eax	# i, tmp224
	movslq	%eax, %rdx	# tmp224, D.4210
	movq	-56(%rbp), %rax	# inbuff, tmp225
	addq	%rdx, %rax	# D.4210, D.4211
	movzbl	(%rax), %eax	# *_96, D.4212
	cmpb	$32, %al	#, D.4212
	jne	.L8	#,
	.loc 1 91 0
	addl	$1, -28(%rbp)	#, stage
	.loc 1 93 0
	cmpl	$1, -28(%rbp)	#, stage
	jne	.L25	#,
	.loc 1 96 0
	jmp	.L26	#
.L27:
	.loc 1 96 0 is_stmt 0 discriminator 2
	addl	$1, -48(%rbp)	#, i
.L26:
	.loc 1 96 0 discriminator 1
	movl	-48(%rbp), %eax	# i, tmp226
	movslq	%eax, %rdx	# tmp226, D.4210
	movq	-56(%rbp), %rax	# inbuff, tmp227
	addq	%rdx, %rax	# D.4210, D.4211
	movzbl	(%rax), %eax	# *_100, D.4212
	cmpb	$32, %al	#, D.4212
	je	.L27	#,
	.loc 1 98 0 is_stmt 1
	movl	-48(%rbp), %eax	# i, tmp228
	movslq	%eax, %rdx	# tmp228, D.4210
	movq	-56(%rbp), %rax	# inbuff, tmp229
	addq	%rdx, %rax	# D.4210, D.4211
	movzbl	(%rax), %eax	# *_104, D.4212
	cmpb	$119, %al	#, D.4212
	jne	.L28	#,
	.loc 1 99 0
	movl	$1, white_to_move(%rip)	#, white_to_move
	jmp	.L8	#
.L28:
	.loc 1 101 0
	movl	$0, white_to_move(%rip)	#, white_to_move
	jmp	.L8	#
.L25:
	.loc 1 103 0
	cmpl	$2, -28(%rbp)	#, stage
	jne	.L30	#,
	.loc 1 106 0
	movl	$1, moved+120(%rip)	#, moved
	movl	moved+120(%rip), %eax	# moved, D.4217
	movl	%eax, moved+132(%rip)	# D.4217, moved
	movl	moved+132(%rip), %eax	# moved, D.4217
	movl	%eax, moved+104(%rip)	# D.4217, moved
	.loc 1 107 0
	movl	$1, moved+468(%rip)	#, moved
	movl	moved+468(%rip), %eax	# moved, D.4217
	movl	%eax, moved+456(%rip)	# D.4217, moved
	movl	moved+456(%rip), %eax	# moved, D.4217
	movl	%eax, moved+440(%rip)	# D.4217, moved
	.loc 1 109 0
	jmp	.L31	#
.L32:
	.loc 1 109 0 is_stmt 0 discriminator 2
	addl	$1, -48(%rbp)	#, i
.L31:
	.loc 1 109 0 discriminator 1
	movl	-48(%rbp), %eax	# i, tmp230
	movslq	%eax, %rdx	# tmp230, D.4210
	movq	-56(%rbp), %rax	# inbuff, tmp231
	addq	%rdx, %rax	# D.4210, D.4211
	movzbl	(%rax), %eax	# *_111, D.4212
	cmpb	$32, %al	#, D.4212
	je	.L32	#,
	.loc 1 111 0 is_stmt 1
	jmp	.L33	#
.L41:
	.loc 1 113 0
	movl	-48(%rbp), %eax	# i, tmp232
	movslq	%eax, %rdx	# tmp232, D.4210
	movq	-56(%rbp), %rax	# inbuff, tmp233
	addq	%rdx, %rax	# D.4210, D.4211
	movzbl	(%rax), %eax	# *_118, D.4212
	movsbl	%al, %eax	# D.4212, D.4217
	cmpl	$81, %eax	#, D.4217
	je	.L35	#,
	cmpl	$81, %eax	#, D.4217
	jg	.L36	#,
	cmpl	$45, %eax	#, D.4217
	je	.L48	#,
	cmpl	$75, %eax	#, D.4217
	je	.L38	#,
	jmp	.L34	#
.L36:
	cmpl	$107, %eax	#, D.4217
	je	.L39	#,
	cmpl	$113, %eax	#, D.4217
	je	.L40	#,
	jmp	.L34	#
.L38:
	.loc 1 118 0
	movl	$0, moved+132(%rip)	#, moved
	movl	moved+132(%rip), %eax	# moved, D.4217
	movl	%eax, moved+120(%rip)	# D.4217, moved
	.loc 1 119 0
	jmp	.L34	#
.L35:
	.loc 1 121 0
	movl	$0, moved+104(%rip)	#, moved
	movl	moved+104(%rip), %eax	# moved, D.4217
	movl	%eax, moved+120(%rip)	# D.4217, moved
	.loc 1 122 0
	jmp	.L34	#
.L39:
	.loc 1 124 0
	movl	$0, moved+468(%rip)	#, moved
	movl	moved+468(%rip), %eax	# moved, D.4217
	movl	%eax, moved+456(%rip)	# D.4217, moved
	.loc 1 125 0
	jmp	.L34	#
.L40:
	.loc 1 127 0
	movl	$0, moved+440(%rip)	#, moved
	movl	moved+440(%rip), %eax	# moved, D.4217
	movl	%eax, moved+456(%rip)	# D.4217, moved
	.loc 1 128 0
	jmp	.L34	#
.L48:
	.loc 1 116 0
	nop
.L34:
	.loc 1 130 0
	addl	$1, -48(%rbp)	#, i
.L33:
	.loc 1 111 0 discriminator 1
	movl	-48(%rbp), %eax	# i, tmp234
	movslq	%eax, %rdx	# tmp234, D.4210
	movq	-56(%rbp), %rax	# inbuff, tmp235
	addq	%rdx, %rax	# D.4210, D.4211
	movzbl	(%rax), %eax	# *_115, D.4212
	cmpb	$32, %al	#, D.4212
	jne	.L41	#,
	.loc 1 132 0
	subl	$1, -48(%rbp)	#, i
	jmp	.L8	#
.L30:
	.loc 1 135 0
	cmpl	$3, -28(%rbp)	#, stage
	jne	.L8	#,
	.loc 1 138 0
	jmp	.L42	#
.L43:
	.loc 1 138 0 is_stmt 0 discriminator 2
	addl	$1, -48(%rbp)	#, i
.L42:
	.loc 1 138 0 discriminator 1
	movl	-48(%rbp), %eax	# i, tmp236
	movslq	%eax, %rdx	# tmp236, D.4210
	movq	-56(%rbp), %rax	# inbuff, tmp237
	addq	%rdx, %rax	# D.4210, D.4211
	movzbl	(%rax), %eax	# *_128, D.4212
	cmpb	$32, %al	#, D.4212
	je	.L43	#,
	.loc 1 140 0 is_stmt 1
	movl	-48(%rbp), %eax	# i, tmp238
	movslq	%eax, %rdx	# tmp238, D.4210
	movq	-56(%rbp), %rax	# inbuff, tmp239
	addq	%rdx, %rax	# D.4210, D.4211
	movzbl	(%rax), %eax	# *_132, D.4212
	cmpb	$45, %al	#, D.4212
	jne	.L44	#,
	.loc 1 142 0
	movl	$0, ep_square(%rip)	#, ep_square
	jmp	.L8	#
.L44:
	.loc 1 146 0
	movl	-48(%rbp), %eax	# i, i.4
	leal	1(%rax), %edx	#, tmp240
	movl	%edx, -48(%rbp)	# tmp240, i
	movslq	%eax, %rdx	# i.4, D.4210
	movq	-56(%rbp), %rax	# inbuff, tmp241
	addq	%rdx, %rax	# D.4210, D.4211
	movzbl	(%rax), %eax	# *_137, D.4212
	movsbl	%al, %eax	# D.4212, tmp242
	movl	%eax, -16(%rbp)	# tmp242, ep_file
	.loc 1 147 0
	movl	-48(%rbp), %eax	# i, i.5
	leal	1(%rax), %edx	#, tmp243
	movl	%edx, -48(%rbp)	# tmp243, i
	movslq	%eax, %rdx	# i.5, D.4210
	movq	-56(%rbp), %rax	# inbuff, tmp244
	addq	%rdx, %rax	# D.4210, D.4211
	movzbl	(%rax), %eax	# *_143, D.4212
	movsbl	%al, %eax	# D.4212, tmp245
	movl	%eax, -12(%rbp)	# tmp245, ep_rank
	.loc 1 149 0
	movl	-24(%rbp), %eax	# converterf, tmp250
	movl	-16(%rbp), %edx	# ep_file, tmp251
	subl	%eax, %edx	# tmp250, tmp249
	movl	%edx, %eax	# tmp249, tmp249
	movl	%eax, -8(%rbp)	# tmp249, norm_file
	.loc 1 150 0
	movl	-20(%rbp), %eax	# converterr, tmp256
	movl	-12(%rbp), %edx	# ep_rank, tmp257
	subl	%eax, %edx	# tmp256, tmp255
	movl	%edx, %eax	# tmp255, tmp255
	movl	%eax, -4(%rbp)	# tmp255, norm_rank
	.loc 1 152 0
	movl	-4(%rbp), %edx	# norm_rank, tmp258
	movl	%edx, %eax	# tmp258, tmp259
	addl	%eax, %eax	# tmp259
	addl	%edx, %eax	# tmp258, tmp259
	sall	$2, %eax	#, tmp260
	leal	26(%rax), %edx	#, D.4217
	movl	-8(%rbp), %eax	# norm_file, tmp261
	addl	%edx, %eax	# D.4217, ep_square.6
	movl	%eax, ep_square(%rip)	# ep_square.6, ep_square
.L8:
	.loc 1 169 0
	addl	$1, -48(%rbp)	#, i
.L4:
	.loc 1 49 0 discriminator 1
	movl	-48(%rbp), %eax	# i, tmp262
	movslq	%eax, %rdx	# tmp262, D.4210
	movq	-56(%rbp), %rax	# inbuff, tmp263
	addq	%rdx, %rax	# D.4210, D.4211
	movzbl	(%rax), %eax	# *_32, D.4212
	cmpb	$10, %al	#, D.4212
	je	.L46	#,
	.loc 1 49 0 is_stmt 0 discriminator 2
	movl	-48(%rbp), %eax	# i, tmp264
	movslq	%eax, %rdx	# tmp264, D.4210
	movq	-56(%rbp), %rax	# inbuff, tmp265
	addq	%rdx, %rax	# D.4210, D.4211
	movzbl	(%rax), %eax	# *_35, D.4212
	testb	%al, %al	# D.4212
	jne	.L47	#,
.L46:
	.loc 1 172 0 is_stmt 1
	call	reset_piece_square	#
	.loc 1 173 0
	call	initialize_hash	#
	.loc 1 175 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	setup_epd_line, .-setup_epd_line
	.section	.rodata
.LC0:
	.string	"bm"
.LC1:
	.string	"am"
	.align 8
.LC2:
	.string	"No best-move or avoid-move found!"
	.text
	.globl	check_solution
	.type	check_solution, @function
check_solution:
.LFB3:
	.loc 1 178 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$304, %rsp	#,
	movq	%rdi, -280(%rbp)	# inbuff, inbuff
	.loc 1 178 0
	movq	%fs:40, %rax	#, tmp76
	movq	%rax, -8(%rbp)	# tmp76, D.4222
	xorl	%eax, %eax	# tmp76
	.loc 1 181 0
	leaq	-272(%rbp), %rax	#, tmp65
	movq	16(%rbp), %rdx	# cmove, tmp66
	movq	%rdx, (%rsp)	# tmp66,
	movq	24(%rbp), %rdx	# cmove, tmp67
	movq	%rdx, 8(%rsp)	# tmp67,
	movq	32(%rbp), %rdx	# cmove, tmp68
	movq	%rdx, 16(%rsp)	# tmp68,
	movq	%rax, %rdi	# tmp65,
	call	comp_to_san	#
	.loc 1 186 0
	movq	-280(%rbp), %rax	# inbuff, tmp69
	movl	$.LC0, %esi	#,
	movq	%rax, %rdi	# tmp69,
	call	strstr	#
	testq	%rax, %rax	# D.4221
	je	.L50	#,
	.loc 1 188 0
	leaq	-272(%rbp), %rdx	#, tmp70
	movq	-280(%rbp), %rax	# inbuff, tmp71
	movq	%rdx, %rsi	# tmp70,
	movq	%rax, %rdi	# tmp71,
	call	strstr	#
	testq	%rax, %rax	# D.4221
	je	.L51	#,
	.loc 1 189 0
	movl	$1, %eax	#, D.4220
	jmp	.L55	#
.L51:
	.loc 1 191 0
	movl	$0, %eax	#, D.4220
	jmp	.L55	#
.L50:
	.loc 1 193 0
	movq	-280(%rbp), %rax	# inbuff, tmp72
	movl	$.LC1, %esi	#,
	movq	%rax, %rdi	# tmp72,
	call	strstr	#
	testq	%rax, %rax	# D.4221
	je	.L53	#,
	.loc 1 195 0
	leaq	-272(%rbp), %rdx	#, tmp73
	movq	-280(%rbp), %rax	# inbuff, tmp74
	movq	%rdx, %rsi	# tmp73,
	movq	%rax, %rdi	# tmp74,
	call	strstr	#
	testq	%rax, %rax	# D.4221
	je	.L54	#,
	.loc 1 196 0
	movl	$0, %eax	#, D.4220
	jmp	.L55	#
.L54:
	.loc 1 198 0
	movl	$1, %eax	#, D.4220
	jmp	.L55	#
.L53:
	.loc 1 201 0
	movl	$.LC2, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 203 0
	movl	$0, %eax	#, D.4220
.L55:
	.loc 1 204 0
	movq	-8(%rbp), %rcx	# D.4222, tmp77
	xorq	%fs:40, %rcx	#, tmp77
	je	.L56	#,
	call	__stack_chk_fail	#
.L56:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	check_solution, .-check_solution
	.section	.rodata
.LC3:
	.string	"\nName of EPD testsuite: "
.LC4:
	.string	"\nTime per move (s): "
.LC5:
	.string	"r"
.LC7:
	.string	"\nNodes: %i (%0.2f%% qnodes)\n"
	.align 8
.LC9:
	.string	"ECacheProbes : %u   ECacheHits : %u   HitRate : %f%%\n"
	.align 8
.LC10:
	.string	"TTStores : %u TTProbes : %u   TTHits : %u   HitRate : %f%%\n"
	.align 8
.LC11:
	.string	"NTries : %u  NCuts : %u  CutRate : %f%%  TExt: %u\n"
	.align 8
.LC12:
	.string	"Check extensions: %u  Razor drops : %u  Razor Material : %u\n"
.LC13:
	.string	"Move ordering : %f%%\n"
	.align 8
.LC14:
	.string	"Material score: %d  Eval : %d  MaxPosDiff: %d\n"
.LC15:
	.string	"Solution found."
.LC16:
	.string	"Solution not found."
.LC17:
	.string	"Solved: %d/%d\n"
	.text
	.globl	run_epd_testsuite
	.type	run_epd_testsuite, @function
run_epd_testsuite:
.LFB4:
	.loc 1 207 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$8216, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 207 0
	movq	%fs:40, %rax	#, tmp185
	movq	%rax, -24(%rbp)	# tmp185, D.4235
	xorl	%eax, %eax	# tmp185
	.loc 1 217 0
	movl	$0, -8180(%rbp)	#, tested
	.loc 1 218 0
	movl	$0, -8176(%rbp)	#, found
	.loc 1 220 0
	movl	$.LC3, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 221 0
	movq	stdin(%rip), %rdx	# stdin, stdin.7
	leaq	-4128(%rbp), %rax	#, tmp125
	movl	$256, %esi	#,
	movq	%rax, %rdi	# tmp125,
	call	rinput	#
	.loc 1 222 0
	movl	$.LC4, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 223 0
	movq	stdin(%rip), %rdx	# stdin, stdin.8
	leaq	-8128(%rbp), %rax	#, tmp126
	movl	$256, %esi	#,
	movq	%rax, %rdi	# tmp126,
	call	rinput	#
	.loc 1 224 0
	leaq	-8128(%rbp), %rax	#, tmp127
	movq	%rax, %rdi	# tmp127,
	call	atol	#
	movl	%eax, -8172(%rbp)	# D.4229, thinktime
	.loc 1 225 0
	movl	$10, %edi	#,
	call	putchar	#
	.loc 1 227 0
	movl	-8172(%rbp), %eax	# thinktime, tmp129
	imull	$100, %eax, %eax	#, tmp129, tmp128
	movl	%eax, -8172(%rbp)	# tmp128, thinktime
	.loc 1 229 0
	leaq	-4128(%rbp), %rax	#, tmp130
	movl	$.LC5, %esi	#,
	movq	%rax, %rdi	# tmp130,
	call	fopen	#
	movq	%rax, -8168(%rbp)	# tmp131, testsuite
	.loc 1 231 0
	jmp	.L58	#
.L80:
	.loc 1 233 0
	addl	$1, -8180(%rbp)	#, tested
	.loc 1 235 0
	leaq	-8128(%rbp), %rax	#, tmp132
	movq	%rax, %rdi	# tmp132,
	call	setup_epd_line	#
	.loc 1 237 0
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.9
	testl	%eax, %eax	# white_to_move.9
	sete	%al	#, D.4231
	movzbl	%al, %eax	# D.4231, root_to_move.10
	movl	%eax, root_to_move(%rip)	# root_to_move.10, root_to_move
	.loc 1 239 0
	call	clear_tt	#
	.loc 1 240 0
	call	initialize_hash	#
	.loc 1 242 0
	movq	stdout(%rip), %rax	# stdout, stdout.11
	movl	$1, %esi	#,
	movq	%rax, %rdi	# stdout.11,
	call	display_board	#
	.loc 1 244 0
	movl	$0, forcedwin(%rip)	#, forcedwin
	.loc 1 246 0
	call	interrupt	#
	testl	%eax, %eax	# D.4232
	je	.L59	#,
	.loc 1 246 0 is_stmt 0 discriminator 1
	movq	stdin(%rip), %rdx	# stdin, stdin.12
	leaq	-6128(%rbp), %rax	#, tmp133
	movl	$256, %esi	#,
	movq	%rax, %rdi	# tmp133,
	call	rinput	#
.L59:
	.loc 1 248 0 is_stmt 1
	movl	-8172(%rbp), %eax	# thinktime, tmp134
	movl	%eax, fixed_time(%rip)	# tmp134, fixed_time
	.loc 1 250 0
	leaq	-8160(%rbp), %rax	#, tmp135
	movq	%rax, %rdi	# tmp135,
	call	think	#
	.loc 1 254 0
	movl	qnodes(%rip), %eax	# qnodes, qnodes.13
	cvtsi2ss	%eax, %xmm0	# qnodes.13, D.4233
	movl	nodes(%rip), %eax	# nodes, nodes.14
	cvtsi2ss	%eax, %xmm1	# nodes.14, D.4233
	divss	%xmm1, %xmm0	# D.4233, D.4233
	movss	.LC6(%rip), %xmm1	#, tmp136
	mulss	%xmm1, %xmm0	# tmp136, D.4233
	.loc 1 253 0
	unpcklps	%xmm0, %xmm0	# D.4233, D.4233
	cvtps2pd	%xmm0, %xmm0	# D.4233, D.4234
	movl	nodes(%rip), %eax	# nodes, nodes.15
	movl	%eax, %esi	# nodes.15,
	movl	$.LC7, %edi	#,
	movl	$1, %eax	#,
	call	printf	#
	.loc 1 258 0
	movl	ECacheHits(%rip), %eax	# ECacheHits, ECacheHits.16
	movl	%eax, %eax	# ECacheHits.16, tmp137
	testq	%rax, %rax	# tmp137
	js	.L60	#,
	cvtsi2ssq	%rax, %xmm0	# tmp137, D.4233
	jmp	.L61	#
.L60:
	movq	%rax, %rdx	# tmp137, tmp139
	shrq	%rdx	# tmp139
	andl	$1, %eax	#, tmp140
	orq	%rax, %rdx	# tmp140, tmp139
	cvtsi2ssq	%rdx, %xmm0	# tmp139, tmp138
	addss	%xmm0, %xmm0	# tmp138, D.4233
.L61:
	movl	ECacheProbes(%rip), %eax	# ECacheProbes, ECacheProbes.17
	movl	%eax, %eax	# ECacheProbes.17, tmp141
	testq	%rax, %rax	# tmp141
	js	.L62	#,
	cvtsi2ssq	%rax, %xmm1	# tmp141, D.4233
	jmp	.L63	#
.L62:
	movq	%rax, %rdx	# tmp141, tmp143
	shrq	%rdx	# tmp143
	andl	$1, %eax	#, tmp144
	orq	%rax, %rdx	# tmp144, tmp143
	cvtsi2ssq	%rdx, %xmm1	# tmp143, tmp142
	addss	%xmm1, %xmm1	# tmp142, D.4233
.L63:
	movss	.LC8(%rip), %xmm2	#, tmp145
	addss	%xmm2, %xmm1	# tmp145, D.4233
	divss	%xmm1, %xmm0	# D.4233, D.4233
	movss	.LC6(%rip), %xmm1	#, tmp146
	mulss	%xmm1, %xmm0	# tmp146, D.4233
	.loc 1 256 0
	unpcklps	%xmm0, %xmm0	# D.4233, D.4233
	cvtps2pd	%xmm0, %xmm0	# D.4233, D.4234
	movl	ECacheHits(%rip), %edx	# ECacheHits, ECacheHits.18
	movl	ECacheProbes(%rip), %eax	# ECacheProbes, ECacheProbes.19
	movl	%eax, %esi	# ECacheProbes.19,
	movl	$.LC9, %edi	#,
	movl	$1, %eax	#,
	call	printf	#
	.loc 1 262 0
	movl	TTHits(%rip), %eax	# TTHits, TTHits.20
	movl	%eax, %eax	# TTHits.20, tmp147
	testq	%rax, %rax	# tmp147
	js	.L64	#,
	cvtsi2ssq	%rax, %xmm0	# tmp147, D.4233
	jmp	.L65	#
.L64:
	movq	%rax, %rdx	# tmp147, tmp149
	shrq	%rdx	# tmp149
	andl	$1, %eax	#, tmp150
	orq	%rax, %rdx	# tmp150, tmp149
	cvtsi2ssq	%rdx, %xmm0	# tmp149, tmp148
	addss	%xmm0, %xmm0	# tmp148, D.4233
.L65:
	movl	TTProbes(%rip), %eax	# TTProbes, TTProbes.21
	movl	%eax, %eax	# TTProbes.21, tmp151
	testq	%rax, %rax	# tmp151
	js	.L66	#,
	cvtsi2ssq	%rax, %xmm1	# tmp151, D.4233
	jmp	.L67	#
.L66:
	movq	%rax, %rdx	# tmp151, tmp153
	shrq	%rdx	# tmp153
	andl	$1, %eax	#, tmp154
	orq	%rax, %rdx	# tmp154, tmp153
	cvtsi2ssq	%rdx, %xmm1	# tmp153, tmp152
	addss	%xmm1, %xmm1	# tmp152, D.4233
.L67:
	movss	.LC8(%rip), %xmm2	#, tmp155
	addss	%xmm2, %xmm1	# tmp155, D.4233
	divss	%xmm1, %xmm0	# D.4233, D.4233
	movss	.LC6(%rip), %xmm1	#, tmp156
	mulss	%xmm1, %xmm0	# tmp156, D.4233
	.loc 1 260 0
	unpcklps	%xmm0, %xmm0	# D.4233, D.4233
	cvtps2pd	%xmm0, %xmm0	# D.4233, D.4234
	movl	TTHits(%rip), %ecx	# TTHits, TTHits.22
	movl	TTProbes(%rip), %edx	# TTProbes, TTProbes.23
	movl	TTStores(%rip), %eax	# TTStores, TTStores.24
	movl	%eax, %esi	# TTStores.24,
	movl	$.LC10, %edi	#,
	movl	$1, %eax	#,
	call	printf	#
	.loc 1 264 0
	movl	TExt(%rip), %ecx	# TExt, TExt.25
	.loc 1 265 0
	movl	NCuts(%rip), %eax	# NCuts, NCuts.26
	movl	%eax, %eax	# NCuts.26, tmp157
	testq	%rax, %rax	# tmp157
	js	.L68	#,
	cvtsi2ssq	%rax, %xmm0	# tmp157, D.4233
	jmp	.L69	#
.L68:
	movq	%rax, %rdx	# tmp157, tmp159
	shrq	%rdx	# tmp159
	andl	$1, %eax	#, tmp160
	orq	%rax, %rdx	# tmp160, tmp159
	cvtsi2ssq	%rdx, %xmm0	# tmp159, tmp158
	addss	%xmm0, %xmm0	# tmp158, D.4233
.L69:
	movss	.LC6(%rip), %xmm1	#, tmp161
	mulss	%xmm0, %xmm1	# D.4233, D.4233
	movl	NTries(%rip), %eax	# NTries, NTries.27
	movl	%eax, %eax	# NTries.27, tmp162
	testq	%rax, %rax	# tmp162
	js	.L70	#,
	cvtsi2ssq	%rax, %xmm0	# tmp162, D.4233
	jmp	.L71	#
.L70:
	movq	%rax, %rdx	# tmp162, tmp164
	shrq	%rdx	# tmp164
	andl	$1, %eax	#, tmp165
	orq	%rax, %rdx	# tmp165, tmp164
	cvtsi2ssq	%rdx, %xmm0	# tmp164, tmp163
	addss	%xmm0, %xmm0	# tmp163, D.4233
.L71:
	movss	.LC8(%rip), %xmm2	#, tmp166
	addss	%xmm2, %xmm0	# tmp166, D.4233
	divss	%xmm0, %xmm1	# D.4233, D.4233
	movaps	%xmm1, %xmm0	# D.4233, D.4233
	.loc 1 264 0
	unpcklps	%xmm0, %xmm0	# D.4233, D.4233
	cvtps2pd	%xmm0, %xmm0	# D.4233, D.4234
	movl	NCuts(%rip), %edx	# NCuts, NCuts.28
	movl	NTries(%rip), %eax	# NTries, NTries.29
	movl	%eax, %esi	# NTries.29,
	movl	$.LC11, %edi	#,
	movl	$1, %eax	#,
	call	printf	#
	.loc 1 267 0
	movl	razor_material(%rip), %ecx	# razor_material, razor_material.30
	movl	razor_drop(%rip), %edx	# razor_drop, razor_drop.31
	movl	ext_check(%rip), %eax	# ext_check, ext_check.32
	movl	%eax, %esi	# ext_check.32,
	movl	$.LC12, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 269 0
	movl	FHF(%rip), %eax	# FHF, FHF.33
	movl	%eax, %eax	# FHF.33, tmp167
	testq	%rax, %rax	# tmp167
	js	.L72	#,
	cvtsi2ssq	%rax, %xmm0	# tmp167, D.4233
	jmp	.L73	#
.L72:
	movq	%rax, %rdx	# tmp167, tmp169
	shrq	%rdx	# tmp169
	andl	$1, %eax	#, tmp170
	orq	%rax, %rdx	# tmp170, tmp169
	cvtsi2ssq	%rdx, %xmm0	# tmp169, tmp168
	addss	%xmm0, %xmm0	# tmp168, D.4233
.L73:
	movss	.LC6(%rip), %xmm1	#, tmp171
	mulss	%xmm0, %xmm1	# D.4233, D.4233
	movl	FH(%rip), %eax	# FH, FH.34
	movl	%eax, %eax	# FH.34, tmp172
	testq	%rax, %rax	# tmp172
	js	.L74	#,
	cvtsi2ssq	%rax, %xmm0	# tmp172, D.4233
	jmp	.L75	#
.L74:
	movq	%rax, %rdx	# tmp172, tmp174
	shrq	%rdx	# tmp174
	andl	$1, %eax	#, tmp175
	orq	%rax, %rdx	# tmp175, tmp174
	cvtsi2ssq	%rdx, %xmm0	# tmp174, tmp173
	addss	%xmm0, %xmm0	# tmp173, D.4233
.L75:
	divss	%xmm0, %xmm1	# D.4233, D.4233
	movaps	%xmm1, %xmm0	# D.4233, D.4233
	movss	.LC8(%rip), %xmm1	#, tmp176
	addss	%xmm1, %xmm0	# tmp176, D.4233
	unpcklps	%xmm0, %xmm0	# D.4233, D.4233
	cvtps2pd	%xmm0, %xmm0	# D.4233, D.4234
	movl	$.LC13, %edi	#,
	movl	$1, %eax	#,
	call	printf	#
	.loc 1 271 0
	movl	maxposdiff(%rip), %ebx	# maxposdiff, maxposdiff.35
	movl	$1000000, %esi	#,
	movl	$-1000000, %edi	#,
	call	eval	#
	movl	%eax, %edx	#, D.4232
	movl	Material(%rip), %eax	# Material, Material.36
	movl	%ebx, %ecx	# maxposdiff.35,
	movl	%eax, %esi	# Material.36,
	movl	$.LC14, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 272 0
	movl	$10, %edi	#,
	call	putchar	#
	.loc 1 274 0
	movl	forcedwin(%rip), %eax	# forcedwin, forcedwin.37
	testl	%eax, %eax	# forcedwin.37
	jne	.L76	#,
	.loc 1 276 0
	leaq	-8128(%rbp), %rax	#, tmp177
	movq	-8160(%rbp), %rdx	# comp_move, tmp178
	movq	%rdx, (%rsp)	# tmp178,
	movq	-8152(%rbp), %rdx	# comp_move, tmp179
	movq	%rdx, 8(%rsp)	# tmp179,
	movq	-8144(%rbp), %rdx	# comp_move, tmp180
	movq	%rdx, 16(%rsp)	# tmp180,
	movq	%rax, %rdi	# tmp177,
	call	check_solution	#
	testl	%eax, %eax	# D.4232
	je	.L77	#,
	.loc 1 278 0
	addl	$1, -8176(%rbp)	#, found
	.loc 1 279 0
	movl	$.LC15, %edi	#,
	call	puts	#
	jmp	.L79	#
.L77:
	.loc 1 283 0
	movl	$.LC16, %edi	#,
	call	puts	#
	jmp	.L79	#
.L76:
	.loc 1 288 0
	addl	$1, -8176(%rbp)	#, found
.L79:
	.loc 1 291 0
	movl	-8180(%rbp), %edx	# tested, tmp181
	movl	-8176(%rbp), %eax	# found, tmp182
	movl	%eax, %esi	# tmp182,
	movl	$.LC17, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
.L58:
	.loc 1 231 0 discriminator 1
	movq	-8168(%rbp), %rdx	# testsuite, tmp183
	leaq	-8128(%rbp), %rax	#, tmp184
	movl	$2000, %esi	#,
	movq	%rax, %rdi	# tmp184,
	call	fgets	#
	testq	%rax, %rax	# D.4230
	jne	.L80	#,
	.loc 1 295 0
	movl	$10, %edi	#,
	call	putchar	#
	.loc 1 296 0
	movq	-24(%rbp), %rax	# D.4235, tmp186
	xorq	%fs:40, %rax	#, tmp186
	je	.L81	#,
	call	__stack_chk_fail	#
.L81:
	addq	$8216, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	run_epd_testsuite, .-run_epd_testsuite
	.section	.rodata
.LC18:
	.string	"EPD: %s\n"
.LC19:
	.string	"Searching to %d ply\n"
	.text
	.globl	run_autotest
	.type	run_autotest, @function
run_autotest:
.LFB5:
	.loc 1 299 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$352, %rsp	#,
	movq	%rdi, -344(%rbp)	# testset, testset
	.loc 1 299 0
	movq	%fs:40, %rax	#, tmp81
	movq	%rax, -8(%rbp)	# tmp81, D.4252
	xorl	%eax, %eax	# tmp81
	.loc 1 307 0
	movq	-344(%rbp), %rax	# testset, tmp65
	movl	$.LC5, %esi	#,
	movq	%rax, %rdi	# tmp65,
	call	fopen	#
	movq	%rax, -328(%rbp)	# tmp66, testsuite
	.loc 1 309 0
	cmpq	$0, -328(%rbp)	#, testsuite
	jne	.L83	#,
	.loc 1 309 0 is_stmt 0 discriminator 1
	movl	$1, %edi	#,
	call	exit	#
.L83:
	.loc 1 311 0 is_stmt 1
	call	rtime	#
	movq	%rax, -320(%rbp)	# tmp67, start
	.loc 1 313 0
	jmp	.L84	#
.L86:
	.loc 1 315 0
	leaq	-272(%rbp), %rax	#, tmp68
	movq	%rax, %rdi	# tmp68,
	call	setup_epd_line	#
	.loc 1 316 0
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.38
	testl	%eax, %eax	# white_to_move.38
	sete	%al	#, D.4251
	movzbl	%al, %eax	# D.4251, root_to_move.39
	movl	%eax, root_to_move(%rip)	# root_to_move.39, root_to_move
	.loc 1 318 0
	call	clear_tt	#
	.loc 1 319 0
	call	initialize_hash	#
	.loc 1 321 0
	movl	$10, %edi	#,
	call	putchar	#
	.loc 1 322 0
	movq	stdout(%rip), %rax	# stdout, stdout.40
	movl	$1, %esi	#,
	movq	%rax, %rdi	# stdout.40,
	call	display_board	#
	.loc 1 324 0
	leaq	-272(%rbp), %rax	#, tmp69
	movq	%rax, %rsi	# tmp69,
	movl	$.LC18, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 326 0
	movq	-328(%rbp), %rdx	# testsuite, tmp70
	leaq	-272(%rbp), %rax	#, tmp71
	movl	$256, %esi	#,
	movq	%rax, %rdi	# tmp71,
	call	fgets	#
	testq	%rax, %rax	# D.4250
	jne	.L85	#,
	.loc 1 326 0 is_stmt 0 discriminator 1
	movl	$1, %edi	#,
	call	exit	#
.L85:
	.loc 1 327 0 is_stmt 1
	leaq	-272(%rbp), %rax	#, tmp72
	movq	%rax, %rdi	# tmp72,
	call	atoi	#
	movl	%eax, -332(%rbp)	# tmp73, searchdepth
	.loc 1 329 0
	movl	-332(%rbp), %eax	# searchdepth, tmp74
	movl	%eax, %esi	# tmp74,
	movl	$.LC19, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 330 0
	movl	-332(%rbp), %eax	# searchdepth, tmp75
	movl	%eax, maxdepth(%rip)	# tmp75, maxdepth
	.loc 1 332 0
	movl	$1000000, fixed_time(%rip)	#, fixed_time
	.loc 1 333 0
	leaq	-304(%rbp), %rax	#, tmp76
	movq	%rax, %rdi	# tmp76,
	call	think	#
.L84:
	.loc 1 313 0 discriminator 1
	movq	-328(%rbp), %rdx	# testsuite, tmp77
	leaq	-272(%rbp), %rax	#, tmp78
	movl	$256, %esi	#,
	movq	%rax, %rdi	# tmp78,
	call	fgets	#
	testq	%rax, %rax	# D.4250
	jne	.L86	#,
	.loc 1 336 0
	call	rtime	#
	movq	%rax, -312(%rbp)	# tmp79, end
	.loc 1 340 0
	movq	-328(%rbp), %rax	# testsuite, tmp80
	movq	%rax, %rdi	# tmp80,
	call	fclose	#
	.loc 1 341 0
	movl	$0, %edi	#,
	call	exit	#
	.cfi_endproc
.LFE5:
	.size	run_autotest, .-run_autotest
	.data
	.align 32
	.type	rankoffsets.3883, @object
	.size	rankoffsets.3883, 32
rankoffsets.3883:
	.long	110
	.long	98
	.long	86
	.long	74
	.long	62
	.long	50
	.long	38
	.long	26
	.section	.rodata
	.align 4
.LC6:
	.long	1120403456
	.align 4
.LC8:
	.long	1065353216
	.text
.Letext0:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 3 "sjeng.h"
	.file 4 "/usr/include/ctype.h"
	.file 5 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 6 "/usr/include/time.h"
	.file 7 "/usr/include/stdio.h"
	.file 8 "/usr/include/libio.h"
	.file 9 "extvars.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x7a6
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF129
	.byte	0x1
	.long	.LASF130
	.long	.LASF131
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
	.byte	0x1
	.byte	0x8
	.long	.LASF2
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.long	.LASF3
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.long	.LASF4
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.long	.LASF5
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x6
	.long	.LASF9
	.byte	0x2
	.byte	0x8c
	.long	0x73
	.uleb128 0x6
	.long	.LASF10
	.byte	0x2
	.byte	0x8d
	.long	0x73
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.long	.LASF11
	.uleb128 0x6
	.long	.LASF12
	.byte	0x2
	.byte	0x94
	.long	0x73
	.uleb128 0x7
	.byte	0x8
	.uleb128 0x8
	.byte	0x8
	.long	0xaa
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.long	.LASF13
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.byte	0x30
	.long	0x10d
	.uleb128 0x3
	.long	.LASF14
	.sleb128 256
	.uleb128 0x3
	.long	.LASF15
	.sleb128 512
	.uleb128 0x3
	.long	.LASF16
	.sleb128 1024
	.uleb128 0x3
	.long	.LASF17
	.sleb128 2048
	.uleb128 0x3
	.long	.LASF18
	.sleb128 4096
	.uleb128 0x3
	.long	.LASF19
	.sleb128 8192
	.uleb128 0x3
	.long	.LASF20
	.sleb128 16384
	.uleb128 0x3
	.long	.LASF21
	.sleb128 32768
	.uleb128 0x3
	.long	.LASF22
	.sleb128 1
	.uleb128 0x3
	.long	.LASF23
	.sleb128 2
	.uleb128 0x3
	.long	.LASF24
	.sleb128 4
	.uleb128 0x3
	.long	.LASF25
	.sleb128 8
	.byte	0
	.uleb128 0x6
	.long	.LASF26
	.byte	0x5
	.byte	0xd4
	.long	0x57
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.long	.LASF27
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.long	.LASF28
	.uleb128 0x6
	.long	.LASF29
	.byte	0x6
	.byte	0x4b
	.long	0x97
	.uleb128 0x6
	.long	.LASF30
	.byte	0x7
	.byte	0x30
	.long	0x13c
	.uleb128 0x9
	.long	.LASF60
	.byte	0xd8
	.byte	0x8
	.byte	0xf6
	.long	0x2bd
	.uleb128 0xa
	.long	.LASF31
	.byte	0x8
	.byte	0xf7
	.long	0x6c
	.byte	0
	.uleb128 0xa
	.long	.LASF32
	.byte	0x8
	.byte	0xfc
	.long	0xa4
	.byte	0x8
	.uleb128 0xa
	.long	.LASF33
	.byte	0x8
	.byte	0xfd
	.long	0xa4
	.byte	0x10
	.uleb128 0xa
	.long	.LASF34
	.byte	0x8
	.byte	0xfe
	.long	0xa4
	.byte	0x18
	.uleb128 0xa
	.long	.LASF35
	.byte	0x8
	.byte	0xff
	.long	0xa4
	.byte	0x20
	.uleb128 0xb
	.long	.LASF36
	.byte	0x8
	.value	0x100
	.long	0xa4
	.byte	0x28
	.uleb128 0xb
	.long	.LASF37
	.byte	0x8
	.value	0x101
	.long	0xa4
	.byte	0x30
	.uleb128 0xb
	.long	.LASF38
	.byte	0x8
	.value	0x102
	.long	0xa4
	.byte	0x38
	.uleb128 0xb
	.long	.LASF39
	.byte	0x8
	.value	0x103
	.long	0xa4
	.byte	0x40
	.uleb128 0xb
	.long	.LASF40
	.byte	0x8
	.value	0x105
	.long	0xa4
	.byte	0x48
	.uleb128 0xb
	.long	.LASF41
	.byte	0x8
	.value	0x106
	.long	0xa4
	.byte	0x50
	.uleb128 0xb
	.long	.LASF42
	.byte	0x8
	.value	0x107
	.long	0xa4
	.byte	0x58
	.uleb128 0xb
	.long	.LASF43
	.byte	0x8
	.value	0x109
	.long	0x2f5
	.byte	0x60
	.uleb128 0xb
	.long	.LASF44
	.byte	0x8
	.value	0x10b
	.long	0x2fb
	.byte	0x68
	.uleb128 0xb
	.long	.LASF45
	.byte	0x8
	.value	0x10d
	.long	0x6c
	.byte	0x70
	.uleb128 0xb
	.long	.LASF46
	.byte	0x8
	.value	0x111
	.long	0x6c
	.byte	0x74
	.uleb128 0xb
	.long	.LASF47
	.byte	0x8
	.value	0x113
	.long	0x7a
	.byte	0x78
	.uleb128 0xb
	.long	.LASF48
	.byte	0x8
	.value	0x117
	.long	0x49
	.byte	0x80
	.uleb128 0xb
	.long	.LASF49
	.byte	0x8
	.value	0x118
	.long	0x5e
	.byte	0x82
	.uleb128 0xb
	.long	.LASF50
	.byte	0x8
	.value	0x119
	.long	0x301
	.byte	0x83
	.uleb128 0xb
	.long	.LASF51
	.byte	0x8
	.value	0x11d
	.long	0x311
	.byte	0x88
	.uleb128 0xb
	.long	.LASF52
	.byte	0x8
	.value	0x126
	.long	0x85
	.byte	0x90
	.uleb128 0xb
	.long	.LASF53
	.byte	0x8
	.value	0x12f
	.long	0xa2
	.byte	0x98
	.uleb128 0xb
	.long	.LASF54
	.byte	0x8
	.value	0x130
	.long	0xa2
	.byte	0xa0
	.uleb128 0xb
	.long	.LASF55
	.byte	0x8
	.value	0x131
	.long	0xa2
	.byte	0xa8
	.uleb128 0xb
	.long	.LASF56
	.byte	0x8
	.value	0x132
	.long	0xa2
	.byte	0xb0
	.uleb128 0xb
	.long	.LASF57
	.byte	0x8
	.value	0x133
	.long	0x10d
	.byte	0xb8
	.uleb128 0xb
	.long	.LASF58
	.byte	0x8
	.value	0x135
	.long	0x6c
	.byte	0xc0
	.uleb128 0xb
	.long	.LASF59
	.byte	0x8
	.value	0x137
	.long	0x317
	.byte	0xc4
	.byte	0
	.uleb128 0xc
	.long	.LASF132
	.byte	0x8
	.byte	0x9b
	.uleb128 0x9
	.long	.LASF61
	.byte	0x18
	.byte	0x8
	.byte	0xa1
	.long	0x2f5
	.uleb128 0xa
	.long	.LASF62
	.byte	0x8
	.byte	0xa2
	.long	0x2f5
	.byte	0
	.uleb128 0xa
	.long	.LASF63
	.byte	0x8
	.byte	0xa3
	.long	0x2fb
	.byte	0x8
	.uleb128 0xa
	.long	.LASF64
	.byte	0x8
	.byte	0xa7
	.long	0x6c
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x2c4
	.uleb128 0x8
	.byte	0x8
	.long	0x13c
	.uleb128 0xd
	.long	0xaa
	.long	0x311
	.uleb128 0xe
	.long	0x90
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x2bd
	.uleb128 0xd
	.long	0xaa
	.long	0x327
	.uleb128 0xe
	.long	0x90
	.byte	0x13
	.byte	0
	.uleb128 0xf
	.byte	0x18
	.byte	0x3
	.byte	0x5f
	.long	0x377
	.uleb128 0xa
	.long	.LASF65
	.byte	0x3
	.byte	0x60
	.long	0x6c
	.byte	0
	.uleb128 0xa
	.long	.LASF66
	.byte	0x3
	.byte	0x61
	.long	0x6c
	.byte	0x4
	.uleb128 0xa
	.long	.LASF67
	.byte	0x3
	.byte	0x62
	.long	0x6c
	.byte	0x8
	.uleb128 0xa
	.long	.LASF68
	.byte	0x3
	.byte	0x63
	.long	0x6c
	.byte	0xc
	.uleb128 0xa
	.long	.LASF69
	.byte	0x3
	.byte	0x64
	.long	0x6c
	.byte	0x10
	.uleb128 0x10
	.string	"ep"
	.byte	0x3
	.byte	0x65
	.long	0x6c
	.byte	0x14
	.byte	0
	.uleb128 0x6
	.long	.LASF70
	.byte	0x3
	.byte	0x66
	.long	0x327
	.uleb128 0x6
	.long	.LASF71
	.byte	0x3
	.byte	0xa1
	.long	0x126
	.uleb128 0x11
	.long	.LASF85
	.byte	0x1
	.byte	0xe
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x473
	.uleb128 0x12
	.long	.LASF83
	.byte	0x1
	.byte	0xe
	.long	0xa4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x13
	.string	"i"
	.byte	0x1
	.byte	0x10
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x14
	.long	.LASF72
	.byte	0x1
	.byte	0x11
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x14
	.long	.LASF73
	.byte	0x1
	.byte	0x12
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x14
	.long	.LASF74
	.byte	0x1
	.byte	0x13
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x13
	.string	"j"
	.byte	0x1
	.byte	0x14
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.long	.LASF75
	.byte	0x1
	.byte	0x1d
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x14
	.long	.LASF76
	.byte	0x1
	.byte	0x1f
	.long	0x473
	.uleb128 0x9
	.byte	0x3
	.quad	rankoffsets.3883
	.uleb128 0x14
	.long	.LASF77
	.byte	0x1
	.byte	0x22
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x14
	.long	.LASF78
	.byte	0x1
	.byte	0x23
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x14
	.long	.LASF79
	.byte	0x1
	.byte	0x24
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x14
	.long	.LASF80
	.byte	0x1
	.byte	0x24
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x14
	.long	.LASF81
	.byte	0x1
	.byte	0x24
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x14
	.long	.LASF82
	.byte	0x1
	.byte	0x24
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xd
	.long	0x6c
	.long	0x483
	.uleb128 0xe
	.long	0x90
	.byte	0x7
	.byte	0
	.uleb128 0x15
	.long	.LASF133
	.byte	0x1
	.byte	0xb1
	.long	0x6c
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x4d1
	.uleb128 0x12
	.long	.LASF83
	.byte	0x1
	.byte	0xb1
	.long	0xa4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x12
	.long	.LASF84
	.byte	0x1
	.byte	0xb1
	.long	0x377
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.string	"san"
	.byte	0x1
	.byte	0xb3
	.long	0x4d1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.byte	0
	.uleb128 0xd
	.long	0xaa
	.long	0x4e1
	.uleb128 0xe
	.long	0x90
	.byte	0xff
	.byte	0
	.uleb128 0x11
	.long	.LASF86
	.byte	0x1
	.byte	0xce
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x583
	.uleb128 0x14
	.long	.LASF87
	.byte	0x1
	.byte	0xd0
	.long	0x583
	.uleb128 0x3
	.byte	0x91
	.sleb128 -8184
	.uleb128 0x14
	.long	.LASF88
	.byte	0x1
	.byte	0xd1
	.long	0x589
	.uleb128 0x3
	.byte	0x91
	.sleb128 -8144
	.uleb128 0x14
	.long	.LASF89
	.byte	0x1
	.byte	0xd2
	.long	0x59a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4144
	.uleb128 0x14
	.long	.LASF90
	.byte	0x1
	.byte	0xd3
	.long	0x589
	.uleb128 0x3
	.byte	0x91
	.sleb128 -6144
	.uleb128 0x16
	.string	"nps"
	.byte	0x1
	.byte	0xd4
	.long	0x6c
	.uleb128 0x14
	.long	.LASF91
	.byte	0x1
	.byte	0xd5
	.long	0x6c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -8188
	.uleb128 0x14
	.long	.LASF92
	.byte	0x1
	.byte	0xd6
	.long	0x377
	.uleb128 0x3
	.byte	0x91
	.sleb128 -8176
	.uleb128 0x14
	.long	.LASF93
	.byte	0x1
	.byte	0xd7
	.long	0x6c
	.uleb128 0x4
	.byte	0x91
	.sleb128 -8196
	.uleb128 0x14
	.long	.LASF94
	.byte	0x1
	.byte	0xd7
	.long	0x6c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -8192
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x131
	.uleb128 0xd
	.long	0xaa
	.long	0x59a
	.uleb128 0x17
	.long	0x90
	.value	0x7cf
	.byte	0
	.uleb128 0xd
	.long	0xaa
	.long	0x5ab
	.uleb128 0x17
	.long	0x90
	.value	0xfff
	.byte	0
	.uleb128 0x18
	.long	.LASF95
	.byte	0x1
	.value	0x12a
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x63a
	.uleb128 0x19
	.long	.LASF96
	.byte	0x1
	.value	0x12a
	.long	0xa4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -360
	.uleb128 0x1a
	.long	.LASF87
	.byte	0x1
	.value	0x12c
	.long	0x583
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x1a
	.long	.LASF88
	.byte	0x1
	.value	0x12d
	.long	0x4d1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x1a
	.long	.LASF97
	.byte	0x1
	.value	0x12e
	.long	0x6c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -348
	.uleb128 0x1a
	.long	.LASF98
	.byte	0x1
	.value	0x12f
	.long	0x382
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x1b
	.string	"end"
	.byte	0x1
	.value	0x12f
	.long	0x382
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x1a
	.long	.LASF92
	.byte	0x1
	.value	0x131
	.long	0x377
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.byte	0
	.uleb128 0x1c
	.long	.LASF99
	.byte	0x7
	.byte	0xa8
	.long	0x2fb
	.uleb128 0x1c
	.long	.LASF100
	.byte	0x7
	.byte	0xa9
	.long	0x2fb
	.uleb128 0xd
	.long	0x6c
	.long	0x660
	.uleb128 0xe
	.long	0x90
	.byte	0x8f
	.byte	0
	.uleb128 0x1c
	.long	.LASF101
	.byte	0x9
	.byte	0xc
	.long	0x650
	.uleb128 0x1c
	.long	.LASF102
	.byte	0x9
	.byte	0xc
	.long	0x650
	.uleb128 0x1c
	.long	.LASF103
	.byte	0x9
	.byte	0xc
	.long	0x6c
	.uleb128 0x1c
	.long	.LASF104
	.byte	0x9
	.byte	0xc
	.long	0x6c
	.uleb128 0x1c
	.long	.LASF105
	.byte	0x9
	.byte	0xc
	.long	0x6c
	.uleb128 0x1c
	.long	.LASF106
	.byte	0x9
	.byte	0xd
	.long	0x6c
	.uleb128 0x1c
	.long	.LASF107
	.byte	0x9
	.byte	0xd
	.long	0x6c
	.uleb128 0x1c
	.long	.LASF108
	.byte	0x9
	.byte	0xd
	.long	0x6c
	.uleb128 0x1c
	.long	.LASF109
	.byte	0x9
	.byte	0x10
	.long	0x6c
	.uleb128 0x1c
	.long	.LASF110
	.byte	0x9
	.byte	0x10
	.long	0x6c
	.uleb128 0x1c
	.long	.LASF111
	.byte	0x9
	.byte	0x17
	.long	0x6c
	.uleb128 0x1c
	.long	.LASF112
	.byte	0x9
	.byte	0x1e
	.long	0x6c
	.uleb128 0x1c
	.long	.LASF113
	.byte	0x9
	.byte	0x3a
	.long	0x50
	.uleb128 0x1c
	.long	.LASF114
	.byte	0x9
	.byte	0x3b
	.long	0x50
	.uleb128 0x1c
	.long	.LASF115
	.byte	0x9
	.byte	0x3d
	.long	0x50
	.uleb128 0x1c
	.long	.LASF116
	.byte	0x9
	.byte	0x3e
	.long	0x50
	.uleb128 0x1c
	.long	.LASF117
	.byte	0x9
	.byte	0x3f
	.long	0x50
	.uleb128 0x1c
	.long	.LASF118
	.byte	0x9
	.byte	0x45
	.long	0x6c
	.uleb128 0x1c
	.long	.LASF119
	.byte	0x9
	.byte	0x4a
	.long	0x6c
	.uleb128 0x1c
	.long	.LASF120
	.byte	0x9
	.byte	0x51
	.long	0x50
	.uleb128 0x1c
	.long	.LASF121
	.byte	0x9
	.byte	0x51
	.long	0x50
	.uleb128 0x1c
	.long	.LASF122
	.byte	0x9
	.byte	0x51
	.long	0x50
	.uleb128 0x1d
	.string	"FH"
	.byte	0x9
	.byte	0x57
	.long	0x50
	.uleb128 0x1d
	.string	"FHF"
	.byte	0x9
	.byte	0x57
	.long	0x50
	.uleb128 0x1c
	.long	.LASF123
	.byte	0x9
	.byte	0x58
	.long	0x50
	.uleb128 0x1c
	.long	.LASF124
	.byte	0x9
	.byte	0x59
	.long	0x50
	.uleb128 0x1c
	.long	.LASF125
	.byte	0x9
	.byte	0x59
	.long	0x50
	.uleb128 0x1c
	.long	.LASF126
	.byte	0x9
	.byte	0x65
	.long	0x6c
	.uleb128 0x1c
	.long	.LASF127
	.byte	0x9
	.byte	0x74
	.long	0x6c
	.uleb128 0x1c
	.long	.LASF128
	.byte	0x9
	.byte	0x7e
	.long	0x6c
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x16
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
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
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
.LASF110:
	.string	"qnodes"
.LASF75:
	.string	"stage"
.LASF50:
	.string	"_shortbuf"
.LASF65:
	.string	"from"
.LASF71:
	.string	"rtime_t"
.LASF132:
	.string	"_IO_lock_t"
.LASF81:
	.string	"norm_file"
.LASF39:
	.string	"_IO_buf_end"
.LASF109:
	.string	"nodes"
.LASF37:
	.string	"_IO_write_end"
.LASF4:
	.string	"unsigned int"
.LASF120:
	.string	"NTries"
.LASF31:
	.string	"_flags"
.LASF80:
	.string	"ep_rank"
.LASF43:
	.string	"_markers"
.LASF133:
	.string	"check_solution"
.LASF87:
	.string	"testsuite"
.LASF121:
	.string	"NCuts"
.LASF115:
	.string	"TTProbes"
.LASF130:
	.string	"epd.c"
.LASF94:
	.string	"found"
.LASF123:
	.string	"ext_check"
.LASF116:
	.string	"TTHits"
.LASF112:
	.string	"maxposdiff"
.LASF131:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/458.sjeng/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF64:
	.string	"_pos"
.LASF1:
	.string	"TRUE"
.LASF84:
	.string	"cmove"
.LASF100:
	.string	"stdout"
.LASF42:
	.string	"_IO_save_end"
.LASF79:
	.string	"ep_file"
.LASF89:
	.string	"testname"
.LASF28:
	.string	"long long unsigned int"
.LASF67:
	.string	"captured"
.LASF77:
	.string	"converterf"
.LASF41:
	.string	"_IO_backup_base"
.LASF118:
	.string	"book_ply"
.LASF52:
	.string	"_offset"
.LASF78:
	.string	"converterr"
.LASF15:
	.string	"_ISlower"
.LASF45:
	.string	"_fileno"
.LASF85:
	.string	"setup_epd_line"
.LASF70:
	.string	"move_s"
.LASF106:
	.string	"bking_loc"
.LASF26:
	.string	"size_t"
.LASF18:
	.string	"_ISxdigit"
.LASF105:
	.string	"wking_loc"
.LASF34:
	.string	"_IO_read_base"
.LASF111:
	.string	"maxdepth"
.LASF99:
	.string	"stdin"
.LASF62:
	.string	"_next"
.LASF122:
	.string	"TExt"
.LASF13:
	.string	"char"
.LASF58:
	.string	"_mode"
.LASF103:
	.string	"ep_square"
.LASF61:
	.string	"_IO_marker"
.LASF32:
	.string	"_IO_read_ptr"
.LASF119:
	.string	"Material"
.LASF83:
	.string	"inbuff"
.LASF124:
	.string	"razor_drop"
.LASF29:
	.string	"time_t"
.LASF35:
	.string	"_IO_write_base"
.LASF27:
	.string	"long long int"
.LASF96:
	.string	"testset"
.LASF40:
	.string	"_IO_save_base"
.LASF23:
	.string	"_IScntrl"
.LASF102:
	.string	"moved"
.LASF66:
	.string	"target"
.LASF17:
	.string	"_ISdigit"
.LASF73:
	.string	"rankoffset"
.LASF19:
	.string	"_ISspace"
.LASF90:
	.string	"tempbuff"
.LASF53:
	.string	"__pad1"
.LASF54:
	.string	"__pad2"
.LASF55:
	.string	"__pad3"
.LASF56:
	.string	"__pad4"
.LASF57:
	.string	"__pad5"
.LASF86:
	.string	"run_epd_testsuite"
.LASF128:
	.string	"root_to_move"
.LASF117:
	.string	"TTStores"
.LASF49:
	.string	"_vtable_offset"
.LASF93:
	.string	"tested"
.LASF68:
	.string	"promoted"
.LASF129:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF24:
	.string	"_ISpunct"
.LASF33:
	.string	"_IO_read_end"
.LASF125:
	.string	"razor_material"
.LASF20:
	.string	"_ISprint"
.LASF7:
	.string	"short int"
.LASF8:
	.string	"long int"
.LASF113:
	.string	"ECacheProbes"
.LASF76:
	.string	"rankoffsets"
.LASF107:
	.string	"white_castled"
.LASF0:
	.string	"FALSE"
.LASF127:
	.string	"fixed_time"
.LASF97:
	.string	"searchdepth"
.LASF91:
	.string	"thinktime"
.LASF21:
	.string	"_ISgraph"
.LASF98:
	.string	"start"
.LASF88:
	.string	"readbuff"
.LASF69:
	.string	"castled"
.LASF51:
	.string	"_lock"
.LASF126:
	.string	"forcedwin"
.LASF11:
	.string	"sizetype"
.LASF5:
	.string	"long unsigned int"
.LASF47:
	.string	"_old_offset"
.LASF60:
	.string	"_IO_FILE"
.LASF16:
	.string	"_ISalpha"
.LASF2:
	.string	"unsigned char"
.LASF72:
	.string	"rankp"
.LASF63:
	.string	"_sbuf"
.LASF36:
	.string	"_IO_write_ptr"
.LASF12:
	.string	"__time_t"
.LASF25:
	.string	"_ISalnum"
.LASF101:
	.string	"board"
.LASF95:
	.string	"run_autotest"
.LASF9:
	.string	"__off_t"
.LASF22:
	.string	"_ISblank"
.LASF6:
	.string	"signed char"
.LASF82:
	.string	"norm_rank"
.LASF3:
	.string	"short unsigned int"
.LASF114:
	.string	"ECacheHits"
.LASF92:
	.string	"comp_move"
.LASF108:
	.string	"black_castled"
.LASF104:
	.string	"white_to_move"
.LASF44:
	.string	"_chain"
.LASF14:
	.string	"_ISupper"
.LASF30:
	.string	"FILE"
.LASF46:
	.string	"_flags2"
.LASF48:
	.string	"_cur_column"
.LASF10:
	.string	"__off64_t"
.LASF59:
	.string	"_unused2"
.LASF38:
	.string	"_IO_buf_base"
.LASF74:
	.string	"fileoffset"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
