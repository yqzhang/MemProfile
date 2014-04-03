	.file	"cppfiles.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 cppfiles.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.globl	_cpp_init_includes
	.type	_cpp_init_includes, @function
_cpp_init_includes:
.LFB8:
	.file 1 "cppfiles.c"
	.loc 1 151 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# pfile, pfile
	.loc 1 153 0
	movl	$destroy_node, %edx	#,
	movl	$free, %esi	#,
	movl	$strcmp, %edi	#,
	call	splay_tree_new	#
	movq	-8(%rbp), %rdx	# pfile, tmp60
	movq	%rax, 280(%rdx)	# D.8610, pfile_2(D)->all_include_files
	.loc 1 156 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	_cpp_init_includes, .-_cpp_init_includes
	.globl	_cpp_cleanup_includes
	.type	_cpp_cleanup_includes, @function
_cpp_cleanup_includes:
.LFB9:
	.loc 1 162 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# pfile, pfile
	.loc 1 163 0
	movq	-8(%rbp), %rax	# pfile, tmp60
	movq	280(%rax), %rax	# pfile_1(D)->all_include_files, D.8611
	movq	%rax, %rdi	# D.8611,
	call	splay_tree_delete	#
	.loc 1 164 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	_cpp_cleanup_includes, .-_cpp_cleanup_includes
	.type	destroy_node, @function
destroy_node:
.LFB10:
	.loc 1 170 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# v, v
	.loc 1 171 0
	movq	-24(%rbp), %rax	# v, tmp59
	movq	%rax, -8(%rbp)	# tmp59, f
	.loc 1 173 0
	cmpq	$0, -8(%rbp)	#, f
	je	.L3	#,
	.loc 1 175 0
	movq	-8(%rbp), %rax	# f, tmp60
	movq	%rax, %rdi	# tmp60,
	call	purge_cache	#
	.loc 1 176 0
	movq	-8(%rbp), %rax	# f, tmp61
	movq	%rax, %rdi	# tmp61,
	call	free	#
.L3:
	.loc 1 178 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	destroy_node, .-destroy_node
	.globl	_cpp_never_reread
	.type	_cpp_never_reread, @function
_cpp_never_reread:
.LFB11:
	.loc 1 184 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# file, file
	.loc 1 185 0
	movq	-8(%rbp), %rax	# file, tmp59
	movq	$-1, 8(%rax)	#, file_1(D)->cmacro
	.loc 1 186 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	_cpp_never_reread, .-_cpp_never_reread
	.type	find_or_create_entry, @function
find_or_create_entry:
.LFB12:
	.loc 1 195 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# pfile, pfile
	movq	%rsi, -48(%rbp)	# fname, fname
	.loc 1 198 0
	movq	-48(%rbp), %rax	# fname, tmp69
	movq	%rax, %rdi	# tmp69,
	call	xstrdup	#
	movq	%rax, -16(%rbp)	# tmp70, name
	.loc 1 200 0
	movq	-16(%rbp), %rax	# name, tmp71
	movq	%rax, %rdi	# tmp71,
	call	_cpp_simplify_pathname	#
	.loc 1 201 0
	movq	-16(%rbp), %rdx	# name, name.0
	movq	-40(%rbp), %rax	# pfile, tmp72
	movq	280(%rax), %rax	# pfile_5(D)->all_include_files, D.8612
	movq	%rdx, %rsi	# name.0,
	movq	%rax, %rdi	# D.8612,
	call	splay_tree_lookup	#
	movq	%rax, -24(%rbp)	# tmp73, node
	.loc 1 202 0
	cmpq	$0, -24(%rbp)	#, node
	je	.L7	#,
	.loc 1 203 0
	movq	-16(%rbp), %rax	# name, tmp74
	movq	%rax, %rdi	# tmp74,
	call	free	#
	jmp	.L8	#
.L7:
	.loc 1 206 0
	movl	$192, %esi	#,
	movl	$1, %edi	#,
	call	xcalloc	#
	movq	%rax, -8(%rbp)	# tmp75, file
	.loc 1 207 0
	movq	-8(%rbp), %rax	# file, tmp76
	movq	-16(%rbp), %rdx	# name, tmp77
	movq	%rdx, (%rax)	# tmp77, file_8->name
	.loc 1 208 0
	call	__errno_location	#
	movl	(%rax), %edx	# *_9, D.8614
	movq	-8(%rbp), %rax	# file, tmp78
	movl	%edx, 180(%rax)	# D.8614, file_8->err_no
	.loc 1 209 0
	movq	-8(%rbp), %rdx	# file, file.1
	.loc 1 210 0
	movq	-8(%rbp), %rax	# file, tmp79
	movq	(%rax), %rax	# file_8->name, D.8615
	.loc 1 209 0
	movq	%rax, %rcx	# D.8615, D.8616
	movq	-40(%rbp), %rax	# pfile, tmp80
	movq	280(%rax), %rax	# pfile_5(D)->all_include_files, D.8612
	movq	%rcx, %rsi	# D.8616,
	movq	%rax, %rdi	# D.8612,
	call	splay_tree_insert	#
	movq	%rax, -24(%rbp)	# tmp81, node
.L8:
	.loc 1 214 0
	movq	-24(%rbp), %rax	# node, D.8617
	.loc 1 215 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	find_or_create_entry, .-find_or_create_entry
	.globl	_cpp_fake_include
	.type	_cpp_fake_include, @function
_cpp_fake_include:
.LFB13:
	.loc 1 222 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# pfile, pfile
	movq	%rsi, -16(%rbp)	# fname, fname
	.loc 1 223 0
	movq	-16(%rbp), %rdx	# fname, tmp59
	movq	-8(%rbp), %rax	# pfile, tmp60
	movq	%rdx, %rsi	# tmp59,
	movq	%rax, %rdi	# tmp60,
	call	find_or_create_entry	#
	.loc 1 224 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	_cpp_fake_include, .-_cpp_fake_include
	.type	open_file, @function
open_file:
.LFB14:
	.loc 1 239 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# pfile, pfile
	movq	%rsi, -32(%rbp)	# filename, filename
	.loc 1 240 0
	movq	-32(%rbp), %rdx	# filename, tmp83
	movq	-24(%rbp), %rax	# pfile, tmp84
	movq	%rdx, %rsi	# tmp83,
	movq	%rax, %rdi	# tmp84,
	call	find_or_create_entry	#
	movq	%rax, -16(%rbp)	# tmp85, nd
	.loc 1 241 0
	movq	-16(%rbp), %rax	# nd, tmp86
	movq	8(%rax), %rax	# nd_4->value, D.8619
	movq	%rax, -8(%rbp)	# D.8619, file
	.loc 1 243 0
	movq	-8(%rbp), %rax	# file, tmp87
	movl	180(%rax), %eax	# file_6->err_no, D.8620
	testl	%eax, %eax	# D.8620
	je	.L12	#,
	.loc 1 246 0
	call	__errno_location	#
	movq	-8(%rbp), %rdx	# file, tmp88
	movl	180(%rdx), %edx	# file_6->err_no, D.8620
	movl	%edx, (%rax)	# D.8620, *_8
	.loc 1 247 0
	movl	$0, %eax	#, D.8618
	jmp	.L13	#
.L12:
	.loc 1 251 0
	movq	-8(%rbp), %rax	# file, tmp89
	movq	8(%rax), %rax	# file_6->cmacro, D.8622
	testq	%rax, %rax	# D.8622
	je	.L14	#,
	.loc 1 251 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# file, tmp90
	movq	8(%rax), %rax	# file_6->cmacro, D.8622
	cmpq	$-1, %rax	#, D.8622
	je	.L15	#,
	movq	-8(%rbp), %rax	# file, tmp91
	movq	8(%rax), %rax	# file_6->cmacro, D.8622
	movzbl	20(%rax), %eax	# _13->type, D.8623
	cmpb	$1, %al	#, D.8623
	jne	.L14	#,
.L15:
	.loc 1 252 0 is_stmt 1
	movq	-8(%rbp), %rax	# file, D.8618
	jmp	.L13	#
.L14:
	.loc 1 255 0
	movq	-8(%rbp), %rax	# file, tmp92
	movq	24(%rax), %rax	# file_6->buffer, D.8624
	testq	%rax, %rax	# D.8624
	je	.L16	#,
	.loc 1 256 0
	movq	-8(%rbp), %rax	# file, D.8618
	jmp	.L13	#
.L16:
	.loc 1 272 0
	movq	-32(%rbp), %rax	# filename, tmp93
	movzbl	(%rax), %eax	# *filename_3(D), D.8625
	testb	%al, %al	# D.8625
	jne	.L17	#,
	.loc 1 273 0
	movq	-8(%rbp), %rax	# file, tmp94
	movl	$0, 176(%rax)	#, file_6->fd
	jmp	.L18	#
.L17:
	.loc 1 275 0
	movq	-8(%rbp), %rax	# file, tmp95
	movq	(%rax), %rax	# file_6->name, D.8626
	movl	$438, %edx	#,
	movl	$256, %esi	#,
	movq	%rax, %rdi	# D.8626,
	movl	$0, %eax	#,
	call	open	#
	movq	-8(%rbp), %rdx	# file, tmp96
	movl	%eax, 176(%rdx)	# D.8620, file_6->fd
.L18:
	.loc 1 277 0
	movq	-8(%rbp), %rax	# file, tmp97
	movl	176(%rax), %eax	# file_6->fd, D.8620
	cmpl	$-1, %eax	#, D.8620
	je	.L19	#,
	.loc 1 277 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# file, tmp98
	leaq	32(%rax), %rdx	#, D.8627
	movq	-8(%rbp), %rax	# file, tmp99
	movl	176(%rax), %eax	# file_6->fd, D.8620
	movq	%rdx, %rsi	# D.8627,
	movl	%eax, %edi	# D.8620,
	call	fstat	#
	testl	%eax, %eax	# D.8620
	jne	.L19	#,
	.loc 1 279 0 is_stmt 1
	movq	-8(%rbp), %rax	# file, tmp100
	movl	56(%rax), %eax	# file_6->st.st_mode, D.8628
	andl	$61440, %eax	#, D.8628
	cmpl	$16384, %eax	#, D.8628
	je	.L20	#,
	.loc 1 280 0
	movq	-8(%rbp), %rax	# file, D.8618
	jmp	.L13	#
.L20:
	.loc 1 285 0
	call	__errno_location	#
	movl	$2, (%rax)	#, *_28
	.loc 1 286 0
	movq	-8(%rbp), %rax	# file, tmp101
	movl	176(%rax), %eax	# file_6->fd, D.8620
	movl	%eax, %edi	# D.8620,
	call	close	#
	.loc 1 287 0
	movq	-8(%rbp), %rax	# file, tmp102
	movl	$-1, 176(%rax)	#, file_6->fd
.L19:
	.loc 1 290 0
	call	__errno_location	#
	movl	(%rax), %edx	# *_30, D.8620
	movq	-8(%rbp), %rax	# file, tmp103
	movl	%edx, 180(%rax)	# D.8620, file_6->err_no
	.loc 1 291 0
	movl	$0, %eax	#, D.8618
.L13:
	.loc 1 292 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	open_file, .-open_file
	.section	.rodata
.LC0:
	.string	"<stdin>"
	.text
	.type	stack_include_file, @function
stack_include_file:
.LFB15:
	.loc 1 302 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# pfile, pfile
	movq	%rsi, -48(%rbp)	# inc, inc
	.loc 1 307 0
	movq	-48(%rbp), %rax	# inc, tmp96
	movq	8(%rax), %rax	# inc_5(D)->cmacro, D.8630
	testq	%rax, %rax	# D.8630
	je	.L22	#,
	.loc 1 307 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# inc, tmp97
	movq	8(%rax), %rax	# inc_5(D)->cmacro, D.8630
	cmpq	$-1, %rax	#, D.8630
	je	.L23	#,
	movq	-48(%rbp), %rax	# inc, tmp98
	movq	8(%rax), %rax	# inc_5(D)->cmacro, D.8630
	movzbl	20(%rax), %eax	# _8->type, D.8631
	cmpb	$1, %al	#, D.8631
	jne	.L22	#,
.L23:
	.loc 1 308 0 is_stmt 1
	movl	$0, %eax	#, D.8629
	jmp	.L24	#
.L22:
	.loc 1 310 0
	movq	-48(%rbp), %rax	# inc, tmp99
	movq	16(%rax), %rax	# inc_5(D)->foundhere, D.8632
	testq	%rax, %rax	# D.8632
	je	.L25	#,
	.loc 1 310 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# inc, tmp100
	movq	16(%rax), %rax	# inc_5(D)->foundhere, D.8632
	movl	40(%rax), %edx	# _12->sysp, iftmp.2
	jmp	.L26	#
.L25:
	.loc 1 310 0 discriminator 2
	movl	$0, %edx	#, iftmp.2
.L26:
	.loc 1 310 0 discriminator 3
	movq	-40(%rbp), %rax	# pfile, tmp101
	movq	56(%rax), %rax	# pfile_15(D)->map, D.8633
	testq	%rax, %rax	# D.8633
	je	.L27	#,
	.loc 1 310 0 discriminator 1
	movq	-40(%rbp), %rax	# pfile, tmp102
	movq	56(%rax), %rax	# pfile_15(D)->map, D.8633
	movzbl	21(%rax), %eax	# _17->sysp, D.8631
	movzbl	%al, %eax	# D.8631, iftmp.3
	jmp	.L28	#
.L27:
	.loc 1 310 0 discriminator 2
	movl	$0, %eax	#, iftmp.3
.L28:
	.loc 1 310 0 discriminator 3
	cmpl	%eax, %edx	# iftmp.3, iftmp.2
	cmovge	%edx, %eax	# iftmp.2,, tmp103
	movl	%eax, -20(%rbp)	# tmp103, sysp
	.loc 1 314 0 is_stmt 1 discriminator 3
	movq	-40(%rbp), %rax	# pfile, tmp104
	movzbl	749(%rax), %eax	# pfile_15(D)->opts.print_deps, D.8631
	movzbl	%al, %eax	# D.8631, D.8634
	cmpl	-20(%rbp), %eax	# sysp, D.8634
	jle	.L29	#,
	.loc 1 314 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# inc, tmp105
	movzwl	184(%rax), %eax	# inc_5(D)->include_count, D.8635
	testw	%ax, %ax	# D.8635
	jne	.L29	#,
	.loc 1 315 0 is_stmt 1
	movq	-48(%rbp), %rax	# inc, tmp106
	movq	(%rax), %rdx	# inc_5(D)->name, D.8636
	movq	-40(%rbp), %rax	# pfile, tmp107
	movq	392(%rax), %rax	# pfile_15(D)->deps, D.8637
	movq	%rdx, %rsi	# D.8636,
	movq	%rax, %rdi	# D.8637,
	call	deps_add_dep	#
.L29:
	.loc 1 318 0
	movq	-48(%rbp), %rax	# inc, tmp108
	movq	24(%rax), %rax	# inc_5(D)->buffer, D.8638
	testq	%rax, %rax	# D.8638
	jne	.L30	#,
	.loc 1 320 0
	movq	-48(%rbp), %rdx	# inc, tmp109
	movq	-40(%rbp), %rax	# pfile, tmp110
	movq	%rdx, %rsi	# tmp109,
	movq	%rax, %rdi	# tmp110,
	call	read_include_file	#
	testl	%eax, %eax	# D.8634
	je	.L31	#,
	.loc 1 323 0
	movq	-48(%rbp), %rax	# inc, tmp111
	movq	%rax, %rdi	# tmp111,
	call	_cpp_never_reread	#
	.loc 1 324 0
	movl	$0, %eax	#, D.8629
	jmp	.L24	#
.L31:
	.loc 1 329 0
	movq	-48(%rbp), %rax	# inc, tmp112
	movl	56(%rax), %eax	# inc_5(D)->st.st_mode, D.8639
	andl	$61440, %eax	#, D.8639
	cmpl	$32768, %eax	#, D.8639
	jne	.L32	#,
	.loc 1 329 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# inc, tmp113
	movq	80(%rax), %rax	# inc_5(D)->st.st_size, D.8640
	testq	%rax, %rax	# D.8640
	jne	.L32	#,
	.loc 1 330 0 is_stmt 1
	movq	-48(%rbp), %rax	# inc, tmp114
	movq	%rax, %rdi	# tmp114,
	call	_cpp_never_reread	#
.L32:
	.loc 1 331 0
	movq	-48(%rbp), %rax	# inc, tmp115
	movl	176(%rax), %eax	# inc_5(D)->fd, D.8634
	movl	%eax, %edi	# D.8634,
	call	close	#
	.loc 1 332 0
	movq	-48(%rbp), %rax	# inc, tmp116
	movl	$-1, 176(%rax)	#, inc_5(D)->fd
.L30:
	.loc 1 335 0
	movq	-40(%rbp), %rax	# pfile, tmp117
	movq	(%rax), %rax	# pfile_15(D)->buffer, D.8641
	testq	%rax, %rax	# D.8641
	je	.L33	#,
	.loc 1 337 0
	movq	-48(%rbp), %rax	# inc, tmp118
	movzwl	184(%rax), %eax	# inc_5(D)->include_count, D.8635
	leal	1(%rax), %edx	#, D.8635
	movq	-48(%rbp), %rax	# inc, tmp119
	movw	%dx, 184(%rax)	# D.8635, inc_5(D)->include_count
.L33:
	.loc 1 341 0
	movq	-40(%rbp), %rax	# pfile, tmp120
	movzbl	771(%rax), %eax	# pfile_15(D)->opts.preprocessed, D.8631
	.loc 1 340 0
	movzbl	%al, %ecx	# D.8631, D.8634
	movq	-48(%rbp), %rax	# inc, tmp121
	movq	80(%rax), %rax	# inc_5(D)->st.st_size, D.8640
	movq	%rax, %rdx	# D.8640, D.8642
	movq	-48(%rbp), %rax	# inc, tmp122
	movq	24(%rax), %rsi	# inc_5(D)->buffer, D.8638
	movq	-40(%rbp), %rax	# pfile, tmp123
	movl	$0, %r8d	#,
	movq	%rax, %rdi	# tmp123,
	call	cpp_push_buffer	#
	movq	%rax, -8(%rbp)	# tmp124, fp
	.loc 1 342 0
	movq	-8(%rbp), %rax	# fp, tmp125
	movq	-48(%rbp), %rdx	# inc, tmp126
	movq	%rdx, 48(%rax)	# tmp126, fp_43->inc
	.loc 1 343 0
	movq	-8(%rbp), %rax	# fp, tmp127
	movq	48(%rax), %rax	# fp_43->inc, D.8643
	movzwl	186(%rax), %edx	# _44->refcnt, D.8635
	addl	$1, %edx	#, D.8635
	movw	%dx, 186(%rax)	# D.8635, _44->refcnt
	.loc 1 346 0
	movq	-40(%rbp), %rax	# pfile, tmp128
	movb	$1, 184(%rax)	#, pfile_15(D)->mi_valid
	.loc 1 347 0
	movq	-40(%rbp), %rax	# pfile, tmp129
	movq	$0, 168(%rax)	#, pfile_15(D)->mi_cmacro
	.loc 1 350 0
	movq	-48(%rbp), %rax	# inc, tmp130
	movq	(%rax), %rax	# inc_5(D)->name, tmp131
	movq	%rax, -16(%rbp)	# tmp131, filename
	.loc 1 351 0
	movq	-16(%rbp), %rax	# filename, tmp132
	movzbl	(%rax), %eax	# *filename_48, D.8644
	testb	%al, %al	# D.8644
	jne	.L34	#,
	.loc 1 352 0
	movq	$.LC0, -16(%rbp)	#, filename
.L34:
	.loc 1 353 0
	movl	-20(%rbp), %ecx	# sysp, sysp.4
	movq	-16(%rbp), %rdx	# filename, tmp133
	movq	-40(%rbp), %rax	# pfile, tmp134
	movl	%ecx, %r8d	# sysp.4,
	movl	$1, %ecx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp134,
	call	_cpp_do_file_change	#
	.loc 1 355 0
	movl	$1, %eax	#, D.8629
.L24:
	.loc 1 356 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	stack_include_file, .-stack_include_file
	.section	.rodata
.LC1:
	.string	"%s is shorter than expected"
.LC2:
	.string	"%s is a block device"
	.text
	.type	read_include_file, @function
read_include_file:
.LFB16:
	.loc 1 376 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# pfile, pfile
	movq	%rsi, -48(%rbp)	# inc, inc
	.loc 1 383 0
	movq	-48(%rbp), %rax	# inc, tmp93
	movl	56(%rax), %eax	# inc_10(D)->st.st_mode, D.8647
	andl	$61440, %eax	#, D.8647
	cmpl	$32768, %eax	#, D.8647
	jne	.L36	#,
	.loc 1 398 0
	movq	-48(%rbp), %rax	# inc, tmp94
	movq	80(%rax), %rax	# inc_10(D)->st.st_size, tmp95
	movq	%rax, -32(%rbp)	# tmp95, size
	.loc 1 400 0
	movq	-48(%rbp), %rax	# inc, tmp96
	movb	$0, 188(%rax)	#, inc_10(D)->mapped
	.loc 1 415 0
	movq	-32(%rbp), %rax	# size, tmp97
	addq	$1, %rax	#, D.8648
	movq	%rax, %rdi	# D.8649,
	call	xmalloc	#
	movq	%rax, -16(%rbp)	# tmp98, buf
	.loc 1 416 0
	movq	$0, -24(%rbp)	#, offset
	.loc 1 417 0
	jmp	.L37	#
.L42:
	.loc 1 419 0
	movq	-24(%rbp), %rax	# offset, tmp99
	movq	-32(%rbp), %rdx	# size, tmp100
	subq	%rax, %rdx	# tmp99, D.8648
	movq	%rdx, %rax	# D.8648, D.8648
	movq	%rax, %rdx	# D.8648, D.8649
	movq	-24(%rbp), %rcx	# offset, offset.5
	movq	-16(%rbp), %rax	# buf, tmp101
	addq	%rax, %rcx	# tmp101, D.8650
	movq	-48(%rbp), %rax	# inc, tmp102
	movl	176(%rax), %eax	# inc_10(D)->fd, D.8646
	movq	%rcx, %rsi	# D.8650,
	movl	%eax, %edi	# D.8646,
	call	read	#
	movq	%rax, -8(%rbp)	# tmp103, count
	.loc 1 420 0
	cmpq	$0, -8(%rbp)	#, count
	jns	.L38	#,
	.loc 1 421 0
	jmp	.L39	#
.L38:
	.loc 1 422 0
	cmpq	$0, -8(%rbp)	#, count
	jne	.L40	#,
	.loc 1 426 0
	movq	-48(%rbp), %rax	# inc, tmp104
	movq	(%rax), %rdx	# inc_10(D)->name, D.8651
	movq	-40(%rbp), %rax	# pfile, tmp105
	movl	$.LC1, %esi	#,
	movq	%rax, %rdi	# tmp105,
	movl	$0, %eax	#,
	call	cpp_warning	#
	.loc 1 427 0
	movq	-24(%rbp), %rax	# offset, tmp106
	movq	%rax, -32(%rbp)	# tmp106, size
	.loc 1 428 0
	movq	-32(%rbp), %rax	# size, tmp107
	addq	$1, %rax	#, D.8648
	movq	%rax, %rdx	# D.8648, D.8649
	movq	-16(%rbp), %rax	# buf, tmp108
	movq	%rdx, %rsi	# D.8649,
	movq	%rax, %rdi	# tmp108,
	call	xrealloc	#
	movq	%rax, -16(%rbp)	# tmp109, buf
	.loc 1 429 0
	movq	-48(%rbp), %rax	# inc, tmp110
	movq	-32(%rbp), %rdx	# size, tmp111
	movq	%rdx, 80(%rax)	# tmp111, inc_10(D)->st.st_size
	.loc 1 430 0
	jmp	.L41	#
.L40:
	.loc 1 432 0
	movq	-8(%rbp), %rax	# count, tmp112
	addq	%rax, -24(%rbp)	# tmp112, offset
.L37:
	.loc 1 417 0 discriminator 1
	movq	-24(%rbp), %rax	# offset, tmp113
	cmpq	-32(%rbp), %rax	# size, tmp113
	jl	.L42	#,
.L41:
	.loc 1 435 0
	movq	-32(%rbp), %rdx	# size, size.6
	movq	-16(%rbp), %rax	# buf, tmp114
	addq	%rdx, %rax	# size.6, D.8652
	movb	$0, (%rax)	#, *_32
	jmp	.L43	#
.L36:
	.loc 1 438 0
	movq	-48(%rbp), %rax	# inc, tmp115
	movl	56(%rax), %eax	# inc_10(D)->st.st_mode, D.8647
	andl	$61440, %eax	#, D.8647
	cmpl	$24576, %eax	#, D.8647
	jne	.L44	#,
	.loc 1 440 0
	movq	-48(%rbp), %rax	# inc, tmp116
	movq	(%rax), %rdx	# inc_10(D)->name, D.8651
	movq	-40(%rbp), %rax	# pfile, tmp117
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# tmp117,
	movl	$0, %eax	#,
	call	cpp_error	#
	.loc 1 441 0
	jmp	.L45	#
.L44:
	.loc 1 448 0
	movq	$8192, -32(%rbp)	#, size
	.loc 1 450 0
	movq	-32(%rbp), %rax	# size, tmp118
	addq	$1, %rax	#, D.8648
	movq	%rax, %rdi	# D.8649,
	call	xmalloc	#
	movq	%rax, -16(%rbp)	# tmp119, buf
	.loc 1 451 0
	movq	$0, -24(%rbp)	#, offset
	.loc 1 452 0
	jmp	.L46	#
.L47:
	.loc 1 454 0
	movq	-8(%rbp), %rax	# count, tmp120
	addq	%rax, -24(%rbp)	# tmp120, offset
	.loc 1 455 0
	movq	-24(%rbp), %rax	# offset, tmp121
	cmpq	-32(%rbp), %rax	# size, tmp121
	jne	.L46	#,
	.loc 1 457 0
	salq	-32(%rbp)	# size
	.loc 1 458 0
	movq	-32(%rbp), %rax	# size, tmp122
	addq	$1, %rax	#, D.8648
	movq	%rax, %rdx	# D.8648, D.8649
	movq	-16(%rbp), %rax	# buf, tmp123
	movq	%rdx, %rsi	# D.8649,
	movq	%rax, %rdi	# tmp123,
	call	xrealloc	#
	movq	%rax, -16(%rbp)	# tmp124, buf
.L46:
	.loc 1 452 0 discriminator 1
	movq	-24(%rbp), %rax	# offset, tmp125
	movq	-32(%rbp), %rdx	# size, tmp126
	subq	%rax, %rdx	# tmp125, D.8648
	movq	%rdx, %rax	# D.8648, D.8648
	movq	%rax, %rdx	# D.8648, D.8649
	movq	-24(%rbp), %rcx	# offset, offset.7
	movq	-16(%rbp), %rax	# buf, tmp127
	addq	%rax, %rcx	# tmp127, D.8650
	movq	-48(%rbp), %rax	# inc, tmp128
	movl	176(%rax), %eax	# inc_10(D)->fd, D.8646
	movq	%rcx, %rsi	# D.8650,
	movl	%eax, %edi	# D.8646,
	call	read	#
	movq	%rax, -8(%rbp)	# tmp129, count
	cmpq	$0, -8(%rbp)	#, count
	jg	.L47	#,
	.loc 1 461 0
	cmpq	$0, -8(%rbp)	#, count
	jns	.L48	#,
	.loc 1 462 0
	jmp	.L39	#
.L48:
	.loc 1 464 0
	movq	-24(%rbp), %rax	# offset, tmp130
	addq	$1, %rax	#, D.8648
	cmpq	-32(%rbp), %rax	# size, D.8648
	jge	.L49	#,
	.loc 1 465 0
	movq	-24(%rbp), %rax	# offset, tmp131
	addq	$1, %rax	#, D.8648
	movq	%rax, %rdx	# D.8648, D.8649
	movq	-16(%rbp), %rax	# buf, tmp132
	movq	%rdx, %rsi	# D.8649,
	movq	%rax, %rdi	# tmp132,
	call	xrealloc	#
	movq	%rax, -16(%rbp)	# tmp133, buf
.L49:
	.loc 1 468 0
	movq	-24(%rbp), %rdx	# offset, offset.8
	movq	-16(%rbp), %rax	# buf, tmp134
	addq	%rdx, %rax	# offset.8, D.8652
	movb	$0, (%rax)	#, *_57
	.loc 1 469 0
	movq	-48(%rbp), %rax	# inc, tmp135
	movq	-24(%rbp), %rdx	# offset, tmp136
	movq	%rdx, 80(%rax)	# tmp136, inc_10(D)->st.st_size
.L43:
	.loc 1 472 0
	movq	-48(%rbp), %rax	# inc, tmp137
	movq	-16(%rbp), %rdx	# buf, tmp138
	movq	%rdx, 24(%rax)	# tmp138, inc_10(D)->buffer
	.loc 1 473 0
	movl	$0, %eax	#, D.8646
	jmp	.L50	#
.L39:
	.loc 1 476 0
	movq	-48(%rbp), %rax	# inc, tmp139
	movq	(%rax), %rdx	# inc_10(D)->name, D.8651
	movq	-40(%rbp), %rax	# pfile, tmp140
	movq	%rdx, %rsi	# D.8651,
	movq	%rax, %rdi	# tmp140,
	call	cpp_error_from_errno	#
.L45:
	.loc 1 478 0
	movl	$1, %eax	#, D.8646
.L50:
	.loc 1 479 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	read_include_file, .-read_include_file
	.type	purge_cache, @function
purge_cache:
.LFB17:
	.loc 1 485 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# inc, inc
	.loc 1 486 0
	movq	-8(%rbp), %rax	# inc, tmp61
	movq	24(%rax), %rax	# inc_1(D)->buffer, D.8655
	testq	%rax, %rax	# D.8655
	je	.L51	#,
	.loc 1 493 0
	movq	-8(%rbp), %rax	# inc, tmp62
	movq	24(%rax), %rax	# inc_1(D)->buffer, D.8655
	movq	%rax, %rdi	# D.8655,
	call	free	#
	.loc 1 494 0
	movq	-8(%rbp), %rax	# inc, tmp63
	movq	$0, 24(%rax)	#, inc_1(D)->buffer
.L51:
	.loc 1 496 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	purge_cache, .-purge_cache
	.globl	cpp_included
	.type	cpp_included, @function
cpp_included:
.LFB18:
	.loc 1 504 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# pfile, pfile
	movq	%rsi, -64(%rbp)	# fname, fname
	.loc 1 509 0
	movq	-64(%rbp), %rax	# fname, tmp86
	movzbl	(%rax), %eax	# *fname_5(D), D.8657
	cmpb	$47, %al	#, D.8657
	je	.L54	#,
	.loc 1 509 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# fname, tmp87
	movzbl	(%rax), %eax	# *fname_5(D), D.8657
	cmpb	$36, %al	#, D.8657
	jne	.L55	#,
.L54:
	.loc 1 512 0 is_stmt 1
	movq	-64(%rbp), %rdx	# fname, fname.9
	movq	-56(%rbp), %rax	# pfile, tmp88
	movq	280(%rax), %rax	# pfile_9(D)->all_include_files, D.8664
	movq	%rdx, %rsi	# fname.9,
	movq	%rax, %rdi	# D.8664,
	call	splay_tree_lookup	#
	movq	%rax, -24(%rbp)	# tmp89, nd
	.loc 1 513 0
	cmpq	$0, -24(%rbp)	#, nd
	je	.L56	#,
	.loc 1 513 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# nd, tmp90
	movq	8(%rax), %rax	# nd_38->value, D.8658
	testq	%rax, %rax	# D.8658
	je	.L56	#,
	.loc 1 513 0 discriminator 3
	movl	$1, %eax	#, iftmp.10
	jmp	.L57	#
.L56:
	.loc 1 513 0 discriminator 2
	movl	$0, %eax	#, iftmp.10
.L57:
	.loc 1 513 0 discriminator 4
	jmp	.L58	#
.L55:
	.loc 1 517 0 is_stmt 1
	movq	-64(%rbp), %rax	# fname, tmp91
	movq	%rax, %rdi	# tmp91,
	call	strlen	#
	movq	-56(%rbp), %rdx	# pfile, tmp92
	movl	288(%rdx), %edx	# pfile_9(D)->max_include_len, D.8659
	movl	%edx, %edx	# D.8659, D.8658
	addq	%rdx, %rax	# D.8658, D.8658
	addq	$2, %rax	#, D.8658
	leaq	15(%rax), %rdx	#, tmp93
	movl	$16, %eax	#, tmp126
	subq	$1, %rax	#, tmp94
	addq	%rdx, %rax	# tmp93, tmp95
	movl	$16, %ebx	#, tmp127
	movl	$0, %edx	#, tmp98
	divq	%rbx	# tmp127
	imulq	$16, %rax, %rax	#, tmp97, tmp99
	subq	%rax, %rsp	# tmp99,
	movq	%rsp, %rax	#, tmp100
	addq	$15, %rax	#, tmp101
	shrq	$4, %rax	#, tmp102
	salq	$4, %rax	#, tmp103
	movq	%rax, -32(%rbp)	# tmp103, name
	.loc 1 518 0
	movq	-56(%rbp), %rax	# pfile, tmp104
	movq	688(%rax), %rax	# pfile_9(D)->opts.quote_include, tmp105
	movq	%rax, -48(%rbp)	# tmp105, path
	jmp	.L59	#
.L63:
	.loc 1 520 0
	movq	-48(%rbp), %rax	# path, tmp106
	movl	16(%rax), %eax	# path_1->len, D.8659
	movl	%eax, %edx	# D.8659, D.8658
	movq	-48(%rbp), %rax	# path, tmp107
	movq	8(%rax), %rcx	# path_1->name, D.8660
	movq	-32(%rbp), %rax	# name, tmp108
	movq	%rcx, %rsi	# D.8660,
	movq	%rax, %rdi	# tmp108,
	call	memcpy	#
	.loc 1 521 0
	movq	-48(%rbp), %rax	# path, tmp109
	movl	16(%rax), %eax	# path_1->len, D.8659
	movl	%eax, %edx	# D.8659, D.8661
	movq	-32(%rbp), %rax	# name, tmp110
	addq	%rdx, %rax	# D.8661, D.8662
	movb	$47, (%rax)	#, *_21
	.loc 1 522 0
	movq	-48(%rbp), %rax	# path, tmp111
	movl	16(%rax), %eax	# path_1->len, D.8659
	addl	$1, %eax	#, D.8659
	movl	%eax, %edx	# D.8659, D.8661
	movq	-32(%rbp), %rax	# name, tmp112
	addq	%rax, %rdx	# tmp112, D.8662
	movq	-64(%rbp), %rax	# fname, tmp113
	movq	%rax, %rsi	# tmp113,
	movq	%rdx, %rdi	# D.8662,
	call	strcpy	#
	.loc 1 523 0
	movq	-56(%rbp), %rax	# pfile, tmp114
	movzbl	764(%rax), %eax	# pfile_9(D)->opts.remap, D.8663
	testb	%al, %al	# D.8663
	je	.L60	#,
	.loc 1 524 0
	movq	-48(%rbp), %rdx	# path, tmp115
	movq	-32(%rbp), %rcx	# name, tmp116
	movq	-56(%rbp), %rax	# pfile, tmp117
	movq	%rcx, %rsi	# tmp116,
	movq	%rax, %rdi	# tmp117,
	call	remap_filename	#
	movq	%rax, -40(%rbp)	# tmp118, n
	jmp	.L61	#
.L60:
	.loc 1 526 0
	movq	-32(%rbp), %rax	# name, tmp119
	movq	%rax, -40(%rbp)	# tmp119, n
.L61:
	.loc 1 528 0
	movq	-40(%rbp), %rdx	# n, n.11
	movq	-56(%rbp), %rax	# pfile, tmp120
	movq	280(%rax), %rax	# pfile_9(D)->all_include_files, D.8664
	movq	%rdx, %rsi	# n.11,
	movq	%rax, %rdi	# D.8664,
	call	splay_tree_lookup	#
	movq	%rax, -24(%rbp)	# tmp121, nd
	.loc 1 529 0
	cmpq	$0, -24(%rbp)	#, nd
	je	.L62	#,
	.loc 1 529 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# nd, tmp122
	movq	8(%rax), %rax	# nd_31->value, D.8658
	testq	%rax, %rax	# D.8658
	je	.L62	#,
	.loc 1 530 0 is_stmt 1
	movl	$1, %eax	#, D.8656
	jmp	.L58	#
.L62:
	.loc 1 518 0
	movq	-48(%rbp), %rax	# path, tmp123
	movq	(%rax), %rax	# path_1->next, tmp124
	movq	%rax, -48(%rbp)	# tmp124, path
.L59:
	.loc 1 518 0 is_stmt 0 discriminator 1
	cmpq	$0, -48(%rbp)	#, path
	jne	.L63	#,
	.loc 1 532 0 is_stmt 1
	movl	$0, %eax	#, D.8656
.L58:
	.loc 1 533 0
	movq	-8(%rbp), %rbx	#,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	cpp_included, .-cpp_included
	.section	.rodata
	.align 8
.LC3:
	.string	"no include path in which to find %s"
	.text
	.type	find_include_file, @function
find_include_file:
.LFB19:
	.loc 1 545 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$88, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)	# pfile, pfile
	movq	%rsi, -80(%rbp)	# header, header
	movl	%edx, -84(%rbp)	# type, type
	.loc 1 546 0
	movq	-80(%rbp), %rax	# header, tmp88
	movq	16(%rax), %rax	# header_6(D)->val.str.text, tmp89
	movq	%rax, -40(%rbp)	# tmp89, fname
	.loc 1 551 0
	movq	-40(%rbp), %rax	# fname, tmp90
	movzbl	(%rax), %eax	# *fname_7, D.8667
	cmpb	$47, %al	#, D.8667
	je	.L65	#,
	.loc 1 551 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# fname, tmp91
	movzbl	(%rax), %eax	# *fname_7, D.8667
	cmpb	$36, %al	#, D.8667
	jne	.L66	#,
.L65:
	.loc 1 552 0 is_stmt 1
	movq	-40(%rbp), %rdx	# fname, tmp92
	movq	-72(%rbp), %rax	# pfile, tmp93
	movq	%rdx, %rsi	# tmp92,
	movq	%rax, %rdi	# tmp93,
	call	open_file	#
	jmp	.L67	#
.L66:
	.loc 1 557 0
	cmpl	$1, -84(%rbp)	#, type
	jne	.L68	#,
	.loc 1 557 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# pfile, tmp94
	movq	(%rax), %rax	# pfile_11(D)->buffer, D.8668
	movq	48(%rax), %rax	# _12->inc, D.8666
	movq	16(%rax), %rax	# _13->foundhere, D.8669
	testq	%rax, %rax	# D.8669
	je	.L68	#,
	.loc 1 558 0 is_stmt 1
	movq	-72(%rbp), %rax	# pfile, tmp95
	movq	(%rax), %rax	# pfile_11(D)->buffer, D.8668
	movq	48(%rax), %rax	# _15->inc, D.8666
	movq	16(%rax), %rax	# _16->foundhere, D.8669
	movq	(%rax), %rax	# _17->next, tmp96
	movq	%rax, -56(%rbp)	# tmp96, path
	jmp	.L69	#
.L68:
	.loc 1 559 0
	movq	-80(%rbp), %rax	# header, tmp97
	movzbl	6(%rax), %eax	# header_6(D)->type, D.8670
	cmpb	$63, %al	#, D.8670
	jne	.L70	#,
	.loc 1 560 0
	movq	-72(%rbp), %rax	# pfile, tmp98
	movq	696(%rax), %rax	# pfile_11(D)->opts.bracket_include, tmp99
	movq	%rax, -56(%rbp)	# tmp99, path
	jmp	.L69	#
.L70:
	.loc 1 562 0
	movl	-84(%rbp), %edx	# type, tmp100
	movq	-72(%rbp), %rax	# pfile, tmp101
	movl	%edx, %esi	# tmp100,
	movq	%rax, %rdi	# tmp101,
	call	search_from	#
	movq	%rax, -56(%rbp)	# tmp102, path
.L69:
	.loc 1 564 0
	cmpq	$0, -56(%rbp)	#, path
	jne	.L71	#,
	.loc 1 566 0
	movq	-40(%rbp), %rdx	# fname, tmp103
	movq	-72(%rbp), %rax	# pfile, tmp104
	movl	$.LC3, %esi	#,
	movq	%rax, %rdi	# tmp104,
	movl	$0, %eax	#,
	call	cpp_error	#
	.loc 1 567 0
	movq	$-1, %rax	#, D.8666
	jmp	.L67	#
.L71:
	.loc 1 571 0
	movq	-40(%rbp), %rax	# fname, tmp105
	movq	%rax, %rdi	# tmp105,
	call	strlen	#
	movq	-72(%rbp), %rdx	# pfile, tmp106
	movl	288(%rdx), %edx	# pfile_11(D)->max_include_len, D.8672
	movl	%edx, %edx	# D.8672, D.8671
	addq	%rdx, %rax	# D.8671, D.8671
	addq	$2, %rax	#, D.8671
	leaq	15(%rax), %rdx	#, tmp107
	movl	$16, %eax	#, tmp143
	subq	$1, %rax	#, tmp108
	addq	%rdx, %rax	# tmp107, tmp109
	movl	$16, %ebx	#, tmp144
	movl	$0, %edx	#, tmp112
	divq	%rbx	# tmp144
	imulq	$16, %rax, %rax	#, tmp111, tmp113
	subq	%rax, %rsp	# tmp113,
	movq	%rsp, %rax	#, tmp114
	addq	$15, %rax	#, tmp115
	shrq	$4, %rax	#, tmp116
	salq	$4, %rax	#, tmp117
	movq	%rax, -32(%rbp)	# tmp117, name
	.loc 1 572 0
	jmp	.L72	#
.L77:
.LBB2:
	.loc 1 574 0
	movq	-56(%rbp), %rax	# path, tmp118
	movl	16(%rax), %eax	# path_2->len, D.8672
	movl	%eax, -60(%rbp)	# D.8672, len
	.loc 1 575 0
	movl	-60(%rbp), %eax	# len, tmp119
	movslq	%eax, %rdx	# tmp119, D.8671
	movq	-56(%rbp), %rax	# path, tmp120
	movq	8(%rax), %rcx	# path_2->name, D.8673
	movq	-32(%rbp), %rax	# name, tmp121
	movq	%rcx, %rsi	# D.8673,
	movq	%rax, %rdi	# tmp121,
	call	memcpy	#
	.loc 1 578 0
	movl	-60(%rbp), %eax	# len, tmp122
	cltq
	leaq	-1(%rax), %rdx	#, D.8674
	movq	-32(%rbp), %rax	# name, tmp123
	addq	%rdx, %rax	# D.8674, D.8675
	movzbl	(%rax), %eax	# *_35, D.8667
	cmpb	$47, %al	#, D.8667
	jne	.L73	#,
	.loc 1 579 0
	subl	$1, -60(%rbp)	#, len
.L73:
	.loc 1 580 0
	movl	-60(%rbp), %eax	# len, tmp124
	movslq	%eax, %rdx	# tmp124, D.8674
	movq	-32(%rbp), %rax	# name, tmp125
	addq	%rdx, %rax	# D.8674, D.8675
	movb	$47, (%rax)	#, *_39
	.loc 1 581 0
	movl	-60(%rbp), %eax	# len, tmp126
	cltq
	leaq	1(%rax), %rdx	#, D.8674
	movq	-32(%rbp), %rax	# name, tmp127
	addq	%rax, %rdx	# tmp127, D.8675
	movq	-40(%rbp), %rax	# fname, tmp128
	movq	%rax, %rsi	# tmp128,
	movq	%rdx, %rdi	# D.8675,
	call	strcpy	#
	.loc 1 582 0
	movq	-72(%rbp), %rax	# pfile, tmp129
	movzbl	764(%rax), %eax	# pfile_11(D)->opts.remap, D.8670
	testb	%al, %al	# D.8670
	je	.L74	#,
	.loc 1 583 0
	movq	-56(%rbp), %rdx	# path, tmp130
	movq	-32(%rbp), %rcx	# name, tmp131
	movq	-72(%rbp), %rax	# pfile, tmp132
	movq	%rcx, %rsi	# tmp131,
	movq	%rax, %rdi	# tmp132,
	call	remap_filename	#
	movq	%rax, -48(%rbp)	# tmp133, n
	jmp	.L75	#
.L74:
	.loc 1 585 0
	movq	-32(%rbp), %rax	# name, tmp134
	movq	%rax, -48(%rbp)	# tmp134, n
.L75:
	.loc 1 587 0
	movq	-48(%rbp), %rdx	# n, tmp135
	movq	-72(%rbp), %rax	# pfile, tmp136
	movq	%rdx, %rsi	# tmp135,
	movq	%rax, %rdi	# tmp136,
	call	open_file	#
	movq	%rax, -24(%rbp)	# tmp137, file
	.loc 1 588 0
	cmpq	$0, -24(%rbp)	#, file
	je	.L76	#,
	.loc 1 590 0
	movq	-24(%rbp), %rax	# file, tmp138
	movq	-56(%rbp), %rdx	# path, tmp139
	movq	%rdx, 16(%rax)	# tmp139, file_46->foundhere
	.loc 1 591 0
	movq	-24(%rbp), %rax	# file, D.8666
	jmp	.L67	#
.L76:
.LBE2:
	.loc 1 572 0
	movq	-56(%rbp), %rax	# path, tmp140
	movq	(%rax), %rax	# path_2->next, tmp141
	movq	%rax, -56(%rbp)	# tmp141, path
.L72:
	.loc 1 572 0 is_stmt 0 discriminator 1
	cmpq	$0, -56(%rbp)	#, path
	jne	.L77	#,
	.loc 1 595 0 is_stmt 1
	movl	$0, %eax	#, D.8666
.L67:
	.loc 1 596 0
	movq	-8(%rbp), %rbx	#,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	find_include_file, .-find_include_file
	.globl	cpp_make_system_header
	.type	cpp_make_system_header, @function
cpp_make_system_header:
.LFB20:
	.loc 1 605 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# pfile, pfile
	movl	%esi, -28(%rbp)	# syshdr, syshdr
	movl	%edx, -32(%rbp)	# externc, externc
	.loc 1 606 0
	movl	$0, -4(%rbp)	#, flags
	.loc 1 609 0
	cmpl	$0, -28(%rbp)	#, syshdr
	je	.L79	#,
	.loc 1 610 0
	cmpl	$0, -32(%rbp)	#, externc
	je	.L80	#,
	.loc 1 610 0 is_stmt 0 discriminator 1
	movl	$2, %eax	#, iftmp.12
	jmp	.L81	#
.L80:
	.loc 1 610 0 discriminator 2
	movl	$1, %eax	#, iftmp.12
.L81:
	.loc 1 610 0 discriminator 3
	movl	%eax, -4(%rbp)	# iftmp.12, flags
.L79:
	.loc 1 611 0 is_stmt 1
	movl	-4(%rbp), %esi	# flags, flags.13
	.loc 1 612 0
	movq	-24(%rbp), %rax	# pfile, tmp70
	movl	64(%rax), %edx	# pfile_10(D)->line, D.8677
	movq	-24(%rbp), %rax	# pfile, tmp71
	movq	56(%rax), %rax	# pfile_10(D)->map, D.8678
	movl	8(%rax), %eax	# _12->to_line, D.8677
	addl	%eax, %edx	# D.8677, D.8677
	movq	-24(%rbp), %rax	# pfile, tmp72
	movq	56(%rax), %rax	# pfile_10(D)->map, D.8678
	movl	12(%rax), %eax	# _15->from_line, D.8677
	.loc 1 611 0
	movl	%edx, %ecx	# D.8677, D.8677
	subl	%eax, %ecx	# D.8677, D.8677
	movq	-24(%rbp), %rax	# pfile, tmp73
	movq	56(%rax), %rax	# pfile_10(D)->map, D.8678
	movq	(%rax), %rdx	# _18->to_file, D.8679
	movq	-24(%rbp), %rax	# pfile, tmp74
	movl	%esi, %r8d	# flags.13,
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp74,
	call	_cpp_do_file_change	#
	.loc 1 613 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	cpp_make_system_header, .-cpp_make_system_header
	.globl	_cpp_report_missing_guards
	.type	_cpp_report_missing_guards, @function
_cpp_report_missing_guards:
.LFB21:
	.loc 1 620 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# pfile, pfile
	.loc 1 621 0
	movl	$0, -4(%rbp)	#, banner
	.loc 1 622 0
	movq	-24(%rbp), %rax	# pfile, tmp60
	movq	280(%rax), %rax	# pfile_1(D)->all_include_files, D.8680
	leaq	-4(%rbp), %rdx	#, tmp61
	movl	$report_missing_guard, %esi	#,
	movq	%rax, %rdi	# D.8680,
	call	splay_tree_foreach	#
	.loc 1 624 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	_cpp_report_missing_guards, .-_cpp_report_missing_guards
	.section	.rodata
	.align 8
.LC4:
	.string	"Multiple include guards may be useful for:\n"
	.text
	.type	report_missing_guard, @function
report_missing_guard:
.LFB22:
	.loc 1 631 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# n, n
	movq	%rsi, -32(%rbp)	# b, b
	.loc 1 632 0
	movq	-24(%rbp), %rax	# n, tmp69
	movq	8(%rax), %rax	# n_1(D)->value, D.8681
	movq	%rax, -16(%rbp)	# D.8681, f
	.loc 1 633 0
	movq	-32(%rbp), %rax	# b, tmp70
	movq	%rax, -8(%rbp)	# tmp70, bannerp
	.loc 1 635 0
	cmpq	$0, -16(%rbp)	#, f
	je	.L84	#,
	.loc 1 635 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# f, tmp71
	movq	8(%rax), %rax	# f_3->cmacro, D.8682
	testq	%rax, %rax	# D.8682
	jne	.L84	#,
	movq	-16(%rbp), %rax	# f, tmp72
	movzwl	184(%rax), %eax	# f_3->include_count, D.8683
	cmpw	$1, %ax	#, D.8683
	jne	.L84	#,
	.loc 1 637 0 is_stmt 1
	movq	-8(%rbp), %rax	# bannerp, tmp73
	movl	(%rax), %eax	# *bannerp_5, D.8684
	testl	%eax, %eax	# D.8684
	jne	.L85	#,
	.loc 1 639 0
	movq	stderr(%rip), %rax	# stderr, stderr.14
	movq	%rax, %rcx	# stderr.14,
	movl	$43, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC4, %edi	#,
	call	fwrite	#
	.loc 1 640 0
	movq	-8(%rbp), %rax	# bannerp, tmp74
	movl	$1, (%rax)	#, *bannerp_5
.L85:
	.loc 1 642 0
	movq	stderr(%rip), %rdx	# stderr, stderr.15
	movq	-16(%rbp), %rax	# f, tmp75
	movq	(%rax), %rax	# f_3->name, D.8685
	movq	%rdx, %rsi	# stderr.15,
	movq	%rax, %rdi	# D.8685,
	call	fputs	#
	.loc 1 643 0
	movq	stderr(%rip), %rax	# stderr, stderr.16
	movq	%rax, %rsi	# stderr.16,
	movl	$10, %edi	#,
	call	_IO_putc	#
.L84:
	.loc 1 645 0
	movl	$0, %eax	#, D.8684
	.loc 1 646 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	report_missing_guard, .-report_missing_guard
	.section	.rodata
.LC5:
	.string	"%s: %s"
	.text
	.type	handle_missing_header, @function
handle_missing_header:
.LFB23:
	.loc 1 656 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# pfile, pfile
	movq	%rsi, -64(%rbp)	# fname, fname
	movl	%edx, -68(%rbp)	# angle_brackets, angle_brackets
	.loc 1 657 0
	movq	-56(%rbp), %rax	# pfile, tmp88
	movzbl	749(%rax), %eax	# pfile_4(D)->opts.print_deps, D.8687
	movzbl	%al, %edx	# D.8687, D.8688
	cmpl	$0, -68(%rbp)	#, angle_brackets
	jne	.L88	#,
	.loc 1 657 0 is_stmt 0 discriminator 2
	movq	-56(%rbp), %rax	# pfile, tmp89
	movq	56(%rax), %rax	# pfile_4(D)->map, D.8689
	movzbl	21(%rax), %eax	# _8->sysp, D.8687
	testb	%al, %al	# D.8687
	je	.L89	#,
.L88:
	.loc 1 657 0 discriminator 1
	movl	$1, %eax	#, iftmp.17
	jmp	.L90	#
.L89:
	.loc 1 657 0 discriminator 3
	movl	$0, %eax	#, iftmp.17
.L90:
	.loc 1 657 0 discriminator 4
	cmpl	%eax, %edx	# iftmp.17, D.8688
	setg	%al	#, D.8690
	movzbl	%al, %eax	# D.8690, tmp90
	movl	%eax, -40(%rbp)	# tmp90, print_dep
	.loc 1 659 0 is_stmt 1 discriminator 4
	movq	-56(%rbp), %rax	# pfile, tmp91
	movzbl	751(%rax), %eax	# pfile_4(D)->opts.print_deps_missing_files, D.8687
	testb	%al, %al	# D.8687
	je	.L91	#,
	.loc 1 659 0 is_stmt 0 discriminator 1
	cmpl	$0, -40(%rbp)	#, print_dep
	je	.L91	#,
	.loc 1 661 0 is_stmt 1
	cmpl	$0, -68(%rbp)	#, angle_brackets
	je	.L92	#,
	.loc 1 661 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# fname, tmp92
	movzbl	(%rax), %eax	# *fname_15(D), D.8691
	cmpb	$47, %al	#, D.8691
	je	.L92	#,
	movq	-64(%rbp), %rax	# fname, tmp93
	movzbl	(%rax), %eax	# *fname_15(D), D.8691
	cmpb	$36, %al	#, D.8691
	jne	.L93	#,
.L92:
	.loc 1 662 0 is_stmt 1
	movq	-56(%rbp), %rax	# pfile, tmp94
	movq	392(%rax), %rax	# pfile_4(D)->deps, D.8697
	movq	-64(%rbp), %rdx	# fname, tmp95
	movq	%rdx, %rsi	# tmp95,
	movq	%rax, %rdi	# D.8697,
	call	deps_add_dep	#
	.loc 1 661 0
	jmp	.L87	#
.L93:
.LBB3:
	.loc 1 667 0
	movq	-56(%rbp), %rax	# pfile, tmp96
	movq	696(%rax), %rax	# pfile_4(D)->opts.bracket_include, tmp97
	movq	%rax, -32(%rbp)	# tmp97, ptr
	.loc 1 669 0
	movl	$0, -44(%rbp)	#, len
	movq	-64(%rbp), %rax	# fname, tmp98
	movq	%rax, %rdi	# tmp98,
	call	strlen	#
	movl	%eax, -36(%rbp)	# D.8692, fname_len
	.loc 1 671 0
	cmpq	$0, -32(%rbp)	#, ptr
	je	.L95	#,
	.loc 1 672 0
	movq	-32(%rbp), %rax	# ptr, tmp99
	movl	16(%rax), %eax	# ptr_18->len, D.8693
	movl	%eax, -44(%rbp)	# D.8693, len
.L95:
	.loc 1 674 0
	movl	-36(%rbp), %eax	# fname_len, tmp100
	movl	-44(%rbp), %edx	# len, tmp101
	addl	%edx, %eax	# tmp101, D.8688
	addl	$2, %eax	#, D.8688
	cltq
	leaq	15(%rax), %rdx	#, tmp102
	movl	$16, %eax	#, tmp129
	subq	$1, %rax	#, tmp103
	addq	%rdx, %rax	# tmp102, tmp104
	movl	$16, %ebx	#, tmp130
	movl	$0, %edx	#, tmp107
	divq	%rbx	# tmp130
	imulq	$16, %rax, %rax	#, tmp106, tmp108
	subq	%rax, %rsp	# tmp108,
	movq	%rsp, %rax	#, tmp109
	addq	$15, %rax	#, tmp110
	shrq	$4, %rax	#, tmp111
	salq	$4, %rax	#, tmp112
	movq	%rax, -24(%rbp)	# tmp112, p
	.loc 1 675 0
	cmpl	$0, -44(%rbp)	#, len
	je	.L96	#,
	.loc 1 677 0
	movl	-44(%rbp), %eax	# len, tmp113
	movslq	%eax, %rdx	# tmp113, D.8692
	movq	-32(%rbp), %rax	# ptr, tmp114
	movq	8(%rax), %rcx	# ptr_18->name, D.8694
	movq	-24(%rbp), %rax	# p, tmp115
	movq	%rcx, %rsi	# D.8694,
	movq	%rax, %rdi	# tmp115,
	call	memcpy	#
	.loc 1 678 0
	movl	-44(%rbp), %eax	# len, len.18
	leal	1(%rax), %edx	#, tmp116
	movl	%edx, -44(%rbp)	# tmp116, len
	movslq	%eax, %rdx	# len.18, D.8695
	movq	-24(%rbp), %rax	# p, tmp117
	addq	%rdx, %rax	# D.8695, D.8696
	movb	$47, (%rax)	#, *_33
.L96:
	.loc 1 680 0
	movl	-36(%rbp), %eax	# fname_len, tmp118
	addl	$1, %eax	#, D.8688
	movslq	%eax, %rdx	# D.8688, D.8692
	movl	-44(%rbp), %eax	# len, tmp119
	movslq	%eax, %rcx	# tmp119, D.8695
	movq	-24(%rbp), %rax	# p, tmp120
	addq	%rax, %rcx	# tmp120, D.8696
	movq	-64(%rbp), %rax	# fname, tmp121
	movq	%rax, %rsi	# tmp121,
	movq	%rcx, %rdi	# D.8696,
	call	memcpy	#
	.loc 1 681 0
	movq	-56(%rbp), %rax	# pfile, tmp122
	movq	392(%rax), %rax	# pfile_4(D)->deps, D.8697
	movq	-24(%rbp), %rdx	# p, tmp123
	movq	%rdx, %rsi	# tmp123,
	movq	%rax, %rdi	# D.8697,
	call	deps_add_dep	#
.LBE3:
	.loc 1 661 0
	jmp	.L87	#
.L91:
	.loc 1 690 0
	movq	-56(%rbp), %rax	# pfile, tmp124
	movzbl	749(%rax), %eax	# pfile_4(D)->opts.print_deps, D.8687
	testb	%al, %al	# D.8687
	je	.L98	#,
	.loc 1 690 0 is_stmt 0 discriminator 1
	cmpl	$0, -40(%rbp)	#, print_dep
	jne	.L98	#,
	.loc 1 691 0 is_stmt 1
	call	__errno_location	#
	movl	(%rax), %eax	# *_41, D.8688
	movl	%eax, %edi	# D.8688,
	call	xstrerror	#
	movq	%rax, %rcx	#, D.8696
	movq	-64(%rbp), %rdx	# fname, tmp125
	movq	-56(%rbp), %rax	# pfile, tmp126
	movl	$.LC5, %esi	#,
	movq	%rax, %rdi	# tmp126,
	movl	$0, %eax	#,
	call	cpp_warning	#
	jmp	.L87	#
.L98:
	.loc 1 693 0
	movq	-64(%rbp), %rdx	# fname, tmp127
	movq	-56(%rbp), %rax	# pfile, tmp128
	movq	%rdx, %rsi	# tmp127,
	movq	%rax, %rdi	# tmp128,
	call	cpp_error_from_errno	#
.L87:
	.loc 1 694 0
	movq	-8(%rbp), %rbx	#,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	handle_missing_header, .-handle_missing_header
	.globl	_cpp_execute_include
	.type	_cpp_execute_include, @function
_cpp_execute_include:
.LFB24:
	.loc 1 704 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# pfile, pfile
	movq	%rsi, -32(%rbp)	# header, header
	movl	%edx, -36(%rbp)	# type, type
	.loc 1 705 0
	movb	$0, -9(%rbp)	#, stacked
	.loc 1 706 0
	movl	-36(%rbp), %edx	# type, tmp65
	movq	-32(%rbp), %rcx	# header, tmp66
	movq	-24(%rbp), %rax	# pfile, tmp67
	movq	%rcx, %rsi	# tmp66,
	movq	%rax, %rdi	# tmp67,
	call	find_include_file	#
	movq	%rax, -8(%rbp)	# tmp68, inc
	.loc 1 708 0
	cmpq	$0, -8(%rbp)	#, inc
	jne	.L100	#,
	.loc 1 710 0
	movq	-32(%rbp), %rax	# header, tmp69
	movzbl	6(%rax), %eax	# header_4(D)->type, D.8700
	.loc 1 709 0
	cmpb	$63, %al	#, D.8700
	sete	%al	#, D.8701
	movzbl	%al, %edx	# D.8701, D.8702
	movq	-32(%rbp), %rax	# header, tmp70
	movq	16(%rax), %rcx	# header_4(D)->val.str.text, D.8703
	movq	-24(%rbp), %rax	# pfile, tmp71
	movq	%rcx, %rsi	# D.8703,
	movq	%rax, %rdi	# tmp71,
	call	handle_missing_header	#
	jmp	.L101	#
.L100:
	.loc 1 711 0
	cmpq	$-1, -8(%rbp)	#, inc
	je	.L101	#,
	.loc 1 713 0
	movq	-8(%rbp), %rdx	# inc, tmp72
	movq	-24(%rbp), %rax	# pfile, tmp73
	movq	%rdx, %rsi	# tmp72,
	movq	%rax, %rdi	# tmp73,
	call	stack_include_file	#
	movb	%al, -9(%rbp)	# tmp74, stacked
	.loc 1 715 0
	cmpl	$2, -36(%rbp)	#, type
	jne	.L101	#,
	.loc 1 716 0
	movq	-8(%rbp), %rax	# inc, tmp75
	movq	%rax, %rdi	# tmp75,
	call	_cpp_never_reread	#
.L101:
	.loc 1 719 0
	movzbl	-9(%rbp), %eax	# stacked, D.8701
	.loc 1 720 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	_cpp_execute_include, .-_cpp_execute_include
	.globl	_cpp_compare_file_date
	.type	_cpp_compare_file_date, @function
_cpp_compare_file_date:
.LFB25:
	.loc 1 729 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# pfile, pfile
	movq	%rsi, -32(%rbp)	# header, header
	.loc 1 730 0
	movq	-32(%rbp), %rcx	# header, tmp68
	movq	-24(%rbp), %rax	# pfile, tmp69
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp68,
	movq	%rax, %rdi	# tmp69,
	call	find_include_file	#
	movq	%rax, -8(%rbp)	# tmp70, inc
	.loc 1 732 0
	cmpq	$0, -8(%rbp)	#, inc
	je	.L104	#,
	.loc 1 732 0 is_stmt 0 discriminator 1
	cmpq	$-1, -8(%rbp)	#, inc
	jne	.L105	#,
.L104:
	.loc 1 733 0 is_stmt 1
	movl	$-1, %eax	#, D.8704
	jmp	.L106	#
.L105:
	.loc 1 735 0
	movq	-8(%rbp), %rax	# inc, tmp71
	movl	176(%rax), %eax	# inc_4->fd, D.8704
	testl	%eax, %eax	# D.8704
	jle	.L107	#,
	.loc 1 737 0
	movq	-8(%rbp), %rax	# inc, tmp72
	movl	176(%rax), %eax	# inc_4->fd, D.8704
	movl	%eax, %edi	# D.8704,
	call	close	#
	.loc 1 738 0
	movq	-8(%rbp), %rax	# inc, tmp73
	movl	$-1, 176(%rax)	#, inc_4->fd
.L107:
	.loc 1 741 0
	movq	-8(%rbp), %rax	# inc, tmp74
	movq	120(%rax), %rdx	# inc_4->st.st_mtim.tv_sec, D.8705
	movq	-24(%rbp), %rax	# pfile, tmp75
	movq	(%rax), %rax	# pfile_2(D)->buffer, D.8706
	movq	48(%rax), %rax	# _8->inc, D.8707
	movq	120(%rax), %rax	# _9->st.st_mtim.tv_sec, D.8705
	cmpq	%rax, %rdx	# D.8705, D.8705
	setg	%al	#, D.8708
	movzbl	%al, %eax	# D.8708, D.8704
.L106:
	.loc 1 742 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	_cpp_compare_file_date, .-_cpp_compare_file_date
	.globl	_cpp_read_file
	.type	_cpp_read_file, @function
_cpp_read_file:
.LFB26:
	.loc 1 752 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# pfile, pfile
	movq	%rsi, -32(%rbp)	# fname, fname
	.loc 1 753 0
	movq	-32(%rbp), %rdx	# fname, tmp61
	movq	-24(%rbp), %rax	# pfile, tmp62
	movq	%rdx, %rsi	# tmp61,
	movq	%rax, %rdi	# tmp62,
	call	open_file	#
	movq	%rax, -8(%rbp)	# tmp63, f
	.loc 1 755 0
	cmpq	$0, -8(%rbp)	#, f
	jne	.L109	#,
	.loc 1 757 0
	movq	-32(%rbp), %rdx	# fname, tmp64
	movq	-24(%rbp), %rax	# pfile, tmp65
	movq	%rdx, %rsi	# tmp64,
	movq	%rax, %rdi	# tmp65,
	call	cpp_error_from_errno	#
	.loc 1 758 0
	movl	$0, %eax	#, D.8709
	jmp	.L110	#
.L109:
	.loc 1 761 0
	movq	-8(%rbp), %rdx	# f, tmp66
	movq	-24(%rbp), %rax	# pfile, tmp67
	movq	%rdx, %rsi	# tmp66,
	movq	%rax, %rdi	# tmp67,
	call	stack_include_file	#
.L110:
	.loc 1 762 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	_cpp_read_file, .-_cpp_read_file
	.globl	_cpp_pop_file_buffer
	.type	_cpp_pop_file_buffer, @function
_cpp_pop_file_buffer:
.LFB27:
	.loc 1 770 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# pfile, pfile
	movq	%rsi, -32(%rbp)	# inc, inc
	.loc 1 771 0
	movb	$0, -1(%rbp)	#, pushed
	.loc 1 775 0
	movq	-24(%rbp), %rax	# pfile, tmp74
	movzbl	184(%rax), %eax	# pfile_3(D)->mi_valid, D.8710
	testb	%al, %al	# D.8710
	je	.L112	#,
	.loc 1 775 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# inc, tmp75
	movq	8(%rax), %rax	# inc_5(D)->cmacro, D.8711
	testq	%rax, %rax	# D.8711
	jne	.L112	#,
	.loc 1 776 0 is_stmt 1
	movq	-24(%rbp), %rax	# pfile, tmp76
	movq	168(%rax), %rdx	# pfile_3(D)->mi_cmacro, D.8711
	movq	-32(%rbp), %rax	# inc, tmp77
	movq	%rdx, 8(%rax)	# D.8711, inc_5(D)->cmacro
.L112:
	.loc 1 779 0
	movq	-24(%rbp), %rax	# pfile, tmp78
	movb	$0, 184(%rax)	#, pfile_3(D)->mi_valid
	.loc 1 781 0
	movq	-32(%rbp), %rax	# inc, tmp79
	movzwl	186(%rax), %eax	# inc_5(D)->refcnt, D.8712
	leal	-1(%rax), %edx	#, D.8712
	movq	-32(%rbp), %rax	# inc, tmp80
	movw	%dx, 186(%rax)	# D.8712, inc_5(D)->refcnt
	.loc 1 782 0
	movq	-32(%rbp), %rax	# inc, tmp81
	movzwl	186(%rax), %eax	# inc_5(D)->refcnt, D.8712
	testw	%ax, %ax	# D.8712
	jne	.L113	#,
	.loc 1 782 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# inc, tmp82
	movq	8(%rax), %rax	# inc_5(D)->cmacro, D.8711
	testq	%rax, %rax	# D.8711
	je	.L113	#,
	movq	-32(%rbp), %rax	# inc, tmp83
	movq	8(%rax), %rax	# inc_5(D)->cmacro, D.8711
	cmpq	$-1, %rax	#, D.8711
	je	.L114	#,
	movq	-32(%rbp), %rax	# inc, tmp84
	movq	8(%rax), %rax	# inc_5(D)->cmacro, D.8711
	movzbl	20(%rax), %eax	# _14->type, D.8713
	cmpb	$1, %al	#, D.8713
	jne	.L113	#,
.L114:
	.loc 1 783 0 is_stmt 1
	movq	-32(%rbp), %rax	# inc, tmp85
	movq	%rax, %rdi	# tmp85,
	call	purge_cache	#
.L113:
	.loc 1 786 0
	movq	-24(%rbp), %rax	# pfile, tmp86
	movq	(%rax), %rax	# pfile_3(D)->buffer, D.8714
	testq	%rax, %rax	# D.8714
	je	.L115	#,
	.loc 1 788 0
	movq	-24(%rbp), %rax	# pfile, tmp87
	movl	$0, %r8d	#,
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp87,
	call	_cpp_do_file_change	#
	.loc 1 791 0
	movq	-24(%rbp), %rax	# pfile, tmp88
	movq	(%rax), %rax	# pfile_3(D)->buffer, D.8714
	movq	32(%rax), %rax	# _17->prev, D.8715
	testq	%rax, %rax	# D.8715
	jne	.L115	#,
	.loc 1 792 0
	movq	-24(%rbp), %rax	# pfile, tmp89
	movq	%rax, %rdi	# tmp89,
	call	_cpp_push_next_buffer	#
	movb	%al, -1(%rbp)	# tmp90, pushed
.L115:
	.loc 1 795 0
	movzbl	-1(%rbp), %eax	# pushed, D.8710
	.loc 1 796 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	_cpp_pop_file_buffer, .-_cpp_pop_file_buffer
	.section	.rodata
.LC6:
	.string	"."
	.text
	.type	search_from, @function
search_from:
.LFB28:
	.loc 1 808 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# pfile, pfile
	movl	%esi, -28(%rbp)	# type, type
	.loc 1 809 0
	movq	-24(%rbp), %rax	# pfile, tmp78
	movq	(%rax), %rax	# pfile_4(D)->buffer, tmp79
	movq	%rax, -8(%rbp)	# tmp79, buffer
	.loc 1 813 0
	cmpl	$3, -28(%rbp)	#, type
	jne	.L118	#,
	.loc 1 814 0
	jmp	.L119	#
.L118:
	.loc 1 817 0
	movq	-24(%rbp), %rax	# pfile, tmp80
	movzbl	766(%rax), %eax	# pfile_4(D)->opts.ignore_srcdir, D.8717
	testb	%al, %al	# D.8717
	je	.L120	#,
	.loc 1 818 0
	movq	-24(%rbp), %rax	# pfile, tmp81
	movq	688(%rax), %rax	# pfile_4(D)->opts.quote_include, D.8716
	jmp	.L121	#
.L120:
	.loc 1 820 0
	movq	-8(%rbp), %rax	# buffer, tmp82
	movzbl	82(%rax), %eax	# buffer_5->search_cached, D.8717
	testb	%al, %al	# D.8717
	jne	.L122	#,
	.loc 1 822 0
	movq	-8(%rbp), %rax	# buffer, tmp83
	movb	$1, 82(%rax)	#, buffer_5->search_cached
	.loc 1 824 0
	movq	-8(%rbp), %rax	# buffer, tmp84
	movq	48(%rax), %rax	# buffer_5->inc, D.8718
	movq	(%rax), %rax	# _10->name, D.8719
	movq	%rax, %rdi	# D.8719,
	call	lbasename	#
	movq	%rax, %rdx	# D.8719, D.8720
	movq	-8(%rbp), %rax	# buffer, tmp85
	movq	48(%rax), %rax	# buffer_5->inc, D.8718
	movq	(%rax), %rax	# _14->name, D.8719
	subq	%rax, %rdx	# D.8720, D.8720
	movq	%rdx, %rax	# D.8720, D.8720
	movl	%eax, -12(%rbp)	# D.8720, dlen
	.loc 1 826 0
	cmpl	$0, -12(%rbp)	#, dlen
	je	.L119	#,
	.loc 1 830 0
	movq	-8(%rbp), %rax	# buffer, tmp86
	movq	48(%rax), %rax	# buffer_5->inc, D.8718
	movq	(%rax), %rdx	# _19->name, D.8719
	movq	-8(%rbp), %rax	# buffer, tmp87
	movq	%rdx, 96(%rax)	# D.8719, buffer_5->dir.name
	.loc 1 831 0
	cmpl	$1, -12(%rbp)	#, dlen
	jbe	.L124	#,
	.loc 1 832 0
	subl	$1, -12(%rbp)	#, dlen
	jmp	.L124	#
.L119:
	.loc 1 837 0
	movq	-8(%rbp), %rax	# buffer, tmp88
	movq	$.LC6, 96(%rax)	#, buffer_5->dir.name
	.loc 1 838 0
	movl	$1, -12(%rbp)	#, dlen
.L124:
	.loc 1 841 0
	movq	-24(%rbp), %rax	# pfile, tmp89
	movl	288(%rax), %eax	# pfile_4(D)->max_include_len, D.8721
	cmpl	-12(%rbp), %eax	# dlen, D.8721
	jae	.L125	#,
	.loc 1 842 0
	movq	-24(%rbp), %rax	# pfile, tmp90
	movl	-12(%rbp), %edx	# dlen, tmp91
	movl	%edx, 288(%rax)	# tmp91, pfile_4(D)->max_include_len
.L125:
	.loc 1 844 0
	movq	-8(%rbp), %rax	# buffer, tmp92
	movl	-12(%rbp), %edx	# dlen, tmp93
	movl	%edx, 104(%rax)	# tmp93, buffer_5->dir.len
	.loc 1 845 0
	movq	-24(%rbp), %rax	# pfile, tmp94
	movq	688(%rax), %rdx	# pfile_4(D)->opts.quote_include, D.8716
	movq	-8(%rbp), %rax	# buffer, tmp95
	movq	%rdx, 88(%rax)	# D.8716, buffer_5->dir.next
	.loc 1 846 0
	movq	-24(%rbp), %rax	# pfile, tmp96
	movq	56(%rax), %rax	# pfile_4(D)->map, D.8722
	movzbl	21(%rax), %eax	# _25->sysp, D.8717
	movzbl	%al, %edx	# D.8717, D.8723
	movq	-8(%rbp), %rax	# buffer, tmp97
	movl	%edx, 128(%rax)	# D.8723, buffer_5->dir.sysp
.L122:
	.loc 1 849 0
	movq	-8(%rbp), %rax	# buffer, tmp98
	addq	$88, %rax	#, D.8716
.L121:
	.loc 1 850 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	search_from, .-search_from
	.type	read_filename_string, @function
read_filename_string:
.LFB29:
	.loc 1 874 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -36(%rbp)	# ch, ch
	movq	%rsi, -48(%rbp)	# f, f
	.loc 1 878 0
	movl	$20, -20(%rbp)	#, len
	.loc 1 879 0
	movl	-20(%rbp), %eax	# len, tmp83
	addl	$1, %eax	#, D.8725
	cltq
	movq	%rax, %rdi	# D.8726,
	call	xmalloc	#
	movq	%rax, -16(%rbp)	# tmp84, alloc
	movq	-16(%rbp), %rax	# alloc, tmp85
	movq	%rax, -8(%rbp)	# tmp85, set
	.loc 1 880 0
	movl	-36(%rbp), %eax	# ch, tmp86
	movzbl	%al, %eax	# tmp86, D.8725
	cltq
	movzwl	_sch_istable(%rax,%rax), %eax	# _sch_istable, D.8727
	movzwl	%ax, %eax	# D.8727, D.8725
	andl	$3072, %eax	#, D.8725
	testl	%eax, %eax	# D.8725
	jne	.L127	#,
	.loc 1 882 0
	movq	-8(%rbp), %rax	# set, set.19
	leaq	1(%rax), %rdx	#, tmp88
	movq	%rdx, -8(%rbp)	# tmp88, set
	movl	-36(%rbp), %edx	# ch, tmp89
	movb	%dl, (%rax)	# D.8728, *set.19_20
	.loc 1 883 0
	jmp	.L128	#
.L130:
	.loc 1 885 0
	movq	-8(%rbp), %rdx	# set, set.20
	movq	-16(%rbp), %rax	# alloc, alloc.21
	subq	%rax, %rdx	# alloc.21, D.8729
	movl	-20(%rbp), %eax	# len, tmp90
	cltq
	cmpq	%rax, %rdx	# D.8729, D.8729
	jne	.L129	#,
	.loc 1 887 0
	sall	-20(%rbp)	# len
	.loc 1 888 0
	movl	-20(%rbp), %eax	# len, tmp91
	addl	$1, %eax	#, D.8725
	movslq	%eax, %rdx	# D.8725, D.8726
	movq	-16(%rbp), %rax	# alloc, tmp92
	movq	%rdx, %rsi	# D.8726,
	movq	%rax, %rdi	# tmp92,
	call	xrealloc	#
	movq	%rax, -16(%rbp)	# tmp93, alloc
	.loc 1 889 0
	movl	-20(%rbp), %eax	# len, tmp94
	movl	%eax, %edx	# tmp94, tmp95
	shrl	$31, %edx	#, tmp95
	addl	%edx, %eax	# tmp95, tmp96
	sarl	%eax	# tmp97
	movslq	%eax, %rdx	# D.8725, D.8730
	movq	-16(%rbp), %rax	# alloc, tmp101
	addq	%rdx, %rax	# D.8730, tmp100
	movq	%rax, -8(%rbp)	# tmp100, set
.L129:
	.loc 1 891 0
	movq	-8(%rbp), %rax	# set, set.22
	leaq	1(%rax), %rdx	#, tmp102
	movq	%rdx, -8(%rbp)	# tmp102, set
	movl	-36(%rbp), %edx	# ch, tmp103
	movb	%dl, (%rax)	# D.8728, *set.22_40
.L128:
	.loc 1 883 0 discriminator 1
	movq	-48(%rbp), %rax	# f, tmp104
	movq	%rax, %rdi	# tmp104,
	call	_IO_getc	#
	movl	%eax, -36(%rbp)	# tmp105, ch
	cmpl	$-1, -36(%rbp)	#, ch
	je	.L127	#,
	.loc 1 883 0 is_stmt 0 discriminator 2
	movl	-36(%rbp), %eax	# ch, tmp106
	movzbl	%al, %eax	# tmp106, D.8725
	cltq
	movzwl	_sch_istable(%rax,%rax), %eax	# _sch_istable, D.8727
	movzwl	%ax, %eax	# D.8727, D.8725
	andl	$3072, %eax	#, D.8725
	testl	%eax, %eax	# D.8725
	je	.L130	#,
.L127:
	.loc 1 894 0 is_stmt 1
	movq	-8(%rbp), %rax	# set, tmp108
	movb	$0, (%rax)	#, *set_7
	.loc 1 895 0
	movq	-48(%rbp), %rdx	# f, tmp109
	movl	-36(%rbp), %eax	# ch, tmp110
	movq	%rdx, %rsi	# tmp109,
	movl	%eax, %edi	# tmp110,
	call	ungetc	#
	.loc 1 896 0
	movq	-16(%rbp), %rax	# alloc, D.8731
	.loc 1 897 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	read_filename_string, .-read_filename_string
	.section	.rodata
.LC7:
	.string	"r"
	.text
	.type	read_name_map, @function
read_name_map:
.LFB30:
	.loc 1 912 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$88, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)	# pfile, pfile
	movq	%rsi, -96(%rbp)	# dirname, dirname
	.loc 1 918 0
	movq	-88(%rbp), %rax	# pfile, tmp97
	movq	704(%rax), %rax	# pfile_3(D)->opts.map_list, tmp98
	movq	%rax, -64(%rbp)	# tmp98, map_list_ptr
	jmp	.L133	#
.L136:
	.loc 1 920 0
	movq	-64(%rbp), %rax	# map_list_ptr, tmp99
	movq	8(%rax), %rax	# map_list_ptr_1->map_list_name, D.8733
	movq	-96(%rbp), %rdx	# dirname, tmp100
	movq	%rdx, %rsi	# tmp100,
	movq	%rax, %rdi	# D.8733,
	call	strcmp	#
	testl	%eax, %eax	# D.8734
	jne	.L134	#,
	.loc 1 921 0
	movq	-64(%rbp), %rax	# map_list_ptr, tmp101
	movq	16(%rax), %rax	# map_list_ptr_1->map_list_map, D.8732
	jmp	.L135	#
.L134:
	.loc 1 919 0
	movq	-64(%rbp), %rax	# map_list_ptr, tmp102
	movq	(%rax), %rax	# map_list_ptr_1->map_list_next, tmp103
	movq	%rax, -64(%rbp)	# tmp103, map_list_ptr
.L133:
	.loc 1 918 0 discriminator 1
	cmpq	$0, -64(%rbp)	#, map_list_ptr
	jne	.L136	#,
	.loc 1 923 0
	movl	$24, %edi	#,
	call	xmalloc	#
	movq	%rax, -64(%rbp)	# tmp104, map_list_ptr
	.loc 1 925 0
	movq	-96(%rbp), %rax	# dirname, tmp105
	movq	%rax, %rdi	# tmp105,
	call	xstrdup	#
	movq	%rax, %rdx	# tmp106, D.8733
	movq	-64(%rbp), %rax	# map_list_ptr, tmp107
	movq	%rdx, 8(%rax)	# D.8733, map_list_ptr_10->map_list_name
	.loc 1 928 0
	movq	-64(%rbp), %rax	# map_list_ptr, tmp108
	movq	$0, 16(%rax)	#, map_list_ptr_10->map_list_map
	.loc 1 930 0
	movq	-96(%rbp), %rax	# dirname, tmp109
	movq	%rax, %rdi	# tmp109,
	call	strlen	#
	addq	$12, %rax	#, D.8735
	leaq	15(%rax), %rdx	#, tmp110
	movl	$16, %eax	#, tmp187
	subq	$1, %rax	#, tmp111
	addq	%rdx, %rax	# tmp110, tmp112
	movl	$16, %ebx	#, tmp188
	movl	$0, %edx	#, tmp115
	divq	%rbx	# tmp188
	imulq	$16, %rax, %rax	#, tmp114, tmp116
	subq	%rax, %rsp	# tmp116,
	movq	%rsp, %rax	#, tmp117
	addq	$15, %rax	#, tmp118
	shrq	$4, %rax	#, tmp119
	salq	$4, %rax	#, tmp120
	movq	%rax, -56(%rbp)	# tmp120, name
	.loc 1 931 0
	movq	-96(%rbp), %rdx	# dirname, tmp121
	movq	-56(%rbp), %rax	# name, tmp122
	movq	%rdx, %rsi	# tmp121,
	movq	%rax, %rdi	# tmp122,
	call	strcpy	#
	.loc 1 932 0
	movq	-96(%rbp), %rax	# dirname, tmp123
	movzbl	(%rax), %eax	# *dirname_6(D), D.8736
	testb	%al, %al	# D.8736
	je	.L137	#,
	.loc 1 933 0
	movq	-56(%rbp), %rax	# name, tmp124
	movq	$-1, %rcx	#, tmp128
	movq	%rax, %rdx	# tmp124, tmp127
	movl	$0, %eax	#, tmp129
	movq	%rdx, %rdi	# tmp127, tmp127
	repnz scasb
	movq	%rcx, %rax	# tmp125, tmp125
	notq	%rax	# tmp126
	leaq	-1(%rax), %rdx	#, D.8735
	movq	-56(%rbp), %rax	# name, tmp130
	addq	%rdx, %rax	# D.8735, D.8733
	movw	$47, (%rax)	#, MEM[(void *)_17]
.L137:
	.loc 1 934 0
	movq	-56(%rbp), %rax	# name, tmp131
	movq	$-1, %rcx	#, tmp135
	movq	%rax, %rdx	# tmp131, tmp134
	movl	$0, %eax	#, tmp136
	movq	%rdx, %rdi	# tmp134, tmp134
	repnz scasb
	movq	%rcx, %rax	# tmp132, tmp132
	notq	%rax	# tmp133
	leaq	-1(%rax), %rdx	#, D.8735
	movq	-56(%rbp), %rax	# name, tmp137
	addq	%rdx, %rax	# D.8735, D.8733
	movabsq	$7435005814636635496, %rbx	#, tmp194
	movq	%rbx, (%rax)	# tmp194, MEM[(void *)_19]
	movw	$25443, 8(%rax)	#, MEM[(void *)_19]
	movb	$0, 10(%rax)	#, MEM[(void *)_19]
	.loc 1 935 0
	movq	-56(%rbp), %rax	# name, tmp138
	movl	$.LC7, %esi	#,
	movq	%rax, %rdi	# tmp138,
	call	fopen	#
	movq	%rax, -48(%rbp)	# tmp139, f
	.loc 1 938 0
	cmpq	$0, -48(%rbp)	#, f
	je	.L138	#,
.LBB4:
	.loc 1 941 0
	movq	-96(%rbp), %rax	# dirname, tmp140
	movq	%rax, %rdi	# tmp140,
	call	strlen	#
	movl	%eax, -72(%rbp)	# D.8735, dirlen
	.loc 1 943 0
	jmp	.L139	#
.L148:
.LBB5:
	.loc 1 948 0
	movl	-68(%rbp), %eax	# ch, tmp141
	movzbl	%al, %eax	# tmp141, D.8734
	cltq
	movzwl	_sch_istable(%rax,%rax), %eax	# _sch_istable, D.8737
	movzwl	%ax, %eax	# D.8737, D.8734
	andl	$3072, %eax	#, D.8734
	testl	%eax, %eax	# D.8734
	je	.L140	#,
	.loc 1 949 0
	jmp	.L139	#
.L140:
	.loc 1 950 0
	movq	-48(%rbp), %rdx	# f, tmp143
	movl	-68(%rbp), %eax	# ch, tmp144
	movq	%rdx, %rsi	# tmp143,
	movl	%eax, %edi	# tmp144,
	call	read_filename_string	#
	movq	%rax, -40(%rbp)	# tmp145, from
.L142:
	.loc 1 951 0 discriminator 1
	movq	-48(%rbp), %rax	# f, tmp146
	movq	%rax, %rdi	# tmp146,
	call	_IO_getc	#
	movl	%eax, -68(%rbp)	# tmp147, ch
	cmpl	$-1, -68(%rbp)	#, ch
	je	.L141	#,
	.loc 1 951 0 is_stmt 0 discriminator 2
	movl	-68(%rbp), %eax	# ch, tmp148
	movzbl	%al, %eax	# tmp148, D.8734
	cltq
	movzwl	_sch_istable(%rax,%rax), %eax	# _sch_istable, D.8737
	movzwl	%ax, %eax	# D.8737, D.8734
	andl	$1, %eax	#, D.8734
	testl	%eax, %eax	# D.8734
	jne	.L142	#,
.L141:
	.loc 1 953 0 is_stmt 1
	movq	-48(%rbp), %rdx	# f, tmp150
	movl	-68(%rbp), %eax	# ch, tmp151
	movq	%rdx, %rsi	# tmp150,
	movl	%eax, %edi	# tmp151,
	call	read_filename_string	#
	movq	%rax, -32(%rbp)	# tmp152, to
	.loc 1 955 0
	movl	$24, %edi	#,
	call	xmalloc	#
	movq	%rax, -24(%rbp)	# tmp153, ptr
	.loc 1 957 0
	movq	-24(%rbp), %rax	# ptr, tmp154
	movq	-40(%rbp), %rdx	# from, tmp155
	movq	%rdx, 8(%rax)	# tmp155, ptr_35->map_from
	.loc 1 960 0
	movq	-32(%rbp), %rax	# to, tmp156
	movzbl	(%rax), %eax	# *to_34, D.8736
	cmpb	$47, %al	#, D.8736
	je	.L143	#,
	.loc 1 960 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# to, tmp157
	movzbl	(%rax), %eax	# *to_34, D.8736
	cmpb	$36, %al	#, D.8736
	jne	.L144	#,
.L143:
	.loc 1 961 0 is_stmt 1
	movq	-24(%rbp), %rax	# ptr, tmp158
	movq	-32(%rbp), %rdx	# to, tmp159
	movq	%rdx, 16(%rax)	# tmp159, ptr_35->map_to
	jmp	.L145	#
.L144:
	.loc 1 964 0
	movl	-72(%rbp), %eax	# dirlen, tmp160
	movslq	%eax, %rbx	# tmp160, D.8735
	movq	-32(%rbp), %rax	# to, tmp161
	movq	%rax, %rdi	# tmp161,
	call	strlen	#
	addq	%rbx, %rax	# D.8735, D.8735
	addq	$2, %rax	#, D.8735
	movq	%rax, %rdi	# D.8735,
	call	xmalloc	#
	movq	%rax, %rdx	# tmp162, D.8738
	movq	-24(%rbp), %rax	# ptr, tmp163
	movq	%rdx, 16(%rax)	# D.8738, ptr_35->map_to
	.loc 1 965 0
	movq	-24(%rbp), %rax	# ptr, tmp164
	movq	16(%rax), %rax	# ptr_35->map_to, D.8733
	movq	-96(%rbp), %rdx	# dirname, tmp165
	movq	%rdx, %rsi	# tmp165,
	movq	%rax, %rdi	# D.8733,
	call	strcpy	#
	.loc 1 966 0
	movq	-24(%rbp), %rax	# ptr, tmp166
	movq	16(%rax), %rdx	# ptr_35->map_to, D.8733
	movl	-72(%rbp), %eax	# dirlen, tmp167
	cltq
	addq	%rdx, %rax	# D.8733, D.8733
	movb	$47, (%rax)	#, *_46
	.loc 1 967 0
	movq	-24(%rbp), %rax	# ptr, tmp168
	movq	16(%rax), %rax	# ptr_35->map_to, D.8733
	movl	-72(%rbp), %edx	# dirlen, tmp169
	movslq	%edx, %rdx	# tmp169, D.8739
	addq	$1, %rdx	#, D.8739
	addq	%rax, %rdx	# D.8733, D.8733
	movq	-32(%rbp), %rax	# to, tmp170
	movq	%rax, %rsi	# tmp170,
	movq	%rdx, %rdi	# D.8733,
	call	strcpy	#
	.loc 1 968 0
	movq	-32(%rbp), %rax	# to, tmp171
	movq	%rax, %rdi	# tmp171,
	call	free	#
.L145:
	.loc 1 971 0
	movq	-64(%rbp), %rax	# map_list_ptr, tmp172
	movq	16(%rax), %rdx	# map_list_ptr_10->map_list_map, D.8732
	movq	-24(%rbp), %rax	# ptr, tmp173
	movq	%rdx, (%rax)	# D.8732, ptr_35->map_next
	.loc 1 972 0
	movq	-64(%rbp), %rax	# map_list_ptr, tmp174
	movq	-24(%rbp), %rdx	# ptr, tmp175
	movq	%rdx, 16(%rax)	# tmp175, map_list_ptr_10->map_list_map
	.loc 1 974 0
	jmp	.L146	#
.L147:
	.loc 1 975 0
	cmpl	$-1, -68(%rbp)	#, ch
	jne	.L146	#,
	.loc 1 976 0
	jmp	.L139	#
.L146:
	.loc 1 974 0 discriminator 1
	movq	-48(%rbp), %rax	# f, tmp176
	movq	%rax, %rdi	# tmp176,
	call	_IO_getc	#
	movl	%eax, -68(%rbp)	# tmp177, ch
	cmpl	$10, -68(%rbp)	#, ch
	jne	.L147	#,
.L139:
.LBE5:
	.loc 1 943 0 discriminator 1
	movq	-48(%rbp), %rax	# f, tmp178
	movq	%rax, %rdi	# tmp178,
	call	_IO_getc	#
	movl	%eax, -68(%rbp)	# tmp179, ch
	cmpl	$-1, -68(%rbp)	#, ch
	jne	.L148	#,
	.loc 1 978 0
	movq	-48(%rbp), %rax	# f, tmp180
	movq	%rax, %rdi	# tmp180,
	call	fclose	#
.L138:
.LBE4:
	.loc 1 982 0
	movq	-88(%rbp), %rax	# pfile, tmp181
	movq	704(%rax), %rdx	# pfile_3(D)->opts.map_list, D.8740
	movq	-64(%rbp), %rax	# map_list_ptr, tmp182
	movq	%rdx, (%rax)	# D.8740, map_list_ptr_10->map_list_next
	.loc 1 983 0
	movq	-88(%rbp), %rax	# pfile, tmp183
	movq	-64(%rbp), %rdx	# map_list_ptr, tmp184
	movq	%rdx, 704(%rax)	# tmp184, pfile_3(D)->opts.map_list
	.loc 1 985 0
	movq	-64(%rbp), %rax	# map_list_ptr, tmp185
	movq	16(%rax), %rax	# map_list_ptr_10->map_list_map, D.8732
.L135:
	.loc 1 986 0
	movq	-8(%rbp), %rbx	#,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	read_name_map, .-read_name_map
	.section	.rodata
	.align 8
.LC8:
	.string	"absolute file name in remap_filename"
	.text
	.type	remap_filename, @function
remap_filename:
.LFB31:
	.loc 1 995 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$88, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)	# pfile, pfile
	movq	%rsi, -80(%rbp)	# name, name
	movq	%rdx, -88(%rbp)	# loc, loc
	.loc 1 1000 0
	movq	-88(%rbp), %rax	# loc, tmp94
	movq	48(%rax), %rax	# loc_4(D)->name_map, D.8743
	testq	%rax, %rax	# D.8743
	jne	.L150	#,
.LBB6:
	.loc 1 1003 0
	movq	-88(%rbp), %rax	# loc, tmp95
	movl	16(%rax), %eax	# loc_4(D)->len, D.8744
	addl	$1, %eax	#, D.8744
	movl	%eax, %eax	# D.8744, D.8745
	leaq	15(%rax), %rdx	#, tmp96
	movl	$16, %eax	#, tmp159
	subq	$1, %rax	#, tmp97
	addq	%rdx, %rax	# tmp96, tmp98
	movl	$16, %ebx	#, tmp160
	movl	$0, %edx	#, tmp101
	divq	%rbx	# tmp160
	imulq	$16, %rax, %rax	#, tmp100, tmp102
	subq	%rax, %rsp	# tmp102,
	movq	%rsp, %rax	#, tmp103
	addq	$15, %rax	#, tmp104
	shrq	$4, %rax	#, tmp105
	salq	$4, %rax	#, tmp106
	movq	%rax, -48(%rbp)	# tmp106, dname
	.loc 1 1004 0
	movq	-88(%rbp), %rax	# loc, tmp107
	movl	16(%rax), %eax	# loc_4(D)->len, D.8744
	movl	%eax, %edx	# D.8744, D.8745
	movq	-88(%rbp), %rax	# loc, tmp108
	movq	8(%rax), %rcx	# loc_4(D)->name, D.8746
	movq	-48(%rbp), %rax	# dname, tmp109
	movq	%rcx, %rsi	# D.8746,
	movq	%rax, %rdi	# tmp109,
	call	memcpy	#
	.loc 1 1005 0
	movq	-88(%rbp), %rax	# loc, tmp110
	movl	16(%rax), %eax	# loc_4(D)->len, D.8744
	movl	%eax, %edx	# D.8744, D.8747
	movq	-48(%rbp), %rax	# dname, tmp111
	addq	%rdx, %rax	# D.8747, D.8742
	movb	$0, (%rax)	#, *_15
	.loc 1 1007 0
	movq	-48(%rbp), %rdx	# dname, tmp112
	movq	-72(%rbp), %rax	# pfile, tmp113
	movq	%rdx, %rsi	# tmp112,
	movq	%rax, %rdi	# tmp113,
	call	read_name_map	#
	movq	-88(%rbp), %rdx	# loc, tmp114
	movq	%rax, 48(%rdx)	# D.8743, loc_4(D)->name_map
	.loc 1 1008 0
	movq	-88(%rbp), %rax	# loc, tmp115
	movq	48(%rax), %rax	# loc_4(D)->name_map, D.8743
	testq	%rax, %rax	# D.8743
	jne	.L150	#,
	.loc 1 1009 0
	movq	-80(%rbp), %rax	# name, D.8742
	jmp	.L151	#
.L150:
.LBE6:
	.loc 1 1013 0
	movq	-88(%rbp), %rax	# loc, tmp116
	movl	16(%rax), %eax	# loc_4(D)->len, D.8744
	movl	%eax, %eax	# D.8744, D.8747
	leaq	1(%rax), %rdx	#, D.8747
	movq	-80(%rbp), %rax	# name, tmp120
	addq	%rdx, %rax	# D.8747, tmp119
	movq	%rax, -40(%rbp)	# tmp119, from
	.loc 1 1015 0
	movq	-88(%rbp), %rax	# loc, tmp121
	movq	48(%rax), %rax	# loc_4(D)->name_map, tmp122
	movq	%rax, -56(%rbp)	# tmp122, map
	jmp	.L152	#
.L154:
	.loc 1 1016 0
	movq	-56(%rbp), %rax	# map, tmp123
	movq	8(%rax), %rax	# map_1->map_from, D.8742
	movq	-40(%rbp), %rdx	# from, tmp124
	movq	%rdx, %rsi	# tmp124,
	movq	%rax, %rdi	# D.8742,
	call	strcmp	#
	testl	%eax, %eax	# D.8748
	jne	.L153	#,
	.loc 1 1017 0
	movq	-56(%rbp), %rax	# map, tmp125
	movq	16(%rax), %rax	# map_1->map_to, D.8742
	jmp	.L151	#
.L153:
	.loc 1 1015 0
	movq	-56(%rbp), %rax	# map, tmp126
	movq	(%rax), %rax	# map_1->map_next, tmp127
	movq	%rax, -56(%rbp)	# tmp127, map
.L152:
	.loc 1 1015 0 is_stmt 0 discriminator 1
	cmpq	$0, -56(%rbp)	#, map
	jne	.L154	#,
	.loc 1 1023 0 is_stmt 1
	movq	-80(%rbp), %rax	# name, tmp128
	movl	$47, %esi	#,
	movq	%rax, %rdi	# tmp128,
	call	strrchr	#
	movq	%rax, -32(%rbp)	# tmp129, p
	.loc 1 1024 0
	cmpq	$0, -32(%rbp)	#, p
	jne	.L155	#,
	.loc 1 1025 0
	movq	-80(%rbp), %rax	# name, D.8742
	jmp	.L151	#
.L155:
	.loc 1 1028 0
	movq	-32(%rbp), %rax	# p, tmp130
	cmpq	-80(%rbp), %rax	# name, tmp130
	jne	.L156	#,
	.loc 1 1029 0
	movq	-72(%rbp), %rax	# pfile, tmp131
	movl	$.LC8, %esi	#,
	movq	%rax, %rdi	# tmp131,
	movl	$0, %eax	#,
	call	cpp_ice	#
.L156:
	.loc 1 1031 0
	movq	-32(%rbp), %rdx	# p, p.23
	movq	-80(%rbp), %rax	# name, name.24
	subq	%rax, %rdx	# name.24, D.8749
	movq	%rdx, %rax	# D.8749, D.8749
	addq	$1, %rax	#, D.8749
	leaq	15(%rax), %rdx	#, tmp132
	movl	$16, %eax	#, tmp161
	subq	$1, %rax	#, tmp133
	addq	%rdx, %rax	# tmp132, tmp134
	movl	$16, %ebx	#, tmp162
	movl	$0, %edx	#, tmp137
	divq	%rbx	# tmp162
	imulq	$16, %rax, %rax	#, tmp136, tmp138
	subq	%rax, %rsp	# tmp138,
	movq	%rsp, %rax	#, tmp139
	addq	$15, %rax	#, tmp140
	shrq	$4, %rax	#, tmp141
	salq	$4, %rax	#, tmp142
	movq	%rax, -24(%rbp)	# tmp142, dir
	.loc 1 1032 0
	movq	-32(%rbp), %rdx	# p, p.25
	movq	-80(%rbp), %rax	# name, name.26
	subq	%rax, %rdx	# name.26, D.8749
	movq	%rdx, %rax	# D.8749, D.8749
	movq	%rax, %rdx	# D.8749, D.8745
	movq	-80(%rbp), %rcx	# name, tmp143
	movq	-24(%rbp), %rax	# dir, tmp144
	movq	%rcx, %rsi	# tmp143,
	movq	%rax, %rdi	# tmp144,
	call	memcpy	#
	.loc 1 1033 0
	movq	-32(%rbp), %rdx	# p, p.27
	movq	-80(%rbp), %rax	# name, name.28
	subq	%rax, %rdx	# name.28, D.8749
	movq	%rdx, %rax	# D.8749, D.8749
	movq	%rax, %rdx	# D.8749, D.8747
	movq	-24(%rbp), %rax	# dir, tmp145
	addq	%rdx, %rax	# D.8747, D.8742
	movb	$0, (%rax)	#, *_46
	.loc 1 1034 0
	movq	-32(%rbp), %rax	# p, tmp149
	addq	$1, %rax	#, tmp148
	movq	%rax, -40(%rbp)	# tmp148, from
	.loc 1 1036 0
	movq	-24(%rbp), %rdx	# dir, tmp150
	movq	-72(%rbp), %rax	# pfile, tmp151
	movq	%rdx, %rsi	# tmp150,
	movq	%rax, %rdi	# tmp151,
	call	read_name_map	#
	movq	%rax, -56(%rbp)	# tmp152, map
	jmp	.L157	#
.L159:
	.loc 1 1037 0
	movq	-56(%rbp), %rax	# map, tmp153
	movq	8(%rax), %rax	# map_2->map_from, D.8742
	movq	-40(%rbp), %rdx	# from, tmp154
	movq	%rdx, %rsi	# tmp154,
	movq	%rax, %rdi	# D.8742,
	call	strcmp	#
	testl	%eax, %eax	# D.8748
	jne	.L158	#,
	.loc 1 1038 0
	movq	-56(%rbp), %rax	# map, tmp155
	movq	16(%rax), %rax	# map_2->map_to, D.8742
	jmp	.L151	#
.L158:
	.loc 1 1036 0
	movq	-56(%rbp), %rax	# map, tmp156
	movq	(%rax), %rax	# map_2->map_next, tmp157
	movq	%rax, -56(%rbp)	# tmp157, map
.L157:
	.loc 1 1036 0 is_stmt 0 discriminator 1
	cmpq	$0, -56(%rbp)	#, map
	jne	.L159	#,
	.loc 1 1040 0 is_stmt 1
	movq	-80(%rbp), %rax	# name, D.8742
.L151:
	.loc 1 1041 0
	movq	-8(%rbp), %rbx	#,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	remap_filename, .-remap_filename
	.type	remove_component_p, @function
remove_component_p:
.LFB32:
	.loc 1 1050 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$176, %rsp	#,
	movq	%rdi, -168(%rbp)	# path, path
	.loc 1 1057 0
	leaq	-144(%rbp), %rdx	#, tmp65
	movq	-168(%rbp), %rax	# path, tmp66
	movq	%rdx, %rsi	# tmp65,
	movq	%rax, %rdi	# tmp66,
	call	stat	#
	movl	%eax, -148(%rbp)	# tmp67, result
	.loc 1 1063 0
	cmpl	$0, -148(%rbp)	#, result
	jne	.L161	#,
	.loc 1 1064 0
	call	__errno_location	#
	movl	$0, (%rax)	#, *_4
.L161:
	.loc 1 1066 0
	cmpl	$0, -148(%rbp)	#, result
	jne	.L162	#,
	.loc 1 1066 0 is_stmt 0 discriminator 1
	movl	-120(%rbp), %eax	# s.st_mode, D.8752
	andl	$61440, %eax	#, D.8752
	cmpl	$16384, %eax	#, D.8752
	jne	.L162	#,
	.loc 1 1066 0 discriminator 3
	movl	$1, %eax	#, iftmp.29
	jmp	.L163	#
.L162:
	.loc 1 1066 0 discriminator 2
	movl	$0, %eax	#, iftmp.29
.L163:
	.loc 1 1067 0 is_stmt 1 discriminator 4
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	remove_component_p, .-remove_component_p
	.globl	_cpp_simplify_pathname
	.type	_cpp_simplify_pathname, @function
_cpp_simplify_pathname:
.LFB33:
	.loc 1 1086 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# path, path
	.loc 1 1090 0
	movl	$0, -40(%rbp)	#, absolute
	.loc 1 1092 0
	call	__errno_location	#
	movl	$0, (%rax)	#, *_20
	.loc 1 1094 0
	movq	-56(%rbp), %rax	# path, tmp91
	movzbl	(%rax), %eax	# *path_21(D), D.8756
	testb	%al, %al	# D.8756
	jne	.L166	#,
	.loc 1 1095 0
	movq	-56(%rbp), %rax	# path, D.8754
	jmp	.L167	#
.L166:
	.loc 1 1108 0
	movq	-56(%rbp), %rax	# path, tmp92
	movq	%rax, -24(%rbp)	# tmp92, to
	movq	-24(%rbp), %rax	# to, tmp93
	movq	%rax, -32(%rbp)	# tmp93, from
	.loc 1 1112 0
	movq	-32(%rbp), %rax	# from, tmp94
	movzbl	(%rax), %eax	# *from_25, D.8756
	cmpb	$47, %al	#, D.8756
	jne	.L168	#,
	.loc 1 1114 0
	movl	$1, -40(%rbp)	#, absolute
	.loc 1 1115 0
	addq	$1, -24(%rbp)	#, to
	.loc 1 1116 0
	addq	$1, -32(%rbp)	#, from
	.loc 1 1117 0
	movq	-32(%rbp), %rax	# from, tmp95
	movzbl	(%rax), %eax	# *from_29, D.8756
	cmpb	$47, %al	#, D.8756
	jne	.L168	#,
	.loc 1 1119 0
	addq	$1, -32(%rbp)	#, from
	movq	-32(%rbp), %rax	# from, tmp96
	movzbl	(%rax), %eax	# *from_31, D.8756
	cmpb	$47, %al	#, D.8756
	jne	.L169	#,
.L170:
	.loc 1 1121 0 discriminator 1
	addq	$1, -32(%rbp)	#, from
	movq	-32(%rbp), %rax	# from, tmp97
	movzbl	(%rax), %eax	# *from_33, D.8756
	cmpb	$47, %al	#, D.8756
	je	.L170	#,
	jmp	.L168	#
.L169:
	.loc 1 1124 0
	addq	$1, -24(%rbp)	#, to
.L168:
	.loc 1 1128 0
	movq	-24(%rbp), %rax	# to, tmp98
	movq	%rax, -8(%rbp)	# tmp98, orig_base
	movq	-8(%rbp), %rax	# orig_base, tmp99
	movq	%rax, -16(%rbp)	# tmp99, base
.L189:
.LBB7:
	.loc 1 1131 0
	movl	$0, -36(%rbp)	#, move_base
	.loc 1 1133 0
	jmp	.L171	#
.L172:
	.loc 1 1134 0
	addq	$1, -32(%rbp)	#, from
.L171:
	.loc 1 1133 0 discriminator 1
	movq	-32(%rbp), %rax	# from, tmp100
	movzbl	(%rax), %eax	# *from_4, D.8756
	cmpb	$47, %al	#, D.8756
	je	.L172	#,
	.loc 1 1136 0
	movq	-32(%rbp), %rax	# from, tmp101
	movzbl	(%rax), %eax	# *from_4, D.8756
	testb	%al, %al	# D.8756
	jne	.L173	#,
	.loc 1 1137 0
	jmp	.L174	#
.L173:
	.loc 1 1139 0
	movq	-32(%rbp), %rax	# from, tmp102
	movzbl	(%rax), %eax	# *from_4, D.8756
	cmpb	$46, %al	#, D.8756
	jne	.L175	#,
	.loc 1 1141 0
	movq	-32(%rbp), %rax	# from, tmp103
	addq	$1, %rax	#, D.8754
	movzbl	(%rax), %eax	# *_43, D.8756
	testb	%al, %al	# D.8756
	jne	.L176	#,
	.loc 1 1142 0
	jmp	.L174	#
.L176:
	.loc 1 1143 0
	movq	-32(%rbp), %rax	# from, tmp104
	addq	$1, %rax	#, D.8754
	movzbl	(%rax), %eax	# *_45, D.8756
	cmpb	$47, %al	#, D.8756
	jne	.L177	#,
	.loc 1 1145 0
	addq	$2, -32(%rbp)	#, from
	.loc 1 1146 0
	jmp	.L178	#
.L177:
	.loc 1 1148 0
	movq	-32(%rbp), %rax	# from, tmp105
	addq	$1, %rax	#, D.8754
	movzbl	(%rax), %eax	# *_48, D.8756
	cmpb	$46, %al	#, D.8756
	jne	.L175	#,
	.loc 1 1148 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# from, tmp106
	addq	$2, %rax	#, D.8754
	movzbl	(%rax), %eax	# *_50, D.8756
	cmpb	$47, %al	#, D.8756
	je	.L179	#,
	movq	-32(%rbp), %rax	# from, tmp107
	addq	$2, %rax	#, D.8754
	movzbl	(%rax), %eax	# *_52, D.8756
	testb	%al, %al	# D.8756
	jne	.L175	#,
.L179:
	.loc 1 1151 0 is_stmt 1
	cmpl	$0, -40(%rbp)	#, absolute
	je	.L180	#,
	.loc 1 1151 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# orig_base, tmp108
	cmpq	-24(%rbp), %rax	# to, tmp108
	jne	.L180	#,
	.loc 1 1153 0 is_stmt 1
	addq	$2, -32(%rbp)	#, from
	.loc 1 1154 0
	jmp	.L178	#
.L180:
	.loc 1 1158 0
	movq	-16(%rbp), %rax	# base, tmp109
	cmpq	-24(%rbp), %rax	# to, tmp109
	je	.L181	#,
	.loc 1 1158 0 is_stmt 0 discriminator 1
	call	__errno_location	#
	movl	(%rax), %eax	# *_55, D.8757
	testl	%eax, %eax	# D.8757
	jne	.L181	#,
	.loc 1 1161 0 is_stmt 1
	movq	-24(%rbp), %rax	# to, tmp110
	movb	$0, (%rax)	#, *to_8
	.loc 1 1162 0
	movq	-56(%rbp), %rax	# path, tmp111
	movq	%rax, %rdi	# tmp111,
	call	remove_component_p	#
	testl	%eax, %eax	# D.8757
	je	.L181	#,
	.loc 1 1164 0
	jmp	.L182	#
.L184:
	.loc 1 1165 0
	subq	$1, -24(%rbp)	#, to
.L182:
	.loc 1 1164 0 discriminator 1
	movq	-24(%rbp), %rax	# to, tmp112
	cmpq	-16(%rbp), %rax	# base, tmp112
	jbe	.L183	#,
	.loc 1 1164 0 is_stmt 0 discriminator 2
	movq	-24(%rbp), %rax	# to, tmp113
	movzbl	(%rax), %eax	# *to_9, D.8756
	cmpb	$47, %al	#, D.8756
	jne	.L184	#,
.L183:
	.loc 1 1166 0 is_stmt 1
	addq	$2, -32(%rbp)	#, from
	.loc 1 1167 0
	jmp	.L178	#
.L181:
	.loc 1 1170 0
	movl	$1, -36(%rbp)	#, move_base
.L175:
	.loc 1 1175 0
	movq	-24(%rbp), %rax	# to, tmp114
	cmpq	-8(%rbp), %rax	# orig_base, tmp114
	jbe	.L185	#,
	.loc 1 1176 0
	movq	-24(%rbp), %rax	# to, to.30
	leaq	1(%rax), %rdx	#, tmp115
	movq	%rdx, -24(%rbp)	# tmp115, to
	movb	$47, (%rax)	#, *to.30_62
	.loc 1 1179 0
	jmp	.L186	#
.L185:
	jmp	.L186	#
.L188:
	.loc 1 1180 0
	movq	-24(%rbp), %rax	# to, to.31
	leaq	1(%rax), %rdx	#, tmp116
	movq	%rdx, -24(%rbp)	# tmp116, to
	movq	-32(%rbp), %rdx	# from, from.32
	leaq	1(%rdx), %rcx	#, tmp117
	movq	%rcx, -32(%rbp)	# tmp117, from
	movzbl	(%rdx), %edx	# *from.32_68, D.8756
	movb	%dl, (%rax)	# D.8756, *to.31_66
.L186:
	.loc 1 1179 0 discriminator 1
	movq	-32(%rbp), %rax	# from, tmp118
	movzbl	(%rax), %eax	# *from_5, D.8756
	testb	%al, %al	# D.8756
	je	.L187	#,
	.loc 1 1179 0 is_stmt 0 discriminator 2
	movq	-32(%rbp), %rax	# from, tmp119
	movzbl	(%rax), %eax	# *from_5, D.8756
	cmpb	$47, %al	#, D.8756
	jne	.L188	#,
.L187:
	.loc 1 1182 0 is_stmt 1
	cmpl	$0, -36(%rbp)	#, move_base
	je	.L178	#,
	.loc 1 1183 0
	movq	-24(%rbp), %rax	# to, tmp120
	movq	%rax, -16(%rbp)	# tmp120, base
.LBE7:
	.loc 1 1184 0
	jmp	.L189	#
.L178:
	jmp	.L189	#
.L174:
	.loc 1 1188 0
	movq	-24(%rbp), %rax	# to, tmp121
	cmpq	-56(%rbp), %rax	# path, tmp121
	jne	.L190	#,
	.loc 1 1189 0
	movq	-24(%rbp), %rax	# to, to.33
	leaq	1(%rax), %rdx	#, tmp122
	movq	%rdx, -24(%rbp)	# tmp122, to
	movb	$46, (%rax)	#, *to.33_72
.L190:
	.loc 1 1190 0
	movq	-24(%rbp), %rax	# to, tmp123
	movb	$0, (%rax)	#, *to_13
	.loc 1 1192 0
	movq	-56(%rbp), %rax	# path, D.8754
.L167:
	.loc 1 1197 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	_cpp_simplify_pathname, .-_cpp_simplify_pathname
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 7 "/usr/include/time.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/stat.h"
	.file 9 "obstack.h"
	.file 10 "hashtable.h"
	.file 11 "cpphash.h"
	.file 12 "line-map.h"
	.file 13 "cpplib.h"
	.file 14 "splay-tree.h"
	.file 15 "./safe-ctype.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x2285
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF499
	.byte	0x1
	.long	.LASF500
	.long	.LASF501
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF1
	.uleb128 0x4
	.byte	0x8
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF2
	.uleb128 0x5
	.long	.LASF8
	.byte	0x2
	.byte	0xd4
	.long	0x56
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF3
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x5
	.long	.LASF9
	.byte	0x3
	.byte	0x85
	.long	0x56
	.uleb128 0x5
	.long	.LASF10
	.byte	0x3
	.byte	0x86
	.long	0x3b
	.uleb128 0x5
	.long	.LASF11
	.byte	0x3
	.byte	0x87
	.long	0x3b
	.uleb128 0x5
	.long	.LASF12
	.byte	0x3
	.byte	0x88
	.long	0x56
	.uleb128 0x5
	.long	.LASF13
	.byte	0x3
	.byte	0x8a
	.long	0x3b
	.uleb128 0x5
	.long	.LASF14
	.byte	0x3
	.byte	0x8b
	.long	0x56
	.uleb128 0x5
	.long	.LASF15
	.byte	0x3
	.byte	0x8c
	.long	0x44
	.uleb128 0x5
	.long	.LASF16
	.byte	0x3
	.byte	0x8d
	.long	0x44
	.uleb128 0x5
	.long	.LASF17
	.byte	0x3
	.byte	0x94
	.long	0x44
	.uleb128 0x5
	.long	.LASF18
	.byte	0x3
	.byte	0xa2
	.long	0x44
	.uleb128 0x5
	.long	.LASF19
	.byte	0x3
	.byte	0xa7
	.long	0x44
	.uleb128 0x5
	.long	.LASF20
	.byte	0x3
	.byte	0xb5
	.long	0x44
	.uleb128 0x5
	.long	.LASF21
	.byte	0x3
	.byte	0xb8
	.long	0x44
	.uleb128 0x6
	.byte	0x8
	.long	0x10e
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF22
	.uleb128 0x5
	.long	.LASF23
	.byte	0x4
	.byte	0x30
	.long	0x120
	.uleb128 0x7
	.long	.LASF53
	.byte	0xd8
	.byte	0x5
	.byte	0xf6
	.long	0x2a1
	.uleb128 0x8
	.long	.LASF24
	.byte	0x5
	.byte	0xf7
	.long	0x2d
	.byte	0
	.uleb128 0x8
	.long	.LASF25
	.byte	0x5
	.byte	0xfc
	.long	0x108
	.byte	0x8
	.uleb128 0x8
	.long	.LASF26
	.byte	0x5
	.byte	0xfd
	.long	0x108
	.byte	0x10
	.uleb128 0x8
	.long	.LASF27
	.byte	0x5
	.byte	0xfe
	.long	0x108
	.byte	0x18
	.uleb128 0x8
	.long	.LASF28
	.byte	0x5
	.byte	0xff
	.long	0x108
	.byte	0x20
	.uleb128 0x9
	.long	.LASF29
	.byte	0x5
	.value	0x100
	.long	0x108
	.byte	0x28
	.uleb128 0x9
	.long	.LASF30
	.byte	0x5
	.value	0x101
	.long	0x108
	.byte	0x30
	.uleb128 0x9
	.long	.LASF31
	.byte	0x5
	.value	0x102
	.long	0x108
	.byte	0x38
	.uleb128 0x9
	.long	.LASF32
	.byte	0x5
	.value	0x103
	.long	0x108
	.byte	0x40
	.uleb128 0x9
	.long	.LASF33
	.byte	0x5
	.value	0x105
	.long	0x108
	.byte	0x48
	.uleb128 0x9
	.long	.LASF34
	.byte	0x5
	.value	0x106
	.long	0x108
	.byte	0x50
	.uleb128 0x9
	.long	.LASF35
	.byte	0x5
	.value	0x107
	.long	0x108
	.byte	0x58
	.uleb128 0x9
	.long	.LASF36
	.byte	0x5
	.value	0x109
	.long	0x2e9
	.byte	0x60
	.uleb128 0x9
	.long	.LASF37
	.byte	0x5
	.value	0x10b
	.long	0x2ef
	.byte	0x68
	.uleb128 0x9
	.long	.LASF38
	.byte	0x5
	.value	0x10d
	.long	0x2d
	.byte	0x70
	.uleb128 0x9
	.long	.LASF39
	.byte	0x5
	.value	0x111
	.long	0x2d
	.byte	0x74
	.uleb128 0x9
	.long	.LASF40
	.byte	0x5
	.value	0x113
	.long	0xbb
	.byte	0x78
	.uleb128 0x9
	.long	.LASF41
	.byte	0x5
	.value	0x117
	.long	0x64
	.byte	0x80
	.uleb128 0x9
	.long	.LASF42
	.byte	0x5
	.value	0x118
	.long	0x6b
	.byte	0x82
	.uleb128 0x9
	.long	.LASF43
	.byte	0x5
	.value	0x119
	.long	0x2f5
	.byte	0x83
	.uleb128 0x9
	.long	.LASF44
	.byte	0x5
	.value	0x11d
	.long	0x305
	.byte	0x88
	.uleb128 0x9
	.long	.LASF45
	.byte	0x5
	.value	0x126
	.long	0xc6
	.byte	0x90
	.uleb128 0x9
	.long	.LASF46
	.byte	0x5
	.value	0x12f
	.long	0x42
	.byte	0x98
	.uleb128 0x9
	.long	.LASF47
	.byte	0x5
	.value	0x130
	.long	0x42
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF48
	.byte	0x5
	.value	0x131
	.long	0x42
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF49
	.byte	0x5
	.value	0x132
	.long	0x42
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF50
	.byte	0x5
	.value	0x133
	.long	0x4b
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF51
	.byte	0x5
	.value	0x135
	.long	0x2d
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF52
	.byte	0x5
	.value	0x137
	.long	0x30b
	.byte	0xc4
	.byte	0
	.uleb128 0xa
	.long	0x10e
	.long	0x2b1
	.uleb128 0xb
	.long	0x34
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.long	.LASF502
	.byte	0x5
	.byte	0x9b
	.uleb128 0x7
	.long	.LASF54
	.byte	0x18
	.byte	0x5
	.byte	0xa1
	.long	0x2e9
	.uleb128 0x8
	.long	.LASF55
	.byte	0x5
	.byte	0xa2
	.long	0x2e9
	.byte	0
	.uleb128 0x8
	.long	.LASF56
	.byte	0x5
	.byte	0xa3
	.long	0x2ef
	.byte	0x8
	.uleb128 0x8
	.long	.LASF57
	.byte	0x5
	.byte	0xa7
	.long	0x2d
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2b8
	.uleb128 0x6
	.byte	0x8
	.long	0x120
	.uleb128 0xa
	.long	0x10e
	.long	0x305
	.uleb128 0xb
	.long	0x34
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2b1
	.uleb128 0xa
	.long	0x10e
	.long	0x31b
	.uleb128 0xb
	.long	0x34
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x321
	.uleb128 0xd
	.long	0x10e
	.uleb128 0x5
	.long	.LASF58
	.byte	0x4
	.byte	0x66
	.long	0xf2
	.uleb128 0xe
	.byte	0x4
	.byte	0xf
	.byte	0x2c
	.long	0x3b2
	.uleb128 0xf
	.long	.LASF59
	.sleb128 1
	.uleb128 0xf
	.long	.LASF60
	.sleb128 2
	.uleb128 0xf
	.long	.LASF61
	.sleb128 4
	.uleb128 0xf
	.long	.LASF62
	.sleb128 8
	.uleb128 0xf
	.long	.LASF63
	.sleb128 16
	.uleb128 0xf
	.long	.LASF64
	.sleb128 32
	.uleb128 0xf
	.long	.LASF65
	.sleb128 64
	.uleb128 0xf
	.long	.LASF66
	.sleb128 128
	.uleb128 0xf
	.long	.LASF67
	.sleb128 256
	.uleb128 0xf
	.long	.LASF68
	.sleb128 512
	.uleb128 0xf
	.long	.LASF69
	.sleb128 1024
	.uleb128 0xf
	.long	.LASF70
	.sleb128 2048
	.uleb128 0xf
	.long	.LASF71
	.sleb128 136
	.uleb128 0xf
	.long	.LASF72
	.sleb128 140
	.uleb128 0xf
	.long	.LASF73
	.sleb128 516
	.uleb128 0xf
	.long	.LASF74
	.sleb128 172
	.uleb128 0xf
	.long	.LASF75
	.sleb128 3072
	.uleb128 0xf
	.long	.LASF76
	.sleb128 3088
	.byte	0
	.uleb128 0x5
	.long	.LASF77
	.byte	0x6
	.byte	0x30
	.long	0x9a
	.uleb128 0x5
	.long	.LASF78
	.byte	0x6
	.byte	0x3c
	.long	0x79
	.uleb128 0x7
	.long	.LASF79
	.byte	0x10
	.byte	0x7
	.byte	0x78
	.long	0x3ed
	.uleb128 0x8
	.long	.LASF80
	.byte	0x7
	.byte	0x7a
	.long	0xd1
	.byte	0
	.uleb128 0x8
	.long	.LASF81
	.byte	0x7
	.byte	0x7b
	.long	0xfd
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF82
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF83
	.uleb128 0x6
	.byte	0x8
	.long	0x2d
	.uleb128 0x7
	.long	.LASF84
	.byte	0x90
	.byte	0x8
	.byte	0x2e
	.long	0x4c2
	.uleb128 0x8
	.long	.LASF85
	.byte	0x8
	.byte	0x30
	.long	0x79
	.byte	0
	.uleb128 0x8
	.long	.LASF86
	.byte	0x8
	.byte	0x35
	.long	0x9a
	.byte	0x8
	.uleb128 0x8
	.long	.LASF87
	.byte	0x8
	.byte	0x3d
	.long	0xb0
	.byte	0x10
	.uleb128 0x8
	.long	.LASF88
	.byte	0x8
	.byte	0x3e
	.long	0xa5
	.byte	0x18
	.uleb128 0x8
	.long	.LASF89
	.byte	0x8
	.byte	0x40
	.long	0x84
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF90
	.byte	0x8
	.byte	0x41
	.long	0x8f
	.byte	0x20
	.uleb128 0x8
	.long	.LASF91
	.byte	0x8
	.byte	0x43
	.long	0x2d
	.byte	0x24
	.uleb128 0x8
	.long	.LASF92
	.byte	0x8
	.byte	0x45
	.long	0x79
	.byte	0x28
	.uleb128 0x8
	.long	.LASF93
	.byte	0x8
	.byte	0x4a
	.long	0xbb
	.byte	0x30
	.uleb128 0x8
	.long	.LASF94
	.byte	0x8
	.byte	0x4e
	.long	0xdc
	.byte	0x38
	.uleb128 0x8
	.long	.LASF95
	.byte	0x8
	.byte	0x50
	.long	0xe7
	.byte	0x40
	.uleb128 0x8
	.long	.LASF96
	.byte	0x8
	.byte	0x5b
	.long	0x3c8
	.byte	0x48
	.uleb128 0x8
	.long	.LASF97
	.byte	0x8
	.byte	0x5c
	.long	0x3c8
	.byte	0x58
	.uleb128 0x8
	.long	.LASF98
	.byte	0x8
	.byte	0x5d
	.long	0x3c8
	.byte	0x68
	.uleb128 0x8
	.long	.LASF99
	.byte	0x8
	.byte	0x6a
	.long	0x4c2
	.byte	0x78
	.byte	0
	.uleb128 0xa
	.long	0xfd
	.long	0x4d2
	.uleb128 0xb
	.long	0x34
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.long	.LASF100
	.byte	0x18
	.byte	0x9
	.byte	0xa1
	.long	0x503
	.uleb128 0x8
	.long	.LASF101
	.byte	0x9
	.byte	0xa3
	.long	0x108
	.byte	0
	.uleb128 0x8
	.long	.LASF102
	.byte	0x9
	.byte	0xa4
	.long	0x503
	.byte	0x8
	.uleb128 0x8
	.long	.LASF103
	.byte	0x9
	.byte	0xa5
	.long	0x2a1
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x4d2
	.uleb128 0x7
	.long	.LASF104
	.byte	0x58
	.byte	0x9
	.byte	0xa8
	.long	0x5bb
	.uleb128 0x8
	.long	.LASF105
	.byte	0x9
	.byte	0xaa
	.long	0x44
	.byte	0
	.uleb128 0x8
	.long	.LASF106
	.byte	0x9
	.byte	0xab
	.long	0x503
	.byte	0x8
	.uleb128 0x8
	.long	.LASF107
	.byte	0x9
	.byte	0xac
	.long	0x108
	.byte	0x10
	.uleb128 0x8
	.long	.LASF108
	.byte	0x9
	.byte	0xad
	.long	0x108
	.byte	0x18
	.uleb128 0x8
	.long	.LASF109
	.byte	0x9
	.byte	0xae
	.long	0x108
	.byte	0x20
	.uleb128 0x8
	.long	.LASF110
	.byte	0x9
	.byte	0xaf
	.long	0x44
	.byte	0x28
	.uleb128 0x8
	.long	.LASF111
	.byte	0x9
	.byte	0xb0
	.long	0x2d
	.byte	0x30
	.uleb128 0x8
	.long	.LASF112
	.byte	0x9
	.byte	0xb5
	.long	0x5cf
	.byte	0x38
	.uleb128 0x8
	.long	.LASF113
	.byte	0x9
	.byte	0xb6
	.long	0x5e5
	.byte	0x40
	.uleb128 0x8
	.long	.LASF114
	.byte	0x9
	.byte	0xb7
	.long	0x42
	.byte	0x48
	.uleb128 0x10
	.long	.LASF115
	.byte	0x9
	.byte	0xbd
	.long	0x3b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x50
	.uleb128 0x10
	.long	.LASF116
	.byte	0x9
	.byte	0xbe
	.long	0x3b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x50
	.uleb128 0x10
	.long	.LASF117
	.byte	0x9
	.byte	0xc2
	.long	0x3b
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x50
	.byte	0
	.uleb128 0x11
	.long	0x503
	.long	0x5cf
	.uleb128 0x12
	.long	0x42
	.uleb128 0x12
	.long	0x44
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5bb
	.uleb128 0x13
	.long	0x5e5
	.uleb128 0x12
	.long	0x42
	.uleb128 0x12
	.long	0x503
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5d5
	.uleb128 0x7
	.long	.LASF118
	.byte	0x10
	.byte	0xa
	.byte	0x1a
	.long	0x610
	.uleb128 0x14
	.string	"len"
	.byte	0xa
	.byte	0x1c
	.long	0x3b
	.byte	0
	.uleb128 0x14
	.string	"str"
	.byte	0xa
	.byte	0x1d
	.long	0x610
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x616
	.uleb128 0xd
	.long	0x5d
	.uleb128 0x5
	.long	.LASF119
	.byte	0xa
	.byte	0x28
	.long	0x626
	.uleb128 0x15
	.string	"ht"
	.byte	0x80
	.byte	0xa
	.byte	0x2e
	.long	0x692
	.uleb128 0x8
	.long	.LASF120
	.byte	0xa
	.byte	0x31
	.long	0x509
	.byte	0
	.uleb128 0x8
	.long	.LASF121
	.byte	0xa
	.byte	0x33
	.long	0x6a3
	.byte	0x58
	.uleb128 0x8
	.long	.LASF122
	.byte	0xa
	.byte	0x35
	.long	0x6be
	.byte	0x60
	.uleb128 0x8
	.long	.LASF123
	.byte	0xa
	.byte	0x37
	.long	0x3b
	.byte	0x68
	.uleb128 0x8
	.long	.LASF124
	.byte	0xa
	.byte	0x38
	.long	0x3b
	.byte	0x6c
	.uleb128 0x8
	.long	.LASF125
	.byte	0xa
	.byte	0x3b
	.long	0x8eb
	.byte	0x70
	.uleb128 0x8
	.long	.LASF126
	.byte	0xa
	.byte	0x3e
	.long	0x3b
	.byte	0x78
	.uleb128 0x8
	.long	.LASF127
	.byte	0xa
	.byte	0x3f
	.long	0x3b
	.byte	0x7c
	.byte	0
	.uleb128 0x5
	.long	.LASF128
	.byte	0xa
	.byte	0x29
	.long	0x69d
	.uleb128 0x6
	.byte	0x8
	.long	0x5eb
	.uleb128 0x6
	.byte	0x8
	.long	0x692
	.uleb128 0x11
	.long	0x692
	.long	0x6b8
	.uleb128 0x12
	.long	0x6b8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x61b
	.uleb128 0x6
	.byte	0x8
	.long	0x6a9
	.uleb128 0x16
	.long	.LASF129
	.value	0x340
	.byte	0xb
	.byte	0xe1
	.long	0x8eb
	.uleb128 0x8
	.long	.LASF130
	.byte	0xb
	.byte	0xe4
	.long	0x1613
	.byte	0
	.uleb128 0x8
	.long	.LASF131
	.byte	0xb
	.byte	0xe7
	.long	0x14b7
	.byte	0x8
	.uleb128 0x8
	.long	.LASF132
	.byte	0xb
	.byte	0xea
	.long	0x968
	.byte	0x18
	.uleb128 0x14
	.string	"map"
	.byte	0xb
	.byte	0xeb
	.long	0x11dd
	.byte	0x38
	.uleb128 0x8
	.long	.LASF133
	.byte	0xb
	.byte	0xec
	.long	0x3b
	.byte	0x40
	.uleb128 0x8
	.long	.LASF134
	.byte	0xb
	.byte	0xef
	.long	0x3b
	.byte	0x44
	.uleb128 0x8
	.long	.LASF135
	.byte	0xb
	.byte	0xf2
	.long	0x14b1
	.byte	0x48
	.uleb128 0x8
	.long	.LASF136
	.byte	0xb
	.byte	0xf3
	.long	0x14b1
	.byte	0x50
	.uleb128 0x8
	.long	.LASF137
	.byte	0xb
	.byte	0xf4
	.long	0x14b1
	.byte	0x58
	.uleb128 0x8
	.long	.LASF138
	.byte	0xb
	.byte	0xf7
	.long	0x144a
	.byte	0x60
	.uleb128 0x8
	.long	.LASF139
	.byte	0xb
	.byte	0xf8
	.long	0x1619
	.byte	0x98
	.uleb128 0x8
	.long	.LASF140
	.byte	0xb
	.byte	0xfb
	.long	0x1624
	.byte	0xa0
	.uleb128 0x8
	.long	.LASF141
	.byte	0xb
	.byte	0xfe
	.long	0x162f
	.byte	0xa8
	.uleb128 0x8
	.long	.LASF142
	.byte	0xb
	.byte	0xff
	.long	0x162f
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF143
	.byte	0xb
	.value	0x100
	.long	0x9c3
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF144
	.byte	0xb
	.value	0x103
	.long	0x1439
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF145
	.byte	0xb
	.value	0x104
	.long	0x13eb
	.byte	0xc8
	.uleb128 0x9
	.long	.LASF146
	.byte	0xb
	.value	0x104
	.long	0x1433
	.byte	0xe8
	.uleb128 0x9
	.long	.LASF147
	.byte	0xb
	.value	0x105
	.long	0x3b
	.byte	0xf0
	.uleb128 0x9
	.long	.LASF148
	.byte	0xb
	.value	0x108
	.long	0x3b
	.byte	0xf4
	.uleb128 0x9
	.long	.LASF149
	.byte	0xb
	.value	0x10b
	.long	0x3b
	.byte	0xf8
	.uleb128 0x9
	.long	.LASF150
	.byte	0xb
	.value	0x10f
	.long	0x3b
	.byte	0xfc
	.uleb128 0x17
	.long	.LASF151
	.byte	0xb
	.value	0x110
	.long	0x3b
	.value	0x100
	.uleb128 0x17
	.long	.LASF152
	.byte	0xb
	.value	0x113
	.long	0x135c
	.value	0x108
	.uleb128 0x17
	.long	.LASF153
	.byte	0xb
	.value	0x114
	.long	0x3b
	.value	0x110
	.uleb128 0x17
	.long	.LASF154
	.byte	0xb
	.value	0x117
	.long	0x169b
	.value	0x118
	.uleb128 0x17
	.long	.LASF155
	.byte	0xb
	.value	0x11b
	.long	0x3b
	.value	0x120
	.uleb128 0x17
	.long	.LASF156
	.byte	0xb
	.value	0x11e
	.long	0xd40
	.value	0x128
	.uleb128 0x17
	.long	.LASF157
	.byte	0xb
	.value	0x11f
	.long	0xd40
	.value	0x140
	.uleb128 0x17
	.long	.LASF158
	.byte	0xb
	.value	0x122
	.long	0xd40
	.value	0x158
	.uleb128 0x18
	.string	"eof"
	.byte	0xb
	.value	0x123
	.long	0xd40
	.value	0x170
	.uleb128 0x17
	.long	.LASF159
	.byte	0xb
	.value	0x126
	.long	0x16a6
	.value	0x188
	.uleb128 0x17
	.long	.LASF160
	.byte	0xb
	.value	0x12a
	.long	0x509
	.value	0x190
	.uleb128 0x17
	.long	.LASF161
	.byte	0xb
	.value	0x12e
	.long	0x509
	.value	0x1e8
	.uleb128 0x17
	.long	.LASF162
	.byte	0xb
	.value	0x132
	.long	0x16b1
	.value	0x240
	.uleb128 0x18
	.string	"cb"
	.byte	0xb
	.value	0x135
	.long	0xe4e
	.value	0x248
	.uleb128 0x17
	.long	.LASF119
	.byte	0xb
	.value	0x138
	.long	0x16b7
	.value	0x280
	.uleb128 0x17
	.long	.LASF163
	.byte	0xb
	.value	0x13b
	.long	0xaad
	.value	0x288
	.uleb128 0x17
	.long	.LASF164
	.byte	0xb
	.value	0x13f
	.long	0x1530
	.value	0x310
	.uleb128 0x17
	.long	.LASF165
	.byte	0xb
	.value	0x143
	.long	0x5d
	.value	0x338
	.uleb128 0x17
	.long	.LASF166
	.byte	0xb
	.value	0x146
	.long	0x5d
	.value	0x339
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x6c4
	.uleb128 0x19
	.long	.LASF266
	.byte	0x4
	.byte	0xc
	.byte	0x1f
	.long	0x910
	.uleb128 0xf
	.long	.LASF167
	.sleb128 0
	.uleb128 0xf
	.long	.LASF168
	.sleb128 1
	.uleb128 0xf
	.long	.LASF169
	.sleb128 2
	.byte	0
	.uleb128 0x7
	.long	.LASF170
	.byte	0x18
	.byte	0xc
	.byte	0x29
	.long	0x968
	.uleb128 0x8
	.long	.LASF171
	.byte	0xc
	.byte	0x2b
	.long	0x31b
	.byte	0
	.uleb128 0x8
	.long	.LASF172
	.byte	0xc
	.byte	0x2c
	.long	0x3b
	.byte	0x8
	.uleb128 0x8
	.long	.LASF173
	.byte	0xc
	.byte	0x2d
	.long	0x3b
	.byte	0xc
	.uleb128 0x8
	.long	.LASF174
	.byte	0xc
	.byte	0x2e
	.long	0x2d
	.byte	0x10
	.uleb128 0x10
	.long	.LASF175
	.byte	0xc
	.byte	0x2f
	.long	0x3b
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x14
	.uleb128 0x8
	.long	.LASF176
	.byte	0xc
	.byte	0x30
	.long	0x5d
	.byte	0x15
	.byte	0
	.uleb128 0x7
	.long	.LASF132
	.byte	0x20
	.byte	0xc
	.byte	0x34
	.long	0x9bd
	.uleb128 0x8
	.long	.LASF177
	.byte	0xc
	.byte	0x36
	.long	0x9bd
	.byte	0
	.uleb128 0x8
	.long	.LASF178
	.byte	0xc
	.byte	0x37
	.long	0x3b
	.byte	0x8
	.uleb128 0x8
	.long	.LASF179
	.byte	0xc
	.byte	0x38
	.long	0x3b
	.byte	0xc
	.uleb128 0x8
	.long	.LASF180
	.byte	0xc
	.byte	0x3d
	.long	0x2d
	.byte	0x10
	.uleb128 0x8
	.long	.LASF181
	.byte	0xc
	.byte	0x40
	.long	0x3b
	.byte	0x14
	.uleb128 0x8
	.long	.LASF182
	.byte	0xc
	.byte	0x43
	.long	0x9c3
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x910
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF183
	.uleb128 0x5
	.long	.LASF129
	.byte	0xd
	.byte	0x24
	.long	0x6c4
	.uleb128 0x5
	.long	.LASF184
	.byte	0xd
	.byte	0x26
	.long	0x9e0
	.uleb128 0x7
	.long	.LASF184
	.byte	0x90
	.byte	0xb
	.byte	0xa8
	.long	0xaad
	.uleb128 0x14
	.string	"cur"
	.byte	0xb
	.byte	0xaa
	.long	0x610
	.byte	0
	.uleb128 0x8
	.long	.LASF185
	.byte	0xb
	.byte	0xab
	.long	0x610
	.byte	0x8
	.uleb128 0x8
	.long	.LASF186
	.byte	0xb
	.byte	0xac
	.long	0x610
	.byte	0x10
	.uleb128 0x8
	.long	.LASF187
	.byte	0xb
	.byte	0xad
	.long	0x610
	.byte	0x18
	.uleb128 0x8
	.long	.LASF102
	.byte	0xb
	.byte	0xaf
	.long	0x1579
	.byte	0x20
	.uleb128 0x14
	.string	"buf"
	.byte	0xb
	.byte	0xb1
	.long	0x610
	.byte	0x28
	.uleb128 0x14
	.string	"inc"
	.byte	0xb
	.byte	0xb5
	.long	0x1602
	.byte	0x30
	.uleb128 0x8
	.long	.LASF188
	.byte	0xb
	.byte	0xb9
	.long	0x160d
	.byte	0x38
	.uleb128 0x8
	.long	.LASF189
	.byte	0xb
	.byte	0xbc
	.long	0x3b
	.byte	0x40
	.uleb128 0x8
	.long	.LASF190
	.byte	0xb
	.byte	0xbf
	.long	0x5d
	.byte	0x44
	.uleb128 0x8
	.long	.LASF191
	.byte	0xb
	.byte	0xc3
	.long	0x610
	.byte	0x48
	.uleb128 0x8
	.long	.LASF192
	.byte	0xb
	.byte	0xc9
	.long	0x5d
	.byte	0x50
	.uleb128 0x8
	.long	.LASF193
	.byte	0xb
	.byte	0xce
	.long	0x5d
	.byte	0x51
	.uleb128 0x8
	.long	.LASF194
	.byte	0xb
	.byte	0xd2
	.long	0x5d
	.byte	0x52
	.uleb128 0x8
	.long	.LASF195
	.byte	0xb
	.byte	0xd7
	.long	0x9c3
	.byte	0x53
	.uleb128 0x14
	.string	"dir"
	.byte	0xb
	.byte	0xdb
	.long	0x110a
	.byte	0x58
	.byte	0
	.uleb128 0x7
	.long	.LASF196
	.byte	0x88
	.byte	0xd
	.byte	0xcd
	.long	0xd40
	.uleb128 0x8
	.long	.LASF197
	.byte	0xd
	.byte	0xd0
	.long	0x31b
	.byte	0
	.uleb128 0x8
	.long	.LASF198
	.byte	0xd
	.byte	0xd1
	.long	0x31b
	.byte	0x8
	.uleb128 0x8
	.long	.LASF199
	.byte	0xd
	.byte	0xd4
	.long	0x3b
	.byte	0x10
	.uleb128 0x8
	.long	.LASF200
	.byte	0xd
	.byte	0xd7
	.long	0x1104
	.byte	0x18
	.uleb128 0x8
	.long	.LASF201
	.byte	0xd
	.byte	0xdb
	.long	0x31b
	.byte	0x20
	.uleb128 0x8
	.long	.LASF202
	.byte	0xd
	.byte	0xde
	.long	0x116b
	.byte	0x28
	.uleb128 0x8
	.long	.LASF203
	.byte	0xd
	.byte	0xdf
	.long	0x116b
	.byte	0x30
	.uleb128 0x8
	.long	.LASF204
	.byte	0xd
	.byte	0xe3
	.long	0x11a6
	.byte	0x38
	.uleb128 0x8
	.long	.LASF205
	.byte	0xd
	.byte	0xe7
	.long	0x31b
	.byte	0x40
	.uleb128 0x8
	.long	.LASF206
	.byte	0xd
	.byte	0xe8
	.long	0x3b
	.byte	0x48
	.uleb128 0x8
	.long	.LASF207
	.byte	0xd
	.byte	0xeb
	.long	0x31b
	.byte	0x50
	.uleb128 0x8
	.long	.LASF208
	.byte	0xd
	.byte	0xee
	.long	0x1067
	.byte	0x58
	.uleb128 0x8
	.long	.LASF209
	.byte	0xd
	.byte	0xf1
	.long	0x5d
	.byte	0x5c
	.uleb128 0x8
	.long	.LASF210
	.byte	0xd
	.byte	0xf4
	.long	0x5d
	.byte	0x5d
	.uleb128 0x8
	.long	.LASF211
	.byte	0xd
	.byte	0xf7
	.long	0x5d
	.byte	0x5e
	.uleb128 0x8
	.long	.LASF212
	.byte	0xd
	.byte	0xfa
	.long	0x5d
	.byte	0x5f
	.uleb128 0x8
	.long	.LASF213
	.byte	0xd
	.byte	0xfd
	.long	0x5d
	.byte	0x60
	.uleb128 0x9
	.long	.LASF214
	.byte	0xd
	.value	0x100
	.long	0x5d
	.byte	0x61
	.uleb128 0x9
	.long	.LASF215
	.byte	0xd
	.value	0x103
	.long	0x5d
	.byte	0x62
	.uleb128 0x9
	.long	.LASF216
	.byte	0xd
	.value	0x106
	.long	0x5d
	.byte	0x63
	.uleb128 0x9
	.long	.LASF217
	.byte	0xd
	.value	0x109
	.long	0x5d
	.byte	0x64
	.uleb128 0x9
	.long	.LASF218
	.byte	0xd
	.value	0x10e
	.long	0x5d
	.byte	0x65
	.uleb128 0x9
	.long	.LASF219
	.byte	0xd
	.value	0x111
	.long	0x5d
	.byte	0x66
	.uleb128 0x9
	.long	.LASF220
	.byte	0xd
	.value	0x115
	.long	0x5d
	.byte	0x67
	.uleb128 0x9
	.long	.LASF221
	.byte	0xd
	.value	0x118
	.long	0x5d
	.byte	0x68
	.uleb128 0x9
	.long	.LASF222
	.byte	0xd
	.value	0x11b
	.long	0x5d
	.byte	0x69
	.uleb128 0x9
	.long	.LASF223
	.byte	0xd
	.value	0x11e
	.long	0x5d
	.byte	0x6a
	.uleb128 0x9
	.long	.LASF224
	.byte	0xd
	.value	0x121
	.long	0x5d
	.byte	0x6b
	.uleb128 0x9
	.long	.LASF225
	.byte	0xd
	.value	0x124
	.long	0x5d
	.byte	0x6c
	.uleb128 0x9
	.long	.LASF226
	.byte	0xd
	.value	0x128
	.long	0x5d
	.byte	0x6d
	.uleb128 0x9
	.long	.LASF227
	.byte	0xd
	.value	0x12b
	.long	0x5d
	.byte	0x6e
	.uleb128 0x9
	.long	.LASF228
	.byte	0xd
	.value	0x12e
	.long	0x5d
	.byte	0x6f
	.uleb128 0x9
	.long	.LASF229
	.byte	0xd
	.value	0x131
	.long	0x5d
	.byte	0x70
	.uleb128 0x9
	.long	.LASF230
	.byte	0xd
	.value	0x135
	.long	0x5d
	.byte	0x71
	.uleb128 0x9
	.long	.LASF231
	.byte	0xd
	.value	0x138
	.long	0x5d
	.byte	0x72
	.uleb128 0x9
	.long	.LASF232
	.byte	0xd
	.value	0x13c
	.long	0x5d
	.byte	0x73
	.uleb128 0x9
	.long	.LASF233
	.byte	0xd
	.value	0x140
	.long	0x5d
	.byte	0x74
	.uleb128 0x9
	.long	.LASF234
	.byte	0xd
	.value	0x143
	.long	0x5d
	.byte	0x75
	.uleb128 0x9
	.long	.LASF235
	.byte	0xd
	.value	0x147
	.long	0x5d
	.byte	0x76
	.uleb128 0x9
	.long	.LASF236
	.byte	0xd
	.value	0x14a
	.long	0x5d
	.byte	0x77
	.uleb128 0x9
	.long	.LASF237
	.byte	0xd
	.value	0x14d
	.long	0x5d
	.byte	0x78
	.uleb128 0x1a
	.string	"c99"
	.byte	0xd
	.value	0x150
	.long	0x5d
	.byte	0x79
	.uleb128 0x9
	.long	.LASF238
	.byte	0xd
	.value	0x153
	.long	0x5d
	.byte	0x7a
	.uleb128 0x9
	.long	.LASF239
	.byte	0xd
	.value	0x157
	.long	0x5d
	.byte	0x7b
	.uleb128 0x9
	.long	.LASF240
	.byte	0xd
	.value	0x15a
	.long	0x5d
	.byte	0x7c
	.uleb128 0x9
	.long	.LASF241
	.byte	0xd
	.value	0x15d
	.long	0x5d
	.byte	0x7d
	.uleb128 0x9
	.long	.LASF242
	.byte	0xd
	.value	0x160
	.long	0x5d
	.byte	0x7e
	.uleb128 0x9
	.long	.LASF243
	.byte	0xd
	.value	0x163
	.long	0x5d
	.byte	0x7f
	.uleb128 0x9
	.long	.LASF244
	.byte	0xd
	.value	0x166
	.long	0x5d
	.byte	0x80
	.uleb128 0x9
	.long	.LASF245
	.byte	0xd
	.value	0x169
	.long	0x5d
	.byte	0x81
	.uleb128 0x9
	.long	.LASF246
	.byte	0xd
	.value	0x16e
	.long	0x5d
	.byte	0x82
	.byte	0
	.uleb128 0x5
	.long	.LASF247
	.byte	0xd
	.byte	0x28
	.long	0xd4b
	.uleb128 0x7
	.long	.LASF247
	.byte	0x18
	.byte	0xd
	.byte	0xad
	.long	0xd97
	.uleb128 0x8
	.long	.LASF133
	.byte	0xd
	.byte	0xaf
	.long	0x3b
	.byte	0
	.uleb128 0x14
	.string	"col"
	.byte	0xd
	.byte	0xb0
	.long	0x64
	.byte	0x4
	.uleb128 0x10
	.long	.LASF248
	.byte	0xd
	.byte	0xb1
	.long	0x3b
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x4
	.uleb128 0x8
	.long	.LASF249
	.byte	0xd
	.byte	0xb2
	.long	0x5d
	.byte	0x7
	.uleb128 0x14
	.string	"val"
	.byte	0xd
	.byte	0xbb
	.long	0x10b0
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	.LASF250
	.byte	0xd
	.byte	0x29
	.long	0xda2
	.uleb128 0x7
	.long	.LASF250
	.byte	0x10
	.byte	0xd
	.byte	0x9c
	.long	0xdc7
	.uleb128 0x14
	.string	"len"
	.byte	0xd
	.byte	0x9e
	.long	0x3b
	.byte	0
	.uleb128 0x8
	.long	.LASF251
	.byte	0xd
	.byte	0x9f
	.long	0x610
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	.LASF252
	.byte	0xd
	.byte	0x2a
	.long	0xdd2
	.uleb128 0x1b
	.long	.LASF252
	.byte	0x20
	.byte	0xd
	.value	0x1b7
	.long	0xe3e
	.uleb128 0x9
	.long	.LASF253
	.byte	0xd
	.value	0x1b9
	.long	0x5eb
	.byte	0
	.uleb128 0x9
	.long	.LASF254
	.byte	0xd
	.value	0x1ba
	.long	0x64
	.byte	0x10
	.uleb128 0x9
	.long	.LASF255
	.byte	0xd
	.value	0x1bb
	.long	0x5d
	.byte	0x12
	.uleb128 0x9
	.long	.LASF256
	.byte	0xd
	.value	0x1bc
	.long	0x5d
	.byte	0x13
	.uleb128 0x1c
	.long	.LASF248
	.byte	0xd
	.value	0x1bd
	.long	0x3b
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x14
	.uleb128 0x9
	.long	.LASF249
	.byte	0xd
	.value	0x1be
	.long	0x5d
	.byte	0x15
	.uleb128 0x9
	.long	.LASF257
	.byte	0xd
	.value	0x1c6
	.long	0x12c3
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.long	.LASF258
	.byte	0xd
	.byte	0x2b
	.long	0xe49
	.uleb128 0x1d
	.long	.LASF258
	.uleb128 0x1b
	.long	.LASF259
	.byte	0x38
	.byte	0xd
	.value	0x172
	.long	0xeb7
	.uleb128 0x9
	.long	.LASF260
	.byte	0xd
	.value	0x175
	.long	0x11c7
	.byte	0
	.uleb128 0x9
	.long	.LASF261
	.byte	0xd
	.value	0x176
	.long	0x11e8
	.byte	0x8
	.uleb128 0x9
	.long	.LASF262
	.byte	0xd
	.value	0x177
	.long	0x1208
	.byte	0x10
	.uleb128 0x9
	.long	.LASF263
	.byte	0xd
	.value	0x179
	.long	0x1223
	.byte	0x18
	.uleb128 0x9
	.long	.LASF264
	.byte	0xd
	.value	0x17a
	.long	0x1223
	.byte	0x20
	.uleb128 0x9
	.long	.LASF253
	.byte	0xd
	.value	0x17b
	.long	0x1249
	.byte	0x28
	.uleb128 0x9
	.long	.LASF265
	.byte	0xd
	.value	0x17c
	.long	0x125f
	.byte	0x30
	.byte	0
	.uleb128 0x19
	.long	.LASF267
	.byte	0x4
	.byte	0xd
	.byte	0x8f
	.long	0x1067
	.uleb128 0xf
	.long	.LASF268
	.sleb128 0
	.uleb128 0xf
	.long	.LASF269
	.sleb128 1
	.uleb128 0xf
	.long	.LASF270
	.sleb128 2
	.uleb128 0xf
	.long	.LASF271
	.sleb128 3
	.uleb128 0xf
	.long	.LASF272
	.sleb128 4
	.uleb128 0xf
	.long	.LASF273
	.sleb128 5
	.uleb128 0xf
	.long	.LASF274
	.sleb128 6
	.uleb128 0xf
	.long	.LASF275
	.sleb128 7
	.uleb128 0xf
	.long	.LASF276
	.sleb128 8
	.uleb128 0xf
	.long	.LASF277
	.sleb128 9
	.uleb128 0xf
	.long	.LASF278
	.sleb128 10
	.uleb128 0xf
	.long	.LASF279
	.sleb128 11
	.uleb128 0xf
	.long	.LASF280
	.sleb128 12
	.uleb128 0xf
	.long	.LASF281
	.sleb128 13
	.uleb128 0xf
	.long	.LASF282
	.sleb128 14
	.uleb128 0xf
	.long	.LASF283
	.sleb128 15
	.uleb128 0xf
	.long	.LASF284
	.sleb128 16
	.uleb128 0xf
	.long	.LASF285
	.sleb128 17
	.uleb128 0xf
	.long	.LASF286
	.sleb128 18
	.uleb128 0xf
	.long	.LASF287
	.sleb128 19
	.uleb128 0xf
	.long	.LASF288
	.sleb128 20
	.uleb128 0xf
	.long	.LASF289
	.sleb128 21
	.uleb128 0xf
	.long	.LASF290
	.sleb128 22
	.uleb128 0xf
	.long	.LASF291
	.sleb128 23
	.uleb128 0xf
	.long	.LASF292
	.sleb128 24
	.uleb128 0xf
	.long	.LASF293
	.sleb128 25
	.uleb128 0xf
	.long	.LASF294
	.sleb128 26
	.uleb128 0xf
	.long	.LASF295
	.sleb128 27
	.uleb128 0xf
	.long	.LASF296
	.sleb128 28
	.uleb128 0xf
	.long	.LASF297
	.sleb128 29
	.uleb128 0xf
	.long	.LASF298
	.sleb128 30
	.uleb128 0xf
	.long	.LASF299
	.sleb128 31
	.uleb128 0xf
	.long	.LASF300
	.sleb128 32
	.uleb128 0xf
	.long	.LASF301
	.sleb128 33
	.uleb128 0xf
	.long	.LASF302
	.sleb128 34
	.uleb128 0xf
	.long	.LASF303
	.sleb128 35
	.uleb128 0xf
	.long	.LASF304
	.sleb128 36
	.uleb128 0xf
	.long	.LASF305
	.sleb128 37
	.uleb128 0xf
	.long	.LASF306
	.sleb128 38
	.uleb128 0xf
	.long	.LASF307
	.sleb128 39
	.uleb128 0xf
	.long	.LASF308
	.sleb128 40
	.uleb128 0xf
	.long	.LASF309
	.sleb128 41
	.uleb128 0xf
	.long	.LASF310
	.sleb128 42
	.uleb128 0xf
	.long	.LASF311
	.sleb128 43
	.uleb128 0xf
	.long	.LASF312
	.sleb128 44
	.uleb128 0xf
	.long	.LASF313
	.sleb128 45
	.uleb128 0xf
	.long	.LASF314
	.sleb128 46
	.uleb128 0xf
	.long	.LASF315
	.sleb128 47
	.uleb128 0xf
	.long	.LASF316
	.sleb128 48
	.uleb128 0xf
	.long	.LASF317
	.sleb128 49
	.uleb128 0xf
	.long	.LASF318
	.sleb128 50
	.uleb128 0xf
	.long	.LASF319
	.sleb128 51
	.uleb128 0xf
	.long	.LASF320
	.sleb128 52
	.uleb128 0xf
	.long	.LASF321
	.sleb128 53
	.uleb128 0xf
	.long	.LASF322
	.sleb128 54
	.uleb128 0xf
	.long	.LASF323
	.sleb128 55
	.uleb128 0xf
	.long	.LASF324
	.sleb128 56
	.uleb128 0xf
	.long	.LASF325
	.sleb128 57
	.uleb128 0xf
	.long	.LASF326
	.sleb128 58
	.uleb128 0xf
	.long	.LASF327
	.sleb128 59
	.uleb128 0xf
	.long	.LASF328
	.sleb128 60
	.uleb128 0xf
	.long	.LASF329
	.sleb128 61
	.uleb128 0xf
	.long	.LASF330
	.sleb128 62
	.uleb128 0xf
	.long	.LASF331
	.sleb128 63
	.uleb128 0xf
	.long	.LASF332
	.sleb128 64
	.uleb128 0xf
	.long	.LASF333
	.sleb128 65
	.uleb128 0xf
	.long	.LASF334
	.sleb128 66
	.uleb128 0xf
	.long	.LASF335
	.sleb128 67
	.uleb128 0xf
	.long	.LASF336
	.sleb128 68
	.byte	0
	.uleb128 0x19
	.long	.LASF337
	.byte	0x4
	.byte	0xd
	.byte	0x98
	.long	0x10b0
	.uleb128 0xf
	.long	.LASF338
	.sleb128 0
	.uleb128 0xf
	.long	.LASF339
	.sleb128 1
	.uleb128 0xf
	.long	.LASF340
	.sleb128 2
	.uleb128 0xf
	.long	.LASF341
	.sleb128 3
	.uleb128 0xf
	.long	.LASF342
	.sleb128 4
	.uleb128 0xf
	.long	.LASF343
	.sleb128 5
	.uleb128 0xf
	.long	.LASF344
	.sleb128 6
	.uleb128 0xf
	.long	.LASF345
	.sleb128 7
	.uleb128 0xf
	.long	.LASF346
	.sleb128 8
	.uleb128 0xf
	.long	.LASF347
	.sleb128 9
	.byte	0
	.uleb128 0x1e
	.byte	0x10
	.byte	0xd
	.byte	0xb4
	.long	0x10ee
	.uleb128 0x1f
	.long	.LASF348
	.byte	0xd
	.byte	0xb6
	.long	0x10ee
	.uleb128 0x1f
	.long	.LASF349
	.byte	0xd
	.byte	0xb7
	.long	0x10f4
	.uleb128 0x20
	.string	"str"
	.byte	0xd
	.byte	0xb8
	.long	0xda2
	.uleb128 0x1f
	.long	.LASF350
	.byte	0xd
	.byte	0xb9
	.long	0x3b
	.uleb128 0x20
	.string	"c"
	.byte	0xd
	.byte	0xba
	.long	0x5d
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xdc7
	.uleb128 0x6
	.byte	0x8
	.long	0x10fa
	.uleb128 0xd
	.long	0xd40
	.uleb128 0x1d
	.long	.LASF351
	.uleb128 0x6
	.byte	0x8
	.long	0x10ff
	.uleb128 0x7
	.long	.LASF352
	.byte	0x38
	.byte	0xb
	.byte	0x44
	.long	0x116b
	.uleb128 0x8
	.long	.LASF353
	.byte	0xb
	.byte	0x46
	.long	0x116b
	.byte	0
	.uleb128 0x8
	.long	.LASF354
	.byte	0xb
	.byte	0x4a
	.long	0x31b
	.byte	0x8
	.uleb128 0x14
	.string	"len"
	.byte	0xb
	.byte	0x4b
	.long	0x3b
	.byte	0x10
	.uleb128 0x14
	.string	"ino"
	.byte	0xb
	.byte	0x4e
	.long	0x3b2
	.byte	0x18
	.uleb128 0x14
	.string	"dev"
	.byte	0xb
	.byte	0x4f
	.long	0x3bd
	.byte	0x20
	.uleb128 0x8
	.long	.LASF176
	.byte	0xb
	.byte	0x51
	.long	0x2d
	.byte	0x28
	.uleb128 0x8
	.long	.LASF355
	.byte	0xb
	.byte	0x54
	.long	0x1397
	.byte	0x30
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x110a
	.uleb128 0x1b
	.long	.LASF356
	.byte	0x18
	.byte	0x1
	.value	0x384
	.long	0x11a6
	.uleb128 0x9
	.long	.LASF357
	.byte	0x1
	.value	0x386
	.long	0x11a6
	.byte	0
	.uleb128 0x9
	.long	.LASF358
	.byte	0x1
	.value	0x387
	.long	0x108
	.byte	0x8
	.uleb128 0x9
	.long	.LASF359
	.byte	0x1
	.value	0x388
	.long	0x1397
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1171
	.uleb128 0x13
	.long	0x11c1
	.uleb128 0x12
	.long	0x11c1
	.uleb128 0x12
	.long	0x10f4
	.uleb128 0x12
	.long	0x2d
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x9ca
	.uleb128 0x6
	.byte	0x8
	.long	0x11ac
	.uleb128 0x13
	.long	0x11dd
	.uleb128 0x12
	.long	0x11c1
	.uleb128 0x12
	.long	0x11dd
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x11e3
	.uleb128 0xd
	.long	0x910
	.uleb128 0x6
	.byte	0x8
	.long	0x11cd
	.uleb128 0x13
	.long	0x1208
	.uleb128 0x12
	.long	0x11c1
	.uleb128 0x12
	.long	0x3b
	.uleb128 0x12
	.long	0x610
	.uleb128 0x12
	.long	0x10f4
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x11ee
	.uleb128 0x13
	.long	0x1223
	.uleb128 0x12
	.long	0x11c1
	.uleb128 0x12
	.long	0x3b
	.uleb128 0x12
	.long	0x10ee
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x120e
	.uleb128 0x13
	.long	0x123e
	.uleb128 0x12
	.long	0x11c1
	.uleb128 0x12
	.long	0x3b
	.uleb128 0x12
	.long	0x123e
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1244
	.uleb128 0xd
	.long	0xd97
	.uleb128 0x6
	.byte	0x8
	.long	0x1229
	.uleb128 0x13
	.long	0x125f
	.uleb128 0x12
	.long	0x11c1
	.uleb128 0x12
	.long	0x3b
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x124f
	.uleb128 0x21
	.long	.LASF360
	.byte	0x4
	.byte	0xd
	.value	0x19a
	.long	0x1285
	.uleb128 0xf
	.long	.LASF361
	.sleb128 0
	.uleb128 0xf
	.long	.LASF362
	.sleb128 1
	.uleb128 0xf
	.long	.LASF363
	.sleb128 2
	.byte	0
	.uleb128 0x21
	.long	.LASF364
	.byte	0x4
	.byte	0xd
	.value	0x1a3
	.long	0x12c3
	.uleb128 0xf
	.long	.LASF365
	.sleb128 0
	.uleb128 0xf
	.long	.LASF366
	.sleb128 1
	.uleb128 0xf
	.long	.LASF367
	.sleb128 2
	.uleb128 0xf
	.long	.LASF368
	.sleb128 3
	.uleb128 0xf
	.long	.LASF369
	.sleb128 4
	.uleb128 0xf
	.long	.LASF370
	.sleb128 5
	.uleb128 0xf
	.long	.LASF371
	.sleb128 6
	.uleb128 0xf
	.long	.LASF372
	.sleb128 7
	.byte	0
	.uleb128 0x22
	.byte	0x8
	.byte	0xd
	.value	0x1c0
	.long	0x12fd
	.uleb128 0x23
	.long	.LASF373
	.byte	0xd
	.value	0x1c2
	.long	0x12fd
	.uleb128 0x23
	.long	.LASF374
	.byte	0xd
	.value	0x1c3
	.long	0x1308
	.uleb128 0x23
	.long	.LASF375
	.byte	0xd
	.value	0x1c4
	.long	0xeb7
	.uleb128 0x23
	.long	.LASF376
	.byte	0xd
	.value	0x1c5
	.long	0x1285
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xe3e
	.uleb128 0x1d
	.long	.LASF377
	.uleb128 0x6
	.byte	0x8
	.long	0x1303
	.uleb128 0x5
	.long	.LASF378
	.byte	0xb
	.byte	0x2f
	.long	0x1319
	.uleb128 0x7
	.long	.LASF378
	.byte	0x20
	.byte	0xb
	.byte	0x30
	.long	0x1356
	.uleb128 0x8
	.long	.LASF353
	.byte	0xb
	.byte	0x32
	.long	0x1356
	.byte	0
	.uleb128 0x8
	.long	.LASF379
	.byte	0xb
	.byte	0x33
	.long	0x135c
	.byte	0x8
	.uleb128 0x14
	.string	"cur"
	.byte	0xb
	.byte	0x33
	.long	0x135c
	.byte	0x10
	.uleb128 0x8
	.long	.LASF101
	.byte	0xb
	.byte	0x33
	.long	0x135c
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1319
	.uleb128 0x6
	.byte	0x8
	.long	0x5d
	.uleb128 0x1b
	.long	.LASF380
	.byte	0x18
	.byte	0x1
	.value	0x35b
	.long	0x1397
	.uleb128 0x9
	.long	.LASF381
	.byte	0x1
	.value	0x35d
	.long	0x1397
	.byte	0
	.uleb128 0x9
	.long	.LASF382
	.byte	0x1
	.value	0x35e
	.long	0x108
	.byte	0x8
	.uleb128 0x9
	.long	.LASF383
	.byte	0x1
	.value	0x35f
	.long	0x108
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1362
	.uleb128 0x19
	.long	.LASF384
	.byte	0x4
	.byte	0xb
	.byte	0x58
	.long	0x13c2
	.uleb128 0xf
	.long	.LASF385
	.sleb128 0
	.uleb128 0xf
	.long	.LASF386
	.sleb128 1
	.uleb128 0xf
	.long	.LASF387
	.sleb128 2
	.uleb128 0xf
	.long	.LASF388
	.sleb128 3
	.byte	0
	.uleb128 0x24
	.long	.LASF503
	.byte	0x8
	.byte	0xb
	.byte	0x5a
	.long	0x13e5
	.uleb128 0x1f
	.long	.LASF389
	.byte	0xb
	.byte	0x5c
	.long	0x10f4
	.uleb128 0x1f
	.long	.LASF390
	.byte	0xb
	.byte	0x5d
	.long	0x13e5
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x10f4
	.uleb128 0x5
	.long	.LASF391
	.byte	0xb
	.byte	0x61
	.long	0x13f6
	.uleb128 0x7
	.long	.LASF391
	.byte	0x20
	.byte	0xb
	.byte	0x62
	.long	0x1433
	.uleb128 0x8
	.long	.LASF353
	.byte	0xb
	.byte	0x64
	.long	0x1433
	.byte	0
	.uleb128 0x8
	.long	.LASF102
	.byte	0xb
	.byte	0x64
	.long	0x1433
	.byte	0x8
	.uleb128 0x8
	.long	.LASF379
	.byte	0xb
	.byte	0x65
	.long	0x1439
	.byte	0x10
	.uleb128 0x8
	.long	.LASF101
	.byte	0xb
	.byte	0x65
	.long	0x1439
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x13eb
	.uleb128 0x6
	.byte	0x8
	.long	0xd40
	.uleb128 0x5
	.long	.LASF392
	.byte	0xb
	.byte	0x68
	.long	0x144a
	.uleb128 0x7
	.long	.LASF392
	.byte	0x38
	.byte	0xb
	.byte	0x69
	.long	0x14ab
	.uleb128 0x8
	.long	.LASF353
	.byte	0xb
	.byte	0x6c
	.long	0x14ab
	.byte	0
	.uleb128 0x8
	.long	.LASF102
	.byte	0xb
	.byte	0x6c
	.long	0x14ab
	.byte	0x8
	.uleb128 0x8
	.long	.LASF393
	.byte	0xb
	.byte	0x70
	.long	0x13c2
	.byte	0x10
	.uleb128 0x8
	.long	.LASF394
	.byte	0xb
	.byte	0x71
	.long	0x13c2
	.byte	0x18
	.uleb128 0x8
	.long	.LASF395
	.byte	0xb
	.byte	0x75
	.long	0x14b1
	.byte	0x20
	.uleb128 0x8
	.long	.LASF373
	.byte	0xb
	.byte	0x78
	.long	0x10ee
	.byte	0x28
	.uleb128 0x8
	.long	.LASF396
	.byte	0xb
	.byte	0x7b
	.long	0x9c3
	.byte	0x30
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x143f
	.uleb128 0x6
	.byte	0x8
	.long	0x130e
	.uleb128 0x7
	.long	.LASF397
	.byte	0x9
	.byte	0xb
	.byte	0x7e
	.long	0x1530
	.uleb128 0x8
	.long	.LASF398
	.byte	0xb
	.byte	0x81
	.long	0x5d
	.byte	0
	.uleb128 0x8
	.long	.LASF399
	.byte	0xb
	.byte	0x84
	.long	0x5d
	.byte	0x1
	.uleb128 0x8
	.long	.LASF400
	.byte	0xb
	.byte	0x87
	.long	0x5d
	.byte	0x2
	.uleb128 0x8
	.long	.LASF401
	.byte	0xb
	.byte	0x8b
	.long	0x5d
	.byte	0x3
	.uleb128 0x8
	.long	.LASF402
	.byte	0xb
	.byte	0x8e
	.long	0x5d
	.byte	0x4
	.uleb128 0x8
	.long	.LASF403
	.byte	0xb
	.byte	0x91
	.long	0x5d
	.byte	0x5
	.uleb128 0x8
	.long	.LASF404
	.byte	0xb
	.byte	0x94
	.long	0x5d
	.byte	0x6
	.uleb128 0x8
	.long	.LASF405
	.byte	0xb
	.byte	0x97
	.long	0x5d
	.byte	0x7
	.uleb128 0x8
	.long	.LASF406
	.byte	0xb
	.byte	0x9a
	.long	0x5d
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.long	.LASF164
	.byte	0x28
	.byte	0xb
	.byte	0x9e
	.long	0x1579
	.uleb128 0x8
	.long	.LASF407
	.byte	0xb
	.byte	0xa0
	.long	0x10ee
	.byte	0
	.uleb128 0x8
	.long	.LASF408
	.byte	0xb
	.byte	0xa1
	.long	0x10ee
	.byte	0x8
	.uleb128 0x8
	.long	.LASF409
	.byte	0xb
	.byte	0xa2
	.long	0x10ee
	.byte	0x10
	.uleb128 0x8
	.long	.LASF410
	.byte	0xb
	.byte	0xa3
	.long	0x10ee
	.byte	0x18
	.uleb128 0x8
	.long	.LASF411
	.byte	0xb
	.byte	0xa4
	.long	0x10ee
	.byte	0x20
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x9e0
	.uleb128 0x7
	.long	.LASF412
	.byte	0xc0
	.byte	0x1
	.byte	0x50
	.long	0x1602
	.uleb128 0x8
	.long	.LASF354
	.byte	0x1
	.byte	0x52
	.long	0x31b
	.byte	0
	.uleb128 0x8
	.long	.LASF413
	.byte	0x1
	.byte	0x53
	.long	0x162f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF414
	.byte	0x1
	.byte	0x54
	.long	0x17d0
	.byte	0x10
	.uleb128 0x8
	.long	.LASF130
	.byte	0x1
	.byte	0x57
	.long	0x610
	.byte	0x18
	.uleb128 0x14
	.string	"st"
	.byte	0x1
	.byte	0x58
	.long	0x401
	.byte	0x20
	.uleb128 0x14
	.string	"fd"
	.byte	0x1
	.byte	0x59
	.long	0x2d
	.byte	0xb0
	.uleb128 0x8
	.long	.LASF415
	.byte	0x1
	.byte	0x5a
	.long	0x2d
	.byte	0xb4
	.uleb128 0x8
	.long	.LASF416
	.byte	0x1
	.byte	0x5b
	.long	0x64
	.byte	0xb8
	.uleb128 0x8
	.long	.LASF417
	.byte	0x1
	.byte	0x5c
	.long	0x64
	.byte	0xba
	.uleb128 0x8
	.long	.LASF418
	.byte	0x1
	.byte	0x5d
	.long	0x5d
	.byte	0xbc
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x157f
	.uleb128 0x1d
	.long	.LASF188
	.uleb128 0x6
	.byte	0x8
	.long	0x1608
	.uleb128 0x6
	.byte	0x8
	.long	0x9d5
	.uleb128 0x6
	.byte	0x8
	.long	0x144a
	.uleb128 0x1d
	.long	.LASF140
	.uleb128 0x6
	.byte	0x8
	.long	0x162a
	.uleb128 0xd
	.long	0x161f
	.uleb128 0x6
	.byte	0x8
	.long	0x1635
	.uleb128 0xd
	.long	0xdc7
	.uleb128 0x7
	.long	.LASF419
	.byte	0x38
	.byte	0xe
	.byte	0x62
	.long	0x169b
	.uleb128 0x8
	.long	.LASF420
	.byte	0xe
	.byte	0x65
	.long	0x16df
	.byte	0
	.uleb128 0x8
	.long	.LASF421
	.byte	0xe
	.byte	0x68
	.long	0x172d
	.byte	0x8
	.uleb128 0x8
	.long	.LASF422
	.byte	0xe
	.byte	0x6b
	.long	0x1752
	.byte	0x10
	.uleb128 0x8
	.long	.LASF423
	.byte	0xe
	.byte	0x6e
	.long	0x176e
	.byte	0x18
	.uleb128 0x8
	.long	.LASF424
	.byte	0xe
	.byte	0x71
	.long	0x178a
	.byte	0x20
	.uleb128 0x8
	.long	.LASF425
	.byte	0xe
	.byte	0x72
	.long	0x17af
	.byte	0x28
	.uleb128 0x8
	.long	.LASF426
	.byte	0xe
	.byte	0x73
	.long	0x42
	.byte	0x30
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x163a
	.uleb128 0x1d
	.long	.LASF159
	.uleb128 0x6
	.byte	0x8
	.long	0x16a1
	.uleb128 0x1d
	.long	.LASF427
	.uleb128 0x6
	.byte	0x8
	.long	0x16ac
	.uleb128 0x6
	.byte	0x8
	.long	0x626
	.uleb128 0x25
	.long	.LASF428
	.byte	0xb
	.value	0x1ad
	.long	0x5d
	.uleb128 0x5
	.long	.LASF429
	.byte	0xe
	.byte	0x31
	.long	0x56
	.uleb128 0x5
	.long	.LASF430
	.byte	0xe
	.byte	0x32
	.long	0x56
	.uleb128 0x5
	.long	.LASF431
	.byte	0xe
	.byte	0x36
	.long	0x16ea
	.uleb128 0x6
	.byte	0x8
	.long	0x16f0
	.uleb128 0x7
	.long	.LASF432
	.byte	0x20
	.byte	0xe
	.byte	0x54
	.long	0x172d
	.uleb128 0x14
	.string	"key"
	.byte	0xe
	.byte	0x57
	.long	0x16c9
	.byte	0
	.uleb128 0x8
	.long	.LASF257
	.byte	0xe
	.byte	0x5a
	.long	0x16d4
	.byte	0x8
	.uleb128 0x8
	.long	.LASF433
	.byte	0xe
	.byte	0x5d
	.long	0x16df
	.byte	0x10
	.uleb128 0x8
	.long	.LASF434
	.byte	0xe
	.byte	0x5e
	.long	0x16df
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.long	.LASF435
	.byte	0xe
	.byte	0x3a
	.long	0x1738
	.uleb128 0x6
	.byte	0x8
	.long	0x173e
	.uleb128 0x11
	.long	0x2d
	.long	0x1752
	.uleb128 0x12
	.long	0x16c9
	.uleb128 0x12
	.long	0x16c9
	.byte	0
	.uleb128 0x5
	.long	.LASF436
	.byte	0xe
	.byte	0x3e
	.long	0x175d
	.uleb128 0x6
	.byte	0x8
	.long	0x1763
	.uleb128 0x13
	.long	0x176e
	.uleb128 0x12
	.long	0x16c9
	.byte	0
	.uleb128 0x5
	.long	.LASF437
	.byte	0xe
	.byte	0x42
	.long	0x1779
	.uleb128 0x6
	.byte	0x8
	.long	0x177f
	.uleb128 0x13
	.long	0x178a
	.uleb128 0x12
	.long	0x16d4
	.byte	0
	.uleb128 0x5
	.long	.LASF438
	.byte	0xe
	.byte	0x4b
	.long	0x1795
	.uleb128 0x6
	.byte	0x8
	.long	0x179b
	.uleb128 0x11
	.long	0x42
	.long	0x17af
	.uleb128 0x12
	.long	0x2d
	.uleb128 0x12
	.long	0x42
	.byte	0
	.uleb128 0x5
	.long	.LASF439
	.byte	0xe
	.byte	0x51
	.long	0x17ba
	.uleb128 0x6
	.byte	0x8
	.long	0x17c0
	.uleb128 0x13
	.long	0x17d0
	.uleb128 0x12
	.long	0x42
	.uleb128 0x12
	.long	0x42
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x17d6
	.uleb128 0xd
	.long	0x110a
	.uleb128 0x26
	.long	.LASF440
	.byte	0x1
	.byte	0x95
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x1807
	.uleb128 0x27
	.long	.LASF125
	.byte	0x1
	.byte	0x96
	.long	0x11c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x26
	.long	.LASF441
	.byte	0x1
	.byte	0xa0
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x1833
	.uleb128 0x27
	.long	.LASF125
	.byte	0x1
	.byte	0xa1
	.long	0x11c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x28
	.long	.LASF456
	.byte	0x1
	.byte	0xa8
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x1869
	.uleb128 0x29
	.string	"v"
	.byte	0x1
	.byte	0xa9
	.long	0x16d4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.string	"f"
	.byte	0x1
	.byte	0xab
	.long	0x1602
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2b
	.long	.LASF442
	.byte	0x1
	.byte	0xb6
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x1895
	.uleb128 0x27
	.long	.LASF443
	.byte	0x1
	.byte	0xb7
	.long	0x1602
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2c
	.long	.LASF446
	.byte	0x1
	.byte	0xc0
	.long	0x16df
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x18fd
	.uleb128 0x27
	.long	.LASF125
	.byte	0x1
	.byte	0xc1
	.long	0x11c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.long	.LASF444
	.byte	0x1
	.byte	0xc2
	.long	0x31b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2d
	.long	.LASF348
	.byte	0x1
	.byte	0xc4
	.long	0x16df
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.long	.LASF443
	.byte	0x1
	.byte	0xc5
	.long	0x1602
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.long	.LASF354
	.byte	0x1
	.byte	0xc6
	.long	0x108
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x26
	.long	.LASF445
	.byte	0x1
	.byte	0xdb
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x1937
	.uleb128 0x27
	.long	.LASF125
	.byte	0x1
	.byte	0xdc
	.long	0x11c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.long	.LASF444
	.byte	0x1
	.byte	0xdd
	.long	0x31b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2c
	.long	.LASF447
	.byte	0x1
	.byte	0xec
	.long	0x1602
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x1990
	.uleb128 0x27
	.long	.LASF125
	.byte	0x1
	.byte	0xed
	.long	0x11c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.long	.LASF448
	.byte	0x1
	.byte	0xee
	.long	0x31b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.string	"nd"
	.byte	0x1
	.byte	0xf0
	.long	0x16df
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.long	.LASF443
	.byte	0x1
	.byte	0xf1
	.long	0x1602
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2e
	.long	.LASF449
	.byte	0x1
	.value	0x12b
	.long	0x9c3
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x19fd
	.uleb128 0x2f
	.long	.LASF125
	.byte	0x1
	.value	0x12c
	.long	0x11c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.string	"inc"
	.byte	0x1
	.value	0x12d
	.long	0x1602
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x31
	.string	"fp"
	.byte	0x1
	.value	0x12f
	.long	0x1613
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.long	.LASF176
	.byte	0x1
	.value	0x130
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x32
	.long	.LASF448
	.byte	0x1
	.value	0x131
	.long	0x31b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2e
	.long	.LASF450
	.byte	0x1
	.value	0x175
	.long	0x2d
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a9a
	.uleb128 0x2f
	.long	.LASF125
	.byte	0x1
	.value	0x176
	.long	0x11c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.string	"inc"
	.byte	0x1
	.value	0x177
	.long	0x1602
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x32
	.long	.LASF451
	.byte	0x1
	.value	0x179
	.long	0x326
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x32
	.long	.LASF452
	.byte	0x1
	.value	0x179
	.long	0x326
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.long	.LASF453
	.byte	0x1
	.value	0x179
	.long	0x326
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.string	"buf"
	.byte	0x1
	.value	0x17a
	.long	0x1a9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.long	.LASF454
	.byte	0x1
	.value	0x1dd
	.quad	.L45
	.uleb128 0x33
	.long	.LASF455
	.byte	0x1
	.value	0x1db
	.quad	.L39
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x16bd
	.uleb128 0x34
	.long	.LASF457
	.byte	0x1
	.value	0x1e3
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ace
	.uleb128 0x30
	.string	"inc"
	.byte	0x1
	.value	0x1e4
	.long	0x1602
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x35
	.long	.LASF472
	.byte	0x1
	.value	0x1f5
	.long	0x2d
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b4a
	.uleb128 0x2f
	.long	.LASF125
	.byte	0x1
	.value	0x1f6
	.long	0x11c1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2f
	.long	.LASF444
	.byte	0x1
	.value	0x1f7
	.long	0x31b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x32
	.long	.LASF458
	.byte	0x1
	.value	0x1f9
	.long	0x116b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x32
	.long	.LASF354
	.byte	0x1
	.value	0x1fa
	.long	0x108
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.string	"n"
	.byte	0x1
	.value	0x1fa
	.long	0x108
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x31
	.string	"nd"
	.byte	0x1
	.value	0x1fb
	.long	0x16df
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x2e
	.long	.LASF459
	.byte	0x1
	.value	0x21d
	.long	0x1602
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c09
	.uleb128 0x2f
	.long	.LASF125
	.byte	0x1
	.value	0x21e
	.long	0x11c1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2f
	.long	.LASF460
	.byte	0x1
	.value	0x21f
	.long	0x10f4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2f
	.long	.LASF248
	.byte	0x1
	.value	0x220
	.long	0x139d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x32
	.long	.LASF444
	.byte	0x1
	.value	0x222
	.long	0x31b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x32
	.long	.LASF458
	.byte	0x1
	.value	0x223
	.long	0x116b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x32
	.long	.LASF443
	.byte	0x1
	.value	0x224
	.long	0x1602
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.long	.LASF354
	.byte	0x1
	.value	0x225
	.long	0x108
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.string	"n"
	.byte	0x1
	.value	0x225
	.long	0x108
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x36
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x31
	.string	"len"
	.byte	0x1
	.value	0x23e
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.byte	0
	.uleb128 0x37
	.long	.LASF461
	.byte	0x1
	.value	0x25a
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c64
	.uleb128 0x2f
	.long	.LASF125
	.byte	0x1
	.value	0x25b
	.long	0x11c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF462
	.byte	0x1
	.value	0x25c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2f
	.long	.LASF463
	.byte	0x1
	.value	0x25c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x32
	.long	.LASF249
	.byte	0x1
	.value	0x25e
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x37
	.long	.LASF464
	.byte	0x1
	.value	0x26a
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ca1
	.uleb128 0x2f
	.long	.LASF125
	.byte	0x1
	.value	0x26b
	.long	0x11c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.long	.LASF465
	.byte	0x1
	.value	0x26d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2e
	.long	.LASF466
	.byte	0x1
	.value	0x274
	.long	0x2d
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x1cfa
	.uleb128 0x30
	.string	"n"
	.byte	0x1
	.value	0x275
	.long	0x16df
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.string	"b"
	.byte	0x1
	.value	0x276
	.long	0x42
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.string	"f"
	.byte	0x1
	.value	0x278
	.long	0x1602
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x32
	.long	.LASF467
	.byte	0x1
	.value	0x279
	.long	0x3fb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x34
	.long	.LASF468
	.byte	0x1
	.value	0x28c
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x1da4
	.uleb128 0x2f
	.long	.LASF125
	.byte	0x1
	.value	0x28d
	.long	0x11c1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2f
	.long	.LASF444
	.byte	0x1
	.value	0x28e
	.long	0x31b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2f
	.long	.LASF469
	.byte	0x1
	.value	0x28f
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x32
	.long	.LASF470
	.byte	0x1
	.value	0x291
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x36
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x31
	.string	"ptr"
	.byte	0x1
	.value	0x29b
	.long	0x116b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.string	"p"
	.byte	0x1
	.value	0x29c
	.long	0x108
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x31
	.string	"len"
	.byte	0x1
	.value	0x29d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x32
	.long	.LASF471
	.byte	0x1
	.value	0x29d
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.byte	0
	.uleb128 0x35
	.long	.LASF473
	.byte	0x1
	.value	0x2bc
	.long	0x9c3
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e12
	.uleb128 0x2f
	.long	.LASF125
	.byte	0x1
	.value	0x2bd
	.long	0x11c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF460
	.byte	0x1
	.value	0x2be
	.long	0x10f4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.long	.LASF248
	.byte	0x1
	.value	0x2bf
	.long	0x139d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x32
	.long	.LASF474
	.byte	0x1
	.value	0x2c1
	.long	0x9c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x31
	.string	"inc"
	.byte	0x1
	.value	0x2c2
	.long	0x1602
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x35
	.long	.LASF475
	.byte	0x1
	.value	0x2d6
	.long	0x2d
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e62
	.uleb128 0x2f
	.long	.LASF125
	.byte	0x1
	.value	0x2d7
	.long	0x11c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF460
	.byte	0x1
	.value	0x2d8
	.long	0x10f4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.string	"inc"
	.byte	0x1
	.value	0x2da
	.long	0x1602
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x35
	.long	.LASF476
	.byte	0x1
	.value	0x2ed
	.long	0x9c3
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x1eb0
	.uleb128 0x2f
	.long	.LASF125
	.byte	0x1
	.value	0x2ee
	.long	0x11c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF444
	.byte	0x1
	.value	0x2ef
	.long	0x31b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.string	"f"
	.byte	0x1
	.value	0x2f1
	.long	0x1602
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x35
	.long	.LASF477
	.byte	0x1
	.value	0x2ff
	.long	0x9c3
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f00
	.uleb128 0x2f
	.long	.LASF125
	.byte	0x1
	.value	0x300
	.long	0x11c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.string	"inc"
	.byte	0x1
	.value	0x301
	.long	0x1602
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x32
	.long	.LASF478
	.byte	0x1
	.value	0x303
	.long	0x9c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x2e
	.long	.LASF479
	.byte	0x1
	.value	0x325
	.long	0x116b
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f6f
	.uleb128 0x2f
	.long	.LASF125
	.byte	0x1
	.value	0x326
	.long	0x11c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.long	.LASF248
	.byte	0x1
	.value	0x327
	.long	0x139d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x32
	.long	.LASF130
	.byte	0x1
	.value	0x329
	.long	0x1613
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.long	.LASF480
	.byte	0x1
	.value	0x32a
	.long	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.long	.LASF481
	.byte	0x1
	.value	0x344
	.quad	.L119
	.byte	0
	.uleb128 0x2e
	.long	.LASF482
	.byte	0x1
	.value	0x367
	.long	0x108
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x1fda
	.uleb128 0x30
	.string	"ch"
	.byte	0x1
	.value	0x368
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x30
	.string	"f"
	.byte	0x1
	.value	0x369
	.long	0x1fda
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x32
	.long	.LASF483
	.byte	0x1
	.value	0x36b
	.long	0x108
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x31
	.string	"set"
	.byte	0x1
	.value	0x36b
	.long	0x108
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.string	"len"
	.byte	0x1
	.value	0x36c
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x115
	.uleb128 0x2e
	.long	.LASF484
	.byte	0x1
	.value	0x38d
	.long	0x1397
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x20bf
	.uleb128 0x2f
	.long	.LASF125
	.byte	0x1
	.value	0x38e
	.long	0x11c1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2f
	.long	.LASF485
	.byte	0x1
	.value	0x38f
	.long	0x31b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x32
	.long	.LASF486
	.byte	0x1
	.value	0x391
	.long	0x11a6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x32
	.long	.LASF354
	.byte	0x1
	.value	0x392
	.long	0x108
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x31
	.string	"f"
	.byte	0x1
	.value	0x393
	.long	0x1fda
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x36
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x31
	.string	"ch"
	.byte	0x1
	.value	0x3ac
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x32
	.long	.LASF487
	.byte	0x1
	.value	0x3ad
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x36
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x32
	.long	.LASF488
	.byte	0x1
	.value	0x3b1
	.long	0x108
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x31
	.string	"to"
	.byte	0x1
	.value	0x3b1
	.long	0x108
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.string	"ptr"
	.byte	0x1
	.value	0x3b2
	.long	0x1397
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	.LASF489
	.byte	0x1
	.value	0x3df
	.long	0x108
	.quad	.LFB31
	.quad	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0x216e
	.uleb128 0x2f
	.long	.LASF125
	.byte	0x1
	.value	0x3e0
	.long	0x11c1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2f
	.long	.LASF354
	.byte	0x1
	.value	0x3e1
	.long	0x108
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x30
	.string	"loc"
	.byte	0x1
	.value	0x3e2
	.long	0x116b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x31
	.string	"map"
	.byte	0x1
	.value	0x3e4
	.long	0x1397
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x32
	.long	.LASF488
	.byte	0x1
	.value	0x3e5
	.long	0x31b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x31
	.string	"p"
	.byte	0x1
	.value	0x3e5
	.long	0x31b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.string	"dir"
	.byte	0x1
	.value	0x3e6
	.long	0x108
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x36
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x32
	.long	.LASF490
	.byte	0x1
	.value	0x3eb
	.long	0x108
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	.LASF491
	.byte	0x1
	.value	0x418
	.long	0x2d
	.quad	.LFB32
	.quad	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0x21bf
	.uleb128 0x2f
	.long	.LASF458
	.byte	0x1
	.value	0x419
	.long	0x31b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x31
	.string	"s"
	.byte	0x1
	.value	0x41b
	.long	0x401
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x32
	.long	.LASF492
	.byte	0x1
	.value	0x41c
	.long	0x2d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.byte	0
	.uleb128 0x35
	.long	.LASF493
	.byte	0x1
	.value	0x43c
	.long	0x108
	.quad	.LFB33
	.quad	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0x225d
	.uleb128 0x2f
	.long	.LASF458
	.byte	0x1
	.value	0x43d
	.long	0x108
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x32
	.long	.LASF488
	.byte	0x1
	.value	0x440
	.long	0x108
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.string	"to"
	.byte	0x1
	.value	0x440
	.long	0x108
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.long	.LASF379
	.byte	0x1
	.value	0x441
	.long	0x108
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x32
	.long	.LASF494
	.byte	0x1
	.value	0x441
	.long	0x108
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.long	.LASF495
	.byte	0x1
	.value	0x442
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x36
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x32
	.long	.LASF496
	.byte	0x1
	.value	0x46b
	.long	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.byte	0
	.uleb128 0x38
	.long	.LASF497
	.byte	0x4
	.byte	0xaa
	.long	0x2ef
	.uleb128 0xa
	.long	0x64
	.long	0x2278
	.uleb128 0xb
	.long	0x34
	.byte	0xff
	.byte	0
	.uleb128 0x38
	.long	.LASF498
	.byte	0xf
	.byte	0x48
	.long	0x2283
	.uleb128 0xd
	.long	0x2268
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
	.uleb128 0x8
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x17
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
	.uleb128 0x23
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
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
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
.LASF417:
	.string	"refcnt"
.LASF298:
	.string	"CPP_MULT_EQ"
.LASF366:
	.string	"BT_DATE"
.LASF98:
	.string	"st_ctim"
.LASF8:
	.string	"size_t"
.LASF399:
	.string	"skipping"
.LASF412:
	.string	"include_file"
.LASF0:
	.string	"sizetype"
.LASF63:
	.string	"_sch_isprint"
.LASF145:
	.string	"base_run"
.LASF106:
	.string	"chunk"
.LASF122:
	.string	"alloc_node"
.LASF467:
	.string	"bannerp"
.LASF94:
	.string	"st_blksize"
.LASF179:
	.string	"used"
.LASF95:
	.string	"st_blocks"
.LASF20:
	.string	"__ssize_t"
.LASF277:
	.string	"CPP_AND"
.LASF333:
	.string	"CPP_MACRO_ARG"
.LASF283:
	.string	"CPP_MAX"
.LASF420:
	.string	"root"
.LASF170:
	.string	"line_map"
.LASF35:
	.string	"_IO_save_end"
.LASF458:
	.string	"path"
.LASF374:
	.string	"answers"
.LASF171:
	.string	"to_file"
.LASF70:
	.string	"_sch_isnvsp"
.LASF67:
	.string	"_sch_isxdigit"
.LASF78:
	.string	"dev_t"
.LASF11:
	.string	"__gid_t"
.LASF165:
	.string	"print_version"
.LASF476:
	.string	"_cpp_read_file"
.LASF225:
	.string	"warn_system_headers"
.LASF198:
	.string	"out_fname"
.LASF97:
	.string	"st_mtim"
.LASF100:
	.string	"_obstack_chunk"
.LASF309:
	.string	"CPP_PASTE"
.LASF148:
	.string	"keep_tokens"
.LASF286:
	.string	"CPP_OR_OR"
.LASF392:
	.string	"cpp_context"
.LASF28:
	.string	"_IO_write_base"
.LASF421:
	.string	"comp"
.LASF131:
	.string	"state"
.LASF368:
	.string	"BT_BASE_FILE"
.LASF44:
	.string	"_lock"
.LASF114:
	.string	"extra_arg"
.LASF435:
	.string	"splay_tree_compare_fn"
.LASF410:
	.string	"n__STRICT_ANSI__"
.LASF290:
	.string	"CPP_OPEN_PAREN"
.LASF431:
	.string	"splay_tree_node"
.LASF230:
	.string	"warn_traditional"
.LASF248:
	.string	"type"
.LASF226:
	.string	"inhibit_errors"
.LASF84:
	.string	"stat"
.LASF142:
	.string	"mi_ind_cmacro"
.LASF459:
	.string	"find_include_file"
.LASF33:
	.string	"_IO_save_base"
.LASF423:
	.string	"delete_value"
.LASF396:
	.string	"direct_p"
.LASF485:
	.string	"dirname"
.LASF338:
	.string	"CLK_GNUC89"
.LASF493:
	.string	"_cpp_simplify_pathname"
.LASF128:
	.string	"hashnode"
.LASF406:
	.string	"parsing_args"
.LASF377:
	.string	"answer"
.LASF37:
	.string	"_chain"
.LASF58:
	.string	"ssize_t"
.LASF247:
	.string	"cpp_token"
.LASF204:
	.string	"map_list"
.LASF224:
	.string	"inhibit_warnings"
.LASF305:
	.string	"CPP_LSHIFT_EQ"
.LASF232:
	.string	"no_output"
.LASF453:
	.string	"count"
.LASF41:
	.string	"_cur_column"
.LASF359:
	.string	"map_list_map"
.LASF386:
	.string	"IT_INCLUDE_NEXT"
.LASF238:
	.string	"pedantic"
.LASF9:
	.string	"__dev_t"
.LASF184:
	.string	"cpp_buffer"
.LASF378:
	.string	"_cpp_buff"
.LASF112:
	.string	"chunkfun"
.LASF492:
	.string	"result"
.LASF500:
	.string	"cppfiles.c"
.LASF287:
	.string	"CPP_QUERY"
.LASF228:
	.string	"warn_trigraphs"
.LASF339:
	.string	"CLK_GNUC99"
.LASF265:
	.string	"def_pragma"
.LASF137:
	.string	"free_buffs"
.LASF408:
	.string	"n_true"
.LASF103:
	.string	"contents"
.LASF119:
	.string	"hash_table"
.LASF391:
	.string	"tokenrun"
.LASF313:
	.string	"CPP_CLOSE_BRACE"
.LASF433:
	.string	"left"
.LASF166:
	.string	"our_hashtable"
.LASF2:
	.string	"long int"
.LASF223:
	.string	"pedantic_errors"
.LASF327:
	.string	"CPP_WCHAR"
.LASF328:
	.string	"CPP_OTHER"
.LASF306:
	.string	"CPP_MIN_EQ"
.LASF132:
	.string	"line_maps"
.LASF285:
	.string	"CPP_AND_AND"
.LASF321:
	.string	"CPP_DEREF_STAR"
.LASF54:
	.string	"_IO_marker"
.LASF294:
	.string	"CPP_GREATER_EQ"
.LASF494:
	.string	"orig_base"
.LASF121:
	.string	"entries"
.LASF271:
	.string	"CPP_LESS"
.LASF486:
	.string	"map_list_ptr"
.LASF300:
	.string	"CPP_MOD_EQ"
.LASF489:
	.string	"remap_filename"
.LASF124:
	.string	"nelements"
.LASF111:
	.string	"alignment_mask"
.LASF268:
	.string	"CPP_EQ"
.LASF64:
	.string	"_sch_ispunct"
.LASF331:
	.string	"CPP_HEADER_NAME"
.LASF222:
	.string	"print_include_names"
.LASF347:
	.string	"CLK_ASM"
.LASF491:
	.string	"remove_component_p"
.LASF160:
	.string	"hash_ob"
.LASF6:
	.string	"signed char"
.LASF18:
	.string	"__blksize_t"
.LASF188:
	.string	"if_stack"
.LASF53:
	.string	"_IO_FILE"
.LASF448:
	.string	"filename"
.LASF89:
	.string	"st_uid"
.LASF134:
	.string	"directive_line"
.LASF139:
	.string	"context"
.LASF332:
	.string	"CPP_COMMENT"
.LASF411:
	.string	"n__VA_ARGS__"
.LASF365:
	.string	"BT_SPECLINE"
.LASF4:
	.string	"unsigned char"
.LASF297:
	.string	"CPP_MINUS_EQ"
.LASF92:
	.string	"st_rdev"
.LASF436:
	.string	"splay_tree_delete_key_fn"
.LASF446:
	.string	"find_or_create_entry"
.LASF478:
	.string	"pushed"
.LASF197:
	.string	"in_fname"
.LASF407:
	.string	"n_defined"
.LASF473:
	.string	"_cpp_execute_include"
.LASF252:
	.string	"cpp_hashnode"
.LASF318:
	.string	"CPP_DEREF"
.LASF314:
	.string	"CPP_SEMICOLON"
.LASF460:
	.string	"header"
.LASF21:
	.string	"__syscall_slong_t"
.LASF183:
	.string	"_Bool"
.LASF172:
	.string	"to_line"
.LASF488:
	.string	"from"
.LASF501:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/403.gcc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF257:
	.string	"value"
.LASF402:
	.string	"lexing_comment"
.LASF73:
	.string	"_sch_isidnum"
.LASF22:
	.string	"char"
.LASF182:
	.string	"trace_includes"
.LASF340:
	.string	"CLK_STDC89"
.LASF235:
	.string	"ignore_srcdir"
.LASF350:
	.string	"arg_no"
.LASF161:
	.string	"buffer_ob"
.LASF341:
	.string	"CLK_STDC94"
.LASF447:
	.string	"open_file"
.LASF207:
	.string	"user_label_prefix"
.LASF186:
	.string	"rlimit"
.LASF311:
	.string	"CPP_CLOSE_SQUARE"
.LASF253:
	.string	"ident"
.LASF442:
	.string	"_cpp_never_reread"
.LASF502:
	.string	"_IO_lock_t"
.LASF360:
	.string	"node_type"
.LASF364:
	.string	"builtin_type"
.LASF243:
	.string	"dump_includes"
.LASF355:
	.string	"name_map"
.LASF129:
	.string	"cpp_reader"
.LASF149:
	.string	"errors"
.LASF138:
	.string	"base_context"
.LASF349:
	.string	"source"
.LASF342:
	.string	"CLK_STDC99"
.LASF455:
	.string	"perror_fail"
.LASF424:
	.string	"allocate"
.LASF13:
	.string	"__mode_t"
.LASF426:
	.string	"allocate_data"
.LASF381:
	.string	"map_next"
.LASF249:
	.string	"flags"
.LASF261:
	.string	"file_change"
.LASF69:
	.string	"_sch_isvsp"
.LASF239:
	.string	"preprocessed"
.LASF25:
	.string	"_IO_read_ptr"
.LASF140:
	.string	"directive"
.LASF450:
	.string	"read_include_file"
.LASF205:
	.string	"include_prefix"
.LASF310:
	.string	"CPP_OPEN_SQUARE"
.LASF425:
	.string	"deallocate"
.LASF57:
	.string	"_pos"
.LASF498:
	.string	"_sch_istable"
.LASF250:
	.string	"cpp_string"
.LASF348:
	.string	"node"
.LASF251:
	.string	"text"
.LASF383:
	.string	"map_to"
.LASF154:
	.string	"all_include_files"
.LASF36:
	.string	"_markers"
.LASF308:
	.string	"CPP_HASH"
.LASF443:
	.string	"file"
.LASF362:
	.string	"NT_MACRO"
.LASF312:
	.string	"CPP_OPEN_BRACE"
.LASF101:
	.string	"limit"
.LASF66:
	.string	"_sch_isupper"
.LASF155:
	.string	"max_include_len"
.LASF324:
	.string	"CPP_NAME"
.LASF60:
	.string	"_sch_iscntrl"
.LASF130:
	.string	"buffer"
.LASF262:
	.string	"include"
.LASF367:
	.string	"BT_FILE"
.LASF237:
	.string	"warn_undef"
.LASF227:
	.string	"warn_comments"
.LASF346:
	.string	"CLK_OBJCXX"
.LASF464:
	.string	"_cpp_report_missing_guards"
.LASF387:
	.string	"IT_IMPORT"
.LASF343:
	.string	"CLK_GNUCXX"
.LASF356:
	.string	"file_name_map_list"
.LASF231:
	.string	"warnings_are_errors"
.LASF221:
	.string	"print_deps_append"
.LASF336:
	.string	"N_TTYPES"
.LASF45:
	.string	"_offset"
.LASF167:
	.string	"LC_ENTER"
.LASF105:
	.string	"chunk_size"
.LASF90:
	.string	"st_gid"
.LASF475:
	.string	"_cpp_compare_file_date"
.LASF380:
	.string	"file_name_map"
.LASF144:
	.string	"cur_token"
.LASF414:
	.string	"foundhere"
.LASF177:
	.string	"maps"
.LASF388:
	.string	"IT_CMDLINE"
.LASF213:
	.string	"objc"
.LASF77:
	.string	"ino_t"
.LASF3:
	.string	"long unsigned int"
.LASF229:
	.string	"warn_import"
.LASF465:
	.string	"banner"
.LASF116:
	.string	"maybe_empty_object"
.LASF39:
	.string	"_flags2"
.LASF373:
	.string	"macro"
.LASF93:
	.string	"st_size"
.LASF27:
	.string	"_IO_read_base"
.LASF107:
	.string	"object_base"
.LASF133:
	.string	"line"
.LASF136:
	.string	"u_buff"
.LASF384:
	.string	"include_type"
.LASF304:
	.string	"CPP_RSHIFT_EQ"
.LASF52:
	.string	"_unused2"
.LASF178:
	.string	"allocated"
.LASF316:
	.string	"CPP_PLUS_PLUS"
.LASF307:
	.string	"CPP_MAX_EQ"
.LASF126:
	.string	"searches"
.LASF200:
	.string	"pending"
.LASF233:
	.string	"remap"
.LASF113:
	.string	"freefun"
.LASF496:
	.string	"move_base"
.LASF218:
	.string	"print_deps"
.LASF439:
	.string	"splay_tree_deallocate_fn"
.LASF40:
	.string	"_old_offset"
.LASF466:
	.string	"report_missing_guard"
.LASF370:
	.string	"BT_TIME"
.LASF315:
	.string	"CPP_ELLIPSIS"
.LASF240:
	.string	"no_standard_includes"
.LASF19:
	.string	"__blkcnt_t"
.LASF361:
	.string	"NT_VOID"
.LASF270:
	.string	"CPP_GREATER"
.LASF275:
	.string	"CPP_DIV"
.LASF282:
	.string	"CPP_MIN"
.LASF117:
	.string	"alloc_failed"
.LASF276:
	.string	"CPP_MOD"
.LASF12:
	.string	"__ino_t"
.LASF352:
	.string	"search_path"
.LASF357:
	.string	"map_list_next"
.LASF209:
	.string	"verbose"
.LASF416:
	.string	"include_count"
.LASF125:
	.string	"pfile"
.LASF83:
	.string	"long long int"
.LASF256:
	.string	"rid_code"
.LASF216:
	.string	"digraphs"
.LASF214:
	.string	"discard_comments"
.LASF409:
	.string	"n_false"
.LASF477:
	.string	"_cpp_pop_file_buffer"
.LASF444:
	.string	"fname"
.LASF278:
	.string	"CPP_OR"
.LASF413:
	.string	"cmacro"
.LASF434:
	.string	"right"
.LASF260:
	.string	"line_change"
.LASF71:
	.string	"_sch_isalpha"
.LASF192:
	.string	"warned_cplusplus_comments"
.LASF120:
	.string	"stack"
.LASF490:
	.string	"dname"
.LASF219:
	.string	"deps_phony_targets"
.LASF30:
	.string	"_IO_write_end"
.LASF158:
	.string	"avoid_paste"
.LASF181:
	.string	"depth"
.LASF457:
	.string	"purge_cache"
.LASF164:
	.string	"spec_nodes"
.LASF59:
	.string	"_sch_isblank"
.LASF469:
	.string	"angle_brackets"
.LASF395:
	.string	"buff"
.LASF173:
	.string	"from_line"
.LASF428:
	.string	"U_CHAR"
.LASF153:
	.string	"macro_buffer_len"
.LASF72:
	.string	"_sch_isalnum"
.LASF234:
	.string	"no_line_commands"
.LASF483:
	.string	"alloc"
.LASF199:
	.string	"tabstop"
.LASF246:
	.string	"help_only"
.LASF31:
	.string	"_IO_buf_base"
.LASF401:
	.string	"save_comments"
.LASF281:
	.string	"CPP_LSHIFT"
.LASF429:
	.string	"splay_tree_key"
.LASF1:
	.string	"unsigned int"
.LASF65:
	.string	"_sch_isspace"
.LASF325:
	.string	"CPP_NUMBER"
.LASF189:
	.string	"col_adjust"
.LASF104:
	.string	"obstack"
.LASF503:
	.string	"utoken"
.LASF163:
	.string	"opts"
.LASF481:
	.string	"use_cwd"
.LASF143:
	.string	"mi_valid"
.LASF91:
	.string	"__pad0"
.LASF46:
	.string	"__pad1"
.LASF47:
	.string	"__pad2"
.LASF48:
	.string	"__pad3"
.LASF49:
	.string	"__pad4"
.LASF50:
	.string	"__pad5"
.LASF56:
	.string	"_sbuf"
.LASF75:
	.string	"_sch_iscppsp"
.LASF273:
	.string	"CPP_MINUS"
.LASF24:
	.string	"_flags"
.LASF419:
	.string	"splay_tree_s"
.LASF244:
	.string	"show_column"
.LASF452:
	.string	"offset"
.LASF463:
	.string	"externc"
.LASF497:
	.string	"stderr"
.LASF108:
	.string	"next_free"
.LASF393:
	.string	"first"
.LASF51:
	.string	"_mode"
.LASF190:
	.string	"saved_flags"
.LASF445:
	.string	"_cpp_fake_include"
.LASF499:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF87:
	.string	"st_nlink"
.LASF461:
	.string	"cpp_make_system_header"
.LASF397:
	.string	"lexer_state"
.LASF99:
	.string	"__unused"
.LASF454:
	.string	"fail"
.LASF326:
	.string	"CPP_CHAR"
.LASF432:
	.string	"splay_tree_node_s"
.LASF353:
	.string	"next"
.LASF440:
	.string	"_cpp_init_includes"
.LASF372:
	.string	"BT_PRAGMA"
.LASF301:
	.string	"CPP_AND_EQ"
.LASF62:
	.string	"_sch_islower"
.LASF168:
	.string	"LC_LEAVE"
.LASF23:
	.string	"FILE"
.LASF358:
	.string	"map_list_name"
.LASF159:
	.string	"deps"
.LASF150:
	.string	"mls_line"
.LASF85:
	.string	"st_dev"
.LASF162:
	.string	"pragmas"
.LASF272:
	.string	"CPP_PLUS"
.LASF462:
	.string	"syshdr"
.LASF79:
	.string	"timespec"
.LASF320:
	.string	"CPP_SCOPE"
.LASF274:
	.string	"CPP_MULT"
.LASF195:
	.string	"return_at_eof"
.LASF430:
	.string	"splay_tree_value"
.LASF319:
	.string	"CPP_DOT"
.LASF438:
	.string	"splay_tree_allocate_fn"
.LASF456:
	.string	"destroy_node"
.LASF299:
	.string	"CPP_DIV_EQ"
.LASF451:
	.string	"size"
.LASF176:
	.string	"sysp"
.LASF82:
	.string	"long long unsigned int"
.LASF344:
	.string	"CLK_CXX98"
.LASF269:
	.string	"CPP_NOT"
.LASF187:
	.string	"line_base"
.LASF449:
	.string	"stack_include_file"
.LASF337:
	.string	"c_lang"
.LASF479:
	.string	"search_from"
.LASF15:
	.string	"__off_t"
.LASF289:
	.string	"CPP_COMMA"
.LASF279:
	.string	"CPP_XOR"
.LASF480:
	.string	"dlen"
.LASF259:
	.string	"cpp_callbacks"
.LASF215:
	.string	"trigraphs"
.LASF174:
	.string	"included_from"
.LASF487:
	.string	"dirlen"
.LASF175:
	.string	"reason"
.LASF400:
	.string	"angled_headers"
.LASF405:
	.string	"prevent_expansion"
.LASF302:
	.string	"CPP_OR_EQ"
.LASF194:
	.string	"search_cached"
.LASF17:
	.string	"__time_t"
.LASF296:
	.string	"CPP_PLUS_EQ"
.LASF474:
	.string	"stacked"
.LASF34:
	.string	"_IO_backup_base"
.LASF43:
	.string	"_shortbuf"
.LASF472:
	.string	"cpp_included"
.LASF382:
	.string	"map_from"
.LASF210:
	.string	"signed_char"
.LASF61:
	.string	"_sch_isdigit"
.LASF212:
	.string	"cplusplus_comments"
.LASF55:
	.string	"_next"
.LASF16:
	.string	"__off64_t"
.LASF376:
	.string	"builtin"
.LASF147:
	.string	"lookaheads"
.LASF217:
	.string	"extended_numbers"
.LASF292:
	.string	"CPP_EQ_EQ"
.LASF115:
	.string	"use_extra_arg"
.LASF151:
	.string	"mls_col"
.LASF193:
	.string	"from_stage3"
.LASF495:
	.string	"absolute"
.LASF471:
	.string	"fname_len"
.LASF32:
	.string	"_IO_buf_end"
.LASF211:
	.string	"cplusplus"
.LASF201:
	.string	"deps_file"
.LASF169:
	.string	"LC_RENAME"
.LASF354:
	.string	"name"
.LASF196:
	.string	"cpp_options"
.LASF398:
	.string	"in_directive"
.LASF284:
	.string	"CPP_COMPL"
.LASF441:
	.string	"_cpp_cleanup_includes"
.LASF317:
	.string	"CPP_MINUS_MINUS"
.LASF7:
	.string	"short int"
.LASF267:
	.string	"cpp_ttype"
.LASF241:
	.string	"no_standard_cplusplus_includes"
.LASF208:
	.string	"lang"
.LASF81:
	.string	"tv_nsec"
.LASF236:
	.string	"dollars_in_ident"
.LASF185:
	.string	"backup_to"
.LASF123:
	.string	"nslots"
.LASF427:
	.string	"pragma_entry"
.LASF42:
	.string	"_vtable_offset"
.LASF264:
	.string	"undef"
.LASF180:
	.string	"last_listed"
.LASF266:
	.string	"lc_reason"
.LASF146:
	.string	"cur_run"
.LASF345:
	.string	"CLK_OBJC"
.LASF74:
	.string	"_sch_isgraph"
.LASF135:
	.string	"a_buff"
.LASF468:
	.string	"handle_missing_header"
.LASF335:
	.string	"CPP_EOF"
.LASF293:
	.string	"CPP_NOT_EQ"
.LASF330:
	.string	"CPP_WSTRING"
.LASF482:
	.string	"read_filename_string"
.LASF88:
	.string	"st_mode"
.LASF10:
	.string	"__uid_t"
.LASF371:
	.string	"BT_STDC"
.LASF291:
	.string	"CPP_CLOSE_PAREN"
.LASF385:
	.string	"IT_INCLUDE"
.LASF26:
	.string	"_IO_read_end"
.LASF404:
	.string	"poisoned_ok"
.LASF484:
	.string	"read_name_map"
.LASF295:
	.string	"CPP_LESS_EQ"
.LASF76:
	.string	"_sch_isbasic"
.LASF68:
	.string	"_sch_isidst"
.LASF280:
	.string	"CPP_RSHIFT"
.LASF255:
	.string	"directive_index"
.LASF206:
	.string	"include_prefix_len"
.LASF127:
	.string	"collisions"
.LASF363:
	.string	"NT_ASSERTION"
.LASF38:
	.string	"_fileno"
.LASF334:
	.string	"CPP_PADDING"
.LASF152:
	.string	"macro_buffer"
.LASF389:
	.string	"token"
.LASF322:
	.string	"CPP_DOT_STAR"
.LASF323:
	.string	"CPP_ATSIGN"
.LASF422:
	.string	"delete_key"
.LASF418:
	.string	"mapped"
.LASF5:
	.string	"short unsigned int"
.LASF109:
	.string	"chunk_limit"
.LASF288:
	.string	"CPP_COLON"
.LASF203:
	.string	"bracket_include"
.LASF379:
	.string	"base"
.LASF415:
	.string	"err_no"
.LASF258:
	.string	"cpp_macro"
.LASF242:
	.string	"dump_macros"
.LASF29:
	.string	"_IO_write_ptr"
.LASF329:
	.string	"CPP_STRING"
.LASF437:
	.string	"splay_tree_delete_value_fn"
.LASF157:
	.string	"time"
.LASF470:
	.string	"print_dep"
.LASF202:
	.string	"quote_include"
.LASF403:
	.string	"va_args_ok"
.LASF191:
	.string	"last_Wtrigraphs"
.LASF86:
	.string	"st_ino"
.LASF110:
	.string	"temp"
.LASF254:
	.string	"arg_index"
.LASF263:
	.string	"define"
.LASF14:
	.string	"__nlink_t"
.LASF118:
	.string	"ht_identifier"
.LASF375:
	.string	"operator"
.LASF351:
	.string	"cpp_pending"
.LASF245:
	.string	"operator_names"
.LASF220:
	.string	"print_deps_missing_files"
.LASF156:
	.string	"date"
.LASF390:
	.string	"ptoken"
.LASF102:
	.string	"prev"
.LASF80:
	.string	"tv_sec"
.LASF141:
	.string	"mi_cmacro"
.LASF303:
	.string	"CPP_XOR_EQ"
.LASF369:
	.string	"BT_INCLUDE_LEVEL"
.LASF394:
	.string	"last"
.LASF96:
	.string	"st_atim"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
