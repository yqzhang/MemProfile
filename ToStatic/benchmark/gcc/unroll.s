	.file	"unroll.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 unroll.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.align 32
	.type	factors, @object
	.size	factors, 32
factors:
# factor:
	.long	2
# count:
	.long	0
# factor:
	.long	3
# count:
	.long	0
# factor:
	.long	5
# count:
	.long	0
# factor:
	.long	7
# count:
	.long	0
	.local	addr_combined_regs
	.comm	addr_combined_regs,8,8
	.local	splittable_regs
	.comm	splittable_regs,8,8
	.local	splittable_regs_updates
	.comm	splittable_regs_updates,8,8
	.section	.rodata
	.align 8
.LC0:
	.string	"Unrolling failure: Loop too big.\n"
	.align 8
.LC1:
	.string	"Unrolling failure: cannot unroll EH regions.\n"
	.align 8
.LC2:
	.string	"Unrolling failure: Unbalanced block notes.\n"
.LC3:
	.string	"Loop unrolling: "
.LC4:
	.string	"%ld"
.LC5:
	.string	" iterations.\n"
	.align 8
.LC6:
	.string	"Loop unrolling: No factors found.\n"
.LC7:
	.string	"Unrolling loop %d times.\n"
	.align 8
.LC8:
	.string	"Unrolling failure: loop does not end with a JUMP_INSN.\n"
	.align 8
.LC9:
	.string	"Splitting not safe, because loop not entered at top.\n"
	.align 8
.LC10:
	.string	"Unrolling failure: unknown insns between BEG note and loop label.\n"
	.align 8
.LC11:
	.string	"Unrolling failure: loop start label is gone\n"
	.align 8
.LC12:
	.string	"Unrolling failure: final conditional branch not to loop start\n"
.LC13:
	.string	"unroll.c"
.LC14:
	.string	"Marked reg %d as local\n"
.LC15:
	.string	"Did not mark reg %d as local\n"
.LC16:
	.string	"unroll_loop_precondition"
	.align 8
.LC17:
	.string	"Unrolling failure: Naive unrolling not being done.\n"
.LC18:
	.string	"unroll_loop"
	.text
	.globl	unroll_loop
	.type	unroll_loop, @function
unroll_loop:
.LFB2:
	.file 1 "unroll.c"
	.loc 1 237 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$416, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -376(%rbp)	# loop, loop
	movl	%esi, -380(%rbp)	# insn_count, insn_count
	movl	%edx, -384(%rbp)	# strength_reduce_p, strength_reduce_p
	.loc 1 238 0
	movq	-376(%rbp), %rax	# loop, tmp542
	movq	160(%rax), %rax	# loop_75(D)->aux, tmp543
	movq	%rax, -144(%rbp)	# tmp543, loop_info
	.loc 1 239 0
	movq	-376(%rbp), %rax	# loop, tmp544
	movq	160(%rax), %rax	# loop_75(D)->aux, D.14881
	addq	$208, %rax	#, tmp545
	movq	%rax, -136(%rbp)	# tmp545, ivs
	.loc 1 243 0
	movl	$1, -348(%rbp)	#, unroll_number
	.loc 1 249 0
	movq	$0, -192(%rbp)	#, local_label
	.loc 1 253 0
	movq	$0, -184(%rbp)	#, exit_label
	.loc 1 256 0
	movl	$0, -344(%rbp)	#, splitting_not_safe
	.loc 1 257 0
	movl	$2, -340(%rbp)	#, unroll_type
	.loc 1 258 0
	movl	$0, -296(%rbp)	#, loop_preconditioned
	.loc 1 264 0
	movq	-376(%rbp), %rax	# loop, tmp546
	movq	192(%rax), %rax	# loop_75(D)->start, tmp547
	movq	%rax, -128(%rbp)	# tmp547, loop_start
	.loc 1 265 0
	movq	-376(%rbp), %rax	# loop, tmp548
	movq	200(%rax), %rax	# loop_75(D)->end, tmp549
	movq	%rax, -120(%rbp)	# tmp549, loop_end
	.loc 1 270 0
	cmpl	$50, -380(%rbp)	#, insn_count
	jle	.L2	#,
	.loc 1 272 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.0
	testq	%rax, %rax	# loop_dump_stream.0
	je	.L3	#,
	.loc 1 273 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.1
	movq	%rax, %rcx	# loop_dump_stream.1,
	movl	$33, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC0, %edi	#,
	call	fwrite	#
	.loc 1 274 0
	jmp	.L1	#
.L3:
	jmp	.L1	#
.L2:
.LBB2:
	.loc 1 288 0
	movl	$0, -336(%rbp)	#, block_begins
	.loc 1 289 0
	movl	$0, -332(%rbp)	#, block_ends
	.loc 1 291 0
	movq	-128(%rbp), %rax	# loop_start, tmp550
	movq	%rax, -208(%rbp)	# tmp550, insn
	jmp	.L5	#
.L11:
	.loc 1 293 0
	movq	-208(%rbp), %rax	# insn, tmp551
	movzwl	(%rax), %eax	# insn_36->code, D.14882
	cmpw	$37, %ax	#, D.14882
	jne	.L6	#,
	.loc 1 295 0
	movq	-208(%rbp), %rax	# insn, tmp552
	movl	40(%rax), %eax	# insn_36->fld[4].rtint, D.14883
	cmpl	$-98, %eax	#, D.14883
	jne	.L7	#,
	.loc 1 296 0
	addl	$1, -336(%rbp)	#, block_begins
	jmp	.L8	#
.L7:
	.loc 1 297 0
	movq	-208(%rbp), %rax	# insn, tmp553
	movl	40(%rax), %eax	# insn_36->fld[4].rtint, D.14883
	cmpl	$-97, %eax	#, D.14883
	jne	.L8	#,
	.loc 1 298 0
	addl	$1, -332(%rbp)	#, block_ends
.L8:
	.loc 1 299 0
	movq	-208(%rbp), %rax	# insn, tmp554
	movl	40(%rax), %eax	# insn_36->fld[4].rtint, D.14883
	cmpl	$-86, %eax	#, D.14883
	je	.L9	#,
	.loc 1 300 0
	movq	-208(%rbp), %rax	# insn, tmp555
	movl	40(%rax), %eax	# insn_36->fld[4].rtint, D.14883
	cmpl	$-85, %eax	#, D.14883
	jne	.L6	#,
.L9:
	.loc 1 307 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.2
	testq	%rax, %rax	# loop_dump_stream.2
	je	.L10	#,
	.loc 1 308 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.3
	movq	%rax, %rcx	# loop_dump_stream.3,
	movl	$45, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC1, %edi	#,
	call	fwrite	#
	.loc 1 310 0
	jmp	.L1	#
.L10:
	jmp	.L1	#
.L6:
	.loc 1 291 0
	movq	-208(%rbp), %rax	# insn, tmp556
	movq	24(%rax), %rax	# insn_36->fld[2].rtx, tmp557
	movq	%rax, -208(%rbp)	# tmp557, insn
.L5:
	.loc 1 291 0 is_stmt 0 discriminator 1
	movq	-208(%rbp), %rax	# insn, tmp558
	cmpq	-120(%rbp), %rax	# loop_end, tmp558
	jne	.L11	#,
	.loc 1 315 0 is_stmt 1
	movl	-336(%rbp), %eax	# block_begins, tmp559
	cmpl	-332(%rbp), %eax	# block_ends, tmp559
	je	.L12	#,
	.loc 1 317 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.4
	testq	%rax, %rax	# loop_dump_stream.4
	je	.L13	#,
	.loc 1 318 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.5
	movq	%rax, %rcx	# loop_dump_stream.5,
	movl	$43, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC2, %edi	#,
	call	fwrite	#
	.loc 1 320 0
	jmp	.L1	#
.L13:
	jmp	.L1	#
.L12:
.LBE2:
	.loc 1 332 0
	cmpl	$0, -384(%rbp)	#, strength_reduce_p
	jne	.L14	#,
	.loc 1 333 0
	movq	-144(%rbp), %rax	# loop_info, tmp560
	movq	$0, 96(%rax)	#, loop_info_76->n_iterations
.L14:
	.loc 1 335 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.6
	testq	%rax, %rax	# loop_dump_stream.6
	je	.L15	#,
	.loc 1 335 0 is_stmt 0 discriminator 1
	movq	-144(%rbp), %rax	# loop_info, tmp561
	movq	96(%rax), %rax	# loop_info_76->n_iterations, D.14884
	testq	%rax, %rax	# D.14884
	je	.L15	#,
	.loc 1 337 0 is_stmt 1
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.7
	movq	%rax, %rcx	# loop_dump_stream.7,
	movl	$16, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC3, %edi	#,
	call	fwrite	#
	.loc 1 338 0
	movq	-144(%rbp), %rax	# loop_info, tmp562
	movq	96(%rax), %rdx	# loop_info_76->n_iterations, D.14884
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.8
	movl	$.LC4, %esi	#,
	movq	%rax, %rdi	# loop_dump_stream.8,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 340 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.9
	movq	%rax, %rcx	# loop_dump_stream.9,
	movl	$13, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC5, %edi	#,
	call	fwrite	#
.L15:
	.loc 1 345 0
	movq	-120(%rbp), %rax	# loop_end, tmp563
	movq	%rax, %rdi	# tmp563,
	call	prev_nonnote_insn	#
	movq	%rax, -112(%rbp)	# tmp564, last_loop_insn
	.loc 1 350 0
	movq	-144(%rbp), %rax	# loop_info, tmp565
	movq	96(%rax), %rax	# loop_info_76->n_iterations, D.14884
	cmpq	$1, %rax	#, D.14884
	jne	.L16	#,
.LBB3:
	.loc 1 356 0
	movq	-376(%rbp), %rax	# loop, tmp566
	movq	176(%rax), %rdx	# loop_75(D)->cont, D.14885
	movq	-376(%rbp), %rax	# loop, tmp567
	movq	192(%rax), %rax	# loop_75(D)->start, D.14885
	movq	%rdx, %rsi	# D.14885,
	movq	%rax, %rdi	# D.14885,
	call	ujump_to_loop_cont	#
	movq	%rax, -104(%rbp)	# tmp568, ujump
	.loc 1 357 0
	cmpq	$0, -104(%rbp)	#, ujump
	je	.L17	#,
	.loc 1 358 0
	movq	-104(%rbp), %rax	# ujump, tmp569
	movq	%rax, %rdi	# tmp569,
	call	delete_related_insns	#
.L17:
	.loc 1 367 0
	movq	-112(%rbp), %rax	# last_loop_insn, tmp570
	movzwl	(%rax), %eax	# last_loop_insn_112->code, D.14882
	cmpw	$35, %ax	#, D.14882
	jne	.L18	#,
	.loc 1 370 0
	movq	-112(%rbp), %rax	# last_loop_insn, tmp571
	movq	16(%rax), %rax	# last_loop_insn_112->fld[1].rtx, D.14885
	movq	%rax, %rdi	# D.14885,
	call	delete_related_insns	#
	jmp	.L19	#
.L18:
	.loc 1 372 0
	movq	-112(%rbp), %rax	# last_loop_insn, tmp572
	movzwl	(%rax), %eax	# last_loop_insn_112->code, D.14882
	cmpw	$33, %ax	#, D.14882
	jne	.L19	#,
	.loc 1 377 0
	movq	-112(%rbp), %rax	# last_loop_insn, tmp573
	movq	%rax, %rdi	# tmp573,
	call	delete_related_insns	#
.L19:
	.loc 1 387 0
	movq	-376(%rbp), %rax	# loop, tmp574
	movq	168(%rax), %rax	# loop_75(D)->vtop, D.14885
	testq	%rax, %rax	# D.14885
	je	.L20	#,
	.loc 1 388 0
	movq	-376(%rbp), %rax	# loop, tmp575
	movq	168(%rax), %rax	# loop_75(D)->vtop, D.14885
	movq	%rax, %rdi	# D.14885,
	call	delete_related_insns	#
.L20:
	.loc 1 389 0
	movq	-376(%rbp), %rax	# loop, tmp576
	movq	176(%rax), %rax	# loop_75(D)->cont, D.14885
	testq	%rax, %rax	# D.14885
	je	.L21	#,
	.loc 1 390 0
	movq	-376(%rbp), %rax	# loop, tmp577
	movq	176(%rax), %rax	# loop_75(D)->cont, D.14885
	movq	%rax, %rdi	# D.14885,
	call	delete_related_insns	#
.L21:
	.loc 1 391 0
	cmpq	$0, -128(%rbp)	#, loop_start
	je	.L22	#,
	.loc 1 392 0
	movq	-128(%rbp), %rax	# loop_start, tmp578
	movq	%rax, %rdi	# tmp578,
	call	delete_related_insns	#
.L22:
	.loc 1 393 0
	cmpq	$0, -120(%rbp)	#, loop_end
	je	.L23	#,
	.loc 1 394 0
	movq	-120(%rbp), %rax	# loop_end, tmp579
	movq	%rax, %rdi	# tmp579,
	call	delete_related_insns	#
	.loc 1 396 0
	jmp	.L1	#
.L23:
	jmp	.L1	#
.L16:
.LBE3:
	.loc 1 398 0
	movq	-144(%rbp), %rax	# loop_info, tmp580
	movq	96(%rax), %rax	# loop_info_76->n_iterations, D.14884
	testq	%rax, %rax	# D.14884
	je	.L24	#,
	.loc 1 400 0
	movq	-144(%rbp), %rax	# loop_info, tmp581
	movq	96(%rax), %rax	# loop_info_76->n_iterations, D.14884
	cmpq	$99, %rax	#, D.14884
	ja	.L24	#,
	.loc 1 401 0
	movq	-144(%rbp), %rax	# loop_info, tmp582
	movq	96(%rax), %rdx	# loop_info_76->n_iterations, D.14884
	movl	-380(%rbp), %eax	# insn_count, tmp583
	cltq
	imulq	%rdx, %rax	# D.14884, D.14884
	cmpq	$99, %rax	#, D.14884
	ja	.L24	#,
	.loc 1 403 0
	movq	-144(%rbp), %rax	# loop_info, tmp584
	movq	96(%rax), %rax	# loop_info_76->n_iterations, D.14884
	movl	%eax, -348(%rbp)	# D.14884, unroll_number
	.loc 1 404 0
	movl	$0, -340(%rbp)	#, unroll_type
	jmp	.L25	#
.L24:
	.loc 1 406 0
	movq	-144(%rbp), %rax	# loop_info, tmp585
	movq	96(%rax), %rax	# loop_info_76->n_iterations, D.14884
	testq	%rax, %rax	# D.14884
	je	.L25	#,
	.loc 1 412 0
	movl	$0, -360(%rbp)	#, i
	jmp	.L26	#
.L27:
	.loc 1 413 0 discriminator 2
	movl	-360(%rbp), %eax	# i, tmp587
	cltq
	movl	$0, factors+4(,%rax,8)	#, factors[i_1].count
	.loc 1 412 0 discriminator 2
	addl	$1, -360(%rbp)	#, i
.L26:
	.loc 1 412 0 is_stmt 0 discriminator 1
	cmpl	$3, -360(%rbp)	#, i
	jle	.L27	#,
	.loc 1 415 0 is_stmt 1
	movq	-144(%rbp), %rax	# loop_info, tmp588
	movq	96(%rax), %rax	# loop_info_76->n_iterations, tmp589
	movq	%rax, -232(%rbp)	# tmp589, temp
	.loc 1 416 0
	movl	$3, -360(%rbp)	#, i
	jmp	.L28	#
.L31:
	.loc 1 417 0
	jmp	.L29	#
.L30:
	.loc 1 419 0
	movl	-360(%rbp), %eax	# i, tmp591
	cltq
	movl	factors+4(,%rax,8), %eax	# factors[i_2].count, D.14883
	leal	1(%rax), %edx	#, D.14883
	movl	-360(%rbp), %eax	# i, tmp593
	cltq
	movl	%edx, factors+4(,%rax,8)	# D.14883, factors[i_2].count
	.loc 1 420 0
	movl	-360(%rbp), %eax	# i, tmp595
	cltq
	movl	factors(,%rax,8), %eax	# factors[i_2].factor, D.14883
	movslq	%eax, %rbx	# D.14883, D.14884
	movq	-232(%rbp), %rax	# temp, tmp598
	movl	$0, %edx	#, tmp597
	divq	%rbx	# D.14884
	movq	%rax, -232(%rbp)	# tmp596, temp
.L29:
	.loc 1 417 0 discriminator 1
	movl	-360(%rbp), %eax	# i, tmp600
	cltq
	movl	factors(,%rax,8), %eax	# factors[i_2].factor, D.14883
	movslq	%eax, %rcx	# D.14883, D.14884
	movq	-232(%rbp), %rax	# temp, tmp601
	movl	$0, %edx	#, tmp602
	divq	%rcx	# D.14884
	movq	%rdx, %rax	# tmp602, D.14884
	testq	%rax, %rax	# D.14884
	je	.L30	#,
	.loc 1 416 0
	subl	$1, -360(%rbp)	#, i
.L28:
	.loc 1 416 0 is_stmt 0 discriminator 1
	cmpl	$0, -360(%rbp)	#, i
	jns	.L31	#,
	.loc 1 426 0 is_stmt 1
	movl	$1, -348(%rbp)	#, unroll_number
	.loc 1 427 0
	movl	-380(%rbp), %eax	# insn_count, tmp605
	cltq
	movq	%rax, -232(%rbp)	# tmp604, temp
	.loc 1 428 0
	movl	$3, -360(%rbp)	#, i
	jmp	.L32	#
.L37:
	.loc 1 429 0
	jmp	.L33	#
.L36:
	.loc 1 431 0
	movl	-360(%rbp), %eax	# i, tmp607
	cltq
	movl	factors(,%rax,8), %eax	# factors[i_3].factor, D.14883
	cltq
	imulq	-232(%rbp), %rax	# temp, D.14884
	cmpq	$99, %rax	#, D.14884
	ja	.L34	#,
	.loc 1 433 0
	movl	-360(%rbp), %eax	# i, tmp609
	cltq
	movl	factors(,%rax,8), %eax	# factors[i_3].factor, D.14883
	movl	-348(%rbp), %edx	# unroll_number, tmp611
	imull	%edx, %eax	# tmp611, tmp610
	movl	%eax, -348(%rbp)	# tmp610, unroll_number
	.loc 1 434 0
	movl	-360(%rbp), %eax	# i, tmp613
	cltq
	movl	factors(,%rax,8), %eax	# factors[i_3].factor, D.14883
	cltq
	movq	-232(%rbp), %rdx	# temp, tmp615
	imulq	%rdx, %rax	# tmp615, tmp614
	movq	%rax, -232(%rbp)	# tmp614, temp
	jmp	.L33	#
.L34:
	.loc 1 437 0
	jmp	.L35	#
.L33:
	.loc 1 429 0 discriminator 1
	movl	-360(%rbp), %eax	# i, tmp617
	cltq
	movl	factors+4(,%rax,8), %eax	# factors[i_3].count, D.14883
	leal	-1(%rax), %ecx	#, D.14883
	movl	-360(%rbp), %edx	# i, tmp619
	movslq	%edx, %rdx	# tmp619, tmp618
	movl	%ecx, factors+4(,%rdx,8)	# D.14883, factors[i_3].count
	testl	%eax, %eax	# D.14883
	jne	.L36	#,
.L35:
	.loc 1 428 0
	subl	$1, -360(%rbp)	#, i
.L32:
	.loc 1 428 0 is_stmt 0 discriminator 1
	cmpl	$0, -360(%rbp)	#, i
	jns	.L37	#,
	.loc 1 442 0 is_stmt 1
	cmpl	$1, -348(%rbp)	#, unroll_number
	jne	.L38	#,
	.loc 1 444 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.10
	testq	%rax, %rax	# loop_dump_stream.10
	je	.L25	#,
	.loc 1 445 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.11
	movq	%rax, %rcx	# loop_dump_stream.11,
	movl	$34, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC6, %edi	#,
	call	fwrite	#
	jmp	.L25	#
.L38:
	.loc 1 448 0
	movl	$1, -340(%rbp)	#, unroll_type
.L25:
	.loc 1 453 0
	cmpl	$2, -340(%rbp)	#, unroll_type
	jne	.L40	#,
	.loc 1 455 0
	movl	-380(%rbp), %eax	# insn_count, tmp620
	sall	$3, %eax	#, D.14883
	cmpl	$99, %eax	#, D.14883
	jg	.L41	#,
	.loc 1 456 0
	movl	$8, -348(%rbp)	#, unroll_number
	jmp	.L40	#
.L41:
	.loc 1 457 0
	movl	-380(%rbp), %eax	# insn_count, tmp621
	sall	$2, %eax	#, D.14883
	cmpl	$99, %eax	#, D.14883
	jg	.L42	#,
	.loc 1 458 0
	movl	$4, -348(%rbp)	#, unroll_number
	jmp	.L40	#
.L42:
	.loc 1 460 0
	movl	$2, -348(%rbp)	#, unroll_number
.L40:
	.loc 1 465 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.12
	testq	%rax, %rax	# loop_dump_stream.12
	je	.L43	#,
	.loc 1 466 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.13
	movl	-348(%rbp), %edx	# unroll_number, tmp622
	movl	$.LC7, %esi	#,
	movq	%rax, %rdi	# loop_dump_stream.13,
	movl	$0, %eax	#,
	call	fprintf	#
.L43:
	.loc 1 468 0
	cmpl	$0, -340(%rbp)	#, unroll_type
	je	.L44	#,
	.loc 1 468 0 is_stmt 0 discriminator 1
	cmpl	$1, -340(%rbp)	#, unroll_type
	jne	.L45	#,
.L44:
	.loc 1 493 0 is_stmt 1
	movq	-128(%rbp), %rax	# loop_start, tmp623
	movq	%rax, -208(%rbp)	# tmp623, insn
	.loc 1 494 0
	jmp	.L46	#
.L48:
	.loc 1 495 0
	movq	-208(%rbp), %rax	# insn, tmp624
	movq	24(%rax), %rax	# insn_37->fld[2].rtx, tmp625
	movq	%rax, -208(%rbp)	# tmp625, insn
.L46:
	.loc 1 494 0 discriminator 1
	movq	-208(%rbp), %rax	# insn, tmp626
	movzwl	(%rax), %eax	# insn_37->code, D.14882
	cmpw	$36, %ax	#, D.14882
	je	.L47	#,
	.loc 1 494 0 is_stmt 0 discriminator 2
	movq	-208(%rbp), %rax	# insn, tmp627
	movzwl	(%rax), %eax	# insn_37->code, D.14882
	cmpw	$33, %ax	#, D.14882
	jne	.L48	#,
.L47:
	.loc 1 496 0 is_stmt 1
	movq	-208(%rbp), %rax	# insn, tmp628
	movzwl	(%rax), %eax	# insn_37->code, D.14882
	cmpw	$33, %ax	#, D.14882
	jne	.L45	#,
	.loc 1 497 0
	jmp	.L1	#
.L45:
	.loc 1 500 0
	cmpl	$0, -340(%rbp)	#, unroll_type
	jne	.L49	#,
	.loc 1 509 0
	movq	-128(%rbp), %rax	# loop_start, tmp629
	movq	%rax, -224(%rbp)	# tmp629, copy_start
	.loc 1 514 0
	movq	-112(%rbp), %rax	# last_loop_insn, tmp630
	movq	24(%rax), %rax	# last_loop_insn_112->fld[2].rtx, tmp631
	movq	%rax, -200(%rbp)	# tmp631, insert_before
	.loc 1 517 0
	movq	-112(%rbp), %rax	# last_loop_insn, tmp632
	movzwl	(%rax), %eax	# last_loop_insn_112->code, D.14882
	cmpw	$35, %ax	#, D.14882
	jne	.L50	#,
	.loc 1 518 0
	movq	-112(%rbp), %rax	# last_loop_insn, tmp633
	movq	16(%rax), %rax	# last_loop_insn_112->fld[1].rtx, D.14885
	movq	16(%rax), %rax	# _179->fld[1].rtx, tmp634
	movq	%rax, -216(%rbp)	# tmp634, copy_end
	jmp	.L51	#
.L50:
	.loc 1 519 0
	movq	-112(%rbp), %rax	# last_loop_insn, tmp635
	movzwl	(%rax), %eax	# last_loop_insn_112->code, D.14882
	cmpw	$33, %ax	#, D.14882
	jne	.L52	#,
	.loc 1 521 0
	movq	-112(%rbp), %rax	# last_loop_insn, tmp636
	movq	16(%rax), %rax	# last_loop_insn_112->fld[1].rtx, tmp637
	movq	%rax, -216(%rbp)	# tmp637, copy_end
	jmp	.L51	#
.L52:
	.loc 1 535 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.14
	testq	%rax, %rax	# loop_dump_stream.14
	je	.L53	#,
	.loc 1 536 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.15
	movq	%rax, %rcx	# loop_dump_stream.15,
	movl	$55, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC8, %edi	#,
	call	fwrite	#
	.loc 1 538 0
	jmp	.L1	#
.L53:
	jmp	.L1	#
.L49:
	.loc 1 541 0
	cmpl	$1, -340(%rbp)	#, unroll_type
	jne	.L54	#,
	.loc 1 549 0
	movq	-128(%rbp), %rax	# loop_start, tmp638
	movq	%rax, -224(%rbp)	# tmp638, copy_start
	.loc 1 553 0
	movq	-112(%rbp), %rax	# last_loop_insn, tmp639
	movzwl	(%rax), %eax	# last_loop_insn_112->code, D.14882
	cmpw	$35, %ax	#, D.14882
	jne	.L55	#,
	.loc 1 555 0
	movq	-112(%rbp), %rax	# last_loop_insn, tmp640
	movq	16(%rax), %rax	# last_loop_insn_112->fld[1].rtx, tmp641
	movq	%rax, -200(%rbp)	# tmp641, insert_before
	.loc 1 556 0
	movq	-200(%rbp), %rax	# insert_before, tmp642
	movq	16(%rax), %rax	# insert_before_187->fld[1].rtx, tmp643
	movq	%rax, -216(%rbp)	# tmp643, copy_end
	jmp	.L51	#
.L55:
	.loc 1 558 0
	movq	-112(%rbp), %rax	# last_loop_insn, tmp644
	movzwl	(%rax), %eax	# last_loop_insn_112->code, D.14882
	cmpw	$33, %ax	#, D.14882
	jne	.L56	#,
	.loc 1 560 0
	movq	-112(%rbp), %rax	# last_loop_insn, tmp645
	movq	%rax, -200(%rbp)	# tmp645, insert_before
	.loc 1 567 0
	movq	-200(%rbp), %rax	# insert_before, tmp646
	movq	16(%rax), %rax	# insert_before_190->fld[1].rtx, tmp647
	movq	%rax, -216(%rbp)	# tmp647, copy_end
	jmp	.L51	#
.L56:
	.loc 1 575 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.16
	testq	%rax, %rax	# loop_dump_stream.16
	je	.L57	#,
	.loc 1 576 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.17
	movq	%rax, %rcx	# loop_dump_stream.17,
	movl	$55, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC8, %edi	#,
	call	fwrite	#
	.loc 1 578 0
	jmp	.L1	#
.L57:
	jmp	.L1	#
.L54:
	.loc 1 586 0
	movq	-112(%rbp), %rax	# last_loop_insn, tmp648
	movzwl	(%rax), %eax	# last_loop_insn_112->code, D.14882
	cmpw	$35, %ax	#, D.14882
	jne	.L58	#,
	.loc 1 596 0
	movq	-112(%rbp), %rax	# last_loop_insn, tmp649
	movq	16(%rax), %rax	# last_loop_insn_112->fld[1].rtx, tmp650
	movq	%rax, -200(%rbp)	# tmp650, insert_before
	.loc 1 597 0
	movq	-200(%rbp), %rax	# insert_before, tmp651
	movq	16(%rax), %rax	# insert_before_195->fld[1].rtx, tmp652
	movq	%rax, -216(%rbp)	# tmp652, copy_end
	jmp	.L59	#
.L58:
	.loc 1 599 0
	movq	-112(%rbp), %rax	# last_loop_insn, tmp653
	movzwl	(%rax), %eax	# last_loop_insn_112->code, D.14882
	cmpw	$33, %ax	#, D.14882
	jne	.L60	#,
	.loc 1 604 0
	movq	-112(%rbp), %rax	# last_loop_insn, tmp654
	movq	24(%rax), %rax	# last_loop_insn_112->fld[2].rtx, tmp655
	movq	%rax, -200(%rbp)	# tmp655, insert_before
	.loc 1 605 0
	movq	-112(%rbp), %rax	# last_loop_insn, tmp656
	movq	%rax, -216(%rbp)	# tmp656, copy_end
	jmp	.L59	#
.L60:
	.loc 1 613 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.18
	testq	%rax, %rax	# loop_dump_stream.18
	je	.L61	#,
	.loc 1 614 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.19
	movq	%rax, %rcx	# loop_dump_stream.19,
	movl	$55, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC8, %edi	#,
	call	fwrite	#
	.loc 1 616 0
	jmp	.L1	#
.L61:
	jmp	.L1	#
.L59:
	.loc 1 626 0
	call	gen_label_rtx	#
	movq	%rax, -184(%rbp)	# tmp657, exit_label
	.loc 1 628 0
	movq	-128(%rbp), %rax	# loop_start, tmp658
	movq	%rax, -208(%rbp)	# tmp658, insn
	.loc 1 629 0
	jmp	.L62	#
.L64:
	.loc 1 630 0
	movq	-208(%rbp), %rax	# insn, tmp659
	movq	24(%rax), %rax	# insn_38->fld[2].rtx, tmp660
	movq	%rax, -208(%rbp)	# tmp660, insn
.L62:
	.loc 1 629 0 discriminator 1
	movq	-208(%rbp), %rax	# insn, tmp661
	movzwl	(%rax), %eax	# insn_38->code, D.14882
	cmpw	$36, %ax	#, D.14882
	je	.L63	#,
	.loc 1 629 0 is_stmt 0 discriminator 2
	movq	-208(%rbp), %rax	# insn, tmp662
	movzwl	(%rax), %eax	# insn_38->code, D.14882
	cmpw	$33, %ax	#, D.14882
	jne	.L64	#,
.L63:
	.loc 1 632 0 is_stmt 1
	movq	-208(%rbp), %rax	# insn, tmp663
	movzwl	(%rax), %eax	# insn_38->code, D.14882
	cmpw	$33, %ax	#, D.14882
	jne	.L65	#,
	.loc 1 637 0
	movq	-208(%rbp), %rax	# insn, tmp664
	movq	24(%rax), %rax	# insn_38->fld[2].rtx, tmp665
	movq	%rax, -224(%rbp)	# tmp665, copy_start
	.loc 1 644 0
	movl	$1, -344(%rbp)	#, splitting_not_safe
	.loc 1 645 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.20
	testq	%rax, %rax	# loop_dump_stream.20
	je	.L51	#,
	.loc 1 646 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.21
	movq	%rax, %rcx	# loop_dump_stream.21,
	movl	$53, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC9, %edi	#,
	call	fwrite	#
	jmp	.L51	#
.L65:
	.loc 1 650 0
	movq	-128(%rbp), %rax	# loop_start, tmp666
	movq	%rax, -224(%rbp)	# tmp666, copy_start
.L51:
	.loc 1 654 0
	movq	-224(%rbp), %rax	# copy_start, tmp667
	movq	24(%rax), %rax	# copy_start_26->fld[2].rtx, tmp668
	movq	%rax, -176(%rbp)	# tmp668, start_label
	.loc 1 656 0
	jmp	.L67	#
.L68:
	.loc 1 657 0
	movq	-176(%rbp), %rax	# start_label, tmp669
	movq	24(%rax), %rax	# start_label_49->fld[2].rtx, tmp670
	movq	%rax, -176(%rbp)	# tmp670, start_label
.L67:
	.loc 1 656 0 discriminator 1
	movq	-176(%rbp), %rax	# start_label, tmp671
	movzwl	(%rax), %eax	# start_label_49->code, D.14882
	cmpw	$37, %ax	#, D.14882
	je	.L68	#,
	.loc 1 658 0
	movq	-176(%rbp), %rax	# start_label, tmp672
	movzwl	(%rax), %eax	# start_label_49->code, D.14882
	cmpw	$36, %ax	#, D.14882
	je	.L69	#,
	.loc 1 667 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.22
	testq	%rax, %rax	# loop_dump_stream.22
	je	.L70	#,
	.loc 1 668 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.23
	movq	%rax, %rcx	# loop_dump_stream.23,
	movl	$66, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC10, %edi	#,
	call	fwrite	#
	.loc 1 670 0
	jmp	.L1	#
.L70:
	jmp	.L1	#
.L69:
	.loc 1 672 0
	movq	-176(%rbp), %rax	# start_label, tmp673
	movq	56(%rax), %rax	# start_label_49->fld[6].rtstr, D.14886
	testq	%rax, %rax	# D.14886
	je	.L71	#,
	.loc 1 679 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.24
	testq	%rax, %rax	# loop_dump_stream.24
	je	.L72	#,
	.loc 1 680 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.25
	movq	%rax, %rcx	# loop_dump_stream.25,
	movl	$44, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC11, %edi	#,
	call	fwrite	#
	.loc 1 682 0
	jmp	.L1	#
.L72:
	jmp	.L1	#
.L71:
	.loc 1 685 0
	cmpl	$2, -340(%rbp)	#, unroll_type
	jne	.L73	#,
	.loc 1 686 0
	movq	-112(%rbp), %rax	# last_loop_insn, tmp674
	movzwl	(%rax), %eax	# last_loop_insn_112->code, D.14882
	cmpw	$35, %ax	#, D.14882
	jne	.L73	#,
	.loc 1 687 0
	movq	-112(%rbp), %rax	# last_loop_insn, tmp675
	movq	16(%rax), %rax	# last_loop_insn_112->fld[1].rtx, D.14885
	movzwl	(%rax), %eax	# _223->code, D.14882
	cmpw	$33, %ax	#, D.14882
	jne	.L73	#,
	.loc 1 688 0
	movq	-112(%rbp), %rax	# last_loop_insn, tmp676
	movq	16(%rax), %rax	# last_loop_insn_112->fld[1].rtx, D.14885
	movq	64(%rax), %rax	# _225->fld[7].rtx, D.14885
	cmpq	-176(%rbp), %rax	# start_label, D.14885
	je	.L73	#,
	.loc 1 693 0
	movq	-112(%rbp), %rax	# last_loop_insn, tmp677
	movq	24(%rax), %rax	# last_loop_insn_112->fld[2].rtx, tmp678
	movq	%rax, -200(%rbp)	# tmp678, insert_before
	.loc 1 694 0
	movq	-112(%rbp), %rax	# last_loop_insn, tmp679
	movq	%rax, -216(%rbp)	# tmp679, copy_end
.L73:
	.loc 1 697 0
	cmpl	$2, -340(%rbp)	#, unroll_type
	jne	.L74	#,
	.loc 1 698 0
	movq	-112(%rbp), %rax	# last_loop_insn, tmp680
	movzwl	(%rax), %eax	# last_loop_insn_112->code, D.14882
	cmpw	$33, %ax	#, D.14882
	jne	.L74	#,
	.loc 1 699 0
	movq	-112(%rbp), %rax	# last_loop_insn, tmp681
	movq	64(%rax), %rax	# last_loop_insn_112->fld[7].rtx, D.14885
	cmpq	-176(%rbp), %rax	# start_label, D.14885
	je	.L74	#,
	.loc 1 708 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.26
	testq	%rax, %rax	# loop_dump_stream.26
	je	.L75	#,
	.loc 1 709 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.27
	movq	%rax, %rcx	# loop_dump_stream.27,
	movl	$62, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC12, %edi	#,
	call	fwrite	#
	.loc 1 711 0
	jmp	.L1	#
.L75:
	jmp	.L1	#
.L74:
	.loc 1 717 0
	call	max_label_num	#
	movl	%eax, -292(%rbp)	# tmp682, max_labelno
	.loc 1 718 0
	call	get_max_uid	#
	movl	%eax, -288(%rbp)	# tmp683, max_insnno
	.loc 1 724 0
	movl	$648, %esi	#,
	movl	$1, %edi	#,
	call	xcalloc	#
	movq	%rax, -96(%rbp)	# tmp684, map
	.loc 1 728 0
	cmpl	$0, -292(%rbp)	#, max_labelno
	jle	.L76	#,
	.loc 1 730 0
	movl	-292(%rbp), %eax	# max_labelno, tmp685
	cltq
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.14884,
	call	xcalloc	#
	movq	%rax, %rdx	# tmp686, D.14881
	movq	-96(%rbp), %rax	# map, tmp687
	movq	%rdx, 40(%rax)	# D.14881, map_235->label_map
	.loc 1 731 0
	movl	-292(%rbp), %eax	# max_labelno, tmp688
	cltq
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.14884,
	call	xcalloc	#
	movq	%rax, -192(%rbp)	# tmp689, local_label
.L76:
	.loc 1 741 0
	movq	-224(%rbp), %rax	# copy_start, tmp690
	movq	%rax, -208(%rbp)	# tmp690, insn
	jmp	.L77	#
.L85:
.LBB4:
	.loc 1 745 0
	movq	-208(%rbp), %rax	# insn, tmp691
	movzwl	(%rax), %eax	# insn_39->code, D.14882
	cmpw	$36, %ax	#, D.14882
	jne	.L78	#,
	.loc 1 746 0
	movq	-208(%rbp), %rax	# insn, tmp692
	movl	48(%rax), %eax	# insn_39->fld[5].rtint, D.14883
	movslq	%eax, %rdx	# D.14883, D.14887
	movq	-192(%rbp), %rax	# local_label, tmp693
	addq	%rdx, %rax	# D.14887, D.14888
	movb	$1, (%rax)	#, *_244
	jmp	.L79	#
.L78:
	.loc 1 747 0
	movq	-208(%rbp), %rax	# insn, tmp694
	movzwl	(%rax), %eax	# insn_39->code, D.14882
	cmpw	$33, %ax	#, D.14882
	jne	.L79	#,
	.loc 1 749 0
	movq	-208(%rbp), %rax	# insn, tmp695
	movq	64(%rax), %rax	# insn_39->fld[7].rtx, D.14885
	testq	%rax, %rax	# D.14885
	je	.L80	#,
	.loc 1 750 0
	movq	-96(%rbp), %rax	# map, tmp696
	movq	40(%rax), %rdx	# map_235->label_map, D.14889
	movq	-208(%rbp), %rax	# insn, tmp697
	movq	64(%rax), %rax	# insn_39->fld[7].rtx, D.14885
	movl	48(%rax), %eax	# _248->fld[5].rtint, D.14883
	cltq
	salq	$3, %rax	#, D.14884
	addq	%rax, %rdx	# D.14884, D.14889
	movq	-208(%rbp), %rax	# insn, tmp698
	movq	64(%rax), %rax	# insn_39->fld[7].rtx, D.14885
	movq	%rax, (%rdx)	# D.14885, *_252
	jmp	.L79	#
.L80:
	.loc 1 753 0
	movq	-208(%rbp), %rax	# insn, tmp699
	movq	32(%rax), %rax	# insn_39->fld[3].rtx, D.14885
	movzwl	(%rax), %eax	# _254->code, D.14882
	cmpw	$44, %ax	#, D.14882
	je	.L81	#,
	.loc 1 754 0
	movq	-208(%rbp), %rax	# insn, tmp700
	movq	32(%rax), %rax	# insn_39->fld[3].rtx, D.14885
	movzwl	(%rax), %eax	# _256->code, D.14882
	cmpw	$45, %ax	#, D.14882
	jne	.L79	#,
.L81:
.LBB5:
	.loc 1 756 0
	movq	-208(%rbp), %rax	# insn, tmp701
	movq	32(%rax), %rax	# insn_39->fld[3].rtx, tmp702
	movq	%rax, -88(%rbp)	# tmp702, pat
	.loc 1 757 0
	movq	-208(%rbp), %rax	# insn, tmp703
	movq	32(%rax), %rax	# insn_39->fld[3].rtx, D.14885
	movzwl	(%rax), %eax	# _259->code, D.14882
	cmpw	$45, %ax	#, D.14882
	sete	%al	#, D.14890
	movzbl	%al, %eax	# D.14890, tmp704
	movl	%eax, -284(%rbp)	# tmp704, diff_vec_p
	.loc 1 758 0
	movq	-88(%rbp), %rax	# pat, tmp705
	movl	-284(%rbp), %edx	# diff_vec_p, tmp707
	movslq	%edx, %rdx	# tmp707, tmp706
	movq	8(%rax,%rdx,8), %rax	# pat_258->fld[diff_vec_p_262].rtvec, D.14891
	movl	(%rax), %eax	# _263->num_elem, tmp708
	movl	%eax, -280(%rbp)	# tmp708, len
	.loc 1 761 0
	movl	$0, -360(%rbp)	#, i
	jmp	.L82	#
.L83:
	.loc 1 763 0 discriminator 2
	movq	-88(%rbp), %rax	# pat, tmp709
	movl	-284(%rbp), %edx	# diff_vec_p, tmp711
	movslq	%edx, %rdx	# tmp711, tmp710
	movq	8(%rax,%rdx,8), %rax	# pat_258->fld[diff_vec_p_262].rtvec, D.14891
	movl	-360(%rbp), %edx	# i, tmp713
	movslq	%edx, %rdx	# tmp713, tmp712
	movq	8(%rax,%rdx,8), %rax	# _266->elem, D.14885
	movq	8(%rax), %rax	# _267->fld[0].rtx, tmp714
	movq	%rax, -80(%rbp)	# tmp714, label
	.loc 1 764 0 discriminator 2
	movq	-96(%rbp), %rax	# map, tmp715
	movq	40(%rax), %rdx	# map_235->label_map, D.14889
	movq	-80(%rbp), %rax	# label, tmp716
	movl	48(%rax), %eax	# label_268->fld[5].rtint, D.14883
	cltq
	salq	$3, %rax	#, D.14884
	addq	%rax, %rdx	# D.14884, D.14889
	movq	-80(%rbp), %rax	# label, tmp717
	movq	%rax, (%rdx)	# tmp717, *_273
	.loc 1 761 0 discriminator 2
	addl	$1, -360(%rbp)	#, i
.L82:
	.loc 1 761 0 is_stmt 0 discriminator 1
	movl	-360(%rbp), %eax	# i, tmp718
	cmpl	-280(%rbp), %eax	# len, tmp718
	jl	.L83	#,
.L79:
.LBE5:
	.loc 1 768 0 is_stmt 1
	movq	-208(%rbp), %rax	# insn, tmp719
	movl	$0, %edx	#,
	movl	$13, %esi	#,
	movq	%rax, %rdi	# tmp719,
	call	find_reg_note	#
	movq	%rax, -72(%rbp)	# tmp720, note
	cmpq	$0, -72(%rbp)	#, note
	je	.L84	#,
	.loc 1 769 0
	movq	-96(%rbp), %rax	# map, tmp721
	movq	40(%rax), %rdx	# map_235->label_map, D.14889
	movq	-72(%rbp), %rax	# note, tmp722
	movq	8(%rax), %rax	# note_275->fld[0].rtx, D.14885
	movl	48(%rax), %eax	# _277->fld[5].rtint, D.14883
	cltq
	salq	$3, %rax	#, D.14884
	addq	%rax, %rdx	# D.14884, D.14889
	movq	-72(%rbp), %rax	# note, tmp723
	movq	8(%rax), %rax	# note_275->fld[0].rtx, D.14885
	movq	%rax, (%rdx)	# D.14885, *_281
.L84:
.LBE4:
	.loc 1 741 0
	movq	-208(%rbp), %rax	# insn, tmp724
	movq	24(%rax), %rax	# insn_39->fld[2].rtx, tmp725
	movq	%rax, -208(%rbp)	# tmp725, insn
.L77:
	.loc 1 741 0 is_stmt 0 discriminator 1
	movq	-208(%rbp), %rax	# insn, tmp726
	cmpq	-120(%rbp), %rax	# loop_end, tmp726
	jne	.L85	#,
	.loc 1 775 0 is_stmt 1
	movl	-288(%rbp), %eax	# max_insnno, tmp727
	cltq
	salq	$3, %rax	#, D.14884
	movq	%rax, %rdi	# D.14884,
	call	xmalloc	#
	movq	%rax, %rdx	# tmp728, D.14881
	movq	-96(%rbp), %rax	# map, tmp729
	movq	%rdx, 48(%rax)	# D.14881, map_235->insn_map
	.loc 1 779 0
	movq	-96(%rbp), %rax	# map, tmp730
	movq	$0, 80(%rax)	#, map_235->inline_target
	.loc 1 788 0
	call	max_reg_num	#
	movl	%eax, -276(%rbp)	# D.14883, maxregnum
	.loc 1 791 0
	movl	-276(%rbp), %eax	# maxregnum, tmp731
	movl	%eax, -272(%rbp)	# tmp731, max_local_regnum
	.loc 1 801 0
	movl	-276(%rbp), %eax	# maxregnum, D.14884
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.14884,
	call	xcalloc	#
	movq	%rax, splittable_regs(%rip)	# splittable_regs.28, splittable_regs
	.loc 1 802 0
	movl	-276(%rbp), %eax	# maxregnum, D.14884
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.14884,
	call	xcalloc	#
	movq	%rax, splittable_regs_updates(%rip)	# splittable_regs_updates.29, splittable_regs_updates
	.loc 1 804 0
	movl	-276(%rbp), %eax	# maxregnum, D.14884
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.14884,
	call	xcalloc	#
	movq	%rax, addr_combined_regs(%rip)	# addr_combined_regs.30, addr_combined_regs
	.loc 1 805 0
	movl	-276(%rbp), %eax	# maxregnum, D.14884
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.14884,
	call	xcalloc	#
	movq	%rax, -64(%rbp)	# tmp735, local_regno
	.loc 1 809 0
	movq	-216(%rbp), %rax	# copy_end, tmp736
	movl	8(%rax), %edx	# copy_end_29->fld[0].rtint, D.14883
	movl	max_uid_for_loop(%rip), %eax	# max_uid_for_loop, max_uid_for_loop.31
	cmpl	%eax, %edx	# max_uid_for_loop.31, D.14883
	jge	.L86	#,
.LBB6:
	.loc 1 811 0
	movq	-224(%rbp), %rax	# copy_start, tmp737
	movl	8(%rax), %edx	# copy_start_26->fld[0].rtint, D.14883
	movl	max_uid_for_loop(%rip), %eax	# max_uid_for_loop, max_uid_for_loop.33
	cmpl	%eax, %edx	# max_uid_for_loop.33, D.14883
	jge	.L87	#,
	.loc 1 811 0 is_stmt 0 discriminator 1
	movq	uid_luid(%rip), %rdx	# uid_luid, uid_luid.34
	movq	-224(%rbp), %rax	# copy_start, tmp738
	movl	8(%rax), %eax	# copy_start_26->fld[0].rtint, D.14883
	cltq
	salq	$2, %rax	#, D.14884
	addq	%rdx, %rax	# uid_luid.34, D.14892
	movl	(%rax), %eax	# *_306, iftmp.32
	movl	%eax, -328(%rbp)	# iftmp.32, copy_start_luid
	.loc 1 812 0 is_stmt 1 discriminator 1
	movq	-216(%rbp), %rax	# copy_end, tmp739
	movl	8(%rax), %edx	# copy_end_29->fld[0].rtint, D.14883
	movl	max_uid_for_loop(%rip), %eax	# max_uid_for_loop, max_uid_for_loop.36
	cmpl	%eax, %edx	# max_uid_for_loop.36, D.14883
	jge	.L89	#,
	jmp	.L178	#
.L87:
	.loc 1 811 0 discriminator 2
	movl	$__FUNCTION__.11296, %edx	#,
	movl	$811, %esi	#,
	movl	$.LC13, %edi	#,
	call	fancy_abort	#
.L178:
	.loc 1 812 0 discriminator 1
	movq	uid_luid(%rip), %rdx	# uid_luid, uid_luid.37
	movq	-216(%rbp), %rax	# copy_end, tmp740
	movl	8(%rax), %eax	# copy_end_29->fld[0].rtint, D.14883
	cltq
	salq	$2, %rax	#, D.14884
	addq	%rdx, %rax	# uid_luid.37, D.14892
	movl	(%rax), %eax	# *_315, iftmp.35
	movl	%eax, -324(%rbp)	# iftmp.35, copy_end_luid
	.loc 1 816 0 discriminator 1
	movq	-216(%rbp), %rax	# copy_end, tmp741
	movzwl	(%rax), %eax	# copy_end_29->code, D.14882
	cmpw	$33, %ax	#, D.14882
	jne	.L91	#,
	jmp	.L179	#
.L89:
	.loc 1 812 0 discriminator 2
	movl	$__FUNCTION__.11296, %edx	#,
	movl	$812, %esi	#,
	movl	$.LC13, %edi	#,
	call	fancy_abort	#
.L179:
	.loc 1 817 0
	subl	$1, -324(%rbp)	#, copy_end_luid
.L91:
	.loc 1 831 0
	movq	-224(%rbp), %rax	# copy_start, tmp742
	cmpq	-128(%rbp), %rax	# loop_start, tmp742
	jne	.L92	#,
	.loc 1 832 0
	addl	$1, -328(%rbp)	#, copy_start_luid
.L92:
	.loc 1 839 0
	movl	$53, -352(%rbp)	#, r
	jmp	.L93	#
.L97:
	.loc 1 840 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.38
	movl	-352(%rbp), %edx	# r, tmp743
	addq	$4, %rdx	#, tmp744
	movq	(%rax,%rdx,8), %rax	# reg_n_info.38_323->data.reg, D.14893
	movl	(%rax), %eax	# _324->first_uid, D.14883
	testl	%eax, %eax	# D.14883
	jle	.L94	#,
	.loc 1 840 0 is_stmt 0 discriminator 1
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.39
	movl	-352(%rbp), %edx	# r, tmp745
	addq	$4, %rdx	#, tmp746
	movq	(%rax,%rdx,8), %rax	# reg_n_info.39_326->data.reg, D.14893
	movl	(%rax), %edx	# _327->first_uid, D.14883
	movl	max_uid_for_loop(%rip), %eax	# max_uid_for_loop, max_uid_for_loop.40
	cmpl	%eax, %edx	# max_uid_for_loop.40, D.14883
	jg	.L94	#,
	.loc 1 841 0 is_stmt 1
	movq	uid_luid(%rip), %rdx	# uid_luid, uid_luid.41
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.42
	movl	-352(%rbp), %ecx	# r, tmp747
	addq	$4, %rcx	#, tmp748
	movq	(%rax,%rcx,8), %rax	# reg_n_info.42_331->data.reg, D.14893
	movl	(%rax), %eax	# _332->first_uid, D.14883
	cltq
	salq	$2, %rax	#, D.14884
	addq	%rdx, %rax	# uid_luid.41, D.14892
	movl	(%rax), %eax	# *_336, D.14883
	cmpl	-328(%rbp), %eax	# copy_start_luid, D.14883
	jl	.L94	#,
	.loc 1 842 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.43
	movl	-352(%rbp), %edx	# r, tmp749
	addq	$4, %rdx	#, tmp750
	movq	(%rax,%rdx,8), %rax	# reg_n_info.43_338->data.reg, D.14893
	movl	4(%rax), %eax	# _339->last_uid, D.14883
	testl	%eax, %eax	# D.14883
	jle	.L94	#,
	.loc 1 842 0 is_stmt 0 discriminator 1
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.44
	movl	-352(%rbp), %edx	# r, tmp751
	addq	$4, %rdx	#, tmp752
	movq	(%rax,%rdx,8), %rax	# reg_n_info.44_341->data.reg, D.14893
	movl	4(%rax), %edx	# _342->last_uid, D.14883
	movl	max_uid_for_loop(%rip), %eax	# max_uid_for_loop, max_uid_for_loop.45
	cmpl	%eax, %edx	# max_uid_for_loop.45, D.14883
	jg	.L94	#,
	.loc 1 843 0 is_stmt 1
	movq	uid_luid(%rip), %rdx	# uid_luid, uid_luid.46
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.47
	movl	-352(%rbp), %ecx	# r, tmp753
	addq	$4, %rcx	#, tmp754
	movq	(%rax,%rcx,8), %rax	# reg_n_info.47_346->data.reg, D.14893
	movl	4(%rax), %eax	# _347->last_uid, D.14883
	cltq
	salq	$2, %rax	#, D.14884
	addq	%rdx, %rax	# uid_luid.46, D.14892
	movl	(%rax), %eax	# *_351, D.14883
	cmpl	-324(%rbp), %eax	# copy_end_luid, D.14883
	jg	.L94	#,
	.loc 1 854 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.48
	movl	-352(%rbp), %edx	# r, tmp755
	addq	$4, %rdx	#, tmp756
	movq	(%rax,%rdx,8), %rax	# reg_n_info.48_353->data.reg, D.14893
	movl	4(%rax), %edx	# _354->last_uid, D.14883
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.49
	movl	-352(%rbp), %ecx	# r, tmp757
	addq	$4, %rcx	#, tmp758
	movq	(%rax,%rcx,8), %rax	# reg_n_info.49_356->data.reg, D.14893
	movl	(%rax), %esi	# _357->first_uid, D.14883
	movl	-352(%rbp), %eax	# r, r.50
	movq	-216(%rbp), %rdi	# copy_end, tmp759
	movq	-224(%rbp), %rcx	# copy_start, tmp760
	movq	%rdi, %r8	# tmp759,
	movl	%eax, %edi	# r.50,
	call	set_dominates_use	#
	testl	%eax, %eax	# D.14883
	je	.L95	#,
	.loc 1 856 0
	movl	-352(%rbp), %edx	# r, D.14887
	movq	-64(%rbp), %rax	# local_regno, tmp761
	addq	%rdx, %rax	# D.14887, D.14888
	movb	$1, (%rax)	#, *_362
.L95:
	.loc 1 858 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.51
	testq	%rax, %rax	# loop_dump_stream.51
	je	.L94	#,
	.loc 1 860 0
	movl	-352(%rbp), %edx	# r, D.14887
	movq	-64(%rbp), %rax	# local_regno, tmp762
	addq	%rdx, %rax	# D.14887, D.14888
	movzbl	(%rax), %eax	# *_365, D.14894
	testb	%al, %al	# D.14894
	je	.L96	#,
	.loc 1 861 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.52
	movl	-352(%rbp), %edx	# r, tmp763
	movl	$.LC14, %esi	#,
	movq	%rax, %rdi	# loop_dump_stream.52,
	movl	$0, %eax	#,
	call	fprintf	#
	jmp	.L94	#
.L96:
	.loc 1 863 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.53
	movl	-352(%rbp), %edx	# r, tmp764
	movl	$.LC15, %esi	#,
	movq	%rax, %rdi	# loop_dump_stream.53,
	movl	$0, %eax	#,
	call	fprintf	#
.L94:
	.loc 1 839 0
	addl	$1, -352(%rbp)	#, r
.L93:
	.loc 1 839 0 is_stmt 0 discriminator 1
	movl	max_reg_before_loop(%rip), %eax	# max_reg_before_loop, max_reg_before_loop.54
	cmpl	%eax, -352(%rbp)	# max_reg_before_loop.54, r
	jb	.L97	#,
.L86:
.LBE6:
	.loc 1 891 0 is_stmt 1
	cmpl	$2, -340(%rbp)	#, unroll_type
	jne	.L98	#,
	.loc 1 891 0 is_stmt 0 discriminator 1
	cmpl	$0, -344(%rbp)	#, splitting_not_safe
	jne	.L98	#,
	cmpl	$0, -384(%rbp)	#, strength_reduce_p
	je	.L98	#,
.LBB7:
	.loc 1 896 0 is_stmt 1
	leaq	-364(%rbp), %rdi	#, tmp765
	leaq	-240(%rbp), %rcx	#, tmp766
	leaq	-248(%rbp), %rdx	#, tmp767
	leaq	-256(%rbp), %rsi	#, tmp768
	movq	-376(%rbp), %rax	# loop, tmp769
	movq	%rdi, %r8	# tmp765,
	movq	%rax, %rdi	# tmp769,
	call	precondition_loop_p	#
	testl	%eax, %eax	# D.14883
	je	.L98	#,
.LBB8:
	.loc 1 903 0
	movq	-144(%rbp), %rax	# loop_info, tmp770
	movl	88(%rax), %eax	# loop_info_76->comparison_code, tmp771
	movl	%eax, -268(%rbp)	# tmp771, cc
	.loc 1 904 0
	cmpl	$106, -268(%rbp)	#, cc
	je	.L100	#,
	.loc 1 904 0 is_stmt 0 discriminator 2
	cmpl	$110, -268(%rbp)	#, cc
	je	.L100	#,
	.loc 1 904 0 discriminator 1
	cmpl	$107, -268(%rbp)	#, cc
	je	.L100	#,
	cmpl	$111, -268(%rbp)	#, cc
	jne	.L101	#,
.L100:
	movl	$1, %eax	#, iftmp.55
	jmp	.L102	#
.L101:
	.loc 1 904 0 discriminator 3
	movl	$0, %eax	#, iftmp.55
.L102:
	.loc 1 904 0 discriminator 4
	movl	%eax, -264(%rbp)	# iftmp.55, less_p
	.loc 1 905 0 is_stmt 1 discriminator 4
	cmpl	$110, -268(%rbp)	#, cc
	je	.L103	#,
	.loc 1 905 0 is_stmt 0 discriminator 2
	cmpl	$108, -268(%rbp)	#, cc
	je	.L103	#,
	.loc 1 905 0 discriminator 1
	cmpl	$111, -268(%rbp)	#, cc
	je	.L103	#,
	cmpl	$109, -268(%rbp)	#, cc
	jne	.L104	#,
.L103:
	movl	$1, %eax	#, iftmp.56
	jmp	.L105	#
.L104:
	.loc 1 905 0 discriminator 3
	movl	$0, %eax	#, iftmp.56
.L105:
	.loc 1 905 0 discriminator 4
	movl	%eax, -260(%rbp)	# iftmp.56, unsigned_p
	.loc 1 907 0 is_stmt 1 discriminator 4
	movl	-276(%rbp), %eax	# maxregnum, D.14884
	salq	$3, %rax	#, D.14884
	movq	%rax, %rdi	# D.14884,
	call	xmalloc	#
	movq	%rax, %rdx	# tmp772, D.14881
	movq	-96(%rbp), %rax	# map, tmp773
	movq	%rdx, 32(%rax)	# D.14881, map_235->reg_map
	.loc 1 909 0 discriminator 4
	movl	-276(%rbp), %eax	# maxregnum, D.14884
	movl	$.LC16, %edx	#,
	movl	$16, %esi	#,
	movq	%rax, %rdi	# D.14884,
	call	varray_init	#
	movq	-96(%rbp), %rdx	# map, tmp774
	movq	%rax, 64(%rdx)	# D.14895, map_235->const_equiv_varray
	.loc 1 911 0 discriminator 4
	movq	-96(%rbp), %rax	# map, tmp775
	movq	64(%rax), %rax	# map_235->const_equiv_varray, global_const_equiv_varray.57
	movq	%rax, global_const_equiv_varray(%rip)	# global_const_equiv_varray.57, global_const_equiv_varray
	.loc 1 913 0 discriminator 4
	movl	-276(%rbp), %edx	# maxregnum, maxregnum.58
	movq	-96(%rbp), %rax	# map, tmp776
	movl	%edx, %esi	# maxregnum.58,
	movq	%rax, %rdi	# tmp776,
	call	init_reg_map	#
	.loc 1 917 0 discriminator 4
	cmpl	$4, -348(%rbp)	#, unroll_number
	jle	.L106	#,
	.loc 1 918 0
	movl	$4, -348(%rbp)	#, unroll_number
.L106:
	.loc 1 922 0
	movl	$0, -316(%rbp)	#, neg_inc
	.loc 1 923 0
	movq	-240(%rbp), %rax	# increment, increment.59
	movq	8(%rax), %rax	# increment.59_387->fld[0].rtwint, D.14896
	movl	%eax, -320(%rbp)	# D.14896, abs_inc
	.loc 1 924 0
	cmpl	$0, -320(%rbp)	#, abs_inc
	jns	.L107	#,
	.loc 1 926 0
	negl	-320(%rbp)	# abs_inc
	.loc 1 927 0
	movl	$1, -316(%rbp)	#, neg_inc
.L107:
	.loc 1 930 0
	call	start_sequence	#
	.loc 1 935 0
	movq	-248(%rbp), %rax	# final_value, final_value.60
	movzwl	(%rax), %eax	# final_value.60_392->code, D.14882
	cmpw	$75, %ax	#, D.14882
	jne	.L108	#,
	.loc 1 939 0
	movq	-248(%rbp), %rax	# final_value, final_value.61
	.loc 1 937 0
	movq	16(%rax), %rax	# final_value.61_394->fld[1].rtx, D.14885
	movq	%rax, %rdi	# D.14885,
	call	copy_rtx	#
	movq	%rax, %rbx	#, D.14885
	.loc 1 938 0
	movq	-248(%rbp), %rax	# final_value, final_value.62
	.loc 1 937 0
	movq	8(%rax), %rax	# final_value.62_397->fld[0].rtx, D.14885
	movq	%rax, %rdi	# D.14885,
	call	copy_rtx	#
	movq	%rax, %rdx	#, D.14885
	movl	-364(%rbp), %eax	# mode, mode.63
	movl	$3, (%rsp)	#,
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movq	%rbx, %rcx	# D.14885,
	movl	$75, %esi	#,
	movl	%eax, %edi	# mode.63,
	call	expand_simple_binop	#
	movq	%rax, -248(%rbp)	# final_value.64, final_value
.L108:
	.loc 1 942 0
	movq	-248(%rbp), %rax	# final_value, final_value.65
	movl	$0, %esi	#,
	movq	%rax, %rdi	# final_value.65,
	call	nonmemory_operand	#
	testl	%eax, %eax	# D.14883
	jne	.L109	#,
	.loc 1 943 0
	movq	-248(%rbp), %rax	# final_value, final_value.66
	movq	%rax, %rdi	# final_value.66,
	call	copy_rtx	#
	movq	%rax, %rdx	#, D.14885
	movl	-364(%rbp), %eax	# mode, mode.67
	movq	%rdx, %rsi	# D.14885,
	movl	%eax, %edi	# mode.67,
	call	force_reg	#
	movq	%rax, -248(%rbp)	# final_value.68, final_value
.L109:
	.loc 1 963 0
	cmpl	$102, -268(%rbp)	#, cc
	je	.L110	#,
	.loc 1 963 0 is_stmt 0 discriminator 1
	movl	-264(%rbp), %eax	# less_p, tmp777
	cmpl	-316(%rbp), %eax	# neg_inc, tmp777
	je	.L111	#,
.L110:
	.loc 1 964 0 is_stmt 1
	movq	-256(%rbp), %rax	# initial_value, initial_value.69
	movq	%rax, %rdi	# initial_value.69,
	call	copy_rtx	#
	movq	%rax, %rcx	#, D.14885
	movq	-248(%rbp), %rdx	# final_value, final_value.70
	movl	-364(%rbp), %eax	# mode, mode.71
	movl	$3, (%rsp)	#,
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movl	$76, %esi	#,
	movl	%eax, %edi	# mode.71,
	call	expand_simple_binop	#
	movq	%rax, -152(%rbp)	# tmp778, diff
	jmp	.L112	#
.L111:
	.loc 1 968 0
	movq	-256(%rbp), %rax	# initial_value, initial_value.72
	movq	%rax, %rdi	# initial_value.72,
	call	copy_rtx	#
	movq	%rax, %rdx	#, D.14885
	cmpl	$0, -316(%rbp)	#, neg_inc
	je	.L113	#,
	.loc 1 968 0 is_stmt 0 discriminator 1
	movl	$86, %eax	#, iftmp.73
	jmp	.L114	#
.L113:
	.loc 1 968 0 discriminator 2
	movl	$77, %eax	#, iftmp.73
.L114:
	.loc 1 968 0 discriminator 3
	movl	-364(%rbp), %edi	# mode, mode.74
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	%eax, %esi	# iftmp.73,
	call	expand_simple_unop	#
	movq	%rax, -152(%rbp)	# tmp779, diff
.L112:
	.loc 1 974 0 is_stmt 1
	movl	-348(%rbp), %eax	# unroll_number, tmp780
	imull	-320(%rbp), %eax	# abs_inc, D.14883
	subl	$1, %eax	#, D.14883
	.loc 1 973 0
	cltq
	movq	%rax, %rsi	# D.14896,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, %rcx	#, D.14885
	movq	-152(%rbp), %rax	# diff, tmp781
	movzbl	2(%rax), %eax	# diff_64->mode, D.14897
	movzbl	%al, %eax	# D.14897, D.14898
	movq	-152(%rbp), %rdx	# diff, tmp782
	movl	$3, (%rsp)	#,
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movl	$83, %esi	#,
	movl	%eax, %edi	# D.14898,
	call	expand_simple_binop	#
	movq	%rax, -152(%rbp)	# tmp783, diff
	.loc 1 980 0
	movl	-348(%rbp), %eax	# unroll_number, tmp784
	cltq
	salq	$3, %rax	#, D.14884
	movq	%rax, %rdi	# D.14884,
	call	xmalloc	#
	movq	%rax, -56(%rbp)	# tmp785, labels
	.loc 1 981 0
	movl	$0, -360(%rbp)	#, i
	jmp	.L115	#
.L116:
	.loc 1 982 0 discriminator 2
	movl	-360(%rbp), %eax	# i, tmp786
	cltq
	leaq	0(,%rax,8), %rdx	#, D.14884
	movq	-56(%rbp), %rax	# labels, tmp787
	leaq	(%rdx,%rax), %rbx	#, D.14889
	call	gen_label_rtx	#
	movq	%rax, (%rbx)	# D.14885, *_432
	.loc 1 981 0 discriminator 2
	addl	$1, -360(%rbp)	#, i
.L115:
	.loc 1 981 0 is_stmt 0 discriminator 1
	movl	-360(%rbp), %eax	# i, tmp788
	cmpl	-348(%rbp), %eax	# unroll_number, tmp788
	jl	.L116	#,
	.loc 1 990 0 is_stmt 1
	cmpl	$102, -268(%rbp)	#, cc
	je	.L117	#,
.LBB9:
	.loc 1 993 0
	movq	-240(%rbp), %rcx	# increment, increment.75
	movq	-256(%rbp), %rdx	# initial_value, initial_value.76
	movl	-364(%rbp), %eax	# mode, mode.77
	movl	$3, (%rsp)	#,
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movl	$75, %esi	#,
	movl	%eax, %edi	# mode.77,
	call	expand_simple_binop	#
	movq	%rax, -48(%rbp)	# tmp789, incremented_initval
	.loc 1 1000 0
	movq	-56(%rbp), %rax	# labels, tmp790
	addq	$8, %rax	#, D.14889
	.loc 1 998 0
	movq	(%rax), %rdx	# *_439, D.14885
	movl	-364(%rbp), %ecx	# mode, mode.78
	cmpl	$0, -264(%rbp)	#, less_p
	je	.L118	#,
	.loc 1 998 0 is_stmt 0 discriminator 1
	movl	$104, %eax	#, iftmp.79
	jmp	.L119	#
.L118:
	.loc 1 998 0 discriminator 2
	movl	$106, %eax	#, iftmp.79
.L119:
	.loc 1 998 0 discriminator 3
	movq	-248(%rbp), %rsi	# final_value, final_value.80
	movl	-260(%rbp), %r8d	# unsigned_p, tmp791
	movq	-48(%rbp), %rdi	# incremented_initval, tmp792
	movq	%rdx, (%rsp)	# D.14885,
	movl	%r8d, %r9d	# tmp791,
	movl	%ecx, %r8d	# mode.78,
	movl	$0, %ecx	#,
	movl	%eax, %edx	# iftmp.79,
	call	emit_cmp_and_jump_insns	#
	.loc 1 1001 0 is_stmt 1 discriminator 3
	call	get_last_insn	#
	movl	$1, %edx	#,
	movl	$10, %esi	#,
	movq	%rax, %rdi	# D.14885,
	call	predict_insn_def	#
	.loc 1 1003 0 discriminator 3
	call	get_last_insn	#
	movq	-56(%rbp), %rdx	# labels, tmp793
	movq	8(%rdx), %rdx	# MEM[(struct rtx_def * *)labels_428 + 8B], D.14885
	movq	%rdx, 64(%rax)	# D.14885, _446->fld[7].rtx
	.loc 1 1004 0 discriminator 3
	movq	-56(%rbp), %rax	# labels, tmp794
	addq	$8, %rax	#, D.14889
	movq	(%rax), %rax	# *_448, D.14885
	movl	32(%rax), %edx	# _449->fld[3].rtint, D.14883
	addl	$1, %edx	#, D.14883
	movl	%edx, 32(%rax)	# D.14883, _449->fld[3].rtint
.L117:
.LBE9:
	.loc 1 1020 0
	movl	$0, -360(%rbp)	#, i
	jmp	.L120	#
.L124:
.LBB10:
	.loc 1 1027 0
	cmpl	$0, -360(%rbp)	#, i
	jne	.L121	#,
	.loc 1 1029 0
	movl	$0, -312(%rbp)	#, cmp_const
	.loc 1 1030 0
	movl	$103, -308(%rbp)	#, cmp_code
	jmp	.L122	#
.L121:
	.loc 1 1032 0
	cmpl	$0, -316(%rbp)	#, neg_inc
	je	.L123	#,
	.loc 1 1034 0
	movl	-360(%rbp), %eax	# i, tmp799
	movl	-348(%rbp), %edx	# unroll_number, tmp800
	subl	%eax, %edx	# tmp799, tmp798
	movl	%edx, %eax	# tmp798, tmp798
	movl	%eax, -312(%rbp)	# tmp798, cmp_const
	.loc 1 1035 0
	movl	$104, -308(%rbp)	#, cmp_code
	jmp	.L122	#
.L123:
	.loc 1 1039 0
	movl	-360(%rbp), %eax	# i, tmp801
	movl	%eax, -312(%rbp)	# tmp801, cmp_const
	.loc 1 1040 0
	movl	$106, -308(%rbp)	#, cmp_code
.L122:
	.loc 1 1044 0
	movl	-360(%rbp), %eax	# i, tmp802
	cltq
	leaq	0(,%rax,8), %rdx	#, D.14884
	movq	-56(%rbp), %rax	# labels, tmp803
	addq	%rdx, %rax	# D.14884, D.14889
	.loc 1 1043 0
	movq	(%rax), %rbx	# *_462, D.14885
	movl	-364(%rbp), %r12d	# mode, mode.81
	movl	-320(%rbp), %eax	# abs_inc, tmp804
	imull	-312(%rbp), %eax	# cmp_const, D.14883
	cltq
	movq	%rax, %rsi	# D.14896,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, %rsi	#, D.14885
	movl	-308(%rbp), %edx	# cmp_code, tmp805
	movq	-152(%rbp), %rax	# diff, tmp806
	movq	%rbx, (%rsp)	# D.14885,
	movl	$0, %r9d	#,
	movl	%r12d, %r8d	# mode.81,
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp806,
	call	emit_cmp_and_jump_insns	#
	.loc 1 1045 0
	call	get_last_insn	#
	movl	-360(%rbp), %edx	# i, tmp807
	movslq	%edx, %rdx	# tmp807, D.14884
	leaq	0(,%rdx,8), %rcx	#, D.14884
	movq	-56(%rbp), %rdx	# labels, tmp808
	addq	%rcx, %rdx	# D.14884, D.14889
	movq	(%rdx), %rdx	# *_471, D.14885
	movq	%rdx, 64(%rax)	# D.14885, _468->fld[7].rtx
	.loc 1 1046 0
	movl	-360(%rbp), %eax	# i, tmp809
	cltq
	leaq	0(,%rax,8), %rdx	#, D.14884
	movq	-56(%rbp), %rax	# labels, tmp810
	addq	%rdx, %rax	# D.14884, D.14889
	movq	(%rax), %rax	# *_475, D.14885
	movl	32(%rax), %edx	# _476->fld[3].rtint, D.14883
	addl	$1, %edx	#, D.14883
	movl	%edx, 32(%rax)	# D.14883, _476->fld[3].rtint
	.loc 1 1048 0
	movl	-360(%rbp), %eax	# i, tmp811
	movl	-348(%rbp), %edx	# unroll_number, tmp812
	movl	%edx, %ebx	# tmp812, D.14883
	subl	%eax, %ebx	# tmp811, D.14883
	.loc 1 1047 0
	movl	$10000, %eax	#, tmp815
	cltd
	idivl	%ebx	# D.14883
	movl	%eax, %ebx	# tmp813, D.14883
	call	get_last_insn	#
	movl	%ebx, %edx	# D.14883,
	movl	$11, %esi	#,
	movq	%rax, %rdi	# D.14885,
	call	predict_insn	#
.LBE10:
	.loc 1 1020 0
	addl	$1, -360(%rbp)	#, i
.L120:
	.loc 1 1020 0 is_stmt 0 discriminator 1
	movl	-348(%rbp), %eax	# unroll_number, tmp816
	subl	$1, %eax	#, D.14883
	cmpl	-360(%rbp), %eax	# i, D.14883
	jg	.L124	#,
	.loc 1 1060 0 is_stmt 1
	cmpl	$1, -320(%rbp)	#, abs_inc
	je	.L125	#,
.LBB11:
	.loc 1 1065 0
	cmpl	$0, -316(%rbp)	#, neg_inc
	je	.L126	#,
	.loc 1 1067 0
	movl	-320(%rbp), %eax	# abs_inc, tmp820
	subl	$1, %eax	#, tmp819
	movl	%eax, -304(%rbp)	# tmp819, cmp_const
	.loc 1 1068 0
	movl	$106, -300(%rbp)	#, cmp_code
	jmp	.L127	#
.L126:
	.loc 1 1072 0
	movl	-348(%rbp), %eax	# unroll_number, tmp821
	subl	$1, %eax	#, D.14883
	imull	-320(%rbp), %eax	# abs_inc, D.14883
	addl	$1, %eax	#, tmp822
	movl	%eax, -304(%rbp)	# tmp822, cmp_const
	.loc 1 1073 0
	movl	$104, -300(%rbp)	#, cmp_code
.L127:
	.loc 1 1076 0
	movq	-56(%rbp), %rax	# labels, tmp823
	movq	(%rax), %rbx	# *labels_428, D.14885
	movl	-364(%rbp), %r12d	# mode, mode.82
	movl	-304(%rbp), %eax	# cmp_const, tmp824
	cltq
	movq	%rax, %rsi	# D.14896,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, %rsi	#, D.14885
	movl	-300(%rbp), %edx	# cmp_code, tmp825
	movq	-152(%rbp), %rax	# diff, tmp826
	movq	%rbx, (%rsp)	# D.14885,
	movl	$0, %r9d	#,
	movl	%r12d, %r8d	# mode.82,
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp826,
	call	emit_cmp_and_jump_insns	#
	.loc 1 1078 0
	call	get_last_insn	#
	movq	-56(%rbp), %rdx	# labels, tmp827
	movq	(%rdx), %rdx	# *labels_428, D.14885
	movq	%rdx, 64(%rax)	# D.14885, _493->fld[7].rtx
	.loc 1 1079 0
	movq	-56(%rbp), %rax	# labels, tmp828
	movq	(%rax), %rax	# *labels_428, D.14885
	movl	32(%rax), %edx	# _495->fld[3].rtint, D.14883
	addl	$1, %edx	#, D.14883
	movl	%edx, 32(%rax)	# D.14883, _495->fld[3].rtint
.L125:
.LBE11:
	.loc 1 1082 0
	call	gen_sequence	#
	movq	%rax, -40(%rbp)	# tmp829, sequence
	.loc 1 1083 0
	call	end_sequence	#
	.loc 1 1084 0
	movq	-40(%rbp), %rdx	# sequence, tmp830
	movq	-376(%rbp), %rax	# loop, tmp831
	movq	%rdx, %rsi	# tmp830,
	movq	%rax, %rdi	# tmp831,
	call	loop_insn_hoist	#
	.loc 1 1091 0
	movq	-112(%rbp), %rax	# last_loop_insn, tmp832
	movzwl	(%rax), %eax	# last_loop_insn_112->code, D.14882
	cmpw	$35, %ax	#, D.14882
	jne	.L128	#,
	.loc 1 1092 0
	movq	-112(%rbp), %rax	# last_loop_insn, tmp833
	movq	16(%rax), %rax	# last_loop_insn_112->fld[1].rtx, D.14885
	movq	16(%rax), %rax	# _500->fld[1].rtx, tmp834
	movq	%rax, -216(%rbp)	# tmp834, copy_end
	jmp	.L129	#
.L128:
	.loc 1 1093 0
	movq	-112(%rbp), %rax	# last_loop_insn, tmp835
	movzwl	(%rax), %eax	# last_loop_insn_112->code, D.14882
	cmpw	$33, %ax	#, D.14882
	jne	.L130	#,
	.loc 1 1095 0
	movq	-112(%rbp), %rax	# last_loop_insn, tmp836
	movq	16(%rax), %rax	# last_loop_insn_112->fld[1].rtx, tmp837
	movq	%rax, -216(%rbp)	# tmp837, copy_end
	jmp	.L129	#
.L130:
	.loc 1 1104 0
	movl	$__FUNCTION__.11296, %edx	#,
	movl	$1104, %esi	#,
	movl	$.LC13, %edi	#,
	call	fancy_abort	#
.L129:
	.loc 1 1106 0
	movl	$1, -360(%rbp)	#, i
	jmp	.L131	#
.L140:
	.loc 1 1108 0
	movq	-128(%rbp), %rax	# loop_start, tmp838
	movq	16(%rax), %rdx	# loop_start_85->fld[1].rtx, D.14885
	movl	-360(%rbp), %eax	# i, tmp839
	movl	-348(%rbp), %ecx	# unroll_number, tmp840
	subl	%eax, %ecx	# tmp839, D.14883
	movl	%ecx, %eax	# D.14883, D.14883
	cltq
	leaq	0(,%rax,8), %rcx	#, D.14884
	movq	-56(%rbp), %rax	# labels, tmp841
	addq	%rcx, %rax	# D.14884, D.14889
	movq	(%rax), %rax	# *_509, D.14885
	movq	%rdx, %rsi	# D.14885,
	movq	%rax, %rdi	# D.14885,
	call	emit_label_after	#
	.loc 1 1111 0
	movl	-288(%rbp), %eax	# max_insnno, tmp842
	cltq
	leaq	0(,%rax,8), %rdx	#, D.14884
	movq	-96(%rbp), %rax	# map, tmp843
	movq	48(%rax), %rax	# map_235->insn_map, D.14889
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.14889,
	call	memset	#
	.loc 1 1113 0
	movq	-96(%rbp), %rax	# map, tmp844
	movq	64(%rax), %rax	# map_235->const_equiv_varray, D.14895
	movq	(%rax), %rax	# _514->num_elements, D.14884
	.loc 1 1112 0
	salq	$4, %rax	#, D.14884
	movq	%rax, %rdx	# D.14884, D.14884
	movq	-96(%rbp), %rax	# map, tmp845
	movq	64(%rax), %rax	# map_235->const_equiv_varray, D.14895
	addq	$32, %rax	#, D.14899
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.14899,
	call	memset	#
	.loc 1 1115 0
	movq	-96(%rbp), %rax	# map, tmp846
	movl	$0, 72(%rax)	#, map_235->const_age
	.loc 1 1117 0
	movl	$0, -356(%rbp)	#, j
	jmp	.L132	#
.L134:
	.loc 1 1118 0
	movl	-356(%rbp), %eax	# j, tmp847
	movslq	%eax, %rdx	# tmp847, D.14887
	movq	-192(%rbp), %rax	# local_label, tmp848
	addq	%rdx, %rax	# D.14887, D.14888
	movzbl	(%rax), %eax	# *_521, D.14894
	testb	%al, %al	# D.14894
	je	.L133	#,
	.loc 1 1119 0
	movq	-96(%rbp), %rax	# map, tmp849
	movq	40(%rax), %rax	# map_235->label_map, D.14889
	movl	-356(%rbp), %edx	# j, tmp850
	movslq	%edx, %rdx	# tmp850, D.14884
	salq	$3, %rdx	#, D.14884
	leaq	(%rax,%rdx), %rbx	#, D.14889
	call	gen_label_rtx	#
	movq	%rax, (%rbx)	# D.14885, *_526
.L133:
	.loc 1 1117 0
	addl	$1, -356(%rbp)	#, j
.L132:
	.loc 1 1117 0 is_stmt 0 discriminator 1
	movl	-356(%rbp), %eax	# j, tmp851
	cmpl	-292(%rbp), %eax	# max_labelno, tmp851
	jl	.L134	#,
	.loc 1 1121 0 is_stmt 1
	movl	$53, -352(%rbp)	#, r
	jmp	.L135	#
.L137:
	.loc 1 1122 0
	movl	-352(%rbp), %edx	# r, D.14887
	movq	-64(%rbp), %rax	# local_regno, tmp852
	addq	%rdx, %rax	# D.14887, D.14888
	movzbl	(%rax), %eax	# *_531, D.14894
	testb	%al, %al	# D.14894
	je	.L136	#,
	.loc 1 1124 0
	movq	-96(%rbp), %rax	# map, tmp853
	movq	32(%rax), %rax	# map_235->reg_map, D.14889
	movl	-352(%rbp), %edx	# r, D.14884
	salq	$3, %rdx	#, D.14884
	leaq	(%rax,%rdx), %rbx	#, D.14889
	.loc 1 1125 0
	movq	cfun(%rip), %rax	# cfun, cfun.83
	movq	24(%rax), %rax	# cfun.83_537->emit, D.14900
	movq	80(%rax), %rax	# _538->x_regno_reg_rtx, D.14889
	movl	-352(%rbp), %edx	# r, D.14884
	salq	$3, %rdx	#, D.14884
	addq	%rdx, %rax	# D.14884, D.14889
	movq	(%rax), %rax	# *_542, D.14885
	movzbl	2(%rax), %eax	# _543->mode, D.14897
	movzbl	%al, %eax	# D.14897, D.14898
	movl	%eax, %edi	# D.14898,
	call	gen_reg_rtx	#
	movq	%rax, (%rbx)	# D.14885, *_536
	.loc 1 1127 0
	movq	cfun(%rip), %rax	# cfun, cfun.84
	movq	24(%rax), %rax	# cfun.84_547->emit, D.14900
	movq	80(%rax), %rax	# _548->x_regno_reg_rtx, D.14889
	movl	-352(%rbp), %edx	# r, D.14884
	salq	$3, %rdx	#, D.14884
	addq	%rdx, %rax	# D.14884, D.14889
	.loc 1 1126 0
	movq	(%rax), %rcx	# *_552, D.14885
	movq	-96(%rbp), %rax	# map, tmp854
	movq	32(%rax), %rax	# map_235->reg_map, D.14889
	movl	-352(%rbp), %edx	# r, D.14884
	salq	$3, %rdx	#, D.14884
	addq	%rdx, %rax	# D.14884, D.14889
	movq	(%rax), %rax	# *_557, D.14885
	movl	8(%rax), %eax	# _558->fld[0].rtuint, D.14901
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.14885,
	movl	%eax, %edi	# D.14901,
	call	record_base_value	#
.L136:
	.loc 1 1121 0
	addl	$1, -352(%rbp)	#, r
.L135:
	.loc 1 1121 0 is_stmt 0 discriminator 1
	movl	-352(%rbp), %eax	# r, tmp855
	cmpl	-272(%rbp), %eax	# max_local_regnum, tmp855
	jb	.L137	#,
	.loc 1 1133 0 is_stmt 1
	movl	-348(%rbp), %eax	# unroll_number, tmp856
	subl	$1, %eax	#, D.14883
	cmpl	-360(%rbp), %eax	# i, D.14883
	jne	.L138	#,
	.loc 1 1135 0
	movq	-112(%rbp), %rax	# last_loop_insn, tmp857
	movzwl	(%rax), %eax	# last_loop_insn_112->code, D.14882
	cmpw	$35, %ax	#, D.14882
	jne	.L139	#,
	.loc 1 1136 0
	movq	-112(%rbp), %rax	# last_loop_insn, tmp858
	movq	16(%rax), %rax	# last_loop_insn_112->fld[1].rtx, D.14885
	movq	16(%rax), %rax	# _563->fld[1].rtx, tmp859
	movq	%rax, -216(%rbp)	# tmp859, copy_end
	jmp	.L138	#
.L139:
	.loc 1 1138 0
	movq	-112(%rbp), %rax	# last_loop_insn, tmp860
	movq	%rax, -216(%rbp)	# tmp860, copy_end
.L138:
	.loc 1 1143 0
	movq	-184(%rbp), %r8	# exit_label, tmp861
	movq	-96(%rbp), %rcx	# map, tmp862
	movq	-216(%rbp), %rdx	# copy_end, tmp863
	movq	-224(%rbp), %rsi	# copy_start, tmp864
	movq	-376(%rbp), %rax	# loop, tmp865
	movq	-216(%rbp), %rdi	# copy_end, tmp866
	movq	%rdi, 32(%rsp)	# tmp866,
	movq	-128(%rbp), %rdi	# loop_start, tmp867
	movq	%rdi, 24(%rsp)	# tmp867,
	movq	-120(%rbp), %rdi	# loop_end, tmp868
	movq	%rdi, 16(%rsp)	# tmp868,
	movq	-176(%rbp), %rdi	# start_label, tmp869
	movq	%rdi, 8(%rsp)	# tmp869,
	movl	-340(%rbp), %edi	# unroll_type, tmp870
	movl	%edi, (%rsp)	# tmp870,
	movl	$0, %r9d	#,
	movq	%rax, %rdi	# tmp865,
	call	copy_loop_body	#
	.loc 1 1106 0
	addl	$1, -360(%rbp)	#, i
.L131:
	.loc 1 1106 0 is_stmt 0 discriminator 1
	movl	-360(%rbp), %eax	# i, tmp871
	cmpl	-348(%rbp), %eax	# unroll_number, tmp871
	jl	.L140	#,
	.loc 1 1147 0 is_stmt 1
	movq	-128(%rbp), %rax	# loop_start, tmp872
	movq	16(%rax), %rdx	# loop_start_85->fld[1].rtx, D.14885
	movq	-56(%rbp), %rax	# labels, tmp873
	movq	(%rax), %rax	# *labels_428, D.14885
	movq	%rdx, %rsi	# D.14885,
	movq	%rax, %rdi	# D.14885,
	call	emit_label_after	#
	.loc 1 1149 0
	movq	-112(%rbp), %rax	# last_loop_insn, tmp874
	movzwl	(%rax), %eax	# last_loop_insn_112->code, D.14882
	cmpw	$35, %ax	#, D.14882
	jne	.L141	#,
	.loc 1 1151 0
	movq	-112(%rbp), %rax	# last_loop_insn, tmp875
	movq	16(%rax), %rax	# last_loop_insn_112->fld[1].rtx, tmp876
	movq	%rax, -200(%rbp)	# tmp876, insert_before
	.loc 1 1152 0
	movq	-200(%rbp), %rax	# insert_before, tmp877
	movq	16(%rax), %rax	# insert_before_570->fld[1].rtx, tmp878
	movq	%rax, -216(%rbp)	# tmp878, copy_end
	jmp	.L142	#
.L141:
	.loc 1 1156 0
	movq	-112(%rbp), %rax	# last_loop_insn, tmp879
	movq	%rax, -200(%rbp)	# tmp879, insert_before
	.loc 1 1164 0
	movq	-200(%rbp), %rax	# insert_before, tmp880
	movq	16(%rax), %rax	# insert_before_572->fld[1].rtx, tmp881
	movq	%rax, -216(%rbp)	# tmp881, copy_end
.L142:
	.loc 1 1168 0
	movl	$1, -340(%rbp)	#, unroll_type
	.loc 1 1169 0
	movl	$1, -296(%rbp)	#, loop_preconditioned
	.loc 1 1172 0
	movq	-56(%rbp), %rax	# labels, tmp882
	movq	%rax, %rdi	# tmp882,
	call	free	#
.L98:
.LBE8:
.LBE7:
	.loc 1 1178 0
	cmpl	$2, -340(%rbp)	#, unroll_type
	jne	.L143	#,
	.loc 1 1178 0 is_stmt 0 discriminator 1
	movl	flag_unroll_all_loops(%rip), %eax	# flag_unroll_all_loops, flag_unroll_all_loops.85
	testl	%eax, %eax	# flag_unroll_all_loops.85
	jne	.L143	#,
	.loc 1 1180 0 is_stmt 1
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.86
	testq	%rax, %rax	# loop_dump_stream.86
	je	.L144	#,
	.loc 1 1181 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.87
	movq	%rax, %rcx	# loop_dump_stream.87,
	movl	$51, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC17, %edi	#,
	call	fwrite	#
	.loc 1 1183 0
	jmp	.L145	#
.L144:
	jmp	.L145	#
.L143:
	.loc 1 1189 0
	movl	-348(%rbp), %edx	# unroll_number, unroll_number.88
	movq	-144(%rbp), %rax	# loop_info, tmp883
	movl	%edx, 104(%rax)	# unroll_number.88, loop_info_76->unroll_number
	.loc 1 1199 0
	cmpl	$0, -344(%rbp)	#, splitting_not_safe
	je	.L146	#,
	.loc 1 1200 0
	movq	$0, -232(%rbp)	#, temp
	jmp	.L147	#
.L146:
	.loc 1 1202 0
	movl	-348(%rbp), %edx	# unroll_number, tmp884
	movl	-340(%rbp), %ecx	# unroll_type, tmp885
	movq	-376(%rbp), %rax	# loop, tmp886
	movl	%ecx, %esi	# tmp885,
	movq	%rax, %rdi	# tmp886,
	call	find_splittable_regs	#
	cltq
	movq	%rax, -232(%rbp)	# tmp887, temp
.L147:
	.loc 1 1208 0
	call	max_reg_num	#
	movl	%eax, -276(%rbp)	# D.14883, maxregnum
	.loc 1 1209 0
	movl	-276(%rbp), %eax	# maxregnum, D.14884
	salq	$3, %rax	#, D.14884
	movq	%rax, %rdi	# D.14884,
	call	xmalloc	#
	movq	%rax, %rdx	# tmp888, D.14881
	movq	-96(%rbp), %rax	# map, tmp889
	movq	%rdx, 32(%rax)	# D.14881, map_235->reg_map
	.loc 1 1211 0
	movl	-276(%rbp), %edx	# maxregnum, maxregnum.89
	movq	-96(%rbp), %rax	# map, tmp890
	movl	%edx, %esi	# maxregnum.89,
	movq	%rax, %rdi	# tmp890,
	call	init_reg_map	#
	.loc 1 1213 0
	movq	-96(%rbp), %rax	# map, tmp891
	movq	64(%rax), %rax	# map_235->const_equiv_varray, D.14895
	testq	%rax, %rax	# D.14895
	jne	.L148	#,
	.loc 1 1214 0
	movl	-276(%rbp), %edx	# maxregnum, D.14884
	movl	-348(%rbp), %eax	# unroll_number, tmp892
	cltq
	imulq	-232(%rbp), %rax	# temp, D.14884
	addq	%rax, %rax	# D.14884
	addq	%rdx, %rax	# D.14884, D.14884
	movl	$.LC18, %edx	#,
	movl	$16, %esi	#,
	movq	%rax, %rdi	# D.14884,
	call	varray_init	#
	movq	-96(%rbp), %rdx	# map, tmp893
	movq	%rax, 64(%rdx)	# D.14895, map_235->const_equiv_varray
.L148:
	.loc 1 1217 0
	movq	-96(%rbp), %rax	# map, tmp894
	movq	64(%rax), %rax	# map_235->const_equiv_varray, global_const_equiv_varray.90
	movq	%rax, global_const_equiv_varray(%rip)	# global_const_equiv_varray.90, global_const_equiv_varray
	.loc 1 1222 0
	movq	-136(%rbp), %rax	# ivs, tmp895
	movq	16(%rax), %rax	# ivs_78->list, tmp896
	movq	%rax, -168(%rbp)	# tmp896, bl
	jmp	.L149	#
.L151:
	.loc 1 1224 0
	movq	-168(%rbp), %rax	# bl, tmp897
	movq	8(%rax), %rax	# bl_50->biv, D.14902
	movq	16(%rax), %rax	# _598->src_reg, D.14885
	movl	8(%rax), %edx	# _599->fld[0].rtuint, D.14901
	movq	-168(%rbp), %rax	# bl, tmp898
	movl	(%rax), %eax	# bl_50->regno, D.14901
	cmpl	%eax, %edx	# D.14901, D.14901
	je	.L150	#,
	.loc 1 1225 0
	movq	-96(%rbp), %rax	# map, tmp899
	movq	32(%rax), %rdx	# map_235->reg_map, D.14889
	movq	-168(%rbp), %rax	# bl, tmp900
	movl	(%rax), %eax	# bl_50->regno, D.14901
	movl	%eax, %eax	# D.14901, D.14884
	salq	$3, %rax	#, D.14884
	addq	%rax, %rdx	# D.14884, D.14889
	movq	-168(%rbp), %rax	# bl, tmp901
	movq	8(%rax), %rax	# bl_50->biv, D.14902
	movq	16(%rax), %rax	# _607->src_reg, D.14885
	movq	%rax, (%rdx)	# D.14885, *_606
.L150:
	.loc 1 1222 0
	movq	-168(%rbp), %rax	# bl, tmp902
	movq	64(%rax), %rax	# bl_50->next, tmp903
	movq	%rax, -168(%rbp)	# tmp903, bl
.L149:
	.loc 1 1222 0 is_stmt 0 discriminator 1
	cmpq	$0, -168(%rbp)	#, bl
	jne	.L151	#,
	.loc 1 1235 0 is_stmt 1
	movq	cfun(%rip), %rax	# cfun, cfun.91
	movq	24(%rax), %rax	# cfun.91_610->emit, D.14900
	movq	64(%rax), %rdx	# _611->regno_pointer_align, D.14903
	movq	-96(%rbp), %rax	# map, tmp904
	movq	%rdx, 120(%rax)	# D.14903, map_235->regno_pointer_align
	.loc 1 1236 0
	movq	cfun(%rip), %rax	# cfun, cfun.92
	movq	24(%rax), %rax	# cfun.92_613->emit, D.14900
	movq	80(%rax), %rdx	# _614->x_regno_reg_rtx, D.14889
	movq	-96(%rbp), %rax	# map, tmp905
	movq	%rdx, 128(%rax)	# D.14889, map_235->x_regno_reg_rtx
	.loc 1 1244 0
	cmpl	$1, -340(%rbp)	#, unroll_type
	jne	.L152	#,
	.loc 1 1246 0
	movq	-216(%rbp), %rax	# copy_end, tmp906
	movq	24(%rax), %rax	# copy_end_35->fld[2].rtx, tmp907
	movq	%rax, -208(%rbp)	# tmp907, insn
	.loc 1 1247 0
	movq	-208(%rbp), %rax	# insn, tmp908
	movzwl	(%rax), %eax	# insn_616->code, D.14882
	cmpw	$32, %ax	#, D.14882
	je	.L153	#,
	.loc 1 1247 0 is_stmt 0 discriminator 1
	movq	-208(%rbp), %rax	# insn, tmp909
	movzwl	(%rax), %eax	# insn_616->code, D.14882
	cmpw	$33, %ax	#, D.14882
	jne	.L152	#,
.L153:
	.loc 1 1248 0 is_stmt 1
	movq	-208(%rbp), %rax	# insn, tmp910
	movq	32(%rax), %rdx	# insn_616->fld[3].rtx, D.14885
	movq	-376(%rbp), %rax	# loop, tmp911
	movq	%rdx, %rsi	# D.14885,
	movq	%rax, %rdi	# tmp911,
	call	remap_split_bivs	#
	movq	-208(%rbp), %rdx	# insn, tmp912
	movq	%rax, 32(%rdx)	# D.14885, insn_616->fld[3].rtx
.L152:
	.loc 1 1255 0
	movl	$0, -360(%rbp)	#, i
	jmp	.L154	#
.L162:
	.loc 1 1257 0
	movl	-288(%rbp), %eax	# max_insnno, tmp913
	cltq
	leaq	0(,%rax,8), %rdx	#, D.14884
	movq	-96(%rbp), %rax	# map, tmp914
	movq	48(%rax), %rax	# map_235->insn_map, D.14889
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.14889,
	call	memset	#
	.loc 1 1259 0
	movq	-96(%rbp), %rax	# map, tmp915
	movq	64(%rax), %rax	# map_235->const_equiv_varray, D.14895
	movq	(%rax), %rax	# _625->num_elements, D.14884
	.loc 1 1258 0
	salq	$4, %rax	#, D.14884
	movq	%rax, %rdx	# D.14884, D.14884
	movq	-96(%rbp), %rax	# map, tmp916
	movq	64(%rax), %rax	# map_235->const_equiv_varray, D.14895
	addq	$32, %rax	#, D.14899
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.14899,
	call	memset	#
	.loc 1 1260 0
	movq	-96(%rbp), %rax	# map, tmp917
	movl	$0, 72(%rax)	#, map_235->const_age
	.loc 1 1262 0
	movl	$0, -356(%rbp)	#, j
	jmp	.L155	#
.L157:
	.loc 1 1263 0
	movl	-356(%rbp), %eax	# j, tmp918
	movslq	%eax, %rdx	# tmp918, D.14887
	movq	-192(%rbp), %rax	# local_label, tmp919
	addq	%rdx, %rax	# D.14887, D.14888
	movzbl	(%rax), %eax	# *_632, D.14894
	testb	%al, %al	# D.14894
	je	.L156	#,
	.loc 1 1264 0
	movq	-96(%rbp), %rax	# map, tmp920
	movq	40(%rax), %rax	# map_235->label_map, D.14889
	movl	-356(%rbp), %edx	# j, tmp921
	movslq	%edx, %rdx	# tmp921, D.14884
	salq	$3, %rdx	#, D.14884
	leaq	(%rax,%rdx), %rbx	#, D.14889
	call	gen_label_rtx	#
	movq	%rax, (%rbx)	# D.14885, *_637
.L156:
	.loc 1 1262 0
	addl	$1, -356(%rbp)	#, j
.L155:
	.loc 1 1262 0 is_stmt 0 discriminator 1
	movl	-356(%rbp), %eax	# j, tmp922
	cmpl	-292(%rbp), %eax	# max_labelno, tmp922
	jl	.L157	#,
	.loc 1 1266 0 is_stmt 1
	movl	$53, -352(%rbp)	#, r
	jmp	.L158	#
.L160:
	.loc 1 1267 0
	movl	-352(%rbp), %edx	# r, D.14887
	movq	-64(%rbp), %rax	# local_regno, tmp923
	addq	%rdx, %rax	# D.14887, D.14888
	movzbl	(%rax), %eax	# *_642, D.14894
	testb	%al, %al	# D.14894
	je	.L159	#,
	.loc 1 1269 0
	movq	-96(%rbp), %rax	# map, tmp924
	movq	32(%rax), %rax	# map_235->reg_map, D.14889
	movl	-352(%rbp), %edx	# r, D.14884
	salq	$3, %rdx	#, D.14884
	leaq	(%rax,%rdx), %rbx	#, D.14889
	movq	cfun(%rip), %rax	# cfun, cfun.93
	movq	24(%rax), %rax	# cfun.93_648->emit, D.14900
	movq	80(%rax), %rax	# _649->x_regno_reg_rtx, D.14889
	movl	-352(%rbp), %edx	# r, D.14884
	salq	$3, %rdx	#, D.14884
	addq	%rdx, %rax	# D.14884, D.14889
	movq	(%rax), %rax	# *_653, D.14885
	movzbl	2(%rax), %eax	# _654->mode, D.14897
	movzbl	%al, %eax	# D.14897, D.14898
	movl	%eax, %edi	# D.14898,
	call	gen_reg_rtx	#
	movq	%rax, (%rbx)	# D.14885, *_647
	.loc 1 1271 0
	movq	cfun(%rip), %rax	# cfun, cfun.94
	movq	24(%rax), %rax	# cfun.94_658->emit, D.14900
	movq	80(%rax), %rax	# _659->x_regno_reg_rtx, D.14889
	movl	-352(%rbp), %edx	# r, D.14884
	salq	$3, %rdx	#, D.14884
	addq	%rdx, %rax	# D.14884, D.14889
	.loc 1 1270 0
	movq	(%rax), %rcx	# *_663, D.14885
	movq	-96(%rbp), %rax	# map, tmp925
	movq	32(%rax), %rax	# map_235->reg_map, D.14889
	movl	-352(%rbp), %edx	# r, D.14884
	salq	$3, %rdx	#, D.14884
	addq	%rdx, %rax	# D.14884, D.14889
	movq	(%rax), %rax	# *_668, D.14885
	movl	8(%rax), %eax	# _669->fld[0].rtuint, D.14901
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.14885,
	movl	%eax, %edi	# D.14901,
	call	record_base_value	#
.L159:
	.loc 1 1266 0
	addl	$1, -352(%rbp)	#, r
.L158:
	.loc 1 1266 0 is_stmt 0 discriminator 1
	movl	-352(%rbp), %eax	# r, tmp926
	cmpl	-272(%rbp), %eax	# max_local_regnum, tmp926
	jb	.L160	#,
	.loc 1 1276 0 is_stmt 1
	cmpl	$0, -360(%rbp)	#, i
	jne	.L161	#,
	.loc 1 1276 0 is_stmt 0 discriminator 1
	movq	-128(%rbp), %rax	# loop_start, tmp927
	cmpq	-224(%rbp), %rax	# copy_start, tmp927
	je	.L161	#,
	.loc 1 1278 0 is_stmt 1
	movq	-224(%rbp), %rax	# copy_start, tmp928
	movq	16(%rax), %rax	# copy_start_26->fld[1].rtx, tmp929
	movq	%rax, -208(%rbp)	# tmp929, insn
	.loc 1 1279 0
	movq	-208(%rbp), %rax	# insn, tmp930
	movq	32(%rax), %rax	# insn_672->fld[3].rtx, tmp931
	movq	%rax, -32(%rbp)	# tmp931, pattern
	.loc 1 1282 0
	movq	-32(%rbp), %rax	# pattern, tmp932
	movq	16(%rax), %rax	# pattern_673->fld[1].rtx, D.14885
	movq	8(%rax), %rax	# _674->fld[0].rtx, D.14885
	.loc 1 1281 0
	movl	48(%rax), %edx	# _675->fld[5].rtint, D.14883
	movq	-96(%rbp), %rax	# map, tmp933
	movl	%edx, %esi	# D.14883,
	movq	%rax, %rdi	# tmp933,
	call	get_label_from_map	#
	movq	%rax, -24(%rbp)	# tmp934, tem
	.loc 1 1284 0
	movq	-24(%rbp), %rax	# tem, tmp935
	movq	%rax, %rdx	# tmp935,
	movl	$0, %esi	#,
	movl	$67, %edi	#,
	call	gen_rtx_fmt_u00	#
	movq	-32(%rbp), %rdx	# pattern, tmp936
	movq	%rax, 16(%rdx)	# D.14885, pattern_673->fld[1].rtx
	.loc 1 1288 0
	movq	-208(%rbp), %rax	# insn, tmp937
	movq	-24(%rbp), %rdx	# tem, tmp938
	movq	%rdx, 64(%rax)	# tmp938, insn_672->fld[7].rtx
	.loc 1 1289 0
	movq	-24(%rbp), %rax	# tem, tmp939
	movl	32(%rax), %eax	# tem_677->fld[3].rtint, D.14883
	leal	1(%rax), %edx	#, D.14883
	movq	-24(%rbp), %rax	# tem, tmp940
	movl	%edx, 32(%rax)	# D.14883, tem_677->fld[3].rtint
.L161:
	.loc 1 1293 0
	movl	-348(%rbp), %eax	# unroll_number, tmp941
	subl	$1, %eax	#, D.14883
	.loc 1 1292 0
	cmpl	-360(%rbp), %eax	# i, D.14883
	sete	%al	#, D.14890
	movzbl	%al, %r9d	# D.14890, D.14883
	movq	-184(%rbp), %r8	# exit_label, tmp942
	movq	-96(%rbp), %rcx	# map, tmp943
	movq	-216(%rbp), %rdx	# copy_end, tmp944
	movq	-224(%rbp), %rsi	# copy_start, tmp945
	movq	-376(%rbp), %rax	# loop, tmp946
	movq	-200(%rbp), %rdi	# insert_before, tmp947
	movq	%rdi, 32(%rsp)	# tmp947,
	movq	-200(%rbp), %rdi	# insert_before, tmp948
	movq	%rdi, 24(%rsp)	# tmp948,
	movq	-120(%rbp), %rdi	# loop_end, tmp949
	movq	%rdi, 16(%rsp)	# tmp949,
	movq	-176(%rbp), %rdi	# start_label, tmp950
	movq	%rdi, 8(%rsp)	# tmp950,
	movl	-340(%rbp), %edi	# unroll_type, tmp951
	movl	%edi, (%rsp)	# tmp951,
	movq	%rax, %rdi	# tmp946,
	call	copy_loop_body	#
	.loc 1 1255 0
	addl	$1, -360(%rbp)	#, i
.L154:
	.loc 1 1255 0 is_stmt 0 discriminator 1
	movl	-360(%rbp), %eax	# i, tmp952
	cmpl	-348(%rbp), %eax	# unroll_number, tmp952
	jl	.L162	#,
	.loc 1 1306 0 is_stmt 1
	cmpl	$0, -340(%rbp)	#, unroll_type
	jne	.L163	#,
	.loc 1 1307 0
	call	gen_label_rtx	#
	movq	-112(%rbp), %rdx	# last_loop_insn, tmp953
	movq	%rdx, %rsi	# tmp953,
	movq	%rax, %rdi	# D.14885,
	call	emit_label_after	#
	movq	%rax, -160(%rbp)	# tmp954, safety_label
	jmp	.L164	#
.L163:
	.loc 1 1309 0
	call	gen_label_rtx	#
	movq	-216(%rbp), %rdx	# copy_end, tmp955
	movq	%rdx, %rsi	# tmp955,
	movq	%rax, %rdi	# D.14885,
	call	emit_label_after	#
	movq	%rax, -160(%rbp)	# tmp956, safety_label
.L164:
	.loc 1 1314 0
	movq	-224(%rbp), %rax	# copy_start, tmp957
	movq	24(%rax), %rax	# copy_start_26->fld[2].rtx, tmp958
	movq	%rax, -208(%rbp)	# tmp958, insn
	.loc 1 1315 0
	jmp	.L165	#
.L169:
	.loc 1 1325 0
	movq	-208(%rbp), %rax	# insn, tmp959
	cmpq	-176(%rbp), %rax	# start_label, tmp959
	je	.L166	#,
	.loc 1 1326 0
	movq	-208(%rbp), %rax	# insn, tmp960
	movzwl	(%rax), %eax	# insn_40->code, D.14882
	cmpw	$36, %ax	#, D.14882
	jne	.L167	#,
	.loc 1 1326 0 is_stmt 0 discriminator 1
	movq	-208(%rbp), %rax	# insn, tmp961
	movq	56(%rax), %rax	# insn_40->fld[6].rtstr, D.14886
	testq	%rax, %rax	# D.14886
	jne	.L166	#,
.L167:
	.loc 1 1327 0 is_stmt 1
	movq	-208(%rbp), %rax	# insn, tmp962
	movzwl	(%rax), %eax	# insn_40->code, D.14882
	cmpw	$37, %ax	#, D.14882
	jne	.L168	#,
	.loc 1 1328 0 discriminator 1
	movq	-208(%rbp), %rax	# insn, tmp963
	movl	40(%rax), %eax	# insn_40->fld[4].rtint, D.14883
	.loc 1 1327 0 discriminator 1
	cmpl	$-88, %eax	#, D.14883
	je	.L166	#,
.L168:
	.loc 1 1329 0
	movq	-208(%rbp), %rax	# insn, tmp964
	movq	%rax, %rdi	# tmp964,
	call	delete_related_insns	#
	movq	%rax, -208(%rbp)	# tmp965, insn
	jmp	.L165	#
.L166:
	.loc 1 1331 0
	movq	-208(%rbp), %rax	# insn, tmp966
	movq	24(%rax), %rax	# insn_40->fld[2].rtx, tmp967
	movq	%rax, -208(%rbp)	# tmp967, insn
.L165:
	.loc 1 1315 0 discriminator 1
	movq	-208(%rbp), %rax	# insn, tmp968
	cmpq	-160(%rbp), %rax	# safety_label, tmp968
	jne	.L169	#,
	.loc 1 1336 0
	movq	-160(%rbp), %rax	# safety_label, tmp969
	movzbl	3(%rax), %eax	# *safety_label_55, D.14897
	andl	$8, %eax	#, D.14897
	testb	%al, %al	# D.14897
	je	.L170	#,
	.loc 1 1337 0
	movl	$__FUNCTION__.11296, %edx	#,
	movl	$1337, %esi	#,
	movl	$.LC13, %edi	#,
	call	fancy_abort	#
.L170:
	.loc 1 1338 0
	movq	-160(%rbp), %rax	# safety_label, tmp970
	movq	%rax, %rdi	# tmp970,
	call	delete_related_insns	#
	.loc 1 1345 0
	cmpq	$0, -184(%rbp)	#, exit_label
	je	.L145	#,
	.loc 1 1346 0
	movq	-120(%rbp), %rdx	# loop_end, tmp971
	movq	-184(%rbp), %rax	# exit_label, tmp972
	movq	%rdx, %rsi	# tmp971,
	movq	%rax, %rdi	# tmp972,
	call	emit_label_after	#
.L145:
	.loc 1 1349 0
	cmpl	$0, -340(%rbp)	#, unroll_type
	jne	.L171	#,
	.loc 1 1352 0
	movq	-376(%rbp), %rax	# loop, tmp973
	movq	168(%rax), %rax	# loop_75(D)->vtop, D.14885
	testq	%rax, %rax	# D.14885
	je	.L172	#,
	.loc 1 1353 0
	movq	-376(%rbp), %rax	# loop, tmp974
	movq	168(%rax), %rax	# loop_75(D)->vtop, D.14885
	movq	%rax, %rdi	# D.14885,
	call	delete_related_insns	#
.L172:
	.loc 1 1354 0
	movq	-376(%rbp), %rax	# loop, tmp975
	movq	176(%rax), %rax	# loop_75(D)->cont, D.14885
	testq	%rax, %rax	# D.14885
	je	.L173	#,
	.loc 1 1355 0
	movq	-376(%rbp), %rax	# loop, tmp976
	movq	176(%rax), %rax	# loop_75(D)->cont, D.14885
	movq	%rax, %rdi	# D.14885,
	call	delete_related_insns	#
.L173:
	.loc 1 1356 0
	cmpq	$0, -128(%rbp)	#, loop_start
	je	.L174	#,
	.loc 1 1357 0
	movq	-128(%rbp), %rax	# loop_start, tmp977
	movq	%rax, %rdi	# tmp977,
	call	delete_related_insns	#
.L174:
	.loc 1 1358 0
	cmpq	$0, -120(%rbp)	#, loop_end
	je	.L171	#,
	.loc 1 1359 0
	movq	-120(%rbp), %rax	# loop_end, tmp978
	movq	%rax, %rdi	# tmp978,
	call	delete_related_insns	#
.L171:
	.loc 1 1362 0
	movq	-96(%rbp), %rax	# map, tmp979
	movq	64(%rax), %rax	# map_235->const_equiv_varray, D.14895
	testq	%rax, %rax	# D.14895
	je	.L175	#,
	.loc 1 1363 0
	movq	-96(%rbp), %rax	# map, tmp980
	movq	64(%rax), %rax	# map_235->const_equiv_varray, D.14895
	testq	%rax, %rax	# D.14895
	je	.L175	#,
	.loc 1 1363 0 is_stmt 0 discriminator 1
	movq	-96(%rbp), %rax	# map, tmp981
	movq	64(%rax), %rax	# map_235->const_equiv_varray, D.14895
	movq	%rax, %rdi	# D.14895,
	call	free	#
	movq	-96(%rbp), %rax	# map, tmp982
	movq	$0, 64(%rax)	#, map_235->const_equiv_varray
.L175:
	.loc 1 1364 0 is_stmt 1
	movq	-96(%rbp), %rax	# map, tmp983
	movq	40(%rax), %rax	# map_235->label_map, D.14889
	testq	%rax, %rax	# D.14889
	je	.L176	#,
	.loc 1 1366 0
	movq	-96(%rbp), %rax	# map, tmp984
	movq	40(%rax), %rax	# map_235->label_map, D.14889
	movq	%rax, %rdi	# D.14889,
	call	free	#
	.loc 1 1367 0
	movq	-192(%rbp), %rax	# local_label, tmp985
	movq	%rax, %rdi	# tmp985,
	call	free	#
.L176:
	.loc 1 1369 0
	movq	-96(%rbp), %rax	# map, tmp986
	movq	48(%rax), %rax	# map_235->insn_map, D.14889
	movq	%rax, %rdi	# D.14889,
	call	free	#
	.loc 1 1370 0
	movq	splittable_regs(%rip), %rax	# splittable_regs, splittable_regs.95
	movq	%rax, %rdi	# splittable_regs.95,
	call	free	#
	.loc 1 1371 0
	movq	splittable_regs_updates(%rip), %rax	# splittable_regs_updates, splittable_regs_updates.96
	movq	%rax, %rdi	# splittable_regs_updates.96,
	call	free	#
	.loc 1 1372 0
	movq	addr_combined_regs(%rip), %rax	# addr_combined_regs, addr_combined_regs.97
	movq	%rax, %rdi	# addr_combined_regs.97,
	call	free	#
	.loc 1 1373 0
	movq	-64(%rbp), %rax	# local_regno, tmp987
	movq	%rax, %rdi	# tmp987,
	call	free	#
	.loc 1 1374 0
	movq	-96(%rbp), %rax	# map, tmp988
	movq	32(%rax), %rax	# map_235->reg_map, D.14889
	testq	%rax, %rax	# D.14889
	je	.L177	#,
	.loc 1 1375 0
	movq	-96(%rbp), %rax	# map, tmp989
	movq	32(%rax), %rax	# map_235->reg_map, D.14889
	movq	%rax, %rdi	# D.14889,
	call	free	#
.L177:
	.loc 1 1376 0
	movq	-96(%rbp), %rax	# map, tmp990
	movq	%rax, %rdi	# tmp990,
	call	free	#
.L1:
	.loc 1 1377 0
	addq	$416, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	unroll_loop, .-unroll_loop
	.section	.rodata
	.align 8
.LC19:
	.string	"Preconditioning: Success, number of iterations known, "
.LC20:
	.string	".\n"
	.align 8
.LC21:
	.string	"Preconditioning: Could not find iteration variable.\n"
	.align 8
.LC22:
	.string	"Preconditioning: Could not find initial value.\n"
	.align 8
.LC23:
	.string	"Preconditioning: Could not find increment value.\n"
	.align 8
.LC24:
	.string	"Preconditioning: Increment not a constant.\n"
	.align 8
.LC25:
	.string	"Preconditioning: Increment not a constant power of 2.\n"
	.align 8
.LC26:
	.string	"Preconditioning: EQ comparison loop.\n"
	.align 8
.LC27:
	.string	"Preconditioning: Final value not invariant.\n"
	.align 8
.LC28:
	.string	"Preconditioning: Floating point final or initial value.\n"
	.align 8
.LC29:
	.string	"Preconditioning: Iteration var not live before loop start.\n"
.LC30:
	.string	"Preconditioning: Successful.\n"
	.text
	.globl	precondition_loop_p
	.type	precondition_loop_p, @function
precondition_loop_p:
.LFB3:
	.loc 1 1401 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -24(%rbp)	# loop, loop
	movq	%rsi, -32(%rbp)	# initial_value, initial_value
	movq	%rdx, -40(%rbp)	# final_value, final_value
	movq	%rcx, -48(%rbp)	# increment, increment
	movq	%r8, -56(%rbp)	# mode, mode
	.loc 1 1402 0
	movq	-24(%rbp), %rax	# loop, tmp180
	movq	192(%rax), %rax	# loop_2(D)->start, tmp181
	movq	%rax, -16(%rbp)	# tmp181, loop_start
	.loc 1 1403 0
	movq	-24(%rbp), %rax	# loop, tmp182
	movq	160(%rax), %rax	# loop_2(D)->aux, tmp183
	movq	%rax, -8(%rbp)	# tmp183, loop_info
	.loc 1 1405 0
	movq	-8(%rbp), %rax	# loop_info, tmp184
	movq	96(%rax), %rax	# loop_info_4->n_iterations, D.14926
	testq	%rax, %rax	# D.14926
	je	.L181	#,
	.loc 1 1407 0
	movq	-8(%rbp), %rax	# loop_info, tmp185
	movq	80(%rax), %rax	# loop_info_4->increment, D.14927
	movq	8(%rax), %rax	# _6->fld[0].rtwint, D.14928
	testq	%rax, %rax	# D.14928
	jle	.L182	#,
	.loc 1 1409 0
	movq	const_int_rtx+512(%rip), %rdx	# const_int_rtx, D.14927
	movq	-32(%rbp), %rax	# initial_value, tmp186
	movq	%rdx, (%rax)	# D.14927, *initial_value_9(D)
	.loc 1 1410 0
	movq	const_int_rtx+520(%rip), %rdx	# const_int_rtx, D.14927
	movq	-48(%rbp), %rax	# increment, tmp187
	movq	%rdx, (%rax)	# D.14927, *increment_11(D)
	.loc 1 1411 0
	movq	-8(%rbp), %rax	# loop_info, tmp188
	movq	96(%rax), %rax	# loop_info_4->n_iterations, D.14926
	movq	%rax, %rsi	# D.14928,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	-40(%rbp), %rdx	# final_value, tmp189
	movq	%rax, (%rdx)	# D.14927, *final_value_15(D)
	jmp	.L183	#
.L182:
	.loc 1 1415 0
	movq	-8(%rbp), %rax	# loop_info, tmp190
	movq	96(%rax), %rax	# loop_info_4->n_iterations, D.14926
	movq	%rax, %rsi	# D.14928,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	-32(%rbp), %rdx	# initial_value, tmp191
	movq	%rax, (%rdx)	# D.14927, *initial_value_9(D)
	.loc 1 1416 0
	movq	const_int_rtx+504(%rip), %rdx	# const_int_rtx, D.14927
	movq	-48(%rbp), %rax	# increment, tmp192
	movq	%rdx, (%rax)	# D.14927, *increment_11(D)
	.loc 1 1417 0
	movq	const_int_rtx+512(%rip), %rdx	# const_int_rtx, D.14927
	movq	-40(%rbp), %rax	# final_value, tmp193
	movq	%rdx, (%rax)	# D.14927, *final_value_15(D)
.L183:
	.loc 1 1419 0
	movl	word_mode(%rip), %edx	# word_mode, word_mode.98
	movq	-56(%rbp), %rax	# mode, tmp194
	movl	%edx, (%rax)	# word_mode.98, *mode_22(D)
	.loc 1 1421 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.99
	testq	%rax, %rax	# loop_dump_stream.99
	je	.L184	#,
	.loc 1 1423 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.100
	movq	%rax, %rcx	# loop_dump_stream.100,
	movl	$54, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC19, %edi	#,
	call	fwrite	#
	.loc 1 1425 0
	movq	-8(%rbp), %rax	# loop_info, tmp195
	movq	96(%rax), %rdx	# loop_info_4->n_iterations, D.14926
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.101
	movl	$.LC4, %esi	#,
	movq	%rax, %rdi	# loop_dump_stream.101,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1427 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.102
	movq	%rax, %rcx	# loop_dump_stream.102,
	movl	$2, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC20, %edi	#,
	call	fwrite	#
.L184:
	.loc 1 1429 0
	movl	$1, %eax	#, D.14925
	jmp	.L185	#
.L181:
	.loc 1 1432 0
	movq	-8(%rbp), %rax	# loop_info, tmp196
	movq	72(%rax), %rax	# loop_info_4->iteration_var, D.14927
	testq	%rax, %rax	# D.14927
	jne	.L186	#,
	.loc 1 1434 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.103
	testq	%rax, %rax	# loop_dump_stream.103
	je	.L187	#,
	.loc 1 1435 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.104
	movq	%rax, %rcx	# loop_dump_stream.104,
	movl	$52, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC21, %edi	#,
	call	fwrite	#
.L187:
	.loc 1 1437 0
	movl	$0, %eax	#, D.14925
	jmp	.L185	#
.L186:
	.loc 1 1439 0
	movq	-8(%rbp), %rax	# loop_info, tmp197
	movq	32(%rax), %rax	# loop_info_4->initial_value, D.14927
	testq	%rax, %rax	# D.14927
	jne	.L188	#,
	.loc 1 1441 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.105
	testq	%rax, %rax	# loop_dump_stream.105
	je	.L189	#,
	.loc 1 1442 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.106
	movq	%rax, %rcx	# loop_dump_stream.106,
	movl	$47, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC22, %edi	#,
	call	fwrite	#
.L189:
	.loc 1 1444 0
	movl	$0, %eax	#, D.14925
	jmp	.L185	#
.L188:
	.loc 1 1446 0
	movq	-8(%rbp), %rax	# loop_info, tmp198
	movq	80(%rax), %rax	# loop_info_4->increment, D.14927
	testq	%rax, %rax	# D.14927
	jne	.L190	#,
	.loc 1 1448 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.107
	testq	%rax, %rax	# loop_dump_stream.107
	je	.L191	#,
	.loc 1 1449 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.108
	movq	%rax, %rcx	# loop_dump_stream.108,
	movl	$49, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC23, %edi	#,
	call	fwrite	#
.L191:
	.loc 1 1451 0
	movl	$0, %eax	#, D.14925
	jmp	.L185	#
.L190:
	.loc 1 1453 0
	movq	-8(%rbp), %rax	# loop_info, tmp199
	movq	80(%rax), %rax	# loop_info_4->increment, D.14927
	movzwl	(%rax), %eax	# _41->code, D.14929
	cmpw	$54, %ax	#, D.14929
	je	.L192	#,
	.loc 1 1455 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.109
	testq	%rax, %rax	# loop_dump_stream.109
	je	.L193	#,
	.loc 1 1456 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.110
	movq	%rax, %rcx	# loop_dump_stream.110,
	movl	$43, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC24, %edi	#,
	call	fwrite	#
.L193:
	.loc 1 1458 0
	movl	$0, %eax	#, D.14925
	jmp	.L185	#
.L192:
	.loc 1 1460 0
	movq	-8(%rbp), %rax	# loop_info, tmp200
	movq	80(%rax), %rax	# loop_info_4->increment, D.14927
	movq	8(%rax), %rax	# _46->fld[0].rtwint, D.14928
	movq	%rax, %rdi	# D.14926,
	call	exact_log2_wide	#
	testl	%eax, %eax	# D.14925
	jns	.L194	#,
	.loc 1 1461 0
	movq	-8(%rbp), %rax	# loop_info, tmp201
	movq	80(%rax), %rax	# loop_info_4->increment, D.14927
	movq	8(%rax), %rax	# _50->fld[0].rtwint, D.14928
	negq	%rax	# D.14928
	movq	%rax, %rdi	# D.14926,
	call	exact_log2_wide	#
	testl	%eax, %eax	# D.14925
	jns	.L194	#,
	.loc 1 1463 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.111
	testq	%rax, %rax	# loop_dump_stream.111
	je	.L195	#,
	.loc 1 1464 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.112
	movq	%rax, %rcx	# loop_dump_stream.112,
	movl	$54, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC25, %edi	#,
	call	fwrite	#
.L195:
	.loc 1 1466 0
	movl	$0, %eax	#, D.14925
	jmp	.L185	#
.L194:
	.loc 1 1472 0
	movq	-8(%rbp), %rax	# loop_info, tmp202
	movq	48(%rax), %rax	# loop_info_4->final_value, D.14927
	testq	%rax, %rax	# D.14927
	jne	.L196	#,
	.loc 1 1474 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.113
	testq	%rax, %rax	# loop_dump_stream.113
	je	.L197	#,
	.loc 1 1475 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.114
	movq	%rax, %rcx	# loop_dump_stream.114,
	movl	$37, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC26, %edi	#,
	call	fwrite	#
.L197:
	.loc 1 1477 0
	movl	$0, %eax	#, D.14925
	jmp	.L185	#
.L196:
	.loc 1 1485 0
	movq	-8(%rbp), %rax	# loop_info, tmp203
	movq	48(%rax), %rax	# loop_info_4->final_value, D.14927
	movzwl	(%rax), %eax	# _62->code, D.14929
	cmpw	$61, %ax	#, D.14929
	jne	.L198	#,
	.loc 1 1486 0
	movq	-8(%rbp), %rax	# loop_info, tmp204
	movq	48(%rax), %rax	# loop_info_4->final_value, D.14927
	movl	8(%rax), %edx	# _64->fld[0].rtuint, D.14930
	movl	max_reg_before_loop(%rip), %eax	# max_reg_before_loop, max_reg_before_loop.115
	cmpl	%eax, %edx	# max_reg_before_loop.115, D.14930
	jae	.L199	#,
.L198:
	.loc 1 1487 0
	movq	-8(%rbp), %rax	# loop_info, tmp205
	movq	48(%rax), %rax	# loop_info_4->final_value, D.14927
	movzwl	(%rax), %eax	# _67->code, D.14929
	cmpw	$75, %ax	#, D.14929
	jne	.L200	#,
	.loc 1 1488 0
	movq	-8(%rbp), %rax	# loop_info, tmp206
	movq	48(%rax), %rax	# loop_info_4->final_value, D.14927
	movq	8(%rax), %rax	# _69->fld[0].rtx, D.14927
	movl	8(%rax), %edx	# _70->fld[0].rtuint, D.14930
	movl	max_reg_before_loop(%rip), %eax	# max_reg_before_loop, max_reg_before_loop.116
	cmpl	%eax, %edx	# max_reg_before_loop.116, D.14930
	jae	.L199	#,
.L200:
	.loc 1 1489 0
	movq	-8(%rbp), %rax	# loop_info, tmp207
	movq	48(%rax), %rdx	# loop_info_4->final_value, D.14927
	movq	-24(%rbp), %rax	# loop, tmp208
	movq	%rdx, %rsi	# D.14927,
	movq	%rax, %rdi	# tmp208,
	call	loop_invariant_p	#
	testl	%eax, %eax	# D.14925
	jne	.L201	#,
.L199:
	.loc 1 1491 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.117
	testq	%rax, %rax	# loop_dump_stream.117
	je	.L202	#,
	.loc 1 1492 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.118
	movq	%rax, %rcx	# loop_dump_stream.118,
	movl	$44, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC27, %edi	#,
	call	fwrite	#
.L202:
	.loc 1 1494 0
	movl	$0, %eax	#, D.14925
	jmp	.L185	#
.L201:
	.loc 1 1499 0
	movq	-8(%rbp), %rax	# loop_info, tmp209
	movq	48(%rax), %rax	# loop_info_4->final_value, D.14927
	movzbl	2(%rax), %eax	# _75->mode, D.14931
	movzbl	%al, %eax	# D.14931, D.14925
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14932
	cmpl	$2, %eax	#, D.14932
	je	.L203	#,
	.loc 1 1500 0
	movq	-8(%rbp), %rax	# loop_info, tmp211
	movq	32(%rax), %rax	# loop_info_4->initial_value, D.14927
	movzbl	2(%rax), %eax	# _79->mode, D.14931
	movzbl	%al, %eax	# D.14931, D.14925
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.14932
	cmpl	$2, %eax	#, D.14932
	jne	.L204	#,
.L203:
	.loc 1 1502 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.119
	testq	%rax, %rax	# loop_dump_stream.119
	je	.L205	#,
	.loc 1 1503 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.120
	movq	%rax, %rcx	# loop_dump_stream.120,
	movl	$56, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC28, %edi	#,
	call	fwrite	#
.L205:
	.loc 1 1505 0
	movl	$0, %eax	#, D.14925
	jmp	.L185	#
.L204:
	.loc 1 1511 0
	movq	uid_luid(%rip), %rcx	# uid_luid, uid_luid.121
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.122
	movq	-8(%rbp), %rdx	# loop_info, tmp213
	movq	72(%rdx), %rdx	# loop_info_4->iteration_var, D.14927
	movl	8(%rdx), %edx	# _85->fld[0].rtuint, D.14930
	movl	%edx, %edx	# D.14930, tmp214
	addq	$4, %rdx	#, tmp215
	movq	(%rax,%rdx,8), %rax	# reg_n_info.122_84->data.reg, D.14933
	movl	(%rax), %eax	# _87->first_uid, D.14925
	cltq
	salq	$2, %rax	#, D.14926
	addq	%rcx, %rax	# uid_luid.121, D.14934
	movl	(%rax), %edx	# *_91, D.14925
	.loc 1 1512 0
	movq	-16(%rbp), %rax	# loop_start, tmp216
	movl	8(%rax), %ecx	# loop_start_3->fld[0].rtint, D.14925
	movl	max_uid_for_loop(%rip), %eax	# max_uid_for_loop, max_uid_for_loop.124
	cmpl	%eax, %ecx	# max_uid_for_loop.124, D.14925
	jge	.L206	#,
	.loc 1 1512 0 is_stmt 0 discriminator 1
	movq	uid_luid(%rip), %rcx	# uid_luid, uid_luid.125
	movq	-16(%rbp), %rax	# loop_start, tmp217
	movl	8(%rax), %eax	# loop_start_3->fld[0].rtint, D.14925
	cltq
	salq	$2, %rax	#, D.14926
	addq	%rcx, %rax	# uid_luid.125, D.14934
	movl	(%rax), %eax	# *_99, iftmp.123
	.loc 1 1511 0 is_stmt 1 discriminator 1
	cmpl	%eax, %edx	# iftmp.123, D.14925
	jle	.L208	#,
	jmp	.L214	#
.L206:
	.loc 1 1512 0 discriminator 2
	movl	$__FUNCTION__.11357, %edx	#,
	movl	$1512, %esi	#,
	movl	$.LC13, %edi	#,
	call	fancy_abort	#
.L214:
	.loc 1 1514 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.126
	testq	%rax, %rax	# loop_dump_stream.126
	je	.L209	#,
	.loc 1 1515 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.127
	movq	%rax, %rcx	# loop_dump_stream.127,
	movl	$59, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC29, %edi	#,
	call	fwrite	#
.L209:
	.loc 1 1517 0
	movl	$0, %eax	#, D.14925
	jmp	.L185	#
.L208:
	.loc 1 1527 0
	movq	-8(%rbp), %rax	# loop_info, tmp218
	movq	32(%rax), %rdx	# loop_info_4->initial_value, D.14927
	movq	-32(%rbp), %rax	# initial_value, tmp219
	movq	%rdx, (%rax)	# D.14927, *initial_value_9(D)
	.loc 1 1528 0
	movq	-8(%rbp), %rax	# loop_info, tmp220
	movq	80(%rax), %rdx	# loop_info_4->increment, D.14927
	movq	-48(%rbp), %rax	# increment, tmp221
	movq	%rdx, (%rax)	# D.14927, *increment_11(D)
	.loc 1 1529 0
	movq	-8(%rbp), %rax	# loop_info, tmp222
	movq	48(%rax), %rdx	# loop_info_4->final_value, D.14927
	movq	-40(%rbp), %rax	# final_value, tmp223
	movq	%rdx, (%rax)	# D.14927, *final_value_15(D)
	.loc 1 1534 0
	movq	-40(%rbp), %rax	# final_value, tmp224
	movq	(%rax), %rax	# *final_value_15(D), D.14927
	movzbl	2(%rax), %eax	# _107->mode, D.14931
	movzbl	%al, %edx	# D.14931, D.14935
	movq	-56(%rbp), %rax	# mode, tmp225
	movl	%edx, (%rax)	# D.14935, *mode_22(D)
	.loc 1 1535 0
	movq	-56(%rbp), %rax	# mode, tmp226
	movl	(%rax), %eax	# *mode_22(D), D.14935
	testl	%eax, %eax	# D.14935
	jne	.L210	#,
	.loc 1 1537 0
	movq	-32(%rbp), %rax	# initial_value, tmp227
	movq	(%rax), %rax	# *initial_value_9(D), D.14927
	movzbl	2(%rax), %eax	# _111->mode, D.14931
	movzbl	%al, %edx	# D.14931, D.14935
	movq	-56(%rbp), %rax	# mode, tmp228
	movl	%edx, (%rax)	# D.14935, *mode_22(D)
	.loc 1 1538 0
	movq	-56(%rbp), %rax	# mode, tmp229
	movl	(%rax), %eax	# *mode_22(D), D.14935
	testl	%eax, %eax	# D.14935
	jne	.L212	#,
	.loc 1 1539 0
	movl	word_mode(%rip), %edx	# word_mode, word_mode.128
	movq	-56(%rbp), %rax	# mode, tmp230
	movl	%edx, (%rax)	# word_mode.128, *mode_22(D)
	jmp	.L212	#
.L210:
	.loc 1 1541 0
	movq	-56(%rbp), %rax	# mode, tmp231
	movl	(%rax), %edx	# *mode_22(D), D.14935
	movq	-32(%rbp), %rax	# initial_value, tmp232
	movq	(%rax), %rax	# *initial_value_9(D), D.14927
	movzbl	2(%rax), %eax	# _117->mode, D.14931
	movzbl	%al, %eax	# D.14931, D.14930
	cmpl	%eax, %edx	# D.14930, D.14935
	je	.L212	#,
	.loc 1 1542 0
	movq	-56(%rbp), %rax	# mode, tmp233
	movl	(%rax), %eax	# *mode_22(D), D.14935
	cltq
	movzbl	mode_size(%rax), %edx	# mode_size, D.14931
	.loc 1 1543 0
	movq	-32(%rbp), %rax	# initial_value, tmp235
	movq	(%rax), %rax	# *initial_value_9(D), D.14927
	movzbl	2(%rax), %eax	# _123->mode, D.14931
	movzbl	%al, %eax	# D.14931, D.14925
	cltq
	movzbl	mode_size(%rax), %eax	# mode_size, D.14931
	.loc 1 1542 0
	cmpb	%al, %dl	# D.14931, D.14931
	jae	.L212	#,
	.loc 1 1544 0
	movq	-32(%rbp), %rax	# initial_value, tmp237
	movq	(%rax), %rax	# *initial_value_9(D), D.14927
	movzbl	2(%rax), %eax	# _127->mode, D.14931
	movzbl	%al, %edx	# D.14931, D.14935
	movq	-56(%rbp), %rax	# mode, tmp238
	movl	%edx, (%rax)	# D.14935, *mode_22(D)
.L212:
	.loc 1 1547 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.129
	testq	%rax, %rax	# loop_dump_stream.129
	je	.L213	#,
	.loc 1 1548 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.130
	movq	%rax, %rcx	# loop_dump_stream.130,
	movl	$29, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC30, %edi	#,
	call	fwrite	#
.L213:
	.loc 1 1549 0
	movl	$1, %eax	#, D.14925
.L185:
	.loc 1 1550 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	precondition_loop_p, .-precondition_loop_p
	.type	init_reg_map, @function
init_reg_map:
.LFB4:
	.loc 1 1563 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# map, map
	movl	%esi, -28(%rbp)	# maxregnum, maxregnum
	.loc 1 1566 0
	movl	-28(%rbp), %eax	# maxregnum, tmp89
	subl	$1, %eax	#, tmp88
	movl	%eax, -4(%rbp)	# tmp88, i
	jmp	.L216	#
.L217:
	.loc 1 1567 0 discriminator 2
	movq	-24(%rbp), %rax	# map, tmp90
	movq	32(%rax), %rax	# map_5(D)->reg_map, D.14948
	movl	-4(%rbp), %edx	# i, tmp91
	movslq	%edx, %rdx	# tmp91, D.14949
	salq	$3, %rdx	#, D.14949
	addq	%rax, %rdx	# D.14948, D.14948
	movq	cfun(%rip), %rax	# cfun, cfun.131
	movq	24(%rax), %rax	# cfun.131_10->emit, D.14950
	movq	80(%rax), %rax	# _11->x_regno_reg_rtx, D.14948
	movl	-4(%rbp), %ecx	# i, tmp92
	movslq	%ecx, %rcx	# tmp92, D.14949
	salq	$3, %rcx	#, D.14949
	addq	%rcx, %rax	# D.14949, D.14948
	movq	(%rax), %rax	# *_15, D.14951
	movq	%rax, (%rdx)	# D.14951, *_9
	.loc 1 1566 0 discriminator 2
	subl	$1, -4(%rbp)	#, i
.L216:
	.loc 1 1566 0 is_stmt 0 discriminator 1
	cmpl	$57, -4(%rbp)	#, i
	jg	.L217	#,
	.loc 1 1569 0 is_stmt 1
	movl	$57, -4(%rbp)	#, i
	jmp	.L218	#
.L219:
	.loc 1 1570 0 discriminator 2
	movq	-24(%rbp), %rax	# map, tmp93
	movq	32(%rax), %rax	# map_5(D)->reg_map, D.14948
	movl	-4(%rbp), %edx	# i, tmp94
	movslq	%edx, %rdx	# tmp94, D.14949
	salq	$3, %rdx	#, D.14949
	addq	%rdx, %rax	# D.14949, D.14948
	movq	$0, (%rax)	#, *_22
	.loc 1 1569 0 discriminator 2
	subl	$1, -4(%rbp)	#, i
.L218:
	.loc 1 1569 0 is_stmt 0 discriminator 1
	cmpl	$0, -4(%rbp)	#, i
	jns	.L219	#,
	.loc 1 1572 0 is_stmt 1
	movq	-24(%rbp), %rax	# map, tmp95
	movq	32(%rax), %rax	# map_5(D)->reg_map, D.14948
	leaq	432(%rax), %rdx	#, D.14948
	.loc 1 1573 0
	movq	cfun(%rip), %rax	# cfun, cfun.132
	movq	24(%rax), %rax	# cfun.132_26->emit, D.14950
	movq	80(%rax), %rax	# _27->x_regno_reg_rtx, D.14948
	movq	432(%rax), %rax	# MEM[(struct rtx_def * *)_28 + 432B], D.14951
	movq	%rax, (%rdx)	# D.14951, *_25
	.loc 1 1574 0
	movq	-24(%rbp), %rax	# map, tmp96
	movq	32(%rax), %rax	# map_5(D)->reg_map, D.14948
	leaq	424(%rax), %rdx	#, D.14948
	.loc 1 1575 0
	movq	cfun(%rip), %rax	# cfun, cfun.133
	movq	24(%rax), %rax	# cfun.133_32->emit, D.14950
	movq	80(%rax), %rax	# _33->x_regno_reg_rtx, D.14948
	movq	424(%rax), %rax	# MEM[(struct rtx_def * *)_34 + 424B], D.14951
	movq	%rax, (%rdx)	# D.14951, *_31
	.loc 1 1576 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	init_reg_map, .-init_reg_map
	.type	calculate_giv_inc, @function
calculate_giv_inc:
.LFB5:
	.loc 1 1590 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -56(%rbp)	# pattern, pattern
	movq	%rsi, -64(%rbp)	# src_insn, src_insn
	movl	%edx, -68(%rbp)	# regno, regno
	.loc 1 1592 0
	movq	$0, -24(%rbp)	#, increment_total
	.loc 1 1593 0
	movl	$0, -40(%rbp)	#, tries
.L221:
	.loc 1 1598 0
	movq	-56(%rbp), %rax	# pattern, tmp131
	movq	16(%rax), %rax	# pattern_1->fld[1].rtx, D.14952
	movzwl	(%rax), %eax	# _16->code, D.14953
	cmpw	$75, %ax	#, D.14953
	je	.L222	#,
	.loc 1 1602 0
	movq	-64(%rbp), %rax	# src_insn, src_insn.134
	movq	16(%rax), %rax	# src_insn.134_18->fld[1].rtx, src_insn.135
	movq	%rax, -64(%rbp)	# src_insn.135, src_insn
	.loc 1 1603 0
	movq	-64(%rbp), %rax	# src_insn, src_insn.137
	movzwl	(%rax), %eax	# src_insn.137_20->code, D.14953
	movzwl	%ax, %eax	# D.14953, D.14954
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.14955
	cmpb	$105, %al	#, D.14955
	jne	.L223	#,
	.loc 1 1603 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# src_insn, src_insn.139
	movq	32(%rax), %rax	# src_insn.139_24->fld[3].rtx, D.14952
	movzwl	(%rax), %eax	# _25->code, D.14953
	cmpw	$47, %ax	#, D.14953
	jne	.L224	#,
	.loc 1 1603 0 discriminator 3
	movq	-64(%rbp), %rax	# src_insn, src_insn.140
	movq	32(%rax), %rax	# src_insn.140_27->fld[3].rtx, iftmp.138
	jmp	.L226	#
.L224:
	.loc 1 1603 0 discriminator 4
	movq	-64(%rbp), %rax	# src_insn, src_insn.141
	movq	32(%rax), %rdx	# src_insn.141_29->fld[3].rtx, D.14952
	movq	-64(%rbp), %rax	# src_insn, src_insn.142
	movq	%rdx, %rsi	# D.14952,
	movq	%rax, %rdi	# src_insn.142,
	call	single_set_2	#
	jmp	.L226	#
.L223:
	.loc 1 1603 0 discriminator 2
	movl	$0, %eax	#, iftmp.136
.L226:
	.loc 1 1603 0 discriminator 5
	movq	%rax, -56(%rbp)	# iftmp.136, pattern
	.loc 1 1604 0 is_stmt 1 discriminator 5
	movq	-56(%rbp), %rax	# pattern, tmp133
	movq	16(%rax), %rax	# pattern_35->fld[1].rtx, D.14952
	movzwl	(%rax), %eax	# _36->code, D.14953
	cmpw	$75, %ax	#, D.14953
	je	.L227	#,
	.loc 1 1605 0
	movl	$__FUNCTION__.11378, %edx	#,
	movl	$1605, %esi	#,
	movl	$.LC13, %edi	#,
	call	fancy_abort	#
.L227:
	.loc 1 1609 0
	call	get_last_insn	#
	movq	%rax, %rdi	# D.14952,
	call	delete_related_insns	#
.L222:
	.loc 1 1613 0
	movq	-56(%rbp), %rax	# pattern, tmp134
	movq	16(%rax), %rax	# pattern_2->fld[1].rtx, D.14952
	movq	16(%rax), %rax	# _39->fld[1].rtx, tmp135
	movq	%rax, -32(%rbp)	# tmp135, increment
	.loc 1 1614 0
	movq	-32(%rbp), %rax	# increment, tmp136
	movzwl	(%rax), %eax	# increment_40->code, D.14953
	cmpw	$54, %ax	#, D.14953
	je	.L228	#,
	.loc 1 1618 0
	leaq	-64(%rbp), %rsi	#, tmp137
	movq	-32(%rbp), %rax	# increment, tmp138
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp138,
	call	find_last_value	#
	movq	%rax, -32(%rbp)	# tmp139, increment
	.loc 1 1623 0
	movq	-32(%rbp), %rax	# increment, tmp140
	movzwl	(%rax), %eax	# increment_42->code, D.14953
	cmpw	$135, %ax	#, D.14953
	jne	.L229	#,
	.loc 1 1624 0
	movq	-32(%rbp), %rax	# increment, tmp141
	movq	16(%rax), %rax	# increment_42->fld[1].rtx, tmp142
	movq	%rax, -32(%rbp)	# tmp142, increment
	jmp	.L230	#
.L229:
	.loc 1 1628 0
	movq	-32(%rbp), %rax	# increment, tmp143
	movzwl	(%rax), %eax	# increment_42->code, D.14953
	cmpw	$66, %ax	#, D.14953
	jne	.L231	#,
.LBB12:
	.loc 1 1630 0
	movq	-64(%rbp), %rax	# src_insn, src_insn.143
	movl	$0, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# src_insn.143,
	call	find_reg_note	#
	movq	%rax, -16(%rbp)	# tmp144, note
	.loc 1 1631 0
	cmpq	$0, -16(%rbp)	#, note
	je	.L232	#,
	.loc 1 1632 0
	movq	-16(%rbp), %rax	# note, tmp145
	movq	8(%rax), %rax	# note_47->fld[0].rtx, tmp146
	movq	%rax, -32(%rbp)	# tmp146, increment
.LBE12:
	jmp	.L230	#
.L232:
	jmp	.L230	#
.L231:
	.loc 1 1635 0
	movq	-32(%rbp), %rax	# increment, tmp147
	movzwl	(%rax), %eax	# increment_42->code, D.14953
	cmpw	$84, %ax	#, D.14953
	je	.L233	#,
	.loc 1 1636 0
	movq	-32(%rbp), %rax	# increment, tmp148
	movzwl	(%rax), %eax	# increment_42->code, D.14953
	cmpw	$87, %ax	#, D.14953
	je	.L233	#,
	.loc 1 1637 0
	movq	-32(%rbp), %rax	# increment, tmp149
	movzwl	(%rax), %eax	# increment_42->code, D.14953
	cmpw	$75, %ax	#, D.14953
	jne	.L230	#,
.L233:
.LBB13:
	.loc 1 1641 0
	movq	-32(%rbp), %rax	# increment, tmp150
	movq	16(%rax), %rax	# increment_42->fld[1].rtx, tmp151
	movq	%rax, -8(%rbp)	# tmp151, second_part
	.loc 1 1642 0
	movq	-32(%rbp), %rax	# increment, tmp152
	movzwl	(%rax), %eax	# increment_42->code, D.14953
	movzwl	%ax, %eax	# D.14953, tmp153
	movl	%eax, -36(%rbp)	# tmp153, code
	.loc 1 1644 0
	movq	-32(%rbp), %rax	# increment, tmp154
	movq	8(%rax), %rax	# increment_42->fld[0].rtx, D.14952
	leaq	-64(%rbp), %rsi	#, tmp155
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# D.14952,
	call	find_last_value	#
	movq	%rax, -32(%rbp)	# tmp156, increment
	.loc 1 1647 0
	call	get_last_insn	#
	movq	%rax, %rdi	# D.14952,
	call	delete_related_insns	#
	.loc 1 1649 0
	movq	-8(%rbp), %rax	# second_part, tmp157
	movzwl	(%rax), %eax	# second_part_52->code, D.14953
	cmpw	$54, %ax	#, D.14953
	jne	.L234	#,
	.loc 1 1650 0
	movq	-32(%rbp), %rax	# increment, tmp158
	movzwl	(%rax), %eax	# increment_56->code, D.14953
	cmpw	$54, %ax	#, D.14953
	je	.L235	#,
.L234:
	.loc 1 1651 0
	movl	$__FUNCTION__.11378, %edx	#,
	movl	$1651, %esi	#,
	movl	$.LC13, %edi	#,
	call	fancy_abort	#
.L235:
	.loc 1 1653 0
	cmpl	$84, -36(%rbp)	#, code
	jne	.L236	#,
	.loc 1 1654 0
	movq	-32(%rbp), %rax	# increment, tmp159
	movq	8(%rax), %rdx	# increment_56->fld[0].rtwint, D.14956
	movq	-8(%rbp), %rax	# second_part, tmp160
	movq	8(%rax), %rax	# second_part_52->fld[0].rtwint, D.14956
	orq	%rdx, %rax	# D.14956, D.14956
	movq	%rax, %rsi	# D.14956,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, -32(%rbp)	# tmp161, increment
	jmp	.L230	#
.L236:
	.loc 1 1655 0
	cmpl	$75, -36(%rbp)	#, code
	jne	.L237	#,
	.loc 1 1656 0
	movq	-32(%rbp), %rax	# increment, tmp162
	movq	8(%rax), %rdx	# increment_56->fld[0].rtwint, D.14956
	movq	-8(%rbp), %rax	# second_part, tmp163
	movq	8(%rax), %rax	# second_part_52->fld[0].rtwint, D.14956
	addq	%rdx, %rax	# D.14956, D.14956
	movq	%rax, %rsi	# D.14956,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, -32(%rbp)	# tmp164, increment
	jmp	.L230	#
.L237:
	.loc 1 1658 0
	movq	-32(%rbp), %rax	# increment, tmp165
	movq	8(%rax), %rdx	# increment_56->fld[0].rtwint, D.14956
	movq	-8(%rbp), %rax	# second_part, tmp166
	movq	8(%rax), %rax	# second_part_52->fld[0].rtwint, D.14956
	movl	%eax, %ecx	# D.14954, tmp178
	salq	%cl, %rdx	# tmp178, D.14956
	movq	%rdx, %rax	# D.14956, D.14956
	movq	%rax, %rsi	# D.14956,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, -32(%rbp)	# tmp167, increment
.L230:
.LBE13:
	.loc 1 1661 0
	movq	-32(%rbp), %rax	# increment, tmp168
	movzwl	(%rax), %eax	# increment_4->code, D.14953
	cmpw	$54, %ax	#, D.14953
	je	.L238	#,
	.loc 1 1662 0
	movl	$__FUNCTION__.11378, %edx	#,
	movl	$1662, %esi	#,
	movl	$.LC13, %edi	#,
	call	fancy_abort	#
.L238:
	.loc 1 1666 0
	call	get_last_insn	#
	movq	%rax, %rdi	# D.14952,
	call	delete_related_insns	#
.L228:
	.loc 1 1669 0
	cmpq	$0, -24(%rbp)	#, increment_total
	je	.L239	#,
	.loc 1 1670 0
	movq	-24(%rbp), %rax	# increment_total, tmp169
	movq	8(%rax), %rdx	# increment_total_6->fld[0].rtwint, D.14956
	movq	-32(%rbp), %rax	# increment, tmp170
	movq	8(%rax), %rax	# increment_5->fld[0].rtwint, D.14956
	addq	%rdx, %rax	# D.14956, D.14956
	movq	%rax, %rsi	# D.14956,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, -24(%rbp)	# tmp171, increment_total
	jmp	.L240	#
.L239:
	.loc 1 1672 0
	movq	-32(%rbp), %rax	# increment, tmp172
	movq	%rax, -24(%rbp)	# tmp172, increment_total
.L240:
	.loc 1 1676 0
	movq	-56(%rbp), %rax	# pattern, tmp173
	movq	16(%rax), %rax	# pattern_2->fld[1].rtx, D.14952
	movq	8(%rax), %rax	# _80->fld[0].rtx, D.14952
	movzwl	(%rax), %eax	# _81->code, D.14953
	cmpw	$61, %ax	#, D.14953
	jne	.L241	#,
	.loc 1 1677 0
	movq	-56(%rbp), %rax	# pattern, tmp174
	movq	16(%rax), %rax	# pattern_2->fld[1].rtx, D.14952
	movq	8(%rax), %rax	# _83->fld[0].rtx, D.14952
	movl	8(%rax), %eax	# _84->fld[0].rtuint, D.14957
	cmpl	-68(%rbp), %eax	# regno, D.14957
	je	.L242	#,
.L241:
	.loc 1 1683 0
	cmpl	$0, -40(%rbp)	#, tries
	jne	.L243	#,
	.loc 1 1685 0
	addl	$1, -40(%rbp)	#, tries
	.loc 1 1687 0
	movq	-64(%rbp), %rax	# src_insn, src_insn.144
	movq	16(%rax), %rax	# src_insn.144_89->fld[1].rtx, src_insn.145
	movq	%rax, -64(%rbp)	# src_insn.145, src_insn
	.loc 1 1688 0
	movq	-64(%rbp), %rax	# src_insn, src_insn.147
	movzwl	(%rax), %eax	# src_insn.147_91->code, D.14953
	movzwl	%ax, %eax	# D.14953, D.14954
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.14955
	cmpb	$105, %al	#, D.14955
	jne	.L244	#,
	.loc 1 1688 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# src_insn, src_insn.149
	movq	32(%rax), %rax	# src_insn.149_95->fld[3].rtx, D.14952
	movzwl	(%rax), %eax	# _96->code, D.14953
	cmpw	$47, %ax	#, D.14953
	jne	.L245	#,
	.loc 1 1688 0 discriminator 3
	movq	-64(%rbp), %rax	# src_insn, src_insn.150
	movq	32(%rax), %rax	# src_insn.150_98->fld[3].rtx, iftmp.148
	jmp	.L247	#
.L245:
	.loc 1 1688 0 discriminator 4
	movq	-64(%rbp), %rax	# src_insn, src_insn.151
	movq	32(%rax), %rdx	# src_insn.151_100->fld[3].rtx, D.14952
	movq	-64(%rbp), %rax	# src_insn, src_insn.152
	movq	%rdx, %rsi	# D.14952,
	movq	%rax, %rdi	# src_insn.152,
	call	single_set_2	#
	jmp	.L247	#
.L244:
	.loc 1 1688 0 discriminator 2
	movl	$0, %eax	#, iftmp.146
.L247:
	.loc 1 1688 0 discriminator 5
	movq	%rax, -56(%rbp)	# iftmp.146, pattern
	.loc 1 1690 0 is_stmt 1 discriminator 5
	call	get_last_insn	#
	movq	%rax, %rdi	# D.14952,
	call	delete_related_insns	#
	.loc 1 1692 0 discriminator 5
	jmp	.L221	#
.L243:
	.loc 1 1695 0
	movl	$__FUNCTION__.11378, %edx	#,
	movl	$1695, %esi	#,
	movl	$.LC13, %edi	#,
	call	fancy_abort	#
.L242:
	.loc 1 1698 0
	movq	-24(%rbp), %rax	# increment_total, D.14958
	.loc 1 1699 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	calculate_giv_inc, .-calculate_giv_inc
	.type	initial_reg_note_copy, @function
initial_reg_note_copy:
.LFB6:
	.loc 1 1709 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# notes, notes
	movq	%rsi, -32(%rbp)	# map, map
	.loc 1 1712 0
	cmpq	$0, -24(%rbp)	#, notes
	jne	.L250	#,
	.loc 1 1713 0
	movl	$0, %eax	#, D.14959
	jmp	.L251	#
.L250:
	.loc 1 1715 0
	movq	-24(%rbp), %rax	# notes, tmp72
	movzwl	(%rax), %eax	# notes_2(D)->code, D.14960
	movzwl	%ax, %eax	# D.14960, D.14961
	movl	%eax, %edi	# D.14961,
	call	rtx_alloc	#
	movq	%rax, -8(%rbp)	# tmp73, copy
	.loc 1 1716 0
	movq	-24(%rbp), %rax	# notes, tmp74
	movzbl	2(%rax), %edx	# notes_2(D)->mode, D.14962
	movq	-8(%rbp), %rax	# copy, tmp75
	movb	%dl, 2(%rax)	# D.14962, copy_6->mode
	.loc 1 1718 0
	movq	-24(%rbp), %rax	# notes, tmp76
	movzwl	(%rax), %eax	# notes_2(D)->code, D.14960
	cmpw	$3, %ax	#, D.14960
	jne	.L252	#,
	.loc 1 1719 0
	movq	-24(%rbp), %rax	# notes, tmp77
	movq	8(%rax), %rax	# notes_2(D)->fld[0].rtx, D.14963
	movq	-32(%rbp), %rcx	# map, tmp78
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp78,
	movq	%rax, %rdi	# D.14963,
	call	copy_rtx_and_substitute	#
	movq	-8(%rbp), %rdx	# copy, tmp79
	movq	%rax, 8(%rdx)	# D.14963, copy_6->fld[0].rtx
	jmp	.L253	#
.L252:
	.loc 1 1720 0
	movq	-24(%rbp), %rax	# notes, tmp80
	movzwl	(%rax), %eax	# notes_2(D)->code, D.14960
	cmpw	$4, %ax	#, D.14960
	jne	.L254	#,
	.loc 1 1722 0
	movq	-24(%rbp), %rax	# notes, tmp81
	movq	8(%rax), %rax	# notes_2(D)->fld[0].rtx, D.14963
	movq	%rax, %rdi	# D.14963,
	call	copy_rtx	#
	movq	-8(%rbp), %rdx	# copy, tmp82
	movq	%rax, 8(%rdx)	# D.14963, copy_6->fld[0].rtx
	jmp	.L253	#
.L254:
	.loc 1 1724 0
	movl	$__FUNCTION__.11387, %edx	#,
	movl	$1724, %esi	#,
	movl	$.LC13, %edi	#,
	call	fancy_abort	#
.L253:
	.loc 1 1726 0
	movq	-24(%rbp), %rax	# notes, tmp83
	movq	16(%rax), %rax	# notes_2(D)->fld[1].rtx, D.14963
	movq	-32(%rbp), %rdx	# map, tmp84
	movq	%rdx, %rsi	# tmp84,
	movq	%rax, %rdi	# D.14963,
	call	initial_reg_note_copy	#
	movq	-8(%rbp), %rdx	# copy, tmp85
	movq	%rax, 16(%rdx)	# D.14963, copy_6->fld[1].rtx
	.loc 1 1728 0
	movq	-8(%rbp), %rax	# copy, D.14959
.L251:
	.loc 1 1729 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	initial_reg_note_copy, .-initial_reg_note_copy
	.type	final_reg_note_copy, @function
final_reg_note_copy:
.LFB7:
	.loc 1 1737 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# notesp, notesp
	movq	%rsi, -32(%rbp)	# map, map
	.loc 1 1738 0
	jmp	.L256	#
.L260:
.LBB14:
	.loc 1 1740 0
	movq	-24(%rbp), %rax	# notesp, tmp70
	movq	(%rax), %rax	# *notesp_1, tmp71
	movq	%rax, -16(%rbp)	# tmp71, note
	.loc 1 1742 0
	movq	-16(%rbp), %rax	# note, tmp72
	movzwl	(%rax), %eax	# note_4->code, D.14965
	cmpw	$4, %ax	#, D.14965
	jne	.L257	#,
	.loc 1 1747 0
	movq	-16(%rbp), %rax	# note, tmp73
	movzbl	2(%rax), %eax	# note_4->mode, D.14966
	cmpb	$5, %al	#, D.14966
	jne	.L258	#,
	.loc 1 1749 0
	movq	-16(%rbp), %rax	# note, tmp74
	movq	16(%rax), %rdx	# note_4->fld[1].rtx, D.14964
	movq	-24(%rbp), %rax	# notesp, tmp75
	movq	%rdx, (%rax)	# D.14964, *notesp_1
	.loc 1 1750 0
	jmp	.L256	#
.L258:
.LBB15:
	.loc 1 1754 0
	movq	-32(%rbp), %rax	# map, tmp76
	movq	48(%rax), %rdx	# map_8(D)->insn_map, D.14967
	movq	-16(%rbp), %rax	# note, tmp77
	movq	8(%rax), %rax	# note_4->fld[0].rtx, D.14964
	movl	8(%rax), %eax	# _10->fld[0].rtint, D.14968
	cltq
	salq	$3, %rax	#, D.14969
	addq	%rdx, %rax	# D.14967, D.14967
	movq	(%rax), %rax	# *_14, tmp78
	movq	%rax, -8(%rbp)	# tmp78, insn
	.loc 1 1759 0
	cmpq	$0, -8(%rbp)	#, insn
	jne	.L259	#,
	.loc 1 1761 0
	movq	-16(%rbp), %rax	# note, tmp79
	movzbl	2(%rax), %eax	# note_4->mode, D.14966
	cmpb	$13, %al	#, D.14966
	je	.L257	#,
	.loc 1 1762 0
	movl	$__FUNCTION__.11395, %edx	#,
	movl	$1762, %esi	#,
	movl	$.LC13, %edi	#,
	call	fancy_abort	#
.L259:
	.loc 1 1765 0
	movq	-16(%rbp), %rax	# note, tmp80
	movq	-8(%rbp), %rdx	# insn, tmp81
	movq	%rdx, 8(%rax)	# tmp81, note_4->fld[0].rtx
.L257:
.LBE15:
	.loc 1 1769 0
	movq	-16(%rbp), %rax	# note, tmp85
	addq	$16, %rax	#, tmp84
	movq	%rax, -24(%rbp)	# tmp84, notesp
.L256:
.LBE14:
	.loc 1 1738 0 discriminator 1
	movq	-24(%rbp), %rax	# notesp, tmp86
	movq	(%rax), %rax	# *notesp_1, D.14964
	testq	%rax, %rax	# D.14964
	jne	.L260	#,
	.loc 1 1771 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	final_reg_note_copy, .-final_reg_note_copy
	.type	copy_loop_body, @function
copy_loop_body:
.LFB8:
	.loc 1 1787 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$248, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -216(%rbp)	# loop, loop
	movq	%rsi, -224(%rbp)	# copy_start, copy_start
	movq	%rdx, -232(%rbp)	# copy_end, copy_end
	movq	%rcx, -240(%rbp)	# map, map
	movq	%r8, -248(%rbp)	# exit_label, exit_label
	movl	%r9d, -252(%rbp)	# last_iteration, last_iteration
	.loc 1 1788 0
	movq	-216(%rbp), %rax	# loop, tmp350
	movq	160(%rax), %rax	# loop_34(D)->aux, D.14970
	addq	$208, %rax	#, tmp351
	movq	%rax, -96(%rbp)	# tmp351, ivs
	.loc 1 1790 0
	movq	$0, -160(%rbp)	#, copy
	.loc 1 1795 0
	movq	$0, -152(%rbp)	#, final_label
	.loc 1 1804 0
	cmpl	$0, -252(%rbp)	#, last_iteration
	jne	.L262	#,
	.loc 1 1806 0
	call	gen_label_rtx	#
	movq	%rax, -152(%rbp)	# tmp352, final_label
	.loc 1 1807 0
	movq	-240(%rbp), %rax	# map, tmp353
	movq	40(%rax), %rdx	# map_41(D)->label_map, D.14971
	movq	24(%rbp), %rax	# start_label, tmp354
	movl	48(%rax), %eax	# start_label_43(D)->fld[5].rtint, D.14972
	cltq
	salq	$3, %rax	#, D.14973
	addq	%rax, %rdx	# D.14973, D.14971
	movq	-152(%rbp), %rax	# final_label, tmp355
	movq	%rax, (%rdx)	# tmp355, *_47
	jmp	.L263	#
.L262:
	.loc 1 1810 0
	movq	-240(%rbp), %rax	# map, tmp356
	movq	40(%rax), %rdx	# map_41(D)->label_map, D.14971
	movq	24(%rbp), %rax	# start_label, tmp357
	movl	48(%rax), %eax	# start_label_43(D)->fld[5].rtint, D.14972
	cltq
	salq	$3, %rax	#, D.14973
	addq	%rax, %rdx	# D.14973, D.14971
	movq	24(%rbp), %rax	# start_label, tmp358
	movq	%rax, (%rdx)	# tmp358, *_52
.L263:
	.loc 1 1812 0
	call	start_sequence	#
	.loc 1 1818 0
	movl	$-99, %esi	#,
	movl	$0, %edi	#,
	call	emit_note	#
	.loc 1 1820 0
	movq	-224(%rbp), %rax	# copy_start, tmp359
	movq	%rax, -168(%rbp)	# tmp359, insn
.L328:
	.loc 1 1823 0
	movq	-168(%rbp), %rax	# insn, tmp360
	movq	24(%rax), %rax	# insn_1->fld[2].rtx, tmp361
	movq	%rax, -168(%rbp)	# tmp361, insn
	.loc 1 1825 0
	movq	-240(%rbp), %rax	# map, tmp362
	movq	$0, 88(%rax)	#, map_41(D)->orig_asm_operands_vector
	.loc 1 1827 0
	movq	-168(%rbp), %rax	# insn, tmp363
	movzwl	(%rax), %eax	# insn_55->code, D.14974
	movzwl	%ax, %eax	# D.14974, D.14975
	subl	$32, %eax	#, tmp364
	cmpl	$5, %eax	#, tmp364
	ja	.L264	#,
	movl	%eax, %eax	# tmp364, tmp365
	movq	.L266(,%rax,8), %rax	#, tmp366
	jmp	*%rax	# tmp366
	.section	.rodata
	.align 8
	.align 4
.L266:
	.quad	.L265
	.quad	.L267
	.quad	.L268
	.quad	.L269
	.quad	.L270
	.quad	.L271
	.text
.L265:
	.loc 1 1830 0
	movq	-168(%rbp), %rax	# insn, tmp367
	movq	32(%rax), %rax	# insn_55->fld[3].rtx, tmp368
	movq	%rax, -88(%rbp)	# tmp368, pattern
	.loc 1 1831 0
	movq	$0, -160(%rbp)	#, copy
	.loc 1 1832 0
	movq	$0, -144(%rbp)	#, giv_inc
	.loc 1 1842 0
	movq	-168(%rbp), %rax	# insn, tmp369
	movzwl	(%rax), %eax	# insn_55->code, D.14974
	movzwl	%ax, %eax	# D.14974, D.14972
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.14976
	cmpb	$105, %al	#, D.14976
	jne	.L272	#,
	.loc 1 1842 0 is_stmt 0 discriminator 1
	movq	-168(%rbp), %rax	# insn, tmp371
	movq	32(%rax), %rax	# insn_55->fld[3].rtx, D.14977
	movzwl	(%rax), %eax	# _64->code, D.14974
	cmpw	$47, %ax	#, D.14974
	jne	.L273	#,
	.loc 1 1842 0 discriminator 3
	movq	-168(%rbp), %rax	# insn, tmp372
	movq	32(%rax), %rax	# insn_55->fld[3].rtx, iftmp.154
	jmp	.L275	#
.L273:
	.loc 1 1842 0 discriminator 4
	movq	-168(%rbp), %rax	# insn, tmp373
	movq	32(%rax), %rdx	# insn_55->fld[3].rtx, D.14977
	movq	-168(%rbp), %rax	# insn, tmp374
	movq	%rdx, %rsi	# D.14977,
	movq	%rax, %rdi	# tmp374,
	call	single_set_2	#
	jmp	.L275	#
.L272:
	.loc 1 1842 0 discriminator 2
	movl	$0, %eax	#, iftmp.153
.L275:
	.loc 1 1842 0 discriminator 5
	movq	%rax, -80(%rbp)	# iftmp.153, set
	cmpq	$0, -80(%rbp)	#, set
	je	.L276	#,
	.loc 1 1843 0 is_stmt 1
	movq	-80(%rbp), %rax	# set, tmp375
	movq	8(%rax), %rax	# set_71->fld[0].rtx, D.14977
	movzwl	(%rax), %eax	# _72->code, D.14974
	cmpw	$61, %ax	#, D.14974
	jne	.L276	#,
	.loc 1 1844 0
	movq	addr_combined_regs(%rip), %rdx	# addr_combined_regs, addr_combined_regs.155
	movq	-80(%rbp), %rax	# set, tmp376
	movq	8(%rax), %rax	# set_71->fld[0].rtx, D.14977
	movl	8(%rax), %eax	# _75->fld[0].rtuint, D.14975
	movl	%eax, %eax	# D.14975, D.14973
	salq	$3, %rax	#, D.14973
	addq	%rdx, %rax	# addr_combined_regs.155, D.14978
	movq	(%rax), %rax	# *_79, D.14979
	testq	%rax, %rax	# D.14979
	je	.L276	#,
.LBB16:
	.loc 1 1848 0
	movq	-80(%rbp), %rax	# set, tmp377
	movq	8(%rax), %rax	# set_71->fld[0].rtx, D.14977
	movl	8(%rax), %eax	# _81->fld[0].rtuint, tmp378
	movl	%eax, -192(%rbp)	# tmp378, regno
	.loc 1 1850 0
	movq	addr_combined_regs(%rip), %rdx	# addr_combined_regs, addr_combined_regs.156
	movq	-80(%rbp), %rax	# set, tmp379
	movq	8(%rax), %rax	# set_71->fld[0].rtx, D.14977
	movl	8(%rax), %eax	# _84->fld[0].rtuint, D.14975
	movl	%eax, %eax	# D.14975, D.14973
	salq	$3, %rax	#, D.14973
	addq	%rdx, %rax	# addr_combined_regs.156, D.14978
	movq	(%rax), %rax	# *_88, tmp380
	movq	%rax, -72(%rbp)	# tmp380, v
	.loc 1 1851 0
	movq	-96(%rbp), %rax	# ivs, tmp381
	movq	(%rax), %rdx	# ivs_36->regs, D.14980
	movq	-72(%rbp), %rax	# v, tmp382
	movq	16(%rax), %rax	# v_89->src_reg, D.14977
	movl	8(%rax), %eax	# _91->fld[0].rtuint, D.14975
	movl	%eax, %eax	# D.14975, D.14973
	salq	$4, %rax	#, D.14973
	addq	%rdx, %rax	# D.14980, D.14980
	movq	8(%rax), %rax	# _95->iv.class, tmp383
	movq	%rax, -64(%rbp)	# tmp383, bl
	.loc 1 1859 0
	movl	-192(%rbp), %edx	# regno, tmp384
	movq	-168(%rbp), %rcx	# insn, tmp385
	movq	-80(%rbp), %rax	# set, tmp386
	movq	%rcx, %rsi	# tmp385,
	movq	%rax, %rdi	# tmp386,
	call	calculate_giv_inc	#
	movq	%rax, -144(%rbp)	# tmp387, giv_inc
	.loc 1 1863 0
	movq	-64(%rbp), %rax	# bl, tmp388
	movq	24(%rax), %rax	# bl_96->giv, tmp389
	movq	%rax, -120(%rbp)	# tmp389, tv
	jmp	.L277	#
.L284:
	.loc 1 1864 0
	movq	-120(%rbp), %rax	# tv, tmp390
	movl	24(%rax), %eax	# tv_22->giv_type, D.14981
	testl	%eax, %eax	# D.14981
	jne	.L278	#,
	.loc 1 1864 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# tv, tmp391
	movq	136(%rax), %rax	# tv_22->same, D.14979
	cmpq	-72(%rbp), %rax	# v, D.14979
	jne	.L278	#,
.LBB17:
	.loc 1 1869 0 is_stmt 1
	movq	-120(%rbp), %rax	# tv, tmp392
	movq	40(%rax), %rax	# tv_22->location, D.14971
	movq	(%rax), %rdx	# *_101, D.14977
	movq	-120(%rbp), %rax	# tv, tmp393
	movq	32(%rax), %rax	# tv_22->dest_reg, D.14977
	cmpq	%rax, %rdx	# D.14977, D.14977
	je	.L279	#,
	.loc 1 1870 0
	jmp	.L278	#
.L279:
	.loc 1 1874 0
	movq	-144(%rbp), %rax	# giv_inc, tmp394
	movq	8(%rax), %rax	# giv_inc_97->fld[0].rtwint, D.14982
	movl	%eax, -200(%rbp)	# D.14982, this_giv_inc
	.loc 1 1875 0
	movq	-120(%rbp), %rax	# tv, tmp395
	movq	64(%rax), %rdx	# tv_22->mult_val, D.14977
	movq	-72(%rbp), %rax	# v, tmp396
	movq	64(%rax), %rax	# v_89->mult_val, D.14977
	cmpq	%rax, %rdx	# D.14977, D.14977
	je	.L280	#,
	.loc 1 1876 0
	movl	-200(%rbp), %eax	# this_giv_inc, tmp397
	cltq
	movq	-72(%rbp), %rdx	# v, tmp398
	movq	64(%rdx), %rdx	# v_89->mult_val, D.14977
	movq	8(%rdx), %rbx	# _109->fld[0].rtwint, D.14982
	cqto
	idivq	%rbx	# D.14982
	movl	%eax, %edx	# D.14982, D.14983
	.loc 1 1877 0
	movq	-120(%rbp), %rax	# tv, tmp401
	movq	64(%rax), %rax	# tv_22->mult_val, D.14977
	movq	8(%rax), %rax	# _113->fld[0].rtwint, D.14982
	.loc 1 1876 0
	imull	%edx, %eax	# D.14983, D.14983
	movl	%eax, -200(%rbp)	# D.14983, this_giv_inc
.L280:
	.loc 1 1879 0
	movl	-200(%rbp), %eax	# this_giv_inc, tmp402
	movslq	%eax, %rdx	# tmp402, D.14982
	movq	-120(%rbp), %rax	# tv, tmp403
	movq	32(%rax), %rax	# tv_22->dest_reg, D.14977
	movq	%rdx, %rsi	# D.14982,
	movq	%rax, %rdi	# D.14977,
	call	plus_constant_wide	#
	movq	-120(%rbp), %rdx	# tv, tmp404
	movq	%rax, 32(%rdx)	# D.14977, tv_22->dest_reg
	.loc 1 1880 0
	movq	-120(%rbp), %rax	# tv, tmp405
	movq	40(%rax), %rax	# tv_22->location, D.14971
	movq	-120(%rbp), %rdx	# tv, tmp406
	movq	32(%rdx), %rdx	# tv_22->dest_reg, D.14977
	movq	%rdx, (%rax)	# D.14977, *_121
	.loc 1 1882 0
	cmpl	$0, -252(%rbp)	#, last_iteration
	je	.L278	#,
	.loc 1 1882 0 is_stmt 0 discriminator 1
	cmpl	$0, 16(%rbp)	#, unroll_type
	je	.L278	#,
.LBB18:
	.loc 1 1891 0 is_stmt 1
	movq	-120(%rbp), %rax	# tv, tmp407
	movq	32(%rax), %rax	# tv_22->dest_reg, D.14977
	movzwl	(%rax), %eax	# _124->code, D.14974
	cmpw	$61, %ax	#, D.14974
	jne	.L281	#,
	.loc 1 1892 0
	movq	-120(%rbp), %rax	# tv, tmp408
	movq	32(%rax), %rax	# tv_22->dest_reg, tmp409
	movq	%rax, -112(%rbp)	# tmp409, dest_reg
	jmp	.L282	#
.L281:
	.loc 1 1894 0
	movq	-120(%rbp), %rax	# tv, tmp410
	movq	32(%rax), %rax	# tv_22->dest_reg, D.14977
	movq	8(%rax), %rax	# _127->fld[0].rtx, tmp411
	movq	%rax, -112(%rbp)	# tmp411, dest_reg
.L282:
	.loc 1 1899 0
	movq	-120(%rbp), %rax	# tv, tmp412
	movq	152(%rax), %rax	# tv_22->same_insn, D.14979
	testq	%rax, %rax	# D.14979
	jne	.L283	#,
	.loc 1 1899 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# tv, tmp413
	movzbl	101(%rax), %eax	# *tv_22, D.14984
	andl	$4, %eax	#, D.14984
	testb	%al, %al	# D.14984
	jne	.L283	#,
	.loc 1 1905 0 is_stmt 1
	movq	-120(%rbp), %rax	# tv, tmp414
	movq	144(%rax), %rdx	# tv_22->const_adjust, D.14982
	movq	-120(%rbp), %rax	# tv, tmp415
	movq	32(%rax), %rax	# tv_22->dest_reg, D.14977
	movq	%rdx, %rsi	# D.14982,
	movq	%rax, %rdi	# D.14977,
	call	plus_constant_wide	#
	movq	%rax, -56(%rbp)	# tmp416, value
	.loc 1 1908 0
	movq	-56(%rbp), %rax	# value, tmp417
	movzwl	(%rax), %eax	# value_134->code, D.14974
	cmpw	$75, %ax	#, D.14974
	jne	.L283	#,
	.loc 1 1913 0
	movq	-56(%rbp), %rax	# value, tmp418
	movq	16(%rax), %rdx	# value_134->fld[1].rtx, D.14977
	movq	-56(%rbp), %rax	# value, tmp419
	movq	8(%rax), %rcx	# value_134->fld[0].rtx, D.14977
	movq	-112(%rbp), %rax	# dest_reg, tmp420
	movq	%rcx, %rsi	# D.14977,
	movq	%rax, %rdi	# tmp420,
	call	emit_unrolled_add	#
.L283:
	.loc 1 1922 0
	movq	-120(%rbp), %rax	# tv, tmp421
	movq	144(%rax), %rax	# tv_22->const_adjust, D.14982
	negq	%rax	# D.14982
	movq	%rax, %rdx	# D.14982, D.14982
	movq	-112(%rbp), %rax	# dest_reg, tmp422
	movq	%rdx, %rsi	# D.14982,
	movq	%rax, %rdi	# tmp422,
	call	plus_constant_wide	#
	movq	-120(%rbp), %rdx	# tv, tmp423
	movq	%rax, 32(%rdx)	# D.14977, tv_22->dest_reg
	.loc 1 1924 0
	movq	-120(%rbp), %rax	# tv, tmp424
	movq	40(%rax), %rax	# tv_22->location, D.14971
	movq	-120(%rbp), %rdx	# tv, tmp425
	movq	32(%rdx), %rdx	# tv_22->dest_reg, D.14977
	movq	%rdx, (%rax)	# D.14977, *_141
.L278:
.LBE18:
.LBE17:
	.loc 1 1863 0
	movq	-120(%rbp), %rax	# tv, tmp426
	movq	128(%rax), %rax	# tv_22->next_iv, tmp427
	movq	%rax, -120(%rbp)	# tmp427, tv
.L277:
	.loc 1 1863 0 is_stmt 0 discriminator 1
	cmpq	$0, -120(%rbp)	#, tv
	jne	.L284	#,
.L276:
.LBE16:
	.loc 1 1934 0 is_stmt 1
	movl	$0, -208(%rbp)	#, dest_reg_was_split
	.loc 1 1936 0
	movq	-168(%rbp), %rax	# insn, tmp428
	movzwl	(%rax), %eax	# insn_55->code, D.14974
	movzwl	%ax, %eax	# D.14974, D.14972
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.14976
	cmpb	$105, %al	#, D.14976
	jne	.L285	#,
	.loc 1 1936 0 is_stmt 0 discriminator 1
	movq	-168(%rbp), %rax	# insn, tmp430
	movq	32(%rax), %rax	# insn_55->fld[3].rtx, D.14977
	movzwl	(%rax), %eax	# _148->code, D.14974
	cmpw	$47, %ax	#, D.14974
	jne	.L286	#,
	.loc 1 1936 0 discriminator 3
	movq	-168(%rbp), %rax	# insn, tmp431
	movq	32(%rax), %rax	# insn_55->fld[3].rtx, iftmp.158
	jmp	.L288	#
.L286:
	.loc 1 1936 0 discriminator 4
	movq	-168(%rbp), %rax	# insn, tmp432
	movq	32(%rax), %rdx	# insn_55->fld[3].rtx, D.14977
	movq	-168(%rbp), %rax	# insn, tmp433
	movq	%rdx, %rsi	# D.14977,
	movq	%rax, %rdi	# tmp433,
	call	single_set_2	#
	jmp	.L288	#
.L285:
	.loc 1 1936 0 discriminator 2
	movl	$0, %eax	#, iftmp.157
.L288:
	.loc 1 1936 0 discriminator 5
	movq	%rax, -80(%rbp)	# iftmp.157, set
	cmpq	$0, -80(%rbp)	#, set
	je	.L289	#,
	.loc 1 1937 0 is_stmt 1
	movq	-80(%rbp), %rax	# set, tmp434
	movq	8(%rax), %rax	# set_155->fld[0].rtx, D.14977
	movzwl	(%rax), %eax	# _156->code, D.14974
	cmpw	$61, %ax	#, D.14974
	jne	.L289	#,
	.loc 1 1938 0
	movq	splittable_regs(%rip), %rdx	# splittable_regs, splittable_regs.159
	movq	-80(%rbp), %rax	# set, tmp435
	movq	8(%rax), %rax	# set_155->fld[0].rtx, D.14977
	movl	8(%rax), %eax	# _159->fld[0].rtuint, D.14975
	movl	%eax, %eax	# D.14975, D.14973
	salq	$3, %rax	#, D.14973
	addq	%rdx, %rax	# splittable_regs.159, D.14971
	movq	(%rax), %rax	# *_163, D.14977
	testq	%rax, %rax	# D.14977
	je	.L289	#,
.LBB19:
	.loc 1 1940 0
	movq	-80(%rbp), %rax	# set, tmp436
	movq	8(%rax), %rax	# set_155->fld[0].rtx, D.14977
	movl	8(%rax), %eax	# _165->fld[0].rtuint, tmp437
	movl	%eax, -188(%rbp)	# tmp437, regno
	.loc 1 1943 0
	movl	$1, -208(%rbp)	#, dest_reg_was_split
	.loc 1 1945 0
	movq	-80(%rbp), %rax	# set, tmp438
	movq	8(%rax), %rax	# set_155->fld[0].rtx, tmp439
	movq	%rax, -136(%rbp)	# tmp439, giv_dest_reg
	.loc 1 1946 0
	movq	-136(%rbp), %rax	# giv_dest_reg, tmp440
	movq	%rax, -128(%rbp)	# tmp440, giv_src_reg
	.loc 1 1949 0
	cmpq	$0, -144(%rbp)	#, giv_inc
	jne	.L290	#,
	.loc 1 1950 0
	movl	-188(%rbp), %edx	# regno, tmp441
	movq	-168(%rbp), %rcx	# insn, tmp442
	movq	-80(%rbp), %rax	# set, tmp443
	movq	%rcx, %rsi	# tmp442,
	movq	%rax, %rdi	# tmp443,
	call	calculate_giv_inc	#
	movq	%rax, -144(%rbp)	# tmp444, giv_inc
.L290:
	.loc 1 1952 0
	movq	-128(%rbp), %rax	# giv_src_reg, tmp445
	movl	8(%rax), %eax	# giv_src_reg_169->fld[0].rtuint, tmp446
	movl	%eax, -184(%rbp)	# tmp446, src_regno
	.loc 1 1954 0
	cmpl	$0, 16(%rbp)	#, unroll_type
	jne	.L291	#,
	.loc 1 1961 0
	movq	splittable_regs(%rip), %rax	# splittable_regs, splittable_regs.160
	movl	-188(%rbp), %edx	# regno, D.14973
	salq	$3, %rdx	#, D.14973
	leaq	(%rax,%rdx), %rbx	#, D.14971
	.loc 1 1962 0
	movq	-144(%rbp), %rax	# giv_inc, tmp447
	movq	8(%rax), %rdx	# giv_inc_14->fld[0].rtwint, D.14982
	movq	splittable_regs(%rip), %rax	# splittable_regs, splittable_regs.161
	movl	-184(%rbp), %ecx	# src_regno, D.14973
	salq	$3, %rcx	#, D.14973
	addq	%rcx, %rax	# D.14973, D.14971
	movq	(%rax), %rax	# *_180, D.14977
	movq	%rdx, %rsi	# D.14982,
	movq	%rax, %rdi	# D.14977,
	call	plus_constant_wide	#
	movq	%rax, (%rbx)	# D.14977, *_175
	.loc 1 1965 0
	movq	splittable_regs(%rip), %rax	# splittable_regs, splittable_regs.162
	movl	-188(%rbp), %edx	# regno, D.14973
	salq	$3, %rdx	#, D.14973
	addq	%rdx, %rax	# D.14973, D.14971
	movq	(%rax), %rax	# *_186, D.14977
	movzwl	(%rax), %eax	# _187->code, D.14974
	cmpw	$75, %ax	#, D.14974
	jne	.L292	#,
	.loc 1 1967 0
	movq	splittable_regs(%rip), %rax	# splittable_regs, splittable_regs.163
	movl	-188(%rbp), %edx	# regno, D.14973
	salq	$3, %rdx	#, D.14973
	addq	%rdx, %rax	# D.14973, D.14971
	movq	(%rax), %rax	# *_192, D.14977
	movq	8(%rax), %rax	# _193->fld[0].rtx, tmp448
	movq	%rax, -128(%rbp)	# tmp448, giv_src_reg
	.loc 1 1968 0
	movq	splittable_regs(%rip), %rax	# splittable_regs, splittable_regs.164
	movl	-188(%rbp), %edx	# regno, D.14973
	salq	$3, %rdx	#, D.14973
	addq	%rdx, %rax	# D.14973, D.14971
	movq	(%rax), %rax	# *_198, D.14977
	movq	16(%rax), %rax	# _199->fld[1].rtx, tmp449
	movq	%rax, -144(%rbp)	# tmp449, giv_inc
	jmp	.L294	#
.L292:
	.loc 1 1975 0
	movq	splittable_regs(%rip), %rax	# splittable_regs, splittable_regs.165
	movl	-188(%rbp), %edx	# regno, D.14973
	salq	$3, %rdx	#, D.14973
	addq	%rdx, %rax	# D.14973, D.14971
	movq	(%rax), %rax	# *_204, tmp450
	movq	%rax, -128(%rbp)	# tmp450, giv_src_reg
	.loc 1 1976 0
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, tmp451
	movq	%rax, -144(%rbp)	# tmp451, giv_inc
	jmp	.L294	#
.L291:
	.loc 1 1993 0
	movq	-96(%rbp), %rax	# ivs, tmp452
	movl	8(%rax), %eax	# ivs_36->n_regs, D.14975
	cmpl	-188(%rbp), %eax	# regno, D.14975
	jbe	.L295	#,
	.loc 1 1994 0
	movq	-96(%rbp), %rax	# ivs, tmp453
	movq	(%rax), %rax	# ivs_36->regs, D.14980
	movl	-188(%rbp), %edx	# regno, D.14973
	salq	$4, %rdx	#, D.14973
	addq	%rdx, %rax	# D.14973, D.14980
	movl	(%rax), %eax	# _211->type, D.14985
	cmpl	$1, %eax	#, D.14985
	jne	.L295	#,
	.loc 1 1996 0
	movq	-96(%rbp), %rax	# ivs, tmp454
	movq	(%rax), %rax	# ivs_36->regs, D.14980
	movl	-188(%rbp), %edx	# regno, D.14973
	salq	$4, %rdx	#, D.14973
	addq	%rdx, %rax	# D.14973, D.14980
	movq	8(%rax), %rax	# _216->iv.class, D.14986
	movq	8(%rax), %rax	# _217->biv, D.14979
	movq	16(%rax), %rax	# _218->src_reg, tmp455
	movq	%rax, -128(%rbp)	# tmp455, giv_src_reg
	.loc 1 1997 0
	movq	-128(%rbp), %rax	# giv_src_reg, tmp456
	movq	%rax, -136(%rbp)	# tmp456, giv_dest_reg
.L295:
	.loc 1 2006 0
	movq	splittable_regs(%rip), %rax	# splittable_regs, splittable_regs.166
	movl	-188(%rbp), %edx	# regno, D.14973
	salq	$3, %rdx	#, D.14973
	leaq	(%rax,%rdx), %rbx	#, D.14971
	.loc 1 2009 0
	movq	splittable_regs(%rip), %rax	# splittable_regs, splittable_regs.167
	movl	-184(%rbp), %edx	# src_regno, D.14973
	salq	$3, %rdx	#, D.14973
	addq	%rdx, %rax	# D.14973, D.14971
	.loc 1 2007 0
	movq	(%rax), %rcx	# *_228, D.14977
	movq	-128(%rbp), %rax	# giv_src_reg, tmp457
	movzbl	2(%rax), %eax	# giv_src_reg_20->mode, D.14984
	movzbl	%al, %eax	# D.14984, D.14987
	movq	-144(%rbp), %rdx	# giv_inc, tmp458
	movl	%eax, %esi	# D.14987,
	movl	$75, %edi	#,
	call	simplify_gen_binary	#
	movq	%rax, (%rbx)	# D.14977, *_224
	.loc 1 2010 0
	movq	splittable_regs(%rip), %rax	# splittable_regs, splittable_regs.168
	movl	-188(%rbp), %edx	# regno, D.14973
	salq	$3, %rdx	#, D.14973
	addq	%rdx, %rax	# D.14973, D.14971
	movq	(%rax), %rax	# *_236, tmp459
	movq	%rax, -144(%rbp)	# tmp459, giv_inc
	.loc 1 2026 0
	cmpl	$0, -252(%rbp)	#, last_iteration
	je	.L296	#,
	.loc 1 2027 0
	movq	splittable_regs_updates(%rip), %rax	# splittable_regs_updates, splittable_regs_updates.169
	movl	-188(%rbp), %edx	# regno, D.14973
	salq	$2, %rdx	#, D.14973
	addq	%rax, %rdx	# splittable_regs_updates.169, D.14988
	movl	(%rdx), %eax	# *_241, D.14972
	leal	-1(%rax), %ecx	#, D.14972
	movl	%ecx, (%rdx)	# D.14972, *_241
	cmpl	$1, %eax	#, D.14972
	je	.L297	#,
.L296:
	.loc 1 2029 0
	movq	-128(%rbp), %rax	# giv_src_reg, tmp460
	movzbl	2(%rax), %eax	# giv_src_reg_20->mode, D.14984
	movzbl	%al, %eax	# D.14984, D.14987
	movl	%eax, %edi	# D.14987,
	call	gen_reg_rtx	#
	movq	%rax, -48(%rbp)	# tmp461, tem
	.loc 1 2030 0
	movq	-48(%rbp), %rax	# tem, tmp462
	movq	%rax, -136(%rbp)	# tmp462, giv_dest_reg
	.loc 1 2031 0
	movq	-240(%rbp), %rax	# map, tmp463
	movq	32(%rax), %rax	# map_41(D)->reg_map, D.14971
	movl	-188(%rbp), %edx	# regno, D.14973
	salq	$3, %rdx	#, D.14973
	addq	%rax, %rdx	# D.14971, D.14971
	movq	-48(%rbp), %rax	# tem, tmp464
	movq	%rax, (%rdx)	# tmp464, *_256
	.loc 1 2033 0
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, D.14977
	.loc 1 2032 0
	cmpq	-144(%rbp), %rax	# giv_inc, D.14977
	je	.L298	#,
	.loc 1 2035 0
	movq	-128(%rbp), %rax	# giv_src_reg, tmp465
	movzbl	2(%rax), %eax	# giv_src_reg_20->mode, D.14984
	movzbl	%al, %eax	# D.14984, D.14987
	.loc 1 2032 0
	movq	-144(%rbp), %rcx	# giv_inc, tmp466
	movq	-128(%rbp), %rdx	# giv_src_reg, tmp467
	movl	%eax, %esi	# D.14987,
	movl	$75, %edi	#,
	call	gen_rtx_fmt_ee	#
	jmp	.L299	#
.L298:
	.loc 1 2032 0 is_stmt 0 discriminator 1
	movq	-128(%rbp), %rax	# giv_src_reg, iftmp.170
.L299:
	.loc 1 2032 0 discriminator 2
	movq	-48(%rbp), %rdx	# tem, tmp468
	movl	8(%rdx), %ecx	# tem_251->fld[0].rtuint, D.14975
	movl	$1, %edx	#,
	movq	%rax, %rsi	# iftmp.170,
	movl	%ecx, %edi	# D.14975,
	call	record_base_value	#
	jmp	.L294	#
.L297:
	.loc 1 2040 0 is_stmt 1
	movq	-240(%rbp), %rax	# map, tmp469
	movq	32(%rax), %rax	# map_41(D)->reg_map, D.14971
	movl	-188(%rbp), %edx	# regno, D.14973
	salq	$3, %rdx	#, D.14973
	addq	%rax, %rdx	# D.14971, D.14971
	movq	-128(%rbp), %rax	# giv_src_reg, tmp470
	movq	%rax, (%rdx)	# tmp470, *_248
.L294:
	.loc 1 2045 0
	movq	-144(%rbp), %rdx	# giv_inc, tmp471
	movq	-128(%rbp), %rcx	# giv_src_reg, tmp472
	movq	-136(%rbp), %rax	# giv_dest_reg, tmp473
	movq	%rcx, %rsi	# tmp472,
	movq	%rax, %rdi	# tmp473,
	call	emit_unrolled_add	#
	.loc 1 2046 0
	call	get_last_insn	#
	movq	%rax, -160(%rbp)	# tmp474, copy
	.loc 1 2047 0
	movq	-160(%rbp), %rax	# copy, tmp475
	movq	32(%rax), %rax	# copy_263->fld[3].rtx, tmp476
	movq	%rax, -88(%rbp)	# tmp476, pattern
.LBE19:
	.loc 1 1939 0
	jmp	.L300	#
.L289:
	.loc 1 2051 0
	movq	-240(%rbp), %rcx	# map, tmp477
	movq	-88(%rbp), %rax	# pattern, tmp478
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp477,
	movq	%rax, %rdi	# tmp478,
	call	copy_rtx_and_substitute	#
	movq	%rax, -88(%rbp)	# tmp479, pattern
	.loc 1 2052 0
	movq	-88(%rbp), %rax	# pattern, tmp480
	movq	%rax, %rdi	# tmp480,
	call	emit_insn	#
	movq	%rax, -160(%rbp)	# tmp481, copy
.L300:
	.loc 1 2054 0
	movq	-168(%rbp), %rax	# insn, tmp482
	movq	56(%rax), %rax	# insn_55->fld[6].rtx, D.14977
	movq	-240(%rbp), %rdx	# map, tmp483
	movq	%rdx, %rsi	# tmp483,
	movq	%rax, %rdi	# D.14977,
	call	initial_reg_note_copy	#
	movq	-160(%rbp), %rdx	# copy, tmp484
	movq	%rax, 56(%rdx)	# D.14977, copy_5->fld[6].rtx
	.loc 1 2080 0
	movq	-240(%rbp), %rdx	# map, tmp485
	movq	-160(%rbp), %rax	# copy, tmp486
	movq	%rdx, %rsi	# tmp485,
	movq	%rax, %rdi	# tmp486,
	call	try_constants	#
	.loc 1 2086 0
	cmpl	$0, -208(%rbp)	#, dest_reg_was_split
	je	.L301	#,
.LBB20:
	.loc 1 2088 0
	movq	-80(%rbp), %rax	# set, tmp487
	movq	8(%rax), %rax	# set_155->fld[0].rtx, D.14977
	movl	8(%rax), %eax	# _269->fld[0].rtuint, D.14975
	movl	%eax, -180(%rbp)	# D.14975, regno
	.loc 1 2090 0
	movl	-180(%rbp), %eax	# regno, tmp488
	movslq	%eax, %rdx	# tmp488, D.14973
	movq	-240(%rbp), %rax	# map, tmp489
	movq	64(%rax), %rax	# map_41(D)->const_equiv_varray, D.14989
	movq	(%rax), %rax	# _273->num_elements, D.14973
	cmpq	%rax, %rdx	# D.14973, D.14973
	jae	.L301	#,
	.loc 1 2091 0
	movq	-240(%rbp), %rax	# map, tmp490
	movq	64(%rax), %rax	# map_41(D)->const_equiv_varray, D.14989
	movl	-180(%rbp), %edx	# regno, tmp492
	movslq	%edx, %rdx	# tmp492, tmp491
	addq	$2, %rdx	#, tmp493
	salq	$4, %rdx	#, tmp494
	addq	%rdx, %rax	# tmp494, tmp495
	movl	8(%rax), %edx	# _275->data.const_equiv[regno_271].age, D.14975
	.loc 1 2092 0
	movq	-240(%rbp), %rax	# map, tmp496
	movl	72(%rax), %eax	# map_41(D)->const_age, D.14975
	.loc 1 2091 0
	cmpl	%eax, %edx	# D.14975, D.14975
	jne	.L301	#,
	.loc 1 2093 0
	movq	-240(%rbp), %rax	# map, tmp497
	movq	64(%rax), %rax	# map_41(D)->const_equiv_varray, D.14989
	movl	-180(%rbp), %edx	# regno, tmp499
	movslq	%edx, %rdx	# tmp499, tmp498
	addq	$2, %rdx	#, tmp500
	salq	$4, %rdx	#, tmp501
	addq	%rdx, %rax	# tmp501, tmp502
	movl	$-1, 8(%rax)	#, _278->data.const_equiv[regno_271].age
.LBE20:
	.loc 1 2095 0
	jmp	.L302	#
.L301:
	jmp	.L302	#
.L267:
	.loc 1 2098 0
	movq	-168(%rbp), %rax	# insn, tmp503
	movq	32(%rax), %rax	# insn_55->fld[3].rtx, D.14977
	movq	-240(%rbp), %rcx	# map, tmp504
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp504,
	movq	%rax, %rdi	# D.14977,
	call	copy_rtx_and_substitute	#
	movq	%rax, -88(%rbp)	# tmp505, pattern
	.loc 1 2099 0
	movq	-88(%rbp), %rax	# pattern, tmp506
	movq	%rax, %rdi	# tmp506,
	call	emit_jump_insn	#
	movq	%rax, -160(%rbp)	# tmp507, copy
	.loc 1 2100 0
	movq	-168(%rbp), %rax	# insn, tmp508
	movq	56(%rax), %rax	# insn_55->fld[6].rtx, D.14977
	movq	-240(%rbp), %rdx	# map, tmp509
	movq	%rdx, %rsi	# tmp509,
	movq	%rax, %rdi	# D.14977,
	call	initial_reg_note_copy	#
	movq	-160(%rbp), %rdx	# copy, tmp510
	movq	%rax, 56(%rdx)	# D.14977, copy_281->fld[6].rtx
	.loc 1 2102 0
	movq	-168(%rbp), %rax	# insn, tmp511
	movq	64(%rax), %rax	# insn_55->fld[7].rtx, D.14977
	testq	%rax, %rax	# D.14977
	je	.L303	#,
	.loc 1 2105 0
	movq	-168(%rbp), %rax	# insn, tmp512
	movq	64(%rax), %rax	# insn_55->fld[7].rtx, D.14977
	.loc 1 2104 0
	movl	48(%rax), %edx	# _285->fld[5].rtint, D.14972
	movq	-240(%rbp), %rax	# map, tmp513
	movl	%edx, %esi	# D.14972,
	movq	%rax, %rdi	# tmp513,
	call	get_label_from_map	#
	movq	-160(%rbp), %rdx	# copy, tmp514
	movq	%rax, 64(%rdx)	# D.14977, copy_281->fld[7].rtx
	.loc 1 2107 0
	movq	-160(%rbp), %rax	# copy, tmp515
	movq	64(%rax), %rax	# copy_281->fld[7].rtx, D.14977
	movl	32(%rax), %edx	# _288->fld[3].rtint, D.14972
	addl	$1, %edx	#, D.14972
	movl	%edx, 32(%rax)	# D.14972, _288->fld[3].rtint
.L303:
	.loc 1 2109 0
	movq	-168(%rbp), %rax	# insn, tmp516
	movq	64(%rax), %rax	# insn_55->fld[7].rtx, D.14977
	cmpq	24(%rbp), %rax	# start_label, D.14977
	jne	.L304	#,
	.loc 1 2109 0 is_stmt 0 discriminator 1
	movq	-168(%rbp), %rax	# insn, tmp517
	cmpq	-232(%rbp), %rax	# copy_end, tmp517
	jne	.L304	#,
	.loc 1 2110 0 is_stmt 1
	cmpl	$0, -252(%rbp)	#, last_iteration
	jne	.L304	#,
	.loc 1 2119 0
	movq	-248(%rbp), %rcx	# exit_label, tmp518
	movq	-160(%rbp), %rax	# copy, tmp519
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp518,
	movq	%rax, %rdi	# tmp519,
	call	invert_jump	#
	testl	%eax, %eax	# D.14972
	jne	.L304	#,
.LBB21:
	.loc 1 2122 0
	call	gen_label_rtx	#
	movq	%rax, -40(%rbp)	# tmp520, lab
	.loc 1 2127 0
	movq	-248(%rbp), %rax	# exit_label, tmp521
	movq	%rax, %rdi	# tmp521,
	call	gen_jump	#
	movq	-160(%rbp), %rdx	# copy, tmp522
	movq	%rdx, %rsi	# tmp522,
	movq	%rax, %rdi	# D.14977,
	call	emit_jump_insn_after	#
	movq	%rax, -32(%rbp)	# tmp523, jmp
	.loc 1 2128 0
	movq	-32(%rbp), %rax	# jmp, tmp524
	movq	-248(%rbp), %rdx	# exit_label, tmp525
	movq	%rdx, 64(%rax)	# tmp525, jmp_297->fld[7].rtx
	.loc 1 2129 0
	movq	-248(%rbp), %rax	# exit_label, tmp526
	movl	32(%rax), %eax	# exit_label_293(D)->fld[3].rtint, D.14972
	leal	1(%rax), %edx	#, D.14972
	movq	-248(%rbp), %rax	# exit_label, tmp527
	movl	%edx, 32(%rax)	# D.14972, exit_label_293(D)->fld[3].rtint
	.loc 1 2130 0
	movq	-32(%rbp), %rax	# jmp, tmp528
	movq	%rax, %rdi	# tmp528,
	call	emit_barrier_after	#
	movq	%rax, -32(%rbp)	# tmp529, jmp
	.loc 1 2131 0
	movq	-32(%rbp), %rdx	# jmp, tmp530
	movq	-40(%rbp), %rax	# lab, tmp531
	movq	%rdx, %rsi	# tmp530,
	movq	%rax, %rdi	# tmp531,
	call	emit_label_after	#
	.loc 1 2132 0
	movq	-40(%rbp), %rax	# lab, tmp532
	movl	$0, 32(%rax)	#, lab_295->fld[3].rtint
	.loc 1 2133 0
	movq	-40(%rbp), %rcx	# lab, tmp533
	movq	-160(%rbp), %rax	# copy, tmp534
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp533,
	movq	%rax, %rdi	# tmp534,
	call	redirect_jump	#
	testl	%eax, %eax	# D.14972
	jne	.L304	#,
	.loc 1 2134 0
	movl	$__FUNCTION__.11442, %edx	#,
	movl	$2134, %esi	#,
	movl	$.LC13, %edi	#,
	call	fancy_abort	#
.L304:
.LBE21:
	.loc 1 2143 0
	movq	-240(%rbp), %rdx	# map, tmp535
	movq	-160(%rbp), %rax	# copy, tmp536
	movq	%rdx, %rsi	# tmp535,
	movq	%rax, %rdi	# tmp536,
	call	try_constants	#
	.loc 1 2147 0
	movq	-168(%rbp), %rax	# insn, tmp537
	movq	64(%rax), %rax	# insn_55->fld[7].rtx, D.14977
	testq	%rax, %rax	# D.14977
	je	.L305	#,
.LBB22:
	.loc 1 2149 0
	movq	$0, -104(%rbp)	#, label
	.loc 1 2153 0
	movq	-160(%rbp), %rax	# copy, tmp538
	movzwl	(%rax), %eax	# copy_281->code, D.14974
	movzwl	%ax, %eax	# D.14974, D.14972
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.14976
	cmpb	$105, %al	#, D.14976
	jne	.L306	#,
	.loc 1 2153 0 is_stmt 0 discriminator 1
	movq	-160(%rbp), %rax	# copy, tmp540
	movq	32(%rax), %rax	# copy_281->fld[3].rtx, D.14977
	movzwl	(%rax), %eax	# _307->code, D.14974
	cmpw	$47, %ax	#, D.14974
	jne	.L307	#,
	.loc 1 2153 0 discriminator 3
	movq	-160(%rbp), %rax	# copy, tmp541
	movq	32(%rax), %rax	# copy_281->fld[3].rtx, iftmp.172
	jmp	.L309	#
.L307:
	.loc 1 2153 0 discriminator 4
	movq	-160(%rbp), %rax	# copy, tmp542
	movq	32(%rax), %rdx	# copy_281->fld[3].rtx, D.14977
	movq	-160(%rbp), %rax	# copy, tmp543
	movq	%rdx, %rsi	# D.14977,
	movq	%rax, %rdi	# tmp543,
	call	single_set_2	#
	jmp	.L309	#
.L306:
	.loc 1 2153 0 discriminator 2
	movl	$0, %eax	#, iftmp.171
.L309:
	.loc 1 2153 0 discriminator 5
	movq	%rax, -80(%rbp)	# iftmp.171, set
	cmpq	$0, -80(%rbp)	#, set
	je	.L310	#,
	.loc 1 2155 0 is_stmt 1
	movq	-80(%rbp), %rax	# set, tmp544
	movq	16(%rax), %rax	# set_314->fld[1].rtx, tmp545
	movq	%rax, -48(%rbp)	# tmp545, tem
	.loc 1 2156 0
	movq	-48(%rbp), %rax	# tem, tmp546
	movzwl	(%rax), %eax	# tem_315->code, D.14974
	cmpw	$67, %ax	#, D.14974
	jne	.L311	#,
	.loc 1 2157 0
	movq	-48(%rbp), %rax	# tem, tmp547
	movq	8(%rax), %rax	# tem_315->fld[0].rtx, tmp548
	movq	%rax, -104(%rbp)	# tmp548, label
	jmp	.L310	#
.L311:
	.loc 1 2158 0
	movq	-48(%rbp), %rax	# tem, tmp549
	movzwl	(%rax), %eax	# tem_315->code, D.14974
	cmpw	$72, %ax	#, D.14974
	jne	.L310	#,
	.loc 1 2160 0
	movq	-48(%rbp), %rax	# tem, tmp550
	movq	16(%rax), %rdx	# tem_315->fld[1].rtx, D.14977
	movq	global_rtl(%rip), %rax	# global_rtl, D.14977
	cmpq	%rax, %rdx	# D.14977, D.14977
	je	.L312	#,
	.loc 1 2161 0
	movq	-48(%rbp), %rax	# tem, tmp551
	movq	16(%rax), %rax	# tem_315->fld[1].rtx, D.14977
	movq	8(%rax), %rax	# _321->fld[0].rtx, tmp552
	movq	%rax, -104(%rbp)	# tmp552, label
	jmp	.L310	#
.L312:
	.loc 1 2163 0
	movq	-48(%rbp), %rax	# tem, tmp553
	movq	24(%rax), %rax	# tem_315->fld[2].rtx, D.14977
	movq	8(%rax), %rax	# _323->fld[0].rtx, tmp554
	movq	%rax, -104(%rbp)	# tmp554, label
.L310:
	.loc 1 2167 0
	cmpq	$0, -104(%rbp)	#, label
	je	.L313	#,
	.loc 1 2167 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# label, tmp555
	movzwl	(%rax), %eax	# label_25->code, D.14974
	cmpw	$36, %ax	#, D.14974
	jne	.L313	#,
	.loc 1 2168 0 is_stmt 1
	movq	-160(%rbp), %rax	# copy, tmp556
	movq	-104(%rbp), %rdx	# label, tmp557
	movq	%rdx, 64(%rax)	# tmp557, copy_281->fld[7].rtx
	jmp	.L314	#
.L313:
	.loc 1 2176 0
	movq	-168(%rbp), %rax	# insn, tmp558
	movq	64(%rax), %rax	# insn_55->fld[7].rtx, D.14977
	.loc 1 2175 0
	movl	48(%rax), %edx	# _326->fld[5].rtint, D.14972
	movq	-240(%rbp), %rax	# map, tmp559
	movl	%edx, %esi	# D.14972,
	movq	%rax, %rdi	# tmp559,
	call	get_label_from_map	#
	movq	-160(%rbp), %rdx	# copy, tmp560
	movq	%rax, 64(%rdx)	# D.14977, copy_281->fld[7].rtx
.L314:
	.loc 1 2182 0
	movq	-160(%rbp), %rax	# copy, tmp561
	movq	64(%rax), %rax	# copy_281->fld[7].rtx, D.14977
	movl	32(%rax), %edx	# _329->fld[3].rtint, D.14972
	addl	$1, %edx	#, D.14972
	movl	%edx, 32(%rax)	# D.14972, _329->fld[3].rtint
.LBE22:
	jmp	.L315	#
.L305:
	.loc 1 2184 0
	movq	-160(%rbp), %rax	# copy, tmp562
	movq	32(%rax), %rax	# copy_281->fld[3].rtx, D.14977
	movzwl	(%rax), %eax	# _332->code, D.14974
	cmpw	$44, %ax	#, D.14974
	je	.L316	#,
	.loc 1 2185 0
	movq	-160(%rbp), %rax	# copy, tmp563
	movq	32(%rax), %rax	# copy_281->fld[3].rtx, D.14977
	movzwl	(%rax), %eax	# _334->code, D.14974
	cmpw	$45, %ax	#, D.14974
	jne	.L315	#,
.L316:
.LBB23:
	.loc 1 2187 0
	movq	-160(%rbp), %rax	# copy, tmp564
	movq	32(%rax), %rax	# copy_281->fld[3].rtx, tmp565
	movq	%rax, -24(%rbp)	# tmp565, pat
	.loc 1 2188 0
	movq	-24(%rbp), %rax	# pat, tmp566
	movzwl	(%rax), %eax	# pat_336->code, D.14974
	cmpw	$45, %ax	#, D.14974
	sete	%al	#, D.14990
	movzbl	%al, %eax	# D.14990, tmp567
	movl	%eax, -176(%rbp)	# tmp567, diff_vec_p
	.loc 1 2189 0
	movq	-24(%rbp), %rax	# pat, tmp568
	movl	-176(%rbp), %edx	# diff_vec_p, tmp570
	movslq	%edx, %rdx	# tmp570, tmp569
	movq	8(%rax,%rdx,8), %rax	# pat_336->fld[diff_vec_p_339].rtvec, D.14991
	movl	(%rax), %eax	# _340->num_elem, tmp571
	movl	%eax, -172(%rbp)	# tmp571, len
	.loc 1 2192 0
	movl	$0, -196(%rbp)	#, i
	jmp	.L317	#
.L318:
	.loc 1 2193 0 discriminator 2
	movq	-24(%rbp), %rax	# pat, tmp572
	movl	-176(%rbp), %edx	# diff_vec_p, tmp574
	movslq	%edx, %rdx	# tmp574, tmp573
	movq	8(%rax,%rdx,8), %rax	# pat_336->fld[diff_vec_p_339].rtvec, D.14991
	movl	-196(%rbp), %edx	# i, tmp576
	movslq	%edx, %rdx	# tmp576, tmp575
	movq	8(%rax,%rdx,8), %rax	# _343->elem, D.14977
	movq	8(%rax), %rax	# _344->fld[0].rtx, D.14977
	movl	32(%rax), %edx	# _345->fld[3].rtint, D.14972
	addl	$1, %edx	#, D.14972
	movl	%edx, 32(%rax)	# D.14972, _345->fld[3].rtint
	.loc 1 2192 0 discriminator 2
	addl	$1, -196(%rbp)	#, i
.L317:
	.loc 1 2192 0 is_stmt 0 discriminator 1
	movl	-196(%rbp), %eax	# i, tmp577
	cmpl	-172(%rbp), %eax	# len, tmp577
	jl	.L318	#,
.L315:
.LBE23:
	.loc 1 2198 0 is_stmt 1
	movq	-168(%rbp), %rax	# insn, tmp578
	movq	%rax, %rdi	# tmp578,
	call	any_condjump_p	#
	testl	%eax, %eax	# D.14972
	je	.L319	#,
	.loc 1 2198 0 is_stmt 0 discriminator 1
	movq	-168(%rbp), %rax	# insn, tmp579
	movq	%rax, %rdi	# tmp579,
	call	onlyjump_p	#
	testl	%eax, %eax	# D.14972
	je	.L319	#,
	movq	-240(%rbp), %rax	# map, tmp580
	movq	624(%rax), %rax	# map_41(D)->last_pc_value, D.14977
	testq	%rax, %rax	# D.14977
	je	.L319	#,
	.loc 1 2207 0 is_stmt 1
	movq	-240(%rbp), %rax	# map, tmp581
	movq	624(%rax), %rdx	# map_41(D)->last_pc_value, D.14977
	movq	global_rtl(%rip), %rax	# global_rtl, D.14977
	cmpq	%rax, %rdx	# D.14977, D.14977
	jne	.L320	#,
	.loc 1 2209 0
	movq	-160(%rbp), %rax	# copy, tmp582
	movq	%rax, %rdi	# tmp582,
	call	delete_insn	#
	.loc 1 2210 0
	movq	$0, -160(%rbp)	#, copy
	jmp	.L319	#
.L320:
	.loc 1 2216 0
	call	emit_barrier	#
	.loc 1 2218 0
	jmp	.L302	#
.L319:
	jmp	.L302	#
.L268:
	.loc 1 2221 0
	movq	-168(%rbp), %rax	# insn, tmp583
	movq	32(%rax), %rax	# insn_55->fld[3].rtx, D.14977
	movq	-240(%rbp), %rcx	# map, tmp584
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp584,
	movq	%rax, %rdi	# D.14977,
	call	copy_rtx_and_substitute	#
	movq	%rax, -88(%rbp)	# tmp585, pattern
	.loc 1 2222 0
	movq	-88(%rbp), %rax	# pattern, tmp586
	movq	%rax, %rdi	# tmp586,
	call	emit_call_insn	#
	movq	%rax, -160(%rbp)	# tmp587, copy
	.loc 1 2223 0
	movq	-168(%rbp), %rax	# insn, tmp588
	movq	56(%rax), %rax	# insn_55->fld[6].rtx, D.14977
	movq	-240(%rbp), %rdx	# map, tmp589
	movq	%rdx, %rsi	# tmp589,
	movq	%rax, %rdi	# D.14977,
	call	initial_reg_note_copy	#
	movq	-160(%rbp), %rdx	# copy, tmp590
	movq	%rax, 56(%rdx)	# D.14977, copy_357->fld[6].rtx
	.loc 1 2224 0
	movq	-168(%rbp), %rax	# insn, tmp591
	movzbl	3(%rax), %eax	# *insn_55, tmp594
	andl	$1, %eax	#, D.14992
	movl	%eax, %edx	# D.14992, D.14992
	movq	-160(%rbp), %rax	# copy, tmp595
	movl	%edx, %ecx	# D.14992, tmp597
	andl	$1, %ecx	#, tmp597
	movzbl	3(%rax), %edx	# copy_357->jump, tmp598
	andl	$-2, %edx	#, tmp599
	orl	%ecx, %edx	# tmp597, tmp600
	movb	%dl, 3(%rax)	# tmp600, copy_357->jump
	.loc 1 2229 0
	movq	-168(%rbp), %rax	# insn, tmp601
	movq	64(%rax), %rax	# insn_55->fld[7].rtx, D.14977
	movq	-240(%rbp), %rcx	# map, tmp602
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp602,
	movq	%rax, %rdi	# D.14977,
	call	copy_rtx_and_substitute	#
	movq	-160(%rbp), %rdx	# copy, tmp603
	movq	%rax, 64(%rdx)	# D.14977, copy_357->fld[7].rtx
	.loc 1 2237 0
	movq	-240(%rbp), %rdx	# map, tmp604
	movq	-160(%rbp), %rax	# copy, tmp605
	movq	%rdx, %rsi	# tmp604,
	movq	%rax, %rdi	# tmp605,
	call	try_constants	#
	.loc 1 2240 0
	movl	$0, -204(%rbp)	#, i
	jmp	.L321	#
.L322:
	.loc 1 2241 0 discriminator 2
	movq	-240(%rbp), %rax	# map, tmp606
	movq	64(%rax), %rax	# map_41(D)->const_equiv_varray, D.14989
	movl	-204(%rbp), %edx	# i, tmp608
	movslq	%edx, %rdx	# tmp608, tmp607
	addq	$2, %rdx	#, tmp609
	salq	$4, %rdx	#, tmp610
	addq	%rdx, %rax	# tmp610, tmp611
	movq	$0, (%rax)	#, _364->data.const_equiv[i_11].rtx
	.loc 1 2240 0 discriminator 2
	addl	$1, -204(%rbp)	#, i
.L321:
	.loc 1 2240 0 is_stmt 0 discriminator 1
	cmpl	$52, -204(%rbp)	#, i
	jle	.L322	#,
	.loc 1 2242 0 is_stmt 1
	jmp	.L302	#
.L270:
	.loc 1 2248 0
	movq	-168(%rbp), %rax	# insn, tmp612
	cmpq	24(%rbp), %rax	# start_label, tmp612
	je	.L323	#,
	.loc 1 2250 0
	movq	-168(%rbp), %rax	# insn, tmp613
	movl	48(%rax), %edx	# insn_55->fld[5].rtint, D.14972
	movq	-240(%rbp), %rax	# map, tmp614
	movl	%edx, %esi	# D.14972,
	movq	%rax, %rdi	# tmp614,
	call	get_label_from_map	#
	movq	%rax, %rdi	# D.14977,
	call	emit_label	#
	movq	%rax, -160(%rbp)	# tmp615, copy
	.loc 1 2252 0
	movq	-240(%rbp), %rax	# map, tmp616
	movl	72(%rax), %eax	# map_41(D)->const_age, D.14975
	leal	1(%rax), %edx	#, D.14975
	movq	-240(%rbp), %rax	# map, tmp617
	movl	%edx, 72(%rax)	# D.14975, map_41(D)->const_age
	.loc 1 2254 0
	jmp	.L302	#
.L323:
	jmp	.L302	#
.L269:
	.loc 1 2257 0
	call	emit_barrier	#
	movq	%rax, -160(%rbp)	# tmp618, copy
	.loc 1 2258 0
	jmp	.L302	#
.L271:
	.loc 1 2267 0
	movq	-168(%rbp), %rax	# insn, tmp619
	movl	40(%rax), %eax	# insn_55->fld[4].rtint, D.14972
	cmpl	$-99, %eax	#, D.14972
	je	.L324	#,
	.loc 1 2268 0
	movq	-168(%rbp), %rax	# insn, tmp620
	movl	40(%rax), %eax	# insn_55->fld[4].rtint, D.14972
	cmpl	$-88, %eax	#, D.14972
	je	.L324	#,
	.loc 1 2269 0
	movq	-168(%rbp), %rax	# insn, tmp621
	movl	40(%rax), %eax	# insn_55->fld[4].rtint, D.14972
	cmpl	$-80, %eax	#, D.14972
	je	.L324	#,
	.loc 1 2270 0
	movq	-168(%rbp), %rax	# insn, tmp622
	movl	40(%rax), %eax	# insn_55->fld[4].rtint, D.14972
	cmpl	$-93, %eax	#, D.14972
	je	.L325	#,
	.loc 1 2271 0
	movq	-168(%rbp), %rax	# insn, tmp623
	movl	40(%rax), %eax	# insn_55->fld[4].rtint, D.14972
	cmpl	$-94, %eax	#, D.14972
	jne	.L326	#,
.L325:
	.loc 1 2272 0
	cmpl	$0, -252(%rbp)	#, last_iteration
	je	.L324	#,
	.loc 1 2272 0 is_stmt 0 discriminator 1
	cmpl	$0, 16(%rbp)	#, unroll_type
	je	.L324	#,
.L326:
	.loc 1 2273 0 is_stmt 1
	movq	-168(%rbp), %rax	# insn, tmp624
	movl	40(%rax), %edx	# insn_55->fld[4].rtint, D.14972
	movq	-168(%rbp), %rax	# insn, tmp625
	movq	32(%rax), %rax	# insn_55->fld[3].rtstr, D.14993
	movl	%edx, %esi	# D.14972,
	movq	%rax, %rdi	# D.14993,
	call	emit_note	#
	movq	%rax, -160(%rbp)	# tmp626, copy
	.loc 1 2277 0
	jmp	.L302	#
.L324:
	.loc 1 2276 0
	movq	$0, -160(%rbp)	#, copy
	.loc 1 2277 0
	jmp	.L302	#
.L264:
	.loc 1 2280 0
	movl	$__FUNCTION__.11442, %edx	#,
	movl	$2280, %esi	#,
	movl	$.LC13, %edi	#,
	call	fancy_abort	#
.L302:
	.loc 1 2283 0
	movq	-240(%rbp), %rax	# map, tmp627
	movq	48(%rax), %rdx	# map_41(D)->insn_map, D.14971
	movq	-168(%rbp), %rax	# insn, tmp628
	movl	8(%rax), %eax	# insn_55->fld[0].rtint, D.14972
	cltq
	salq	$3, %rax	#, D.14973
	addq	%rax, %rdx	# D.14973, D.14971
	movq	-160(%rbp), %rax	# copy, tmp629
	movq	%rax, (%rdx)	# tmp629, *_385
	.loc 1 2285 0
	movq	-168(%rbp), %rax	# insn, tmp630
	cmpq	-232(%rbp), %rax	# copy_end, tmp630
	jne	.L328	#,
	.loc 1 2288 0
	movq	-224(%rbp), %rax	# copy_start, tmp631
	movq	%rax, -168(%rbp)	# tmp631, insn
.L331:
	.loc 1 2291 0
	movq	-168(%rbp), %rax	# insn, tmp632
	movq	24(%rax), %rax	# insn_2->fld[2].rtx, tmp633
	movq	%rax, -168(%rbp)	# tmp633, insn
	.loc 1 2292 0
	movq	-168(%rbp), %rax	# insn, tmp634
	movzwl	(%rax), %eax	# insn_387->code, D.14974
	cmpw	$32, %ax	#, D.14974
	je	.L329	#,
	.loc 1 2292 0 is_stmt 0 discriminator 1
	movq	-168(%rbp), %rax	# insn, tmp635
	movzwl	(%rax), %eax	# insn_387->code, D.14974
	cmpw	$33, %ax	#, D.14974
	je	.L329	#,
	.loc 1 2293 0 is_stmt 1
	movq	-168(%rbp), %rax	# insn, tmp636
	movzwl	(%rax), %eax	# insn_387->code, D.14974
	cmpw	$34, %ax	#, D.14974
	jne	.L330	#,
.L329:
	.loc 1 2294 0
	movq	-240(%rbp), %rax	# map, tmp637
	movq	48(%rax), %rdx	# map_41(D)->insn_map, D.14971
	movq	-168(%rbp), %rax	# insn, tmp638
	movl	8(%rax), %eax	# insn_387->fld[0].rtint, D.14972
	cltq
	salq	$3, %rax	#, D.14973
	addq	%rdx, %rax	# D.14971, D.14971
	movq	(%rax), %rax	# *_395, D.14977
	testq	%rax, %rax	# D.14977
	je	.L330	#,
	.loc 1 2295 0
	movq	-240(%rbp), %rax	# map, tmp639
	movq	48(%rax), %rdx	# map_41(D)->insn_map, D.14971
	movq	-168(%rbp), %rax	# insn, tmp640
	movl	8(%rax), %eax	# insn_387->fld[0].rtint, D.14972
	cltq
	salq	$3, %rax	#, D.14973
	addq	%rdx, %rax	# D.14971, D.14971
	movq	(%rax), %rax	# *_401, D.14977
	leaq	56(%rax), %rdx	#, D.14971
	movq	-240(%rbp), %rax	# map, tmp641
	movq	%rax, %rsi	# tmp641,
	movq	%rdx, %rdi	# D.14971,
	call	final_reg_note_copy	#
.L330:
	.loc 1 2297 0
	movq	-168(%rbp), %rax	# insn, tmp642
	cmpq	-232(%rbp), %rax	# copy_end, tmp642
	jne	.L331	#,
	.loc 1 2309 0
	cmpl	$0, -252(%rbp)	#, last_iteration
	jne	.L332	#,
	.loc 1 2311 0
	movq	48(%rbp), %rax	# copy_notes_from, tmp643
	movq	%rax, -168(%rbp)	# tmp643, insn
	jmp	.L333	#
.L335:
	.loc 1 2320 0
	movq	-168(%rbp), %rax	# insn, tmp644
	movzwl	(%rax), %eax	# insn_3->code, D.14974
	cmpw	$37, %ax	#, D.14974
	jne	.L334	#,
	.loc 1 2321 0
	movq	-168(%rbp), %rax	# insn, tmp645
	movl	40(%rax), %eax	# insn_3->fld[4].rtint, D.14972
	cmpl	$-99, %eax	#, D.14972
	je	.L334	#,
	.loc 1 2322 0
	movq	-168(%rbp), %rax	# insn, tmp646
	movl	40(%rax), %eax	# insn_3->fld[4].rtint, D.14972
	cmpl	$-80, %eax	#, D.14972
	je	.L334	#,
	.loc 1 2323 0
	movq	-168(%rbp), %rax	# insn, tmp647
	movl	40(%rax), %eax	# insn_3->fld[4].rtint, D.14972
	cmpl	$-93, %eax	#, D.14972
	je	.L334	#,
	.loc 1 2324 0
	movq	-168(%rbp), %rax	# insn, tmp648
	movl	40(%rax), %edx	# insn_3->fld[4].rtint, D.14972
	movq	-168(%rbp), %rax	# insn, tmp649
	movq	32(%rax), %rax	# insn_3->fld[3].rtstr, D.14993
	movl	%edx, %esi	# D.14972,
	movq	%rax, %rdi	# D.14993,
	call	emit_note	#
.L334:
	.loc 1 2311 0
	movq	-168(%rbp), %rax	# insn, tmp650
	movq	24(%rax), %rax	# insn_3->fld[2].rtx, tmp651
	movq	%rax, -168(%rbp)	# tmp651, insn
.L333:
	.loc 1 2311 0 is_stmt 0 discriminator 1
	movq	-168(%rbp), %rax	# insn, tmp652
	cmpq	32(%rbp), %rax	# loop_end, tmp652
	jne	.L335	#,
.L332:
	.loc 1 2328 0 is_stmt 1
	cmpq	$0, -152(%rbp)	#, final_label
	je	.L336	#,
	.loc 1 2328 0 is_stmt 0 discriminator 1
	movq	-152(%rbp), %rax	# final_label, tmp653
	movl	32(%rax), %eax	# final_label_12->fld[3].rtint, D.14972
	testl	%eax, %eax	# D.14972
	jle	.L336	#,
	.loc 1 2329 0 is_stmt 1
	movq	-152(%rbp), %rax	# final_label, tmp654
	movq	%rax, %rdi	# tmp654,
	call	emit_label	#
.L336:
	.loc 1 2331 0
	call	gen_sequence	#
	movq	%rax, -48(%rbp)	# tmp655, tem
	.loc 1 2332 0
	call	end_sequence	#
	.loc 1 2333 0
	movq	-48(%rbp), %rcx	# tem, tmp656
	movq	40(%rbp), %rdx	# insert_before, tmp657
	movq	-216(%rbp), %rax	# loop, tmp658
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp658,
	call	loop_insn_emit_before	#
	.loc 1 2334 0
	addq	$248, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	copy_loop_body, .-copy_loop_body
	.globl	emit_unrolled_add
	.type	emit_unrolled_add, @function
emit_unrolled_add:
.LFB9:
	.loc 1 2343 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# dest_reg, dest_reg
	movq	%rsi, -32(%rbp)	# src_reg, src_reg
	movq	%rdx, -40(%rbp)	# increment, increment
	.loc 1 2346 0
	movq	-24(%rbp), %rax	# dest_reg, tmp61
	movzbl	2(%rax), %eax	# dest_reg_1(D)->mode, D.14995
	movzbl	%al, %eax	# D.14995, D.14996
	movq	-24(%rbp), %rsi	# dest_reg, tmp62
	movq	-40(%rbp), %rcx	# increment, tmp63
	movq	-32(%rbp), %rdx	# src_reg, tmp64
	movl	$3, (%rsp)	#,
	movl	$0, %r9d	#,
	movq	%rsi, %r8	# tmp62,
	movl	$75, %esi	#,
	movl	%eax, %edi	# D.14996,
	call	expand_simple_binop	#
	movq	%rax, -8(%rbp)	# tmp65, result
	.loc 1 2349 0
	movq	-24(%rbp), %rax	# dest_reg, tmp66
	cmpq	-8(%rbp), %rax	# result, tmp66
	je	.L337	#,
	.loc 1 2350 0
	movq	-8(%rbp), %rdx	# result, tmp67
	movq	-24(%rbp), %rax	# dest_reg, tmp68
	movq	%rdx, %rsi	# tmp67,
	movq	%rax, %rdi	# tmp68,
	call	emit_move_insn	#
.L337:
	.loc 1 2351 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	emit_unrolled_add, .-emit_unrolled_add
	.globl	back_branch_in_range_p
	.type	back_branch_in_range_p, @function
back_branch_in_range_p:
.LFB10:
	.loc 1 2365 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# loop, loop
	movq	%rsi, -64(%rbp)	# insn, insn
	.loc 1 2367 0
	movq	-56(%rbp), %rax	# loop, tmp65
	movq	192(%rax), %rax	# loop_6(D)->start, tmp66
	movq	%rax, -24(%rbp)	# tmp66, loop_start
	.loc 1 2368 0
	movq	-56(%rbp), %rax	# loop, tmp67
	movq	200(%rax), %rax	# loop_6(D)->end, tmp68
	movq	%rax, -32(%rbp)	# tmp68, loop_end
	.loc 1 2369 0
	movq	-56(%rbp), %rax	# loop, tmp69
	movq	200(%rax), %rax	# loop_6(D)->end, tmp70
	movq	%rax, -16(%rbp)	# tmp70, orig_loop_end
	.loc 1 2372 0
	movq	-32(%rbp), %rax	# loop_end, tmp71
	movq	%rax, %rdi	# tmp71,
	call	prev_nonnote_insn	#
	movq	%rax, -32(%rbp)	# tmp72, loop_end
	.loc 1 2373 0
	movq	-32(%rbp), %rax	# loop_end, tmp73
	movzwl	(%rax), %eax	# loop_end_10->code, D.14998
	cmpw	$35, %ax	#, D.14998
	jne	.L340	#,
	.loc 1 2374 0
	movq	-32(%rbp), %rax	# loop_end, tmp74
	movq	16(%rax), %rax	# loop_end_10->fld[1].rtx, tmp75
	movq	%rax, -32(%rbp)	# tmp75, loop_end
	.loc 1 2378 0
	jmp	.L341	#
.L340:
	jmp	.L341	#
.L342:
	.loc 1 2379 0
	movq	-64(%rbp), %rax	# insn, tmp76
	movq	24(%rax), %rax	# insn_1->fld[2].rtx, tmp77
	movq	%rax, -64(%rbp)	# tmp77, insn
.L341:
	.loc 1 2378 0 discriminator 1
	movq	-64(%rbp), %rax	# insn, tmp78
	movzbl	3(%rax), %eax	# *insn_1, D.14999
	andl	$8, %eax	#, D.14999
	testb	%al, %al	# D.14999
	jne	.L342	#,
	.loc 1 2384 0
	movq	-64(%rbp), %rax	# insn, tmp79
	cmpq	-32(%rbp), %rax	# loop_end, tmp79
	je	.L343	#,
	.loc 1 2384 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# insn, tmp80
	cmpq	-16(%rbp), %rax	# orig_loop_end, tmp80
	jne	.L344	#,
.L343:
	.loc 1 2385 0 is_stmt 1
	movl	$0, %eax	#, D.14997
	jmp	.L345	#
.L344:
	.loc 1 2387 0
	movq	-64(%rbp), %rax	# insn, tmp81
	movq	24(%rax), %rax	# insn_1->fld[2].rtx, tmp82
	movq	%rax, -48(%rbp)	# tmp82, p
	jmp	.L346	#
.L351:
	.loc 1 2389 0
	movq	-48(%rbp), %rax	# p, tmp83
	movzwl	(%rax), %eax	# p_2->code, D.14998
	cmpw	$33, %ax	#, D.14998
	jne	.L347	#,
	.loc 1 2391 0
	movq	-48(%rbp), %rax	# p, tmp84
	movq	64(%rax), %rax	# p_2->fld[7].rtx, tmp85
	movq	%rax, -8(%rbp)	# tmp85, target_insn
	.loc 1 2396 0
	movq	-24(%rbp), %rax	# loop_start, tmp86
	movq	%rax, -40(%rbp)	# tmp86, q
	jmp	.L348	#
.L350:
	.loc 1 2397 0
	movq	-40(%rbp), %rax	# q, tmp87
	cmpq	-8(%rbp), %rax	# target_insn, tmp87
	jne	.L349	#,
	.loc 1 2398 0
	movl	$1, %eax	#, D.14997
	jmp	.L345	#
.L349:
	.loc 1 2396 0
	movq	-40(%rbp), %rax	# q, tmp88
	movq	24(%rax), %rax	# q_3->fld[2].rtx, tmp89
	movq	%rax, -40(%rbp)	# tmp89, q
.L348:
	.loc 1 2396 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# q, tmp90
	cmpq	-64(%rbp), %rax	# insn, tmp90
	jne	.L350	#,
.L347:
	.loc 1 2387 0 is_stmt 1
	movq	-48(%rbp), %rax	# p, tmp91
	movq	24(%rax), %rax	# p_2->fld[2].rtx, tmp92
	movq	%rax, -48(%rbp)	# tmp92, p
.L346:
	.loc 1 2387 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# p, tmp93
	cmpq	-32(%rbp), %rax	# loop_end, tmp93
	jne	.L351	#,
	.loc 1 2402 0 is_stmt 1
	movl	$0, %eax	#, D.14997
.L345:
	.loc 1 2403 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	back_branch_in_range_p, .-back_branch_in_range_p
	.type	fold_rtx_mult_add, @function
fold_rtx_mult_add:
.LFB11:
	.loc 1 2413 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# mult1, mult1
	movq	%rsi, -48(%rbp)	# mult2, mult2
	movq	%rdx, -56(%rbp)	# add1, add1
	movl	%ecx, -60(%rbp)	# mode, mode
	.loc 1 2419 0
	movq	-40(%rbp), %rax	# mult1, tmp72
	movzbl	2(%rax), %eax	# mult1_7(D)->mode, D.15000
	movzbl	%al, %eax	# D.15000, D.15001
	cmpl	-60(%rbp), %eax	# mode, D.15001
	je	.L353	#,
	.loc 1 2419 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# mult1, tmp73
	movzbl	2(%rax), %eax	# mult1_7(D)->mode, D.15000
	testb	%al, %al	# D.15000
	jne	.L354	#,
.L353:
	.loc 1 2420 0 is_stmt 1
	movq	-48(%rbp), %rax	# mult2, tmp74
	movzbl	2(%rax), %eax	# mult2_12(D)->mode, D.15000
	movzbl	%al, %eax	# D.15000, D.15001
	cmpl	-60(%rbp), %eax	# mode, D.15001
	je	.L355	#,
	.loc 1 2420 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# mult2, tmp75
	movzbl	2(%rax), %eax	# mult2_12(D)->mode, D.15000
	testb	%al, %al	# D.15000
	jne	.L354	#,
.L355:
	.loc 1 2421 0 is_stmt 1
	movq	-56(%rbp), %rax	# add1, tmp76
	movzbl	2(%rax), %eax	# add1_16(D)->mode, D.15000
	movzbl	%al, %eax	# D.15000, D.15001
	cmpl	-60(%rbp), %eax	# mode, D.15001
	je	.L356	#,
	.loc 1 2421 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# add1, tmp77
	movzbl	2(%rax), %eax	# add1_16(D)->mode, D.15000
	testb	%al, %al	# D.15000
	je	.L356	#,
.L354:
	.loc 1 2422 0 is_stmt 1
	movl	$__FUNCTION__.11500, %edx	#,
	movl	$2422, %esi	#,
	movl	$.LC13, %edi	#,
	call	fancy_abort	#
.L356:
	.loc 1 2426 0
	movq	-40(%rbp), %rax	# mult1, tmp78
	movzwl	(%rax), %eax	# mult1_7(D)->code, D.15002
	cmpw	$54, %ax	#, D.15002
	jne	.L357	#,
	.loc 1 2428 0
	movq	-48(%rbp), %rax	# mult2, tmp79
	movq	%rax, -8(%rbp)	# tmp79, temp
	.loc 1 2429 0
	movq	-40(%rbp), %rax	# mult1, tmp80
	movq	%rax, -48(%rbp)	# tmp80, mult2
	.loc 1 2430 0
	movq	-8(%rbp), %rax	# temp, tmp81
	movq	%rax, -40(%rbp)	# tmp81, mult1
.L357:
	.loc 1 2433 0
	movq	-48(%rbp), %rcx	# mult2, tmp82
	movq	-40(%rbp), %rdx	# mult1, tmp83
	movl	-60(%rbp), %eax	# mode, tmp84
	movl	%eax, %esi	# tmp84,
	movl	$78, %edi	#,
	call	simplify_binary_operation	#
	movq	%rax, -24(%rbp)	# tmp85, mult_res
	.loc 1 2434 0
	cmpq	$0, -24(%rbp)	#, mult_res
	jne	.L358	#,
	.loc 1 2435 0
	movq	-48(%rbp), %rcx	# mult2, tmp86
	movq	-40(%rbp), %rdx	# mult1, tmp87
	movl	-60(%rbp), %eax	# mode, tmp88
	movl	%eax, %esi	# tmp88,
	movl	$78, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	%rax, -24(%rbp)	# tmp89, mult_res
.L358:
	.loc 1 2438 0
	movq	-56(%rbp), %rax	# add1, tmp90
	movzwl	(%rax), %eax	# add1_16(D)->code, D.15002
	cmpw	$54, %ax	#, D.15002
	jne	.L359	#,
	.loc 1 2440 0
	movq	-56(%rbp), %rax	# add1, tmp91
	movq	%rax, -8(%rbp)	# tmp91, temp
	.loc 1 2441 0
	movq	-24(%rbp), %rax	# mult_res, tmp92
	movq	%rax, -56(%rbp)	# tmp92, add1
	.loc 1 2442 0
	movq	-8(%rbp), %rax	# temp, tmp93
	movq	%rax, -24(%rbp)	# tmp93, mult_res
.L359:
	.loc 1 2445 0
	movq	-24(%rbp), %rcx	# mult_res, tmp94
	movq	-56(%rbp), %rdx	# add1, tmp95
	movl	-60(%rbp), %eax	# mode, tmp96
	movl	%eax, %esi	# tmp96,
	movl	$75, %edi	#,
	call	simplify_binary_operation	#
	movq	%rax, -16(%rbp)	# tmp97, result
	.loc 1 2446 0
	cmpq	$0, -16(%rbp)	#, result
	jne	.L360	#,
	.loc 1 2447 0
	movq	-24(%rbp), %rcx	# mult_res, tmp98
	movq	-56(%rbp), %rdx	# add1, tmp99
	movl	-60(%rbp), %eax	# mode, tmp100
	movl	%eax, %esi	# tmp100,
	movl	$75, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	%rax, -16(%rbp)	# tmp101, result
.L360:
	.loc 1 2449 0
	movq	-16(%rbp), %rax	# result, D.15003
	.loc 1 2450 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	fold_rtx_mult_add, .-fold_rtx_mult_add
	.globl	biv_total_increment
	.type	biv_total_increment, @function
biv_total_increment:
.LFB12:
	.loc 1 2461 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# bl, bl
	.loc 1 2472 0
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, tmp70
	movq	%rax, -8(%rbp)	# tmp70, result
	.loc 1 2473 0
	movq	-24(%rbp), %rax	# bl, tmp71
	movq	8(%rax), %rax	# bl_5(D)->biv, tmp72
	movq	%rax, -16(%rbp)	# tmp72, v
	jmp	.L363	#
.L366:
	.loc 1 2475 0
	movq	-16(%rbp), %rax	# v, tmp73
	movzbl	100(%rax), %eax	# *v_1, D.15005
	andl	$8, %eax	#, D.15005
	testb	%al, %al	# D.15005
	je	.L364	#,
	.loc 1 2475 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# v, tmp74
	movq	64(%rax), %rdx	# v_1->mult_val, D.15006
	movq	const_int_rtx+520(%rip), %rax	# const_int_rtx, D.15006
	cmpq	%rax, %rdx	# D.15006, D.15006
	jne	.L364	#,
	.loc 1 2476 0 is_stmt 1
	movq	-16(%rbp), %rax	# v, tmp75
	movzbl	100(%rax), %eax	# *v_1, D.15005
	andl	$32, %eax	#, D.15005
	testb	%al, %al	# D.15005
	jne	.L364	#,
	.loc 1 2477 0
	movq	-16(%rbp), %rax	# v, tmp76
	movl	48(%rax), %ecx	# v_1->mode, D.15007
	movq	-16(%rbp), %rax	# v, tmp77
	movq	72(%rax), %rdx	# v_1->add_val, D.15006
	movq	const_int_rtx+520(%rip), %rsi	# const_int_rtx, D.15006
	movq	-8(%rbp), %rax	# result, tmp78
	movq	%rax, %rdi	# tmp78,
	call	fold_rtx_mult_add	#
	movq	%rax, -8(%rbp)	# tmp79, result
	.loc 1 2473 0
	movq	-16(%rbp), %rax	# v, tmp80
	movq	128(%rax), %rax	# v_1->next_iv, tmp81
	movq	%rax, -16(%rbp)	# tmp81, v
	jmp	.L363	#
.L364:
	.loc 1 2479 0
	movl	$0, %eax	#, D.15004
	jmp	.L365	#
.L363:
	.loc 1 2473 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, v
	jne	.L366	#,
	.loc 1 2482 0
	movq	-8(%rbp), %rax	# result, D.15004
.L365:
	.loc 1 2483 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	biv_total_increment, .-biv_total_increment
	.section	.rodata
	.align 8
.LC31:
	.string	"Biv %d initial value remapped to %d.\n"
.LC32:
	.string	"Biv %d safe to split.\n"
	.align 8
.LC33:
	.string	"Biv %d mapped to %d for split.\n"
	.text
	.type	find_splittable_regs, @function
find_splittable_regs:
.LFB13:
	.loc 1 2514 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -88(%rbp)	# loop, loop
	movl	%esi, -92(%rbp)	# unroll_type, unroll_type
	movl	%edx, -96(%rbp)	# unroll_number, unroll_number
	.loc 1 2515 0
	movq	-88(%rbp), %rax	# loop, tmp202
	movq	160(%rax), %rax	# loop_12(D)->aux, D.15008
	addq	$208, %rax	#, tmp203
	movq	%rax, -40(%rbp)	# tmp203, ivs
	.loc 1 2521 0
	movl	$0, -68(%rbp)	#, result
	.loc 1 2523 0
	movq	-40(%rbp), %rax	# ivs, tmp204
	movq	16(%rax), %rax	# ivs_14->list, tmp205
	movq	%rax, -64(%rbp)	# tmp205, bl
	jmp	.L368	#
.L397:
	.loc 1 2528 0
	movq	-64(%rbp), %rax	# bl, tmp206
	movq	%rax, %rdi	# tmp206,
	call	biv_total_increment	#
	movq	%rax, -32(%rbp)	# tmp207, increment
	.loc 1 2529 0
	cmpq	$0, -32(%rbp)	#, increment
	je	.L369	#,
	.loc 1 2529 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# increment, tmp208
	movzwl	(%rax), %eax	# increment_17->code, D.15009
	cmpw	$54, %ax	#, D.15009
	je	.L370	#,
.L369:
	.loc 1 2530 0 is_stmt 1
	jmp	.L371	#
.L370:
	.loc 1 2541 0
	movl	$1, -72(%rbp)	#, biv_splittable
	.loc 1 2542 0
	movq	$0, -48(%rbp)	#, biv_final_value
	.loc 1 2543 0
	cmpl	$0, -92(%rbp)	#, unroll_type
	je	.L372	#,
	.loc 1 2544 0
	movq	-88(%rbp), %rax	# loop, tmp209
	movl	240(%rax), %eax	# loop_12(D)->exit_count, D.15010
	testl	%eax, %eax	# D.15010
	jne	.L373	#,
	.loc 1 2544 0 is_stmt 0 discriminator 1
	cmpl	$2, -92(%rbp)	#, unroll_type
	jne	.L372	#,
.L373:
	.loc 1 2545 0 is_stmt 1
	movq	uid_luid(%rip), %rcx	# uid_luid, uid_luid.173
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.174
	movq	-64(%rbp), %rdx	# bl, tmp210
	movl	(%rdx), %edx	# bl_1->regno, D.15011
	movl	%edx, %edx	# D.15011, tmp211
	addq	$4, %rdx	#, tmp212
	movq	(%rax,%rdx,8), %rax	# reg_n_info.174_24->data.reg, D.15012
	movl	4(%rax), %eax	# _26->last_uid, D.15010
	cltq
	salq	$2, %rax	#, D.15013
	addq	%rcx, %rax	# uid_luid.173, D.15014
	movl	(%rax), %edx	# *_30, D.15010
	movq	-88(%rbp), %rax	# loop, tmp213
	movq	200(%rax), %rax	# loop_12(D)->end, D.15015
	movl	8(%rax), %ecx	# _32->fld[0].rtint, D.15010
	movl	max_uid_for_loop(%rip), %eax	# max_uid_for_loop, max_uid_for_loop.176
	cmpl	%eax, %ecx	# max_uid_for_loop.176, D.15010
	jge	.L374	#,
	.loc 1 2545 0 is_stmt 0 discriminator 1
	movq	uid_luid(%rip), %rcx	# uid_luid, uid_luid.177
	movq	-88(%rbp), %rax	# loop, tmp214
	movq	200(%rax), %rax	# loop_12(D)->end, D.15015
	movl	8(%rax), %eax	# _36->fld[0].rtint, D.15010
	cltq
	salq	$2, %rax	#, D.15013
	addq	%rcx, %rax	# uid_luid.177, D.15014
	movl	(%rax), %eax	# *_40, iftmp.175
	cmpl	%eax, %edx	# iftmp.175, D.15010
	jge	.L376	#,
	jmp	.L399	#
.L374:
	.loc 1 2545 0 discriminator 2
	movl	$__FUNCTION__.11523, %edx	#,
	movl	$2545, %esi	#,
	movl	$.LC13, %edi	#,
	call	fancy_abort	#
.L399:
	.loc 1 2546 0 is_stmt 1
	movq	-64(%rbp), %rax	# bl, tmp215
	movq	72(%rax), %rax	# bl_1->init_insn, D.15015
	testq	%rax, %rax	# D.15015
	je	.L376	#,
	.loc 1 2547 0
	movq	-64(%rbp), %rax	# bl, tmp216
	movq	72(%rax), %rax	# bl_1->init_insn, D.15015
	movl	8(%rax), %edx	# _43->fld[0].rtint, D.15010
	movl	max_uid_for_loop(%rip), %eax	# max_uid_for_loop, max_uid_for_loop.178
	cmpl	%eax, %edx	# max_uid_for_loop.178, D.15010
	jge	.L376	#,
	.loc 1 2548 0
	movq	uid_luid(%rip), %rcx	# uid_luid, uid_luid.179
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.180
	movq	-64(%rbp), %rdx	# bl, tmp217
	movl	(%rdx), %edx	# bl_1->regno, D.15011
	movl	%edx, %edx	# D.15011, tmp218
	addq	$4, %rdx	#, tmp219
	movq	(%rax,%rdx,8), %rax	# reg_n_info.180_47->data.reg, D.15012
	movl	(%rax), %eax	# _49->first_uid, D.15010
	cltq
	salq	$2, %rax	#, D.15013
	addq	%rcx, %rax	# uid_luid.179, D.15014
	movl	(%rax), %edx	# *_53, D.15010
	.loc 1 2549 0
	movq	-64(%rbp), %rax	# bl, tmp220
	movq	72(%rax), %rax	# bl_1->init_insn, D.15015
	movl	8(%rax), %ecx	# _55->fld[0].rtint, D.15010
	movl	max_uid_for_loop(%rip), %eax	# max_uid_for_loop, max_uid_for_loop.182
	cmpl	%eax, %ecx	# max_uid_for_loop.182, D.15010
	jge	.L377	#,
	.loc 1 2549 0 is_stmt 0 discriminator 1
	movq	uid_luid(%rip), %rcx	# uid_luid, uid_luid.183
	movq	-64(%rbp), %rax	# bl, tmp221
	movq	72(%rax), %rax	# bl_1->init_insn, D.15015
	movl	8(%rax), %eax	# _59->fld[0].rtint, D.15010
	cltq
	salq	$2, %rax	#, D.15013
	addq	%rcx, %rax	# uid_luid.183, D.15014
	movl	(%rax), %eax	# *_63, iftmp.181
	.loc 1 2548 0 is_stmt 1 discriminator 1
	cmpl	%eax, %edx	# iftmp.181, D.15010
	jl	.L376	#,
	jmp	.L400	#
.L377:
	.loc 1 2549 0 discriminator 2
	movl	$__FUNCTION__.11523, %edx	#,
	movl	$2549, %esi	#,
	movl	$.LC13, %edi	#,
	call	fancy_abort	#
.L400:
	.loc 1 2550 0
	movq	-64(%rbp), %rax	# bl, tmp222
	movq	80(%rax), %rax	# bl_1->init_set, D.15015
	movq	16(%rax), %rdx	# _65->fld[1].rtx, D.15015
	movq	-64(%rbp), %rax	# bl, tmp223
	movq	8(%rax), %rax	# bl_1->biv, D.15016
	movq	32(%rax), %rax	# _67->dest_reg, D.15015
	movq	%rdx, %rsi	# D.15015,
	movq	%rax, %rdi	# D.15015,
	call	reg_mentioned_p	#
	testl	%eax, %eax	# D.15010
	je	.L372	#,
.L376:
	.loc 1 2551 0
	movq	-64(%rbp), %rdx	# bl, tmp224
	movq	-88(%rbp), %rax	# loop, tmp225
	movq	%rdx, %rsi	# tmp224,
	movq	%rax, %rdi	# tmp225,
	call	final_biv_value	#
	movq	%rax, -48(%rbp)	# tmp226, biv_final_value
	cmpq	$0, -48(%rbp)	#, biv_final_value
	jne	.L372	#,
	.loc 1 2552 0
	movl	$0, -72(%rbp)	#, biv_splittable
.L372:
	.loc 1 2556 0
	movq	-64(%rbp), %rax	# bl, tmp227
	movq	8(%rax), %rax	# bl_1->biv, tmp228
	movq	%rax, -56(%rbp)	# tmp228, v
	jmp	.L379	#
.L387:
	.loc 1 2557 0
	movq	-56(%rbp), %rax	# v, tmp229
	movq	(%rax), %rax	# v_2->insn, D.15015
	movzwl	(%rax), %eax	# _73->code, D.15009
	movzwl	%ax, %eax	# D.15009, D.15010
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.15017
	cmpb	$105, %al	#, D.15017
	jne	.L380	#,
	.loc 1 2557 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# v, tmp231
	movq	(%rax), %rax	# v_2->insn, D.15015
	movq	32(%rax), %rax	# _77->fld[3].rtx, D.15015
	movzwl	(%rax), %eax	# _78->code, D.15009
	cmpw	$47, %ax	#, D.15009
	jne	.L381	#,
	.loc 1 2557 0 discriminator 3
	movq	-56(%rbp), %rax	# v, tmp232
	movq	(%rax), %rax	# v_2->insn, D.15015
	movq	32(%rax), %rax	# _80->fld[3].rtx, iftmp.185
	jmp	.L383	#
.L381:
	.loc 1 2557 0 discriminator 4
	movq	-56(%rbp), %rax	# v, tmp233
	movq	(%rax), %rax	# v_2->insn, D.15015
	movq	32(%rax), %rdx	# _82->fld[3].rtx, D.15015
	movq	-56(%rbp), %rax	# v, tmp234
	movq	(%rax), %rax	# v_2->insn, D.15015
	movq	%rdx, %rsi	# D.15015,
	movq	%rax, %rdi	# D.15015,
	call	single_set_2	#
	jmp	.L383	#
.L380:
	.loc 1 2557 0 discriminator 2
	movl	$0, %eax	#, iftmp.184
.L383:
	.loc 1 2557 0 discriminator 5
	movq	%rax, -24(%rbp)	# iftmp.184, tem
	cmpq	$0, -24(%rbp)	#, tem
	je	.L384	#,
	.loc 1 2558 0 is_stmt 1
	movq	-24(%rbp), %rax	# tem, tmp235
	movq	8(%rax), %rax	# tem_88->fld[0].rtx, D.15015
	movzwl	(%rax), %eax	# _89->code, D.15009
	cmpw	$61, %ax	#, D.15009
	jne	.L384	#,
	.loc 1 2559 0
	movq	-24(%rbp), %rax	# tem, tmp236
	movq	8(%rax), %rax	# tem_88->fld[0].rtx, D.15015
	movl	8(%rax), %edx	# _91->fld[0].rtuint, D.15011
	movq	-64(%rbp), %rax	# bl, tmp237
	movl	(%rax), %eax	# bl_1->regno, D.15011
	cmpl	%eax, %edx	# D.15011, D.15011
	jne	.L384	#,
	.loc 1 2560 0
	movq	-24(%rbp), %rax	# tem, tmp238
	movq	16(%rax), %rax	# tem_88->fld[1].rtx, D.15015
	movzwl	(%rax), %eax	# _94->code, D.15009
	cmpw	$75, %ax	#, D.15009
	je	.L385	#,
.L384:
	.loc 1 2561 0
	movl	$0, -72(%rbp)	#, biv_splittable
.L385:
	.loc 1 2556 0
	movq	-56(%rbp), %rax	# v, tmp239
	movq	128(%rax), %rax	# v_2->next_iv, tmp240
	movq	%rax, -56(%rbp)	# tmp240, v
.L379:
	.loc 1 2556 0 is_stmt 0 discriminator 1
	cmpl	$0, -72(%rbp)	#, biv_splittable
	je	.L386	#,
	.loc 1 2556 0 discriminator 2
	cmpq	$0, -56(%rbp)	#, v
	jne	.L387	#,
.L386:
	.loc 1 2571 0 is_stmt 1
	cmpl	$1, -72(%rbp)	#, biv_splittable
	jne	.L388	#,
	.loc 1 2573 0
	cmpl	$0, -92(%rbp)	#, unroll_type
	jne	.L389	#,
	.loc 1 2580 0
	movq	-64(%rbp), %rax	# bl, tmp241
	movq	40(%rax), %rax	# bl_1->initial_value, D.15015
	movzwl	(%rax), %eax	# _98->code, D.15009
	cmpw	$61, %ax	#, D.15009
	jne	.L390	#,
	.loc 1 2581 0
	movq	-64(%rbp), %rax	# bl, tmp242
	movq	40(%rax), %rax	# bl_1->initial_value, D.15015
	movl	8(%rax), %edx	# _100->fld[0].rtuint, D.15011
	movq	-64(%rbp), %rax	# bl, tmp243
	movl	(%rax), %eax	# bl_1->regno, D.15011
	cmpl	%eax, %edx	# D.15011, D.15011
	je	.L391	#,
	.loc 1 2582 0
	movq	-64(%rbp), %rax	# bl, tmp244
	movq	40(%rax), %rax	# bl_1->initial_value, D.15015
	movl	8(%rax), %eax	# _103->fld[0].rtuint, D.15011
	cmpl	$52, %eax	#, D.15011
	jbe	.L391	#,
	.loc 1 2583 0
	movq	-64(%rbp), %rax	# bl, tmp245
	movq	40(%rax), %rdx	# bl_1->initial_value, D.15015
	movq	-88(%rbp), %rax	# loop, tmp246
	movq	%rdx, %rsi	# D.15015,
	movq	%rax, %rdi	# tmp246,
	call	loop_invariant_p	#
	testl	%eax, %eax	# D.15010
	jne	.L390	#,
.L391:
.LBB24:
	.loc 1 2585 0
	movq	-64(%rbp), %rax	# bl, tmp247
	movq	8(%rax), %rax	# bl_1->biv, D.15016
	movl	48(%rax), %eax	# _107->mode, D.15018
	movl	%eax, %edi	# D.15018,
	call	gen_reg_rtx	#
	movq	%rax, -16(%rbp)	# tmp248, tem
	.loc 1 2587 0
	movq	-64(%rbp), %rax	# bl, tmp249
	movq	8(%rax), %rax	# bl_1->biv, D.15016
	movq	72(%rax), %rcx	# _110->add_val, D.15015
	movq	-16(%rbp), %rax	# tem, tmp250
	movl	8(%rax), %eax	# tem_109->fld[0].rtuint, D.15011
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.15015,
	movl	%eax, %edi	# D.15011,
	call	record_base_value	#
	.loc 1 2589 0
	movq	-64(%rbp), %rax	# bl, tmp251
	movq	8(%rax), %rax	# bl_1->biv, D.15016
	.loc 1 2588 0
	movq	16(%rax), %rdx	# _113->src_reg, D.15015
	movq	-16(%rbp), %rax	# tem, tmp252
	movq	%rdx, %rsi	# D.15015,
	movq	%rax, %rdi	# tmp252,
	call	gen_move_insn	#
	movq	%rax, %rdx	#, D.15015
	movq	-88(%rbp), %rax	# loop, tmp253
	movq	%rdx, %rsi	# D.15015,
	movq	%rax, %rdi	# tmp253,
	call	loop_insn_hoist	#
	.loc 1 2591 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.186
	testq	%rax, %rax	# loop_dump_stream.186
	je	.L392	#,
	.loc 1 2592 0
	movq	-16(%rbp), %rax	# tem, tmp254
	movl	8(%rax), %ecx	# tem_109->fld[0].rtuint, D.15011
	movq	-64(%rbp), %rax	# bl, tmp255
	movl	(%rax), %edx	# bl_1->regno, D.15011
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.187
	movl	$.LC31, %esi	#,
	movq	%rax, %rdi	# loop_dump_stream.187,
	movl	$0, %eax	#,
	call	fprintf	#
.L392:
	.loc 1 2596 0
	movq	splittable_regs(%rip), %rdx	# splittable_regs, splittable_regs.188
	movq	-64(%rbp), %rax	# bl, tmp256
	movl	(%rax), %eax	# bl_1->regno, D.15011
	movl	%eax, %eax	# D.15011, D.15013
	salq	$3, %rax	#, D.15013
	addq	%rax, %rdx	# D.15013, D.15019
	movq	-16(%rbp), %rax	# tem, tmp257
	movq	%rax, (%rdx)	# tmp257, *_124
.LBE24:
	.loc 1 2584 0
	nop
	jmp	.L394	#
.L390:
	.loc 1 2599 0
	movq	splittable_regs(%rip), %rdx	# splittable_regs, splittable_regs.189
	movq	-64(%rbp), %rax	# bl, tmp258
	movl	(%rax), %eax	# bl_1->regno, D.15011
	movl	%eax, %eax	# D.15011, D.15013
	salq	$3, %rax	#, D.15013
	addq	%rax, %rdx	# D.15013, D.15019
	movq	-64(%rbp), %rax	# bl, tmp259
	movq	40(%rax), %rax	# bl_1->initial_value, D.15015
	movq	%rax, (%rdx)	# D.15015, *_129
	jmp	.L394	#
.L389:
	.loc 1 2602 0
	movq	splittable_regs(%rip), %rdx	# splittable_regs, splittable_regs.190
	movq	-64(%rbp), %rax	# bl, tmp260
	movl	(%rax), %eax	# bl_1->regno, D.15011
	movl	%eax, %eax	# D.15011, D.15013
	salq	$3, %rax	#, D.15013
	addq	%rax, %rdx	# D.15013, D.15019
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, D.15015
	movq	%rax, (%rdx)	# D.15015, *_135
.L394:
	.loc 1 2607 0
	movq	splittable_regs_updates(%rip), %rdx	# splittable_regs_updates, splittable_regs_updates.191
	movq	-64(%rbp), %rax	# bl, tmp261
	movl	(%rax), %eax	# bl_1->regno, D.15011
	movl	%eax, %eax	# D.15011, D.15013
	salq	$2, %rax	#, D.15013
	addq	%rax, %rdx	# D.15013, D.15014
	movq	-64(%rbp), %rax	# bl, tmp262
	movl	4(%rax), %eax	# bl_1->biv_count, D.15010
	movl	%eax, (%rdx)	# D.15010, *_141
	.loc 1 2608 0
	movq	-64(%rbp), %rax	# bl, tmp263
	movl	4(%rax), %eax	# bl_1->biv_count, D.15010
	addl	%eax, -68(%rbp)	# D.15010, result
	.loc 1 2610 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.192
	testq	%rax, %rax	# loop_dump_stream.192
	je	.L388	#,
	.loc 1 2611 0
	movq	-64(%rbp), %rax	# bl, tmp264
	movl	(%rax), %edx	# bl_1->regno, D.15011
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.193
	movl	$.LC32, %esi	#,
	movq	%rax, %rdi	# loop_dump_stream.193,
	movl	$0, %eax	#,
	call	fprintf	#
.L388:
	.loc 1 2620 0
	movl	-96(%rbp), %edi	# unroll_number, tmp265
	movq	-32(%rbp), %rcx	# increment, tmp266
	movl	-92(%rbp), %edx	# unroll_type, tmp267
	movq	-64(%rbp), %rsi	# bl, tmp268
	movq	-88(%rbp), %rax	# loop, tmp269
	movl	%edi, %r8d	# tmp265,
	movq	%rax, %rdi	# tmp269,
	call	find_splittable_givs	#
	addl	%eax, -68(%rbp)	# D.15010, result
	.loc 1 2627 0
	cmpq	$0, -48(%rbp)	#, biv_final_value
	je	.L371	#,
	.loc 1 2633 0
	movq	-88(%rbp), %rax	# loop, tmp270
	movl	240(%rax), %eax	# loop_12(D)->exit_count, D.15010
	testl	%eax, %eax	# D.15010
	jne	.L395	#,
	.loc 1 2634 0
	movq	-64(%rbp), %rax	# bl, tmp271
	movq	8(%rax), %rax	# bl_1->biv, D.15016
	movq	16(%rax), %rax	# _152->src_reg, D.15015
	movq	-48(%rbp), %rdx	# biv_final_value, tmp272
	movq	%rdx, %rsi	# tmp272,
	movq	%rax, %rdi	# D.15015,
	call	gen_move_insn	#
	movq	%rax, %rdx	#, D.15015
	movq	-88(%rbp), %rax	# loop, tmp273
	movq	%rdx, %rsi	# D.15015,
	movq	%rax, %rdi	# tmp273,
	call	loop_insn_sink	#
	jmp	.L371	#
.L395:
.LBB25:
	.loc 1 2643 0
	movq	-64(%rbp), %rax	# bl, tmp274
	movq	8(%rax), %rax	# bl_1->biv, D.15016
	movl	48(%rax), %eax	# _155->mode, D.15018
	movl	%eax, %edi	# D.15018,
	call	gen_reg_rtx	#
	movq	%rax, -8(%rbp)	# tmp275, tem
	.loc 1 2644 0
	movq	-64(%rbp), %rax	# bl, tmp276
	movq	8(%rax), %rax	# bl_1->biv, D.15016
	movq	72(%rax), %rcx	# _158->add_val, D.15015
	movq	-8(%rbp), %rax	# tem, tmp277
	movl	8(%rax), %eax	# tem_157->fld[0].rtuint, D.15011
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.15015,
	movl	%eax, %edi	# D.15011,
	call	record_base_value	#
	.loc 1 2646 0
	movq	-64(%rbp), %rax	# bl, tmp278
	movq	8(%rax), %rax	# bl_1->biv, D.15016
	movq	16(%rax), %rdx	# _161->src_reg, D.15015
	movq	-8(%rbp), %rax	# tem, tmp279
	movq	%rdx, %rsi	# D.15015,
	movq	%rax, %rdi	# tmp279,
	call	gen_move_insn	#
	movq	%rax, %rdx	#, D.15015
	movq	-88(%rbp), %rax	# loop, tmp280
	movq	%rdx, %rsi	# D.15015,
	movq	%rax, %rdi	# tmp280,
	call	loop_insn_hoist	#
	.loc 1 2647 0
	movq	-64(%rbp), %rax	# bl, tmp281
	movq	8(%rax), %rax	# bl_1->biv, D.15016
	movq	16(%rax), %rax	# _164->src_reg, D.15015
	movq	-48(%rbp), %rdx	# biv_final_value, tmp282
	movq	%rdx, %rsi	# tmp282,
	movq	%rax, %rdi	# D.15015,
	call	gen_move_insn	#
	movq	%rax, %rdx	#, D.15015
	movq	-88(%rbp), %rax	# loop, tmp283
	movq	%rdx, %rsi	# D.15015,
	movq	%rax, %rdi	# tmp283,
	call	loop_insn_hoist	#
	.loc 1 2650 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.194
	testq	%rax, %rax	# loop_dump_stream.194
	je	.L396	#,
	.loc 1 2651 0
	movq	-8(%rbp), %rax	# tem, tmp284
	movl	8(%rax), %ecx	# tem_157->fld[0].rtuint, D.15011
	.loc 1 2652 0
	movq	-64(%rbp), %rax	# bl, tmp285
	movq	8(%rax), %rax	# bl_1->biv, D.15016
	movq	16(%rax), %rax	# _169->src_reg, D.15015
	.loc 1 2651 0
	movl	8(%rax), %edx	# _170->fld[0].rtuint, D.15011
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.195
	movl	$.LC33, %esi	#,
	movq	%rax, %rdi	# loop_dump_stream.195,
	movl	$0, %eax	#,
	call	fprintf	#
.L396:
	.loc 1 2656 0
	movq	-64(%rbp), %rax	# bl, tmp286
	movq	8(%rax), %rax	# bl_1->biv, D.15016
	movq	-8(%rbp), %rdx	# tem, tmp287
	movq	%rdx, 16(%rax)	# tmp287, _173->src_reg
.L371:
.LBE25:
	.loc 1 2523 0
	movq	-64(%rbp), %rax	# bl, tmp288
	movq	64(%rax), %rax	# bl_1->next, tmp289
	movq	%rax, -64(%rbp)	# tmp289, bl
.L368:
	.loc 1 2523 0 is_stmt 0 discriminator 1
	cmpq	$0, -64(%rbp)	#, bl
	jne	.L397	#,
	.loc 1 2660 0 is_stmt 1
	movl	-68(%rbp), %eax	# result, D.15010
	.loc 1 2661 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	find_splittable_regs, .-find_splittable_regs
	.type	verify_addresses, @function
verify_addresses:
.LFB14:
	.loc 1 2672 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# v, v
	movq	%rsi, -48(%rbp)	# giv_inc, giv_inc
	movl	%edx, -52(%rbp)	# unroll_number, unroll_number
	.loc 1 2673 0
	movl	$1, -20(%rbp)	#, ret
	.loc 1 2674 0
	movq	-40(%rbp), %rax	# v, tmp80
	movq	40(%rax), %rax	# v_3(D)->location, D.15023
	movq	(%rax), %rax	# *_4, tmp81
	movq	%rax, -16(%rbp)	# tmp81, orig_addr
	.loc 1 2675 0
	movq	-48(%rbp), %rax	# giv_inc, tmp82
	movq	8(%rax), %rdx	# giv_inc_6(D)->fld[0].rtwint, D.15024
	movl	-52(%rbp), %eax	# unroll_number, tmp83
	subl	$1, %eax	#, D.15025
	cltq
	imulq	%rax, %rdx	# D.15024, D.15024
	movq	-40(%rbp), %rax	# v, tmp84
	movq	32(%rax), %rax	# v_3(D)->dest_reg, D.15026
	movq	%rdx, %rsi	# D.15024,
	movq	%rax, %rdi	# D.15026,
	call	plus_constant_wide	#
	movq	%rax, -8(%rbp)	# tmp85, last_addr
	.loc 1 2680 0
	movq	-40(%rbp), %rax	# v, tmp86
	movq	(%rax), %rdx	# v_3(D)->insn, D.15026
	movq	-40(%rbp), %rax	# v, tmp87
	movq	32(%rax), %rcx	# v_3(D)->dest_reg, D.15026
	movq	-40(%rbp), %rax	# v, tmp88
	movq	40(%rax), %rax	# v_3(D)->location, D.15023
	movq	(%rax), %rax	# *_16, D.15026
	movq	%rcx, %rsi	# D.15026,
	movq	%rax, %rdi	# D.15026,
	call	validate_replace_rtx	#
	testl	%eax, %eax	# D.15025
	je	.L402	#,
	.loc 1 2681 0
	movq	-40(%rbp), %rax	# v, tmp89
	movq	(%rax), %rdx	# v_3(D)->insn, D.15026
	movq	-40(%rbp), %rax	# v, tmp90
	movq	40(%rax), %rax	# v_3(D)->location, D.15023
	movq	(%rax), %rax	# *_20, D.15026
	movq	-8(%rbp), %rcx	# last_addr, tmp91
	movq	%rcx, %rsi	# tmp91,
	movq	%rax, %rdi	# D.15026,
	call	validate_replace_rtx	#
	testl	%eax, %eax	# D.15025
	jne	.L403	#,
.L402:
	.loc 1 2682 0
	movl	$0, -20(%rbp)	#, ret
.L403:
	.loc 1 2686 0
	movq	-40(%rbp), %rax	# v, tmp92
	movq	(%rax), %rdx	# v_3(D)->insn, D.15026
	movq	-40(%rbp), %rax	# v, tmp93
	movq	40(%rax), %rax	# v_3(D)->location, D.15023
	movq	(%rax), %rax	# *_25, D.15026
	movq	-16(%rbp), %rcx	# orig_addr, tmp94
	movq	%rcx, %rsi	# tmp94,
	movq	%rax, %rdi	# D.15026,
	call	validate_replace_rtx	#
	testl	%eax, %eax	# D.15025
	jne	.L404	#,
	.loc 1 2687 0
	movl	$__FUNCTION__.11540, %edx	#,
	movl	$2687, %esi	#,
	movl	$.LC13, %edi	#,
	call	fancy_abort	#
.L404:
	.loc 1 2689 0
	movl	-20(%rbp), %eax	# ret, D.15025
	.loc 1 2690 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	verify_addresses, .-verify_addresses
	.section	.rodata
	.align 8
.LC34:
	.string	"giv combined with unreduced giv not split.\n"
	.align 8
.LC35:
	.string	"Sharing address givs in insn %d\n"
	.align 8
.LC36:
	.string	"Eliminating constant from giv %d\n"
	.align 8
.LC37:
	.string	"Invalid address for giv at insn %d\n"
	.align 8
.LC38:
	.string	"Invalid init insn, rewritten.\n"
.LC39:
	.string	"DEST_ADDR giv being split.\n"
	.align 8
.LC40:
	.string	"Giv %d at insn %d safe to split.\n"
	.text
	.type	find_splittable_givs, @function
find_splittable_givs:
.LFB15:
	.loc 1 2704 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$176, %rsp	#,
	movq	%rdi, -152(%rbp)	# loop, loop
	movq	%rsi, -160(%rbp)	# bl, bl
	movl	%edx, -164(%rbp)	# unroll_type, unroll_type
	movq	%rcx, -176(%rbp)	# increment, increment
	movl	%r8d, -168(%rbp)	# unroll_number, unroll_number
	.loc 1 2705 0
	movq	-152(%rbp), %rax	# loop, tmp306
	movq	160(%rax), %rax	# loop_16(D)->aux, D.15027
	addq	$208, %rax	#, tmp307
	movq	%rax, -80(%rbp)	# tmp307, ivs
	.loc 1 2709 0
	movl	$0, -132(%rbp)	#, result
	.loc 1 2713 0
	movq	-160(%rbp), %rax	# bl, tmp308
	movq	24(%rax), %rax	# bl_20(D)->giv, tmp309
	movq	%rax, -120(%rbp)	# tmp309, v
	jmp	.L407	#
.L411:
	.loc 1 2714 0
	movq	-120(%rbp), %rax	# v, tmp310
	movq	128(%rax), %rax	# v_1->next_iv, tmp311
	movq	%rax, -112(%rbp)	# tmp311, v2
	jmp	.L408	#
.L410:
	.loc 1 2715 0
	movq	-120(%rbp), %rax	# v, tmp312
	movq	(%rax), %rdx	# v_1->insn, D.15028
	movq	-112(%rbp), %rax	# v2, tmp313
	movq	(%rax), %rax	# v2_3->insn, D.15028
	cmpq	%rax, %rdx	# D.15028, D.15028
	jne	.L409	#,
	.loc 1 2715 0 is_stmt 0 discriminator 1
	movq	-112(%rbp), %rax	# v2, tmp314
	movq	8(%rax), %rdx	# v2_3->new_reg, D.15028
	movq	-120(%rbp), %rax	# v, tmp315
	movq	8(%rax), %rax	# v_1->new_reg, D.15028
	movq	%rdx, %rsi	# D.15028,
	movq	%rax, %rdi	# D.15028,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.15029
	je	.L409	#,
	.loc 1 2716 0 is_stmt 1
	movq	-112(%rbp), %rax	# v2, tmp316
	movq	152(%rax), %rax	# v2_3->same_insn, D.15030
	testq	%rax, %rax	# D.15030
	jne	.L409	#,
	.loc 1 2717 0
	movq	-112(%rbp), %rax	# v2, tmp317
	movq	-120(%rbp), %rdx	# v, tmp318
	movq	%rdx, 152(%rax)	# tmp318, v2_3->same_insn
.L409:
	.loc 1 2714 0
	movq	-112(%rbp), %rax	# v2, tmp319
	movq	128(%rax), %rax	# v2_3->next_iv, tmp320
	movq	%rax, -112(%rbp)	# tmp320, v2
.L408:
	.loc 1 2714 0 is_stmt 0 discriminator 1
	cmpq	$0, -112(%rbp)	#, v2
	jne	.L410	#,
	.loc 1 2713 0 is_stmt 1
	movq	-120(%rbp), %rax	# v, tmp321
	movq	128(%rax), %rax	# v_1->next_iv, tmp322
	movq	%rax, -120(%rbp)	# tmp322, v
.L407:
	.loc 1 2713 0 is_stmt 0 discriminator 1
	cmpq	$0, -120(%rbp)	#, v
	jne	.L411	#,
	.loc 1 2719 0 is_stmt 1
	movq	-160(%rbp), %rax	# bl, tmp323
	movq	24(%rax), %rax	# bl_20(D)->giv, tmp324
	movq	%rax, -120(%rbp)	# tmp324, v
	jmp	.L412	#
.L469:
.LBB26:
	.loc 1 2725 0
	cmpl	$0, -164(%rbp)	#, unroll_type
	je	.L413	#,
	.loc 1 2725 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# v, tmp325
	movzbl	100(%rax), %eax	# *v_2, D.15031
	andl	$4, %eax	#, D.15031
	testb	%al, %al	# D.15031
	je	.L413	#,
	.loc 1 2726 0 is_stmt 1
	jmp	.L414	#
.L413:
	.loc 1 2734 0
	movq	-120(%rbp), %rax	# v, tmp326
	movl	24(%rax), %eax	# v_2->giv_type, D.15032
	testl	%eax, %eax	# D.15032
	je	.L415	#,
	.loc 1 2735 0
	movq	-120(%rbp), %rax	# v, tmp327
	movzbl	100(%rax), %eax	# *v_2, D.15031
	andl	$8, %eax	#, D.15031
	testb	%al, %al	# D.15031
	je	.L416	#,
	.loc 1 2736 0
	movq	-120(%rbp), %rax	# v, tmp328
	movq	(%rax), %rdx	# v_2->insn, D.15028
	movq	-152(%rbp), %rax	# loop, tmp329
	movq	%rdx, %rsi	# D.15028,
	movq	%rax, %rdi	# tmp329,
	call	back_branch_in_range_p	#
	testl	%eax, %eax	# D.15029
	je	.L415	#,
.L416:
	.loc 1 2737 0
	jmp	.L414	#
.L415:
	.loc 1 2740 0
	movq	-120(%rbp), %rax	# v, tmp330
	movl	48(%rax), %ecx	# v_2->mode, D.15033
	movq	const_int_rtx+512(%rip), %rdx	# const_int_rtx, D.15028
	movq	-120(%rbp), %rax	# v, tmp331
	movq	64(%rax), %rax	# v_2->mult_val, D.15028
	movq	-176(%rbp), %rsi	# increment, tmp332
	movq	%rax, %rdi	# D.15028,
	call	fold_rtx_mult_add	#
	movq	%rax, -72(%rbp)	# tmp333, giv_inc
	.loc 1 2742 0
	cmpq	$0, -72(%rbp)	#, giv_inc
	je	.L417	#,
	.loc 1 2742 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# giv_inc, tmp334
	movzwl	(%rax), %eax	# giv_inc_44->code, D.15034
	cmpw	$54, %ax	#, D.15034
	je	.L418	#,
.L417:
	.loc 1 2743 0 is_stmt 1
	jmp	.L414	#
.L418:
	.loc 1 2755 0
	movq	$0, -64(%rbp)	#, final_value
	.loc 1 2756 0
	cmpl	$0, -164(%rbp)	#, unroll_type
	je	.L419	#,
	.loc 1 2757 0
	movq	-152(%rbp), %rax	# loop, tmp335
	movl	240(%rax), %eax	# loop_16(D)->exit_count, D.15029
	testl	%eax, %eax	# D.15029
	jne	.L420	#,
	.loc 1 2757 0 is_stmt 0 discriminator 1
	cmpl	$2, -164(%rbp)	#, unroll_type
	jne	.L419	#,
.L420:
	.loc 1 2758 0 is_stmt 1
	movq	-120(%rbp), %rax	# v, tmp336
	movl	24(%rax), %eax	# v_2->giv_type, D.15032
	testl	%eax, %eax	# D.15032
	je	.L419	#,
	.loc 1 2762 0
	movq	-120(%rbp), %rax	# v, tmp337
	movq	32(%rax), %rax	# v_2->dest_reg, D.15028
	movl	8(%rax), %edx	# _49->fld[0].rtuint, D.15035
	movl	max_reg_before_loop(%rip), %eax	# max_reg_before_loop, max_reg_before_loop.196
	cmpl	%eax, %edx	# max_reg_before_loop.196, D.15035
	jae	.L421	#,
	.loc 1 2763 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.197
	movq	-120(%rbp), %rdx	# v, tmp338
	movq	32(%rdx), %rdx	# v_2->dest_reg, D.15028
	movl	8(%rdx), %edx	# _53->fld[0].rtuint, D.15035
	movl	%edx, %edx	# D.15035, tmp339
	addq	$4, %rdx	#, tmp340
	movq	(%rax,%rdx,8), %rax	# reg_n_info.197_52->data.reg, D.15036
	movl	(%rax), %edx	# _55->first_uid, D.15029
	movq	-120(%rbp), %rax	# v, tmp341
	movq	(%rax), %rax	# v_2->insn, D.15028
	movl	8(%rax), %eax	# _57->fld[0].rtint, D.15029
	cmpl	%eax, %edx	# D.15029, D.15029
	je	.L422	#,
	.loc 1 2767 0
	movq	-120(%rbp), %rax	# v, tmp342
	movq	(%rax), %rax	# v_2->insn, D.15028
	movl	$0, %edx	#,
	movl	$6, %esi	#,
	movq	%rax, %rdi	# D.15028,
	call	find_reg_note	#
	movq	%rax, -56(%rbp)	# tmp343, tem
	cmpq	$0, -56(%rbp)	#, tem
	je	.L421	#,
	.loc 1 2768 0
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.198
	movq	-120(%rbp), %rdx	# v, tmp344
	movq	32(%rdx), %rdx	# v_2->dest_reg, D.15028
	movl	8(%rdx), %edx	# _62->fld[0].rtuint, D.15035
	movl	%edx, %edx	# D.15035, tmp345
	addq	$4, %rdx	#, tmp346
	movq	(%rax,%rdx,8), %rax	# reg_n_info.198_61->data.reg, D.15036
	movl	(%rax), %edx	# _64->first_uid, D.15029
	.loc 1 2769 0
	movq	-56(%rbp), %rax	# tem, tmp347
	movq	8(%rax), %rax	# tem_60->fld[0].rtx, D.15028
	movl	8(%rax), %eax	# _66->fld[0].rtint, D.15029
	.loc 1 2768 0
	cmpl	%eax, %edx	# D.15029, D.15029
	jne	.L421	#,
.L422:
	.loc 1 2771 0
	movq	uid_luid(%rip), %rcx	# uid_luid, uid_luid.199
	movq	reg_n_info(%rip), %rax	# reg_n_info, reg_n_info.200
	movq	-120(%rbp), %rdx	# v, tmp348
	movq	32(%rdx), %rdx	# v_2->dest_reg, D.15028
	movl	8(%rdx), %edx	# _70->fld[0].rtuint, D.15035
	movl	%edx, %edx	# D.15035, tmp349
	addq	$4, %rdx	#, tmp350
	movq	(%rax,%rdx,8), %rax	# reg_n_info.200_69->data.reg, D.15036
	movl	4(%rax), %eax	# _72->last_uid, D.15029
	cltq
	salq	$2, %rax	#, D.15037
	addq	%rcx, %rax	# uid_luid.199, D.15038
	movl	(%rax), %edx	# *_76, D.15029
	.loc 1 2772 0
	movq	-152(%rbp), %rax	# loop, tmp351
	movq	200(%rax), %rax	# loop_16(D)->end, D.15028
	movl	8(%rax), %ecx	# _78->fld[0].rtint, D.15029
	movl	max_uid_for_loop(%rip), %eax	# max_uid_for_loop, max_uid_for_loop.202
	cmpl	%eax, %ecx	# max_uid_for_loop.202, D.15029
	jge	.L423	#,
	.loc 1 2772 0 is_stmt 0 discriminator 1
	movq	uid_luid(%rip), %rcx	# uid_luid, uid_luid.203
	movq	-152(%rbp), %rax	# loop, tmp352
	movq	200(%rax), %rax	# loop_16(D)->end, D.15028
	movl	8(%rax), %eax	# _82->fld[0].rtint, D.15029
	cltq
	salq	$2, %rax	#, D.15037
	addq	%rcx, %rax	# uid_luid.203, D.15038
	movl	(%rax), %eax	# *_86, iftmp.201
	.loc 1 2771 0 is_stmt 1 discriminator 1
	cmpl	%eax, %edx	# iftmp.201, D.15029
	jl	.L419	#,
	jmp	.L421	#
.L423:
	.loc 1 2772 0 discriminator 2
	movl	$__FUNCTION__.11563, %edx	#,
	movl	$2772, %esi	#,
	movl	$.LC13, %edi	#,
	call	fancy_abort	#
.L421:
	.loc 1 2773 0
	movq	-120(%rbp), %rax	# v, tmp353
	movq	88(%rax), %rax	# v_2->final_value, tmp354
	movq	%rax, -64(%rbp)	# tmp354, final_value
	cmpq	$0, -64(%rbp)	#, final_value
	jne	.L419	#,
	.loc 1 2774 0
	jmp	.L414	#
.L419:
	.loc 1 2804 0
	cmpl	$0, -164(%rbp)	#, unroll_type
	jne	.L425	#,
.LBB27:
	.loc 1 2813 0
	movq	splittable_regs(%rip), %rdx	# splittable_regs, splittable_regs.204
	movq	-160(%rbp), %rax	# bl, tmp355
	movl	(%rax), %eax	# bl_20(D)->regno, D.15035
	movl	%eax, %eax	# D.15035, D.15037
	salq	$3, %rax	#, D.15037
	addq	%rdx, %rax	# splittable_regs.204, D.15039
	movq	(%rax), %rax	# *_93, D.15028
	testq	%rax, %rax	# D.15028
	je	.L426	#,
	.loc 1 2814 0
	movq	splittable_regs(%rip), %rdx	# splittable_regs, splittable_regs.205
	movq	-160(%rbp), %rax	# bl, tmp356
	movl	(%rax), %eax	# bl_20(D)->regno, D.15035
	movl	%eax, %eax	# D.15035, D.15037
	salq	$3, %rax	#, D.15037
	addq	%rdx, %rax	# splittable_regs.205, D.15039
	movq	(%rax), %rax	# *_99, tmp357
	movq	%rax, -96(%rbp)	# tmp357, biv_initial_value
	jmp	.L427	#
.L426:
	.loc 1 2815 0
	movq	-160(%rbp), %rax	# bl, tmp358
	movq	40(%rax), %rax	# bl_20(D)->initial_value, D.15028
	movzwl	(%rax), %eax	# _101->code, D.15034
	cmpw	$61, %ax	#, D.15034
	jne	.L428	#,
	.loc 1 2816 0
	movq	-160(%rbp), %rax	# bl, tmp359
	movq	40(%rax), %rax	# bl_20(D)->initial_value, D.15028
	movl	8(%rax), %edx	# _103->fld[0].rtuint, D.15035
	movq	-160(%rbp), %rax	# bl, tmp360
	movl	(%rax), %eax	# bl_20(D)->regno, D.15035
	cmpl	%eax, %edx	# D.15035, D.15035
	je	.L429	#,
	.loc 1 2817 0
	movq	-160(%rbp), %rax	# bl, tmp361
	movq	40(%rax), %rax	# bl_20(D)->initial_value, D.15028
	movl	8(%rax), %eax	# _106->fld[0].rtuint, D.15035
	cmpl	$52, %eax	#, D.15035
	jbe	.L429	#,
.L428:
	.loc 1 2818 0
	movq	-160(%rbp), %rax	# bl, tmp362
	movq	40(%rax), %rax	# bl_20(D)->initial_value, tmp363
	movq	%rax, -96(%rbp)	# tmp363, biv_initial_value
	jmp	.L427	#
.L429:
.LBB28:
	.loc 1 2821 0
	movq	-160(%rbp), %rax	# bl, tmp364
	movq	8(%rax), %rax	# bl_20(D)->biv, D.15030
	movl	48(%rax), %eax	# _108->mode, D.15033
	movl	%eax, %edi	# D.15033,
	call	gen_reg_rtx	#
	movq	%rax, -48(%rbp)	# tmp365, tem
	.loc 1 2823 0
	movq	-160(%rbp), %rax	# bl, tmp366
	movq	8(%rax), %rax	# bl_20(D)->biv, D.15030
	movq	72(%rax), %rcx	# _111->add_val, D.15028
	movq	-48(%rbp), %rax	# tem, tmp367
	movl	8(%rax), %eax	# tem_110->fld[0].rtuint, D.15035
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.15028,
	movl	%eax, %edi	# D.15035,
	call	record_base_value	#
	.loc 1 2824 0
	movq	-160(%rbp), %rax	# bl, tmp368
	movq	8(%rax), %rax	# bl_20(D)->biv, D.15030
	movq	16(%rax), %rdx	# _114->src_reg, D.15028
	movq	-48(%rbp), %rax	# tem, tmp369
	movq	%rdx, %rsi	# D.15028,
	movq	%rax, %rdi	# tmp369,
	call	gen_move_insn	#
	movq	%rax, %rdx	#, D.15028
	movq	-152(%rbp), %rax	# loop, tmp370
	movq	%rdx, %rsi	# D.15028,
	movq	%rax, %rdi	# tmp370,
	call	loop_insn_hoist	#
	.loc 1 2825 0
	movq	-48(%rbp), %rax	# tem, tmp371
	movq	%rax, -96(%rbp)	# tmp371, biv_initial_value
.L427:
.LBE28:
	.loc 1 2827 0 discriminator 1
	movq	-96(%rbp), %rdx	# biv_initial_value, tmp372
	movq	-120(%rbp), %rax	# v, tmp373
	movq	%rdx, %rsi	# tmp372,
	movq	%rax, %rdi	# tmp373,
	call	extend_value_for_giv	#
	movq	%rax, -96(%rbp)	# tmp374, biv_initial_value
	.loc 1 2828 0 discriminator 1
	movq	-120(%rbp), %rax	# v, tmp375
	movl	48(%rax), %ecx	# v_2->mode, D.15033
	movq	-120(%rbp), %rax	# v, tmp376
	movq	72(%rax), %rdx	# v_2->add_val, D.15028
	movq	-120(%rbp), %rax	# v, tmp377
	movq	64(%rax), %rax	# v_2->mult_val, D.15028
	movq	-96(%rbp), %rsi	# biv_initial_value, tmp378
	movq	%rax, %rdi	# D.15028,
	call	fold_rtx_mult_add	#
	movq	%rax, -104(%rbp)	# tmp379, value
.LBE27:
	jmp	.L430	#
.L425:
	.loc 1 2832 0
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, tmp380
	movq	%rax, -104(%rbp)	# tmp380, value
.L430:
	.loc 1 2834 0
	movq	-120(%rbp), %rax	# v, tmp381
	movq	8(%rax), %rax	# v_2->new_reg, D.15028
	testq	%rax, %rax	# D.15028
	je	.L431	#,
	.loc 1 2840 0
	movq	-120(%rbp), %rax	# v, tmp382
	movq	136(%rax), %rax	# v_2->same, D.15030
	testq	%rax, %rax	# D.15030
	je	.L432	#,
	.loc 1 2840 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# v, tmp383
	movq	136(%rax), %rax	# v_2->same, D.15030
	movq	8(%rax), %rax	# _127->new_reg, D.15028
	testq	%rax, %rax	# D.15028
	jne	.L432	#,
	.loc 1 2842 0 is_stmt 1
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.206
	testq	%rax, %rax	# loop_dump_stream.206
	je	.L433	#,
	.loc 1 2843 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.207
	movq	%rax, %rcx	# loop_dump_stream.207,
	movl	$43, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC34, %edi	#,
	call	fwrite	#
	.loc 1 2845 0
	jmp	.L414	#
.L433:
	jmp	.L414	#
.L432:
	.loc 1 2849 0
	movq	-120(%rbp), %rax	# v, tmp384
	movl	24(%rax), %eax	# v_2->giv_type, D.15032
	cmpl	$1, %eax	#, D.15032
	jne	.L434	#,
	.loc 1 2857 0
	cmpl	$0, -164(%rbp)	#, unroll_type
	jne	.L435	#,
	.loc 1 2858 0
	movq	-104(%rbp), %rax	# value, tmp385
	movzwl	(%rax), %eax	# value_8->code, D.15034
	cmpw	$54, %ax	#, D.15034
	je	.L435	#,
	.loc 1 2859 0
	movq	-104(%rbp), %rax	# value, tmp386
	movzwl	(%rax), %eax	# value_8->code, D.15034
	cmpw	$61, %ax	#, D.15034
	je	.L435	#,
	.loc 1 2860 0
	movq	-104(%rbp), %rax	# value, tmp387
	movzwl	(%rax), %eax	# value_8->code, D.15034
	cmpw	$75, %ax	#, D.15034
	jne	.L436	#,
	.loc 1 2861 0
	movq	-104(%rbp), %rax	# value, tmp388
	movq	8(%rax), %rax	# value_8->fld[0].rtx, D.15028
	movzwl	(%rax), %eax	# _135->code, D.15034
	cmpw	$61, %ax	#, D.15034
	jne	.L436	#,
	.loc 1 2862 0
	movq	-104(%rbp), %rax	# value, tmp389
	movq	16(%rax), %rax	# value_8->fld[1].rtx, D.15028
	movzwl	(%rax), %eax	# _137->code, D.15034
	cmpw	$54, %ax	#, D.15034
	je	.L435	#,
.L436:
.LBB29:
	.loc 1 2864 0
	movq	-120(%rbp), %rax	# v, tmp390
	movl	48(%rax), %eax	# v_2->mode, D.15033
	movl	%eax, %edi	# D.15033,
	call	gen_reg_rtx	#
	movq	%rax, -40(%rbp)	# tmp391, tem
	.loc 1 2865 0
	movq	-120(%rbp), %rax	# v, tmp392
	movq	72(%rax), %rcx	# v_2->add_val, D.15028
	movq	-40(%rbp), %rax	# tem, tmp393
	movl	8(%rax), %eax	# tem_140->fld[0].rtuint, D.15035
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.15028,
	movl	%eax, %edi	# D.15035,
	call	record_base_value	#
	.loc 1 2866 0
	movq	-120(%rbp), %rax	# v, tmp394
	movq	72(%rax), %rcx	# v_2->add_val, D.15028
	movq	-120(%rbp), %rax	# v, tmp395
	movq	64(%rax), %rdx	# v_2->mult_val, D.15028
	movq	-160(%rbp), %rax	# bl, tmp396
	movq	40(%rax), %rsi	# bl_20(D)->initial_value, D.15028
	movq	-40(%rbp), %rdi	# tem, tmp397
	movq	-152(%rbp), %rax	# loop, tmp398
	movq	%rdi, %r8	# tmp397,
	movq	%rax, %rdi	# tmp398,
	call	loop_iv_add_mult_hoist	#
	.loc 1 2868 0
	movq	-40(%rbp), %rax	# tem, tmp399
	movq	%rax, -104(%rbp)	# tmp399, value
.L435:
.LBE29:
	.loc 1 2871 0
	movq	splittable_regs(%rip), %rdx	# splittable_regs, splittable_regs.208
	movq	-120(%rbp), %rax	# v, tmp400
	movq	8(%rax), %rax	# v_2->new_reg, D.15028
	movl	8(%rax), %eax	# _148->fld[0].rtuint, D.15035
	movl	%eax, %eax	# D.15035, D.15037
	salq	$3, %rax	#, D.15037
	addq	%rax, %rdx	# D.15037, D.15039
	movq	-104(%rbp), %rax	# value, tmp401
	movq	%rax, (%rdx)	# tmp401, *_152
	jmp	.L463	#
.L434:
	.loc 1 2889 0
	movq	-120(%rbp), %rax	# v, tmp402
	movq	$0, 144(%rax)	#, v_2->const_adjust
	.loc 1 2891 0
	movq	-120(%rbp), %rax	# v, tmp403
	movq	152(%rax), %rax	# v_2->same_insn, D.15030
	testq	%rax, %rax	# D.15030
	je	.L438	#,
	.loc 1 2893 0
	movq	-120(%rbp), %rax	# v, tmp404
	movq	152(%rax), %rax	# v_2->same_insn, D.15030
	movq	32(%rax), %rdx	# _154->dest_reg, D.15028
	movq	-120(%rbp), %rax	# v, tmp405
	movq	%rdx, 32(%rax)	# D.15028, v_2->dest_reg
	.loc 1 2894 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.209
	testq	%rax, %rax	# loop_dump_stream.209
	je	.L440	#,
	.loc 1 2897 0
	movq	-120(%rbp), %rax	# v, tmp406
	movq	(%rax), %rax	# v_2->insn, D.15028
	.loc 1 2895 0
	movl	8(%rax), %edx	# _157->fld[0].rtint, D.15029
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.210
	movl	$.LC35, %esi	#,
	movq	%rax, %rdi	# loop_dump_stream.210,
	movl	$0, %eax	#,
	call	fprintf	#
	jmp	.L440	#
.L438:
	.loc 1 2902 0
	cmpl	$0, -164(%rbp)	#, unroll_type
	je	.L441	#,
	.loc 1 2903 0
	movq	-120(%rbp), %rax	# v, tmp407
	movl	24(%rax), %eax	# v_2->giv_type, D.15032
	testl	%eax, %eax	# D.15032
	jne	.L441	#,
	.loc 1 2904 0
	movq	-120(%rbp), %rax	# v, tmp408
	movq	136(%rax), %rax	# v_2->same, D.15030
	testq	%rax, %rax	# D.15030
	je	.L441	#,
	.loc 1 2904 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# v, tmp409
	movq	136(%rax), %rax	# v_2->same, D.15030
	movl	24(%rax), %eax	# _162->giv_type, D.15032
	testl	%eax, %eax	# D.15032
	jne	.L441	#,
	.loc 1 2905 0 is_stmt 1
	movq	-120(%rbp), %rax	# v, tmp410
	movq	136(%rax), %rax	# v_2->same, D.15030
	movzbl	101(%rax), %eax	# *_164, D.15031
	andl	$2, %eax	#, D.15031
	testb	%al, %al	# D.15031
	je	.L441	#,
	.loc 1 2910 0
	movq	-120(%rbp), %rax	# v, tmp411
	movq	64(%rax), %rdx	# v_2->mult_val, D.15028
	movq	-120(%rbp), %rax	# v, tmp412
	movq	136(%rax), %rax	# v_2->same, D.15030
	movq	64(%rax), %rax	# _168->mult_val, D.15028
	movq	%rdx, %rsi	# D.15028,
	movq	%rax, %rdi	# D.15028,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.15029
	je	.L441	#,
	.loc 1 2911 0
	movq	-120(%rbp), %rax	# v, tmp413
	movq	72(%rax), %rdx	# v_2->add_val, D.15028
	movq	-120(%rbp), %rax	# v, tmp414
	movq	136(%rax), %rax	# v_2->same, D.15030
	movq	72(%rax), %rax	# _172->add_val, D.15028
	movq	%rdx, %rsi	# D.15028,
	movq	%rax, %rdi	# D.15028,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.15029
	je	.L441	#,
	.loc 1 2915 0
	movl	-168(%rbp), %edx	# unroll_number, tmp415
	movq	-72(%rbp), %rcx	# giv_inc, tmp416
	movq	-120(%rbp), %rax	# v, tmp417
	movq	%rcx, %rsi	# tmp416,
	movq	%rax, %rdi	# tmp417,
	call	verify_addresses	#
	testl	%eax, %eax	# D.15029
	je	.L441	#,
	.loc 1 2917 0
	movq	-120(%rbp), %rax	# v, tmp418
	movq	136(%rax), %rax	# v_2->same, D.15030
	movq	32(%rax), %rdx	# _177->dest_reg, D.15028
	movq	-120(%rbp), %rax	# v, tmp419
	movq	%rdx, 32(%rax)	# D.15028, v_2->dest_reg
	.loc 1 2918 0
	movq	-120(%rbp), %rax	# v, tmp420
	movzbl	101(%rax), %edx	#, tmp423
	orl	$4, %edx	#, tmp424
	movb	%dl, 101(%rax)	# tmp424,
	jmp	.L440	#
.L441:
	.loc 1 2920 0
	cmpl	$0, -164(%rbp)	#, unroll_type
	je	.L442	#,
.LBB30:
	.loc 1 2926 0
	movq	-120(%rbp), %rax	# v, tmp425
	movl	48(%rax), %eax	# v_2->mode, D.15033
	movl	%eax, %edi	# D.15033,
	call	gen_reg_rtx	#
	movq	%rax, -32(%rbp)	# tmp426, tem
	.loc 1 2927 0
	movq	-120(%rbp), %rax	# v, tmp427
	movq	136(%rax), %rax	# v_2->same, tmp428
	movq	%rax, -24(%rbp)	# tmp428, same
	.loc 1 2928 0
	movq	-120(%rbp), %rax	# v, tmp429
	movq	8(%rax), %rax	# v_2->new_reg, tmp430
	movq	%rax, -88(%rbp)	# tmp430, new_reg
	.loc 1 2929 0
	movq	-120(%rbp), %rax	# v, tmp431
	movq	72(%rax), %rcx	# v_2->add_val, D.15028
	movq	-32(%rbp), %rax	# tem, tmp432
	movl	8(%rax), %eax	# tem_180->fld[0].rtuint, D.15035
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.15028,
	movl	%eax, %edi	# D.15035,
	call	record_base_value	#
	.loc 1 2935 0
	movq	-88(%rbp), %rax	# new_reg, tmp433
	movzwl	(%rax), %eax	# new_reg_182->code, D.15034
	cmpw	$75, %ax	#, D.15034
	jne	.L443	#,
	.loc 1 2936 0
	movq	-88(%rbp), %rax	# new_reg, tmp434
	movq	16(%rax), %rax	# new_reg_182->fld[1].rtx, D.15028
	movzwl	(%rax), %eax	# _186->code, D.15034
	cmpw	$54, %ax	#, D.15034
	jne	.L443	#,
	.loc 1 2939 0
	movq	-88(%rbp), %rax	# new_reg, tmp435
	movq	16(%rax), %rax	# new_reg_182->fld[1].rtx, D.15028
	movq	8(%rax), %rdx	# _188->fld[0].rtwint, D.15040
	movq	-32(%rbp), %rax	# tem, tmp436
	movq	%rdx, %rsi	# D.15040,
	movq	%rax, %rdi	# tmp436,
	call	plus_constant_wide	#
	movq	-120(%rbp), %rdx	# v, tmp437
	movq	%rax, 32(%rdx)	# D.15028, v_2->dest_reg
	.loc 1 2945 0
	movl	-168(%rbp), %edx	# unroll_number, tmp438
	movq	-72(%rbp), %rcx	# giv_inc, tmp439
	movq	-120(%rbp), %rax	# v, tmp440
	movq	%rcx, %rsi	# tmp439,
	movq	%rax, %rdi	# tmp440,
	call	verify_addresses	#
	testl	%eax, %eax	# D.15029
	je	.L444	#,
	.loc 1 2950 0
	movq	-88(%rbp), %rax	# new_reg, tmp441
	movq	16(%rax), %rax	# new_reg_182->fld[1].rtx, D.15028
	movq	8(%rax), %rax	# _192->fld[0].rtwint, D.15040
	negq	%rax	# D.15040
	movq	%rax, %rdx	# D.15040, D.15040
	movq	-120(%rbp), %rax	# v, tmp442
	movq	%rdx, 144(%rax)	# D.15040, v_2->const_adjust
	.loc 1 2952 0
	movq	-88(%rbp), %rax	# new_reg, tmp443
	movq	8(%rax), %rax	# new_reg_182->fld[0].rtx, tmp444
	movq	%rax, -88(%rbp)	# tmp444, new_reg
	.loc 1 2953 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.211
	testq	%rax, %rax	# loop_dump_stream.211
	je	.L446	#,
	.loc 1 2954 0
	movq	-32(%rbp), %rax	# tem, tmp445
	movl	8(%rax), %edx	# tem_180->fld[0].rtuint, D.15035
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.212
	movl	$.LC36, %esi	#,
	movq	%rax, %rdi	# loop_dump_stream.212,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 2945 0
	jmp	.L447	#
.L444:
	.loc 1 2959 0
	movq	-120(%rbp), %rax	# v, tmp446
	movq	-32(%rbp), %rdx	# tem, tmp447
	movq	%rdx, 32(%rax)	# tmp447, v_2->dest_reg
	.loc 1 2945 0
	jmp	.L447	#
.L446:
	jmp	.L447	#
.L443:
	.loc 1 2962 0
	movq	-120(%rbp), %rax	# v, tmp448
	movq	-32(%rbp), %rdx	# tem, tmp449
	movq	%rdx, 32(%rax)	# tmp449, v_2->dest_reg
.L447:
	.loc 1 2968 0
	movq	-120(%rbp), %rax	# v, tmp450
	movq	32(%rax), %rax	# v_2->dest_reg, D.15028
	cmpq	-32(%rbp), %rax	# tem, D.15028
	jne	.L448	#,
	.loc 1 2969 0
	movl	-168(%rbp), %edx	# unroll_number, tmp451
	movq	-72(%rbp), %rcx	# giv_inc, tmp452
	movq	-120(%rbp), %rax	# v, tmp453
	movq	%rcx, %rsi	# tmp452,
	movq	%rax, %rdi	# tmp453,
	call	verify_addresses	#
	testl	%eax, %eax	# D.15029
	jne	.L448	#,
	.loc 1 2971 0
	movq	-120(%rbp), %rax	# v, tmp454
	movq	128(%rax), %rax	# v_2->next_iv, tmp455
	movq	%rax, -112(%rbp)	# tmp455, v2
	jmp	.L449	#
.L451:
	.loc 1 2972 0
	movq	-112(%rbp), %rax	# v2, tmp456
	movq	152(%rax), %rax	# v2_4->same_insn, D.15030
	cmpq	-120(%rbp), %rax	# v, D.15030
	jne	.L450	#,
	.loc 1 2973 0
	movq	-112(%rbp), %rax	# v2, tmp457
	movq	$0, 152(%rax)	#, v2_4->same_insn
.L450:
	.loc 1 2971 0
	movq	-112(%rbp), %rax	# v2, tmp458
	movq	128(%rax), %rax	# v2_4->next_iv, tmp459
	movq	%rax, -112(%rbp)	# tmp459, v2
.L449:
	.loc 1 2971 0 is_stmt 0 discriminator 1
	cmpq	$0, -112(%rbp)	#, v2
	jne	.L451	#,
	.loc 1 2975 0 is_stmt 1
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.213
	testq	%rax, %rax	# loop_dump_stream.213
	je	.L452	#,
	.loc 1 2978 0
	movq	-120(%rbp), %rax	# v, tmp460
	movq	(%rax), %rax	# v_2->insn, D.15028
	.loc 1 2976 0
	movl	8(%rax), %edx	# _205->fld[0].rtint, D.15029
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.214
	movl	$.LC37, %esi	#,
	movq	%rax, %rdi	# loop_dump_stream.214,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 2979 0
	jmp	.L414	#
.L452:
	jmp	.L414	#
.L448:
	.loc 1 2982 0
	movq	-120(%rbp), %rax	# v, tmp461
	movq	-88(%rbp), %rdx	# new_reg, tmp462
	movq	%rdx, 8(%rax)	# tmp462, v_2->new_reg
	.loc 1 2983 0
	movq	-120(%rbp), %rax	# v, tmp463
	movq	-24(%rbp), %rdx	# same, tmp464
	movq	%rdx, 136(%rax)	# tmp464, v_2->same
	.loc 1 2987 0
	movq	-120(%rbp), %rax	# v, tmp465
	movzbl	101(%rax), %edx	#, tmp468
	orl	$2, %edx	#, tmp469
	movb	%dl, 101(%rax)	# tmp469,
	.loc 1 2994 0
	movq	-120(%rbp), %rax	# v, tmp470
	movq	8(%rax), %rax	# v_2->new_reg, D.15028
	movq	%rax, %rdi	# D.15028,
	call	copy_rtx	#
	movq	%rax, %rdx	#, D.15028
	movq	-32(%rbp), %rax	# tem, tmp471
	movq	%rdx, %rcx	# D.15028,
	movq	%rax, %rdx	# tmp471,
	movl	$0, %esi	#,
	movl	$47, %edi	#,
	call	gen_rtx_fmt_ee	#
	movq	%rax, %rdx	#, D.15028
	movq	-152(%rbp), %rax	# loop, tmp472
	movq	%rdx, %rsi	# D.15028,
	movq	%rax, %rdi	# tmp472,
	call	loop_insn_hoist	#
	.loc 1 2996 0
	movq	-152(%rbp), %rax	# loop, tmp473
	movq	192(%rax), %rax	# loop_16(D)->start, D.15028
	movq	16(%rax), %rax	# _211->fld[1].rtx, D.15028
	movl	40(%rax), %eax	# _212->fld[4].rtint, D.15029
	testl	%eax, %eax	# D.15029
	js	.L453	#,
	.loc 1 2996 0 is_stmt 0 discriminator 1
	movq	-152(%rbp), %rax	# loop, tmp474
	movq	192(%rax), %rax	# loop_16(D)->start, D.15028
	movq	16(%rax), %rax	# _214->fld[1].rtx, D.15028
	movl	40(%rax), %eax	# _215->fld[4].rtint, D.15029
	shrl	$31, %eax	#, tmp475
	jmp	.L454	#
.L453:
	.loc 1 2996 0 discriminator 2
	movq	-152(%rbp), %rax	# loop, tmp476
	movq	192(%rax), %rax	# loop_16(D)->start, D.15028
	movq	16(%rax), %rax	# _218->fld[1].rtx, D.15028
	movq	%rax, %rdi	# D.15028,
	call	recog_memoized_1	#
	shrl	$31, %eax	#, tmp477
.L454:
	.loc 1 2996 0 discriminator 3
	testb	%al, %al	# iftmp.215
	je	.L455	#,
.LBB31:
	.loc 1 3003 0 is_stmt 1
	movq	-152(%rbp), %rax	# loop, tmp478
	movq	192(%rax), %rax	# loop_16(D)->start, D.15028
	movq	16(%rax), %rax	# _222->fld[1].rtx, D.15028
	movq	%rax, %rdi	# D.15028,
	call	delete_related_insns	#
	.loc 1 3005 0
	call	start_sequence	#
	.loc 1 3006 0
	movq	-120(%rbp), %rax	# v, tmp479
	movq	8(%rax), %rax	# v_2->new_reg, D.15028
	movq	-32(%rbp), %rdx	# tem, tmp480
	movq	%rdx, %rsi	# tmp480,
	movq	%rax, %rdi	# D.15028,
	call	force_operand	#
	movq	%rax, -16(%rbp)	# tmp481, ret
	.loc 1 3007 0
	movq	-16(%rbp), %rax	# ret, tmp482
	cmpq	-32(%rbp), %rax	# tem, tmp482
	je	.L456	#,
	.loc 1 3008 0
	movq	-16(%rbp), %rdx	# ret, tmp483
	movq	-32(%rbp), %rax	# tem, tmp484
	movq	%rdx, %rsi	# tmp483,
	movq	%rax, %rdi	# tmp484,
	call	emit_move_insn	#
.L456:
	.loc 1 3009 0
	call	gen_sequence	#
	movq	%rax, -8(%rbp)	# tmp485, sequence
	.loc 1 3010 0
	call	end_sequence	#
	.loc 1 3011 0
	movq	-8(%rbp), %rdx	# sequence, tmp486
	movq	-152(%rbp), %rax	# loop, tmp487
	movq	%rdx, %rsi	# tmp486,
	movq	%rax, %rdi	# tmp487,
	call	loop_insn_hoist	#
	.loc 1 3013 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.216
	testq	%rax, %rax	# loop_dump_stream.216
	je	.L455	#,
	.loc 1 3014 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.217
	movq	%rax, %rcx	# loop_dump_stream.217,
	movl	$30, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC38, %edi	#,
	call	fwrite	#
.LBE31:
.LBE30:
	jmp	.L440	#
.L455:
	jmp	.L440	#
.L442:
	.loc 1 3020 0
	movq	-120(%rbp), %rax	# v, tmp488
	movq	-104(%rbp), %rdx	# value, tmp489
	movq	%rdx, 32(%rax)	# tmp489, v_2->dest_reg
	.loc 1 3024 0
	movl	-168(%rbp), %edx	# unroll_number, tmp490
	movq	-72(%rbp), %rcx	# giv_inc, tmp491
	movq	-120(%rbp), %rax	# v, tmp492
	movq	%rcx, %rsi	# tmp491,
	movq	%rax, %rdi	# tmp492,
	call	verify_addresses	#
	testl	%eax, %eax	# D.15029
	jne	.L440	#,
	.loc 1 3026 0
	movq	-120(%rbp), %rax	# v, tmp493
	movq	128(%rax), %rax	# v_2->next_iv, tmp494
	movq	%rax, -112(%rbp)	# tmp494, v2
	jmp	.L457	#
.L459:
	.loc 1 3027 0
	movq	-112(%rbp), %rax	# v2, tmp495
	movq	152(%rax), %rax	# v2_5->same_insn, D.15030
	cmpq	-120(%rbp), %rax	# v, D.15030
	jne	.L458	#,
	.loc 1 3028 0
	movq	-112(%rbp), %rax	# v2, tmp496
	movq	$0, 152(%rax)	#, v2_5->same_insn
.L458:
	.loc 1 3026 0
	movq	-112(%rbp), %rax	# v2, tmp497
	movq	128(%rax), %rax	# v2_5->next_iv, tmp498
	movq	%rax, -112(%rbp)	# tmp498, v2
.L457:
	.loc 1 3026 0 is_stmt 0 discriminator 1
	cmpq	$0, -112(%rbp)	#, v2
	jne	.L459	#,
	.loc 1 3030 0 is_stmt 1
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.218
	testq	%rax, %rax	# loop_dump_stream.218
	je	.L460	#,
	.loc 1 3033 0
	movq	-120(%rbp), %rax	# v, tmp499
	movq	(%rax), %rax	# v_2->insn, D.15028
	.loc 1 3031 0
	movl	8(%rax), %edx	# _234->fld[0].rtint, D.15029
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.219
	movl	$.LC37, %esi	#,
	movq	%rax, %rdi	# loop_dump_stream.219,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 3034 0
	jmp	.L414	#
.L460:
	jmp	.L414	#
.L440:
	.loc 1 3042 0
	movq	-120(%rbp), %rax	# v, tmp500
	movq	40(%rax), %rax	# v_2->location, D.15039
	movq	-120(%rbp), %rdx	# v, tmp501
	movq	32(%rdx), %rdx	# v_2->dest_reg, D.15028
	movq	%rdx, (%rax)	# D.15028, *_237
	.loc 1 3049 0
	movq	-120(%rbp), %rax	# v, tmp502
	movq	136(%rax), %rax	# v_2->same, D.15030
	testq	%rax, %rax	# D.15030
	je	.L461	#,
	.loc 1 3049 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# v, tmp503
	movq	136(%rax), %rax	# v_2->same, D.15030
	movl	24(%rax), %eax	# _240->giv_type, D.15032
	cmpl	$1, %eax	#, D.15032
	jne	.L461	#,
	.loc 1 3050 0 is_stmt 1
	movq	addr_combined_regs(%rip), %rdx	# addr_combined_regs, addr_combined_regs.220
	movq	-120(%rbp), %rax	# v, tmp504
	movq	136(%rax), %rax	# v_2->same, D.15030
	movq	8(%rax), %rax	# _243->new_reg, D.15028
	movl	8(%rax), %eax	# _244->fld[0].rtuint, D.15035
	movl	%eax, %eax	# D.15035, D.15037
	salq	$3, %rax	#, D.15037
	addq	%rax, %rdx	# D.15037, D.15041
	movq	-120(%rbp), %rax	# v, tmp505
	movq	136(%rax), %rax	# v_2->same, D.15030
	movq	%rax, (%rdx)	# D.15030, *_248
.L461:
	.loc 1 3052 0
	movq	-120(%rbp), %rax	# v, tmp506
	movq	8(%rax), %rax	# v_2->new_reg, D.15028
	movzwl	(%rax), %eax	# _250->code, D.15034
	cmpw	$61, %ax	#, D.15034
	jne	.L462	#,
	.loc 1 3057 0
	movq	splittable_regs(%rip), %rdx	# splittable_regs, splittable_regs.221
	movq	-120(%rbp), %rax	# v, tmp507
	movq	8(%rax), %rax	# v_2->new_reg, D.15028
	movl	8(%rax), %eax	# _253->fld[0].rtuint, D.15035
	movl	%eax, %eax	# D.15035, D.15037
	salq	$3, %rax	#, D.15037
	addq	%rax, %rdx	# D.15037, D.15039
	movq	-104(%rbp), %rax	# value, tmp508
	movq	%rax, (%rdx)	# tmp508, *_257
	.loc 1 3061 0
	movq	-120(%rbp), %rax	# v, tmp509
	movq	136(%rax), %rax	# v_2->same, D.15030
	testq	%rax, %rax	# D.15030
	jne	.L462	#,
	.loc 1 3063 0
	movq	-120(%rbp), %rax	# v, tmp510
	movq	-120(%rbp), %rdx	# v, tmp511
	movq	%rdx, 136(%rax)	# tmp511, v_2->same
	.loc 1 3064 0
	movq	addr_combined_regs(%rip), %rdx	# addr_combined_regs, addr_combined_regs.222
	movq	-120(%rbp), %rax	# v, tmp512
	movq	8(%rax), %rax	# v_2->new_reg, D.15028
	movl	8(%rax), %eax	# _260->fld[0].rtuint, D.15035
	movl	%eax, %eax	# D.15035, D.15037
	salq	$3, %rax	#, D.15037
	addq	%rax, %rdx	# D.15037, D.15041
	movq	-120(%rbp), %rax	# v, tmp513
	movq	%rax, (%rdx)	# tmp513, *_264
.L462:
	.loc 1 3068 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.223
	testq	%rax, %rax	# loop_dump_stream.223
	je	.L463	#,
	.loc 1 3069 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.224
	movq	%rax, %rcx	# loop_dump_stream.224,
	movl	$27, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC39, %edi	#,
	call	fwrite	#
	jmp	.L463	#
.L431:
	.loc 1 3086 0
	jmp	.L414	#
.L463:
	.loc 1 3095 0
	movq	-120(%rbp), %rax	# v, tmp514
	movq	8(%rax), %rax	# v_2->new_reg, D.15028
	movzwl	(%rax), %eax	# _267->code, D.15034
	cmpw	$61, %ax	#, D.15034
	jne	.L464	#,
.LBB32:
	.loc 1 3097 0
	movl	$1, -128(%rbp)	#, count
	.loc 1 3098 0
	movq	-120(%rbp), %rax	# v, tmp515
	movzbl	100(%rax), %eax	# *v_2, D.15031
	andl	$4, %eax	#, D.15031
	testb	%al, %al	# D.15031
	jne	.L465	#,
	.loc 1 3099 0
	movq	-80(%rbp), %rax	# ivs, tmp516
	movq	(%rax), %rdx	# ivs_18->regs, D.15042
	movq	-120(%rbp), %rax	# v, tmp517
	movq	16(%rax), %rax	# v_2->src_reg, D.15028
	movl	8(%rax), %eax	# _273->fld[0].rtuint, D.15035
	movl	%eax, %eax	# D.15035, D.15037
	salq	$4, %rax	#, D.15037
	addq	%rdx, %rax	# D.15042, D.15042
	movq	8(%rax), %rax	# _277->iv.class, D.15043
	movl	4(%rax), %eax	# _278->biv_count, tmp518
	movl	%eax, -128(%rbp)	# tmp518, count
.L465:
	.loc 1 3101 0
	movq	splittable_regs_updates(%rip), %rdx	# splittable_regs_updates, splittable_regs_updates.225
	movq	-120(%rbp), %rax	# v, tmp519
	movq	8(%rax), %rax	# v_2->new_reg, D.15028
	movl	8(%rax), %eax	# _281->fld[0].rtuint, D.15035
	movl	%eax, %eax	# D.15035, D.15037
	salq	$2, %rax	#, D.15037
	addq	%rax, %rdx	# D.15037, D.15038
	movl	-128(%rbp), %eax	# count, tmp520
	movl	%eax, (%rdx)	# tmp520, *_285
.L464:
.LBE32:
	.loc 1 3104 0
	addl	$1, -132(%rbp)	#, result
	.loc 1 3106 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.226
	testq	%rax, %rax	# loop_dump_stream.226
	je	.L414	#,
.LBB33:
	.loc 1 3110 0
	movq	-120(%rbp), %rax	# v, tmp521
	movq	32(%rax), %rax	# v_2->dest_reg, D.15028
	movzwl	(%rax), %eax	# _288->code, D.15034
	cmpw	$54, %ax	#, D.15034
	jne	.L466	#,
	.loc 1 3111 0
	movl	$-1, -124(%rbp)	#, regnum
	jmp	.L467	#
.L466:
	.loc 1 3112 0
	movq	-120(%rbp), %rax	# v, tmp522
	movq	32(%rax), %rax	# v_2->dest_reg, D.15028
	movzwl	(%rax), %eax	# _291->code, D.15034
	cmpw	$61, %ax	#, D.15034
	je	.L468	#,
	.loc 1 3113 0
	movq	-120(%rbp), %rax	# v, tmp523
	movq	32(%rax), %rax	# v_2->dest_reg, D.15028
	movq	8(%rax), %rax	# _293->fld[0].rtx, D.15028
	movl	8(%rax), %eax	# _294->fld[0].rtuint, D.15035
	movl	%eax, -124(%rbp)	# D.15035, regnum
	jmp	.L467	#
.L468:
	.loc 1 3115 0
	movq	-120(%rbp), %rax	# v, tmp524
	movq	32(%rax), %rax	# v_2->dest_reg, D.15028
	movl	8(%rax), %eax	# _297->fld[0].rtuint, D.15035
	movl	%eax, -124(%rbp)	# D.15035, regnum
.L467:
	.loc 1 3117 0
	movq	-120(%rbp), %rax	# v, tmp525
	movq	(%rax), %rax	# v_2->insn, D.15028
	.loc 1 3116 0
	movl	8(%rax), %ecx	# _300->fld[0].rtint, D.15029
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.227
	movl	-124(%rbp), %edx	# regnum, tmp526
	movl	$.LC40, %esi	#,
	movq	%rax, %rdi	# loop_dump_stream.227,
	movl	$0, %eax	#,
	call	fprintf	#
.L414:
.LBE33:
.LBE26:
	.loc 1 2719 0
	movq	-120(%rbp), %rax	# v, tmp527
	movq	128(%rax), %rax	# v_2->next_iv, tmp528
	movq	%rax, -120(%rbp)	# tmp528, v
.L412:
	.loc 1 2719 0 is_stmt 0 discriminator 1
	cmpq	$0, -120(%rbp)	#, v
	jne	.L469	#,
	.loc 1 3121 0 is_stmt 1
	movl	-132(%rbp), %eax	# result, D.15029
	.loc 1 3122 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	find_splittable_givs, .-find_splittable_givs
	.type	reg_dead_after_loop, @function
reg_dead_after_loop:
.LFB16:
	.loc 1 3136 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# loop, loop
	movq	%rsi, -64(%rbp)	# reg, reg
	.loc 1 3139 0
	movl	$0, -36(%rbp)	#, jump_count
	.loc 1 3140 0
	movl	$0, -32(%rbp)	#, label_count
	.loc 1 3147 0
	movq	-56(%rbp), %rax	# loop, tmp84
	movq	232(%rax), %rax	# loop_14(D)->exit_labels, tmp85
	movq	%rax, -16(%rbp)	# tmp85, label
	jmp	.L472	#
.L473:
	.loc 1 3148 0 discriminator 2
	addl	$1, -32(%rbp)	#, label_count
	.loc 1 3147 0 discriminator 2
	movq	-16(%rbp), %rax	# label, tmp86
	movq	16(%rax), %rax	# label_3->fld[1].rtx, tmp87
	movq	%rax, -16(%rbp)	# tmp87, label
.L472:
	.loc 1 3147 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, label
	jne	.L473	#,
	.loc 1 3150 0 is_stmt 1
	movq	-56(%rbp), %rax	# loop, tmp88
	movl	240(%rax), %eax	# loop_14(D)->exit_count, D.15051
	cmpl	-32(%rbp), %eax	# label_count, D.15051
	je	.L474	#,
	.loc 1 3151 0
	movl	$0, %eax	#, D.15051
	jmp	.L475	#
.L474:
	.loc 1 3156 0
	movq	-56(%rbp), %rax	# loop, tmp89
	movq	200(%rax), %rax	# loop_14(D)->end, D.15052
	movq	%rax, %rdx	# D.15052,
	movl	$0, %esi	#,
	movl	$67, %edi	#,
	call	gen_rtx_fmt_u00	#
	movq	%rax, -16(%rbp)	# tmp90, label
	.loc 1 3157 0
	movq	-56(%rbp), %rax	# loop, tmp91
	movq	232(%rax), %rdx	# loop_14(D)->exit_labels, D.15052
	movq	-16(%rbp), %rax	# label, tmp92
	movq	%rdx, 16(%rax)	# D.15052, label_21->fld[1].rtx
	.loc 1 3159 0
	jmp	.L476	#
.L490:
	.loc 1 3165 0
	movq	-16(%rbp), %rax	# label, tmp93
	movq	8(%rax), %rax	# label_4->fld[0].rtx, D.15052
	movq	24(%rax), %rax	# _23->fld[2].rtx, tmp94
	movq	%rax, -24(%rbp)	# tmp94, insn
	.loc 1 3166 0
	jmp	.L477	#
.L489:
	.loc 1 3168 0
	movq	-24(%rbp), %rax	# insn, tmp95
	movzwl	(%rax), %eax	# insn_2->code, D.15053
	movzwl	%ax, %eax	# D.15053, tmp96
	movl	%eax, -28(%rbp)	# tmp96, code
	.loc 1 3169 0
	movl	-28(%rbp), %eax	# code, code.228
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.15054
	cmpb	$105, %al	#, D.15054
	jne	.L478	#,
.LBB34:
	.loc 1 3173 0
	movq	-24(%rbp), %rax	# insn, tmp98
	movq	32(%rax), %rdx	# insn_2->fld[3].rtx, D.15052
	movq	-64(%rbp), %rax	# reg, tmp99
	movq	%rdx, %rsi	# D.15052,
	movq	%rax, %rdi	# tmp99,
	call	reg_referenced_p	#
	testl	%eax, %eax	# D.15051
	je	.L479	#,
	.loc 1 3174 0
	movl	$0, %eax	#, D.15051
	jmp	.L475	#
.L479:
	.loc 1 3176 0
	movq	-24(%rbp), %rax	# insn, tmp100
	movzwl	(%rax), %eax	# insn_2->code, D.15053
	movzwl	%ax, %eax	# D.15053, D.15051
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.15054
	cmpb	$105, %al	#, D.15054
	jne	.L480	#,
	.loc 1 3176 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# insn, tmp102
	movq	32(%rax), %rax	# insn_2->fld[3].rtx, D.15052
	movzwl	(%rax), %eax	# _36->code, D.15053
	cmpw	$47, %ax	#, D.15053
	jne	.L481	#,
	.loc 1 3176 0 discriminator 3
	movq	-24(%rbp), %rax	# insn, tmp103
	movq	32(%rax), %rax	# insn_2->fld[3].rtx, iftmp.230
	jmp	.L483	#
.L481:
	.loc 1 3176 0 discriminator 4
	movq	-24(%rbp), %rax	# insn, tmp104
	movq	32(%rax), %rdx	# insn_2->fld[3].rtx, D.15052
	movq	-24(%rbp), %rax	# insn, tmp105
	movq	%rdx, %rsi	# D.15052,
	movq	%rax, %rdi	# tmp105,
	call	single_set_2	#
	jmp	.L483	#
.L480:
	.loc 1 3176 0 discriminator 2
	movl	$0, %eax	#, iftmp.229
.L483:
	.loc 1 3176 0 discriminator 5
	movq	%rax, -8(%rbp)	# iftmp.229, set
	.loc 1 3177 0 is_stmt 1 discriminator 5
	cmpq	$0, -8(%rbp)	#, set
	je	.L478	#,
	.loc 1 3177 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# set, tmp106
	movq	8(%rax), %rax	# set_43->fld[0].rtx, D.15052
	movq	-64(%rbp), %rdx	# reg, tmp107
	movq	%rdx, %rsi	# tmp107,
	movq	%rax, %rdi	# D.15052,
	call	rtx_equal_p	#
	testl	%eax, %eax	# D.15051
	je	.L478	#,
	.loc 1 3178 0 is_stmt 1
	jmp	.L484	#
.L478:
.LBE34:
	.loc 1 3181 0
	cmpl	$33, -28(%rbp)	#, code
	jne	.L485	#,
	.loc 1 3183 0
	movq	-24(%rbp), %rax	# insn, tmp108
	movq	32(%rax), %rax	# insn_2->fld[3].rtx, D.15052
	movzwl	(%rax), %eax	# _46->code, D.15053
	cmpw	$51, %ax	#, D.15053
	jne	.L486	#,
	.loc 1 3184 0
	jmp	.L484	#
.L486:
	.loc 1 3185 0
	movq	-24(%rbp), %rax	# insn, tmp109
	movq	%rax, %rdi	# tmp109,
	call	any_uncondjump_p	#
	testl	%eax, %eax	# D.15051
	je	.L487	#,
	.loc 1 3187 0
	movl	-36(%rbp), %eax	# jump_count, jump_count.231
	leal	1(%rax), %edx	#, tmp110
	movl	%edx, -36(%rbp)	# tmp110, jump_count
	cmpl	$20, %eax	#, jump_count.231
	jle	.L488	#,
.L487:
	.loc 1 3188 0
	movl	$0, %eax	#, D.15051
	jmp	.L475	#
.L488:
	.loc 1 3190 0
	movq	-24(%rbp), %rax	# insn, tmp111
	movq	64(%rax), %rax	# insn_2->fld[7].rtx, tmp112
	movq	%rax, -24(%rbp)	# tmp112, insn
.L485:
	.loc 1 3193 0
	movq	-24(%rbp), %rax	# insn, tmp113
	movq	24(%rax), %rax	# insn_1->fld[2].rtx, tmp114
	movq	%rax, -24(%rbp)	# tmp114, insn
.L477:
	.loc 1 3166 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, insn
	jne	.L489	#,
.L484:
	.loc 1 3159 0
	movq	-16(%rbp), %rax	# label, tmp115
	movq	16(%rax), %rax	# label_4->fld[1].rtx, tmp116
	movq	%rax, -16(%rbp)	# tmp116, label
.L476:
	.loc 1 3159 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, label
	jne	.L490	#,
	.loc 1 3198 0 is_stmt 1
	movl	$1, %eax	#, D.15051
.L475:
	.loc 1 3199 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	reg_dead_after_loop, .-reg_dead_after_loop
	.section	.rodata
	.align 8
.LC41:
	.string	"Final biv value for %d, reversed biv.\n"
	.align 8
.LC42:
	.string	"Final biv value for %d, calculated.\n"
	.align 8
.LC43:
	.string	"Final biv value for %d, biv dead after loop exit.\n"
	.text
	.globl	final_biv_value
	.type	final_biv_value, @function
final_biv_value:
.LFB17:
	.loc 1 3208 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# loop, loop
	movq	%rsi, -64(%rbp)	# bl, bl
	.loc 1 3209 0
	movq	-56(%rbp), %rax	# loop, tmp92
	movq	160(%rax), %rax	# loop_2(D)->aux, D.15056
	movq	96(%rax), %rax	# MEM[(struct loop_info *)_3].n_iterations, tmp93
	movq	%rax, -40(%rbp)	# tmp93, n_iterations
	.loc 1 3214 0
	movq	-64(%rbp), %rax	# bl, tmp94
	movq	8(%rax), %rax	# bl_5(D)->biv, D.15057
	movl	48(%rax), %eax	# _6->mode, D.15058
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.15060
	cmpl	$1, %eax	#, D.15060
	je	.L492	#,
	.loc 1 3215 0
	movl	$0, %eax	#, D.15055
	jmp	.L493	#
.L492:
	.loc 1 3221 0
	movq	-64(%rbp), %rax	# bl, tmp96
	movzbl	88(%rax), %eax	# *bl_5(D), D.15061
	andl	$8, %eax	#, D.15061
	testb	%al, %al	# D.15061
	je	.L494	#,
	.loc 1 3223 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.232
	testq	%rax, %rax	# loop_dump_stream.232
	je	.L495	#,
	.loc 1 3224 0
	movq	-64(%rbp), %rax	# bl, tmp97
	movl	(%rax), %edx	# bl_5(D)->regno, D.15062
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.233
	movl	$.LC41, %esi	#,
	movq	%rax, %rdi	# loop_dump_stream.233,
	movl	$0, %eax	#,
	call	fprintf	#
.L495:
	.loc 1 3227 0
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, D.15055
	jmp	.L493	#
.L494:
	.loc 1 3236 0
	cmpq	$0, -40(%rbp)	#, n_iterations
	je	.L496	#,
	.loc 1 3237 0
	movq	-56(%rbp), %rax	# loop, tmp98
	movl	240(%rax), %eax	# loop_2(D)->exit_count, D.15059
	testl	%eax, %eax	# D.15059
	jne	.L496	#,
	.loc 1 3238 0
	movq	-64(%rbp), %rax	# bl, tmp99
	movq	40(%rax), %rdx	# bl_5(D)->initial_value, D.15063
	movq	-56(%rbp), %rax	# loop, tmp100
	movq	%rdx, %rsi	# D.15063,
	movq	%rax, %rdi	# tmp100,
	call	loop_invariant_p	#
	testl	%eax, %eax	# D.15059
	je	.L496	#,
	.loc 1 3240 0
	movq	-64(%rbp), %rax	# bl, tmp101
	movq	%rax, %rdi	# tmp101,
	call	biv_total_increment	#
	movq	%rax, -32(%rbp)	# tmp102, increment
	.loc 1 3242 0
	cmpq	$0, -32(%rbp)	#, increment
	je	.L496	#,
	.loc 1 3242 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rdx	# increment, tmp103
	movq	-56(%rbp), %rax	# loop, tmp104
	movq	%rdx, %rsi	# tmp103,
	movq	%rax, %rdi	# tmp104,
	call	loop_invariant_p	#
	testl	%eax, %eax	# D.15059
	je	.L496	#,
	.loc 1 3248 0 is_stmt 1
	movq	-64(%rbp), %rax	# bl, tmp105
	movq	8(%rax), %rax	# bl_5(D)->biv, D.15057
	movl	48(%rax), %eax	# _22->mode, D.15058
	movl	%eax, %edi	# D.15058,
	call	gen_reg_rtx	#
	movq	%rax, -24(%rbp)	# tmp106, tem
	.loc 1 3249 0
	movq	-64(%rbp), %rax	# bl, tmp107
	movq	8(%rax), %rax	# bl_5(D)->biv, D.15057
	movq	72(%rax), %rcx	# _25->add_val, D.15063
	movq	-24(%rbp), %rax	# tem, tmp108
	movl	8(%rax), %eax	# tem_24->fld[0].rtuint, D.15062
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.15063,
	movl	%eax, %edi	# D.15062,
	call	record_base_value	#
	.loc 1 3250 0
	movq	-64(%rbp), %rax	# bl, tmp109
	movq	40(%rax), %rbx	# bl_5(D)->initial_value, D.15063
	movq	-40(%rbp), %rax	# n_iterations, n_iterations.234
	movq	%rax, %rsi	# n_iterations.234,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, %rdx	#, D.15063
	movq	-24(%rbp), %rcx	# tem, tmp110
	movq	-32(%rbp), %rsi	# increment, tmp111
	movq	-56(%rbp), %rax	# loop, tmp112
	movq	%rcx, %r8	# tmp110,
	movq	%rbx, %rcx	# D.15063,
	movq	%rax, %rdi	# tmp112,
	call	loop_iv_add_mult_sink	#
	.loc 1 3253 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.235
	testq	%rax, %rax	# loop_dump_stream.235
	je	.L497	#,
	.loc 1 3254 0
	movq	-64(%rbp), %rax	# bl, tmp113
	movl	(%rax), %edx	# bl_5(D)->regno, D.15062
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.236
	movl	$.LC42, %esi	#,
	movq	%rax, %rdi	# loop_dump_stream.236,
	movl	$0, %eax	#,
	call	fprintf	#
.L497:
	.loc 1 3257 0
	movq	-24(%rbp), %rax	# tem, D.15055
	jmp	.L493	#
.L496:
	.loc 1 3262 0
	movq	-64(%rbp), %rax	# bl, tmp114
	movq	8(%rax), %rax	# bl_5(D)->biv, D.15057
	movq	16(%rax), %rdx	# _35->src_reg, D.15063
	movq	-56(%rbp), %rax	# loop, tmp115
	movq	%rdx, %rsi	# D.15063,
	movq	%rax, %rdi	# tmp115,
	call	reg_dead_after_loop	#
	testl	%eax, %eax	# D.15059
	je	.L498	#,
	.loc 1 3264 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.237
	testq	%rax, %rax	# loop_dump_stream.237
	je	.L499	#,
	.loc 1 3265 0
	movq	-64(%rbp), %rax	# bl, tmp116
	movl	(%rax), %edx	# bl_5(D)->regno, D.15062
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.238
	movl	$.LC43, %esi	#,
	movq	%rax, %rdi	# loop_dump_stream.238,
	movl	$0, %eax	#,
	call	fprintf	#
.L499:
	.loc 1 3269 0
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, D.15055
	jmp	.L493	#
.L498:
	.loc 1 3272 0
	movl	$0, %eax	#, D.15055
.L493:
	.loc 1 3273 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	final_biv_value, .-final_biv_value
	.section	.rodata
	.align 8
.LC44:
	.string	"Final giv value for %d, depends on reversed biv\n"
	.align 8
.LC45:
	.string	"Final giv value for %d, calc from biv's value.\n"
	.align 8
.LC46:
	.string	"Final giv value for %d, giv dead after loop exit.\n"
	.text
	.globl	final_giv_value
	.type	final_giv_value, @function
final_giv_value:
.LFB18:
	.loc 1 3282 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$112, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -104(%rbp)	# loop, loop
	movq	%rsi, -112(%rbp)	# v, v
	.loc 1 3283 0
	movq	-104(%rbp), %rax	# loop, tmp109
	movq	160(%rax), %rax	# loop_7(D)->aux, D.15068
	addq	$208, %rax	#, tmp110
	movq	%rax, -64(%rbp)	# tmp110, ivs
	.loc 1 3288 0
	movq	-104(%rbp), %rax	# loop, tmp111
	movq	200(%rax), %rax	# loop_7(D)->end, tmp112
	movq	%rax, -56(%rbp)	# tmp112, loop_end
	.loc 1 3289 0
	movq	-104(%rbp), %rax	# loop, tmp113
	movq	160(%rax), %rax	# loop_7(D)->aux, D.15068
	movq	96(%rax), %rax	# MEM[(struct loop_info *)_11].n_iterations, tmp114
	movq	%rax, -48(%rbp)	# tmp114, n_iterations
	.loc 1 3291 0
	movq	-64(%rbp), %rax	# ivs, tmp115
	movq	(%rax), %rdx	# ivs_9->regs, D.15069
	movq	-112(%rbp), %rax	# v, tmp116
	movq	16(%rax), %rax	# v_14(D)->src_reg, D.15070
	movl	8(%rax), %eax	# _15->fld[0].rtuint, D.15071
	movl	%eax, %eax	# D.15071, D.15072
	salq	$4, %rax	#, D.15072
	addq	%rdx, %rax	# D.15069, D.15069
	movq	8(%rax), %rax	# _19->iv.class, tmp117
	movq	%rax, -40(%rbp)	# tmp117, bl
	.loc 1 3297 0
	movq	-40(%rbp), %rax	# bl, tmp118
	movzbl	88(%rax), %eax	# *bl_20, D.15073
	andl	$8, %eax	#, D.15073
	testb	%al, %al	# D.15073
	je	.L501	#,
	.loc 1 3299 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.239
	testq	%rax, %rax	# loop_dump_stream.239
	je	.L502	#,
	.loc 1 3302 0
	movq	-112(%rbp), %rax	# v, tmp119
	movq	32(%rax), %rax	# v_14(D)->dest_reg, D.15070
	.loc 1 3300 0
	movl	8(%rax), %edx	# _24->fld[0].rtuint, D.15071
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.240
	movl	$.LC44, %esi	#,
	movq	%rax, %rdi	# loop_dump_stream.240,
	movl	$0, %eax	#,
	call	fprintf	#
.L502:
	.loc 1 3303 0
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, D.15067
	jmp	.L503	#
.L501:
	.loc 1 3316 0
	cmpq	$0, -48(%rbp)	#, n_iterations
	je	.L504	#,
	.loc 1 3317 0
	movq	-104(%rbp), %rax	# loop, tmp120
	movl	240(%rax), %eax	# loop_7(D)->exit_count, D.15074
	testl	%eax, %eax	# D.15074
	jne	.L504	#,
	.loc 1 3318 0
	movq	-112(%rbp), %rax	# v, tmp121
	movzbl	100(%rax), %eax	# *v_14(D), D.15073
	andl	$16, %eax	#, D.15073
	testb	%al, %al	# D.15073
	je	.L504	#,
	.loc 1 3331 0
	movq	-40(%rbp), %rax	# bl, tmp122
	movq	%rax, %rdi	# tmp122,
	call	biv_total_increment	#
	movq	%rax, -32(%rbp)	# tmp123, increment
	.loc 1 3333 0
	cmpq	$0, -32(%rbp)	#, increment
	je	.L504	#,
	.loc 1 3333 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rdx	# increment, tmp124
	movq	-104(%rbp), %rax	# loop, tmp125
	movq	%rdx, %rsi	# tmp124,
	movq	%rax, %rdi	# tmp125,
	call	loop_invariant_p	#
	testl	%eax, %eax	# D.15074
	je	.L504	#,
	.loc 1 3334 0 is_stmt 1
	movq	-40(%rbp), %rax	# bl, tmp126
	movq	40(%rax), %rdx	# bl_20->initial_value, D.15070
	movq	-104(%rbp), %rax	# loop, tmp127
	movq	%rdx, %rsi	# D.15070,
	movq	%rax, %rdi	# tmp127,
	call	loop_invariant_p	#
	testl	%eax, %eax	# D.15074
	je	.L504	#,
	.loc 1 3347 0
	movq	-112(%rbp), %rax	# v, tmp128
	movl	48(%rax), %eax	# v_14(D)->mode, D.15075
	movl	%eax, %edi	# D.15075,
	call	gen_reg_rtx	#
	movq	%rax, -80(%rbp)	# tmp129, tem
	.loc 1 3348 0
	movq	-40(%rbp), %rax	# bl, tmp130
	movq	8(%rax), %rax	# bl_20->biv, D.15076
	movq	72(%rax), %rcx	# _37->add_val, D.15070
	movq	-80(%rbp), %rax	# tem, tmp131
	movl	8(%rax), %eax	# tem_36->fld[0].rtuint, D.15071
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.15070,
	movl	%eax, %edi	# D.15071,
	call	record_base_value	#
	.loc 1 3349 0
	movq	-40(%rbp), %rax	# bl, tmp132
	movq	40(%rax), %rdx	# bl_20->initial_value, D.15070
	movq	-112(%rbp), %rax	# v, tmp133
	movq	%rdx, %rsi	# D.15070,
	movq	%rax, %rdi	# tmp133,
	call	extend_value_for_giv	#
	movq	%rax, %r12	#, D.15070
	movq	-48(%rbp), %rax	# n_iterations, n_iterations.241
	movq	%rax, %rsi	# n_iterations.241,
	movl	$0, %edi	#,
	call	gen_rtx_CONST_INT	#
	movq	%rax, %rbx	#, D.15070
	movq	-32(%rbp), %rdx	# increment, tmp134
	movq	-112(%rbp), %rax	# v, tmp135
	movq	%rdx, %rsi	# tmp134,
	movq	%rax, %rdi	# tmp135,
	call	extend_value_for_giv	#
	movq	%rax, %rsi	#, D.15070
	movq	-80(%rbp), %rdx	# tem, tmp136
	movq	-104(%rbp), %rax	# loop, tmp137
	movq	%rdx, %r8	# tmp136,
	movq	%r12, %rcx	# D.15070,
	movq	%rbx, %rdx	# D.15070,
	movq	%rax, %rdi	# tmp137,
	call	loop_iv_add_mult_sink	#
	.loc 1 3355 0
	movq	-112(%rbp), %rax	# v, tmp138
	movq	(%rax), %rax	# v_14(D)->insn, D.15070
	movq	24(%rax), %rax	# _45->fld[2].rtx, tmp139
	movq	%rax, -88(%rbp)	# tmp139, insn
	jmp	.L505	#
.L509:
.LBB35:
	.loc 1 3360 0
	movq	-40(%rbp), %rax	# bl, tmp140
	movq	8(%rax), %rax	# bl_20->biv, tmp141
	movq	%rax, -72(%rbp)	# tmp141, biv
	jmp	.L506	#
.L508:
	.loc 1 3361 0
	movq	-72(%rbp), %rax	# biv, tmp142
	movq	(%rax), %rax	# biv_5->insn, D.15070
	cmpq	-88(%rbp), %rax	# insn, D.15070
	jne	.L507	#,
	.loc 1 3363 0
	call	start_sequence	#
	.loc 1 3364 0
	movq	-72(%rbp), %rax	# biv, tmp143
	movq	72(%rax), %rcx	# biv_5->add_val, D.15070
	movq	-80(%rbp), %rax	# tem, tmp144
	movzbl	2(%rax), %eax	# tem_3->mode, D.15073
	movzbl	%al, %eax	# D.15073, D.15075
	movq	-80(%rbp), %rdx	# tem, tmp145
	movl	$3, (%rsp)	#,
	movl	$0, %r9d	#,
	movl	$0, %r8d	#,
	movl	$76, %esi	#,
	movl	%eax, %edi	# D.15075,
	call	expand_simple_binop	#
	movq	%rax, -80(%rbp)	# tmp146, tem
	.loc 1 3367 0
	call	gen_sequence	#
	movq	%rax, -24(%rbp)	# tmp147, seq
	.loc 1 3368 0
	call	end_sequence	#
	.loc 1 3369 0
	movq	-24(%rbp), %rdx	# seq, tmp148
	movq	-104(%rbp), %rax	# loop, tmp149
	movq	%rdx, %rsi	# tmp148,
	movq	%rax, %rdi	# tmp149,
	call	loop_insn_sink	#
.L507:
	.loc 1 3360 0
	movq	-72(%rbp), %rax	# biv, tmp150
	movq	128(%rax), %rax	# biv_5->next_iv, tmp151
	movq	%rax, -72(%rbp)	# tmp151, biv
.L506:
	.loc 1 3360 0 is_stmt 0 discriminator 1
	cmpq	$0, -72(%rbp)	#, biv
	jne	.L508	#,
.LBE35:
	.loc 1 3356 0 is_stmt 1
	movq	-88(%rbp), %rax	# insn, tmp152
	movq	24(%rax), %rax	# insn_1->fld[2].rtx, tmp153
	movq	%rax, -88(%rbp)	# tmp153, insn
.L505:
	.loc 1 3355 0 discriminator 1
	movq	-88(%rbp), %rax	# insn, tmp154
	cmpq	-56(%rbp), %rax	# loop_end, tmp154
	jne	.L509	#,
	.loc 1 3374 0
	movq	-112(%rbp), %rax	# v, tmp155
	movq	72(%rax), %rcx	# v_14(D)->add_val, D.15070
	movq	-112(%rbp), %rax	# v, tmp156
	movq	64(%rax), %rdx	# v_14(D)->mult_val, D.15070
	movq	-80(%rbp), %rdi	# tem, tmp157
	movq	-80(%rbp), %rsi	# tem, tmp158
	movq	-104(%rbp), %rax	# loop, tmp159
	movq	%rdi, %r8	# tmp157,
	movq	%rax, %rdi	# tmp159,
	call	loop_iv_add_mult_sink	#
	.loc 1 3376 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.242
	testq	%rax, %rax	# loop_dump_stream.242
	je	.L510	#,
	.loc 1 3379 0
	movq	-112(%rbp), %rax	# v, tmp160
	movq	32(%rax), %rax	# v_14(D)->dest_reg, D.15070
	.loc 1 3377 0
	movl	8(%rax), %edx	# _59->fld[0].rtuint, D.15071
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.243
	movl	$.LC45, %esi	#,
	movq	%rax, %rdi	# loop_dump_stream.243,
	movl	$0, %eax	#,
	call	fprintf	#
.L510:
	.loc 1 3381 0
	movq	-80(%rbp), %rax	# tem, D.15067
	jmp	.L503	#
.L504:
	.loc 1 3386 0
	movq	-112(%rbp), %rax	# v, tmp161
	movzbl	100(%rax), %eax	# *v_14(D), D.15073
	andl	$1, %eax	#, D.15073
	testb	%al, %al	# D.15073
	je	.L511	#,
	.loc 1 3387 0
	movl	$__FUNCTION__.11628, %edx	#,
	movl	$3387, %esi	#,
	movl	$.LC13, %edi	#,
	call	fancy_abort	#
.L511:
	.loc 1 3390 0
	movq	-112(%rbp), %rax	# v, tmp162
	movq	32(%rax), %rdx	# v_14(D)->dest_reg, D.15070
	movq	-104(%rbp), %rax	# loop, tmp163
	movq	%rdx, %rsi	# D.15070,
	movq	%rax, %rdi	# tmp163,
	call	reg_dead_after_loop	#
	testl	%eax, %eax	# D.15074
	je	.L512	#,
	.loc 1 3392 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.244
	testq	%rax, %rax	# loop_dump_stream.244
	je	.L513	#,
	.loc 1 3395 0
	movq	-112(%rbp), %rax	# v, tmp164
	movq	32(%rax), %rax	# v_14(D)->dest_reg, D.15070
	.loc 1 3393 0
	movl	8(%rax), %edx	# _68->fld[0].rtuint, D.15071
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.245
	movl	$.LC46, %esi	#,
	movq	%rax, %rdi	# loop_dump_stream.245,
	movl	$0, %eax	#,
	call	fprintf	#
.L513:
	.loc 1 3397 0
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, D.15067
	jmp	.L503	#
.L512:
	.loc 1 3400 0
	movl	$0, %eax	#, D.15067
.L503:
	.loc 1 3401 0
	addq	$112, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	final_giv_value, .-final_giv_value
	.type	loop_find_equiv_value, @function
loop_find_equiv_value:
.LFB19:
	.loc 1 3411 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# loop, loop
	movq	%rsi, -64(%rbp)	# reg, reg
	.loc 1 3412 0
	movq	-56(%rbp), %rax	# loop, tmp94
	movq	192(%rax), %rax	# loop_7(D)->start, tmp95
	movq	%rax, -24(%rbp)	# tmp95, loop_start
	.loc 1 3416 0
	movq	-64(%rbp), %rax	# reg, tmp96
	movq	%rax, -32(%rbp)	# tmp96, ret
	.loc 1 3417 0
	movq	-24(%rbp), %rax	# loop_start, tmp97
	movq	16(%rax), %rax	# loop_start_8->fld[1].rtx, tmp98
	movq	%rax, -40(%rbp)	# tmp98, insn
	jmp	.L515	#
.L527:
	.loc 1 3419 0
	movq	-40(%rbp), %rax	# insn, tmp99
	movzwl	(%rax), %eax	# insn_1->code, D.15080
	cmpw	$36, %ax	#, D.15080
	jne	.L516	#,
	.loc 1 3420 0
	jmp	.L517	#
.L516:
	.loc 1 3422 0
	movq	-40(%rbp), %rax	# insn, tmp100
	movzwl	(%rax), %eax	# insn_1->code, D.15080
	movzwl	%ax, %eax	# D.15080, D.15081
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.15082
	cmpb	$105, %al	#, D.15082
	jne	.L518	#,
	.loc 1 3422 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rdx	# insn, tmp102
	movq	-64(%rbp), %rax	# reg, tmp103
	movq	%rdx, %rsi	# tmp102,
	movq	%rax, %rdi	# tmp103,
	call	reg_set_p	#
	testl	%eax, %eax	# D.15081
	je	.L518	#,
	.loc 1 3427 0 is_stmt 1
	movq	-40(%rbp), %rax	# insn, tmp104
	movzwl	(%rax), %eax	# insn_1->code, D.15080
	movzwl	%ax, %eax	# D.15080, D.15081
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.15082
	cmpb	$105, %al	#, D.15082
	jne	.L519	#,
	.loc 1 3427 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# insn, tmp106
	movq	32(%rax), %rax	# insn_1->fld[3].rtx, D.15083
	movzwl	(%rax), %eax	# _20->code, D.15080
	cmpw	$47, %ax	#, D.15080
	jne	.L520	#,
	.loc 1 3427 0 discriminator 3
	movq	-40(%rbp), %rax	# insn, tmp107
	movq	32(%rax), %rax	# insn_1->fld[3].rtx, iftmp.247
	jmp	.L522	#
.L520:
	.loc 1 3427 0 discriminator 4
	movq	-40(%rbp), %rax	# insn, tmp108
	movq	32(%rax), %rdx	# insn_1->fld[3].rtx, D.15083
	movq	-40(%rbp), %rax	# insn, tmp109
	movq	%rdx, %rsi	# D.15083,
	movq	%rax, %rdi	# tmp109,
	call	single_set_2	#
	jmp	.L522	#
.L519:
	.loc 1 3427 0 discriminator 2
	movl	$0, %eax	#, iftmp.246
.L522:
	.loc 1 3427 0 discriminator 5
	movq	%rax, -16(%rbp)	# iftmp.246, set
	cmpq	$0, -16(%rbp)	#, set
	je	.L523	#,
	.loc 1 3428 0 is_stmt 1
	movq	-16(%rbp), %rax	# set, tmp110
	movq	8(%rax), %rax	# set_27->fld[0].rtx, D.15083
	cmpq	-64(%rbp), %rax	# reg, D.15083
	jne	.L523	#,
.LBB36:
	.loc 1 3430 0
	movq	-40(%rbp), %rax	# insn, tmp111
	movl	$0, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp111,
	call	find_reg_note	#
	movq	%rax, -8(%rbp)	# tmp112, note
	.loc 1 3435 0
	cmpq	$0, -8(%rbp)	#, note
	je	.L524	#,
	.loc 1 3435 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# note, tmp113
	movq	8(%rax), %rax	# note_29->fld[0].rtx, D.15083
	movzwl	(%rax), %eax	# _30->code, D.15080
	cmpw	$3, %ax	#, D.15080
	je	.L524	#,
	.loc 1 3436 0 is_stmt 1
	movq	-8(%rbp), %rax	# note, tmp114
	movq	8(%rax), %rax	# note_29->fld[0].rtx, D.15083
	movzwl	(%rax), %eax	# _32->code, D.15080
	cmpw	$67, %ax	#, D.15080
	je	.L525	#,
	.loc 1 3436 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# note, tmp115
	movq	8(%rax), %rax	# note_29->fld[0].rtx, D.15083
	movzwl	(%rax), %eax	# _34->code, D.15080
	cmpw	$68, %ax	#, D.15080
	je	.L525	#,
	movq	-8(%rbp), %rax	# note, tmp116
	movq	8(%rax), %rax	# note_29->fld[0].rtx, D.15083
	movzwl	(%rax), %eax	# _36->code, D.15080
	cmpw	$54, %ax	#, D.15080
	je	.L525	#,
	movq	-8(%rbp), %rax	# note, tmp117
	movq	8(%rax), %rax	# note_29->fld[0].rtx, D.15083
	movzwl	(%rax), %eax	# _38->code, D.15080
	cmpw	$55, %ax	#, D.15080
	je	.L525	#,
	movq	-8(%rbp), %rax	# note, tmp118
	movq	8(%rax), %rax	# note_29->fld[0].rtx, D.15083
	movzwl	(%rax), %eax	# _40->code, D.15080
	cmpw	$58, %ax	#, D.15080
	je	.L525	#,
	movq	-8(%rbp), %rax	# note, tmp119
	movq	8(%rax), %rax	# note_29->fld[0].rtx, D.15083
	movzwl	(%rax), %eax	# _42->code, D.15080
	cmpw	$134, %ax	#, D.15080
	je	.L525	#,
	movq	-8(%rbp), %rax	# note, tmp120
	movq	8(%rax), %rax	# note_29->fld[0].rtx, D.15083
	movzwl	(%rax), %eax	# _44->code, D.15080
	cmpw	$56, %ax	#, D.15080
	je	.L525	#,
	movq	-8(%rbp), %rax	# note, tmp121
	movq	8(%rax), %rax	# note_29->fld[0].rtx, D.15083
	movzwl	(%rax), %eax	# _46->code, D.15080
	cmpw	$140, %ax	#, D.15080
	jne	.L524	#,
.L525:
	.loc 1 3437 0 is_stmt 1
	movq	-8(%rbp), %rax	# note, tmp122
	movq	8(%rax), %rax	# note_29->fld[0].rtx, tmp123
	movq	%rax, -32(%rbp)	# tmp123, ret
	jmp	.L526	#
.L524:
	.loc 1 3439 0
	movq	-16(%rbp), %rax	# set, tmp124
	movq	16(%rax), %rax	# set_27->fld[1].rtx, tmp125
	movq	%rax, -32(%rbp)	# tmp125, ret
.L526:
	.loc 1 3443 0
	movq	-24(%rbp), %rdx	# loop_start, tmp126
	movq	-40(%rbp), %rcx	# insn, tmp127
	movq	-32(%rbp), %rax	# ret, tmp128
	movq	%rcx, %rsi	# tmp127,
	movq	%rax, %rdi	# tmp128,
	call	modified_between_p	#
	testl	%eax, %eax	# D.15081
	je	.L523	#,
	.loc 1 3444 0
	movq	-64(%rbp), %rax	# reg, tmp129
	movq	%rax, -32(%rbp)	# tmp129, ret
.LBE36:
	.loc 1 3446 0
	jmp	.L517	#
.L523:
	jmp	.L517	#
.L518:
	.loc 1 3417 0
	movq	-40(%rbp), %rax	# insn, tmp130
	movq	16(%rax), %rax	# insn_1->fld[1].rtx, tmp131
	movq	%rax, -40(%rbp)	# tmp131, insn
.L515:
	.loc 1 3417 0 is_stmt 0 discriminator 1
	cmpq	$0, -40(%rbp)	#, insn
	jne	.L527	#,
.L517:
	.loc 1 3449 0 is_stmt 1
	movq	-32(%rbp), %rax	# ret, D.15084
	.loc 1 3450 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	loop_find_equiv_value, .-loop_find_equiv_value
	.type	subtract_reg_term, @function
subtract_reg_term:
.LFB20:
	.loc 1 3465 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# op, op
	movq	%rsi, -16(%rbp)	# reg, reg
	.loc 1 3466 0
	movq	-8(%rbp), %rax	# op, tmp64
	cmpq	-16(%rbp), %rax	# reg, tmp64
	jne	.L530	#,
	.loc 1 3467 0
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, D.15085
	jmp	.L531	#
.L530:
	.loc 1 3468 0
	movq	-8(%rbp), %rax	# op, tmp65
	movzwl	(%rax), %eax	# op_2(D)->code, D.15086
	cmpw	$75, %ax	#, D.15086
	jne	.L532	#,
	.loc 1 3470 0
	movq	-8(%rbp), %rax	# op, tmp66
	movq	8(%rax), %rax	# op_2(D)->fld[0].rtx, D.15087
	cmpq	-16(%rbp), %rax	# reg, D.15087
	jne	.L533	#,
	.loc 1 3471 0
	movq	-8(%rbp), %rax	# op, tmp67
	movq	16(%rax), %rax	# op_2(D)->fld[1].rtx, D.15085
	jmp	.L531	#
.L533:
	.loc 1 3472 0
	movq	-8(%rbp), %rax	# op, tmp68
	movq	16(%rax), %rax	# op_2(D)->fld[1].rtx, D.15087
	cmpq	-16(%rbp), %rax	# reg, D.15087
	jne	.L532	#,
	.loc 1 3473 0
	movq	-8(%rbp), %rax	# op, tmp69
	movq	8(%rax), %rax	# op_2(D)->fld[0].rtx, D.15085
	jmp	.L531	#
.L532:
	.loc 1 3476 0
	movl	$__FUNCTION__.11645, %edx	#,
	movl	$3476, %esi	#,
	movl	$.LC13, %edi	#,
	call	fancy_abort	#
.L531:
	.loc 1 3477 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	subtract_reg_term, .-subtract_reg_term
	.type	find_common_reg_term, @function
find_common_reg_term:
.LFB21:
	.loc 1 3486 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)	# op0, op0
	movq	%rsi, -48(%rbp)	# op1, op1
	.loc 1 3487 0
	movq	-40(%rbp), %rax	# op0, tmp69
	movzwl	(%rax), %eax	# op0_6(D)->code, D.15089
	cmpw	$61, %ax	#, D.15089
	je	.L535	#,
	.loc 1 3487 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# op0, tmp70
	movzwl	(%rax), %eax	# op0_6(D)->code, D.15089
	cmpw	$75, %ax	#, D.15089
	jne	.L536	#,
.L535:
	.loc 1 3488 0 is_stmt 1
	movq	-48(%rbp), %rax	# op1, tmp71
	movzwl	(%rax), %eax	# op1_9(D)->code, D.15089
	cmpw	$61, %ax	#, D.15089
	je	.L537	#,
	.loc 1 3488 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# op1, tmp72
	movzwl	(%rax), %eax	# op1_9(D)->code, D.15089
	cmpw	$75, %ax	#, D.15089
	jne	.L536	#,
.L537:
.LBB37:
	.loc 1 3495 0 is_stmt 1
	movq	-40(%rbp), %rax	# op0, tmp73
	movzwl	(%rax), %eax	# op0_6(D)->code, D.15089
	cmpw	$75, %ax	#, D.15089
	jne	.L538	#,
	.loc 1 3496 0
	movq	-40(%rbp), %rax	# op0, tmp74
	movq	16(%rax), %rax	# op0_6(D)->fld[1].rtx, tmp75
	movq	%rax, -24(%rbp)	# tmp75, op01
	movq	-40(%rbp), %rax	# op0, tmp76
	movq	8(%rax), %rax	# op0_6(D)->fld[0].rtx, tmp77
	movq	%rax, -32(%rbp)	# tmp77, op00
	jmp	.L539	#
.L538:
	.loc 1 3498 0
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, tmp78
	movq	%rax, -24(%rbp)	# tmp78, op01
	movq	-40(%rbp), %rax	# op0, tmp79
	movq	%rax, -32(%rbp)	# tmp79, op00
.L539:
	.loc 1 3500 0
	movq	-48(%rbp), %rax	# op1, tmp80
	movzwl	(%rax), %eax	# op1_9(D)->code, D.15089
	cmpw	$75, %ax	#, D.15089
	jne	.L540	#,
	.loc 1 3501 0
	movq	-48(%rbp), %rax	# op1, tmp81
	movq	16(%rax), %rax	# op1_9(D)->fld[1].rtx, tmp82
	movq	%rax, -8(%rbp)	# tmp82, op11
	movq	-48(%rbp), %rax	# op1, tmp83
	movq	8(%rax), %rax	# op1_9(D)->fld[0].rtx, tmp84
	movq	%rax, -16(%rbp)	# tmp84, op10
	jmp	.L541	#
.L540:
	.loc 1 3503 0
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, tmp85
	movq	%rax, -8(%rbp)	# tmp85, op11
	movq	-48(%rbp), %rax	# op1, tmp86
	movq	%rax, -16(%rbp)	# tmp86, op10
.L541:
	.loc 1 3506 0
	movq	-32(%rbp), %rax	# op00, tmp87
	movzwl	(%rax), %eax	# op00_1->code, D.15089
	cmpw	$61, %ax	#, D.15089
	jne	.L542	#,
	.loc 1 3506 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# op00, tmp88
	cmpq	-16(%rbp), %rax	# op10, tmp88
	je	.L543	#,
	movq	-32(%rbp), %rax	# op00, tmp89
	cmpq	-8(%rbp), %rax	# op11, tmp89
	jne	.L542	#,
.L543:
	.loc 1 3507 0 is_stmt 1
	movq	-32(%rbp), %rax	# op00, D.15088
	jmp	.L544	#
.L542:
	.loc 1 3508 0
	movq	-24(%rbp), %rax	# op01, tmp90
	movzwl	(%rax), %eax	# op01_2->code, D.15089
	cmpw	$61, %ax	#, D.15089
	jne	.L536	#,
	.loc 1 3508 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# op01, tmp91
	cmpq	-16(%rbp), %rax	# op10, tmp91
	je	.L545	#,
	movq	-24(%rbp), %rax	# op01, tmp92
	cmpq	-8(%rbp), %rax	# op11, tmp92
	jne	.L536	#,
.L545:
	.loc 1 3509 0 is_stmt 1
	movq	-24(%rbp), %rax	# op01, D.15088
	jmp	.L544	#
.L536:
.LBE37:
	.loc 1 3513 0
	movl	$0, %eax	#, D.15088
.L544:
	.loc 1 3514 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	find_common_reg_term, .-find_common_reg_term
	.section	.rodata
	.align 8
.LC47:
	.string	"Loop iterations: No final conditional branch found.\n"
	.align 8
.LC48:
	.string	"Loop iterations: Loop has multiple back edges.\n"
	.align 8
.LC49:
	.string	"Loop iterations: Jump insn has null JUMP_LABEL.\n"
	.align 8
.LC50:
	.string	"Loop iterations: No final comparison found.\n"
	.align 8
.LC51:
	.string	"Loop iterations: Comparison not against register.\n"
	.align 8
.LC52:
	.string	"Loop iterations: No reg_iv_type entry for iteration var.\n"
	.align 8
.LC53:
	.string	"Loop iterations: Iteration var rejected because mode too large.\n"
	.align 8
.LC54:
	.string	"Loop iterations: Iteration var not an integer.\n"
	.align 8
.LC55:
	.string	"Loop iterations: Basic induction var not set once in each iteration.\n"
	.align 8
.LC56:
	.string	"Loop iterations: General induction var not set once in each iteration.\n"
	.align 8
.LC57:
	.string	"Loop iterations: Basic induction var add_val is REG %d.\n"
	.align 8
.LC58:
	.string	"Loop iterations: Giv iterator, initial value bias %ld.\n"
	.align 8
.LC59:
	.string	"Loop iterations: Not basic or general induction var.\n"
	.align 8
.LC60:
	.string	"Loop iterations: Increment value can't be calculated.\n"
	.align 8
.LC61:
	.string	"Loop iterations: Increment value not constant "
	.align 8
.LC62:
	.string	"Loop iterations: Initial value not constant "
	.align 8
.LC63:
	.string	"Loop iterations: EQ comparison loop.\n"
	.align 8
.LC64:
	.string	"Loop iterations: Final value not constant "
	.align 8
.LC65:
	.string	"Loop iterations: Not normal loop.\n"
	.text
	.globl	loop_iterations
	.type	loop_iterations, @function
loop_iterations:
.LFB22:
	.loc 1 3523 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$240, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -248(%rbp)	# loop, loop
	.loc 1 3524 0
	movq	-248(%rbp), %rax	# loop, tmp310
	movq	160(%rax), %rax	# loop_37(D)->aux, tmp311
	movq	%rax, -120(%rbp)	# tmp311, loop_info
	.loc 1 3525 0
	movq	-248(%rbp), %rax	# loop, tmp312
	movq	160(%rax), %rax	# loop_37(D)->aux, D.15091
	addq	$208, %rax	#, tmp313
	movq	%rax, -112(%rbp)	# tmp313, ivs
	.loc 1 3539 0
	movq	-120(%rbp), %rax	# loop_info, tmp314
	movq	$0, 96(%rax)	#, loop_info_38->n_iterations
	.loc 1 3540 0
	movq	-120(%rbp), %rax	# loop_info, tmp315
	movq	$0, 32(%rax)	#, loop_info_38->initial_value
	.loc 1 3541 0
	movq	-120(%rbp), %rax	# loop_info, tmp316
	movq	$0, 56(%rax)	#, loop_info_38->initial_equiv_value
	.loc 1 3542 0
	movq	-120(%rbp), %rax	# loop_info, tmp317
	movq	$0, 40(%rax)	#, loop_info_38->comparison_value
	.loc 1 3543 0
	movq	-120(%rbp), %rax	# loop_info, tmp318
	movq	$0, 48(%rax)	#, loop_info_38->final_value
	.loc 1 3544 0
	movq	-120(%rbp), %rax	# loop_info, tmp319
	movq	$0, 64(%rax)	#, loop_info_38->final_equiv_value
	.loc 1 3545 0
	movq	-120(%rbp), %rax	# loop_info, tmp320
	movq	$0, 80(%rax)	#, loop_info_38->increment
	.loc 1 3546 0
	movq	-120(%rbp), %rax	# loop_info, tmp321
	movq	$0, 72(%rax)	#, loop_info_38->iteration_var
	.loc 1 3547 0
	movq	-120(%rbp), %rax	# loop_info, tmp322
	movl	$1, 104(%rax)	#, loop_info_38->unroll_number
	.loc 1 3548 0
	movq	-120(%rbp), %rax	# loop_info, tmp323
	movq	$0, 112(%rax)	#, loop_info_38->iv
	.loc 1 3554 0
	movq	-248(%rbp), %rax	# loop, tmp324
	movq	200(%rax), %rax	# loop_37(D)->end, D.15092
	movq	16(%rax), %rax	# _41->fld[1].rtx, tmp325
	movq	%rax, -104(%rbp)	# tmp325, last_loop_insn
	.loc 1 3559 0
	movq	-104(%rbp), %rax	# last_loop_insn, tmp326
	movzwl	(%rax), %eax	# last_loop_insn_42->code, D.15093
	cmpw	$33, %ax	#, D.15093
	je	.L547	#,
	.loc 1 3561 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.248
	testq	%rax, %rax	# loop_dump_stream.248
	je	.L548	#,
	.loc 1 3562 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.249
	movq	%rax, %rcx	# loop_dump_stream.249,
	movl	$52, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC47, %edi	#,
	call	fwrite	#
.L548:
	.loc 1 3564 0
	movl	$0, %eax	#, D.15090
	jmp	.L549	#
.L547:
	.loc 1 3569 0
	movq	-104(%rbp), %rax	# last_loop_insn, tmp327
	movq	64(%rax), %rax	# last_loop_insn_42->fld[7].rtx, D.15092
	movl	32(%rax), %eax	# _47->fld[3].rtint, D.15094
	cmpl	$1, %eax	#, D.15094
	jle	.L550	#,
	.loc 1 3571 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.250
	testq	%rax, %rax	# loop_dump_stream.250
	je	.L551	#,
	.loc 1 3572 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.251
	movq	%rax, %rcx	# loop_dump_stream.251,
	movl	$47, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC48, %edi	#,
	call	fwrite	#
.L551:
	.loc 1 3574 0
	movl	$0, %eax	#, D.15090
	jmp	.L549	#
.L550:
	.loc 1 3579 0
	movq	-248(%rbp), %rax	# loop, tmp328
	movq	208(%rax), %rax	# loop_37(D)->top, D.15092
	testq	%rax, %rax	# D.15092
	je	.L552	#,
	.loc 1 3579 0 is_stmt 0 discriminator 1
	movq	-248(%rbp), %rax	# loop, tmp329
	movq	176(%rax), %rax	# loop_37(D)->cont, D.15092
	testq	%rax, %rax	# D.15092
	je	.L552	#,
.LBB38:
	.loc 1 3581 0 is_stmt 1
	movq	-104(%rbp), %rax	# last_loop_insn, tmp330
	movq	16(%rax), %rax	# last_loop_insn_42->fld[1].rtx, tmp331
	movq	%rax, -168(%rbp)	# tmp331, temp
.L565:
	.loc 1 3585 0
	movq	-168(%rbp), %rax	# temp, tmp332
	movzwl	(%rax), %eax	# temp_27->code, D.15093
	cmpw	$33, %ax	#, D.15093
	jne	.L553	#,
	.loc 1 3588 0
	movq	-168(%rbp), %rax	# temp, tmp333
	movq	64(%rax), %rax	# temp_27->fld[7].rtx, D.15092
	testq	%rax, %rax	# D.15092
	jne	.L554	#,
	.loc 1 3590 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.252
	testq	%rax, %rax	# loop_dump_stream.252
	je	.L555	#,
	.loc 1 3592 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.253
	movq	%rax, %rcx	# loop_dump_stream.253,
	movl	$48, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC49, %edi	#,
	call	fwrite	#
.L555:
	.loc 1 3594 0
	movl	$0, %eax	#, D.15090
	jmp	.L549	#
.L554:
	.loc 1 3599 0
	movq	-168(%rbp), %rax	# temp, tmp334
	movq	64(%rax), %rax	# temp_27->fld[7].rtx, D.15092
	movl	8(%rax), %edx	# _60->fld[0].rtint, D.15094
	movl	max_uid_for_loop(%rip), %eax	# max_uid_for_loop, max_uid_for_loop.254
	.loc 1 3597 0
	cmpl	%eax, %edx	# max_uid_for_loop.254, D.15094
	jge	.L553	#,
	.loc 1 3601 0
	movq	-168(%rbp), %rax	# temp, tmp335
	movq	64(%rax), %rax	# temp_27->fld[7].rtx, D.15092
	movl	8(%rax), %edx	# _63->fld[0].rtint, D.15094
	movl	max_uid_for_loop(%rip), %eax	# max_uid_for_loop, max_uid_for_loop.256
	cmpl	%eax, %edx	# max_uid_for_loop.256, D.15094
	jge	.L556	#,
	.loc 1 3601 0 is_stmt 0 discriminator 1
	movq	uid_luid(%rip), %rdx	# uid_luid, uid_luid.257
	movq	-168(%rbp), %rax	# temp, tmp336
	movq	64(%rax), %rax	# temp_27->fld[7].rtx, D.15092
	movl	8(%rax), %eax	# _67->fld[0].rtint, D.15094
	cltq
	salq	$2, %rax	#, D.15090
	addq	%rdx, %rax	# uid_luid.257, D.15095
	movl	(%rax), %edx	# *_71, iftmp.255
	movq	-248(%rbp), %rax	# loop, tmp337
	movq	208(%rax), %rax	# loop_37(D)->top, D.15092
	movl	8(%rax), %ecx	# _73->fld[0].rtint, D.15094
	movl	max_uid_for_loop(%rip), %eax	# max_uid_for_loop, max_uid_for_loop.259
	cmpl	%eax, %ecx	# max_uid_for_loop.259, D.15094
	jge	.L558	#,
	jmp	.L649	#
.L556:
	.loc 1 3601 0 discriminator 2
	movl	$__FUNCTION__.11678, %edx	#,
	movl	$3601, %esi	#,
	movl	$.LC13, %edi	#,
	call	fancy_abort	#
.L649:
	.loc 1 3601 0 discriminator 1
	movq	uid_luid(%rip), %rcx	# uid_luid, uid_luid.260
	movq	-248(%rbp), %rax	# loop, tmp338
	movq	208(%rax), %rax	# loop_37(D)->top, D.15092
	movl	8(%rax), %eax	# _77->fld[0].rtint, D.15094
	cltq
	salq	$2, %rax	#, D.15090
	addq	%rcx, %rax	# uid_luid.260, D.15095
	movl	(%rax), %eax	# *_81, iftmp.258
	cmpl	%eax, %edx	# iftmp.258, iftmp.255
	jle	.L553	#,
	jmp	.L650	#
.L558:
	.loc 1 3601 0 discriminator 2
	movl	$__FUNCTION__.11678, %edx	#,
	movl	$3601, %esi	#,
	movl	$.LC13, %edi	#,
	call	fancy_abort	#
.L650:
	.loc 1 3602 0 is_stmt 1
	movq	-168(%rbp), %rax	# temp, tmp339
	movq	64(%rax), %rax	# temp_27->fld[7].rtx, D.15092
	movl	8(%rax), %edx	# _83->fld[0].rtint, D.15094
	movl	max_uid_for_loop(%rip), %eax	# max_uid_for_loop, max_uid_for_loop.262
	cmpl	%eax, %edx	# max_uid_for_loop.262, D.15094
	jge	.L560	#,
	.loc 1 3602 0 is_stmt 0 discriminator 1
	movq	uid_luid(%rip), %rdx	# uid_luid, uid_luid.263
	movq	-168(%rbp), %rax	# temp, tmp340
	movq	64(%rax), %rax	# temp_27->fld[7].rtx, D.15092
	movl	8(%rax), %eax	# _87->fld[0].rtint, D.15094
	cltq
	salq	$2, %rax	#, D.15090
	addq	%rdx, %rax	# uid_luid.263, D.15095
	movl	(%rax), %edx	# *_91, iftmp.261
	movq	-248(%rbp), %rax	# loop, tmp341
	movq	176(%rax), %rax	# loop_37(D)->cont, D.15092
	movl	8(%rax), %ecx	# _93->fld[0].rtint, D.15094
	movl	max_uid_for_loop(%rip), %eax	# max_uid_for_loop, max_uid_for_loop.265
	cmpl	%eax, %ecx	# max_uid_for_loop.265, D.15094
	jge	.L562	#,
	jmp	.L651	#
.L560:
	.loc 1 3602 0 discriminator 2
	movl	$__FUNCTION__.11678, %edx	#,
	movl	$3602, %esi	#,
	movl	$.LC13, %edi	#,
	call	fancy_abort	#
.L651:
	.loc 1 3602 0 discriminator 1
	movq	uid_luid(%rip), %rcx	# uid_luid, uid_luid.266
	movq	-248(%rbp), %rax	# loop, tmp342
	movq	176(%rax), %rax	# loop_37(D)->cont, D.15092
	movl	8(%rax), %eax	# _97->fld[0].rtint, D.15094
	cltq
	salq	$2, %rax	#, D.15090
	addq	%rcx, %rax	# uid_luid.266, D.15095
	movl	(%rax), %eax	# *_101, iftmp.264
	cmpl	%eax, %edx	# iftmp.264, iftmp.261
	jge	.L553	#,
	jmp	.L652	#
.L562:
	.loc 1 3602 0 discriminator 2
	movl	$__FUNCTION__.11678, %edx	#,
	movl	$3602, %esi	#,
	movl	$.LC13, %edi	#,
	call	fancy_abort	#
.L652:
	.loc 1 3604 0 is_stmt 1
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.267
	testq	%rax, %rax	# loop_dump_stream.267
	je	.L564	#,
	.loc 1 3606 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.268
	movq	%rax, %rcx	# loop_dump_stream.268,
	movl	$47, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC48, %edi	#,
	call	fwrite	#
.L564:
	.loc 1 3608 0
	movl	$0, %eax	#, D.15090
	jmp	.L549	#
.L553:
	.loc 1 3612 0
	movq	-168(%rbp), %rax	# temp, tmp343
	movq	16(%rax), %rax	# temp_27->fld[1].rtx, tmp344
	movq	%rax, -168(%rbp)	# tmp344, temp
	movq	-248(%rbp), %rax	# loop, tmp345
	movq	176(%rax), %rax	# loop_37(D)->cont, D.15092
	cmpq	%rax, -168(%rbp)	# D.15092, temp
	jne	.L565	#,
.L552:
.LBE38:
	.loc 1 3619 0
	movq	-104(%rbp), %rdx	# last_loop_insn, tmp346
	movq	-248(%rbp), %rax	# loop, tmp347
	movq	%rdx, %rsi	# tmp346,
	movq	%rax, %rdi	# tmp347,
	call	get_condition_for_loop	#
	movq	%rax, -96(%rbp)	# tmp348, comparison
	.loc 1 3620 0
	cmpq	$0, -96(%rbp)	#, comparison
	jne	.L566	#,
	.loc 1 3622 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.269
	testq	%rax, %rax	# loop_dump_stream.269
	je	.L567	#,
	.loc 1 3623 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.270
	movq	%rax, %rcx	# loop_dump_stream.270,
	movl	$44, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC50, %edi	#,
	call	fwrite	#
.L567:
	.loc 1 3625 0
	movl	$0, %eax	#, D.15090
	jmp	.L549	#
.L566:
	.loc 1 3631 0
	movq	-96(%rbp), %rax	# comparison, tmp349
	movzwl	(%rax), %eax	# comparison_108->code, D.15093
	movzwl	%ax, %eax	# D.15093, tmp350
	movl	%eax, -220(%rbp)	# tmp350, comparison_code
	.loc 1 3632 0
	movq	-96(%rbp), %rax	# comparison, tmp351
	movq	8(%rax), %rax	# comparison_108->fld[0].rtx, tmp352
	movq	%rax, -88(%rbp)	# tmp352, iteration_var
	.loc 1 3633 0
	movq	-96(%rbp), %rax	# comparison, tmp353
	movq	16(%rax), %rax	# comparison_108->fld[1].rtx, tmp354
	movq	%rax, -80(%rbp)	# tmp354, comparison_value
	.loc 1 3635 0
	movq	-88(%rbp), %rax	# iteration_var, tmp355
	movzwl	(%rax), %eax	# iteration_var_114->code, D.15093
	cmpw	$61, %ax	#, D.15093
	je	.L568	#,
	.loc 1 3637 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.271
	testq	%rax, %rax	# loop_dump_stream.271
	je	.L569	#,
	.loc 1 3638 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.272
	movq	%rax, %rcx	# loop_dump_stream.272,
	movl	$50, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC51, %edi	#,
	call	fwrite	#
.L569:
	.loc 1 3640 0
	movl	$0, %eax	#, D.15090
	jmp	.L549	#
.L568:
	.loc 1 3649 0
	movq	-88(%rbp), %rax	# iteration_var, tmp356
	movl	8(%rax), %edx	# iteration_var_114->fld[0].rtuint, D.15096
	movq	-112(%rbp), %rax	# ivs, tmp357
	movl	8(%rax), %eax	# ivs_40->n_regs, D.15096
	cmpl	%eax, %edx	# D.15096, D.15096
	jb	.L570	#,
	.loc 1 3650 0
	movq	-88(%rbp), %rax	# iteration_var, tmp358
	movzbl	3(%rax), %eax	# *iteration_var_114, D.15097
	andl	$8, %eax	#, D.15097
	testb	%al, %al	# D.15097
	jne	.L570	#,
	.loc 1 3651 0
	movl	$__FUNCTION__.11678, %edx	#,
	movl	$3651, %esi	#,
	movl	$.LC13, %edi	#,
	call	fancy_abort	#
.L570:
	.loc 1 3658 0
	movq	$0, -216(%rbp)	#, initial_value
	.loc 1 3659 0
	movq	$0, -208(%rbp)	#, increment
	.loc 1 3667 0
	movq	-88(%rbp), %rax	# iteration_var, tmp359
	movl	8(%rax), %edx	# iteration_var_114->fld[0].rtuint, D.15096
	movq	-112(%rbp), %rax	# ivs, tmp360
	movl	8(%rax), %eax	# ivs_40->n_regs, D.15096
	cmpl	%eax, %edx	# D.15096, D.15096
	jb	.L571	#,
	.loc 1 3669 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.273
	testq	%rax, %rax	# loop_dump_stream.273
	je	.L572	#,
	.loc 1 3670 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.274
	movq	%rax, %rcx	# loop_dump_stream.274,
	movl	$57, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC52, %edi	#,
	call	fwrite	#
.L572:
	.loc 1 3672 0
	movl	$0, %eax	#, D.15090
	jmp	.L549	#
.L571:
	.loc 1 3678 0
	movq	-88(%rbp), %rax	# iteration_var, tmp361
	movzbl	2(%rax), %eax	# iteration_var_114->mode, D.15097
	movzbl	%al, %eax	# D.15097, D.15094
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.15093
	cmpw	$64, %ax	#, D.15093
	jbe	.L573	#,
	.loc 1 3681 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.275
	testq	%rax, %rax	# loop_dump_stream.275
	je	.L574	#,
	.loc 1 3682 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.276
	movq	%rax, %rcx	# loop_dump_stream.276,
	movl	$64, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC53, %edi	#,
	call	fwrite	#
.L574:
	.loc 1 3684 0
	movl	$0, %eax	#, D.15090
	jmp	.L549	#
.L573:
	.loc 1 3686 0
	movq	-88(%rbp), %rax	# iteration_var, tmp363
	movzbl	2(%rax), %eax	# iteration_var_114->mode, D.15097
	movzbl	%al, %eax	# D.15097, D.15094
	cltq
	movl	mode_class(,%rax,4), %eax	# mode_class, D.15098
	cmpl	$1, %eax	#, D.15098
	je	.L575	#,
	.loc 1 3688 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.277
	testq	%rax, %rax	# loop_dump_stream.277
	je	.L576	#,
	.loc 1 3689 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.278
	movq	%rax, %rcx	# loop_dump_stream.278,
	movl	$47, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC54, %edi	#,
	call	fwrite	#
.L576:
	.loc 1 3691 0
	movl	$0, %eax	#, D.15090
	jmp	.L549	#
.L575:
	.loc 1 3693 0
	movq	-112(%rbp), %rax	# ivs, tmp365
	movq	(%rax), %rdx	# ivs_40->regs, D.15099
	movq	-88(%rbp), %rax	# iteration_var, tmp366
	movl	8(%rax), %eax	# iteration_var_114->fld[0].rtuint, D.15096
	movl	%eax, %eax	# D.15096, D.15090
	salq	$4, %rax	#, D.15090
	addq	%rdx, %rax	# D.15099, D.15099
	movl	(%rax), %eax	# _147->type, D.15100
	cmpl	$1, %eax	#, D.15100
	jne	.L577	#,
	.loc 1 3695 0
	movq	-88(%rbp), %rax	# iteration_var, tmp367
	movl	8(%rax), %edx	# iteration_var_114->fld[0].rtuint, D.15096
	movq	-112(%rbp), %rax	# ivs, tmp368
	movl	8(%rax), %eax	# ivs_40->n_regs, D.15096
	cmpl	%eax, %edx	# D.15096, D.15096
	jb	.L578	#,
	.loc 1 3696 0
	movl	$__FUNCTION__.11678, %edx	#,
	movl	$3696, %esi	#,
	movl	$.LC13, %edi	#,
	call	fancy_abort	#
.L578:
	.loc 1 3699 0
	movq	-112(%rbp), %rax	# ivs, tmp369
	movq	(%rax), %rdx	# ivs_40->regs, D.15099
	movq	-88(%rbp), %rax	# iteration_var, tmp370
	movl	8(%rax), %eax	# iteration_var_114->fld[0].rtuint, D.15096
	movl	%eax, %eax	# D.15096, D.15090
	salq	$4, %rax	#, D.15090
	addq	%rdx, %rax	# D.15099, D.15099
	movq	8(%rax), %rax	# _155->iv.class, tmp371
	movq	%rax, -176(%rbp)	# tmp371, bl
	.loc 1 3700 0
	movq	-176(%rbp), %rax	# bl, tmp372
	movq	40(%rax), %rax	# bl_156->initial_value, tmp373
	movq	%rax, -216(%rbp)	# tmp373, initial_value
	.loc 1 3701 0
	movq	-176(%rbp), %rax	# bl, tmp374
	movq	8(%rax), %rax	# bl_156->biv, D.15101
	movzbl	100(%rax), %eax	# *_158, D.15097
	andl	$16, %eax	#, D.15097
	testb	%al, %al	# D.15097
	je	.L579	#,
	.loc 1 3701 0 is_stmt 0 discriminator 1
	movq	-176(%rbp), %rax	# bl, tmp375
	movq	8(%rax), %rax	# bl_156->biv, D.15101
	movzbl	100(%rax), %eax	# *_161, D.15097
	andl	$32, %eax	#, D.15097
	testb	%al, %al	# D.15097
	je	.L580	#,
.L579:
	.loc 1 3703 0 is_stmt 1
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.279
	testq	%rax, %rax	# loop_dump_stream.279
	je	.L581	#,
	.loc 1 3704 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.280
	movq	%rax, %rcx	# loop_dump_stream.280,
	movl	$69, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC55, %edi	#,
	call	fwrite	#
.L581:
	.loc 1 3706 0
	movl	$0, %eax	#, D.15090
	jmp	.L549	#
.L580:
	.loc 1 3709 0
	movq	-176(%rbp), %rax	# bl, tmp376
	movq	%rax, %rdi	# tmp376,
	call	biv_total_increment	#
	movq	%rax, -208(%rbp)	# tmp377, increment
	jmp	.L582	#
.L577:
	.loc 1 3711 0
	movq	-112(%rbp), %rax	# ivs, tmp378
	movq	(%rax), %rdx	# ivs_40->regs, D.15099
	movq	-88(%rbp), %rax	# iteration_var, tmp379
	movl	8(%rax), %eax	# iteration_var_114->fld[0].rtuint, D.15096
	movl	%eax, %eax	# D.15096, D.15090
	salq	$4, %rax	#, D.15090
	addq	%rdx, %rax	# D.15099, D.15099
	movl	(%rax), %eax	# _172->type, D.15100
	cmpl	$3, %eax	#, D.15100
	jne	.L583	#,
.LBB39:
	.loc 1 3713 0
	movq	$0, -160(%rbp)	#, offset
	.loc 1 3714 0
	movq	-112(%rbp), %rax	# ivs, tmp380
	movq	(%rax), %rdx	# ivs_40->regs, D.15099
	movq	-88(%rbp), %rax	# iteration_var, tmp381
	movl	8(%rax), %eax	# iteration_var_114->fld[0].rtuint, D.15096
	movl	%eax, %eax	# D.15096, D.15090
	salq	$4, %rax	#, D.15090
	addq	%rdx, %rax	# D.15099, D.15099
	movq	8(%rax), %rax	# _179->iv.info, tmp382
	movq	%rax, -72(%rbp)	# tmp382, v
	.loc 1 3717 0
	movq	-72(%rbp), %rax	# v, tmp383
	movq	16(%rax), %rax	# v_180->src_reg, D.15092
	movl	8(%rax), %edx	# _181->fld[0].rtuint, D.15096
	movq	-112(%rbp), %rax	# ivs, tmp384
	movl	8(%rax), %eax	# ivs_40->n_regs, D.15096
	cmpl	%eax, %edx	# D.15096, D.15096
	jb	.L584	#,
	.loc 1 3718 0
	movl	$__FUNCTION__.11678, %edx	#,
	movl	$3718, %esi	#,
	movl	$.LC13, %edi	#,
	call	fancy_abort	#
.L584:
	.loc 1 3720 0
	movq	-72(%rbp), %rax	# v, tmp385
	movzbl	100(%rax), %eax	# *v_180, D.15097
	andl	$16, %eax	#, D.15097
	testb	%al, %al	# D.15097
	je	.L585	#,
	.loc 1 3720 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# v, tmp386
	movzbl	100(%rax), %eax	# *v_180, D.15097
	andl	$32, %eax	#, D.15097
	testb	%al, %al	# D.15097
	je	.L586	#,
.L585:
	.loc 1 3722 0 is_stmt 1
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.281
	testq	%rax, %rax	# loop_dump_stream.281
	je	.L587	#,
	.loc 1 3723 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.282
	movq	%rax, %rcx	# loop_dump_stream.282,
	movl	$71, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC56, %edi	#,
	call	fwrite	#
.L587:
	.loc 1 3725 0
	movl	$0, %eax	#, D.15090
	jmp	.L549	#
.L586:
	.loc 1 3728 0
	movq	-112(%rbp), %rax	# ivs, tmp387
	movq	(%rax), %rdx	# ivs_40->regs, D.15099
	movq	-72(%rbp), %rax	# v, tmp388
	movq	16(%rax), %rax	# v_180->src_reg, D.15092
	movl	8(%rax), %eax	# _189->fld[0].rtuint, D.15096
	movl	%eax, %eax	# D.15096, D.15090
	salq	$4, %rax	#, D.15090
	addq	%rdx, %rax	# D.15099, D.15099
	movq	8(%rax), %rax	# _193->iv.class, tmp389
	movq	%rax, -176(%rbp)	# tmp389, bl
	.loc 1 3732 0
	movq	-176(%rbp), %rax	# bl, tmp390
	movq	%rax, %rdi	# tmp390,
	call	biv_total_increment	#
	movq	%rax, -208(%rbp)	# tmp391, increment
	.loc 1 3733 0
	cmpq	$0, -208(%rbp)	#, increment
	je	.L588	#,
.LBB40:
	.loc 1 3737 0
	movq	-72(%rbp), %rax	# v, tmp392
	movl	48(%rax), %r12d	# v_180->mode, D.15102
	movq	const_int_rtx+512(%rip), %rbx	# const_int_rtx, D.15092
	movq	-208(%rbp), %rdx	# increment, tmp393
	movq	-72(%rbp), %rax	# v, tmp394
	movq	%rdx, %rsi	# tmp393,
	movq	%rax, %rdi	# tmp394,
	call	extend_value_for_giv	#
	movq	%rax, %rsi	#, D.15092
	movq	-72(%rbp), %rax	# v, tmp395
	movq	64(%rax), %rax	# v_180->mult_val, D.15092
	movl	%r12d, %ecx	# D.15102,
	movq	%rbx, %rdx	# D.15092,
	movq	%rax, %rdi	# D.15092,
	call	fold_rtx_mult_add	#
	movq	%rax, -208(%rbp)	# tmp396, increment
	.loc 1 3746 0
	movq	-176(%rbp), %rax	# bl, tmp397
	movq	8(%rax), %rax	# bl_194->biv, tmp398
	movq	%rax, -152(%rbp)	# tmp398, biv_inc
	jmp	.L589	#
.L593:
	.loc 1 3748 0
	movq	-152(%rbp), %rax	# biv_inc, tmp399
	movq	(%rax), %rdx	# biv_inc_31->insn, D.15092
	movq	-72(%rbp), %rax	# v, tmp400
	movq	(%rax), %rax	# v_180->insn, D.15092
	movq	%rdx, %rsi	# D.15092,
	movq	%rax, %rdi	# D.15092,
	call	loop_insn_first_p	#
	testl	%eax, %eax	# D.15094
	je	.L590	#,
	.loc 1 3750 0
	movq	-152(%rbp), %rax	# biv_inc, tmp401
	movq	72(%rax), %rax	# biv_inc_31->add_val, D.15092
	movzwl	(%rax), %eax	# _205->code, D.15093
	cmpw	$61, %ax	#, D.15093
	jne	.L591	#,
	.loc 1 3752 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.283
	testq	%rax, %rax	# loop_dump_stream.283
	je	.L592	#,
	.loc 1 3755 0
	movq	-152(%rbp), %rax	# biv_inc, tmp402
	movq	72(%rax), %rax	# biv_inc_31->add_val, D.15092
	.loc 1 3753 0
	movl	8(%rax), %edx	# _208->fld[0].rtuint, D.15096
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.284
	movl	$.LC57, %esi	#,
	movq	%rax, %rdi	# loop_dump_stream.284,
	movl	$0, %eax	#,
	call	fprintf	#
.L592:
	.loc 1 3756 0
	movl	$0, %eax	#, D.15090
	jmp	.L549	#
.L591:
	.loc 1 3759 0
	movq	-152(%rbp), %rax	# biv_inc, tmp403
	movq	72(%rax), %rax	# biv_inc_31->add_val, D.15092
	movq	8(%rax), %rax	# _212->fld[0].rtwint, D.15103
	subq	%rax, -160(%rbp)	# D.15103, offset
.L590:
	.loc 1 3746 0
	movq	-152(%rbp), %rax	# biv_inc, tmp404
	movq	128(%rax), %rax	# biv_inc_31->next_iv, tmp405
	movq	%rax, -152(%rbp)	# tmp405, biv_inc
.L589:
	.loc 1 3746 0 is_stmt 0 discriminator 1
	cmpq	$0, -152(%rbp)	#, biv_inc
	jne	.L593	#,
.L588:
.LBE40:
	.loc 1 3763 0 is_stmt 1
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.285
	testq	%rax, %rax	# loop_dump_stream.285
	je	.L594	#,
	.loc 1 3764 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.286
	movq	-160(%rbp), %rdx	# offset, tmp406
	movl	$.LC58, %esi	#,
	movq	%rax, %rdi	# loop_dump_stream.286,
	movl	$0, %eax	#,
	call	fprintf	#
.L594:
	.loc 1 3770 0
	movq	-176(%rbp), %rax	# bl, tmp407
	movq	40(%rax), %rdx	# bl_194->initial_value, D.15092
	movq	-72(%rbp), %rax	# v, tmp408
	movq	%rdx, %rsi	# D.15092,
	movq	%rax, %rdi	# tmp408,
	call	extend_value_for_giv	#
	movq	%rax, -64(%rbp)	# tmp409, biv_initial_value
	.loc 1 3772 0
	movq	-72(%rbp), %rax	# v, tmp410
	movl	48(%rax), %r12d	# v_180->mode, D.15102
	movq	-72(%rbp), %rax	# v, tmp411
	movq	72(%rax), %rbx	# v_180->add_val, D.15092
	movq	-160(%rbp), %rdx	# offset, tmp412
	movq	-64(%rbp), %rax	# biv_initial_value, tmp413
	movq	%rdx, %rsi	# tmp412,
	movq	%rax, %rdi	# tmp413,
	call	plus_constant_wide	#
	movq	%rax, %rsi	#, D.15092
	movq	-72(%rbp), %rax	# v, tmp414
	movq	64(%rax), %rax	# v_180->mult_val, D.15092
	movl	%r12d, %ecx	# D.15102,
	movq	%rbx, %rdx	# D.15092,
	movq	%rax, %rdi	# D.15092,
	call	fold_rtx_mult_add	#
	movq	%rax, -216(%rbp)	# tmp415, initial_value
.LBE39:
	jmp	.L582	#
.L583:
	.loc 1 3778 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.287
	testq	%rax, %rax	# loop_dump_stream.287
	je	.L595	#,
	.loc 1 3779 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.288
	movq	%rax, %rcx	# loop_dump_stream.288,
	movl	$53, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC59, %edi	#,
	call	fwrite	#
.L595:
	.loc 1 3781 0
	movl	$0, %eax	#, D.15090
	jmp	.L549	#
.L582:
	.loc 1 3784 0
	cmpq	$0, -216(%rbp)	#, initial_value
	jne	.L596	#,
	.loc 1 3785 0
	movl	$0, %eax	#, D.15090
	jmp	.L549	#
.L596:
	.loc 1 3787 0
	movl	$0, -232(%rbp)	#, unsigned_p
	.loc 1 3788 0
	movl	$0, -240(%rbp)	#, off_by_one
	.loc 1 3789 0
	movl	-220(%rbp), %eax	# comparison_code, tmp417
	subl	$102, %eax	#, tmp416
	cmpl	$9, %eax	#, tmp416
	ja	.L597	#,
	movl	%eax, %eax	# tmp416, tmp418
	movq	.L599(,%rax,8), %rax	#, tmp419
	jmp	*%rax	# tmp419
	.section	.rodata
	.align 8
	.align 4
.L599:
	.quad	.L598
	.quad	.L600
	.quad	.L601
	.quad	.L602
	.quad	.L603
	.quad	.L604
	.quad	.L605
	.quad	.L606
	.quad	.L607
	.quad	.L608
	.text
.L607:
	.loc 1 3792 0
	movl	$1, -232(%rbp)	#, unsigned_p
.L603:
	.loc 1 3794 0
	movl	$1, -228(%rbp)	#, compare_dir
	.loc 1 3795 0
	movl	$1, -240(%rbp)	#, off_by_one
	.loc 1 3796 0
	jmp	.L609	#
.L605:
	.loc 1 3798 0
	movl	$1, -232(%rbp)	#, unsigned_p
.L601:
	.loc 1 3800 0
	movl	$-1, -228(%rbp)	#, compare_dir
	.loc 1 3801 0
	movl	$-1, -240(%rbp)	#, off_by_one
	.loc 1 3802 0
	jmp	.L609	#
.L600:
	.loc 1 3805 0
	movl	$0, -228(%rbp)	#, compare_dir
	.loc 1 3806 0
	jmp	.L609	#
.L608:
	.loc 1 3808 0
	movl	$1, -232(%rbp)	#, unsigned_p
.L604:
	.loc 1 3810 0
	movl	$1, -228(%rbp)	#, compare_dir
	.loc 1 3811 0
	jmp	.L609	#
.L606:
	.loc 1 3813 0
	movl	$1, -232(%rbp)	#, unsigned_p
.L602:
	.loc 1 3815 0
	movl	$-1, -228(%rbp)	#, compare_dir
.L598:
	.loc 1 3817 0
	movl	$0, -228(%rbp)	#, compare_dir
	.loc 1 3818 0
	jmp	.L609	#
.L597:
	.loc 1 3820 0
	movl	$__FUNCTION__.11678, %edx	#,
	movl	$3820, %esi	#,
	movl	$.LC13, %edi	#,
	call	fancy_abort	#
.L609:
	.loc 1 3826 0
	movq	-80(%rbp), %rax	# comparison_value, tmp420
	movq	%rax, -200(%rbp)	# tmp420, final_value
	.loc 1 3827 0
	movq	-80(%rbp), %rax	# comparison_value, tmp421
	movzwl	(%rax), %eax	# comparison_value_115->code, D.15093
	cmpw	$61, %ax	#, D.15093
	jne	.L610	#,
	.loc 1 3828 0
	movq	-80(%rbp), %rdx	# comparison_value, tmp422
	movq	-248(%rbp), %rax	# loop, tmp423
	movq	%rdx, %rsi	# tmp422,
	movq	%rax, %rdi	# tmp423,
	call	loop_invariant_p	#
	testl	%eax, %eax	# D.15094
	je	.L610	#,
	.loc 1 3830 0
	movq	-80(%rbp), %rdx	# comparison_value, tmp424
	movq	-248(%rbp), %rax	# loop, tmp425
	movq	%rdx, %rsi	# tmp424,
	movq	%rax, %rdi	# tmp425,
	call	loop_find_equiv_value	#
	movq	%rax, -200(%rbp)	# tmp426, final_value
	.loc 1 3834 0
	movq	-200(%rbp), %rdx	# final_value, tmp427
	movq	-248(%rbp), %rax	# loop, tmp428
	movq	%rdx, %rsi	# tmp427,
	movq	%rax, %rdi	# tmp428,
	call	loop_invariant_p	#
	testl	%eax, %eax	# D.15094
	jne	.L610	#,
	.loc 1 3835 0
	movq	-80(%rbp), %rax	# comparison_value, tmp429
	movq	%rax, -200(%rbp)	# tmp429, final_value
.L610:
	.loc 1 3847 0
	cmpl	$0, -240(%rbp)	#, off_by_one
	je	.L611	#,
	.loc 1 3848 0
	movl	-240(%rbp), %eax	# off_by_one, tmp430
	movslq	%eax, %rdx	# tmp430, D.15103
	movq	-200(%rbp), %rax	# final_value, tmp431
	movq	%rdx, %rsi	# D.15103,
	movq	%rax, %rdi	# tmp431,
	call	plus_constant_wide	#
	movq	%rax, -200(%rbp)	# tmp432, final_value
.L611:
	.loc 1 3859 0
	movq	-120(%rbp), %rax	# loop_info, tmp433
	movq	-216(%rbp), %rdx	# initial_value, tmp434
	movq	%rdx, 32(%rax)	# tmp434, loop_info_38->initial_value
	.loc 1 3860 0
	movq	-120(%rbp), %rax	# loop_info, tmp435
	movq	-80(%rbp), %rdx	# comparison_value, tmp436
	movq	%rdx, 40(%rax)	# tmp436, loop_info_38->comparison_value
	.loc 1 3861 0
	movl	-240(%rbp), %eax	# off_by_one, tmp437
	movslq	%eax, %rdx	# tmp437, D.15103
	movq	-80(%rbp), %rax	# comparison_value, tmp438
	movq	%rdx, %rsi	# D.15103,
	movq	%rax, %rdi	# tmp438,
	call	plus_constant_wide	#
	movq	-120(%rbp), %rdx	# loop_info, tmp439
	movq	%rax, 48(%rdx)	# D.15092, loop_info_38->final_value
	.loc 1 3862 0
	movq	-120(%rbp), %rax	# loop_info, tmp440
	movq	-208(%rbp), %rdx	# increment, tmp441
	movq	%rdx, 80(%rax)	# tmp441, loop_info_38->increment
	.loc 1 3863 0
	movq	-120(%rbp), %rax	# loop_info, tmp442
	movq	-88(%rbp), %rdx	# iteration_var, tmp443
	movq	%rdx, 72(%rax)	# tmp443, loop_info_38->iteration_var
	.loc 1 3864 0
	movq	-120(%rbp), %rax	# loop_info, tmp444
	movl	-220(%rbp), %edx	# comparison_code, tmp445
	movl	%edx, 88(%rax)	# tmp445, loop_info_38->comparison_code
	.loc 1 3865 0
	movq	-120(%rbp), %rax	# loop_info, tmp446
	movq	-176(%rbp), %rdx	# bl, tmp447
	movq	%rdx, 112(%rax)	# tmp447, loop_info_38->iv
	.loc 1 3872 0
	movq	-216(%rbp), %rax	# initial_value, tmp448
	movzwl	(%rax), %eax	# initial_value_1->code, D.15093
	cmpw	$61, %ax	#, D.15093
	jne	.L612	#,
.LBB41:
	.loc 1 3878 0
	movq	-216(%rbp), %rax	# initial_value, tmp449
	movq	%rax, -56(%rbp)	# tmp449, reg1
	.loc 1 3879 0
	movq	-200(%rbp), %rax	# final_value, tmp450
	movzwl	(%rax), %eax	# final_value_10->code, D.15093
	cmpw	$75, %ax	#, D.15093
	jne	.L613	#,
	.loc 1 3880 0
	movq	-200(%rbp), %rax	# final_value, tmp451
	movq	8(%rax), %rax	# final_value_10->fld[0].rtx, tmp452
	movq	%rax, -144(%rbp)	# tmp452, reg2
	movq	-200(%rbp), %rax	# final_value, tmp453
	movq	16(%rax), %rax	# final_value_10->fld[1].rtx, tmp454
	movq	%rax, -136(%rbp)	# tmp454, const2
	jmp	.L614	#
.L613:
	.loc 1 3882 0
	movq	-200(%rbp), %rax	# final_value, tmp455
	movq	%rax, -144(%rbp)	# tmp455, reg2
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, tmp456
	movq	%rax, -136(%rbp)	# tmp456, const2
.L614:
	.loc 1 3886 0
	movq	-144(%rbp), %rax	# reg2, tmp457
	movzwl	(%rax), %eax	# reg2_32->code, D.15093
	cmpw	$61, %ax	#, D.15093
	jne	.L615	#,
	.loc 1 3886 0 is_stmt 0 discriminator 1
	movq	-144(%rbp), %rax	# reg2, tmp458
	cmpq	-56(%rbp), %rax	# reg1, tmp458
	je	.L615	#,
.LBB42:
	.loc 1 3892 0 is_stmt 1
	movq	-56(%rbp), %rdx	# reg1, tmp459
	movq	-248(%rbp), %rax	# loop, tmp460
	movq	%rdx, %rsi	# tmp459,
	movq	%rax, %rdi	# tmp460,
	call	loop_find_equiv_value	#
	movq	%rax, -128(%rbp)	# tmp461, temp
	.loc 1 3894 0
	movq	-144(%rbp), %rdx	# reg2, tmp462
	movq	-128(%rbp), %rax	# temp, tmp463
	movq	%rdx, %rsi	# tmp462,
	movq	%rax, %rdi	# tmp463,
	call	find_common_reg_term	#
	testq	%rax, %rax	# D.15092
	je	.L616	#,
	.loc 1 3895 0
	movq	-128(%rbp), %rax	# temp, tmp464
	movq	%rax, -216(%rbp)	# tmp464, initial_value
	jmp	.L617	#
.L616:
	.loc 1 3901 0
	movq	-144(%rbp), %rdx	# reg2, tmp465
	movq	-248(%rbp), %rax	# loop, tmp466
	movq	%rdx, %rsi	# tmp465,
	movq	%rax, %rdi	# tmp466,
	call	loop_find_equiv_value	#
	movq	%rax, -128(%rbp)	# tmp467, temp
	.loc 1 3903 0
	movq	-120(%rbp), %rax	# loop_info, tmp468
	movq	72(%rax), %rax	# loop_info_38->iteration_var, D.15092
	cmpq	-128(%rbp), %rax	# temp, D.15092
	jne	.L618	#,
	.loc 1 3904 0
	movq	-216(%rbp), %rax	# initial_value, tmp469
	movq	%rax, -128(%rbp)	# tmp469, temp
.L618:
	.loc 1 3905 0
	movq	-128(%rbp), %rax	# temp, tmp470
	cmpq	-56(%rbp), %rax	# reg1, tmp470
	jne	.L617	#,
	.loc 1 3906 0
	movq	const_int_rtx+512(%rip), %rax	# const_int_rtx, D.15092
	.loc 1 3907 0
	cmpq	-136(%rbp), %rax	# const2, D.15092
	je	.L619	#,
	.loc 1 3907 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# reg1, tmp471
	movzbl	2(%rax), %eax	# reg1_257->mode, D.15097
	movzbl	%al, %eax	# D.15097, D.15102
	movq	-136(%rbp), %rcx	# const2, tmp472
	movq	-56(%rbp), %rdx	# reg1, tmp473
	movl	%eax, %esi	# D.15102,
	movl	$75, %edi	#,
	call	gen_rtx_fmt_ee	#
	jmp	.L620	#
.L619:
	.loc 1 3907 0 discriminator 2
	movq	-56(%rbp), %rax	# reg1, iftmp.289
.L620:
	.loc 1 3906 0 is_stmt 1
	movq	%rax, -200(%rbp)	# iftmp.289, final_value
.LBE42:
	.loc 1 3887 0
	jmp	.L612	#
.L617:
	jmp	.L612	#
.L615:
	.loc 1 3910 0
	movq	-248(%rbp), %rax	# loop, tmp474
	movq	168(%rax), %rax	# loop_37(D)->vtop, D.15092
	testq	%rax, %rax	# D.15092
	je	.L612	#,
	.loc 1 3910 0 is_stmt 0 discriminator 1
	movq	-144(%rbp), %rax	# reg2, tmp475
	movzwl	(%rax), %eax	# reg2_32->code, D.15093
	cmpw	$54, %ax	#, D.15093
	jne	.L612	#,
.LBB43:
	.loc 1 3921 0 is_stmt 1
	movq	-56(%rbp), %rdx	# reg1, tmp476
	movq	-248(%rbp), %rax	# loop, tmp477
	movq	%rdx, %rsi	# tmp476,
	movq	%rax, %rdi	# tmp477,
	call	loop_find_equiv_value	#
	movq	%rax, -48(%rbp)	# tmp478, temp
	.loc 1 3923 0
	movq	-48(%rbp), %rax	# temp, tmp479
	movzwl	(%rax), %eax	# temp_278->code, D.15093
	cmpw	$76, %ax	#, D.15093
	jne	.L612	#,
	.loc 1 3923 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# temp, tmp480
	movq	8(%rax), %rax	# temp_278->fld[0].rtx, D.15092
	movzwl	(%rax), %eax	# _280->code, D.15093
	cmpw	$61, %ax	#, D.15093
	jne	.L612	#,
.LBB44:
	.loc 1 3925 0 is_stmt 1
	movq	-48(%rbp), %rax	# temp, tmp481
	movq	8(%rax), %rdx	# temp_278->fld[0].rtx, D.15092
	movq	-248(%rbp), %rax	# loop, tmp482
	movq	%rdx, %rsi	# D.15092,
	movq	%rax, %rdi	# tmp482,
	call	loop_find_equiv_value	#
	movq	%rax, -40(%rbp)	# tmp483, temp2
	.loc 1 3927 0
	movq	-40(%rbp), %rax	# temp2, tmp484
	movzwl	(%rax), %eax	# temp2_283->code, D.15093
	cmpw	$75, %ax	#, D.15093
	jne	.L612	#,
	.loc 1 3928 0
	movq	-40(%rbp), %rax	# temp2, tmp485
	movq	8(%rax), %rdx	# temp2_283->fld[0].rtx, D.15092
	movq	-48(%rbp), %rax	# temp, tmp486
	movq	16(%rax), %rax	# temp_278->fld[1].rtx, D.15092
	cmpq	%rax, %rdx	# D.15092, D.15092
	jne	.L612	#,
	.loc 1 3929 0
	movq	-40(%rbp), %rax	# temp2, tmp487
	movq	16(%rax), %rax	# temp2_283->fld[1].rtx, tmp488
	movq	%rax, -216(%rbp)	# tmp488, initial_value
.L612:
.LBE44:
.LBE43:
.LBE41:
	.loc 1 3943 0
	movq	-248(%rbp), %rax	# loop, tmp489
	movq	168(%rax), %rax	# loop_37(D)->vtop, D.15092
	testq	%rax, %rax	# D.15092
	je	.L621	#,
	.loc 1 3944 0
	movq	-200(%rbp), %rdx	# final_value, tmp490
	movq	-216(%rbp), %rax	# initial_value, tmp491
	movq	%rdx, %rsi	# tmp490,
	movq	%rax, %rdi	# tmp491,
	call	find_common_reg_term	#
	movq	%rax, -32(%rbp)	# tmp492, reg_term
	cmpq	$0, -32(%rbp)	#, reg_term
	je	.L621	#,
	.loc 1 3946 0
	movq	-32(%rbp), %rdx	# reg_term, tmp493
	movq	-216(%rbp), %rax	# initial_value, tmp494
	movq	%rdx, %rsi	# tmp493,
	movq	%rax, %rdi	# tmp494,
	call	subtract_reg_term	#
	movq	%rax, -216(%rbp)	# tmp495, initial_value
	.loc 1 3947 0
	movq	-32(%rbp), %rdx	# reg_term, tmp496
	movq	-200(%rbp), %rax	# final_value, tmp497
	movq	%rdx, %rsi	# tmp496,
	movq	%rax, %rdi	# tmp497,
	call	subtract_reg_term	#
	movq	%rax, -200(%rbp)	# tmp498, final_value
.L621:
	.loc 1 3950 0
	movq	-120(%rbp), %rax	# loop_info, tmp499
	movq	-216(%rbp), %rdx	# initial_value, tmp500
	movq	%rdx, 56(%rax)	# tmp500, loop_info_38->initial_equiv_value
	.loc 1 3951 0
	movq	-120(%rbp), %rax	# loop_info, tmp501
	movq	-200(%rbp), %rdx	# final_value, tmp502
	movq	%rdx, 64(%rax)	# tmp502, loop_info_38->final_equiv_value
	.loc 1 3956 0
	cmpl	$103, -220(%rbp)	#, comparison_code
	jne	.L622	#,
	.loc 1 3957 0
	movq	-120(%rbp), %rax	# loop_info, tmp503
	movq	$0, 48(%rax)	#, loop_info_38->final_value
	movq	-120(%rbp), %rax	# loop_info, tmp504
	movq	48(%rax), %rdx	# loop_info_38->final_value, D.15092
	movq	-120(%rbp), %rax	# loop_info, tmp505
	movq	%rdx, 64(%rax)	# D.15092, loop_info_38->final_equiv_value
.L622:
	.loc 1 3959 0
	cmpq	$0, -208(%rbp)	#, increment
	jne	.L623	#,
	.loc 1 3961 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.290
	testq	%rax, %rax	# loop_dump_stream.290
	je	.L624	#,
	.loc 1 3962 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.291
	movq	%rax, %rcx	# loop_dump_stream.291,
	movl	$54, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC60, %edi	#,
	call	fwrite	#
.L624:
	.loc 1 3964 0
	movl	$0, %eax	#, D.15090
	jmp	.L549	#
.L623:
	.loc 1 3967 0
	movq	-208(%rbp), %rax	# increment, tmp506
	movzwl	(%rax), %eax	# increment_6->code, D.15093
	cmpw	$54, %ax	#, D.15093
	je	.L625	#,
	.loc 1 3972 0
	movq	-208(%rbp), %rax	# increment, tmp507
	movzwl	(%rax), %eax	# increment_6->code, D.15093
	cmpw	$61, %ax	#, D.15093
	je	.L626	#,
	.loc 1 3972 0 is_stmt 0 discriminator 1
	movq	-208(%rbp), %rax	# increment, tmp508
	movzwl	(%rax), %eax	# increment_6->code, D.15093
	cmpw	$63, %ax	#, D.15093
	jne	.L627	#,
.L626:
	.loc 1 3973 0 is_stmt 1
	movq	-208(%rbp), %rdx	# increment, tmp509
	movq	-248(%rbp), %rax	# loop, tmp510
	movq	%rdx, %rsi	# tmp509,
	movq	%rax, %rdi	# tmp510,
	call	loop_find_equiv_value	#
	movq	%rax, -208(%rbp)	# tmp511, increment
.L627:
	.loc 1 3975 0
	movq	-208(%rbp), %rax	# increment, tmp512
	movzwl	(%rax), %eax	# increment_7->code, D.15093
	cmpw	$54, %ax	#, D.15093
	je	.L628	#,
	.loc 1 3977 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.292
	testq	%rax, %rax	# loop_dump_stream.292
	je	.L629	#,
	.loc 1 3979 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.293
	movq	%rax, %rcx	# loop_dump_stream.293,
	movl	$46, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC61, %edi	#,
	call	fwrite	#
	.loc 1 3981 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.294
	movq	-208(%rbp), %rdx	# increment, tmp513
	movq	%rdx, %rsi	# tmp513,
	movq	%rax, %rdi	# loop_dump_stream.294,
	call	print_simple_rtl	#
	.loc 1 3982 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.295
	movq	%rax, %rcx	# loop_dump_stream.295,
	movl	$2, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC20, %edi	#,
	call	fwrite	#
.L629:
	.loc 1 3984 0
	movl	$0, %eax	#, D.15090
	jmp	.L549	#
.L628:
	.loc 1 3986 0
	movq	-120(%rbp), %rax	# loop_info, tmp514
	movq	-208(%rbp), %rdx	# increment, tmp515
	movq	%rdx, 80(%rax)	# tmp515, loop_info_38->increment
.L625:
	.loc 1 3989 0
	movq	-216(%rbp), %rax	# initial_value, tmp516
	movzwl	(%rax), %eax	# initial_value_4->code, D.15093
	cmpw	$54, %ax	#, D.15093
	je	.L630	#,
	.loc 1 3991 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.296
	testq	%rax, %rax	# loop_dump_stream.296
	je	.L631	#,
	.loc 1 3993 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.297
	movq	%rax, %rcx	# loop_dump_stream.297,
	movl	$44, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC62, %edi	#,
	call	fwrite	#
	.loc 1 3995 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.298
	movq	-216(%rbp), %rdx	# initial_value, tmp517
	movq	%rdx, %rsi	# tmp517,
	movq	%rax, %rdi	# loop_dump_stream.298,
	call	print_simple_rtl	#
	.loc 1 3996 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.299
	movq	%rax, %rcx	# loop_dump_stream.299,
	movl	$2, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC20, %edi	#,
	call	fwrite	#
.L631:
	.loc 1 3998 0
	movl	$0, %eax	#, D.15090
	jmp	.L549	#
.L630:
	.loc 1 4000 0
	cmpl	$103, -220(%rbp)	#, comparison_code
	jne	.L632	#,
	.loc 1 4002 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.300
	testq	%rax, %rax	# loop_dump_stream.300
	je	.L633	#,
	.loc 1 4003 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.301
	movq	%rax, %rcx	# loop_dump_stream.301,
	movl	$37, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC63, %edi	#,
	call	fwrite	#
.L633:
	.loc 1 4004 0
	movl	$0, %eax	#, D.15090
	jmp	.L549	#
.L632:
	.loc 1 4006 0
	movq	-200(%rbp), %rax	# final_value, tmp518
	movzwl	(%rax), %eax	# final_value_13->code, D.15093
	cmpw	$54, %ax	#, D.15093
	je	.L634	#,
	.loc 1 4008 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.302
	testq	%rax, %rax	# loop_dump_stream.302
	je	.L635	#,
	.loc 1 4010 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.303
	movq	%rax, %rcx	# loop_dump_stream.303,
	movl	$42, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC64, %edi	#,
	call	fwrite	#
	.loc 1 4012 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.304
	movq	-200(%rbp), %rdx	# final_value, tmp519
	movq	%rdx, %rsi	# tmp519,
	movq	%rax, %rdi	# loop_dump_stream.304,
	call	print_simple_rtl	#
	.loc 1 4013 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.305
	movq	%rax, %rcx	# loop_dump_stream.305,
	movl	$2, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC20, %edi	#,
	call	fwrite	#
.L635:
	.loc 1 4015 0
	movl	$0, %eax	#, D.15090
	jmp	.L549	#
.L634:
	.loc 1 4019 0
	cmpl	$0, -232(%rbp)	#, unsigned_p
	je	.L636	#,
	.loc 1 4021 0
	movq	-200(%rbp), %rax	# final_value, tmp520
	movq	8(%rax), %rax	# final_value_13->fld[0].rtwint, D.15103
	movq	%rax, %rdx	# D.15103, D.15090
	.loc 1 4022 0
	movq	-216(%rbp), %rax	# initial_value, tmp521
	movq	8(%rax), %rax	# initial_value_4->fld[0].rtwint, D.15103
	cmpq	%rax, %rdx	# D.15090, D.15090
	seta	%al	#, D.15104
	movzbl	%al, %edx	# D.15104, D.15094
	.loc 1 4023 0
	movq	-200(%rbp), %rax	# final_value, tmp522
	movq	8(%rax), %rax	# final_value_13->fld[0].rtwint, D.15103
	movq	%rax, %rcx	# D.15103, D.15090
	.loc 1 4024 0
	movq	-216(%rbp), %rax	# initial_value, tmp523
	movq	8(%rax), %rax	# initial_value_4->fld[0].rtwint, D.15103
	cmpq	%rax, %rcx	# D.15090, D.15090
	setb	%al	#, D.15104
	movzbl	%al, %eax	# D.15104, D.15094
	.loc 1 4021 0
	subl	%eax, %edx	# D.15094, tmp524
	movl	%edx, %eax	# tmp524, tmp524
	movl	%eax, -224(%rbp)	# tmp524, final_larger
	jmp	.L637	#
.L636:
	.loc 1 4026 0
	movq	-200(%rbp), %rax	# final_value, tmp525
	movq	8(%rax), %rdx	# final_value_13->fld[0].rtwint, D.15103
	movq	-216(%rbp), %rax	# initial_value, tmp526
	movq	8(%rax), %rax	# initial_value_4->fld[0].rtwint, D.15103
	cmpq	%rax, %rdx	# D.15103, D.15103
	setg	%al	#, D.15104
	movzbl	%al, %edx	# D.15104, D.15094
	.loc 1 4027 0
	movq	-200(%rbp), %rax	# final_value, tmp527
	movq	8(%rax), %rcx	# final_value_13->fld[0].rtwint, D.15103
	movq	-216(%rbp), %rax	# initial_value, tmp528
	movq	8(%rax), %rax	# initial_value_4->fld[0].rtwint, D.15103
	cmpq	%rax, %rcx	# D.15103, D.15103
	setl	%al	#, D.15104
	movzbl	%al, %eax	# D.15104, D.15094
	.loc 1 4026 0
	subl	%eax, %edx	# D.15094, tmp529
	movl	%edx, %eax	# tmp529, tmp529
	movl	%eax, -224(%rbp)	# tmp529, final_larger
.L637:
	.loc 1 4029 0
	movq	-208(%rbp), %rax	# increment, tmp530
	movq	8(%rax), %rax	# increment_8->fld[0].rtwint, D.15103
	testq	%rax, %rax	# D.15103
	jle	.L638	#,
	.loc 1 4030 0
	movl	$1, -236(%rbp)	#, increment_dir
	jmp	.L639	#
.L638:
	.loc 1 4031 0
	movq	-208(%rbp), %rax	# increment, tmp531
	movq	8(%rax), %rax	# increment_8->fld[0].rtwint, D.15103
	testq	%rax, %rax	# D.15103
	jne	.L640	#,
	.loc 1 4032 0
	movl	$0, -236(%rbp)	#, increment_dir
	jmp	.L639	#
.L640:
	.loc 1 4034 0
	movl	$-1, -236(%rbp)	#, increment_dir
.L639:
	.loc 1 4063 0
	movl	-224(%rbp), %eax	# final_larger, tmp532
	cmpl	-236(%rbp), %eax	# increment_dir, tmp532
	jne	.L641	#,
	.loc 1 4063 0 is_stmt 0 discriminator 1
	cmpl	$0, -224(%rbp)	#, final_larger
	je	.L641	#,
	.loc 1 4064 0 is_stmt 1
	movl	-224(%rbp), %eax	# final_larger, tmp533
	cmpl	-228(%rbp), %eax	# compare_dir, tmp533
	je	.L642	#,
	.loc 1 4064 0 is_stmt 0 discriminator 1
	cmpl	$0, -228(%rbp)	#, compare_dir
	jne	.L641	#,
.L642:
	.loc 1 4063 0 is_stmt 1
	nop
	.loc 1 4078 0
	movq	-208(%rbp), %rax	# increment, tmp534
	movq	8(%rax), %rax	# increment_8->fld[0].rtwint, tmp535
	movq	%rax, -24(%rbp)	# tmp535, inc
	.loc 1 4079 0
	cmpq	$0, -24(%rbp)	#, inc
	jle	.L645	#,
	jmp	.L653	#
.L641:
	.loc 1 4069 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.306
	testq	%rax, %rax	# loop_dump_stream.306
	je	.L644	#,
	.loc 1 4070 0
	movq	loop_dump_stream(%rip), %rax	# loop_dump_stream, loop_dump_stream.307
	movq	%rax, %rcx	# loop_dump_stream.307,
	movl	$34, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC65, %edi	#,
	call	fwrite	#
.L644:
	.loc 1 4071 0
	movl	$0, %eax	#, D.15090
	jmp	.L549	#
.L653:
	.loc 1 4081 0
	movq	-200(%rbp), %rax	# final_value, tmp536
	movq	8(%rax), %rdx	# final_value_13->fld[0].rtwint, D.15103
	movq	-216(%rbp), %rax	# initial_value, tmp537
	movq	8(%rax), %rax	# initial_value_4->fld[0].rtwint, D.15103
	subq	%rax, %rdx	# D.15103, D.15103
	movq	%rdx, %rax	# D.15103, D.15103
	movq	%rax, -184(%rbp)	# D.15103, abs_diff
	.loc 1 4082 0
	movq	-24(%rbp), %rax	# inc, tmp538
	movq	%rax, -192(%rbp)	# tmp538, abs_inc
	jmp	.L646	#
.L645:
	.loc 1 4084 0
	cmpq	$0, -24(%rbp)	#, inc
	jns	.L647	#,
	.loc 1 4086 0
	movq	-216(%rbp), %rax	# initial_value, tmp539
	movq	8(%rax), %rdx	# initial_value_4->fld[0].rtwint, D.15103
	movq	-200(%rbp), %rax	# final_value, tmp540
	movq	8(%rax), %rax	# final_value_13->fld[0].rtwint, D.15103
	subq	%rax, %rdx	# D.15103, D.15103
	movq	%rdx, %rax	# D.15103, D.15103
	movq	%rax, -184(%rbp)	# D.15103, abs_diff
	.loc 1 4087 0
	movq	-24(%rbp), %rax	# inc, tmp541
	negq	%rax	# D.15103
	movq	%rax, -192(%rbp)	# D.15103, abs_inc
	jmp	.L646	#
.L647:
	.loc 1 4090 0
	movl	$__FUNCTION__.11678, %edx	#,
	movl	$4090, %esi	#,
	movl	$.LC13, %edi	#,
	call	fancy_abort	#
.L646:
	.loc 1 4097 0
	movq	-88(%rbp), %rax	# iteration_var, tmp542
	movzbl	2(%rax), %eax	# iteration_var_114->mode, D.15097
	movzbl	%al, %eax	# D.15097, D.15094
	cltq
	movzwl	mode_bitsize(%rax,%rax), %eax	# mode_bitsize, D.15093
	movzwl	%ax, %eax	# D.15093, D.15094
	subl	$1, %eax	#, D.15094
	movl	$1, %edx	#, tmp544
	movl	%eax, %ecx	# D.15094, tmp562
	salq	%cl, %rdx	# tmp562, D.15090
	movq	%rdx, %rax	# D.15090, D.15090
	.loc 1 4098 0
	addq	%rax, %rax	# D.15090
	subq	$1, %rax	#, D.15090
	.loc 1 4096 0
	andq	%rax, -184(%rbp)	# D.15090, abs_diff
	.loc 1 4104 0
	cmpl	$0, -228(%rbp)	#, compare_dir
	jne	.L648	#,
	.loc 1 4104 0 is_stmt 0 discriminator 1
	movq	-184(%rbp), %rax	# abs_diff, tmp545
	movl	$0, %edx	#, tmp546
	divq	-192(%rbp)	# abs_inc
	movq	%rdx, %rax	# tmp546, D.15090
	testq	%rax, %rax	# D.15090
	je	.L648	#,
	.loc 1 4105 0 is_stmt 1
	movl	$0, %eax	#, D.15090
	jmp	.L549	#
.L648:
	.loc 1 4110 0
	movq	-184(%rbp), %rax	# abs_diff, tmp550
	movl	$0, %edx	#, tmp549
	divq	-192(%rbp)	# abs_inc
	movq	%rax, %rcx	# tmp548, D.15090
	movq	-184(%rbp), %rax	# abs_diff, tmp551
	movl	$0, %edx	#, tmp552
	divq	-192(%rbp)	# abs_inc
	movq	%rdx, %rax	# tmp552, D.15090
	testq	%rax, %rax	# D.15090
	setne	%al	#, D.15104
	movzbl	%al, %eax	# D.15104, D.15090
	leaq	(%rcx,%rax), %rdx	#, D.15090
	movq	-120(%rbp), %rax	# loop_info, tmp554
	movq	%rdx, 96(%rax)	# D.15090, loop_info_38->n_iterations
	.loc 1 4111 0
	movq	-120(%rbp), %rax	# loop_info, tmp555
	movq	96(%rax), %rax	# loop_info_38->n_iterations, D.15090
.L549:
	.loc 1 4112 0
	addq	$240, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	loop_iterations, .-loop_iterations
	.type	remap_split_bivs, @function
remap_split_bivs:
.LFB23:
	.loc 1 4122 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# loop, loop
	movq	%rsi, -64(%rbp)	# x, x
	.loc 1 4123 0
	movq	-56(%rbp), %rax	# loop, tmp96
	movq	160(%rax), %rax	# loop_4(D)->aux, D.15125
	addq	$208, %rax	#, tmp97
	movq	%rax, -32(%rbp)	# tmp97, ivs
	.loc 1 4128 0
	cmpq	$0, -64(%rbp)	#, x
	jne	.L655	#,
	.loc 1 4129 0
	movq	-64(%rbp), %rax	# x, D.15124
	jmp	.L656	#
.L655:
	.loc 1 4131 0
	movq	-64(%rbp), %rax	# x, tmp98
	movzwl	(%rax), %eax	# x_7(D)->code, D.15126
	movzwl	%ax, %eax	# D.15126, tmp99
	movl	%eax, -36(%rbp)	# tmp99, code
	.loc 1 4132 0
	movl	-36(%rbp), %eax	# code, tmp101
	subl	$54, %eax	#, tmp100
	cmpl	$15, %eax	#, tmp100
	ja	.L669	#,
	movl	%eax, %eax	# tmp100, tmp102
	movq	.L659(,%rax,8), %rax	#, tmp103
	jmp	*%rax	# tmp103
	.section	.rodata
	.align 8
	.align 4
.L659:
	.quad	.L658
	.quad	.L658
	.quad	.L669
	.quad	.L669
	.quad	.L658
	.quad	.L658
	.quad	.L669
	.quad	.L660
	.quad	.L658
	.quad	.L669
	.quad	.L669
	.quad	.L669
	.quad	.L669
	.quad	.L658
	.quad	.L658
	.quad	.L658
	.text
.L658:
	.loc 1 4142 0
	movq	-64(%rbp), %rax	# x, D.15124
	jmp	.L656	#
.L660:
	.loc 1 4149 0
	movq	-64(%rbp), %rax	# x, tmp104
	movl	8(%rax), %edx	# x_7(D)->fld[0].rtuint, D.15127
	movq	-32(%rbp), %rax	# ivs, tmp105
	movl	8(%rax), %eax	# ivs_6->n_regs, D.15127
	cmpl	%eax, %edx	# D.15127, D.15127
	jae	.L661	#,
	.loc 1 4150 0
	movq	-32(%rbp), %rax	# ivs, tmp106
	movq	(%rax), %rdx	# ivs_6->regs, D.15128
	movq	-64(%rbp), %rax	# x, tmp107
	movl	8(%rax), %eax	# x_7(D)->fld[0].rtuint, D.15127
	movl	%eax, %eax	# D.15127, D.15129
	salq	$4, %rax	#, D.15129
	addq	%rdx, %rax	# D.15128, D.15128
	movl	(%rax), %eax	# _18->type, D.15130
	cmpl	$1, %eax	#, D.15130
	jne	.L661	#,
	.loc 1 4151 0
	movq	-32(%rbp), %rax	# ivs, tmp108
	movq	(%rax), %rdx	# ivs_6->regs, D.15128
	movq	-64(%rbp), %rax	# x, tmp109
	movl	8(%rax), %eax	# x_7(D)->fld[0].rtuint, D.15127
	movl	%eax, %eax	# D.15127, D.15129
	salq	$4, %rax	#, D.15129
	addq	%rdx, %rax	# D.15128, D.15128
	movq	8(%rax), %rax	# _24->iv.class, D.15131
	movq	8(%rax), %rax	# _25->biv, D.15132
	movq	16(%rax), %rax	# _26->src_reg, D.15124
	jmp	.L656	#
.L661:
	.loc 1 4152 0
	jmp	.L662	#
.L669:
	.loc 1 4155 0
	nop
.L662:
	.loc 1 4158 0
	movl	-36(%rbp), %eax	# code, code.308
	cltq
	movq	rtx_format(,%rax,8), %rax	# rtx_format, tmp111
	movq	%rax, -24(%rbp)	# tmp111, fmt
	.loc 1 4159 0
	movl	-36(%rbp), %eax	# code, code.309
	cltq
	movzbl	rtx_length(%rax), %eax	# rtx_length, D.15133
	movzbl	%al, %eax	# D.15133, D.15134
	subl	$1, %eax	#, tmp113
	movl	%eax, -44(%rbp)	# tmp113, i
	jmp	.L663	#
.L668:
	.loc 1 4161 0
	movl	-44(%rbp), %eax	# i, tmp114
	movslq	%eax, %rdx	# tmp114, D.15135
	movq	-24(%rbp), %rax	# fmt, tmp115
	addq	%rdx, %rax	# D.15135, D.15136
	movzbl	(%rax), %eax	# *_35, D.15137
	cmpb	$101, %al	#, D.15137
	jne	.L664	#,
	.loc 1 4162 0
	movq	-64(%rbp), %rax	# x, tmp116
	movl	-44(%rbp), %edx	# i, tmp118
	movslq	%edx, %rdx	# tmp118, tmp117
	movq	8(%rax,%rdx,8), %rdx	# x_7(D)->fld[i_1].rtx, D.15138
	movq	-56(%rbp), %rax	# loop, tmp119
	movq	%rdx, %rsi	# D.15138,
	movq	%rax, %rdi	# tmp119,
	call	remap_split_bivs	#
	movq	-64(%rbp), %rdx	# x, tmp120
	movl	-44(%rbp), %ecx	# i, tmp122
	movslq	%ecx, %rcx	# tmp122, tmp121
	movq	%rax, 8(%rdx,%rcx,8)	# D.15138, x_7(D)->fld[i_1].rtx
	jmp	.L665	#
.L664:
	.loc 1 4163 0
	movl	-44(%rbp), %eax	# i, tmp123
	movslq	%eax, %rdx	# tmp123, D.15135
	movq	-24(%rbp), %rax	# fmt, tmp124
	addq	%rdx, %rax	# D.15135, D.15136
	movzbl	(%rax), %eax	# *_40, D.15137
	cmpb	$69, %al	#, D.15137
	jne	.L665	#,
.LBB45:
	.loc 1 4166 0
	movl	$0, -40(%rbp)	#, j
	jmp	.L666	#
.L667:
	.loc 1 4167 0 discriminator 2
	movq	-64(%rbp), %rax	# x, tmp125
	movl	-44(%rbp), %edx	# i, tmp127
	movslq	%edx, %rdx	# tmp127, tmp126
	movq	8(%rax,%rdx,8), %rbx	# x_7(D)->fld[i_1].rtvec, D.15139
	movq	-64(%rbp), %rax	# x, tmp128
	movl	-44(%rbp), %edx	# i, tmp130
	movslq	%edx, %rdx	# tmp130, tmp129
	movq	8(%rax,%rdx,8), %rax	# x_7(D)->fld[i_1].rtvec, D.15139
	movl	-40(%rbp), %edx	# j, tmp132
	movslq	%edx, %rdx	# tmp132, tmp131
	movq	8(%rax,%rdx,8), %rdx	# _46->elem, D.15138
	movq	-56(%rbp), %rax	# loop, tmp133
	movq	%rdx, %rsi	# D.15138,
	movq	%rax, %rdi	# tmp133,
	call	remap_split_bivs	#
	movl	-40(%rbp), %edx	# j, tmp135
	movslq	%edx, %rdx	# tmp135, tmp134
	movq	%rax, 8(%rbx,%rdx,8)	# D.15138, _45->elem
	.loc 1 4166 0 discriminator 2
	addl	$1, -40(%rbp)	#, j
.L666:
	.loc 1 4166 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# x, tmp136
	movl	-44(%rbp), %edx	# i, tmp138
	movslq	%edx, %rdx	# tmp138, tmp137
	movq	8(%rax,%rdx,8), %rax	# x_7(D)->fld[i_1].rtvec, D.15139
	movl	(%rax), %eax	# _43->num_elem, D.15134
	cmpl	-40(%rbp), %eax	# j, D.15134
	jg	.L667	#,
.L665:
.LBE45:
	.loc 1 4159 0 is_stmt 1
	subl	$1, -44(%rbp)	#, i
.L663:
	.loc 1 4159 0 is_stmt 0 discriminator 1
	cmpl	$0, -44(%rbp)	#, i
	jns	.L668	#,
	.loc 1 4170 0 is_stmt 1
	movq	-64(%rbp), %rax	# x, D.15124
.L656:
	.loc 1 4171 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	remap_split_bivs, .-remap_split_bivs
	.globl	set_dominates_use
	.type	set_dominates_use, @function
set_dominates_use:
.LFB24:
	.loc 1 4195 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -20(%rbp)	# regno, regno
	movl	%esi, -24(%rbp)	# first_uid, first_uid
	movl	%edx, -28(%rbp)	# last_uid, last_uid
	movq	%rcx, -40(%rbp)	# copy_start, copy_start
	movq	%r8, -48(%rbp)	# copy_end, copy_end
	.loc 1 4196 0
	movl	$0, -12(%rbp)	#, passed_jump
	.loc 1 4197 0
	movq	-40(%rbp), %rax	# copy_start, tmp70
	movq	24(%rax), %rax	# copy_start_7(D)->fld[2].rtx, tmp71
	movq	%rax, -8(%rbp)	# tmp71, p
	.loc 1 4199 0
	jmp	.L671	#
.L675:
	.loc 1 4201 0
	movq	-8(%rbp), %rax	# p, tmp72
	movzwl	(%rax), %eax	# p_3->code, D.15141
	cmpw	$33, %ax	#, D.15141
	jne	.L672	#,
	.loc 1 4202 0
	movl	$1, -12(%rbp)	#, passed_jump
.L672:
	.loc 1 4204 0
	movq	-8(%rbp), %rax	# p, tmp73
	cmpq	-48(%rbp), %rax	# copy_end, tmp73
	jne	.L673	#,
	.loc 1 4205 0
	movl	$0, %eax	#, D.15140
	jmp	.L674	#
.L673:
	.loc 1 4206 0
	movq	-8(%rbp), %rax	# p, tmp74
	movq	24(%rax), %rax	# p_3->fld[2].rtx, tmp75
	movq	%rax, -8(%rbp)	# tmp75, p
.L671:
	.loc 1 4199 0 discriminator 1
	movq	-8(%rbp), %rax	# p, tmp76
	movl	8(%rax), %eax	# p_3->fld[0].rtint, D.15140
	cmpl	-24(%rbp), %eax	# first_uid, D.15140
	jne	.L675	#,
	.loc 1 4210 0
	movq	-8(%rbp), %rax	# p, tmp77
	movzwl	(%rax), %eax	# p_3->code, D.15141
	movzwl	%ax, %eax	# D.15141, D.15140
	cltq
	movzbl	rtx_class(%rax), %eax	# rtx_class, D.15142
	cmpb	$105, %al	#, D.15142
	jne	.L676	#,
	.loc 1 4210 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %edx	# regno, regno.310
	movq	-8(%rbp), %rax	# p, tmp79
	movl	%edx, %esi	# regno.310,
	movq	%rax, %rdi	# tmp79,
	call	dead_or_set_regno_p	#
	testl	%eax, %eax	# D.15140
	jne	.L677	#,
.L676:
	.loc 1 4211 0 is_stmt 1
	movl	$0, %eax	#, D.15140
	jmp	.L674	#
.L677:
	.loc 1 4214 0
	cmpl	$0, -12(%rbp)	#, passed_jump
	jne	.L678	#,
	.loc 1 4215 0
	movl	$1, %eax	#, D.15140
	jmp	.L674	#
.L678:
	.loc 1 4217 0
	jmp	.L679	#
.L682:
	.loc 1 4221 0
	movq	-8(%rbp), %rax	# p, tmp80
	movzwl	(%rax), %eax	# p_4->code, D.15141
	cmpw	$36, %ax	#, D.15141
	jne	.L680	#,
	.loc 1 4222 0
	movl	$0, %eax	#, D.15140
	jmp	.L674	#
.L680:
	.loc 1 4225 0
	movq	-8(%rbp), %rax	# p, tmp81
	cmpq	-48(%rbp), %rax	# copy_end, tmp81
	jne	.L681	#,
	.loc 1 4226 0
	movl	$1, %eax	#, D.15140
	jmp	.L674	#
.L681:
	.loc 1 4227 0
	movq	-8(%rbp), %rax	# p, tmp82
	movq	24(%rax), %rax	# p_4->fld[2].rtx, tmp83
	movq	%rax, -8(%rbp)	# tmp83, p
.L679:
	.loc 1 4217 0 discriminator 1
	movq	-8(%rbp), %rax	# p, tmp84
	movl	8(%rax), %eax	# p_4->fld[0].rtint, D.15140
	cmpl	-28(%rbp), %eax	# last_uid, D.15140
	jne	.L682	#,
	.loc 1 4231 0
	movl	$1, %eax	#, D.15140
.L674:
	.loc 1 4232 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	set_dominates_use, .-set_dominates_use
	.type	ujump_to_loop_cont, @function
ujump_to_loop_cont:
.LFB25:
	.loc 1 4244 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# loop_start, loop_start
	movq	%rsi, -48(%rbp)	# loop_cont, loop_cont
	.loc 1 4248 0
	movq	-40(%rbp), %rax	# loop_start, tmp65
	movq	%rax, %rdi	# tmp65,
	call	next_nonnote_insn	#
	movq	%rax, -40(%rbp)	# tmp66, loop_start
	.loc 1 4250 0
	movq	-40(%rbp), %rax	# loop_start, tmp67
	movq	%rax, %rdi	# tmp67,
	call	pc_set	#
	movq	%rax, -24(%rbp)	# tmp68, x
	.loc 1 4251 0
	cmpq	$0, -24(%rbp)	#, x
	jne	.L684	#,
	.loc 1 4252 0
	movl	$0, %eax	#, D.15143
	jmp	.L685	#
.L684:
	.loc 1 4254 0
	movq	-24(%rbp), %rax	# x, tmp69
	movq	16(%rax), %rax	# x_4->fld[1].rtx, tmp70
	movq	%rax, -16(%rbp)	# tmp70, label_ref
	.loc 1 4255 0
	cmpq	$0, -16(%rbp)	#, label_ref
	jne	.L686	#,
	.loc 1 4256 0
	movl	$0, %eax	#, D.15143
	jmp	.L685	#
.L686:
	.loc 1 4259 0
	movq	-48(%rbp), %rax	# loop_cont, tmp71
	movq	%rax, %rdi	# tmp71,
	call	next_nonnote_insn	#
	movq	%rax, -8(%rbp)	# tmp72, label
	.loc 1 4260 0
	cmpq	$0, -8(%rbp)	#, label
	je	.L687	#,
	.loc 1 4260 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# label, tmp73
	movzwl	(%rax), %eax	# label_9->code, D.15144
	cmpw	$36, %ax	#, D.15144
	je	.L688	#,
.L687:
	.loc 1 4261 0 is_stmt 1
	movl	$0, %eax	#, D.15143
	jmp	.L685	#
.L688:
	.loc 1 4264 0
	movq	-8(%rbp), %rax	# label, tmp74
	movl	48(%rax), %edx	# label_9->fld[5].rtint, D.15145
	movq	-16(%rbp), %rax	# label_ref, tmp75
	movq	8(%rax), %rax	# label_ref_6->fld[0].rtx, D.15146
	movl	48(%rax), %eax	# _12->fld[5].rtint, D.15145
	cmpl	%eax, %edx	# D.15145, D.15145
	jne	.L689	#,
	.loc 1 4265 0
	movq	-40(%rbp), %rax	# loop_start, D.15143
	jmp	.L685	#
.L689:
	.loc 1 4267 0
	movl	$0, %eax	#, D.15143
.L685:
	.loc 1 4268 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	ujump_to_loop_cont, .-ujump_to_loop_cont
	.section	.rodata
	.type	__FUNCTION__.11296, @object
	.size	__FUNCTION__.11296, 12
__FUNCTION__.11296:
	.string	"unroll_loop"
	.align 16
	.type	__FUNCTION__.11357, @object
	.size	__FUNCTION__.11357, 20
__FUNCTION__.11357:
	.string	"precondition_loop_p"
	.align 16
	.type	__FUNCTION__.11378, @object
	.size	__FUNCTION__.11378, 18
__FUNCTION__.11378:
	.string	"calculate_giv_inc"
	.align 16
	.type	__FUNCTION__.11387, @object
	.size	__FUNCTION__.11387, 22
__FUNCTION__.11387:
	.string	"initial_reg_note_copy"
	.align 16
	.type	__FUNCTION__.11395, @object
	.size	__FUNCTION__.11395, 20
__FUNCTION__.11395:
	.string	"final_reg_note_copy"
	.type	__FUNCTION__.11442, @object
	.size	__FUNCTION__.11442, 15
__FUNCTION__.11442:
	.string	"copy_loop_body"
	.align 16
	.type	__FUNCTION__.11500, @object
	.size	__FUNCTION__.11500, 18
__FUNCTION__.11500:
	.string	"fold_rtx_mult_add"
	.align 16
	.type	__FUNCTION__.11523, @object
	.size	__FUNCTION__.11523, 21
__FUNCTION__.11523:
	.string	"find_splittable_regs"
	.align 16
	.type	__FUNCTION__.11540, @object
	.size	__FUNCTION__.11540, 17
__FUNCTION__.11540:
	.string	"verify_addresses"
	.align 16
	.type	__FUNCTION__.11563, @object
	.size	__FUNCTION__.11563, 21
__FUNCTION__.11563:
	.string	"find_splittable_givs"
	.align 16
	.type	__FUNCTION__.11628, @object
	.size	__FUNCTION__.11628, 16
__FUNCTION__.11628:
	.string	"final_giv_value"
	.align 16
	.type	__FUNCTION__.11645, @object
	.size	__FUNCTION__.11645, 18
__FUNCTION__.11645:
	.string	"subtract_reg_term"
	.align 16
	.type	__FUNCTION__.11678, @object
	.size	__FUNCTION__.11678, 16
__FUNCTION__.11678:
	.string	"loop_iterations"
	.text
.Letext0:
	.file 2 "rtl.h"
	.file 3 "config.h"
	.file 4 "i386.h"
	.file 5 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 7 "/usr/include/stdio.h"
	.file 8 "/usr/include/libio.h"
	.file 9 "machmode.h"
	.file 10 "bitmap.h"
	.file 11 "basic-block.h"
	.file 12 "varray.h"
	.file 13 "regs.h"
	.file 14 "integrate.h"
	.file 15 "function.h"
	.file 16 "expr.h"
	.file 17 "sbitmap.h"
	.file 18 "loop.h"
	.file 19 "predict.h"
	.file 20 "flags.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x3fa1
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF899
	.byte	0x1
	.long	.LASF900
	.long	.LASF901
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.string	"rtx"
	.byte	0x3
	.byte	0x8
	.long	0x38
	.uleb128 0x3
	.byte	0x8
	.long	0x3e
	.uleb128 0x4
	.long	.LASF11
	.byte	0x10
	.byte	0x2
	.byte	0x7a
	.long	0xed
	.uleb128 0x5
	.long	.LASF0
	.byte	0x2
	.byte	0x7d
	.long	0x26b
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.long	.LASF1
	.byte	0x2
	.byte	0x80
	.long	0x26b
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	.LASF2
	.byte	0x2
	.byte	0x87
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.long	.LASF3
	.byte	0x2
	.byte	0x8a
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.long	.LASF4
	.byte	0x2
	.byte	0x95
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.long	.LASF5
	.byte	0x2
	.byte	0x9d
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.long	.LASF6
	.byte	0x2
	.byte	0xaf
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.long	.LASF7
	.byte	0x2
	.byte	0xb6
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.long	.LASF8
	.byte	0x2
	.byte	0xbb
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.long	.LASF9
	.byte	0x2
	.byte	0xc4
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x6
	.string	"fld"
	.byte	0x2
	.byte	0xc9
	.long	0xd38
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.long	.LASF10
	.byte	0x3
	.byte	0xa
	.long	0xf8
	.uleb128 0x3
	.byte	0x8
	.long	0xfe
	.uleb128 0x4
	.long	.LASF12
	.byte	0x10
	.byte	0x2
	.byte	0xde
	.long	0x123
	.uleb128 0x8
	.long	.LASF13
	.byte	0x2
	.byte	0xdf
	.long	0x13e
	.byte	0
	.uleb128 0x8
	.long	.LASF14
	.byte	0x2
	.byte	0xe0
	.long	0xd48
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.long	.LASF15
	.byte	0x3
	.byte	0xc
	.long	0x12e
	.uleb128 0x3
	.byte	0x8
	.long	0x134
	.uleb128 0x9
	.long	.LASF902
	.uleb128 0xa
	.long	0x13e
	.uleb128 0xb
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xc
	.byte	0x8
	.byte	0x7
	.long	.LASF16
	.uleb128 0xd
	.long	.LASF100
	.byte	0x4
	.byte	0x4
	.value	0x4b2
	.long	0x1f6
	.uleb128 0xe
	.long	.LASF17
	.sleb128 0
	.uleb128 0xe
	.long	.LASF18
	.sleb128 1
	.uleb128 0xe
	.long	.LASF19
	.sleb128 2
	.uleb128 0xe
	.long	.LASF20
	.sleb128 3
	.uleb128 0xe
	.long	.LASF21
	.sleb128 4
	.uleb128 0xe
	.long	.LASF22
	.sleb128 5
	.uleb128 0xe
	.long	.LASF23
	.sleb128 6
	.uleb128 0xe
	.long	.LASF24
	.sleb128 7
	.uleb128 0xe
	.long	.LASF25
	.sleb128 8
	.uleb128 0xe
	.long	.LASF26
	.sleb128 9
	.uleb128 0xe
	.long	.LASF27
	.sleb128 10
	.uleb128 0xe
	.long	.LASF28
	.sleb128 11
	.uleb128 0xe
	.long	.LASF29
	.sleb128 12
	.uleb128 0xe
	.long	.LASF30
	.sleb128 13
	.uleb128 0xe
	.long	.LASF31
	.sleb128 14
	.uleb128 0xe
	.long	.LASF32
	.sleb128 15
	.uleb128 0xe
	.long	.LASF33
	.sleb128 16
	.uleb128 0xe
	.long	.LASF34
	.sleb128 17
	.uleb128 0xe
	.long	.LASF35
	.sleb128 18
	.uleb128 0xe
	.long	.LASF36
	.sleb128 19
	.uleb128 0xe
	.long	.LASF37
	.sleb128 20
	.uleb128 0xe
	.long	.LASF38
	.sleb128 21
	.uleb128 0xe
	.long	.LASF39
	.sleb128 22
	.uleb128 0xe
	.long	.LASF40
	.sleb128 23
	.uleb128 0xe
	.long	.LASF41
	.sleb128 24
	.uleb128 0xe
	.long	.LASF42
	.sleb128 25
	.byte	0
	.uleb128 0xf
	.long	.LASF43
	.byte	0x1c
	.byte	0x4
	.value	0x683
	.long	0x25f
	.uleb128 0x10
	.long	.LASF44
	.byte	0x4
	.value	0x684
	.long	0x13e
	.byte	0
	.uleb128 0x10
	.long	.LASF45
	.byte	0x4
	.value	0x685
	.long	0x13e
	.byte	0x4
	.uleb128 0x10
	.long	.LASF46
	.byte	0x4
	.value	0x686
	.long	0x13e
	.byte	0x8
	.uleb128 0x10
	.long	.LASF47
	.byte	0x4
	.value	0x687
	.long	0x13e
	.byte	0xc
	.uleb128 0x10
	.long	.LASF48
	.byte	0x4
	.value	0x688
	.long	0x13e
	.byte	0x10
	.uleb128 0x10
	.long	.LASF49
	.byte	0x4
	.value	0x689
	.long	0x13e
	.byte	0x14
	.uleb128 0x10
	.long	.LASF50
	.byte	0x4
	.value	0x68a
	.long	0x13e
	.byte	0x18
	.byte	0
	.uleb128 0x11
	.long	.LASF51
	.byte	0x4
	.value	0x68b
	.long	0x1f6
	.uleb128 0xc
	.byte	0x4
	.byte	0x7
	.long	.LASF52
	.uleb128 0x12
	.byte	0x8
	.uleb128 0xc
	.byte	0x8
	.byte	0x5
	.long	.LASF53
	.uleb128 0x7
	.long	.LASF54
	.byte	0x5
	.byte	0xd4
	.long	0x286
	.uleb128 0xc
	.byte	0x8
	.byte	0x7
	.long	.LASF55
	.uleb128 0xc
	.byte	0x1
	.byte	0x8
	.long	.LASF56
	.uleb128 0xc
	.byte	0x2
	.byte	0x7
	.long	.LASF57
	.uleb128 0xc
	.byte	0x1
	.byte	0x6
	.long	.LASF58
	.uleb128 0xc
	.byte	0x2
	.byte	0x5
	.long	.LASF59
	.uleb128 0x7
	.long	.LASF60
	.byte	0x6
	.byte	0x8c
	.long	0x274
	.uleb128 0x7
	.long	.LASF61
	.byte	0x6
	.byte	0x8d
	.long	0x274
	.uleb128 0x3
	.byte	0x8
	.long	0x2c5
	.uleb128 0xc
	.byte	0x1
	.byte	0x6
	.long	.LASF62
	.uleb128 0x7
	.long	.LASF63
	.byte	0x7
	.byte	0x30
	.long	0x2d7
	.uleb128 0x4
	.long	.LASF64
	.byte	0xd8
	.byte	0x8
	.byte	0xf6
	.long	0x458
	.uleb128 0x8
	.long	.LASF65
	.byte	0x8
	.byte	0xf7
	.long	0x13e
	.byte	0
	.uleb128 0x8
	.long	.LASF66
	.byte	0x8
	.byte	0xfc
	.long	0x2bf
	.byte	0x8
	.uleb128 0x8
	.long	.LASF67
	.byte	0x8
	.byte	0xfd
	.long	0x2bf
	.byte	0x10
	.uleb128 0x8
	.long	.LASF68
	.byte	0x8
	.byte	0xfe
	.long	0x2bf
	.byte	0x18
	.uleb128 0x8
	.long	.LASF69
	.byte	0x8
	.byte	0xff
	.long	0x2bf
	.byte	0x20
	.uleb128 0x10
	.long	.LASF70
	.byte	0x8
	.value	0x100
	.long	0x2bf
	.byte	0x28
	.uleb128 0x10
	.long	.LASF71
	.byte	0x8
	.value	0x101
	.long	0x2bf
	.byte	0x30
	.uleb128 0x10
	.long	.LASF72
	.byte	0x8
	.value	0x102
	.long	0x2bf
	.byte	0x38
	.uleb128 0x10
	.long	.LASF73
	.byte	0x8
	.value	0x103
	.long	0x2bf
	.byte	0x40
	.uleb128 0x10
	.long	.LASF74
	.byte	0x8
	.value	0x105
	.long	0x2bf
	.byte	0x48
	.uleb128 0x10
	.long	.LASF75
	.byte	0x8
	.value	0x106
	.long	0x2bf
	.byte	0x50
	.uleb128 0x10
	.long	.LASF76
	.byte	0x8
	.value	0x107
	.long	0x2bf
	.byte	0x58
	.uleb128 0x10
	.long	.LASF77
	.byte	0x8
	.value	0x109
	.long	0x490
	.byte	0x60
	.uleb128 0x10
	.long	.LASF78
	.byte	0x8
	.value	0x10b
	.long	0x496
	.byte	0x68
	.uleb128 0x10
	.long	.LASF79
	.byte	0x8
	.value	0x10d
	.long	0x13e
	.byte	0x70
	.uleb128 0x10
	.long	.LASF80
	.byte	0x8
	.value	0x111
	.long	0x13e
	.byte	0x74
	.uleb128 0x10
	.long	.LASF81
	.byte	0x8
	.value	0x113
	.long	0x2a9
	.byte	0x78
	.uleb128 0x10
	.long	.LASF82
	.byte	0x8
	.value	0x117
	.long	0x294
	.byte	0x80
	.uleb128 0x10
	.long	.LASF83
	.byte	0x8
	.value	0x118
	.long	0x29b
	.byte	0x82
	.uleb128 0x10
	.long	.LASF84
	.byte	0x8
	.value	0x119
	.long	0x49c
	.byte	0x83
	.uleb128 0x10
	.long	.LASF85
	.byte	0x8
	.value	0x11d
	.long	0x4ac
	.byte	0x88
	.uleb128 0x10
	.long	.LASF86
	.byte	0x8
	.value	0x126
	.long	0x2b4
	.byte	0x90
	.uleb128 0x10
	.long	.LASF87
	.byte	0x8
	.value	0x12f
	.long	0x272
	.byte	0x98
	.uleb128 0x10
	.long	.LASF88
	.byte	0x8
	.value	0x130
	.long	0x272
	.byte	0xa0
	.uleb128 0x10
	.long	.LASF89
	.byte	0x8
	.value	0x131
	.long	0x272
	.byte	0xa8
	.uleb128 0x10
	.long	.LASF90
	.byte	0x8
	.value	0x132
	.long	0x272
	.byte	0xb0
	.uleb128 0x10
	.long	.LASF91
	.byte	0x8
	.value	0x133
	.long	0x27b
	.byte	0xb8
	.uleb128 0x10
	.long	.LASF92
	.byte	0x8
	.value	0x135
	.long	0x13e
	.byte	0xc0
	.uleb128 0x10
	.long	.LASF93
	.byte	0x8
	.value	0x137
	.long	0x4b2
	.byte	0xc4
	.byte	0
	.uleb128 0x13
	.long	.LASF903
	.byte	0x8
	.byte	0x9b
	.uleb128 0x4
	.long	.LASF94
	.byte	0x18
	.byte	0x8
	.byte	0xa1
	.long	0x490
	.uleb128 0x8
	.long	.LASF95
	.byte	0x8
	.byte	0xa2
	.long	0x490
	.byte	0
	.uleb128 0x8
	.long	.LASF96
	.byte	0x8
	.byte	0xa3
	.long	0x496
	.byte	0x8
	.uleb128 0x8
	.long	.LASF97
	.byte	0x8
	.byte	0xa7
	.long	0x13e
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x45f
	.uleb128 0x3
	.byte	0x8
	.long	0x2d7
	.uleb128 0x14
	.long	0x2c5
	.long	0x4ac
	.uleb128 0x15
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x458
	.uleb128 0x14
	.long	0x2c5
	.long	0x4c2
	.uleb128 0x15
	.long	0x145
	.byte	0x13
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x4c8
	.uleb128 0xa
	.long	0x2c5
	.uleb128 0xc
	.byte	0x8
	.byte	0x7
	.long	.LASF98
	.uleb128 0xc
	.byte	0x8
	.byte	0x5
	.long	.LASF99
	.uleb128 0x3
	.byte	0x8
	.long	0x13e
	.uleb128 0x16
	.long	.LASF101
	.byte	0x4
	.byte	0x9
	.byte	0x1d
	.long	0x656
	.uleb128 0xe
	.long	.LASF102
	.sleb128 0
	.uleb128 0xe
	.long	.LASF103
	.sleb128 1
	.uleb128 0xe
	.long	.LASF104
	.sleb128 2
	.uleb128 0xe
	.long	.LASF105
	.sleb128 3
	.uleb128 0xe
	.long	.LASF106
	.sleb128 4
	.uleb128 0xe
	.long	.LASF107
	.sleb128 5
	.uleb128 0xe
	.long	.LASF108
	.sleb128 6
	.uleb128 0xe
	.long	.LASF109
	.sleb128 7
	.uleb128 0xe
	.long	.LASF110
	.sleb128 8
	.uleb128 0xe
	.long	.LASF111
	.sleb128 9
	.uleb128 0xe
	.long	.LASF112
	.sleb128 10
	.uleb128 0xe
	.long	.LASF113
	.sleb128 11
	.uleb128 0xe
	.long	.LASF114
	.sleb128 12
	.uleb128 0xe
	.long	.LASF115
	.sleb128 13
	.uleb128 0xe
	.long	.LASF116
	.sleb128 14
	.uleb128 0xe
	.long	.LASF117
	.sleb128 15
	.uleb128 0xe
	.long	.LASF118
	.sleb128 16
	.uleb128 0xe
	.long	.LASF119
	.sleb128 17
	.uleb128 0xe
	.long	.LASF120
	.sleb128 18
	.uleb128 0xe
	.long	.LASF121
	.sleb128 19
	.uleb128 0xe
	.long	.LASF122
	.sleb128 20
	.uleb128 0xe
	.long	.LASF123
	.sleb128 21
	.uleb128 0xe
	.long	.LASF124
	.sleb128 22
	.uleb128 0xe
	.long	.LASF125
	.sleb128 23
	.uleb128 0xe
	.long	.LASF126
	.sleb128 24
	.uleb128 0xe
	.long	.LASF127
	.sleb128 25
	.uleb128 0xe
	.long	.LASF128
	.sleb128 26
	.uleb128 0xe
	.long	.LASF129
	.sleb128 27
	.uleb128 0xe
	.long	.LASF130
	.sleb128 28
	.uleb128 0xe
	.long	.LASF131
	.sleb128 29
	.uleb128 0xe
	.long	.LASF132
	.sleb128 30
	.uleb128 0xe
	.long	.LASF133
	.sleb128 31
	.uleb128 0xe
	.long	.LASF134
	.sleb128 32
	.uleb128 0xe
	.long	.LASF135
	.sleb128 33
	.uleb128 0xe
	.long	.LASF136
	.sleb128 34
	.uleb128 0xe
	.long	.LASF137
	.sleb128 35
	.uleb128 0xe
	.long	.LASF138
	.sleb128 36
	.uleb128 0xe
	.long	.LASF139
	.sleb128 37
	.uleb128 0xe
	.long	.LASF140
	.sleb128 38
	.uleb128 0xe
	.long	.LASF141
	.sleb128 39
	.uleb128 0xe
	.long	.LASF142
	.sleb128 40
	.uleb128 0xe
	.long	.LASF143
	.sleb128 41
	.uleb128 0xe
	.long	.LASF144
	.sleb128 42
	.uleb128 0xe
	.long	.LASF145
	.sleb128 43
	.uleb128 0xe
	.long	.LASF146
	.sleb128 44
	.uleb128 0xe
	.long	.LASF147
	.sleb128 45
	.uleb128 0xe
	.long	.LASF148
	.sleb128 46
	.uleb128 0xe
	.long	.LASF149
	.sleb128 47
	.uleb128 0xe
	.long	.LASF150
	.sleb128 48
	.uleb128 0xe
	.long	.LASF151
	.sleb128 49
	.uleb128 0xe
	.long	.LASF152
	.sleb128 50
	.uleb128 0xe
	.long	.LASF153
	.sleb128 51
	.uleb128 0xe
	.long	.LASF154
	.sleb128 52
	.uleb128 0xe
	.long	.LASF155
	.sleb128 53
	.uleb128 0xe
	.long	.LASF156
	.sleb128 54
	.uleb128 0xe
	.long	.LASF157
	.sleb128 55
	.uleb128 0xe
	.long	.LASF158
	.sleb128 56
	.uleb128 0xe
	.long	.LASF159
	.sleb128 57
	.uleb128 0xe
	.long	.LASF160
	.sleb128 58
	.uleb128 0xe
	.long	.LASF161
	.sleb128 59
	.byte	0
	.uleb128 0x16
	.long	.LASF162
	.byte	0x4
	.byte	0x9
	.byte	0x2c
	.long	0x69f
	.uleb128 0xe
	.long	.LASF163
	.sleb128 0
	.uleb128 0xe
	.long	.LASF164
	.sleb128 1
	.uleb128 0xe
	.long	.LASF165
	.sleb128 2
	.uleb128 0xe
	.long	.LASF166
	.sleb128 3
	.uleb128 0xe
	.long	.LASF167
	.sleb128 4
	.uleb128 0xe
	.long	.LASF168
	.sleb128 5
	.uleb128 0xe
	.long	.LASF169
	.sleb128 6
	.uleb128 0xe
	.long	.LASF170
	.sleb128 7
	.uleb128 0xe
	.long	.LASF171
	.sleb128 8
	.uleb128 0xe
	.long	.LASF172
	.sleb128 9
	.byte	0
	.uleb128 0x16
	.long	.LASF173
	.byte	0x4
	.byte	0x2
	.byte	0x29
	.long	0xa9b
	.uleb128 0xe
	.long	.LASF174
	.sleb128 0
	.uleb128 0x17
	.string	"NIL"
	.sleb128 1
	.uleb128 0xe
	.long	.LASF175
	.sleb128 2
	.uleb128 0xe
	.long	.LASF176
	.sleb128 3
	.uleb128 0xe
	.long	.LASF177
	.sleb128 4
	.uleb128 0xe
	.long	.LASF178
	.sleb128 5
	.uleb128 0xe
	.long	.LASF179
	.sleb128 6
	.uleb128 0xe
	.long	.LASF180
	.sleb128 7
	.uleb128 0xe
	.long	.LASF181
	.sleb128 8
	.uleb128 0xe
	.long	.LASF182
	.sleb128 9
	.uleb128 0xe
	.long	.LASF183
	.sleb128 10
	.uleb128 0xe
	.long	.LASF184
	.sleb128 11
	.uleb128 0xe
	.long	.LASF185
	.sleb128 12
	.uleb128 0xe
	.long	.LASF186
	.sleb128 13
	.uleb128 0xe
	.long	.LASF187
	.sleb128 14
	.uleb128 0xe
	.long	.LASF188
	.sleb128 15
	.uleb128 0xe
	.long	.LASF189
	.sleb128 16
	.uleb128 0xe
	.long	.LASF190
	.sleb128 17
	.uleb128 0xe
	.long	.LASF191
	.sleb128 18
	.uleb128 0xe
	.long	.LASF192
	.sleb128 19
	.uleb128 0xe
	.long	.LASF193
	.sleb128 20
	.uleb128 0xe
	.long	.LASF194
	.sleb128 21
	.uleb128 0xe
	.long	.LASF195
	.sleb128 22
	.uleb128 0xe
	.long	.LASF196
	.sleb128 23
	.uleb128 0xe
	.long	.LASF197
	.sleb128 24
	.uleb128 0xe
	.long	.LASF198
	.sleb128 25
	.uleb128 0xe
	.long	.LASF199
	.sleb128 26
	.uleb128 0xe
	.long	.LASF200
	.sleb128 27
	.uleb128 0xe
	.long	.LASF201
	.sleb128 28
	.uleb128 0xe
	.long	.LASF202
	.sleb128 29
	.uleb128 0xe
	.long	.LASF203
	.sleb128 30
	.uleb128 0xe
	.long	.LASF204
	.sleb128 31
	.uleb128 0xe
	.long	.LASF205
	.sleb128 32
	.uleb128 0xe
	.long	.LASF206
	.sleb128 33
	.uleb128 0xe
	.long	.LASF207
	.sleb128 34
	.uleb128 0xe
	.long	.LASF208
	.sleb128 35
	.uleb128 0xe
	.long	.LASF209
	.sleb128 36
	.uleb128 0xe
	.long	.LASF210
	.sleb128 37
	.uleb128 0xe
	.long	.LASF211
	.sleb128 38
	.uleb128 0xe
	.long	.LASF212
	.sleb128 39
	.uleb128 0xe
	.long	.LASF213
	.sleb128 40
	.uleb128 0xe
	.long	.LASF214
	.sleb128 41
	.uleb128 0xe
	.long	.LASF215
	.sleb128 42
	.uleb128 0xe
	.long	.LASF216
	.sleb128 43
	.uleb128 0xe
	.long	.LASF217
	.sleb128 44
	.uleb128 0xe
	.long	.LASF218
	.sleb128 45
	.uleb128 0xe
	.long	.LASF219
	.sleb128 46
	.uleb128 0x17
	.string	"SET"
	.sleb128 47
	.uleb128 0x17
	.string	"USE"
	.sleb128 48
	.uleb128 0xe
	.long	.LASF220
	.sleb128 49
	.uleb128 0xe
	.long	.LASF221
	.sleb128 50
	.uleb128 0xe
	.long	.LASF222
	.sleb128 51
	.uleb128 0xe
	.long	.LASF223
	.sleb128 52
	.uleb128 0xe
	.long	.LASF224
	.sleb128 53
	.uleb128 0xe
	.long	.LASF225
	.sleb128 54
	.uleb128 0xe
	.long	.LASF226
	.sleb128 55
	.uleb128 0xe
	.long	.LASF227
	.sleb128 56
	.uleb128 0xe
	.long	.LASF228
	.sleb128 57
	.uleb128 0xe
	.long	.LASF229
	.sleb128 58
	.uleb128 0x17
	.string	"PC"
	.sleb128 59
	.uleb128 0xe
	.long	.LASF230
	.sleb128 60
	.uleb128 0x17
	.string	"REG"
	.sleb128 61
	.uleb128 0xe
	.long	.LASF231
	.sleb128 62
	.uleb128 0xe
	.long	.LASF232
	.sleb128 63
	.uleb128 0xe
	.long	.LASF233
	.sleb128 64
	.uleb128 0xe
	.long	.LASF234
	.sleb128 65
	.uleb128 0x17
	.string	"MEM"
	.sleb128 66
	.uleb128 0xe
	.long	.LASF235
	.sleb128 67
	.uleb128 0xe
	.long	.LASF236
	.sleb128 68
	.uleb128 0x17
	.string	"CC0"
	.sleb128 69
	.uleb128 0xe
	.long	.LASF237
	.sleb128 70
	.uleb128 0xe
	.long	.LASF238
	.sleb128 71
	.uleb128 0xe
	.long	.LASF239
	.sleb128 72
	.uleb128 0xe
	.long	.LASF240
	.sleb128 73
	.uleb128 0xe
	.long	.LASF241
	.sleb128 74
	.uleb128 0xe
	.long	.LASF242
	.sleb128 75
	.uleb128 0xe
	.long	.LASF243
	.sleb128 76
	.uleb128 0x17
	.string	"NEG"
	.sleb128 77
	.uleb128 0xe
	.long	.LASF244
	.sleb128 78
	.uleb128 0x17
	.string	"DIV"
	.sleb128 79
	.uleb128 0x17
	.string	"MOD"
	.sleb128 80
	.uleb128 0xe
	.long	.LASF245
	.sleb128 81
	.uleb128 0xe
	.long	.LASF246
	.sleb128 82
	.uleb128 0x17
	.string	"AND"
	.sleb128 83
	.uleb128 0x17
	.string	"IOR"
	.sleb128 84
	.uleb128 0x17
	.string	"XOR"
	.sleb128 85
	.uleb128 0x17
	.string	"NOT"
	.sleb128 86
	.uleb128 0xe
	.long	.LASF247
	.sleb128 87
	.uleb128 0xe
	.long	.LASF248
	.sleb128 88
	.uleb128 0xe
	.long	.LASF249
	.sleb128 89
	.uleb128 0xe
	.long	.LASF250
	.sleb128 90
	.uleb128 0xe
	.long	.LASF251
	.sleb128 91
	.uleb128 0xe
	.long	.LASF252
	.sleb128 92
	.uleb128 0xe
	.long	.LASF253
	.sleb128 93
	.uleb128 0xe
	.long	.LASF254
	.sleb128 94
	.uleb128 0xe
	.long	.LASF255
	.sleb128 95
	.uleb128 0xe
	.long	.LASF256
	.sleb128 96
	.uleb128 0xe
	.long	.LASF257
	.sleb128 97
	.uleb128 0xe
	.long	.LASF258
	.sleb128 98
	.uleb128 0xe
	.long	.LASF259
	.sleb128 99
	.uleb128 0xe
	.long	.LASF260
	.sleb128 100
	.uleb128 0xe
	.long	.LASF261
	.sleb128 101
	.uleb128 0x17
	.string	"NE"
	.sleb128 102
	.uleb128 0x17
	.string	"EQ"
	.sleb128 103
	.uleb128 0x17
	.string	"GE"
	.sleb128 104
	.uleb128 0x17
	.string	"GT"
	.sleb128 105
	.uleb128 0x17
	.string	"LE"
	.sleb128 106
	.uleb128 0x17
	.string	"LT"
	.sleb128 107
	.uleb128 0x17
	.string	"GEU"
	.sleb128 108
	.uleb128 0x17
	.string	"GTU"
	.sleb128 109
	.uleb128 0x17
	.string	"LEU"
	.sleb128 110
	.uleb128 0x17
	.string	"LTU"
	.sleb128 111
	.uleb128 0xe
	.long	.LASF262
	.sleb128 112
	.uleb128 0xe
	.long	.LASF263
	.sleb128 113
	.uleb128 0xe
	.long	.LASF264
	.sleb128 114
	.uleb128 0xe
	.long	.LASF265
	.sleb128 115
	.uleb128 0xe
	.long	.LASF266
	.sleb128 116
	.uleb128 0xe
	.long	.LASF267
	.sleb128 117
	.uleb128 0xe
	.long	.LASF268
	.sleb128 118
	.uleb128 0xe
	.long	.LASF269
	.sleb128 119
	.uleb128 0xe
	.long	.LASF270
	.sleb128 120
	.uleb128 0xe
	.long	.LASF271
	.sleb128 121
	.uleb128 0xe
	.long	.LASF272
	.sleb128 122
	.uleb128 0xe
	.long	.LASF273
	.sleb128 123
	.uleb128 0xe
	.long	.LASF274
	.sleb128 124
	.uleb128 0xe
	.long	.LASF275
	.sleb128 125
	.uleb128 0x17
	.string	"FIX"
	.sleb128 126
	.uleb128 0xe
	.long	.LASF276
	.sleb128 127
	.uleb128 0xe
	.long	.LASF277
	.sleb128 128
	.uleb128 0x17
	.string	"ABS"
	.sleb128 129
	.uleb128 0xe
	.long	.LASF278
	.sleb128 130
	.uleb128 0x17
	.string	"FFS"
	.sleb128 131
	.uleb128 0xe
	.long	.LASF279
	.sleb128 132
	.uleb128 0xe
	.long	.LASF280
	.sleb128 133
	.uleb128 0xe
	.long	.LASF281
	.sleb128 134
	.uleb128 0xe
	.long	.LASF282
	.sleb128 135
	.uleb128 0xe
	.long	.LASF283
	.sleb128 136
	.uleb128 0xe
	.long	.LASF284
	.sleb128 137
	.uleb128 0xe
	.long	.LASF285
	.sleb128 138
	.uleb128 0xe
	.long	.LASF286
	.sleb128 139
	.uleb128 0xe
	.long	.LASF287
	.sleb128 140
	.uleb128 0xe
	.long	.LASF288
	.sleb128 141
	.uleb128 0xe
	.long	.LASF289
	.sleb128 142
	.uleb128 0xe
	.long	.LASF290
	.sleb128 143
	.uleb128 0xe
	.long	.LASF291
	.sleb128 144
	.uleb128 0xe
	.long	.LASF292
	.sleb128 145
	.uleb128 0xe
	.long	.LASF293
	.sleb128 146
	.uleb128 0xe
	.long	.LASF294
	.sleb128 147
	.uleb128 0xe
	.long	.LASF295
	.sleb128 148
	.uleb128 0xe
	.long	.LASF296
	.sleb128 149
	.uleb128 0xe
	.long	.LASF297
	.sleb128 150
	.uleb128 0xe
	.long	.LASF298
	.sleb128 151
	.uleb128 0x17
	.string	"PHI"
	.sleb128 152
	.uleb128 0xe
	.long	.LASF299
	.sleb128 153
	.byte	0
	.uleb128 0x18
	.byte	0x4
	.byte	0x2
	.byte	0x44
	.long	0xb1c
	.uleb128 0x5
	.long	.LASF300
	.byte	0x2
	.byte	0x47
	.long	0x26b
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.long	.LASF301
	.byte	0x2
	.byte	0x49
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x5
	.long	.LASF302
	.byte	0x2
	.byte	0x4a
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x5
	.long	.LASF303
	.byte	0x2
	.byte	0x4c
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.long	.LASF304
	.byte	0x2
	.byte	0x4e
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.long	.LASF305
	.byte	0x2
	.byte	0x50
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.long	.LASF306
	.byte	0x2
	.byte	0x53
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x5
	.long	.LASF307
	.byte	0x2
	.byte	0x55
	.long	0x26b
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	.LASF308
	.byte	0x2
	.byte	0x56
	.long	0xa9b
	.uleb128 0x18
	.byte	0x28
	.byte	0x2
	.byte	0x5c
	.long	0xb6c
	.uleb128 0x8
	.long	.LASF309
	.byte	0x2
	.byte	0x5e
	.long	0x274
	.byte	0
	.uleb128 0x8
	.long	.LASF310
	.byte	0x2
	.byte	0x5f
	.long	0x123
	.byte	0x8
	.uleb128 0x8
	.long	.LASF311
	.byte	0x2
	.byte	0x60
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF312
	.byte	0x2
	.byte	0x61
	.long	0x2d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF313
	.byte	0x2
	.byte	0x62
	.long	0x26b
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF314
	.byte	0x2
	.byte	0x63
	.long	0xb27
	.uleb128 0x19
	.long	.LASF414
	.byte	0x8
	.byte	0x2
	.byte	0x67
	.long	0xc12
	.uleb128 0x1a
	.long	.LASF315
	.byte	0x2
	.byte	0x69
	.long	0x274
	.uleb128 0x1a
	.long	.LASF316
	.byte	0x2
	.byte	0x6a
	.long	0x13e
	.uleb128 0x1a
	.long	.LASF317
	.byte	0x2
	.byte	0x6b
	.long	0x26b
	.uleb128 0x1a
	.long	.LASF318
	.byte	0x2
	.byte	0x6c
	.long	0x4c2
	.uleb128 0x1b
	.string	"rtx"
	.byte	0x2
	.byte	0x6d
	.long	0x2d
	.uleb128 0x1a
	.long	.LASF10
	.byte	0x2
	.byte	0x6e
	.long	0xed
	.uleb128 0x1a
	.long	.LASF319
	.byte	0x2
	.byte	0x6f
	.long	0x4e1
	.uleb128 0x1a
	.long	.LASF320
	.byte	0x2
	.byte	0x70
	.long	0xb1c
	.uleb128 0x1a
	.long	.LASF321
	.byte	0x2
	.byte	0x71
	.long	0xc17
	.uleb128 0x1a
	.long	.LASF322
	.byte	0x2
	.byte	0x72
	.long	0xc4e
	.uleb128 0x1a
	.long	.LASF323
	.byte	0x2
	.byte	0x73
	.long	0x123
	.uleb128 0x1b
	.string	"bb"
	.byte	0x2
	.byte	0x74
	.long	0xd21
	.uleb128 0x1a
	.long	.LASF324
	.byte	0x2
	.byte	0x75
	.long	0xd27
	.byte	0
	.uleb128 0x1c
	.long	.LASF423
	.uleb128 0x3
	.byte	0x8
	.long	0xc12
	.uleb128 0x4
	.long	.LASF325
	.byte	0x18
	.byte	0xa
	.byte	0x34
	.long	0xc4e
	.uleb128 0x8
	.long	.LASF326
	.byte	0xa
	.byte	0x35
	.long	0x1ac0
	.byte	0
	.uleb128 0x8
	.long	.LASF327
	.byte	0xa
	.byte	0x36
	.long	0x1ac0
	.byte	0x8
	.uleb128 0x8
	.long	.LASF328
	.byte	0xa
	.byte	0x37
	.long	0x26b
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xc1d
	.uleb128 0x4
	.long	.LASF329
	.byte	0x70
	.byte	0xb
	.byte	0xae
	.long	0xd21
	.uleb128 0x8
	.long	.LASF330
	.byte	0xb
	.byte	0xb0
	.long	0x2d
	.byte	0
	.uleb128 0x6
	.string	"end"
	.byte	0xb
	.byte	0xb0
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF331
	.byte	0xb
	.byte	0xb3
	.long	0x123
	.byte	0x10
	.uleb128 0x8
	.long	.LASF332
	.byte	0xb
	.byte	0xb4
	.long	0x123
	.byte	0x18
	.uleb128 0x8
	.long	.LASF333
	.byte	0xb
	.byte	0xb7
	.long	0x1bb4
	.byte	0x20
	.uleb128 0x8
	.long	.LASF334
	.byte	0xb
	.byte	0xb7
	.long	0x1bb4
	.byte	0x28
	.uleb128 0x8
	.long	.LASF335
	.byte	0xb
	.byte	0xbc
	.long	0x1b1f
	.byte	0x30
	.uleb128 0x8
	.long	.LASF336
	.byte	0xb
	.byte	0xc0
	.long	0x1b1f
	.byte	0x38
	.uleb128 0x8
	.long	.LASF337
	.byte	0xb
	.byte	0xc6
	.long	0x1b1f
	.byte	0x40
	.uleb128 0x8
	.long	.LASF338
	.byte	0xb
	.byte	0xc8
	.long	0x1b1f
	.byte	0x48
	.uleb128 0x6
	.string	"aux"
	.byte	0xb
	.byte	0xcb
	.long	0x272
	.byte	0x50
	.uleb128 0x8
	.long	.LASF339
	.byte	0xb
	.byte	0xce
	.long	0x13e
	.byte	0x58
	.uleb128 0x8
	.long	.LASF340
	.byte	0xb
	.byte	0xd1
	.long	0x13e
	.byte	0x5c
	.uleb128 0x8
	.long	.LASF341
	.byte	0xb
	.byte	0xd4
	.long	0x1b2a
	.byte	0x60
	.uleb128 0x8
	.long	.LASF342
	.byte	0xb
	.byte	0xd7
	.long	0x13e
	.byte	0x68
	.uleb128 0x8
	.long	.LASF343
	.byte	0xb
	.byte	0xda
	.long	0x13e
	.byte	0x6c
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0xc54
	.uleb128 0x3
	.byte	0x8
	.long	0xb6c
	.uleb128 0x7
	.long	.LASF344
	.byte	0x2
	.byte	0x76
	.long	0xb77
	.uleb128 0x14
	.long	0xd2d
	.long	0xd48
	.uleb128 0x15
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x2d
	.long	0xd58
	.uleb128 0x15
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	.LASF345
	.byte	0x4
	.byte	0x2
	.value	0x1c3
	.long	0xe1a
	.uleb128 0xe
	.long	.LASF346
	.sleb128 1
	.uleb128 0xe
	.long	.LASF347
	.sleb128 2
	.uleb128 0xe
	.long	.LASF348
	.sleb128 3
	.uleb128 0xe
	.long	.LASF349
	.sleb128 4
	.uleb128 0xe
	.long	.LASF350
	.sleb128 5
	.uleb128 0xe
	.long	.LASF351
	.sleb128 6
	.uleb128 0xe
	.long	.LASF352
	.sleb128 7
	.uleb128 0xe
	.long	.LASF353
	.sleb128 8
	.uleb128 0xe
	.long	.LASF354
	.sleb128 9
	.uleb128 0xe
	.long	.LASF355
	.sleb128 10
	.uleb128 0xe
	.long	.LASF356
	.sleb128 11
	.uleb128 0xe
	.long	.LASF357
	.sleb128 12
	.uleb128 0xe
	.long	.LASF358
	.sleb128 13
	.uleb128 0xe
	.long	.LASF359
	.sleb128 14
	.uleb128 0xe
	.long	.LASF360
	.sleb128 15
	.uleb128 0xe
	.long	.LASF361
	.sleb128 16
	.uleb128 0xe
	.long	.LASF362
	.sleb128 17
	.uleb128 0xe
	.long	.LASF363
	.sleb128 18
	.uleb128 0xe
	.long	.LASF364
	.sleb128 19
	.uleb128 0xe
	.long	.LASF365
	.sleb128 20
	.uleb128 0xe
	.long	.LASF366
	.sleb128 21
	.uleb128 0xe
	.long	.LASF367
	.sleb128 22
	.uleb128 0xe
	.long	.LASF368
	.sleb128 23
	.uleb128 0xe
	.long	.LASF369
	.sleb128 24
	.uleb128 0xe
	.long	.LASF370
	.sleb128 25
	.uleb128 0xe
	.long	.LASF371
	.sleb128 26
	.uleb128 0xe
	.long	.LASF372
	.sleb128 27
	.uleb128 0xe
	.long	.LASF373
	.sleb128 28
	.uleb128 0xe
	.long	.LASF374
	.sleb128 29
	.uleb128 0xe
	.long	.LASF375
	.sleb128 30
	.byte	0
	.uleb128 0xd
	.long	.LASF376
	.byte	0x4
	.byte	0x2
	.value	0x297
	.long	0xec9
	.uleb128 0xe
	.long	.LASF377
	.sleb128 -100
	.uleb128 0xe
	.long	.LASF378
	.sleb128 -99
	.uleb128 0xe
	.long	.LASF379
	.sleb128 -98
	.uleb128 0xe
	.long	.LASF380
	.sleb128 -97
	.uleb128 0xe
	.long	.LASF381
	.sleb128 -96
	.uleb128 0xe
	.long	.LASF382
	.sleb128 -95
	.uleb128 0xe
	.long	.LASF383
	.sleb128 -94
	.uleb128 0xe
	.long	.LASF384
	.sleb128 -93
	.uleb128 0xe
	.long	.LASF385
	.sleb128 -92
	.uleb128 0xe
	.long	.LASF386
	.sleb128 -91
	.uleb128 0xe
	.long	.LASF387
	.sleb128 -90
	.uleb128 0xe
	.long	.LASF388
	.sleb128 -89
	.uleb128 0xe
	.long	.LASF389
	.sleb128 -88
	.uleb128 0xe
	.long	.LASF390
	.sleb128 -87
	.uleb128 0xe
	.long	.LASF391
	.sleb128 -86
	.uleb128 0xe
	.long	.LASF392
	.sleb128 -85
	.uleb128 0xe
	.long	.LASF393
	.sleb128 -84
	.uleb128 0xe
	.long	.LASF394
	.sleb128 -83
	.uleb128 0xe
	.long	.LASF395
	.sleb128 -82
	.uleb128 0xe
	.long	.LASF396
	.sleb128 -81
	.uleb128 0xe
	.long	.LASF397
	.sleb128 -80
	.uleb128 0xe
	.long	.LASF398
	.sleb128 -79
	.uleb128 0xe
	.long	.LASF399
	.sleb128 -78
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2d
	.uleb128 0xd
	.long	.LASF400
	.byte	0x4
	.byte	0x2
	.value	0x630
	.long	0xf25
	.uleb128 0xe
	.long	.LASF401
	.sleb128 0
	.uleb128 0xe
	.long	.LASF402
	.sleb128 1
	.uleb128 0xe
	.long	.LASF403
	.sleb128 2
	.uleb128 0xe
	.long	.LASF404
	.sleb128 3
	.uleb128 0xe
	.long	.LASF405
	.sleb128 4
	.uleb128 0xe
	.long	.LASF406
	.sleb128 5
	.uleb128 0xe
	.long	.LASF407
	.sleb128 6
	.uleb128 0xe
	.long	.LASF408
	.sleb128 7
	.uleb128 0xe
	.long	.LASF409
	.sleb128 8
	.uleb128 0xe
	.long	.LASF410
	.sleb128 9
	.uleb128 0xe
	.long	.LASF411
	.sleb128 10
	.uleb128 0xe
	.long	.LASF412
	.sleb128 11
	.byte	0
	.uleb128 0x4
	.long	.LASF413
	.byte	0x10
	.byte	0xc
	.byte	0x24
	.long	0xf4a
	.uleb128 0x6
	.string	"rtx"
	.byte	0xc
	.byte	0x32
	.long	0x38
	.byte	0
	.uleb128 0x6
	.string	"age"
	.byte	0xc
	.byte	0x36
	.long	0x26b
	.byte	0x8
	.byte	0
	.uleb128 0x19
	.long	.LASF415
	.byte	0x10
	.byte	0xc
	.byte	0x3a
	.long	0x102f
	.uleb128 0x1b
	.string	"c"
	.byte	0xc
	.byte	0x3b
	.long	0x49c
	.uleb128 0x1b
	.string	"uc"
	.byte	0xc
	.byte	0x3c
	.long	0x102f
	.uleb128 0x1b
	.string	"s"
	.byte	0xc
	.byte	0x3d
	.long	0x103f
	.uleb128 0x1b
	.string	"us"
	.byte	0xc
	.byte	0x3e
	.long	0x104f
	.uleb128 0x1b
	.string	"i"
	.byte	0xc
	.byte	0x3f
	.long	0x105f
	.uleb128 0x1b
	.string	"u"
	.byte	0xc
	.byte	0x40
	.long	0x106f
	.uleb128 0x1b
	.string	"l"
	.byte	0xc
	.byte	0x41
	.long	0x107f
	.uleb128 0x1b
	.string	"ul"
	.byte	0xc
	.byte	0x42
	.long	0x108f
	.uleb128 0x1a
	.long	.LASF416
	.byte	0xc
	.byte	0x43
	.long	0x107f
	.uleb128 0x1a
	.long	.LASF417
	.byte	0xc
	.byte	0x44
	.long	0x108f
	.uleb128 0x1a
	.long	.LASF418
	.byte	0xc
	.byte	0x45
	.long	0x109f
	.uleb128 0x1a
	.long	.LASF419
	.byte	0xc
	.byte	0x46
	.long	0x10af
	.uleb128 0x1b
	.string	"rtx"
	.byte	0xc
	.byte	0x47
	.long	0x10bf
	.uleb128 0x1a
	.long	.LASF10
	.byte	0xc
	.byte	0x48
	.long	0x10cf
	.uleb128 0x1a
	.long	.LASF15
	.byte	0xc
	.byte	0x49
	.long	0x10df
	.uleb128 0x1a
	.long	.LASF420
	.byte	0xc
	.byte	0x4a
	.long	0x10ef
	.uleb128 0x1a
	.long	.LASF421
	.byte	0xc
	.byte	0x4b
	.long	0x10ff
	.uleb128 0x1b
	.string	"reg"
	.byte	0xc
	.byte	0x4c
	.long	0x111a
	.uleb128 0x1a
	.long	.LASF422
	.byte	0xc
	.byte	0x4d
	.long	0x11c1
	.uleb128 0x1b
	.string	"bb"
	.byte	0xc
	.byte	0x4e
	.long	0x11d1
	.uleb128 0x1b
	.string	"te"
	.byte	0xc
	.byte	0x4f
	.long	0x11e1
	.byte	0
	.uleb128 0x14
	.long	0x28d
	.long	0x103f
	.uleb128 0x15
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x2a2
	.long	0x104f
	.uleb128 0x15
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x294
	.long	0x105f
	.uleb128 0x15
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x13e
	.long	0x106f
	.uleb128 0x15
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x26b
	.long	0x107f
	.uleb128 0x15
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x274
	.long	0x108f
	.uleb128 0x15
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x286
	.long	0x109f
	.uleb128 0x15
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x272
	.long	0x10af
	.uleb128 0x15
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x2bf
	.long	0x10bf
	.uleb128 0x15
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x38
	.long	0x10cf
	.uleb128 0x15
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0xf8
	.long	0x10df
	.uleb128 0x15
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x12e
	.long	0x10ef
	.uleb128 0x15
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0xc4e
	.long	0x10ff
	.uleb128 0x15
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x110f
	.long	0x110f
	.uleb128 0x15
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1115
	.uleb128 0x1c
	.long	.LASF424
	.uleb128 0x14
	.long	0x112a
	.long	0x112a
	.uleb128 0x15
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1130
	.uleb128 0x4
	.long	.LASF425
	.byte	0x2c
	.byte	0xd
	.byte	0x2d
	.long	0x11c1
	.uleb128 0x8
	.long	.LASF426
	.byte	0xd
	.byte	0x2f
	.long	0x13e
	.byte	0
	.uleb128 0x8
	.long	.LASF427
	.byte	0xd
	.byte	0x30
	.long	0x13e
	.byte	0x4
	.uleb128 0x8
	.long	.LASF428
	.byte	0xd
	.byte	0x31
	.long	0x13e
	.byte	0x8
	.uleb128 0x8
	.long	.LASF429
	.byte	0xd
	.byte	0x34
	.long	0x13e
	.byte	0xc
	.uleb128 0x8
	.long	.LASF430
	.byte	0xd
	.byte	0x37
	.long	0x13e
	.byte	0x10
	.uleb128 0x8
	.long	.LASF431
	.byte	0xd
	.byte	0x38
	.long	0x13e
	.byte	0x14
	.uleb128 0x8
	.long	.LASF432
	.byte	0xd
	.byte	0x39
	.long	0x13e
	.byte	0x18
	.uleb128 0x8
	.long	.LASF433
	.byte	0xd
	.byte	0x3a
	.long	0x13e
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF434
	.byte	0xd
	.byte	0x3b
	.long	0x13e
	.byte	0x20
	.uleb128 0x8
	.long	.LASF435
	.byte	0xd
	.byte	0x3c
	.long	0x13e
	.byte	0x24
	.uleb128 0x8
	.long	.LASF436
	.byte	0xd
	.byte	0x3d
	.long	0x2c5
	.byte	0x28
	.byte	0
	.uleb128 0x14
	.long	0xf25
	.long	0x11d1
	.uleb128 0x15
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0xd21
	.long	0x11e1
	.uleb128 0x15
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x11f1
	.long	0x11f1
	.uleb128 0x15
	.long	0x145
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x11f7
	.uleb128 0x1c
	.long	.LASF437
	.uleb128 0x7
	.long	.LASF438
	.byte	0xc
	.byte	0x50
	.long	0xf4a
	.uleb128 0x4
	.long	.LASF439
	.byte	0x30
	.byte	0xc
	.byte	0x53
	.long	0x1250
	.uleb128 0x8
	.long	.LASF440
	.byte	0xc
	.byte	0x54
	.long	0x27b
	.byte	0
	.uleb128 0x8
	.long	.LASF441
	.byte	0xc
	.byte	0x55
	.long	0x27b
	.byte	0x8
	.uleb128 0x8
	.long	.LASF442
	.byte	0xc
	.byte	0x57
	.long	0x27b
	.byte	0x10
	.uleb128 0x8
	.long	.LASF443
	.byte	0xc
	.byte	0x58
	.long	0x4c2
	.byte	0x18
	.uleb128 0x8
	.long	.LASF444
	.byte	0xc
	.byte	0x59
	.long	0x11fc
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.long	.LASF445
	.byte	0xc
	.byte	0x5a
	.long	0x125b
	.uleb128 0x3
	.byte	0x8
	.long	0x1207
	.uleb128 0x4
	.long	.LASF446
	.byte	0x10
	.byte	0xe
	.byte	0x6e
	.long	0x1286
	.uleb128 0x8
	.long	.LASF447
	.byte	0xe
	.byte	0x70
	.long	0x2d
	.byte	0
	.uleb128 0x8
	.long	.LASF448
	.byte	0xe
	.byte	0x71
	.long	0x2d
	.byte	0x8
	.byte	0
	.uleb128 0x1d
	.long	.LASF449
	.value	0x288
	.byte	0xe
	.byte	0x23
	.long	0x13ab
	.uleb128 0x8
	.long	.LASF450
	.byte	0xe
	.byte	0x28
	.long	0x13e
	.byte	0
	.uleb128 0x8
	.long	.LASF451
	.byte	0xe
	.byte	0x2a
	.long	0x12e
	.byte	0x8
	.uleb128 0x8
	.long	.LASF452
	.byte	0xe
	.byte	0x2c
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF453
	.byte	0xe
	.byte	0x2e
	.long	0x1250
	.byte	0x18
	.uleb128 0x8
	.long	.LASF454
	.byte	0xe
	.byte	0x31
	.long	0xec9
	.byte	0x20
	.uleb128 0x8
	.long	.LASF455
	.byte	0xe
	.byte	0x38
	.long	0xec9
	.byte	0x28
	.uleb128 0x8
	.long	.LASF456
	.byte	0xe
	.byte	0x3e
	.long	0xec9
	.byte	0x30
	.uleb128 0x8
	.long	.LASF457
	.byte	0xe
	.byte	0x3f
	.long	0x13e
	.byte	0x38
	.uleb128 0x8
	.long	.LASF458
	.byte	0xe
	.byte	0x3f
	.long	0x13e
	.byte	0x3c
	.uleb128 0x8
	.long	.LASF459
	.byte	0xe
	.byte	0x4e
	.long	0x1250
	.byte	0x40
	.uleb128 0x8
	.long	.LASF460
	.byte	0xe
	.byte	0x55
	.long	0x26b
	.byte	0x48
	.uleb128 0x8
	.long	.LASF461
	.byte	0xe
	.byte	0x58
	.long	0x2d
	.byte	0x50
	.uleb128 0x8
	.long	.LASF462
	.byte	0xe
	.byte	0x5c
	.long	0xed
	.byte	0x58
	.uleb128 0x8
	.long	.LASF463
	.byte	0xe
	.byte	0x60
	.long	0xed
	.byte	0x60
	.uleb128 0x8
	.long	.LASF464
	.byte	0xe
	.byte	0x62
	.long	0xed
	.byte	0x68
	.uleb128 0x8
	.long	.LASF465
	.byte	0xe
	.byte	0x65
	.long	0x2d
	.byte	0x70
	.uleb128 0x8
	.long	.LASF466
	.byte	0xe
	.byte	0x68
	.long	0x13ab
	.byte	0x78
	.uleb128 0x8
	.long	.LASF467
	.byte	0xe
	.byte	0x69
	.long	0xec9
	.byte	0x80
	.uleb128 0x8
	.long	.LASF468
	.byte	0xe
	.byte	0x6d
	.long	0x13e
	.byte	0x88
	.uleb128 0x8
	.long	.LASF469
	.byte	0xe
	.byte	0x72
	.long	0x13b1
	.byte	0x90
	.uleb128 0x1e
	.long	.LASF470
	.byte	0xe
	.byte	0x75
	.long	0x2d
	.value	0x270
	.uleb128 0x1e
	.long	.LASF471
	.byte	0xe
	.byte	0x7c
	.long	0x2d
	.value	0x278
	.uleb128 0x1e
	.long	.LASF472
	.byte	0xe
	.byte	0x7d
	.long	0x4e1
	.value	0x280
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x28d
	.uleb128 0x14
	.long	0x1261
	.long	0x13c1
	.uleb128 0x15
	.long	0x145
	.byte	0x1d
	.byte	0
	.uleb128 0x4
	.long	.LASF473
	.byte	0x18
	.byte	0xf
	.byte	0x16
	.long	0x13fe
	.uleb128 0x8
	.long	.LASF474
	.byte	0xf
	.byte	0x18
	.long	0x2d
	.byte	0
	.uleb128 0x8
	.long	.LASF475
	.byte	0xf
	.byte	0x19
	.long	0x4e1
	.byte	0x8
	.uleb128 0x8
	.long	.LASF476
	.byte	0xf
	.byte	0x1a
	.long	0x13e
	.byte	0xc
	.uleb128 0x8
	.long	.LASF477
	.byte	0xf
	.byte	0x1b
	.long	0x13fe
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x13c1
	.uleb128 0x4
	.long	.LASF478
	.byte	0x20
	.byte	0xf
	.byte	0x23
	.long	0x1441
	.uleb128 0x8
	.long	.LASF326
	.byte	0xf
	.byte	0x26
	.long	0x2d
	.byte	0
	.uleb128 0x8
	.long	.LASF479
	.byte	0xf
	.byte	0x26
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF480
	.byte	0xf
	.byte	0x27
	.long	0x123
	.byte	0x10
	.uleb128 0x8
	.long	.LASF477
	.byte	0xf
	.byte	0x28
	.long	0x1441
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1404
	.uleb128 0x4
	.long	.LASF481
	.byte	0x58
	.byte	0xf
	.byte	0x35
	.long	0x14f0
	.uleb128 0x8
	.long	.LASF482
	.byte	0xf
	.byte	0x39
	.long	0x13e
	.byte	0
	.uleb128 0x8
	.long	.LASF483
	.byte	0xf
	.byte	0x3c
	.long	0x13e
	.byte	0x4
	.uleb128 0x8
	.long	.LASF484
	.byte	0xf
	.byte	0x43
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF485
	.byte	0xf
	.byte	0x44
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF480
	.byte	0xf
	.byte	0x49
	.long	0x123
	.byte	0x18
	.uleb128 0x8
	.long	.LASF478
	.byte	0xf
	.byte	0x4f
	.long	0x1441
	.byte	0x20
	.uleb128 0x8
	.long	.LASF486
	.byte	0xf
	.byte	0x53
	.long	0x13e
	.byte	0x28
	.uleb128 0x8
	.long	.LASF487
	.byte	0xf
	.byte	0x57
	.long	0x13e
	.byte	0x2c
	.uleb128 0x8
	.long	.LASF488
	.byte	0xf
	.byte	0x58
	.long	0x4c2
	.byte	0x30
	.uleb128 0x8
	.long	.LASF489
	.byte	0xf
	.byte	0x5e
	.long	0x13e
	.byte	0x38
	.uleb128 0x8
	.long	.LASF466
	.byte	0xf
	.byte	0x63
	.long	0x13ab
	.byte	0x40
	.uleb128 0x8
	.long	.LASF490
	.byte	0xf
	.byte	0x67
	.long	0x14f0
	.byte	0x48
	.uleb128 0x8
	.long	.LASF467
	.byte	0xf
	.byte	0x6b
	.long	0xec9
	.byte	0x50
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x123
	.uleb128 0x4
	.long	.LASF491
	.byte	0x30
	.byte	0xf
	.byte	0x77
	.long	0x1557
	.uleb128 0x8
	.long	.LASF492
	.byte	0xf
	.byte	0x7b
	.long	0x13e
	.byte	0
	.uleb128 0x8
	.long	.LASF493
	.byte	0xf
	.byte	0x8c
	.long	0x13e
	.byte	0x4
	.uleb128 0x8
	.long	.LASF494
	.byte	0xf
	.byte	0x92
	.long	0x13e
	.byte	0x8
	.uleb128 0x8
	.long	.LASF495
	.byte	0xf
	.byte	0x97
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF496
	.byte	0xf
	.byte	0x9a
	.long	0x2d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF497
	.byte	0xf
	.byte	0x9d
	.long	0x2d
	.byte	0x20
	.uleb128 0x8
	.long	.LASF498
	.byte	0xf
	.byte	0xa0
	.long	0x2d
	.byte	0x28
	.byte	0
	.uleb128 0x1d
	.long	.LASF499
	.value	0x1b0
	.byte	0xf
	.byte	0xae
	.long	0x19d7
	.uleb128 0x6
	.string	"eh"
	.byte	0xf
	.byte	0xb0
	.long	0x19dc
	.byte	0
	.uleb128 0x8
	.long	.LASF500
	.byte	0xf
	.byte	0xb1
	.long	0x19e7
	.byte	0x8
	.uleb128 0x8
	.long	.LASF310
	.byte	0xf
	.byte	0xb2
	.long	0x19ed
	.byte	0x10
	.uleb128 0x8
	.long	.LASF501
	.byte	0xf
	.byte	0xb3
	.long	0x19f3
	.byte	0x18
	.uleb128 0x8
	.long	.LASF502
	.byte	0xf
	.byte	0xb4
	.long	0x19fe
	.byte	0x20
	.uleb128 0x8
	.long	.LASF443
	.byte	0xf
	.byte	0xb9
	.long	0x4c2
	.byte	0x28
	.uleb128 0x8
	.long	.LASF503
	.byte	0xf
	.byte	0xbc
	.long	0x123
	.byte	0x30
	.uleb128 0x8
	.long	.LASF504
	.byte	0xf
	.byte	0xbf
	.long	0x1a04
	.byte	0x38
	.uleb128 0x8
	.long	.LASF505
	.byte	0xf
	.byte	0xc4
	.long	0x13e
	.byte	0x40
	.uleb128 0x8
	.long	.LASF506
	.byte	0xf
	.byte	0xc9
	.long	0x13e
	.byte	0x44
	.uleb128 0x8
	.long	.LASF507
	.byte	0xf
	.byte	0xce
	.long	0x13e
	.byte	0x48
	.uleb128 0x8
	.long	.LASF508
	.byte	0xf
	.byte	0xd2
	.long	0x13e
	.byte	0x4c
	.uleb128 0x8
	.long	.LASF509
	.byte	0xf
	.byte	0xd6
	.long	0x2d
	.byte	0x50
	.uleb128 0x8
	.long	.LASF510
	.byte	0xf
	.byte	0xda
	.long	0x25f
	.byte	0x58
	.uleb128 0x8
	.long	.LASF511
	.byte	0xf
	.byte	0xe0
	.long	0x2d
	.byte	0x78
	.uleb128 0x8
	.long	.LASF512
	.byte	0xf
	.byte	0xe3
	.long	0x2d
	.byte	0x80
	.uleb128 0x8
	.long	.LASF513
	.byte	0xf
	.byte	0xe7
	.long	0x4c2
	.byte	0x88
	.uleb128 0x8
	.long	.LASF514
	.byte	0xf
	.byte	0xeb
	.long	0x1a0f
	.byte	0x90
	.uleb128 0x8
	.long	.LASF515
	.byte	0xf
	.byte	0xee
	.long	0x13e
	.byte	0x98
	.uleb128 0x8
	.long	.LASF516
	.byte	0xf
	.byte	0xf3
	.long	0x123
	.byte	0xa0
	.uleb128 0x8
	.long	.LASF517
	.byte	0xf
	.byte	0xf9
	.long	0x2d
	.byte	0xa8
	.uleb128 0x8
	.long	.LASF518
	.byte	0xf
	.byte	0xfd
	.long	0x2d
	.byte	0xb0
	.uleb128 0x10
	.long	.LASF519
	.byte	0xf
	.value	0x102
	.long	0x2d
	.byte	0xb8
	.uleb128 0x10
	.long	.LASF520
	.byte	0xf
	.value	0x108
	.long	0x2d
	.byte	0xc0
	.uleb128 0x10
	.long	.LASF521
	.byte	0xf
	.value	0x10d
	.long	0x2d
	.byte	0xc8
	.uleb128 0x10
	.long	.LASF522
	.byte	0xf
	.value	0x111
	.long	0x2d
	.byte	0xd0
	.uleb128 0x10
	.long	.LASF523
	.byte	0xf
	.value	0x115
	.long	0x2d
	.byte	0xd8
	.uleb128 0x10
	.long	.LASF524
	.byte	0xf
	.value	0x118
	.long	0x123
	.byte	0xe0
	.uleb128 0x10
	.long	.LASF525
	.byte	0xf
	.value	0x11c
	.long	0x2d
	.byte	0xe8
	.uleb128 0x10
	.long	.LASF526
	.byte	0xf
	.value	0x11f
	.long	0x2d
	.byte	0xf0
	.uleb128 0x10
	.long	.LASF527
	.byte	0xf
	.value	0x125
	.long	0x2d
	.byte	0xf8
	.uleb128 0x1f
	.long	.LASF528
	.byte	0xf
	.value	0x12a
	.long	0x2d
	.value	0x100
	.uleb128 0x1f
	.long	.LASF529
	.byte	0xf
	.value	0x12f
	.long	0x274
	.value	0x108
	.uleb128 0x1f
	.long	.LASF530
	.byte	0xf
	.value	0x134
	.long	0x123
	.value	0x110
	.uleb128 0x1f
	.long	.LASF531
	.byte	0xf
	.value	0x13d
	.long	0x123
	.value	0x118
	.uleb128 0x1f
	.long	.LASF532
	.byte	0xf
	.value	0x140
	.long	0x2d
	.value	0x120
	.uleb128 0x1f
	.long	.LASF533
	.byte	0xf
	.value	0x144
	.long	0x2d
	.value	0x128
	.uleb128 0x1f
	.long	.LASF534
	.byte	0xf
	.value	0x148
	.long	0x26b
	.value	0x130
	.uleb128 0x1f
	.long	.LASF535
	.byte	0xf
	.value	0x14e
	.long	0xec9
	.value	0x138
	.uleb128 0x1f
	.long	.LASF536
	.byte	0xf
	.value	0x151
	.long	0x1a1a
	.value	0x140
	.uleb128 0x1f
	.long	.LASF537
	.byte	0xf
	.value	0x154
	.long	0x13e
	.value	0x148
	.uleb128 0x1f
	.long	.LASF538
	.byte	0xf
	.value	0x157
	.long	0x13e
	.value	0x14c
	.uleb128 0x1f
	.long	.LASF539
	.byte	0xf
	.value	0x15d
	.long	0x13e
	.value	0x150
	.uleb128 0x1f
	.long	.LASF540
	.byte	0xf
	.value	0x161
	.long	0x13fe
	.value	0x158
	.uleb128 0x1f
	.long	.LASF541
	.byte	0xf
	.value	0x164
	.long	0x13e
	.value	0x160
	.uleb128 0x1f
	.long	.LASF542
	.byte	0xf
	.value	0x165
	.long	0x13e
	.value	0x164
	.uleb128 0x1f
	.long	.LASF543
	.byte	0xf
	.value	0x167
	.long	0x272
	.value	0x168
	.uleb128 0x1f
	.long	.LASF544
	.byte	0xf
	.value	0x168
	.long	0x123
	.value	0x170
	.uleb128 0x1f
	.long	.LASF545
	.byte	0xf
	.value	0x16b
	.long	0x2d
	.value	0x178
	.uleb128 0x1f
	.long	.LASF546
	.byte	0xf
	.value	0x16d
	.long	0x13e
	.value	0x180
	.uleb128 0x1f
	.long	.LASF547
	.byte	0xf
	.value	0x170
	.long	0x13e
	.value	0x184
	.uleb128 0x1f
	.long	.LASF548
	.byte	0xf
	.value	0x175
	.long	0x1a25
	.value	0x188
	.uleb128 0x1f
	.long	.LASF549
	.byte	0xf
	.value	0x177
	.long	0x13e
	.value	0x190
	.uleb128 0x1f
	.long	.LASF550
	.byte	0xf
	.value	0x179
	.long	0x13e
	.value	0x194
	.uleb128 0x1f
	.long	.LASF551
	.byte	0xf
	.value	0x17c
	.long	0x1a30
	.value	0x198
	.uleb128 0x1f
	.long	.LASF552
	.byte	0xf
	.value	0x182
	.long	0x2d
	.value	0x1a0
	.uleb128 0x20
	.long	.LASF553
	.byte	0xf
	.value	0x188
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF554
	.byte	0xf
	.value	0x18c
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF555
	.byte	0xf
	.value	0x18f
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF556
	.byte	0xf
	.value	0x192
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF557
	.byte	0xf
	.value	0x195
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF558
	.byte	0xf
	.value	0x198
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF559
	.byte	0xf
	.value	0x19c
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF560
	.byte	0xf
	.value	0x19f
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF561
	.byte	0xf
	.value	0x1a3
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF562
	.byte	0xf
	.value	0x1a7
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF563
	.byte	0xf
	.value	0x1aa
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF564
	.byte	0xf
	.value	0x1ad
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF565
	.byte	0xf
	.value	0x1b2
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF566
	.byte	0xf
	.value	0x1b6
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF567
	.byte	0xf
	.value	0x1b9
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF568
	.byte	0xf
	.value	0x1bd
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF569
	.byte	0xf
	.value	0x1c1
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF570
	.byte	0xf
	.value	0x1c5
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF571
	.byte	0xf
	.value	0x1cb
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF572
	.byte	0xf
	.value	0x1d4
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF573
	.byte	0xf
	.value	0x1d7
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF574
	.byte	0xf
	.value	0x1da
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF575
	.byte	0xf
	.value	0x1dd
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.value	0x1a8
	.uleb128 0x20
	.long	.LASF576
	.byte	0xf
	.value	0x1e0
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.value	0x1a8
	.byte	0
	.uleb128 0x1c
	.long	.LASF577
	.uleb128 0x3
	.byte	0x8
	.long	0x19d7
	.uleb128 0x1c
	.long	.LASF578
	.uleb128 0x3
	.byte	0x8
	.long	0x19e2
	.uleb128 0x3
	.byte	0x8
	.long	0x14f6
	.uleb128 0x3
	.byte	0x8
	.long	0x1447
	.uleb128 0x1c
	.long	.LASF579
	.uleb128 0x3
	.byte	0x8
	.long	0x19f9
	.uleb128 0x3
	.byte	0x8
	.long	0x1557
	.uleb128 0x1c
	.long	.LASF580
	.uleb128 0x3
	.byte	0x8
	.long	0x1a0a
	.uleb128 0x1c
	.long	.LASF581
	.uleb128 0x3
	.byte	0x8
	.long	0x1a15
	.uleb128 0x1c
	.long	.LASF582
	.uleb128 0x3
	.byte	0x8
	.long	0x1a20
	.uleb128 0x1c
	.long	.LASF583
	.uleb128 0x3
	.byte	0x8
	.long	0x1a2b
	.uleb128 0xd
	.long	.LASF584
	.byte	0x4
	.byte	0x10
	.value	0x100
	.long	0x1a62
	.uleb128 0xe
	.long	.LASF585
	.sleb128 0
	.uleb128 0xe
	.long	.LASF586
	.sleb128 1
	.uleb128 0xe
	.long	.LASF587
	.sleb128 2
	.uleb128 0xe
	.long	.LASF588
	.sleb128 3
	.uleb128 0xe
	.long	.LASF589
	.sleb128 4
	.byte	0
	.uleb128 0x4
	.long	.LASF590
	.byte	0x28
	.byte	0xa
	.byte	0x2b
	.long	0x1a9f
	.uleb128 0x8
	.long	.LASF477
	.byte	0xa
	.byte	0x2d
	.long	0x1a9f
	.byte	0
	.uleb128 0x8
	.long	.LASF591
	.byte	0xa
	.byte	0x2e
	.long	0x1a9f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF328
	.byte	0xa
	.byte	0x2f
	.long	0x26b
	.byte	0x10
	.uleb128 0x8
	.long	.LASF592
	.byte	0xa
	.byte	0x30
	.long	0x1aa5
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1a62
	.uleb128 0x14
	.long	0x286
	.long	0x1ab5
	.uleb128 0x15
	.long	0x145
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.long	.LASF593
	.byte	0xa
	.byte	0x31
	.long	0x1a62
	.uleb128 0x3
	.byte	0x8
	.long	0x1ab5
	.uleb128 0x7
	.long	.LASF420
	.byte	0xa
	.byte	0x39
	.long	0xc4e
	.uleb128 0x4
	.long	.LASF594
	.byte	0x18
	.byte	0x11
	.byte	0x1f
	.long	0x1b0e
	.uleb128 0x8
	.long	.LASF595
	.byte	0x11
	.byte	0x21
	.long	0x26b
	.byte	0
	.uleb128 0x8
	.long	.LASF312
	.byte	0x11
	.byte	0x22
	.long	0x26b
	.byte	0x4
	.uleb128 0x8
	.long	.LASF596
	.byte	0x11
	.byte	0x23
	.long	0x26b
	.byte	0x8
	.uleb128 0x8
	.long	.LASF597
	.byte	0x11
	.byte	0x24
	.long	0x108f
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.long	.LASF598
	.byte	0x11
	.byte	0x25
	.long	0x1b19
	.uleb128 0x3
	.byte	0x8
	.long	0x1ad1
	.uleb128 0x7
	.long	.LASF599
	.byte	0xb
	.byte	0x21
	.long	0x1ac6
	.uleb128 0x7
	.long	.LASF600
	.byte	0xb
	.byte	0x74
	.long	0x274
	.uleb128 0x4
	.long	.LASF601
	.byte	0x40
	.byte	0xb
	.byte	0x77
	.long	0x1bae
	.uleb128 0x8
	.long	.LASF602
	.byte	0xb
	.byte	0x79
	.long	0x1bae
	.byte	0
	.uleb128 0x8
	.long	.LASF603
	.byte	0xb
	.byte	0x79
	.long	0x1bae
	.byte	0x8
	.uleb128 0x6
	.string	"src"
	.byte	0xb
	.byte	0x7c
	.long	0xd21
	.byte	0x10
	.uleb128 0x8
	.long	.LASF447
	.byte	0xb
	.byte	0x7c
	.long	0xd21
	.byte	0x18
	.uleb128 0x8
	.long	.LASF604
	.byte	0xb
	.byte	0x7f
	.long	0x2d
	.byte	0x20
	.uleb128 0x6
	.string	"aux"
	.byte	0xb
	.byte	0x82
	.long	0x272
	.byte	0x28
	.uleb128 0x8
	.long	.LASF343
	.byte	0xb
	.byte	0x84
	.long	0x13e
	.byte	0x30
	.uleb128 0x8
	.long	.LASF605
	.byte	0xb
	.byte	0x85
	.long	0x13e
	.byte	0x34
	.uleb128 0x8
	.long	.LASF341
	.byte	0xb
	.byte	0x86
	.long	0x1b2a
	.byte	0x38
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1b35
	.uleb128 0x7
	.long	.LASF606
	.byte	0xb
	.byte	0x88
	.long	0x1bae
	.uleb128 0x7
	.long	.LASF435
	.byte	0xb
	.byte	0xdb
	.long	0xd21
	.uleb128 0xf
	.long	.LASF607
	.byte	0xf8
	.byte	0xb
	.value	0x148
	.long	0x1d85
	.uleb128 0x21
	.string	"num"
	.byte	0xb
	.value	0x14b
	.long	0x13e
	.byte	0
	.uleb128 0x10
	.long	.LASF608
	.byte	0xb
	.value	0x14e
	.long	0x1bbf
	.byte	0x8
	.uleb128 0x10
	.long	.LASF609
	.byte	0xb
	.value	0x151
	.long	0x1bbf
	.byte	0x10
	.uleb128 0x10
	.long	.LASF610
	.byte	0xb
	.value	0x154
	.long	0x1bbf
	.byte	0x18
	.uleb128 0x10
	.long	.LASF611
	.byte	0xb
	.value	0x159
	.long	0x1d85
	.byte	0x20
	.uleb128 0x10
	.long	.LASF612
	.byte	0xb
	.value	0x15c
	.long	0x13e
	.byte	0x28
	.uleb128 0x10
	.long	.LASF326
	.byte	0xb
	.value	0x160
	.long	0x1bbf
	.byte	0x30
	.uleb128 0x10
	.long	.LASF479
	.byte	0xb
	.value	0x164
	.long	0x1bbf
	.byte	0x38
	.uleb128 0x10
	.long	.LASF613
	.byte	0xb
	.value	0x167
	.long	0x1b0e
	.byte	0x40
	.uleb128 0x10
	.long	.LASF614
	.byte	0xb
	.value	0x16a
	.long	0x13e
	.byte	0x48
	.uleb128 0x10
	.long	.LASF615
	.byte	0xb
	.value	0x16d
	.long	0x1d85
	.byte	0x50
	.uleb128 0x10
	.long	.LASF616
	.byte	0xb
	.value	0x170
	.long	0x13e
	.byte	0x58
	.uleb128 0x10
	.long	.LASF617
	.byte	0xb
	.value	0x173
	.long	0x1d85
	.byte	0x60
	.uleb128 0x10
	.long	.LASF618
	.byte	0xb
	.value	0x176
	.long	0x13e
	.byte	0x68
	.uleb128 0x10
	.long	.LASF619
	.byte	0xb
	.value	0x179
	.long	0x1b0e
	.byte	0x70
	.uleb128 0x10
	.long	.LASF620
	.byte	0xb
	.value	0x17c
	.long	0x13e
	.byte	0x78
	.uleb128 0x10
	.long	.LASF621
	.byte	0xb
	.value	0x180
	.long	0x13e
	.byte	0x7c
	.uleb128 0x10
	.long	.LASF504
	.byte	0xb
	.value	0x183
	.long	0x1d8b
	.byte	0x80
	.uleb128 0x10
	.long	.LASF622
	.byte	0xb
	.value	0x186
	.long	0x1d8b
	.byte	0x88
	.uleb128 0x10
	.long	.LASF477
	.byte	0xb
	.value	0x189
	.long	0x1d8b
	.byte	0x90
	.uleb128 0x10
	.long	.LASF623
	.byte	0xb
	.value	0x18c
	.long	0x13e
	.byte	0x98
	.uleb128 0x10
	.long	.LASF624
	.byte	0xb
	.value	0x18f
	.long	0x13e
	.byte	0x9c
	.uleb128 0x21
	.string	"aux"
	.byte	0xb
	.value	0x192
	.long	0x272
	.byte	0xa0
	.uleb128 0x10
	.long	.LASF625
	.byte	0xb
	.value	0x198
	.long	0x2d
	.byte	0xa8
	.uleb128 0x10
	.long	.LASF626
	.byte	0xb
	.value	0x19c
	.long	0x2d
	.byte	0xb0
	.uleb128 0x10
	.long	.LASF627
	.byte	0xb
	.value	0x19f
	.long	0x2d
	.byte	0xb8
	.uleb128 0x10
	.long	.LASF628
	.byte	0xb
	.value	0x1a2
	.long	0x2d
	.byte	0xc0
	.uleb128 0x21
	.string	"end"
	.byte	0xb
	.value	0x1a5
	.long	0x2d
	.byte	0xc8
	.uleb128 0x21
	.string	"top"
	.byte	0xb
	.value	0x1a9
	.long	0x2d
	.byte	0xd0
	.uleb128 0x10
	.long	.LASF629
	.byte	0xb
	.value	0x1ac
	.long	0x2d
	.byte	0xd8
	.uleb128 0x10
	.long	.LASF630
	.byte	0xb
	.value	0x1af
	.long	0x2d
	.byte	0xe0
	.uleb128 0x10
	.long	.LASF631
	.byte	0xb
	.value	0x1ba
	.long	0x2d
	.byte	0xe8
	.uleb128 0x10
	.long	.LASF632
	.byte	0xb
	.value	0x1be
	.long	0x13e
	.byte	0xf0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1bb4
	.uleb128 0x3
	.byte	0x8
	.long	0x1bca
	.uleb128 0x16
	.long	.LASF633
	.byte	0x4
	.byte	0x12
	.byte	0x42
	.long	0x1daa
	.uleb128 0xe
	.long	.LASF634
	.sleb128 0
	.uleb128 0xe
	.long	.LASF635
	.sleb128 1
	.byte	0
	.uleb128 0x4
	.long	.LASF636
	.byte	0xa8
	.byte	0x12
	.byte	0x4c
	.long	0x1f67
	.uleb128 0x8
	.long	.LASF637
	.byte	0x12
	.byte	0x4e
	.long	0x2d
	.byte	0
	.uleb128 0x8
	.long	.LASF638
	.byte	0x12
	.byte	0x4f
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF639
	.byte	0x12
	.byte	0x51
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF640
	.byte	0x12
	.byte	0x53
	.long	0x1d91
	.byte	0x18
	.uleb128 0x8
	.long	.LASF641
	.byte	0x12
	.byte	0x54
	.long	0x2d
	.byte	0x20
	.uleb128 0x8
	.long	.LASF642
	.byte	0x12
	.byte	0x58
	.long	0xec9
	.byte	0x28
	.uleb128 0x8
	.long	.LASF1
	.byte	0x12
	.byte	0x5c
	.long	0x4e1
	.byte	0x30
	.uleb128 0x6
	.string	"mem"
	.byte	0x12
	.byte	0x5d
	.long	0x2d
	.byte	0x38
	.uleb128 0x8
	.long	.LASF643
	.byte	0x12
	.byte	0x5e
	.long	0x2d
	.byte	0x40
	.uleb128 0x8
	.long	.LASF644
	.byte	0x12
	.byte	0x5f
	.long	0x2d
	.byte	0x48
	.uleb128 0x8
	.long	.LASF645
	.byte	0x12
	.byte	0x60
	.long	0x13e
	.byte	0x50
	.uleb128 0x8
	.long	.LASF646
	.byte	0x12
	.byte	0x61
	.long	0x2d
	.byte	0x58
	.uleb128 0x8
	.long	.LASF647
	.byte	0x12
	.byte	0x65
	.long	0x26b
	.byte	0x60
	.uleb128 0x5
	.long	.LASF648
	.byte	0x12
	.byte	0x68
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x64
	.uleb128 0x5
	.long	.LASF649
	.byte	0x12
	.byte	0x6d
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x64
	.uleb128 0x5
	.long	.LASF650
	.byte	0x12
	.byte	0x73
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x64
	.uleb128 0x5
	.long	.LASF651
	.byte	0x12
	.byte	0x74
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x64
	.uleb128 0x5
	.long	.LASF652
	.byte	0x12
	.byte	0x76
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x64
	.uleb128 0x5
	.long	.LASF653
	.byte	0x12
	.byte	0x77
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x64
	.uleb128 0x5
	.long	.LASF654
	.byte	0x12
	.byte	0x7a
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x64
	.uleb128 0x5
	.long	.LASF655
	.byte	0x12
	.byte	0x7e
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x64
	.uleb128 0x5
	.long	.LASF656
	.byte	0x12
	.byte	0x81
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x64
	.uleb128 0x5
	.long	.LASF657
	.byte	0x12
	.byte	0x83
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x64
	.uleb128 0x5
	.long	.LASF623
	.byte	0x12
	.byte	0x85
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x64
	.uleb128 0x5
	.long	.LASF658
	.byte	0x12
	.byte	0x86
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x64
	.uleb128 0x8
	.long	.LASF659
	.byte	0x12
	.byte	0x87
	.long	0x13e
	.byte	0x68
	.uleb128 0x8
	.long	.LASF660
	.byte	0x12
	.byte	0x88
	.long	0x2d
	.byte	0x70
	.uleb128 0x8
	.long	.LASF661
	.byte	0x12
	.byte	0x8c
	.long	0x2d
	.byte	0x78
	.uleb128 0x8
	.long	.LASF662
	.byte	0x12
	.byte	0x8e
	.long	0x1f67
	.byte	0x80
	.uleb128 0x8
	.long	.LASF663
	.byte	0x12
	.byte	0x92
	.long	0x1f67
	.byte	0x88
	.uleb128 0x8
	.long	.LASF664
	.byte	0x12
	.byte	0x95
	.long	0x274
	.byte	0x90
	.uleb128 0x8
	.long	.LASF665
	.byte	0x12
	.byte	0x99
	.long	0x1f67
	.byte	0x98
	.uleb128 0x8
	.long	.LASF666
	.byte	0x12
	.byte	0x9d
	.long	0x2d
	.byte	0xa0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1daa
	.uleb128 0x4
	.long	.LASF667
	.byte	0x60
	.byte	0x12
	.byte	0xa4
	.long	0x2055
	.uleb128 0x8
	.long	.LASF46
	.byte	0x12
	.byte	0xa6
	.long	0x26b
	.byte	0
	.uleb128 0x8
	.long	.LASF668
	.byte	0x12
	.byte	0xa7
	.long	0x13e
	.byte	0x4
	.uleb128 0x6
	.string	"biv"
	.byte	0x12
	.byte	0xa8
	.long	0x1f67
	.byte	0x8
	.uleb128 0x8
	.long	.LASF669
	.byte	0x12
	.byte	0xa9
	.long	0x13e
	.byte	0x10
	.uleb128 0x6
	.string	"giv"
	.byte	0x12
	.byte	0xac
	.long	0x1f67
	.byte	0x18
	.uleb128 0x8
	.long	.LASF670
	.byte	0x12
	.byte	0xae
	.long	0x13e
	.byte	0x20
	.uleb128 0x8
	.long	.LASF671
	.byte	0x12
	.byte	0xaf
	.long	0x2d
	.byte	0x28
	.uleb128 0x8
	.long	.LASF672
	.byte	0x12
	.byte	0xb0
	.long	0x2d
	.byte	0x30
	.uleb128 0x8
	.long	.LASF646
	.byte	0x12
	.byte	0xb1
	.long	0x2d
	.byte	0x38
	.uleb128 0x8
	.long	.LASF477
	.byte	0x12
	.byte	0xb2
	.long	0x2055
	.byte	0x40
	.uleb128 0x8
	.long	.LASF673
	.byte	0x12
	.byte	0xb3
	.long	0x2d
	.byte	0x48
	.uleb128 0x8
	.long	.LASF674
	.byte	0x12
	.byte	0xb4
	.long	0x2d
	.byte	0x50
	.uleb128 0x5
	.long	.LASF675
	.byte	0x12
	.byte	0xb5
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x58
	.uleb128 0x5
	.long	.LASF676
	.byte	0x12
	.byte	0xb6
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x58
	.uleb128 0x5
	.long	.LASF677
	.byte	0x12
	.byte	0xb8
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x58
	.uleb128 0x5
	.long	.LASF678
	.byte	0x12
	.byte	0xba
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x58
	.uleb128 0x5
	.long	.LASF679
	.byte	0x12
	.byte	0xbc
	.long	0x26b
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x58
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x1f6d
	.uleb128 0x16
	.long	.LASF680
	.byte	0x4
	.byte	0x12
	.byte	0xc2
	.long	0x2080
	.uleb128 0xe
	.long	.LASF681
	.sleb128 0
	.uleb128 0xe
	.long	.LASF682
	.sleb128 1
	.uleb128 0xe
	.long	.LASF683
	.sleb128 2
	.uleb128 0xe
	.long	.LASF684
	.sleb128 3
	.byte	0
	.uleb128 0x22
	.byte	0x8
	.byte	0x12
	.byte	0xd0
	.long	0x209f
	.uleb128 0x1a
	.long	.LASF685
	.byte	0x12
	.byte	0xd2
	.long	0x2055
	.uleb128 0x1a
	.long	.LASF686
	.byte	0x12
	.byte	0xd3
	.long	0x1f67
	.byte	0
	.uleb128 0x23
	.string	"iv"
	.byte	0x10
	.byte	0x12
	.byte	0xcd
	.long	0x20c2
	.uleb128 0x8
	.long	.LASF687
	.byte	0x12
	.byte	0xcf
	.long	0x205b
	.byte	0
	.uleb128 0x6
	.string	"iv"
	.byte	0x12
	.byte	0xd4
	.long	0x2080
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.long	.LASF688
	.byte	0x18
	.byte	0x12
	.byte	0xdd
	.long	0x20f3
	.uleb128 0x8
	.long	.LASF689
	.byte	0x12
	.byte	0xe1
	.long	0x20f3
	.byte	0
	.uleb128 0x8
	.long	.LASF690
	.byte	0x12
	.byte	0xe4
	.long	0x26b
	.byte	0x8
	.uleb128 0x8
	.long	.LASF691
	.byte	0x12
	.byte	0xe8
	.long	0x2055
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x209f
	.uleb128 0x4
	.long	.LASF692
	.byte	0x18
	.byte	0x12
	.byte	0xec
	.long	0x212a
	.uleb128 0x6
	.string	"mem"
	.byte	0x12
	.byte	0xee
	.long	0x2d
	.byte	0
	.uleb128 0x6
	.string	"reg"
	.byte	0x12
	.byte	0xef
	.long	0x2d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF693
	.byte	0x12
	.byte	0xf0
	.long	0x13e
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.long	.LASF692
	.byte	0x12
	.byte	0xf1
	.long	0x20f9
	.uleb128 0x4
	.long	.LASF694
	.byte	0x18
	.byte	0x12
	.byte	0xf5
	.long	0x2183
	.uleb128 0x10
	.long	.LASF695
	.byte	0x12
	.value	0x101
	.long	0x13e
	.byte	0
	.uleb128 0x10
	.long	.LASF696
	.byte	0x12
	.value	0x106
	.long	0x13e
	.byte	0x4
	.uleb128 0x10
	.long	.LASF697
	.byte	0x12
	.value	0x10a
	.long	0x2d
	.byte	0x8
	.uleb128 0x10
	.long	.LASF698
	.byte	0x12
	.value	0x10e
	.long	0x2c5
	.byte	0x10
	.uleb128 0x10
	.long	.LASF699
	.byte	0x12
	.value	0x112
	.long	0x2c5
	.byte	0x11
	.byte	0
	.uleb128 0xf
	.long	.LASF700
	.byte	0x18
	.byte	0x12
	.value	0x116
	.long	0x21c5
	.uleb128 0x21
	.string	"num"
	.byte	0x12
	.value	0x118
	.long	0x13e
	.byte	0
	.uleb128 0x10
	.long	.LASF312
	.byte	0x12
	.value	0x119
	.long	0x13e
	.byte	0x4
	.uleb128 0x10
	.long	.LASF701
	.byte	0x12
	.value	0x11a
	.long	0x21c5
	.byte	0x8
	.uleb128 0x10
	.long	.LASF702
	.byte	0x12
	.value	0x11b
	.long	0x13e
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x2135
	.uleb128 0xf
	.long	.LASF703
	.byte	0x10
	.byte	0x12
	.value	0x120
	.long	0x21f3
	.uleb128 0x10
	.long	.LASF330
	.byte	0x12
	.value	0x123
	.long	0x21f8
	.byte	0
	.uleb128 0x10
	.long	.LASF479
	.byte	0x12
	.value	0x125
	.long	0x21f8
	.byte	0x8
	.byte	0
	.uleb128 0x1c
	.long	.LASF704
	.uleb128 0x3
	.byte	0x8
	.long	0x21f3
	.uleb128 0xf
	.long	.LASF705
	.byte	0xf0
	.byte	0x12
	.value	0x12b
	.long	0x239e
	.uleb128 0x10
	.long	.LASF706
	.byte	0x12
	.value	0x12e
	.long	0x13e
	.byte	0
	.uleb128 0x10
	.long	.LASF707
	.byte	0x12
	.value	0x130
	.long	0x13e
	.byte	0x4
	.uleb128 0x10
	.long	.LASF708
	.byte	0x12
	.value	0x132
	.long	0x13e
	.byte	0x8
	.uleb128 0x10
	.long	.LASF709
	.byte	0x12
	.value	0x135
	.long	0x13e
	.byte	0xc
	.uleb128 0x10
	.long	.LASF710
	.byte	0x12
	.value	0x137
	.long	0x13e
	.byte	0x10
	.uleb128 0x10
	.long	.LASF711
	.byte	0x12
	.value	0x13a
	.long	0x13e
	.byte	0x14
	.uleb128 0x10
	.long	.LASF712
	.byte	0x12
	.value	0x13c
	.long	0x13e
	.byte	0x18
	.uleb128 0x10
	.long	.LASF671
	.byte	0x12
	.value	0x13e
	.long	0x2d
	.byte	0x20
	.uleb128 0x10
	.long	.LASF713
	.byte	0x12
	.value	0x140
	.long	0x2d
	.byte	0x28
	.uleb128 0x10
	.long	.LASF646
	.byte	0x12
	.value	0x142
	.long	0x2d
	.byte	0x30
	.uleb128 0x10
	.long	.LASF714
	.byte	0x12
	.value	0x145
	.long	0x2d
	.byte	0x38
	.uleb128 0x10
	.long	.LASF715
	.byte	0x12
	.value	0x148
	.long	0x2d
	.byte	0x40
	.uleb128 0x10
	.long	.LASF716
	.byte	0x12
	.value	0x14a
	.long	0x2d
	.byte	0x48
	.uleb128 0x10
	.long	.LASF717
	.byte	0x12
	.value	0x14c
	.long	0x2d
	.byte	0x50
	.uleb128 0x10
	.long	.LASF718
	.byte	0x12
	.value	0x14d
	.long	0x69f
	.byte	0x58
	.uleb128 0x10
	.long	.LASF719
	.byte	0x12
	.value	0x153
	.long	0x286
	.byte	0x60
	.uleb128 0x10
	.long	.LASF720
	.byte	0x12
	.value	0x155
	.long	0x26b
	.byte	0x68
	.uleb128 0x10
	.long	.LASF721
	.byte	0x12
	.value	0x156
	.long	0x13e
	.byte	0x6c
	.uleb128 0x21
	.string	"iv"
	.byte	0x12
	.value	0x158
	.long	0x2055
	.byte	0x70
	.uleb128 0x10
	.long	.LASF722
	.byte	0x12
	.value	0x15a
	.long	0x2d
	.byte	0x78
	.uleb128 0x10
	.long	.LASF723
	.byte	0x12
	.value	0x160
	.long	0x239e
	.byte	0x80
	.uleb128 0x10
	.long	.LASF724
	.byte	0x12
	.value	0x162
	.long	0x13e
	.byte	0x88
	.uleb128 0x10
	.long	.LASF725
	.byte	0x12
	.value	0x164
	.long	0x13e
	.byte	0x8c
	.uleb128 0x10
	.long	.LASF726
	.byte	0x12
	.value	0x169
	.long	0x13e
	.byte	0x90
	.uleb128 0x10
	.long	.LASF727
	.byte	0x12
	.value	0x16c
	.long	0x13e
	.byte	0x94
	.uleb128 0x10
	.long	.LASF728
	.byte	0x12
	.value	0x16e
	.long	0x13e
	.byte	0x98
	.uleb128 0x10
	.long	.LASF729
	.byte	0x12
	.value	0x170
	.long	0x2d
	.byte	0xa0
	.uleb128 0x10
	.long	.LASF730
	.byte	0x12
	.value	0x172
	.long	0x21cb
	.byte	0xa8
	.uleb128 0x10
	.long	.LASF689
	.byte	0x12
	.value	0x174
	.long	0x2183
	.byte	0xb8
	.uleb128 0x21
	.string	"ivs"
	.byte	0x12
	.value	0x176
	.long	0x20c2
	.byte	0xd0
	.uleb128 0x10
	.long	.LASF731
	.byte	0x12
	.value	0x178
	.long	0x13e
	.byte	0xe8
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x212a
	.uleb128 0x16
	.long	.LASF732
	.byte	0x4
	.byte	0x13
	.byte	0x17
	.long	0x2429
	.uleb128 0xe
	.long	.LASF733
	.sleb128 0
	.uleb128 0xe
	.long	.LASF734
	.sleb128 1
	.uleb128 0xe
	.long	.LASF735
	.sleb128 2
	.uleb128 0xe
	.long	.LASF736
	.sleb128 3
	.uleb128 0xe
	.long	.LASF737
	.sleb128 4
	.uleb128 0xe
	.long	.LASF738
	.sleb128 5
	.uleb128 0xe
	.long	.LASF739
	.sleb128 6
	.uleb128 0xe
	.long	.LASF740
	.sleb128 7
	.uleb128 0xe
	.long	.LASF741
	.sleb128 8
	.uleb128 0xe
	.long	.LASF742
	.sleb128 9
	.uleb128 0xe
	.long	.LASF743
	.sleb128 10
	.uleb128 0xe
	.long	.LASF744
	.sleb128 11
	.uleb128 0xe
	.long	.LASF745
	.sleb128 12
	.uleb128 0xe
	.long	.LASF746
	.sleb128 13
	.uleb128 0xe
	.long	.LASF747
	.sleb128 14
	.uleb128 0xe
	.long	.LASF748
	.sleb128 15
	.uleb128 0xe
	.long	.LASF749
	.sleb128 16
	.uleb128 0xe
	.long	.LASF750
	.sleb128 17
	.uleb128 0xe
	.long	.LASF751
	.sleb128 18
	.uleb128 0xe
	.long	.LASF752
	.sleb128 19
	.byte	0
	.uleb128 0x16
	.long	.LASF753
	.byte	0x4
	.byte	0x13
	.byte	0x1f
	.long	0x2442
	.uleb128 0xe
	.long	.LASF754
	.sleb128 0
	.uleb128 0xe
	.long	.LASF755
	.sleb128 1
	.byte	0
	.uleb128 0x4
	.long	.LASF756
	.byte	0x8
	.byte	0x1
	.byte	0xa0
	.long	0x2467
	.uleb128 0x8
	.long	.LASF757
	.byte	0x1
	.byte	0xa0
	.long	0x139
	.byte	0
	.uleb128 0x8
	.long	.LASF341
	.byte	0x1
	.byte	0xa0
	.long	0x13e
	.byte	0x4
	.byte	0
	.uleb128 0x16
	.long	.LASF758
	.byte	0x4
	.byte	0x1
	.byte	0xa5
	.long	0x2486
	.uleb128 0xe
	.long	.LASF759
	.sleb128 0
	.uleb128 0xe
	.long	.LASF760
	.sleb128 1
	.uleb128 0xe
	.long	.LASF761
	.sleb128 2
	.byte	0
	.uleb128 0x24
	.long	.LASF826
	.byte	0x1
	.byte	0xe9
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x292c
	.uleb128 0x25
	.long	.LASF607
	.byte	0x1
	.byte	0xea
	.long	0x1d8b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -392
	.uleb128 0x25
	.long	.LASF762
	.byte	0x1
	.byte	0xeb
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -396
	.uleb128 0x25
	.long	.LASF763
	.byte	0x1
	.byte	0xec
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -400
	.uleb128 0x26
	.long	.LASF705
	.byte	0x1
	.byte	0xee
	.long	0x292c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x27
	.string	"ivs"
	.byte	0x1
	.byte	0xef
	.long	0x2932
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.byte	0xf0
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -376
	.uleb128 0x27
	.string	"j"
	.byte	0x1
	.byte	0xf0
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -372
	.uleb128 0x27
	.string	"r"
	.byte	0x1
	.byte	0xf1
	.long	0x26b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -368
	.uleb128 0x26
	.long	.LASF764
	.byte	0x1
	.byte	0xf2
	.long	0x286
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x26
	.long	.LASF720
	.byte	0x1
	.byte	0xf3
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -364
	.uleb128 0x26
	.long	.LASF765
	.byte	0x1
	.byte	0xf4
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x26
	.long	.LASF766
	.byte	0x1
	.byte	0xf4
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x26
	.long	.LASF637
	.byte	0x1
	.byte	0xf5
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x26
	.long	.LASF767
	.byte	0x1
	.byte	0xf5
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.long	.LASF768
	.byte	0x1
	.byte	0xf5
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.string	"tem"
	.byte	0x1
	.byte	0xf5
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF769
	.byte	0x1
	.byte	0xf6
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -308
	.uleb128 0x26
	.long	.LASF458
	.byte	0x1
	.byte	0xf6
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x26
	.long	.LASF770
	.byte	0x1
	.byte	0xf7
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x27
	.string	"map"
	.byte	0x1
	.byte	0xf8
	.long	0x2938
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x26
	.long	.LASF771
	.byte	0x1
	.byte	0xf9
	.long	0x2bf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x26
	.long	.LASF772
	.byte	0x1
	.byte	0xfa
	.long	0x2bf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x26
	.long	.LASF773
	.byte	0x1
	.byte	0xfb
	.long	0x26b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x26
	.long	.LASF774
	.byte	0x1
	.byte	0xfc
	.long	0x26b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -292
	.uleb128 0x26
	.long	.LASF775
	.byte	0x1
	.byte	0xfd
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x26
	.long	.LASF776
	.byte	0x1
	.byte	0xfe
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x27
	.string	"bl"
	.byte	0x1
	.byte	0xff
	.long	0x2055
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x28
	.long	.LASF777
	.byte	0x1
	.value	0x100
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -360
	.uleb128 0x28
	.long	.LASF778
	.byte	0x1
	.value	0x101
	.long	0x2467
	.uleb128 0x3
	.byte	0x91
	.sleb128 -356
	.uleb128 0x28
	.long	.LASF779
	.byte	0x1
	.value	0x102
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x28
	.long	.LASF780
	.byte	0x1
	.value	0x103
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x28
	.long	.LASF781
	.byte	0x1
	.value	0x107
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x28
	.long	.LASF782
	.byte	0x1
	.value	0x108
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x28
	.long	.LASF783
	.byte	0x1
	.value	0x109
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x29
	.long	.LASF801
	.long	0x294e
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.11296
	.uleb128 0x2a
	.long	.LASF805
	.byte	0x1
	.value	0x544
	.quad	.L145
	.uleb128 0x2b
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x26f7
	.uleb128 0x28
	.long	.LASF784
	.byte	0x1
	.value	0x120
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x28
	.long	.LASF785
	.byte	0x1
	.value	0x121
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -348
	.byte	0
	.uleb128 0x2b
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.long	0x271d
	.uleb128 0x28
	.long	.LASF786
	.byte	0x1
	.value	0x164
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.byte	0
	.uleb128 0x2b
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.long	0x2795
	.uleb128 0x28
	.long	.LASF787
	.byte	0x1
	.value	0x2e7
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2c
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x2d
	.string	"pat"
	.byte	0x1
	.value	0x2f4
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x28
	.long	.LASF788
	.byte	0x1
	.value	0x2f5
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -300
	.uleb128 0x2d
	.string	"len"
	.byte	0x1
	.value	0x2f6
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x28
	.long	.LASF789
	.byte	0x1
	.value	0x2f7
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.byte	0
	.uleb128 0x2b
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.long	0x27cb
	.uleb128 0x28
	.long	.LASF790
	.byte	0x1
	.value	0x32b
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x28
	.long	.LASF791
	.byte	0x1
	.value	0x32c
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -340
	.byte	0
	.uleb128 0x2c
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x28
	.long	.LASF671
	.byte	0x1
	.value	0x37d
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x28
	.long	.LASF646
	.byte	0x1
	.value	0x37d
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x28
	.long	.LASF717
	.byte	0x1
	.value	0x37d
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x28
	.long	.LASF1
	.byte	0x1
	.value	0x37e
	.long	0x4e1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -380
	.uleb128 0x2c
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x28
	.long	.LASF792
	.byte	0x1
	.value	0x384
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x28
	.long	.LASF793
	.byte	0x1
	.value	0x385
	.long	0xec9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.long	.LASF794
	.byte	0x1
	.value	0x386
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x28
	.long	.LASF795
	.byte	0x1
	.value	0x386
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -332
	.uleb128 0x2d
	.string	"cc"
	.byte	0x1
	.value	0x387
	.long	0x69f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -284
	.uleb128 0x28
	.long	.LASF796
	.byte	0x1
	.value	0x388
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x28
	.long	.LASF797
	.byte	0x1
	.value	0x389
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -276
	.uleb128 0x2b
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.long	0x28c1
	.uleb128 0x28
	.long	.LASF798
	.byte	0x1
	.value	0x3e0
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x2b
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.long	0x28f7
	.uleb128 0x28
	.long	.LASF799
	.byte	0x1
	.value	0x3fe
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x28
	.long	.LASF800
	.byte	0x1
	.value	0x3ff
	.long	0x69f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -324
	.byte	0
	.uleb128 0x2c
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x28
	.long	.LASF799
	.byte	0x1
	.value	0x426
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x28
	.long	.LASF800
	.byte	0x1
	.value	0x427
	.long	0x69f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -316
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x21fe
	.uleb128 0x3
	.byte	0x8
	.long	0x20c2
	.uleb128 0x3
	.byte	0x8
	.long	0x1286
	.uleb128 0x14
	.long	0x2c5
	.long	0x294e
	.uleb128 0x15
	.long	0x145
	.byte	0xb
	.byte	0
	.uleb128 0xa
	.long	0x293e
	.uleb128 0x2e
	.long	.LASF829
	.byte	0x1
	.value	0x575
	.long	0x13e
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x29f3
	.uleb128 0x2f
	.long	.LASF607
	.byte	0x1
	.value	0x576
	.long	0x29f3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF671
	.byte	0x1
	.value	0x577
	.long	0xec9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF646
	.byte	0x1
	.value	0x577
	.long	0xec9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF717
	.byte	0x1
	.value	0x577
	.long	0xec9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.long	.LASF1
	.byte	0x1
	.value	0x578
	.long	0x29fe
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.long	.LASF782
	.byte	0x1
	.value	0x57a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.long	.LASF705
	.byte	0x1
	.value	0x57b
	.long	0x292c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.long	.LASF801
	.long	0x2a04
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.11357
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x29f9
	.uleb128 0xa
	.long	0x1bca
	.uleb128 0x3
	.byte	0x8
	.long	0x4e1
	.uleb128 0xa
	.long	0x4b2
	.uleb128 0x30
	.long	.LASF812
	.byte	0x1
	.value	0x618
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x2a53
	.uleb128 0x31
	.string	"map"
	.byte	0x1
	.value	0x619
	.long	0x2938
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF774
	.byte	0x1
	.value	0x61a
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0x61c
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x32
	.long	.LASF808
	.byte	0x1
	.value	0x633
	.long	0x2d
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x2b4b
	.uleb128 0x2f
	.long	.LASF768
	.byte	0x1
	.value	0x634
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2f
	.long	.LASF802
	.byte	0x1
	.value	0x634
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2f
	.long	.LASF46
	.byte	0x1
	.value	0x635
	.long	0x26b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x28
	.long	.LASF717
	.byte	0x1
	.value	0x637
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.long	.LASF803
	.byte	0x1
	.value	0x638
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.long	.LASF804
	.byte	0x1
	.value	0x639
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF806
	.byte	0x1
	.value	0x63b
	.quad	.L221
	.uleb128 0x29
	.long	.LASF801
	.long	0x2b5b
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.11378
	.uleb128 0x2b
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.long	0x2b1a
	.uleb128 0x28
	.long	.LASF787
	.byte	0x1
	.value	0x65e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2c
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x28
	.long	.LASF807
	.byte	0x1
	.value	0x669
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.long	.LASF0
	.byte	0x1
	.value	0x66a
	.long	0x69f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x2c5
	.long	0x2b5b
	.uleb128 0x15
	.long	0x145
	.byte	0x11
	.byte	0
	.uleb128 0xa
	.long	0x2b4b
	.uleb128 0x32
	.long	.LASF809
	.byte	0x1
	.value	0x6aa
	.long	0x2d
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x2bc3
	.uleb128 0x2f
	.long	.LASF810
	.byte	0x1
	.value	0x6ab
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.string	"map"
	.byte	0x1
	.value	0x6ac
	.long	0x2938
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.long	.LASF811
	.byte	0x1
	.value	0x6ae
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.long	.LASF801
	.long	0x2bd3
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.11387
	.byte	0
	.uleb128 0x14
	.long	0x2c5
	.long	0x2bd3
	.uleb128 0x15
	.long	0x145
	.byte	0x15
	.byte	0
	.uleb128 0xa
	.long	0x2bc3
	.uleb128 0x33
	.long	.LASF813
	.byte	0x1
	.value	0x6c6
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x2c6a
	.uleb128 0x2f
	.long	.LASF814
	.byte	0x1
	.value	0x6c7
	.long	0xec9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.string	"map"
	.byte	0x1
	.value	0x6c8
	.long	0x2938
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.long	.LASF801
	.long	0x2c6a
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.11395
	.uleb128 0x2c
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.uleb128 0x28
	.long	.LASF787
	.byte	0x1
	.value	0x6cc
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2c
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.uleb128 0x28
	.long	.LASF637
	.byte	0x1
	.value	0x6da
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xa
	.long	0x4b2
	.uleb128 0x33
	.long	.LASF815
	.byte	0x1
	.value	0x6f1
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x2fb4
	.uleb128 0x2f
	.long	.LASF607
	.byte	0x1
	.value	0x6f4
	.long	0x1d8b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x2f
	.long	.LASF765
	.byte	0x1
	.value	0x6f5
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x2f
	.long	.LASF766
	.byte	0x1
	.value	0x6f5
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x31
	.string	"map"
	.byte	0x1
	.value	0x6f6
	.long	0x2938
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x2f
	.long	.LASF775
	.byte	0x1
	.value	0x6f7
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x2f
	.long	.LASF816
	.byte	0x1
	.value	0x6f8
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -268
	.uleb128 0x2f
	.long	.LASF778
	.byte	0x1
	.value	0x6f9
	.long	0x2467
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.long	.LASF776
	.byte	0x1
	.value	0x6fa
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2f
	.long	.LASF783
	.byte	0x1
	.value	0x6fa
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2f
	.long	.LASF770
	.byte	0x1
	.value	0x6fa
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x2f
	.long	.LASF817
	.byte	0x1
	.value	0x6fa
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x2d
	.string	"ivs"
	.byte	0x1
	.value	0x6fc
	.long	0x2932
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x28
	.long	.LASF637
	.byte	0x1
	.value	0x6fd
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x28
	.long	.LASF768
	.byte	0x1
	.value	0x6fd
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2d
	.string	"set"
	.byte	0x1
	.value	0x6fe
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2d
	.string	"tem"
	.byte	0x1
	.value	0x6fe
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.long	.LASF811
	.byte	0x1
	.value	0x6fe
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x28
	.long	.LASF818
	.byte	0x1
	.value	0x6ff
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0x6ff
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -220
	.uleb128 0x28
	.long	.LASF819
	.byte	0x1
	.value	0x703
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x28
	.long	.LASF820
	.byte	0x1
	.value	0x704
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x28
	.long	.LASF821
	.byte	0x1
	.value	0x704
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x28
	.long	.LASF822
	.byte	0x1
	.value	0x704
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x29
	.long	.LASF801
	.long	0x2fc4
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.11442
	.uleb128 0x2b
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.long	0x2eae
	.uleb128 0x2d
	.string	"bl"
	.byte	0x1
	.value	0x736
	.long	0x2055
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2d
	.string	"v"
	.byte	0x1
	.value	0x737
	.long	0x1f67
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2d
	.string	"tv"
	.byte	0x1
	.value	0x737
	.long	0x1f67
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x28
	.long	.LASF46
	.byte	0x1
	.value	0x738
	.long	0x26b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x2c
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.uleb128 0x28
	.long	.LASF823
	.byte	0x1
	.value	0x74a
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x2c
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.uleb128 0x28
	.long	.LASF824
	.byte	0x1
	.value	0x75f
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.long	.LASF641
	.byte	0x1
	.value	0x75f
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.long	0x2ee4
	.uleb128 0x28
	.long	.LASF46
	.byte	0x1
	.value	0x794
	.long	0x26b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -204
	.uleb128 0x28
	.long	.LASF825
	.byte	0x1
	.value	0x795
	.long	0x26b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.byte	0
	.uleb128 0x2b
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.long	0x2f0a
	.uleb128 0x28
	.long	.LASF46
	.byte	0x1
	.value	0x828
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -196
	.byte	0
	.uleb128 0x2b
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.long	0x2f3e
	.uleb128 0x2d
	.string	"jmp"
	.byte	0x1
	.value	0x849
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.string	"lab"
	.byte	0x1
	.value	0x84a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x2b
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.long	0x2f64
	.uleb128 0x28
	.long	.LASF789
	.byte	0x1
	.value	0x865
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.byte	0
	.uleb128 0x2c
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.uleb128 0x2d
	.string	"pat"
	.byte	0x1
	.value	0x88b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.long	.LASF788
	.byte	0x1
	.value	0x88c
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x2d
	.string	"len"
	.byte	0x1
	.value	0x88d
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -188
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0x88e
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -212
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x2c5
	.long	0x2fc4
	.uleb128 0x15
	.long	0x145
	.byte	0xe
	.byte	0
	.uleb128 0xa
	.long	0x2fb4
	.uleb128 0x34
	.long	.LASF827
	.byte	0x1
	.value	0x925
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x3024
	.uleb128 0x2f
	.long	.LASF641
	.byte	0x1
	.value	0x926
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF639
	.byte	0x1
	.value	0x926
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF717
	.byte	0x1
	.value	0x926
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF828
	.byte	0x1
	.value	0x928
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2e
	.long	.LASF830
	.byte	0x1
	.value	0x93a
	.long	0x13e
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x30bd
	.uleb128 0x2f
	.long	.LASF607
	.byte	0x1
	.value	0x93b
	.long	0x29f3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2f
	.long	.LASF637
	.byte	0x1
	.value	0x93c
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2d
	.string	"p"
	.byte	0x1
	.value	0x93e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2d
	.string	"q"
	.byte	0x1
	.value	0x93e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF831
	.byte	0x1
	.value	0x93e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.long	.LASF782
	.byte	0x1
	.value	0x93f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.long	.LASF783
	.byte	0x1
	.value	0x940
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.long	.LASF832
	.byte	0x1
	.value	0x941
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x32
	.long	.LASF833
	.byte	0x1
	.value	0x96a
	.long	0x2d
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x315e
	.uleb128 0x2f
	.long	.LASF834
	.byte	0x1
	.value	0x96b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF835
	.byte	0x1
	.value	0x96b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.long	.LASF836
	.byte	0x1
	.value	0x96b
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2f
	.long	.LASF1
	.byte	0x1
	.value	0x96c
	.long	0x4e1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x28
	.long	.LASF764
	.byte	0x1
	.value	0x96e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.long	.LASF837
	.byte	0x1
	.value	0x96e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.long	.LASF828
	.byte	0x1
	.value	0x96f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.long	.LASF801
	.long	0x315e
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.11500
	.byte	0
	.uleb128 0xa
	.long	0x2b4b
	.uleb128 0x2e
	.long	.LASF838
	.byte	0x1
	.value	0x99b
	.long	0x2d
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x31b0
	.uleb128 0x31
	.string	"bl"
	.byte	0x1
	.value	0x99c
	.long	0x31b0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.string	"v"
	.byte	0x1
	.value	0x99e
	.long	0x1f67
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.long	.LASF828
	.byte	0x1
	.value	0x99f
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.long	0x31b6
	.uleb128 0xa
	.long	0x1f6d
	.uleb128 0x32
	.long	.LASF839
	.byte	0x1
	.value	0x9ce
	.long	0x13e
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x32e0
	.uleb128 0x2f
	.long	.LASF607
	.byte	0x1
	.value	0x9cf
	.long	0x29f3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2f
	.long	.LASF778
	.byte	0x1
	.value	0x9d0
	.long	0x2467
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x2f
	.long	.LASF720
	.byte	0x1
	.value	0x9d1
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2d
	.string	"ivs"
	.byte	0x1
	.value	0x9d3
	.long	0x2932
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2d
	.string	"bl"
	.byte	0x1
	.value	0x9d4
	.long	0x2055
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2d
	.string	"v"
	.byte	0x1
	.value	0x9d5
	.long	0x1f67
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.long	.LASF717
	.byte	0x1
	.value	0x9d6
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.string	"tem"
	.byte	0x1
	.value	0x9d6
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.long	.LASF840
	.byte	0x1
	.value	0x9d7
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.long	.LASF841
	.byte	0x1
	.value	0x9d8
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x28
	.long	.LASF828
	.byte	0x1
	.value	0x9d9
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x29
	.long	.LASF801
	.long	0x32f0
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.11523
	.uleb128 0x2b
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.long	0x32be
	.uleb128 0x2d
	.string	"tem"
	.byte	0x1
	.value	0xa19
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2c
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.uleb128 0x2d
	.string	"tem"
	.byte	0x1
	.value	0xa53
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x2c5
	.long	0x32f0
	.uleb128 0x15
	.long	0x145
	.byte	0x14
	.byte	0
	.uleb128 0xa
	.long	0x32e0
	.uleb128 0x32
	.long	.LASF842
	.byte	0x1
	.value	0xa6c
	.long	0x13e
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x3384
	.uleb128 0x31
	.string	"v"
	.byte	0x1
	.value	0xa6d
	.long	0x1f67
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF820
	.byte	0x1
	.value	0xa6e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.long	.LASF720
	.byte	0x1
	.value	0xa6f
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2d
	.string	"ret"
	.byte	0x1
	.value	0xa71
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.long	.LASF843
	.byte	0x1
	.value	0xa72
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.long	.LASF844
	.byte	0x1
	.value	0xa73
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.long	.LASF801
	.long	0x3394
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.11540
	.byte	0
	.uleb128 0x14
	.long	0x2c5
	.long	0x3394
	.uleb128 0x15
	.long	0x145
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.long	0x3384
	.uleb128 0x32
	.long	.LASF845
	.byte	0x1
	.value	0xa8a
	.long	0x13e
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x35d5
	.uleb128 0x2f
	.long	.LASF607
	.byte	0x1
	.value	0xa8b
	.long	0x29f3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x31
	.string	"bl"
	.byte	0x1
	.value	0xa8c
	.long	0x2055
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2f
	.long	.LASF778
	.byte	0x1
	.value	0xa8d
	.long	0x2467
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x2f
	.long	.LASF717
	.byte	0x1
	.value	0xa8e
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x2f
	.long	.LASF720
	.byte	0x1
	.value	0xa8f
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x2d
	.string	"ivs"
	.byte	0x1
	.value	0xa91
	.long	0x2932
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2d
	.string	"v"
	.byte	0x1
	.value	0xa92
	.long	0x1f67
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2d
	.string	"v2"
	.byte	0x1
	.value	0xa92
	.long	0x1f67
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x28
	.long	.LASF646
	.byte	0x1
	.value	0xa93
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2d
	.string	"tem"
	.byte	0x1
	.value	0xa94
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.long	.LASF828
	.byte	0x1
	.value	0xa95
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x29
	.long	.LASF801
	.long	0x35d5
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.11563
	.uleb128 0x2c
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.uleb128 0x28
	.long	.LASF820
	.byte	0x1
	.value	0xaa1
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x28
	.long	.LASF824
	.byte	0x1
	.value	0xaa1
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2b
	.quad	.LBB27
	.quad	.LBE27-.LBB27
	.long	0x34f2
	.uleb128 0x28
	.long	.LASF846
	.byte	0x1
	.value	0xafb
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2c
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.uleb128 0x2d
	.string	"tem"
	.byte	0x1
	.value	0xb05
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x2b
	.quad	.LBB29
	.quad	.LBE29-.LBB29
	.long	0x3517
	.uleb128 0x2d
	.string	"tem"
	.byte	0x1
	.value	0xb30
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x2b
	.quad	.LBB30
	.quad	.LBE30-.LBB30
	.long	0x358b
	.uleb128 0x2d
	.string	"tem"
	.byte	0x1
	.value	0xb6e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.long	.LASF663
	.byte	0x1
	.value	0xb6f
	.long	0x1f67
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.long	.LASF638
	.byte	0x1
	.value	0xb70
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2c
	.quad	.LBB31
	.quad	.LBE31-.LBB31
	.uleb128 0x28
	.long	.LASF767
	.byte	0x1
	.value	0xbb6
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.string	"ret"
	.byte	0x1
	.value	0xbb6
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x2b
	.quad	.LBB32
	.quad	.LBE32-.LBB32
	.long	0x35b1
	.uleb128 0x28
	.long	.LASF341
	.byte	0x1
	.value	0xc19
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.byte	0
	.uleb128 0x2c
	.quad	.LBB33
	.quad	.LBE33-.LBB33
	.uleb128 0x28
	.long	.LASF847
	.byte	0x1
	.value	0xc24
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xa
	.long	0x32e0
	.uleb128 0x32
	.long	.LASF848
	.byte	0x1
	.value	0xc3d
	.long	0x13e
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x3689
	.uleb128 0x2f
	.long	.LASF607
	.byte	0x1
	.value	0xc3e
	.long	0x29f3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x31
	.string	"reg"
	.byte	0x1
	.value	0xc3f
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x28
	.long	.LASF637
	.byte	0x1
	.value	0xc41
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.long	.LASF789
	.byte	0x1
	.value	0xc41
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.long	.LASF0
	.byte	0x1
	.value	0xc42
	.long	0x69f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x28
	.long	.LASF849
	.byte	0x1
	.value	0xc43
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x28
	.long	.LASF850
	.byte	0x1
	.value	0xc44
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.quad	.LBB34
	.quad	.LBE34-.LBB34
	.uleb128 0x2d
	.string	"set"
	.byte	0x1
	.value	0xc63
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	.LASF851
	.byte	0x1
	.value	0xc85
	.long	0x2d
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x36f8
	.uleb128 0x2f
	.long	.LASF607
	.byte	0x1
	.value	0xc86
	.long	0x29f3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x31
	.string	"bl"
	.byte	0x1
	.value	0xc87
	.long	0x2055
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x28
	.long	.LASF719
	.byte	0x1
	.value	0xc89
	.long	0x286
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF717
	.byte	0x1
	.value	0xc8a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.string	"tem"
	.byte	0x1
	.value	0xc8a
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x2e
	.long	.LASF852
	.byte	0x1
	.value	0xccf
	.long	0x2d
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x37e9
	.uleb128 0x2f
	.long	.LASF607
	.byte	0x1
	.value	0xcd0
	.long	0x29f3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x31
	.string	"v"
	.byte	0x1
	.value	0xcd1
	.long	0x1f67
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2d
	.string	"ivs"
	.byte	0x1
	.value	0xcd3
	.long	0x2932
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2d
	.string	"bl"
	.byte	0x1
	.value	0xcd4
	.long	0x2055
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.long	.LASF637
	.byte	0x1
	.value	0xcd5
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x28
	.long	.LASF717
	.byte	0x1
	.value	0xcd6
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.string	"tem"
	.byte	0x1
	.value	0xcd6
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2d
	.string	"seq"
	.byte	0x1
	.value	0xcd7
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.long	.LASF783
	.byte	0x1
	.value	0xcd8
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.long	.LASF719
	.byte	0x1
	.value	0xcd9
	.long	0x286
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.long	.LASF801
	.long	0x37f9
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.11628
	.uleb128 0x2c
	.quad	.LBB35
	.quad	.LBE35-.LBB35
	.uleb128 0x2d
	.string	"biv"
	.byte	0x1
	.value	0xd1e
	.long	0x1f67
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x2c5
	.long	0x37f9
	.uleb128 0x15
	.long	0x145
	.byte	0xf
	.byte	0
	.uleb128 0xa
	.long	0x37e9
	.uleb128 0x32
	.long	.LASF853
	.byte	0x1
	.value	0xd50
	.long	0x2d
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x389e
	.uleb128 0x2f
	.long	.LASF607
	.byte	0x1
	.value	0xd51
	.long	0x29f3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x31
	.string	"reg"
	.byte	0x1
	.value	0xd52
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x28
	.long	.LASF782
	.byte	0x1
	.value	0xd54
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.long	.LASF637
	.byte	0x1
	.value	0xd55
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2d
	.string	"set"
	.byte	0x1
	.value	0xd55
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.string	"ret"
	.byte	0x1
	.value	0xd56
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.quad	.LBB36
	.quad	.LBE36-.LBB36
	.uleb128 0x28
	.long	.LASF787
	.byte	0x1
	.value	0xd66
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x32
	.long	.LASF854
	.byte	0x1
	.value	0xd87
	.long	0x2d
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x38f1
	.uleb128 0x31
	.string	"op"
	.byte	0x1
	.value	0xd88
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.string	"reg"
	.byte	0x1
	.value	0xd88
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.long	.LASF801
	.long	0x38f1
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.11645
	.byte	0
	.uleb128 0xa
	.long	0x2b4b
	.uleb128 0x35
	.long	.LASF855
	.byte	0x1
	.value	0xd9c
	.long	0x2d
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x3985
	.uleb128 0x31
	.string	"op0"
	.byte	0x1
	.value	0xd9d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x31
	.string	"op1"
	.byte	0x1
	.value	0xd9d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2c
	.quad	.LBB37
	.quad	.LBE37-.LBB37
	.uleb128 0x28
	.long	.LASF856
	.byte	0x1
	.value	0xda2
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.long	.LASF857
	.byte	0x1
	.value	0xda3
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.long	.LASF858
	.byte	0x1
	.value	0xda4
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.long	.LASF859
	.byte	0x1
	.value	0xda5
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	.LASF860
	.byte	0x1
	.value	0xdc1
	.long	0x286
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x3c3e
	.uleb128 0x2f
	.long	.LASF607
	.byte	0x1
	.value	0xdc2
	.long	0x1d8b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x28
	.long	.LASF705
	.byte	0x1
	.value	0xdc4
	.long	0x292c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2d
	.string	"ivs"
	.byte	0x1
	.value	0xdc5
	.long	0x2932
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x28
	.long	.LASF861
	.byte	0x1
	.value	0xdc6
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x28
	.long	.LASF713
	.byte	0x1
	.value	0xdc6
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x28
	.long	.LASF716
	.byte	0x1
	.value	0xdc7
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x28
	.long	.LASF671
	.byte	0x1
	.value	0xdc7
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x28
	.long	.LASF717
	.byte	0x1
	.value	0xdc7
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x28
	.long	.LASF646
	.byte	0x1
	.value	0xdc7
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x28
	.long	.LASF718
	.byte	0x1
	.value	0xdc8
	.long	0x69f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -236
	.uleb128 0x2d
	.string	"inc"
	.byte	0x1
	.value	0xdc9
	.long	0x274
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.long	.LASF794
	.byte	0x1
	.value	0xdca
	.long	0x286
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x28
	.long	.LASF862
	.byte	0x1
	.value	0xdcb
	.long	0x286
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x28
	.long	.LASF863
	.byte	0x1
	.value	0xdcc
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x28
	.long	.LASF864
	.byte	0x1
	.value	0xdcd
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -252
	.uleb128 0x28
	.long	.LASF797
	.byte	0x1
	.value	0xdce
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x28
	.long	.LASF865
	.byte	0x1
	.value	0xdce
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -244
	.uleb128 0x28
	.long	.LASF866
	.byte	0x1
	.value	0xdce
	.long	0x13e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x28
	.long	.LASF781
	.byte	0x1
	.value	0xdcf
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x28
	.long	.LASF867
	.byte	0x1
	.value	0xdd0
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.string	"bl"
	.byte	0x1
	.value	0xdd1
	.long	0x2055
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x29
	.long	.LASF801
	.long	0x3c3e
	.uleb128 0x9
	.byte	0x3
	.quad	__FUNCTION__.11678
	.uleb128 0x2b
	.quad	.LBB38
	.quad	.LBE38-.LBB38
	.long	0x3b2d
	.uleb128 0x28
	.long	.LASF764
	.byte	0x1
	.value	0xdfd
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.byte	0
	.uleb128 0x2b
	.quad	.LBB39
	.quad	.LBE39-.LBB39
	.long	0x3b93
	.uleb128 0x28
	.long	.LASF311
	.byte	0x1
	.value	0xe81
	.long	0x274
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2d
	.string	"v"
	.byte	0x1
	.value	0xe82
	.long	0x1f67
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x28
	.long	.LASF846
	.byte	0x1
	.value	0xe83
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2c
	.quad	.LBB40
	.quad	.LBE40-.LBB40
	.uleb128 0x28
	.long	.LASF868
	.byte	0x1
	.value	0xe97
	.long	0x1f67
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.byte	0
	.uleb128 0x2c
	.quad	.LBB41
	.quad	.LBE41-.LBB41
	.uleb128 0x28
	.long	.LASF869
	.byte	0x1
	.value	0xf22
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x28
	.long	.LASF870
	.byte	0x1
	.value	0xf23
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x28
	.long	.LASF871
	.byte	0x1
	.value	0xf24
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2b
	.quad	.LBB42
	.quad	.LBE42-.LBB42
	.long	0x3bfa
	.uleb128 0x28
	.long	.LASF764
	.byte	0x1
	.value	0xf30
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.byte	0
	.uleb128 0x2c
	.quad	.LBB43
	.quad	.LBE43-.LBB43
	.uleb128 0x28
	.long	.LASF764
	.byte	0x1
	.value	0xf48
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2c
	.quad	.LBB44
	.quad	.LBE44-.LBB44
	.uleb128 0x28
	.long	.LASF872
	.byte	0x1
	.value	0xf55
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xa
	.long	0x37e9
	.uleb128 0x32
	.long	.LASF873
	.byte	0x1
	.value	0x1017
	.long	0x2d
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x3cdd
	.uleb128 0x2f
	.long	.LASF607
	.byte	0x1
	.value	0x1018
	.long	0x1d8b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x31
	.string	"x"
	.byte	0x1
	.value	0x1019
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2d
	.string	"ivs"
	.byte	0x1
	.value	0x101b
	.long	0x2932
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x28
	.long	.LASF0
	.byte	0x1
	.value	0x101c
	.long	0x69f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0x101d
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2d
	.string	"fmt"
	.byte	0x1
	.value	0x101e
	.long	0x4c2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.quad	.LBB45
	.quad	.LBE45-.LBB45
	.uleb128 0x2d
	.string	"j"
	.byte	0x1
	.value	0x1045
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	.LASF874
	.byte	0x1
	.value	0x105d
	.long	0x13e
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x3d67
	.uleb128 0x2f
	.long	.LASF46
	.byte	0x1
	.value	0x105e
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2f
	.long	.LASF426
	.byte	0x1
	.value	0x105f
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF427
	.byte	0x1
	.value	0x1060
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2f
	.long	.LASF765
	.byte	0x1
	.value	0x1061
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF766
	.byte	0x1
	.value	0x1062
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x28
	.long	.LASF875
	.byte	0x1
	.value	0x1064
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2d
	.string	"p"
	.byte	0x1
	.value	0x1065
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x32
	.long	.LASF876
	.byte	0x1
	.value	0x1091
	.long	0x2d
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x3dd3
	.uleb128 0x2f
	.long	.LASF782
	.byte	0x1
	.value	0x1092
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2f
	.long	.LASF877
	.byte	0x1
	.value	0x1093
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2d
	.string	"x"
	.byte	0x1
	.value	0x1095
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.long	.LASF789
	.byte	0x1
	.value	0x1095
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x28
	.long	.LASF878
	.byte	0x1
	.value	0x1095
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x14
	.long	0x2442
	.long	0x3de3
	.uleb128 0x15
	.long	0x145
	.byte	0x3
	.byte	0
	.uleb128 0x26
	.long	.LASF879
	.byte	0x1
	.byte	0xa1
	.long	0x3dd3
	.uleb128 0x9
	.byte	0x3
	.quad	factors
	.uleb128 0x26
	.long	.LASF880
	.byte	0x1
	.byte	0xb9
	.long	0x3e0d
	.uleb128 0x9
	.byte	0x3
	.quad	addr_combined_regs
	.uleb128 0x3
	.byte	0x8
	.long	0x1f67
	.uleb128 0x26
	.long	.LASF881
	.byte	0x1
	.byte	0xbf
	.long	0xec9
	.uleb128 0x9
	.byte	0x3
	.quad	splittable_regs
	.uleb128 0x26
	.long	.LASF882
	.byte	0x1
	.byte	0xc6
	.long	0x4db
	.uleb128 0x9
	.byte	0x3
	.quad	splittable_regs_updates
	.uleb128 0x14
	.long	0x656
	.long	0x3e4d
	.uleb128 0x15
	.long	0x145
	.byte	0x3a
	.byte	0
	.uleb128 0x36
	.long	.LASF162
	.byte	0x9
	.byte	0x34
	.long	0x3e58
	.uleb128 0xa
	.long	0x3e3d
	.uleb128 0x14
	.long	0x28d
	.long	0x3e6d
	.uleb128 0x15
	.long	0x145
	.byte	0x3a
	.byte	0
	.uleb128 0x36
	.long	.LASF883
	.byte	0x9
	.byte	0x50
	.long	0x3e78
	.uleb128 0xa
	.long	0x3e5d
	.uleb128 0x14
	.long	0x294
	.long	0x3e8d
	.uleb128 0x15
	.long	0x145
	.byte	0x3a
	.byte	0
	.uleb128 0x36
	.long	.LASF884
	.byte	0x9
	.byte	0x60
	.long	0x3e98
	.uleb128 0xa
	.long	0x3e7d
	.uleb128 0x36
	.long	.LASF885
	.byte	0x9
	.byte	0xa4
	.long	0x4e1
	.uleb128 0x14
	.long	0x28d
	.long	0x3eb8
	.uleb128 0x15
	.long	0x145
	.byte	0x98
	.byte	0
	.uleb128 0x36
	.long	.LASF886
	.byte	0x2
	.byte	0x36
	.long	0x3ec3
	.uleb128 0xa
	.long	0x3ea8
	.uleb128 0x14
	.long	0x4c2
	.long	0x3ed8
	.uleb128 0x15
	.long	0x145
	.byte	0x98
	.byte	0
	.uleb128 0x36
	.long	.LASF887
	.byte	0x2
	.byte	0x3c
	.long	0x3ee3
	.uleb128 0xa
	.long	0x3ec8
	.uleb128 0x14
	.long	0x2c5
	.long	0x3ef8
	.uleb128 0x15
	.long	0x145
	.byte	0x98
	.byte	0
	.uleb128 0x36
	.long	.LASF888
	.byte	0x2
	.byte	0x3f
	.long	0x3f03
	.uleb128 0xa
	.long	0x3ee8
	.uleb128 0x14
	.long	0x2d
	.long	0x3f18
	.uleb128 0x15
	.long	0x145
	.byte	0x80
	.byte	0
	.uleb128 0x37
	.long	.LASF889
	.byte	0x2
	.value	0x611
	.long	0x3f08
	.uleb128 0x14
	.long	0x2d
	.long	0x3f34
	.uleb128 0x15
	.long	0x145
	.byte	0xa
	.byte	0
	.uleb128 0x37
	.long	.LASF890
	.byte	0x2
	.value	0x652
	.long	0x3f24
	.uleb128 0x36
	.long	.LASF891
	.byte	0xe
	.byte	0xaf
	.long	0x1250
	.uleb128 0x36
	.long	.LASF892
	.byte	0xd
	.byte	0x41
	.long	0x1250
	.uleb128 0x37
	.long	.LASF893
	.byte	0x14
	.value	0x10e
	.long	0x13e
	.uleb128 0x37
	.long	.LASF894
	.byte	0xf
	.value	0x1e4
	.long	0x1a04
	.uleb128 0x37
	.long	.LASF895
	.byte	0x12
	.value	0x17e
	.long	0x4db
	.uleb128 0x37
	.long	.LASF896
	.byte	0x12
	.value	0x17f
	.long	0x13e
	.uleb128 0x37
	.long	.LASF897
	.byte	0x12
	.value	0x180
	.long	0x26b
	.uleb128 0x37
	.long	.LASF898
	.byte	0x12
	.value	0x182
	.long	0x3f9e
	.uleb128 0x3
	.byte	0x8
	.long	0x2cc
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
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
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
	.uleb128 0x17
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x4
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
	.uleb128 0x17
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x17
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
	.uleb128 0x1a
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
.LASF361:
	.string	"REG_BR_PROB"
.LASF391:
	.string	"NOTE_INSN_EH_REGION_BEG"
.LASF547:
	.string	"profile_label_no"
.LASF659:
	.string	"lifetime"
.LASF318:
	.string	"rtstr"
.LASF378:
	.string	"NOTE_INSN_DELETED"
.LASF712:
	.string	"has_indirect_jump"
.LASF93:
	.string	"_unused2"
.LASF246:
	.string	"UMOD"
.LASF300:
	.string	"min_align"
.LASF79:
	.string	"_fileno"
.LASF415:
	.string	"varray_data_tag"
.LASF24:
	.string	"AD_REGS"
.LASF782:
	.string	"loop_start"
.LASF326:
	.string	"first"
.LASF762:
	.string	"insn_count"
.LASF541:
	.string	"inlinable"
.LASF573:
	.string	"uses_const_pool"
.LASF775:
	.string	"exit_label"
.LASF287:
	.string	"CONSTANT_P_RTX"
.LASF688:
	.string	"loop_ivs"
.LASF615:
	.string	"entry_edges"
.LASF317:
	.string	"rtuint"
.LASF742:
	.string	"PRED_LOOP_EXIT"
.LASF668:
	.string	"biv_count"
.LASF321:
	.string	"rt_cselib"
.LASF190:
	.string	"DEFINE_PEEPHOLE2"
.LASF12:
	.string	"rtvec_def"
.LASF546:
	.string	"inl_max_label_num"
.LASF250:
	.string	"LSHIFTRT"
.LASF842:
	.string	"verify_addresses"
.LASF184:
	.string	"MATCH_PAR_DUP"
.LASF84:
	.string	"_shortbuf"
.LASF901:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/403.gcc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF245:
	.string	"UDIV"
.LASF10:
	.string	"rtvec"
.LASF866:
	.string	"final_larger"
.LASF650:
	.string	"ignore"
.LASF652:
	.string	"always_executed"
.LASF669:
	.string	"giv_count"
.LASF449:
	.string	"inline_remap"
.LASF178:
	.string	"MATCH_OPERAND"
.LASF653:
	.string	"maybe_multiple"
.LASF483:
	.string	"x_first_label_num"
.LASF159:
	.string	"CCFPmode"
.LASF809:
	.string	"initial_reg_note_copy"
.LASF704:
	.string	"movable"
.LASF100:
	.string	"reg_class"
.LASF823:
	.string	"this_giv_inc"
.LASF267:
	.string	"UNLE"
.LASF28:
	.string	"LEGACY_REGS"
.LASF305:
	.string	"max_after_base"
.LASF705:
	.string	"loop_info"
.LASF873:
	.string	"remap_split_bivs"
.LASF268:
	.string	"UNLT"
.LASF724:
	.string	"mems_idx"
.LASF448:
	.string	"equiv"
.LASF574:
	.string	"uses_pic_offset_table"
.LASF580:
	.string	"initial_value_struct"
.LASF863:
	.string	"off_by_one"
.LASF605:
	.string	"probability"
.LASF131:
	.string	"CTImode"
.LASF65:
	.string	"_flags"
.LASF477:
	.string	"next"
.LASF609:
	.string	"latch"
.LASF462:
	.string	"orig_asm_operands_vector"
.LASF849:
	.string	"jump_count"
.LASF813:
	.string	"final_reg_note_copy"
.LASF60:
	.string	"__off_t"
.LASF850:
	.string	"label_count"
.LASF695:
	.string	"set_in_loop"
.LASF803:
	.string	"increment_total"
.LASF129:
	.string	"CSImode"
.LASF30:
	.string	"FP_TOP_REG"
.LASF581:
	.string	"temp_slot"
.LASF289:
	.string	"VEC_MERGE"
.LASF544:
	.string	"original_decl_initial"
.LASF741:
	.string	"PRED_LOOP_BRANCH"
.LASF700:
	.string	"loop_regs"
.LASF85:
	.string	"_lock"
.LASF417:
	.string	"uhint"
.LASF222:
	.string	"RETURN"
.LASF418:
	.string	"generic"
.LASF14:
	.string	"elem"
.LASF165:
	.string	"MODE_FLOAT"
.LASF309:
	.string	"alias"
.LASF306:
	.string	"offset_unsigned"
.LASF135:
	.string	"V2SImode"
.LASF570:
	.string	"stdarg"
.LASF531:
	.string	"x_trampoline_list"
.LASF678:
	.string	"reversed"
.LASF675:
	.string	"incremented"
.LASF25:
	.string	"Q_REGS"
.LASF209:
	.string	"CODE_LABEL"
.LASF130:
	.string	"CDImode"
.LASF215:
	.string	"UNSPEC"
.LASF208:
	.string	"BARRIER"
.LASF384:
	.string	"NOTE_INSN_LOOP_VTOP"
.LASF211:
	.string	"COND_EXEC"
.LASF225:
	.string	"CONST_INT"
.LASF221:
	.string	"CALL"
.LASF837:
	.string	"mult_res"
.LASF50:
	.string	"maybe_vaarg"
.LASF552:
	.string	"epilogue_delay_list"
.LASF619:
	.string	"exits_doms"
.LASF137:
	.string	"V4QImode"
.LASF727:
	.string	"unknown_constant_address_altered"
.LASF200:
	.string	"ATTR"
.LASF640:
	.string	"giv_type"
.LASF341:
	.string	"count"
.LASF319:
	.string	"rttype"
.LASF887:
	.string	"rtx_format"
.LASF19:
	.string	"DREG"
.LASF331:
	.string	"head_tree"
.LASF37:
	.string	"FLOAT_SSE_REGS"
.LASF673:
	.string	"init_insn"
.LASF408:
	.string	"GR_VIRTUAL_STACK_ARGS"
.LASF882:
	.string	"splittable_regs_updates"
.LASF825:
	.string	"src_regno"
.LASF136:
	.string	"V2DImode"
.LASF521:
	.string	"x_return_label"
.LASF630:
	.string	"sink"
.LASF445:
	.string	"varray_type"
.LASF314:
	.string	"mem_attrs"
.LASF71:
	.string	"_IO_write_end"
.LASF355:
	.string	"REG_UNUSED"
.LASF193:
	.string	"DEFINE_DELAY"
.LASF471:
	.string	"compare_src"
.LASF243:
	.string	"MINUS"
.LASF528:
	.string	"x_clobber_return_insn"
.LASF699:
	.string	"moved_once"
.LASF22:
	.string	"SIREG"
.LASF646:
	.string	"final_value"
.LASF424:
	.string	"sched_info_tag"
.LASF879:
	.string	"factors"
.LASF233:
	.string	"STRICT_LOW_PART"
.LASF665:
	.string	"same_insn"
.LASF175:
	.string	"INCLUDE"
.LASF404:
	.string	"GR_FRAME_POINTER"
.LASF339:
	.string	"index"
.LASF431:
	.string	"freq"
.LASF271:
	.string	"ZERO_EXTEND"
.LASF274:
	.string	"FLOAT_TRUNCATE"
.LASF497:
	.string	"x_forced_labels"
.LASF898:
	.string	"loop_dump_stream"
.LASF881:
	.string	"splittable_regs"
.LASF512:
	.string	"internal_arg_pointer"
.LASF401:
	.string	"GR_PC"
.LASF21:
	.string	"BREG"
.LASF146:
	.string	"V2SFmode"
.LASF438:
	.string	"varray_data"
.LASF582:
	.string	"machine_function"
.LASF275:
	.string	"FLOAT"
.LASF897:
	.string	"max_reg_before_loop"
.LASF731:
	.string	"pre_header_has_call"
.LASF797:
	.string	"unsigned_p"
.LASF367:
	.string	"REG_EH_CONTEXT"
.LASF101:
	.string	"machine_mode"
.LASF871:
	.string	"const2"
.LASF697:
	.string	"single_usage"
.LASF454:
	.string	"reg_map"
.LASF324:
	.string	"rtmem"
.LASF540:
	.string	"fixup_var_refs_queue"
.LASF284:
	.string	"RANGE_REG"
.LASF721:
	.string	"used_count_register"
.LASF322:
	.string	"rtbit"
.LASF590:
	.string	"bitmap_element_def"
.LASF3:
	.string	"call"
.LASF108:
	.string	"TImode"
.LASF260:
	.string	"PRE_MODIFY"
.LASF468:
	.string	"num_sets"
.LASF555:
	.string	"returns_pointer"
.LASF776:
	.string	"start_label"
.LASF273:
	.string	"FLOAT_EXTEND"
.LASF428:
	.string	"last_note_uid"
.LASF500:
	.string	"stmt"
.LASF6:
	.string	"in_struct"
.LASF379:
	.string	"NOTE_INSN_BLOCK_BEG"
.LASF106:
	.string	"SImode"
.LASF217:
	.string	"ADDR_VEC"
.LASF578:
	.string	"stmt_status"
.LASF147:
	.string	"V2DFmode"
.LASF780:
	.string	"safety_label"
.LASF786:
	.string	"ujump"
.LASF299:
	.string	"LAST_AND_UNUSED_RTX_CODE"
.LASF733:
	.string	"PRED_COMBINED"
.LASF753:
	.string	"prediction"
.LASF313:
	.string	"align"
.LASF49:
	.string	"sse_regno"
.LASF328:
	.string	"indx"
.LASF548:
	.string	"machine"
.LASF613:
	.string	"nodes"
.LASF715:
	.string	"final_equiv_value"
.LASF236:
	.string	"SYMBOL_REF"
.LASF377:
	.string	"NOTE_INSN_BIAS"
.LASF885:
	.string	"word_mode"
.LASF815:
	.string	"copy_loop_body"
.LASF399:
	.string	"NOTE_INSN_MAX"
.LASF495:
	.string	"x_saveregs_value"
.LASF684:
	.string	"GENERAL_INDUCT"
.LASF189:
	.string	"DEFINE_INSN_AND_SPLIT"
.LASF241:
	.string	"COMPARE"
.LASF269:
	.string	"LTGT"
.LASF764:
	.string	"temp"
.LASF476:
	.string	"unsignedp"
.LASF281:
	.string	"HIGH"
.LASF238:
	.string	"QUEUED"
.LASF26:
	.string	"NON_Q_REGS"
.LASF759:
	.string	"UNROLL_COMPLETELY"
.LASF1:
	.string	"mode"
.LASF107:
	.string	"DImode"
.LASF807:
	.string	"second_part"
.LASF597:
	.string	"elms"
.LASF750:
	.string	"PRED_CALL"
.LASF413:
	.string	"const_equiv_data"
.LASF514:
	.string	"hard_reg_initial_vals"
.LASF868:
	.string	"biv_inc"
.LASF732:
	.string	"br_predictor"
.LASF493:
	.string	"x_inhibit_defer_pop"
.LASF78:
	.string	"_chain"
.LASF720:
	.string	"unroll_number"
.LASF464:
	.string	"copy_asm_constraints_vector"
.LASF686:
	.string	"info"
.LASF259:
	.string	"POST_INC"
.LASF862:
	.string	"abs_diff"
.LASF120:
	.string	"TFmode"
.LASF770:
	.string	"insert_before"
.LASF56:
	.string	"unsigned char"
.LASF469:
	.string	"equiv_sets"
.LASF31:
	.string	"FP_SECOND_REG"
.LASF498:
	.string	"x_pending_chain"
.LASF639:
	.string	"src_reg"
.LASF513:
	.string	"cannot_inline"
.LASF884:
	.string	"mode_bitsize"
.LASF903:
	.string	"_IO_lock_t"
.LASF739:
	.string	"PRED_BUILTIN_EXPECT"
.LASF685:
	.string	"class"
.LASF746:
	.string	"PRED_POINTER"
.LASF799:
	.string	"cmp_const"
.LASF435:
	.string	"basic_block"
.LASF103:
	.string	"BImode"
.LASF257:
	.string	"PRE_INC"
.LASF354:
	.string	"REG_NO_CONFLICT"
.LASF117:
	.string	"SFmode"
.LASF840:
	.string	"biv_final_value"
.LASF501:
	.string	"emit"
.LASF206:
	.string	"JUMP_INSN"
.LASF336:
	.string	"cond_local_set"
.LASF606:
	.string	"edge"
.LASF169:
	.string	"MODE_COMPLEX_FLOAT"
.LASF323:
	.string	"rttree"
.LASF763:
	.string	"strength_reduce_p"
.LASF376:
	.string	"insn_note"
.LASF841:
	.string	"biv_splittable"
.LASF395:
	.string	"NOTE_INSN_RANGE_END"
.LASF760:
	.string	"UNROLL_MODULO"
.LASF188:
	.string	"DEFINE_SPLIT"
.LASF562:
	.string	"has_nonlocal_goto"
.LASF714:
	.string	"initial_equiv_value"
.LASF576:
	.string	"arg_pointer_save_area_init"
.LASF227:
	.string	"CONST_VECTOR"
.LASF185:
	.string	"MATCH_INSN"
.LASF717:
	.string	"increment"
.LASF522:
	.string	"x_save_expr_regs"
.LASF118:
	.string	"DFmode"
.LASF33:
	.string	"SSE_REGS"
.LASF600:
	.string	"gcov_type"
.LASF54:
	.string	"size_t"
.LASF219:
	.string	"PREFETCH"
.LASF42:
	.string	"LIM_REG_CLASSES"
.LASF41:
	.string	"ALL_REGS"
.LASF505:
	.string	"pops_args"
.LASF112:
	.string	"PSImode"
.LASF761:
	.string	"UNROLL_NAIVE"
.LASF524:
	.string	"x_rtl_expr_chain"
.LASF283:
	.string	"RANGE_INFO"
.LASF820:
	.string	"giv_inc"
.LASF616:
	.string	"num_entries"
.LASF610:
	.string	"pre_header"
.LASF414:
	.string	"rtunion_def"
.LASF814:
	.string	"notesp"
.LASF853:
	.string	"loop_find_equiv_value"
.LASF199:
	.string	"DEFINE_ATTR"
.LASF201:
	.string	"SET_ATTR"
.LASF126:
	.string	"TCmode"
.LASF516:
	.string	"x_nonlocal_labels"
.LASF796:
	.string	"less_p"
.LASF794:
	.string	"abs_inc"
.LASF276:
	.string	"UNSIGNED_FLOAT"
.LASF366:
	.string	"REG_FRAME_RELATED_EXPR"
.LASF423:
	.string	"cselib_val_struct"
.LASF398:
	.string	"NOTE_INSN_EXPECTED_VALUE"
.LASF70:
	.string	"_IO_write_ptr"
.LASF747:
	.string	"PRED_OPCODE_POSITIVE"
.LASF248:
	.string	"ROTATE"
.LASF655:
	.string	"maybe_dead"
.LASF334:
	.string	"succ"
.LASF430:
	.string	"refs"
.LASF869:
	.string	"reg1"
.LASF272:
	.string	"TRUNCATE"
.LASF698:
	.string	"may_not_optimize"
.LASF359:
	.string	"REG_DEP_ANTI"
.LASF123:
	.string	"SCmode"
.LASF886:
	.string	"rtx_length"
.LASF778:
	.string	"unroll_type"
.LASF409:
	.string	"GR_VIRTUAL_STACK_DYNAMIC"
.LASF113:
	.string	"PDImode"
.LASF380:
	.string	"NOTE_INSN_BLOCK_END"
.LASF880:
	.string	"addr_combined_regs"
.LASF647:
	.string	"combined_with"
.LASF420:
	.string	"bitmap"
.LASF389:
	.string	"NOTE_INSN_DELETED_LABEL"
.LASF888:
	.string	"rtx_class"
.LASF816:
	.string	"last_iteration"
.LASF343:
	.string	"flags"
.LASF467:
	.string	"x_regno_reg_rtx"
.LASF176:
	.string	"EXPR_LIST"
.LASF203:
	.string	"EQ_ATTR"
.LASF623:
	.string	"shared"
.LASF156:
	.string	"CCGOCmode"
.LASF234:
	.string	"CONCAT"
.LASF602:
	.string	"pred_next"
.LASF302:
	.string	"min_after_vec"
.LASF792:
	.string	"diff"
.LASF63:
	.string	"FILE"
.LASF240:
	.string	"COND"
.LASF594:
	.string	"simple_bitmap_def"
.LASF754:
	.string	"NOT_TAKEN"
.LASF166:
	.string	"MODE_PARTIAL_INT"
.LASF532:
	.string	"x_parm_birth_insn"
.LASF696:
	.string	"n_times_set"
.LASF534:
	.string	"x_max_parm_reg"
.LASF15:
	.string	"tree"
.LASF689:
	.string	"regs"
.LASF124:
	.string	"DCmode"
.LASF663:
	.string	"same"
.LASF738:
	.string	"PRED_LOOP_ITERATIONS"
.LASF832:
	.string	"orig_loop_end"
.LASF191:
	.string	"DEFINE_COMBINE"
.LASF899:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF661:
	.string	"ext_dependent"
.LASF740:
	.string	"PRED_NORETURN"
.LASF526:
	.string	"x_tail_recursion_reentry"
.LASF744:
	.string	"PRED_LOOP_PRECONDITIONING"
.LASF249:
	.string	"ASHIFTRT"
.LASF779:
	.string	"loop_preconditioned"
.LASF836:
	.string	"add1"
.LASF154:
	.string	"CCmode"
.LASF332:
	.string	"end_tree"
.LASF32:
	.string	"FLOAT_REGS"
.LASF745:
	.string	"PRED_LOOP_HEADER"
.LASF382:
	.string	"NOTE_INSN_LOOP_END"
.LASF718:
	.string	"comparison_code"
.LASF152:
	.string	"V16SFmode"
.LASF396:
	.string	"NOTE_INSN_LIVE"
.LASF196:
	.string	"DEFINE_COND_EXEC"
.LASF74:
	.string	"_IO_save_base"
.LASF847:
	.string	"regnum"
.LASF585:
	.string	"OPTAB_DIRECT"
.LASF788:
	.string	"diff_vec_p"
.LASF473:
	.string	"var_refs_queue"
.LASF812:
	.string	"init_reg_map"
.LASF494:
	.string	"x_stack_pointer_delta"
.LASF677:
	.string	"nonneg"
.LASF192:
	.string	"DEFINE_EXPAND"
.LASF565:
	.string	"is_thunk"
.LASF441:
	.string	"elements_used"
.LASF143:
	.string	"V8SImode"
.LASF518:
	.string	"x_nonlocal_goto_handler_labels"
.LASF657:
	.string	"unrolled"
.LASF205:
	.string	"INSN"
.LASF316:
	.string	"rtint"
.LASF860:
	.string	"loop_iterations"
.LASF235:
	.string	"LABEL_REF"
.LASF358:
	.string	"REG_LABEL"
.LASF708:
	.string	"has_nonconst_call"
.LASF437:
	.string	"elt_list"
.LASF682:
	.string	"BASIC_INDUCT"
.LASF855:
	.string	"find_common_reg_term"
.LASF346:
	.string	"REG_DEAD"
.LASF828:
	.string	"result"
.LASF386:
	.string	"NOTE_INSN_FUNCTION_END"
.LASF88:
	.string	"__pad2"
.LASF883:
	.string	"mode_size"
.LASF349:
	.string	"REG_EQUAL"
.LASF0:
	.string	"code"
.LASF599:
	.string	"regset"
.LASF785:
	.string	"block_ends"
.LASF752:
	.string	"END_PREDICTORS"
.LASF641:
	.string	"dest_reg"
.LASF676:
	.string	"eliminable"
.LASF723:
	.string	"mems"
.LASF457:
	.string	"min_insnno"
.LASF783:
	.string	"loop_end"
.LASF155:
	.string	"CCGCmode"
.LASF338:
	.string	"global_live_at_end"
.LASF854:
	.string	"subtract_reg_term"
.LASF691:
	.string	"list"
.LASF231:
	.string	"SCRATCH"
.LASF141:
	.string	"V8QImode"
.LASF144:
	.string	"V8DImode"
.LASF172:
	.string	"MAX_MODE_CLASS"
.LASF892:
	.string	"reg_n_info"
.LASF709:
	.string	"has_volatile"
.LASF856:
	.string	"op00"
.LASF857:
	.string	"op01"
.LASF664:
	.string	"const_adjust"
.LASF270:
	.string	"SIGN_EXTEND"
.LASF557:
	.string	"calls_setjmp"
.LASF774:
	.string	"maxregnum"
.LASF465:
	.string	"local_return_label"
.LASF824:
	.string	"value"
.LASF889:
	.string	"const_int_rtx"
.LASF292:
	.string	"VEC_DUPLICATE"
.LASF519:
	.string	"x_nonlocal_goto_stack_level"
.LASF95:
	.string	"_next"
.LASF833:
	.string	"fold_rtx_mult_add"
.LASF310:
	.string	"expr"
.LASF858:
	.string	"op10"
.LASF392:
	.string	"NOTE_INSN_EH_REGION_END"
.LASF643:
	.string	"mult_val"
.LASF517:
	.string	"x_nonlocal_goto_handler_slots"
.LASF150:
	.string	"V8SFmode"
.LASF456:
	.string	"insn_map"
.LASF637:
	.string	"insn"
.LASF23:
	.string	"DIREG"
.LASF703:
	.string	"loop_movables"
.LASF357:
	.string	"REG_CC_USER"
.LASF214:
	.string	"ASM_OPERANDS"
.LASF890:
	.string	"global_rtl"
.LASF537:
	.string	"x_temp_slot_level"
.LASF804:
	.string	"tries"
.LASF158:
	.string	"CCZmode"
.LASF383:
	.string	"NOTE_INSN_LOOP_CONT"
.LASF27:
	.string	"INDEX_REGS"
.LASF749:
	.string	"PRED_FPOPCODE"
.LASF877:
	.string	"loop_cont"
.LASF588:
	.string	"OPTAB_LIB_WIDEN"
.LASF563:
	.string	"contains_functions"
.LASF706:
	.string	"has_call"
.LASF502:
	.string	"varasm"
.LASF372:
	.string	"REG_NON_LOCAL_GOTO"
.LASF218:
	.string	"ADDR_DIFF_VEC"
.LASF280:
	.string	"ZERO_EXTRACT"
.LASF416:
	.string	"hint"
.LASF213:
	.string	"ASM_INPUT"
.LASF263:
	.string	"ORDERED"
.LASF151:
	.string	"V8DFmode"
.LASF475:
	.string	"promoted_mode"
.LASF826:
	.string	"unroll_loop"
.LASF711:
	.string	"has_multiple_exit_targets"
.LASF458:
	.string	"max_insnno"
.LASF440:
	.string	"num_elements"
.LASF277:
	.string	"UNSIGNED_FIX"
.LASF870:
	.string	"reg2"
.LASF743:
	.string	"PRED_LOOP_CONDITION"
.LASF554:
	.string	"returns_pcc_struct"
.LASF730:
	.string	"movables"
.LASF47:
	.string	"sse_words"
.LASF29:
	.string	"GENERAL_REGS"
.LASF621:
	.string	"level"
.LASF719:
	.string	"n_iterations"
.LASF443:
	.string	"name"
.LASF177:
	.string	"INSN_LIST"
.LASF96:
	.string	"_sbuf"
.LASF285:
	.string	"RANGE_VAR"
.LASF436:
	.string	"changes_mode"
.LASF713:
	.string	"comparison_value"
.LASF76:
	.string	"_IO_save_end"
.LASF164:
	.string	"MODE_INT"
.LASF442:
	.string	"element_size"
.LASF509:
	.string	"arg_offset_rtx"
.LASF2:
	.string	"jump"
.LASF46:
	.string	"regno"
.LASF491:
	.string	"expr_status"
.LASF561:
	.string	"has_nonlocal_label"
.LASF687:
	.string	"type"
.LASF286:
	.string	"RANGE_LIVE"
.LASF492:
	.string	"x_pending_stack_adjust"
.LASF134:
	.string	"V2HImode"
.LASF506:
	.string	"args_size"
.LASF9:
	.string	"frame_related"
.LASF422:
	.string	"const_equiv"
.LASF694:
	.string	"loop_reg"
.LASF802:
	.string	"src_insn"
.LASF808:
	.string	"calculate_giv_inc"
.LASF427:
	.string	"last_uid"
.LASF320:
	.string	"rt_addr_diff_vec_flags"
.LASF867:
	.string	"reg_term"
.LASF406:
	.string	"GR_ARG_POINTER"
.LASF16:
	.string	"sizetype"
.LASF36:
	.string	"FP_SECOND_SSE_REGS"
.LASF295:
	.string	"SS_MINUS"
.LASF670:
	.string	"total_benefit"
.LASF182:
	.string	"MATCH_PARALLEL"
.LASF139:
	.string	"V4SImode"
.LASF5:
	.string	"volatil"
.LASF348:
	.string	"REG_EQUIV"
.LASF470:
	.string	"last_pc_value"
.LASF57:
	.string	"short unsigned int"
.LASF821:
	.string	"giv_dest_reg"
.LASF58:
	.string	"signed char"
.LASF181:
	.string	"MATCH_OPERATOR"
.LASF772:
	.string	"local_regno"
.LASF628:
	.string	"start"
.LASF798:
	.string	"incremented_initval"
.LASF439:
	.string	"varray_head_tag"
.LASF327:
	.string	"current"
.LASF817:
	.string	"copy_notes_from"
.LASF874:
	.string	"set_dominates_use"
.LASF865:
	.string	"compare_dir"
.LASF486:
	.string	"x_cur_insn_uid"
.LASF533:
	.string	"x_last_parm_insn"
.LASF297:
	.string	"SS_TRUNCATE"
.LASF362:
	.string	"REG_EXEC_COUNT"
.LASF710:
	.string	"has_tablejump"
.LASF662:
	.string	"next_iv"
.LASF542:
	.string	"no_debugging_symbols"
.LASF587:
	.string	"OPTAB_WIDEN"
.LASF301:
	.string	"base_after_vec"
.LASF186:
	.string	"DEFINE_INSN"
.LASF781:
	.string	"last_loop_insn"
.LASF61:
	.string	"__off64_t"
.LASF140:
	.string	"V4DImode"
.LASF340:
	.string	"loop_depth"
.LASF656:
	.string	"auto_inc_opt"
.LASF68:
	.string	"_IO_read_base"
.LASF39:
	.string	"INT_SSE_REGS"
.LASF86:
	.string	"_offset"
.LASF636:
	.string	"induction"
.LASF407:
	.string	"GR_VIRTUAL_INCOMING_ARGS"
.LASF626:
	.string	"cont"
.LASF488:
	.string	"x_last_filename"
.LASF360:
	.string	"REG_DEP_OUTPUT"
.LASF73:
	.string	"_IO_buf_end"
.LASF595:
	.string	"n_bits"
.LASF766:
	.string	"copy_end"
.LASF195:
	.string	"DEFINE_ASM_ATTRIBUTES"
.LASF296:
	.string	"US_MINUS"
.LASF633:
	.string	"g_types"
.LASF511:
	.string	"return_rtx"
.LASF35:
	.string	"FP_TOP_SSE_REGS"
.LASF748:
	.string	"PRED_OPCODE_NONEQUAL"
.LASF279:
	.string	"SIGN_EXTRACT"
.LASF8:
	.string	"integrated"
.LASF433:
	.string	"live_length"
.LASF220:
	.string	"CLOBBER"
.LASF601:
	.string	"edge_def"
.LASF92:
	.string	"_mode"
.LASF170:
	.string	"MODE_VECTOR_INT"
.LASF69:
	.string	"_IO_write_base"
.LASF364:
	.string	"REG_SAVE_AREA"
.LASF288:
	.string	"CALL_PLACEHOLDER"
.LASF895:
	.string	"uid_luid"
.LASF499:
	.string	"function"
.LASF148:
	.string	"V4SFmode"
.LASF566:
	.string	"instrument_entry_exit"
.LASF529:
	.string	"x_frame_offset"
.LASF634:
	.string	"DEST_ADDR"
.LASF758:
	.string	"unroll_types"
.LASF242:
	.string	"PLUS"
.LASF811:
	.string	"copy"
.LASF791:
	.string	"copy_end_luid"
.LASF258:
	.string	"POST_DEC"
.LASF592:
	.string	"bits"
.LASF105:
	.string	"HImode"
.LASF344:
	.string	"rtunion"
.LASF385:
	.string	"NOTE_INSN_LOOP_END_TOP_COND"
.LASF168:
	.string	"MODE_COMPLEX_INT"
.LASF577:
	.string	"eh_status"
.LASF478:
	.string	"sequence_stack"
.LASF53:
	.string	"long int"
.LASF411:
	.string	"GR_VIRTUAL_CFA"
.LASF350:
	.string	"REG_WAS_0"
.LASF769:
	.string	"max_labelno"
.LASF371:
	.string	"REG_NORETURN"
.LASF94:
	.string	"_IO_marker"
.LASF119:
	.string	"XFmode"
.LASF556:
	.string	"needs_context"
.LASF370:
	.string	"REG_MAYBE_DEAD"
.LASF149:
	.string	"V4DFmode"
.LASF644:
	.string	"add_val"
.LASF848:
	.string	"reg_dead_after_loop"
.LASF4:
	.string	"unchanging"
.LASF345:
	.string	"reg_note"
.LASF560:
	.string	"calls_eh_return"
.LASF789:
	.string	"label"
.LASF539:
	.string	"x_target_temp_slot_level"
.LASF756:
	.string	"_factor"
.LASF507:
	.string	"pretend_args_size"
.LASF463:
	.string	"copy_asm_operands_vector"
.LASF693:
	.string	"optimize"
.LASF173:
	.string	"rtx_code"
.LASF51:
	.string	"CUMULATIVE_ARGS"
.LASF768:
	.string	"pattern"
.LASF479:
	.string	"last"
.LASF569:
	.string	"varargs"
.LASF838:
	.string	"biv_total_increment"
.LASF459:
	.string	"const_equiv_varray"
.LASF805:
	.string	"egress"
.LASF20:
	.string	"CREG"
.LASF455:
	.string	"label_map"
.LASF571:
	.string	"x_whole_function_mode_p"
.LASF707:
	.string	"has_libcall"
.LASF620:
	.string	"depth"
.LASF174:
	.string	"UNKNOWN"
.LASF216:
	.string	"UNSPEC_VOLATILE"
.LASF692:
	.string	"loop_mem_info"
.LASF583:
	.string	"language_function"
.LASF388:
	.string	"NOTE_INSN_EPILOGUE_BEG"
.LASF55:
	.string	"long unsigned int"
.LASF11:
	.string	"rtx_def"
.LASF115:
	.string	"HFmode"
.LASF839:
	.string	"find_splittable_regs"
.LASF545:
	.string	"inl_last_parm_insn"
.LASF223:
	.string	"TRAP_IF"
.LASF864:
	.string	"increment_dir"
.LASF773:
	.string	"max_local_regnum"
.LASF625:
	.string	"vtop"
.LASF432:
	.string	"deaths"
.LASF827:
	.string	"emit_unrolled_add"
.LASF368:
	.string	"REG_EH_REGION"
.LASF535:
	.string	"x_parm_reg_stack_loc"
.LASF627:
	.string	"cont_dominator"
.LASF351:
	.string	"REG_RETVAL"
.LASF784:
	.string	"block_begins"
.LASF127:
	.string	"CQImode"
.LASF62:
	.string	"char"
.LASF729:
	.string	"first_loop_store_insn"
.LASF553:
	.string	"returns_struct"
.LASF125:
	.string	"XCmode"
.LASF527:
	.string	"x_arg_pointer_save_area"
.LASF725:
	.string	"mems_allocated"
.LASF18:
	.string	"AREG"
.LASF635:
	.string	"DEST_REG"
.LASF525:
	.string	"x_tail_recursion_label"
.LASF461:
	.string	"inline_target"
.LASF666:
	.string	"last_use"
.LASF72:
	.string	"_IO_buf_base"
.LASF551:
	.string	"language"
.LASF251:
	.string	"ROTATERT"
.LASF851:
	.string	"final_biv_value"
.LASF237:
	.string	"ADDRESSOF"
.LASF631:
	.string	"exit_labels"
.LASF373:
	.string	"REG_SETJMP"
.LASF624:
	.string	"invalid"
.LASF702:
	.string	"multiple_uses"
.LASF133:
	.string	"V2QImode"
.LASF482:
	.string	"x_reg_rtx_no"
.LASF111:
	.string	"PHImode"
.LASF67:
	.string	"_IO_read_end"
.LASF474:
	.string	"modified"
.LASF490:
	.string	"regno_decl"
.LASF589:
	.string	"OPTAB_MUST_WIDEN"
.LASF425:
	.string	"reg_info_def"
.LASF132:
	.string	"COImode"
.LASF667:
	.string	"iv_class"
.LASF256:
	.string	"PRE_DEC"
.LASF64:
	.string	"_IO_FILE"
.LASF852:
	.string	"final_giv_value"
.LASF387:
	.string	"NOTE_INSN_PROLOGUE_END"
.LASF795:
	.string	"neg_inc"
.LASF405:
	.string	"GR_HARD_FRAME_POINTER"
.LASF793:
	.string	"labels"
.LASF356:
	.string	"REG_CC_SETTER"
.LASF559:
	.string	"calls_alloca"
.LASF586:
	.string	"OPTAB_LIB"
.LASF538:
	.string	"x_var_temp_slot_level"
.LASF163:
	.string	"MODE_RANDOM"
.LASF294:
	.string	"US_PLUS"
.LASF612:
	.string	"num_pre_header_edges"
.LASF153:
	.string	"BLKmode"
.LASF122:
	.string	"HCmode"
.LASF651:
	.string	"always_computable"
.LASF722:
	.string	"store_mems"
.LASF872:
	.string	"temp2"
.LASF446:
	.string	"equiv_table"
.LASF228:
	.string	"CONST_STRING"
.LASF291:
	.string	"VEC_CONCAT"
.LASF800:
	.string	"cmp_code"
.LASF312:
	.string	"size"
.LASF87:
	.string	"__pad1"
.LASF89:
	.string	"__pad3"
.LASF90:
	.string	"__pad4"
.LASF91:
	.string	"__pad5"
.LASF363:
	.string	"REG_NOALIAS"
.LASF204:
	.string	"ATTR_FLAG"
.LASF160:
	.string	"CCFPUmode"
.LASF683:
	.string	"NOT_BASIC_INDUCT"
.LASF347:
	.string	"REG_INC"
.LASF194:
	.string	"DEFINE_FUNCTION_UNIT"
.LASF844:
	.string	"last_addr"
.LASF598:
	.string	"sbitmap"
.LASF530:
	.string	"x_context_display"
.LASF77:
	.string	"_markers"
.LASF97:
	.string	"_pos"
.LASF810:
	.string	"notes"
.LASF198:
	.string	"ADDRESS"
.LASF604:
	.string	"insns"
.LASF543:
	.string	"original_arg_vector"
.LASF618:
	.string	"num_exits"
.LASF575:
	.string	"uses_eh_lsda"
.LASF648:
	.string	"replaceable"
.LASF617:
	.string	"exit_edges"
.LASF419:
	.string	"cptr"
.LASF325:
	.string	"bitmap_head_def"
.LASF614:
	.string	"num_nodes"
.LASF680:
	.string	"iv_mode"
.LASF765:
	.string	"copy_start"
.LASF846:
	.string	"biv_initial_value"
.LASF434:
	.string	"calls_crossed"
.LASF298:
	.string	"US_TRUNCATE"
.LASF400:
	.string	"global_rtl_index"
.LASF45:
	.string	"nregs"
.LASF293:
	.string	"SS_PLUS"
.LASF255:
	.string	"UMAX"
.LASF34:
	.string	"MMX_REGS"
.LASF307:
	.string	"scale"
.LASF104:
	.string	"QImode"
.LASF819:
	.string	"final_label"
.LASF834:
	.string	"mult1"
.LASF835:
	.string	"mult2"
.LASF444:
	.string	"data"
.LASF403:
	.string	"GR_STACK_POINTER"
.LASF453:
	.string	"block_map"
.LASF460:
	.string	"const_age"
.LASF638:
	.string	"new_reg"
.LASF116:
	.string	"TQFmode"
.LASF330:
	.string	"head"
.LASF44:
	.string	"words"
.LASF878:
	.string	"label_ref"
.LASF304:
	.string	"min_after_base"
.LASF421:
	.string	"sched"
.LASF674:
	.string	"init_set"
.LASF859:
	.string	"op11"
.LASF572:
	.string	"x_dont_save_pending_sizes_p"
.LASF43:
	.string	"ix86_args"
.LASF822:
	.string	"giv_src_reg"
.LASF451:
	.string	"fndecl"
.LASF17:
	.string	"NO_REGS"
.LASF894:
	.string	"cfun"
.LASF508:
	.string	"outgoing_args_size"
.LASF900:
	.string	"unroll.c"
.LASF109:
	.string	"OImode"
.LASF369:
	.string	"REG_SAVE_NOTE"
.LASF596:
	.string	"bytes"
.LASF253:
	.string	"SMAX"
.LASF412:
	.string	"GR_MAX"
.LASF290:
	.string	"VEC_SELECT"
.LASF353:
	.string	"REG_NONNEG"
.LASF549:
	.string	"stack_alignment_needed"
.LASF891:
	.string	"global_const_equiv_varray"
.LASF481:
	.string	"emit_status"
.LASF649:
	.string	"not_replaceable"
.LASF171:
	.string	"MODE_VECTOR_FLOAT"
.LASF261:
	.string	"POST_MODIFY"
.LASF861:
	.string	"comparison"
.LASF737:
	.string	"PRED_UNCONDITIONAL"
.LASF806:
	.string	"retry"
.LASF365:
	.string	"REG_BR_PRED"
.LASF734:
	.string	"PRED_DS_THEORY"
.LASF187:
	.string	"DEFINE_PEEPHOLE"
.LASF98:
	.string	"long long unsigned int"
.LASF394:
	.string	"NOTE_INSN_RANGE_BEG"
.LASF311:
	.string	"offset"
.LASF308:
	.string	"addr_diff_vec_flags"
.LASF82:
	.string	"_cur_column"
.LASF183:
	.string	"MATCH_OP_DUP"
.LASF197:
	.string	"SEQUENCE"
.LASF114:
	.string	"QFmode"
.LASF472:
	.string	"compare_mode"
.LASF429:
	.string	"sets"
.LASF510:
	.string	"args_info"
.LASF568:
	.string	"limit_stack"
.LASF224:
	.string	"RESX"
.LASF447:
	.string	"dest"
.LASF212:
	.string	"PARALLEL"
.LASF751:
	.string	"PRED_ERROR_RETURN"
.LASF13:
	.string	"num_elem"
.LASF728:
	.string	"num_mem_sets"
.LASF75:
	.string	"_IO_backup_base"
.LASF262:
	.string	"UNORDERED"
.LASF161:
	.string	"MAX_MACHINE_MODE"
.LASF66:
	.string	"_IO_read_ptr"
.LASF893:
	.string	"flag_unroll_all_loops"
.LASF645:
	.string	"benefit"
.LASF701:
	.string	"array"
.LASF337:
	.string	"global_live_at_start"
.LASF40:
	.string	"FLOAT_INT_SSE_REGS"
.LASF179:
	.string	"MATCH_SCRATCH"
.LASF229:
	.string	"CONST"
.LASF466:
	.string	"regno_pointer_align"
.LASF278:
	.string	"SQRT"
.LASF681:
	.string	"UNKNOWN_INDUCT"
.LASF402:
	.string	"GR_CC0"
.LASF162:
	.string	"mode_class"
.LASF654:
	.string	"cant_derive"
.LASF244:
	.string	"MULT"
.LASF167:
	.string	"MODE_CC"
.LASF335:
	.string	"local_set"
.LASF110:
	.string	"PQImode"
.LASF480:
	.string	"sequence_rtl_expr"
.LASF843:
	.string	"orig_addr"
.LASF622:
	.string	"inner"
.LASF142:
	.string	"V8HImode"
.LASF536:
	.string	"x_temp_slots"
.LASF608:
	.string	"header"
.LASF523:
	.string	"x_stack_slot_list"
.LASF81:
	.string	"_old_offset"
.LASF207:
	.string	"CALL_INSN"
.LASF735:
	.string	"PRED_FIRST_MATCH"
.LASF232:
	.string	"SUBREG"
.LASF829:
	.string	"precondition_loop_p"
.LASF558:
	.string	"calls_longjmp"
.LASF145:
	.string	"V16QImode"
.LASF672:
	.string	"initial_test"
.LASF611:
	.string	"pre_header_edges"
.LASF374:
	.string	"REG_ALWAYS_RETURN"
.LASF503:
	.string	"decl"
.LASF777:
	.string	"splitting_not_safe"
.LASF99:
	.string	"long long int"
.LASF757:
	.string	"factor"
.LASF352:
	.string	"REG_LIBCALL"
.LASF80:
	.string	"_flags2"
.LASF629:
	.string	"scan_start"
.LASF121:
	.string	"QCmode"
.LASF230:
	.string	"VALUE"
.LASF210:
	.string	"NOTE"
.LASF690:
	.string	"n_regs"
.LASF48:
	.string	"sse_nregs"
.LASF254:
	.string	"UMIN"
.LASF180:
	.string	"MATCH_DUP"
.LASF716:
	.string	"iteration_var"
.LASF831:
	.string	"target_insn"
.LASF329:
	.string	"basic_block_def"
.LASF830:
	.string	"back_branch_in_range_p"
.LASF736:
	.string	"PRED_NO_PREDICTION"
.LASF875:
	.string	"passed_jump"
.LASF679:
	.string	"all_reduced"
.LASF579:
	.string	"varasm_status"
.LASF7:
	.string	"used"
.LASF876:
	.string	"ujump_to_loop_cont"
.LASF755:
	.string	"TAKEN"
.LASF607:
	.string	"loop"
.LASF771:
	.string	"local_label"
.LASF381:
	.string	"NOTE_INSN_LOOP_BEG"
.LASF593:
	.string	"bitmap_element"
.LASF515:
	.string	"x_function_call_count"
.LASF591:
	.string	"prev"
.LASF128:
	.string	"CHImode"
.LASF397:
	.string	"NOTE_INSN_BASIC_BLOCK"
.LASF202:
	.string	"SET_ATTR_ALTERNATIVE"
.LASF489:
	.string	"regno_pointer_align_length"
.LASF484:
	.string	"x_first_insn"
.LASF671:
	.string	"initial_value"
.LASF496:
	.string	"x_apply_args_value"
.LASF452:
	.string	"insns_at_start"
.LASF38:
	.string	"FLOAT_INT_REGS"
.LASF226:
	.string	"CONST_DOUBLE"
.LASF426:
	.string	"first_uid"
.LASF157:
	.string	"CCNOmode"
.LASF138:
	.string	"V4HImode"
.LASF632:
	.string	"exit_count"
.LASF450:
	.string	"integrating"
.LASF264:
	.string	"UNEQ"
.LASF247:
	.string	"ASHIFT"
.LASF252:
	.string	"SMIN"
.LASF801:
	.string	"__FUNCTION__"
.LASF239:
	.string	"IF_THEN_ELSE"
.LASF660:
	.string	"derive_adjustment"
.LASF393:
	.string	"NOTE_INSN_REPEATED_LINE_NUMBER"
.LASF504:
	.string	"outer"
.LASF390:
	.string	"NOTE_INSN_FUNCTION_BEG"
.LASF487:
	.string	"x_last_linenum"
.LASF642:
	.string	"location"
.LASF52:
	.string	"unsigned int"
.LASF902:
	.string	"tree_node"
.LASF787:
	.string	"note"
.LASF520:
	.string	"x_cleanup_label"
.LASF303:
	.string	"max_after_vec"
.LASF265:
	.string	"UNGE"
.LASF584:
	.string	"optab_methods"
.LASF59:
	.string	"short int"
.LASF333:
	.string	"pred"
.LASF266:
	.string	"UNGT"
.LASF564:
	.string	"has_computed_jump"
.LASF485:
	.string	"x_last_insn"
.LASF658:
	.string	"no_const_addval"
.LASF567:
	.string	"profile"
.LASF83:
	.string	"_vtable_offset"
.LASF818:
	.string	"dest_reg_was_split"
.LASF726:
	.string	"unknown_address_altered"
.LASF550:
	.string	"preferred_stack_boundary"
.LASF102:
	.string	"VOIDmode"
.LASF375:
	.string	"REG_VTABLE_REF"
.LASF410:
	.string	"GR_VIRTUAL_OUTGOING_ARGS"
.LASF282:
	.string	"LO_SUM"
.LASF845:
	.string	"find_splittable_givs"
.LASF767:
	.string	"sequence"
.LASF342:
	.string	"frequency"
.LASF315:
	.string	"rtwint"
.LASF790:
	.string	"copy_start_luid"
.LASF603:
	.string	"succ_next"
.LASF896:
	.string	"max_uid_for_loop"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
