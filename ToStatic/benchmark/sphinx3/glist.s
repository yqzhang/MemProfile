	.file	"glist.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -I . -I libutil -imultiarch x86_64-linux-gnu
# -D SPEC_CPU -D NDEBUG -D SPEC_CPU -D HAVE_CONFIG_H -D SPEC_CPU_LP64
# glist.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.string	"glist.c"
	.text
	.globl	glist_add_ptr
	.type	glist_add_ptr, @function
glist_add_ptr:
.LFB2:
	.file 1 "glist.c"
	.loc 1 66 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# g, g
	movq	%rsi, -32(%rbp)	# ptr, ptr
	.loc 1 69 0
	movl	$69, %edx	#,
	movl	$.LC0, %esi	#,
	movl	$16, %edi	#,
	call	__mymalloc__	#
	movq	%rax, -8(%rbp)	# tmp61, gn
	.loc 1 70 0
	movq	-8(%rbp), %rax	# gn, tmp62
	movq	-32(%rbp), %rdx	# ptr, tmp63
	movq	%rdx, (%rax)	# tmp63, gn_1->data.ptr
	.loc 1 71 0
	movq	-8(%rbp), %rax	# gn, tmp64
	movq	-24(%rbp), %rdx	# g, tmp65
	movq	%rdx, 8(%rax)	# tmp65, gn_1->next
	.loc 1 72 0
	movq	-8(%rbp), %rax	# gn, D.3191
	.loc 1 73 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	glist_add_ptr, .-glist_add_ptr
	.globl	glist_add_int32
	.type	glist_add_int32, @function
glist_add_int32:
.LFB3:
	.loc 1 77 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# g, g
	movl	%esi, -28(%rbp)	# val, val
	.loc 1 80 0
	movl	$80, %edx	#,
	movl	$.LC0, %esi	#,
	movl	$16, %edi	#,
	call	__mymalloc__	#
	movq	%rax, -8(%rbp)	# tmp61, gn
	.loc 1 81 0
	movq	-8(%rbp), %rax	# gn, tmp62
	movl	-28(%rbp), %edx	# val, tmp63
	movl	%edx, (%rax)	# tmp63, gn_1->data.int32
	.loc 1 82 0
	movq	-8(%rbp), %rax	# gn, tmp64
	movq	-24(%rbp), %rdx	# g, tmp65
	movq	%rdx, 8(%rax)	# tmp65, gn_1->next
	.loc 1 83 0
	movq	-8(%rbp), %rax	# gn, D.3193
	.loc 1 84 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	glist_add_int32, .-glist_add_int32
	.globl	glist_add_uint32
	.type	glist_add_uint32, @function
glist_add_uint32:
.LFB4:
	.loc 1 88 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# g, g
	movl	%esi, -28(%rbp)	# val, val
	.loc 1 91 0
	movl	$91, %edx	#,
	movl	$.LC0, %esi	#,
	movl	$16, %edi	#,
	call	__mymalloc__	#
	movq	%rax, -8(%rbp)	# tmp61, gn
	.loc 1 92 0
	movq	-8(%rbp), %rax	# gn, tmp62
	movl	-28(%rbp), %edx	# val, tmp63
	movl	%edx, (%rax)	# tmp63, gn_1->data.uint32
	.loc 1 93 0
	movq	-8(%rbp), %rax	# gn, tmp64
	movq	-24(%rbp), %rdx	# g, tmp65
	movq	%rdx, 8(%rax)	# tmp65, gn_1->next
	.loc 1 94 0
	movq	-8(%rbp), %rax	# gn, D.3194
	.loc 1 95 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	glist_add_uint32, .-glist_add_uint32
	.globl	glist_add_float32
	.type	glist_add_float32, @function
glist_add_float32:
.LFB5:
	.loc 1 99 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# g, g
	movss	%xmm0, -28(%rbp)	# val, val
	.loc 1 102 0
	movl	$102, %edx	#,
	movl	$.LC0, %esi	#,
	movl	$16, %edi	#,
	call	__mymalloc__	#
	movq	%rax, -8(%rbp)	# tmp61, gn
	.loc 1 103 0
	movq	-8(%rbp), %rdx	# gn, tmp62
	movl	-28(%rbp), %eax	# val, tmp63
	movl	%eax, (%rdx)	# tmp63, gn_1->data.float32
	.loc 1 104 0
	movq	-8(%rbp), %rax	# gn, tmp64
	movq	-24(%rbp), %rdx	# g, tmp65
	movq	%rdx, 8(%rax)	# tmp65, gn_1->next
	.loc 1 105 0
	movq	-8(%rbp), %rax	# gn, D.3195
	.loc 1 106 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	glist_add_float32, .-glist_add_float32
	.globl	glist_add_float64
	.type	glist_add_float64, @function
glist_add_float64:
.LFB6:
	.loc 1 110 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# g, g
	movsd	%xmm0, -32(%rbp)	# val, val
	.loc 1 113 0
	movl	$113, %edx	#,
	movl	$.LC0, %esi	#,
	movl	$16, %edi	#,
	call	__mymalloc__	#
	movq	%rax, -8(%rbp)	# tmp61, gn
	.loc 1 114 0
	movq	-8(%rbp), %rdx	# gn, tmp62
	movq	-32(%rbp), %rax	# val, tmp63
	movq	%rax, (%rdx)	# tmp63, gn_1->data.float64
	.loc 1 115 0
	movq	-8(%rbp), %rax	# gn, tmp64
	movq	-24(%rbp), %rdx	# g, tmp65
	movq	%rdx, 8(%rax)	# tmp65, gn_1->next
	.loc 1 116 0
	movq	-8(%rbp), %rax	# gn, D.3196
	.loc 1 117 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	glist_add_float64, .-glist_add_float64
	.globl	glist_chkdup_ptr
	.type	glist_chkdup_ptr, @function
glist_chkdup_ptr:
.LFB7:
	.loc 1 121 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# g, g
	movq	%rsi, -32(%rbp)	# val, val
	.loc 1 124 0
	movq	-24(%rbp), %rax	# g, tmp62
	movq	%rax, -8(%rbp)	# tmp62, gn
	jmp	.L12	#
.L15:
	.loc 1 125 0
	movq	-8(%rbp), %rax	# gn, tmp63
	movq	(%rax), %rax	# gn_1->data.ptr, D.3198
	cmpq	-32(%rbp), %rax	# val, D.3198
	jne	.L13	#,
	.loc 1 126 0
	movl	$1, %eax	#, D.3197
	jmp	.L14	#
.L13:
	.loc 1 124 0
	movq	-8(%rbp), %rax	# gn, tmp64
	movq	8(%rax), %rax	# gn_1->next, tmp65
	movq	%rax, -8(%rbp)	# tmp65, gn
.L12:
	.loc 1 124 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, gn
	jne	.L15	#,
	.loc 1 128 0 is_stmt 1
	movl	$0, %eax	#, D.3197
.L14:
	.loc 1 129 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	glist_chkdup_ptr, .-glist_chkdup_ptr
	.globl	glist_chkdup_int32
	.type	glist_chkdup_int32, @function
glist_chkdup_int32:
.LFB8:
	.loc 1 133 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# g, g
	movl	%esi, -28(%rbp)	# val, val
	.loc 1 136 0
	movq	-24(%rbp), %rax	# g, tmp62
	movq	%rax, -8(%rbp)	# tmp62, gn
	jmp	.L17	#
.L20:
	.loc 1 137 0
	movq	-8(%rbp), %rax	# gn, tmp63
	movl	(%rax), %eax	# gn_1->data.int32, D.3200
	cmpl	-28(%rbp), %eax	# val, D.3200
	jne	.L18	#,
	.loc 1 138 0
	movl	$1, %eax	#, D.3199
	jmp	.L19	#
.L18:
	.loc 1 136 0
	movq	-8(%rbp), %rax	# gn, tmp64
	movq	8(%rax), %rax	# gn_1->next, tmp65
	movq	%rax, -8(%rbp)	# tmp65, gn
.L17:
	.loc 1 136 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, gn
	jne	.L20	#,
	.loc 1 140 0 is_stmt 1
	movl	$0, %eax	#, D.3199
.L19:
	.loc 1 141 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	glist_chkdup_int32, .-glist_chkdup_int32
	.globl	glist_chkdup_uint32
	.type	glist_chkdup_uint32, @function
glist_chkdup_uint32:
.LFB9:
	.loc 1 145 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# g, g
	movl	%esi, -28(%rbp)	# val, val
	.loc 1 148 0
	movq	-24(%rbp), %rax	# g, tmp62
	movq	%rax, -8(%rbp)	# tmp62, gn
	jmp	.L22	#
.L25:
	.loc 1 149 0
	movq	-8(%rbp), %rax	# gn, tmp63
	movl	(%rax), %eax	# gn_1->data.uint32, D.3202
	cmpl	-28(%rbp), %eax	# val, D.3202
	jne	.L23	#,
	.loc 1 150 0
	movl	$1, %eax	#, D.3201
	jmp	.L24	#
.L23:
	.loc 1 148 0
	movq	-8(%rbp), %rax	# gn, tmp64
	movq	8(%rax), %rax	# gn_1->next, tmp65
	movq	%rax, -8(%rbp)	# tmp65, gn
.L22:
	.loc 1 148 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, gn
	jne	.L25	#,
	.loc 1 152 0 is_stmt 1
	movl	$0, %eax	#, D.3201
.L24:
	.loc 1 153 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	glist_chkdup_uint32, .-glist_chkdup_uint32
	.globl	glist_chkdup_float32
	.type	glist_chkdup_float32, @function
glist_chkdup_float32:
.LFB10:
	.loc 1 157 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# g, g
	movss	%xmm0, -28(%rbp)	# val, val
	.loc 1 160 0
	movq	-24(%rbp), %rax	# g, tmp62
	movq	%rax, -8(%rbp)	# tmp62, gn
	jmp	.L27	#
.L31:
	.loc 1 161 0
	movq	-8(%rbp), %rax	# gn, tmp63
	movss	(%rax), %xmm0	# gn_1->data.float32, D.3204
	ucomiss	-28(%rbp), %xmm0	# val, D.3204
	jp	.L28	#,
	ucomiss	-28(%rbp), %xmm0	# val, D.3204
	jne	.L28	#,
	.loc 1 162 0
	movl	$1, %eax	#, D.3203
	jmp	.L30	#
.L28:
	.loc 1 160 0
	movq	-8(%rbp), %rax	# gn, tmp64
	movq	8(%rax), %rax	# gn_1->next, tmp65
	movq	%rax, -8(%rbp)	# tmp65, gn
.L27:
	.loc 1 160 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, gn
	jne	.L31	#,
	.loc 1 164 0 is_stmt 1
	movl	$0, %eax	#, D.3203
.L30:
	.loc 1 165 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	glist_chkdup_float32, .-glist_chkdup_float32
	.globl	glist_chkdup_float64
	.type	glist_chkdup_float64, @function
glist_chkdup_float64:
.LFB11:
	.loc 1 169 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# g, g
	movsd	%xmm0, -32(%rbp)	# val, val
	.loc 1 172 0
	movq	-24(%rbp), %rax	# g, tmp62
	movq	%rax, -8(%rbp)	# tmp62, gn
	jmp	.L34	#
.L38:
	.loc 1 173 0
	movq	-8(%rbp), %rax	# gn, tmp63
	movsd	(%rax), %xmm0	# gn_1->data.float64, D.3206
	ucomisd	-32(%rbp), %xmm0	# val, D.3206
	jp	.L35	#,
	ucomisd	-32(%rbp), %xmm0	# val, D.3206
	jne	.L35	#,
	.loc 1 174 0
	movl	$1, %eax	#, D.3205
	jmp	.L37	#
.L35:
	.loc 1 172 0
	movq	-8(%rbp), %rax	# gn, tmp64
	movq	8(%rax), %rax	# gn_1->next, tmp65
	movq	%rax, -8(%rbp)	# tmp65, gn
.L34:
	.loc 1 172 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, gn
	jne	.L38	#,
	.loc 1 176 0 is_stmt 1
	movl	$0, %eax	#, D.3205
.L37:
	.loc 1 177 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	glist_chkdup_float64, .-glist_chkdup_float64
	.globl	glist_apply_ptr
	.type	glist_apply_ptr, @function
glist_apply_ptr:
.LFB12:
	.loc 1 181 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# g, g
	movq	%rsi, -32(%rbp)	# func, func
	.loc 1 184 0
	movq	-24(%rbp), %rax	# g, tmp60
	movq	%rax, -8(%rbp)	# tmp60, gn
	jmp	.L41	#
.L42:
	.loc 1 185 0 discriminator 2
	movq	-8(%rbp), %rax	# gn, tmp61
	movq	(%rax), %rdx	# gn_1->data.ptr, D.3207
	movq	-32(%rbp), %rax	# func, tmp62
	movq	%rdx, %rdi	# D.3207,
	call	*%rax	# tmp62
	.loc 1 184 0 discriminator 2
	movq	-8(%rbp), %rax	# gn, tmp63
	movq	8(%rax), %rax	# gn_1->next, tmp64
	movq	%rax, -8(%rbp)	# tmp64, gn
.L41:
	.loc 1 184 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, gn
	jne	.L42	#,
	.loc 1 186 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	glist_apply_ptr, .-glist_apply_ptr
	.globl	glist_apply_int32
	.type	glist_apply_int32, @function
glist_apply_int32:
.LFB13:
	.loc 1 190 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# g, g
	movq	%rsi, -32(%rbp)	# func, func
	.loc 1 193 0
	movq	-24(%rbp), %rax	# g, tmp60
	movq	%rax, -8(%rbp)	# tmp60, gn
	jmp	.L44	#
.L45:
	.loc 1 194 0 discriminator 2
	movq	-8(%rbp), %rax	# gn, tmp61
	movl	(%rax), %edx	# gn_1->data.int32, D.3208
	movq	-32(%rbp), %rax	# func, tmp62
	movl	%edx, %edi	# D.3208,
	call	*%rax	# tmp62
	.loc 1 193 0 discriminator 2
	movq	-8(%rbp), %rax	# gn, tmp63
	movq	8(%rax), %rax	# gn_1->next, tmp64
	movq	%rax, -8(%rbp)	# tmp64, gn
.L44:
	.loc 1 193 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, gn
	jne	.L45	#,
	.loc 1 195 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	glist_apply_int32, .-glist_apply_int32
	.globl	glist_apply_uint32
	.type	glist_apply_uint32, @function
glist_apply_uint32:
.LFB14:
	.loc 1 199 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# g, g
	movq	%rsi, -32(%rbp)	# func, func
	.loc 1 202 0
	movq	-24(%rbp), %rax	# g, tmp60
	movq	%rax, -8(%rbp)	# tmp60, gn
	jmp	.L47	#
.L48:
	.loc 1 203 0 discriminator 2
	movq	-8(%rbp), %rax	# gn, tmp61
	movl	(%rax), %edx	# gn_1->data.uint32, D.3209
	movq	-32(%rbp), %rax	# func, tmp62
	movl	%edx, %edi	# D.3209,
	call	*%rax	# tmp62
	.loc 1 202 0 discriminator 2
	movq	-8(%rbp), %rax	# gn, tmp63
	movq	8(%rax), %rax	# gn_1->next, tmp64
	movq	%rax, -8(%rbp)	# tmp64, gn
.L47:
	.loc 1 202 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, gn
	jne	.L48	#,
	.loc 1 204 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	glist_apply_uint32, .-glist_apply_uint32
	.globl	glist_apply_float32
	.type	glist_apply_float32, @function
glist_apply_float32:
.LFB15:
	.loc 1 208 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# g, g
	movq	%rsi, -32(%rbp)	# func, func
	.loc 1 211 0
	movq	-24(%rbp), %rax	# g, tmp60
	movq	%rax, -8(%rbp)	# tmp60, gn
	jmp	.L50	#
.L51:
	.loc 1 212 0 discriminator 2
	movq	-8(%rbp), %rax	# gn, tmp61
	movl	(%rax), %eax	# gn_1->data.float32, D.3210
	movq	-32(%rbp), %rdx	# func, tmp62
	movl	%eax, -36(%rbp)	# D.3210, %sfp
	movss	-36(%rbp), %xmm0	# %sfp,
	call	*%rdx	# tmp62
	.loc 1 211 0 discriminator 2
	movq	-8(%rbp), %rax	# gn, tmp63
	movq	8(%rax), %rax	# gn_1->next, tmp64
	movq	%rax, -8(%rbp)	# tmp64, gn
.L50:
	.loc 1 211 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, gn
	jne	.L51	#,
	.loc 1 213 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	glist_apply_float32, .-glist_apply_float32
	.globl	glist_apply_float64
	.type	glist_apply_float64, @function
glist_apply_float64:
.LFB16:
	.loc 1 217 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# g, g
	movq	%rsi, -32(%rbp)	# func, func
	.loc 1 220 0
	movq	-24(%rbp), %rax	# g, tmp60
	movq	%rax, -8(%rbp)	# tmp60, gn
	jmp	.L53	#
.L54:
	.loc 1 221 0 discriminator 2
	movq	-8(%rbp), %rax	# gn, tmp61
	movq	(%rax), %rax	# gn_1->data.float64, D.3212
	movq	-32(%rbp), %rdx	# func, tmp62
	movq	%rax, -40(%rbp)	# D.3212, %sfp
	movsd	-40(%rbp), %xmm0	# %sfp,
	call	*%rdx	# tmp62
	.loc 1 220 0 discriminator 2
	movq	-8(%rbp), %rax	# gn, tmp63
	movq	8(%rax), %rax	# gn_1->next, tmp64
	movq	%rax, -8(%rbp)	# tmp64, gn
.L53:
	.loc 1 220 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, gn
	jne	.L54	#,
	.loc 1 222 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	glist_apply_float64, .-glist_apply_float64
	.globl	glist_free
	.type	glist_free, @function
glist_free:
.LFB17:
	.loc 1 226 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# g, g
	.loc 1 229 0
	jmp	.L56	#
.L57:
	.loc 1 230 0
	movq	-24(%rbp), %rax	# g, tmp59
	movq	%rax, -8(%rbp)	# tmp59, gn
	.loc 1 231 0
	movq	-8(%rbp), %rax	# gn, tmp60
	movq	8(%rax), %rax	# gn_3->next, tmp61
	movq	%rax, -24(%rbp)	# tmp61, g
	.loc 1 232 0
	movq	-8(%rbp), %rax	# gn, tmp62
	movl	$232, %ecx	#,
	movl	$.LC0, %edx	#,
	movl	$16, %esi	#,
	movq	%rax, %rdi	# tmp62,
	call	__myfree__	#
.L56:
	.loc 1 229 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, g
	jne	.L57	#,
	.loc 1 234 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	glist_free, .-glist_free
	.globl	glist_myfree
	.type	glist_myfree, @function
glist_myfree:
.LFB18:
	.loc 1 238 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# g, g
	movl	%esi, -28(%rbp)	# datasize, datasize
	.loc 1 241 0
	jmp	.L59	#
.L60:
	.loc 1 242 0
	movq	-24(%rbp), %rax	# g, tmp60
	movq	%rax, -8(%rbp)	# tmp60, gn
	.loc 1 243 0
	movq	-8(%rbp), %rax	# gn, tmp61
	movq	8(%rax), %rax	# gn_3->next, tmp62
	movq	%rax, -24(%rbp)	# tmp62, g
	.loc 1 244 0
	movq	-8(%rbp), %rax	# gn, tmp63
	movq	(%rax), %rax	# gn_3->data.ptr, D.3213
	movl	-28(%rbp), %esi	# datasize, tmp64
	movl	$244, %ecx	#,
	movl	$.LC0, %edx	#,
	movq	%rax, %rdi	# D.3213,
	call	__myfree__	#
	.loc 1 245 0
	movq	-8(%rbp), %rax	# gn, tmp65
	movl	$245, %ecx	#,
	movl	$.LC0, %edx	#,
	movl	$16, %esi	#,
	movq	%rax, %rdi	# tmp65,
	call	__myfree__	#
.L59:
	.loc 1 241 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, g
	jne	.L60	#,
	.loc 1 247 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	glist_myfree, .-glist_myfree
	.globl	glist_count
	.type	glist_count, @function
glist_count:
.LFB19:
	.loc 1 251 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# g, g
	.loc 1 255 0
	movq	-24(%rbp), %rax	# g, tmp61
	movq	%rax, -8(%rbp)	# tmp61, gn
	movl	$0, -12(%rbp)	#, n
	jmp	.L62	#
.L63:
	.loc 1 255 0 is_stmt 0 discriminator 2
	movq	-8(%rbp), %rax	# gn, tmp62
	movq	8(%rax), %rax	# gn_1->next, tmp63
	movq	%rax, -8(%rbp)	# tmp63, gn
	addl	$1, -12(%rbp)	#, n
.L62:
	.loc 1 255 0 discriminator 1
	cmpq	$0, -8(%rbp)	#, gn
	jne	.L63	#,
	.loc 1 256 0 is_stmt 1
	movl	-12(%rbp), %eax	# n, D.3214
	.loc 1 257 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	glist_count, .-glist_count
	.globl	glist_tail
	.type	glist_tail, @function
glist_tail:
.LFB20:
	.loc 1 261 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# g, g
	.loc 1 264 0
	cmpq	$0, -24(%rbp)	#, g
	jne	.L66	#,
	.loc 1 265 0
	movl	$0, %eax	#, D.3215
	jmp	.L67	#
.L66:
	.loc 1 267 0
	movq	-24(%rbp), %rax	# g, tmp62
	movq	%rax, -8(%rbp)	# tmp62, gn
	jmp	.L68	#
.L69:
	.loc 1 267 0 is_stmt 0 discriminator 2
	movq	-8(%rbp), %rax	# gn, tmp63
	movq	8(%rax), %rax	# gn_1->next, tmp64
	movq	%rax, -8(%rbp)	# tmp64, gn
.L68:
	.loc 1 267 0 discriminator 1
	movq	-8(%rbp), %rax	# gn, tmp65
	movq	8(%rax), %rax	# gn_1->next, D.3216
	testq	%rax, %rax	# D.3216
	jne	.L69	#,
	.loc 1 268 0 is_stmt 1
	movq	-8(%rbp), %rax	# gn, D.3215
.L67:
	.loc 1 269 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	glist_tail, .-glist_tail
	.globl	glist_reverse
	.type	glist_reverse, @function
glist_reverse:
.LFB21:
	.loc 1 273 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)	# g, g
	.loc 1 277 0
	movq	$0, -16(%rbp)	#, rev
	.loc 1 278 0
	movq	-40(%rbp), %rax	# g, tmp61
	movq	%rax, -24(%rbp)	# tmp61, gn
	jmp	.L71	#
.L72:
	.loc 1 279 0 discriminator 2
	movq	-24(%rbp), %rax	# gn, tmp62
	movq	8(%rax), %rax	# gn_1->next, tmp63
	movq	%rax, -8(%rbp)	# tmp63, nextgn
	.loc 1 281 0 discriminator 2
	movq	-24(%rbp), %rax	# gn, tmp64
	movq	-16(%rbp), %rdx	# rev, tmp65
	movq	%rdx, 8(%rax)	# tmp65, gn_1->next
	.loc 1 282 0 discriminator 2
	movq	-24(%rbp), %rax	# gn, tmp66
	movq	%rax, -16(%rbp)	# tmp66, rev
	.loc 1 278 0 discriminator 2
	movq	-8(%rbp), %rax	# nextgn, tmp67
	movq	%rax, -24(%rbp)	# tmp67, gn
.L71:
	.loc 1 278 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)	#, gn
	jne	.L72	#,
	.loc 1 285 0 is_stmt 1
	movq	-16(%rbp), %rax	# rev, D.3217
	.loc 1 286 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	glist_reverse, .-glist_reverse
.Letext0:
	.file 2 "libutil/prim_type.h"
	.file 3 "libutil/glist.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x731
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF45
	.byte	0x1
	.long	.LASF46
	.long	.LASF47
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
	.uleb128 0x5
	.long	.LASF11
	.byte	0x2
	.byte	0x3f
	.long	0x57
	.uleb128 0x5
	.long	.LASF12
	.byte	0x2
	.byte	0x42
	.long	0x42
	.uleb128 0x5
	.long	.LASF13
	.byte	0x2
	.byte	0x45
	.long	0xa4
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF14
	.uleb128 0x5
	.long	.LASF15
	.byte	0x2
	.byte	0x46
	.long	0xb6
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF16
	.uleb128 0x6
	.long	.LASF48
	.byte	0x8
	.byte	0x2
	.byte	0x48
	.long	0x101
	.uleb128 0x7
	.string	"ptr"
	.byte	0x2
	.byte	0x49
	.long	0x6c
	.uleb128 0x8
	.long	.LASF11
	.byte	0x2
	.byte	0x4a
	.long	0x83
	.uleb128 0x8
	.long	.LASF12
	.byte	0x2
	.byte	0x4b
	.long	0x8e
	.uleb128 0x8
	.long	.LASF13
	.byte	0x2
	.byte	0x4c
	.long	0x99
	.uleb128 0x8
	.long	.LASF15
	.byte	0x2
	.byte	0x4d
	.long	0xab
	.byte	0
	.uleb128 0x5
	.long	.LASF17
	.byte	0x2
	.byte	0x4e
	.long	0xbd
	.uleb128 0x9
	.long	.LASF49
	.byte	0x10
	.byte	0x3
	.byte	0x4c
	.long	0x131
	.uleb128 0xa
	.long	.LASF18
	.byte	0x3
	.byte	0x4d
	.long	0x101
	.byte	0
	.uleb128 0xa
	.long	.LASF19
	.byte	0x3
	.byte	0x4e
	.long	0x131
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.long	0x10c
	.uleb128 0x5
	.long	.LASF20
	.byte	0x3
	.byte	0x4f
	.long	0x10c
	.uleb128 0x5
	.long	.LASF21
	.byte	0x3
	.byte	0x50
	.long	0x14d
	.uleb128 0xb
	.byte	0x8
	.long	0x137
	.uleb128 0xc
	.long	.LASF22
	.byte	0x1
	.byte	0x41
	.long	0x142
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x19c
	.uleb128 0xd
	.string	"g"
	.byte	0x1
	.byte	0x41
	.long	0x142
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xd
	.string	"ptr"
	.byte	0x1
	.byte	0x41
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xe
	.string	"gn"
	.byte	0x1
	.byte	0x43
	.long	0x14d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xc
	.long	.LASF23
	.byte	0x1
	.byte	0x4c
	.long	0x142
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e5
	.uleb128 0xd
	.string	"g"
	.byte	0x1
	.byte	0x4c
	.long	0x142
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xd
	.string	"val"
	.byte	0x1
	.byte	0x4c
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xe
	.string	"gn"
	.byte	0x1
	.byte	0x4e
	.long	0x14d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xc
	.long	.LASF24
	.byte	0x1
	.byte	0x57
	.long	0x142
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x22e
	.uleb128 0xd
	.string	"g"
	.byte	0x1
	.byte	0x57
	.long	0x142
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xd
	.string	"val"
	.byte	0x1
	.byte	0x57
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xe
	.string	"gn"
	.byte	0x1
	.byte	0x59
	.long	0x14d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xc
	.long	.LASF25
	.byte	0x1
	.byte	0x62
	.long	0x142
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x277
	.uleb128 0xd
	.string	"g"
	.byte	0x1
	.byte	0x62
	.long	0x142
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xd
	.string	"val"
	.byte	0x1
	.byte	0x62
	.long	0x99
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xe
	.string	"gn"
	.byte	0x1
	.byte	0x64
	.long	0x14d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xc
	.long	.LASF26
	.byte	0x1
	.byte	0x6d
	.long	0x142
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x2c0
	.uleb128 0xd
	.string	"g"
	.byte	0x1
	.byte	0x6d
	.long	0x142
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xd
	.string	"val"
	.byte	0x1
	.byte	0x6d
	.long	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xe
	.string	"gn"
	.byte	0x1
	.byte	0x6f
	.long	0x14d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xf
	.long	.LASF27
	.byte	0x1
	.byte	0x78
	.long	0x83
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x309
	.uleb128 0xd
	.string	"g"
	.byte	0x1
	.byte	0x78
	.long	0x142
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xd
	.string	"val"
	.byte	0x1
	.byte	0x78
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xe
	.string	"gn"
	.byte	0x1
	.byte	0x7a
	.long	0x14d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xf
	.long	.LASF28
	.byte	0x1
	.byte	0x84
	.long	0x83
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x352
	.uleb128 0xd
	.string	"g"
	.byte	0x1
	.byte	0x84
	.long	0x142
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xd
	.string	"val"
	.byte	0x1
	.byte	0x84
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xe
	.string	"gn"
	.byte	0x1
	.byte	0x86
	.long	0x14d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xf
	.long	.LASF29
	.byte	0x1
	.byte	0x90
	.long	0x83
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x39b
	.uleb128 0xd
	.string	"g"
	.byte	0x1
	.byte	0x90
	.long	0x142
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xd
	.string	"val"
	.byte	0x1
	.byte	0x90
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xe
	.string	"gn"
	.byte	0x1
	.byte	0x92
	.long	0x14d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xf
	.long	.LASF30
	.byte	0x1
	.byte	0x9c
	.long	0x83
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x3e4
	.uleb128 0xd
	.string	"g"
	.byte	0x1
	.byte	0x9c
	.long	0x142
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xd
	.string	"val"
	.byte	0x1
	.byte	0x9c
	.long	0x99
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xe
	.string	"gn"
	.byte	0x1
	.byte	0x9e
	.long	0x14d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xf
	.long	.LASF31
	.byte	0x1
	.byte	0xa8
	.long	0x83
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x42d
	.uleb128 0xd
	.string	"g"
	.byte	0x1
	.byte	0xa8
	.long	0x142
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xd
	.string	"val"
	.byte	0x1
	.byte	0xa8
	.long	0xab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xe
	.string	"gn"
	.byte	0x1
	.byte	0xaa
	.long	0x14d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x10
	.long	.LASF33
	.byte	0x1
	.byte	0xb4
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x472
	.uleb128 0xd
	.string	"g"
	.byte	0x1
	.byte	0xb4
	.long	0x142
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x11
	.long	.LASF32
	.byte	0x1
	.byte	0xb4
	.long	0x47d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xe
	.string	"gn"
	.byte	0x1
	.byte	0xb6
	.long	0x14d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x12
	.long	0x47d
	.uleb128 0x13
	.long	0x6c
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.long	0x472
	.uleb128 0x10
	.long	.LASF34
	.byte	0x1
	.byte	0xbd
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x4c8
	.uleb128 0xd
	.string	"g"
	.byte	0x1
	.byte	0xbd
	.long	0x142
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x11
	.long	.LASF32
	.byte	0x1
	.byte	0xbd
	.long	0x4d3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xe
	.string	"gn"
	.byte	0x1
	.byte	0xbf
	.long	0x14d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x12
	.long	0x4d3
	.uleb128 0x13
	.long	0x83
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.long	0x4c8
	.uleb128 0x10
	.long	.LASF35
	.byte	0x1
	.byte	0xc6
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x51e
	.uleb128 0xd
	.string	"g"
	.byte	0x1
	.byte	0xc6
	.long	0x142
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x11
	.long	.LASF32
	.byte	0x1
	.byte	0xc6
	.long	0x529
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xe
	.string	"gn"
	.byte	0x1
	.byte	0xc8
	.long	0x14d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x12
	.long	0x529
	.uleb128 0x13
	.long	0x8e
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.long	0x51e
	.uleb128 0x10
	.long	.LASF36
	.byte	0x1
	.byte	0xcf
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x574
	.uleb128 0xd
	.string	"g"
	.byte	0x1
	.byte	0xcf
	.long	0x142
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x11
	.long	.LASF32
	.byte	0x1
	.byte	0xcf
	.long	0x57f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xe
	.string	"gn"
	.byte	0x1
	.byte	0xd1
	.long	0x14d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x12
	.long	0x57f
	.uleb128 0x13
	.long	0x99
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.long	0x574
	.uleb128 0x10
	.long	.LASF37
	.byte	0x1
	.byte	0xd8
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x5ca
	.uleb128 0xd
	.string	"g"
	.byte	0x1
	.byte	0xd8
	.long	0x142
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x11
	.long	.LASF32
	.byte	0x1
	.byte	0xd8
	.long	0x5d5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xe
	.string	"gn"
	.byte	0x1
	.byte	0xda
	.long	0x14d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x12
	.long	0x5d5
	.uleb128 0x13
	.long	0xab
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.long	0x5ca
	.uleb128 0x10
	.long	.LASF38
	.byte	0x1
	.byte	0xe1
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x612
	.uleb128 0xd
	.string	"g"
	.byte	0x1
	.byte	0xe1
	.long	0x142
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xe
	.string	"gn"
	.byte	0x1
	.byte	0xe3
	.long	0x14d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x10
	.long	.LASF39
	.byte	0x1
	.byte	0xed
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x657
	.uleb128 0xd
	.string	"g"
	.byte	0x1
	.byte	0xed
	.long	0x142
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x11
	.long	.LASF40
	.byte	0x1
	.byte	0xed
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xe
	.string	"gn"
	.byte	0x1
	.byte	0xef
	.long	0x14d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xf
	.long	.LASF41
	.byte	0x1
	.byte	0xfa
	.long	0x83
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x69e
	.uleb128 0xd
	.string	"g"
	.byte	0x1
	.byte	0xfa
	.long	0x142
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xe
	.string	"gn"
	.byte	0x1
	.byte	0xfc
	.long	0x14d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xe
	.string	"n"
	.byte	0x1
	.byte	0xfd
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x14
	.long	.LASF42
	.byte	0x1
	.value	0x104
	.long	0x14d
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x6dc
	.uleb128 0x15
	.string	"g"
	.byte	0x1
	.value	0x104
	.long	0x142
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x16
	.string	"gn"
	.byte	0x1
	.value	0x106
	.long	0x14d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x17
	.long	.LASF43
	.byte	0x1
	.value	0x110
	.long	0x142
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x15
	.string	"g"
	.byte	0x1
	.value	0x110
	.long	0x142
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x16
	.string	"gn"
	.byte	0x1
	.value	0x112
	.long	0x14d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.long	.LASF44
	.byte	0x1
	.value	0x112
	.long	0x14d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x16
	.string	"rev"
	.byte	0x1
	.value	0x113
	.long	0x14d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
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
	.uleb128 0x7
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x2117
	.uleb128 0x19
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.string	"glist_apply_float64"
.LASF19:
	.string	"next"
.LASF33:
	.string	"glist_apply_ptr"
.LASF15:
	.string	"float64"
.LASF43:
	.string	"glist_reverse"
.LASF48:
	.string	"anytype_s"
.LASF17:
	.string	"anytype_t"
.LASF39:
	.string	"glist_myfree"
.LASF34:
	.string	"glist_apply_int32"
.LASF30:
	.string	"glist_chkdup_float32"
.LASF14:
	.string	"float"
.LASF18:
	.string	"data"
.LASF10:
	.string	"long long unsigned int"
.LASF1:
	.string	"unsigned char"
.LASF22:
	.string	"glist_add_ptr"
.LASF0:
	.string	"long unsigned int"
.LASF44:
	.string	"nextgn"
.LASF11:
	.string	"int32"
.LASF38:
	.string	"glist_free"
.LASF49:
	.string	"gnode_s"
.LASF36:
	.string	"glist_apply_float32"
.LASF23:
	.string	"glist_add_int32"
.LASF16:
	.string	"double"
.LASF26:
	.string	"glist_add_float64"
.LASF46:
	.string	"glist.c"
.LASF32:
	.string	"func"
.LASF13:
	.string	"float32"
.LASF27:
	.string	"glist_chkdup_ptr"
.LASF12:
	.string	"uint32"
.LASF47:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/482.sphinx3/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF3:
	.string	"unsigned int"
.LASF35:
	.string	"glist_apply_uint32"
.LASF24:
	.string	"glist_add_uint32"
.LASF42:
	.string	"glist_tail"
.LASF29:
	.string	"glist_chkdup_uint32"
.LASF40:
	.string	"datasize"
.LASF7:
	.string	"sizetype"
.LASF21:
	.string	"glist_t"
.LASF9:
	.string	"long long int"
.LASF8:
	.string	"char"
.LASF28:
	.string	"glist_chkdup_int32"
.LASF20:
	.string	"gnode_t"
.LASF45:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF5:
	.string	"short int"
.LASF31:
	.string	"glist_chkdup_float64"
.LASF25:
	.string	"glist_add_float32"
.LASF6:
	.string	"long int"
.LASF41:
	.string	"glist_count"
.LASF4:
	.string	"signed char"
.LASF2:
	.string	"short unsigned int"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
