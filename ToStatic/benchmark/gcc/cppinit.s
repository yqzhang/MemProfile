	.file	"cppinit.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 cppinit.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.globl	_cpp_trigraph_map
	.section	.rodata
	.align 32
	.type	_cpp_trigraph_map, @object
	.size	_cpp_trigraph_map, 256
_cpp_trigraph_map:
	.zero	33
	.byte	124
	.zero	5
	.byte	94
	.byte	91
	.byte	93
	.zero	3
	.byte	126
	.zero	1
	.byte	92
	.zero	12
	.byte	123
	.byte	35
	.byte	125
	.zero	193
	.text
	.type	path_include, @function
path_include:
.LFB8:
	.file 1 "cppinit.c"
	.loc 1 167 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# pfile, pfile
	movq	%rsi, -48(%rbp)	# list, list
	movl	%edx, -52(%rbp)	# path, path
	.loc 1 170 0
	movq	-48(%rbp), %rax	# list, tmp77
	movq	%rax, -24(%rbp)	# tmp77, p
.L9:
	.loc 1 175 0
	movq	-24(%rbp), %rax	# p, tmp78
	movq	%rax, -16(%rbp)	# tmp78, q
	.loc 1 176 0
	jmp	.L2	#
.L4:
	.loc 1 176 0 is_stmt 0 discriminator 1
	addq	$1, -16(%rbp)	#, q
.L2:
	movq	-16(%rbp), %rax	# q, tmp79
	movzbl	(%rax), %eax	# *q_2, D.9101
	testb	%al, %al	# D.9101
	je	.L3	#,
	.loc 1 176 0 discriminator 2
	movq	-16(%rbp), %rax	# q, tmp80
	movzbl	(%rax), %eax	# *q_2, D.9101
	cmpb	$58, %al	#, D.9101
	jne	.L4	#,
.L3:
	.loc 1 177 0 is_stmt 1
	movq	-16(%rbp), %rax	# q, tmp81
	cmpq	-24(%rbp), %rax	# p, tmp81
	jne	.L5	#,
	.loc 1 180 0
	movl	$2, %edi	#,
	call	xmalloc	#
	movq	%rax, -8(%rbp)	# tmp82, name
	.loc 1 181 0
	movq	-8(%rbp), %rax	# name, tmp83
	movb	$46, (%rax)	#, *name_10
	.loc 1 182 0
	movq	-8(%rbp), %rax	# name, tmp84
	addq	$1, %rax	#, D.9102
	movb	$0, (%rax)	#, *_11
	jmp	.L6	#
.L5:
	.loc 1 187 0
	movq	-16(%rbp), %rdx	# q, q.0
	movq	-24(%rbp), %rax	# p, p.1
	subq	%rax, %rdx	# p.1, D.9103
	movq	%rdx, %rax	# D.9103, D.9103
	addq	$1, %rax	#, D.9103
	movq	%rax, %rdi	# D.9104,
	call	xmalloc	#
	movq	%rax, -8(%rbp)	# tmp85, name
	.loc 1 188 0
	movq	-16(%rbp), %rdx	# q, q.2
	movq	-24(%rbp), %rax	# p, p.3
	subq	%rax, %rdx	# p.3, D.9103
	movq	%rdx, %rax	# D.9103, D.9103
	movq	%rax, %rdx	# D.9103, D.9104
	movq	-24(%rbp), %rcx	# p, tmp86
	movq	-8(%rbp), %rax	# name, tmp87
	movq	%rcx, %rsi	# tmp86,
	movq	%rax, %rdi	# tmp87,
	call	memcpy	#
	.loc 1 189 0
	movq	-16(%rbp), %rdx	# q, q.4
	movq	-24(%rbp), %rax	# p, p.5
	subq	%rax, %rdx	# p.5, D.9103
	movq	%rdx, %rax	# D.9103, D.9103
	movq	%rax, %rdx	# D.9103, D.9105
	movq	-8(%rbp), %rax	# name, tmp88
	addq	%rdx, %rax	# D.9105, D.9102
	movb	$0, (%rax)	#, *_26
.L6:
	.loc 1 192 0
	movl	-52(%rbp), %edx	# path, tmp89
	movq	-8(%rbp), %rsi	# name, tmp90
	movq	-40(%rbp), %rax	# pfile, tmp91
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp91,
	call	append_include_chain	#
	.loc 1 195 0
	movq	-16(%rbp), %rax	# q, tmp92
	movzbl	(%rax), %eax	# *q_2, D.9101
	testb	%al, %al	# D.9101
	jne	.L7	#,
	.loc 1 196 0
	jmp	.L10	#
.L7:
	.loc 1 197 0
	movq	-16(%rbp), %rax	# q, tmp96
	addq	$1, %rax	#, tmp95
	movq	%rax, -24(%rbp)	# tmp95, p
	.loc 1 199 0
	jmp	.L9	#
.L10:
	.loc 1 200 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	path_include, .-path_include
	.section	.rodata
.LC0:
	.string	"."
	.align 8
.LC1:
	.string	"ignoring nonexistent directory \"%s\"\n"
.LC2:
	.string	"%s: Not a directory"
	.text
	.type	append_include_chain, @function
append_include_chain:
.LFB9:
	.loc 1 212 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$208, %rsp	#,
	movq	%rdi, -184(%rbp)	# pfile, pfile
	movq	%rsi, -192(%rbp)	# dir, dir
	movl	%edx, -196(%rbp)	# path, path
	movl	%ecx, -200(%rbp)	# cxx_aware, cxx_aware
	.loc 1 213 0
	movq	-184(%rbp), %rax	# pfile, tmp78
	movq	672(%rax), %rax	# pfile_3(D)->opts.pending, tmp79
	movq	%rax, -160(%rbp)	# tmp79, pend
	.loc 1 218 0
	movq	-192(%rbp), %rax	# dir, tmp80
	movzbl	(%rax), %eax	# *dir_5(D), D.9106
	testb	%al, %al	# D.9106
	jne	.L12	#,
	.loc 1 220 0
	movq	-192(%rbp), %rax	# dir, tmp81
	movq	%rax, %rdi	# tmp81,
	call	free	#
	.loc 1 221 0
	movl	$.LC0, %edi	#,
	call	xstrdup	#
	movq	%rax, -192(%rbp)	# tmp82, dir
.L12:
	.loc 1 223 0
	movq	-192(%rbp), %rax	# dir, tmp83
	movq	%rax, %rdi	# tmp83,
	call	_cpp_simplify_pathname	#
	.loc 1 225 0
	leaq	-144(%rbp), %rdx	#, tmp84
	movq	-192(%rbp), %rax	# dir, tmp85
	movq	%rdx, %rsi	# tmp84,
	movq	%rax, %rdi	# tmp85,
	call	stat	#
	testl	%eax, %eax	# D.9107
	je	.L13	#,
	.loc 1 228 0
	call	__errno_location	#
	movl	(%rax), %eax	# *_9, D.9107
	cmpl	$2, %eax	#, D.9107
	je	.L14	#,
	.loc 1 229 0
	movq	-192(%rbp), %rdx	# dir, tmp86
	movq	-184(%rbp), %rax	# pfile, tmp87
	movq	%rdx, %rsi	# tmp86,
	movq	%rax, %rdi	# tmp87,
	call	cpp_notice_from_errno	#
	jmp	.L15	#
.L14:
	.loc 1 230 0
	movq	-184(%rbp), %rax	# pfile, tmp88
	movzbl	740(%rax), %eax	# pfile_3(D)->opts.verbose, D.9109
	testb	%al, %al	# D.9109
	je	.L15	#,
	.loc 1 231 0
	movq	stderr(%rip), %rax	# stderr, stderr.6
	movq	-192(%rbp), %rdx	# dir, tmp89
	movl	$.LC1, %esi	#,
	movq	%rax, %rdi	# stderr.6,
	movl	$0, %eax	#,
	call	fprintf	#
.L15:
	.loc 1 232 0
	movq	-192(%rbp), %rax	# dir, tmp90
	movq	%rax, %rdi	# tmp90,
	call	free	#
	.loc 1 233 0
	jmp	.L11	#
.L13:
	.loc 1 236 0
	movl	-120(%rbp), %eax	# st.st_mode, D.9110
	andl	$61440, %eax	#, D.9110
	cmpl	$16384, %eax	#, D.9110
	je	.L17	#,
	.loc 1 238 0
	movq	-192(%rbp), %rdx	# dir, tmp91
	movq	-184(%rbp), %rax	# pfile, tmp92
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# tmp92,
	movl	$0, %eax	#,
	call	cpp_notice	#
	.loc 1 239 0
	movq	-192(%rbp), %rax	# dir, tmp93
	movq	%rax, %rdi	# tmp93,
	call	free	#
	.loc 1 240 0
	jmp	.L11	#
.L17:
	.loc 1 243 0
	movq	-192(%rbp), %rax	# dir, tmp94
	movq	%rax, %rdi	# tmp94,
	call	strlen	#
	movl	%eax, -164(%rbp)	# D.9111, len
	.loc 1 244 0
	movq	-184(%rbp), %rax	# pfile, tmp95
	movl	288(%rax), %eax	# pfile_3(D)->max_include_len, D.9110
	cmpl	-164(%rbp), %eax	# len, D.9110
	jae	.L18	#,
	.loc 1 245 0
	movq	-184(%rbp), %rax	# pfile, tmp96
	movl	-164(%rbp), %edx	# len, tmp97
	movl	%edx, 288(%rax)	# tmp97, pfile_3(D)->max_include_len
.L18:
	.loc 1 247 0
	movl	$56, %edi	#,
	call	xmalloc	#
	movq	%rax, -152(%rbp)	# tmp98, new
	.loc 1 248 0
	movq	-152(%rbp), %rax	# new, tmp99
	movq	-192(%rbp), %rdx	# dir, tmp100
	movq	%rdx, 8(%rax)	# tmp100, new_18->name
	.loc 1 249 0
	movq	-152(%rbp), %rax	# new, tmp101
	movl	-164(%rbp), %edx	# len, tmp102
	movl	%edx, 16(%rax)	# tmp102, new_18->len
	.loc 1 250 0
	movq	-136(%rbp), %rdx	# st.st_ino, D.9111
	movq	-152(%rbp), %rax	# new, tmp103
	movq	%rdx, 24(%rax)	# D.9111, new_18->ino
	.loc 1 251 0
	movq	-144(%rbp), %rdx	# st.st_dev, D.9111
	movq	-152(%rbp), %rax	# new, tmp104
	movq	%rdx, 32(%rax)	# D.9111, new_18->dev
	.loc 1 255 0
	cmpl	$1, -196(%rbp)	#, path
	je	.L19	#,
	.loc 1 255 0 is_stmt 0 discriminator 1
	cmpl	$2, -196(%rbp)	#, path
	jne	.L20	#,
.L19:
	.loc 1 259 0 is_stmt 1
	cmpl	$0, -200(%rbp)	#, cxx_aware
	je	.L21	#,
	.loc 1 259 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, iftmp.7
	jmp	.L22	#
.L21:
	.loc 1 259 0 discriminator 2
	movl	$2, %eax	#, iftmp.7
.L22:
	.loc 1 259 0 discriminator 3
	movq	-152(%rbp), %rdx	# new, tmp105
	movl	%eax, 40(%rdx)	# iftmp.7, new_18->sysp
	jmp	.L23	#
.L20:
	.loc 1 262 0 is_stmt 1
	movq	-152(%rbp), %rax	# new, tmp106
	movl	$0, 40(%rax)	#, new_18->sysp
.L23:
	.loc 1 263 0
	movq	-152(%rbp), %rax	# new, tmp107
	movq	$0, 48(%rax)	#, new_18->name_map
	.loc 1 264 0
	movq	-152(%rbp), %rax	# new, tmp108
	movq	$0, (%rax)	#, new_18->next
	.loc 1 266 0
	movl	-196(%rbp), %eax	# path, path
	cmpl	$1, %eax	#, path
	je	.L25	#,
	cmpl	$2, %eax	#, path
	je	.L26	#,
	testl	%eax, %eax	# path
	je	.L27	#,
	jmp	.L11	#
.L27:
	.loc 1 268 0
	movq	-160(%rbp), %rax	# pend, tmp110
	movq	32(%rax), %rax	# pend_4->brack_head, D.9112
	testq	%rax, %rax	# D.9112
	jne	.L28	#,
	.loc 1 268 0 is_stmt 0 discriminator 1
	movq	-160(%rbp), %rax	# pend, tmp111
	movq	-152(%rbp), %rdx	# new, tmp112
	movq	%rdx, 32(%rax)	# tmp112, pend_4->brack_head
	jmp	.L29	#
.L28:
	.loc 1 268 0 discriminator 2
	movq	-160(%rbp), %rax	# pend, tmp113
	movq	40(%rax), %rax	# pend_4->brack_tail, D.9112
	movq	-152(%rbp), %rdx	# new, tmp114
	movq	%rdx, (%rax)	# tmp114, _26->next
.L29:
	.loc 1 268 0 discriminator 1
	movq	-160(%rbp), %rax	# pend, tmp115
	movq	-152(%rbp), %rdx	# new, tmp116
	movq	%rdx, 40(%rax)	# tmp116, pend_4->brack_tail
	jmp	.L24	#
.L25:
	.loc 1 269 0 is_stmt 1
	movq	-160(%rbp), %rax	# pend, tmp117
	movq	48(%rax), %rax	# pend_4->systm_head, D.9112
	testq	%rax, %rax	# D.9112
	jne	.L30	#,
	.loc 1 269 0 is_stmt 0 discriminator 1
	movq	-160(%rbp), %rax	# pend, tmp118
	movq	-152(%rbp), %rdx	# new, tmp119
	movq	%rdx, 48(%rax)	# tmp119, pend_4->systm_head
	jmp	.L31	#
.L30:
	.loc 1 269 0 discriminator 2
	movq	-160(%rbp), %rax	# pend, tmp120
	movq	56(%rax), %rax	# pend_4->systm_tail, D.9112
	movq	-152(%rbp), %rdx	# new, tmp121
	movq	%rdx, (%rax)	# tmp121, _28->next
.L31:
	.loc 1 269 0 discriminator 1
	movq	-160(%rbp), %rax	# pend, tmp122
	movq	-152(%rbp), %rdx	# new, tmp123
	movq	%rdx, 56(%rax)	# tmp123, pend_4->systm_tail
	jmp	.L24	#
.L26:
	.loc 1 270 0 is_stmt 1
	movq	-160(%rbp), %rax	# pend, tmp124
	movq	64(%rax), %rax	# pend_4->after_head, D.9112
	testq	%rax, %rax	# D.9112
	jne	.L32	#,
	.loc 1 270 0 is_stmt 0 discriminator 1
	movq	-160(%rbp), %rax	# pend, tmp125
	movq	-152(%rbp), %rdx	# new, tmp126
	movq	%rdx, 64(%rax)	# tmp126, pend_4->after_head
	jmp	.L33	#
.L32:
	.loc 1 270 0 discriminator 2
	movq	-160(%rbp), %rax	# pend, tmp127
	movq	72(%rax), %rax	# pend_4->after_tail, D.9112
	movq	-152(%rbp), %rdx	# new, tmp128
	movq	%rdx, (%rax)	# tmp128, _30->next
.L33:
	.loc 1 270 0 discriminator 1
	movq	-160(%rbp), %rax	# pend, tmp129
	movq	-152(%rbp), %rdx	# new, tmp130
	movq	%rdx, 72(%rax)	# tmp130, pend_4->after_tail
	nop
.L24:
.L11:
	.loc 1 272 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	append_include_chain, .-append_include_chain
	.section	.rodata
	.align 8
.LC3:
	.string	"ignoring duplicate directory \"%s\"\n"
	.text
	.type	remove_dup_dir, @function
remove_dup_dir:
.LFB10:
	.loc 1 281 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# pfile, pfile
	movq	%rsi, -32(%rbp)	# prev, prev
	.loc 1 282 0
	movq	-32(%rbp), %rax	# prev, tmp66
	movq	(%rax), %rax	# prev_1(D)->next, tmp67
	movq	%rax, -8(%rbp)	# tmp67, cur
	.loc 1 284 0
	movq	-24(%rbp), %rax	# pfile, tmp68
	movzbl	740(%rax), %eax	# pfile_3(D)->opts.verbose, D.9116
	testb	%al, %al	# D.9116
	je	.L36	#,
	.loc 1 285 0
	movq	-8(%rbp), %rax	# cur, tmp69
	movq	8(%rax), %rdx	# cur_2->name, D.9117
	movq	stderr(%rip), %rax	# stderr, stderr.8
	movl	$.LC3, %esi	#,
	movq	%rax, %rdi	# stderr.8,
	movl	$0, %eax	#,
	call	fprintf	#
.L36:
	.loc 1 287 0
	movq	-8(%rbp), %rax	# cur, tmp70
	movq	(%rax), %rdx	# cur_2->next, D.9118
	movq	-32(%rbp), %rax	# prev, tmp71
	movq	%rdx, (%rax)	# D.9118, prev_1(D)->next
	.loc 1 288 0
	movq	-8(%rbp), %rax	# cur, tmp72
	movq	8(%rax), %rax	# cur_2->name, D.9117
	movq	%rax, %rdi	# D.9117,
	call	free	#
	.loc 1 289 0
	movq	-8(%rbp), %rax	# cur, tmp73
	movq	%rax, %rdi	# tmp73,
	call	free	#
	.loc 1 291 0
	movq	-32(%rbp), %rax	# prev, D.9118
	.loc 1 292 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	remove_dup_dir, .-remove_dup_dir
	.section	.rodata
	.align 8
.LC4:
	.string	"changing search order for system directory \"%s\""
	.align 8
.LC5:
	.string	"  as it is the same as non-system directory \"%s\""
	.align 8
.LC6:
	.string	"  as it has already been specified as a non-system directory"
	.text
	.type	remove_dup_dirs, @function
remove_dup_dirs:
.LFB11:
	.loc 1 302 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# pfile, pfile
	movq	%rsi, -48(%rbp)	# head, head
	.loc 1 303 0
	movq	$0, -24(%rbp)	#, prev
	.loc 1 305 0
	movq	-48(%rbp), %rax	# head, tmp72
	movq	%rax, -16(%rbp)	# tmp72, cur
	jmp	.L39	#
.L46:
	.loc 1 307 0
	movq	-48(%rbp), %rax	# head, tmp73
	movq	%rax, -8(%rbp)	# tmp73, other
	jmp	.L40	#
.L45:
	.loc 1 308 0
	movq	-16(%rbp), %rax	# cur, tmp74
	movq	24(%rax), %rdx	# cur_3->ino, D.9120
	movq	-8(%rbp), %rax	# other, tmp75
	movq	24(%rax), %rax	# other_4->ino, D.9120
	cmpq	%rax, %rdx	# D.9120, D.9120
	jne	.L41	#,
	.loc 1 308 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# cur, tmp76
	movq	32(%rax), %rdx	# cur_3->dev, D.9120
	movq	-8(%rbp), %rax	# other, tmp77
	movq	32(%rax), %rax	# other_4->dev, D.9120
	cmpq	%rax, %rdx	# D.9120, D.9120
	jne	.L41	#,
	.loc 1 310 0 is_stmt 1
	movq	-16(%rbp), %rax	# cur, tmp78
	movl	40(%rax), %eax	# cur_3->sysp, D.9121
	testl	%eax, %eax	# D.9121
	je	.L42	#,
	.loc 1 310 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# other, tmp79
	movl	40(%rax), %eax	# other_4->sysp, D.9121
	testl	%eax, %eax	# D.9121
	jne	.L42	#,
	.loc 1 312 0 is_stmt 1
	movq	-16(%rbp), %rax	# cur, tmp80
	movq	8(%rax), %rdx	# cur_3->name, D.9122
	movq	-40(%rbp), %rax	# pfile, tmp81
	movl	$.LC4, %esi	#,
	movq	%rax, %rdi	# tmp81,
	movl	$0, %eax	#,
	call	cpp_warning	#
	.loc 1 315 0
	movq	-8(%rbp), %rax	# other, tmp82
	movq	8(%rax), %rdx	# other_4->name, D.9122
	movq	-16(%rbp), %rax	# cur, tmp83
	movq	8(%rax), %rax	# cur_3->name, D.9122
	movq	%rdx, %rsi	# D.9122,
	movq	%rax, %rdi	# D.9122,
	call	strcmp	#
	testl	%eax, %eax	# D.9121
	je	.L43	#,
	.loc 1 316 0
	movq	-8(%rbp), %rax	# other, tmp84
	movq	8(%rax), %rdx	# other_4->name, D.9122
	movq	-40(%rbp), %rax	# pfile, tmp85
	movl	$.LC5, %esi	#,
	movq	%rax, %rdi	# tmp85,
	movl	$0, %eax	#,
	call	cpp_warning	#
	jmp	.L42	#
.L43:
	.loc 1 320 0
	movq	-40(%rbp), %rax	# pfile, tmp86
	movl	$.LC6, %esi	#,
	movq	%rax, %rdi	# tmp86,
	movl	$0, %eax	#,
	call	cpp_warning	#
.L42:
	.loc 1 323 0
	movq	-24(%rbp), %rdx	# prev, tmp87
	movq	-40(%rbp), %rax	# pfile, tmp88
	movq	%rdx, %rsi	# tmp87,
	movq	%rax, %rdi	# tmp88,
	call	remove_dup_dir	#
	movq	%rax, -16(%rbp)	# tmp89, cur
	.loc 1 324 0
	jmp	.L44	#
.L41:
	.loc 1 307 0
	movq	-8(%rbp), %rax	# other, tmp90
	movq	(%rax), %rax	# other_4->next, tmp91
	movq	%rax, -8(%rbp)	# tmp91, other
.L40:
	.loc 1 307 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# other, tmp92
	cmpq	-16(%rbp), %rax	# cur, tmp92
	jne	.L45	#,
.L44:
	.loc 1 326 0 is_stmt 1
	movq	-16(%rbp), %rax	# cur, tmp93
	movq	%rax, -24(%rbp)	# tmp93, prev
	.loc 1 305 0
	movq	-16(%rbp), %rax	# cur, tmp94
	movq	(%rax), %rax	# cur_2->next, tmp95
	movq	%rax, -16(%rbp)	# tmp95, cur
.L39:
	.loc 1 305 0 is_stmt 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, cur
	jne	.L46	#,
	.loc 1 329 0 is_stmt 1
	movq	-24(%rbp), %rax	# prev, D.9123
	.loc 1 330 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	remove_dup_dirs, .-remove_dup_dirs
	.type	merge_include_chains, @function
merge_include_chains:
.LFB12:
	.loc 1 340 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# pfile, pfile
	.loc 1 343 0
	movq	-56(%rbp), %rax	# pfile, tmp66
	movq	672(%rax), %rax	# pfile_6(D)->opts.pending, tmp67
	movq	%rax, -16(%rbp)	# tmp67, pend
	.loc 1 345 0
	movq	-16(%rbp), %rax	# pend, tmp68
	movq	16(%rax), %rax	# pend_7->quote_head, tmp69
	movq	%rax, -40(%rbp)	# tmp69, quote
	.loc 1 346 0
	movq	-16(%rbp), %rax	# pend, tmp70
	movq	32(%rax), %rax	# pend_7->brack_head, tmp71
	movq	%rax, -32(%rbp)	# tmp71, brack
	.loc 1 347 0
	movq	-16(%rbp), %rax	# pend, tmp72
	movq	48(%rax), %rax	# pend_7->systm_head, tmp73
	movq	%rax, -24(%rbp)	# tmp73, systm
	.loc 1 348 0
	movq	-16(%rbp), %rax	# pend, tmp74
	movq	24(%rax), %rax	# pend_7->quote_tail, tmp75
	movq	%rax, -8(%rbp)	# tmp75, qtail
	.loc 1 351 0
	cmpq	$0, -24(%rbp)	#, systm
	je	.L49	#,
	.loc 1 352 0
	movq	-16(%rbp), %rax	# pend, tmp76
	movq	56(%rax), %rax	# pend_7->systm_tail, D.9127
	movq	-16(%rbp), %rdx	# pend, tmp77
	movq	64(%rdx), %rdx	# pend_7->after_head, D.9127
	movq	%rdx, (%rax)	# D.9127, _12->next
	jmp	.L50	#
.L49:
	.loc 1 354 0
	movq	-16(%rbp), %rax	# pend, tmp78
	movq	64(%rax), %rax	# pend_7->after_head, tmp79
	movq	%rax, -24(%rbp)	# tmp79, systm
.L50:
	.loc 1 356 0
	cmpq	$0, -32(%rbp)	#, brack
	je	.L51	#,
	.loc 1 357 0
	movq	-16(%rbp), %rax	# pend, tmp80
	movq	40(%rax), %rax	# pend_7->brack_tail, D.9127
	movq	-24(%rbp), %rdx	# systm, tmp81
	movq	%rdx, (%rax)	# tmp81, _15->next
	jmp	.L52	#
.L51:
	.loc 1 359 0
	movq	-24(%rbp), %rax	# systm, tmp82
	movq	%rax, -32(%rbp)	# tmp82, brack
.L52:
	.loc 1 372 0
	movq	-32(%rbp), %rdx	# brack, tmp83
	movq	-56(%rbp), %rax	# pfile, tmp84
	movq	%rdx, %rsi	# tmp83,
	movq	%rax, %rdi	# tmp84,
	call	remove_dup_dirs	#
	.loc 1 373 0
	movq	-40(%rbp), %rdx	# quote, tmp85
	movq	-56(%rbp), %rax	# pfile, tmp86
	movq	%rdx, %rsi	# tmp85,
	movq	%rax, %rdi	# tmp86,
	call	remove_dup_dirs	#
	movq	%rax, -8(%rbp)	# tmp87, qtail
	.loc 1 375 0
	cmpq	$0, -40(%rbp)	#, quote
	je	.L53	#,
	.loc 1 377 0
	movq	-8(%rbp), %rax	# qtail, tmp88
	movq	-32(%rbp), %rdx	# brack, tmp89
	movq	%rdx, (%rax)	# tmp89, qtail_17->next
	.loc 1 380 0
	cmpq	$0, -32(%rbp)	#, brack
	je	.L55	#,
	.loc 1 380 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# qtail, tmp90
	movq	24(%rax), %rdx	# qtail_17->ino, D.9128
	movq	-32(%rbp), %rax	# brack, tmp91
	movq	24(%rax), %rax	# brack_2->ino, D.9128
	cmpq	%rax, %rdx	# D.9128, D.9128
	jne	.L55	#,
	.loc 1 381 0 is_stmt 1
	movq	-8(%rbp), %rax	# qtail, tmp92
	movq	32(%rax), %rdx	# qtail_17->dev, D.9128
	movq	-32(%rbp), %rax	# brack, tmp93
	movq	32(%rax), %rax	# brack_2->dev, D.9128
	cmpq	%rax, %rdx	# D.9128, D.9128
	jne	.L55	#,
	.loc 1 382 0
	movq	-8(%rbp), %rdx	# qtail, tmp94
	movq	-56(%rbp), %rax	# pfile, tmp95
	movq	%rdx, %rsi	# tmp94,
	movq	%rax, %rdi	# tmp95,
	call	remove_dup_dir	#
	movq	%rax, -32(%rbp)	# tmp96, brack
	jmp	.L55	#
.L53:
	.loc 1 385 0
	movq	-32(%rbp), %rax	# brack, tmp97
	movq	%rax, -40(%rbp)	# tmp97, quote
.L55:
	.loc 1 387 0
	movq	-56(%rbp), %rax	# pfile, tmp98
	movq	-40(%rbp), %rdx	# quote, tmp99
	movq	%rdx, 688(%rax)	# tmp99, pfile_6(D)->opts.quote_include
	.loc 1 388 0
	movq	-56(%rbp), %rax	# pfile, tmp100
	movq	-32(%rbp), %rdx	# brack, tmp101
	movq	%rdx, 696(%rax)	# tmp101, pfile_6(D)->opts.bracket_include
	.loc 1 389 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	merge_include_chains, .-merge_include_chains
	.section	.rodata
	.align 32
	.type	lang_defaults, @object
	.size	lang_defaults, 80
lang_defaults:
# c99:
	.byte	0
# objc:
	.byte	0
# cplusplus:
	.byte	0
# extended_numbers:
	.byte	1
# trigraphs:
	.byte	0
# dollars_in_ident:
	.byte	1
# cplusplus_comments:
	.byte	1
# digraphs:
	.byte	1
# c99:
	.byte	1
# objc:
	.byte	0
# cplusplus:
	.byte	0
# extended_numbers:
	.byte	1
# trigraphs:
	.byte	0
# dollars_in_ident:
	.byte	1
# cplusplus_comments:
	.byte	1
# digraphs:
	.byte	1
# c99:
	.byte	0
# objc:
	.byte	0
# cplusplus:
	.byte	0
# extended_numbers:
	.byte	0
# trigraphs:
	.byte	1
# dollars_in_ident:
	.byte	0
# cplusplus_comments:
	.byte	0
# digraphs:
	.byte	0
# c99:
	.byte	0
# objc:
	.byte	0
# cplusplus:
	.byte	0
# extended_numbers:
	.byte	0
# trigraphs:
	.byte	1
# dollars_in_ident:
	.byte	0
# cplusplus_comments:
	.byte	0
# digraphs:
	.byte	1
# c99:
	.byte	1
# objc:
	.byte	0
# cplusplus:
	.byte	0
# extended_numbers:
	.byte	1
# trigraphs:
	.byte	1
# dollars_in_ident:
	.byte	0
# cplusplus_comments:
	.byte	1
# digraphs:
	.byte	1
# c99:
	.byte	0
# objc:
	.byte	0
# cplusplus:
	.byte	1
# extended_numbers:
	.byte	1
# trigraphs:
	.byte	0
# dollars_in_ident:
	.byte	1
# cplusplus_comments:
	.byte	1
# digraphs:
	.byte	1
# c99:
	.byte	0
# objc:
	.byte	0
# cplusplus:
	.byte	1
# extended_numbers:
	.byte	1
# trigraphs:
	.byte	1
# dollars_in_ident:
	.byte	0
# cplusplus_comments:
	.byte	1
# digraphs:
	.byte	1
# c99:
	.byte	0
# objc:
	.byte	1
# cplusplus:
	.byte	0
# extended_numbers:
	.byte	1
# trigraphs:
	.byte	0
# dollars_in_ident:
	.byte	1
# cplusplus_comments:
	.byte	1
# digraphs:
	.byte	1
# c99:
	.byte	0
# objc:
	.byte	1
# cplusplus:
	.byte	1
# extended_numbers:
	.byte	1
# trigraphs:
	.byte	0
# dollars_in_ident:
	.byte	1
# cplusplus_comments:
	.byte	1
# digraphs:
	.byte	1
# c99:
	.byte	0
# objc:
	.byte	0
# cplusplus:
	.byte	0
# extended_numbers:
	.byte	1
# trigraphs:
	.byte	0
# dollars_in_ident:
	.byte	0
# cplusplus_comments:
	.byte	1
# digraphs:
	.byte	0
	.text
	.type	set_lang, @function
set_lang:
.LFB13:
	.loc 1 425 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# pfile, pfile
	movl	%esi, -28(%rbp)	# lang, lang
	.loc 1 426 0
	movl	-28(%rbp), %eax	# lang, lang.9
	cltq
	salq	$3, %rax	#, tmp77
	addq	$lang_defaults, %rax	#, tmp78
	movq	%rax, -8(%rbp)	# tmp78, l
	.loc 1 428 0
	movq	-24(%rbp), %rax	# pfile, tmp79
	movl	-28(%rbp), %edx	# lang, tmp80
	movl	%edx, 736(%rax)	# tmp80, pfile_4(D)->opts.lang
	.loc 1 430 0
	movq	-8(%rbp), %rax	# l, tmp81
	movzbl	(%rax), %eax	# l_3->c99, D.9129
	movl	%eax, %edx	# D.9129, D.9130
	movq	-24(%rbp), %rax	# pfile, tmp82
	movb	%dl, 769(%rax)	# D.9130, pfile_4(D)->opts.c99
	.loc 1 431 0
	movq	-8(%rbp), %rax	# l, tmp83
	movzbl	1(%rax), %eax	# l_3->objc, D.9129
	movl	%eax, %edx	# D.9129, D.9130
	movq	-24(%rbp), %rax	# pfile, tmp84
	movb	%dl, 744(%rax)	# D.9130, pfile_4(D)->opts.objc
	.loc 1 432 0
	movq	-8(%rbp), %rax	# l, tmp85
	movzbl	2(%rax), %eax	# l_3->cplusplus, D.9129
	movl	%eax, %edx	# D.9129, D.9130
	movq	-24(%rbp), %rax	# pfile, tmp86
	movb	%dl, 742(%rax)	# D.9130, pfile_4(D)->opts.cplusplus
	.loc 1 433 0
	movq	-8(%rbp), %rax	# l, tmp87
	movzbl	3(%rax), %eax	# l_3->extended_numbers, D.9129
	movl	%eax, %edx	# D.9129, D.9130
	movq	-24(%rbp), %rax	# pfile, tmp88
	movb	%dl, 748(%rax)	# D.9130, pfile_4(D)->opts.extended_numbers
	.loc 1 434 0
	movq	-8(%rbp), %rax	# l, tmp89
	movzbl	4(%rax), %eax	# l_3->trigraphs, D.9129
	movl	%eax, %edx	# D.9129, D.9130
	movq	-24(%rbp), %rax	# pfile, tmp90
	movb	%dl, 746(%rax)	# D.9130, pfile_4(D)->opts.trigraphs
	.loc 1 435 0
	movq	-8(%rbp), %rax	# l, tmp91
	movzbl	5(%rax), %eax	# l_3->dollars_in_ident, D.9129
	movl	%eax, %edx	# D.9129, D.9130
	movq	-24(%rbp), %rax	# pfile, tmp92
	movb	%dl, 767(%rax)	# D.9130, pfile_4(D)->opts.dollars_in_ident
	.loc 1 436 0
	movq	-8(%rbp), %rax	# l, tmp93
	movzbl	6(%rax), %eax	# l_3->cplusplus_comments, D.9129
	movl	%eax, %edx	# D.9129, D.9130
	movq	-24(%rbp), %rax	# pfile, tmp94
	movb	%dl, 743(%rax)	# D.9130, pfile_4(D)->opts.cplusplus_comments
	.loc 1 437 0
	movq	-8(%rbp), %rax	# l, tmp95
	movzbl	7(%rax), %eax	# l_3->digraphs, D.9129
	movl	%eax, %edx	# D.9129, D.9130
	movq	-24(%rbp), %rax	# pfile, tmp96
	movb	%dl, 747(%rax)	# D.9130, pfile_4(D)->opts.digraphs
	.loc 1 438 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	set_lang, .-set_lang
	.type	init_library, @function
init_library:
.LFB14:
	.loc 1 457 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 460 0
	movl	initialized.7822(%rip), %eax	# initialized, initialized.10
	testl	%eax, %eax	# initialized.10
	jne	.L57	#,
	.loc 1 462 0
	movl	$1, initialized.7822(%rip)	#, initialized
.L57:
	.loc 1 476 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	init_library, .-init_library
	.globl	cpp_create_reader
	.type	cpp_create_reader, @function
cpp_create_reader:
.LFB15:
	.loc 1 482 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# lang, lang
	.loc 1 486 0
	call	init_library	#
	.loc 1 488 0
	movl	$832, %esi	#,
	movl	$1, %edi	#,
	call	xcalloc	#
	movq	%rax, -8(%rbp)	# tmp75, pfile
	.loc 1 490 0
	movl	-20(%rbp), %edx	# lang, tmp76
	movq	-8(%rbp), %rax	# pfile, tmp77
	movl	%edx, %esi	# tmp76,
	movq	%rax, %rdi	# tmp77,
	call	set_lang	#
	.loc 1 491 0
	movq	-8(%rbp), %rax	# pfile, tmp78
	movb	$1, 760(%rax)	#, pfile_1->opts.warn_import
	.loc 1 492 0
	movq	-8(%rbp), %rax	# pfile, tmp79
	movb	$1, 745(%rax)	#, pfile_1->opts.discard_comments
	.loc 1 493 0
	movq	-8(%rbp), %rax	# pfile, tmp80
	movb	$1, 776(%rax)	#, pfile_1->opts.show_column
	.loc 1 494 0
	movq	-8(%rbp), %rax	# pfile, tmp81
	movl	$8, 664(%rax)	#, pfile_1->opts.tabstop
	.loc 1 495 0
	movq	-8(%rbp), %rax	# pfile, tmp82
	movb	$1, 777(%rax)	#, pfile_1->opts.operator_names
	.loc 1 497 0
	movq	-8(%rbp), %rax	# pfile, tmp83
	movb	$1, 741(%rax)	#, pfile_1->opts.signed_char
	.loc 1 503 0
	movl	$112, %esi	#,
	movl	$1, %edi	#,
	call	xcalloc	#
	movq	%rax, %rdx	# tmp84, D.9131
	.loc 1 502 0
	movq	-8(%rbp), %rax	# pfile, tmp85
	movq	%rdx, 672(%rax)	# D.9131, pfile_1->opts.pending
	.loc 1 507 0
	call	deps_init	#
	movq	-8(%rbp), %rdx	# pfile, tmp86
	movq	%rax, 392(%rdx)	# D.9132, pfile_1->deps
	.loc 1 511 0
	movq	-8(%rbp), %rax	# pfile, tmp87
	addq	$24, %rax	#, D.9133
	movq	%rax, %rdi	# D.9133,
	call	init_line_maps	#
	.loc 1 512 0
	movq	-8(%rbp), %rax	# pfile, tmp88
	movl	$1, 64(%rax)	#, pfile_1->line
	.loc 1 515 0
	movq	-8(%rbp), %rax	# pfile, tmp89
	movzbl	745(%rax), %eax	# pfile_1->opts.discard_comments, D.9134
	testb	%al, %al	# D.9134
	sete	%al	#, D.9135
	movl	%eax, %edx	# D.9135, D.9134
	movq	-8(%rbp), %rax	# pfile, tmp90
	movb	%dl, 11(%rax)	# D.9134, pfile_1->state.save_comments
	.loc 1 518 0
	movq	-8(%rbp), %rax	# pfile, tmp91
	movb	$67, 302(%rax)	#, pfile_1->date.type
	.loc 1 519 0
	movq	-8(%rbp), %rax	# pfile, tmp92
	movb	$66, 350(%rax)	#, pfile_1->avoid_paste.type
	.loc 1 520 0
	movq	-8(%rbp), %rax	# pfile, tmp93
	movq	$0, 352(%rax)	#, pfile_1->avoid_paste.val.source
	.loc 1 521 0
	movq	-8(%rbp), %rax	# pfile, tmp94
	movb	$67, 374(%rax)	#, pfile_1->eof.type
	.loc 1 522 0
	movq	-8(%rbp), %rax	# pfile, tmp95
	movb	$0, 375(%rax)	#, pfile_1->eof.flags
	.loc 1 525 0
	movq	-8(%rbp), %rax	# pfile, tmp96
	addq	$200, %rax	#, D.9136
	movl	$250, %esi	#,
	movq	%rax, %rdi	# D.9136,
	call	_cpp_init_tokenrun	#
	.loc 1 526 0
	movq	-8(%rbp), %rax	# pfile, tmp97
	leaq	200(%rax), %rdx	#, D.9136
	movq	-8(%rbp), %rax	# pfile, tmp98
	movq	%rdx, 232(%rax)	# D.9136, pfile_1->cur_run
	.loc 1 527 0
	movq	-8(%rbp), %rax	# pfile, tmp99
	movq	216(%rax), %rdx	# pfile_1->base_run.base, D.9137
	movq	-8(%rbp), %rax	# pfile, tmp100
	movq	%rdx, 192(%rax)	# D.9137, pfile_1->cur_token
	.loc 1 530 0
	movq	-8(%rbp), %rax	# pfile, tmp101
	leaq	96(%rax), %rdx	#, D.9138
	movq	-8(%rbp), %rax	# pfile, tmp102
	movq	%rdx, 152(%rax)	# D.9138, pfile_1->context
	.loc 1 531 0
	movq	-8(%rbp), %rax	# pfile, tmp103
	movq	$0, 136(%rax)	#, pfile_1->base_context.macro
	.loc 1 532 0
	movq	-8(%rbp), %rax	# pfile, tmp104
	movq	$0, 96(%rax)	#, pfile_1->base_context.next
	movq	-8(%rbp), %rax	# pfile, tmp105
	movq	96(%rax), %rdx	# pfile_1->base_context.next, D.9139
	movq	-8(%rbp), %rax	# pfile, tmp106
	movq	%rdx, 104(%rax)	# D.9139, pfile_1->base_context.prev
	.loc 1 535 0
	movq	-8(%rbp), %rax	# pfile, tmp107
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp107,
	call	_cpp_get_buff	#
	movq	-8(%rbp), %rdx	# pfile, tmp108
	movq	%rax, 72(%rdx)	# D.9140, pfile_1->a_buff
	.loc 1 536 0
	movq	-8(%rbp), %rax	# pfile, tmp109
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp109,
	call	_cpp_get_buff	#
	movq	-8(%rbp), %rdx	# pfile, tmp110
	movq	%rax, 80(%rdx)	# D.9140, pfile_1->u_buff
	.loc 1 539 0
	movq	-8(%rbp), %rax	# pfile, tmp111
	addq	$488, %rax	#, D.9141
	movq	%rax, %rdi	# D.9141,
	call	gcc_obstack_init	#
	.loc 1 541 0
	movq	-8(%rbp), %rax	# pfile, tmp112
	movq	%rax, %rdi	# tmp112,
	call	_cpp_init_includes	#
	.loc 1 543 0
	movq	-8(%rbp), %rax	# pfile, D.9142
	.loc 1 544 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	cpp_create_reader, .-cpp_create_reader
	.globl	cpp_destroy
	.type	cpp_destroy, @function
cpp_destroy:
.LFB16:
	.loc 1 551 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -88(%rbp)	# pfile, pfile
	.loc 1 557 0
	jmp	.L62	#
.L63:
	.loc 1 558 0
	movq	-88(%rbp), %rax	# pfile, tmp76
	movq	%rax, %rdi	# tmp76,
	call	_cpp_pop_buffer	#
.L62:
	.loc 1 557 0 discriminator 1
	movq	-88(%rbp), %rax	# pfile, tmp77
	movq	(%rax), %rax	# pfile_4(D)->buffer, D.9143
	testq	%rax, %rax	# D.9143
	jne	.L63	#,
	.loc 1 560 0
	movq	-88(%rbp), %rax	# pfile, tmp78
	movq	264(%rax), %rax	# pfile_4(D)->macro_buffer, D.9144
	testq	%rax, %rax	# D.9144
	je	.L64	#,
	.loc 1 562 0
	movq	-88(%rbp), %rax	# pfile, tmp79
	movq	264(%rax), %rax	# pfile_4(D)->macro_buffer, D.9144
	movq	%rax, %rdi	# D.9144,
	call	free	#
	.loc 1 563 0
	movq	-88(%rbp), %rax	# pfile, tmp80
	movq	$0, 264(%rax)	#, pfile_4(D)->macro_buffer
	.loc 1 564 0
	movq	-88(%rbp), %rax	# pfile, tmp81
	movl	$0, 272(%rax)	#, pfile_4(D)->macro_buffer_len
.L64:
	.loc 1 567 0
	movq	-88(%rbp), %rax	# pfile, tmp82
	movq	392(%rax), %rax	# pfile_4(D)->deps, D.9145
	movq	%rax, %rdi	# D.9145,
	call	deps_free	#
.LBB2:
	.loc 1 568 0
	movq	-88(%rbp), %rax	# pfile, tmp86
	addq	$488, %rax	#, tmp85
	movq	%rax, -40(%rbp)	# tmp85, __o
	movq	$0, -32(%rbp)	#, __obj
	movq	-40(%rbp), %rax	# __o, tmp87
	movq	8(%rax), %rax	# __o_9->chunk, D.9146
	cmpq	-32(%rbp), %rax	# __obj, D.9146
	jae	.L65	#,
	.loc 1 568 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# __o, tmp88
	movq	32(%rax), %rax	# __o_9->chunk_limit, D.9147
	cmpq	-32(%rbp), %rax	# __obj, D.9147
	jbe	.L65	#,
	movq	-40(%rbp), %rax	# __o, tmp89
	movq	-32(%rbp), %rdx	# __obj, tmp90
	movq	%rdx, 16(%rax)	# tmp90, __o_9->object_base
	movq	-40(%rbp), %rax	# __o, tmp91
	movq	16(%rax), %rdx	# __o_9->object_base, D.9147
	movq	-40(%rbp), %rax	# __o, tmp92
	movq	%rdx, 24(%rax)	# D.9147, __o_9->next_free
	jmp	.L66	#
.L65:
	.loc 1 568 0 discriminator 2
	movq	-32(%rbp), %rdx	# __obj, tmp93
	movq	-40(%rbp), %rax	# __o, tmp94
	movq	%rdx, %rsi	# tmp93,
	movq	%rax, %rdi	# tmp94,
	call	obstack_free	#
.L66:
.LBE2:
	.loc 1 570 0 is_stmt 1
	movq	-88(%rbp), %rax	# pfile, tmp95
	movq	%rax, %rdi	# tmp95,
	call	_cpp_destroy_hashtable	#
	.loc 1 571 0
	movq	-88(%rbp), %rax	# pfile, tmp96
	movq	%rax, %rdi	# tmp96,
	call	_cpp_cleanup_includes	#
	.loc 1 573 0
	movq	-88(%rbp), %rax	# pfile, tmp97
	movq	72(%rax), %rax	# pfile_4(D)->a_buff, D.9148
	movq	%rax, %rdi	# D.9148,
	call	_cpp_free_buff	#
	.loc 1 574 0
	movq	-88(%rbp), %rax	# pfile, tmp98
	movq	80(%rax), %rax	# pfile_4(D)->u_buff, D.9148
	movq	%rax, %rdi	# D.9148,
	call	_cpp_free_buff	#
	.loc 1 575 0
	movq	-88(%rbp), %rax	# pfile, tmp99
	movq	88(%rax), %rax	# pfile_4(D)->free_buffs, D.9148
	movq	%rax, %rdi	# D.9148,
	call	_cpp_free_buff	#
	.loc 1 577 0
	movq	-88(%rbp), %rax	# pfile, tmp103
	addq	$200, %rax	#, tmp102
	movq	%rax, -48(%rbp)	# tmp102, run
	jmp	.L67	#
.L69:
	.loc 1 579 0
	movq	-48(%rbp), %rax	# run, tmp104
	movq	(%rax), %rax	# run_3->next, tmp105
	movq	%rax, -24(%rbp)	# tmp105, runn
	.loc 1 580 0
	movq	-48(%rbp), %rax	# run, tmp106
	movq	16(%rax), %rax	# run_3->base, D.9149
	movq	%rax, %rdi	# D.9149,
	call	free	#
	.loc 1 581 0
	movq	-88(%rbp), %rax	# pfile, tmp107
	addq	$200, %rax	#, D.9150
	cmpq	-48(%rbp), %rax	# run, D.9150
	je	.L68	#,
	.loc 1 582 0
	movq	-48(%rbp), %rax	# run, tmp108
	movq	%rax, %rdi	# tmp108,
	call	free	#
.L68:
	.loc 1 577 0
	movq	-24(%rbp), %rax	# runn, tmp109
	movq	%rax, -48(%rbp)	# tmp109, run
.L67:
	.loc 1 577 0 is_stmt 0 discriminator 1
	cmpq	$0, -48(%rbp)	#, run
	jne	.L69	#,
	.loc 1 585 0 is_stmt 1
	movq	-88(%rbp), %rax	# pfile, tmp110
	movq	688(%rax), %rax	# pfile_4(D)->opts.quote_include, tmp111
	movq	%rax, -64(%rbp)	# tmp111, dir
	jmp	.L70	#
.L71:
	.loc 1 587 0 discriminator 2
	movq	-64(%rbp), %rax	# dir, tmp112
	movq	(%rax), %rax	# dir_1->next, tmp113
	movq	%rax, -16(%rbp)	# tmp113, dirn
	.loc 1 588 0 discriminator 2
	movq	-64(%rbp), %rax	# dir, tmp114
	movq	8(%rax), %rax	# dir_1->name, D.9151
	movq	%rax, %rdi	# D.9151,
	call	free	#
	.loc 1 589 0 discriminator 2
	movq	-64(%rbp), %rax	# dir, tmp115
	movq	%rax, %rdi	# tmp115,
	call	free	#
	.loc 1 585 0 discriminator 2
	movq	-16(%rbp), %rax	# dirn, tmp116
	movq	%rax, -64(%rbp)	# tmp116, dir
.L70:
	.loc 1 585 0 is_stmt 0 discriminator 1
	cmpq	$0, -64(%rbp)	#, dir
	jne	.L71	#,
	.loc 1 592 0 is_stmt 1
	movq	-88(%rbp), %rax	# pfile, tmp117
	movq	96(%rax), %rax	# pfile_4(D)->base_context.next, tmp118
	movq	%rax, -56(%rbp)	# tmp118, context
	jmp	.L72	#
.L73:
	.loc 1 594 0 discriminator 2
	movq	-56(%rbp), %rax	# context, tmp119
	movq	(%rax), %rax	# context_2->next, tmp120
	movq	%rax, -8(%rbp)	# tmp120, contextn
	.loc 1 595 0 discriminator 2
	movq	-56(%rbp), %rax	# context, tmp121
	movq	%rax, %rdi	# tmp121,
	call	free	#
	.loc 1 592 0 discriminator 2
	movq	-8(%rbp), %rax	# contextn, tmp122
	movq	%rax, -56(%rbp)	# tmp122, context
.L72:
	.loc 1 592 0 is_stmt 0 discriminator 1
	cmpq	$0, -56(%rbp)	#, context
	jne	.L73	#,
	.loc 1 598 0 is_stmt 1
	movq	-88(%rbp), %rax	# pfile, tmp123
	addq	$24, %rax	#, D.9152
	movq	%rax, %rdi	# D.9152,
	call	free_line_maps	#
	.loc 1 600 0
	movq	-88(%rbp), %rax	# pfile, tmp124
	movl	248(%rax), %eax	# pfile_4(D)->errors, D.9153
	movl	%eax, -68(%rbp)	# D.9153, result
	.loc 1 601 0
	movq	-88(%rbp), %rax	# pfile, tmp125
	movq	%rax, %rdi	# tmp125,
	call	free	#
	.loc 1 603 0
	movl	-68(%rbp), %eax	# result, D.9154
	.loc 1 604 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	cpp_destroy, .-cpp_destroy
	.section	.rodata
.LC7:
	.string	"__TIME__"
.LC8:
	.string	"__DATE__"
.LC9:
	.string	"__FILE__"
.LC10:
	.string	"__BASE_FILE__"
.LC11:
	.string	"__LINE__"
.LC12:
	.string	"__INCLUDE_LEVEL__"
.LC13:
	.string	"_Pragma"
.LC14:
	.string	"__VERSION__"
.LC15:
	.string	"__USER_LABEL_PREFIX__"
.LC16:
	.string	"__REGISTER_PREFIX__"
.LC17:
	.string	""
.LC18:
	.string	"__HAVE_BUILTIN_SETJMP__"
.LC19:
	.string	"1"
.LC20:
	.string	"__WCHAR_TYPE__"
.LC21:
	.string	"int"
.LC22:
	.string	"__WINT_TYPE__"
.LC23:
	.string	"unsigned int"
.LC24:
	.string	"__STDC__"
	.align 32
	.type	builtin_array, @object
	.size	builtin_array, 336
builtin_array:
# name:
	.quad	.LC7
# value:
	.quad	0
# builtin:
	.byte	5
# flags:
	.zero	1
	.value	8
# len:
	.value	8
	.zero	2
# name:
	.quad	.LC8
# value:
	.quad	0
# builtin:
	.byte	1
# flags:
	.zero	1
	.value	8
# len:
	.value	8
	.zero	2
# name:
	.quad	.LC9
# value:
	.quad	0
# builtin:
	.byte	2
# flags:
	.zero	1
	.value	8
# len:
	.value	8
	.zero	2
# name:
	.quad	.LC10
# value:
	.quad	0
# builtin:
	.byte	3
# flags:
	.zero	1
	.value	8
# len:
	.value	13
	.zero	2
# name:
	.quad	.LC11
# value:
	.quad	0
# builtin:
	.byte	0
# flags:
	.zero	1
	.value	8
# len:
	.value	8
	.zero	2
# name:
	.quad	.LC12
# value:
	.quad	0
# builtin:
	.byte	4
# flags:
	.zero	1
	.value	8
# len:
	.value	17
	.zero	2
# name:
	.quad	.LC13
# value:
	.quad	0
# builtin:
	.byte	7
# flags:
	.zero	1
	.value	8
# len:
	.value	7
	.zero	2
# name:
	.quad	.LC14
# value:
	.quad	0
# builtin:
	.byte	0
# flags:
	.zero	1
	.value	1
# len:
	.value	11
	.zero	2
# name:
	.quad	.LC15
# value:
	.quad	0
# builtin:
	.byte	0
# flags:
	.zero	1
	.value	2
# len:
	.value	21
	.zero	2
# name:
	.quad	.LC16
# value:
	.quad	.LC17
# builtin:
	.byte	0
# flags:
	.zero	1
	.value	0
# len:
	.value	19
	.zero	2
# name:
	.quad	.LC18
# value:
	.quad	.LC19
# builtin:
	.byte	0
# flags:
	.zero	1
	.value	0
# len:
	.value	23
	.zero	2
# name:
	.quad	.LC20
# value:
	.quad	.LC21
# builtin:
	.byte	0
# flags:
	.zero	1
	.value	0
# len:
	.value	14
	.zero	2
# name:
	.quad	.LC22
# value:
	.quad	.LC23
# builtin:
	.byte	0
# flags:
	.zero	1
	.value	0
# len:
	.value	13
	.zero	2
# name:
	.quad	.LC24
# value:
	.quad	.LC19
# builtin:
	.byte	0
# flags:
	.zero	1
	.value	0
# len:
	.value	8
	.zero	2
.LC25:
	.string	"and"
.LC26:
	.string	"and_eq"
.LC27:
	.string	"bitand"
.LC28:
	.string	"bitor"
.LC29:
	.string	"compl"
.LC30:
	.string	"not"
.LC31:
	.string	"not_eq"
.LC32:
	.string	"or"
.LC33:
	.string	"or_eq"
.LC34:
	.string	"xor"
.LC35:
	.string	"xor_eq"
	.align 32
	.type	operator_array, @object
	.size	operator_array, 176
operator_array:
# name:
	.quad	.LC25
# len:
	.long	3
# value:
	.long	17
# name:
	.quad	.LC26
# len:
	.long	6
# value:
	.long	33
# name:
	.quad	.LC27
# len:
	.long	6
# value:
	.long	9
# name:
	.quad	.LC28
# len:
	.long	5
# value:
	.long	10
# name:
	.quad	.LC29
# len:
	.long	5
# value:
	.long	16
# name:
	.quad	.LC30
# len:
	.long	3
# value:
	.long	1
# name:
	.quad	.LC31
# len:
	.long	6
# value:
	.long	25
# name:
	.quad	.LC32
# len:
	.long	2
# value:
	.long	18
# name:
	.quad	.LC33
# len:
	.long	5
# value:
	.long	34
# name:
	.quad	.LC34
# len:
	.long	3
# value:
	.long	11
# name:
	.quad	.LC35
# len:
	.long	6
# value:
	.long	35
	.text
	.type	mark_named_operators, @function
mark_named_operators:
.LFB17:
	.loc 1 704 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# pfile, pfile
	.loc 1 707 0
	movq	$operator_array, -16(%rbp)	#, b
	jmp	.L76	#
.L77:
.LBB3:
	.loc 1 711 0
	movq	-16(%rbp), %rax	# b, tmp64
	movl	8(%rax), %edx	# b_1->len, D.9184
	movq	-16(%rbp), %rax	# b, tmp65
	movq	(%rax), %rcx	# b_1->name, D.9185
	movq	-24(%rbp), %rax	# pfile, tmp66
	movq	%rcx, %rsi	# D.9185,
	movq	%rax, %rdi	# tmp66,
	call	cpp_lookup	#
	movq	%rax, -8(%rbp)	# tmp67, hp
	.loc 1 712 0
	movq	-8(%rbp), %rax	# hp, tmp68
	movzbl	21(%rax), %eax	# hp_6->flags, D.9186
	orl	$1, %eax	#, D.9186
	movl	%eax, %edx	# D.9186, D.9186
	movq	-8(%rbp), %rax	# hp, tmp69
	movb	%dl, 21(%rax)	# D.9186, hp_6->flags
	.loc 1 713 0
	movq	-16(%rbp), %rax	# b, tmp70
	movl	12(%rax), %edx	# b_1->value, D.9187
	movq	-8(%rbp), %rax	# hp, tmp71
	movl	%edx, 24(%rax)	# D.9187, hp_6->value.operator
.LBE3:
	.loc 1 709 0
	addq	$16, -16(%rbp)	#, b
.L76:
	.loc 1 707 0 discriminator 1
	cmpq	$operator_array+176, -16(%rbp)	#, b
	jb	.L77	#,
	.loc 1 715 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	mark_named_operators, .-mark_named_operators
	.section	.rodata
.LC36:
	.string	"%s \"%s\"\n"
.LC37:
	.string	"%s %s\n"
.LC38:
	.string	"__cplusplus 1"
.LC39:
	.string	"__GXX_WEAK__ 1"
.LC40:
	.string	"__OBJC__ 1"
.LC41:
	.string	"__STDC_VERSION__ 199409L"
.LC42:
	.string	"__STDC_VERSION__ 199901L"
.LC43:
	.string	"__CHAR_UNSIGNED__ 1"
.LC44:
	.string	"__STRICT_ANSI__ 1"
.LC45:
	.string	"__ASSEMBLER__ 1"
	.text
	.type	init_builtins, @function
init_builtins:
.LFB18:
	.loc 1 722 0
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
	.loc 1 725 0
	movq	$builtin_array, -48(%rbp)	#, b
	jmp	.L79	#
.L86:
	.loc 1 727 0
	movq	-48(%rbp), %rax	# b, tmp98
	movzwl	18(%rax), %eax	# b_1->flags, D.9188
	movzwl	%ax, %eax	# D.9188, D.9189
	andl	$8, %eax	#, D.9189
	testl	%eax, %eax	# D.9189
	je	.L80	#,
.LBB4:
	.loc 1 729 0
	movq	-48(%rbp), %rax	# b, tmp99
	movzwl	20(%rax), %eax	# b_1->len, D.9188
	movzwl	%ax, %edx	# D.9188, D.9190
	movq	-48(%rbp), %rax	# b, tmp100
	movq	(%rax), %rcx	# b_1->name, D.9191
	movq	-56(%rbp), %rax	# pfile, tmp101
	movq	%rcx, %rsi	# D.9191,
	movq	%rax, %rdi	# tmp101,
	call	cpp_lookup	#
	movq	%rax, -24(%rbp)	# tmp102, hp
	.loc 1 730 0
	movq	-24(%rbp), %rax	# hp, tmp103
	movb	$1, 20(%rax)	#, hp_12->type
	.loc 1 731 0
	movq	-24(%rbp), %rax	# hp, tmp104
	movzbl	21(%rax), %eax	# hp_12->flags, D.9192
	orl	$20, %eax	#, D.9192
	movl	%eax, %edx	# D.9192, D.9192
	movq	-24(%rbp), %rax	# hp, tmp105
	movb	%dl, 21(%rax)	# D.9192, hp_12->flags
	.loc 1 732 0
	movq	-48(%rbp), %rax	# b, tmp106
	movzbl	16(%rax), %eax	# b_1->builtin, D.9192
	movzbl	%al, %edx	# D.9192, D.9193
	movq	-24(%rbp), %rax	# hp, tmp107
	movl	%edx, 24(%rax)	# D.9193, hp_12->value.builtin
.LBE4:
	jmp	.L81	#
.L80:
.LBB5:
	.loc 1 739 0
	movq	-48(%rbp), %rax	# b, tmp108
	movzwl	18(%rax), %eax	# b_1->flags, D.9188
	movzwl	%ax, %eax	# D.9188, D.9189
	andl	$1, %eax	#, D.9189
	testl	%eax, %eax	# D.9189
	je	.L82	#,
	.loc 1 742 0
	movq	-48(%rbp), %rax	# b, tmp109
	movzwl	20(%rax), %eax	# b_1->len, D.9188
	movzwl	%ax, %ebx	# D.9188, D.9194
	movq	version_string(%rip), %rax	# version_string, version_string.11
	movq	%rax, %rdi	# version_string.11,
	call	strlen	#
	addq	%rbx, %rax	# D.9194, D.9194
	addq	$5, %rax	#, D.9194
	leaq	15(%rax), %rdx	#, tmp110
	movl	$16, %eax	#, tmp163
	subq	$1, %rax	#, tmp111
	addq	%rdx, %rax	# tmp110, tmp112
	movl	$16, %ebx	#, tmp164
	movl	$0, %edx	#, tmp115
	divq	%rbx	# tmp164
	imulq	$16, %rax, %rax	#, tmp114, tmp116
	subq	%rax, %rsp	# tmp116,
	movq	%rsp, %rax	#, tmp117
	addq	$15, %rax	#, tmp118
	shrq	$4, %rax	#, tmp119
	salq	$4, %rax	#, tmp120
	movq	%rax, -32(%rbp)	# tmp120, str
	.loc 1 743 0
	movq	version_string(%rip), %rcx	# version_string, version_string.12
	movq	-48(%rbp), %rax	# b, tmp121
	movq	(%rax), %rdx	# b_1->name, D.9191
	movq	-32(%rbp), %rax	# str, tmp122
	movl	$.LC36, %esi	#,
	movq	%rax, %rdi	# tmp122,
	movl	$0, %eax	#,
	call	sprintf	#
	jmp	.L83	#
.L82:
	.loc 1 747 0
	movq	-48(%rbp), %rax	# b, tmp123
	movzwl	18(%rax), %eax	# b_1->flags, D.9188
	movzwl	%ax, %eax	# D.9188, D.9189
	andl	$2, %eax	#, D.9189
	testl	%eax, %eax	# D.9189
	je	.L84	#,
	.loc 1 748 0
	movq	-56(%rbp), %rax	# pfile, tmp124
	movq	728(%rax), %rax	# pfile_11(D)->opts.user_label_prefix, tmp125
	movq	%rax, -40(%rbp)	# tmp125, val
	jmp	.L85	#
.L84:
	.loc 1 750 0
	movq	-48(%rbp), %rax	# b, tmp126
	movq	8(%rax), %rax	# b_1->value, tmp127
	movq	%rax, -40(%rbp)	# tmp127, val
.L85:
	.loc 1 753 0
	movq	-48(%rbp), %rax	# b, tmp128
	movzwl	20(%rax), %eax	# b_1->len, D.9188
	movzwl	%ax, %ebx	# D.9188, D.9194
	movq	-40(%rbp), %rax	# val, tmp129
	movq	%rax, %rdi	# tmp129,
	call	strlen	#
	addq	%rbx, %rax	# D.9194, D.9194
	addq	$3, %rax	#, D.9194
	leaq	15(%rax), %rdx	#, tmp130
	movl	$16, %eax	#, tmp165
	subq	$1, %rax	#, tmp131
	addq	%rdx, %rax	# tmp130, tmp132
	movl	$16, %ebx	#, tmp166
	movl	$0, %edx	#, tmp135
	divq	%rbx	# tmp166
	imulq	$16, %rax, %rax	#, tmp134, tmp136
	subq	%rax, %rsp	# tmp136,
	movq	%rsp, %rax	#, tmp137
	addq	$15, %rax	#, tmp138
	shrq	$4, %rax	#, tmp139
	salq	$4, %rax	#, tmp140
	movq	%rax, -32(%rbp)	# tmp140, str
	.loc 1 754 0
	movq	-48(%rbp), %rax	# b, tmp141
	movq	(%rax), %rdx	# b_1->name, D.9191
	movq	-40(%rbp), %rcx	# val, tmp142
	movq	-32(%rbp), %rax	# str, tmp143
	movl	$.LC37, %esi	#,
	movq	%rax, %rdi	# tmp143,
	movl	$0, %eax	#,
	call	sprintf	#
.L83:
	.loc 1 757 0
	movq	-32(%rbp), %rdx	# str, tmp144
	movq	-56(%rbp), %rax	# pfile, tmp145
	movq	%rdx, %rsi	# tmp144,
	movq	%rax, %rdi	# tmp145,
	call	_cpp_define_builtin	#
.L81:
.LBE5:
	.loc 1 725 0
	addq	$24, -48(%rbp)	#, b
.L79:
	.loc 1 725 0 is_stmt 0 discriminator 1
	cmpq	$builtin_array+336, -48(%rbp)	#, b
	jb	.L86	#,
	.loc 1 761 0 is_stmt 1
	movq	-56(%rbp), %rax	# pfile, tmp146
	movzbl	742(%rax), %eax	# pfile_11(D)->opts.cplusplus, D.9192
	testb	%al, %al	# D.9192
	je	.L87	#,
	.loc 1 763 0
	movq	-56(%rbp), %rax	# pfile, tmp147
	movl	$.LC38, %esi	#,
	movq	%rax, %rdi	# tmp147,
	call	_cpp_define_builtin	#
	.loc 1 765 0
	movq	-56(%rbp), %rax	# pfile, tmp148
	movl	$.LC39, %esi	#,
	movq	%rax, %rdi	# tmp148,
	call	_cpp_define_builtin	#
.L87:
	.loc 1 769 0
	movq	-56(%rbp), %rax	# pfile, tmp149
	movzbl	744(%rax), %eax	# pfile_11(D)->opts.objc, D.9192
	testb	%al, %al	# D.9192
	je	.L88	#,
	.loc 1 770 0
	movq	-56(%rbp), %rax	# pfile, tmp150
	movl	$.LC40, %esi	#,
	movq	%rax, %rdi	# tmp150,
	call	_cpp_define_builtin	#
.L88:
	.loc 1 772 0
	movq	-56(%rbp), %rax	# pfile, tmp151
	movl	736(%rax), %eax	# pfile_11(D)->opts.lang, D.9195
	cmpl	$3, %eax	#, D.9195
	jne	.L89	#,
	.loc 1 773 0
	movq	-56(%rbp), %rax	# pfile, tmp152
	movl	$.LC41, %esi	#,
	movq	%rax, %rdi	# tmp152,
	call	_cpp_define_builtin	#
	jmp	.L90	#
.L89:
	.loc 1 774 0
	movq	-56(%rbp), %rax	# pfile, tmp153
	movzbl	769(%rax), %eax	# pfile_11(D)->opts.c99, D.9192
	testb	%al, %al	# D.9192
	je	.L90	#,
	.loc 1 775 0
	movq	-56(%rbp), %rax	# pfile, tmp154
	movl	$.LC42, %esi	#,
	movq	%rax, %rdi	# tmp154,
	call	_cpp_define_builtin	#
.L90:
	.loc 1 777 0
	movq	-56(%rbp), %rax	# pfile, tmp155
	movzbl	741(%rax), %eax	# pfile_11(D)->opts.signed_char, D.9192
	testb	%al, %al	# D.9192
	jne	.L91	#,
	.loc 1 778 0
	movq	-56(%rbp), %rax	# pfile, tmp156
	movl	$.LC43, %esi	#,
	movq	%rax, %rdi	# tmp156,
	call	_cpp_define_builtin	#
.L91:
	.loc 1 780 0
	movq	-56(%rbp), %rax	# pfile, tmp157
	movl	736(%rax), %eax	# pfile_11(D)->opts.lang, D.9195
	cmpl	$2, %eax	#, D.9195
	je	.L92	#,
	.loc 1 781 0
	movq	-56(%rbp), %rax	# pfile, tmp158
	movl	736(%rax), %eax	# pfile_11(D)->opts.lang, D.9195
	cmpl	$3, %eax	#, D.9195
	je	.L92	#,
	.loc 1 782 0
	movq	-56(%rbp), %rax	# pfile, tmp159
	movl	736(%rax), %eax	# pfile_11(D)->opts.lang, D.9195
	cmpl	$4, %eax	#, D.9195
	jne	.L93	#,
.L92:
	.loc 1 783 0
	movq	-56(%rbp), %rax	# pfile, tmp160
	movl	$.LC44, %esi	#,
	movq	%rax, %rdi	# tmp160,
	call	_cpp_define_builtin	#
	jmp	.L78	#
.L93:
	.loc 1 784 0
	movq	-56(%rbp), %rax	# pfile, tmp161
	movl	736(%rax), %eax	# pfile_11(D)->opts.lang, D.9195
	cmpl	$9, %eax	#, D.9195
	jne	.L78	#,
	.loc 1 785 0
	movq	-56(%rbp), %rax	# pfile, tmp162
	movl	$.LC45, %esi	#,
	movq	%rax, %rdi	# tmp162,
	call	_cpp_define_builtin	#
.L78:
	.loc 1 786 0
	movq	-8(%rbp), %rbx	#,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	init_builtins, .-init_builtins
	.section	.rodata
.LC46:
	.string	"CPATH"
.LC47:
	.string	"C_INCLUDE_PATH"
.LC48:
	.string	"CPLUS_INCLUDE_PATH"
.LC49:
	.string	"OBJC_INCLUDE_PATH"
.LC50:
	.string	"OBJCPLUS_INCLUDE_PATH"
	.text
	.type	init_standard_includes, @function
init_standard_includes:
.LFB19:
	.loc 1 797 0
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
	.loc 1 800 0
	movq	-88(%rbp), %rax	# pfile, tmp104
	movq	712(%rax), %rax	# pfile_4(D)->opts.include_prefix, tmp105
	movq	%rax, -48(%rbp)	# tmp105, specd_prefix
	.loc 1 808 0
	movl	$.LC46, %edi	#,
	call	getenv	#
	movq	%rax, -64(%rbp)	# tmp106, path
	.loc 1 809 0
	cmpq	$0, -64(%rbp)	#, path
	je	.L96	#,
	.loc 1 809 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# path, tmp107
	movzbl	(%rax), %eax	# *path_6, D.9207
	testb	%al, %al	# D.9207
	je	.L96	#,
	.loc 1 810 0 is_stmt 1
	movq	-64(%rbp), %rcx	# path, tmp108
	movq	-88(%rbp), %rax	# pfile, tmp109
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp108,
	movq	%rax, %rdi	# tmp109,
	call	path_include	#
.L96:
	.loc 1 812 0
	movq	-88(%rbp), %rax	# pfile, tmp110
	movzbl	744(%rax), %eax	# pfile_4(D)->opts.objc, D.9208
	movzbl	%al, %eax	# D.9208, D.9209
	leal	(%rax,%rax), %edx	#, D.9209
	movq	-88(%rbp), %rax	# pfile, tmp111
	movzbl	742(%rax), %eax	# pfile_4(D)->opts.cplusplus, D.9208
	movzbl	%al, %eax	# D.9208, D.9209
	addl	%edx, %eax	# D.9209, D.9209
	cmpl	$1, %eax	#, D.9209
	je	.L98	#,
	cmpl	$1, %eax	#, D.9209
	jg	.L99	#,
	testl	%eax, %eax	# D.9209
	je	.L100	#,
	jmp	.L97	#
.L99:
	cmpl	$2, %eax	#, D.9209
	je	.L101	#,
	cmpl	$3, %eax	#, D.9209
	je	.L102	#,
	jmp	.L97	#
.L100:
	.loc 1 815 0
	movl	$.LC47, %edi	#,
	call	getenv	#
	movq	%rax, -64(%rbp)	# tmp112, path
	.loc 1 816 0
	jmp	.L97	#
.L98:
	.loc 1 818 0
	movl	$.LC48, %edi	#,
	call	getenv	#
	movq	%rax, -64(%rbp)	# tmp113, path
	.loc 1 819 0
	jmp	.L97	#
.L101:
	.loc 1 821 0
	movl	$.LC49, %edi	#,
	call	getenv	#
	movq	%rax, -64(%rbp)	# tmp114, path
	.loc 1 822 0
	jmp	.L97	#
.L102:
	.loc 1 824 0
	movl	$.LC50, %edi	#,
	call	getenv	#
	movq	%rax, -64(%rbp)	# tmp115, path
	.loc 1 825 0
	nop
.L97:
	.loc 1 827 0
	cmpq	$0, -64(%rbp)	#, path
	je	.L103	#,
	.loc 1 827 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# path, tmp116
	movzbl	(%rax), %eax	# *path_1, D.9207
	testb	%al, %al	# D.9207
	je	.L103	#,
	.loc 1 828 0 is_stmt 1
	movq	-64(%rbp), %rcx	# path, tmp117
	movq	-88(%rbp), %rax	# pfile, tmp118
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp117,
	movq	%rax, %rdi	# tmp118,
	call	path_include	#
.L103:
	.loc 1 832 0
	cmpq	$0, -48(%rbp)	#, specd_prefix
	je	.L104	#,
	.loc 1 832 0 is_stmt 0 discriminator 1
	movq	cpp_GCC_INCLUDE_DIR_len(%rip), %rax	# cpp_GCC_INCLUDE_DIR_len, cpp_GCC_INCLUDE_DIR_len.13
	testq	%rax, %rax	# cpp_GCC_INCLUDE_DIR_len.13
	je	.L104	#,
.LBB6:
	.loc 1 836 0 is_stmt 1
	movq	cpp_GCC_INCLUDE_DIR_len(%rip), %rax	# cpp_GCC_INCLUDE_DIR_len, cpp_GCC_INCLUDE_DIR_len.14
	movl	%eax, -80(%rbp)	# cpp_GCC_INCLUDE_DIR_len.14, default_len
	.loc 1 837 0
	movl	-80(%rbp), %eax	# default_len, tmp119
	addl	$1, %eax	#, D.9209
	cltq
	leaq	15(%rax), %rdx	#, tmp120
	movl	$16, %eax	#, tmp172
	subq	$1, %rax	#, tmp121
	addq	%rdx, %rax	# tmp120, tmp122
	movl	$16, %ebx	#, tmp173
	movl	$0, %edx	#, tmp125
	divq	%rbx	# tmp173
	imulq	$16, %rax, %rax	#, tmp124, tmp126
	subq	%rax, %rsp	# tmp126,
	movq	%rsp, %rax	#, tmp127
	addq	$15, %rax	#, tmp128
	shrq	$4, %rax	#, tmp129
	salq	$4, %rax	#, tmp130
	movq	%rax, -40(%rbp)	# tmp130, default_prefix
	.loc 1 838 0
	movq	-48(%rbp), %rax	# specd_prefix, tmp131
	movq	%rax, %rdi	# tmp131,
	call	strlen	#
	movl	%eax, -76(%rbp)	# D.9210, specd_len
	.loc 1 840 0
	movl	-80(%rbp), %eax	# default_len, tmp132
	movslq	%eax, %rdx	# tmp132, D.9210
	movq	-40(%rbp), %rax	# default_prefix, tmp133
	movl	$cpp_GCC_INCLUDE_DIR, %esi	#,
	movq	%rax, %rdi	# tmp133,
	call	memcpy	#
	.loc 1 841 0
	movl	-80(%rbp), %eax	# default_len, tmp134
	movslq	%eax, %rdx	# tmp134, D.9211
	movq	-40(%rbp), %rax	# default_prefix, tmp135
	addq	%rdx, %rax	# D.9211, D.9212
	movb	$0, (%rax)	#, *_29
	.loc 1 843 0
	movq	$cpp_include_defaults, -56(%rbp)	#, p
	jmp	.L105	#
.L108:
	.loc 1 846 0
	movq	-56(%rbp), %rax	# p, tmp136
	movl	16(%rax), %eax	# p_2->cplusplus, D.9209
	testl	%eax, %eax	# D.9209
	je	.L106	#,
	.loc 1 847 0
	movq	-88(%rbp), %rax	# pfile, tmp137
	movzbl	742(%rax), %eax	# pfile_4(D)->opts.cplusplus, D.9208
	testb	%al, %al	# D.9208
	je	.L107	#,
	.loc 1 848 0
	movq	-88(%rbp), %rax	# pfile, tmp138
	movzbl	773(%rax), %eax	# pfile_4(D)->opts.no_standard_cplusplus_includes, D.9208
	testb	%al, %al	# D.9208
	jne	.L107	#,
.L106:
	.loc 1 851 0
	movl	-80(%rbp), %eax	# default_len, tmp139
	movslq	%eax, %rdx	# tmp139, D.9210
	movq	-56(%rbp), %rax	# p, tmp140
	movq	(%rax), %rax	# p_2->fname, D.9213
	movq	-40(%rbp), %rcx	# default_prefix, tmp141
	movq	%rcx, %rsi	# tmp141,
	movq	%rax, %rdi	# D.9213,
	call	memcmp	#
	testl	%eax, %eax	# D.9209
	jne	.L107	#,
.LBB7:
	.loc 1 854 0
	movq	-56(%rbp), %rax	# p, tmp142
	movq	(%rax), %rax	# p_2->fname, D.9213
	movq	%rax, %rdi	# D.9213,
	call	strlen	#
	movl	%eax, -72(%rbp)	# D.9210, flen
	.loc 1 855 0
	movl	-72(%rbp), %eax	# flen, tmp143
	movl	-76(%rbp), %edx	# specd_len, tmp144
	addl	%edx, %eax	# tmp144, D.9209
	subl	-80(%rbp), %eax	# default_len, tmp146
	movl	%eax, -68(%rbp)	# tmp146, this_len
	.loc 1 856 0
	movl	-68(%rbp), %eax	# this_len, tmp147
	addl	$1, %eax	#, D.9209
	cltq
	movq	%rax, %rdi	# D.9210,
	call	xmalloc	#
	movq	%rax, -32(%rbp)	# tmp148, str
	.loc 1 857 0
	movl	-76(%rbp), %eax	# specd_len, tmp149
	movslq	%eax, %rdx	# tmp149, D.9210
	movq	-48(%rbp), %rcx	# specd_prefix, tmp150
	movq	-32(%rbp), %rax	# str, tmp151
	movq	%rcx, %rsi	# tmp150,
	movq	%rax, %rdi	# tmp151,
	call	memcpy	#
	.loc 1 860 0
	movl	-80(%rbp), %eax	# default_len, tmp152
	movl	-72(%rbp), %edx	# flen, tmp153
	subl	%eax, %edx	# tmp152, D.9209
	movl	%edx, %eax	# D.9209, D.9209
	addl	$1, %eax	#, D.9209
	.loc 1 858 0
	cltq
	.loc 1 859 0
	movq	-56(%rbp), %rdx	# p, tmp154
	movq	(%rdx), %rcx	# p_2->fname, D.9213
	.loc 1 858 0
	movl	-80(%rbp), %edx	# default_len, tmp155
	movslq	%edx, %rdx	# tmp155, D.9211
	.loc 1 859 0
	leaq	(%rcx,%rdx), %rsi	#, D.9213
	.loc 1 858 0
	movl	-76(%rbp), %edx	# specd_len, tmp156
	movslq	%edx, %rcx	# tmp156, D.9211
	movq	-32(%rbp), %rdx	# str, tmp157
	addq	%rdx, %rcx	# tmp157, D.9212
	movq	%rax, %rdx	# D.9210,
	movq	%rcx, %rdi	# D.9212,
	call	memcpy	#
	.loc 1 862 0
	movq	-56(%rbp), %rax	# p, tmp158
	movl	20(%rax), %edx	# p_2->cxx_aware, D.9209
	movq	-32(%rbp), %rsi	# str, tmp159
	movq	-88(%rbp), %rax	# pfile, tmp160
	movl	%edx, %ecx	# D.9209,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# tmp160,
	call	append_include_chain	#
.L107:
.LBE7:
	.loc 1 843 0
	addq	$24, -56(%rbp)	#, p
.L105:
	.loc 1 843 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# p, tmp161
	movq	(%rax), %rax	# p_2->fname, D.9213
	testq	%rax, %rax	# D.9213
	jne	.L108	#,
.L104:
.LBE6:
	.loc 1 869 0 is_stmt 1
	movq	$cpp_include_defaults, -56(%rbp)	#, p
	jmp	.L109	#
.L112:
	.loc 1 872 0
	movq	-56(%rbp), %rax	# p, tmp162
	movl	16(%rax), %eax	# p_3->cplusplus, D.9209
	testl	%eax, %eax	# D.9209
	je	.L110	#,
	.loc 1 873 0
	movq	-88(%rbp), %rax	# pfile, tmp163
	movzbl	742(%rax), %eax	# pfile_4(D)->opts.cplusplus, D.9208
	testb	%al, %al	# D.9208
	je	.L111	#,
	.loc 1 874 0
	movq	-88(%rbp), %rax	# pfile, tmp164
	movzbl	773(%rax), %eax	# pfile_4(D)->opts.no_standard_cplusplus_includes, D.9208
	testb	%al, %al	# D.9208
	jne	.L111	#,
.L110:
.LBB8:
	.loc 1 876 0
	movq	-56(%rbp), %rax	# p, tmp165
	movq	8(%rax), %rdx	# p_3->component, D.9213
	movq	-56(%rbp), %rax	# p, tmp166
	movq	(%rax), %rax	# p_3->fname, D.9213
	movq	%rdx, %rsi	# D.9213,
	movq	%rax, %rdi	# D.9213,
	call	update_path	#
	movq	%rax, -24(%rbp)	# tmp167, str
	.loc 1 877 0
	movq	-56(%rbp), %rax	# p, tmp168
	movl	20(%rax), %edx	# p_3->cxx_aware, D.9209
	movq	-24(%rbp), %rsi	# str, tmp169
	movq	-88(%rbp), %rax	# pfile, tmp170
	movl	%edx, %ecx	# D.9209,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# tmp170,
	call	append_include_chain	#
.L111:
.LBE8:
	.loc 1 869 0
	addq	$24, -56(%rbp)	#, p
.L109:
	.loc 1 869 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# p, tmp171
	movq	(%rax), %rax	# p_3->fname, D.9213
	testq	%rax, %rax	# D.9213
	jne	.L112	#,
	.loc 1 880 0 is_stmt 1
	movq	-8(%rbp), %rbx	#,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	init_standard_includes, .-init_standard_includes
	.type	push_include, @function
push_include:
.LFB20:
	.loc 1 888 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# pfile, pfile
	movq	%rsi, -48(%rbp)	# p, p
	.loc 1 893 0
	movb	$61, -26(%rbp)	#, header.type
	.loc 1 894 0
	movq	-48(%rbp), %rax	# p, tmp67
	movq	8(%rax), %rax	# p_1(D)->arg, D.9220
	movq	%rax, -16(%rbp)	# D.9220, header.val.str.text
	.loc 1 895 0
	movq	-48(%rbp), %rax	# p, tmp68
	movq	8(%rax), %rax	# p_1(D)->arg, D.9220
	movq	%rax, %rdi	# D.9220,
	call	strlen	#
	movl	%eax, -24(%rbp)	# D.9222, header.val.str.len
	.loc 1 897 0
	movq	-40(%rbp), %rax	# pfile, tmp69
	movl	64(%rax), %eax	# pfile_6(D)->line, D.9222
	leal	1(%rax), %edx	#, D.9222
	movq	-40(%rbp), %rax	# pfile, tmp70
	movl	%edx, 64(%rax)	# D.9222, pfile_6(D)->line
	.loc 1 899 0
	leaq	-32(%rbp), %rcx	#, tmp71
	movq	-40(%rbp), %rax	# pfile, tmp72
	movl	$3, %edx	#,
	movq	%rcx, %rsi	# tmp71,
	movq	%rax, %rdi	# tmp72,
	call	_cpp_execute_include	#
	.loc 1 900 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	push_include, .-push_include
	.type	free_chain, @function
free_chain:
.LFB21:
	.loc 1 906 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# head, head
	.loc 1 909 0
	jmp	.L116	#
.L117:
	.loc 1 911 0
	movq	-24(%rbp), %rax	# head, tmp59
	movq	(%rax), %rax	# head_1->next, tmp60
	movq	%rax, -8(%rbp)	# tmp60, next
	.loc 1 912 0
	movq	-24(%rbp), %rax	# head, tmp61
	movq	%rax, %rdi	# tmp61,
	call	free	#
	.loc 1 913 0
	movq	-8(%rbp), %rax	# next, tmp62
	movq	%rax, -24(%rbp)	# tmp62, head
.L116:
	.loc 1 909 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, head
	jne	.L117	#,
	.loc 1 915 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	free_chain, .-free_chain
	.section	.rodata
	.align 8
.LC51:
	.string	"#include \"...\" search starts here:\n"
	.align 8
.LC52:
	.string	"#include <...> search starts here:\n"
.LC53:
	.string	" %s\n"
.LC54:
	.string	"End of search list.\n"
	.text
	.globl	cpp_read_main_file
	.type	cpp_read_main_file, @function
cpp_read_main_file:
.LFB22:
	.loc 1 926 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# pfile, pfile
	movq	%rsi, -32(%rbp)	# fname, fname
	movq	%rdx, -40(%rbp)	# table, table
	.loc 1 930 0
	movq	-40(%rbp), %rdx	# table, tmp77
	movq	-24(%rbp), %rax	# pfile, tmp78
	movq	%rdx, %rsi	# tmp77,
	movq	%rax, %rdi	# tmp78,
	call	_cpp_init_hashtable	#
	.loc 1 933 0
	movq	-24(%rbp), %rax	# pfile, tmp79
	movzbl	772(%rax), %eax	# pfile_3(D)->opts.no_standard_includes, D.9225
	testb	%al, %al	# D.9225
	jne	.L119	#,
	.loc 1 934 0
	movq	-24(%rbp), %rax	# pfile, tmp80
	movq	%rax, %rdi	# tmp80,
	call	init_standard_includes	#
.L119:
	.loc 1 936 0
	movq	-24(%rbp), %rax	# pfile, tmp81
	movq	%rax, %rdi	# tmp81,
	call	merge_include_chains	#
	.loc 1 939 0
	movq	-24(%rbp), %rax	# pfile, tmp82
	movzbl	740(%rax), %eax	# pfile_3(D)->opts.verbose, D.9225
	testb	%al, %al	# D.9225
	je	.L120	#,
.LBB9:
	.loc 1 942 0
	movq	stderr(%rip), %rax	# stderr, stderr.15
	movq	%rax, %rcx	# stderr.15,
	movl	$35, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC51, %edi	#,
	call	fwrite	#
	.loc 1 943 0
	movq	-24(%rbp), %rax	# pfile, tmp83
	movq	688(%rax), %rax	# pfile_3(D)->opts.quote_include, tmp84
	movq	%rax, -8(%rbp)	# tmp84, l
	jmp	.L121	#
.L123:
	.loc 1 945 0
	movq	-24(%rbp), %rax	# pfile, tmp85
	movq	696(%rax), %rax	# pfile_3(D)->opts.bracket_include, D.9226
	cmpq	-8(%rbp), %rax	# l, D.9226
	jne	.L122	#,
	.loc 1 946 0
	movq	stderr(%rip), %rax	# stderr, stderr.16
	movq	%rax, %rcx	# stderr.16,
	movl	$35, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC52, %edi	#,
	call	fwrite	#
.L122:
	.loc 1 947 0
	movq	-8(%rbp), %rax	# l, tmp86
	movq	8(%rax), %rdx	# l_1->name, D.9224
	movq	stderr(%rip), %rax	# stderr, stderr.17
	movl	$.LC53, %esi	#,
	movq	%rax, %rdi	# stderr.17,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 943 0
	movq	-8(%rbp), %rax	# l, tmp87
	movq	(%rax), %rax	# l_1->next, tmp88
	movq	%rax, -8(%rbp)	# tmp88, l
.L121:
	.loc 1 943 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, l
	jne	.L123	#,
	.loc 1 949 0 is_stmt 1
	movq	stderr(%rip), %rax	# stderr, stderr.18
	movq	%rax, %rcx	# stderr.18,
	movl	$20, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC54, %edi	#,
	call	fwrite	#
.L120:
.LBE9:
	.loc 1 952 0
	movq	-24(%rbp), %rax	# pfile, tmp89
	movzbl	749(%rax), %eax	# pfile_3(D)->opts.print_deps, D.9225
	testb	%al, %al	# D.9225
	je	.L124	#,
	.loc 1 954 0
	movq	-24(%rbp), %rax	# pfile, tmp90
	movq	392(%rax), %rax	# pfile_3(D)->deps, D.9227
	movq	-32(%rbp), %rdx	# fname, tmp91
	movq	%rdx, %rsi	# tmp91,
	movq	%rax, %rdi	# D.9227,
	call	deps_add_default_target	#
.L124:
	.loc 1 957 0
	movq	-32(%rbp), %rdx	# fname, tmp92
	movq	-24(%rbp), %rax	# pfile, tmp93
	movq	%rdx, %rsi	# tmp92,
	movq	%rax, %rdi	# tmp93,
	call	_cpp_read_file	#
	xorl	$1, %eax	#, D.9228
	testb	%al, %al	# D.9228
	je	.L125	#,
	.loc 1 958 0
	movl	$0, %eax	#, D.9224
	jmp	.L126	#
.L125:
	.loc 1 963 0
	movq	-24(%rbp), %rax	# pfile, tmp94
	movzbl	753(%rax), %eax	# pfile_3(D)->opts.print_include_names, D.9225
	testb	%al, %al	# D.9225
	setne	%dl	#, D.9228
	movq	-24(%rbp), %rax	# pfile, tmp95
	movb	%dl, 48(%rax)	# D.9228, pfile_3(D)->line_maps.trace_includes
	.loc 1 967 0
	movq	-24(%rbp), %rax	# pfile, tmp96
	movzbl	771(%rax), %eax	# pfile_3(D)->opts.preprocessed, D.9225
	testb	%al, %al	# D.9225
	je	.L127	#,
	.loc 1 968 0
	movq	-24(%rbp), %rax	# pfile, tmp97
	movq	%rax, %rdi	# tmp97,
	call	read_original_filename	#
.L127:
	.loc 1 970 0
	movq	-24(%rbp), %rax	# pfile, tmp98
	movq	56(%rax), %rax	# pfile_3(D)->map, D.9229
	movq	(%rax), %rax	# _24->to_file, D.9224
.L126:
	.loc 1 971 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	cpp_read_main_file, .-cpp_read_main_file
	.type	read_original_filename, @function
read_original_filename:
.LFB23:
	.loc 1 980 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# pfile, pfile
	.loc 1 985 0
	movq	-24(%rbp), %rax	# pfile, tmp64
	movq	%rax, %rdi	# tmp64,
	call	_cpp_lex_direct	#
	movq	%rax, -16(%rbp)	# tmp65, token
	.loc 1 986 0
	movq	-16(%rbp), %rax	# token, tmp66
	movzbl	6(%rax), %eax	# token_2->type, D.9234
	cmpb	$40, %al	#, D.9234
	jne	.L129	#,
	.loc 1 988 0
	movq	-24(%rbp), %rax	# pfile, tmp67
	movq	%rax, %rdi	# tmp67,
	call	_cpp_lex_direct	#
	movq	%rax, -8(%rbp)	# tmp68, token1
	.loc 1 989 0
	movq	-24(%rbp), %rax	# pfile, tmp69
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp69,
	call	_cpp_backup_tokens	#
	.loc 1 992 0
	movq	-8(%rbp), %rax	# token1, tmp70
	movzbl	6(%rax), %eax	# token1_4->type, D.9234
	cmpb	$57, %al	#, D.9234
	jne	.L129	#,
	.loc 1 994 0
	movq	-16(%rbp), %rax	# token, tmp71
	movzbl	7(%rax), %eax	# token_2->flags, D.9234
	movzbl	%al, %eax	# D.9234, D.9235
	andl	$1, %eax	#, D.9235
	movl	%eax, %edx	# D.9235, D.9235
	movq	-24(%rbp), %rax	# pfile, tmp72
	movl	%edx, %esi	# D.9235,
	movq	%rax, %rdi	# tmp72,
	call	_cpp_handle_directive	#
	.loc 1 995 0
	jmp	.L128	#
.L129:
	.loc 1 1000 0
	movq	-24(%rbp), %rax	# pfile, tmp73
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp73,
	call	_cpp_backup_tokens	#
.L128:
	.loc 1 1001 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	read_original_filename, .-read_original_filename
	.section	.rodata
.LC55:
	.string	"<built-in>"
.LC56:
	.string	"<command line>"
	.text
	.globl	cpp_finish_options
	.type	cpp_finish_options, @function
cpp_finish_options:
.LFB24:
	.loc 1 1009 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# pfile, pfile
	.loc 1 1011 0
	movq	-24(%rbp), %rax	# pfile, tmp72
	movzbl	742(%rax), %eax	# pfile_2(D)->opts.cplusplus, D.9236
	testb	%al, %al	# D.9236
	je	.L132	#,
	.loc 1 1011 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# pfile, tmp73
	movzbl	777(%rax), %eax	# pfile_2(D)->opts.operator_names, D.9236
	testb	%al, %al	# D.9236
	je	.L132	#,
	.loc 1 1012 0 is_stmt 1
	movq	-24(%rbp), %rax	# pfile, tmp74
	movq	%rax, %rdi	# tmp74,
	call	mark_named_operators	#
.L132:
	.loc 1 1016 0
	movq	-24(%rbp), %rax	# pfile, tmp75
	movzbl	771(%rax), %eax	# pfile_2(D)->opts.preprocessed, D.9236
	testb	%al, %al	# D.9236
	jne	.L133	#,
.LBB10:
	.loc 1 1020 0
	movq	-24(%rbp), %rax	# pfile, tmp76
	movl	$0, %r8d	#,
	movl	$1, %ecx	#,
	movl	$.LC55, %edx	#,
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp76,
	call	_cpp_do_file_change	#
	.loc 1 1021 0
	movq	-24(%rbp), %rax	# pfile, tmp77
	movq	%rax, %rdi	# tmp77,
	call	init_builtins	#
	.loc 1 1022 0
	movq	-24(%rbp), %rax	# pfile, tmp78
	movl	$0, %r8d	#,
	movl	$1, %ecx	#,
	movl	$.LC56, %edx	#,
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp78,
	call	_cpp_do_file_change	#
	.loc 1 1023 0
	movq	-24(%rbp), %rax	# pfile, tmp79
	movq	672(%rax), %rax	# pfile_2(D)->opts.pending, D.9237
	movq	(%rax), %rax	# _6->directive_head, tmp80
	movq	%rax, -8(%rbp)	# tmp80, p
	jmp	.L134	#
.L135:
	.loc 1 1024 0 discriminator 2
	movq	-8(%rbp), %rax	# p, tmp81
	movq	16(%rax), %rax	# p_1->handler, D.9238
	movq	-8(%rbp), %rdx	# p, tmp82
	movq	8(%rdx), %rcx	# p_1->arg, D.9239
	movq	-24(%rbp), %rdx	# pfile, tmp83
	movq	%rcx, %rsi	# D.9239,
	movq	%rdx, %rdi	# tmp83,
	call	*%rax	# D.9238
	.loc 1 1023 0 discriminator 2
	movq	-8(%rbp), %rax	# p, tmp84
	movq	(%rax), %rax	# p_1->next, tmp85
	movq	%rax, -8(%rbp)	# tmp85, p
.L134:
	.loc 1 1023 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, p
	jne	.L135	#,
	.loc 1 1028 0 is_stmt 1
	jmp	.L136	#
.L138:
	.loc 1 1030 0
	movq	-8(%rbp), %rdx	# p, tmp86
	movq	-24(%rbp), %rax	# pfile, tmp87
	movq	%rdx, %rsi	# tmp86,
	movq	%rax, %rdi	# tmp87,
	call	push_include	#
	testb	%al, %al	# D.9240
	je	.L137	#,
	.loc 1 1032 0
	movq	-24(%rbp), %rax	# pfile, tmp88
	movq	(%rax), %rax	# pfile_2(D)->buffer, D.9241
	movb	$1, 83(%rax)	#, _14->return_at_eof
	.loc 1 1033 0
	movq	-24(%rbp), %rax	# pfile, tmp89
	movq	%rax, %rdi	# tmp89,
	call	cpp_scan_nooutput	#
.L137:
	.loc 1 1035 0
	movq	-24(%rbp), %rax	# pfile, tmp90
	movq	672(%rax), %rax	# pfile_2(D)->opts.pending, D.9237
	movq	-8(%rbp), %rdx	# p, tmp91
	movq	(%rdx), %rdx	# p_12->next, D.9242
	movq	%rdx, 80(%rax)	# D.9242, _15->imacros_head
	.loc 1 1036 0
	movq	-8(%rbp), %rax	# p, tmp92
	movq	%rax, %rdi	# tmp92,
	call	free	#
.L136:
	.loc 1 1028 0 discriminator 1
	movq	-24(%rbp), %rax	# pfile, tmp93
	movq	672(%rax), %rax	# pfile_2(D)->opts.pending, D.9237
	movq	80(%rax), %rax	# _11->imacros_head, tmp94
	movq	%rax, -8(%rbp)	# tmp94, p
	cmpq	$0, -8(%rbp)	#, p
	jne	.L138	#,
.L133:
.LBE10:
	.loc 1 1040 0
	movq	-24(%rbp), %rax	# pfile, tmp95
	movq	672(%rax), %rax	# pfile_2(D)->opts.pending, D.9237
	movq	(%rax), %rax	# _17->directive_head, D.9242
	movq	%rax, %rdi	# D.9242,
	call	free_chain	#
	.loc 1 1041 0
	movq	-24(%rbp), %rax	# pfile, tmp96
	movq	%rax, %rdi	# tmp96,
	call	_cpp_push_next_buffer	#
	.loc 1 1042 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	cpp_finish_options, .-cpp_finish_options
	.globl	_cpp_push_next_buffer
	.type	_cpp_push_next_buffer, @function
_cpp_push_next_buffer:
.LFB25:
	.loc 1 1050 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# pfile, pfile
	.loc 1 1051 0
	movb	$0, -9(%rbp)	#, pushed
	.loc 1 1057 0
	movq	-24(%rbp), %rax	# pfile, tmp74
	movq	672(%rax), %rax	# pfile_5(D)->opts.pending, D.9245
	testq	%rax, %rax	# D.9245
	je	.L140	#,
	.loc 1 1058 0
	movq	-24(%rbp), %rax	# pfile, tmp75
	movq	672(%rax), %rax	# pfile_5(D)->opts.pending, D.9245
	movq	80(%rax), %rax	# _7->imacros_head, D.9246
	testq	%rax, %rax	# D.9246
	jne	.L140	#,
	.loc 1 1060 0
	jmp	.L141	#
.L145:
.LBB11:
	.loc 1 1062 0
	movq	-24(%rbp), %rax	# pfile, tmp76
	movq	672(%rax), %rax	# pfile_5(D)->opts.pending, D.9245
	movq	96(%rax), %rax	# _10->include_head, tmp77
	movq	%rax, -8(%rbp)	# tmp77, p
	.loc 1 1064 0
	cmpq	$0, -8(%rbp)	#, p
	jne	.L142	#,
	.loc 1 1065 0
	jmp	.L143	#
.L142:
	.loc 1 1066 0
	movq	-24(%rbp), %rax	# pfile, tmp78
	movzbl	771(%rax), %eax	# pfile_5(D)->opts.preprocessed, D.9248
	testb	%al, %al	# D.9248
	jne	.L144	#,
	.loc 1 1067 0
	movq	-8(%rbp), %rdx	# p, tmp79
	movq	-24(%rbp), %rax	# pfile, tmp80
	movq	%rdx, %rsi	# tmp79,
	movq	%rax, %rdi	# tmp80,
	call	push_include	#
	movb	%al, -9(%rbp)	# tmp81, pushed
.L144:
	.loc 1 1068 0
	movq	-24(%rbp), %rax	# pfile, tmp82
	movq	672(%rax), %rax	# pfile_5(D)->opts.pending, D.9245
	movq	-8(%rbp), %rdx	# p, tmp83
	movq	(%rdx), %rdx	# p_11->next, D.9246
	movq	%rdx, 96(%rax)	# D.9246, _14->include_head
	.loc 1 1069 0
	movq	-8(%rbp), %rax	# p, tmp84
	movq	%rax, %rdi	# tmp84,
	call	free	#
.L141:
.LBE11:
	.loc 1 1060 0 discriminator 1
	movzbl	-9(%rbp), %eax	# pushed, tmp85
	xorl	$1, %eax	#, D.9247
	testb	%al, %al	# D.9247
	jne	.L145	#,
.L143:
	.loc 1 1072 0
	movzbl	-9(%rbp), %eax	# pushed, tmp86
	xorl	$1, %eax	#, D.9247
	testb	%al, %al	# D.9247
	je	.L140	#,
	.loc 1 1074 0
	movq	-24(%rbp), %rax	# pfile, tmp87
	movq	672(%rax), %rax	# pfile_5(D)->opts.pending, D.9245
	movq	%rax, %rdi	# D.9245,
	call	free	#
	.loc 1 1075 0
	movq	-24(%rbp), %rax	# pfile, tmp88
	movq	$0, 672(%rax)	#, pfile_5(D)->opts.pending
	.loc 1 1078 0
	movq	-24(%rbp), %rax	# pfile, tmp89
	movzbl	771(%rax), %eax	# pfile_5(D)->opts.preprocessed, D.9248
	testb	%al, %al	# D.9248
	jne	.L140	#,
	.loc 1 1080 0
	movq	-24(%rbp), %rax	# pfile, tmp90
	movq	24(%rax), %rax	# pfile_5(D)->line_maps.maps, D.9249
	.loc 1 1079 0
	movq	(%rax), %rdx	# _19->to_file, D.9250
	movq	-24(%rbp), %rax	# pfile, tmp91
	movl	$0, %r8d	#,
	movl	$1, %ecx	#,
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp91,
	call	_cpp_do_file_change	#
.L140:
	.loc 1 1084 0
	movzbl	-9(%rbp), %eax	# pushed, D.9247
	.loc 1 1085 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	_cpp_push_next_buffer, .-_cpp_push_next_buffer
	.section	.rodata
.LC57:
	.string	"a"
.LC58:
	.string	"w"
.LC59:
	.string	"I/O error on output"
	.text
	.type	output_deps, @function
output_deps:
.LFB26:
	.loc 1 1091 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# pfile, pfile
	.loc 1 1093 0
	movq	$0, -16(%rbp)	#, deps_stream
	.loc 1 1095 0
	movq	-24(%rbp), %rax	# pfile, tmp71
	movzbl	752(%rax), %eax	# pfile_4(D)->opts.print_deps_append, D.9251
	.loc 1 1094 0
	testb	%al, %al	# D.9251
	je	.L148	#,
	.loc 1 1094 0 is_stmt 0 discriminator 1
	movl	$.LC57, %eax	#, iftmp.19
	jmp	.L149	#
.L148:
	.loc 1 1094 0 discriminator 2
	movl	$.LC58, %eax	#, iftmp.19
.L149:
	.loc 1 1094 0 discriminator 3
	movq	%rax, -8(%rbp)	# iftmp.19, deps_mode
	.loc 1 1097 0 is_stmt 1 discriminator 3
	movq	-24(%rbp), %rax	# pfile, tmp72
	movq	680(%rax), %rax	# pfile_4(D)->opts.deps_file, D.9252
	movzbl	(%rax), %eax	# *_9, D.9253
	testb	%al, %al	# D.9253
	jne	.L150	#,
	.loc 1 1098 0
	movq	stdout(%rip), %rax	# stdout, tmp73
	movq	%rax, -16(%rbp)	# tmp73, deps_stream
	jmp	.L151	#
.L150:
	.loc 1 1101 0
	movq	-24(%rbp), %rax	# pfile, tmp74
	movq	680(%rax), %rax	# pfile_4(D)->opts.deps_file, D.9252
	movq	-8(%rbp), %rdx	# deps_mode, tmp75
	movq	%rdx, %rsi	# tmp75,
	movq	%rax, %rdi	# D.9252,
	call	fopen	#
	movq	%rax, -16(%rbp)	# tmp76, deps_stream
	.loc 1 1102 0
	cmpq	$0, -16(%rbp)	#, deps_stream
	jne	.L151	#,
	.loc 1 1104 0
	movq	-24(%rbp), %rax	# pfile, tmp77
	movq	680(%rax), %rdx	# pfile_4(D)->opts.deps_file, D.9252
	movq	-24(%rbp), %rax	# pfile, tmp78
	movq	%rdx, %rsi	# D.9252,
	movq	%rax, %rdi	# tmp78,
	call	cpp_notice_from_errno	#
	.loc 1 1105 0
	jmp	.L147	#
.L151:
	.loc 1 1109 0
	movq	-24(%rbp), %rax	# pfile, tmp79
	movq	392(%rax), %rax	# pfile_4(D)->deps, D.9254
	movq	-16(%rbp), %rcx	# deps_stream, tmp80
	movl	$72, %edx	#,
	movq	%rcx, %rsi	# tmp80,
	movq	%rax, %rdi	# D.9254,
	call	deps_write	#
	.loc 1 1111 0
	movq	-24(%rbp), %rax	# pfile, tmp81
	movzbl	750(%rax), %eax	# pfile_4(D)->opts.deps_phony_targets, D.9251
	testb	%al, %al	# D.9251
	je	.L153	#,
	.loc 1 1112 0
	movq	-24(%rbp), %rax	# pfile, tmp82
	movq	392(%rax), %rax	# pfile_4(D)->deps, D.9254
	movq	-16(%rbp), %rdx	# deps_stream, tmp83
	movq	%rdx, %rsi	# tmp83,
	movq	%rax, %rdi	# D.9254,
	call	deps_phony_targets	#
.L153:
	.loc 1 1115 0
	movq	stdout(%rip), %rax	# stdout, stdout.20
	cmpq	%rax, -16(%rbp)	# stdout.20, deps_stream
	je	.L147	#,
	.loc 1 1117 0
	movq	-16(%rbp), %rax	# deps_stream, tmp84
	movq	%rax, %rdi	# tmp84,
	call	ferror	#
	testl	%eax, %eax	# D.9255
	jne	.L154	#,
	.loc 1 1117 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# deps_stream, tmp85
	movq	%rax, %rdi	# tmp85,
	call	fclose	#
	testl	%eax, %eax	# D.9255
	je	.L147	#,
.L154:
	.loc 1 1118 0 is_stmt 1
	movq	-24(%rbp), %rax	# pfile, tmp86
	movl	$.LC59, %esi	#,
	movq	%rax, %rdi	# tmp86,
	movl	$0, %eax	#,
	call	cpp_fatal	#
.L147:
	.loc 1 1120 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	output_deps, .-output_deps
	.globl	cpp_finish
	.type	cpp_finish, @function
cpp_finish:
.LFB27:
	.loc 1 1129 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# pfile, pfile
	.loc 1 1135 0
	jmp	.L156	#
.L157:
	.loc 1 1136 0
	movq	-8(%rbp), %rax	# pfile, tmp63
	movq	%rax, %rdi	# tmp63,
	call	_cpp_pop_buffer	#
.L156:
	.loc 1 1135 0 discriminator 1
	movq	-8(%rbp), %rax	# pfile, tmp64
	movq	(%rax), %rax	# pfile_1(D)->buffer, D.9259
	testq	%rax, %rax	# D.9259
	jne	.L157	#,
	.loc 1 1139 0
	movq	-8(%rbp), %rax	# pfile, tmp65
	movzbl	749(%rax), %eax	# pfile_1(D)->opts.print_deps, D.9260
	testb	%al, %al	# D.9260
	je	.L158	#,
	.loc 1 1139 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# pfile, tmp66
	movl	248(%rax), %eax	# pfile_1(D)->errors, D.9261
	testl	%eax, %eax	# D.9261
	jne	.L158	#,
	.loc 1 1140 0 is_stmt 1
	movq	-8(%rbp), %rax	# pfile, tmp67
	movq	%rax, %rdi	# tmp67,
	call	output_deps	#
.L158:
	.loc 1 1143 0
	movq	-8(%rbp), %rax	# pfile, tmp68
	movzbl	753(%rax), %eax	# pfile_1(D)->opts.print_include_names, D.9260
	testb	%al, %al	# D.9260
	je	.L155	#,
	.loc 1 1144 0
	movq	-8(%rbp), %rax	# pfile, tmp69
	movq	%rax, %rdi	# tmp69,
	call	_cpp_report_missing_guards	#
.L155:
	.loc 1 1145 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	cpp_finish, .-cpp_finish
	.type	new_pending_directive, @function
new_pending_directive:
.LFB28:
	.loc 1 1153 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# pend, pend
	movq	%rsi, -32(%rbp)	# text, text
	movq	%rdx, -40(%rbp)	# handler, handler
	.loc 1 1154 0
	movl	$24, %edi	#,
	call	xmalloc	#
	movq	%rax, -8(%rbp)	# tmp61, o
	.loc 1 1157 0
	movq	-8(%rbp), %rax	# o, tmp62
	movq	-32(%rbp), %rdx	# text, tmp63
	movq	%rdx, 8(%rax)	# tmp63, o_1->arg
	.loc 1 1158 0
	movq	-8(%rbp), %rax	# o, tmp64
	movq	$0, (%rax)	#, o_1->next
	.loc 1 1159 0
	movq	-8(%rbp), %rax	# o, tmp65
	movq	-40(%rbp), %rdx	# handler, tmp66
	movq	%rdx, 16(%rax)	# tmp66, o_1->handler
	.loc 1 1160 0
	movq	-24(%rbp), %rax	# pend, tmp67
	movq	(%rax), %rax	# pend_4(D)->directive_head, D.9262
	testq	%rax, %rax	# D.9262
	jne	.L161	#,
	.loc 1 1160 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# pend, tmp68
	movq	-8(%rbp), %rdx	# o, tmp69
	movq	%rdx, (%rax)	# tmp69, pend_4(D)->directive_head
	jmp	.L162	#
.L161:
	.loc 1 1160 0 discriminator 2
	movq	-24(%rbp), %rax	# pend, tmp70
	movq	8(%rax), %rax	# pend_4(D)->directive_tail, D.9262
	movq	-8(%rbp), %rdx	# o, tmp71
	movq	%rdx, (%rax)	# tmp71, _6->next
.L162:
	.loc 1 1160 0 discriminator 1
	movq	-24(%rbp), %rax	# pend, tmp72
	movq	-8(%rbp), %rdx	# o, tmp73
	movq	%rdx, 8(%rax)	# tmp73, pend_4(D)->directive_tail
	.loc 1 1161 0 is_stmt 1 discriminator 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	new_pending_directive, .-new_pending_directive
	.section	.rodata
.LC60:
	.string	"$"
.LC61:
	.string	"+"
.LC62:
	.string	"-help"
.LC63:
	.string	"-target-help"
.LC64:
	.string	"-version"
.LC65:
	.string	"A"
.LC66:
	.string	"assertion missing after %s"
.LC67:
	.string	"C"
.LC68:
	.string	"D"
.LC69:
	.string	"macro name missing after %s"
.LC70:
	.string	"H"
.LC71:
	.string	"I"
	.align 8
.LC72:
	.string	"directory name missing after %s"
.LC73:
	.string	"M"
.LC74:
	.string	"MD"
.LC75:
	.string	"file name missing after %s"
.LC76:
	.string	"MF"
.LC77:
	.string	"MG"
.LC78:
	.string	"MM"
.LC79:
	.string	"MMD"
.LC80:
	.string	"MP"
.LC81:
	.string	"MQ"
.LC82:
	.string	"target missing after %s"
.LC83:
	.string	"MT"
.LC84:
	.string	"P"
.LC85:
	.string	"U"
.LC86:
	.string	"W"
.LC87:
	.string	"argument missing after %s"
.LC88:
	.string	"d"
.LC89:
	.string	"fleading-underscore"
.LC90:
	.string	"fno-leading-underscore"
.LC91:
	.string	"fno-operator-names"
.LC92:
	.string	"fno-preprocessed"
.LC93:
	.string	"fno-show-column"
.LC94:
	.string	"fpreprocessed"
.LC95:
	.string	"fshow-column"
.LC96:
	.string	"fsigned-char"
.LC97:
	.string	"ftabstop="
.LC98:
	.string	"number missing after %s"
.LC99:
	.string	"funsigned-char"
.LC100:
	.string	"h"
.LC101:
	.string	"idirafter"
.LC102:
	.string	"imacros"
.LC103:
	.string	"include"
.LC104:
	.string	"iprefix"
.LC105:
	.string	"path name missing after %s"
.LC106:
	.string	"isystem"
.LC107:
	.string	"iwithprefix"
.LC108:
	.string	"iwithprefixbefore"
.LC109:
	.string	"lang-asm"
.LC110:
	.string	"lang-c"
.LC111:
	.string	"lang-c++"
.LC112:
	.string	"lang-c89"
.LC113:
	.string	"lang-objc"
.LC114:
	.string	"lang-objc++"
.LC115:
	.string	"nostdinc"
.LC116:
	.string	"nostdinc++"
.LC117:
	.string	"o"
.LC118:
	.string	"pedantic"
.LC119:
	.string	"pedantic-errors"
.LC120:
	.string	"remap"
.LC121:
	.string	"std=c++98"
.LC122:
	.string	"std=c89"
.LC123:
	.string	"std=c99"
.LC124:
	.string	"std=c9x"
.LC125:
	.string	"std=gnu89"
.LC126:
	.string	"std=gnu99"
.LC127:
	.string	"std=gnu9x"
.LC128:
	.string	"std=iso9899:1990"
.LC129:
	.string	"std=iso9899:199409"
.LC130:
	.string	"std=iso9899:1999"
.LC131:
	.string	"std=iso9899:199x"
.LC132:
	.string	"trigraphs"
.LC133:
	.string	"v"
.LC134:
	.string	"version"
	.align 32
	.type	cl_options, @object
	.size	cl_options, 2176
cl_options:
# opt_text:
	.quad	.LC60
# msg:
	.quad	0
# opt_len:
	.quad	1
# opt_code:
	.long	0
	.zero	4
# opt_text:
	.quad	.LC61
# msg:
	.quad	0
# opt_len:
	.quad	1
# opt_code:
	.long	1
	.zero	4
# opt_text:
	.quad	.LC62
# msg:
	.quad	0
# opt_len:
	.quad	5
# opt_code:
	.long	2
	.zero	4
# opt_text:
	.quad	.LC63
# msg:
	.quad	0
# opt_len:
	.quad	12
# opt_code:
	.long	3
	.zero	4
# opt_text:
	.quad	.LC64
# msg:
	.quad	0
# opt_len:
	.quad	8
# opt_code:
	.long	4
	.zero	4
# opt_text:
	.quad	.LC65
# msg:
	.quad	.LC66
# opt_len:
	.quad	1
# opt_code:
	.long	5
	.zero	4
# opt_text:
	.quad	.LC67
# msg:
	.quad	0
# opt_len:
	.quad	1
# opt_code:
	.long	6
	.zero	4
# opt_text:
	.quad	.LC68
# msg:
	.quad	.LC69
# opt_len:
	.quad	1
# opt_code:
	.long	7
	.zero	4
# opt_text:
	.quad	.LC70
# msg:
	.quad	0
# opt_len:
	.quad	1
# opt_code:
	.long	8
	.zero	4
# opt_text:
	.quad	.LC71
# msg:
	.quad	.LC72
# opt_len:
	.quad	1
# opt_code:
	.long	9
	.zero	4
# opt_text:
	.quad	.LC73
# msg:
	.quad	0
# opt_len:
	.quad	1
# opt_code:
	.long	10
	.zero	4
# opt_text:
	.quad	.LC74
# msg:
	.quad	.LC75
# opt_len:
	.quad	2
# opt_code:
	.long	11
	.zero	4
# opt_text:
	.quad	.LC76
# msg:
	.quad	.LC75
# opt_len:
	.quad	2
# opt_code:
	.long	12
	.zero	4
# opt_text:
	.quad	.LC77
# msg:
	.quad	0
# opt_len:
	.quad	2
# opt_code:
	.long	13
	.zero	4
# opt_text:
	.quad	.LC78
# msg:
	.quad	0
# opt_len:
	.quad	2
# opt_code:
	.long	14
	.zero	4
# opt_text:
	.quad	.LC79
# msg:
	.quad	.LC75
# opt_len:
	.quad	3
# opt_code:
	.long	15
	.zero	4
# opt_text:
	.quad	.LC80
# msg:
	.quad	0
# opt_len:
	.quad	2
# opt_code:
	.long	16
	.zero	4
# opt_text:
	.quad	.LC81
# msg:
	.quad	.LC82
# opt_len:
	.quad	2
# opt_code:
	.long	17
	.zero	4
# opt_text:
	.quad	.LC83
# msg:
	.quad	.LC82
# opt_len:
	.quad	2
# opt_code:
	.long	18
	.zero	4
# opt_text:
	.quad	.LC84
# msg:
	.quad	0
# opt_len:
	.quad	1
# opt_code:
	.long	19
	.zero	4
# opt_text:
	.quad	.LC85
# msg:
	.quad	.LC69
# opt_len:
	.quad	1
# opt_code:
	.long	20
	.zero	4
# opt_text:
	.quad	.LC86
# msg:
	.quad	.LC87
# opt_len:
	.quad	1
# opt_code:
	.long	21
	.zero	4
# opt_text:
	.quad	.LC88
# msg:
	.quad	.LC87
# opt_len:
	.quad	1
# opt_code:
	.long	22
	.zero	4
# opt_text:
	.quad	.LC89
# msg:
	.quad	0
# opt_len:
	.quad	19
# opt_code:
	.long	23
	.zero	4
# opt_text:
	.quad	.LC90
# msg:
	.quad	0
# opt_len:
	.quad	22
# opt_code:
	.long	24
	.zero	4
# opt_text:
	.quad	.LC91
# msg:
	.quad	0
# opt_len:
	.quad	18
# opt_code:
	.long	25
	.zero	4
# opt_text:
	.quad	.LC92
# msg:
	.quad	0
# opt_len:
	.quad	16
# opt_code:
	.long	26
	.zero	4
# opt_text:
	.quad	.LC93
# msg:
	.quad	0
# opt_len:
	.quad	15
# opt_code:
	.long	27
	.zero	4
# opt_text:
	.quad	.LC94
# msg:
	.quad	0
# opt_len:
	.quad	13
# opt_code:
	.long	28
	.zero	4
# opt_text:
	.quad	.LC95
# msg:
	.quad	0
# opt_len:
	.quad	12
# opt_code:
	.long	29
	.zero	4
# opt_text:
	.quad	.LC96
# msg:
	.quad	0
# opt_len:
	.quad	12
# opt_code:
	.long	30
	.zero	4
# opt_text:
	.quad	.LC97
# msg:
	.quad	.LC98
# opt_len:
	.quad	9
# opt_code:
	.long	31
	.zero	4
# opt_text:
	.quad	.LC99
# msg:
	.quad	0
# opt_len:
	.quad	14
# opt_code:
	.long	32
	.zero	4
# opt_text:
	.quad	.LC100
# msg:
	.quad	0
# opt_len:
	.quad	1
# opt_code:
	.long	33
	.zero	4
# opt_text:
	.quad	.LC101
# msg:
	.quad	.LC72
# opt_len:
	.quad	9
# opt_code:
	.long	34
	.zero	4
# opt_text:
	.quad	.LC102
# msg:
	.quad	.LC75
# opt_len:
	.quad	7
# opt_code:
	.long	35
	.zero	4
# opt_text:
	.quad	.LC103
# msg:
	.quad	.LC75
# opt_len:
	.quad	7
# opt_code:
	.long	36
	.zero	4
# opt_text:
	.quad	.LC104
# msg:
	.quad	.LC105
# opt_len:
	.quad	7
# opt_code:
	.long	37
	.zero	4
# opt_text:
	.quad	.LC106
# msg:
	.quad	.LC72
# opt_len:
	.quad	7
# opt_code:
	.long	38
	.zero	4
# opt_text:
	.quad	.LC107
# msg:
	.quad	.LC72
# opt_len:
	.quad	11
# opt_code:
	.long	39
	.zero	4
# opt_text:
	.quad	.LC108
# msg:
	.quad	.LC72
# opt_len:
	.quad	17
# opt_code:
	.long	40
	.zero	4
# opt_text:
	.quad	.LC109
# msg:
	.quad	0
# opt_len:
	.quad	8
# opt_code:
	.long	41
	.zero	4
# opt_text:
	.quad	.LC110
# msg:
	.quad	0
# opt_len:
	.quad	6
# opt_code:
	.long	42
	.zero	4
# opt_text:
	.quad	.LC111
# msg:
	.quad	0
# opt_len:
	.quad	8
# opt_code:
	.long	43
	.zero	4
# opt_text:
	.quad	.LC112
# msg:
	.quad	0
# opt_len:
	.quad	8
# opt_code:
	.long	44
	.zero	4
# opt_text:
	.quad	.LC113
# msg:
	.quad	0
# opt_len:
	.quad	9
# opt_code:
	.long	45
	.zero	4
# opt_text:
	.quad	.LC114
# msg:
	.quad	0
# opt_len:
	.quad	11
# opt_code:
	.long	46
	.zero	4
# opt_text:
	.quad	.LC115
# msg:
	.quad	0
# opt_len:
	.quad	8
# opt_code:
	.long	47
	.zero	4
# opt_text:
	.quad	.LC116
# msg:
	.quad	0
# opt_len:
	.quad	10
# opt_code:
	.long	48
	.zero	4
# opt_text:
	.quad	.LC117
# msg:
	.quad	.LC75
# opt_len:
	.quad	1
# opt_code:
	.long	49
	.zero	4
# opt_text:
	.quad	.LC118
# msg:
	.quad	0
# opt_len:
	.quad	8
# opt_code:
	.long	50
	.zero	4
# opt_text:
	.quad	.LC119
# msg:
	.quad	0
# opt_len:
	.quad	15
# opt_code:
	.long	51
	.zero	4
# opt_text:
	.quad	.LC120
# msg:
	.quad	0
# opt_len:
	.quad	5
# opt_code:
	.long	52
	.zero	4
# opt_text:
	.quad	.LC121
# msg:
	.quad	0
# opt_len:
	.quad	9
# opt_code:
	.long	53
	.zero	4
# opt_text:
	.quad	.LC122
# msg:
	.quad	0
# opt_len:
	.quad	7
# opt_code:
	.long	54
	.zero	4
# opt_text:
	.quad	.LC123
# msg:
	.quad	0
# opt_len:
	.quad	7
# opt_code:
	.long	55
	.zero	4
# opt_text:
	.quad	.LC124
# msg:
	.quad	0
# opt_len:
	.quad	7
# opt_code:
	.long	56
	.zero	4
# opt_text:
	.quad	.LC125
# msg:
	.quad	0
# opt_len:
	.quad	9
# opt_code:
	.long	57
	.zero	4
# opt_text:
	.quad	.LC126
# msg:
	.quad	0
# opt_len:
	.quad	9
# opt_code:
	.long	58
	.zero	4
# opt_text:
	.quad	.LC127
# msg:
	.quad	0
# opt_len:
	.quad	9
# opt_code:
	.long	59
	.zero	4
# opt_text:
	.quad	.LC128
# msg:
	.quad	0
# opt_len:
	.quad	16
# opt_code:
	.long	60
	.zero	4
# opt_text:
	.quad	.LC129
# msg:
	.quad	0
# opt_len:
	.quad	18
# opt_code:
	.long	61
	.zero	4
# opt_text:
	.quad	.LC130
# msg:
	.quad	0
# opt_len:
	.quad	16
# opt_code:
	.long	62
	.zero	4
# opt_text:
	.quad	.LC131
# msg:
	.quad	0
# opt_len:
	.quad	16
# opt_code:
	.long	63
	.zero	4
# opt_text:
	.quad	.LC132
# msg:
	.quad	0
# opt_len:
	.quad	9
# opt_code:
	.long	64
	.zero	4
# opt_text:
	.quad	.LC133
# msg:
	.quad	0
# opt_len:
	.quad	1
# opt_code:
	.long	65
	.zero	4
# opt_text:
	.quad	.LC134
# msg:
	.quad	0
# opt_len:
	.quad	7
# opt_code:
	.long	66
	.zero	4
# opt_text:
	.quad	.LC58
# msg:
	.quad	0
# opt_len:
	.quad	1
# opt_code:
	.long	67
	.zero	4
	.text
	.type	parse_option, @function
parse_option:
.LFB29:
	.loc 1 1286 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# input, input
	.loc 1 1291 0
	movl	$0, -24(%rbp)	#, mn
	.loc 1 1292 0
	movl	$68, -20(%rbp)	#, mx
	.loc 1 1294 0
	jmp	.L164	#
.L175:
	.loc 1 1296 0
	movl	-20(%rbp), %eax	# mx, tmp71
	movl	-24(%rbp), %edx	# mn, tmp72
	addl	%edx, %eax	# tmp72, D.9339
	shrl	%eax	# tmp73
	movl	%eax, -16(%rbp)	# tmp73, md
	.loc 1 1298 0
	movl	-16(%rbp), %eax	# md, tmp74
	salq	$5, %rax	#, tmp75
	addq	$cl_options+16, %rax	#, tmp76
	movq	(%rax), %rax	# cl_options[md_10].opt_len, tmp77
	movq	%rax, -8(%rbp)	# tmp77, opt_len
	.loc 1 1299 0
	movl	-16(%rbp), %eax	# md, tmp78
	salq	$5, %rax	#, tmp79
	addq	$cl_options, %rax	#, tmp80
	movq	(%rax), %rcx	# cl_options[md_10].opt_text, D.9340
	movq	-8(%rbp), %rdx	# opt_len, tmp81
	movq	-40(%rbp), %rax	# input, tmp82
	movq	%rcx, %rsi	# D.9340,
	movq	%rax, %rdi	# tmp82,
	call	memcmp	#
	movl	%eax, -12(%rbp)	# tmp83, comp
	.loc 1 1301 0
	cmpl	$0, -12(%rbp)	#, comp
	jle	.L165	#,
	.loc 1 1302 0
	movl	-16(%rbp), %eax	# md, tmp87
	addl	$1, %eax	#, tmp86
	movl	%eax, -24(%rbp)	# tmp86, mn
	jmp	.L164	#
.L165:
	.loc 1 1303 0
	cmpl	$0, -12(%rbp)	#, comp
	jns	.L166	#,
	.loc 1 1304 0
	movl	-16(%rbp), %eax	# md, tmp88
	movl	%eax, -20(%rbp)	# tmp88, mx
	jmp	.L164	#
.L166:
	.loc 1 1307 0
	movq	-8(%rbp), %rax	# opt_len, tmp89
	movq	-40(%rbp), %rdx	# input, tmp90
	addq	%rdx, %rax	# tmp90, D.9340
	movzbl	(%rax), %eax	# *_17, D.9341
	testb	%al, %al	# D.9341
	jne	.L167	#,
	.loc 1 1308 0
	movl	-16(%rbp), %eax	# md, D.9338
	jmp	.L168	#
.L167:
	.loc 1 1314 0
	movl	-16(%rbp), %eax	# md, tmp94
	addl	$1, %eax	#, tmp93
	movl	%eax, -24(%rbp)	# tmp93, mn
	.loc 1 1315 0
	movl	-16(%rbp), %eax	# md, tmp95
	salq	$5, %rax	#, tmp96
	addq	$cl_options, %rax	#, tmp97
	movq	8(%rax), %rax	# cl_options[md_10].msg, D.9340
	testq	%rax, %rax	# D.9340
	je	.L164	#,
	.loc 1 1320 0
	movl	-16(%rbp), %eax	# md, tmp98
	movl	%eax, -20(%rbp)	# tmp98, mx
	.loc 1 1321 0
	jmp	.L169	#
.L174:
	.loc 1 1323 0
	movl	-24(%rbp), %eax	# mn, tmp99
	salq	$5, %rax	#, tmp100
	addq	$cl_options+16, %rax	#, tmp101
	movq	(%rax), %rax	# cl_options[mn_1].opt_len, tmp102
	movq	%rax, -8(%rbp)	# tmp102, opt_len
	.loc 1 1324 0
	movl	-24(%rbp), %eax	# mn, tmp103
	salq	$5, %rax	#, tmp104
	addq	$cl_options, %rax	#, tmp105
	movq	(%rax), %rcx	# cl_options[mn_1].opt_text, D.9340
	movq	-8(%rbp), %rdx	# opt_len, tmp106
	movq	-40(%rbp), %rax	# input, tmp107
	movq	%rcx, %rsi	# D.9340,
	movq	%rax, %rdi	# tmp107,
	call	memcmp	#
	testl	%eax, %eax	# D.9338
	je	.L170	#,
	.loc 1 1325 0
	jmp	.L171	#
.L170:
	.loc 1 1326 0
	movq	-8(%rbp), %rax	# opt_len, tmp108
	movq	-40(%rbp), %rdx	# input, tmp109
	addq	%rdx, %rax	# tmp109, D.9340
	movzbl	(%rax), %eax	# *_26, D.9341
	testb	%al, %al	# D.9341
	jne	.L172	#,
	.loc 1 1327 0
	movl	-24(%rbp), %eax	# mn, D.9338
	jmp	.L168	#
.L172:
	.loc 1 1328 0
	movl	-24(%rbp), %eax	# mn, tmp110
	salq	$5, %rax	#, tmp111
	addq	$cl_options, %rax	#, tmp112
	movq	8(%rax), %rax	# cl_options[mn_1].msg, D.9340
	testq	%rax, %rax	# D.9340
	je	.L173	#,
	.loc 1 1329 0
	movl	-24(%rbp), %eax	# mn, tmp113
	movl	%eax, -20(%rbp)	# tmp113, mx
.L173:
	.loc 1 1321 0
	addl	$1, -24(%rbp)	#, mn
.L169:
	.loc 1 1321 0 is_stmt 0 discriminator 1
	cmpl	$67, -24(%rbp)	#, mn
	jbe	.L174	#,
.L171:
	.loc 1 1331 0 is_stmt 1
	movl	-20(%rbp), %eax	# mx, D.9338
	jmp	.L168	#
.L164:
	.loc 1 1294 0 discriminator 1
	movl	-20(%rbp), %eax	# mx, tmp114
	cmpl	-24(%rbp), %eax	# mn, tmp114
	ja	.L175	#,
	.loc 1 1336 0
	movl	$-1, %eax	#, D.9338
.L168:
	.loc 1 1337 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	parse_option, .-parse_option
	.section	.rodata
	.align 8
.LC135:
	.string	"too many filenames. Type %s --help for usage info"
.LC136:
	.string	"_"
	.align 8
.LC137:
	.string	"output filename specified twice"
.LC138:
	.string	"-"
.LC139:
	.string	"-I- specified twice"
.LC140:
	.string	"-Wall"
.LC141:
	.string	"-Wtraditional"
.LC142:
	.string	"-Wtrigraphs"
.LC143:
	.string	"-Wcomment"
.LC144:
	.string	"-Wcomments"
.LC145:
	.string	"-Wundef"
.LC146:
	.string	"-Wimport"
.LC147:
	.string	"-Werror"
.LC148:
	.string	"-Wsystem-headers"
.LC149:
	.string	"-Wno-traditional"
.LC150:
	.string	"-Wno-trigraphs"
.LC151:
	.string	"-Wno-comment"
.LC152:
	.string	"-Wno-comments"
.LC153:
	.string	"-Wno-undef"
.LC154:
	.string	"-Wno-import"
.LC155:
	.string	"-Wno-error"
.LC156:
	.string	"-Wno-system-headers"
	.text
	.globl	cpp_handle_option
	.type	cpp_handle_option, @function
cpp_handle_option:
.LFB30:
	.loc 1 1349 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$112, %rsp	#,
	movq	%rdi, -88(%rbp)	# pfile, pfile
	movl	%esi, -92(%rbp)	# argc, argc
	movq	%rdx, -104(%rbp)	# argv, argv
	movl	%ecx, -96(%rbp)	# ignore, ignore
	.loc 1 1350 0
	movl	$0, -72(%rbp)	#, i
	.loc 1 1351 0
	movq	-88(%rbp), %rax	# pfile, tmp240
	movq	672(%rax), %rax	# pfile_8(D)->opts.pending, tmp241
	movq	%rax, -32(%rbp)	# tmp241, pend
	.loc 1 1354 0
	movl	-72(%rbp), %eax	# i, tmp242
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9343
	movq	-104(%rbp), %rax	# argv, tmp243
	addq	%rdx, %rax	# D.9343, D.9344
	movq	(%rax), %rax	# *_13, D.9345
	movzbl	(%rax), %eax	# *_14, D.9346
	cmpb	$45, %al	#, D.9346
	jne	.L177	#,
	.loc 1 1354 0 is_stmt 0 discriminator 1
	movl	-72(%rbp), %eax	# i, tmp244
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9343
	movq	-104(%rbp), %rax	# argv, tmp245
	addq	%rdx, %rax	# D.9343, D.9344
	movq	(%rax), %rax	# *_18, D.9345
	addq	$1, %rax	#, D.9345
	movzbl	(%rax), %eax	# *_20, D.9346
	testb	%al, %al	# D.9346
	jne	.L178	#,
.L177:
	.loc 1 1356 0 is_stmt 1
	movq	-88(%rbp), %rax	# pfile, tmp246
	movq	648(%rax), %rax	# pfile_8(D)->opts.in_fname, D.9347
	testq	%rax, %rax	# D.9347
	jne	.L179	#,
	.loc 1 1357 0
	movl	-72(%rbp), %eax	# i, tmp247
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9343
	movq	-104(%rbp), %rax	# argv, tmp248
	addq	%rdx, %rax	# D.9343, D.9344
	movq	(%rax), %rdx	# *_204, D.9345
	movq	-88(%rbp), %rax	# pfile, tmp249
	movq	%rdx, 648(%rax)	# D.9345, pfile_8(D)->opts.in_fname
	jmp	.L180	#
.L179:
	.loc 1 1358 0
	movq	-88(%rbp), %rax	# pfile, tmp250
	movq	656(%rax), %rax	# pfile_8(D)->opts.out_fname, D.9347
	testq	%rax, %rax	# D.9347
	jne	.L181	#,
	.loc 1 1359 0
	movl	-72(%rbp), %eax	# i, tmp251
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9343
	movq	-104(%rbp), %rax	# argv, tmp252
	addq	%rdx, %rax	# D.9343, D.9344
	movq	(%rax), %rdx	# *_209, D.9345
	movq	-88(%rbp), %rax	# pfile, tmp253
	movq	%rdx, 656(%rax)	# D.9345, pfile_8(D)->opts.out_fname
	jmp	.L180	#
.L181:
	.loc 1 1361 0
	movq	progname(%rip), %rdx	# progname, progname.21
	movq	-88(%rbp), %rax	# pfile, tmp254
	movl	$.LC135, %esi	#,
	movq	%rax, %rdi	# tmp254,
	movl	$0, %eax	#,
	call	cpp_fatal	#
	.loc 1 1356 0
	jmp	.L182	#
.L180:
	jmp	.L182	#
.L178:
.LBB12:
	.loc 1 1368 0
	movq	$0, -48(%rbp)	#, arg
	.loc 1 1371 0
	movl	-72(%rbp), %eax	# i, tmp255
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9343
	movq	-104(%rbp), %rax	# argv, tmp256
	addq	%rdx, %rax	# D.9343, D.9344
	movq	(%rax), %rax	# *_25, D.9345
	addq	$1, %rax	#, D.9347
	movq	%rax, %rdi	# D.9347,
	call	parse_option	#
	movl	%eax, -68(%rbp)	# tmp257, opt_index
	.loc 1 1372 0
	cmpl	$0, -68(%rbp)	#, opt_index
	jns	.L183	#,
	.loc 1 1373 0
	movl	-72(%rbp), %eax	# i, D.9342
	jmp	.L184	#
.L183:
	.loc 1 1375 0
	movl	-68(%rbp), %eax	# opt_index, tmp259
	cltq
	salq	$5, %rax	#, tmp260
	addq	$cl_options+16, %rax	#, tmp261
	movl	8(%rax), %eax	# cl_options[opt_index_28].opt_code, tmp262
	movl	%eax, -64(%rbp)	# tmp262, opt_code
	.loc 1 1376 0
	movl	-68(%rbp), %eax	# opt_index, tmp264
	cltq
	salq	$5, %rax	#, tmp265
	addq	$cl_options, %rax	#, tmp266
	movq	8(%rax), %rax	# cl_options[opt_index_28].msg, D.9347
	testq	%rax, %rax	# D.9347
	je	.L185	#,
	.loc 1 1378 0
	movl	-72(%rbp), %eax	# i, tmp267
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9343
	movq	-104(%rbp), %rax	# argv, tmp268
	addq	%rdx, %rax	# D.9343, D.9344
	movq	(%rax), %rax	# *_34, D.9345
	movl	-68(%rbp), %edx	# opt_index, tmp270
	movslq	%edx, %rdx	# tmp270, tmp269
	salq	$5, %rdx	#, tmp271
	addq	$cl_options+16, %rdx	#, tmp272
	movq	(%rdx), %rdx	# cl_options[opt_index_28].opt_len, D.9343
	addq	$1, %rdx	#, D.9348
	addq	%rdx, %rax	# D.9348, tmp273
	movq	%rax, -48(%rbp)	# tmp273, arg
	.loc 1 1383 0
	movq	-48(%rbp), %rax	# arg, tmp274
	movzbl	(%rax), %eax	# *arg_38, D.9346
	testb	%al, %al	# D.9346
	jne	.L185	#,
	.loc 1 1383 0 is_stmt 0 discriminator 1
	cmpl	$21, -64(%rbp)	#, opt_code
	je	.L185	#,
	.loc 1 1385 0 is_stmt 1
	addl	$1, -72(%rbp)	#, i
	movl	-72(%rbp), %eax	# i, tmp275
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9343
	movq	-104(%rbp), %rax	# argv, tmp276
	addq	%rdx, %rax	# D.9343, D.9344
	movq	(%rax), %rax	# *_43, tmp277
	movq	%rax, -48(%rbp)	# tmp277, arg
	.loc 1 1386 0
	cmpq	$0, -48(%rbp)	#, arg
	jne	.L185	#,
	.loc 1 1388 0
	movl	-72(%rbp), %eax	# i, tmp278
	cltq
	salq	$3, %rax	#, D.9343
	leaq	-8(%rax), %rdx	#, D.9348
	movq	-104(%rbp), %rax	# argv, tmp279
	addq	%rdx, %rax	# D.9348, D.9344
	movq	(%rax), %rdx	# *_48, D.9345
	movl	-68(%rbp), %eax	# opt_index, tmp281
	cltq
	salq	$5, %rax	#, tmp282
	addq	$cl_options, %rax	#, tmp283
	movq	8(%rax), %rcx	# cl_options[opt_index_28].msg, D.9347
	movq	-88(%rbp), %rax	# pfile, tmp284
	movq	%rcx, %rsi	# D.9347,
	movq	%rax, %rdi	# tmp284,
	movl	$0, %eax	#,
	call	cpp_fatal	#
	.loc 1 1389 0
	movl	-92(%rbp), %eax	# argc, D.9342
	jmp	.L184	#
.L185:
	.loc 1 1394 0
	cmpl	$68, -64(%rbp)	#, opt_code
	ja	.L182	#,
	movl	-64(%rbp), %eax	# opt_code, tmp285
	movq	.L187(,%rax,8), %rax	#, tmp286
	jmp	*%rax	# tmp286
	.section	.rodata
	.align 8
	.align 4
.L187:
	.quad	.L186
	.quad	.L188
	.quad	.L189
	.quad	.L190
	.quad	.L191
	.quad	.L192
	.quad	.L193
	.quad	.L194
	.quad	.L195
	.quad	.L196
	.quad	.L197
	.quad	.L198
	.quad	.L199
	.quad	.L200
	.quad	.L201
	.quad	.L202
	.quad	.L203
	.quad	.L204
	.quad	.L204
	.quad	.L205
	.quad	.L206
	.quad	.L207
	.quad	.L292
	.quad	.L209
	.quad	.L210
	.quad	.L211
	.quad	.L212
	.quad	.L213
	.quad	.L214
	.quad	.L215
	.quad	.L216
	.quad	.L217
	.quad	.L218
	.quad	.L189
	.quad	.L219
	.quad	.L220
	.quad	.L220
	.quad	.L221
	.quad	.L222
	.quad	.L223
	.quad	.L223
	.quad	.L224
	.quad	.L225
	.quad	.L226
	.quad	.L227
	.quad	.L228
	.quad	.L229
	.quad	.L230
	.quad	.L231
	.quad	.L232
	.quad	.L233
	.quad	.L234
	.quad	.L235
	.quad	.L236
	.quad	.L227
	.quad	.L237
	.quad	.L237
	.quad	.L238
	.quad	.L239
	.quad	.L239
	.quad	.L227
	.quad	.L240
	.quad	.L237
	.quad	.L237
	.quad	.L241
	.quad	.L242
	.quad	.L243
	.quad	.L244
	.quad	.L291
	.text
.L209:
	.loc 1 1399 0
	movq	-88(%rbp), %rax	# pfile, tmp287
	movq	$.LC136, 728(%rax)	#, pfile_8(D)->opts.user_label_prefix
	.loc 1 1400 0
	jmp	.L182	#
.L210:
	.loc 1 1402 0
	movq	-88(%rbp), %rax	# pfile, tmp288
	movq	$.LC17, 728(%rax)	#, pfile_8(D)->opts.user_label_prefix
	.loc 1 1403 0
	jmp	.L182	#
.L211:
	.loc 1 1405 0
	movq	-88(%rbp), %rax	# pfile, tmp289
	movb	$0, 777(%rax)	#, pfile_8(D)->opts.operator_names
	.loc 1 1406 0
	jmp	.L182	#
.L214:
	.loc 1 1408 0
	movq	-88(%rbp), %rax	# pfile, tmp290
	movb	$1, 771(%rax)	#, pfile_8(D)->opts.preprocessed
	.loc 1 1409 0
	jmp	.L182	#
.L212:
	.loc 1 1411 0
	movq	-88(%rbp), %rax	# pfile, tmp291
	movb	$0, 771(%rax)	#, pfile_8(D)->opts.preprocessed
	.loc 1 1412 0
	jmp	.L182	#
.L215:
	.loc 1 1414 0
	movq	-88(%rbp), %rax	# pfile, tmp292
	movb	$1, 776(%rax)	#, pfile_8(D)->opts.show_column
	.loc 1 1415 0
	jmp	.L182	#
.L213:
	.loc 1 1417 0
	movq	-88(%rbp), %rax	# pfile, tmp293
	movb	$0, 776(%rax)	#, pfile_8(D)->opts.show_column
	.loc 1 1418 0
	jmp	.L182	#
.L216:
	.loc 1 1420 0
	movq	-88(%rbp), %rax	# pfile, tmp294
	movb	$1, 741(%rax)	#, pfile_8(D)->opts.signed_char
	.loc 1 1421 0
	jmp	.L182	#
.L218:
	.loc 1 1423 0
	movq	-88(%rbp), %rax	# pfile, tmp295
	movb	$0, 741(%rax)	#, pfile_8(D)->opts.signed_char
	.loc 1 1424 0
	jmp	.L182	#
.L217:
	.loc 1 1427 0
	movq	-48(%rbp), %rax	# arg, tmp296
	movzbl	(%rax), %eax	# *arg_3, D.9346
	testb	%al, %al	# D.9346
	je	.L246	#,
.LBB13:
	.loc 1 1430 0
	leaq	-56(%rbp), %rcx	#, tmp297
	movq	-48(%rbp), %rax	# arg, tmp298
	movl	$10, %edx	#,
	movq	%rcx, %rsi	# tmp297,
	movq	%rax, %rdi	# tmp298,
	call	strtol	#
	movq	%rax, -24(%rbp)	# tmp299, tabstop
	.loc 1 1431 0
	movq	-56(%rbp), %rax	# endptr, endptr.22
	movzbl	(%rax), %eax	# *endptr.22_55, D.9346
	testb	%al, %al	# D.9346
	jne	.L246	#,
	.loc 1 1431 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, tabstop
	jle	.L246	#,
	cmpq	$100, -24(%rbp)	#, tabstop
	jg	.L246	#,
	.loc 1 1432 0 is_stmt 1
	movq	-24(%rbp), %rax	# tabstop, tmp300
	movl	%eax, %edx	# tmp300, D.9349
	movq	-88(%rbp), %rax	# pfile, tmp301
	movl	%edx, 664(%rax)	# D.9349, pfile_8(D)->opts.tabstop
.LBE13:
	.loc 1 1434 0
	jmp	.L182	#
.L246:
	jmp	.L182	#
.L244:
	.loc 1 1436 0
	movq	-88(%rbp), %rax	# pfile, tmp302
	movb	$1, 755(%rax)	#, pfile_8(D)->opts.inhibit_warnings
	.loc 1 1437 0
	jmp	.L182	#
.L189:
	.loc 1 1440 0
	call	print_help	#
	.loc 1 1441 0
	movq	-88(%rbp), %rax	# pfile, tmp303
	movb	$1, 778(%rax)	#, pfile_8(D)->opts.help_only
	.loc 1 1442 0
	jmp	.L182	#
.L190:
	.loc 1 1446 0
	movq	-88(%rbp), %rax	# pfile, tmp304
	movb	$1, 778(%rax)	#, pfile_8(D)->opts.help_only
	.loc 1 1447 0
	jmp	.L182	#
.L191:
	.loc 1 1452 0
	movq	-88(%rbp), %rax	# pfile, tmp305
	movb	$1, 778(%rax)	#, pfile_8(D)->opts.help_only
	.loc 1 1453 0
	movq	-88(%rbp), %rax	# pfile, tmp306
	movb	$1, 824(%rax)	#, pfile_8(D)->print_version
	.loc 1 1454 0
	jmp	.L182	#
.L242:
	.loc 1 1456 0
	movq	-88(%rbp), %rax	# pfile, tmp307
	movb	$1, 740(%rax)	#, pfile_8(D)->opts.verbose
	.loc 1 1457 0
	movq	-88(%rbp), %rax	# pfile, tmp308
	movb	$1, 824(%rax)	#, pfile_8(D)->print_version
	.loc 1 1458 0
	jmp	.L182	#
.L243:
	.loc 1 1460 0
	movq	-88(%rbp), %rax	# pfile, tmp309
	movb	$1, 824(%rax)	#, pfile_8(D)->print_version
	.loc 1 1461 0
	jmp	.L182	#
.L193:
	.loc 1 1464 0
	movq	-88(%rbp), %rax	# pfile, tmp310
	movb	$0, 745(%rax)	#, pfile_8(D)->opts.discard_comments
	.loc 1 1465 0
	jmp	.L182	#
.L205:
	.loc 1 1467 0
	movq	-88(%rbp), %rax	# pfile, tmp311
	movb	$1, 765(%rax)	#, pfile_8(D)->opts.no_line_commands
	.loc 1 1468 0
	jmp	.L182	#
.L186:
	.loc 1 1470 0
	movq	-88(%rbp), %rax	# pfile, tmp312
	movb	$0, 767(%rax)	#, pfile_8(D)->opts.dollars_in_ident
	.loc 1 1471 0
	jmp	.L182	#
.L195:
	.loc 1 1473 0
	movq	-88(%rbp), %rax	# pfile, tmp313
	movb	$1, 753(%rax)	#, pfile_8(D)->opts.print_include_names
	.loc 1 1474 0
	jmp	.L182	#
.L194:
	.loc 1 1476 0
	movq	-48(%rbp), %rcx	# arg, tmp314
	movq	-32(%rbp), %rax	# pend, tmp315
	movl	$cpp_define, %edx	#,
	movq	%rcx, %rsi	# tmp314,
	movq	%rax, %rdi	# tmp315,
	call	new_pending_directive	#
	.loc 1 1477 0
	jmp	.L182	#
.L234:
	.loc 1 1479 0
	movq	-88(%rbp), %rax	# pfile, tmp316
	movb	$1, 754(%rax)	#, pfile_8(D)->opts.pedantic_errors
.L233:
	.loc 1 1482 0
	movq	-88(%rbp), %rax	# pfile, tmp317
	movb	$1, 770(%rax)	#, pfile_8(D)->opts.pedantic
	.loc 1 1483 0
	jmp	.L182	#
.L241:
	.loc 1 1485 0
	movq	-88(%rbp), %rax	# pfile, tmp318
	movb	$1, 746(%rax)	#, pfile_8(D)->opts.trigraphs
	.loc 1 1486 0
	jmp	.L182	#
.L188:
	.loc 1 1488 0
	movq	-88(%rbp), %rax	# pfile, tmp319
	movb	$1, 742(%rax)	#, pfile_8(D)->opts.cplusplus
	.loc 1 1489 0
	movq	-88(%rbp), %rax	# pfile, tmp320
	movb	$1, 743(%rax)	#, pfile_8(D)->opts.cplusplus_comments
	.loc 1 1490 0
	jmp	.L182	#
.L235:
	.loc 1 1492 0
	movq	-88(%rbp), %rax	# pfile, tmp321
	movb	$1, 764(%rax)	#, pfile_8(D)->opts.remap
	.loc 1 1493 0
	jmp	.L182	#
.L221:
	.loc 1 1495 0
	movq	-88(%rbp), %rax	# pfile, tmp322
	movq	-48(%rbp), %rdx	# arg, tmp323
	movq	%rdx, 712(%rax)	# tmp323, pfile_8(D)->opts.include_prefix
	.loc 1 1496 0
	movq	-48(%rbp), %rax	# arg, tmp324
	movq	%rax, %rdi	# tmp324,
	call	strlen	#
	movl	%eax, %edx	# D.9343, D.9349
	movq	-88(%rbp), %rax	# pfile, tmp325
	movl	%edx, 720(%rax)	# D.9349, pfile_8(D)->opts.include_prefix_len
	.loc 1 1497 0
	jmp	.L182	#
.L225:
	.loc 1 1499 0
	movq	-88(%rbp), %rax	# pfile, tmp326
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp326,
	call	set_lang	#
	.loc 1 1500 0
	jmp	.L182	#
.L226:
	.loc 1 1502 0
	movq	-88(%rbp), %rax	# pfile, tmp327
	movl	$5, %esi	#,
	movq	%rax, %rdi	# tmp327,
	call	set_lang	#
	.loc 1 1503 0
	jmp	.L182	#
.L228:
	.loc 1 1505 0
	movq	-88(%rbp), %rax	# pfile, tmp328
	movl	$7, %esi	#,
	movq	%rax, %rdi	# tmp328,
	call	set_lang	#
	.loc 1 1506 0
	jmp	.L182	#
.L229:
	.loc 1 1508 0
	movq	-88(%rbp), %rax	# pfile, tmp329
	movl	$8, %esi	#,
	movq	%rax, %rdi	# tmp329,
	call	set_lang	#
	.loc 1 1509 0
	jmp	.L182	#
.L224:
	.loc 1 1511 0
	movq	-88(%rbp), %rax	# pfile, tmp330
	movl	$9, %esi	#,
	movq	%rax, %rdi	# tmp330,
	call	set_lang	#
	.loc 1 1512 0
	jmp	.L182	#
.L236:
	.loc 1 1514 0
	movq	-88(%rbp), %rax	# pfile, tmp331
	movl	$6, %esi	#,
	movq	%rax, %rdi	# tmp331,
	call	set_lang	#
	.loc 1 1515 0
	jmp	.L182	#
.L238:
	.loc 1 1517 0
	movq	-88(%rbp), %rax	# pfile, tmp332
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp332,
	call	set_lang	#
	.loc 1 1518 0
	jmp	.L182	#
.L239:
	.loc 1 1521 0
	movq	-88(%rbp), %rax	# pfile, tmp333
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp333,
	call	set_lang	#
	.loc 1 1522 0
	jmp	.L182	#
.L240:
	.loc 1 1524 0
	movq	-88(%rbp), %rax	# pfile, tmp334
	movl	$3, %esi	#,
	movq	%rax, %rdi	# tmp334,
	call	set_lang	#
	.loc 1 1525 0
	jmp	.L182	#
.L227:
	.loc 1 1529 0
	movq	-88(%rbp), %rax	# pfile, tmp335
	movl	$2, %esi	#,
	movq	%rax, %rdi	# tmp335,
	call	set_lang	#
	.loc 1 1530 0
	jmp	.L182	#
.L237:
	.loc 1 1535 0
	movq	-88(%rbp), %rax	# pfile, tmp336
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp336,
	call	set_lang	#
	.loc 1 1536 0
	jmp	.L182	#
.L230:
	.loc 1 1540 0
	movq	-88(%rbp), %rax	# pfile, tmp337
	movb	$1, 772(%rax)	#, pfile_8(D)->opts.no_standard_includes
	.loc 1 1541 0
	jmp	.L182	#
.L231:
	.loc 1 1544 0
	movq	-88(%rbp), %rax	# pfile, tmp338
	movb	$1, 773(%rax)	#, pfile_8(D)->opts.no_standard_cplusplus_includes
	.loc 1 1545 0
	jmp	.L182	#
.L232:
	.loc 1 1547 0
	movq	-88(%rbp), %rax	# pfile, tmp339
	movq	656(%rax), %rax	# pfile_8(D)->opts.out_fname, D.9347
	testq	%rax, %rax	# D.9347
	jne	.L248	#,
	.loc 1 1548 0
	movq	-88(%rbp), %rax	# pfile, tmp340
	movq	-48(%rbp), %rdx	# arg, tmp341
	movq	%rdx, 656(%rax)	# tmp341, pfile_8(D)->opts.out_fname
	.loc 1 1554 0
	jmp	.L182	#
.L248:
	.loc 1 1551 0
	movq	-88(%rbp), %rax	# pfile, tmp342
	movl	$.LC137, %esi	#,
	movq	%rax, %rdi	# tmp342,
	movl	$0, %eax	#,
	call	cpp_fatal	#
	.loc 1 1552 0
	movl	-92(%rbp), %eax	# argc, D.9342
	jmp	.L184	#
.L256:
.LBB14:
	.loc 1 1563 0
	movsbl	-73(%rbp), %eax	# c, D.9342
	cmpl	$73, %eax	#, D.9342
	je	.L251	#,
	cmpl	$73, %eax	#, D.9342
	jg	.L252	#,
	cmpl	$68, %eax	#, D.9342
	je	.L253	#,
	jmp	.L250	#
.L252:
	cmpl	$77, %eax	#, D.9342
	je	.L254	#,
	cmpl	$78, %eax	#, D.9342
	je	.L255	#,
	jmp	.L250	#
.L254:
	.loc 1 1566 0
	movq	-88(%rbp), %rax	# pfile, tmp343
	movb	$1, 774(%rax)	#, pfile_8(D)->opts.dump_macros
	.loc 1 1567 0
	jmp	.L250	#
.L255:
	.loc 1 1569 0
	movq	-88(%rbp), %rax	# pfile, tmp344
	movb	$2, 774(%rax)	#, pfile_8(D)->opts.dump_macros
	.loc 1 1570 0
	jmp	.L250	#
.L253:
	.loc 1 1572 0
	movq	-88(%rbp), %rax	# pfile, tmp345
	movb	$3, 774(%rax)	#, pfile_8(D)->opts.dump_macros
	.loc 1 1573 0
	jmp	.L250	#
.L251:
	.loc 1 1575 0
	movq	-88(%rbp), %rax	# pfile, tmp346
	movb	$1, 775(%rax)	#, pfile_8(D)->opts.dump_includes
	.loc 1 1576 0
	jmp	.L250	#
.L292:
	.loc 1 1562 0
	nop
.L250:
	.loc 1 1562 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# arg, arg.23
	leaq	1(%rax), %rdx	#, tmp347
	movq	%rdx, -48(%rbp)	# tmp347, arg
	movzbl	(%rax), %eax	# *arg.23_62, tmp348
	movb	%al, -73(%rbp)	# tmp348, c
	cmpb	$0, -73(%rbp)	#, c
	jne	.L256	#,
.LBE14:
	.loc 1 1579 0 is_stmt 1
	jmp	.L182	#
.L200:
	.loc 1 1582 0
	movq	-88(%rbp), %rax	# pfile, tmp349
	movb	$1, 751(%rax)	#, pfile_8(D)->opts.print_deps_missing_files
	.loc 1 1583 0
	jmp	.L182	#
.L197:
	.loc 1 1589 0
	movq	-88(%rbp), %rax	# pfile, tmp350
	movb	$2, 749(%rax)	#, pfile_8(D)->opts.print_deps
	.loc 1 1590 0
	movq	-88(%rbp), %rax	# pfile, tmp351
	movb	$1, 763(%rax)	#, pfile_8(D)->opts.no_output
	.loc 1 1591 0
	jmp	.L182	#
.L201:
	.loc 1 1593 0
	movq	-88(%rbp), %rax	# pfile, tmp352
	movb	$1, 749(%rax)	#, pfile_8(D)->opts.print_deps
	.loc 1 1594 0
	movq	-88(%rbp), %rax	# pfile, tmp353
	movb	$1, 763(%rax)	#, pfile_8(D)->opts.no_output
	.loc 1 1595 0
	jmp	.L182	#
.L199:
	.loc 1 1597 0
	movq	-88(%rbp), %rax	# pfile, tmp354
	movq	-48(%rbp), %rdx	# arg, tmp355
	movq	%rdx, 680(%rax)	# tmp355, pfile_8(D)->opts.deps_file
	.loc 1 1598 0
	jmp	.L182	#
.L203:
	.loc 1 1600 0
	movq	-88(%rbp), %rax	# pfile, tmp356
	movb	$1, 750(%rax)	#, pfile_8(D)->opts.deps_phony_targets
	.loc 1 1601 0
	jmp	.L182	#
.L204:
	.loc 1 1605 0
	cmpl	$17, -64(%rbp)	#, opt_code
	sete	%al	#, D.9350
	movzbl	%al, %edx	# D.9350, D.9342
	movq	-88(%rbp), %rax	# pfile, tmp357
	movq	392(%rax), %rax	# pfile_8(D)->deps, D.9351
	movq	-48(%rbp), %rcx	# arg, tmp358
	movq	%rcx, %rsi	# tmp358,
	movq	%rax, %rdi	# D.9351,
	call	deps_add_target	#
	.loc 1 1606 0
	jmp	.L182	#
.L198:
	.loc 1 1609 0
	movq	-88(%rbp), %rax	# pfile, tmp359
	movb	$2, 749(%rax)	#, pfile_8(D)->opts.print_deps
	.loc 1 1610 0
	movq	-88(%rbp), %rax	# pfile, tmp360
	movq	-48(%rbp), %rdx	# arg, tmp361
	movq	%rdx, 680(%rax)	# tmp361, pfile_8(D)->opts.deps_file
	.loc 1 1611 0
	jmp	.L182	#
.L202:
	.loc 1 1613 0
	movq	-88(%rbp), %rax	# pfile, tmp362
	movb	$1, 749(%rax)	#, pfile_8(D)->opts.print_deps
	.loc 1 1614 0
	movq	-88(%rbp), %rax	# pfile, tmp363
	movq	-48(%rbp), %rdx	# arg, tmp364
	movq	%rdx, 680(%rax)	# tmp364, pfile_8(D)->opts.deps_file
	.loc 1 1615 0
	jmp	.L182	#
.L192:
	.loc 1 1618 0
	movq	-48(%rbp), %rax	# arg, tmp365
	movzbl	(%rax), %eax	# *arg_3, D.9346
	cmpb	$45, %al	#, D.9346
	jne	.L257	#,
	.loc 1 1628 0
	movq	-48(%rbp), %rax	# arg, tmp366
	addq	$1, %rax	#, D.9347
	movzbl	(%rax), %eax	# *_70, D.9346
	testb	%al, %al	# D.9346
	jne	.L258	#,
	.loc 1 1630 0
	movq	-32(%rbp), %rax	# pend, tmp367
	movq	(%rax), %rax	# pend_9->directive_head, D.9352
	movq	%rax, %rdi	# D.9352,
	call	free_chain	#
	.loc 1 1631 0
	movq	-32(%rbp), %rax	# pend, tmp368
	movq	$0, (%rax)	#, pend_9->directive_head
	.loc 1 1632 0
	movq	-32(%rbp), %rax	# pend, tmp369
	movq	$0, 8(%rax)	#, pend_9->directive_tail
	.loc 1 1639 0
	jmp	.L182	#
.L258:
	.loc 1 1635 0
	movq	-48(%rbp), %rax	# arg, tmp370
	leaq	1(%rax), %rcx	#, D.9347
	movq	-32(%rbp), %rax	# pend, tmp371
	movl	$cpp_unassert, %edx	#,
	movq	%rcx, %rsi	# D.9347,
	movq	%rax, %rdi	# tmp371,
	call	new_pending_directive	#
	.loc 1 1639 0
	jmp	.L182	#
.L257:
	.loc 1 1638 0
	movq	-48(%rbp), %rcx	# arg, tmp372
	movq	-32(%rbp), %rax	# pend, tmp373
	movl	$cpp_assert, %edx	#,
	movq	%rcx, %rsi	# tmp372,
	movq	%rax, %rdi	# tmp373,
	call	new_pending_directive	#
	.loc 1 1639 0
	jmp	.L182	#
.L206:
	.loc 1 1641 0
	movq	-48(%rbp), %rcx	# arg, tmp374
	movq	-32(%rbp), %rax	# pend, tmp375
	movl	$cpp_undef, %edx	#,
	movq	%rcx, %rsi	# tmp374,
	movq	%rax, %rdi	# tmp375,
	call	new_pending_directive	#
	.loc 1 1642 0
	jmp	.L182	#
.L196:
	.loc 1 1644 0
	movq	-48(%rbp), %rax	# arg, tmp376
	movl	$.LC138, %esi	#,
	movq	%rax, %rdi	# tmp376,
	call	strcmp	#
	testl	%eax, %eax	# D.9342
	jne	.L261	#,
	.loc 1 1652 0
	movq	-88(%rbp), %rax	# pfile, tmp377
	movzbl	766(%rax), %eax	# pfile_8(D)->opts.ignore_srcdir, D.9353
	testb	%al, %al	# D.9353
	jne	.L262	#,
	.loc 1 1654 0
	movq	-32(%rbp), %rax	# pend, tmp378
	movq	32(%rax), %rdx	# pend_9->brack_head, D.9354
	movq	-32(%rbp), %rax	# pend, tmp379
	movq	%rdx, 16(%rax)	# D.9354, pend_9->quote_head
	.loc 1 1655 0
	movq	-32(%rbp), %rax	# pend, tmp380
	movq	40(%rax), %rdx	# pend_9->brack_tail, D.9354
	movq	-32(%rbp), %rax	# pend, tmp381
	movq	%rdx, 24(%rax)	# D.9354, pend_9->quote_tail
	.loc 1 1656 0
	movq	-32(%rbp), %rax	# pend, tmp382
	movq	$0, 32(%rax)	#, pend_9->brack_head
	.loc 1 1657 0
	movq	-32(%rbp), %rax	# pend, tmp383
	movq	$0, 40(%rax)	#, pend_9->brack_tail
	.loc 1 1658 0
	movq	-88(%rbp), %rax	# pfile, tmp384
	movb	$1, 766(%rax)	#, pfile_8(D)->opts.ignore_srcdir
	.loc 1 1668 0
	jmp	.L182	#
.L262:
	.loc 1 1662 0
	movq	-88(%rbp), %rax	# pfile, tmp385
	movl	$.LC139, %esi	#,
	movq	%rax, %rdi	# tmp385,
	movl	$0, %eax	#,
	call	cpp_fatal	#
	.loc 1 1663 0
	movl	-92(%rbp), %eax	# argc, D.9342
	jmp	.L184	#
.L261:
	.loc 1 1667 0
	movq	-48(%rbp), %rax	# arg, tmp386
	movq	%rax, %rdi	# tmp386,
	call	xstrdup	#
	movq	%rax, %rsi	# tmp387, D.9345
	movq	-88(%rbp), %rax	# pfile, tmp388
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rdi	# tmp388,
	call	append_include_chain	#
	.loc 1 1668 0
	jmp	.L182	#
.L222:
	.loc 1 1672 0
	movq	-48(%rbp), %rax	# arg, tmp389
	movq	%rax, %rdi	# tmp389,
	call	xstrdup	#
	movq	%rax, %rsi	# tmp390, D.9345
	movq	-88(%rbp), %rax	# pfile, tmp391
	movl	$0, %ecx	#,
	movl	$1, %edx	#,
	movq	%rax, %rdi	# tmp391,
	call	append_include_chain	#
	.loc 1 1673 0
	jmp	.L182	#
.L220:
.LBB15:
	.loc 1 1677 0
	movl	$24, %edi	#,
	call	xmalloc	#
	movq	%rax, -16(%rbp)	# tmp392, o
	.loc 1 1679 0
	movq	-16(%rbp), %rax	# o, tmp393
	movq	-48(%rbp), %rdx	# arg, tmp394
	movq	%rdx, 8(%rax)	# tmp394, o_81->arg
	.loc 1 1680 0
	movq	-16(%rbp), %rax	# o, tmp395
	movq	$0, (%rax)	#, o_81->next
	.loc 1 1682 0
	cmpl	$36, -64(%rbp)	#, opt_code
	jne	.L264	#,
	.loc 1 1683 0
	movq	-32(%rbp), %rax	# pend, tmp396
	movq	96(%rax), %rax	# pend_9->include_head, D.9352
	testq	%rax, %rax	# D.9352
	jne	.L265	#,
	.loc 1 1683 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# pend, tmp397
	movq	-16(%rbp), %rdx	# o, tmp398
	movq	%rdx, 96(%rax)	# tmp398, pend_9->include_head
	jmp	.L266	#
.L265:
	.loc 1 1683 0 discriminator 2
	movq	-32(%rbp), %rax	# pend, tmp399
	movq	104(%rax), %rax	# pend_9->include_tail, D.9352
	movq	-16(%rbp), %rdx	# o, tmp400
	movq	%rdx, (%rax)	# tmp400, _83->next
.L266:
	.loc 1 1683 0 discriminator 1
	movq	-32(%rbp), %rax	# pend, tmp401
	movq	-16(%rbp), %rdx	# o, tmp402
	movq	%rdx, 104(%rax)	# tmp402, pend_9->include_tail
.LBE15:
	.loc 1 1687 0 is_stmt 1 discriminator 1
	jmp	.L182	#
.L264:
.LBB16:
	.loc 1 1685 0
	movq	-32(%rbp), %rax	# pend, tmp403
	movq	80(%rax), %rax	# pend_9->imacros_head, D.9352
	testq	%rax, %rax	# D.9352
	jne	.L268	#,
	.loc 1 1685 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# pend, tmp404
	movq	-16(%rbp), %rdx	# o, tmp405
	movq	%rdx, 80(%rax)	# tmp405, pend_9->imacros_head
	jmp	.L269	#
.L268:
	.loc 1 1685 0 discriminator 2
	movq	-32(%rbp), %rax	# pend, tmp406
	movq	88(%rax), %rax	# pend_9->imacros_tail, D.9352
	movq	-16(%rbp), %rdx	# o, tmp407
	movq	%rdx, (%rax)	# tmp407, _85->next
.L269:
	.loc 1 1685 0 discriminator 1
	movq	-32(%rbp), %rax	# pend, tmp408
	movq	-16(%rbp), %rdx	# o, tmp409
	movq	%rdx, 88(%rax)	# tmp409, pend_9->imacros_tail
.LBE16:
	.loc 1 1687 0 is_stmt 1 discriminator 1
	jmp	.L182	#
.L223:
.LBB17:
	.loc 1 1699 0
	movq	-48(%rbp), %rax	# arg, tmp410
	movq	%rax, %rdi	# tmp410,
	call	strlen	#
	movl	%eax, -60(%rbp)	# D.9343, len
	.loc 1 1701 0
	movq	-88(%rbp), %rax	# pfile, tmp411
	movq	712(%rax), %rax	# pfile_8(D)->opts.include_prefix, D.9347
	testq	%rax, %rax	# D.9347
	je	.L270	#,
.LBB18:
	.loc 1 1703 0
	movq	-88(%rbp), %rax	# pfile, tmp412
	movl	720(%rax), %eax	# pfile_8(D)->opts.include_prefix_len, D.9349
	movl	%eax, %eax	# D.9349, tmp490
	movq	%rax, -8(%rbp)	# tmp490, ipl
	.loc 1 1704 0
	movl	-60(%rbp), %eax	# len, tmp413
	movslq	%eax, %rdx	# tmp413, D.9343
	movq	-8(%rbp), %rax	# ipl, tmp414
	addq	%rdx, %rax	# D.9343, D.9343
	addq	$1, %rax	#, D.9343
	movq	%rax, %rdi	# D.9343,
	call	xmalloc	#
	movq	%rax, -40(%rbp)	# tmp415, fname
	.loc 1 1705 0
	movq	-88(%rbp), %rax	# pfile, tmp416
	movq	712(%rax), %rcx	# pfile_8(D)->opts.include_prefix, D.9347
	movq	-8(%rbp), %rdx	# ipl, tmp417
	movq	-40(%rbp), %rax	# fname, tmp418
	movq	%rcx, %rsi	# D.9347,
	movq	%rax, %rdi	# tmp418,
	call	memcpy	#
	.loc 1 1706 0
	movl	-60(%rbp), %eax	# len, tmp419
	addl	$1, %eax	#, D.9342
	movslq	%eax, %rdx	# D.9342, D.9343
	movq	-8(%rbp), %rax	# ipl, tmp420
	movq	-40(%rbp), %rcx	# fname, tmp421
	addq	%rax, %rcx	# tmp420, D.9345
	movq	-48(%rbp), %rax	# arg, tmp422
	movq	%rax, %rsi	# tmp422,
	movq	%rcx, %rdi	# D.9345,
	call	memcpy	#
.LBE18:
	jmp	.L271	#
.L270:
	.loc 1 1708 0
	movq	cpp_GCC_INCLUDE_DIR_len(%rip), %rax	# cpp_GCC_INCLUDE_DIR_len, cpp_GCC_INCLUDE_DIR_len.24
	testq	%rax, %rax	# cpp_GCC_INCLUDE_DIR_len.24
	je	.L272	#,
	.loc 1 1710 0
	movl	-60(%rbp), %eax	# len, tmp423
	movslq	%eax, %rdx	# tmp423, D.9343
	movq	cpp_GCC_INCLUDE_DIR_len(%rip), %rax	# cpp_GCC_INCLUDE_DIR_len, cpp_GCC_INCLUDE_DIR_len.25
	addq	%rdx, %rax	# D.9343, D.9343
	addq	$1, %rax	#, D.9343
	movq	%rax, %rdi	# D.9343,
	call	xmalloc	#
	movq	%rax, -40(%rbp)	# tmp424, fname
	.loc 1 1711 0
	movq	cpp_GCC_INCLUDE_DIR_len(%rip), %rdx	# cpp_GCC_INCLUDE_DIR_len, cpp_GCC_INCLUDE_DIR_len.26
	movq	-40(%rbp), %rax	# fname, tmp425
	movl	$cpp_GCC_INCLUDE_DIR, %esi	#,
	movq	%rax, %rdi	# tmp425,
	call	memcpy	#
	.loc 1 1712 0
	movl	-60(%rbp), %eax	# len, tmp426
	addl	$1, %eax	#, D.9342
	movslq	%eax, %rdx	# D.9342, D.9343
	movq	cpp_GCC_INCLUDE_DIR_len(%rip), %rcx	# cpp_GCC_INCLUDE_DIR_len, cpp_GCC_INCLUDE_DIR_len.27
	movq	-40(%rbp), %rax	# fname, tmp427
	addq	%rax, %rcx	# tmp427, D.9345
	movq	-48(%rbp), %rax	# arg, tmp428
	movq	%rax, %rsi	# tmp428,
	movq	%rcx, %rdi	# D.9345,
	call	memcpy	#
	jmp	.L271	#
.L272:
	.loc 1 1715 0
	movq	-48(%rbp), %rax	# arg, tmp429
	movq	%rax, %rdi	# tmp429,
	call	xstrdup	#
	movq	%rax, -40(%rbp)	# tmp430, fname
.L271:
	.loc 1 1717 0
	cmpl	$39, -64(%rbp)	#, opt_code
	sete	%al	#, D.9350
	movzbl	%al, %edx	# D.9350, D.9342
	movq	-40(%rbp), %rsi	# fname, tmp431
	movq	-88(%rbp), %rax	# pfile, tmp432
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp432,
	call	append_include_chain	#
.LBE17:
	.loc 1 1720 0
	jmp	.L182	#
.L219:
	.loc 1 1723 0
	movq	-48(%rbp), %rax	# arg, tmp433
	movq	%rax, %rdi	# tmp433,
	call	xstrdup	#
	movq	%rax, %rsi	# tmp434, D.9345
	movq	-88(%rbp), %rax	# pfile, tmp435
	movl	$0, %ecx	#,
	movl	$2, %edx	#,
	movq	%rax, %rdi	# tmp435,
	call	append_include_chain	#
	.loc 1 1724 0
	jmp	.L182	#
.L207:
	.loc 1 1727 0
	movl	-72(%rbp), %eax	# i, tmp436
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9343
	movq	-104(%rbp), %rax	# argv, tmp437
	addq	%rdx, %rax	# D.9343, D.9344
	movq	(%rax), %rax	# *_116, D.9345
	movl	$.LC140, %esi	#,
	movq	%rax, %rdi	# D.9345,
	call	strcmp	#
	testl	%eax, %eax	# D.9342
	jne	.L273	#,
	.loc 1 1729 0
	movq	-88(%rbp), %rax	# pfile, tmp438
	movb	$1, 759(%rax)	#, pfile_8(D)->opts.warn_trigraphs
	.loc 1 1730 0
	movq	-88(%rbp), %rax	# pfile, tmp439
	movb	$1, 758(%rax)	#, pfile_8(D)->opts.warn_comments
	jmp	.L274	#
.L273:
	.loc 1 1732 0
	movl	-72(%rbp), %eax	# i, tmp440
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9343
	movq	-104(%rbp), %rax	# argv, tmp441
	addq	%rdx, %rax	# D.9343, D.9344
	movq	(%rax), %rax	# *_121, D.9345
	movl	$.LC141, %esi	#,
	movq	%rax, %rdi	# D.9345,
	call	strcmp	#
	testl	%eax, %eax	# D.9342
	jne	.L275	#,
	.loc 1 1733 0
	movq	-88(%rbp), %rax	# pfile, tmp442
	movb	$1, 761(%rax)	#, pfile_8(D)->opts.warn_traditional
	jmp	.L274	#
.L275:
	.loc 1 1734 0
	movl	-72(%rbp), %eax	# i, tmp443
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9343
	movq	-104(%rbp), %rax	# argv, tmp444
	addq	%rdx, %rax	# D.9343, D.9344
	movq	(%rax), %rax	# *_126, D.9345
	movl	$.LC142, %esi	#,
	movq	%rax, %rdi	# D.9345,
	call	strcmp	#
	testl	%eax, %eax	# D.9342
	jne	.L276	#,
	.loc 1 1735 0
	movq	-88(%rbp), %rax	# pfile, tmp445
	movb	$1, 759(%rax)	#, pfile_8(D)->opts.warn_trigraphs
	jmp	.L274	#
.L276:
	.loc 1 1736 0
	movl	-72(%rbp), %eax	# i, tmp446
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9343
	movq	-104(%rbp), %rax	# argv, tmp447
	addq	%rdx, %rax	# D.9343, D.9344
	movq	(%rax), %rax	# *_131, D.9345
	movl	$.LC143, %esi	#,
	movq	%rax, %rdi	# D.9345,
	call	strcmp	#
	testl	%eax, %eax	# D.9342
	jne	.L277	#,
	.loc 1 1737 0
	movq	-88(%rbp), %rax	# pfile, tmp448
	movb	$1, 758(%rax)	#, pfile_8(D)->opts.warn_comments
	jmp	.L274	#
.L277:
	.loc 1 1738 0
	movl	-72(%rbp), %eax	# i, tmp449
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9343
	movq	-104(%rbp), %rax	# argv, tmp450
	addq	%rdx, %rax	# D.9343, D.9344
	movq	(%rax), %rax	# *_136, D.9345
	movl	$.LC144, %esi	#,
	movq	%rax, %rdi	# D.9345,
	call	strcmp	#
	testl	%eax, %eax	# D.9342
	jne	.L278	#,
	.loc 1 1739 0
	movq	-88(%rbp), %rax	# pfile, tmp451
	movb	$1, 758(%rax)	#, pfile_8(D)->opts.warn_comments
	jmp	.L274	#
.L278:
	.loc 1 1740 0
	movl	-72(%rbp), %eax	# i, tmp452
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9343
	movq	-104(%rbp), %rax	# argv, tmp453
	addq	%rdx, %rax	# D.9343, D.9344
	movq	(%rax), %rax	# *_141, D.9345
	movl	$.LC145, %esi	#,
	movq	%rax, %rdi	# D.9345,
	call	strcmp	#
	testl	%eax, %eax	# D.9342
	jne	.L279	#,
	.loc 1 1741 0
	movq	-88(%rbp), %rax	# pfile, tmp454
	movb	$1, 768(%rax)	#, pfile_8(D)->opts.warn_undef
	jmp	.L274	#
.L279:
	.loc 1 1742 0
	movl	-72(%rbp), %eax	# i, tmp455
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9343
	movq	-104(%rbp), %rax	# argv, tmp456
	addq	%rdx, %rax	# D.9343, D.9344
	movq	(%rax), %rax	# *_146, D.9345
	movl	$.LC146, %esi	#,
	movq	%rax, %rdi	# D.9345,
	call	strcmp	#
	testl	%eax, %eax	# D.9342
	jne	.L280	#,
	.loc 1 1743 0
	movq	-88(%rbp), %rax	# pfile, tmp457
	movb	$1, 760(%rax)	#, pfile_8(D)->opts.warn_import
	jmp	.L274	#
.L280:
	.loc 1 1744 0
	movl	-72(%rbp), %eax	# i, tmp458
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9343
	movq	-104(%rbp), %rax	# argv, tmp459
	addq	%rdx, %rax	# D.9343, D.9344
	movq	(%rax), %rax	# *_151, D.9345
	movl	$.LC147, %esi	#,
	movq	%rax, %rdi	# D.9345,
	call	strcmp	#
	testl	%eax, %eax	# D.9342
	jne	.L281	#,
	.loc 1 1745 0
	movq	-88(%rbp), %rax	# pfile, tmp460
	movb	$1, 762(%rax)	#, pfile_8(D)->opts.warnings_are_errors
	jmp	.L274	#
.L281:
	.loc 1 1746 0
	movl	-72(%rbp), %eax	# i, tmp461
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9343
	movq	-104(%rbp), %rax	# argv, tmp462
	addq	%rdx, %rax	# D.9343, D.9344
	movq	(%rax), %rax	# *_156, D.9345
	movl	$.LC148, %esi	#,
	movq	%rax, %rdi	# D.9345,
	call	strcmp	#
	testl	%eax, %eax	# D.9342
	jne	.L282	#,
	.loc 1 1747 0
	movq	-88(%rbp), %rax	# pfile, tmp463
	movb	$1, 756(%rax)	#, pfile_8(D)->opts.warn_system_headers
	jmp	.L274	#
.L282:
	.loc 1 1748 0
	movl	-72(%rbp), %eax	# i, tmp464
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9343
	movq	-104(%rbp), %rax	# argv, tmp465
	addq	%rdx, %rax	# D.9343, D.9344
	movq	(%rax), %rax	# *_161, D.9345
	movl	$.LC149, %esi	#,
	movq	%rax, %rdi	# D.9345,
	call	strcmp	#
	testl	%eax, %eax	# D.9342
	jne	.L283	#,
	.loc 1 1749 0
	movq	-88(%rbp), %rax	# pfile, tmp466
	movb	$0, 761(%rax)	#, pfile_8(D)->opts.warn_traditional
	jmp	.L274	#
.L283:
	.loc 1 1750 0
	movl	-72(%rbp), %eax	# i, tmp467
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9343
	movq	-104(%rbp), %rax	# argv, tmp468
	addq	%rdx, %rax	# D.9343, D.9344
	movq	(%rax), %rax	# *_166, D.9345
	movl	$.LC150, %esi	#,
	movq	%rax, %rdi	# D.9345,
	call	strcmp	#
	testl	%eax, %eax	# D.9342
	jne	.L284	#,
	.loc 1 1751 0
	movq	-88(%rbp), %rax	# pfile, tmp469
	movb	$0, 759(%rax)	#, pfile_8(D)->opts.warn_trigraphs
	jmp	.L274	#
.L284:
	.loc 1 1752 0
	movl	-72(%rbp), %eax	# i, tmp470
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9343
	movq	-104(%rbp), %rax	# argv, tmp471
	addq	%rdx, %rax	# D.9343, D.9344
	movq	(%rax), %rax	# *_171, D.9345
	movl	$.LC151, %esi	#,
	movq	%rax, %rdi	# D.9345,
	call	strcmp	#
	testl	%eax, %eax	# D.9342
	jne	.L285	#,
	.loc 1 1753 0
	movq	-88(%rbp), %rax	# pfile, tmp472
	movb	$0, 758(%rax)	#, pfile_8(D)->opts.warn_comments
	jmp	.L274	#
.L285:
	.loc 1 1754 0
	movl	-72(%rbp), %eax	# i, tmp473
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9343
	movq	-104(%rbp), %rax	# argv, tmp474
	addq	%rdx, %rax	# D.9343, D.9344
	movq	(%rax), %rax	# *_176, D.9345
	movl	$.LC152, %esi	#,
	movq	%rax, %rdi	# D.9345,
	call	strcmp	#
	testl	%eax, %eax	# D.9342
	jne	.L286	#,
	.loc 1 1755 0
	movq	-88(%rbp), %rax	# pfile, tmp475
	movb	$0, 758(%rax)	#, pfile_8(D)->opts.warn_comments
	jmp	.L274	#
.L286:
	.loc 1 1756 0
	movl	-72(%rbp), %eax	# i, tmp476
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9343
	movq	-104(%rbp), %rax	# argv, tmp477
	addq	%rdx, %rax	# D.9343, D.9344
	movq	(%rax), %rax	# *_181, D.9345
	movl	$.LC153, %esi	#,
	movq	%rax, %rdi	# D.9345,
	call	strcmp	#
	testl	%eax, %eax	# D.9342
	jne	.L287	#,
	.loc 1 1757 0
	movq	-88(%rbp), %rax	# pfile, tmp478
	movb	$0, 768(%rax)	#, pfile_8(D)->opts.warn_undef
	jmp	.L274	#
.L287:
	.loc 1 1758 0
	movl	-72(%rbp), %eax	# i, tmp479
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9343
	movq	-104(%rbp), %rax	# argv, tmp480
	addq	%rdx, %rax	# D.9343, D.9344
	movq	(%rax), %rax	# *_186, D.9345
	movl	$.LC154, %esi	#,
	movq	%rax, %rdi	# D.9345,
	call	strcmp	#
	testl	%eax, %eax	# D.9342
	jne	.L288	#,
	.loc 1 1759 0
	movq	-88(%rbp), %rax	# pfile, tmp481
	movb	$0, 760(%rax)	#, pfile_8(D)->opts.warn_import
	jmp	.L274	#
.L288:
	.loc 1 1760 0
	movl	-72(%rbp), %eax	# i, tmp482
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9343
	movq	-104(%rbp), %rax	# argv, tmp483
	addq	%rdx, %rax	# D.9343, D.9344
	movq	(%rax), %rax	# *_191, D.9345
	movl	$.LC155, %esi	#,
	movq	%rax, %rdi	# D.9345,
	call	strcmp	#
	testl	%eax, %eax	# D.9342
	jne	.L289	#,
	.loc 1 1761 0
	movq	-88(%rbp), %rax	# pfile, tmp484
	movb	$0, 762(%rax)	#, pfile_8(D)->opts.warnings_are_errors
	jmp	.L274	#
.L289:
	.loc 1 1762 0
	movl	-72(%rbp), %eax	# i, tmp485
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9343
	movq	-104(%rbp), %rax	# argv, tmp486
	addq	%rdx, %rax	# D.9343, D.9344
	movq	(%rax), %rax	# *_196, D.9345
	movl	$.LC156, %esi	#,
	movq	%rax, %rdi	# D.9345,
	call	strcmp	#
	testl	%eax, %eax	# D.9342
	jne	.L290	#,
	.loc 1 1763 0
	movq	-88(%rbp), %rax	# pfile, tmp487
	movb	$0, 756(%rax)	#, pfile_8(D)->opts.warn_system_headers
	jmp	.L274	#
.L290:
	.loc 1 1764 0
	cmpl	$0, -96(%rbp)	#, ignore
	jne	.L274	#,
	.loc 1 1765 0
	movl	-72(%rbp), %eax	# i, D.9342
	jmp	.L184	#
.L274:
	.loc 1 1766 0
	jmp	.L182	#
.L291:
	.loc 1 1397 0
	nop
.L182:
.LBE12:
	.loc 1 1769 0
	movl	-72(%rbp), %eax	# i, tmp488
	addl	$1, %eax	#, D.9342
.L184:
	.loc 1 1770 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	cpp_handle_option, .-cpp_handle_option
	.globl	cpp_handle_options
	.type	cpp_handle_options, @function
cpp_handle_options:
.LFB31:
	.loc 1 1781 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# pfile, pfile
	movl	%esi, -28(%rbp)	# argc, argc
	movq	%rdx, -40(%rbp)	# argv, argv
	.loc 1 1785 0
	movl	$0, -8(%rbp)	#, i
	jmp	.L294	#
.L297:
	.loc 1 1787 0
	movl	-8(%rbp), %eax	# i, tmp65
	cltq
	leaq	0(,%rax,8), %rdx	#, D.9378
	movq	-40(%rbp), %rax	# argv, tmp66
	addq	%rax, %rdx	# tmp66, D.9379
	movl	-8(%rbp), %eax	# i, tmp67
	movl	-28(%rbp), %ecx	# argc, tmp68
	subl	%eax, %ecx	# tmp67, D.9380
	movl	%ecx, %esi	# D.9380, D.9380
	movq	-24(%rbp), %rax	# pfile, tmp69
	movl	$1, %ecx	#,
	movq	%rax, %rdi	# tmp69,
	call	cpp_handle_option	#
	movl	%eax, -4(%rbp)	# tmp70, strings_processed
	.loc 1 1788 0
	cmpl	$0, -4(%rbp)	#, strings_processed
	jne	.L295	#,
	.loc 1 1789 0
	jmp	.L296	#
.L295:
	.loc 1 1785 0
	movl	-4(%rbp), %eax	# strings_processed, tmp71
	addl	%eax, -8(%rbp)	# tmp71, i
.L294:
	.loc 1 1785 0 is_stmt 0 discriminator 1
	movl	-8(%rbp), %eax	# i, tmp72
	cmpl	-28(%rbp), %eax	# argc, tmp72
	jl	.L297	#,
.L296:
	.loc 1 1792 0 is_stmt 1
	movl	-8(%rbp), %eax	# i, D.9380
	.loc 1 1793 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	cpp_handle_options, .-cpp_handle_options
	.section	.rodata
.LC157:
	.string	"GNU CPP version %s (cpplib)"
.LC158:
	.string	" (x86-64 Linux/ELF)"
	.align 8
.LC159:
	.string	"you must additionally specify either -M or -MM"
	.text
	.globl	cpp_post_options
	.type	cpp_post_options, @function
cpp_post_options:
.LFB32:
	.loc 1 1800 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# pfile, pfile
	.loc 1 1801 0
	movq	-8(%rbp), %rax	# pfile, tmp80
	movzbl	824(%rax), %eax	# pfile_1(D)->print_version, D.9381
	testb	%al, %al	# D.9381
	je	.L300	#,
	.loc 1 1803 0
	movq	version_string(%rip), %rdx	# version_string, version_string.28
	movq	stderr(%rip), %rax	# stderr, stderr.29
	movl	$.LC157, %esi	#,
	movq	%rax, %rdi	# stderr.29,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1805 0
	movq	stderr(%rip), %rax	# stderr, stderr.30
	movq	%rax, %rcx	# stderr.30,
	movl	$19, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC158, %edi	#,
	call	fwrite	#
	.loc 1 1807 0
	movq	stderr(%rip), %rax	# stderr, stderr.31
	movq	%rax, %rsi	# stderr.31,
	movl	$10, %edi	#,
	call	fputc	#
.L300:
	.loc 1 1812 0
	movq	-8(%rbp), %rax	# pfile, tmp81
	movq	648(%rax), %rax	# pfile_1(D)->opts.in_fname, D.9382
	testq	%rax, %rax	# D.9382
	je	.L301	#,
	.loc 1 1813 0
	movq	-8(%rbp), %rax	# pfile, tmp82
	movq	648(%rax), %rax	# pfile_1(D)->opts.in_fname, D.9382
	movl	$.LC138, %esi	#,
	movq	%rax, %rdi	# D.9382,
	call	strcmp	#
	testl	%eax, %eax	# D.9383
	jne	.L302	#,
.L301:
	.loc 1 1814 0
	movq	-8(%rbp), %rax	# pfile, tmp83
	movq	$.LC17, 648(%rax)	#, pfile_1(D)->opts.in_fname
.L302:
	.loc 1 1816 0
	movq	-8(%rbp), %rax	# pfile, tmp84
	movq	656(%rax), %rax	# pfile_1(D)->opts.out_fname, D.9382
	testq	%rax, %rax	# D.9382
	je	.L303	#,
	.loc 1 1817 0
	movq	-8(%rbp), %rax	# pfile, tmp85
	movq	656(%rax), %rax	# pfile_1(D)->opts.out_fname, D.9382
	movl	$.LC138, %esi	#,
	movq	%rax, %rdi	# D.9382,
	call	strcmp	#
	testl	%eax, %eax	# D.9383
	jne	.L304	#,
.L303:
	.loc 1 1818 0
	movq	-8(%rbp), %rax	# pfile, tmp86
	movq	$.LC17, 656(%rax)	#, pfile_1(D)->opts.out_fname
.L304:
	.loc 1 1821 0
	movq	-8(%rbp), %rax	# pfile, tmp87
	movzbl	742(%rax), %eax	# pfile_1(D)->opts.cplusplus, D.9381
	testb	%al, %al	# D.9381
	je	.L305	#,
	.loc 1 1822 0
	movq	-8(%rbp), %rax	# pfile, tmp88
	movb	$0, 761(%rax)	#, pfile_1(D)->opts.warn_traditional
.L305:
	.loc 1 1825 0
	movq	-8(%rbp), %rax	# pfile, tmp89
	movq	728(%rax), %rax	# pfile_1(D)->opts.user_label_prefix, D.9382
	testq	%rax, %rax	# D.9382
	jne	.L306	#,
	.loc 1 1826 0
	movq	-8(%rbp), %rax	# pfile, tmp90
	movq	$.LC17, 728(%rax)	#, pfile_1(D)->opts.user_label_prefix
.L306:
	.loc 1 1830 0
	movq	-8(%rbp), %rax	# pfile, tmp91
	movzbl	771(%rax), %eax	# pfile_1(D)->opts.preprocessed, D.9381
	testb	%al, %al	# D.9381
	je	.L307	#,
	.loc 1 1831 0
	movq	-8(%rbp), %rax	# pfile, tmp92
	movb	$1, 15(%rax)	#, pfile_1(D)->state.prevent_expansion
.L307:
	.loc 1 1835 0
	movq	-8(%rbp), %rax	# pfile, tmp93
	movzbl	774(%rax), %eax	# pfile_1(D)->opts.dump_macros, D.9381
	cmpb	$1, %al	#, D.9381
	jne	.L308	#,
	.loc 1 1836 0
	movq	-8(%rbp), %rax	# pfile, tmp94
	movb	$1, 763(%rax)	#, pfile_1(D)->opts.no_output
.L308:
	.loc 1 1841 0
	movq	-8(%rbp), %rax	# pfile, tmp95
	movzbl	763(%rax), %eax	# pfile_1(D)->opts.no_output, D.9381
	testb	%al, %al	# D.9381
	je	.L309	#,
	.loc 1 1843 0
	movq	-8(%rbp), %rax	# pfile, tmp96
	movzbl	774(%rax), %eax	# pfile_1(D)->opts.dump_macros, D.9381
	cmpb	$1, %al	#, D.9381
	je	.L310	#,
	.loc 1 1844 0
	movq	-8(%rbp), %rax	# pfile, tmp97
	movb	$0, 774(%rax)	#, pfile_1(D)->opts.dump_macros
.L310:
	.loc 1 1845 0
	movq	-8(%rbp), %rax	# pfile, tmp98
	movb	$0, 775(%rax)	#, pfile_1(D)->opts.dump_includes
.L309:
	.loc 1 1851 0
	movq	-8(%rbp), %rax	# pfile, tmp99
	movq	%rax, %rdi	# tmp99,
	call	init_dependency_output	#
	.loc 1 1855 0
	movq	-8(%rbp), %rax	# pfile, tmp100
	movzbl	749(%rax), %eax	# pfile_1(D)->opts.print_deps, D.9381
	testb	%al, %al	# D.9381
	jne	.L299	#,
	.loc 1 1856 0 discriminator 1
	movq	-8(%rbp), %rax	# pfile, tmp101
	movzbl	751(%rax), %eax	# pfile_1(D)->opts.print_deps_missing_files, D.9381
	.loc 1 1855 0 discriminator 1
	testb	%al, %al	# D.9381
	jne	.L312	#,
	.loc 1 1857 0
	movq	-8(%rbp), %rax	# pfile, tmp102
	movq	680(%rax), %rax	# pfile_1(D)->opts.deps_file, D.9382
	testq	%rax, %rax	# D.9382
	jne	.L312	#,
	.loc 1 1858 0
	movq	-8(%rbp), %rax	# pfile, tmp103
	movzbl	750(%rax), %eax	# pfile_1(D)->opts.deps_phony_targets, D.9381
	testb	%al, %al	# D.9381
	je	.L299	#,
.L312:
	.loc 1 1859 0
	movq	-8(%rbp), %rax	# pfile, tmp104
	movl	$.LC159, %esi	#,
	movq	%rax, %rdi	# tmp104,
	movl	$0, %eax	#,
	call	cpp_fatal	#
.L299:
	.loc 1 1860 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	cpp_post_options, .-cpp_post_options
	.section	.rodata
.LC160:
	.string	"DEPENDENCIES_OUTPUT"
.LC161:
	.string	"SUNPRO_DEPENDENCIES"
	.text
	.type	init_dependency_output, @function
init_dependency_output:
.LFB33:
	.loc 1 1867 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# pfile, pfile
	.loc 1 1875 0
	movq	-40(%rbp), %rax	# pfile, tmp79
	movzbl	749(%rax), %eax	# pfile_3(D)->opts.print_deps, D.9387
	testb	%al, %al	# D.9387
	jne	.L314	#,
	.loc 1 1877 0
	movl	$.LC160, %edi	#,
	call	getenv	#
	movq	%rax, -24(%rbp)	# tmp80, spec
	.loc 1 1878 0
	cmpq	$0, -24(%rbp)	#, spec
	je	.L315	#,
	.loc 1 1879 0
	movq	-40(%rbp), %rax	# pfile, tmp81
	movb	$1, 749(%rax)	#, pfile_3(D)->opts.print_deps
	jmp	.L316	#
.L315:
	.loc 1 1882 0
	movl	$.LC161, %edi	#,
	call	getenv	#
	movq	%rax, -24(%rbp)	# tmp82, spec
	.loc 1 1883 0
	cmpq	$0, -24(%rbp)	#, spec
	je	.L317	#,
	.loc 1 1884 0
	movq	-40(%rbp), %rax	# pfile, tmp83
	movb	$2, 749(%rax)	#, pfile_3(D)->opts.print_deps
	jmp	.L316	#
.L317:
	.loc 1 1886 0
	jmp	.L313	#
.L316:
	.loc 1 1890 0
	movq	-24(%rbp), %rax	# spec, tmp84
	movl	$32, %esi	#,
	movq	%rax, %rdi	# tmp84,
	call	strchr	#
	movq	%rax, -8(%rbp)	# tmp85, s
	.loc 1 1891 0
	cmpq	$0, -8(%rbp)	#, s
	je	.L319	#,
	.loc 1 1894 0
	movq	-8(%rbp), %rax	# s, tmp86
	leaq	1(%rax), %rcx	#, D.9388
	movq	-40(%rbp), %rax	# pfile, tmp87
	movq	392(%rax), %rax	# pfile_3(D)->deps, D.9389
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# D.9388,
	movq	%rax, %rdi	# D.9389,
	call	deps_add_target	#
	.loc 1 1895 0
	movq	-8(%rbp), %rdx	# s, s.32
	movq	-24(%rbp), %rax	# spec, spec.33
	subq	%rax, %rdx	# spec.33, D.9390
	movq	%rdx, %rax	# D.9390, D.9390
	addq	$1, %rax	#, D.9390
	movq	%rax, %rdi	# D.9391,
	call	xmalloc	#
	movq	%rax, -16(%rbp)	# tmp88, output_file
	.loc 1 1896 0
	movq	-8(%rbp), %rdx	# s, s.34
	movq	-24(%rbp), %rax	# spec, spec.35
	subq	%rax, %rdx	# spec.35, D.9390
	movq	%rdx, %rax	# D.9390, D.9390
	movq	%rax, %rdx	# D.9390, D.9391
	movq	-24(%rbp), %rcx	# spec, tmp89
	movq	-16(%rbp), %rax	# output_file, tmp90
	movq	%rcx, %rsi	# tmp89,
	movq	%rax, %rdi	# tmp90,
	call	memcpy	#
	.loc 1 1897 0
	movq	-8(%rbp), %rdx	# s, s.36
	movq	-24(%rbp), %rax	# spec, spec.37
	subq	%rax, %rdx	# spec.37, D.9390
	movq	%rdx, %rax	# D.9390, D.9390
	movq	%rax, %rdx	# D.9390, D.9392
	movq	-16(%rbp), %rax	# output_file, tmp91
	addq	%rdx, %rax	# D.9392, D.9393
	movb	$0, (%rax)	#, *_24
	jmp	.L320	#
.L319:
	.loc 1 1900 0
	movq	-24(%rbp), %rax	# spec, tmp92
	movq	%rax, -16(%rbp)	# tmp92, output_file
.L320:
	.loc 1 1903 0
	movq	-40(%rbp), %rax	# pfile, tmp93
	movq	680(%rax), %rax	# pfile_3(D)->opts.deps_file, D.9388
	testq	%rax, %rax	# D.9388
	jne	.L321	#,
	.loc 1 1904 0
	movq	-40(%rbp), %rax	# pfile, tmp94
	movq	-16(%rbp), %rdx	# output_file, tmp95
	movq	%rdx, 680(%rax)	# tmp95, pfile_3(D)->opts.deps_file
.L321:
	.loc 1 1906 0
	movq	-40(%rbp), %rax	# pfile, tmp96
	movb	$1, 752(%rax)	#, pfile_3(D)->opts.print_deps_append
	jmp	.L313	#
.L314:
	.loc 1 1908 0
	movq	-40(%rbp), %rax	# pfile, tmp97
	movq	680(%rax), %rax	# pfile_3(D)->opts.deps_file, D.9388
	testq	%rax, %rax	# D.9388
	jne	.L313	#,
	.loc 1 1911 0
	movq	-40(%rbp), %rax	# pfile, tmp98
	movq	656(%rax), %rdx	# pfile_3(D)->opts.out_fname, D.9388
	movq	-40(%rbp), %rax	# pfile, tmp99
	movq	%rdx, 680(%rax)	# D.9388, pfile_3(D)->opts.deps_file
.L313:
	.loc 1 1912 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	init_dependency_output, .-init_dependency_output
	.section	.rodata
	.align 8
.LC162:
	.ascii	"Switches:\n  -include <file>           Include the contents "
	.ascii	"of <file> before other files\n  -imacros <file>           Ac"
	.ascii	"cept definition of macros in <file>\n  -iprefix <path>      "
	.ascii	"     Specify <path> as a "
	.string	"prefix for next two options\n  -iwithprefix <dir>        Add <dir> to the end of the system include path\n  -iwithprefixbefore <dir>  Add <dir> to the end of the main include path\n  -isystem <dir>            Add <dir> to the start of the system include path\n"
	.align 8
.LC163:
	.ascii	"  -idirafter <dir>          Add <dir> to the end of the syst"
	.ascii	"em include path\n  -I <dir>                  Add <dir> to th"
	.ascii	"e end of the main include path\n  -I-                       "
	.ascii	"Fine-grained include path control; see info docs\n  -nostdin"
	.ascii	"c         "
	.string	"        Do not search system include directories\n                             (dirs specified with -isystem will still be used)\n  -nostdinc++               Do not search system include directories for C++\n  -o <file>                 Put output into <file>\n"
	.align 8
.LC164:
	.ascii	"  -pedantic                 Issue all warnings demanded by s"
	.ascii	"trict ISO C\n  -"
	.string	"pedantic-errors          Issue -pedantic warnings as errors instead\n  -trigraphs                Support ISO C trigraphs\n  -lang-c                   Assume that the input sources are in C\n  -lang-c89                 Assume that the input sources are in C89\n"
	.align 8
.LC165:
	.ascii	"  -lang-c++                 Assume that th"
	.string	"e input sources are in C++\n  -lang-objc                Assume that the input sources are in ObjectiveC\n  -lang-objc++              Assume that the input sources are in ObjectiveC++\n  -lang-asm                 Assume that the input sources are in assembler\n"
	.align 8
.LC166:
	.ascii	"  -std=<std name>           Specify the conformance standard"
	.ascii	"; one of:\n                            gnu89, gnu99, c89, c9"
	.ascii	"9, iso9899:1990,\n                            iso9899:199409"
	.ascii	", iso9899:1999\n  -+                        Allow parsing of"
	.ascii	" C++ "
	.string	"style features\n  -w                        Inhibit warning messages\n  -Wtrigraphs               Warn if trigraphs are encountered\n  -Wno-trigraphs            Do not warn about trigraphs\n  -Wcomment{s}              Warn if one comment starts inside another\n"
	.align 8
.LC167:
	.ascii	"  -Wno-comment{s}           Do not warn about comments\n  -W"
	.ascii	"traditional             Warn about features not present in t"
	.ascii	"raditional C\n  -Wno-traditiona"
	.string	"l          Do not warn about traditional C\n  -Wundef                   Warn if an undefined macro is used by #if\n  -Wno-undef                Do not warn about testing undefined macros\n  -Wimport                  Warn about the use of the #import directive\n"
	.align 8
.LC168:
	.ascii	"  -Wno-import               Do not warn about the use of #im"
	.ascii	"port\n  -Werror                   Treat all warnings as erro"
	.ascii	"rs\n  -W"
	.string	"no-error                Do not treat warnings as errors\n  -Wsystem-headers          Do not suppress warnings from system headers\n  -Wno-system-headers       Suppress warnings from system headers\n  -Wall                     Enable all preprocessor warnings\n"
	.align 8
.LC169:
	.ascii	"  -M                        Generate make dependencies\n  -M"
	.ascii	"M                       As -M, but ignore system header file"
	.ascii	"s\n  -MD                "
	.string	"       Generate make dependencies and compile\n  -MMD                      As -MD, but ignore system header files\n  -MF <file>                Write dependency output to the given file\n  -MG                       Treat missing header file as generated files\n"
	.align 8
.LC170:
	.string	"  -MP\t\t\t    Generate phony targets for all headers\n  -MQ <target>              Add a MAKE-quoted target\n  -MT <target>              Add an unquoted target\n"
	.align 8
.LC171:
	.ascii	"  -D<macro>                 Define a <macro> with string '1'"
	.ascii	" as its value\n  -D<macro>=<val>           Define a <m"
	.string	"acro> with <val> as its value\n  -A<question>=<answer>     Assert the <answer> to <question>\n  -A-<question>=<answer>    Disable the <answer> to <question>\n  -U<macro>                 Undefine <macro> \n  -v                        Display the version number\n"
	.align 8
.LC172:
	.ascii	"  -H                        Print the name of header files a"
	.ascii	"s they are used\n  -C                        Do not discard "
	.ascii	"comments\n  -dM                       Displ"
	.string	"ay a list of macro definitions active at end\n  -dD                       Preserve macro definitions in output\n  -dN                       As -dD except that only the names are preserved\n  -dI                       Include #include directives in the output\n"
	.align 8
.LC173:
	.ascii	"  -fpreprocessed            Treat the input file as already "
	.ascii	"preprocessed\n  -ftabstop=<number>        Distance between t"
	.ascii	"ab stops for column reporting\n  -P                        D"
	.ascii	"o not gener"
	.string	"ate #line directives\n  -$                        Do not allow '$' in identifiers\n  -remap                    Remap file names when including files\n  --version                 Display version information\n  -h or --help              Display this information\n"
	.text
	.type	print_help, @function
print_help:
.LFB34:
	.loc 1 1917 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 1920 0
	movq	stdout(%rip), %rax	# stdout, stdout.38
	movq	%rax, %rcx	# stdout.38,
	movl	$458, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC162, %edi	#,
	call	fwrite	#
	.loc 1 1929 0
	movq	stdout(%rip), %rax	# stdout, stdout.39
	movq	%rax, %rcx	# stdout.39,
	movl	$503, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC163, %edi	#,
	call	fwrite	#
	.loc 1 1938 0
	movq	stdout(%rip), %rax	# stdout, stdout.40
	movq	%rax, %rcx	# stdout.40,
	movl	$331, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC164, %edi	#,
	call	fwrite	#
	.loc 1 1945 0
	movq	stdout(%rip), %rax	# stdout, stdout.41
	movq	%rax, %rcx	# stdout.41,
	movl	$298, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC165, %edi	#,
	call	fwrite	#
	.loc 1 1951 0
	movq	stdout(%rip), %rax	# stdout, stdout.42
	movq	%rax, %rcx	# stdout.42,
	movl	$498, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC166, %edi	#,
	call	fwrite	#
	.loc 1 1961 0
	movq	stdout(%rip), %rax	# stdout, stdout.43
	movq	%rax, %rcx	# stdout.43,
	movl	$405, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC167, %edi	#,
	call	fwrite	#
	.loc 1 1969 0
	movq	stdout(%rip), %rax	# stdout, stdout.44
	movq	%rax, %rcx	# stdout.44,
	movl	$382, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC168, %edi	#,
	call	fwrite	#
	.loc 1 1977 0
	movq	stdout(%rip), %rax	# stdout, stdout.45
	movq	%rax, %rcx	# stdout.45,
	movl	$398, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC169, %edi	#,
	call	fwrite	#
	.loc 1 1985 0
	movq	stdout(%rip), %rax	# stdout, stdout.46
	movq	%rax, %rcx	# stdout.46,
	movl	$155, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC170, %edi	#,
	call	fwrite	#
	.loc 1 1990 0
	movq	stdout(%rip), %rax	# stdout, stdout.47
	movq	%rax, %rcx	# stdout.47,
	movl	$369, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC171, %edi	#,
	call	fwrite	#
	.loc 1 1998 0
	movq	stdout(%rip), %rax	# stdout, stdout.48
	movq	%rax, %rcx	# stdout.48,
	movl	$417, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC172, %edi	#,
	call	fwrite	#
	.loc 1 2006 0
	movq	stdout(%rip), %rax	# stdout, stdout.49
	movq	%rax, %rcx	# stdout.49,
	movl	$445, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC173, %edi	#,
	call	fwrite	#
	.loc 1 2015 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	print_help, .-print_help
	.local	initialized.7822
	.comm	initialized.7822,4,4
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
	.file 14 "cppdefault.h"
	.file 15 "version.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x2682
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF568
	.byte	0x1
	.long	.LASF569
	.long	.LASF570
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	0x32
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.long	.LASF1
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.long	.LASF2
	.uleb128 0x6
	.long	.LASF8
	.byte	0x2
	.byte	0xd4
	.long	0x5b
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.long	.LASF3
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x4
	.byte	0x2
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
	.uleb128 0x6
	.long	.LASF9
	.byte	0x3
	.byte	0x85
	.long	0x5b
	.uleb128 0x6
	.long	.LASF10
	.byte	0x3
	.byte	0x86
	.long	0x40
	.uleb128 0x6
	.long	.LASF11
	.byte	0x3
	.byte	0x87
	.long	0x40
	.uleb128 0x6
	.long	.LASF12
	.byte	0x3
	.byte	0x88
	.long	0x5b
	.uleb128 0x6
	.long	.LASF13
	.byte	0x3
	.byte	0x8a
	.long	0x40
	.uleb128 0x6
	.long	.LASF14
	.byte	0x3
	.byte	0x8b
	.long	0x5b
	.uleb128 0x6
	.long	.LASF15
	.byte	0x3
	.byte	0x8c
	.long	0x49
	.uleb128 0x6
	.long	.LASF16
	.byte	0x3
	.byte	0x8d
	.long	0x49
	.uleb128 0x6
	.long	.LASF17
	.byte	0x3
	.byte	0x94
	.long	0x49
	.uleb128 0x6
	.long	.LASF18
	.byte	0x3
	.byte	0xa2
	.long	0x49
	.uleb128 0x6
	.long	.LASF19
	.byte	0x3
	.byte	0xa7
	.long	0x49
	.uleb128 0x6
	.long	.LASF20
	.byte	0x3
	.byte	0xb8
	.long	0x49
	.uleb128 0x7
	.byte	0x8
	.long	0x108
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.long	.LASF21
	.uleb128 0x6
	.long	.LASF22
	.byte	0x4
	.byte	0x30
	.long	0x11a
	.uleb128 0x8
	.long	.LASF52
	.byte	0xd8
	.byte	0x5
	.byte	0xf6
	.long	0x29b
	.uleb128 0x9
	.long	.LASF23
	.byte	0x5
	.byte	0xf7
	.long	0x32
	.byte	0
	.uleb128 0x9
	.long	.LASF24
	.byte	0x5
	.byte	0xfc
	.long	0x102
	.byte	0x8
	.uleb128 0x9
	.long	.LASF25
	.byte	0x5
	.byte	0xfd
	.long	0x102
	.byte	0x10
	.uleb128 0x9
	.long	.LASF26
	.byte	0x5
	.byte	0xfe
	.long	0x102
	.byte	0x18
	.uleb128 0x9
	.long	.LASF27
	.byte	0x5
	.byte	0xff
	.long	0x102
	.byte	0x20
	.uleb128 0xa
	.long	.LASF28
	.byte	0x5
	.value	0x100
	.long	0x102
	.byte	0x28
	.uleb128 0xa
	.long	.LASF29
	.byte	0x5
	.value	0x101
	.long	0x102
	.byte	0x30
	.uleb128 0xa
	.long	.LASF30
	.byte	0x5
	.value	0x102
	.long	0x102
	.byte	0x38
	.uleb128 0xa
	.long	.LASF31
	.byte	0x5
	.value	0x103
	.long	0x102
	.byte	0x40
	.uleb128 0xa
	.long	.LASF32
	.byte	0x5
	.value	0x105
	.long	0x102
	.byte	0x48
	.uleb128 0xa
	.long	.LASF33
	.byte	0x5
	.value	0x106
	.long	0x102
	.byte	0x50
	.uleb128 0xa
	.long	.LASF34
	.byte	0x5
	.value	0x107
	.long	0x102
	.byte	0x58
	.uleb128 0xa
	.long	.LASF35
	.byte	0x5
	.value	0x109
	.long	0x2e3
	.byte	0x60
	.uleb128 0xa
	.long	.LASF36
	.byte	0x5
	.value	0x10b
	.long	0x2e9
	.byte	0x68
	.uleb128 0xa
	.long	.LASF37
	.byte	0x5
	.value	0x10d
	.long	0x32
	.byte	0x70
	.uleb128 0xa
	.long	.LASF38
	.byte	0x5
	.value	0x111
	.long	0x32
	.byte	0x74
	.uleb128 0xa
	.long	.LASF39
	.byte	0x5
	.value	0x113
	.long	0xc0
	.byte	0x78
	.uleb128 0xa
	.long	.LASF40
	.byte	0x5
	.value	0x117
	.long	0x69
	.byte	0x80
	.uleb128 0xa
	.long	.LASF41
	.byte	0x5
	.value	0x118
	.long	0x70
	.byte	0x82
	.uleb128 0xa
	.long	.LASF42
	.byte	0x5
	.value	0x119
	.long	0x2ef
	.byte	0x83
	.uleb128 0xa
	.long	.LASF43
	.byte	0x5
	.value	0x11d
	.long	0x2ff
	.byte	0x88
	.uleb128 0xa
	.long	.LASF44
	.byte	0x5
	.value	0x126
	.long	0xcb
	.byte	0x90
	.uleb128 0xa
	.long	.LASF45
	.byte	0x5
	.value	0x12f
	.long	0x47
	.byte	0x98
	.uleb128 0xa
	.long	.LASF46
	.byte	0x5
	.value	0x130
	.long	0x47
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF47
	.byte	0x5
	.value	0x131
	.long	0x47
	.byte	0xa8
	.uleb128 0xa
	.long	.LASF48
	.byte	0x5
	.value	0x132
	.long	0x47
	.byte	0xb0
	.uleb128 0xa
	.long	.LASF49
	.byte	0x5
	.value	0x133
	.long	0x50
	.byte	0xb8
	.uleb128 0xa
	.long	.LASF50
	.byte	0x5
	.value	0x135
	.long	0x32
	.byte	0xc0
	.uleb128 0xa
	.long	.LASF51
	.byte	0x5
	.value	0x137
	.long	0x305
	.byte	0xc4
	.byte	0
	.uleb128 0xb
	.long	0x108
	.long	0x2ab
	.uleb128 0xc
	.long	0x39
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.long	.LASF571
	.byte	0x5
	.byte	0x9b
	.uleb128 0x8
	.long	.LASF53
	.byte	0x18
	.byte	0x5
	.byte	0xa1
	.long	0x2e3
	.uleb128 0x9
	.long	.LASF54
	.byte	0x5
	.byte	0xa2
	.long	0x2e3
	.byte	0
	.uleb128 0x9
	.long	.LASF55
	.byte	0x5
	.byte	0xa3
	.long	0x2e9
	.byte	0x8
	.uleb128 0x9
	.long	.LASF56
	.byte	0x5
	.byte	0xa7
	.long	0x32
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x2b2
	.uleb128 0x7
	.byte	0x8
	.long	0x11a
	.uleb128 0xb
	.long	0x108
	.long	0x2ff
	.uleb128 0xc
	.long	0x39
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x2ab
	.uleb128 0xb
	.long	0x108
	.long	0x315
	.uleb128 0xc
	.long	0x39
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x31b
	.uleb128 0x2
	.long	0x108
	.uleb128 0x6
	.long	.LASF57
	.byte	0x6
	.byte	0x30
	.long	0x9f
	.uleb128 0x6
	.long	.LASF58
	.byte	0x6
	.byte	0x3c
	.long	0x7e
	.uleb128 0x8
	.long	.LASF59
	.byte	0x10
	.byte	0x7
	.byte	0x78
	.long	0x35b
	.uleb128 0x9
	.long	.LASF60
	.byte	0x7
	.byte	0x7a
	.long	0xd6
	.byte	0
	.uleb128 0x9
	.long	.LASF61
	.byte	0x7
	.byte	0x7b
	.long	0xf7
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.long	.LASF62
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.long	.LASF63
	.uleb128 0x8
	.long	.LASF64
	.byte	0x90
	.byte	0x8
	.byte	0x2e
	.long	0x42a
	.uleb128 0x9
	.long	.LASF65
	.byte	0x8
	.byte	0x30
	.long	0x7e
	.byte	0
	.uleb128 0x9
	.long	.LASF66
	.byte	0x8
	.byte	0x35
	.long	0x9f
	.byte	0x8
	.uleb128 0x9
	.long	.LASF67
	.byte	0x8
	.byte	0x3d
	.long	0xb5
	.byte	0x10
	.uleb128 0x9
	.long	.LASF68
	.byte	0x8
	.byte	0x3e
	.long	0xaa
	.byte	0x18
	.uleb128 0x9
	.long	.LASF69
	.byte	0x8
	.byte	0x40
	.long	0x89
	.byte	0x1c
	.uleb128 0x9
	.long	.LASF70
	.byte	0x8
	.byte	0x41
	.long	0x94
	.byte	0x20
	.uleb128 0x9
	.long	.LASF71
	.byte	0x8
	.byte	0x43
	.long	0x32
	.byte	0x24
	.uleb128 0x9
	.long	.LASF72
	.byte	0x8
	.byte	0x45
	.long	0x7e
	.byte	0x28
	.uleb128 0x9
	.long	.LASF73
	.byte	0x8
	.byte	0x4a
	.long	0xc0
	.byte	0x30
	.uleb128 0x9
	.long	.LASF74
	.byte	0x8
	.byte	0x4e
	.long	0xe1
	.byte	0x38
	.uleb128 0x9
	.long	.LASF75
	.byte	0x8
	.byte	0x50
	.long	0xec
	.byte	0x40
	.uleb128 0x9
	.long	.LASF76
	.byte	0x8
	.byte	0x5b
	.long	0x336
	.byte	0x48
	.uleb128 0x9
	.long	.LASF77
	.byte	0x8
	.byte	0x5c
	.long	0x336
	.byte	0x58
	.uleb128 0x9
	.long	.LASF78
	.byte	0x8
	.byte	0x5d
	.long	0x336
	.byte	0x68
	.uleb128 0x9
	.long	.LASF79
	.byte	0x8
	.byte	0x6a
	.long	0x42a
	.byte	0x78
	.byte	0
	.uleb128 0xb
	.long	0xf7
	.long	0x43a
	.uleb128 0xc
	.long	0x39
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.long	.LASF80
	.byte	0x18
	.byte	0x9
	.byte	0xa1
	.long	0x46b
	.uleb128 0x9
	.long	.LASF81
	.byte	0x9
	.byte	0xa3
	.long	0x102
	.byte	0
	.uleb128 0x9
	.long	.LASF82
	.byte	0x9
	.byte	0xa4
	.long	0x46b
	.byte	0x8
	.uleb128 0x9
	.long	.LASF83
	.byte	0x9
	.byte	0xa5
	.long	0x29b
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x43a
	.uleb128 0x8
	.long	.LASF84
	.byte	0x58
	.byte	0x9
	.byte	0xa8
	.long	0x523
	.uleb128 0x9
	.long	.LASF85
	.byte	0x9
	.byte	0xaa
	.long	0x49
	.byte	0
	.uleb128 0x9
	.long	.LASF86
	.byte	0x9
	.byte	0xab
	.long	0x46b
	.byte	0x8
	.uleb128 0x9
	.long	.LASF87
	.byte	0x9
	.byte	0xac
	.long	0x102
	.byte	0x10
	.uleb128 0x9
	.long	.LASF88
	.byte	0x9
	.byte	0xad
	.long	0x102
	.byte	0x18
	.uleb128 0x9
	.long	.LASF89
	.byte	0x9
	.byte	0xae
	.long	0x102
	.byte	0x20
	.uleb128 0x9
	.long	.LASF90
	.byte	0x9
	.byte	0xaf
	.long	0x49
	.byte	0x28
	.uleb128 0x9
	.long	.LASF91
	.byte	0x9
	.byte	0xb0
	.long	0x32
	.byte	0x30
	.uleb128 0x9
	.long	.LASF92
	.byte	0x9
	.byte	0xb5
	.long	0x537
	.byte	0x38
	.uleb128 0x9
	.long	.LASF93
	.byte	0x9
	.byte	0xb6
	.long	0x54d
	.byte	0x40
	.uleb128 0x9
	.long	.LASF94
	.byte	0x9
	.byte	0xb7
	.long	0x47
	.byte	0x48
	.uleb128 0xe
	.long	.LASF95
	.byte	0x9
	.byte	0xbd
	.long	0x40
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x50
	.uleb128 0xe
	.long	.LASF96
	.byte	0x9
	.byte	0xbe
	.long	0x40
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x50
	.uleb128 0xe
	.long	.LASF97
	.byte	0x9
	.byte	0xc2
	.long	0x40
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x50
	.byte	0
	.uleb128 0xf
	.long	0x46b
	.long	0x537
	.uleb128 0x10
	.long	0x47
	.uleb128 0x10
	.long	0x49
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x523
	.uleb128 0x11
	.long	0x54d
	.uleb128 0x10
	.long	0x47
	.uleb128 0x10
	.long	0x46b
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x53d
	.uleb128 0x8
	.long	.LASF98
	.byte	0x10
	.byte	0xa
	.byte	0x1a
	.long	0x578
	.uleb128 0x12
	.string	"len"
	.byte	0xa
	.byte	0x1c
	.long	0x40
	.byte	0
	.uleb128 0x12
	.string	"str"
	.byte	0xa
	.byte	0x1d
	.long	0x578
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x57e
	.uleb128 0x2
	.long	0x62
	.uleb128 0x6
	.long	.LASF99
	.byte	0xa
	.byte	0x28
	.long	0x58e
	.uleb128 0x13
	.string	"ht"
	.byte	0x80
	.byte	0xa
	.byte	0x2e
	.long	0x5fa
	.uleb128 0x9
	.long	.LASF100
	.byte	0xa
	.byte	0x31
	.long	0x471
	.byte	0
	.uleb128 0x9
	.long	.LASF101
	.byte	0xa
	.byte	0x33
	.long	0x60b
	.byte	0x58
	.uleb128 0x9
	.long	.LASF102
	.byte	0xa
	.byte	0x35
	.long	0x626
	.byte	0x60
	.uleb128 0x9
	.long	.LASF103
	.byte	0xa
	.byte	0x37
	.long	0x40
	.byte	0x68
	.uleb128 0x9
	.long	.LASF104
	.byte	0xa
	.byte	0x38
	.long	0x40
	.byte	0x6c
	.uleb128 0x9
	.long	.LASF105
	.byte	0xa
	.byte	0x3b
	.long	0x853
	.byte	0x70
	.uleb128 0x9
	.long	.LASF106
	.byte	0xa
	.byte	0x3e
	.long	0x40
	.byte	0x78
	.uleb128 0x9
	.long	.LASF107
	.byte	0xa
	.byte	0x3f
	.long	0x40
	.byte	0x7c
	.byte	0
	.uleb128 0x6
	.long	.LASF108
	.byte	0xa
	.byte	0x29
	.long	0x605
	.uleb128 0x7
	.byte	0x8
	.long	0x553
	.uleb128 0x7
	.byte	0x8
	.long	0x5fa
	.uleb128 0xf
	.long	0x5fa
	.long	0x620
	.uleb128 0x10
	.long	0x620
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x583
	.uleb128 0x7
	.byte	0x8
	.long	0x611
	.uleb128 0x14
	.long	.LASF109
	.value	0x340
	.byte	0xb
	.byte	0xe1
	.long	0x853
	.uleb128 0x9
	.long	.LASF110
	.byte	0xb
	.byte	0xe4
	.long	0x156e
	.byte	0
	.uleb128 0x9
	.long	.LASF111
	.byte	0xb
	.byte	0xe7
	.long	0x1490
	.byte	0x8
	.uleb128 0x9
	.long	.LASF112
	.byte	0xb
	.byte	0xea
	.long	0x8d0
	.byte	0x18
	.uleb128 0x12
	.string	"map"
	.byte	0xb
	.byte	0xeb
	.long	0x11e6
	.byte	0x38
	.uleb128 0x9
	.long	.LASF113
	.byte	0xb
	.byte	0xec
	.long	0x40
	.byte	0x40
	.uleb128 0x9
	.long	.LASF114
	.byte	0xb
	.byte	0xef
	.long	0x40
	.byte	0x44
	.uleb128 0x9
	.long	.LASF115
	.byte	0xb
	.byte	0xf2
	.long	0x148a
	.byte	0x48
	.uleb128 0x9
	.long	.LASF116
	.byte	0xb
	.byte	0xf3
	.long	0x148a
	.byte	0x50
	.uleb128 0x9
	.long	.LASF117
	.byte	0xb
	.byte	0xf4
	.long	0x148a
	.byte	0x58
	.uleb128 0x9
	.long	.LASF118
	.byte	0xb
	.byte	0xf7
	.long	0x1423
	.byte	0x60
	.uleb128 0x9
	.long	.LASF119
	.byte	0xb
	.byte	0xf8
	.long	0x1574
	.byte	0x98
	.uleb128 0x9
	.long	.LASF120
	.byte	0xb
	.byte	0xfb
	.long	0x157f
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF121
	.byte	0xb
	.byte	0xfe
	.long	0x158a
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF122
	.byte	0xb
	.byte	0xff
	.long	0x158a
	.byte	0xb0
	.uleb128 0xa
	.long	.LASF123
	.byte	0xb
	.value	0x100
	.long	0x92b
	.byte	0xb8
	.uleb128 0xa
	.long	.LASF124
	.byte	0xb
	.value	0x103
	.long	0x1412
	.byte	0xc0
	.uleb128 0xa
	.long	.LASF125
	.byte	0xb
	.value	0x104
	.long	0x13c4
	.byte	0xc8
	.uleb128 0xa
	.long	.LASF126
	.byte	0xb
	.value	0x104
	.long	0x140c
	.byte	0xe8
	.uleb128 0xa
	.long	.LASF127
	.byte	0xb
	.value	0x105
	.long	0x40
	.byte	0xf0
	.uleb128 0xa
	.long	.LASF128
	.byte	0xb
	.value	0x108
	.long	0x40
	.byte	0xf4
	.uleb128 0xa
	.long	.LASF129
	.byte	0xb
	.value	0x10b
	.long	0x40
	.byte	0xf8
	.uleb128 0xa
	.long	.LASF130
	.byte	0xb
	.value	0x10f
	.long	0x40
	.byte	0xfc
	.uleb128 0x15
	.long	.LASF131
	.byte	0xb
	.value	0x110
	.long	0x40
	.value	0x100
	.uleb128 0x15
	.long	.LASF132
	.byte	0xb
	.value	0x113
	.long	0x1365
	.value	0x108
	.uleb128 0x15
	.long	.LASF133
	.byte	0xb
	.value	0x114
	.long	0x40
	.value	0x110
	.uleb128 0x15
	.long	.LASF134
	.byte	0xb
	.value	0x117
	.long	0x159a
	.value	0x118
	.uleb128 0x15
	.long	.LASF135
	.byte	0xb
	.value	0x11b
	.long	0x40
	.value	0x120
	.uleb128 0x15
	.long	.LASF136
	.byte	0xb
	.value	0x11e
	.long	0xca8
	.value	0x128
	.uleb128 0x15
	.long	.LASF137
	.byte	0xb
	.value	0x11f
	.long	0xca8
	.value	0x140
	.uleb128 0x15
	.long	.LASF138
	.byte	0xb
	.value	0x122
	.long	0xca8
	.value	0x158
	.uleb128 0x16
	.string	"eof"
	.byte	0xb
	.value	0x123
	.long	0xca8
	.value	0x170
	.uleb128 0x15
	.long	.LASF139
	.byte	0xb
	.value	0x126
	.long	0x15a5
	.value	0x188
	.uleb128 0x15
	.long	.LASF140
	.byte	0xb
	.value	0x12a
	.long	0x471
	.value	0x190
	.uleb128 0x15
	.long	.LASF141
	.byte	0xb
	.value	0x12e
	.long	0x471
	.value	0x1e8
	.uleb128 0x15
	.long	.LASF142
	.byte	0xb
	.value	0x132
	.long	0x15b0
	.value	0x240
	.uleb128 0x16
	.string	"cb"
	.byte	0xb
	.value	0x135
	.long	0xdb6
	.value	0x248
	.uleb128 0x15
	.long	.LASF99
	.byte	0xb
	.value	0x138
	.long	0x15b6
	.value	0x280
	.uleb128 0x15
	.long	.LASF143
	.byte	0xb
	.value	0x13b
	.long	0xa15
	.value	0x288
	.uleb128 0x15
	.long	.LASF144
	.byte	0xb
	.value	0x13f
	.long	0x1509
	.value	0x310
	.uleb128 0x15
	.long	.LASF145
	.byte	0xb
	.value	0x143
	.long	0x62
	.value	0x338
	.uleb128 0x15
	.long	.LASF146
	.byte	0xb
	.value	0x146
	.long	0x62
	.value	0x339
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x62c
	.uleb128 0x17
	.long	.LASF246
	.byte	0x4
	.byte	0xc
	.byte	0x1f
	.long	0x878
	.uleb128 0x18
	.long	.LASF147
	.sleb128 0
	.uleb128 0x18
	.long	.LASF148
	.sleb128 1
	.uleb128 0x18
	.long	.LASF149
	.sleb128 2
	.byte	0
	.uleb128 0x8
	.long	.LASF150
	.byte	0x18
	.byte	0xc
	.byte	0x29
	.long	0x8d0
	.uleb128 0x9
	.long	.LASF151
	.byte	0xc
	.byte	0x2b
	.long	0x315
	.byte	0
	.uleb128 0x9
	.long	.LASF152
	.byte	0xc
	.byte	0x2c
	.long	0x40
	.byte	0x8
	.uleb128 0x9
	.long	.LASF153
	.byte	0xc
	.byte	0x2d
	.long	0x40
	.byte	0xc
	.uleb128 0x9
	.long	.LASF154
	.byte	0xc
	.byte	0x2e
	.long	0x32
	.byte	0x10
	.uleb128 0xe
	.long	.LASF155
	.byte	0xc
	.byte	0x2f
	.long	0x40
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x14
	.uleb128 0x9
	.long	.LASF156
	.byte	0xc
	.byte	0x30
	.long	0x62
	.byte	0x15
	.byte	0
	.uleb128 0x8
	.long	.LASF112
	.byte	0x20
	.byte	0xc
	.byte	0x34
	.long	0x925
	.uleb128 0x9
	.long	.LASF157
	.byte	0xc
	.byte	0x36
	.long	0x925
	.byte	0
	.uleb128 0x9
	.long	.LASF158
	.byte	0xc
	.byte	0x37
	.long	0x40
	.byte	0x8
	.uleb128 0x9
	.long	.LASF159
	.byte	0xc
	.byte	0x38
	.long	0x40
	.byte	0xc
	.uleb128 0x9
	.long	.LASF160
	.byte	0xc
	.byte	0x3d
	.long	0x32
	.byte	0x10
	.uleb128 0x9
	.long	.LASF161
	.byte	0xc
	.byte	0x40
	.long	0x40
	.byte	0x14
	.uleb128 0x9
	.long	.LASF162
	.byte	0xc
	.byte	0x43
	.long	0x92b
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x878
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.long	.LASF163
	.uleb128 0x6
	.long	.LASF109
	.byte	0xd
	.byte	0x24
	.long	0x62c
	.uleb128 0x6
	.long	.LASF164
	.byte	0xd
	.byte	0x26
	.long	0x948
	.uleb128 0x8
	.long	.LASF164
	.byte	0x90
	.byte	0xb
	.byte	0xa8
	.long	0xa15
	.uleb128 0x12
	.string	"cur"
	.byte	0xb
	.byte	0xaa
	.long	0x578
	.byte	0
	.uleb128 0x9
	.long	.LASF165
	.byte	0xb
	.byte	0xab
	.long	0x578
	.byte	0x8
	.uleb128 0x9
	.long	.LASF166
	.byte	0xb
	.byte	0xac
	.long	0x578
	.byte	0x10
	.uleb128 0x9
	.long	.LASF167
	.byte	0xb
	.byte	0xad
	.long	0x578
	.byte	0x18
	.uleb128 0x9
	.long	.LASF82
	.byte	0xb
	.byte	0xaf
	.long	0x1552
	.byte	0x20
	.uleb128 0x12
	.string	"buf"
	.byte	0xb
	.byte	0xb1
	.long	0x578
	.byte	0x28
	.uleb128 0x12
	.string	"inc"
	.byte	0xb
	.byte	0xb5
	.long	0x155d
	.byte	0x30
	.uleb128 0x9
	.long	.LASF168
	.byte	0xb
	.byte	0xb9
	.long	0x1568
	.byte	0x38
	.uleb128 0x9
	.long	.LASF169
	.byte	0xb
	.byte	0xbc
	.long	0x40
	.byte	0x40
	.uleb128 0x9
	.long	.LASF170
	.byte	0xb
	.byte	0xbf
	.long	0x62
	.byte	0x44
	.uleb128 0x9
	.long	.LASF171
	.byte	0xb
	.byte	0xc3
	.long	0x578
	.byte	0x48
	.uleb128 0x9
	.long	.LASF172
	.byte	0xb
	.byte	0xc9
	.long	0x62
	.byte	0x50
	.uleb128 0x9
	.long	.LASF173
	.byte	0xb
	.byte	0xce
	.long	0x62
	.byte	0x51
	.uleb128 0x9
	.long	.LASF174
	.byte	0xb
	.byte	0xd2
	.long	0x62
	.byte	0x52
	.uleb128 0x9
	.long	.LASF175
	.byte	0xb
	.byte	0xd7
	.long	0x92b
	.byte	0x53
	.uleb128 0x12
	.string	"dir"
	.byte	0xb
	.byte	0xdb
	.long	0x1143
	.byte	0x58
	.byte	0
	.uleb128 0x8
	.long	.LASF176
	.byte	0x88
	.byte	0xd
	.byte	0xcd
	.long	0xca8
	.uleb128 0x9
	.long	.LASF177
	.byte	0xd
	.byte	0xd0
	.long	0x315
	.byte	0
	.uleb128 0x9
	.long	.LASF178
	.byte	0xd
	.byte	0xd1
	.long	0x315
	.byte	0x8
	.uleb128 0x9
	.long	.LASF179
	.byte	0xd
	.byte	0xd4
	.long	0x40
	.byte	0x10
	.uleb128 0x9
	.long	.LASF180
	.byte	0xd
	.byte	0xd7
	.long	0x113d
	.byte	0x18
	.uleb128 0x9
	.long	.LASF181
	.byte	0xd
	.byte	0xdb
	.long	0x315
	.byte	0x20
	.uleb128 0x9
	.long	.LASF182
	.byte	0xd
	.byte	0xde
	.long	0x11a4
	.byte	0x28
	.uleb128 0x9
	.long	.LASF183
	.byte	0xd
	.byte	0xdf
	.long	0x11a4
	.byte	0x30
	.uleb128 0x9
	.long	.LASF184
	.byte	0xd
	.byte	0xe3
	.long	0x11af
	.byte	0x38
	.uleb128 0x9
	.long	.LASF185
	.byte	0xd
	.byte	0xe7
	.long	0x315
	.byte	0x40
	.uleb128 0x9
	.long	.LASF186
	.byte	0xd
	.byte	0xe8
	.long	0x40
	.byte	0x48
	.uleb128 0x9
	.long	.LASF187
	.byte	0xd
	.byte	0xeb
	.long	0x315
	.byte	0x50
	.uleb128 0x9
	.long	.LASF188
	.byte	0xd
	.byte	0xee
	.long	0xfcf
	.byte	0x58
	.uleb128 0x9
	.long	.LASF189
	.byte	0xd
	.byte	0xf1
	.long	0x62
	.byte	0x5c
	.uleb128 0x9
	.long	.LASF190
	.byte	0xd
	.byte	0xf4
	.long	0x62
	.byte	0x5d
	.uleb128 0x9
	.long	.LASF191
	.byte	0xd
	.byte	0xf7
	.long	0x62
	.byte	0x5e
	.uleb128 0x9
	.long	.LASF192
	.byte	0xd
	.byte	0xfa
	.long	0x62
	.byte	0x5f
	.uleb128 0x9
	.long	.LASF193
	.byte	0xd
	.byte	0xfd
	.long	0x62
	.byte	0x60
	.uleb128 0xa
	.long	.LASF194
	.byte	0xd
	.value	0x100
	.long	0x62
	.byte	0x61
	.uleb128 0xa
	.long	.LASF195
	.byte	0xd
	.value	0x103
	.long	0x62
	.byte	0x62
	.uleb128 0xa
	.long	.LASF196
	.byte	0xd
	.value	0x106
	.long	0x62
	.byte	0x63
	.uleb128 0xa
	.long	.LASF197
	.byte	0xd
	.value	0x109
	.long	0x62
	.byte	0x64
	.uleb128 0xa
	.long	.LASF198
	.byte	0xd
	.value	0x10e
	.long	0x62
	.byte	0x65
	.uleb128 0xa
	.long	.LASF199
	.byte	0xd
	.value	0x111
	.long	0x62
	.byte	0x66
	.uleb128 0xa
	.long	.LASF200
	.byte	0xd
	.value	0x115
	.long	0x62
	.byte	0x67
	.uleb128 0xa
	.long	.LASF201
	.byte	0xd
	.value	0x118
	.long	0x62
	.byte	0x68
	.uleb128 0xa
	.long	.LASF202
	.byte	0xd
	.value	0x11b
	.long	0x62
	.byte	0x69
	.uleb128 0xa
	.long	.LASF203
	.byte	0xd
	.value	0x11e
	.long	0x62
	.byte	0x6a
	.uleb128 0xa
	.long	.LASF204
	.byte	0xd
	.value	0x121
	.long	0x62
	.byte	0x6b
	.uleb128 0xa
	.long	.LASF205
	.byte	0xd
	.value	0x124
	.long	0x62
	.byte	0x6c
	.uleb128 0xa
	.long	.LASF206
	.byte	0xd
	.value	0x128
	.long	0x62
	.byte	0x6d
	.uleb128 0xa
	.long	.LASF207
	.byte	0xd
	.value	0x12b
	.long	0x62
	.byte	0x6e
	.uleb128 0xa
	.long	.LASF208
	.byte	0xd
	.value	0x12e
	.long	0x62
	.byte	0x6f
	.uleb128 0xa
	.long	.LASF209
	.byte	0xd
	.value	0x131
	.long	0x62
	.byte	0x70
	.uleb128 0xa
	.long	.LASF210
	.byte	0xd
	.value	0x135
	.long	0x62
	.byte	0x71
	.uleb128 0xa
	.long	.LASF211
	.byte	0xd
	.value	0x138
	.long	0x62
	.byte	0x72
	.uleb128 0xa
	.long	.LASF212
	.byte	0xd
	.value	0x13c
	.long	0x62
	.byte	0x73
	.uleb128 0xa
	.long	.LASF213
	.byte	0xd
	.value	0x140
	.long	0x62
	.byte	0x74
	.uleb128 0xa
	.long	.LASF214
	.byte	0xd
	.value	0x143
	.long	0x62
	.byte	0x75
	.uleb128 0xa
	.long	.LASF215
	.byte	0xd
	.value	0x147
	.long	0x62
	.byte	0x76
	.uleb128 0xa
	.long	.LASF216
	.byte	0xd
	.value	0x14a
	.long	0x62
	.byte	0x77
	.uleb128 0xa
	.long	.LASF217
	.byte	0xd
	.value	0x14d
	.long	0x62
	.byte	0x78
	.uleb128 0x19
	.string	"c99"
	.byte	0xd
	.value	0x150
	.long	0x62
	.byte	0x79
	.uleb128 0xa
	.long	.LASF218
	.byte	0xd
	.value	0x153
	.long	0x62
	.byte	0x7a
	.uleb128 0xa
	.long	.LASF219
	.byte	0xd
	.value	0x157
	.long	0x62
	.byte	0x7b
	.uleb128 0xa
	.long	.LASF220
	.byte	0xd
	.value	0x15a
	.long	0x62
	.byte	0x7c
	.uleb128 0xa
	.long	.LASF221
	.byte	0xd
	.value	0x15d
	.long	0x62
	.byte	0x7d
	.uleb128 0xa
	.long	.LASF222
	.byte	0xd
	.value	0x160
	.long	0x62
	.byte	0x7e
	.uleb128 0xa
	.long	.LASF223
	.byte	0xd
	.value	0x163
	.long	0x62
	.byte	0x7f
	.uleb128 0xa
	.long	.LASF224
	.byte	0xd
	.value	0x166
	.long	0x62
	.byte	0x80
	.uleb128 0xa
	.long	.LASF225
	.byte	0xd
	.value	0x169
	.long	0x62
	.byte	0x81
	.uleb128 0xa
	.long	.LASF226
	.byte	0xd
	.value	0x16e
	.long	0x62
	.byte	0x82
	.byte	0
	.uleb128 0x6
	.long	.LASF227
	.byte	0xd
	.byte	0x28
	.long	0xcb3
	.uleb128 0x8
	.long	.LASF227
	.byte	0x18
	.byte	0xd
	.byte	0xad
	.long	0xcff
	.uleb128 0x9
	.long	.LASF113
	.byte	0xd
	.byte	0xaf
	.long	0x40
	.byte	0
	.uleb128 0x12
	.string	"col"
	.byte	0xd
	.byte	0xb0
	.long	0x69
	.byte	0x4
	.uleb128 0xe
	.long	.LASF228
	.byte	0xd
	.byte	0xb1
	.long	0x40
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0x4
	.uleb128 0x9
	.long	.LASF229
	.byte	0xd
	.byte	0xb2
	.long	0x62
	.byte	0x7
	.uleb128 0x12
	.string	"val"
	.byte	0xd
	.byte	0xbb
	.long	0x1018
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.long	.LASF230
	.byte	0xd
	.byte	0x29
	.long	0xd0a
	.uleb128 0x8
	.long	.LASF230
	.byte	0x10
	.byte	0xd
	.byte	0x9c
	.long	0xd2f
	.uleb128 0x12
	.string	"len"
	.byte	0xd
	.byte	0x9e
	.long	0x40
	.byte	0
	.uleb128 0x9
	.long	.LASF231
	.byte	0xd
	.byte	0x9f
	.long	0x578
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.long	.LASF232
	.byte	0xd
	.byte	0x2a
	.long	0xd3a
	.uleb128 0x1a
	.long	.LASF232
	.byte	0x20
	.byte	0xd
	.value	0x1b7
	.long	0xda6
	.uleb128 0xa
	.long	.LASF233
	.byte	0xd
	.value	0x1b9
	.long	0x553
	.byte	0
	.uleb128 0xa
	.long	.LASF234
	.byte	0xd
	.value	0x1ba
	.long	0x69
	.byte	0x10
	.uleb128 0xa
	.long	.LASF235
	.byte	0xd
	.value	0x1bb
	.long	0x62
	.byte	0x12
	.uleb128 0xa
	.long	.LASF236
	.byte	0xd
	.value	0x1bc
	.long	0x62
	.byte	0x13
	.uleb128 0x1b
	.long	.LASF228
	.byte	0xd
	.value	0x1bd
	.long	0x40
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x14
	.uleb128 0xa
	.long	.LASF229
	.byte	0xd
	.value	0x1be
	.long	0x62
	.byte	0x15
	.uleb128 0xa
	.long	.LASF237
	.byte	0xd
	.value	0x1c6
	.long	0x12cc
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.long	.LASF238
	.byte	0xd
	.byte	0x2b
	.long	0xdb1
	.uleb128 0x1c
	.long	.LASF238
	.uleb128 0x1a
	.long	.LASF239
	.byte	0x38
	.byte	0xd
	.value	0x172
	.long	0xe1f
	.uleb128 0xa
	.long	.LASF240
	.byte	0xd
	.value	0x175
	.long	0x11d0
	.byte	0
	.uleb128 0xa
	.long	.LASF241
	.byte	0xd
	.value	0x176
	.long	0x11f1
	.byte	0x8
	.uleb128 0xa
	.long	.LASF242
	.byte	0xd
	.value	0x177
	.long	0x1211
	.byte	0x10
	.uleb128 0xa
	.long	.LASF243
	.byte	0xd
	.value	0x179
	.long	0x122c
	.byte	0x18
	.uleb128 0xa
	.long	.LASF244
	.byte	0xd
	.value	0x17a
	.long	0x122c
	.byte	0x20
	.uleb128 0xa
	.long	.LASF233
	.byte	0xd
	.value	0x17b
	.long	0x1252
	.byte	0x28
	.uleb128 0xa
	.long	.LASF245
	.byte	0xd
	.value	0x17c
	.long	0x1268
	.byte	0x30
	.byte	0
	.uleb128 0x17
	.long	.LASF247
	.byte	0x4
	.byte	0xd
	.byte	0x8f
	.long	0xfcf
	.uleb128 0x18
	.long	.LASF248
	.sleb128 0
	.uleb128 0x18
	.long	.LASF249
	.sleb128 1
	.uleb128 0x18
	.long	.LASF250
	.sleb128 2
	.uleb128 0x18
	.long	.LASF251
	.sleb128 3
	.uleb128 0x18
	.long	.LASF252
	.sleb128 4
	.uleb128 0x18
	.long	.LASF253
	.sleb128 5
	.uleb128 0x18
	.long	.LASF254
	.sleb128 6
	.uleb128 0x18
	.long	.LASF255
	.sleb128 7
	.uleb128 0x18
	.long	.LASF256
	.sleb128 8
	.uleb128 0x18
	.long	.LASF257
	.sleb128 9
	.uleb128 0x18
	.long	.LASF258
	.sleb128 10
	.uleb128 0x18
	.long	.LASF259
	.sleb128 11
	.uleb128 0x18
	.long	.LASF260
	.sleb128 12
	.uleb128 0x18
	.long	.LASF261
	.sleb128 13
	.uleb128 0x18
	.long	.LASF262
	.sleb128 14
	.uleb128 0x18
	.long	.LASF263
	.sleb128 15
	.uleb128 0x18
	.long	.LASF264
	.sleb128 16
	.uleb128 0x18
	.long	.LASF265
	.sleb128 17
	.uleb128 0x18
	.long	.LASF266
	.sleb128 18
	.uleb128 0x18
	.long	.LASF267
	.sleb128 19
	.uleb128 0x18
	.long	.LASF268
	.sleb128 20
	.uleb128 0x18
	.long	.LASF269
	.sleb128 21
	.uleb128 0x18
	.long	.LASF270
	.sleb128 22
	.uleb128 0x18
	.long	.LASF271
	.sleb128 23
	.uleb128 0x18
	.long	.LASF272
	.sleb128 24
	.uleb128 0x18
	.long	.LASF273
	.sleb128 25
	.uleb128 0x18
	.long	.LASF274
	.sleb128 26
	.uleb128 0x18
	.long	.LASF275
	.sleb128 27
	.uleb128 0x18
	.long	.LASF276
	.sleb128 28
	.uleb128 0x18
	.long	.LASF277
	.sleb128 29
	.uleb128 0x18
	.long	.LASF278
	.sleb128 30
	.uleb128 0x18
	.long	.LASF279
	.sleb128 31
	.uleb128 0x18
	.long	.LASF280
	.sleb128 32
	.uleb128 0x18
	.long	.LASF281
	.sleb128 33
	.uleb128 0x18
	.long	.LASF282
	.sleb128 34
	.uleb128 0x18
	.long	.LASF283
	.sleb128 35
	.uleb128 0x18
	.long	.LASF284
	.sleb128 36
	.uleb128 0x18
	.long	.LASF285
	.sleb128 37
	.uleb128 0x18
	.long	.LASF286
	.sleb128 38
	.uleb128 0x18
	.long	.LASF287
	.sleb128 39
	.uleb128 0x18
	.long	.LASF288
	.sleb128 40
	.uleb128 0x18
	.long	.LASF289
	.sleb128 41
	.uleb128 0x18
	.long	.LASF290
	.sleb128 42
	.uleb128 0x18
	.long	.LASF291
	.sleb128 43
	.uleb128 0x18
	.long	.LASF292
	.sleb128 44
	.uleb128 0x18
	.long	.LASF293
	.sleb128 45
	.uleb128 0x18
	.long	.LASF294
	.sleb128 46
	.uleb128 0x18
	.long	.LASF295
	.sleb128 47
	.uleb128 0x18
	.long	.LASF296
	.sleb128 48
	.uleb128 0x18
	.long	.LASF297
	.sleb128 49
	.uleb128 0x18
	.long	.LASF298
	.sleb128 50
	.uleb128 0x18
	.long	.LASF299
	.sleb128 51
	.uleb128 0x18
	.long	.LASF300
	.sleb128 52
	.uleb128 0x18
	.long	.LASF301
	.sleb128 53
	.uleb128 0x18
	.long	.LASF302
	.sleb128 54
	.uleb128 0x18
	.long	.LASF303
	.sleb128 55
	.uleb128 0x18
	.long	.LASF304
	.sleb128 56
	.uleb128 0x18
	.long	.LASF305
	.sleb128 57
	.uleb128 0x18
	.long	.LASF306
	.sleb128 58
	.uleb128 0x18
	.long	.LASF307
	.sleb128 59
	.uleb128 0x18
	.long	.LASF308
	.sleb128 60
	.uleb128 0x18
	.long	.LASF309
	.sleb128 61
	.uleb128 0x18
	.long	.LASF310
	.sleb128 62
	.uleb128 0x18
	.long	.LASF311
	.sleb128 63
	.uleb128 0x18
	.long	.LASF312
	.sleb128 64
	.uleb128 0x18
	.long	.LASF313
	.sleb128 65
	.uleb128 0x18
	.long	.LASF314
	.sleb128 66
	.uleb128 0x18
	.long	.LASF315
	.sleb128 67
	.uleb128 0x18
	.long	.LASF316
	.sleb128 68
	.byte	0
	.uleb128 0x17
	.long	.LASF317
	.byte	0x4
	.byte	0xd
	.byte	0x98
	.long	0x1018
	.uleb128 0x18
	.long	.LASF318
	.sleb128 0
	.uleb128 0x18
	.long	.LASF319
	.sleb128 1
	.uleb128 0x18
	.long	.LASF320
	.sleb128 2
	.uleb128 0x18
	.long	.LASF321
	.sleb128 3
	.uleb128 0x18
	.long	.LASF322
	.sleb128 4
	.uleb128 0x18
	.long	.LASF323
	.sleb128 5
	.uleb128 0x18
	.long	.LASF324
	.sleb128 6
	.uleb128 0x18
	.long	.LASF325
	.sleb128 7
	.uleb128 0x18
	.long	.LASF326
	.sleb128 8
	.uleb128 0x18
	.long	.LASF327
	.sleb128 9
	.byte	0
	.uleb128 0x1d
	.byte	0x10
	.byte	0xd
	.byte	0xb4
	.long	0x1056
	.uleb128 0x1e
	.long	.LASF328
	.byte	0xd
	.byte	0xb6
	.long	0x1056
	.uleb128 0x1e
	.long	.LASF329
	.byte	0xd
	.byte	0xb7
	.long	0x105c
	.uleb128 0x1f
	.string	"str"
	.byte	0xd
	.byte	0xb8
	.long	0xd0a
	.uleb128 0x1e
	.long	.LASF330
	.byte	0xd
	.byte	0xb9
	.long	0x40
	.uleb128 0x1f
	.string	"c"
	.byte	0xd
	.byte	0xba
	.long	0x62
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xd2f
	.uleb128 0x7
	.byte	0x8
	.long	0x1062
	.uleb128 0x2
	.long	0xca8
	.uleb128 0x20
	.byte	0x4
	.byte	0xd
	.byte	0xc9
	.long	0x1088
	.uleb128 0x18
	.long	.LASF331
	.sleb128 0
	.uleb128 0x18
	.long	.LASF332
	.sleb128 1
	.uleb128 0x18
	.long	.LASF333
	.sleb128 2
	.uleb128 0x18
	.long	.LASF334
	.sleb128 3
	.byte	0
	.uleb128 0x8
	.long	.LASF335
	.byte	0x70
	.byte	0x1
	.byte	0x46
	.long	0x113d
	.uleb128 0x9
	.long	.LASF336
	.byte	0x1
	.byte	0x48
	.long	0x165c
	.byte	0
	.uleb128 0x9
	.long	.LASF337
	.byte	0x1
	.byte	0x48
	.long	0x165c
	.byte	0x8
	.uleb128 0x9
	.long	.LASF338
	.byte	0x1
	.byte	0x4a
	.long	0x11a4
	.byte	0x10
	.uleb128 0x9
	.long	.LASF339
	.byte	0x1
	.byte	0x4a
	.long	0x11a4
	.byte	0x18
	.uleb128 0x9
	.long	.LASF340
	.byte	0x1
	.byte	0x4b
	.long	0x11a4
	.byte	0x20
	.uleb128 0x9
	.long	.LASF341
	.byte	0x1
	.byte	0x4b
	.long	0x11a4
	.byte	0x28
	.uleb128 0x9
	.long	.LASF342
	.byte	0x1
	.byte	0x4c
	.long	0x11a4
	.byte	0x30
	.uleb128 0x9
	.long	.LASF343
	.byte	0x1
	.byte	0x4c
	.long	0x11a4
	.byte	0x38
	.uleb128 0x9
	.long	.LASF344
	.byte	0x1
	.byte	0x4d
	.long	0x11a4
	.byte	0x40
	.uleb128 0x9
	.long	.LASF345
	.byte	0x1
	.byte	0x4d
	.long	0x11a4
	.byte	0x48
	.uleb128 0x9
	.long	.LASF346
	.byte	0x1
	.byte	0x4f
	.long	0x165c
	.byte	0x50
	.uleb128 0x9
	.long	.LASF347
	.byte	0x1
	.byte	0x4f
	.long	0x165c
	.byte	0x58
	.uleb128 0x9
	.long	.LASF348
	.byte	0x1
	.byte	0x50
	.long	0x165c
	.byte	0x60
	.uleb128 0x9
	.long	.LASF349
	.byte	0x1
	.byte	0x50
	.long	0x165c
	.byte	0x68
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x1088
	.uleb128 0x8
	.long	.LASF350
	.byte	0x38
	.byte	0xb
	.byte	0x44
	.long	0x11a4
	.uleb128 0x9
	.long	.LASF351
	.byte	0xb
	.byte	0x46
	.long	0x11a4
	.byte	0
	.uleb128 0x9
	.long	.LASF352
	.byte	0xb
	.byte	0x4a
	.long	0x315
	.byte	0x8
	.uleb128 0x12
	.string	"len"
	.byte	0xb
	.byte	0x4b
	.long	0x40
	.byte	0x10
	.uleb128 0x12
	.string	"ino"
	.byte	0xb
	.byte	0x4e
	.long	0x320
	.byte	0x18
	.uleb128 0x12
	.string	"dev"
	.byte	0xb
	.byte	0x4f
	.long	0x32b
	.byte	0x20
	.uleb128 0x9
	.long	.LASF156
	.byte	0xb
	.byte	0x51
	.long	0x32
	.byte	0x28
	.uleb128 0x9
	.long	.LASF353
	.byte	0xb
	.byte	0x54
	.long	0x1370
	.byte	0x30
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x1143
	.uleb128 0x1c
	.long	.LASF354
	.uleb128 0x7
	.byte	0x8
	.long	0x11aa
	.uleb128 0x11
	.long	0x11ca
	.uleb128 0x10
	.long	0x11ca
	.uleb128 0x10
	.long	0x105c
	.uleb128 0x10
	.long	0x32
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x932
	.uleb128 0x7
	.byte	0x8
	.long	0x11b5
	.uleb128 0x11
	.long	0x11e6
	.uleb128 0x10
	.long	0x11ca
	.uleb128 0x10
	.long	0x11e6
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x11ec
	.uleb128 0x2
	.long	0x878
	.uleb128 0x7
	.byte	0x8
	.long	0x11d6
	.uleb128 0x11
	.long	0x1211
	.uleb128 0x10
	.long	0x11ca
	.uleb128 0x10
	.long	0x40
	.uleb128 0x10
	.long	0x578
	.uleb128 0x10
	.long	0x105c
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x11f7
	.uleb128 0x11
	.long	0x122c
	.uleb128 0x10
	.long	0x11ca
	.uleb128 0x10
	.long	0x40
	.uleb128 0x10
	.long	0x1056
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x1217
	.uleb128 0x11
	.long	0x1247
	.uleb128 0x10
	.long	0x11ca
	.uleb128 0x10
	.long	0x40
	.uleb128 0x10
	.long	0x1247
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x124d
	.uleb128 0x2
	.long	0xcff
	.uleb128 0x7
	.byte	0x8
	.long	0x1232
	.uleb128 0x11
	.long	0x1268
	.uleb128 0x10
	.long	0x11ca
	.uleb128 0x10
	.long	0x40
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x1258
	.uleb128 0x21
	.long	.LASF355
	.byte	0x4
	.byte	0xd
	.value	0x19a
	.long	0x128e
	.uleb128 0x18
	.long	.LASF356
	.sleb128 0
	.uleb128 0x18
	.long	.LASF357
	.sleb128 1
	.uleb128 0x18
	.long	.LASF358
	.sleb128 2
	.byte	0
	.uleb128 0x21
	.long	.LASF359
	.byte	0x4
	.byte	0xd
	.value	0x1a3
	.long	0x12cc
	.uleb128 0x18
	.long	.LASF360
	.sleb128 0
	.uleb128 0x18
	.long	.LASF361
	.sleb128 1
	.uleb128 0x18
	.long	.LASF362
	.sleb128 2
	.uleb128 0x18
	.long	.LASF363
	.sleb128 3
	.uleb128 0x18
	.long	.LASF364
	.sleb128 4
	.uleb128 0x18
	.long	.LASF365
	.sleb128 5
	.uleb128 0x18
	.long	.LASF366
	.sleb128 6
	.uleb128 0x18
	.long	.LASF367
	.sleb128 7
	.byte	0
	.uleb128 0x22
	.byte	0x8
	.byte	0xd
	.value	0x1c0
	.long	0x1306
	.uleb128 0x23
	.long	.LASF368
	.byte	0xd
	.value	0x1c2
	.long	0x1306
	.uleb128 0x23
	.long	.LASF369
	.byte	0xd
	.value	0x1c3
	.long	0x1311
	.uleb128 0x23
	.long	.LASF370
	.byte	0xd
	.value	0x1c4
	.long	0xe1f
	.uleb128 0x23
	.long	.LASF371
	.byte	0xd
	.value	0x1c5
	.long	0x128e
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xda6
	.uleb128 0x1c
	.long	.LASF372
	.uleb128 0x7
	.byte	0x8
	.long	0x130c
	.uleb128 0x6
	.long	.LASF373
	.byte	0xb
	.byte	0x2f
	.long	0x1322
	.uleb128 0x8
	.long	.LASF373
	.byte	0x20
	.byte	0xb
	.byte	0x30
	.long	0x135f
	.uleb128 0x9
	.long	.LASF351
	.byte	0xb
	.byte	0x32
	.long	0x135f
	.byte	0
	.uleb128 0x9
	.long	.LASF374
	.byte	0xb
	.byte	0x33
	.long	0x1365
	.byte	0x8
	.uleb128 0x12
	.string	"cur"
	.byte	0xb
	.byte	0x33
	.long	0x1365
	.byte	0x10
	.uleb128 0x9
	.long	.LASF81
	.byte	0xb
	.byte	0x33
	.long	0x1365
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x1322
	.uleb128 0x7
	.byte	0x8
	.long	0x62
	.uleb128 0x1c
	.long	.LASF375
	.uleb128 0x7
	.byte	0x8
	.long	0x136b
	.uleb128 0x17
	.long	.LASF376
	.byte	0x4
	.byte	0xb
	.byte	0x58
	.long	0x139b
	.uleb128 0x18
	.long	.LASF377
	.sleb128 0
	.uleb128 0x18
	.long	.LASF378
	.sleb128 1
	.uleb128 0x18
	.long	.LASF379
	.sleb128 2
	.uleb128 0x18
	.long	.LASF380
	.sleb128 3
	.byte	0
	.uleb128 0x24
	.long	.LASF572
	.byte	0x8
	.byte	0xb
	.byte	0x5a
	.long	0x13be
	.uleb128 0x1e
	.long	.LASF381
	.byte	0xb
	.byte	0x5c
	.long	0x105c
	.uleb128 0x1e
	.long	.LASF382
	.byte	0xb
	.byte	0x5d
	.long	0x13be
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x105c
	.uleb128 0x6
	.long	.LASF383
	.byte	0xb
	.byte	0x61
	.long	0x13cf
	.uleb128 0x8
	.long	.LASF383
	.byte	0x20
	.byte	0xb
	.byte	0x62
	.long	0x140c
	.uleb128 0x9
	.long	.LASF351
	.byte	0xb
	.byte	0x64
	.long	0x140c
	.byte	0
	.uleb128 0x9
	.long	.LASF82
	.byte	0xb
	.byte	0x64
	.long	0x140c
	.byte	0x8
	.uleb128 0x9
	.long	.LASF374
	.byte	0xb
	.byte	0x65
	.long	0x1412
	.byte	0x10
	.uleb128 0x9
	.long	.LASF81
	.byte	0xb
	.byte	0x65
	.long	0x1412
	.byte	0x18
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x13c4
	.uleb128 0x7
	.byte	0x8
	.long	0xca8
	.uleb128 0x6
	.long	.LASF384
	.byte	0xb
	.byte	0x68
	.long	0x1423
	.uleb128 0x8
	.long	.LASF384
	.byte	0x38
	.byte	0xb
	.byte	0x69
	.long	0x1484
	.uleb128 0x9
	.long	.LASF351
	.byte	0xb
	.byte	0x6c
	.long	0x1484
	.byte	0
	.uleb128 0x9
	.long	.LASF82
	.byte	0xb
	.byte	0x6c
	.long	0x1484
	.byte	0x8
	.uleb128 0x9
	.long	.LASF385
	.byte	0xb
	.byte	0x70
	.long	0x139b
	.byte	0x10
	.uleb128 0x9
	.long	.LASF386
	.byte	0xb
	.byte	0x71
	.long	0x139b
	.byte	0x18
	.uleb128 0x9
	.long	.LASF387
	.byte	0xb
	.byte	0x75
	.long	0x148a
	.byte	0x20
	.uleb128 0x9
	.long	.LASF368
	.byte	0xb
	.byte	0x78
	.long	0x1056
	.byte	0x28
	.uleb128 0x9
	.long	.LASF388
	.byte	0xb
	.byte	0x7b
	.long	0x92b
	.byte	0x30
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x1418
	.uleb128 0x7
	.byte	0x8
	.long	0x1317
	.uleb128 0x8
	.long	.LASF389
	.byte	0x9
	.byte	0xb
	.byte	0x7e
	.long	0x1509
	.uleb128 0x9
	.long	.LASF390
	.byte	0xb
	.byte	0x81
	.long	0x62
	.byte	0
	.uleb128 0x9
	.long	.LASF391
	.byte	0xb
	.byte	0x84
	.long	0x62
	.byte	0x1
	.uleb128 0x9
	.long	.LASF392
	.byte	0xb
	.byte	0x87
	.long	0x62
	.byte	0x2
	.uleb128 0x9
	.long	.LASF393
	.byte	0xb
	.byte	0x8b
	.long	0x62
	.byte	0x3
	.uleb128 0x9
	.long	.LASF394
	.byte	0xb
	.byte	0x8e
	.long	0x62
	.byte	0x4
	.uleb128 0x9
	.long	.LASF395
	.byte	0xb
	.byte	0x91
	.long	0x62
	.byte	0x5
	.uleb128 0x9
	.long	.LASF396
	.byte	0xb
	.byte	0x94
	.long	0x62
	.byte	0x6
	.uleb128 0x9
	.long	.LASF397
	.byte	0xb
	.byte	0x97
	.long	0x62
	.byte	0x7
	.uleb128 0x9
	.long	.LASF398
	.byte	0xb
	.byte	0x9a
	.long	0x62
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	.LASF144
	.byte	0x28
	.byte	0xb
	.byte	0x9e
	.long	0x1552
	.uleb128 0x9
	.long	.LASF399
	.byte	0xb
	.byte	0xa0
	.long	0x1056
	.byte	0
	.uleb128 0x9
	.long	.LASF400
	.byte	0xb
	.byte	0xa1
	.long	0x1056
	.byte	0x8
	.uleb128 0x9
	.long	.LASF401
	.byte	0xb
	.byte	0xa2
	.long	0x1056
	.byte	0x10
	.uleb128 0x9
	.long	.LASF402
	.byte	0xb
	.byte	0xa3
	.long	0x1056
	.byte	0x18
	.uleb128 0x9
	.long	.LASF403
	.byte	0xb
	.byte	0xa4
	.long	0x1056
	.byte	0x20
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x948
	.uleb128 0x1c
	.long	.LASF404
	.uleb128 0x7
	.byte	0x8
	.long	0x1558
	.uleb128 0x1c
	.long	.LASF168
	.uleb128 0x7
	.byte	0x8
	.long	0x1563
	.uleb128 0x7
	.byte	0x8
	.long	0x93d
	.uleb128 0x7
	.byte	0x8
	.long	0x1423
	.uleb128 0x1c
	.long	.LASF120
	.uleb128 0x7
	.byte	0x8
	.long	0x1585
	.uleb128 0x2
	.long	0x157a
	.uleb128 0x7
	.byte	0x8
	.long	0x1590
	.uleb128 0x2
	.long	0xd2f
	.uleb128 0x1c
	.long	.LASF405
	.uleb128 0x7
	.byte	0x8
	.long	0x1595
	.uleb128 0x1c
	.long	.LASF139
	.uleb128 0x7
	.byte	0x8
	.long	0x15a0
	.uleb128 0x1c
	.long	.LASF406
	.uleb128 0x7
	.byte	0x8
	.long	0x15ab
	.uleb128 0x7
	.byte	0x8
	.long	0x58e
	.uleb128 0x25
	.long	.LASF407
	.byte	0xb
	.value	0x1ad
	.long	0x62
	.uleb128 0x8
	.long	.LASF408
	.byte	0x18
	.byte	0xe
	.byte	0x61
	.long	0x1605
	.uleb128 0x9
	.long	.LASF409
	.byte	0xe
	.byte	0x63
	.long	0x1605
	.byte	0
	.uleb128 0x9
	.long	.LASF410
	.byte	0xe
	.byte	0x64
	.long	0x1605
	.byte	0x8
	.uleb128 0x9
	.long	.LASF191
	.byte	0xe
	.byte	0x66
	.long	0x2d
	.byte	0x10
	.uleb128 0x9
	.long	.LASF411
	.byte	0xe
	.byte	0x67
	.long	0x2d
	.byte	0x14
	.byte	0
	.uleb128 0x2
	.long	0x315
	.uleb128 0x6
	.long	.LASF412
	.byte	0x1
	.byte	0x3a
	.long	0x1615
	.uleb128 0x7
	.byte	0x8
	.long	0x161b
	.uleb128 0x11
	.long	0x162b
	.uleb128 0x10
	.long	0x11ca
	.uleb128 0x10
	.long	0x315
	.byte	0
	.uleb128 0x8
	.long	.LASF413
	.byte	0x18
	.byte	0x1
	.byte	0x3b
	.long	0x165c
	.uleb128 0x9
	.long	.LASF351
	.byte	0x1
	.byte	0x3d
	.long	0x165c
	.byte	0
	.uleb128 0x12
	.string	"arg"
	.byte	0x1
	.byte	0x3e
	.long	0x315
	.byte	0x8
	.uleb128 0x9
	.long	.LASF414
	.byte	0x1
	.byte	0x3f
	.long	0x160a
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x162b
	.uleb128 0x20
	.byte	0x4
	.byte	0x1
	.byte	0x7d
	.long	0x167d
	.uleb128 0x18
	.long	.LASF415
	.sleb128 0
	.uleb128 0x18
	.long	.LASF416
	.sleb128 1
	.uleb128 0x18
	.long	.LASF417
	.sleb128 2
	.byte	0
	.uleb128 0x1a
	.long	.LASF418
	.byte	0x8
	.byte	0x1
	.value	0x189
	.long	0x16f3
	.uleb128 0x19
	.string	"c99"
	.byte	0x1
	.value	0x18b
	.long	0x108
	.byte	0
	.uleb128 0xa
	.long	.LASF193
	.byte	0x1
	.value	0x18c
	.long	0x108
	.byte	0x1
	.uleb128 0xa
	.long	.LASF191
	.byte	0x1
	.value	0x18d
	.long	0x108
	.byte	0x2
	.uleb128 0xa
	.long	.LASF197
	.byte	0x1
	.value	0x18e
	.long	0x108
	.byte	0x3
	.uleb128 0xa
	.long	.LASF195
	.byte	0x1
	.value	0x18f
	.long	0x108
	.byte	0x4
	.uleb128 0xa
	.long	.LASF216
	.byte	0x1
	.value	0x190
	.long	0x108
	.byte	0x5
	.uleb128 0xa
	.long	.LASF192
	.byte	0x1
	.value	0x191
	.long	0x108
	.byte	0x6
	.uleb128 0xa
	.long	.LASF196
	.byte	0x1
	.value	0x192
	.long	0x108
	.byte	0x7
	.byte	0
	.uleb128 0x1a
	.long	.LASF371
	.byte	0x18
	.byte	0x1
	.value	0x26a
	.long	0x1742
	.uleb128 0xa
	.long	.LASF352
	.byte	0x1
	.value	0x26c
	.long	0x1742
	.byte	0
	.uleb128 0xa
	.long	.LASF237
	.byte	0x1
	.value	0x26d
	.long	0x315
	.byte	0x8
	.uleb128 0xa
	.long	.LASF371
	.byte	0x1
	.value	0x26e
	.long	0x62
	.byte	0x10
	.uleb128 0xa
	.long	.LASF229
	.byte	0x1
	.value	0x26f
	.long	0x69
	.byte	0x12
	.uleb128 0x19
	.string	"len"
	.byte	0x1
	.value	0x270
	.long	0x69
	.byte	0x14
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x1748
	.uleb128 0x2
	.long	0x15bc
	.uleb128 0x1a
	.long	.LASF419
	.byte	0x10
	.byte	0x1
	.value	0x2a8
	.long	0x1782
	.uleb128 0xa
	.long	.LASF352
	.byte	0x1
	.value	0x2aa
	.long	0x1742
	.byte	0
	.uleb128 0x19
	.string	"len"
	.byte	0x1
	.value	0x2ab
	.long	0x40
	.byte	0x8
	.uleb128 0xa
	.long	.LASF237
	.byte	0x1
	.value	0x2ac
	.long	0xe1f
	.byte	0xc
	.byte	0
	.uleb128 0x21
	.long	.LASF420
	.byte	0x4
	.byte	0x1
	.value	0x4e0
	.long	0x1933
	.uleb128 0x18
	.long	.LASF421
	.sleb128 0
	.uleb128 0x18
	.long	.LASF422
	.sleb128 1
	.uleb128 0x18
	.long	.LASF423
	.sleb128 2
	.uleb128 0x18
	.long	.LASF424
	.sleb128 3
	.uleb128 0x18
	.long	.LASF425
	.sleb128 4
	.uleb128 0x18
	.long	.LASF426
	.sleb128 5
	.uleb128 0x18
	.long	.LASF427
	.sleb128 6
	.uleb128 0x18
	.long	.LASF428
	.sleb128 7
	.uleb128 0x18
	.long	.LASF429
	.sleb128 8
	.uleb128 0x18
	.long	.LASF430
	.sleb128 9
	.uleb128 0x18
	.long	.LASF431
	.sleb128 10
	.uleb128 0x18
	.long	.LASF432
	.sleb128 11
	.uleb128 0x18
	.long	.LASF433
	.sleb128 12
	.uleb128 0x18
	.long	.LASF434
	.sleb128 13
	.uleb128 0x18
	.long	.LASF435
	.sleb128 14
	.uleb128 0x18
	.long	.LASF436
	.sleb128 15
	.uleb128 0x18
	.long	.LASF437
	.sleb128 16
	.uleb128 0x18
	.long	.LASF438
	.sleb128 17
	.uleb128 0x18
	.long	.LASF439
	.sleb128 18
	.uleb128 0x18
	.long	.LASF440
	.sleb128 19
	.uleb128 0x18
	.long	.LASF441
	.sleb128 20
	.uleb128 0x18
	.long	.LASF442
	.sleb128 21
	.uleb128 0x18
	.long	.LASF443
	.sleb128 22
	.uleb128 0x18
	.long	.LASF444
	.sleb128 23
	.uleb128 0x18
	.long	.LASF445
	.sleb128 24
	.uleb128 0x18
	.long	.LASF446
	.sleb128 25
	.uleb128 0x18
	.long	.LASF447
	.sleb128 26
	.uleb128 0x18
	.long	.LASF448
	.sleb128 27
	.uleb128 0x18
	.long	.LASF449
	.sleb128 28
	.uleb128 0x18
	.long	.LASF450
	.sleb128 29
	.uleb128 0x18
	.long	.LASF451
	.sleb128 30
	.uleb128 0x18
	.long	.LASF452
	.sleb128 31
	.uleb128 0x18
	.long	.LASF453
	.sleb128 32
	.uleb128 0x18
	.long	.LASF454
	.sleb128 33
	.uleb128 0x18
	.long	.LASF455
	.sleb128 34
	.uleb128 0x18
	.long	.LASF456
	.sleb128 35
	.uleb128 0x18
	.long	.LASF457
	.sleb128 36
	.uleb128 0x18
	.long	.LASF458
	.sleb128 37
	.uleb128 0x18
	.long	.LASF459
	.sleb128 38
	.uleb128 0x18
	.long	.LASF460
	.sleb128 39
	.uleb128 0x18
	.long	.LASF461
	.sleb128 40
	.uleb128 0x18
	.long	.LASF462
	.sleb128 41
	.uleb128 0x18
	.long	.LASF463
	.sleb128 42
	.uleb128 0x18
	.long	.LASF464
	.sleb128 43
	.uleb128 0x18
	.long	.LASF465
	.sleb128 44
	.uleb128 0x18
	.long	.LASF466
	.sleb128 45
	.uleb128 0x18
	.long	.LASF467
	.sleb128 46
	.uleb128 0x18
	.long	.LASF468
	.sleb128 47
	.uleb128 0x18
	.long	.LASF469
	.sleb128 48
	.uleb128 0x18
	.long	.LASF470
	.sleb128 49
	.uleb128 0x18
	.long	.LASF471
	.sleb128 50
	.uleb128 0x18
	.long	.LASF472
	.sleb128 51
	.uleb128 0x18
	.long	.LASF473
	.sleb128 52
	.uleb128 0x18
	.long	.LASF474
	.sleb128 53
	.uleb128 0x18
	.long	.LASF475
	.sleb128 54
	.uleb128 0x18
	.long	.LASF476
	.sleb128 55
	.uleb128 0x18
	.long	.LASF477
	.sleb128 56
	.uleb128 0x18
	.long	.LASF478
	.sleb128 57
	.uleb128 0x18
	.long	.LASF479
	.sleb128 58
	.uleb128 0x18
	.long	.LASF480
	.sleb128 59
	.uleb128 0x18
	.long	.LASF481
	.sleb128 60
	.uleb128 0x18
	.long	.LASF482
	.sleb128 61
	.uleb128 0x18
	.long	.LASF483
	.sleb128 62
	.uleb128 0x18
	.long	.LASF484
	.sleb128 63
	.uleb128 0x18
	.long	.LASF485
	.sleb128 64
	.uleb128 0x18
	.long	.LASF486
	.sleb128 65
	.uleb128 0x18
	.long	.LASF487
	.sleb128 66
	.uleb128 0x18
	.long	.LASF488
	.sleb128 67
	.uleb128 0x18
	.long	.LASF489
	.sleb128 68
	.byte	0
	.uleb128 0x1a
	.long	.LASF490
	.byte	0x20
	.byte	0x1
	.value	0x4e7
	.long	0x1975
	.uleb128 0xa
	.long	.LASF491
	.byte	0x1
	.value	0x4e9
	.long	0x315
	.byte	0
	.uleb128 0x19
	.string	"msg"
	.byte	0x1
	.value	0x4ea
	.long	0x315
	.byte	0x8
	.uleb128 0xa
	.long	.LASF492
	.byte	0x1
	.value	0x4eb
	.long	0x50
	.byte	0x10
	.uleb128 0xa
	.long	.LASF420
	.byte	0x1
	.value	0x4ec
	.long	0x1782
	.byte	0x18
	.byte	0
	.uleb128 0x26
	.long	.LASF495
	.byte	0x1
	.byte	0xa3
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x19e4
	.uleb128 0x27
	.long	.LASF105
	.byte	0x1
	.byte	0xa4
	.long	0x11ca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.long	.LASF493
	.byte	0x1
	.byte	0xa5
	.long	0x102
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.long	.LASF494
	.byte	0x1
	.byte	0xa6
	.long	0x32
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.byte	0xa8
	.long	0x102
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.string	"q"
	.byte	0x1
	.byte	0xa8
	.long	0x102
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.long	.LASF352
	.byte	0x1
	.byte	0xa8
	.long	0x102
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x26
	.long	.LASF496
	.byte	0x1
	.byte	0xcf
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a79
	.uleb128 0x27
	.long	.LASF105
	.byte	0x1
	.byte	0xd0
	.long	0x11ca
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x2a
	.string	"dir"
	.byte	0x1
	.byte	0xd1
	.long	0x102
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x27
	.long	.LASF494
	.byte	0x1
	.byte	0xd2
	.long	0x32
	.uleb128 0x3
	.byte	0x91
	.sleb128 -212
	.uleb128 0x27
	.long	.LASF411
	.byte	0x1
	.byte	0xd3
	.long	0x32
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x29
	.long	.LASF497
	.byte	0x1
	.byte	0xd5
	.long	0x113d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x28
	.string	"new"
	.byte	0x1
	.byte	0xd6
	.long	0x11a4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x28
	.string	"st"
	.byte	0x1
	.byte	0xd7
	.long	0x369
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x28
	.string	"len"
	.byte	0x1
	.byte	0xd8
	.long	0x40
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.byte	0
	.uleb128 0x2b
	.long	.LASF498
	.byte	0x1
	.value	0x116
	.long	0x11a4
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ac9
	.uleb128 0x2c
	.long	.LASF105
	.byte	0x1
	.value	0x117
	.long	0x11ca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF82
	.byte	0x1
	.value	0x118
	.long	0x11a4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2d
	.string	"cur"
	.byte	0x1
	.value	0x11a
	.long	0x11a4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2b
	.long	.LASF499
	.byte	0x1
	.value	0x12b
	.long	0x11a4
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b37
	.uleb128 0x2c
	.long	.LASF105
	.byte	0x1
	.value	0x12c
	.long	0x11ca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.long	.LASF500
	.byte	0x1
	.value	0x12d
	.long	0x11a4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2e
	.long	.LASF82
	.byte	0x1
	.value	0x12f
	.long	0x11a4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.string	"cur"
	.byte	0x1
	.value	0x12f
	.long	0x11a4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.long	.LASF501
	.byte	0x1
	.value	0x12f
	.long	0x11a4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2f
	.long	.LASF502
	.byte	0x1
	.value	0x152
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x1bb1
	.uleb128 0x2c
	.long	.LASF105
	.byte	0x1
	.value	0x153
	.long	0x11ca
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2e
	.long	.LASF503
	.byte	0x1
	.value	0x155
	.long	0x11a4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.long	.LASF504
	.byte	0x1
	.value	0x155
	.long	0x11a4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2e
	.long	.LASF505
	.byte	0x1
	.value	0x155
	.long	0x11a4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.long	.LASF506
	.byte	0x1
	.value	0x155
	.long	0x11a4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.long	.LASF497
	.byte	0x1
	.value	0x157
	.long	0x113d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x30
	.long	.LASF507
	.byte	0x1
	.value	0x1a6
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x1bfb
	.uleb128 0x2c
	.long	.LASF105
	.byte	0x1
	.value	0x1a7
	.long	0x11ca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF188
	.byte	0x1
	.value	0x1a8
	.long	0xfcf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2d
	.string	"l"
	.byte	0x1
	.value	0x1aa
	.long	0x1bfb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x1c01
	.uleb128 0x2
	.long	0x167d
	.uleb128 0x30
	.long	.LASF508
	.byte	0x1
	.value	0x1c8
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c3b
	.uleb128 0x2e
	.long	.LASF509
	.byte	0x1
	.value	0x1ca
	.long	0x32
	.uleb128 0x9
	.byte	0x3
	.quad	initialized.7822
	.byte	0
	.uleb128 0x31
	.long	.LASF510
	.byte	0x1
	.value	0x1e0
	.long	0x11ca
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c7c
	.uleb128 0x2c
	.long	.LASF188
	.byte	0x1
	.value	0x1e1
	.long	0xfcf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2e
	.long	.LASF105
	.byte	0x1
	.value	0x1e3
	.long	0x11ca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x31
	.long	.LASF511
	.byte	0x1
	.value	0x225
	.long	0x32
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d4b
	.uleb128 0x2c
	.long	.LASF105
	.byte	0x1
	.value	0x226
	.long	0x11ca
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2e
	.long	.LASF512
	.byte	0x1
	.value	0x228
	.long	0x32
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2d
	.string	"dir"
	.byte	0x1
	.value	0x229
	.long	0x11a4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2e
	.long	.LASF513
	.byte	0x1
	.value	0x229
	.long	0x11a4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.long	.LASF119
	.byte	0x1
	.value	0x22a
	.long	0x1484
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2e
	.long	.LASF514
	.byte	0x1
	.value	0x22a
	.long	0x1484
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.string	"run"
	.byte	0x1
	.value	0x22b
	.long	0x140c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2e
	.long	.LASF515
	.byte	0x1
	.value	0x22b
	.long	0x140c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x2d
	.string	"__o"
	.byte	0x1
	.value	0x238
	.long	0x1d4b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.long	.LASF516
	.byte	0x1
	.value	0x238
	.long	0x47
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x471
	.uleb128 0x2f
	.long	.LASF517
	.byte	0x1
	.value	0x2be
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x1dac
	.uleb128 0x2c
	.long	.LASF105
	.byte	0x1
	.value	0x2bf
	.long	0x11ca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.string	"b"
	.byte	0x1
	.value	0x2c1
	.long	0x1dac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x32
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x2d
	.string	"hp"
	.byte	0x1
	.value	0x2c7
	.long	0x1056
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x1db2
	.uleb128 0x2
	.long	0x174d
	.uleb128 0x2f
	.long	.LASF518
	.byte	0x1
	.value	0x2d0
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e47
	.uleb128 0x2c
	.long	.LASF105
	.byte	0x1
	.value	0x2d1
	.long	0x11ca
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2d
	.string	"b"
	.byte	0x1
	.value	0x2d3
	.long	0x1e47
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x33
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.long	0x1e16
	.uleb128 0x2d
	.string	"hp"
	.byte	0x1
	.value	0x2d9
	.long	0x1056
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x32
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x2d
	.string	"val"
	.byte	0x1
	.value	0x2e0
	.long	0x315
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2d
	.string	"str"
	.byte	0x1
	.value	0x2e1
	.long	0x102
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x1e4d
	.uleb128 0x2
	.long	0x16f3
	.uleb128 0x2f
	.long	.LASF519
	.byte	0x1
	.value	0x31b
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f55
	.uleb128 0x2c
	.long	.LASF105
	.byte	0x1
	.value	0x31c
	.long	0x11ca
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2e
	.long	.LASF494
	.byte	0x1
	.value	0x31e
	.long	0x102
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2d
	.string	"p"
	.byte	0x1
	.value	0x31f
	.long	0x1f55
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2e
	.long	.LASF520
	.byte	0x1
	.value	0x320
	.long	0x315
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x33
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.long	0x1f33
	.uleb128 0x2e
	.long	.LASF521
	.byte	0x1
	.value	0x344
	.long	0x32
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2e
	.long	.LASF522
	.byte	0x1
	.value	0x345
	.long	0x102
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.long	.LASF523
	.byte	0x1
	.value	0x346
	.long	0x32
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x32
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x2e
	.long	.LASF524
	.byte	0x1
	.value	0x356
	.long	0x32
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2e
	.long	.LASF525
	.byte	0x1
	.value	0x357
	.long	0x32
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2d
	.string	"str"
	.byte	0x1
	.value	0x358
	.long	0x102
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x32
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x2d
	.string	"str"
	.byte	0x1
	.value	0x36c
	.long	0x102
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x1f5b
	.uleb128 0x2
	.long	0x15c8
	.uleb128 0x2b
	.long	.LASF526
	.byte	0x1
	.value	0x375
	.long	0x92b
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x1fae
	.uleb128 0x2c
	.long	.LASF105
	.byte	0x1
	.value	0x376
	.long	0x11ca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x34
	.string	"p"
	.byte	0x1
	.value	0x377
	.long	0x165c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2e
	.long	.LASF527
	.byte	0x1
	.value	0x379
	.long	0xca8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2f
	.long	.LASF528
	.byte	0x1
	.value	0x388
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x1feb
	.uleb128 0x2c
	.long	.LASF500
	.byte	0x1
	.value	0x389
	.long	0x165c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.long	.LASF351
	.byte	0x1
	.value	0x38b
	.long	0x165c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x31
	.long	.LASF529
	.byte	0x1
	.value	0x39a
	.long	0x315
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x205a
	.uleb128 0x2c
	.long	.LASF105
	.byte	0x1
	.value	0x39b
	.long	0x11ca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF409
	.byte	0x1
	.value	0x39c
	.long	0x315
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.long	.LASF530
	.byte	0x1
	.value	0x39d
	.long	0x620
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x32
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x2d
	.string	"l"
	.byte	0x1
	.value	0x3ad
	.long	0x11a4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	.LASF531
	.byte	0x1
	.value	0x3d2
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x20a6
	.uleb128 0x2c
	.long	.LASF105
	.byte	0x1
	.value	0x3d3
	.long	0x11ca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.long	.LASF381
	.byte	0x1
	.value	0x3d5
	.long	0x105c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.long	.LASF532
	.byte	0x1
	.value	0x3d5
	.long	0x105c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x35
	.long	.LASF538
	.byte	0x1
	.value	0x3ef
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x20f3
	.uleb128 0x2c
	.long	.LASF105
	.byte	0x1
	.value	0x3f0
	.long	0x11ca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x32
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x2d
	.string	"p"
	.byte	0x1
	.value	0x3fa
	.long	0x165c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	.LASF533
	.byte	0x1
	.value	0x418
	.long	0x92b
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x2153
	.uleb128 0x2c
	.long	.LASF105
	.byte	0x1
	.value	0x419
	.long	0x11ca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.long	.LASF534
	.byte	0x1
	.value	0x41b
	.long	0x92b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x32
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x2d
	.string	"p"
	.byte	0x1
	.value	0x426
	.long	0x165c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	.LASF535
	.byte	0x1
	.value	0x441
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x219f
	.uleb128 0x2c
	.long	.LASF105
	.byte	0x1
	.value	0x442
	.long	0x11ca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.long	.LASF536
	.byte	0x1
	.value	0x445
	.long	0x219f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.long	.LASF537
	.byte	0x1
	.value	0x446
	.long	0x1605
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x10f
	.uleb128 0x35
	.long	.LASF539
	.byte	0x1
	.value	0x467
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x21d3
	.uleb128 0x2c
	.long	.LASF105
	.byte	0x1
	.value	0x468
	.long	0x11ca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2f
	.long	.LASF540
	.byte	0x1
	.value	0x47d
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x222c
	.uleb128 0x2c
	.long	.LASF497
	.byte	0x1
	.value	0x47e
	.long	0x113d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF231
	.byte	0x1
	.value	0x47f
	.long	0x315
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.long	.LASF414
	.byte	0x1
	.value	0x480
	.long	0x160a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2d
	.string	"o"
	.byte	0x1
	.value	0x482
	.long	0x165c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2b
	.long	.LASF541
	.byte	0x1
	.value	0x504
	.long	0x32
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x22a6
	.uleb128 0x2c
	.long	.LASF542
	.byte	0x1
	.value	0x505
	.long	0x315
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2d
	.string	"md"
	.byte	0x1
	.value	0x507
	.long	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2d
	.string	"mn"
	.byte	0x1
	.value	0x507
	.long	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.string	"mx"
	.byte	0x1
	.value	0x507
	.long	0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2e
	.long	.LASF492
	.byte	0x1
	.value	0x508
	.long	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.long	.LASF543
	.byte	0x1
	.value	0x509
	.long	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x31
	.long	.LASF544
	.byte	0x1
	.value	0x540
	.long	0x32
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x2429
	.uleb128 0x2c
	.long	.LASF105
	.byte	0x1
	.value	0x541
	.long	0x11ca
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2c
	.long	.LASF545
	.byte	0x1
	.value	0x542
	.long	0x32
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x2c
	.long	.LASF546
	.byte	0x1
	.value	0x543
	.long	0x2429
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2c
	.long	.LASF547
	.byte	0x1
	.value	0x544
	.long	0x32
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0x546
	.long	0x32
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2e
	.long	.LASF497
	.byte	0x1
	.value	0x547
	.long	0x113d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x32
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x2e
	.long	.LASF420
	.byte	0x1
	.value	0x556
	.long	0x1782
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2e
	.long	.LASF548
	.byte	0x1
	.value	0x557
	.long	0x32
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2d
	.string	"arg"
	.byte	0x1
	.value	0x558
	.long	0x315
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x33
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.long	0x239a
	.uleb128 0x2e
	.long	.LASF549
	.byte	0x1
	.value	0x595
	.long	0x102
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2e
	.long	.LASF179
	.byte	0x1
	.value	0x596
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x33
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.long	0x23be
	.uleb128 0x2d
	.string	"c"
	.byte	0x1
	.value	0x618
	.long	0x108
	.uleb128 0x3
	.byte	0x91
	.sleb128 -89
	.byte	0
	.uleb128 0x36
	.long	.Ldebug_ranges0+0
	.long	0x23d5
	.uleb128 0x2d
	.string	"o"
	.byte	0x1
	.value	0x68d
	.long	0x165c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x32
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.uleb128 0x2e
	.long	.LASF409
	.byte	0x1
	.value	0x6a0
	.long	0x102
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2d
	.string	"len"
	.byte	0x1
	.value	0x6a1
	.long	0x32
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x32
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.uleb128 0x2d
	.string	"ipl"
	.byte	0x1
	.value	0x6a7
	.long	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x102
	.uleb128 0x31
	.long	.LASF550
	.byte	0x1
	.value	0x6f1
	.long	0x32
	.quad	.LFB31
	.quad	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0x249b
	.uleb128 0x2c
	.long	.LASF105
	.byte	0x1
	.value	0x6f2
	.long	0x11ca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF545
	.byte	0x1
	.value	0x6f3
	.long	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2c
	.long	.LASF546
	.byte	0x1
	.value	0x6f4
	.long	0x2429
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0x6f6
	.long	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.long	.LASF551
	.byte	0x1
	.value	0x6f7
	.long	0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x35
	.long	.LASF552
	.byte	0x1
	.value	0x706
	.quad	.LFB32
	.quad	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0x24c9
	.uleb128 0x2c
	.long	.LASF105
	.byte	0x1
	.value	0x707
	.long	0x11ca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2f
	.long	.LASF553
	.byte	0x1
	.value	0x749
	.quad	.LFB33
	.quad	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0x2522
	.uleb128 0x2c
	.long	.LASF105
	.byte	0x1
	.value	0x74a
	.long	0x11ca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.long	.LASF554
	.byte	0x1
	.value	0x74c
	.long	0x102
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.string	"s"
	.byte	0x1
	.value	0x74c
	.long	0x102
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.long	.LASF555
	.byte	0x1
	.value	0x74c
	.long	0x102
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x37
	.long	.LASF573
	.byte	0x1
	.value	0x77c
	.quad	.LFB34
	.quad	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xb
	.long	0x167d
	.long	0x254c
	.uleb128 0xc
	.long	0x39
	.byte	0x9
	.byte	0
	.uleb128 0x2e
	.long	.LASF556
	.byte	0x1
	.value	0x196
	.long	0x2562
	.uleb128 0x9
	.byte	0x3
	.quad	lang_defaults
	.uleb128 0x2
	.long	0x253c
	.uleb128 0xb
	.long	0x16f3
	.long	0x2577
	.uleb128 0xc
	.long	0x39
	.byte	0xd
	.byte	0
	.uleb128 0x2e
	.long	.LASF557
	.byte	0x1
	.value	0x279
	.long	0x258d
	.uleb128 0x9
	.byte	0x3
	.quad	builtin_array
	.uleb128 0x2
	.long	0x2567
	.uleb128 0xb
	.long	0x174d
	.long	0x25a2
	.uleb128 0xc
	.long	0x39
	.byte	0xa
	.byte	0
	.uleb128 0x2e
	.long	.LASF558
	.byte	0x1
	.value	0x2ad
	.long	0x25b8
	.uleb128 0x9
	.byte	0x3
	.quad	operator_array
	.uleb128 0x2
	.long	0x2592
	.uleb128 0xb
	.long	0x1933
	.long	0x25cd
	.uleb128 0xc
	.long	0x39
	.byte	0x43
	.byte	0
	.uleb128 0x2e
	.long	.LASF559
	.byte	0x1
	.value	0x4f3
	.long	0x25e3
	.uleb128 0x9
	.byte	0x3
	.quad	cl_options
	.uleb128 0x2
	.long	0x25bd
	.uleb128 0x38
	.long	.LASF560
	.byte	0x4
	.byte	0xa9
	.long	0x2e9
	.uleb128 0x38
	.long	.LASF561
	.byte	0x4
	.byte	0xaa
	.long	0x2e9
	.uleb128 0x39
	.long	.LASF562
	.byte	0xd
	.value	0x184
	.long	0x315
	.uleb128 0xb
	.long	0x15bc
	.long	0x261a
	.uleb128 0xc
	.long	0x39
	.byte	0xff
	.byte	0
	.uleb128 0x3a
	.long	.LASF563
	.byte	0x1
	.byte	0x96
	.long	0x262f
	.uleb128 0x9
	.byte	0x3
	.quad	_cpp_trigraph_map
	.uleb128 0x2
	.long	0x260a
	.uleb128 0x38
	.long	.LASF564
	.byte	0xf
	.byte	0x3
	.long	0x1605
	.uleb128 0xb
	.long	0x15c8
	.long	0x264a
	.uleb128 0x3b
	.byte	0
	.uleb128 0x38
	.long	.LASF565
	.byte	0xe
	.byte	0x6c
	.long	0x2655
	.uleb128 0x2
	.long	0x263f
	.uleb128 0xb
	.long	0x108
	.long	0x2665
	.uleb128 0x3b
	.byte	0
	.uleb128 0x38
	.long	.LASF566
	.byte	0xe
	.byte	0x6d
	.long	0x2670
	.uleb128 0x2
	.long	0x265a
	.uleb128 0x38
	.long	.LASF567
	.byte	0xe
	.byte	0x6e
	.long	0x2680
	.uleb128 0x2
	.long	0x50
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
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x8
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x18
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2f
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
	.uleb128 0x32
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
	.uleb128 0x21
	.byte	0
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
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB15-.Ltext0
	.quad	.LBE15-.Ltext0
	.quad	.LBB16-.Ltext0
	.quad	.LBE16-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF364:
	.string	"BT_INCLUDE_LEVEL"
.LASF406:
	.string	"pragma_entry"
.LASF551:
	.string	"strings_processed"
.LASF278:
	.string	"CPP_MULT_EQ"
.LASF51:
	.string	"_unused2"
.LASF286:
	.string	"CPP_MIN_EQ"
.LASF37:
	.string	"_fileno"
.LASF530:
	.string	"table"
.LASF127:
	.string	"lookaheads"
.LASF214:
	.string	"no_line_commands"
.LASF496:
	.string	"append_include_chain"
.LASF459:
	.string	"OPT_isystem"
.LASF372:
	.string	"answer"
.LASF432:
	.string	"OPT_MD"
.LASF433:
	.string	"OPT_MF"
.LASF434:
	.string	"OPT_MG"
.LASF435:
	.string	"OPT_MM"
.LASF437:
	.string	"OPT_MP"
.LASF438:
	.string	"OPT_MQ"
.LASF439:
	.string	"OPT_MT"
.LASF112:
	.string	"line_maps"
.LASF202:
	.string	"print_include_names"
.LASF457:
	.string	"OPT_include"
.LASF565:
	.string	"cpp_include_defaults"
.LASF193:
	.string	"objc"
.LASF307:
	.string	"CPP_WCHAR"
.LASF163:
	.string	"_Bool"
.LASF411:
	.string	"cxx_aware"
.LASF133:
	.string	"macro_buffer_len"
.LASF537:
	.string	"deps_mode"
.LASF42:
	.string	"_shortbuf"
.LASF570:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/403.gcc/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF129:
	.string	"errors"
.LASF563:
	.string	"_cpp_trigraph_map"
.LASF166:
	.string	"rlimit"
.LASF547:
	.string	"ignore"
.LASF170:
	.string	"saved_flags"
.LASF282:
	.string	"CPP_OR_EQ"
.LASF495:
	.string	"path_include"
.LASF290:
	.string	"CPP_OPEN_SQUARE"
.LASF292:
	.string	"CPP_OPEN_BRACE"
.LASF498:
	.string	"remove_dup_dir"
.LASF409:
	.string	"fname"
.LASF238:
	.string	"cpp_macro"
.LASF425:
	.string	"OPT__version"
.LASF490:
	.string	"cl_option"
.LASF141:
	.string	"buffer_ob"
.LASF366:
	.string	"BT_STDC"
.LASF101:
	.string	"entries"
.LASF408:
	.string	"default_include"
.LASF280:
	.string	"CPP_MOD_EQ"
.LASF23:
	.string	"_flags"
.LASF461:
	.string	"OPT_iwithprefixbefore"
.LASF157:
	.string	"maps"
.LASF351:
	.string	"next"
.LASF424:
	.string	"OPT_target__help"
.LASF144:
	.string	"spec_nodes"
.LASF154:
	.string	"included_from"
.LASF195:
	.string	"trigraphs"
.LASF15:
	.string	"__off_t"
.LASF73:
	.string	"st_size"
.LASF421:
	.string	"OPT_dollar"
.LASF105:
	.string	"pfile"
.LASF402:
	.string	"n__STRICT_ANSI__"
.LASF43:
	.string	"_lock"
.LASF422:
	.string	"OPT_plus"
.LASF207:
	.string	"warn_comments"
.LASF556:
	.string	"lang_defaults"
.LASF124:
	.string	"cur_token"
.LASF356:
	.string	"NT_VOID"
.LASF314:
	.string	"CPP_PADDING"
.LASF169:
	.string	"col_adjust"
.LASF74:
	.string	"st_blksize"
.LASF533:
	.string	"_cpp_push_next_buffer"
.LASF243:
	.string	"define"
.LASF403:
	.string	"n__VA_ARGS__"
.LASF194:
	.string	"discard_comments"
.LASF139:
	.string	"deps"
.LASF379:
	.string	"IT_IMPORT"
.LASF118:
	.string	"base_context"
.LASF57:
	.string	"ino_t"
.LASF70:
	.string	"st_gid"
.LASF201:
	.string	"print_deps_append"
.LASF216:
	.string	"dollars_in_ident"
.LASF460:
	.string	"OPT_iwithprefix"
.LASF329:
	.string	"source"
.LASF274:
	.string	"CPP_GREATER_EQ"
.LASF369:
	.string	"answers"
.LASF400:
	.string	"n_true"
.LASF399:
	.string	"n_defined"
.LASF20:
	.string	"__syscall_slong_t"
.LASF397:
	.string	"prevent_expansion"
.LASF419:
	.string	"named_op"
.LASF445:
	.string	"OPT_fno_leading_underscore"
.LASF29:
	.string	"_IO_write_end"
.LASF149:
	.string	"LC_RENAME"
.LASF67:
	.string	"st_nlink"
.LASF487:
	.string	"OPT_version"
.LASF521:
	.string	"default_len"
.LASF78:
	.string	"st_ctim"
.LASF261:
	.string	"CPP_LSHIFT"
.LASF346:
	.string	"imacros_head"
.LASF339:
	.string	"quote_tail"
.LASF396:
	.string	"poisoned_ok"
.LASF313:
	.string	"CPP_MACRO_ARG"
.LASF268:
	.string	"CPP_COLON"
.LASF532:
	.string	"token1"
.LASF86:
	.string	"chunk"
.LASF180:
	.string	"pending"
.LASF281:
	.string	"CPP_AND_EQ"
.LASF452:
	.string	"OPT_ftabstop"
.LASF353:
	.string	"name_map"
.LASF175:
	.string	"return_at_eof"
.LASF76:
	.string	"st_atim"
.LASF309:
	.string	"CPP_STRING"
.LASF219:
	.string	"preprocessed"
.LASF303:
	.string	"CPP_ATSIGN"
.LASF508:
	.string	"init_library"
.LASF246:
	.string	"lc_reason"
.LASF381:
	.string	"token"
.LASF140:
	.string	"hash_ob"
.LASF294:
	.string	"CPP_SEMICOLON"
.LASF228:
	.string	"type"
.LASF225:
	.string	"operator_names"
.LASF360:
	.string	"BT_SPECLINE"
.LASF10:
	.string	"__uid_t"
.LASF323:
	.string	"CLK_GNUCXX"
.LASF464:
	.string	"OPT_lang_cplusplus"
.LASF266:
	.string	"CPP_OR_OR"
.LASF181:
	.string	"deps_file"
.LASF525:
	.string	"this_len"
.LASF90:
	.string	"temp"
.LASF173:
	.string	"from_stage3"
.LASF312:
	.string	"CPP_COMMENT"
.LASF254:
	.string	"CPP_MULT"
.LASF80:
	.string	"_obstack_chunk"
.LASF220:
	.string	"no_standard_includes"
.LASF269:
	.string	"CPP_COMMA"
.LASF333:
	.string	"dump_names"
.LASF36:
	.string	"_chain"
.LASF544:
	.string	"cpp_handle_option"
.LASF384:
	.string	"cpp_context"
.LASF466:
	.string	"OPT_lang_objc"
.LASF4:
	.string	"unsigned char"
.LASF289:
	.string	"CPP_PASTE"
.LASF245:
	.string	"def_pragma"
.LASF19:
	.string	"__blkcnt_t"
.LASF509:
	.string	"initialized"
.LASF571:
	.string	"_IO_lock_t"
.LASF185:
	.string	"include_prefix"
.LASF85:
	.string	"chunk_size"
.LASF361:
	.string	"BT_DATE"
.LASF349:
	.string	"include_tail"
.LASF368:
	.string	"macro"
.LASF462:
	.string	"OPT_lang_asm"
.LASF417:
	.string	"AFTER"
.LASF450:
	.string	"OPT_fshow_column"
.LASF263:
	.string	"CPP_MAX"
.LASF561:
	.string	"stderr"
.LASF277:
	.string	"CPP_MINUS_EQ"
.LASF87:
	.string	"object_base"
.LASF211:
	.string	"warnings_are_errors"
.LASF264:
	.string	"CPP_COMPL"
.LASF265:
	.string	"CPP_AND_AND"
.LASF13:
	.string	"__mode_t"
.LASF350:
	.string	"search_path"
.LASF481:
	.string	"OPT_std_iso9899_1990"
.LASF483:
	.string	"OPT_std_iso9899_1999"
.LASF8:
	.string	"size_t"
.LASF142:
	.string	"pragmas"
.LASF145:
	.string	"print_version"
.LASF224:
	.string	"show_column"
.LASF100:
	.string	"stack"
.LASF186:
	.string	"include_prefix_len"
.LASF206:
	.string	"inhibit_errors"
.LASF573:
	.string	"print_help"
.LASF484:
	.string	"OPT_std_iso9899_199x"
.LASF251:
	.string	"CPP_LESS"
.LASF330:
	.string	"arg_no"
.LASF28:
	.string	"_IO_write_ptr"
.LASF83:
	.string	"contents"
.LASF257:
	.string	"CPP_AND"
.LASF147:
	.string	"LC_ENTER"
.LASF501:
	.string	"other"
.LASF404:
	.string	"include_file"
.LASF113:
	.string	"line"
.LASF474:
	.string	"OPT_std_cplusplus98"
.LASF287:
	.string	"CPP_MAX_EQ"
.LASF539:
	.string	"cpp_finish"
.LASF164:
	.string	"cpp_buffer"
.LASF395:
	.string	"va_args_ok"
.LASF22:
	.string	"FILE"
.LASF326:
	.string	"CLK_OBJCXX"
.LASF499:
	.string	"remove_dup_dirs"
.LASF130:
	.string	"mls_line"
.LASF367:
	.string	"BT_PRAGMA"
.LASF335:
	.string	"cpp_pending"
.LASF244:
	.string	"undef"
.LASF568:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF120:
	.string	"directive"
.LASF345:
	.string	"after_tail"
.LASF152:
	.string	"to_line"
.LASF410:
	.string	"component"
.LASF317:
	.string	"c_lang"
.LASF226:
	.string	"help_only"
.LASF32:
	.string	"_IO_save_base"
.LASF79:
	.string	"__unused"
.LASF550:
	.string	"cpp_handle_options"
.LASF297:
	.string	"CPP_MINUS_MINUS"
.LASF343:
	.string	"systm_tail"
.LASF401:
	.string	"n_false"
.LASF117:
	.string	"free_buffs"
.LASF248:
	.string	"CPP_EQ"
.LASF468:
	.string	"OPT_nostdinc"
.LASF385:
	.string	"first"
.LASF199:
	.string	"deps_phony_targets"
.LASF458:
	.string	"OPT_iprefix"
.LASF566:
	.string	"cpp_GCC_INCLUDE_DIR"
.LASF262:
	.string	"CPP_MIN"
.LASF354:
	.string	"file_name_map_list"
.LASF146:
	.string	"our_hashtable"
.LASF526:
	.string	"push_include"
.LASF358:
	.string	"NT_ASSERTION"
.LASF208:
	.string	"warn_trigraphs"
.LASF46:
	.string	"__pad2"
.LASF446:
	.string	"OPT_fno_operator_names"
.LASF231:
	.string	"text"
.LASF14:
	.string	"__nlink_t"
.LASF189:
	.string	"verbose"
.LASF66:
	.string	"st_ino"
.LASF68:
	.string	"st_mode"
.LASF222:
	.string	"dump_macros"
.LASF182:
	.string	"quote_include"
.LASF493:
	.string	"list"
.LASF412:
	.string	"cl_directive_handler"
.LASF241:
	.string	"file_change"
.LASF341:
	.string	"brack_tail"
.LASF237:
	.string	"value"
.LASF151:
	.string	"to_file"
.LASF221:
	.string	"no_standard_cplusplus_includes"
.LASF378:
	.string	"IT_INCLUDE_NEXT"
.LASF54:
	.string	"_next"
.LASF272:
	.string	"CPP_EQ_EQ"
.LASF198:
	.string	"print_deps"
.LASF92:
	.string	"chunkfun"
.LASF296:
	.string	"CPP_PLUS_PLUS"
.LASF327:
	.string	"CLK_ASM"
.LASF331:
	.string	"dump_none"
.LASF197:
	.string	"extended_numbers"
.LASF552:
	.string	"cpp_post_options"
.LASF59:
	.string	"timespec"
.LASF160:
	.string	"last_listed"
.LASF373:
	.string	"_cpp_buff"
.LASF171:
	.string	"last_Wtrigraphs"
.LASF491:
	.string	"opt_text"
.LASF390:
	.string	"in_directive"
.LASF305:
	.string	"CPP_NUMBER"
.LASF223:
	.string	"dump_includes"
.LASF114:
	.string	"directive_line"
.LASF465:
	.string	"OPT_lang_c89"
.LASF337:
	.string	"directive_tail"
.LASF250:
	.string	"CPP_GREATER"
.LASF69:
	.string	"st_uid"
.LASF256:
	.string	"CPP_MOD"
.LASF418:
	.string	"lang_flags"
.LASF302:
	.string	"CPP_DOT_STAR"
.LASF271:
	.string	"CPP_CLOSE_PAREN"
.LASF471:
	.string	"OPT_pedantic"
.LASF512:
	.string	"result"
.LASF352:
	.string	"name"
.LASF55:
	.string	"_sbuf"
.LASF34:
	.string	"_IO_save_end"
.LASF523:
	.string	"specd_len"
.LASF247:
	.string	"cpp_ttype"
.LASF549:
	.string	"endptr"
.LASF415:
	.string	"BRACKET"
.LASF560:
	.string	"stdout"
.LASF17:
	.string	"__time_t"
.LASF236:
	.string	"rid_code"
.LASF380:
	.string	"IT_CMDLINE"
.LASF255:
	.string	"CPP_DIV"
.LASF536:
	.string	"deps_stream"
.LASF102:
	.string	"alloc_node"
.LASF393:
	.string	"save_comments"
.LASF301:
	.string	"CPP_DEREF_STAR"
.LASF0:
	.string	"sizetype"
.LASF298:
	.string	"CPP_DEREF"
.LASF158:
	.string	"allocated"
.LASF387:
	.string	"buff"
.LASF168:
	.string	"if_stack"
.LASF513:
	.string	"dirn"
.LASF405:
	.string	"splay_tree_s"
.LASF134:
	.string	"all_include_files"
.LASF5:
	.string	"short unsigned int"
.LASF6:
	.string	"signed char"
.LASF416:
	.string	"SYSTEM"
.LASF18:
	.string	"__blksize_t"
.LASF191:
	.string	"cplusplus"
.LASF472:
	.string	"OPT_pedantic_errors"
.LASF535:
	.string	"output_deps"
.LASF489:
	.string	"N_OPTS"
.LASF275:
	.string	"CPP_LESS_EQ"
.LASF258:
	.string	"CPP_OR"
.LASF143:
	.string	"opts"
.LASF543:
	.string	"comp"
.LASF188:
	.string	"lang"
.LASF215:
	.string	"ignore_srcdir"
.LASF259:
	.string	"CPP_XOR"
.LASF16:
	.string	"__off64_t"
.LASF227:
	.string	"cpp_token"
.LASF162:
	.string	"trace_includes"
.LASF96:
	.string	"maybe_empty_object"
.LASF26:
	.string	"_IO_read_base"
.LASF44:
	.string	"_offset"
.LASF504:
	.string	"brack"
.LASF111:
	.string	"state"
.LASF31:
	.string	"_IO_buf_end"
.LASF572:
	.string	"utoken"
.LASF233:
	.string	"ident"
.LASF494:
	.string	"path"
.LASF295:
	.string	"CPP_ELLIPSIS"
.LASF529:
	.string	"cpp_read_main_file"
.LASF370:
	.string	"operator"
.LASF375:
	.string	"file_name_map"
.LASF50:
	.string	"_mode"
.LASF562:
	.string	"progname"
.LASF27:
	.string	"_IO_write_base"
.LASF249:
	.string	"CPP_NOT"
.LASF106:
	.string	"searches"
.LASF531:
	.string	"read_original_filename"
.LASF165:
	.string	"backup_to"
.LASF176:
	.string	"cpp_options"
.LASF135:
	.string	"max_include_len"
.LASF388:
	.string	"direct_p"
.LASF148:
	.string	"LC_LEAVE"
.LASF137:
	.string	"time"
.LASF557:
	.string	"builtin_array"
.LASF232:
	.string	"cpp_hashnode"
.LASF447:
	.string	"OPT_fno_preprocessed"
.LASF510:
	.string	"cpp_create_reader"
.LASF205:
	.string	"warn_system_headers"
.LASF2:
	.string	"long int"
.LASF192:
	.string	"cplusplus_comments"
.LASF218:
	.string	"pedantic"
.LASF559:
	.string	"cl_options"
.LASF448:
	.string	"OPT_fno_show_column"
.LASF344:
	.string	"after_head"
.LASF53:
	.string	"_IO_marker"
.LASF502:
	.string	"merge_include_chains"
.LASF81:
	.string	"limit"
.LASF299:
	.string	"CPP_DOT"
.LASF338:
	.string	"quote_head"
.LASF107:
	.string	"collisions"
.LASF187:
	.string	"user_label_prefix"
.LASF365:
	.string	"BT_TIME"
.LASF293:
	.string	"CPP_CLOSE_BRACE"
.LASF119:
	.string	"context"
.LASF125:
	.string	"base_run"
.LASF209:
	.string	"warn_import"
.LASF386:
	.string	"last"
.LASF123:
	.string	"mi_valid"
.LASF567:
	.string	"cpp_GCC_INCLUDE_DIR_len"
.LASF234:
	.string	"arg_index"
.LASF518:
	.string	"init_builtins"
.LASF128:
	.string	"keep_tokens"
.LASF469:
	.string	"OPT_nostdincplusplus"
.LASF413:
	.string	"pending_option"
.LASF161:
	.string	"depth"
.LASF91:
	.string	"alignment_mask"
.LASF325:
	.string	"CLK_OBJC"
.LASF357:
	.string	"NT_MACRO"
.LASF93:
	.string	"freefun"
.LASF541:
	.string	"parse_option"
.LASF3:
	.string	"long unsigned int"
.LASF316:
	.string	"N_TTYPES"
.LASF210:
	.string	"warn_traditional"
.LASF138:
	.string	"avoid_paste"
.LASF204:
	.string	"inhibit_warnings"
.LASF554:
	.string	"spec"
.LASF155:
	.string	"reason"
.LASF109:
	.string	"cpp_reader"
.LASF318:
	.string	"CLK_GNUC89"
.LASF103:
	.string	"nslots"
.LASF21:
	.string	"char"
.LASF95:
	.string	"use_extra_arg"
.LASF279:
	.string	"CPP_DIV_EQ"
.LASF88:
	.string	"next_free"
.LASF376:
	.string	"include_type"
.LASF30:
	.string	"_IO_buf_base"
.LASF319:
	.string	"CLK_GNUC99"
.LASF9:
	.string	"__dev_t"
.LASF300:
	.string	"CPP_SCOPE"
.LASF253:
	.string	"CPP_MINUS"
.LASF98:
	.string	"ht_identifier"
.LASF25:
	.string	"_IO_read_end"
.LASF183:
	.string	"bracket_include"
.LASF436:
	.string	"OPT_MMD"
.LASF478:
	.string	"OPT_std_gnu89"
.LASF328:
	.string	"node"
.LASF52:
	.string	"_IO_FILE"
.LASF190:
	.string	"signed_char"
.LASF230:
	.string	"cpp_string"
.LASF116:
	.string	"u_buff"
.LASF324:
	.string	"CLK_CXX98"
.LASF291:
	.string	"CPP_CLOSE_SQUARE"
.LASF315:
	.string	"CPP_EOF"
.LASF540:
	.string	"new_pending_directive"
.LASF110:
	.string	"buffer"
.LASF348:
	.string	"include_head"
.LASF564:
	.string	"version_string"
.LASF310:
	.string	"CPP_WSTRING"
.LASF534:
	.string	"pushed"
.LASF505:
	.string	"systm"
.LASF355:
	.string	"node_type"
.LASF492:
	.string	"opt_len"
.LASF482:
	.string	"OPT_std_iso9899_199409"
.LASF480:
	.string	"OPT_std_gnu9x"
.LASF428:
	.string	"OPT_D"
.LASF71:
	.string	"__pad0"
.LASF45:
	.string	"__pad1"
.LASF47:
	.string	"__pad3"
.LASF48:
	.string	"__pad4"
.LASF49:
	.string	"__pad5"
.LASF553:
	.string	"init_dependency_output"
.LASF522:
	.string	"default_prefix"
.LASF538:
	.string	"cpp_finish_options"
.LASF558:
	.string	"operator_array"
.LASF174:
	.string	"search_cached"
.LASF235:
	.string	"directive_index"
.LASF35:
	.string	"_markers"
.LASF56:
	.string	"_pos"
.LASF126:
	.string	"cur_run"
.LASF239:
	.string	"cpp_callbacks"
.LASF524:
	.string	"flen"
.LASF97:
	.string	"alloc_failed"
.LASF467:
	.string	"OPT_lang_objcplusplus"
.LASF167:
	.string	"line_base"
.LASF506:
	.string	"qtail"
.LASF273:
	.string	"CPP_NOT_EQ"
.LASF156:
	.string	"sysp"
.LASF122:
	.string	"mi_ind_cmacro"
.LASF455:
	.string	"OPT_idirafter"
.LASF72:
	.string	"st_rdev"
.LASF382:
	.string	"ptoken"
.LASF545:
	.string	"argc"
.LASF65:
	.string	"st_dev"
.LASF546:
	.string	"argv"
.LASF423:
	.string	"OPT__help"
.LASF304:
	.string	"CPP_NAME"
.LASF503:
	.string	"quote"
.LASF334:
	.string	"dump_definitions"
.LASF449:
	.string	"OPT_fpreprocessed"
.LASF99:
	.string	"hash_table"
.LASF308:
	.string	"CPP_OTHER"
.LASF136:
	.string	"date"
.LASF500:
	.string	"head"
.LASF542:
	.string	"input"
.LASF276:
	.string	"CPP_PLUS_EQ"
.LASF414:
	.string	"handler"
.LASF519:
	.string	"init_standard_includes"
.LASF516:
	.string	"__obj"
.LASF89:
	.string	"chunk_limit"
.LASF332:
	.string	"dump_only"
.LASF121:
	.string	"mi_cmacro"
.LASF383:
	.string	"tokenrun"
.LASF374:
	.string	"base"
.LASF108:
	.string	"hashnode"
.LASF394:
	.string	"lexing_comment"
.LASF520:
	.string	"specd_prefix"
.LASF515:
	.string	"runn"
.LASF179:
	.string	"tabstop"
.LASF267:
	.string	"CPP_QUERY"
.LASF11:
	.string	"__gid_t"
.LASF150:
	.string	"line_map"
.LASF347:
	.string	"imacros_tail"
.LASF555:
	.string	"output_file"
.LASF392:
	.string	"angled_headers"
.LASF60:
	.string	"tv_sec"
.LASF62:
	.string	"long long unsigned int"
.LASF242:
	.string	"include"
.LASF40:
	.string	"_cur_column"
.LASF548:
	.string	"opt_index"
.LASF342:
	.string	"systm_head"
.LASF75:
	.string	"st_blocks"
.LASF184:
	.string	"map_list"
.LASF178:
	.string	"out_fname"
.LASF362:
	.string	"BT_FILE"
.LASF200:
	.string	"print_deps_missing_files"
.LASF507:
	.string	"set_lang"
.LASF33:
	.string	"_IO_backup_base"
.LASF24:
	.string	"_IO_read_ptr"
.LASF497:
	.string	"pend"
.LASF514:
	.string	"contextn"
.LASF203:
	.string	"pedantic_errors"
.LASF177:
	.string	"in_fname"
.LASF153:
	.string	"from_line"
.LASF398:
	.string	"parsing_args"
.LASF213:
	.string	"remap"
.LASF196:
	.string	"digraphs"
.LASF473:
	.string	"OPT_remap"
.LASF426:
	.string	"OPT_A"
.LASF427:
	.string	"OPT_C"
.LASF407:
	.string	"U_CHAR"
.LASF429:
	.string	"OPT_H"
.LASF430:
	.string	"OPT_I"
.LASF431:
	.string	"OPT_M"
.LASF527:
	.string	"header"
.LASF440:
	.string	"OPT_P"
.LASF39:
	.string	"_old_offset"
.LASF441:
	.string	"OPT_U"
.LASF442:
	.string	"OPT_W"
.LASF340:
	.string	"brack_head"
.LASF58:
	.string	"dev_t"
.LASF285:
	.string	"CPP_LSHIFT_EQ"
.LASF443:
	.string	"OPT_d"
.LASF454:
	.string	"OPT_h"
.LASF470:
	.string	"OPT_o"
.LASF486:
	.string	"OPT_v"
.LASF488:
	.string	"OPT_w"
.LASF84:
	.string	"obstack"
.LASF420:
	.string	"opt_code"
.LASF463:
	.string	"OPT_lang_c"
.LASF131:
	.string	"mls_col"
.LASF63:
	.string	"long long int"
.LASF38:
	.string	"_flags2"
.LASF377:
	.string	"IT_INCLUDE"
.LASF284:
	.string	"CPP_RSHIFT_EQ"
.LASF517:
	.string	"mark_named_operators"
.LASF61:
	.string	"tv_nsec"
.LASF270:
	.string	"CPP_OPEN_PAREN"
.LASF569:
	.string	"cppinit.c"
.LASF12:
	.string	"__ino_t"
.LASF104:
	.string	"nelements"
.LASF389:
	.string	"lexer_state"
.LASF320:
	.string	"CLK_STDC89"
.LASF212:
	.string	"no_output"
.LASF260:
	.string	"CPP_RSHIFT"
.LASF115:
	.string	"a_buff"
.LASF336:
	.string	"directive_head"
.LASF252:
	.string	"CPP_PLUS"
.LASF453:
	.string	"OPT_funsigned_char"
.LASF321:
	.string	"CLK_STDC94"
.LASF322:
	.string	"CLK_STDC99"
.LASF391:
	.string	"skipping"
.LASF240:
	.string	"line_change"
.LASF475:
	.string	"OPT_std_c89"
.LASF172:
	.string	"warned_cplusplus_comments"
.LASF311:
	.string	"CPP_HEADER_NAME"
.LASF94:
	.string	"extra_arg"
.LASF306:
	.string	"CPP_CHAR"
.LASF479:
	.string	"OPT_std_gnu99"
.LASF511:
	.string	"cpp_destroy"
.LASF1:
	.string	"unsigned int"
.LASF456:
	.string	"OPT_imacros"
.LASF476:
	.string	"OPT_std_c99"
.LASF132:
	.string	"macro_buffer"
.LASF363:
	.string	"BT_BASE_FILE"
.LASF217:
	.string	"warn_undef"
.LASF283:
	.string	"CPP_XOR_EQ"
.LASF359:
	.string	"builtin_type"
.LASF77:
	.string	"st_mtim"
.LASF485:
	.string	"OPT_trigraphs"
.LASF7:
	.string	"short int"
.LASF82:
	.string	"prev"
.LASF41:
	.string	"_vtable_offset"
.LASF477:
	.string	"OPT_std_c9x"
.LASF288:
	.string	"CPP_HASH"
.LASF371:
	.string	"builtin"
.LASF528:
	.string	"free_chain"
.LASF159:
	.string	"used"
.LASF64:
	.string	"stat"
.LASF229:
	.string	"flags"
.LASF444:
	.string	"OPT_fleading_underscore"
.LASF451:
	.string	"OPT_fsigned_char"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
