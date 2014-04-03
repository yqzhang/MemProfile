	.file	"mb_access.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 mb_access.c -mtune=generic -march=x86-64 -g
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
	.globl	mb_is_available
	.type	mb_is_available, @function
mb_is_available:
.LFB0:
	.file 1 "mb_access.c"
	.loc 1 25 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)	# mbAddr, mbAddr
	movl	%esi, -8(%rbp)	# currMbAddr, currMbAddr
	.loc 1 26 0
	cmpl	$0, -4(%rbp)	#, mbAddr
	js	.L2	#,
	.loc 1 26 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.0
	movl	72484(%rax), %eax	# img.0_3->PicSizeInMbs, D.4303
	subl	$1, %eax	#, D.4302
	cmpl	-4(%rbp), %eax	# mbAddr, D.4302
	jge	.L3	#,
.L2:
	.loc 1 27 0 is_stmt 1
	movl	$0, %eax	#, D.4302
	jmp	.L4	#
.L3:
	.loc 1 30 0
	movq	img(%rip), %rax	# img, img.1
	movl	72636(%rax), %eax	# img.1_7->DeblockCall, D.4302
	testl	%eax, %eax	# D.4302
	jne	.L5	#,
	.loc 1 32 0
	movq	img(%rip), %rax	# img, img.2
	movq	14168(%rax), %rdx	# img.2_9->mb_data, D.4304
	movl	-4(%rbp), %eax	# mbAddr, tmp79
	cltq
	imulq	$632, %rax, %rax	#, D.4305, D.4305
	addq	%rdx, %rax	# D.4304, D.4304
	movl	4(%rax), %edx	# _13->slice_nr, D.4302
	movq	img(%rip), %rax	# img, img.3
	movq	14168(%rax), %rcx	# img.3_15->mb_data, D.4304
	movl	-8(%rbp), %eax	# currMbAddr, tmp80
	cltq
	imulq	$632, %rax, %rax	#, D.4305, D.4305
	addq	%rcx, %rax	# D.4304, D.4304
	movl	4(%rax), %eax	# _20->slice_nr, D.4302
	cmpl	%eax, %edx	# D.4302, D.4302
	je	.L5	#,
	.loc 1 33 0
	movl	$0, %eax	#, D.4302
	jmp	.L4	#
.L5:
	.loc 1 36 0
	movl	$1, %eax	#, D.4302
.L4:
	.loc 1 37 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	mb_is_available, .-mb_is_available
	.globl	CheckAvailabilityOfNeighbors
	.type	CheckAvailabilityOfNeighbors, @function
CheckAvailabilityOfNeighbors:
.LFB1:
	.loc 1 48 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 49 0
	movq	img(%rip), %rax	# img, img.4
	movl	12(%rax), %eax	# img.4_7->current_mb_nr, tmp175
	movl	%eax, -12(%rbp)	# tmp175, mb_nr
	.loc 1 50 0
	movq	img(%rip), %rax	# img, img.5
	movq	14168(%rax), %rdx	# img.5_9->mb_data, D.4306
	movl	-12(%rbp), %eax	# mb_nr, tmp176
	cltq
	imulq	$632, %rax, %rax	#, D.4307, D.4307
	addq	%rdx, %rax	# D.4306, tmp177
	movq	%rax, -8(%rbp)	# tmp177, currMB
	.loc 1 53 0
	movq	-8(%rbp), %rax	# currMB, tmp178
	movq	$0, 56(%rax)	#, currMB_13->mb_available_up
	.loc 1 54 0
	movq	-8(%rbp), %rax	# currMB, tmp179
	movq	$0, 64(%rax)	#, currMB_13->mb_available_left
	.loc 1 56 0
	movq	img(%rip), %rax	# img, img.6
	movl	72400(%rax), %eax	# img.6_14->MbaffFrameFlag, D.4308
	testl	%eax, %eax	# D.4308
	je	.L7	#,
	.loc 1 58 0
	movl	-12(%rbp), %eax	# mb_nr, tmp180
	movl	%eax, %edx	# tmp180, tmp181
	shrl	$31, %edx	#, tmp181
	addl	%edx, %eax	# tmp181, tmp182
	sarl	%eax	# tmp183
	subl	$1, %eax	#, D.4308
	leal	(%rax,%rax), %edx	#, D.4308
	movq	-8(%rbp), %rax	# currMB, tmp184
	movl	%edx, 536(%rax)	# D.4308, currMB_13->mbAddrA
	.loc 1 59 0
	movl	-12(%rbp), %eax	# mb_nr, tmp185
	movl	%eax, %edx	# tmp185, tmp186
	shrl	$31, %edx	#, tmp186
	addl	%edx, %eax	# tmp186, tmp187
	sarl	%eax	# tmp188
	movl	%eax, %edx	# D.4308, D.4309
	movq	img(%rip), %rax	# img, img.7
	movl	72468(%rax), %eax	# img.7_21->PicWidthInMbs, D.4309
	subl	%eax, %edx	# D.4309, D.4309
	movl	%edx, %eax	# D.4309, D.4309
	addl	%eax, %eax	# D.4309
	movl	%eax, %edx	# D.4309, D.4308
	movq	-8(%rbp), %rax	# currMB, tmp189
	movl	%edx, 540(%rax)	# D.4308, currMB_13->mbAddrB
	.loc 1 60 0
	movl	-12(%rbp), %eax	# mb_nr, tmp190
	movl	%eax, %edx	# tmp190, tmp191
	shrl	$31, %edx	#, tmp191
	addl	%edx, %eax	# tmp191, tmp192
	sarl	%eax	# tmp193
	movl	%eax, %edx	# D.4308, D.4309
	movq	img(%rip), %rax	# img, img.8
	movl	72468(%rax), %eax	# img.8_28->PicWidthInMbs, D.4309
	subl	%eax, %edx	# D.4309, D.4309
	movl	%edx, %eax	# D.4309, D.4309
	addl	$1, %eax	#, D.4309
	addl	%eax, %eax	# D.4309
	movl	%eax, %edx	# D.4309, D.4308
	movq	-8(%rbp), %rax	# currMB, tmp194
	movl	%edx, 544(%rax)	# D.4308, currMB_13->mbAddrC
	.loc 1 61 0
	movl	-12(%rbp), %eax	# mb_nr, tmp195
	movl	%eax, %edx	# tmp195, tmp196
	shrl	$31, %edx	#, tmp196
	addl	%edx, %eax	# tmp196, tmp197
	sarl	%eax	# tmp198
	movl	%eax, %edx	# D.4308, D.4309
	movq	img(%rip), %rax	# img, img.9
	movl	72468(%rax), %eax	# img.9_36->PicWidthInMbs, D.4309
	subl	%eax, %edx	# D.4309, D.4309
	movl	%edx, %eax	# D.4309, D.4309
	addl	$2147483647, %eax	#, D.4309
	addl	%eax, %eax	# D.4309
	movl	%eax, %edx	# D.4309, D.4308
	movq	-8(%rbp), %rax	# currMB, tmp199
	movl	%edx, 548(%rax)	# D.4308, currMB_13->mbAddrD
	.loc 1 63 0
	movq	-8(%rbp), %rax	# currMB, tmp200
	movl	536(%rax), %eax	# currMB_13->mbAddrA, D.4308
	movl	-12(%rbp), %edx	# mb_nr, tmp201
	movl	%edx, %esi	# tmp201,
	movl	%eax, %edi	# D.4308,
	call	mb_is_available	#
	testl	%eax, %eax	# D.4308
	je	.L8	#,
	.loc 1 63 0 is_stmt 0 discriminator 1
	movl	-12(%rbp), %eax	# mb_nr, tmp202
	movl	%eax, %edx	# tmp202, tmp203
	shrl	$31, %edx	#, tmp203
	addl	%edx, %eax	# tmp203, tmp204
	sarl	%eax	# tmp205
	movq	img(%rip), %rdx	# img, img.11
	movl	72468(%rdx), %ecx	# img.11_46->PicWidthInMbs, D.4309
	movl	$0, %edx	#, tmp206
	divl	%ecx	# D.4309
	movl	%edx, %eax	# tmp206, D.4309
	testl	%eax, %eax	# D.4309
	je	.L8	#,
	.loc 1 63 0 discriminator 3
	movl	$1, %eax	#, iftmp.10
	jmp	.L9	#
.L8:
	.loc 1 63 0 discriminator 2
	movl	$0, %eax	#, iftmp.10
.L9:
	.loc 1 63 0 discriminator 4
	movq	-8(%rbp), %rdx	# currMB, tmp208
	movl	%eax, 552(%rdx)	# iftmp.10, currMB_13->mbAvailA
	.loc 1 64 0 is_stmt 1 discriminator 4
	movq	-8(%rbp), %rax	# currMB, tmp209
	movl	540(%rax), %eax	# currMB_13->mbAddrB, D.4308
	movl	-12(%rbp), %edx	# mb_nr, tmp210
	movl	%edx, %esi	# tmp210,
	movl	%eax, %edi	# D.4308,
	call	mb_is_available	#
	movq	-8(%rbp), %rdx	# currMB, tmp211
	movl	%eax, 556(%rdx)	# D.4308, currMB_13->mbAvailB
	.loc 1 65 0 discriminator 4
	movq	-8(%rbp), %rax	# currMB, tmp212
	movl	544(%rax), %eax	# currMB_13->mbAddrC, D.4308
	movl	-12(%rbp), %edx	# mb_nr, tmp213
	movl	%edx, %esi	# tmp213,
	movl	%eax, %edi	# D.4308,
	call	mb_is_available	#
	testl	%eax, %eax	# D.4308
	je	.L10	#,
	.loc 1 65 0 is_stmt 0 discriminator 1
	movl	-12(%rbp), %eax	# mb_nr, tmp214
	movl	%eax, %edx	# tmp214, tmp215
	shrl	$31, %edx	#, tmp215
	addl	%edx, %eax	# tmp215, tmp216
	sarl	%eax	# tmp217
	addl	$1, %eax	#, D.4308
	movq	img(%rip), %rdx	# img, img.13
	movl	72468(%rdx), %ecx	# img.13_58->PicWidthInMbs, D.4309
	movl	$0, %edx	#, tmp218
	divl	%ecx	# D.4309
	movl	%edx, %eax	# tmp218, D.4309
	testl	%eax, %eax	# D.4309
	je	.L10	#,
	.loc 1 65 0 discriminator 3
	movl	$1, %eax	#, iftmp.12
	jmp	.L11	#
.L10:
	.loc 1 65 0 discriminator 2
	movl	$0, %eax	#, iftmp.12
.L11:
	.loc 1 65 0 discriminator 4
	movq	-8(%rbp), %rdx	# currMB, tmp220
	movl	%eax, 560(%rdx)	# iftmp.12, currMB_13->mbAvailC
	.loc 1 66 0 is_stmt 1 discriminator 4
	movq	-8(%rbp), %rax	# currMB, tmp221
	movl	548(%rax), %eax	# currMB_13->mbAddrD, D.4308
	movl	-12(%rbp), %edx	# mb_nr, tmp222
	movl	%edx, %esi	# tmp222,
	movl	%eax, %edi	# D.4308,
	call	mb_is_available	#
	testl	%eax, %eax	# D.4308
	je	.L12	#,
	.loc 1 66 0 is_stmt 0 discriminator 1
	movl	-12(%rbp), %eax	# mb_nr, tmp223
	movl	%eax, %edx	# tmp223, tmp224
	shrl	$31, %edx	#, tmp224
	addl	%edx, %eax	# tmp224, tmp225
	sarl	%eax	# tmp226
	movq	img(%rip), %rdx	# img, img.15
	movl	72468(%rdx), %ecx	# img.15_67->PicWidthInMbs, D.4309
	movl	$0, %edx	#, tmp227
	divl	%ecx	# D.4309
	movl	%edx, %eax	# tmp227, D.4309
	testl	%eax, %eax	# D.4309
	je	.L12	#,
	.loc 1 66 0 discriminator 3
	movl	$1, %eax	#, iftmp.14
	jmp	.L13	#
.L12:
	.loc 1 66 0 discriminator 2
	movl	$0, %eax	#, iftmp.14
.L13:
	.loc 1 66 0 discriminator 4
	movq	-8(%rbp), %rdx	# currMB, tmp229
	movl	%eax, 564(%rdx)	# iftmp.14, currMB_13->mbAvailD
	jmp	.L14	#
.L7:
	.loc 1 70 0 is_stmt 1
	movl	-12(%rbp), %eax	# mb_nr, tmp230
	leal	-1(%rax), %edx	#, D.4308
	movq	-8(%rbp), %rax	# currMB, tmp231
	movl	%edx, 536(%rax)	# D.4308, currMB_13->mbAddrA
	.loc 1 71 0
	movl	-12(%rbp), %edx	# mb_nr, mb_nr.16
	movq	img(%rip), %rax	# img, img.17
	movl	72468(%rax), %eax	# img.17_74->PicWidthInMbs, D.4309
	subl	%eax, %edx	# D.4309, D.4309
	movl	%edx, %eax	# D.4309, D.4309
	movl	%eax, %edx	# D.4309, D.4308
	movq	-8(%rbp), %rax	# currMB, tmp232
	movl	%edx, 540(%rax)	# D.4308, currMB_13->mbAddrB
	.loc 1 72 0
	movl	-12(%rbp), %edx	# mb_nr, mb_nr.18
	movq	img(%rip), %rax	# img, img.19
	movl	72468(%rax), %eax	# img.19_79->PicWidthInMbs, D.4309
	subl	%eax, %edx	# D.4309, D.4309
	movl	%edx, %eax	# D.4309, D.4309
	addl	$1, %eax	#, D.4309
	movl	%eax, %edx	# D.4309, D.4308
	movq	-8(%rbp), %rax	# currMB, tmp233
	movl	%edx, 544(%rax)	# D.4308, currMB_13->mbAddrC
	.loc 1 73 0
	movl	-12(%rbp), %edx	# mb_nr, mb_nr.20
	movq	img(%rip), %rax	# img, img.21
	movl	72468(%rax), %eax	# img.21_85->PicWidthInMbs, D.4309
	subl	%eax, %edx	# D.4309, D.4309
	movl	%edx, %eax	# D.4309, D.4309
	subl	$1, %eax	#, D.4309
	movl	%eax, %edx	# D.4309, D.4308
	movq	-8(%rbp), %rax	# currMB, tmp234
	movl	%edx, 548(%rax)	# D.4308, currMB_13->mbAddrD
	.loc 1 75 0
	movq	-8(%rbp), %rax	# currMB, tmp235
	movl	536(%rax), %eax	# currMB_13->mbAddrA, D.4308
	movl	-12(%rbp), %edx	# mb_nr, tmp236
	movl	%edx, %esi	# tmp236,
	movl	%eax, %edi	# D.4308,
	call	mb_is_available	#
	testl	%eax, %eax	# D.4308
	je	.L15	#,
	.loc 1 75 0 is_stmt 0 discriminator 1
	movl	-12(%rbp), %eax	# mb_nr, mb_nr.23
	movq	img(%rip), %rdx	# img, img.24
	movl	72468(%rdx), %ecx	# img.24_93->PicWidthInMbs, D.4309
	movl	$0, %edx	#, tmp237
	divl	%ecx	# D.4309
	movl	%edx, %eax	# tmp237, D.4309
	testl	%eax, %eax	# D.4309
	je	.L15	#,
	.loc 1 75 0 discriminator 3
	movl	$1, %eax	#, iftmp.22
	jmp	.L16	#
.L15:
	.loc 1 75 0 discriminator 2
	movl	$0, %eax	#, iftmp.22
.L16:
	.loc 1 75 0 discriminator 4
	movq	-8(%rbp), %rdx	# currMB, tmp239
	movl	%eax, 552(%rdx)	# iftmp.22, currMB_13->mbAvailA
	.loc 1 76 0 is_stmt 1 discriminator 4
	movq	-8(%rbp), %rax	# currMB, tmp240
	movl	540(%rax), %eax	# currMB_13->mbAddrB, D.4308
	movl	-12(%rbp), %edx	# mb_nr, tmp241
	movl	%edx, %esi	# tmp241,
	movl	%eax, %edi	# D.4308,
	call	mb_is_available	#
	movq	-8(%rbp), %rdx	# currMB, tmp242
	movl	%eax, 556(%rdx)	# D.4308, currMB_13->mbAvailB
	.loc 1 77 0 discriminator 4
	movq	-8(%rbp), %rax	# currMB, tmp243
	movl	544(%rax), %eax	# currMB_13->mbAddrC, D.4308
	movl	-12(%rbp), %edx	# mb_nr, tmp244
	movl	%edx, %esi	# tmp244,
	movl	%eax, %edi	# D.4308,
	call	mb_is_available	#
	testl	%eax, %eax	# D.4308
	je	.L17	#,
	.loc 1 77 0 is_stmt 0 discriminator 1
	movl	-12(%rbp), %eax	# mb_nr, tmp245
	addl	$1, %eax	#, D.4308
	movq	img(%rip), %rdx	# img, img.26
	movl	72468(%rdx), %ecx	# img.26_104->PicWidthInMbs, D.4309
	movl	$0, %edx	#, tmp246
	divl	%ecx	# D.4309
	movl	%edx, %eax	# tmp246, D.4309
	testl	%eax, %eax	# D.4309
	je	.L17	#,
	.loc 1 77 0 discriminator 3
	movl	$1, %eax	#, iftmp.25
	jmp	.L18	#
.L17:
	.loc 1 77 0 discriminator 2
	movl	$0, %eax	#, iftmp.25
.L18:
	.loc 1 77 0 discriminator 4
	movq	-8(%rbp), %rdx	# currMB, tmp248
	movl	%eax, 560(%rdx)	# iftmp.25, currMB_13->mbAvailC
	.loc 1 78 0 is_stmt 1 discriminator 4
	movq	-8(%rbp), %rax	# currMB, tmp249
	movl	548(%rax), %eax	# currMB_13->mbAddrD, D.4308
	movl	-12(%rbp), %edx	# mb_nr, tmp250
	movl	%edx, %esi	# tmp250,
	movl	%eax, %edi	# D.4308,
	call	mb_is_available	#
	testl	%eax, %eax	# D.4308
	je	.L19	#,
	.loc 1 78 0 is_stmt 0 discriminator 1
	movl	-12(%rbp), %eax	# mb_nr, mb_nr.28
	movq	img(%rip), %rdx	# img, img.29
	movl	72468(%rdx), %ecx	# img.29_112->PicWidthInMbs, D.4309
	movl	$0, %edx	#, tmp251
	divl	%ecx	# D.4309
	movl	%edx, %eax	# tmp251, D.4309
	testl	%eax, %eax	# D.4309
	je	.L19	#,
	.loc 1 78 0 discriminator 3
	movl	$1, %eax	#, iftmp.27
	jmp	.L20	#
.L19:
	.loc 1 78 0 discriminator 2
	movl	$0, %eax	#, iftmp.27
.L20:
	.loc 1 78 0 discriminator 4
	movq	-8(%rbp), %rdx	# currMB, tmp253
	movl	%eax, 564(%rdx)	# iftmp.27, currMB_13->mbAvailD
.L14:
	.loc 1 81 0 is_stmt 1
	movq	-8(%rbp), %rax	# currMB, tmp254
	movl	552(%rax), %eax	# currMB_13->mbAvailA, D.4308
	testl	%eax, %eax	# D.4308
	je	.L21	#,
	.loc 1 81 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.30
	movq	14168(%rax), %rdx	# img.30_118->mb_data, D.4306
	movq	-8(%rbp), %rax	# currMB, tmp255
	movl	536(%rax), %eax	# currMB_13->mbAddrA, D.4308
	cltq
	imulq	$632, %rax, %rax	#, D.4307, D.4307
	addq	%rax, %rdx	# D.4307, D.4310
	movq	-8(%rbp), %rax	# currMB, tmp256
	movq	%rdx, 64(%rax)	# D.4310, currMB_13->mb_available_left
.L21:
	.loc 1 82 0 is_stmt 1
	movq	-8(%rbp), %rax	# currMB, tmp257
	movl	556(%rax), %eax	# currMB_13->mbAvailB, D.4308
	testl	%eax, %eax	# D.4308
	je	.L6	#,
	.loc 1 82 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.31
	movq	14168(%rax), %rdx	# img.31_125->mb_data, D.4306
	movq	-8(%rbp), %rax	# currMB, tmp258
	movl	540(%rax), %eax	# currMB_13->mbAddrB, D.4308
	cltq
	imulq	$632, %rax, %rax	#, D.4307, D.4307
	addq	%rax, %rdx	# D.4307, D.4310
	movq	-8(%rbp), %rax	# currMB, tmp259
	movq	%rdx, 56(%rax)	# D.4310, currMB_13->mb_available_up
.L6:
	.loc 1 83 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	CheckAvailabilityOfNeighbors, .-CheckAvailabilityOfNeighbors
	.globl	get_mb_block_pos
	.type	get_mb_block_pos, @function
get_mb_block_pos:
.LFB2:
	.loc 1 93 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	.cfi_offset 3, -24
	movl	%edi, -12(%rbp)	# mb_addr, mb_addr
	movq	%rsi, -24(%rbp)	# x, x
	movq	%rdx, -32(%rbp)	# y, y
	.loc 1 95 0
	movq	img(%rip), %rax	# img, img.32
	movl	72400(%rax), %eax	# img.32_1->MbaffFrameFlag, D.4311
	testl	%eax, %eax	# D.4311
	je	.L24	#,
	.loc 1 97 0
	movl	-12(%rbp), %eax	# mb_addr, tmp87
	movl	%eax, %edx	# tmp87, tmp88
	shrl	$31, %edx	#, tmp88
	addl	%edx, %eax	# tmp88, tmp89
	sarl	%eax	# tmp90
	movq	img(%rip), %rdx	# img, img.33
	movl	72468(%rdx), %ecx	# img.33_6->PicWidthInMbs, D.4312
	movl	$0, %edx	#, tmp91
	divl	%ecx	# D.4312
	movl	%edx, %eax	# tmp91, D.4312
	movl	%eax, %edx	# D.4312, D.4311
	movq	-24(%rbp), %rax	# x, tmp93
	movl	%edx, (%rax)	# D.4311, *x_10(D)
	.loc 1 98 0
	movl	-12(%rbp), %eax	# mb_addr, tmp94
	movl	%eax, %edx	# tmp94, tmp95
	shrl	$31, %edx	#, tmp95
	addl	%edx, %eax	# tmp95, tmp96
	sarl	%eax	# tmp97
	movq	img(%rip), %rdx	# img, img.34
	movl	72468(%rdx), %ebx	# img.34_13->PicWidthInMbs, D.4312
	movl	$0, %edx	#, tmp99
	divl	%ebx	# D.4312
	leal	(%rax,%rax), %ecx	#, D.4312
	movl	-12(%rbp), %eax	# mb_addr, tmp100
	cltd
	shrl	$31, %edx	#, tmp102
	addl	%edx, %eax	# tmp102, tmp103
	andl	$1, %eax	#, tmp104
	subl	%edx, %eax	# tmp102, tmp105
	addl	%ecx, %eax	# D.4312, D.4312
	movl	%eax, %edx	# D.4312, D.4311
	movq	-32(%rbp), %rax	# y, tmp106
	movl	%edx, (%rax)	# D.4311, *y_21(D)
	jmp	.L23	#
.L24:
	.loc 1 102 0
	movl	-12(%rbp), %eax	# mb_addr, mb_addr.35
	movq	img(%rip), %rdx	# img, img.36
	movl	72468(%rdx), %ecx	# img.36_23->PicWidthInMbs, D.4312
	movl	$0, %edx	#, tmp107
	divl	%ecx	# D.4312
	movl	%edx, %eax	# tmp107, D.4312
	movl	%eax, %edx	# D.4312, D.4311
	movq	-24(%rbp), %rax	# x, tmp109
	movl	%edx, (%rax)	# D.4311, *x_10(D)
	.loc 1 103 0
	movl	-12(%rbp), %eax	# mb_addr, mb_addr.37
	movq	img(%rip), %rdx	# img, img.38
	movl	72468(%rdx), %esi	# img.38_28->PicWidthInMbs, D.4312
	movl	$0, %edx	#, tmp111
	divl	%esi	# D.4312
	movl	%eax, %edx	# D.4312, D.4311
	movq	-32(%rbp), %rax	# y, tmp112
	movl	%edx, (%rax)	# D.4311, *y_21(D)
.L23:
	.loc 1 105 0
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	get_mb_block_pos, .-get_mb_block_pos
	.globl	get_mb_pos
	.type	get_mb_pos, @function
get_mb_pos:
.LFB3:
	.loc 1 115 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$24, %rsp	#,
	movl	%edi, -4(%rbp)	# mb_addr, mb_addr
	movq	%rsi, -16(%rbp)	# x, x
	movq	%rdx, -24(%rbp)	# y, y
	.loc 1 116 0
	movq	-24(%rbp), %rdx	# y, tmp63
	movq	-16(%rbp), %rcx	# x, tmp64
	movl	-4(%rbp), %eax	# mb_addr, tmp65
	movq	%rcx, %rsi	# tmp64,
	movl	%eax, %edi	# tmp65,
	call	get_mb_block_pos	#
	.loc 1 118 0
	movq	-16(%rbp), %rax	# x, tmp66
	movl	(%rax), %eax	# *x_2(D), D.4313
	sall	$4, %eax	#, D.4313
	movl	%eax, %edx	# D.4313, D.4313
	movq	-16(%rbp), %rax	# x, tmp67
	movl	%edx, (%rax)	# D.4313, *x_2(D)
	.loc 1 119 0
	movq	-24(%rbp), %rax	# y, tmp68
	movl	(%rax), %eax	# *y_3(D), D.4313
	sall	$4, %eax	#, D.4313
	movl	%eax, %edx	# D.4313, D.4313
	movq	-24(%rbp), %rax	# y, tmp69
	movl	%edx, (%rax)	# D.4313, *y_3(D)
	.loc 1 120 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	get_mb_pos, .-get_mb_pos
	.globl	getNonAffNeighbour
	.type	getNonAffNeighbour, @function
getNonAffNeighbour:
.LFB4:
	.loc 1 140 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -28(%rbp)	# curr_mb_nr, curr_mb_nr
	movl	%esi, -32(%rbp)	# xN, xN
	movl	%edx, -36(%rbp)	# yN, yN
	movl	%ecx, -40(%rbp)	# luma, luma
	movq	%r8, -48(%rbp)	# pix, pix
	.loc 1 141 0
	movq	img(%rip), %rax	# img, img.39
	movq	14168(%rax), %rdx	# img.39_3->mb_data, D.4314
	movl	-28(%rbp), %eax	# curr_mb_nr, D.4315
	imulq	$632, %rax, %rax	#, D.4315, D.4315
	addq	%rdx, %rax	# D.4314, tmp104
	movq	%rax, -16(%rbp)	# tmp104, currMb
	.loc 1 144 0
	cmpl	$0, -40(%rbp)	#, luma
	je	.L28	#,
	.loc 1 146 0
	movl	$16, -24(%rbp)	#, maxW
	.loc 1 147 0
	movl	$16, -20(%rbp)	#, maxH
	jmp	.L29	#
.L28:
	.loc 1 152 0
	movq	img(%rip), %rax	# img, img.40
	movl	72708(%rax), %eax	# img.40_12->mb_cr_size_x, tmp105
	movl	%eax, -24(%rbp)	# tmp105, maxW
	.loc 1 153 0
	movq	img(%rip), %rax	# img, img.41
	movl	72712(%rax), %eax	# img.41_14->mb_cr_size_y, tmp106
	movl	%eax, -20(%rbp)	# tmp106, maxH
.L29:
	.loc 1 156 0
	cmpl	$0, -32(%rbp)	#, xN
	jns	.L30	#,
	.loc 1 156 0 is_stmt 0 discriminator 1
	cmpl	$0, -36(%rbp)	#, yN
	jns	.L30	#,
	.loc 1 158 0 is_stmt 1
	movq	-16(%rbp), %rax	# currMb, tmp107
	movl	548(%rax), %edx	# currMb_8->mbAddrD, D.4316
	movq	-48(%rbp), %rax	# pix, tmp108
	movl	%edx, 4(%rax)	# D.4316, pix_19(D)->mb_addr
	.loc 1 159 0
	movq	-16(%rbp), %rax	# currMb, tmp109
	movl	564(%rax), %edx	# currMb_8->mbAvailD, D.4316
	movq	-48(%rbp), %rax	# pix, tmp110
	movl	%edx, (%rax)	# D.4316, pix_19(D)->available
	jmp	.L31	#
.L30:
	.loc 1 161 0
	cmpl	$0, -32(%rbp)	#, xN
	jns	.L32	#,
	.loc 1 161 0 is_stmt 0 discriminator 1
	cmpl	$0, -36(%rbp)	#, yN
	js	.L32	#,
	movl	-36(%rbp), %eax	# yN, tmp111
	cmpl	-20(%rbp), %eax	# maxH, tmp111
	jge	.L32	#,
	.loc 1 163 0 is_stmt 1
	movq	-16(%rbp), %rax	# currMb, tmp112
	movl	536(%rax), %edx	# currMb_8->mbAddrA, D.4316
	movq	-48(%rbp), %rax	# pix, tmp113
	movl	%edx, 4(%rax)	# D.4316, pix_19(D)->mb_addr
	.loc 1 164 0
	movq	-16(%rbp), %rax	# currMb, tmp114
	movl	552(%rax), %edx	# currMb_8->mbAvailA, D.4316
	movq	-48(%rbp), %rax	# pix, tmp115
	movl	%edx, (%rax)	# D.4316, pix_19(D)->available
	jmp	.L31	#
.L32:
	.loc 1 166 0
	cmpl	$0, -32(%rbp)	#, xN
	js	.L33	#,
	.loc 1 166 0 is_stmt 0 discriminator 1
	movl	-32(%rbp), %eax	# xN, tmp116
	cmpl	-24(%rbp), %eax	# maxW, tmp116
	jge	.L33	#,
	cmpl	$0, -36(%rbp)	#, yN
	jns	.L33	#,
	.loc 1 168 0 is_stmt 1
	movq	-16(%rbp), %rax	# currMb, tmp117
	movl	540(%rax), %edx	# currMb_8->mbAddrB, D.4316
	movq	-48(%rbp), %rax	# pix, tmp118
	movl	%edx, 4(%rax)	# D.4316, pix_19(D)->mb_addr
	.loc 1 169 0
	movq	-16(%rbp), %rax	# currMb, tmp119
	movl	556(%rax), %edx	# currMb_8->mbAvailB, D.4316
	movq	-48(%rbp), %rax	# pix, tmp120
	movl	%edx, (%rax)	# D.4316, pix_19(D)->available
	jmp	.L31	#
.L33:
	.loc 1 171 0
	cmpl	$0, -32(%rbp)	#, xN
	js	.L34	#,
	.loc 1 171 0 is_stmt 0 discriminator 1
	movl	-32(%rbp), %eax	# xN, tmp121
	cmpl	-24(%rbp), %eax	# maxW, tmp121
	jge	.L34	#,
	cmpl	$0, -36(%rbp)	#, yN
	js	.L34	#,
	movl	-36(%rbp), %eax	# yN, tmp122
	cmpl	-20(%rbp), %eax	# maxH, tmp122
	jge	.L34	#,
	.loc 1 173 0 is_stmt 1
	movl	-28(%rbp), %edx	# curr_mb_nr, curr_mb_nr.42
	movq	-48(%rbp), %rax	# pix, tmp123
	movl	%edx, 4(%rax)	# curr_mb_nr.42, pix_19(D)->mb_addr
	.loc 1 174 0
	movq	-48(%rbp), %rax	# pix, tmp124
	movl	$1, (%rax)	#, pix_19(D)->available
	jmp	.L31	#
.L34:
	.loc 1 176 0
	movl	-32(%rbp), %eax	# xN, tmp125
	cmpl	-24(%rbp), %eax	# maxW, tmp125
	jl	.L35	#,
	.loc 1 176 0 is_stmt 0 discriminator 1
	cmpl	$0, -36(%rbp)	#, yN
	jns	.L35	#,
	.loc 1 178 0 is_stmt 1
	movq	-16(%rbp), %rax	# currMb, tmp126
	movl	544(%rax), %edx	# currMb_8->mbAddrC, D.4316
	movq	-48(%rbp), %rax	# pix, tmp127
	movl	%edx, 4(%rax)	# D.4316, pix_19(D)->mb_addr
	.loc 1 179 0
	movq	-16(%rbp), %rax	# currMb, tmp128
	movl	560(%rax), %edx	# currMb_8->mbAvailC, D.4316
	movq	-48(%rbp), %rax	# pix, tmp129
	movl	%edx, (%rax)	# D.4316, pix_19(D)->available
	jmp	.L31	#
.L35:
	.loc 1 183 0
	movq	-48(%rbp), %rax	# pix, tmp130
	movl	$0, (%rax)	#, pix_19(D)->available
.L31:
	.loc 1 186 0
	movq	-48(%rbp), %rax	# pix, tmp131
	movl	(%rax), %eax	# pix_19(D)->available, D.4316
	testl	%eax, %eax	# D.4316
	jne	.L36	#,
	.loc 1 186 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.43
	movl	72636(%rax), %eax	# img.43_29->DeblockCall, D.4316
	testl	%eax, %eax	# D.4316
	je	.L27	#,
.L36:
	.loc 1 188 0 is_stmt 1
	movl	-24(%rbp), %eax	# maxW, tmp132
	movl	-32(%rbp), %edx	# xN, tmp133
	addl	%edx, %eax	# tmp133, D.4316
	cltd
	idivl	-24(%rbp)	# maxW
	movq	-48(%rbp), %rax	# pix, tmp136
	movl	%edx, 8(%rax)	# D.4316, pix_19(D)->x
	.loc 1 189 0
	movl	-20(%rbp), %eax	# maxH, tmp137
	movl	-36(%rbp), %edx	# yN, tmp138
	addl	%edx, %eax	# tmp138, D.4316
	cltd
	idivl	-20(%rbp)	# maxH
	movq	-48(%rbp), %rax	# pix, tmp141
	movl	%edx, 12(%rax)	# D.4316, pix_19(D)->y
	.loc 1 190 0
	movq	-48(%rbp), %rax	# pix, tmp142
	leaq	20(%rax), %rdx	#, D.4317
	movq	-48(%rbp), %rax	# pix, tmp143
	leaq	16(%rax), %rcx	#, D.4317
	movq	-48(%rbp), %rax	# pix, tmp144
	movl	4(%rax), %eax	# pix_19(D)->mb_addr, D.4316
	movq	%rcx, %rsi	# D.4317,
	movl	%eax, %edi	# D.4316,
	call	get_mb_pos	#
	.loc 1 191 0
	cmpl	$0, -40(%rbp)	#, luma
	je	.L38	#,
	.loc 1 193 0
	movq	-48(%rbp), %rax	# pix, tmp145
	movl	16(%rax), %edx	# pix_19(D)->pos_x, D.4316
	movq	-48(%rbp), %rax	# pix, tmp146
	movl	8(%rax), %eax	# pix_19(D)->x, D.4316
	addl	%eax, %edx	# D.4316, D.4316
	movq	-48(%rbp), %rax	# pix, tmp147
	movl	%edx, 16(%rax)	# D.4316, pix_19(D)->pos_x
	.loc 1 194 0
	movq	-48(%rbp), %rax	# pix, tmp148
	movl	20(%rax), %edx	# pix_19(D)->pos_y, D.4316
	movq	-48(%rbp), %rax	# pix, tmp149
	movl	12(%rax), %eax	# pix_19(D)->y, D.4316
	addl	%eax, %edx	# D.4316, D.4316
	movq	-48(%rbp), %rax	# pix, tmp150
	movl	%edx, 20(%rax)	# D.4316, pix_19(D)->pos_y
	jmp	.L27	#
.L38:
	.loc 1 198 0
	movq	-48(%rbp), %rax	# pix, tmp151
	movl	16(%rax), %ecx	# pix_19(D)->pos_x, D.4316
	movq	img(%rip), %rax	# img, img.44
	movl	72708(%rax), %ebx	# img.44_45->mb_cr_size_x, D.4316
	movl	$16, %eax	#, tmp154
	cltd
	idivl	%ebx	# D.4316
	movl	%eax, %esi	# tmp152, D.4316
	movl	%ecx, %eax	# D.4316, tmp155
	cltd
	idivl	%esi	# D.4316
	movl	%eax, %edx	# tmp155, D.4316
	movq	-48(%rbp), %rax	# pix, tmp157
	movl	8(%rax), %eax	# pix_19(D)->x, D.4316
	addl	%eax, %edx	# D.4316, D.4316
	movq	-48(%rbp), %rax	# pix, tmp158
	movl	%edx, 16(%rax)	# D.4316, pix_19(D)->pos_x
	.loc 1 199 0
	movq	-48(%rbp), %rax	# pix, tmp159
	movl	20(%rax), %ecx	# pix_19(D)->pos_y, D.4316
	movq	img(%rip), %rax	# img, img.45
	movl	72712(%rax), %edi	# img.45_52->mb_cr_size_y, D.4316
	movl	$16, %eax	#, tmp162
	cltd
	idivl	%edi	# D.4316
	movl	%eax, %ebx	# tmp160, D.4316
	movl	%ecx, %eax	# D.4316, tmp163
	cltd
	idivl	%ebx	# D.4316
	movl	%eax, %edx	# tmp163, D.4316
	movq	-48(%rbp), %rax	# pix, tmp165
	movl	12(%rax), %eax	# pix_19(D)->y, D.4316
	addl	%eax, %edx	# D.4316, D.4316
	movq	-48(%rbp), %rax	# pix, tmp166
	movl	%edx, 20(%rax)	# D.4316, pix_19(D)->pos_y
.L27:
	.loc 1 202 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	getNonAffNeighbour, .-getNonAffNeighbour
	.globl	getAffNeighbour
	.type	getAffNeighbour, @function
getAffNeighbour:
.LFB5:
	.loc 1 221 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -44(%rbp)	# curr_mb_nr, curr_mb_nr
	movl	%esi, -48(%rbp)	# xN, xN
	movl	%edx, -52(%rbp)	# yN, yN
	movl	%ecx, -56(%rbp)	# luma, luma
	movq	%r8, -64(%rbp)	# pix, pix
	.loc 1 222 0
	movq	img(%rip), %rax	# img, img.46
	movq	14168(%rax), %rdx	# img.46_19->mb_data, D.4318
	movl	-44(%rbp), %eax	# curr_mb_nr, D.4319
	imulq	$632, %rax, %rax	#, D.4319, D.4319
	addq	%rdx, %rax	# D.4318, tmp258
	movq	%rax, -16(%rbp)	# tmp258, currMb
	.loc 1 224 0
	movl	$-1, -20(%rbp)	#, yM
	.loc 1 226 0
	cmpl	$0, -56(%rbp)	#, luma
	je	.L40	#,
	.loc 1 228 0
	movl	$16, -28(%rbp)	#, maxW
	.loc 1 229 0
	movl	$16, -24(%rbp)	#, maxH
	jmp	.L41	#
.L40:
	.loc 1 234 0
	movq	img(%rip), %rax	# img, img.47
	movl	72708(%rax), %eax	# img.47_29->mb_cr_size_x, tmp259
	movl	%eax, -28(%rbp)	# tmp259, maxW
	.loc 1 235 0
	movq	img(%rip), %rax	# img, img.48
	movl	72712(%rax), %eax	# img.48_31->mb_cr_size_y, tmp260
	movl	%eax, -24(%rbp)	# tmp260, maxH
.L41:
	.loc 1 239 0
	movq	-64(%rbp), %rax	# pix, tmp261
	movl	$0, (%rax)	#, pix_33(D)->available
	.loc 1 241 0
	movl	-24(%rbp), %eax	# maxH, tmp262
	subl	$1, %eax	#, D.4320
	cmpl	-52(%rbp), %eax	# yN, D.4320
	jge	.L42	#,
	.loc 1 243 0
	jmp	.L39	#
.L42:
	.loc 1 245 0
	movl	-28(%rbp), %eax	# maxW, tmp263
	subl	$1, %eax	#, D.4320
	cmpl	-48(%rbp), %eax	# xN, D.4320
	jge	.L44	#,
	.loc 1 245 0 is_stmt 0 discriminator 1
	cmpl	$0, -52(%rbp)	#, yN
	js	.L44	#,
	movl	-52(%rbp), %eax	# yN, tmp264
	cmpl	-24(%rbp), %eax	# maxH, tmp264
	jge	.L44	#,
	.loc 1 247 0 is_stmt 1
	jmp	.L39	#
.L44:
	.loc 1 250 0
	cmpl	$0, -48(%rbp)	#, xN
	jns	.L45	#,
	.loc 1 252 0
	cmpl	$0, -52(%rbp)	#, yN
	jns	.L46	#,
	.loc 1 254 0
	movq	-16(%rbp), %rax	# currMb, tmp265
	movl	532(%rax), %eax	# currMb_24->mb_field, D.4320
	testl	%eax, %eax	# D.4320
	jne	.L47	#,
	.loc 1 257 0
	movl	-44(%rbp), %eax	# curr_mb_nr, tmp266
	andl	$1, %eax	#, D.4321
	testl	%eax, %eax	# D.4321
	jne	.L48	#,
	.loc 1 260 0
	movq	-16(%rbp), %rax	# currMb, tmp267
	movl	548(%rax), %eax	# currMb_24->mbAddrD, D.4320
	leal	1(%rax), %edx	#, D.4320
	movq	-64(%rbp), %rax	# pix, tmp268
	movl	%edx, 4(%rax)	# D.4320, pix_33(D)->mb_addr
	.loc 1 261 0
	movq	-16(%rbp), %rax	# currMb, tmp269
	movl	564(%rax), %edx	# currMb_24->mbAvailD, D.4320
	movq	-64(%rbp), %rax	# pix, tmp270
	movl	%edx, (%rax)	# D.4320, pix_33(D)->available
	.loc 1 262 0
	movl	-52(%rbp), %eax	# yN, tmp271
	movl	%eax, -20(%rbp)	# tmp271, yM
	jmp	.L72	#
.L48:
	.loc 1 267 0
	movq	-16(%rbp), %rax	# currMb, tmp272
	movl	536(%rax), %edx	# currMb_24->mbAddrA, D.4320
	movq	-64(%rbp), %rax	# pix, tmp273
	movl	%edx, 4(%rax)	# D.4320, pix_33(D)->mb_addr
	.loc 1 268 0
	movq	-16(%rbp), %rax	# currMb, tmp274
	movl	552(%rax), %edx	# currMb_24->mbAvailA, D.4320
	movq	-64(%rbp), %rax	# pix, tmp275
	movl	%edx, (%rax)	# D.4320, pix_33(D)->available
	.loc 1 269 0
	movq	-16(%rbp), %rax	# currMb, tmp276
	movl	552(%rax), %eax	# currMb_24->mbAvailA, D.4320
	testl	%eax, %eax	# D.4320
	je	.L72	#,
	.loc 1 271 0
	movq	img(%rip), %rax	# img, img.49
	movq	14168(%rax), %rdx	# img.49_47->mb_data, D.4318
	movq	-16(%rbp), %rax	# currMb, tmp277
	movl	536(%rax), %eax	# currMb_24->mbAddrA, D.4320
	cltq
	imulq	$632, %rax, %rax	#, D.4319, D.4319
	addq	%rdx, %rax	# D.4318, D.4318
	movl	532(%rax), %eax	# _52->mb_field, D.4320
	testl	%eax, %eax	# D.4320
	jne	.L50	#,
	.loc 1 273 0
	movl	-52(%rbp), %eax	# yN, tmp278
	movl	%eax, -20(%rbp)	# tmp278, yM
	jmp	.L72	#
.L50:
	.loc 1 277 0
	movq	-64(%rbp), %rax	# pix, tmp279
	movl	4(%rax), %eax	# pix_33(D)->mb_addr, D.4320
	leal	1(%rax), %edx	#, D.4320
	movq	-64(%rbp), %rax	# pix, tmp280
	movl	%edx, 4(%rax)	# D.4320, pix_33(D)->mb_addr
	.loc 1 278 0
	movl	-24(%rbp), %eax	# maxH, tmp281
	movl	-52(%rbp), %edx	# yN, tmp282
	addl	%edx, %eax	# tmp282, D.4320
	sarl	%eax	# tmp283
	movl	%eax, -20(%rbp)	# tmp283, yM
	jmp	.L72	#
.L47:
	.loc 1 286 0
	movl	-44(%rbp), %eax	# curr_mb_nr, tmp284
	andl	$1, %eax	#, D.4321
	testl	%eax, %eax	# D.4321
	jne	.L52	#,
	.loc 1 289 0
	movq	-16(%rbp), %rax	# currMb, tmp285
	movl	548(%rax), %edx	# currMb_24->mbAddrD, D.4320
	movq	-64(%rbp), %rax	# pix, tmp286
	movl	%edx, 4(%rax)	# D.4320, pix_33(D)->mb_addr
	.loc 1 290 0
	movq	-16(%rbp), %rax	# currMb, tmp287
	movl	564(%rax), %edx	# currMb_24->mbAvailD, D.4320
	movq	-64(%rbp), %rax	# pix, tmp288
	movl	%edx, (%rax)	# D.4320, pix_33(D)->available
	.loc 1 291 0
	movq	-16(%rbp), %rax	# currMb, tmp289
	movl	564(%rax), %eax	# currMb_24->mbAvailD, D.4320
	testl	%eax, %eax	# D.4320
	je	.L72	#,
	.loc 1 293 0
	movq	img(%rip), %rax	# img, img.50
	movq	14168(%rax), %rdx	# img.50_63->mb_data, D.4318
	movq	-16(%rbp), %rax	# currMb, tmp290
	movl	548(%rax), %eax	# currMb_24->mbAddrD, D.4320
	cltq
	imulq	$632, %rax, %rax	#, D.4319, D.4319
	addq	%rdx, %rax	# D.4318, D.4318
	movl	532(%rax), %eax	# _68->mb_field, D.4320
	testl	%eax, %eax	# D.4320
	jne	.L54	#,
	.loc 1 295 0
	movq	-64(%rbp), %rax	# pix, tmp291
	movl	4(%rax), %eax	# pix_33(D)->mb_addr, D.4320
	leal	1(%rax), %edx	#, D.4320
	movq	-64(%rbp), %rax	# pix, tmp292
	movl	%edx, 4(%rax)	# D.4320, pix_33(D)->mb_addr
	.loc 1 296 0
	movl	-52(%rbp), %eax	# yN, tmp296
	addl	%eax, %eax	# tmp295
	movl	%eax, -20(%rbp)	# tmp295, yM
	jmp	.L72	#
.L54:
	.loc 1 300 0
	movl	-52(%rbp), %eax	# yN, tmp297
	movl	%eax, -20(%rbp)	# tmp297, yM
	jmp	.L72	#
.L52:
	.loc 1 307 0
	movq	-16(%rbp), %rax	# currMb, tmp298
	movl	548(%rax), %eax	# currMb_24->mbAddrD, D.4320
	leal	1(%rax), %edx	#, D.4320
	movq	-64(%rbp), %rax	# pix, tmp299
	movl	%edx, 4(%rax)	# D.4320, pix_33(D)->mb_addr
	.loc 1 308 0
	movq	-16(%rbp), %rax	# currMb, tmp300
	movl	564(%rax), %edx	# currMb_24->mbAvailD, D.4320
	movq	-64(%rbp), %rax	# pix, tmp301
	movl	%edx, (%rax)	# D.4320, pix_33(D)->available
	.loc 1 309 0
	movl	-52(%rbp), %eax	# yN, tmp302
	movl	%eax, -20(%rbp)	# tmp302, yM
	jmp	.L72	#
.L46:
	.loc 1 315 0
	cmpl	$0, -52(%rbp)	#, yN
	js	.L72	#,
	.loc 1 315 0 is_stmt 0 discriminator 1
	movl	-52(%rbp), %eax	# yN, tmp303
	cmpl	-24(%rbp), %eax	# maxH, tmp303
	jge	.L72	#,
	.loc 1 317 0 is_stmt 1
	movq	-16(%rbp), %rax	# currMb, tmp304
	movl	532(%rax), %eax	# currMb_24->mb_field, D.4320
	testl	%eax, %eax	# D.4320
	jne	.L56	#,
	.loc 1 320 0
	movl	-44(%rbp), %eax	# curr_mb_nr, tmp305
	andl	$1, %eax	#, D.4321
	testl	%eax, %eax	# D.4321
	jne	.L57	#,
	.loc 1 323 0
	movq	-16(%rbp), %rax	# currMb, tmp306
	movl	536(%rax), %edx	# currMb_24->mbAddrA, D.4320
	movq	-64(%rbp), %rax	# pix, tmp307
	movl	%edx, 4(%rax)	# D.4320, pix_33(D)->mb_addr
	.loc 1 324 0
	movq	-16(%rbp), %rax	# currMb, tmp308
	movl	552(%rax), %edx	# currMb_24->mbAvailA, D.4320
	movq	-64(%rbp), %rax	# pix, tmp309
	movl	%edx, (%rax)	# D.4320, pix_33(D)->available
	.loc 1 325 0
	movq	-16(%rbp), %rax	# currMb, tmp310
	movl	552(%rax), %eax	# currMb_24->mbAvailA, D.4320
	testl	%eax, %eax	# D.4320
	je	.L72	#,
	.loc 1 327 0
	movq	img(%rip), %rax	# img, img.51
	movq	14168(%rax), %rdx	# img.51_83->mb_data, D.4318
	movq	-16(%rbp), %rax	# currMb, tmp311
	movl	536(%rax), %eax	# currMb_24->mbAddrA, D.4320
	cltq
	imulq	$632, %rax, %rax	#, D.4319, D.4319
	addq	%rdx, %rax	# D.4318, D.4318
	movl	532(%rax), %eax	# _88->mb_field, D.4320
	testl	%eax, %eax	# D.4320
	jne	.L59	#,
	.loc 1 329 0
	movl	-52(%rbp), %eax	# yN, tmp312
	movl	%eax, -20(%rbp)	# tmp312, yM
	jmp	.L72	#
.L59:
	.loc 1 333 0
	movl	-52(%rbp), %eax	# yN, yN.52
	andl	$1, %eax	#, D.4322
	testl	%eax, %eax	# D.4322
	jne	.L60	#,
	.loc 1 335 0
	movl	-52(%rbp), %eax	# yN, tmp316
	sarl	%eax	# tmp315
	movl	%eax, -20(%rbp)	# tmp315, yM
	jmp	.L72	#
.L60:
	.loc 1 339 0
	movq	-64(%rbp), %rax	# pix, tmp317
	movl	4(%rax), %eax	# pix_33(D)->mb_addr, D.4320
	leal	1(%rax), %edx	#, D.4320
	movq	-64(%rbp), %rax	# pix, tmp318
	movl	%edx, 4(%rax)	# D.4320, pix_33(D)->mb_addr
	.loc 1 340 0
	movl	-52(%rbp), %eax	# yN, tmp322
	sarl	%eax	# tmp321
	movl	%eax, -20(%rbp)	# tmp321, yM
	jmp	.L72	#
.L57:
	.loc 1 348 0
	movq	-16(%rbp), %rax	# currMb, tmp323
	movl	536(%rax), %edx	# currMb_24->mbAddrA, D.4320
	movq	-64(%rbp), %rax	# pix, tmp324
	movl	%edx, 4(%rax)	# D.4320, pix_33(D)->mb_addr
	.loc 1 349 0
	movq	-16(%rbp), %rax	# currMb, tmp325
	movl	552(%rax), %edx	# currMb_24->mbAvailA, D.4320
	movq	-64(%rbp), %rax	# pix, tmp326
	movl	%edx, (%rax)	# D.4320, pix_33(D)->available
	.loc 1 350 0
	movq	-16(%rbp), %rax	# currMb, tmp327
	movl	552(%rax), %eax	# currMb_24->mbAvailA, D.4320
	testl	%eax, %eax	# D.4320
	je	.L72	#,
	.loc 1 352 0
	movq	img(%rip), %rax	# img, img.53
	movq	14168(%rax), %rdx	# img.53_100->mb_data, D.4318
	movq	-16(%rbp), %rax	# currMb, tmp328
	movl	536(%rax), %eax	# currMb_24->mbAddrA, D.4320
	cltq
	imulq	$632, %rax, %rax	#, D.4319, D.4319
	addq	%rdx, %rax	# D.4318, D.4318
	movl	532(%rax), %eax	# _105->mb_field, D.4320
	testl	%eax, %eax	# D.4320
	jne	.L62	#,
	.loc 1 354 0
	movq	-64(%rbp), %rax	# pix, tmp329
	movl	4(%rax), %eax	# pix_33(D)->mb_addr, D.4320
	leal	1(%rax), %edx	#, D.4320
	movq	-64(%rbp), %rax	# pix, tmp330
	movl	%edx, 4(%rax)	# D.4320, pix_33(D)->mb_addr
	.loc 1 355 0
	movl	-52(%rbp), %eax	# yN, tmp331
	movl	%eax, -20(%rbp)	# tmp331, yM
	jmp	.L72	#
.L62:
	.loc 1 359 0
	movl	-52(%rbp), %eax	# yN, yN.54
	andl	$1, %eax	#, D.4322
	testl	%eax, %eax	# D.4322
	jne	.L63	#,
	.loc 1 361 0
	movl	-24(%rbp), %eax	# maxH, tmp332
	movl	-52(%rbp), %edx	# yN, tmp333
	addl	%edx, %eax	# tmp333, D.4320
	sarl	%eax	# tmp334
	movl	%eax, -20(%rbp)	# tmp334, yM
	jmp	.L72	#
.L63:
	.loc 1 365 0
	movq	-64(%rbp), %rax	# pix, tmp335
	movl	4(%rax), %eax	# pix_33(D)->mb_addr, D.4320
	leal	1(%rax), %edx	#, D.4320
	movq	-64(%rbp), %rax	# pix, tmp336
	movl	%edx, 4(%rax)	# D.4320, pix_33(D)->mb_addr
	.loc 1 366 0
	movl	-24(%rbp), %eax	# maxH, tmp337
	movl	-52(%rbp), %edx	# yN, tmp338
	addl	%edx, %eax	# tmp338, D.4320
	sarl	%eax	# tmp339
	movl	%eax, -20(%rbp)	# tmp339, yM
	jmp	.L72	#
.L56:
	.loc 1 375 0
	movl	-44(%rbp), %eax	# curr_mb_nr, tmp340
	andl	$1, %eax	#, D.4321
	testl	%eax, %eax	# D.4321
	jne	.L64	#,
	.loc 1 378 0
	movq	-16(%rbp), %rax	# currMb, tmp341
	movl	536(%rax), %edx	# currMb_24->mbAddrA, D.4320
	movq	-64(%rbp), %rax	# pix, tmp342
	movl	%edx, 4(%rax)	# D.4320, pix_33(D)->mb_addr
	.loc 1 379 0
	movq	-16(%rbp), %rax	# currMb, tmp343
	movl	552(%rax), %edx	# currMb_24->mbAvailA, D.4320
	movq	-64(%rbp), %rax	# pix, tmp344
	movl	%edx, (%rax)	# D.4320, pix_33(D)->available
	.loc 1 380 0
	movq	-16(%rbp), %rax	# currMb, tmp345
	movl	552(%rax), %eax	# currMb_24->mbAvailA, D.4320
	testl	%eax, %eax	# D.4320
	je	.L72	#,
	.loc 1 382 0
	movq	img(%rip), %rax	# img, img.55
	movq	14168(%rax), %rdx	# img.55_122->mb_data, D.4318
	movq	-16(%rbp), %rax	# currMb, tmp346
	movl	536(%rax), %eax	# currMb_24->mbAddrA, D.4320
	cltq
	imulq	$632, %rax, %rax	#, D.4319, D.4319
	addq	%rdx, %rax	# D.4318, D.4318
	movl	532(%rax), %eax	# _127->mb_field, D.4320
	testl	%eax, %eax	# D.4320
	jne	.L66	#,
	.loc 1 384 0
	movl	-24(%rbp), %eax	# maxH, tmp347
	movl	%eax, %edx	# tmp347, tmp348
	shrl	$31, %edx	#, tmp348
	addl	%edx, %eax	# tmp348, tmp349
	sarl	%eax	# tmp350
	cmpl	-52(%rbp), %eax	# yN, D.4320
	jle	.L67	#,
	.loc 1 386 0
	movl	-52(%rbp), %eax	# yN, tmp354
	addl	%eax, %eax	# tmp353
	movl	%eax, -20(%rbp)	# tmp353, yM
	jmp	.L72	#
.L67:
	.loc 1 390 0
	movq	-64(%rbp), %rax	# pix, tmp355
	movl	4(%rax), %eax	# pix_33(D)->mb_addr, D.4320
	leal	1(%rax), %edx	#, D.4320
	movq	-64(%rbp), %rax	# pix, tmp356
	movl	%edx, 4(%rax)	# D.4320, pix_33(D)->mb_addr
	.loc 1 391 0
	movl	-52(%rbp), %eax	# yN, tmp357
	addl	%eax, %eax	# D.4320
	subl	-24(%rbp), %eax	# maxH, tmp359
	movl	%eax, -20(%rbp)	# tmp359, yM
	jmp	.L72	#
.L66:
	.loc 1 396 0
	movl	-52(%rbp), %eax	# yN, tmp360
	movl	%eax, -20(%rbp)	# tmp360, yM
	jmp	.L72	#
.L64:
	.loc 1 403 0
	movq	-16(%rbp), %rax	# currMb, tmp361
	movl	536(%rax), %edx	# currMb_24->mbAddrA, D.4320
	movq	-64(%rbp), %rax	# pix, tmp362
	movl	%edx, 4(%rax)	# D.4320, pix_33(D)->mb_addr
	.loc 1 404 0
	movq	-16(%rbp), %rax	# currMb, tmp363
	movl	552(%rax), %edx	# currMb_24->mbAvailA, D.4320
	movq	-64(%rbp), %rax	# pix, tmp364
	movl	%edx, (%rax)	# D.4320, pix_33(D)->available
	.loc 1 405 0
	movq	-16(%rbp), %rax	# currMb, tmp365
	movl	552(%rax), %eax	# currMb_24->mbAvailA, D.4320
	testl	%eax, %eax	# D.4320
	je	.L72	#,
	.loc 1 407 0
	movq	img(%rip), %rax	# img, img.56
	movq	14168(%rax), %rdx	# img.56_139->mb_data, D.4318
	movq	-16(%rbp), %rax	# currMb, tmp366
	movl	536(%rax), %eax	# currMb_24->mbAddrA, D.4320
	cltq
	imulq	$632, %rax, %rax	#, D.4319, D.4319
	addq	%rdx, %rax	# D.4318, D.4318
	movl	532(%rax), %eax	# _144->mb_field, D.4320
	testl	%eax, %eax	# D.4320
	jne	.L69	#,
	.loc 1 409 0
	movl	-24(%rbp), %eax	# maxH, tmp367
	movl	%eax, %edx	# tmp367, tmp368
	shrl	$31, %edx	#, tmp368
	addl	%edx, %eax	# tmp368, tmp369
	sarl	%eax	# tmp370
	cmpl	-52(%rbp), %eax	# yN, D.4320
	jle	.L70	#,
	.loc 1 411 0
	movl	-52(%rbp), %eax	# yN, tmp371
	addl	%eax, %eax	# D.4320
	addl	$1, %eax	#, tmp372
	movl	%eax, -20(%rbp)	# tmp372, yM
	jmp	.L72	#
.L70:
	.loc 1 415 0
	movq	-64(%rbp), %rax	# pix, tmp373
	movl	4(%rax), %eax	# pix_33(D)->mb_addr, D.4320
	leal	1(%rax), %edx	#, D.4320
	movq	-64(%rbp), %rax	# pix, tmp374
	movl	%edx, 4(%rax)	# D.4320, pix_33(D)->mb_addr
	.loc 1 416 0
	movl	-52(%rbp), %eax	# yN, tmp375
	addl	%eax, %eax	# D.4320
	addl	$1, %eax	#, D.4320
	subl	-24(%rbp), %eax	# maxH, tmp377
	movl	%eax, -20(%rbp)	# tmp377, yM
	jmp	.L72	#
.L69:
	.loc 1 421 0
	movq	-64(%rbp), %rax	# pix, tmp378
	movl	4(%rax), %eax	# pix_33(D)->mb_addr, D.4320
	leal	1(%rax), %edx	#, D.4320
	movq	-64(%rbp), %rax	# pix, tmp379
	movl	%edx, 4(%rax)	# D.4320, pix_33(D)->mb_addr
	.loc 1 422 0
	movl	-52(%rbp), %eax	# yN, tmp380
	movl	%eax, -20(%rbp)	# tmp380, yM
	jmp	.L72	#
.L45:
	.loc 1 432 0
	cmpl	$0, -48(%rbp)	#, xN
	js	.L73	#,
	.loc 1 432 0 is_stmt 0 discriminator 1
	movl	-48(%rbp), %eax	# xN, tmp381
	cmpl	-28(%rbp), %eax	# maxW, tmp381
	jge	.L73	#,
	.loc 1 434 0 is_stmt 1
	cmpl	$0, -52(%rbp)	#, yN
	jns	.L74	#,
	.loc 1 436 0
	movq	-16(%rbp), %rax	# currMb, tmp382
	movl	532(%rax), %eax	# currMb_24->mb_field, D.4320
	testl	%eax, %eax	# D.4320
	jne	.L75	#,
	.loc 1 439 0
	movl	-44(%rbp), %eax	# curr_mb_nr, tmp383
	andl	$1, %eax	#, D.4321
	testl	%eax, %eax	# D.4321
	jne	.L76	#,
	.loc 1 442 0
	movq	-16(%rbp), %rax	# currMb, tmp384
	movl	540(%rax), %edx	# currMb_24->mbAddrB, D.4320
	movq	-64(%rbp), %rax	# pix, tmp385
	movl	%edx, 4(%rax)	# D.4320, pix_33(D)->mb_addr
	.loc 1 445 0
	movq	-16(%rbp), %rax	# currMb, tmp386
	movl	556(%rax), %eax	# currMb_24->mbAvailB, D.4320
	testl	%eax, %eax	# D.4320
	je	.L77	#,
	.loc 1 447 0
	movq	img(%rip), %rax	# img, img.57
	movl	72636(%rax), %eax	# img.57_161->DeblockCall, D.4320
	cmpl	$1, %eax	#, D.4320
	jne	.L78	#,
	.loc 1 447 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.58
	movq	14168(%rax), %rdx	# img.58_163->mb_data, D.4318
	movq	-16(%rbp), %rax	# currMb, tmp387
	movl	540(%rax), %eax	# currMb_24->mbAddrB, D.4320
	cltq
	imulq	$632, %rax, %rax	#, D.4319, D.4319
	addq	%rdx, %rax	# D.4318, D.4318
	movl	532(%rax), %eax	# _168->mb_field, D.4320
	testl	%eax, %eax	# D.4320
	jne	.L77	#,
.L78:
	.loc 1 448 0 is_stmt 1
	movq	-64(%rbp), %rax	# pix, tmp388
	movl	4(%rax), %eax	# pix_33(D)->mb_addr, D.4320
	leal	1(%rax), %edx	#, D.4320
	movq	-64(%rbp), %rax	# pix, tmp389
	movl	%edx, 4(%rax)	# D.4320, pix_33(D)->mb_addr
.L77:
	.loc 1 451 0
	movq	-16(%rbp), %rax	# currMb, tmp390
	movl	556(%rax), %edx	# currMb_24->mbAvailB, D.4320
	movq	-64(%rbp), %rax	# pix, tmp391
	movl	%edx, (%rax)	# D.4320, pix_33(D)->available
	.loc 1 452 0
	movl	-52(%rbp), %eax	# yN, tmp392
	movl	%eax, -20(%rbp)	# tmp392, yM
	jmp	.L84	#
.L76:
	.loc 1 457 0
	movl	-44(%rbp), %eax	# curr_mb_nr, tmp393
	subl	$1, %eax	#, D.4321
	movl	%eax, %edx	# D.4321, D.4320
	movq	-64(%rbp), %rax	# pix, tmp394
	movl	%edx, 4(%rax)	# D.4320, pix_33(D)->mb_addr
	.loc 1 458 0
	movq	-64(%rbp), %rax	# pix, tmp395
	movl	$1, (%rax)	#, pix_33(D)->available
	.loc 1 459 0
	movl	-52(%rbp), %eax	# yN, tmp396
	movl	%eax, -20(%rbp)	# tmp396, yM
	jmp	.L84	#
.L75:
	.loc 1 465 0
	movl	-44(%rbp), %eax	# curr_mb_nr, tmp397
	andl	$1, %eax	#, D.4321
	testl	%eax, %eax	# D.4321
	jne	.L81	#,
	.loc 1 468 0
	movq	-16(%rbp), %rax	# currMb, tmp398
	movl	540(%rax), %edx	# currMb_24->mbAddrB, D.4320
	movq	-64(%rbp), %rax	# pix, tmp399
	movl	%edx, 4(%rax)	# D.4320, pix_33(D)->mb_addr
	.loc 1 469 0
	movq	-16(%rbp), %rax	# currMb, tmp400
	movl	556(%rax), %edx	# currMb_24->mbAvailB, D.4320
	movq	-64(%rbp), %rax	# pix, tmp401
	movl	%edx, (%rax)	# D.4320, pix_33(D)->available
	.loc 1 470 0
	movq	-16(%rbp), %rax	# currMb, tmp402
	movl	556(%rax), %eax	# currMb_24->mbAvailB, D.4320
	testl	%eax, %eax	# D.4320
	je	.L84	#,
	.loc 1 472 0
	movq	img(%rip), %rax	# img, img.59
	movq	14168(%rax), %rdx	# img.59_181->mb_data, D.4318
	movq	-16(%rbp), %rax	# currMb, tmp403
	movl	540(%rax), %eax	# currMb_24->mbAddrB, D.4320
	cltq
	imulq	$632, %rax, %rax	#, D.4319, D.4319
	addq	%rdx, %rax	# D.4318, D.4318
	movl	532(%rax), %eax	# _186->mb_field, D.4320
	testl	%eax, %eax	# D.4320
	jne	.L83	#,
	.loc 1 474 0
	movq	-64(%rbp), %rax	# pix, tmp404
	movl	4(%rax), %eax	# pix_33(D)->mb_addr, D.4320
	leal	1(%rax), %edx	#, D.4320
	movq	-64(%rbp), %rax	# pix, tmp405
	movl	%edx, 4(%rax)	# D.4320, pix_33(D)->mb_addr
	.loc 1 475 0
	movl	-52(%rbp), %eax	# yN, tmp409
	addl	%eax, %eax	# tmp408
	movl	%eax, -20(%rbp)	# tmp408, yM
	jmp	.L84	#
.L83:
	.loc 1 479 0
	movl	-52(%rbp), %eax	# yN, tmp410
	movl	%eax, -20(%rbp)	# tmp410, yM
	jmp	.L84	#
.L81:
	.loc 1 486 0
	movq	-16(%rbp), %rax	# currMb, tmp411
	movl	540(%rax), %eax	# currMb_24->mbAddrB, D.4320
	leal	1(%rax), %edx	#, D.4320
	movq	-64(%rbp), %rax	# pix, tmp412
	movl	%edx, 4(%rax)	# D.4320, pix_33(D)->mb_addr
	.loc 1 487 0
	movq	-16(%rbp), %rax	# currMb, tmp413
	movl	556(%rax), %edx	# currMb_24->mbAvailB, D.4320
	movq	-64(%rbp), %rax	# pix, tmp414
	movl	%edx, (%rax)	# D.4320, pix_33(D)->available
	.loc 1 488 0
	movl	-52(%rbp), %eax	# yN, tmp415
	movl	%eax, -20(%rbp)	# tmp415, yM
	.loc 1 434 0
	jmp	.L72	#
.L74:
	.loc 1 496 0
	cmpl	$0, -52(%rbp)	#, yN
	jne	.L85	#,
	.loc 1 496 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.60
	movl	72636(%rax), %eax	# img.60_196->DeblockCall, D.4320
	cmpl	$2, %eax	#, D.4320
	jne	.L85	#,
	.loc 1 498 0 is_stmt 1
	movq	-16(%rbp), %rax	# currMb, tmp416
	movl	540(%rax), %eax	# currMb_24->mbAddrB, D.4320
	leal	1(%rax), %edx	#, D.4320
	movq	-64(%rbp), %rax	# pix, tmp417
	movl	%edx, 4(%rax)	# D.4320, pix_33(D)->mb_addr
	.loc 1 499 0
	movq	-64(%rbp), %rax	# pix, tmp418
	movl	$1, (%rax)	#, pix_33(D)->available
	.loc 1 500 0
	movl	-52(%rbp), %eax	# yN, tmp422
	subl	$1, %eax	#, tmp421
	movl	%eax, -20(%rbp)	# tmp421, yM
	jmp	.L84	#
.L85:
	.loc 1 503 0
	cmpl	$0, -52(%rbp)	#, yN
	js	.L84	#,
	.loc 1 503 0 is_stmt 0 discriminator 1
	movl	-52(%rbp), %eax	# yN, tmp423
	cmpl	-24(%rbp), %eax	# maxH, tmp423
	jge	.L84	#,
	.loc 1 505 0 is_stmt 1
	movl	-44(%rbp), %edx	# curr_mb_nr, curr_mb_nr.61
	movq	-64(%rbp), %rax	# pix, tmp424
	movl	%edx, 4(%rax)	# curr_mb_nr.61, pix_33(D)->mb_addr
	.loc 1 506 0
	movq	-64(%rbp), %rax	# pix, tmp425
	movl	$1, (%rax)	#, pix_33(D)->available
	.loc 1 507 0
	movl	-52(%rbp), %eax	# yN, tmp426
	movl	%eax, -20(%rbp)	# tmp426, yM
	.loc 1 434 0
	jmp	.L72	#
.L84:
	jmp	.L72	#
.L73:
	.loc 1 513 0
	cmpl	$0, -52(%rbp)	#, yN
	jns	.L72	#,
	.loc 1 515 0
	movq	-16(%rbp), %rax	# currMb, tmp427
	movl	532(%rax), %eax	# currMb_24->mb_field, D.4320
	testl	%eax, %eax	# D.4320
	jne	.L86	#,
	.loc 1 518 0
	movl	-44(%rbp), %eax	# curr_mb_nr, tmp428
	andl	$1, %eax	#, D.4321
	testl	%eax, %eax	# D.4321
	jne	.L87	#,
	.loc 1 521 0
	movq	-16(%rbp), %rax	# currMb, tmp429
	movl	544(%rax), %eax	# currMb_24->mbAddrC, D.4320
	leal	1(%rax), %edx	#, D.4320
	movq	-64(%rbp), %rax	# pix, tmp430
	movl	%edx, 4(%rax)	# D.4320, pix_33(D)->mb_addr
	.loc 1 522 0
	movq	-16(%rbp), %rax	# currMb, tmp431
	movl	560(%rax), %edx	# currMb_24->mbAvailC, D.4320
	movq	-64(%rbp), %rax	# pix, tmp432
	movl	%edx, (%rax)	# D.4320, pix_33(D)->available
	.loc 1 523 0
	movl	-52(%rbp), %eax	# yN, tmp433
	movl	%eax, -20(%rbp)	# tmp433, yM
	jmp	.L72	#
.L87:
	.loc 1 528 0
	movq	-64(%rbp), %rax	# pix, tmp434
	movl	$0, (%rax)	#, pix_33(D)->available
	jmp	.L72	#
.L86:
	.loc 1 534 0
	movl	-44(%rbp), %eax	# curr_mb_nr, tmp435
	andl	$1, %eax	#, D.4321
	testl	%eax, %eax	# D.4321
	jne	.L89	#,
	.loc 1 537 0
	movq	-16(%rbp), %rax	# currMb, tmp436
	movl	544(%rax), %edx	# currMb_24->mbAddrC, D.4320
	movq	-64(%rbp), %rax	# pix, tmp437
	movl	%edx, 4(%rax)	# D.4320, pix_33(D)->mb_addr
	.loc 1 538 0
	movq	-16(%rbp), %rax	# currMb, tmp438
	movl	560(%rax), %edx	# currMb_24->mbAvailC, D.4320
	movq	-64(%rbp), %rax	# pix, tmp439
	movl	%edx, (%rax)	# D.4320, pix_33(D)->available
	.loc 1 539 0
	movq	-16(%rbp), %rax	# currMb, tmp440
	movl	560(%rax), %eax	# currMb_24->mbAvailC, D.4320
	testl	%eax, %eax	# D.4320
	je	.L72	#,
	.loc 1 541 0
	movq	img(%rip), %rax	# img, img.62
	movq	14168(%rax), %rdx	# img.62_213->mb_data, D.4318
	movq	-16(%rbp), %rax	# currMb, tmp441
	movl	544(%rax), %eax	# currMb_24->mbAddrC, D.4320
	cltq
	imulq	$632, %rax, %rax	#, D.4319, D.4319
	addq	%rdx, %rax	# D.4318, D.4318
	movl	532(%rax), %eax	# _218->mb_field, D.4320
	testl	%eax, %eax	# D.4320
	jne	.L91	#,
	.loc 1 543 0
	movq	-64(%rbp), %rax	# pix, tmp442
	movl	4(%rax), %eax	# pix_33(D)->mb_addr, D.4320
	leal	1(%rax), %edx	#, D.4320
	movq	-64(%rbp), %rax	# pix, tmp443
	movl	%edx, 4(%rax)	# D.4320, pix_33(D)->mb_addr
	.loc 1 544 0
	movl	-52(%rbp), %eax	# yN, tmp447
	addl	%eax, %eax	# tmp446
	movl	%eax, -20(%rbp)	# tmp446, yM
	jmp	.L72	#
.L91:
	.loc 1 548 0
	movl	-52(%rbp), %eax	# yN, tmp448
	movl	%eax, -20(%rbp)	# tmp448, yM
	jmp	.L72	#
.L89:
	.loc 1 555 0
	movq	-16(%rbp), %rax	# currMb, tmp449
	movl	544(%rax), %eax	# currMb_24->mbAddrC, D.4320
	leal	1(%rax), %edx	#, D.4320
	movq	-64(%rbp), %rax	# pix, tmp450
	movl	%edx, 4(%rax)	# D.4320, pix_33(D)->mb_addr
	.loc 1 556 0
	movq	-16(%rbp), %rax	# currMb, tmp451
	movl	560(%rax), %edx	# currMb_24->mbAvailC, D.4320
	movq	-64(%rbp), %rax	# pix, tmp452
	movl	%edx, (%rax)	# D.4320, pix_33(D)->available
	.loc 1 557 0
	movl	-52(%rbp), %eax	# yN, tmp453
	movl	%eax, -20(%rbp)	# tmp453, yM
.L72:
	.loc 1 563 0
	movq	-64(%rbp), %rax	# pix, tmp454
	movl	(%rax), %eax	# pix_33(D)->available, D.4320
	testl	%eax, %eax	# D.4320
	jne	.L92	#,
	.loc 1 563 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.63
	movl	72636(%rax), %eax	# img.63_229->DeblockCall, D.4320
	testl	%eax, %eax	# D.4320
	je	.L39	#,
.L92:
	.loc 1 565 0 is_stmt 1
	movl	-28(%rbp), %eax	# maxW, tmp455
	movl	-48(%rbp), %edx	# xN, tmp456
	addl	%edx, %eax	# tmp456, D.4320
	cltd
	idivl	-28(%rbp)	# maxW
	movq	-64(%rbp), %rax	# pix, tmp459
	movl	%edx, 8(%rax)	# D.4320, pix_33(D)->x
	.loc 1 566 0
	movl	-24(%rbp), %eax	# maxH, tmp460
	movl	-20(%rbp), %edx	# yM, tmp461
	addl	%edx, %eax	# tmp461, D.4320
	cltd
	idivl	-24(%rbp)	# maxH
	movq	-64(%rbp), %rax	# pix, tmp464
	movl	%edx, 12(%rax)	# D.4320, pix_33(D)->y
	.loc 1 567 0
	movq	-64(%rbp), %rax	# pix, tmp465
	leaq	20(%rax), %rdx	#, D.4323
	movq	-64(%rbp), %rax	# pix, tmp466
	leaq	16(%rax), %rcx	#, D.4323
	movq	-64(%rbp), %rax	# pix, tmp467
	movl	4(%rax), %eax	# pix_33(D)->mb_addr, D.4320
	movq	%rcx, %rsi	# D.4323,
	movl	%eax, %edi	# D.4320,
	call	get_mb_pos	#
	.loc 1 568 0
	cmpl	$0, -56(%rbp)	#, luma
	je	.L93	#,
	.loc 1 570 0
	movq	-64(%rbp), %rax	# pix, tmp468
	movl	16(%rax), %edx	# pix_33(D)->pos_x, D.4320
	movq	-64(%rbp), %rax	# pix, tmp469
	movl	8(%rax), %eax	# pix_33(D)->x, D.4320
	addl	%eax, %edx	# D.4320, D.4320
	movq	-64(%rbp), %rax	# pix, tmp470
	movl	%edx, 16(%rax)	# D.4320, pix_33(D)->pos_x
	.loc 1 571 0
	movq	-64(%rbp), %rax	# pix, tmp471
	movl	20(%rax), %edx	# pix_33(D)->pos_y, D.4320
	movq	-64(%rbp), %rax	# pix, tmp472
	movl	12(%rax), %eax	# pix_33(D)->y, D.4320
	addl	%eax, %edx	# D.4320, D.4320
	movq	-64(%rbp), %rax	# pix, tmp473
	movl	%edx, 20(%rax)	# D.4320, pix_33(D)->pos_y
	jmp	.L39	#
.L93:
	.loc 1 575 0
	movq	-64(%rbp), %rax	# pix, tmp474
	movl	16(%rax), %ecx	# pix_33(D)->pos_x, D.4320
	movq	img(%rip), %rax	# img, img.64
	movl	72708(%rax), %ebx	# img.64_245->mb_cr_size_x, D.4320
	movl	$16, %eax	#, tmp477
	cltd
	idivl	%ebx	# D.4320
	movl	%eax, %esi	# tmp475, D.4320
	movl	%ecx, %eax	# D.4320, tmp478
	cltd
	idivl	%esi	# D.4320
	movl	%eax, %edx	# tmp478, D.4320
	movq	-64(%rbp), %rax	# pix, tmp480
	movl	8(%rax), %eax	# pix_33(D)->x, D.4320
	addl	%eax, %edx	# D.4320, D.4320
	movq	-64(%rbp), %rax	# pix, tmp481
	movl	%edx, 16(%rax)	# D.4320, pix_33(D)->pos_x
	.loc 1 576 0
	movq	-64(%rbp), %rax	# pix, tmp482
	movl	20(%rax), %ecx	# pix_33(D)->pos_y, D.4320
	movq	img(%rip), %rax	# img, img.65
	movl	72712(%rax), %edi	# img.65_252->mb_cr_size_y, D.4320
	movl	$16, %eax	#, tmp485
	cltd
	idivl	%edi	# D.4320
	movl	%eax, %ebx	# tmp483, D.4320
	movl	%ecx, %eax	# D.4320, tmp486
	cltd
	idivl	%ebx	# D.4320
	movl	%eax, %edx	# tmp486, D.4320
	movq	-64(%rbp), %rax	# pix, tmp488
	movl	12(%rax), %eax	# pix_33(D)->y, D.4320
	addl	%eax, %edx	# D.4320, D.4320
	movq	-64(%rbp), %rax	# pix, tmp489
	movl	%edx, 20(%rax)	# D.4320, pix_33(D)->pos_y
.L39:
	.loc 1 579 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	getAffNeighbour, .-getAffNeighbour
	.section	.rodata
	.align 8
.LC0:
	.string	"getNeighbour: invalid macroblock number"
	.text
	.globl	getNeighbour
	.type	getNeighbour, @function
getNeighbour:
.LFB6:
	.loc 1 599 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -4(%rbp)	# curr_mb_nr, curr_mb_nr
	movl	%esi, -8(%rbp)	# xN, xN
	movl	%edx, -12(%rbp)	# yN, yN
	movl	%ecx, -16(%rbp)	# luma, luma
	movq	%r8, -24(%rbp)	# pix, pix
	.loc 1 600 0
	cmpl	$0, -4(%rbp)	#, curr_mb_nr
	jns	.L95	#,
	.loc 1 601 0
	movl	$100, %esi	#,
	movl	$.LC0, %edi	#,
	call	error	#
.L95:
	.loc 1 603 0
	movq	img(%rip), %rax	# img, img.66
	movl	72400(%rax), %eax	# img.66_2->MbaffFrameFlag, D.4324
	testl	%eax, %eax	# D.4324
	je	.L96	#,
	.loc 1 604 0
	movl	-4(%rbp), %eax	# curr_mb_nr, curr_mb_nr.67
	movq	-24(%rbp), %rdi	# pix, tmp63
	movl	-16(%rbp), %ecx	# luma, tmp64
	movl	-12(%rbp), %edx	# yN, tmp65
	movl	-8(%rbp), %esi	# xN, tmp66
	movq	%rdi, %r8	# tmp63,
	movl	%eax, %edi	# curr_mb_nr.67,
	call	getAffNeighbour	#
	jmp	.L94	#
.L96:
	.loc 1 606 0
	movl	-4(%rbp), %eax	# curr_mb_nr, curr_mb_nr.68
	movq	-24(%rbp), %rdi	# pix, tmp67
	movl	-16(%rbp), %ecx	# luma, tmp68
	movl	-12(%rbp), %edx	# yN, tmp69
	movl	-8(%rbp), %esi	# xN, tmp70
	movq	%rdi, %r8	# tmp67,
	movl	%eax, %edi	# curr_mb_nr.68,
	call	getNonAffNeighbour	#
.L94:
	.loc 1 607 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	getNeighbour, .-getNeighbour
	.globl	getLuma4x4Neighbour
	.type	getLuma4x4Neighbour, @function
getLuma4x4Neighbour:
.LFB7:
	.loc 1 629 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -20(%rbp)	# curr_mb_nr, curr_mb_nr
	movl	%esi, -24(%rbp)	# block_x, block_x
	movl	%edx, -28(%rbp)	# block_y, block_y
	movl	%ecx, -32(%rbp)	# rel_x, rel_x
	movl	%r8d, -36(%rbp)	# rel_y, rel_y
	movq	%r9, -48(%rbp)	# pix, pix
	.loc 1 630 0
	movl	-24(%rbp), %eax	# block_x, tmp70
	leal	0(,%rax,4), %edx	#, D.4326
	movl	-32(%rbp), %eax	# rel_x, tmp74
	addl	%edx, %eax	# D.4326, tmp73
	movl	%eax, -8(%rbp)	# tmp73, x
	.loc 1 631 0
	movl	-28(%rbp), %eax	# block_y, tmp75
	leal	0(,%rax,4), %edx	#, D.4326
	movl	-36(%rbp), %eax	# rel_y, tmp79
	addl	%edx, %eax	# D.4326, tmp78
	movl	%eax, -4(%rbp)	# tmp78, y
	.loc 1 633 0
	movq	-48(%rbp), %rcx	# pix, tmp80
	movl	-4(%rbp), %edx	# y, tmp81
	movl	-8(%rbp), %esi	# x, tmp82
	movl	-20(%rbp), %eax	# curr_mb_nr, tmp83
	movq	%rcx, %r8	# tmp80,
	movl	$1, %ecx	#,
	movl	%eax, %edi	# tmp83,
	call	getNeighbour	#
	.loc 1 635 0
	movq	-48(%rbp), %rax	# pix, tmp84
	movl	(%rax), %eax	# pix_10(D)->available, D.4326
	testl	%eax, %eax	# D.4326
	je	.L98	#,
	.loc 1 637 0
	movq	-48(%rbp), %rax	# pix, tmp85
	movl	8(%rax), %eax	# pix_10(D)->x, D.4326
	leal	3(%rax), %edx	#, tmp87
	testl	%eax, %eax	# tmp86
	cmovs	%edx, %eax	# tmp87,, tmp86
	sarl	$2, %eax	#, tmp88
	movl	%eax, %edx	# tmp88, D.4326
	movq	-48(%rbp), %rax	# pix, tmp89
	movl	%edx, 8(%rax)	# D.4326, pix_10(D)->x
	.loc 1 638 0
	movq	-48(%rbp), %rax	# pix, tmp90
	movl	12(%rax), %eax	# pix_10(D)->y, D.4326
	leal	3(%rax), %edx	#, tmp92
	testl	%eax, %eax	# tmp91
	cmovs	%edx, %eax	# tmp92,, tmp91
	sarl	$2, %eax	#, tmp93
	movl	%eax, %edx	# tmp93, D.4326
	movq	-48(%rbp), %rax	# pix, tmp94
	movl	%edx, 12(%rax)	# D.4326, pix_10(D)->y
	.loc 1 639 0
	movq	-48(%rbp), %rax	# pix, tmp95
	movl	16(%rax), %eax	# pix_10(D)->pos_x, D.4326
	leal	3(%rax), %edx	#, tmp97
	testl	%eax, %eax	# tmp96
	cmovs	%edx, %eax	# tmp97,, tmp96
	sarl	$2, %eax	#, tmp98
	movl	%eax, %edx	# tmp98, D.4326
	movq	-48(%rbp), %rax	# pix, tmp99
	movl	%edx, 16(%rax)	# D.4326, pix_10(D)->pos_x
	.loc 1 640 0
	movq	-48(%rbp), %rax	# pix, tmp100
	movl	20(%rax), %eax	# pix_10(D)->pos_y, D.4326
	leal	3(%rax), %edx	#, tmp102
	testl	%eax, %eax	# tmp101
	cmovs	%edx, %eax	# tmp102,, tmp101
	sarl	$2, %eax	#, tmp103
	movl	%eax, %edx	# tmp103, D.4326
	movq	-48(%rbp), %rax	# pix, tmp104
	movl	%edx, 20(%rax)	# D.4326, pix_10(D)->pos_y
.L98:
	.loc 1 642 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	getLuma4x4Neighbour, .-getLuma4x4Neighbour
	.globl	getChroma4x4Neighbour
	.type	getChroma4x4Neighbour, @function
getChroma4x4Neighbour:
.LFB8:
	.loc 1 664 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -20(%rbp)	# curr_mb_nr, curr_mb_nr
	movl	%esi, -24(%rbp)	# block_x, block_x
	movl	%edx, -28(%rbp)	# block_y, block_y
	movl	%ecx, -32(%rbp)	# rel_x, rel_x
	movl	%r8d, -36(%rbp)	# rel_y, rel_y
	movq	%r9, -48(%rbp)	# pix, pix
	.loc 1 665 0
	movl	-24(%rbp), %eax	# block_x, tmp70
	leal	0(,%rax,4), %edx	#, D.4327
	movl	-32(%rbp), %eax	# rel_x, tmp74
	addl	%edx, %eax	# D.4327, tmp73
	movl	%eax, -8(%rbp)	# tmp73, x
	.loc 1 666 0
	movl	-28(%rbp), %eax	# block_y, tmp75
	leal	0(,%rax,4), %edx	#, D.4327
	movl	-36(%rbp), %eax	# rel_y, tmp79
	addl	%edx, %eax	# D.4327, tmp78
	movl	%eax, -4(%rbp)	# tmp78, y
	.loc 1 668 0
	movq	-48(%rbp), %rcx	# pix, tmp80
	movl	-4(%rbp), %edx	# y, tmp81
	movl	-8(%rbp), %esi	# x, tmp82
	movl	-20(%rbp), %eax	# curr_mb_nr, tmp83
	movq	%rcx, %r8	# tmp80,
	movl	$0, %ecx	#,
	movl	%eax, %edi	# tmp83,
	call	getNeighbour	#
	.loc 1 670 0
	movq	-48(%rbp), %rax	# pix, tmp84
	movl	(%rax), %eax	# pix_10(D)->available, D.4327
	testl	%eax, %eax	# D.4327
	je	.L100	#,
	.loc 1 672 0
	movq	-48(%rbp), %rax	# pix, tmp85
	movl	8(%rax), %eax	# pix_10(D)->x, D.4327
	leal	3(%rax), %edx	#, tmp87
	testl	%eax, %eax	# tmp86
	cmovs	%edx, %eax	# tmp87,, tmp86
	sarl	$2, %eax	#, tmp88
	movl	%eax, %edx	# tmp88, D.4327
	movq	-48(%rbp), %rax	# pix, tmp89
	movl	%edx, 8(%rax)	# D.4327, pix_10(D)->x
	.loc 1 673 0
	movq	-48(%rbp), %rax	# pix, tmp90
	movl	12(%rax), %eax	# pix_10(D)->y, D.4327
	leal	3(%rax), %edx	#, tmp92
	testl	%eax, %eax	# tmp91
	cmovs	%edx, %eax	# tmp92,, tmp91
	sarl	$2, %eax	#, tmp93
	movl	%eax, %edx	# tmp93, D.4327
	movq	-48(%rbp), %rax	# pix, tmp94
	movl	%edx, 12(%rax)	# D.4327, pix_10(D)->y
	.loc 1 674 0
	movq	-48(%rbp), %rax	# pix, tmp95
	movl	16(%rax), %eax	# pix_10(D)->pos_x, D.4327
	leal	3(%rax), %edx	#, tmp97
	testl	%eax, %eax	# tmp96
	cmovs	%edx, %eax	# tmp97,, tmp96
	sarl	$2, %eax	#, tmp98
	movl	%eax, %edx	# tmp98, D.4327
	movq	-48(%rbp), %rax	# pix, tmp99
	movl	%edx, 16(%rax)	# D.4327, pix_10(D)->pos_x
	.loc 1 675 0
	movq	-48(%rbp), %rax	# pix, tmp100
	movl	20(%rax), %eax	# pix_10(D)->pos_y, D.4327
	leal	3(%rax), %edx	#, tmp102
	testl	%eax, %eax	# tmp101
	cmovs	%edx, %eax	# tmp102,, tmp101
	sarl	$2, %eax	#, tmp103
	movl	%eax, %edx	# tmp103, D.4327
	movq	-48(%rbp), %rax	# pix, tmp104
	movl	%edx, 20(%rax)	# D.4327, pix_10(D)->pos_y
.L100:
	.loc 1 677 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	getChroma4x4Neighbour, .-getChroma4x4Neighbour
.Letext0:
	.file 2 "defines.h"
	.file 3 "parsetcommon.h"
	.file 4 "/usr/include/stdint.h"
	.file 5 "global.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1aef
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF346
	.byte	0x1
	.long	.LASF347
	.long	.LASF348
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
	.uleb128 0x4
	.long	0x57
	.long	0x75
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF7
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF8
	.uleb128 0x6
	.long	.LASF11
	.byte	0x2
	.byte	0x1e
	.long	0x34
	.uleb128 0x7
	.byte	0x4
	.byte	0x3
	.byte	0x2a
	.long	0xa3
	.uleb128 0x8
	.long	.LASF9
	.sleb128 0
	.uleb128 0x8
	.long	.LASF10
	.sleb128 1
	.byte	0
	.uleb128 0x6
	.long	.LASF12
	.byte	0x3
	.byte	0x2d
	.long	0x8e
	.uleb128 0x4
	.long	0x57
	.long	0xbe
	.uleb128 0x5
	.long	0x75
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.long	0x83
	.uleb128 0x6
	.long	.LASF13
	.byte	0x4
	.byte	0x28
	.long	0x5e
	.uleb128 0x6
	.long	.LASF14
	.byte	0x5
	.byte	0x3e
	.long	0xc4
	.uleb128 0xa
	.byte	0x68
	.byte	0x5
	.byte	0xcf
	.long	0x1ca
	.uleb128 0xb
	.long	.LASF15
	.byte	0x5
	.byte	0xd1
	.long	0x42
	.byte	0
	.uleb128 0xb
	.long	.LASF16
	.byte	0x5
	.byte	0xd1
	.long	0x42
	.byte	0x4
	.uleb128 0xb
	.long	.LASF17
	.byte	0x5
	.byte	0xd2
	.long	0x42
	.byte	0x8
	.uleb128 0xb
	.long	.LASF18
	.byte	0x5
	.byte	0xd3
	.long	0x42
	.byte	0xc
	.uleb128 0xb
	.long	.LASF19
	.byte	0x5
	.byte	0xd4
	.long	0x42
	.byte	0x10
	.uleb128 0xb
	.long	.LASF20
	.byte	0x5
	.byte	0xd5
	.long	0xbe
	.byte	0x18
	.uleb128 0xb
	.long	.LASF21
	.byte	0x5
	.byte	0xd6
	.long	0x1ca
	.byte	0x20
	.uleb128 0xb
	.long	.LASF22
	.byte	0x5
	.byte	0xd9
	.long	0x42
	.byte	0x28
	.uleb128 0xb
	.long	.LASF23
	.byte	0x5
	.byte	0xd9
	.long	0x42
	.byte	0x2c
	.uleb128 0xb
	.long	.LASF24
	.byte	0x5
	.byte	0xda
	.long	0x42
	.byte	0x30
	.uleb128 0xb
	.long	.LASF25
	.byte	0x5
	.byte	0xdb
	.long	0x42
	.byte	0x34
	.uleb128 0xb
	.long	.LASF26
	.byte	0x5
	.byte	0xdc
	.long	0x42
	.byte	0x38
	.uleb128 0xb
	.long	.LASF27
	.byte	0x5
	.byte	0xdd
	.long	0xbe
	.byte	0x40
	.uleb128 0xb
	.long	.LASF28
	.byte	0x5
	.byte	0xde
	.long	0x1ca
	.byte	0x48
	.uleb128 0xc
	.string	"C"
	.byte	0x5
	.byte	0xdf
	.long	0x57
	.byte	0x50
	.uleb128 0xc
	.string	"CS"
	.byte	0x5
	.byte	0xdf
	.long	0x57
	.byte	0x54
	.uleb128 0xc
	.string	"E"
	.byte	0x5
	.byte	0xe0
	.long	0x57
	.byte	0x58
	.uleb128 0xc
	.string	"ES"
	.byte	0x5
	.byte	0xe0
	.long	0x57
	.byte	0x5c
	.uleb128 0xc
	.string	"B"
	.byte	0x5
	.byte	0xe1
	.long	0x57
	.byte	0x60
	.uleb128 0xc
	.string	"BS"
	.byte	0x5
	.byte	0xe1
	.long	0x57
	.byte	0x64
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.long	0x57
	.uleb128 0x6
	.long	.LASF29
	.byte	0x5
	.byte	0xe2
	.long	0xda
	.uleb128 0x6
	.long	.LASF30
	.byte	0x5
	.byte	0xe4
	.long	0x1e6
	.uleb128 0x9
	.byte	0x8
	.long	0x1d0
	.uleb128 0xa
	.byte	0x10
	.byte	0x5
	.byte	0xe7
	.long	0x219
	.uleb128 0xb
	.long	.LASF31
	.byte	0x5
	.byte	0xe9
	.long	0x3b
	.byte	0
	.uleb128 0xc
	.string	"MPS"
	.byte	0x5
	.byte	0xea
	.long	0x34
	.byte	0x2
	.uleb128 0xb
	.long	.LASF32
	.byte	0x5
	.byte	0xec
	.long	0x2d
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.long	.LASF33
	.byte	0x5
	.byte	0xee
	.long	0x1ec
	.uleb128 0xd
	.value	0x5e0
	.byte	0x5
	.value	0x102
	.long	0x290
	.uleb128 0xe
	.long	.LASF34
	.byte	0x5
	.value	0x104
	.long	0x290
	.byte	0
	.uleb128 0xf
	.long	.LASF35
	.byte	0x5
	.value	0x105
	.long	0x2a6
	.value	0x210
	.uleb128 0xf
	.long	.LASF36
	.byte	0x5
	.value	0x106
	.long	0x2bc
	.value	0x330
	.uleb128 0xf
	.long	.LASF37
	.byte	0x5
	.value	0x107
	.long	0x2d2
	.value	0x470
	.uleb128 0xf
	.long	.LASF38
	.byte	0x5
	.value	0x108
	.long	0x2e8
	.value	0x530
	.uleb128 0xf
	.long	.LASF39
	.byte	0x5
	.value	0x109
	.long	0x2e8
	.value	0x570
	.uleb128 0xf
	.long	.LASF40
	.byte	0x5
	.value	0x10a
	.long	0x2f8
	.value	0x5b0
	.byte	0
	.uleb128 0x4
	.long	0x219
	.long	0x2a6
	.uleb128 0x5
	.long	0x75
	.byte	0x2
	.uleb128 0x5
	.long	0x75
	.byte	0xa
	.byte	0
	.uleb128 0x4
	.long	0x219
	.long	0x2bc
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.uleb128 0x5
	.long	0x75
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.long	0x219
	.long	0x2d2
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.uleb128 0x5
	.long	0x75
	.byte	0x9
	.byte	0
	.uleb128 0x4
	.long	0x219
	.long	0x2e8
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.uleb128 0x5
	.long	0x75
	.byte	0x5
	.byte	0
	.uleb128 0x4
	.long	0x219
	.long	0x2f8
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.long	0x219
	.long	0x308
	.uleb128 0x5
	.long	0x75
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.long	.LASF41
	.byte	0x5
	.value	0x10c
	.long	0x224
	.uleb128 0xd
	.value	0x2f60
	.byte	0x5
	.value	0x119
	.long	0x3a8
	.uleb128 0xe
	.long	.LASF42
	.byte	0x5
	.value	0x11b
	.long	0x3a8
	.byte	0
	.uleb128 0xe
	.long	.LASF43
	.byte	0x5
	.value	0x11c
	.long	0x2e8
	.byte	0x20
	.uleb128 0xe
	.long	.LASF44
	.byte	0x5
	.value	0x11d
	.long	0x3b8
	.byte	0x60
	.uleb128 0xf
	.long	.LASF45
	.byte	0x5
	.value	0x11e
	.long	0x3ce
	.value	0x120
	.uleb128 0xf
	.long	.LASF46
	.byte	0x5
	.value	0x11f
	.long	0x3e4
	.value	0x3a0
	.uleb128 0xf
	.long	.LASF47
	.byte	0x5
	.value	0x120
	.long	0x3e4
	.value	0xd00
	.uleb128 0xf
	.long	.LASF48
	.byte	0x5
	.value	0x121
	.long	0x3fa
	.value	0x1660
	.uleb128 0xf
	.long	.LASF49
	.byte	0x5
	.value	0x122
	.long	0x3fa
	.value	0x1980
	.uleb128 0xf
	.long	.LASF50
	.byte	0x5
	.value	0x123
	.long	0x3e4
	.value	0x1ca0
	.uleb128 0xf
	.long	.LASF51
	.byte	0x5
	.value	0x124
	.long	0x3e4
	.value	0x2600
	.byte	0
	.uleb128 0x4
	.long	0x219
	.long	0x3b8
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.long	0x219
	.long	0x3ce
	.uleb128 0x5
	.long	0x75
	.byte	0x2
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.long	0x219
	.long	0x3e4
	.uleb128 0x5
	.long	0x75
	.byte	0x9
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.long	0x219
	.long	0x3fa
	.uleb128 0x5
	.long	0x75
	.byte	0x9
	.uleb128 0x5
	.long	0x75
	.byte	0xe
	.byte	0
	.uleb128 0x4
	.long	0x219
	.long	0x410
	.uleb128 0x5
	.long	0x75
	.byte	0x9
	.uleb128 0x5
	.long	0x75
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.long	.LASF52
	.byte	0x5
	.value	0x125
	.long	0x314
	.uleb128 0x11
	.long	.LASF58
	.byte	0x18
	.byte	0x5
	.value	0x129
	.long	0x474
	.uleb128 0xe
	.long	.LASF53
	.byte	0x5
	.value	0x12b
	.long	0x57
	.byte	0
	.uleb128 0xe
	.long	.LASF54
	.byte	0x5
	.value	0x12c
	.long	0x57
	.byte	0x4
	.uleb128 0x12
	.string	"x"
	.byte	0x5
	.value	0x12d
	.long	0x57
	.byte	0x8
	.uleb128 0x12
	.string	"y"
	.byte	0x5
	.value	0x12e
	.long	0x57
	.byte	0xc
	.uleb128 0xe
	.long	.LASF55
	.byte	0x5
	.value	0x12f
	.long	0x57
	.byte	0x10
	.uleb128 0xe
	.long	.LASF56
	.byte	0x5
	.value	0x130
	.long	0x57
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.long	.LASF57
	.byte	0x5
	.value	0x131
	.long	0x41c
	.uleb128 0x11
	.long	.LASF59
	.byte	0x10
	.byte	0x5
	.value	0x134
	.long	0x4b5
	.uleb128 0xe
	.long	.LASF60
	.byte	0x5
	.value	0x136
	.long	0x57
	.byte	0
	.uleb128 0xe
	.long	.LASF61
	.byte	0x5
	.value	0x137
	.long	0x57
	.byte	0x4
	.uleb128 0xe
	.long	.LASF62
	.byte	0x5
	.value	0x138
	.long	0x4b5
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.long	0x480
	.uleb128 0x10
	.long	.LASF63
	.byte	0x5
	.value	0x139
	.long	0x480
	.uleb128 0x11
	.long	.LASF64
	.byte	0x20
	.byte	0x5
	.value	0x13c
	.long	0x523
	.uleb128 0xe
	.long	.LASF65
	.byte	0x5
	.value	0x13e
	.long	0x57
	.byte	0
	.uleb128 0xe
	.long	.LASF66
	.byte	0x5
	.value	0x13f
	.long	0x57
	.byte	0x4
	.uleb128 0xe
	.long	.LASF67
	.byte	0x5
	.value	0x140
	.long	0x57
	.byte	0x8
	.uleb128 0xe
	.long	.LASF68
	.byte	0x5
	.value	0x141
	.long	0x57
	.byte	0xc
	.uleb128 0xe
	.long	.LASF69
	.byte	0x5
	.value	0x142
	.long	0x57
	.byte	0x10
	.uleb128 0xe
	.long	.LASF62
	.byte	0x5
	.value	0x143
	.long	0x523
	.byte	0x18
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.long	0x4c7
	.uleb128 0x10
	.long	.LASF70
	.byte	0x5
	.value	0x144
	.long	0x4c7
	.uleb128 0x11
	.long	.LASF71
	.byte	0x30
	.byte	0x5
	.value	0x147
	.long	0x5c3
	.uleb128 0xe
	.long	.LASF72
	.byte	0x5
	.value	0x149
	.long	0x57
	.byte	0
	.uleb128 0xe
	.long	.LASF73
	.byte	0x5
	.value	0x14a
	.long	0x57
	.byte	0x4
	.uleb128 0xe
	.long	.LASF74
	.byte	0x5
	.value	0x14b
	.long	0x57
	.byte	0x8
	.uleb128 0x12
	.string	"len"
	.byte	0x5
	.value	0x14c
	.long	0x57
	.byte	0xc
	.uleb128 0x12
	.string	"inf"
	.byte	0x5
	.value	0x14d
	.long	0x57
	.byte	0x10
	.uleb128 0xe
	.long	.LASF75
	.byte	0x5
	.value	0x14e
	.long	0x42
	.byte	0x14
	.uleb128 0xe
	.long	.LASF76
	.byte	0x5
	.value	0x14f
	.long	0x57
	.byte	0x18
	.uleb128 0x12
	.string	"k"
	.byte	0x5
	.value	0x150
	.long	0x57
	.byte	0x1c
	.uleb128 0xe
	.long	.LASF77
	.byte	0x5
	.value	0x158
	.long	0x5dd
	.byte	0x20
	.uleb128 0xe
	.long	.LASF78
	.byte	0x5
	.value	0x15a
	.long	0x5f9
	.byte	0x28
	.byte	0
	.uleb128 0x13
	.long	0x5dd
	.uleb128 0x14
	.long	0x57
	.uleb128 0x14
	.long	0x57
	.uleb128 0x14
	.long	0x1ca
	.uleb128 0x14
	.long	0x1ca
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.long	0x5c3
	.uleb128 0x13
	.long	0x5f3
	.uleb128 0x14
	.long	0x5f3
	.uleb128 0x14
	.long	0x1db
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.long	0x535
	.uleb128 0x9
	.byte	0x8
	.long	0x5e3
	.uleb128 0x10
	.long	.LASF79
	.byte	0x5
	.value	0x15c
	.long	0x535
	.uleb128 0x15
	.long	.LASF80
	.value	0x278
	.byte	0x5
	.value	0x15f
	.long	0x885
	.uleb128 0xe
	.long	.LASF81
	.byte	0x5
	.value	0x161
	.long	0x57
	.byte	0
	.uleb128 0xe
	.long	.LASF82
	.byte	0x5
	.value	0x162
	.long	0x57
	.byte	0x4
	.uleb128 0xe
	.long	.LASF83
	.byte	0x5
	.value	0x163
	.long	0x57
	.byte	0x8
	.uleb128 0x12
	.string	"qp"
	.byte	0x5
	.value	0x164
	.long	0x57
	.byte	0xc
	.uleb128 0xe
	.long	.LASF84
	.byte	0x5
	.value	0x165
	.long	0x57
	.byte	0x10
	.uleb128 0xe
	.long	.LASF85
	.byte	0x5
	.value	0x166
	.long	0xae
	.byte	0x14
	.uleb128 0xe
	.long	.LASF86
	.byte	0x5
	.value	0x168
	.long	0x885
	.byte	0x38
	.uleb128 0xe
	.long	.LASF87
	.byte	0x5
	.value	0x169
	.long	0x885
	.byte	0x40
	.uleb128 0xe
	.long	.LASF88
	.byte	0x5
	.value	0x16b
	.long	0x57
	.byte	0x48
	.uleb128 0x12
	.string	"mvd"
	.byte	0x5
	.value	0x16c
	.long	0x88b
	.byte	0x4c
	.uleb128 0xf
	.long	.LASF89
	.byte	0x5
	.value	0x16d
	.long	0x8ad
	.value	0x14c
	.uleb128 0xf
	.long	.LASF90
	.byte	0x5
	.value	0x16e
	.long	0x8ad
	.value	0x18c
	.uleb128 0x16
	.string	"cbp"
	.byte	0x5
	.value	0x16f
	.long	0x57
	.value	0x1cc
	.uleb128 0xf
	.long	.LASF91
	.byte	0x5
	.value	0x170
	.long	0xcf
	.value	0x1d0
	.uleb128 0xf
	.long	.LASF92
	.byte	0x5
	.value	0x171
	.long	0x8bd
	.value	0x1d8
	.uleb128 0xf
	.long	.LASF93
	.byte	0x5
	.value	0x172
	.long	0x8bd
	.value	0x1e8
	.uleb128 0xf
	.long	.LASF94
	.byte	0x5
	.value	0x173
	.long	0x2d
	.value	0x1f8
	.uleb128 0xf
	.long	.LASF95
	.byte	0x5
	.value	0x175
	.long	0x57
	.value	0x200
	.uleb128 0xf
	.long	.LASF96
	.byte	0x5
	.value	0x176
	.long	0x57
	.value	0x204
	.uleb128 0xf
	.long	.LASF97
	.byte	0x5
	.value	0x177
	.long	0x57
	.value	0x208
	.uleb128 0xf
	.long	.LASF98
	.byte	0x5
	.value	0x179
	.long	0x57
	.value	0x20c
	.uleb128 0xf
	.long	.LASF99
	.byte	0x5
	.value	0x17a
	.long	0x57
	.value	0x210
	.uleb128 0xf
	.long	.LASF100
	.byte	0x5
	.value	0x17c
	.long	0x57
	.value	0x214
	.uleb128 0xf
	.long	.LASF101
	.byte	0x5
	.value	0x17e
	.long	0x57
	.value	0x218
	.uleb128 0xf
	.long	.LASF102
	.byte	0x5
	.value	0x17e
	.long	0x57
	.value	0x21c
	.uleb128 0xf
	.long	.LASF103
	.byte	0x5
	.value	0x17e
	.long	0x57
	.value	0x220
	.uleb128 0xf
	.long	.LASF104
	.byte	0x5
	.value	0x17e
	.long	0x57
	.value	0x224
	.uleb128 0xf
	.long	.LASF105
	.byte	0x5
	.value	0x17f
	.long	0x57
	.value	0x228
	.uleb128 0xf
	.long	.LASF106
	.byte	0x5
	.value	0x17f
	.long	0x57
	.value	0x22c
	.uleb128 0xf
	.long	.LASF107
	.byte	0x5
	.value	0x17f
	.long	0x57
	.value	0x230
	.uleb128 0xf
	.long	.LASF108
	.byte	0x5
	.value	0x17f
	.long	0x57
	.value	0x234
	.uleb128 0xf
	.long	.LASF109
	.byte	0x5
	.value	0x181
	.long	0x57
	.value	0x238
	.uleb128 0xf
	.long	.LASF110
	.byte	0x5
	.value	0x182
	.long	0x57
	.value	0x23c
	.uleb128 0xf
	.long	.LASF111
	.byte	0x5
	.value	0x183
	.long	0x57
	.value	0x240
	.uleb128 0xf
	.long	.LASF112
	.byte	0x5
	.value	0x186
	.long	0x57
	.value	0x244
	.uleb128 0xf
	.long	.LASF113
	.byte	0x5
	.value	0x18a
	.long	0x8cd
	.value	0x248
	.uleb128 0xf
	.long	.LASF114
	.byte	0x5
	.value	0x18b
	.long	0x57
	.value	0x250
	.uleb128 0xf
	.long	.LASF115
	.byte	0x5
	.value	0x18c
	.long	0x57
	.value	0x254
	.uleb128 0xf
	.long	.LASF116
	.byte	0x5
	.value	0x18d
	.long	0x57
	.value	0x258
	.uleb128 0xf
	.long	.LASF117
	.byte	0x5
	.value	0x18e
	.long	0x57
	.value	0x25c
	.uleb128 0xf
	.long	.LASF118
	.byte	0x5
	.value	0x18f
	.long	0x57
	.value	0x260
	.uleb128 0xf
	.long	.LASF119
	.byte	0x5
	.value	0x191
	.long	0x57
	.value	0x264
	.uleb128 0xf
	.long	.LASF120
	.byte	0x5
	.value	0x192
	.long	0x57
	.value	0x268
	.uleb128 0xf
	.long	.LASF121
	.byte	0x5
	.value	0x193
	.long	0x57
	.value	0x26c
	.uleb128 0xf
	.long	.LASF122
	.byte	0x5
	.value	0x195
	.long	0x57
	.value	0x270
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.long	0x60b
	.uleb128 0x4
	.long	0x57
	.long	0x8ad
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.long	0x57
	.long	0x8bd
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.long	0x57
	.long	0x8cd
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF123
	.uleb128 0x10
	.long	.LASF124
	.byte	0x5
	.value	0x196
	.long	0x60b
	.uleb128 0x17
	.byte	0x30
	.byte	0x5
	.value	0x19b
	.long	0x979
	.uleb128 0xe
	.long	.LASF125
	.byte	0x5
	.value	0x19d
	.long	0x57
	.byte	0
	.uleb128 0xe
	.long	.LASF126
	.byte	0x5
	.value	0x19e
	.long	0x57
	.byte	0x4
	.uleb128 0xe
	.long	.LASF127
	.byte	0x5
	.value	0x19f
	.long	0x83
	.byte	0x8
	.uleb128 0xe
	.long	.LASF128
	.byte	0x5
	.value	0x1a0
	.long	0x57
	.byte	0xc
	.uleb128 0xe
	.long	.LASF129
	.byte	0x5
	.value	0x1a1
	.long	0x57
	.byte	0x10
	.uleb128 0xe
	.long	.LASF130
	.byte	0x5
	.value	0x1a2
	.long	0x83
	.byte	0x14
	.uleb128 0xe
	.long	.LASF131
	.byte	0x5
	.value	0x1a4
	.long	0x83
	.byte	0x15
	.uleb128 0xe
	.long	.LASF132
	.byte	0x5
	.value	0x1a5
	.long	0x57
	.byte	0x18
	.uleb128 0xe
	.long	.LASF133
	.byte	0x5
	.value	0x1a6
	.long	0x57
	.byte	0x1c
	.uleb128 0xe
	.long	.LASF134
	.byte	0x5
	.value	0x1a8
	.long	0xbe
	.byte	0x20
	.uleb128 0xe
	.long	.LASF135
	.byte	0x5
	.value	0x1a9
	.long	0x57
	.byte	0x28
	.byte	0
	.uleb128 0x10
	.long	.LASF136
	.byte	0x5
	.value	0x1ab
	.long	0x8e0
	.uleb128 0x11
	.long	.LASF137
	.byte	0x78
	.byte	0x5
	.value	0x1ae
	.long	0x9ba
	.uleb128 0xe
	.long	.LASF138
	.byte	0x5
	.value	0x1b1
	.long	0x9ba
	.byte	0
	.uleb128 0xe
	.long	.LASF139
	.byte	0x5
	.value	0x1b2
	.long	0x1d0
	.byte	0x8
	.uleb128 0xe
	.long	.LASF140
	.byte	0x5
	.value	0x1b4
	.long	0x9e0
	.byte	0x70
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.long	0x979
	.uleb128 0x18
	.long	0x57
	.long	0x9d4
	.uleb128 0x14
	.long	0x9d4
	.uleb128 0x14
	.long	0x9da
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.long	0x5ff
	.uleb128 0x9
	.byte	0x8
	.long	0x985
	.uleb128 0x9
	.byte	0x8
	.long	0x9c0
	.uleb128 0x10
	.long	.LASF141
	.byte	0x5
	.value	0x1b8
	.long	0x985
	.uleb128 0x17
	.byte	0x98
	.byte	0x5
	.value	0x1bb
	.long	0xaff
	.uleb128 0xe
	.long	.LASF142
	.byte	0x5
	.value	0x1bd
	.long	0x57
	.byte	0
	.uleb128 0x12
	.string	"qp"
	.byte	0x5
	.value	0x1be
	.long	0x57
	.byte	0x4
	.uleb128 0xe
	.long	.LASF143
	.byte	0x5
	.value	0x1bf
	.long	0x57
	.byte	0x8
	.uleb128 0xe
	.long	.LASF144
	.byte	0x5
	.value	0x1c0
	.long	0x57
	.byte	0xc
	.uleb128 0xe
	.long	.LASF145
	.byte	0x5
	.value	0x1c1
	.long	0x57
	.byte	0x10
	.uleb128 0xe
	.long	.LASF146
	.byte	0x5
	.value	0x1c2
	.long	0x57
	.byte	0x14
	.uleb128 0xe
	.long	.LASF147
	.byte	0x5
	.value	0x1c3
	.long	0xaff
	.byte	0x18
	.uleb128 0xe
	.long	.LASF148
	.byte	0x5
	.value	0x1c4
	.long	0xb05
	.byte	0x20
	.uleb128 0xe
	.long	.LASF149
	.byte	0x5
	.value	0x1c5
	.long	0xb0b
	.byte	0x28
	.uleb128 0xe
	.long	.LASF150
	.byte	0x5
	.value	0x1c8
	.long	0xb11
	.byte	0x30
	.uleb128 0xe
	.long	.LASF151
	.byte	0x5
	.value	0x1ca
	.long	0x57
	.byte	0x38
	.uleb128 0xe
	.long	.LASF152
	.byte	0x5
	.value	0x1cb
	.long	0x1ca
	.byte	0x40
	.uleb128 0xe
	.long	.LASF153
	.byte	0x5
	.value	0x1cc
	.long	0x1ca
	.byte	0x48
	.uleb128 0xe
	.long	.LASF154
	.byte	0x5
	.value	0x1cd
	.long	0x1ca
	.byte	0x50
	.uleb128 0xe
	.long	.LASF155
	.byte	0x5
	.value	0x1ce
	.long	0x57
	.byte	0x58
	.uleb128 0xe
	.long	.LASF156
	.byte	0x5
	.value	0x1cf
	.long	0x1ca
	.byte	0x60
	.uleb128 0xe
	.long	.LASF157
	.byte	0x5
	.value	0x1d0
	.long	0x1ca
	.byte	0x68
	.uleb128 0xe
	.long	.LASF158
	.byte	0x5
	.value	0x1d1
	.long	0x1ca
	.byte	0x70
	.uleb128 0xe
	.long	.LASF159
	.byte	0x5
	.value	0x1d3
	.long	0xb26
	.byte	0x78
	.uleb128 0xe
	.long	.LASF160
	.byte	0x5
	.value	0x1d5
	.long	0xb2c
	.byte	0x80
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.long	0x9e6
	.uleb128 0x9
	.byte	0x8
	.long	0x308
	.uleb128 0x9
	.byte	0x8
	.long	0x410
	.uleb128 0x9
	.byte	0x8
	.long	0x4bb
	.uleb128 0x18
	.long	0xa3
	.long	0xb26
	.uleb128 0x14
	.long	0x57
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.long	0xb17
	.uleb128 0x4
	.long	0x57
	.long	0xb42
	.uleb128 0x5
	.long	0x75
	.byte	0x2
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.long	.LASF161
	.byte	0x5
	.value	0x1d7
	.long	0x9f2
	.uleb128 0xd
	.value	0x338
	.byte	0x5
	.value	0x1db
	.long	0xbb8
	.uleb128 0xe
	.long	.LASF162
	.byte	0x5
	.value	0x1dd
	.long	0x57
	.byte	0
	.uleb128 0xe
	.long	.LASF163
	.byte	0x5
	.value	0x1de
	.long	0x57
	.byte	0x4
	.uleb128 0xe
	.long	.LASF164
	.byte	0x5
	.value	0x1df
	.long	0xbb8
	.byte	0x8
	.uleb128 0xf
	.long	.LASF165
	.byte	0x5
	.value	0x1e0
	.long	0x57
	.value	0x328
	.uleb128 0xf
	.long	.LASF166
	.byte	0x5
	.value	0x1e1
	.long	0xbce
	.value	0x32c
	.uleb128 0xf
	.long	.LASF167
	.byte	0x5
	.value	0x1e2
	.long	0xbce
	.value	0x330
	.uleb128 0xf
	.long	.LASF168
	.byte	0x5
	.value	0x1e3
	.long	0xbce
	.value	0x334
	.byte	0
	.uleb128 0x4
	.long	0xbc8
	.long	0xbc8
	.uleb128 0x5
	.long	0x75
	.byte	0x63
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.long	0xb42
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF169
	.uleb128 0x10
	.long	.LASF170
	.byte	0x5
	.value	0x1e4
	.long	0xb4e
	.uleb128 0x9
	.byte	0x8
	.long	0x1ca
	.uleb128 0x19
	.long	0x11c20
	.byte	0x5
	.value	0x364
	.long	0x15cc
	.uleb128 0xe
	.long	.LASF171
	.byte	0x5
	.value	0x366
	.long	0x57
	.byte	0
	.uleb128 0x12
	.string	"pn"
	.byte	0x5
	.value	0x367
	.long	0x57
	.byte	0x4
	.uleb128 0xe
	.long	.LASF172
	.byte	0x5
	.value	0x368
	.long	0x57
	.byte	0x8
	.uleb128 0xe
	.long	.LASF173
	.byte	0x5
	.value	0x369
	.long	0x57
	.byte	0xc
	.uleb128 0xe
	.long	.LASF174
	.byte	0x5
	.value	0x36a
	.long	0x57
	.byte	0x10
	.uleb128 0xe
	.long	.LASF175
	.byte	0x5
	.value	0x36b
	.long	0x57
	.byte	0x14
	.uleb128 0xe
	.long	.LASF72
	.byte	0x5
	.value	0x36c
	.long	0x57
	.byte	0x18
	.uleb128 0xe
	.long	.LASF176
	.byte	0x5
	.value	0x36d
	.long	0x57
	.byte	0x1c
	.uleb128 0xe
	.long	.LASF177
	.byte	0x5
	.value	0x36e
	.long	0x57
	.byte	0x20
	.uleb128 0xe
	.long	.LASF178
	.byte	0x5
	.value	0x36f
	.long	0x57
	.byte	0x24
	.uleb128 0x12
	.string	"qp"
	.byte	0x5
	.value	0x370
	.long	0x57
	.byte	0x28
	.uleb128 0xe
	.long	.LASF84
	.byte	0x5
	.value	0x371
	.long	0x57
	.byte	0x2c
	.uleb128 0xe
	.long	.LASF179
	.byte	0x5
	.value	0x372
	.long	0xbce
	.byte	0x30
	.uleb128 0xe
	.long	.LASF180
	.byte	0x5
	.value	0x373
	.long	0x57
	.byte	0x34
	.uleb128 0xe
	.long	.LASF181
	.byte	0x5
	.value	0x374
	.long	0x57
	.byte	0x38
	.uleb128 0xe
	.long	.LASF182
	.byte	0x5
	.value	0x375
	.long	0x57
	.byte	0x3c
	.uleb128 0xe
	.long	.LASF183
	.byte	0x5
	.value	0x376
	.long	0x57
	.byte	0x40
	.uleb128 0xe
	.long	.LASF184
	.byte	0x5
	.value	0x377
	.long	0x57
	.byte	0x44
	.uleb128 0xe
	.long	.LASF185
	.byte	0x5
	.value	0x378
	.long	0x57
	.byte	0x48
	.uleb128 0xe
	.long	.LASF186
	.byte	0x5
	.value	0x379
	.long	0x57
	.byte	0x4c
	.uleb128 0xe
	.long	.LASF187
	.byte	0x5
	.value	0x37a
	.long	0x57
	.byte	0x50
	.uleb128 0xe
	.long	.LASF188
	.byte	0x5
	.value	0x37b
	.long	0x57
	.byte	0x54
	.uleb128 0xe
	.long	.LASF189
	.byte	0x5
	.value	0x37c
	.long	0x57
	.byte	0x58
	.uleb128 0xe
	.long	.LASF190
	.byte	0x5
	.value	0x37d
	.long	0x57
	.byte	0x5c
	.uleb128 0xe
	.long	.LASF191
	.byte	0x5
	.value	0x37e
	.long	0x57
	.byte	0x60
	.uleb128 0xe
	.long	.LASF192
	.byte	0x5
	.value	0x37f
	.long	0xbe1
	.byte	0x68
	.uleb128 0xe
	.long	.LASF193
	.byte	0x5
	.value	0x380
	.long	0xbe1
	.byte	0x70
	.uleb128 0xe
	.long	.LASF194
	.byte	0x5
	.value	0x382
	.long	0x57
	.byte	0x78
	.uleb128 0xe
	.long	.LASF195
	.byte	0x5
	.value	0x383
	.long	0x15cc
	.byte	0x80
	.uleb128 0xe
	.long	.LASF196
	.byte	0x5
	.value	0x385
	.long	0x57
	.byte	0x88
	.uleb128 0xe
	.long	.LASF197
	.byte	0x5
	.value	0x386
	.long	0x57
	.byte	0x8c
	.uleb128 0xe
	.long	.LASF198
	.byte	0x5
	.value	0x387
	.long	0x57
	.byte	0x90
	.uleb128 0xe
	.long	.LASF199
	.byte	0x5
	.value	0x388
	.long	0x57
	.byte	0x94
	.uleb128 0xe
	.long	.LASF200
	.byte	0x5
	.value	0x389
	.long	0x57
	.byte	0x98
	.uleb128 0xe
	.long	.LASF201
	.byte	0x5
	.value	0x38a
	.long	0x57
	.byte	0x9c
	.uleb128 0xe
	.long	.LASF202
	.byte	0x5
	.value	0x38b
	.long	0x57
	.byte	0xa0
	.uleb128 0xe
	.long	.LASF203
	.byte	0x5
	.value	0x38c
	.long	0x57
	.byte	0xa4
	.uleb128 0xe
	.long	.LASF204
	.byte	0x5
	.value	0x38e
	.long	0x57
	.byte	0xa8
	.uleb128 0xe
	.long	.LASF205
	.byte	0x5
	.value	0x38f
	.long	0x57
	.byte	0xac
	.uleb128 0xe
	.long	.LASF206
	.byte	0x5
	.value	0x390
	.long	0x57
	.byte	0xb0
	.uleb128 0xe
	.long	.LASF207
	.byte	0x5
	.value	0x391
	.long	0x57
	.byte	0xb4
	.uleb128 0xe
	.long	.LASF208
	.byte	0x5
	.value	0x395
	.long	0x15d2
	.byte	0xb8
	.uleb128 0xf
	.long	.LASF209
	.byte	0x5
	.value	0x397
	.long	0x15ee
	.value	0x12b8
	.uleb128 0xf
	.long	.LASF210
	.byte	0x5
	.value	0x398
	.long	0x160a
	.value	0x1cb8
	.uleb128 0xf
	.long	.LASF211
	.byte	0x5
	.value	0x399
	.long	0x1626
	.value	0x2138
	.uleb128 0x16
	.string	"mpr"
	.byte	0x5
	.value	0x39a
	.long	0x1648
	.value	0x3138
	.uleb128 0x16
	.string	"m7"
	.byte	0x5
	.value	0x39b
	.long	0x165e
	.value	0x3338
	.uleb128 0xf
	.long	.LASF212
	.byte	0x5
	.value	0x39d
	.long	0x1674
	.value	0x3738
	.uleb128 0xf
	.long	.LASF213
	.byte	0x5
	.value	0x39e
	.long	0x15cc
	.value	0x3740
	.uleb128 0xf
	.long	.LASF214
	.byte	0x5
	.value	0x3a0
	.long	0x167a
	.value	0x3748
	.uleb128 0xf
	.long	.LASF215
	.byte	0x5
	.value	0x3a1
	.long	0xbc8
	.value	0x3750
	.uleb128 0xf
	.long	.LASF216
	.byte	0x5
	.value	0x3a2
	.long	0x1680
	.value	0x3758
	.uleb128 0xf
	.long	.LASF217
	.byte	0x5
	.value	0x3a3
	.long	0x1686
	.value	0x3760
	.uleb128 0x1a
	.long	.LASF218
	.byte	0x5
	.value	0x3a5
	.long	0x1ca
	.long	0x11860
	.uleb128 0x1a
	.long	.LASF219
	.byte	0x5
	.value	0x3a6
	.long	0x1ca
	.long	0x11868
	.uleb128 0x1b
	.string	"tr"
	.byte	0x5
	.value	0x3a8
	.long	0x57
	.long	0x11870
	.uleb128 0x1a
	.long	.LASF220
	.byte	0x5
	.value	0x3a9
	.long	0x57
	.long	0x11874
	.uleb128 0x1a
	.long	.LASF221
	.byte	0x5
	.value	0x3aa
	.long	0x42
	.long	0x11878
	.uleb128 0x1a
	.long	.LASF222
	.byte	0x5
	.value	0x3ab
	.long	0x42
	.long	0x1187c
	.uleb128 0x1a
	.long	.LASF223
	.byte	0x5
	.value	0x3ac
	.long	0x1697
	.long	0x11880
	.uleb128 0x1a
	.long	.LASF224
	.byte	0x5
	.value	0x3ad
	.long	0x57
	.long	0x118c0
	.uleb128 0x1a
	.long	.LASF225
	.byte	0x5
	.value	0x3ae
	.long	0x57
	.long	0x118c4
	.uleb128 0x1a
	.long	.LASF226
	.byte	0x5
	.value	0x3af
	.long	0x57
	.long	0x118c8
	.uleb128 0x1a
	.long	.LASF227
	.byte	0x5
	.value	0x3b0
	.long	0x57
	.long	0x118cc
	.uleb128 0x1a
	.long	.LASF228
	.byte	0x5
	.value	0x3b1
	.long	0x57
	.long	0x118d0
	.uleb128 0x1a
	.long	.LASF229
	.byte	0x5
	.value	0x3b4
	.long	0x8cd
	.long	0x118d8
	.uleb128 0x1a
	.long	.LASF230
	.byte	0x5
	.value	0x3b5
	.long	0x57
	.long	0x118e0
	.uleb128 0x1a
	.long	.LASF231
	.byte	0x5
	.value	0x3b6
	.long	0x57
	.long	0x118e4
	.uleb128 0x1a
	.long	.LASF232
	.byte	0x5
	.value	0x3b7
	.long	0x57
	.long	0x118e8
	.uleb128 0x1a
	.long	.LASF233
	.byte	0x5
	.value	0x3b8
	.long	0x57
	.long	0x118ec
	.uleb128 0x1a
	.long	.LASF234
	.byte	0x5
	.value	0x3ba
	.long	0x16ad
	.long	0x118f0
	.uleb128 0x1a
	.long	.LASF235
	.byte	0x5
	.value	0x3bb
	.long	0x16ad
	.long	0x118f8
	.uleb128 0x1a
	.long	.LASF236
	.byte	0x5
	.value	0x3bd
	.long	0x16ad
	.long	0x11900
	.uleb128 0x1a
	.long	.LASF237
	.byte	0x5
	.value	0x3be
	.long	0x16ad
	.long	0x11908
	.uleb128 0x1a
	.long	.LASF112
	.byte	0x5
	.value	0x3bf
	.long	0x16d1
	.long	0x11910
	.uleb128 0x1a
	.long	.LASF119
	.byte	0x5
	.value	0x3c3
	.long	0x57
	.long	0x11930
	.uleb128 0x1a
	.long	.LASF120
	.byte	0x5
	.value	0x3c4
	.long	0x57
	.long	0x11934
	.uleb128 0x1a
	.long	.LASF121
	.byte	0x5
	.value	0x3c5
	.long	0x57
	.long	0x11938
	.uleb128 0x1a
	.long	.LASF238
	.byte	0x5
	.value	0x3c7
	.long	0x57
	.long	0x1193c
	.uleb128 0x1a
	.long	.LASF239
	.byte	0x5
	.value	0x3c9
	.long	0x57
	.long	0x11940
	.uleb128 0x1a
	.long	.LASF240
	.byte	0x5
	.value	0x3ca
	.long	0x57
	.long	0x11944
	.uleb128 0x1a
	.long	.LASF241
	.byte	0x5
	.value	0x3cc
	.long	0x57
	.long	0x11948
	.uleb128 0x1a
	.long	.LASF242
	.byte	0x5
	.value	0x3cd
	.long	0x57
	.long	0x1194c
	.uleb128 0x1a
	.long	.LASF243
	.byte	0x5
	.value	0x3ce
	.long	0x16e1
	.long	0x11950
	.uleb128 0x1a
	.long	.LASF244
	.byte	0x5
	.value	0x3cf
	.long	0x57
	.long	0x11ab8
	.uleb128 0x1a
	.long	.LASF245
	.byte	0x5
	.value	0x3d0
	.long	0x57
	.long	0x11abc
	.uleb128 0x1a
	.long	.LASF246
	.byte	0x5
	.value	0x3d2
	.long	0x57
	.long	0x11ac0
	.uleb128 0x1a
	.long	.LASF247
	.byte	0x5
	.value	0x3d3
	.long	0x57
	.long	0x11ac4
	.uleb128 0x1a
	.long	.LASF248
	.byte	0x5
	.value	0x3d4
	.long	0x57
	.long	0x11ac8
	.uleb128 0x1a
	.long	.LASF249
	.byte	0x5
	.value	0x3d6
	.long	0x57
	.long	0x11acc
	.uleb128 0x1a
	.long	.LASF250
	.byte	0x5
	.value	0x3d8
	.long	0x57
	.long	0x11ad0
	.uleb128 0x1a
	.long	.LASF251
	.byte	0x5
	.value	0x3dc
	.long	0x42
	.long	0x11ad4
	.uleb128 0x1a
	.long	.LASF252
	.byte	0x5
	.value	0x3e0
	.long	0x42
	.long	0x11ad8
	.uleb128 0x1a
	.long	.LASF253
	.byte	0x5
	.value	0x3e1
	.long	0x57
	.long	0x11adc
	.uleb128 0x1a
	.long	.LASF254
	.byte	0x5
	.value	0x3e2
	.long	0x57
	.long	0x11ae0
	.uleb128 0x1a
	.long	.LASF255
	.byte	0x5
	.value	0x3e3
	.long	0x42
	.long	0x11ae4
	.uleb128 0x1a
	.long	.LASF256
	.byte	0x5
	.value	0x3e4
	.long	0x16f7
	.long	0x11ae8
	.uleb128 0x1a
	.long	.LASF257
	.byte	0x5
	.value	0x3e9
	.long	0x42
	.long	0x11aec
	.uleb128 0x1a
	.long	.LASF258
	.byte	0x5
	.value	0x3ea
	.long	0x57
	.long	0x11af0
	.uleb128 0x1a
	.long	.LASF259
	.byte	0x5
	.value	0x3ec
	.long	0x65
	.long	0x11af4
	.uleb128 0x1a
	.long	.LASF260
	.byte	0x5
	.value	0x3f0
	.long	0x42
	.long	0x11afc
	.uleb128 0x1a
	.long	.LASF261
	.byte	0x5
	.value	0x3f1
	.long	0x57
	.long	0x11b00
	.uleb128 0x1a
	.long	.LASF262
	.byte	0x5
	.value	0x3f2
	.long	0x57
	.long	0x11b04
	.uleb128 0x1a
	.long	.LASF263
	.byte	0x5
	.value	0x3f3
	.long	0x57
	.long	0x11b08
	.uleb128 0x1a
	.long	.LASF264
	.byte	0x5
	.value	0x3f4
	.long	0x57
	.long	0x11b0c
	.uleb128 0x1a
	.long	.LASF265
	.byte	0x5
	.value	0x3f5
	.long	0x42
	.long	0x11b10
	.uleb128 0x1a
	.long	.LASF266
	.byte	0x5
	.value	0x3f7
	.long	0x42
	.long	0x11b14
	.uleb128 0x1a
	.long	.LASF267
	.byte	0x5
	.value	0x3f8
	.long	0x42
	.long	0x11b18
	.uleb128 0x1a
	.long	.LASF268
	.byte	0x5
	.value	0x3f9
	.long	0x42
	.long	0x11b1c
	.uleb128 0x1a
	.long	.LASF269
	.byte	0x5
	.value	0x3fa
	.long	0x42
	.long	0x11b20
	.uleb128 0x1a
	.long	.LASF270
	.byte	0x5
	.value	0x3fb
	.long	0x42
	.long	0x11b24
	.uleb128 0x1a
	.long	.LASF271
	.byte	0x5
	.value	0x3fc
	.long	0x42
	.long	0x11b28
	.uleb128 0x1a
	.long	.LASF272
	.byte	0x5
	.value	0x3ff
	.long	0x42
	.long	0x11b2c
	.uleb128 0x1a
	.long	.LASF273
	.byte	0x5
	.value	0x403
	.long	0x57
	.long	0x11b30
	.uleb128 0x1a
	.long	.LASF274
	.byte	0x5
	.value	0x405
	.long	0x57
	.long	0x11b34
	.uleb128 0x1a
	.long	.LASF275
	.byte	0x5
	.value	0x406
	.long	0x57
	.long	0x11b38
	.uleb128 0x1a
	.long	.LASF276
	.byte	0x5
	.value	0x407
	.long	0x57
	.long	0x11b3c
	.uleb128 0x1a
	.long	.LASF277
	.byte	0x5
	.value	0x409
	.long	0x1707
	.long	0x11b40
	.uleb128 0x1a
	.long	.LASF278
	.byte	0x5
	.value	0x40b
	.long	0x57
	.long	0x11b48
	.uleb128 0x1a
	.long	.LASF279
	.byte	0x5
	.value	0x40f
	.long	0x57
	.long	0x11b4c
	.uleb128 0x1a
	.long	.LASF280
	.byte	0x5
	.value	0x410
	.long	0x57
	.long	0x11b50
	.uleb128 0x1a
	.long	.LASF281
	.byte	0x5
	.value	0x411
	.long	0x57
	.long	0x11b54
	.uleb128 0x1a
	.long	.LASF282
	.byte	0x5
	.value	0x412
	.long	0x57
	.long	0x11b58
	.uleb128 0x1a
	.long	.LASF283
	.byte	0x5
	.value	0x413
	.long	0x8cd
	.long	0x11b60
	.uleb128 0x1a
	.long	.LASF284
	.byte	0x5
	.value	0x414
	.long	0x57
	.long	0x11b68
	.uleb128 0x1a
	.long	.LASF285
	.byte	0x5
	.value	0x415
	.long	0x57
	.long	0x11b6c
	.uleb128 0x1a
	.long	.LASF286
	.byte	0x5
	.value	0x416
	.long	0x57
	.long	0x11b70
	.uleb128 0x1a
	.long	.LASF287
	.byte	0x5
	.value	0x417
	.long	0x57
	.long	0x11b74
	.uleb128 0x1a
	.long	.LASF288
	.byte	0x5
	.value	0x418
	.long	0x57
	.long	0x11b78
	.uleb128 0x1a
	.long	.LASF289
	.byte	0x5
	.value	0x419
	.long	0x57
	.long	0x11b7c
	.uleb128 0x1a
	.long	.LASF290
	.byte	0x5
	.value	0x41a
	.long	0x57
	.long	0x11b80
	.uleb128 0x1a
	.long	.LASF291
	.byte	0x5
	.value	0x41b
	.long	0x170d
	.long	0x11b88
	.uleb128 0x1a
	.long	.LASF292
	.byte	0x5
	.value	0x41c
	.long	0x57
	.long	0x11b90
	.uleb128 0x1a
	.long	.LASF293
	.byte	0x5
	.value	0x41d
	.long	0x57
	.long	0x11b94
	.uleb128 0x1a
	.long	.LASF294
	.byte	0x5
	.value	0x41e
	.long	0x57
	.long	0x11b98
	.uleb128 0x1a
	.long	.LASF295
	.byte	0x5
	.value	0x41f
	.long	0x57
	.long	0x11b9c
	.uleb128 0x1a
	.long	.LASF296
	.byte	0x5
	.value	0x420
	.long	0x57
	.long	0x11ba0
	.uleb128 0x1a
	.long	.LASF297
	.byte	0x5
	.value	0x421
	.long	0x57
	.long	0x11ba4
	.uleb128 0x1a
	.long	.LASF298
	.byte	0x5
	.value	0x422
	.long	0x57
	.long	0x11ba8
	.uleb128 0x1a
	.long	.LASF299
	.byte	0x5
	.value	0x423
	.long	0x57
	.long	0x11bac
	.uleb128 0x1a
	.long	.LASF300
	.byte	0x5
	.value	0x424
	.long	0x57
	.long	0x11bb0
	.uleb128 0x1a
	.long	.LASF301
	.byte	0x5
	.value	0x425
	.long	0x57
	.long	0x11bb4
	.uleb128 0x1a
	.long	.LASF302
	.byte	0x5
	.value	0x426
	.long	0x57
	.long	0x11bb8
	.uleb128 0x1a
	.long	.LASF303
	.byte	0x5
	.value	0x428
	.long	0x57
	.long	0x11bbc
	.uleb128 0x1a
	.long	.LASF304
	.byte	0x5
	.value	0x42a
	.long	0x57
	.long	0x11bc0
	.uleb128 0x1a
	.long	.LASF305
	.byte	0x5
	.value	0x42b
	.long	0x57
	.long	0x11bc4
	.uleb128 0x1a
	.long	.LASF306
	.byte	0x5
	.value	0x42c
	.long	0x57
	.long	0x11bc8
	.uleb128 0x1a
	.long	.LASF307
	.byte	0x5
	.value	0x42e
	.long	0x57
	.long	0x11bcc
	.uleb128 0x1a
	.long	.LASF308
	.byte	0x5
	.value	0x430
	.long	0x57
	.long	0x11bd0
	.uleb128 0x1a
	.long	.LASF309
	.byte	0x5
	.value	0x431
	.long	0x57
	.long	0x11bd4
	.uleb128 0x1a
	.long	.LASF310
	.byte	0x5
	.value	0x432
	.long	0x57
	.long	0x11bd8
	.uleb128 0x1a
	.long	.LASF311
	.byte	0x5
	.value	0x433
	.long	0x57
	.long	0x11bdc
	.uleb128 0x1a
	.long	.LASF312
	.byte	0x5
	.value	0x434
	.long	0x57
	.long	0x11be0
	.uleb128 0x1a
	.long	.LASF313
	.byte	0x5
	.value	0x435
	.long	0x57
	.long	0x11be4
	.uleb128 0x1a
	.long	.LASF314
	.byte	0x5
	.value	0x436
	.long	0x42
	.long	0x11be8
	.uleb128 0x1a
	.long	.LASF315
	.byte	0x5
	.value	0x437
	.long	0x57
	.long	0x11bec
	.uleb128 0x1a
	.long	.LASF316
	.byte	0x5
	.value	0x438
	.long	0x57
	.long	0x11bf0
	.uleb128 0x1a
	.long	.LASF317
	.byte	0x5
	.value	0x43a
	.long	0x57
	.long	0x11bf4
	.uleb128 0x1a
	.long	.LASF318
	.byte	0x5
	.value	0x43b
	.long	0x57
	.long	0x11bf8
	.uleb128 0x1a
	.long	.LASF319
	.byte	0x5
	.value	0x43c
	.long	0x57
	.long	0x11bfc
	.uleb128 0x1a
	.long	.LASF320
	.byte	0x5
	.value	0x43d
	.long	0x57
	.long	0x11c00
	.uleb128 0x1a
	.long	.LASF321
	.byte	0x5
	.value	0x43e
	.long	0x57
	.long	0x11c04
	.uleb128 0x1a
	.long	.LASF322
	.byte	0x5
	.value	0x43f
	.long	0x57
	.long	0x11c08
	.uleb128 0x1a
	.long	.LASF323
	.byte	0x5
	.value	0x441
	.long	0x65
	.long	0x11c0c
	.uleb128 0x1a
	.long	.LASF324
	.byte	0x5
	.value	0x444
	.long	0x57
	.long	0x11c14
	.uleb128 0x1a
	.long	.LASF325
	.byte	0x5
	.value	0x446
	.long	0x57
	.long	0x11c18
	.uleb128 0x1a
	.long	.LASF326
	.byte	0x5
	.value	0x447
	.long	0x57
	.long	0x11c1c
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.long	0xbe1
	.uleb128 0x4
	.long	0x3b
	.long	0x15ee
	.uleb128 0x5
	.long	0x75
	.byte	0x8
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.long	0x3b
	.long	0x160a
	.uleb128 0x5
	.long	0x75
	.byte	0x4
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.long	0x3b
	.long	0x1626
	.uleb128 0x5
	.long	0x75
	.byte	0x8
	.uleb128 0x5
	.long	0x75
	.byte	0x7
	.uleb128 0x5
	.long	0x75
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.long	0x3b
	.long	0x1648
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.long	0x3b
	.long	0x165e
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.long	0x57
	.long	0x1674
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.long	0x15cc
	.uleb128 0x9
	.byte	0x8
	.long	0xbd5
	.uleb128 0x9
	.byte	0x8
	.long	0x8d4
	.uleb128 0x4
	.long	0x5ff
	.long	0x1697
	.uleb128 0x1c
	.long	0x75
	.value	0x4af
	.byte	0
	.uleb128 0x4
	.long	0x57
	.long	0x16ad
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.long	0x16b3
	.uleb128 0x9
	.byte	0x8
	.long	0x16b9
	.uleb128 0x9
	.byte	0x8
	.long	0x16bf
	.uleb128 0x9
	.byte	0x8
	.long	0x16c5
	.uleb128 0x9
	.byte	0x8
	.long	0x16cb
	.uleb128 0x9
	.byte	0x8
	.long	0x50
	.uleb128 0x4
	.long	0x50
	.long	0x16e1
	.uleb128 0x5
	.long	0x75
	.byte	0xe
	.byte	0
	.uleb128 0x4
	.long	0x57
	.long	0x16f7
	.uleb128 0x5
	.long	0x75
	.byte	0x5
	.uleb128 0x5
	.long	0x75
	.byte	0xe
	.byte	0
	.uleb128 0x4
	.long	0x57
	.long	0x1707
	.uleb128 0x5
	.long	0x75
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.long	0x529
	.uleb128 0x9
	.byte	0x8
	.long	0x8cd
	.uleb128 0x10
	.long	.LASF327
	.byte	0x5
	.value	0x449
	.long	0xbe7
	.uleb128 0x1d
	.long	.LASF349
	.byte	0x1
	.byte	0x18
	.long	0x57
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0x175d
	.uleb128 0x1e
	.long	.LASF328
	.byte	0x1
	.byte	0x18
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1e
	.long	.LASF329
	.byte	0x1
	.byte	0x18
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1f
	.long	.LASF350
	.byte	0x1
	.byte	0x2f
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x1797
	.uleb128 0x20
	.long	.LASF330
	.byte	0x1
	.byte	0x31
	.long	0x1797
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x20
	.long	.LASF331
	.byte	0x1
	.byte	0x32
	.long	0x1680
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x21
	.long	0x57
	.uleb128 0x22
	.long	.LASF332
	.byte	0x1
	.byte	0x5c
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x17e0
	.uleb128 0x1e
	.long	.LASF54
	.byte	0x1
	.byte	0x5c
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x23
	.string	"x"
	.byte	0x1
	.byte	0x5c
	.long	0x1ca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.string	"y"
	.byte	0x1
	.byte	0x5c
	.long	0x1ca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x24
	.long	.LASF333
	.byte	0x1
	.byte	0x72
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x1824
	.uleb128 0x1e
	.long	.LASF54
	.byte	0x1
	.byte	0x72
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x23
	.string	"x"
	.byte	0x1
	.byte	0x72
	.long	0x1ca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x23
	.string	"y"
	.byte	0x1
	.byte	0x72
	.long	0x1ca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x24
	.long	.LASF334
	.byte	0x1
	.byte	0x8b
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x18b0
	.uleb128 0x1e
	.long	.LASF335
	.byte	0x1
	.byte	0x8b
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x23
	.string	"xN"
	.byte	0x1
	.byte	0x8b
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.string	"yN"
	.byte	0x1
	.byte	0x8b
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1e
	.long	.LASF336
	.byte	0x1
	.byte	0x8b
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.string	"pix"
	.byte	0x1
	.byte	0x8b
	.long	0x18b0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x20
	.long	.LASF337
	.byte	0x1
	.byte	0x8d
	.long	0x1680
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x20
	.long	.LASF338
	.byte	0x1
	.byte	0x8e
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x20
	.long	.LASF339
	.byte	0x1
	.byte	0x8e
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.long	0x474
	.uleb128 0x24
	.long	.LASF340
	.byte	0x1
	.byte	0xdc
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x1952
	.uleb128 0x1e
	.long	.LASF335
	.byte	0x1
	.byte	0xdc
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x23
	.string	"xN"
	.byte	0x1
	.byte	0xdc
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x23
	.string	"yN"
	.byte	0x1
	.byte	0xdc
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1e
	.long	.LASF336
	.byte	0x1
	.byte	0xdc
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x23
	.string	"pix"
	.byte	0x1
	.byte	0xdc
	.long	0x18b0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x20
	.long	.LASF337
	.byte	0x1
	.byte	0xde
	.long	0x1680
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x20
	.long	.LASF338
	.byte	0x1
	.byte	0xdf
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x20
	.long	.LASF339
	.byte	0x1
	.byte	0xdf
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.string	"yM"
	.byte	0x1
	.byte	0xe0
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x26
	.long	.LASF341
	.byte	0x1
	.value	0x256
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x19ba
	.uleb128 0x27
	.long	.LASF335
	.byte	0x1
	.value	0x256
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x28
	.string	"xN"
	.byte	0x1
	.value	0x256
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.string	"yN"
	.byte	0x1
	.value	0x256
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x27
	.long	.LASF336
	.byte	0x1
	.value	0x256
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.string	"pix"
	.byte	0x1
	.value	0x256
	.long	0x18b0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x26
	.long	.LASF342
	.byte	0x1
	.value	0x274
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a4d
	.uleb128 0x27
	.long	.LASF335
	.byte	0x1
	.value	0x274
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x27
	.long	.LASF198
	.byte	0x1
	.value	0x274
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.long	.LASF199
	.byte	0x1
	.value	0x274
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x27
	.long	.LASF343
	.byte	0x1
	.value	0x274
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.long	.LASF344
	.byte	0x1
	.value	0x274
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x28
	.string	"pix"
	.byte	0x1
	.value	0x274
	.long	0x18b0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.string	"x"
	.byte	0x1
	.value	0x276
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.string	"y"
	.byte	0x1
	.value	0x277
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x26
	.long	.LASF345
	.byte	0x1
	.value	0x297
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ae0
	.uleb128 0x27
	.long	.LASF335
	.byte	0x1
	.value	0x297
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x27
	.long	.LASF198
	.byte	0x1
	.value	0x297
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.long	.LASF199
	.byte	0x1
	.value	0x297
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x27
	.long	.LASF343
	.byte	0x1
	.value	0x297
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.long	.LASF344
	.byte	0x1
	.value	0x297
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x28
	.string	"pix"
	.byte	0x1
	.value	0x297
	.long	0x18b0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.string	"x"
	.byte	0x1
	.value	0x299
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.string	"y"
	.byte	0x1
	.value	0x29a
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2a
	.string	"img"
	.byte	0x5
	.value	0x4b8
	.long	0x1aec
	.uleb128 0x9
	.byte	0x8
	.long	0x1713
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x8
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x25
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
	.uleb128 0x27
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
.LASF311:
	.string	"bitdepth_luma_qp_scale"
.LASF314:
	.string	"dc_pred_value"
.LASF312:
	.string	"bitdepth_chroma_qp_scale"
.LASF275:
	.string	"no_output_of_prior_pics_flag"
.LASF240:
	.string	"num_ref_idx_l1_active"
.LASF257:
	.string	"pic_order_cnt_lsb"
.LASF300:
	.string	"write_macroblock"
.LASF7:
	.string	"sizetype"
.LASF303:
	.string	"DeblockCall"
.LASF333:
	.string	"get_mb_pos"
.LASF181:
	.string	"width_cr"
.LASF270:
	.string	"PicSizeInMbs"
.LASF217:
	.string	"MB_SyntaxElements"
.LASF212:
	.string	"cofAC"
.LASF320:
	.string	"lossless_qpprime_flag"
.LASF227:
	.string	"imgtr_next_P_fld"
.LASF14:
	.string	"int64"
.LASF164:
	.string	"slices"
.LASF67:
	.string	"long_term_pic_num"
.LASF193:
	.string	"ipredmode8x8"
.LASF197:
	.string	"mb_y"
.LASF277:
	.string	"dec_ref_pic_marking_buffer"
.LASF69:
	.string	"max_long_term_frame_idx_plus1"
.LASF321:
	.string	"mb_cr_size_x"
.LASF242:
	.string	"top_field"
.LASF31:
	.string	"state"
.LASF45:
	.string	"bcbp_contexts"
.LASF71:
	.string	"syntaxelement"
.LASF72:
	.string	"type"
.LASF232:
	.string	"fw_mb_mode"
.LASF271:
	.string	"FrameSizeInMbs"
.LASF119:
	.string	"LFDisableIdc"
.LASF297:
	.string	"IFLAG"
.LASF133:
	.string	"bits_to_go_skip"
.LASF234:
	.string	"pred_mv"
.LASF317:
	.string	"num_blk8x8_uv"
.LASF150:
	.string	"rmpni_buffer"
.LASF100:
	.string	"mb_field"
.LASF330:
	.string	"mb_nr"
.LASF68:
	.string	"long_term_frame_idx"
.LASF192:
	.string	"ipredmode"
.LASF92:
	.string	"b8mode"
.LASF159:
	.string	"slice_too_big"
.LASF209:
	.string	"mprr_2"
.LASF210:
	.string	"mprr_3"
.LASF126:
	.string	"bits_to_go"
.LASF64:
	.string	"DecRefPicMarking_s"
.LASF70:
	.string	"DecRefPicMarking_t"
.LASF301:
	.string	"bot_MB"
.LASF299:
	.string	"BasicUnit"
.LASF177:
	.string	"num_ref_frames"
.LASF27:
	.string	"EcodestrmS"
.LASF219:
	.string	"intra_block"
.LASF6:
	.string	"long int"
.LASF325:
	.string	"auto_crop_right"
.LASF211:
	.string	"mprr_c"
.LASF109:
	.string	"all_blk_8x8"
.LASF273:
	.string	"nal_reference_idc"
.LASF263:
	.string	"framepoc"
.LASF280:
	.string	"NumberofTextureBits"
.LASF207:
	.string	"opix_c_y"
.LASF302:
	.string	"write_macroblock_frame"
.LASF130:
	.string	"stored_byte_buf"
.LASF267:
	.string	"PicHeightInMapUnits"
.LASF288:
	.string	"NumberofGOP"
.LASF343:
	.string	"rel_x"
.LASF309:
	.string	"bitdepth_luma"
.LASF342:
	.string	"getLuma4x4Neighbour"
.LASF206:
	.string	"opix_c_x"
.LASF17:
	.string	"Ebuffer"
.LASF16:
	.string	"Erange"
.LASF4:
	.string	"signed char"
.LASF179:
	.string	"framerate"
.LASF145:
	.string	"max_part_nr"
.LASF30:
	.string	"EncodingEnvironmentPtr"
.LASF252:
	.string	"delta_pic_order_always_zero_flag"
.LASF99:
	.string	"IntraChromaPredModeFlag"
.LASF76:
	.string	"context"
.LASF154:
	.string	"long_term_pic_idx_l0"
.LASF158:
	.string	"long_term_pic_idx_l1"
.LASF151:
	.string	"ref_pic_list_reordering_flag_l0"
.LASF155:
	.string	"ref_pic_list_reordering_flag_l1"
.LASF290:
	.string	"NumberofPPicture"
.LASF285:
	.string	"NumberofMBHeaderBits"
.LASF213:
	.string	"cofDC"
.LASF1:
	.string	"unsigned char"
.LASF90:
	.string	"intra_pred_modes8x8"
.LASF304:
	.string	"last_pic_bottom_field"
.LASF236:
	.string	"bipred_mv1"
.LASF237:
	.string	"bipred_mv2"
.LASF47:
	.string	"last_contexts"
.LASF98:
	.string	"c_ipred_mode"
.LASF316:
	.string	"max_imgpel_value_uv"
.LASF152:
	.string	"remapping_of_pic_nums_idc_l0"
.LASF156:
	.string	"remapping_of_pic_nums_idc_l1"
.LASF153:
	.string	"abs_diff_pic_num_minus1_l0"
.LASF157:
	.string	"abs_diff_pic_num_minus1_l1"
.LASF127:
	.string	"byte_buf"
.LASF112:
	.string	"bi_pred_me"
.LASF335:
	.string	"curr_mb_nr"
.LASF83:
	.string	"delta_qp"
.LASF331:
	.string	"currMB"
.LASF178:
	.string	"max_num_references"
.LASF8:
	.string	"char"
.LASF191:
	.string	"block_c_x"
.LASF40:
	.string	"transform_size_contexts"
.LASF218:
	.string	"quad"
.LASF187:
	.string	"is_intra_block"
.LASF144:
	.string	"start_mb_nr"
.LASF54:
	.string	"mb_addr"
.LASF337:
	.string	"currMb"
.LASF86:
	.string	"mb_available_up"
.LASF259:
	.string	"delta_pic_order_cnt"
.LASF348:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/464.h264ref/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF279:
	.string	"NumberofHeaderBits"
.LASF172:
	.string	"nb_references"
.LASF75:
	.string	"bitpattern"
.LASF39:
	.string	"mb_aff_contexts"
.LASF110:
	.string	"luma_transform_size_8x8_flag"
.LASF199:
	.string	"block_y"
.LASF214:
	.string	"currentPicture"
.LASF35:
	.string	"b8_type_contexts"
.LASF230:
	.string	"p_interval"
.LASF170:
	.string	"Picture"
.LASF344:
	.string	"rel_y"
.LASF228:
	.string	"imgtr_last_P_fld"
.LASF115:
	.string	"prev_delta_qp"
.LASF188:
	.string	"is_v_block"
.LASF190:
	.string	"mb_y_intra"
.LASF34:
	.string	"mb_type_contexts"
.LASF350:
	.string	"CheckAvailabilityOfNeighbors"
.LASF134:
	.string	"streamBuffer"
.LASF25:
	.string	"Ebits_to_goS"
.LASF291:
	.string	"MADofMB"
.LASF239:
	.string	"num_ref_idx_l0_active"
.LASF278:
	.string	"model_number"
.LASF80:
	.string	"macroblock"
.LASF261:
	.string	"toppoc"
.LASF250:
	.string	"MbaffFrameFlag"
.LASF15:
	.string	"Elow"
.LASF204:
	.string	"opix_x"
.LASF205:
	.string	"opix_y"
.LASF143:
	.string	"picture_type"
.LASF323:
	.string	"chroma_qp_offset"
.LASF269:
	.string	"PicHeightInMbs"
.LASF241:
	.string	"field_mode"
.LASF329:
	.string	"currMbAddr"
.LASF29:
	.string	"EncodingEnvironment"
.LASF140:
	.string	"writeSyntaxElement"
.LASF341:
	.string	"getNeighbour"
.LASF0:
	.string	"long unsigned int"
.LASF43:
	.string	"cipr_contexts"
.LASF28:
	.string	"Ecodestrm_lenS"
.LASF146:
	.string	"num_mb"
.LASF262:
	.string	"bottompoc"
.LASF243:
	.string	"mvscale"
.LASF224:
	.string	"pstruct_next_P"
.LASF96:
	.string	"lf_alpha_c0_offset"
.LASF326:
	.string	"auto_crop_bottom"
.LASF53:
	.string	"available"
.LASF292:
	.string	"BasicUnitQP"
.LASF284:
	.string	"NumberofMBTextureBits"
.LASF94:
	.string	"cbp_bits"
.LASF202:
	.string	"pix_c_x"
.LASF203:
	.string	"pix_c_y"
.LASF231:
	.string	"b_frame_to_code"
.LASF165:
	.string	"bits_per_picture"
.LASF189:
	.string	"mb_y_upd"
.LASF60:
	.string	"RMPNI"
.LASF120:
	.string	"LFAlphaC0Offset"
.LASF97:
	.string	"lf_beta_offset"
.LASF66:
	.string	"difference_of_pic_nums_minus1"
.LASF208:
	.string	"mprr"
.LASF41:
	.string	"MotionInfoContexts"
.LASF229:
	.string	"b_interval"
.LASF18:
	.string	"Ebits_to_go"
.LASF221:
	.string	"fld_flag"
.LASF223:
	.string	"direct_intraP_ref"
.LASF180:
	.string	"width"
.LASF340:
	.string	"getAffNeighbour"
.LASF88:
	.string	"mb_type"
.LASF129:
	.string	"stored_bits_to_go"
.LASF322:
	.string	"mb_cr_size_y"
.LASF256:
	.string	"offset_for_ref_frame"
.LASF334:
	.string	"getNonAffNeighbour"
.LASF82:
	.string	"slice_nr"
.LASF167:
	.string	"distortion_u"
.LASF168:
	.string	"distortion_v"
.LASF166:
	.string	"distortion_y"
.LASF132:
	.string	"byte_pos_skip"
.LASF121:
	.string	"LFBetaOffset"
.LASF123:
	.string	"double"
.LASF324:
	.string	"residue_transform_flag"
.LASF226:
	.string	"imgtr_last_P_frm"
.LASF48:
	.string	"one_contexts"
.LASF84:
	.string	"qpsp"
.LASF169:
	.string	"float"
.LASF32:
	.string	"count"
.LASF116:
	.string	"prev_cbp"
.LASF33:
	.string	"BiContextType"
.LASF222:
	.string	"rd_pass"
.LASF3:
	.string	"unsigned int"
.LASF57:
	.string	"PixelPos"
.LASF49:
	.string	"abs_contexts"
.LASF19:
	.string	"Ebits_to_follow"
.LASF135:
	.string	"write_flag"
.LASF174:
	.string	"total_number_mb"
.LASF21:
	.string	"Ecodestrm_len"
.LASF149:
	.string	"tex_ctx"
.LASF289:
	.string	"TotalQpforPPicture"
.LASF87:
	.string	"mb_available_left"
.LASF59:
	.string	"RMPNIbuffer_s"
.LASF63:
	.string	"RMPNIbuffer_t"
.LASF307:
	.string	"slice_group_change_cycle"
.LASF52:
	.string	"TextureInfoContexts"
.LASF246:
	.string	"layer"
.LASF93:
	.string	"b8pdir"
.LASF162:
	.string	"no_slices"
.LASF254:
	.string	"offset_for_top_to_bottom_field"
.LASF225:
	.string	"imgtr_next_P_frm"
.LASF294:
	.string	"FieldControl"
.LASF286:
	.string	"NumberofCodedBFrame"
.LASF245:
	.string	"i16offset"
.LASF58:
	.string	"pix_pos"
.LASF173:
	.string	"current_mb_nr"
.LASF200:
	.string	"pix_x"
.LASF201:
	.string	"pix_y"
.LASF346:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF327:
	.string	"ImageParameters"
.LASF139:
	.string	"ee_cabac"
.LASF196:
	.string	"mb_x"
.LASF9:
	.string	"FALSE"
.LASF117:
	.string	"predict_qp"
.LASF55:
	.string	"pos_x"
.LASF56:
	.string	"pos_y"
.LASF339:
	.string	"maxH"
.LASF198:
	.string	"block_x"
.LASF338:
	.string	"maxW"
.LASF305:
	.string	"last_has_mmco_5"
.LASF251:
	.string	"pic_order_cnt_type"
.LASF51:
	.string	"fld_last_contexts"
.LASF253:
	.string	"offset_for_non_ref_pic"
.LASF122:
	.string	"skip_flag"
.LASF265:
	.string	"frame_num"
.LASF46:
	.string	"map_contexts"
.LASF65:
	.string	"memory_management_control_operation"
.LASF136:
	.string	"Bitstream"
.LASF248:
	.string	"NoResidueDirect"
.LASF298:
	.string	"NumberofCodedMacroBlocks"
.LASF142:
	.string	"picture_id"
.LASF220:
	.string	"fld_type"
.LASF287:
	.string	"NumberofCodedPFrame"
.LASF349:
	.string	"mb_is_available"
.LASF89:
	.string	"intra_pred_modes"
.LASF183:
	.string	"height_cr"
.LASF235:
	.string	"all_mv"
.LASF182:
	.string	"height"
.LASF176:
	.string	"structure"
.LASF160:
	.string	"field_ctx"
.LASF332:
	.string	"get_mb_block_pos"
.LASF141:
	.string	"DataPartition"
.LASF216:
	.string	"mb_data"
.LASF282:
	.string	"NumberofBasicUnitTextureBits"
.LASF255:
	.string	"num_ref_frames_in_pic_order_cnt_cycle"
.LASF161:
	.string	"Slice"
.LASF137:
	.string	"datapartition"
.LASF26:
	.string	"Ebits_to_followS"
.LASF184:
	.string	"height_cr_frame"
.LASF296:
	.string	"Frame_Total_Number_MB"
.LASF73:
	.string	"value1"
.LASF74:
	.string	"value2"
.LASF138:
	.string	"bitstream"
.LASF260:
	.string	"field_picture"
.LASF22:
	.string	"ElowS"
.LASF12:
	.string	"Boolean"
.LASF249:
	.string	"redundant_pic_cnt"
.LASF313:
	.string	"bitdepth_lambda_scale"
.LASF247:
	.string	"old_layer"
.LASF171:
	.string	"number"
.LASF315:
	.string	"max_imgpel_value"
.LASF266:
	.string	"PicWidthInMbs"
.LASF347:
	.string	"mb_access.c"
.LASF308:
	.string	"pic_unit_size_on_disk"
.LASF318:
	.string	"num_cdc_coeff"
.LASF124:
	.string	"Macroblock"
.LASF37:
	.string	"ref_no_contexts"
.LASF274:
	.string	"adaptive_ref_pic_buffering_flag"
.LASF128:
	.string	"stored_byte_pos"
.LASF11:
	.string	"byte"
.LASF62:
	.string	"Next"
.LASF61:
	.string	"Data"
.LASF293:
	.string	"TopFieldFlag"
.LASF5:
	.string	"short int"
.LASF20:
	.string	"Ecodestrm"
.LASF336:
	.string	"luma"
.LASF319:
	.string	"yuv_format"
.LASF233:
	.string	"bw_mb_mode"
.LASF10:
	.string	"TRUE"
.LASF24:
	.string	"EbufferS"
.LASF264:
	.string	"ThisPOC"
.LASF283:
	.string	"TotalMADBasicUnit"
.LASF114:
	.string	"prev_qp"
.LASF36:
	.string	"mv_res_contexts"
.LASF113:
	.string	"actj"
.LASF258:
	.string	"delta_pic_order_cnt_bottom"
.LASF244:
	.string	"buf_cycle"
.LASF194:
	.string	"cod_counter"
.LASF147:
	.string	"partArr"
.LASF125:
	.string	"byte_pos"
.LASF42:
	.string	"ipr_contexts"
.LASF101:
	.string	"mbAddrA"
.LASF102:
	.string	"mbAddrB"
.LASF103:
	.string	"mbAddrC"
.LASF104:
	.string	"mbAddrD"
.LASF195:
	.string	"nz_coeff"
.LASF38:
	.string	"delta_qp_contexts"
.LASF281:
	.string	"NumberofBasicUnitHeaderBits"
.LASF79:
	.string	"SyntaxElement"
.LASF306:
	.string	"pre_frame_num"
.LASF272:
	.string	"pic_order_present_flag"
.LASF345:
	.string	"getChroma4x4Neighbour"
.LASF95:
	.string	"lf_disable"
.LASF328:
	.string	"mbAddr"
.LASF163:
	.string	"idr_flag"
.LASF2:
	.string	"short unsigned int"
.LASF295:
	.string	"FieldFrame"
.LASF118:
	.string	"predict_error"
.LASF175:
	.string	"current_slice_nr"
.LASF238:
	.string	"direct_spatial_mv_pred_flag"
.LASF310:
	.string	"bitdepth_chroma"
.LASF77:
	.string	"mapping"
.LASF13:
	.string	"int64_t"
.LASF78:
	.string	"writing"
.LASF50:
	.string	"fld_map_contexts"
.LASF131:
	.string	"byte_buf_skip"
.LASF276:
	.string	"long_term_reference_flag"
.LASF44:
	.string	"cbp_contexts"
.LASF148:
	.string	"mot_ctx"
.LASF111:
	.string	"NoMbPartLessThan8x8Flag"
.LASF185:
	.string	"subblock_x"
.LASF186:
	.string	"subblock_y"
.LASF81:
	.string	"currSEnr"
.LASF268:
	.string	"FrameHeightInMbs"
.LASF215:
	.string	"currentSlice"
.LASF85:
	.string	"bitcounter"
.LASF23:
	.string	"ErangeS"
.LASF105:
	.string	"mbAvailA"
.LASF106:
	.string	"mbAvailB"
.LASF107:
	.string	"mbAvailC"
.LASF108:
	.string	"mbAvailD"
.LASF91:
	.string	"cbp_blk"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
