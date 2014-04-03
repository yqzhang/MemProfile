	.file	"blocksort.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 blocksort.c -mtune=generic -march=x86-64 -g
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
	.type	fallbackSimpleSort, @function
fallbackSimpleSort:
.LFB2:
	.file 1 "blocksort.c"
	.loc 1 83 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# fmap, fmap
	movq	%rsi, -32(%rbp)	# eclass, eclass
	movl	%edx, -36(%rbp)	# lo, lo
	movl	%ecx, -40(%rbp)	# hi, hi
	.loc 1 87 0
	movl	-36(%rbp), %eax	# lo, tmp116
	cmpl	-40(%rbp), %eax	# hi, tmp116
	jne	.L2	#,
	.loc 1 87 0 is_stmt 0 discriminator 1
	jmp	.L1	#
.L2:
	.loc 1 89 0 is_stmt 1
	movl	-36(%rbp), %eax	# lo, tmp117
	movl	-40(%rbp), %edx	# hi, tmp118
	subl	%eax, %edx	# tmp117, D.5091
	movl	%edx, %eax	# D.5091, D.5091
	cmpl	$3, %eax	#, D.5091
	jle	.L4	#,
	.loc 1 90 0
	movl	-40(%rbp), %eax	# hi, tmp122
	subl	$4, %eax	#, tmp121
	movl	%eax, -16(%rbp)	# tmp121, i
	jmp	.L5	#
.L9:
	.loc 1 91 0
	movl	-16(%rbp), %eax	# i, tmp123
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5092
	movq	-24(%rbp), %rax	# fmap, tmp124
	addq	%rdx, %rax	# D.5092, D.5093
	movl	(%rax), %eax	# *_12, D.5094
	movl	%eax, -8(%rbp)	# D.5094, tmp
	.loc 1 92 0
	movl	-8(%rbp), %eax	# tmp, tmp125
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5092
	movq	-32(%rbp), %rax	# eclass, tmp126
	addq	%rdx, %rax	# D.5092, D.5093
	movl	(%rax), %eax	# *_18, tmp127
	movl	%eax, -4(%rbp)	# tmp127, ec_tmp
	.loc 1 93 0
	movl	-16(%rbp), %eax	# i, tmp131
	addl	$4, %eax	#, tmp130
	movl	%eax, -12(%rbp)	# tmp130, j
	jmp	.L6	#
.L8:
	.loc 1 94 0 discriminator 1
	movl	-12(%rbp), %eax	# j, tmp132
	cltq
	salq	$2, %rax	#, D.5092
	leaq	-16(%rax), %rdx	#, D.5095
	movq	-24(%rbp), %rax	# fmap, tmp133
	addq	%rax, %rdx	# tmp133, D.5093
	movl	-12(%rbp), %eax	# j, tmp134
	cltq
	leaq	0(,%rax,4), %rcx	#, D.5092
	movq	-24(%rbp), %rax	# fmap, tmp135
	addq	%rcx, %rax	# D.5092, D.5093
	movl	(%rax), %eax	# *_35, D.5094
	movl	%eax, (%rdx)	# D.5094, *_32
	.loc 1 93 0 discriminator 1
	addl	$4, -12(%rbp)	#, j
.L6:
	movl	-12(%rbp), %eax	# j, tmp136
	cmpl	-40(%rbp), %eax	# hi, tmp136
	jg	.L7	#,
	.loc 1 93 0 is_stmt 0 discriminator 2
	movl	-12(%rbp), %eax	# j, tmp137
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5092
	movq	-24(%rbp), %rax	# fmap, tmp138
	addq	%rdx, %rax	# D.5092, D.5093
	movl	(%rax), %eax	# *_23, D.5094
	movl	%eax, %eax	# D.5094, D.5092
	leaq	0(,%rax,4), %rdx	#, D.5092
	movq	-32(%rbp), %rax	# eclass, tmp139
	addq	%rdx, %rax	# D.5092, D.5093
	movl	(%rax), %eax	# *_27, D.5094
	cmpl	-4(%rbp), %eax	# ec_tmp, D.5094
	jb	.L8	#,
.L7:
	.loc 1 95 0 is_stmt 1
	movl	-12(%rbp), %eax	# j, tmp140
	cltq
	salq	$2, %rax	#, D.5092
	leaq	-16(%rax), %rdx	#, D.5095
	movq	-24(%rbp), %rax	# fmap, tmp141
	addq	%rax, %rdx	# tmp141, D.5093
	movl	-8(%rbp), %eax	# tmp, tmp.0
	movl	%eax, (%rdx)	# tmp.0, *_41
	.loc 1 90 0
	subl	$1, -16(%rbp)	#, i
.L5:
	.loc 1 90 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# i, tmp142
	cmpl	-36(%rbp), %eax	# lo, tmp142
	jge	.L9	#,
.L4:
	.loc 1 99 0 is_stmt 1
	movl	-40(%rbp), %eax	# hi, tmp146
	subl	$1, %eax	#, tmp145
	movl	%eax, -16(%rbp)	# tmp145, i
	jmp	.L10	#
.L14:
	.loc 1 100 0
	movl	-16(%rbp), %eax	# i, tmp147
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5092
	movq	-24(%rbp), %rax	# fmap, tmp148
	addq	%rdx, %rax	# D.5092, D.5093
	movl	(%rax), %eax	# *_47, D.5094
	movl	%eax, -8(%rbp)	# D.5094, tmp
	.loc 1 101 0
	movl	-8(%rbp), %eax	# tmp, tmp149
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5092
	movq	-32(%rbp), %rax	# eclass, tmp150
	addq	%rdx, %rax	# D.5092, D.5093
	movl	(%rax), %eax	# *_52, tmp151
	movl	%eax, -4(%rbp)	# tmp151, ec_tmp
	.loc 1 102 0
	movl	-16(%rbp), %eax	# i, tmp155
	addl	$1, %eax	#, tmp154
	movl	%eax, -12(%rbp)	# tmp154, j
	jmp	.L11	#
.L13:
	.loc 1 103 0 discriminator 1
	movl	-12(%rbp), %eax	# j, tmp156
	cltq
	salq	$2, %rax	#, D.5092
	leaq	-4(%rax), %rdx	#, D.5095
	movq	-24(%rbp), %rax	# fmap, tmp157
	addq	%rax, %rdx	# tmp157, D.5093
	movl	-12(%rbp), %eax	# j, tmp158
	cltq
	leaq	0(,%rax,4), %rcx	#, D.5092
	movq	-24(%rbp), %rax	# fmap, tmp159
	addq	%rcx, %rax	# D.5092, D.5093
	movl	(%rax), %eax	# *_69, D.5094
	movl	%eax, (%rdx)	# D.5094, *_66
	.loc 1 102 0 discriminator 1
	addl	$1, -12(%rbp)	#, j
.L11:
	movl	-12(%rbp), %eax	# j, tmp160
	cmpl	-40(%rbp), %eax	# hi, tmp160
	jg	.L12	#,
	.loc 1 102 0 is_stmt 0 discriminator 2
	movl	-12(%rbp), %eax	# j, tmp161
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5092
	movq	-24(%rbp), %rax	# fmap, tmp162
	addq	%rdx, %rax	# D.5092, D.5093
	movl	(%rax), %eax	# *_57, D.5094
	movl	%eax, %eax	# D.5094, D.5092
	leaq	0(,%rax,4), %rdx	#, D.5092
	movq	-32(%rbp), %rax	# eclass, tmp163
	addq	%rdx, %rax	# D.5092, D.5093
	movl	(%rax), %eax	# *_61, D.5094
	cmpl	-4(%rbp), %eax	# ec_tmp, D.5094
	jb	.L13	#,
.L12:
	.loc 1 104 0 is_stmt 1
	movl	-12(%rbp), %eax	# j, tmp164
	cltq
	salq	$2, %rax	#, D.5092
	leaq	-4(%rax), %rdx	#, D.5095
	movq	-24(%rbp), %rax	# fmap, tmp165
	addq	%rax, %rdx	# tmp165, D.5093
	movl	-8(%rbp), %eax	# tmp, tmp.1
	movl	%eax, (%rdx)	# tmp.1, *_75
	.loc 1 99 0
	subl	$1, -16(%rbp)	#, i
.L10:
	.loc 1 99 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# i, tmp166
	cmpl	-36(%rbp), %eax	# lo, tmp166
	jge	.L14	#,
.L1:
	.loc 1 106 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	fallbackSimpleSort, .-fallbackSimpleSort
	.type	fallbackQSort3, @function
fallbackQSort3:
.LFB3:
	.loc 1 144 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$928, %rsp	#,
	movq	%rdi, -904(%rbp)	# fmap, fmap
	movq	%rsi, -912(%rbp)	# eclass, eclass
	movl	%edx, -916(%rbp)	# loSt, loSt
	movl	%ecx, -920(%rbp)	# hiSt, hiSt
	.loc 1 151 0
	movl	$0, -868(%rbp)	#, r
	.loc 1 153 0
	movl	$0, -876(%rbp)	#, sp
	.loc 1 154 0
	movl	-876(%rbp), %eax	# sp, tmp192
	cltq
	movl	-916(%rbp), %edx	# loSt, tmp193
	movl	%edx, -800(%rbp,%rax,4)	# tmp193, stackLo
	movl	-876(%rbp), %eax	# sp, tmp195
	cltq
	movl	-920(%rbp), %edx	# hiSt, tmp196
	movl	%edx, -400(%rbp,%rax,4)	# tmp196, stackHi
	addl	$1, -876(%rbp)	#, sp
	.loc 1 156 0
	jmp	.L16	#
.L41:
	.loc 1 158 0
	cmpl	$99, -876(%rbp)	#, sp
	jle	.L17	#,
	.loc 1 158 0 is_stmt 0 discriminator 1
	movl	$1004, %edi	#,
	call	BZ2_bz__AssertH__fail	#
.L17:
	.loc 1 160 0 is_stmt 1
	subl	$1, -876(%rbp)	#, sp
	movl	-876(%rbp), %eax	# sp, tmp198
	cltq
	movl	-800(%rbp,%rax,4), %eax	# stackLo, tmp199
	movl	%eax, -840(%rbp)	# tmp199, lo
	movl	-876(%rbp), %eax	# sp, tmp201
	cltq
	movl	-400(%rbp,%rax,4), %eax	# stackHi, tmp202
	movl	%eax, -836(%rbp)	# tmp202, hi
	.loc 1 161 0
	movl	-840(%rbp), %eax	# lo, tmp203
	movl	-836(%rbp), %edx	# hi, tmp204
	subl	%eax, %edx	# tmp203, D.5096
	movl	%edx, %eax	# D.5096, D.5096
	cmpl	$9, %eax	#, D.5096
	jg	.L18	#,
	.loc 1 162 0
	movl	-836(%rbp), %ecx	# hi, tmp205
	movl	-840(%rbp), %edx	# lo, tmp206
	movq	-912(%rbp), %rsi	# eclass, tmp207
	movq	-904(%rbp), %rax	# fmap, tmp208
	movq	%rax, %rdi	# tmp208,
	call	fallbackSimpleSort	#
	.loc 1 163 0
	jmp	.L16	#
.L18:
	.loc 1 173 0
	movl	-868(%rbp), %eax	# r, tmp209
	imull	$7621, %eax, %eax	#, tmp209, D.5097
	addl	$1, %eax	#, D.5097
	andl	$32767, %eax	#, tmp210
	movl	%eax, -868(%rbp)	# tmp210, r
	.loc 1 174 0
	movl	-868(%rbp), %ecx	# r, tmp212
	movl	$-1431655765, %edx	#, tmp214
	movl	%ecx, %eax	# tmp212, tmp344
	mull	%edx	# tmp214
	shrl	%edx	# tmp211
	movl	%edx, %eax	# tmp211, tmp215
	addl	%eax, %eax	# tmp215
	addl	%edx, %eax	# tmp211, tmp215
	subl	%eax, %ecx	# tmp215, tmp216
	movl	%ecx, %eax	# tmp216, tmp216
	movl	%eax, -832(%rbp)	# tmp216, r3
	.loc 1 175 0
	cmpl	$0, -832(%rbp)	#, r3
	jne	.L19	#,
	.loc 1 175 0 is_stmt 0 discriminator 1
	movl	-840(%rbp), %eax	# lo, tmp217
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5098
	movq	-904(%rbp), %rax	# fmap, tmp218
	addq	%rdx, %rax	# D.5098, D.5099
	movl	(%rax), %eax	# *_37, D.5097
	movl	%eax, %eax	# D.5097, D.5098
	leaq	0(,%rax,4), %rdx	#, D.5098
	movq	-912(%rbp), %rax	# eclass, tmp219
	addq	%rdx, %rax	# D.5098, D.5099
	movl	(%rax), %eax	# *_41, tmp220
	movl	%eax, -872(%rbp)	# tmp220, med
	jmp	.L20	#
.L19:
	.loc 1 176 0 is_stmt 1
	cmpl	$1, -832(%rbp)	#, r3
	jne	.L21	#,
	.loc 1 176 0 is_stmt 0 discriminator 1
	movl	-836(%rbp), %eax	# hi, tmp221
	movl	-840(%rbp), %edx	# lo, tmp222
	addl	%edx, %eax	# tmp222, D.5096
	sarl	%eax	# D.5096
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5098
	movq	-904(%rbp), %rax	# fmap, tmp223
	addq	%rdx, %rax	# D.5098, D.5099
	movl	(%rax), %eax	# *_47, D.5097
	movl	%eax, %eax	# D.5097, D.5098
	leaq	0(,%rax,4), %rdx	#, D.5098
	movq	-912(%rbp), %rax	# eclass, tmp224
	addq	%rdx, %rax	# D.5098, D.5099
	movl	(%rax), %eax	# *_51, tmp225
	movl	%eax, -872(%rbp)	# tmp225, med
	jmp	.L20	#
.L21:
	.loc 1 177 0 is_stmt 1
	movl	-836(%rbp), %eax	# hi, tmp226
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5098
	movq	-904(%rbp), %rax	# fmap, tmp227
	addq	%rdx, %rax	# D.5098, D.5099
	movl	(%rax), %eax	# *_55, D.5097
	movl	%eax, %eax	# D.5097, D.5098
	leaq	0(,%rax,4), %rdx	#, D.5098
	movq	-912(%rbp), %rax	# eclass, tmp228
	addq	%rdx, %rax	# D.5098, D.5099
	movl	(%rax), %eax	# *_59, tmp229
	movl	%eax, -872(%rbp)	# tmp229, med
.L20:
	.loc 1 179 0
	movl	-840(%rbp), %eax	# lo, tmp230
	movl	%eax, -884(%rbp)	# tmp230, ltLo
	movl	-884(%rbp), %eax	# ltLo, tmp231
	movl	%eax, -892(%rbp)	# tmp231, unLo
	.loc 1 180 0
	movl	-836(%rbp), %eax	# hi, tmp232
	movl	%eax, -880(%rbp)	# tmp232, gtHi
	movl	-880(%rbp), %eax	# gtHi, tmp233
	movl	%eax, -888(%rbp)	# tmp233, unHi
.L27:
	.loc 1 184 0
	movl	-892(%rbp), %eax	# unLo, tmp234
	cmpl	-888(%rbp), %eax	# unHi, tmp234
	jle	.L22	#,
	.loc 1 184 0 is_stmt 0 discriminator 1
	jmp	.L23	#
.L22:
	.loc 1 185 0 is_stmt 1
	movl	-892(%rbp), %eax	# unLo, tmp235
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5098
	movq	-904(%rbp), %rax	# fmap, tmp236
	addq	%rdx, %rax	# D.5098, D.5099
	movl	(%rax), %eax	# *_67, D.5097
	movl	%eax, %eax	# D.5097, D.5098
	leaq	0(,%rax,4), %rdx	#, D.5098
	movq	-912(%rbp), %rax	# eclass, tmp237
	addq	%rdx, %rax	# D.5098, D.5099
	movl	(%rax), %eax	# *_71, D.5097
	movl	%eax, %edx	# D.5097, D.5096
	movl	-872(%rbp), %eax	# med, med.2
	subl	%eax, %edx	# med.2, tmp238
	movl	%edx, %eax	# tmp238, tmp238
	movl	%eax, -828(%rbp)	# tmp238, n
	.loc 1 186 0
	cmpl	$0, -828(%rbp)	#, n
	jne	.L24	#,
.LBB2:
	.loc 1 187 0
	movl	-892(%rbp), %eax	# unLo, tmp239
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5098
	movq	-904(%rbp), %rax	# fmap, tmp240
	addq	%rdx, %rax	# D.5098, D.5099
	movl	(%rax), %eax	# *_78, D.5097
	movl	%eax, -824(%rbp)	# D.5097, zztmp
	movl	-892(%rbp), %eax	# unLo, tmp241
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5098
	movq	-904(%rbp), %rax	# fmap, tmp242
	addq	%rax, %rdx	# tmp242, D.5099
	movl	-884(%rbp), %eax	# ltLo, tmp243
	cltq
	leaq	0(,%rax,4), %rcx	#, D.5098
	movq	-904(%rbp), %rax	# fmap, tmp244
	addq	%rcx, %rax	# D.5098, D.5099
	movl	(%rax), %eax	# *_86, D.5097
	movl	%eax, (%rdx)	# D.5097, *_83
	movl	-884(%rbp), %eax	# ltLo, tmp245
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5098
	movq	-904(%rbp), %rax	# fmap, tmp246
	addq	%rax, %rdx	# tmp246, D.5099
	movl	-824(%rbp), %eax	# zztmp, zztmp.3
	movl	%eax, (%rdx)	# zztmp.3, *_90
.LBE2:
	.loc 1 188 0
	addl	$1, -884(%rbp)	#, ltLo
	addl	$1, -892(%rbp)	#, unLo
	.loc 1 189 0
	nop
	.loc 1 193 0
	jmp	.L27	#
.L24:
	.loc 1 191 0
	cmpl	$0, -828(%rbp)	#, n
	jle	.L26	#,
	.loc 1 191 0 is_stmt 0 discriminator 1
	jmp	.L23	#
.L26:
	.loc 1 192 0 is_stmt 1
	addl	$1, -892(%rbp)	#, unLo
	.loc 1 193 0
	jmp	.L27	#
.L23:
	.loc 1 195 0
	movl	-892(%rbp), %eax	# unLo, tmp247
	cmpl	-888(%rbp), %eax	# unHi, tmp247
	jle	.L28	#,
	.loc 1 195 0 is_stmt 0 discriminator 1
	jmp	.L29	#
.L28:
	.loc 1 196 0 is_stmt 1
	movl	-888(%rbp), %eax	# unHi, tmp248
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5098
	movq	-904(%rbp), %rax	# fmap, tmp249
	addq	%rdx, %rax	# D.5098, D.5099
	movl	(%rax), %eax	# *_97, D.5097
	movl	%eax, %eax	# D.5097, D.5098
	leaq	0(,%rax,4), %rdx	#, D.5098
	movq	-912(%rbp), %rax	# eclass, tmp250
	addq	%rdx, %rax	# D.5098, D.5099
	movl	(%rax), %eax	# *_101, D.5097
	movl	%eax, %edx	# D.5097, D.5096
	movl	-872(%rbp), %eax	# med, med.4
	subl	%eax, %edx	# med.4, tmp251
	movl	%edx, %eax	# tmp251, tmp251
	movl	%eax, -828(%rbp)	# tmp251, n
	.loc 1 197 0
	cmpl	$0, -828(%rbp)	#, n
	jne	.L30	#,
.LBB3:
	.loc 1 198 0
	movl	-888(%rbp), %eax	# unHi, tmp252
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5098
	movq	-904(%rbp), %rax	# fmap, tmp253
	addq	%rdx, %rax	# D.5098, D.5099
	movl	(%rax), %eax	# *_108, D.5097
	movl	%eax, -820(%rbp)	# D.5097, zztmp
	movl	-888(%rbp), %eax	# unHi, tmp254
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5098
	movq	-904(%rbp), %rax	# fmap, tmp255
	addq	%rax, %rdx	# tmp255, D.5099
	movl	-880(%rbp), %eax	# gtHi, tmp256
	cltq
	leaq	0(,%rax,4), %rcx	#, D.5098
	movq	-904(%rbp), %rax	# fmap, tmp257
	addq	%rcx, %rax	# D.5098, D.5099
	movl	(%rax), %eax	# *_116, D.5097
	movl	%eax, (%rdx)	# D.5097, *_113
	movl	-880(%rbp), %eax	# gtHi, tmp258
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5098
	movq	-904(%rbp), %rax	# fmap, tmp259
	addq	%rax, %rdx	# tmp259, D.5099
	movl	-820(%rbp), %eax	# zztmp, zztmp.5
	movl	%eax, (%rdx)	# zztmp.5, *_120
.LBE3:
	.loc 1 199 0
	subl	$1, -880(%rbp)	#, gtHi
	subl	$1, -888(%rbp)	#, unHi
	.loc 1 200 0
	nop
	.loc 1 204 0
	jmp	.L23	#
.L30:
	.loc 1 202 0
	cmpl	$0, -828(%rbp)	#, n
	jns	.L32	#,
	.loc 1 202 0 is_stmt 0 discriminator 1
	jmp	.L29	#
.L32:
	.loc 1 203 0 is_stmt 1
	subl	$1, -888(%rbp)	#, unHi
	.loc 1 204 0
	jmp	.L23	#
.L29:
	.loc 1 205 0
	movl	-892(%rbp), %eax	# unLo, tmp260
	cmpl	-888(%rbp), %eax	# unHi, tmp260
	jle	.L33	#,
	.loc 1 205 0 is_stmt 0 discriminator 1
	nop
	.loc 1 211 0 is_stmt 1 discriminator 1
	movl	-880(%rbp), %eax	# gtHi, tmp269
	cmpl	-884(%rbp), %eax	# ltLo, tmp269
	jge	.L35	#,
	jmp	.L42	#
.L33:
.LBB4:
	.loc 1 206 0
	movl	-892(%rbp), %eax	# unLo, tmp261
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5098
	movq	-904(%rbp), %rax	# fmap, tmp262
	addq	%rdx, %rax	# D.5098, D.5099
	movl	(%rax), %eax	# *_190, D.5097
	movl	%eax, -804(%rbp)	# D.5097, zztmp
	movl	-892(%rbp), %eax	# unLo, tmp263
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5098
	movq	-904(%rbp), %rax	# fmap, tmp264
	addq	%rax, %rdx	# tmp264, D.5099
	movl	-888(%rbp), %eax	# unHi, tmp265
	cltq
	leaq	0(,%rax,4), %rcx	#, D.5098
	movq	-904(%rbp), %rax	# fmap, tmp266
	addq	%rcx, %rax	# D.5098, D.5099
	movl	(%rax), %eax	# *_198, D.5097
	movl	%eax, (%rdx)	# D.5097, *_195
	movl	-888(%rbp), %eax	# unHi, tmp267
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5098
	movq	-904(%rbp), %rax	# fmap, tmp268
	addq	%rax, %rdx	# tmp268, D.5099
	movl	-804(%rbp), %eax	# zztmp, zztmp.6
	movl	%eax, (%rdx)	# zztmp.6, *_202
.LBE4:
	addl	$1, -892(%rbp)	#, unLo
	subl	$1, -888(%rbp)	#, unHi
	.loc 1 207 0
	jmp	.L27	#
.L42:
	.loc 1 211 0 discriminator 1
	jmp	.L16	#
.L35:
	.loc 1 213 0
	movl	-884(%rbp), %eax	# ltLo, tmp270
	movl	-892(%rbp), %edx	# unLo, tmp271
	subl	%eax, %edx	# tmp270, D.5096
	movl	-840(%rbp), %eax	# lo, tmp272
	movl	-884(%rbp), %ecx	# ltLo, tmp273
	subl	%eax, %ecx	# tmp272, D.5096
	movl	%ecx, %eax	# D.5096, D.5096
	cmpl	%eax, %edx	# D.5096, D.5096
	cmovle	%edx, %eax	# D.5096,, tmp274
	movl	%eax, -828(%rbp)	# tmp274, n
.LBB5:
	movl	-840(%rbp), %eax	# lo, tmp275
	movl	%eax, -864(%rbp)	# tmp275, yyp1
	movl	-828(%rbp), %eax	# n, tmp280
	movl	-892(%rbp), %edx	# unLo, tmp281
	subl	%eax, %edx	# tmp280, tmp279
	movl	%edx, %eax	# tmp279, tmp279
	movl	%eax, -860(%rbp)	# tmp279, yyp2
	movl	-828(%rbp), %eax	# n, tmp282
	movl	%eax, -856(%rbp)	# tmp282, yyn
	jmp	.L36	#
.L37:
.LBB6:
	.loc 1 213 0 is_stmt 0 discriminator 2
	movl	-864(%rbp), %eax	# yyp1, tmp283
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5098
	movq	-904(%rbp), %rax	# fmap, tmp284
	addq	%rdx, %rax	# D.5098, D.5099
	movl	(%rax), %eax	# *_133, D.5097
	movl	%eax, -816(%rbp)	# D.5097, zztmp
	movl	-864(%rbp), %eax	# yyp1, tmp285
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5098
	movq	-904(%rbp), %rax	# fmap, tmp286
	addq	%rax, %rdx	# tmp286, D.5099
	movl	-860(%rbp), %eax	# yyp2, tmp287
	cltq
	leaq	0(,%rax,4), %rcx	#, D.5098
	movq	-904(%rbp), %rax	# fmap, tmp288
	addq	%rcx, %rax	# D.5098, D.5099
	movl	(%rax), %eax	# *_141, D.5097
	movl	%eax, (%rdx)	# D.5097, *_138
	movl	-860(%rbp), %eax	# yyp2, tmp289
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5098
	movq	-904(%rbp), %rax	# fmap, tmp290
	addq	%rax, %rdx	# tmp290, D.5099
	movl	-816(%rbp), %eax	# zztmp, zztmp.7
	movl	%eax, (%rdx)	# zztmp.7, *_145
.LBE6:
	addl	$1, -864(%rbp)	#, yyp1
	addl	$1, -860(%rbp)	#, yyp2
	subl	$1, -856(%rbp)	#, yyn
.L36:
	.loc 1 213 0 discriminator 1
	cmpl	$0, -856(%rbp)	#, yyn
	jg	.L37	#,
.LBE5:
	.loc 1 214 0 is_stmt 1
	movl	-888(%rbp), %eax	# unHi, tmp291
	movl	-880(%rbp), %edx	# gtHi, tmp292
	subl	%eax, %edx	# tmp291, D.5096
	movl	-880(%rbp), %eax	# gtHi, tmp293
	movl	-836(%rbp), %ecx	# hi, tmp294
	subl	%eax, %ecx	# tmp293, D.5096
	movl	%ecx, %eax	# D.5096, D.5096
	cmpl	%eax, %edx	# D.5096, D.5096
	cmovle	%edx, %eax	# D.5096,, tmp295
	movl	%eax, -812(%rbp)	# tmp295, m
.LBB7:
	movl	-892(%rbp), %eax	# unLo, tmp296
	movl	%eax, -852(%rbp)	# tmp296, yyp1
	movl	-812(%rbp), %eax	# m, tmp297
	movl	-836(%rbp), %edx	# hi, tmp298
	subl	%eax, %edx	# tmp297, D.5096
	movl	%edx, %eax	# D.5096, D.5096
	addl	$1, %eax	#, tmp299
	movl	%eax, -848(%rbp)	# tmp299, yyp2
	movl	-812(%rbp), %eax	# m, tmp300
	movl	%eax, -844(%rbp)	# tmp300, yyn
	jmp	.L38	#
.L39:
.LBB8:
	.loc 1 214 0 is_stmt 0 discriminator 2
	movl	-852(%rbp), %eax	# yyp1, tmp301
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5098
	movq	-904(%rbp), %rax	# fmap, tmp302
	addq	%rdx, %rax	# D.5098, D.5099
	movl	(%rax), %eax	# *_159, D.5097
	movl	%eax, -808(%rbp)	# D.5097, zztmp
	movl	-852(%rbp), %eax	# yyp1, tmp303
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5098
	movq	-904(%rbp), %rax	# fmap, tmp304
	addq	%rax, %rdx	# tmp304, D.5099
	movl	-848(%rbp), %eax	# yyp2, tmp305
	cltq
	leaq	0(,%rax,4), %rcx	#, D.5098
	movq	-904(%rbp), %rax	# fmap, tmp306
	addq	%rcx, %rax	# D.5098, D.5099
	movl	(%rax), %eax	# *_167, D.5097
	movl	%eax, (%rdx)	# D.5097, *_164
	movl	-848(%rbp), %eax	# yyp2, tmp307
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5098
	movq	-904(%rbp), %rax	# fmap, tmp308
	addq	%rax, %rdx	# tmp308, D.5099
	movl	-808(%rbp), %eax	# zztmp, zztmp.8
	movl	%eax, (%rdx)	# zztmp.8, *_171
.LBE8:
	addl	$1, -852(%rbp)	#, yyp1
	addl	$1, -848(%rbp)	#, yyp2
	subl	$1, -844(%rbp)	#, yyn
.L38:
	.loc 1 214 0 discriminator 1
	cmpl	$0, -844(%rbp)	#, yyn
	jg	.L39	#,
.LBE7:
	.loc 1 216 0 is_stmt 1
	movl	-892(%rbp), %eax	# unLo, tmp309
	movl	-840(%rbp), %edx	# lo, tmp310
	addl	%edx, %eax	# tmp310, D.5096
	subl	-884(%rbp), %eax	# ltLo, D.5096
	subl	$1, %eax	#, tmp311
	movl	%eax, -828(%rbp)	# tmp311, n
	.loc 1 217 0
	movl	-880(%rbp), %eax	# gtHi, tmp312
	movl	-888(%rbp), %edx	# unHi, tmp313
	subl	%eax, %edx	# tmp312, D.5096
	movl	-836(%rbp), %eax	# hi, tmp314
	addl	%edx, %eax	# D.5096, D.5096
	addl	$1, %eax	#, tmp315
	movl	%eax, -812(%rbp)	# tmp315, m
	.loc 1 219 0
	movl	-840(%rbp), %eax	# lo, tmp316
	movl	-828(%rbp), %edx	# n, tmp317
	movl	%edx, %ecx	# tmp317, D.5096
	subl	%eax, %ecx	# tmp316, D.5096
	movl	-812(%rbp), %eax	# m, tmp318
	movl	-836(%rbp), %edx	# hi, tmp319
	subl	%eax, %edx	# tmp318, D.5096
	movl	%edx, %eax	# D.5096, D.5096
	cmpl	%eax, %ecx	# D.5096, D.5096
	jle	.L40	#,
	.loc 1 220 0
	movl	-876(%rbp), %eax	# sp, tmp321
	cltq
	movl	-840(%rbp), %edx	# lo, tmp322
	movl	%edx, -800(%rbp,%rax,4)	# tmp322, stackLo
	movl	-876(%rbp), %eax	# sp, tmp324
	cltq
	movl	-828(%rbp), %edx	# n, tmp325
	movl	%edx, -400(%rbp,%rax,4)	# tmp325, stackHi
	addl	$1, -876(%rbp)	#, sp
	.loc 1 221 0
	movl	-876(%rbp), %eax	# sp, tmp327
	cltq
	movl	-812(%rbp), %edx	# m, tmp328
	movl	%edx, -800(%rbp,%rax,4)	# tmp328, stackLo
	movl	-876(%rbp), %eax	# sp, tmp330
	cltq
	movl	-836(%rbp), %edx	# hi, tmp331
	movl	%edx, -400(%rbp,%rax,4)	# tmp331, stackHi
	addl	$1, -876(%rbp)	#, sp
	jmp	.L16	#
.L40:
	.loc 1 223 0
	movl	-876(%rbp), %eax	# sp, tmp333
	cltq
	movl	-812(%rbp), %edx	# m, tmp334
	movl	%edx, -800(%rbp,%rax,4)	# tmp334, stackLo
	movl	-876(%rbp), %eax	# sp, tmp336
	cltq
	movl	-836(%rbp), %edx	# hi, tmp337
	movl	%edx, -400(%rbp,%rax,4)	# tmp337, stackHi
	addl	$1, -876(%rbp)	#, sp
	.loc 1 224 0
	movl	-876(%rbp), %eax	# sp, tmp339
	cltq
	movl	-840(%rbp), %edx	# lo, tmp340
	movl	%edx, -800(%rbp,%rax,4)	# tmp340, stackLo
	movl	-876(%rbp), %eax	# sp, tmp342
	cltq
	movl	-828(%rbp), %edx	# n, tmp343
	movl	%edx, -400(%rbp,%rax,4)	# tmp343, stackHi
	addl	$1, -876(%rbp)	#, sp
.L16:
	.loc 1 156 0 discriminator 1
	cmpl	$0, -876(%rbp)	#, sp
	jg	.L41	#,
	.loc 1 227 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	fallbackQSort3, .-fallbackQSort3
	.section	.rodata
.LC0:
	.string	"        bucket sorting ...\n"
.LC1:
	.string	"        depth %6d has "
.LC2:
	.string	"%6d unresolved strings\n"
	.align 8
.LC3:
	.string	"        reconstructing block ...\n"
	.text
	.type	fallbackSort, @function
fallbackSort:
.LFB4:
	.loc 1 264 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$2144, %rsp	#,
	movq	%rdi, -2120(%rbp)	# fmap, fmap
	movq	%rsi, -2128(%rbp)	# eclass, eclass
	movq	%rdx, -2136(%rbp)	# bhtab, bhtab
	movl	%ecx, -2140(%rbp)	# nblock, nblock
	movl	%r8d, -2144(%rbp)	# verb, verb
	.loc 1 270 0
	movq	-2128(%rbp), %rax	# eclass, tmp262
	movq	%rax, -2072(%rbp)	# tmp262, eclass8
	.loc 1 276 0
	cmpl	$3, -2144(%rbp)	#, verb
	jle	.L44	#,
	.loc 1 277 0
	movq	stderr(%rip), %rax	# stderr, stderr.9
	movq	%rax, %rcx	# stderr.9,
	movl	$27, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC0, %edi	#,
	call	fwrite	#
.L44:
	.loc 1 278 0
	movl	$0, -2108(%rbp)	#, i
	jmp	.L45	#
.L46:
	.loc 1 278 0 is_stmt 0 discriminator 2
	movl	-2108(%rbp), %eax	# i, tmp264
	cltq
	movl	$0, -1040(%rbp,%rax,4)	#, ftab
	addl	$1, -2108(%rbp)	#, i
.L45:
	.loc 1 278 0 discriminator 1
	cmpl	$256, -2108(%rbp)	#, i
	jle	.L46	#,
	.loc 1 279 0 is_stmt 1
	movl	$0, -2108(%rbp)	#, i
	jmp	.L47	#
.L48:
	.loc 1 279 0 is_stmt 0 discriminator 2
	movl	-2108(%rbp), %eax	# i, tmp265
	movslq	%eax, %rdx	# tmp265, D.5100
	movq	-2072(%rbp), %rax	# eclass8, tmp266
	addq	%rdx, %rax	# D.5100, D.5101
	movzbl	(%rax), %eax	# *_40, D.5102
	movzbl	%al, %eax	# D.5102, D.5103
	movslq	%eax, %rdx	# D.5103, tmp267
	movl	-1040(%rbp,%rdx,4), %edx	# ftab, D.5103
	addl	$1, %edx	#, D.5103
	cltq
	movl	%edx, -1040(%rbp,%rax,4)	# D.5103, ftab
	addl	$1, -2108(%rbp)	#, i
.L47:
	.loc 1 279 0 discriminator 1
	movl	-2108(%rbp), %eax	# i, tmp269
	cmpl	-2140(%rbp), %eax	# nblock, tmp269
	jl	.L48	#,
	.loc 1 280 0 is_stmt 1
	movl	$0, -2108(%rbp)	#, i
	jmp	.L49	#
.L50:
	.loc 1 280 0 is_stmt 0 discriminator 2
	movl	-2108(%rbp), %eax	# i, tmp271
	cltq
	movl	-1040(%rbp,%rax,4), %edx	# ftab, D.5103
	movl	-2108(%rbp), %eax	# i, tmp273
	cltq
	movl	%edx, -2064(%rbp,%rax,4)	# D.5103, ftabCopy
	addl	$1, -2108(%rbp)	#, i
.L49:
	.loc 1 280 0 discriminator 1
	cmpl	$255, -2108(%rbp)	#, i
	jle	.L50	#,
	.loc 1 281 0 is_stmt 1
	movl	$1, -2108(%rbp)	#, i
	jmp	.L51	#
.L52:
	.loc 1 281 0 is_stmt 0 discriminator 2
	movl	-2108(%rbp), %eax	# i, tmp275
	cltq
	movl	-1040(%rbp,%rax,4), %edx	# ftab, D.5103
	movl	-2108(%rbp), %eax	# i, tmp276
	subl	$1, %eax	#, D.5103
	cltq
	movl	-1040(%rbp,%rax,4), %eax	# ftab, D.5103
	addl	%eax, %edx	# D.5103, D.5103
	movl	-2108(%rbp), %eax	# i, tmp279
	cltq
	movl	%edx, -1040(%rbp,%rax,4)	# D.5103, ftab
	addl	$1, -2108(%rbp)	#, i
.L51:
	.loc 1 281 0 discriminator 1
	cmpl	$256, -2108(%rbp)	#, i
	jle	.L52	#,
	.loc 1 283 0 is_stmt 1
	movl	$0, -2108(%rbp)	#, i
	jmp	.L53	#
.L54:
	.loc 1 284 0 discriminator 2
	movl	-2108(%rbp), %eax	# i, tmp280
	movslq	%eax, %rdx	# tmp280, D.5100
	movq	-2072(%rbp), %rax	# eclass8, tmp281
	addq	%rdx, %rax	# D.5100, D.5101
	movzbl	(%rax), %eax	# *_57, D.5102
	movzbl	%al, %eax	# D.5102, tmp282
	movl	%eax, -2104(%rbp)	# tmp282, j
	.loc 1 285 0 discriminator 2
	movl	-2104(%rbp), %eax	# j, tmp284
	cltq
	movl	-1040(%rbp,%rax,4), %eax	# ftab, D.5103
	subl	$1, %eax	#, tmp285
	movl	%eax, -2100(%rbp)	# tmp285, k
	.loc 1 286 0 discriminator 2
	movl	-2104(%rbp), %eax	# j, tmp287
	cltq
	movl	-2100(%rbp), %edx	# k, tmp288
	movl	%edx, -1040(%rbp,%rax,4)	# tmp288, ftab
	.loc 1 287 0 discriminator 2
	movl	-2100(%rbp), %eax	# k, tmp289
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5104
	movq	-2120(%rbp), %rax	# fmap, tmp290
	addq	%rax, %rdx	# tmp290, D.5105
	movl	-2108(%rbp), %eax	# i, i.10
	movl	%eax, (%rdx)	# i.10, *_65
	.loc 1 283 0 discriminator 2
	addl	$1, -2108(%rbp)	#, i
.L53:
	.loc 1 283 0 is_stmt 0 discriminator 1
	movl	-2108(%rbp), %eax	# i, tmp291
	cmpl	-2140(%rbp), %eax	# nblock, tmp291
	jl	.L54	#,
	.loc 1 290 0 is_stmt 1
	movl	-2140(%rbp), %eax	# nblock, tmp292
	leal	31(%rax), %edx	#, tmp294
	testl	%eax, %eax	# tmp293
	cmovs	%edx, %eax	# tmp294,, tmp293
	sarl	$5, %eax	#, tmp295
	addl	$2, %eax	#, tmp296
	movl	%eax, -2084(%rbp)	# tmp296, nBhtab
	.loc 1 291 0
	movl	$0, -2108(%rbp)	#, i
	jmp	.L55	#
.L56:
	.loc 1 291 0 is_stmt 0 discriminator 2
	movl	-2108(%rbp), %eax	# i, tmp297
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5104
	movq	-2136(%rbp), %rax	# bhtab, tmp298
	addq	%rdx, %rax	# D.5104, D.5105
	movl	$0, (%rax)	#, *_74
	addl	$1, -2108(%rbp)	#, i
.L55:
	.loc 1 291 0 discriminator 1
	movl	-2108(%rbp), %eax	# i, tmp299
	cmpl	-2084(%rbp), %eax	# nBhtab, tmp299
	jl	.L56	#,
	.loc 1 292 0 is_stmt 1
	movl	$0, -2108(%rbp)	#, i
	jmp	.L57	#
.L58:
	.loc 1 292 0 is_stmt 0 discriminator 2
	movl	-2108(%rbp), %eax	# i, tmp301
	cltq
	movl	-1040(%rbp,%rax,4), %eax	# ftab, D.5103
	sarl	$5, %eax	#, D.5103
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5104
	movq	-2136(%rbp), %rax	# bhtab, tmp302
	addq	%rax, %rdx	# tmp302, D.5105
	movl	-2108(%rbp), %eax	# i, tmp304
	cltq
	movl	-1040(%rbp,%rax,4), %eax	# ftab, D.5103
	sarl	$5, %eax	#, D.5103
	cltq
	leaq	0(,%rax,4), %rcx	#, D.5104
	movq	-2136(%rbp), %rax	# bhtab, tmp305
	addq	%rcx, %rax	# D.5104, D.5105
	movl	(%rax), %esi	# *_86, D.5106
	movl	-2108(%rbp), %eax	# i, tmp307
	cltq
	movl	-1040(%rbp,%rax,4), %eax	# ftab, D.5103
	andl	$31, %eax	#, D.5103
	movl	$1, %edi	#, tmp308
	movl	%eax, %ecx	# D.5103, tmp417
	sall	%cl, %edi	# tmp417, D.5103
	movl	%edi, %eax	# D.5103, D.5103
	orl	%esi, %eax	# D.5106, D.5106
	movl	%eax, (%rdx)	# D.5106, *_81
	addl	$1, -2108(%rbp)	#, i
.L57:
	.loc 1 292 0 discriminator 1
	cmpl	$255, -2108(%rbp)	#, i
	jle	.L58	#,
	.loc 1 301 0 is_stmt 1
	movl	$0, -2108(%rbp)	#, i
	jmp	.L59	#
.L60:
	.loc 1 302 0 discriminator 2
	movl	-2108(%rbp), %eax	# i, tmp309
	leal	(%rax,%rax), %edx	#, D.5103
	movl	-2140(%rbp), %eax	# nblock, tmp310
	addl	%edx, %eax	# D.5103, D.5103
	sarl	$5, %eax	#, D.5103
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5104
	movq	-2136(%rbp), %rax	# bhtab, tmp311
	addq	%rdx, %rax	# D.5104, D.5105
	movl	-2108(%rbp), %edx	# i, tmp312
	leal	(%rdx,%rdx), %ecx	#, D.5103
	movl	-2140(%rbp), %edx	# nblock, tmp313
	addl	%ecx, %edx	# D.5103, D.5103
	sarl	$5, %edx	#, D.5103
	movslq	%edx, %rdx	# D.5103, D.5104
	leaq	0(,%rdx,4), %rcx	#, D.5104
	movq	-2136(%rbp), %rdx	# bhtab, tmp314
	addq	%rcx, %rdx	# D.5104, D.5105
	movl	(%rdx), %esi	# *_106, D.5106
	movl	-2108(%rbp), %edx	# i, tmp315
	leal	(%rdx,%rdx), %ecx	#, D.5103
	movl	-2140(%rbp), %edx	# nblock, tmp316
	addl	%ecx, %edx	# D.5103, D.5103
	andl	$31, %edx	#, D.5103
	movl	$1, %edi	#, tmp317
	movl	%edx, %ecx	# D.5103, tmp419
	sall	%cl, %edi	# tmp419, D.5103
	movl	%edi, %edx	# D.5103, D.5103
	orl	%esi, %edx	# D.5106, D.5106
	movl	%edx, (%rax)	# D.5106, *_100
	.loc 1 303 0 discriminator 2
	movl	-2108(%rbp), %eax	# i, tmp318
	leal	(%rax,%rax), %edx	#, D.5103
	movl	-2140(%rbp), %eax	# nblock, tmp319
	addl	%edx, %eax	# D.5103, D.5103
	addl	$1, %eax	#, D.5103
	sarl	$5, %eax	#, D.5103
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5104
	movq	-2136(%rbp), %rax	# bhtab, tmp320
	addq	%rdx, %rax	# D.5104, D.5105
	movl	-2108(%rbp), %edx	# i, tmp321
	leal	(%rdx,%rdx), %ecx	#, D.5103
	movl	-2140(%rbp), %edx	# nblock, tmp322
	addl	%ecx, %edx	# D.5103, D.5103
	addl	$1, %edx	#, D.5103
	sarl	$5, %edx	#, D.5103
	movslq	%edx, %rdx	# D.5103, D.5104
	leaq	0(,%rdx,4), %rcx	#, D.5104
	movq	-2136(%rbp), %rdx	# bhtab, tmp323
	addq	%rcx, %rdx	# D.5104, D.5105
	movl	(%rdx), %esi	# *_127, D.5106
	movl	-2108(%rbp), %edx	# i, tmp324
	leal	(%rdx,%rdx), %ecx	#, D.5103
	movl	-2140(%rbp), %edx	# nblock, tmp325
	addl	%ecx, %edx	# D.5103, D.5103
	addl	$1, %edx	#, D.5103
	andl	$31, %edx	#, D.5103
	movl	$1, %edi	#, tmp326
	movl	%edx, %ecx	# D.5103, tmp421
	sall	%cl, %edi	# tmp421, D.5103
	movl	%edi, %edx	# D.5103, D.5103
	notl	%edx	# D.5103
	andl	%esi, %edx	# D.5106, D.5106
	movl	%edx, (%rax)	# D.5106, *_120
	.loc 1 301 0 discriminator 2
	addl	$1, -2108(%rbp)	#, i
.L59:
	.loc 1 301 0 is_stmt 0 discriminator 1
	cmpl	$31, -2108(%rbp)	#, i
	jle	.L60	#,
	.loc 1 307 0 is_stmt 1
	movl	$1, -2112(%rbp)	#, H
.L92:
	.loc 1 310 0
	cmpl	$3, -2144(%rbp)	#, verb
	jle	.L61	#,
	.loc 1 311 0
	movq	stderr(%rip), %rax	# stderr, stderr.11
	movl	-2112(%rbp), %edx	# H, tmp327
	movl	$.LC1, %esi	#,
	movq	%rax, %rdi	# stderr.11,
	movl	$0, %eax	#,
	call	fprintf	#
.L61:
	.loc 1 313 0
	movl	$0, -2104(%rbp)	#, j
	.loc 1 314 0
	movl	$0, -2108(%rbp)	#, i
	jmp	.L62	#
.L65:
	.loc 1 315 0
	movl	-2108(%rbp), %eax	# i, tmp328
	sarl	$5, %eax	#, D.5103
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5104
	movq	-2136(%rbp), %rax	# bhtab, tmp329
	addq	%rdx, %rax	# D.5104, D.5105
	movl	(%rax), %edx	# *_145, D.5106
	movl	-2108(%rbp), %eax	# i, tmp330
	andl	$31, %eax	#, D.5103
	movl	$1, %esi	#, tmp331
	movl	%eax, %ecx	# D.5103, tmp423
	sall	%cl, %esi	# tmp423, D.5103
	movl	%esi, %eax	# D.5103, D.5103
	andl	%edx, %eax	# D.5106, D.5106
	testl	%eax, %eax	# D.5106
	je	.L63	#,
	.loc 1 315 0 is_stmt 0 discriminator 1
	movl	-2108(%rbp), %eax	# i, tmp332
	movl	%eax, -2104(%rbp)	# tmp332, j
.L63:
	.loc 1 316 0 is_stmt 1
	movl	-2108(%rbp), %eax	# i, tmp333
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5104
	movq	-2120(%rbp), %rax	# fmap, tmp334
	addq	%rdx, %rax	# D.5104, D.5105
	movl	(%rax), %edx	# *_154, D.5106
	movl	-2112(%rbp), %eax	# H, H.12
	subl	%eax, %edx	# H.12, D.5106
	movl	%edx, %eax	# D.5106, D.5106
	movl	%eax, -2100(%rbp)	# D.5106, k
	cmpl	$0, -2100(%rbp)	#, k
	jns	.L64	#,
	.loc 1 316 0 is_stmt 0 discriminator 1
	movl	-2140(%rbp), %eax	# nblock, tmp335
	addl	%eax, -2100(%rbp)	# tmp335, k
.L64:
	.loc 1 317 0 is_stmt 1
	movl	-2100(%rbp), %eax	# k, tmp336
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5104
	movq	-2128(%rbp), %rax	# eclass, tmp337
	addq	%rax, %rdx	# tmp337, D.5105
	movl	-2104(%rbp), %eax	# j, j.13
	movl	%eax, (%rdx)	# j.13, *_162
	.loc 1 314 0
	addl	$1, -2108(%rbp)	#, i
.L62:
	.loc 1 314 0 is_stmt 0 discriminator 1
	movl	-2108(%rbp), %eax	# i, tmp338
	cmpl	-2140(%rbp), %eax	# nblock, tmp338
	jl	.L65	#,
	.loc 1 320 0 is_stmt 1
	movl	$0, -2088(%rbp)	#, nNotDone
	.loc 1 321 0
	movl	$-1, -2096(%rbp)	#, r
.L89:
	.loc 1 325 0
	movl	-2096(%rbp), %eax	# r, tmp342
	addl	$1, %eax	#, tmp341
	movl	%eax, -2100(%rbp)	# tmp341, k
	.loc 1 326 0
	jmp	.L66	#
.L68:
	.loc 1 326 0 is_stmt 0 discriminator 1
	addl	$1, -2100(%rbp)	#, k
.L66:
	movl	-2100(%rbp), %eax	# k, tmp343
	sarl	$5, %eax	#, D.5103
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5104
	movq	-2136(%rbp), %rax	# bhtab, tmp344
	addq	%rdx, %rax	# D.5104, D.5105
	movl	(%rax), %edx	# *_171, D.5106
	movl	-2100(%rbp), %eax	# k, tmp345
	andl	$31, %eax	#, D.5103
	movl	$1, %esi	#, tmp346
	movl	%eax, %ecx	# D.5103, tmp426
	sall	%cl, %esi	# tmp426, D.5103
	movl	%esi, %eax	# D.5103, D.5103
	andl	%edx, %eax	# D.5106, D.5106
	testl	%eax, %eax	# D.5106
	je	.L67	#,
	.loc 1 326 0 discriminator 2
	movl	-2100(%rbp), %eax	# k, tmp347
	andl	$31, %eax	#, D.5103
	testl	%eax, %eax	# D.5103
	jne	.L68	#,
.L67:
	.loc 1 327 0 is_stmt 1
	movl	-2100(%rbp), %eax	# k, tmp348
	sarl	$5, %eax	#, D.5103
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5104
	movq	-2136(%rbp), %rax	# bhtab, tmp349
	addq	%rdx, %rax	# D.5104, D.5105
	movl	(%rax), %edx	# *_182, D.5106
	movl	-2100(%rbp), %eax	# k, tmp350
	andl	$31, %eax	#, D.5103
	movl	$1, %esi	#, tmp351
	movl	%eax, %ecx	# D.5103, tmp428
	sall	%cl, %esi	# tmp428, D.5103
	movl	%esi, %eax	# D.5103, D.5103
	andl	%edx, %eax	# D.5106, D.5106
	testl	%eax, %eax	# D.5106
	je	.L69	#,
	.loc 1 328 0
	jmp	.L70	#
.L71:
	.loc 1 328 0 is_stmt 0 discriminator 2
	addl	$32, -2100(%rbp)	#, k
.L70:
	.loc 1 328 0 discriminator 1
	movl	-2100(%rbp), %eax	# k, tmp352
	sarl	$5, %eax	#, D.5103
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5104
	movq	-2136(%rbp), %rax	# bhtab, tmp353
	addq	%rdx, %rax	# D.5104, D.5105
	movl	(%rax), %eax	# *_191, D.5106
	cmpl	$-1, %eax	#, D.5106
	je	.L71	#,
	.loc 1 329 0 is_stmt 1
	jmp	.L72	#
.L73:
	.loc 1 329 0 is_stmt 0 discriminator 2
	addl	$1, -2100(%rbp)	#, k
.L72:
	.loc 1 329 0 discriminator 1
	movl	-2100(%rbp), %eax	# k, tmp354
	sarl	$5, %eax	#, D.5103
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5104
	movq	-2136(%rbp), %rax	# bhtab, tmp355
	addq	%rdx, %rax	# D.5104, D.5105
	movl	(%rax), %edx	# *_197, D.5106
	movl	-2100(%rbp), %eax	# k, tmp356
	andl	$31, %eax	#, D.5103
	movl	$1, %esi	#, tmp357
	movl	%eax, %ecx	# D.5103, tmp430
	sall	%cl, %esi	# tmp430, D.5103
	movl	%esi, %eax	# D.5103, D.5103
	andl	%edx, %eax	# D.5106, D.5106
	testl	%eax, %eax	# D.5106
	jne	.L73	#,
.L69:
	.loc 1 331 0 is_stmt 1
	movl	-2100(%rbp), %eax	# k, tmp361
	subl	$1, %eax	#, tmp360
	movl	%eax, -2080(%rbp)	# tmp360, l
	.loc 1 332 0
	movl	-2080(%rbp), %eax	# l, tmp362
	cmpl	-2140(%rbp), %eax	# nblock, tmp362
	jl	.L74	#,
	.loc 1 332 0 is_stmt 0 discriminator 1
	jmp	.L75	#
.L74:
	.loc 1 333 0 is_stmt 1
	jmp	.L76	#
.L78:
	.loc 1 333 0 is_stmt 0 discriminator 1
	addl	$1, -2100(%rbp)	#, k
.L76:
	movl	-2100(%rbp), %eax	# k, tmp363
	sarl	$5, %eax	#, D.5103
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5104
	movq	-2136(%rbp), %rax	# bhtab, tmp364
	addq	%rdx, %rax	# D.5104, D.5105
	movl	(%rax), %edx	# *_208, D.5106
	movl	-2100(%rbp), %eax	# k, tmp365
	andl	$31, %eax	#, D.5103
	movl	$1, %esi	#, tmp366
	movl	%eax, %ecx	# D.5103, tmp432
	sall	%cl, %esi	# tmp432, D.5103
	movl	%esi, %eax	# D.5103, D.5103
	andl	%edx, %eax	# D.5106, D.5106
	testl	%eax, %eax	# D.5106
	jne	.L77	#,
	.loc 1 333 0 discriminator 2
	movl	-2100(%rbp), %eax	# k, tmp367
	andl	$31, %eax	#, D.5103
	testl	%eax, %eax	# D.5103
	jne	.L78	#,
.L77:
	.loc 1 334 0 is_stmt 1
	movl	-2100(%rbp), %eax	# k, tmp368
	sarl	$5, %eax	#, D.5103
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5104
	movq	-2136(%rbp), %rax	# bhtab, tmp369
	addq	%rdx, %rax	# D.5104, D.5105
	movl	(%rax), %edx	# *_219, D.5106
	movl	-2100(%rbp), %eax	# k, tmp370
	andl	$31, %eax	#, D.5103
	movl	$1, %esi	#, tmp371
	movl	%eax, %ecx	# D.5103, tmp434
	sall	%cl, %esi	# tmp434, D.5103
	movl	%esi, %eax	# D.5103, D.5103
	andl	%edx, %eax	# D.5106, D.5106
	testl	%eax, %eax	# D.5106
	jne	.L79	#,
	.loc 1 335 0
	jmp	.L80	#
.L81:
	.loc 1 335 0 is_stmt 0 discriminator 2
	addl	$32, -2100(%rbp)	#, k
.L80:
	.loc 1 335 0 discriminator 1
	movl	-2100(%rbp), %eax	# k, tmp372
	sarl	$5, %eax	#, D.5103
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5104
	movq	-2136(%rbp), %rax	# bhtab, tmp373
	addq	%rdx, %rax	# D.5104, D.5105
	movl	(%rax), %eax	# *_228, D.5106
	testl	%eax, %eax	# D.5106
	je	.L81	#,
	.loc 1 336 0 is_stmt 1
	jmp	.L82	#
.L83:
	.loc 1 336 0 is_stmt 0 discriminator 2
	addl	$1, -2100(%rbp)	#, k
.L82:
	.loc 1 336 0 discriminator 1
	movl	-2100(%rbp), %eax	# k, tmp374
	sarl	$5, %eax	#, D.5103
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5104
	movq	-2136(%rbp), %rax	# bhtab, tmp375
	addq	%rdx, %rax	# D.5104, D.5105
	movl	(%rax), %edx	# *_234, D.5106
	movl	-2100(%rbp), %eax	# k, tmp376
	andl	$31, %eax	#, D.5103
	movl	$1, %esi	#, tmp377
	movl	%eax, %ecx	# D.5103, tmp436
	sall	%cl, %esi	# tmp436, D.5103
	movl	%esi, %eax	# D.5103, D.5103
	andl	%edx, %eax	# D.5106, D.5106
	testl	%eax, %eax	# D.5106
	je	.L83	#,
.L79:
	.loc 1 338 0 is_stmt 1
	movl	-2100(%rbp), %eax	# k, tmp381
	subl	$1, %eax	#, tmp380
	movl	%eax, -2096(%rbp)	# tmp380, r
	.loc 1 339 0
	movl	-2096(%rbp), %eax	# r, tmp382
	cmpl	-2140(%rbp), %eax	# nblock, tmp382
	jl	.L84	#,
	.loc 1 339 0 is_stmt 0 discriminator 1
	jmp	.L75	#
.L84:
	.loc 1 342 0 is_stmt 1
	movl	-2096(%rbp), %eax	# r, tmp383
	cmpl	-2080(%rbp), %eax	# l, tmp383
	jle	.L85	#,
	.loc 1 343 0
	movl	-2080(%rbp), %eax	# l, tmp384
	movl	-2096(%rbp), %edx	# r, tmp385
	subl	%eax, %edx	# tmp384, D.5103
	movl	%edx, %eax	# D.5103, D.5103
	addl	$1, %eax	#, D.5103
	addl	%eax, -2088(%rbp)	# D.5103, nNotDone
	.loc 1 344 0
	movl	-2096(%rbp), %ecx	# r, tmp386
	movl	-2080(%rbp), %edx	# l, tmp387
	movq	-2128(%rbp), %rsi	# eclass, tmp388
	movq	-2120(%rbp), %rax	# fmap, tmp389
	movq	%rax, %rdi	# tmp389,
	call	fallbackQSort3	#
	.loc 1 347 0
	movl	$-1, -2092(%rbp)	#, cc
	.loc 1 348 0
	movl	-2080(%rbp), %eax	# l, tmp390
	movl	%eax, -2108(%rbp)	# tmp390, i
	jmp	.L86	#
.L88:
	.loc 1 349 0
	movl	-2108(%rbp), %eax	# i, tmp391
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5104
	movq	-2120(%rbp), %rax	# fmap, tmp392
	addq	%rdx, %rax	# D.5104, D.5105
	movl	(%rax), %eax	# *_249, D.5106
	movl	%eax, %eax	# D.5106, D.5104
	leaq	0(,%rax,4), %rdx	#, D.5104
	movq	-2128(%rbp), %rax	# eclass, tmp393
	addq	%rdx, %rax	# D.5104, D.5105
	movl	(%rax), %eax	# *_253, D.5106
	movl	%eax, -2076(%rbp)	# D.5106, cc1
	.loc 1 350 0
	movl	-2092(%rbp), %eax	# cc, tmp394
	cmpl	-2076(%rbp), %eax	# cc1, tmp394
	je	.L87	#,
	.loc 1 350 0 is_stmt 0 discriminator 1
	movl	-2108(%rbp), %eax	# i, tmp395
	sarl	$5, %eax	#, D.5103
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5104
	movq	-2136(%rbp), %rax	# bhtab, tmp396
	addq	%rdx, %rax	# D.5104, D.5105
	movl	-2108(%rbp), %edx	# i, tmp397
	sarl	$5, %edx	#, D.5103
	movslq	%edx, %rdx	# D.5103, D.5104
	leaq	0(,%rdx,4), %rcx	#, D.5104
	movq	-2136(%rbp), %rdx	# bhtab, tmp398
	addq	%rcx, %rdx	# D.5104, D.5105
	movl	(%rdx), %esi	# *_263, D.5106
	movl	-2108(%rbp), %edx	# i, tmp399
	andl	$31, %edx	#, D.5103
	movl	$1, %edi	#, tmp400
	movl	%edx, %ecx	# D.5103, tmp439
	sall	%cl, %edi	# tmp439, D.5103
	movl	%edi, %edx	# D.5103, D.5103
	orl	%esi, %edx	# D.5106, D.5106
	movl	%edx, (%rax)	# D.5106, *_259
	movl	-2076(%rbp), %eax	# cc1, tmp401
	movl	%eax, -2092(%rbp)	# tmp401, cc
.L87:
	.loc 1 348 0 is_stmt 1
	addl	$1, -2108(%rbp)	#, i
.L86:
	.loc 1 348 0 is_stmt 0 discriminator 1
	movl	-2108(%rbp), %eax	# i, tmp402
	cmpl	-2096(%rbp), %eax	# r, tmp402
	jle	.L88	#,
.L85:
	.loc 1 353 0 is_stmt 1
	jmp	.L89	#
.L75:
	.loc 1 355 0
	cmpl	$3, -2144(%rbp)	#, verb
	jle	.L90	#,
	.loc 1 356 0
	movq	stderr(%rip), %rax	# stderr, stderr.14
	movl	-2088(%rbp), %edx	# nNotDone, tmp403
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# stderr.14,
	movl	$0, %eax	#,
	call	fprintf	#
.L90:
	.loc 1 358 0
	sall	-2112(%rbp)	# H
	.loc 1 359 0
	movl	-2112(%rbp), %eax	# H, tmp404
	cmpl	-2140(%rbp), %eax	# nblock, tmp404
	jg	.L91	#,
	.loc 1 359 0 is_stmt 0 discriminator 1
	cmpl	$0, -2088(%rbp)	#, nNotDone
	je	.L91	#,
	.loc 1 360 0 is_stmt 1
	jmp	.L92	#
.L91:
	.loc 1 367 0
	cmpl	$3, -2144(%rbp)	#, verb
	jle	.L93	#,
	.loc 1 368 0
	movq	stderr(%rip), %rax	# stderr, stderr.15
	movq	%rax, %rcx	# stderr.15,
	movl	$33, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC3, %edi	#,
	call	fwrite	#
.L93:
	.loc 1 369 0
	movl	$0, -2104(%rbp)	#, j
	.loc 1 370 0
	movl	$0, -2108(%rbp)	#, i
	jmp	.L94	#
.L97:
	.loc 1 371 0
	jmp	.L95	#
.L96:
	.loc 1 371 0 is_stmt 0 discriminator 2
	addl	$1, -2104(%rbp)	#, j
.L95:
	.loc 1 371 0 discriminator 1
	movl	-2104(%rbp), %eax	# j, tmp406
	cltq
	movl	-2064(%rbp,%rax,4), %eax	# ftabCopy, D.5103
	testl	%eax, %eax	# D.5103
	je	.L96	#,
	.loc 1 372 0 is_stmt 1
	movl	-2104(%rbp), %eax	# j, tmp408
	cltq
	movl	-2064(%rbp,%rax,4), %eax	# ftabCopy, D.5103
	leal	-1(%rax), %edx	#, D.5103
	movl	-2104(%rbp), %eax	# j, tmp410
	cltq
	movl	%edx, -2064(%rbp,%rax,4)	# D.5103, ftabCopy
	.loc 1 373 0
	movl	-2108(%rbp), %eax	# i, tmp411
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5104
	movq	-2120(%rbp), %rax	# fmap, tmp412
	addq	%rdx, %rax	# D.5104, D.5105
	movl	(%rax), %eax	# *_282, D.5106
	movl	%eax, %edx	# D.5106, D.5100
	movq	-2072(%rbp), %rax	# eclass8, tmp413
	addq	%rax, %rdx	# tmp413, D.5101
	movl	-2104(%rbp), %eax	# j, tmp414
	movb	%al, (%rdx)	# D.5102, *_285
	.loc 1 370 0
	addl	$1, -2108(%rbp)	#, i
.L94:
	.loc 1 370 0 is_stmt 0 discriminator 1
	movl	-2108(%rbp), %eax	# i, tmp415
	cmpl	-2140(%rbp), %eax	# nblock, tmp415
	jl	.L97	#,
	.loc 1 375 0 is_stmt 1
	cmpl	$255, -2104(%rbp)	#, j
	jle	.L43	#,
	.loc 1 375 0 is_stmt 0 discriminator 1
	movl	$1005, %edi	#,
	call	BZ2_bz__AssertH__fail	#
.L43:
	.loc 1 376 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	fallbackSort, .-fallbackSort
	.type	mainGtU, @function
mainGtU:
.LFB5:
	.loc 1 400 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)	# i1, i1
	movl	%esi, -24(%rbp)	# i2, i2
	movq	%rdx, -32(%rbp)	# block, block
	movq	%rcx, -40(%rbp)	# quadrant, quadrant
	movl	%r8d, -44(%rbp)	# nblock, nblock
	movq	%r9, -56(%rbp)	# budget, budget
	.loc 1 407 0
	movl	-20(%rbp), %edx	# i1, D.5112
	movq	-32(%rbp), %rax	# block, tmp220
	addq	%rdx, %rax	# D.5112, D.5113
	movzbl	(%rax), %eax	# *_10, tmp221
	movb	%al, -10(%rbp)	# tmp221, c1
	movl	-24(%rbp), %edx	# i2, D.5112
	movq	-32(%rbp), %rax	# block, tmp222
	addq	%rdx, %rax	# D.5112, D.5113
	movzbl	(%rax), %eax	# *_14, tmp223
	movb	%al, -9(%rbp)	# tmp223, c2
	.loc 1 408 0
	movzbl	-10(%rbp), %eax	# c1, tmp224
	cmpb	-9(%rbp), %al	# c2, tmp224
	je	.L100	#,
	.loc 1 408 0 is_stmt 0 discriminator 1
	movzbl	-10(%rbp), %eax	# c1, tmp225
	cmpb	-9(%rbp), %al	# c2, tmp225
	seta	%al	#, D.5114
	jmp	.L101	#
.L100:
	.loc 1 409 0 is_stmt 1
	addl	$1, -20(%rbp)	#, i1
	addl	$1, -24(%rbp)	#, i2
	.loc 1 411 0
	movl	-20(%rbp), %edx	# i1, D.5112
	movq	-32(%rbp), %rax	# block, tmp226
	addq	%rdx, %rax	# D.5112, D.5113
	movzbl	(%rax), %eax	# *_21, tmp227
	movb	%al, -10(%rbp)	# tmp227, c1
	movl	-24(%rbp), %edx	# i2, D.5112
	movq	-32(%rbp), %rax	# block, tmp228
	addq	%rdx, %rax	# D.5112, D.5113
	movzbl	(%rax), %eax	# *_24, tmp229
	movb	%al, -9(%rbp)	# tmp229, c2
	.loc 1 412 0
	movzbl	-10(%rbp), %eax	# c1, tmp230
	cmpb	-9(%rbp), %al	# c2, tmp230
	je	.L102	#,
	.loc 1 412 0 is_stmt 0 discriminator 1
	movzbl	-10(%rbp), %eax	# c1, tmp231
	cmpb	-9(%rbp), %al	# c2, tmp231
	seta	%al	#, D.5114
	jmp	.L101	#
.L102:
	.loc 1 413 0 is_stmt 1
	addl	$1, -20(%rbp)	#, i1
	addl	$1, -24(%rbp)	#, i2
	.loc 1 415 0
	movl	-20(%rbp), %edx	# i1, D.5112
	movq	-32(%rbp), %rax	# block, tmp232
	addq	%rdx, %rax	# D.5112, D.5113
	movzbl	(%rax), %eax	# *_31, tmp233
	movb	%al, -10(%rbp)	# tmp233, c1
	movl	-24(%rbp), %edx	# i2, D.5112
	movq	-32(%rbp), %rax	# block, tmp234
	addq	%rdx, %rax	# D.5112, D.5113
	movzbl	(%rax), %eax	# *_34, tmp235
	movb	%al, -9(%rbp)	# tmp235, c2
	.loc 1 416 0
	movzbl	-10(%rbp), %eax	# c1, tmp236
	cmpb	-9(%rbp), %al	# c2, tmp236
	je	.L103	#,
	.loc 1 416 0 is_stmt 0 discriminator 1
	movzbl	-10(%rbp), %eax	# c1, tmp237
	cmpb	-9(%rbp), %al	# c2, tmp237
	seta	%al	#, D.5114
	jmp	.L101	#
.L103:
	.loc 1 417 0 is_stmt 1
	addl	$1, -20(%rbp)	#, i1
	addl	$1, -24(%rbp)	#, i2
	.loc 1 419 0
	movl	-20(%rbp), %edx	# i1, D.5112
	movq	-32(%rbp), %rax	# block, tmp238
	addq	%rdx, %rax	# D.5112, D.5113
	movzbl	(%rax), %eax	# *_41, tmp239
	movb	%al, -10(%rbp)	# tmp239, c1
	movl	-24(%rbp), %edx	# i2, D.5112
	movq	-32(%rbp), %rax	# block, tmp240
	addq	%rdx, %rax	# D.5112, D.5113
	movzbl	(%rax), %eax	# *_44, tmp241
	movb	%al, -9(%rbp)	# tmp241, c2
	.loc 1 420 0
	movzbl	-10(%rbp), %eax	# c1, tmp242
	cmpb	-9(%rbp), %al	# c2, tmp242
	je	.L104	#,
	.loc 1 420 0 is_stmt 0 discriminator 1
	movzbl	-10(%rbp), %eax	# c1, tmp243
	cmpb	-9(%rbp), %al	# c2, tmp243
	seta	%al	#, D.5114
	jmp	.L101	#
.L104:
	.loc 1 421 0 is_stmt 1
	addl	$1, -20(%rbp)	#, i1
	addl	$1, -24(%rbp)	#, i2
	.loc 1 423 0
	movl	-20(%rbp), %edx	# i1, D.5112
	movq	-32(%rbp), %rax	# block, tmp244
	addq	%rdx, %rax	# D.5112, D.5113
	movzbl	(%rax), %eax	# *_51, tmp245
	movb	%al, -10(%rbp)	# tmp245, c1
	movl	-24(%rbp), %edx	# i2, D.5112
	movq	-32(%rbp), %rax	# block, tmp246
	addq	%rdx, %rax	# D.5112, D.5113
	movzbl	(%rax), %eax	# *_54, tmp247
	movb	%al, -9(%rbp)	# tmp247, c2
	.loc 1 424 0
	movzbl	-10(%rbp), %eax	# c1, tmp248
	cmpb	-9(%rbp), %al	# c2, tmp248
	je	.L105	#,
	.loc 1 424 0 is_stmt 0 discriminator 1
	movzbl	-10(%rbp), %eax	# c1, tmp249
	cmpb	-9(%rbp), %al	# c2, tmp249
	seta	%al	#, D.5114
	jmp	.L101	#
.L105:
	.loc 1 425 0 is_stmt 1
	addl	$1, -20(%rbp)	#, i1
	addl	$1, -24(%rbp)	#, i2
	.loc 1 427 0
	movl	-20(%rbp), %edx	# i1, D.5112
	movq	-32(%rbp), %rax	# block, tmp250
	addq	%rdx, %rax	# D.5112, D.5113
	movzbl	(%rax), %eax	# *_61, tmp251
	movb	%al, -10(%rbp)	# tmp251, c1
	movl	-24(%rbp), %edx	# i2, D.5112
	movq	-32(%rbp), %rax	# block, tmp252
	addq	%rdx, %rax	# D.5112, D.5113
	movzbl	(%rax), %eax	# *_64, tmp253
	movb	%al, -9(%rbp)	# tmp253, c2
	.loc 1 428 0
	movzbl	-10(%rbp), %eax	# c1, tmp254
	cmpb	-9(%rbp), %al	# c2, tmp254
	je	.L106	#,
	.loc 1 428 0 is_stmt 0 discriminator 1
	movzbl	-10(%rbp), %eax	# c1, tmp255
	cmpb	-9(%rbp), %al	# c2, tmp255
	seta	%al	#, D.5114
	jmp	.L101	#
.L106:
	.loc 1 429 0 is_stmt 1
	addl	$1, -20(%rbp)	#, i1
	addl	$1, -24(%rbp)	#, i2
	.loc 1 431 0
	movl	-20(%rbp), %edx	# i1, D.5112
	movq	-32(%rbp), %rax	# block, tmp256
	addq	%rdx, %rax	# D.5112, D.5113
	movzbl	(%rax), %eax	# *_71, tmp257
	movb	%al, -10(%rbp)	# tmp257, c1
	movl	-24(%rbp), %edx	# i2, D.5112
	movq	-32(%rbp), %rax	# block, tmp258
	addq	%rdx, %rax	# D.5112, D.5113
	movzbl	(%rax), %eax	# *_74, tmp259
	movb	%al, -9(%rbp)	# tmp259, c2
	.loc 1 432 0
	movzbl	-10(%rbp), %eax	# c1, tmp260
	cmpb	-9(%rbp), %al	# c2, tmp260
	je	.L107	#,
	.loc 1 432 0 is_stmt 0 discriminator 1
	movzbl	-10(%rbp), %eax	# c1, tmp261
	cmpb	-9(%rbp), %al	# c2, tmp261
	seta	%al	#, D.5114
	jmp	.L101	#
.L107:
	.loc 1 433 0 is_stmt 1
	addl	$1, -20(%rbp)	#, i1
	addl	$1, -24(%rbp)	#, i2
	.loc 1 435 0
	movl	-20(%rbp), %edx	# i1, D.5112
	movq	-32(%rbp), %rax	# block, tmp262
	addq	%rdx, %rax	# D.5112, D.5113
	movzbl	(%rax), %eax	# *_81, tmp263
	movb	%al, -10(%rbp)	# tmp263, c1
	movl	-24(%rbp), %edx	# i2, D.5112
	movq	-32(%rbp), %rax	# block, tmp264
	addq	%rdx, %rax	# D.5112, D.5113
	movzbl	(%rax), %eax	# *_84, tmp265
	movb	%al, -9(%rbp)	# tmp265, c2
	.loc 1 436 0
	movzbl	-10(%rbp), %eax	# c1, tmp266
	cmpb	-9(%rbp), %al	# c2, tmp266
	je	.L108	#,
	.loc 1 436 0 is_stmt 0 discriminator 1
	movzbl	-10(%rbp), %eax	# c1, tmp267
	cmpb	-9(%rbp), %al	# c2, tmp267
	seta	%al	#, D.5114
	jmp	.L101	#
.L108:
	.loc 1 437 0 is_stmt 1
	addl	$1, -20(%rbp)	#, i1
	addl	$1, -24(%rbp)	#, i2
	.loc 1 439 0
	movl	-20(%rbp), %edx	# i1, D.5112
	movq	-32(%rbp), %rax	# block, tmp268
	addq	%rdx, %rax	# D.5112, D.5113
	movzbl	(%rax), %eax	# *_91, tmp269
	movb	%al, -10(%rbp)	# tmp269, c1
	movl	-24(%rbp), %edx	# i2, D.5112
	movq	-32(%rbp), %rax	# block, tmp270
	addq	%rdx, %rax	# D.5112, D.5113
	movzbl	(%rax), %eax	# *_94, tmp271
	movb	%al, -9(%rbp)	# tmp271, c2
	.loc 1 440 0
	movzbl	-10(%rbp), %eax	# c1, tmp272
	cmpb	-9(%rbp), %al	# c2, tmp272
	je	.L109	#,
	.loc 1 440 0 is_stmt 0 discriminator 1
	movzbl	-10(%rbp), %eax	# c1, tmp273
	cmpb	-9(%rbp), %al	# c2, tmp273
	seta	%al	#, D.5114
	jmp	.L101	#
.L109:
	.loc 1 441 0 is_stmt 1
	addl	$1, -20(%rbp)	#, i1
	addl	$1, -24(%rbp)	#, i2
	.loc 1 443 0
	movl	-20(%rbp), %edx	# i1, D.5112
	movq	-32(%rbp), %rax	# block, tmp274
	addq	%rdx, %rax	# D.5112, D.5113
	movzbl	(%rax), %eax	# *_101, tmp275
	movb	%al, -10(%rbp)	# tmp275, c1
	movl	-24(%rbp), %edx	# i2, D.5112
	movq	-32(%rbp), %rax	# block, tmp276
	addq	%rdx, %rax	# D.5112, D.5113
	movzbl	(%rax), %eax	# *_104, tmp277
	movb	%al, -9(%rbp)	# tmp277, c2
	.loc 1 444 0
	movzbl	-10(%rbp), %eax	# c1, tmp278
	cmpb	-9(%rbp), %al	# c2, tmp278
	je	.L110	#,
	.loc 1 444 0 is_stmt 0 discriminator 1
	movzbl	-10(%rbp), %eax	# c1, tmp279
	cmpb	-9(%rbp), %al	# c2, tmp279
	seta	%al	#, D.5114
	jmp	.L101	#
.L110:
	.loc 1 445 0 is_stmt 1
	addl	$1, -20(%rbp)	#, i1
	addl	$1, -24(%rbp)	#, i2
	.loc 1 447 0
	movl	-20(%rbp), %edx	# i1, D.5112
	movq	-32(%rbp), %rax	# block, tmp280
	addq	%rdx, %rax	# D.5112, D.5113
	movzbl	(%rax), %eax	# *_111, tmp281
	movb	%al, -10(%rbp)	# tmp281, c1
	movl	-24(%rbp), %edx	# i2, D.5112
	movq	-32(%rbp), %rax	# block, tmp282
	addq	%rdx, %rax	# D.5112, D.5113
	movzbl	(%rax), %eax	# *_114, tmp283
	movb	%al, -9(%rbp)	# tmp283, c2
	.loc 1 448 0
	movzbl	-10(%rbp), %eax	# c1, tmp284
	cmpb	-9(%rbp), %al	# c2, tmp284
	je	.L111	#,
	.loc 1 448 0 is_stmt 0 discriminator 1
	movzbl	-10(%rbp), %eax	# c1, tmp285
	cmpb	-9(%rbp), %al	# c2, tmp285
	seta	%al	#, D.5114
	jmp	.L101	#
.L111:
	.loc 1 449 0 is_stmt 1
	addl	$1, -20(%rbp)	#, i1
	addl	$1, -24(%rbp)	#, i2
	.loc 1 451 0
	movl	-20(%rbp), %edx	# i1, D.5112
	movq	-32(%rbp), %rax	# block, tmp286
	addq	%rdx, %rax	# D.5112, D.5113
	movzbl	(%rax), %eax	# *_121, tmp287
	movb	%al, -10(%rbp)	# tmp287, c1
	movl	-24(%rbp), %edx	# i2, D.5112
	movq	-32(%rbp), %rax	# block, tmp288
	addq	%rdx, %rax	# D.5112, D.5113
	movzbl	(%rax), %eax	# *_124, tmp289
	movb	%al, -9(%rbp)	# tmp289, c2
	.loc 1 452 0
	movzbl	-10(%rbp), %eax	# c1, tmp290
	cmpb	-9(%rbp), %al	# c2, tmp290
	je	.L112	#,
	.loc 1 452 0 is_stmt 0 discriminator 1
	movzbl	-10(%rbp), %eax	# c1, tmp291
	cmpb	-9(%rbp), %al	# c2, tmp291
	seta	%al	#, D.5114
	jmp	.L101	#
.L112:
	.loc 1 453 0 is_stmt 1
	addl	$1, -20(%rbp)	#, i1
	addl	$1, -24(%rbp)	#, i2
	.loc 1 455 0
	movl	-44(%rbp), %eax	# nblock, tmp292
	addl	$8, %eax	#, D.5115
	movl	%eax, -4(%rbp)	# D.5115, k
.L131:
	.loc 1 459 0
	movl	-20(%rbp), %edx	# i1, D.5112
	movq	-32(%rbp), %rax	# block, tmp293
	addq	%rdx, %rax	# D.5112, D.5113
	movzbl	(%rax), %eax	# *_134, tmp294
	movb	%al, -10(%rbp)	# tmp294, c1
	movl	-24(%rbp), %edx	# i2, D.5112
	movq	-32(%rbp), %rax	# block, tmp295
	addq	%rdx, %rax	# D.5112, D.5113
	movzbl	(%rax), %eax	# *_137, tmp296
	movb	%al, -9(%rbp)	# tmp296, c2
	.loc 1 460 0
	movzbl	-10(%rbp), %eax	# c1, tmp297
	cmpb	-9(%rbp), %al	# c2, tmp297
	je	.L113	#,
	.loc 1 460 0 is_stmt 0 discriminator 1
	movzbl	-10(%rbp), %eax	# c1, tmp298
	cmpb	-9(%rbp), %al	# c2, tmp298
	seta	%al	#, D.5114
	jmp	.L101	#
.L113:
	.loc 1 461 0 is_stmt 1
	movl	-20(%rbp), %eax	# i1, D.5116
	leaq	(%rax,%rax), %rdx	#, D.5116
	movq	-40(%rbp), %rax	# quadrant, tmp299
	addq	%rdx, %rax	# D.5116, D.5117
	movzwl	(%rax), %eax	# *_144, tmp300
	movw	%ax, -8(%rbp)	# tmp300, s1
	movl	-24(%rbp), %eax	# i2, D.5116
	leaq	(%rax,%rax), %rdx	#, D.5116
	movq	-40(%rbp), %rax	# quadrant, tmp301
	addq	%rdx, %rax	# D.5116, D.5117
	movzwl	(%rax), %eax	# *_148, tmp302
	movw	%ax, -6(%rbp)	# tmp302, s2
	.loc 1 462 0
	movzwl	-8(%rbp), %eax	# s1, tmp303
	cmpw	-6(%rbp), %ax	# s2, tmp303
	je	.L114	#,
	.loc 1 462 0 is_stmt 0 discriminator 1
	movzwl	-8(%rbp), %eax	# s1, tmp304
	cmpw	-6(%rbp), %ax	# s2, tmp304
	seta	%al	#, D.5114
	jmp	.L101	#
.L114:
	.loc 1 463 0 is_stmt 1
	addl	$1, -20(%rbp)	#, i1
	addl	$1, -24(%rbp)	#, i2
	.loc 1 465 0
	movl	-20(%rbp), %edx	# i1, D.5112
	movq	-32(%rbp), %rax	# block, tmp305
	addq	%rdx, %rax	# D.5112, D.5113
	movzbl	(%rax), %eax	# *_155, tmp306
	movb	%al, -10(%rbp)	# tmp306, c1
	movl	-24(%rbp), %edx	# i2, D.5112
	movq	-32(%rbp), %rax	# block, tmp307
	addq	%rdx, %rax	# D.5112, D.5113
	movzbl	(%rax), %eax	# *_158, tmp308
	movb	%al, -9(%rbp)	# tmp308, c2
	.loc 1 466 0
	movzbl	-10(%rbp), %eax	# c1, tmp309
	cmpb	-9(%rbp), %al	# c2, tmp309
	je	.L115	#,
	.loc 1 466 0 is_stmt 0 discriminator 1
	movzbl	-10(%rbp), %eax	# c1, tmp310
	cmpb	-9(%rbp), %al	# c2, tmp310
	seta	%al	#, D.5114
	jmp	.L101	#
.L115:
	.loc 1 467 0 is_stmt 1
	movl	-20(%rbp), %eax	# i1, D.5116
	leaq	(%rax,%rax), %rdx	#, D.5116
	movq	-40(%rbp), %rax	# quadrant, tmp311
	addq	%rdx, %rax	# D.5116, D.5117
	movzwl	(%rax), %eax	# *_164, tmp312
	movw	%ax, -8(%rbp)	# tmp312, s1
	movl	-24(%rbp), %eax	# i2, D.5116
	leaq	(%rax,%rax), %rdx	#, D.5116
	movq	-40(%rbp), %rax	# quadrant, tmp313
	addq	%rdx, %rax	# D.5116, D.5117
	movzwl	(%rax), %eax	# *_168, tmp314
	movw	%ax, -6(%rbp)	# tmp314, s2
	.loc 1 468 0
	movzwl	-8(%rbp), %eax	# s1, tmp315
	cmpw	-6(%rbp), %ax	# s2, tmp315
	je	.L116	#,
	.loc 1 468 0 is_stmt 0 discriminator 1
	movzwl	-8(%rbp), %eax	# s1, tmp316
	cmpw	-6(%rbp), %ax	# s2, tmp316
	seta	%al	#, D.5114
	jmp	.L101	#
.L116:
	.loc 1 469 0 is_stmt 1
	addl	$1, -20(%rbp)	#, i1
	addl	$1, -24(%rbp)	#, i2
	.loc 1 471 0
	movl	-20(%rbp), %edx	# i1, D.5112
	movq	-32(%rbp), %rax	# block, tmp317
	addq	%rdx, %rax	# D.5112, D.5113
	movzbl	(%rax), %eax	# *_175, tmp318
	movb	%al, -10(%rbp)	# tmp318, c1
	movl	-24(%rbp), %edx	# i2, D.5112
	movq	-32(%rbp), %rax	# block, tmp319
	addq	%rdx, %rax	# D.5112, D.5113
	movzbl	(%rax), %eax	# *_178, tmp320
	movb	%al, -9(%rbp)	# tmp320, c2
	.loc 1 472 0
	movzbl	-10(%rbp), %eax	# c1, tmp321
	cmpb	-9(%rbp), %al	# c2, tmp321
	je	.L117	#,
	.loc 1 472 0 is_stmt 0 discriminator 1
	movzbl	-10(%rbp), %eax	# c1, tmp322
	cmpb	-9(%rbp), %al	# c2, tmp322
	seta	%al	#, D.5114
	jmp	.L101	#
.L117:
	.loc 1 473 0 is_stmt 1
	movl	-20(%rbp), %eax	# i1, D.5116
	leaq	(%rax,%rax), %rdx	#, D.5116
	movq	-40(%rbp), %rax	# quadrant, tmp323
	addq	%rdx, %rax	# D.5116, D.5117
	movzwl	(%rax), %eax	# *_184, tmp324
	movw	%ax, -8(%rbp)	# tmp324, s1
	movl	-24(%rbp), %eax	# i2, D.5116
	leaq	(%rax,%rax), %rdx	#, D.5116
	movq	-40(%rbp), %rax	# quadrant, tmp325
	addq	%rdx, %rax	# D.5116, D.5117
	movzwl	(%rax), %eax	# *_188, tmp326
	movw	%ax, -6(%rbp)	# tmp326, s2
	.loc 1 474 0
	movzwl	-8(%rbp), %eax	# s1, tmp327
	cmpw	-6(%rbp), %ax	# s2, tmp327
	je	.L118	#,
	.loc 1 474 0 is_stmt 0 discriminator 1
	movzwl	-8(%rbp), %eax	# s1, tmp328
	cmpw	-6(%rbp), %ax	# s2, tmp328
	seta	%al	#, D.5114
	jmp	.L101	#
.L118:
	.loc 1 475 0 is_stmt 1
	addl	$1, -20(%rbp)	#, i1
	addl	$1, -24(%rbp)	#, i2
	.loc 1 477 0
	movl	-20(%rbp), %edx	# i1, D.5112
	movq	-32(%rbp), %rax	# block, tmp329
	addq	%rdx, %rax	# D.5112, D.5113
	movzbl	(%rax), %eax	# *_195, tmp330
	movb	%al, -10(%rbp)	# tmp330, c1
	movl	-24(%rbp), %edx	# i2, D.5112
	movq	-32(%rbp), %rax	# block, tmp331
	addq	%rdx, %rax	# D.5112, D.5113
	movzbl	(%rax), %eax	# *_198, tmp332
	movb	%al, -9(%rbp)	# tmp332, c2
	.loc 1 478 0
	movzbl	-10(%rbp), %eax	# c1, tmp333
	cmpb	-9(%rbp), %al	# c2, tmp333
	je	.L119	#,
	.loc 1 478 0 is_stmt 0 discriminator 1
	movzbl	-10(%rbp), %eax	# c1, tmp334
	cmpb	-9(%rbp), %al	# c2, tmp334
	seta	%al	#, D.5114
	jmp	.L101	#
.L119:
	.loc 1 479 0 is_stmt 1
	movl	-20(%rbp), %eax	# i1, D.5116
	leaq	(%rax,%rax), %rdx	#, D.5116
	movq	-40(%rbp), %rax	# quadrant, tmp335
	addq	%rdx, %rax	# D.5116, D.5117
	movzwl	(%rax), %eax	# *_204, tmp336
	movw	%ax, -8(%rbp)	# tmp336, s1
	movl	-24(%rbp), %eax	# i2, D.5116
	leaq	(%rax,%rax), %rdx	#, D.5116
	movq	-40(%rbp), %rax	# quadrant, tmp337
	addq	%rdx, %rax	# D.5116, D.5117
	movzwl	(%rax), %eax	# *_208, tmp338
	movw	%ax, -6(%rbp)	# tmp338, s2
	.loc 1 480 0
	movzwl	-8(%rbp), %eax	# s1, tmp339
	cmpw	-6(%rbp), %ax	# s2, tmp339
	je	.L120	#,
	.loc 1 480 0 is_stmt 0 discriminator 1
	movzwl	-8(%rbp), %eax	# s1, tmp340
	cmpw	-6(%rbp), %ax	# s2, tmp340
	seta	%al	#, D.5114
	jmp	.L101	#
.L120:
	.loc 1 481 0 is_stmt 1
	addl	$1, -20(%rbp)	#, i1
	addl	$1, -24(%rbp)	#, i2
	.loc 1 483 0
	movl	-20(%rbp), %edx	# i1, D.5112
	movq	-32(%rbp), %rax	# block, tmp341
	addq	%rdx, %rax	# D.5112, D.5113
	movzbl	(%rax), %eax	# *_215, tmp342
	movb	%al, -10(%rbp)	# tmp342, c1
	movl	-24(%rbp), %edx	# i2, D.5112
	movq	-32(%rbp), %rax	# block, tmp343
	addq	%rdx, %rax	# D.5112, D.5113
	movzbl	(%rax), %eax	# *_218, tmp344
	movb	%al, -9(%rbp)	# tmp344, c2
	.loc 1 484 0
	movzbl	-10(%rbp), %eax	# c1, tmp345
	cmpb	-9(%rbp), %al	# c2, tmp345
	je	.L121	#,
	.loc 1 484 0 is_stmt 0 discriminator 1
	movzbl	-10(%rbp), %eax	# c1, tmp346
	cmpb	-9(%rbp), %al	# c2, tmp346
	seta	%al	#, D.5114
	jmp	.L101	#
.L121:
	.loc 1 485 0 is_stmt 1
	movl	-20(%rbp), %eax	# i1, D.5116
	leaq	(%rax,%rax), %rdx	#, D.5116
	movq	-40(%rbp), %rax	# quadrant, tmp347
	addq	%rdx, %rax	# D.5116, D.5117
	movzwl	(%rax), %eax	# *_224, tmp348
	movw	%ax, -8(%rbp)	# tmp348, s1
	movl	-24(%rbp), %eax	# i2, D.5116
	leaq	(%rax,%rax), %rdx	#, D.5116
	movq	-40(%rbp), %rax	# quadrant, tmp349
	addq	%rdx, %rax	# D.5116, D.5117
	movzwl	(%rax), %eax	# *_228, tmp350
	movw	%ax, -6(%rbp)	# tmp350, s2
	.loc 1 486 0
	movzwl	-8(%rbp), %eax	# s1, tmp351
	cmpw	-6(%rbp), %ax	# s2, tmp351
	je	.L122	#,
	.loc 1 486 0 is_stmt 0 discriminator 1
	movzwl	-8(%rbp), %eax	# s1, tmp352
	cmpw	-6(%rbp), %ax	# s2, tmp352
	seta	%al	#, D.5114
	jmp	.L101	#
.L122:
	.loc 1 487 0 is_stmt 1
	addl	$1, -20(%rbp)	#, i1
	addl	$1, -24(%rbp)	#, i2
	.loc 1 489 0
	movl	-20(%rbp), %edx	# i1, D.5112
	movq	-32(%rbp), %rax	# block, tmp353
	addq	%rdx, %rax	# D.5112, D.5113
	movzbl	(%rax), %eax	# *_235, tmp354
	movb	%al, -10(%rbp)	# tmp354, c1
	movl	-24(%rbp), %edx	# i2, D.5112
	movq	-32(%rbp), %rax	# block, tmp355
	addq	%rdx, %rax	# D.5112, D.5113
	movzbl	(%rax), %eax	# *_238, tmp356
	movb	%al, -9(%rbp)	# tmp356, c2
	.loc 1 490 0
	movzbl	-10(%rbp), %eax	# c1, tmp357
	cmpb	-9(%rbp), %al	# c2, tmp357
	je	.L123	#,
	.loc 1 490 0 is_stmt 0 discriminator 1
	movzbl	-10(%rbp), %eax	# c1, tmp358
	cmpb	-9(%rbp), %al	# c2, tmp358
	seta	%al	#, D.5114
	jmp	.L101	#
.L123:
	.loc 1 491 0 is_stmt 1
	movl	-20(%rbp), %eax	# i1, D.5116
	leaq	(%rax,%rax), %rdx	#, D.5116
	movq	-40(%rbp), %rax	# quadrant, tmp359
	addq	%rdx, %rax	# D.5116, D.5117
	movzwl	(%rax), %eax	# *_244, tmp360
	movw	%ax, -8(%rbp)	# tmp360, s1
	movl	-24(%rbp), %eax	# i2, D.5116
	leaq	(%rax,%rax), %rdx	#, D.5116
	movq	-40(%rbp), %rax	# quadrant, tmp361
	addq	%rdx, %rax	# D.5116, D.5117
	movzwl	(%rax), %eax	# *_248, tmp362
	movw	%ax, -6(%rbp)	# tmp362, s2
	.loc 1 492 0
	movzwl	-8(%rbp), %eax	# s1, tmp363
	cmpw	-6(%rbp), %ax	# s2, tmp363
	je	.L124	#,
	.loc 1 492 0 is_stmt 0 discriminator 1
	movzwl	-8(%rbp), %eax	# s1, tmp364
	cmpw	-6(%rbp), %ax	# s2, tmp364
	seta	%al	#, D.5114
	jmp	.L101	#
.L124:
	.loc 1 493 0 is_stmt 1
	addl	$1, -20(%rbp)	#, i1
	addl	$1, -24(%rbp)	#, i2
	.loc 1 495 0
	movl	-20(%rbp), %edx	# i1, D.5112
	movq	-32(%rbp), %rax	# block, tmp365
	addq	%rdx, %rax	# D.5112, D.5113
	movzbl	(%rax), %eax	# *_255, tmp366
	movb	%al, -10(%rbp)	# tmp366, c1
	movl	-24(%rbp), %edx	# i2, D.5112
	movq	-32(%rbp), %rax	# block, tmp367
	addq	%rdx, %rax	# D.5112, D.5113
	movzbl	(%rax), %eax	# *_258, tmp368
	movb	%al, -9(%rbp)	# tmp368, c2
	.loc 1 496 0
	movzbl	-10(%rbp), %eax	# c1, tmp369
	cmpb	-9(%rbp), %al	# c2, tmp369
	je	.L125	#,
	.loc 1 496 0 is_stmt 0 discriminator 1
	movzbl	-10(%rbp), %eax	# c1, tmp370
	cmpb	-9(%rbp), %al	# c2, tmp370
	seta	%al	#, D.5114
	jmp	.L101	#
.L125:
	.loc 1 497 0 is_stmt 1
	movl	-20(%rbp), %eax	# i1, D.5116
	leaq	(%rax,%rax), %rdx	#, D.5116
	movq	-40(%rbp), %rax	# quadrant, tmp371
	addq	%rdx, %rax	# D.5116, D.5117
	movzwl	(%rax), %eax	# *_264, tmp372
	movw	%ax, -8(%rbp)	# tmp372, s1
	movl	-24(%rbp), %eax	# i2, D.5116
	leaq	(%rax,%rax), %rdx	#, D.5116
	movq	-40(%rbp), %rax	# quadrant, tmp373
	addq	%rdx, %rax	# D.5116, D.5117
	movzwl	(%rax), %eax	# *_268, tmp374
	movw	%ax, -6(%rbp)	# tmp374, s2
	.loc 1 498 0
	movzwl	-8(%rbp), %eax	# s1, tmp375
	cmpw	-6(%rbp), %ax	# s2, tmp375
	je	.L126	#,
	.loc 1 498 0 is_stmt 0 discriminator 1
	movzwl	-8(%rbp), %eax	# s1, tmp376
	cmpw	-6(%rbp), %ax	# s2, tmp376
	seta	%al	#, D.5114
	jmp	.L101	#
.L126:
	.loc 1 499 0 is_stmt 1
	addl	$1, -20(%rbp)	#, i1
	addl	$1, -24(%rbp)	#, i2
	.loc 1 501 0
	movl	-20(%rbp), %edx	# i1, D.5112
	movq	-32(%rbp), %rax	# block, tmp377
	addq	%rdx, %rax	# D.5112, D.5113
	movzbl	(%rax), %eax	# *_275, tmp378
	movb	%al, -10(%rbp)	# tmp378, c1
	movl	-24(%rbp), %edx	# i2, D.5112
	movq	-32(%rbp), %rax	# block, tmp379
	addq	%rdx, %rax	# D.5112, D.5113
	movzbl	(%rax), %eax	# *_278, tmp380
	movb	%al, -9(%rbp)	# tmp380, c2
	.loc 1 502 0
	movzbl	-10(%rbp), %eax	# c1, tmp381
	cmpb	-9(%rbp), %al	# c2, tmp381
	je	.L127	#,
	.loc 1 502 0 is_stmt 0 discriminator 1
	movzbl	-10(%rbp), %eax	# c1, tmp382
	cmpb	-9(%rbp), %al	# c2, tmp382
	seta	%al	#, D.5114
	jmp	.L101	#
.L127:
	.loc 1 503 0 is_stmt 1
	movl	-20(%rbp), %eax	# i1, D.5116
	leaq	(%rax,%rax), %rdx	#, D.5116
	movq	-40(%rbp), %rax	# quadrant, tmp383
	addq	%rdx, %rax	# D.5116, D.5117
	movzwl	(%rax), %eax	# *_284, tmp384
	movw	%ax, -8(%rbp)	# tmp384, s1
	movl	-24(%rbp), %eax	# i2, D.5116
	leaq	(%rax,%rax), %rdx	#, D.5116
	movq	-40(%rbp), %rax	# quadrant, tmp385
	addq	%rdx, %rax	# D.5116, D.5117
	movzwl	(%rax), %eax	# *_288, tmp386
	movw	%ax, -6(%rbp)	# tmp386, s2
	.loc 1 504 0
	movzwl	-8(%rbp), %eax	# s1, tmp387
	cmpw	-6(%rbp), %ax	# s2, tmp387
	je	.L128	#,
	.loc 1 504 0 is_stmt 0 discriminator 1
	movzwl	-8(%rbp), %eax	# s1, tmp388
	cmpw	-6(%rbp), %ax	# s2, tmp388
	seta	%al	#, D.5114
	jmp	.L101	#
.L128:
	.loc 1 505 0 is_stmt 1
	addl	$1, -20(%rbp)	#, i1
	addl	$1, -24(%rbp)	#, i2
	.loc 1 507 0
	movl	-20(%rbp), %eax	# i1, tmp389
	cmpl	-44(%rbp), %eax	# nblock, tmp389
	jb	.L129	#,
	.loc 1 507 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# nblock, tmp390
	subl	%eax, -20(%rbp)	# tmp390, i1
.L129:
	.loc 1 508 0 is_stmt 1
	movl	-24(%rbp), %eax	# i2, tmp391
	cmpl	-44(%rbp), %eax	# nblock, tmp391
	jb	.L130	#,
	.loc 1 508 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# nblock, tmp392
	subl	%eax, -24(%rbp)	# tmp392, i2
.L130:
	.loc 1 510 0 is_stmt 1
	subl	$8, -4(%rbp)	#, k
	.loc 1 511 0
	movq	-56(%rbp), %rax	# budget, tmp393
	movl	(%rax), %eax	# *budget_297(D), D.5118
	leal	-1(%rax), %edx	#, D.5118
	movq	-56(%rbp), %rax	# budget, tmp394
	movl	%edx, (%rax)	# D.5118, *budget_297(D)
	.loc 1 513 0
	cmpl	$0, -4(%rbp)	#, k
	jns	.L131	#,
	.loc 1 515 0
	movl	$0, %eax	#, D.5111
.L101:
	.loc 1 516 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	mainGtU, .-mainGtU
	.data
	.align 32
	.type	incs, @object
	.size	incs, 56
incs:
	.long	1
	.long	4
	.long	13
	.long	40
	.long	121
	.long	364
	.long	1093
	.long	3280
	.long	9841
	.long	29524
	.long	88573
	.long	265720
	.long	797161
	.long	2391484
	.text
	.type	mainSimpleSort, @function
mainSimpleSort:
.LFB6:
	.loc 1 540 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$72, %rsp	#,
	movq	%rdi, -40(%rbp)	# ptr, ptr
	movq	%rsi, -48(%rbp)	# block, block
	movq	%rdx, -56(%rbp)	# quadrant, quadrant
	movl	%ecx, -60(%rbp)	# nblock, nblock
	movl	%r8d, -64(%rbp)	# lo, lo
	movl	%r9d, -68(%rbp)	# hi, hi
	.loc 1 544 0
	movl	-64(%rbp), %eax	# lo, tmp143
	movl	-68(%rbp), %edx	# hi, tmp144
	subl	%eax, %edx	# tmp143, D.5119
	movl	%edx, %eax	# D.5119, D.5119
	addl	$1, %eax	#, tmp145
	movl	%eax, -12(%rbp)	# tmp145, bigN
	.loc 1 545 0
	cmpl	$1, -12(%rbp)	#, bigN
	jg	.L133	#,
	.loc 1 545 0 is_stmt 0 discriminator 1
	jmp	.L132	#
.L133:
	.loc 1 547 0 is_stmt 1
	movl	$0, -16(%rbp)	#, hp
	.loc 1 548 0
	jmp	.L135	#
.L136:
	.loc 1 548 0 is_stmt 0 discriminator 2
	addl	$1, -16(%rbp)	#, hp
.L135:
	.loc 1 548 0 discriminator 1
	movl	-16(%rbp), %eax	# hp, tmp147
	cltq
	movl	incs(,%rax,4), %eax	# incs, D.5119
	cmpl	-12(%rbp), %eax	# bigN, D.5119
	jl	.L136	#,
	.loc 1 549 0 is_stmt 1
	subl	$1, -16(%rbp)	#, hp
	.loc 1 551 0
	jmp	.L137	#
.L153:
	.loc 1 552 0
	movl	-16(%rbp), %eax	# hp, tmp149
	cltq
	movl	incs(,%rax,4), %eax	# incs, tmp150
	movl	%eax, -8(%rbp)	# tmp150, h
	.loc 1 554 0
	movl	-8(%rbp), %eax	# h, tmp155
	movl	-64(%rbp), %edx	# lo, tmp156
	addl	%edx, %eax	# tmp156, tmp154
	movl	%eax, -24(%rbp)	# tmp154, i
.L152:
	.loc 1 558 0
	movl	-24(%rbp), %eax	# i, tmp157
	cmpl	-68(%rbp), %eax	# hi, tmp157
	jle	.L138	#,
	.loc 1 558 0 is_stmt 0 discriminator 1
	jmp	.L139	#
.L138:
	.loc 1 559 0 is_stmt 1
	movl	-24(%rbp), %eax	# i, tmp158
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5120
	movq	-40(%rbp), %rax	# ptr, tmp159
	addq	%rdx, %rax	# D.5120, D.5121
	movl	(%rax), %eax	# *_23, tmp160
	movl	%eax, -4(%rbp)	# tmp160, v
	.loc 1 560 0
	movl	-24(%rbp), %eax	# i, tmp161
	movl	%eax, -20(%rbp)	# tmp161, j
	.loc 1 561 0
	jmp	.L140	#
.L142:
	.loc 1 564 0
	movl	-20(%rbp), %eax	# j, tmp162
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5120
	movq	-40(%rbp), %rax	# ptr, tmp163
	addq	%rax, %rdx	# tmp163, D.5121
	movl	-8(%rbp), %eax	# h, tmp164
	movl	-20(%rbp), %ecx	# j, tmp165
	subl	%eax, %ecx	# tmp164, D.5119
	movl	%ecx, %eax	# D.5119, D.5119
	cltq
	leaq	0(,%rax,4), %rcx	#, D.5120
	movq	-40(%rbp), %rax	# ptr, tmp166
	addq	%rcx, %rax	# D.5120, D.5121
	movl	(%rax), %eax	# *_48, D.5122
	movl	%eax, (%rdx)	# D.5122, *_44
	.loc 1 565 0
	movl	-8(%rbp), %eax	# h, tmp167
	subl	%eax, -20(%rbp)	# tmp167, j
	.loc 1 566 0
	movl	-8(%rbp), %eax	# h, tmp168
	movl	-64(%rbp), %edx	# lo, tmp169
	addl	%edx, %eax	# tmp169, D.5119
	subl	$1, %eax	#, D.5119
	cmpl	-20(%rbp), %eax	# j, D.5119
	jl	.L140	#,
	.loc 1 566 0 is_stmt 0 discriminator 1
	jmp	.L141	#
.L140:
	.loc 1 561 0 is_stmt 1 discriminator 1
	movl	-60(%rbp), %ecx	# nblock, nblock.16
	movl	16(%rbp), %edx	# d, d.17
	movl	-4(%rbp), %eax	# v, tmp170
	leal	(%rdx,%rax), %esi	#, D.5122
	.loc 1 562 0 discriminator 1
	movl	-8(%rbp), %eax	# h, tmp171
	movl	-20(%rbp), %edx	# j, tmp172
	subl	%eax, %edx	# tmp171, D.5119
	movl	%edx, %eax	# D.5119, D.5119
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5120
	movq	-40(%rbp), %rax	# ptr, tmp173
	addq	%rdx, %rax	# D.5120, D.5121
	movl	(%rax), %edx	# *_34, D.5122
	.loc 1 561 0 discriminator 1
	movl	16(%rbp), %eax	# d, d.18
	leal	(%rdx,%rax), %edi	#, D.5122
	movq	24(%rbp), %r8	# budget, tmp174
	movq	-56(%rbp), %rdx	# quadrant, tmp175
	movq	-48(%rbp), %rax	# block, tmp176
	movq	%r8, %r9	# tmp174,
	movl	%ecx, %r8d	# nblock.16,
	movq	%rdx, %rcx	# tmp175,
	movq	%rax, %rdx	# tmp176,
	call	mainGtU	#
	testb	%al, %al	# D.5123
	jne	.L142	#,
.L141:
	.loc 1 568 0
	movl	-20(%rbp), %eax	# j, tmp177
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5120
	movq	-40(%rbp), %rax	# ptr, tmp178
	addq	%rax, %rdx	# tmp178, D.5121
	movl	-4(%rbp), %eax	# v, tmp179
	movl	%eax, (%rdx)	# tmp179, *_55
	.loc 1 569 0
	addl	$1, -24(%rbp)	#, i
	.loc 1 572 0
	movl	-24(%rbp), %eax	# i, tmp180
	cmpl	-68(%rbp), %eax	# hi, tmp180
	jle	.L143	#,
	.loc 1 572 0 is_stmt 0 discriminator 1
	jmp	.L139	#
.L143:
	.loc 1 573 0 is_stmt 1
	movl	-24(%rbp), %eax	# i, tmp181
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5120
	movq	-40(%rbp), %rax	# ptr, tmp182
	addq	%rdx, %rax	# D.5120, D.5121
	movl	(%rax), %eax	# *_59, tmp183
	movl	%eax, -4(%rbp)	# tmp183, v
	.loc 1 574 0
	movl	-24(%rbp), %eax	# i, tmp184
	movl	%eax, -20(%rbp)	# tmp184, j
	.loc 1 575 0
	jmp	.L144	#
.L146:
	.loc 1 578 0
	movl	-20(%rbp), %eax	# j, tmp185
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5120
	movq	-40(%rbp), %rax	# ptr, tmp186
	addq	%rax, %rdx	# tmp186, D.5121
	movl	-8(%rbp), %eax	# h, tmp187
	movl	-20(%rbp), %ecx	# j, tmp188
	subl	%eax, %ecx	# tmp187, D.5119
	movl	%ecx, %eax	# D.5119, D.5119
	cltq
	leaq	0(,%rax,4), %rcx	#, D.5120
	movq	-40(%rbp), %rax	# ptr, tmp189
	addq	%rcx, %rax	# D.5120, D.5121
	movl	(%rax), %eax	# *_79, D.5122
	movl	%eax, (%rdx)	# D.5122, *_75
	.loc 1 579 0
	movl	-8(%rbp), %eax	# h, tmp190
	subl	%eax, -20(%rbp)	# tmp190, j
	.loc 1 580 0
	movl	-8(%rbp), %eax	# h, tmp191
	movl	-64(%rbp), %edx	# lo, tmp192
	addl	%edx, %eax	# tmp192, D.5119
	subl	$1, %eax	#, D.5119
	cmpl	-20(%rbp), %eax	# j, D.5119
	jl	.L144	#,
	.loc 1 580 0 is_stmt 0 discriminator 1
	jmp	.L145	#
.L144:
	.loc 1 575 0 is_stmt 1 discriminator 1
	movl	-60(%rbp), %ecx	# nblock, nblock.19
	movl	16(%rbp), %edx	# d, d.20
	movl	-4(%rbp), %eax	# v, tmp193
	leal	(%rdx,%rax), %esi	#, D.5122
	.loc 1 576 0 discriminator 1
	movl	-8(%rbp), %eax	# h, tmp194
	movl	-20(%rbp), %edx	# j, tmp195
	subl	%eax, %edx	# tmp194, D.5119
	movl	%edx, %eax	# D.5119, D.5119
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5120
	movq	-40(%rbp), %rax	# ptr, tmp196
	addq	%rdx, %rax	# D.5120, D.5121
	movl	(%rax), %edx	# *_68, D.5122
	.loc 1 575 0 discriminator 1
	movl	16(%rbp), %eax	# d, d.21
	leal	(%rdx,%rax), %edi	#, D.5122
	movq	24(%rbp), %r8	# budget, tmp197
	movq	-56(%rbp), %rdx	# quadrant, tmp198
	movq	-48(%rbp), %rax	# block, tmp199
	movq	%r8, %r9	# tmp197,
	movl	%ecx, %r8d	# nblock.19,
	movq	%rdx, %rcx	# tmp198,
	movq	%rax, %rdx	# tmp199,
	call	mainGtU	#
	testb	%al, %al	# D.5123
	jne	.L146	#,
.L145:
	.loc 1 582 0
	movl	-20(%rbp), %eax	# j, tmp200
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5120
	movq	-40(%rbp), %rax	# ptr, tmp201
	addq	%rax, %rdx	# tmp201, D.5121
	movl	-4(%rbp), %eax	# v, tmp202
	movl	%eax, (%rdx)	# tmp202, *_86
	.loc 1 583 0
	addl	$1, -24(%rbp)	#, i
	.loc 1 586 0
	movl	-24(%rbp), %eax	# i, tmp203
	cmpl	-68(%rbp), %eax	# hi, tmp203
	jle	.L147	#,
	.loc 1 586 0 is_stmt 0 discriminator 1
	jmp	.L139	#
.L147:
	.loc 1 587 0 is_stmt 1
	movl	-24(%rbp), %eax	# i, tmp204
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5120
	movq	-40(%rbp), %rax	# ptr, tmp205
	addq	%rdx, %rax	# D.5120, D.5121
	movl	(%rax), %eax	# *_90, tmp206
	movl	%eax, -4(%rbp)	# tmp206, v
	.loc 1 588 0
	movl	-24(%rbp), %eax	# i, tmp207
	movl	%eax, -20(%rbp)	# tmp207, j
	.loc 1 589 0
	jmp	.L148	#
.L150:
	.loc 1 592 0
	movl	-20(%rbp), %eax	# j, tmp208
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5120
	movq	-40(%rbp), %rax	# ptr, tmp209
	addq	%rax, %rdx	# tmp209, D.5121
	movl	-8(%rbp), %eax	# h, tmp210
	movl	-20(%rbp), %ecx	# j, tmp211
	subl	%eax, %ecx	# tmp210, D.5119
	movl	%ecx, %eax	# D.5119, D.5119
	cltq
	leaq	0(,%rax,4), %rcx	#, D.5120
	movq	-40(%rbp), %rax	# ptr, tmp212
	addq	%rcx, %rax	# D.5120, D.5121
	movl	(%rax), %eax	# *_110, D.5122
	movl	%eax, (%rdx)	# D.5122, *_106
	.loc 1 593 0
	movl	-8(%rbp), %eax	# h, tmp213
	subl	%eax, -20(%rbp)	# tmp213, j
	.loc 1 594 0
	movl	-8(%rbp), %eax	# h, tmp214
	movl	-64(%rbp), %edx	# lo, tmp215
	addl	%edx, %eax	# tmp215, D.5119
	subl	$1, %eax	#, D.5119
	cmpl	-20(%rbp), %eax	# j, D.5119
	jl	.L148	#,
	.loc 1 594 0 is_stmt 0 discriminator 1
	jmp	.L149	#
.L148:
	.loc 1 589 0 is_stmt 1 discriminator 1
	movl	-60(%rbp), %ecx	# nblock, nblock.22
	movl	16(%rbp), %edx	# d, d.23
	movl	-4(%rbp), %eax	# v, tmp216
	leal	(%rdx,%rax), %esi	#, D.5122
	.loc 1 590 0 discriminator 1
	movl	-8(%rbp), %eax	# h, tmp217
	movl	-20(%rbp), %edx	# j, tmp218
	subl	%eax, %edx	# tmp217, D.5119
	movl	%edx, %eax	# D.5119, D.5119
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5120
	movq	-40(%rbp), %rax	# ptr, tmp219
	addq	%rdx, %rax	# D.5120, D.5121
	movl	(%rax), %edx	# *_99, D.5122
	.loc 1 589 0 discriminator 1
	movl	16(%rbp), %eax	# d, d.24
	leal	(%rdx,%rax), %edi	#, D.5122
	movq	24(%rbp), %r8	# budget, tmp220
	movq	-56(%rbp), %rdx	# quadrant, tmp221
	movq	-48(%rbp), %rax	# block, tmp222
	movq	%r8, %r9	# tmp220,
	movl	%ecx, %r8d	# nblock.22,
	movq	%rdx, %rcx	# tmp221,
	movq	%rax, %rdx	# tmp222,
	call	mainGtU	#
	testb	%al, %al	# D.5123
	jne	.L150	#,
.L149:
	.loc 1 596 0
	movl	-20(%rbp), %eax	# j, tmp223
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5120
	movq	-40(%rbp), %rax	# ptr, tmp224
	addq	%rax, %rdx	# tmp224, D.5121
	movl	-4(%rbp), %eax	# v, tmp225
	movl	%eax, (%rdx)	# tmp225, *_117
	.loc 1 597 0
	addl	$1, -24(%rbp)	#, i
	.loc 1 599 0
	movq	24(%rbp), %rax	# budget, tmp226
	movl	(%rax), %eax	# *budget_40(D), D.5119
	testl	%eax, %eax	# D.5119
	jns	.L151	#,
	.loc 1 599 0 is_stmt 0 discriminator 1
	jmp	.L132	#
.L151:
	.loc 1 600 0 is_stmt 1
	jmp	.L152	#
.L139:
	.loc 1 551 0
	subl	$1, -16(%rbp)	#, hp
.L137:
	.loc 1 551 0 is_stmt 0 discriminator 1
	cmpl	$0, -16(%rbp)	#, hp
	jns	.L153	#,
.L132:
	.loc 1 602 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	mainSimpleSort, .-mainSimpleSort
	.type	mmed3, @function
mmed3:
.LFB7:
	.loc 1 631 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%esi, %ecx	# b, tmp62
	movl	%edx, %eax	# c, tmp63
	movb	%dil, -20(%rbp)	# tmp61, a
	movb	%cl, -24(%rbp)	# tmp62, b
	movb	%al, -28(%rbp)	# tmp63, c
	.loc 1 633 0
	movzbl	-20(%rbp), %eax	# a, tmp64
	cmpb	-24(%rbp), %al	# b, tmp64
	jbe	.L155	#,
	.loc 1 633 0 is_stmt 0 discriminator 1
	movzbl	-20(%rbp), %eax	# a, tmp65
	movb	%al, -1(%rbp)	# tmp65, t
	movzbl	-24(%rbp), %eax	# b, tmp66
	movb	%al, -20(%rbp)	# tmp66, a
	movzbl	-1(%rbp), %eax	# t, tmp67
	movb	%al, -24(%rbp)	# tmp67, b
.L155:
	.loc 1 634 0 is_stmt 1
	movzbl	-24(%rbp), %eax	# b, tmp68
	cmpb	-28(%rbp), %al	# c, tmp68
	jbe	.L156	#,
	.loc 1 635 0
	movzbl	-28(%rbp), %eax	# c, tmp69
	movb	%al, -24(%rbp)	# tmp69, b
	.loc 1 636 0
	movzbl	-20(%rbp), %eax	# a, tmp70
	cmpb	-24(%rbp), %al	# b, tmp70
	jbe	.L156	#,
	.loc 1 636 0 is_stmt 0 discriminator 1
	movzbl	-20(%rbp), %eax	# a, tmp71
	movb	%al, -24(%rbp)	# tmp71, b
.L156:
	.loc 1 638 0 is_stmt 1
	movzbl	-24(%rbp), %eax	# b, D.5124
	.loc 1 639 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	mmed3, .-mmed3
	.type	mainQSort3, @function
mainQSort3:
.LFB8:
	.loc 1 676 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$1424, %rsp	#,
	movq	%rdi, -1368(%rbp)	# ptr, ptr
	movq	%rsi, -1376(%rbp)	# block, block
	movq	%rdx, -1384(%rbp)	# quadrant, quadrant
	movl	%ecx, -1388(%rbp)	# nblock, nblock
	movl	%r8d, -1392(%rbp)	# loSt, loSt
	movl	%r9d, -1396(%rbp)	# hiSt, hiSt
	.loc 1 688 0
	movl	$0, -1332(%rbp)	#, sp
	.loc 1 689 0
	movl	-1332(%rbp), %eax	# sp, tmp239
	cltq
	movl	-1392(%rbp), %edx	# loSt, tmp240
	movl	%edx, -1200(%rbp,%rax,4)	# tmp240, stackLo
	movl	-1332(%rbp), %eax	# sp, tmp242
	cltq
	movl	-1396(%rbp), %edx	# hiSt, tmp243
	movl	%edx, -800(%rbp,%rax,4)	# tmp243, stackHi
	movl	-1332(%rbp), %eax	# sp, tmp245
	cltq
	movl	16(%rbp), %edx	# dSt, tmp246
	movl	%edx, -400(%rbp,%rax,4)	# tmp246, stackD
	addl	$1, -1332(%rbp)	#, sp
	.loc 1 691 0
	jmp	.L159	#
.L186:
	.loc 1 693 0
	cmpl	$99, -1332(%rbp)	#, sp
	jle	.L160	#,
	.loc 1 693 0 is_stmt 0 discriminator 1
	movl	$1001, %edi	#,
	call	BZ2_bz__AssertH__fail	#
.L160:
	.loc 1 695 0 is_stmt 1
	subl	$1, -1332(%rbp)	#, sp
	movl	-1332(%rbp), %eax	# sp, tmp248
	cltq
	movl	-1200(%rbp,%rax,4), %eax	# stackLo, tmp249
	movl	%eax, -1304(%rbp)	# tmp249, lo
	movl	-1332(%rbp), %eax	# sp, tmp251
	cltq
	movl	-800(%rbp,%rax,4), %eax	# stackHi, tmp252
	movl	%eax, -1300(%rbp)	# tmp252, hi
	movl	-1332(%rbp), %eax	# sp, tmp254
	cltq
	movl	-400(%rbp,%rax,4), %eax	# stackD, tmp255
	movl	%eax, -1296(%rbp)	# tmp255, d
	.loc 1 696 0
	movl	-1304(%rbp), %eax	# lo, tmp256
	movl	-1300(%rbp), %edx	# hi, tmp257
	subl	%eax, %edx	# tmp256, D.5125
	movl	%edx, %eax	# D.5125, D.5125
	cmpl	$19, %eax	#, D.5125
	jle	.L161	#,
	.loc 1 696 0 is_stmt 0 discriminator 1
	cmpl	$14, -1296(%rbp)	#, d
	jle	.L162	#,
.L161:
	.loc 1 698 0 is_stmt 1
	movl	-1300(%rbp), %r9d	# hi, tmp258
	movl	-1304(%rbp), %r8d	# lo, tmp259
	movl	-1388(%rbp), %ecx	# nblock, tmp260
	movq	-1384(%rbp), %rdx	# quadrant, tmp261
	movq	-1376(%rbp), %rsi	# block, tmp262
	movq	-1368(%rbp), %rax	# ptr, tmp263
	movq	24(%rbp), %rdi	# budget, tmp264
	movq	%rdi, 8(%rsp)	# tmp264,
	movl	-1296(%rbp), %edi	# d, tmp265
	movl	%edi, (%rsp)	# tmp265,
	movq	%rax, %rdi	# tmp263,
	call	mainSimpleSort	#
	.loc 1 699 0
	movq	24(%rbp), %rax	# budget, tmp266
	movl	(%rax), %eax	# *budget_258(D), D.5125
	testl	%eax, %eax	# D.5125
	js	.L158	#,
	.loc 1 700 0
	jmp	.L159	#
.L162:
	.loc 1 706 0
	movl	-1300(%rbp), %eax	# hi, tmp267
	movl	-1304(%rbp), %edx	# lo, tmp268
	addl	%edx, %eax	# tmp268, D.5125
	sarl	%eax	# D.5125
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5126
	movq	-1368(%rbp), %rax	# ptr, tmp269
	addq	%rdx, %rax	# D.5126, D.5127
	movl	(%rax), %edx	# *_33, D.5128
	movl	-1296(%rbp), %eax	# d, d.25
	addl	%edx, %eax	# D.5128, D.5128
	movl	%eax, %edx	# D.5128, D.5129
	movq	-1376(%rbp), %rax	# block, tmp270
	addq	%rdx, %rax	# D.5129, D.5130
	movzbl	(%rax), %eax	# *_39, D.5131
	.loc 1 704 0
	movzbl	%al, %edx	# D.5131, D.5125
	.loc 1 705 0
	movl	-1300(%rbp), %eax	# hi, tmp271
	cltq
	leaq	0(,%rax,4), %rcx	#, D.5126
	movq	-1368(%rbp), %rax	# ptr, tmp272
	addq	%rcx, %rax	# D.5126, D.5127
	movl	(%rax), %ecx	# *_44, D.5128
	movl	-1296(%rbp), %eax	# d, d.26
	addl	%ecx, %eax	# D.5128, D.5128
	movl	%eax, %ecx	# D.5128, D.5129
	movq	-1376(%rbp), %rax	# block, tmp273
	addq	%rcx, %rax	# D.5129, D.5130
	movzbl	(%rax), %eax	# *_49, D.5131
	.loc 1 704 0
	movzbl	%al, %ecx	# D.5131, D.5125
	movl	-1304(%rbp), %eax	# lo, tmp274
	cltq
	leaq	0(,%rax,4), %rsi	#, D.5126
	movq	-1368(%rbp), %rax	# ptr, tmp275
	addq	%rsi, %rax	# D.5126, D.5127
	movl	(%rax), %esi	# *_54, D.5128
	movl	-1296(%rbp), %eax	# d, d.27
	addl	%esi, %eax	# D.5128, D.5128
	movl	%eax, %esi	# D.5128, D.5129
	movq	-1376(%rbp), %rax	# block, tmp276
	addq	%rsi, %rax	# D.5129, D.5130
	movzbl	(%rax), %eax	# *_59, D.5131
	movzbl	%al, %eax	# D.5131, D.5125
	movl	%ecx, %esi	# D.5125,
	movl	%eax, %edi	# D.5125,
	call	mmed3	#
	.loc 1 703 0
	movzbl	%al, %eax	# D.5131, tmp277
	movl	%eax, -1292(%rbp)	# tmp277, med
	.loc 1 708 0
	movl	-1304(%rbp), %eax	# lo, tmp278
	movl	%eax, -1340(%rbp)	# tmp278, ltLo
	movl	-1340(%rbp), %eax	# ltLo, tmp279
	movl	%eax, -1348(%rbp)	# tmp279, unLo
	.loc 1 709 0
	movl	-1300(%rbp), %eax	# hi, tmp280
	movl	%eax, -1336(%rbp)	# tmp280, gtHi
	movl	-1336(%rbp), %eax	# gtHi, tmp281
	movl	%eax, -1344(%rbp)	# tmp281, unHi
.L170:
	.loc 1 713 0
	movl	-1348(%rbp), %eax	# unLo, tmp282
	cmpl	-1344(%rbp), %eax	# unHi, tmp282
	jle	.L165	#,
	.loc 1 713 0 is_stmt 0 discriminator 1
	jmp	.L166	#
.L165:
	.loc 1 714 0 is_stmt 1
	movl	-1348(%rbp), %eax	# unLo, tmp283
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5126
	movq	-1368(%rbp), %rax	# ptr, tmp284
	addq	%rdx, %rax	# D.5126, D.5127
	movl	(%rax), %edx	# *_70, D.5128
	movl	-1296(%rbp), %eax	# d, d.28
	addl	%edx, %eax	# D.5128, D.5128
	movl	%eax, %edx	# D.5128, D.5129
	movq	-1376(%rbp), %rax	# block, tmp285
	addq	%rdx, %rax	# D.5129, D.5130
	movzbl	(%rax), %eax	# *_75, D.5131
	movzbl	%al, %eax	# D.5131, D.5125
	subl	-1292(%rbp), %eax	# med, tmp287
	movl	%eax, -1288(%rbp)	# tmp287, n
	.loc 1 715 0
	cmpl	$0, -1288(%rbp)	#, n
	jne	.L167	#,
.LBB9:
	.loc 1 716 0
	movl	-1348(%rbp), %eax	# unLo, tmp288
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5126
	movq	-1368(%rbp), %rax	# ptr, tmp289
	addq	%rdx, %rax	# D.5126, D.5127
	movl	(%rax), %eax	# *_81, D.5128
	movl	%eax, -1284(%rbp)	# D.5128, zztmp
	movl	-1348(%rbp), %eax	# unLo, tmp290
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5126
	movq	-1368(%rbp), %rax	# ptr, tmp291
	addq	%rax, %rdx	# tmp291, D.5127
	movl	-1340(%rbp), %eax	# ltLo, tmp292
	cltq
	leaq	0(,%rax,4), %rcx	#, D.5126
	movq	-1368(%rbp), %rax	# ptr, tmp293
	addq	%rcx, %rax	# D.5126, D.5127
	movl	(%rax), %eax	# *_89, D.5128
	movl	%eax, (%rdx)	# D.5128, *_86
	movl	-1340(%rbp), %eax	# ltLo, tmp294
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5126
	movq	-1368(%rbp), %rax	# ptr, tmp295
	addq	%rax, %rdx	# tmp295, D.5127
	movl	-1284(%rbp), %eax	# zztmp, zztmp.29
	movl	%eax, (%rdx)	# zztmp.29, *_93
.LBE9:
	.loc 1 717 0
	addl	$1, -1340(%rbp)	#, ltLo
	addl	$1, -1348(%rbp)	#, unLo
	nop
	.loc 1 721 0
	jmp	.L170	#
.L167:
	.loc 1 719 0
	cmpl	$0, -1288(%rbp)	#, n
	jle	.L169	#,
	.loc 1 719 0 is_stmt 0 discriminator 1
	jmp	.L166	#
.L169:
	.loc 1 720 0 is_stmt 1
	addl	$1, -1348(%rbp)	#, unLo
	.loc 1 721 0
	jmp	.L170	#
.L166:
	.loc 1 723 0
	movl	-1348(%rbp), %eax	# unLo, tmp296
	cmpl	-1344(%rbp), %eax	# unHi, tmp296
	jle	.L171	#,
	.loc 1 723 0 is_stmt 0 discriminator 1
	jmp	.L172	#
.L171:
	.loc 1 724 0 is_stmt 1
	movl	-1344(%rbp), %eax	# unHi, tmp297
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5126
	movq	-1368(%rbp), %rax	# ptr, tmp298
	addq	%rdx, %rax	# D.5126, D.5127
	movl	(%rax), %edx	# *_100, D.5128
	movl	-1296(%rbp), %eax	# d, d.30
	addl	%edx, %eax	# D.5128, D.5128
	movl	%eax, %edx	# D.5128, D.5129
	movq	-1376(%rbp), %rax	# block, tmp299
	addq	%rdx, %rax	# D.5129, D.5130
	movzbl	(%rax), %eax	# *_105, D.5131
	movzbl	%al, %eax	# D.5131, D.5125
	subl	-1292(%rbp), %eax	# med, tmp301
	movl	%eax, -1288(%rbp)	# tmp301, n
	.loc 1 725 0
	cmpl	$0, -1288(%rbp)	#, n
	jne	.L173	#,
.LBB10:
	.loc 1 726 0
	movl	-1344(%rbp), %eax	# unHi, tmp302
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5126
	movq	-1368(%rbp), %rax	# ptr, tmp303
	addq	%rdx, %rax	# D.5126, D.5127
	movl	(%rax), %eax	# *_111, D.5128
	movl	%eax, -1280(%rbp)	# D.5128, zztmp
	movl	-1344(%rbp), %eax	# unHi, tmp304
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5126
	movq	-1368(%rbp), %rax	# ptr, tmp305
	addq	%rax, %rdx	# tmp305, D.5127
	movl	-1336(%rbp), %eax	# gtHi, tmp306
	cltq
	leaq	0(,%rax,4), %rcx	#, D.5126
	movq	-1368(%rbp), %rax	# ptr, tmp307
	addq	%rcx, %rax	# D.5126, D.5127
	movl	(%rax), %eax	# *_119, D.5128
	movl	%eax, (%rdx)	# D.5128, *_116
	movl	-1336(%rbp), %eax	# gtHi, tmp308
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5126
	movq	-1368(%rbp), %rax	# ptr, tmp309
	addq	%rax, %rdx	# tmp309, D.5127
	movl	-1280(%rbp), %eax	# zztmp, zztmp.31
	movl	%eax, (%rdx)	# zztmp.31, *_123
.LBE10:
	.loc 1 727 0
	subl	$1, -1336(%rbp)	#, gtHi
	subl	$1, -1344(%rbp)	#, unHi
	nop
	.loc 1 731 0
	jmp	.L166	#
.L173:
	.loc 1 729 0
	cmpl	$0, -1288(%rbp)	#, n
	jns	.L175	#,
	.loc 1 729 0 is_stmt 0 discriminator 1
	jmp	.L172	#
.L175:
	.loc 1 730 0 is_stmt 1
	subl	$1, -1344(%rbp)	#, unHi
	.loc 1 731 0
	jmp	.L166	#
.L172:
	.loc 1 732 0
	movl	-1348(%rbp), %eax	# unLo, tmp310
	cmpl	-1344(%rbp), %eax	# unHi, tmp310
	jle	.L176	#,
	.loc 1 732 0 is_stmt 0 discriminator 1
	nop
	.loc 1 738 0 is_stmt 1 discriminator 1
	movl	-1336(%rbp), %eax	# gtHi, tmp319
	cmpl	-1340(%rbp), %eax	# ltLo, tmp319
	jge	.L178	#,
	jmp	.L187	#
.L176:
.LBB11:
	.loc 1 733 0
	movl	-1348(%rbp), %eax	# unLo, tmp311
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5126
	movq	-1368(%rbp), %rax	# ptr, tmp312
	addq	%rdx, %rax	# D.5126, D.5127
	movl	(%rax), %eax	# *_240, D.5128
	movl	%eax, -1252(%rbp)	# D.5128, zztmp
	movl	-1348(%rbp), %eax	# unLo, tmp313
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5126
	movq	-1368(%rbp), %rax	# ptr, tmp314
	addq	%rax, %rdx	# tmp314, D.5127
	movl	-1344(%rbp), %eax	# unHi, tmp315
	cltq
	leaq	0(,%rax,4), %rcx	#, D.5126
	movq	-1368(%rbp), %rax	# ptr, tmp316
	addq	%rcx, %rax	# D.5126, D.5127
	movl	(%rax), %eax	# *_248, D.5128
	movl	%eax, (%rdx)	# D.5128, *_245
	movl	-1344(%rbp), %eax	# unHi, tmp317
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5126
	movq	-1368(%rbp), %rax	# ptr, tmp318
	addq	%rax, %rdx	# tmp318, D.5127
	movl	-1252(%rbp), %eax	# zztmp, zztmp.32
	movl	%eax, (%rdx)	# zztmp.32, *_252
.LBE11:
	addl	$1, -1348(%rbp)	#, unLo
	subl	$1, -1344(%rbp)	#, unHi
	.loc 1 734 0
	jmp	.L170	#
.L187:
	.loc 1 739 0
	movl	-1332(%rbp), %eax	# sp, tmp321
	cltq
	movl	-1304(%rbp), %edx	# lo, tmp322
	movl	%edx, -1200(%rbp,%rax,4)	# tmp322, stackLo
	movl	-1332(%rbp), %eax	# sp, tmp324
	cltq
	movl	-1300(%rbp), %edx	# hi, tmp325
	movl	%edx, -800(%rbp,%rax,4)	# tmp325, stackHi
	movl	-1296(%rbp), %eax	# d, tmp326
	leal	1(%rax), %edx	#, D.5125
	movl	-1332(%rbp), %eax	# sp, tmp328
	cltq
	movl	%edx, -400(%rbp,%rax,4)	# D.5125, stackD
	addl	$1, -1332(%rbp)	#, sp
	.loc 1 740 0
	jmp	.L159	#
.L178:
	.loc 1 743 0
	movl	-1340(%rbp), %eax	# ltLo, tmp329
	movl	-1348(%rbp), %edx	# unLo, tmp330
	subl	%eax, %edx	# tmp329, D.5125
	movl	-1304(%rbp), %eax	# lo, tmp331
	movl	-1340(%rbp), %ecx	# ltLo, tmp332
	subl	%eax, %ecx	# tmp331, D.5125
	movl	%ecx, %eax	# D.5125, D.5125
	cmpl	%eax, %edx	# D.5125, D.5125
	cmovle	%edx, %eax	# D.5125,, tmp333
	movl	%eax, -1288(%rbp)	# tmp333, n
.LBB12:
	movl	-1304(%rbp), %eax	# lo, tmp334
	movl	%eax, -1328(%rbp)	# tmp334, yyp1
	movl	-1288(%rbp), %eax	# n, tmp339
	movl	-1348(%rbp), %edx	# unLo, tmp340
	subl	%eax, %edx	# tmp339, tmp338
	movl	%edx, %eax	# tmp338, tmp338
	movl	%eax, -1324(%rbp)	# tmp338, yyp2
	movl	-1288(%rbp), %eax	# n, tmp341
	movl	%eax, -1320(%rbp)	# tmp341, yyn
	jmp	.L179	#
.L180:
.LBB13:
	.loc 1 743 0 is_stmt 0 discriminator 2
	movl	-1328(%rbp), %eax	# yyp1, tmp342
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5126
	movq	-1368(%rbp), %rax	# ptr, tmp343
	addq	%rdx, %rax	# D.5126, D.5127
	movl	(%rax), %eax	# *_138, D.5128
	movl	%eax, -1276(%rbp)	# D.5128, zztmp
	movl	-1328(%rbp), %eax	# yyp1, tmp344
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5126
	movq	-1368(%rbp), %rax	# ptr, tmp345
	addq	%rax, %rdx	# tmp345, D.5127
	movl	-1324(%rbp), %eax	# yyp2, tmp346
	cltq
	leaq	0(,%rax,4), %rcx	#, D.5126
	movq	-1368(%rbp), %rax	# ptr, tmp347
	addq	%rcx, %rax	# D.5126, D.5127
	movl	(%rax), %eax	# *_146, D.5128
	movl	%eax, (%rdx)	# D.5128, *_143
	movl	-1324(%rbp), %eax	# yyp2, tmp348
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5126
	movq	-1368(%rbp), %rax	# ptr, tmp349
	addq	%rax, %rdx	# tmp349, D.5127
	movl	-1276(%rbp), %eax	# zztmp, zztmp.33
	movl	%eax, (%rdx)	# zztmp.33, *_150
.LBE13:
	addl	$1, -1328(%rbp)	#, yyp1
	addl	$1, -1324(%rbp)	#, yyp2
	subl	$1, -1320(%rbp)	#, yyn
.L179:
	.loc 1 743 0 discriminator 1
	cmpl	$0, -1320(%rbp)	#, yyn
	jg	.L180	#,
.LBE12:
	.loc 1 744 0 is_stmt 1
	movl	-1344(%rbp), %eax	# unHi, tmp350
	movl	-1336(%rbp), %edx	# gtHi, tmp351
	subl	%eax, %edx	# tmp350, D.5125
	movl	-1336(%rbp), %eax	# gtHi, tmp352
	movl	-1300(%rbp), %ecx	# hi, tmp353
	subl	%eax, %ecx	# tmp352, D.5125
	movl	%ecx, %eax	# D.5125, D.5125
	cmpl	%eax, %edx	# D.5125, D.5125
	cmovle	%edx, %eax	# D.5125,, tmp354
	movl	%eax, -1272(%rbp)	# tmp354, m
.LBB14:
	movl	-1348(%rbp), %eax	# unLo, tmp355
	movl	%eax, -1316(%rbp)	# tmp355, yyp1
	movl	-1272(%rbp), %eax	# m, tmp356
	movl	-1300(%rbp), %edx	# hi, tmp357
	subl	%eax, %edx	# tmp356, D.5125
	movl	%edx, %eax	# D.5125, D.5125
	addl	$1, %eax	#, tmp358
	movl	%eax, -1312(%rbp)	# tmp358, yyp2
	movl	-1272(%rbp), %eax	# m, tmp359
	movl	%eax, -1308(%rbp)	# tmp359, yyn
	jmp	.L181	#
.L182:
.LBB15:
	.loc 1 744 0 is_stmt 0 discriminator 2
	movl	-1316(%rbp), %eax	# yyp1, tmp360
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5126
	movq	-1368(%rbp), %rax	# ptr, tmp361
	addq	%rdx, %rax	# D.5126, D.5127
	movl	(%rax), %eax	# *_164, D.5128
	movl	%eax, -1268(%rbp)	# D.5128, zztmp
	movl	-1316(%rbp), %eax	# yyp1, tmp362
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5126
	movq	-1368(%rbp), %rax	# ptr, tmp363
	addq	%rax, %rdx	# tmp363, D.5127
	movl	-1312(%rbp), %eax	# yyp2, tmp364
	cltq
	leaq	0(,%rax,4), %rcx	#, D.5126
	movq	-1368(%rbp), %rax	# ptr, tmp365
	addq	%rcx, %rax	# D.5126, D.5127
	movl	(%rax), %eax	# *_172, D.5128
	movl	%eax, (%rdx)	# D.5128, *_169
	movl	-1312(%rbp), %eax	# yyp2, tmp366
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5126
	movq	-1368(%rbp), %rax	# ptr, tmp367
	addq	%rax, %rdx	# tmp367, D.5127
	movl	-1268(%rbp), %eax	# zztmp, zztmp.34
	movl	%eax, (%rdx)	# zztmp.34, *_176
.LBE15:
	addl	$1, -1316(%rbp)	#, yyp1
	addl	$1, -1312(%rbp)	#, yyp2
	subl	$1, -1308(%rbp)	#, yyn
.L181:
	.loc 1 744 0 discriminator 1
	cmpl	$0, -1308(%rbp)	#, yyn
	jg	.L182	#,
.LBE14:
	.loc 1 746 0 is_stmt 1
	movl	-1348(%rbp), %eax	# unLo, tmp368
	movl	-1304(%rbp), %edx	# lo, tmp369
	addl	%edx, %eax	# tmp369, D.5125
	subl	-1340(%rbp), %eax	# ltLo, D.5125
	subl	$1, %eax	#, tmp370
	movl	%eax, -1288(%rbp)	# tmp370, n
	.loc 1 747 0
	movl	-1336(%rbp), %eax	# gtHi, tmp371
	movl	-1344(%rbp), %edx	# unHi, tmp372
	subl	%eax, %edx	# tmp371, D.5125
	movl	-1300(%rbp), %eax	# hi, tmp373
	addl	%edx, %eax	# D.5125, D.5125
	addl	$1, %eax	#, tmp374
	movl	%eax, -1272(%rbp)	# tmp374, m
	.loc 1 749 0
	movl	-1304(%rbp), %eax	# lo, tmp375
	movl	%eax, -1248(%rbp)	# tmp375, nextLo
	movl	-1288(%rbp), %eax	# n, tmp376
	movl	%eax, -1232(%rbp)	# tmp376, nextHi
	movl	-1296(%rbp), %eax	# d, tmp377
	movl	%eax, -1216(%rbp)	# tmp377, nextD
	.loc 1 750 0
	movl	-1272(%rbp), %eax	# m, tmp378
	movl	%eax, -1244(%rbp)	# tmp378, nextLo
	movl	-1300(%rbp), %eax	# hi, tmp379
	movl	%eax, -1228(%rbp)	# tmp379, nextHi
	movl	-1296(%rbp), %eax	# d, tmp380
	movl	%eax, -1212(%rbp)	# tmp380, nextD
	.loc 1 751 0
	movl	-1288(%rbp), %eax	# n, tmp381
	addl	$1, %eax	#, D.5125
	movl	%eax, -1240(%rbp)	# D.5125, nextLo
	movl	-1272(%rbp), %eax	# m, tmp382
	subl	$1, %eax	#, D.5125
	movl	%eax, -1224(%rbp)	# D.5125, nextHi
	movl	-1296(%rbp), %eax	# d, tmp383
	addl	$1, %eax	#, D.5125
	movl	%eax, -1208(%rbp)	# D.5125, nextD
	.loc 1 753 0
	movl	-1232(%rbp), %edx	# nextHi, D.5125
	movl	-1248(%rbp), %eax	# nextLo, D.5125
	movl	%edx, %ecx	# D.5125, D.5125
	subl	%eax, %ecx	# D.5125, D.5125
	movl	-1228(%rbp), %edx	# nextHi, D.5125
	movl	-1244(%rbp), %eax	# nextLo, D.5125
	subl	%eax, %edx	# D.5125, D.5125
	movl	%edx, %eax	# D.5125, D.5125
	cmpl	%eax, %ecx	# D.5125, D.5125
	jge	.L183	#,
.LBB16:
	.loc 1 753 0 is_stmt 0 discriminator 1
	movl	-1248(%rbp), %eax	# nextLo, tmp384
	movl	%eax, -1264(%rbp)	# tmp384, tz
	movl	-1244(%rbp), %eax	# nextLo, D.5125
	movl	%eax, -1248(%rbp)	# D.5125, nextLo
	movl	-1264(%rbp), %eax	# tz, tmp385
	movl	%eax, -1244(%rbp)	# tmp385, nextLo
	movl	-1232(%rbp), %eax	# nextHi, tmp386
	movl	%eax, -1264(%rbp)	# tmp386, tz
	movl	-1228(%rbp), %eax	# nextHi, D.5125
	movl	%eax, -1232(%rbp)	# D.5125, nextHi
	movl	-1264(%rbp), %eax	# tz, tmp387
	movl	%eax, -1228(%rbp)	# tmp387, nextHi
	movl	-1216(%rbp), %eax	# nextD, tmp388
	movl	%eax, -1264(%rbp)	# tmp388, tz
	movl	-1212(%rbp), %eax	# nextD, D.5125
	movl	%eax, -1216(%rbp)	# D.5125, nextD
	movl	-1264(%rbp), %eax	# tz, tmp389
	movl	%eax, -1212(%rbp)	# tmp389, nextD
.L183:
.LBE16:
	.loc 1 754 0 is_stmt 1
	movl	-1228(%rbp), %edx	# nextHi, D.5125
	movl	-1244(%rbp), %eax	# nextLo, D.5125
	movl	%edx, %ecx	# D.5125, D.5125
	subl	%eax, %ecx	# D.5125, D.5125
	movl	-1224(%rbp), %edx	# nextHi, D.5125
	movl	-1240(%rbp), %eax	# nextLo, D.5125
	subl	%eax, %edx	# D.5125, D.5125
	movl	%edx, %eax	# D.5125, D.5125
	cmpl	%eax, %ecx	# D.5125, D.5125
	jge	.L184	#,
.LBB17:
	.loc 1 754 0 is_stmt 0 discriminator 1
	movl	-1244(%rbp), %eax	# nextLo, tmp390
	movl	%eax, -1260(%rbp)	# tmp390, tz
	movl	-1240(%rbp), %eax	# nextLo, D.5125
	movl	%eax, -1244(%rbp)	# D.5125, nextLo
	movl	-1260(%rbp), %eax	# tz, tmp391
	movl	%eax, -1240(%rbp)	# tmp391, nextLo
	movl	-1228(%rbp), %eax	# nextHi, tmp392
	movl	%eax, -1260(%rbp)	# tmp392, tz
	movl	-1224(%rbp), %eax	# nextHi, D.5125
	movl	%eax, -1228(%rbp)	# D.5125, nextHi
	movl	-1260(%rbp), %eax	# tz, tmp393
	movl	%eax, -1224(%rbp)	# tmp393, nextHi
	movl	-1212(%rbp), %eax	# nextD, tmp394
	movl	%eax, -1260(%rbp)	# tmp394, tz
	movl	-1208(%rbp), %eax	# nextD, D.5125
	movl	%eax, -1212(%rbp)	# D.5125, nextD
	movl	-1260(%rbp), %eax	# tz, tmp395
	movl	%eax, -1208(%rbp)	# tmp395, nextD
.L184:
.LBE17:
	.loc 1 755 0 is_stmt 1
	movl	-1232(%rbp), %edx	# nextHi, D.5125
	movl	-1248(%rbp), %eax	# nextLo, D.5125
	movl	%edx, %ecx	# D.5125, D.5125
	subl	%eax, %ecx	# D.5125, D.5125
	movl	-1228(%rbp), %edx	# nextHi, D.5125
	movl	-1244(%rbp), %eax	# nextLo, D.5125
	subl	%eax, %edx	# D.5125, D.5125
	movl	%edx, %eax	# D.5125, D.5125
	cmpl	%eax, %ecx	# D.5125, D.5125
	jge	.L185	#,
.LBB18:
	.loc 1 755 0 is_stmt 0 discriminator 1
	movl	-1248(%rbp), %eax	# nextLo, tmp396
	movl	%eax, -1256(%rbp)	# tmp396, tz
	movl	-1244(%rbp), %eax	# nextLo, D.5125
	movl	%eax, -1248(%rbp)	# D.5125, nextLo
	movl	-1256(%rbp), %eax	# tz, tmp397
	movl	%eax, -1244(%rbp)	# tmp397, nextLo
	movl	-1232(%rbp), %eax	# nextHi, tmp398
	movl	%eax, -1256(%rbp)	# tmp398, tz
	movl	-1228(%rbp), %eax	# nextHi, D.5125
	movl	%eax, -1232(%rbp)	# D.5125, nextHi
	movl	-1256(%rbp), %eax	# tz, tmp399
	movl	%eax, -1228(%rbp)	# tmp399, nextHi
	movl	-1216(%rbp), %eax	# nextD, tmp400
	movl	%eax, -1256(%rbp)	# tmp400, tz
	movl	-1212(%rbp), %eax	# nextD, D.5125
	movl	%eax, -1216(%rbp)	# D.5125, nextD
	movl	-1256(%rbp), %eax	# tz, tmp401
	movl	%eax, -1212(%rbp)	# tmp401, nextD
.L185:
.LBE18:
	.loc 1 760 0 is_stmt 1
	movl	-1248(%rbp), %edx	# nextLo, D.5125
	movl	-1332(%rbp), %eax	# sp, tmp403
	cltq
	movl	%edx, -1200(%rbp,%rax,4)	# D.5125, stackLo
	movl	-1232(%rbp), %edx	# nextHi, D.5125
	movl	-1332(%rbp), %eax	# sp, tmp405
	cltq
	movl	%edx, -800(%rbp,%rax,4)	# D.5125, stackHi
	movl	-1216(%rbp), %edx	# nextD, D.5125
	movl	-1332(%rbp), %eax	# sp, tmp407
	cltq
	movl	%edx, -400(%rbp,%rax,4)	# D.5125, stackD
	addl	$1, -1332(%rbp)	#, sp
	.loc 1 761 0
	movl	-1244(%rbp), %edx	# nextLo, D.5125
	movl	-1332(%rbp), %eax	# sp, tmp409
	cltq
	movl	%edx, -1200(%rbp,%rax,4)	# D.5125, stackLo
	movl	-1228(%rbp), %edx	# nextHi, D.5125
	movl	-1332(%rbp), %eax	# sp, tmp411
	cltq
	movl	%edx, -800(%rbp,%rax,4)	# D.5125, stackHi
	movl	-1212(%rbp), %edx	# nextD, D.5125
	movl	-1332(%rbp), %eax	# sp, tmp413
	cltq
	movl	%edx, -400(%rbp,%rax,4)	# D.5125, stackD
	addl	$1, -1332(%rbp)	#, sp
	.loc 1 762 0
	movl	-1240(%rbp), %edx	# nextLo, D.5125
	movl	-1332(%rbp), %eax	# sp, tmp415
	cltq
	movl	%edx, -1200(%rbp,%rax,4)	# D.5125, stackLo
	movl	-1224(%rbp), %edx	# nextHi, D.5125
	movl	-1332(%rbp), %eax	# sp, tmp417
	cltq
	movl	%edx, -800(%rbp,%rax,4)	# D.5125, stackHi
	movl	-1208(%rbp), %edx	# nextD, D.5125
	movl	-1332(%rbp), %eax	# sp, tmp419
	cltq
	movl	%edx, -400(%rbp,%rax,4)	# D.5125, stackD
	addl	$1, -1332(%rbp)	#, sp
.L159:
	.loc 1 691 0 discriminator 1
	cmpl	$0, -1332(%rbp)	#, sp
	jg	.L186	#,
.L158:
	.loc 1 764 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	mainQSort3, .-mainQSort3
	.section	.rodata
	.align 8
.LC4:
	.string	"        main sort initialise ...\n"
	.align 8
.LC5:
	.string	"        qsort [0x%x, 0x%x]   done %d   this %d\n"
	.align 8
.LC6:
	.string	"        %d pointers, %d sorted, %d scanned\n"
	.text
	.type	mainSort, @function
mainSort:
.LFB9:
	.loc 1 805 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$3472, %rsp	#,
	movq	%rdi, -3416(%rbp)	# ptr, ptr
	movq	%rsi, -3424(%rbp)	# block, block
	movq	%rdx, -3432(%rbp)	# quadrant, quadrant
	movq	%rcx, -3440(%rbp)	# ftab, ftab
	movl	%r8d, -3444(%rbp)	# nblock, nblock
	movl	%r9d, -3448(%rbp)	# verb, verb
	movq	16(%rbp), %rax	# budget, tmp467
	movq	%rax, -3456(%rbp)	# tmp467, budget
	.loc 1 805 0
	movq	%fs:40, %rax	#, tmp735
	movq	%rax, -8(%rbp)	# tmp735, D.5142
	xorl	%eax, %eax	# tmp735
	.loc 1 814 0
	cmpl	$3, -3448(%rbp)	#, verb
	jle	.L189	#,
	.loc 1 814 0 is_stmt 0 discriminator 1
	movq	stderr(%rip), %rax	# stderr, stderr.35
	movq	%rax, %rcx	# stderr.35,
	movl	$33, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC4, %edi	#,
	call	fwrite	#
.L189:
	.loc 1 817 0 is_stmt 1
	movl	$65536, -3400(%rbp)	#, i
	jmp	.L190	#
.L191:
	.loc 1 817 0 is_stmt 0 discriminator 2
	movl	-3400(%rbp), %eax	# i, tmp468
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5132
	movq	-3440(%rbp), %rax	# ftab, tmp469
	addq	%rdx, %rax	# D.5132, D.5133
	movl	$0, (%rax)	#, *_38
	subl	$1, -3400(%rbp)	#, i
.L190:
	.loc 1 817 0 discriminator 1
	cmpl	$0, -3400(%rbp)	#, i
	jns	.L191	#,
	.loc 1 819 0 is_stmt 1
	movq	-3424(%rbp), %rax	# block, tmp470
	movzbl	(%rax), %eax	# *block_40(D), D.5134
	movzbl	%al, %eax	# D.5134, D.5135
	sall	$8, %eax	#, tmp471
	movl	%eax, -3396(%rbp)	# tmp471, j
	.loc 1 820 0
	movl	-3444(%rbp), %eax	# nblock, tmp475
	subl	$1, %eax	#, tmp474
	movl	%eax, -3400(%rbp)	# tmp474, i
	.loc 1 821 0
	jmp	.L192	#
.L193:
	.loc 1 822 0 discriminator 2
	movl	-3400(%rbp), %eax	# i, tmp476
	cltq
	leaq	(%rax,%rax), %rdx	#, D.5132
	movq	-3432(%rbp), %rax	# quadrant, tmp477
	addq	%rdx, %rax	# D.5132, D.5136
	movw	$0, (%rax)	#, *_49
	.loc 1 823 0 discriminator 2
	movl	-3396(%rbp), %eax	# j, tmp478
	sarl	$8, %eax	#, D.5135
	movl	%eax, %ecx	# D.5135, D.5135
	movl	-3400(%rbp), %eax	# i, tmp479
	movslq	%eax, %rdx	# tmp479, D.5137
	movq	-3424(%rbp), %rax	# block, tmp480
	addq	%rdx, %rax	# D.5137, D.5138
	movzbl	(%rax), %eax	# *_52, D.5134
	movzbl	%al, %eax	# D.5134, D.5135
	sall	$8, %eax	#, D.5135
	orl	%ecx, %eax	# D.5135, tmp481
	movl	%eax, -3396(%rbp)	# tmp481, j
	.loc 1 824 0 discriminator 2
	movl	-3396(%rbp), %eax	# j, tmp482
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5132
	movq	-3440(%rbp), %rax	# ftab, tmp483
	addq	%rdx, %rax	# D.5132, D.5133
	movl	(%rax), %edx	# *_59, D.5139
	addl	$1, %edx	#, D.5139
	movl	%edx, (%rax)	# D.5139, *_59
	.loc 1 825 0 discriminator 2
	movl	-3400(%rbp), %eax	# i, tmp484
	cltq
	addq	%rax, %rax	# D.5132
	leaq	-2(%rax), %rdx	#, D.5137
	movq	-3432(%rbp), %rax	# quadrant, tmp485
	addq	%rdx, %rax	# D.5137, D.5136
	movw	$0, (%rax)	#, *_65
	.loc 1 826 0 discriminator 2
	movl	-3396(%rbp), %eax	# j, tmp486
	sarl	$8, %eax	#, D.5135
	movl	%eax, %edx	# D.5135, D.5135
	movl	-3400(%rbp), %eax	# i, tmp487
	cltq
	leaq	-1(%rax), %rcx	#, D.5137
	movq	-3424(%rbp), %rax	# block, tmp488
	addq	%rcx, %rax	# D.5137, D.5138
	movzbl	(%rax), %eax	# *_69, D.5134
	movzbl	%al, %eax	# D.5134, D.5135
	sall	$8, %eax	#, D.5135
	orl	%edx, %eax	# D.5135, tmp489
	movl	%eax, -3396(%rbp)	# tmp489, j
	.loc 1 827 0 discriminator 2
	movl	-3396(%rbp), %eax	# j, tmp490
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5132
	movq	-3440(%rbp), %rax	# ftab, tmp491
	addq	%rdx, %rax	# D.5132, D.5133
	movl	(%rax), %edx	# *_76, D.5139
	addl	$1, %edx	#, D.5139
	movl	%edx, (%rax)	# D.5139, *_76
	.loc 1 828 0 discriminator 2
	movl	-3400(%rbp), %eax	# i, tmp492
	cltq
	addq	%rax, %rax	# D.5132
	leaq	-4(%rax), %rdx	#, D.5137
	movq	-3432(%rbp), %rax	# quadrant, tmp493
	addq	%rdx, %rax	# D.5137, D.5136
	movw	$0, (%rax)	#, *_82
	.loc 1 829 0 discriminator 2
	movl	-3396(%rbp), %eax	# j, tmp494
	sarl	$8, %eax	#, D.5135
	movl	%eax, %edx	# D.5135, D.5135
	movl	-3400(%rbp), %eax	# i, tmp495
	cltq
	leaq	-2(%rax), %rcx	#, D.5137
	movq	-3424(%rbp), %rax	# block, tmp496
	addq	%rcx, %rax	# D.5137, D.5138
	movzbl	(%rax), %eax	# *_86, D.5134
	movzbl	%al, %eax	# D.5134, D.5135
	sall	$8, %eax	#, D.5135
	orl	%edx, %eax	# D.5135, tmp497
	movl	%eax, -3396(%rbp)	# tmp497, j
	.loc 1 830 0 discriminator 2
	movl	-3396(%rbp), %eax	# j, tmp498
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5132
	movq	-3440(%rbp), %rax	# ftab, tmp499
	addq	%rdx, %rax	# D.5132, D.5133
	movl	(%rax), %edx	# *_93, D.5139
	addl	$1, %edx	#, D.5139
	movl	%edx, (%rax)	# D.5139, *_93
	.loc 1 831 0 discriminator 2
	movl	-3400(%rbp), %eax	# i, tmp500
	cltq
	addq	%rax, %rax	# D.5132
	leaq	-6(%rax), %rdx	#, D.5137
	movq	-3432(%rbp), %rax	# quadrant, tmp501
	addq	%rdx, %rax	# D.5137, D.5136
	movw	$0, (%rax)	#, *_99
	.loc 1 832 0 discriminator 2
	movl	-3396(%rbp), %eax	# j, tmp502
	sarl	$8, %eax	#, D.5135
	movl	%eax, %edx	# D.5135, D.5135
	movl	-3400(%rbp), %eax	# i, tmp503
	cltq
	leaq	-3(%rax), %rcx	#, D.5137
	movq	-3424(%rbp), %rax	# block, tmp504
	addq	%rcx, %rax	# D.5137, D.5138
	movzbl	(%rax), %eax	# *_103, D.5134
	movzbl	%al, %eax	# D.5134, D.5135
	sall	$8, %eax	#, D.5135
	orl	%edx, %eax	# D.5135, tmp505
	movl	%eax, -3396(%rbp)	# tmp505, j
	.loc 1 833 0 discriminator 2
	movl	-3396(%rbp), %eax	# j, tmp506
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5132
	movq	-3440(%rbp), %rax	# ftab, tmp507
	addq	%rdx, %rax	# D.5132, D.5133
	movl	(%rax), %edx	# *_110, D.5139
	addl	$1, %edx	#, D.5139
	movl	%edx, (%rax)	# D.5139, *_110
	.loc 1 821 0 discriminator 2
	subl	$4, -3400(%rbp)	#, i
.L192:
	.loc 1 821 0 is_stmt 0 discriminator 1
	cmpl	$2, -3400(%rbp)	#, i
	jg	.L193	#,
	.loc 1 835 0 is_stmt 1
	jmp	.L194	#
.L195:
	.loc 1 836 0 discriminator 2
	movl	-3400(%rbp), %eax	# i, tmp508
	cltq
	leaq	(%rax,%rax), %rdx	#, D.5132
	movq	-3432(%rbp), %rax	# quadrant, tmp509
	addq	%rdx, %rax	# D.5132, D.5136
	movw	$0, (%rax)	#, *_116
	.loc 1 837 0 discriminator 2
	movl	-3396(%rbp), %eax	# j, tmp510
	sarl	$8, %eax	#, D.5135
	movl	%eax, %ecx	# D.5135, D.5135
	movl	-3400(%rbp), %eax	# i, tmp511
	movslq	%eax, %rdx	# tmp511, D.5137
	movq	-3424(%rbp), %rax	# block, tmp512
	addq	%rdx, %rax	# D.5137, D.5138
	movzbl	(%rax), %eax	# *_119, D.5134
	movzbl	%al, %eax	# D.5134, D.5135
	sall	$8, %eax	#, D.5135
	orl	%ecx, %eax	# D.5135, tmp513
	movl	%eax, -3396(%rbp)	# tmp513, j
	.loc 1 838 0 discriminator 2
	movl	-3396(%rbp), %eax	# j, tmp514
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5132
	movq	-3440(%rbp), %rax	# ftab, tmp515
	addq	%rdx, %rax	# D.5132, D.5133
	movl	(%rax), %edx	# *_126, D.5139
	addl	$1, %edx	#, D.5139
	movl	%edx, (%rax)	# D.5139, *_126
	.loc 1 835 0 discriminator 2
	subl	$1, -3400(%rbp)	#, i
.L194:
	.loc 1 835 0 is_stmt 0 discriminator 1
	cmpl	$0, -3400(%rbp)	#, i
	jns	.L195	#,
	.loc 1 842 0 is_stmt 1
	movl	$0, -3400(%rbp)	#, i
	jmp	.L196	#
.L197:
	.loc 1 843 0 discriminator 2
	movl	-3400(%rbp), %eax	# i, tmp516
	movl	-3444(%rbp), %edx	# nblock, tmp517
	addl	%edx, %eax	# tmp517, D.5135
	movslq	%eax, %rdx	# D.5135, D.5137
	movq	-3424(%rbp), %rax	# block, tmp518
	addq	%rax, %rdx	# tmp518, D.5138
	movl	-3400(%rbp), %eax	# i, tmp519
	movslq	%eax, %rcx	# tmp519, D.5137
	movq	-3424(%rbp), %rax	# block, tmp520
	addq	%rcx, %rax	# D.5137, D.5138
	movzbl	(%rax), %eax	# *_135, D.5134
	movb	%al, (%rdx)	# D.5134, *_133
	.loc 1 844 0 discriminator 2
	movl	-3400(%rbp), %eax	# i, tmp521
	movl	-3444(%rbp), %edx	# nblock, tmp522
	addl	%edx, %eax	# tmp522, D.5135
	cltq
	leaq	(%rax,%rax), %rdx	#, D.5132
	movq	-3432(%rbp), %rax	# quadrant, tmp523
	addq	%rdx, %rax	# D.5132, D.5136
	movw	$0, (%rax)	#, *_140
	.loc 1 842 0 discriminator 2
	addl	$1, -3400(%rbp)	#, i
.L196:
	.loc 1 842 0 is_stmt 0 discriminator 1
	cmpl	$33, -3400(%rbp)	#, i
	jle	.L197	#,
	.loc 1 847 0 is_stmt 1
	cmpl	$3, -3448(%rbp)	#, verb
	jle	.L198	#,
	.loc 1 847 0 is_stmt 0 discriminator 1
	movq	stderr(%rip), %rax	# stderr, stderr.36
	movq	%rax, %rcx	# stderr.36,
	movl	$27, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC0, %edi	#,
	call	fwrite	#
.L198:
	.loc 1 850 0 is_stmt 1
	movl	$1, -3400(%rbp)	#, i
	jmp	.L199	#
.L200:
	.loc 1 850 0 is_stmt 0 discriminator 2
	movl	-3400(%rbp), %eax	# i, tmp524
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5132
	movq	-3440(%rbp), %rax	# ftab, tmp525
	addq	%rdx, %rax	# D.5132, D.5133
	movl	-3400(%rbp), %edx	# i, tmp526
	movslq	%edx, %rdx	# tmp526, D.5132
	leaq	0(,%rdx,4), %rcx	#, D.5132
	movq	-3440(%rbp), %rdx	# ftab, tmp527
	addq	%rcx, %rdx	# D.5132, D.5133
	movl	(%rdx), %ecx	# *_149, D.5139
	movl	-3400(%rbp), %edx	# i, tmp528
	movslq	%edx, %rdx	# tmp528, D.5132
	salq	$2, %rdx	#, D.5132
	leaq	-4(%rdx), %rsi	#, D.5137
	movq	-3440(%rbp), %rdx	# ftab, tmp529
	addq	%rsi, %rdx	# D.5137, D.5133
	movl	(%rdx), %edx	# *_154, D.5139
	addl	%ecx, %edx	# D.5139, D.5139
	movl	%edx, (%rax)	# D.5139, *_146
	addl	$1, -3400(%rbp)	#, i
.L199:
	.loc 1 850 0 discriminator 1
	cmpl	$65536, -3400(%rbp)	#, i
	jle	.L200	#,
	.loc 1 852 0 is_stmt 1
	movq	-3424(%rbp), %rax	# block, tmp530
	movzbl	(%rax), %eax	# *block_40(D), D.5134
	movzbl	%al, %eax	# D.5134, D.5140
	sall	$8, %eax	#, tmp531
	movw	%ax, -3404(%rbp)	# tmp531, s
	.loc 1 853 0
	movl	-3444(%rbp), %eax	# nblock, tmp535
	subl	$1, %eax	#, tmp534
	movl	%eax, -3400(%rbp)	# tmp534, i
	.loc 1 854 0
	jmp	.L201	#
.L202:
	.loc 1 855 0 discriminator 2
	movzwl	-3404(%rbp), %eax	# s, tmp536
	shrw	$8, %ax	#, D.5140
	movl	%eax, %edx	# D.5140, D.5141
	movl	-3400(%rbp), %eax	# i, tmp537
	movslq	%eax, %rcx	# tmp537, D.5137
	movq	-3424(%rbp), %rax	# block, tmp538
	addq	%rcx, %rax	# D.5137, D.5138
	movzbl	(%rax), %eax	# *_165, D.5134
	movzbl	%al, %eax	# D.5134, D.5135
	sall	$8, %eax	#, D.5135
	orl	%edx, %eax	# D.5141, D.5141
	movw	%ax, -3404(%rbp)	# D.5141, s
	.loc 1 856 0 discriminator 2
	movzwl	-3404(%rbp), %eax	# s, D.5132
	leaq	0(,%rax,4), %rdx	#, D.5132
	movq	-3440(%rbp), %rax	# ftab, tmp539
	addq	%rdx, %rax	# D.5132, D.5133
	movl	(%rax), %eax	# *_174, D.5139
	subl	$1, %eax	#, D.5139
	movl	%eax, -3396(%rbp)	# D.5139, j
	.loc 1 857 0 discriminator 2
	movzwl	-3404(%rbp), %eax	# s, D.5132
	leaq	0(,%rax,4), %rdx	#, D.5132
	movq	-3440(%rbp), %rax	# ftab, tmp540
	addq	%rax, %rdx	# tmp540, D.5133
	movl	-3396(%rbp), %eax	# j, j.37
	movl	%eax, (%rdx)	# j.37, *_180
	.loc 1 858 0 discriminator 2
	movl	-3396(%rbp), %eax	# j, tmp541
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5132
	movq	-3416(%rbp), %rax	# ptr, tmp542
	addq	%rax, %rdx	# tmp542, D.5133
	movl	-3400(%rbp), %eax	# i, i.38
	movl	%eax, (%rdx)	# i.38, *_185
	.loc 1 859 0 discriminator 2
	movzwl	-3404(%rbp), %eax	# s, tmp543
	shrw	$8, %ax	#, D.5140
	movl	%eax, %edx	# D.5140, D.5141
	movl	-3400(%rbp), %eax	# i, tmp544
	cltq
	leaq	-1(%rax), %rcx	#, D.5137
	movq	-3424(%rbp), %rax	# block, tmp545
	addq	%rcx, %rax	# D.5137, D.5138
	movzbl	(%rax), %eax	# *_191, D.5134
	movzbl	%al, %eax	# D.5134, D.5135
	sall	$8, %eax	#, D.5135
	orl	%edx, %eax	# D.5141, D.5141
	movw	%ax, -3404(%rbp)	# D.5141, s
	.loc 1 860 0 discriminator 2
	movzwl	-3404(%rbp), %eax	# s, D.5132
	leaq	0(,%rax,4), %rdx	#, D.5132
	movq	-3440(%rbp), %rax	# ftab, tmp546
	addq	%rdx, %rax	# D.5132, D.5133
	movl	(%rax), %eax	# *_200, D.5139
	subl	$1, %eax	#, D.5139
	movl	%eax, -3396(%rbp)	# D.5139, j
	.loc 1 861 0 discriminator 2
	movzwl	-3404(%rbp), %eax	# s, D.5132
	leaq	0(,%rax,4), %rdx	#, D.5132
	movq	-3440(%rbp), %rax	# ftab, tmp547
	addq	%rax, %rdx	# tmp547, D.5133
	movl	-3396(%rbp), %eax	# j, j.39
	movl	%eax, (%rdx)	# j.39, *_206
	.loc 1 862 0 discriminator 2
	movl	-3396(%rbp), %eax	# j, tmp548
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5132
	movq	-3416(%rbp), %rax	# ptr, tmp549
	addq	%rax, %rdx	# tmp549, D.5133
	movl	-3400(%rbp), %eax	# i, tmp550
	subl	$1, %eax	#, D.5135
	movl	%eax, (%rdx)	# D.5139, *_210
	.loc 1 863 0 discriminator 2
	movzwl	-3404(%rbp), %eax	# s, tmp551
	shrw	$8, %ax	#, D.5140
	movl	%eax, %edx	# D.5140, D.5141
	movl	-3400(%rbp), %eax	# i, tmp552
	cltq
	leaq	-2(%rax), %rcx	#, D.5137
	movq	-3424(%rbp), %rax	# block, tmp553
	addq	%rcx, %rax	# D.5137, D.5138
	movzbl	(%rax), %eax	# *_217, D.5134
	movzbl	%al, %eax	# D.5134, D.5135
	sall	$8, %eax	#, D.5135
	orl	%edx, %eax	# D.5141, D.5141
	movw	%ax, -3404(%rbp)	# D.5141, s
	.loc 1 864 0 discriminator 2
	movzwl	-3404(%rbp), %eax	# s, D.5132
	leaq	0(,%rax,4), %rdx	#, D.5132
	movq	-3440(%rbp), %rax	# ftab, tmp554
	addq	%rdx, %rax	# D.5132, D.5133
	movl	(%rax), %eax	# *_226, D.5139
	subl	$1, %eax	#, D.5139
	movl	%eax, -3396(%rbp)	# D.5139, j
	.loc 1 865 0 discriminator 2
	movzwl	-3404(%rbp), %eax	# s, D.5132
	leaq	0(,%rax,4), %rdx	#, D.5132
	movq	-3440(%rbp), %rax	# ftab, tmp555
	addq	%rax, %rdx	# tmp555, D.5133
	movl	-3396(%rbp), %eax	# j, j.40
	movl	%eax, (%rdx)	# j.40, *_232
	.loc 1 866 0 discriminator 2
	movl	-3396(%rbp), %eax	# j, tmp556
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5132
	movq	-3416(%rbp), %rax	# ptr, tmp557
	addq	%rax, %rdx	# tmp557, D.5133
	movl	-3400(%rbp), %eax	# i, tmp558
	subl	$2, %eax	#, D.5135
	movl	%eax, (%rdx)	# D.5139, *_236
	.loc 1 867 0 discriminator 2
	movzwl	-3404(%rbp), %eax	# s, tmp559
	shrw	$8, %ax	#, D.5140
	movl	%eax, %edx	# D.5140, D.5141
	movl	-3400(%rbp), %eax	# i, tmp560
	cltq
	leaq	-3(%rax), %rcx	#, D.5137
	movq	-3424(%rbp), %rax	# block, tmp561
	addq	%rcx, %rax	# D.5137, D.5138
	movzbl	(%rax), %eax	# *_243, D.5134
	movzbl	%al, %eax	# D.5134, D.5135
	sall	$8, %eax	#, D.5135
	orl	%edx, %eax	# D.5141, D.5141
	movw	%ax, -3404(%rbp)	# D.5141, s
	.loc 1 868 0 discriminator 2
	movzwl	-3404(%rbp), %eax	# s, D.5132
	leaq	0(,%rax,4), %rdx	#, D.5132
	movq	-3440(%rbp), %rax	# ftab, tmp562
	addq	%rdx, %rax	# D.5132, D.5133
	movl	(%rax), %eax	# *_252, D.5139
	subl	$1, %eax	#, D.5139
	movl	%eax, -3396(%rbp)	# D.5139, j
	.loc 1 869 0 discriminator 2
	movzwl	-3404(%rbp), %eax	# s, D.5132
	leaq	0(,%rax,4), %rdx	#, D.5132
	movq	-3440(%rbp), %rax	# ftab, tmp563
	addq	%rax, %rdx	# tmp563, D.5133
	movl	-3396(%rbp), %eax	# j, j.41
	movl	%eax, (%rdx)	# j.41, *_258
	.loc 1 870 0 discriminator 2
	movl	-3396(%rbp), %eax	# j, tmp564
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5132
	movq	-3416(%rbp), %rax	# ptr, tmp565
	addq	%rax, %rdx	# tmp565, D.5133
	movl	-3400(%rbp), %eax	# i, tmp566
	subl	$3, %eax	#, D.5135
	movl	%eax, (%rdx)	# D.5139, *_262
	.loc 1 854 0 discriminator 2
	subl	$4, -3400(%rbp)	#, i
.L201:
	.loc 1 854 0 is_stmt 0 discriminator 1
	cmpl	$2, -3400(%rbp)	#, i
	jg	.L202	#,
	.loc 1 872 0 is_stmt 1
	jmp	.L203	#
.L204:
	.loc 1 873 0 discriminator 2
	movzwl	-3404(%rbp), %eax	# s, tmp567
	shrw	$8, %ax	#, D.5140
	movl	%eax, %edx	# D.5140, D.5141
	movl	-3400(%rbp), %eax	# i, tmp568
	movslq	%eax, %rcx	# tmp568, D.5137
	movq	-3424(%rbp), %rax	# block, tmp569
	addq	%rcx, %rax	# D.5137, D.5138
	movzbl	(%rax), %eax	# *_269, D.5134
	movzbl	%al, %eax	# D.5134, D.5135
	sall	$8, %eax	#, D.5135
	orl	%edx, %eax	# D.5141, D.5141
	movw	%ax, -3404(%rbp)	# D.5141, s
	.loc 1 874 0 discriminator 2
	movzwl	-3404(%rbp), %eax	# s, D.5132
	leaq	0(,%rax,4), %rdx	#, D.5132
	movq	-3440(%rbp), %rax	# ftab, tmp570
	addq	%rdx, %rax	# D.5132, D.5133
	movl	(%rax), %eax	# *_278, D.5139
	subl	$1, %eax	#, D.5139
	movl	%eax, -3396(%rbp)	# D.5139, j
	.loc 1 875 0 discriminator 2
	movzwl	-3404(%rbp), %eax	# s, D.5132
	leaq	0(,%rax,4), %rdx	#, D.5132
	movq	-3440(%rbp), %rax	# ftab, tmp571
	addq	%rax, %rdx	# tmp571, D.5133
	movl	-3396(%rbp), %eax	# j, j.42
	movl	%eax, (%rdx)	# j.42, *_284
	.loc 1 876 0 discriminator 2
	movl	-3396(%rbp), %eax	# j, tmp572
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5132
	movq	-3416(%rbp), %rax	# ptr, tmp573
	addq	%rax, %rdx	# tmp573, D.5133
	movl	-3400(%rbp), %eax	# i, i.43
	movl	%eax, (%rdx)	# i.43, *_288
	.loc 1 872 0 discriminator 2
	subl	$1, -3400(%rbp)	#, i
.L203:
	.loc 1 872 0 is_stmt 0 discriminator 1
	cmpl	$0, -3400(%rbp)	#, i
	jns	.L204	#,
	.loc 1 884 0 is_stmt 1
	movl	$0, -3400(%rbp)	#, i
	jmp	.L205	#
.L206:
	.loc 1 885 0 discriminator 2
	movl	-3400(%rbp), %eax	# i, tmp575
	cltq
	movb	$0, -272(%rbp,%rax)	#, bigDone
	.loc 1 886 0 discriminator 2
	movl	-3400(%rbp), %eax	# i, tmp577
	cltq
	movl	-3400(%rbp), %edx	# i, tmp578
	movl	%edx, -3344(%rbp,%rax,4)	# tmp578, runningOrder
	.loc 1 884 0 discriminator 2
	addl	$1, -3400(%rbp)	#, i
.L205:
	.loc 1 884 0 is_stmt 0 discriminator 1
	cmpl	$255, -3400(%rbp)	#, i
	jle	.L206	#,
.LBB19:
	.loc 1 891 0 is_stmt 1
	movl	$1, -3384(%rbp)	#, h
.L207:
	.loc 1 892 0 discriminator 1
	movl	-3384(%rbp), %edx	# h, tmp579
	movl	%edx, %eax	# tmp579, tmp580
	addl	%eax, %eax	# tmp580
	addl	%edx, %eax	# tmp579, D.5135
	addl	$1, %eax	#, tmp581
	movl	%eax, -3384(%rbp)	# tmp581, h
	cmpl	$256, -3384(%rbp)	#, h
	jle	.L207	#,
.L213:
	.loc 1 894 0
	movl	-3384(%rbp), %ecx	# h, tmp583
	movl	$1431655766, %edx	#, tmp585
	movl	%ecx, %eax	# tmp583, tmp736
	imull	%edx	# tmp585
	movl	%ecx, %eax	# tmp583, tmp586
	sarl	$31, %eax	#, tmp586
	subl	%eax, %edx	# tmp586, tmp582
	movl	%edx, %eax	# tmp582, tmp582
	movl	%eax, -3384(%rbp)	# tmp582, h
	.loc 1 895 0
	movl	-3384(%rbp), %eax	# h, tmp587
	movl	%eax, -3400(%rbp)	# tmp587, i
	jmp	.L208	#
.L212:
	.loc 1 896 0
	movl	-3400(%rbp), %eax	# i, tmp589
	cltq
	movl	-3344(%rbp,%rax,4), %eax	# runningOrder, tmp590
	movl	%eax, -3376(%rbp)	# tmp590, vv
	.loc 1 897 0
	movl	-3400(%rbp), %eax	# i, tmp591
	movl	%eax, -3396(%rbp)	# tmp591, j
	.loc 1 898 0
	jmp	.L209	#
.L211:
	.loc 1 899 0
	movl	-3384(%rbp), %eax	# h, tmp592
	movl	-3396(%rbp), %edx	# j, tmp593
	subl	%eax, %edx	# tmp592, D.5135
	movl	%edx, %eax	# D.5135, D.5135
	cltq
	movl	-3344(%rbp,%rax,4), %edx	# runningOrder, D.5135
	movl	-3396(%rbp), %eax	# j, tmp596
	cltq
	movl	%edx, -3344(%rbp,%rax,4)	# D.5135, runningOrder
	.loc 1 900 0
	movl	-3384(%rbp), %eax	# h, tmp597
	subl	%eax, -3396(%rbp)	# tmp597, j
	.loc 1 901 0
	movl	-3384(%rbp), %eax	# h, tmp598
	subl	$1, %eax	#, D.5135
	cmpl	-3396(%rbp), %eax	# j, D.5135
	jl	.L209	#,
	.loc 1 901 0 is_stmt 0 discriminator 1
	jmp	.L210	#
.L209:
	.loc 1 898 0 is_stmt 1 discriminator 1
	movl	-3384(%rbp), %eax	# h, tmp599
	movl	-3396(%rbp), %edx	# j, tmp600
	subl	%eax, %edx	# tmp599, D.5135
	movl	%edx, %eax	# D.5135, D.5135
	cltq
	movl	-3344(%rbp,%rax,4), %eax	# runningOrder, D.5135
	addl	$1, %eax	#, D.5135
	sall	$8, %eax	#, D.5135
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5132
	movq	-3440(%rbp), %rax	# ftab, tmp602
	addq	%rdx, %rax	# D.5132, D.5133
	movl	(%rax), %edx	# *_306, D.5139
	movl	-3384(%rbp), %eax	# h, tmp603
	movl	-3396(%rbp), %ecx	# j, tmp604
	subl	%eax, %ecx	# tmp603, D.5135
	movl	%ecx, %eax	# D.5135, D.5135
	cltq
	movl	-3344(%rbp,%rax,4), %eax	# runningOrder, D.5135
	sall	$8, %eax	#, D.5135
	cltq
	leaq	0(,%rax,4), %rcx	#, D.5132
	movq	-3440(%rbp), %rax	# ftab, tmp606
	addq	%rcx, %rax	# D.5132, D.5133
	movl	(%rax), %eax	# *_313, D.5139
	movl	%edx, %ecx	# D.5139, D.5139
	subl	%eax, %ecx	# D.5139, D.5139
	movl	-3376(%rbp), %eax	# vv, tmp607
	addl	$1, %eax	#, D.5135
	sall	$8, %eax	#, D.5135
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5132
	movq	-3440(%rbp), %rax	# ftab, tmp608
	addq	%rdx, %rax	# D.5132, D.5133
	movl	(%rax), %edx	# *_320, D.5139
	movl	-3376(%rbp), %eax	# vv, tmp609
	sall	$8, %eax	#, D.5135
	cltq
	leaq	0(,%rax,4), %rsi	#, D.5132
	movq	-3440(%rbp), %rax	# ftab, tmp610
	addq	%rsi, %rax	# D.5132, D.5133
	movl	(%rax), %eax	# *_325, D.5139
	subl	%eax, %edx	# D.5139, D.5139
	movl	%edx, %eax	# D.5139, D.5139
	cmpl	%eax, %ecx	# D.5139, D.5139
	ja	.L211	#,
.L210:
	.loc 1 904 0
	movl	-3396(%rbp), %eax	# j, tmp612
	cltq
	movl	-3376(%rbp), %edx	# vv, tmp613
	movl	%edx, -3344(%rbp,%rax,4)	# tmp613, runningOrder
	.loc 1 895 0
	addl	$1, -3400(%rbp)	#, i
.L208:
	.loc 1 895 0 is_stmt 0 discriminator 1
	cmpl	$255, -3400(%rbp)	#, i
	jle	.L212	#,
	.loc 1 906 0 is_stmt 1
	cmpl	$1, -3384(%rbp)	#, h
	jne	.L213	#,
.LBE19:
	.loc 1 913 0
	movl	$0, -3388(%rbp)	#, numQSorted
	.loc 1 915 0
	movl	$0, -3400(%rbp)	#, i
	jmp	.L214	#
.L242:
	.loc 1 923 0
	movl	-3400(%rbp), %eax	# i, tmp615
	cltq
	movl	-3344(%rbp,%rax,4), %eax	# runningOrder, tmp616
	movl	%eax, -3372(%rbp)	# tmp616, ss
	.loc 1 933 0
	movl	$0, -3396(%rbp)	#, j
	jmp	.L215	#
.L220:
	.loc 1 934 0
	movl	-3396(%rbp), %eax	# j, tmp617
	cmpl	-3372(%rbp), %eax	# ss, tmp617
	je	.L216	#,
	.loc 1 935 0
	movl	-3372(%rbp), %eax	# ss, tmp618
	sall	$8, %eax	#, D.5135
	movl	%eax, %edx	# D.5135, D.5135
	movl	-3396(%rbp), %eax	# j, tmp622
	addl	%edx, %eax	# D.5135, tmp621
	movl	%eax, -3368(%rbp)	# tmp621, sb
	.loc 1 936 0
	movl	-3368(%rbp), %eax	# sb, tmp623
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5132
	movq	-3440(%rbp), %rax	# ftab, tmp624
	addq	%rdx, %rax	# D.5132, D.5133
	movl	(%rax), %eax	# *_341, D.5139
	andl	$2097152, %eax	#, D.5139
	testl	%eax, %eax	# D.5139
	jne	.L217	#,
.LBB20:
	.loc 1 937 0
	movl	-3368(%rbp), %eax	# sb, tmp625
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5132
	movq	-3440(%rbp), %rax	# ftab, tmp626
	addq	%rdx, %rax	# D.5132, D.5133
	movl	(%rax), %eax	# *_346, D.5139
	andl	$-2097153, %eax	#, tmp627
	movl	%eax, -3364(%rbp)	# tmp627, lo
	.loc 1 938 0
	movl	-3368(%rbp), %eax	# sb, tmp628
	cltq
	addq	$1, %rax	#, D.5137
	leaq	0(,%rax,4), %rdx	#, D.5137
	movq	-3440(%rbp), %rax	# ftab, tmp629
	addq	%rdx, %rax	# D.5137, D.5133
	movl	(%rax), %eax	# *_353, D.5139
	andl	$-2097153, %eax	#, D.5139
	subl	$1, %eax	#, D.5139
	movl	%eax, -3360(%rbp)	# D.5139, hi
	.loc 1 939 0
	movl	-3360(%rbp), %eax	# hi, tmp630
	cmpl	-3364(%rbp), %eax	# lo, tmp630
	jle	.L217	#,
	.loc 1 940 0
	cmpl	$3, -3448(%rbp)	#, verb
	jle	.L218	#,
	.loc 1 941 0
	movl	-3364(%rbp), %eax	# lo, tmp631
	movl	-3360(%rbp), %edx	# hi, tmp632
	subl	%eax, %edx	# tmp631, D.5135
	movl	%edx, %eax	# D.5135, D.5135
	leal	1(%rax), %edi	#, D.5135
	movl	-3396(%rbp), %ecx	# j, j.44
	movl	-3372(%rbp), %edx	# ss, ss.45
	movq	stderr(%rip), %rax	# stderr, stderr.46
	movl	-3388(%rbp), %esi	# numQSorted, tmp633
	movl	%edi, %r9d	# D.5135,
	movl	%esi, %r8d	# tmp633,
	movl	$.LC5, %esi	#,
	movq	%rax, %rdi	# stderr.46,
	movl	$0, %eax	#,
	call	fprintf	#
.L218:
	.loc 1 944 0
	movl	-3360(%rbp), %r9d	# hi, tmp634
	movl	-3364(%rbp), %r8d	# lo, tmp635
	movl	-3444(%rbp), %ecx	# nblock, tmp636
	movq	-3432(%rbp), %rdx	# quadrant, tmp637
	movq	-3424(%rbp), %rsi	# block, tmp638
	movq	-3416(%rbp), %rax	# ptr, tmp639
	movq	-3456(%rbp), %rdi	# budget, tmp640
	movq	%rdi, 8(%rsp)	# tmp640,
	movl	$2, (%rsp)	#,
	movq	%rax, %rdi	# tmp639,
	call	mainQSort3	#
	.loc 1 948 0
	movl	-3364(%rbp), %eax	# lo, tmp641
	movl	-3360(%rbp), %edx	# hi, tmp642
	subl	%eax, %edx	# tmp641, D.5135
	movl	%edx, %eax	# D.5135, D.5135
	addl	$1, %eax	#, D.5135
	addl	%eax, -3388(%rbp)	# D.5135, numQSorted
	.loc 1 949 0
	movq	-3456(%rbp), %rax	# budget, tmp643
	movl	(%rax), %eax	# *budget_363(D), D.5135
	testl	%eax, %eax	# D.5135
	jns	.L217	#,
	.loc 1 949 0 is_stmt 0 discriminator 1
	jmp	.L188	#
.L217:
.LBE20:
	.loc 1 952 0 is_stmt 1
	movl	-3368(%rbp), %eax	# sb, tmp644
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5132
	movq	-3440(%rbp), %rax	# ftab, tmp645
	addq	%rdx, %rax	# D.5132, D.5133
	movl	-3368(%rbp), %edx	# sb, tmp646
	movslq	%edx, %rdx	# tmp646, D.5132
	leaq	0(,%rdx,4), %rcx	#, D.5132
	movq	-3440(%rbp), %rdx	# ftab, tmp647
	addq	%rcx, %rdx	# D.5132, D.5133
	movl	(%rdx), %edx	# *_373, D.5139
	orl	$2097152, %edx	#, D.5139
	movl	%edx, (%rax)	# D.5139, *_370
.L216:
	.loc 1 933 0
	addl	$1, -3396(%rbp)	#, j
.L215:
	.loc 1 933 0 is_stmt 0 discriminator 1
	cmpl	$255, -3396(%rbp)	#, j
	jle	.L220	#,
	.loc 1 956 0 is_stmt 1
	movl	-3372(%rbp), %eax	# ss, tmp649
	cltq
	movzbl	-272(%rbp,%rax), %eax	# bigDone, D.5134
	testb	%al, %al	# D.5134
	je	.L221	#,
	.loc 1 956 0 is_stmt 0 discriminator 1
	movl	$1006, %edi	#,
	call	BZ2_bz__AssertH__fail	#
.L221:
	.loc 1 966 0 is_stmt 1
	movl	$0, -3396(%rbp)	#, j
	jmp	.L222	#
.L223:
	.loc 1 967 0 discriminator 2
	movl	-3396(%rbp), %eax	# j, tmp650
	sall	$8, %eax	#, D.5135
	movl	%eax, %edx	# D.5135, D.5135
	movl	-3372(%rbp), %eax	# ss, tmp651
	addl	%edx, %eax	# D.5135, D.5135
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5132
	movq	-3440(%rbp), %rax	# ftab, tmp652
	addq	%rdx, %rax	# D.5132, D.5133
	movl	(%rax), %eax	# *_383, D.5139
	andl	$-2097153, %eax	#, D.5135
	movl	%eax, %edx	# D.5135, D.5135
	movl	-3396(%rbp), %eax	# j, tmp654
	cltq
	movl	%edx, -2320(%rbp,%rax,4)	# D.5135, copyStart
	.loc 1 968 0 discriminator 2
	movl	-3396(%rbp), %eax	# j, tmp655
	sall	$8, %eax	#, D.5135
	movl	%eax, %edx	# D.5135, D.5135
	movl	-3372(%rbp), %eax	# ss, tmp656
	addl	%edx, %eax	# D.5135, D.5135
	cltq
	addq	$1, %rax	#, D.5137
	leaq	0(,%rax,4), %rdx	#, D.5137
	movq	-3440(%rbp), %rax	# ftab, tmp657
	addq	%rdx, %rax	# D.5137, D.5133
	movl	(%rax), %eax	# *_392, D.5139
	andl	$-2097153, %eax	#, D.5139
	subl	$1, %eax	#, D.5139
	movl	%eax, %edx	# D.5139, D.5135
	movl	-3396(%rbp), %eax	# j, tmp659
	cltq
	movl	%edx, -1296(%rbp,%rax,4)	# D.5135, copyEnd
	.loc 1 966 0 discriminator 2
	addl	$1, -3396(%rbp)	#, j
.L222:
	.loc 1 966 0 is_stmt 0 discriminator 1
	cmpl	$255, -3396(%rbp)	#, j
	jle	.L223	#,
	.loc 1 970 0 is_stmt 1
	movl	-3372(%rbp), %eax	# ss, tmp660
	sall	$8, %eax	#, D.5135
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5132
	movq	-3440(%rbp), %rax	# ftab, tmp661
	addq	%rdx, %rax	# D.5132, D.5133
	movl	(%rax), %eax	# *_401, D.5139
	andl	$-2097153, %eax	#, tmp662
	movl	%eax, -3396(%rbp)	# tmp662, j
	jmp	.L224	#
.L227:
	.loc 1 971 0
	movl	-3396(%rbp), %eax	# j, tmp663
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5132
	movq	-3416(%rbp), %rax	# ptr, tmp664
	addq	%rdx, %rax	# D.5132, D.5133
	movl	(%rax), %eax	# *_408, D.5139
	subl	$1, %eax	#, D.5139
	movl	%eax, -3392(%rbp)	# D.5139, k
	cmpl	$0, -3392(%rbp)	#, k
	jns	.L225	#,
	.loc 1 971 0 is_stmt 0 discriminator 1
	movl	-3444(%rbp), %eax	# nblock, tmp665
	addl	%eax, -3392(%rbp)	# tmp665, k
.L225:
	.loc 1 972 0 is_stmt 1
	movl	-3392(%rbp), %eax	# k, tmp666
	movslq	%eax, %rdx	# tmp666, D.5137
	movq	-3424(%rbp), %rax	# block, tmp667
	addq	%rdx, %rax	# D.5137, D.5138
	movzbl	(%rax), %eax	# *_414, tmp668
	movb	%al, -3405(%rbp)	# tmp668, c1
	.loc 1 973 0
	movzbl	-3405(%rbp), %eax	# c1, D.5135
	cltq
	movzbl	-272(%rbp,%rax), %eax	# bigDone, D.5134
	testb	%al, %al	# D.5134
	jne	.L226	#,
	.loc 1 974 0
	movzbl	-3405(%rbp), %edx	# c1, D.5135
	movslq	%edx, %rax	# D.5135, tmp670
	movl	-2320(%rbp,%rax,4), %eax	# copyStart, D.5135
	leal	1(%rax), %ecx	#, D.5135
	movslq	%edx, %rdx	# D.5135, tmp671
	movl	%ecx, -2320(%rbp,%rdx,4)	# D.5135, copyStart
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5132
	movq	-3416(%rbp), %rax	# ptr, tmp672
	addq	%rax, %rdx	# tmp672, D.5133
	movl	-3392(%rbp), %eax	# k, k.47
	movl	%eax, (%rdx)	# k.47, *_424
.L226:
	.loc 1 970 0
	addl	$1, -3396(%rbp)	#, j
.L224:
	.loc 1 970 0 is_stmt 0 discriminator 1
	movl	-3372(%rbp), %eax	# ss, tmp674
	cltq
	movl	-2320(%rbp,%rax,4), %eax	# copyStart, D.5135
	cmpl	-3396(%rbp), %eax	# j, D.5135
	jg	.L227	#,
	.loc 1 976 0 is_stmt 1
	movl	-3372(%rbp), %eax	# ss, tmp675
	addl	$1, %eax	#, D.5135
	sall	$8, %eax	#, D.5135
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5132
	movq	-3440(%rbp), %rax	# ftab, tmp676
	addq	%rdx, %rax	# D.5132, D.5133
	movl	(%rax), %eax	# *_431, D.5139
	andl	$-2097153, %eax	#, D.5139
	subl	$1, %eax	#, D.5139
	movl	%eax, -3396(%rbp)	# D.5139, j
	jmp	.L228	#
.L231:
	.loc 1 977 0
	movl	-3396(%rbp), %eax	# j, tmp677
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5132
	movq	-3416(%rbp), %rax	# ptr, tmp678
	addq	%rdx, %rax	# D.5132, D.5133
	movl	(%rax), %eax	# *_439, D.5139
	subl	$1, %eax	#, D.5139
	movl	%eax, -3392(%rbp)	# D.5139, k
	cmpl	$0, -3392(%rbp)	#, k
	jns	.L229	#,
	.loc 1 977 0 is_stmt 0 discriminator 1
	movl	-3444(%rbp), %eax	# nblock, tmp679
	addl	%eax, -3392(%rbp)	# tmp679, k
.L229:
	.loc 1 978 0 is_stmt 1
	movl	-3392(%rbp), %eax	# k, tmp680
	movslq	%eax, %rdx	# tmp680, D.5137
	movq	-3424(%rbp), %rax	# block, tmp681
	addq	%rdx, %rax	# D.5137, D.5138
	movzbl	(%rax), %eax	# *_445, tmp682
	movb	%al, -3405(%rbp)	# tmp682, c1
	.loc 1 979 0
	movzbl	-3405(%rbp), %eax	# c1, D.5135
	cltq
	movzbl	-272(%rbp,%rax), %eax	# bigDone, D.5134
	testb	%al, %al	# D.5134
	jne	.L230	#,
	.loc 1 980 0
	movzbl	-3405(%rbp), %edx	# c1, D.5135
	movslq	%edx, %rax	# D.5135, tmp684
	movl	-1296(%rbp,%rax,4), %eax	# copyEnd, D.5135
	leal	-1(%rax), %ecx	#, D.5135
	movslq	%edx, %rdx	# D.5135, tmp685
	movl	%ecx, -1296(%rbp,%rdx,4)	# D.5135, copyEnd
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5132
	movq	-3416(%rbp), %rax	# ptr, tmp686
	addq	%rax, %rdx	# tmp686, D.5133
	movl	-3392(%rbp), %eax	# k, k.48
	movl	%eax, (%rdx)	# k.48, *_455
.L230:
	.loc 1 976 0
	subl	$1, -3396(%rbp)	#, j
.L228:
	.loc 1 976 0 is_stmt 0 discriminator 1
	movl	-3372(%rbp), %eax	# ss, tmp688
	cltq
	movl	-1296(%rbp,%rax,4), %eax	# copyEnd, D.5135
	cmpl	-3396(%rbp), %eax	# j, D.5135
	jl	.L231	#,
	.loc 1 984 0 is_stmt 1
	movl	-3372(%rbp), %eax	# ss, tmp690
	cltq
	movl	-2320(%rbp,%rax,4), %eax	# copyStart, D.5135
	leal	-1(%rax), %edx	#, D.5135
	movl	-3372(%rbp), %eax	# ss, tmp692
	cltq
	movl	-1296(%rbp,%rax,4), %eax	# copyEnd, D.5135
	cmpl	%eax, %edx	# D.5135, D.5135
	je	.L232	#,
	.loc 1 984 0 is_stmt 0 discriminator 1
	movl	-3372(%rbp), %eax	# ss, tmp694
	cltq
	movl	-2320(%rbp,%rax,4), %eax	# copyStart, D.5135
	testl	%eax, %eax	# D.5135
	jne	.L233	#,
	.loc 1 984 0 discriminator 2
	movl	-3372(%rbp), %eax	# ss, tmp696
	cltq
	movl	-1296(%rbp,%rax,4), %eax	# copyEnd, D.5135
	movl	-3444(%rbp), %edx	# nblock, tmp697
	subl	$1, %edx	#, D.5135
	cmpl	%edx, %eax	# D.5135, D.5135
	je	.L232	#,
.L233:
	.loc 1 984 0 discriminator 1
	movl	$1007, %edi	#,
	call	BZ2_bz__AssertH__fail	#
.L232:
	.loc 1 993 0 is_stmt 1
	movl	$0, -3396(%rbp)	#, j
	jmp	.L234	#
.L235:
	.loc 1 993 0 is_stmt 0 discriminator 2
	movl	-3396(%rbp), %eax	# j, tmp698
	sall	$8, %eax	#, D.5135
	movl	%eax, %edx	# D.5135, D.5135
	movl	-3372(%rbp), %eax	# ss, tmp699
	addl	%edx, %eax	# D.5135, D.5135
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5132
	movq	-3440(%rbp), %rax	# ftab, tmp700
	addq	%rdx, %rax	# D.5132, D.5133
	movl	-3396(%rbp), %edx	# j, tmp701
	movl	%edx, %ecx	# tmp701, D.5135
	sall	$8, %ecx	#, D.5135
	movl	-3372(%rbp), %edx	# ss, tmp702
	addl	%ecx, %edx	# D.5135, D.5135
	movslq	%edx, %rdx	# D.5135, D.5132
	leaq	0(,%rdx,4), %rcx	#, D.5132
	movq	-3440(%rbp), %rdx	# ftab, tmp703
	addq	%rcx, %rdx	# D.5132, D.5133
	movl	(%rdx), %edx	# *_474, D.5139
	orl	$2097152, %edx	#, D.5139
	movl	%edx, (%rax)	# D.5139, *_469
	addl	$1, -3396(%rbp)	#, j
.L234:
	.loc 1 993 0 discriminator 1
	cmpl	$255, -3396(%rbp)	#, j
	jle	.L235	#,
	.loc 1 1034 0 is_stmt 1
	movl	-3372(%rbp), %eax	# ss, tmp705
	cltq
	movb	$1, -272(%rbp,%rax)	#, bigDone
	.loc 1 1036 0
	cmpl	$254, -3400(%rbp)	#, i
	jg	.L236	#,
.LBB21:
	.loc 1 1037 0
	movl	-3372(%rbp), %eax	# ss, tmp706
	sall	$8, %eax	#, D.5135
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5132
	movq	-3440(%rbp), %rax	# ftab, tmp707
	addq	%rdx, %rax	# D.5132, D.5133
	movl	(%rax), %eax	# *_481, D.5139
	andl	$-2097153, %eax	#, tmp708
	movl	%eax, -3356(%rbp)	# tmp708, bbStart
	.loc 1 1038 0
	movl	-3372(%rbp), %eax	# ss, tmp709
	addl	$1, %eax	#, D.5135
	sall	$8, %eax	#, D.5135
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5132
	movq	-3440(%rbp), %rax	# ftab, tmp710
	addq	%rdx, %rax	# D.5132, D.5133
	movl	(%rax), %eax	# *_489, D.5139
	andl	$-2097153, %eax	#, D.5139
	movl	%eax, %edx	# D.5139, D.5139
	movl	-3356(%rbp), %eax	# bbStart, bbStart.49
	subl	%eax, %edx	# bbStart.49, D.5139
	movl	%edx, %eax	# D.5139, D.5139
	movl	%eax, -3352(%rbp)	# D.5139, bbSize
	.loc 1 1039 0
	movl	$0, -3380(%rbp)	#, shifts
	.loc 1 1041 0
	jmp	.L237	#
.L238:
	.loc 1 1041 0 is_stmt 0 discriminator 2
	addl	$1, -3380(%rbp)	#, shifts
.L237:
	.loc 1 1041 0 discriminator 1
	movl	-3380(%rbp), %eax	# shifts, tmp711
	movl	-3352(%rbp), %edx	# bbSize, tmp712
	movl	%eax, %ecx	# tmp711, tmp762
	sarl	%cl, %edx	# tmp762, D.5135
	movl	%edx, %eax	# D.5135, D.5135
	cmpl	$65534, %eax	#, D.5135
	jg	.L238	#,
	.loc 1 1043 0 is_stmt 1
	movl	-3352(%rbp), %eax	# bbSize, tmp716
	subl	$1, %eax	#, tmp715
	movl	%eax, -3396(%rbp)	# tmp715, j
	jmp	.L239	#
.L241:
.LBB22:
	.loc 1 1044 0
	movl	-3396(%rbp), %eax	# j, tmp717
	movl	-3356(%rbp), %edx	# bbStart, tmp718
	addl	%edx, %eax	# tmp718, D.5135
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5132
	movq	-3416(%rbp), %rax	# ptr, tmp719
	addq	%rdx, %rax	# D.5132, D.5133
	movl	(%rax), %eax	# *_502, D.5139
	movl	%eax, -3348(%rbp)	# D.5139, a2update
	.loc 1 1045 0
	movl	-3380(%rbp), %eax	# shifts, tmp720
	movl	-3396(%rbp), %edx	# j, tmp721
	movl	%eax, %ecx	# tmp720, tmp764
	sarl	%cl, %edx	# tmp764, D.5135
	movl	%edx, %eax	# D.5135, D.5135
	movw	%ax, -3402(%rbp)	# D.5135, qVal
	.loc 1 1046 0
	movl	-3348(%rbp), %eax	# a2update, tmp722
	cltq
	leaq	(%rax,%rax), %rdx	#, D.5132
	movq	-3432(%rbp), %rax	# quadrant, tmp723
	addq	%rax, %rdx	# tmp723, D.5136
	movzwl	-3402(%rbp), %eax	# qVal, tmp724
	movw	%ax, (%rdx)	# tmp724, *_509
	.loc 1 1047 0
	cmpl	$33, -3348(%rbp)	#, a2update
	jg	.L240	#,
	.loc 1 1048 0
	movl	-3444(%rbp), %eax	# nblock, tmp725
	movl	-3348(%rbp), %edx	# a2update, tmp726
	addl	%edx, %eax	# tmp726, D.5135
	cltq
	leaq	(%rax,%rax), %rdx	#, D.5132
	movq	-3432(%rbp), %rax	# quadrant, tmp727
	addq	%rax, %rdx	# tmp727, D.5136
	movzwl	-3402(%rbp), %eax	# qVal, tmp728
	movw	%ax, (%rdx)	# tmp728, *_513
.L240:
.LBE22:
	.loc 1 1043 0
	subl	$1, -3396(%rbp)	#, j
.L239:
	.loc 1 1043 0 is_stmt 0 discriminator 1
	cmpl	$0, -3396(%rbp)	#, j
	jns	.L241	#,
	.loc 1 1050 0 is_stmt 1
	movl	-3352(%rbp), %eax	# bbSize, tmp729
	leal	-1(%rax), %edx	#, D.5135
	movl	-3380(%rbp), %eax	# shifts, tmp730
	movl	%eax, %ecx	# tmp730, tmp766
	sarl	%cl, %edx	# tmp766, D.5135
	movl	%edx, %eax	# D.5135, D.5135
	cmpl	$65535, %eax	#, D.5135
	jle	.L236	#,
	.loc 1 1050 0 is_stmt 0 discriminator 1
	movl	$1002, %edi	#,
	call	BZ2_bz__AssertH__fail	#
.L236:
.LBE21:
	.loc 1 915 0 is_stmt 1
	addl	$1, -3400(%rbp)	#, i
.L214:
	.loc 1 915 0 is_stmt 0 discriminator 1
	cmpl	$255, -3400(%rbp)	#, i
	jle	.L242	#,
	.loc 1 1055 0 is_stmt 1
	cmpl	$3, -3448(%rbp)	#, verb
	jle	.L188	#,
	.loc 1 1056 0
	movl	-3388(%rbp), %eax	# numQSorted, tmp731
	movl	-3444(%rbp), %edx	# nblock, tmp732
	movl	%edx, %esi	# tmp732, D.5135
	subl	%eax, %esi	# tmp731, D.5135
	movq	stderr(%rip), %rax	# stderr, stderr.50
	movl	-3388(%rbp), %ecx	# numQSorted, tmp733
	movl	-3444(%rbp), %edx	# nblock, tmp734
	movl	%esi, %r8d	# D.5135,
	movl	$.LC6, %esi	#,
	movq	%rax, %rdi	# stderr.50,
	movl	$0, %eax	#,
	call	fprintf	#
.L188:
	.loc 1 1058 0
	movq	-8(%rbp), %rax	# D.5142, tmp737
	xorq	%fs:40, %rax	#, tmp737
	je	.L245	#,
	call	__stack_chk_fail	#
.L245:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	mainSort, .-mainSort
	.section	.rodata
	.align 8
.LC8:
	.string	"      %d work, %d block, ratio %5.2f\n"
	.align 8
.LC9:
	.string	"    too repetitive; using fallback sorting algorithm\n"
	.text
	.globl	BZ2_blockSort
	.type	BZ2_blockSort, @function
BZ2_blockSort:
.LFB10:
	.loc 1 1079 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -72(%rbp)	# s, s
	.loc 1 1080 0
	movq	-72(%rbp), %rax	# s, tmp84
	movq	56(%rax), %rax	# s_6(D)->ptr, tmp85
	movq	%rax, -32(%rbp)	# tmp85, ptr
	.loc 1 1081 0
	movq	-72(%rbp), %rax	# s, tmp86
	movq	64(%rax), %rax	# s_6(D)->block, tmp87
	movq	%rax, -24(%rbp)	# tmp87, block
	.loc 1 1082 0
	movq	-72(%rbp), %rax	# s, tmp88
	movq	40(%rax), %rax	# s_6(D)->ftab, tmp89
	movq	%rax, -16(%rbp)	# tmp89, ftab
	.loc 1 1083 0
	movq	-72(%rbp), %rax	# s, tmp90
	movl	108(%rax), %eax	# s_6(D)->nblock, tmp91
	movl	%eax, -44(%rbp)	# tmp91, nblock
	.loc 1 1084 0
	movq	-72(%rbp), %rax	# s, tmp92
	movl	656(%rax), %eax	# s_6(D)->verbosity, tmp93
	movl	%eax, -40(%rbp)	# tmp93, verb
	.loc 1 1085 0
	movq	-72(%rbp), %rax	# s, tmp94
	movl	88(%rax), %eax	# s_6(D)->workFactor, tmp95
	movl	%eax, -52(%rbp)	# tmp95, wfact
	.loc 1 1091 0
	cmpl	$9999, -44(%rbp)	#, nblock
	jg	.L247	#,
	.loc 1 1092 0
	movq	-72(%rbp), %rax	# s, tmp96
	movq	32(%rax), %rsi	# s_6(D)->arr2, D.5148
	movq	-72(%rbp), %rax	# s, tmp97
	movq	24(%rax), %rax	# s_6(D)->arr1, D.5148
	movl	-40(%rbp), %edi	# verb, tmp98
	movl	-44(%rbp), %ecx	# nblock, tmp99
	movq	-16(%rbp), %rdx	# ftab, tmp100
	movl	%edi, %r8d	# tmp98,
	movq	%rax, %rdi	# D.5148,
	call	fallbackSort	#
	jmp	.L248	#
.L247:
	.loc 1 1099 0
	movl	-44(%rbp), %eax	# nblock, tmp104
	addl	$34, %eax	#, tmp103
	movl	%eax, -48(%rbp)	# tmp103, i
	.loc 1 1100 0
	movl	-48(%rbp), %eax	# i, tmp105
	andl	$1, %eax	#, D.5149
	testl	%eax, %eax	# D.5149
	je	.L249	#,
	.loc 1 1100 0 is_stmt 0 discriminator 1
	addl	$1, -48(%rbp)	#, i
.L249:
	.loc 1 1101 0 is_stmt 1
	movl	-48(%rbp), %eax	# i, tmp106
	movslq	%eax, %rdx	# tmp106, D.5150
	movq	-24(%rbp), %rax	# block, tmp110
	addq	%rdx, %rax	# D.5150, tmp109
	movq	%rax, -8(%rbp)	# tmp109, quadrant
	.loc 1 1110 0
	cmpl	$0, -52(%rbp)	#, wfact
	jg	.L250	#,
	.loc 1 1110 0 is_stmt 0 discriminator 1
	movl	$1, -52(%rbp)	#, wfact
.L250:
	.loc 1 1111 0 is_stmt 1
	cmpl	$100, -52(%rbp)	#, wfact
	jle	.L251	#,
	.loc 1 1111 0 is_stmt 0 discriminator 1
	movl	$100, -52(%rbp)	#, wfact
.L251:
	.loc 1 1112 0 is_stmt 1
	movl	-52(%rbp), %eax	# wfact, tmp111
	leal	-1(%rax), %ecx	#, D.5149
	movl	$1431655766, %edx	#, tmp113
	movl	%ecx, %eax	# D.5149, tmp139
	imull	%edx	# tmp113
	movl	%ecx, %eax	# D.5149, tmp114
	sarl	$31, %eax	#, tmp114
	subl	%eax, %edx	# tmp114, D.5149
	movl	%edx, %eax	# D.5149, D.5149
	imull	-44(%rbp), %eax	# nblock, tmp115
	movl	%eax, -36(%rbp)	# tmp115, budgetInit
	.loc 1 1113 0
	movl	-36(%rbp), %eax	# budgetInit, tmp116
	movl	%eax, -56(%rbp)	# tmp116, budget
	.loc 1 1115 0
	movl	-40(%rbp), %r9d	# verb, tmp117
	movl	-44(%rbp), %r8d	# nblock, tmp118
	movq	-16(%rbp), %rcx	# ftab, tmp119
	movq	-8(%rbp), %rdx	# quadrant, tmp120
	movq	-24(%rbp), %rsi	# block, tmp121
	movq	-32(%rbp), %rax	# ptr, tmp122
	leaq	-56(%rbp), %rdi	#, tmp123
	movq	%rdi, (%rsp)	# tmp123,
	movq	%rax, %rdi	# tmp122,
	call	mainSort	#
	.loc 1 1116 0
	cmpl	$2, -40(%rbp)	#, verb
	jle	.L252	#,
	.loc 1 1117 0
	movl	-56(%rbp), %eax	# budget, budget.51
	movl	-36(%rbp), %edx	# budgetInit, tmp124
	subl	%eax, %edx	# budget.51, D.5149
	movl	%edx, %eax	# D.5149, D.5149
	cvtsi2ss	%eax, %xmm1	# D.5149, D.5151
	cmpl	$0, -44(%rbp)	#, nblock
	je	.L253	#,
	.loc 1 1117 0 is_stmt 0 discriminator 1
	cvtsi2ss	-44(%rbp), %xmm0	# nblock, iftmp.52
	jmp	.L254	#
.L253:
	.loc 1 1117 0 discriminator 2
	movss	.LC7(%rip), %xmm0	#, iftmp.52
.L254:
	.loc 1 1117 0 discriminator 3
	divss	%xmm0, %xmm1	# iftmp.52, D.5151
	movaps	%xmm1, %xmm0	# D.5151, D.5151
	unpcklps	%xmm0, %xmm0	# D.5151, D.5151
	cvtps2pd	%xmm0, %xmm0	# D.5151, D.5152
	movl	-56(%rbp), %eax	# budget, budget.53
	movl	-36(%rbp), %edx	# budgetInit, tmp125
	movl	%edx, %esi	# tmp125, D.5149
	subl	%eax, %esi	# budget.53, D.5149
	movq	stderr(%rip), %rax	# stderr, stderr.54
	movl	-44(%rbp), %edx	# nblock, tmp126
	movl	%edx, %ecx	# tmp126,
	movl	%esi, %edx	# D.5149,
	movl	$.LC8, %esi	#,
	movq	%rax, %rdi	# stderr.54,
	movl	$1, %eax	#,
	call	fprintf	#
.L252:
	.loc 1 1122 0 is_stmt 1
	movl	-56(%rbp), %eax	# budget, budget.55
	testl	%eax, %eax	# budget.55
	jns	.L248	#,
	.loc 1 1123 0
	cmpl	$1, -40(%rbp)	#, verb
	jle	.L255	#,
	.loc 1 1124 0
	movq	stderr(%rip), %rax	# stderr, stderr.56
	movq	%rax, %rcx	# stderr.56,
	movl	$53, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC9, %edi	#,
	call	fwrite	#
.L255:
	.loc 1 1126 0
	movq	-72(%rbp), %rax	# s, tmp127
	movq	32(%rax), %rsi	# s_6(D)->arr2, D.5148
	movq	-72(%rbp), %rax	# s, tmp128
	movq	24(%rax), %rax	# s_6(D)->arr1, D.5148
	movl	-40(%rbp), %edi	# verb, tmp129
	movl	-44(%rbp), %ecx	# nblock, tmp130
	movq	-16(%rbp), %rdx	# ftab, tmp131
	movl	%edi, %r8d	# tmp129,
	movq	%rax, %rdi	# D.5148,
	call	fallbackSort	#
.L248:
	.loc 1 1130 0
	movq	-72(%rbp), %rax	# s, tmp132
	movl	$-1, 48(%rax)	#, s_6(D)->origPtr
	.loc 1 1131 0
	movl	$0, -48(%rbp)	#, i
	jmp	.L256	#
.L259:
	.loc 1 1132 0
	movl	-48(%rbp), %eax	# i, tmp133
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5153
	movq	-32(%rbp), %rax	# ptr, tmp134
	addq	%rdx, %rax	# D.5153, D.5148
	movl	(%rax), %eax	# *_43, D.5154
	testl	%eax, %eax	# D.5154
	jne	.L257	#,
	.loc 1 1133 0
	movq	-72(%rbp), %rax	# s, tmp135
	movl	-48(%rbp), %edx	# i, tmp136
	movl	%edx, 48(%rax)	# tmp136, s_6(D)->origPtr
	jmp	.L258	#
.L257:
	.loc 1 1131 0
	addl	$1, -48(%rbp)	#, i
.L256:
	.loc 1 1131 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# s, tmp137
	movl	108(%rax), %eax	# s_6(D)->nblock, D.5149
	cmpl	-48(%rbp), %eax	# i, D.5149
	jg	.L259	#,
.L258:
	.loc 1 1135 0 is_stmt 1
	movq	-72(%rbp), %rax	# s, tmp138
	movl	48(%rax), %eax	# s_6(D)->origPtr, D.5149
	cmpl	$-1, %eax	#, D.5149
	jne	.L246	#,
	.loc 1 1135 0 is_stmt 0 discriminator 1
	movl	$1003, %edi	#,
	call	BZ2_bz__AssertH__fail	#
.L246:
	.loc 1 1136 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	BZ2_blockSort, .-BZ2_blockSort
	.section	.rodata
	.align 4
.LC7:
	.long	1065353216
	.text
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/libio.h"
	.file 5 "bzlib.h"
	.file 6 "bzlib_private.h"
	.file 7 "/usr/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1326
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF151
	.byte	0x1
	.long	.LASF152
	.long	.LASF153
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
	.long	0x22b
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
	.long	0x263
	.byte	0x60
	.uleb128 0x9
	.long	.LASF27
	.byte	0x4
	.value	0x10b
	.long	0x269
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
	.long	0x26f
	.byte	0x83
	.uleb128 0x9
	.long	.LASF34
	.byte	0x4
	.value	0x11d
	.long	0x27f
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
	.long	0x285
	.byte	0xc4
	.byte	0
	.uleb128 0xa
	.long	.LASF154
	.byte	0x4
	.byte	0x9b
	.uleb128 0x7
	.long	.LASF44
	.byte	0x18
	.byte	0x4
	.byte	0xa1
	.long	0x263
	.uleb128 0x8
	.long	.LASF45
	.byte	0x4
	.byte	0xa2
	.long	0x263
	.byte	0
	.uleb128 0x8
	.long	.LASF46
	.byte	0x4
	.byte	0xa3
	.long	0x269
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
	.long	0x232
	.uleb128 0x6
	.byte	0x8
	.long	0xaa
	.uleb128 0xb
	.long	0x95
	.long	0x27f
	.uleb128 0xc
	.long	0x86
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x22b
	.uleb128 0xb
	.long	0x95
	.long	0x295
	.uleb128 0xc
	.long	0x86
	.byte	0x13
	.byte	0
	.uleb128 0xd
	.byte	0x50
	.byte	0x5
	.byte	0xcc
	.long	0x32e
	.uleb128 0x8
	.long	.LASF48
	.byte	0x5
	.byte	0xcd
	.long	0x8f
	.byte	0
	.uleb128 0x8
	.long	.LASF49
	.byte	0x5
	.byte	0xce
	.long	0x54
	.byte	0x8
	.uleb128 0x8
	.long	.LASF50
	.byte	0x5
	.byte	0xcf
	.long	0x54
	.byte	0xc
	.uleb128 0x8
	.long	.LASF51
	.byte	0x5
	.byte	0xd0
	.long	0x54
	.byte	0x10
	.uleb128 0x8
	.long	.LASF52
	.byte	0x5
	.byte	0xd2
	.long	0x8f
	.byte	0x18
	.uleb128 0x8
	.long	.LASF53
	.byte	0x5
	.byte	0xd3
	.long	0x54
	.byte	0x20
	.uleb128 0x8
	.long	.LASF54
	.byte	0x5
	.byte	0xd4
	.long	0x54
	.byte	0x24
	.uleb128 0x8
	.long	.LASF55
	.byte	0x5
	.byte	0xd5
	.long	0x54
	.byte	0x28
	.uleb128 0x8
	.long	.LASF56
	.byte	0x5
	.byte	0xd7
	.long	0x8d
	.byte	0x30
	.uleb128 0x8
	.long	.LASF57
	.byte	0x5
	.byte	0xd9
	.long	0x347
	.byte	0x38
	.uleb128 0x8
	.long	.LASF58
	.byte	0x5
	.byte	0xda
	.long	0x35d
	.byte	0x40
	.uleb128 0x8
	.long	.LASF59
	.byte	0x5
	.byte	0xdb
	.long	0x8d
	.byte	0x48
	.byte	0
	.uleb128 0xe
	.long	0x8d
	.long	0x347
	.uleb128 0xf
	.long	0x8d
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0x3f
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x32e
	.uleb128 0x10
	.long	0x35d
	.uleb128 0xf
	.long	0x8d
	.uleb128 0xf
	.long	0x8d
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x34d
	.uleb128 0x2
	.long	.LASF60
	.byte	0x5
	.byte	0xdd
	.long	0x295
	.uleb128 0x2
	.long	.LASF61
	.byte	0x6
	.byte	0x52
	.long	0x46
	.uleb128 0x2
	.long	.LASF62
	.byte	0x6
	.byte	0x53
	.long	0x46
	.uleb128 0x2
	.long	.LASF63
	.byte	0x6
	.byte	0x54
	.long	0x3f
	.uleb128 0x2
	.long	.LASF64
	.byte	0x6
	.byte	0x55
	.long	0x54
	.uleb128 0x2
	.long	.LASF65
	.byte	0x6
	.byte	0x57
	.long	0x4d
	.uleb128 0x11
	.value	0xd9d8
	.byte	0x6
	.byte	0xe7
	.long	0x5ae
	.uleb128 0x8
	.long	.LASF66
	.byte	0x6
	.byte	0xe9
	.long	0x5ae
	.byte	0
	.uleb128 0x8
	.long	.LASF67
	.byte	0x6
	.byte	0xed
	.long	0x384
	.byte	0x8
	.uleb128 0x8
	.long	.LASF56
	.byte	0x6
	.byte	0xee
	.long	0x384
	.byte	0xc
	.uleb128 0x8
	.long	.LASF68
	.byte	0x6
	.byte	0xf1
	.long	0x38f
	.byte	0x10
	.uleb128 0x8
	.long	.LASF69
	.byte	0x6
	.byte	0xf4
	.long	0x5b4
	.byte	0x18
	.uleb128 0x8
	.long	.LASF70
	.byte	0x6
	.byte	0xf5
	.long	0x5b4
	.byte	0x20
	.uleb128 0x8
	.long	.LASF71
	.byte	0x6
	.byte	0xf6
	.long	0x5b4
	.byte	0x28
	.uleb128 0x8
	.long	.LASF72
	.byte	0x6
	.byte	0xf7
	.long	0x384
	.byte	0x30
	.uleb128 0x12
	.string	"ptr"
	.byte	0x6
	.byte	0xfa
	.long	0x5b4
	.byte	0x38
	.uleb128 0x8
	.long	.LASF73
	.byte	0x6
	.byte	0xfb
	.long	0x5ba
	.byte	0x40
	.uleb128 0x8
	.long	.LASF74
	.byte	0x6
	.byte	0xfc
	.long	0x5c0
	.byte	0x48
	.uleb128 0x8
	.long	.LASF75
	.byte	0x6
	.byte	0xfd
	.long	0x5ba
	.byte	0x50
	.uleb128 0x9
	.long	.LASF76
	.byte	0x6
	.value	0x100
	.long	0x384
	.byte	0x58
	.uleb128 0x9
	.long	.LASF77
	.byte	0x6
	.value	0x103
	.long	0x38f
	.byte	0x5c
	.uleb128 0x9
	.long	.LASF78
	.byte	0x6
	.value	0x104
	.long	0x384
	.byte	0x60
	.uleb128 0x9
	.long	.LASF79
	.byte	0x6
	.value	0x105
	.long	0x384
	.byte	0x64
	.uleb128 0x9
	.long	.LASF80
	.byte	0x6
	.value	0x105
	.long	0x384
	.byte	0x68
	.uleb128 0x9
	.long	.LASF81
	.byte	0x6
	.value	0x108
	.long	0x384
	.byte	0x6c
	.uleb128 0x9
	.long	.LASF82
	.byte	0x6
	.value	0x109
	.long	0x384
	.byte	0x70
	.uleb128 0x9
	.long	.LASF83
	.byte	0x6
	.value	0x10a
	.long	0x384
	.byte	0x74
	.uleb128 0x9
	.long	.LASF84
	.byte	0x6
	.value	0x10b
	.long	0x384
	.byte	0x78
	.uleb128 0x9
	.long	.LASF85
	.byte	0x6
	.value	0x10e
	.long	0x384
	.byte	0x7c
	.uleb128 0x9
	.long	.LASF86
	.byte	0x6
	.value	0x10f
	.long	0x5c6
	.byte	0x80
	.uleb128 0x13
	.long	.LASF87
	.byte	0x6
	.value	0x110
	.long	0x5d6
	.value	0x180
	.uleb128 0x13
	.long	.LASF88
	.byte	0x6
	.value	0x113
	.long	0x38f
	.value	0x280
	.uleb128 0x13
	.long	.LASF89
	.byte	0x6
	.value	0x114
	.long	0x384
	.value	0x284
	.uleb128 0x13
	.long	.LASF90
	.byte	0x6
	.value	0x117
	.long	0x38f
	.value	0x288
	.uleb128 0x13
	.long	.LASF91
	.byte	0x6
	.value	0x118
	.long	0x38f
	.value	0x28c
	.uleb128 0x13
	.long	.LASF92
	.byte	0x6
	.value	0x11b
	.long	0x384
	.value	0x290
	.uleb128 0x13
	.long	.LASF93
	.byte	0x6
	.value	0x11c
	.long	0x384
	.value	0x294
	.uleb128 0x13
	.long	.LASF94
	.byte	0x6
	.value	0x11d
	.long	0x384
	.value	0x298
	.uleb128 0x13
	.long	.LASF95
	.byte	0x6
	.value	0x120
	.long	0x384
	.value	0x29c
	.uleb128 0x13
	.long	.LASF96
	.byte	0x6
	.value	0x121
	.long	0x5e6
	.value	0x2a0
	.uleb128 0x13
	.long	.LASF97
	.byte	0x6
	.value	0x122
	.long	0x5f7
	.value	0x6a8
	.uleb128 0x13
	.long	.LASF98
	.byte	0x6
	.value	0x123
	.long	0x5f7
	.value	0x4cfa
	.uleb128 0x14
	.string	"len"
	.byte	0x6
	.value	0x125
	.long	0x608
	.value	0x934c
	.uleb128 0x13
	.long	.LASF99
	.byte	0x6
	.value	0x126
	.long	0x61f
	.value	0x9958
	.uleb128 0x13
	.long	.LASF100
	.byte	0x6
	.value	0x127
	.long	0x61f
	.value	0xb188
	.uleb128 0x13
	.long	.LASF101
	.byte	0x6
	.value	0x129
	.long	0x636
	.value	0xc9b8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x363
	.uleb128 0x6
	.byte	0x8
	.long	0x38f
	.uleb128 0x6
	.byte	0x8
	.long	0x379
	.uleb128 0x6
	.byte	0x8
	.long	0x39a
	.uleb128 0xb
	.long	0x36e
	.long	0x5d6
	.uleb128 0xc
	.long	0x86
	.byte	0xff
	.byte	0
	.uleb128 0xb
	.long	0x379
	.long	0x5e6
	.uleb128 0xc
	.long	0x86
	.byte	0xff
	.byte	0
	.uleb128 0xb
	.long	0x384
	.long	0x5f7
	.uleb128 0x15
	.long	0x86
	.value	0x101
	.byte	0
	.uleb128 0xb
	.long	0x379
	.long	0x608
	.uleb128 0x15
	.long	0x86
	.value	0x4651
	.byte	0
	.uleb128 0xb
	.long	0x379
	.long	0x61f
	.uleb128 0xc
	.long	0x86
	.byte	0x5
	.uleb128 0x15
	.long	0x86
	.value	0x101
	.byte	0
	.uleb128 0xb
	.long	0x384
	.long	0x636
	.uleb128 0xc
	.long	0x86
	.byte	0x5
	.uleb128 0x15
	.long	0x86
	.value	0x101
	.byte	0
	.uleb128 0xb
	.long	0x38f
	.long	0x64d
	.uleb128 0x15
	.long	0x86
	.value	0x101
	.uleb128 0xc
	.long	0x86
	.byte	0x3
	.byte	0
	.uleb128 0x16
	.long	.LASF102
	.byte	0x6
	.value	0x12c
	.long	0x3a5
	.uleb128 0xb
	.long	0x384
	.long	0x669
	.uleb128 0xc
	.long	0x86
	.byte	0xff
	.byte	0
	.uleb128 0xb
	.long	0x384
	.long	0x67a
	.uleb128 0x15
	.long	0x86
	.value	0x100
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x384
	.uleb128 0x17
	.long	.LASF106
	.byte	0x1
	.byte	0x4f
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x708
	.uleb128 0x18
	.long	.LASF103
	.byte	0x1
	.byte	0x4f
	.long	0x5b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.long	.LASF104
	.byte	0x1
	.byte	0x50
	.long	0x5b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x19
	.string	"lo"
	.byte	0x1
	.byte	0x51
	.long	0x384
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x19
	.string	"hi"
	.byte	0x1
	.byte	0x52
	.long	0x384
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1a
	.string	"i"
	.byte	0x1
	.byte	0x54
	.long	0x384
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1a
	.string	"j"
	.byte	0x1
	.byte	0x54
	.long	0x384
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1a
	.string	"tmp"
	.byte	0x1
	.byte	0x54
	.long	0x384
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1b
	.long	.LASF105
	.byte	0x1
	.byte	0x55
	.long	0x38f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1c
	.long	.LASF107
	.byte	0x1
	.byte	0x8c
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x95d
	.uleb128 0x18
	.long	.LASF103
	.byte	0x1
	.byte	0x8c
	.long	0x5b4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -920
	.uleb128 0x18
	.long	.LASF104
	.byte	0x1
	.byte	0x8d
	.long	0x5b4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -928
	.uleb128 0x18
	.long	.LASF108
	.byte	0x1
	.byte	0x8e
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -932
	.uleb128 0x18
	.long	.LASF109
	.byte	0x1
	.byte	0x8f
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -936
	.uleb128 0x1b
	.long	.LASF110
	.byte	0x1
	.byte	0x91
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -908
	.uleb128 0x1b
	.long	.LASF111
	.byte	0x1
	.byte	0x91
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -904
	.uleb128 0x1b
	.long	.LASF112
	.byte	0x1
	.byte	0x91
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -900
	.uleb128 0x1b
	.long	.LASF113
	.byte	0x1
	.byte	0x91
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -896
	.uleb128 0x1a
	.string	"n"
	.byte	0x1
	.byte	0x91
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -844
	.uleb128 0x1a
	.string	"m"
	.byte	0x1
	.byte	0x91
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -828
	.uleb128 0x1a
	.string	"sp"
	.byte	0x1
	.byte	0x92
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -892
	.uleb128 0x1a
	.string	"lo"
	.byte	0x1
	.byte	0x92
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -856
	.uleb128 0x1a
	.string	"hi"
	.byte	0x1
	.byte	0x92
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -852
	.uleb128 0x1a
	.string	"med"
	.byte	0x1
	.byte	0x93
	.long	0x38f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -888
	.uleb128 0x1a
	.string	"r"
	.byte	0x1
	.byte	0x93
	.long	0x38f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -884
	.uleb128 0x1a
	.string	"r3"
	.byte	0x1
	.byte	0x93
	.long	0x38f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -848
	.uleb128 0x1b
	.long	.LASF114
	.byte	0x1
	.byte	0x94
	.long	0x95d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -816
	.uleb128 0x1b
	.long	.LASF115
	.byte	0x1
	.byte	0x95
	.long	0x95d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -416
	.uleb128 0x1d
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x84e
	.uleb128 0x1b
	.long	.LASF116
	.byte	0x1
	.byte	0xbb
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -840
	.byte	0
	.uleb128 0x1d
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.long	0x873
	.uleb128 0x1b
	.long	.LASF116
	.byte	0x1
	.byte	0xc6
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -836
	.byte	0
	.uleb128 0x1d
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.long	0x898
	.uleb128 0x1b
	.long	.LASF116
	.byte	0x1
	.byte	0xce
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -820
	.byte	0
	.uleb128 0x1d
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.long	0x8fc
	.uleb128 0x1b
	.long	.LASF117
	.byte	0x1
	.byte	0xd5
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -880
	.uleb128 0x1b
	.long	.LASF118
	.byte	0x1
	.byte	0xd5
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -876
	.uleb128 0x1a
	.string	"yyn"
	.byte	0x1
	.byte	0xd5
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -872
	.uleb128 0x1e
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x1b
	.long	.LASF116
	.byte	0x1
	.byte	0xd5
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -832
	.byte	0
	.byte	0
	.uleb128 0x1e
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x1b
	.long	.LASF117
	.byte	0x1
	.byte	0xd6
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -868
	.uleb128 0x1b
	.long	.LASF118
	.byte	0x1
	.byte	0xd6
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -864
	.uleb128 0x1a
	.string	"yyn"
	.byte	0x1
	.byte	0xd6
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -860
	.uleb128 0x1e
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x1b
	.long	.LASF116
	.byte	0x1
	.byte	0xd6
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -824
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x384
	.long	0x96d
	.uleb128 0xc
	.long	0x86
	.byte	0x63
	.byte	0
	.uleb128 0x1f
	.long	.LASF119
	.byte	0x1
	.value	0x103
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0xa9f
	.uleb128 0x20
	.long	.LASF103
	.byte	0x1
	.value	0x103
	.long	0x5b4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2136
	.uleb128 0x20
	.long	.LASF104
	.byte	0x1
	.value	0x104
	.long	0x5b4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2144
	.uleb128 0x20
	.long	.LASF120
	.byte	0x1
	.value	0x105
	.long	0x5b4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2152
	.uleb128 0x20
	.long	.LASF81
	.byte	0x1
	.value	0x106
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2156
	.uleb128 0x20
	.long	.LASF121
	.byte	0x1
	.value	0x107
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2160
	.uleb128 0x21
	.long	.LASF71
	.byte	0x1
	.value	0x109
	.long	0x669
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1056
	.uleb128 0x21
	.long	.LASF122
	.byte	0x1
	.value	0x10a
	.long	0x659
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2080
	.uleb128 0x22
	.string	"H"
	.byte	0x1
	.value	0x10b
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2128
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.value	0x10b
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2124
	.uleb128 0x22
	.string	"j"
	.byte	0x1
	.value	0x10b
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2120
	.uleb128 0x22
	.string	"k"
	.byte	0x1
	.value	0x10b
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2116
	.uleb128 0x22
	.string	"l"
	.byte	0x1
	.value	0x10b
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2096
	.uleb128 0x22
	.string	"r"
	.byte	0x1
	.value	0x10b
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2112
	.uleb128 0x22
	.string	"cc"
	.byte	0x1
	.value	0x10b
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2108
	.uleb128 0x22
	.string	"cc1"
	.byte	0x1
	.value	0x10b
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2092
	.uleb128 0x21
	.long	.LASF123
	.byte	0x1
	.value	0x10c
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2104
	.uleb128 0x21
	.long	.LASF124
	.byte	0x1
	.value	0x10d
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2100
	.uleb128 0x21
	.long	.LASF125
	.byte	0x1
	.value	0x10e
	.long	0x5ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2088
	.byte	0
	.uleb128 0x23
	.long	.LASF130
	.byte	0x1
	.value	0x18a
	.long	0x36e
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0xb60
	.uleb128 0x24
	.string	"i1"
	.byte	0x1
	.value	0x18a
	.long	0x38f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x24
	.string	"i2"
	.byte	0x1
	.value	0x18b
	.long	0x38f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x20
	.long	.LASF73
	.byte	0x1
	.value	0x18c
	.long	0x5ba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x20
	.long	.LASF126
	.byte	0x1
	.value	0x18d
	.long	0x5c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x20
	.long	.LASF81
	.byte	0x1
	.value	0x18e
	.long	0x38f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x20
	.long	.LASF127
	.byte	0x1
	.value	0x18f
	.long	0x67a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x22
	.string	"k"
	.byte	0x1
	.value	0x191
	.long	0x384
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x22
	.string	"c1"
	.byte	0x1
	.value	0x192
	.long	0x379
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x22
	.string	"c2"
	.byte	0x1
	.value	0x192
	.long	0x379
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x22
	.string	"s1"
	.byte	0x1
	.value	0x193
	.long	0x39a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x22
	.string	"s2"
	.byte	0x1
	.value	0x193
	.long	0x39a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.byte	0
	.uleb128 0x1f
	.long	.LASF128
	.byte	0x1
	.value	0x214
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0xc48
	.uleb128 0x24
	.string	"ptr"
	.byte	0x1
	.value	0x214
	.long	0x5b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x20
	.long	.LASF73
	.byte	0x1
	.value	0x215
	.long	0x5ba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x20
	.long	.LASF126
	.byte	0x1
	.value	0x216
	.long	0x5c0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x20
	.long	.LASF81
	.byte	0x1
	.value	0x217
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x24
	.string	"lo"
	.byte	0x1
	.value	0x218
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x24
	.string	"hi"
	.byte	0x1
	.value	0x219
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x24
	.string	"d"
	.byte	0x1
	.value	0x21a
	.long	0x384
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.long	.LASF127
	.byte	0x1
	.value	0x21b
	.long	0x67a
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.value	0x21d
	.long	0x384
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.string	"j"
	.byte	0x1
	.value	0x21d
	.long	0x384
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x22
	.string	"h"
	.byte	0x1
	.value	0x21d
	.long	0x384
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x21
	.long	.LASF129
	.byte	0x1
	.value	0x21d
	.long	0x384
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x22
	.string	"hp"
	.byte	0x1
	.value	0x21d
	.long	0x384
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x22
	.string	"v"
	.byte	0x1
	.value	0x21e
	.long	0x38f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x23
	.long	.LASF131
	.byte	0x1
	.value	0x276
	.long	0x379
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0xc9f
	.uleb128 0x24
	.string	"a"
	.byte	0x1
	.value	0x276
	.long	0x379
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x24
	.string	"b"
	.byte	0x1
	.value	0x276
	.long	0x379
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.string	"c"
	.byte	0x1
	.value	0x276
	.long	0x379
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x22
	.string	"t"
	.byte	0x1
	.value	0x278
	.long	0x379
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x1f
	.long	.LASF132
	.byte	0x1
	.value	0x29c
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0xff0
	.uleb128 0x24
	.string	"ptr"
	.byte	0x1
	.value	0x29c
	.long	0x5b4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1384
	.uleb128 0x20
	.long	.LASF73
	.byte	0x1
	.value	0x29d
	.long	0x5ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1392
	.uleb128 0x20
	.long	.LASF126
	.byte	0x1
	.value	0x29e
	.long	0x5c0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1400
	.uleb128 0x20
	.long	.LASF81
	.byte	0x1
	.value	0x29f
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1404
	.uleb128 0x20
	.long	.LASF108
	.byte	0x1
	.value	0x2a0
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1408
	.uleb128 0x20
	.long	.LASF109
	.byte	0x1
	.value	0x2a1
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1412
	.uleb128 0x24
	.string	"dSt"
	.byte	0x1
	.value	0x2a2
	.long	0x384
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.long	.LASF127
	.byte	0x1
	.value	0x2a3
	.long	0x67a
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x21
	.long	.LASF110
	.byte	0x1
	.value	0x2a5
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1364
	.uleb128 0x21
	.long	.LASF111
	.byte	0x1
	.value	0x2a5
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1360
	.uleb128 0x21
	.long	.LASF112
	.byte	0x1
	.value	0x2a5
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1356
	.uleb128 0x21
	.long	.LASF113
	.byte	0x1
	.value	0x2a5
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1352
	.uleb128 0x22
	.string	"n"
	.byte	0x1
	.value	0x2a5
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1304
	.uleb128 0x22
	.string	"m"
	.byte	0x1
	.value	0x2a5
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1288
	.uleb128 0x22
	.string	"med"
	.byte	0x1
	.value	0x2a5
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1308
	.uleb128 0x22
	.string	"sp"
	.byte	0x1
	.value	0x2a6
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1348
	.uleb128 0x22
	.string	"lo"
	.byte	0x1
	.value	0x2a6
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1320
	.uleb128 0x22
	.string	"hi"
	.byte	0x1
	.value	0x2a6
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1316
	.uleb128 0x22
	.string	"d"
	.byte	0x1
	.value	0x2a6
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1312
	.uleb128 0x21
	.long	.LASF114
	.byte	0x1
	.value	0x2a8
	.long	0x95d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1216
	.uleb128 0x21
	.long	.LASF115
	.byte	0x1
	.value	0x2a9
	.long	0x95d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -816
	.uleb128 0x21
	.long	.LASF133
	.byte	0x1
	.value	0x2aa
	.long	0x95d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -416
	.uleb128 0x21
	.long	.LASF134
	.byte	0x1
	.value	0x2ac
	.long	0xff0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1264
	.uleb128 0x21
	.long	.LASF135
	.byte	0x1
	.value	0x2ad
	.long	0xff0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1248
	.uleb128 0x21
	.long	.LASF136
	.byte	0x1
	.value	0x2ae
	.long	0xff0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1232
	.uleb128 0x1d
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.long	0xe68
	.uleb128 0x21
	.long	.LASF116
	.byte	0x1
	.value	0x2cc
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1300
	.byte	0
	.uleb128 0x1d
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.long	0xe8e
	.uleb128 0x21
	.long	.LASF116
	.byte	0x1
	.value	0x2d6
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1296
	.byte	0
	.uleb128 0x1d
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.long	0xeb4
	.uleb128 0x21
	.long	.LASF116
	.byte	0x1
	.value	0x2dd
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1268
	.byte	0
	.uleb128 0x1d
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.long	0xf1c
	.uleb128 0x21
	.long	.LASF117
	.byte	0x1
	.value	0x2e7
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1344
	.uleb128 0x21
	.long	.LASF118
	.byte	0x1
	.value	0x2e7
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1340
	.uleb128 0x22
	.string	"yyn"
	.byte	0x1
	.value	0x2e7
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1336
	.uleb128 0x1e
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x21
	.long	.LASF116
	.byte	0x1
	.value	0x2e7
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1292
	.byte	0
	.byte	0
	.uleb128 0x1d
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.long	0xf84
	.uleb128 0x21
	.long	.LASF117
	.byte	0x1
	.value	0x2e8
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1332
	.uleb128 0x21
	.long	.LASF118
	.byte	0x1
	.value	0x2e8
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1328
	.uleb128 0x22
	.string	"yyn"
	.byte	0x1
	.value	0x2e8
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1324
	.uleb128 0x1e
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.uleb128 0x21
	.long	.LASF116
	.byte	0x1
	.value	0x2e8
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1284
	.byte	0
	.byte	0
	.uleb128 0x1d
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.long	0xfa9
	.uleb128 0x22
	.string	"tz"
	.byte	0x1
	.value	0x2f1
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1280
	.byte	0
	.uleb128 0x1d
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.long	0xfce
	.uleb128 0x22
	.string	"tz"
	.byte	0x1
	.value	0x2f2
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1276
	.byte	0
	.uleb128 0x1e
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.uleb128 0x22
	.string	"tz"
	.byte	0x1
	.value	0x2f3
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1272
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x384
	.long	0x1000
	.uleb128 0xc
	.long	0x86
	.byte	0x2
	.byte	0
	.uleb128 0x1f
	.long	.LASF137
	.byte	0x1
	.value	0x31e
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x122f
	.uleb128 0x24
	.string	"ptr"
	.byte	0x1
	.value	0x31e
	.long	0x5b4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3432
	.uleb128 0x20
	.long	.LASF73
	.byte	0x1
	.value	0x31f
	.long	0x5ba
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3440
	.uleb128 0x20
	.long	.LASF126
	.byte	0x1
	.value	0x320
	.long	0x5c0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3448
	.uleb128 0x20
	.long	.LASF71
	.byte	0x1
	.value	0x321
	.long	0x5b4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3456
	.uleb128 0x20
	.long	.LASF81
	.byte	0x1
	.value	0x322
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3460
	.uleb128 0x20
	.long	.LASF121
	.byte	0x1
	.value	0x323
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3464
	.uleb128 0x20
	.long	.LASF127
	.byte	0x1
	.value	0x324
	.long	0x67a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3472
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.value	0x326
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3416
	.uleb128 0x22
	.string	"j"
	.byte	0x1
	.value	0x326
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3412
	.uleb128 0x22
	.string	"k"
	.byte	0x1
	.value	0x326
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3408
	.uleb128 0x22
	.string	"ss"
	.byte	0x1
	.value	0x326
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3388
	.uleb128 0x22
	.string	"sb"
	.byte	0x1
	.value	0x326
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3384
	.uleb128 0x21
	.long	.LASF138
	.byte	0x1
	.value	0x327
	.long	0x659
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3360
	.uleb128 0x21
	.long	.LASF139
	.byte	0x1
	.value	0x328
	.long	0x5c6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x21
	.long	.LASF140
	.byte	0x1
	.value	0x329
	.long	0x659
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2336
	.uleb128 0x21
	.long	.LASF141
	.byte	0x1
	.value	0x32a
	.long	0x659
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1312
	.uleb128 0x22
	.string	"c1"
	.byte	0x1
	.value	0x32b
	.long	0x379
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3421
	.uleb128 0x21
	.long	.LASF142
	.byte	0x1
	.value	0x32c
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3404
	.uleb128 0x22
	.string	"s"
	.byte	0x1
	.value	0x32d
	.long	0x39a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3420
	.uleb128 0x25
	.long	.LASF155
	.byte	0x1
	.value	0x387
	.quad	.L210
	.uleb128 0x1d
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.long	0x1186
	.uleb128 0x22
	.string	"vv"
	.byte	0x1
	.value	0x37a
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3392
	.uleb128 0x22
	.string	"h"
	.byte	0x1
	.value	0x37b
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3400
	.byte	0
	.uleb128 0x1d
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.long	0x11ba
	.uleb128 0x22
	.string	"lo"
	.byte	0x1
	.value	0x3a9
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3380
	.uleb128 0x22
	.string	"hi"
	.byte	0x1
	.value	0x3aa
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3376
	.byte	0
	.uleb128 0x1e
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.uleb128 0x21
	.long	.LASF143
	.byte	0x1
	.value	0x40d
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3372
	.uleb128 0x21
	.long	.LASF144
	.byte	0x1
	.value	0x40e
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3368
	.uleb128 0x21
	.long	.LASF145
	.byte	0x1
	.value	0x40f
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3396
	.uleb128 0x1e
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.uleb128 0x21
	.long	.LASF146
	.byte	0x1
	.value	0x414
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3364
	.uleb128 0x21
	.long	.LASF147
	.byte	0x1
	.value	0x415
	.long	0x39a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -3418
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	.LASF156
	.byte	0x1
	.value	0x436
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x12f2
	.uleb128 0x24
	.string	"s"
	.byte	0x1
	.value	0x436
	.long	0x12f2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x22
	.string	"ptr"
	.byte	0x1
	.value	0x438
	.long	0x5b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x21
	.long	.LASF73
	.byte	0x1
	.value	0x439
	.long	0x5ba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x21
	.long	.LASF71
	.byte	0x1
	.value	0x43a
	.long	0x5b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x21
	.long	.LASF81
	.byte	0x1
	.value	0x43b
	.long	0x384
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x21
	.long	.LASF121
	.byte	0x1
	.value	0x43c
	.long	0x384
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x21
	.long	.LASF148
	.byte	0x1
	.value	0x43d
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x21
	.long	.LASF126
	.byte	0x1
	.value	0x43e
	.long	0x5c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x21
	.long	.LASF127
	.byte	0x1
	.value	0x43f
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x21
	.long	.LASF149
	.byte	0x1
	.value	0x440
	.long	0x384
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.value	0x441
	.long	0x384
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x64d
	.uleb128 0xb
	.long	0x384
	.long	0x1308
	.uleb128 0xc
	.long	0x86
	.byte	0xd
	.byte	0
	.uleb128 0x21
	.long	.LASF150
	.byte	0x1
	.value	0x20f
	.long	0x12f8
	.uleb128 0x9
	.byte	0x3
	.quad	incs
	.uleb128 0x27
	.long	.LASF157
	.byte	0x7
	.byte	0xaa
	.long	0x269
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
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
.LASF84:
	.string	"state_out_pos"
.LASF78:
	.string	"state_in_len"
.LASF133:
	.string	"stackD"
.LASF33:
	.string	"_shortbuf"
.LASF154:
	.string	"_IO_lock_t"
.LASF51:
	.string	"total_in_hi32"
.LASF157:
	.string	"stderr"
.LASF22:
	.string	"_IO_buf_end"
.LASF89:
	.string	"bsLive"
.LASF138:
	.string	"runningOrder"
.LASF131:
	.string	"mmed3"
.LASF61:
	.string	"Bool"
.LASF58:
	.string	"bzfree"
.LASF20:
	.string	"_IO_write_end"
.LASF3:
	.string	"unsigned int"
.LASF14:
	.string	"_flags"
.LASF26:
	.string	"_markers"
.LASF103:
	.string	"fmap"
.LASF126:
	.string	"quadrant"
.LASF67:
	.string	"mode"
.LASF95:
	.string	"nMTF"
.LASF136:
	.string	"nextD"
.LASF134:
	.string	"nextLo"
.LASF121:
	.string	"verb"
.LASF86:
	.string	"inUse"
.LASF101:
	.string	"len_pack"
.LASF47:
	.string	"_pos"
.LASF59:
	.string	"opaque"
.LASF25:
	.string	"_IO_save_end"
.LASF65:
	.string	"UInt16"
.LASF146:
	.string	"a2update"
.LASF75:
	.string	"zbits"
.LASF13:
	.string	"long long unsigned int"
.LASF98:
	.string	"selectorMtf"
.LASF149:
	.string	"budgetInit"
.LASF123:
	.string	"nNotDone"
.LASF120:
	.string	"bhtab"
.LASF74:
	.string	"mtfv"
.LASF97:
	.string	"selector"
.LASF24:
	.string	"_IO_backup_base"
.LASF69:
	.string	"arr1"
.LASF70:
	.string	"arr2"
.LASF35:
	.string	"_offset"
.LASF144:
	.string	"bbSize"
.LASF77:
	.string	"state_in_ch"
.LASF28:
	.string	"_fileno"
.LASF53:
	.string	"avail_out"
.LASF148:
	.string	"wfact"
.LASF127:
	.string	"budget"
.LASF125:
	.string	"eclass8"
.LASF96:
	.string	"mtfFreq"
.LASF7:
	.string	"size_t"
.LASF141:
	.string	"copyEnd"
.LASF17:
	.string	"_IO_read_base"
.LASF147:
	.string	"qVal"
.LASF107:
	.string	"fallbackQSort3"
.LASF64:
	.string	"UInt32"
.LASF45:
	.string	"_next"
.LASF99:
	.string	"code"
.LASF132:
	.string	"mainQSort3"
.LASF139:
	.string	"bigDone"
.LASF63:
	.string	"Int32"
.LASF150:
	.string	"incs"
.LASF68:
	.string	"avail_in_expect"
.LASF87:
	.string	"unseqToSeq"
.LASF66:
	.string	"strm"
.LASF11:
	.string	"char"
.LASF102:
	.string	"EState"
.LASF41:
	.string	"_mode"
.LASF111:
	.string	"unHi"
.LASF105:
	.string	"ec_tmp"
.LASF44:
	.string	"_IO_marker"
.LASF15:
	.string	"_IO_read_ptr"
.LASF108:
	.string	"loSt"
.LASF115:
	.string	"stackHi"
.LASF76:
	.string	"workFactor"
.LASF140:
	.string	"copyStart"
.LASF18:
	.string	"_IO_write_base"
.LASF12:
	.string	"long long int"
.LASF155:
	.string	"zero"
.LASF23:
	.string	"_IO_save_base"
.LASF143:
	.string	"bbStart"
.LASF52:
	.string	"next_out"
.LASF91:
	.string	"combinedCRC"
.LASF85:
	.string	"nInUse"
.LASF106:
	.string	"fallbackSimpleSort"
.LASF92:
	.string	"verbosity"
.LASF104:
	.string	"eclass"
.LASF79:
	.string	"rNToGo"
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
.LASF129:
	.string	"bigN"
.LASF119:
	.string	"fallbackSort"
.LASF32:
	.string	"_vtable_offset"
.LASF93:
	.string	"blockNo"
.LASF55:
	.string	"total_out_hi32"
.LASF94:
	.string	"blockSize100k"
.LASF124:
	.string	"nBhtab"
.LASF145:
	.string	"shifts"
.LASF72:
	.string	"origPtr"
.LASF151:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF117:
	.string	"yyp1"
.LASF118:
	.string	"yyp2"
.LASF16:
	.string	"_IO_read_end"
.LASF128:
	.string	"mainSimpleSort"
.LASF5:
	.string	"short int"
.LASF83:
	.string	"numZ"
.LASF6:
	.string	"long int"
.LASF90:
	.string	"blockCRC"
.LASF110:
	.string	"unLo"
.LASF142:
	.string	"numQSorted"
.LASF48:
	.string	"next_in"
.LASF82:
	.string	"nblockMAX"
.LASF80:
	.string	"rTPos"
.LASF153:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/401.bzip2/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF62:
	.string	"UChar"
.LASF50:
	.string	"total_in_lo32"
.LASF130:
	.string	"mainGtU"
.LASF73:
	.string	"block"
.LASF152:
	.string	"blocksort.c"
.LASF114:
	.string	"stackLo"
.LASF57:
	.string	"bzalloc"
.LASF109:
	.string	"hiSt"
.LASF34:
	.string	"_lock"
.LASF10:
	.string	"sizetype"
.LASF49:
	.string	"avail_in"
.LASF0:
	.string	"long unsigned int"
.LASF30:
	.string	"_old_offset"
.LASF43:
	.string	"_IO_FILE"
.LASF137:
	.string	"mainSort"
.LASF113:
	.string	"gtHi"
.LASF1:
	.string	"unsigned char"
.LASF46:
	.string	"_sbuf"
.LASF19:
	.string	"_IO_write_ptr"
.LASF56:
	.string	"state"
.LASF71:
	.string	"ftab"
.LASF8:
	.string	"__off_t"
.LASF135:
	.string	"nextHi"
.LASF4:
	.string	"signed char"
.LASF60:
	.string	"bz_stream"
.LASF100:
	.string	"rfreq"
.LASF2:
	.string	"short unsigned int"
.LASF81:
	.string	"nblock"
.LASF122:
	.string	"ftabCopy"
.LASF156:
	.string	"BZ2_blockSort"
.LASF54:
	.string	"total_out_lo32"
.LASF27:
	.string	"_chain"
.LASF29:
	.string	"_flags2"
.LASF31:
	.string	"_cur_column"
.LASF116:
	.string	"zztmp"
.LASF112:
	.string	"ltLo"
.LASF9:
	.string	"__off64_t"
.LASF42:
	.string	"_unused2"
.LASF21:
	.string	"_IO_buf_base"
.LASF88:
	.string	"bsBuff"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
