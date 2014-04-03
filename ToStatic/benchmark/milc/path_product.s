	.file	"path_product.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D FN -D FAST -D CONGRAD_TMP_VECTORS -D DSLASH_TMP_LINKS -D SPEC_CPU_LP64
# path_product.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.globl	path_product
	.type	path_product, @function
path_product:
.LFB2:
	.file 1 "path_product.c"
	.loc 1 18 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -72(%rbp)	# dir, dir
	movl	%esi, -76(%rbp)	# length, length
	.loc 1 35 0
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.0
	cltq
	movl	$144, %esi	#,
	movq	%rax, %rdi	# D.5278,
	call	calloc	#
	movq	%rax, -48(%rbp)	# tmp277, tempmat3t
	.loc 1 36 0
	movl	sites_on_node(%rip), %eax	# sites_on_node, sites_on_node.1
	cltq
	movl	$144, %esi	#,
	movq	%rax, %rdi	# D.5278,
	call	calloc	#
	movq	%rax, -40(%rbp)	# tmp278, tempmat2t
	.loc 1 39 0
	movq	-72(%rbp), %rax	# dir, tmp279
	movl	(%rax), %eax	# *dir_40(D), D.5279
	cmpl	$3, %eax	#, D.5279
	jg	.L2	#,
	.loc 1 40 0
	movq	gen_pt(%rip), %rcx	# gen_pt, D.5280
	.loc 1 41 0
	movq	-72(%rbp), %rax	# dir, tmp280
	movl	(%rax), %eax	# *dir_40(D), D.5279
	.loc 1 40 0
	movl	$7, %edx	#, tmp281
	movl	%edx, %esi	# tmp281, D.5279
	subl	%eax, %esi	# D.5279, D.5279
	movq	lattice(%rip), %rdi	# lattice, lattice.2
	movq	-72(%rbp), %rax	# dir, tmp282
	movl	(%rax), %eax	# *dir_40(D), D.5279
	movslq	%eax, %rdx	# D.5279, tmp283
	movq	%rdx, %rax	# tmp283, tmp284
	salq	$3, %rax	#, tmp284
	addq	%rdx, %rax	# tmp283, tmp284
	salq	$4, %rax	#, tmp285
	addq	$112, %rax	#, tmp286
	addq	%rdi, %rax	# lattice.2, D.5281
	movq	%rax, %rdx	# D.5281, D.5282
	movq	lattice(%rip), %rax	# lattice, lattice.3
	subq	%rax, %rdx	# lattice.4, D.5282
	movq	%rdx, %rax	# D.5282, D.5282
	movq	%rcx, %r8	# D.5280,
	movl	$3, %ecx	#,
	movl	%esi, %edx	# D.5279,
	movl	$144, %esi	#,
	movl	%eax, %edi	# D.5279,
	call	start_gather	#
	movq	%rax, -56(%rbp)	# tmp287, mtag0
	jmp	.L3	#
.L2:
.LBB2:
	.loc 1 44 0
	movl	sites_on_node(%rip), %r13d	# sites_on_node, loopend
	movl	$0, %ebx	#, i
	movq	lattice(%rip), %r12	# lattice, s
	jmp	.L4	#
.L5:
	.loc 1 45 0 discriminator 2
	leaq	1760(%r12), %rcx	#, D.5281
	movq	-72(%rbp), %rax	# dir, tmp288
	movl	(%rax), %eax	# *dir_40(D), D.5279
	movl	$7, %edx	#, tmp289
	subl	%eax, %edx	# D.5279, D.5279
	movl	%edx, %eax	# D.5279, D.5279
	movslq	%eax, %rdx	# D.5279, tmp290
	movq	%rdx, %rax	# tmp290, tmp291
	salq	$3, %rax	#, tmp291
	addq	%rdx, %rax	# tmp290, tmp291
	salq	$4, %rax	#, tmp292
	addq	$112, %rax	#, tmp293
	addq	%r12, %rax	# s, D.5281
	movq	%rcx, %rsi	# D.5281,
	movq	%rax, %rdi	# D.5281,
	call	su3_adjoint	#
	.loc 1 44 0 discriminator 2
	addl	$1, %ebx	#, i
	addq	$2048, %r12	#, s
.L4:
	.loc 1 44 0 is_stmt 0 discriminator 1
	cmpl	%r13d, %ebx	# loopend, i
	jl	.L5	#,
.L3:
.LBE2:
	.loc 1 49 0 is_stmt 1
	movl	$1, -60(%rbp)	#, j
	jmp	.L6	#
.L36:
	.loc 1 50 0
	movl	-60(%rbp), %eax	# j, tmp294
	cltd
	shrl	$31, %edx	#, tmp296
	addl	%edx, %eax	# tmp296, tmp297
	andl	$1, %eax	#, tmp298
	subl	%edx, %eax	# tmp296, tmp299
	cmpl	$1, %eax	#, D.5279
	jne	.L7	#,
	.loc 1 51 0
	movl	-60(%rbp), %eax	# j, tmp300
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5278
	movq	-72(%rbp), %rax	# dir, tmp301
	addq	%rdx, %rax	# D.5278, D.5283
	movl	(%rax), %eax	# *_69, D.5279
	cmpl	$3, %eax	#, D.5279
	jg	.L8	#,
	.loc 1 52 0
	movl	-60(%rbp), %eax	# j, tmp302
	cltq
	salq	$2, %rax	#, D.5278
	leaq	-4(%rax), %rdx	#, D.5284
	movq	-72(%rbp), %rax	# dir, tmp303
	addq	%rdx, %rax	# D.5284, D.5283
	movl	(%rax), %eax	# *_74, D.5279
	cmpl	$3, %eax	#, D.5279
	jg	.L9	#,
	.loc 1 53 0
	movq	-56(%rbp), %rax	# mtag0, tmp304
	movq	%rax, %rdi	# tmp304,
	call	wait_gather	#
.LBB3:
	.loc 1 54 0
	movl	sites_on_node(%rip), %r13d	# sites_on_node, loopend
	movl	$0, %ebx	#, i
	movq	lattice(%rip), %r12	# lattice, s
	jmp	.L10	#
.L11:
	.loc 1 55 0 discriminator 2
	movslq	%ebx, %rdx	# i, D.5278
	.loc 1 56 0 discriminator 2
	movq	%rdx, %rax	# D.5278, tmp305
	salq	$3, %rax	#, tmp305
	addq	%rdx, %rax	# D.5278, tmp305
	salq	$4, %rax	#, tmp306
	movq	%rax, %rdx	# tmp305, D.5278
	.loc 1 55 0 discriminator 2
	movq	-40(%rbp), %rax	# tempmat2t, tmp307
	leaq	(%rdx,%rax), %rsi	#, D.5281
	movl	-60(%rbp), %eax	# j, tmp308
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5278
	movq	-72(%rbp), %rax	# dir, tmp309
	addq	%rdx, %rax	# D.5278, D.5283
	movl	(%rax), %eax	# *_84, D.5279
	movslq	%eax, %rdx	# D.5279, tmp310
	movq	%rdx, %rax	# tmp310, tmp311
	salq	$3, %rax	#, tmp311
	addq	%rdx, %rax	# tmp310, tmp311
	salq	$4, %rax	#, tmp312
	addq	$112, %rax	#, tmp313
	leaq	(%r12,%rax), %rcx	#, D.5281
	movq	gen_pt(%rip), %rax	# gen_pt, D.5280
	movslq	%ebx, %rdx	# i, D.5278
	salq	$3, %rdx	#, D.5278
	addq	%rdx, %rax	# D.5278, D.5280
	movq	(%rax), %rax	# *_90, D.5285
	movq	%rsi, %rdx	# D.5281,
	movq	%rcx, %rsi	# D.5281,
	movq	%rax, %rdi	# D.5285,
	call	mult_su3_nn	#
	.loc 1 54 0 discriminator 2
	addl	$1, %ebx	#, i
	addq	$2048, %r12	#, s
.L10:
	.loc 1 54 0 is_stmt 0 discriminator 1
	cmpl	%r13d, %ebx	# loopend, i
	jl	.L11	#,
.LBE3:
	.loc 1 58 0 is_stmt 1
	movq	-56(%rbp), %rax	# mtag0, tmp314
	movq	%rax, %rdi	# tmp314,
	call	cleanup_gather	#
	jmp	.L12	#
.L9:
.LBB4:
	.loc 1 61 0
	movl	sites_on_node(%rip), %r13d	# sites_on_node, loopend
	movl	$0, %ebx	#, i
	movq	lattice(%rip), %r12	# lattice, s
	jmp	.L13	#
.L14:
	.loc 1 62 0 discriminator 2
	movslq	%ebx, %rdx	# i, D.5278
	.loc 1 63 0 discriminator 2
	movq	%rdx, %rax	# D.5278, tmp315
	salq	$3, %rax	#, tmp315
	addq	%rdx, %rax	# D.5278, tmp315
	salq	$4, %rax	#, tmp316
	movq	%rax, %rdx	# tmp315, D.5278
	.loc 1 62 0 discriminator 2
	movq	-40(%rbp), %rax	# tempmat2t, tmp317
	leaq	(%rdx,%rax), %rsi	#, D.5281
	movl	-60(%rbp), %eax	# j, tmp318
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5278
	movq	-72(%rbp), %rax	# dir, tmp319
	addq	%rdx, %rax	# D.5278, D.5283
	movl	(%rax), %eax	# *_102, D.5279
	movslq	%eax, %rdx	# D.5279, tmp320
	movq	%rdx, %rax	# tmp320, tmp321
	salq	$3, %rax	#, tmp321
	addq	%rdx, %rax	# tmp320, tmp321
	salq	$4, %rax	#, tmp322
	addq	$112, %rax	#, tmp323
	leaq	(%r12,%rax), %rcx	#, D.5281
	leaq	1760(%r12), %rax	#, D.5281
	movq	%rsi, %rdx	# D.5281,
	movq	%rcx, %rsi	# D.5281,
	movq	%rax, %rdi	# D.5281,
	call	mult_su3_nn	#
	.loc 1 61 0 discriminator 2
	addl	$1, %ebx	#, i
	addq	$2048, %r12	#, s
.L13:
	.loc 1 61 0 is_stmt 0 discriminator 1
	cmpl	%r13d, %ebx	# loopend, i
	jl	.L14	#,
.L12:
.LBE4:
	.loc 1 66 0 is_stmt 1 discriminator 1
	movq	gen_pt(%rip), %rcx	# gen_pt, D.5280
	.loc 1 67 0 discriminator 1
	movl	-60(%rbp), %eax	# j, tmp324
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5278
	movq	-72(%rbp), %rax	# dir, tmp325
	addq	%rdx, %rax	# D.5278, D.5283
	movl	(%rax), %eax	# *_111, D.5279
	.loc 1 66 0 discriminator 1
	movl	$7, %edx	#, tmp326
	subl	%eax, %edx	# D.5279, D.5279
	movq	-40(%rbp), %rax	# tempmat2t, tmp327
	movq	%rcx, %r8	# D.5280,
	movl	$3, %ecx	#,
	movl	$144, %esi	#,
	movq	%rax, %rdi	# tmp327,
	call	start_gather_from_temp	#
	movq	%rax, -56(%rbp)	# tmp328, mtag0
	jmp	.L22	#
.L8:
	.loc 1 71 0
	movl	-60(%rbp), %eax	# j, tmp329
	cltq
	salq	$2, %rax	#, D.5278
	leaq	-4(%rax), %rdx	#, D.5284
	movq	-72(%rbp), %rax	# dir, tmp330
	addq	%rdx, %rax	# D.5284, D.5283
	movl	(%rax), %eax	# *_118, D.5279
	cmpl	$3, %eax	#, D.5279
	jg	.L16	#,
	.loc 1 72 0
	movq	-56(%rbp), %rax	# mtag0, tmp331
	movq	%rax, %rdi	# tmp331,
	call	wait_gather	#
.LBB5:
	.loc 1 73 0
	movl	sites_on_node(%rip), %r13d	# sites_on_node, loopend
	movl	$0, %ebx	#, i
	movq	lattice(%rip), %r12	# lattice, s
	jmp	.L17	#
.L18:
	.loc 1 74 0 discriminator 2
	movslq	%ebx, %rdx	# i, D.5278
	movq	%rdx, %rax	# D.5278, tmp332
	salq	$3, %rax	#, tmp332
	addq	%rdx, %rax	# D.5278, tmp332
	salq	$4, %rax	#, tmp333
	movq	%rax, %rdx	# tmp332, D.5278
	movq	-48(%rbp), %rax	# tempmat3t, tmp334
	addq	%rax, %rdx	# tmp334, D.5281
	movq	gen_pt(%rip), %rax	# gen_pt, D.5280
	movslq	%ebx, %rcx	# i, D.5278
	salq	$3, %rcx	#, D.5278
	addq	%rcx, %rax	# D.5278, D.5280
	movq	(%rax), %rax	# *_129, D.5285
	movq	%rdx, %rsi	# D.5281,
	movq	%rax, %rdi	# D.5285,
	call	su3mat_copy	#
	.loc 1 73 0 discriminator 2
	addl	$1, %ebx	#, i
	addq	$2048, %r12	#, s
.L17:
	.loc 1 73 0 is_stmt 0 discriminator 1
	cmpl	%r13d, %ebx	# loopend, i
	jl	.L18	#,
.LBE5:
	.loc 1 76 0 is_stmt 1
	movq	-56(%rbp), %rax	# mtag0, tmp335
	movq	%rax, %rdi	# tmp335,
	call	cleanup_gather	#
	.loc 1 77 0
	movq	gen_pt(%rip), %rcx	# gen_pt, D.5280
	.loc 1 78 0
	movl	-60(%rbp), %eax	# j, tmp336
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5278
	movq	-72(%rbp), %rax	# dir, tmp337
	addq	%rdx, %rax	# D.5278, D.5283
	movl	(%rax), %eax	# *_136, D.5279
	.loc 1 77 0
	movl	$7, %edx	#, tmp338
	subl	%eax, %edx	# D.5279, D.5279
	movq	-48(%rbp), %rax	# tempmat3t, tmp339
	movq	%rcx, %r8	# D.5280,
	movl	$3, %ecx	#,
	movl	$144, %esi	#,
	movq	%rax, %rdi	# tmp339,
	call	start_gather_from_temp	#
	movq	%rax, -56(%rbp)	# tmp340, mtag0
	jmp	.L19	#
.L16:
	.loc 1 81 0
	movq	gen_pt(%rip), %rdx	# gen_pt, D.5280
	.loc 1 82 0
	movl	-60(%rbp), %eax	# j, tmp341
	cltq
	leaq	0(,%rax,4), %rcx	#, D.5278
	movq	-72(%rbp), %rax	# dir, tmp342
	addq	%rcx, %rax	# D.5278, D.5283
	movl	(%rax), %eax	# *_143, D.5279
	.loc 1 81 0
	movl	$7, %ecx	#, tmp343
	subl	%eax, %ecx	# D.5279, D.5279
	movl	%ecx, %eax	# D.5279, D.5279
	movq	%rdx, %r8	# D.5280,
	movl	$3, %ecx	#,
	movl	%eax, %edx	# D.5279,
	movl	$144, %esi	#,
	movl	$1760, %edi	#,
	call	start_gather	#
	movq	%rax, -56(%rbp)	# tmp344, mtag0
.L19:
	.loc 1 84 0
	movq	-56(%rbp), %rax	# mtag0, tmp345
	movq	%rax, %rdi	# tmp345,
	call	wait_gather	#
.LBB6:
	.loc 1 85 0
	movl	sites_on_node(%rip), %r13d	# sites_on_node, loopend
	movl	$0, %ebx	#, i
	movq	lattice(%rip), %r12	# lattice, s
	jmp	.L20	#
.L21:
	.loc 1 86 0 discriminator 2
	movslq	%ebx, %rdx	# i, D.5278
	.loc 1 87 0 discriminator 2
	movq	%rdx, %rax	# D.5278, tmp346
	salq	$3, %rax	#, tmp346
	addq	%rdx, %rax	# D.5278, tmp346
	salq	$4, %rax	#, tmp347
	movq	%rax, %rdx	# tmp346, D.5278
	.loc 1 86 0 discriminator 2
	movq	-40(%rbp), %rax	# tempmat2t, tmp348
	leaq	(%rdx,%rax), %rsi	#, D.5281
	.loc 1 87 0 discriminator 2
	movl	-60(%rbp), %eax	# j, tmp349
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5278
	movq	-72(%rbp), %rax	# dir, tmp350
	addq	%rdx, %rax	# D.5278, D.5283
	movl	(%rax), %eax	# *_155, D.5279
	movl	$7, %edx	#, tmp351
	subl	%eax, %edx	# D.5279, D.5279
	movl	%edx, %eax	# D.5279, D.5279
	.loc 1 86 0 discriminator 2
	movslq	%eax, %rdx	# D.5279, tmp352
	movq	%rdx, %rax	# tmp352, tmp353
	salq	$3, %rax	#, tmp353
	addq	%rdx, %rax	# tmp352, tmp353
	salq	$4, %rax	#, tmp354
	addq	$112, %rax	#, tmp355
	leaq	(%r12,%rax), %rcx	#, D.5281
	movq	gen_pt(%rip), %rax	# gen_pt, D.5280
	movslq	%ebx, %rdx	# i, D.5278
	salq	$3, %rdx	#, D.5278
	addq	%rdx, %rax	# D.5278, D.5280
	movq	(%rax), %rax	# *_162, D.5285
	movq	%rsi, %rdx	# D.5281,
	movq	%rcx, %rsi	# D.5281,
	movq	%rax, %rdi	# D.5285,
	call	mult_su3_na	#
	.loc 1 85 0 discriminator 2
	addl	$1, %ebx	#, i
	addq	$2048, %r12	#, s
.L20:
	.loc 1 85 0 is_stmt 0 discriminator 1
	cmpl	%r13d, %ebx	# loopend, i
	jl	.L21	#,
.LBE6:
	.loc 1 89 0 is_stmt 1
	movq	-56(%rbp), %rax	# mtag0, tmp356
	movq	%rax, %rdi	# tmp356,
	call	cleanup_gather	#
	jmp	.L22	#
.L7:
	.loc 1 94 0
	movl	-60(%rbp), %eax	# j, tmp357
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5278
	movq	-72(%rbp), %rax	# dir, tmp358
	addq	%rdx, %rax	# D.5278, D.5283
	movl	(%rax), %eax	# *_168, D.5279
	cmpl	$3, %eax	#, D.5279
	jg	.L23	#,
	.loc 1 95 0
	movl	-60(%rbp), %eax	# j, tmp359
	cltq
	salq	$2, %rax	#, D.5278
	leaq	-4(%rax), %rdx	#, D.5284
	movq	-72(%rbp), %rax	# dir, tmp360
	addq	%rdx, %rax	# D.5284, D.5283
	movl	(%rax), %eax	# *_173, D.5279
	cmpl	$3, %eax	#, D.5279
	jg	.L24	#,
	.loc 1 96 0
	movq	-56(%rbp), %rax	# mtag0, tmp361
	movq	%rax, %rdi	# tmp361,
	call	wait_gather	#
.LBB7:
	.loc 1 97 0
	movl	sites_on_node(%rip), %r13d	# sites_on_node, loopend
	movl	$0, %ebx	#, i
	movq	lattice(%rip), %r12	# lattice, s
	jmp	.L25	#
.L26:
	.loc 1 98 0 discriminator 2
	leaq	1760(%r12), %rcx	#, D.5281
	movl	-60(%rbp), %eax	# j, tmp362
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5278
	movq	-72(%rbp), %rax	# dir, tmp363
	addq	%rdx, %rax	# D.5278, D.5283
	movl	(%rax), %eax	# *_181, D.5279
	movslq	%eax, %rdx	# D.5279, tmp364
	movq	%rdx, %rax	# tmp364, tmp365
	salq	$3, %rax	#, tmp365
	addq	%rdx, %rax	# tmp364, tmp365
	salq	$4, %rax	#, tmp366
	addq	$112, %rax	#, tmp367
	leaq	(%r12,%rax), %rsi	#, D.5281
	movq	gen_pt(%rip), %rax	# gen_pt, D.5280
	movslq	%ebx, %rdx	# i, D.5278
	salq	$3, %rdx	#, D.5278
	addq	%rdx, %rax	# D.5278, D.5280
	movq	(%rax), %rax	# *_187, D.5285
	movq	%rcx, %rdx	# D.5281,
	movq	%rax, %rdi	# D.5285,
	call	mult_su3_nn	#
	.loc 1 97 0 discriminator 2
	addl	$1, %ebx	#, i
	addq	$2048, %r12	#, s
.L25:
	.loc 1 97 0 is_stmt 0 discriminator 1
	cmpl	%r13d, %ebx	# loopend, i
	jl	.L26	#,
.LBE7:
	.loc 1 101 0 is_stmt 1
	movq	-56(%rbp), %rax	# mtag0, tmp368
	movq	%rax, %rdi	# tmp368,
	call	cleanup_gather	#
	jmp	.L27	#
.L24:
.LBB8:
	.loc 1 104 0
	movl	sites_on_node(%rip), %r13d	# sites_on_node, loopend
	movl	$0, %ebx	#, i
	movq	lattice(%rip), %r12	# lattice, s
	jmp	.L28	#
.L29:
	.loc 1 105 0 discriminator 2
	leaq	1760(%r12), %rcx	#, D.5281
	movl	-60(%rbp), %eax	# j, tmp369
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5278
	movq	-72(%rbp), %rax	# dir, tmp370
	addq	%rdx, %rax	# D.5278, D.5283
	movl	(%rax), %eax	# *_197, D.5279
	movslq	%eax, %rdx	# D.5279, tmp371
	movq	%rdx, %rax	# tmp371, tmp372
	salq	$3, %rax	#, tmp372
	addq	%rdx, %rax	# tmp371, tmp372
	salq	$4, %rax	#, tmp373
	addq	$112, %rax	#, tmp374
	leaq	(%r12,%rax), %rsi	#, D.5281
	movslq	%ebx, %rdx	# i, D.5278
	movq	%rdx, %rax	# D.5278, tmp375
	salq	$3, %rax	#, tmp375
	addq	%rdx, %rax	# D.5278, tmp375
	salq	$4, %rax	#, tmp376
	movq	%rax, %rdx	# tmp375, D.5278
	movq	-40(%rbp), %rax	# tempmat2t, tmp377
	addq	%rdx, %rax	# D.5278, D.5281
	movq	%rcx, %rdx	# D.5281,
	movq	%rax, %rdi	# D.5281,
	call	mult_su3_nn	#
	.loc 1 104 0 discriminator 2
	addl	$1, %ebx	#, i
	addq	$2048, %r12	#, s
.L28:
	.loc 1 104 0 is_stmt 0 discriminator 1
	cmpl	%r13d, %ebx	# loopend, i
	jl	.L29	#,
.L27:
.LBE8:
	.loc 1 109 0 is_stmt 1 discriminator 3
	movq	gen_pt(%rip), %rdx	# gen_pt, D.5280
	.loc 1 110 0 discriminator 3
	movl	-60(%rbp), %eax	# j, tmp378
	cltq
	leaq	0(,%rax,4), %rcx	#, D.5278
	movq	-72(%rbp), %rax	# dir, tmp379
	addq	%rcx, %rax	# D.5278, D.5283
	movl	(%rax), %eax	# *_208, D.5279
	.loc 1 109 0 discriminator 3
	movl	$7, %ecx	#, tmp380
	subl	%eax, %ecx	# D.5279, D.5279
	movl	%ecx, %eax	# D.5279, D.5279
	movq	%rdx, %r8	# D.5280,
	movl	$3, %ecx	#,
	movl	%eax, %edx	# D.5279,
	movl	$144, %esi	#,
	movl	$1760, %edi	#,
	call	start_gather	#
	movq	%rax, -56(%rbp)	# tmp381, mtag0
	jmp	.L22	#
.L23:
	.loc 1 114 0
	movl	-60(%rbp), %eax	# j, tmp382
	cltq
	salq	$2, %rax	#, D.5278
	leaq	-4(%rax), %rdx	#, D.5284
	movq	-72(%rbp), %rax	# dir, tmp383
	addq	%rdx, %rax	# D.5284, D.5283
	movl	(%rax), %eax	# *_215, D.5279
	cmpl	$3, %eax	#, D.5279
	jg	.L30	#,
	.loc 1 115 0
	movq	-56(%rbp), %rax	# mtag0, tmp384
	movq	%rax, %rdi	# tmp384,
	call	wait_gather	#
.LBB9:
	.loc 1 116 0
	movl	sites_on_node(%rip), %r13d	# sites_on_node, loopend
	movl	$0, %ebx	#, i
	movq	lattice(%rip), %r12	# lattice, s
	jmp	.L31	#
.L32:
	.loc 1 117 0 discriminator 2
	movslq	%ebx, %rdx	# i, D.5278
	movq	%rdx, %rax	# D.5278, tmp385
	salq	$3, %rax	#, tmp385
	addq	%rdx, %rax	# D.5278, tmp385
	salq	$4, %rax	#, tmp386
	movq	%rax, %rdx	# tmp385, D.5278
	movq	-48(%rbp), %rax	# tempmat3t, tmp387
	addq	%rax, %rdx	# tmp387, D.5281
	movq	gen_pt(%rip), %rax	# gen_pt, D.5280
	movslq	%ebx, %rcx	# i, D.5278
	salq	$3, %rcx	#, D.5278
	addq	%rcx, %rax	# D.5278, D.5280
	movq	(%rax), %rax	# *_226, D.5285
	movq	%rdx, %rsi	# D.5281,
	movq	%rax, %rdi	# D.5285,
	call	su3mat_copy	#
	.loc 1 116 0 discriminator 2
	addl	$1, %ebx	#, i
	addq	$2048, %r12	#, s
.L31:
	.loc 1 116 0 is_stmt 0 discriminator 1
	cmpl	%r13d, %ebx	# loopend, i
	jl	.L32	#,
.LBE9:
	.loc 1 119 0 is_stmt 1
	movq	-56(%rbp), %rax	# mtag0, tmp388
	movq	%rax, %rdi	# tmp388,
	call	cleanup_gather	#
	.loc 1 120 0
	movq	gen_pt(%rip), %rcx	# gen_pt, D.5280
	.loc 1 121 0
	movl	-60(%rbp), %eax	# j, tmp389
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5278
	movq	-72(%rbp), %rax	# dir, tmp390
	addq	%rdx, %rax	# D.5278, D.5283
	movl	(%rax), %eax	# *_233, D.5279
	.loc 1 120 0
	movl	$7, %edx	#, tmp391
	subl	%eax, %edx	# D.5279, D.5279
	movq	-48(%rbp), %rax	# tempmat3t, tmp392
	movq	%rcx, %r8	# D.5280,
	movl	$3, %ecx	#,
	movl	$144, %esi	#,
	movq	%rax, %rdi	# tmp392,
	call	start_gather_from_temp	#
	movq	%rax, -56(%rbp)	# tmp393, mtag0
	jmp	.L33	#
.L30:
	.loc 1 124 0
	movq	gen_pt(%rip), %rcx	# gen_pt, D.5280
	.loc 1 125 0
	movl	-60(%rbp), %eax	# j, tmp394
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5278
	movq	-72(%rbp), %rax	# dir, tmp395
	addq	%rdx, %rax	# D.5278, D.5283
	movl	(%rax), %eax	# *_240, D.5279
	.loc 1 124 0
	movl	$7, %edx	#, tmp396
	subl	%eax, %edx	# D.5279, D.5279
	movq	-40(%rbp), %rax	# tempmat2t, tmp397
	movq	%rcx, %r8	# D.5280,
	movl	$3, %ecx	#,
	movl	$144, %esi	#,
	movq	%rax, %rdi	# tmp397,
	call	start_gather_from_temp	#
	movq	%rax, -56(%rbp)	# tmp398, mtag0
.L33:
	.loc 1 127 0
	movq	-56(%rbp), %rax	# mtag0, tmp399
	movq	%rax, %rdi	# tmp399,
	call	wait_gather	#
.LBB10:
	.loc 1 128 0
	movl	sites_on_node(%rip), %r13d	# sites_on_node, loopend
	movl	$0, %ebx	#, i
	movq	lattice(%rip), %r12	# lattice, s
	jmp	.L34	#
.L35:
	.loc 1 129 0 discriminator 2
	leaq	1760(%r12), %rcx	#, D.5281
	.loc 1 130 0 discriminator 2
	movl	-60(%rbp), %eax	# j, tmp400
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5278
	movq	-72(%rbp), %rax	# dir, tmp401
	addq	%rdx, %rax	# D.5278, D.5283
	movl	(%rax), %eax	# *_250, D.5279
	movl	$7, %edx	#, tmp402
	subl	%eax, %edx	# D.5279, D.5279
	movl	%edx, %eax	# D.5279, D.5279
	.loc 1 129 0 discriminator 2
	movslq	%eax, %rdx	# D.5279, tmp403
	movq	%rdx, %rax	# tmp403, tmp404
	salq	$3, %rax	#, tmp404
	addq	%rdx, %rax	# tmp403, tmp404
	salq	$4, %rax	#, tmp405
	addq	$112, %rax	#, tmp406
	leaq	(%r12,%rax), %rsi	#, D.5281
	movq	gen_pt(%rip), %rax	# gen_pt, D.5280
	movslq	%ebx, %rdx	# i, D.5278
	salq	$3, %rdx	#, D.5278
	addq	%rdx, %rax	# D.5278, D.5280
	movq	(%rax), %rax	# *_257, D.5285
	movq	%rcx, %rdx	# D.5281,
	movq	%rax, %rdi	# D.5285,
	call	mult_su3_na	#
	.loc 1 128 0 discriminator 2
	addl	$1, %ebx	#, i
	addq	$2048, %r12	#, s
.L34:
	.loc 1 128 0 is_stmt 0 discriminator 1
	cmpl	%r13d, %ebx	# loopend, i
	jl	.L35	#,
.LBE10:
	.loc 1 132 0 is_stmt 1
	movq	-56(%rbp), %rax	# mtag0, tmp407
	movq	%rax, %rdi	# tmp407,
	call	cleanup_gather	#
.L22:
	.loc 1 49 0
	addl	$1, -60(%rbp)	#, j
.L6:
	.loc 1 49 0 is_stmt 0 discriminator 1
	movl	-60(%rbp), %eax	# j, tmp408
	cmpl	-76(%rbp), %eax	# length, tmp408
	jl	.L36	#,
	.loc 1 139 0 is_stmt 1
	movl	-76(%rbp), %eax	# length, length.5
	andl	$1, %eax	#, D.5286
	testl	%eax, %eax	# D.5286
	jne	.L37	#,
	.loc 1 140 0
	movl	-76(%rbp), %eax	# length, tmp409
	cltq
	salq	$2, %rax	#, D.5278
	leaq	-4(%rax), %rdx	#, D.5284
	movq	-72(%rbp), %rax	# dir, tmp410
	addq	%rdx, %rax	# D.5284, D.5283
	movl	(%rax), %eax	# *_267, D.5279
	cmpl	$3, %eax	#, D.5279
	jg	.L38	#,
	.loc 1 141 0
	movq	-56(%rbp), %rax	# mtag0, tmp411
	movq	%rax, %rdi	# tmp411,
	call	wait_gather	#
.LBB11:
	.loc 1 142 0
	movl	sites_on_node(%rip), %r13d	# sites_on_node, loopend
	movl	$0, %ebx	#, i
	movq	lattice(%rip), %r12	# lattice, s
	jmp	.L39	#
.L40:
	.loc 1 143 0 discriminator 2
	leaq	1760(%r12), %rdx	#, D.5281
	movq	gen_pt(%rip), %rax	# gen_pt, D.5280
	movslq	%ebx, %rcx	# i, D.5278
	salq	$3, %rcx	#, D.5278
	addq	%rcx, %rax	# D.5278, D.5280
	movq	(%rax), %rax	# *_276, D.5285
	movq	%rdx, %rsi	# D.5281,
	movq	%rax, %rdi	# D.5285,
	call	su3mat_copy	#
	.loc 1 142 0 discriminator 2
	addl	$1, %ebx	#, i
	addq	$2048, %r12	#, s
.L39:
	.loc 1 142 0 is_stmt 0 discriminator 1
	cmpl	%r13d, %ebx	# loopend, i
	jl	.L40	#,
.LBE11:
	.loc 1 145 0 is_stmt 1
	movq	-56(%rbp), %rax	# mtag0, tmp412
	movq	%rax, %rdi	# tmp412,
	call	cleanup_gather	#
	jmp	.L44	#
.L38:
.LBB12:
	.loc 1 148 0
	movl	sites_on_node(%rip), %r13d	# sites_on_node, loopend
	movl	$0, %ebx	#, i
	movq	lattice(%rip), %r12	# lattice, s
	jmp	.L42	#
.L43:
	.loc 1 149 0 discriminator 2
	leaq	1760(%r12), %rcx	#, D.5281
	movslq	%ebx, %rdx	# i, D.5278
	movq	%rdx, %rax	# D.5278, tmp413
	salq	$3, %rax	#, tmp413
	addq	%rdx, %rax	# D.5278, tmp413
	salq	$4, %rax	#, tmp414
	movq	%rax, %rdx	# tmp413, D.5278
	movq	-40(%rbp), %rax	# tempmat2t, tmp415
	addq	%rdx, %rax	# D.5278, D.5281
	movq	%rcx, %rsi	# D.5281,
	movq	%rax, %rdi	# D.5281,
	call	su3mat_copy	#
	.loc 1 148 0 discriminator 2
	addl	$1, %ebx	#, i
	addq	$2048, %r12	#, s
.L42:
	.loc 1 148 0 is_stmt 0 discriminator 1
	cmpl	%r13d, %ebx	# loopend, i
	jl	.L43	#,
.LBE12:
	jmp	.L44	#
.L37:
	.loc 1 154 0 is_stmt 1
	movl	-76(%rbp), %eax	# length, tmp416
	cltq
	salq	$2, %rax	#, D.5278
	leaq	-4(%rax), %rdx	#, D.5284
	movq	-72(%rbp), %rax	# dir, tmp417
	addq	%rdx, %rax	# D.5284, D.5283
	movl	(%rax), %eax	# *_292, D.5279
	cmpl	$3, %eax	#, D.5279
	jg	.L44	#,
	.loc 1 155 0
	movq	-56(%rbp), %rax	# mtag0, tmp418
	movq	%rax, %rdi	# tmp418,
	call	wait_gather	#
.LBB13:
	.loc 1 156 0
	movl	sites_on_node(%rip), %r13d	# sites_on_node, loopend
	movl	$0, %ebx	#, i
	movq	lattice(%rip), %r12	# lattice, s
	jmp	.L45	#
.L46:
	.loc 1 157 0 discriminator 2
	movslq	%ebx, %rdx	# i, D.5278
	movq	%rdx, %rax	# D.5278, tmp419
	salq	$3, %rax	#, tmp419
	addq	%rdx, %rax	# D.5278, tmp419
	salq	$4, %rax	#, tmp420
	movq	%rax, %rdx	# tmp419, D.5278
	movq	-48(%rbp), %rax	# tempmat3t, tmp421
	addq	%rax, %rdx	# tmp421, D.5281
	movq	gen_pt(%rip), %rax	# gen_pt, D.5280
	movslq	%ebx, %rcx	# i, D.5278
	salq	$3, %rcx	#, D.5278
	addq	%rcx, %rax	# D.5278, D.5280
	movq	(%rax), %rax	# *_303, D.5285
	movq	%rdx, %rsi	# D.5281,
	movq	%rax, %rdi	# D.5285,
	call	su3mat_copy	#
	.loc 1 156 0 discriminator 2
	addl	$1, %ebx	#, i
	addq	$2048, %r12	#, s
.L45:
	.loc 1 156 0 is_stmt 0 discriminator 1
	cmpl	%r13d, %ebx	# loopend, i
	jl	.L46	#,
.LBE13:
	.loc 1 159 0 is_stmt 1
	movq	-56(%rbp), %rax	# mtag0, tmp422
	movq	%rax, %rdi	# tmp422,
	call	cleanup_gather	#
.LBB14:
	.loc 1 160 0
	movl	sites_on_node(%rip), %r13d	# sites_on_node, loopend
	movl	$0, %ebx	#, i
	movq	lattice(%rip), %r12	# lattice, s
	jmp	.L47	#
.L48:
	.loc 1 161 0 discriminator 2
	leaq	1760(%r12), %rcx	#, D.5281
	movslq	%ebx, %rdx	# i, D.5278
	movq	%rdx, %rax	# D.5278, tmp423
	salq	$3, %rax	#, tmp423
	addq	%rdx, %rax	# D.5278, tmp423
	salq	$4, %rax	#, tmp424
	movq	%rax, %rdx	# tmp423, D.5278
	movq	-48(%rbp), %rax	# tempmat3t, tmp425
	addq	%rdx, %rax	# D.5278, D.5281
	movq	%rcx, %rsi	# D.5281,
	movq	%rax, %rdi	# D.5281,
	call	su3mat_copy	#
	.loc 1 160 0 discriminator 2
	addl	$1, %ebx	#, i
	addq	$2048, %r12	#, s
.L47:
	.loc 1 160 0 is_stmt 0 discriminator 1
	cmpl	%r13d, %ebx	# loopend, i
	jl	.L48	#,
.L44:
.LBE14:
	.loc 1 167 0 is_stmt 1
	movq	-48(%rbp), %rax	# tempmat3t, tmp426
	movq	%rax, %rdi	# tmp426,
	call	free	#
	.loc 1 168 0
	movq	-40(%rbp), %rax	# tempmat2t, tmp427
	movq	%rax, %rdi	# tmp427,
	call	free	#
	.loc 1 169 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	path_product, .-path_product
.Letext0:
	.file 2 "complex.h"
	.file 3 "random.h"
	.file 4 "su3.h"
	.file 5 "macros.h"
	.file 6 "./lattice.h"
	.file 7 "comdefs.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x666
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF57
	.byte	0x1
	.long	.LASF58
	.long	.LASF59
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
	.uleb128 0x4
	.byte	0x8
	.long	0x57
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
	.byte	0x10
	.byte	0x2
	.byte	0x49
	.long	0xbc
	.uleb128 0x6
	.long	.LASF13
	.byte	0x2
	.byte	0x4a
	.long	0x94
	.byte	0
	.uleb128 0x6
	.long	.LASF14
	.byte	0x2
	.byte	0x4b
	.long	0x94
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.long	.LASF19
	.byte	0x2
	.byte	0x4c
	.long	0x9b
	.uleb128 0x5
	.byte	0x58
	.byte	0x3
	.byte	0x6
	.long	0x14d
	.uleb128 0x8
	.string	"r0"
	.byte	0x3
	.byte	0x8
	.long	0x2d
	.byte	0
	.uleb128 0x8
	.string	"r1"
	.byte	0x3
	.byte	0x8
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.string	"r2"
	.byte	0x3
	.byte	0x8
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.string	"r3"
	.byte	0x3
	.byte	0x8
	.long	0x2d
	.byte	0x18
	.uleb128 0x8
	.string	"r4"
	.byte	0x3
	.byte	0x8
	.long	0x2d
	.byte	0x20
	.uleb128 0x8
	.string	"r5"
	.byte	0x3
	.byte	0x8
	.long	0x2d
	.byte	0x28
	.uleb128 0x8
	.string	"r6"
	.byte	0x3
	.byte	0x8
	.long	0x2d
	.byte	0x30
	.uleb128 0x6
	.long	.LASF15
	.byte	0x3
	.byte	0x9
	.long	0x2d
	.byte	0x38
	.uleb128 0x6
	.long	.LASF16
	.byte	0x3
	.byte	0x9
	.long	0x2d
	.byte	0x40
	.uleb128 0x6
	.long	.LASF17
	.byte	0x3
	.byte	0x9
	.long	0x2d
	.byte	0x48
	.uleb128 0x6
	.long	.LASF18
	.byte	0x3
	.byte	0xa
	.long	0x94
	.byte	0x50
	.byte	0
	.uleb128 0x7
	.long	.LASF20
	.byte	0x3
	.byte	0xb
	.long	0xc7
	.uleb128 0x5
	.byte	0x90
	.byte	0x4
	.byte	0xe
	.long	0x16b
	.uleb128 0x8
	.string	"e"
	.byte	0x4
	.byte	0xe
	.long	0x16b
	.byte	0
	.byte	0
	.uleb128 0x9
	.long	0xbc
	.long	0x181
	.uleb128 0xa
	.long	0x65
	.byte	0x2
	.uleb128 0xa
	.long	0x65
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.long	.LASF21
	.byte	0x4
	.byte	0xe
	.long	0x158
	.uleb128 0x5
	.byte	0x30
	.byte	0x4
	.byte	0xf
	.long	0x19f
	.uleb128 0x8
	.string	"c"
	.byte	0x4
	.byte	0xf
	.long	0x19f
	.byte	0
	.byte	0
	.uleb128 0x9
	.long	0xbc
	.long	0x1af
	.uleb128 0xa
	.long	0x65
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.long	.LASF22
	.byte	0x4
	.byte	0xf
	.long	0x18c
	.uleb128 0x5
	.byte	0x50
	.byte	0x4
	.byte	0x10
	.long	0x217
	.uleb128 0x8
	.string	"m01"
	.byte	0x4
	.byte	0x11
	.long	0xbc
	.byte	0
	.uleb128 0x8
	.string	"m02"
	.byte	0x4
	.byte	0x11
	.long	0xbc
	.byte	0x10
	.uleb128 0x8
	.string	"m12"
	.byte	0x4
	.byte	0x11
	.long	0xbc
	.byte	0x20
	.uleb128 0x6
	.long	.LASF23
	.byte	0x4
	.byte	0x11
	.long	0x94
	.byte	0x30
	.uleb128 0x6
	.long	.LASF24
	.byte	0x4
	.byte	0x11
	.long	0x94
	.byte	0x38
	.uleb128 0x6
	.long	.LASF25
	.byte	0x4
	.byte	0x11
	.long	0x94
	.byte	0x40
	.uleb128 0x6
	.long	.LASF26
	.byte	0x4
	.byte	0x11
	.long	0x94
	.byte	0x48
	.byte	0
	.uleb128 0x7
	.long	.LASF27
	.byte	0x4
	.byte	0x11
	.long	0x1ba
	.uleb128 0x9
	.long	0x1af
	.long	0x232
	.uleb128 0xa
	.long	0x65
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.long	.LASF28
	.byte	0x5
	.byte	0x2a
	.long	0x57
	.uleb128 0x4
	.byte	0x8
	.long	0x6c
	.uleb128 0xb
	.value	0x800
	.byte	0x6
	.byte	0x1f
	.long	0x35a
	.uleb128 0x8
	.string	"x"
	.byte	0x6
	.byte	0x22
	.long	0x50
	.byte	0
	.uleb128 0x8
	.string	"y"
	.byte	0x6
	.byte	0x22
	.long	0x50
	.byte	0x2
	.uleb128 0x8
	.string	"z"
	.byte	0x6
	.byte	0x22
	.long	0x50
	.byte	0x4
	.uleb128 0x8
	.string	"t"
	.byte	0x6
	.byte	0x22
	.long	0x50
	.byte	0x6
	.uleb128 0x6
	.long	.LASF29
	.byte	0x6
	.byte	0x24
	.long	0x72
	.byte	0x8
	.uleb128 0x6
	.long	.LASF30
	.byte	0x6
	.byte	0x26
	.long	0x57
	.byte	0xc
	.uleb128 0x6
	.long	.LASF31
	.byte	0x6
	.byte	0x29
	.long	0x14d
	.byte	0x10
	.uleb128 0x6
	.long	.LASF32
	.byte	0x6
	.byte	0x2b
	.long	0x57
	.byte	0x68
	.uleb128 0x6
	.long	.LASF33
	.byte	0x6
	.byte	0x32
	.long	0x35a
	.byte	0x70
	.uleb128 0xc
	.string	"mom"
	.byte	0x6
	.byte	0x3e
	.long	0x36a
	.value	0x2b0
	.uleb128 0xd
	.long	.LASF34
	.byte	0x6
	.byte	0x42
	.long	0x37a
	.value	0x3f0
	.uleb128 0xc
	.string	"phi"
	.byte	0x6
	.byte	0x45
	.long	0x1af
	.value	0x410
	.uleb128 0xd
	.long	.LASF35
	.byte	0x6
	.byte	0x46
	.long	0x1af
	.value	0x440
	.uleb128 0xd
	.long	.LASF36
	.byte	0x6
	.byte	0x47
	.long	0x1af
	.value	0x470
	.uleb128 0xc
	.string	"xxx"
	.byte	0x6
	.byte	0x48
	.long	0x1af
	.value	0x4a0
	.uleb128 0xc
	.string	"ttt"
	.byte	0x6
	.byte	0x49
	.long	0x1af
	.value	0x4d0
	.uleb128 0xd
	.long	.LASF37
	.byte	0x6
	.byte	0x4a
	.long	0x1af
	.value	0x500
	.uleb128 0xd
	.long	.LASF38
	.byte	0x6
	.byte	0x5d
	.long	0x222
	.value	0x530
	.uleb128 0xd
	.long	.LASF39
	.byte	0x6
	.byte	0x5f
	.long	0x222
	.value	0x5f0
	.uleb128 0xd
	.long	.LASF40
	.byte	0x6
	.byte	0x60
	.long	0x1af
	.value	0x6b0
	.uleb128 0xd
	.long	.LASF41
	.byte	0x6
	.byte	0x62
	.long	0x181
	.value	0x6e0
	.uleb128 0xd
	.long	.LASF42
	.byte	0x6
	.byte	0x62
	.long	0x181
	.value	0x770
	.byte	0
	.uleb128 0x9
	.long	0x181
	.long	0x36a
	.uleb128 0xa
	.long	0x65
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.long	0x217
	.long	0x37a
	.uleb128 0xa
	.long	0x65
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.long	0x94
	.long	0x38a
	.uleb128 0xa
	.long	0x65
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.long	.LASF43
	.byte	0x6
	.byte	0x63
	.long	0x243
	.uleb128 0x5
	.byte	0x18
	.byte	0x7
	.byte	0x35
	.long	0x3ce
	.uleb128 0x6
	.long	.LASF44
	.byte	0x7
	.byte	0x37
	.long	0x57
	.byte	0
	.uleb128 0x6
	.long	.LASF45
	.byte	0x7
	.byte	0x39
	.long	0x57
	.byte	0x4
	.uleb128 0x6
	.long	.LASF46
	.byte	0x7
	.byte	0x3b
	.long	0x6c
	.byte	0x8
	.uleb128 0x6
	.long	.LASF47
	.byte	0x7
	.byte	0x40
	.long	0x57
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.long	.LASF48
	.byte	0x7
	.byte	0x42
	.long	0x395
	.uleb128 0xe
	.long	.LASF60
	.byte	0x1
	.byte	0x12
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x626
	.uleb128 0xf
	.string	"dir"
	.byte	0x1
	.byte	0x12
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x10
	.long	.LASF49
	.byte	0x1
	.byte	0x12
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.byte	0x13
	.long	0x57
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x11
	.string	"s"
	.byte	0x1
	.byte	0x14
	.long	0x626
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x12
	.long	.LASF50
	.byte	0x1
	.byte	0x15
	.long	0x62c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x12
	.long	.LASF51
	.byte	0x1
	.byte	0x16
	.long	0x632
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x12
	.long	.LASF52
	.byte	0x1
	.byte	0x16
	.long	0x632
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x11
	.string	"j"
	.byte	0x1
	.byte	0x17
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x13
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x485
	.uleb128 0x12
	.long	.LASF53
	.byte	0x1
	.byte	0x2c
	.long	0x57
	.uleb128 0x1
	.byte	0x5d
	.byte	0
	.uleb128 0x13
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.long	0x4a8
	.uleb128 0x12
	.long	.LASF53
	.byte	0x1
	.byte	0x36
	.long	0x57
	.uleb128 0x1
	.byte	0x5d
	.byte	0
	.uleb128 0x13
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.long	0x4cb
	.uleb128 0x12
	.long	.LASF53
	.byte	0x1
	.byte	0x3d
	.long	0x57
	.uleb128 0x1
	.byte	0x5d
	.byte	0
	.uleb128 0x13
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.long	0x4ee
	.uleb128 0x12
	.long	.LASF53
	.byte	0x1
	.byte	0x49
	.long	0x57
	.uleb128 0x1
	.byte	0x5d
	.byte	0
	.uleb128 0x13
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.long	0x511
	.uleb128 0x12
	.long	.LASF53
	.byte	0x1
	.byte	0x55
	.long	0x57
	.uleb128 0x1
	.byte	0x5d
	.byte	0
	.uleb128 0x13
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.long	0x534
	.uleb128 0x12
	.long	.LASF53
	.byte	0x1
	.byte	0x61
	.long	0x57
	.uleb128 0x1
	.byte	0x5d
	.byte	0
	.uleb128 0x13
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.long	0x557
	.uleb128 0x12
	.long	.LASF53
	.byte	0x1
	.byte	0x68
	.long	0x57
	.uleb128 0x1
	.byte	0x5d
	.byte	0
	.uleb128 0x13
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.long	0x57a
	.uleb128 0x12
	.long	.LASF53
	.byte	0x1
	.byte	0x74
	.long	0x57
	.uleb128 0x1
	.byte	0x5d
	.byte	0
	.uleb128 0x13
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.long	0x59d
	.uleb128 0x12
	.long	.LASF53
	.byte	0x1
	.byte	0x80
	.long	0x57
	.uleb128 0x1
	.byte	0x5d
	.byte	0
	.uleb128 0x13
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.long	0x5c0
	.uleb128 0x12
	.long	.LASF53
	.byte	0x1
	.byte	0x8e
	.long	0x57
	.uleb128 0x1
	.byte	0x5d
	.byte	0
	.uleb128 0x13
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.long	0x5e3
	.uleb128 0x12
	.long	.LASF53
	.byte	0x1
	.byte	0x94
	.long	0x57
	.uleb128 0x1
	.byte	0x5d
	.byte	0
	.uleb128 0x13
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.long	0x606
	.uleb128 0x12
	.long	.LASF53
	.byte	0x1
	.byte	0x9c
	.long	0x57
	.uleb128 0x1
	.byte	0x5d
	.byte	0
	.uleb128 0x14
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.uleb128 0x12
	.long	.LASF53
	.byte	0x1
	.byte	0xa0
	.long	0x57
	.uleb128 0x1
	.byte	0x5d
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0x38a
	.uleb128 0x4
	.byte	0x8
	.long	0x3ce
	.uleb128 0x4
	.byte	0x8
	.long	0x181
	.uleb128 0x15
	.long	.LASF54
	.byte	0x6
	.byte	0x87
	.long	0x57
	.uleb128 0x15
	.long	.LASF55
	.byte	0x6
	.byte	0x9a
	.long	0x626
	.uleb128 0x9
	.long	0x23d
	.long	0x65e
	.uleb128 0xa
	.long	0x65
	.byte	0xf
	.byte	0
	.uleb128 0x15
	.long	.LASF56
	.byte	0x6
	.byte	0x9f
	.long	0x64e
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x11
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
	.uleb128 0x14
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x15
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
.LASF28:
	.string	"field_offset"
.LASF15:
	.string	"multiplier"
.LASF57:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF5:
	.string	"short int"
.LASF51:
	.string	"tempmat2t"
.LASF34:
	.string	"phase"
.LASF19:
	.string	"complex"
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
.LASF49:
	.string	"length"
.LASF11:
	.string	"float"
.LASF31:
	.string	"site_prn"
.LASF21:
	.string	"su3_matrix"
.LASF9:
	.string	"long long int"
.LASF13:
	.string	"real"
.LASF55:
	.string	"lattice"
.LASF6:
	.string	"long int"
.LASF53:
	.string	"loopend"
.LASF52:
	.string	"tempmat3t"
.LASF54:
	.string	"sites_on_node"
.LASF44:
	.string	"msg_node"
.LASF29:
	.string	"parity"
.LASF25:
	.string	"m22im"
.LASF47:
	.string	"msg_id"
.LASF23:
	.string	"m00im"
.LASF20:
	.string	"double_prn"
.LASF1:
	.string	"unsigned char"
.LASF26:
	.string	"space"
.LASF4:
	.string	"signed char"
.LASF10:
	.string	"long long unsigned int"
.LASF18:
	.string	"scale"
.LASF3:
	.string	"unsigned int"
.LASF41:
	.string	"tempmat1"
.LASF14:
	.string	"imag"
.LASF2:
	.string	"short unsigned int"
.LASF22:
	.string	"su3_vector"
.LASF42:
	.string	"staple"
.LASF8:
	.string	"char"
.LASF40:
	.string	"templongv1"
.LASF32:
	.string	"space1"
.LASF16:
	.string	"addend"
.LASF59:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/433.milc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF0:
	.string	"long unsigned int"
.LASF24:
	.string	"m11im"
.LASF12:
	.string	"double"
.LASF50:
	.string	"mtag0"
.LASF35:
	.string	"resid"
.LASF17:
	.string	"ic_state"
.LASF7:
	.string	"sizetype"
.LASF56:
	.string	"gen_pt"
.LASF58:
	.string	"path_product.c"
.LASF60:
	.string	"path_product"
.LASF27:
	.string	"anti_hermitmat"
.LASF46:
	.string	"msg_buf"
.LASF48:
	.string	"msg_tag"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
