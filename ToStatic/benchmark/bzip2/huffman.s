	.file	"huffman.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 huffman.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.globl	BZ2_hbMakeCodeLengths
	.type	BZ2_hbMakeCodeLengths, @function
BZ2_hbMakeCodeLengths:
.LFB2:
	.file 1 "huffman.c"
	.loc 1 107 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$5280, %rsp	#,
	movq	%rdi, -5256(%rbp)	# len, len
	movq	%rsi, -5264(%rbp)	# freq, freq
	movl	%edx, -5268(%rbp)	# alphaSize, alphaSize
	movl	%ecx, -5272(%rbp)	# maxLen, maxLen
	.loc 1 119 0
	movl	$0, -5228(%rbp)	#, i
	jmp	.L2	#
.L5:
	.loc 1 120 0
	movl	-5228(%rbp), %eax	# i, tmp126
	leal	1(%rax), %edx	#, D.3500
	movl	-5228(%rbp), %eax	# i, tmp127
	cltq
	leaq	0(,%rax,4), %rcx	#, D.3501
	movq	-5264(%rbp), %rax	# freq, tmp128
	addq	%rcx, %rax	# D.3501, D.3502
	movl	(%rax), %eax	# *_25, D.3500
	testl	%eax, %eax	# D.3500
	je	.L3	#,
	.loc 1 120 0 is_stmt 0 discriminator 1
	movl	-5228(%rbp), %eax	# i, tmp129
	cltq
	leaq	0(,%rax,4), %rcx	#, D.3501
	movq	-5264(%rbp), %rax	# freq, tmp130
	addq	%rcx, %rax	# D.3501, D.3502
	movl	(%rax), %eax	# *_29, D.3500
	sall	$8, %eax	#, iftmp.0
	jmp	.L4	#
.L3:
	.loc 1 120 0 discriminator 2
	movl	$256, %eax	#, iftmp.0
.L4:
	.loc 1 120 0 discriminator 3
	movslq	%edx, %rdx	# D.3500, tmp131
	movl	%eax, -4128(%rbp,%rdx,4)	# iftmp.0, weight
	.loc 1 119 0 is_stmt 1 discriminator 3
	addl	$1, -5228(%rbp)	#, i
.L2:
	.loc 1 119 0 is_stmt 0 discriminator 1
	movl	-5228(%rbp), %eax	# i, tmp132
	cmpl	-5268(%rbp), %eax	# alphaSize, tmp132
	jl	.L5	#,
.L35:
	.loc 1 124 0 is_stmt 1
	movl	-5268(%rbp), %eax	# alphaSize, tmp133
	movl	%eax, -5236(%rbp)	# tmp133, nNodes
	.loc 1 125 0
	movl	$0, -5232(%rbp)	#, nHeap
	.loc 1 127 0
	movl	$0, -5168(%rbp)	#, heap
	.loc 1 128 0
	movl	$0, -4128(%rbp)	#, weight
	.loc 1 129 0
	movl	$-2, -2064(%rbp)	#, parent
	.loc 1 131 0
	movl	$1, -5228(%rbp)	#, i
	jmp	.L6	#
.L9:
	.loc 1 132 0
	movl	-5228(%rbp), %eax	# i, tmp135
	cltq
	movl	$-1, -2064(%rbp,%rax,4)	#, parent
	.loc 1 133 0
	addl	$1, -5232(%rbp)	#, nHeap
	.loc 1 134 0
	movl	-5232(%rbp), %eax	# nHeap, tmp137
	cltq
	movl	-5228(%rbp), %edx	# i, tmp138
	movl	%edx, -5168(%rbp,%rax,4)	# tmp138, heap
.LBB2:
	.loc 1 135 0
	movl	-5232(%rbp), %eax	# nHeap, tmp139
	movl	%eax, -5216(%rbp)	# tmp139, zz
	movl	-5216(%rbp), %eax	# zz, tmp141
	cltq
	movl	-5168(%rbp,%rax,4), %eax	# heap, tmp142
	movl	%eax, -5192(%rbp)	# tmp142, tmp
	jmp	.L7	#
.L8:
	.loc 1 135 0 is_stmt 0 discriminator 2
	movl	-5216(%rbp), %eax	# zz, tmp143
	sarl	%eax	# D.3500
	cltq
	movl	-5168(%rbp,%rax,4), %edx	# heap, D.3500
	movl	-5216(%rbp), %eax	# zz, tmp146
	cltq
	movl	%edx, -5168(%rbp,%rax,4)	# D.3500, heap
	sarl	-5216(%rbp)	# zz
.L7:
	.loc 1 135 0 discriminator 1
	movl	-5192(%rbp), %eax	# tmp, tmp148
	cltq
	movl	-4128(%rbp,%rax,4), %edx	# weight, D.3500
	movl	-5216(%rbp), %eax	# zz, tmp149
	sarl	%eax	# D.3500
	cltq
	movl	-5168(%rbp,%rax,4), %eax	# heap, D.3500
	cltq
	movl	-4128(%rbp,%rax,4), %eax	# weight, D.3500
	cmpl	%eax, %edx	# D.3500, D.3500
	jl	.L8	#,
	.loc 1 135 0 discriminator 3
	movl	-5216(%rbp), %eax	# zz, tmp153
	cltq
	movl	-5192(%rbp), %edx	# tmp, tmp154
	movl	%edx, -5168(%rbp,%rax,4)	# tmp154, heap
.LBE2:
	.loc 1 131 0 is_stmt 1 discriminator 3
	addl	$1, -5228(%rbp)	#, i
.L6:
	.loc 1 131 0 is_stmt 0 discriminator 1
	movl	-5228(%rbp), %eax	# i, tmp155
	cmpl	-5268(%rbp), %eax	# alphaSize, tmp155
	jle	.L9	#,
	.loc 1 138 0 is_stmt 1
	cmpl	$259, -5232(%rbp)	#, nHeap
	jle	.L10	#,
	.loc 1 138 0 is_stmt 0 discriminator 1
	movl	$2001, %edi	#,
	call	BZ2_bz__AssertH__fail	#
	.loc 1 140 0 is_stmt 1 discriminator 1
	jmp	.L11	#
.L10:
	.loc 1 140 0 is_stmt 0
	jmp	.L11	#
.L24:
	.loc 1 141 0 is_stmt 1
	movl	-5164(%rbp), %eax	# heap, tmp156
	movl	%eax, -5188(%rbp)	# tmp156, n1
	movl	-5232(%rbp), %eax	# nHeap, tmp158
	cltq
	movl	-5168(%rbp,%rax,4), %eax	# heap, D.3500
	movl	%eax, -5164(%rbp)	# D.3500, heap
	subl	$1, -5232(%rbp)	#, nHeap
.LBB3:
	movl	$1, -5212(%rbp)	#, zz
	movl	-5212(%rbp), %eax	# zz, tmp160
	cltq
	movl	-5168(%rbp,%rax,4), %eax	# heap, tmp161
	movl	%eax, -5184(%rbp)	# tmp161, tmp
.L16:
	.loc 1 141 0 is_stmt 0 discriminator 1
	movl	-5212(%rbp), %eax	# zz, tmp165
	addl	%eax, %eax	# tmp164
	movl	%eax, -5208(%rbp)	# tmp164, yy
	movl	-5208(%rbp), %eax	# yy, tmp166
	cmpl	-5232(%rbp), %eax	# nHeap, tmp166
	jle	.L12	#,
	jmp	.L13	#
.L12:
	.loc 1 141 0 discriminator 2
	movl	-5208(%rbp), %eax	# yy, tmp167
	cmpl	-5232(%rbp), %eax	# nHeap, tmp167
	jge	.L14	#,
	.loc 1 141 0 discriminator 1
	movl	-5208(%rbp), %eax	# yy, tmp168
	addl	$1, %eax	#, D.3500
	cltq
	movl	-5168(%rbp,%rax,4), %eax	# heap, D.3500
	cltq
	movl	-4128(%rbp,%rax,4), %edx	# weight, D.3500
	movl	-5208(%rbp), %eax	# yy, tmp172
	cltq
	movl	-5168(%rbp,%rax,4), %eax	# heap, D.3500
	cltq
	movl	-4128(%rbp,%rax,4), %eax	# weight, D.3500
	cmpl	%eax, %edx	# D.3500, D.3500
	jge	.L14	#,
	addl	$1, -5208(%rbp)	#, yy
.L14:
	.loc 1 141 0 discriminator 2
	movl	-5184(%rbp), %eax	# tmp, tmp175
	cltq
	movl	-4128(%rbp,%rax,4), %edx	# weight, D.3500
	movl	-5208(%rbp), %eax	# yy, tmp177
	cltq
	movl	-5168(%rbp,%rax,4), %eax	# heap, D.3500
	cltq
	movl	-4128(%rbp,%rax,4), %eax	# weight, D.3500
	cmpl	%eax, %edx	# D.3500, D.3500
	jge	.L15	#,
	.loc 1 141 0 discriminator 1
	jmp	.L13	#
.L15:
	.loc 1 141 0 discriminator 2
	movl	-5208(%rbp), %eax	# yy, tmp180
	cltq
	movl	-5168(%rbp,%rax,4), %edx	# heap, D.3500
	movl	-5212(%rbp), %eax	# zz, tmp182
	cltq
	movl	%edx, -5168(%rbp,%rax,4)	# D.3500, heap
	movl	-5208(%rbp), %eax	# yy, tmp183
	movl	%eax, -5212(%rbp)	# tmp183, zz
	jmp	.L16	#
.L13:
	.loc 1 141 0 discriminator 1
	movl	-5212(%rbp), %eax	# zz, tmp185
	cltq
	movl	-5184(%rbp), %edx	# tmp, tmp186
	movl	%edx, -5168(%rbp,%rax,4)	# tmp186, heap
.LBE3:
	.loc 1 142 0 is_stmt 1 discriminator 1
	movl	-5164(%rbp), %eax	# heap, tmp187
	movl	%eax, -5180(%rbp)	# tmp187, n2
	movl	-5232(%rbp), %eax	# nHeap, tmp189
	cltq
	movl	-5168(%rbp,%rax,4), %eax	# heap, D.3500
	movl	%eax, -5164(%rbp)	# D.3500, heap
	subl	$1, -5232(%rbp)	#, nHeap
.LBB4:
	movl	$1, -5204(%rbp)	#, zz
	movl	-5204(%rbp), %eax	# zz, tmp191
	cltq
	movl	-5168(%rbp,%rax,4), %eax	# heap, tmp192
	movl	%eax, -5176(%rbp)	# tmp192, tmp
.L21:
	movl	-5204(%rbp), %eax	# zz, tmp196
	addl	%eax, %eax	# tmp195
	movl	%eax, -5200(%rbp)	# tmp195, yy
	movl	-5200(%rbp), %eax	# yy, tmp197
	cmpl	-5232(%rbp), %eax	# nHeap, tmp197
	jle	.L17	#,
	jmp	.L18	#
.L17:
	.loc 1 142 0 is_stmt 0 discriminator 2
	movl	-5200(%rbp), %eax	# yy, tmp198
	cmpl	-5232(%rbp), %eax	# nHeap, tmp198
	jge	.L19	#,
	.loc 1 142 0 discriminator 1
	movl	-5200(%rbp), %eax	# yy, tmp199
	addl	$1, %eax	#, D.3500
	cltq
	movl	-5168(%rbp,%rax,4), %eax	# heap, D.3500
	cltq
	movl	-4128(%rbp,%rax,4), %edx	# weight, D.3500
	movl	-5200(%rbp), %eax	# yy, tmp203
	cltq
	movl	-5168(%rbp,%rax,4), %eax	# heap, D.3500
	cltq
	movl	-4128(%rbp,%rax,4), %eax	# weight, D.3500
	cmpl	%eax, %edx	# D.3500, D.3500
	jge	.L19	#,
	addl	$1, -5200(%rbp)	#, yy
.L19:
	.loc 1 142 0 discriminator 2
	movl	-5176(%rbp), %eax	# tmp, tmp206
	cltq
	movl	-4128(%rbp,%rax,4), %edx	# weight, D.3500
	movl	-5200(%rbp), %eax	# yy, tmp208
	cltq
	movl	-5168(%rbp,%rax,4), %eax	# heap, D.3500
	cltq
	movl	-4128(%rbp,%rax,4), %eax	# weight, D.3500
	cmpl	%eax, %edx	# D.3500, D.3500
	jge	.L20	#,
	.loc 1 142 0 discriminator 1
	jmp	.L18	#
.L20:
	.loc 1 142 0 discriminator 2
	movl	-5200(%rbp), %eax	# yy, tmp211
	cltq
	movl	-5168(%rbp,%rax,4), %edx	# heap, D.3500
	movl	-5204(%rbp), %eax	# zz, tmp213
	cltq
	movl	%edx, -5168(%rbp,%rax,4)	# D.3500, heap
	movl	-5200(%rbp), %eax	# yy, tmp214
	movl	%eax, -5204(%rbp)	# tmp214, zz
	jmp	.L21	#
.L18:
	.loc 1 142 0 discriminator 1
	movl	-5204(%rbp), %eax	# zz, tmp216
	cltq
	movl	-5176(%rbp), %edx	# tmp, tmp217
	movl	%edx, -5168(%rbp,%rax,4)	# tmp217, heap
.LBE4:
	.loc 1 143 0 is_stmt 1 discriminator 1
	addl	$1, -5236(%rbp)	#, nNodes
	.loc 1 144 0 discriminator 1
	movl	-5180(%rbp), %eax	# n2, tmp219
	cltq
	movl	-5236(%rbp), %edx	# nNodes, tmp220
	movl	%edx, -2064(%rbp,%rax,4)	# tmp220, parent
	movl	-5180(%rbp), %eax	# n2, tmp222
	cltq
	movl	-2064(%rbp,%rax,4), %edx	# parent, D.3500
	movl	-5188(%rbp), %eax	# n1, tmp224
	cltq
	movl	%edx, -2064(%rbp,%rax,4)	# D.3500, parent
	.loc 1 145 0 discriminator 1
	movl	-5188(%rbp), %eax	# n1, tmp226
	cltq
	movl	-4128(%rbp,%rax,4), %eax	# weight, D.3500
	movb	$0, %al	#, D.3503
	movl	%eax, %edx	# D.3503, D.3503
	movl	-5180(%rbp), %eax	# n2, tmp228
	cltq
	movl	-4128(%rbp,%rax,4), %eax	# weight, D.3500
	movb	$0, %al	#, D.3503
	leal	(%rdx,%rax), %ecx	#, D.3503
	movl	-5180(%rbp), %eax	# n2, tmp230
	cltq
	movl	-4128(%rbp,%rax,4), %eax	# weight, D.3500
	movzbl	%al, %edx	# D.3500, D.3500
	movl	-5188(%rbp), %eax	# n1, tmp232
	cltq
	movl	-4128(%rbp,%rax,4), %eax	# weight, D.3500
	movzbl	%al, %eax	# D.3500, D.3500
	cmpl	%eax, %edx	# D.3500, D.3500
	cmovge	%edx, %eax	# D.3500,, D.3500
	addl	$1, %eax	#, D.3500
	orl	%ecx, %eax	# D.3503, D.3503
	movl	%eax, %edx	# D.3503, D.3500
	movl	-5236(%rbp), %eax	# nNodes, tmp234
	cltq
	movl	%edx, -4128(%rbp,%rax,4)	# D.3500, weight
	.loc 1 146 0 discriminator 1
	movl	-5236(%rbp), %eax	# nNodes, tmp236
	cltq
	movl	$-1, -2064(%rbp,%rax,4)	#, parent
	.loc 1 147 0 discriminator 1
	addl	$1, -5232(%rbp)	#, nHeap
	.loc 1 148 0 discriminator 1
	movl	-5232(%rbp), %eax	# nHeap, tmp238
	cltq
	movl	-5236(%rbp), %edx	# nNodes, tmp239
	movl	%edx, -5168(%rbp,%rax,4)	# tmp239, heap
.LBB5:
	.loc 1 149 0 discriminator 1
	movl	-5232(%rbp), %eax	# nHeap, tmp240
	movl	%eax, -5196(%rbp)	# tmp240, zz
	movl	-5196(%rbp), %eax	# zz, tmp242
	cltq
	movl	-5168(%rbp,%rax,4), %eax	# heap, tmp243
	movl	%eax, -5172(%rbp)	# tmp243, tmp
	jmp	.L22	#
.L23:
	.loc 1 149 0 is_stmt 0 discriminator 2
	movl	-5196(%rbp), %eax	# zz, tmp244
	sarl	%eax	# D.3500
	cltq
	movl	-5168(%rbp,%rax,4), %edx	# heap, D.3500
	movl	-5196(%rbp), %eax	# zz, tmp247
	cltq
	movl	%edx, -5168(%rbp,%rax,4)	# D.3500, heap
	sarl	-5196(%rbp)	# zz
.L22:
	.loc 1 149 0 discriminator 1
	movl	-5172(%rbp), %eax	# tmp, tmp249
	cltq
	movl	-4128(%rbp,%rax,4), %edx	# weight, D.3500
	movl	-5196(%rbp), %eax	# zz, tmp250
	sarl	%eax	# D.3500
	cltq
	movl	-5168(%rbp,%rax,4), %eax	# heap, D.3500
	cltq
	movl	-4128(%rbp,%rax,4), %eax	# weight, D.3500
	cmpl	%eax, %edx	# D.3500, D.3500
	jl	.L23	#,
	.loc 1 149 0 discriminator 3
	movl	-5196(%rbp), %eax	# zz, tmp254
	cltq
	movl	-5172(%rbp), %edx	# tmp, tmp255
	movl	%edx, -5168(%rbp,%rax,4)	# tmp255, heap
.L11:
.LBE5:
	.loc 1 140 0 is_stmt 1 discriminator 1
	cmpl	$1, -5232(%rbp)	#, nHeap
	jg	.L24	#,
	.loc 1 152 0
	cmpl	$515, -5236(%rbp)	#, nNodes
	jle	.L25	#,
	.loc 1 152 0 is_stmt 0 discriminator 1
	movl	$2002, %edi	#,
	call	BZ2_bz__AssertH__fail	#
.L25:
	.loc 1 154 0 is_stmt 1
	movb	$0, -5237(%rbp)	#, tooLong
	.loc 1 155 0
	movl	$1, -5228(%rbp)	#, i
	jmp	.L26	#
.L30:
	.loc 1 156 0
	movl	$0, -5224(%rbp)	#, j
	.loc 1 157 0
	movl	-5228(%rbp), %eax	# i, tmp256
	movl	%eax, -5220(%rbp)	# tmp256, k
	.loc 1 158 0
	jmp	.L27	#
.L28:
	.loc 1 158 0 is_stmt 0 discriminator 2
	movl	-5220(%rbp), %eax	# k, tmp258
	cltq
	movl	-2064(%rbp,%rax,4), %eax	# parent, tmp259
	movl	%eax, -5220(%rbp)	# tmp259, k
	addl	$1, -5224(%rbp)	#, j
.L27:
	.loc 1 158 0 discriminator 1
	movl	-5220(%rbp), %eax	# k, tmp261
	cltq
	movl	-2064(%rbp,%rax,4), %eax	# parent, D.3500
	testl	%eax, %eax	# D.3500
	jns	.L28	#,
	.loc 1 159 0 is_stmt 1
	movl	-5228(%rbp), %eax	# i, tmp262
	cltq
	leaq	-1(%rax), %rdx	#, D.3504
	movq	-5256(%rbp), %rax	# len, tmp263
	addq	%rax, %rdx	# tmp263, D.3505
	movl	-5224(%rbp), %eax	# j, tmp264
	movb	%al, (%rdx)	# D.3506, *_120
	.loc 1 160 0
	movl	-5224(%rbp), %eax	# j, tmp265
	cmpl	-5272(%rbp), %eax	# maxLen, tmp265
	jle	.L29	#,
	.loc 1 160 0 is_stmt 0 discriminator 1
	movb	$1, -5237(%rbp)	#, tooLong
.L29:
	.loc 1 155 0 is_stmt 1
	addl	$1, -5228(%rbp)	#, i
.L26:
	.loc 1 155 0 is_stmt 0 discriminator 1
	movl	-5228(%rbp), %eax	# i, tmp266
	cmpl	-5268(%rbp), %eax	# alphaSize, tmp266
	jle	.L30	#,
	.loc 1 163 0 is_stmt 1
	cmpb	$0, -5237(%rbp)	#, tooLong
	jne	.L31	#,
	.loc 1 163 0 is_stmt 0 discriminator 1
	jmp	.L36	#
.L31:
	.loc 1 182 0 is_stmt 1
	movl	$1, -5228(%rbp)	#, i
	jmp	.L33	#
.L34:
	.loc 1 183 0 discriminator 2
	movl	-5228(%rbp), %eax	# i, tmp268
	cltq
	movl	-4128(%rbp,%rax,4), %eax	# weight, D.3500
	sarl	$8, %eax	#, tmp269
	movl	%eax, -5224(%rbp)	# tmp269, j
	.loc 1 184 0 discriminator 2
	movl	-5224(%rbp), %eax	# j, tmp270
	movl	%eax, %edx	# tmp270, tmp271
	shrl	$31, %edx	#, tmp271
	addl	%edx, %eax	# tmp271, tmp272
	sarl	%eax	# tmp273
	addl	$1, %eax	#, tmp274
	movl	%eax, -5224(%rbp)	# tmp274, j
	.loc 1 185 0 discriminator 2
	movl	-5224(%rbp), %eax	# j, tmp275
	sall	$8, %eax	#, D.3500
	movl	%eax, %edx	# D.3500, D.3500
	movl	-5228(%rbp), %eax	# i, tmp277
	cltq
	movl	%edx, -4128(%rbp,%rax,4)	# D.3500, weight
	.loc 1 182 0 discriminator 2
	addl	$1, -5228(%rbp)	#, i
.L33:
	.loc 1 182 0 is_stmt 0 discriminator 1
	movl	-5228(%rbp), %eax	# i, tmp278
	cmpl	-5268(%rbp), %eax	# alphaSize, tmp278
	jle	.L34	#,
	.loc 1 187 0 is_stmt 1
	jmp	.L35	#
.L36:
	.loc 1 188 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	BZ2_hbMakeCodeLengths, .-BZ2_hbMakeCodeLengths
	.globl	BZ2_hbAssignCodes
	.type	BZ2_hbAssignCodes, @function
BZ2_hbAssignCodes:
.LFB3:
	.loc 1 197 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# code, code
	movq	%rsi, -32(%rbp)	# length, length
	movl	%edx, -36(%rbp)	# minLen, minLen
	movl	%ecx, -40(%rbp)	# maxLen, maxLen
	movl	%r8d, -44(%rbp)	# alphaSize, alphaSize
	.loc 1 200 0
	movl	$0, -8(%rbp)	#, vec
	.loc 1 201 0
	movl	-36(%rbp), %eax	# minLen, tmp66
	movl	%eax, -12(%rbp)	# tmp66, n
	jmp	.L38	#
.L42:
	.loc 1 202 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L39	#
.L41:
	.loc 1 203 0
	movl	-4(%rbp), %eax	# i, tmp67
	movslq	%eax, %rdx	# tmp67, D.3507
	movq	-32(%rbp), %rax	# length, tmp68
	addq	%rdx, %rax	# D.3507, D.3508
	movzbl	(%rax), %eax	# *_14, D.3509
	movzbl	%al, %eax	# D.3509, D.3510
	cmpl	-12(%rbp), %eax	# n, D.3510
	jne	.L40	#,
	.loc 1 203 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# i, tmp69
	cltq
	leaq	0(,%rax,4), %rdx	#, D.3511
	movq	-24(%rbp), %rax	# code, tmp70
	addq	%rax, %rdx	# tmp70, D.3512
	movl	-8(%rbp), %eax	# vec, tmp71
	movl	%eax, (%rdx)	# tmp71, *_20
	addl	$1, -8(%rbp)	#, vec
.L40:
	.loc 1 202 0 is_stmt 1
	addl	$1, -4(%rbp)	#, i
.L39:
	.loc 1 202 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# i, tmp72
	cmpl	-44(%rbp), %eax	# alphaSize, tmp72
	jl	.L41	#,
	.loc 1 204 0 is_stmt 1
	sall	-8(%rbp)	# vec
	.loc 1 201 0
	addl	$1, -12(%rbp)	#, n
.L38:
	.loc 1 201 0 is_stmt 0 discriminator 1
	movl	-12(%rbp), %eax	# n, tmp73
	cmpl	-40(%rbp), %eax	# maxLen, tmp73
	jle	.L42	#,
	.loc 1 206 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	BZ2_hbAssignCodes, .-BZ2_hbAssignCodes
	.globl	BZ2_hbCreateDecodeTables
	.type	BZ2_hbCreateDecodeTables, @function
BZ2_hbCreateDecodeTables:
.LFB4:
	.loc 1 217 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# limit, limit
	movq	%rsi, -32(%rbp)	# base, base
	movq	%rdx, -40(%rbp)	# perm, perm
	movq	%rcx, -48(%rbp)	# length, length
	movl	%r8d, -52(%rbp)	# minLen, minLen
	movl	%r9d, -56(%rbp)	# maxLen, maxLen
	.loc 1 220 0
	movl	$0, -16(%rbp)	#, pp
	.loc 1 221 0
	movl	-52(%rbp), %eax	# minLen, tmp123
	movl	%eax, -12(%rbp)	# tmp123, i
	jmp	.L44	#
.L48:
	.loc 1 222 0
	movl	$0, -8(%rbp)	#, j
	jmp	.L45	#
.L47:
	.loc 1 223 0
	movl	-8(%rbp), %eax	# j, tmp124
	movslq	%eax, %rdx	# tmp124, D.3513
	movq	-48(%rbp), %rax	# length, tmp125
	addq	%rdx, %rax	# D.3513, D.3514
	movzbl	(%rax), %eax	# *_21, D.3515
	movzbl	%al, %eax	# D.3515, D.3516
	cmpl	-12(%rbp), %eax	# i, D.3516
	jne	.L46	#,
	.loc 1 223 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# pp, tmp126
	cltq
	leaq	0(,%rax,4), %rdx	#, D.3517
	movq	-40(%rbp), %rax	# perm, tmp127
	addq	%rax, %rdx	# tmp127, D.3518
	movl	-8(%rbp), %eax	# j, tmp128
	movl	%eax, (%rdx)	# tmp128, *_27
	addl	$1, -16(%rbp)	#, pp
.L46:
	.loc 1 222 0 is_stmt 1
	addl	$1, -8(%rbp)	#, j
.L45:
	.loc 1 222 0 is_stmt 0 discriminator 1
	movl	-8(%rbp), %eax	# j, tmp129
	cmpl	16(%rbp), %eax	# alphaSize, tmp129
	jl	.L47	#,
	.loc 1 221 0 is_stmt 1
	addl	$1, -12(%rbp)	#, i
.L44:
	.loc 1 221 0 is_stmt 0 discriminator 1
	movl	-12(%rbp), %eax	# i, tmp130
	cmpl	-56(%rbp), %eax	# maxLen, tmp130
	jle	.L48	#,
	.loc 1 225 0 is_stmt 1
	movl	$0, -12(%rbp)	#, i
	jmp	.L49	#
.L50:
	.loc 1 225 0 is_stmt 0 discriminator 2
	movl	-12(%rbp), %eax	# i, tmp131
	cltq
	leaq	0(,%rax,4), %rdx	#, D.3517
	movq	-32(%rbp), %rax	# base, tmp132
	addq	%rdx, %rax	# D.3517, D.3518
	movl	$0, (%rax)	#, *_35
	addl	$1, -12(%rbp)	#, i
.L49:
	.loc 1 225 0 discriminator 1
	cmpl	$22, -12(%rbp)	#, i
	jle	.L50	#,
	.loc 1 226 0 is_stmt 1
	movl	$0, -12(%rbp)	#, i
	jmp	.L51	#
.L52:
	.loc 1 226 0 is_stmt 0 discriminator 2
	movl	-12(%rbp), %eax	# i, tmp133
	movslq	%eax, %rdx	# tmp133, D.3513
	movq	-48(%rbp), %rax	# length, tmp134
	addq	%rdx, %rax	# D.3513, D.3514
	movzbl	(%rax), %eax	# *_39, D.3515
	movzbl	%al, %eax	# D.3515, D.3513
	addq	$1, %rax	#, D.3513
	leaq	0(,%rax,4), %rdx	#, D.3513
	movq	-32(%rbp), %rax	# base, tmp135
	addq	%rdx, %rax	# D.3513, D.3518
	movl	(%rax), %edx	# *_44, D.3516
	addl	$1, %edx	#, D.3516
	movl	%edx, (%rax)	# D.3516, *_44
	addl	$1, -12(%rbp)	#, i
.L51:
	.loc 1 226 0 discriminator 1
	movl	-12(%rbp), %eax	# i, tmp136
	cmpl	16(%rbp), %eax	# alphaSize, tmp136
	jl	.L52	#,
	.loc 1 228 0 is_stmt 1
	movl	$1, -12(%rbp)	#, i
	jmp	.L53	#
.L54:
	.loc 1 228 0 is_stmt 0 discriminator 2
	movl	-12(%rbp), %eax	# i, tmp137
	cltq
	leaq	0(,%rax,4), %rdx	#, D.3517
	movq	-32(%rbp), %rax	# base, tmp138
	addq	%rdx, %rax	# D.3517, D.3518
	movl	-12(%rbp), %edx	# i, tmp139
	movslq	%edx, %rdx	# tmp139, D.3517
	leaq	0(,%rdx,4), %rcx	#, D.3517
	movq	-32(%rbp), %rdx	# base, tmp140
	addq	%rcx, %rdx	# D.3517, D.3518
	movl	(%rdx), %ecx	# *_54, D.3516
	movl	-12(%rbp), %edx	# i, tmp141
	movslq	%edx, %rdx	# tmp141, D.3517
	salq	$2, %rdx	#, D.3517
	leaq	-4(%rdx), %rsi	#, D.3513
	movq	-32(%rbp), %rdx	# base, tmp142
	addq	%rsi, %rdx	# D.3513, D.3518
	movl	(%rdx), %edx	# *_59, D.3516
	addl	%ecx, %edx	# D.3516, D.3516
	movl	%edx, (%rax)	# D.3516, *_51
	addl	$1, -12(%rbp)	#, i
.L53:
	.loc 1 228 0 discriminator 1
	cmpl	$22, -12(%rbp)	#, i
	jle	.L54	#,
	.loc 1 230 0 is_stmt 1
	movl	$0, -12(%rbp)	#, i
	jmp	.L55	#
.L56:
	.loc 1 230 0 is_stmt 0 discriminator 2
	movl	-12(%rbp), %eax	# i, tmp143
	cltq
	leaq	0(,%rax,4), %rdx	#, D.3517
	movq	-24(%rbp), %rax	# limit, tmp144
	addq	%rdx, %rax	# D.3517, D.3518
	movl	$0, (%rax)	#, *_67
	addl	$1, -12(%rbp)	#, i
.L55:
	.loc 1 230 0 discriminator 1
	cmpl	$22, -12(%rbp)	#, i
	jle	.L56	#,
	.loc 1 231 0 is_stmt 1
	movl	$0, -4(%rbp)	#, vec
	.loc 1 233 0
	movl	-52(%rbp), %eax	# minLen, tmp145
	movl	%eax, -12(%rbp)	# tmp145, i
	jmp	.L57	#
.L58:
	.loc 1 234 0 discriminator 2
	movl	-12(%rbp), %eax	# i, tmp146
	cltq
	addq	$1, %rax	#, D.3513
	leaq	0(,%rax,4), %rdx	#, D.3513
	movq	-32(%rbp), %rax	# base, tmp147
	addq	%rdx, %rax	# D.3513, D.3518
	movl	(%rax), %edx	# *_74, D.3516
	movl	-12(%rbp), %eax	# i, tmp148
	cltq
	leaq	0(,%rax,4), %rcx	#, D.3517
	movq	-32(%rbp), %rax	# base, tmp149
	addq	%rcx, %rax	# D.3517, D.3518
	movl	(%rax), %eax	# *_78, D.3516
	subl	%eax, %edx	# D.3516, D.3516
	movl	%edx, %eax	# D.3516, D.3516
	addl	%eax, -4(%rbp)	# D.3516, vec
	.loc 1 235 0 discriminator 2
	movl	-12(%rbp), %eax	# i, tmp150
	cltq
	leaq	0(,%rax,4), %rdx	#, D.3517
	movq	-24(%rbp), %rax	# limit, tmp151
	addq	%rdx, %rax	# D.3517, D.3518
	movl	-4(%rbp), %edx	# vec, tmp152
	subl	$1, %edx	#, D.3516
	movl	%edx, (%rax)	# D.3516, *_84
	.loc 1 236 0 discriminator 2
	sall	-4(%rbp)	# vec
	.loc 1 233 0 discriminator 2
	addl	$1, -12(%rbp)	#, i
.L57:
	.loc 1 233 0 is_stmt 0 discriminator 1
	movl	-12(%rbp), %eax	# i, tmp153
	cmpl	-56(%rbp), %eax	# maxLen, tmp153
	jle	.L58	#,
	.loc 1 238 0 is_stmt 1
	movl	-52(%rbp), %eax	# minLen, tmp157
	addl	$1, %eax	#, tmp156
	movl	%eax, -12(%rbp)	# tmp156, i
	jmp	.L59	#
.L60:
	.loc 1 239 0 discriminator 2
	movl	-12(%rbp), %eax	# i, tmp158
	cltq
	leaq	0(,%rax,4), %rdx	#, D.3517
	movq	-32(%rbp), %rax	# base, tmp159
	addq	%rdx, %rax	# D.3517, D.3518
	movl	-12(%rbp), %edx	# i, tmp160
	movslq	%edx, %rdx	# tmp160, D.3517
	salq	$2, %rdx	#, D.3517
	leaq	-4(%rdx), %rcx	#, D.3513
	movq	-24(%rbp), %rdx	# limit, tmp161
	addq	%rcx, %rdx	# D.3513, D.3518
	movl	(%rdx), %edx	# *_95, D.3516
	addl	$1, %edx	#, D.3516
	leal	(%rdx,%rdx), %ecx	#, D.3516
	movl	-12(%rbp), %edx	# i, tmp162
	movslq	%edx, %rdx	# tmp162, D.3517
	leaq	0(,%rdx,4), %rsi	#, D.3517
	movq	-32(%rbp), %rdx	# base, tmp163
	addq	%rsi, %rdx	# D.3517, D.3518
	movl	(%rdx), %edx	# *_101, D.3516
	subl	%edx, %ecx	# D.3516, D.3516
	movl	%ecx, %edx	# D.3516, D.3516
	movl	%edx, (%rax)	# D.3516, *_91
	.loc 1 238 0 discriminator 2
	addl	$1, -12(%rbp)	#, i
.L59:
	.loc 1 238 0 is_stmt 0 discriminator 1
	movl	-12(%rbp), %eax	# i, tmp164
	cmpl	-56(%rbp), %eax	# maxLen, tmp164
	jle	.L60	#,
	.loc 1 240 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	BZ2_hbCreateDecodeTables, .-BZ2_hbCreateDecodeTables
.Letext0:
	.file 2 "bzlib_private.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x3e3
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF31
	.byte	0x1
	.long	.LASF32
	.long	.LASF33
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
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
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF7
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
	.uleb128 0x4
	.long	.LASF11
	.byte	0x2
	.byte	0x52
	.long	0x3b
	.uleb128 0x4
	.long	.LASF12
	.byte	0x2
	.byte	0x53
	.long	0x3b
	.uleb128 0x4
	.long	.LASF13
	.byte	0x2
	.byte	0x54
	.long	0x34
	.uleb128 0x5
	.byte	0x8
	.long	0x8c
	.uleb128 0x5
	.byte	0x8
	.long	0x97
	.uleb128 0x6
	.long	.LASF23
	.byte	0x1
	.byte	0x67
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x289
	.uleb128 0x7
	.string	"len"
	.byte	0x1
	.byte	0x67
	.long	0xa2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -5272
	.uleb128 0x8
	.long	.LASF14
	.byte	0x1
	.byte	0x68
	.long	0xa8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -5280
	.uleb128 0x8
	.long	.LASF15
	.byte	0x1
	.byte	0x69
	.long	0x97
	.uleb128 0x3
	.byte	0x91
	.sleb128 -5284
	.uleb128 0x8
	.long	.LASF16
	.byte	0x1
	.byte	0x6a
	.long	0x97
	.uleb128 0x3
	.byte	0x91
	.sleb128 -5288
	.uleb128 0x9
	.long	.LASF17
	.byte	0x1
	.byte	0x70
	.long	0x97
	.uleb128 0x3
	.byte	0x91
	.sleb128 -5252
	.uleb128 0x9
	.long	.LASF18
	.byte	0x1
	.byte	0x70
	.long	0x97
	.uleb128 0x3
	.byte	0x91
	.sleb128 -5248
	.uleb128 0xa
	.string	"n1"
	.byte	0x1
	.byte	0x70
	.long	0x97
	.uleb128 0x3
	.byte	0x91
	.sleb128 -5204
	.uleb128 0xa
	.string	"n2"
	.byte	0x1
	.byte	0x70
	.long	0x97
	.uleb128 0x3
	.byte	0x91
	.sleb128 -5196
	.uleb128 0xa
	.string	"i"
	.byte	0x1
	.byte	0x70
	.long	0x97
	.uleb128 0x3
	.byte	0x91
	.sleb128 -5244
	.uleb128 0xa
	.string	"j"
	.byte	0x1
	.byte	0x70
	.long	0x97
	.uleb128 0x3
	.byte	0x91
	.sleb128 -5240
	.uleb128 0xa
	.string	"k"
	.byte	0x1
	.byte	0x70
	.long	0x97
	.uleb128 0x3
	.byte	0x91
	.sleb128 -5236
	.uleb128 0x9
	.long	.LASF19
	.byte	0x1
	.byte	0x71
	.long	0x81
	.uleb128 0x3
	.byte	0x91
	.sleb128 -5253
	.uleb128 0x9
	.long	.LASF20
	.byte	0x1
	.byte	0x73
	.long	0x289
	.uleb128 0x3
	.byte	0x91
	.sleb128 -5184
	.uleb128 0x9
	.long	.LASF21
	.byte	0x1
	.byte	0x74
	.long	0x29a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -4144
	.uleb128 0x9
	.long	.LASF22
	.byte	0x1
	.byte	0x75
	.long	0x29a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2080
	.uleb128 0xb
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x1d7
	.uleb128 0xa
	.string	"zz"
	.byte	0x1
	.byte	0x87
	.long	0x97
	.uleb128 0x3
	.byte	0x91
	.sleb128 -5232
	.uleb128 0xa
	.string	"tmp"
	.byte	0x1
	.byte	0x87
	.long	0x97
	.uleb128 0x3
	.byte	0x91
	.sleb128 -5208
	.byte	0
	.uleb128 0xb
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.long	0x218
	.uleb128 0xa
	.string	"zz"
	.byte	0x1
	.byte	0x8d
	.long	0x97
	.uleb128 0x3
	.byte	0x91
	.sleb128 -5228
	.uleb128 0xa
	.string	"yy"
	.byte	0x1
	.byte	0x8d
	.long	0x97
	.uleb128 0x3
	.byte	0x91
	.sleb128 -5224
	.uleb128 0xa
	.string	"tmp"
	.byte	0x1
	.byte	0x8d
	.long	0x97
	.uleb128 0x3
	.byte	0x91
	.sleb128 -5200
	.byte	0
	.uleb128 0xb
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.long	0x259
	.uleb128 0xa
	.string	"zz"
	.byte	0x1
	.byte	0x8e
	.long	0x97
	.uleb128 0x3
	.byte	0x91
	.sleb128 -5220
	.uleb128 0xa
	.string	"yy"
	.byte	0x1
	.byte	0x8e
	.long	0x97
	.uleb128 0x3
	.byte	0x91
	.sleb128 -5216
	.uleb128 0xa
	.string	"tmp"
	.byte	0x1
	.byte	0x8e
	.long	0x97
	.uleb128 0x3
	.byte	0x91
	.sleb128 -5192
	.byte	0
	.uleb128 0xc
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0xa
	.string	"zz"
	.byte	0x1
	.byte	0x95
	.long	0x97
	.uleb128 0x3
	.byte	0x91
	.sleb128 -5212
	.uleb128 0xa
	.string	"tmp"
	.byte	0x1
	.byte	0x95
	.long	0x97
	.uleb128 0x3
	.byte	0x91
	.sleb128 -5188
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x97
	.long	0x29a
	.uleb128 0xe
	.long	0x65
	.value	0x103
	.byte	0
	.uleb128 0xd
	.long	0x97
	.long	0x2ab
	.uleb128 0xe
	.long	0x65
	.value	0x203
	.byte	0
	.uleb128 0xf
	.long	.LASF24
	.byte	0x1
	.byte	0xc0
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x335
	.uleb128 0x8
	.long	.LASF25
	.byte	0x1
	.byte	0xc0
	.long	0xa8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.long	.LASF26
	.byte	0x1
	.byte	0xc1
	.long	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x8
	.long	.LASF27
	.byte	0x1
	.byte	0xc2
	.long	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x8
	.long	.LASF16
	.byte	0x1
	.byte	0xc3
	.long	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x8
	.long	.LASF15
	.byte	0x1
	.byte	0xc4
	.long	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0xa
	.string	"n"
	.byte	0x1
	.byte	0xc6
	.long	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xa
	.string	"vec"
	.byte	0x1
	.byte	0xc6
	.long	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.string	"i"
	.byte	0x1
	.byte	0xc6
	.long	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x10
	.long	.LASF34
	.byte	0x1
	.byte	0xd2
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x8
	.long	.LASF28
	.byte	0x1
	.byte	0xd2
	.long	0xa8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.long	.LASF29
	.byte	0x1
	.byte	0xd3
	.long	0xa8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x8
	.long	.LASF30
	.byte	0x1
	.byte	0xd4
	.long	0xa8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x8
	.long	.LASF26
	.byte	0x1
	.byte	0xd5
	.long	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x8
	.long	.LASF27
	.byte	0x1
	.byte	0xd6
	.long	0x97
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x8
	.long	.LASF16
	.byte	0x1
	.byte	0xd7
	.long	0x97
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x8
	.long	.LASF15
	.byte	0x1
	.byte	0xd8
	.long	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xa
	.string	"pp"
	.byte	0x1
	.byte	0xda
	.long	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xa
	.string	"i"
	.byte	0x1
	.byte	0xda
	.long	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xa
	.string	"j"
	.byte	0x1
	.byte	0xda
	.long	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.string	"vec"
	.byte	0x1
	.byte	0xda
	.long	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x9
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
	.uleb128 0xc
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0x5
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
.LASF27:
	.string	"minLen"
.LASF21:
	.string	"weight"
.LASF34:
	.string	"BZ2_hbCreateDecodeTables"
.LASF16:
	.string	"maxLen"
.LASF30:
	.string	"perm"
.LASF23:
	.string	"BZ2_hbMakeCodeLengths"
.LASF1:
	.string	"unsigned char"
.LASF11:
	.string	"Bool"
.LASF29:
	.string	"base"
.LASF22:
	.string	"parent"
.LASF2:
	.string	"short unsigned int"
.LASF17:
	.string	"nNodes"
.LASF18:
	.string	"nHeap"
.LASF0:
	.string	"long unsigned int"
.LASF24:
	.string	"BZ2_hbAssignCodes"
.LASF5:
	.string	"short int"
.LASF25:
	.string	"code"
.LASF15:
	.string	"alphaSize"
.LASF32:
	.string	"huffman.c"
.LASF13:
	.string	"Int32"
.LASF3:
	.string	"unsigned int"
.LASF10:
	.string	"long long unsigned int"
.LASF20:
	.string	"heap"
.LASF33:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/401.bzip2/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF28:
	.string	"limit"
.LASF12:
	.string	"UChar"
.LASF7:
	.string	"sizetype"
.LASF9:
	.string	"long long int"
.LASF8:
	.string	"char"
.LASF31:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF14:
	.string	"freq"
.LASF6:
	.string	"long int"
.LASF4:
	.string	"signed char"
.LASF26:
	.string	"length"
.LASF19:
	.string	"tooLong"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
