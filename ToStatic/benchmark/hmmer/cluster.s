	.file	"cluster.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 cluster.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
.LC0:
	.string	"cluster.c"
.LC2:
	.string	"AllocPhylo() failed"
	.text
	.globl	Cluster
	.type	Cluster, @function
Cluster:
.LFB2:
	.file 1 "cluster.c"
	.loc 1 149 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$120, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)	# dmx, dmx
	movl	%esi, -108(%rbp)	# N, N
	movl	%edx, -112(%rbp)	# mode, mode
	movq	%rcx, -120(%rbp)	# ret_tree, ret_tree
	.loc 1 168 0
	movl	-108(%rbp), %eax	# N, tmp628
	cltq
	salq	$3, %rax	#, D.6582
	movq	%rax, %rdx	# D.6582,
	movl	$168, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, -56(%rbp)	# tmp629, mx
	.loc 1 169 0
	movl	$0, -92(%rbp)	#, i
	jmp	.L2	#
.L5:
	.loc 1 171 0
	movl	-92(%rbp), %eax	# i, tmp630
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6582
	movq	-56(%rbp), %rax	# mx, tmp631
	leaq	(%rdx,%rax), %rbx	#, D.6583
	movl	-108(%rbp), %eax	# N, tmp632
	cltq
	salq	$2, %rax	#, D.6582
	movq	%rax, %rdx	# D.6582,
	movl	$171, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, (%rbx)	# D.6584, *_36
	.loc 1 172 0
	movl	$0, -88(%rbp)	#, j
	jmp	.L3	#
.L4:
	.loc 1 173 0 discriminator 2
	movl	-92(%rbp), %eax	# i, tmp633
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6582
	movq	-56(%rbp), %rax	# mx, tmp634
	addq	%rdx, %rax	# D.6582, D.6583
	movq	(%rax), %rax	# *_43, D.6585
	movl	-88(%rbp), %edx	# j, tmp635
	movslq	%edx, %rdx	# tmp635, D.6582
	salq	$2, %rdx	#, D.6582
	addq	%rax, %rdx	# D.6585, D.6585
	movl	-92(%rbp), %eax	# i, tmp636
	cltq
	leaq	0(,%rax,8), %rcx	#, D.6582
	movq	-104(%rbp), %rax	# dmx, tmp637
	addq	%rcx, %rax	# D.6582, D.6583
	movq	(%rax), %rax	# *_51, D.6585
	movl	-88(%rbp), %ecx	# j, tmp638
	movslq	%ecx, %rcx	# tmp638, D.6582
	salq	$2, %rcx	#, D.6582
	addq	%rcx, %rax	# D.6582, D.6585
	movl	(%rax), %eax	# *_55, D.6586
	movl	%eax, (%rdx)	# D.6586, *_47
	.loc 1 172 0 discriminator 2
	addl	$1, -88(%rbp)	#, j
.L3:
	.loc 1 172 0 is_stmt 0 discriminator 1
	movl	-88(%rbp), %eax	# j, tmp639
	cmpl	-108(%rbp), %eax	# N, tmp639
	jl	.L4	#,
	.loc 1 169 0 is_stmt 1
	addl	$1, -92(%rbp)	#, i
.L2:
	.loc 1 169 0 is_stmt 0 discriminator 1
	movl	-92(%rbp), %eax	# i, tmp640
	cmpl	-108(%rbp), %eax	# N, tmp640
	jl	.L5	#,
	.loc 1 176 0 is_stmt 1
	movl	-108(%rbp), %eax	# N, tmp641
	cltq
	salq	$2, %rax	#, D.6582
	movq	%rax, %rdx	# D.6582,
	movl	$176, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, -48(%rbp)	# tmp642, coord
	.loc 1 177 0
	movl	-108(%rbp), %eax	# N, tmp643
	subl	$1, %eax	#, D.6587
	cltq
	salq	$2, %rax	#, D.6582
	movq	%rax, %rdx	# D.6582,
	movl	$177, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, -40(%rbp)	# tmp644, diff
	.loc 1 179 0
	movl	$0, -72(%rbp)	#, col
	jmp	.L6	#
.L7:
	.loc 1 179 0 is_stmt 0 discriminator 2
	movl	-72(%rbp), %eax	# col, tmp645
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6582
	movq	-48(%rbp), %rax	# coord, tmp646
	addq	%rax, %rdx	# tmp646, D.6588
	movl	-72(%rbp), %eax	# col, tmp647
	movl	%eax, (%rdx)	# tmp647, *_69
	addl	$1, -72(%rbp)	#, col
.L6:
	.loc 1 179 0 discriminator 1
	movl	-72(%rbp), %eax	# col, tmp648
	cmpl	-108(%rbp), %eax	# N, tmp648
	jl	.L7	#,
	.loc 1 180 0 is_stmt 1
	movl	$0, -92(%rbp)	#, i
	jmp	.L8	#
.L9:
	.loc 1 180 0 is_stmt 0 discriminator 2
	movl	-92(%rbp), %eax	# i, tmp649
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6582
	movq	-40(%rbp), %rax	# diff, tmp650
	addq	%rax, %rdx	# tmp650, D.6585
	movl	.LC1(%rip), %eax	#, tmp651
	movl	%eax, (%rdx)	# tmp651, *_75
	addl	$1, -92(%rbp)	#, i
.L8:
	.loc 1 180 0 discriminator 1
	movl	-108(%rbp), %eax	# N, tmp652
	subl	$1, %eax	#, D.6587
	cmpl	-92(%rbp), %eax	# i, D.6587
	jg	.L9	#,
	.loc 1 183 0 is_stmt 1
	movl	-108(%rbp), %eax	# N, tmp653
	movl	%eax, %edi	# tmp653,
	call	AllocPhylo	#
	movq	%rax, -32(%rbp)	# tmp654, tree
	cmpq	$0, -32(%rbp)	#, tree
	jne	.L10	#,
	.loc 1 183 0 is_stmt 0 discriminator 1
	movl	$.LC2, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L10:
	.loc 1 190 0 is_stmt 1
	movl	$0, -88(%rbp)	#, j
	.loc 1 191 0
	movl	-108(%rbp), %eax	# N, tmp655
	movl	%eax, -80(%rbp)	# tmp655, Np
	jmp	.L11	#
.L53:
	.loc 1 194 0
	movl	.LC3(%rip), %eax	#, tmp656
	movl	%eax, -68(%rbp)	# tmp656, min
	.loc 1 195 0
	movl	$0, -76(%rbp)	#, row
	jmp	.L12	#
.L17:
	.loc 1 196 0
	movl	-76(%rbp), %eax	# row, tmp660
	addl	$1, %eax	#, tmp659
	movl	%eax, -72(%rbp)	# tmp659, col
	jmp	.L13	#
.L16:
	.loc 1 197 0
	movl	-76(%rbp), %eax	# row, tmp661
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6582
	movq	-56(%rbp), %rax	# mx, tmp662
	addq	%rdx, %rax	# D.6582, D.6583
	movq	(%rax), %rax	# *_85, D.6585
	movl	-72(%rbp), %edx	# col, tmp663
	movslq	%edx, %rdx	# tmp663, D.6582
	salq	$2, %rdx	#, D.6582
	addq	%rdx, %rax	# D.6582, D.6585
	movss	(%rax), %xmm1	# *_89, D.6586
	movss	-68(%rbp), %xmm0	# min, tmp664
	ucomiss	%xmm1, %xmm0	# D.6586, tmp664
	jbe	.L14	#,
	.loc 1 199 0
	movl	-76(%rbp), %eax	# row, tmp665
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6582
	movq	-56(%rbp), %rax	# mx, tmp666
	addq	%rdx, %rax	# D.6582, D.6583
	movq	(%rax), %rax	# *_93, D.6585
	movl	-72(%rbp), %edx	# col, tmp667
	movslq	%edx, %rdx	# tmp667, D.6582
	salq	$2, %rdx	#, D.6582
	addq	%rdx, %rax	# D.6582, D.6585
	movl	(%rax), %eax	# *_97, tmp668
	movl	%eax, -68(%rbp)	# tmp668, min
	.loc 1 200 0
	movl	-76(%rbp), %eax	# row, tmp669
	movl	%eax, -92(%rbp)	# tmp669, i
	.loc 1 201 0
	movl	-72(%rbp), %eax	# col, tmp670
	movl	%eax, -88(%rbp)	# tmp670, j
.L14:
	.loc 1 196 0
	addl	$1, -72(%rbp)	#, col
.L13:
	.loc 1 196 0 is_stmt 0 discriminator 1
	movl	-72(%rbp), %eax	# col, tmp671
	cmpl	-80(%rbp), %eax	# Np, tmp671
	jl	.L16	#,
	.loc 1 195 0 is_stmt 1
	addl	$1, -76(%rbp)	#, row
.L12:
	.loc 1 195 0 is_stmt 0 discriminator 1
	movl	-76(%rbp), %eax	# row, tmp672
	cmpl	-80(%rbp), %eax	# Np, tmp672
	jl	.L17	#,
	.loc 1 208 0 is_stmt 1
	movl	-80(%rbp), %eax	# Np, tmp673
	movslq	%eax, %rdx	# tmp673, D.6582
	movq	%rdx, %rax	# D.6582, tmp674
	salq	$2, %rax	#, tmp674
	addq	%rdx, %rax	# D.6582, tmp674
	salq	$3, %rax	#, tmp675
	leaq	-80(%rax), %rdx	#, D.6589
	movq	-32(%rbp), %rax	# tree, tmp676
	addq	%rax, %rdx	# tmp676, D.6590
	movl	-92(%rbp), %eax	# i, tmp677
	cltq
	leaq	0(,%rax,4), %rcx	#, D.6582
	movq	-48(%rbp), %rax	# coord, tmp678
	addq	%rcx, %rax	# D.6582, D.6588
	movl	(%rax), %eax	# *_109, D.6587
	movl	%eax, 4(%rdx)	# D.6587, _106->left
	.loc 1 209 0
	movl	-80(%rbp), %eax	# Np, tmp679
	movslq	%eax, %rdx	# tmp679, D.6582
	movq	%rdx, %rax	# D.6582, tmp680
	salq	$2, %rax	#, tmp680
	addq	%rdx, %rax	# D.6582, tmp680
	salq	$3, %rax	#, tmp681
	leaq	-80(%rax), %rdx	#, D.6589
	movq	-32(%rbp), %rax	# tree, tmp682
	addq	%rax, %rdx	# tmp682, D.6590
	movl	-88(%rbp), %eax	# j, tmp683
	cltq
	leaq	0(,%rax,4), %rcx	#, D.6582
	movq	-48(%rbp), %rax	# coord, tmp684
	addq	%rcx, %rax	# D.6582, D.6588
	movl	(%rax), %eax	# *_117, D.6587
	movl	%eax, 8(%rdx)	# D.6587, _114->right
	.loc 1 210 0
	movl	-92(%rbp), %eax	# i, tmp685
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6582
	movq	-48(%rbp), %rax	# coord, tmp686
	addq	%rdx, %rax	# D.6582, D.6588
	movl	(%rax), %eax	# *_121, D.6587
	cmpl	-108(%rbp), %eax	# N, D.6587
	jl	.L18	#,
	.loc 1 210 0 is_stmt 0 discriminator 1
	movl	-92(%rbp), %eax	# i, tmp687
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6582
	movq	-48(%rbp), %rax	# coord, tmp688
	addq	%rdx, %rax	# D.6582, D.6588
	movl	(%rax), %eax	# *_125, D.6587
	subl	-108(%rbp), %eax	# N, D.6587
	movslq	%eax, %rdx	# D.6587, D.6582
	movq	%rdx, %rax	# D.6582, tmp689
	salq	$2, %rax	#, tmp689
	addq	%rdx, %rax	# D.6582, tmp689
	salq	$3, %rax	#, tmp690
	movq	%rax, %rdx	# tmp689, D.6582
	movq	-32(%rbp), %rax	# tree, tmp691
	addq	%rdx, %rax	# D.6582, D.6590
	movl	-80(%rbp), %edx	# Np, tmp692
	movl	-108(%rbp), %ecx	# N, tmp693
	addl	%ecx, %edx	# tmp693, D.6587
	subl	$2, %edx	#, D.6587
	movl	%edx, (%rax)	# D.6587, _130->parent
.L18:
	.loc 1 211 0 is_stmt 1
	movl	-88(%rbp), %eax	# j, tmp694
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6582
	movq	-48(%rbp), %rax	# coord, tmp695
	addq	%rdx, %rax	# D.6582, D.6588
	movl	(%rax), %eax	# *_135, D.6587
	cmpl	-108(%rbp), %eax	# N, D.6587
	jl	.L19	#,
	.loc 1 211 0 is_stmt 0 discriminator 1
	movl	-88(%rbp), %eax	# j, tmp696
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6582
	movq	-48(%rbp), %rax	# coord, tmp697
	addq	%rdx, %rax	# D.6582, D.6588
	movl	(%rax), %eax	# *_139, D.6587
	subl	-108(%rbp), %eax	# N, D.6587
	movslq	%eax, %rdx	# D.6587, D.6582
	movq	%rdx, %rax	# D.6582, tmp698
	salq	$2, %rax	#, tmp698
	addq	%rdx, %rax	# D.6582, tmp698
	salq	$3, %rax	#, tmp699
	movq	%rax, %rdx	# tmp698, D.6582
	movq	-32(%rbp), %rax	# tree, tmp700
	addq	%rdx, %rax	# D.6582, D.6590
	movl	-80(%rbp), %edx	# Np, tmp701
	movl	-108(%rbp), %ecx	# N, tmp702
	addl	%ecx, %edx	# tmp702, D.6587
	subl	$2, %edx	#, D.6587
	movl	%edx, (%rax)	# D.6587, _144->parent
.L19:
	.loc 1 214 0 is_stmt 1
	movl	-80(%rbp), %eax	# Np, tmp703
	cltq
	salq	$2, %rax	#, D.6582
	leaq	-8(%rax), %rdx	#, D.6589
	movq	-40(%rbp), %rax	# diff, tmp704
	leaq	(%rdx,%rax), %rcx	#, D.6585
	movl	-80(%rbp), %eax	# Np, tmp705
	movslq	%eax, %rdx	# tmp705, D.6582
	movq	%rdx, %rax	# D.6582, tmp706
	salq	$2, %rax	#, tmp706
	addq	%rdx, %rax	# D.6582, tmp706
	salq	$3, %rax	#, tmp707
	leaq	-80(%rax), %rdx	#, D.6589
	movq	-32(%rbp), %rax	# tree, tmp708
	addq	%rax, %rdx	# tmp708, D.6590
	movl	-68(%rbp), %eax	# min, tmp709
	movl	%eax, 12(%rdx)	# tmp709, _154->diff
	movl	12(%rdx), %eax	# _154->diff, D.6586
	movl	%eax, (%rcx)	# D.6586, *_150
	.loc 1 217 0
	movl	-80(%rbp), %eax	# Np, tmp710
	movslq	%eax, %rdx	# tmp710, D.6582
	movq	%rdx, %rax	# D.6582, tmp711
	salq	$2, %rax	#, tmp711
	addq	%rdx, %rax	# D.6582, tmp711
	salq	$3, %rax	#, tmp712
	leaq	-80(%rax), %rdx	#, D.6589
	movq	-32(%rbp), %rax	# tree, tmp713
	leaq	(%rdx,%rax), %rcx	#, D.6590
	movl	-80(%rbp), %eax	# Np, tmp714
	movslq	%eax, %rdx	# tmp714, D.6582
	movq	%rdx, %rax	# D.6582, tmp715
	salq	$2, %rax	#, tmp715
	addq	%rdx, %rax	# D.6582, tmp715
	salq	$3, %rax	#, tmp716
	leaq	-80(%rax), %rdx	#, D.6589
	movq	-32(%rbp), %rax	# tree, tmp717
	addq	%rax, %rdx	# tmp717, D.6590
	movl	-68(%rbp), %eax	# min, tmp718
	movl	%eax, 20(%rdx)	# tmp718, _163->rblen
	movl	20(%rdx), %eax	# _163->rblen, D.6586
	movl	%eax, 16(%rcx)	# D.6586, _159->lblen
	.loc 1 218 0
	movl	-92(%rbp), %eax	# i, tmp719
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6582
	movq	-48(%rbp), %rax	# coord, tmp720
	addq	%rdx, %rax	# D.6582, D.6588
	movl	(%rax), %eax	# *_167, D.6587
	cmpl	-108(%rbp), %eax	# N, D.6587
	jl	.L20	#,
	.loc 1 218 0 is_stmt 0 discriminator 1
	movl	-80(%rbp), %eax	# Np, tmp721
	movslq	%eax, %rdx	# tmp721, D.6582
	movq	%rdx, %rax	# D.6582, tmp722
	salq	$2, %rax	#, tmp722
	addq	%rdx, %rax	# D.6582, tmp722
	salq	$3, %rax	#, tmp723
	leaq	-80(%rax), %rdx	#, D.6589
	movq	-32(%rbp), %rax	# tree, tmp724
	leaq	(%rdx,%rax), %rcx	#, D.6590
	movl	-80(%rbp), %eax	# Np, tmp725
	movslq	%eax, %rdx	# tmp725, D.6582
	movq	%rdx, %rax	# D.6582, tmp726
	salq	$2, %rax	#, tmp726
	addq	%rdx, %rax	# D.6582, tmp726
	salq	$3, %rax	#, tmp727
	leaq	-80(%rax), %rdx	#, D.6589
	movq	-32(%rbp), %rax	# tree, tmp728
	addq	%rdx, %rax	# D.6589, D.6590
	movss	16(%rax), %xmm0	# _176->lblen, D.6586
	movl	-92(%rbp), %eax	# i, tmp729
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6582
	movq	-48(%rbp), %rax	# coord, tmp730
	addq	%rdx, %rax	# D.6582, D.6588
	movl	(%rax), %eax	# *_180, D.6587
	subl	-108(%rbp), %eax	# N, D.6587
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6582
	movq	-40(%rbp), %rax	# diff, tmp731
	addq	%rdx, %rax	# D.6582, D.6585
	movss	(%rax), %xmm1	# *_185, D.6586
	subss	%xmm1, %xmm0	# D.6586, D.6586
	movss	%xmm0, 16(%rcx)	# D.6586, _172->lblen
.L20:
	.loc 1 219 0 is_stmt 1
	movl	-88(%rbp), %eax	# j, tmp732
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6582
	movq	-48(%rbp), %rax	# coord, tmp733
	addq	%rdx, %rax	# D.6582, D.6588
	movl	(%rax), %eax	# *_190, D.6587
	cmpl	-108(%rbp), %eax	# N, D.6587
	jl	.L21	#,
	.loc 1 219 0 is_stmt 0 discriminator 1
	movl	-80(%rbp), %eax	# Np, tmp734
	movslq	%eax, %rdx	# tmp734, D.6582
	movq	%rdx, %rax	# D.6582, tmp735
	salq	$2, %rax	#, tmp735
	addq	%rdx, %rax	# D.6582, tmp735
	salq	$3, %rax	#, tmp736
	leaq	-80(%rax), %rdx	#, D.6589
	movq	-32(%rbp), %rax	# tree, tmp737
	leaq	(%rdx,%rax), %rcx	#, D.6590
	movl	-80(%rbp), %eax	# Np, tmp738
	movslq	%eax, %rdx	# tmp738, D.6582
	movq	%rdx, %rax	# D.6582, tmp739
	salq	$2, %rax	#, tmp739
	addq	%rdx, %rax	# D.6582, tmp739
	salq	$3, %rax	#, tmp740
	leaq	-80(%rax), %rdx	#, D.6589
	movq	-32(%rbp), %rax	# tree, tmp741
	addq	%rdx, %rax	# D.6589, D.6590
	movss	20(%rax), %xmm0	# _199->rblen, D.6586
	movl	-88(%rbp), %eax	# j, tmp742
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6582
	movq	-48(%rbp), %rax	# coord, tmp743
	addq	%rdx, %rax	# D.6582, D.6588
	movl	(%rax), %eax	# *_203, D.6587
	subl	-108(%rbp), %eax	# N, D.6587
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6582
	movq	-40(%rbp), %rax	# diff, tmp744
	addq	%rdx, %rax	# D.6582, D.6585
	movss	(%rax), %xmm1	# *_208, D.6586
	subss	%xmm1, %xmm0	# D.6586, D.6586
	movss	%xmm0, 20(%rcx)	# D.6586, _195->rblen
.L21:
	.loc 1 222 0 is_stmt 1
	movl	-92(%rbp), %eax	# i, tmp745
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6582
	movq	-48(%rbp), %rax	# coord, tmp746
	addq	%rdx, %rax	# D.6582, D.6588
	movl	(%rax), %eax	# *_213, D.6587
	cmpl	-108(%rbp), %eax	# N, D.6587
	jge	.L22	#,
	.loc 1 224 0
	movl	-80(%rbp), %eax	# Np, tmp747
	movslq	%eax, %rdx	# tmp747, D.6582
	movq	%rdx, %rax	# D.6582, tmp748
	salq	$2, %rax	#, tmp748
	addq	%rdx, %rax	# D.6582, tmp748
	salq	$3, %rax	#, tmp749
	leaq	-80(%rax), %rdx	#, D.6589
	movq	-32(%rbp), %rax	# tree, tmp750
	addq	%rdx, %rax	# D.6589, D.6590
	movl	32(%rax), %edx	# _218->incnum, D.6587
	addl	$1, %edx	#, D.6587
	movl	%edx, 32(%rax)	# D.6587, _218->incnum
	.loc 1 225 0
	movl	-80(%rbp), %eax	# Np, tmp751
	movslq	%eax, %rdx	# tmp751, D.6582
	movq	%rdx, %rax	# D.6582, tmp752
	salq	$2, %rax	#, tmp752
	addq	%rdx, %rax	# D.6582, tmp752
	salq	$3, %rax	#, tmp753
	leaq	-80(%rax), %rdx	#, D.6589
	movq	-32(%rbp), %rax	# tree, tmp754
	addq	%rdx, %rax	# D.6589, D.6590
	movq	24(%rax), %rdx	# _224->is_in, D.6591
	movl	-92(%rbp), %eax	# i, tmp755
	cltq
	leaq	0(,%rax,4), %rcx	#, D.6582
	movq	-48(%rbp), %rax	# coord, tmp756
	addq	%rcx, %rax	# D.6582, D.6588
	movl	(%rax), %eax	# *_228, D.6587
	cltq
	addq	%rdx, %rax	# D.6591, D.6591
	movb	$1, (%rax)	#, *_231
	jmp	.L23	#
.L22:
	.loc 1 229 0
	movl	-80(%rbp), %eax	# Np, tmp757
	movslq	%eax, %rdx	# tmp757, D.6582
	movq	%rdx, %rax	# D.6582, tmp758
	salq	$2, %rax	#, tmp758
	addq	%rdx, %rax	# D.6582, tmp758
	salq	$3, %rax	#, tmp759
	leaq	-80(%rax), %rdx	#, D.6589
	movq	-32(%rbp), %rax	# tree, tmp760
	leaq	(%rdx,%rax), %rcx	#, D.6590
	movl	-80(%rbp), %eax	# Np, tmp761
	movslq	%eax, %rdx	# tmp761, D.6582
	movq	%rdx, %rax	# D.6582, tmp762
	salq	$2, %rax	#, tmp762
	addq	%rdx, %rax	# D.6582, tmp762
	salq	$3, %rax	#, tmp763
	leaq	-80(%rax), %rdx	#, D.6589
	movq	-32(%rbp), %rax	# tree, tmp764
	addq	%rdx, %rax	# D.6589, D.6590
	movl	32(%rax), %esi	# _239->incnum, D.6587
	movl	-92(%rbp), %eax	# i, tmp765
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6582
	movq	-48(%rbp), %rax	# coord, tmp766
	addq	%rdx, %rax	# D.6582, D.6588
	movl	(%rax), %eax	# *_243, D.6587
	subl	-108(%rbp), %eax	# N, D.6587
	movslq	%eax, %rdx	# D.6587, D.6582
	movq	%rdx, %rax	# D.6582, tmp767
	salq	$2, %rax	#, tmp767
	addq	%rdx, %rax	# D.6582, tmp767
	salq	$3, %rax	#, tmp768
	movq	%rax, %rdx	# tmp767, D.6582
	movq	-32(%rbp), %rax	# tree, tmp769
	addq	%rdx, %rax	# D.6582, D.6590
	movl	32(%rax), %eax	# _248->incnum, D.6587
	addl	%esi, %eax	# D.6587, D.6587
	movl	%eax, 32(%rcx)	# D.6587, _235->incnum
	.loc 1 230 0
	movl	$0, -84(%rbp)	#, idx
	jmp	.L24	#
.L25:
	.loc 1 231 0 discriminator 2
	movl	-80(%rbp), %eax	# Np, tmp770
	movslq	%eax, %rdx	# tmp770, D.6582
	movq	%rdx, %rax	# D.6582, tmp771
	salq	$2, %rax	#, tmp771
	addq	%rdx, %rax	# D.6582, tmp771
	salq	$3, %rax	#, tmp772
	leaq	-80(%rax), %rdx	#, D.6589
	movq	-32(%rbp), %rax	# tree, tmp773
	addq	%rdx, %rax	# D.6589, D.6590
	movq	24(%rax), %rdx	# _255->is_in, D.6591
	movl	-84(%rbp), %eax	# idx, tmp774
	cltq
	leaq	(%rdx,%rax), %rcx	#, D.6591
	movl	-80(%rbp), %eax	# Np, tmp775
	movslq	%eax, %rdx	# tmp775, D.6582
	movq	%rdx, %rax	# D.6582, tmp776
	salq	$2, %rax	#, tmp776
	addq	%rdx, %rax	# D.6582, tmp776
	salq	$3, %rax	#, tmp777
	leaq	-80(%rax), %rdx	#, D.6589
	movq	-32(%rbp), %rax	# tree, tmp778
	addq	%rdx, %rax	# D.6589, D.6590
	movq	24(%rax), %rdx	# _262->is_in, D.6591
	movl	-84(%rbp), %eax	# idx, tmp779
	cltq
	addq	%rdx, %rax	# D.6591, D.6591
	movzbl	(%rax), %esi	# *_265, D.6592
	movl	-92(%rbp), %eax	# i, tmp780
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6582
	movq	-48(%rbp), %rax	# coord, tmp781
	addq	%rdx, %rax	# D.6582, D.6588
	movl	(%rax), %eax	# *_269, D.6587
	subl	-108(%rbp), %eax	# N, D.6587
	movslq	%eax, %rdx	# D.6587, D.6582
	movq	%rdx, %rax	# D.6582, tmp782
	salq	$2, %rax	#, tmp782
	addq	%rdx, %rax	# D.6582, tmp782
	salq	$3, %rax	#, tmp783
	movq	%rax, %rdx	# tmp782, D.6582
	movq	-32(%rbp), %rax	# tree, tmp784
	addq	%rdx, %rax	# D.6582, D.6590
	movq	24(%rax), %rdx	# _274->is_in, D.6591
	movl	-84(%rbp), %eax	# idx, tmp785
	cltq
	addq	%rdx, %rax	# D.6591, D.6591
	movzbl	(%rax), %eax	# *_277, D.6592
	orl	%esi, %eax	# D.6592, D.6593
	movb	%al, (%rcx)	# D.6593, *_258
	.loc 1 230 0 discriminator 2
	addl	$1, -84(%rbp)	#, idx
.L24:
	.loc 1 230 0 is_stmt 0 discriminator 1
	movl	-84(%rbp), %eax	# idx, tmp786
	cmpl	-108(%rbp), %eax	# N, tmp786
	jl	.L25	#,
.L23:
	.loc 1 234 0 is_stmt 1
	movl	-88(%rbp), %eax	# j, tmp787
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6582
	movq	-48(%rbp), %rax	# coord, tmp788
	addq	%rdx, %rax	# D.6582, D.6588
	movl	(%rax), %eax	# *_283, D.6587
	cmpl	-108(%rbp), %eax	# N, D.6587
	jge	.L26	#,
	.loc 1 236 0
	movl	-80(%rbp), %eax	# Np, tmp789
	movslq	%eax, %rdx	# tmp789, D.6582
	movq	%rdx, %rax	# D.6582, tmp790
	salq	$2, %rax	#, tmp790
	addq	%rdx, %rax	# D.6582, tmp790
	salq	$3, %rax	#, tmp791
	leaq	-80(%rax), %rdx	#, D.6589
	movq	-32(%rbp), %rax	# tree, tmp792
	addq	%rdx, %rax	# D.6589, D.6590
	movl	32(%rax), %edx	# _288->incnum, D.6587
	addl	$1, %edx	#, D.6587
	movl	%edx, 32(%rax)	# D.6587, _288->incnum
	.loc 1 237 0
	movl	-80(%rbp), %eax	# Np, tmp793
	movslq	%eax, %rdx	# tmp793, D.6582
	movq	%rdx, %rax	# D.6582, tmp794
	salq	$2, %rax	#, tmp794
	addq	%rdx, %rax	# D.6582, tmp794
	salq	$3, %rax	#, tmp795
	leaq	-80(%rax), %rdx	#, D.6589
	movq	-32(%rbp), %rax	# tree, tmp796
	addq	%rdx, %rax	# D.6589, D.6590
	movq	24(%rax), %rdx	# _294->is_in, D.6591
	movl	-88(%rbp), %eax	# j, tmp797
	cltq
	leaq	0(,%rax,4), %rcx	#, D.6582
	movq	-48(%rbp), %rax	# coord, tmp798
	addq	%rcx, %rax	# D.6582, D.6588
	movl	(%rax), %eax	# *_298, D.6587
	cltq
	addq	%rdx, %rax	# D.6591, D.6591
	movb	$1, (%rax)	#, *_301
	jmp	.L27	#
.L26:
	.loc 1 241 0
	movl	-80(%rbp), %eax	# Np, tmp799
	movslq	%eax, %rdx	# tmp799, D.6582
	movq	%rdx, %rax	# D.6582, tmp800
	salq	$2, %rax	#, tmp800
	addq	%rdx, %rax	# D.6582, tmp800
	salq	$3, %rax	#, tmp801
	leaq	-80(%rax), %rdx	#, D.6589
	movq	-32(%rbp), %rax	# tree, tmp802
	leaq	(%rdx,%rax), %rcx	#, D.6590
	movl	-80(%rbp), %eax	# Np, tmp803
	movslq	%eax, %rdx	# tmp803, D.6582
	movq	%rdx, %rax	# D.6582, tmp804
	salq	$2, %rax	#, tmp804
	addq	%rdx, %rax	# D.6582, tmp804
	salq	$3, %rax	#, tmp805
	leaq	-80(%rax), %rdx	#, D.6589
	movq	-32(%rbp), %rax	# tree, tmp806
	addq	%rdx, %rax	# D.6589, D.6590
	movl	32(%rax), %esi	# _309->incnum, D.6587
	movl	-88(%rbp), %eax	# j, tmp807
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6582
	movq	-48(%rbp), %rax	# coord, tmp808
	addq	%rdx, %rax	# D.6582, D.6588
	movl	(%rax), %eax	# *_313, D.6587
	subl	-108(%rbp), %eax	# N, D.6587
	movslq	%eax, %rdx	# D.6587, D.6582
	movq	%rdx, %rax	# D.6582, tmp809
	salq	$2, %rax	#, tmp809
	addq	%rdx, %rax	# D.6582, tmp809
	salq	$3, %rax	#, tmp810
	movq	%rax, %rdx	# tmp809, D.6582
	movq	-32(%rbp), %rax	# tree, tmp811
	addq	%rdx, %rax	# D.6582, D.6590
	movl	32(%rax), %eax	# _318->incnum, D.6587
	addl	%esi, %eax	# D.6587, D.6587
	movl	%eax, 32(%rcx)	# D.6587, _305->incnum
	.loc 1 242 0
	movl	$0, -84(%rbp)	#, idx
	jmp	.L28	#
.L29:
	.loc 1 243 0 discriminator 2
	movl	-80(%rbp), %eax	# Np, tmp812
	movslq	%eax, %rdx	# tmp812, D.6582
	movq	%rdx, %rax	# D.6582, tmp813
	salq	$2, %rax	#, tmp813
	addq	%rdx, %rax	# D.6582, tmp813
	salq	$3, %rax	#, tmp814
	leaq	-80(%rax), %rdx	#, D.6589
	movq	-32(%rbp), %rax	# tree, tmp815
	addq	%rdx, %rax	# D.6589, D.6590
	movq	24(%rax), %rdx	# _325->is_in, D.6591
	movl	-84(%rbp), %eax	# idx, tmp816
	cltq
	leaq	(%rdx,%rax), %rcx	#, D.6591
	movl	-80(%rbp), %eax	# Np, tmp817
	movslq	%eax, %rdx	# tmp817, D.6582
	movq	%rdx, %rax	# D.6582, tmp818
	salq	$2, %rax	#, tmp818
	addq	%rdx, %rax	# D.6582, tmp818
	salq	$3, %rax	#, tmp819
	leaq	-80(%rax), %rdx	#, D.6589
	movq	-32(%rbp), %rax	# tree, tmp820
	addq	%rdx, %rax	# D.6589, D.6590
	movq	24(%rax), %rdx	# _332->is_in, D.6591
	movl	-84(%rbp), %eax	# idx, tmp821
	cltq
	addq	%rdx, %rax	# D.6591, D.6591
	movzbl	(%rax), %esi	# *_335, D.6592
	movl	-88(%rbp), %eax	# j, tmp822
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6582
	movq	-48(%rbp), %rax	# coord, tmp823
	addq	%rdx, %rax	# D.6582, D.6588
	movl	(%rax), %eax	# *_339, D.6587
	subl	-108(%rbp), %eax	# N, D.6587
	movslq	%eax, %rdx	# D.6587, D.6582
	movq	%rdx, %rax	# D.6582, tmp824
	salq	$2, %rax	#, tmp824
	addq	%rdx, %rax	# D.6582, tmp824
	salq	$3, %rax	#, tmp825
	movq	%rax, %rdx	# tmp824, D.6582
	movq	-32(%rbp), %rax	# tree, tmp826
	addq	%rdx, %rax	# D.6582, D.6590
	movq	24(%rax), %rdx	# _344->is_in, D.6591
	movl	-84(%rbp), %eax	# idx, tmp827
	cltq
	addq	%rdx, %rax	# D.6591, D.6591
	movzbl	(%rax), %eax	# *_347, D.6592
	orl	%esi, %eax	# D.6592, D.6593
	movb	%al, (%rcx)	# D.6593, *_328
	.loc 1 242 0 discriminator 2
	addl	$1, -84(%rbp)	#, idx
.L28:
	.loc 1 242 0 is_stmt 0 discriminator 1
	movl	-84(%rbp), %eax	# idx, tmp828
	cmpl	-108(%rbp), %eax	# N, tmp828
	jl	.L29	#,
.L27:
	.loc 1 252 0 is_stmt 1
	movl	-80(%rbp), %eax	# Np, tmp829
	subl	$1, %eax	#, D.6587
	cmpl	-92(%rbp), %eax	# i, D.6587
	je	.L30	#,
	.loc 1 252 0 is_stmt 0 discriminator 1
	movl	-80(%rbp), %eax	# Np, tmp830
	subl	$2, %eax	#, D.6587
	cmpl	-88(%rbp), %eax	# j, D.6587
	jne	.L31	#,
.L30:
	.loc 1 253 0 is_stmt 1
	movl	-88(%rbp), %eax	# j, tmp831
	movl	%eax, -64(%rbp)	# tmp831, swapfoo
	movl	-92(%rbp), %eax	# i, tmp832
	movl	%eax, -88(%rbp)	# tmp832, j
	movl	-64(%rbp), %eax	# swapfoo, tmp833
	movl	%eax, -92(%rbp)	# tmp833, i
.L31:
	.loc 1 255 0
	movl	-80(%rbp), %eax	# Np, tmp834
	subl	$2, %eax	#, D.6587
	cmpl	-92(%rbp), %eax	# i, D.6587
	je	.L32	#,
	.loc 1 258 0
	movl	-80(%rbp), %eax	# Np, tmp835
	cltq
	salq	$3, %rax	#, D.6582
	leaq	-16(%rax), %rdx	#, D.6589
	movq	-56(%rbp), %rax	# mx, tmp836
	addq	%rdx, %rax	# D.6589, D.6583
	movq	(%rax), %rax	# *_360, tmp837
	movq	%rax, -24(%rbp)	# tmp837, trow
	movl	-80(%rbp), %eax	# Np, tmp838
	cltq
	salq	$3, %rax	#, D.6582
	leaq	-16(%rax), %rdx	#, D.6589
	movq	-56(%rbp), %rax	# mx, tmp839
	addq	%rax, %rdx	# tmp839, D.6583
	movl	-92(%rbp), %eax	# i, tmp840
	cltq
	leaq	0(,%rax,8), %rcx	#, D.6582
	movq	-56(%rbp), %rax	# mx, tmp841
	addq	%rcx, %rax	# D.6582, D.6583
	movq	(%rax), %rax	# *_368, D.6585
	movq	%rax, (%rdx)	# D.6585, *_365
	movl	-92(%rbp), %eax	# i, tmp842
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6582
	movq	-56(%rbp), %rax	# mx, tmp843
	addq	%rax, %rdx	# tmp843, D.6583
	movq	-24(%rbp), %rax	# trow, tmp844
	movq	%rax, (%rdx)	# tmp844, *_372
	.loc 1 260 0
	movl	$0, -76(%rbp)	#, row
	jmp	.L33	#
.L34:
	.loc 1 262 0 discriminator 2
	movl	-76(%rbp), %eax	# row, tmp845
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6582
	movq	-56(%rbp), %rax	# mx, tmp846
	addq	%rdx, %rax	# D.6582, D.6583
	movq	(%rax), %rax	# *_376, D.6585
	movl	-80(%rbp), %edx	# Np, tmp847
	movslq	%edx, %rdx	# tmp847, D.6582
	salq	$2, %rdx	#, D.6582
	subq	$8, %rdx	#, D.6589
	addq	%rdx, %rax	# D.6589, D.6585
	movl	(%rax), %eax	# *_381, tmp848
	movl	%eax, -60(%rbp)	# tmp848, tcol
	.loc 1 263 0 discriminator 2
	movl	-76(%rbp), %eax	# row, tmp849
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6582
	movq	-56(%rbp), %rax	# mx, tmp850
	addq	%rdx, %rax	# D.6582, D.6583
	movq	(%rax), %rax	# *_385, D.6585
	movl	-80(%rbp), %edx	# Np, tmp851
	movslq	%edx, %rdx	# tmp851, D.6582
	salq	$2, %rdx	#, D.6582
	subq	$8, %rdx	#, D.6589
	addq	%rax, %rdx	# D.6585, D.6585
	movl	-76(%rbp), %eax	# row, tmp852
	cltq
	leaq	0(,%rax,8), %rcx	#, D.6582
	movq	-56(%rbp), %rax	# mx, tmp853
	addq	%rcx, %rax	# D.6582, D.6583
	movq	(%rax), %rax	# *_393, D.6585
	movl	-92(%rbp), %ecx	# i, tmp854
	movslq	%ecx, %rcx	# tmp854, D.6582
	salq	$2, %rcx	#, D.6582
	addq	%rcx, %rax	# D.6582, D.6585
	movl	(%rax), %eax	# *_397, D.6586
	movl	%eax, (%rdx)	# D.6586, *_390
	.loc 1 264 0 discriminator 2
	movl	-76(%rbp), %eax	# row, tmp855
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6582
	movq	-56(%rbp), %rax	# mx, tmp856
	addq	%rdx, %rax	# D.6582, D.6583
	movq	(%rax), %rax	# *_401, D.6585
	movl	-92(%rbp), %edx	# i, tmp857
	movslq	%edx, %rdx	# tmp857, D.6582
	salq	$2, %rdx	#, D.6582
	addq	%rax, %rdx	# D.6585, D.6585
	movl	-60(%rbp), %eax	# tcol, tmp858
	movl	%eax, (%rdx)	# tmp858, *_405
	.loc 1 260 0 discriminator 2
	addl	$1, -76(%rbp)	#, row
.L33:
	.loc 1 260 0 is_stmt 0 discriminator 1
	movl	-76(%rbp), %eax	# row, tmp859
	cmpl	-80(%rbp), %eax	# Np, tmp859
	jl	.L34	#,
	.loc 1 267 0 is_stmt 1
	movl	-80(%rbp), %eax	# Np, tmp860
	cltq
	salq	$2, %rax	#, D.6582
	leaq	-8(%rax), %rdx	#, D.6589
	movq	-48(%rbp), %rax	# coord, tmp861
	addq	%rdx, %rax	# D.6589, D.6588
	movl	(%rax), %eax	# *_410, tmp862
	movl	%eax, -64(%rbp)	# tmp862, swapfoo
	movl	-80(%rbp), %eax	# Np, tmp863
	cltq
	salq	$2, %rax	#, D.6582
	leaq	-8(%rax), %rdx	#, D.6589
	movq	-48(%rbp), %rax	# coord, tmp864
	addq	%rax, %rdx	# tmp864, D.6588
	movl	-92(%rbp), %eax	# i, tmp865
	cltq
	leaq	0(,%rax,4), %rcx	#, D.6582
	movq	-48(%rbp), %rax	# coord, tmp866
	addq	%rcx, %rax	# D.6582, D.6588
	movl	(%rax), %eax	# *_418, D.6587
	movl	%eax, (%rdx)	# D.6587, *_415
	movl	-92(%rbp), %eax	# i, tmp867
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6582
	movq	-48(%rbp), %rax	# coord, tmp868
	addq	%rax, %rdx	# tmp868, D.6588
	movl	-64(%rbp), %eax	# swapfoo, tmp869
	movl	%eax, (%rdx)	# tmp869, *_422
.L32:
	.loc 1 270 0
	movl	-80(%rbp), %eax	# Np, tmp870
	subl	$1, %eax	#, D.6587
	cmpl	-88(%rbp), %eax	# j, D.6587
	je	.L35	#,
	.loc 1 273 0
	movl	-80(%rbp), %eax	# Np, tmp871
	cltq
	salq	$3, %rax	#, D.6582
	leaq	-8(%rax), %rdx	#, D.6589
	movq	-56(%rbp), %rax	# mx, tmp872
	addq	%rdx, %rax	# D.6589, D.6583
	movq	(%rax), %rax	# *_427, tmp873
	movq	%rax, -24(%rbp)	# tmp873, trow
	movl	-80(%rbp), %eax	# Np, tmp874
	cltq
	salq	$3, %rax	#, D.6582
	leaq	-8(%rax), %rdx	#, D.6589
	movq	-56(%rbp), %rax	# mx, tmp875
	addq	%rax, %rdx	# tmp875, D.6583
	movl	-88(%rbp), %eax	# j, tmp876
	cltq
	leaq	0(,%rax,8), %rcx	#, D.6582
	movq	-56(%rbp), %rax	# mx, tmp877
	addq	%rcx, %rax	# D.6582, D.6583
	movq	(%rax), %rax	# *_435, D.6585
	movq	%rax, (%rdx)	# D.6585, *_432
	movl	-88(%rbp), %eax	# j, tmp878
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6582
	movq	-56(%rbp), %rax	# mx, tmp879
	addq	%rax, %rdx	# tmp879, D.6583
	movq	-24(%rbp), %rax	# trow, tmp880
	movq	%rax, (%rdx)	# tmp880, *_439
	.loc 1 275 0
	movl	$0, -76(%rbp)	#, row
	jmp	.L36	#
.L37:
	.loc 1 277 0 discriminator 2
	movl	-76(%rbp), %eax	# row, tmp881
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6582
	movq	-56(%rbp), %rax	# mx, tmp882
	addq	%rdx, %rax	# D.6582, D.6583
	movq	(%rax), %rax	# *_443, D.6585
	movl	-80(%rbp), %edx	# Np, tmp883
	movslq	%edx, %rdx	# tmp883, D.6582
	salq	$2, %rdx	#, D.6582
	subq	$4, %rdx	#, D.6589
	addq	%rdx, %rax	# D.6589, D.6585
	movl	(%rax), %eax	# *_448, tmp884
	movl	%eax, -60(%rbp)	# tmp884, tcol
	.loc 1 278 0 discriminator 2
	movl	-76(%rbp), %eax	# row, tmp885
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6582
	movq	-56(%rbp), %rax	# mx, tmp886
	addq	%rdx, %rax	# D.6582, D.6583
	movq	(%rax), %rax	# *_452, D.6585
	movl	-80(%rbp), %edx	# Np, tmp887
	movslq	%edx, %rdx	# tmp887, D.6582
	salq	$2, %rdx	#, D.6582
	subq	$4, %rdx	#, D.6589
	addq	%rax, %rdx	# D.6585, D.6585
	movl	-76(%rbp), %eax	# row, tmp888
	cltq
	leaq	0(,%rax,8), %rcx	#, D.6582
	movq	-56(%rbp), %rax	# mx, tmp889
	addq	%rcx, %rax	# D.6582, D.6583
	movq	(%rax), %rax	# *_460, D.6585
	movl	-88(%rbp), %ecx	# j, tmp890
	movslq	%ecx, %rcx	# tmp890, D.6582
	salq	$2, %rcx	#, D.6582
	addq	%rcx, %rax	# D.6582, D.6585
	movl	(%rax), %eax	# *_464, D.6586
	movl	%eax, (%rdx)	# D.6586, *_457
	.loc 1 279 0 discriminator 2
	movl	-76(%rbp), %eax	# row, tmp891
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6582
	movq	-56(%rbp), %rax	# mx, tmp892
	addq	%rdx, %rax	# D.6582, D.6583
	movq	(%rax), %rax	# *_468, D.6585
	movl	-88(%rbp), %edx	# j, tmp893
	movslq	%edx, %rdx	# tmp893, D.6582
	salq	$2, %rdx	#, D.6582
	addq	%rax, %rdx	# D.6585, D.6585
	movl	-60(%rbp), %eax	# tcol, tmp894
	movl	%eax, (%rdx)	# tmp894, *_472
	.loc 1 275 0 discriminator 2
	addl	$1, -76(%rbp)	#, row
.L36:
	.loc 1 275 0 is_stmt 0 discriminator 1
	movl	-76(%rbp), %eax	# row, tmp895
	cmpl	-80(%rbp), %eax	# Np, tmp895
	jl	.L37	#,
	.loc 1 282 0 is_stmt 1
	movl	-80(%rbp), %eax	# Np, tmp896
	cltq
	salq	$2, %rax	#, D.6582
	leaq	-4(%rax), %rdx	#, D.6589
	movq	-48(%rbp), %rax	# coord, tmp897
	addq	%rdx, %rax	# D.6589, D.6588
	movl	(%rax), %eax	# *_477, tmp898
	movl	%eax, -64(%rbp)	# tmp898, swapfoo
	movl	-80(%rbp), %eax	# Np, tmp899
	cltq
	salq	$2, %rax	#, D.6582
	leaq	-4(%rax), %rdx	#, D.6589
	movq	-48(%rbp), %rax	# coord, tmp900
	addq	%rax, %rdx	# tmp900, D.6588
	movl	-88(%rbp), %eax	# j, tmp901
	cltq
	leaq	0(,%rax,4), %rcx	#, D.6582
	movq	-48(%rbp), %rax	# coord, tmp902
	addq	%rcx, %rax	# D.6582, D.6588
	movl	(%rax), %eax	# *_485, D.6587
	movl	%eax, (%rdx)	# D.6587, *_482
	movl	-88(%rbp), %eax	# j, tmp903
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6582
	movq	-48(%rbp), %rax	# coord, tmp904
	addq	%rax, %rdx	# tmp904, D.6588
	movl	-64(%rbp), %eax	# swapfoo, tmp905
	movl	%eax, (%rdx)	# tmp905, *_489
.L35:
	.loc 1 287 0
	movl	-80(%rbp), %eax	# Np, tmp909
	subl	$2, %eax	#, tmp908
	movl	%eax, -92(%rbp)	# tmp908, i
	.loc 1 288 0
	movl	-80(%rbp), %eax	# Np, tmp913
	subl	$1, %eax	#, tmp912
	movl	%eax, -88(%rbp)	# tmp912, j
	.loc 1 290 0
	movl	$0, -72(%rbp)	#, col
	jmp	.L38	#
.L50:
	.loc 1 292 0
	movl	-112(%rbp), %eax	# mode, mode
	cmpl	$1, %eax	#, mode
	je	.L40	#,
	cmpl	$1, %eax	#, mode
	jb	.L41	#,
	cmpl	$2, %eax	#, mode
	je	.L42	#,
	jmp	.L58	#
.L41:
	.loc 1 293 0
	movl	-92(%rbp), %eax	# i, tmp915
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6582
	movq	-56(%rbp), %rax	# mx, tmp916
	addq	%rdx, %rax	# D.6582, D.6583
	movq	(%rax), %rax	# *_496, D.6585
	movl	-72(%rbp), %edx	# col, tmp917
	movslq	%edx, %rdx	# tmp917, D.6582
	salq	$2, %rdx	#, D.6582
	addq	%rdx, %rax	# D.6582, D.6585
	movl	-92(%rbp), %edx	# i, tmp918
	movslq	%edx, %rdx	# tmp918, D.6582
	leaq	0(,%rdx,8), %rcx	#, D.6582
	movq	-56(%rbp), %rdx	# mx, tmp919
	addq	%rcx, %rdx	# D.6582, D.6583
	movq	(%rdx), %rdx	# *_503, D.6585
	movl	-72(%rbp), %ecx	# col, tmp920
	movslq	%ecx, %rcx	# tmp920, D.6582
	salq	$2, %rcx	#, D.6582
	addq	%rcx, %rdx	# D.6582, D.6585
	movss	(%rdx), %xmm1	# *_507, D.6586
	movl	-88(%rbp), %edx	# j, tmp921
	movslq	%edx, %rdx	# tmp921, D.6582
	leaq	0(,%rdx,8), %rcx	#, D.6582
	movq	-56(%rbp), %rdx	# mx, tmp922
	addq	%rcx, %rdx	# D.6582, D.6583
	movq	(%rdx), %rdx	# *_511, D.6585
	movl	-72(%rbp), %ecx	# col, tmp923
	movslq	%ecx, %rcx	# tmp923, D.6582
	salq	$2, %rcx	#, D.6582
	addq	%rcx, %rdx	# D.6582, D.6585
	movss	(%rdx), %xmm0	# *_515, D.6586
	addss	%xmm1, %xmm0	# D.6586, D.6586
	movss	.LC4(%rip), %xmm1	#, tmp924
	divss	%xmm1, %xmm0	# tmp924, D.6586
	movss	%xmm0, (%rax)	# D.6586, *_500
	jmp	.L43	#
.L42:
	.loc 1 294 0
	movl	-92(%rbp), %eax	# i, tmp925
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6582
	movq	-56(%rbp), %rax	# mx, tmp926
	addq	%rdx, %rax	# D.6582, D.6583
	movq	(%rax), %rax	# *_521, D.6585
	movl	-72(%rbp), %edx	# col, tmp927
	movslq	%edx, %rdx	# tmp927, D.6582
	salq	$2, %rdx	#, D.6582
	addq	%rax, %rdx	# D.6585, D.6585
	movl	-92(%rbp), %eax	# i, tmp928
	cltq
	leaq	0(,%rax,8), %rcx	#, D.6582
	movq	-56(%rbp), %rax	# mx, tmp929
	addq	%rcx, %rax	# D.6582, D.6583
	movq	(%rax), %rax	# *_528, D.6585
	movl	-72(%rbp), %ecx	# col, tmp930
	movslq	%ecx, %rcx	# tmp930, D.6582
	salq	$2, %rcx	#, D.6582
	addq	%rcx, %rax	# D.6582, D.6585
	movss	(%rax), %xmm1	# *_532, D.6586
	movl	-88(%rbp), %eax	# j, tmp931
	cltq
	leaq	0(,%rax,8), %rcx	#, D.6582
	movq	-56(%rbp), %rax	# mx, tmp932
	addq	%rcx, %rax	# D.6582, D.6583
	movq	(%rax), %rax	# *_536, D.6585
	movl	-72(%rbp), %ecx	# col, tmp933
	movslq	%ecx, %rcx	# tmp933, D.6582
	salq	$2, %rcx	#, D.6582
	addq	%rcx, %rax	# D.6582, D.6585
	movss	(%rax), %xmm0	# *_540, D.6586
	ucomiss	%xmm1, %xmm0	# D.6586, D.6586
	jbe	.L59	#,
	.loc 1 294 0 is_stmt 0 discriminator 1
	movl	-92(%rbp), %eax	# i, tmp934
	cltq
	leaq	0(,%rax,8), %rcx	#, D.6582
	movq	-56(%rbp), %rax	# mx, tmp935
	addq	%rcx, %rax	# D.6582, D.6583
	movq	(%rax), %rax	# *_544, D.6585
	movl	-72(%rbp), %ecx	# col, tmp936
	movslq	%ecx, %rcx	# tmp936, D.6582
	salq	$2, %rcx	#, D.6582
	addq	%rcx, %rax	# D.6582, D.6585
	movl	(%rax), %eax	# *_548, iftmp.0
	jmp	.L46	#
.L59:
	.loc 1 294 0 discriminator 2
	movl	-88(%rbp), %eax	# j, tmp937
	cltq
	leaq	0(,%rax,8), %rcx	#, D.6582
	movq	-56(%rbp), %rax	# mx, tmp938
	addq	%rcx, %rax	# D.6582, D.6583
	movq	(%rax), %rax	# *_552, D.6585
	movl	-72(%rbp), %ecx	# col, tmp939
	movslq	%ecx, %rcx	# tmp939, D.6582
	salq	$2, %rcx	#, D.6582
	addq	%rcx, %rax	# D.6582, D.6585
	movl	(%rax), %eax	# *_556, iftmp.0
.L46:
	.loc 1 294 0 discriminator 3
	movl	%eax, (%rdx)	# iftmp.0, *_525
	jmp	.L43	#
.L40:
	.loc 1 295 0 is_stmt 1
	movl	-92(%rbp), %eax	# i, tmp940
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6582
	movq	-56(%rbp), %rax	# mx, tmp941
	addq	%rdx, %rax	# D.6582, D.6583
	movq	(%rax), %rax	# *_560, D.6585
	movl	-72(%rbp), %edx	# col, tmp942
	movslq	%edx, %rdx	# tmp942, D.6582
	salq	$2, %rdx	#, D.6582
	addq	%rax, %rdx	# D.6585, D.6585
	movl	-92(%rbp), %eax	# i, tmp943
	cltq
	leaq	0(,%rax,8), %rcx	#, D.6582
	movq	-56(%rbp), %rax	# mx, tmp944
	addq	%rcx, %rax	# D.6582, D.6583
	movq	(%rax), %rax	# *_567, D.6585
	movl	-72(%rbp), %ecx	# col, tmp945
	movslq	%ecx, %rcx	# tmp945, D.6582
	salq	$2, %rcx	#, D.6582
	addq	%rcx, %rax	# D.6582, D.6585
	movss	(%rax), %xmm0	# *_571, D.6586
	movl	-88(%rbp), %eax	# j, tmp946
	cltq
	leaq	0(,%rax,8), %rcx	#, D.6582
	movq	-56(%rbp), %rax	# mx, tmp947
	addq	%rcx, %rax	# D.6582, D.6583
	movq	(%rax), %rax	# *_575, D.6585
	movl	-72(%rbp), %ecx	# col, tmp948
	movslq	%ecx, %rcx	# tmp948, D.6582
	salq	$2, %rcx	#, D.6582
	addq	%rcx, %rax	# D.6582, D.6585
	movss	(%rax), %xmm1	# *_579, D.6586
	ucomiss	%xmm1, %xmm0	# D.6586, D.6586
	jbe	.L60	#,
	.loc 1 295 0 is_stmt 0 discriminator 1
	movl	-92(%rbp), %eax	# i, tmp949
	cltq
	leaq	0(,%rax,8), %rcx	#, D.6582
	movq	-56(%rbp), %rax	# mx, tmp950
	addq	%rcx, %rax	# D.6582, D.6583
	movq	(%rax), %rax	# *_583, D.6585
	movl	-72(%rbp), %ecx	# col, tmp951
	movslq	%ecx, %rcx	# tmp951, D.6582
	salq	$2, %rcx	#, D.6582
	addq	%rcx, %rax	# D.6582, D.6585
	movl	(%rax), %eax	# *_587, iftmp.1
	jmp	.L49	#
.L60:
	.loc 1 295 0 discriminator 2
	movl	-88(%rbp), %eax	# j, tmp952
	cltq
	leaq	0(,%rax,8), %rcx	#, D.6582
	movq	-56(%rbp), %rax	# mx, tmp953
	addq	%rcx, %rax	# D.6582, D.6583
	movq	(%rax), %rax	# *_591, D.6585
	movl	-72(%rbp), %ecx	# col, tmp954
	movslq	%ecx, %rcx	# tmp954, D.6582
	salq	$2, %rcx	#, D.6582
	addq	%rcx, %rax	# D.6582, D.6585
	movl	(%rax), %eax	# *_595, iftmp.1
.L49:
	.loc 1 295 0 discriminator 3
	movl	%eax, (%rdx)	# iftmp.1, *_564
	jmp	.L43	#
.L58:
	.loc 1 296 0 is_stmt 1
	movl	-92(%rbp), %eax	# i, tmp955
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6582
	movq	-56(%rbp), %rax	# mx, tmp956
	addq	%rdx, %rax	# D.6582, D.6583
	movq	(%rax), %rax	# *_599, D.6585
	movl	-72(%rbp), %edx	# col, tmp957
	movslq	%edx, %rdx	# tmp957, D.6582
	salq	$2, %rdx	#, D.6582
	addq	%rdx, %rax	# D.6582, D.6585
	movl	-92(%rbp), %edx	# i, tmp958
	movslq	%edx, %rdx	# tmp958, D.6582
	leaq	0(,%rdx,8), %rcx	#, D.6582
	movq	-56(%rbp), %rdx	# mx, tmp959
	addq	%rcx, %rdx	# D.6582, D.6583
	movq	(%rdx), %rdx	# *_606, D.6585
	movl	-72(%rbp), %ecx	# col, tmp960
	movslq	%ecx, %rcx	# tmp960, D.6582
	salq	$2, %rcx	#, D.6582
	addq	%rcx, %rdx	# D.6582, D.6585
	movss	(%rdx), %xmm1	# *_610, D.6586
	movl	-88(%rbp), %edx	# j, tmp961
	movslq	%edx, %rdx	# tmp961, D.6582
	leaq	0(,%rdx,8), %rcx	#, D.6582
	movq	-56(%rbp), %rdx	# mx, tmp962
	addq	%rcx, %rdx	# D.6582, D.6583
	movq	(%rdx), %rdx	# *_614, D.6585
	movl	-72(%rbp), %ecx	# col, tmp963
	movslq	%ecx, %rcx	# tmp963, D.6582
	salq	$2, %rcx	#, D.6582
	addq	%rcx, %rdx	# D.6582, D.6585
	movss	(%rdx), %xmm0	# *_618, D.6586
	addss	%xmm1, %xmm0	# D.6586, D.6586
	movss	.LC4(%rip), %xmm1	#, tmp964
	divss	%xmm1, %xmm0	# tmp964, D.6586
	movss	%xmm0, (%rax)	# D.6586, *_603
	nop
.L43:
	.loc 1 290 0
	addl	$1, -72(%rbp)	#, col
.L38:
	.loc 1 290 0 is_stmt 0 discriminator 1
	movl	-72(%rbp), %eax	# col, tmp965
	cmpl	-80(%rbp), %eax	# Np, tmp965
	jl	.L50	#,
	.loc 1 300 0 is_stmt 1
	movl	$0, -72(%rbp)	#, col
	jmp	.L51	#
.L52:
	.loc 1 301 0 discriminator 2
	movl	-72(%rbp), %eax	# col, tmp966
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6582
	movq	-56(%rbp), %rax	# mx, tmp967
	addq	%rdx, %rax	# D.6582, D.6583
	movq	(%rax), %rax	# *_626, D.6585
	movl	-92(%rbp), %edx	# i, tmp968
	movslq	%edx, %rdx	# tmp968, D.6582
	salq	$2, %rdx	#, D.6582
	addq	%rax, %rdx	# D.6585, D.6585
	movl	-92(%rbp), %eax	# i, tmp969
	cltq
	leaq	0(,%rax,8), %rcx	#, D.6582
	movq	-56(%rbp), %rax	# mx, tmp970
	addq	%rcx, %rax	# D.6582, D.6583
	movq	(%rax), %rax	# *_633, D.6585
	movl	-72(%rbp), %ecx	# col, tmp971
	movslq	%ecx, %rcx	# tmp971, D.6582
	salq	$2, %rcx	#, D.6582
	addq	%rcx, %rax	# D.6582, D.6585
	movl	(%rax), %eax	# *_637, D.6586
	movl	%eax, (%rdx)	# D.6586, *_630
	.loc 1 300 0 discriminator 2
	addl	$1, -72(%rbp)	#, col
.L51:
	.loc 1 300 0 is_stmt 0 discriminator 1
	movl	-72(%rbp), %eax	# col, tmp972
	cmpl	-80(%rbp), %eax	# Np, tmp972
	jl	.L52	#,
	.loc 1 303 0 is_stmt 1
	movl	-80(%rbp), %eax	# Np, tmp973
	cltq
	salq	$2, %rax	#, D.6582
	leaq	-8(%rax), %rdx	#, D.6589
	movq	-48(%rbp), %rax	# coord, tmp974
	addq	%rdx, %rax	# D.6589, D.6588
	movl	-108(%rbp), %edx	# N, tmp975
	movl	-80(%rbp), %ecx	# Np, tmp976
	addl	%ecx, %edx	# tmp976, D.6587
	subl	$2, %edx	#, D.6587
	movl	%edx, (%rax)	# D.6587, *_643
	.loc 1 191 0
	subl	$1, -80(%rbp)	#, Np
.L11:
	.loc 1 191 0 is_stmt 0 discriminator 1
	cmpl	$1, -80(%rbp)	#, Np
	jg	.L53	#,
	.loc 1 309 0 is_stmt 1
	movl	-108(%rbp), %edx	# N, tmp977
	movq	-56(%rbp), %rax	# mx, tmp978
	movl	%edx, %esi	# tmp977,
	movq	%rax, %rdi	# tmp978,
	call	Free2DArray	#
	.loc 1 310 0
	movq	-48(%rbp), %rax	# coord, tmp979
	movq	%rax, %rdi	# tmp979,
	call	free	#
	.loc 1 311 0
	movq	-40(%rbp), %rax	# diff, tmp980
	movq	%rax, %rdi	# tmp980,
	call	free	#
	.loc 1 312 0
	movq	-120(%rbp), %rax	# ret_tree, tmp981
	movq	-32(%rbp), %rdx	# tree, tmp982
	movq	%rdx, (%rax)	# tmp982, *ret_tree_647(D)
	.loc 1 313 0
	movl	$1, %eax	#, D.6587
	.loc 1 314 0
	addq	$120, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	Cluster, .-Cluster
	.globl	AllocPhylo
	.type	AllocPhylo, @function
AllocPhylo:
.LFB3:
	.loc 1 330 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -36(%rbp)	# N, N
	.loc 1 334 0
	movl	-36(%rbp), %eax	# N, tmp95
	subl	$1, %eax	#, D.6597
	movslq	%eax, %rdx	# D.6597, D.6598
	movq	%rdx, %rax	# D.6598, tmp96
	salq	$2, %rax	#, tmp96
	addq	%rdx, %rax	# D.6598, tmp96
	salq	$3, %rax	#, tmp97
	movq	%rax, %rdi	# D.6598,
	call	malloc	#
	movq	%rax, -24(%rbp)	# tmp98, tree
	cmpq	$0, -24(%rbp)	#, tree
	jne	.L62	#,
	.loc 1 335 0
	movl	$0, %eax	#, D.6596
	jmp	.L63	#
.L62:
	.loc 1 337 0
	movl	$0, -28(%rbp)	#, i
	jmp	.L64	#
.L66:
	.loc 1 339 0
	movl	-28(%rbp), %eax	# i, tmp99
	movslq	%eax, %rdx	# tmp99, D.6598
	movq	%rdx, %rax	# D.6598, tmp100
	salq	$2, %rax	#, tmp100
	addq	%rdx, %rax	# D.6598, tmp100
	salq	$3, %rax	#, tmp101
	movq	%rax, %rdx	# tmp100, D.6598
	movq	-24(%rbp), %rax	# tree, tmp102
	addq	%rax, %rdx	# tmp102, D.6596
	movl	.LC1(%rip), %eax	#, tmp103
	movl	%eax, 12(%rdx)	# tmp103, _13->diff
	.loc 1 340 0
	movl	-28(%rbp), %eax	# i, tmp104
	movslq	%eax, %rdx	# tmp104, D.6598
	movq	%rdx, %rax	# D.6598, tmp105
	salq	$2, %rax	#, tmp105
	addq	%rdx, %rax	# D.6598, tmp105
	salq	$3, %rax	#, tmp106
	movq	%rax, %rdx	# tmp105, D.6598
	movq	-24(%rbp), %rax	# tree, tmp107
	leaq	(%rdx,%rax), %rcx	#, D.6596
	movl	-28(%rbp), %eax	# i, tmp108
	movslq	%eax, %rdx	# tmp108, D.6598
	movq	%rdx, %rax	# D.6598, tmp109
	salq	$2, %rax	#, tmp109
	addq	%rdx, %rax	# D.6598, tmp109
	salq	$3, %rax	#, tmp110
	movq	%rax, %rdx	# tmp109, D.6598
	movq	-24(%rbp), %rax	# tree, tmp111
	addq	%rax, %rdx	# tmp111, D.6596
	movl	.LC1(%rip), %eax	#, tmp112
	movl	%eax, 20(%rdx)	# tmp112, _19->rblen
	movl	20(%rdx), %eax	# _19->rblen, D.6599
	movl	%eax, 16(%rcx)	# D.6599, _16->lblen
	.loc 1 341 0
	movl	-28(%rbp), %eax	# i, tmp113
	movslq	%eax, %rdx	# tmp113, D.6598
	movq	%rdx, %rax	# D.6598, tmp114
	salq	$2, %rax	#, tmp114
	addq	%rdx, %rax	# D.6598, tmp114
	salq	$3, %rax	#, tmp115
	movq	%rax, %rdx	# tmp114, D.6598
	movq	-24(%rbp), %rax	# tree, tmp116
	leaq	(%rdx,%rax), %rsi	#, D.6596
	movl	-28(%rbp), %eax	# i, tmp117
	movslq	%eax, %rdx	# tmp117, D.6598
	movq	%rdx, %rax	# D.6598, tmp118
	salq	$2, %rax	#, tmp118
	addq	%rdx, %rax	# D.6598, tmp118
	salq	$3, %rax	#, tmp119
	movq	%rax, %rdx	# tmp118, D.6598
	movq	-24(%rbp), %rax	# tree, tmp120
	addq	%rax, %rdx	# tmp120, D.6596
	movl	-28(%rbp), %eax	# i, tmp121
	movslq	%eax, %rcx	# tmp121, D.6598
	movq	%rcx, %rax	# D.6598, tmp122
	salq	$2, %rax	#, tmp122
	addq	%rcx, %rax	# D.6598, tmp122
	salq	$3, %rax	#, tmp123
	movq	%rax, %rcx	# tmp122, D.6598
	movq	-24(%rbp), %rax	# tree, tmp124
	addq	%rcx, %rax	# D.6598, D.6596
	movl	$-1, (%rax)	#, _29->parent
	movl	(%rax), %eax	# _29->parent, D.6597
	movl	%eax, 8(%rdx)	# D.6597, _26->right
	movl	8(%rdx), %eax	# _26->right, D.6597
	movl	%eax, 4(%rsi)	# D.6597, _23->left
	.loc 1 342 0
	movl	-28(%rbp), %eax	# i, tmp125
	movslq	%eax, %rdx	# tmp125, D.6598
	movq	%rdx, %rax	# D.6598, tmp126
	salq	$2, %rax	#, tmp126
	addq	%rdx, %rax	# D.6598, tmp126
	salq	$3, %rax	#, tmp127
	movq	%rax, %rdx	# tmp126, D.6598
	movq	-24(%rbp), %rax	# tree, tmp128
	addq	%rdx, %rax	# D.6598, D.6596
	movl	$0, 32(%rax)	#, _34->incnum
	.loc 1 343 0
	movl	-28(%rbp), %eax	# i, tmp129
	movslq	%eax, %rdx	# tmp129, D.6598
	movq	%rdx, %rax	# D.6598, tmp130
	salq	$2, %rax	#, tmp130
	addq	%rdx, %rax	# D.6598, tmp130
	salq	$3, %rax	#, tmp131
	movq	%rax, %rdx	# tmp130, D.6598
	movq	-24(%rbp), %rax	# tree, tmp132
	leaq	(%rdx,%rax), %rbx	#, D.6596
	movl	-36(%rbp), %eax	# N, tmp133
	cltq
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.6598,
	call	calloc	#
	movq	%rax, 24(%rbx)	# D.6600, _37->is_in
	movq	24(%rbx), %rax	# _37->is_in, D.6601
	testq	%rax, %rax	# D.6601
	jne	.L65	#,
	.loc 1 344 0
	movl	$0, %eax	#, D.6596
	jmp	.L63	#
.L65:
	.loc 1 337 0
	addl	$1, -28(%rbp)	#, i
.L64:
	.loc 1 337 0 is_stmt 0 discriminator 1
	movl	-36(%rbp), %eax	# N, tmp135
	subl	$1, %eax	#, D.6597
	cmpl	-28(%rbp), %eax	# i, D.6597
	jg	.L66	#,
	.loc 1 346 0 is_stmt 1
	movq	-24(%rbp), %rax	# tree, D.6596
.L63:
	.loc 1 347 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	AllocPhylo, .-AllocPhylo
	.globl	FreePhylo
	.type	FreePhylo, @function
FreePhylo:
.LFB4:
	.loc 1 361 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# tree, tree
	movl	%esi, -28(%rbp)	# N, N
	.loc 1 364 0
	movl	$0, -4(%rbp)	#, idx
	jmp	.L68	#
.L69:
	.loc 1 365 0 discriminator 2
	movl	-4(%rbp), %eax	# idx, tmp64
	movslq	%eax, %rdx	# tmp64, D.6603
	movq	%rdx, %rax	# D.6603, tmp65
	salq	$2, %rax	#, tmp65
	addq	%rdx, %rax	# D.6603, tmp65
	salq	$3, %rax	#, tmp66
	movq	%rax, %rdx	# tmp65, D.6603
	movq	-24(%rbp), %rax	# tree, tmp67
	addq	%rdx, %rax	# D.6603, D.6604
	movq	24(%rax), %rax	# _8->is_in, D.6605
	movq	%rax, %rdi	# D.6605,
	call	free	#
	.loc 1 364 0 discriminator 2
	addl	$1, -4(%rbp)	#, idx
.L68:
	.loc 1 364 0 is_stmt 0 discriminator 1
	movl	-28(%rbp), %eax	# N, tmp68
	subl	$1, %eax	#, D.6602
	cmpl	-4(%rbp), %eax	# idx, D.6602
	jg	.L69	#,
	.loc 1 366 0 is_stmt 1
	movq	-24(%rbp), %rax	# tree, tmp69
	movq	%rax, %rdi	# tmp69,
	call	free	#
	.loc 1 367 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	FreePhylo, .-FreePhylo
	.globl	MakeDiffMx
	.type	MakeDiffMx, @function
MakeDiffMx:
.LFB5:
	.loc 1 385 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$48, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -40(%rbp)	# aseqs, aseqs
	movl	%esi, -44(%rbp)	# num, num
	movq	%rdx, -56(%rbp)	# ret_dmx, ret_dmx
	.loc 1 391 0
	movl	-44(%rbp), %edx	# num, tmp84
	movl	-44(%rbp), %eax	# num, tmp85
	movl	%edx, %esi	# tmp84,
	movl	%eax, %edi	# tmp85,
	call	FMX2Alloc	#
	movq	%rax, -24(%rbp)	# tmp86, dmx
	.loc 1 396 0
	movl	$0, -32(%rbp)	#, i
	jmp	.L71	#
.L74:
	.loc 1 397 0
	movl	-32(%rbp), %eax	# i, tmp87
	movl	%eax, -28(%rbp)	# tmp87, j
	jmp	.L72	#
.L73:
	.loc 1 398 0 discriminator 2
	movl	-32(%rbp), %eax	# i, tmp88
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6606
	movq	-24(%rbp), %rax	# dmx, tmp89
	addq	%rdx, %rax	# D.6606, D.6607
	movq	(%rax), %rax	# *_9, D.6608
	movl	-28(%rbp), %edx	# j, tmp90
	movslq	%edx, %rdx	# tmp90, D.6606
	salq	$2, %rdx	#, D.6606
	leaq	(%rax,%rdx), %r12	#, D.6608
	movl	-28(%rbp), %eax	# j, tmp91
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6606
	movq	-24(%rbp), %rax	# dmx, tmp92
	addq	%rdx, %rax	# D.6606, D.6607
	movq	(%rax), %rax	# *_16, D.6608
	movl	-32(%rbp), %edx	# i, tmp93
	movslq	%edx, %rdx	# tmp93, D.6606
	salq	$2, %rdx	#, D.6606
	leaq	(%rax,%rdx), %rbx	#, D.6608
	movl	-28(%rbp), %eax	# j, tmp94
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6606
	movq	-40(%rbp), %rax	# aseqs, tmp95
	addq	%rdx, %rax	# D.6606, D.6609
	movq	(%rax), %rdx	# *_24, D.6610
	movl	-32(%rbp), %eax	# i, tmp96
	cltq
	leaq	0(,%rax,8), %rcx	#, D.6606
	movq	-40(%rbp), %rax	# aseqs, tmp97
	addq	%rcx, %rax	# D.6606, D.6609
	movq	(%rax), %rax	# *_28, D.6610
	movq	%rdx, %rsi	# D.6610,
	movq	%rax, %rdi	# D.6610,
	call	PairwiseIdentity	#
	movss	.LC5(%rip), %xmm1	#, tmp98
	subss	%xmm0, %xmm1	# D.6611, D.6611
	movaps	%xmm1, %xmm0	# D.6611, D.6611
	movss	%xmm0, (%rbx)	# D.6611, *_20
	movl	(%rbx), %eax	# *_20, D.6611
	movl	%eax, (%r12)	# D.6611, *_13
	.loc 1 397 0 discriminator 2
	addl	$1, -28(%rbp)	#, j
.L72:
	.loc 1 397 0 is_stmt 0 discriminator 1
	movl	-28(%rbp), %eax	# j, tmp99
	cmpl	-44(%rbp), %eax	# num, tmp99
	jl	.L73	#,
	.loc 1 396 0 is_stmt 1
	addl	$1, -32(%rbp)	#, i
.L71:
	.loc 1 396 0 is_stmt 0 discriminator 1
	movl	-32(%rbp), %eax	# i, tmp100
	cmpl	-44(%rbp), %eax	# num, tmp100
	jl	.L74	#,
	.loc 1 400 0 is_stmt 1
	movq	-56(%rbp), %rax	# ret_dmx, tmp101
	movq	-24(%rbp), %rdx	# dmx, tmp102
	movq	%rdx, (%rax)	# tmp102, *ret_dmx_35(D)
	.loc 1 401 0
	nop
	.loc 1 402 0
	addq	$48, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	MakeDiffMx, .-MakeDiffMx
	.globl	MakeIdentityMx
	.type	MakeIdentityMx, @function
MakeIdentityMx:
.LFB6:
	.loc 1 421 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$48, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -40(%rbp)	# aseqs, aseqs
	movl	%esi, -44(%rbp)	# num, num
	movq	%rdx, -56(%rbp)	# ret_imx, ret_imx
	.loc 1 427 0
	movl	-44(%rbp), %edx	# num, tmp83
	movl	-44(%rbp), %eax	# num, tmp84
	movl	%edx, %esi	# tmp83,
	movl	%eax, %edi	# tmp84,
	call	FMX2Alloc	#
	movq	%rax, -24(%rbp)	# tmp85, imx
	.loc 1 431 0
	movl	$0, -32(%rbp)	#, i
	jmp	.L77	#
.L80:
	.loc 1 432 0
	movl	-32(%rbp), %eax	# i, tmp86
	movl	%eax, -28(%rbp)	# tmp86, j
	jmp	.L78	#
.L79:
	.loc 1 433 0 discriminator 2
	movl	-32(%rbp), %eax	# i, tmp87
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6612
	movq	-24(%rbp), %rax	# imx, tmp88
	addq	%rdx, %rax	# D.6612, D.6613
	movq	(%rax), %rax	# *_9, D.6614
	movl	-28(%rbp), %edx	# j, tmp89
	movslq	%edx, %rdx	# tmp89, D.6612
	salq	$2, %rdx	#, D.6612
	leaq	(%rax,%rdx), %r12	#, D.6614
	movl	-28(%rbp), %eax	# j, tmp90
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6612
	movq	-24(%rbp), %rax	# imx, tmp91
	addq	%rdx, %rax	# D.6612, D.6613
	movq	(%rax), %rax	# *_16, D.6614
	movl	-32(%rbp), %edx	# i, tmp92
	movslq	%edx, %rdx	# tmp92, D.6612
	salq	$2, %rdx	#, D.6612
	leaq	(%rax,%rdx), %rbx	#, D.6614
	movl	-28(%rbp), %eax	# j, tmp93
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6612
	movq	-40(%rbp), %rax	# aseqs, tmp94
	addq	%rdx, %rax	# D.6612, D.6615
	movq	(%rax), %rdx	# *_24, D.6616
	movl	-32(%rbp), %eax	# i, tmp95
	cltq
	leaq	0(,%rax,8), %rcx	#, D.6612
	movq	-40(%rbp), %rax	# aseqs, tmp96
	addq	%rcx, %rax	# D.6612, D.6615
	movq	(%rax), %rax	# *_28, D.6616
	movq	%rdx, %rsi	# D.6616,
	movq	%rax, %rdi	# D.6616,
	call	PairwiseIdentity	#
	movss	%xmm0, -48(%rbp)	#, %sfp
	movl	-48(%rbp), %eax	# %sfp, D.6617
	movl	%eax, (%rbx)	# D.6617, *_20
	movl	(%rbx), %eax	# *_20, D.6617
	movl	%eax, (%r12)	# D.6617, *_13
	.loc 1 432 0 discriminator 2
	addl	$1, -28(%rbp)	#, j
.L78:
	.loc 1 432 0 is_stmt 0 discriminator 1
	movl	-28(%rbp), %eax	# j, tmp97
	cmpl	-44(%rbp), %eax	# num, tmp97
	jl	.L79	#,
	.loc 1 431 0 is_stmt 1
	addl	$1, -32(%rbp)	#, i
.L77:
	.loc 1 431 0 is_stmt 0 discriminator 1
	movl	-32(%rbp), %eax	# i, tmp98
	cmpl	-44(%rbp), %eax	# num, tmp98
	jl	.L80	#,
	.loc 1 435 0 is_stmt 1
	movq	-56(%rbp), %rax	# ret_imx, tmp99
	movq	-24(%rbp), %rdx	# imx, tmp100
	movq	%rdx, (%rax)	# tmp100, *ret_imx_34(D)
	.loc 1 436 0
	nop
	.loc 1 437 0
	addq	$48, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	MakeIdentityMx, .-MakeIdentityMx
	.section	.rodata
.LC6:
	.string	"%s:%.5f"
.LC7:
	.string	",\n"
.LC8:
	.string	");\n"
.LC9:
	.string	"):%.5f"
	.text
	.globl	PrintNewHampshireTree
	.type	PrintNewHampshireTree, @function
PrintNewHampshireTree:
.LFB7:
	.loc 1 458 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# fp, fp
	movq	%rsi, -48(%rbp)	# ainfo, ainfo
	movq	%rdx, -56(%rbp)	# tree, tree
	movl	%ecx, -60(%rbp)	# N, N
	.loc 1 464 0
	movl	-60(%rbp), %eax	# N, tmp131
	cltq
	salq	$3, %rax	#, D.6619
	subq	$4, %rax	#, D.6619
	movq	%rax, %rdx	# D.6619,
	movl	$464, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, -16(%rbp)	# tmp132, blen
	.loc 1 465 0
	call	InitIntStack	#
	movq	%rax, -8(%rbp)	# tmp133, stack
	.loc 1 466 0
	movl	-60(%rbp), %edx	# N, tmp134
	movq	-8(%rbp), %rax	# stack, tmp135
	movl	%edx, %esi	# tmp134,
	movq	%rax, %rdi	# tmp135,
	call	PushIntStack	#
	.loc 1 467 0
	movl	$0, -20(%rbp)	#, docomma
	.loc 1 475 0
	jmp	.L83	#
.L90:
	.loc 1 477 0
	movl	-24(%rbp), %eax	# code, code.2
	cmpl	-60(%rbp), %eax	# N, code.2
	jge	.L84	#,
	.loc 1 480 0
	cmpl	$0, -20(%rbp)	#, docomma
	je	.L85	#,
	.loc 1 480 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# fp, tmp136
	movq	%rax, %rsi	# tmp136,
	movl	$44, %edi	#,
	call	fputc	#
.L85:
	.loc 1 481 0 is_stmt 1
	movl	-24(%rbp), %eax	# code, code.3
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6619
	movq	-16(%rbp), %rax	# blen, tmp137
	addq	%rdx, %rax	# D.6619, D.6621
	movss	(%rax), %xmm0	# *_15, D.6622
	unpcklps	%xmm0, %xmm0	# D.6622, D.6622
	cvtps2pd	%xmm0, %xmm0	# D.6622, D.6623
	movq	-48(%rbp), %rax	# ainfo, tmp138
	movq	40(%rax), %rdx	# ainfo_18(D)->sqinfo, D.6624
	movl	-24(%rbp), %eax	# code, code.4
	cltq
	imulq	$360, %rax, %rax	#, D.6619, D.6619
	addq	%rdx, %rax	# D.6624, D.6624
	leaq	4(%rax), %rdx	#, D.6625
	movq	-40(%rbp), %rax	# fp, tmp139
	movl	$.LC6, %esi	#,
	movq	%rax, %rdi	# tmp139,
	movl	$1, %eax	#,
	call	fprintf	#
	.loc 1 482 0
	movl	$1, -20(%rbp)	#, docomma
	jmp	.L83	#
.L84:
	.loc 1 485 0
	movl	-60(%rbp), %eax	# N, tmp140
	leal	(%rax,%rax), %edx	#, D.6620
	movl	-24(%rbp), %eax	# code, code.5
	cmpl	%eax, %edx	# code.5, D.6620
	jle	.L86	#,
	.loc 1 488 0
	cmpl	$0, -20(%rbp)	#, docomma
	je	.L87	#,
	.loc 1 488 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# fp, tmp141
	movq	%rax, %rcx	# tmp141,
	movl	$2, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC7, %edi	#,
	call	fwrite	#
.L87:
	.loc 1 489 0 is_stmt 1
	movq	-40(%rbp), %rax	# fp, tmp142
	movq	%rax, %rsi	# tmp142,
	movl	$40, %edi	#,
	call	fputc	#
	.loc 1 491 0
	movl	-24(%rbp), %edx	# code, code.6
	movl	-60(%rbp), %eax	# N, tmp143
	addl	%eax, %edx	# tmp143, D.6620
	movq	-8(%rbp), %rax	# stack, tmp144
	movl	%edx, %esi	# D.6620,
	movq	%rax, %rdi	# tmp144,
	call	PushIntStack	#
	.loc 1 492 0
	movl	-24(%rbp), %eax	# code, code.7
	subl	-60(%rbp), %eax	# N, D.6620
	movslq	%eax, %rdx	# D.6620, D.6619
	movq	%rdx, %rax	# D.6619, tmp145
	salq	$2, %rax	#, tmp145
	addq	%rdx, %rax	# D.6619, tmp145
	salq	$3, %rax	#, tmp146
	movq	%rax, %rdx	# tmp145, D.6619
	movq	-56(%rbp), %rax	# tree, tmp147
	addq	%rdx, %rax	# D.6619, D.6626
	movl	8(%rax), %edx	# _35->right, D.6620
	movq	-8(%rbp), %rax	# stack, tmp148
	movl	%edx, %esi	# D.6620,
	movq	%rax, %rdi	# tmp148,
	call	PushIntStack	#
	.loc 1 493 0
	movl	-24(%rbp), %eax	# code, code.8
	subl	-60(%rbp), %eax	# N, D.6620
	movslq	%eax, %rdx	# D.6620, D.6619
	movq	%rdx, %rax	# D.6619, tmp149
	salq	$2, %rax	#, tmp149
	addq	%rdx, %rax	# D.6619, tmp149
	salq	$3, %rax	#, tmp150
	movq	%rax, %rdx	# tmp149, D.6619
	movq	-56(%rbp), %rax	# tree, tmp151
	addq	%rdx, %rax	# D.6619, D.6626
	movl	4(%rax), %edx	# _41->left, D.6620
	movq	-8(%rbp), %rax	# stack, tmp152
	movl	%edx, %esi	# D.6620,
	movq	%rax, %rdi	# tmp152,
	call	PushIntStack	#
	.loc 1 495 0
	movl	-24(%rbp), %eax	# code, code.9
	subl	-60(%rbp), %eax	# N, D.6620
	movslq	%eax, %rdx	# D.6620, D.6619
	movq	%rdx, %rax	# D.6619, tmp153
	salq	$2, %rax	#, tmp153
	addq	%rdx, %rax	# D.6619, tmp153
	salq	$3, %rax	#, tmp154
	movq	%rax, %rdx	# tmp153, D.6619
	movq	-56(%rbp), %rax	# tree, tmp155
	addq	%rdx, %rax	# D.6619, D.6626
	movl	8(%rax), %eax	# _47->right, D.6620
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6619
	movq	-16(%rbp), %rax	# blen, tmp156
	leaq	(%rdx,%rax), %rcx	#, D.6621
	movl	-24(%rbp), %eax	# code, code.10
	subl	-60(%rbp), %eax	# N, D.6620
	movslq	%eax, %rdx	# D.6620, D.6619
	movq	%rdx, %rax	# D.6619, tmp157
	salq	$2, %rax	#, tmp157
	addq	%rdx, %rax	# D.6619, tmp157
	salq	$3, %rax	#, tmp158
	movq	%rax, %rdx	# tmp157, D.6619
	movq	-56(%rbp), %rax	# tree, tmp159
	addq	%rdx, %rax	# D.6619, D.6626
	movl	20(%rax), %eax	# _56->rblen, D.6622
	movl	%eax, (%rcx)	# D.6622, *_51
	.loc 1 496 0
	movl	-24(%rbp), %eax	# code, code.11
	subl	-60(%rbp), %eax	# N, D.6620
	movslq	%eax, %rdx	# D.6620, D.6619
	movq	%rdx, %rax	# D.6619, tmp160
	salq	$2, %rax	#, tmp160
	addq	%rdx, %rax	# D.6619, tmp160
	salq	$3, %rax	#, tmp161
	movq	%rax, %rdx	# tmp160, D.6619
	movq	-56(%rbp), %rax	# tree, tmp162
	addq	%rdx, %rax	# D.6619, D.6626
	movl	4(%rax), %eax	# _62->left, D.6620
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6619
	movq	-16(%rbp), %rax	# blen, tmp163
	leaq	(%rdx,%rax), %rcx	#, D.6621
	movl	-24(%rbp), %eax	# code, code.12
	subl	-60(%rbp), %eax	# N, D.6620
	movslq	%eax, %rdx	# D.6620, D.6619
	movq	%rdx, %rax	# D.6619, tmp164
	salq	$2, %rax	#, tmp164
	addq	%rdx, %rax	# D.6619, tmp164
	salq	$3, %rax	#, tmp165
	movq	%rax, %rdx	# tmp164, D.6619
	movq	-56(%rbp), %rax	# tree, tmp166
	addq	%rdx, %rax	# D.6619, D.6626
	movl	16(%rax), %eax	# _71->lblen, D.6622
	movl	%eax, (%rcx)	# D.6622, *_66
	.loc 1 497 0
	movl	$0, -20(%rbp)	#, docomma
	jmp	.L83	#
.L86:
	.loc 1 503 0
	movl	-60(%rbp), %eax	# N, tmp167
	leal	(%rax,%rax), %edx	#, D.6620
	movl	-24(%rbp), %eax	# code, code.13
	cmpl	%eax, %edx	# code.13, D.6620
	jne	.L88	#,
	.loc 1 503 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# fp, tmp168
	movq	%rax, %rcx	# tmp168,
	movl	$3, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC8, %edi	#,
	call	fwrite	#
	jmp	.L89	#
.L88:
	.loc 1 504 0 is_stmt 1
	movl	-24(%rbp), %eax	# code, code.14
	subl	-60(%rbp), %eax	# N, D.6620
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6619
	movq	-16(%rbp), %rax	# blen, tmp169
	addq	%rdx, %rax	# D.6619, D.6621
	movss	(%rax), %xmm0	# *_80, D.6622
	unpcklps	%xmm0, %xmm0	# D.6622, D.6622
	cvtps2pd	%xmm0, %xmm0	# D.6622, D.6623
	movq	-40(%rbp), %rax	# fp, tmp170
	movl	$.LC9, %esi	#,
	movq	%rax, %rdi	# tmp170,
	movl	$1, %eax	#,
	call	fprintf	#
.L89:
	.loc 1 505 0
	movl	$1, -20(%rbp)	#, docomma
.L83:
	.loc 1 475 0 discriminator 1
	leaq	-24(%rbp), %rdx	#, tmp171
	movq	-8(%rbp), %rax	# stack, tmp172
	movq	%rdx, %rsi	# tmp171,
	movq	%rax, %rdi	# tmp172,
	call	PopIntStack	#
	testl	%eax, %eax	# D.6620
	jne	.L90	#,
	.loc 1 509 0
	movq	-8(%rbp), %rax	# stack, tmp173
	movq	%rax, %rdi	# tmp173,
	call	FreeIntStack	#
	.loc 1 510 0
	movq	-16(%rbp), %rax	# blen, tmp174
	movq	%rax, %rdi	# tmp174,
	call	free	#
	.loc 1 511 0
	nop
	.loc 1 512 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	PrintNewHampshireTree, .-PrintNewHampshireTree
	.section	.rodata
.LC10:
	.string	"Interior node %d (code %d)\n"
.LC11:
	.string	"\tParent: %d (code %d)\n"
.LC12:
	.string	"interior"
.LC13:
	.string	"\tLeft:   %d (%s) %f\n"
.LC14:
	.string	"\tRight:   %d (%s) %f\n"
.LC15:
	.string	"\tHeight:  %f\n"
.LC16:
	.string	"\tIncludes:%d seqs\n"
	.text
	.globl	PrintPhylo
	.type	PrintPhylo, @function
PrintPhylo:
.LFB8:
	.loc 1 521 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# fp, fp
	movq	%rsi, -32(%rbp)	# ainfo, ainfo
	movq	%rdx, -40(%rbp)	# tree, tree
	movl	%ecx, -44(%rbp)	# N, N
	.loc 1 524 0
	movl	$0, -4(%rbp)	#, idx
	jmp	.L93	#
.L102:
	.loc 1 526 0
	movl	-44(%rbp), %eax	# N, tmp139
	movl	-4(%rbp), %edx	# idx, tmp140
	leal	(%rdx,%rax), %ecx	#, D.6631
	movl	-4(%rbp), %edx	# idx, tmp141
	movq	-24(%rbp), %rax	# fp, tmp142
	movl	$.LC10, %esi	#,
	movq	%rax, %rdi	# tmp142,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 527 0
	movl	-4(%rbp), %eax	# idx, tmp143
	movslq	%eax, %rdx	# tmp143, D.6632
	movq	%rdx, %rax	# D.6632, tmp144
	salq	$2, %rax	#, tmp144
	addq	%rdx, %rax	# D.6632, tmp144
	salq	$3, %rax	#, tmp145
	movq	%rax, %rdx	# tmp144, D.6632
	movq	-40(%rbp), %rax	# tree, tmp146
	addq	%rdx, %rax	# D.6632, D.6633
	movl	(%rax), %ecx	# _14->parent, D.6631
	movl	-4(%rbp), %eax	# idx, tmp147
	movslq	%eax, %rdx	# tmp147, D.6632
	movq	%rdx, %rax	# D.6632, tmp148
	salq	$2, %rax	#, tmp148
	addq	%rdx, %rax	# D.6632, tmp148
	salq	$3, %rax	#, tmp149
	movq	%rax, %rdx	# tmp148, D.6632
	movq	-40(%rbp), %rax	# tree, tmp150
	addq	%rdx, %rax	# D.6632, D.6633
	movl	(%rax), %eax	# _18->parent, D.6631
	subl	-44(%rbp), %eax	# N, D.6631
	movl	%eax, %edx	# D.6631, D.6631
	movq	-24(%rbp), %rax	# fp, tmp151
	movl	$.LC11, %esi	#,
	movq	%rax, %rdi	# tmp151,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 531 0
	movl	-4(%rbp), %eax	# idx, tmp152
	movslq	%eax, %rdx	# tmp152, D.6632
	movq	%rdx, %rax	# D.6632, tmp153
	salq	$2, %rax	#, tmp153
	addq	%rdx, %rax	# D.6632, tmp153
	salq	$3, %rax	#, tmp154
	movq	%rax, %rdx	# tmp153, D.6632
	movq	-40(%rbp), %rax	# tree, tmp155
	addq	%rdx, %rax	# D.6632, D.6633
	movss	16(%rax), %xmm0	# _23->lblen, D.6634
	.loc 1 528 0
	unpcklps	%xmm0, %xmm0	# D.6634, D.6634
	cvtps2pd	%xmm0, %xmm0	# D.6634, D.6635
	.loc 1 530 0
	movl	-4(%rbp), %eax	# idx, tmp156
	movslq	%eax, %rdx	# tmp156, D.6632
	movq	%rdx, %rax	# D.6632, tmp157
	salq	$2, %rax	#, tmp157
	addq	%rdx, %rax	# D.6632, tmp157
	salq	$3, %rax	#, tmp158
	movq	%rax, %rdx	# tmp157, D.6632
	movq	-40(%rbp), %rax	# tree, tmp159
	addq	%rdx, %rax	# D.6632, D.6633
	movl	4(%rax), %eax	# _28->left, D.6631
	.loc 1 528 0
	cmpl	-44(%rbp), %eax	# N, D.6631
	jge	.L94	#,
	.loc 1 530 0
	movq	-32(%rbp), %rax	# ainfo, tmp160
	movq	40(%rax), %rcx	# ainfo_30(D)->sqinfo, D.6636
	movl	-4(%rbp), %eax	# idx, tmp161
	movslq	%eax, %rdx	# tmp161, D.6632
	movq	%rdx, %rax	# D.6632, tmp162
	salq	$2, %rax	#, tmp162
	addq	%rdx, %rax	# D.6632, tmp162
	salq	$3, %rax	#, tmp163
	movq	%rax, %rdx	# tmp162, D.6632
	movq	-40(%rbp), %rax	# tree, tmp164
	addq	%rdx, %rax	# D.6632, D.6633
	movl	4(%rax), %eax	# _34->left, D.6631
	cltq
	imulq	$360, %rax, %rax	#, D.6632, D.6632
	addq	%rcx, %rax	# D.6636, D.6636
	.loc 1 528 0
	leaq	4(%rax), %rdx	#, iftmp.15
	jmp	.L95	#
.L94:
	.loc 1 528 0 is_stmt 0 discriminator 1
	movl	$.LC12, %edx	#, iftmp.15
.L95:
	.loc 1 529 0 is_stmt 1 discriminator 2
	movl	-4(%rbp), %eax	# idx, tmp165
	movslq	%eax, %rcx	# tmp165, D.6632
	movq	%rcx, %rax	# D.6632, tmp166
	salq	$2, %rax	#, tmp166
	addq	%rcx, %rax	# D.6632, tmp166
	salq	$3, %rax	#, tmp167
	movq	%rax, %rcx	# tmp166, D.6632
	movq	-40(%rbp), %rax	# tree, tmp168
	addq	%rcx, %rax	# D.6632, D.6633
	movl	4(%rax), %eax	# _43->left, D.6631
	.loc 1 528 0 discriminator 2
	cmpl	-44(%rbp), %eax	# N, D.6631
	jge	.L96	#,
	.loc 1 529 0
	movl	-4(%rbp), %eax	# idx, tmp169
	movslq	%eax, %rcx	# tmp169, D.6632
	movq	%rcx, %rax	# D.6632, tmp170
	salq	$2, %rax	#, tmp170
	addq	%rcx, %rax	# D.6632, tmp170
	salq	$3, %rax	#, tmp171
	movq	%rax, %rcx	# tmp170, D.6632
	movq	-40(%rbp), %rax	# tree, tmp172
	addq	%rcx, %rax	# D.6632, D.6633
	movl	4(%rax), %eax	# _47->left, D.6631
	.loc 1 528 0
	subl	-44(%rbp), %eax	# N, iftmp.16
	jmp	.L97	#
.L96:
	.loc 1 529 0 discriminator 3
	movl	-4(%rbp), %eax	# idx, tmp173
	movslq	%eax, %rcx	# tmp173, D.6632
	movq	%rcx, %rax	# D.6632, tmp174
	salq	$2, %rax	#, tmp174
	addq	%rcx, %rax	# D.6632, tmp174
	salq	$3, %rax	#, tmp175
	movq	%rax, %rcx	# tmp174, D.6632
	movq	-40(%rbp), %rax	# tree, tmp176
	addq	%rcx, %rax	# D.6632, D.6633
	.loc 1 528 0 discriminator 3
	movl	4(%rax), %eax	# _52->left, iftmp.16
.L97:
	.loc 1 528 0 is_stmt 0 discriminator 4
	movq	-24(%rbp), %rdi	# fp, tmp177
	movq	%rdx, %rcx	# iftmp.15,
	movl	%eax, %edx	# iftmp.16,
	movl	$.LC13, %esi	#,
	movl	$1, %eax	#,
	call	fprintf	#
	.loc 1 535 0 is_stmt 1 discriminator 4
	movl	-4(%rbp), %eax	# idx, tmp178
	movslq	%eax, %rdx	# tmp178, D.6632
	movq	%rdx, %rax	# D.6632, tmp179
	salq	$2, %rax	#, tmp179
	addq	%rdx, %rax	# D.6632, tmp179
	salq	$3, %rax	#, tmp180
	movq	%rax, %rdx	# tmp179, D.6632
	movq	-40(%rbp), %rax	# tree, tmp181
	addq	%rdx, %rax	# D.6632, D.6633
	movss	20(%rax), %xmm0	# _56->rblen, D.6634
	.loc 1 532 0 discriminator 4
	unpcklps	%xmm0, %xmm0	# D.6634, D.6634
	cvtps2pd	%xmm0, %xmm0	# D.6634, D.6635
	.loc 1 534 0 discriminator 4
	movl	-4(%rbp), %eax	# idx, tmp182
	movslq	%eax, %rdx	# tmp182, D.6632
	movq	%rdx, %rax	# D.6632, tmp183
	salq	$2, %rax	#, tmp183
	addq	%rdx, %rax	# D.6632, tmp183
	salq	$3, %rax	#, tmp184
	movq	%rax, %rdx	# tmp183, D.6632
	movq	-40(%rbp), %rax	# tree, tmp185
	addq	%rdx, %rax	# D.6632, D.6633
	movl	8(%rax), %eax	# _61->right, D.6631
	.loc 1 532 0 discriminator 4
	cmpl	-44(%rbp), %eax	# N, D.6631
	jge	.L98	#,
	.loc 1 534 0
	movq	-32(%rbp), %rax	# ainfo, tmp186
	movq	40(%rax), %rcx	# ainfo_30(D)->sqinfo, D.6636
	movl	-4(%rbp), %eax	# idx, tmp187
	movslq	%eax, %rdx	# tmp187, D.6632
	movq	%rdx, %rax	# D.6632, tmp188
	salq	$2, %rax	#, tmp188
	addq	%rdx, %rax	# D.6632, tmp188
	salq	$3, %rax	#, tmp189
	movq	%rax, %rdx	# tmp188, D.6632
	movq	-40(%rbp), %rax	# tree, tmp190
	addq	%rdx, %rax	# D.6632, D.6633
	movl	8(%rax), %eax	# _66->right, D.6631
	cltq
	imulq	$360, %rax, %rax	#, D.6632, D.6632
	addq	%rcx, %rax	# D.6636, D.6636
	.loc 1 532 0
	leaq	4(%rax), %rdx	#, iftmp.17
	jmp	.L99	#
.L98:
	.loc 1 532 0 is_stmt 0 discriminator 1
	movl	$.LC12, %edx	#, iftmp.17
.L99:
	.loc 1 533 0 is_stmt 1 discriminator 2
	movl	-4(%rbp), %eax	# idx, tmp191
	movslq	%eax, %rcx	# tmp191, D.6632
	movq	%rcx, %rax	# D.6632, tmp192
	salq	$2, %rax	#, tmp192
	addq	%rcx, %rax	# D.6632, tmp192
	salq	$3, %rax	#, tmp193
	movq	%rax, %rcx	# tmp192, D.6632
	movq	-40(%rbp), %rax	# tree, tmp194
	addq	%rcx, %rax	# D.6632, D.6633
	movl	8(%rax), %eax	# _75->right, D.6631
	.loc 1 532 0 discriminator 2
	cmpl	-44(%rbp), %eax	# N, D.6631
	jge	.L100	#,
	.loc 1 533 0
	movl	-4(%rbp), %eax	# idx, tmp195
	movslq	%eax, %rcx	# tmp195, D.6632
	movq	%rcx, %rax	# D.6632, tmp196
	salq	$2, %rax	#, tmp196
	addq	%rcx, %rax	# D.6632, tmp196
	salq	$3, %rax	#, tmp197
	movq	%rax, %rcx	# tmp196, D.6632
	movq	-40(%rbp), %rax	# tree, tmp198
	addq	%rcx, %rax	# D.6632, D.6633
	movl	8(%rax), %eax	# _79->right, D.6631
	.loc 1 532 0
	subl	-44(%rbp), %eax	# N, iftmp.18
	jmp	.L101	#
.L100:
	.loc 1 533 0 discriminator 3
	movl	-4(%rbp), %eax	# idx, tmp199
	movslq	%eax, %rcx	# tmp199, D.6632
	movq	%rcx, %rax	# D.6632, tmp200
	salq	$2, %rax	#, tmp200
	addq	%rcx, %rax	# D.6632, tmp200
	salq	$3, %rax	#, tmp201
	movq	%rax, %rcx	# tmp200, D.6632
	movq	-40(%rbp), %rax	# tree, tmp202
	addq	%rcx, %rax	# D.6632, D.6633
	.loc 1 532 0 discriminator 3
	movl	8(%rax), %eax	# _84->right, iftmp.18
.L101:
	.loc 1 532 0 is_stmt 0 discriminator 4
	movq	-24(%rbp), %rdi	# fp, tmp203
	movq	%rdx, %rcx	# iftmp.17,
	movl	%eax, %edx	# iftmp.18,
	movl	$.LC14, %esi	#,
	movl	$1, %eax	#,
	call	fprintf	#
	.loc 1 536 0 is_stmt 1 discriminator 4
	movl	-4(%rbp), %eax	# idx, tmp204
	movslq	%eax, %rdx	# tmp204, D.6632
	movq	%rdx, %rax	# D.6632, tmp205
	salq	$2, %rax	#, tmp205
	addq	%rdx, %rax	# D.6632, tmp205
	salq	$3, %rax	#, tmp206
	movq	%rax, %rdx	# tmp205, D.6632
	movq	-40(%rbp), %rax	# tree, tmp207
	addq	%rdx, %rax	# D.6632, D.6633
	movss	12(%rax), %xmm0	# _88->diff, D.6634
	unpcklps	%xmm0, %xmm0	# D.6634, D.6634
	cvtps2pd	%xmm0, %xmm0	# D.6634, D.6635
	movq	-24(%rbp), %rax	# fp, tmp208
	movl	$.LC15, %esi	#,
	movq	%rax, %rdi	# tmp208,
	movl	$1, %eax	#,
	call	fprintf	#
	.loc 1 537 0 discriminator 4
	movl	-4(%rbp), %eax	# idx, tmp209
	movslq	%eax, %rdx	# tmp209, D.6632
	movq	%rdx, %rax	# D.6632, tmp210
	salq	$2, %rax	#, tmp210
	addq	%rdx, %rax	# D.6632, tmp210
	salq	$3, %rax	#, tmp211
	movq	%rax, %rdx	# tmp210, D.6632
	movq	-40(%rbp), %rax	# tree, tmp212
	addq	%rdx, %rax	# D.6632, D.6633
	movl	32(%rax), %edx	# _93->incnum, D.6631
	movq	-24(%rbp), %rax	# fp, tmp213
	movl	$.LC16, %esi	#,
	movq	%rax, %rdi	# tmp213,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 524 0 discriminator 4
	addl	$1, -4(%rbp)	#, idx
.L93:
	.loc 1 524 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# N, tmp214
	subl	$1, %eax	#, D.6631
	cmpl	-4(%rbp), %eax	# idx, D.6631
	jg	.L102	#,
	.loc 1 539 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	PrintPhylo, .-PrintPhylo
	.section	.rodata
	.align 4
.LC1:
	.long	0
	.align 4
.LC3:
	.long	1232348144
	.align 4
.LC4:
	.long	1073741824
	.align 4
.LC5:
	.long	1065353216
	.text
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "squid.h"
	.file 7 "msa.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x8ed
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF99
	.byte	0x1
	.long	.LASF100
	.long	.LASF101
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
	.long	.LASF102
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
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF47
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF48
	.uleb128 0x6
	.byte	0x8
	.long	0x62
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF49
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF50
	.uleb128 0xd
	.long	.LASF51
	.value	0x168
	.byte	0x6
	.byte	0x54
	.long	0x356
	.uleb128 0x8
	.long	.LASF52
	.byte	0x6
	.byte	0x55
	.long	0x62
	.byte	0
	.uleb128 0x8
	.long	.LASF53
	.byte	0x6
	.byte	0x56
	.long	0x356
	.byte	0x4
	.uleb128 0xe
	.string	"id"
	.byte	0x6
	.byte	0x57
	.long	0x356
	.byte	0x44
	.uleb128 0xe
	.string	"acc"
	.byte	0x6
	.byte	0x58
	.long	0x356
	.byte	0x84
	.uleb128 0x8
	.long	.LASF54
	.byte	0x6
	.byte	0x59
	.long	0x366
	.byte	0xc4
	.uleb128 0xf
	.string	"len"
	.byte	0x6
	.byte	0x5a
	.long	0x62
	.value	0x144
	.uleb128 0x10
	.long	.LASF55
	.byte	0x6
	.byte	0x5b
	.long	0x62
	.value	0x148
	.uleb128 0x10
	.long	.LASF56
	.byte	0x6
	.byte	0x5c
	.long	0x62
	.value	0x14c
	.uleb128 0x10
	.long	.LASF57
	.byte	0x6
	.byte	0x5d
	.long	0x62
	.value	0x150
	.uleb128 0x10
	.long	.LASF58
	.byte	0x6
	.byte	0x5e
	.long	0x62
	.value	0x154
	.uleb128 0xf
	.string	"ss"
	.byte	0x6
	.byte	0x5f
	.long	0x8f
	.value	0x158
	.uleb128 0xf
	.string	"sa"
	.byte	0x6
	.byte	0x60
	.long	0x8f
	.value	0x160
	.byte	0
	.uleb128 0xb
	.long	0x95
	.long	0x366
	.uleb128 0xc
	.long	0x86
	.byte	0x3f
	.byte	0
	.uleb128 0xb
	.long	0x95
	.long	0x376
	.uleb128 0xc
	.long	0x86
	.byte	0x7f
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x9c
	.uleb128 0x6
	.byte	0x8
	.long	0x8f
	.uleb128 0x7
	.long	.LASF59
	.byte	0x68
	.byte	0x7
	.byte	0x41
	.long	0x458
	.uleb128 0x8
	.long	.LASF52
	.byte	0x7
	.byte	0x42
	.long	0x62
	.byte	0
	.uleb128 0x8
	.long	.LASF60
	.byte	0x7
	.byte	0x43
	.long	0x62
	.byte	0x4
	.uleb128 0x8
	.long	.LASF61
	.byte	0x7
	.byte	0x44
	.long	0x62
	.byte	0x8
	.uleb128 0xe
	.string	"wgt"
	.byte	0x7
	.byte	0x45
	.long	0x458
	.byte	0x10
	.uleb128 0xe
	.string	"cs"
	.byte	0x7
	.byte	0x46
	.long	0x8f
	.byte	0x18
	.uleb128 0xe
	.string	"rf"
	.byte	0x7
	.byte	0x47
	.long	0x8f
	.byte	0x20
	.uleb128 0x8
	.long	.LASF62
	.byte	0x7
	.byte	0x48
	.long	0x45e
	.byte	0x28
	.uleb128 0x8
	.long	.LASF53
	.byte	0x7
	.byte	0x4b
	.long	0x8f
	.byte	0x30
	.uleb128 0x8
	.long	.LASF54
	.byte	0x7
	.byte	0x4c
	.long	0x8f
	.byte	0x38
	.uleb128 0xe
	.string	"acc"
	.byte	0x7
	.byte	0x4d
	.long	0x8f
	.byte	0x40
	.uleb128 0xe
	.string	"au"
	.byte	0x7
	.byte	0x4e
	.long	0x8f
	.byte	0x48
	.uleb128 0xe
	.string	"tc1"
	.byte	0x7
	.byte	0x4f
	.long	0x292
	.byte	0x50
	.uleb128 0xe
	.string	"tc2"
	.byte	0x7
	.byte	0x4f
	.long	0x292
	.byte	0x54
	.uleb128 0xe
	.string	"nc1"
	.byte	0x7
	.byte	0x50
	.long	0x292
	.byte	0x58
	.uleb128 0xe
	.string	"nc2"
	.byte	0x7
	.byte	0x50
	.long	0x292
	.byte	0x5c
	.uleb128 0xe
	.string	"ga1"
	.byte	0x7
	.byte	0x51
	.long	0x292
	.byte	0x60
	.uleb128 0xe
	.string	"ga2"
	.byte	0x7
	.byte	0x51
	.long	0x292
	.byte	0x64
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x292
	.uleb128 0x6
	.byte	0x8
	.long	0x2b4
	.uleb128 0x2
	.long	.LASF63
	.byte	0x7
	.byte	0x53
	.long	0x382
	.uleb128 0x11
	.long	.LASF64
	.byte	0x28
	.byte	0x6
	.value	0x102
	.long	0x4e5
	.uleb128 0x9
	.long	.LASF65
	.byte	0x6
	.value	0x103
	.long	0x62
	.byte	0
	.uleb128 0x9
	.long	.LASF66
	.byte	0x6
	.value	0x104
	.long	0x62
	.byte	0x4
	.uleb128 0x9
	.long	.LASF67
	.byte	0x6
	.value	0x105
	.long	0x62
	.byte	0x8
	.uleb128 0x9
	.long	.LASF68
	.byte	0x6
	.value	0x106
	.long	0x292
	.byte	0xc
	.uleb128 0x9
	.long	.LASF69
	.byte	0x6
	.value	0x107
	.long	0x292
	.byte	0x10
	.uleb128 0x9
	.long	.LASF70
	.byte	0x6
	.value	0x108
	.long	0x292
	.byte	0x14
	.uleb128 0x9
	.long	.LASF71
	.byte	0x6
	.value	0x109
	.long	0x8f
	.byte	0x18
	.uleb128 0x9
	.long	.LASF72
	.byte	0x6
	.value	0x10a
	.long	0x62
	.byte	0x20
	.byte	0
	.uleb128 0x12
	.long	.LASF103
	.byte	0x4
	.byte	0x6
	.value	0x111
	.long	0x505
	.uleb128 0x13
	.long	.LASF73
	.sleb128 0
	.uleb128 0x13
	.long	.LASF74
	.sleb128 1
	.uleb128 0x13
	.long	.LASF75
	.sleb128 2
	.byte	0
	.uleb128 0x11
	.long	.LASF76
	.byte	0x10
	.byte	0x6
	.value	0x11a
	.long	0x52d
	.uleb128 0x9
	.long	.LASF77
	.byte	0x6
	.value	0x11b
	.long	0x62
	.byte	0
	.uleb128 0x14
	.string	"nxt"
	.byte	0x6
	.value	0x11c
	.long	0x52d
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x505
	.uleb128 0x15
	.long	.LASF85
	.byte	0x1
	.byte	0x94
	.long	0x62
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x657
	.uleb128 0x16
	.string	"dmx"
	.byte	0x1
	.byte	0x94
	.long	0x657
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x16
	.string	"N"
	.byte	0x1
	.byte	0x94
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x17
	.long	.LASF78
	.byte	0x1
	.byte	0x94
	.long	0x4e5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x17
	.long	.LASF79
	.byte	0x1
	.byte	0x94
	.long	0x65d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x18
	.long	.LASF80
	.byte	0x1
	.byte	0x96
	.long	0x663
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x19
	.string	"mx"
	.byte	0x1
	.byte	0x97
	.long	0x657
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x18
	.long	.LASF81
	.byte	0x1
	.byte	0x98
	.long	0x2a0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.byte	0x99
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x19
	.string	"j"
	.byte	0x1
	.byte	0x99
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x19
	.string	"idx"
	.byte	0x1
	.byte	0x9a
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x19
	.string	"Np"
	.byte	0x1
	.byte	0x9b
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x19
	.string	"row"
	.byte	0x1
	.byte	0x9c
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x19
	.string	"col"
	.byte	0x1
	.byte	0x9c
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x19
	.string	"min"
	.byte	0x1
	.byte	0x9d
	.long	0x292
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x18
	.long	.LASF82
	.byte	0x1
	.byte	0x9e
	.long	0x458
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.long	.LASF83
	.byte	0x1
	.byte	0x9f
	.long	0x292
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x18
	.long	.LASF68
	.byte	0x1
	.byte	0xa0
	.long	0x458
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x18
	.long	.LASF84
	.byte	0x1
	.byte	0xa1
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x458
	.uleb128 0x6
	.byte	0x8
	.long	0x663
	.uleb128 0x6
	.byte	0x8
	.long	0x46f
	.uleb128 0x1a
	.long	.LASF86
	.byte	0x1
	.value	0x149
	.long	0x663
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x6b5
	.uleb128 0x1b
	.string	"N"
	.byte	0x1
	.value	0x149
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1c
	.long	.LASF80
	.byte	0x1
	.value	0x14b
	.long	0x663
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.value	0x14c
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x1e
	.long	.LASF87
	.byte	0x1
	.value	0x168
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x6ff
	.uleb128 0x1f
	.long	.LASF80
	.byte	0x1
	.value	0x168
	.long	0x663
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1b
	.string	"N"
	.byte	0x1
	.value	0x168
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1d
	.string	"idx"
	.byte	0x1
	.value	0x16a
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1e
	.long	.LASF88
	.byte	0x1
	.value	0x180
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x775
	.uleb128 0x1f
	.long	.LASF89
	.byte	0x1
	.value	0x180
	.long	0x37c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.string	"num"
	.byte	0x1
	.value	0x180
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1f
	.long	.LASF90
	.byte	0x1
	.value	0x180
	.long	0x775
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1d
	.string	"dmx"
	.byte	0x1
	.value	0x182
	.long	0x657
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.value	0x183
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1d
	.string	"j"
	.byte	0x1
	.value	0x183
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x657
	.uleb128 0x1e
	.long	.LASF91
	.byte	0x1
	.value	0x1a4
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x7f1
	.uleb128 0x1f
	.long	.LASF89
	.byte	0x1
	.value	0x1a4
	.long	0x37c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.string	"num"
	.byte	0x1
	.value	0x1a4
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1f
	.long	.LASF92
	.byte	0x1
	.value	0x1a4
	.long	0x775
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1d
	.string	"imx"
	.byte	0x1
	.value	0x1a6
	.long	0x657
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.value	0x1a7
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1d
	.string	"j"
	.byte	0x1
	.value	0x1a7
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x1e
	.long	.LASF93
	.byte	0x1
	.value	0x1c9
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x887
	.uleb128 0x1b
	.string	"fp"
	.byte	0x1
	.value	0x1c9
	.long	0x376
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1f
	.long	.LASF94
	.byte	0x1
	.value	0x1c9
	.long	0x887
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1f
	.long	.LASF80
	.byte	0x1
	.value	0x1c9
	.long	0x663
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1b
	.string	"N"
	.byte	0x1
	.value	0x1c9
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1c
	.long	.LASF95
	.byte	0x1
	.value	0x1cb
	.long	0x52d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.long	.LASF96
	.byte	0x1
	.value	0x1cc
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1c
	.long	.LASF97
	.byte	0x1
	.value	0x1cd
	.long	0x458
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1c
	.long	.LASF98
	.byte	0x1
	.value	0x1ce
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x464
	.uleb128 0x20
	.long	.LASF104
	.byte	0x1
	.value	0x208
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1b
	.string	"fp"
	.byte	0x1
	.value	0x208
	.long	0x376
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1f
	.long	.LASF94
	.byte	0x1
	.value	0x208
	.long	0x887
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1f
	.long	.LASF80
	.byte	0x1
	.value	0x208
	.long	0x663
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.string	"N"
	.byte	0x1
	.value	0x208
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1d
	.string	"idx"
	.byte	0x1
	.value	0x20a
	.long	0x62
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
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0xe
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
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x4
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
	.uleb128 0x13
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0xb
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1f
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
.LASF104:
	.string	"PrintPhylo"
.LASF14:
	.string	"_IO_read_ptr"
.LASF26:
	.string	"_chain"
.LASF32:
	.string	"_shortbuf"
.LASF7:
	.string	"size_t"
.LASF98:
	.string	"docomma"
.LASF64:
	.string	"phylo_s"
.LASF51:
	.string	"seqinfo_s"
.LASF58:
	.string	"type"
.LASF20:
	.string	"_IO_buf_base"
.LASF61:
	.string	"nseq"
.LASF50:
	.string	"long long unsigned int"
.LASF23:
	.string	"_IO_backup_base"
.LASF68:
	.string	"diff"
.LASF91:
	.string	"MakeIdentityMx"
.LASF67:
	.string	"right"
.LASF59:
	.string	"aliinfo_s"
.LASF49:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF88:
	.string	"MakeDiffMx"
.LASF27:
	.string	"_fileno"
.LASF15:
	.string	"_IO_read_end"
.LASF65:
	.string	"parent"
.LASF6:
	.string	"long int"
.LASF74:
	.string	"CLUSTER_MAX"
.LASF13:
	.string	"_flags"
.LASF62:
	.string	"sqinfo"
.LASF21:
	.string	"_IO_buf_end"
.LASF30:
	.string	"_cur_column"
.LASF5:
	.string	"short int"
.LASF57:
	.string	"olen"
.LASF82:
	.string	"trow"
.LASF29:
	.string	"_old_offset"
.LASF34:
	.string	"_offset"
.LASF87:
	.string	"FreePhylo"
.LASF43:
	.string	"_IO_marker"
.LASF3:
	.string	"unsigned int"
.LASF0:
	.string	"long unsigned int"
.LASF18:
	.string	"_IO_write_ptr"
.LASF53:
	.string	"name"
.LASF86:
	.string	"AllocPhylo"
.LASF85:
	.string	"Cluster"
.LASF45:
	.string	"_sbuf"
.LASF77:
	.string	"data"
.LASF2:
	.string	"short unsigned int"
.LASF75:
	.string	"CLUSTER_MIN"
.LASF46:
	.string	"_pos"
.LASF22:
	.string	"_IO_save_base"
.LASF103:
	.string	"clust_strategy"
.LASF93:
	.string	"PrintNewHampshireTree"
.LASF33:
	.string	"_lock"
.LASF28:
	.string	"_flags2"
.LASF40:
	.string	"_mode"
.LASF79:
	.string	"ret_tree"
.LASF10:
	.string	"sizetype"
.LASF92:
	.string	"ret_imx"
.LASF63:
	.string	"AINFO"
.LASF69:
	.string	"lblen"
.LASF54:
	.string	"desc"
.LASF19:
	.string	"_IO_write_end"
.LASF90:
	.string	"ret_dmx"
.LASF102:
	.string	"_IO_lock_t"
.LASF42:
	.string	"_IO_FILE"
.LASF8:
	.string	"__off_t"
.LASF81:
	.string	"coord"
.LASF89:
	.string	"aseqs"
.LASF47:
	.string	"float"
.LASF70:
	.string	"rblen"
.LASF94:
	.string	"ainfo"
.LASF25:
	.string	"_markers"
.LASF71:
	.string	"is_in"
.LASF1:
	.string	"unsigned char"
.LASF97:
	.string	"blen"
.LASF31:
	.string	"_vtable_offset"
.LASF12:
	.string	"FILE"
.LASF56:
	.string	"stop"
.LASF73:
	.string	"CLUSTER_MEAN"
.LASF11:
	.string	"char"
.LASF78:
	.string	"mode"
.LASF60:
	.string	"alen"
.LASF44:
	.string	"_next"
.LASF9:
	.string	"__off64_t"
.LASF76:
	.string	"intstack_s"
.LASF16:
	.string	"_IO_read_base"
.LASF24:
	.string	"_IO_save_end"
.LASF72:
	.string	"incnum"
.LASF84:
	.string	"swapfoo"
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
.LASF41:
	.string	"_unused2"
.LASF96:
	.string	"code"
.LASF80:
	.string	"tree"
.LASF99:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF100:
	.string	"cluster.c"
.LASF52:
	.string	"flags"
.LASF83:
	.string	"tcol"
.LASF101:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/456.hmmer/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF55:
	.string	"start"
.LASF95:
	.string	"stack"
.LASF17:
	.string	"_IO_write_base"
.LASF66:
	.string	"left"
.LASF48:
	.string	"double"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
