	.file	"mbuffer.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 mbuffer.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.comm	dpb,64,32
	.comm	listX,48,32
	.globl	Co_located
	.bss
	.align 8
	.type	Co_located, @object
	.size	Co_located, 8
Co_located:
	.zero	8
	.comm	listXsize,24,16
	.text
	.globl	dump_dpb
	.type	dump_dpb, @function
dump_dpb:
.LFB2:
	.file 1 "mbuffer.c"
	.loc 1 56 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 59 0
	nop
	.loc 1 91 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	dump_dpb, .-dump_dpb
	.section	.rodata
.LC0:
	.string	"undefined level"
	.text
	.globl	getDpbSize
	.type	getDpbSize, @function
getDpbSize:
.LFB3:
	.loc 1 102 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 103 0
	movq	active_sps(%rip), %rax	# active_sps, active_sps.0
	movl	1140(%rax), %eax	# active_sps.0_3->pic_width_in_mbs_minus1, D.14686
	leal	1(%rax), %edx	#, D.14686
	movq	active_sps(%rip), %rax	# active_sps, active_sps.1
	movl	1144(%rax), %eax	# active_sps.1_6->pic_height_in_map_units_minus1, D.14686
	addl	$1, %eax	#, D.14686
	imull	%eax, %edx	# D.14686, D.14686
	movq	active_sps(%rip), %rax	# active_sps, active_sps.3
	movl	1148(%rax), %eax	# active_sps.3_10->frame_mbs_only_flag, D.14687
	testl	%eax, %eax	# D.14687
	je	.L4	#,
	.loc 1 103 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, iftmp.2
	jmp	.L5	#
.L4:
	.loc 1 103 0 discriminator 2
	movl	$2, %eax	#, iftmp.2
.L5:
	.loc 1 103 0 discriminator 3
	imull	%eax, %edx	# iftmp.2, D.14686
	movl	%edx, %eax	# D.14686, tmp75
	addl	%eax, %eax	# tmp75
	addl	%edx, %eax	# D.14686, tmp75
	sall	$7, %eax	#, tmp76
	movl	%eax, -4(%rbp)	# D.14686, pic_size
	.loc 1 105 0 is_stmt 1 discriminator 3
	movl	$0, -8(%rbp)	#, size
	.loc 1 107 0 discriminator 3
	movq	active_sps(%rip), %rax	# active_sps, active_sps.4
	movl	24(%rax), %eax	# active_sps.4_18->level_idc, D.14686
	subl	$10, %eax	#, tmp77
	cmpl	$41, %eax	#, tmp77
	ja	.L6	#,
	movl	%eax, %eax	# tmp77, tmp78
	movq	.L8(,%rax,8), %rax	#, tmp79
	jmp	*%rax	# tmp79
	.section	.rodata
	.align 8
	.align 4
.L8:
	.quad	.L7
	.quad	.L9
	.quad	.L10
	.quad	.L11
	.quad	.L6
	.quad	.L6
	.quad	.L6
	.quad	.L6
	.quad	.L6
	.quad	.L6
	.quad	.L12
	.quad	.L13
	.quad	.L14
	.quad	.L6
	.quad	.L6
	.quad	.L6
	.quad	.L6
	.quad	.L6
	.quad	.L6
	.quad	.L6
	.quad	.L15
	.quad	.L16
	.quad	.L17
	.quad	.L6
	.quad	.L6
	.quad	.L6
	.quad	.L6
	.quad	.L6
	.quad	.L6
	.quad	.L6
	.quad	.L18
	.quad	.L19
	.quad	.L20
	.quad	.L6
	.quad	.L6
	.quad	.L6
	.quad	.L6
	.quad	.L6
	.quad	.L6
	.quad	.L6
	.quad	.L21
	.quad	.L22
	.text
.L7:
	.loc 1 110 0
	movl	$152064, -8(%rbp)	#, size
	.loc 1 111 0
	jmp	.L23	#
.L9:
	.loc 1 113 0
	movl	$345600, -8(%rbp)	#, size
	.loc 1 114 0
	jmp	.L23	#
.L10:
	.loc 1 116 0
	movl	$912384, -8(%rbp)	#, size
	.loc 1 117 0
	jmp	.L23	#
.L11:
	.loc 1 119 0
	movl	$912384, -8(%rbp)	#, size
	.loc 1 120 0
	jmp	.L23	#
.L12:
	.loc 1 122 0
	movl	$912384, -8(%rbp)	#, size
	.loc 1 123 0
	jmp	.L23	#
.L13:
	.loc 1 125 0
	movl	$1824768, -8(%rbp)	#, size
	.loc 1 126 0
	jmp	.L23	#
.L14:
	.loc 1 128 0
	movl	$3110400, -8(%rbp)	#, size
	.loc 1 129 0
	jmp	.L23	#
.L15:
	.loc 1 131 0
	movl	$3110400, -8(%rbp)	#, size
	.loc 1 132 0
	jmp	.L23	#
.L16:
	.loc 1 134 0
	movl	$6912000, -8(%rbp)	#, size
	.loc 1 135 0
	jmp	.L23	#
.L17:
	.loc 1 137 0
	movl	$7864320, -8(%rbp)	#, size
	.loc 1 138 0
	jmp	.L23	#
.L18:
	.loc 1 140 0
	movl	$12582912, -8(%rbp)	#, size
	.loc 1 141 0
	jmp	.L23	#
.L19:
	.loc 1 143 0
	movl	$12582912, -8(%rbp)	#, size
	.loc 1 144 0
	jmp	.L23	#
.L20:
	.loc 1 146 0
	movl	$12582912, -8(%rbp)	#, size
	.loc 1 147 0
	jmp	.L23	#
.L21:
	.loc 1 149 0
	movl	$42393600, -8(%rbp)	#, size
	.loc 1 150 0
	jmp	.L23	#
.L22:
	.loc 1 152 0
	movl	$70778880, -8(%rbp)	#, size
	.loc 1 153 0
	jmp	.L23	#
.L6:
	.loc 1 155 0
	movl	$500, %esi	#,
	movl	$.LC0, %edi	#,
	call	error	#
	.loc 1 156 0
	nop
.L23:
	.loc 1 159 0
	movl	-8(%rbp), %eax	# size, tmp83
	cltd
	idivl	-4(%rbp)	# pic_size
	movl	%eax, -8(%rbp)	# tmp81, size
	.loc 1 160 0
	movl	$16, %eax	#, tmp84
	cmpl	$16, -8(%rbp)	#, size
	cmovle	-8(%rbp), %eax	# size,, D.14688
	.loc 1 161 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	getDpbSize, .-getDpbSize
	.section	.rodata
	.align 8
.LC1:
	.string	"DPB size at specified level is smaller than the specified number of reference frames. This is not allowed.\n"
.LC2:
	.string	"init_dpb: dpb->fs"
.LC3:
	.string	"init_dpb: dpb->fs_ref"
.LC4:
	.string	"init_dpb: dpb->fs_ltref"
.LC5:
	.string	"init_dpb: listX[i]"
	.text
	.globl	init_dpb
	.type	init_dpb, @function
init_dpb:
.LFB4:
	.loc 1 171 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$24, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 174 0
	movl	dpb+48(%rip), %eax	# dpb.init_done, D.14690
	testl	%eax, %eax	# D.14690
	je	.L26	#,
	.loc 1 176 0
	movl	$0, %eax	#,
	call	free_dpb	#
.L26:
	.loc 1 179 0
	movl	$0, %eax	#,
	call	getDpbSize	#
	movl	%eax, dpb+24(%rip)	# D.14691, dpb.size
	.loc 1 181 0
	movl	dpb+24(%rip), %edx	# dpb.size, D.14691
	movq	input(%rip), %rax	# input, input.5
	movl	36(%rax), %eax	# input.5_9->num_ref_frames, D.14690
	cmpl	%eax, %edx	# D.14691, D.14691
	jae	.L27	#,
	.loc 1 183 0
	movl	$1000, %esi	#,
	movl	$.LC1, %edi	#,
	call	error	#
.L27:
	.loc 1 186 0
	movl	$0, dpb+28(%rip)	#, dpb.used_size
	.loc 1 187 0
	movq	$0, dpb+56(%rip)	#, dpb.last_picture
	.loc 1 189 0
	movl	$0, dpb+32(%rip)	#, dpb.ref_frames_in_buffer
	.loc 1 190 0
	movl	$0, dpb+36(%rip)	#, dpb.ltref_frames_in_buffer
	.loc 1 192 0
	movl	dpb+24(%rip), %eax	# dpb.size, D.14691
	movl	%eax, %eax	# D.14691, D.14692
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.14692,
	call	calloc	#
	movq	%rax, dpb(%rip)	# D.14693, dpb.fs
	.loc 1 193 0
	movq	dpb(%rip), %rax	# dpb.fs, D.14694
	testq	%rax, %rax	# D.14694
	jne	.L28	#,
	.loc 1 194 0
	movl	$.LC2, %edi	#,
	call	no_mem_exit	#
.L28:
	.loc 1 196 0
	movl	dpb+24(%rip), %eax	# dpb.size, D.14691
	movl	%eax, %eax	# D.14691, D.14692
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.14692,
	call	calloc	#
	movq	%rax, dpb+8(%rip)	# D.14693, dpb.fs_ref
	.loc 1 197 0
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14694
	testq	%rax, %rax	# D.14694
	jne	.L29	#,
	.loc 1 198 0
	movl	$.LC3, %edi	#,
	call	no_mem_exit	#
.L29:
	.loc 1 200 0
	movl	dpb+24(%rip), %eax	# dpb.size, D.14691
	movl	%eax, %eax	# D.14691, D.14692
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.14692,
	call	calloc	#
	movq	%rax, dpb+16(%rip)	# D.14693, dpb.fs_ltref
	.loc 1 201 0
	movq	dpb+16(%rip), %rax	# dpb.fs_ltref, D.14694
	testq	%rax, %rax	# D.14694
	jne	.L30	#,
	.loc 1 202 0
	movl	$.LC4, %edi	#,
	call	no_mem_exit	#
.L30:
	.loc 1 204 0
	movl	$0, -24(%rbp)	#, i
	jmp	.L31	#
.L32:
	.loc 1 206 0 discriminator 2
	movq	dpb(%rip), %rax	# dpb.fs, D.14694
	movl	-24(%rbp), %edx	# i, D.14692
	salq	$3, %rdx	#, D.14692
	leaq	(%rax,%rdx), %rbx	#, D.14694
	movl	$0, %eax	#,
	call	alloc_frame_store	#
	movq	%rax, (%rbx)	# D.14695, *_29
	.loc 1 207 0 discriminator 2
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14694
	movl	-24(%rbp), %edx	# i, D.14692
	salq	$3, %rdx	#, D.14692
	addq	%rdx, %rax	# D.14692, D.14694
	movq	$0, (%rax)	#, *_34
	.loc 1 208 0 discriminator 2
	movq	dpb+16(%rip), %rax	# dpb.fs_ltref, D.14694
	movl	-24(%rbp), %edx	# i, D.14692
	salq	$3, %rdx	#, D.14692
	addq	%rdx, %rax	# D.14692, D.14694
	movq	$0, (%rax)	#, *_38
	.loc 1 204 0 discriminator 2
	addl	$1, -24(%rbp)	#, i
.L31:
	.loc 1 204 0 is_stmt 0 discriminator 1
	movl	dpb+24(%rip), %eax	# dpb.size, D.14691
	cmpl	-24(%rbp), %eax	# i, D.14691
	ja	.L32	#,
	.loc 1 211 0 is_stmt 1
	movl	$0, -24(%rbp)	#, i
	jmp	.L33	#
.L35:
	.loc 1 213 0
	movl	$8, %esi	#,
	movl	$33, %edi	#,
	call	calloc	#
	movq	%rax, %rdx	# tmp102, D.14693
	movl	-24(%rbp), %eax	# i, tmp103
	movq	%rdx, listX(,%rax,8)	# D.14693, listX
	.loc 1 214 0
	movl	-24(%rbp), %eax	# i, tmp104
	movq	listX(,%rax,8), %rax	# listX, D.14696
	testq	%rax, %rax	# D.14696
	jne	.L34	#,
	.loc 1 215 0
	movl	$.LC5, %edi	#,
	call	no_mem_exit	#
.L34:
	.loc 1 211 0
	addl	$1, -24(%rbp)	#, i
.L33:
	.loc 1 211 0 is_stmt 0 discriminator 1
	cmpl	$5, -24(%rbp)	#, i
	jbe	.L35	#,
	.loc 1 218 0 is_stmt 1
	movl	$0, -20(%rbp)	#, j
	jmp	.L36	#
.L39:
	.loc 1 220 0
	movl	$0, -24(%rbp)	#, i
	jmp	.L37	#
.L38:
	.loc 1 222 0 discriminator 2
	movl	-20(%rbp), %eax	# j, tmp105
	movq	listX(,%rax,8), %rax	# listX, D.14696
	movl	-24(%rbp), %edx	# i, D.14692
	salq	$3, %rdx	#, D.14692
	addq	%rdx, %rax	# D.14692, D.14696
	movq	$0, (%rax)	#, *_49
	.loc 1 220 0 discriminator 2
	addl	$1, -24(%rbp)	#, i
.L37:
	.loc 1 220 0 is_stmt 0 discriminator 1
	cmpl	$32, -24(%rbp)	#, i
	jbe	.L38	#,
	.loc 1 224 0 is_stmt 1
	movl	-20(%rbp), %eax	# j, tmp106
	movl	$0, listXsize(,%rax,4)	#, listXsize
	.loc 1 218 0
	addl	$1, -20(%rbp)	#, j
.L36:
	.loc 1 218 0 is_stmt 0 discriminator 1
	cmpl	$5, -20(%rbp)	#, j
	jbe	.L39	#,
	.loc 1 227 0 is_stmt 1
	movl	$-2147483648, dpb+40(%rip)	#, dpb.last_output_poc
	.loc 1 229 0
	movq	img(%rip), %rax	# img, img.6
	movl	$0, 72644(%rax)	#, img.6_52->last_has_mmco_5
	.loc 1 231 0
	movl	$1, dpb+48(%rip)	#, dpb.init_done
	.loc 1 232 0
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	init_dpb, .-init_dpb
	.globl	free_dpb
	.type	free_dpb, @function
free_dpb:
.LFB5:
	.loc 1 242 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 244 0
	movq	dpb(%rip), %rax	# dpb.fs, D.14702
	testq	%rax, %rax	# D.14702
	je	.L41	#,
	.loc 1 246 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L42	#
.L43:
	.loc 1 248 0 discriminator 2
	movq	dpb(%rip), %rax	# dpb.fs, D.14702
	movl	-4(%rbp), %edx	# i, D.14704
	salq	$3, %rdx	#, D.14704
	addq	%rdx, %rax	# D.14704, D.14702
	movq	(%rax), %rax	# *_9, D.14705
	movq	%rax, %rdi	# D.14705,
	call	free_frame_store	#
	.loc 1 246 0 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L42:
	.loc 1 246 0 is_stmt 0 discriminator 1
	movl	dpb+24(%rip), %eax	# dpb.size, D.14703
	cmpl	-4(%rbp), %eax	# i, D.14703
	ja	.L43	#,
	.loc 1 250 0 is_stmt 1
	movq	dpb(%rip), %rax	# dpb.fs, D.14702
	movq	%rax, %rdi	# D.14702,
	call	free	#
	.loc 1 251 0
	movq	$0, dpb(%rip)	#, dpb.fs
.L41:
	.loc 1 253 0
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14702
	testq	%rax, %rax	# D.14702
	je	.L44	#,
	.loc 1 255 0
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14702
	movq	%rax, %rdi	# D.14702,
	call	free	#
.L44:
	.loc 1 257 0
	movq	dpb+16(%rip), %rax	# dpb.fs_ltref, D.14702
	testq	%rax, %rax	# D.14702
	je	.L45	#,
	.loc 1 259 0
	movq	dpb+16(%rip), %rax	# dpb.fs_ltref, D.14702
	movq	%rax, %rdi	# D.14702,
	call	free	#
.L45:
	.loc 1 261 0
	movl	$-2147483648, dpb+40(%rip)	#, dpb.last_output_poc
	.loc 1 263 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L46	#
.L48:
	.loc 1 264 0
	movl	-4(%rbp), %eax	# i, tmp73
	movq	listX(,%rax,8), %rax	# listX, D.14706
	testq	%rax, %rax	# D.14706
	je	.L47	#,
	.loc 1 266 0
	movl	-4(%rbp), %eax	# i, tmp74
	movq	listX(,%rax,8), %rax	# listX, D.14706
	movq	%rax, %rdi	# D.14706,
	call	free	#
	.loc 1 267 0
	movl	-4(%rbp), %eax	# i, tmp75
	movq	$0, listX(,%rax,8)	#, listX
.L47:
	.loc 1 263 0
	addl	$1, -4(%rbp)	#, i
.L46:
	.loc 1 263 0 is_stmt 0 discriminator 1
	cmpl	$5, -4(%rbp)	#, i
	jbe	.L48	#,
	.loc 1 270 0 is_stmt 1
	movl	$0, dpb+48(%rip)	#, dpb.init_done
	.loc 1 271 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	free_dpb, .-free_dpb
	.section	.rodata
.LC6:
	.string	"alloc_frame_store: f"
	.text
	.globl	alloc_frame_store
	.type	alloc_frame_store, @function
alloc_frame_store:
.LFB6:
	.loc 1 284 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 287 0
	movl	$64, %esi	#,
	movl	$1, %edi	#,
	call	calloc	#
	movq	%rax, -8(%rbp)	# tmp61, f
	.loc 1 288 0
	cmpq	$0, -8(%rbp)	#, f
	jne	.L50	#,
	.loc 1 289 0
	movl	$.LC6, %edi	#,
	call	no_mem_exit	#
.L50:
	.loc 1 291 0
	movq	-8(%rbp), %rax	# f, tmp62
	movl	$0, (%rax)	#, f_1->is_used
	.loc 1 292 0
	movq	-8(%rbp), %rax	# f, tmp63
	movl	$0, 4(%rax)	#, f_1->is_reference
	.loc 1 293 0
	movq	-8(%rbp), %rax	# f, tmp64
	movl	$0, 8(%rax)	#, f_1->is_long_term
	.loc 1 294 0
	movq	-8(%rbp), %rax	# f, tmp65
	movl	$0, 12(%rax)	#, f_1->is_orig_reference
	.loc 1 296 0
	movq	-8(%rbp), %rax	# f, tmp66
	movl	$0, 32(%rax)	#, f_1->is_output
	.loc 1 298 0
	movq	-8(%rbp), %rax	# f, tmp67
	movq	$0, 40(%rax)	#, f_1->frame
	.loc 1 299 0
	movq	-8(%rbp), %rax	# f, tmp68
	movq	$0, 48(%rax)	#, f_1->top_field
	.loc 1 300 0
	movq	-8(%rbp), %rax	# f, tmp69
	movq	$0, 56(%rax)	#, f_1->bottom_field
	.loc 1 302 0
	movq	-8(%rbp), %rax	# f, D.14707
	.loc 1 303 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	alloc_frame_store, .-alloc_frame_store
	.section	.rodata
.LC7:
	.string	"alloc_storable_picture: s"
	.align 8
.LC8:
	.string	"alloc_storable_picture: s->mb_field"
	.text
	.globl	alloc_storable_picture
	.type	alloc_storable_picture, @function
alloc_storable_picture:
.LFB7:
	.loc 1 326 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -20(%rbp)	# structure, structure
	movl	%esi, -24(%rbp)	# size_x, size_x
	movl	%edx, -28(%rbp)	# size_y, size_y
	movl	%ecx, -32(%rbp)	# size_x_cr, size_x_cr
	movl	%r8d, -36(%rbp)	# size_y_cr, size_y_cr
	.loc 1 331 0
	movl	$6584, %esi	#,
	movl	$1, %edi	#,
	call	calloc	#
	movq	%rax, -8(%rbp)	# tmp94, s
	.loc 1 332 0
	cmpq	$0, -8(%rbp)	#, s
	jne	.L53	#,
	.loc 1 333 0
	movl	$.LC7, %edi	#,
	call	no_mem_exit	#
.L53:
	.loc 1 335 0
	movq	-8(%rbp), %rax	# s, tmp95
	leaq	6424(%rax), %rcx	#, D.14709
	movl	-24(%rbp), %edx	# size_x, tmp96
	movl	-28(%rbp), %eax	# size_y, tmp97
	movl	%eax, %esi	# tmp97,
	movq	%rcx, %rdi	# D.14709,
	call	get_mem2Dpel	#
	.loc 1 337 0
	movq	-8(%rbp), %rax	# s, tmp98
	movq	$0, 6432(%rax)	#, s_1->imgY_11
	.loc 1 338 0
	movq	-8(%rbp), %rax	# s, tmp99
	movq	$0, 6448(%rax)	#, s_1->imgY_ups
	.loc 1 339 0
	movq	-8(%rbp), %rax	# s, tmp100
	movq	$0, 6464(%rax)	#, s_1->imgUV
	.loc 1 341 0
	movq	input(%rip), %rax	# input, input.7
	movl	1284(%rax), %eax	# input.7_5->WeightedPrediction, D.14710
	testl	%eax, %eax	# D.14710
	jne	.L54	#,
	.loc 1 341 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.8
	movl	1288(%rax), %eax	# input.8_7->WeightedBiprediction, D.14710
	testl	%eax, %eax	# D.14710
	jne	.L54	#,
	movq	input(%rip), %rax	# input, input.9
	movl	60(%rax), %eax	# input.9_9->GenerateMultiplePPS, D.14710
	testl	%eax, %eax	# D.14710
	je	.L55	#,
.L54:
	.loc 1 343 0 is_stmt 1
	movq	-8(%rbp), %rax	# s, tmp101
	movq	$0, 6440(%rax)	#, s_1->imgY_11_w
	.loc 1 344 0
	movq	-8(%rbp), %rax	# s, tmp102
	movq	$0, 6456(%rax)	#, s_1->imgY_ups_w
.L55:
	.loc 1 347 0
	movq	img(%rip), %rax	# img, img.10
	movl	72700(%rax), %eax	# img.10_11->yuv_format, D.14710
	testl	%eax, %eax	# D.14710
	je	.L56	#,
	.loc 1 348 0
	movq	-8(%rbp), %rax	# s, tmp103
	leaq	6464(%rax), %rdi	#, D.14711
	movl	-32(%rbp), %edx	# size_x_cr, tmp104
	movl	-36(%rbp), %eax	# size_y_cr, tmp105
	movl	%edx, %ecx	# tmp104,
	movl	%eax, %edx	# tmp105,
	movl	$2, %esi	#,
	call	get_mem3Dpel	#
.L56:
	.loc 1 350 0
	movq	img(%rip), %rax	# img, img.11
	movl	72484(%rax), %eax	# img.11_16->PicSizeInMbs, D.14712
	movl	%eax, %eax	# D.14712, D.14713
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.14713,
	call	calloc	#
	movq	%rax, %rdx	# tmp106, D.14714
	movq	-8(%rbp), %rax	# s, tmp107
	movq	%rdx, 6472(%rax)	# D.14714, s_1->mb_field
	.loc 1 351 0
	movq	-8(%rbp), %rax	# s, tmp108
	movq	6472(%rax), %rax	# s_1->mb_field, D.14715
	testq	%rax, %rax	# D.14715
	jne	.L57	#,
	.loc 1 352 0
	movl	$.LC8, %edi	#,
	call	no_mem_exit	#
.L57:
	.loc 1 354 0
	movl	-28(%rbp), %eax	# size_y, tmp109
	leal	3(%rax), %edx	#, tmp111
	testl	%eax, %eax	# tmp110
	cmovs	%edx, %eax	# tmp111,, tmp110
	sarl	$2, %eax	#, tmp112
	movl	%eax, %edx	# tmp112, D.14710
	movl	-24(%rbp), %eax	# size_x, tmp113
	leal	3(%rax), %ecx	#, tmp115
	testl	%eax, %eax	# tmp114
	cmovs	%ecx, %eax	# tmp115,, tmp114
	sarl	$2, %eax	#, tmp116
	movq	-8(%rbp), %rcx	# s, tmp117
	leaq	6480(%rcx), %rdi	#, D.14716
	movl	%edx, %ecx	# D.14710,
	movl	%eax, %edx	# D.14710,
	movl	$2, %esi	#,
	call	get_mem3Dshort	#
	.loc 1 355 0
	movl	-28(%rbp), %eax	# size_y, tmp118
	leal	3(%rax), %edx	#, tmp120
	testl	%eax, %eax	# tmp119
	cmovs	%edx, %eax	# tmp120,, tmp119
	sarl	$2, %eax	#, tmp121
	movl	%eax, %edx	# tmp121, D.14710
	movl	-24(%rbp), %eax	# size_x, tmp122
	leal	3(%rax), %ecx	#, tmp124
	testl	%eax, %eax	# tmp123
	cmovs	%ecx, %eax	# tmp124,, tmp123
	sarl	$2, %eax	#, tmp125
	movq	-8(%rbp), %rcx	# s, tmp126
	leaq	6488(%rcx), %rdi	#, D.14717
	movl	%edx, %ecx	# D.14710,
	movl	%eax, %edx	# D.14710,
	movl	$6, %esi	#,
	call	get_mem3Dint64	#
	.loc 1 356 0
	movl	-28(%rbp), %eax	# size_y, tmp127
	leal	3(%rax), %edx	#, tmp129
	testl	%eax, %eax	# tmp128
	cmovs	%edx, %eax	# tmp129,, tmp128
	sarl	$2, %eax	#, tmp130
	movl	%eax, %edx	# tmp130, D.14710
	movl	-24(%rbp), %eax	# size_x, tmp131
	leal	3(%rax), %ecx	#, tmp133
	testl	%eax, %eax	# tmp132
	cmovs	%ecx, %eax	# tmp133,, tmp132
	sarl	$2, %eax	#, tmp134
	movq	-8(%rbp), %rcx	# s, tmp135
	leaq	6496(%rcx), %rdi	#, D.14717
	movl	%edx, %ecx	# D.14710,
	movl	%eax, %edx	# D.14710,
	movl	$6, %esi	#,
	call	get_mem3Dint64	#
	.loc 1 357 0
	movl	-28(%rbp), %eax	# size_y, tmp136
	leal	3(%rax), %edx	#, tmp138
	testl	%eax, %eax	# tmp137
	cmovs	%edx, %eax	# tmp138,, tmp137
	sarl	$2, %eax	#, tmp139
	movl	%eax, %edx	# tmp139, D.14710
	movl	-24(%rbp), %eax	# size_x, tmp140
	leal	3(%rax), %ecx	#, tmp142
	testl	%eax, %eax	# tmp141
	cmovs	%ecx, %eax	# tmp142,, tmp141
	sarl	$2, %eax	#, tmp143
	movq	-8(%rbp), %rcx	# s, tmp144
	leaq	6504(%rcx), %rdi	#, D.14718
	movl	$2, %r8d	#,
	movl	%edx, %ecx	# D.14710,
	movl	%eax, %edx	# D.14710,
	movl	$2, %esi	#,
	call	get_mem4Dshort	#
	.loc 1 359 0
	movl	-28(%rbp), %eax	# size_y, tmp145
	leal	3(%rax), %edx	#, tmp147
	testl	%eax, %eax	# tmp146
	cmovs	%edx, %eax	# tmp147,, tmp146
	sarl	$2, %eax	#, tmp148
	movl	%eax, %edx	# tmp148, D.14710
	movl	-24(%rbp), %eax	# size_x, tmp149
	leal	3(%rax), %ecx	#, tmp151
	testl	%eax, %eax	# tmp150
	cmovs	%ecx, %eax	# tmp151,, tmp150
	sarl	$2, %eax	#, tmp152
	movq	-8(%rbp), %rcx	# s, tmp153
	addq	$6512, %rcx	#, D.14719
	movl	%eax, %esi	# D.14710,
	movq	%rcx, %rdi	# D.14719,
	call	get_mem2D	#
	.loc 1 360 0
	movl	-28(%rbp), %eax	# size_y, tmp154
	leal	3(%rax), %edx	#, tmp156
	testl	%eax, %eax	# tmp155
	cmovs	%edx, %eax	# tmp156,, tmp155
	sarl	$2, %eax	#, tmp157
	movl	%eax, %edx	# tmp157, D.14710
	movl	-24(%rbp), %eax	# size_x, tmp158
	leal	3(%rax), %ecx	#, tmp160
	testl	%eax, %eax	# tmp159
	cmovs	%ecx, %eax	# tmp160,, tmp159
	sarl	$2, %eax	#, tmp161
	movq	-8(%rbp), %rcx	# s, tmp162
	addq	$6520, %rcx	#, D.14719
	movl	%eax, %esi	# D.14710,
	movq	%rcx, %rdi	# D.14719,
	call	get_mem2D	#
	.loc 1 362 0
	movq	-8(%rbp), %rax	# s, tmp163
	movl	$0, 6364(%rax)	#, s_1->pic_num
	.loc 1 363 0
	movq	-8(%rbp), %rax	# s, tmp164
	movl	$0, 6360(%rax)	#, s_1->frame_num
	.loc 1 364 0
	movq	-8(%rbp), %rax	# s, tmp165
	movl	$0, 6372(%rax)	#, s_1->long_term_frame_idx
	.loc 1 365 0
	movq	-8(%rbp), %rax	# s, tmp166
	movl	$0, 6368(%rax)	#, s_1->long_term_pic_num
	.loc 1 366 0
	movq	-8(%rbp), %rax	# s, tmp167
	movl	$0, 6380(%rax)	#, s_1->used_for_reference
	.loc 1 367 0
	movq	-8(%rbp), %rax	# s, tmp168
	movl	$0, 6376(%rax)	#, s_1->is_long_term
	.loc 1 368 0
	movq	-8(%rbp), %rax	# s, tmp169
	movl	$0, 6388(%rax)	#, s_1->non_existing
	.loc 1 369 0
	movq	-8(%rbp), %rax	# s, tmp170
	movl	$0, 6384(%rax)	#, s_1->is_output
	.loc 1 371 0
	movq	-8(%rbp), %rax	# s, tmp171
	movl	-20(%rbp), %edx	# structure, tmp172
	movl	%edx, (%rax)	# tmp172, s_1->structure
	.loc 1 373 0
	movq	-8(%rbp), %rax	# s, tmp173
	movl	-24(%rbp), %edx	# size_x, tmp174
	movl	%edx, 6392(%rax)	# tmp174, s_1->size_x
	.loc 1 374 0
	movq	-8(%rbp), %rax	# s, tmp175
	movl	-28(%rbp), %edx	# size_y, tmp176
	movl	%edx, 6396(%rax)	# tmp176, s_1->size_y
	.loc 1 375 0
	movq	-8(%rbp), %rax	# s, tmp177
	movl	-32(%rbp), %edx	# size_x_cr, tmp178
	movl	%edx, 6400(%rax)	# tmp178, s_1->size_x_cr
	.loc 1 376 0
	movq	-8(%rbp), %rax	# s, tmp179
	movl	-36(%rbp), %edx	# size_y_cr, tmp180
	movl	%edx, 6404(%rax)	# tmp180, s_1->size_y_cr
	.loc 1 378 0
	movq	-8(%rbp), %rax	# s, tmp181
	movq	$0, 6528(%rax)	#, s_1->top_field
	.loc 1 379 0
	movq	-8(%rbp), %rax	# s, tmp182
	movq	$0, 6536(%rax)	#, s_1->bottom_field
	.loc 1 380 0
	movq	-8(%rbp), %rax	# s, tmp183
	movq	$0, 6544(%rax)	#, s_1->frame
	.loc 1 382 0
	movq	-8(%rbp), %rax	# s, tmp184
	movl	$0, 6412(%rax)	#, s_1->coded_frame
	.loc 1 383 0
	movq	-8(%rbp), %rax	# s, tmp185
	movl	$0, 6416(%rax)	#, s_1->MbaffFrameFlag
	.loc 1 385 0
	movq	-8(%rbp), %rax	# s, D.14720
	.loc 1 386 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	alloc_storable_picture, .-alloc_storable_picture
	.globl	free_frame_store
	.type	free_frame_store, @function
free_frame_store:
.LFB8:
	.loc 1 399 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# f, f
	.loc 1 400 0
	cmpq	$0, -8(%rbp)	#, f
	je	.L59	#,
	.loc 1 402 0
	movq	-8(%rbp), %rax	# f, tmp65
	movq	40(%rax), %rax	# f_1(D)->frame, D.14723
	testq	%rax, %rax	# D.14723
	je	.L61	#,
	.loc 1 404 0
	movq	-8(%rbp), %rax	# f, tmp66
	movq	40(%rax), %rax	# f_1(D)->frame, D.14723
	movq	%rax, %rdi	# D.14723,
	call	free_storable_picture	#
	.loc 1 405 0
	movq	-8(%rbp), %rax	# f, tmp67
	movq	$0, 40(%rax)	#, f_1(D)->frame
.L61:
	.loc 1 407 0
	movq	-8(%rbp), %rax	# f, tmp68
	movq	48(%rax), %rax	# f_1(D)->top_field, D.14723
	testq	%rax, %rax	# D.14723
	je	.L62	#,
	.loc 1 409 0
	movq	-8(%rbp), %rax	# f, tmp69
	movq	48(%rax), %rax	# f_1(D)->top_field, D.14723
	movq	%rax, %rdi	# D.14723,
	call	free_storable_picture	#
	.loc 1 410 0
	movq	-8(%rbp), %rax	# f, tmp70
	movq	$0, 48(%rax)	#, f_1(D)->top_field
.L62:
	.loc 1 412 0
	movq	-8(%rbp), %rax	# f, tmp71
	movq	56(%rax), %rax	# f_1(D)->bottom_field, D.14723
	testq	%rax, %rax	# D.14723
	je	.L63	#,
	.loc 1 414 0
	movq	-8(%rbp), %rax	# f, tmp72
	movq	56(%rax), %rax	# f_1(D)->bottom_field, D.14723
	movq	%rax, %rdi	# D.14723,
	call	free_storable_picture	#
	.loc 1 415 0
	movq	-8(%rbp), %rax	# f, tmp73
	movq	$0, 56(%rax)	#, f_1(D)->bottom_field
.L63:
	.loc 1 417 0
	movq	-8(%rbp), %rax	# f, tmp74
	movq	%rax, %rdi	# tmp74,
	call	free	#
.L59:
	.loc 1 419 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	free_frame_store, .-free_frame_store
	.globl	free_storable_picture
	.type	free_storable_picture, @function
free_storable_picture:
.LFB9:
	.loc 1 432 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# p, p
	.loc 1 433 0
	cmpq	$0, -8(%rbp)	#, p
	je	.L64	#,
	.loc 1 435 0
	movq	-8(%rbp), %rax	# p, tmp93
	movq	6480(%rax), %rax	# p_1(D)->ref_idx, D.14724
	testq	%rax, %rax	# D.14724
	je	.L66	#,
	.loc 1 437 0
	movq	-8(%rbp), %rax	# p, tmp94
	movq	6480(%rax), %rax	# p_1(D)->ref_idx, D.14724
	movl	$2, %esi	#,
	movq	%rax, %rdi	# D.14724,
	call	free_mem3Dshort	#
	.loc 1 438 0
	movq	-8(%rbp), %rax	# p, tmp95
	movq	$0, 6480(%rax)	#, p_1(D)->ref_idx
.L66:
	.loc 1 441 0
	movq	-8(%rbp), %rax	# p, tmp96
	movq	6488(%rax), %rax	# p_1(D)->ref_pic_id, D.14725
	testq	%rax, %rax	# D.14725
	je	.L67	#,
	.loc 1 443 0
	movq	-8(%rbp), %rax	# p, tmp97
	movq	6488(%rax), %rax	# p_1(D)->ref_pic_id, D.14725
	movl	$6, %esi	#,
	movq	%rax, %rdi	# D.14725,
	call	free_mem3Dint64	#
	.loc 1 444 0
	movq	-8(%rbp), %rax	# p, tmp98
	movq	$0, 6488(%rax)	#, p_1(D)->ref_pic_id
.L67:
	.loc 1 446 0
	movq	-8(%rbp), %rax	# p, tmp99
	movq	6496(%rax), %rax	# p_1(D)->ref_id, D.14725
	testq	%rax, %rax	# D.14725
	je	.L68	#,
	.loc 1 448 0
	movq	-8(%rbp), %rax	# p, tmp100
	movq	6496(%rax), %rax	# p_1(D)->ref_id, D.14725
	movl	$6, %esi	#,
	movq	%rax, %rdi	# D.14725,
	call	free_mem3Dint64	#
	.loc 1 449 0
	movq	-8(%rbp), %rax	# p, tmp101
	movq	$0, 6496(%rax)	#, p_1(D)->ref_id
.L68:
	.loc 1 451 0
	movq	-8(%rbp), %rax	# p, tmp102
	movq	6504(%rax), %rax	# p_1(D)->mv, D.14726
	testq	%rax, %rax	# D.14726
	je	.L69	#,
	.loc 1 453 0
	movq	-8(%rbp), %rax	# p, tmp103
	movl	6392(%rax), %eax	# p_1(D)->size_x, D.14727
	leal	3(%rax), %edx	#, tmp105
	testl	%eax, %eax	# tmp104
	cmovs	%edx, %eax	# tmp105,, tmp104
	sarl	$2, %eax	#, tmp106
	movl	%eax, %edx	# tmp106, D.14727
	movq	-8(%rbp), %rax	# p, tmp107
	movq	6504(%rax), %rax	# p_1(D)->mv, D.14726
	movl	$2, %esi	#,
	movq	%rax, %rdi	# D.14726,
	call	free_mem4Dshort	#
	.loc 1 454 0
	movq	-8(%rbp), %rax	# p, tmp108
	movq	$0, 6504(%rax)	#, p_1(D)->mv
.L69:
	.loc 1 457 0
	movq	-8(%rbp), %rax	# p, tmp109
	movq	6512(%rax), %rax	# p_1(D)->moving_block, D.14728
	testq	%rax, %rax	# D.14728
	je	.L70	#,
	.loc 1 459 0
	movq	-8(%rbp), %rax	# p, tmp110
	movq	6512(%rax), %rax	# p_1(D)->moving_block, D.14728
	movq	%rax, %rdi	# D.14728,
	call	free_mem2D	#
	.loc 1 460 0
	movq	-8(%rbp), %rax	# p, tmp111
	movq	$0, 6512(%rax)	#, p_1(D)->moving_block
.L70:
	.loc 1 463 0
	movq	-8(%rbp), %rax	# p, tmp112
	movq	6520(%rax), %rax	# p_1(D)->field_frame, D.14728
	testq	%rax, %rax	# D.14728
	je	.L71	#,
	.loc 1 465 0
	movq	-8(%rbp), %rax	# p, tmp113
	movq	6520(%rax), %rax	# p_1(D)->field_frame, D.14728
	movq	%rax, %rdi	# D.14728,
	call	free_mem2D	#
	.loc 1 466 0
	movq	-8(%rbp), %rax	# p, tmp114
	movq	$0, 6520(%rax)	#, p_1(D)->field_frame
.L71:
	.loc 1 470 0
	movq	-8(%rbp), %rax	# p, tmp115
	movq	6424(%rax), %rax	# p_1(D)->imgY, D.14729
	testq	%rax, %rax	# D.14729
	je	.L72	#,
	.loc 1 472 0
	movq	-8(%rbp), %rax	# p, tmp116
	movq	6424(%rax), %rax	# p_1(D)->imgY, D.14729
	movq	%rax, %rdi	# D.14729,
	call	free_mem2Dpel	#
	.loc 1 473 0
	movq	-8(%rbp), %rax	# p, tmp117
	movq	$0, 6424(%rax)	#, p_1(D)->imgY
.L72:
	.loc 1 475 0
	movq	-8(%rbp), %rax	# p, tmp118
	movq	6432(%rax), %rax	# p_1(D)->imgY_11, D.14730
	testq	%rax, %rax	# D.14730
	je	.L73	#,
	.loc 1 477 0
	movq	-8(%rbp), %rax	# p, tmp119
	movq	6432(%rax), %rax	# p_1(D)->imgY_11, D.14730
	movq	%rax, %rdi	# D.14730,
	call	free	#
	.loc 1 478 0
	movq	-8(%rbp), %rax	# p, tmp120
	movq	$0, 6432(%rax)	#, p_1(D)->imgY_11
.L73:
	.loc 1 480 0
	movq	-8(%rbp), %rax	# p, tmp121
	movq	6448(%rax), %rax	# p_1(D)->imgY_ups, D.14729
	testq	%rax, %rax	# D.14729
	je	.L74	#,
	.loc 1 482 0
	movq	-8(%rbp), %rax	# p, tmp122
	movq	6448(%rax), %rax	# p_1(D)->imgY_ups, D.14729
	movq	%rax, %rdi	# D.14729,
	call	free_mem2Dpel	#
	.loc 1 483 0
	movq	-8(%rbp), %rax	# p, tmp123
	movq	$0, 6448(%rax)	#, p_1(D)->imgY_ups
.L74:
	.loc 1 485 0
	movq	-8(%rbp), %rax	# p, tmp124
	movq	6464(%rax), %rax	# p_1(D)->imgUV, D.14731
	testq	%rax, %rax	# D.14731
	je	.L75	#,
	.loc 1 487 0
	movq	-8(%rbp), %rax	# p, tmp125
	movq	6464(%rax), %rax	# p_1(D)->imgUV, D.14731
	movl	$2, %esi	#,
	movq	%rax, %rdi	# D.14731,
	call	free_mem3Dpel	#
	.loc 1 488 0
	movq	-8(%rbp), %rax	# p, tmp126
	movq	$0, 6464(%rax)	#, p_1(D)->imgUV
.L75:
	.loc 1 491 0
	movq	input(%rip), %rax	# input, input.12
	movl	1284(%rax), %eax	# input.12_24->WeightedPrediction, D.14727
	testl	%eax, %eax	# D.14727
	jne	.L76	#,
	.loc 1 491 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.13
	movl	1288(%rax), %eax	# input.13_26->WeightedBiprediction, D.14727
	testl	%eax, %eax	# D.14727
	jne	.L76	#,
	movq	input(%rip), %rax	# input, input.14
	movl	60(%rax), %eax	# input.14_28->GenerateMultiplePPS, D.14727
	testl	%eax, %eax	# D.14727
	je	.L77	#,
.L76:
	.loc 1 493 0 is_stmt 1
	movq	-8(%rbp), %rax	# p, tmp127
	movq	6440(%rax), %rax	# p_1(D)->imgY_11_w, D.14730
	testq	%rax, %rax	# D.14730
	je	.L78	#,
	.loc 1 495 0
	movq	-8(%rbp), %rax	# p, tmp128
	movq	6440(%rax), %rax	# p_1(D)->imgY_11_w, D.14730
	movq	%rax, %rdi	# D.14730,
	call	free	#
	.loc 1 496 0
	movq	-8(%rbp), %rax	# p, tmp129
	movq	$0, 6440(%rax)	#, p_1(D)->imgY_11_w
.L78:
	.loc 1 498 0
	movq	-8(%rbp), %rax	# p, tmp130
	movq	6456(%rax), %rax	# p_1(D)->imgY_ups_w, D.14729
	testq	%rax, %rax	# D.14729
	je	.L77	#,
	.loc 1 500 0
	movq	-8(%rbp), %rax	# p, tmp131
	movq	6456(%rax), %rax	# p_1(D)->imgY_ups_w, D.14729
	movq	%rax, %rdi	# D.14729,
	call	free_mem2Dpel	#
	.loc 1 501 0
	movq	-8(%rbp), %rax	# p, tmp132
	movq	$0, 6456(%rax)	#, p_1(D)->imgY_ups_w
.L77:
	.loc 1 505 0
	movq	-8(%rbp), %rax	# p, tmp133
	movq	6472(%rax), %rax	# p_1(D)->mb_field, D.14732
	testq	%rax, %rax	# D.14732
	je	.L79	#,
	.loc 1 507 0
	movq	-8(%rbp), %rax	# p, tmp134
	movq	6472(%rax), %rax	# p_1(D)->mb_field, D.14732
	movq	%rax, %rdi	# D.14732,
	call	free	#
	.loc 1 508 0
	movq	-8(%rbp), %rax	# p, tmp135
	movq	$0, 6472(%rax)	#, p_1(D)->mb_field
.L79:
	.loc 1 511 0
	movq	-8(%rbp), %rax	# p, tmp136
	movq	%rax, %rdi	# tmp136,
	call	free	#
	.loc 1 512 0
	movq	$0, -8(%rbp)	#, p
.L64:
	.loc 1 514 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	free_storable_picture, .-free_storable_picture
	.type	unmark_for_reference, @function
unmark_for_reference:
.LFB10:
	.loc 1 524 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# fs, fs
	.loc 1 526 0
	movq	active_sps(%rip), %rax	# active_sps, active_sps.15
	movl	1148(%rax), %eax	# active_sps.15_1->frame_mbs_only_flag, D.14733
	testl	%eax, %eax	# D.14733
	jne	.L81	#,
	.loc 1 528 0
	movq	-8(%rbp), %rax	# fs, tmp88
	movl	(%rax), %eax	# fs_3(D)->is_used, D.14734
	andl	$1, %eax	#, D.14734
	testl	%eax, %eax	# D.14734
	je	.L82	#,
	.loc 1 530 0
	movq	-8(%rbp), %rax	# fs, tmp89
	movq	48(%rax), %rax	# fs_3(D)->top_field, D.14735
	movl	$0, 6380(%rax)	#, _6->used_for_reference
.L82:
	.loc 1 532 0
	movq	-8(%rbp), %rax	# fs, tmp90
	movl	(%rax), %eax	# fs_3(D)->is_used, D.14734
	andl	$2, %eax	#, D.14734
	testl	%eax, %eax	# D.14734
	je	.L81	#,
	.loc 1 534 0
	movq	-8(%rbp), %rax	# fs, tmp91
	movq	56(%rax), %rax	# fs_3(D)->bottom_field, D.14735
	movl	$0, 6380(%rax)	#, _9->used_for_reference
.L81:
	.loc 1 538 0
	movq	-8(%rbp), %rax	# fs, tmp92
	movl	(%rax), %eax	# fs_3(D)->is_used, D.14734
	cmpl	$3, %eax	#, D.14734
	jne	.L83	#,
	.loc 1 540 0
	movq	active_sps(%rip), %rax	# active_sps, active_sps.16
	movl	1148(%rax), %eax	# active_sps.16_11->frame_mbs_only_flag, D.14733
	testl	%eax, %eax	# D.14733
	jne	.L84	#,
	.loc 1 542 0
	movq	-8(%rbp), %rax	# fs, tmp93
	movq	48(%rax), %rax	# fs_3(D)->top_field, D.14735
	movl	$0, 6380(%rax)	#, _13->used_for_reference
	.loc 1 543 0
	movq	-8(%rbp), %rax	# fs, tmp94
	movq	56(%rax), %rax	# fs_3(D)->bottom_field, D.14735
	movl	$0, 6380(%rax)	#, _14->used_for_reference
.L84:
	.loc 1 545 0
	movq	-8(%rbp), %rax	# fs, tmp95
	movq	40(%rax), %rax	# fs_3(D)->frame, D.14735
	movl	$0, 6380(%rax)	#, _15->used_for_reference
.L83:
	.loc 1 548 0
	movq	-8(%rbp), %rax	# fs, tmp96
	movl	$0, 4(%rax)	#, fs_3(D)->is_reference
	.loc 1 550 0
	movq	-8(%rbp), %rax	# fs, tmp97
	movq	40(%rax), %rax	# fs_3(D)->frame, D.14735
	movq	6456(%rax), %rax	# _16->imgY_ups_w, D.14736
	testq	%rax, %rax	# D.14736
	je	.L85	#,
	.loc 1 552 0
	movq	-8(%rbp), %rax	# fs, tmp98
	movq	40(%rax), %rax	# fs_3(D)->frame, D.14735
	movq	6456(%rax), %rax	# _18->imgY_ups_w, D.14736
	movq	%rax, %rdi	# D.14736,
	call	free_mem2Dpel	#
	.loc 1 553 0
	movq	-8(%rbp), %rax	# fs, tmp99
	movq	40(%rax), %rax	# fs_3(D)->frame, D.14735
	movq	$0, 6456(%rax)	#, _20->imgY_ups_w
.L85:
	.loc 1 555 0
	movq	-8(%rbp), %rax	# fs, tmp100
	movq	40(%rax), %rax	# fs_3(D)->frame, D.14735
	movq	6448(%rax), %rax	# _21->imgY_ups, D.14736
	testq	%rax, %rax	# D.14736
	je	.L86	#,
	.loc 1 557 0
	movq	-8(%rbp), %rax	# fs, tmp101
	movq	40(%rax), %rax	# fs_3(D)->frame, D.14735
	movq	6448(%rax), %rax	# _23->imgY_ups, D.14736
	movq	%rax, %rdi	# D.14736,
	call	free_mem2Dpel	#
	.loc 1 558 0
	movq	-8(%rbp), %rax	# fs, tmp102
	movq	40(%rax), %rax	# fs_3(D)->frame, D.14735
	movq	$0, 6448(%rax)	#, _25->imgY_ups
.L86:
	.loc 1 560 0
	movq	-8(%rbp), %rax	# fs, tmp103
	movq	40(%rax), %rax	# fs_3(D)->frame, D.14735
	movq	6440(%rax), %rax	# _26->imgY_11_w, D.14737
	testq	%rax, %rax	# D.14737
	je	.L80	#,
	.loc 1 562 0
	movq	-8(%rbp), %rax	# fs, tmp104
	movq	40(%rax), %rax	# fs_3(D)->frame, D.14735
	movq	6440(%rax), %rax	# _28->imgY_11_w, D.14737
	movq	%rax, %rdi	# D.14737,
	call	free	#
	.loc 1 563 0
	movq	-8(%rbp), %rax	# fs, tmp105
	movq	40(%rax), %rax	# fs_3(D)->frame, D.14735
	movq	$0, 6440(%rax)	#, _30->imgY_11_w
.L80:
	.loc 1 565 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	unmark_for_reference, .-unmark_for_reference
	.type	unmark_for_long_term_reference, @function
unmark_for_long_term_reference:
.LFB11:
	.loc 1 576 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# fs, fs
	.loc 1 578 0
	movq	active_sps(%rip), %rax	# active_sps, active_sps.17
	movl	1148(%rax), %eax	# active_sps.17_1->frame_mbs_only_flag, D.14738
	testl	%eax, %eax	# D.14738
	jne	.L89	#,
	.loc 1 580 0
	movq	-8(%rbp), %rax	# fs, tmp78
	movl	(%rax), %eax	# fs_3(D)->is_used, D.14739
	andl	$1, %eax	#, D.14739
	testl	%eax, %eax	# D.14739
	je	.L90	#,
	.loc 1 582 0
	movq	-8(%rbp), %rax	# fs, tmp79
	movq	48(%rax), %rax	# fs_3(D)->top_field, D.14740
	movl	$0, 6380(%rax)	#, _6->used_for_reference
	.loc 1 583 0
	movq	-8(%rbp), %rax	# fs, tmp80
	movq	48(%rax), %rax	# fs_3(D)->top_field, D.14740
	movl	$0, 6376(%rax)	#, _7->is_long_term
.L90:
	.loc 1 585 0
	movq	-8(%rbp), %rax	# fs, tmp81
	movl	(%rax), %eax	# fs_3(D)->is_used, D.14739
	andl	$2, %eax	#, D.14739
	testl	%eax, %eax	# D.14739
	je	.L89	#,
	.loc 1 587 0
	movq	-8(%rbp), %rax	# fs, tmp82
	movq	56(%rax), %rax	# fs_3(D)->bottom_field, D.14740
	movl	$0, 6380(%rax)	#, _10->used_for_reference
	.loc 1 588 0
	movq	-8(%rbp), %rax	# fs, tmp83
	movq	56(%rax), %rax	# fs_3(D)->bottom_field, D.14740
	movl	$0, 6376(%rax)	#, _11->is_long_term
.L89:
	.loc 1 591 0
	movq	-8(%rbp), %rax	# fs, tmp84
	movl	(%rax), %eax	# fs_3(D)->is_used, D.14739
	cmpl	$3, %eax	#, D.14739
	jne	.L91	#,
	.loc 1 593 0
	movq	active_sps(%rip), %rax	# active_sps, active_sps.18
	movl	1148(%rax), %eax	# active_sps.18_13->frame_mbs_only_flag, D.14738
	testl	%eax, %eax	# D.14738
	jne	.L92	#,
	.loc 1 595 0
	movq	-8(%rbp), %rax	# fs, tmp85
	movq	48(%rax), %rax	# fs_3(D)->top_field, D.14740
	movl	$0, 6380(%rax)	#, _15->used_for_reference
	.loc 1 596 0
	movq	-8(%rbp), %rax	# fs, tmp86
	movq	48(%rax), %rax	# fs_3(D)->top_field, D.14740
	movl	$0, 6376(%rax)	#, _16->is_long_term
	.loc 1 597 0
	movq	-8(%rbp), %rax	# fs, tmp87
	movq	56(%rax), %rax	# fs_3(D)->bottom_field, D.14740
	movl	$0, 6380(%rax)	#, _17->used_for_reference
	.loc 1 598 0
	movq	-8(%rbp), %rax	# fs, tmp88
	movq	56(%rax), %rax	# fs_3(D)->bottom_field, D.14740
	movl	$0, 6376(%rax)	#, _18->is_long_term
.L92:
	.loc 1 600 0
	movq	-8(%rbp), %rax	# fs, tmp89
	movq	40(%rax), %rax	# fs_3(D)->frame, D.14740
	movl	$0, 6380(%rax)	#, _19->used_for_reference
	.loc 1 601 0
	movq	-8(%rbp), %rax	# fs, tmp90
	movq	40(%rax), %rax	# fs_3(D)->frame, D.14740
	movl	$0, 6376(%rax)	#, _20->is_long_term
.L91:
	.loc 1 604 0
	movq	-8(%rbp), %rax	# fs, tmp91
	movl	$0, 4(%rax)	#, fs_3(D)->is_reference
	.loc 1 605 0
	movq	-8(%rbp), %rax	# fs, tmp92
	movl	$0, 8(%rax)	#, fs_3(D)->is_long_term
	.loc 1 606 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	unmark_for_long_term_reference, .-unmark_for_long_term_reference
	.type	compare_pic_by_pic_num_desc, @function
compare_pic_by_pic_num_desc:
.LFB12:
	.loc 1 617 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# arg1, arg1
	movq	%rsi, -16(%rbp)	# arg2, arg2
	.loc 1 618 0
	movq	-8(%rbp), %rax	# arg1, tmp69
	movq	(%rax), %rax	# MEM[(struct StorablePicture * *)arg1_2(D)], D.14742
	movl	6364(%rax), %edx	# _3->pic_num, D.14741
	movq	-16(%rbp), %rax	# arg2, tmp70
	movq	(%rax), %rax	# MEM[(struct StorablePicture * *)arg2_5(D)], D.14742
	movl	6364(%rax), %eax	# _6->pic_num, D.14741
	cmpl	%eax, %edx	# D.14741, D.14741
	jge	.L94	#,
	.loc 1 619 0
	movl	$1, %eax	#, D.14741
	jmp	.L95	#
.L94:
	.loc 1 620 0
	movq	-8(%rbp), %rax	# arg1, tmp71
	movq	(%rax), %rax	# MEM[(struct StorablePicture * *)arg1_2(D)], D.14742
	movl	6364(%rax), %edx	# _9->pic_num, D.14741
	movq	-16(%rbp), %rax	# arg2, tmp72
	movq	(%rax), %rax	# MEM[(struct StorablePicture * *)arg2_5(D)], D.14742
	movl	6364(%rax), %eax	# _11->pic_num, D.14741
	cmpl	%eax, %edx	# D.14741, D.14741
	jle	.L96	#,
	.loc 1 621 0
	movl	$-1, %eax	#, D.14741
	jmp	.L95	#
.L96:
	.loc 1 623 0
	movl	$0, %eax	#, D.14741
.L95:
	.loc 1 624 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	compare_pic_by_pic_num_desc, .-compare_pic_by_pic_num_desc
	.type	compare_pic_by_lt_pic_num_asc, @function
compare_pic_by_lt_pic_num_asc:
.LFB13:
	.loc 1 634 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# arg1, arg1
	movq	%rsi, -16(%rbp)	# arg2, arg2
	.loc 1 635 0
	movq	-8(%rbp), %rax	# arg1, tmp69
	movq	(%rax), %rax	# MEM[(struct StorablePicture * *)arg1_2(D)], D.14744
	movl	6368(%rax), %edx	# _3->long_term_pic_num, D.14743
	movq	-16(%rbp), %rax	# arg2, tmp70
	movq	(%rax), %rax	# MEM[(struct StorablePicture * *)arg2_5(D)], D.14744
	movl	6368(%rax), %eax	# _6->long_term_pic_num, D.14743
	cmpl	%eax, %edx	# D.14743, D.14743
	jge	.L98	#,
	.loc 1 636 0
	movl	$-1, %eax	#, D.14743
	jmp	.L99	#
.L98:
	.loc 1 637 0
	movq	-8(%rbp), %rax	# arg1, tmp71
	movq	(%rax), %rax	# MEM[(struct StorablePicture * *)arg1_2(D)], D.14744
	movl	6368(%rax), %edx	# _9->long_term_pic_num, D.14743
	movq	-16(%rbp), %rax	# arg2, tmp72
	movq	(%rax), %rax	# MEM[(struct StorablePicture * *)arg2_5(D)], D.14744
	movl	6368(%rax), %eax	# _11->long_term_pic_num, D.14743
	cmpl	%eax, %edx	# D.14743, D.14743
	jle	.L100	#,
	.loc 1 638 0
	movl	$1, %eax	#, D.14743
	jmp	.L99	#
.L100:
	.loc 1 640 0
	movl	$0, %eax	#, D.14743
.L99:
	.loc 1 641 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	compare_pic_by_lt_pic_num_asc, .-compare_pic_by_lt_pic_num_asc
	.type	compare_fs_by_frame_num_desc, @function
compare_fs_by_frame_num_desc:
.LFB14:
	.loc 1 651 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# arg1, arg1
	movq	%rsi, -16(%rbp)	# arg2, arg2
	.loc 1 652 0
	movq	-8(%rbp), %rax	# arg1, tmp69
	movq	(%rax), %rax	# MEM[(struct FrameStore * *)arg1_2(D)], D.14746
	movl	24(%rax), %edx	# _3->frame_num_wrap, D.14745
	movq	-16(%rbp), %rax	# arg2, tmp70
	movq	(%rax), %rax	# MEM[(struct FrameStore * *)arg2_5(D)], D.14746
	movl	24(%rax), %eax	# _6->frame_num_wrap, D.14745
	cmpl	%eax, %edx	# D.14745, D.14745
	jge	.L102	#,
	.loc 1 653 0
	movl	$1, %eax	#, D.14745
	jmp	.L103	#
.L102:
	.loc 1 654 0
	movq	-8(%rbp), %rax	# arg1, tmp71
	movq	(%rax), %rax	# MEM[(struct FrameStore * *)arg1_2(D)], D.14746
	movl	24(%rax), %edx	# _9->frame_num_wrap, D.14745
	movq	-16(%rbp), %rax	# arg2, tmp72
	movq	(%rax), %rax	# MEM[(struct FrameStore * *)arg2_5(D)], D.14746
	movl	24(%rax), %eax	# _11->frame_num_wrap, D.14745
	cmpl	%eax, %edx	# D.14745, D.14745
	jle	.L104	#,
	.loc 1 655 0
	movl	$-1, %eax	#, D.14745
	jmp	.L103	#
.L104:
	.loc 1 657 0
	movl	$0, %eax	#, D.14745
.L103:
	.loc 1 658 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	compare_fs_by_frame_num_desc, .-compare_fs_by_frame_num_desc
	.type	compare_fs_by_lt_pic_idx_asc, @function
compare_fs_by_lt_pic_idx_asc:
.LFB15:
	.loc 1 669 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# arg1, arg1
	movq	%rsi, -16(%rbp)	# arg2, arg2
	.loc 1 670 0
	movq	-8(%rbp), %rax	# arg1, tmp69
	movq	(%rax), %rax	# MEM[(struct FrameStore * *)arg1_2(D)], D.14748
	movl	28(%rax), %edx	# _3->long_term_frame_idx, D.14747
	movq	-16(%rbp), %rax	# arg2, tmp70
	movq	(%rax), %rax	# MEM[(struct FrameStore * *)arg2_5(D)], D.14748
	movl	28(%rax), %eax	# _6->long_term_frame_idx, D.14747
	cmpl	%eax, %edx	# D.14747, D.14747
	jge	.L106	#,
	.loc 1 671 0
	movl	$-1, %eax	#, D.14747
	jmp	.L107	#
.L106:
	.loc 1 672 0
	movq	-8(%rbp), %rax	# arg1, tmp71
	movq	(%rax), %rax	# MEM[(struct FrameStore * *)arg1_2(D)], D.14748
	movl	28(%rax), %edx	# _9->long_term_frame_idx, D.14747
	movq	-16(%rbp), %rax	# arg2, tmp72
	movq	(%rax), %rax	# MEM[(struct FrameStore * *)arg2_5(D)], D.14748
	movl	28(%rax), %eax	# _11->long_term_frame_idx, D.14747
	cmpl	%eax, %edx	# D.14747, D.14747
	jle	.L108	#,
	.loc 1 673 0
	movl	$1, %eax	#, D.14747
	jmp	.L107	#
.L108:
	.loc 1 675 0
	movl	$0, %eax	#, D.14747
.L107:
	.loc 1 676 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	compare_fs_by_lt_pic_idx_asc, .-compare_fs_by_lt_pic_idx_asc
	.type	compare_pic_by_poc_asc, @function
compare_pic_by_poc_asc:
.LFB16:
	.loc 1 687 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# arg1, arg1
	movq	%rsi, -16(%rbp)	# arg2, arg2
	.loc 1 688 0
	movq	-8(%rbp), %rax	# arg1, tmp69
	movq	(%rax), %rax	# MEM[(struct StorablePicture * *)arg1_2(D)], D.14750
	movl	4(%rax), %edx	# _3->poc, D.14749
	movq	-16(%rbp), %rax	# arg2, tmp70
	movq	(%rax), %rax	# MEM[(struct StorablePicture * *)arg2_5(D)], D.14750
	movl	4(%rax), %eax	# _6->poc, D.14749
	cmpl	%eax, %edx	# D.14749, D.14749
	jge	.L110	#,
	.loc 1 689 0
	movl	$-1, %eax	#, D.14749
	jmp	.L111	#
.L110:
	.loc 1 690 0
	movq	-8(%rbp), %rax	# arg1, tmp71
	movq	(%rax), %rax	# MEM[(struct StorablePicture * *)arg1_2(D)], D.14750
	movl	4(%rax), %edx	# _9->poc, D.14749
	movq	-16(%rbp), %rax	# arg2, tmp72
	movq	(%rax), %rax	# MEM[(struct StorablePicture * *)arg2_5(D)], D.14750
	movl	4(%rax), %eax	# _11->poc, D.14749
	cmpl	%eax, %edx	# D.14749, D.14749
	jle	.L112	#,
	.loc 1 691 0
	movl	$1, %eax	#, D.14749
	jmp	.L111	#
.L112:
	.loc 1 693 0
	movl	$0, %eax	#, D.14749
.L111:
	.loc 1 694 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	compare_pic_by_poc_asc, .-compare_pic_by_poc_asc
	.type	compare_pic_by_poc_desc, @function
compare_pic_by_poc_desc:
.LFB17:
	.loc 1 705 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# arg1, arg1
	movq	%rsi, -16(%rbp)	# arg2, arg2
	.loc 1 706 0
	movq	-8(%rbp), %rax	# arg1, tmp69
	movq	(%rax), %rax	# MEM[(struct StorablePicture * *)arg1_2(D)], D.14752
	movl	4(%rax), %edx	# _3->poc, D.14751
	movq	-16(%rbp), %rax	# arg2, tmp70
	movq	(%rax), %rax	# MEM[(struct StorablePicture * *)arg2_5(D)], D.14752
	movl	4(%rax), %eax	# _6->poc, D.14751
	cmpl	%eax, %edx	# D.14751, D.14751
	jge	.L114	#,
	.loc 1 707 0
	movl	$1, %eax	#, D.14751
	jmp	.L115	#
.L114:
	.loc 1 708 0
	movq	-8(%rbp), %rax	# arg1, tmp71
	movq	(%rax), %rax	# MEM[(struct StorablePicture * *)arg1_2(D)], D.14752
	movl	4(%rax), %edx	# _9->poc, D.14751
	movq	-16(%rbp), %rax	# arg2, tmp72
	movq	(%rax), %rax	# MEM[(struct StorablePicture * *)arg2_5(D)], D.14752
	movl	4(%rax), %eax	# _11->poc, D.14751
	cmpl	%eax, %edx	# D.14751, D.14751
	jle	.L116	#,
	.loc 1 709 0
	movl	$-1, %eax	#, D.14751
	jmp	.L115	#
.L116:
	.loc 1 711 0
	movl	$0, %eax	#, D.14751
.L115:
	.loc 1 712 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	compare_pic_by_poc_desc, .-compare_pic_by_poc_desc
	.type	compare_fs_by_poc_asc, @function
compare_fs_by_poc_asc:
.LFB18:
	.loc 1 723 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# arg1, arg1
	movq	%rsi, -16(%rbp)	# arg2, arg2
	.loc 1 724 0
	movq	-8(%rbp), %rax	# arg1, tmp69
	movq	(%rax), %rax	# MEM[(struct FrameStore * *)arg1_2(D)], D.14754
	movl	36(%rax), %edx	# _3->poc, D.14753
	movq	-16(%rbp), %rax	# arg2, tmp70
	movq	(%rax), %rax	# MEM[(struct FrameStore * *)arg2_5(D)], D.14754
	movl	36(%rax), %eax	# _6->poc, D.14753
	cmpl	%eax, %edx	# D.14753, D.14753
	jge	.L118	#,
	.loc 1 725 0
	movl	$-1, %eax	#, D.14753
	jmp	.L119	#
.L118:
	.loc 1 726 0
	movq	-8(%rbp), %rax	# arg1, tmp71
	movq	(%rax), %rax	# MEM[(struct FrameStore * *)arg1_2(D)], D.14754
	movl	36(%rax), %edx	# _9->poc, D.14753
	movq	-16(%rbp), %rax	# arg2, tmp72
	movq	(%rax), %rax	# MEM[(struct FrameStore * *)arg2_5(D)], D.14754
	movl	36(%rax), %eax	# _11->poc, D.14753
	cmpl	%eax, %edx	# D.14753, D.14753
	jle	.L120	#,
	.loc 1 727 0
	movl	$1, %eax	#, D.14753
	jmp	.L119	#
.L120:
	.loc 1 729 0
	movl	$0, %eax	#, D.14753
.L119:
	.loc 1 730 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	compare_fs_by_poc_asc, .-compare_fs_by_poc_asc
	.type	compare_fs_by_poc_desc, @function
compare_fs_by_poc_desc:
.LFB19:
	.loc 1 741 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# arg1, arg1
	movq	%rsi, -16(%rbp)	# arg2, arg2
	.loc 1 742 0
	movq	-8(%rbp), %rax	# arg1, tmp69
	movq	(%rax), %rax	# MEM[(struct FrameStore * *)arg1_2(D)], D.14756
	movl	36(%rax), %edx	# _3->poc, D.14755
	movq	-16(%rbp), %rax	# arg2, tmp70
	movq	(%rax), %rax	# MEM[(struct FrameStore * *)arg2_5(D)], D.14756
	movl	36(%rax), %eax	# _6->poc, D.14755
	cmpl	%eax, %edx	# D.14755, D.14755
	jge	.L122	#,
	.loc 1 743 0
	movl	$1, %eax	#, D.14755
	jmp	.L123	#
.L122:
	.loc 1 744 0
	movq	-8(%rbp), %rax	# arg1, tmp71
	movq	(%rax), %rax	# MEM[(struct FrameStore * *)arg1_2(D)], D.14756
	movl	36(%rax), %edx	# _9->poc, D.14755
	movq	-16(%rbp), %rax	# arg2, tmp72
	movq	(%rax), %rax	# MEM[(struct FrameStore * *)arg2_5(D)], D.14756
	movl	36(%rax), %eax	# _11->poc, D.14755
	cmpl	%eax, %edx	# D.14755, D.14755
	jle	.L124	#,
	.loc 1 745 0
	movl	$-1, %eax	#, D.14755
	jmp	.L123	#
.L124:
	.loc 1 747 0
	movl	$0, %eax	#, D.14755
.L123:
	.loc 1 748 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	compare_fs_by_poc_desc, .-compare_fs_by_poc_desc
	.globl	is_short_ref
	.type	is_short_ref, @function
is_short_ref:
.LFB20:
	.loc 1 759 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# s, s
	.loc 1 760 0
	movq	-8(%rbp), %rax	# s, tmp64
	movl	6380(%rax), %eax	# s_2(D)->used_for_reference, D.14757
	testl	%eax, %eax	# D.14757
	je	.L126	#,
	.loc 1 760 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# s, tmp65
	movl	6376(%rax), %eax	# s_2(D)->is_long_term, D.14757
	testl	%eax, %eax	# D.14757
	jne	.L126	#,
	.loc 1 760 0 discriminator 3
	movl	$1, %eax	#, iftmp.19
	jmp	.L127	#
.L126:
	.loc 1 760 0 discriminator 2
	movl	$0, %eax	#, iftmp.19
.L127:
	.loc 1 761 0 is_stmt 1 discriminator 4
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	is_short_ref, .-is_short_ref
	.globl	is_long_ref
	.type	is_long_ref, @function
is_long_ref:
.LFB21:
	.loc 1 772 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# s, s
	.loc 1 773 0
	movq	-8(%rbp), %rax	# s, tmp64
	movl	6380(%rax), %eax	# s_2(D)->used_for_reference, D.14758
	testl	%eax, %eax	# D.14758
	je	.L130	#,
	.loc 1 773 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# s, tmp65
	movl	6376(%rax), %eax	# s_2(D)->is_long_term, D.14758
	testl	%eax, %eax	# D.14758
	je	.L130	#,
	.loc 1 773 0 discriminator 3
	movl	$1, %eax	#, iftmp.20
	jmp	.L131	#
.L130:
	.loc 1 773 0 discriminator 2
	movl	$0, %eax	#, iftmp.20
.L131:
	.loc 1 774 0 is_stmt 1 discriminator 4
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	is_long_ref, .-is_long_ref
	.type	gen_pic_list_from_frame_list, @function
gen_pic_list_from_frame_list:
.LFB22:
	.loc 1 785 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movl	%edi, -20(%rbp)	# currStrcture, currStrcture
	movq	%rsi, -32(%rbp)	# fs_list, fs_list
	movl	%edx, -24(%rbp)	# list_idx, list_idx
	movq	%rcx, -40(%rbp)	# list, list
	movq	%r8, -48(%rbp)	# list_size, list_size
	movl	%r9d, -52(%rbp)	# long_term, long_term
	.loc 1 786 0
	movl	$0, -16(%rbp)	#, top_idx
	.loc 1 787 0
	movl	$0, -12(%rbp)	#, bot_idx
	.loc 1 791 0
	cmpl	$0, -52(%rbp)	#, long_term
	je	.L134	#,
	.loc 1 792 0
	movq	$is_long_ref, -8(%rbp)	#, is_ref
	jmp	.L135	#
.L134:
	.loc 1 794 0
	movq	$is_short_ref, -8(%rbp)	#, is_ref
.L135:
	.loc 1 796 0
	cmpl	$1, -20(%rbp)	#, currStrcture
	jne	.L136	#,
	.loc 1 798 0
	jmp	.L137	#
.L145:
	.loc 1 800 0
	jmp	.L138	#
.L141:
	.loc 1 802 0
	movl	-16(%rbp), %eax	# top_idx, tmp151
	cltq
	leaq	0(,%rax,8), %rdx	#, D.14759
	movq	-32(%rbp), %rax	# fs_list, tmp152
	addq	%rdx, %rax	# D.14759, D.14760
	movq	(%rax), %rax	# *_24, D.14761
	movl	(%rax), %eax	# _25->is_used, D.14762
	andl	$1, %eax	#, D.14762
	testl	%eax, %eax	# D.14762
	je	.L139	#,
	.loc 1 804 0
	movl	-16(%rbp), %eax	# top_idx, tmp153
	cltq
	leaq	0(,%rax,8), %rdx	#, D.14759
	movq	-32(%rbp), %rax	# fs_list, tmp154
	addq	%rdx, %rax	# D.14759, D.14760
	movq	(%rax), %rax	# *_30, D.14761
	movq	48(%rax), %rdx	# _31->top_field, D.14763
	movq	-8(%rbp), %rax	# is_ref, tmp155
	movq	%rdx, %rdi	# D.14763,
	call	*%rax	# tmp155
	testl	%eax, %eax	# D.14762
	je	.L139	#,
	.loc 1 807 0
	movq	-48(%rbp), %rax	# list_size, tmp156
	movl	(%rax), %eax	# *list_size_34(D), D.14762
	cltq
	leaq	0(,%rax,8), %rdx	#, D.14759
	movq	-40(%rbp), %rax	# list, tmp157
	addq	%rax, %rdx	# tmp157, D.14764
	movl	-16(%rbp), %eax	# top_idx, tmp158
	cltq
	leaq	0(,%rax,8), %rcx	#, D.14759
	movq	-32(%rbp), %rax	# fs_list, tmp159
	addq	%rcx, %rax	# D.14759, D.14760
	movq	(%rax), %rax	# *_42, D.14761
	movq	48(%rax), %rax	# _43->top_field, D.14763
	movq	%rax, (%rdx)	# D.14763, *_39
	.loc 1 808 0
	movq	-48(%rbp), %rax	# list_size, tmp160
	movl	(%rax), %eax	# *list_size_34(D), D.14762
	leal	1(%rax), %edx	#, D.14762
	movq	-48(%rbp), %rax	# list_size, tmp161
	movl	%edx, (%rax)	# D.14762, *list_size_34(D)
	.loc 1 809 0
	addl	$1, -16(%rbp)	#, top_idx
	.loc 1 810 0
	jmp	.L140	#
.L139:
	.loc 1 800 0
	addl	$1, -16(%rbp)	#, top_idx
.L138:
	.loc 1 800 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# top_idx, tmp162
	cmpl	-24(%rbp), %eax	# list_idx, tmp162
	jl	.L141	#,
.L140:
	.loc 1 814 0 is_stmt 1
	jmp	.L142	#
.L144:
	.loc 1 816 0
	movl	-12(%rbp), %eax	# bot_idx, tmp163
	cltq
	leaq	0(,%rax,8), %rdx	#, D.14759
	movq	-32(%rbp), %rax	# fs_list, tmp164
	addq	%rdx, %rax	# D.14759, D.14760
	movq	(%rax), %rax	# *_51, D.14761
	movl	(%rax), %eax	# _52->is_used, D.14762
	andl	$2, %eax	#, D.14762
	testl	%eax, %eax	# D.14762
	je	.L143	#,
	.loc 1 818 0
	movl	-12(%rbp), %eax	# bot_idx, tmp165
	cltq
	leaq	0(,%rax,8), %rdx	#, D.14759
	movq	-32(%rbp), %rax	# fs_list, tmp166
	addq	%rdx, %rax	# D.14759, D.14760
	movq	(%rax), %rax	# *_57, D.14761
	movq	56(%rax), %rdx	# _58->bottom_field, D.14763
	movq	-8(%rbp), %rax	# is_ref, tmp167
	movq	%rdx, %rdi	# D.14763,
	call	*%rax	# tmp167
	testl	%eax, %eax	# D.14762
	je	.L143	#,
	.loc 1 821 0
	movq	-48(%rbp), %rax	# list_size, tmp168
	movl	(%rax), %eax	# *list_size_34(D), D.14762
	cltq
	leaq	0(,%rax,8), %rdx	#, D.14759
	movq	-40(%rbp), %rax	# list, tmp169
	addq	%rax, %rdx	# tmp169, D.14764
	movl	-12(%rbp), %eax	# bot_idx, tmp170
	cltq
	leaq	0(,%rax,8), %rcx	#, D.14759
	movq	-32(%rbp), %rax	# fs_list, tmp171
	addq	%rcx, %rax	# D.14759, D.14760
	movq	(%rax), %rax	# *_67, D.14761
	movq	56(%rax), %rax	# _68->bottom_field, D.14763
	movq	%rax, (%rdx)	# D.14763, *_64
	.loc 1 822 0
	movq	-48(%rbp), %rax	# list_size, tmp172
	movl	(%rax), %eax	# *list_size_34(D), D.14762
	leal	1(%rax), %edx	#, D.14762
	movq	-48(%rbp), %rax	# list_size, tmp173
	movl	%edx, (%rax)	# D.14762, *list_size_34(D)
	.loc 1 823 0
	addl	$1, -12(%rbp)	#, bot_idx
	.loc 1 824 0
	jmp	.L137	#
.L143:
	.loc 1 814 0
	addl	$1, -12(%rbp)	#, bot_idx
.L142:
	.loc 1 814 0 is_stmt 0 discriminator 1
	movl	-12(%rbp), %eax	# bot_idx, tmp174
	cmpl	-24(%rbp), %eax	# list_idx, tmp174
	jl	.L144	#,
.L137:
	.loc 1 798 0 is_stmt 1 discriminator 1
	movl	-16(%rbp), %eax	# top_idx, tmp175
	cmpl	-24(%rbp), %eax	# list_idx, tmp175
	jl	.L145	#,
	.loc 1 798 0 is_stmt 0 discriminator 2
	movl	-12(%rbp), %eax	# bot_idx, tmp176
	cmpl	-24(%rbp), %eax	# list_idx, tmp176
	jl	.L145	#,
.L136:
	.loc 1 830 0 is_stmt 1
	cmpl	$2, -20(%rbp)	#, currStrcture
	jne	.L133	#,
	.loc 1 832 0
	jmp	.L147	#
.L155:
	.loc 1 834 0
	jmp	.L148	#
.L151:
	.loc 1 836 0
	movl	-12(%rbp), %eax	# bot_idx, tmp177
	cltq
	leaq	0(,%rax,8), %rdx	#, D.14759
	movq	-32(%rbp), %rax	# fs_list, tmp178
	addq	%rdx, %rax	# D.14759, D.14760
	movq	(%rax), %rax	# *_76, D.14761
	movl	(%rax), %eax	# _77->is_used, D.14762
	andl	$2, %eax	#, D.14762
	testl	%eax, %eax	# D.14762
	je	.L149	#,
	.loc 1 838 0
	movl	-12(%rbp), %eax	# bot_idx, tmp179
	cltq
	leaq	0(,%rax,8), %rdx	#, D.14759
	movq	-32(%rbp), %rax	# fs_list, tmp180
	addq	%rdx, %rax	# D.14759, D.14760
	movq	(%rax), %rax	# *_82, D.14761
	movq	56(%rax), %rdx	# _83->bottom_field, D.14763
	movq	-8(%rbp), %rax	# is_ref, tmp181
	movq	%rdx, %rdi	# D.14763,
	call	*%rax	# tmp181
	testl	%eax, %eax	# D.14762
	je	.L149	#,
	.loc 1 841 0
	movq	-48(%rbp), %rax	# list_size, tmp182
	movl	(%rax), %eax	# *list_size_34(D), D.14762
	cltq
	leaq	0(,%rax,8), %rdx	#, D.14759
	movq	-40(%rbp), %rax	# list, tmp183
	addq	%rax, %rdx	# tmp183, D.14764
	movl	-12(%rbp), %eax	# bot_idx, tmp184
	cltq
	leaq	0(,%rax,8), %rcx	#, D.14759
	movq	-32(%rbp), %rax	# fs_list, tmp185
	addq	%rcx, %rax	# D.14759, D.14760
	movq	(%rax), %rax	# *_92, D.14761
	movq	56(%rax), %rax	# _93->bottom_field, D.14763
	movq	%rax, (%rdx)	# D.14763, *_89
	.loc 1 842 0
	movq	-48(%rbp), %rax	# list_size, tmp186
	movl	(%rax), %eax	# *list_size_34(D), D.14762
	leal	1(%rax), %edx	#, D.14762
	movq	-48(%rbp), %rax	# list_size, tmp187
	movl	%edx, (%rax)	# D.14762, *list_size_34(D)
	.loc 1 843 0
	addl	$1, -12(%rbp)	#, bot_idx
	.loc 1 844 0
	jmp	.L150	#
.L149:
	.loc 1 834 0
	addl	$1, -12(%rbp)	#, bot_idx
.L148:
	.loc 1 834 0 is_stmt 0 discriminator 1
	movl	-12(%rbp), %eax	# bot_idx, tmp188
	cmpl	-24(%rbp), %eax	# list_idx, tmp188
	jl	.L151	#,
.L150:
	.loc 1 848 0 is_stmt 1
	jmp	.L152	#
.L154:
	.loc 1 850 0
	movl	-16(%rbp), %eax	# top_idx, tmp189
	cltq
	leaq	0(,%rax,8), %rdx	#, D.14759
	movq	-32(%rbp), %rax	# fs_list, tmp190
	addq	%rdx, %rax	# D.14759, D.14760
	movq	(%rax), %rax	# *_101, D.14761
	movl	(%rax), %eax	# _102->is_used, D.14762
	andl	$1, %eax	#, D.14762
	testl	%eax, %eax	# D.14762
	je	.L153	#,
	.loc 1 852 0
	movl	-16(%rbp), %eax	# top_idx, tmp191
	cltq
	leaq	0(,%rax,8), %rdx	#, D.14759
	movq	-32(%rbp), %rax	# fs_list, tmp192
	addq	%rdx, %rax	# D.14759, D.14760
	movq	(%rax), %rax	# *_107, D.14761
	movq	48(%rax), %rdx	# _108->top_field, D.14763
	movq	-8(%rbp), %rax	# is_ref, tmp193
	movq	%rdx, %rdi	# D.14763,
	call	*%rax	# tmp193
	testl	%eax, %eax	# D.14762
	je	.L153	#,
	.loc 1 855 0
	movq	-48(%rbp), %rax	# list_size, tmp194
	movl	(%rax), %eax	# *list_size_34(D), D.14762
	cltq
	leaq	0(,%rax,8), %rdx	#, D.14759
	movq	-40(%rbp), %rax	# list, tmp195
	addq	%rax, %rdx	# tmp195, D.14764
	movl	-16(%rbp), %eax	# top_idx, tmp196
	cltq
	leaq	0(,%rax,8), %rcx	#, D.14759
	movq	-32(%rbp), %rax	# fs_list, tmp197
	addq	%rcx, %rax	# D.14759, D.14760
	movq	(%rax), %rax	# *_117, D.14761
	movq	48(%rax), %rax	# _118->top_field, D.14763
	movq	%rax, (%rdx)	# D.14763, *_114
	.loc 1 856 0
	movq	-48(%rbp), %rax	# list_size, tmp198
	movl	(%rax), %eax	# *list_size_34(D), D.14762
	leal	1(%rax), %edx	#, D.14762
	movq	-48(%rbp), %rax	# list_size, tmp199
	movl	%edx, (%rax)	# D.14762, *list_size_34(D)
	.loc 1 857 0
	addl	$1, -16(%rbp)	#, top_idx
	.loc 1 858 0
	jmp	.L147	#
.L153:
	.loc 1 848 0
	addl	$1, -16(%rbp)	#, top_idx
.L152:
	.loc 1 848 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# top_idx, tmp200
	cmpl	-24(%rbp), %eax	# list_idx, tmp200
	jl	.L154	#,
.L147:
	.loc 1 832 0 is_stmt 1 discriminator 1
	movl	-16(%rbp), %eax	# top_idx, tmp201
	cmpl	-24(%rbp), %eax	# list_idx, tmp201
	jl	.L155	#,
	.loc 1 832 0 is_stmt 0 discriminator 2
	movl	-12(%rbp), %eax	# bot_idx, tmp202
	cmpl	-24(%rbp), %eax	# list_idx, tmp202
	jl	.L155	#,
.L133:
	.loc 1 864 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	gen_pic_list_from_frame_list, .-gen_pic_list_from_frame_list
	.section	.rodata
.LC9:
	.string	"init_lists: fs_list0"
.LC10:
	.string	"init_lists: fs_listlt"
.LC11:
	.string	"init_lists: fs_list1"
	.text
	.globl	init_lists
	.type	init_lists, @function
init_lists:
.LFB23:
	.loc 1 875 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movl	%edi, -84(%rbp)	# currSliceType, currSliceType
	movl	%esi, -88(%rbp)	# currPicStructure, currPicStructure
	.loc 1 876 0
	movl	$0, -68(%rbp)	#, add_top
	movl	$0, -64(%rbp)	#, add_bottom
	.loc 1 879 0
	movl	log2_max_frame_num_minus4(%rip), %eax	# log2_max_frame_num_minus4, log2_max_frame_num_minus4.21
	addl	$4, %eax	#, D.14765
	movl	$1, %edx	#, tmp751
	movl	%eax, %ecx	# D.14766, tmp863
	sall	%cl, %edx	# tmp863, tmp752
	movl	%edx, %eax	# tmp752, tmp752
	movl	%eax, -40(%rbp)	# tmp752, MaxFrameNum
	.loc 1 882 0
	movl	$0, -48(%rbp)	#, list0idx
	.loc 1 883 0
	movl	$0, -36(%rbp)	#, list0idx_1
	.loc 1 884 0
	movl	$0, -44(%rbp)	#, listltidx
	.loc 1 892 0
	cmpl	$0, -88(%rbp)	#, currPicStructure
	jne	.L157	#,
	.loc 1 894 0
	movl	$0, -60(%rbp)	#, i
	jmp	.L158	#
.L162:
	.loc 1 896 0
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14767
	movl	-60(%rbp), %edx	# i, D.14768
	salq	$3, %rdx	#, D.14768
	addq	%rdx, %rax	# D.14768, D.14767
	movq	(%rax), %rax	# *_59, D.14769
	movl	(%rax), %eax	# _60->is_used, D.14766
	cmpl	$3, %eax	#, D.14766
	jne	.L159	#,
	.loc 1 898 0
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14767
	movl	-60(%rbp), %edx	# i, D.14768
	salq	$3, %rdx	#, D.14768
	addq	%rdx, %rax	# D.14768, D.14767
	movq	(%rax), %rax	# *_65, D.14769
	movq	40(%rax), %rax	# _66->frame, D.14770
	movl	6380(%rax), %eax	# _67->used_for_reference, D.14766
	testl	%eax, %eax	# D.14766
	je	.L159	#,
	.loc 1 898 0 is_stmt 0 discriminator 1
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14767
	movl	-60(%rbp), %edx	# i, D.14768
	salq	$3, %rdx	#, D.14768
	addq	%rdx, %rax	# D.14768, D.14767
	movq	(%rax), %rax	# *_72, D.14769
	movq	40(%rax), %rax	# _73->frame, D.14770
	movl	6376(%rax), %eax	# _74->is_long_term, D.14766
	testl	%eax, %eax	# D.14766
	jne	.L159	#,
	.loc 1 900 0 is_stmt 1
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14767
	movl	-60(%rbp), %edx	# i, D.14768
	salq	$3, %rdx	#, D.14768
	addq	%rdx, %rax	# D.14768, D.14767
	movq	(%rax), %rax	# *_79, D.14769
	movl	20(%rax), %edx	# _80->frame_num, D.14765
	movq	img(%rip), %rax	# img, img.22
	movl	72464(%rax), %eax	# img.22_82->frame_num, D.14765
	cmpl	%eax, %edx	# D.14765, D.14765
	jbe	.L160	#,
	.loc 1 902 0
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14767
	movl	-60(%rbp), %edx	# i, D.14768
	salq	$3, %rdx	#, D.14768
	addq	%rdx, %rax	# D.14768, D.14767
	movq	(%rax), %rax	# *_87, D.14769
	movq	dpb+8(%rip), %rdx	# dpb.fs_ref, D.14767
	movl	-60(%rbp), %ecx	# i, D.14768
	salq	$3, %rcx	#, D.14768
	addq	%rcx, %rdx	# D.14768, D.14767
	movq	(%rdx), %rdx	# *_92, D.14769
	movl	20(%rdx), %ecx	# _93->frame_num, D.14765
	movl	-40(%rbp), %edx	# MaxFrameNum, MaxFrameNum.23
	subl	%edx, %ecx	# MaxFrameNum.23, D.14765
	movl	%ecx, %edx	# D.14765, D.14765
	movl	%edx, 24(%rax)	# D.14766, _88->frame_num_wrap
	jmp	.L161	#
.L160:
	.loc 1 906 0
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14767
	movl	-60(%rbp), %edx	# i, D.14768
	salq	$3, %rdx	#, D.14768
	addq	%rdx, %rax	# D.14768, D.14767
	movq	(%rax), %rax	# *_101, D.14769
	movq	dpb+8(%rip), %rdx	# dpb.fs_ref, D.14767
	movl	-60(%rbp), %ecx	# i, D.14768
	salq	$3, %rcx	#, D.14768
	addq	%rcx, %rdx	# D.14768, D.14767
	movq	(%rdx), %rdx	# *_106, D.14769
	movl	20(%rdx), %edx	# _107->frame_num, D.14765
	movl	%edx, 24(%rax)	# D.14766, _102->frame_num_wrap
.L161:
	.loc 1 908 0
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14767
	movl	-60(%rbp), %edx	# i, D.14768
	salq	$3, %rdx	#, D.14768
	addq	%rdx, %rax	# D.14768, D.14767
	movq	(%rax), %rax	# *_113, D.14769
	movq	40(%rax), %rax	# _114->frame, D.14770
	movq	dpb+8(%rip), %rdx	# dpb.fs_ref, D.14767
	movl	-60(%rbp), %ecx	# i, D.14768
	salq	$3, %rcx	#, D.14768
	addq	%rcx, %rdx	# D.14768, D.14767
	movq	(%rdx), %rdx	# *_119, D.14769
	movl	24(%rdx), %edx	# _120->frame_num_wrap, D.14766
	movl	%edx, 6364(%rax)	# D.14766, _115->pic_num
	.loc 1 909 0
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14767
	movl	-60(%rbp), %edx	# i, D.14768
	salq	$3, %rdx	#, D.14768
	addq	%rdx, %rax	# D.14768, D.14767
	movq	(%rax), %rax	# *_125, D.14769
	movq	40(%rax), %rax	# _126->frame, D.14770
	movl	-48(%rbp), %edx	# list0idx, tmp753
	movl	%edx, 20(%rax)	# tmp753, _127->order_num
.L159:
	.loc 1 894 0
	addl	$1, -60(%rbp)	#, i
.L158:
	.loc 1 894 0 is_stmt 0 discriminator 1
	movl	dpb+32(%rip), %eax	# dpb.ref_frames_in_buffer, D.14765
	cmpl	-60(%rbp), %eax	# i, D.14765
	ja	.L162	#,
	jmp	.L163	#
.L157:
	.loc 1 916 0 is_stmt 1
	cmpl	$1, -88(%rbp)	#, currPicStructure
	jne	.L164	#,
	.loc 1 918 0
	movl	$1, -68(%rbp)	#, add_top
	.loc 1 919 0
	movl	$0, -64(%rbp)	#, add_bottom
	jmp	.L165	#
.L164:
	.loc 1 923 0
	movl	$0, -68(%rbp)	#, add_top
	.loc 1 924 0
	movl	$1, -64(%rbp)	#, add_bottom
.L165:
	.loc 1 927 0
	movl	$0, -60(%rbp)	#, i
	jmp	.L166	#
.L171:
	.loc 1 929 0
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14767
	movl	-60(%rbp), %edx	# i, D.14768
	salq	$3, %rdx	#, D.14768
	addq	%rdx, %rax	# D.14768, D.14767
	movq	(%rax), %rax	# *_138, D.14769
	movl	4(%rax), %eax	# _139->is_reference, D.14766
	testl	%eax, %eax	# D.14766
	je	.L167	#,
	.loc 1 931 0
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14767
	movl	-60(%rbp), %edx	# i, D.14768
	salq	$3, %rdx	#, D.14768
	addq	%rdx, %rax	# D.14768, D.14767
	movq	(%rax), %rax	# *_144, D.14769
	movl	20(%rax), %edx	# _145->frame_num, D.14765
	movq	img(%rip), %rax	# img, img.24
	movl	72464(%rax), %eax	# img.24_147->frame_num, D.14765
	cmpl	%eax, %edx	# D.14765, D.14765
	jbe	.L168	#,
	.loc 1 933 0
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14767
	movl	-60(%rbp), %edx	# i, D.14768
	salq	$3, %rdx	#, D.14768
	addq	%rdx, %rax	# D.14768, D.14767
	movq	(%rax), %rax	# *_152, D.14769
	movq	dpb+8(%rip), %rdx	# dpb.fs_ref, D.14767
	movl	-60(%rbp), %ecx	# i, D.14768
	salq	$3, %rcx	#, D.14768
	addq	%rcx, %rdx	# D.14768, D.14767
	movq	(%rdx), %rdx	# *_157, D.14769
	movl	20(%rdx), %ecx	# _158->frame_num, D.14765
	movl	-40(%rbp), %edx	# MaxFrameNum, MaxFrameNum.25
	subl	%edx, %ecx	# MaxFrameNum.25, D.14765
	movl	%ecx, %edx	# D.14765, D.14765
	movl	%edx, 24(%rax)	# D.14766, _153->frame_num_wrap
	jmp	.L169	#
.L168:
	.loc 1 937 0
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14767
	movl	-60(%rbp), %edx	# i, D.14768
	salq	$3, %rdx	#, D.14768
	addq	%rdx, %rax	# D.14768, D.14767
	movq	(%rax), %rax	# *_166, D.14769
	movq	dpb+8(%rip), %rdx	# dpb.fs_ref, D.14767
	movl	-60(%rbp), %ecx	# i, D.14768
	salq	$3, %rcx	#, D.14768
	addq	%rcx, %rdx	# D.14768, D.14767
	movq	(%rdx), %rdx	# *_171, D.14769
	movl	20(%rdx), %edx	# _172->frame_num, D.14765
	movl	%edx, 24(%rax)	# D.14766, _167->frame_num_wrap
.L169:
	.loc 1 939 0
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14767
	movl	-60(%rbp), %edx	# i, D.14768
	salq	$3, %rdx	#, D.14768
	addq	%rdx, %rax	# D.14768, D.14767
	movq	(%rax), %rax	# *_178, D.14769
	movl	4(%rax), %eax	# _179->is_reference, D.14766
	andl	$1, %eax	#, D.14766
	testl	%eax, %eax	# D.14766
	je	.L170	#,
	.loc 1 941 0
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14767
	movl	-60(%rbp), %edx	# i, D.14768
	salq	$3, %rdx	#, D.14768
	addq	%rdx, %rax	# D.14768, D.14767
	movq	(%rax), %rax	# *_185, D.14769
	movq	48(%rax), %rax	# _186->top_field, D.14770
	movq	dpb+8(%rip), %rdx	# dpb.fs_ref, D.14767
	movl	-60(%rbp), %ecx	# i, D.14768
	salq	$3, %rcx	#, D.14768
	addq	%rcx, %rdx	# D.14768, D.14767
	movq	(%rdx), %rdx	# *_191, D.14769
	movl	24(%rdx), %edx	# _192->frame_num_wrap, D.14766
	leal	(%rdx,%rdx), %ecx	#, D.14766
	movl	-68(%rbp), %edx	# add_top, tmp754
	addl	%ecx, %edx	# D.14766, D.14766
	movl	%edx, 6364(%rax)	# D.14766, _187->pic_num
.L170:
	.loc 1 943 0
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14767
	movl	-60(%rbp), %edx	# i, D.14768
	salq	$3, %rdx	#, D.14768
	addq	%rdx, %rax	# D.14768, D.14767
	movq	(%rax), %rax	# *_199, D.14769
	movl	4(%rax), %eax	# _200->is_reference, D.14766
	andl	$2, %eax	#, D.14766
	testl	%eax, %eax	# D.14766
	je	.L167	#,
	.loc 1 945 0
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14767
	movl	-60(%rbp), %edx	# i, D.14768
	salq	$3, %rdx	#, D.14768
	addq	%rdx, %rax	# D.14768, D.14767
	movq	(%rax), %rax	# *_206, D.14769
	movq	56(%rax), %rax	# _207->bottom_field, D.14770
	movq	dpb+8(%rip), %rdx	# dpb.fs_ref, D.14767
	movl	-60(%rbp), %ecx	# i, D.14768
	salq	$3, %rcx	#, D.14768
	addq	%rcx, %rdx	# D.14768, D.14767
	movq	(%rdx), %rdx	# *_212, D.14769
	movl	24(%rdx), %edx	# _213->frame_num_wrap, D.14766
	leal	(%rdx,%rdx), %ecx	#, D.14766
	movl	-64(%rbp), %edx	# add_bottom, tmp755
	addl	%ecx, %edx	# D.14766, D.14766
	movl	%edx, 6364(%rax)	# D.14766, _208->pic_num
.L167:
	.loc 1 927 0
	addl	$1, -60(%rbp)	#, i
.L166:
	.loc 1 927 0 is_stmt 0 discriminator 1
	movl	dpb+32(%rip), %eax	# dpb.ref_frames_in_buffer, D.14765
	cmpl	-60(%rbp), %eax	# i, D.14765
	ja	.L171	#,
.L163:
	.loc 1 951 0 is_stmt 1
	cmpl	$2, -84(%rbp)	#, currSliceType
	je	.L172	#,
	.loc 1 951 0 is_stmt 0 discriminator 1
	cmpl	$4, -84(%rbp)	#, currSliceType
	jne	.L173	#,
.L172:
	.loc 1 953 0 is_stmt 1
	movl	$0, listXsize(%rip)	#, listXsize
	.loc 1 954 0
	movl	$0, listXsize+4(%rip)	#, listXsize
	.loc 1 955 0
	jmp	.L156	#
.L173:
	.loc 1 958 0
	cmpl	$0, -84(%rbp)	#, currSliceType
	je	.L175	#,
	.loc 1 958 0 is_stmt 0 discriminator 1
	cmpl	$3, -84(%rbp)	#, currSliceType
	jne	.L176	#,
.L175:
	.loc 1 961 0 is_stmt 1
	cmpl	$0, -88(%rbp)	#, currPicStructure
	jne	.L177	#,
	.loc 1 963 0
	movl	$0, -60(%rbp)	#, i
	jmp	.L178	#
.L180:
	.loc 1 965 0
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14767
	movl	-60(%rbp), %edx	# i, D.14768
	salq	$3, %rdx	#, D.14768
	addq	%rdx, %rax	# D.14768, D.14767
	movq	(%rax), %rax	# *_586, D.14769
	movl	(%rax), %eax	# _587->is_used, D.14766
	cmpl	$3, %eax	#, D.14766
	jne	.L179	#,
	.loc 1 967 0
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14767
	movl	-60(%rbp), %edx	# i, D.14768
	salq	$3, %rdx	#, D.14768
	addq	%rdx, %rax	# D.14768, D.14767
	movq	(%rax), %rax	# *_592, D.14769
	movq	40(%rax), %rax	# _593->frame, D.14770
	movl	6380(%rax), %eax	# _594->used_for_reference, D.14766
	testl	%eax, %eax	# D.14766
	je	.L179	#,
	.loc 1 967 0 is_stmt 0 discriminator 1
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14767
	movl	-60(%rbp), %edx	# i, D.14768
	salq	$3, %rdx	#, D.14768
	addq	%rdx, %rax	# D.14768, D.14767
	movq	(%rax), %rax	# *_599, D.14769
	movq	40(%rax), %rax	# _600->frame, D.14770
	movl	6376(%rax), %eax	# _601->is_long_term, D.14766
	testl	%eax, %eax	# D.14766
	jne	.L179	#,
	.loc 1 969 0 is_stmt 1
	movq	listX(%rip), %rcx	# listX, D.14771
	movl	-48(%rbp), %eax	# list0idx, list0idx.26
	leal	1(%rax), %edx	#, tmp756
	movl	%edx, -48(%rbp)	# tmp756, list0idx
	cltq
	salq	$3, %rax	#, D.14768
	leaq	(%rcx,%rax), %rdx	#, D.14771
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14767
	movl	-60(%rbp), %ecx	# i, D.14768
	salq	$3, %rcx	#, D.14768
	addq	%rcx, %rax	# D.14768, D.14767
	movq	(%rax), %rax	# *_612, D.14769
	movq	40(%rax), %rax	# _613->frame, D.14770
	movq	%rax, (%rdx)	# D.14770, *_608
.L179:
	.loc 1 963 0
	addl	$1, -60(%rbp)	#, i
.L178:
	.loc 1 963 0 is_stmt 0 discriminator 1
	movl	dpb+32(%rip), %eax	# dpb.ref_frames_in_buffer, D.14765
	cmpl	-60(%rbp), %eax	# i, D.14765
	ja	.L180	#,
	.loc 1 974 0 is_stmt 1
	movl	-48(%rbp), %eax	# list0idx, tmp757
	movslq	%eax, %rsi	# tmp757, D.14768
	movq	listX(%rip), %rax	# listX, D.14771
	movl	$compare_pic_by_pic_num_desc, %ecx	#,
	movl	$8, %edx	#,
	movq	%rax, %rdi	# D.14771,
	call	qsort	#
	.loc 1 975 0
	movl	-48(%rbp), %eax	# list0idx, tmp758
	movl	%eax, listXsize(%rip)	# tmp758, listXsize
	.loc 1 979 0
	movl	$0, -60(%rbp)	#, i
	jmp	.L181	#
.L183:
	.loc 1 981 0
	movq	dpb+16(%rip), %rax	# dpb.fs_ltref, D.14767
	movl	-60(%rbp), %edx	# i, D.14768
	salq	$3, %rdx	#, D.14768
	addq	%rdx, %rax	# D.14768, D.14767
	movq	(%rax), %rax	# *_623, D.14769
	movl	(%rax), %eax	# _624->is_used, D.14766
	cmpl	$3, %eax	#, D.14766
	jne	.L182	#,
	.loc 1 983 0
	movq	dpb+16(%rip), %rax	# dpb.fs_ltref, D.14767
	movl	-60(%rbp), %edx	# i, D.14768
	salq	$3, %rdx	#, D.14768
	addq	%rdx, %rax	# D.14768, D.14767
	movq	(%rax), %rax	# *_629, D.14769
	movq	40(%rax), %rax	# _630->frame, D.14770
	movl	6376(%rax), %eax	# _631->is_long_term, D.14766
	testl	%eax, %eax	# D.14766
	je	.L182	#,
	.loc 1 985 0
	movq	dpb+16(%rip), %rax	# dpb.fs_ltref, D.14767
	movl	-60(%rbp), %edx	# i, D.14768
	salq	$3, %rdx	#, D.14768
	addq	%rdx, %rax	# D.14768, D.14767
	movq	(%rax), %rax	# *_636, D.14769
	movq	40(%rax), %rax	# _637->frame, D.14770
	movq	dpb+16(%rip), %rdx	# dpb.fs_ltref, D.14767
	movl	-60(%rbp), %ecx	# i, D.14768
	salq	$3, %rcx	#, D.14768
	addq	%rcx, %rdx	# D.14768, D.14767
	movq	(%rdx), %rdx	# *_642, D.14769
	movq	40(%rdx), %rdx	# _643->frame, D.14770
	movl	6372(%rdx), %edx	# _644->long_term_frame_idx, D.14766
	movl	%edx, 6368(%rax)	# D.14766, _638->long_term_pic_num
	.loc 1 986 0
	movq	dpb+16(%rip), %rax	# dpb.fs_ltref, D.14767
	movl	-60(%rbp), %edx	# i, D.14768
	salq	$3, %rdx	#, D.14768
	addq	%rdx, %rax	# D.14768, D.14767
	movq	(%rax), %rax	# *_649, D.14769
	movq	40(%rax), %rax	# _650->frame, D.14770
	movl	-48(%rbp), %edx	# list0idx, tmp759
	movl	%edx, 20(%rax)	# tmp759, _651->order_num
	.loc 1 987 0
	movq	listX(%rip), %rcx	# listX, D.14771
	movl	-48(%rbp), %eax	# list0idx, list0idx.27
	leal	1(%rax), %edx	#, tmp760
	movl	%edx, -48(%rbp)	# tmp760, list0idx
	cltq
	salq	$3, %rax	#, D.14768
	leaq	(%rcx,%rax), %rdx	#, D.14771
	movq	dpb+16(%rip), %rax	# dpb.fs_ltref, D.14767
	movl	-60(%rbp), %ecx	# i, D.14768
	salq	$3, %rcx	#, D.14768
	addq	%rcx, %rax	# D.14768, D.14767
	movq	(%rax), %rax	# *_661, D.14769
	movq	40(%rax), %rax	# _662->frame, D.14770
	movq	%rax, (%rdx)	# D.14770, *_657
.L182:
	.loc 1 979 0
	addl	$1, -60(%rbp)	#, i
.L181:
	.loc 1 979 0 is_stmt 0 discriminator 1
	movl	dpb+36(%rip), %eax	# dpb.ltref_frames_in_buffer, D.14765
	cmpl	-60(%rbp), %eax	# i, D.14765
	ja	.L183	#,
	.loc 1 991 0 is_stmt 1
	movl	listXsize(%rip), %eax	# listXsize, D.14766
	movl	-48(%rbp), %edx	# list0idx, tmp761
	subl	%eax, %edx	# D.14766, D.14766
	movl	%edx, %eax	# D.14766, D.14766
	cltq
	movq	listX(%rip), %rdx	# listX, D.14771
	movl	listXsize(%rip), %ecx	# listXsize, D.14766
	movslq	%ecx, %rcx	# D.14766, D.14768
	salq	$3, %rcx	#, D.14768
	leaq	(%rdx,%rcx), %rdi	#, D.14772
	movl	$compare_pic_by_lt_pic_num_asc, %ecx	#,
	movl	$8, %edx	#,
	movq	%rax, %rsi	# D.14768,
	call	qsort	#
	.loc 1 992 0
	movl	-48(%rbp), %eax	# list0idx, tmp762
	movl	%eax, listXsize(%rip)	# tmp762, listXsize
	jmp	.L184	#
.L177:
	.loc 1 996 0
	movl	dpb+24(%rip), %eax	# dpb.size, D.14765
	movl	%eax, %eax	# D.14765, D.14768
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.14768,
	call	calloc	#
	movq	%rax, -32(%rbp)	# tmp763, fs_list0
	.loc 1 997 0
	cmpq	$0, -32(%rbp)	#, fs_list0
	jne	.L185	#,
	.loc 1 998 0
	movl	$.LC9, %edi	#,
	call	no_mem_exit	#
.L185:
	.loc 1 999 0
	movl	dpb+24(%rip), %eax	# dpb.size, D.14765
	movl	%eax, %eax	# D.14765, D.14768
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.14768,
	call	calloc	#
	movq	%rax, -16(%rbp)	# tmp764, fs_listlt
	.loc 1 1000 0
	cmpq	$0, -16(%rbp)	#, fs_listlt
	jne	.L186	#,
	.loc 1 1001 0
	movl	$.LC10, %edi	#,
	call	no_mem_exit	#
.L186:
	.loc 1 1003 0
	movl	$0, -60(%rbp)	#, i
	jmp	.L187	#
.L189:
	.loc 1 1005 0
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14767
	movl	-60(%rbp), %edx	# i, D.14768
	salq	$3, %rdx	#, D.14768
	addq	%rdx, %rax	# D.14768, D.14767
	movq	(%rax), %rax	# *_684, D.14769
	movl	4(%rax), %eax	# _685->is_reference, D.14766
	testl	%eax, %eax	# D.14766
	je	.L188	#,
	.loc 1 1007 0
	movl	-48(%rbp), %eax	# list0idx, list0idx.28
	leal	1(%rax), %edx	#, tmp765
	movl	%edx, -48(%rbp)	# tmp765, list0idx
	cltq
	leaq	0(,%rax,8), %rdx	#, D.14768
	movq	-32(%rbp), %rax	# fs_list0, tmp766
	addq	%rax, %rdx	# tmp766, D.14767
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14767
	movl	-60(%rbp), %ecx	# i, D.14768
	salq	$3, %rcx	#, D.14768
	addq	%rcx, %rax	# D.14768, D.14767
	movq	(%rax), %rax	# *_695, D.14769
	movq	%rax, (%rdx)	# D.14769, *_691
.L188:
	.loc 1 1003 0
	addl	$1, -60(%rbp)	#, i
.L187:
	.loc 1 1003 0 is_stmt 0 discriminator 1
	movl	dpb+32(%rip), %eax	# dpb.ref_frames_in_buffer, D.14765
	cmpl	-60(%rbp), %eax	# i, D.14765
	ja	.L189	#,
	.loc 1 1011 0 is_stmt 1
	movl	-48(%rbp), %eax	# list0idx, tmp767
	movslq	%eax, %rsi	# tmp767, D.14768
	movq	-32(%rbp), %rax	# fs_list0, tmp768
	movl	$compare_fs_by_frame_num_desc, %ecx	#,
	movl	$8, %edx	#,
	movq	%rax, %rdi	# tmp768,
	call	qsort	#
	.loc 1 1015 0
	movl	$0, listXsize(%rip)	#, listXsize
	.loc 1 1016 0
	movq	listX(%rip), %rcx	# listX, D.14771
	movl	-48(%rbp), %edx	# list0idx, tmp769
	movq	-32(%rbp), %rsi	# fs_list0, tmp770
	movl	-88(%rbp), %eax	# currPicStructure, tmp771
	movl	$0, %r9d	#,
	movl	$listXsize, %r8d	#,
	movl	%eax, %edi	# tmp771,
	call	gen_pic_list_from_frame_list	#
	.loc 1 1021 0
	movl	$0, -60(%rbp)	#, i
	jmp	.L190	#
.L193:
	.loc 1 1023 0
	movl	-44(%rbp), %eax	# listltidx, listltidx.29
	leal	1(%rax), %edx	#, tmp772
	movl	%edx, -44(%rbp)	# tmp772, listltidx
	cltq
	leaq	0(,%rax,8), %rdx	#, D.14768
	movq	-16(%rbp), %rax	# fs_listlt, tmp773
	addq	%rax, %rdx	# tmp773, D.14767
	movq	dpb+16(%rip), %rax	# dpb.fs_ltref, D.14767
	movl	-60(%rbp), %ecx	# i, D.14768
	salq	$3, %rcx	#, D.14768
	addq	%rcx, %rax	# D.14768, D.14767
	movq	(%rax), %rax	# *_710, D.14769
	movq	%rax, (%rdx)	# D.14769, *_706
	.loc 1 1024 0
	movq	dpb+16(%rip), %rax	# dpb.fs_ltref, D.14767
	movl	-60(%rbp), %edx	# i, D.14768
	salq	$3, %rdx	#, D.14768
	addq	%rdx, %rax	# D.14768, D.14767
	movq	(%rax), %rax	# *_715, D.14769
	movl	8(%rax), %eax	# _716->is_long_term, D.14766
	andl	$1, %eax	#, D.14766
	testl	%eax, %eax	# D.14766
	je	.L191	#,
	.loc 1 1026 0
	movq	dpb+16(%rip), %rax	# dpb.fs_ltref, D.14767
	movl	-60(%rbp), %edx	# i, D.14768
	salq	$3, %rdx	#, D.14768
	addq	%rdx, %rax	# D.14768, D.14767
	movq	(%rax), %rax	# *_722, D.14769
	movq	48(%rax), %rax	# _723->top_field, D.14770
	movq	dpb+16(%rip), %rdx	# dpb.fs_ltref, D.14767
	movl	-60(%rbp), %ecx	# i, D.14768
	salq	$3, %rcx	#, D.14768
	addq	%rcx, %rdx	# D.14768, D.14767
	movq	(%rdx), %rdx	# *_728, D.14769
	movq	48(%rdx), %rdx	# _729->top_field, D.14770
	movl	6372(%rdx), %edx	# _730->long_term_frame_idx, D.14766
	leal	(%rdx,%rdx), %ecx	#, D.14766
	movl	-68(%rbp), %edx	# add_top, tmp774
	addl	%ecx, %edx	# D.14766, D.14766
	movl	%edx, 6368(%rax)	# D.14766, _724->long_term_pic_num
.L191:
	.loc 1 1028 0
	movq	dpb+16(%rip), %rax	# dpb.fs_ltref, D.14767
	movl	-60(%rbp), %edx	# i, D.14768
	salq	$3, %rdx	#, D.14768
	addq	%rdx, %rax	# D.14768, D.14767
	movq	(%rax), %rax	# *_737, D.14769
	movl	8(%rax), %eax	# _738->is_long_term, D.14766
	andl	$2, %eax	#, D.14766
	testl	%eax, %eax	# D.14766
	je	.L192	#,
	.loc 1 1030 0
	movq	dpb+16(%rip), %rax	# dpb.fs_ltref, D.14767
	movl	-60(%rbp), %edx	# i, D.14768
	salq	$3, %rdx	#, D.14768
	addq	%rdx, %rax	# D.14768, D.14767
	movq	(%rax), %rax	# *_744, D.14769
	movq	56(%rax), %rax	# _745->bottom_field, D.14770
	movq	dpb+16(%rip), %rdx	# dpb.fs_ltref, D.14767
	movl	-60(%rbp), %ecx	# i, D.14768
	salq	$3, %rcx	#, D.14768
	addq	%rcx, %rdx	# D.14768, D.14767
	movq	(%rdx), %rdx	# *_750, D.14769
	movq	56(%rdx), %rdx	# _751->bottom_field, D.14770
	movl	6372(%rdx), %edx	# _752->long_term_frame_idx, D.14766
	leal	(%rdx,%rdx), %ecx	#, D.14766
	movl	-64(%rbp), %edx	# add_bottom, tmp775
	addl	%ecx, %edx	# D.14766, D.14766
	movl	%edx, 6368(%rax)	# D.14766, _746->long_term_pic_num
.L192:
	.loc 1 1021 0
	addl	$1, -60(%rbp)	#, i
.L190:
	.loc 1 1021 0 is_stmt 0 discriminator 1
	movl	dpb+36(%rip), %eax	# dpb.ltref_frames_in_buffer, D.14765
	cmpl	-60(%rbp), %eax	# i, D.14765
	ja	.L193	#,
	.loc 1 1034 0 is_stmt 1
	movl	-44(%rbp), %eax	# listltidx, tmp776
	movslq	%eax, %rsi	# tmp776, D.14768
	movq	-16(%rbp), %rax	# fs_listlt, tmp777
	movl	$compare_fs_by_lt_pic_idx_asc, %ecx	#,
	movl	$8, %edx	#,
	movq	%rax, %rdi	# tmp777,
	call	qsort	#
	.loc 1 1036 0
	movq	listX(%rip), %rcx	# listX, D.14771
	movl	-44(%rbp), %edx	# listltidx, tmp778
	movq	-16(%rbp), %rsi	# fs_listlt, tmp779
	movl	-88(%rbp), %eax	# currPicStructure, tmp780
	movl	$1, %r9d	#,
	movl	$listXsize, %r8d	#,
	movl	%eax, %edi	# tmp780,
	call	gen_pic_list_from_frame_list	#
	.loc 1 1038 0
	movq	-32(%rbp), %rax	# fs_list0, tmp781
	movq	%rax, %rdi	# tmp781,
	call	free	#
	.loc 1 1039 0
	movq	-16(%rbp), %rax	# fs_listlt, tmp782
	movq	%rax, %rdi	# tmp782,
	call	free	#
.L184:
	.loc 1 1041 0
	movl	$0, listXsize+4(%rip)	#, listXsize
	jmp	.L194	#
.L176:
	.loc 1 1046 0
	cmpl	$0, -88(%rbp)	#, currPicStructure
	jne	.L195	#,
	.loc 1 1048 0
	movl	$0, -60(%rbp)	#, i
	jmp	.L196	#
.L198:
	.loc 1 1050 0
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14767
	movl	-60(%rbp), %edx	# i, D.14768
	salq	$3, %rdx	#, D.14768
	addq	%rdx, %rax	# D.14768, D.14767
	movq	(%rax), %rax	# *_224, D.14769
	movl	(%rax), %eax	# _225->is_used, D.14766
	cmpl	$3, %eax	#, D.14766
	jne	.L197	#,
	.loc 1 1052 0
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14767
	movl	-60(%rbp), %edx	# i, D.14768
	salq	$3, %rdx	#, D.14768
	addq	%rdx, %rax	# D.14768, D.14767
	movq	(%rax), %rax	# *_230, D.14769
	movq	40(%rax), %rax	# _231->frame, D.14770
	movl	6380(%rax), %eax	# _232->used_for_reference, D.14766
	testl	%eax, %eax	# D.14766
	je	.L197	#,
	.loc 1 1052 0 is_stmt 0 discriminator 1
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14767
	movl	-60(%rbp), %edx	# i, D.14768
	salq	$3, %rdx	#, D.14768
	addq	%rdx, %rax	# D.14768, D.14767
	movq	(%rax), %rax	# *_237, D.14769
	movq	40(%rax), %rax	# _238->frame, D.14770
	movl	6376(%rax), %eax	# _239->is_long_term, D.14766
	testl	%eax, %eax	# D.14766
	jne	.L197	#,
	.loc 1 1054 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.30
	movl	72456(%rax), %edx	# img.30_241->framepoc, D.14766
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14767
	movl	-60(%rbp), %ecx	# i, D.14768
	salq	$3, %rcx	#, D.14768
	addq	%rcx, %rax	# D.14768, D.14767
	movq	(%rax), %rax	# *_246, D.14769
	movq	40(%rax), %rax	# _247->frame, D.14770
	movl	4(%rax), %eax	# _248->poc, D.14766
	cmpl	%eax, %edx	# D.14766, D.14766
	jle	.L197	#,
	.loc 1 1056 0
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14767
	movl	-60(%rbp), %edx	# i, D.14768
	salq	$3, %rdx	#, D.14768
	addq	%rdx, %rax	# D.14768, D.14767
	movq	(%rax), %rax	# *_253, D.14769
	movq	40(%rax), %rax	# _254->frame, D.14770
	movl	-48(%rbp), %edx	# list0idx, tmp783
	movl	%edx, 20(%rax)	# tmp783, _255->order_num
	.loc 1 1057 0
	movq	listX(%rip), %rcx	# listX, D.14771
	movl	-48(%rbp), %eax	# list0idx, list0idx.31
	leal	1(%rax), %edx	#, tmp784
	movl	%edx, -48(%rbp)	# tmp784, list0idx
	cltq
	salq	$3, %rax	#, D.14768
	leaq	(%rcx,%rax), %rdx	#, D.14771
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14767
	movl	-60(%rbp), %ecx	# i, D.14768
	salq	$3, %rcx	#, D.14768
	addq	%rcx, %rax	# D.14768, D.14767
	movq	(%rax), %rax	# *_265, D.14769
	movq	40(%rax), %rax	# _266->frame, D.14770
	movq	%rax, (%rdx)	# D.14770, *_261
.L197:
	.loc 1 1048 0
	addl	$1, -60(%rbp)	#, i
.L196:
	.loc 1 1048 0 is_stmt 0 discriminator 1
	movl	dpb+32(%rip), %eax	# dpb.ref_frames_in_buffer, D.14765
	cmpl	-60(%rbp), %eax	# i, D.14765
	ja	.L198	#,
	.loc 1 1062 0 is_stmt 1
	movl	-48(%rbp), %eax	# list0idx, tmp785
	movslq	%eax, %rsi	# tmp785, D.14768
	movq	listX(%rip), %rax	# listX, D.14771
	movl	$compare_pic_by_poc_desc, %ecx	#,
	movl	$8, %edx	#,
	movq	%rax, %rdi	# D.14771,
	call	qsort	#
	.loc 1 1063 0
	movl	-48(%rbp), %eax	# list0idx, tmp786
	movl	%eax, -36(%rbp)	# tmp786, list0idx_1
	.loc 1 1064 0
	movl	$0, -60(%rbp)	#, i
	jmp	.L199	#
.L201:
	.loc 1 1066 0
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14767
	movl	-60(%rbp), %edx	# i, D.14768
	salq	$3, %rdx	#, D.14768
	addq	%rdx, %rax	# D.14768, D.14767
	movq	(%rax), %rax	# *_277, D.14769
	movl	(%rax), %eax	# _278->is_used, D.14766
	cmpl	$3, %eax	#, D.14766
	jne	.L200	#,
	.loc 1 1068 0
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14767
	movl	-60(%rbp), %edx	# i, D.14768
	salq	$3, %rdx	#, D.14768
	addq	%rdx, %rax	# D.14768, D.14767
	movq	(%rax), %rax	# *_283, D.14769
	movq	40(%rax), %rax	# _284->frame, D.14770
	movl	6380(%rax), %eax	# _285->used_for_reference, D.14766
	testl	%eax, %eax	# D.14766
	je	.L200	#,
	.loc 1 1068 0 is_stmt 0 discriminator 1
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14767
	movl	-60(%rbp), %edx	# i, D.14768
	salq	$3, %rdx	#, D.14768
	addq	%rdx, %rax	# D.14768, D.14767
	movq	(%rax), %rax	# *_290, D.14769
	movq	40(%rax), %rax	# _291->frame, D.14770
	movl	6376(%rax), %eax	# _292->is_long_term, D.14766
	testl	%eax, %eax	# D.14766
	jne	.L200	#,
	.loc 1 1070 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.32
	movl	72456(%rax), %edx	# img.32_294->framepoc, D.14766
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14767
	movl	-60(%rbp), %ecx	# i, D.14768
	salq	$3, %rcx	#, D.14768
	addq	%rcx, %rax	# D.14768, D.14767
	movq	(%rax), %rax	# *_299, D.14769
	movq	40(%rax), %rax	# _300->frame, D.14770
	movl	4(%rax), %eax	# _301->poc, D.14766
	cmpl	%eax, %edx	# D.14766, D.14766
	jge	.L200	#,
	.loc 1 1072 0
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14767
	movl	-60(%rbp), %edx	# i, D.14768
	salq	$3, %rdx	#, D.14768
	addq	%rdx, %rax	# D.14768, D.14767
	movq	(%rax), %rax	# *_306, D.14769
	movq	40(%rax), %rax	# _307->frame, D.14770
	movl	-48(%rbp), %edx	# list0idx, tmp787
	movl	%edx, 20(%rax)	# tmp787, _308->order_num
	.loc 1 1073 0
	movq	listX(%rip), %rcx	# listX, D.14771
	movl	-48(%rbp), %eax	# list0idx, list0idx.33
	leal	1(%rax), %edx	#, tmp788
	movl	%edx, -48(%rbp)	# tmp788, list0idx
	cltq
	salq	$3, %rax	#, D.14768
	leaq	(%rcx,%rax), %rdx	#, D.14771
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14767
	movl	-60(%rbp), %ecx	# i, D.14768
	salq	$3, %rcx	#, D.14768
	addq	%rcx, %rax	# D.14768, D.14767
	movq	(%rax), %rax	# *_318, D.14769
	movq	40(%rax), %rax	# _319->frame, D.14770
	movq	%rax, (%rdx)	# D.14770, *_314
.L200:
	.loc 1 1064 0
	addl	$1, -60(%rbp)	#, i
.L199:
	.loc 1 1064 0 is_stmt 0 discriminator 1
	movl	dpb+32(%rip), %eax	# dpb.ref_frames_in_buffer, D.14765
	cmpl	-60(%rbp), %eax	# i, D.14765
	ja	.L201	#,
	.loc 1 1078 0 is_stmt 1
	movl	-36(%rbp), %eax	# list0idx_1, tmp789
	movl	-48(%rbp), %edx	# list0idx, tmp790
	subl	%eax, %edx	# tmp789, D.14766
	movl	%edx, %eax	# D.14766, D.14766
	cltq
	movq	listX(%rip), %rdx	# listX, D.14771
	movl	-36(%rbp), %ecx	# list0idx_1, tmp791
	movslq	%ecx, %rcx	# tmp791, D.14768
	salq	$3, %rcx	#, D.14768
	leaq	(%rdx,%rcx), %rdi	#, D.14772
	movl	$compare_pic_by_poc_asc, %ecx	#,
	movl	$8, %edx	#,
	movq	%rax, %rsi	# D.14768,
	call	qsort	#
	.loc 1 1080 0
	movl	$0, -56(%rbp)	#, j
	jmp	.L202	#
.L203:
	.loc 1 1082 0 discriminator 2
	movq	listX+8(%rip), %rax	# listX, D.14771
	movl	-36(%rbp), %edx	# list0idx_1, tmp792
	movl	-48(%rbp), %ecx	# list0idx, tmp793
	subl	%edx, %ecx	# tmp792, D.14766
	movl	-56(%rbp), %edx	# j, tmp794
	addl	%ecx, %edx	# D.14766, D.14766
	movslq	%edx, %rdx	# D.14766, D.14768
	salq	$3, %rdx	#, D.14768
	addq	%rax, %rdx	# D.14771, D.14771
	movq	listX(%rip), %rax	# listX, D.14771
	movl	-56(%rbp), %ecx	# j, tmp795
	movslq	%ecx, %rcx	# tmp795, D.14768
	salq	$3, %rcx	#, D.14768
	addq	%rcx, %rax	# D.14768, D.14771
	movq	(%rax), %rax	# *_338, D.14770
	movq	%rax, (%rdx)	# D.14770, *_334
	.loc 1 1080 0 discriminator 2
	addl	$1, -56(%rbp)	#, j
.L202:
	.loc 1 1080 0 is_stmt 0 discriminator 1
	movl	-56(%rbp), %eax	# j, tmp796
	cmpl	-36(%rbp), %eax	# list0idx_1, tmp796
	jl	.L203	#,
	.loc 1 1084 0 is_stmt 1
	movl	-36(%rbp), %eax	# list0idx_1, tmp797
	movl	%eax, -56(%rbp)	# tmp797, j
	jmp	.L204	#
.L205:
	.loc 1 1086 0 discriminator 2
	movq	listX+8(%rip), %rax	# listX, D.14771
	movl	-36(%rbp), %edx	# list0idx_1, tmp798
	movl	-56(%rbp), %ecx	# j, tmp799
	subl	%edx, %ecx	# tmp798, D.14766
	movl	%ecx, %edx	# D.14766, D.14766
	movslq	%edx, %rdx	# D.14766, D.14768
	salq	$3, %rdx	#, D.14768
	addq	%rax, %rdx	# D.14771, D.14771
	movq	listX(%rip), %rax	# listX, D.14771
	movl	-56(%rbp), %ecx	# j, tmp800
	movslq	%ecx, %rcx	# tmp800, D.14768
	salq	$3, %rcx	#, D.14768
	addq	%rcx, %rax	# D.14768, D.14771
	movq	(%rax), %rax	# *_350, D.14770
	movq	%rax, (%rdx)	# D.14770, *_346
	.loc 1 1084 0 discriminator 2
	addl	$1, -56(%rbp)	#, j
.L204:
	.loc 1 1084 0 is_stmt 0 discriminator 1
	movl	-56(%rbp), %eax	# j, tmp801
	cmpl	-48(%rbp), %eax	# list0idx, tmp801
	jl	.L205	#,
	.loc 1 1089 0 is_stmt 1
	movl	-48(%rbp), %eax	# list0idx, tmp802
	movl	%eax, listXsize+4(%rip)	# tmp802, listXsize
	movl	listXsize+4(%rip), %eax	# listXsize, D.14766
	movl	%eax, listXsize(%rip)	# D.14766, listXsize
	.loc 1 1095 0
	movl	$0, -60(%rbp)	#, i
	jmp	.L206	#
.L208:
	.loc 1 1097 0
	movq	dpb+16(%rip), %rax	# dpb.fs_ltref, D.14767
	movl	-60(%rbp), %edx	# i, D.14768
	salq	$3, %rdx	#, D.14768
	addq	%rdx, %rax	# D.14768, D.14767
	movq	(%rax), %rax	# *_359, D.14769
	movl	(%rax), %eax	# _360->is_used, D.14766
	cmpl	$3, %eax	#, D.14766
	jne	.L207	#,
	.loc 1 1099 0
	movq	dpb+16(%rip), %rax	# dpb.fs_ltref, D.14767
	movl	-60(%rbp), %edx	# i, D.14768
	salq	$3, %rdx	#, D.14768
	addq	%rdx, %rax	# D.14768, D.14767
	movq	(%rax), %rax	# *_365, D.14769
	movq	40(%rax), %rax	# _366->frame, D.14770
	movl	6376(%rax), %eax	# _367->is_long_term, D.14766
	testl	%eax, %eax	# D.14766
	je	.L207	#,
	.loc 1 1101 0
	movq	dpb+16(%rip), %rax	# dpb.fs_ltref, D.14767
	movl	-60(%rbp), %edx	# i, D.14768
	salq	$3, %rdx	#, D.14768
	addq	%rdx, %rax	# D.14768, D.14767
	movq	(%rax), %rax	# *_372, D.14769
	movq	40(%rax), %rax	# _373->frame, D.14770
	movq	dpb+16(%rip), %rdx	# dpb.fs_ltref, D.14767
	movl	-60(%rbp), %ecx	# i, D.14768
	salq	$3, %rcx	#, D.14768
	addq	%rcx, %rdx	# D.14768, D.14767
	movq	(%rdx), %rdx	# *_378, D.14769
	movq	40(%rdx), %rdx	# _379->frame, D.14770
	movl	6372(%rdx), %edx	# _380->long_term_frame_idx, D.14766
	movl	%edx, 6368(%rax)	# D.14766, _374->long_term_pic_num
	.loc 1 1102 0
	movq	dpb+16(%rip), %rax	# dpb.fs_ltref, D.14767
	movl	-60(%rbp), %edx	# i, D.14768
	salq	$3, %rdx	#, D.14768
	addq	%rdx, %rax	# D.14768, D.14767
	movq	(%rax), %rax	# *_385, D.14769
	movq	40(%rax), %rax	# _386->frame, D.14770
	movl	-48(%rbp), %edx	# list0idx, tmp803
	movl	%edx, 20(%rax)	# tmp803, _387->order_num
	.loc 1 1104 0
	movq	listX(%rip), %rax	# listX, D.14771
	movl	-48(%rbp), %edx	# list0idx, tmp804
	movslq	%edx, %rdx	# tmp804, D.14768
	salq	$3, %rdx	#, D.14768
	addq	%rax, %rdx	# D.14771, D.14771
	movq	dpb+16(%rip), %rax	# dpb.fs_ltref, D.14767
	movl	-60(%rbp), %ecx	# i, D.14768
	salq	$3, %rcx	#, D.14768
	addq	%rcx, %rax	# D.14768, D.14767
	movq	(%rax), %rax	# *_395, D.14769
	movq	40(%rax), %rax	# _396->frame, D.14770
	movq	%rax, (%rdx)	# D.14770, *_391
	.loc 1 1105 0
	movq	listX+8(%rip), %rcx	# listX, D.14771
	movl	-48(%rbp), %eax	# list0idx, list0idx.34
	leal	1(%rax), %edx	#, tmp805
	movl	%edx, -48(%rbp)	# tmp805, list0idx
	cltq
	salq	$3, %rax	#, D.14768
	leaq	(%rcx,%rax), %rdx	#, D.14771
	movq	dpb+16(%rip), %rax	# dpb.fs_ltref, D.14767
	movl	-60(%rbp), %ecx	# i, D.14768
	salq	$3, %rcx	#, D.14768
	addq	%rcx, %rax	# D.14768, D.14767
	movq	(%rax), %rax	# *_407, D.14769
	movq	40(%rax), %rax	# _408->frame, D.14770
	movq	%rax, (%rdx)	# D.14770, *_403
.L207:
	.loc 1 1095 0
	addl	$1, -60(%rbp)	#, i
.L206:
	.loc 1 1095 0 is_stmt 0 discriminator 1
	movl	dpb+36(%rip), %eax	# dpb.ltref_frames_in_buffer, D.14765
	cmpl	-60(%rbp), %eax	# i, D.14765
	ja	.L208	#,
	.loc 1 1109 0 is_stmt 1
	movl	listXsize(%rip), %eax	# listXsize, D.14766
	movl	-48(%rbp), %edx	# list0idx, tmp806
	subl	%eax, %edx	# D.14766, D.14766
	movl	%edx, %eax	# D.14766, D.14766
	cltq
	movq	listX(%rip), %rdx	# listX, D.14771
	movl	listXsize(%rip), %ecx	# listXsize, D.14766
	movslq	%ecx, %rcx	# D.14766, D.14768
	salq	$3, %rcx	#, D.14768
	leaq	(%rdx,%rcx), %rdi	#, D.14772
	movl	$compare_pic_by_lt_pic_num_asc, %ecx	#,
	movl	$8, %edx	#,
	movq	%rax, %rsi	# D.14768,
	call	qsort	#
	.loc 1 1110 0
	movl	listXsize(%rip), %eax	# listXsize, D.14766
	movl	-48(%rbp), %edx	# list0idx, tmp807
	subl	%eax, %edx	# D.14766, D.14766
	movl	%edx, %eax	# D.14766, D.14766
	cltq
	movq	listX+8(%rip), %rdx	# listX, D.14771
	movl	listXsize(%rip), %ecx	# listXsize, D.14766
	movslq	%ecx, %rcx	# D.14766, D.14768
	salq	$3, %rcx	#, D.14768
	leaq	(%rdx,%rcx), %rdi	#, D.14772
	movl	$compare_pic_by_lt_pic_num_asc, %ecx	#,
	movl	$8, %edx	#,
	movq	%rax, %rsi	# D.14768,
	call	qsort	#
	.loc 1 1111 0
	movl	-48(%rbp), %eax	# list0idx, tmp808
	movl	%eax, listXsize+4(%rip)	# tmp808, listXsize
	movl	listXsize+4(%rip), %eax	# listXsize, D.14766
	movl	%eax, listXsize(%rip)	# D.14766, listXsize
	jmp	.L194	#
.L195:
	.loc 1 1115 0
	movl	dpb+24(%rip), %eax	# dpb.size, D.14765
	movl	%eax, %eax	# D.14765, D.14768
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.14768,
	call	calloc	#
	movq	%rax, -32(%rbp)	# tmp809, fs_list0
	.loc 1 1116 0
	cmpq	$0, -32(%rbp)	#, fs_list0
	jne	.L209	#,
	.loc 1 1117 0
	movl	$.LC9, %edi	#,
	call	no_mem_exit	#
.L209:
	.loc 1 1118 0
	movl	dpb+24(%rip), %eax	# dpb.size, D.14765
	movl	%eax, %eax	# D.14765, D.14768
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.14768,
	call	calloc	#
	movq	%rax, -24(%rbp)	# tmp810, fs_list1
	.loc 1 1119 0
	cmpq	$0, -24(%rbp)	#, fs_list1
	jne	.L210	#,
	.loc 1 1120 0
	movl	$.LC11, %edi	#,
	call	no_mem_exit	#
.L210:
	.loc 1 1121 0
	movl	dpb+24(%rip), %eax	# dpb.size, D.14765
	movl	%eax, %eax	# D.14765, D.14768
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.14768,
	call	calloc	#
	movq	%rax, -16(%rbp)	# tmp811, fs_listlt
	.loc 1 1122 0
	cmpq	$0, -16(%rbp)	#, fs_listlt
	jne	.L211	#,
	.loc 1 1123 0
	movl	$.LC10, %edi	#,
	call	no_mem_exit	#
.L211:
	.loc 1 1125 0
	movl	$0, listXsize(%rip)	#, listXsize
	.loc 1 1126 0
	movl	$1, listXsize+4(%rip)	#, listXsize
	.loc 1 1128 0
	movl	$0, -60(%rbp)	#, i
	jmp	.L212	#
.L214:
	.loc 1 1130 0
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14767
	movl	-60(%rbp), %edx	# i, D.14768
	salq	$3, %rdx	#, D.14768
	addq	%rdx, %rax	# D.14768, D.14767
	movq	(%rax), %rax	# *_442, D.14769
	movl	(%rax), %eax	# _443->is_used, D.14766
	testl	%eax, %eax	# D.14766
	je	.L213	#,
	.loc 1 1132 0
	movq	img(%rip), %rax	# img, img.35
	movl	72460(%rax), %edx	# img.35_445->ThisPOC, D.14766
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14767
	movl	-60(%rbp), %ecx	# i, D.14768
	salq	$3, %rcx	#, D.14768
	addq	%rcx, %rax	# D.14768, D.14767
	movq	(%rax), %rax	# *_450, D.14769
	movl	36(%rax), %eax	# _451->poc, D.14766
	cmpl	%eax, %edx	# D.14766, D.14766
	jl	.L213	#,
	.loc 1 1134 0
	movl	-48(%rbp), %eax	# list0idx, list0idx.36
	leal	1(%rax), %edx	#, tmp812
	movl	%edx, -48(%rbp)	# tmp812, list0idx
	cltq
	leaq	0(,%rax,8), %rdx	#, D.14768
	movq	-32(%rbp), %rax	# fs_list0, tmp813
	addq	%rax, %rdx	# tmp813, D.14767
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14767
	movl	-60(%rbp), %ecx	# i, D.14768
	salq	$3, %rcx	#, D.14768
	addq	%rcx, %rax	# D.14768, D.14767
	movq	(%rax), %rax	# *_461, D.14769
	movq	%rax, (%rdx)	# D.14769, *_457
.L213:
	.loc 1 1128 0
	addl	$1, -60(%rbp)	#, i
.L212:
	.loc 1 1128 0 is_stmt 0 discriminator 1
	movl	dpb+32(%rip), %eax	# dpb.ref_frames_in_buffer, D.14765
	cmpl	-60(%rbp), %eax	# i, D.14765
	ja	.L214	#,
	.loc 1 1138 0 is_stmt 1
	movl	-48(%rbp), %eax	# list0idx, tmp814
	movslq	%eax, %rsi	# tmp814, D.14768
	movq	-32(%rbp), %rax	# fs_list0, tmp815
	movl	$compare_fs_by_poc_desc, %ecx	#,
	movl	$8, %edx	#,
	movq	%rax, %rdi	# tmp815,
	call	qsort	#
	.loc 1 1139 0
	movl	-48(%rbp), %eax	# list0idx, tmp816
	movl	%eax, -36(%rbp)	# tmp816, list0idx_1
	.loc 1 1140 0
	movl	$0, -60(%rbp)	#, i
	jmp	.L215	#
.L217:
	.loc 1 1142 0
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14767
	movl	-60(%rbp), %edx	# i, D.14768
	salq	$3, %rdx	#, D.14768
	addq	%rdx, %rax	# D.14768, D.14767
	movq	(%rax), %rax	# *_471, D.14769
	movl	(%rax), %eax	# _472->is_used, D.14766
	testl	%eax, %eax	# D.14766
	je	.L216	#,
	.loc 1 1144 0
	movq	img(%rip), %rax	# img, img.37
	movl	72460(%rax), %edx	# img.37_474->ThisPOC, D.14766
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14767
	movl	-60(%rbp), %ecx	# i, D.14768
	salq	$3, %rcx	#, D.14768
	addq	%rcx, %rax	# D.14768, D.14767
	movq	(%rax), %rax	# *_479, D.14769
	movl	36(%rax), %eax	# _480->poc, D.14766
	cmpl	%eax, %edx	# D.14766, D.14766
	jge	.L216	#,
	.loc 1 1146 0
	movl	-48(%rbp), %eax	# list0idx, list0idx.38
	leal	1(%rax), %edx	#, tmp817
	movl	%edx, -48(%rbp)	# tmp817, list0idx
	cltq
	leaq	0(,%rax,8), %rdx	#, D.14768
	movq	-32(%rbp), %rax	# fs_list0, tmp818
	addq	%rax, %rdx	# tmp818, D.14767
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14767
	movl	-60(%rbp), %ecx	# i, D.14768
	salq	$3, %rcx	#, D.14768
	addq	%rcx, %rax	# D.14768, D.14767
	movq	(%rax), %rax	# *_490, D.14769
	movq	%rax, (%rdx)	# D.14769, *_486
.L216:
	.loc 1 1140 0
	addl	$1, -60(%rbp)	#, i
.L215:
	.loc 1 1140 0 is_stmt 0 discriminator 1
	movl	dpb+32(%rip), %eax	# dpb.ref_frames_in_buffer, D.14765
	cmpl	-60(%rbp), %eax	# i, D.14765
	ja	.L217	#,
	.loc 1 1150 0 is_stmt 1
	movl	-36(%rbp), %eax	# list0idx_1, tmp819
	movl	-48(%rbp), %edx	# list0idx, tmp820
	subl	%eax, %edx	# tmp819, D.14766
	movl	%edx, %eax	# D.14766, D.14766
	cltq
	movl	-36(%rbp), %edx	# list0idx_1, tmp821
	movslq	%edx, %rdx	# tmp821, D.14768
	leaq	0(,%rdx,8), %rcx	#, D.14768
	movq	-32(%rbp), %rdx	# fs_list0, tmp822
	leaq	(%rcx,%rdx), %rdi	#, D.14772
	movl	$compare_fs_by_poc_asc, %ecx	#,
	movl	$8, %edx	#,
	movq	%rax, %rsi	# D.14768,
	call	qsort	#
	.loc 1 1152 0
	movl	$0, -56(%rbp)	#, j
	jmp	.L218	#
.L219:
	.loc 1 1154 0 discriminator 2
	movl	-36(%rbp), %eax	# list0idx_1, tmp823
	movl	-48(%rbp), %edx	# list0idx, tmp824
	subl	%eax, %edx	# tmp823, D.14766
	movl	-56(%rbp), %eax	# j, tmp825
	addl	%edx, %eax	# D.14766, D.14766
	cltq
	leaq	0(,%rax,8), %rdx	#, D.14768
	movq	-24(%rbp), %rax	# fs_list1, tmp826
	addq	%rax, %rdx	# tmp826, D.14767
	movl	-56(%rbp), %eax	# j, tmp827
	cltq
	leaq	0(,%rax,8), %rcx	#, D.14768
	movq	-32(%rbp), %rax	# fs_list0, tmp828
	addq	%rcx, %rax	# D.14768, D.14767
	movq	(%rax), %rax	# *_506, D.14769
	movq	%rax, (%rdx)	# D.14769, *_503
	.loc 1 1152 0 discriminator 2
	addl	$1, -56(%rbp)	#, j
.L218:
	.loc 1 1152 0 is_stmt 0 discriminator 1
	movl	-56(%rbp), %eax	# j, tmp829
	cmpl	-36(%rbp), %eax	# list0idx_1, tmp829
	jl	.L219	#,
	.loc 1 1156 0 is_stmt 1
	movl	-36(%rbp), %eax	# list0idx_1, tmp830
	movl	%eax, -56(%rbp)	# tmp830, j
	jmp	.L220	#
.L221:
	.loc 1 1158 0 discriminator 2
	movl	-36(%rbp), %eax	# list0idx_1, tmp831
	movl	-56(%rbp), %edx	# j, tmp832
	subl	%eax, %edx	# tmp831, D.14766
	movl	%edx, %eax	# D.14766, D.14766
	cltq
	leaq	0(,%rax,8), %rdx	#, D.14768
	movq	-24(%rbp), %rax	# fs_list1, tmp833
	addq	%rax, %rdx	# tmp833, D.14767
	movl	-56(%rbp), %eax	# j, tmp834
	cltq
	leaq	0(,%rax,8), %rcx	#, D.14768
	movq	-32(%rbp), %rax	# fs_list0, tmp835
	addq	%rcx, %rax	# D.14768, D.14767
	movq	(%rax), %rax	# *_516, D.14769
	movq	%rax, (%rdx)	# D.14769, *_513
	.loc 1 1156 0 discriminator 2
	addl	$1, -56(%rbp)	#, j
.L220:
	.loc 1 1156 0 is_stmt 0 discriminator 1
	movl	-56(%rbp), %eax	# j, tmp836
	cmpl	-48(%rbp), %eax	# list0idx, tmp836
	jl	.L221	#,
	.loc 1 1164 0 is_stmt 1
	movl	$0, listXsize(%rip)	#, listXsize
	.loc 1 1165 0
	movl	$0, listXsize+4(%rip)	#, listXsize
	.loc 1 1166 0
	movq	listX(%rip), %rcx	# listX, D.14771
	movl	-48(%rbp), %edx	# list0idx, tmp837
	movq	-32(%rbp), %rsi	# fs_list0, tmp838
	movl	-88(%rbp), %eax	# currPicStructure, tmp839
	movl	$0, %r9d	#,
	movl	$listXsize, %r8d	#,
	movl	%eax, %edi	# tmp839,
	call	gen_pic_list_from_frame_list	#
	.loc 1 1167 0
	movq	listX+8(%rip), %rcx	# listX, D.14771
	movl	-48(%rbp), %edx	# list0idx, tmp840
	movq	-24(%rbp), %rsi	# fs_list1, tmp841
	movl	-88(%rbp), %eax	# currPicStructure, tmp842
	movl	$0, %r9d	#,
	movl	$listXsize+4, %r8d	#,
	movl	%eax, %edi	# tmp842,
	call	gen_pic_list_from_frame_list	#
	.loc 1 1173 0
	movl	$0, -60(%rbp)	#, i
	jmp	.L222	#
.L225:
	.loc 1 1175 0
	movl	-44(%rbp), %eax	# listltidx, listltidx.39
	leal	1(%rax), %edx	#, tmp843
	movl	%edx, -44(%rbp)	# tmp843, listltidx
	cltq
	leaq	0(,%rax,8), %rdx	#, D.14768
	movq	-16(%rbp), %rax	# fs_listlt, tmp844
	addq	%rax, %rdx	# tmp844, D.14767
	movq	dpb+16(%rip), %rax	# dpb.fs_ltref, D.14767
	movl	-60(%rbp), %ecx	# i, D.14768
	salq	$3, %rcx	#, D.14768
	addq	%rcx, %rax	# D.14768, D.14767
	movq	(%rax), %rax	# *_531, D.14769
	movq	%rax, (%rdx)	# D.14769, *_527
	.loc 1 1176 0
	movq	dpb+16(%rip), %rax	# dpb.fs_ltref, D.14767
	movl	-60(%rbp), %edx	# i, D.14768
	salq	$3, %rdx	#, D.14768
	addq	%rdx, %rax	# D.14768, D.14767
	movq	(%rax), %rax	# *_536, D.14769
	movl	8(%rax), %eax	# _537->is_long_term, D.14766
	andl	$1, %eax	#, D.14766
	testl	%eax, %eax	# D.14766
	je	.L223	#,
	.loc 1 1178 0
	movq	dpb+16(%rip), %rax	# dpb.fs_ltref, D.14767
	movl	-60(%rbp), %edx	# i, D.14768
	salq	$3, %rdx	#, D.14768
	addq	%rdx, %rax	# D.14768, D.14767
	movq	(%rax), %rax	# *_543, D.14769
	movq	48(%rax), %rax	# _544->top_field, D.14770
	movq	dpb+16(%rip), %rdx	# dpb.fs_ltref, D.14767
	movl	-60(%rbp), %ecx	# i, D.14768
	salq	$3, %rcx	#, D.14768
	addq	%rcx, %rdx	# D.14768, D.14767
	movq	(%rdx), %rdx	# *_549, D.14769
	movq	48(%rdx), %rdx	# _550->top_field, D.14770
	movl	6372(%rdx), %edx	# _551->long_term_frame_idx, D.14766
	leal	(%rdx,%rdx), %ecx	#, D.14766
	movl	-68(%rbp), %edx	# add_top, tmp845
	addl	%ecx, %edx	# D.14766, D.14766
	movl	%edx, 6368(%rax)	# D.14766, _545->long_term_pic_num
.L223:
	.loc 1 1180 0
	movq	dpb+16(%rip), %rax	# dpb.fs_ltref, D.14767
	movl	-60(%rbp), %edx	# i, D.14768
	salq	$3, %rdx	#, D.14768
	addq	%rdx, %rax	# D.14768, D.14767
	movq	(%rax), %rax	# *_558, D.14769
	movl	8(%rax), %eax	# _559->is_long_term, D.14766
	andl	$2, %eax	#, D.14766
	testl	%eax, %eax	# D.14766
	je	.L224	#,
	.loc 1 1182 0
	movq	dpb+16(%rip), %rax	# dpb.fs_ltref, D.14767
	movl	-60(%rbp), %edx	# i, D.14768
	salq	$3, %rdx	#, D.14768
	addq	%rdx, %rax	# D.14768, D.14767
	movq	(%rax), %rax	# *_565, D.14769
	movq	56(%rax), %rax	# _566->bottom_field, D.14770
	movq	dpb+16(%rip), %rdx	# dpb.fs_ltref, D.14767
	movl	-60(%rbp), %ecx	# i, D.14768
	salq	$3, %rcx	#, D.14768
	addq	%rcx, %rdx	# D.14768, D.14767
	movq	(%rdx), %rdx	# *_571, D.14769
	movq	56(%rdx), %rdx	# _572->bottom_field, D.14770
	movl	6372(%rdx), %edx	# _573->long_term_frame_idx, D.14766
	leal	(%rdx,%rdx), %ecx	#, D.14766
	movl	-64(%rbp), %edx	# add_bottom, tmp846
	addl	%ecx, %edx	# D.14766, D.14766
	movl	%edx, 6368(%rax)	# D.14766, _567->long_term_pic_num
.L224:
	.loc 1 1173 0
	addl	$1, -60(%rbp)	#, i
.L222:
	.loc 1 1173 0 is_stmt 0 discriminator 1
	movl	dpb+36(%rip), %eax	# dpb.ltref_frames_in_buffer, D.14765
	cmpl	-60(%rbp), %eax	# i, D.14765
	ja	.L225	#,
	.loc 1 1186 0 is_stmt 1
	movl	-44(%rbp), %eax	# listltidx, tmp847
	movslq	%eax, %rsi	# tmp847, D.14768
	movq	-16(%rbp), %rax	# fs_listlt, tmp848
	movl	$compare_fs_by_lt_pic_idx_asc, %ecx	#,
	movl	$8, %edx	#,
	movq	%rax, %rdi	# tmp848,
	call	qsort	#
	.loc 1 1188 0
	movq	listX(%rip), %rcx	# listX, D.14771
	movl	-44(%rbp), %edx	# listltidx, tmp849
	movq	-16(%rbp), %rsi	# fs_listlt, tmp850
	movl	-88(%rbp), %eax	# currPicStructure, tmp851
	movl	$1, %r9d	#,
	movl	$listXsize, %r8d	#,
	movl	%eax, %edi	# tmp851,
	call	gen_pic_list_from_frame_list	#
	.loc 1 1189 0
	movq	listX+8(%rip), %rcx	# listX, D.14771
	movl	-44(%rbp), %edx	# listltidx, tmp852
	movq	-16(%rbp), %rsi	# fs_listlt, tmp853
	movl	-88(%rbp), %eax	# currPicStructure, tmp854
	movl	$1, %r9d	#,
	movl	$listXsize+4, %r8d	#,
	movl	%eax, %edi	# tmp854,
	call	gen_pic_list_from_frame_list	#
	.loc 1 1191 0
	movq	-32(%rbp), %rax	# fs_list0, tmp855
	movq	%rax, %rdi	# tmp855,
	call	free	#
	.loc 1 1192 0
	movq	-24(%rbp), %rax	# fs_list1, tmp856
	movq	%rax, %rdi	# tmp856,
	call	free	#
	.loc 1 1193 0
	movq	-16(%rbp), %rax	# fs_listlt, tmp857
	movq	%rax, %rdi	# tmp857,
	call	free	#
.L194:
	.loc 1 1197 0
	movl	listXsize(%rip), %edx	# listXsize, D.14766
	movl	listXsize+4(%rip), %eax	# listXsize, D.14766
	cmpl	%eax, %edx	# D.14766, D.14766
	jne	.L226	#,
	.loc 1 1197 0 is_stmt 0 discriminator 1
	movl	listXsize(%rip), %eax	# listXsize, D.14766
	cmpl	$1, %eax	#, D.14766
	jle	.L226	#,
	.loc 1 1200 0 is_stmt 1
	movl	$0, -52(%rbp)	#, diff
	.loc 1 1201 0
	movl	$0, -56(%rbp)	#, j
	jmp	.L227	#
.L229:
	.loc 1 1203 0
	movq	listX(%rip), %rax	# listX, D.14771
	movl	-56(%rbp), %edx	# j, tmp858
	movslq	%edx, %rdx	# tmp858, D.14768
	salq	$3, %rdx	#, D.14768
	addq	%rdx, %rax	# D.14768, D.14771
	movq	(%rax), %rdx	# *_768, D.14770
	movq	listX+8(%rip), %rax	# listX, D.14771
	movl	-56(%rbp), %ecx	# j, tmp859
	movslq	%ecx, %rcx	# tmp859, D.14768
	salq	$3, %rcx	#, D.14768
	addq	%rcx, %rax	# D.14768, D.14771
	movq	(%rax), %rax	# *_773, D.14770
	cmpq	%rax, %rdx	# D.14770, D.14770
	je	.L228	#,
	.loc 1 1204 0
	movl	$1, -52(%rbp)	#, diff
.L228:
	.loc 1 1201 0
	addl	$1, -56(%rbp)	#, j
.L227:
	.loc 1 1201 0 is_stmt 0 discriminator 1
	movl	listXsize(%rip), %eax	# listXsize, D.14766
	cmpl	-56(%rbp), %eax	# j, D.14766
	jg	.L229	#,
	.loc 1 1206 0 is_stmt 1
	cmpl	$0, -52(%rbp)	#, diff
	jne	.L226	#,
	.loc 1 1208 0
	movq	listX+8(%rip), %rax	# listX, D.14771
	movq	(%rax), %rax	# *_777, tmp860
	movq	%rax, -8(%rbp)	# tmp860, tmp_s
	.loc 1 1209 0
	movq	listX+8(%rip), %rax	# listX, D.14771
	movq	listX+8(%rip), %rdx	# listX, D.14771
	movq	8(%rdx), %rdx	# MEM[(struct StorablePicture * *)_780 + 8B], D.14770
	movq	%rdx, (%rax)	# D.14770, *_779
	.loc 1 1210 0
	movq	listX+8(%rip), %rax	# listX, D.14771
	leaq	8(%rax), %rdx	#, D.14771
	movq	-8(%rbp), %rax	# tmp_s, tmp861
	movq	%rax, (%rdx)	# tmp861, *_783
.L226:
	.loc 1 1214 0
	movq	img(%rip), %rax	# img, img.40
	movl	72000(%rax), %edx	# img.40_784->num_ref_idx_l0_active, D.14766
	movl	listXsize(%rip), %eax	# listXsize, D.14766
	cmpl	%eax, %edx	# D.14766, D.14766
	cmovle	%edx, %eax	# D.14766,, D.14766
	movl	%eax, listXsize(%rip)	# D.14766, listXsize
	.loc 1 1215 0
	movq	img(%rip), %rax	# img, img.41
	movl	72004(%rax), %edx	# img.41_788->num_ref_idx_l1_active, D.14766
	movl	listXsize+4(%rip), %eax	# listXsize, D.14766
	cmpl	%eax, %edx	# D.14766, D.14766
	cmovle	%edx, %eax	# D.14766,, D.14766
	movl	%eax, listXsize+4(%rip)	# D.14766, listXsize
	.loc 1 1218 0
	movl	listXsize(%rip), %eax	# listXsize, D.14766
	movl	%eax, -60(%rbp)	# D.14766, i
	jmp	.L230	#
.L231:
	.loc 1 1220 0 discriminator 2
	movq	listX(%rip), %rax	# listX, D.14771
	movl	-60(%rbp), %edx	# i, D.14768
	salq	$3, %rdx	#, D.14768
	addq	%rdx, %rax	# D.14768, D.14771
	movq	$0, (%rax)	#, *_797
	.loc 1 1218 0 discriminator 2
	addl	$1, -60(%rbp)	#, i
.L230:
	.loc 1 1218 0 is_stmt 0 discriminator 1
	cmpl	$32, -60(%rbp)	#, i
	jbe	.L231	#,
	.loc 1 1222 0 is_stmt 1
	movl	listXsize+4(%rip), %eax	# listXsize, D.14766
	movl	%eax, -60(%rbp)	# D.14766, i
	jmp	.L232	#
.L233:
	.loc 1 1224 0 discriminator 2
	movq	listX+8(%rip), %rax	# listX, D.14771
	movl	-60(%rbp), %edx	# i, D.14768
	salq	$3, %rdx	#, D.14768
	addq	%rdx, %rax	# D.14768, D.14771
	movq	$0, (%rax)	#, *_804
	.loc 1 1222 0 discriminator 2
	addl	$1, -60(%rbp)	#, i
.L232:
	.loc 1 1222 0 is_stmt 0 discriminator 1
	cmpl	$32, -60(%rbp)	#, i
	jbe	.L233	#,
.L156:
	.loc 1 1226 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	init_lists, .-init_lists
	.globl	init_mbaff_lists
	.type	init_mbaff_lists, @function
init_mbaff_lists:
.LFB24:
	.loc 1 1240 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 1244 0
	movl	$2, -4(%rbp)	#, i
	jmp	.L235	#
.L238:
	.loc 1 1246 0
	movl	$0, -8(%rbp)	#, j
	jmp	.L236	#
.L237:
	.loc 1 1248 0 discriminator 2
	movl	-4(%rbp), %eax	# i, tmp156
	cltq
	movq	listX(,%rax,8), %rax	# listX, D.14776
	movl	-8(%rbp), %edx	# j, D.14777
	salq	$3, %rdx	#, D.14777
	addq	%rdx, %rax	# D.14777, D.14776
	movq	$0, (%rax)	#, *_10
	.loc 1 1246 0 discriminator 2
	addl	$1, -8(%rbp)	#, j
.L236:
	.loc 1 1246 0 is_stmt 0 discriminator 1
	cmpl	$32, -8(%rbp)	#, j
	jbe	.L237	#,
	.loc 1 1250 0 is_stmt 1
	movl	-4(%rbp), %eax	# i, tmp158
	cltq
	movl	$0, listXsize(,%rax,4)	#, listXsize
	.loc 1 1244 0
	addl	$1, -4(%rbp)	#, i
.L235:
	.loc 1 1244 0 is_stmt 0 discriminator 1
	cmpl	$5, -4(%rbp)	#, i
	jle	.L238	#,
	.loc 1 1253 0 is_stmt 1
	movl	$0, -4(%rbp)	#, i
	jmp	.L239	#
.L240:
	.loc 1 1255 0 discriminator 2
	movq	listX+16(%rip), %rax	# listX, D.14776
	movl	-4(%rbp), %edx	# i, tmp159
	movslq	%edx, %rdx	# tmp159, D.14777
	salq	$4, %rdx	#, D.14777
	addq	%rax, %rdx	# D.14776, D.14776
	movq	listX(%rip), %rax	# listX, D.14776
	movl	-4(%rbp), %ecx	# i, tmp160
	movslq	%ecx, %rcx	# tmp160, D.14777
	salq	$3, %rcx	#, D.14777
	addq	%rcx, %rax	# D.14777, D.14776
	movq	(%rax), %rax	# *_22, D.14779
	movq	6528(%rax), %rax	# _23->top_field, D.14780
	movq	%rax, (%rdx)	# D.14780, *_18
	.loc 1 1256 0 discriminator 2
	movq	listX+16(%rip), %rax	# listX, D.14776
	movl	-4(%rbp), %edx	# i, tmp161
	movslq	%edx, %rdx	# tmp161, D.14781
	salq	$4, %rdx	#, D.14781
	addq	$8, %rdx	#, D.14781
	addq	%rax, %rdx	# D.14776, D.14776
	movq	listX(%rip), %rax	# listX, D.14776
	movl	-4(%rbp), %ecx	# i, tmp162
	movslq	%ecx, %rcx	# tmp162, D.14777
	salq	$3, %rcx	#, D.14777
	addq	%rcx, %rax	# D.14777, D.14776
	movq	(%rax), %rax	# *_33, D.14779
	movq	6536(%rax), %rax	# _34->bottom_field, D.14780
	movq	%rax, (%rdx)	# D.14780, *_29
	.loc 1 1257 0 discriminator 2
	movq	listX+32(%rip), %rax	# listX, D.14776
	movl	-4(%rbp), %edx	# i, tmp163
	movslq	%edx, %rdx	# tmp163, D.14777
	salq	$4, %rdx	#, D.14777
	addq	%rax, %rdx	# D.14776, D.14776
	movq	listX(%rip), %rax	# listX, D.14776
	movl	-4(%rbp), %ecx	# i, tmp164
	movslq	%ecx, %rcx	# tmp164, D.14777
	salq	$3, %rcx	#, D.14777
	addq	%rcx, %rax	# D.14777, D.14776
	movq	(%rax), %rax	# *_43, D.14779
	movq	6536(%rax), %rax	# _44->bottom_field, D.14780
	movq	%rax, (%rdx)	# D.14780, *_39
	.loc 1 1258 0 discriminator 2
	movq	listX+32(%rip), %rax	# listX, D.14776
	movl	-4(%rbp), %edx	# i, tmp165
	movslq	%edx, %rdx	# tmp165, D.14781
	salq	$4, %rdx	#, D.14781
	addq	$8, %rdx	#, D.14781
	addq	%rax, %rdx	# D.14776, D.14776
	movq	listX(%rip), %rax	# listX, D.14776
	movl	-4(%rbp), %ecx	# i, tmp166
	movslq	%ecx, %rcx	# tmp166, D.14777
	salq	$3, %rcx	#, D.14777
	addq	%rcx, %rax	# D.14777, D.14776
	movq	(%rax), %rax	# *_54, D.14779
	movq	6528(%rax), %rax	# _55->top_field, D.14780
	movq	%rax, (%rdx)	# D.14780, *_50
	.loc 1 1253 0 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L239:
	.loc 1 1253 0 is_stmt 0 discriminator 1
	movl	listXsize(%rip), %eax	# listXsize, D.14778
	cmpl	-4(%rbp), %eax	# i, D.14778
	jg	.L240	#,
	.loc 1 1260 0 is_stmt 1
	movl	listXsize(%rip), %eax	# listXsize, D.14778
	addl	%eax, %eax	# D.14778
	movl	%eax, listXsize+16(%rip)	# D.14778, listXsize
	movl	listXsize+16(%rip), %eax	# listXsize, D.14778
	movl	%eax, listXsize+8(%rip)	# D.14778, listXsize
	.loc 1 1262 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L241	#
.L242:
	.loc 1 1264 0 discriminator 2
	movq	listX+24(%rip), %rax	# listX, D.14776
	movl	-4(%rbp), %edx	# i, tmp167
	movslq	%edx, %rdx	# tmp167, D.14777
	salq	$4, %rdx	#, D.14777
	addq	%rax, %rdx	# D.14776, D.14776
	movq	listX+8(%rip), %rax	# listX, D.14776
	movl	-4(%rbp), %ecx	# i, tmp168
	movslq	%ecx, %rcx	# tmp168, D.14777
	salq	$3, %rcx	#, D.14777
	addq	%rcx, %rax	# D.14777, D.14776
	movq	(%rax), %rax	# *_70, D.14779
	movq	6528(%rax), %rax	# _71->top_field, D.14780
	movq	%rax, (%rdx)	# D.14780, *_66
	.loc 1 1265 0 discriminator 2
	movq	listX+24(%rip), %rax	# listX, D.14776
	movl	-4(%rbp), %edx	# i, tmp169
	movslq	%edx, %rdx	# tmp169, D.14781
	salq	$4, %rdx	#, D.14781
	addq	$8, %rdx	#, D.14781
	addq	%rax, %rdx	# D.14776, D.14776
	movq	listX+8(%rip), %rax	# listX, D.14776
	movl	-4(%rbp), %ecx	# i, tmp170
	movslq	%ecx, %rcx	# tmp170, D.14777
	salq	$3, %rcx	#, D.14777
	addq	%rcx, %rax	# D.14777, D.14776
	movq	(%rax), %rax	# *_81, D.14779
	movq	6536(%rax), %rax	# _82->bottom_field, D.14780
	movq	%rax, (%rdx)	# D.14780, *_77
	.loc 1 1266 0 discriminator 2
	movq	listX+40(%rip), %rax	# listX, D.14776
	movl	-4(%rbp), %edx	# i, tmp171
	movslq	%edx, %rdx	# tmp171, D.14777
	salq	$4, %rdx	#, D.14777
	addq	%rax, %rdx	# D.14776, D.14776
	movq	listX+8(%rip), %rax	# listX, D.14776
	movl	-4(%rbp), %ecx	# i, tmp172
	movslq	%ecx, %rcx	# tmp172, D.14777
	salq	$3, %rcx	#, D.14777
	addq	%rcx, %rax	# D.14777, D.14776
	movq	(%rax), %rax	# *_91, D.14779
	movq	6536(%rax), %rax	# _92->bottom_field, D.14780
	movq	%rax, (%rdx)	# D.14780, *_87
	.loc 1 1267 0 discriminator 2
	movq	listX+40(%rip), %rax	# listX, D.14776
	movl	-4(%rbp), %edx	# i, tmp173
	movslq	%edx, %rdx	# tmp173, D.14781
	salq	$4, %rdx	#, D.14781
	addq	$8, %rdx	#, D.14781
	addq	%rax, %rdx	# D.14776, D.14776
	movq	listX+8(%rip), %rax	# listX, D.14776
	movl	-4(%rbp), %ecx	# i, tmp174
	movslq	%ecx, %rcx	# tmp174, D.14777
	salq	$3, %rcx	#, D.14777
	addq	%rcx, %rax	# D.14777, D.14776
	movq	(%rax), %rax	# *_102, D.14779
	movq	6528(%rax), %rax	# _103->top_field, D.14780
	movq	%rax, (%rdx)	# D.14780, *_98
	.loc 1 1262 0 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L241:
	.loc 1 1262 0 is_stmt 0 discriminator 1
	movl	listXsize+4(%rip), %eax	# listXsize, D.14778
	cmpl	-4(%rbp), %eax	# i, D.14778
	jg	.L242	#,
	.loc 1 1269 0 is_stmt 1
	movl	listXsize+4(%rip), %eax	# listXsize, D.14778
	addl	%eax, %eax	# D.14778
	movl	%eax, listXsize+20(%rip)	# D.14778, listXsize
	movl	listXsize+20(%rip), %eax	# listXsize, D.14778
	movl	%eax, listXsize+12(%rip)	# D.14778, listXsize
	.loc 1 1270 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	init_mbaff_lists, .-init_mbaff_lists
	.type	get_short_term_pic, @function
get_short_term_pic:
.LFB25:
	.loc 1 1280 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)	# picNum, picNum
	.loc 1 1283 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L244	#
.L249:
	.loc 1 1285 0
	movq	img(%rip), %rax	# img, img.42
	movl	28(%rax), %eax	# img.42_5->structure, D.14784
	testl	%eax, %eax	# D.14784
	jne	.L245	#,
	.loc 1 1287 0
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14785
	movl	-4(%rbp), %edx	# i, D.14786
	salq	$3, %rdx	#, D.14786
	addq	%rdx, %rax	# D.14786, D.14785
	movq	(%rax), %rax	# *_10, D.14787
	movl	4(%rax), %eax	# _11->is_reference, D.14784
	cmpl	$3, %eax	#, D.14784
	jne	.L246	#,
	.loc 1 1288 0
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14785
	movl	-4(%rbp), %edx	# i, D.14786
	salq	$3, %rdx	#, D.14786
	addq	%rdx, %rax	# D.14786, D.14785
	movq	(%rax), %rax	# *_16, D.14787
	movq	40(%rax), %rax	# _17->frame, D.14782
	movl	6376(%rax), %eax	# _18->is_long_term, D.14784
	testl	%eax, %eax	# D.14784
	jne	.L246	#,
	.loc 1 1288 0 is_stmt 0 discriminator 1
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14785
	movl	-4(%rbp), %edx	# i, D.14786
	salq	$3, %rdx	#, D.14786
	addq	%rdx, %rax	# D.14786, D.14785
	movq	(%rax), %rax	# *_23, D.14787
	movq	40(%rax), %rax	# _24->frame, D.14782
	movl	6364(%rax), %eax	# _25->pic_num, D.14784
	cmpl	-20(%rbp), %eax	# picNum, D.14784
	jne	.L246	#,
	.loc 1 1289 0 is_stmt 1
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14785
	movl	-4(%rbp), %edx	# i, D.14786
	salq	$3, %rdx	#, D.14786
	addq	%rdx, %rax	# D.14786, D.14785
	movq	(%rax), %rax	# *_31, D.14787
	movq	40(%rax), %rax	# _32->frame, D.14782
	jmp	.L247	#
.L245:
	.loc 1 1293 0
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14785
	movl	-4(%rbp), %edx	# i, D.14786
	salq	$3, %rdx	#, D.14786
	addq	%rdx, %rax	# D.14786, D.14785
	movq	(%rax), %rax	# *_37, D.14787
	movl	4(%rax), %eax	# _38->is_reference, D.14784
	andl	$1, %eax	#, D.14784
	testl	%eax, %eax	# D.14784
	je	.L248	#,
	.loc 1 1294 0
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14785
	movl	-4(%rbp), %edx	# i, D.14786
	salq	$3, %rdx	#, D.14786
	addq	%rdx, %rax	# D.14786, D.14785
	movq	(%rax), %rax	# *_44, D.14787
	movq	48(%rax), %rax	# _45->top_field, D.14782
	movl	6376(%rax), %eax	# _46->is_long_term, D.14784
	testl	%eax, %eax	# D.14784
	jne	.L248	#,
	.loc 1 1294 0 is_stmt 0 discriminator 1
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14785
	movl	-4(%rbp), %edx	# i, D.14786
	salq	$3, %rdx	#, D.14786
	addq	%rdx, %rax	# D.14786, D.14785
	movq	(%rax), %rax	# *_51, D.14787
	movq	48(%rax), %rax	# _52->top_field, D.14782
	movl	6364(%rax), %eax	# _53->pic_num, D.14784
	cmpl	-20(%rbp), %eax	# picNum, D.14784
	jne	.L248	#,
	.loc 1 1295 0 is_stmt 1
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14785
	movl	-4(%rbp), %edx	# i, D.14786
	salq	$3, %rdx	#, D.14786
	addq	%rdx, %rax	# D.14786, D.14785
	movq	(%rax), %rax	# *_58, D.14787
	movq	48(%rax), %rax	# _59->top_field, D.14782
	jmp	.L247	#
.L248:
	.loc 1 1296 0
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14785
	movl	-4(%rbp), %edx	# i, D.14786
	salq	$3, %rdx	#, D.14786
	addq	%rdx, %rax	# D.14786, D.14785
	movq	(%rax), %rax	# *_64, D.14787
	movl	4(%rax), %eax	# _65->is_reference, D.14784
	andl	$2, %eax	#, D.14784
	testl	%eax, %eax	# D.14784
	je	.L246	#,
	.loc 1 1297 0
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14785
	movl	-4(%rbp), %edx	# i, D.14786
	salq	$3, %rdx	#, D.14786
	addq	%rdx, %rax	# D.14786, D.14785
	movq	(%rax), %rax	# *_71, D.14787
	movq	56(%rax), %rax	# _72->bottom_field, D.14782
	movl	6376(%rax), %eax	# _73->is_long_term, D.14784
	testl	%eax, %eax	# D.14784
	jne	.L246	#,
	.loc 1 1297 0 is_stmt 0 discriminator 1
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14785
	movl	-4(%rbp), %edx	# i, D.14786
	salq	$3, %rdx	#, D.14786
	addq	%rdx, %rax	# D.14786, D.14785
	movq	(%rax), %rax	# *_78, D.14787
	movq	56(%rax), %rax	# _79->bottom_field, D.14782
	movl	6364(%rax), %eax	# _80->pic_num, D.14784
	cmpl	-20(%rbp), %eax	# picNum, D.14784
	jne	.L246	#,
	.loc 1 1298 0 is_stmt 1
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14785
	movl	-4(%rbp), %edx	# i, D.14786
	salq	$3, %rdx	#, D.14786
	addq	%rdx, %rax	# D.14786, D.14785
	movq	(%rax), %rax	# *_85, D.14787
	movq	56(%rax), %rax	# _86->bottom_field, D.14782
	jmp	.L247	#
.L246:
	.loc 1 1283 0
	addl	$1, -4(%rbp)	#, i
.L244:
	.loc 1 1283 0 is_stmt 0 discriminator 1
	movl	dpb+32(%rip), %eax	# dpb.ref_frames_in_buffer, D.14783
	cmpl	-4(%rbp), %eax	# i, D.14783
	ja	.L249	#,
	.loc 1 1301 0 is_stmt 1
	movl	$0, %eax	#, D.14782
.L247:
	.loc 1 1302 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	get_short_term_pic, .-get_short_term_pic
	.type	get_long_term_pic, @function
get_long_term_pic:
.LFB26:
	.loc 1 1312 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)	# LongtermPicNum, LongtermPicNum
	.loc 1 1315 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L251	#
.L256:
	.loc 1 1317 0
	movq	img(%rip), %rax	# img, img.43
	movl	28(%rax), %eax	# img.43_5->structure, D.14790
	testl	%eax, %eax	# D.14790
	jne	.L252	#,
	.loc 1 1319 0
	movq	dpb+16(%rip), %rax	# dpb.fs_ltref, D.14791
	movl	-4(%rbp), %edx	# i, D.14792
	salq	$3, %rdx	#, D.14792
	addq	%rdx, %rax	# D.14792, D.14791
	movq	(%rax), %rax	# *_10, D.14793
	movl	4(%rax), %eax	# _11->is_reference, D.14790
	cmpl	$3, %eax	#, D.14790
	jne	.L253	#,
	.loc 1 1320 0
	movq	dpb+16(%rip), %rax	# dpb.fs_ltref, D.14791
	movl	-4(%rbp), %edx	# i, D.14792
	salq	$3, %rdx	#, D.14792
	addq	%rdx, %rax	# D.14792, D.14791
	movq	(%rax), %rax	# *_16, D.14793
	movq	40(%rax), %rax	# _17->frame, D.14788
	movl	6376(%rax), %eax	# _18->is_long_term, D.14790
	testl	%eax, %eax	# D.14790
	je	.L253	#,
	.loc 1 1320 0 is_stmt 0 discriminator 1
	movq	dpb+16(%rip), %rax	# dpb.fs_ltref, D.14791
	movl	-4(%rbp), %edx	# i, D.14792
	salq	$3, %rdx	#, D.14792
	addq	%rdx, %rax	# D.14792, D.14791
	movq	(%rax), %rax	# *_23, D.14793
	movq	40(%rax), %rax	# _24->frame, D.14788
	movl	6368(%rax), %eax	# _25->long_term_pic_num, D.14790
	cmpl	-20(%rbp), %eax	# LongtermPicNum, D.14790
	jne	.L253	#,
	.loc 1 1321 0 is_stmt 1
	movq	dpb+16(%rip), %rax	# dpb.fs_ltref, D.14791
	movl	-4(%rbp), %edx	# i, D.14792
	salq	$3, %rdx	#, D.14792
	addq	%rdx, %rax	# D.14792, D.14791
	movq	(%rax), %rax	# *_31, D.14793
	movq	40(%rax), %rax	# _32->frame, D.14788
	jmp	.L254	#
.L252:
	.loc 1 1325 0
	movq	dpb+16(%rip), %rax	# dpb.fs_ltref, D.14791
	movl	-4(%rbp), %edx	# i, D.14792
	salq	$3, %rdx	#, D.14792
	addq	%rdx, %rax	# D.14792, D.14791
	movq	(%rax), %rax	# *_37, D.14793
	movl	4(%rax), %eax	# _38->is_reference, D.14790
	andl	$1, %eax	#, D.14790
	testl	%eax, %eax	# D.14790
	je	.L255	#,
	.loc 1 1326 0
	movq	dpb+16(%rip), %rax	# dpb.fs_ltref, D.14791
	movl	-4(%rbp), %edx	# i, D.14792
	salq	$3, %rdx	#, D.14792
	addq	%rdx, %rax	# D.14792, D.14791
	movq	(%rax), %rax	# *_44, D.14793
	movq	48(%rax), %rax	# _45->top_field, D.14788
	movl	6376(%rax), %eax	# _46->is_long_term, D.14790
	testl	%eax, %eax	# D.14790
	je	.L255	#,
	.loc 1 1326 0 is_stmt 0 discriminator 1
	movq	dpb+16(%rip), %rax	# dpb.fs_ltref, D.14791
	movl	-4(%rbp), %edx	# i, D.14792
	salq	$3, %rdx	#, D.14792
	addq	%rdx, %rax	# D.14792, D.14791
	movq	(%rax), %rax	# *_51, D.14793
	movq	48(%rax), %rax	# _52->top_field, D.14788
	movl	6368(%rax), %eax	# _53->long_term_pic_num, D.14790
	cmpl	-20(%rbp), %eax	# LongtermPicNum, D.14790
	jne	.L255	#,
	.loc 1 1327 0 is_stmt 1
	movq	dpb+16(%rip), %rax	# dpb.fs_ltref, D.14791
	movl	-4(%rbp), %edx	# i, D.14792
	salq	$3, %rdx	#, D.14792
	addq	%rdx, %rax	# D.14792, D.14791
	movq	(%rax), %rax	# *_58, D.14793
	movq	48(%rax), %rax	# _59->top_field, D.14788
	jmp	.L254	#
.L255:
	.loc 1 1328 0
	movq	dpb+16(%rip), %rax	# dpb.fs_ltref, D.14791
	movl	-4(%rbp), %edx	# i, D.14792
	salq	$3, %rdx	#, D.14792
	addq	%rdx, %rax	# D.14792, D.14791
	movq	(%rax), %rax	# *_64, D.14793
	movl	4(%rax), %eax	# _65->is_reference, D.14790
	andl	$2, %eax	#, D.14790
	testl	%eax, %eax	# D.14790
	je	.L253	#,
	.loc 1 1329 0
	movq	dpb+16(%rip), %rax	# dpb.fs_ltref, D.14791
	movl	-4(%rbp), %edx	# i, D.14792
	salq	$3, %rdx	#, D.14792
	addq	%rdx, %rax	# D.14792, D.14791
	movq	(%rax), %rax	# *_71, D.14793
	movq	56(%rax), %rax	# _72->bottom_field, D.14788
	movl	6376(%rax), %eax	# _73->is_long_term, D.14790
	testl	%eax, %eax	# D.14790
	je	.L253	#,
	.loc 1 1329 0 is_stmt 0 discriminator 1
	movq	dpb+16(%rip), %rax	# dpb.fs_ltref, D.14791
	movl	-4(%rbp), %edx	# i, D.14792
	salq	$3, %rdx	#, D.14792
	addq	%rdx, %rax	# D.14792, D.14791
	movq	(%rax), %rax	# *_78, D.14793
	movq	56(%rax), %rax	# _79->bottom_field, D.14788
	movl	6368(%rax), %eax	# _80->long_term_pic_num, D.14790
	cmpl	-20(%rbp), %eax	# LongtermPicNum, D.14790
	jne	.L253	#,
	.loc 1 1330 0 is_stmt 1
	movq	dpb+16(%rip), %rax	# dpb.fs_ltref, D.14791
	movl	-4(%rbp), %edx	# i, D.14792
	salq	$3, %rdx	#, D.14792
	addq	%rdx, %rax	# D.14792, D.14791
	movq	(%rax), %rax	# *_85, D.14793
	movq	56(%rax), %rax	# _86->bottom_field, D.14788
	jmp	.L254	#
.L253:
	.loc 1 1315 0
	addl	$1, -4(%rbp)	#, i
.L251:
	.loc 1 1315 0 is_stmt 0 discriminator 1
	movl	dpb+36(%rip), %eax	# dpb.ltref_frames_in_buffer, D.14789
	cmpl	-4(%rbp), %eax	# i, D.14789
	ja	.L256	#,
	.loc 1 1333 0 is_stmt 1
	movl	$0, %eax	#, D.14788
.L254:
	.loc 1 1334 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	get_long_term_pic, .-get_long_term_pic
	.type	reorder_short_term, @function
reorder_short_term:
.LFB27:
	.loc 1 1344 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$40, %rsp	#,
	movq	%rdi, -24(%rbp)	# RefPicListX, RefPicListX
	movl	%esi, -28(%rbp)	# num_ref_idx_lX_active_minus1, num_ref_idx_lX_active_minus1
	movl	%edx, -32(%rbp)	# picNumLX, picNumLX
	movq	%rcx, -40(%rbp)	# refIdxLX, refIdxLX
	.loc 1 1349 0
	movl	-32(%rbp), %eax	# picNumLX, tmp96
	movl	%eax, %edi	# tmp96,
	call	get_short_term_pic	#
	movq	%rax, -8(%rbp)	# tmp97, picLX
	.loc 1 1351 0
	movl	-28(%rbp), %eax	# num_ref_idx_lX_active_minus1, tmp101
	addl	$1, %eax	#, tmp100
	movl	%eax, -16(%rbp)	# tmp100, cIdx
	jmp	.L258	#
.L259:
	.loc 1 1352 0 discriminator 2
	movl	-16(%rbp), %eax	# cIdx, tmp102
	cltq
	leaq	0(,%rax,8), %rdx	#, D.14795
	movq	-24(%rbp), %rax	# RefPicListX, tmp103
	addq	%rax, %rdx	# tmp103, D.14796
	movl	-16(%rbp), %eax	# cIdx, tmp104
	cltq
	salq	$3, %rax	#, D.14795
	leaq	-8(%rax), %rcx	#, D.14797
	movq	-24(%rbp), %rax	# RefPicListX, tmp105
	addq	%rcx, %rax	# D.14797, D.14796
	movq	(%rax), %rax	# *_18, D.14798
	movq	%rax, (%rdx)	# D.14798, *_14
	.loc 1 1351 0 discriminator 2
	subl	$1, -16(%rbp)	#, cIdx
.L258:
	.loc 1 1351 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# refIdxLX, tmp106
	movl	(%rax), %eax	# *refIdxLX_9(D), D.14794
	cmpl	-16(%rbp), %eax	# cIdx, D.14794
	jl	.L259	#,
	.loc 1 1354 0 is_stmt 1
	movq	-40(%rbp), %rax	# refIdxLX, tmp107
	movl	(%rax), %eax	# *refIdxLX_9(D), D.14794
	leal	1(%rax), %ecx	#, D.14794
	movq	-40(%rbp), %rdx	# refIdxLX, tmp108
	movl	%ecx, (%rdx)	# D.14794, *refIdxLX_9(D)
	cltq
	leaq	0(,%rax,8), %rdx	#, D.14795
	movq	-24(%rbp), %rax	# RefPicListX, tmp109
	addq	%rax, %rdx	# tmp109, D.14796
	movq	-8(%rbp), %rax	# picLX, tmp110
	movq	%rax, (%rdx)	# tmp110, *_26
	.loc 1 1356 0
	movq	-40(%rbp), %rax	# refIdxLX, tmp111
	movl	(%rax), %eax	# *refIdxLX_9(D), tmp112
	movl	%eax, -12(%rbp)	# tmp112, nIdx
	.loc 1 1358 0
	movq	-40(%rbp), %rax	# refIdxLX, tmp113
	movl	(%rax), %eax	# *refIdxLX_9(D), tmp114
	movl	%eax, -16(%rbp)	# tmp114, cIdx
	jmp	.L260	#
.L263:
	.loc 1 1359 0
	movl	-16(%rbp), %eax	# cIdx, tmp115
	cltq
	leaq	0(,%rax,8), %rdx	#, D.14795
	movq	-24(%rbp), %rax	# RefPicListX, tmp116
	addq	%rdx, %rax	# D.14795, D.14796
	movq	(%rax), %rax	# *_32, D.14798
	testq	%rax, %rax	# D.14798
	je	.L261	#,
	.loc 1 1360 0
	movl	-16(%rbp), %eax	# cIdx, tmp117
	cltq
	leaq	0(,%rax,8), %rdx	#, D.14795
	movq	-24(%rbp), %rax	# RefPicListX, tmp118
	addq	%rdx, %rax	# D.14795, D.14796
	movq	(%rax), %rax	# *_36, D.14798
	movl	6376(%rax), %eax	# _37->is_long_term, D.14794
	testl	%eax, %eax	# D.14794
	jne	.L262	#,
	.loc 1 1360 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# cIdx, tmp119
	cltq
	leaq	0(,%rax,8), %rdx	#, D.14795
	movq	-24(%rbp), %rax	# RefPicListX, tmp120
	addq	%rdx, %rax	# D.14795, D.14796
	movq	(%rax), %rax	# *_41, D.14798
	movl	6364(%rax), %eax	# _42->pic_num, D.14794
	cmpl	-32(%rbp), %eax	# picNumLX, D.14794
	je	.L261	#,
.L262:
	.loc 1 1361 0 is_stmt 1
	movl	-12(%rbp), %eax	# nIdx, nIdx.44
	leal	1(%rax), %edx	#, tmp121
	movl	%edx, -12(%rbp)	# tmp121, nIdx
	cltq
	leaq	0(,%rax,8), %rdx	#, D.14795
	movq	-24(%rbp), %rax	# RefPicListX, tmp122
	addq	%rax, %rdx	# tmp122, D.14796
	movl	-16(%rbp), %eax	# cIdx, tmp123
	cltq
	leaq	0(,%rax,8), %rcx	#, D.14795
	movq	-24(%rbp), %rax	# RefPicListX, tmp124
	addq	%rcx, %rax	# D.14795, D.14796
	movq	(%rax), %rax	# *_51, D.14798
	movq	%rax, (%rdx)	# D.14798, *_48
.L261:
	.loc 1 1358 0
	addl	$1, -16(%rbp)	#, cIdx
.L260:
	.loc 1 1358 0 is_stmt 0 discriminator 1
	movl	-28(%rbp), %eax	# num_ref_idx_lX_active_minus1, tmp125
	addl	$1, %eax	#, D.14794
	cmpl	-16(%rbp), %eax	# cIdx, D.14794
	jge	.L263	#,
	.loc 1 1363 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	reorder_short_term, .-reorder_short_term
	.type	reorder_long_term, @function
reorder_long_term:
.LFB28:
	.loc 1 1374 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$40, %rsp	#,
	movq	%rdi, -24(%rbp)	# RefPicListX, RefPicListX
	movl	%esi, -28(%rbp)	# num_ref_idx_lX_active_minus1, num_ref_idx_lX_active_minus1
	movl	%edx, -32(%rbp)	# LongTermPicNum, LongTermPicNum
	movq	%rcx, -40(%rbp)	# refIdxLX, refIdxLX
	.loc 1 1379 0
	movl	-32(%rbp), %eax	# LongTermPicNum, tmp92
	movl	%eax, %edi	# tmp92,
	call	get_long_term_pic	#
	movq	%rax, -8(%rbp)	# tmp93, picLX
	.loc 1 1381 0
	movl	-28(%rbp), %eax	# num_ref_idx_lX_active_minus1, tmp97
	addl	$1, %eax	#, tmp96
	movl	%eax, -16(%rbp)	# tmp96, cIdx
	jmp	.L265	#
.L266:
	.loc 1 1382 0 discriminator 2
	movl	-16(%rbp), %eax	# cIdx, tmp98
	cltq
	leaq	0(,%rax,8), %rdx	#, D.14800
	movq	-24(%rbp), %rax	# RefPicListX, tmp99
	addq	%rax, %rdx	# tmp99, D.14801
	movl	-16(%rbp), %eax	# cIdx, tmp100
	cltq
	salq	$3, %rax	#, D.14800
	leaq	-8(%rax), %rcx	#, D.14802
	movq	-24(%rbp), %rax	# RefPicListX, tmp101
	addq	%rcx, %rax	# D.14802, D.14801
	movq	(%rax), %rax	# *_18, D.14803
	movq	%rax, (%rdx)	# D.14803, *_14
	.loc 1 1381 0 discriminator 2
	subl	$1, -16(%rbp)	#, cIdx
.L265:
	.loc 1 1381 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# refIdxLX, tmp102
	movl	(%rax), %eax	# *refIdxLX_9(D), D.14799
	cmpl	-16(%rbp), %eax	# cIdx, D.14799
	jl	.L266	#,
	.loc 1 1384 0 is_stmt 1
	movq	-40(%rbp), %rax	# refIdxLX, tmp103
	movl	(%rax), %eax	# *refIdxLX_9(D), D.14799
	leal	1(%rax), %ecx	#, D.14799
	movq	-40(%rbp), %rdx	# refIdxLX, tmp104
	movl	%ecx, (%rdx)	# D.14799, *refIdxLX_9(D)
	cltq
	leaq	0(,%rax,8), %rdx	#, D.14800
	movq	-24(%rbp), %rax	# RefPicListX, tmp105
	addq	%rax, %rdx	# tmp105, D.14801
	movq	-8(%rbp), %rax	# picLX, tmp106
	movq	%rax, (%rdx)	# tmp106, *_26
	.loc 1 1386 0
	movq	-40(%rbp), %rax	# refIdxLX, tmp107
	movl	(%rax), %eax	# *refIdxLX_9(D), tmp108
	movl	%eax, -12(%rbp)	# tmp108, nIdx
	.loc 1 1388 0
	movq	-40(%rbp), %rax	# refIdxLX, tmp109
	movl	(%rax), %eax	# *refIdxLX_9(D), tmp110
	movl	%eax, -16(%rbp)	# tmp110, cIdx
	jmp	.L267	#
.L270:
	.loc 1 1389 0
	movl	-16(%rbp), %eax	# cIdx, tmp111
	cltq
	leaq	0(,%rax,8), %rdx	#, D.14800
	movq	-24(%rbp), %rax	# RefPicListX, tmp112
	addq	%rdx, %rax	# D.14800, D.14801
	movq	(%rax), %rax	# *_32, D.14803
	movl	6376(%rax), %eax	# _33->is_long_term, D.14799
	testl	%eax, %eax	# D.14799
	je	.L268	#,
	.loc 1 1389 0 is_stmt 0 discriminator 1
	movl	-16(%rbp), %eax	# cIdx, tmp113
	cltq
	leaq	0(,%rax,8), %rdx	#, D.14800
	movq	-24(%rbp), %rax	# RefPicListX, tmp114
	addq	%rdx, %rax	# D.14800, D.14801
	movq	(%rax), %rax	# *_37, D.14803
	movl	6368(%rax), %eax	# _38->long_term_pic_num, D.14799
	cmpl	-32(%rbp), %eax	# LongTermPicNum, D.14799
	je	.L269	#,
.L268:
	.loc 1 1390 0 is_stmt 1
	movl	-12(%rbp), %eax	# nIdx, nIdx.45
	leal	1(%rax), %edx	#, tmp115
	movl	%edx, -12(%rbp)	# tmp115, nIdx
	cltq
	leaq	0(,%rax,8), %rdx	#, D.14800
	movq	-24(%rbp), %rax	# RefPicListX, tmp116
	addq	%rax, %rdx	# tmp116, D.14801
	movl	-16(%rbp), %eax	# cIdx, tmp117
	cltq
	leaq	0(,%rax,8), %rcx	#, D.14800
	movq	-24(%rbp), %rax	# RefPicListX, tmp118
	addq	%rcx, %rax	# D.14800, D.14801
	movq	(%rax), %rax	# *_47, D.14803
	movq	%rax, (%rdx)	# D.14803, *_44
.L269:
	.loc 1 1388 0
	addl	$1, -16(%rbp)	#, cIdx
.L267:
	.loc 1 1388 0 is_stmt 0 discriminator 1
	movl	-28(%rbp), %eax	# num_ref_idx_lX_active_minus1, tmp119
	addl	$1, %eax	#, D.14799
	cmpl	-16(%rbp), %eax	# cIdx, D.14799
	jge	.L270	#,
	.loc 1 1391 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	reorder_long_term, .-reorder_long_term
	.section	.rodata
	.align 8
.LC12:
	.string	"Invalid remapping_of_pic_nums_idc command"
	.text
	.globl	reorder_ref_pic_list
	.type	reorder_ref_pic_list, @function
reorder_ref_pic_list:
.LFB29:
	.loc 1 1402 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -40(%rbp)	# list, list
	movq	%rsi, -48(%rbp)	# list_size, list_size
	movl	%edx, -52(%rbp)	# num_ref_idx_lX_active_minus1, num_ref_idx_lX_active_minus1
	movq	%rcx, -64(%rbp)	# remapping_of_pic_nums_idc, remapping_of_pic_nums_idc
	movq	%r8, -72(%rbp)	# abs_diff_pic_num_minus1, abs_diff_pic_num_minus1
	movq	%r9, -80(%rbp)	# long_term_pic_idx, long_term_pic_idx
	.loc 1 1406 0
	movl	$0, -32(%rbp)	#, refIdxLX
	.loc 1 1407 0
	movl	log2_max_frame_num_minus4(%rip), %eax	# log2_max_frame_num_minus4, log2_max_frame_num_minus4.46
	addl	$4, %eax	#, D.14804
	movl	$1, %edx	#, tmp125
	movl	%eax, %ecx	# D.14805, tmp192
	sall	%cl, %edx	# tmp192, tmp126
	movl	%edx, %eax	# tmp126, tmp126
	movl	%eax, -4(%rbp)	# tmp126, MaxFrameNum
	.loc 1 1409 0
	movq	img(%rip), %rax	# img, img.47
	movl	28(%rax), %eax	# img.47_13->structure, D.14805
	testl	%eax, %eax	# D.14805
	jne	.L272	#,
	.loc 1 1411 0
	movl	-4(%rbp), %eax	# MaxFrameNum, tmp127
	movl	%eax, -24(%rbp)	# tmp127, maxPicNum
	.loc 1 1412 0
	movq	img(%rip), %rax	# img, img.48
	movl	72464(%rax), %eax	# img.48_16->frame_num, D.14804
	movl	%eax, -20(%rbp)	# D.14804, currPicNum
	jmp	.L273	#
.L272:
	.loc 1 1416 0
	movl	-4(%rbp), %eax	# MaxFrameNum, tmp131
	addl	%eax, %eax	# tmp130
	movl	%eax, -24(%rbp)	# tmp130, maxPicNum
	.loc 1 1417 0
	movq	img(%rip), %rax	# img, img.49
	movl	72464(%rax), %eax	# img.49_20->frame_num, D.14804
	addl	%eax, %eax	# D.14804
	addl	$1, %eax	#, D.14804
	movl	%eax, -20(%rbp)	# D.14804, currPicNum
.L273:
	.loc 1 1420 0
	movl	-20(%rbp), %eax	# currPicNum, tmp132
	movl	%eax, -12(%rbp)	# tmp132, picNumLXPred
	.loc 1 1422 0
	movl	$0, -28(%rbp)	#, i
	jmp	.L274	#
.L285:
	.loc 1 1424 0
	movl	-28(%rbp), %eax	# i, tmp133
	cltq
	leaq	0(,%rax,4), %rdx	#, D.14806
	movq	-64(%rbp), %rax	# remapping_of_pic_nums_idc, tmp134
	addq	%rdx, %rax	# D.14806, D.14807
	movl	(%rax), %eax	# *_34, D.14805
	cmpl	$3, %eax	#, D.14805
	jle	.L275	#,
	.loc 1 1425 0
	movl	$500, %esi	#,
	movl	$.LC12, %edi	#,
	call	error	#
.L275:
	.loc 1 1427 0
	movl	-28(%rbp), %eax	# i, tmp135
	cltq
	leaq	0(,%rax,4), %rdx	#, D.14806
	movq	-64(%rbp), %rax	# remapping_of_pic_nums_idc, tmp136
	addq	%rdx, %rax	# D.14806, D.14807
	movl	(%rax), %eax	# *_38, D.14805
	cmpl	$1, %eax	#, D.14805
	jg	.L276	#,
	.loc 1 1429 0
	movl	-28(%rbp), %eax	# i, tmp137
	cltq
	leaq	0(,%rax,4), %rdx	#, D.14806
	movq	-64(%rbp), %rax	# remapping_of_pic_nums_idc, tmp138
	addq	%rdx, %rax	# D.14806, D.14807
	movl	(%rax), %eax	# *_42, D.14805
	testl	%eax, %eax	# D.14805
	jne	.L277	#,
	.loc 1 1431 0
	movl	-28(%rbp), %eax	# i, tmp139
	cltq
	leaq	0(,%rax,4), %rdx	#, D.14806
	movq	-72(%rbp), %rax	# abs_diff_pic_num_minus1, tmp140
	addq	%rdx, %rax	# D.14806, D.14807
	movl	(%rax), %eax	# *_47, D.14805
	notl	%eax	# D.14805
	movl	%eax, %edx	# D.14805, D.14805
	movl	-12(%rbp), %eax	# picNumLXPred, tmp141
	addl	%edx, %eax	# D.14805, D.14805
	testl	%eax, %eax	# D.14805
	jns	.L278	#,
	.loc 1 1432 0
	movl	-28(%rbp), %eax	# i, tmp142
	cltq
	leaq	0(,%rax,4), %rdx	#, D.14806
	movq	-72(%rbp), %rax	# abs_diff_pic_num_minus1, tmp143
	addq	%rdx, %rax	# D.14806, D.14807
	movl	(%rax), %eax	# *_53, D.14805
	notl	%eax	# D.14805
	movl	%eax, %edx	# D.14805, D.14805
	movl	-12(%rbp), %eax	# picNumLXPred, tmp144
	addl	%eax, %edx	# tmp144, D.14805
	movl	-24(%rbp), %eax	# maxPicNum, tmp148
	addl	%edx, %eax	# D.14805, tmp147
	movl	%eax, -16(%rbp)	# tmp147, picNumLXNoWrap
	jmp	.L280	#
.L278:
	.loc 1 1434 0
	movl	-28(%rbp), %eax	# i, tmp149
	cltq
	leaq	0(,%rax,4), %rdx	#, D.14806
	movq	-72(%rbp), %rax	# abs_diff_pic_num_minus1, tmp150
	addq	%rdx, %rax	# D.14806, D.14807
	movl	(%rax), %eax	# *_60, D.14805
	notl	%eax	# D.14805
	movl	%eax, %edx	# D.14805, D.14805
	movl	-12(%rbp), %eax	# picNumLXPred, tmp154
	addl	%edx, %eax	# D.14805, tmp153
	movl	%eax, -16(%rbp)	# tmp153, picNumLXNoWrap
	jmp	.L280	#
.L277:
	.loc 1 1438 0
	movl	-28(%rbp), %eax	# i, tmp155
	cltq
	leaq	0(,%rax,4), %rdx	#, D.14806
	movq	-72(%rbp), %rax	# abs_diff_pic_num_minus1, tmp156
	addq	%rdx, %rax	# D.14806, D.14807
	movl	(%rax), %eax	# *_66, D.14805
	leal	1(%rax), %edx	#, D.14805
	movl	-12(%rbp), %eax	# picNumLXPred, tmp157
	addl	%edx, %eax	# D.14805, D.14805
	cmpl	-24(%rbp), %eax	# maxPicNum, D.14805
	jl	.L281	#,
	.loc 1 1439 0
	movl	-28(%rbp), %eax	# i, tmp158
	cltq
	leaq	0(,%rax,4), %rdx	#, D.14806
	movq	-72(%rbp), %rax	# abs_diff_pic_num_minus1, tmp159
	addq	%rdx, %rax	# D.14806, D.14807
	movl	(%rax), %eax	# *_72, D.14805
	leal	1(%rax), %edx	#, D.14805
	movl	-12(%rbp), %eax	# picNumLXPred, tmp160
	addl	%edx, %eax	# D.14805, D.14805
	subl	-24(%rbp), %eax	# maxPicNum, tmp162
	movl	%eax, -16(%rbp)	# tmp162, picNumLXNoWrap
	jmp	.L280	#
.L281:
	.loc 1 1441 0
	movl	-28(%rbp), %eax	# i, tmp163
	cltq
	leaq	0(,%rax,4), %rdx	#, D.14806
	movq	-72(%rbp), %rax	# abs_diff_pic_num_minus1, tmp164
	addq	%rdx, %rax	# D.14806, D.14807
	movl	(%rax), %eax	# *_79, D.14805
	leal	1(%rax), %edx	#, D.14805
	movl	-12(%rbp), %eax	# picNumLXPred, tmp168
	addl	%edx, %eax	# D.14805, tmp167
	movl	%eax, -16(%rbp)	# tmp167, picNumLXNoWrap
.L280:
	.loc 1 1443 0
	movl	-16(%rbp), %eax	# picNumLXNoWrap, tmp169
	movl	%eax, -12(%rbp)	# tmp169, picNumLXPred
	.loc 1 1445 0
	movl	-16(%rbp), %eax	# picNumLXNoWrap, tmp170
	cmpl	-20(%rbp), %eax	# currPicNum, tmp170
	jle	.L282	#,
	.loc 1 1446 0
	movl	-24(%rbp), %eax	# maxPicNum, tmp175
	movl	-16(%rbp), %edx	# picNumLXNoWrap, tmp176
	subl	%eax, %edx	# tmp175, tmp174
	movl	%edx, %eax	# tmp174, tmp174
	movl	%eax, -8(%rbp)	# tmp174, picNumLX
	jmp	.L283	#
.L282:
	.loc 1 1448 0
	movl	-16(%rbp), %eax	# picNumLXNoWrap, tmp177
	movl	%eax, -8(%rbp)	# tmp177, picNumLX
.L283:
	.loc 1 1450 0 discriminator 2
	leaq	-32(%rbp), %rcx	#, tmp178
	movl	-8(%rbp), %edx	# picNumLX, tmp179
	movl	-52(%rbp), %esi	# num_ref_idx_lX_active_minus1, tmp180
	movq	-40(%rbp), %rax	# list, tmp181
	movq	%rax, %rdi	# tmp181,
	call	reorder_short_term	#
	jmp	.L284	#
.L276:
	.loc 1 1454 0
	movl	-28(%rbp), %eax	# i, tmp182
	cltq
	leaq	0(,%rax,4), %rdx	#, D.14806
	movq	-80(%rbp), %rax	# long_term_pic_idx, tmp183
	addq	%rdx, %rax	# D.14806, D.14807
	movl	(%rax), %edx	# *_91, D.14805
	leaq	-32(%rbp), %rcx	#, tmp184
	movl	-52(%rbp), %esi	# num_ref_idx_lX_active_minus1, tmp185
	movq	-40(%rbp), %rax	# list, tmp186
	movq	%rax, %rdi	# tmp186,
	call	reorder_long_term	#
.L284:
	.loc 1 1422 0
	addl	$1, -28(%rbp)	#, i
.L274:
	.loc 1 1422 0 is_stmt 0 discriminator 1
	movl	-28(%rbp), %eax	# i, tmp187
	cltq
	leaq	0(,%rax,4), %rdx	#, D.14806
	movq	-64(%rbp), %rax	# remapping_of_pic_nums_idc, tmp188
	addq	%rdx, %rax	# D.14806, D.14807
	movl	(%rax), %eax	# *_30, D.14805
	cmpl	$3, %eax	#, D.14805
	jne	.L285	#,
	.loc 1 1459 0 is_stmt 1
	movl	-52(%rbp), %eax	# num_ref_idx_lX_active_minus1, tmp189
	leal	1(%rax), %edx	#, D.14805
	movq	-48(%rbp), %rax	# list_size, tmp190
	movl	%edx, (%rax)	# D.14805, *list_size_95(D)
	.loc 1 1460 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	reorder_ref_pic_list, .-reorder_ref_pic_list
	.globl	update_ref_list
	.type	update_ref_list, @function
update_ref_list:
.LFB30:
	.loc 1 1472 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 1474 0
	movl	$0, -8(%rbp)	#, i
	movl	$0, -4(%rbp)	#, j
	jmp	.L287	#
.L289:
	.loc 1 1476 0
	movq	dpb(%rip), %rax	# dpb.fs, D.14810
	movl	-8(%rbp), %edx	# i, D.14811
	salq	$3, %rdx	#, D.14811
	addq	%rdx, %rax	# D.14811, D.14810
	movq	(%rax), %rax	# *_11, D.14812
	movq	%rax, %rdi	# D.14812,
	call	is_short_term_reference	#
	testl	%eax, %eax	# D.14813
	je	.L288	#,
	.loc 1 1478 0
	movq	dpb+8(%rip), %rcx	# dpb.fs_ref, D.14810
	movl	-4(%rbp), %eax	# j, j.50
	leal	1(%rax), %edx	#, tmp82
	movl	%edx, -4(%rbp)	# tmp82, j
	movl	%eax, %eax	# j.50, D.14811
	salq	$3, %rax	#, D.14811
	leaq	(%rcx,%rax), %rdx	#, D.14810
	movq	dpb(%rip), %rax	# dpb.fs, D.14810
	movl	-8(%rbp), %ecx	# i, D.14811
	salq	$3, %rcx	#, D.14811
	addq	%rcx, %rax	# D.14811, D.14810
	movq	(%rax), %rax	# *_23, D.14812
	movq	%rax, (%rdx)	# D.14812, *_19
.L288:
	.loc 1 1474 0
	addl	$1, -8(%rbp)	#, i
.L287:
	.loc 1 1474 0 is_stmt 0 discriminator 1
	movl	dpb+28(%rip), %eax	# dpb.used_size, D.14809
	cmpl	-8(%rbp), %eax	# i, D.14809
	ja	.L289	#,
	.loc 1 1482 0 is_stmt 1
	movl	-4(%rbp), %eax	# j, tmp83
	movl	%eax, dpb+32(%rip)	# tmp83, dpb.ref_frames_in_buffer
	.loc 1 1484 0
	jmp	.L290	#
.L291:
	.loc 1 1486 0
	movq	dpb+8(%rip), %rcx	# dpb.fs_ref, D.14810
	movl	-4(%rbp), %eax	# j, j.51
	leal	1(%rax), %edx	#, tmp84
	movl	%edx, -4(%rbp)	# tmp84, j
	movl	%eax, %eax	# j.51, D.14811
	salq	$3, %rax	#, D.14811
	addq	%rcx, %rax	# D.14810, D.14810
	movq	$0, (%rax)	#, *_32
.L290:
	.loc 1 1484 0 discriminator 1
	movl	dpb+24(%rip), %eax	# dpb.size, D.14809
	cmpl	-4(%rbp), %eax	# j, D.14809
	ja	.L291	#,
	.loc 1 1488 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	update_ref_list, .-update_ref_list
	.globl	update_ltref_list
	.type	update_ltref_list, @function
update_ltref_list:
.LFB31:
	.loc 1 1500 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 1502 0
	movl	$0, -8(%rbp)	#, i
	movl	$0, -4(%rbp)	#, j
	jmp	.L293	#
.L295:
	.loc 1 1504 0
	movq	dpb(%rip), %rax	# dpb.fs, D.14815
	movl	-8(%rbp), %edx	# i, D.14816
	salq	$3, %rdx	#, D.14816
	addq	%rdx, %rax	# D.14816, D.14815
	movq	(%rax), %rax	# *_11, D.14817
	movq	%rax, %rdi	# D.14817,
	call	is_long_term_reference	#
	testl	%eax, %eax	# D.14818
	je	.L294	#,
	.loc 1 1506 0
	movq	dpb+16(%rip), %rcx	# dpb.fs_ltref, D.14815
	movl	-4(%rbp), %eax	# j, j.52
	leal	1(%rax), %edx	#, tmp82
	movl	%edx, -4(%rbp)	# tmp82, j
	movl	%eax, %eax	# j.52, D.14816
	salq	$3, %rax	#, D.14816
	leaq	(%rcx,%rax), %rdx	#, D.14815
	movq	dpb(%rip), %rax	# dpb.fs, D.14815
	movl	-8(%rbp), %ecx	# i, D.14816
	salq	$3, %rcx	#, D.14816
	addq	%rcx, %rax	# D.14816, D.14815
	movq	(%rax), %rax	# *_23, D.14817
	movq	%rax, (%rdx)	# D.14817, *_19
.L294:
	.loc 1 1502 0
	addl	$1, -8(%rbp)	#, i
.L293:
	.loc 1 1502 0 is_stmt 0 discriminator 1
	movl	dpb+28(%rip), %eax	# dpb.used_size, D.14814
	cmpl	-8(%rbp), %eax	# i, D.14814
	ja	.L295	#,
	.loc 1 1510 0 is_stmt 1
	movl	-4(%rbp), %eax	# j, tmp83
	movl	%eax, dpb+36(%rip)	# tmp83, dpb.ltref_frames_in_buffer
	.loc 1 1512 0
	jmp	.L296	#
.L297:
	.loc 1 1514 0
	movq	dpb+16(%rip), %rcx	# dpb.fs_ltref, D.14815
	movl	-4(%rbp), %eax	# j, j.53
	leal	1(%rax), %edx	#, tmp84
	movl	%edx, -4(%rbp)	# tmp84, j
	movl	%eax, %eax	# j.53, D.14816
	salq	$3, %rax	#, D.14816
	addq	%rcx, %rax	# D.14815, D.14815
	movq	$0, (%rax)	#, *_32
.L296:
	.loc 1 1512 0 discriminator 1
	movl	dpb+24(%rip), %eax	# dpb.size, D.14814
	cmpl	-4(%rbp), %eax	# j, D.14814
	ja	.L297	#,
	.loc 1 1516 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	update_ltref_list, .-update_ltref_list
	.type	idr_memory_management, @function
idr_memory_management:
.LFB32:
	.loc 1 1526 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# p, p
	.loc 1 1531 0
	movq	img(%rip), %rax	# img, img.54
	movl	72504(%rax), %eax	# img.54_4->no_output_of_prior_pics_flag, D.14819
	testl	%eax, %eax	# D.14819
	je	.L299	#,
	.loc 1 1534 0
	movl	$0, -20(%rbp)	#, i
	jmp	.L300	#
.L301:
	.loc 1 1537 0 discriminator 2
	movq	dpb(%rip), %rax	# dpb.fs, D.14821
	movl	-20(%rbp), %edx	# i, D.14822
	salq	$3, %rdx	#, D.14822
	addq	%rdx, %rax	# D.14822, D.14821
	movq	(%rax), %rax	# *_11, D.14823
	movq	%rax, %rdi	# D.14823,
	call	free_frame_store	#
	.loc 1 1538 0 discriminator 2
	movq	dpb(%rip), %rax	# dpb.fs, D.14821
	movl	-20(%rbp), %edx	# i, D.14822
	salq	$3, %rdx	#, D.14822
	leaq	(%rax,%rdx), %rbx	#, D.14821
	movl	$0, %eax	#,
	call	alloc_frame_store	#
	movq	%rax, (%rbx)	# D.14823, *_16
	.loc 1 1534 0 discriminator 2
	addl	$1, -20(%rbp)	#, i
.L300:
	.loc 1 1534 0 is_stmt 0 discriminator 1
	movl	dpb+28(%rip), %eax	# dpb.used_size, D.14820
	cmpl	-20(%rbp), %eax	# i, D.14820
	ja	.L301	#,
	.loc 1 1540 0 is_stmt 1
	movl	$0, -20(%rbp)	#, i
	jmp	.L302	#
.L303:
	.loc 1 1542 0 discriminator 2
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14821
	movl	-20(%rbp), %edx	# i, D.14822
	salq	$3, %rdx	#, D.14822
	addq	%rdx, %rax	# D.14822, D.14821
	movq	$0, (%rax)	#, *_24
	.loc 1 1540 0 discriminator 2
	addl	$1, -20(%rbp)	#, i
.L302:
	.loc 1 1540 0 is_stmt 0 discriminator 1
	movl	dpb+32(%rip), %eax	# dpb.ref_frames_in_buffer, D.14820
	cmpl	-20(%rbp), %eax	# i, D.14820
	ja	.L303	#,
	.loc 1 1544 0 is_stmt 1
	movl	$0, -20(%rbp)	#, i
	jmp	.L304	#
.L305:
	.loc 1 1546 0 discriminator 2
	movq	dpb+16(%rip), %rax	# dpb.fs_ltref, D.14821
	movl	-20(%rbp), %edx	# i, D.14822
	salq	$3, %rdx	#, D.14822
	addq	%rdx, %rax	# D.14822, D.14821
	movq	$0, (%rax)	#, *_31
	.loc 1 1544 0 discriminator 2
	addl	$1, -20(%rbp)	#, i
.L304:
	.loc 1 1544 0 is_stmt 0 discriminator 1
	movl	dpb+36(%rip), %eax	# dpb.ltref_frames_in_buffer, D.14820
	cmpl	-20(%rbp), %eax	# i, D.14820
	ja	.L305	#,
	.loc 1 1548 0 is_stmt 1
	movl	$0, dpb+28(%rip)	#, dpb.used_size
	jmp	.L306	#
.L299:
	.loc 1 1552 0
	movl	$0, %eax	#,
	call	flush_dpb	#
.L306:
	.loc 1 1554 0
	movq	$0, dpb+56(%rip)	#, dpb.last_picture
	.loc 1 1556 0
	movl	$0, %eax	#,
	call	update_ref_list	#
	.loc 1 1557 0
	movl	$0, %eax	#,
	call	update_ltref_list	#
	.loc 1 1558 0
	movl	$-2147483648, dpb+40(%rip)	#, dpb.last_output_poc
	.loc 1 1560 0
	movq	img(%rip), %rax	# img, img.55
	movl	72508(%rax), %eax	# img.55_33->long_term_reference_flag, D.14819
	testl	%eax, %eax	# D.14819
	je	.L307	#,
	.loc 1 1562 0
	movl	$0, dpb+44(%rip)	#, dpb.max_long_term_pic_idx
	.loc 1 1563 0
	movq	-40(%rbp), %rax	# p, tmp84
	movl	$1, 6376(%rax)	#, p_35(D)->is_long_term
	.loc 1 1564 0
	movq	-40(%rbp), %rax	# p, tmp85
	movl	$0, 6372(%rax)	#, p_35(D)->long_term_frame_idx
	jmp	.L298	#
.L307:
	.loc 1 1568 0
	movl	$-1, dpb+44(%rip)	#, dpb.max_long_term_pic_idx
	.loc 1 1569 0
	movq	-40(%rbp), %rax	# p, tmp86
	movl	$0, 6376(%rax)	#, p_35(D)->is_long_term
.L298:
	.loc 1 1571 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	idr_memory_management, .-idr_memory_management
	.type	sliding_window_memory_management, @function
sliding_window_memory_management:
.LFB33:
	.loc 1 1581 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# p, p
	.loc 1 1586 0
	movl	dpb+32(%rip), %edx	# dpb.ref_frames_in_buffer, D.14824
	movq	active_sps(%rip), %rax	# active_sps, active_sps.56
	movl	1132(%rax), %ecx	# active_sps.56_3->num_ref_frames, D.14824
	movl	dpb+36(%rip), %eax	# dpb.ltref_frames_in_buffer, D.14824
	subl	%eax, %ecx	# D.14824, D.14824
	movl	%ecx, %eax	# D.14824, D.14824
	cmpl	%eax, %edx	# D.14824, D.14824
	jne	.L310	#,
	.loc 1 1588 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L311	#
.L313:
	.loc 1 1590 0
	movq	dpb(%rip), %rax	# dpb.fs, D.14825
	movl	-4(%rbp), %edx	# i, D.14826
	salq	$3, %rdx	#, D.14826
	addq	%rdx, %rax	# D.14826, D.14825
	movq	(%rax), %rax	# *_12, D.14827
	movl	4(%rax), %eax	# _13->is_reference, D.14828
	testl	%eax, %eax	# D.14828
	je	.L312	#,
	.loc 1 1590 0 is_stmt 0 discriminator 1
	movq	dpb(%rip), %rax	# dpb.fs, D.14825
	movl	-4(%rbp), %edx	# i, D.14826
	salq	$3, %rdx	#, D.14826
	addq	%rdx, %rax	# D.14826, D.14825
	movq	(%rax), %rax	# *_18, D.14827
	movl	8(%rax), %eax	# _19->is_long_term, D.14828
	testl	%eax, %eax	# D.14828
	jne	.L312	#,
	.loc 1 1592 0 is_stmt 1
	movq	dpb(%rip), %rax	# dpb.fs, D.14825
	movl	-4(%rbp), %edx	# i, D.14826
	salq	$3, %rdx	#, D.14826
	addq	%rdx, %rax	# D.14826, D.14825
	movq	(%rax), %rax	# *_24, D.14827
	movq	%rax, %rdi	# D.14827,
	call	unmark_for_reference	#
	.loc 1 1593 0
	movl	$0, %eax	#,
	call	update_ref_list	#
	.loc 1 1594 0
	jmp	.L310	#
.L312:
	.loc 1 1588 0
	addl	$1, -4(%rbp)	#, i
.L311:
	.loc 1 1588 0 is_stmt 0 discriminator 1
	movl	dpb+28(%rip), %eax	# dpb.used_size, D.14824
	cmpl	-4(%rbp), %eax	# i, D.14824
	ja	.L313	#,
.L310:
	.loc 1 1599 0 is_stmt 1
	movq	-24(%rbp), %rax	# p, tmp82
	movl	$0, 6376(%rax)	#, p_27(D)->is_long_term
	.loc 1 1600 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	sliding_window_memory_management, .-sliding_window_memory_management
	.type	get_pic_num_x, @function
get_pic_num_x:
.LFB34:
	.loc 1 1609 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# p, p
	movl	%esi, -28(%rbp)	# difference_of_pic_nums_minus1, difference_of_pic_nums_minus1
	.loc 1 1612 0
	movq	-24(%rbp), %rax	# p, tmp67
	movl	(%rax), %eax	# p_2(D)->structure, D.14829
	testl	%eax, %eax	# D.14829
	jne	.L315	#,
	.loc 1 1613 0
	movq	-24(%rbp), %rax	# p, tmp68
	movl	6360(%rax), %eax	# p_2(D)->frame_num, D.14830
	movl	%eax, -4(%rbp)	# D.14830, currPicNum
	jmp	.L316	#
.L315:
	.loc 1 1615 0
	movq	-24(%rbp), %rax	# p, tmp69
	movl	6360(%rax), %eax	# p_2(D)->frame_num, D.14830
	addl	%eax, %eax	# D.14830
	addl	$1, %eax	#, D.14830
	movl	%eax, -4(%rbp)	# D.14830, currPicNum
.L316:
	.loc 1 1617 0
	movl	-28(%rbp), %eax	# difference_of_pic_nums_minus1, tmp70
	notl	%eax	# D.14831
	movl	%eax, %edx	# D.14831, D.14831
	movl	-4(%rbp), %eax	# currPicNum, tmp71
	addl	%edx, %eax	# D.14831, D.14831
	.loc 1 1618 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	get_pic_num_x, .-get_pic_num_x
	.type	mm_unmark_short_term_for_reference, @function
mm_unmark_short_term_for_reference:
.LFB35:
	.loc 1 1628 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# p, p
	movl	%esi, -28(%rbp)	# difference_of_pic_nums_minus1, difference_of_pic_nums_minus1
	.loc 1 1633 0
	movl	-28(%rbp), %edx	# difference_of_pic_nums_minus1, tmp187
	movq	-24(%rbp), %rax	# p, tmp188
	movl	%edx, %esi	# tmp187,
	movq	%rax, %rdi	# tmp188,
	call	get_pic_num_x	#
	movl	%eax, -4(%rbp)	# tmp189, picNumX
	.loc 1 1635 0
	movl	$0, -8(%rbp)	#, i
	jmp	.L319	#
.L326:
	.loc 1 1637 0
	movq	-24(%rbp), %rax	# p, tmp190
	movl	(%rax), %eax	# p_2(D)->structure, D.14833
	testl	%eax, %eax	# D.14833
	jne	.L320	#,
	.loc 1 1639 0
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14834
	movl	-8(%rbp), %edx	# i, D.14835
	salq	$3, %rdx	#, D.14835
	addq	%rdx, %rax	# D.14835, D.14834
	movq	(%rax), %rax	# *_11, D.14836
	movl	4(%rax), %eax	# _12->is_reference, D.14837
	cmpl	$3, %eax	#, D.14837
	jne	.L321	#,
	.loc 1 1639 0 is_stmt 0 discriminator 1
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14834
	movl	-8(%rbp), %edx	# i, D.14835
	salq	$3, %rdx	#, D.14835
	addq	%rdx, %rax	# D.14835, D.14834
	movq	(%rax), %rax	# *_17, D.14836
	movl	8(%rax), %eax	# _18->is_long_term, D.14837
	testl	%eax, %eax	# D.14837
	jne	.L321	#,
	.loc 1 1641 0 is_stmt 1
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14834
	movl	-8(%rbp), %edx	# i, D.14835
	salq	$3, %rdx	#, D.14835
	addq	%rdx, %rax	# D.14835, D.14834
	movq	(%rax), %rax	# *_23, D.14836
	movq	40(%rax), %rax	# _24->frame, D.14838
	movl	6364(%rax), %eax	# _25->pic_num, D.14837
	cmpl	-4(%rbp), %eax	# picNumX, D.14837
	jne	.L321	#,
	.loc 1 1643 0
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14834
	movl	-8(%rbp), %edx	# i, D.14835
	salq	$3, %rdx	#, D.14835
	addq	%rdx, %rax	# D.14835, D.14834
	movq	(%rax), %rax	# *_30, D.14836
	movq	%rax, %rdi	# D.14836,
	call	unmark_for_reference	#
	.loc 1 1644 0
	jmp	.L318	#
.L320:
	.loc 1 1650 0
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14834
	movl	-8(%rbp), %edx	# i, D.14835
	salq	$3, %rdx	#, D.14835
	addq	%rdx, %rax	# D.14835, D.14834
	movq	(%rax), %rax	# *_35, D.14836
	movl	4(%rax), %eax	# _36->is_reference, D.14837
	andl	$1, %eax	#, D.14837
	testl	%eax, %eax	# D.14837
	je	.L323	#,
	.loc 1 1650 0 is_stmt 0 discriminator 1
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14834
	movl	-8(%rbp), %edx	# i, D.14835
	salq	$3, %rdx	#, D.14835
	addq	%rdx, %rax	# D.14835, D.14834
	movq	(%rax), %rax	# *_42, D.14836
	movl	8(%rax), %eax	# _43->is_long_term, D.14837
	andl	$1, %eax	#, D.14837
	testl	%eax, %eax	# D.14837
	jne	.L323	#,
	.loc 1 1652 0 is_stmt 1
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14834
	movl	-8(%rbp), %edx	# i, D.14835
	salq	$3, %rdx	#, D.14835
	addq	%rdx, %rax	# D.14835, D.14834
	movq	(%rax), %rax	# *_49, D.14836
	movq	48(%rax), %rax	# _50->top_field, D.14838
	movl	6364(%rax), %eax	# _51->pic_num, D.14837
	cmpl	-4(%rbp), %eax	# picNumX, D.14837
	jne	.L323	#,
	.loc 1 1654 0
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14834
	movl	-8(%rbp), %edx	# i, D.14835
	salq	$3, %rdx	#, D.14835
	addq	%rdx, %rax	# D.14835, D.14834
	movq	(%rax), %rax	# *_56, D.14836
	movq	48(%rax), %rax	# _57->top_field, D.14838
	movl	$0, 6380(%rax)	#, _58->used_for_reference
	.loc 1 1655 0
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14834
	movl	-8(%rbp), %edx	# i, D.14835
	salq	$3, %rdx	#, D.14835
	addq	%rdx, %rax	# D.14835, D.14834
	movq	(%rax), %rax	# *_62, D.14836
	movq	dpb+8(%rip), %rdx	# dpb.fs_ref, D.14834
	movl	-8(%rbp), %ecx	# i, D.14835
	salq	$3, %rcx	#, D.14835
	addq	%rcx, %rdx	# D.14835, D.14834
	movq	(%rdx), %rdx	# *_67, D.14836
	movl	4(%rdx), %edx	# _68->is_reference, D.14837
	andl	$2, %edx	#, D.14837
	movl	%edx, 4(%rax)	# D.14837, _63->is_reference
	.loc 1 1656 0
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14834
	movl	-8(%rbp), %edx	# i, D.14835
	salq	$3, %rdx	#, D.14835
	addq	%rdx, %rax	# D.14835, D.14834
	movq	(%rax), %rax	# *_74, D.14836
	movl	(%rax), %eax	# _75->is_used, D.14837
	cmpl	$3, %eax	#, D.14837
	jne	.L324	#,
	.loc 1 1658 0
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14834
	movl	-8(%rbp), %edx	# i, D.14835
	salq	$3, %rdx	#, D.14835
	addq	%rdx, %rax	# D.14835, D.14834
	movq	(%rax), %rax	# *_80, D.14836
	movq	40(%rax), %rax	# _81->frame, D.14838
	movl	$0, 6380(%rax)	#, _82->used_for_reference
	.loc 1 1660 0
	jmp	.L318	#
.L324:
	jmp	.L318	#
.L323:
	.loc 1 1663 0
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14834
	movl	-8(%rbp), %edx	# i, D.14835
	salq	$3, %rdx	#, D.14835
	addq	%rdx, %rax	# D.14835, D.14834
	movq	(%rax), %rax	# *_86, D.14836
	movl	4(%rax), %eax	# _87->is_reference, D.14837
	andl	$2, %eax	#, D.14837
	testl	%eax, %eax	# D.14837
	je	.L321	#,
	.loc 1 1663 0 is_stmt 0 discriminator 1
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14834
	movl	-8(%rbp), %edx	# i, D.14835
	salq	$3, %rdx	#, D.14835
	addq	%rdx, %rax	# D.14835, D.14834
	movq	(%rax), %rax	# *_93, D.14836
	movl	8(%rax), %eax	# _94->is_long_term, D.14837
	andl	$2, %eax	#, D.14837
	testl	%eax, %eax	# D.14837
	jne	.L321	#,
	.loc 1 1665 0 is_stmt 1
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14834
	movl	-8(%rbp), %edx	# i, D.14835
	salq	$3, %rdx	#, D.14835
	addq	%rdx, %rax	# D.14835, D.14834
	movq	(%rax), %rax	# *_100, D.14836
	movq	56(%rax), %rax	# _101->bottom_field, D.14838
	movl	6364(%rax), %eax	# _102->pic_num, D.14837
	cmpl	-4(%rbp), %eax	# picNumX, D.14837
	jne	.L321	#,
	.loc 1 1667 0
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14834
	movl	-8(%rbp), %edx	# i, D.14835
	salq	$3, %rdx	#, D.14835
	addq	%rdx, %rax	# D.14835, D.14834
	movq	(%rax), %rax	# *_107, D.14836
	movq	56(%rax), %rax	# _108->bottom_field, D.14838
	movl	$0, 6380(%rax)	#, _109->used_for_reference
	.loc 1 1668 0
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14834
	movl	-8(%rbp), %edx	# i, D.14835
	salq	$3, %rdx	#, D.14835
	addq	%rdx, %rax	# D.14835, D.14834
	movq	(%rax), %rax	# *_113, D.14836
	movq	dpb+8(%rip), %rdx	# dpb.fs_ref, D.14834
	movl	-8(%rbp), %ecx	# i, D.14835
	salq	$3, %rcx	#, D.14835
	addq	%rcx, %rdx	# D.14835, D.14834
	movq	(%rdx), %rdx	# *_118, D.14836
	movl	4(%rdx), %edx	# _119->is_reference, D.14837
	andl	$1, %edx	#, D.14837
	movl	%edx, 4(%rax)	# D.14837, _114->is_reference
	.loc 1 1669 0
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14834
	movl	-8(%rbp), %edx	# i, D.14835
	salq	$3, %rdx	#, D.14835
	addq	%rdx, %rax	# D.14835, D.14834
	movq	(%rax), %rax	# *_125, D.14836
	movl	(%rax), %eax	# _126->is_used, D.14837
	cmpl	$3, %eax	#, D.14837
	jne	.L325	#,
	.loc 1 1671 0
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14834
	movl	-8(%rbp), %edx	# i, D.14835
	salq	$3, %rdx	#, D.14835
	addq	%rdx, %rax	# D.14835, D.14834
	movq	(%rax), %rax	# *_131, D.14836
	movq	40(%rax), %rax	# _132->frame, D.14838
	movl	$0, 6380(%rax)	#, _133->used_for_reference
	.loc 1 1673 0
	jmp	.L318	#
.L325:
	jmp	.L318	#
.L321:
	.loc 1 1635 0
	addl	$1, -8(%rbp)	#, i
.L319:
	.loc 1 1635 0 is_stmt 0 discriminator 1
	movl	dpb+32(%rip), %eax	# dpb.ref_frames_in_buffer, D.14832
	cmpl	-8(%rbp), %eax	# i, D.14832
	ja	.L326	#,
.L318:
	.loc 1 1678 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	mm_unmark_short_term_for_reference, .-mm_unmark_short_term_for_reference
	.type	mm_unmark_long_term_for_reference, @function
mm_unmark_long_term_for_reference:
.LFB36:
	.loc 1 1688 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# p, p
	movl	%esi, -28(%rbp)	# long_term_pic_num, long_term_pic_num
	.loc 1 1690 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L328	#
.L336:
	.loc 1 1692 0
	movq	-24(%rbp), %rax	# p, tmp235
	movl	(%rax), %eax	# p_4(D)->structure, D.14840
	testl	%eax, %eax	# D.14840
	jne	.L329	#,
	.loc 1 1694 0
	movq	dpb+16(%rip), %rax	# dpb.fs_ltref, D.14841
	movl	-4(%rbp), %edx	# i, D.14842
	salq	$3, %rdx	#, D.14842
	addq	%rdx, %rax	# D.14842, D.14841
	movq	(%rax), %rax	# *_9, D.14843
	movl	4(%rax), %eax	# _10->is_reference, D.14844
	cmpl	$3, %eax	#, D.14844
	jne	.L331	#,
	.loc 1 1694 0 is_stmt 0 discriminator 1
	movq	dpb+16(%rip), %rax	# dpb.fs_ltref, D.14841
	movl	-4(%rbp), %edx	# i, D.14842
	salq	$3, %rdx	#, D.14842
	addq	%rdx, %rax	# D.14842, D.14841
	movq	(%rax), %rax	# *_15, D.14843
	movl	8(%rax), %eax	# _16->is_long_term, D.14844
	cmpl	$3, %eax	#, D.14844
	jne	.L331	#,
	.loc 1 1696 0 is_stmt 1
	movq	dpb+16(%rip), %rax	# dpb.fs_ltref, D.14841
	movl	-4(%rbp), %edx	# i, D.14842
	salq	$3, %rdx	#, D.14842
	addq	%rdx, %rax	# D.14842, D.14841
	movq	(%rax), %rax	# *_21, D.14843
	movq	40(%rax), %rax	# _22->frame, D.14845
	movl	6368(%rax), %eax	# _23->long_term_pic_num, D.14844
	cmpl	-28(%rbp), %eax	# long_term_pic_num, D.14844
	jne	.L331	#,
	.loc 1 1698 0
	movq	dpb+16(%rip), %rax	# dpb.fs_ltref, D.14841
	movl	-4(%rbp), %edx	# i, D.14842
	salq	$3, %rdx	#, D.14842
	addq	%rdx, %rax	# D.14842, D.14841
	movq	(%rax), %rax	# *_29, D.14843
	movq	%rax, %rdi	# D.14843,
	call	unmark_for_long_term_reference	#
	jmp	.L331	#
.L329:
	.loc 1 1704 0
	movq	dpb+16(%rip), %rax	# dpb.fs_ltref, D.14841
	movl	-4(%rbp), %edx	# i, D.14842
	salq	$3, %rdx	#, D.14842
	addq	%rdx, %rax	# D.14842, D.14841
	movq	(%rax), %rax	# *_34, D.14843
	movl	4(%rax), %eax	# _35->is_reference, D.14844
	andl	$1, %eax	#, D.14844
	testl	%eax, %eax	# D.14844
	je	.L332	#,
	.loc 1 1704 0 is_stmt 0 discriminator 1
	movq	dpb+16(%rip), %rax	# dpb.fs_ltref, D.14841
	movl	-4(%rbp), %edx	# i, D.14842
	salq	$3, %rdx	#, D.14842
	addq	%rdx, %rax	# D.14842, D.14841
	movq	(%rax), %rax	# *_41, D.14843
	movl	8(%rax), %eax	# _42->is_long_term, D.14844
	andl	$1, %eax	#, D.14844
	testl	%eax, %eax	# D.14844
	je	.L332	#,
	.loc 1 1706 0 is_stmt 1
	movq	dpb+16(%rip), %rax	# dpb.fs_ltref, D.14841
	movl	-4(%rbp), %edx	# i, D.14842
	salq	$3, %rdx	#, D.14842
	addq	%rdx, %rax	# D.14842, D.14841
	movq	(%rax), %rax	# *_48, D.14843
	movq	48(%rax), %rax	# _49->top_field, D.14845
	movl	6368(%rax), %eax	# _50->long_term_pic_num, D.14844
	cmpl	-28(%rbp), %eax	# long_term_pic_num, D.14844
	jne	.L332	#,
	.loc 1 1708 0
	movq	dpb+16(%rip), %rax	# dpb.fs_ltref, D.14841
	movl	-4(%rbp), %edx	# i, D.14842
	salq	$3, %rdx	#, D.14842
	addq	%rdx, %rax	# D.14842, D.14841
	movq	(%rax), %rax	# *_55, D.14843
	movq	48(%rax), %rax	# _56->top_field, D.14845
	movl	$0, 6380(%rax)	#, _57->used_for_reference
	.loc 1 1709 0
	movq	dpb+16(%rip), %rax	# dpb.fs_ltref, D.14841
	movl	-4(%rbp), %edx	# i, D.14842
	salq	$3, %rdx	#, D.14842
	addq	%rdx, %rax	# D.14842, D.14841
	movq	(%rax), %rax	# *_61, D.14843
	movq	48(%rax), %rax	# _62->top_field, D.14845
	movl	$0, 6376(%rax)	#, _63->is_long_term
	.loc 1 1710 0
	movq	dpb+16(%rip), %rax	# dpb.fs_ltref, D.14841
	movl	-4(%rbp), %edx	# i, D.14842
	salq	$3, %rdx	#, D.14842
	addq	%rdx, %rax	# D.14842, D.14841
	movq	(%rax), %rax	# *_67, D.14843
	movq	dpb+16(%rip), %rdx	# dpb.fs_ltref, D.14841
	movl	-4(%rbp), %ecx	# i, D.14842
	salq	$3, %rcx	#, D.14842
	addq	%rcx, %rdx	# D.14842, D.14841
	movq	(%rdx), %rdx	# *_72, D.14843
	movl	4(%rdx), %edx	# _73->is_reference, D.14844
	andl	$2, %edx	#, D.14844
	movl	%edx, 4(%rax)	# D.14844, _68->is_reference
	.loc 1 1711 0
	movq	dpb+16(%rip), %rax	# dpb.fs_ltref, D.14841
	movl	-4(%rbp), %edx	# i, D.14842
	salq	$3, %rdx	#, D.14842
	addq	%rdx, %rax	# D.14842, D.14841
	movq	(%rax), %rax	# *_79, D.14843
	movq	dpb+16(%rip), %rdx	# dpb.fs_ltref, D.14841
	movl	-4(%rbp), %ecx	# i, D.14842
	salq	$3, %rcx	#, D.14842
	addq	%rcx, %rdx	# D.14842, D.14841
	movq	(%rdx), %rdx	# *_84, D.14843
	movl	8(%rdx), %edx	# _85->is_long_term, D.14844
	andl	$2, %edx	#, D.14844
	movl	%edx, 8(%rax)	# D.14844, _80->is_long_term
	.loc 1 1712 0
	movq	dpb+16(%rip), %rax	# dpb.fs_ltref, D.14841
	movl	-4(%rbp), %edx	# i, D.14842
	salq	$3, %rdx	#, D.14842
	addq	%rdx, %rax	# D.14842, D.14841
	movq	(%rax), %rax	# *_91, D.14843
	movl	(%rax), %eax	# _92->is_used, D.14844
	cmpl	$3, %eax	#, D.14844
	jne	.L333	#,
	.loc 1 1714 0
	movq	dpb+16(%rip), %rax	# dpb.fs_ltref, D.14841
	movl	-4(%rbp), %edx	# i, D.14842
	salq	$3, %rdx	#, D.14842
	addq	%rdx, %rax	# D.14842, D.14841
	movq	(%rax), %rax	# *_97, D.14843
	movq	40(%rax), %rax	# _98->frame, D.14845
	movl	$0, 6380(%rax)	#, _99->used_for_reference
	.loc 1 1715 0
	movq	dpb+16(%rip), %rax	# dpb.fs_ltref, D.14841
	movl	-4(%rbp), %edx	# i, D.14842
	salq	$3, %rdx	#, D.14842
	addq	%rdx, %rax	# D.14842, D.14841
	movq	(%rax), %rax	# *_103, D.14843
	movq	40(%rax), %rax	# _104->frame, D.14845
	movl	$0, 6376(%rax)	#, _105->is_long_term
	.loc 1 1717 0
	jmp	.L327	#
.L333:
	jmp	.L327	#
.L332:
	.loc 1 1720 0
	movq	dpb+16(%rip), %rax	# dpb.fs_ltref, D.14841
	movl	-4(%rbp), %edx	# i, D.14842
	salq	$3, %rdx	#, D.14842
	addq	%rdx, %rax	# D.14842, D.14841
	movq	(%rax), %rax	# *_109, D.14843
	movl	4(%rax), %eax	# _110->is_reference, D.14844
	andl	$2, %eax	#, D.14844
	testl	%eax, %eax	# D.14844
	je	.L331	#,
	.loc 1 1720 0 is_stmt 0 discriminator 1
	movq	dpb+16(%rip), %rax	# dpb.fs_ltref, D.14841
	movl	-4(%rbp), %edx	# i, D.14842
	salq	$3, %rdx	#, D.14842
	addq	%rdx, %rax	# D.14842, D.14841
	movq	(%rax), %rax	# *_116, D.14843
	movl	8(%rax), %eax	# _117->is_long_term, D.14844
	andl	$2, %eax	#, D.14844
	testl	%eax, %eax	# D.14844
	je	.L331	#,
	.loc 1 1722 0 is_stmt 1
	movq	dpb+16(%rip), %rax	# dpb.fs_ltref, D.14841
	movl	-4(%rbp), %edx	# i, D.14842
	salq	$3, %rdx	#, D.14842
	addq	%rdx, %rax	# D.14842, D.14841
	movq	(%rax), %rax	# *_123, D.14843
	movq	56(%rax), %rax	# _124->bottom_field, D.14845
	movl	6368(%rax), %eax	# _125->long_term_pic_num, D.14844
	cmpl	-28(%rbp), %eax	# long_term_pic_num, D.14844
	jne	.L331	#,
	.loc 1 1724 0
	movq	dpb+16(%rip), %rax	# dpb.fs_ltref, D.14841
	movl	-4(%rbp), %edx	# i, D.14842
	salq	$3, %rdx	#, D.14842
	addq	%rdx, %rax	# D.14842, D.14841
	movq	(%rax), %rax	# *_130, D.14843
	movq	56(%rax), %rax	# _131->bottom_field, D.14845
	movl	$0, 6380(%rax)	#, _132->used_for_reference
	.loc 1 1725 0
	movq	dpb+16(%rip), %rax	# dpb.fs_ltref, D.14841
	movl	-4(%rbp), %edx	# i, D.14842
	salq	$3, %rdx	#, D.14842
	addq	%rdx, %rax	# D.14842, D.14841
	movq	(%rax), %rax	# *_136, D.14843
	movq	56(%rax), %rax	# _137->bottom_field, D.14845
	movl	$0, 6376(%rax)	#, _138->is_long_term
	.loc 1 1726 0
	movq	dpb+16(%rip), %rax	# dpb.fs_ltref, D.14841
	movl	-4(%rbp), %edx	# i, D.14842
	salq	$3, %rdx	#, D.14842
	addq	%rdx, %rax	# D.14842, D.14841
	movq	(%rax), %rax	# *_142, D.14843
	movq	dpb+16(%rip), %rdx	# dpb.fs_ltref, D.14841
	movl	-4(%rbp), %ecx	# i, D.14842
	salq	$3, %rcx	#, D.14842
	addq	%rcx, %rdx	# D.14842, D.14841
	movq	(%rdx), %rdx	# *_147, D.14843
	movl	4(%rdx), %edx	# _148->is_reference, D.14844
	andl	$1, %edx	#, D.14844
	movl	%edx, 4(%rax)	# D.14844, _143->is_reference
	.loc 1 1727 0
	movq	dpb+16(%rip), %rax	# dpb.fs_ltref, D.14841
	movl	-4(%rbp), %edx	# i, D.14842
	salq	$3, %rdx	#, D.14842
	addq	%rdx, %rax	# D.14842, D.14841
	movq	(%rax), %rax	# *_154, D.14843
	movq	dpb+16(%rip), %rdx	# dpb.fs_ltref, D.14841
	movl	-4(%rbp), %ecx	# i, D.14842
	salq	$3, %rcx	#, D.14842
	addq	%rcx, %rdx	# D.14842, D.14841
	movq	(%rdx), %rdx	# *_159, D.14843
	movl	8(%rdx), %edx	# _160->is_long_term, D.14844
	andl	$1, %edx	#, D.14844
	movl	%edx, 8(%rax)	# D.14844, _155->is_long_term
	.loc 1 1728 0
	movq	dpb+16(%rip), %rax	# dpb.fs_ltref, D.14841
	movl	-4(%rbp), %edx	# i, D.14842
	salq	$3, %rdx	#, D.14842
	addq	%rdx, %rax	# D.14842, D.14841
	movq	(%rax), %rax	# *_166, D.14843
	movl	(%rax), %eax	# _167->is_used, D.14844
	cmpl	$3, %eax	#, D.14844
	jne	.L335	#,
	.loc 1 1730 0
	movq	dpb+16(%rip), %rax	# dpb.fs_ltref, D.14841
	movl	-4(%rbp), %edx	# i, D.14842
	salq	$3, %rdx	#, D.14842
	addq	%rdx, %rax	# D.14842, D.14841
	movq	(%rax), %rax	# *_172, D.14843
	movq	40(%rax), %rax	# _173->frame, D.14845
	movl	$0, 6380(%rax)	#, _174->used_for_reference
	.loc 1 1731 0
	movq	dpb+16(%rip), %rax	# dpb.fs_ltref, D.14841
	movl	-4(%rbp), %edx	# i, D.14842
	salq	$3, %rdx	#, D.14842
	addq	%rdx, %rax	# D.14842, D.14841
	movq	(%rax), %rax	# *_178, D.14843
	movq	40(%rax), %rax	# _179->frame, D.14845
	movl	$0, 6376(%rax)	#, _180->is_long_term
	.loc 1 1733 0
	jmp	.L327	#
.L335:
	jmp	.L327	#
.L331:
	.loc 1 1690 0
	addl	$1, -4(%rbp)	#, i
.L328:
	.loc 1 1690 0 is_stmt 0 discriminator 1
	movl	dpb+36(%rip), %eax	# dpb.ltref_frames_in_buffer, D.14839
	cmpl	-4(%rbp), %eax	# i, D.14839
	ja	.L336	#,
.L327:
	.loc 1 1738 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	mm_unmark_long_term_for_reference, .-mm_unmark_long_term_for_reference
	.type	unmark_long_term_frame_for_reference_by_frame_idx, @function
unmark_long_term_frame_for_reference_by_frame_idx:
.LFB37:
	.loc 1 1748 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$24, %rsp	#,
	movl	%edi, -20(%rbp)	# long_term_frame_idx, long_term_frame_idx
	.loc 1 1750 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L338	#
.L340:
	.loc 1 1752 0
	movq	dpb+16(%rip), %rax	# dpb.fs_ltref, D.14847
	movl	-4(%rbp), %edx	# i, D.14848
	salq	$3, %rdx	#, D.14848
	addq	%rdx, %rax	# D.14848, D.14847
	movq	(%rax), %rax	# *_7, D.14849
	movl	28(%rax), %eax	# _8->long_term_frame_idx, D.14850
	cmpl	-20(%rbp), %eax	# long_term_frame_idx, D.14850
	jne	.L339	#,
	.loc 1 1753 0
	movq	dpb+16(%rip), %rax	# dpb.fs_ltref, D.14847
	movl	-4(%rbp), %edx	# i, D.14848
	salq	$3, %rdx	#, D.14848
	addq	%rdx, %rax	# D.14848, D.14847
	movq	(%rax), %rax	# *_14, D.14849
	movq	%rax, %rdi	# D.14849,
	call	unmark_for_long_term_reference	#
.L339:
	.loc 1 1750 0
	addl	$1, -4(%rbp)	#, i
.L338:
	.loc 1 1750 0 is_stmt 0 discriminator 1
	movl	dpb+36(%rip), %eax	# dpb.ltref_frames_in_buffer, D.14846
	cmpl	-4(%rbp), %eax	# i, D.14846
	ja	.L340	#,
	.loc 1 1755 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	unmark_long_term_frame_for_reference_by_frame_idx, .-unmark_long_term_frame_for_reference_by_frame_idx
	.type	unmark_long_term_field_for_reference_by_frame_idx, @function
unmark_long_term_field_for_reference_by_frame_idx:
.LFB38:
	.loc 1 1765 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$40, %rsp	#,
	movl	%edi, -20(%rbp)	# structure, structure
	movl	%esi, -24(%rbp)	# long_term_frame_idx, long_term_frame_idx
	movl	%edx, -28(%rbp)	# mark_current, mark_current
	movl	%ecx, -32(%rbp)	# curr_frame_num, curr_frame_num
	movl	%r8d, -36(%rbp)	# curr_pic_num, curr_pic_num
	.loc 1 1767 0
	movl	log2_max_frame_num_minus4(%rip), %eax	# log2_max_frame_num_minus4, log2_max_frame_num_minus4.57
	addl	$4, %eax	#, D.14851
	movl	$1, %edx	#, tmp178
	movl	%eax, %ecx	# D.14852, tmp190
	sall	%cl, %edx	# tmp190, tmp179
	movl	%edx, %eax	# tmp179, tmp179
	movl	%eax, -4(%rbp)	# tmp179, MaxFrameNum
	.loc 1 1770 0
	cmpl	$0, -36(%rbp)	#, curr_pic_num
	jns	.L342	#,
	.loc 1 1771 0
	movl	-4(%rbp), %eax	# MaxFrameNum, tmp180
	addl	%eax, %eax	# D.14852
	addl	%eax, -36(%rbp)	# D.14852, curr_pic_num
.L342:
	.loc 1 1773 0
	movl	$0, -8(%rbp)	#, i
	jmp	.L343	#
.L360:
	.loc 1 1775 0
	movq	dpb+16(%rip), %rax	# dpb.fs_ltref, D.14853
	movl	-8(%rbp), %edx	# i, D.14854
	salq	$3, %rdx	#, D.14854
	addq	%rdx, %rax	# D.14854, D.14853
	movq	(%rax), %rax	# *_15, D.14855
	movl	28(%rax), %eax	# _16->long_term_frame_idx, D.14852
	cmpl	-24(%rbp), %eax	# long_term_frame_idx, D.14852
	jne	.L344	#,
	.loc 1 1777 0
	cmpl	$1, -20(%rbp)	#, structure
	jne	.L345	#,
	.loc 1 1779 0
	movq	dpb+16(%rip), %rax	# dpb.fs_ltref, D.14853
	movl	-8(%rbp), %edx	# i, D.14854
	salq	$3, %rdx	#, D.14854
	addq	%rdx, %rax	# D.14854, D.14853
	movq	(%rax), %rax	# *_23, D.14855
	movl	8(%rax), %eax	# _24->is_long_term, D.14852
	cmpl	$3, %eax	#, D.14852
	jne	.L346	#,
	.loc 1 1781 0
	movq	dpb+16(%rip), %rax	# dpb.fs_ltref, D.14853
	movl	-8(%rbp), %edx	# i, D.14854
	salq	$3, %rdx	#, D.14854
	addq	%rdx, %rax	# D.14854, D.14853
	movq	(%rax), %rax	# *_29, D.14855
	movq	%rax, %rdi	# D.14855,
	call	unmark_for_long_term_reference	#
	jmp	.L345	#
.L346:
	.loc 1 1785 0
	movq	dpb+16(%rip), %rax	# dpb.fs_ltref, D.14853
	movl	-8(%rbp), %edx	# i, D.14854
	salq	$3, %rdx	#, D.14854
	addq	%rdx, %rax	# D.14854, D.14853
	movq	(%rax), %rax	# *_34, D.14855
	movl	8(%rax), %eax	# _35->is_long_term, D.14852
	cmpl	$1, %eax	#, D.14852
	jne	.L347	#,
	.loc 1 1787 0
	movq	dpb+16(%rip), %rax	# dpb.fs_ltref, D.14853
	movl	-8(%rbp), %edx	# i, D.14854
	salq	$3, %rdx	#, D.14854
	addq	%rdx, %rax	# D.14854, D.14853
	movq	(%rax), %rax	# *_40, D.14855
	movq	%rax, %rdi	# D.14855,
	call	unmark_for_long_term_reference	#
	jmp	.L345	#
.L347:
	.loc 1 1791 0
	cmpl	$0, -28(%rbp)	#, mark_current
	je	.L348	#,
	.loc 1 1793 0
	movq	dpb+56(%rip), %rax	# dpb.last_picture, D.14855
	testq	%rax, %rax	# D.14855
	je	.L349	#,
	.loc 1 1795 0
	movq	dpb+56(%rip), %rdx	# dpb.last_picture, D.14855
	movq	dpb+16(%rip), %rax	# dpb.fs_ltref, D.14853
	movl	-8(%rbp), %ecx	# i, D.14854
	salq	$3, %rcx	#, D.14854
	addq	%rcx, %rax	# D.14854, D.14853
	movq	(%rax), %rax	# *_48, D.14855
	cmpq	%rax, %rdx	# D.14855, D.14855
	jne	.L350	#,
	.loc 1 1795 0 is_stmt 0 discriminator 1
	movq	dpb+56(%rip), %rax	# dpb.last_picture, D.14855
	movl	20(%rax), %eax	# _50->frame_num, D.14851
	cmpl	-32(%rbp), %eax	# curr_frame_num, D.14851
	je	.L345	#,
.L350:
	.loc 1 1796 0 is_stmt 1
	movq	dpb+16(%rip), %rax	# dpb.fs_ltref, D.14853
	movl	-8(%rbp), %edx	# i, D.14854
	salq	$3, %rdx	#, D.14854
	addq	%rdx, %rax	# D.14854, D.14853
	movq	(%rax), %rax	# *_56, D.14855
	movq	%rax, %rdi	# D.14855,
	call	unmark_for_long_term_reference	#
	jmp	.L345	#
.L349:
	.loc 1 1800 0
	movq	dpb+16(%rip), %rax	# dpb.fs_ltref, D.14853
	movl	-8(%rbp), %edx	# i, D.14854
	salq	$3, %rdx	#, D.14854
	addq	%rdx, %rax	# D.14854, D.14853
	movq	(%rax), %rax	# *_61, D.14855
	movq	%rax, %rdi	# D.14855,
	call	unmark_for_long_term_reference	#
	jmp	.L345	#
.L348:
	.loc 1 1805 0
	movq	dpb+16(%rip), %rax	# dpb.fs_ltref, D.14853
	movl	-8(%rbp), %edx	# i, D.14854
	salq	$3, %rdx	#, D.14854
	addq	%rdx, %rax	# D.14854, D.14853
	movq	(%rax), %rax	# *_66, D.14855
	movl	20(%rax), %edx	# _67->frame_num, D.14851
	movl	-36(%rbp), %eax	# curr_pic_num, tmp181
	movl	%eax, %ecx	# tmp181, tmp182
	shrl	$31, %ecx	#, tmp182
	addl	%ecx, %eax	# tmp182, tmp183
	sarl	%eax	# tmp184
	cmpl	%eax, %edx	# D.14851, D.14851
	je	.L345	#,
	.loc 1 1807 0
	movq	dpb+16(%rip), %rax	# dpb.fs_ltref, D.14853
	movl	-8(%rbp), %edx	# i, D.14854
	salq	$3, %rdx	#, D.14854
	addq	%rdx, %rax	# D.14854, D.14853
	movq	(%rax), %rax	# *_74, D.14855
	movq	%rax, %rdi	# D.14855,
	call	unmark_for_long_term_reference	#
.L345:
	.loc 1 1813 0
	cmpl	$2, -20(%rbp)	#, structure
	jne	.L344	#,
	.loc 1 1815 0
	movq	dpb+16(%rip), %rax	# dpb.fs_ltref, D.14853
	movl	-8(%rbp), %edx	# i, D.14854
	salq	$3, %rdx	#, D.14854
	addq	%rdx, %rax	# D.14854, D.14853
	movq	(%rax), %rax	# *_79, D.14855
	movl	8(%rax), %eax	# _80->is_long_term, D.14852
	cmpl	$3, %eax	#, D.14852
	jne	.L353	#,
	.loc 1 1817 0
	movq	dpb+16(%rip), %rax	# dpb.fs_ltref, D.14853
	movl	-8(%rbp), %edx	# i, D.14854
	salq	$3, %rdx	#, D.14854
	addq	%rdx, %rax	# D.14854, D.14853
	movq	(%rax), %rax	# *_85, D.14855
	movq	%rax, %rdi	# D.14855,
	call	unmark_for_long_term_reference	#
	jmp	.L344	#
.L353:
	.loc 1 1821 0
	movq	dpb+16(%rip), %rax	# dpb.fs_ltref, D.14853
	movl	-8(%rbp), %edx	# i, D.14854
	salq	$3, %rdx	#, D.14854
	addq	%rdx, %rax	# D.14854, D.14853
	movq	(%rax), %rax	# *_90, D.14855
	movl	8(%rax), %eax	# _91->is_long_term, D.14852
	cmpl	$2, %eax	#, D.14852
	jne	.L354	#,
	.loc 1 1823 0
	movq	dpb+16(%rip), %rax	# dpb.fs_ltref, D.14853
	movl	-8(%rbp), %edx	# i, D.14854
	salq	$3, %rdx	#, D.14854
	addq	%rdx, %rax	# D.14854, D.14853
	movq	(%rax), %rax	# *_96, D.14855
	movq	%rax, %rdi	# D.14855,
	call	unmark_for_long_term_reference	#
	jmp	.L344	#
.L354:
	.loc 1 1827 0
	cmpl	$0, -28(%rbp)	#, mark_current
	je	.L355	#,
	.loc 1 1829 0
	movq	dpb+56(%rip), %rax	# dpb.last_picture, D.14855
	testq	%rax, %rax	# D.14855
	je	.L356	#,
	.loc 1 1831 0
	movq	dpb+56(%rip), %rdx	# dpb.last_picture, D.14855
	movq	dpb+16(%rip), %rax	# dpb.fs_ltref, D.14853
	movl	-8(%rbp), %ecx	# i, D.14854
	salq	$3, %rcx	#, D.14854
	addq	%rcx, %rax	# D.14854, D.14853
	movq	(%rax), %rax	# *_103, D.14855
	cmpq	%rax, %rdx	# D.14855, D.14855
	jne	.L357	#,
	.loc 1 1831 0 is_stmt 0 discriminator 1
	movq	dpb+56(%rip), %rax	# dpb.last_picture, D.14855
	movl	20(%rax), %eax	# _105->frame_num, D.14851
	cmpl	-32(%rbp), %eax	# curr_frame_num, D.14851
	je	.L344	#,
.L357:
	.loc 1 1832 0 is_stmt 1
	movq	dpb+16(%rip), %rax	# dpb.fs_ltref, D.14853
	movl	-8(%rbp), %edx	# i, D.14854
	salq	$3, %rdx	#, D.14854
	addq	%rdx, %rax	# D.14854, D.14853
	movq	(%rax), %rax	# *_110, D.14855
	movq	%rax, %rdi	# D.14855,
	call	unmark_for_long_term_reference	#
	jmp	.L344	#
.L356:
	.loc 1 1836 0
	movq	dpb+16(%rip), %rax	# dpb.fs_ltref, D.14853
	movl	-8(%rbp), %edx	# i, D.14854
	salq	$3, %rdx	#, D.14854
	addq	%rdx, %rax	# D.14854, D.14853
	movq	(%rax), %rax	# *_115, D.14855
	movq	%rax, %rdi	# D.14855,
	call	unmark_for_long_term_reference	#
	jmp	.L344	#
.L355:
	.loc 1 1841 0
	movq	dpb+16(%rip), %rax	# dpb.fs_ltref, D.14853
	movl	-8(%rbp), %edx	# i, D.14854
	salq	$3, %rdx	#, D.14854
	addq	%rdx, %rax	# D.14854, D.14853
	movq	(%rax), %rax	# *_120, D.14855
	movl	20(%rax), %edx	# _121->frame_num, D.14851
	movl	-36(%rbp), %eax	# curr_pic_num, tmp185
	movl	%eax, %ecx	# tmp185, tmp186
	shrl	$31, %ecx	#, tmp186
	addl	%ecx, %eax	# tmp186, tmp187
	sarl	%eax	# tmp188
	cmpl	%eax, %edx	# D.14851, D.14851
	je	.L344	#,
	.loc 1 1843 0
	movq	dpb+16(%rip), %rax	# dpb.fs_ltref, D.14853
	movl	-8(%rbp), %edx	# i, D.14854
	salq	$3, %rdx	#, D.14854
	addq	%rdx, %rax	# D.14854, D.14853
	movq	(%rax), %rax	# *_128, D.14855
	movq	%rax, %rdi	# D.14855,
	call	unmark_for_long_term_reference	#
.L344:
	.loc 1 1773 0
	addl	$1, -8(%rbp)	#, i
.L343:
	.loc 1 1773 0 is_stmt 0 discriminator 1
	movl	dpb+36(%rip), %eax	# dpb.ltref_frames_in_buffer, D.14851
	cmpl	-8(%rbp), %eax	# i, D.14851
	ja	.L360	#,
	.loc 1 1851 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	unmark_long_term_field_for_reference_by_frame_idx, .-unmark_long_term_field_for_reference_by_frame_idx
	.section	.rodata
	.align 8
.LC13:
	.string	"Warning: reference frame for long term marking not found"
	.align 8
.LC14:
	.string	"Warning: assigning long_term_frame_idx different from other field"
	.align 8
.LC15:
	.string	"Warning: reference field for long term marking not found"
	.text
	.type	mark_pic_long_term, @function
mark_pic_long_term:
.LFB39:
	.loc 1 1861 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# p, p
	movl	%esi, -28(%rbp)	# long_term_frame_idx, long_term_frame_idx
	movl	%edx, -32(%rbp)	# picNumX, picNumX
	.loc 1 1865 0
	movq	-24(%rbp), %rax	# p, tmp346
	movl	(%rax), %eax	# p_4(D)->structure, D.14856
	testl	%eax, %eax	# D.14856
	jne	.L362	#,
	.loc 1 1867 0
	movl	$0, -12(%rbp)	#, i
	jmp	.L363	#
.L366:
	.loc 1 1869 0
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14858
	movl	-12(%rbp), %edx	# i, D.14859
	salq	$3, %rdx	#, D.14859
	addq	%rdx, %rax	# D.14859, D.14858
	movq	(%rax), %rax	# *_11, D.14860
	movl	4(%rax), %eax	# _12->is_reference, D.14861
	cmpl	$3, %eax	#, D.14861
	jne	.L364	#,
	.loc 1 1871 0
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14858
	movl	-12(%rbp), %edx	# i, D.14859
	salq	$3, %rdx	#, D.14859
	addq	%rdx, %rax	# D.14859, D.14858
	movq	(%rax), %rax	# *_17, D.14860
	movq	40(%rax), %rax	# _18->frame, D.14862
	movl	6376(%rax), %eax	# _19->is_long_term, D.14861
	testl	%eax, %eax	# D.14861
	jne	.L364	#,
	.loc 1 1871 0 is_stmt 0 discriminator 1
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14858
	movl	-12(%rbp), %edx	# i, D.14859
	salq	$3, %rdx	#, D.14859
	addq	%rdx, %rax	# D.14859, D.14858
	movq	(%rax), %rax	# *_24, D.14860
	movq	40(%rax), %rax	# _25->frame, D.14862
	movl	6364(%rax), %eax	# _26->pic_num, D.14861
	cmpl	-32(%rbp), %eax	# picNumX, D.14861
	jne	.L364	#,
	.loc 1 1873 0 is_stmt 1
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14858
	movl	-12(%rbp), %edx	# i, D.14859
	salq	$3, %rdx	#, D.14859
	addq	%rdx, %rax	# D.14859, D.14858
	movq	(%rax), %rsi	# *_32, D.14860
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14858
	movl	-12(%rbp), %edx	# i, D.14859
	salq	$3, %rdx	#, D.14859
	addq	%rdx, %rax	# D.14859, D.14858
	movq	(%rax), %rax	# *_37, D.14860
	movq	40(%rax), %rax	# _38->frame, D.14862
	.loc 1 1874 0
	movq	dpb+8(%rip), %rdx	# dpb.fs_ref, D.14858
	movl	-12(%rbp), %ecx	# i, D.14859
	salq	$3, %rcx	#, D.14859
	addq	%rcx, %rdx	# D.14859, D.14858
	movq	(%rdx), %rdx	# *_43, D.14860
	movq	48(%rdx), %rdx	# _44->top_field, D.14862
	.loc 1 1875 0
	movq	dpb+8(%rip), %rcx	# dpb.fs_ref, D.14858
	movl	-12(%rbp), %edi	# i, D.14859
	salq	$3, %rdi	#, D.14859
	addq	%rdi, %rcx	# D.14859, D.14858
	movq	(%rcx), %rcx	# *_49, D.14860
	movq	56(%rcx), %rcx	# _50->bottom_field, D.14862
	.loc 1 1876 0
	movl	-28(%rbp), %edi	# long_term_frame_idx, tmp347
	movl	%edi, 6372(%rcx)	# tmp347, _51->long_term_frame_idx
	.loc 1 1875 0
	movl	6372(%rcx), %ecx	# _51->long_term_frame_idx, D.14861
	movl	%ecx, 6372(%rdx)	# D.14861, _45->long_term_frame_idx
	.loc 1 1874 0
	movl	6372(%rdx), %edx	# _45->long_term_frame_idx, D.14861
	movl	%edx, 6372(%rax)	# D.14861, _39->long_term_frame_idx
	.loc 1 1873 0
	movl	6372(%rax), %eax	# _39->long_term_frame_idx, D.14861
	movl	%eax, 28(%rsi)	# D.14861, _33->long_term_frame_idx
	.loc 1 1877 0
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14858
	movl	-12(%rbp), %edx	# i, D.14859
	salq	$3, %rdx	#, D.14859
	addq	%rdx, %rax	# D.14859, D.14858
	movq	(%rax), %rax	# *_59, D.14860
	movq	40(%rax), %rcx	# _60->frame, D.14862
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14858
	movl	-12(%rbp), %edx	# i, D.14859
	salq	$3, %rdx	#, D.14859
	addq	%rdx, %rax	# D.14859, D.14858
	movq	(%rax), %rax	# *_65, D.14860
	movq	48(%rax), %rax	# _66->top_field, D.14862
	.loc 1 1878 0
	movq	dpb+8(%rip), %rdx	# dpb.fs_ref, D.14858
	movl	-12(%rbp), %esi	# i, D.14859
	salq	$3, %rsi	#, D.14859
	addq	%rsi, %rdx	# D.14859, D.14858
	movq	(%rdx), %rdx	# *_71, D.14860
	movq	56(%rdx), %rdx	# _72->bottom_field, D.14862
	.loc 1 1879 0
	movl	-28(%rbp), %esi	# long_term_frame_idx, tmp348
	movl	%esi, 6368(%rdx)	# tmp348, _73->long_term_pic_num
	.loc 1 1878 0
	movl	6368(%rdx), %edx	# _73->long_term_pic_num, D.14861
	movl	%edx, 6368(%rax)	# D.14861, _67->long_term_pic_num
	.loc 1 1877 0
	movl	6368(%rax), %eax	# _67->long_term_pic_num, D.14861
	movl	%eax, 6368(%rcx)	# D.14861, _61->long_term_pic_num
	.loc 1 1880 0
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14858
	movl	-12(%rbp), %edx	# i, D.14859
	salq	$3, %rdx	#, D.14859
	addq	%rdx, %rax	# D.14859, D.14858
	movq	(%rax), %rax	# *_79, D.14860
	movq	40(%rax), %rcx	# _80->frame, D.14862
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14858
	movl	-12(%rbp), %edx	# i, D.14859
	salq	$3, %rdx	#, D.14859
	addq	%rdx, %rax	# D.14859, D.14858
	movq	(%rax), %rax	# *_85, D.14860
	movq	48(%rax), %rax	# _86->top_field, D.14862
	.loc 1 1881 0
	movq	dpb+8(%rip), %rdx	# dpb.fs_ref, D.14858
	movl	-12(%rbp), %esi	# i, D.14859
	salq	$3, %rsi	#, D.14859
	addq	%rsi, %rdx	# D.14859, D.14858
	movq	(%rdx), %rdx	# *_91, D.14860
	movq	56(%rdx), %rdx	# _92->bottom_field, D.14862
	.loc 1 1882 0
	movl	$1, 6376(%rdx)	#, _93->is_long_term
	.loc 1 1881 0
	movl	6376(%rdx), %edx	# _93->is_long_term, D.14861
	movl	%edx, 6376(%rax)	# D.14861, _87->is_long_term
	.loc 1 1880 0
	movl	6376(%rax), %eax	# _87->is_long_term, D.14861
	movl	%eax, 6376(%rcx)	# D.14861, _81->is_long_term
	.loc 1 1883 0
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14858
	movl	-12(%rbp), %edx	# i, D.14859
	salq	$3, %rdx	#, D.14859
	addq	%rdx, %rax	# D.14859, D.14858
	movq	(%rax), %rax	# *_99, D.14860
	movl	$3, 8(%rax)	#, _100->is_long_term
	.loc 1 1884 0
	jmp	.L361	#
.L364:
	.loc 1 1867 0
	addl	$1, -12(%rbp)	#, i
.L363:
	.loc 1 1867 0 is_stmt 0 discriminator 1
	movl	dpb+32(%rip), %eax	# dpb.ref_frames_in_buffer, D.14857
	cmpl	-12(%rbp), %eax	# i, D.14857
	ja	.L366	#,
	.loc 1 1888 0 is_stmt 1
	movl	$.LC13, %edi	#,
	call	puts	#
	jmp	.L361	#
.L362:
	.loc 1 1892 0
	movq	-24(%rbp), %rax	# p, tmp349
	movl	(%rax), %eax	# p_4(D)->structure, D.14856
	cmpl	$1, %eax	#, D.14856
	jne	.L367	#,
	.loc 1 1894 0
	movl	$1, -8(%rbp)	#, add_top
	.loc 1 1895 0
	movl	$0, -4(%rbp)	#, add_bottom
	jmp	.L368	#
.L367:
	.loc 1 1899 0
	movl	$0, -8(%rbp)	#, add_top
	.loc 1 1900 0
	movl	$1, -4(%rbp)	#, add_bottom
.L368:
	.loc 1 1902 0
	movl	$0, -12(%rbp)	#, i
	jmp	.L369	#
.L376:
	.loc 1 1904 0
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14858
	movl	-12(%rbp), %edx	# i, D.14859
	salq	$3, %rdx	#, D.14859
	addq	%rdx, %rax	# D.14859, D.14858
	movq	(%rax), %rax	# *_112, D.14860
	movl	4(%rax), %eax	# _113->is_reference, D.14861
	andl	$1, %eax	#, D.14861
	testl	%eax, %eax	# D.14861
	je	.L370	#,
	.loc 1 1906 0
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14858
	movl	-12(%rbp), %edx	# i, D.14859
	salq	$3, %rdx	#, D.14859
	addq	%rdx, %rax	# D.14859, D.14858
	movq	(%rax), %rax	# *_119, D.14860
	movq	48(%rax), %rax	# _120->top_field, D.14862
	movl	6376(%rax), %eax	# _121->is_long_term, D.14861
	testl	%eax, %eax	# D.14861
	jne	.L370	#,
	.loc 1 1906 0 is_stmt 0 discriminator 1
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14858
	movl	-12(%rbp), %edx	# i, D.14859
	salq	$3, %rdx	#, D.14859
	addq	%rdx, %rax	# D.14859, D.14858
	movq	(%rax), %rax	# *_126, D.14860
	movq	48(%rax), %rax	# _127->top_field, D.14862
	movl	6364(%rax), %eax	# _128->pic_num, D.14861
	cmpl	-32(%rbp), %eax	# picNumX, D.14861
	jne	.L370	#,
	.loc 1 1908 0 is_stmt 1
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14858
	movl	-12(%rbp), %edx	# i, D.14859
	salq	$3, %rdx	#, D.14859
	addq	%rdx, %rax	# D.14859, D.14858
	movq	(%rax), %rax	# *_133, D.14860
	movl	8(%rax), %eax	# _134->is_long_term, D.14861
	testl	%eax, %eax	# D.14861
	je	.L371	#,
	.loc 1 1908 0 is_stmt 0 discriminator 1
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14858
	movl	-12(%rbp), %edx	# i, D.14859
	salq	$3, %rdx	#, D.14859
	addq	%rdx, %rax	# D.14859, D.14858
	movq	(%rax), %rax	# *_139, D.14860
	movl	28(%rax), %eax	# _140->long_term_frame_idx, D.14861
	cmpl	-28(%rbp), %eax	# long_term_frame_idx, D.14861
	je	.L371	#,
	.loc 1 1910 0 is_stmt 1
	movl	$.LC14, %edi	#,
	call	puts	#
.L371:
	.loc 1 1913 0
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14858
	movl	-12(%rbp), %edx	# i, D.14859
	salq	$3, %rdx	#, D.14859
	addq	%rdx, %rax	# D.14859, D.14858
	movq	(%rax), %rdx	# *_145, D.14860
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14858
	movl	-12(%rbp), %ecx	# i, D.14859
	salq	$3, %rcx	#, D.14859
	addq	%rcx, %rax	# D.14859, D.14858
	movq	(%rax), %rax	# *_150, D.14860
	movq	48(%rax), %rax	# _151->top_field, D.14862
	.loc 1 1914 0
	movl	-28(%rbp), %ecx	# long_term_frame_idx, tmp350
	movl	%ecx, 6372(%rax)	# tmp350, _152->long_term_frame_idx
	.loc 1 1913 0
	movl	6372(%rax), %eax	# _152->long_term_frame_idx, D.14861
	movl	%eax, 28(%rdx)	# D.14861, _146->long_term_frame_idx
	.loc 1 1915 0
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14858
	movl	-12(%rbp), %edx	# i, D.14859
	salq	$3, %rdx	#, D.14859
	addq	%rdx, %rax	# D.14859, D.14858
	movq	(%rax), %rax	# *_157, D.14860
	movq	48(%rax), %rax	# _158->top_field, D.14862
	movl	-28(%rbp), %edx	# long_term_frame_idx, tmp351
	leal	(%rdx,%rdx), %ecx	#, D.14861
	movl	-8(%rbp), %edx	# add_top, tmp352
	addl	%ecx, %edx	# D.14861, D.14861
	movl	%edx, 6368(%rax)	# D.14861, _159->long_term_pic_num
	.loc 1 1916 0
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14858
	movl	-12(%rbp), %edx	# i, D.14859
	salq	$3, %rdx	#, D.14859
	addq	%rdx, %rax	# D.14859, D.14858
	movq	(%rax), %rax	# *_165, D.14860
	movq	48(%rax), %rax	# _166->top_field, D.14862
	movl	$1, 6376(%rax)	#, _167->is_long_term
	.loc 1 1917 0
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14858
	movl	-12(%rbp), %edx	# i, D.14859
	salq	$3, %rdx	#, D.14859
	addq	%rdx, %rax	# D.14859, D.14858
	movq	(%rax), %rax	# *_171, D.14860
	movq	dpb+8(%rip), %rdx	# dpb.fs_ref, D.14858
	movl	-12(%rbp), %ecx	# i, D.14859
	salq	$3, %rcx	#, D.14859
	addq	%rcx, %rdx	# D.14859, D.14858
	movq	(%rdx), %rdx	# *_176, D.14860
	movl	8(%rdx), %edx	# _177->is_long_term, D.14861
	orl	$1, %edx	#, D.14861
	movl	%edx, 8(%rax)	# D.14861, _172->is_long_term
	.loc 1 1918 0
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14858
	movl	-12(%rbp), %edx	# i, D.14859
	salq	$3, %rdx	#, D.14859
	addq	%rdx, %rax	# D.14859, D.14858
	movq	(%rax), %rax	# *_183, D.14860
	movl	8(%rax), %eax	# _184->is_long_term, D.14861
	cmpl	$3, %eax	#, D.14861
	jne	.L372	#,
	.loc 1 1920 0
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14858
	movl	-12(%rbp), %edx	# i, D.14859
	salq	$3, %rdx	#, D.14859
	addq	%rdx, %rax	# D.14859, D.14858
	movq	(%rax), %rax	# *_189, D.14860
	movq	40(%rax), %rax	# _190->frame, D.14862
	movl	$1, 6376(%rax)	#, _191->is_long_term
	.loc 1 1921 0
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14858
	movl	-12(%rbp), %edx	# i, D.14859
	salq	$3, %rdx	#, D.14859
	addq	%rdx, %rax	# D.14859, D.14858
	movq	(%rax), %rax	# *_195, D.14860
	movq	40(%rax), %rdx	# _196->frame, D.14862
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14858
	movl	-12(%rbp), %ecx	# i, D.14859
	salq	$3, %rcx	#, D.14859
	addq	%rcx, %rax	# D.14859, D.14858
	movq	(%rax), %rax	# *_201, D.14860
	movq	40(%rax), %rax	# _202->frame, D.14862
	movl	-28(%rbp), %ecx	# long_term_frame_idx, tmp353
	movl	%ecx, 6368(%rax)	# tmp353, _203->long_term_pic_num
	movl	6368(%rax), %eax	# _203->long_term_pic_num, D.14861
	movl	%eax, 6372(%rdx)	# D.14861, _197->long_term_frame_idx
	.loc 1 1923 0
	jmp	.L361	#
.L372:
	jmp	.L361	#
.L370:
	.loc 1 1926 0
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14858
	movl	-12(%rbp), %edx	# i, D.14859
	salq	$3, %rdx	#, D.14859
	addq	%rdx, %rax	# D.14859, D.14858
	movq	(%rax), %rax	# *_208, D.14860
	movl	4(%rax), %eax	# _209->is_reference, D.14861
	andl	$2, %eax	#, D.14861
	testl	%eax, %eax	# D.14861
	je	.L373	#,
	.loc 1 1928 0
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14858
	movl	-12(%rbp), %edx	# i, D.14859
	salq	$3, %rdx	#, D.14859
	addq	%rdx, %rax	# D.14859, D.14858
	movq	(%rax), %rax	# *_215, D.14860
	movq	56(%rax), %rax	# _216->bottom_field, D.14862
	movl	6376(%rax), %eax	# _217->is_long_term, D.14861
	testl	%eax, %eax	# D.14861
	jne	.L373	#,
	.loc 1 1928 0 is_stmt 0 discriminator 1
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14858
	movl	-12(%rbp), %edx	# i, D.14859
	salq	$3, %rdx	#, D.14859
	addq	%rdx, %rax	# D.14859, D.14858
	movq	(%rax), %rax	# *_222, D.14860
	movq	56(%rax), %rax	# _223->bottom_field, D.14862
	movl	6364(%rax), %eax	# _224->pic_num, D.14861
	cmpl	-32(%rbp), %eax	# picNumX, D.14861
	jne	.L373	#,
	.loc 1 1930 0 is_stmt 1
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14858
	movl	-12(%rbp), %edx	# i, D.14859
	salq	$3, %rdx	#, D.14859
	addq	%rdx, %rax	# D.14859, D.14858
	movq	(%rax), %rax	# *_229, D.14860
	movl	8(%rax), %eax	# _230->is_long_term, D.14861
	testl	%eax, %eax	# D.14861
	je	.L374	#,
	.loc 1 1930 0 is_stmt 0 discriminator 1
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14858
	movl	-12(%rbp), %edx	# i, D.14859
	salq	$3, %rdx	#, D.14859
	addq	%rdx, %rax	# D.14859, D.14858
	movq	(%rax), %rax	# *_235, D.14860
	movl	28(%rax), %eax	# _236->long_term_frame_idx, D.14861
	cmpl	-28(%rbp), %eax	# long_term_frame_idx, D.14861
	je	.L374	#,
	.loc 1 1932 0 is_stmt 1
	movl	$.LC14, %edi	#,
	call	puts	#
.L374:
	.loc 1 1935 0
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14858
	movl	-12(%rbp), %edx	# i, D.14859
	salq	$3, %rdx	#, D.14859
	addq	%rdx, %rax	# D.14859, D.14858
	movq	(%rax), %rdx	# *_241, D.14860
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14858
	movl	-12(%rbp), %ecx	# i, D.14859
	salq	$3, %rcx	#, D.14859
	addq	%rcx, %rax	# D.14859, D.14858
	movq	(%rax), %rax	# *_246, D.14860
	movq	56(%rax), %rax	# _247->bottom_field, D.14862
	.loc 1 1936 0
	movl	-28(%rbp), %ecx	# long_term_frame_idx, tmp354
	movl	%ecx, 6372(%rax)	# tmp354, _248->long_term_frame_idx
	.loc 1 1935 0
	movl	6372(%rax), %eax	# _248->long_term_frame_idx, D.14861
	movl	%eax, 28(%rdx)	# D.14861, _242->long_term_frame_idx
	.loc 1 1937 0
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14858
	movl	-12(%rbp), %edx	# i, D.14859
	salq	$3, %rdx	#, D.14859
	addq	%rdx, %rax	# D.14859, D.14858
	movq	(%rax), %rax	# *_253, D.14860
	movq	56(%rax), %rax	# _254->bottom_field, D.14862
	movl	-28(%rbp), %edx	# long_term_frame_idx, tmp355
	leal	(%rdx,%rdx), %ecx	#, D.14861
	movl	-8(%rbp), %edx	# add_top, tmp356
	addl	%ecx, %edx	# D.14861, D.14861
	movl	%edx, 6368(%rax)	# D.14861, _255->long_term_pic_num
	.loc 1 1938 0
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14858
	movl	-12(%rbp), %edx	# i, D.14859
	salq	$3, %rdx	#, D.14859
	addq	%rdx, %rax	# D.14859, D.14858
	movq	(%rax), %rax	# *_261, D.14860
	movq	56(%rax), %rax	# _262->bottom_field, D.14862
	movl	$1, 6376(%rax)	#, _263->is_long_term
	.loc 1 1939 0
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14858
	movl	-12(%rbp), %edx	# i, D.14859
	salq	$3, %rdx	#, D.14859
	addq	%rdx, %rax	# D.14859, D.14858
	movq	(%rax), %rax	# *_267, D.14860
	movq	dpb+8(%rip), %rdx	# dpb.fs_ref, D.14858
	movl	-12(%rbp), %ecx	# i, D.14859
	salq	$3, %rcx	#, D.14859
	addq	%rcx, %rdx	# D.14859, D.14858
	movq	(%rdx), %rdx	# *_272, D.14860
	movl	8(%rdx), %edx	# _273->is_long_term, D.14861
	orl	$2, %edx	#, D.14861
	movl	%edx, 8(%rax)	# D.14861, _268->is_long_term
	.loc 1 1940 0
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14858
	movl	-12(%rbp), %edx	# i, D.14859
	salq	$3, %rdx	#, D.14859
	addq	%rdx, %rax	# D.14859, D.14858
	movq	(%rax), %rax	# *_279, D.14860
	movl	8(%rax), %eax	# _280->is_long_term, D.14861
	cmpl	$3, %eax	#, D.14861
	jne	.L375	#,
	.loc 1 1942 0
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14858
	movl	-12(%rbp), %edx	# i, D.14859
	salq	$3, %rdx	#, D.14859
	addq	%rdx, %rax	# D.14859, D.14858
	movq	(%rax), %rax	# *_285, D.14860
	movq	40(%rax), %rax	# _286->frame, D.14862
	movl	$1, 6376(%rax)	#, _287->is_long_term
	.loc 1 1943 0
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14858
	movl	-12(%rbp), %edx	# i, D.14859
	salq	$3, %rdx	#, D.14859
	addq	%rdx, %rax	# D.14859, D.14858
	movq	(%rax), %rax	# *_291, D.14860
	movq	40(%rax), %rdx	# _292->frame, D.14862
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14858
	movl	-12(%rbp), %ecx	# i, D.14859
	salq	$3, %rcx	#, D.14859
	addq	%rcx, %rax	# D.14859, D.14858
	movq	(%rax), %rax	# *_297, D.14860
	movq	40(%rax), %rax	# _298->frame, D.14862
	movl	-28(%rbp), %ecx	# long_term_frame_idx, tmp357
	movl	%ecx, 6368(%rax)	# tmp357, _299->long_term_pic_num
	movl	6368(%rax), %eax	# _299->long_term_pic_num, D.14861
	movl	%eax, 6372(%rdx)	# D.14861, _293->long_term_frame_idx
	.loc 1 1945 0
	jmp	.L361	#
.L375:
	jmp	.L361	#
.L373:
	.loc 1 1902 0
	addl	$1, -12(%rbp)	#, i
.L369:
	.loc 1 1902 0 is_stmt 0 discriminator 1
	movl	dpb+32(%rip), %eax	# dpb.ref_frames_in_buffer, D.14857
	cmpl	-12(%rbp), %eax	# i, D.14857
	ja	.L376	#,
	.loc 1 1949 0 is_stmt 1
	movl	$.LC15, %edi	#,
	call	puts	#
.L361:
	.loc 1 1951 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	mark_pic_long_term, .-mark_pic_long_term
	.section	.rodata
	.align 8
.LC16:
	.string	"field for long term marking not found"
	.text
	.type	mm_assign_long_term_frame_idx, @function
mm_assign_long_term_frame_idx:
.LFB40:
	.loc 1 1961 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# p, p
	movl	%esi, -28(%rbp)	# difference_of_pic_nums_minus1, difference_of_pic_nums_minus1
	movl	%edx, -32(%rbp)	# long_term_frame_idx, long_term_frame_idx
	.loc 1 1964 0
	movl	-28(%rbp), %edx	# difference_of_pic_nums_minus1, tmp89
	movq	-24(%rbp), %rax	# p, tmp90
	movl	%edx, %esi	# tmp89,
	movq	%rax, %rdi	# tmp90,
	call	get_pic_num_x	#
	movl	%eax, -4(%rbp)	# tmp91, picNumX
	.loc 1 1967 0
	movq	-24(%rbp), %rax	# p, tmp92
	movl	(%rax), %eax	# p_3(D)->structure, D.14866
	testl	%eax, %eax	# D.14866
	jne	.L378	#,
	.loc 1 1969 0
	movl	-32(%rbp), %eax	# long_term_frame_idx, tmp93
	movl	%eax, %edi	# tmp93,
	call	unmark_long_term_frame_for_reference_by_frame_idx	#
	jmp	.L379	#
.L378:
.LBB2:
	.loc 1 1974 0
	movl	$0, -8(%rbp)	#, structure
	.loc 1 1976 0
	movl	$0, -12(%rbp)	#, i
	jmp	.L380	#
.L384:
	.loc 1 1978 0
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14868
	movl	-12(%rbp), %edx	# i, D.14869
	salq	$3, %rdx	#, D.14869
	addq	%rdx, %rax	# D.14869, D.14868
	movq	(%rax), %rax	# *_14, D.14870
	movl	4(%rax), %eax	# _15->is_reference, D.14871
	andl	$1, %eax	#, D.14871
	testl	%eax, %eax	# D.14871
	je	.L381	#,
	.loc 1 1980 0
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14868
	movl	-12(%rbp), %edx	# i, D.14869
	salq	$3, %rdx	#, D.14869
	addq	%rdx, %rax	# D.14869, D.14868
	movq	(%rax), %rax	# *_21, D.14870
	movq	48(%rax), %rax	# _22->top_field, D.14872
	movl	6364(%rax), %eax	# _23->pic_num, D.14871
	cmpl	-4(%rbp), %eax	# picNumX, D.14871
	jne	.L381	#,
	.loc 1 1982 0
	movl	$1, -8(%rbp)	#, structure
	.loc 1 1983 0
	jmp	.L382	#
.L381:
	.loc 1 1986 0
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14868
	movl	-12(%rbp), %edx	# i, D.14869
	salq	$3, %rdx	#, D.14869
	addq	%rdx, %rax	# D.14869, D.14868
	movq	(%rax), %rax	# *_29, D.14870
	movl	4(%rax), %eax	# _30->is_reference, D.14871
	andl	$2, %eax	#, D.14871
	testl	%eax, %eax	# D.14871
	je	.L383	#,
	.loc 1 1988 0
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14868
	movl	-12(%rbp), %edx	# i, D.14869
	salq	$3, %rdx	#, D.14869
	addq	%rdx, %rax	# D.14869, D.14868
	movq	(%rax), %rax	# *_36, D.14870
	movq	56(%rax), %rax	# _37->bottom_field, D.14872
	movl	6364(%rax), %eax	# _38->pic_num, D.14871
	cmpl	-4(%rbp), %eax	# picNumX, D.14871
	jne	.L383	#,
	.loc 1 1990 0
	movl	$2, -8(%rbp)	#, structure
	.loc 1 1991 0
	jmp	.L382	#
.L383:
	.loc 1 1976 0
	addl	$1, -12(%rbp)	#, i
.L380:
	.loc 1 1976 0 is_stmt 0 discriminator 1
	movl	dpb+32(%rip), %eax	# dpb.ref_frames_in_buffer, D.14867
	cmpl	-12(%rbp), %eax	# i, D.14867
	ja	.L384	#,
.L382:
	.loc 1 1995 0 is_stmt 1
	cmpl	$0, -8(%rbp)	#, structure
	jne	.L385	#,
	.loc 1 1997 0
	movl	$200, %esi	#,
	movl	$.LC16, %edi	#,
	call	error	#
.L385:
	.loc 1 2000 0
	movl	-4(%rbp), %edx	# picNumX, tmp94
	movl	-32(%rbp), %esi	# long_term_frame_idx, tmp95
	movl	-8(%rbp), %eax	# structure, tmp96
	movl	%edx, %r8d	# tmp94,
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movl	%eax, %edi	# tmp96,
	call	unmark_long_term_field_for_reference_by_frame_idx	#
.L379:
.LBE2:
	.loc 1 2003 0
	movl	-4(%rbp), %edx	# picNumX, tmp97
	movl	-32(%rbp), %ecx	# long_term_frame_idx, tmp98
	movq	-24(%rbp), %rax	# p, tmp99
	movl	%ecx, %esi	# tmp98,
	movq	%rax, %rdi	# tmp99,
	call	mark_pic_long_term	#
	.loc 1 2004 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	mm_assign_long_term_frame_idx, .-mm_assign_long_term_frame_idx
	.globl	mm_update_max_long_term_frame_idx
	.type	mm_update_max_long_term_frame_idx, @function
mm_update_max_long_term_frame_idx:
.LFB41:
	.loc 1 2013 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$24, %rsp	#,
	movl	%edi, -20(%rbp)	# max_long_term_frame_idx_plus1, max_long_term_frame_idx_plus1
	.loc 1 2016 0
	movl	-20(%rbp), %eax	# max_long_term_frame_idx_plus1, tmp73
	subl	$1, %eax	#, D.14874
	movl	%eax, dpb+44(%rip)	# D.14874, dpb.max_long_term_pic_idx
	.loc 1 2019 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L387	#
.L389:
	.loc 1 2021 0
	movq	dpb+16(%rip), %rax	# dpb.fs_ltref, D.14876
	movl	-4(%rbp), %edx	# i, D.14877
	salq	$3, %rdx	#, D.14877
	addq	%rdx, %rax	# D.14877, D.14876
	movq	(%rax), %rax	# *_9, D.14878
	movl	28(%rax), %edx	# _10->long_term_frame_idx, D.14874
	movl	dpb+44(%rip), %eax	# dpb.max_long_term_pic_idx, D.14874
	cmpl	%eax, %edx	# D.14874, D.14874
	jle	.L388	#,
	.loc 1 2023 0
	movq	dpb+16(%rip), %rax	# dpb.fs_ltref, D.14876
	movl	-4(%rbp), %edx	# i, D.14877
	salq	$3, %rdx	#, D.14877
	addq	%rdx, %rax	# D.14877, D.14876
	movq	(%rax), %rax	# *_16, D.14878
	movq	%rax, %rdi	# D.14878,
	call	unmark_for_long_term_reference	#
.L388:
	.loc 1 2019 0
	addl	$1, -4(%rbp)	#, i
.L387:
	.loc 1 2019 0 is_stmt 0 discriminator 1
	movl	dpb+36(%rip), %eax	# dpb.ltref_frames_in_buffer, D.14875
	cmpl	-4(%rbp), %eax	# i, D.14875
	ja	.L389	#,
	.loc 1 2026 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE41:
	.size	mm_update_max_long_term_frame_idx, .-mm_update_max_long_term_frame_idx
	.type	mm_unmark_all_long_term_for_reference, @function
mm_unmark_all_long_term_for_reference:
.LFB42:
	.loc 1 2036 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 2037 0
	movl	$0, %edi	#,
	call	mm_update_max_long_term_frame_idx	#
	.loc 1 2038 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.size	mm_unmark_all_long_term_for_reference, .-mm_unmark_all_long_term_for_reference
	.type	mm_unmark_all_short_term_for_reference, @function
mm_unmark_all_short_term_for_reference:
.LFB43:
	.loc 1 2047 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 2049 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L392	#
.L393:
	.loc 1 2051 0 discriminator 2
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14880
	movl	-4(%rbp), %edx	# i, D.14881
	salq	$3, %rdx	#, D.14881
	addq	%rdx, %rax	# D.14881, D.14880
	movq	(%rax), %rax	# *_7, D.14882
	movq	%rax, %rdi	# D.14882,
	call	unmark_for_reference	#
	.loc 1 2049 0 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L392:
	.loc 1 2049 0 is_stmt 0 discriminator 1
	movl	dpb+32(%rip), %eax	# dpb.ref_frames_in_buffer, D.14879
	cmpl	-4(%rbp), %eax	# i, D.14879
	ja	.L393	#,
	.loc 1 2053 0 is_stmt 1
	movl	$0, %eax	#,
	call	update_ref_list	#
	.loc 1 2054 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE43:
	.size	mm_unmark_all_short_term_for_reference, .-mm_unmark_all_short_term_for_reference
	.type	mm_mark_current_picture_long_term, @function
mm_mark_current_picture_long_term:
.LFB44:
	.loc 1 2064 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# p, p
	movl	%esi, -12(%rbp)	# long_term_frame_idx, long_term_frame_idx
	.loc 1 2066 0
	movq	-8(%rbp), %rax	# p, tmp63
	movl	(%rax), %eax	# p_1(D)->structure, D.14883
	testl	%eax, %eax	# D.14883
	jne	.L395	#,
	.loc 1 2068 0
	movl	-12(%rbp), %eax	# long_term_frame_idx, tmp64
	movl	%eax, %edi	# tmp64,
	call	unmark_long_term_frame_for_reference_by_frame_idx	#
	jmp	.L396	#
.L395:
	.loc 1 2072 0
	movq	-8(%rbp), %rax	# p, tmp65
	movl	6364(%rax), %eax	# p_1(D)->pic_num, D.14884
	movl	%eax, %edx	# D.14884, D.14885
	movq	-8(%rbp), %rax	# p, tmp66
	movl	(%rax), %eax	# p_1(D)->structure, D.14883
	movl	-12(%rbp), %esi	# long_term_frame_idx, tmp67
	movl	$0, %r8d	#,
	movl	%edx, %ecx	# D.14885,
	movl	$1, %edx	#,
	movl	%eax, %edi	# D.14883,
	call	unmark_long_term_field_for_reference_by_frame_idx	#
.L396:
	.loc 1 2075 0
	movq	-8(%rbp), %rax	# p, tmp68
	movl	$1, 6376(%rax)	#, p_1(D)->is_long_term
	.loc 1 2076 0
	movq	-8(%rbp), %rax	# p, tmp69
	movl	-12(%rbp), %edx	# long_term_frame_idx, tmp70
	movl	%edx, 6372(%rax)	# tmp70, p_1(D)->long_term_frame_idx
	.loc 1 2077 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE44:
	.size	mm_mark_current_picture_long_term, .-mm_mark_current_picture_long_term
	.section	.rodata
	.align 8
.LC17:
	.string	"memory_management_control_operation = 0 not last operation in buffer"
	.align 8
.LC18:
	.string	"invalid memory_management_control_operation in buffer"
	.text
	.type	adaptive_memory_management, @function
adaptive_memory_management:
.LFB45:
	.loc 1 2087 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# p, p
	.loc 1 2090 0
	movq	img(%rip), %rax	# img, img.58
	movl	$0, 72644(%rax)	#, img.58_1->last_has_mmco_5
	.loc 1 2095 0
	jmp	.L398	#
.L410:
	.loc 1 2097 0
	movq	img(%rip), %rax	# img, img.59
	movq	72512(%rax), %rax	# img.59_4->dec_ref_pic_marking_buffer, tmp81
	movq	%rax, -8(%rbp)	# tmp81, tmp_drpm
	.loc 1 2098 0
	movq	-8(%rbp), %rax	# tmp_drpm, tmp82
	movl	(%rax), %eax	# tmp_drpm_5->memory_management_control_operation, D.14887
	cmpl	$6, %eax	#, D.14887
	ja	.L399	#,
	movl	%eax, %eax	# D.14887, tmp83
	movq	.L401(,%rax,8), %rax	#, tmp84
	jmp	*%rax	# tmp84
	.section	.rodata
	.align 8
	.align 4
.L401:
	.quad	.L400
	.quad	.L402
	.quad	.L403
	.quad	.L404
	.quad	.L405
	.quad	.L406
	.quad	.L407
	.text
.L400:
	.loc 1 2101 0
	movq	-8(%rbp), %rax	# tmp_drpm, tmp85
	movq	24(%rax), %rax	# tmp_drpm_5->Next, D.14888
	testq	%rax, %rax	# D.14888
	je	.L408	#,
	.loc 1 2103 0
	movl	$500, %esi	#,
	movl	$.LC17, %edi	#,
	call	error	#
	.loc 1 2105 0
	jmp	.L409	#
.L408:
	jmp	.L409	#
.L402:
	.loc 1 2107 0
	movq	-8(%rbp), %rax	# tmp_drpm, tmp86
	movl	4(%rax), %edx	# tmp_drpm_5->difference_of_pic_nums_minus1, D.14887
	movq	-24(%rbp), %rax	# p, tmp87
	movl	%edx, %esi	# D.14887,
	movq	%rax, %rdi	# tmp87,
	call	mm_unmark_short_term_for_reference	#
	.loc 1 2108 0
	movl	$0, %eax	#,
	call	update_ref_list	#
	.loc 1 2109 0
	jmp	.L409	#
.L403:
	.loc 1 2111 0
	movq	-8(%rbp), %rax	# tmp_drpm, tmp88
	movl	8(%rax), %edx	# tmp_drpm_5->long_term_pic_num, D.14887
	movq	-24(%rbp), %rax	# p, tmp89
	movl	%edx, %esi	# D.14887,
	movq	%rax, %rdi	# tmp89,
	call	mm_unmark_long_term_for_reference	#
	.loc 1 2112 0
	movl	$0, %eax	#,
	call	update_ltref_list	#
	.loc 1 2113 0
	jmp	.L409	#
.L404:
	.loc 1 2115 0
	movq	-8(%rbp), %rax	# tmp_drpm, tmp90
	movl	12(%rax), %edx	# tmp_drpm_5->long_term_frame_idx, D.14887
	movq	-8(%rbp), %rax	# tmp_drpm, tmp91
	movl	4(%rax), %ecx	# tmp_drpm_5->difference_of_pic_nums_minus1, D.14887
	movq	-24(%rbp), %rax	# p, tmp92
	movl	%ecx, %esi	# D.14887,
	movq	%rax, %rdi	# tmp92,
	call	mm_assign_long_term_frame_idx	#
	.loc 1 2116 0
	movl	$0, %eax	#,
	call	update_ref_list	#
	.loc 1 2117 0
	movl	$0, %eax	#,
	call	update_ltref_list	#
	.loc 1 2118 0
	jmp	.L409	#
.L405:
	.loc 1 2120 0
	movq	-8(%rbp), %rax	# tmp_drpm, tmp93
	movl	16(%rax), %eax	# tmp_drpm_5->max_long_term_frame_idx_plus1, D.14887
	movl	%eax, %edi	# D.14887,
	call	mm_update_max_long_term_frame_idx	#
	.loc 1 2121 0
	movl	$0, %eax	#,
	call	update_ltref_list	#
	.loc 1 2122 0
	jmp	.L409	#
.L406:
	.loc 1 2124 0
	movl	$0, %eax	#,
	call	mm_unmark_all_short_term_for_reference	#
	.loc 1 2125 0
	movl	$0, %eax	#,
	call	mm_unmark_all_long_term_for_reference	#
	.loc 1 2126 0
	movq	img(%rip), %rax	# img, img.60
	movl	$1, 72644(%rax)	#, img.60_14->last_has_mmco_5
	.loc 1 2127 0
	jmp	.L409	#
.L407:
	.loc 1 2129 0
	movq	-8(%rbp), %rax	# tmp_drpm, tmp94
	movl	12(%rax), %edx	# tmp_drpm_5->long_term_frame_idx, D.14887
	movq	-24(%rbp), %rax	# p, tmp95
	movl	%edx, %esi	# D.14887,
	movq	%rax, %rdi	# tmp95,
	call	mm_mark_current_picture_long_term	#
	.loc 1 2130 0
	jmp	.L409	#
.L399:
	.loc 1 2132 0
	movl	$500, %esi	#,
	movl	$.LC18, %edi	#,
	call	error	#
.L409:
	.loc 1 2134 0
	movq	img(%rip), %rax	# img, img.61
	movq	-8(%rbp), %rdx	# tmp_drpm, tmp96
	movq	24(%rdx), %rdx	# tmp_drpm_5->Next, D.14888
	movq	%rdx, 72512(%rax)	# D.14888, img.61_16->dec_ref_pic_marking_buffer
	.loc 1 2135 0
	movq	-8(%rbp), %rax	# tmp_drpm, tmp97
	movq	%rax, %rdi	# tmp97,
	call	free	#
.L398:
	.loc 1 2095 0 discriminator 1
	movq	img(%rip), %rax	# img, img.62
	movq	72512(%rax), %rax	# img.62_2->dec_ref_pic_marking_buffer, D.14886
	testq	%rax, %rax	# D.14886
	jne	.L410	#,
	.loc 1 2137 0
	movq	img(%rip), %rax	# img, img.63
	movl	72644(%rax), %eax	# img.63_18->last_has_mmco_5, D.14887
	testl	%eax, %eax	# D.14887
	je	.L397	#,
	.loc 1 2139 0
	movq	-24(%rbp), %rax	# p, tmp98
	movl	$0, 6360(%rax)	#, p_9(D)->frame_num
	movq	-24(%rbp), %rax	# p, tmp99
	movl	$0, 6364(%rax)	#, p_9(D)->pic_num
	.loc 1 2140 0
	movq	-24(%rbp), %rax	# p, tmp100
	movl	$0, 4(%rax)	#, p_9(D)->poc
	.loc 1 2141 0
	movq	img(%rip), %rax	# img, img.64
	movl	$0, 72460(%rax)	#, img.64_20->ThisPOC
	.loc 1 2143 0
	movq	-24(%rbp), %rax	# p, tmp101
	movl	(%rax), %eax	# p_9(D)->structure, D.14889
	cmpl	$1, %eax	#, D.14889
	je	.L413	#,
	cmpl	$1, %eax	#, D.14889
	jb	.L414	#,
	cmpl	$2, %eax	#, D.14889
	je	.L415	#,
	jmp	.L412	#
.L413:
	.loc 1 2147 0
	movq	img(%rip), %rax	# img, img.65
	movl	$0, 72448(%rax)	#, img.65_22->toppoc
	.loc 1 2148 0
	jmp	.L412	#
.L415:
	.loc 1 2152 0
	movq	img(%rip), %rax	# img, img.66
	movl	$0, 72452(%rax)	#, img.66_23->bottompoc
	.loc 1 2153 0
	jmp	.L412	#
.L414:
	.loc 1 2157 0
	movq	img(%rip), %rax	# img, img.67
	movl	$0, 72456(%rax)	#, img.67_24->framepoc
	.loc 1 2158 0
	nop
.L412:
	.loc 1 2161 0
	movl	$0, %eax	#,
	call	flush_dpb	#
.L397:
	.loc 1 2163 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE45:
	.size	adaptive_memory_management, .-adaptive_memory_management
	.section	.rodata
	.align 8
.LC19:
	.string	"duplicate frame_num im short-term reference picture buffer"
	.text
	.globl	store_picture_in_dpb
	.type	store_picture_in_dpb, @function
store_picture_in_dpb:
.LFB46:
	.loc 1 2181 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# p, p
	.loc 1 2189 0
	movq	img(%rip), %rax	# img, img.68
	movl	72496(%rax), %eax	# img.68_2->nal_reference_idc, D.14892
	testl	%eax, %eax	# D.14892
	setne	%al	#, D.14893
	movzbl	%al, %edx	# D.14893, D.14892
	movq	-24(%rbp), %rax	# p, tmp135
	movl	%edx, 6380(%rax)	# D.14892, p_6(D)->used_for_reference
	.loc 1 2191 0
	movq	img(%rip), %rax	# img, img.69
	movl	$0, 72644(%rax)	#, img.69_7->last_has_mmco_5
	.loc 1 2192 0
	movq	img(%rip), %rax	# img, img.70
	movq	img(%rip), %rdx	# img, img.71
	movl	28(%rdx), %edx	# img.71_9->structure, D.14892
	cmpl	$2, %edx	#, D.14892
	sete	%dl	#, D.14893
	movzbl	%dl, %edx	# D.14893, D.14892
	movl	%edx, 72640(%rax)	# D.14892, img.70_8->last_pic_bottom_field
	.loc 1 2194 0
	movq	img(%rip), %rax	# img, img.72
	movq	14152(%rax), %rax	# img.72_13->currentPicture, D.14894
	movl	4(%rax), %eax	# _14->idr_flag, D.14892
	testl	%eax, %eax	# D.14892
	je	.L417	#,
	.loc 1 2195 0
	movq	-24(%rbp), %rax	# p, tmp136
	movq	%rax, %rdi	# tmp136,
	call	idr_memory_management	#
	jmp	.L418	#
.L417:
	.loc 1 2199 0
	movq	-24(%rbp), %rax	# p, tmp137
	movl	6380(%rax), %eax	# p_6(D)->used_for_reference, D.14892
	testl	%eax, %eax	# D.14892
	je	.L418	#,
	.loc 1 2199 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.73
	movl	72500(%rax), %eax	# img.73_17->adaptive_ref_pic_buffering_flag, D.14892
	testl	%eax, %eax	# D.14892
	je	.L418	#,
	.loc 1 2200 0 is_stmt 1
	movq	-24(%rbp), %rax	# p, tmp138
	movq	%rax, %rdi	# tmp138,
	call	adaptive_memory_management	#
.L418:
	.loc 1 2203 0
	movq	-24(%rbp), %rax	# p, tmp139
	movl	(%rax), %eax	# p_6(D)->structure, D.14895
	cmpl	$1, %eax	#, D.14895
	je	.L419	#,
	.loc 1 2203 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# p, tmp140
	movl	(%rax), %eax	# p_6(D)->structure, D.14895
	cmpl	$2, %eax	#, D.14895
	jne	.L420	#,
.L419:
	.loc 1 2206 0 is_stmt 1
	movq	dpb+56(%rip), %rax	# dpb.last_picture, D.14896
	testq	%rax, %rax	# D.14896
	je	.L420	#,
	.loc 1 2208 0
	movq	dpb+56(%rip), %rax	# dpb.last_picture, D.14896
	movl	20(%rax), %eax	# _22->frame_num, D.14897
	movl	%eax, %edx	# D.14897, D.14892
	movq	-24(%rbp), %rax	# p, tmp141
	movl	6364(%rax), %eax	# p_6(D)->pic_num, D.14892
	cmpl	%eax, %edx	# D.14892, D.14892
	jne	.L420	#,
	.loc 1 2210 0
	movq	-24(%rbp), %rax	# p, tmp142
	movl	(%rax), %eax	# p_6(D)->structure, D.14895
	cmpl	$1, %eax	#, D.14895
	jne	.L421	#,
	.loc 1 2210 0 is_stmt 0 discriminator 1
	movq	dpb+56(%rip), %rax	# dpb.last_picture, D.14896
	movl	(%rax), %eax	# _27->is_used, D.14892
	cmpl	$2, %eax	#, D.14892
	je	.L422	#,
.L421:
	.loc 1 2210 0 discriminator 2
	movq	-24(%rbp), %rax	# p, tmp143
	movl	(%rax), %eax	# p_6(D)->structure, D.14895
	cmpl	$2, %eax	#, D.14895
	jne	.L420	#,
	.loc 1 2210 0 discriminator 1
	movq	dpb+56(%rip), %rax	# dpb.last_picture, D.14896
	movl	(%rax), %eax	# _30->is_used, D.14892
	cmpl	$1, %eax	#, D.14892
	jne	.L420	#,
.L422:
	.loc 1 2212 0 is_stmt 1
	movq	-24(%rbp), %rax	# p, tmp144
	movl	6380(%rax), %eax	# p_6(D)->used_for_reference, D.14892
	testl	%eax, %eax	# D.14892
	je	.L423	#,
	.loc 1 2212 0 is_stmt 0 discriminator 1
	movq	dpb+56(%rip), %rax	# dpb.last_picture, D.14896
	movl	12(%rax), %eax	# _33->is_orig_reference, D.14892
	testl	%eax, %eax	# D.14892
	jne	.L424	#,
.L423:
	.loc 1 2213 0 is_stmt 1 discriminator 2
	movq	-24(%rbp), %rax	# p, tmp145
	movl	6380(%rax), %eax	# p_6(D)->used_for_reference, D.14892
	.loc 1 2212 0 discriminator 2
	testl	%eax, %eax	# D.14892
	jne	.L420	#,
	.loc 1 2213 0
	movq	dpb+56(%rip), %rax	# dpb.last_picture, D.14896
	movl	12(%rax), %eax	# _36->is_orig_reference, D.14892
	testl	%eax, %eax	# D.14892
	jne	.L420	#,
.L424:
	.loc 1 2215 0
	movq	dpb+56(%rip), %rax	# dpb.last_picture, D.14896
	movq	-24(%rbp), %rdx	# p, tmp146
	movq	%rdx, %rsi	# tmp146,
	movq	%rax, %rdi	# D.14896,
	call	insert_picture_in_dpb	#
	.loc 1 2216 0
	movl	$0, %eax	#,
	call	update_ref_list	#
	.loc 1 2217 0
	movl	$0, %eax	#,
	call	update_ltref_list	#
	.loc 1 2218 0
	movl	$0, %eax	#,
	call	dump_dpb	#
	.loc 1 2219 0
	movq	$0, dpb+56(%rip)	#, dpb.last_picture
	.loc 1 2220 0
	jmp	.L416	#
.L420:
	.loc 1 2230 0
	movq	img(%rip), %rax	# img, img.74
	movq	14152(%rax), %rax	# img.74_39->currentPicture, D.14894
	movl	4(%rax), %eax	# _40->idr_flag, D.14892
	testl	%eax, %eax	# D.14892
	jne	.L426	#,
	.loc 1 2230 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# p, tmp147
	movl	6380(%rax), %eax	# p_6(D)->used_for_reference, D.14892
	testl	%eax, %eax	# D.14892
	je	.L426	#,
	movq	img(%rip), %rax	# img, img.75
	movl	72500(%rax), %eax	# img.75_43->adaptive_ref_pic_buffering_flag, D.14892
	testl	%eax, %eax	# D.14892
	jne	.L426	#,
	.loc 1 2232 0 is_stmt 1
	movq	-24(%rbp), %rax	# p, tmp148
	movq	%rax, %rdi	# tmp148,
	call	sliding_window_memory_management	#
.L426:
	.loc 1 2236 0
	movl	dpb+28(%rip), %edx	# dpb.used_size, D.14897
	movl	dpb+24(%rip), %eax	# dpb.size, D.14897
	cmpl	%eax, %edx	# D.14897, D.14897
	jne	.L427	#,
	.loc 1 2238 0
	movl	$0, %eax	#,
	call	remove_unused_frame_from_dpb	#
	.loc 1 2242 0
	jmp	.L428	#
.L427:
	jmp	.L428	#
.L431:
	.loc 1 2245 0
	movq	-24(%rbp), %rax	# p, tmp149
	movl	6380(%rax), %eax	# p_6(D)->used_for_reference, D.14892
	testl	%eax, %eax	# D.14892
	jne	.L429	#,
	.loc 1 2247 0
	leaq	-8(%rbp), %rdx	#, tmp150
	leaq	-12(%rbp), %rax	#, tmp151
	movq	%rdx, %rsi	# tmp150,
	movq	%rax, %rdi	# tmp151,
	call	get_smallest_poc	#
	.loc 1 2248 0
	movl	-8(%rbp), %eax	# pos, pos.76
	cmpl	$-1, %eax	#, pos.76
	je	.L430	#,
	.loc 1 2248 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# p, tmp152
	movl	4(%rax), %edx	# p_6(D)->poc, D.14892
	movl	-12(%rbp), %eax	# poc, poc.77
	cmpl	%eax, %edx	# poc.77, D.14892
	jge	.L429	#,
.L430:
	.loc 1 2250 0 is_stmt 1
	movl	p_dec(%rip), %edx	# p_dec, p_dec.78
	movq	-24(%rbp), %rax	# p, tmp153
	movl	%edx, %esi	# p_dec.78,
	movq	%rax, %rdi	# tmp153,
	call	direct_output	#
	.loc 1 2251 0
	jmp	.L416	#
.L429:
	.loc 1 2255 0
	movl	$0, %eax	#,
	call	output_one_frame_from_dpb	#
.L428:
	.loc 1 2242 0 discriminator 1
	movl	dpb+28(%rip), %edx	# dpb.used_size, D.14897
	movl	dpb+24(%rip), %eax	# dpb.size, D.14897
	cmpl	%eax, %edx	# D.14897, D.14897
	je	.L431	#,
	.loc 1 2259 0
	movq	-24(%rbp), %rax	# p, tmp154
	movl	6380(%rax), %eax	# p_6(D)->used_for_reference, D.14892
	testl	%eax, %eax	# D.14892
	je	.L432	#,
	.loc 1 2259 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# p, tmp155
	movl	6376(%rax), %eax	# p_6(D)->is_long_term, D.14892
	testl	%eax, %eax	# D.14892
	jne	.L432	#,
	.loc 1 2261 0 is_stmt 1
	movl	$0, -4(%rbp)	#, i
	jmp	.L433	#
.L435:
	.loc 1 2263 0
	movq	dpb+8(%rip), %rax	# dpb.fs_ref, D.14898
	movl	-4(%rbp), %edx	# i, D.14899
	salq	$3, %rdx	#, D.14899
	addq	%rdx, %rax	# D.14899, D.14898
	movq	(%rax), %rax	# *_61, D.14896
	movl	20(%rax), %edx	# _62->frame_num, D.14897
	movq	-24(%rbp), %rax	# p, tmp156
	movl	6360(%rax), %eax	# p_6(D)->frame_num, D.14897
	cmpl	%eax, %edx	# D.14897, D.14897
	jne	.L434	#,
	.loc 1 2265 0
	movl	$500, %esi	#,
	movl	$.LC19, %edi	#,
	call	error	#
.L434:
	.loc 1 2261 0
	addl	$1, -4(%rbp)	#, i
.L433:
	.loc 1 2261 0 is_stmt 0 discriminator 1
	movl	dpb+32(%rip), %eax	# dpb.ref_frames_in_buffer, D.14897
	cmpl	-4(%rbp), %eax	# i, D.14897
	ja	.L435	#,
.L432:
	.loc 1 2272 0 is_stmt 1
	movq	dpb(%rip), %rax	# dpb.fs, D.14898
	movl	dpb+28(%rip), %edx	# dpb.used_size, D.14897
	movl	%edx, %edx	# D.14897, D.14899
	salq	$3, %rdx	#, D.14899
	addq	%rdx, %rax	# D.14899, D.14898
	movq	(%rax), %rax	# *_70, D.14896
	movq	-24(%rbp), %rdx	# p, tmp157
	movq	%rdx, %rsi	# tmp157,
	movq	%rax, %rdi	# D.14896,
	call	insert_picture_in_dpb	#
	.loc 1 2274 0
	movq	-24(%rbp), %rax	# p, tmp158
	movl	(%rax), %eax	# p_6(D)->structure, D.14895
	testl	%eax, %eax	# D.14895
	je	.L436	#,
	.loc 1 2276 0
	movq	dpb(%rip), %rax	# dpb.fs, D.14898
	movl	dpb+28(%rip), %edx	# dpb.used_size, D.14897
	movl	%edx, %edx	# D.14897, D.14899
	salq	$3, %rdx	#, D.14899
	addq	%rdx, %rax	# D.14899, D.14898
	movq	(%rax), %rax	# *_77, D.14896
	movq	%rax, dpb+56(%rip)	# D.14896, dpb.last_picture
	jmp	.L437	#
.L436:
	.loc 1 2280 0
	movq	$0, dpb+56(%rip)	#, dpb.last_picture
.L437:
	.loc 1 2283 0 discriminator 1
	movl	dpb+28(%rip), %eax	# dpb.used_size, D.14897
	addl	$1, %eax	#, D.14897
	movl	%eax, dpb+28(%rip)	# D.14897, dpb.used_size
	.loc 1 2285 0 discriminator 1
	movl	$0, %eax	#,
	call	update_ref_list	#
	.loc 1 2286 0 discriminator 1
	movl	$0, %eax	#,
	call	update_ltref_list	#
	.loc 1 2287 0 discriminator 1
	movl	$0, %eax	#,
	call	dump_dpb	#
.L416:
	.loc 1 2288 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	store_picture_in_dpb, .-store_picture_in_dpb
	.section	.rodata
	.align 8
.LC20:
	.string	"replace_top_pic_with_frame: error storing reference frame (top field not found)"
	.text
	.globl	replace_top_pic_with_frame
	.type	replace_top_pic_with_frame, @function
replace_top_pic_with_frame:
.LFB47:
	.loc 1 2303 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# p, p
	.loc 1 2304 0
	movq	$0, -8(%rbp)	#, fs
	.loc 1 2310 0
	movq	img(%rip), %rax	# img, img.79
	movl	72496(%rax), %eax	# img.79_5->nal_reference_idc, D.14901
	testl	%eax, %eax	# D.14901
	setne	%al	#, D.14902
	movzbl	%al, %edx	# D.14902, D.14901
	movq	-24(%rbp), %rax	# p, tmp86
	movl	%edx, 6380(%rax)	# D.14901, p_9(D)->used_for_reference
	.loc 1 2312 0
	movq	-24(%rbp), %rax	# p, tmp87
	movl	6380(%rax), %eax	# p_9(D)->used_for_reference, D.14901
	testl	%eax, %eax	# D.14901
	je	.L440	#,
	.loc 1 2314 0
	movq	-24(%rbp), %rax	# p, tmp88
	movq	%rax, %rdi	# tmp88,
	call	UnifiedOneForthPix	#
.L440:
	.loc 1 2317 0
	movl	$0, -12(%rbp)	#, found
	.loc 1 2319 0
	movl	$0, -16(%rbp)	#, i
	jmp	.L441	#
.L444:
	.loc 1 2321 0
	movq	dpb(%rip), %rax	# dpb.fs, D.14904
	movl	-16(%rbp), %edx	# i, D.14905
	salq	$3, %rdx	#, D.14905
	addq	%rdx, %rax	# D.14905, D.14904
	movq	(%rax), %rax	# *_17, D.14906
	movl	20(%rax), %edx	# _18->frame_num, D.14903
	movq	img(%rip), %rax	# img, img.80
	movl	72464(%rax), %eax	# img.80_20->frame_num, D.14903
	cmpl	%eax, %edx	# D.14903, D.14903
	jne	.L442	#,
	.loc 1 2321 0 is_stmt 0 discriminator 1
	movq	dpb(%rip), %rax	# dpb.fs, D.14904
	movl	-16(%rbp), %edx	# i, D.14905
	salq	$3, %rdx	#, D.14905
	addq	%rdx, %rax	# D.14905, D.14904
	movq	(%rax), %rax	# *_25, D.14906
	movl	(%rax), %eax	# _26->is_used, D.14901
	cmpl	$1, %eax	#, D.14901
	jne	.L442	#,
	.loc 1 2323 0 is_stmt 1
	movl	$1, -12(%rbp)	#, found
	.loc 1 2324 0
	movq	dpb(%rip), %rax	# dpb.fs, D.14904
	movl	-16(%rbp), %edx	# i, D.14905
	salq	$3, %rdx	#, D.14905
	addq	%rdx, %rax	# D.14905, D.14904
	movq	(%rax), %rax	# *_32, tmp89
	movq	%rax, -8(%rbp)	# tmp89, fs
	.loc 1 2325 0
	jmp	.L443	#
.L442:
	.loc 1 2319 0
	addl	$1, -16(%rbp)	#, i
.L441:
	.loc 1 2319 0 is_stmt 0 discriminator 1
	movl	dpb+28(%rip), %eax	# dpb.used_size, D.14903
	cmpl	-16(%rbp), %eax	# i, D.14903
	ja	.L444	#,
.L443:
	.loc 1 2329 0 is_stmt 1
	cmpl	$0, -12(%rbp)	#, found
	jne	.L445	#,
	.loc 1 2331 0
	movl	$500, %esi	#,
	movl	$.LC20, %edi	#,
	call	error	#
.L445:
	.loc 1 2334 0
	movq	-8(%rbp), %rax	# fs, tmp90
	movq	48(%rax), %rax	# fs_1->top_field, D.14907
	movq	%rax, %rdi	# D.14907,
	call	free_storable_picture	#
	.loc 1 2335 0
	movq	-8(%rbp), %rax	# fs, tmp91
	movq	$0, 48(%rax)	#, fs_1->top_field
	.loc 1 2336 0
	movq	-8(%rbp), %rax	# fs, tmp92
	movq	-24(%rbp), %rdx	# p, tmp93
	movq	%rdx, 40(%rax)	# tmp93, fs_1->frame
	.loc 1 2337 0
	movq	-8(%rbp), %rax	# fs, tmp94
	movl	$3, (%rax)	#, fs_1->is_used
	.loc 1 2338 0
	movq	-24(%rbp), %rax	# p, tmp95
	movl	6380(%rax), %eax	# p_9(D)->used_for_reference, D.14901
	testl	%eax, %eax	# D.14901
	je	.L446	#,
	.loc 1 2340 0
	movq	-8(%rbp), %rax	# fs, tmp96
	movl	$3, 4(%rax)	#, fs_1->is_reference
	.loc 1 2341 0
	movq	-24(%rbp), %rax	# p, tmp97
	movl	6376(%rax), %eax	# p_9(D)->is_long_term, D.14901
	testl	%eax, %eax	# D.14901
	je	.L446	#,
	.loc 1 2343 0
	movq	-8(%rbp), %rax	# fs, tmp98
	movl	$3, 8(%rax)	#, fs_1->is_long_term
.L446:
	.loc 1 2347 0
	movq	-8(%rbp), %rax	# fs, tmp99
	movq	%rax, %rdi	# tmp99,
	call	dpb_split_field	#
	.loc 1 2348 0
	movl	$0, %eax	#,
	call	update_ref_list	#
	.loc 1 2349 0
	movl	$0, %eax	#,
	call	update_ltref_list	#
	.loc 1 2350 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	replace_top_pic_with_frame, .-replace_top_pic_with_frame
	.type	insert_picture_in_dpb, @function
insert_picture_in_dpb:
.LFB48:
	.loc 1 2367 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# fs, fs
	movq	%rsi, -16(%rbp)	# p, p
	.loc 1 2373 0
	movq	-16(%rbp), %rax	# p, tmp92
	movl	6380(%rax), %eax	# p_1(D)->used_for_reference, D.14909
	testl	%eax, %eax	# D.14909
	je	.L448	#,
	.loc 1 2375 0
	movq	-16(%rbp), %rax	# p, tmp93
	movq	%rax, %rdi	# tmp93,
	call	UnifiedOneForthPix	#
.L448:
	.loc 1 2378 0
	movq	-16(%rbp), %rax	# p, tmp94
	movl	(%rax), %eax	# p_1(D)->structure, D.14910
	cmpl	$1, %eax	#, D.14910
	je	.L450	#,
	cmpl	$1, %eax	#, D.14910
	jb	.L451	#,
	cmpl	$2, %eax	#, D.14910
	je	.L452	#,
	jmp	.L449	#
.L451:
	.loc 1 2381 0
	movq	-8(%rbp), %rax	# fs, tmp95
	movq	-16(%rbp), %rdx	# p, tmp96
	movq	%rdx, 40(%rax)	# tmp96, fs_4(D)->frame
	.loc 1 2382 0
	movq	-8(%rbp), %rax	# fs, tmp97
	movl	$3, (%rax)	#, fs_4(D)->is_used
	.loc 1 2383 0
	movq	-16(%rbp), %rax	# p, tmp98
	movl	6380(%rax), %eax	# p_1(D)->used_for_reference, D.14909
	testl	%eax, %eax	# D.14909
	je	.L453	#,
	.loc 1 2385 0
	movq	-8(%rbp), %rax	# fs, tmp99
	movl	$3, 4(%rax)	#, fs_4(D)->is_reference
	.loc 1 2386 0
	movq	-8(%rbp), %rax	# fs, tmp100
	movl	$3, 12(%rax)	#, fs_4(D)->is_orig_reference
	.loc 1 2387 0
	movq	-16(%rbp), %rax	# p, tmp101
	movl	6376(%rax), %eax	# p_1(D)->is_long_term, D.14909
	testl	%eax, %eax	# D.14909
	je	.L453	#,
	.loc 1 2389 0
	movq	-8(%rbp), %rax	# fs, tmp102
	movl	$3, 8(%rax)	#, fs_4(D)->is_long_term
.L453:
	.loc 1 2393 0
	movq	-8(%rbp), %rax	# fs, tmp103
	movq	%rax, %rdi	# tmp103,
	call	dpb_split_field	#
	.loc 1 2394 0
	jmp	.L449	#
.L450:
	.loc 1 2396 0
	movq	-8(%rbp), %rax	# fs, tmp104
	movq	-16(%rbp), %rdx	# p, tmp105
	movq	%rdx, 48(%rax)	# tmp105, fs_4(D)->top_field
	.loc 1 2397 0
	movq	-8(%rbp), %rax	# fs, tmp106
	movl	(%rax), %eax	# fs_4(D)->is_used, D.14909
	orl	$1, %eax	#, D.14909
	movl	%eax, %edx	# D.14909, D.14909
	movq	-8(%rbp), %rax	# fs, tmp107
	movl	%edx, (%rax)	# D.14909, fs_4(D)->is_used
	.loc 1 2398 0
	movq	-16(%rbp), %rax	# p, tmp108
	movl	6380(%rax), %eax	# p_1(D)->used_for_reference, D.14909
	testl	%eax, %eax	# D.14909
	je	.L454	#,
	.loc 1 2400 0
	movq	-8(%rbp), %rax	# fs, tmp109
	movl	4(%rax), %eax	# fs_4(D)->is_reference, D.14909
	orl	$1, %eax	#, D.14909
	movl	%eax, %edx	# D.14909, D.14909
	movq	-8(%rbp), %rax	# fs, tmp110
	movl	%edx, 4(%rax)	# D.14909, fs_4(D)->is_reference
	.loc 1 2401 0
	movq	-8(%rbp), %rax	# fs, tmp111
	movl	12(%rax), %eax	# fs_4(D)->is_orig_reference, D.14909
	orl	$1, %eax	#, D.14909
	movl	%eax, %edx	# D.14909, D.14909
	movq	-8(%rbp), %rax	# fs, tmp112
	movl	%edx, 12(%rax)	# D.14909, fs_4(D)->is_orig_reference
	.loc 1 2402 0
	movq	-16(%rbp), %rax	# p, tmp113
	movl	6376(%rax), %eax	# p_1(D)->is_long_term, D.14909
	testl	%eax, %eax	# D.14909
	je	.L454	#,
	.loc 1 2404 0
	movq	-8(%rbp), %rax	# fs, tmp114
	movl	8(%rax), %eax	# fs_4(D)->is_long_term, D.14909
	orl	$1, %eax	#, D.14909
	movl	%eax, %edx	# D.14909, D.14909
	movq	-8(%rbp), %rax	# fs, tmp115
	movl	%edx, 8(%rax)	# D.14909, fs_4(D)->is_long_term
	.loc 1 2405 0
	movq	-16(%rbp), %rax	# p, tmp116
	movl	6372(%rax), %edx	# p_1(D)->long_term_frame_idx, D.14909
	movq	-8(%rbp), %rax	# fs, tmp117
	movl	%edx, 28(%rax)	# D.14909, fs_4(D)->long_term_frame_idx
.L454:
	.loc 1 2408 0
	movq	-8(%rbp), %rax	# fs, tmp118
	movl	(%rax), %eax	# fs_4(D)->is_used, D.14909
	cmpl	$3, %eax	#, D.14909
	jne	.L455	#,
	.loc 1 2411 0
	movq	-8(%rbp), %rax	# fs, tmp119
	movq	%rax, %rdi	# tmp119,
	call	dpb_combine_field	#
	.loc 1 2417 0
	jmp	.L449	#
.L455:
	.loc 1 2414 0
	movq	-16(%rbp), %rax	# p, tmp120
	movl	4(%rax), %edx	# p_1(D)->poc, D.14909
	movq	-8(%rbp), %rax	# fs, tmp121
	movl	%edx, 36(%rax)	# D.14909, fs_4(D)->poc
	.loc 1 2415 0
	movq	-16(%rbp), %rax	# p, tmp122
	movq	%rax, %rdi	# tmp122,
	call	gen_field_ref_ids	#
	.loc 1 2417 0
	jmp	.L449	#
.L452:
	.loc 1 2419 0
	movq	-8(%rbp), %rax	# fs, tmp123
	movq	-16(%rbp), %rdx	# p, tmp124
	movq	%rdx, 56(%rax)	# tmp124, fs_4(D)->bottom_field
	.loc 1 2420 0
	movq	-8(%rbp), %rax	# fs, tmp125
	movl	(%rax), %eax	# fs_4(D)->is_used, D.14909
	orl	$2, %eax	#, D.14909
	movl	%eax, %edx	# D.14909, D.14909
	movq	-8(%rbp), %rax	# fs, tmp126
	movl	%edx, (%rax)	# D.14909, fs_4(D)->is_used
	.loc 1 2421 0
	movq	-16(%rbp), %rax	# p, tmp127
	movl	6380(%rax), %eax	# p_1(D)->used_for_reference, D.14909
	testl	%eax, %eax	# D.14909
	je	.L457	#,
	.loc 1 2423 0
	movq	-8(%rbp), %rax	# fs, tmp128
	movl	4(%rax), %eax	# fs_4(D)->is_reference, D.14909
	orl	$2, %eax	#, D.14909
	movl	%eax, %edx	# D.14909, D.14909
	movq	-8(%rbp), %rax	# fs, tmp129
	movl	%edx, 4(%rax)	# D.14909, fs_4(D)->is_reference
	.loc 1 2424 0
	movq	-8(%rbp), %rax	# fs, tmp130
	movl	12(%rax), %eax	# fs_4(D)->is_orig_reference, D.14909
	orl	$2, %eax	#, D.14909
	movl	%eax, %edx	# D.14909, D.14909
	movq	-8(%rbp), %rax	# fs, tmp131
	movl	%edx, 12(%rax)	# D.14909, fs_4(D)->is_orig_reference
	.loc 1 2425 0
	movq	-16(%rbp), %rax	# p, tmp132
	movl	6376(%rax), %eax	# p_1(D)->is_long_term, D.14909
	testl	%eax, %eax	# D.14909
	je	.L457	#,
	.loc 1 2427 0
	movq	-8(%rbp), %rax	# fs, tmp133
	movl	8(%rax), %eax	# fs_4(D)->is_long_term, D.14909
	orl	$2, %eax	#, D.14909
	movl	%eax, %edx	# D.14909, D.14909
	movq	-8(%rbp), %rax	# fs, tmp134
	movl	%edx, 8(%rax)	# D.14909, fs_4(D)->is_long_term
	.loc 1 2428 0
	movq	-16(%rbp), %rax	# p, tmp135
	movl	6372(%rax), %edx	# p_1(D)->long_term_frame_idx, D.14909
	movq	-8(%rbp), %rax	# fs, tmp136
	movl	%edx, 28(%rax)	# D.14909, fs_4(D)->long_term_frame_idx
.L457:
	.loc 1 2431 0
	movq	-8(%rbp), %rax	# fs, tmp137
	movl	(%rax), %eax	# fs_4(D)->is_used, D.14909
	cmpl	$3, %eax	#, D.14909
	jne	.L458	#,
	.loc 1 2434 0
	movq	-8(%rbp), %rax	# fs, tmp138
	movq	%rax, %rdi	# tmp138,
	call	dpb_combine_field	#
	.loc 1 2440 0
	jmp	.L460	#
.L458:
	.loc 1 2437 0
	movq	-16(%rbp), %rax	# p, tmp139
	movl	4(%rax), %edx	# p_1(D)->poc, D.14909
	movq	-8(%rbp), %rax	# fs, tmp140
	movl	%edx, 36(%rax)	# D.14909, fs_4(D)->poc
	.loc 1 2438 0
	movq	-16(%rbp), %rax	# p, tmp141
	movq	%rax, %rdi	# tmp141,
	call	gen_field_ref_ids	#
.L460:
	.loc 1 2440 0
	nop
.L449:
	.loc 1 2442 0
	movq	-16(%rbp), %rax	# p, tmp142
	movl	6364(%rax), %eax	# p_1(D)->pic_num, D.14909
	movl	%eax, %edx	# D.14909, D.14911
	movq	-8(%rbp), %rax	# fs, tmp143
	movl	%edx, 20(%rax)	# D.14911, fs_4(D)->frame_num
	.loc 1 2443 0
	movq	-16(%rbp), %rax	# p, tmp144
	movl	6384(%rax), %edx	# p_1(D)->is_output, D.14909
	movq	-8(%rbp), %rax	# fs, tmp145
	movl	%edx, 32(%rax)	# D.14909, fs_4(D)->is_output
	.loc 1 2445 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	insert_picture_in_dpb, .-insert_picture_in_dpb
	.type	is_used_for_reference, @function
is_used_for_reference:
.LFB49:
	.loc 1 2454 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# fs, fs
	.loc 1 2455 0
	movq	-8(%rbp), %rax	# fs, tmp75
	movl	4(%rax), %eax	# fs_2(D)->is_reference, D.14912
	testl	%eax, %eax	# D.14912
	je	.L462	#,
	.loc 1 2457 0
	movl	$1, %eax	#, D.14912
	jmp	.L463	#
.L462:
	.loc 1 2460 0
	movq	-8(%rbp), %rax	# fs, tmp76
	movl	(%rax), %eax	# fs_2(D)->is_used, D.14912
	cmpl	$3, %eax	#, D.14912
	jne	.L464	#,
	.loc 1 2462 0
	movq	-8(%rbp), %rax	# fs, tmp77
	movq	40(%rax), %rax	# fs_2(D)->frame, D.14913
	movl	6380(%rax), %eax	# _6->used_for_reference, D.14912
	testl	%eax, %eax	# D.14912
	je	.L464	#,
	.loc 1 2464 0
	movl	$1, %eax	#, D.14912
	jmp	.L463	#
.L464:
	.loc 1 2467 0
	movq	active_sps(%rip), %rax	# active_sps, active_sps.81
	movl	1148(%rax), %eax	# active_sps.81_9->frame_mbs_only_flag, D.14914
	testl	%eax, %eax	# D.14914
	jne	.L465	#,
	.loc 1 2469 0
	movq	-8(%rbp), %rax	# fs, tmp78
	movl	(%rax), %eax	# fs_2(D)->is_used, D.14912
	andl	$1, %eax	#, D.14912
	testl	%eax, %eax	# D.14912
	je	.L466	#,
	.loc 1 2471 0
	movq	-8(%rbp), %rax	# fs, tmp79
	movq	48(%rax), %rax	# fs_2(D)->top_field, D.14913
	movl	6380(%rax), %eax	# _13->used_for_reference, D.14912
	testl	%eax, %eax	# D.14912
	je	.L466	#,
	.loc 1 2473 0
	movl	$1, %eax	#, D.14912
	jmp	.L463	#
.L466:
	.loc 1 2477 0
	movq	-8(%rbp), %rax	# fs, tmp80
	movl	(%rax), %eax	# fs_2(D)->is_used, D.14912
	andl	$2, %eax	#, D.14912
	testl	%eax, %eax	# D.14912
	je	.L465	#,
	.loc 1 2479 0
	movq	-8(%rbp), %rax	# fs, tmp81
	movq	56(%rax), %rax	# fs_2(D)->bottom_field, D.14913
	movl	6380(%rax), %eax	# _18->used_for_reference, D.14912
	testl	%eax, %eax	# D.14912
	je	.L465	#,
	.loc 1 2481 0
	movl	$1, %eax	#, D.14912
	jmp	.L463	#
.L465:
	.loc 1 2485 0
	movl	$0, %eax	#, D.14912
.L463:
	.loc 1 2486 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	is_used_for_reference, .-is_used_for_reference
	.type	is_short_term_reference, @function
is_short_term_reference:
.LFB50:
	.loc 1 2496 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# fs, fs
	.loc 1 2498 0
	movq	-8(%rbp), %rax	# fs, tmp80
	movl	(%rax), %eax	# fs_2(D)->is_used, D.14915
	cmpl	$3, %eax	#, D.14915
	jne	.L468	#,
	.loc 1 2500 0
	movq	-8(%rbp), %rax	# fs, tmp81
	movq	40(%rax), %rax	# fs_2(D)->frame, D.14916
	movl	6380(%rax), %eax	# _4->used_for_reference, D.14915
	testl	%eax, %eax	# D.14915
	je	.L468	#,
	.loc 1 2500 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# fs, tmp82
	movq	40(%rax), %rax	# fs_2(D)->frame, D.14916
	movl	6376(%rax), %eax	# _6->is_long_term, D.14915
	testl	%eax, %eax	# D.14915
	jne	.L468	#,
	.loc 1 2502 0 is_stmt 1
	movl	$1, %eax	#, D.14915
	jmp	.L469	#
.L468:
	.loc 1 2505 0
	movq	active_sps(%rip), %rax	# active_sps, active_sps.82
	movl	1148(%rax), %eax	# active_sps.82_9->frame_mbs_only_flag, D.14917
	testl	%eax, %eax	# D.14917
	jne	.L470	#,
	.loc 1 2507 0
	movq	-8(%rbp), %rax	# fs, tmp83
	movl	(%rax), %eax	# fs_2(D)->is_used, D.14915
	andl	$1, %eax	#, D.14915
	testl	%eax, %eax	# D.14915
	je	.L471	#,
	.loc 1 2509 0
	movq	-8(%rbp), %rax	# fs, tmp84
	movq	48(%rax), %rax	# fs_2(D)->top_field, D.14916
	movl	6380(%rax), %eax	# _13->used_for_reference, D.14915
	testl	%eax, %eax	# D.14915
	je	.L471	#,
	.loc 1 2509 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# fs, tmp85
	movq	48(%rax), %rax	# fs_2(D)->top_field, D.14916
	movl	6376(%rax), %eax	# _15->is_long_term, D.14915
	testl	%eax, %eax	# D.14915
	jne	.L471	#,
	.loc 1 2511 0 is_stmt 1
	movl	$1, %eax	#, D.14915
	jmp	.L469	#
.L471:
	.loc 1 2515 0
	movq	-8(%rbp), %rax	# fs, tmp86
	movl	(%rax), %eax	# fs_2(D)->is_used, D.14915
	andl	$2, %eax	#, D.14915
	testl	%eax, %eax	# D.14915
	je	.L470	#,
	.loc 1 2517 0
	movq	-8(%rbp), %rax	# fs, tmp87
	movq	56(%rax), %rax	# fs_2(D)->bottom_field, D.14916
	movl	6380(%rax), %eax	# _20->used_for_reference, D.14915
	testl	%eax, %eax	# D.14915
	je	.L470	#,
	.loc 1 2517 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# fs, tmp88
	movq	56(%rax), %rax	# fs_2(D)->bottom_field, D.14916
	movl	6376(%rax), %eax	# _22->is_long_term, D.14915
	testl	%eax, %eax	# D.14915
	jne	.L470	#,
	.loc 1 2519 0 is_stmt 1
	movl	$1, %eax	#, D.14915
	jmp	.L469	#
.L470:
	.loc 1 2523 0
	movl	$0, %eax	#, D.14915
.L469:
	.loc 1 2524 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	is_short_term_reference, .-is_short_term_reference
	.type	is_long_term_reference, @function
is_long_term_reference:
.LFB51:
	.loc 1 2534 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# fs, fs
	.loc 1 2536 0
	movq	-8(%rbp), %rax	# fs, tmp80
	movl	(%rax), %eax	# fs_2(D)->is_used, D.14918
	cmpl	$3, %eax	#, D.14918
	jne	.L473	#,
	.loc 1 2538 0
	movq	-8(%rbp), %rax	# fs, tmp81
	movq	40(%rax), %rax	# fs_2(D)->frame, D.14919
	movl	6380(%rax), %eax	# _4->used_for_reference, D.14918
	testl	%eax, %eax	# D.14918
	je	.L473	#,
	.loc 1 2538 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# fs, tmp82
	movq	40(%rax), %rax	# fs_2(D)->frame, D.14919
	movl	6376(%rax), %eax	# _6->is_long_term, D.14918
	testl	%eax, %eax	# D.14918
	je	.L473	#,
	.loc 1 2540 0 is_stmt 1
	movl	$1, %eax	#, D.14918
	jmp	.L474	#
.L473:
	.loc 1 2543 0
	movq	active_sps(%rip), %rax	# active_sps, active_sps.83
	movl	1148(%rax), %eax	# active_sps.83_9->frame_mbs_only_flag, D.14920
	testl	%eax, %eax	# D.14920
	jne	.L475	#,
	.loc 1 2545 0
	movq	-8(%rbp), %rax	# fs, tmp83
	movl	(%rax), %eax	# fs_2(D)->is_used, D.14918
	andl	$1, %eax	#, D.14918
	testl	%eax, %eax	# D.14918
	je	.L476	#,
	.loc 1 2547 0
	movq	-8(%rbp), %rax	# fs, tmp84
	movq	48(%rax), %rax	# fs_2(D)->top_field, D.14919
	movl	6380(%rax), %eax	# _13->used_for_reference, D.14918
	testl	%eax, %eax	# D.14918
	je	.L476	#,
	.loc 1 2547 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# fs, tmp85
	movq	48(%rax), %rax	# fs_2(D)->top_field, D.14919
	movl	6376(%rax), %eax	# _15->is_long_term, D.14918
	testl	%eax, %eax	# D.14918
	je	.L476	#,
	.loc 1 2549 0 is_stmt 1
	movl	$1, %eax	#, D.14918
	jmp	.L474	#
.L476:
	.loc 1 2553 0
	movq	-8(%rbp), %rax	# fs, tmp86
	movl	(%rax), %eax	# fs_2(D)->is_used, D.14918
	andl	$2, %eax	#, D.14918
	testl	%eax, %eax	# D.14918
	je	.L475	#,
	.loc 1 2555 0
	movq	-8(%rbp), %rax	# fs, tmp87
	movq	56(%rax), %rax	# fs_2(D)->bottom_field, D.14919
	movl	6380(%rax), %eax	# _20->used_for_reference, D.14918
	testl	%eax, %eax	# D.14918
	je	.L475	#,
	.loc 1 2555 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# fs, tmp88
	movq	56(%rax), %rax	# fs_2(D)->bottom_field, D.14919
	movl	6376(%rax), %eax	# _22->is_long_term, D.14918
	testl	%eax, %eax	# D.14918
	je	.L475	#,
	.loc 1 2557 0 is_stmt 1
	movl	$1, %eax	#, D.14918
	jmp	.L474	#
.L475:
	.loc 1 2561 0
	movl	$0, %eax	#, D.14918
.L474:
	.loc 1 2562 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	is_long_term_reference, .-is_long_term_reference
	.section	.rodata
.LC21:
	.string	"invalid frame store type"
	.text
	.type	remove_frame_from_dpb, @function
remove_frame_from_dpb:
.LFB52:
	.loc 1 2572 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -36(%rbp)	# pos, pos
	.loc 1 2573 0
	movq	dpb(%rip), %rax	# dpb.fs, D.14921
	movl	-36(%rbp), %edx	# pos, tmp93
	movslq	%edx, %rdx	# tmp93, D.14922
	salq	$3, %rdx	#, D.14922
	addq	%rdx, %rax	# D.14922, D.14921
	movq	(%rax), %rax	# *_6, tmp94
	movq	%rax, -16(%rbp)	# tmp94, fs
	.loc 1 2578 0
	movq	-16(%rbp), %rax	# fs, tmp95
	movl	(%rax), %eax	# fs_7->is_used, D.14923
	cmpl	$1, %eax	#, D.14923
	je	.L479	#,
	cmpl	$1, %eax	#, D.14923
	jg	.L480	#,
	testl	%eax, %eax	# D.14923
	je	.L487	#,
	jmp	.L478	#
.L480:
	cmpl	$2, %eax	#, D.14923
	je	.L482	#,
	cmpl	$3, %eax	#, D.14923
	jne	.L478	#,
	.loc 1 2581 0
	movq	-16(%rbp), %rax	# fs, tmp96
	movq	40(%rax), %rax	# fs_7->frame, D.14924
	movq	%rax, %rdi	# D.14924,
	call	free_storable_picture	#
	.loc 1 2582 0
	movq	-16(%rbp), %rax	# fs, tmp97
	movq	48(%rax), %rax	# fs_7->top_field, D.14924
	movq	%rax, %rdi	# D.14924,
	call	free_storable_picture	#
	.loc 1 2583 0
	movq	-16(%rbp), %rax	# fs, tmp98
	movq	56(%rax), %rax	# fs_7->bottom_field, D.14924
	movq	%rax, %rdi	# D.14924,
	call	free_storable_picture	#
	.loc 1 2584 0
	movq	-16(%rbp), %rax	# fs, tmp99
	movq	$0, 40(%rax)	#, fs_7->frame
	.loc 1 2585 0
	movq	-16(%rbp), %rax	# fs, tmp100
	movq	$0, 48(%rax)	#, fs_7->top_field
	.loc 1 2586 0
	movq	-16(%rbp), %rax	# fs, tmp101
	movq	$0, 56(%rax)	#, fs_7->bottom_field
	.loc 1 2587 0
	jmp	.L484	#
.L482:
	.loc 1 2589 0
	movq	-16(%rbp), %rax	# fs, tmp102
	movq	56(%rax), %rax	# fs_7->bottom_field, D.14924
	movq	%rax, %rdi	# D.14924,
	call	free_storable_picture	#
	.loc 1 2590 0
	movq	-16(%rbp), %rax	# fs, tmp103
	movq	$0, 56(%rax)	#, fs_7->bottom_field
	.loc 1 2591 0
	jmp	.L484	#
.L479:
	.loc 1 2593 0
	movq	-16(%rbp), %rax	# fs, tmp104
	movq	48(%rax), %rax	# fs_7->top_field, D.14924
	movq	%rax, %rdi	# D.14924,
	call	free_storable_picture	#
	.loc 1 2594 0
	movq	-16(%rbp), %rax	# fs, tmp105
	movq	$0, 48(%rax)	#, fs_7->top_field
	.loc 1 2595 0
	jmp	.L484	#
.L478:
	.loc 1 2599 0
	movl	$500, %esi	#,
	movl	$.LC21, %edi	#,
	call	error	#
	jmp	.L484	#
.L487:
	.loc 1 2597 0
	nop
.L484:
	.loc 1 2601 0
	movq	-16(%rbp), %rax	# fs, tmp106
	movl	$0, (%rax)	#, fs_7->is_used
	.loc 1 2602 0
	movq	-16(%rbp), %rax	# fs, tmp107
	movl	$0, 8(%rax)	#, fs_7->is_long_term
	.loc 1 2603 0
	movq	-16(%rbp), %rax	# fs, tmp108
	movl	$0, 4(%rax)	#, fs_7->is_reference
	.loc 1 2604 0
	movq	-16(%rbp), %rax	# fs, tmp109
	movl	$0, 12(%rax)	#, fs_7->is_orig_reference
	.loc 1 2607 0
	movq	dpb(%rip), %rax	# dpb.fs, D.14921
	movl	-36(%rbp), %edx	# pos, tmp110
	movslq	%edx, %rdx	# tmp110, D.14922
	salq	$3, %rdx	#, D.14922
	addq	%rdx, %rax	# D.14922, D.14921
	movq	(%rax), %rax	# *_17, tmp111
	movq	%rax, -8(%rbp)	# tmp111, tmp
	.loc 1 2609 0
	movl	-36(%rbp), %eax	# pos, tmp112
	movl	%eax, -20(%rbp)	# tmp112, i
	jmp	.L485	#
.L486:
	.loc 1 2611 0 discriminator 2
	movq	dpb(%rip), %rax	# dpb.fs, D.14921
	movl	-20(%rbp), %edx	# i, D.14922
	salq	$3, %rdx	#, D.14922
	addq	%rax, %rdx	# D.14921, D.14921
	movq	dpb(%rip), %rax	# dpb.fs, D.14921
	movl	-20(%rbp), %ecx	# i, tmp113
	addl	$1, %ecx	#, D.14925
	movl	%ecx, %ecx	# D.14925, D.14922
	salq	$3, %rcx	#, D.14922
	addq	%rcx, %rax	# D.14922, D.14921
	movq	(%rax), %rax	# *_30, D.14926
	movq	%rax, (%rdx)	# D.14926, *_25
	.loc 1 2609 0 discriminator 2
	addl	$1, -20(%rbp)	#, i
.L485:
	.loc 1 2609 0 is_stmt 0 discriminator 1
	movl	dpb+28(%rip), %eax	# dpb.used_size, D.14925
	subl	$1, %eax	#, D.14925
	cmpl	-20(%rbp), %eax	# i, D.14925
	ja	.L486	#,
	.loc 1 2613 0 is_stmt 1
	movq	dpb(%rip), %rax	# dpb.fs, D.14921
	movl	dpb+28(%rip), %edx	# dpb.used_size, D.14925
	subl	$1, %edx	#, D.14925
	movl	%edx, %edx	# D.14925, D.14922
	salq	$3, %rdx	#, D.14922
	addq	%rax, %rdx	# D.14921, D.14921
	movq	-8(%rbp), %rax	# tmp, tmp114
	movq	%rax, (%rdx)	# tmp114, *_38
	.loc 1 2614 0
	movl	dpb+28(%rip), %eax	# dpb.used_size, D.14925
	subl	$1, %eax	#, D.14925
	movl	%eax, dpb+28(%rip)	# D.14925, dpb.used_size
	.loc 1 2615 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	remove_frame_from_dpb, .-remove_frame_from_dpb
	.section	.rodata
	.align 8
.LC22:
	.string	"Cannot determine smallest POC, DPB empty."
	.text
	.type	get_smallest_poc, @function
get_smallest_poc:
.LFB53:
	.loc 1 2624 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# poc, poc
	movq	%rsi, -32(%rbp)	# pos, pos
	.loc 1 2627 0
	movl	dpb+28(%rip), %eax	# dpb.used_size, D.14929
	testl	%eax, %eax	# D.14929
	jne	.L489	#,
	.loc 1 2629 0
	movl	$150, %esi	#,
	movl	$.LC22, %edi	#,
	call	error	#
.L489:
	.loc 1 2632 0
	movq	-32(%rbp), %rax	# pos, tmp81
	movl	$-1, (%rax)	#, *pos_3(D)
	.loc 1 2633 0
	movq	-24(%rbp), %rax	# poc, tmp82
	movl	$2147483647, (%rax)	#, *poc_4(D)
	.loc 1 2634 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L490	#
.L492:
	.loc 1 2636 0
	movq	-24(%rbp), %rax	# poc, tmp83
	movl	(%rax), %edx	# *poc_4(D), D.14930
	movq	dpb(%rip), %rax	# dpb.fs, D.14931
	movl	-4(%rbp), %ecx	# i, D.14932
	salq	$3, %rcx	#, D.14932
	addq	%rcx, %rax	# D.14932, D.14931
	movq	(%rax), %rax	# *_11, D.14933
	movl	36(%rax), %eax	# _12->poc, D.14930
	cmpl	%eax, %edx	# D.14930, D.14930
	jle	.L491	#,
	.loc 1 2636 0 is_stmt 0 discriminator 1
	movq	dpb(%rip), %rax	# dpb.fs, D.14931
	movl	-4(%rbp), %edx	# i, D.14932
	salq	$3, %rdx	#, D.14932
	addq	%rdx, %rax	# D.14932, D.14931
	movq	(%rax), %rax	# *_17, D.14933
	movl	32(%rax), %eax	# _18->is_output, D.14930
	testl	%eax, %eax	# D.14930
	jne	.L491	#,
	.loc 1 2638 0 is_stmt 1
	movq	dpb(%rip), %rax	# dpb.fs, D.14931
	movl	-4(%rbp), %edx	# i, D.14932
	salq	$3, %rdx	#, D.14932
	addq	%rdx, %rax	# D.14932, D.14931
	movq	(%rax), %rax	# *_23, D.14933
	movl	36(%rax), %edx	# _24->poc, D.14930
	movq	-24(%rbp), %rax	# poc, tmp84
	movl	%edx, (%rax)	# D.14930, *poc_4(D)
	.loc 1 2639 0
	movl	-4(%rbp), %edx	# i, i.84
	movq	-32(%rbp), %rax	# pos, tmp85
	movl	%edx, (%rax)	# i.84, *pos_3(D)
.L491:
	.loc 1 2634 0
	addl	$1, -4(%rbp)	#, i
.L490:
	.loc 1 2634 0 is_stmt 0 discriminator 1
	movl	dpb+28(%rip), %eax	# dpb.used_size, D.14929
	cmpl	-4(%rbp), %eax	# i, D.14929
	ja	.L492	#,
	.loc 1 2642 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE53:
	.size	get_smallest_poc, .-get_smallest_poc
	.type	remove_unused_frame_from_dpb, @function
remove_unused_frame_from_dpb:
.LFB54:
	.loc 1 2651 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 2655 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L494	#
.L497:
	.loc 1 2657 0
	movq	dpb(%rip), %rax	# dpb.fs, D.14937
	movl	-4(%rbp), %edx	# i, D.14938
	salq	$3, %rdx	#, D.14938
	addq	%rdx, %rax	# D.14938, D.14937
	movq	(%rax), %rax	# *_8, D.14939
	movl	32(%rax), %eax	# _9->is_output, D.14935
	testl	%eax, %eax	# D.14935
	je	.L495	#,
	.loc 1 2657 0 is_stmt 0 discriminator 1
	movq	dpb(%rip), %rax	# dpb.fs, D.14937
	movl	-4(%rbp), %edx	# i, D.14938
	salq	$3, %rdx	#, D.14938
	addq	%rdx, %rax	# D.14938, D.14937
	movq	(%rax), %rax	# *_14, D.14939
	movq	%rax, %rdi	# D.14939,
	call	is_used_for_reference	#
	testl	%eax, %eax	# D.14935
	jne	.L495	#,
	.loc 1 2659 0 is_stmt 1
	movl	-4(%rbp), %eax	# i, i.85
	movl	%eax, %edi	# i.85,
	call	remove_frame_from_dpb	#
	.loc 1 2660 0
	movl	$1, %eax	#, D.14935
	jmp	.L496	#
.L495:
	.loc 1 2655 0
	addl	$1, -4(%rbp)	#, i
.L494:
	.loc 1 2655 0 is_stmt 0 discriminator 1
	movl	dpb+28(%rip), %eax	# dpb.used_size, D.14936
	cmpl	-4(%rbp), %eax	# i, D.14936
	ja	.L497	#,
	.loc 1 2663 0 is_stmt 1
	movl	$0, %eax	#, D.14935
.L496:
	.loc 1 2664 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE54:
	.size	remove_unused_frame_from_dpb, .-remove_unused_frame_from_dpb
	.section	.rodata
	.align 8
.LC23:
	.string	"Cannot output frame, DPB empty."
	.align 8
.LC24:
	.string	"no frames for output available"
	.align 8
.LC25:
	.string	"output POC must be in ascending order"
	.text
	.type	output_one_frame_from_dpb, @function
output_one_frame_from_dpb:
.LFB55:
	.loc 1 2673 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 2676 0
	movl	dpb+28(%rip), %eax	# dpb.used_size, D.14940
	testl	%eax, %eax	# D.14940
	jne	.L499	#,
	.loc 1 2678 0
	movl	$150, %esi	#,
	movl	$.LC23, %edi	#,
	call	error	#
.L499:
	.loc 1 2682 0
	leaq	-4(%rbp), %rdx	#, tmp80
	leaq	-8(%rbp), %rax	#, tmp81
	movq	%rdx, %rsi	# tmp80,
	movq	%rax, %rdi	# tmp81,
	call	get_smallest_poc	#
	.loc 1 2684 0
	movl	-4(%rbp), %eax	# pos, pos.86
	cmpl	$-1, %eax	#, pos.86
	jne	.L500	#,
	.loc 1 2686 0
	movl	$150, %esi	#,
	movl	$.LC24, %edi	#,
	call	error	#
.L500:
	.loc 1 2693 0
	movl	p_dec(%rip), %eax	# p_dec, p_dec.87
	cmpl	$-1, %eax	#, p_dec.87
	je	.L501	#,
	.loc 1 2693 0 is_stmt 0 discriminator 1
	movl	p_dec(%rip), %edx	# p_dec, p_dec.88
	movq	dpb(%rip), %rax	# dpb.fs, D.14941
	movl	-4(%rbp), %ecx	# pos, pos.89
	movslq	%ecx, %rcx	# pos.89, D.14942
	salq	$3, %rcx	#, D.14942
	addq	%rcx, %rax	# D.14942, D.14941
	movq	(%rax), %rax	# *_9, D.14943
	movl	%edx, %esi	# p_dec.88,
	movq	%rax, %rdi	# D.14943,
	call	write_stored_frame	#
.L501:
	.loc 1 2698 0 is_stmt 1
	movl	dpb+40(%rip), %edx	# dpb.last_output_poc, D.14944
	movl	-8(%rbp), %eax	# poc, poc.90
	cmpl	%eax, %edx	# poc.90, D.14944
	jl	.L502	#,
	.loc 1 2700 0
	movl	$150, %esi	#,
	movl	$.LC25, %edi	#,
	call	error	#
.L502:
	.loc 1 2702 0
	movl	-8(%rbp), %eax	# poc, poc.91
	movl	%eax, dpb+40(%rip)	# poc.91, dpb.last_output_poc
	.loc 1 2704 0
	movq	dpb(%rip), %rax	# dpb.fs, D.14941
	movl	-4(%rbp), %edx	# pos, pos.92
	movslq	%edx, %rdx	# pos.92, D.14942
	salq	$3, %rdx	#, D.14942
	addq	%rdx, %rax	# D.14942, D.14941
	movq	(%rax), %rax	# *_18, D.14943
	movq	%rax, %rdi	# D.14943,
	call	is_used_for_reference	#
	testl	%eax, %eax	# D.14944
	jne	.L498	#,
	.loc 1 2706 0
	movl	-4(%rbp), %eax	# pos, pos.93
	movl	%eax, %edi	# pos.93,
	call	remove_frame_from_dpb	#
.L498:
	.loc 1 2708 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE55:
	.size	output_one_frame_from_dpb, .-output_one_frame_from_dpb
	.globl	flush_dpb
	.type	flush_dpb, @function
flush_dpb:
.LFB56:
	.loc 1 2719 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	.loc 1 2726 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L505	#
.L506:
	.loc 1 2728 0 discriminator 2
	movq	dpb(%rip), %rax	# dpb.fs, D.14949
	movl	-4(%rbp), %edx	# i, D.14950
	salq	$3, %rdx	#, D.14950
	addq	%rdx, %rax	# D.14950, D.14949
	movq	(%rax), %rax	# *_7, D.14951
	movq	%rax, %rdi	# D.14951,
	call	unmark_for_reference	#
	.loc 1 2726 0 discriminator 2
	addl	$1, -4(%rbp)	#, i
.L505:
	.loc 1 2726 0 is_stmt 0 discriminator 1
	movl	dpb+28(%rip), %eax	# dpb.used_size, D.14948
	cmpl	-4(%rbp), %eax	# i, D.14948
	ja	.L506	#,
	.loc 1 2731 0 is_stmt 1
	nop
.L507:
	.loc 1 2731 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#,
	call	remove_unused_frame_from_dpb	#
	testl	%eax, %eax	# D.14952
	jne	.L507	#,
	.loc 1 2734 0 is_stmt 1
	jmp	.L508	#
.L509:
	.loc 1 2736 0
	movl	$0, %eax	#,
	call	output_one_frame_from_dpb	#
.L508:
	.loc 1 2734 0 discriminator 1
	movl	dpb+28(%rip), %eax	# dpb.used_size, D.14948
	testl	%eax, %eax	# D.14948
	jne	.L509	#,
	.loc 1 2739 0
	movl	$-2147483648, dpb+40(%rip)	#, dpb.last_output_poc
	.loc 1 2740 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE56:
	.size	flush_dpb, .-flush_dpb
	.globl	gen_field_ref_ids
	.type	gen_field_ref_ids, @function
gen_field_ref_ids:
.LFB57:
	.loc 1 2746 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# p, p
	.loc 1 2749 0
	movl	$0, -16(%rbp)	#, i
	jmp	.L511	#
.L518:
	.loc 1 2751 0
	movl	$0, -12(%rbp)	#, j
	jmp	.L512	#
.L517:
	.loc 1 2753 0
	movq	-24(%rbp), %rax	# p, tmp112
	movq	6480(%rax), %rax	# p_6(D)->ref_idx, D.14954
	movq	(%rax), %rax	# *_12, D.14955
	movl	-16(%rbp), %edx	# i, tmp113
	movslq	%edx, %rdx	# tmp113, D.14956
	salq	$3, %rdx	#, D.14956
	addq	%rdx, %rax	# D.14956, D.14955
	movq	(%rax), %rax	# *_16, D.14957
	movl	-12(%rbp), %edx	# j, tmp114
	movslq	%edx, %rdx	# tmp114, D.14956
	addq	%rdx, %rdx	# D.14956
	addq	%rdx, %rax	# D.14956, D.14957
	movzwl	(%rax), %eax	# *_20, D.14958
	cwtl
	movl	%eax, -8(%rbp)	# tmp115, dummylist0
	.loc 1 2754 0
	movq	-24(%rbp), %rax	# p, tmp116
	movq	6480(%rax), %rax	# p_6(D)->ref_idx, D.14954
	addq	$8, %rax	#, D.14954
	movq	(%rax), %rax	# *_24, D.14955
	movl	-16(%rbp), %edx	# i, tmp117
	movslq	%edx, %rdx	# tmp117, D.14956
	salq	$3, %rdx	#, D.14956
	addq	%rdx, %rax	# D.14956, D.14955
	movq	(%rax), %rax	# *_28, D.14957
	movl	-12(%rbp), %edx	# j, tmp118
	movslq	%edx, %rdx	# tmp118, D.14956
	addq	%rdx, %rdx	# D.14956
	addq	%rdx, %rax	# D.14956, D.14957
	movzwl	(%rax), %eax	# *_32, D.14958
	cwtl
	movl	%eax, -4(%rbp)	# tmp119, dummylist1
	.loc 1 2756 0
	movq	-24(%rbp), %rax	# p, tmp120
	movq	6496(%rax), %rax	# p_6(D)->ref_id, D.14959
	movq	(%rax), %rax	# *_35, D.14960
	movl	-16(%rbp), %edx	# i, tmp121
	movslq	%edx, %rdx	# tmp121, D.14956
	salq	$3, %rdx	#, D.14956
	addq	%rdx, %rax	# D.14956, D.14960
	movq	(%rax), %rax	# *_39, D.14961
	movl	-12(%rbp), %edx	# j, tmp122
	movslq	%edx, %rdx	# tmp122, D.14956
	salq	$3, %rdx	#, D.14956
	addq	%rax, %rdx	# D.14961, D.14961
	cmpl	$0, -8(%rbp)	#, dummylist0
	js	.L513	#,
	.loc 1 2756 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# p, tmp123
	movl	-8(%rbp), %ecx	# dummylist0, tmp125
	movslq	%ecx, %rcx	# tmp125, tmp124
	addq	$2, %rcx	#, tmp126
	movq	8(%rax,%rcx,8), %rax	# p_6(D)->ref_pic_num, iftmp.94
	jmp	.L514	#
.L513:
	.loc 1 2756 0 discriminator 2
	movl	$0, %eax	#, iftmp.94
.L514:
	.loc 1 2756 0 discriminator 3
	movq	%rax, (%rdx)	# iftmp.94, *_43
	.loc 1 2757 0 is_stmt 1 discriminator 3
	movq	-24(%rbp), %rax	# p, tmp127
	movq	6496(%rax), %rax	# p_6(D)->ref_id, D.14959
	addq	$8, %rax	#, D.14959
	movq	(%rax), %rax	# *_47, D.14960
	movl	-16(%rbp), %edx	# i, tmp128
	movslq	%edx, %rdx	# tmp128, D.14956
	salq	$3, %rdx	#, D.14956
	addq	%rdx, %rax	# D.14956, D.14960
	movq	(%rax), %rax	# *_51, D.14961
	movl	-12(%rbp), %edx	# j, tmp129
	movslq	%edx, %rdx	# tmp129, D.14956
	salq	$3, %rdx	#, D.14956
	addq	%rax, %rdx	# D.14961, D.14961
	cmpl	$0, -4(%rbp)	#, dummylist1
	js	.L515	#,
	.loc 1 2757 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# p, tmp130
	movl	-4(%rbp), %ecx	# dummylist1, tmp132
	movslq	%ecx, %rcx	# tmp132, tmp131
	addq	$35, %rcx	#, tmp133
	movq	8(%rax,%rcx,8), %rax	# p_6(D)->ref_pic_num, iftmp.95
	jmp	.L516	#
.L515:
	.loc 1 2757 0 discriminator 2
	movl	$0, %eax	#, iftmp.95
.L516:
	.loc 1 2757 0 discriminator 3
	movq	%rax, (%rdx)	# iftmp.95, *_55
	.loc 1 2758 0 is_stmt 1 discriminator 3
	movq	-24(%rbp), %rax	# p, tmp134
	movq	6520(%rax), %rax	# p_6(D)->field_frame, D.14962
	movl	-16(%rbp), %edx	# i, tmp135
	movslq	%edx, %rdx	# tmp135, D.14956
	salq	$3, %rdx	#, D.14956
	addq	%rdx, %rax	# D.14956, D.14962
	movq	(%rax), %rdx	# *_61, D.14963
	movl	-12(%rbp), %eax	# j, tmp136
	cltq
	addq	%rdx, %rax	# D.14963, D.14963
	movb	$1, (%rax)	#, *_64
	.loc 1 2751 0 discriminator 3
	addl	$1, -12(%rbp)	#, j
.L512:
	.loc 1 2751 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# p, tmp137
	movl	6396(%rax), %eax	# p_6(D)->size_y, D.14953
	leal	3(%rax), %edx	#, tmp139
	testl	%eax, %eax	# tmp138
	cmovs	%edx, %eax	# tmp139,, tmp138
	sarl	$2, %eax	#, tmp140
	cmpl	-12(%rbp), %eax	# j, D.14953
	jg	.L517	#,
	.loc 1 2749 0 is_stmt 1
	addl	$1, -16(%rbp)	#, i
.L511:
	.loc 1 2749 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# p, tmp141
	movl	6392(%rax), %eax	# p_6(D)->size_x, D.14953
	leal	3(%rax), %edx	#, tmp143
	testl	%eax, %eax	# tmp142
	cmovs	%edx, %eax	# tmp143,, tmp142
	sarl	$2, %eax	#, tmp144
	cmpl	-16(%rbp), %eax	# i, D.14953
	jg	.L518	#,
	.loc 1 2761 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE57:
	.size	gen_field_ref_ids, .-gen_field_ref_ids
	.globl	dpb_split_field
	.type	dpb_split_field, @function
dpb_split_field:
.LFB58:
	.loc 1 2770 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -88(%rbp)	# fs, fs
	.loc 1 2774 0
	movq	-88(%rbp), %rax	# fs, tmp1499
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movl	4(%rax), %edx	# _46->poc, D.14966
	movq	-88(%rbp), %rax	# fs, tmp1500
	movl	%edx, 36(%rax)	# D.14966, fs_45(D)->poc
	.loc 1 2776 0
	movq	-88(%rbp), %rax	# fs, tmp1501
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movl	6556(%rax), %eax	# _48->frame_mbs_only_flag, D.14966
	testl	%eax, %eax	# D.14966
	jne	.L520	#,
	.loc 1 2778 0
	movq	-88(%rbp), %rax	# fs, tmp1502
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movl	6404(%rax), %eax	# _50->size_y_cr, D.14966
	movl	%eax, %edx	# D.14966, tmp1503
	shrl	$31, %edx	#, tmp1503
	addl	%edx, %eax	# tmp1503, tmp1504
	sarl	%eax	# tmp1505
	movl	%eax, %esi	# tmp1505, D.14966
	movq	-88(%rbp), %rax	# fs, tmp1506
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movl	6400(%rax), %ecx	# _53->size_x_cr, D.14966
	movq	-88(%rbp), %rax	# fs, tmp1507
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movl	6396(%rax), %eax	# _55->size_y, D.14966
	movl	%eax, %edx	# D.14966, tmp1508
	shrl	$31, %edx	#, tmp1508
	addl	%edx, %eax	# tmp1508, tmp1509
	sarl	%eax	# tmp1510
	movl	%eax, %edx	# tmp1510, D.14966
	movq	-88(%rbp), %rax	# fs, tmp1511
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movl	6392(%rax), %eax	# _58->size_x, D.14966
	movl	%esi, %r8d	# D.14966,
	movl	%eax, %esi	# D.14966,
	movl	$1, %edi	#,
	call	alloc_storable_picture	#
	movq	-88(%rbp), %rdx	# fs, tmp1512
	movq	%rax, 48(%rdx)	# D.14965, fs_45(D)->top_field
	.loc 1 2779 0
	movq	-88(%rbp), %rax	# fs, tmp1513
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movl	6404(%rax), %eax	# _61->size_y_cr, D.14966
	movl	%eax, %edx	# D.14966, tmp1514
	shrl	$31, %edx	#, tmp1514
	addl	%edx, %eax	# tmp1514, tmp1515
	sarl	%eax	# tmp1516
	movl	%eax, %esi	# tmp1516, D.14966
	movq	-88(%rbp), %rax	# fs, tmp1517
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movl	6400(%rax), %ecx	# _64->size_x_cr, D.14966
	movq	-88(%rbp), %rax	# fs, tmp1518
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movl	6396(%rax), %eax	# _66->size_y, D.14966
	movl	%eax, %edx	# D.14966, tmp1519
	shrl	$31, %edx	#, tmp1519
	addl	%edx, %eax	# tmp1519, tmp1520
	sarl	%eax	# tmp1521
	movl	%eax, %edx	# tmp1521, D.14966
	movq	-88(%rbp), %rax	# fs, tmp1522
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movl	6392(%rax), %eax	# _69->size_x, D.14966
	movl	%esi, %r8d	# D.14966,
	movl	%eax, %esi	# D.14966,
	movl	$2, %edi	#,
	call	alloc_storable_picture	#
	movq	-88(%rbp), %rdx	# fs, tmp1523
	movq	%rax, 56(%rdx)	# D.14965, fs_45(D)->bottom_field
	.loc 1 2781 0
	movl	$0, -68(%rbp)	#, i
	jmp	.L521	#
.L522:
	.loc 1 2783 0 discriminator 2
	movq	-88(%rbp), %rax	# fs, tmp1524
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movl	6392(%rax), %eax	# _76->size_x, D.14966
	cltq
	leaq	(%rax,%rax), %rdx	#, D.14967
	movq	-88(%rbp), %rax	# fs, tmp1525
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movq	6424(%rax), %rax	# _80->imgY, D.14968
	movl	-68(%rbp), %ecx	# i, tmp1526
	movslq	%ecx, %rcx	# tmp1526, D.14967
	salq	$4, %rcx	#, D.14967
	addq	%rcx, %rax	# D.14967, D.14968
	movq	(%rax), %rcx	# *_84, D.14969
	movq	-88(%rbp), %rax	# fs, tmp1527
	movq	48(%rax), %rax	# fs_45(D)->top_field, D.14965
	movq	6424(%rax), %rax	# _86->imgY, D.14968
	movl	-68(%rbp), %esi	# i, tmp1528
	movslq	%esi, %rsi	# tmp1528, D.14967
	salq	$3, %rsi	#, D.14967
	addq	%rsi, %rax	# D.14967, D.14968
	movq	(%rax), %rax	# *_90, D.14969
	movq	%rcx, %rsi	# D.14969,
	movq	%rax, %rdi	# D.14969,
	call	memcpy	#
	.loc 1 2781 0 discriminator 2
	addl	$1, -68(%rbp)	#, i
.L521:
	.loc 1 2781 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# fs, tmp1529
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movl	6396(%rax), %eax	# _73->size_y, D.14966
	movl	%eax, %edx	# D.14966, tmp1530
	shrl	$31, %edx	#, tmp1530
	addl	%edx, %eax	# tmp1530, tmp1531
	sarl	%eax	# tmp1532
	cmpl	-68(%rbp), %eax	# i, D.14966
	jg	.L522	#,
	.loc 1 2786 0 is_stmt 1
	movl	$0, -68(%rbp)	#, i
	jmp	.L523	#
.L524:
	.loc 1 2788 0 discriminator 2
	movq	-88(%rbp), %rax	# fs, tmp1533
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movl	6400(%rax), %eax	# _97->size_x_cr, D.14966
	cltq
	leaq	(%rax,%rax), %rdx	#, D.14967
	movq	-88(%rbp), %rax	# fs, tmp1534
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movq	6464(%rax), %rax	# _101->imgUV, D.14970
	movq	(%rax), %rax	# *_102, D.14968
	movl	-68(%rbp), %ecx	# i, tmp1535
	movslq	%ecx, %rcx	# tmp1535, D.14967
	salq	$4, %rcx	#, D.14967
	addq	%rcx, %rax	# D.14967, D.14968
	movq	(%rax), %rcx	# *_106, D.14969
	movq	-88(%rbp), %rax	# fs, tmp1536
	movq	48(%rax), %rax	# fs_45(D)->top_field, D.14965
	movq	6464(%rax), %rax	# _108->imgUV, D.14970
	movq	(%rax), %rax	# *_109, D.14968
	movl	-68(%rbp), %esi	# i, tmp1537
	movslq	%esi, %rsi	# tmp1537, D.14967
	salq	$3, %rsi	#, D.14967
	addq	%rsi, %rax	# D.14967, D.14968
	movq	(%rax), %rax	# *_113, D.14969
	movq	%rcx, %rsi	# D.14969,
	movq	%rax, %rdi	# D.14969,
	call	memcpy	#
	.loc 1 2789 0 discriminator 2
	movq	-88(%rbp), %rax	# fs, tmp1538
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movl	6400(%rax), %eax	# _115->size_x_cr, D.14966
	cltq
	leaq	(%rax,%rax), %rdx	#, D.14967
	movq	-88(%rbp), %rax	# fs, tmp1539
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movq	6464(%rax), %rax	# _119->imgUV, D.14970
	addq	$8, %rax	#, D.14970
	movq	(%rax), %rax	# *_121, D.14968
	movl	-68(%rbp), %ecx	# i, tmp1540
	movslq	%ecx, %rcx	# tmp1540, D.14967
	salq	$4, %rcx	#, D.14967
	addq	%rcx, %rax	# D.14967, D.14968
	movq	(%rax), %rcx	# *_125, D.14969
	movq	-88(%rbp), %rax	# fs, tmp1541
	movq	48(%rax), %rax	# fs_45(D)->top_field, D.14965
	movq	6464(%rax), %rax	# _127->imgUV, D.14970
	addq	$8, %rax	#, D.14970
	movq	(%rax), %rax	# *_129, D.14968
	movl	-68(%rbp), %esi	# i, tmp1542
	movslq	%esi, %rsi	# tmp1542, D.14967
	salq	$3, %rsi	#, D.14967
	addq	%rsi, %rax	# D.14967, D.14968
	movq	(%rax), %rax	# *_133, D.14969
	movq	%rcx, %rsi	# D.14969,
	movq	%rax, %rdi	# D.14969,
	call	memcpy	#
	.loc 1 2786 0 discriminator 2
	addl	$1, -68(%rbp)	#, i
.L523:
	.loc 1 2786 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# fs, tmp1543
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movl	6404(%rax), %eax	# _94->size_y_cr, D.14966
	movl	%eax, %edx	# D.14966, tmp1544
	shrl	$31, %edx	#, tmp1544
	addl	%edx, %eax	# tmp1544, tmp1545
	sarl	%eax	# tmp1546
	cmpl	-68(%rbp), %eax	# i, D.14966
	jg	.L524	#,
	.loc 1 2792 0 is_stmt 1
	movl	$0, -68(%rbp)	#, i
	jmp	.L525	#
.L526:
	.loc 1 2794 0 discriminator 2
	movq	-88(%rbp), %rax	# fs, tmp1547
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movl	6392(%rax), %eax	# _140->size_x, D.14966
	cltq
	leaq	(%rax,%rax), %rdx	#, D.14967
	movq	-88(%rbp), %rax	# fs, tmp1548
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movq	6424(%rax), %rax	# _144->imgY, D.14968
	movl	-68(%rbp), %ecx	# i, tmp1549
	movslq	%ecx, %rcx	# tmp1549, D.14971
	salq	$4, %rcx	#, D.14971
	addq	$8, %rcx	#, D.14971
	addq	%rcx, %rax	# D.14971, D.14968
	movq	(%rax), %rcx	# *_149, D.14969
	movq	-88(%rbp), %rax	# fs, tmp1550
	movq	56(%rax), %rax	# fs_45(D)->bottom_field, D.14965
	movq	6424(%rax), %rax	# _151->imgY, D.14968
	movl	-68(%rbp), %esi	# i, tmp1551
	movslq	%esi, %rsi	# tmp1551, D.14967
	salq	$3, %rsi	#, D.14967
	addq	%rsi, %rax	# D.14967, D.14968
	movq	(%rax), %rax	# *_155, D.14969
	movq	%rcx, %rsi	# D.14969,
	movq	%rax, %rdi	# D.14969,
	call	memcpy	#
	.loc 1 2792 0 discriminator 2
	addl	$1, -68(%rbp)	#, i
.L525:
	.loc 1 2792 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# fs, tmp1552
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movl	6396(%rax), %eax	# _137->size_y, D.14966
	movl	%eax, %edx	# D.14966, tmp1553
	shrl	$31, %edx	#, tmp1553
	addl	%edx, %eax	# tmp1553, tmp1554
	sarl	%eax	# tmp1555
	cmpl	-68(%rbp), %eax	# i, D.14966
	jg	.L526	#,
	.loc 1 2797 0 is_stmt 1
	movl	$0, -68(%rbp)	#, i
	jmp	.L527	#
.L528:
	.loc 1 2799 0 discriminator 2
	movq	-88(%rbp), %rax	# fs, tmp1556
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movl	6400(%rax), %eax	# _162->size_x_cr, D.14966
	cltq
	leaq	(%rax,%rax), %rdx	#, D.14967
	movq	-88(%rbp), %rax	# fs, tmp1557
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movq	6464(%rax), %rax	# _166->imgUV, D.14970
	movq	(%rax), %rax	# *_167, D.14968
	movl	-68(%rbp), %ecx	# i, tmp1558
	movslq	%ecx, %rcx	# tmp1558, D.14971
	salq	$4, %rcx	#, D.14971
	addq	$8, %rcx	#, D.14971
	addq	%rcx, %rax	# D.14971, D.14968
	movq	(%rax), %rcx	# *_172, D.14969
	movq	-88(%rbp), %rax	# fs, tmp1559
	movq	56(%rax), %rax	# fs_45(D)->bottom_field, D.14965
	movq	6464(%rax), %rax	# _174->imgUV, D.14970
	movq	(%rax), %rax	# *_175, D.14968
	movl	-68(%rbp), %esi	# i, tmp1560
	movslq	%esi, %rsi	# tmp1560, D.14967
	salq	$3, %rsi	#, D.14967
	addq	%rsi, %rax	# D.14967, D.14968
	movq	(%rax), %rax	# *_179, D.14969
	movq	%rcx, %rsi	# D.14969,
	movq	%rax, %rdi	# D.14969,
	call	memcpy	#
	.loc 1 2800 0 discriminator 2
	movq	-88(%rbp), %rax	# fs, tmp1561
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movl	6400(%rax), %eax	# _181->size_x_cr, D.14966
	cltq
	leaq	(%rax,%rax), %rdx	#, D.14967
	movq	-88(%rbp), %rax	# fs, tmp1562
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movq	6464(%rax), %rax	# _185->imgUV, D.14970
	addq	$8, %rax	#, D.14970
	movq	(%rax), %rax	# *_187, D.14968
	movl	-68(%rbp), %ecx	# i, tmp1563
	movslq	%ecx, %rcx	# tmp1563, D.14971
	salq	$4, %rcx	#, D.14971
	addq	$8, %rcx	#, D.14971
	addq	%rcx, %rax	# D.14971, D.14968
	movq	(%rax), %rcx	# *_192, D.14969
	movq	-88(%rbp), %rax	# fs, tmp1564
	movq	56(%rax), %rax	# fs_45(D)->bottom_field, D.14965
	movq	6464(%rax), %rax	# _194->imgUV, D.14970
	addq	$8, %rax	#, D.14970
	movq	(%rax), %rax	# *_196, D.14968
	movl	-68(%rbp), %esi	# i, tmp1565
	movslq	%esi, %rsi	# tmp1565, D.14967
	salq	$3, %rsi	#, D.14967
	addq	%rsi, %rax	# D.14967, D.14968
	movq	(%rax), %rax	# *_200, D.14969
	movq	%rcx, %rsi	# D.14969,
	movq	%rax, %rdi	# D.14969,
	call	memcpy	#
	.loc 1 2797 0 discriminator 2
	addl	$1, -68(%rbp)	#, i
.L527:
	.loc 1 2797 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# fs, tmp1566
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movl	6404(%rax), %eax	# _159->size_y_cr, D.14966
	movl	%eax, %edx	# D.14966, tmp1567
	shrl	$31, %edx	#, tmp1567
	addl	%edx, %eax	# tmp1567, tmp1568
	sarl	%eax	# tmp1569
	cmpl	-68(%rbp), %eax	# i, D.14966
	jg	.L528	#,
	.loc 1 2803 0 is_stmt 1
	movq	-88(%rbp), %rax	# fs, tmp1570
	movq	48(%rax), %rax	# fs_45(D)->top_field, D.14965
	movq	%rax, %rdi	# D.14965,
	call	UnifiedOneForthPix	#
	.loc 1 2804 0
	movq	-88(%rbp), %rax	# fs, tmp1571
	movq	56(%rax), %rax	# fs_45(D)->bottom_field, D.14965
	movq	%rax, %rdi	# D.14965,
	call	UnifiedOneForthPix	#
	.loc 1 2806 0
	movq	-88(%rbp), %rax	# fs, tmp1572
	movq	48(%rax), %rax	# fs_45(D)->top_field, D.14965
	movq	-88(%rbp), %rdx	# fs, tmp1573
	movq	40(%rdx), %rdx	# fs_45(D)->frame, D.14965
	movl	8(%rdx), %edx	# _206->top_poc, D.14966
	movl	%edx, 4(%rax)	# D.14966, _205->poc
	.loc 1 2807 0
	movq	-88(%rbp), %rax	# fs, tmp1574
	movq	56(%rax), %rax	# fs_45(D)->bottom_field, D.14965
	movq	-88(%rbp), %rdx	# fs, tmp1575
	movq	40(%rdx), %rdx	# fs_45(D)->frame, D.14965
	movl	12(%rdx), %edx	# _209->bottom_poc, D.14966
	movl	%edx, 4(%rax)	# D.14966, _208->poc
	.loc 1 2809 0
	movq	-88(%rbp), %rax	# fs, tmp1576
	movq	48(%rax), %rax	# fs_45(D)->top_field, D.14965
	movq	-88(%rbp), %rdx	# fs, tmp1577
	movq	40(%rdx), %rdx	# fs_45(D)->frame, D.14965
	movl	16(%rdx), %edx	# _212->frame_poc, D.14966
	movl	%edx, 16(%rax)	# D.14966, _211->frame_poc
	.loc 1 2811 0
	movq	-88(%rbp), %rax	# fs, tmp1578
	movq	48(%rax), %rdx	# fs_45(D)->top_field, D.14965
	movq	-88(%rbp), %rax	# fs, tmp1579
	movq	56(%rax), %rax	# fs_45(D)->bottom_field, D.14965
	movq	-88(%rbp), %rcx	# fs, tmp1580
	movq	40(%rcx), %rcx	# fs_45(D)->frame, D.14965
	movl	12(%rcx), %ecx	# _216->bottom_poc, D.14966
	movl	%ecx, 12(%rax)	# D.14966, _215->bottom_poc
	movl	12(%rax), %eax	# _215->bottom_poc, D.14966
	movl	%eax, 12(%rdx)	# D.14966, _214->bottom_poc
	.loc 1 2812 0
	movq	-88(%rbp), %rax	# fs, tmp1581
	movq	48(%rax), %rdx	# fs_45(D)->top_field, D.14965
	movq	-88(%rbp), %rax	# fs, tmp1582
	movq	56(%rax), %rax	# fs_45(D)->bottom_field, D.14965
	movq	-88(%rbp), %rcx	# fs, tmp1583
	movq	40(%rcx), %rcx	# fs_45(D)->frame, D.14965
	movl	8(%rcx), %ecx	# _221->top_poc, D.14966
	movl	%ecx, 8(%rax)	# D.14966, _220->top_poc
	movl	8(%rax), %eax	# _220->top_poc, D.14966
	movl	%eax, 8(%rdx)	# D.14966, _219->top_poc
	.loc 1 2813 0
	movq	-88(%rbp), %rax	# fs, tmp1584
	movq	56(%rax), %rax	# fs_45(D)->bottom_field, D.14965
	movq	-88(%rbp), %rdx	# fs, tmp1585
	movq	40(%rdx), %rdx	# fs_45(D)->frame, D.14965
	movl	16(%rdx), %edx	# _225->frame_poc, D.14966
	movl	%edx, 16(%rax)	# D.14966, _224->frame_poc
	.loc 1 2815 0
	movq	-88(%rbp), %rax	# fs, tmp1586
	movq	48(%rax), %rdx	# fs_45(D)->top_field, D.14965
	movq	-88(%rbp), %rax	# fs, tmp1587
	movq	56(%rax), %rax	# fs_45(D)->bottom_field, D.14965
	.loc 1 2816 0
	movq	-88(%rbp), %rcx	# fs, tmp1588
	movq	40(%rcx), %rcx	# fs_45(D)->frame, D.14965
	movl	6380(%rcx), %ecx	# _229->used_for_reference, D.14966
	movl	%ecx, 6380(%rax)	# D.14966, _228->used_for_reference
	.loc 1 2815 0
	movl	6380(%rax), %eax	# _228->used_for_reference, D.14966
	movl	%eax, 6380(%rdx)	# D.14966, _227->used_for_reference
	.loc 1 2817 0
	movq	-88(%rbp), %rax	# fs, tmp1589
	movq	48(%rax), %rdx	# fs_45(D)->top_field, D.14965
	movq	-88(%rbp), %rax	# fs, tmp1590
	movq	56(%rax), %rax	# fs_45(D)->bottom_field, D.14965
	.loc 1 2818 0
	movq	-88(%rbp), %rcx	# fs, tmp1591
	movq	40(%rcx), %rcx	# fs_45(D)->frame, D.14965
	movl	6376(%rcx), %ecx	# _234->is_long_term, D.14966
	movl	%ecx, 6376(%rax)	# D.14966, _233->is_long_term
	.loc 1 2817 0
	movl	6376(%rax), %eax	# _233->is_long_term, D.14966
	movl	%eax, 6376(%rdx)	# D.14966, _232->is_long_term
	.loc 1 2819 0
	movq	-88(%rbp), %rax	# fs, tmp1592
	movq	48(%rax), %rax	# fs_45(D)->top_field, D.14965
	.loc 1 2820 0
	movq	-88(%rbp), %rdx	# fs, tmp1593
	movq	56(%rdx), %rdx	# fs_45(D)->bottom_field, D.14965
	.loc 1 2821 0
	movq	-88(%rbp), %rcx	# fs, tmp1594
	movq	40(%rcx), %rcx	# fs_45(D)->frame, D.14965
	movl	6372(%rcx), %ecx	# _239->long_term_frame_idx, D.14966
	movl	%ecx, 6372(%rdx)	# D.14966, _238->long_term_frame_idx
	.loc 1 2820 0
	movl	6372(%rdx), %edx	# _238->long_term_frame_idx, D.14966
	movl	%edx, 6372(%rax)	# D.14966, _237->long_term_frame_idx
	.loc 1 2819 0
	movl	6372(%rax), %edx	# _237->long_term_frame_idx, D.14966
	movq	-88(%rbp), %rax	# fs, tmp1595
	movl	%edx, 28(%rax)	# D.14966, fs_45(D)->long_term_frame_idx
	.loc 1 2823 0
	movq	-88(%rbp), %rax	# fs, tmp1596
	movq	48(%rax), %rdx	# fs_45(D)->top_field, D.14965
	movq	-88(%rbp), %rax	# fs, tmp1597
	movq	56(%rax), %rax	# fs_45(D)->bottom_field, D.14965
	movl	$1, 6412(%rax)	#, _244->coded_frame
	movl	6412(%rax), %eax	# _244->coded_frame, D.14966
	movl	%eax, 6412(%rdx)	# D.14966, _243->coded_frame
	.loc 1 2824 0
	movq	-88(%rbp), %rax	# fs, tmp1598
	movq	48(%rax), %rdx	# fs_45(D)->top_field, D.14965
	movq	-88(%rbp), %rax	# fs, tmp1599
	movq	56(%rax), %rax	# fs_45(D)->bottom_field, D.14965
	.loc 1 2825 0
	movq	-88(%rbp), %rcx	# fs, tmp1600
	movq	40(%rcx), %rcx	# fs_45(D)->frame, D.14965
	movl	6416(%rcx), %ecx	# _248->MbaffFrameFlag, D.14966
	movl	%ecx, 6416(%rax)	# D.14966, _247->MbaffFrameFlag
	.loc 1 2824 0
	movl	6416(%rax), %eax	# _247->MbaffFrameFlag, D.14966
	movl	%eax, 6416(%rdx)	# D.14966, _246->MbaffFrameFlag
	.loc 1 2827 0
	movq	-88(%rbp), %rax	# fs, tmp1601
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movq	-88(%rbp), %rdx	# fs, tmp1602
	movq	48(%rdx), %rdx	# fs_45(D)->top_field, D.14965
	movq	%rdx, 6528(%rax)	# D.14965, _251->top_field
	.loc 1 2828 0
	movq	-88(%rbp), %rax	# fs, tmp1603
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movq	-88(%rbp), %rdx	# fs, tmp1604
	movq	56(%rdx), %rdx	# fs_45(D)->bottom_field, D.14965
	movq	%rdx, 6536(%rax)	# D.14965, _253->bottom_field
	.loc 1 2830 0
	movq	-88(%rbp), %rax	# fs, tmp1605
	movq	48(%rax), %rax	# fs_45(D)->top_field, D.14965
	movq	-88(%rbp), %rdx	# fs, tmp1606
	movq	56(%rdx), %rdx	# fs_45(D)->bottom_field, D.14965
	movq	%rdx, 6536(%rax)	# D.14965, _255->bottom_field
	.loc 1 2831 0
	movq	-88(%rbp), %rax	# fs, tmp1607
	movq	48(%rax), %rax	# fs_45(D)->top_field, D.14965
	movq	-88(%rbp), %rdx	# fs, tmp1608
	movq	40(%rdx), %rdx	# fs_45(D)->frame, D.14965
	movq	%rdx, 6544(%rax)	# D.14965, _257->frame
	.loc 1 2832 0
	movq	-88(%rbp), %rax	# fs, tmp1609
	movq	56(%rax), %rax	# fs_45(D)->bottom_field, D.14965
	movq	-88(%rbp), %rdx	# fs, tmp1610
	movq	48(%rdx), %rdx	# fs_45(D)->top_field, D.14965
	movq	%rdx, 6528(%rax)	# D.14965, _259->top_field
	.loc 1 2833 0
	movq	-88(%rbp), %rax	# fs, tmp1611
	movq	56(%rax), %rax	# fs_45(D)->bottom_field, D.14965
	movq	-88(%rbp), %rdx	# fs, tmp1612
	movq	40(%rdx), %rdx	# fs_45(D)->frame, D.14965
	movq	%rdx, 6544(%rax)	# D.14965, _261->frame
	.loc 1 2835 0
	movq	-88(%rbp), %rax	# fs, tmp1613
	movq	48(%rax), %rdx	# fs_45(D)->top_field, D.14965
	movq	-88(%rbp), %rax	# fs, tmp1614
	movq	56(%rax), %rax	# fs_45(D)->bottom_field, D.14965
	movq	-88(%rbp), %rcx	# fs, tmp1615
	movq	40(%rcx), %rcx	# fs_45(D)->frame, D.14965
	movl	6552(%rcx), %ecx	# _265->chroma_format_idc, D.14966
	movl	%ecx, 6552(%rax)	# D.14966, _264->chroma_format_idc
	movl	6552(%rax), %eax	# _264->chroma_format_idc, D.14966
	movl	%eax, 6552(%rdx)	# D.14966, _263->chroma_format_idc
	.loc 1 2838 0
	movq	-88(%rbp), %rax	# fs, tmp1616
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movl	6556(%rax), %eax	# _268->frame_mbs_only_flag, D.14966
	testl	%eax, %eax	# D.14966
	jne	.L529	#,
	.loc 1 2840 0
	movl	$0, -68(%rbp)	#, i
	jmp	.L530	#
.L531:
	.loc 1 2842 0 discriminator 2
	movq	-88(%rbp), %rax	# fs, tmp1617
	movq	48(%rax), %rax	# fs_45(D)->top_field, D.14965
	movl	-68(%rbp), %edx	# i, tmp1618
	leal	(%rdx,%rdx), %esi	#, D.14966
	movq	-88(%rbp), %rdx	# fs, tmp1619
	movq	40(%rdx), %rdx	# fs_45(D)->frame, D.14965
	movl	-68(%rbp), %ecx	# i, tmp1620
	addl	%ecx, %ecx	# D.14966
	movslq	%ecx, %rcx	# D.14966, tmp1621
	addq	$101, %rcx	#, tmp1622
	movq	8(%rdx,%rcx,8), %rdx	# _274->ref_pic_num, D.14972
	movslq	%esi, %rcx	# D.14966, tmp1623
	addq	$35, %rcx	#, tmp1624
	movq	%rdx, 8(%rax,%rcx,8)	# D.14972, _272->ref_pic_num
	.loc 1 2843 0 discriminator 2
	movq	-88(%rbp), %rax	# fs, tmp1625
	movq	48(%rax), %rax	# fs_45(D)->top_field, D.14965
	movl	-68(%rbp), %edx	# i, tmp1626
	addl	%edx, %edx	# D.14966
	leal	1(%rdx), %esi	#, D.14966
	movq	-88(%rbp), %rdx	# fs, tmp1627
	movq	40(%rdx), %rdx	# fs_45(D)->frame, D.14965
	movl	-68(%rbp), %ecx	# i, tmp1628
	addl	%ecx, %ecx	# D.14966
	addl	$1, %ecx	#, D.14966
	movslq	%ecx, %rcx	# D.14966, tmp1629
	addq	$101, %rcx	#, tmp1630
	movq	8(%rdx,%rcx,8), %rdx	# _280->ref_pic_num, D.14972
	movslq	%esi, %rcx	# D.14966, tmp1631
	addq	$35, %rcx	#, tmp1632
	movq	%rdx, 8(%rax,%rcx,8)	# D.14972, _277->ref_pic_num
	.loc 1 2844 0 discriminator 2
	movq	-88(%rbp), %rax	# fs, tmp1633
	movq	56(%rax), %rax	# fs_45(D)->bottom_field, D.14965
	movl	-68(%rbp), %edx	# i, tmp1634
	leal	(%rdx,%rdx), %esi	#, D.14966
	movq	-88(%rbp), %rdx	# fs, tmp1635
	movq	40(%rdx), %rdx	# fs_45(D)->frame, D.14965
	movl	-68(%rbp), %ecx	# i, tmp1636
	addl	%ecx, %ecx	# D.14966
	movslq	%ecx, %rcx	# D.14966, tmp1637
	addq	$167, %rcx	#, tmp1638
	movq	8(%rdx,%rcx,8), %rdx	# _286->ref_pic_num, D.14972
	movslq	%esi, %rcx	# D.14966, tmp1639
	addq	$35, %rcx	#, tmp1640
	movq	%rdx, 8(%rax,%rcx,8)	# D.14972, _284->ref_pic_num
	.loc 1 2845 0 discriminator 2
	movq	-88(%rbp), %rax	# fs, tmp1641
	movq	56(%rax), %rax	# fs_45(D)->bottom_field, D.14965
	movl	-68(%rbp), %edx	# i, tmp1642
	addl	%edx, %edx	# D.14966
	leal	1(%rdx), %esi	#, D.14966
	movq	-88(%rbp), %rdx	# fs, tmp1643
	movq	40(%rdx), %rdx	# fs_45(D)->frame, D.14965
	movl	-68(%rbp), %ecx	# i, tmp1644
	addl	%ecx, %ecx	# D.14966
	addl	$1, %ecx	#, D.14966
	movslq	%ecx, %rcx	# D.14966, tmp1645
	addq	$167, %rcx	#, tmp1646
	movq	8(%rdx,%rcx,8), %rdx	# _292->ref_pic_num, D.14972
	movslq	%esi, %rcx	# D.14966, tmp1647
	addq	$35, %rcx	#, tmp1648
	movq	%rdx, 8(%rax,%rcx,8)	# D.14972, _289->ref_pic_num
	.loc 1 2840 0 discriminator 2
	addl	$1, -68(%rbp)	#, i
.L530:
	.loc 1 2840 0 is_stmt 0 discriminator 1
	movl	listXsize+4(%rip), %eax	# listXsize, D.14966
	cmpl	-68(%rbp), %eax	# i, D.14966
	jg	.L531	#,
	.loc 1 2848 0 is_stmt 1
	movl	$0, -68(%rbp)	#, i
	jmp	.L532	#
.L533:
	.loc 1 2850 0 discriminator 2
	movq	-88(%rbp), %rax	# fs, tmp1649
	movq	48(%rax), %rax	# fs_45(D)->top_field, D.14965
	movl	-68(%rbp), %edx	# i, tmp1650
	leal	(%rdx,%rdx), %esi	#, D.14966
	movq	-88(%rbp), %rdx	# fs, tmp1651
	movq	40(%rdx), %rdx	# fs_45(D)->frame, D.14965
	movl	-68(%rbp), %ecx	# i, tmp1652
	addl	%ecx, %ecx	# D.14966
	movslq	%ecx, %rcx	# D.14966, tmp1653
	addq	$68, %rcx	#, tmp1654
	movq	8(%rdx,%rcx,8), %rdx	# _301->ref_pic_num, D.14972
	movslq	%esi, %rcx	# D.14966, tmp1655
	addq	$2, %rcx	#, tmp1656
	movq	%rdx, 8(%rax,%rcx,8)	# D.14972, _299->ref_pic_num
	.loc 1 2851 0 discriminator 2
	movq	-88(%rbp), %rax	# fs, tmp1657
	movq	48(%rax), %rax	# fs_45(D)->top_field, D.14965
	movl	-68(%rbp), %edx	# i, tmp1658
	addl	%edx, %edx	# D.14966
	leal	1(%rdx), %esi	#, D.14966
	movq	-88(%rbp), %rdx	# fs, tmp1659
	movq	40(%rdx), %rdx	# fs_45(D)->frame, D.14965
	movl	-68(%rbp), %ecx	# i, tmp1660
	addl	%ecx, %ecx	# D.14966
	addl	$1, %ecx	#, D.14966
	movslq	%ecx, %rcx	# D.14966, tmp1661
	addq	$68, %rcx	#, tmp1662
	movq	8(%rdx,%rcx,8), %rdx	# _307->ref_pic_num, D.14972
	movslq	%esi, %rcx	# D.14966, tmp1663
	addq	$2, %rcx	#, tmp1664
	movq	%rdx, 8(%rax,%rcx,8)	# D.14972, _304->ref_pic_num
	.loc 1 2852 0 discriminator 2
	movq	-88(%rbp), %rax	# fs, tmp1665
	movq	56(%rax), %rax	# fs_45(D)->bottom_field, D.14965
	movl	-68(%rbp), %edx	# i, tmp1666
	leal	(%rdx,%rdx), %esi	#, D.14966
	movq	-88(%rbp), %rdx	# fs, tmp1667
	movq	40(%rdx), %rdx	# fs_45(D)->frame, D.14965
	movl	-68(%rbp), %ecx	# i, tmp1668
	addl	%ecx, %ecx	# D.14966
	movslq	%ecx, %rcx	# D.14966, tmp1669
	addq	$134, %rcx	#, tmp1670
	movq	8(%rdx,%rcx,8), %rdx	# _313->ref_pic_num, D.14972
	movslq	%esi, %rcx	# D.14966, tmp1671
	addq	$2, %rcx	#, tmp1672
	movq	%rdx, 8(%rax,%rcx,8)	# D.14972, _311->ref_pic_num
	.loc 1 2853 0 discriminator 2
	movq	-88(%rbp), %rax	# fs, tmp1673
	movq	56(%rax), %rax	# fs_45(D)->bottom_field, D.14965
	movl	-68(%rbp), %edx	# i, tmp1674
	addl	%edx, %edx	# D.14966
	leal	1(%rdx), %esi	#, D.14966
	movq	-88(%rbp), %rdx	# fs, tmp1675
	movq	40(%rdx), %rdx	# fs_45(D)->frame, D.14965
	movl	-68(%rbp), %ecx	# i, tmp1676
	addl	%ecx, %ecx	# D.14966
	addl	$1, %ecx	#, D.14966
	movslq	%ecx, %rcx	# D.14966, tmp1677
	addq	$134, %rcx	#, tmp1678
	movq	8(%rdx,%rcx,8), %rdx	# _319->ref_pic_num, D.14972
	movslq	%esi, %rcx	# D.14966, tmp1679
	addq	$2, %rcx	#, tmp1680
	movq	%rdx, 8(%rax,%rcx,8)	# D.14972, _316->ref_pic_num
	.loc 1 2848 0 discriminator 2
	addl	$1, -68(%rbp)	#, i
.L532:
	.loc 1 2848 0 is_stmt 0 discriminator 1
	movl	listXsize(%rip), %eax	# listXsize, D.14966
	cmpl	-68(%rbp), %eax	# i, D.14966
	jg	.L533	#,
	jmp	.L529	#
.L520:
	.loc 1 2860 0 is_stmt 1
	movq	-88(%rbp), %rax	# fs, tmp1681
	movq	$0, 48(%rax)	#, fs_45(D)->top_field
	.loc 1 2861 0
	movq	-88(%rbp), %rax	# fs, tmp1682
	movq	$0, 56(%rax)	#, fs_45(D)->bottom_field
	.loc 1 2862 0
	movq	-88(%rbp), %rax	# fs, tmp1683
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movq	$0, 6528(%rax)	#, _324->top_field
	.loc 1 2863 0
	movq	-88(%rbp), %rax	# fs, tmp1684
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movq	$0, 6536(%rax)	#, _325->bottom_field
.L529:
	.loc 1 2866 0
	movl	$0, -64(%rbp)	#, j
	jmp	.L534	#
.L553:
	.loc 1 2868 0
	movl	$0, -68(%rbp)	#, i
	jmp	.L535	#
.L552:
.LBB3:
	.loc 1 2870 0
	movl	-68(%rbp), %eax	# i, tmp1686
	leal	3(%rax), %edx	#, tmp1688
	testl	%eax, %eax	# tmp1687
	cmovs	%edx, %eax	# tmp1688,, tmp1687
	sarl	$2, %eax	#, tmp1689
	movl	%eax, -60(%rbp)	# tmp1689, idiv4
	movl	-64(%rbp), %eax	# j, tmp1691
	leal	3(%rax), %edx	#, tmp1693
	testl	%eax, %eax	# tmp1692
	cmovs	%edx, %eax	# tmp1693,, tmp1692
	sarl	$2, %eax	#, tmp1694
	movl	%eax, -56(%rbp)	# tmp1694, jdiv4
	.loc 1 2871 0
	movq	-88(%rbp), %rax	# fs, tmp1695
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movl	6392(%rax), %eax	# _336->size_x, D.14966
	leal	15(%rax), %edx	#, tmp1697
	testl	%eax, %eax	# tmp1696
	cmovs	%edx, %eax	# tmp1697,, tmp1696
	sarl	$4, %eax	#, tmp1698
	leal	(%rax,%rax), %edx	#, D.14966
	movl	-56(%rbp), %eax	# jdiv4, tmp1699
	movl	%eax, %ecx	# tmp1699, tmp1700
	shrl	$31, %ecx	#, tmp1700
	addl	%ecx, %eax	# tmp1700, tmp1701
	sarl	%eax	# tmp1702
	imull	%edx, %eax	# D.14966, D.14966
	movl	-60(%rbp), %edx	# idiv4, tmp1703
	addl	%edx, %edx	# D.14966
	leal	(%rax,%rdx), %ecx	#, D.14966
	movl	-56(%rbp), %eax	# jdiv4, tmp1704
	cltd
	shrl	$31, %edx	#, tmp1706
	addl	%edx, %eax	# tmp1706, tmp1707
	andl	$1, %eax	#, tmp1708
	subl	%edx, %eax	# tmp1706, tmp1709
	addl	%ecx, %eax	# D.14966, tmp1710
	movl	%eax, -52(%rbp)	# tmp1710, currentmb
	.loc 1 2872 0
	movq	-88(%rbp), %rax	# fs, tmp1711
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movl	6416(%rax), %eax	# _346->MbaffFrameFlag, D.14966
	testl	%eax, %eax	# D.14966
	je	.L536	#,
	.loc 1 2872 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# fs, tmp1712
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movq	6472(%rax), %rdx	# _348->mb_field, D.14973
	movl	-52(%rbp), %eax	# currentmb, tmp1713
	cltq
	addq	%rdx, %rax	# D.14973, D.14973
	movzbl	(%rax), %eax	# *_351, D.14974
	testb	%al, %al	# D.14974
	je	.L536	#,
.LBB4:
	.loc 1 2874 0 is_stmt 1
	movl	-52(%rbp), %eax	# currentmb, currentmb.97
	andl	$1, %eax	#, D.14975
	testl	%eax, %eax	# D.14975
	je	.L537	#,
	.loc 1 2874 0 is_stmt 0 discriminator 1
	movl	$4, %eax	#, iftmp.96
	jmp	.L538	#
.L537:
	.loc 1 2874 0 discriminator 2
	movl	$2, %eax	#, iftmp.96
.L538:
	.loc 1 2874 0 discriminator 3
	movl	%eax, -48(%rbp)	# iftmp.96, list_offset
	.loc 1 2875 0 is_stmt 1 discriminator 3
	movq	-88(%rbp), %rax	# fs, tmp1714
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movq	6480(%rax), %rax	# _358->ref_idx, D.14976
	movq	(%rax), %rax	# *_359, D.14977
	movl	-68(%rbp), %edx	# i, tmp1715
	movslq	%edx, %rdx	# tmp1715, D.14967
	salq	$3, %rdx	#, D.14967
	addq	%rdx, %rax	# D.14967, D.14977
	movq	(%rax), %rax	# *_363, D.14978
	movl	-64(%rbp), %edx	# j, tmp1716
	movslq	%edx, %rdx	# tmp1716, D.14967
	addq	%rdx, %rdx	# D.14967
	addq	%rdx, %rax	# D.14967, D.14978
	movzwl	(%rax), %eax	# *_367, D.14979
	cwtl
	movl	%eax, -44(%rbp)	# tmp1717, dummylist0
	.loc 1 2876 0 discriminator 3
	movq	-88(%rbp), %rax	# fs, tmp1718
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movq	6480(%rax), %rax	# _370->ref_idx, D.14976
	addq	$8, %rax	#, D.14976
	movq	(%rax), %rax	# *_372, D.14977
	movl	-68(%rbp), %edx	# i, tmp1719
	movslq	%edx, %rdx	# tmp1719, D.14967
	salq	$3, %rdx	#, D.14967
	addq	%rdx, %rax	# D.14967, D.14977
	movq	(%rax), %rax	# *_376, D.14978
	movl	-64(%rbp), %edx	# j, tmp1720
	movslq	%edx, %rdx	# tmp1720, D.14967
	addq	%rdx, %rdx	# D.14967
	addq	%rdx, %rax	# D.14967, D.14978
	movzwl	(%rax), %eax	# *_380, D.14979
	cwtl
	movl	%eax, -40(%rbp)	# tmp1721, dummylist1
	.loc 1 2878 0 discriminator 3
	movq	-88(%rbp), %rax	# fs, tmp1722
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movq	6496(%rax), %rax	# _383->ref_id, D.14980
	movl	-48(%rbp), %edx	# list_offset, tmp1723
	movslq	%edx, %rdx	# tmp1723, D.14967
	salq	$3, %rdx	#, D.14967
	addq	%rdx, %rax	# D.14967, D.14980
	movq	(%rax), %rax	# *_387, D.14981
	movl	-68(%rbp), %edx	# i, tmp1724
	movslq	%edx, %rdx	# tmp1724, D.14967
	salq	$3, %rdx	#, D.14967
	addq	%rdx, %rax	# D.14967, D.14981
	movq	(%rax), %rax	# *_391, D.14982
	movl	-64(%rbp), %edx	# j, tmp1725
	movslq	%edx, %rdx	# tmp1725, D.14967
	salq	$3, %rdx	#, D.14967
	leaq	(%rax,%rdx), %rsi	#, D.14982
	cmpl	$0, -44(%rbp)	#, dummylist0
	js	.L539	#,
	.loc 1 2878 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# fs, tmp1726
	movq	40(%rax), %rcx	# fs_45(D)->frame, D.14965
	movl	-44(%rbp), %eax	# dummylist0, tmp1728
	movslq	%eax, %rdi	# tmp1728, tmp1727
	movl	-48(%rbp), %eax	# list_offset, tmp1730
	movslq	%eax, %rdx	# tmp1730, tmp1729
	movq	%rdx, %rax	# tmp1729, tmp1731
	salq	$5, %rax	#, tmp1732
	addq	%rdx, %rax	# tmp1729, tmp1731
	addq	%rdi, %rax	# tmp1727, tmp1733
	addq	$2, %rax	#, tmp1734
	movq	8(%rcx,%rax,8), %rax	# _396->ref_pic_num, iftmp.98
	jmp	.L540	#
.L539:
	.loc 1 2878 0 discriminator 2
	movl	$0, %eax	#, iftmp.98
.L540:
	.loc 1 2878 0 discriminator 3
	movq	%rax, (%rsi)	# iftmp.98, *_395
	.loc 1 2879 0 is_stmt 1 discriminator 3
	movq	-88(%rbp), %rax	# fs, tmp1735
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movq	6496(%rax), %rax	# _399->ref_id, D.14980
	movl	-48(%rbp), %edx	# list_offset, tmp1736
	addl	$1, %edx	#, D.14966
	movslq	%edx, %rdx	# D.14966, D.14967
	salq	$3, %rdx	#, D.14967
	addq	%rdx, %rax	# D.14967, D.14980
	movq	(%rax), %rax	# *_404, D.14981
	movl	-68(%rbp), %edx	# i, tmp1737
	movslq	%edx, %rdx	# tmp1737, D.14967
	salq	$3, %rdx	#, D.14967
	addq	%rdx, %rax	# D.14967, D.14981
	movq	(%rax), %rax	# *_408, D.14982
	movl	-64(%rbp), %edx	# j, tmp1738
	movslq	%edx, %rdx	# tmp1738, D.14967
	salq	$3, %rdx	#, D.14967
	leaq	(%rax,%rdx), %rsi	#, D.14982
	cmpl	$0, -40(%rbp)	#, dummylist1
	js	.L541	#,
	.loc 1 2879 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# fs, tmp1739
	movq	40(%rax), %rcx	# fs_45(D)->frame, D.14965
	movl	-48(%rbp), %eax	# list_offset, tmp1740
	leal	1(%rax), %edx	#, D.14966
	movl	-40(%rbp), %eax	# dummylist1, tmp1742
	movslq	%eax, %rdi	# tmp1742, tmp1741
	movslq	%edx, %rdx	# D.14966, tmp1743
	movq	%rdx, %rax	# tmp1743, tmp1744
	salq	$5, %rax	#, tmp1745
	addq	%rdx, %rax	# tmp1743, tmp1744
	addq	%rdi, %rax	# tmp1741, tmp1746
	addq	$2, %rax	#, tmp1747
	movq	8(%rcx,%rax,8), %rax	# _413->ref_pic_num, iftmp.99
	jmp	.L542	#
.L541:
	.loc 1 2879 0 discriminator 2
	movl	$0, %eax	#, iftmp.99
.L542:
	.loc 1 2879 0 discriminator 3
	movq	%rax, (%rsi)	# iftmp.99, *_412
	.loc 1 2881 0 is_stmt 1 discriminator 3
	movq	-88(%rbp), %rax	# fs, tmp1748
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movq	6496(%rax), %rax	# _417->ref_id, D.14980
	movq	(%rax), %rax	# *_418, D.14981
	movl	-68(%rbp), %edx	# i, tmp1749
	movslq	%edx, %rdx	# tmp1749, D.14967
	salq	$3, %rdx	#, D.14967
	addq	%rdx, %rax	# D.14967, D.14981
	movq	(%rax), %rax	# *_422, D.14982
	movl	-64(%rbp), %edx	# j, tmp1750
	movslq	%edx, %rdx	# tmp1750, D.14967
	salq	$3, %rdx	#, D.14967
	leaq	(%rax,%rdx), %rsi	#, D.14982
	cmpl	$0, -44(%rbp)	#, dummylist0
	js	.L543	#,
	.loc 1 2881 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# fs, tmp1751
	movq	40(%rax), %rcx	# fs_45(D)->frame, D.14965
	movl	-44(%rbp), %eax	# dummylist0, tmp1753
	movslq	%eax, %rdi	# tmp1753, tmp1752
	movl	-48(%rbp), %eax	# list_offset, tmp1755
	movslq	%eax, %rdx	# tmp1755, tmp1754
	movq	%rdx, %rax	# tmp1754, tmp1756
	salq	$5, %rax	#, tmp1757
	addq	%rdx, %rax	# tmp1754, tmp1756
	addq	%rdi, %rax	# tmp1752, tmp1758
	addq	$200, %rax	#, tmp1759
	movq	8(%rcx,%rax,8), %rax	# _427->frm_ref_pic_num, iftmp.100
	jmp	.L544	#
.L543:
	.loc 1 2881 0 discriminator 2
	movl	$0, %eax	#, iftmp.100
.L544:
	.loc 1 2881 0 discriminator 3
	movq	%rax, (%rsi)	# iftmp.100, *_426
	.loc 1 2882 0 is_stmt 1 discriminator 3
	movq	-88(%rbp), %rax	# fs, tmp1760
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movq	6496(%rax), %rax	# _430->ref_id, D.14980
	addq	$8, %rax	#, D.14980
	movq	(%rax), %rax	# *_432, D.14981
	movl	-68(%rbp), %edx	# i, tmp1761
	movslq	%edx, %rdx	# tmp1761, D.14967
	salq	$3, %rdx	#, D.14967
	addq	%rdx, %rax	# D.14967, D.14981
	movq	(%rax), %rax	# *_436, D.14982
	movl	-64(%rbp), %edx	# j, tmp1762
	movslq	%edx, %rdx	# tmp1762, D.14967
	salq	$3, %rdx	#, D.14967
	leaq	(%rax,%rdx), %rsi	#, D.14982
	cmpl	$0, -40(%rbp)	#, dummylist1
	js	.L545	#,
	.loc 1 2882 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# fs, tmp1763
	movq	40(%rax), %rcx	# fs_45(D)->frame, D.14965
	movl	-48(%rbp), %eax	# list_offset, tmp1764
	leal	1(%rax), %edx	#, D.14966
	movl	-40(%rbp), %eax	# dummylist1, tmp1766
	movslq	%eax, %rdi	# tmp1766, tmp1765
	movslq	%edx, %rdx	# D.14966, tmp1767
	movq	%rdx, %rax	# tmp1767, tmp1768
	salq	$5, %rax	#, tmp1769
	addq	%rdx, %rax	# tmp1767, tmp1768
	addq	%rdi, %rax	# tmp1765, tmp1770
	addq	$200, %rax	#, tmp1771
	movq	8(%rcx,%rax,8), %rax	# _441->frm_ref_pic_num, iftmp.101
	jmp	.L546	#
.L545:
	.loc 1 2882 0 discriminator 2
	movl	$0, %eax	#, iftmp.101
.L546:
	.loc 1 2882 0 discriminator 3
	movq	%rax, (%rsi)	# iftmp.101, *_440
.LBE4:
	.loc 1 2873 0 is_stmt 1 discriminator 3
	jmp	.L547	#
.L536:
	.loc 1 2887 0
	movq	-88(%rbp), %rax	# fs, tmp1772
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movq	6480(%rax), %rax	# _445->ref_idx, D.14976
	movq	(%rax), %rax	# *_446, D.14977
	movl	-68(%rbp), %edx	# i, tmp1773
	movslq	%edx, %rdx	# tmp1773, D.14967
	salq	$3, %rdx	#, D.14967
	addq	%rdx, %rax	# D.14967, D.14977
	movq	(%rax), %rax	# *_450, D.14978
	movl	-64(%rbp), %edx	# j, tmp1774
	movslq	%edx, %rdx	# tmp1774, D.14967
	addq	%rdx, %rdx	# D.14967
	addq	%rdx, %rax	# D.14967, D.14978
	movzwl	(%rax), %eax	# *_454, D.14979
	cwtl
	movl	%eax, -44(%rbp)	# tmp1775, dummylist0
	.loc 1 2888 0
	movq	-88(%rbp), %rax	# fs, tmp1776
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movq	6480(%rax), %rax	# _457->ref_idx, D.14976
	addq	$8, %rax	#, D.14976
	movq	(%rax), %rax	# *_459, D.14977
	movl	-68(%rbp), %edx	# i, tmp1777
	movslq	%edx, %rdx	# tmp1777, D.14967
	salq	$3, %rdx	#, D.14967
	addq	%rdx, %rax	# D.14967, D.14977
	movq	(%rax), %rax	# *_463, D.14978
	movl	-64(%rbp), %edx	# j, tmp1778
	movslq	%edx, %rdx	# tmp1778, D.14967
	addq	%rdx, %rdx	# D.14967
	addq	%rdx, %rax	# D.14967, D.14978
	movzwl	(%rax), %eax	# *_467, D.14979
	cwtl
	movl	%eax, -40(%rbp)	# tmp1779, dummylist1
	.loc 1 2889 0
	movq	-88(%rbp), %rax	# fs, tmp1780
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movq	6496(%rax), %rax	# _470->ref_id, D.14980
	movq	(%rax), %rax	# *_471, D.14981
	movl	-68(%rbp), %edx	# i, tmp1781
	movslq	%edx, %rdx	# tmp1781, D.14967
	salq	$3, %rdx	#, D.14967
	addq	%rdx, %rax	# D.14967, D.14981
	movq	(%rax), %rax	# *_475, D.14982
	movl	-64(%rbp), %edx	# j, tmp1782
	movslq	%edx, %rdx	# tmp1782, D.14967
	salq	$3, %rdx	#, D.14967
	addq	%rax, %rdx	# D.14982, D.14982
	cmpl	$0, -44(%rbp)	#, dummylist0
	js	.L548	#,
	.loc 1 2889 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# fs, tmp1783
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movl	-44(%rbp), %ecx	# dummylist0, tmp1785
	movslq	%ecx, %rcx	# tmp1785, tmp1784
	addq	$2, %rcx	#, tmp1786
	movq	8(%rax,%rcx,8), %rax	# _480->ref_pic_num, iftmp.102
	jmp	.L549	#
.L548:
	.loc 1 2889 0 discriminator 2
	movq	$-1, %rax	#, iftmp.102
.L549:
	.loc 1 2889 0 discriminator 3
	movq	%rax, (%rdx)	# iftmp.102, *_479
	.loc 1 2890 0 is_stmt 1 discriminator 3
	movq	-88(%rbp), %rax	# fs, tmp1787
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movq	6496(%rax), %rax	# _483->ref_id, D.14980
	addq	$8, %rax	#, D.14980
	movq	(%rax), %rax	# *_485, D.14981
	movl	-68(%rbp), %edx	# i, tmp1788
	movslq	%edx, %rdx	# tmp1788, D.14967
	salq	$3, %rdx	#, D.14967
	addq	%rdx, %rax	# D.14967, D.14981
	movq	(%rax), %rax	# *_489, D.14982
	movl	-64(%rbp), %edx	# j, tmp1789
	movslq	%edx, %rdx	# tmp1789, D.14967
	salq	$3, %rdx	#, D.14967
	addq	%rax, %rdx	# D.14982, D.14982
	cmpl	$0, -40(%rbp)	#, dummylist1
	js	.L550	#,
	.loc 1 2890 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# fs, tmp1790
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movl	-40(%rbp), %ecx	# dummylist1, tmp1792
	movslq	%ecx, %rcx	# tmp1792, tmp1791
	addq	$35, %rcx	#, tmp1793
	movq	8(%rax,%rcx,8), %rax	# _494->ref_pic_num, iftmp.103
	jmp	.L551	#
.L550:
	.loc 1 2890 0 discriminator 2
	movq	$-1, %rax	#, iftmp.103
.L551:
	.loc 1 2890 0 discriminator 3
	movq	%rax, (%rdx)	# iftmp.103, *_493
.L547:
.LBE3:
	.loc 1 2868 0 is_stmt 1
	addl	$1, -68(%rbp)	#, i
.L535:
	.loc 1 2868 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# fs, tmp1794
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movl	6392(%rax), %eax	# _331->size_x, D.14966
	leal	3(%rax), %edx	#, tmp1796
	testl	%eax, %eax	# tmp1795
	cmovs	%edx, %eax	# tmp1796,, tmp1795
	sarl	$2, %eax	#, tmp1797
	cmpl	-68(%rbp), %eax	# i, D.14966
	jg	.L552	#,
	.loc 1 2866 0 is_stmt 1
	addl	$1, -64(%rbp)	#, j
.L534:
	.loc 1 2866 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# fs, tmp1798
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movl	6396(%rax), %eax	# _327->size_y, D.14966
	leal	3(%rax), %edx	#, tmp1800
	testl	%eax, %eax	# tmp1799
	cmovs	%edx, %eax	# tmp1800,, tmp1799
	sarl	$2, %eax	#, tmp1801
	cmpl	-64(%rbp), %eax	# j, D.14966
	jg	.L553	#,
	.loc 1 2895 0 is_stmt 1
	movq	-88(%rbp), %rax	# fs, tmp1802
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movl	6556(%rax), %eax	# _499->frame_mbs_only_flag, D.14966
	testl	%eax, %eax	# D.14966
	je	.L554	#,
	.loc 1 2895 0 is_stmt 0 discriminator 1
	movq	active_sps(%rip), %rax	# active_sps, active_sps.104
	movl	1156(%rax), %eax	# active_sps.104_501->direct_8x8_inference_flag, D.14983
	testl	%eax, %eax	# D.14983
	je	.L555	#,
.L554:
	.loc 1 2897 0 is_stmt 1
	movl	$0, -68(%rbp)	#, i
	jmp	.L556	#
.L560:
	.loc 1 2899 0
	movl	$0, -64(%rbp)	#, j
	jmp	.L557	#
.L559:
.LBB5:
	.loc 1 2901 0
	movl	-68(%rbp), %eax	# i, tmp1804
	leal	3(%rax), %edx	#, tmp1806
	testl	%eax, %eax	# tmp1805
	cmovs	%edx, %eax	# tmp1806,, tmp1805
	sarl	$2, %eax	#, tmp1807
	movl	%eax, -36(%rbp)	# tmp1807, idiv4
	movl	-64(%rbp), %eax	# j, tmp1809
	movl	%eax, %edx	# tmp1809, tmp1810
	shrl	$31, %edx	#, tmp1810
	addl	%edx, %eax	# tmp1810, tmp1811
	sarl	%eax	# tmp1812
	movl	%eax, -32(%rbp)	# tmp1812, jdiv4
	.loc 1 2903 0
	movq	-88(%rbp), %rax	# fs, tmp1813
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movl	6392(%rax), %eax	# _513->size_x, D.14966
	leal	15(%rax), %edx	#, tmp1815
	testl	%eax, %eax	# tmp1814
	cmovs	%edx, %eax	# tmp1815,, tmp1814
	sarl	$4, %eax	#, tmp1816
	leal	(%rax,%rax), %edx	#, D.14966
	movl	-32(%rbp), %eax	# jdiv4, tmp1817
	movl	%eax, %ecx	# tmp1817, tmp1818
	shrl	$31, %ecx	#, tmp1818
	addl	%ecx, %eax	# tmp1818, tmp1819
	sarl	%eax	# tmp1820
	imull	%edx, %eax	# D.14966, D.14966
	movl	-36(%rbp), %edx	# idiv4, tmp1821
	addl	%edx, %edx	# D.14966
	leal	(%rax,%rdx), %ecx	#, D.14966
	movl	-32(%rbp), %eax	# jdiv4, tmp1822
	cltd
	shrl	$31, %edx	#, tmp1824
	addl	%edx, %eax	# tmp1824, tmp1825
	andl	$1, %eax	#, tmp1826
	subl	%edx, %eax	# tmp1824, tmp1827
	addl	%ecx, %eax	# D.14966, tmp1828
	movl	%eax, -28(%rbp)	# tmp1828, currentmb
	.loc 1 2905 0
	movq	-88(%rbp), %rax	# fs, tmp1829
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movl	6416(%rax), %eax	# _523->MbaffFrameFlag, D.14966
	testl	%eax, %eax	# D.14966
	je	.L558	#,
	.loc 1 2905 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# fs, tmp1830
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movq	6472(%rax), %rdx	# _525->mb_field, D.14973
	movl	-28(%rbp), %eax	# currentmb, tmp1831
	cltq
	addq	%rdx, %rax	# D.14973, D.14973
	movzbl	(%rax), %eax	# *_528, D.14974
	testb	%al, %al	# D.14974
	je	.L558	#,
	.loc 1 2907 0 is_stmt 1
	movq	-88(%rbp), %rax	# fs, tmp1832
	movq	56(%rax), %rax	# fs_45(D)->bottom_field, D.14965
	movq	6520(%rax), %rax	# _530->field_frame, D.14984
	movl	-68(%rbp), %edx	# i, tmp1833
	movslq	%edx, %rdx	# tmp1833, D.14967
	salq	$3, %rdx	#, D.14967
	addq	%rdx, %rax	# D.14967, D.14984
	movq	(%rax), %rdx	# *_534, D.14973
	movl	-64(%rbp), %eax	# j, tmp1834
	cltq
	addq	%rax, %rdx	# D.14971, D.14973
	movq	-88(%rbp), %rax	# fs, tmp1835
	movq	48(%rax), %rax	# fs_45(D)->top_field, D.14965
	movq	6520(%rax), %rax	# _538->field_frame, D.14984
	movl	-68(%rbp), %ecx	# i, tmp1836
	movslq	%ecx, %rcx	# tmp1836, D.14967
	salq	$3, %rcx	#, D.14967
	addq	%rcx, %rax	# D.14967, D.14984
	movq	(%rax), %rcx	# *_542, D.14973
	movl	-64(%rbp), %eax	# j, tmp1837
	cltq
	addq	%rcx, %rax	# D.14973, D.14973
	movb	$1, (%rax)	#, *_545
	movzbl	(%rax), %eax	# *_545, D.14974
	movb	%al, (%rdx)	# D.14974, *_537
	.loc 1 2908 0
	movq	-88(%rbp), %rax	# fs, tmp1838
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movq	6520(%rax), %rax	# _547->field_frame, D.14984
	movl	-68(%rbp), %edx	# i, tmp1839
	movslq	%edx, %rdx	# tmp1839, D.14967
	salq	$3, %rdx	#, D.14967
	addq	%rdx, %rax	# D.14967, D.14984
	movq	(%rax), %rdx	# *_551, D.14973
	movl	-64(%rbp), %eax	# j, tmp1840
	addl	%eax, %eax	# D.14966
	cltq
	addq	%rax, %rdx	# D.14971, D.14973
	movq	-88(%rbp), %rax	# fs, tmp1841
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movq	6520(%rax), %rax	# _556->field_frame, D.14984
	movl	-68(%rbp), %ecx	# i, tmp1842
	movslq	%ecx, %rcx	# tmp1842, D.14967
	salq	$3, %rcx	#, D.14967
	addq	%rcx, %rax	# D.14967, D.14984
	movq	(%rax), %rax	# *_560, D.14973
	movl	-64(%rbp), %ecx	# j, tmp1843
	addl	%ecx, %ecx	# D.14966
	movslq	%ecx, %rcx	# D.14966, D.14971
	addq	$1, %rcx	#, D.14971
	addq	%rcx, %rax	# D.14971, D.14973
	movb	$1, (%rax)	#, *_565
	movzbl	(%rax), %eax	# *_565, D.14974
	movb	%al, (%rdx)	# D.14974, *_555
	.loc 1 2910 0
	movq	-88(%rbp), %rax	# fs, tmp1844
	movq	56(%rax), %rax	# fs_45(D)->bottom_field, D.14965
	movq	6504(%rax), %rax	# _567->mv, D.14985
	movq	(%rax), %rax	# *_568, D.14976
	movl	-68(%rbp), %edx	# i, tmp1845
	movslq	%edx, %rdx	# tmp1845, D.14967
	salq	$3, %rdx	#, D.14967
	addq	%rdx, %rax	# D.14967, D.14976
	movq	(%rax), %rax	# *_572, D.14977
	movl	-64(%rbp), %edx	# j, tmp1846
	movslq	%edx, %rdx	# tmp1846, D.14967
	salq	$3, %rdx	#, D.14967
	addq	%rdx, %rax	# D.14967, D.14977
	movq	(%rax), %rcx	# *_576, D.14978
	movq	-88(%rbp), %rax	# fs, tmp1847
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movq	6504(%rax), %rax	# _578->mv, D.14985
	movq	(%rax), %rax	# *_579, D.14976
	movl	-68(%rbp), %edx	# i, tmp1848
	movslq	%edx, %rdx	# tmp1848, D.14967
	salq	$3, %rdx	#, D.14967
	addq	%rdx, %rax	# D.14967, D.14976
	movq	(%rax), %rsi	# *_583, D.14977
	movl	-64(%rbp), %eax	# j, tmp1849
	leal	3(%rax), %edx	#, tmp1851
	testl	%eax, %eax	# tmp1850
	cmovs	%edx, %eax	# tmp1851,, tmp1850
	sarl	$2, %eax	#, tmp1852
	leal	0(,%rax,8), %edi	#, D.14966
	movl	-64(%rbp), %eax	# j, tmp1853
	cltd
	shrl	$30, %edx	#, tmp1855
	addl	%edx, %eax	# tmp1855, tmp1856
	andl	$3, %eax	#, tmp1857
	subl	%edx, %eax	# tmp1855, tmp1858
	addl	%edi, %eax	# D.14966, D.14966
	cltq
	addq	$4, %rax	#, D.14971
	salq	$3, %rax	#, D.14971
	addq	%rsi, %rax	# D.14977, D.14977
	movq	(%rax), %rax	# *_592, D.14978
	movzwl	(%rax), %eax	# *_593, D.14979
	movw	%ax, (%rcx)	# D.14979, *_577
	.loc 1 2911 0
	movq	-88(%rbp), %rax	# fs, tmp1859
	movq	56(%rax), %rax	# fs_45(D)->bottom_field, D.14965
	movq	6504(%rax), %rax	# _595->mv, D.14985
	movq	(%rax), %rax	# *_596, D.14976
	movl	-68(%rbp), %edx	# i, tmp1860
	movslq	%edx, %rdx	# tmp1860, D.14967
	salq	$3, %rdx	#, D.14967
	addq	%rdx, %rax	# D.14967, D.14976
	movq	(%rax), %rax	# *_600, D.14977
	movl	-64(%rbp), %edx	# j, tmp1861
	movslq	%edx, %rdx	# tmp1861, D.14967
	salq	$3, %rdx	#, D.14967
	addq	%rdx, %rax	# D.14967, D.14977
	movq	(%rax), %rax	# *_604, D.14978
	leaq	2(%rax), %rcx	#, D.14978
	movq	-88(%rbp), %rax	# fs, tmp1862
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movq	6504(%rax), %rax	# _607->mv, D.14985
	movq	(%rax), %rax	# *_608, D.14976
	movl	-68(%rbp), %edx	# i, tmp1863
	movslq	%edx, %rdx	# tmp1863, D.14967
	salq	$3, %rdx	#, D.14967
	addq	%rdx, %rax	# D.14967, D.14976
	movq	(%rax), %rsi	# *_612, D.14977
	movl	-64(%rbp), %eax	# j, tmp1864
	leal	3(%rax), %edx	#, tmp1866
	testl	%eax, %eax	# tmp1865
	cmovs	%edx, %eax	# tmp1866,, tmp1865
	sarl	$2, %eax	#, tmp1867
	leal	0(,%rax,8), %edi	#, D.14966
	movl	-64(%rbp), %eax	# j, tmp1868
	cltd
	shrl	$30, %edx	#, tmp1870
	addl	%edx, %eax	# tmp1870, tmp1871
	andl	$3, %eax	#, tmp1872
	subl	%edx, %eax	# tmp1870, tmp1873
	addl	%edi, %eax	# D.14966, D.14966
	cltq
	addq	$4, %rax	#, D.14971
	salq	$3, %rax	#, D.14971
	addq	%rsi, %rax	# D.14977, D.14977
	movq	(%rax), %rax	# *_621, D.14978
	movzwl	2(%rax), %eax	# MEM[(short int *)_622 + 2B], D.14979
	movw	%ax, (%rcx)	# D.14979, *_606
	.loc 1 2912 0
	movq	-88(%rbp), %rax	# fs, tmp1874
	movq	56(%rax), %rax	# fs_45(D)->bottom_field, D.14965
	movq	6504(%rax), %rax	# _624->mv, D.14985
	addq	$8, %rax	#, D.14985
	movq	(%rax), %rax	# *_626, D.14976
	movl	-68(%rbp), %edx	# i, tmp1875
	movslq	%edx, %rdx	# tmp1875, D.14967
	salq	$3, %rdx	#, D.14967
	addq	%rdx, %rax	# D.14967, D.14976
	movq	(%rax), %rax	# *_630, D.14977
	movl	-64(%rbp), %edx	# j, tmp1876
	movslq	%edx, %rdx	# tmp1876, D.14967
	salq	$3, %rdx	#, D.14967
	addq	%rdx, %rax	# D.14967, D.14977
	movq	(%rax), %rcx	# *_634, D.14978
	movq	-88(%rbp), %rax	# fs, tmp1877
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movq	6504(%rax), %rax	# _636->mv, D.14985
	addq	$8, %rax	#, D.14985
	movq	(%rax), %rax	# *_638, D.14976
	movl	-68(%rbp), %edx	# i, tmp1878
	movslq	%edx, %rdx	# tmp1878, D.14967
	salq	$3, %rdx	#, D.14967
	addq	%rdx, %rax	# D.14967, D.14976
	movq	(%rax), %rsi	# *_642, D.14977
	movl	-64(%rbp), %eax	# j, tmp1879
	leal	3(%rax), %edx	#, tmp1881
	testl	%eax, %eax	# tmp1880
	cmovs	%edx, %eax	# tmp1881,, tmp1880
	sarl	$2, %eax	#, tmp1882
	leal	0(,%rax,8), %edi	#, D.14966
	movl	-64(%rbp), %eax	# j, tmp1883
	cltd
	shrl	$30, %edx	#, tmp1885
	addl	%edx, %eax	# tmp1885, tmp1886
	andl	$3, %eax	#, tmp1887
	subl	%edx, %eax	# tmp1885, tmp1888
	addl	%edi, %eax	# D.14966, D.14966
	cltq
	addq	$4, %rax	#, D.14971
	salq	$3, %rax	#, D.14971
	addq	%rsi, %rax	# D.14977, D.14977
	movq	(%rax), %rax	# *_651, D.14978
	movzwl	(%rax), %eax	# *_652, D.14979
	movw	%ax, (%rcx)	# D.14979, *_635
	.loc 1 2913 0
	movq	-88(%rbp), %rax	# fs, tmp1889
	movq	56(%rax), %rax	# fs_45(D)->bottom_field, D.14965
	movq	6504(%rax), %rax	# _654->mv, D.14985
	addq	$8, %rax	#, D.14985
	movq	(%rax), %rax	# *_656, D.14976
	movl	-68(%rbp), %edx	# i, tmp1890
	movslq	%edx, %rdx	# tmp1890, D.14967
	salq	$3, %rdx	#, D.14967
	addq	%rdx, %rax	# D.14967, D.14976
	movq	(%rax), %rax	# *_660, D.14977
	movl	-64(%rbp), %edx	# j, tmp1891
	movslq	%edx, %rdx	# tmp1891, D.14967
	salq	$3, %rdx	#, D.14967
	addq	%rdx, %rax	# D.14967, D.14977
	movq	(%rax), %rax	# *_664, D.14978
	leaq	2(%rax), %rcx	#, D.14978
	movq	-88(%rbp), %rax	# fs, tmp1892
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movq	6504(%rax), %rax	# _667->mv, D.14985
	addq	$8, %rax	#, D.14985
	movq	(%rax), %rax	# *_669, D.14976
	movl	-68(%rbp), %edx	# i, tmp1893
	movslq	%edx, %rdx	# tmp1893, D.14967
	salq	$3, %rdx	#, D.14967
	addq	%rdx, %rax	# D.14967, D.14976
	movq	(%rax), %rsi	# *_673, D.14977
	movl	-64(%rbp), %eax	# j, tmp1894
	leal	3(%rax), %edx	#, tmp1896
	testl	%eax, %eax	# tmp1895
	cmovs	%edx, %eax	# tmp1896,, tmp1895
	sarl	$2, %eax	#, tmp1897
	leal	0(,%rax,8), %edi	#, D.14966
	movl	-64(%rbp), %eax	# j, tmp1898
	cltd
	shrl	$30, %edx	#, tmp1900
	addl	%edx, %eax	# tmp1900, tmp1901
	andl	$3, %eax	#, tmp1902
	subl	%edx, %eax	# tmp1900, tmp1903
	addl	%edi, %eax	# D.14966, D.14966
	cltq
	addq	$4, %rax	#, D.14971
	salq	$3, %rax	#, D.14971
	addq	%rsi, %rax	# D.14977, D.14977
	movq	(%rax), %rax	# *_682, D.14978
	movzwl	2(%rax), %eax	# MEM[(short int *)_683 + 2B], D.14979
	movw	%ax, (%rcx)	# D.14979, *_666
	.loc 1 2914 0
	movq	-88(%rbp), %rax	# fs, tmp1904
	movq	56(%rax), %rax	# fs_45(D)->bottom_field, D.14965
	movq	6480(%rax), %rax	# _685->ref_idx, D.14976
	movq	(%rax), %rax	# *_686, D.14977
	movl	-68(%rbp), %edx	# i, tmp1905
	movslq	%edx, %rdx	# tmp1905, D.14967
	salq	$3, %rdx	#, D.14967
	addq	%rdx, %rax	# D.14967, D.14977
	movq	(%rax), %rax	# *_690, D.14978
	movl	-64(%rbp), %edx	# j, tmp1906
	movslq	%edx, %rdx	# tmp1906, D.14967
	addq	%rdx, %rdx	# D.14967
	leaq	(%rax,%rdx), %rcx	#, D.14978
	movq	-88(%rbp), %rax	# fs, tmp1907
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movq	6480(%rax), %rax	# _695->ref_idx, D.14976
	movq	(%rax), %rax	# *_696, D.14977
	movl	-68(%rbp), %edx	# i, tmp1908
	movslq	%edx, %rdx	# tmp1908, D.14967
	salq	$3, %rdx	#, D.14967
	addq	%rdx, %rax	# D.14967, D.14977
	movq	(%rax), %rsi	# *_700, D.14978
	movl	-64(%rbp), %eax	# j, tmp1909
	leal	3(%rax), %edx	#, tmp1911
	testl	%eax, %eax	# tmp1910
	cmovs	%edx, %eax	# tmp1911,, tmp1910
	sarl	$2, %eax	#, tmp1912
	leal	0(,%rax,8), %edi	#, D.14966
	movl	-64(%rbp), %eax	# j, tmp1913
	cltd
	shrl	$30, %edx	#, tmp1915
	addl	%edx, %eax	# tmp1915, tmp1916
	andl	$3, %eax	#, tmp1917
	subl	%edx, %eax	# tmp1915, tmp1918
	addl	%edi, %eax	# D.14966, D.14966
	cltq
	addq	$4, %rax	#, D.14971
	addq	%rax, %rax	# D.14971
	addq	%rsi, %rax	# D.14978, D.14978
	movzwl	(%rax), %eax	# *_709, D.14979
	movw	%ax, (%rcx)	# D.14979, *_694
	.loc 1 2915 0
	movq	-88(%rbp), %rax	# fs, tmp1919
	movq	56(%rax), %rax	# fs_45(D)->bottom_field, D.14965
	movq	6480(%rax), %rax	# _711->ref_idx, D.14976
	addq	$8, %rax	#, D.14976
	movq	(%rax), %rax	# *_713, D.14977
	movl	-68(%rbp), %edx	# i, tmp1920
	movslq	%edx, %rdx	# tmp1920, D.14967
	salq	$3, %rdx	#, D.14967
	addq	%rdx, %rax	# D.14967, D.14977
	movq	(%rax), %rax	# *_717, D.14978
	movl	-64(%rbp), %edx	# j, tmp1921
	movslq	%edx, %rdx	# tmp1921, D.14967
	addq	%rdx, %rdx	# D.14967
	leaq	(%rax,%rdx), %rcx	#, D.14978
	movq	-88(%rbp), %rax	# fs, tmp1922
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movq	6480(%rax), %rax	# _722->ref_idx, D.14976
	addq	$8, %rax	#, D.14976
	movq	(%rax), %rax	# *_724, D.14977
	movl	-68(%rbp), %edx	# i, tmp1923
	movslq	%edx, %rdx	# tmp1923, D.14967
	salq	$3, %rdx	#, D.14967
	addq	%rdx, %rax	# D.14967, D.14977
	movq	(%rax), %rsi	# *_728, D.14978
	movl	-64(%rbp), %eax	# j, tmp1924
	leal	3(%rax), %edx	#, tmp1926
	testl	%eax, %eax	# tmp1925
	cmovs	%edx, %eax	# tmp1926,, tmp1925
	sarl	$2, %eax	#, tmp1927
	leal	0(,%rax,8), %edi	#, D.14966
	movl	-64(%rbp), %eax	# j, tmp1928
	cltd
	shrl	$30, %edx	#, tmp1930
	addl	%edx, %eax	# tmp1930, tmp1931
	andl	$3, %eax	#, tmp1932
	subl	%edx, %eax	# tmp1930, tmp1933
	addl	%edi, %eax	# D.14966, D.14966
	cltq
	addq	$4, %rax	#, D.14971
	addq	%rax, %rax	# D.14971
	addq	%rsi, %rax	# D.14978, D.14978
	movzwl	(%rax), %eax	# *_737, D.14979
	movw	%ax, (%rcx)	# D.14979, *_721
	.loc 1 2916 0
	movq	-88(%rbp), %rax	# fs, tmp1934
	movq	56(%rax), %rax	# fs_45(D)->bottom_field, D.14965
	movq	6496(%rax), %rax	# _739->ref_id, D.14980
	movq	(%rax), %rax	# *_740, D.14981
	movl	-68(%rbp), %edx	# i, tmp1935
	movslq	%edx, %rdx	# tmp1935, D.14967
	salq	$3, %rdx	#, D.14967
	addq	%rdx, %rax	# D.14967, D.14981
	movq	(%rax), %rax	# *_744, D.14982
	movl	-64(%rbp), %edx	# j, tmp1936
	movslq	%edx, %rdx	# tmp1936, D.14967
	salq	$3, %rdx	#, D.14967
	leaq	(%rax,%rdx), %rcx	#, D.14982
	movq	-88(%rbp), %rax	# fs, tmp1937
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movq	6496(%rax), %rax	# _749->ref_id, D.14980
	addq	$32, %rax	#, D.14980
	movq	(%rax), %rax	# *_751, D.14981
	movl	-68(%rbp), %edx	# i, tmp1938
	movslq	%edx, %rdx	# tmp1938, D.14967
	salq	$3, %rdx	#, D.14967
	addq	%rdx, %rax	# D.14967, D.14981
	movq	(%rax), %rsi	# *_755, D.14982
	movl	-64(%rbp), %eax	# j, tmp1939
	leal	3(%rax), %edx	#, tmp1941
	testl	%eax, %eax	# tmp1940
	cmovs	%edx, %eax	# tmp1941,, tmp1940
	sarl	$2, %eax	#, tmp1942
	leal	0(,%rax,8), %edi	#, D.14966
	movl	-64(%rbp), %eax	# j, tmp1943
	cltd
	shrl	$30, %edx	#, tmp1945
	addl	%edx, %eax	# tmp1945, tmp1946
	andl	$3, %eax	#, tmp1947
	subl	%edx, %eax	# tmp1945, tmp1948
	addl	%edi, %eax	# D.14966, D.14966
	cltq
	addq	$4, %rax	#, D.14971
	salq	$3, %rax	#, D.14971
	addq	%rsi, %rax	# D.14982, D.14982
	movq	(%rax), %rax	# *_764, D.14972
	movq	%rax, (%rcx)	# D.14972, *_748
	.loc 1 2917 0
	movq	-88(%rbp), %rax	# fs, tmp1949
	movq	56(%rax), %rax	# fs_45(D)->bottom_field, D.14965
	movq	6496(%rax), %rax	# _766->ref_id, D.14980
	addq	$8, %rax	#, D.14980
	movq	(%rax), %rax	# *_768, D.14981
	movl	-68(%rbp), %edx	# i, tmp1950
	movslq	%edx, %rdx	# tmp1950, D.14967
	salq	$3, %rdx	#, D.14967
	addq	%rdx, %rax	# D.14967, D.14981
	movq	(%rax), %rax	# *_772, D.14982
	movl	-64(%rbp), %edx	# j, tmp1951
	movslq	%edx, %rdx	# tmp1951, D.14967
	salq	$3, %rdx	#, D.14967
	leaq	(%rax,%rdx), %rcx	#, D.14982
	movq	-88(%rbp), %rax	# fs, tmp1952
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movq	6496(%rax), %rax	# _777->ref_id, D.14980
	addq	$40, %rax	#, D.14980
	movq	(%rax), %rax	# *_779, D.14981
	movl	-68(%rbp), %edx	# i, tmp1953
	movslq	%edx, %rdx	# tmp1953, D.14967
	salq	$3, %rdx	#, D.14967
	addq	%rdx, %rax	# D.14967, D.14981
	movq	(%rax), %rsi	# *_783, D.14982
	movl	-64(%rbp), %eax	# j, tmp1954
	leal	3(%rax), %edx	#, tmp1956
	testl	%eax, %eax	# tmp1955
	cmovs	%edx, %eax	# tmp1956,, tmp1955
	sarl	$2, %eax	#, tmp1957
	leal	0(,%rax,8), %edi	#, D.14966
	movl	-64(%rbp), %eax	# j, tmp1958
	cltd
	shrl	$30, %edx	#, tmp1960
	addl	%edx, %eax	# tmp1960, tmp1961
	andl	$3, %eax	#, tmp1962
	subl	%edx, %eax	# tmp1960, tmp1963
	addl	%edi, %eax	# D.14966, D.14966
	cltq
	addq	$4, %rax	#, D.14971
	salq	$3, %rax	#, D.14971
	addq	%rsi, %rax	# D.14982, D.14982
	movq	(%rax), %rax	# *_792, D.14972
	movq	%rax, (%rcx)	# D.14972, *_776
	.loc 1 2920 0
	movq	-88(%rbp), %rax	# fs, tmp1964
	movq	48(%rax), %rax	# fs_45(D)->top_field, D.14965
	movq	6504(%rax), %rax	# _794->mv, D.14985
	movq	(%rax), %rax	# *_795, D.14976
	movl	-68(%rbp), %edx	# i, tmp1965
	movslq	%edx, %rdx	# tmp1965, D.14967
	salq	$3, %rdx	#, D.14967
	addq	%rdx, %rax	# D.14967, D.14976
	movq	(%rax), %rax	# *_799, D.14977
	movl	-64(%rbp), %edx	# j, tmp1966
	movslq	%edx, %rdx	# tmp1966, D.14967
	salq	$3, %rdx	#, D.14967
	addq	%rdx, %rax	# D.14967, D.14977
	movq	(%rax), %rcx	# *_803, D.14978
	movq	-88(%rbp), %rax	# fs, tmp1967
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movq	6504(%rax), %rax	# _805->mv, D.14985
	movq	(%rax), %rax	# *_806, D.14976
	movl	-68(%rbp), %edx	# i, tmp1968
	movslq	%edx, %rdx	# tmp1968, D.14967
	salq	$3, %rdx	#, D.14967
	addq	%rdx, %rax	# D.14967, D.14976
	movq	(%rax), %rsi	# *_810, D.14977
	movl	-64(%rbp), %eax	# j, tmp1969
	leal	3(%rax), %edx	#, tmp1971
	testl	%eax, %eax	# tmp1970
	cmovs	%edx, %eax	# tmp1971,, tmp1970
	sarl	$2, %eax	#, tmp1972
	leal	0(,%rax,8), %edi	#, D.14966
	movl	-64(%rbp), %eax	# j, tmp1973
	cltd
	shrl	$30, %edx	#, tmp1975
	addl	%edx, %eax	# tmp1975, tmp1976
	andl	$3, %eax	#, tmp1977
	subl	%edx, %eax	# tmp1975, tmp1978
	addl	%edi, %eax	# D.14966, D.14966
	cltq
	salq	$3, %rax	#, D.14967
	addq	%rsi, %rax	# D.14977, D.14977
	movq	(%rax), %rax	# *_818, D.14978
	movzwl	(%rax), %eax	# *_819, D.14979
	movw	%ax, (%rcx)	# D.14979, *_804
	.loc 1 2921 0
	movq	-88(%rbp), %rax	# fs, tmp1979
	movq	48(%rax), %rax	# fs_45(D)->top_field, D.14965
	movq	6504(%rax), %rax	# _821->mv, D.14985
	movq	(%rax), %rax	# *_822, D.14976
	movl	-68(%rbp), %edx	# i, tmp1980
	movslq	%edx, %rdx	# tmp1980, D.14967
	salq	$3, %rdx	#, D.14967
	addq	%rdx, %rax	# D.14967, D.14976
	movq	(%rax), %rax	# *_826, D.14977
	movl	-64(%rbp), %edx	# j, tmp1981
	movslq	%edx, %rdx	# tmp1981, D.14967
	salq	$3, %rdx	#, D.14967
	addq	%rdx, %rax	# D.14967, D.14977
	movq	(%rax), %rax	# *_830, D.14978
	leaq	2(%rax), %rcx	#, D.14978
	movq	-88(%rbp), %rax	# fs, tmp1982
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movq	6504(%rax), %rax	# _833->mv, D.14985
	movq	(%rax), %rax	# *_834, D.14976
	movl	-68(%rbp), %edx	# i, tmp1983
	movslq	%edx, %rdx	# tmp1983, D.14967
	salq	$3, %rdx	#, D.14967
	addq	%rdx, %rax	# D.14967, D.14976
	movq	(%rax), %rsi	# *_838, D.14977
	movl	-64(%rbp), %eax	# j, tmp1984
	leal	3(%rax), %edx	#, tmp1986
	testl	%eax, %eax	# tmp1985
	cmovs	%edx, %eax	# tmp1986,, tmp1985
	sarl	$2, %eax	#, tmp1987
	leal	0(,%rax,8), %edi	#, D.14966
	movl	-64(%rbp), %eax	# j, tmp1988
	cltd
	shrl	$30, %edx	#, tmp1990
	addl	%edx, %eax	# tmp1990, tmp1991
	andl	$3, %eax	#, tmp1992
	subl	%edx, %eax	# tmp1990, tmp1993
	addl	%edi, %eax	# D.14966, D.14966
	cltq
	salq	$3, %rax	#, D.14967
	addq	%rsi, %rax	# D.14977, D.14977
	movq	(%rax), %rax	# *_846, D.14978
	movzwl	2(%rax), %eax	# MEM[(short int *)_847 + 2B], D.14979
	movw	%ax, (%rcx)	# D.14979, *_832
	.loc 1 2922 0
	movq	-88(%rbp), %rax	# fs, tmp1994
	movq	48(%rax), %rax	# fs_45(D)->top_field, D.14965
	movq	6504(%rax), %rax	# _849->mv, D.14985
	addq	$8, %rax	#, D.14985
	movq	(%rax), %rax	# *_851, D.14976
	movl	-68(%rbp), %edx	# i, tmp1995
	movslq	%edx, %rdx	# tmp1995, D.14967
	salq	$3, %rdx	#, D.14967
	addq	%rdx, %rax	# D.14967, D.14976
	movq	(%rax), %rax	# *_855, D.14977
	movl	-64(%rbp), %edx	# j, tmp1996
	movslq	%edx, %rdx	# tmp1996, D.14967
	salq	$3, %rdx	#, D.14967
	addq	%rdx, %rax	# D.14967, D.14977
	movq	(%rax), %rcx	# *_859, D.14978
	movq	-88(%rbp), %rax	# fs, tmp1997
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movq	6504(%rax), %rax	# _861->mv, D.14985
	addq	$8, %rax	#, D.14985
	movq	(%rax), %rax	# *_863, D.14976
	movl	-68(%rbp), %edx	# i, tmp1998
	movslq	%edx, %rdx	# tmp1998, D.14967
	salq	$3, %rdx	#, D.14967
	addq	%rdx, %rax	# D.14967, D.14976
	movq	(%rax), %rsi	# *_867, D.14977
	movl	-64(%rbp), %eax	# j, tmp1999
	leal	3(%rax), %edx	#, tmp2001
	testl	%eax, %eax	# tmp2000
	cmovs	%edx, %eax	# tmp2001,, tmp2000
	sarl	$2, %eax	#, tmp2002
	leal	0(,%rax,8), %edi	#, D.14966
	movl	-64(%rbp), %eax	# j, tmp2003
	cltd
	shrl	$30, %edx	#, tmp2005
	addl	%edx, %eax	# tmp2005, tmp2006
	andl	$3, %eax	#, tmp2007
	subl	%edx, %eax	# tmp2005, tmp2008
	addl	%edi, %eax	# D.14966, D.14966
	cltq
	salq	$3, %rax	#, D.14967
	addq	%rsi, %rax	# D.14977, D.14977
	movq	(%rax), %rax	# *_875, D.14978
	movzwl	(%rax), %eax	# *_876, D.14979
	movw	%ax, (%rcx)	# D.14979, *_860
	.loc 1 2923 0
	movq	-88(%rbp), %rax	# fs, tmp2009
	movq	48(%rax), %rax	# fs_45(D)->top_field, D.14965
	movq	6504(%rax), %rax	# _878->mv, D.14985
	addq	$8, %rax	#, D.14985
	movq	(%rax), %rax	# *_880, D.14976
	movl	-68(%rbp), %edx	# i, tmp2010
	movslq	%edx, %rdx	# tmp2010, D.14967
	salq	$3, %rdx	#, D.14967
	addq	%rdx, %rax	# D.14967, D.14976
	movq	(%rax), %rax	# *_884, D.14977
	movl	-64(%rbp), %edx	# j, tmp2011
	movslq	%edx, %rdx	# tmp2011, D.14967
	salq	$3, %rdx	#, D.14967
	addq	%rdx, %rax	# D.14967, D.14977
	movq	(%rax), %rax	# *_888, D.14978
	leaq	2(%rax), %rcx	#, D.14978
	movq	-88(%rbp), %rax	# fs, tmp2012
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movq	6504(%rax), %rax	# _891->mv, D.14985
	addq	$8, %rax	#, D.14985
	movq	(%rax), %rax	# *_893, D.14976
	movl	-68(%rbp), %edx	# i, tmp2013
	movslq	%edx, %rdx	# tmp2013, D.14967
	salq	$3, %rdx	#, D.14967
	addq	%rdx, %rax	# D.14967, D.14976
	movq	(%rax), %rsi	# *_897, D.14977
	movl	-64(%rbp), %eax	# j, tmp2014
	leal	3(%rax), %edx	#, tmp2016
	testl	%eax, %eax	# tmp2015
	cmovs	%edx, %eax	# tmp2016,, tmp2015
	sarl	$2, %eax	#, tmp2017
	leal	0(,%rax,8), %edi	#, D.14966
	movl	-64(%rbp), %eax	# j, tmp2018
	cltd
	shrl	$30, %edx	#, tmp2020
	addl	%edx, %eax	# tmp2020, tmp2021
	andl	$3, %eax	#, tmp2022
	subl	%edx, %eax	# tmp2020, tmp2023
	addl	%edi, %eax	# D.14966, D.14966
	cltq
	salq	$3, %rax	#, D.14967
	addq	%rsi, %rax	# D.14977, D.14977
	movq	(%rax), %rax	# *_905, D.14978
	movzwl	2(%rax), %eax	# MEM[(short int *)_906 + 2B], D.14979
	movw	%ax, (%rcx)	# D.14979, *_890
	.loc 1 2924 0
	movq	-88(%rbp), %rax	# fs, tmp2024
	movq	48(%rax), %rax	# fs_45(D)->top_field, D.14965
	movq	6480(%rax), %rax	# _908->ref_idx, D.14976
	movq	(%rax), %rax	# *_909, D.14977
	movl	-68(%rbp), %edx	# i, tmp2025
	movslq	%edx, %rdx	# tmp2025, D.14967
	salq	$3, %rdx	#, D.14967
	addq	%rdx, %rax	# D.14967, D.14977
	movq	(%rax), %rax	# *_913, D.14978
	movl	-64(%rbp), %edx	# j, tmp2026
	movslq	%edx, %rdx	# tmp2026, D.14967
	addq	%rdx, %rdx	# D.14967
	leaq	(%rax,%rdx), %rcx	#, D.14978
	movq	-88(%rbp), %rax	# fs, tmp2027
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movq	6480(%rax), %rax	# _918->ref_idx, D.14976
	movq	(%rax), %rax	# *_919, D.14977
	movl	-68(%rbp), %edx	# i, tmp2028
	movslq	%edx, %rdx	# tmp2028, D.14967
	salq	$3, %rdx	#, D.14967
	addq	%rdx, %rax	# D.14967, D.14977
	movq	(%rax), %rsi	# *_923, D.14978
	movl	-64(%rbp), %eax	# j, tmp2029
	leal	3(%rax), %edx	#, tmp2031
	testl	%eax, %eax	# tmp2030
	cmovs	%edx, %eax	# tmp2031,, tmp2030
	sarl	$2, %eax	#, tmp2032
	leal	0(,%rax,8), %edi	#, D.14966
	movl	-64(%rbp), %eax	# j, tmp2033
	cltd
	shrl	$30, %edx	#, tmp2035
	addl	%edx, %eax	# tmp2035, tmp2036
	andl	$3, %eax	#, tmp2037
	subl	%edx, %eax	# tmp2035, tmp2038
	addl	%edi, %eax	# D.14966, D.14966
	cltq
	addq	%rax, %rax	# D.14967
	addq	%rsi, %rax	# D.14978, D.14978
	movzwl	(%rax), %eax	# *_931, D.14979
	movw	%ax, (%rcx)	# D.14979, *_917
	.loc 1 2925 0
	movq	-88(%rbp), %rax	# fs, tmp2039
	movq	48(%rax), %rax	# fs_45(D)->top_field, D.14965
	movq	6480(%rax), %rax	# _933->ref_idx, D.14976
	addq	$8, %rax	#, D.14976
	movq	(%rax), %rax	# *_935, D.14977
	movl	-68(%rbp), %edx	# i, tmp2040
	movslq	%edx, %rdx	# tmp2040, D.14967
	salq	$3, %rdx	#, D.14967
	addq	%rdx, %rax	# D.14967, D.14977
	movq	(%rax), %rax	# *_939, D.14978
	movl	-64(%rbp), %edx	# j, tmp2041
	movslq	%edx, %rdx	# tmp2041, D.14967
	addq	%rdx, %rdx	# D.14967
	leaq	(%rax,%rdx), %rcx	#, D.14978
	movq	-88(%rbp), %rax	# fs, tmp2042
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movq	6480(%rax), %rax	# _944->ref_idx, D.14976
	addq	$8, %rax	#, D.14976
	movq	(%rax), %rax	# *_946, D.14977
	movl	-68(%rbp), %edx	# i, tmp2043
	movslq	%edx, %rdx	# tmp2043, D.14967
	salq	$3, %rdx	#, D.14967
	addq	%rdx, %rax	# D.14967, D.14977
	movq	(%rax), %rsi	# *_950, D.14978
	movl	-64(%rbp), %eax	# j, tmp2044
	leal	3(%rax), %edx	#, tmp2046
	testl	%eax, %eax	# tmp2045
	cmovs	%edx, %eax	# tmp2046,, tmp2045
	sarl	$2, %eax	#, tmp2047
	leal	0(,%rax,8), %edi	#, D.14966
	movl	-64(%rbp), %eax	# j, tmp2048
	cltd
	shrl	$30, %edx	#, tmp2050
	addl	%edx, %eax	# tmp2050, tmp2051
	andl	$3, %eax	#, tmp2052
	subl	%edx, %eax	# tmp2050, tmp2053
	addl	%edi, %eax	# D.14966, D.14966
	cltq
	addq	%rax, %rax	# D.14967
	addq	%rsi, %rax	# D.14978, D.14978
	movzwl	(%rax), %eax	# *_958, D.14979
	movw	%ax, (%rcx)	# D.14979, *_943
	.loc 1 2926 0
	movq	-88(%rbp), %rax	# fs, tmp2054
	movq	48(%rax), %rax	# fs_45(D)->top_field, D.14965
	movq	6496(%rax), %rax	# _960->ref_id, D.14980
	movq	(%rax), %rax	# *_961, D.14981
	movl	-68(%rbp), %edx	# i, tmp2055
	movslq	%edx, %rdx	# tmp2055, D.14967
	salq	$3, %rdx	#, D.14967
	addq	%rdx, %rax	# D.14967, D.14981
	movq	(%rax), %rax	# *_965, D.14982
	movl	-64(%rbp), %edx	# j, tmp2056
	movslq	%edx, %rdx	# tmp2056, D.14967
	salq	$3, %rdx	#, D.14967
	leaq	(%rax,%rdx), %rcx	#, D.14982
	movq	-88(%rbp), %rax	# fs, tmp2057
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movq	6496(%rax), %rax	# _970->ref_id, D.14980
	addq	$16, %rax	#, D.14980
	movq	(%rax), %rax	# *_972, D.14981
	movl	-68(%rbp), %edx	# i, tmp2058
	movslq	%edx, %rdx	# tmp2058, D.14967
	salq	$3, %rdx	#, D.14967
	addq	%rdx, %rax	# D.14967, D.14981
	movq	(%rax), %rsi	# *_976, D.14982
	movl	-64(%rbp), %eax	# j, tmp2059
	leal	3(%rax), %edx	#, tmp2061
	testl	%eax, %eax	# tmp2060
	cmovs	%edx, %eax	# tmp2061,, tmp2060
	sarl	$2, %eax	#, tmp2062
	leal	0(,%rax,8), %edi	#, D.14966
	movl	-64(%rbp), %eax	# j, tmp2063
	cltd
	shrl	$30, %edx	#, tmp2065
	addl	%edx, %eax	# tmp2065, tmp2066
	andl	$3, %eax	#, tmp2067
	subl	%edx, %eax	# tmp2065, tmp2068
	addl	%edi, %eax	# D.14966, D.14966
	cltq
	salq	$3, %rax	#, D.14967
	addq	%rsi, %rax	# D.14982, D.14982
	movq	(%rax), %rax	# *_984, D.14972
	movq	%rax, (%rcx)	# D.14972, *_969
	.loc 1 2927 0
	movq	-88(%rbp), %rax	# fs, tmp2069
	movq	48(%rax), %rax	# fs_45(D)->top_field, D.14965
	movq	6496(%rax), %rax	# _986->ref_id, D.14980
	addq	$8, %rax	#, D.14980
	movq	(%rax), %rax	# *_988, D.14981
	movl	-68(%rbp), %edx	# i, tmp2070
	movslq	%edx, %rdx	# tmp2070, D.14967
	salq	$3, %rdx	#, D.14967
	addq	%rdx, %rax	# D.14967, D.14981
	movq	(%rax), %rax	# *_992, D.14982
	movl	-64(%rbp), %edx	# j, tmp2071
	movslq	%edx, %rdx	# tmp2071, D.14967
	salq	$3, %rdx	#, D.14967
	leaq	(%rax,%rdx), %rcx	#, D.14982
	movq	-88(%rbp), %rax	# fs, tmp2072
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movq	6496(%rax), %rax	# _997->ref_id, D.14980
	addq	$24, %rax	#, D.14980
	movq	(%rax), %rax	# *_999, D.14981
	movl	-68(%rbp), %edx	# i, tmp2073
	movslq	%edx, %rdx	# tmp2073, D.14967
	salq	$3, %rdx	#, D.14967
	addq	%rdx, %rax	# D.14967, D.14981
	movq	(%rax), %rsi	# *_1003, D.14982
	movl	-64(%rbp), %eax	# j, tmp2074
	leal	3(%rax), %edx	#, tmp2076
	testl	%eax, %eax	# tmp2075
	cmovs	%edx, %eax	# tmp2076,, tmp2075
	sarl	$2, %eax	#, tmp2077
	leal	0(,%rax,8), %edi	#, D.14966
	movl	-64(%rbp), %eax	# j, tmp2078
	cltd
	shrl	$30, %edx	#, tmp2080
	addl	%edx, %eax	# tmp2080, tmp2081
	andl	$3, %eax	#, tmp2082
	subl	%edx, %eax	# tmp2080, tmp2083
	addl	%edi, %eax	# D.14966, D.14966
	cltq
	salq	$3, %rax	#, D.14967
	addq	%rsi, %rax	# D.14982, D.14982
	movq	(%rax), %rax	# *_1011, D.14972
	movq	%rax, (%rcx)	# D.14972, *_996
.L558:
.LBE5:
	.loc 1 2899 0
	addl	$1, -64(%rbp)	#, j
.L557:
	.loc 1 2899 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# fs, tmp2084
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movl	6396(%rax), %eax	# _508->size_y, D.14966
	leal	7(%rax), %edx	#, tmp2086
	testl	%eax, %eax	# tmp2085
	cmovs	%edx, %eax	# tmp2086,, tmp2085
	sarl	$3, %eax	#, tmp2087
	cmpl	-64(%rbp), %eax	# j, D.14966
	jg	.L559	#,
	.loc 1 2897 0 is_stmt 1
	addl	$1, -68(%rbp)	#, i
.L556:
	.loc 1 2897 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# fs, tmp2088
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movl	6392(%rax), %eax	# _504->size_x, D.14966
	leal	3(%rax), %edx	#, tmp2090
	testl	%eax, %eax	# tmp2089
	cmovs	%edx, %eax	# tmp2090,, tmp2089
	sarl	$2, %eax	#, tmp2091
	cmpl	-68(%rbp), %eax	# i, D.14966
	jg	.L560	#,
.L555:
	.loc 1 2935 0 is_stmt 1
	movl	$0, -68(%rbp)	#, i
	jmp	.L561	#
.L609:
	.loc 1 2937 0
	movl	$0, -64(%rbp)	#, j
	jmp	.L562	#
.L608:
.LBB6:
	.loc 1 2939 0
	movl	-68(%rbp), %eax	# i, tmp2093
	leal	3(%rax), %edx	#, tmp2095
	testl	%eax, %eax	# tmp2094
	cmovs	%edx, %eax	# tmp2095,, tmp2094
	sarl	$2, %eax	#, tmp2096
	movl	%eax, -24(%rbp)	# tmp2096, idiv4
	movl	-64(%rbp), %eax	# j, tmp2098
	movl	%eax, %edx	# tmp2098, tmp2099
	shrl	$31, %edx	#, tmp2099
	addl	%edx, %eax	# tmp2099, tmp2100
	sarl	%eax	# tmp2101
	movl	%eax, -20(%rbp)	# tmp2101, jdiv4
	.loc 1 2941 0
	movq	-88(%rbp), %rax	# fs, tmp2102
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movl	6392(%rax), %eax	# _1025->size_x, D.14966
	leal	15(%rax), %edx	#, tmp2104
	testl	%eax, %eax	# tmp2103
	cmovs	%edx, %eax	# tmp2104,, tmp2103
	sarl	$4, %eax	#, tmp2105
	leal	(%rax,%rax), %edx	#, D.14966
	movl	-20(%rbp), %eax	# jdiv4, tmp2106
	movl	%eax, %ecx	# tmp2106, tmp2107
	shrl	$31, %ecx	#, tmp2107
	addl	%ecx, %eax	# tmp2107, tmp2108
	sarl	%eax	# tmp2109
	imull	%edx, %eax	# D.14966, D.14966
	movl	-24(%rbp), %edx	# idiv4, tmp2110
	addl	%edx, %edx	# D.14966
	leal	(%rax,%rdx), %ecx	#, D.14966
	movl	-20(%rbp), %eax	# jdiv4, tmp2111
	cltd
	shrl	$31, %edx	#, tmp2113
	addl	%edx, %eax	# tmp2113, tmp2114
	andl	$1, %eax	#, tmp2115
	subl	%edx, %eax	# tmp2113, tmp2116
	addl	%ecx, %eax	# D.14966, tmp2117
	movl	%eax, -16(%rbp)	# tmp2117, currentmb
	.loc 1 2944 0
	movq	-88(%rbp), %rax	# fs, tmp2118
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movl	6416(%rax), %eax	# _1035->MbaffFrameFlag, D.14966
	testl	%eax, %eax	# D.14966
	je	.L563	#,
	.loc 1 2944 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# fs, tmp2119
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movq	6472(%rax), %rdx	# _1037->mb_field, D.14973
	movl	-16(%rbp), %eax	# currentmb, tmp2120
	cltq
	addq	%rdx, %rax	# D.14973, D.14973
	movzbl	(%rax), %eax	# *_1040, D.14974
	testb	%al, %al	# D.14974
	jne	.L564	#,
.L563:
	.loc 1 2947 0 is_stmt 1
	movq	-88(%rbp), %rax	# fs, tmp2121
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movq	6520(%rax), %rax	# _1042->field_frame, D.14984
	movl	-68(%rbp), %edx	# i, tmp2122
	movslq	%edx, %rdx	# tmp2122, D.14967
	salq	$3, %rdx	#, D.14967
	addq	%rdx, %rax	# D.14967, D.14984
	movq	(%rax), %rax	# *_1046, D.14973
	movl	-64(%rbp), %edx	# j, tmp2123
	addl	%edx, %edx	# D.14966
	movslq	%edx, %rdx	# D.14966, D.14971
	addq	$1, %rdx	#, D.14971
	addq	%rax, %rdx	# D.14973, D.14973
	movq	-88(%rbp), %rax	# fs, tmp2124
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movq	6520(%rax), %rax	# _1052->field_frame, D.14984
	movl	-68(%rbp), %ecx	# i, tmp2125
	movslq	%ecx, %rcx	# tmp2125, D.14967
	salq	$3, %rcx	#, D.14967
	addq	%rcx, %rax	# D.14967, D.14984
	movq	(%rax), %rcx	# *_1056, D.14973
	movl	-64(%rbp), %eax	# j, tmp2126
	addl	%eax, %eax	# D.14966
	cltq
	addq	%rcx, %rax	# D.14973, D.14973
	movb	$0, (%rax)	#, *_1060
	movzbl	(%rax), %eax	# *_1060, D.14974
	movb	%al, (%rdx)	# D.14974, *_1051
	.loc 1 2949 0
	movq	-88(%rbp), %rax	# fs, tmp2127
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movl	6556(%rax), %eax	# _1062->frame_mbs_only_flag, D.14966
	testl	%eax, %eax	# D.14966
	jne	.L564	#,
	.loc 1 2951 0
	movq	-88(%rbp), %rax	# fs, tmp2128
	movq	48(%rax), %rax	# fs_45(D)->top_field, D.14965
	movq	6520(%rax), %rax	# _1064->field_frame, D.14984
	movl	-68(%rbp), %edx	# i, tmp2129
	movslq	%edx, %rdx	# tmp2129, D.14967
	salq	$3, %rdx	#, D.14967
	addq	%rdx, %rax	# D.14967, D.14984
	movq	(%rax), %rdx	# *_1068, D.14973
	movl	-64(%rbp), %eax	# j, tmp2130
	cltq
	addq	%rax, %rdx	# D.14971, D.14973
	movq	-88(%rbp), %rax	# fs, tmp2131
	movq	56(%rax), %rax	# fs_45(D)->bottom_field, D.14965
	movq	6520(%rax), %rax	# _1072->field_frame, D.14984
	movl	-68(%rbp), %ecx	# i, tmp2132
	movslq	%ecx, %rcx	# tmp2132, D.14967
	salq	$3, %rcx	#, D.14967
	addq	%rcx, %rax	# D.14967, D.14984
	movq	(%rax), %rcx	# *_1076, D.14973
	movl	-64(%rbp), %eax	# j, tmp2133
	cltq
	addq	%rcx, %rax	# D.14973, D.14973
	movb	$0, (%rax)	#, *_1079
	movzbl	(%rax), %eax	# *_1079, D.14974
	movb	%al, (%rdx)	# D.14974, *_1071
	.loc 1 2953 0
	movq	-88(%rbp), %rax	# fs, tmp2134
	movq	48(%rax), %rax	# fs_45(D)->top_field, D.14965
	movq	6504(%rax), %rax	# _1081->mv, D.14985
	movq	(%rax), %rax	# *_1082, D.14976
	movl	-68(%rbp), %edx	# i, tmp2135
	movslq	%edx, %rdx	# tmp2135, D.14967
	salq	$3, %rdx	#, D.14967
	addq	%rdx, %rax	# D.14967, D.14976
	movq	(%rax), %rax	# *_1086, D.14977
	movl	-64(%rbp), %edx	# j, tmp2136
	movslq	%edx, %rdx	# tmp2136, D.14967
	salq	$3, %rdx	#, D.14967
	addq	%rdx, %rax	# D.14967, D.14977
	movq	(%rax), %rcx	# *_1090, D.14978
	movq	-88(%rbp), %rax	# fs, tmp2137
	movq	56(%rax), %rax	# fs_45(D)->bottom_field, D.14965
	movq	6504(%rax), %rax	# _1092->mv, D.14985
	movq	(%rax), %rax	# *_1093, D.14976
	movl	-68(%rbp), %edx	# i, tmp2138
	movslq	%edx, %rdx	# tmp2138, D.14967
	salq	$3, %rdx	#, D.14967
	addq	%rdx, %rax	# D.14967, D.14976
	movq	(%rax), %rax	# *_1097, D.14977
	movl	-64(%rbp), %edx	# j, tmp2139
	movslq	%edx, %rdx	# tmp2139, D.14967
	salq	$3, %rdx	#, D.14967
	addq	%rdx, %rax	# D.14967, D.14977
	movq	(%rax), %rax	# *_1101, D.14978
	movq	-88(%rbp), %rdx	# fs, tmp2140
	movq	40(%rdx), %rdx	# fs_45(D)->frame, D.14965
	movq	6504(%rdx), %rdx	# _1103->mv, D.14985
	movq	(%rdx), %rsi	# *_1104, D.14976
	movl	-68(%rbp), %edx	# i, tmp2141
	andl	$2, %edx	#, D.14966
	testl	%edx, %edx	# D.14966
	je	.L565	#,
	.loc 1 2953 0 is_stmt 0 discriminator 1
	movl	-68(%rbp), %edx	# i, tmp2142
	orl	$1, %edx	#, D.14966
	movslq	%edx, %rdx	# D.14966, D.14967
	salq	$3, %rdx	#, iftmp.105
	jmp	.L566	#
.L565:
	.loc 1 2953 0 discriminator 2
	movl	-68(%rbp), %edx	# i, tmp2143
	andl	$-2, %edx	#, D.14966
	movslq	%edx, %rdx	# D.14966, D.14967
	salq	$3, %rdx	#, iftmp.105
.L566:
	.loc 1 2953 0 discriminator 3
	addq	%rsi, %rdx	# D.14976, D.14976
	movq	(%rdx), %rsi	# *_1113, D.14977
	movl	-64(%rbp), %edx	# j, tmp2144
	andl	$2, %edx	#, D.14966
	testl	%edx, %edx	# D.14966
	je	.L567	#,
	.loc 1 2953 0 discriminator 1
	movl	-64(%rbp), %edx	# j, tmp2145
	orl	$1, %edx	#, D.14966
	movslq	%edx, %rdx	# D.14966, D.14967
	salq	$4, %rdx	#, iftmp.106
	jmp	.L568	#
.L567:
	.loc 1 2953 0 discriminator 2
	movl	-64(%rbp), %edx	# j, tmp2146
	andl	$-2, %edx	#, D.14966
	movslq	%edx, %rdx	# D.14966, D.14967
	salq	$4, %rdx	#, iftmp.106
.L568:
	.loc 1 2953 0 discriminator 3
	addq	%rsi, %rdx	# D.14977, D.14977
	movq	(%rdx), %rdx	# *_1122, D.14978
	movzwl	(%rdx), %edx	# *_1123, D.14979
	movw	%dx, (%rax)	# D.14979, *_1102
	movzwl	(%rax), %eax	# *_1102, D.14979
	movw	%ax, (%rcx)	# D.14979, *_1091
	.loc 1 2954 0 is_stmt 1 discriminator 3
	movq	-88(%rbp), %rax	# fs, tmp2147
	movq	48(%rax), %rax	# fs_45(D)->top_field, D.14965
	movq	6504(%rax), %rax	# _1126->mv, D.14985
	movq	(%rax), %rax	# *_1127, D.14976
	movl	-68(%rbp), %edx	# i, tmp2148
	movslq	%edx, %rdx	# tmp2148, D.14967
	salq	$3, %rdx	#, D.14967
	addq	%rdx, %rax	# D.14967, D.14976
	movq	(%rax), %rax	# *_1131, D.14977
	movl	-64(%rbp), %edx	# j, tmp2149
	movslq	%edx, %rdx	# tmp2149, D.14967
	salq	$3, %rdx	#, D.14967
	addq	%rdx, %rax	# D.14967, D.14977
	movq	(%rax), %rax	# *_1135, D.14978
	leaq	2(%rax), %rcx	#, D.14978
	movq	-88(%rbp), %rax	# fs, tmp2150
	movq	56(%rax), %rax	# fs_45(D)->bottom_field, D.14965
	movq	6504(%rax), %rax	# _1138->mv, D.14985
	movq	(%rax), %rax	# *_1139, D.14976
	movl	-68(%rbp), %edx	# i, tmp2151
	movslq	%edx, %rdx	# tmp2151, D.14967
	salq	$3, %rdx	#, D.14967
	addq	%rdx, %rax	# D.14967, D.14976
	movq	(%rax), %rax	# *_1143, D.14977
	movl	-64(%rbp), %edx	# j, tmp2152
	movslq	%edx, %rdx	# tmp2152, D.14967
	salq	$3, %rdx	#, D.14967
	addq	%rdx, %rax	# D.14967, D.14977
	movq	(%rax), %rax	# *_1147, D.14978
	addq	$2, %rax	#, D.14978
	movq	-88(%rbp), %rdx	# fs, tmp2153
	movq	40(%rdx), %rdx	# fs_45(D)->frame, D.14965
	movq	6504(%rdx), %rdx	# _1150->mv, D.14985
	movq	(%rdx), %rsi	# *_1151, D.14976
	movl	-68(%rbp), %edx	# i, tmp2154
	andl	$2, %edx	#, D.14966
	testl	%edx, %edx	# D.14966
	je	.L569	#,
	.loc 1 2954 0 is_stmt 0 discriminator 1
	movl	-68(%rbp), %edx	# i, tmp2155
	orl	$1, %edx	#, D.14966
	movslq	%edx, %rdx	# D.14966, D.14967
	salq	$3, %rdx	#, iftmp.107
	jmp	.L570	#
.L569:
	.loc 1 2954 0 discriminator 2
	movl	-68(%rbp), %edx	# i, tmp2156
	andl	$-2, %edx	#, D.14966
	movslq	%edx, %rdx	# D.14966, D.14967
	salq	$3, %rdx	#, iftmp.107
.L570:
	.loc 1 2954 0 discriminator 3
	addq	%rsi, %rdx	# D.14976, D.14976
	movq	(%rdx), %rsi	# *_1160, D.14977
	movl	-64(%rbp), %edx	# j, tmp2157
	andl	$2, %edx	#, D.14966
	testl	%edx, %edx	# D.14966
	je	.L571	#,
	.loc 1 2954 0 discriminator 1
	movl	-64(%rbp), %edx	# j, tmp2158
	orl	$1, %edx	#, D.14966
	movslq	%edx, %rdx	# D.14966, D.14967
	salq	$4, %rdx	#, iftmp.108
	jmp	.L572	#
.L571:
	.loc 1 2954 0 discriminator 2
	movl	-64(%rbp), %edx	# j, tmp2159
	andl	$-2, %edx	#, D.14966
	movslq	%edx, %rdx	# D.14966, D.14967
	salq	$4, %rdx	#, iftmp.108
.L572:
	.loc 1 2954 0 discriminator 3
	addq	%rsi, %rdx	# D.14977, D.14977
	movq	(%rdx), %rdx	# *_1169, D.14978
	movzwl	2(%rdx), %edx	# MEM[(short int *)_1170 + 2B], D.14979
	movw	%dx, (%rax)	# D.14979, *_1149
	movzwl	(%rax), %eax	# *_1149, D.14979
	movw	%ax, (%rcx)	# D.14979, *_1137
	.loc 1 2955 0 is_stmt 1 discriminator 3
	movq	-88(%rbp), %rax	# fs, tmp2160
	movq	48(%rax), %rax	# fs_45(D)->top_field, D.14965
	movq	6504(%rax), %rax	# _1173->mv, D.14985
	addq	$8, %rax	#, D.14985
	movq	(%rax), %rax	# *_1175, D.14976
	movl	-68(%rbp), %edx	# i, tmp2161
	movslq	%edx, %rdx	# tmp2161, D.14967
	salq	$3, %rdx	#, D.14967
	addq	%rdx, %rax	# D.14967, D.14976
	movq	(%rax), %rax	# *_1179, D.14977
	movl	-64(%rbp), %edx	# j, tmp2162
	movslq	%edx, %rdx	# tmp2162, D.14967
	salq	$3, %rdx	#, D.14967
	addq	%rdx, %rax	# D.14967, D.14977
	movq	(%rax), %rcx	# *_1183, D.14978
	movq	-88(%rbp), %rax	# fs, tmp2163
	movq	56(%rax), %rax	# fs_45(D)->bottom_field, D.14965
	movq	6504(%rax), %rax	# _1185->mv, D.14985
	addq	$8, %rax	#, D.14985
	movq	(%rax), %rax	# *_1187, D.14976
	movl	-68(%rbp), %edx	# i, tmp2164
	movslq	%edx, %rdx	# tmp2164, D.14967
	salq	$3, %rdx	#, D.14967
	addq	%rdx, %rax	# D.14967, D.14976
	movq	(%rax), %rax	# *_1191, D.14977
	movl	-64(%rbp), %edx	# j, tmp2165
	movslq	%edx, %rdx	# tmp2165, D.14967
	salq	$3, %rdx	#, D.14967
	addq	%rdx, %rax	# D.14967, D.14977
	movq	(%rax), %rax	# *_1195, D.14978
	movq	-88(%rbp), %rdx	# fs, tmp2166
	movq	40(%rdx), %rdx	# fs_45(D)->frame, D.14965
	movq	6504(%rdx), %rdx	# _1197->mv, D.14985
	addq	$8, %rdx	#, D.14985
	movq	(%rdx), %rsi	# *_1199, D.14976
	movl	-68(%rbp), %edx	# i, tmp2167
	andl	$2, %edx	#, D.14966
	testl	%edx, %edx	# D.14966
	je	.L573	#,
	.loc 1 2955 0 is_stmt 0 discriminator 1
	movl	-68(%rbp), %edx	# i, tmp2168
	orl	$1, %edx	#, D.14966
	movslq	%edx, %rdx	# D.14966, D.14967
	salq	$3, %rdx	#, iftmp.109
	jmp	.L574	#
.L573:
	.loc 1 2955 0 discriminator 2
	movl	-68(%rbp), %edx	# i, tmp2169
	andl	$-2, %edx	#, D.14966
	movslq	%edx, %rdx	# D.14966, D.14967
	salq	$3, %rdx	#, iftmp.109
.L574:
	.loc 1 2955 0 discriminator 3
	addq	%rsi, %rdx	# D.14976, D.14976
	movq	(%rdx), %rsi	# *_1208, D.14977
	movl	-64(%rbp), %edx	# j, tmp2170
	andl	$2, %edx	#, D.14966
	testl	%edx, %edx	# D.14966
	je	.L575	#,
	.loc 1 2955 0 discriminator 1
	movl	-64(%rbp), %edx	# j, tmp2171
	orl	$1, %edx	#, D.14966
	movslq	%edx, %rdx	# D.14966, D.14967
	salq	$4, %rdx	#, iftmp.110
	jmp	.L576	#
.L575:
	.loc 1 2955 0 discriminator 2
	movl	-64(%rbp), %edx	# j, tmp2172
	andl	$-2, %edx	#, D.14966
	movslq	%edx, %rdx	# D.14966, D.14967
	salq	$4, %rdx	#, iftmp.110
.L576:
	.loc 1 2955 0 discriminator 3
	addq	%rsi, %rdx	# D.14977, D.14977
	movq	(%rdx), %rdx	# *_1217, D.14978
	movzwl	(%rdx), %edx	# *_1218, D.14979
	movw	%dx, (%rax)	# D.14979, *_1196
	movzwl	(%rax), %eax	# *_1196, D.14979
	movw	%ax, (%rcx)	# D.14979, *_1184
	.loc 1 2956 0 is_stmt 1 discriminator 3
	movq	-88(%rbp), %rax	# fs, tmp2173
	movq	48(%rax), %rax	# fs_45(D)->top_field, D.14965
	movq	6504(%rax), %rax	# _1221->mv, D.14985
	addq	$8, %rax	#, D.14985
	movq	(%rax), %rax	# *_1223, D.14976
	movl	-68(%rbp), %edx	# i, tmp2174
	movslq	%edx, %rdx	# tmp2174, D.14967
	salq	$3, %rdx	#, D.14967
	addq	%rdx, %rax	# D.14967, D.14976
	movq	(%rax), %rax	# *_1227, D.14977
	movl	-64(%rbp), %edx	# j, tmp2175
	movslq	%edx, %rdx	# tmp2175, D.14967
	salq	$3, %rdx	#, D.14967
	addq	%rdx, %rax	# D.14967, D.14977
	movq	(%rax), %rax	# *_1231, D.14978
	leaq	2(%rax), %rcx	#, D.14978
	movq	-88(%rbp), %rax	# fs, tmp2176
	movq	56(%rax), %rax	# fs_45(D)->bottom_field, D.14965
	movq	6504(%rax), %rax	# _1234->mv, D.14985
	addq	$8, %rax	#, D.14985
	movq	(%rax), %rax	# *_1236, D.14976
	movl	-68(%rbp), %edx	# i, tmp2177
	movslq	%edx, %rdx	# tmp2177, D.14967
	salq	$3, %rdx	#, D.14967
	addq	%rdx, %rax	# D.14967, D.14976
	movq	(%rax), %rax	# *_1240, D.14977
	movl	-64(%rbp), %edx	# j, tmp2178
	movslq	%edx, %rdx	# tmp2178, D.14967
	salq	$3, %rdx	#, D.14967
	addq	%rdx, %rax	# D.14967, D.14977
	movq	(%rax), %rax	# *_1244, D.14978
	addq	$2, %rax	#, D.14978
	movq	-88(%rbp), %rdx	# fs, tmp2179
	movq	40(%rdx), %rdx	# fs_45(D)->frame, D.14965
	movq	6504(%rdx), %rdx	# _1247->mv, D.14985
	addq	$8, %rdx	#, D.14985
	movq	(%rdx), %rsi	# *_1249, D.14976
	movl	-68(%rbp), %edx	# i, tmp2180
	andl	$2, %edx	#, D.14966
	testl	%edx, %edx	# D.14966
	je	.L577	#,
	.loc 1 2956 0 is_stmt 0 discriminator 1
	movl	-68(%rbp), %edx	# i, tmp2181
	orl	$1, %edx	#, D.14966
	movslq	%edx, %rdx	# D.14966, D.14967
	salq	$3, %rdx	#, iftmp.111
	jmp	.L578	#
.L577:
	.loc 1 2956 0 discriminator 2
	movl	-68(%rbp), %edx	# i, tmp2182
	andl	$-2, %edx	#, D.14966
	movslq	%edx, %rdx	# D.14966, D.14967
	salq	$3, %rdx	#, iftmp.111
.L578:
	.loc 1 2956 0 discriminator 3
	addq	%rsi, %rdx	# D.14976, D.14976
	movq	(%rdx), %rsi	# *_1258, D.14977
	movl	-64(%rbp), %edx	# j, tmp2183
	andl	$2, %edx	#, D.14966
	testl	%edx, %edx	# D.14966
	je	.L579	#,
	.loc 1 2956 0 discriminator 1
	movl	-64(%rbp), %edx	# j, tmp2184
	orl	$1, %edx	#, D.14966
	movslq	%edx, %rdx	# D.14966, D.14967
	salq	$4, %rdx	#, iftmp.112
	jmp	.L580	#
.L579:
	.loc 1 2956 0 discriminator 2
	movl	-64(%rbp), %edx	# j, tmp2185
	andl	$-2, %edx	#, D.14966
	movslq	%edx, %rdx	# D.14966, D.14967
	salq	$4, %rdx	#, iftmp.112
.L580:
	.loc 1 2956 0 discriminator 3
	addq	%rsi, %rdx	# D.14977, D.14977
	movq	(%rdx), %rdx	# *_1267, D.14978
	movzwl	2(%rdx), %edx	# MEM[(short int *)_1268 + 2B], D.14979
	movw	%dx, (%rax)	# D.14979, *_1246
	movzwl	(%rax), %eax	# *_1246, D.14979
	movw	%ax, (%rcx)	# D.14979, *_1233
	.loc 1 2959 0 is_stmt 1 discriminator 3
	movq	-88(%rbp), %rax	# fs, tmp2186
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movq	6480(%rax), %rax	# _1271->ref_idx, D.14976
	movq	(%rax), %rdx	# *_1272, D.14977
	movl	-68(%rbp), %eax	# i, tmp2187
	andl	$2, %eax	#, D.14966
	testl	%eax, %eax	# D.14966
	je	.L581	#,
	.loc 1 2959 0 is_stmt 0 discriminator 1
	movl	-68(%rbp), %eax	# i, tmp2188
	orl	$1, %eax	#, D.14966
	cltq
	salq	$3, %rax	#, iftmp.113
	jmp	.L582	#
.L581:
	.loc 1 2959 0 discriminator 2
	movl	-68(%rbp), %eax	# i, tmp2189
	andl	$-2, %eax	#, D.14966
	cltq
	salq	$3, %rax	#, iftmp.113
.L582:
	.loc 1 2959 0 discriminator 3
	addq	%rdx, %rax	# D.14977, D.14977
	movq	(%rax), %rdx	# *_1281, D.14978
	movl	-64(%rbp), %eax	# j, tmp2190
	andl	$2, %eax	#, D.14966
	testl	%eax, %eax	# D.14966
	je	.L583	#,
	.loc 1 2959 0 discriminator 1
	movl	-64(%rbp), %eax	# j, tmp2191
	orl	$1, %eax	#, D.14966
	cltq
	salq	$2, %rax	#, iftmp.114
	jmp	.L584	#
.L583:
	.loc 1 2959 0 discriminator 2
	movl	-64(%rbp), %eax	# j, tmp2192
	andl	$-2, %eax	#, D.14966
	cltq
	salq	$2, %rax	#, iftmp.114
.L584:
	.loc 1 2959 0 discriminator 3
	addq	%rdx, %rax	# D.14978, D.14978
	movzwl	(%rax), %eax	# *_1290, D.14979
	cmpw	$-1, %ax	#, D.14979
	jne	.L585	#,
	.loc 1 2960 0 is_stmt 1
	movq	-88(%rbp), %rax	# fs, tmp2193
	movq	48(%rax), %rax	# fs_45(D)->top_field, D.14965
	movq	6480(%rax), %rax	# _1292->ref_idx, D.14976
	movq	(%rax), %rax	# *_1293, D.14977
	movl	-68(%rbp), %edx	# i, tmp2194
	movslq	%edx, %rdx	# tmp2194, D.14967
	salq	$3, %rdx	#, D.14967
	addq	%rdx, %rax	# D.14967, D.14977
	movq	(%rax), %rax	# *_1297, D.14978
	movl	-64(%rbp), %edx	# j, tmp2195
	movslq	%edx, %rdx	# tmp2195, D.14967
	addq	%rdx, %rdx	# D.14967
	addq	%rax, %rdx	# D.14978, D.14978
	movq	-88(%rbp), %rax	# fs, tmp2196
	movq	56(%rax), %rax	# fs_45(D)->bottom_field, D.14965
	movq	6480(%rax), %rax	# _1302->ref_idx, D.14976
	movq	(%rax), %rax	# *_1303, D.14977
	movl	-68(%rbp), %ecx	# i, tmp2197
	movslq	%ecx, %rcx	# tmp2197, D.14967
	salq	$3, %rcx	#, D.14967
	addq	%rcx, %rax	# D.14967, D.14977
	movq	(%rax), %rax	# *_1307, D.14978
	movl	-64(%rbp), %ecx	# j, tmp2198
	movslq	%ecx, %rcx	# tmp2198, D.14967
	addq	%rcx, %rcx	# D.14967
	addq	%rcx, %rax	# D.14967, D.14978
	movw	$-1, (%rax)	#, *_1311
	movzwl	(%rax), %eax	# *_1311, D.14979
	movw	%ax, (%rdx)	# D.14979, *_1301
	jmp	.L586	#
.L585:
	.loc 1 2963 0
	movq	-88(%rbp), %rax	# fs, tmp2199
	movq	48(%rax), %rax	# fs_45(D)->top_field, D.14965
	movq	6480(%rax), %rax	# _1313->ref_idx, D.14976
	movq	(%rax), %rax	# *_1314, D.14977
	movl	-68(%rbp), %edx	# i, tmp2200
	movslq	%edx, %rdx	# tmp2200, D.14967
	salq	$3, %rdx	#, D.14967
	addq	%rdx, %rax	# D.14967, D.14977
	movq	(%rax), %rax	# *_1318, D.14978
	movl	-64(%rbp), %edx	# j, tmp2201
	movslq	%edx, %rdx	# tmp2201, D.14967
	addq	%rdx, %rdx	# D.14967
	addq	%rdx, %rax	# D.14967, D.14978
	movq	-88(%rbp), %rdx	# fs, tmp2202
	movq	56(%rdx), %rdx	# fs_45(D)->bottom_field, D.14965
	movq	6480(%rdx), %rdx	# _1323->ref_idx, D.14976
	movq	(%rdx), %rdx	# *_1324, D.14977
	movl	-68(%rbp), %ecx	# i, tmp2203
	movslq	%ecx, %rcx	# tmp2203, D.14967
	salq	$3, %rcx	#, D.14967
	addq	%rcx, %rdx	# D.14967, D.14977
	movq	(%rdx), %rdx	# *_1328, D.14978
	movl	-64(%rbp), %ecx	# j, tmp2204
	movslq	%ecx, %rcx	# tmp2204, D.14967
	addq	%rcx, %rcx	# D.14967
	addq	%rcx, %rdx	# D.14967, D.14978
	movq	-88(%rbp), %rcx	# fs, tmp2205
	movq	40(%rcx), %rcx	# fs_45(D)->frame, D.14965
	movq	6480(%rcx), %rcx	# _1333->ref_idx, D.14976
	movq	(%rcx), %rsi	# *_1334, D.14977
	movl	-68(%rbp), %ecx	# i, tmp2206
	andl	$2, %ecx	#, D.14966
	testl	%ecx, %ecx	# D.14966
	je	.L587	#,
	.loc 1 2963 0 is_stmt 0 discriminator 1
	movl	-68(%rbp), %ecx	# i, tmp2207
	orl	$1, %ecx	#, D.14966
	movslq	%ecx, %rcx	# D.14966, D.14967
	salq	$3, %rcx	#, iftmp.115
	jmp	.L588	#
.L587:
	.loc 1 2963 0 discriminator 2
	movl	-68(%rbp), %ecx	# i, tmp2208
	andl	$-2, %ecx	#, D.14966
	movslq	%ecx, %rcx	# D.14966, D.14967
	salq	$3, %rcx	#, iftmp.115
.L588:
	.loc 1 2963 0 discriminator 3
	addq	%rsi, %rcx	# D.14977, D.14977
	movq	(%rcx), %rsi	# *_1343, D.14978
	movl	-64(%rbp), %ecx	# j, tmp2209
	andl	$2, %ecx	#, D.14966
	testl	%ecx, %ecx	# D.14966
	je	.L589	#,
	.loc 1 2963 0 discriminator 1
	movl	-64(%rbp), %ecx	# j, tmp2210
	orl	$1, %ecx	#, D.14966
	movslq	%ecx, %rcx	# D.14966, D.14967
	salq	$2, %rcx	#, iftmp.116
	jmp	.L590	#
.L589:
	.loc 1 2963 0 discriminator 2
	movl	-64(%rbp), %ecx	# j, tmp2211
	andl	$-2, %ecx	#, D.14966
	movslq	%ecx, %rcx	# D.14966, D.14967
	salq	$2, %rcx	#, iftmp.116
.L590:
	.loc 1 2963 0 discriminator 3
	addq	%rsi, %rcx	# D.14978, D.14978
	movzwl	(%rcx), %ecx	# *_1352, D.14979
	movw	%cx, (%rdx)	# D.14979, *_1332
	movzwl	(%rdx), %edx	# *_1332, D.14979
	movw	%dx, (%rax)	# D.14979, *_1322
	movzwl	(%rax), %eax	# *_1322, D.14979
	cwtl
	movl	%eax, -44(%rbp)	# tmp2212, dummylist0
	.loc 1 2964 0 is_stmt 1 discriminator 3
	movq	-88(%rbp), %rax	# fs, tmp2213
	movq	48(%rax), %rax	# fs_45(D)->top_field, D.14965
	movq	6496(%rax), %rax	# _1357->ref_id, D.14980
	movq	(%rax), %rax	# *_1358, D.14981
	movl	-68(%rbp), %edx	# i, tmp2214
	movslq	%edx, %rdx	# tmp2214, D.14967
	salq	$3, %rdx	#, D.14967
	addq	%rdx, %rax	# D.14967, D.14981
	movq	(%rax), %rax	# *_1362, D.14982
	movl	-64(%rbp), %edx	# j, tmp2215
	movslq	%edx, %rdx	# tmp2215, D.14967
	salq	$3, %rdx	#, D.14967
	addq	%rax, %rdx	# D.14982, D.14982
	cmpl	$0, -44(%rbp)	#, dummylist0
	js	.L591	#,
	.loc 1 2964 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# fs, tmp2216
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movl	-44(%rbp), %ecx	# dummylist0, tmp2218
	movslq	%ecx, %rcx	# tmp2218, tmp2217
	addq	$398, %rcx	#, tmp2219
	movq	8(%rax,%rcx,8), %rax	# _1367->top_ref_pic_num, iftmp.117
	jmp	.L592	#
.L591:
	.loc 1 2964 0 discriminator 2
	movl	$0, %eax	#, iftmp.117
.L592:
	.loc 1 2964 0 discriminator 3
	movq	%rax, (%rdx)	# iftmp.117, *_1366
	.loc 1 2965 0 is_stmt 1 discriminator 3
	movq	-88(%rbp), %rax	# fs, tmp2220
	movq	56(%rax), %rax	# fs_45(D)->bottom_field, D.14965
	movq	6496(%rax), %rax	# _1370->ref_id, D.14980
	movq	(%rax), %rax	# *_1371, D.14981
	movl	-68(%rbp), %edx	# i, tmp2221
	movslq	%edx, %rdx	# tmp2221, D.14967
	salq	$3, %rdx	#, D.14967
	addq	%rdx, %rax	# D.14967, D.14981
	movq	(%rax), %rax	# *_1375, D.14982
	movl	-64(%rbp), %edx	# j, tmp2222
	movslq	%edx, %rdx	# tmp2222, D.14967
	salq	$3, %rdx	#, D.14967
	addq	%rax, %rdx	# D.14982, D.14982
	cmpl	$0, -44(%rbp)	#, dummylist0
	js	.L593	#,
	.loc 1 2965 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# fs, tmp2223
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movl	-44(%rbp), %ecx	# dummylist0, tmp2225
	movslq	%ecx, %rcx	# tmp2225, tmp2224
	addq	$596, %rcx	#, tmp2226
	movq	8(%rax,%rcx,8), %rax	# _1380->bottom_ref_pic_num, iftmp.118
	jmp	.L594	#
.L593:
	.loc 1 2965 0 discriminator 2
	movl	$0, %eax	#, iftmp.118
.L594:
	.loc 1 2965 0 discriminator 3
	movq	%rax, (%rdx)	# iftmp.118, *_1379
.L586:
	.loc 1 2969 0 is_stmt 1
	movq	-88(%rbp), %rax	# fs, tmp2227
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movq	6480(%rax), %rax	# _1383->ref_idx, D.14976
	addq	$8, %rax	#, D.14976
	movq	(%rax), %rdx	# *_1385, D.14977
	movl	-68(%rbp), %eax	# i, tmp2228
	andl	$2, %eax	#, D.14966
	testl	%eax, %eax	# D.14966
	je	.L595	#,
	.loc 1 2969 0 is_stmt 0 discriminator 1
	movl	-68(%rbp), %eax	# i, tmp2229
	orl	$1, %eax	#, D.14966
	cltq
	salq	$3, %rax	#, iftmp.119
	jmp	.L596	#
.L595:
	.loc 1 2969 0 discriminator 2
	movl	-68(%rbp), %eax	# i, tmp2230
	andl	$-2, %eax	#, D.14966
	cltq
	salq	$3, %rax	#, iftmp.119
.L596:
	.loc 1 2969 0 discriminator 3
	addq	%rdx, %rax	# D.14977, D.14977
	movq	(%rax), %rdx	# *_1394, D.14978
	movl	-64(%rbp), %eax	# j, tmp2231
	andl	$2, %eax	#, D.14966
	testl	%eax, %eax	# D.14966
	je	.L597	#,
	.loc 1 2969 0 discriminator 1
	movl	-64(%rbp), %eax	# j, tmp2232
	orl	$1, %eax	#, D.14966
	cltq
	salq	$2, %rax	#, iftmp.120
	jmp	.L598	#
.L597:
	.loc 1 2969 0 discriminator 2
	movl	-64(%rbp), %eax	# j, tmp2233
	andl	$-2, %eax	#, D.14966
	cltq
	salq	$2, %rax	#, iftmp.120
.L598:
	.loc 1 2969 0 discriminator 3
	addq	%rdx, %rax	# D.14978, D.14978
	movzwl	(%rax), %eax	# *_1403, D.14979
	cmpw	$-1, %ax	#, D.14979
	jne	.L599	#,
	.loc 1 2970 0 is_stmt 1
	movq	-88(%rbp), %rax	# fs, tmp2234
	movq	48(%rax), %rax	# fs_45(D)->top_field, D.14965
	movq	6480(%rax), %rax	# _1405->ref_idx, D.14976
	addq	$8, %rax	#, D.14976
	movq	(%rax), %rax	# *_1407, D.14977
	movl	-68(%rbp), %edx	# i, tmp2235
	movslq	%edx, %rdx	# tmp2235, D.14967
	salq	$3, %rdx	#, D.14967
	addq	%rdx, %rax	# D.14967, D.14977
	movq	(%rax), %rax	# *_1411, D.14978
	movl	-64(%rbp), %edx	# j, tmp2236
	movslq	%edx, %rdx	# tmp2236, D.14967
	addq	%rdx, %rdx	# D.14967
	addq	%rax, %rdx	# D.14978, D.14978
	movq	-88(%rbp), %rax	# fs, tmp2237
	movq	56(%rax), %rax	# fs_45(D)->bottom_field, D.14965
	movq	6480(%rax), %rax	# _1416->ref_idx, D.14976
	addq	$8, %rax	#, D.14976
	movq	(%rax), %rax	# *_1418, D.14977
	movl	-68(%rbp), %ecx	# i, tmp2238
	movslq	%ecx, %rcx	# tmp2238, D.14967
	salq	$3, %rcx	#, D.14967
	addq	%rcx, %rax	# D.14967, D.14977
	movq	(%rax), %rax	# *_1422, D.14978
	movl	-64(%rbp), %ecx	# j, tmp2239
	movslq	%ecx, %rcx	# tmp2239, D.14967
	addq	%rcx, %rcx	# D.14967
	addq	%rcx, %rax	# D.14967, D.14978
	movw	$-1, (%rax)	#, *_1426
	movzwl	(%rax), %eax	# *_1426, D.14979
	movw	%ax, (%rdx)	# D.14979, *_1415
	jmp	.L564	#
.L599:
	.loc 1 2973 0
	movq	-88(%rbp), %rax	# fs, tmp2240
	movq	48(%rax), %rax	# fs_45(D)->top_field, D.14965
	movq	6480(%rax), %rax	# _1428->ref_idx, D.14976
	addq	$8, %rax	#, D.14976
	movq	(%rax), %rax	# *_1430, D.14977
	movl	-68(%rbp), %edx	# i, tmp2241
	movslq	%edx, %rdx	# tmp2241, D.14967
	salq	$3, %rdx	#, D.14967
	addq	%rdx, %rax	# D.14967, D.14977
	movq	(%rax), %rax	# *_1434, D.14978
	movl	-64(%rbp), %edx	# j, tmp2242
	movslq	%edx, %rdx	# tmp2242, D.14967
	addq	%rdx, %rdx	# D.14967
	addq	%rdx, %rax	# D.14967, D.14978
	movq	-88(%rbp), %rdx	# fs, tmp2243
	movq	56(%rdx), %rdx	# fs_45(D)->bottom_field, D.14965
	movq	6480(%rdx), %rdx	# _1439->ref_idx, D.14976
	addq	$8, %rdx	#, D.14976
	movq	(%rdx), %rdx	# *_1441, D.14977
	movl	-68(%rbp), %ecx	# i, tmp2244
	movslq	%ecx, %rcx	# tmp2244, D.14967
	salq	$3, %rcx	#, D.14967
	addq	%rcx, %rdx	# D.14967, D.14977
	movq	(%rdx), %rdx	# *_1445, D.14978
	movl	-64(%rbp), %ecx	# j, tmp2245
	movslq	%ecx, %rcx	# tmp2245, D.14967
	addq	%rcx, %rcx	# D.14967
	addq	%rcx, %rdx	# D.14967, D.14978
	movq	-88(%rbp), %rcx	# fs, tmp2246
	movq	40(%rcx), %rcx	# fs_45(D)->frame, D.14965
	movq	6480(%rcx), %rcx	# _1450->ref_idx, D.14976
	addq	$8, %rcx	#, D.14976
	movq	(%rcx), %rsi	# *_1452, D.14977
	movl	-68(%rbp), %ecx	# i, tmp2247
	andl	$2, %ecx	#, D.14966
	testl	%ecx, %ecx	# D.14966
	je	.L600	#,
	.loc 1 2973 0 is_stmt 0 discriminator 1
	movl	-68(%rbp), %ecx	# i, tmp2248
	orl	$1, %ecx	#, D.14966
	movslq	%ecx, %rcx	# D.14966, D.14967
	salq	$3, %rcx	#, iftmp.121
	jmp	.L601	#
.L600:
	.loc 1 2973 0 discriminator 2
	movl	-68(%rbp), %ecx	# i, tmp2249
	andl	$-2, %ecx	#, D.14966
	movslq	%ecx, %rcx	# D.14966, D.14967
	salq	$3, %rcx	#, iftmp.121
.L601:
	.loc 1 2973 0 discriminator 3
	addq	%rsi, %rcx	# D.14977, D.14977
	movq	(%rcx), %rsi	# *_1461, D.14978
	movl	-64(%rbp), %ecx	# j, tmp2250
	andl	$2, %ecx	#, D.14966
	testl	%ecx, %ecx	# D.14966
	je	.L602	#,
	.loc 1 2973 0 discriminator 1
	movl	-64(%rbp), %ecx	# j, tmp2251
	orl	$1, %ecx	#, D.14966
	movslq	%ecx, %rcx	# D.14966, D.14967
	salq	$2, %rcx	#, iftmp.122
	jmp	.L603	#
.L602:
	.loc 1 2973 0 discriminator 2
	movl	-64(%rbp), %ecx	# j, tmp2252
	andl	$-2, %ecx	#, D.14966
	movslq	%ecx, %rcx	# D.14966, D.14967
	salq	$2, %rcx	#, iftmp.122
.L603:
	.loc 1 2973 0 discriminator 3
	addq	%rsi, %rcx	# D.14978, D.14978
	movzwl	(%rcx), %ecx	# *_1470, D.14979
	movw	%cx, (%rdx)	# D.14979, *_1449
	movzwl	(%rdx), %edx	# *_1449, D.14979
	movw	%dx, (%rax)	# D.14979, *_1438
	movzwl	(%rax), %eax	# *_1438, D.14979
	cwtl
	movl	%eax, -40(%rbp)	# tmp2253, dummylist1
	.loc 1 2975 0 is_stmt 1 discriminator 3
	movq	-88(%rbp), %rax	# fs, tmp2254
	movq	48(%rax), %rax	# fs_45(D)->top_field, D.14965
	movq	6496(%rax), %rax	# _1475->ref_id, D.14980
	addq	$8, %rax	#, D.14980
	movq	(%rax), %rax	# *_1477, D.14981
	movl	-68(%rbp), %edx	# i, tmp2255
	movslq	%edx, %rdx	# tmp2255, D.14967
	salq	$3, %rdx	#, D.14967
	addq	%rdx, %rax	# D.14967, D.14981
	movq	(%rax), %rax	# *_1481, D.14982
	movl	-64(%rbp), %edx	# j, tmp2256
	movslq	%edx, %rdx	# tmp2256, D.14967
	salq	$3, %rdx	#, D.14967
	addq	%rax, %rdx	# D.14982, D.14982
	cmpl	$0, -40(%rbp)	#, dummylist1
	js	.L604	#,
	.loc 1 2975 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# fs, tmp2257
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movl	-40(%rbp), %ecx	# dummylist1, tmp2259
	movslq	%ecx, %rcx	# tmp2259, tmp2258
	addq	$431, %rcx	#, tmp2260
	movq	8(%rax,%rcx,8), %rax	# _1486->top_ref_pic_num, iftmp.123
	jmp	.L605	#
.L604:
	.loc 1 2975 0 discriminator 2
	movl	$0, %eax	#, iftmp.123
.L605:
	.loc 1 2975 0 discriminator 3
	movq	%rax, (%rdx)	# iftmp.123, *_1485
	.loc 1 2976 0 is_stmt 1 discriminator 3
	movq	-88(%rbp), %rax	# fs, tmp2261
	movq	56(%rax), %rax	# fs_45(D)->bottom_field, D.14965
	movq	6496(%rax), %rax	# _1489->ref_id, D.14980
	addq	$8, %rax	#, D.14980
	movq	(%rax), %rax	# *_1491, D.14981
	movl	-68(%rbp), %edx	# i, tmp2262
	movslq	%edx, %rdx	# tmp2262, D.14967
	salq	$3, %rdx	#, D.14967
	addq	%rdx, %rax	# D.14967, D.14981
	movq	(%rax), %rax	# *_1495, D.14982
	movl	-64(%rbp), %edx	# j, tmp2263
	movslq	%edx, %rdx	# tmp2263, D.14967
	salq	$3, %rdx	#, D.14967
	addq	%rax, %rdx	# D.14982, D.14982
	cmpl	$0, -40(%rbp)	#, dummylist1
	js	.L606	#,
	.loc 1 2976 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# fs, tmp2264
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movl	-40(%rbp), %ecx	# dummylist1, tmp2266
	movslq	%ecx, %rcx	# tmp2266, tmp2265
	addq	$629, %rcx	#, tmp2267
	movq	8(%rax,%rcx,8), %rax	# _1500->bottom_ref_pic_num, iftmp.124
	jmp	.L607	#
.L606:
	.loc 1 2976 0 discriminator 2
	movl	$0, %eax	#, iftmp.124
.L607:
	.loc 1 2976 0 discriminator 3
	movq	%rax, (%rdx)	# iftmp.124, *_1499
.L564:
.LBE6:
	.loc 1 2937 0 is_stmt 1
	addl	$1, -64(%rbp)	#, j
.L562:
	.loc 1 2937 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# fs, tmp2268
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movl	6396(%rax), %eax	# _1020->size_y, D.14966
	leal	7(%rax), %edx	#, tmp2270
	testl	%eax, %eax	# tmp2269
	cmovs	%edx, %eax	# tmp2270,, tmp2269
	sarl	$3, %eax	#, tmp2271
	cmpl	-64(%rbp), %eax	# j, D.14966
	jg	.L608	#,
	.loc 1 2935 0 is_stmt 1
	addl	$1, -68(%rbp)	#, i
.L561:
	.loc 1 2935 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# fs, tmp2272
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movl	6392(%rax), %eax	# _1016->size_x, D.14966
	leal	3(%rax), %edx	#, tmp2274
	testl	%eax, %eax	# tmp2273
	cmovs	%edx, %eax	# tmp2274,, tmp2273
	sarl	$2, %eax	#, tmp2275
	cmpl	-68(%rbp), %eax	# i, D.14966
	jg	.L609	#,
	.loc 1 2984 0 is_stmt 1
	movl	$0, -64(%rbp)	#, j
	jmp	.L610	#
.L613:
	.loc 1 2986 0
	movl	$0, -68(%rbp)	#, i
	jmp	.L611	#
.L612:
	.loc 1 2988 0 discriminator 2
	movq	-88(%rbp), %rax	# fs, tmp2276
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movq	6520(%rax), %rax	# _1513->field_frame, D.14984
	movl	-68(%rbp), %edx	# i, tmp2277
	movslq	%edx, %rdx	# tmp2277, D.14967
	salq	$3, %rdx	#, D.14967
	addq	%rdx, %rax	# D.14967, D.14984
	movq	(%rax), %rdx	# *_1517, D.14973
	movl	-64(%rbp), %eax	# j, tmp2278
	cltq
	addq	%rdx, %rax	# D.14973, D.14973
	movb	$0, (%rax)	#, *_1520
	.loc 1 2986 0 discriminator 2
	addl	$1, -68(%rbp)	#, i
.L611:
	.loc 1 2986 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# fs, tmp2279
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movl	6392(%rax), %eax	# _1510->size_x, D.14966
	leal	3(%rax), %edx	#, tmp2281
	testl	%eax, %eax	# tmp2280
	cmovs	%edx, %eax	# tmp2281,, tmp2280
	sarl	$2, %eax	#, tmp2282
	cmpl	-68(%rbp), %eax	# i, D.14966
	jg	.L612	#,
	.loc 1 2984 0 is_stmt 1
	addl	$1, -64(%rbp)	#, j
.L610:
	.loc 1 2984 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# fs, tmp2283
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movl	6396(%rax), %eax	# _1506->size_y, D.14966
	leal	3(%rax), %edx	#, tmp2285
	testl	%eax, %eax	# tmp2284
	cmovs	%edx, %eax	# tmp2285,, tmp2284
	sarl	$2, %eax	#, tmp2286
	cmpl	-64(%rbp), %eax	# j, D.14966
	jg	.L613	#,
	.loc 1 2992 0 is_stmt 1
	movq	active_sps(%rip), %rax	# active_sps, active_sps.125
	movl	1148(%rax), %eax	# active_sps.125_1523->frame_mbs_only_flag, D.14983
	testl	%eax, %eax	# D.14983
	je	.L614	#,
	.loc 1 2992 0 is_stmt 0 discriminator 1
	movq	active_sps(%rip), %rax	# active_sps, active_sps.126
	movl	1156(%rax), %eax	# active_sps.126_1525->direct_8x8_inference_flag, D.14983
	testl	%eax, %eax	# D.14983
	je	.L519	#,
.L614:
	.loc 1 2994 0 is_stmt 1
	movl	$0, -64(%rbp)	#, j
	jmp	.L616	#
.L621:
	.loc 1 2996 0
	movl	$0, -68(%rbp)	#, i
	jmp	.L617	#
.L620:
.LBB7:
	.loc 1 2998 0
	movl	-68(%rbp), %eax	# i, tmp2288
	leal	3(%rax), %edx	#, tmp2290
	testl	%eax, %eax	# tmp2289
	cmovs	%edx, %eax	# tmp2290,, tmp2289
	sarl	$2, %eax	#, tmp2291
	movl	%eax, -12(%rbp)	# tmp2291, idiv4
	movl	-64(%rbp), %eax	# j, tmp2293
	leal	3(%rax), %edx	#, tmp2295
	testl	%eax, %eax	# tmp2294
	cmovs	%edx, %eax	# tmp2295,, tmp2294
	sarl	$2, %eax	#, tmp2296
	movl	%eax, -8(%rbp)	# tmp2296, jdiv4
	.loc 1 2999 0
	movq	-88(%rbp), %rax	# fs, tmp2297
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movl	6392(%rax), %eax	# _1537->size_x, D.14966
	leal	15(%rax), %edx	#, tmp2299
	testl	%eax, %eax	# tmp2298
	cmovs	%edx, %eax	# tmp2299,, tmp2298
	sarl	$4, %eax	#, tmp2300
	leal	(%rax,%rax), %edx	#, D.14966
	movl	-8(%rbp), %eax	# jdiv4, tmp2301
	movl	%eax, %ecx	# tmp2301, tmp2302
	shrl	$31, %ecx	#, tmp2302
	addl	%ecx, %eax	# tmp2302, tmp2303
	sarl	%eax	# tmp2304
	imull	%edx, %eax	# D.14966, D.14966
	movl	-12(%rbp), %edx	# idiv4, tmp2305
	addl	%edx, %edx	# D.14966
	leal	(%rax,%rdx), %ecx	#, D.14966
	movl	-8(%rbp), %eax	# jdiv4, tmp2306
	cltd
	shrl	$31, %edx	#, tmp2308
	addl	%edx, %eax	# tmp2308, tmp2309
	andl	$1, %eax	#, tmp2310
	subl	%edx, %eax	# tmp2308, tmp2311
	addl	%ecx, %eax	# D.14966, tmp2312
	movl	%eax, -4(%rbp)	# tmp2312, currentmb
	.loc 1 3001 0
	movq	-88(%rbp), %rax	# fs, tmp2313
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movq	6520(%rax), %rax	# _1547->field_frame, D.14984
	movl	-68(%rbp), %edx	# i, tmp2314
	movslq	%edx, %rdx	# tmp2314, D.14967
	salq	$3, %rdx	#, D.14967
	addq	%rdx, %rax	# D.14967, D.14984
	movq	(%rax), %rdx	# *_1551, D.14973
	movl	-64(%rbp), %eax	# j, tmp2315
	cltq
	addq	%rax, %rdx	# D.14971, D.14973
	movq	-88(%rbp), %rax	# fs, tmp2316
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movl	6416(%rax), %eax	# _1555->MbaffFrameFlag, D.14966
	testl	%eax, %eax	# D.14966
	je	.L618	#,
	.loc 1 3001 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# fs, tmp2317
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movq	6472(%rax), %rcx	# _1557->mb_field, D.14973
	movl	-4(%rbp), %eax	# currentmb, tmp2318
	cltq
	addq	%rcx, %rax	# D.14973, D.14973
	movzbl	(%rax), %eax	# *_1560, iftmp.127
	jmp	.L619	#
.L618:
	.loc 1 3001 0 discriminator 2
	movl	$0, %eax	#, iftmp.127
.L619:
	.loc 1 3001 0 discriminator 3
	movb	%al, (%rdx)	# iftmp.127, *_1554
.LBE7:
	.loc 1 2996 0 is_stmt 1 discriminator 3
	addl	$1, -68(%rbp)	#, i
.L617:
	.loc 1 2996 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# fs, tmp2319
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movl	6392(%rax), %eax	# _1532->size_x, D.14966
	leal	3(%rax), %edx	#, tmp2321
	testl	%eax, %eax	# tmp2320
	cmovs	%edx, %eax	# tmp2321,, tmp2320
	sarl	$2, %eax	#, tmp2322
	cmpl	-68(%rbp), %eax	# i, D.14966
	jg	.L620	#,
	.loc 1 2994 0 is_stmt 1
	addl	$1, -64(%rbp)	#, j
.L616:
	.loc 1 2994 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# fs, tmp2323
	movq	40(%rax), %rax	# fs_45(D)->frame, D.14965
	movl	6396(%rax), %eax	# _1528->size_y, D.14966
	leal	3(%rax), %edx	#, tmp2325
	testl	%eax, %eax	# tmp2324
	cmovs	%edx, %eax	# tmp2325,, tmp2324
	sarl	$2, %eax	#, tmp2326
	cmpl	-64(%rbp), %eax	# j, D.14966
	jg	.L621	#,
.L519:
	.loc 1 3005 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE58:
	.size	dpb_split_field, .-dpb_split_field
	.globl	dpb_combine_field
	.type	dpb_combine_field, @function
dpb_combine_field:
.LFB59:
	.loc 1 3015 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# fs, fs
	.loc 1 3019 0
	movq	-24(%rbp), %rax	# fs, tmp805
	movq	48(%rax), %rax	# fs_19(D)->top_field, D.14986
	movl	6404(%rax), %eax	# _20->size_y_cr, D.14987
	leal	(%rax,%rax), %ecx	#, D.14987
	movq	-24(%rbp), %rax	# fs, tmp806
	movq	48(%rax), %rax	# fs_19(D)->top_field, D.14986
	movl	6400(%rax), %edx	# _23->size_x_cr, D.14987
	movq	-24(%rbp), %rax	# fs, tmp807
	movq	48(%rax), %rax	# fs_19(D)->top_field, D.14986
	movl	6396(%rax), %eax	# _25->size_y, D.14987
	leal	(%rax,%rax), %esi	#, D.14987
	movq	-24(%rbp), %rax	# fs, tmp808
	movq	48(%rax), %rax	# fs_19(D)->top_field, D.14986
	movl	6392(%rax), %eax	# _28->size_x, D.14987
	movl	%ecx, %r8d	# D.14987,
	movl	%edx, %ecx	# D.14987,
	movl	%esi, %edx	# D.14987,
	movl	%eax, %esi	# D.14987,
	movl	$0, %edi	#,
	call	alloc_storable_picture	#
	movq	-24(%rbp), %rdx	# fs, tmp809
	movq	%rax, 40(%rdx)	# D.14986, fs_19(D)->frame
	.loc 1 3021 0
	movl	$0, -16(%rbp)	#, i
	jmp	.L623	#
.L624:
	.loc 1 3023 0 discriminator 2
	movq	-24(%rbp), %rax	# fs, tmp810
	movq	48(%rax), %rax	# fs_19(D)->top_field, D.14986
	movl	6392(%rax), %eax	# _34->size_x, D.14987
	cltq
	leaq	(%rax,%rax), %rdx	#, D.14988
	movq	-24(%rbp), %rax	# fs, tmp811
	movq	48(%rax), %rax	# fs_19(D)->top_field, D.14986
	movq	6424(%rax), %rax	# _38->imgY, D.14989
	movl	-16(%rbp), %ecx	# i, tmp812
	movslq	%ecx, %rcx	# tmp812, D.14988
	salq	$3, %rcx	#, D.14988
	addq	%rcx, %rax	# D.14988, D.14989
	movq	(%rax), %rcx	# *_42, D.14990
	movq	-24(%rbp), %rax	# fs, tmp813
	movq	40(%rax), %rax	# fs_19(D)->frame, D.14986
	movq	6424(%rax), %rax	# _44->imgY, D.14989
	movl	-16(%rbp), %esi	# i, tmp814
	movslq	%esi, %rsi	# tmp814, D.14988
	salq	$4, %rsi	#, D.14988
	addq	%rsi, %rax	# D.14988, D.14989
	movq	(%rax), %rax	# *_48, D.14990
	movq	%rcx, %rsi	# D.14990,
	movq	%rax, %rdi	# D.14990,
	call	memcpy	#
	.loc 1 3024 0 discriminator 2
	movq	-24(%rbp), %rax	# fs, tmp815
	movq	56(%rax), %rax	# fs_19(D)->bottom_field, D.14986
	movl	6392(%rax), %eax	# _50->size_x, D.14987
	cltq
	leaq	(%rax,%rax), %rdx	#, D.14988
	movq	-24(%rbp), %rax	# fs, tmp816
	movq	56(%rax), %rax	# fs_19(D)->bottom_field, D.14986
	movq	6424(%rax), %rax	# _54->imgY, D.14989
	movl	-16(%rbp), %ecx	# i, tmp817
	movslq	%ecx, %rcx	# tmp817, D.14988
	salq	$3, %rcx	#, D.14988
	addq	%rcx, %rax	# D.14988, D.14989
	movq	(%rax), %rcx	# *_58, D.14990
	movq	-24(%rbp), %rax	# fs, tmp818
	movq	40(%rax), %rax	# fs_19(D)->frame, D.14986
	movq	6424(%rax), %rax	# _60->imgY, D.14989
	movl	-16(%rbp), %esi	# i, tmp819
	movslq	%esi, %rsi	# tmp819, D.14991
	salq	$4, %rsi	#, D.14991
	addq	$8, %rsi	#, D.14991
	addq	%rsi, %rax	# D.14991, D.14989
	movq	(%rax), %rax	# *_65, D.14990
	movq	%rcx, %rsi	# D.14990,
	movq	%rax, %rdi	# D.14990,
	call	memcpy	#
	.loc 1 3021 0 discriminator 2
	addl	$1, -16(%rbp)	#, i
.L623:
	.loc 1 3021 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# fs, tmp820
	movq	48(%rax), %rax	# fs_19(D)->top_field, D.14986
	movl	6396(%rax), %eax	# _32->size_y, D.14987
	cmpl	-16(%rbp), %eax	# i, D.14987
	jg	.L624	#,
	.loc 1 3027 0 is_stmt 1
	movl	$0, -16(%rbp)	#, i
	jmp	.L625	#
.L626:
	.loc 1 3029 0 discriminator 2
	movq	-24(%rbp), %rax	# fs, tmp821
	movq	48(%rax), %rax	# fs_19(D)->top_field, D.14986
	movl	6400(%rax), %eax	# _71->size_x_cr, D.14987
	cltq
	leaq	(%rax,%rax), %rdx	#, D.14988
	movq	-24(%rbp), %rax	# fs, tmp822
	movq	48(%rax), %rax	# fs_19(D)->top_field, D.14986
	movq	6464(%rax), %rax	# _75->imgUV, D.14992
	movq	(%rax), %rax	# *_76, D.14989
	movl	-16(%rbp), %ecx	# i, tmp823
	movslq	%ecx, %rcx	# tmp823, D.14988
	salq	$3, %rcx	#, D.14988
	addq	%rcx, %rax	# D.14988, D.14989
	movq	(%rax), %rcx	# *_80, D.14990
	movq	-24(%rbp), %rax	# fs, tmp824
	movq	40(%rax), %rax	# fs_19(D)->frame, D.14986
	movq	6464(%rax), %rax	# _82->imgUV, D.14992
	movq	(%rax), %rax	# *_83, D.14989
	movl	-16(%rbp), %esi	# i, tmp825
	movslq	%esi, %rsi	# tmp825, D.14988
	salq	$4, %rsi	#, D.14988
	addq	%rsi, %rax	# D.14988, D.14989
	movq	(%rax), %rax	# *_87, D.14990
	movq	%rcx, %rsi	# D.14990,
	movq	%rax, %rdi	# D.14990,
	call	memcpy	#
	.loc 1 3030 0 discriminator 2
	movq	-24(%rbp), %rax	# fs, tmp826
	movq	56(%rax), %rax	# fs_19(D)->bottom_field, D.14986
	movl	6400(%rax), %eax	# _89->size_x_cr, D.14987
	cltq
	leaq	(%rax,%rax), %rdx	#, D.14988
	movq	-24(%rbp), %rax	# fs, tmp827
	movq	56(%rax), %rax	# fs_19(D)->bottom_field, D.14986
	movq	6464(%rax), %rax	# _93->imgUV, D.14992
	movq	(%rax), %rax	# *_94, D.14989
	movl	-16(%rbp), %ecx	# i, tmp828
	movslq	%ecx, %rcx	# tmp828, D.14988
	salq	$3, %rcx	#, D.14988
	addq	%rcx, %rax	# D.14988, D.14989
	movq	(%rax), %rcx	# *_98, D.14990
	movq	-24(%rbp), %rax	# fs, tmp829
	movq	40(%rax), %rax	# fs_19(D)->frame, D.14986
	movq	6464(%rax), %rax	# _100->imgUV, D.14992
	movq	(%rax), %rax	# *_101, D.14989
	movl	-16(%rbp), %esi	# i, tmp830
	movslq	%esi, %rsi	# tmp830, D.14991
	salq	$4, %rsi	#, D.14991
	addq	$8, %rsi	#, D.14991
	addq	%rsi, %rax	# D.14991, D.14989
	movq	(%rax), %rax	# *_106, D.14990
	movq	%rcx, %rsi	# D.14990,
	movq	%rax, %rdi	# D.14990,
	call	memcpy	#
	.loc 1 3031 0 discriminator 2
	movq	-24(%rbp), %rax	# fs, tmp831
	movq	48(%rax), %rax	# fs_19(D)->top_field, D.14986
	movl	6400(%rax), %eax	# _108->size_x_cr, D.14987
	cltq
	leaq	(%rax,%rax), %rdx	#, D.14988
	movq	-24(%rbp), %rax	# fs, tmp832
	movq	48(%rax), %rax	# fs_19(D)->top_field, D.14986
	movq	6464(%rax), %rax	# _112->imgUV, D.14992
	addq	$8, %rax	#, D.14992
	movq	(%rax), %rax	# *_114, D.14989
	movl	-16(%rbp), %ecx	# i, tmp833
	movslq	%ecx, %rcx	# tmp833, D.14988
	salq	$3, %rcx	#, D.14988
	addq	%rcx, %rax	# D.14988, D.14989
	movq	(%rax), %rcx	# *_118, D.14990
	movq	-24(%rbp), %rax	# fs, tmp834
	movq	40(%rax), %rax	# fs_19(D)->frame, D.14986
	movq	6464(%rax), %rax	# _120->imgUV, D.14992
	addq	$8, %rax	#, D.14992
	movq	(%rax), %rax	# *_122, D.14989
	movl	-16(%rbp), %esi	# i, tmp835
	movslq	%esi, %rsi	# tmp835, D.14988
	salq	$4, %rsi	#, D.14988
	addq	%rsi, %rax	# D.14988, D.14989
	movq	(%rax), %rax	# *_126, D.14990
	movq	%rcx, %rsi	# D.14990,
	movq	%rax, %rdi	# D.14990,
	call	memcpy	#
	.loc 1 3032 0 discriminator 2
	movq	-24(%rbp), %rax	# fs, tmp836
	movq	56(%rax), %rax	# fs_19(D)->bottom_field, D.14986
	movl	6400(%rax), %eax	# _128->size_x_cr, D.14987
	cltq
	leaq	(%rax,%rax), %rdx	#, D.14988
	movq	-24(%rbp), %rax	# fs, tmp837
	movq	56(%rax), %rax	# fs_19(D)->bottom_field, D.14986
	movq	6464(%rax), %rax	# _132->imgUV, D.14992
	addq	$8, %rax	#, D.14992
	movq	(%rax), %rax	# *_134, D.14989
	movl	-16(%rbp), %ecx	# i, tmp838
	movslq	%ecx, %rcx	# tmp838, D.14988
	salq	$3, %rcx	#, D.14988
	addq	%rcx, %rax	# D.14988, D.14989
	movq	(%rax), %rcx	# *_138, D.14990
	movq	-24(%rbp), %rax	# fs, tmp839
	movq	40(%rax), %rax	# fs_19(D)->frame, D.14986
	movq	6464(%rax), %rax	# _140->imgUV, D.14992
	addq	$8, %rax	#, D.14992
	movq	(%rax), %rax	# *_142, D.14989
	movl	-16(%rbp), %esi	# i, tmp840
	movslq	%esi, %rsi	# tmp840, D.14991
	salq	$4, %rsi	#, D.14991
	addq	$8, %rsi	#, D.14991
	addq	%rsi, %rax	# D.14991, D.14989
	movq	(%rax), %rax	# *_147, D.14990
	movq	%rcx, %rsi	# D.14990,
	movq	%rax, %rdi	# D.14990,
	call	memcpy	#
	.loc 1 3027 0 discriminator 2
	addl	$1, -16(%rbp)	#, i
.L625:
	.loc 1 3027 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# fs, tmp841
	movq	48(%rax), %rax	# fs_19(D)->top_field, D.14986
	movl	6404(%rax), %eax	# _69->size_y_cr, D.14987
	cmpl	-16(%rbp), %eax	# i, D.14987
	jg	.L626	#,
	.loc 1 3035 0 is_stmt 1
	movq	-24(%rbp), %rax	# fs, tmp842
	movq	40(%rax), %rax	# fs_19(D)->frame, D.14986
	movq	%rax, %rdi	# D.14986,
	call	UnifiedOneForthPix	#
	.loc 1 3037 0
	movq	-24(%rbp), %rax	# fs, tmp843
	movq	40(%rax), %rax	# fs_19(D)->frame, D.14986
	movq	-24(%rbp), %rdx	# fs, tmp844
	movq	40(%rdx), %rdx	# fs_19(D)->frame, D.14986
	movq	-24(%rbp), %rcx	# fs, tmp845
	movq	56(%rcx), %rcx	# fs_19(D)->bottom_field, D.14986
	movl	4(%rcx), %esi	# _153->poc, D.14987
	movq	-24(%rbp), %rcx	# fs, tmp846
	movq	48(%rcx), %rcx	# fs_19(D)->top_field, D.14986
	movl	4(%rcx), %ecx	# _155->poc, D.14987
	cmpl	%ecx, %esi	# D.14987, D.14987
	cmovle	%esi, %ecx	# D.14987,, D.14987
	movl	%ecx, 16(%rdx)	# D.14987, _152->frame_poc
	movl	16(%rdx), %edx	# _152->frame_poc, D.14987
	movl	%edx, 4(%rax)	# D.14987, _151->poc
	movl	4(%rax), %edx	# _151->poc, D.14987
	movq	-24(%rbp), %rax	# fs, tmp847
	movl	%edx, 36(%rax)	# D.14987, fs_19(D)->poc
	.loc 1 3039 0
	movq	-24(%rbp), %rax	# fs, tmp848
	movq	56(%rax), %rdi	# fs_19(D)->bottom_field, D.14986
	movq	-24(%rbp), %rax	# fs, tmp849
	movq	48(%rax), %rax	# fs_19(D)->top_field, D.14986
	.loc 1 3040 0
	movq	-24(%rbp), %rdx	# fs, tmp850
	movq	56(%rdx), %rdx	# fs_19(D)->bottom_field, D.14986
	movq	-24(%rbp), %rcx	# fs, tmp851
	movq	40(%rcx), %rcx	# fs_19(D)->frame, D.14986
	movq	-24(%rbp), %rsi	# fs, tmp852
	movq	40(%rsi), %rsi	# fs_19(D)->frame, D.14986
	movq	-24(%rbp), %r8	# fs, tmp853
	movq	48(%r8), %r8	# fs_19(D)->top_field, D.14986
	movl	4(%r8), %r8d	# _165->poc, D.14987
	movl	%r8d, 8(%rsi)	# D.14987, _164->top_poc
	movl	8(%rsi), %esi	# _164->top_poc, D.14987
	movl	%esi, 16(%rcx)	# D.14987, _163->frame_poc
	movl	16(%rcx), %ecx	# _163->frame_poc, D.14987
	movl	%ecx, 8(%rdx)	# D.14987, _162->top_poc
	movl	8(%rdx), %edx	# _162->top_poc, D.14987
	.loc 1 3039 0
	movl	%edx, 16(%rax)	# D.14987, _161->frame_poc
	movl	16(%rax), %eax	# _161->frame_poc, D.14987
	movl	%eax, 16(%rdi)	# D.14987, _160->frame_poc
	.loc 1 3041 0
	movq	-24(%rbp), %rax	# fs, tmp854
	movq	48(%rax), %rax	# fs_19(D)->top_field, D.14986
	movq	-24(%rbp), %rdx	# fs, tmp855
	movq	56(%rdx), %rdx	# fs_19(D)->bottom_field, D.14986
	movl	4(%rdx), %edx	# _172->poc, D.14987
	movl	%edx, 12(%rax)	# D.14987, _171->bottom_poc
	.loc 1 3043 0
	movq	-24(%rbp), %rax	# fs, tmp856
	movq	40(%rax), %rax	# fs_19(D)->frame, D.14986
	movq	-24(%rbp), %rdx	# fs, tmp857
	movq	56(%rdx), %rdx	# fs_19(D)->bottom_field, D.14986
	movl	4(%rdx), %edx	# _175->poc, D.14987
	movl	%edx, 12(%rax)	# D.14987, _174->bottom_poc
	.loc 1 3045 0
	movq	-24(%rbp), %rax	# fs, tmp858
	movq	40(%rax), %rdx	# fs_19(D)->frame, D.14986
	movq	-24(%rbp), %rax	# fs, tmp859
	movq	48(%rax), %rax	# fs_19(D)->top_field, D.14986
	movl	6380(%rax), %eax	# _178->used_for_reference, D.14987
	testl	%eax, %eax	# D.14987
	je	.L627	#,
	.loc 1 3045 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# fs, tmp860
	movq	56(%rax), %rax	# fs_19(D)->bottom_field, D.14986
	movl	6380(%rax), %eax	# _180->used_for_reference, D.14987
	testl	%eax, %eax	# D.14987
	je	.L627	#,
	.loc 1 3045 0 discriminator 3
	movl	$1, %eax	#, iftmp.128
	jmp	.L628	#
.L627:
	.loc 1 3045 0 discriminator 2
	movl	$0, %eax	#, iftmp.128
.L628:
	.loc 1 3045 0 discriminator 4
	movl	%eax, 6380(%rdx)	# iftmp.128, _177->used_for_reference
	.loc 1 3046 0 is_stmt 1 discriminator 4
	movq	-24(%rbp), %rax	# fs, tmp861
	movq	40(%rax), %rdx	# fs_19(D)->frame, D.14986
	movq	-24(%rbp), %rax	# fs, tmp862
	movq	48(%rax), %rax	# fs_19(D)->top_field, D.14986
	movl	6376(%rax), %eax	# _185->is_long_term, D.14987
	testl	%eax, %eax	# D.14987
	je	.L629	#,
	.loc 1 3046 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# fs, tmp863
	movq	56(%rax), %rax	# fs_19(D)->bottom_field, D.14986
	movl	6376(%rax), %eax	# _187->is_long_term, D.14987
	testl	%eax, %eax	# D.14987
	je	.L629	#,
	.loc 1 3046 0 discriminator 3
	movl	$1, %eax	#, iftmp.129
	jmp	.L630	#
.L629:
	.loc 1 3046 0 discriminator 2
	movl	$0, %eax	#, iftmp.129
.L630:
	.loc 1 3046 0 discriminator 4
	movl	%eax, 6376(%rdx)	# iftmp.129, _184->is_long_term
	.loc 1 3048 0 is_stmt 1 discriminator 4
	movq	-24(%rbp), %rax	# fs, tmp864
	movq	40(%rax), %rax	# fs_19(D)->frame, D.14986
	movl	6376(%rax), %eax	# _191->is_long_term, D.14987
	testl	%eax, %eax	# D.14987
	je	.L631	#,
	.loc 1 3049 0
	movq	-24(%rbp), %rax	# fs, tmp865
	movq	40(%rax), %rax	# fs_19(D)->frame, D.14986
	movq	-24(%rbp), %rdx	# fs, tmp866
	movl	28(%rdx), %edx	# fs_19(D)->long_term_frame_idx, D.14987
	movl	%edx, 6372(%rax)	# D.14987, _193->long_term_frame_idx
.L631:
	.loc 1 3051 0
	movq	-24(%rbp), %rax	# fs, tmp867
	movq	40(%rax), %rax	# fs_19(D)->frame, D.14986
	movq	-24(%rbp), %rdx	# fs, tmp868
	movq	48(%rdx), %rdx	# fs_19(D)->top_field, D.14986
	movq	%rdx, 6528(%rax)	# D.14986, _195->top_field
	.loc 1 3052 0
	movq	-24(%rbp), %rax	# fs, tmp869
	movq	40(%rax), %rax	# fs_19(D)->frame, D.14986
	movq	-24(%rbp), %rdx	# fs, tmp870
	movq	56(%rdx), %rdx	# fs_19(D)->bottom_field, D.14986
	movq	%rdx, 6536(%rax)	# D.14986, _197->bottom_field
	.loc 1 3054 0
	movq	-24(%rbp), %rax	# fs, tmp871
	movq	40(%rax), %rax	# fs_19(D)->frame, D.14986
	movl	$0, 6412(%rax)	#, _199->coded_frame
	.loc 1 3056 0
	movq	-24(%rbp), %rax	# fs, tmp872
	movq	40(%rax), %rax	# fs_19(D)->frame, D.14986
	movq	-24(%rbp), %rdx	# fs, tmp873
	movq	48(%rdx), %rdx	# fs_19(D)->top_field, D.14986
	movl	6552(%rdx), %edx	# _201->chroma_format_idc, D.14987
	movl	%edx, 6552(%rax)	# D.14987, _200->chroma_format_idc
	.loc 1 3057 0
	movq	-24(%rbp), %rax	# fs, tmp874
	movq	40(%rax), %rax	# fs_19(D)->frame, D.14986
	movq	-24(%rbp), %rdx	# fs, tmp875
	movq	48(%rdx), %rdx	# fs_19(D)->top_field, D.14986
	movl	6560(%rdx), %edx	# _204->frame_cropping_flag, D.14987
	movl	%edx, 6560(%rax)	# D.14987, _203->frame_cropping_flag
	.loc 1 3058 0
	movq	-24(%rbp), %rax	# fs, tmp876
	movq	40(%rax), %rax	# fs_19(D)->frame, D.14986
	movl	6560(%rax), %eax	# _206->frame_cropping_flag, D.14987
	testl	%eax, %eax	# D.14987
	je	.L632	#,
	.loc 1 3060 0
	movq	-24(%rbp), %rax	# fs, tmp877
	movq	40(%rax), %rax	# fs_19(D)->frame, D.14986
	movq	-24(%rbp), %rdx	# fs, tmp878
	movq	48(%rdx), %rdx	# fs_19(D)->top_field, D.14986
	movl	6572(%rdx), %edx	# _209->frame_cropping_rect_top_offset, D.14987
	movl	%edx, 6572(%rax)	# D.14987, _208->frame_cropping_rect_top_offset
	.loc 1 3061 0
	movq	-24(%rbp), %rax	# fs, tmp879
	movq	40(%rax), %rax	# fs_19(D)->frame, D.14986
	movq	-24(%rbp), %rdx	# fs, tmp880
	movq	48(%rdx), %rdx	# fs_19(D)->top_field, D.14986
	movl	6576(%rdx), %edx	# _212->frame_cropping_rect_bottom_offset, D.14987
	movl	%edx, 6576(%rax)	# D.14987, _211->frame_cropping_rect_bottom_offset
	.loc 1 3062 0
	movq	-24(%rbp), %rax	# fs, tmp881
	movq	40(%rax), %rax	# fs_19(D)->frame, D.14986
	movq	-24(%rbp), %rdx	# fs, tmp882
	movq	48(%rdx), %rdx	# fs_19(D)->top_field, D.14986
	movl	6564(%rdx), %edx	# _215->frame_cropping_rect_left_offset, D.14987
	movl	%edx, 6564(%rax)	# D.14987, _214->frame_cropping_rect_left_offset
	.loc 1 3063 0
	movq	-24(%rbp), %rax	# fs, tmp883
	movq	40(%rax), %rax	# fs_19(D)->frame, D.14986
	movq	-24(%rbp), %rdx	# fs, tmp884
	movq	48(%rdx), %rdx	# fs_19(D)->top_field, D.14986
	movl	6568(%rdx), %edx	# _218->frame_cropping_rect_right_offset, D.14987
	movl	%edx, 6568(%rax)	# D.14987, _217->frame_cropping_rect_right_offset
.L632:
	.loc 1 3066 0
	movq	-24(%rbp), %rax	# fs, tmp885
	movq	48(%rax), %rdx	# fs_19(D)->top_field, D.14986
	movq	-24(%rbp), %rax	# fs, tmp886
	movq	56(%rax), %rax	# fs_19(D)->bottom_field, D.14986
	movq	-24(%rbp), %rcx	# fs, tmp887
	movq	40(%rcx), %rcx	# fs_19(D)->frame, D.14986
	movq	%rcx, 6544(%rax)	# D.14986, _221->frame
	movq	6544(%rax), %rax	# _221->frame, D.14993
	movq	%rax, 6544(%rdx)	# D.14993, _220->frame
	.loc 1 3069 0
	movl	$0, -16(%rbp)	#, i
	jmp	.L633	#
.L634:
	.loc 1 3071 0 discriminator 2
	movq	-24(%rbp), %rax	# fs, tmp888
	movq	40(%rax), %rcx	# fs_19(D)->frame, D.14986
	movq	-24(%rbp), %rax	# fs, tmp889
	movq	56(%rax), %rax	# fs_19(D)->bottom_field, D.14986
	movl	-16(%rbp), %edx	# i, tmp890
	addl	%edx, %edx	# D.14987
	movslq	%edx, %rdx	# D.14987, tmp891
	addq	$35, %rdx	#, tmp892
	movq	8(%rax,%rdx,8), %rax	# _229->ref_pic_num, D.14994
	movq	%rax, %rdx	# D.14994, tmp893
	shrq	$63, %rdx	#, tmp893
	addq	%rdx, %rax	# tmp893, tmp894
	sarq	%rax	# tmp895
	leaq	(%rax,%rax), %rdx	#, D.14994
	movq	-24(%rbp), %rax	# fs, tmp896
	movq	48(%rax), %rax	# fs_19(D)->top_field, D.14986
	movl	-16(%rbp), %esi	# i, tmp897
	addl	%esi, %esi	# D.14987
	movslq	%esi, %rsi	# D.14987, tmp898
	addq	$35, %rsi	#, tmp899
	movq	8(%rax,%rsi,8), %rax	# _234->ref_pic_num, D.14994
	movq	%rax, %rsi	# D.14994, tmp900
	shrq	$63, %rsi	#, tmp900
	addq	%rsi, %rax	# tmp900, tmp901
	sarq	%rax	# tmp902
	addq	%rax, %rax	# D.14994
	cmpq	%rax, %rdx	# D.14994, D.14994
	cmovle	%rdx, %rax	# D.14994,, D.14994
	movl	-16(%rbp), %edx	# i, tmp904
	movslq	%edx, %rdx	# tmp904, tmp903
	addq	$35, %rdx	#, tmp905
	movq	%rax, 8(%rcx,%rdx,8)	# D.14994, _228->ref_pic_num
	.loc 1 3069 0 discriminator 2
	addl	$1, -16(%rbp)	#, i
.L633:
	.loc 1 3069 0 is_stmt 0 discriminator 1
	movl	listXsize+4(%rip), %eax	# listXsize, D.14987
	addl	$1, %eax	#, D.14987
	movl	%eax, %edx	# D.14987, tmp906
	shrl	$31, %edx	#, tmp906
	addl	%edx, %eax	# tmp906, tmp907
	sarl	%eax	# tmp908
	cmpl	-16(%rbp), %eax	# i, D.14987
	jg	.L634	#,
	.loc 1 3074 0 is_stmt 1
	movl	$0, -16(%rbp)	#, i
	jmp	.L635	#
.L636:
	.loc 1 3076 0 discriminator 2
	movq	-24(%rbp), %rax	# fs, tmp909
	movq	40(%rax), %rcx	# fs_19(D)->frame, D.14986
	movq	-24(%rbp), %rax	# fs, tmp910
	movq	56(%rax), %rax	# fs_19(D)->bottom_field, D.14986
	movl	-16(%rbp), %edx	# i, tmp911
	addl	%edx, %edx	# D.14987
	movslq	%edx, %rdx	# D.14987, tmp912
	addq	$2, %rdx	#, tmp913
	movq	8(%rax,%rdx,8), %rax	# _246->ref_pic_num, D.14994
	movq	%rax, %rdx	# D.14994, tmp914
	shrq	$63, %rdx	#, tmp914
	addq	%rdx, %rax	# tmp914, tmp915
	sarq	%rax	# tmp916
	leaq	(%rax,%rax), %rdx	#, D.14994
	movq	-24(%rbp), %rax	# fs, tmp917
	movq	48(%rax), %rax	# fs_19(D)->top_field, D.14986
	movl	-16(%rbp), %esi	# i, tmp918
	addl	%esi, %esi	# D.14987
	movslq	%esi, %rsi	# D.14987, tmp919
	addq	$2, %rsi	#, tmp920
	movq	8(%rax,%rsi,8), %rax	# _251->ref_pic_num, D.14994
	movq	%rax, %rsi	# D.14994, tmp921
	shrq	$63, %rsi	#, tmp921
	addq	%rsi, %rax	# tmp921, tmp922
	sarq	%rax	# tmp923
	addq	%rax, %rax	# D.14994
	cmpq	%rax, %rdx	# D.14994, D.14994
	cmovle	%rdx, %rax	# D.14994,, D.14994
	movl	-16(%rbp), %edx	# i, tmp925
	movslq	%edx, %rdx	# tmp925, tmp924
	addq	$2, %rdx	#, tmp926
	movq	%rax, 8(%rcx,%rdx,8)	# D.14994, _245->ref_pic_num
	.loc 1 3074 0 discriminator 2
	addl	$1, -16(%rbp)	#, i
.L635:
	.loc 1 3074 0 is_stmt 0 discriminator 1
	movl	listXsize(%rip), %eax	# listXsize, D.14987
	addl	$1, %eax	#, D.14987
	movl	%eax, %edx	# D.14987, tmp927
	shrl	$31, %edx	#, tmp927
	addl	%edx, %eax	# tmp927, tmp928
	sarl	%eax	# tmp929
	cmpl	-16(%rbp), %eax	# i, D.14987
	jg	.L636	#,
	.loc 1 3082 0 is_stmt 1
	movl	$0, -16(%rbp)	#, i
	jmp	.L637	#
.L656:
	.loc 1 3084 0
	movl	$0, -12(%rbp)	#, j
	jmp	.L638	#
.L655:
	.loc 1 3086 0
	movq	-24(%rbp), %rax	# fs, tmp930
	movq	40(%rax), %rax	# fs_19(D)->frame, D.14986
	movq	6520(%rax), %rax	# _266->field_frame, D.14995
	movl	-16(%rbp), %edx	# i, tmp931
	movslq	%edx, %rdx	# tmp931, D.14988
	salq	$3, %rdx	#, D.14988
	addq	%rdx, %rax	# D.14988, D.14995
	movq	(%rax), %rcx	# *_270, D.14996
	movl	-12(%rbp), %eax	# j, tmp932
	leal	3(%rax), %edx	#, tmp934
	testl	%eax, %eax	# tmp933
	cmovs	%edx, %eax	# tmp934,, tmp933
	sarl	$2, %eax	#, tmp935
	leal	0(,%rax,8), %esi	#, D.14987
	movl	-12(%rbp), %eax	# j, tmp936
	cltd
	shrl	$30, %edx	#, tmp938
	addl	%edx, %eax	# tmp938, tmp939
	andl	$3, %eax	#, tmp940
	subl	%edx, %eax	# tmp938, tmp941
	addl	%esi, %eax	# D.14987, D.14987
	cltq
	addq	%rax, %rcx	# D.14991, D.14996
	movq	-24(%rbp), %rax	# fs, tmp942
	movq	40(%rax), %rax	# fs_19(D)->frame, D.14986
	movq	6520(%rax), %rax	# _278->field_frame, D.14995
	movl	-16(%rbp), %edx	# i, tmp943
	movslq	%edx, %rdx	# tmp943, D.14988
	salq	$3, %rdx	#, D.14988
	addq	%rdx, %rax	# D.14988, D.14995
	movq	(%rax), %rsi	# *_282, D.14996
	movl	-12(%rbp), %eax	# j, tmp944
	leal	3(%rax), %edx	#, tmp946
	testl	%eax, %eax	# tmp945
	cmovs	%edx, %eax	# tmp946,, tmp945
	sarl	$2, %eax	#, tmp947
	leal	0(,%rax,8), %edi	#, D.14987
	movl	-12(%rbp), %eax	# j, tmp948
	cltd
	shrl	$30, %edx	#, tmp950
	addl	%edx, %eax	# tmp950, tmp951
	andl	$3, %eax	#, tmp952
	subl	%edx, %eax	# tmp950, tmp953
	addl	%edi, %eax	# D.14987, D.14987
	cltq
	addq	$4, %rax	#, D.14991
	addq	%rsi, %rax	# D.14996, D.14996
	movb	$1, (%rax)	#, *_290
	movzbl	(%rax), %eax	# *_290, D.14997
	movb	%al, (%rcx)	# D.14997, *_277
	.loc 1 3088 0
	movq	-24(%rbp), %rax	# fs, tmp954
	movq	40(%rax), %rax	# fs_19(D)->frame, D.14986
	movq	6504(%rax), %rax	# _292->mv, D.14998
	movq	(%rax), %rax	# *_293, D.14999
	movl	-16(%rbp), %edx	# i, tmp955
	movslq	%edx, %rdx	# tmp955, D.14988
	salq	$3, %rdx	#, D.14988
	addq	%rdx, %rax	# D.14988, D.14999
	movq	(%rax), %rcx	# *_297, D.15000
	movl	-12(%rbp), %eax	# j, tmp956
	leal	3(%rax), %edx	#, tmp958
	testl	%eax, %eax	# tmp957
	cmovs	%edx, %eax	# tmp958,, tmp957
	sarl	$2, %eax	#, tmp959
	leal	0(,%rax,8), %esi	#, D.14987
	movl	-12(%rbp), %eax	# j, tmp960
	cltd
	shrl	$30, %edx	#, tmp962
	addl	%edx, %eax	# tmp962, tmp963
	andl	$3, %eax	#, tmp964
	subl	%edx, %eax	# tmp962, tmp965
	addl	%esi, %eax	# D.14987, D.14987
	cltq
	salq	$3, %rax	#, D.14988
	addq	%rcx, %rax	# D.15000, D.15000
	movq	(%rax), %rax	# *_305, D.15001
	movq	-24(%rbp), %rdx	# fs, tmp966
	movq	48(%rdx), %rdx	# fs_19(D)->top_field, D.14986
	movq	6504(%rdx), %rdx	# _307->mv, D.14998
	movq	(%rdx), %rdx	# *_308, D.14999
	movl	-16(%rbp), %ecx	# i, tmp967
	movslq	%ecx, %rcx	# tmp967, D.14988
	salq	$3, %rcx	#, D.14988
	addq	%rcx, %rdx	# D.14988, D.14999
	movq	(%rdx), %rdx	# *_312, D.15000
	movl	-12(%rbp), %ecx	# j, tmp968
	movslq	%ecx, %rcx	# tmp968, D.14988
	salq	$3, %rcx	#, D.14988
	addq	%rcx, %rdx	# D.14988, D.15000
	movq	(%rdx), %rdx	# *_316, D.15001
	movzwl	(%rdx), %edx	# *_317, D.15002
	movw	%dx, (%rax)	# D.15002, *_306
	.loc 1 3089 0
	movq	-24(%rbp), %rax	# fs, tmp969
	movq	40(%rax), %rax	# fs_19(D)->frame, D.14986
	movq	6504(%rax), %rax	# _319->mv, D.14998
	movq	(%rax), %rax	# *_320, D.14999
	movl	-16(%rbp), %edx	# i, tmp970
	movslq	%edx, %rdx	# tmp970, D.14988
	salq	$3, %rdx	#, D.14988
	addq	%rdx, %rax	# D.14988, D.14999
	movq	(%rax), %rcx	# *_324, D.15000
	movl	-12(%rbp), %eax	# j, tmp971
	leal	3(%rax), %edx	#, tmp973
	testl	%eax, %eax	# tmp972
	cmovs	%edx, %eax	# tmp973,, tmp972
	sarl	$2, %eax	#, tmp974
	leal	0(,%rax,8), %esi	#, D.14987
	movl	-12(%rbp), %eax	# j, tmp975
	cltd
	shrl	$30, %edx	#, tmp977
	addl	%edx, %eax	# tmp977, tmp978
	andl	$3, %eax	#, tmp979
	subl	%edx, %eax	# tmp977, tmp980
	addl	%esi, %eax	# D.14987, D.14987
	cltq
	salq	$3, %rax	#, D.14988
	addq	%rcx, %rax	# D.15000, D.15000
	movq	(%rax), %rax	# *_332, D.15001
	leaq	2(%rax), %rdx	#, D.15001
	movq	-24(%rbp), %rax	# fs, tmp981
	movq	48(%rax), %rax	# fs_19(D)->top_field, D.14986
	movq	6504(%rax), %rax	# _335->mv, D.14998
	movq	(%rax), %rax	# *_336, D.14999
	movl	-16(%rbp), %ecx	# i, tmp982
	movslq	%ecx, %rcx	# tmp982, D.14988
	salq	$3, %rcx	#, D.14988
	addq	%rcx, %rax	# D.14988, D.14999
	movq	(%rax), %rax	# *_340, D.15000
	movl	-12(%rbp), %ecx	# j, tmp983
	movslq	%ecx, %rcx	# tmp983, D.14988
	salq	$3, %rcx	#, D.14988
	addq	%rcx, %rax	# D.14988, D.15000
	movq	(%rax), %rax	# *_344, D.15001
	movzwl	2(%rax), %eax	# MEM[(short int *)_345 + 2B], D.15002
	movw	%ax, (%rdx)	# D.15002, *_334
	.loc 1 3090 0
	movq	-24(%rbp), %rax	# fs, tmp984
	movq	40(%rax), %rax	# fs_19(D)->frame, D.14986
	movq	6504(%rax), %rax	# _347->mv, D.14998
	addq	$8, %rax	#, D.14998
	movq	(%rax), %rax	# *_349, D.14999
	movl	-16(%rbp), %edx	# i, tmp985
	movslq	%edx, %rdx	# tmp985, D.14988
	salq	$3, %rdx	#, D.14988
	addq	%rdx, %rax	# D.14988, D.14999
	movq	(%rax), %rcx	# *_353, D.15000
	movl	-12(%rbp), %eax	# j, tmp986
	leal	3(%rax), %edx	#, tmp988
	testl	%eax, %eax	# tmp987
	cmovs	%edx, %eax	# tmp988,, tmp987
	sarl	$2, %eax	#, tmp989
	leal	0(,%rax,8), %esi	#, D.14987
	movl	-12(%rbp), %eax	# j, tmp990
	cltd
	shrl	$30, %edx	#, tmp992
	addl	%edx, %eax	# tmp992, tmp993
	andl	$3, %eax	#, tmp994
	subl	%edx, %eax	# tmp992, tmp995
	addl	%esi, %eax	# D.14987, D.14987
	cltq
	salq	$3, %rax	#, D.14988
	addq	%rcx, %rax	# D.15000, D.15000
	movq	(%rax), %rax	# *_361, D.15001
	movq	-24(%rbp), %rdx	# fs, tmp996
	movq	48(%rdx), %rdx	# fs_19(D)->top_field, D.14986
	movq	6504(%rdx), %rdx	# _363->mv, D.14998
	addq	$8, %rdx	#, D.14998
	movq	(%rdx), %rdx	# *_365, D.14999
	movl	-16(%rbp), %ecx	# i, tmp997
	movslq	%ecx, %rcx	# tmp997, D.14988
	salq	$3, %rcx	#, D.14988
	addq	%rcx, %rdx	# D.14988, D.14999
	movq	(%rdx), %rdx	# *_369, D.15000
	movl	-12(%rbp), %ecx	# j, tmp998
	movslq	%ecx, %rcx	# tmp998, D.14988
	salq	$3, %rcx	#, D.14988
	addq	%rcx, %rdx	# D.14988, D.15000
	movq	(%rdx), %rdx	# *_373, D.15001
	movzwl	(%rdx), %edx	# *_374, D.15002
	movw	%dx, (%rax)	# D.15002, *_362
	.loc 1 3091 0
	movq	-24(%rbp), %rax	# fs, tmp999
	movq	40(%rax), %rax	# fs_19(D)->frame, D.14986
	movq	6504(%rax), %rax	# _376->mv, D.14998
	addq	$8, %rax	#, D.14998
	movq	(%rax), %rax	# *_378, D.14999
	movl	-16(%rbp), %edx	# i, tmp1000
	movslq	%edx, %rdx	# tmp1000, D.14988
	salq	$3, %rdx	#, D.14988
	addq	%rdx, %rax	# D.14988, D.14999
	movq	(%rax), %rcx	# *_382, D.15000
	movl	-12(%rbp), %eax	# j, tmp1001
	leal	3(%rax), %edx	#, tmp1003
	testl	%eax, %eax	# tmp1002
	cmovs	%edx, %eax	# tmp1003,, tmp1002
	sarl	$2, %eax	#, tmp1004
	leal	0(,%rax,8), %esi	#, D.14987
	movl	-12(%rbp), %eax	# j, tmp1005
	cltd
	shrl	$30, %edx	#, tmp1007
	addl	%edx, %eax	# tmp1007, tmp1008
	andl	$3, %eax	#, tmp1009
	subl	%edx, %eax	# tmp1007, tmp1010
	addl	%esi, %eax	# D.14987, D.14987
	cltq
	salq	$3, %rax	#, D.14988
	addq	%rcx, %rax	# D.15000, D.15000
	movq	(%rax), %rax	# *_390, D.15001
	leaq	2(%rax), %rdx	#, D.15001
	movq	-24(%rbp), %rax	# fs, tmp1011
	movq	48(%rax), %rax	# fs_19(D)->top_field, D.14986
	movq	6504(%rax), %rax	# _393->mv, D.14998
	addq	$8, %rax	#, D.14998
	movq	(%rax), %rax	# *_395, D.14999
	movl	-16(%rbp), %ecx	# i, tmp1012
	movslq	%ecx, %rcx	# tmp1012, D.14988
	salq	$3, %rcx	#, D.14988
	addq	%rcx, %rax	# D.14988, D.14999
	movq	(%rax), %rax	# *_399, D.15000
	movl	-12(%rbp), %ecx	# j, tmp1013
	movslq	%ecx, %rcx	# tmp1013, D.14988
	salq	$3, %rcx	#, D.14988
	addq	%rcx, %rax	# D.14988, D.15000
	movq	(%rax), %rax	# *_403, D.15001
	movzwl	2(%rax), %eax	# MEM[(short int *)_404 + 2B], D.15002
	movw	%ax, (%rdx)	# D.15002, *_392
	.loc 1 3093 0
	movq	-24(%rbp), %rax	# fs, tmp1014
	movq	40(%rax), %rax	# fs_19(D)->frame, D.14986
	movq	6480(%rax), %rax	# _406->ref_idx, D.14999
	movq	(%rax), %rax	# *_407, D.15000
	movl	-16(%rbp), %edx	# i, tmp1015
	movslq	%edx, %rdx	# tmp1015, D.14988
	salq	$3, %rdx	#, D.14988
	addq	%rdx, %rax	# D.14988, D.15000
	movq	(%rax), %rcx	# *_411, D.15001
	movl	-12(%rbp), %eax	# j, tmp1016
	leal	3(%rax), %edx	#, tmp1018
	testl	%eax, %eax	# tmp1017
	cmovs	%edx, %eax	# tmp1018,, tmp1017
	sarl	$2, %eax	#, tmp1019
	leal	0(,%rax,8), %esi	#, D.14987
	movl	-12(%rbp), %eax	# j, tmp1020
	cltd
	shrl	$30, %edx	#, tmp1022
	addl	%edx, %eax	# tmp1022, tmp1023
	andl	$3, %eax	#, tmp1024
	subl	%edx, %eax	# tmp1022, tmp1025
	addl	%esi, %eax	# D.14987, D.14987
	cltq
	addq	%rax, %rax	# D.14988
	addq	%rcx, %rax	# D.15001, D.15001
	movq	-24(%rbp), %rdx	# fs, tmp1026
	movq	48(%rdx), %rdx	# fs_19(D)->top_field, D.14986
	movq	6480(%rdx), %rdx	# _420->ref_idx, D.14999
	movq	(%rdx), %rdx	# *_421, D.15000
	movl	-16(%rbp), %ecx	# i, tmp1027
	movslq	%ecx, %rcx	# tmp1027, D.14988
	salq	$3, %rcx	#, D.14988
	addq	%rcx, %rdx	# D.14988, D.15000
	movq	(%rdx), %rdx	# *_425, D.15001
	movl	-12(%rbp), %ecx	# j, tmp1028
	movslq	%ecx, %rcx	# tmp1028, D.14988
	addq	%rcx, %rcx	# D.14988
	addq	%rcx, %rdx	# D.14988, D.15001
	movzwl	(%rdx), %edx	# *_429, D.15002
	movw	%dx, (%rax)	# D.15002, *_419
	movzwl	(%rax), %eax	# *_419, D.15002
	cwtl
	movl	%eax, -8(%rbp)	# tmp1029, dummylist0
	.loc 1 3094 0
	movq	-24(%rbp), %rax	# fs, tmp1030
	movq	40(%rax), %rax	# fs_19(D)->frame, D.14986
	movq	6480(%rax), %rax	# _433->ref_idx, D.14999
	addq	$8, %rax	#, D.14999
	movq	(%rax), %rax	# *_435, D.15000
	movl	-16(%rbp), %edx	# i, tmp1031
	movslq	%edx, %rdx	# tmp1031, D.14988
	salq	$3, %rdx	#, D.14988
	addq	%rdx, %rax	# D.14988, D.15000
	movq	(%rax), %rcx	# *_439, D.15001
	movl	-12(%rbp), %eax	# j, tmp1032
	leal	3(%rax), %edx	#, tmp1034
	testl	%eax, %eax	# tmp1033
	cmovs	%edx, %eax	# tmp1034,, tmp1033
	sarl	$2, %eax	#, tmp1035
	leal	0(,%rax,8), %esi	#, D.14987
	movl	-12(%rbp), %eax	# j, tmp1036
	cltd
	shrl	$30, %edx	#, tmp1038
	addl	%edx, %eax	# tmp1038, tmp1039
	andl	$3, %eax	#, tmp1040
	subl	%edx, %eax	# tmp1038, tmp1041
	addl	%esi, %eax	# D.14987, D.14987
	cltq
	addq	%rax, %rax	# D.14988
	addq	%rcx, %rax	# D.15001, D.15001
	movq	-24(%rbp), %rdx	# fs, tmp1042
	movq	48(%rdx), %rdx	# fs_19(D)->top_field, D.14986
	movq	6480(%rdx), %rdx	# _448->ref_idx, D.14999
	addq	$8, %rdx	#, D.14999
	movq	(%rdx), %rdx	# *_450, D.15000
	movl	-16(%rbp), %ecx	# i, tmp1043
	movslq	%ecx, %rcx	# tmp1043, D.14988
	salq	$3, %rcx	#, D.14988
	addq	%rcx, %rdx	# D.14988, D.15000
	movq	(%rdx), %rdx	# *_454, D.15001
	movl	-12(%rbp), %ecx	# j, tmp1044
	movslq	%ecx, %rcx	# tmp1044, D.14988
	addq	%rcx, %rcx	# D.14988
	addq	%rcx, %rdx	# D.14988, D.15001
	movzwl	(%rdx), %edx	# *_458, D.15002
	movw	%dx, (%rax)	# D.15002, *_447
	movzwl	(%rax), %eax	# *_447, D.15002
	cwtl
	movl	%eax, -4(%rbp)	# tmp1045, dummylist1
	.loc 1 3097 0
	movq	-24(%rbp), %rax	# fs, tmp1046
	movq	48(%rax), %rax	# fs_19(D)->top_field, D.14986
	movq	6496(%rax), %rax	# _462->ref_id, D.15003
	movq	(%rax), %rax	# *_463, D.15004
	movl	-16(%rbp), %edx	# i, tmp1047
	movslq	%edx, %rdx	# tmp1047, D.14988
	salq	$3, %rdx	#, D.14988
	addq	%rdx, %rax	# D.14988, D.15004
	movq	(%rax), %rax	# *_467, D.15005
	movl	-12(%rbp), %edx	# j, tmp1048
	movslq	%edx, %rdx	# tmp1048, D.14988
	salq	$3, %rdx	#, D.14988
	addq	%rax, %rdx	# D.15005, D.15005
	cmpl	$0, -8(%rbp)	#, dummylist0
	js	.L639	#,
	.loc 1 3097 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# fs, tmp1049
	movq	48(%rax), %rax	# fs_19(D)->top_field, D.14986
	movl	-8(%rbp), %ecx	# dummylist0, tmp1051
	movslq	%ecx, %rcx	# tmp1051, tmp1050
	addq	$2, %rcx	#, tmp1052
	movq	8(%rax,%rcx,8), %rax	# _472->ref_pic_num, iftmp.130
	jmp	.L640	#
.L639:
	.loc 1 3097 0 discriminator 2
	movl	$0, %eax	#, iftmp.130
.L640:
	.loc 1 3097 0 discriminator 3
	movq	%rax, (%rdx)	# iftmp.130, *_471
	.loc 1 3098 0 is_stmt 1 discriminator 3
	movq	-24(%rbp), %rax	# fs, tmp1053
	movq	48(%rax), %rax	# fs_19(D)->top_field, D.14986
	movq	6496(%rax), %rax	# _475->ref_id, D.15003
	addq	$8, %rax	#, D.15003
	movq	(%rax), %rax	# *_477, D.15004
	movl	-16(%rbp), %edx	# i, tmp1054
	movslq	%edx, %rdx	# tmp1054, D.14988
	salq	$3, %rdx	#, D.14988
	addq	%rdx, %rax	# D.14988, D.15004
	movq	(%rax), %rax	# *_481, D.15005
	movl	-12(%rbp), %edx	# j, tmp1055
	movslq	%edx, %rdx	# tmp1055, D.14988
	salq	$3, %rdx	#, D.14988
	addq	%rax, %rdx	# D.15005, D.15005
	cmpl	$0, -4(%rbp)	#, dummylist1
	js	.L641	#,
	.loc 1 3098 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# fs, tmp1056
	movq	48(%rax), %rax	# fs_19(D)->top_field, D.14986
	movl	-4(%rbp), %ecx	# dummylist1, tmp1058
	movslq	%ecx, %rcx	# tmp1058, tmp1057
	addq	$35, %rcx	#, tmp1059
	movq	8(%rax,%rcx,8), %rax	# _486->ref_pic_num, iftmp.131
	jmp	.L642	#
.L641:
	.loc 1 3098 0 discriminator 2
	movl	$0, %eax	#, iftmp.131
.L642:
	.loc 1 3098 0 discriminator 3
	movq	%rax, (%rdx)	# iftmp.131, *_485
	.loc 1 3101 0 is_stmt 1 discriminator 3
	movq	-24(%rbp), %rax	# fs, tmp1060
	movq	40(%rax), %rax	# fs_19(D)->frame, D.14986
	movq	6496(%rax), %rax	# _489->ref_id, D.15003
	movq	(%rax), %rax	# *_490, D.15004
	movl	-16(%rbp), %edx	# i, tmp1061
	movslq	%edx, %rdx	# tmp1061, D.14988
	salq	$3, %rdx	#, D.14988
	addq	%rdx, %rax	# D.14988, D.15004
	movq	(%rax), %rcx	# *_494, D.15005
	movl	-12(%rbp), %eax	# j, tmp1062
	leal	3(%rax), %edx	#, tmp1064
	testl	%eax, %eax	# tmp1063
	cmovs	%edx, %eax	# tmp1064,, tmp1063
	sarl	$2, %eax	#, tmp1065
	leal	0(,%rax,8), %esi	#, D.14987
	movl	-12(%rbp), %eax	# j, tmp1066
	cltd
	shrl	$30, %edx	#, tmp1068
	addl	%edx, %eax	# tmp1068, tmp1069
	andl	$3, %eax	#, tmp1070
	subl	%edx, %eax	# tmp1068, tmp1071
	addl	%esi, %eax	# D.14987, D.14987
	cltq
	salq	$3, %rax	#, D.14988
	leaq	(%rcx,%rax), %rdx	#, D.15005
	cmpl	$0, -8(%rbp)	#, dummylist0
	js	.L643	#,
	.loc 1 3101 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# fs, tmp1072
	movq	48(%rax), %rax	# fs_19(D)->top_field, D.14986
	movl	-8(%rbp), %ecx	# dummylist0, tmp1074
	movslq	%ecx, %rcx	# tmp1074, tmp1073
	addq	$200, %rcx	#, tmp1075
	movq	8(%rax,%rcx,8), %rax	# _503->frm_ref_pic_num, iftmp.132
	jmp	.L644	#
.L643:
	.loc 1 3101 0 discriminator 2
	movl	$0, %eax	#, iftmp.132
.L644:
	.loc 1 3101 0 discriminator 3
	movq	%rax, (%rdx)	# iftmp.132, *_502
	.loc 1 3102 0 is_stmt 1 discriminator 3
	movq	-24(%rbp), %rax	# fs, tmp1076
	movq	40(%rax), %rax	# fs_19(D)->frame, D.14986
	movq	6496(%rax), %rax	# _506->ref_id, D.15003
	addq	$8, %rax	#, D.15003
	movq	(%rax), %rax	# *_508, D.15004
	movl	-16(%rbp), %edx	# i, tmp1077
	movslq	%edx, %rdx	# tmp1077, D.14988
	salq	$3, %rdx	#, D.14988
	addq	%rdx, %rax	# D.14988, D.15004
	movq	(%rax), %rcx	# *_512, D.15005
	movl	-12(%rbp), %eax	# j, tmp1078
	leal	3(%rax), %edx	#, tmp1080
	testl	%eax, %eax	# tmp1079
	cmovs	%edx, %eax	# tmp1080,, tmp1079
	sarl	$2, %eax	#, tmp1081
	leal	0(,%rax,8), %esi	#, D.14987
	movl	-12(%rbp), %eax	# j, tmp1082
	cltd
	shrl	$30, %edx	#, tmp1084
	addl	%edx, %eax	# tmp1084, tmp1085
	andl	$3, %eax	#, tmp1086
	subl	%edx, %eax	# tmp1084, tmp1087
	addl	%esi, %eax	# D.14987, D.14987
	cltq
	salq	$3, %rax	#, D.14988
	leaq	(%rcx,%rax), %rdx	#, D.15005
	cmpl	$0, -4(%rbp)	#, dummylist1
	js	.L645	#,
	.loc 1 3102 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# fs, tmp1088
	movq	48(%rax), %rax	# fs_19(D)->top_field, D.14986
	movl	-4(%rbp), %ecx	# dummylist1, tmp1090
	movslq	%ecx, %rcx	# tmp1090, tmp1089
	addq	$233, %rcx	#, tmp1091
	movq	8(%rax,%rcx,8), %rax	# _521->frm_ref_pic_num, iftmp.133
	jmp	.L646	#
.L645:
	.loc 1 3102 0 discriminator 2
	movl	$0, %eax	#, iftmp.133
.L646:
	.loc 1 3102 0 discriminator 3
	movq	%rax, (%rdx)	# iftmp.133, *_520
	.loc 1 3104 0 is_stmt 1 discriminator 3
	movq	-24(%rbp), %rax	# fs, tmp1092
	movq	40(%rax), %rax	# fs_19(D)->frame, D.14986
	movq	6504(%rax), %rax	# _524->mv, D.14998
	movq	(%rax), %rax	# *_525, D.14999
	movl	-16(%rbp), %edx	# i, tmp1093
	movslq	%edx, %rdx	# tmp1093, D.14988
	salq	$3, %rdx	#, D.14988
	addq	%rdx, %rax	# D.14988, D.14999
	movq	(%rax), %rcx	# *_529, D.15000
	movl	-12(%rbp), %eax	# j, tmp1094
	leal	3(%rax), %edx	#, tmp1096
	testl	%eax, %eax	# tmp1095
	cmovs	%edx, %eax	# tmp1096,, tmp1095
	sarl	$2, %eax	#, tmp1097
	leal	0(,%rax,8), %esi	#, D.14987
	movl	-12(%rbp), %eax	# j, tmp1098
	cltd
	shrl	$30, %edx	#, tmp1100
	addl	%edx, %eax	# tmp1100, tmp1101
	andl	$3, %eax	#, tmp1102
	subl	%edx, %eax	# tmp1100, tmp1103
	addl	%esi, %eax	# D.14987, D.14987
	cltq
	addq	$4, %rax	#, D.14991
	salq	$3, %rax	#, D.14991
	addq	%rcx, %rax	# D.15000, D.15000
	movq	(%rax), %rax	# *_538, D.15001
	movq	-24(%rbp), %rdx	# fs, tmp1104
	movq	56(%rdx), %rdx	# fs_19(D)->bottom_field, D.14986
	movq	6504(%rdx), %rdx	# _540->mv, D.14998
	movq	(%rdx), %rdx	# *_541, D.14999
	movl	-16(%rbp), %ecx	# i, tmp1105
	movslq	%ecx, %rcx	# tmp1105, D.14988
	salq	$3, %rcx	#, D.14988
	addq	%rcx, %rdx	# D.14988, D.14999
	movq	(%rdx), %rdx	# *_545, D.15000
	movl	-12(%rbp), %ecx	# j, tmp1106
	movslq	%ecx, %rcx	# tmp1106, D.14988
	salq	$3, %rcx	#, D.14988
	addq	%rcx, %rdx	# D.14988, D.15000
	movq	(%rdx), %rdx	# *_549, D.15001
	movzwl	(%rdx), %edx	# *_550, D.15002
	movw	%dx, (%rax)	# D.15002, *_539
	.loc 1 3105 0 discriminator 3
	movq	-24(%rbp), %rax	# fs, tmp1107
	movq	40(%rax), %rax	# fs_19(D)->frame, D.14986
	movq	6504(%rax), %rax	# _552->mv, D.14998
	movq	(%rax), %rax	# *_553, D.14999
	movl	-16(%rbp), %edx	# i, tmp1108
	movslq	%edx, %rdx	# tmp1108, D.14988
	salq	$3, %rdx	#, D.14988
	addq	%rdx, %rax	# D.14988, D.14999
	movq	(%rax), %rcx	# *_557, D.15000
	movl	-12(%rbp), %eax	# j, tmp1109
	leal	3(%rax), %edx	#, tmp1111
	testl	%eax, %eax	# tmp1110
	cmovs	%edx, %eax	# tmp1111,, tmp1110
	sarl	$2, %eax	#, tmp1112
	leal	0(,%rax,8), %esi	#, D.14987
	movl	-12(%rbp), %eax	# j, tmp1113
	cltd
	shrl	$30, %edx	#, tmp1115
	addl	%edx, %eax	# tmp1115, tmp1116
	andl	$3, %eax	#, tmp1117
	subl	%edx, %eax	# tmp1115, tmp1118
	addl	%esi, %eax	# D.14987, D.14987
	cltq
	addq	$4, %rax	#, D.14991
	salq	$3, %rax	#, D.14991
	addq	%rcx, %rax	# D.15000, D.15000
	movq	(%rax), %rax	# *_566, D.15001
	leaq	2(%rax), %rdx	#, D.15001
	movq	-24(%rbp), %rax	# fs, tmp1119
	movq	56(%rax), %rax	# fs_19(D)->bottom_field, D.14986
	movq	6504(%rax), %rax	# _569->mv, D.14998
	movq	(%rax), %rax	# *_570, D.14999
	movl	-16(%rbp), %ecx	# i, tmp1120
	movslq	%ecx, %rcx	# tmp1120, D.14988
	salq	$3, %rcx	#, D.14988
	addq	%rcx, %rax	# D.14988, D.14999
	movq	(%rax), %rax	# *_574, D.15000
	movl	-12(%rbp), %ecx	# j, tmp1121
	movslq	%ecx, %rcx	# tmp1121, D.14988
	salq	$3, %rcx	#, D.14988
	addq	%rcx, %rax	# D.14988, D.15000
	movq	(%rax), %rax	# *_578, D.15001
	movzwl	2(%rax), %eax	# MEM[(short int *)_579 + 2B], D.15002
	movw	%ax, (%rdx)	# D.15002, *_568
	.loc 1 3106 0 discriminator 3
	movq	-24(%rbp), %rax	# fs, tmp1122
	movq	40(%rax), %rax	# fs_19(D)->frame, D.14986
	movq	6504(%rax), %rax	# _581->mv, D.14998
	addq	$8, %rax	#, D.14998
	movq	(%rax), %rax	# *_583, D.14999
	movl	-16(%rbp), %edx	# i, tmp1123
	movslq	%edx, %rdx	# tmp1123, D.14988
	salq	$3, %rdx	#, D.14988
	addq	%rdx, %rax	# D.14988, D.14999
	movq	(%rax), %rcx	# *_587, D.15000
	movl	-12(%rbp), %eax	# j, tmp1124
	leal	3(%rax), %edx	#, tmp1126
	testl	%eax, %eax	# tmp1125
	cmovs	%edx, %eax	# tmp1126,, tmp1125
	sarl	$2, %eax	#, tmp1127
	leal	0(,%rax,8), %esi	#, D.14987
	movl	-12(%rbp), %eax	# j, tmp1128
	cltd
	shrl	$30, %edx	#, tmp1130
	addl	%edx, %eax	# tmp1130, tmp1131
	andl	$3, %eax	#, tmp1132
	subl	%edx, %eax	# tmp1130, tmp1133
	addl	%esi, %eax	# D.14987, D.14987
	cltq
	addq	$4, %rax	#, D.14991
	salq	$3, %rax	#, D.14991
	addq	%rcx, %rax	# D.15000, D.15000
	movq	(%rax), %rax	# *_596, D.15001
	movq	-24(%rbp), %rdx	# fs, tmp1134
	movq	56(%rdx), %rdx	# fs_19(D)->bottom_field, D.14986
	movq	6504(%rdx), %rdx	# _598->mv, D.14998
	addq	$8, %rdx	#, D.14998
	movq	(%rdx), %rdx	# *_600, D.14999
	movl	-16(%rbp), %ecx	# i, tmp1135
	movslq	%ecx, %rcx	# tmp1135, D.14988
	salq	$3, %rcx	#, D.14988
	addq	%rcx, %rdx	# D.14988, D.14999
	movq	(%rdx), %rdx	# *_604, D.15000
	movl	-12(%rbp), %ecx	# j, tmp1136
	movslq	%ecx, %rcx	# tmp1136, D.14988
	salq	$3, %rcx	#, D.14988
	addq	%rcx, %rdx	# D.14988, D.15000
	movq	(%rdx), %rdx	# *_608, D.15001
	movzwl	(%rdx), %edx	# *_609, D.15002
	movw	%dx, (%rax)	# D.15002, *_597
	.loc 1 3107 0 discriminator 3
	movq	-24(%rbp), %rax	# fs, tmp1137
	movq	40(%rax), %rax	# fs_19(D)->frame, D.14986
	movq	6504(%rax), %rax	# _611->mv, D.14998
	addq	$8, %rax	#, D.14998
	movq	(%rax), %rax	# *_613, D.14999
	movl	-16(%rbp), %edx	# i, tmp1138
	movslq	%edx, %rdx	# tmp1138, D.14988
	salq	$3, %rdx	#, D.14988
	addq	%rdx, %rax	# D.14988, D.14999
	movq	(%rax), %rcx	# *_617, D.15000
	movl	-12(%rbp), %eax	# j, tmp1139
	leal	3(%rax), %edx	#, tmp1141
	testl	%eax, %eax	# tmp1140
	cmovs	%edx, %eax	# tmp1141,, tmp1140
	sarl	$2, %eax	#, tmp1142
	leal	0(,%rax,8), %esi	#, D.14987
	movl	-12(%rbp), %eax	# j, tmp1143
	cltd
	shrl	$30, %edx	#, tmp1145
	addl	%edx, %eax	# tmp1145, tmp1146
	andl	$3, %eax	#, tmp1147
	subl	%edx, %eax	# tmp1145, tmp1148
	addl	%esi, %eax	# D.14987, D.14987
	cltq
	addq	$4, %rax	#, D.14991
	salq	$3, %rax	#, D.14991
	addq	%rcx, %rax	# D.15000, D.15000
	movq	(%rax), %rax	# *_626, D.15001
	leaq	2(%rax), %rdx	#, D.15001
	movq	-24(%rbp), %rax	# fs, tmp1149
	movq	56(%rax), %rax	# fs_19(D)->bottom_field, D.14986
	movq	6504(%rax), %rax	# _629->mv, D.14998
	addq	$8, %rax	#, D.14998
	movq	(%rax), %rax	# *_631, D.14999
	movl	-16(%rbp), %ecx	# i, tmp1150
	movslq	%ecx, %rcx	# tmp1150, D.14988
	salq	$3, %rcx	#, D.14988
	addq	%rcx, %rax	# D.14988, D.14999
	movq	(%rax), %rax	# *_635, D.15000
	movl	-12(%rbp), %ecx	# j, tmp1151
	movslq	%ecx, %rcx	# tmp1151, D.14988
	salq	$3, %rcx	#, D.14988
	addq	%rcx, %rax	# D.14988, D.15000
	movq	(%rax), %rax	# *_639, D.15001
	movzwl	2(%rax), %eax	# MEM[(short int *)_640 + 2B], D.15002
	movw	%ax, (%rdx)	# D.15002, *_628
	.loc 1 3109 0 discriminator 3
	movq	-24(%rbp), %rax	# fs, tmp1152
	movq	40(%rax), %rax	# fs_19(D)->frame, D.14986
	movq	6480(%rax), %rax	# _642->ref_idx, D.14999
	movq	(%rax), %rax	# *_643, D.15000
	movl	-16(%rbp), %edx	# i, tmp1153
	movslq	%edx, %rdx	# tmp1153, D.14988
	salq	$3, %rdx	#, D.14988
	addq	%rdx, %rax	# D.14988, D.15000
	movq	(%rax), %rcx	# *_647, D.15001
	movl	-12(%rbp), %eax	# j, tmp1154
	leal	3(%rax), %edx	#, tmp1156
	testl	%eax, %eax	# tmp1155
	cmovs	%edx, %eax	# tmp1156,, tmp1155
	sarl	$2, %eax	#, tmp1157
	leal	0(,%rax,8), %esi	#, D.14987
	movl	-12(%rbp), %eax	# j, tmp1158
	cltd
	shrl	$30, %edx	#, tmp1160
	addl	%edx, %eax	# tmp1160, tmp1161
	andl	$3, %eax	#, tmp1162
	subl	%edx, %eax	# tmp1160, tmp1163
	addl	%esi, %eax	# D.14987, D.14987
	cltq
	addq	$4, %rax	#, D.14991
	addq	%rax, %rax	# D.14991
	addq	%rcx, %rax	# D.15001, D.15001
	movq	-24(%rbp), %rdx	# fs, tmp1164
	movq	56(%rdx), %rdx	# fs_19(D)->bottom_field, D.14986
	movq	6480(%rdx), %rdx	# _657->ref_idx, D.14999
	movq	(%rdx), %rdx	# *_658, D.15000
	movl	-16(%rbp), %ecx	# i, tmp1165
	movslq	%ecx, %rcx	# tmp1165, D.14988
	salq	$3, %rcx	#, D.14988
	addq	%rcx, %rdx	# D.14988, D.15000
	movq	(%rdx), %rdx	# *_662, D.15001
	movl	-12(%rbp), %ecx	# j, tmp1166
	movslq	%ecx, %rcx	# tmp1166, D.14988
	addq	%rcx, %rcx	# D.14988
	addq	%rcx, %rdx	# D.14988, D.15001
	movzwl	(%rdx), %edx	# *_666, D.15002
	movw	%dx, (%rax)	# D.15002, *_656
	movzwl	(%rax), %eax	# *_656, D.15002
	cwtl
	movl	%eax, -8(%rbp)	# tmp1167, dummylist0
	.loc 1 3110 0 discriminator 3
	movq	-24(%rbp), %rax	# fs, tmp1168
	movq	40(%rax), %rax	# fs_19(D)->frame, D.14986
	movq	6480(%rax), %rax	# _670->ref_idx, D.14999
	addq	$8, %rax	#, D.14999
	movq	(%rax), %rax	# *_672, D.15000
	movl	-16(%rbp), %edx	# i, tmp1169
	movslq	%edx, %rdx	# tmp1169, D.14988
	salq	$3, %rdx	#, D.14988
	addq	%rdx, %rax	# D.14988, D.15000
	movq	(%rax), %rcx	# *_676, D.15001
	movl	-12(%rbp), %eax	# j, tmp1170
	leal	3(%rax), %edx	#, tmp1172
	testl	%eax, %eax	# tmp1171
	cmovs	%edx, %eax	# tmp1172,, tmp1171
	sarl	$2, %eax	#, tmp1173
	leal	0(,%rax,8), %esi	#, D.14987
	movl	-12(%rbp), %eax	# j, tmp1174
	cltd
	shrl	$30, %edx	#, tmp1176
	addl	%edx, %eax	# tmp1176, tmp1177
	andl	$3, %eax	#, tmp1178
	subl	%edx, %eax	# tmp1176, tmp1179
	addl	%esi, %eax	# D.14987, D.14987
	cltq
	addq	$4, %rax	#, D.14991
	addq	%rax, %rax	# D.14991
	addq	%rcx, %rax	# D.15001, D.15001
	movq	-24(%rbp), %rdx	# fs, tmp1180
	movq	56(%rdx), %rdx	# fs_19(D)->bottom_field, D.14986
	movq	6480(%rdx), %rdx	# _686->ref_idx, D.14999
	addq	$8, %rdx	#, D.14999
	movq	(%rdx), %rdx	# *_688, D.15000
	movl	-16(%rbp), %ecx	# i, tmp1181
	movslq	%ecx, %rcx	# tmp1181, D.14988
	salq	$3, %rcx	#, D.14988
	addq	%rcx, %rdx	# D.14988, D.15000
	movq	(%rdx), %rdx	# *_692, D.15001
	movl	-12(%rbp), %ecx	# j, tmp1182
	movslq	%ecx, %rcx	# tmp1182, D.14988
	addq	%rcx, %rcx	# D.14988
	addq	%rcx, %rdx	# D.14988, D.15001
	movzwl	(%rdx), %edx	# *_696, D.15002
	movw	%dx, (%rax)	# D.15002, *_685
	movzwl	(%rax), %eax	# *_685, D.15002
	cwtl
	movl	%eax, -4(%rbp)	# tmp1183, dummylist1
	.loc 1 3112 0 discriminator 3
	movq	-24(%rbp), %rax	# fs, tmp1184
	movq	56(%rax), %rax	# fs_19(D)->bottom_field, D.14986
	movq	6496(%rax), %rax	# _700->ref_id, D.15003
	movq	(%rax), %rax	# *_701, D.15004
	movl	-16(%rbp), %edx	# i, tmp1185
	movslq	%edx, %rdx	# tmp1185, D.14988
	salq	$3, %rdx	#, D.14988
	addq	%rdx, %rax	# D.14988, D.15004
	movq	(%rax), %rax	# *_705, D.15005
	movl	-12(%rbp), %edx	# j, tmp1186
	movslq	%edx, %rdx	# tmp1186, D.14988
	salq	$3, %rdx	#, D.14988
	addq	%rax, %rdx	# D.15005, D.15005
	cmpl	$0, -8(%rbp)	#, dummylist0
	js	.L647	#,
	.loc 1 3112 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# fs, tmp1187
	movq	56(%rax), %rax	# fs_19(D)->bottom_field, D.14986
	movl	-8(%rbp), %ecx	# dummylist0, tmp1189
	movslq	%ecx, %rcx	# tmp1189, tmp1188
	addq	$2, %rcx	#, tmp1190
	movq	8(%rax,%rcx,8), %rax	# _710->ref_pic_num, iftmp.134
	jmp	.L648	#
.L647:
	.loc 1 3112 0 discriminator 2
	movl	$0, %eax	#, iftmp.134
.L648:
	.loc 1 3112 0 discriminator 3
	movq	%rax, (%rdx)	# iftmp.134, *_709
	.loc 1 3113 0 is_stmt 1 discriminator 3
	movq	-24(%rbp), %rax	# fs, tmp1191
	movq	56(%rax), %rax	# fs_19(D)->bottom_field, D.14986
	movq	6496(%rax), %rax	# _713->ref_id, D.15003
	addq	$8, %rax	#, D.15003
	movq	(%rax), %rax	# *_715, D.15004
	movl	-16(%rbp), %edx	# i, tmp1192
	movslq	%edx, %rdx	# tmp1192, D.14988
	salq	$3, %rdx	#, D.14988
	addq	%rdx, %rax	# D.14988, D.15004
	movq	(%rax), %rax	# *_719, D.15005
	movl	-12(%rbp), %edx	# j, tmp1193
	movslq	%edx, %rdx	# tmp1193, D.14988
	salq	$3, %rdx	#, D.14988
	addq	%rax, %rdx	# D.15005, D.15005
	cmpl	$0, -4(%rbp)	#, dummylist1
	js	.L649	#,
	.loc 1 3113 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# fs, tmp1194
	movq	56(%rax), %rax	# fs_19(D)->bottom_field, D.14986
	movl	-4(%rbp), %ecx	# dummylist1, tmp1196
	movslq	%ecx, %rcx	# tmp1196, tmp1195
	addq	$35, %rcx	#, tmp1197
	movq	8(%rax,%rcx,8), %rax	# _724->ref_pic_num, iftmp.135
	jmp	.L650	#
.L649:
	.loc 1 3113 0 discriminator 2
	movl	$0, %eax	#, iftmp.135
.L650:
	.loc 1 3113 0 discriminator 3
	movq	%rax, (%rdx)	# iftmp.135, *_723
	.loc 1 3116 0 is_stmt 1 discriminator 3
	movq	-24(%rbp), %rax	# fs, tmp1198
	movq	40(%rax), %rax	# fs_19(D)->frame, D.14986
	movq	6496(%rax), %rax	# _727->ref_id, D.15003
	movq	(%rax), %rax	# *_728, D.15004
	movl	-16(%rbp), %edx	# i, tmp1199
	movslq	%edx, %rdx	# tmp1199, D.14988
	salq	$3, %rdx	#, D.14988
	addq	%rdx, %rax	# D.14988, D.15004
	movq	(%rax), %rcx	# *_732, D.15005
	movl	-12(%rbp), %eax	# j, tmp1200
	leal	3(%rax), %edx	#, tmp1202
	testl	%eax, %eax	# tmp1201
	cmovs	%edx, %eax	# tmp1202,, tmp1201
	sarl	$2, %eax	#, tmp1203
	leal	0(,%rax,8), %esi	#, D.14987
	movl	-12(%rbp), %eax	# j, tmp1204
	cltd
	shrl	$30, %edx	#, tmp1206
	addl	%edx, %eax	# tmp1206, tmp1207
	andl	$3, %eax	#, tmp1208
	subl	%edx, %eax	# tmp1206, tmp1209
	addl	%esi, %eax	# D.14987, D.14987
	cltq
	addq	$4, %rax	#, D.14991
	salq	$3, %rax	#, D.14991
	leaq	(%rcx,%rax), %rdx	#, D.15005
	cmpl	$0, -8(%rbp)	#, dummylist0
	js	.L651	#,
	.loc 1 3116 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# fs, tmp1210
	movq	56(%rax), %rax	# fs_19(D)->bottom_field, D.14986
	movl	-8(%rbp), %ecx	# dummylist0, tmp1212
	movslq	%ecx, %rcx	# tmp1212, tmp1211
	addq	$200, %rcx	#, tmp1213
	movq	8(%rax,%rcx,8), %rax	# _742->frm_ref_pic_num, iftmp.136
	jmp	.L652	#
.L651:
	.loc 1 3116 0 discriminator 2
	movq	$-1, %rax	#, iftmp.136
.L652:
	.loc 1 3116 0 discriminator 3
	movq	%rax, (%rdx)	# iftmp.136, *_741
	.loc 1 3117 0 is_stmt 1 discriminator 3
	movq	-24(%rbp), %rax	# fs, tmp1214
	movq	40(%rax), %rax	# fs_19(D)->frame, D.14986
	movq	6496(%rax), %rax	# _745->ref_id, D.15003
	addq	$8, %rax	#, D.15003
	movq	(%rax), %rax	# *_747, D.15004
	movl	-16(%rbp), %edx	# i, tmp1215
	movslq	%edx, %rdx	# tmp1215, D.14988
	salq	$3, %rdx	#, D.14988
	addq	%rdx, %rax	# D.14988, D.15004
	movq	(%rax), %rcx	# *_751, D.15005
	movl	-12(%rbp), %eax	# j, tmp1216
	leal	3(%rax), %edx	#, tmp1218
	testl	%eax, %eax	# tmp1217
	cmovs	%edx, %eax	# tmp1218,, tmp1217
	sarl	$2, %eax	#, tmp1219
	leal	0(,%rax,8), %esi	#, D.14987
	movl	-12(%rbp), %eax	# j, tmp1220
	cltd
	shrl	$30, %edx	#, tmp1222
	addl	%edx, %eax	# tmp1222, tmp1223
	andl	$3, %eax	#, tmp1224
	subl	%edx, %eax	# tmp1222, tmp1225
	addl	%esi, %eax	# D.14987, D.14987
	cltq
	addq	$4, %rax	#, D.14991
	salq	$3, %rax	#, D.14991
	leaq	(%rcx,%rax), %rdx	#, D.15005
	cmpl	$0, -4(%rbp)	#, dummylist1
	js	.L653	#,
	.loc 1 3117 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# fs, tmp1226
	movq	56(%rax), %rax	# fs_19(D)->bottom_field, D.14986
	movl	-4(%rbp), %ecx	# dummylist1, tmp1228
	movslq	%ecx, %rcx	# tmp1228, tmp1227
	addq	$233, %rcx	#, tmp1229
	movq	8(%rax,%rcx,8), %rax	# _761->frm_ref_pic_num, iftmp.137
	jmp	.L654	#
.L653:
	.loc 1 3117 0 discriminator 2
	movq	$-1, %rax	#, iftmp.137
.L654:
	.loc 1 3117 0 discriminator 3
	movq	%rax, (%rdx)	# iftmp.137, *_760
	.loc 1 3084 0 is_stmt 1 discriminator 3
	addl	$1, -12(%rbp)	#, j
.L638:
	.loc 1 3084 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# fs, tmp1230
	movq	48(%rax), %rax	# fs_19(D)->top_field, D.14986
	movl	6396(%rax), %eax	# _263->size_y, D.14987
	leal	3(%rax), %edx	#, tmp1232
	testl	%eax, %eax	# tmp1231
	cmovs	%edx, %eax	# tmp1232,, tmp1231
	sarl	$2, %eax	#, tmp1233
	cmpl	-12(%rbp), %eax	# j, D.14987
	jg	.L655	#,
	.loc 1 3082 0 is_stmt 1
	addl	$1, -16(%rbp)	#, i
.L637:
	.loc 1 3082 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# fs, tmp1234
	movq	48(%rax), %rax	# fs_19(D)->top_field, D.14986
	movl	6392(%rax), %eax	# _259->size_x, D.14987
	leal	3(%rax), %edx	#, tmp1236
	testl	%eax, %eax	# tmp1235
	cmovs	%edx, %eax	# tmp1236,, tmp1235
	sarl	$2, %eax	#, tmp1237
	cmpl	-16(%rbp), %eax	# i, D.14987
	jg	.L656	#,
	.loc 1 3123 0 is_stmt 1
	movq	active_sps(%rip), %rax	# active_sps, active_sps.138
	movl	1148(%rax), %eax	# active_sps.138_766->frame_mbs_only_flag, D.15006
	testl	%eax, %eax	# D.15006
	je	.L657	#,
	.loc 1 3123 0 is_stmt 0 discriminator 1
	movq	active_sps(%rip), %rax	# active_sps, active_sps.139
	movl	1156(%rax), %eax	# active_sps.139_768->direct_8x8_inference_flag, D.15006
	testl	%eax, %eax	# D.15006
	je	.L622	#,
.L657:
	.loc 1 3125 0 is_stmt 1
	movl	$0, -16(%rbp)	#, i
	jmp	.L659	#
.L662:
	.loc 1 3127 0
	movl	$0, -12(%rbp)	#, j
	jmp	.L660	#
.L661:
	.loc 1 3129 0 discriminator 2
	movq	-24(%rbp), %rax	# fs, tmp1238
	movq	48(%rax), %rax	# fs_19(D)->top_field, D.14986
	movq	6520(%rax), %rax	# _778->field_frame, D.14995
	movl	-16(%rbp), %edx	# i, tmp1239
	movslq	%edx, %rdx	# tmp1239, D.14988
	salq	$3, %rdx	#, D.14988
	addq	%rdx, %rax	# D.14988, D.14995
	movq	(%rax), %rdx	# *_782, D.14996
	movl	-12(%rbp), %eax	# j, tmp1240
	cltq
	addq	%rdx, %rax	# D.14996, D.14996
	movb	$1, (%rax)	#, *_785
	.loc 1 3130 0 discriminator 2
	movq	-24(%rbp), %rax	# fs, tmp1241
	movq	56(%rax), %rax	# fs_19(D)->bottom_field, D.14986
	movq	6520(%rax), %rax	# _786->field_frame, D.14995
	movl	-16(%rbp), %edx	# i, tmp1242
	movslq	%edx, %rdx	# tmp1242, D.14988
	salq	$3, %rdx	#, D.14988
	addq	%rdx, %rax	# D.14988, D.14995
	movq	(%rax), %rdx	# *_790, D.14996
	movl	-12(%rbp), %eax	# j, tmp1243
	cltq
	addq	%rdx, %rax	# D.14996, D.14996
	movb	$1, (%rax)	#, *_793
	.loc 1 3127 0 discriminator 2
	addl	$1, -12(%rbp)	#, j
.L660:
	.loc 1 3127 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# fs, tmp1244
	movq	48(%rax), %rax	# fs_19(D)->top_field, D.14986
	movl	6396(%rax), %eax	# _775->size_y, D.14987
	leal	3(%rax), %edx	#, tmp1246
	testl	%eax, %eax	# tmp1245
	cmovs	%edx, %eax	# tmp1246,, tmp1245
	sarl	$2, %eax	#, tmp1247
	cmpl	-12(%rbp), %eax	# j, D.14987
	jg	.L661	#,
	.loc 1 3125 0 is_stmt 1
	addl	$1, -16(%rbp)	#, i
.L659:
	.loc 1 3125 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# fs, tmp1248
	movq	48(%rax), %rax	# fs_19(D)->top_field, D.14986
	movl	6392(%rax), %eax	# _771->size_x, D.14987
	leal	3(%rax), %edx	#, tmp1250
	testl	%eax, %eax	# tmp1249
	cmovs	%edx, %eax	# tmp1250,, tmp1249
	sarl	$2, %eax	#, tmp1251
	cmpl	-16(%rbp), %eax	# i, D.14987
	jg	.L662	#,
.L622:
	.loc 1 3135 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE59:
	.size	dpb_combine_field, .-dpb_combine_field
	.section	.rodata
	.align 8
.LC26:
	.string	"alloc_ref_pic_list_reordering_buffer: remapping_of_pic_nums_idc_l0"
	.align 8
.LC27:
	.string	"alloc_ref_pic_list_reordering_buffer: abs_diff_pic_num_minus1_l0"
	.align 8
.LC28:
	.string	"alloc_ref_pic_list_reordering_buffer: long_term_pic_idx_l0"
	.align 8
.LC29:
	.string	"alloc_ref_pic_list_reordering_buffer: remapping_of_pic_nums_idc_l1"
	.align 8
.LC30:
	.string	"alloc_ref_pic_list_reordering_buffer: abs_diff_pic_num_minus1_l1"
	.align 8
.LC31:
	.string	"alloc_ref_pic_list_reordering_buffer: long_term_pic_idx_l1"
	.text
	.globl	alloc_ref_pic_list_reordering_buffer
	.type	alloc_ref_pic_list_reordering_buffer, @function
alloc_ref_pic_list_reordering_buffer:
.LFB60:
	.loc 1 3145 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# currSlice, currSlice
	.loc 1 3146 0
	movq	img(%rip), %rax	# img, img.140
	movl	72000(%rax), %eax	# img.140_1->num_ref_idx_l0_active, D.15008
	addl	$1, %eax	#, tmp87
	movl	%eax, -4(%rbp)	# tmp87, size
	.loc 1 3148 0
	movq	img(%rip), %rax	# img, img.141
	movl	24(%rax), %eax	# img.141_4->type, D.15008
	cmpl	$2, %eax	#, D.15008
	je	.L664	#,
	.loc 1 3148 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.142
	movl	24(%rax), %eax	# img.142_6->type, D.15008
	cmpl	$4, %eax	#, D.15008
	je	.L664	#,
	.loc 1 3150 0 is_stmt 1
	movl	-4(%rbp), %eax	# size, tmp88
	cltq
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.15009,
	call	calloc	#
	movq	%rax, %rdx	# tmp89, D.15010
	movq	-24(%rbp), %rax	# currSlice, tmp90
	movq	%rdx, 64(%rax)	# D.15010, currSlice_10(D)->remapping_of_pic_nums_idc_l0
	movq	-24(%rbp), %rax	# currSlice, tmp91
	movq	64(%rax), %rax	# currSlice_10(D)->remapping_of_pic_nums_idc_l0, D.15011
	testq	%rax, %rax	# D.15011
	jne	.L665	#,
	.loc 1 3150 0 is_stmt 0 discriminator 1
	movl	$.LC26, %edi	#,
	call	no_mem_exit	#
.L665:
	.loc 1 3151 0 is_stmt 1
	movl	-4(%rbp), %eax	# size, tmp92
	cltq
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.15009,
	call	calloc	#
	movq	%rax, %rdx	# tmp93, D.15010
	movq	-24(%rbp), %rax	# currSlice, tmp94
	movq	%rdx, 72(%rax)	# D.15010, currSlice_10(D)->abs_diff_pic_num_minus1_l0
	movq	-24(%rbp), %rax	# currSlice, tmp95
	movq	72(%rax), %rax	# currSlice_10(D)->abs_diff_pic_num_minus1_l0, D.15011
	testq	%rax, %rax	# D.15011
	jne	.L666	#,
	.loc 1 3151 0 is_stmt 0 discriminator 1
	movl	$.LC27, %edi	#,
	call	no_mem_exit	#
.L666:
	.loc 1 3152 0 is_stmt 1
	movl	-4(%rbp), %eax	# size, tmp96
	cltq
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.15009,
	call	calloc	#
	movq	%rax, %rdx	# tmp97, D.15010
	movq	-24(%rbp), %rax	# currSlice, tmp98
	movq	%rdx, 80(%rax)	# D.15010, currSlice_10(D)->long_term_pic_idx_l0
	movq	-24(%rbp), %rax	# currSlice, tmp99
	movq	80(%rax), %rax	# currSlice_10(D)->long_term_pic_idx_l0, D.15011
	testq	%rax, %rax	# D.15011
	jne	.L667	#,
	.loc 1 3152 0 is_stmt 0 discriminator 1
	movl	$.LC28, %edi	#,
	call	no_mem_exit	#
	jmp	.L668	#
.L667:
	.loc 1 3152 0 discriminator 2
	jmp	.L668	#
.L664:
	.loc 1 3156 0 is_stmt 1
	movq	-24(%rbp), %rax	# currSlice, tmp100
	movq	$0, 64(%rax)	#, currSlice_10(D)->remapping_of_pic_nums_idc_l0
	.loc 1 3157 0
	movq	-24(%rbp), %rax	# currSlice, tmp101
	movq	$0, 72(%rax)	#, currSlice_10(D)->abs_diff_pic_num_minus1_l0
	.loc 1 3158 0
	movq	-24(%rbp), %rax	# currSlice, tmp102
	movq	$0, 80(%rax)	#, currSlice_10(D)->long_term_pic_idx_l0
.L668:
	.loc 1 3161 0
	movq	img(%rip), %rax	# img, img.143
	movl	72004(%rax), %eax	# img.143_18->num_ref_idx_l1_active, D.15008
	addl	$1, %eax	#, tmp103
	movl	%eax, -4(%rbp)	# tmp103, size
	.loc 1 3163 0
	movq	img(%rip), %rax	# img, img.144
	movl	24(%rax), %eax	# img.144_21->type, D.15008
	cmpl	$1, %eax	#, D.15008
	jne	.L669	#,
	.loc 1 3165 0
	movl	-4(%rbp), %eax	# size, tmp104
	cltq
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.15009,
	call	calloc	#
	movq	%rax, %rdx	# tmp105, D.15010
	movq	-24(%rbp), %rax	# currSlice, tmp106
	movq	%rdx, 96(%rax)	# D.15010, currSlice_10(D)->remapping_of_pic_nums_idc_l1
	movq	-24(%rbp), %rax	# currSlice, tmp107
	movq	96(%rax), %rax	# currSlice_10(D)->remapping_of_pic_nums_idc_l1, D.15011
	testq	%rax, %rax	# D.15011
	jne	.L670	#,
	.loc 1 3165 0 is_stmt 0 discriminator 1
	movl	$.LC29, %edi	#,
	call	no_mem_exit	#
.L670:
	.loc 1 3166 0 is_stmt 1
	movl	-4(%rbp), %eax	# size, tmp108
	cltq
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.15009,
	call	calloc	#
	movq	%rax, %rdx	# tmp109, D.15010
	movq	-24(%rbp), %rax	# currSlice, tmp110
	movq	%rdx, 104(%rax)	# D.15010, currSlice_10(D)->abs_diff_pic_num_minus1_l1
	movq	-24(%rbp), %rax	# currSlice, tmp111
	movq	104(%rax), %rax	# currSlice_10(D)->abs_diff_pic_num_minus1_l1, D.15011
	testq	%rax, %rax	# D.15011
	jne	.L671	#,
	.loc 1 3166 0 is_stmt 0 discriminator 1
	movl	$.LC30, %edi	#,
	call	no_mem_exit	#
.L671:
	.loc 1 3167 0 is_stmt 1
	movl	-4(%rbp), %eax	# size, tmp112
	cltq
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.15009,
	call	calloc	#
	movq	%rax, %rdx	# tmp113, D.15010
	movq	-24(%rbp), %rax	# currSlice, tmp114
	movq	%rdx, 112(%rax)	# D.15010, currSlice_10(D)->long_term_pic_idx_l1
	movq	-24(%rbp), %rax	# currSlice, tmp115
	movq	112(%rax), %rax	# currSlice_10(D)->long_term_pic_idx_l1, D.15011
	testq	%rax, %rax	# D.15011
	jne	.L663	#,
	.loc 1 3167 0 is_stmt 0 discriminator 1
	movl	$.LC31, %edi	#,
	call	no_mem_exit	#
	jmp	.L663	#
.L669:
	.loc 1 3171 0 is_stmt 1
	movq	-24(%rbp), %rax	# currSlice, tmp116
	movq	$0, 96(%rax)	#, currSlice_10(D)->remapping_of_pic_nums_idc_l1
	.loc 1 3172 0
	movq	-24(%rbp), %rax	# currSlice, tmp117
	movq	$0, 104(%rax)	#, currSlice_10(D)->abs_diff_pic_num_minus1_l1
	.loc 1 3173 0
	movq	-24(%rbp), %rax	# currSlice, tmp118
	movq	$0, 112(%rax)	#, currSlice_10(D)->long_term_pic_idx_l1
.L663:
	.loc 1 3175 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE60:
	.size	alloc_ref_pic_list_reordering_buffer, .-alloc_ref_pic_list_reordering_buffer
	.globl	free_ref_pic_list_reordering_buffer
	.type	free_ref_pic_list_reordering_buffer, @function
free_ref_pic_list_reordering_buffer:
.LFB61:
	.loc 1 3185 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# currSlice, currSlice
	.loc 1 3187 0
	movq	-8(%rbp), %rax	# currSlice, tmp71
	movq	64(%rax), %rax	# currSlice_1(D)->remapping_of_pic_nums_idc_l0, D.15018
	testq	%rax, %rax	# D.15018
	je	.L675	#,
	.loc 1 3188 0
	movq	-8(%rbp), %rax	# currSlice, tmp72
	movq	64(%rax), %rax	# currSlice_1(D)->remapping_of_pic_nums_idc_l0, D.15018
	movq	%rax, %rdi	# D.15018,
	call	free	#
.L675:
	.loc 1 3189 0
	movq	-8(%rbp), %rax	# currSlice, tmp73
	movq	72(%rax), %rax	# currSlice_1(D)->abs_diff_pic_num_minus1_l0, D.15018
	testq	%rax, %rax	# D.15018
	je	.L676	#,
	.loc 1 3190 0
	movq	-8(%rbp), %rax	# currSlice, tmp74
	movq	72(%rax), %rax	# currSlice_1(D)->abs_diff_pic_num_minus1_l0, D.15018
	movq	%rax, %rdi	# D.15018,
	call	free	#
.L676:
	.loc 1 3191 0
	movq	-8(%rbp), %rax	# currSlice, tmp75
	movq	80(%rax), %rax	# currSlice_1(D)->long_term_pic_idx_l0, D.15018
	testq	%rax, %rax	# D.15018
	je	.L677	#,
	.loc 1 3192 0
	movq	-8(%rbp), %rax	# currSlice, tmp76
	movq	80(%rax), %rax	# currSlice_1(D)->long_term_pic_idx_l0, D.15018
	movq	%rax, %rdi	# D.15018,
	call	free	#
.L677:
	.loc 1 3194 0
	movq	-8(%rbp), %rax	# currSlice, tmp77
	movq	$0, 64(%rax)	#, currSlice_1(D)->remapping_of_pic_nums_idc_l0
	.loc 1 3195 0
	movq	-8(%rbp), %rax	# currSlice, tmp78
	movq	$0, 72(%rax)	#, currSlice_1(D)->abs_diff_pic_num_minus1_l0
	.loc 1 3196 0
	movq	-8(%rbp), %rax	# currSlice, tmp79
	movq	$0, 80(%rax)	#, currSlice_1(D)->long_term_pic_idx_l0
	.loc 1 3198 0
	movq	-8(%rbp), %rax	# currSlice, tmp80
	movq	96(%rax), %rax	# currSlice_1(D)->remapping_of_pic_nums_idc_l1, D.15018
	testq	%rax, %rax	# D.15018
	je	.L678	#,
	.loc 1 3199 0
	movq	-8(%rbp), %rax	# currSlice, tmp81
	movq	96(%rax), %rax	# currSlice_1(D)->remapping_of_pic_nums_idc_l1, D.15018
	movq	%rax, %rdi	# D.15018,
	call	free	#
.L678:
	.loc 1 3200 0
	movq	-8(%rbp), %rax	# currSlice, tmp82
	movq	104(%rax), %rax	# currSlice_1(D)->abs_diff_pic_num_minus1_l1, D.15018
	testq	%rax, %rax	# D.15018
	je	.L679	#,
	.loc 1 3201 0
	movq	-8(%rbp), %rax	# currSlice, tmp83
	movq	104(%rax), %rax	# currSlice_1(D)->abs_diff_pic_num_minus1_l1, D.15018
	movq	%rax, %rdi	# D.15018,
	call	free	#
.L679:
	.loc 1 3202 0
	movq	-8(%rbp), %rax	# currSlice, tmp84
	movq	112(%rax), %rax	# currSlice_1(D)->long_term_pic_idx_l1, D.15018
	testq	%rax, %rax	# D.15018
	je	.L680	#,
	.loc 1 3203 0
	movq	-8(%rbp), %rax	# currSlice, tmp85
	movq	112(%rax), %rax	# currSlice_1(D)->long_term_pic_idx_l1, D.15018
	movq	%rax, %rdi	# D.15018,
	call	free	#
.L680:
	.loc 1 3205 0
	movq	-8(%rbp), %rax	# currSlice, tmp86
	movq	$0, 96(%rax)	#, currSlice_1(D)->remapping_of_pic_nums_idc_l1
	.loc 1 3206 0
	movq	-8(%rbp), %rax	# currSlice, tmp87
	movq	$0, 104(%rax)	#, currSlice_1(D)->abs_diff_pic_num_minus1_l1
	.loc 1 3207 0
	movq	-8(%rbp), %rax	# currSlice, tmp88
	movq	$0, 112(%rax)	#, currSlice_1(D)->long_term_pic_idx_l1
	.loc 1 3208 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE61:
	.size	free_ref_pic_list_reordering_buffer, .-free_ref_pic_list_reordering_buffer
	.globl	fill_frame_num_gap
	.type	fill_frame_num_gap, @function
fill_frame_num_gap:
.LFB62:
	.loc 1 3222 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# img, img
	.loc 1 3225 0
	movq	$0, -8(%rbp)	#, picture
	.loc 1 3227 0
	movl	log2_max_frame_num_minus4(%rip), %eax	# log2_max_frame_num_minus4, log2_max_frame_num_minus4.145
	addl	$4, %eax	#, D.15019
	movl	$1, %edx	#, tmp70
	movl	%eax, %ecx	# D.15020, tmp100
	sall	%cl, %edx	# tmp100, tmp71
	movl	%edx, %eax	# tmp71, tmp71
	movl	%eax, -20(%rbp)	# tmp71, MaxFrameNum
	.loc 1 3231 0
	movq	-40(%rbp), %rax	# img, tmp72
	movl	72496(%rax), %eax	# img_7(D)->nal_reference_idc, tmp73
	movl	%eax, -16(%rbp)	# tmp73, nal_ref_idc_bak
	.loc 1 3232 0
	movq	-40(%rbp), %rax	# img, tmp74
	movl	$1, 72496(%rax)	#, img_7(D)->nal_reference_idc
	.loc 1 3234 0
	movq	-40(%rbp), %rax	# img, tmp75
	movl	72648(%rax), %eax	# img_7(D)->pre_frame_num, D.15020
	addl	$1, %eax	#, D.15020
	cltd
	idivl	-20(%rbp)	# MaxFrameNum
	movl	%edx, -24(%rbp)	# tmp77, UnusedShortTermFrameNum
	.loc 1 3235 0
	movq	-40(%rbp), %rax	# img, tmp79
	movl	72464(%rax), %eax	# img_7(D)->frame_num, D.15019
	movl	%eax, -12(%rbp)	# D.15019, CurrFrameNum
	.loc 1 3237 0
	jmp	.L682	#
.L683:
	.loc 1 3239 0
	movq	-40(%rbp), %rax	# img, tmp80
	movl	64(%rax), %esi	# img_7(D)->height_cr, D.15020
	movq	-40(%rbp), %rax	# img, tmp81
	movl	56(%rax), %ecx	# img_7(D)->width_cr, D.15020
	movq	-40(%rbp), %rax	# img, tmp82
	movl	60(%rax), %edx	# img_7(D)->height, D.15020
	movq	-40(%rbp), %rax	# img, tmp83
	movl	52(%rax), %eax	# img_7(D)->width, D.15020
	movl	%esi, %r8d	# D.15020,
	movl	%eax, %esi	# D.15020,
	movl	$0, %edi	#,
	call	alloc_storable_picture	#
	movq	%rax, -8(%rbp)	# tmp84, picture
	.loc 1 3240 0
	movq	-8(%rbp), %rax	# picture, tmp85
	movl	$1, 6412(%rax)	#, picture_18->coded_frame
	.loc 1 3241 0
	movq	-8(%rbp), %rax	# picture, tmp86
	movl	-24(%rbp), %edx	# UnusedShortTermFrameNum, tmp87
	movl	%edx, 6364(%rax)	# tmp87, picture_18->pic_num
	.loc 1 3242 0
	movq	-8(%rbp), %rax	# picture, tmp88
	movl	$1, 6388(%rax)	#, picture_18->non_existing
	.loc 1 3243 0
	movq	-8(%rbp), %rax	# picture, tmp89
	movl	$1, 6384(%rax)	#, picture_18->is_output
	.loc 1 3245 0
	movq	-40(%rbp), %rax	# img, tmp90
	movl	$0, 72500(%rax)	#, img_7(D)->adaptive_ref_pic_buffering_flag
	.loc 1 3247 0
	movq	-8(%rbp), %rax	# picture, tmp91
	movq	%rax, %rdi	# tmp91,
	call	store_picture_in_dpb	#
	.loc 1 3249 0
	movq	$0, -8(%rbp)	#, picture
	.loc 1 3250 0
	movl	-24(%rbp), %eax	# UnusedShortTermFrameNum, tmp92
	addl	$1, %eax	#, D.15020
	cltd
	idivl	-20(%rbp)	# MaxFrameNum
	movl	%edx, -24(%rbp)	# tmp94, UnusedShortTermFrameNum
.L682:
	.loc 1 3237 0 discriminator 1
	movl	-12(%rbp), %eax	# CurrFrameNum, tmp96
	cmpl	-24(%rbp), %eax	# UnusedShortTermFrameNum, tmp96
	jne	.L683	#,
	.loc 1 3253 0
	movq	-40(%rbp), %rax	# img, tmp97
	movl	-16(%rbp), %edx	# nal_ref_idc_bak, tmp98
	movl	%edx, 72496(%rax)	# tmp98, img_7(D)->nal_reference_idc
	.loc 1 3254 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE62:
	.size	fill_frame_num_gap, .-fill_frame_num_gap
	.section	.rodata
.LC32:
	.string	"alloc_colocated: s"
	.text
	.globl	alloc_colocated
	.type	alloc_colocated, @function
alloc_colocated:
.LFB63:
	.loc 1 3273 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# size_x, size_x
	movl	%esi, -24(%rbp)	# size_y, size_y
	movl	%edx, -28(%rbp)	# mb_adaptive_frame_field_flag, mb_adaptive_frame_field_flag
	.loc 1 3276 0
	movl	$4880, %esi	#,
	movl	$1, %edi	#,
	call	calloc	#
	movq	%rax, -8(%rbp)	# tmp100, s
	.loc 1 3277 0
	cmpq	$0, -8(%rbp)	#, s
	jne	.L685	#,
	.loc 1 3278 0
	movl	$.LC32, %edi	#,
	call	no_mem_exit	#
.L685:
	.loc 1 3280 0
	movq	-8(%rbp), %rax	# s, tmp101
	movl	-20(%rbp), %edx	# size_x, tmp102
	movl	%edx, 4(%rax)	# tmp102, s_1->size_x
	.loc 1 3281 0
	movq	-8(%rbp), %rax	# s, tmp103
	movl	-24(%rbp), %edx	# size_y, tmp104
	movl	%edx, 8(%rax)	# tmp104, s_1->size_y
	.loc 1 3284 0
	movl	-24(%rbp), %eax	# size_y, tmp105
	leal	3(%rax), %edx	#, tmp107
	testl	%eax, %eax	# tmp106
	cmovs	%edx, %eax	# tmp107,, tmp106
	sarl	$2, %eax	#, tmp108
	movl	%eax, %edx	# tmp108, D.15021
	movl	-20(%rbp), %eax	# size_x, tmp109
	leal	3(%rax), %ecx	#, tmp111
	testl	%eax, %eax	# tmp110
	cmovs	%ecx, %eax	# tmp111,, tmp110
	sarl	$2, %eax	#, tmp112
	movq	-8(%rbp), %rcx	# s, tmp113
	leaq	1600(%rcx), %rdi	#, D.15022
	movl	%edx, %ecx	# D.15021,
	movl	%eax, %edx	# D.15021,
	movl	$2, %esi	#,
	call	get_mem3Dshort	#
	.loc 1 3285 0
	movl	-24(%rbp), %eax	# size_y, tmp114
	leal	3(%rax), %edx	#, tmp116
	testl	%eax, %eax	# tmp115
	cmovs	%edx, %eax	# tmp116,, tmp115
	sarl	$2, %eax	#, tmp117
	movl	%eax, %edx	# tmp117, D.15021
	movl	-20(%rbp), %eax	# size_x, tmp118
	leal	3(%rax), %ecx	#, tmp120
	testl	%eax, %eax	# tmp119
	cmovs	%ecx, %eax	# tmp120,, tmp119
	sarl	$2, %eax	#, tmp121
	movq	-8(%rbp), %rcx	# s, tmp122
	leaq	1608(%rcx), %rdi	#, D.15023
	movl	%edx, %ecx	# D.15021,
	movl	%eax, %edx	# D.15021,
	movl	$2, %esi	#,
	call	get_mem3Dint64	#
	.loc 1 3286 0
	movl	-24(%rbp), %eax	# size_y, tmp123
	leal	3(%rax), %edx	#, tmp125
	testl	%eax, %eax	# tmp124
	cmovs	%edx, %eax	# tmp125,, tmp124
	sarl	$2, %eax	#, tmp126
	movl	%eax, %edx	# tmp126, D.15021
	movl	-20(%rbp), %eax	# size_x, tmp127
	leal	3(%rax), %ecx	#, tmp129
	testl	%eax, %eax	# tmp128
	cmovs	%ecx, %eax	# tmp129,, tmp128
	sarl	$2, %eax	#, tmp130
	movq	-8(%rbp), %rcx	# s, tmp131
	leaq	1616(%rcx), %rdi	#, D.15024
	movl	$2, %r8d	#,
	movl	%edx, %ecx	# D.15021,
	movl	%eax, %edx	# D.15021,
	movl	$2, %esi	#,
	call	get_mem4Dshort	#
	.loc 1 3288 0
	movl	-24(%rbp), %eax	# size_y, tmp132
	leal	3(%rax), %edx	#, tmp134
	testl	%eax, %eax	# tmp133
	cmovs	%edx, %eax	# tmp134,, tmp133
	sarl	$2, %eax	#, tmp135
	movl	%eax, %edx	# tmp135, D.15021
	movl	-20(%rbp), %eax	# size_x, tmp136
	leal	3(%rax), %ecx	#, tmp138
	testl	%eax, %eax	# tmp137
	cmovs	%ecx, %eax	# tmp138,, tmp137
	sarl	$2, %eax	#, tmp139
	movq	-8(%rbp), %rcx	# s, tmp140
	addq	$1624, %rcx	#, D.15025
	movl	%eax, %esi	# D.15021,
	movq	%rcx, %rdi	# D.15025,
	call	get_mem2D	#
	.loc 1 3289 0
	movl	-24(%rbp), %eax	# size_y, tmp141
	leal	3(%rax), %edx	#, tmp143
	testl	%eax, %eax	# tmp142
	cmovs	%edx, %eax	# tmp143,, tmp142
	sarl	$2, %eax	#, tmp144
	movl	%eax, %edx	# tmp144, D.15021
	movl	-20(%rbp), %eax	# size_x, tmp145
	leal	3(%rax), %ecx	#, tmp147
	testl	%eax, %eax	# tmp146
	cmovs	%ecx, %eax	# tmp147,, tmp146
	sarl	$2, %eax	#, tmp148
	movq	-8(%rbp), %rcx	# s, tmp149
	addq	$4872, %rcx	#, D.15025
	movl	%eax, %esi	# D.15021,
	movq	%rcx, %rdi	# D.15025,
	call	get_mem2D	#
	.loc 1 3291 0
	cmpl	$0, -28(%rbp)	#, mb_adaptive_frame_field_flag
	je	.L686	#,
	.loc 1 3293 0
	movl	-24(%rbp), %eax	# size_y, tmp150
	leal	7(%rax), %edx	#, tmp152
	testl	%eax, %eax	# tmp151
	cmovs	%edx, %eax	# tmp152,, tmp151
	sarl	$3, %eax	#, tmp153
	movl	%eax, %edx	# tmp153, D.15021
	movl	-20(%rbp), %eax	# size_x, tmp154
	leal	3(%rax), %ecx	#, tmp156
	testl	%eax, %eax	# tmp155
	cmovs	%ecx, %eax	# tmp156,, tmp155
	sarl	$2, %eax	#, tmp157
	movq	-8(%rbp), %rcx	# s, tmp158
	leaq	3216(%rcx), %rdi	#, D.15022
	movl	%edx, %ecx	# D.15021,
	movl	%eax, %edx	# D.15021,
	movl	$2, %esi	#,
	call	get_mem3Dshort	#
	.loc 1 3294 0
	movl	-24(%rbp), %eax	# size_y, tmp159
	leal	7(%rax), %edx	#, tmp161
	testl	%eax, %eax	# tmp160
	cmovs	%edx, %eax	# tmp161,, tmp160
	sarl	$3, %eax	#, tmp162
	movl	%eax, %edx	# tmp162, D.15021
	movl	-20(%rbp), %eax	# size_x, tmp163
	leal	3(%rax), %ecx	#, tmp165
	testl	%eax, %eax	# tmp164
	cmovs	%ecx, %eax	# tmp165,, tmp164
	sarl	$2, %eax	#, tmp166
	movq	-8(%rbp), %rcx	# s, tmp167
	leaq	3224(%rcx), %rdi	#, D.15023
	movl	%edx, %ecx	# D.15021,
	movl	%eax, %edx	# D.15021,
	movl	$2, %esi	#,
	call	get_mem3Dint64	#
	.loc 1 3295 0
	movl	-24(%rbp), %eax	# size_y, tmp168
	leal	7(%rax), %edx	#, tmp170
	testl	%eax, %eax	# tmp169
	cmovs	%edx, %eax	# tmp170,, tmp169
	sarl	$3, %eax	#, tmp171
	movl	%eax, %edx	# tmp171, D.15021
	movl	-20(%rbp), %eax	# size_x, tmp172
	leal	3(%rax), %ecx	#, tmp174
	testl	%eax, %eax	# tmp173
	cmovs	%ecx, %eax	# tmp174,, tmp173
	sarl	$2, %eax	#, tmp175
	movq	-8(%rbp), %rcx	# s, tmp176
	leaq	3232(%rcx), %rdi	#, D.15024
	movl	$2, %r8d	#,
	movl	%edx, %ecx	# D.15021,
	movl	%eax, %edx	# D.15021,
	movl	$2, %esi	#,
	call	get_mem4Dshort	#
	.loc 1 3296 0
	movl	-24(%rbp), %eax	# size_y, tmp177
	leal	7(%rax), %edx	#, tmp179
	testl	%eax, %eax	# tmp178
	cmovs	%edx, %eax	# tmp179,, tmp178
	sarl	$3, %eax	#, tmp180
	movl	%eax, %edx	# tmp180, D.15021
	movl	-20(%rbp), %eax	# size_x, tmp181
	leal	3(%rax), %ecx	#, tmp183
	testl	%eax, %eax	# tmp182
	cmovs	%ecx, %eax	# tmp183,, tmp182
	sarl	$2, %eax	#, tmp184
	movq	-8(%rbp), %rcx	# s, tmp185
	addq	$3240, %rcx	#, D.15025
	movl	%eax, %esi	# D.15021,
	movq	%rcx, %rdi	# D.15025,
	call	get_mem2D	#
	.loc 1 3298 0
	movl	-24(%rbp), %eax	# size_y, tmp186
	leal	7(%rax), %edx	#, tmp188
	testl	%eax, %eax	# tmp187
	cmovs	%edx, %eax	# tmp188,, tmp187
	sarl	$3, %eax	#, tmp189
	movl	%eax, %edx	# tmp189, D.15021
	movl	-20(%rbp), %eax	# size_x, tmp190
	leal	3(%rax), %ecx	#, tmp192
	testl	%eax, %eax	# tmp191
	cmovs	%ecx, %eax	# tmp192,, tmp191
	sarl	$2, %eax	#, tmp193
	movq	-8(%rbp), %rcx	# s, tmp194
	leaq	4832(%rcx), %rdi	#, D.15022
	movl	%edx, %ecx	# D.15021,
	movl	%eax, %edx	# D.15021,
	movl	$2, %esi	#,
	call	get_mem3Dshort	#
	.loc 1 3299 0
	movl	-24(%rbp), %eax	# size_y, tmp195
	leal	7(%rax), %edx	#, tmp197
	testl	%eax, %eax	# tmp196
	cmovs	%edx, %eax	# tmp197,, tmp196
	sarl	$3, %eax	#, tmp198
	movl	%eax, %edx	# tmp198, D.15021
	movl	-20(%rbp), %eax	# size_x, tmp199
	leal	3(%rax), %ecx	#, tmp201
	testl	%eax, %eax	# tmp200
	cmovs	%ecx, %eax	# tmp201,, tmp200
	sarl	$2, %eax	#, tmp202
	movq	-8(%rbp), %rcx	# s, tmp203
	leaq	4840(%rcx), %rdi	#, D.15023
	movl	%edx, %ecx	# D.15021,
	movl	%eax, %edx	# D.15021,
	movl	$2, %esi	#,
	call	get_mem3Dint64	#
	.loc 1 3300 0
	movl	-24(%rbp), %eax	# size_y, tmp204
	leal	7(%rax), %edx	#, tmp206
	testl	%eax, %eax	# tmp205
	cmovs	%edx, %eax	# tmp206,, tmp205
	sarl	$3, %eax	#, tmp207
	movl	%eax, %edx	# tmp207, D.15021
	movl	-20(%rbp), %eax	# size_x, tmp208
	leal	3(%rax), %ecx	#, tmp210
	testl	%eax, %eax	# tmp209
	cmovs	%ecx, %eax	# tmp210,, tmp209
	sarl	$2, %eax	#, tmp211
	movq	-8(%rbp), %rcx	# s, tmp212
	leaq	4848(%rcx), %rdi	#, D.15024
	movl	$2, %r8d	#,
	movl	%edx, %ecx	# D.15021,
	movl	%eax, %edx	# D.15021,
	movl	$2, %esi	#,
	call	get_mem4Dshort	#
	.loc 1 3301 0
	movl	-24(%rbp), %eax	# size_y, tmp213
	leal	7(%rax), %edx	#, tmp215
	testl	%eax, %eax	# tmp214
	cmovs	%edx, %eax	# tmp215,, tmp214
	sarl	$3, %eax	#, tmp216
	movl	%eax, %edx	# tmp216, D.15021
	movl	-20(%rbp), %eax	# size_x, tmp217
	leal	3(%rax), %ecx	#, tmp219
	testl	%eax, %eax	# tmp218
	cmovs	%ecx, %eax	# tmp219,, tmp218
	sarl	$2, %eax	#, tmp220
	movq	-8(%rbp), %rcx	# s, tmp221
	addq	$4856, %rcx	#, D.15025
	movl	%eax, %esi	# D.15021,
	movq	%rcx, %rdi	# D.15025,
	call	get_mem2D	#
.L686:
	.loc 1 3306 0
	movq	-8(%rbp), %rax	# s, tmp222
	movl	-28(%rbp), %edx	# mb_adaptive_frame_field_flag, tmp223
	movl	%edx, (%rax)	# tmp223, s_1->mb_adaptive_frame_field_flag
	.loc 1 3308 0
	movq	-8(%rbp), %rax	# s, D.15026
	.loc 1 3309 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE63:
	.size	alloc_colocated, .-alloc_colocated
	.globl	free_colocated
	.type	free_colocated, @function
free_colocated:
.LFB64:
	.loc 1 3322 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# p, p
	.loc 1 3323 0
	cmpq	$0, -8(%rbp)	#, p
	je	.L688	#,
	.loc 1 3325 0
	movq	-8(%rbp), %rax	# p, tmp83
	movq	1600(%rax), %rax	# p_1(D)->ref_idx, D.15028
	movl	$2, %esi	#,
	movq	%rax, %rdi	# D.15028,
	call	free_mem3Dshort	#
	.loc 1 3326 0
	movq	-8(%rbp), %rax	# p, tmp84
	movq	1608(%rax), %rax	# p_1(D)->ref_pic_id, D.15029
	movl	$2, %esi	#,
	movq	%rax, %rdi	# D.15029,
	call	free_mem3Dint64	#
	.loc 1 3327 0
	movq	-8(%rbp), %rax	# p, tmp85
	movl	4(%rax), %eax	# p_1(D)->size_x, D.15030
	leal	3(%rax), %edx	#, tmp87
	testl	%eax, %eax	# tmp86
	cmovs	%edx, %eax	# tmp87,, tmp86
	sarl	$2, %eax	#, tmp88
	movl	%eax, %edx	# tmp88, D.15030
	movq	-8(%rbp), %rax	# p, tmp89
	movq	1616(%rax), %rax	# p_1(D)->mv, D.15031
	movl	$2, %esi	#,
	movq	%rax, %rdi	# D.15031,
	call	free_mem4Dshort	#
	.loc 1 3329 0
	movq	-8(%rbp), %rax	# p, tmp90
	movq	1624(%rax), %rax	# p_1(D)->moving_block, D.15032
	testq	%rax, %rax	# D.15032
	je	.L690	#,
	.loc 1 3331 0
	movq	-8(%rbp), %rax	# p, tmp91
	movq	1624(%rax), %rax	# p_1(D)->moving_block, D.15032
	movq	%rax, %rdi	# D.15032,
	call	free_mem2D	#
	.loc 1 3332 0
	movq	-8(%rbp), %rax	# p, tmp92
	movq	$0, 1624(%rax)	#, p_1(D)->moving_block
.L690:
	.loc 1 3334 0
	movq	-8(%rbp), %rax	# p, tmp93
	movq	4872(%rax), %rax	# p_1(D)->field_frame, D.15032
	testq	%rax, %rax	# D.15032
	je	.L691	#,
	.loc 1 3336 0
	movq	-8(%rbp), %rax	# p, tmp94
	movq	4872(%rax), %rax	# p_1(D)->field_frame, D.15032
	movq	%rax, %rdi	# D.15032,
	call	free_mem2D	#
	.loc 1 3337 0
	movq	-8(%rbp), %rax	# p, tmp95
	movq	$0, 4872(%rax)	#, p_1(D)->field_frame
.L691:
	.loc 1 3341 0
	movq	-8(%rbp), %rax	# p, tmp96
	movl	(%rax), %eax	# p_1(D)->mb_adaptive_frame_field_flag, D.15030
	testl	%eax, %eax	# D.15030
	je	.L692	#,
	.loc 1 3343 0
	movq	-8(%rbp), %rax	# p, tmp97
	movq	3216(%rax), %rax	# p_1(D)->top_ref_idx, D.15028
	movl	$2, %esi	#,
	movq	%rax, %rdi	# D.15028,
	call	free_mem3Dshort	#
	.loc 1 3344 0
	movq	-8(%rbp), %rax	# p, tmp98
	movq	3224(%rax), %rax	# p_1(D)->top_ref_pic_id, D.15029
	movl	$2, %esi	#,
	movq	%rax, %rdi	# D.15029,
	call	free_mem3Dint64	#
	.loc 1 3345 0
	movq	-8(%rbp), %rax	# p, tmp99
	movl	4(%rax), %eax	# p_1(D)->size_x, D.15030
	leal	3(%rax), %edx	#, tmp101
	testl	%eax, %eax	# tmp100
	cmovs	%edx, %eax	# tmp101,, tmp100
	sarl	$2, %eax	#, tmp102
	movl	%eax, %edx	# tmp102, D.15030
	movq	-8(%rbp), %rax	# p, tmp103
	movq	3232(%rax), %rax	# p_1(D)->top_mv, D.15031
	movl	$2, %esi	#,
	movq	%rax, %rdi	# D.15031,
	call	free_mem4Dshort	#
	.loc 1 3348 0
	movq	-8(%rbp), %rax	# p, tmp104
	movq	3240(%rax), %rax	# p_1(D)->top_moving_block, D.15032
	testq	%rax, %rax	# D.15032
	je	.L693	#,
	.loc 1 3350 0
	movq	-8(%rbp), %rax	# p, tmp105
	movq	3240(%rax), %rax	# p_1(D)->top_moving_block, D.15032
	movq	%rax, %rdi	# D.15032,
	call	free_mem2D	#
	.loc 1 3351 0
	movq	-8(%rbp), %rax	# p, tmp106
	movq	$0, 3240(%rax)	#, p_1(D)->top_moving_block
.L693:
	.loc 1 3354 0
	movq	-8(%rbp), %rax	# p, tmp107
	movq	4832(%rax), %rax	# p_1(D)->bottom_ref_idx, D.15028
	movl	$2, %esi	#,
	movq	%rax, %rdi	# D.15028,
	call	free_mem3Dshort	#
	.loc 1 3355 0
	movq	-8(%rbp), %rax	# p, tmp108
	movq	4840(%rax), %rax	# p_1(D)->bottom_ref_pic_id, D.15029
	movl	$2, %esi	#,
	movq	%rax, %rdi	# D.15029,
	call	free_mem3Dint64	#
	.loc 1 3356 0
	movq	-8(%rbp), %rax	# p, tmp109
	movl	4(%rax), %eax	# p_1(D)->size_x, D.15030
	leal	3(%rax), %edx	#, tmp111
	testl	%eax, %eax	# tmp110
	cmovs	%edx, %eax	# tmp111,, tmp110
	sarl	$2, %eax	#, tmp112
	movl	%eax, %edx	# tmp112, D.15030
	movq	-8(%rbp), %rax	# p, tmp113
	movq	4848(%rax), %rax	# p_1(D)->bottom_mv, D.15031
	movl	$2, %esi	#,
	movq	%rax, %rdi	# D.15031,
	call	free_mem4Dshort	#
	.loc 1 3359 0
	movq	-8(%rbp), %rax	# p, tmp114
	movq	4856(%rax), %rax	# p_1(D)->bottom_moving_block, D.15032
	testq	%rax, %rax	# D.15032
	je	.L692	#,
	.loc 1 3361 0
	movq	-8(%rbp), %rax	# p, tmp115
	movq	4856(%rax), %rax	# p_1(D)->bottom_moving_block, D.15032
	movq	%rax, %rdi	# D.15032,
	call	free_mem2D	#
	.loc 1 3362 0
	movq	-8(%rbp), %rax	# p, tmp116
	movq	$0, 4856(%rax)	#, p_1(D)->bottom_moving_block
.L692:
	.loc 1 3367 0
	movq	-8(%rbp), %rax	# p, tmp117
	movq	%rax, %rdi	# tmp117,
	call	free	#
	.loc 1 3369 0
	movq	$0, -8(%rbp)	#, p
.L688:
	.loc 1 3371 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE64:
	.size	free_colocated, .-free_colocated
	.globl	compute_colocated
	.type	compute_colocated, @function
compute_colocated:
.LFB65:
	.loc 1 3382 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -56(%rbp)	# p, p
	movq	%rsi, -64(%rbp)	# listX, listX
	.loc 1 3386 0
	movq	-64(%rbp), %rax	# listX, tmp3062
	addq	$8, %rax	#, D.15033
	movq	(%rax), %rax	# *_95, D.15034
	movq	(%rax), %rax	# *_96, tmp3063
	movq	%rax, -24(%rbp)	# tmp3063, fs
	movq	-24(%rbp), %rax	# fs, tmp3064
	movq	%rax, -8(%rbp)	# tmp3064, fs_bottom
	movq	-8(%rbp), %rax	# fs_bottom, tmp3065
	movq	%rax, -16(%rbp)	# tmp3065, fs_top
	.loc 1 3388 0
	movq	img(%rip), %rax	# img, img.146
	movl	72400(%rax), %eax	# img.146_100->MbaffFrameFlag, D.15035
	testl	%eax, %eax	# D.15035
	je	.L695	#,
	.loc 1 3390 0
	movq	-64(%rbp), %rax	# listX, tmp3066
	addq	$24, %rax	#, D.15033
	movq	(%rax), %rax	# *_102, D.15034
	movq	(%rax), %rax	# *_103, tmp3067
	movq	%rax, -16(%rbp)	# tmp3067, fs_top
	.loc 1 3391 0
	movq	-64(%rbp), %rax	# listX, tmp3068
	addq	$40, %rax	#, D.15033
	movq	(%rax), %rax	# *_105, D.15034
	movq	(%rax), %rax	# *_106, tmp3069
	movq	%rax, -8(%rbp)	# tmp3069, fs_bottom
	jmp	.L696	#
.L695:
	.loc 1 3395 0
	movq	img(%rip), %rax	# img, img.147
	movl	28(%rax), %eax	# img.147_108->structure, D.15035
	testl	%eax, %eax	# D.15035
	je	.L696	#,
	.loc 1 3397 0
	movq	img(%rip), %rax	# img, img.148
	movl	28(%rax), %eax	# img.148_110->structure, D.15035
	movl	%eax, %edx	# D.15035, D.15036
	movq	-24(%rbp), %rax	# fs, tmp3070
	movl	(%rax), %eax	# fs_97->structure, D.15037
	cmpl	%eax, %edx	# D.15037, D.15036
	je	.L696	#,
	.loc 1 3397 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# fs, tmp3071
	movl	6412(%rax), %eax	# fs_97->coded_frame, D.15035
	testl	%eax, %eax	# D.15035
	je	.L696	#,
	.loc 1 3399 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.149
	movl	28(%rax), %eax	# img.149_115->structure, D.15035
	cmpl	$1, %eax	#, D.15035
	jne	.L697	#,
	.loc 1 3401 0
	movq	-64(%rbp), %rax	# listX, tmp3072
	addq	$8, %rax	#, D.15033
	movq	(%rax), %rax	# *_117, D.15034
	movq	(%rax), %rax	# *_118, D.15038
	movq	6528(%rax), %rax	# _119->top_field, tmp3073
	movq	%rax, -24(%rbp)	# tmp3073, fs
	movq	-24(%rbp), %rax	# fs, tmp3074
	movq	%rax, -8(%rbp)	# tmp3074, fs_bottom
	movq	-8(%rbp), %rax	# fs_bottom, tmp3075
	movq	%rax, -16(%rbp)	# tmp3075, fs_top
	jmp	.L696	#
.L697:
	.loc 1 3405 0
	movq	-64(%rbp), %rax	# listX, tmp3076
	addq	$8, %rax	#, D.15033
	movq	(%rax), %rax	# *_123, D.15034
	movq	(%rax), %rax	# *_124, D.15038
	movq	6536(%rax), %rax	# _125->bottom_field, tmp3077
	movq	%rax, -24(%rbp)	# tmp3077, fs
	movq	-24(%rbp), %rax	# fs, tmp3078
	movq	%rax, -8(%rbp)	# tmp3078, fs_bottom
	movq	-8(%rbp), %rax	# fs_bottom, tmp3079
	movq	%rax, -16(%rbp)	# tmp3079, fs_top
.L696:
	.loc 1 3411 0
	movq	active_sps(%rip), %rax	# active_sps, active_sps.150
	movl	1148(%rax), %eax	# active_sps.150_129->frame_mbs_only_flag, D.15039
	testl	%eax, %eax	# D.15039
	je	.L698	#,
	.loc 1 3411 0 is_stmt 0 discriminator 1
	movq	active_sps(%rip), %rax	# active_sps, active_sps.151
	movl	1156(%rax), %eax	# active_sps.151_131->direct_8x8_inference_flag, D.15039
	testl	%eax, %eax	# D.15039
	je	.L699	#,
.L698:
	.loc 1 3413 0 is_stmt 1
	movl	$0, -40(%rbp)	#, j
	jmp	.L700	#
.L707:
	.loc 1 3415 0
	movl	$0, -44(%rbp)	#, i
	jmp	.L701	#
.L706:
	.loc 1 3418 0
	movq	img(%rip), %rax	# img, img.152
	movl	72400(%rax), %eax	# img.152_139->MbaffFrameFlag, D.15035
	testl	%eax, %eax	# D.15035
	je	.L702	#,
	.loc 1 3418 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# fs, tmp3080
	movq	6520(%rax), %rax	# fs_1->field_frame, D.15040
	movl	-44(%rbp), %edx	# i, tmp3081
	movslq	%edx, %rdx	# tmp3081, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15040
	movq	(%rax), %rdx	# *_144, D.15042
	movl	-40(%rbp), %eax	# j, tmp3082
	cltq
	addq	%rdx, %rax	# D.15042, D.15042
	movzbl	(%rax), %eax	# *_147, D.15044
	testb	%al, %al	# D.15044
	je	.L702	#,
	.loc 1 3424 0 is_stmt 1
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.153
	movl	4(%rax), %edx	# enc_picture.153_149->poc, D.15035
	movq	-8(%rbp), %rax	# fs_bottom, tmp3083
	movl	4(%rax), %eax	# fs_bottom_3->poc, D.15035
	subl	%eax, %edx	# D.15035, D.15035
	movl	%edx, %eax	# D.15035, tmp3084
	sarl	$31, %eax	#, tmp3084
	xorl	%eax, %edx	# tmp3084, D.15035
	subl	%eax, %edx	# tmp3084, D.15035
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.154
	movl	4(%rax), %ecx	# enc_picture.154_154->poc, D.15035
	movq	-16(%rbp), %rax	# fs_top, tmp3085
	movl	4(%rax), %eax	# fs_top_2->poc, D.15035
	subl	%eax, %ecx	# D.15035, D.15035
	movl	%ecx, %eax	# D.15035, D.15035
	movl	%eax, %ecx	# D.15035, tmp3086
	sarl	$31, %ecx	#, tmp3086
	xorl	%ecx, %eax	# tmp3086, D.15035
	subl	%ecx, %eax	# tmp3086, D.15035
	cmpl	%eax, %edx	# D.15035, D.15035
	jle	.L703	#,
	.loc 1 3426 0
	movq	-56(%rbp), %rax	# p, tmp3087
	movq	1616(%rax), %rax	# p_159(D)->mv, D.15045
	movq	(%rax), %rax	# *_160, D.15046
	movl	-44(%rbp), %edx	# i, tmp3088
	movslq	%edx, %rdx	# tmp3088, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15046
	movq	(%rax), %rax	# *_164, D.15047
	movl	-40(%rbp), %edx	# j, tmp3089
	movslq	%edx, %rdx	# tmp3089, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rdx	# *_168, D.15048
	movq	-16(%rbp), %rax	# fs_top, tmp3090
	movq	6504(%rax), %rax	# fs_top_2->mv, D.15045
	movq	(%rax), %rax	# *_170, D.15046
	movl	-44(%rbp), %ecx	# i, tmp3091
	movslq	%ecx, %rcx	# tmp3091, D.15041
	salq	$3, %rcx	#, D.15041
	addq	%rcx, %rax	# D.15041, D.15046
	movq	(%rax), %rcx	# *_174, D.15047
	movl	-40(%rbp), %eax	# j, tmp3092
	movl	%eax, %esi	# tmp3092, tmp3093
	shrl	$31, %esi	#, tmp3093
	addl	%esi, %eax	# tmp3093, tmp3094
	sarl	%eax	# tmp3095
	cltq
	salq	$3, %rax	#, D.15041
	addq	%rcx, %rax	# D.15047, D.15047
	movq	(%rax), %rax	# *_179, D.15048
	movzwl	(%rax), %eax	# *_180, D.15049
	movw	%ax, (%rdx)	# D.15049, *_169
	.loc 1 3427 0
	movq	-56(%rbp), %rax	# p, tmp3096
	movq	1616(%rax), %rax	# p_159(D)->mv, D.15045
	movq	(%rax), %rax	# *_182, D.15046
	movl	-44(%rbp), %edx	# i, tmp3097
	movslq	%edx, %rdx	# tmp3097, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15046
	movq	(%rax), %rax	# *_186, D.15047
	movl	-40(%rbp), %edx	# j, tmp3098
	movslq	%edx, %rdx	# tmp3098, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_190, D.15048
	leaq	2(%rax), %rdx	#, D.15048
	movq	-16(%rbp), %rax	# fs_top, tmp3099
	movq	6504(%rax), %rax	# fs_top_2->mv, D.15045
	movq	(%rax), %rax	# *_193, D.15046
	movl	-44(%rbp), %ecx	# i, tmp3100
	movslq	%ecx, %rcx	# tmp3100, D.15041
	salq	$3, %rcx	#, D.15041
	addq	%rcx, %rax	# D.15041, D.15046
	movq	(%rax), %rcx	# *_197, D.15047
	movl	-40(%rbp), %eax	# j, tmp3101
	movl	%eax, %esi	# tmp3101, tmp3102
	shrl	$31, %esi	#, tmp3102
	addl	%esi, %eax	# tmp3102, tmp3103
	sarl	%eax	# tmp3104
	cltq
	salq	$3, %rax	#, D.15041
	addq	%rcx, %rax	# D.15047, D.15047
	movq	(%rax), %rax	# *_202, D.15048
	movzwl	2(%rax), %eax	# MEM[(short int *)_203 + 2B], D.15049
	movw	%ax, (%rdx)	# D.15049, *_192
	.loc 1 3428 0
	movq	-56(%rbp), %rax	# p, tmp3105
	movq	1616(%rax), %rax	# p_159(D)->mv, D.15045
	addq	$8, %rax	#, D.15045
	movq	(%rax), %rax	# *_206, D.15046
	movl	-44(%rbp), %edx	# i, tmp3106
	movslq	%edx, %rdx	# tmp3106, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15046
	movq	(%rax), %rax	# *_210, D.15047
	movl	-40(%rbp), %edx	# j, tmp3107
	movslq	%edx, %rdx	# tmp3107, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rdx	# *_214, D.15048
	movq	-16(%rbp), %rax	# fs_top, tmp3108
	movq	6504(%rax), %rax	# fs_top_2->mv, D.15045
	addq	$8, %rax	#, D.15045
	movq	(%rax), %rax	# *_217, D.15046
	movl	-44(%rbp), %ecx	# i, tmp3109
	movslq	%ecx, %rcx	# tmp3109, D.15041
	salq	$3, %rcx	#, D.15041
	addq	%rcx, %rax	# D.15041, D.15046
	movq	(%rax), %rcx	# *_221, D.15047
	movl	-40(%rbp), %eax	# j, tmp3110
	movl	%eax, %esi	# tmp3110, tmp3111
	shrl	$31, %esi	#, tmp3111
	addl	%esi, %eax	# tmp3111, tmp3112
	sarl	%eax	# tmp3113
	cltq
	salq	$3, %rax	#, D.15041
	addq	%rcx, %rax	# D.15047, D.15047
	movq	(%rax), %rax	# *_226, D.15048
	movzwl	(%rax), %eax	# *_227, D.15049
	movw	%ax, (%rdx)	# D.15049, *_215
	.loc 1 3429 0
	movq	-56(%rbp), %rax	# p, tmp3114
	movq	1616(%rax), %rax	# p_159(D)->mv, D.15045
	addq	$8, %rax	#, D.15045
	movq	(%rax), %rax	# *_230, D.15046
	movl	-44(%rbp), %edx	# i, tmp3115
	movslq	%edx, %rdx	# tmp3115, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15046
	movq	(%rax), %rax	# *_234, D.15047
	movl	-40(%rbp), %edx	# j, tmp3116
	movslq	%edx, %rdx	# tmp3116, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_238, D.15048
	leaq	2(%rax), %rdx	#, D.15048
	movq	-16(%rbp), %rax	# fs_top, tmp3117
	movq	6504(%rax), %rax	# fs_top_2->mv, D.15045
	addq	$8, %rax	#, D.15045
	movq	(%rax), %rax	# *_242, D.15046
	movl	-44(%rbp), %ecx	# i, tmp3118
	movslq	%ecx, %rcx	# tmp3118, D.15041
	salq	$3, %rcx	#, D.15041
	addq	%rcx, %rax	# D.15041, D.15046
	movq	(%rax), %rcx	# *_246, D.15047
	movl	-40(%rbp), %eax	# j, tmp3119
	movl	%eax, %esi	# tmp3119, tmp3120
	shrl	$31, %esi	#, tmp3120
	addl	%esi, %eax	# tmp3120, tmp3121
	sarl	%eax	# tmp3122
	cltq
	salq	$3, %rax	#, D.15041
	addq	%rcx, %rax	# D.15047, D.15047
	movq	(%rax), %rax	# *_251, D.15048
	movzwl	2(%rax), %eax	# MEM[(short int *)_252 + 2B], D.15049
	movw	%ax, (%rdx)	# D.15049, *_240
	.loc 1 3430 0
	movq	-56(%rbp), %rax	# p, tmp3123
	movq	1600(%rax), %rax	# p_159(D)->ref_idx, D.15046
	movq	(%rax), %rax	# *_254, D.15047
	movl	-44(%rbp), %edx	# i, tmp3124
	movslq	%edx, %rdx	# tmp3124, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_258, D.15048
	movl	-40(%rbp), %edx	# j, tmp3125
	movslq	%edx, %rdx	# tmp3125, D.15041
	addq	%rdx, %rdx	# D.15041
	addq	%rax, %rdx	# D.15048, D.15048
	movq	-16(%rbp), %rax	# fs_top, tmp3126
	movq	6480(%rax), %rax	# fs_top_2->ref_idx, D.15046
	movq	(%rax), %rax	# *_263, D.15047
	movl	-44(%rbp), %ecx	# i, tmp3127
	movslq	%ecx, %rcx	# tmp3127, D.15041
	salq	$3, %rcx	#, D.15041
	addq	%rcx, %rax	# D.15041, D.15047
	movq	(%rax), %rcx	# *_267, D.15048
	movl	-40(%rbp), %eax	# j, tmp3128
	movl	%eax, %esi	# tmp3128, tmp3129
	shrl	$31, %esi	#, tmp3129
	addl	%esi, %eax	# tmp3129, tmp3130
	sarl	%eax	# tmp3131
	cltq
	addq	%rax, %rax	# D.15041
	addq	%rcx, %rax	# D.15048, D.15048
	movzwl	(%rax), %eax	# *_272, D.15049
	movw	%ax, (%rdx)	# D.15049, *_262
	.loc 1 3431 0
	movq	-56(%rbp), %rax	# p, tmp3132
	movq	1600(%rax), %rax	# p_159(D)->ref_idx, D.15046
	addq	$8, %rax	#, D.15046
	movq	(%rax), %rax	# *_275, D.15047
	movl	-44(%rbp), %edx	# i, tmp3133
	movslq	%edx, %rdx	# tmp3133, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_279, D.15048
	movl	-40(%rbp), %edx	# j, tmp3134
	movslq	%edx, %rdx	# tmp3134, D.15041
	addq	%rdx, %rdx	# D.15041
	addq	%rax, %rdx	# D.15048, D.15048
	movq	-16(%rbp), %rax	# fs_top, tmp3135
	movq	6480(%rax), %rax	# fs_top_2->ref_idx, D.15046
	addq	$8, %rax	#, D.15046
	movq	(%rax), %rax	# *_285, D.15047
	movl	-44(%rbp), %ecx	# i, tmp3136
	movslq	%ecx, %rcx	# tmp3136, D.15041
	salq	$3, %rcx	#, D.15041
	addq	%rcx, %rax	# D.15041, D.15047
	movq	(%rax), %rcx	# *_289, D.15048
	movl	-40(%rbp), %eax	# j, tmp3137
	movl	%eax, %esi	# tmp3137, tmp3138
	shrl	$31, %esi	#, tmp3138
	addl	%esi, %eax	# tmp3138, tmp3139
	sarl	%eax	# tmp3140
	cltq
	addq	%rax, %rax	# D.15041
	addq	%rcx, %rax	# D.15048, D.15048
	movzwl	(%rax), %eax	# *_294, D.15049
	movw	%ax, (%rdx)	# D.15049, *_283
	.loc 1 3432 0
	movq	-56(%rbp), %rax	# p, tmp3141
	movq	1608(%rax), %rax	# p_159(D)->ref_pic_id, D.15050
	movq	(%rax), %rax	# *_296, D.15051
	movl	-44(%rbp), %edx	# i, tmp3142
	movslq	%edx, %rdx	# tmp3142, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15051
	movq	(%rax), %rax	# *_300, D.15052
	movl	-40(%rbp), %edx	# j, tmp3143
	movslq	%edx, %rdx	# tmp3143, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rax, %rdx	# D.15052, D.15052
	movq	-24(%rbp), %rax	# fs, tmp3144
	movq	6496(%rax), %rax	# fs_1->ref_id, D.15050
	movq	(%rax), %rax	# *_305, D.15051
	movl	-44(%rbp), %ecx	# i, tmp3145
	movslq	%ecx, %rcx	# tmp3145, D.15041
	salq	$3, %rcx	#, D.15041
	addq	%rcx, %rax	# D.15041, D.15051
	movq	(%rax), %rcx	# *_309, D.15052
	movl	-40(%rbp), %eax	# j, tmp3146
	movl	%eax, %esi	# tmp3146, tmp3147
	shrl	$31, %esi	#, tmp3147
	addl	%esi, %eax	# tmp3147, tmp3148
	sarl	%eax	# tmp3149
	movl	%eax, %esi	# tmp3149, D.15035
	movl	-40(%rbp), %eax	# j, tmp3150
	leal	7(%rax), %edi	#, tmp3152
	testl	%eax, %eax	# tmp3151
	cmovs	%edi, %eax	# tmp3152,, tmp3151
	sarl	$3, %eax	#, tmp3153
	sall	$2, %eax	#, D.15035
	addl	%esi, %eax	# D.15035, D.15035
	cltq
	salq	$3, %rax	#, D.15041
	addq	%rcx, %rax	# D.15052, D.15052
	movq	(%rax), %rax	# *_317, D.15053
	movq	%rax, (%rdx)	# D.15053, *_304
	.loc 1 3433 0
	movq	-56(%rbp), %rax	# p, tmp3154
	movq	1608(%rax), %rax	# p_159(D)->ref_pic_id, D.15050
	addq	$8, %rax	#, D.15050
	movq	(%rax), %rax	# *_320, D.15051
	movl	-44(%rbp), %edx	# i, tmp3155
	movslq	%edx, %rdx	# tmp3155, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15051
	movq	(%rax), %rax	# *_324, D.15052
	movl	-40(%rbp), %edx	# j, tmp3156
	movslq	%edx, %rdx	# tmp3156, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rax, %rdx	# D.15052, D.15052
	movq	-24(%rbp), %rax	# fs, tmp3157
	movq	6496(%rax), %rax	# fs_1->ref_id, D.15050
	addq	$8, %rax	#, D.15050
	movq	(%rax), %rax	# *_330, D.15051
	movl	-44(%rbp), %ecx	# i, tmp3158
	movslq	%ecx, %rcx	# tmp3158, D.15041
	salq	$3, %rcx	#, D.15041
	addq	%rcx, %rax	# D.15041, D.15051
	movq	(%rax), %rcx	# *_334, D.15052
	movl	-40(%rbp), %eax	# j, tmp3159
	movl	%eax, %esi	# tmp3159, tmp3160
	shrl	$31, %esi	#, tmp3160
	addl	%esi, %eax	# tmp3160, tmp3161
	sarl	%eax	# tmp3162
	movl	%eax, %esi	# tmp3162, D.15035
	movl	-40(%rbp), %eax	# j, tmp3163
	leal	7(%rax), %edi	#, tmp3165
	testl	%eax, %eax	# tmp3164
	cmovs	%edi, %eax	# tmp3165,, tmp3164
	sarl	$3, %eax	#, tmp3166
	sall	$2, %eax	#, D.15035
	addl	%esi, %eax	# D.15035, D.15035
	cltq
	salq	$3, %rax	#, D.15041
	addq	%rcx, %rax	# D.15052, D.15052
	movq	(%rax), %rax	# *_342, D.15053
	movq	%rax, (%rdx)	# D.15053, *_328
	.loc 1 3435 0
	movq	-16(%rbp), %rax	# fs_top, tmp3167
	movl	6376(%rax), %edx	# fs_top_2->is_long_term, D.15035
	movq	-56(%rbp), %rax	# p, tmp3168
	movl	%edx, 4864(%rax)	# D.15035, p_159(D)->is_long_term
	.loc 1 3424 0
	jmp	.L705	#
.L703:
	.loc 1 3439 0
	movq	-56(%rbp), %rax	# p, tmp3169
	movq	1616(%rax), %rax	# p_159(D)->mv, D.15045
	movq	(%rax), %rax	# *_345, D.15046
	movl	-44(%rbp), %edx	# i, tmp3170
	movslq	%edx, %rdx	# tmp3170, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15046
	movq	(%rax), %rax	# *_349, D.15047
	movl	-40(%rbp), %edx	# j, tmp3171
	movslq	%edx, %rdx	# tmp3171, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rdx	# *_353, D.15048
	movq	-8(%rbp), %rax	# fs_bottom, tmp3172
	movq	6504(%rax), %rax	# fs_bottom_3->mv, D.15045
	movq	(%rax), %rax	# *_355, D.15046
	movl	-44(%rbp), %ecx	# i, tmp3173
	movslq	%ecx, %rcx	# tmp3173, D.15041
	salq	$3, %rcx	#, D.15041
	addq	%rcx, %rax	# D.15041, D.15046
	movq	(%rax), %rcx	# *_359, D.15047
	movl	-40(%rbp), %eax	# j, tmp3174
	movl	%eax, %esi	# tmp3174, tmp3175
	shrl	$31, %esi	#, tmp3175
	addl	%esi, %eax	# tmp3175, tmp3176
	sarl	%eax	# tmp3177
	cltq
	salq	$3, %rax	#, D.15041
	addq	%rcx, %rax	# D.15047, D.15047
	movq	(%rax), %rax	# *_364, D.15048
	movzwl	(%rax), %eax	# *_365, D.15049
	movw	%ax, (%rdx)	# D.15049, *_354
	.loc 1 3440 0
	movq	-56(%rbp), %rax	# p, tmp3178
	movq	1616(%rax), %rax	# p_159(D)->mv, D.15045
	movq	(%rax), %rax	# *_367, D.15046
	movl	-44(%rbp), %edx	# i, tmp3179
	movslq	%edx, %rdx	# tmp3179, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15046
	movq	(%rax), %rax	# *_371, D.15047
	movl	-40(%rbp), %edx	# j, tmp3180
	movslq	%edx, %rdx	# tmp3180, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_375, D.15048
	leaq	2(%rax), %rdx	#, D.15048
	movq	-8(%rbp), %rax	# fs_bottom, tmp3181
	movq	6504(%rax), %rax	# fs_bottom_3->mv, D.15045
	movq	(%rax), %rax	# *_378, D.15046
	movl	-44(%rbp), %ecx	# i, tmp3182
	movslq	%ecx, %rcx	# tmp3182, D.15041
	salq	$3, %rcx	#, D.15041
	addq	%rcx, %rax	# D.15041, D.15046
	movq	(%rax), %rcx	# *_382, D.15047
	movl	-40(%rbp), %eax	# j, tmp3183
	movl	%eax, %esi	# tmp3183, tmp3184
	shrl	$31, %esi	#, tmp3184
	addl	%esi, %eax	# tmp3184, tmp3185
	sarl	%eax	# tmp3186
	cltq
	salq	$3, %rax	#, D.15041
	addq	%rcx, %rax	# D.15047, D.15047
	movq	(%rax), %rax	# *_387, D.15048
	movzwl	2(%rax), %eax	# MEM[(short int *)_388 + 2B], D.15049
	movw	%ax, (%rdx)	# D.15049, *_377
	.loc 1 3441 0
	movq	-56(%rbp), %rax	# p, tmp3187
	movq	1616(%rax), %rax	# p_159(D)->mv, D.15045
	addq	$8, %rax	#, D.15045
	movq	(%rax), %rax	# *_391, D.15046
	movl	-44(%rbp), %edx	# i, tmp3188
	movslq	%edx, %rdx	# tmp3188, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15046
	movq	(%rax), %rax	# *_395, D.15047
	movl	-40(%rbp), %edx	# j, tmp3189
	movslq	%edx, %rdx	# tmp3189, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rdx	# *_399, D.15048
	movq	-8(%rbp), %rax	# fs_bottom, tmp3190
	movq	6504(%rax), %rax	# fs_bottom_3->mv, D.15045
	addq	$8, %rax	#, D.15045
	movq	(%rax), %rax	# *_402, D.15046
	movl	-44(%rbp), %ecx	# i, tmp3191
	movslq	%ecx, %rcx	# tmp3191, D.15041
	salq	$3, %rcx	#, D.15041
	addq	%rcx, %rax	# D.15041, D.15046
	movq	(%rax), %rcx	# *_406, D.15047
	movl	-40(%rbp), %eax	# j, tmp3192
	movl	%eax, %esi	# tmp3192, tmp3193
	shrl	$31, %esi	#, tmp3193
	addl	%esi, %eax	# tmp3193, tmp3194
	sarl	%eax	# tmp3195
	cltq
	salq	$3, %rax	#, D.15041
	addq	%rcx, %rax	# D.15047, D.15047
	movq	(%rax), %rax	# *_411, D.15048
	movzwl	(%rax), %eax	# *_412, D.15049
	movw	%ax, (%rdx)	# D.15049, *_400
	.loc 1 3442 0
	movq	-56(%rbp), %rax	# p, tmp3196
	movq	1616(%rax), %rax	# p_159(D)->mv, D.15045
	addq	$8, %rax	#, D.15045
	movq	(%rax), %rax	# *_415, D.15046
	movl	-44(%rbp), %edx	# i, tmp3197
	movslq	%edx, %rdx	# tmp3197, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15046
	movq	(%rax), %rax	# *_419, D.15047
	movl	-40(%rbp), %edx	# j, tmp3198
	movslq	%edx, %rdx	# tmp3198, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_423, D.15048
	leaq	2(%rax), %rdx	#, D.15048
	movq	-8(%rbp), %rax	# fs_bottom, tmp3199
	movq	6504(%rax), %rax	# fs_bottom_3->mv, D.15045
	addq	$8, %rax	#, D.15045
	movq	(%rax), %rax	# *_427, D.15046
	movl	-44(%rbp), %ecx	# i, tmp3200
	movslq	%ecx, %rcx	# tmp3200, D.15041
	salq	$3, %rcx	#, D.15041
	addq	%rcx, %rax	# D.15041, D.15046
	movq	(%rax), %rcx	# *_431, D.15047
	movl	-40(%rbp), %eax	# j, tmp3201
	movl	%eax, %esi	# tmp3201, tmp3202
	shrl	$31, %esi	#, tmp3202
	addl	%esi, %eax	# tmp3202, tmp3203
	sarl	%eax	# tmp3204
	cltq
	salq	$3, %rax	#, D.15041
	addq	%rcx, %rax	# D.15047, D.15047
	movq	(%rax), %rax	# *_436, D.15048
	movzwl	2(%rax), %eax	# MEM[(short int *)_437 + 2B], D.15049
	movw	%ax, (%rdx)	# D.15049, *_425
	.loc 1 3443 0
	movq	-56(%rbp), %rax	# p, tmp3205
	movq	1600(%rax), %rax	# p_159(D)->ref_idx, D.15046
	movq	(%rax), %rax	# *_439, D.15047
	movl	-44(%rbp), %edx	# i, tmp3206
	movslq	%edx, %rdx	# tmp3206, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_443, D.15048
	movl	-40(%rbp), %edx	# j, tmp3207
	movslq	%edx, %rdx	# tmp3207, D.15041
	addq	%rdx, %rdx	# D.15041
	addq	%rax, %rdx	# D.15048, D.15048
	movq	-8(%rbp), %rax	# fs_bottom, tmp3208
	movq	6480(%rax), %rax	# fs_bottom_3->ref_idx, D.15046
	movq	(%rax), %rax	# *_448, D.15047
	movl	-44(%rbp), %ecx	# i, tmp3209
	movslq	%ecx, %rcx	# tmp3209, D.15041
	salq	$3, %rcx	#, D.15041
	addq	%rcx, %rax	# D.15041, D.15047
	movq	(%rax), %rcx	# *_452, D.15048
	movl	-40(%rbp), %eax	# j, tmp3210
	movl	%eax, %esi	# tmp3210, tmp3211
	shrl	$31, %esi	#, tmp3211
	addl	%esi, %eax	# tmp3211, tmp3212
	sarl	%eax	# tmp3213
	cltq
	addq	%rax, %rax	# D.15041
	addq	%rcx, %rax	# D.15048, D.15048
	movzwl	(%rax), %eax	# *_457, D.15049
	movw	%ax, (%rdx)	# D.15049, *_447
	.loc 1 3444 0
	movq	-56(%rbp), %rax	# p, tmp3214
	movq	1600(%rax), %rax	# p_159(D)->ref_idx, D.15046
	addq	$8, %rax	#, D.15046
	movq	(%rax), %rax	# *_460, D.15047
	movl	-44(%rbp), %edx	# i, tmp3215
	movslq	%edx, %rdx	# tmp3215, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_464, D.15048
	movl	-40(%rbp), %edx	# j, tmp3216
	movslq	%edx, %rdx	# tmp3216, D.15041
	addq	%rdx, %rdx	# D.15041
	addq	%rax, %rdx	# D.15048, D.15048
	movq	-8(%rbp), %rax	# fs_bottom, tmp3217
	movq	6480(%rax), %rax	# fs_bottom_3->ref_idx, D.15046
	addq	$8, %rax	#, D.15046
	movq	(%rax), %rax	# *_470, D.15047
	movl	-44(%rbp), %ecx	# i, tmp3218
	movslq	%ecx, %rcx	# tmp3218, D.15041
	salq	$3, %rcx	#, D.15041
	addq	%rcx, %rax	# D.15041, D.15047
	movq	(%rax), %rcx	# *_474, D.15048
	movl	-40(%rbp), %eax	# j, tmp3219
	movl	%eax, %esi	# tmp3219, tmp3220
	shrl	$31, %esi	#, tmp3220
	addl	%esi, %eax	# tmp3220, tmp3221
	sarl	%eax	# tmp3222
	cltq
	addq	%rax, %rax	# D.15041
	addq	%rcx, %rax	# D.15048, D.15048
	movzwl	(%rax), %eax	# *_479, D.15049
	movw	%ax, (%rdx)	# D.15049, *_468
	.loc 1 3445 0
	movq	-56(%rbp), %rax	# p, tmp3223
	movq	1608(%rax), %rax	# p_159(D)->ref_pic_id, D.15050
	movq	(%rax), %rax	# *_481, D.15051
	movl	-44(%rbp), %edx	# i, tmp3224
	movslq	%edx, %rdx	# tmp3224, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15051
	movq	(%rax), %rax	# *_485, D.15052
	movl	-40(%rbp), %edx	# j, tmp3225
	movslq	%edx, %rdx	# tmp3225, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rax, %rdx	# D.15052, D.15052
	movq	-24(%rbp), %rax	# fs, tmp3226
	movq	6496(%rax), %rax	# fs_1->ref_id, D.15050
	movq	(%rax), %rax	# *_490, D.15051
	movl	-44(%rbp), %ecx	# i, tmp3227
	movslq	%ecx, %rcx	# tmp3227, D.15041
	salq	$3, %rcx	#, D.15041
	addq	%rcx, %rax	# D.15041, D.15051
	movq	(%rax), %rcx	# *_494, D.15052
	movl	-40(%rbp), %eax	# j, tmp3228
	movl	%eax, %esi	# tmp3228, tmp3229
	shrl	$31, %esi	#, tmp3229
	addl	%esi, %eax	# tmp3229, tmp3230
	sarl	%eax	# tmp3231
	movl	%eax, %esi	# tmp3231, D.15035
	movl	-40(%rbp), %eax	# j, tmp3232
	leal	7(%rax), %edi	#, tmp3234
	testl	%eax, %eax	# tmp3233
	cmovs	%edi, %eax	# tmp3234,, tmp3233
	sarl	$3, %eax	#, tmp3235
	sall	$2, %eax	#, D.15035
	addl	%esi, %eax	# D.15035, D.15035
	cltq
	addq	$4, %rax	#, D.15043
	salq	$3, %rax	#, D.15043
	addq	%rcx, %rax	# D.15052, D.15052
	movq	(%rax), %rax	# *_503, D.15053
	movq	%rax, (%rdx)	# D.15053, *_489
	.loc 1 3446 0
	movq	-56(%rbp), %rax	# p, tmp3236
	movq	1608(%rax), %rax	# p_159(D)->ref_pic_id, D.15050
	addq	$8, %rax	#, D.15050
	movq	(%rax), %rax	# *_506, D.15051
	movl	-44(%rbp), %edx	# i, tmp3237
	movslq	%edx, %rdx	# tmp3237, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15051
	movq	(%rax), %rax	# *_510, D.15052
	movl	-40(%rbp), %edx	# j, tmp3238
	movslq	%edx, %rdx	# tmp3238, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rax, %rdx	# D.15052, D.15052
	movq	-24(%rbp), %rax	# fs, tmp3239
	movq	6496(%rax), %rax	# fs_1->ref_id, D.15050
	addq	$8, %rax	#, D.15050
	movq	(%rax), %rax	# *_516, D.15051
	movl	-44(%rbp), %ecx	# i, tmp3240
	movslq	%ecx, %rcx	# tmp3240, D.15041
	salq	$3, %rcx	#, D.15041
	addq	%rcx, %rax	# D.15041, D.15051
	movq	(%rax), %rcx	# *_520, D.15052
	movl	-40(%rbp), %eax	# j, tmp3241
	movl	%eax, %esi	# tmp3241, tmp3242
	shrl	$31, %esi	#, tmp3242
	addl	%esi, %eax	# tmp3242, tmp3243
	sarl	%eax	# tmp3244
	movl	%eax, %esi	# tmp3244, D.15035
	movl	-40(%rbp), %eax	# j, tmp3245
	leal	7(%rax), %edi	#, tmp3247
	testl	%eax, %eax	# tmp3246
	cmovs	%edi, %eax	# tmp3247,, tmp3246
	sarl	$3, %eax	#, tmp3248
	sall	$2, %eax	#, D.15035
	addl	%esi, %eax	# D.15035, D.15035
	cltq
	addq	$4, %rax	#, D.15043
	salq	$3, %rax	#, D.15043
	addq	%rcx, %rax	# D.15052, D.15052
	movq	(%rax), %rax	# *_529, D.15053
	movq	%rax, (%rdx)	# D.15053, *_514
	.loc 1 3448 0
	movq	-8(%rbp), %rax	# fs_bottom, tmp3249
	movl	6376(%rax), %edx	# fs_bottom_3->is_long_term, D.15035
	movq	-56(%rbp), %rax	# p, tmp3250
	movl	%edx, 4864(%rax)	# D.15035, p_159(D)->is_long_term
	.loc 1 3424 0
	jmp	.L705	#
.L702:
	.loc 1 3453 0
	movq	-56(%rbp), %rax	# p, tmp3251
	movq	1616(%rax), %rax	# p_159(D)->mv, D.15045
	movq	(%rax), %rax	# *_532, D.15046
	movl	-44(%rbp), %edx	# i, tmp3252
	movslq	%edx, %rdx	# tmp3252, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15046
	movq	(%rax), %rax	# *_536, D.15047
	movl	-40(%rbp), %edx	# j, tmp3253
	movslq	%edx, %rdx	# tmp3253, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_540, D.15048
	movq	-24(%rbp), %rdx	# fs, tmp3254
	movq	6504(%rdx), %rdx	# fs_1->mv, D.15045
	movq	(%rdx), %rdx	# *_542, D.15046
	movl	-44(%rbp), %ecx	# i, tmp3255
	movslq	%ecx, %rcx	# tmp3255, D.15041
	salq	$3, %rcx	#, D.15041
	addq	%rcx, %rdx	# D.15041, D.15046
	movq	(%rdx), %rdx	# *_546, D.15047
	movl	-40(%rbp), %ecx	# j, tmp3256
	movslq	%ecx, %rcx	# tmp3256, D.15041
	salq	$3, %rcx	#, D.15041
	addq	%rcx, %rdx	# D.15041, D.15047
	movq	(%rdx), %rdx	# *_550, D.15048
	movzwl	(%rdx), %edx	# *_551, D.15049
	movw	%dx, (%rax)	# D.15049, *_541
	.loc 1 3454 0
	movq	-56(%rbp), %rax	# p, tmp3257
	movq	1616(%rax), %rax	# p_159(D)->mv, D.15045
	movq	(%rax), %rax	# *_553, D.15046
	movl	-44(%rbp), %edx	# i, tmp3258
	movslq	%edx, %rdx	# tmp3258, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15046
	movq	(%rax), %rax	# *_557, D.15047
	movl	-40(%rbp), %edx	# j, tmp3259
	movslq	%edx, %rdx	# tmp3259, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_561, D.15048
	leaq	2(%rax), %rdx	#, D.15048
	movq	-24(%rbp), %rax	# fs, tmp3260
	movq	6504(%rax), %rax	# fs_1->mv, D.15045
	movq	(%rax), %rax	# *_564, D.15046
	movl	-44(%rbp), %ecx	# i, tmp3261
	movslq	%ecx, %rcx	# tmp3261, D.15041
	salq	$3, %rcx	#, D.15041
	addq	%rcx, %rax	# D.15041, D.15046
	movq	(%rax), %rax	# *_568, D.15047
	movl	-40(%rbp), %ecx	# j, tmp3262
	movslq	%ecx, %rcx	# tmp3262, D.15041
	salq	$3, %rcx	#, D.15041
	addq	%rcx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_572, D.15048
	movzwl	2(%rax), %eax	# MEM[(short int *)_573 + 2B], D.15049
	movw	%ax, (%rdx)	# D.15049, *_563
	.loc 1 3455 0
	movq	-56(%rbp), %rax	# p, tmp3263
	movq	1616(%rax), %rax	# p_159(D)->mv, D.15045
	addq	$8, %rax	#, D.15045
	movq	(%rax), %rax	# *_576, D.15046
	movl	-44(%rbp), %edx	# i, tmp3264
	movslq	%edx, %rdx	# tmp3264, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15046
	movq	(%rax), %rax	# *_580, D.15047
	movl	-40(%rbp), %edx	# j, tmp3265
	movslq	%edx, %rdx	# tmp3265, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_584, D.15048
	movq	-24(%rbp), %rdx	# fs, tmp3266
	movq	6504(%rdx), %rdx	# fs_1->mv, D.15045
	addq	$8, %rdx	#, D.15045
	movq	(%rdx), %rdx	# *_587, D.15046
	movl	-44(%rbp), %ecx	# i, tmp3267
	movslq	%ecx, %rcx	# tmp3267, D.15041
	salq	$3, %rcx	#, D.15041
	addq	%rcx, %rdx	# D.15041, D.15046
	movq	(%rdx), %rdx	# *_591, D.15047
	movl	-40(%rbp), %ecx	# j, tmp3268
	movslq	%ecx, %rcx	# tmp3268, D.15041
	salq	$3, %rcx	#, D.15041
	addq	%rcx, %rdx	# D.15041, D.15047
	movq	(%rdx), %rdx	# *_595, D.15048
	movzwl	(%rdx), %edx	# *_596, D.15049
	movw	%dx, (%rax)	# D.15049, *_585
	.loc 1 3456 0
	movq	-56(%rbp), %rax	# p, tmp3269
	movq	1616(%rax), %rax	# p_159(D)->mv, D.15045
	addq	$8, %rax	#, D.15045
	movq	(%rax), %rax	# *_599, D.15046
	movl	-44(%rbp), %edx	# i, tmp3270
	movslq	%edx, %rdx	# tmp3270, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15046
	movq	(%rax), %rax	# *_603, D.15047
	movl	-40(%rbp), %edx	# j, tmp3271
	movslq	%edx, %rdx	# tmp3271, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_607, D.15048
	leaq	2(%rax), %rdx	#, D.15048
	movq	-24(%rbp), %rax	# fs, tmp3272
	movq	6504(%rax), %rax	# fs_1->mv, D.15045
	addq	$8, %rax	#, D.15045
	movq	(%rax), %rax	# *_611, D.15046
	movl	-44(%rbp), %ecx	# i, tmp3273
	movslq	%ecx, %rcx	# tmp3273, D.15041
	salq	$3, %rcx	#, D.15041
	addq	%rcx, %rax	# D.15041, D.15046
	movq	(%rax), %rax	# *_615, D.15047
	movl	-40(%rbp), %ecx	# j, tmp3274
	movslq	%ecx, %rcx	# tmp3274, D.15041
	salq	$3, %rcx	#, D.15041
	addq	%rcx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_619, D.15048
	movzwl	2(%rax), %eax	# MEM[(short int *)_620 + 2B], D.15049
	movw	%ax, (%rdx)	# D.15049, *_609
	.loc 1 3457 0
	movq	-56(%rbp), %rax	# p, tmp3275
	movq	1600(%rax), %rax	# p_159(D)->ref_idx, D.15046
	movq	(%rax), %rax	# *_622, D.15047
	movl	-44(%rbp), %edx	# i, tmp3276
	movslq	%edx, %rdx	# tmp3276, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_626, D.15048
	movl	-40(%rbp), %edx	# j, tmp3277
	movslq	%edx, %rdx	# tmp3277, D.15041
	addq	%rdx, %rdx	# D.15041
	addq	%rax, %rdx	# D.15048, D.15048
	movq	-24(%rbp), %rax	# fs, tmp3278
	movq	6480(%rax), %rax	# fs_1->ref_idx, D.15046
	movq	(%rax), %rax	# *_631, D.15047
	movl	-44(%rbp), %ecx	# i, tmp3279
	movslq	%ecx, %rcx	# tmp3279, D.15041
	salq	$3, %rcx	#, D.15041
	addq	%rcx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_635, D.15048
	movl	-40(%rbp), %ecx	# j, tmp3280
	movslq	%ecx, %rcx	# tmp3280, D.15041
	addq	%rcx, %rcx	# D.15041
	addq	%rcx, %rax	# D.15041, D.15048
	movzwl	(%rax), %eax	# *_639, D.15049
	movw	%ax, (%rdx)	# D.15049, *_630
	.loc 1 3458 0
	movq	-56(%rbp), %rax	# p, tmp3281
	movq	1600(%rax), %rax	# p_159(D)->ref_idx, D.15046
	addq	$8, %rax	#, D.15046
	movq	(%rax), %rax	# *_642, D.15047
	movl	-44(%rbp), %edx	# i, tmp3282
	movslq	%edx, %rdx	# tmp3282, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_646, D.15048
	movl	-40(%rbp), %edx	# j, tmp3283
	movslq	%edx, %rdx	# tmp3283, D.15041
	addq	%rdx, %rdx	# D.15041
	addq	%rax, %rdx	# D.15048, D.15048
	movq	-24(%rbp), %rax	# fs, tmp3284
	movq	6480(%rax), %rax	# fs_1->ref_idx, D.15046
	addq	$8, %rax	#, D.15046
	movq	(%rax), %rax	# *_652, D.15047
	movl	-44(%rbp), %ecx	# i, tmp3285
	movslq	%ecx, %rcx	# tmp3285, D.15041
	salq	$3, %rcx	#, D.15041
	addq	%rcx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_656, D.15048
	movl	-40(%rbp), %ecx	# j, tmp3286
	movslq	%ecx, %rcx	# tmp3286, D.15041
	addq	%rcx, %rcx	# D.15041
	addq	%rcx, %rax	# D.15041, D.15048
	movzwl	(%rax), %eax	# *_660, D.15049
	movw	%ax, (%rdx)	# D.15049, *_650
	.loc 1 3459 0
	movq	-56(%rbp), %rax	# p, tmp3287
	movq	1608(%rax), %rax	# p_159(D)->ref_pic_id, D.15050
	movq	(%rax), %rax	# *_662, D.15051
	movl	-44(%rbp), %edx	# i, tmp3288
	movslq	%edx, %rdx	# tmp3288, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15051
	movq	(%rax), %rax	# *_666, D.15052
	movl	-40(%rbp), %edx	# j, tmp3289
	movslq	%edx, %rdx	# tmp3289, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rax, %rdx	# D.15052, D.15052
	movq	-24(%rbp), %rax	# fs, tmp3290
	movq	6496(%rax), %rax	# fs_1->ref_id, D.15050
	movq	(%rax), %rax	# *_671, D.15051
	movl	-44(%rbp), %ecx	# i, tmp3291
	movslq	%ecx, %rcx	# tmp3291, D.15041
	salq	$3, %rcx	#, D.15041
	addq	%rcx, %rax	# D.15041, D.15051
	movq	(%rax), %rax	# *_675, D.15052
	movl	-40(%rbp), %ecx	# j, tmp3292
	movslq	%ecx, %rcx	# tmp3292, D.15041
	salq	$3, %rcx	#, D.15041
	addq	%rcx, %rax	# D.15041, D.15052
	movq	(%rax), %rax	# *_679, D.15053
	movq	%rax, (%rdx)	# D.15053, *_670
	.loc 1 3460 0
	movq	-56(%rbp), %rax	# p, tmp3293
	movq	1608(%rax), %rax	# p_159(D)->ref_pic_id, D.15050
	addq	$8, %rax	#, D.15050
	movq	(%rax), %rax	# *_682, D.15051
	movl	-44(%rbp), %edx	# i, tmp3294
	movslq	%edx, %rdx	# tmp3294, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15051
	movq	(%rax), %rax	# *_686, D.15052
	movl	-40(%rbp), %edx	# j, tmp3295
	movslq	%edx, %rdx	# tmp3295, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rax, %rdx	# D.15052, D.15052
	movq	-24(%rbp), %rax	# fs, tmp3296
	movq	6496(%rax), %rax	# fs_1->ref_id, D.15050
	addq	$8, %rax	#, D.15050
	movq	(%rax), %rax	# *_692, D.15051
	movl	-44(%rbp), %ecx	# i, tmp3297
	movslq	%ecx, %rcx	# tmp3297, D.15041
	salq	$3, %rcx	#, D.15041
	addq	%rcx, %rax	# D.15041, D.15051
	movq	(%rax), %rax	# *_696, D.15052
	movl	-40(%rbp), %ecx	# j, tmp3298
	movslq	%ecx, %rcx	# tmp3298, D.15041
	salq	$3, %rcx	#, D.15041
	addq	%rcx, %rax	# D.15041, D.15052
	movq	(%rax), %rax	# *_700, D.15053
	movq	%rax, (%rdx)	# D.15053, *_690
	.loc 1 3462 0
	movq	-24(%rbp), %rax	# fs, tmp3299
	movl	6376(%rax), %edx	# fs_1->is_long_term, D.15035
	movq	-56(%rbp), %rax	# p, tmp3300
	movl	%edx, 4864(%rax)	# D.15035, p_159(D)->is_long_term
.L705:
	.loc 1 3415 0
	addl	$1, -44(%rbp)	#, i
.L701:
	.loc 1 3415 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# fs, tmp3301
	movl	6392(%rax), %eax	# fs_1->size_x, D.15035
	leal	3(%rax), %edx	#, tmp3303
	testl	%eax, %eax	# tmp3302
	cmovs	%edx, %eax	# tmp3303,, tmp3302
	sarl	$2, %eax	#, tmp3304
	cmpl	-44(%rbp), %eax	# i, D.15035
	jg	.L706	#,
	.loc 1 3413 0 is_stmt 1
	addl	$1, -40(%rbp)	#, j
.L700:
	.loc 1 3413 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# fs, tmp3305
	movl	6396(%rax), %eax	# fs_1->size_y, D.15035
	leal	3(%rax), %edx	#, tmp3307
	testl	%eax, %eax	# tmp3306
	cmovs	%edx, %eax	# tmp3307,, tmp3306
	sarl	$2, %eax	#, tmp3308
	cmpl	-40(%rbp), %eax	# j, D.15035
	jg	.L707	#,
.L699:
	.loc 1 3471 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.155
	movl	28(%rax), %eax	# img.155_705->structure, D.15035
	testl	%eax, %eax	# D.15035
	jne	.L708	#,
	.loc 1 3471 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.156
	movl	72400(%rax), %eax	# img.156_707->MbaffFrameFlag, D.15035
	testl	%eax, %eax	# D.15035
	je	.L709	#,
.L708:
	.loc 1 3473 0 is_stmt 1
	movl	$0, -44(%rbp)	#, i
	jmp	.L710	#
.L838:
	.loc 1 3475 0
	movl	$0, -40(%rbp)	#, j
	jmp	.L711	#
.L837:
	.loc 1 3479 0
	movq	img(%rip), %rax	# img, img.157
	movl	72400(%rax), %eax	# img.157_715->MbaffFrameFlag, D.15035
	testl	%eax, %eax	# D.15035
	jne	.L712	#,
	.loc 1 3481 0
	movq	-56(%rbp), %rax	# p, tmp3309
	movq	1616(%rax), %rax	# p_159(D)->mv, D.15045
	movq	(%rax), %rax	# *_717, D.15046
	movl	-44(%rbp), %edx	# i, tmp3310
	movslq	%edx, %rdx	# tmp3310, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15046
	movq	(%rax), %rax	# *_721, D.15047
	movl	-40(%rbp), %edx	# j, tmp3311
	movslq	%edx, %rdx	# tmp3311, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rdx	# *_725, D.15048
	movq	-24(%rbp), %rax	# fs, tmp3312
	movq	6504(%rax), %rax	# fs_1->mv, D.15045
	movq	(%rax), %rcx	# *_727, D.15046
	movl	-44(%rbp), %eax	# i, tmp3313
	andl	$2, %eax	#, D.15035
	testl	%eax, %eax	# D.15035
	je	.L713	#,
	.loc 1 3481 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# i, tmp3314
	orl	$1, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.158
	jmp	.L714	#
.L713:
	.loc 1 3481 0 discriminator 2
	movl	-44(%rbp), %eax	# i, tmp3315
	andl	$-2, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.158
.L714:
	.loc 1 3481 0 discriminator 3
	addq	%rcx, %rax	# D.15046, D.15046
	movq	(%rax), %rcx	# *_736, D.15047
	movl	-40(%rbp), %eax	# j, tmp3316
	andl	$2, %eax	#, D.15035
	testl	%eax, %eax	# D.15035
	je	.L715	#,
	.loc 1 3481 0 discriminator 1
	movl	-40(%rbp), %eax	# j, tmp3317
	orl	$1, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.159
	jmp	.L716	#
.L715:
	.loc 1 3481 0 discriminator 2
	movl	-40(%rbp), %eax	# j, tmp3318
	andl	$-2, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.159
.L716:
	.loc 1 3481 0 discriminator 3
	addq	%rcx, %rax	# D.15047, D.15047
	movq	(%rax), %rax	# *_745, D.15048
	movzwl	(%rax), %eax	# *_746, D.15049
	movw	%ax, (%rdx)	# D.15049, *_726
	.loc 1 3482 0 is_stmt 1 discriminator 3
	movq	-56(%rbp), %rax	# p, tmp3319
	movq	1616(%rax), %rax	# p_159(D)->mv, D.15045
	movq	(%rax), %rax	# *_748, D.15046
	movl	-44(%rbp), %edx	# i, tmp3320
	movslq	%edx, %rdx	# tmp3320, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15046
	movq	(%rax), %rax	# *_752, D.15047
	movl	-40(%rbp), %edx	# j, tmp3321
	movslq	%edx, %rdx	# tmp3321, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_756, D.15048
	leaq	2(%rax), %rdx	#, D.15048
	movq	-24(%rbp), %rax	# fs, tmp3322
	movq	6504(%rax), %rax	# fs_1->mv, D.15045
	movq	(%rax), %rcx	# *_759, D.15046
	movl	-44(%rbp), %eax	# i, tmp3323
	andl	$2, %eax	#, D.15035
	testl	%eax, %eax	# D.15035
	je	.L717	#,
	.loc 1 3482 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# i, tmp3324
	orl	$1, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.160
	jmp	.L718	#
.L717:
	.loc 1 3482 0 discriminator 2
	movl	-44(%rbp), %eax	# i, tmp3325
	andl	$-2, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.160
.L718:
	.loc 1 3482 0 discriminator 3
	addq	%rcx, %rax	# D.15046, D.15046
	movq	(%rax), %rcx	# *_768, D.15047
	movl	-40(%rbp), %eax	# j, tmp3326
	andl	$2, %eax	#, D.15035
	testl	%eax, %eax	# D.15035
	je	.L719	#,
	.loc 1 3482 0 discriminator 1
	movl	-40(%rbp), %eax	# j, tmp3327
	orl	$1, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.161
	jmp	.L720	#
.L719:
	.loc 1 3482 0 discriminator 2
	movl	-40(%rbp), %eax	# j, tmp3328
	andl	$-2, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.161
.L720:
	.loc 1 3482 0 discriminator 3
	addq	%rcx, %rax	# D.15047, D.15047
	movq	(%rax), %rax	# *_777, D.15048
	movzwl	2(%rax), %eax	# MEM[(short int *)_778 + 2B], D.15049
	movw	%ax, (%rdx)	# D.15049, *_758
	.loc 1 3483 0 is_stmt 1 discriminator 3
	movq	-56(%rbp), %rax	# p, tmp3329
	movq	1616(%rax), %rax	# p_159(D)->mv, D.15045
	addq	$8, %rax	#, D.15045
	movq	(%rax), %rax	# *_781, D.15046
	movl	-44(%rbp), %edx	# i, tmp3330
	movslq	%edx, %rdx	# tmp3330, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15046
	movq	(%rax), %rax	# *_785, D.15047
	movl	-40(%rbp), %edx	# j, tmp3331
	movslq	%edx, %rdx	# tmp3331, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rdx	# *_789, D.15048
	movq	-24(%rbp), %rax	# fs, tmp3332
	movq	6504(%rax), %rax	# fs_1->mv, D.15045
	addq	$8, %rax	#, D.15045
	movq	(%rax), %rcx	# *_792, D.15046
	movl	-44(%rbp), %eax	# i, tmp3333
	andl	$2, %eax	#, D.15035
	testl	%eax, %eax	# D.15035
	je	.L721	#,
	.loc 1 3483 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# i, tmp3334
	orl	$1, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.162
	jmp	.L722	#
.L721:
	.loc 1 3483 0 discriminator 2
	movl	-44(%rbp), %eax	# i, tmp3335
	andl	$-2, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.162
.L722:
	.loc 1 3483 0 discriminator 3
	addq	%rcx, %rax	# D.15046, D.15046
	movq	(%rax), %rcx	# *_801, D.15047
	movl	-40(%rbp), %eax	# j, tmp3336
	andl	$2, %eax	#, D.15035
	testl	%eax, %eax	# D.15035
	je	.L723	#,
	.loc 1 3483 0 discriminator 1
	movl	-40(%rbp), %eax	# j, tmp3337
	orl	$1, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.163
	jmp	.L724	#
.L723:
	.loc 1 3483 0 discriminator 2
	movl	-40(%rbp), %eax	# j, tmp3338
	andl	$-2, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.163
.L724:
	.loc 1 3483 0 discriminator 3
	addq	%rcx, %rax	# D.15047, D.15047
	movq	(%rax), %rax	# *_810, D.15048
	movzwl	(%rax), %eax	# *_811, D.15049
	movw	%ax, (%rdx)	# D.15049, *_790
	.loc 1 3484 0 is_stmt 1 discriminator 3
	movq	-56(%rbp), %rax	# p, tmp3339
	movq	1616(%rax), %rax	# p_159(D)->mv, D.15045
	addq	$8, %rax	#, D.15045
	movq	(%rax), %rax	# *_814, D.15046
	movl	-44(%rbp), %edx	# i, tmp3340
	movslq	%edx, %rdx	# tmp3340, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15046
	movq	(%rax), %rax	# *_818, D.15047
	movl	-40(%rbp), %edx	# j, tmp3341
	movslq	%edx, %rdx	# tmp3341, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_822, D.15048
	leaq	2(%rax), %rdx	#, D.15048
	movq	-24(%rbp), %rax	# fs, tmp3342
	movq	6504(%rax), %rax	# fs_1->mv, D.15045
	addq	$8, %rax	#, D.15045
	movq	(%rax), %rcx	# *_826, D.15046
	movl	-44(%rbp), %eax	# i, tmp3343
	andl	$2, %eax	#, D.15035
	testl	%eax, %eax	# D.15035
	je	.L725	#,
	.loc 1 3484 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# i, tmp3344
	orl	$1, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.164
	jmp	.L726	#
.L725:
	.loc 1 3484 0 discriminator 2
	movl	-44(%rbp), %eax	# i, tmp3345
	andl	$-2, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.164
.L726:
	.loc 1 3484 0 discriminator 3
	addq	%rcx, %rax	# D.15046, D.15046
	movq	(%rax), %rcx	# *_835, D.15047
	movl	-40(%rbp), %eax	# j, tmp3346
	andl	$2, %eax	#, D.15035
	testl	%eax, %eax	# D.15035
	je	.L727	#,
	.loc 1 3484 0 discriminator 1
	movl	-40(%rbp), %eax	# j, tmp3347
	orl	$1, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.165
	jmp	.L728	#
.L727:
	.loc 1 3484 0 discriminator 2
	movl	-40(%rbp), %eax	# j, tmp3348
	andl	$-2, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.165
.L728:
	.loc 1 3484 0 discriminator 3
	addq	%rcx, %rax	# D.15047, D.15047
	movq	(%rax), %rax	# *_844, D.15048
	movzwl	2(%rax), %eax	# MEM[(short int *)_845 + 2B], D.15049
	movw	%ax, (%rdx)	# D.15049, *_824
	.loc 1 3488 0 is_stmt 1 discriminator 3
	movq	-24(%rbp), %rax	# fs, tmp3349
	movq	6480(%rax), %rax	# fs_1->ref_idx, D.15046
	movq	(%rax), %rdx	# *_847, D.15047
	movl	-44(%rbp), %eax	# i, tmp3350
	andl	$2, %eax	#, D.15035
	testl	%eax, %eax	# D.15035
	je	.L729	#,
	.loc 1 3488 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# i, tmp3351
	orl	$1, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.166
	jmp	.L730	#
.L729:
	.loc 1 3488 0 discriminator 2
	movl	-44(%rbp), %eax	# i, tmp3352
	andl	$-2, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.166
.L730:
	.loc 1 3488 0 discriminator 3
	addq	%rdx, %rax	# D.15047, D.15047
	movq	(%rax), %rdx	# *_856, D.15048
	movl	-40(%rbp), %eax	# j, tmp3353
	andl	$2, %eax	#, D.15035
	testl	%eax, %eax	# D.15035
	je	.L731	#,
	.loc 1 3488 0 discriminator 1
	movl	-40(%rbp), %eax	# j, tmp3354
	orl	$1, %eax	#, D.15035
	cltq
	addq	%rax, %rax	# iftmp.167
	jmp	.L732	#
.L731:
	.loc 1 3488 0 discriminator 2
	movl	-40(%rbp), %eax	# j, tmp3355
	andl	$-2, %eax	#, D.15035
	cltq
	addq	%rax, %rax	# iftmp.167
.L732:
	.loc 1 3488 0 discriminator 3
	addq	%rdx, %rax	# D.15048, D.15048
	movzwl	(%rax), %eax	# *_865, D.15049
	cmpw	$-1, %ax	#, D.15049
	jne	.L733	#,
	.loc 1 3490 0 is_stmt 1
	movq	-56(%rbp), %rax	# p, tmp3356
	movq	1600(%rax), %rax	# p_159(D)->ref_idx, D.15046
	movq	(%rax), %rax	# *_867, D.15047
	movl	-44(%rbp), %edx	# i, tmp3357
	movslq	%edx, %rdx	# tmp3357, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_871, D.15048
	movl	-40(%rbp), %edx	# j, tmp3358
	movslq	%edx, %rdx	# tmp3358, D.15041
	addq	%rdx, %rdx	# D.15041
	addq	%rdx, %rax	# D.15041, D.15048
	movw	$-1, (%rax)	#, *_875
	.loc 1 3491 0
	movq	-56(%rbp), %rax	# p, tmp3359
	movq	1608(%rax), %rax	# p_159(D)->ref_pic_id, D.15050
	movq	(%rax), %rax	# *_876, D.15051
	movl	-44(%rbp), %edx	# i, tmp3360
	movslq	%edx, %rdx	# tmp3360, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15051
	movq	(%rax), %rax	# *_880, D.15052
	movl	-40(%rbp), %edx	# j, tmp3361
	movslq	%edx, %rdx	# tmp3361, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15052
	movq	$-1, (%rax)	#, *_884
	jmp	.L734	#
.L733:
	.loc 1 3495 0
	movq	-56(%rbp), %rax	# p, tmp3362
	movq	1600(%rax), %rax	# p_159(D)->ref_idx, D.15046
	movq	(%rax), %rax	# *_885, D.15047
	movl	-44(%rbp), %edx	# i, tmp3363
	movslq	%edx, %rdx	# tmp3363, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_889, D.15048
	movl	-40(%rbp), %edx	# j, tmp3364
	movslq	%edx, %rdx	# tmp3364, D.15041
	addq	%rdx, %rdx	# D.15041
	addq	%rax, %rdx	# D.15048, D.15048
	movq	-24(%rbp), %rax	# fs, tmp3365
	movq	6480(%rax), %rax	# fs_1->ref_idx, D.15046
	movq	(%rax), %rcx	# *_894, D.15047
	movl	-44(%rbp), %eax	# i, tmp3366
	andl	$2, %eax	#, D.15035
	testl	%eax, %eax	# D.15035
	je	.L735	#,
	.loc 1 3495 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# i, tmp3367
	orl	$1, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.168
	jmp	.L736	#
.L735:
	.loc 1 3495 0 discriminator 2
	movl	-44(%rbp), %eax	# i, tmp3368
	andl	$-2, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.168
.L736:
	.loc 1 3495 0 discriminator 3
	addq	%rcx, %rax	# D.15047, D.15047
	movq	(%rax), %rcx	# *_903, D.15048
	movl	-40(%rbp), %eax	# j, tmp3369
	andl	$2, %eax	#, D.15035
	testl	%eax, %eax	# D.15035
	je	.L737	#,
	.loc 1 3495 0 discriminator 1
	movl	-40(%rbp), %eax	# j, tmp3370
	orl	$1, %eax	#, D.15035
	cltq
	addq	%rax, %rax	# iftmp.169
	jmp	.L738	#
.L737:
	.loc 1 3495 0 discriminator 2
	movl	-40(%rbp), %eax	# j, tmp3371
	andl	$-2, %eax	#, D.15035
	cltq
	addq	%rax, %rax	# iftmp.169
.L738:
	.loc 1 3495 0 discriminator 3
	addq	%rcx, %rax	# D.15048, D.15048
	movzwl	(%rax), %eax	# *_912, D.15049
	movw	%ax, (%rdx)	# D.15049, *_893
	.loc 1 3497 0 is_stmt 1 discriminator 3
	movq	-56(%rbp), %rax	# p, tmp3372
	movq	1608(%rax), %rax	# p_159(D)->ref_pic_id, D.15050
	movq	(%rax), %rax	# *_914, D.15051
	movl	-44(%rbp), %edx	# i, tmp3373
	movslq	%edx, %rdx	# tmp3373, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15051
	movq	(%rax), %rax	# *_918, D.15052
	movl	-40(%rbp), %edx	# j, tmp3374
	movslq	%edx, %rdx	# tmp3374, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rax, %rdx	# D.15052, D.15052
	movq	-24(%rbp), %rax	# fs, tmp3375
	movq	6496(%rax), %rax	# fs_1->ref_id, D.15050
	movq	(%rax), %rcx	# *_923, D.15051
	movl	-44(%rbp), %eax	# i, tmp3376
	andl	$2, %eax	#, D.15035
	testl	%eax, %eax	# D.15035
	je	.L739	#,
	.loc 1 3497 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# i, tmp3377
	orl	$1, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.170
	jmp	.L740	#
.L739:
	.loc 1 3497 0 discriminator 2
	movl	-44(%rbp), %eax	# i, tmp3378
	andl	$-2, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.170
.L740:
	.loc 1 3497 0 discriminator 3
	addq	%rcx, %rax	# D.15051, D.15051
	movq	(%rax), %rcx	# *_932, D.15052
	movl	-40(%rbp), %eax	# j, tmp3379
	andl	$2, %eax	#, D.15035
	testl	%eax, %eax	# D.15035
	je	.L741	#,
	.loc 1 3497 0 discriminator 1
	movl	-40(%rbp), %eax	# j, tmp3380
	orl	$1, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.171
	jmp	.L742	#
.L741:
	.loc 1 3497 0 discriminator 2
	movl	-40(%rbp), %eax	# j, tmp3381
	andl	$-2, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.171
.L742:
	.loc 1 3497 0 discriminator 3
	addq	%rcx, %rax	# D.15052, D.15052
	movq	(%rax), %rax	# *_941, D.15053
	movq	%rax, (%rdx)	# D.15053, *_922
.L734:
	.loc 1 3500 0 is_stmt 1
	movq	-24(%rbp), %rax	# fs, tmp3382
	movq	6480(%rax), %rax	# fs_1->ref_idx, D.15046
	addq	$8, %rax	#, D.15046
	movq	(%rax), %rdx	# *_944, D.15047
	movl	-44(%rbp), %eax	# i, tmp3383
	andl	$2, %eax	#, D.15035
	testl	%eax, %eax	# D.15035
	je	.L743	#,
	.loc 1 3500 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# i, tmp3384
	orl	$1, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.172
	jmp	.L744	#
.L743:
	.loc 1 3500 0 discriminator 2
	movl	-44(%rbp), %eax	# i, tmp3385
	andl	$-2, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.172
.L744:
	.loc 1 3500 0 discriminator 3
	addq	%rdx, %rax	# D.15047, D.15047
	movq	(%rax), %rdx	# *_953, D.15048
	movl	-40(%rbp), %eax	# j, tmp3386
	andl	$2, %eax	#, D.15035
	testl	%eax, %eax	# D.15035
	je	.L745	#,
	.loc 1 3500 0 discriminator 1
	movl	-40(%rbp), %eax	# j, tmp3387
	orl	$1, %eax	#, D.15035
	cltq
	addq	%rax, %rax	# iftmp.173
	jmp	.L746	#
.L745:
	.loc 1 3500 0 discriminator 2
	movl	-40(%rbp), %eax	# j, tmp3388
	andl	$-2, %eax	#, D.15035
	cltq
	addq	%rax, %rax	# iftmp.173
.L746:
	.loc 1 3500 0 discriminator 3
	addq	%rdx, %rax	# D.15048, D.15048
	movzwl	(%rax), %eax	# *_962, D.15049
	cmpw	$-1, %ax	#, D.15049
	jne	.L747	#,
	.loc 1 3502 0 is_stmt 1
	movq	-56(%rbp), %rax	# p, tmp3389
	movq	1600(%rax), %rax	# p_159(D)->ref_idx, D.15046
	addq	$8, %rax	#, D.15046
	movq	(%rax), %rax	# *_965, D.15047
	movl	-44(%rbp), %edx	# i, tmp3390
	movslq	%edx, %rdx	# tmp3390, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_969, D.15048
	movl	-40(%rbp), %edx	# j, tmp3391
	movslq	%edx, %rdx	# tmp3391, D.15041
	addq	%rdx, %rdx	# D.15041
	addq	%rdx, %rax	# D.15041, D.15048
	movw	$-1, (%rax)	#, *_973
	.loc 1 3503 0
	movq	-56(%rbp), %rax	# p, tmp3392
	movq	1608(%rax), %rax	# p_159(D)->ref_pic_id, D.15050
	addq	$8, %rax	#, D.15050
	movq	(%rax), %rax	# *_975, D.15051
	movl	-44(%rbp), %edx	# i, tmp3393
	movslq	%edx, %rdx	# tmp3393, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15051
	movq	(%rax), %rax	# *_979, D.15052
	movl	-40(%rbp), %edx	# j, tmp3394
	movslq	%edx, %rdx	# tmp3394, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15052
	movq	$-1, (%rax)	#, *_983
	jmp	.L748	#
.L747:
	.loc 1 3507 0
	movq	-56(%rbp), %rax	# p, tmp3395
	movq	1600(%rax), %rax	# p_159(D)->ref_idx, D.15046
	addq	$8, %rax	#, D.15046
	movq	(%rax), %rax	# *_985, D.15047
	movl	-44(%rbp), %edx	# i, tmp3396
	movslq	%edx, %rdx	# tmp3396, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_989, D.15048
	movl	-40(%rbp), %edx	# j, tmp3397
	movslq	%edx, %rdx	# tmp3397, D.15041
	addq	%rdx, %rdx	# D.15041
	addq	%rax, %rdx	# D.15048, D.15048
	movq	-24(%rbp), %rax	# fs, tmp3398
	movq	6480(%rax), %rax	# fs_1->ref_idx, D.15046
	addq	$8, %rax	#, D.15046
	movq	(%rax), %rcx	# *_995, D.15047
	movl	-44(%rbp), %eax	# i, tmp3399
	andl	$2, %eax	#, D.15035
	testl	%eax, %eax	# D.15035
	je	.L749	#,
	.loc 1 3507 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# i, tmp3400
	orl	$1, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.174
	jmp	.L750	#
.L749:
	.loc 1 3507 0 discriminator 2
	movl	-44(%rbp), %eax	# i, tmp3401
	andl	$-2, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.174
.L750:
	.loc 1 3507 0 discriminator 3
	addq	%rcx, %rax	# D.15047, D.15047
	movq	(%rax), %rcx	# *_1004, D.15048
	movl	-40(%rbp), %eax	# j, tmp3402
	andl	$2, %eax	#, D.15035
	testl	%eax, %eax	# D.15035
	je	.L751	#,
	.loc 1 3507 0 discriminator 1
	movl	-40(%rbp), %eax	# j, tmp3403
	orl	$1, %eax	#, D.15035
	cltq
	addq	%rax, %rax	# iftmp.175
	jmp	.L752	#
.L751:
	.loc 1 3507 0 discriminator 2
	movl	-40(%rbp), %eax	# j, tmp3404
	andl	$-2, %eax	#, D.15035
	cltq
	addq	%rax, %rax	# iftmp.175
.L752:
	.loc 1 3507 0 discriminator 3
	addq	%rcx, %rax	# D.15048, D.15048
	movzwl	(%rax), %eax	# *_1013, D.15049
	movw	%ax, (%rdx)	# D.15049, *_993
	.loc 1 3508 0 is_stmt 1 discriminator 3
	movq	-56(%rbp), %rax	# p, tmp3405
	movq	1608(%rax), %rax	# p_159(D)->ref_pic_id, D.15050
	addq	$8, %rax	#, D.15050
	movq	(%rax), %rax	# *_1016, D.15051
	movl	-44(%rbp), %edx	# i, tmp3406
	movslq	%edx, %rdx	# tmp3406, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15051
	movq	(%rax), %rax	# *_1020, D.15052
	movl	-40(%rbp), %edx	# j, tmp3407
	movslq	%edx, %rdx	# tmp3407, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rax, %rdx	# D.15052, D.15052
	movq	-24(%rbp), %rax	# fs, tmp3408
	movq	6496(%rax), %rax	# fs_1->ref_id, D.15050
	addq	$8, %rax	#, D.15050
	movq	(%rax), %rcx	# *_1026, D.15051
	movl	-44(%rbp), %eax	# i, tmp3409
	andl	$2, %eax	#, D.15035
	testl	%eax, %eax	# D.15035
	je	.L753	#,
	.loc 1 3508 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# i, tmp3410
	orl	$1, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.176
	jmp	.L754	#
.L753:
	.loc 1 3508 0 discriminator 2
	movl	-44(%rbp), %eax	# i, tmp3411
	andl	$-2, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.176
.L754:
	.loc 1 3508 0 discriminator 3
	addq	%rcx, %rax	# D.15051, D.15051
	movq	(%rax), %rcx	# *_1035, D.15052
	movl	-40(%rbp), %eax	# j, tmp3412
	andl	$2, %eax	#, D.15035
	testl	%eax, %eax	# D.15035
	je	.L755	#,
	.loc 1 3508 0 discriminator 1
	movl	-40(%rbp), %eax	# j, tmp3413
	orl	$1, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.177
	jmp	.L756	#
.L755:
	.loc 1 3508 0 discriminator 2
	movl	-40(%rbp), %eax	# j, tmp3414
	andl	$-2, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.177
.L756:
	.loc 1 3508 0 discriminator 3
	addq	%rcx, %rax	# D.15052, D.15052
	movq	(%rax), %rax	# *_1044, D.15053
	movq	%rax, (%rdx)	# D.15053, *_1024
.L748:
	.loc 1 3511 0 is_stmt 1
	movq	-24(%rbp), %rax	# fs, tmp3415
	movl	6376(%rax), %edx	# fs_1->is_long_term, D.15035
	movq	-56(%rbp), %rax	# p, tmp3416
	movl	%edx, 4864(%rax)	# D.15035, p_159(D)->is_long_term
	.loc 1 3513 0
	movq	img(%rip), %rax	# img, img.178
	movl	71996(%rax), %eax	# img.178_1047->direct_spatial_mv_pred_flag, D.15035
	cmpl	$1, %eax	#, D.15035
	jne	.L762	#,
	.loc 1 3515 0
	movq	-56(%rbp), %rax	# p, tmp3417
	movq	1624(%rax), %rax	# p_159(D)->moving_block, D.15040
	movl	-44(%rbp), %edx	# i, tmp3418
	movslq	%edx, %rdx	# tmp3418, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15040
	movq	(%rax), %rdx	# *_1052, D.15042
	movl	-40(%rbp), %eax	# j, tmp3419
	cltq
	leaq	(%rdx,%rax), %rcx	#, D.15042
	.loc 1 3516 0
	movq	-56(%rbp), %rax	# p, tmp3420
	movl	4864(%rax), %eax	# p_159(D)->is_long_term, D.15035
	testl	%eax, %eax	# D.15035
	jne	.L758	#,
	.loc 1 3516 0 is_stmt 0 discriminator 2
	movq	-56(%rbp), %rax	# p, tmp3421
	movq	1600(%rax), %rax	# p_159(D)->ref_idx, D.15046
	movq	(%rax), %rax	# *_1057, D.15047
	movl	-44(%rbp), %edx	# i, tmp3422
	movslq	%edx, %rdx	# tmp3422, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_1061, D.15048
	movl	-40(%rbp), %edx	# j, tmp3423
	movslq	%edx, %rdx	# tmp3423, D.15041
	addq	%rdx, %rdx	# D.15041
	addq	%rdx, %rax	# D.15041, D.15048
	movzwl	(%rax), %eax	# *_1065, D.15049
	testw	%ax, %ax	# D.15049
	jne	.L758	#,
	.loc 1 3517 0 is_stmt 1 discriminator 1
	movq	-56(%rbp), %rax	# p, tmp3424
	movq	1616(%rax), %rax	# p_159(D)->mv, D.15045
	movq	(%rax), %rax	# *_1067, D.15046
	movl	-44(%rbp), %edx	# i, tmp3425
	movslq	%edx, %rdx	# tmp3425, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15046
	movq	(%rax), %rax	# *_1071, D.15047
	movl	-40(%rbp), %edx	# j, tmp3426
	movslq	%edx, %rdx	# tmp3426, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_1075, D.15048
	movzwl	(%rax), %eax	# *_1076, D.15049
	cwtl
	cltd
	xorl	%edx, %eax	# tmp3427, D.15035
	subl	%edx, %eax	# tmp3427, D.15035
	sarl	%eax	# D.15035
	.loc 1 3516 0 discriminator 1
	testl	%eax, %eax	# D.15035
	jne	.L758	#,
	.loc 1 3518 0
	movq	-56(%rbp), %rax	# p, tmp3428
	movq	1616(%rax), %rax	# p_159(D)->mv, D.15045
	movq	(%rax), %rax	# *_1081, D.15046
	movl	-44(%rbp), %edx	# i, tmp3429
	movslq	%edx, %rdx	# tmp3429, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15046
	movq	(%rax), %rax	# *_1085, D.15047
	movl	-40(%rbp), %edx	# j, tmp3430
	movslq	%edx, %rdx	# tmp3430, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_1089, D.15048
	addq	$2, %rax	#, D.15048
	movzwl	(%rax), %eax	# *_1091, D.15049
	cwtl
	cltd
	xorl	%edx, %eax	# tmp3431, D.15035
	subl	%edx, %eax	# tmp3431, D.15035
	sarl	%eax	# D.15035
	.loc 1 3517 0
	testl	%eax, %eax	# D.15035
	je	.L759	#,
.L758:
	.loc 1 3519 0 discriminator 1
	movq	-56(%rbp), %rax	# p, tmp3432
	movq	1600(%rax), %rax	# p_159(D)->ref_idx, D.15046
	movq	(%rax), %rax	# *_1096, D.15047
	movl	-44(%rbp), %edx	# i, tmp3433
	movslq	%edx, %rdx	# tmp3433, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_1100, D.15048
	movl	-40(%rbp), %edx	# j, tmp3434
	movslq	%edx, %rdx	# tmp3434, D.15041
	addq	%rdx, %rdx	# D.15041
	addq	%rdx, %rax	# D.15041, D.15048
	movzwl	(%rax), %eax	# *_1104, D.15049
	.loc 1 3516 0 discriminator 1
	cmpw	$-1, %ax	#, D.15049
	jne	.L760	#,
	.loc 1 3520 0
	movq	-56(%rbp), %rax	# p, tmp3435
	movq	1600(%rax), %rax	# p_159(D)->ref_idx, D.15046
	addq	$8, %rax	#, D.15046
	movq	(%rax), %rax	# *_1107, D.15047
	movl	-44(%rbp), %edx	# i, tmp3436
	movslq	%edx, %rdx	# tmp3436, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_1111, D.15048
	movl	-40(%rbp), %edx	# j, tmp3437
	movslq	%edx, %rdx	# tmp3437, D.15041
	addq	%rdx, %rdx	# D.15041
	addq	%rdx, %rax	# D.15041, D.15048
	movzwl	(%rax), %eax	# *_1115, D.15049
	.loc 1 3519 0
	testw	%ax, %ax	# D.15049
	jne	.L760	#,
	.loc 1 3521 0
	movq	-56(%rbp), %rax	# p, tmp3438
	movq	1616(%rax), %rax	# p_159(D)->mv, D.15045
	addq	$8, %rax	#, D.15045
	movq	(%rax), %rax	# *_1118, D.15046
	movl	-44(%rbp), %edx	# i, tmp3439
	movslq	%edx, %rdx	# tmp3439, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15046
	movq	(%rax), %rax	# *_1122, D.15047
	movl	-40(%rbp), %edx	# j, tmp3440
	movslq	%edx, %rdx	# tmp3440, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_1126, D.15048
	movzwl	(%rax), %eax	# *_1127, D.15049
	cwtl
	cltd
	xorl	%edx, %eax	# tmp3441, D.15035
	subl	%edx, %eax	# tmp3441, D.15035
	sarl	%eax	# D.15035
	.loc 1 3520 0
	testl	%eax, %eax	# D.15035
	jne	.L760	#,
	.loc 1 3522 0
	movq	-56(%rbp), %rax	# p, tmp3442
	movq	1616(%rax), %rax	# p_159(D)->mv, D.15045
	addq	$8, %rax	#, D.15045
	movq	(%rax), %rax	# *_1133, D.15046
	movl	-44(%rbp), %edx	# i, tmp3443
	movslq	%edx, %rdx	# tmp3443, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15046
	movq	(%rax), %rax	# *_1137, D.15047
	movl	-40(%rbp), %edx	# j, tmp3444
	movslq	%edx, %rdx	# tmp3444, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_1141, D.15048
	addq	$2, %rax	#, D.15048
	movzwl	(%rax), %eax	# *_1143, D.15049
	cwtl
	cltd
	xorl	%edx, %eax	# tmp3445, D.15035
	subl	%edx, %eax	# tmp3445, D.15035
	sarl	%eax	# D.15035
	.loc 1 3521 0
	testl	%eax, %eax	# D.15035
	je	.L759	#,
.L760:
	.loc 1 3516 0 discriminator 3
	movl	$1, %eax	#, iftmp.179
	jmp	.L761	#
.L759:
	.loc 1 3516 0 is_stmt 0
	movl	$0, %eax	#, iftmp.179
.L761:
	.loc 1 3515 0 is_stmt 1
	movb	%al, (%rcx)	# D.15044, *_1055
	jmp	.L762	#
.L712:
	.loc 1 3527 0
	movq	-56(%rbp), %rax	# p, tmp3446
	movq	4848(%rax), %rax	# p_159(D)->bottom_mv, D.15045
	movq	(%rax), %rax	# *_1151, D.15046
	movl	-44(%rbp), %edx	# i, tmp3447
	movslq	%edx, %rdx	# tmp3447, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15046
	movq	(%rax), %rax	# *_1155, D.15047
	movl	-40(%rbp), %edx	# j, tmp3448
	movslq	%edx, %rdx	# tmp3448, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rdx	# *_1159, D.15048
	movq	-8(%rbp), %rax	# fs_bottom, tmp3449
	movq	6504(%rax), %rax	# fs_bottom_3->mv, D.15045
	movq	(%rax), %rcx	# *_1161, D.15046
	movl	-44(%rbp), %eax	# i, tmp3450
	andl	$2, %eax	#, D.15035
	testl	%eax, %eax	# D.15035
	je	.L763	#,
	.loc 1 3527 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# i, tmp3451
	orl	$1, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.180
	jmp	.L764	#
.L763:
	.loc 1 3527 0 discriminator 2
	movl	-44(%rbp), %eax	# i, tmp3452
	andl	$-2, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.180
.L764:
	.loc 1 3527 0 discriminator 3
	addq	%rcx, %rax	# D.15046, D.15046
	movq	(%rax), %rcx	# *_1170, D.15047
	movl	-40(%rbp), %eax	# j, tmp3453
	andl	$2, %eax	#, D.15035
	testl	%eax, %eax	# D.15035
	je	.L765	#,
	.loc 1 3527 0 discriminator 1
	movl	-40(%rbp), %eax	# j, tmp3454
	orl	$1, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.181
	jmp	.L766	#
.L765:
	.loc 1 3527 0 discriminator 2
	movl	-40(%rbp), %eax	# j, tmp3455
	andl	$-2, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.181
.L766:
	.loc 1 3527 0 discriminator 3
	addq	%rcx, %rax	# D.15047, D.15047
	movq	(%rax), %rax	# *_1179, D.15048
	movzwl	(%rax), %eax	# *_1180, D.15049
	movw	%ax, (%rdx)	# D.15049, *_1160
	.loc 1 3528 0 is_stmt 1 discriminator 3
	movq	-56(%rbp), %rax	# p, tmp3456
	movq	4848(%rax), %rax	# p_159(D)->bottom_mv, D.15045
	movq	(%rax), %rax	# *_1182, D.15046
	movl	-44(%rbp), %edx	# i, tmp3457
	movslq	%edx, %rdx	# tmp3457, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15046
	movq	(%rax), %rax	# *_1186, D.15047
	movl	-40(%rbp), %edx	# j, tmp3458
	movslq	%edx, %rdx	# tmp3458, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_1190, D.15048
	leaq	2(%rax), %rdx	#, D.15048
	movq	-8(%rbp), %rax	# fs_bottom, tmp3459
	movq	6504(%rax), %rax	# fs_bottom_3->mv, D.15045
	movq	(%rax), %rcx	# *_1193, D.15046
	movl	-44(%rbp), %eax	# i, tmp3460
	andl	$2, %eax	#, D.15035
	testl	%eax, %eax	# D.15035
	je	.L767	#,
	.loc 1 3528 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# i, tmp3461
	orl	$1, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.182
	jmp	.L768	#
.L767:
	.loc 1 3528 0 discriminator 2
	movl	-44(%rbp), %eax	# i, tmp3462
	andl	$-2, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.182
.L768:
	.loc 1 3528 0 discriminator 3
	addq	%rcx, %rax	# D.15046, D.15046
	movq	(%rax), %rcx	# *_1202, D.15047
	movl	-40(%rbp), %eax	# j, tmp3463
	andl	$2, %eax	#, D.15035
	testl	%eax, %eax	# D.15035
	je	.L769	#,
	.loc 1 3528 0 discriminator 1
	movl	-40(%rbp), %eax	# j, tmp3464
	orl	$1, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.183
	jmp	.L770	#
.L769:
	.loc 1 3528 0 discriminator 2
	movl	-40(%rbp), %eax	# j, tmp3465
	andl	$-2, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.183
.L770:
	.loc 1 3528 0 discriminator 3
	addq	%rcx, %rax	# D.15047, D.15047
	movq	(%rax), %rax	# *_1211, D.15048
	movzwl	2(%rax), %eax	# MEM[(short int *)_1212 + 2B], D.15049
	movw	%ax, (%rdx)	# D.15049, *_1192
	.loc 1 3529 0 is_stmt 1 discriminator 3
	movq	-56(%rbp), %rax	# p, tmp3466
	movq	4848(%rax), %rax	# p_159(D)->bottom_mv, D.15045
	addq	$8, %rax	#, D.15045
	movq	(%rax), %rax	# *_1215, D.15046
	movl	-44(%rbp), %edx	# i, tmp3467
	movslq	%edx, %rdx	# tmp3467, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15046
	movq	(%rax), %rax	# *_1219, D.15047
	movl	-40(%rbp), %edx	# j, tmp3468
	movslq	%edx, %rdx	# tmp3468, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rdx	# *_1223, D.15048
	movq	-8(%rbp), %rax	# fs_bottom, tmp3469
	movq	6504(%rax), %rax	# fs_bottom_3->mv, D.15045
	addq	$8, %rax	#, D.15045
	movq	(%rax), %rcx	# *_1226, D.15046
	movl	-44(%rbp), %eax	# i, tmp3470
	andl	$2, %eax	#, D.15035
	testl	%eax, %eax	# D.15035
	je	.L771	#,
	.loc 1 3529 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# i, tmp3471
	orl	$1, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.184
	jmp	.L772	#
.L771:
	.loc 1 3529 0 discriminator 2
	movl	-44(%rbp), %eax	# i, tmp3472
	andl	$-2, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.184
.L772:
	.loc 1 3529 0 discriminator 3
	addq	%rcx, %rax	# D.15046, D.15046
	movq	(%rax), %rcx	# *_1235, D.15047
	movl	-40(%rbp), %eax	# j, tmp3473
	andl	$2, %eax	#, D.15035
	testl	%eax, %eax	# D.15035
	je	.L773	#,
	.loc 1 3529 0 discriminator 1
	movl	-40(%rbp), %eax	# j, tmp3474
	orl	$1, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.185
	jmp	.L774	#
.L773:
	.loc 1 3529 0 discriminator 2
	movl	-40(%rbp), %eax	# j, tmp3475
	andl	$-2, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.185
.L774:
	.loc 1 3529 0 discriminator 3
	addq	%rcx, %rax	# D.15047, D.15047
	movq	(%rax), %rax	# *_1244, D.15048
	movzwl	(%rax), %eax	# *_1245, D.15049
	movw	%ax, (%rdx)	# D.15049, *_1224
	.loc 1 3530 0 is_stmt 1 discriminator 3
	movq	-56(%rbp), %rax	# p, tmp3476
	movq	4848(%rax), %rax	# p_159(D)->bottom_mv, D.15045
	addq	$8, %rax	#, D.15045
	movq	(%rax), %rax	# *_1248, D.15046
	movl	-44(%rbp), %edx	# i, tmp3477
	movslq	%edx, %rdx	# tmp3477, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15046
	movq	(%rax), %rax	# *_1252, D.15047
	movl	-40(%rbp), %edx	# j, tmp3478
	movslq	%edx, %rdx	# tmp3478, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_1256, D.15048
	leaq	2(%rax), %rdx	#, D.15048
	movq	-8(%rbp), %rax	# fs_bottom, tmp3479
	movq	6504(%rax), %rax	# fs_bottom_3->mv, D.15045
	addq	$8, %rax	#, D.15045
	movq	(%rax), %rcx	# *_1260, D.15046
	movl	-44(%rbp), %eax	# i, tmp3480
	andl	$2, %eax	#, D.15035
	testl	%eax, %eax	# D.15035
	je	.L775	#,
	.loc 1 3530 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# i, tmp3481
	orl	$1, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.186
	jmp	.L776	#
.L775:
	.loc 1 3530 0 discriminator 2
	movl	-44(%rbp), %eax	# i, tmp3482
	andl	$-2, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.186
.L776:
	.loc 1 3530 0 discriminator 3
	addq	%rcx, %rax	# D.15046, D.15046
	movq	(%rax), %rcx	# *_1269, D.15047
	movl	-40(%rbp), %eax	# j, tmp3483
	andl	$2, %eax	#, D.15035
	testl	%eax, %eax	# D.15035
	je	.L777	#,
	.loc 1 3530 0 discriminator 1
	movl	-40(%rbp), %eax	# j, tmp3484
	orl	$1, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.187
	jmp	.L778	#
.L777:
	.loc 1 3530 0 discriminator 2
	movl	-40(%rbp), %eax	# j, tmp3485
	andl	$-2, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.187
.L778:
	.loc 1 3530 0 discriminator 3
	addq	%rcx, %rax	# D.15047, D.15047
	movq	(%rax), %rax	# *_1278, D.15048
	movzwl	2(%rax), %eax	# MEM[(short int *)_1279 + 2B], D.15049
	movw	%ax, (%rdx)	# D.15049, *_1258
	.loc 1 3531 0 is_stmt 1 discriminator 3
	movq	-56(%rbp), %rax	# p, tmp3486
	movq	4832(%rax), %rax	# p_159(D)->bottom_ref_idx, D.15046
	movq	(%rax), %rax	# *_1281, D.15047
	movl	-44(%rbp), %edx	# i, tmp3487
	movslq	%edx, %rdx	# tmp3487, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_1285, D.15048
	movl	-40(%rbp), %edx	# j, tmp3488
	movslq	%edx, %rdx	# tmp3488, D.15041
	addq	%rdx, %rdx	# D.15041
	addq	%rax, %rdx	# D.15048, D.15048
	movq	-8(%rbp), %rax	# fs_bottom, tmp3489
	movq	6480(%rax), %rax	# fs_bottom_3->ref_idx, D.15046
	movq	(%rax), %rcx	# *_1290, D.15047
	movl	-44(%rbp), %eax	# i, tmp3490
	andl	$2, %eax	#, D.15035
	testl	%eax, %eax	# D.15035
	je	.L779	#,
	.loc 1 3531 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# i, tmp3491
	orl	$1, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.188
	jmp	.L780	#
.L779:
	.loc 1 3531 0 discriminator 2
	movl	-44(%rbp), %eax	# i, tmp3492
	andl	$-2, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.188
.L780:
	.loc 1 3531 0 discriminator 3
	addq	%rcx, %rax	# D.15047, D.15047
	movq	(%rax), %rcx	# *_1299, D.15048
	movl	-40(%rbp), %eax	# j, tmp3493
	andl	$2, %eax	#, D.15035
	testl	%eax, %eax	# D.15035
	je	.L781	#,
	.loc 1 3531 0 discriminator 1
	movl	-40(%rbp), %eax	# j, tmp3494
	orl	$1, %eax	#, D.15035
	cltq
	addq	%rax, %rax	# iftmp.189
	jmp	.L782	#
.L781:
	.loc 1 3531 0 discriminator 2
	movl	-40(%rbp), %eax	# j, tmp3495
	andl	$-2, %eax	#, D.15035
	cltq
	addq	%rax, %rax	# iftmp.189
.L782:
	.loc 1 3531 0 discriminator 3
	addq	%rcx, %rax	# D.15048, D.15048
	movzwl	(%rax), %eax	# *_1308, D.15049
	movw	%ax, (%rdx)	# D.15049, *_1289
	.loc 1 3532 0 is_stmt 1 discriminator 3
	movq	-56(%rbp), %rax	# p, tmp3496
	movq	4832(%rax), %rax	# p_159(D)->bottom_ref_idx, D.15046
	addq	$8, %rax	#, D.15046
	movq	(%rax), %rax	# *_1311, D.15047
	movl	-44(%rbp), %edx	# i, tmp3497
	movslq	%edx, %rdx	# tmp3497, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_1315, D.15048
	movl	-40(%rbp), %edx	# j, tmp3498
	movslq	%edx, %rdx	# tmp3498, D.15041
	addq	%rdx, %rdx	# D.15041
	addq	%rax, %rdx	# D.15048, D.15048
	movq	-8(%rbp), %rax	# fs_bottom, tmp3499
	movq	6480(%rax), %rax	# fs_bottom_3->ref_idx, D.15046
	addq	$8, %rax	#, D.15046
	movq	(%rax), %rcx	# *_1321, D.15047
	movl	-44(%rbp), %eax	# i, tmp3500
	andl	$2, %eax	#, D.15035
	testl	%eax, %eax	# D.15035
	je	.L783	#,
	.loc 1 3532 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# i, tmp3501
	orl	$1, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.190
	jmp	.L784	#
.L783:
	.loc 1 3532 0 discriminator 2
	movl	-44(%rbp), %eax	# i, tmp3502
	andl	$-2, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.190
.L784:
	.loc 1 3532 0 discriminator 3
	addq	%rcx, %rax	# D.15047, D.15047
	movq	(%rax), %rcx	# *_1330, D.15048
	movl	-40(%rbp), %eax	# j, tmp3503
	andl	$2, %eax	#, D.15035
	testl	%eax, %eax	# D.15035
	je	.L785	#,
	.loc 1 3532 0 discriminator 1
	movl	-40(%rbp), %eax	# j, tmp3504
	orl	$1, %eax	#, D.15035
	cltq
	addq	%rax, %rax	# iftmp.191
	jmp	.L786	#
.L785:
	.loc 1 3532 0 discriminator 2
	movl	-40(%rbp), %eax	# j, tmp3505
	andl	$-2, %eax	#, D.15035
	cltq
	addq	%rax, %rax	# iftmp.191
.L786:
	.loc 1 3532 0 discriminator 3
	addq	%rcx, %rax	# D.15048, D.15048
	movzwl	(%rax), %eax	# *_1339, D.15049
	movw	%ax, (%rdx)	# D.15049, *_1319
	.loc 1 3533 0 is_stmt 1 discriminator 3
	movq	-56(%rbp), %rax	# p, tmp3506
	movq	4840(%rax), %rax	# p_159(D)->bottom_ref_pic_id, D.15050
	movq	(%rax), %rax	# *_1341, D.15051
	movl	-44(%rbp), %edx	# i, tmp3507
	movslq	%edx, %rdx	# tmp3507, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15051
	movq	(%rax), %rax	# *_1345, D.15052
	movl	-40(%rbp), %edx	# j, tmp3508
	movslq	%edx, %rdx	# tmp3508, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rax, %rdx	# D.15052, D.15052
	movq	-8(%rbp), %rax	# fs_bottom, tmp3509
	movq	6496(%rax), %rax	# fs_bottom_3->ref_id, D.15050
	movq	(%rax), %rcx	# *_1350, D.15051
	movl	-44(%rbp), %eax	# i, tmp3510
	andl	$2, %eax	#, D.15035
	testl	%eax, %eax	# D.15035
	je	.L787	#,
	.loc 1 3533 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# i, tmp3511
	orl	$1, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.192
	jmp	.L788	#
.L787:
	.loc 1 3533 0 discriminator 2
	movl	-44(%rbp), %eax	# i, tmp3512
	andl	$-2, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.192
.L788:
	.loc 1 3533 0 discriminator 3
	addq	%rcx, %rax	# D.15051, D.15051
	movq	(%rax), %rcx	# *_1359, D.15052
	movl	-40(%rbp), %eax	# j, tmp3513
	andl	$2, %eax	#, D.15035
	testl	%eax, %eax	# D.15035
	je	.L789	#,
	.loc 1 3533 0 discriminator 1
	movl	-40(%rbp), %eax	# j, tmp3514
	orl	$1, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.193
	jmp	.L790	#
.L789:
	.loc 1 3533 0 discriminator 2
	movl	-40(%rbp), %eax	# j, tmp3515
	andl	$-2, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.193
.L790:
	.loc 1 3533 0 discriminator 3
	addq	%rcx, %rax	# D.15052, D.15052
	movq	(%rax), %rax	# *_1368, D.15053
	movq	%rax, (%rdx)	# D.15053, *_1349
	.loc 1 3534 0 is_stmt 1 discriminator 3
	movq	-56(%rbp), %rax	# p, tmp3516
	movq	4840(%rax), %rax	# p_159(D)->bottom_ref_pic_id, D.15050
	addq	$8, %rax	#, D.15050
	movq	(%rax), %rax	# *_1371, D.15051
	movl	-44(%rbp), %edx	# i, tmp3517
	movslq	%edx, %rdx	# tmp3517, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15051
	movq	(%rax), %rax	# *_1375, D.15052
	movl	-40(%rbp), %edx	# j, tmp3518
	movslq	%edx, %rdx	# tmp3518, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rax, %rdx	# D.15052, D.15052
	movq	-8(%rbp), %rax	# fs_bottom, tmp3519
	movq	6496(%rax), %rax	# fs_bottom_3->ref_id, D.15050
	addq	$8, %rax	#, D.15050
	movq	(%rax), %rcx	# *_1381, D.15051
	movl	-44(%rbp), %eax	# i, tmp3520
	andl	$2, %eax	#, D.15035
	testl	%eax, %eax	# D.15035
	je	.L791	#,
	.loc 1 3534 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# i, tmp3521
	orl	$1, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.194
	jmp	.L792	#
.L791:
	.loc 1 3534 0 discriminator 2
	movl	-44(%rbp), %eax	# i, tmp3522
	andl	$-2, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.194
.L792:
	.loc 1 3534 0 discriminator 3
	addq	%rcx, %rax	# D.15051, D.15051
	movq	(%rax), %rcx	# *_1390, D.15052
	movl	-40(%rbp), %eax	# j, tmp3523
	andl	$2, %eax	#, D.15035
	testl	%eax, %eax	# D.15035
	je	.L793	#,
	.loc 1 3534 0 discriminator 1
	movl	-40(%rbp), %eax	# j, tmp3524
	orl	$1, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.195
	jmp	.L794	#
.L793:
	.loc 1 3534 0 discriminator 2
	movl	-40(%rbp), %eax	# j, tmp3525
	andl	$-2, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.195
.L794:
	.loc 1 3534 0 discriminator 3
	addq	%rcx, %rax	# D.15052, D.15052
	movq	(%rax), %rax	# *_1399, D.15053
	movq	%rax, (%rdx)	# D.15053, *_1379
	.loc 1 3536 0 is_stmt 1 discriminator 3
	movq	img(%rip), %rax	# img, img.196
	movl	71996(%rax), %eax	# img.196_1401->direct_spatial_mv_pred_flag, D.15035
	cmpl	$1, %eax	#, D.15035
	jne	.L795	#,
	.loc 1 3538 0
	movq	-56(%rbp), %rax	# p, tmp3526
	movq	4856(%rax), %rax	# p_159(D)->bottom_moving_block, D.15040
	movl	-44(%rbp), %edx	# i, tmp3527
	movslq	%edx, %rdx	# tmp3527, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15040
	movq	(%rax), %rdx	# *_1406, D.15042
	movl	-40(%rbp), %eax	# j, tmp3528
	cltq
	leaq	(%rdx,%rax), %rcx	#, D.15042
	.loc 1 3539 0
	movq	-8(%rbp), %rax	# fs_bottom, tmp3529
	movl	6376(%rax), %eax	# fs_bottom_3->is_long_term, D.15035
	testl	%eax, %eax	# D.15035
	jne	.L796	#,
	.loc 1 3539 0 is_stmt 0 discriminator 2
	movq	-56(%rbp), %rax	# p, tmp3530
	movq	4832(%rax), %rax	# p_159(D)->bottom_ref_idx, D.15046
	movq	(%rax), %rax	# *_1411, D.15047
	movl	-44(%rbp), %edx	# i, tmp3531
	movslq	%edx, %rdx	# tmp3531, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_1415, D.15048
	movl	-40(%rbp), %edx	# j, tmp3532
	movslq	%edx, %rdx	# tmp3532, D.15041
	addq	%rdx, %rdx	# D.15041
	addq	%rdx, %rax	# D.15041, D.15048
	movzwl	(%rax), %eax	# *_1419, D.15049
	testw	%ax, %ax	# D.15049
	jne	.L796	#,
	.loc 1 3540 0 is_stmt 1 discriminator 1
	movq	-56(%rbp), %rax	# p, tmp3533
	movq	4848(%rax), %rax	# p_159(D)->bottom_mv, D.15045
	movq	(%rax), %rax	# *_1421, D.15046
	movl	-44(%rbp), %edx	# i, tmp3534
	movslq	%edx, %rdx	# tmp3534, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15046
	movq	(%rax), %rax	# *_1425, D.15047
	movl	-40(%rbp), %edx	# j, tmp3535
	movslq	%edx, %rdx	# tmp3535, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_1429, D.15048
	movzwl	(%rax), %eax	# *_1430, D.15049
	cwtl
	cltd
	xorl	%edx, %eax	# tmp3536, D.15035
	subl	%edx, %eax	# tmp3536, D.15035
	sarl	%eax	# D.15035
	.loc 1 3539 0 discriminator 1
	testl	%eax, %eax	# D.15035
	jne	.L796	#,
	.loc 1 3541 0
	movq	-56(%rbp), %rax	# p, tmp3537
	movq	4848(%rax), %rax	# p_159(D)->bottom_mv, D.15045
	movq	(%rax), %rax	# *_1435, D.15046
	movl	-44(%rbp), %edx	# i, tmp3538
	movslq	%edx, %rdx	# tmp3538, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15046
	movq	(%rax), %rax	# *_1439, D.15047
	movl	-40(%rbp), %edx	# j, tmp3539
	movslq	%edx, %rdx	# tmp3539, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_1443, D.15048
	addq	$2, %rax	#, D.15048
	movzwl	(%rax), %eax	# *_1445, D.15049
	cwtl
	cltd
	xorl	%edx, %eax	# tmp3540, D.15035
	subl	%edx, %eax	# tmp3540, D.15035
	sarl	%eax	# D.15035
	.loc 1 3540 0
	testl	%eax, %eax	# D.15035
	je	.L797	#,
.L796:
	.loc 1 3542 0 discriminator 1
	movq	-56(%rbp), %rax	# p, tmp3541
	movq	4832(%rax), %rax	# p_159(D)->bottom_ref_idx, D.15046
	movq	(%rax), %rax	# *_1450, D.15047
	movl	-44(%rbp), %edx	# i, tmp3542
	movslq	%edx, %rdx	# tmp3542, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_1454, D.15048
	movl	-40(%rbp), %edx	# j, tmp3543
	movslq	%edx, %rdx	# tmp3543, D.15041
	addq	%rdx, %rdx	# D.15041
	addq	%rdx, %rax	# D.15041, D.15048
	movzwl	(%rax), %eax	# *_1458, D.15049
	.loc 1 3539 0 discriminator 1
	cmpw	$-1, %ax	#, D.15049
	jne	.L798	#,
	.loc 1 3543 0
	movq	-56(%rbp), %rax	# p, tmp3544
	movq	4832(%rax), %rax	# p_159(D)->bottom_ref_idx, D.15046
	addq	$8, %rax	#, D.15046
	movq	(%rax), %rax	# *_1461, D.15047
	movl	-44(%rbp), %edx	# i, tmp3545
	movslq	%edx, %rdx	# tmp3545, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_1465, D.15048
	movl	-40(%rbp), %edx	# j, tmp3546
	movslq	%edx, %rdx	# tmp3546, D.15041
	addq	%rdx, %rdx	# D.15041
	addq	%rdx, %rax	# D.15041, D.15048
	movzwl	(%rax), %eax	# *_1469, D.15049
	.loc 1 3542 0
	testw	%ax, %ax	# D.15049
	jne	.L798	#,
	.loc 1 3544 0
	movq	-56(%rbp), %rax	# p, tmp3547
	movq	4848(%rax), %rax	# p_159(D)->bottom_mv, D.15045
	addq	$8, %rax	#, D.15045
	movq	(%rax), %rax	# *_1472, D.15046
	movl	-44(%rbp), %edx	# i, tmp3548
	movslq	%edx, %rdx	# tmp3548, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15046
	movq	(%rax), %rax	# *_1476, D.15047
	movl	-40(%rbp), %edx	# j, tmp3549
	movslq	%edx, %rdx	# tmp3549, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_1480, D.15048
	movzwl	(%rax), %eax	# *_1481, D.15049
	cwtl
	cltd
	xorl	%edx, %eax	# tmp3550, D.15035
	subl	%edx, %eax	# tmp3550, D.15035
	sarl	%eax	# D.15035
	.loc 1 3543 0
	testl	%eax, %eax	# D.15035
	jne	.L798	#,
	.loc 1 3545 0
	movq	-56(%rbp), %rax	# p, tmp3551
	movq	4848(%rax), %rax	# p_159(D)->bottom_mv, D.15045
	addq	$8, %rax	#, D.15045
	movq	(%rax), %rax	# *_1487, D.15046
	movl	-44(%rbp), %edx	# i, tmp3552
	movslq	%edx, %rdx	# tmp3552, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15046
	movq	(%rax), %rax	# *_1491, D.15047
	movl	-40(%rbp), %edx	# j, tmp3553
	movslq	%edx, %rdx	# tmp3553, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_1495, D.15048
	addq	$2, %rax	#, D.15048
	movzwl	(%rax), %eax	# *_1497, D.15049
	cwtl
	cltd
	xorl	%edx, %eax	# tmp3554, D.15035
	subl	%edx, %eax	# tmp3554, D.15035
	sarl	%eax	# D.15035
	.loc 1 3544 0
	testl	%eax, %eax	# D.15035
	je	.L797	#,
.L798:
	.loc 1 3539 0 discriminator 3
	movl	$1, %eax	#, iftmp.197
	jmp	.L799	#
.L797:
	.loc 1 3539 0 is_stmt 0
	movl	$0, %eax	#, iftmp.197
.L799:
	.loc 1 3538 0 is_stmt 1
	movb	%al, (%rcx)	# D.15044, *_1409
.L795:
	.loc 1 3548 0
	movq	-56(%rbp), %rax	# p, tmp3555
	movq	3232(%rax), %rax	# p_159(D)->top_mv, D.15045
	movq	(%rax), %rax	# *_1505, D.15046
	movl	-44(%rbp), %edx	# i, tmp3556
	movslq	%edx, %rdx	# tmp3556, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15046
	movq	(%rax), %rax	# *_1509, D.15047
	movl	-40(%rbp), %edx	# j, tmp3557
	movslq	%edx, %rdx	# tmp3557, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rdx	# *_1513, D.15048
	movq	-16(%rbp), %rax	# fs_top, tmp3558
	movq	6504(%rax), %rax	# fs_top_2->mv, D.15045
	movq	(%rax), %rcx	# *_1515, D.15046
	movl	-44(%rbp), %eax	# i, tmp3559
	andl	$2, %eax	#, D.15035
	testl	%eax, %eax	# D.15035
	je	.L800	#,
	.loc 1 3548 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# i, tmp3560
	orl	$1, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.198
	jmp	.L801	#
.L800:
	.loc 1 3548 0 discriminator 2
	movl	-44(%rbp), %eax	# i, tmp3561
	andl	$-2, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.198
.L801:
	.loc 1 3548 0 discriminator 3
	addq	%rcx, %rax	# D.15046, D.15046
	movq	(%rax), %rcx	# *_1524, D.15047
	movl	-40(%rbp), %eax	# j, tmp3562
	andl	$2, %eax	#, D.15035
	testl	%eax, %eax	# D.15035
	je	.L802	#,
	.loc 1 3548 0 discriminator 1
	movl	-40(%rbp), %eax	# j, tmp3563
	orl	$1, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.199
	jmp	.L803	#
.L802:
	.loc 1 3548 0 discriminator 2
	movl	-40(%rbp), %eax	# j, tmp3564
	andl	$-2, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.199
.L803:
	.loc 1 3548 0 discriminator 3
	addq	%rcx, %rax	# D.15047, D.15047
	movq	(%rax), %rax	# *_1533, D.15048
	movzwl	(%rax), %eax	# *_1534, D.15049
	movw	%ax, (%rdx)	# D.15049, *_1514
	.loc 1 3549 0 is_stmt 1 discriminator 3
	movq	-56(%rbp), %rax	# p, tmp3565
	movq	3232(%rax), %rax	# p_159(D)->top_mv, D.15045
	movq	(%rax), %rax	# *_1536, D.15046
	movl	-44(%rbp), %edx	# i, tmp3566
	movslq	%edx, %rdx	# tmp3566, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15046
	movq	(%rax), %rax	# *_1540, D.15047
	movl	-40(%rbp), %edx	# j, tmp3567
	movslq	%edx, %rdx	# tmp3567, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_1544, D.15048
	leaq	2(%rax), %rdx	#, D.15048
	movq	-16(%rbp), %rax	# fs_top, tmp3568
	movq	6504(%rax), %rax	# fs_top_2->mv, D.15045
	movq	(%rax), %rcx	# *_1547, D.15046
	movl	-44(%rbp), %eax	# i, tmp3569
	andl	$2, %eax	#, D.15035
	testl	%eax, %eax	# D.15035
	je	.L804	#,
	.loc 1 3549 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# i, tmp3570
	orl	$1, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.200
	jmp	.L805	#
.L804:
	.loc 1 3549 0 discriminator 2
	movl	-44(%rbp), %eax	# i, tmp3571
	andl	$-2, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.200
.L805:
	.loc 1 3549 0 discriminator 3
	addq	%rcx, %rax	# D.15046, D.15046
	movq	(%rax), %rcx	# *_1556, D.15047
	movl	-40(%rbp), %eax	# j, tmp3572
	andl	$2, %eax	#, D.15035
	testl	%eax, %eax	# D.15035
	je	.L806	#,
	.loc 1 3549 0 discriminator 1
	movl	-40(%rbp), %eax	# j, tmp3573
	orl	$1, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.201
	jmp	.L807	#
.L806:
	.loc 1 3549 0 discriminator 2
	movl	-40(%rbp), %eax	# j, tmp3574
	andl	$-2, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.201
.L807:
	.loc 1 3549 0 discriminator 3
	addq	%rcx, %rax	# D.15047, D.15047
	movq	(%rax), %rax	# *_1565, D.15048
	movzwl	2(%rax), %eax	# MEM[(short int *)_1566 + 2B], D.15049
	movw	%ax, (%rdx)	# D.15049, *_1546
	.loc 1 3550 0 is_stmt 1 discriminator 3
	movq	-56(%rbp), %rax	# p, tmp3575
	movq	3232(%rax), %rax	# p_159(D)->top_mv, D.15045
	addq	$8, %rax	#, D.15045
	movq	(%rax), %rax	# *_1569, D.15046
	movl	-44(%rbp), %edx	# i, tmp3576
	movslq	%edx, %rdx	# tmp3576, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15046
	movq	(%rax), %rax	# *_1573, D.15047
	movl	-40(%rbp), %edx	# j, tmp3577
	movslq	%edx, %rdx	# tmp3577, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rdx	# *_1577, D.15048
	movq	-16(%rbp), %rax	# fs_top, tmp3578
	movq	6504(%rax), %rax	# fs_top_2->mv, D.15045
	addq	$8, %rax	#, D.15045
	movq	(%rax), %rcx	# *_1580, D.15046
	movl	-44(%rbp), %eax	# i, tmp3579
	andl	$2, %eax	#, D.15035
	testl	%eax, %eax	# D.15035
	je	.L808	#,
	.loc 1 3550 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# i, tmp3580
	orl	$1, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.202
	jmp	.L809	#
.L808:
	.loc 1 3550 0 discriminator 2
	movl	-44(%rbp), %eax	# i, tmp3581
	andl	$-2, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.202
.L809:
	.loc 1 3550 0 discriminator 3
	addq	%rcx, %rax	# D.15046, D.15046
	movq	(%rax), %rcx	# *_1589, D.15047
	movl	-40(%rbp), %eax	# j, tmp3582
	andl	$2, %eax	#, D.15035
	testl	%eax, %eax	# D.15035
	je	.L810	#,
	.loc 1 3550 0 discriminator 1
	movl	-40(%rbp), %eax	# j, tmp3583
	orl	$1, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.203
	jmp	.L811	#
.L810:
	.loc 1 3550 0 discriminator 2
	movl	-40(%rbp), %eax	# j, tmp3584
	andl	$-2, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.203
.L811:
	.loc 1 3550 0 discriminator 3
	addq	%rcx, %rax	# D.15047, D.15047
	movq	(%rax), %rax	# *_1598, D.15048
	movzwl	(%rax), %eax	# *_1599, D.15049
	movw	%ax, (%rdx)	# D.15049, *_1578
	.loc 1 3551 0 is_stmt 1 discriminator 3
	movq	-56(%rbp), %rax	# p, tmp3585
	movq	3232(%rax), %rax	# p_159(D)->top_mv, D.15045
	addq	$8, %rax	#, D.15045
	movq	(%rax), %rax	# *_1602, D.15046
	movl	-44(%rbp), %edx	# i, tmp3586
	movslq	%edx, %rdx	# tmp3586, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15046
	movq	(%rax), %rax	# *_1606, D.15047
	movl	-40(%rbp), %edx	# j, tmp3587
	movslq	%edx, %rdx	# tmp3587, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_1610, D.15048
	leaq	2(%rax), %rdx	#, D.15048
	movq	-16(%rbp), %rax	# fs_top, tmp3588
	movq	6504(%rax), %rax	# fs_top_2->mv, D.15045
	addq	$8, %rax	#, D.15045
	movq	(%rax), %rcx	# *_1614, D.15046
	movl	-44(%rbp), %eax	# i, tmp3589
	andl	$2, %eax	#, D.15035
	testl	%eax, %eax	# D.15035
	je	.L812	#,
	.loc 1 3551 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# i, tmp3590
	orl	$1, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.204
	jmp	.L813	#
.L812:
	.loc 1 3551 0 discriminator 2
	movl	-44(%rbp), %eax	# i, tmp3591
	andl	$-2, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.204
.L813:
	.loc 1 3551 0 discriminator 3
	addq	%rcx, %rax	# D.15046, D.15046
	movq	(%rax), %rcx	# *_1623, D.15047
	movl	-40(%rbp), %eax	# j, tmp3592
	andl	$2, %eax	#, D.15035
	testl	%eax, %eax	# D.15035
	je	.L814	#,
	.loc 1 3551 0 discriminator 1
	movl	-40(%rbp), %eax	# j, tmp3593
	orl	$1, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.205
	jmp	.L815	#
.L814:
	.loc 1 3551 0 discriminator 2
	movl	-40(%rbp), %eax	# j, tmp3594
	andl	$-2, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.205
.L815:
	.loc 1 3551 0 discriminator 3
	addq	%rcx, %rax	# D.15047, D.15047
	movq	(%rax), %rax	# *_1632, D.15048
	movzwl	2(%rax), %eax	# MEM[(short int *)_1633 + 2B], D.15049
	movw	%ax, (%rdx)	# D.15049, *_1612
	.loc 1 3552 0 is_stmt 1 discriminator 3
	movq	-56(%rbp), %rax	# p, tmp3595
	movq	3216(%rax), %rax	# p_159(D)->top_ref_idx, D.15046
	movq	(%rax), %rax	# *_1635, D.15047
	movl	-44(%rbp), %edx	# i, tmp3596
	movslq	%edx, %rdx	# tmp3596, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_1639, D.15048
	movl	-40(%rbp), %edx	# j, tmp3597
	movslq	%edx, %rdx	# tmp3597, D.15041
	addq	%rdx, %rdx	# D.15041
	addq	%rax, %rdx	# D.15048, D.15048
	movq	-16(%rbp), %rax	# fs_top, tmp3598
	movq	6480(%rax), %rax	# fs_top_2->ref_idx, D.15046
	movq	(%rax), %rcx	# *_1644, D.15047
	movl	-44(%rbp), %eax	# i, tmp3599
	andl	$2, %eax	#, D.15035
	testl	%eax, %eax	# D.15035
	je	.L816	#,
	.loc 1 3552 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# i, tmp3600
	orl	$1, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.206
	jmp	.L817	#
.L816:
	.loc 1 3552 0 discriminator 2
	movl	-44(%rbp), %eax	# i, tmp3601
	andl	$-2, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.206
.L817:
	.loc 1 3552 0 discriminator 3
	addq	%rcx, %rax	# D.15047, D.15047
	movq	(%rax), %rcx	# *_1653, D.15048
	movl	-40(%rbp), %eax	# j, tmp3602
	andl	$2, %eax	#, D.15035
	testl	%eax, %eax	# D.15035
	je	.L818	#,
	.loc 1 3552 0 discriminator 1
	movl	-40(%rbp), %eax	# j, tmp3603
	orl	$1, %eax	#, D.15035
	cltq
	addq	%rax, %rax	# iftmp.207
	jmp	.L819	#
.L818:
	.loc 1 3552 0 discriminator 2
	movl	-40(%rbp), %eax	# j, tmp3604
	andl	$-2, %eax	#, D.15035
	cltq
	addq	%rax, %rax	# iftmp.207
.L819:
	.loc 1 3552 0 discriminator 3
	addq	%rcx, %rax	# D.15048, D.15048
	movzwl	(%rax), %eax	# *_1662, D.15049
	movw	%ax, (%rdx)	# D.15049, *_1643
	.loc 1 3553 0 is_stmt 1 discriminator 3
	movq	-56(%rbp), %rax	# p, tmp3605
	movq	3216(%rax), %rax	# p_159(D)->top_ref_idx, D.15046
	addq	$8, %rax	#, D.15046
	movq	(%rax), %rax	# *_1665, D.15047
	movl	-44(%rbp), %edx	# i, tmp3606
	movslq	%edx, %rdx	# tmp3606, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_1669, D.15048
	movl	-40(%rbp), %edx	# j, tmp3607
	movslq	%edx, %rdx	# tmp3607, D.15041
	addq	%rdx, %rdx	# D.15041
	addq	%rax, %rdx	# D.15048, D.15048
	movq	-16(%rbp), %rax	# fs_top, tmp3608
	movq	6480(%rax), %rax	# fs_top_2->ref_idx, D.15046
	addq	$8, %rax	#, D.15046
	movq	(%rax), %rcx	# *_1675, D.15047
	movl	-44(%rbp), %eax	# i, tmp3609
	andl	$2, %eax	#, D.15035
	testl	%eax, %eax	# D.15035
	je	.L820	#,
	.loc 1 3553 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# i, tmp3610
	orl	$1, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.208
	jmp	.L821	#
.L820:
	.loc 1 3553 0 discriminator 2
	movl	-44(%rbp), %eax	# i, tmp3611
	andl	$-2, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.208
.L821:
	.loc 1 3553 0 discriminator 3
	addq	%rcx, %rax	# D.15047, D.15047
	movq	(%rax), %rcx	# *_1684, D.15048
	movl	-40(%rbp), %eax	# j, tmp3612
	andl	$2, %eax	#, D.15035
	testl	%eax, %eax	# D.15035
	je	.L822	#,
	.loc 1 3553 0 discriminator 1
	movl	-40(%rbp), %eax	# j, tmp3613
	orl	$1, %eax	#, D.15035
	cltq
	addq	%rax, %rax	# iftmp.209
	jmp	.L823	#
.L822:
	.loc 1 3553 0 discriminator 2
	movl	-40(%rbp), %eax	# j, tmp3614
	andl	$-2, %eax	#, D.15035
	cltq
	addq	%rax, %rax	# iftmp.209
.L823:
	.loc 1 3553 0 discriminator 3
	addq	%rcx, %rax	# D.15048, D.15048
	movzwl	(%rax), %eax	# *_1693, D.15049
	movw	%ax, (%rdx)	# D.15049, *_1673
	.loc 1 3554 0 is_stmt 1 discriminator 3
	movq	-56(%rbp), %rax	# p, tmp3615
	movq	3224(%rax), %rax	# p_159(D)->top_ref_pic_id, D.15050
	movq	(%rax), %rax	# *_1695, D.15051
	movl	-44(%rbp), %edx	# i, tmp3616
	movslq	%edx, %rdx	# tmp3616, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15051
	movq	(%rax), %rax	# *_1699, D.15052
	movl	-40(%rbp), %edx	# j, tmp3617
	movslq	%edx, %rdx	# tmp3617, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rax, %rdx	# D.15052, D.15052
	movq	-16(%rbp), %rax	# fs_top, tmp3618
	movq	6496(%rax), %rax	# fs_top_2->ref_id, D.15050
	movq	(%rax), %rcx	# *_1704, D.15051
	movl	-44(%rbp), %eax	# i, tmp3619
	andl	$2, %eax	#, D.15035
	testl	%eax, %eax	# D.15035
	je	.L824	#,
	.loc 1 3554 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# i, tmp3620
	orl	$1, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.210
	jmp	.L825	#
.L824:
	.loc 1 3554 0 discriminator 2
	movl	-44(%rbp), %eax	# i, tmp3621
	andl	$-2, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.210
.L825:
	.loc 1 3554 0 discriminator 3
	addq	%rcx, %rax	# D.15051, D.15051
	movq	(%rax), %rcx	# *_1713, D.15052
	movl	-40(%rbp), %eax	# j, tmp3622
	andl	$2, %eax	#, D.15035
	testl	%eax, %eax	# D.15035
	je	.L826	#,
	.loc 1 3554 0 discriminator 1
	movl	-40(%rbp), %eax	# j, tmp3623
	orl	$1, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.211
	jmp	.L827	#
.L826:
	.loc 1 3554 0 discriminator 2
	movl	-40(%rbp), %eax	# j, tmp3624
	andl	$-2, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.211
.L827:
	.loc 1 3554 0 discriminator 3
	addq	%rcx, %rax	# D.15052, D.15052
	movq	(%rax), %rax	# *_1722, D.15053
	movq	%rax, (%rdx)	# D.15053, *_1703
	.loc 1 3555 0 is_stmt 1 discriminator 3
	movq	-56(%rbp), %rax	# p, tmp3625
	movq	3224(%rax), %rax	# p_159(D)->top_ref_pic_id, D.15050
	addq	$8, %rax	#, D.15050
	movq	(%rax), %rax	# *_1725, D.15051
	movl	-44(%rbp), %edx	# i, tmp3626
	movslq	%edx, %rdx	# tmp3626, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15051
	movq	(%rax), %rax	# *_1729, D.15052
	movl	-40(%rbp), %edx	# j, tmp3627
	movslq	%edx, %rdx	# tmp3627, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rax, %rdx	# D.15052, D.15052
	movq	-16(%rbp), %rax	# fs_top, tmp3628
	movq	6496(%rax), %rax	# fs_top_2->ref_id, D.15050
	addq	$8, %rax	#, D.15050
	movq	(%rax), %rcx	# *_1735, D.15051
	movl	-44(%rbp), %eax	# i, tmp3629
	andl	$2, %eax	#, D.15035
	testl	%eax, %eax	# D.15035
	je	.L828	#,
	.loc 1 3555 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# i, tmp3630
	orl	$1, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.212
	jmp	.L829	#
.L828:
	.loc 1 3555 0 discriminator 2
	movl	-44(%rbp), %eax	# i, tmp3631
	andl	$-2, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.212
.L829:
	.loc 1 3555 0 discriminator 3
	addq	%rcx, %rax	# D.15051, D.15051
	movq	(%rax), %rcx	# *_1744, D.15052
	movl	-40(%rbp), %eax	# j, tmp3632
	andl	$2, %eax	#, D.15035
	testl	%eax, %eax	# D.15035
	je	.L830	#,
	.loc 1 3555 0 discriminator 1
	movl	-40(%rbp), %eax	# j, tmp3633
	orl	$1, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.213
	jmp	.L831	#
.L830:
	.loc 1 3555 0 discriminator 2
	movl	-40(%rbp), %eax	# j, tmp3634
	andl	$-2, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.213
.L831:
	.loc 1 3555 0 discriminator 3
	addq	%rcx, %rax	# D.15052, D.15052
	movq	(%rax), %rax	# *_1753, D.15053
	movq	%rax, (%rdx)	# D.15053, *_1733
	.loc 1 3557 0 is_stmt 1 discriminator 3
	movq	img(%rip), %rax	# img, img.214
	movl	71996(%rax), %eax	# img.214_1755->direct_spatial_mv_pred_flag, D.15035
	cmpl	$1, %eax	#, D.15035
	jne	.L832	#,
	.loc 1 3559 0
	movq	-56(%rbp), %rax	# p, tmp3635
	movq	3240(%rax), %rax	# p_159(D)->top_moving_block, D.15040
	movl	-44(%rbp), %edx	# i, tmp3636
	movslq	%edx, %rdx	# tmp3636, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15040
	movq	(%rax), %rdx	# *_1760, D.15042
	movl	-40(%rbp), %eax	# j, tmp3637
	cltq
	leaq	(%rdx,%rax), %rcx	#, D.15042
	.loc 1 3560 0
	movq	-16(%rbp), %rax	# fs_top, tmp3638
	movl	6376(%rax), %eax	# fs_top_2->is_long_term, D.15035
	testl	%eax, %eax	# D.15035
	jne	.L833	#,
	.loc 1 3560 0 is_stmt 0 discriminator 2
	movq	-56(%rbp), %rax	# p, tmp3639
	movq	3216(%rax), %rax	# p_159(D)->top_ref_idx, D.15046
	movq	(%rax), %rax	# *_1765, D.15047
	movl	-44(%rbp), %edx	# i, tmp3640
	movslq	%edx, %rdx	# tmp3640, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_1769, D.15048
	movl	-40(%rbp), %edx	# j, tmp3641
	movslq	%edx, %rdx	# tmp3641, D.15041
	addq	%rdx, %rdx	# D.15041
	addq	%rdx, %rax	# D.15041, D.15048
	movzwl	(%rax), %eax	# *_1773, D.15049
	testw	%ax, %ax	# D.15049
	jne	.L833	#,
	.loc 1 3561 0 is_stmt 1 discriminator 1
	movq	-56(%rbp), %rax	# p, tmp3642
	movq	3232(%rax), %rax	# p_159(D)->top_mv, D.15045
	movq	(%rax), %rax	# *_1775, D.15046
	movl	-44(%rbp), %edx	# i, tmp3643
	movslq	%edx, %rdx	# tmp3643, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15046
	movq	(%rax), %rax	# *_1779, D.15047
	movl	-40(%rbp), %edx	# j, tmp3644
	movslq	%edx, %rdx	# tmp3644, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_1783, D.15048
	movzwl	(%rax), %eax	# *_1784, D.15049
	cwtl
	cltd
	xorl	%edx, %eax	# tmp3645, D.15035
	subl	%edx, %eax	# tmp3645, D.15035
	sarl	%eax	# D.15035
	.loc 1 3560 0 discriminator 1
	testl	%eax, %eax	# D.15035
	jne	.L833	#,
	.loc 1 3562 0
	movq	-56(%rbp), %rax	# p, tmp3646
	movq	3232(%rax), %rax	# p_159(D)->top_mv, D.15045
	movq	(%rax), %rax	# *_1789, D.15046
	movl	-44(%rbp), %edx	# i, tmp3647
	movslq	%edx, %rdx	# tmp3647, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15046
	movq	(%rax), %rax	# *_1793, D.15047
	movl	-40(%rbp), %edx	# j, tmp3648
	movslq	%edx, %rdx	# tmp3648, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_1797, D.15048
	addq	$2, %rax	#, D.15048
	movzwl	(%rax), %eax	# *_1799, D.15049
	cwtl
	cltd
	xorl	%edx, %eax	# tmp3649, D.15035
	subl	%edx, %eax	# tmp3649, D.15035
	sarl	%eax	# D.15035
	.loc 1 3561 0
	testl	%eax, %eax	# D.15035
	je	.L834	#,
.L833:
	.loc 1 3563 0 discriminator 1
	movq	-56(%rbp), %rax	# p, tmp3650
	movq	3216(%rax), %rax	# p_159(D)->top_ref_idx, D.15046
	movq	(%rax), %rax	# *_1804, D.15047
	movl	-44(%rbp), %edx	# i, tmp3651
	movslq	%edx, %rdx	# tmp3651, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_1808, D.15048
	movl	-40(%rbp), %edx	# j, tmp3652
	movslq	%edx, %rdx	# tmp3652, D.15041
	addq	%rdx, %rdx	# D.15041
	addq	%rdx, %rax	# D.15041, D.15048
	movzwl	(%rax), %eax	# *_1812, D.15049
	.loc 1 3560 0 discriminator 1
	cmpw	$-1, %ax	#, D.15049
	jne	.L835	#,
	.loc 1 3564 0
	movq	-56(%rbp), %rax	# p, tmp3653
	movq	3216(%rax), %rax	# p_159(D)->top_ref_idx, D.15046
	addq	$8, %rax	#, D.15046
	movq	(%rax), %rax	# *_1815, D.15047
	movl	-44(%rbp), %edx	# i, tmp3654
	movslq	%edx, %rdx	# tmp3654, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_1819, D.15048
	movl	-40(%rbp), %edx	# j, tmp3655
	movslq	%edx, %rdx	# tmp3655, D.15041
	addq	%rdx, %rdx	# D.15041
	addq	%rdx, %rax	# D.15041, D.15048
	movzwl	(%rax), %eax	# *_1823, D.15049
	.loc 1 3563 0
	testw	%ax, %ax	# D.15049
	jne	.L835	#,
	.loc 1 3565 0
	movq	-56(%rbp), %rax	# p, tmp3656
	movq	3232(%rax), %rax	# p_159(D)->top_mv, D.15045
	addq	$8, %rax	#, D.15045
	movq	(%rax), %rax	# *_1826, D.15046
	movl	-44(%rbp), %edx	# i, tmp3657
	movslq	%edx, %rdx	# tmp3657, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15046
	movq	(%rax), %rax	# *_1830, D.15047
	movl	-40(%rbp), %edx	# j, tmp3658
	movslq	%edx, %rdx	# tmp3658, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_1834, D.15048
	movzwl	(%rax), %eax	# *_1835, D.15049
	cwtl
	cltd
	xorl	%edx, %eax	# tmp3659, D.15035
	subl	%edx, %eax	# tmp3659, D.15035
	sarl	%eax	# D.15035
	.loc 1 3564 0
	testl	%eax, %eax	# D.15035
	jne	.L835	#,
	.loc 1 3566 0
	movq	-56(%rbp), %rax	# p, tmp3660
	movq	3232(%rax), %rax	# p_159(D)->top_mv, D.15045
	addq	$8, %rax	#, D.15045
	movq	(%rax), %rax	# *_1841, D.15046
	movl	-44(%rbp), %edx	# i, tmp3661
	movslq	%edx, %rdx	# tmp3661, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15046
	movq	(%rax), %rax	# *_1845, D.15047
	movl	-40(%rbp), %edx	# j, tmp3662
	movslq	%edx, %rdx	# tmp3662, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_1849, D.15048
	addq	$2, %rax	#, D.15048
	movzwl	(%rax), %eax	# *_1851, D.15049
	cwtl
	cltd
	xorl	%edx, %eax	# tmp3663, D.15035
	subl	%edx, %eax	# tmp3663, D.15035
	sarl	%eax	# D.15035
	.loc 1 3565 0
	testl	%eax, %eax	# D.15035
	je	.L834	#,
.L835:
	.loc 1 3560 0 discriminator 3
	movl	$1, %eax	#, iftmp.215
	jmp	.L836	#
.L834:
	.loc 1 3560 0 is_stmt 0
	movl	$0, %eax	#, iftmp.215
.L836:
	.loc 1 3559 0 is_stmt 1
	movb	%al, (%rcx)	# D.15044, *_1763
.L832:
	.loc 1 3569 0
	movq	img(%rip), %rax	# img, img.216
	movl	71996(%rax), %eax	# img.216_1859->direct_spatial_mv_pred_flag, D.15035
	testl	%eax, %eax	# D.15035
	jne	.L762	#,
	.loc 1 3569 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# fs, tmp3664
	movq	6520(%rax), %rax	# fs_1->field_frame, D.15040
	movl	-44(%rbp), %edx	# i, tmp3665
	movslq	%edx, %rdx	# tmp3665, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15040
	movq	(%rax), %rdx	# *_1864, D.15042
	movl	-40(%rbp), %eax	# j, tmp3666
	addl	%eax, %eax	# D.15035
	cltq
	addq	%rdx, %rax	# D.15042, D.15042
	movzbl	(%rax), %eax	# *_1868, D.15044
	testb	%al, %al	# D.15044
	jne	.L762	#,
	.loc 1 3571 0 is_stmt 1
	movq	-56(%rbp), %rax	# p, tmp3667
	movq	3232(%rax), %rax	# p_159(D)->top_mv, D.15045
	movq	(%rax), %rax	# *_1870, D.15046
	movl	-44(%rbp), %edx	# i, tmp3668
	movslq	%edx, %rdx	# tmp3668, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15046
	movq	(%rax), %rax	# *_1874, D.15047
	movl	-40(%rbp), %edx	# j, tmp3669
	movslq	%edx, %rdx	# tmp3669, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_1878, D.15048
	leaq	2(%rax), %rdx	#, D.15048
	movq	-56(%rbp), %rax	# p, tmp3670
	movq	3232(%rax), %rax	# p_159(D)->top_mv, D.15045
	movq	(%rax), %rax	# *_1881, D.15046
	movl	-44(%rbp), %ecx	# i, tmp3671
	movslq	%ecx, %rcx	# tmp3671, D.15041
	salq	$3, %rcx	#, D.15041
	addq	%rcx, %rax	# D.15041, D.15046
	movq	(%rax), %rax	# *_1885, D.15047
	movl	-40(%rbp), %ecx	# j, tmp3672
	movslq	%ecx, %rcx	# tmp3672, D.15041
	salq	$3, %rcx	#, D.15041
	addq	%rcx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_1889, D.15048
	addq	$2, %rax	#, D.15048
	movzwl	(%rax), %eax	# *_1891, D.15049
	movl	%eax, %ecx	# D.15049, tmp3673
	shrw	$15, %cx	#, tmp3673
	addl	%ecx, %eax	# tmp3673, tmp3674
	sarw	%ax	# tmp3675
	movw	%ax, (%rdx)	# D.15049, *_1880
	.loc 1 3572 0
	movq	-56(%rbp), %rax	# p, tmp3676
	movq	3232(%rax), %rax	# p_159(D)->top_mv, D.15045
	addq	$8, %rax	#, D.15045
	movq	(%rax), %rax	# *_1895, D.15046
	movl	-44(%rbp), %edx	# i, tmp3677
	movslq	%edx, %rdx	# tmp3677, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15046
	movq	(%rax), %rax	# *_1899, D.15047
	movl	-40(%rbp), %edx	# j, tmp3678
	movslq	%edx, %rdx	# tmp3678, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_1903, D.15048
	leaq	2(%rax), %rdx	#, D.15048
	movq	-56(%rbp), %rax	# p, tmp3679
	movq	3232(%rax), %rax	# p_159(D)->top_mv, D.15045
	addq	$8, %rax	#, D.15045
	movq	(%rax), %rax	# *_1907, D.15046
	movl	-44(%rbp), %ecx	# i, tmp3680
	movslq	%ecx, %rcx	# tmp3680, D.15041
	salq	$3, %rcx	#, D.15041
	addq	%rcx, %rax	# D.15041, D.15046
	movq	(%rax), %rax	# *_1911, D.15047
	movl	-40(%rbp), %ecx	# j, tmp3681
	movslq	%ecx, %rcx	# tmp3681, D.15041
	salq	$3, %rcx	#, D.15041
	addq	%rcx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_1915, D.15048
	addq	$2, %rax	#, D.15048
	movzwl	(%rax), %eax	# *_1917, D.15049
	movl	%eax, %ecx	# D.15049, tmp3682
	shrw	$15, %cx	#, tmp3682
	addl	%ecx, %eax	# tmp3682, tmp3683
	sarw	%ax	# tmp3684
	movw	%ax, (%rdx)	# D.15049, *_1905
	.loc 1 3573 0
	movq	-56(%rbp), %rax	# p, tmp3685
	movq	4848(%rax), %rax	# p_159(D)->bottom_mv, D.15045
	movq	(%rax), %rax	# *_1920, D.15046
	movl	-44(%rbp), %edx	# i, tmp3686
	movslq	%edx, %rdx	# tmp3686, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15046
	movq	(%rax), %rax	# *_1924, D.15047
	movl	-40(%rbp), %edx	# j, tmp3687
	movslq	%edx, %rdx	# tmp3687, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_1928, D.15048
	leaq	2(%rax), %rdx	#, D.15048
	movq	-56(%rbp), %rax	# p, tmp3688
	movq	4848(%rax), %rax	# p_159(D)->bottom_mv, D.15045
	movq	(%rax), %rax	# *_1931, D.15046
	movl	-44(%rbp), %ecx	# i, tmp3689
	movslq	%ecx, %rcx	# tmp3689, D.15041
	salq	$3, %rcx	#, D.15041
	addq	%rcx, %rax	# D.15041, D.15046
	movq	(%rax), %rax	# *_1935, D.15047
	movl	-40(%rbp), %ecx	# j, tmp3690
	movslq	%ecx, %rcx	# tmp3690, D.15041
	salq	$3, %rcx	#, D.15041
	addq	%rcx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_1939, D.15048
	addq	$2, %rax	#, D.15048
	movzwl	(%rax), %eax	# *_1941, D.15049
	movl	%eax, %ecx	# D.15049, tmp3691
	shrw	$15, %cx	#, tmp3691
	addl	%ecx, %eax	# tmp3691, tmp3692
	sarw	%ax	# tmp3693
	movw	%ax, (%rdx)	# D.15049, *_1930
	.loc 1 3574 0
	movq	-56(%rbp), %rax	# p, tmp3694
	movq	4848(%rax), %rax	# p_159(D)->bottom_mv, D.15045
	addq	$8, %rax	#, D.15045
	movq	(%rax), %rax	# *_1945, D.15046
	movl	-44(%rbp), %edx	# i, tmp3695
	movslq	%edx, %rdx	# tmp3695, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15046
	movq	(%rax), %rax	# *_1949, D.15047
	movl	-40(%rbp), %edx	# j, tmp3696
	movslq	%edx, %rdx	# tmp3696, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_1953, D.15048
	leaq	2(%rax), %rdx	#, D.15048
	movq	-56(%rbp), %rax	# p, tmp3697
	movq	4848(%rax), %rax	# p_159(D)->bottom_mv, D.15045
	addq	$8, %rax	#, D.15045
	movq	(%rax), %rax	# *_1957, D.15046
	movl	-44(%rbp), %ecx	# i, tmp3698
	movslq	%ecx, %rcx	# tmp3698, D.15041
	salq	$3, %rcx	#, D.15041
	addq	%rcx, %rax	# D.15041, D.15046
	movq	(%rax), %rax	# *_1961, D.15047
	movl	-40(%rbp), %ecx	# j, tmp3699
	movslq	%ecx, %rcx	# tmp3699, D.15041
	salq	$3, %rcx	#, D.15041
	addq	%rcx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_1965, D.15048
	addq	$2, %rax	#, D.15048
	movzwl	(%rax), %eax	# *_1967, D.15049
	movl	%eax, %ecx	# D.15049, tmp3700
	shrw	$15, %cx	#, tmp3700
	addl	%ecx, %eax	# tmp3700, tmp3701
	sarw	%ax	# tmp3702
	movw	%ax, (%rdx)	# D.15049, *_1955
.L762:
	.loc 1 3475 0
	addl	$1, -40(%rbp)	#, j
.L711:
	.loc 1 3475 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# fs, tmp3703
	movl	6396(%rax), %eax	# fs_1->size_y, D.15035
	leal	7(%rax), %edx	#, tmp3705
	testl	%eax, %eax	# tmp3704
	cmovs	%edx, %eax	# tmp3705,, tmp3704
	sarl	$3, %eax	#, tmp3706
	cmpl	-40(%rbp), %eax	# j, D.15035
	jg	.L837	#,
	.loc 1 3473 0 is_stmt 1
	addl	$1, -44(%rbp)	#, i
.L710:
	.loc 1 3473 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# fs, tmp3707
	movl	6392(%rax), %eax	# fs_1->size_x, D.15035
	leal	3(%rax), %edx	#, tmp3709
	testl	%eax, %eax	# tmp3708
	cmovs	%edx, %eax	# tmp3709,, tmp3708
	sarl	$2, %eax	#, tmp3710
	cmpl	-44(%rbp), %eax	# i, D.15035
	jg	.L838	#,
.L709:
	.loc 1 3583 0 is_stmt 1
	movq	active_sps(%rip), %rax	# active_sps, active_sps.217
	movl	1148(%rax), %eax	# active_sps.217_1972->frame_mbs_only_flag, D.15039
	testl	%eax, %eax	# D.15039
	je	.L839	#,
	.loc 1 3583 0 is_stmt 0 discriminator 1
	movq	active_sps(%rip), %rax	# active_sps, active_sps.218
	movl	1156(%rax), %eax	# active_sps.218_1974->direct_8x8_inference_flag, D.15039
	testl	%eax, %eax	# D.15039
	je	.L840	#,
.L839:
	.loc 1 3588 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.219
	movl	28(%rax), %eax	# img.219_1976->structure, D.15035
	testl	%eax, %eax	# D.15035
	jne	.L840	#,
	.loc 1 3590 0
	movl	$0, -40(%rbp)	#, j
	jmp	.L841	#
.L846:
	.loc 1 3592 0
	movl	$0, -44(%rbp)	#, i
	jmp	.L842	#
.L845:
	.loc 1 3595 0
	movq	-24(%rbp), %rax	# fs, tmp3711
	movq	6520(%rax), %rax	# fs_1->field_frame, D.15040
	movl	-44(%rbp), %edx	# i, tmp3712
	movslq	%edx, %rdx	# tmp3712, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15040
	movq	(%rax), %rdx	# *_1987, D.15042
	movl	-40(%rbp), %eax	# j, tmp3713
	cltq
	addq	%rdx, %rax	# D.15042, D.15042
	movzbl	(%rax), %eax	# *_1990, D.15044
	testb	%al, %al	# D.15044
	je	.L843	#,
	.loc 1 3597 0
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.220
	movl	4(%rax), %edx	# enc_picture.220_1992->poc, D.15035
	movq	-24(%rbp), %rax	# fs, tmp3714
	movq	6536(%rax), %rax	# fs_1->bottom_field, D.15054
	movl	4(%rax), %eax	# _1994->poc, D.15035
	subl	%eax, %edx	# D.15035, D.15035
	movl	%edx, %eax	# D.15035, tmp3715
	sarl	$31, %eax	#, tmp3715
	xorl	%eax, %edx	# tmp3715, D.15035
	subl	%eax, %edx	# tmp3715, D.15035
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.221
	movl	4(%rax), %ecx	# enc_picture.221_1998->poc, D.15035
	movq	-24(%rbp), %rax	# fs, tmp3716
	movq	6528(%rax), %rax	# fs_1->top_field, D.15054
	movl	4(%rax), %eax	# _2000->poc, D.15035
	subl	%eax, %ecx	# D.15035, D.15035
	movl	%ecx, %eax	# D.15035, D.15035
	movl	%eax, %ecx	# D.15035, tmp3717
	sarl	$31, %ecx	#, tmp3717
	xorl	%ecx, %eax	# tmp3717, D.15035
	subl	%ecx, %eax	# tmp3717, D.15035
	cmpl	%eax, %edx	# D.15035, D.15035
	jle	.L844	#,
	.loc 1 3599 0
	movq	-56(%rbp), %rax	# p, tmp3718
	movq	1616(%rax), %rax	# p_159(D)->mv, D.15045
	movq	(%rax), %rax	# *_2004, D.15046
	movl	-44(%rbp), %edx	# i, tmp3719
	movslq	%edx, %rdx	# tmp3719, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15046
	movq	(%rax), %rax	# *_2008, D.15047
	movl	-40(%rbp), %edx	# j, tmp3720
	movslq	%edx, %rdx	# tmp3720, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rdx	# *_2012, D.15048
	movq	-24(%rbp), %rax	# fs, tmp3721
	movq	6528(%rax), %rax	# fs_1->top_field, D.15054
	movq	6504(%rax), %rax	# _2014->mv, D.15045
	movq	(%rax), %rax	# *_2015, D.15046
	movl	-44(%rbp), %ecx	# i, tmp3722
	movslq	%ecx, %rcx	# tmp3722, D.15041
	salq	$3, %rcx	#, D.15041
	addq	%rcx, %rax	# D.15041, D.15046
	movq	(%rax), %rcx	# *_2019, D.15047
	movl	-40(%rbp), %eax	# j, tmp3723
	movl	%eax, %esi	# tmp3723, tmp3724
	shrl	$31, %esi	#, tmp3724
	addl	%esi, %eax	# tmp3724, tmp3725
	sarl	%eax	# tmp3726
	cltq
	salq	$3, %rax	#, D.15041
	addq	%rcx, %rax	# D.15047, D.15047
	movq	(%rax), %rax	# *_2024, D.15048
	movzwl	(%rax), %eax	# *_2025, D.15049
	movw	%ax, (%rdx)	# D.15049, *_2013
	.loc 1 3600 0
	movq	-56(%rbp), %rax	# p, tmp3727
	movq	1616(%rax), %rax	# p_159(D)->mv, D.15045
	movq	(%rax), %rax	# *_2027, D.15046
	movl	-44(%rbp), %edx	# i, tmp3728
	movslq	%edx, %rdx	# tmp3728, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15046
	movq	(%rax), %rax	# *_2031, D.15047
	movl	-40(%rbp), %edx	# j, tmp3729
	movslq	%edx, %rdx	# tmp3729, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_2035, D.15048
	leaq	2(%rax), %rdx	#, D.15048
	movq	-24(%rbp), %rax	# fs, tmp3730
	movq	6528(%rax), %rax	# fs_1->top_field, D.15054
	movq	6504(%rax), %rax	# _2038->mv, D.15045
	movq	(%rax), %rax	# *_2039, D.15046
	movl	-44(%rbp), %ecx	# i, tmp3731
	movslq	%ecx, %rcx	# tmp3731, D.15041
	salq	$3, %rcx	#, D.15041
	addq	%rcx, %rax	# D.15041, D.15046
	movq	(%rax), %rcx	# *_2043, D.15047
	movl	-40(%rbp), %eax	# j, tmp3732
	movl	%eax, %esi	# tmp3732, tmp3733
	shrl	$31, %esi	#, tmp3733
	addl	%esi, %eax	# tmp3733, tmp3734
	sarl	%eax	# tmp3735
	cltq
	salq	$3, %rax	#, D.15041
	addq	%rcx, %rax	# D.15047, D.15047
	movq	(%rax), %rax	# *_2048, D.15048
	movzwl	2(%rax), %eax	# MEM[(short int *)_2049 + 2B], D.15049
	movw	%ax, (%rdx)	# D.15049, *_2037
	.loc 1 3601 0
	movq	-56(%rbp), %rax	# p, tmp3736
	movq	1616(%rax), %rax	# p_159(D)->mv, D.15045
	addq	$8, %rax	#, D.15045
	movq	(%rax), %rax	# *_2052, D.15046
	movl	-44(%rbp), %edx	# i, tmp3737
	movslq	%edx, %rdx	# tmp3737, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15046
	movq	(%rax), %rax	# *_2056, D.15047
	movl	-40(%rbp), %edx	# j, tmp3738
	movslq	%edx, %rdx	# tmp3738, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rdx	# *_2060, D.15048
	movq	-24(%rbp), %rax	# fs, tmp3739
	movq	6528(%rax), %rax	# fs_1->top_field, D.15054
	movq	6504(%rax), %rax	# _2062->mv, D.15045
	addq	$8, %rax	#, D.15045
	movq	(%rax), %rax	# *_2064, D.15046
	movl	-44(%rbp), %ecx	# i, tmp3740
	movslq	%ecx, %rcx	# tmp3740, D.15041
	salq	$3, %rcx	#, D.15041
	addq	%rcx, %rax	# D.15041, D.15046
	movq	(%rax), %rcx	# *_2068, D.15047
	movl	-40(%rbp), %eax	# j, tmp3741
	movl	%eax, %esi	# tmp3741, tmp3742
	shrl	$31, %esi	#, tmp3742
	addl	%esi, %eax	# tmp3742, tmp3743
	sarl	%eax	# tmp3744
	cltq
	salq	$3, %rax	#, D.15041
	addq	%rcx, %rax	# D.15047, D.15047
	movq	(%rax), %rax	# *_2073, D.15048
	movzwl	(%rax), %eax	# *_2074, D.15049
	movw	%ax, (%rdx)	# D.15049, *_2061
	.loc 1 3602 0
	movq	-56(%rbp), %rax	# p, tmp3745
	movq	1616(%rax), %rax	# p_159(D)->mv, D.15045
	addq	$8, %rax	#, D.15045
	movq	(%rax), %rax	# *_2077, D.15046
	movl	-44(%rbp), %edx	# i, tmp3746
	movslq	%edx, %rdx	# tmp3746, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15046
	movq	(%rax), %rax	# *_2081, D.15047
	movl	-40(%rbp), %edx	# j, tmp3747
	movslq	%edx, %rdx	# tmp3747, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_2085, D.15048
	leaq	2(%rax), %rdx	#, D.15048
	movq	-24(%rbp), %rax	# fs, tmp3748
	movq	6528(%rax), %rax	# fs_1->top_field, D.15054
	movq	6504(%rax), %rax	# _2088->mv, D.15045
	addq	$8, %rax	#, D.15045
	movq	(%rax), %rax	# *_2090, D.15046
	movl	-44(%rbp), %ecx	# i, tmp3749
	movslq	%ecx, %rcx	# tmp3749, D.15041
	salq	$3, %rcx	#, D.15041
	addq	%rcx, %rax	# D.15041, D.15046
	movq	(%rax), %rcx	# *_2094, D.15047
	movl	-40(%rbp), %eax	# j, tmp3750
	movl	%eax, %esi	# tmp3750, tmp3751
	shrl	$31, %esi	#, tmp3751
	addl	%esi, %eax	# tmp3751, tmp3752
	sarl	%eax	# tmp3753
	cltq
	salq	$3, %rax	#, D.15041
	addq	%rcx, %rax	# D.15047, D.15047
	movq	(%rax), %rax	# *_2099, D.15048
	movzwl	2(%rax), %eax	# MEM[(short int *)_2100 + 2B], D.15049
	movw	%ax, (%rdx)	# D.15049, *_2087
	.loc 1 3604 0
	movq	-56(%rbp), %rax	# p, tmp3754
	movq	1600(%rax), %rax	# p_159(D)->ref_idx, D.15046
	movq	(%rax), %rax	# *_2102, D.15047
	movl	-44(%rbp), %edx	# i, tmp3755
	movslq	%edx, %rdx	# tmp3755, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_2106, D.15048
	movl	-40(%rbp), %edx	# j, tmp3756
	movslq	%edx, %rdx	# tmp3756, D.15041
	addq	%rdx, %rdx	# D.15041
	addq	%rax, %rdx	# D.15048, D.15048
	movq	-24(%rbp), %rax	# fs, tmp3757
	movq	6528(%rax), %rax	# fs_1->top_field, D.15054
	movq	6480(%rax), %rax	# _2111->ref_idx, D.15046
	movq	(%rax), %rax	# *_2112, D.15047
	movl	-44(%rbp), %ecx	# i, tmp3758
	movslq	%ecx, %rcx	# tmp3758, D.15041
	salq	$3, %rcx	#, D.15041
	addq	%rcx, %rax	# D.15041, D.15047
	movq	(%rax), %rcx	# *_2116, D.15048
	movl	-40(%rbp), %eax	# j, tmp3759
	movl	%eax, %esi	# tmp3759, tmp3760
	shrl	$31, %esi	#, tmp3760
	addl	%esi, %eax	# tmp3760, tmp3761
	sarl	%eax	# tmp3762
	cltq
	addq	%rax, %rax	# D.15041
	addq	%rcx, %rax	# D.15048, D.15048
	movzwl	(%rax), %eax	# *_2121, D.15049
	movw	%ax, (%rdx)	# D.15049, *_2110
	.loc 1 3605 0
	movq	-56(%rbp), %rax	# p, tmp3763
	movq	1600(%rax), %rax	# p_159(D)->ref_idx, D.15046
	addq	$8, %rax	#, D.15046
	movq	(%rax), %rax	# *_2124, D.15047
	movl	-44(%rbp), %edx	# i, tmp3764
	movslq	%edx, %rdx	# tmp3764, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_2128, D.15048
	movl	-40(%rbp), %edx	# j, tmp3765
	movslq	%edx, %rdx	# tmp3765, D.15041
	addq	%rdx, %rdx	# D.15041
	addq	%rax, %rdx	# D.15048, D.15048
	movq	-24(%rbp), %rax	# fs, tmp3766
	movq	6528(%rax), %rax	# fs_1->top_field, D.15054
	movq	6480(%rax), %rax	# _2133->ref_idx, D.15046
	addq	$8, %rax	#, D.15046
	movq	(%rax), %rax	# *_2135, D.15047
	movl	-44(%rbp), %ecx	# i, tmp3767
	movslq	%ecx, %rcx	# tmp3767, D.15041
	salq	$3, %rcx	#, D.15041
	addq	%rcx, %rax	# D.15041, D.15047
	movq	(%rax), %rcx	# *_2139, D.15048
	movl	-40(%rbp), %eax	# j, tmp3768
	movl	%eax, %esi	# tmp3768, tmp3769
	shrl	$31, %esi	#, tmp3769
	addl	%esi, %eax	# tmp3769, tmp3770
	sarl	%eax	# tmp3771
	cltq
	addq	%rax, %rax	# D.15041
	addq	%rcx, %rax	# D.15048, D.15048
	movzwl	(%rax), %eax	# *_2144, D.15049
	movw	%ax, (%rdx)	# D.15049, *_2132
	.loc 1 3606 0
	movq	-56(%rbp), %rax	# p, tmp3772
	movq	1608(%rax), %rax	# p_159(D)->ref_pic_id, D.15050
	movq	(%rax), %rax	# *_2146, D.15051
	movl	-44(%rbp), %edx	# i, tmp3773
	movslq	%edx, %rdx	# tmp3773, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15051
	movq	(%rax), %rax	# *_2150, D.15052
	movl	-40(%rbp), %edx	# j, tmp3774
	movslq	%edx, %rdx	# tmp3774, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rax, %rdx	# D.15052, D.15052
	movq	-24(%rbp), %rax	# fs, tmp3775
	movq	6496(%rax), %rax	# fs_1->ref_id, D.15050
	movq	(%rax), %rax	# *_2155, D.15051
	movl	-44(%rbp), %ecx	# i, tmp3776
	movslq	%ecx, %rcx	# tmp3776, D.15041
	salq	$3, %rcx	#, D.15041
	addq	%rcx, %rax	# D.15041, D.15051
	movq	(%rax), %rcx	# *_2159, D.15052
	movl	-40(%rbp), %eax	# j, tmp3777
	movl	%eax, %esi	# tmp3777, tmp3778
	shrl	$31, %esi	#, tmp3778
	addl	%esi, %eax	# tmp3778, tmp3779
	sarl	%eax	# tmp3780
	movl	%eax, %esi	# tmp3780, D.15035
	movl	-40(%rbp), %eax	# j, tmp3781
	leal	7(%rax), %edi	#, tmp3783
	testl	%eax, %eax	# tmp3782
	cmovs	%edi, %eax	# tmp3783,, tmp3782
	sarl	$3, %eax	#, tmp3784
	sall	$2, %eax	#, D.15035
	addl	%esi, %eax	# D.15035, D.15035
	cltq
	salq	$3, %rax	#, D.15041
	addq	%rcx, %rax	# D.15052, D.15052
	movq	(%rax), %rax	# *_2167, D.15053
	movq	%rax, (%rdx)	# D.15053, *_2154
	.loc 1 3607 0
	movq	-56(%rbp), %rax	# p, tmp3785
	movq	1608(%rax), %rax	# p_159(D)->ref_pic_id, D.15050
	addq	$8, %rax	#, D.15050
	movq	(%rax), %rax	# *_2170, D.15051
	movl	-44(%rbp), %edx	# i, tmp3786
	movslq	%edx, %rdx	# tmp3786, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15051
	movq	(%rax), %rax	# *_2174, D.15052
	movl	-40(%rbp), %edx	# j, tmp3787
	movslq	%edx, %rdx	# tmp3787, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rax, %rdx	# D.15052, D.15052
	movq	-24(%rbp), %rax	# fs, tmp3788
	movq	6496(%rax), %rax	# fs_1->ref_id, D.15050
	addq	$8, %rax	#, D.15050
	movq	(%rax), %rax	# *_2180, D.15051
	movl	-44(%rbp), %ecx	# i, tmp3789
	movslq	%ecx, %rcx	# tmp3789, D.15041
	salq	$3, %rcx	#, D.15041
	addq	%rcx, %rax	# D.15041, D.15051
	movq	(%rax), %rcx	# *_2184, D.15052
	movl	-40(%rbp), %eax	# j, tmp3790
	movl	%eax, %esi	# tmp3790, tmp3791
	shrl	$31, %esi	#, tmp3791
	addl	%esi, %eax	# tmp3791, tmp3792
	sarl	%eax	# tmp3793
	movl	%eax, %esi	# tmp3793, D.15035
	movl	-40(%rbp), %eax	# j, tmp3794
	leal	7(%rax), %edi	#, tmp3796
	testl	%eax, %eax	# tmp3795
	cmovs	%edi, %eax	# tmp3796,, tmp3795
	sarl	$3, %eax	#, tmp3797
	sall	$2, %eax	#, D.15035
	addl	%esi, %eax	# D.15035, D.15035
	cltq
	salq	$3, %rax	#, D.15041
	addq	%rcx, %rax	# D.15052, D.15052
	movq	(%rax), %rax	# *_2192, D.15053
	movq	%rax, (%rdx)	# D.15053, *_2178
	.loc 1 3608 0
	movq	-24(%rbp), %rax	# fs, tmp3798
	movq	6528(%rax), %rax	# fs_1->top_field, D.15054
	movl	6376(%rax), %edx	# _2194->is_long_term, D.15035
	movq	-56(%rbp), %rax	# p, tmp3799
	movl	%edx, 4864(%rax)	# D.15035, p_159(D)->is_long_term
	jmp	.L843	#
.L844:
	.loc 1 3612 0
	movq	-56(%rbp), %rax	# p, tmp3800
	movq	1616(%rax), %rax	# p_159(D)->mv, D.15045
	movq	(%rax), %rax	# *_2196, D.15046
	movl	-44(%rbp), %edx	# i, tmp3801
	movslq	%edx, %rdx	# tmp3801, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15046
	movq	(%rax), %rax	# *_2200, D.15047
	movl	-40(%rbp), %edx	# j, tmp3802
	movslq	%edx, %rdx	# tmp3802, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rdx	# *_2204, D.15048
	movq	-24(%rbp), %rax	# fs, tmp3803
	movq	6536(%rax), %rax	# fs_1->bottom_field, D.15054
	movq	6504(%rax), %rax	# _2206->mv, D.15045
	movq	(%rax), %rax	# *_2207, D.15046
	movl	-44(%rbp), %ecx	# i, tmp3804
	movslq	%ecx, %rcx	# tmp3804, D.15041
	salq	$3, %rcx	#, D.15041
	addq	%rcx, %rax	# D.15041, D.15046
	movq	(%rax), %rcx	# *_2211, D.15047
	movl	-40(%rbp), %eax	# j, tmp3805
	movl	%eax, %esi	# tmp3805, tmp3806
	shrl	$31, %esi	#, tmp3806
	addl	%esi, %eax	# tmp3806, tmp3807
	sarl	%eax	# tmp3808
	cltq
	salq	$3, %rax	#, D.15041
	addq	%rcx, %rax	# D.15047, D.15047
	movq	(%rax), %rax	# *_2216, D.15048
	movzwl	(%rax), %eax	# *_2217, D.15049
	movw	%ax, (%rdx)	# D.15049, *_2205
	.loc 1 3613 0
	movq	-56(%rbp), %rax	# p, tmp3809
	movq	1616(%rax), %rax	# p_159(D)->mv, D.15045
	movq	(%rax), %rax	# *_2219, D.15046
	movl	-44(%rbp), %edx	# i, tmp3810
	movslq	%edx, %rdx	# tmp3810, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15046
	movq	(%rax), %rax	# *_2223, D.15047
	movl	-40(%rbp), %edx	# j, tmp3811
	movslq	%edx, %rdx	# tmp3811, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_2227, D.15048
	leaq	2(%rax), %rdx	#, D.15048
	movq	-24(%rbp), %rax	# fs, tmp3812
	movq	6536(%rax), %rax	# fs_1->bottom_field, D.15054
	movq	6504(%rax), %rax	# _2230->mv, D.15045
	movq	(%rax), %rax	# *_2231, D.15046
	movl	-44(%rbp), %ecx	# i, tmp3813
	movslq	%ecx, %rcx	# tmp3813, D.15041
	salq	$3, %rcx	#, D.15041
	addq	%rcx, %rax	# D.15041, D.15046
	movq	(%rax), %rcx	# *_2235, D.15047
	movl	-40(%rbp), %eax	# j, tmp3814
	movl	%eax, %esi	# tmp3814, tmp3815
	shrl	$31, %esi	#, tmp3815
	addl	%esi, %eax	# tmp3815, tmp3816
	sarl	%eax	# tmp3817
	cltq
	salq	$3, %rax	#, D.15041
	addq	%rcx, %rax	# D.15047, D.15047
	movq	(%rax), %rax	# *_2240, D.15048
	movzwl	2(%rax), %eax	# MEM[(short int *)_2241 + 2B], D.15049
	movw	%ax, (%rdx)	# D.15049, *_2229
	.loc 1 3614 0
	movq	-56(%rbp), %rax	# p, tmp3818
	movq	1616(%rax), %rax	# p_159(D)->mv, D.15045
	addq	$8, %rax	#, D.15045
	movq	(%rax), %rax	# *_2244, D.15046
	movl	-44(%rbp), %edx	# i, tmp3819
	movslq	%edx, %rdx	# tmp3819, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15046
	movq	(%rax), %rax	# *_2248, D.15047
	movl	-40(%rbp), %edx	# j, tmp3820
	movslq	%edx, %rdx	# tmp3820, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rdx	# *_2252, D.15048
	movq	-24(%rbp), %rax	# fs, tmp3821
	movq	6536(%rax), %rax	# fs_1->bottom_field, D.15054
	movq	6504(%rax), %rax	# _2254->mv, D.15045
	addq	$8, %rax	#, D.15045
	movq	(%rax), %rax	# *_2256, D.15046
	movl	-44(%rbp), %ecx	# i, tmp3822
	movslq	%ecx, %rcx	# tmp3822, D.15041
	salq	$3, %rcx	#, D.15041
	addq	%rcx, %rax	# D.15041, D.15046
	movq	(%rax), %rcx	# *_2260, D.15047
	movl	-40(%rbp), %eax	# j, tmp3823
	movl	%eax, %esi	# tmp3823, tmp3824
	shrl	$31, %esi	#, tmp3824
	addl	%esi, %eax	# tmp3824, tmp3825
	sarl	%eax	# tmp3826
	cltq
	salq	$3, %rax	#, D.15041
	addq	%rcx, %rax	# D.15047, D.15047
	movq	(%rax), %rax	# *_2265, D.15048
	movzwl	(%rax), %eax	# *_2266, D.15049
	movw	%ax, (%rdx)	# D.15049, *_2253
	.loc 1 3615 0
	movq	-56(%rbp), %rax	# p, tmp3827
	movq	1616(%rax), %rax	# p_159(D)->mv, D.15045
	addq	$8, %rax	#, D.15045
	movq	(%rax), %rax	# *_2269, D.15046
	movl	-44(%rbp), %edx	# i, tmp3828
	movslq	%edx, %rdx	# tmp3828, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15046
	movq	(%rax), %rax	# *_2273, D.15047
	movl	-40(%rbp), %edx	# j, tmp3829
	movslq	%edx, %rdx	# tmp3829, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_2277, D.15048
	leaq	2(%rax), %rdx	#, D.15048
	movq	-24(%rbp), %rax	# fs, tmp3830
	movq	6536(%rax), %rax	# fs_1->bottom_field, D.15054
	movq	6504(%rax), %rax	# _2280->mv, D.15045
	addq	$8, %rax	#, D.15045
	movq	(%rax), %rax	# *_2282, D.15046
	movl	-44(%rbp), %ecx	# i, tmp3831
	movslq	%ecx, %rcx	# tmp3831, D.15041
	salq	$3, %rcx	#, D.15041
	addq	%rcx, %rax	# D.15041, D.15046
	movq	(%rax), %rcx	# *_2286, D.15047
	movl	-40(%rbp), %eax	# j, tmp3832
	movl	%eax, %esi	# tmp3832, tmp3833
	shrl	$31, %esi	#, tmp3833
	addl	%esi, %eax	# tmp3833, tmp3834
	sarl	%eax	# tmp3835
	cltq
	salq	$3, %rax	#, D.15041
	addq	%rcx, %rax	# D.15047, D.15047
	movq	(%rax), %rax	# *_2291, D.15048
	movzwl	2(%rax), %eax	# MEM[(short int *)_2292 + 2B], D.15049
	movw	%ax, (%rdx)	# D.15049, *_2279
	.loc 1 3617 0
	movq	-56(%rbp), %rax	# p, tmp3836
	movq	1600(%rax), %rax	# p_159(D)->ref_idx, D.15046
	movq	(%rax), %rax	# *_2294, D.15047
	movl	-44(%rbp), %edx	# i, tmp3837
	movslq	%edx, %rdx	# tmp3837, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_2298, D.15048
	movl	-40(%rbp), %edx	# j, tmp3838
	movslq	%edx, %rdx	# tmp3838, D.15041
	addq	%rdx, %rdx	# D.15041
	addq	%rax, %rdx	# D.15048, D.15048
	movq	-24(%rbp), %rax	# fs, tmp3839
	movq	6536(%rax), %rax	# fs_1->bottom_field, D.15054
	movq	6480(%rax), %rax	# _2303->ref_idx, D.15046
	movq	(%rax), %rax	# *_2304, D.15047
	movl	-44(%rbp), %ecx	# i, tmp3840
	movslq	%ecx, %rcx	# tmp3840, D.15041
	salq	$3, %rcx	#, D.15041
	addq	%rcx, %rax	# D.15041, D.15047
	movq	(%rax), %rcx	# *_2308, D.15048
	movl	-40(%rbp), %eax	# j, tmp3841
	movl	%eax, %esi	# tmp3841, tmp3842
	shrl	$31, %esi	#, tmp3842
	addl	%esi, %eax	# tmp3842, tmp3843
	sarl	%eax	# tmp3844
	cltq
	addq	%rax, %rax	# D.15041
	addq	%rcx, %rax	# D.15048, D.15048
	movzwl	(%rax), %eax	# *_2313, D.15049
	movw	%ax, (%rdx)	# D.15049, *_2302
	.loc 1 3618 0
	movq	-56(%rbp), %rax	# p, tmp3845
	movq	1600(%rax), %rax	# p_159(D)->ref_idx, D.15046
	addq	$8, %rax	#, D.15046
	movq	(%rax), %rax	# *_2316, D.15047
	movl	-44(%rbp), %edx	# i, tmp3846
	movslq	%edx, %rdx	# tmp3846, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_2320, D.15048
	movl	-40(%rbp), %edx	# j, tmp3847
	movslq	%edx, %rdx	# tmp3847, D.15041
	addq	%rdx, %rdx	# D.15041
	addq	%rax, %rdx	# D.15048, D.15048
	movq	-24(%rbp), %rax	# fs, tmp3848
	movq	6536(%rax), %rax	# fs_1->bottom_field, D.15054
	movq	6480(%rax), %rax	# _2325->ref_idx, D.15046
	addq	$8, %rax	#, D.15046
	movq	(%rax), %rax	# *_2327, D.15047
	movl	-44(%rbp), %ecx	# i, tmp3849
	movslq	%ecx, %rcx	# tmp3849, D.15041
	salq	$3, %rcx	#, D.15041
	addq	%rcx, %rax	# D.15041, D.15047
	movq	(%rax), %rcx	# *_2331, D.15048
	movl	-40(%rbp), %eax	# j, tmp3850
	movl	%eax, %esi	# tmp3850, tmp3851
	shrl	$31, %esi	#, tmp3851
	addl	%esi, %eax	# tmp3851, tmp3852
	sarl	%eax	# tmp3853
	cltq
	addq	%rax, %rax	# D.15041
	addq	%rcx, %rax	# D.15048, D.15048
	movzwl	(%rax), %eax	# *_2336, D.15049
	movw	%ax, (%rdx)	# D.15049, *_2324
	.loc 1 3619 0
	movq	-56(%rbp), %rax	# p, tmp3854
	movq	1608(%rax), %rax	# p_159(D)->ref_pic_id, D.15050
	movq	(%rax), %rax	# *_2338, D.15051
	movl	-44(%rbp), %edx	# i, tmp3855
	movslq	%edx, %rdx	# tmp3855, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15051
	movq	(%rax), %rax	# *_2342, D.15052
	movl	-40(%rbp), %edx	# j, tmp3856
	movslq	%edx, %rdx	# tmp3856, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rax, %rdx	# D.15052, D.15052
	movq	-24(%rbp), %rax	# fs, tmp3857
	movq	6496(%rax), %rax	# fs_1->ref_id, D.15050
	movq	(%rax), %rax	# *_2347, D.15051
	movl	-44(%rbp), %ecx	# i, tmp3858
	movslq	%ecx, %rcx	# tmp3858, D.15041
	salq	$3, %rcx	#, D.15041
	addq	%rcx, %rax	# D.15041, D.15051
	movq	(%rax), %rcx	# *_2351, D.15052
	movl	-40(%rbp), %eax	# j, tmp3859
	movl	%eax, %esi	# tmp3859, tmp3860
	shrl	$31, %esi	#, tmp3860
	addl	%esi, %eax	# tmp3860, tmp3861
	sarl	%eax	# tmp3862
	movl	%eax, %esi	# tmp3862, D.15035
	movl	-40(%rbp), %eax	# j, tmp3863
	leal	7(%rax), %edi	#, tmp3865
	testl	%eax, %eax	# tmp3864
	cmovs	%edi, %eax	# tmp3865,, tmp3864
	sarl	$3, %eax	#, tmp3866
	sall	$2, %eax	#, D.15035
	addl	%esi, %eax	# D.15035, D.15035
	cltq
	addq	$4, %rax	#, D.15043
	salq	$3, %rax	#, D.15043
	addq	%rcx, %rax	# D.15052, D.15052
	movq	(%rax), %rax	# *_2360, D.15053
	movq	%rax, (%rdx)	# D.15053, *_2346
	.loc 1 3620 0
	movq	-56(%rbp), %rax	# p, tmp3867
	movq	1608(%rax), %rax	# p_159(D)->ref_pic_id, D.15050
	addq	$8, %rax	#, D.15050
	movq	(%rax), %rax	# *_2363, D.15051
	movl	-44(%rbp), %edx	# i, tmp3868
	movslq	%edx, %rdx	# tmp3868, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15051
	movq	(%rax), %rax	# *_2367, D.15052
	movl	-40(%rbp), %edx	# j, tmp3869
	movslq	%edx, %rdx	# tmp3869, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rax, %rdx	# D.15052, D.15052
	movq	-24(%rbp), %rax	# fs, tmp3870
	movq	6496(%rax), %rax	# fs_1->ref_id, D.15050
	addq	$8, %rax	#, D.15050
	movq	(%rax), %rax	# *_2373, D.15051
	movl	-44(%rbp), %ecx	# i, tmp3871
	movslq	%ecx, %rcx	# tmp3871, D.15041
	salq	$3, %rcx	#, D.15041
	addq	%rcx, %rax	# D.15041, D.15051
	movq	(%rax), %rcx	# *_2377, D.15052
	movl	-40(%rbp), %eax	# j, tmp3872
	movl	%eax, %esi	# tmp3872, tmp3873
	shrl	$31, %esi	#, tmp3873
	addl	%esi, %eax	# tmp3873, tmp3874
	sarl	%eax	# tmp3875
	movl	%eax, %esi	# tmp3875, D.15035
	movl	-40(%rbp), %eax	# j, tmp3876
	leal	7(%rax), %edi	#, tmp3878
	testl	%eax, %eax	# tmp3877
	cmovs	%edi, %eax	# tmp3878,, tmp3877
	sarl	$3, %eax	#, tmp3879
	sall	$2, %eax	#, D.15035
	addl	%esi, %eax	# D.15035, D.15035
	cltq
	addq	$4, %rax	#, D.15043
	salq	$3, %rax	#, D.15043
	addq	%rcx, %rax	# D.15052, D.15052
	movq	(%rax), %rax	# *_2386, D.15053
	movq	%rax, (%rdx)	# D.15053, *_2371
	.loc 1 3621 0
	movq	-24(%rbp), %rax	# fs, tmp3880
	movq	6536(%rax), %rax	# fs_1->bottom_field, D.15054
	movl	6376(%rax), %edx	# _2388->is_long_term, D.15035
	movq	-56(%rbp), %rax	# p, tmp3881
	movl	%edx, 4864(%rax)	# D.15035, p_159(D)->is_long_term
.L843:
	.loc 1 3592 0
	addl	$1, -44(%rbp)	#, i
.L842:
	.loc 1 3592 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# fs, tmp3882
	movl	6392(%rax), %eax	# fs_1->size_x, D.15035
	leal	3(%rax), %edx	#, tmp3884
	testl	%eax, %eax	# tmp3883
	cmovs	%edx, %eax	# tmp3884,, tmp3883
	sarl	$2, %eax	#, tmp3885
	cmpl	-44(%rbp), %eax	# i, D.15035
	jg	.L845	#,
	.loc 1 3590 0 is_stmt 1
	addl	$1, -40(%rbp)	#, j
.L841:
	.loc 1 3590 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# fs, tmp3886
	movl	6396(%rax), %eax	# fs_1->size_y, D.15035
	leal	3(%rax), %edx	#, tmp3888
	testl	%eax, %eax	# tmp3887
	cmovs	%edx, %eax	# tmp3888,, tmp3887
	sarl	$2, %eax	#, tmp3889
	cmpl	-40(%rbp), %eax	# j, D.15035
	jg	.L846	#,
.L840:
	.loc 1 3629 0 is_stmt 1
	movl	$0, -40(%rbp)	#, j
	jmp	.L847	#
.L890:
	.loc 1 3631 0
	movl	$0, -44(%rbp)	#, i
	jmp	.L848	#
.L889:
	.loc 1 3633 0
	movq	active_sps(%rip), %rax	# active_sps, active_sps.222
	movl	1148(%rax), %eax	# active_sps.222_2398->frame_mbs_only_flag, D.15039
	testl	%eax, %eax	# D.15039
	je	.L849	#,
	.loc 1 3633 0 is_stmt 0 discriminator 1
	movq	active_sps(%rip), %rax	# active_sps, active_sps.223
	movl	1156(%rax), %eax	# active_sps.223_2400->direct_8x8_inference_flag, D.15039
	testl	%eax, %eax	# D.15039
	je	.L850	#,
.L849:
	.loc 1 3636 0 is_stmt 1
	movq	-56(%rbp), %rax	# p, tmp3890
	movq	1616(%rax), %rax	# p_159(D)->mv, D.15045
	movq	(%rax), %rax	# *_2572, D.15046
	movl	-44(%rbp), %edx	# i, tmp3891
	movslq	%edx, %rdx	# tmp3891, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15046
	movq	(%rax), %rax	# *_2576, D.15047
	movl	-40(%rbp), %edx	# j, tmp3892
	movslq	%edx, %rdx	# tmp3892, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rdx	# *_2580, D.15048
	movq	-56(%rbp), %rax	# p, tmp3893
	movq	1616(%rax), %rax	# p_159(D)->mv, D.15045
	movq	(%rax), %rcx	# *_2582, D.15046
	movl	-44(%rbp), %eax	# i, tmp3894
	andl	$2, %eax	#, D.15035
	testl	%eax, %eax	# D.15035
	je	.L851	#,
	.loc 1 3636 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# i, tmp3895
	orl	$1, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.224
	jmp	.L852	#
.L851:
	.loc 1 3636 0 discriminator 2
	movl	-44(%rbp), %eax	# i, tmp3896
	andl	$-2, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.224
.L852:
	.loc 1 3636 0 discriminator 3
	addq	%rcx, %rax	# D.15046, D.15046
	movq	(%rax), %rcx	# *_2591, D.15047
	movl	-40(%rbp), %eax	# j, tmp3897
	andl	$2, %eax	#, D.15035
	testl	%eax, %eax	# D.15035
	je	.L853	#,
	.loc 1 3636 0 discriminator 1
	movl	-40(%rbp), %eax	# j, tmp3898
	orl	$1, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.225
	jmp	.L854	#
.L853:
	.loc 1 3636 0 discriminator 2
	movl	-40(%rbp), %eax	# j, tmp3899
	andl	$-2, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.225
.L854:
	.loc 1 3636 0 discriminator 3
	addq	%rcx, %rax	# D.15047, D.15047
	movq	(%rax), %rax	# *_2600, D.15048
	movzwl	(%rax), %eax	# *_2601, D.15049
	movw	%ax, (%rdx)	# D.15049, *_2581
	.loc 1 3637 0 is_stmt 1 discriminator 3
	movq	-56(%rbp), %rax	# p, tmp3900
	movq	1616(%rax), %rax	# p_159(D)->mv, D.15045
	movq	(%rax), %rax	# *_2603, D.15046
	movl	-44(%rbp), %edx	# i, tmp3901
	movslq	%edx, %rdx	# tmp3901, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15046
	movq	(%rax), %rax	# *_2607, D.15047
	movl	-40(%rbp), %edx	# j, tmp3902
	movslq	%edx, %rdx	# tmp3902, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_2611, D.15048
	leaq	2(%rax), %rdx	#, D.15048
	movq	-56(%rbp), %rax	# p, tmp3903
	movq	1616(%rax), %rax	# p_159(D)->mv, D.15045
	movq	(%rax), %rcx	# *_2614, D.15046
	movl	-44(%rbp), %eax	# i, tmp3904
	andl	$2, %eax	#, D.15035
	testl	%eax, %eax	# D.15035
	je	.L855	#,
	.loc 1 3637 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# i, tmp3905
	orl	$1, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.226
	jmp	.L856	#
.L855:
	.loc 1 3637 0 discriminator 2
	movl	-44(%rbp), %eax	# i, tmp3906
	andl	$-2, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.226
.L856:
	.loc 1 3637 0 discriminator 3
	addq	%rcx, %rax	# D.15046, D.15046
	movq	(%rax), %rcx	# *_2623, D.15047
	movl	-40(%rbp), %eax	# j, tmp3907
	andl	$2, %eax	#, D.15035
	testl	%eax, %eax	# D.15035
	je	.L857	#,
	.loc 1 3637 0 discriminator 1
	movl	-40(%rbp), %eax	# j, tmp3908
	orl	$1, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.227
	jmp	.L858	#
.L857:
	.loc 1 3637 0 discriminator 2
	movl	-40(%rbp), %eax	# j, tmp3909
	andl	$-2, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.227
.L858:
	.loc 1 3637 0 discriminator 3
	addq	%rcx, %rax	# D.15047, D.15047
	movq	(%rax), %rax	# *_2632, D.15048
	movzwl	2(%rax), %eax	# MEM[(short int *)_2633 + 2B], D.15049
	movw	%ax, (%rdx)	# D.15049, *_2613
	.loc 1 3638 0 is_stmt 1 discriminator 3
	movq	-56(%rbp), %rax	# p, tmp3910
	movq	1616(%rax), %rax	# p_159(D)->mv, D.15045
	addq	$8, %rax	#, D.15045
	movq	(%rax), %rax	# *_2636, D.15046
	movl	-44(%rbp), %edx	# i, tmp3911
	movslq	%edx, %rdx	# tmp3911, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15046
	movq	(%rax), %rax	# *_2640, D.15047
	movl	-40(%rbp), %edx	# j, tmp3912
	movslq	%edx, %rdx	# tmp3912, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rdx	# *_2644, D.15048
	movq	-56(%rbp), %rax	# p, tmp3913
	movq	1616(%rax), %rax	# p_159(D)->mv, D.15045
	addq	$8, %rax	#, D.15045
	movq	(%rax), %rcx	# *_2647, D.15046
	movl	-44(%rbp), %eax	# i, tmp3914
	andl	$2, %eax	#, D.15035
	testl	%eax, %eax	# D.15035
	je	.L859	#,
	.loc 1 3638 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# i, tmp3915
	orl	$1, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.228
	jmp	.L860	#
.L859:
	.loc 1 3638 0 discriminator 2
	movl	-44(%rbp), %eax	# i, tmp3916
	andl	$-2, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.228
.L860:
	.loc 1 3638 0 discriminator 3
	addq	%rcx, %rax	# D.15046, D.15046
	movq	(%rax), %rcx	# *_2656, D.15047
	movl	-40(%rbp), %eax	# j, tmp3917
	andl	$2, %eax	#, D.15035
	testl	%eax, %eax	# D.15035
	je	.L861	#,
	.loc 1 3638 0 discriminator 1
	movl	-40(%rbp), %eax	# j, tmp3918
	orl	$1, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.229
	jmp	.L862	#
.L861:
	.loc 1 3638 0 discriminator 2
	movl	-40(%rbp), %eax	# j, tmp3919
	andl	$-2, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.229
.L862:
	.loc 1 3638 0 discriminator 3
	addq	%rcx, %rax	# D.15047, D.15047
	movq	(%rax), %rax	# *_2665, D.15048
	movzwl	(%rax), %eax	# *_2666, D.15049
	movw	%ax, (%rdx)	# D.15049, *_2645
	.loc 1 3639 0 is_stmt 1 discriminator 3
	movq	-56(%rbp), %rax	# p, tmp3920
	movq	1616(%rax), %rax	# p_159(D)->mv, D.15045
	addq	$8, %rax	#, D.15045
	movq	(%rax), %rax	# *_2669, D.15046
	movl	-44(%rbp), %edx	# i, tmp3921
	movslq	%edx, %rdx	# tmp3921, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15046
	movq	(%rax), %rax	# *_2673, D.15047
	movl	-40(%rbp), %edx	# j, tmp3922
	movslq	%edx, %rdx	# tmp3922, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_2677, D.15048
	leaq	2(%rax), %rdx	#, D.15048
	movq	-56(%rbp), %rax	# p, tmp3923
	movq	1616(%rax), %rax	# p_159(D)->mv, D.15045
	addq	$8, %rax	#, D.15045
	movq	(%rax), %rcx	# *_2681, D.15046
	movl	-44(%rbp), %eax	# i, tmp3924
	andl	$2, %eax	#, D.15035
	testl	%eax, %eax	# D.15035
	je	.L863	#,
	.loc 1 3639 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# i, tmp3925
	orl	$1, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.230
	jmp	.L864	#
.L863:
	.loc 1 3639 0 discriminator 2
	movl	-44(%rbp), %eax	# i, tmp3926
	andl	$-2, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.230
.L864:
	.loc 1 3639 0 discriminator 3
	addq	%rcx, %rax	# D.15046, D.15046
	movq	(%rax), %rcx	# *_2690, D.15047
	movl	-40(%rbp), %eax	# j, tmp3927
	andl	$2, %eax	#, D.15035
	testl	%eax, %eax	# D.15035
	je	.L865	#,
	.loc 1 3639 0 discriminator 1
	movl	-40(%rbp), %eax	# j, tmp3928
	orl	$1, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.231
	jmp	.L866	#
.L865:
	.loc 1 3639 0 discriminator 2
	movl	-40(%rbp), %eax	# j, tmp3929
	andl	$-2, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.231
.L866:
	.loc 1 3639 0 discriminator 3
	addq	%rcx, %rax	# D.15047, D.15047
	movq	(%rax), %rax	# *_2699, D.15048
	movzwl	2(%rax), %eax	# MEM[(short int *)_2700 + 2B], D.15049
	movw	%ax, (%rdx)	# D.15049, *_2679
	.loc 1 3641 0 is_stmt 1 discriminator 3
	movq	-56(%rbp), %rax	# p, tmp3930
	movq	1600(%rax), %rax	# p_159(D)->ref_idx, D.15046
	movq	(%rax), %rax	# *_2702, D.15047
	movl	-44(%rbp), %edx	# i, tmp3931
	movslq	%edx, %rdx	# tmp3931, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_2706, D.15048
	movl	-40(%rbp), %edx	# j, tmp3932
	movslq	%edx, %rdx	# tmp3932, D.15041
	addq	%rdx, %rdx	# D.15041
	addq	%rax, %rdx	# D.15048, D.15048
	movq	-56(%rbp), %rax	# p, tmp3933
	movq	1600(%rax), %rax	# p_159(D)->ref_idx, D.15046
	movq	(%rax), %rcx	# *_2711, D.15047
	movl	-44(%rbp), %eax	# i, tmp3934
	andl	$2, %eax	#, D.15035
	testl	%eax, %eax	# D.15035
	je	.L867	#,
	.loc 1 3641 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# i, tmp3935
	orl	$1, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.232
	jmp	.L868	#
.L867:
	.loc 1 3641 0 discriminator 2
	movl	-44(%rbp), %eax	# i, tmp3936
	andl	$-2, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.232
.L868:
	.loc 1 3641 0 discriminator 3
	addq	%rcx, %rax	# D.15047, D.15047
	movq	(%rax), %rcx	# *_2720, D.15048
	movl	-40(%rbp), %eax	# j, tmp3937
	andl	$2, %eax	#, D.15035
	testl	%eax, %eax	# D.15035
	je	.L869	#,
	.loc 1 3641 0 discriminator 1
	movl	-40(%rbp), %eax	# j, tmp3938
	orl	$1, %eax	#, D.15035
	cltq
	addq	%rax, %rax	# iftmp.233
	jmp	.L870	#
.L869:
	.loc 1 3641 0 discriminator 2
	movl	-40(%rbp), %eax	# j, tmp3939
	andl	$-2, %eax	#, D.15035
	cltq
	addq	%rax, %rax	# iftmp.233
.L870:
	.loc 1 3641 0 discriminator 3
	addq	%rcx, %rax	# D.15048, D.15048
	movzwl	(%rax), %eax	# *_2729, D.15049
	movw	%ax, (%rdx)	# D.15049, *_2710
	.loc 1 3642 0 is_stmt 1 discriminator 3
	movq	-56(%rbp), %rax	# p, tmp3940
	movq	1600(%rax), %rax	# p_159(D)->ref_idx, D.15046
	addq	$8, %rax	#, D.15046
	movq	(%rax), %rax	# *_2732, D.15047
	movl	-44(%rbp), %edx	# i, tmp3941
	movslq	%edx, %rdx	# tmp3941, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_2736, D.15048
	movl	-40(%rbp), %edx	# j, tmp3942
	movslq	%edx, %rdx	# tmp3942, D.15041
	addq	%rdx, %rdx	# D.15041
	addq	%rax, %rdx	# D.15048, D.15048
	movq	-56(%rbp), %rax	# p, tmp3943
	movq	1600(%rax), %rax	# p_159(D)->ref_idx, D.15046
	addq	$8, %rax	#, D.15046
	movq	(%rax), %rcx	# *_2742, D.15047
	movl	-44(%rbp), %eax	# i, tmp3944
	andl	$2, %eax	#, D.15035
	testl	%eax, %eax	# D.15035
	je	.L871	#,
	.loc 1 3642 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# i, tmp3945
	orl	$1, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.234
	jmp	.L872	#
.L871:
	.loc 1 3642 0 discriminator 2
	movl	-44(%rbp), %eax	# i, tmp3946
	andl	$-2, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.234
.L872:
	.loc 1 3642 0 discriminator 3
	addq	%rcx, %rax	# D.15047, D.15047
	movq	(%rax), %rcx	# *_2751, D.15048
	movl	-40(%rbp), %eax	# j, tmp3947
	andl	$2, %eax	#, D.15035
	testl	%eax, %eax	# D.15035
	je	.L873	#,
	.loc 1 3642 0 discriminator 1
	movl	-40(%rbp), %eax	# j, tmp3948
	orl	$1, %eax	#, D.15035
	cltq
	addq	%rax, %rax	# iftmp.235
	jmp	.L874	#
.L873:
	.loc 1 3642 0 discriminator 2
	movl	-40(%rbp), %eax	# j, tmp3949
	andl	$-2, %eax	#, D.15035
	cltq
	addq	%rax, %rax	# iftmp.235
.L874:
	.loc 1 3642 0 discriminator 3
	addq	%rcx, %rax	# D.15048, D.15048
	movzwl	(%rax), %eax	# *_2760, D.15049
	movw	%ax, (%rdx)	# D.15049, *_2740
	.loc 1 3643 0 is_stmt 1 discriminator 3
	movq	-56(%rbp), %rax	# p, tmp3950
	movq	1608(%rax), %rax	# p_159(D)->ref_pic_id, D.15050
	movq	(%rax), %rax	# *_2762, D.15051
	movl	-44(%rbp), %edx	# i, tmp3951
	movslq	%edx, %rdx	# tmp3951, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15051
	movq	(%rax), %rax	# *_2766, D.15052
	movl	-40(%rbp), %edx	# j, tmp3952
	movslq	%edx, %rdx	# tmp3952, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rax, %rdx	# D.15052, D.15052
	movq	-56(%rbp), %rax	# p, tmp3953
	movq	1608(%rax), %rax	# p_159(D)->ref_pic_id, D.15050
	movq	(%rax), %rcx	# *_2771, D.15051
	movl	-44(%rbp), %eax	# i, tmp3954
	andl	$2, %eax	#, D.15035
	testl	%eax, %eax	# D.15035
	je	.L875	#,
	.loc 1 3643 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# i, tmp3955
	orl	$1, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.236
	jmp	.L876	#
.L875:
	.loc 1 3643 0 discriminator 2
	movl	-44(%rbp), %eax	# i, tmp3956
	andl	$-2, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.236
.L876:
	.loc 1 3643 0 discriminator 3
	addq	%rcx, %rax	# D.15051, D.15051
	movq	(%rax), %rcx	# *_2780, D.15052
	movl	-40(%rbp), %eax	# j, tmp3957
	andl	$2, %eax	#, D.15035
	testl	%eax, %eax	# D.15035
	je	.L877	#,
	.loc 1 3643 0 discriminator 1
	movl	-40(%rbp), %eax	# j, tmp3958
	orl	$1, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.237
	jmp	.L878	#
.L877:
	.loc 1 3643 0 discriminator 2
	movl	-40(%rbp), %eax	# j, tmp3959
	andl	$-2, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.237
.L878:
	.loc 1 3643 0 discriminator 3
	addq	%rcx, %rax	# D.15052, D.15052
	movq	(%rax), %rax	# *_2789, D.15053
	movq	%rax, (%rdx)	# D.15053, *_2770
	.loc 1 3644 0 is_stmt 1 discriminator 3
	movq	-56(%rbp), %rax	# p, tmp3960
	movq	1608(%rax), %rax	# p_159(D)->ref_pic_id, D.15050
	addq	$8, %rax	#, D.15050
	movq	(%rax), %rax	# *_2792, D.15051
	movl	-44(%rbp), %edx	# i, tmp3961
	movslq	%edx, %rdx	# tmp3961, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15051
	movq	(%rax), %rax	# *_2796, D.15052
	movl	-40(%rbp), %edx	# j, tmp3962
	movslq	%edx, %rdx	# tmp3962, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rax, %rdx	# D.15052, D.15052
	movq	-56(%rbp), %rax	# p, tmp3963
	movq	1608(%rax), %rax	# p_159(D)->ref_pic_id, D.15050
	addq	$8, %rax	#, D.15050
	movq	(%rax), %rcx	# *_2802, D.15051
	movl	-44(%rbp), %eax	# i, tmp3964
	andl	$2, %eax	#, D.15035
	testl	%eax, %eax	# D.15035
	je	.L879	#,
	.loc 1 3644 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# i, tmp3965
	orl	$1, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.238
	jmp	.L880	#
.L879:
	.loc 1 3644 0 discriminator 2
	movl	-44(%rbp), %eax	# i, tmp3966
	andl	$-2, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.238
.L880:
	.loc 1 3644 0 discriminator 3
	addq	%rcx, %rax	# D.15051, D.15051
	movq	(%rax), %rcx	# *_2811, D.15052
	movl	-40(%rbp), %eax	# j, tmp3967
	andl	$2, %eax	#, D.15035
	testl	%eax, %eax	# D.15035
	je	.L881	#,
	.loc 1 3644 0 discriminator 1
	movl	-40(%rbp), %eax	# j, tmp3968
	orl	$1, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.239
	jmp	.L882	#
.L881:
	.loc 1 3644 0 discriminator 2
	movl	-40(%rbp), %eax	# j, tmp3969
	andl	$-2, %eax	#, D.15035
	cltq
	salq	$3, %rax	#, iftmp.239
.L882:
	.loc 1 3644 0 discriminator 3
	addq	%rcx, %rax	# D.15052, D.15052
	movq	(%rax), %rax	# *_2820, D.15053
	movq	%rax, (%rdx)	# D.15053, *_2800
	jmp	.L883	#
.L850:
	.loc 1 3649 0 is_stmt 1
	movq	-56(%rbp), %rax	# p, tmp3970
	movq	1616(%rax), %rax	# p_159(D)->mv, D.15045
	movq	(%rax), %rax	# *_2402, D.15046
	movl	-44(%rbp), %edx	# i, tmp3971
	movslq	%edx, %rdx	# tmp3971, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15046
	movq	(%rax), %rax	# *_2406, D.15047
	movl	-40(%rbp), %edx	# j, tmp3972
	movslq	%edx, %rdx	# tmp3972, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_2410, D.15048
	movq	-24(%rbp), %rdx	# fs, tmp3973
	movq	6504(%rdx), %rdx	# fs_1->mv, D.15045
	movq	(%rdx), %rdx	# *_2412, D.15046
	movl	-44(%rbp), %ecx	# i, tmp3974
	movslq	%ecx, %rcx	# tmp3974, D.15041
	salq	$3, %rcx	#, D.15041
	addq	%rcx, %rdx	# D.15041, D.15046
	movq	(%rdx), %rdx	# *_2416, D.15047
	movl	-40(%rbp), %ecx	# j, tmp3975
	movslq	%ecx, %rcx	# tmp3975, D.15041
	salq	$3, %rcx	#, D.15041
	addq	%rcx, %rdx	# D.15041, D.15047
	movq	(%rdx), %rdx	# *_2420, D.15048
	movzwl	(%rdx), %edx	# *_2421, D.15049
	movw	%dx, (%rax)	# D.15049, *_2411
	.loc 1 3650 0
	movq	-56(%rbp), %rax	# p, tmp3976
	movq	1616(%rax), %rax	# p_159(D)->mv, D.15045
	movq	(%rax), %rax	# *_2423, D.15046
	movl	-44(%rbp), %edx	# i, tmp3977
	movslq	%edx, %rdx	# tmp3977, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15046
	movq	(%rax), %rax	# *_2427, D.15047
	movl	-40(%rbp), %edx	# j, tmp3978
	movslq	%edx, %rdx	# tmp3978, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_2431, D.15048
	leaq	2(%rax), %rdx	#, D.15048
	movq	-24(%rbp), %rax	# fs, tmp3979
	movq	6504(%rax), %rax	# fs_1->mv, D.15045
	movq	(%rax), %rax	# *_2434, D.15046
	movl	-44(%rbp), %ecx	# i, tmp3980
	movslq	%ecx, %rcx	# tmp3980, D.15041
	salq	$3, %rcx	#, D.15041
	addq	%rcx, %rax	# D.15041, D.15046
	movq	(%rax), %rax	# *_2438, D.15047
	movl	-40(%rbp), %ecx	# j, tmp3981
	movslq	%ecx, %rcx	# tmp3981, D.15041
	salq	$3, %rcx	#, D.15041
	addq	%rcx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_2442, D.15048
	movzwl	2(%rax), %eax	# MEM[(short int *)_2443 + 2B], D.15049
	movw	%ax, (%rdx)	# D.15049, *_2433
	.loc 1 3651 0
	movq	-56(%rbp), %rax	# p, tmp3982
	movq	1616(%rax), %rax	# p_159(D)->mv, D.15045
	addq	$8, %rax	#, D.15045
	movq	(%rax), %rax	# *_2446, D.15046
	movl	-44(%rbp), %edx	# i, tmp3983
	movslq	%edx, %rdx	# tmp3983, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15046
	movq	(%rax), %rax	# *_2450, D.15047
	movl	-40(%rbp), %edx	# j, tmp3984
	movslq	%edx, %rdx	# tmp3984, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_2454, D.15048
	movq	-24(%rbp), %rdx	# fs, tmp3985
	movq	6504(%rdx), %rdx	# fs_1->mv, D.15045
	addq	$8, %rdx	#, D.15045
	movq	(%rdx), %rdx	# *_2457, D.15046
	movl	-44(%rbp), %ecx	# i, tmp3986
	movslq	%ecx, %rcx	# tmp3986, D.15041
	salq	$3, %rcx	#, D.15041
	addq	%rcx, %rdx	# D.15041, D.15046
	movq	(%rdx), %rdx	# *_2461, D.15047
	movl	-40(%rbp), %ecx	# j, tmp3987
	movslq	%ecx, %rcx	# tmp3987, D.15041
	salq	$3, %rcx	#, D.15041
	addq	%rcx, %rdx	# D.15041, D.15047
	movq	(%rdx), %rdx	# *_2465, D.15048
	movzwl	(%rdx), %edx	# *_2466, D.15049
	movw	%dx, (%rax)	# D.15049, *_2455
	.loc 1 3652 0
	movq	-56(%rbp), %rax	# p, tmp3988
	movq	1616(%rax), %rax	# p_159(D)->mv, D.15045
	addq	$8, %rax	#, D.15045
	movq	(%rax), %rax	# *_2469, D.15046
	movl	-44(%rbp), %edx	# i, tmp3989
	movslq	%edx, %rdx	# tmp3989, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15046
	movq	(%rax), %rax	# *_2473, D.15047
	movl	-40(%rbp), %edx	# j, tmp3990
	movslq	%edx, %rdx	# tmp3990, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_2477, D.15048
	leaq	2(%rax), %rdx	#, D.15048
	movq	-24(%rbp), %rax	# fs, tmp3991
	movq	6504(%rax), %rax	# fs_1->mv, D.15045
	addq	$8, %rax	#, D.15045
	movq	(%rax), %rax	# *_2481, D.15046
	movl	-44(%rbp), %ecx	# i, tmp3992
	movslq	%ecx, %rcx	# tmp3992, D.15041
	salq	$3, %rcx	#, D.15041
	addq	%rcx, %rax	# D.15041, D.15046
	movq	(%rax), %rax	# *_2485, D.15047
	movl	-40(%rbp), %ecx	# j, tmp3993
	movslq	%ecx, %rcx	# tmp3993, D.15041
	salq	$3, %rcx	#, D.15041
	addq	%rcx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_2489, D.15048
	movzwl	2(%rax), %eax	# MEM[(short int *)_2490 + 2B], D.15049
	movw	%ax, (%rdx)	# D.15049, *_2479
	.loc 1 3654 0
	movq	-56(%rbp), %rax	# p, tmp3994
	movq	1600(%rax), %rax	# p_159(D)->ref_idx, D.15046
	movq	(%rax), %rax	# *_2492, D.15047
	movl	-44(%rbp), %edx	# i, tmp3995
	movslq	%edx, %rdx	# tmp3995, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_2496, D.15048
	movl	-40(%rbp), %edx	# j, tmp3996
	movslq	%edx, %rdx	# tmp3996, D.15041
	addq	%rdx, %rdx	# D.15041
	addq	%rax, %rdx	# D.15048, D.15048
	movq	-24(%rbp), %rax	# fs, tmp3997
	movq	6480(%rax), %rax	# fs_1->ref_idx, D.15046
	movq	(%rax), %rax	# *_2501, D.15047
	movl	-44(%rbp), %ecx	# i, tmp3998
	movslq	%ecx, %rcx	# tmp3998, D.15041
	salq	$3, %rcx	#, D.15041
	addq	%rcx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_2505, D.15048
	movl	-40(%rbp), %ecx	# j, tmp3999
	movslq	%ecx, %rcx	# tmp3999, D.15041
	addq	%rcx, %rcx	# D.15041
	addq	%rcx, %rax	# D.15041, D.15048
	movzwl	(%rax), %eax	# *_2509, D.15049
	movw	%ax, (%rdx)	# D.15049, *_2500
	.loc 1 3655 0
	movq	-56(%rbp), %rax	# p, tmp4000
	movq	1600(%rax), %rax	# p_159(D)->ref_idx, D.15046
	addq	$8, %rax	#, D.15046
	movq	(%rax), %rax	# *_2512, D.15047
	movl	-44(%rbp), %edx	# i, tmp4001
	movslq	%edx, %rdx	# tmp4001, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_2516, D.15048
	movl	-40(%rbp), %edx	# j, tmp4002
	movslq	%edx, %rdx	# tmp4002, D.15041
	addq	%rdx, %rdx	# D.15041
	addq	%rax, %rdx	# D.15048, D.15048
	movq	-24(%rbp), %rax	# fs, tmp4003
	movq	6480(%rax), %rax	# fs_1->ref_idx, D.15046
	addq	$8, %rax	#, D.15046
	movq	(%rax), %rax	# *_2522, D.15047
	movl	-44(%rbp), %ecx	# i, tmp4004
	movslq	%ecx, %rcx	# tmp4004, D.15041
	salq	$3, %rcx	#, D.15041
	addq	%rcx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_2526, D.15048
	movl	-40(%rbp), %ecx	# j, tmp4005
	movslq	%ecx, %rcx	# tmp4005, D.15041
	addq	%rcx, %rcx	# D.15041
	addq	%rcx, %rax	# D.15041, D.15048
	movzwl	(%rax), %eax	# *_2530, D.15049
	movw	%ax, (%rdx)	# D.15049, *_2520
	.loc 1 3656 0
	movq	-56(%rbp), %rax	# p, tmp4006
	movq	1608(%rax), %rax	# p_159(D)->ref_pic_id, D.15050
	movq	(%rax), %rax	# *_2532, D.15051
	movl	-44(%rbp), %edx	# i, tmp4007
	movslq	%edx, %rdx	# tmp4007, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15051
	movq	(%rax), %rax	# *_2536, D.15052
	movl	-40(%rbp), %edx	# j, tmp4008
	movslq	%edx, %rdx	# tmp4008, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rax, %rdx	# D.15052, D.15052
	movq	-24(%rbp), %rax	# fs, tmp4009
	movq	6496(%rax), %rax	# fs_1->ref_id, D.15050
	movq	(%rax), %rax	# *_2541, D.15051
	movl	-44(%rbp), %ecx	# i, tmp4010
	movslq	%ecx, %rcx	# tmp4010, D.15041
	salq	$3, %rcx	#, D.15041
	addq	%rcx, %rax	# D.15041, D.15051
	movq	(%rax), %rax	# *_2545, D.15052
	movl	-40(%rbp), %ecx	# j, tmp4011
	movslq	%ecx, %rcx	# tmp4011, D.15041
	salq	$3, %rcx	#, D.15041
	addq	%rcx, %rax	# D.15041, D.15052
	movq	(%rax), %rax	# *_2549, D.15053
	movq	%rax, (%rdx)	# D.15053, *_2540
	.loc 1 3657 0
	movq	-56(%rbp), %rax	# p, tmp4012
	movq	1608(%rax), %rax	# p_159(D)->ref_pic_id, D.15050
	addq	$8, %rax	#, D.15050
	movq	(%rax), %rax	# *_2552, D.15051
	movl	-44(%rbp), %edx	# i, tmp4013
	movslq	%edx, %rdx	# tmp4013, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15051
	movq	(%rax), %rax	# *_2556, D.15052
	movl	-40(%rbp), %edx	# j, tmp4014
	movslq	%edx, %rdx	# tmp4014, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rax, %rdx	# D.15052, D.15052
	movq	-24(%rbp), %rax	# fs, tmp4015
	movq	6496(%rax), %rax	# fs_1->ref_id, D.15050
	addq	$8, %rax	#, D.15050
	movq	(%rax), %rax	# *_2562, D.15051
	movl	-44(%rbp), %ecx	# i, tmp4016
	movslq	%ecx, %rcx	# tmp4016, D.15041
	salq	$3, %rcx	#, D.15041
	addq	%rcx, %rax	# D.15041, D.15051
	movq	(%rax), %rax	# *_2566, D.15052
	movl	-40(%rbp), %ecx	# j, tmp4017
	movslq	%ecx, %rcx	# tmp4017, D.15041
	salq	$3, %rcx	#, D.15041
	addq	%rcx, %rax	# D.15041, D.15052
	movq	(%rax), %rax	# *_2570, D.15053
	movq	%rax, (%rdx)	# D.15053, *_2560
.L883:
	.loc 1 3660 0
	movq	-24(%rbp), %rax	# fs, tmp4018
	movl	6376(%rax), %edx	# fs_1->is_long_term, D.15035
	movq	-56(%rbp), %rax	# p, tmp4019
	movl	%edx, 4864(%rax)	# D.15035, p_159(D)->is_long_term
	.loc 1 3662 0
	movq	img(%rip), %rax	# img, img.240
	movl	71996(%rax), %eax	# img.240_2823->direct_spatial_mv_pred_flag, D.15035
	cmpl	$1, %eax	#, D.15035
	jne	.L884	#,
	.loc 1 3664 0
	movq	-56(%rbp), %rax	# p, tmp4020
	movq	1624(%rax), %rax	# p_159(D)->moving_block, D.15040
	movl	-44(%rbp), %edx	# i, tmp4021
	movslq	%edx, %rdx	# tmp4021, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15040
	movq	(%rax), %rdx	# *_2828, D.15042
	movl	-40(%rbp), %eax	# j, tmp4022
	cltq
	leaq	(%rdx,%rax), %rcx	#, D.15042
	.loc 1 3665 0
	movq	-56(%rbp), %rax	# p, tmp4023
	movl	4864(%rax), %eax	# p_159(D)->is_long_term, D.15035
	testl	%eax, %eax	# D.15035
	jne	.L885	#,
	.loc 1 3665 0 is_stmt 0 discriminator 2
	movq	-56(%rbp), %rax	# p, tmp4024
	movq	1600(%rax), %rax	# p_159(D)->ref_idx, D.15046
	movq	(%rax), %rax	# *_2833, D.15047
	movl	-44(%rbp), %edx	# i, tmp4025
	movslq	%edx, %rdx	# tmp4025, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_2837, D.15048
	movl	-40(%rbp), %edx	# j, tmp4026
	movslq	%edx, %rdx	# tmp4026, D.15041
	addq	%rdx, %rdx	# D.15041
	addq	%rdx, %rax	# D.15041, D.15048
	movzwl	(%rax), %eax	# *_2841, D.15049
	testw	%ax, %ax	# D.15049
	jne	.L885	#,
	.loc 1 3666 0 is_stmt 1 discriminator 1
	movq	-56(%rbp), %rax	# p, tmp4027
	movq	1616(%rax), %rax	# p_159(D)->mv, D.15045
	movq	(%rax), %rax	# *_2843, D.15046
	movl	-44(%rbp), %edx	# i, tmp4028
	movslq	%edx, %rdx	# tmp4028, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15046
	movq	(%rax), %rax	# *_2847, D.15047
	movl	-40(%rbp), %edx	# j, tmp4029
	movslq	%edx, %rdx	# tmp4029, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_2851, D.15048
	movzwl	(%rax), %eax	# *_2852, D.15049
	cwtl
	cltd
	xorl	%edx, %eax	# tmp4030, D.15035
	subl	%edx, %eax	# tmp4030, D.15035
	sarl	%eax	# D.15035
	.loc 1 3665 0 discriminator 1
	testl	%eax, %eax	# D.15035
	jne	.L885	#,
	.loc 1 3667 0
	movq	-56(%rbp), %rax	# p, tmp4031
	movq	1616(%rax), %rax	# p_159(D)->mv, D.15045
	movq	(%rax), %rax	# *_2857, D.15046
	movl	-44(%rbp), %edx	# i, tmp4032
	movslq	%edx, %rdx	# tmp4032, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15046
	movq	(%rax), %rax	# *_2861, D.15047
	movl	-40(%rbp), %edx	# j, tmp4033
	movslq	%edx, %rdx	# tmp4033, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_2865, D.15048
	addq	$2, %rax	#, D.15048
	movzwl	(%rax), %eax	# *_2867, D.15049
	cwtl
	cltd
	xorl	%edx, %eax	# tmp4034, D.15035
	subl	%edx, %eax	# tmp4034, D.15035
	sarl	%eax	# D.15035
	.loc 1 3666 0
	testl	%eax, %eax	# D.15035
	je	.L886	#,
.L885:
	.loc 1 3668 0 discriminator 1
	movq	-56(%rbp), %rax	# p, tmp4035
	movq	1600(%rax), %rax	# p_159(D)->ref_idx, D.15046
	movq	(%rax), %rax	# *_2872, D.15047
	movl	-44(%rbp), %edx	# i, tmp4036
	movslq	%edx, %rdx	# tmp4036, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_2876, D.15048
	movl	-40(%rbp), %edx	# j, tmp4037
	movslq	%edx, %rdx	# tmp4037, D.15041
	addq	%rdx, %rdx	# D.15041
	addq	%rdx, %rax	# D.15041, D.15048
	movzwl	(%rax), %eax	# *_2880, D.15049
	.loc 1 3665 0 discriminator 1
	cmpw	$-1, %ax	#, D.15049
	jne	.L887	#,
	.loc 1 3669 0
	movq	-56(%rbp), %rax	# p, tmp4038
	movq	1600(%rax), %rax	# p_159(D)->ref_idx, D.15046
	addq	$8, %rax	#, D.15046
	movq	(%rax), %rax	# *_2883, D.15047
	movl	-44(%rbp), %edx	# i, tmp4039
	movslq	%edx, %rdx	# tmp4039, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_2887, D.15048
	movl	-40(%rbp), %edx	# j, tmp4040
	movslq	%edx, %rdx	# tmp4040, D.15041
	addq	%rdx, %rdx	# D.15041
	addq	%rdx, %rax	# D.15041, D.15048
	movzwl	(%rax), %eax	# *_2891, D.15049
	.loc 1 3668 0
	testw	%ax, %ax	# D.15049
	jne	.L887	#,
	.loc 1 3670 0
	movq	-56(%rbp), %rax	# p, tmp4041
	movq	1616(%rax), %rax	# p_159(D)->mv, D.15045
	addq	$8, %rax	#, D.15045
	movq	(%rax), %rax	# *_2894, D.15046
	movl	-44(%rbp), %edx	# i, tmp4042
	movslq	%edx, %rdx	# tmp4042, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15046
	movq	(%rax), %rax	# *_2898, D.15047
	movl	-40(%rbp), %edx	# j, tmp4043
	movslq	%edx, %rdx	# tmp4043, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_2902, D.15048
	movzwl	(%rax), %eax	# *_2903, D.15049
	cwtl
	cltd
	xorl	%edx, %eax	# tmp4044, D.15035
	subl	%edx, %eax	# tmp4044, D.15035
	sarl	%eax	# D.15035
	.loc 1 3669 0
	testl	%eax, %eax	# D.15035
	jne	.L887	#,
	.loc 1 3671 0
	movq	-56(%rbp), %rax	# p, tmp4045
	movq	1616(%rax), %rax	# p_159(D)->mv, D.15045
	addq	$8, %rax	#, D.15045
	movq	(%rax), %rax	# *_2909, D.15046
	movl	-44(%rbp), %edx	# i, tmp4046
	movslq	%edx, %rdx	# tmp4046, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15046
	movq	(%rax), %rax	# *_2913, D.15047
	movl	-40(%rbp), %edx	# j, tmp4047
	movslq	%edx, %rdx	# tmp4047, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_2917, D.15048
	addq	$2, %rax	#, D.15048
	movzwl	(%rax), %eax	# *_2919, D.15049
	cwtl
	cltd
	xorl	%edx, %eax	# tmp4048, D.15035
	subl	%edx, %eax	# tmp4048, D.15035
	sarl	%eax	# D.15035
	.loc 1 3670 0
	testl	%eax, %eax	# D.15035
	je	.L886	#,
.L887:
	.loc 1 3665 0 discriminator 3
	movl	$1, %eax	#, iftmp.241
	jmp	.L888	#
.L886:
	.loc 1 3665 0 is_stmt 0
	movl	$0, %eax	#, iftmp.241
.L888:
	.loc 1 3664 0 is_stmt 1
	movb	%al, (%rcx)	# D.15044, *_2831
.L884:
	.loc 1 3631 0
	addl	$1, -44(%rbp)	#, i
.L848:
	.loc 1 3631 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# fs, tmp4049
	movl	6392(%rax), %eax	# fs_1->size_x, D.15035
	leal	3(%rax), %edx	#, tmp4051
	testl	%eax, %eax	# tmp4050
	cmovs	%edx, %eax	# tmp4051,, tmp4050
	sarl	$2, %eax	#, tmp4052
	cmpl	-44(%rbp), %eax	# i, D.15035
	jg	.L889	#,
	.loc 1 3629 0 is_stmt 1
	addl	$1, -40(%rbp)	#, j
.L847:
	.loc 1 3629 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# fs, tmp4053
	movl	6396(%rax), %eax	# fs_1->size_y, D.15035
	leal	3(%rax), %edx	#, tmp4055
	testl	%eax, %eax	# tmp4054
	cmovs	%edx, %eax	# tmp4055,, tmp4054
	sarl	$2, %eax	#, tmp4056
	cmpl	-40(%rbp), %eax	# j, D.15035
	jg	.L890	#,
	.loc 1 3677 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.242
	movl	71996(%rax), %eax	# img.242_2929->direct_spatial_mv_pred_flag, D.15035
	testl	%eax, %eax	# D.15035
	jne	.L694	#,
	.loc 1 3679 0
	movl	$0, -40(%rbp)	#, j
	jmp	.L892	#
.L899:
	.loc 1 3681 0
	movl	$0, -44(%rbp)	#, i
	jmp	.L893	#
.L898:
	.loc 1 3684 0
	movq	img(%rip), %rax	# img, img.243
	movl	72400(%rax), %eax	# img.243_2937->MbaffFrameFlag, D.15035
	testl	%eax, %eax	# D.15035
	jne	.L894	#,
	.loc 1 3684 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.244
	movl	28(%rax), %eax	# img.244_2939->structure, D.15035
	testl	%eax, %eax	# D.15035
	jne	.L894	#,
	movq	-24(%rbp), %rax	# fs, tmp4057
	movq	6520(%rax), %rax	# fs_1->field_frame, D.15040
	movl	-44(%rbp), %edx	# i, tmp4058
	movslq	%edx, %rdx	# tmp4058, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15040
	movq	(%rax), %rdx	# *_2944, D.15042
	movl	-40(%rbp), %eax	# j, tmp4059
	cltq
	addq	%rdx, %rax	# D.15042, D.15042
	movzbl	(%rax), %eax	# *_2947, D.15044
	testb	%al, %al	# D.15044
	jne	.L895	#,
.L894:
	.loc 1 3684 0 discriminator 2
	movq	img(%rip), %rax	# img, img.245
	movl	72400(%rax), %eax	# img.245_2949->MbaffFrameFlag, D.15035
	testl	%eax, %eax	# D.15035
	je	.L896	#,
	.loc 1 3684 0 discriminator 1
	movq	-24(%rbp), %rax	# fs, tmp4060
	movq	6520(%rax), %rax	# fs_1->field_frame, D.15040
	movl	-44(%rbp), %edx	# i, tmp4061
	movslq	%edx, %rdx	# tmp4061, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15040
	movq	(%rax), %rdx	# *_2954, D.15042
	movl	-40(%rbp), %eax	# j, tmp4062
	cltq
	addq	%rdx, %rax	# D.15042, D.15042
	movzbl	(%rax), %eax	# *_2957, D.15044
	testb	%al, %al	# D.15044
	je	.L896	#,
.L895:
	.loc 1 3686 0 is_stmt 1
	movq	-56(%rbp), %rax	# p, tmp4063
	movq	1616(%rax), %rax	# p_159(D)->mv, D.15045
	movq	(%rax), %rax	# *_3019, D.15046
	movl	-44(%rbp), %edx	# i, tmp4064
	movslq	%edx, %rdx	# tmp4064, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15046
	movq	(%rax), %rax	# *_3023, D.15047
	movl	-40(%rbp), %edx	# j, tmp4065
	movslq	%edx, %rdx	# tmp4065, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_3027, D.15048
	leaq	2(%rax), %rdx	#, D.15048
	movq	-56(%rbp), %rax	# p, tmp4066
	movq	1616(%rax), %rax	# p_159(D)->mv, D.15045
	movq	(%rax), %rax	# *_3030, D.15046
	movl	-44(%rbp), %ecx	# i, tmp4067
	movslq	%ecx, %rcx	# tmp4067, D.15041
	salq	$3, %rcx	#, D.15041
	addq	%rcx, %rax	# D.15041, D.15046
	movq	(%rax), %rax	# *_3034, D.15047
	movl	-40(%rbp), %ecx	# j, tmp4068
	movslq	%ecx, %rcx	# tmp4068, D.15041
	salq	$3, %rcx	#, D.15041
	addq	%rcx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_3038, D.15048
	addq	$2, %rax	#, D.15048
	movzwl	(%rax), %eax	# *_3040, D.15049
	addl	%eax, %eax	# D.15055
	movw	%ax, (%rdx)	# D.15049, *_3029
	.loc 1 3687 0
	movq	-56(%rbp), %rax	# p, tmp4069
	movq	1616(%rax), %rax	# p_159(D)->mv, D.15045
	addq	$8, %rax	#, D.15045
	movq	(%rax), %rax	# *_3046, D.15046
	movl	-44(%rbp), %edx	# i, tmp4070
	movslq	%edx, %rdx	# tmp4070, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15046
	movq	(%rax), %rax	# *_3050, D.15047
	movl	-40(%rbp), %edx	# j, tmp4071
	movslq	%edx, %rdx	# tmp4071, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_3054, D.15048
	leaq	2(%rax), %rdx	#, D.15048
	movq	-56(%rbp), %rax	# p, tmp4072
	movq	1616(%rax), %rax	# p_159(D)->mv, D.15045
	addq	$8, %rax	#, D.15045
	movq	(%rax), %rax	# *_3058, D.15046
	movl	-44(%rbp), %ecx	# i, tmp4073
	movslq	%ecx, %rcx	# tmp4073, D.15041
	salq	$3, %rcx	#, D.15041
	addq	%rcx, %rax	# D.15041, D.15046
	movq	(%rax), %rax	# *_3062, D.15047
	movl	-40(%rbp), %ecx	# j, tmp4074
	movslq	%ecx, %rcx	# tmp4074, D.15041
	salq	$3, %rcx	#, D.15041
	addq	%rcx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_3066, D.15048
	addq	$2, %rax	#, D.15048
	movzwl	(%rax), %eax	# *_3068, D.15049
	addl	%eax, %eax	# D.15055
	movw	%ax, (%rdx)	# D.15049, *_3056
	jmp	.L897	#
.L896:
	.loc 1 3689 0
	movq	img(%rip), %rax	# img, img.246
	movl	28(%rax), %eax	# img.246_2959->structure, D.15035
	testl	%eax, %eax	# D.15035
	je	.L897	#,
	.loc 1 3689 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# fs, tmp4075
	movq	6520(%rax), %rax	# fs_1->field_frame, D.15040
	movl	-44(%rbp), %edx	# i, tmp4076
	movslq	%edx, %rdx	# tmp4076, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15040
	movq	(%rax), %rdx	# *_2964, D.15042
	movl	-40(%rbp), %eax	# j, tmp4077
	cltq
	addq	%rdx, %rax	# D.15042, D.15042
	movzbl	(%rax), %eax	# *_2967, D.15044
	testb	%al, %al	# D.15044
	jne	.L897	#,
	.loc 1 3691 0 is_stmt 1
	movq	-56(%rbp), %rax	# p, tmp4078
	movq	1616(%rax), %rax	# p_159(D)->mv, D.15045
	movq	(%rax), %rax	# *_2969, D.15046
	movl	-44(%rbp), %edx	# i, tmp4079
	movslq	%edx, %rdx	# tmp4079, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15046
	movq	(%rax), %rax	# *_2973, D.15047
	movl	-40(%rbp), %edx	# j, tmp4080
	movslq	%edx, %rdx	# tmp4080, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_2977, D.15048
	leaq	2(%rax), %rdx	#, D.15048
	movq	-56(%rbp), %rax	# p, tmp4081
	movq	1616(%rax), %rax	# p_159(D)->mv, D.15045
	movq	(%rax), %rax	# *_2980, D.15046
	movl	-44(%rbp), %ecx	# i, tmp4082
	movslq	%ecx, %rcx	# tmp4082, D.15041
	salq	$3, %rcx	#, D.15041
	addq	%rcx, %rax	# D.15041, D.15046
	movq	(%rax), %rax	# *_2984, D.15047
	movl	-40(%rbp), %ecx	# j, tmp4083
	movslq	%ecx, %rcx	# tmp4083, D.15041
	salq	$3, %rcx	#, D.15041
	addq	%rcx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_2988, D.15048
	addq	$2, %rax	#, D.15048
	movzwl	(%rax), %eax	# *_2990, D.15049
	movl	%eax, %ecx	# D.15049, tmp4084
	shrw	$15, %cx	#, tmp4084
	addl	%ecx, %eax	# tmp4084, tmp4085
	sarw	%ax	# tmp4086
	movw	%ax, (%rdx)	# D.15049, *_2979
	.loc 1 3692 0
	movq	-56(%rbp), %rax	# p, tmp4087
	movq	1616(%rax), %rax	# p_159(D)->mv, D.15045
	addq	$8, %rax	#, D.15045
	movq	(%rax), %rax	# *_2994, D.15046
	movl	-44(%rbp), %edx	# i, tmp4088
	movslq	%edx, %rdx	# tmp4088, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15046
	movq	(%rax), %rax	# *_2998, D.15047
	movl	-40(%rbp), %edx	# j, tmp4089
	movslq	%edx, %rdx	# tmp4089, D.15041
	salq	$3, %rdx	#, D.15041
	addq	%rdx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_3002, D.15048
	leaq	2(%rax), %rdx	#, D.15048
	movq	-56(%rbp), %rax	# p, tmp4090
	movq	1616(%rax), %rax	# p_159(D)->mv, D.15045
	addq	$8, %rax	#, D.15045
	movq	(%rax), %rax	# *_3006, D.15046
	movl	-44(%rbp), %ecx	# i, tmp4091
	movslq	%ecx, %rcx	# tmp4091, D.15041
	salq	$3, %rcx	#, D.15041
	addq	%rcx, %rax	# D.15041, D.15046
	movq	(%rax), %rax	# *_3010, D.15047
	movl	-40(%rbp), %ecx	# j, tmp4092
	movslq	%ecx, %rcx	# tmp4092, D.15041
	salq	$3, %rcx	#, D.15041
	addq	%rcx, %rax	# D.15041, D.15047
	movq	(%rax), %rax	# *_3014, D.15048
	addq	$2, %rax	#, D.15048
	movzwl	(%rax), %eax	# *_3016, D.15049
	movl	%eax, %ecx	# D.15049, tmp4093
	shrw	$15, %cx	#, tmp4093
	addl	%ecx, %eax	# tmp4093, tmp4094
	sarw	%ax	# tmp4095
	movw	%ax, (%rdx)	# D.15049, *_3004
.L897:
	.loc 1 3681 0
	addl	$1, -44(%rbp)	#, i
.L893:
	.loc 1 3681 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# fs, tmp4096
	movl	6392(%rax), %eax	# fs_1->size_x, D.15035
	leal	3(%rax), %edx	#, tmp4098
	testl	%eax, %eax	# tmp4097
	cmovs	%edx, %eax	# tmp4098,, tmp4097
	sarl	$2, %eax	#, tmp4099
	cmpl	-44(%rbp), %eax	# i, D.15035
	jg	.L898	#,
	.loc 1 3679 0 is_stmt 1
	addl	$1, -40(%rbp)	#, j
.L892:
	.loc 1 3679 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# fs, tmp4100
	movl	6396(%rax), %eax	# fs_1->size_y, D.15035
	leal	3(%rax), %edx	#, tmp4102
	testl	%eax, %eax	# tmp4101
	cmovs	%edx, %eax	# tmp4102,, tmp4101
	sarl	$2, %eax	#, tmp4103
	cmpl	-40(%rbp), %eax	# j, D.15035
	jg	.L899	#,
	.loc 1 3698 0 is_stmt 1
	movl	$0, -40(%rbp)	#, j
	jmp	.L900	#
.L918:
	.loc 1 3700 0
	movl	$0, -44(%rbp)	#, i
	jmp	.L901	#
.L917:
.LBB8:
	.loc 1 3704 0
	cmpl	$0, -40(%rbp)	#, j
	jne	.L902	#,
	.loc 1 3706 0
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.248
	movl	4(%rax), %edx	# enc_picture.248_3082->poc, D.15035
	movl	-40(%rbp), %eax	# j, tmp4104
	cltq
	leaq	0(,%rax,8), %rcx	#, D.15041
	movq	-64(%rbp), %rax	# listX, tmp4105
	addq	%rcx, %rax	# D.15041, D.15033
	movq	(%rax), %rax	# *_3086, D.15034
	movl	-44(%rbp), %ecx	# i, tmp4106
	movslq	%ecx, %rcx	# tmp4106, D.15041
	salq	$3, %rcx	#, D.15041
	addq	%rcx, %rax	# D.15041, D.15034
	movq	(%rax), %rax	# *_3090, D.15038
	movl	4(%rax), %eax	# _3091->poc, D.15035
	subl	%eax, %edx	# D.15035, D.15035
	movl	%edx, %eax	# D.15035, D.15035
	cmpl	$-128, %eax	#, D.15035
	jl	.L903	#,
	.loc 1 3706 0 is_stmt 0 discriminator 1
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.249
	movl	4(%rax), %edx	# enc_picture.249_3094->poc, D.15035
	movl	-40(%rbp), %eax	# j, tmp4107
	cltq
	leaq	0(,%rax,8), %rcx	#, D.15041
	movq	-64(%rbp), %rax	# listX, tmp4108
	addq	%rcx, %rax	# D.15041, D.15033
	movq	(%rax), %rax	# *_3098, D.15034
	movl	-44(%rbp), %ecx	# i, tmp4109
	movslq	%ecx, %rcx	# tmp4109, D.15041
	salq	$3, %rcx	#, D.15041
	addq	%rcx, %rax	# D.15041, D.15034
	movq	(%rax), %rax	# *_3102, D.15038
	movl	4(%rax), %eax	# _3103->poc, D.15035
	subl	%eax, %edx	# D.15035, D.15035
	movl	%edx, %eax	# D.15035, D.15035
	movl	$127, %edx	#, tmp4110
	cmpl	$127, %eax	#, D.15035
	cmovg	%edx, %eax	# D.15035,, tmp4110, iftmp.247
	jmp	.L904	#
.L903:
	.loc 1 3706 0 discriminator 2
	movl	$-128, %eax	#, iftmp.247
.L904:
	.loc 1 3706 0 discriminator 1
	movl	%eax, -36(%rbp)	# iftmp.247, iTRb
	jmp	.L905	#
.L902:
	.loc 1 3708 0 is_stmt 1
	cmpl	$2, -40(%rbp)	#, j
	jne	.L906	#,
	.loc 1 3710 0
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.251
	movl	8(%rax), %edx	# enc_picture.251_3109->top_poc, D.15035
	movl	-40(%rbp), %eax	# j, tmp4111
	cltq
	leaq	0(,%rax,8), %rcx	#, D.15041
	movq	-64(%rbp), %rax	# listX, tmp4112
	addq	%rcx, %rax	# D.15041, D.15033
	movq	(%rax), %rax	# *_3113, D.15034
	movl	-44(%rbp), %ecx	# i, tmp4113
	movslq	%ecx, %rcx	# tmp4113, D.15041
	salq	$3, %rcx	#, D.15041
	addq	%rcx, %rax	# D.15041, D.15034
	movq	(%rax), %rax	# *_3117, D.15038
	movl	4(%rax), %eax	# _3118->poc, D.15035
	subl	%eax, %edx	# D.15035, D.15035
	movl	%edx, %eax	# D.15035, D.15035
	cmpl	$-128, %eax	#, D.15035
	jl	.L907	#,
	.loc 1 3710 0 is_stmt 0 discriminator 1
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.252
	movl	8(%rax), %edx	# enc_picture.252_3121->top_poc, D.15035
	movl	-40(%rbp), %eax	# j, tmp4114
	cltq
	leaq	0(,%rax,8), %rcx	#, D.15041
	movq	-64(%rbp), %rax	# listX, tmp4115
	addq	%rcx, %rax	# D.15041, D.15033
	movq	(%rax), %rax	# *_3125, D.15034
	movl	-44(%rbp), %ecx	# i, tmp4116
	movslq	%ecx, %rcx	# tmp4116, D.15041
	salq	$3, %rcx	#, D.15041
	addq	%rcx, %rax	# D.15041, D.15034
	movq	(%rax), %rax	# *_3129, D.15038
	movl	4(%rax), %eax	# _3130->poc, D.15035
	subl	%eax, %edx	# D.15035, D.15035
	movl	%edx, %eax	# D.15035, D.15035
	movl	$127, %edx	#, tmp4117
	cmpl	$127, %eax	#, D.15035
	cmovg	%edx, %eax	# D.15035,, tmp4117, iftmp.250
	jmp	.L908	#
.L907:
	.loc 1 3710 0 discriminator 2
	movl	$-128, %eax	#, iftmp.250
.L908:
	movl	%eax, -36(%rbp)	# iftmp.250, iTRb
	jmp	.L905	#
.L906:
	.loc 1 3714 0 is_stmt 1
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.254
	movl	12(%rax), %edx	# enc_picture.254_3136->bottom_poc, D.15035
	movl	-40(%rbp), %eax	# j, tmp4118
	cltq
	leaq	0(,%rax,8), %rcx	#, D.15041
	movq	-64(%rbp), %rax	# listX, tmp4119
	addq	%rcx, %rax	# D.15041, D.15033
	movq	(%rax), %rax	# *_3140, D.15034
	movl	-44(%rbp), %ecx	# i, tmp4120
	movslq	%ecx, %rcx	# tmp4120, D.15041
	salq	$3, %rcx	#, D.15041
	addq	%rcx, %rax	# D.15041, D.15034
	movq	(%rax), %rax	# *_3144, D.15038
	movl	4(%rax), %eax	# _3145->poc, D.15035
	subl	%eax, %edx	# D.15035, D.15035
	movl	%edx, %eax	# D.15035, D.15035
	cmpl	$-128, %eax	#, D.15035
	jl	.L909	#,
	.loc 1 3714 0 is_stmt 0 discriminator 1
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.255
	movl	12(%rax), %edx	# enc_picture.255_3148->bottom_poc, D.15035
	movl	-40(%rbp), %eax	# j, tmp4121
	cltq
	leaq	0(,%rax,8), %rcx	#, D.15041
	movq	-64(%rbp), %rax	# listX, tmp4122
	addq	%rcx, %rax	# D.15041, D.15033
	movq	(%rax), %rax	# *_3152, D.15034
	movl	-44(%rbp), %ecx	# i, tmp4123
	movslq	%ecx, %rcx	# tmp4123, D.15041
	salq	$3, %rcx	#, D.15041
	addq	%rcx, %rax	# D.15041, D.15034
	movq	(%rax), %rax	# *_3156, D.15038
	movl	4(%rax), %eax	# _3157->poc, D.15035
	subl	%eax, %edx	# D.15035, D.15035
	movl	%edx, %eax	# D.15035, D.15035
	movl	$127, %edx	#, tmp4124
	cmpl	$127, %eax	#, D.15035
	cmovg	%edx, %eax	# D.15035,, tmp4124, iftmp.253
	jmp	.L910	#
.L909:
	.loc 1 3714 0 discriminator 2
	movl	$-128, %eax	#, iftmp.253
.L910:
	.loc 1 3714 0 discriminator 3
	movl	%eax, -36(%rbp)	# iftmp.253, iTRb
.L905:
	.loc 1 3717 0 is_stmt 1
	movl	-40(%rbp), %eax	# j, tmp4125
	addl	$1, %eax	#, D.15035
	cltq
	leaq	0(,%rax,8), %rdx	#, D.15041
	movq	-64(%rbp), %rax	# listX, tmp4126
	addq	%rdx, %rax	# D.15041, D.15033
	movq	(%rax), %rax	# *_3166, D.15034
	movq	(%rax), %rax	# *_3167, D.15038
	movl	4(%rax), %edx	# _3168->poc, D.15035
	movl	-40(%rbp), %eax	# j, tmp4127
	cltq
	leaq	0(,%rax,8), %rcx	#, D.15041
	movq	-64(%rbp), %rax	# listX, tmp4128
	addq	%rcx, %rax	# D.15041, D.15033
	movq	(%rax), %rax	# *_3172, D.15034
	movl	-44(%rbp), %ecx	# i, tmp4129
	movslq	%ecx, %rcx	# tmp4129, D.15041
	salq	$3, %rcx	#, D.15041
	addq	%rcx, %rax	# D.15041, D.15034
	movq	(%rax), %rax	# *_3176, D.15038
	movl	4(%rax), %eax	# _3177->poc, D.15035
	subl	%eax, %edx	# D.15035, D.15035
	movl	%edx, %eax	# D.15035, D.15035
	cmpl	$-128, %eax	#, D.15035
	jl	.L911	#,
	.loc 1 3717 0 is_stmt 0 discriminator 1
	movl	-40(%rbp), %eax	# j, tmp4130
	addl	$1, %eax	#, D.15035
	cltq
	leaq	0(,%rax,8), %rdx	#, D.15041
	movq	-64(%rbp), %rax	# listX, tmp4131
	addq	%rdx, %rax	# D.15041, D.15033
	movq	(%rax), %rax	# *_3183, D.15034
	movq	(%rax), %rax	# *_3184, D.15038
	movl	4(%rax), %edx	# _3185->poc, D.15035
	movl	-40(%rbp), %eax	# j, tmp4132
	cltq
	leaq	0(,%rax,8), %rcx	#, D.15041
	movq	-64(%rbp), %rax	# listX, tmp4133
	addq	%rcx, %rax	# D.15041, D.15033
	movq	(%rax), %rax	# *_3189, D.15034
	movl	-44(%rbp), %ecx	# i, tmp4134
	movslq	%ecx, %rcx	# tmp4134, D.15041
	salq	$3, %rcx	#, D.15041
	addq	%rcx, %rax	# D.15041, D.15034
	movq	(%rax), %rax	# *_3193, D.15038
	movl	4(%rax), %eax	# _3194->poc, D.15035
	subl	%eax, %edx	# D.15035, D.15035
	movl	%edx, %eax	# D.15035, D.15035
	movl	$127, %edx	#, tmp4135
	cmpl	$127, %eax	#, D.15035
	cmovg	%edx, %eax	# D.15035,, tmp4135, iftmp.256
	jmp	.L912	#
.L911:
	.loc 1 3717 0 discriminator 2
	movl	$-128, %eax	#, iftmp.256
.L912:
	.loc 1 3717 0 discriminator 3
	movl	%eax, -32(%rbp)	# iftmp.256, iTRp
	.loc 1 3719 0 is_stmt 1 discriminator 3
	cmpl	$0, -32(%rbp)	#, iTRp
	je	.L913	#,
	.loc 1 3721 0
	movl	-32(%rbp), %eax	# iTRp, tmp4136
	movl	%eax, %edx	# tmp4136, tmp4137
	shrl	$31, %edx	#, tmp4137
	addl	%edx, %eax	# tmp4137, tmp4138
	sarl	%eax	# tmp4139
	cltd
	xorl	%edx, %eax	# tmp4140, D.15035
	subl	%edx, %eax	# tmp4140, D.15035
	addl	$16384, %eax	#, D.15035
	cltd
	idivl	-32(%rbp)	# iTRp
	movl	%eax, -28(%rbp)	# tmp4142, prescale
	.loc 1 3722 0
	movq	img(%rip), %rsi	# img, img.257
	movl	-36(%rbp), %eax	# iTRb, tmp4144
	imull	-28(%rbp), %eax	# prescale, D.15035
	addl	$32, %eax	#, D.15035
	sarl	$6, %eax	#, D.15035
	cmpl	$-1024, %eax	#, D.15035
	jl	.L914	#,
	.loc 1 3722 0 is_stmt 0 discriminator 1
	movl	-36(%rbp), %eax	# iTRb, tmp4145
	imull	-28(%rbp), %eax	# prescale, D.15035
	addl	$32, %eax	#, D.15035
	sarl	$6, %eax	#, D.15035
	movl	$1023, %edx	#, tmp4146
	cmpl	$1023, %eax	#, D.15035
	cmovle	%eax, %edx	# D.15035,, iftmp.258
	jmp	.L915	#
.L914:
	.loc 1 3722 0 discriminator 2
	movl	$-1024, %edx	#, iftmp.258
.L915:
	.loc 1 3722 0 discriminator 3
	movl	-44(%rbp), %eax	# i, tmp4148
	movslq	%eax, %rdi	# tmp4148, tmp4147
	movl	-40(%rbp), %eax	# j, tmp4150
	movslq	%eax, %rcx	# tmp4150, tmp4149
	movq	%rcx, %rax	# tmp4149, tmp4151
	salq	$4, %rax	#, tmp4152
	subq	%rcx, %rax	# tmp4149, tmp4151
	addq	%rdi, %rax	# tmp4147, tmp4153
	addq	$18004, %rax	#, tmp4154
	movl	%edx, (%rsi,%rax,4)	# iftmp.258, img.257_3204->mvscale
	jmp	.L916	#
.L913:
	.loc 1 3726 0 is_stmt 1
	movq	img(%rip), %rcx	# img, img.259
	movl	-44(%rbp), %eax	# i, tmp4156
	movslq	%eax, %rsi	# tmp4156, tmp4155
	movl	-40(%rbp), %eax	# j, tmp4158
	movslq	%eax, %rdx	# tmp4158, tmp4157
	movq	%rdx, %rax	# tmp4157, tmp4159
	salq	$4, %rax	#, tmp4160
	subq	%rdx, %rax	# tmp4157, tmp4159
	addq	%rsi, %rax	# tmp4155, tmp4161
	addq	$18004, %rax	#, tmp4162
	movl	$9999, (%rcx,%rax,4)	#, img.259_3213->mvscale
.L916:
.LBE8:
	.loc 1 3700 0
	addl	$1, -44(%rbp)	#, i
.L901:
	.loc 1 3700 0 is_stmt 0 discriminator 1
	movl	-40(%rbp), %eax	# j, tmp4164
	cltq
	movl	listXsize(,%rax,4), %eax	# listXsize, D.15035
	cmpl	-44(%rbp), %eax	# i, D.15035
	jg	.L917	#,
	.loc 1 3698 0 is_stmt 1
	addl	$2, -40(%rbp)	#, j
.L900:
	.loc 1 3698 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.260
	movl	72400(%rax), %eax	# img.260_3076->MbaffFrameFlag, D.15035
	sall	$2, %eax	#, D.15035
	addl	$2, %eax	#, D.15035
	cmpl	-40(%rbp), %eax	# j, D.15035
	jg	.L918	#,
.L694:
	.loc 1 3731 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE65:
	.size	compute_colocated, .-compute_colocated
.Letext0:
	.file 2 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 3 "defines.h"
	.file 4 "parsetcommon.h"
	.file 5 "global.h"
	.file 6 "mbuffer.h"
	.file 7 "image.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x3ec1
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF748
	.byte	0x1
	.long	.LASF749
	.long	.LASF750
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
	.uleb128 0x4
	.long	0x34
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
	.byte	0x8
	.long	0x34
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x7
	.long	.LASF11
	.byte	0x2
	.byte	0xc5
	.long	0x5e
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x6
	.byte	0x8
	.long	0xa8
	.uleb128 0x8
	.uleb128 0x7
	.long	.LASF12
	.byte	0x3
	.byte	0x1e
	.long	0x3b
	.uleb128 0x9
	.byte	0x4
	.byte	0x4
	.byte	0x2a
	.long	0xc9
	.uleb128 0xa
	.long	.LASF13
	.sleb128 0
	.uleb128 0xa
	.long	.LASF14
	.sleb128 1
	.byte	0
	.uleb128 0x7
	.long	.LASF15
	.byte	0x4
	.byte	0x2d
	.long	0xb4
	.uleb128 0xb
	.value	0x19c
	.byte	0x4
	.byte	0x30
	.long	0x15b
	.uleb128 0xc
	.long	.LASF16
	.byte	0x4
	.byte	0x32
	.long	0x49
	.byte	0
	.uleb128 0xc
	.long	.LASF17
	.byte	0x4
	.byte	0x33
	.long	0x49
	.byte	0x4
	.uleb128 0xc
	.long	.LASF18
	.byte	0x4
	.byte	0x34
	.long	0x49
	.byte	0x8
	.uleb128 0xc
	.long	.LASF19
	.byte	0x4
	.byte	0x35
	.long	0x15b
	.byte	0xc
	.uleb128 0xc
	.long	.LASF20
	.byte	0x4
	.byte	0x36
	.long	0x15b
	.byte	0x8c
	.uleb128 0xd
	.long	.LASF21
	.byte	0x4
	.byte	0x37
	.long	0x15b
	.value	0x10c
	.uleb128 0xd
	.long	.LASF22
	.byte	0x4
	.byte	0x38
	.long	0x49
	.value	0x18c
	.uleb128 0xd
	.long	.LASF23
	.byte	0x4
	.byte	0x39
	.long	0x49
	.value	0x190
	.uleb128 0xd
	.long	.LASF24
	.byte	0x4
	.byte	0x3a
	.long	0x49
	.value	0x194
	.uleb128 0xd
	.long	.LASF25
	.byte	0x4
	.byte	0x3b
	.long	0x49
	.value	0x198
	.byte	0
	.uleb128 0x4
	.long	0x49
	.long	0x16b
	.uleb128 0x5
	.long	0x75
	.byte	0x1f
	.byte	0
	.uleb128 0x7
	.long	.LASF26
	.byte	0x4
	.byte	0x3c
	.long	0xd4
	.uleb128 0xb
	.value	0x3b4
	.byte	0x4
	.byte	0x3f
	.long	0x317
	.uleb128 0xc
	.long	.LASF27
	.byte	0x4
	.byte	0x41
	.long	0xc9
	.byte	0
	.uleb128 0xc
	.long	.LASF28
	.byte	0x4
	.byte	0x42
	.long	0x49
	.byte	0x4
	.uleb128 0xc
	.long	.LASF29
	.byte	0x4
	.byte	0x43
	.long	0x49
	.byte	0x8
	.uleb128 0xc
	.long	.LASF30
	.byte	0x4
	.byte	0x44
	.long	0x49
	.byte	0xc
	.uleb128 0xc
	.long	.LASF31
	.byte	0x4
	.byte	0x45
	.long	0xc9
	.byte	0x10
	.uleb128 0xc
	.long	.LASF32
	.byte	0x4
	.byte	0x46
	.long	0xc9
	.byte	0x14
	.uleb128 0xc
	.long	.LASF33
	.byte	0x4
	.byte	0x47
	.long	0xc9
	.byte	0x18
	.uleb128 0xc
	.long	.LASF34
	.byte	0x4
	.byte	0x48
	.long	0x49
	.byte	0x1c
	.uleb128 0xc
	.long	.LASF35
	.byte	0x4
	.byte	0x49
	.long	0xc9
	.byte	0x20
	.uleb128 0xc
	.long	.LASF36
	.byte	0x4
	.byte	0x4a
	.long	0xc9
	.byte	0x24
	.uleb128 0xc
	.long	.LASF37
	.byte	0x4
	.byte	0x4b
	.long	0x49
	.byte	0x28
	.uleb128 0xc
	.long	.LASF38
	.byte	0x4
	.byte	0x4c
	.long	0x49
	.byte	0x2c
	.uleb128 0xc
	.long	.LASF39
	.byte	0x4
	.byte	0x4d
	.long	0x49
	.byte	0x30
	.uleb128 0xc
	.long	.LASF40
	.byte	0x4
	.byte	0x4e
	.long	0xc9
	.byte	0x34
	.uleb128 0xc
	.long	.LASF41
	.byte	0x4
	.byte	0x4f
	.long	0x49
	.byte	0x38
	.uleb128 0xc
	.long	.LASF42
	.byte	0x4
	.byte	0x50
	.long	0x49
	.byte	0x3c
	.uleb128 0xc
	.long	.LASF43
	.byte	0x4
	.byte	0x51
	.long	0xc9
	.byte	0x40
	.uleb128 0xc
	.long	.LASF44
	.byte	0x4
	.byte	0x52
	.long	0x49
	.byte	0x44
	.uleb128 0xc
	.long	.LASF45
	.byte	0x4
	.byte	0x53
	.long	0x49
	.byte	0x48
	.uleb128 0xc
	.long	.LASF46
	.byte	0x4
	.byte	0x54
	.long	0xc9
	.byte	0x4c
	.uleb128 0xc
	.long	.LASF47
	.byte	0x4
	.byte	0x55
	.long	0xc9
	.byte	0x50
	.uleb128 0xc
	.long	.LASF48
	.byte	0x4
	.byte	0x56
	.long	0x16b
	.byte	0x54
	.uleb128 0xd
	.long	.LASF49
	.byte	0x4
	.byte	0x57
	.long	0xc9
	.value	0x1f0
	.uleb128 0xd
	.long	.LASF50
	.byte	0x4
	.byte	0x58
	.long	0x16b
	.value	0x1f4
	.uleb128 0xd
	.long	.LASF51
	.byte	0x4
	.byte	0x5a
	.long	0xc9
	.value	0x390
	.uleb128 0xd
	.long	.LASF52
	.byte	0x4
	.byte	0x5b
	.long	0xc9
	.value	0x394
	.uleb128 0xd
	.long	.LASF53
	.byte	0x4
	.byte	0x5c
	.long	0xc9
	.value	0x398
	.uleb128 0xd
	.long	.LASF54
	.byte	0x4
	.byte	0x5d
	.long	0x49
	.value	0x39c
	.uleb128 0xd
	.long	.LASF55
	.byte	0x4
	.byte	0x5e
	.long	0x49
	.value	0x3a0
	.uleb128 0xd
	.long	.LASF56
	.byte	0x4
	.byte	0x5f
	.long	0x49
	.value	0x3a4
	.uleb128 0xd
	.long	.LASF57
	.byte	0x4
	.byte	0x60
	.long	0x49
	.value	0x3a8
	.uleb128 0xd
	.long	.LASF58
	.byte	0x4
	.byte	0x61
	.long	0x49
	.value	0x3ac
	.uleb128 0xd
	.long	.LASF59
	.byte	0x4
	.byte	0x62
	.long	0x49
	.value	0x3b0
	.byte	0
	.uleb128 0x7
	.long	.LASF60
	.byte	0x4
	.byte	0x63
	.long	0x176
	.uleb128 0x4
	.long	0x34
	.long	0x332
	.uleb128 0x5
	.long	0x75
	.byte	0x7
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xa9
	.uleb128 0xb
	.value	0x854
	.byte	0x4
	.byte	0x95
	.long	0x4f4
	.uleb128 0xc
	.long	.LASF61
	.byte	0x4
	.byte	0x97
	.long	0xc9
	.byte	0
	.uleb128 0xc
	.long	.LASF62
	.byte	0x4
	.byte	0x99
	.long	0x49
	.byte	0x4
	.uleb128 0xc
	.long	.LASF63
	.byte	0x4
	.byte	0x9a
	.long	0xc9
	.byte	0x8
	.uleb128 0xc
	.long	.LASF64
	.byte	0x4
	.byte	0x9b
	.long	0xc9
	.byte	0xc
	.uleb128 0xc
	.long	.LASF65
	.byte	0x4
	.byte	0x9c
	.long	0xc9
	.byte	0x10
	.uleb128 0xc
	.long	.LASF66
	.byte	0x4
	.byte	0x9d
	.long	0xc9
	.byte	0x14
	.uleb128 0xc
	.long	.LASF67
	.byte	0x4
	.byte	0x9e
	.long	0x49
	.byte	0x18
	.uleb128 0xc
	.long	.LASF68
	.byte	0x4
	.byte	0x9f
	.long	0x49
	.byte	0x1c
	.uleb128 0xc
	.long	.LASF69
	.byte	0x4
	.byte	0xa0
	.long	0x49
	.byte	0x20
	.uleb128 0xc
	.long	.LASF70
	.byte	0x4
	.byte	0xa2
	.long	0xc9
	.byte	0x24
	.uleb128 0xc
	.long	.LASF71
	.byte	0x4
	.byte	0xa3
	.long	0x322
	.byte	0x28
	.uleb128 0xc
	.long	.LASF72
	.byte	0x4
	.byte	0xa5
	.long	0x49
	.byte	0x48
	.uleb128 0xc
	.long	.LASF73
	.byte	0x4
	.byte	0xa6
	.long	0x49
	.byte	0x4c
	.uleb128 0xc
	.long	.LASF74
	.byte	0x4
	.byte	0xa7
	.long	0x49
	.byte	0x50
	.uleb128 0xc
	.long	.LASF75
	.byte	0x4
	.byte	0xa8
	.long	0x49
	.byte	0x54
	.uleb128 0xc
	.long	.LASF76
	.byte	0x4
	.byte	0xaa
	.long	0x49
	.byte	0x58
	.uleb128 0xc
	.long	.LASF77
	.byte	0x4
	.byte	0xac
	.long	0xc9
	.byte	0x5c
	.uleb128 0xc
	.long	.LASF78
	.byte	0x4
	.byte	0xad
	.long	0x34
	.byte	0x60
	.uleb128 0xc
	.long	.LASF79
	.byte	0x4
	.byte	0xae
	.long	0x34
	.byte	0x64
	.uleb128 0xc
	.long	.LASF80
	.byte	0x4
	.byte	0xaf
	.long	0x49
	.byte	0x68
	.uleb128 0xc
	.long	.LASF81
	.byte	0x4
	.byte	0xb1
	.long	0x4f4
	.byte	0x6c
	.uleb128 0xd
	.long	.LASF82
	.byte	0x4
	.byte	0xb2
	.long	0x49
	.value	0x46c
	.uleb128 0xd
	.long	.LASF83
	.byte	0x4
	.byte	0xb3
	.long	0xc9
	.value	0x470
	.uleb128 0xd
	.long	.LASF84
	.byte	0x4
	.byte	0xb4
	.long	0x49
	.value	0x474
	.uleb128 0xd
	.long	.LASF85
	.byte	0x4
	.byte	0xb5
	.long	0x49
	.value	0x478
	.uleb128 0xd
	.long	.LASF86
	.byte	0x4
	.byte	0xb6
	.long	0xc9
	.value	0x47c
	.uleb128 0xd
	.long	.LASF87
	.byte	0x4
	.byte	0xb8
	.long	0xc9
	.value	0x480
	.uleb128 0xd
	.long	.LASF88
	.byte	0x4
	.byte	0xb9
	.long	0xc9
	.value	0x484
	.uleb128 0xd
	.long	.LASF89
	.byte	0x4
	.byte	0xba
	.long	0xc9
	.value	0x488
	.uleb128 0xd
	.long	.LASF90
	.byte	0x4
	.byte	0xbb
	.long	0x49
	.value	0x48c
	.uleb128 0xd
	.long	.LASF91
	.byte	0x4
	.byte	0xbc
	.long	0x49
	.value	0x490
	.uleb128 0xd
	.long	.LASF92
	.byte	0x4
	.byte	0xbd
	.long	0x49
	.value	0x494
	.uleb128 0xd
	.long	.LASF93
	.byte	0x4
	.byte	0xbe
	.long	0x49
	.value	0x498
	.uleb128 0xd
	.long	.LASF94
	.byte	0x4
	.byte	0xbf
	.long	0xc9
	.value	0x49c
	.uleb128 0xd
	.long	.LASF95
	.byte	0x4
	.byte	0xc0
	.long	0x317
	.value	0x4a0
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x504
	.uleb128 0x5
	.long	0x75
	.byte	0xff
	.byte	0
	.uleb128 0x7
	.long	.LASF96
	.byte	0x4
	.byte	0xc1
	.long	0x338
	.uleb128 0x7
	.long	.LASF97
	.byte	0x5
	.byte	0x3e
	.long	0x90
	.uleb128 0x9
	.byte	0x4
	.byte	0x5
	.byte	0x9b
	.long	0x559
	.uleb128 0xa
	.long	.LASF98
	.sleb128 0
	.uleb128 0xa
	.long	.LASF99
	.sleb128 1
	.uleb128 0xa
	.long	.LASF100
	.sleb128 2
	.uleb128 0xa
	.long	.LASF101
	.sleb128 3
	.uleb128 0xa
	.long	.LASF102
	.sleb128 4
	.uleb128 0xa
	.long	.LASF103
	.sleb128 5
	.uleb128 0xa
	.long	.LASF104
	.sleb128 6
	.uleb128 0xa
	.long	.LASF105
	.sleb128 7
	.uleb128 0xa
	.long	.LASF106
	.sleb128 8
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.byte	0x5
	.byte	0xba
	.long	0x574
	.uleb128 0xa
	.long	.LASF107
	.sleb128 0
	.uleb128 0xa
	.long	.LASF108
	.sleb128 1
	.uleb128 0xa
	.long	.LASF109
	.sleb128 2
	.byte	0
	.uleb128 0x7
	.long	.LASF110
	.byte	0x5
	.byte	0xbe
	.long	0x559
	.uleb128 0x9
	.byte	0x4
	.byte	0x5
	.byte	0xc1
	.long	0x5a6
	.uleb128 0xa
	.long	.LASF111
	.sleb128 0
	.uleb128 0xa
	.long	.LASF112
	.sleb128 1
	.uleb128 0xa
	.long	.LASF113
	.sleb128 2
	.uleb128 0xa
	.long	.LASF114
	.sleb128 3
	.uleb128 0xa
	.long	.LASF115
	.sleb128 4
	.byte	0
	.uleb128 0xe
	.byte	0x68
	.byte	0x5
	.byte	0xcf
	.long	0x696
	.uleb128 0xc
	.long	.LASF116
	.byte	0x5
	.byte	0xd1
	.long	0x49
	.byte	0
	.uleb128 0xc
	.long	.LASF117
	.byte	0x5
	.byte	0xd1
	.long	0x49
	.byte	0x4
	.uleb128 0xc
	.long	.LASF118
	.byte	0x5
	.byte	0xd2
	.long	0x49
	.byte	0x8
	.uleb128 0xc
	.long	.LASF119
	.byte	0x5
	.byte	0xd3
	.long	0x49
	.byte	0xc
	.uleb128 0xc
	.long	.LASF120
	.byte	0x5
	.byte	0xd4
	.long	0x49
	.byte	0x10
	.uleb128 0xc
	.long	.LASF121
	.byte	0x5
	.byte	0xd5
	.long	0x332
	.byte	0x18
	.uleb128 0xc
	.long	.LASF122
	.byte	0x5
	.byte	0xd6
	.long	0x83
	.byte	0x20
	.uleb128 0xc
	.long	.LASF123
	.byte	0x5
	.byte	0xd9
	.long	0x49
	.byte	0x28
	.uleb128 0xc
	.long	.LASF124
	.byte	0x5
	.byte	0xd9
	.long	0x49
	.byte	0x2c
	.uleb128 0xc
	.long	.LASF125
	.byte	0x5
	.byte	0xda
	.long	0x49
	.byte	0x30
	.uleb128 0xc
	.long	.LASF126
	.byte	0x5
	.byte	0xdb
	.long	0x49
	.byte	0x34
	.uleb128 0xc
	.long	.LASF127
	.byte	0x5
	.byte	0xdc
	.long	0x49
	.byte	0x38
	.uleb128 0xc
	.long	.LASF128
	.byte	0x5
	.byte	0xdd
	.long	0x332
	.byte	0x40
	.uleb128 0xc
	.long	.LASF129
	.byte	0x5
	.byte	0xde
	.long	0x83
	.byte	0x48
	.uleb128 0xf
	.string	"C"
	.byte	0x5
	.byte	0xdf
	.long	0x34
	.byte	0x50
	.uleb128 0xf
	.string	"CS"
	.byte	0x5
	.byte	0xdf
	.long	0x34
	.byte	0x54
	.uleb128 0xf
	.string	"E"
	.byte	0x5
	.byte	0xe0
	.long	0x34
	.byte	0x58
	.uleb128 0xf
	.string	"ES"
	.byte	0x5
	.byte	0xe0
	.long	0x34
	.byte	0x5c
	.uleb128 0xf
	.string	"B"
	.byte	0x5
	.byte	0xe1
	.long	0x34
	.byte	0x60
	.uleb128 0xf
	.string	"BS"
	.byte	0x5
	.byte	0xe1
	.long	0x34
	.byte	0x64
	.byte	0
	.uleb128 0x7
	.long	.LASF130
	.byte	0x5
	.byte	0xe2
	.long	0x5a6
	.uleb128 0x7
	.long	.LASF131
	.byte	0x5
	.byte	0xe4
	.long	0x6ac
	.uleb128 0x6
	.byte	0x8
	.long	0x696
	.uleb128 0xe
	.byte	0x10
	.byte	0x5
	.byte	0xe7
	.long	0x6df
	.uleb128 0xc
	.long	.LASF132
	.byte	0x5
	.byte	0xe9
	.long	0x42
	.byte	0
	.uleb128 0xf
	.string	"MPS"
	.byte	0x5
	.byte	0xea
	.long	0x3b
	.byte	0x2
	.uleb128 0xc
	.long	.LASF133
	.byte	0x5
	.byte	0xec
	.long	0x2d
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.long	.LASF134
	.byte	0x5
	.byte	0xee
	.long	0x6b2
	.uleb128 0x10
	.value	0x5e0
	.byte	0x5
	.value	0x102
	.long	0x756
	.uleb128 0x11
	.long	.LASF135
	.byte	0x5
	.value	0x104
	.long	0x756
	.byte	0
	.uleb128 0x12
	.long	.LASF136
	.byte	0x5
	.value	0x105
	.long	0x76c
	.value	0x210
	.uleb128 0x12
	.long	.LASF137
	.byte	0x5
	.value	0x106
	.long	0x782
	.value	0x330
	.uleb128 0x12
	.long	.LASF138
	.byte	0x5
	.value	0x107
	.long	0x798
	.value	0x470
	.uleb128 0x12
	.long	.LASF139
	.byte	0x5
	.value	0x108
	.long	0x7ae
	.value	0x530
	.uleb128 0x12
	.long	.LASF140
	.byte	0x5
	.value	0x109
	.long	0x7ae
	.value	0x570
	.uleb128 0x12
	.long	.LASF141
	.byte	0x5
	.value	0x10a
	.long	0x7be
	.value	0x5b0
	.byte	0
	.uleb128 0x4
	.long	0x6df
	.long	0x76c
	.uleb128 0x5
	.long	0x75
	.byte	0x2
	.uleb128 0x5
	.long	0x75
	.byte	0xa
	.byte	0
	.uleb128 0x4
	.long	0x6df
	.long	0x782
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.uleb128 0x5
	.long	0x75
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.long	0x6df
	.long	0x798
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.uleb128 0x5
	.long	0x75
	.byte	0x9
	.byte	0
	.uleb128 0x4
	.long	0x6df
	.long	0x7ae
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.uleb128 0x5
	.long	0x75
	.byte	0x5
	.byte	0
	.uleb128 0x4
	.long	0x6df
	.long	0x7be
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.long	0x6df
	.long	0x7ce
	.uleb128 0x5
	.long	0x75
	.byte	0x2
	.byte	0
	.uleb128 0x13
	.long	.LASF142
	.byte	0x5
	.value	0x10c
	.long	0x6ea
	.uleb128 0x10
	.value	0x2f60
	.byte	0x5
	.value	0x119
	.long	0x86e
	.uleb128 0x11
	.long	.LASF143
	.byte	0x5
	.value	0x11b
	.long	0x86e
	.byte	0
	.uleb128 0x11
	.long	.LASF144
	.byte	0x5
	.value	0x11c
	.long	0x7ae
	.byte	0x20
	.uleb128 0x11
	.long	.LASF145
	.byte	0x5
	.value	0x11d
	.long	0x87e
	.byte	0x60
	.uleb128 0x12
	.long	.LASF146
	.byte	0x5
	.value	0x11e
	.long	0x894
	.value	0x120
	.uleb128 0x12
	.long	.LASF147
	.byte	0x5
	.value	0x11f
	.long	0x8aa
	.value	0x3a0
	.uleb128 0x12
	.long	.LASF148
	.byte	0x5
	.value	0x120
	.long	0x8aa
	.value	0xd00
	.uleb128 0x12
	.long	.LASF149
	.byte	0x5
	.value	0x121
	.long	0x8c0
	.value	0x1660
	.uleb128 0x12
	.long	.LASF150
	.byte	0x5
	.value	0x122
	.long	0x8c0
	.value	0x1980
	.uleb128 0x12
	.long	.LASF151
	.byte	0x5
	.value	0x123
	.long	0x8aa
	.value	0x1ca0
	.uleb128 0x12
	.long	.LASF152
	.byte	0x5
	.value	0x124
	.long	0x8aa
	.value	0x2600
	.byte	0
	.uleb128 0x4
	.long	0x6df
	.long	0x87e
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.long	0x6df
	.long	0x894
	.uleb128 0x5
	.long	0x75
	.byte	0x2
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.long	0x6df
	.long	0x8aa
	.uleb128 0x5
	.long	0x75
	.byte	0x9
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.long	0x6df
	.long	0x8c0
	.uleb128 0x5
	.long	0x75
	.byte	0x9
	.uleb128 0x5
	.long	0x75
	.byte	0xe
	.byte	0
	.uleb128 0x4
	.long	0x6df
	.long	0x8d6
	.uleb128 0x5
	.long	0x75
	.byte	0x9
	.uleb128 0x5
	.long	0x75
	.byte	0x4
	.byte	0
	.uleb128 0x13
	.long	.LASF153
	.byte	0x5
	.value	0x125
	.long	0x7da
	.uleb128 0x14
	.long	.LASF158
	.byte	0x10
	.byte	0x5
	.value	0x134
	.long	0x917
	.uleb128 0x11
	.long	.LASF154
	.byte	0x5
	.value	0x136
	.long	0x34
	.byte	0
	.uleb128 0x11
	.long	.LASF155
	.byte	0x5
	.value	0x137
	.long	0x34
	.byte	0x4
	.uleb128 0x11
	.long	.LASF156
	.byte	0x5
	.value	0x138
	.long	0x917
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x8e2
	.uleb128 0x13
	.long	.LASF157
	.byte	0x5
	.value	0x139
	.long	0x8e2
	.uleb128 0x14
	.long	.LASF159
	.byte	0x20
	.byte	0x5
	.value	0x13c
	.long	0x985
	.uleb128 0x11
	.long	.LASF160
	.byte	0x5
	.value	0x13e
	.long	0x34
	.byte	0
	.uleb128 0x11
	.long	.LASF161
	.byte	0x5
	.value	0x13f
	.long	0x34
	.byte	0x4
	.uleb128 0x11
	.long	.LASF162
	.byte	0x5
	.value	0x140
	.long	0x34
	.byte	0x8
	.uleb128 0x11
	.long	.LASF163
	.byte	0x5
	.value	0x141
	.long	0x34
	.byte	0xc
	.uleb128 0x11
	.long	.LASF164
	.byte	0x5
	.value	0x142
	.long	0x34
	.byte	0x10
	.uleb128 0x11
	.long	.LASF156
	.byte	0x5
	.value	0x143
	.long	0x985
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x929
	.uleb128 0x13
	.long	.LASF165
	.byte	0x5
	.value	0x144
	.long	0x929
	.uleb128 0x14
	.long	.LASF166
	.byte	0x30
	.byte	0x5
	.value	0x147
	.long	0xa25
	.uleb128 0x11
	.long	.LASF167
	.byte	0x5
	.value	0x149
	.long	0x34
	.byte	0
	.uleb128 0x11
	.long	.LASF168
	.byte	0x5
	.value	0x14a
	.long	0x34
	.byte	0x4
	.uleb128 0x11
	.long	.LASF169
	.byte	0x5
	.value	0x14b
	.long	0x34
	.byte	0x8
	.uleb128 0x15
	.string	"len"
	.byte	0x5
	.value	0x14c
	.long	0x34
	.byte	0xc
	.uleb128 0x15
	.string	"inf"
	.byte	0x5
	.value	0x14d
	.long	0x34
	.byte	0x10
	.uleb128 0x11
	.long	.LASF170
	.byte	0x5
	.value	0x14e
	.long	0x49
	.byte	0x14
	.uleb128 0x11
	.long	.LASF171
	.byte	0x5
	.value	0x14f
	.long	0x34
	.byte	0x18
	.uleb128 0x15
	.string	"k"
	.byte	0x5
	.value	0x150
	.long	0x34
	.byte	0x1c
	.uleb128 0x11
	.long	.LASF172
	.byte	0x5
	.value	0x158
	.long	0xa3f
	.byte	0x20
	.uleb128 0x11
	.long	.LASF173
	.byte	0x5
	.value	0x15a
	.long	0xa5b
	.byte	0x28
	.byte	0
	.uleb128 0x16
	.long	0xa3f
	.uleb128 0x17
	.long	0x34
	.uleb128 0x17
	.long	0x34
	.uleb128 0x17
	.long	0x83
	.uleb128 0x17
	.long	0x83
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xa25
	.uleb128 0x16
	.long	0xa55
	.uleb128 0x17
	.long	0xa55
	.uleb128 0x17
	.long	0x6a1
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x997
	.uleb128 0x6
	.byte	0x8
	.long	0xa45
	.uleb128 0x13
	.long	.LASF174
	.byte	0x5
	.value	0x15c
	.long	0x997
	.uleb128 0x18
	.long	.LASF175
	.value	0x278
	.byte	0x5
	.value	0x15f
	.long	0xce7
	.uleb128 0x11
	.long	.LASF176
	.byte	0x5
	.value	0x161
	.long	0x34
	.byte	0
	.uleb128 0x11
	.long	.LASF177
	.byte	0x5
	.value	0x162
	.long	0x34
	.byte	0x4
	.uleb128 0x11
	.long	.LASF178
	.byte	0x5
	.value	0x163
	.long	0x34
	.byte	0x8
	.uleb128 0x15
	.string	"qp"
	.byte	0x5
	.value	0x164
	.long	0x34
	.byte	0xc
	.uleb128 0x11
	.long	.LASF179
	.byte	0x5
	.value	0x165
	.long	0x34
	.byte	0x10
	.uleb128 0x11
	.long	.LASF180
	.byte	0x5
	.value	0x166
	.long	0x322
	.byte	0x14
	.uleb128 0x11
	.long	.LASF181
	.byte	0x5
	.value	0x168
	.long	0xce7
	.byte	0x38
	.uleb128 0x11
	.long	.LASF182
	.byte	0x5
	.value	0x169
	.long	0xce7
	.byte	0x40
	.uleb128 0x11
	.long	.LASF183
	.byte	0x5
	.value	0x16b
	.long	0x34
	.byte	0x48
	.uleb128 0x15
	.string	"mvd"
	.byte	0x5
	.value	0x16c
	.long	0xced
	.byte	0x4c
	.uleb128 0x12
	.long	.LASF184
	.byte	0x5
	.value	0x16d
	.long	0xd0f
	.value	0x14c
	.uleb128 0x12
	.long	.LASF185
	.byte	0x5
	.value	0x16e
	.long	0xd0f
	.value	0x18c
	.uleb128 0x19
	.string	"cbp"
	.byte	0x5
	.value	0x16f
	.long	0x34
	.value	0x1cc
	.uleb128 0x12
	.long	.LASF186
	.byte	0x5
	.value	0x170
	.long	0x50f
	.value	0x1d0
	.uleb128 0x12
	.long	.LASF187
	.byte	0x5
	.value	0x171
	.long	0xd1f
	.value	0x1d8
	.uleb128 0x12
	.long	.LASF188
	.byte	0x5
	.value	0x172
	.long	0xd1f
	.value	0x1e8
	.uleb128 0x12
	.long	.LASF189
	.byte	0x5
	.value	0x173
	.long	0x2d
	.value	0x1f8
	.uleb128 0x12
	.long	.LASF190
	.byte	0x5
	.value	0x175
	.long	0x34
	.value	0x200
	.uleb128 0x12
	.long	.LASF191
	.byte	0x5
	.value	0x176
	.long	0x34
	.value	0x204
	.uleb128 0x12
	.long	.LASF192
	.byte	0x5
	.value	0x177
	.long	0x34
	.value	0x208
	.uleb128 0x12
	.long	.LASF193
	.byte	0x5
	.value	0x179
	.long	0x34
	.value	0x20c
	.uleb128 0x12
	.long	.LASF194
	.byte	0x5
	.value	0x17a
	.long	0x34
	.value	0x210
	.uleb128 0x12
	.long	.LASF195
	.byte	0x5
	.value	0x17c
	.long	0x34
	.value	0x214
	.uleb128 0x12
	.long	.LASF196
	.byte	0x5
	.value	0x17e
	.long	0x34
	.value	0x218
	.uleb128 0x12
	.long	.LASF197
	.byte	0x5
	.value	0x17e
	.long	0x34
	.value	0x21c
	.uleb128 0x12
	.long	.LASF198
	.byte	0x5
	.value	0x17e
	.long	0x34
	.value	0x220
	.uleb128 0x12
	.long	.LASF199
	.byte	0x5
	.value	0x17e
	.long	0x34
	.value	0x224
	.uleb128 0x12
	.long	.LASF200
	.byte	0x5
	.value	0x17f
	.long	0x34
	.value	0x228
	.uleb128 0x12
	.long	.LASF201
	.byte	0x5
	.value	0x17f
	.long	0x34
	.value	0x22c
	.uleb128 0x12
	.long	.LASF202
	.byte	0x5
	.value	0x17f
	.long	0x34
	.value	0x230
	.uleb128 0x12
	.long	.LASF203
	.byte	0x5
	.value	0x17f
	.long	0x34
	.value	0x234
	.uleb128 0x12
	.long	.LASF204
	.byte	0x5
	.value	0x181
	.long	0x34
	.value	0x238
	.uleb128 0x12
	.long	.LASF205
	.byte	0x5
	.value	0x182
	.long	0x34
	.value	0x23c
	.uleb128 0x12
	.long	.LASF206
	.byte	0x5
	.value	0x183
	.long	0x34
	.value	0x240
	.uleb128 0x12
	.long	.LASF207
	.byte	0x5
	.value	0x186
	.long	0x34
	.value	0x244
	.uleb128 0x12
	.long	.LASF208
	.byte	0x5
	.value	0x18a
	.long	0xd2f
	.value	0x248
	.uleb128 0x12
	.long	.LASF209
	.byte	0x5
	.value	0x18b
	.long	0x34
	.value	0x250
	.uleb128 0x12
	.long	.LASF210
	.byte	0x5
	.value	0x18c
	.long	0x34
	.value	0x254
	.uleb128 0x12
	.long	.LASF211
	.byte	0x5
	.value	0x18d
	.long	0x34
	.value	0x258
	.uleb128 0x12
	.long	.LASF212
	.byte	0x5
	.value	0x18e
	.long	0x34
	.value	0x25c
	.uleb128 0x12
	.long	.LASF213
	.byte	0x5
	.value	0x18f
	.long	0x34
	.value	0x260
	.uleb128 0x12
	.long	.LASF214
	.byte	0x5
	.value	0x191
	.long	0x34
	.value	0x264
	.uleb128 0x12
	.long	.LASF215
	.byte	0x5
	.value	0x192
	.long	0x34
	.value	0x268
	.uleb128 0x12
	.long	.LASF216
	.byte	0x5
	.value	0x193
	.long	0x34
	.value	0x26c
	.uleb128 0x12
	.long	.LASF217
	.byte	0x5
	.value	0x195
	.long	0x34
	.value	0x270
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xa6d
	.uleb128 0x4
	.long	0x34
	.long	0xd0f
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
	.long	0x34
	.long	0xd1f
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0xd2f
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF218
	.uleb128 0x13
	.long	.LASF219
	.byte	0x5
	.value	0x196
	.long	0xa6d
	.uleb128 0x1a
	.byte	0x30
	.byte	0x5
	.value	0x19b
	.long	0xddb
	.uleb128 0x11
	.long	.LASF220
	.byte	0x5
	.value	0x19d
	.long	0x34
	.byte	0
	.uleb128 0x11
	.long	.LASF221
	.byte	0x5
	.value	0x19e
	.long	0x34
	.byte	0x4
	.uleb128 0x11
	.long	.LASF222
	.byte	0x5
	.value	0x19f
	.long	0xa9
	.byte	0x8
	.uleb128 0x11
	.long	.LASF223
	.byte	0x5
	.value	0x1a0
	.long	0x34
	.byte	0xc
	.uleb128 0x11
	.long	.LASF224
	.byte	0x5
	.value	0x1a1
	.long	0x34
	.byte	0x10
	.uleb128 0x11
	.long	.LASF225
	.byte	0x5
	.value	0x1a2
	.long	0xa9
	.byte	0x14
	.uleb128 0x11
	.long	.LASF226
	.byte	0x5
	.value	0x1a4
	.long	0xa9
	.byte	0x15
	.uleb128 0x11
	.long	.LASF227
	.byte	0x5
	.value	0x1a5
	.long	0x34
	.byte	0x18
	.uleb128 0x11
	.long	.LASF228
	.byte	0x5
	.value	0x1a6
	.long	0x34
	.byte	0x1c
	.uleb128 0x11
	.long	.LASF229
	.byte	0x5
	.value	0x1a8
	.long	0x332
	.byte	0x20
	.uleb128 0x11
	.long	.LASF230
	.byte	0x5
	.value	0x1a9
	.long	0x34
	.byte	0x28
	.byte	0
	.uleb128 0x13
	.long	.LASF231
	.byte	0x5
	.value	0x1ab
	.long	0xd42
	.uleb128 0x14
	.long	.LASF232
	.byte	0x78
	.byte	0x5
	.value	0x1ae
	.long	0xe1c
	.uleb128 0x11
	.long	.LASF233
	.byte	0x5
	.value	0x1b1
	.long	0xe1c
	.byte	0
	.uleb128 0x11
	.long	.LASF234
	.byte	0x5
	.value	0x1b2
	.long	0x696
	.byte	0x8
	.uleb128 0x11
	.long	.LASF235
	.byte	0x5
	.value	0x1b4
	.long	0xe42
	.byte	0x70
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xddb
	.uleb128 0x1b
	.long	0x34
	.long	0xe36
	.uleb128 0x17
	.long	0xe36
	.uleb128 0x17
	.long	0xe3c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xa61
	.uleb128 0x6
	.byte	0x8
	.long	0xde7
	.uleb128 0x6
	.byte	0x8
	.long	0xe22
	.uleb128 0x13
	.long	.LASF236
	.byte	0x5
	.value	0x1b8
	.long	0xde7
	.uleb128 0x1a
	.byte	0x98
	.byte	0x5
	.value	0x1bb
	.long	0xf61
	.uleb128 0x11
	.long	.LASF237
	.byte	0x5
	.value	0x1bd
	.long	0x34
	.byte	0
	.uleb128 0x15
	.string	"qp"
	.byte	0x5
	.value	0x1be
	.long	0x34
	.byte	0x4
	.uleb128 0x11
	.long	.LASF238
	.byte	0x5
	.value	0x1bf
	.long	0x34
	.byte	0x8
	.uleb128 0x11
	.long	.LASF239
	.byte	0x5
	.value	0x1c0
	.long	0x34
	.byte	0xc
	.uleb128 0x11
	.long	.LASF240
	.byte	0x5
	.value	0x1c1
	.long	0x34
	.byte	0x10
	.uleb128 0x11
	.long	.LASF241
	.byte	0x5
	.value	0x1c2
	.long	0x34
	.byte	0x14
	.uleb128 0x11
	.long	.LASF242
	.byte	0x5
	.value	0x1c3
	.long	0xf61
	.byte	0x18
	.uleb128 0x11
	.long	.LASF243
	.byte	0x5
	.value	0x1c4
	.long	0xf67
	.byte	0x20
	.uleb128 0x11
	.long	.LASF244
	.byte	0x5
	.value	0x1c5
	.long	0xf6d
	.byte	0x28
	.uleb128 0x11
	.long	.LASF245
	.byte	0x5
	.value	0x1c8
	.long	0xf73
	.byte	0x30
	.uleb128 0x11
	.long	.LASF246
	.byte	0x5
	.value	0x1ca
	.long	0x34
	.byte	0x38
	.uleb128 0x11
	.long	.LASF247
	.byte	0x5
	.value	0x1cb
	.long	0x83
	.byte	0x40
	.uleb128 0x11
	.long	.LASF248
	.byte	0x5
	.value	0x1cc
	.long	0x83
	.byte	0x48
	.uleb128 0x11
	.long	.LASF249
	.byte	0x5
	.value	0x1cd
	.long	0x83
	.byte	0x50
	.uleb128 0x11
	.long	.LASF250
	.byte	0x5
	.value	0x1ce
	.long	0x34
	.byte	0x58
	.uleb128 0x11
	.long	.LASF251
	.byte	0x5
	.value	0x1cf
	.long	0x83
	.byte	0x60
	.uleb128 0x11
	.long	.LASF252
	.byte	0x5
	.value	0x1d0
	.long	0x83
	.byte	0x68
	.uleb128 0x11
	.long	.LASF253
	.byte	0x5
	.value	0x1d1
	.long	0x83
	.byte	0x70
	.uleb128 0x11
	.long	.LASF254
	.byte	0x5
	.value	0x1d3
	.long	0xf88
	.byte	0x78
	.uleb128 0x11
	.long	.LASF255
	.byte	0x5
	.value	0x1d5
	.long	0xf8e
	.byte	0x80
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xe48
	.uleb128 0x6
	.byte	0x8
	.long	0x7ce
	.uleb128 0x6
	.byte	0x8
	.long	0x8d6
	.uleb128 0x6
	.byte	0x8
	.long	0x91d
	.uleb128 0x1b
	.long	0xc9
	.long	0xf88
	.uleb128 0x17
	.long	0x34
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xf79
	.uleb128 0x4
	.long	0x34
	.long	0xfa4
	.uleb128 0x5
	.long	0x75
	.byte	0x2
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.byte	0
	.uleb128 0x13
	.long	.LASF256
	.byte	0x5
	.value	0x1d7
	.long	0xe54
	.uleb128 0x10
	.value	0x338
	.byte	0x5
	.value	0x1db
	.long	0x101a
	.uleb128 0x11
	.long	.LASF257
	.byte	0x5
	.value	0x1dd
	.long	0x34
	.byte	0
	.uleb128 0x11
	.long	.LASF258
	.byte	0x5
	.value	0x1de
	.long	0x34
	.byte	0x4
	.uleb128 0x11
	.long	.LASF259
	.byte	0x5
	.value	0x1df
	.long	0x101a
	.byte	0x8
	.uleb128 0x12
	.long	.LASF260
	.byte	0x5
	.value	0x1e0
	.long	0x34
	.value	0x328
	.uleb128 0x12
	.long	.LASF261
	.byte	0x5
	.value	0x1e1
	.long	0x1030
	.value	0x32c
	.uleb128 0x12
	.long	.LASF262
	.byte	0x5
	.value	0x1e2
	.long	0x1030
	.value	0x330
	.uleb128 0x12
	.long	.LASF263
	.byte	0x5
	.value	0x1e3
	.long	0x1030
	.value	0x334
	.byte	0
	.uleb128 0x4
	.long	0x102a
	.long	0x102a
	.uleb128 0x5
	.long	0x75
	.byte	0x63
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xfa4
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF264
	.uleb128 0x13
	.long	.LASF265
	.byte	0x5
	.value	0x1e4
	.long	0xfb0
	.uleb128 0x6
	.byte	0x8
	.long	0x83
	.uleb128 0x6
	.byte	0x8
	.long	0x104f
	.uleb128 0x6
	.byte	0x8
	.long	0x1055
	.uleb128 0x6
	.byte	0x8
	.long	0x42
	.uleb128 0x6
	.byte	0x8
	.long	0x332
	.uleb128 0x10
	.value	0xe08
	.byte	0x5
	.value	0x295
	.long	0x1869
	.uleb128 0x11
	.long	.LASF266
	.byte	0x5
	.value	0x297
	.long	0x34
	.byte	0
	.uleb128 0x11
	.long	.LASF267
	.byte	0x5
	.value	0x298
	.long	0x34
	.byte	0x4
	.uleb128 0x11
	.long	.LASF268
	.byte	0x5
	.value	0x29a
	.long	0x34
	.byte	0x8
	.uleb128 0x15
	.string	"qp0"
	.byte	0x5
	.value	0x29b
	.long	0x34
	.byte	0xc
	.uleb128 0x15
	.string	"qpN"
	.byte	0x5
	.value	0x29c
	.long	0x34
	.byte	0x10
	.uleb128 0x11
	.long	.LASF269
	.byte	0x5
	.value	0x29d
	.long	0x34
	.byte	0x14
	.uleb128 0x11
	.long	.LASF270
	.byte	0x5
	.value	0x29e
	.long	0x34
	.byte	0x18
	.uleb128 0x11
	.long	.LASF271
	.byte	0x5
	.value	0x2a0
	.long	0x34
	.byte	0x1c
	.uleb128 0x11
	.long	.LASF272
	.byte	0x5
	.value	0x2a1
	.long	0x34
	.byte	0x20
	.uleb128 0x11
	.long	.LASF82
	.byte	0x5
	.value	0x2a4
	.long	0x34
	.byte	0x24
	.uleb128 0x11
	.long	.LASF273
	.byte	0x5
	.value	0x2a5
	.long	0x34
	.byte	0x28
	.uleb128 0x11
	.long	.LASF274
	.byte	0x5
	.value	0x2a6
	.long	0x34
	.byte	0x2c
	.uleb128 0x11
	.long	.LASF275
	.byte	0x5
	.value	0x2a7
	.long	0x34
	.byte	0x30
	.uleb128 0x11
	.long	.LASF276
	.byte	0x5
	.value	0x2a8
	.long	0x34
	.byte	0x34
	.uleb128 0x11
	.long	.LASF277
	.byte	0x5
	.value	0x2a9
	.long	0x34
	.byte	0x38
	.uleb128 0x11
	.long	.LASF278
	.byte	0x5
	.value	0x2aa
	.long	0x34
	.byte	0x3c
	.uleb128 0x11
	.long	.LASF279
	.byte	0x5
	.value	0x2ac
	.long	0x34
	.byte	0x40
	.uleb128 0x11
	.long	.LASF280
	.byte	0x5
	.value	0x2ad
	.long	0x34
	.byte	0x44
	.uleb128 0x11
	.long	.LASF281
	.byte	0x5
	.value	0x2ae
	.long	0x34
	.byte	0x48
	.uleb128 0x11
	.long	.LASF282
	.byte	0x5
	.value	0x2af
	.long	0x34
	.byte	0x4c
	.uleb128 0x11
	.long	.LASF283
	.byte	0x5
	.value	0x2b3
	.long	0x1869
	.byte	0x50
	.uleb128 0x11
	.long	.LASF284
	.byte	0x5
	.value	0x2b4
	.long	0x1869
	.byte	0x90
	.uleb128 0x11
	.long	.LASF285
	.byte	0x5
	.value	0x2b5
	.long	0x34
	.byte	0xd0
	.uleb128 0x11
	.long	.LASF286
	.byte	0x5
	.value	0x2b6
	.long	0x34
	.byte	0xd4
	.uleb128 0x11
	.long	.LASF287
	.byte	0x5
	.value	0x2b7
	.long	0x34
	.byte	0xd8
	.uleb128 0x11
	.long	.LASF288
	.byte	0x5
	.value	0x2b8
	.long	0x34
	.byte	0xdc
	.uleb128 0x11
	.long	.LASF289
	.byte	0x5
	.value	0x2b9
	.long	0x187f
	.byte	0xe0
	.uleb128 0x12
	.long	.LASF290
	.byte	0x5
	.value	0x2ba
	.long	0x187f
	.value	0x1a8
	.uleb128 0x12
	.long	.LASF291
	.byte	0x5
	.value	0x2bb
	.long	0x187f
	.value	0x270
	.uleb128 0x12
	.long	.LASF292
	.byte	0x5
	.value	0x2bc
	.long	0x187f
	.value	0x338
	.uleb128 0x12
	.long	.LASF293
	.byte	0x5
	.value	0x2bd
	.long	0x187f
	.value	0x400
	.uleb128 0x12
	.long	.LASF294
	.byte	0x5
	.value	0x2be
	.long	0x34
	.value	0x4c8
	.uleb128 0x12
	.long	.LASF295
	.byte	0x5
	.value	0x2c0
	.long	0x34
	.value	0x4cc
	.uleb128 0x12
	.long	.LASF296
	.byte	0x5
	.value	0x2c1
	.long	0x34
	.value	0x4d0
	.uleb128 0x12
	.long	.LASF297
	.byte	0x5
	.value	0x2c4
	.long	0x34
	.value	0x4d4
	.uleb128 0x19
	.string	"qpB"
	.byte	0x5
	.value	0x2c5
	.long	0x34
	.value	0x4d8
	.uleb128 0x12
	.long	.LASF298
	.byte	0x5
	.value	0x2c6
	.long	0x34
	.value	0x4dc
	.uleb128 0x12
	.long	.LASF299
	.byte	0x5
	.value	0x2c7
	.long	0x34
	.value	0x4e0
	.uleb128 0x12
	.long	.LASF300
	.byte	0x5
	.value	0x2c8
	.long	0x34
	.value	0x4e4
	.uleb128 0x12
	.long	.LASF301
	.byte	0x5
	.value	0x2ca
	.long	0x34
	.value	0x4e8
	.uleb128 0x12
	.long	.LASF302
	.byte	0x5
	.value	0x2cb
	.long	0x34
	.value	0x4ec
	.uleb128 0x12
	.long	.LASF303
	.byte	0x5
	.value	0x2cc
	.long	0x34
	.value	0x4f0
	.uleb128 0x12
	.long	.LASF304
	.byte	0x5
	.value	0x2cd
	.long	0x34
	.value	0x4f4
	.uleb128 0x12
	.long	.LASF305
	.byte	0x5
	.value	0x2d1
	.long	0x34
	.value	0x4f8
	.uleb128 0x12
	.long	.LASF179
	.byte	0x5
	.value	0x2d2
	.long	0x34
	.value	0x4fc
	.uleb128 0x12
	.long	.LASF306
	.byte	0x5
	.value	0x2d3
	.long	0x34
	.value	0x500
	.uleb128 0x12
	.long	.LASF307
	.byte	0x5
	.value	0x2d5
	.long	0x34
	.value	0x504
	.uleb128 0x12
	.long	.LASF308
	.byte	0x5
	.value	0x2d6
	.long	0x34
	.value	0x508
	.uleb128 0x12
	.long	.LASF309
	.byte	0x5
	.value	0x2d7
	.long	0x34
	.value	0x50c
	.uleb128 0x12
	.long	.LASF310
	.byte	0x5
	.value	0x2d8
	.long	0x34
	.value	0x510
	.uleb128 0x12
	.long	.LASF311
	.byte	0x5
	.value	0x2d9
	.long	0x34
	.value	0x514
	.uleb128 0x12
	.long	.LASF312
	.byte	0x5
	.value	0x2da
	.long	0x34
	.value	0x518
	.uleb128 0x12
	.long	.LASF313
	.byte	0x5
	.value	0x2db
	.long	0x34
	.value	0x51c
	.uleb128 0x12
	.long	.LASF314
	.byte	0x5
	.value	0x2dc
	.long	0x34
	.value	0x520
	.uleb128 0x12
	.long	.LASF315
	.byte	0x5
	.value	0x2dd
	.long	0x34
	.value	0x524
	.uleb128 0x12
	.long	.LASF316
	.byte	0x5
	.value	0x2de
	.long	0x34
	.value	0x528
	.uleb128 0x12
	.long	.LASF317
	.byte	0x5
	.value	0x2df
	.long	0x188f
	.value	0x52c
	.uleb128 0x12
	.long	.LASF318
	.byte	0x5
	.value	0x2e0
	.long	0x34
	.value	0x92c
	.uleb128 0x12
	.long	.LASF319
	.byte	0x5
	.value	0x2e1
	.long	0x34
	.value	0x930
	.uleb128 0x12
	.long	.LASF320
	.byte	0x5
	.value	0x2e3
	.long	0x34
	.value	0x934
	.uleb128 0x12
	.long	.LASF321
	.byte	0x5
	.value	0x2e4
	.long	0x34
	.value	0x938
	.uleb128 0x12
	.long	.LASF322
	.byte	0x5
	.value	0x2e5
	.long	0x34
	.value	0x93c
	.uleb128 0x12
	.long	.LASF323
	.byte	0x5
	.value	0x2e7
	.long	0x34
	.value	0x940
	.uleb128 0x12
	.long	.LASF324
	.byte	0x5
	.value	0x2e8
	.long	0x34
	.value	0x944
	.uleb128 0x12
	.long	.LASF325
	.byte	0x5
	.value	0x2e9
	.long	0x34
	.value	0x948
	.uleb128 0x12
	.long	.LASF326
	.byte	0x5
	.value	0x2ea
	.long	0x34
	.value	0x94c
	.uleb128 0x12
	.long	.LASF327
	.byte	0x5
	.value	0x2eb
	.long	0x34
	.value	0x950
	.uleb128 0x12
	.long	.LASF328
	.byte	0x5
	.value	0x2ec
	.long	0x34
	.value	0x954
	.uleb128 0x12
	.long	.LASF329
	.byte	0x5
	.value	0x2ed
	.long	0x34
	.value	0x958
	.uleb128 0x12
	.long	.LASF330
	.byte	0x5
	.value	0x2ef
	.long	0x34
	.value	0x95c
	.uleb128 0x12
	.long	.LASF331
	.byte	0x5
	.value	0x2f0
	.long	0x34
	.value	0x960
	.uleb128 0x12
	.long	.LASF332
	.byte	0x5
	.value	0x2f1
	.long	0x34
	.value	0x964
	.uleb128 0x12
	.long	.LASF333
	.byte	0x5
	.value	0x2f2
	.long	0x34
	.value	0x968
	.uleb128 0x12
	.long	.LASF334
	.byte	0x5
	.value	0x2f3
	.long	0x34
	.value	0x96c
	.uleb128 0x12
	.long	.LASF335
	.byte	0x5
	.value	0x2f4
	.long	0x34
	.value	0x970
	.uleb128 0x12
	.long	.LASF336
	.byte	0x5
	.value	0x2f5
	.long	0x34
	.value	0x974
	.uleb128 0x12
	.long	.LASF337
	.byte	0x5
	.value	0x2f7
	.long	0xd2f
	.value	0x978
	.uleb128 0x12
	.long	.LASF338
	.byte	0x5
	.value	0x2f9
	.long	0x34
	.value	0x980
	.uleb128 0x12
	.long	.LASF339
	.byte	0x5
	.value	0x2fb
	.long	0x34
	.value	0x984
	.uleb128 0x12
	.long	.LASF340
	.byte	0x5
	.value	0x2fe
	.long	0x34
	.value	0x988
	.uleb128 0x12
	.long	.LASF341
	.byte	0x5
	.value	0x301
	.long	0x34
	.value	0x98c
	.uleb128 0x12
	.long	.LASF342
	.byte	0x5
	.value	0x301
	.long	0x34
	.value	0x990
	.uleb128 0x12
	.long	.LASF343
	.byte	0x5
	.value	0x301
	.long	0x34
	.value	0x994
	.uleb128 0x12
	.long	.LASF344
	.byte	0x5
	.value	0x302
	.long	0x34
	.value	0x998
	.uleb128 0x12
	.long	.LASF345
	.byte	0x5
	.value	0x302
	.long	0x34
	.value	0x99c
	.uleb128 0x12
	.long	.LASF346
	.byte	0x5
	.value	0x304
	.long	0x34
	.value	0x9a0
	.uleb128 0x12
	.long	.LASF347
	.byte	0x5
	.value	0x305
	.long	0x34
	.value	0x9a4
	.uleb128 0x12
	.long	.LASF348
	.byte	0x5
	.value	0x306
	.long	0x34
	.value	0x9a8
	.uleb128 0x12
	.long	.LASF349
	.byte	0x5
	.value	0x309
	.long	0x34
	.value	0x9ac
	.uleb128 0x12
	.long	.LASF350
	.byte	0x5
	.value	0x30a
	.long	0x187f
	.value	0x9b0
	.uleb128 0x12
	.long	.LASF351
	.byte	0x5
	.value	0x30b
	.long	0x187f
	.value	0xa78
	.uleb128 0x12
	.long	.LASF352
	.byte	0x5
	.value	0x30e
	.long	0x34
	.value	0xb40
	.uleb128 0x12
	.long	.LASF353
	.byte	0x5
	.value	0x30f
	.long	0x34
	.value	0xb44
	.uleb128 0x12
	.long	.LASF354
	.byte	0x5
	.value	0x311
	.long	0x34
	.value	0xb48
	.uleb128 0x12
	.long	.LASF355
	.byte	0x5
	.value	0x313
	.long	0x34
	.value	0xb4c
	.uleb128 0x12
	.long	.LASF356
	.byte	0x5
	.value	0x314
	.long	0x34
	.value	0xb50
	.uleb128 0x12
	.long	.LASF357
	.byte	0x5
	.value	0x315
	.long	0x34
	.value	0xb54
	.uleb128 0x12
	.long	.LASF358
	.byte	0x5
	.value	0x316
	.long	0x34
	.value	0xb58
	.uleb128 0x12
	.long	.LASF359
	.byte	0x5
	.value	0x317
	.long	0x34
	.value	0xb5c
	.uleb128 0x12
	.long	.LASF360
	.byte	0x5
	.value	0x318
	.long	0x34
	.value	0xb60
	.uleb128 0x12
	.long	.LASF361
	.byte	0x5
	.value	0x319
	.long	0x34
	.value	0xb64
	.uleb128 0x12
	.long	.LASF362
	.byte	0x5
	.value	0x31b
	.long	0x34
	.value	0xb68
	.uleb128 0x12
	.long	.LASF363
	.byte	0x5
	.value	0x31d
	.long	0x34
	.value	0xb6c
	.uleb128 0x12
	.long	.LASF214
	.byte	0x5
	.value	0x31e
	.long	0x34
	.value	0xb70
	.uleb128 0x12
	.long	.LASF215
	.byte	0x5
	.value	0x31f
	.long	0x34
	.value	0xb74
	.uleb128 0x12
	.long	.LASF216
	.byte	0x5
	.value	0x320
	.long	0x34
	.value	0xb78
	.uleb128 0x12
	.long	.LASF364
	.byte	0x5
	.value	0x322
	.long	0x34
	.value	0xb7c
	.uleb128 0x12
	.long	.LASF365
	.byte	0x5
	.value	0x323
	.long	0x34
	.value	0xb80
	.uleb128 0x12
	.long	.LASF366
	.byte	0x5
	.value	0x324
	.long	0x34
	.value	0xb84
	.uleb128 0x12
	.long	.LASF367
	.byte	0x5
	.value	0x327
	.long	0x187f
	.value	0xb88
	.uleb128 0x12
	.long	.LASF368
	.byte	0x5
	.value	0x328
	.long	0x34
	.value	0xc50
	.uleb128 0x12
	.long	.LASF369
	.byte	0x5
	.value	0x329
	.long	0x34
	.value	0xc54
	.uleb128 0x12
	.long	.LASF370
	.byte	0x5
	.value	0x32b
	.long	0x83
	.value	0xc58
	.uleb128 0x12
	.long	.LASF371
	.byte	0x5
	.value	0x32c
	.long	0x83
	.value	0xc60
	.uleb128 0x12
	.long	.LASF372
	.byte	0x5
	.value	0x32d
	.long	0x332
	.value	0xc68
	.uleb128 0x12
	.long	.LASF373
	.byte	0x5
	.value	0x32e
	.long	0x83
	.value	0xc70
	.uleb128 0x12
	.long	.LASF374
	.byte	0x5
	.value	0x330
	.long	0x34
	.value	0xc78
	.uleb128 0x12
	.long	.LASF375
	.byte	0x5
	.value	0x331
	.long	0x34
	.value	0xc7c
	.uleb128 0x12
	.long	.LASF376
	.byte	0x5
	.value	0x332
	.long	0x34
	.value	0xc80
	.uleb128 0x12
	.long	.LASF377
	.byte	0x5
	.value	0x334
	.long	0x34
	.value	0xc84
	.uleb128 0x12
	.long	.LASF75
	.byte	0x5
	.value	0x335
	.long	0x34
	.value	0xc88
	.uleb128 0x12
	.long	.LASF378
	.byte	0x5
	.value	0x337
	.long	0x34
	.value	0xc8c
	.uleb128 0x12
	.long	.LASF379
	.byte	0x5
	.value	0x338
	.long	0x34
	.value	0xc90
	.uleb128 0x12
	.long	.LASF380
	.byte	0x5
	.value	0x339
	.long	0x34
	.value	0xc94
	.uleb128 0x12
	.long	.LASF381
	.byte	0x5
	.value	0x33a
	.long	0x34
	.value	0xc98
	.uleb128 0x12
	.long	.LASF382
	.byte	0x5
	.value	0x33b
	.long	0x34
	.value	0xc9c
	.uleb128 0x12
	.long	.LASF383
	.byte	0x5
	.value	0x33c
	.long	0x34
	.value	0xca0
	.uleb128 0x12
	.long	.LASF384
	.byte	0x5
	.value	0x33f
	.long	0x34
	.value	0xca4
	.uleb128 0x12
	.long	.LASF385
	.byte	0x5
	.value	0x340
	.long	0x34
	.value	0xca8
	.uleb128 0x12
	.long	.LASF386
	.byte	0x5
	.value	0x341
	.long	0x34
	.value	0xcac
	.uleb128 0x12
	.long	.LASF387
	.byte	0x5
	.value	0x342
	.long	0x34
	.value	0xcb0
	.uleb128 0x12
	.long	.LASF388
	.byte	0x5
	.value	0x343
	.long	0x34
	.value	0xcb4
	.uleb128 0x12
	.long	.LASF389
	.byte	0x5
	.value	0x345
	.long	0x34
	.value	0xcb8
	.uleb128 0x12
	.long	.LASF390
	.byte	0x5
	.value	0x346
	.long	0x322
	.value	0xcbc
	.uleb128 0x12
	.long	.LASF391
	.byte	0x5
	.value	0x349
	.long	0x34
	.value	0xcdc
	.uleb128 0x12
	.long	.LASF392
	.byte	0x5
	.value	0x34c
	.long	0x34
	.value	0xce0
	.uleb128 0x12
	.long	.LASF393
	.byte	0x5
	.value	0x34d
	.long	0x34
	.value	0xce4
	.uleb128 0x12
	.long	.LASF394
	.byte	0x5
	.value	0x34e
	.long	0x34
	.value	0xce8
	.uleb128 0x12
	.long	.LASF395
	.byte	0x5
	.value	0x34f
	.long	0x34
	.value	0xcec
	.uleb128 0x12
	.long	.LASF396
	.byte	0x5
	.value	0x350
	.long	0x34
	.value	0xcf0
	.uleb128 0x12
	.long	.LASF397
	.byte	0x5
	.value	0x351
	.long	0x34
	.value	0xcf4
	.uleb128 0x12
	.long	.LASF398
	.byte	0x5
	.value	0x352
	.long	0x34
	.value	0xcf8
	.uleb128 0x12
	.long	.LASF399
	.byte	0x5
	.value	0x355
	.long	0x34
	.value	0xcfc
	.uleb128 0x12
	.long	.LASF400
	.byte	0x5
	.value	0x358
	.long	0x34
	.value	0xd00
	.uleb128 0x12
	.long	.LASF401
	.byte	0x5
	.value	0x35b
	.long	0x34
	.value	0xd04
	.uleb128 0x12
	.long	.LASF402
	.byte	0x5
	.value	0x35c
	.long	0x18a0
	.value	0xd08
	.uleb128 0x12
	.long	.LASF403
	.byte	0x5
	.value	0x35e
	.long	0x187f
	.value	0xd38
	.uleb128 0x12
	.long	.LASF404
	.byte	0x5
	.value	0x35f
	.long	0x34
	.value	0xe00
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x187f
	.uleb128 0x5
	.long	0x75
	.byte	0x7
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.long	0x7c
	.long	0x188f
	.uleb128 0x5
	.long	0x75
	.byte	0xc7
	.byte	0
	.uleb128 0x4
	.long	0x7c
	.long	0x18a0
	.uleb128 0x1c
	.long	0x75
	.value	0x3ff
	.byte	0
	.uleb128 0x4
	.long	0xd2f
	.long	0x18b0
	.uleb128 0x5
	.long	0x75
	.byte	0x5
	.byte	0
	.uleb128 0x13
	.long	.LASF405
	.byte	0x5
	.value	0x361
	.long	0x1061
	.uleb128 0x1d
	.long	0x11c20
	.byte	0x5
	.value	0x364
	.long	0x22a1
	.uleb128 0x11
	.long	.LASF406
	.byte	0x5
	.value	0x366
	.long	0x34
	.byte	0
	.uleb128 0x15
	.string	"pn"
	.byte	0x5
	.value	0x367
	.long	0x34
	.byte	0x4
	.uleb128 0x11
	.long	.LASF407
	.byte	0x5
	.value	0x368
	.long	0x34
	.byte	0x8
	.uleb128 0x11
	.long	.LASF408
	.byte	0x5
	.value	0x369
	.long	0x34
	.byte	0xc
	.uleb128 0x11
	.long	.LASF409
	.byte	0x5
	.value	0x36a
	.long	0x34
	.byte	0x10
	.uleb128 0x11
	.long	.LASF410
	.byte	0x5
	.value	0x36b
	.long	0x34
	.byte	0x14
	.uleb128 0x11
	.long	.LASF167
	.byte	0x5
	.value	0x36c
	.long	0x34
	.byte	0x18
	.uleb128 0x11
	.long	.LASF411
	.byte	0x5
	.value	0x36d
	.long	0x34
	.byte	0x1c
	.uleb128 0x11
	.long	.LASF82
	.byte	0x5
	.value	0x36e
	.long	0x34
	.byte	0x20
	.uleb128 0x11
	.long	.LASF412
	.byte	0x5
	.value	0x36f
	.long	0x34
	.byte	0x24
	.uleb128 0x15
	.string	"qp"
	.byte	0x5
	.value	0x370
	.long	0x34
	.byte	0x28
	.uleb128 0x11
	.long	.LASF179
	.byte	0x5
	.value	0x371
	.long	0x34
	.byte	0x2c
	.uleb128 0x11
	.long	.LASF413
	.byte	0x5
	.value	0x372
	.long	0x1030
	.byte	0x30
	.uleb128 0x11
	.long	.LASF414
	.byte	0x5
	.value	0x373
	.long	0x34
	.byte	0x34
	.uleb128 0x11
	.long	.LASF415
	.byte	0x5
	.value	0x374
	.long	0x34
	.byte	0x38
	.uleb128 0x11
	.long	.LASF416
	.byte	0x5
	.value	0x375
	.long	0x34
	.byte	0x3c
	.uleb128 0x11
	.long	.LASF417
	.byte	0x5
	.value	0x376
	.long	0x34
	.byte	0x40
	.uleb128 0x11
	.long	.LASF418
	.byte	0x5
	.value	0x377
	.long	0x34
	.byte	0x44
	.uleb128 0x11
	.long	.LASF419
	.byte	0x5
	.value	0x378
	.long	0x34
	.byte	0x48
	.uleb128 0x11
	.long	.LASF420
	.byte	0x5
	.value	0x379
	.long	0x34
	.byte	0x4c
	.uleb128 0x11
	.long	.LASF421
	.byte	0x5
	.value	0x37a
	.long	0x34
	.byte	0x50
	.uleb128 0x11
	.long	.LASF422
	.byte	0x5
	.value	0x37b
	.long	0x34
	.byte	0x54
	.uleb128 0x11
	.long	.LASF423
	.byte	0x5
	.value	0x37c
	.long	0x34
	.byte	0x58
	.uleb128 0x11
	.long	.LASF424
	.byte	0x5
	.value	0x37d
	.long	0x34
	.byte	0x5c
	.uleb128 0x11
	.long	.LASF425
	.byte	0x5
	.value	0x37e
	.long	0x34
	.byte	0x60
	.uleb128 0x11
	.long	.LASF426
	.byte	0x5
	.value	0x37f
	.long	0x1043
	.byte	0x68
	.uleb128 0x11
	.long	.LASF427
	.byte	0x5
	.value	0x380
	.long	0x1043
	.byte	0x70
	.uleb128 0x11
	.long	.LASF428
	.byte	0x5
	.value	0x382
	.long	0x34
	.byte	0x78
	.uleb128 0x11
	.long	.LASF429
	.byte	0x5
	.value	0x383
	.long	0x22a1
	.byte	0x80
	.uleb128 0x11
	.long	.LASF430
	.byte	0x5
	.value	0x385
	.long	0x34
	.byte	0x88
	.uleb128 0x11
	.long	.LASF431
	.byte	0x5
	.value	0x386
	.long	0x34
	.byte	0x8c
	.uleb128 0x11
	.long	.LASF432
	.byte	0x5
	.value	0x387
	.long	0x34
	.byte	0x90
	.uleb128 0x11
	.long	.LASF433
	.byte	0x5
	.value	0x388
	.long	0x34
	.byte	0x94
	.uleb128 0x11
	.long	.LASF434
	.byte	0x5
	.value	0x389
	.long	0x34
	.byte	0x98
	.uleb128 0x11
	.long	.LASF435
	.byte	0x5
	.value	0x38a
	.long	0x34
	.byte	0x9c
	.uleb128 0x11
	.long	.LASF436
	.byte	0x5
	.value	0x38b
	.long	0x34
	.byte	0xa0
	.uleb128 0x11
	.long	.LASF437
	.byte	0x5
	.value	0x38c
	.long	0x34
	.byte	0xa4
	.uleb128 0x11
	.long	.LASF438
	.byte	0x5
	.value	0x38e
	.long	0x34
	.byte	0xa8
	.uleb128 0x11
	.long	.LASF439
	.byte	0x5
	.value	0x38f
	.long	0x34
	.byte	0xac
	.uleb128 0x11
	.long	.LASF440
	.byte	0x5
	.value	0x390
	.long	0x34
	.byte	0xb0
	.uleb128 0x11
	.long	.LASF441
	.byte	0x5
	.value	0x391
	.long	0x34
	.byte	0xb4
	.uleb128 0x11
	.long	.LASF442
	.byte	0x5
	.value	0x395
	.long	0x22a7
	.byte	0xb8
	.uleb128 0x12
	.long	.LASF443
	.byte	0x5
	.value	0x397
	.long	0x22c3
	.value	0x12b8
	.uleb128 0x12
	.long	.LASF444
	.byte	0x5
	.value	0x398
	.long	0x22df
	.value	0x1cb8
	.uleb128 0x12
	.long	.LASF445
	.byte	0x5
	.value	0x399
	.long	0x22fb
	.value	0x2138
	.uleb128 0x19
	.string	"mpr"
	.byte	0x5
	.value	0x39a
	.long	0x231d
	.value	0x3138
	.uleb128 0x19
	.string	"m7"
	.byte	0x5
	.value	0x39b
	.long	0x2333
	.value	0x3338
	.uleb128 0x12
	.long	.LASF446
	.byte	0x5
	.value	0x39d
	.long	0x2349
	.value	0x3738
	.uleb128 0x12
	.long	.LASF447
	.byte	0x5
	.value	0x39e
	.long	0x22a1
	.value	0x3740
	.uleb128 0x12
	.long	.LASF448
	.byte	0x5
	.value	0x3a0
	.long	0x234f
	.value	0x3748
	.uleb128 0x12
	.long	.LASF449
	.byte	0x5
	.value	0x3a1
	.long	0x102a
	.value	0x3750
	.uleb128 0x12
	.long	.LASF450
	.byte	0x5
	.value	0x3a2
	.long	0x2355
	.value	0x3758
	.uleb128 0x12
	.long	.LASF451
	.byte	0x5
	.value	0x3a3
	.long	0x235b
	.value	0x3760
	.uleb128 0x1e
	.long	.LASF452
	.byte	0x5
	.value	0x3a5
	.long	0x83
	.long	0x11860
	.uleb128 0x1e
	.long	.LASF453
	.byte	0x5
	.value	0x3a6
	.long	0x83
	.long	0x11868
	.uleb128 0x1f
	.string	"tr"
	.byte	0x5
	.value	0x3a8
	.long	0x34
	.long	0x11870
	.uleb128 0x1e
	.long	.LASF454
	.byte	0x5
	.value	0x3a9
	.long	0x34
	.long	0x11874
	.uleb128 0x1e
	.long	.LASF455
	.byte	0x5
	.value	0x3aa
	.long	0x49
	.long	0x11878
	.uleb128 0x1e
	.long	.LASF456
	.byte	0x5
	.value	0x3ab
	.long	0x49
	.long	0x1187c
	.uleb128 0x1e
	.long	.LASF457
	.byte	0x5
	.value	0x3ac
	.long	0x236c
	.long	0x11880
	.uleb128 0x1e
	.long	.LASF458
	.byte	0x5
	.value	0x3ad
	.long	0x34
	.long	0x118c0
	.uleb128 0x1e
	.long	.LASF459
	.byte	0x5
	.value	0x3ae
	.long	0x34
	.long	0x118c4
	.uleb128 0x1e
	.long	.LASF460
	.byte	0x5
	.value	0x3af
	.long	0x34
	.long	0x118c8
	.uleb128 0x1e
	.long	.LASF461
	.byte	0x5
	.value	0x3b0
	.long	0x34
	.long	0x118cc
	.uleb128 0x1e
	.long	.LASF462
	.byte	0x5
	.value	0x3b1
	.long	0x34
	.long	0x118d0
	.uleb128 0x1e
	.long	.LASF463
	.byte	0x5
	.value	0x3b4
	.long	0xd2f
	.long	0x118d8
	.uleb128 0x1e
	.long	.LASF464
	.byte	0x5
	.value	0x3b5
	.long	0x34
	.long	0x118e0
	.uleb128 0x1e
	.long	.LASF465
	.byte	0x5
	.value	0x3b6
	.long	0x34
	.long	0x118e4
	.uleb128 0x1e
	.long	.LASF466
	.byte	0x5
	.value	0x3b7
	.long	0x34
	.long	0x118e8
	.uleb128 0x1e
	.long	.LASF467
	.byte	0x5
	.value	0x3b8
	.long	0x34
	.long	0x118ec
	.uleb128 0x1e
	.long	.LASF468
	.byte	0x5
	.value	0x3ba
	.long	0x2382
	.long	0x118f0
	.uleb128 0x1e
	.long	.LASF469
	.byte	0x5
	.value	0x3bb
	.long	0x2382
	.long	0x118f8
	.uleb128 0x1e
	.long	.LASF470
	.byte	0x5
	.value	0x3bd
	.long	0x2382
	.long	0x11900
	.uleb128 0x1e
	.long	.LASF471
	.byte	0x5
	.value	0x3be
	.long	0x2382
	.long	0x11908
	.uleb128 0x1e
	.long	.LASF207
	.byte	0x5
	.value	0x3bf
	.long	0x23a6
	.long	0x11910
	.uleb128 0x1e
	.long	.LASF214
	.byte	0x5
	.value	0x3c3
	.long	0x34
	.long	0x11930
	.uleb128 0x1e
	.long	.LASF215
	.byte	0x5
	.value	0x3c4
	.long	0x34
	.long	0x11934
	.uleb128 0x1e
	.long	.LASF216
	.byte	0x5
	.value	0x3c5
	.long	0x34
	.long	0x11938
	.uleb128 0x1e
	.long	.LASF299
	.byte	0x5
	.value	0x3c7
	.long	0x34
	.long	0x1193c
	.uleb128 0x1e
	.long	.LASF472
	.byte	0x5
	.value	0x3c9
	.long	0x34
	.long	0x11940
	.uleb128 0x1e
	.long	.LASF473
	.byte	0x5
	.value	0x3ca
	.long	0x34
	.long	0x11944
	.uleb128 0x1e
	.long	.LASF474
	.byte	0x5
	.value	0x3cc
	.long	0x34
	.long	0x11948
	.uleb128 0x1e
	.long	.LASF475
	.byte	0x5
	.value	0x3cd
	.long	0x34
	.long	0x1194c
	.uleb128 0x1e
	.long	.LASF476
	.byte	0x5
	.value	0x3ce
	.long	0x23b6
	.long	0x11950
	.uleb128 0x1e
	.long	.LASF477
	.byte	0x5
	.value	0x3cf
	.long	0x34
	.long	0x11ab8
	.uleb128 0x1e
	.long	.LASF478
	.byte	0x5
	.value	0x3d0
	.long	0x34
	.long	0x11abc
	.uleb128 0x1e
	.long	.LASF479
	.byte	0x5
	.value	0x3d2
	.long	0x34
	.long	0x11ac0
	.uleb128 0x1e
	.long	.LASF480
	.byte	0x5
	.value	0x3d3
	.long	0x34
	.long	0x11ac4
	.uleb128 0x1e
	.long	.LASF481
	.byte	0x5
	.value	0x3d4
	.long	0x34
	.long	0x11ac8
	.uleb128 0x1e
	.long	.LASF482
	.byte	0x5
	.value	0x3d6
	.long	0x34
	.long	0x11acc
	.uleb128 0x1e
	.long	.LASF483
	.byte	0x5
	.value	0x3d8
	.long	0x34
	.long	0x11ad0
	.uleb128 0x1e
	.long	.LASF75
	.byte	0x5
	.value	0x3dc
	.long	0x49
	.long	0x11ad4
	.uleb128 0x1e
	.long	.LASF77
	.byte	0x5
	.value	0x3e0
	.long	0x49
	.long	0x11ad8
	.uleb128 0x1e
	.long	.LASF78
	.byte	0x5
	.value	0x3e1
	.long	0x34
	.long	0x11adc
	.uleb128 0x1e
	.long	.LASF79
	.byte	0x5
	.value	0x3e2
	.long	0x34
	.long	0x11ae0
	.uleb128 0x1e
	.long	.LASF80
	.byte	0x5
	.value	0x3e3
	.long	0x49
	.long	0x11ae4
	.uleb128 0x1e
	.long	.LASF81
	.byte	0x5
	.value	0x3e4
	.long	0x23cc
	.long	0x11ae8
	.uleb128 0x1e
	.long	.LASF484
	.byte	0x5
	.value	0x3e9
	.long	0x49
	.long	0x11aec
	.uleb128 0x1e
	.long	.LASF485
	.byte	0x5
	.value	0x3ea
	.long	0x34
	.long	0x11af0
	.uleb128 0x1e
	.long	.LASF486
	.byte	0x5
	.value	0x3ec
	.long	0x65
	.long	0x11af4
	.uleb128 0x1e
	.long	.LASF487
	.byte	0x5
	.value	0x3f0
	.long	0x49
	.long	0x11afc
	.uleb128 0x1e
	.long	.LASF488
	.byte	0x5
	.value	0x3f1
	.long	0x34
	.long	0x11b00
	.uleb128 0x1e
	.long	.LASF489
	.byte	0x5
	.value	0x3f2
	.long	0x34
	.long	0x11b04
	.uleb128 0x1e
	.long	.LASF490
	.byte	0x5
	.value	0x3f3
	.long	0x34
	.long	0x11b08
	.uleb128 0x1e
	.long	.LASF491
	.byte	0x5
	.value	0x3f4
	.long	0x34
	.long	0x11b0c
	.uleb128 0x1e
	.long	.LASF492
	.byte	0x5
	.value	0x3f5
	.long	0x49
	.long	0x11b10
	.uleb128 0x1e
	.long	.LASF493
	.byte	0x5
	.value	0x3f7
	.long	0x49
	.long	0x11b14
	.uleb128 0x1e
	.long	.LASF494
	.byte	0x5
	.value	0x3f8
	.long	0x49
	.long	0x11b18
	.uleb128 0x1e
	.long	.LASF495
	.byte	0x5
	.value	0x3f9
	.long	0x49
	.long	0x11b1c
	.uleb128 0x1e
	.long	.LASF496
	.byte	0x5
	.value	0x3fa
	.long	0x49
	.long	0x11b20
	.uleb128 0x1e
	.long	.LASF497
	.byte	0x5
	.value	0x3fb
	.long	0x49
	.long	0x11b24
	.uleb128 0x1e
	.long	.LASF498
	.byte	0x5
	.value	0x3fc
	.long	0x49
	.long	0x11b28
	.uleb128 0x1e
	.long	.LASF499
	.byte	0x5
	.value	0x3ff
	.long	0x49
	.long	0x11b2c
	.uleb128 0x1e
	.long	.LASF500
	.byte	0x5
	.value	0x403
	.long	0x34
	.long	0x11b30
	.uleb128 0x1e
	.long	.LASF501
	.byte	0x5
	.value	0x405
	.long	0x34
	.long	0x11b34
	.uleb128 0x1e
	.long	.LASF502
	.byte	0x5
	.value	0x406
	.long	0x34
	.long	0x11b38
	.uleb128 0x1e
	.long	.LASF503
	.byte	0x5
	.value	0x407
	.long	0x34
	.long	0x11b3c
	.uleb128 0x1e
	.long	.LASF504
	.byte	0x5
	.value	0x409
	.long	0x23dc
	.long	0x11b40
	.uleb128 0x1e
	.long	.LASF379
	.byte	0x5
	.value	0x40b
	.long	0x34
	.long	0x11b48
	.uleb128 0x1e
	.long	.LASF505
	.byte	0x5
	.value	0x40f
	.long	0x34
	.long	0x11b4c
	.uleb128 0x1e
	.long	.LASF506
	.byte	0x5
	.value	0x410
	.long	0x34
	.long	0x11b50
	.uleb128 0x1e
	.long	.LASF507
	.byte	0x5
	.value	0x411
	.long	0x34
	.long	0x11b54
	.uleb128 0x1e
	.long	.LASF508
	.byte	0x5
	.value	0x412
	.long	0x34
	.long	0x11b58
	.uleb128 0x1e
	.long	.LASF509
	.byte	0x5
	.value	0x413
	.long	0xd2f
	.long	0x11b60
	.uleb128 0x1e
	.long	.LASF510
	.byte	0x5
	.value	0x414
	.long	0x34
	.long	0x11b68
	.uleb128 0x1e
	.long	.LASF511
	.byte	0x5
	.value	0x415
	.long	0x34
	.long	0x11b6c
	.uleb128 0x1e
	.long	.LASF512
	.byte	0x5
	.value	0x416
	.long	0x34
	.long	0x11b70
	.uleb128 0x1e
	.long	.LASF513
	.byte	0x5
	.value	0x417
	.long	0x34
	.long	0x11b74
	.uleb128 0x1e
	.long	.LASF514
	.byte	0x5
	.value	0x418
	.long	0x34
	.long	0x11b78
	.uleb128 0x1e
	.long	.LASF515
	.byte	0x5
	.value	0x419
	.long	0x34
	.long	0x11b7c
	.uleb128 0x1e
	.long	.LASF516
	.byte	0x5
	.value	0x41a
	.long	0x34
	.long	0x11b80
	.uleb128 0x1e
	.long	.LASF517
	.byte	0x5
	.value	0x41b
	.long	0x23e2
	.long	0x11b88
	.uleb128 0x1e
	.long	.LASF518
	.byte	0x5
	.value	0x41c
	.long	0x34
	.long	0x11b90
	.uleb128 0x1e
	.long	.LASF519
	.byte	0x5
	.value	0x41d
	.long	0x34
	.long	0x11b94
	.uleb128 0x1e
	.long	.LASF520
	.byte	0x5
	.value	0x41e
	.long	0x34
	.long	0x11b98
	.uleb128 0x1e
	.long	.LASF521
	.byte	0x5
	.value	0x41f
	.long	0x34
	.long	0x11b9c
	.uleb128 0x1e
	.long	.LASF522
	.byte	0x5
	.value	0x420
	.long	0x34
	.long	0x11ba0
	.uleb128 0x1e
	.long	.LASF523
	.byte	0x5
	.value	0x421
	.long	0x34
	.long	0x11ba4
	.uleb128 0x1e
	.long	.LASF524
	.byte	0x5
	.value	0x422
	.long	0x34
	.long	0x11ba8
	.uleb128 0x1e
	.long	.LASF525
	.byte	0x5
	.value	0x423
	.long	0x34
	.long	0x11bac
	.uleb128 0x1e
	.long	.LASF526
	.byte	0x5
	.value	0x424
	.long	0x34
	.long	0x11bb0
	.uleb128 0x1e
	.long	.LASF527
	.byte	0x5
	.value	0x425
	.long	0x34
	.long	0x11bb4
	.uleb128 0x1e
	.long	.LASF528
	.byte	0x5
	.value	0x426
	.long	0x34
	.long	0x11bb8
	.uleb128 0x1e
	.long	.LASF529
	.byte	0x5
	.value	0x428
	.long	0x34
	.long	0x11bbc
	.uleb128 0x1e
	.long	.LASF530
	.byte	0x5
	.value	0x42a
	.long	0x34
	.long	0x11bc0
	.uleb128 0x1e
	.long	.LASF531
	.byte	0x5
	.value	0x42b
	.long	0x34
	.long	0x11bc4
	.uleb128 0x1e
	.long	.LASF532
	.byte	0x5
	.value	0x42c
	.long	0x34
	.long	0x11bc8
	.uleb128 0x1e
	.long	.LASF376
	.byte	0x5
	.value	0x42e
	.long	0x34
	.long	0x11bcc
	.uleb128 0x1e
	.long	.LASF533
	.byte	0x5
	.value	0x430
	.long	0x34
	.long	0x11bd0
	.uleb128 0x1e
	.long	.LASF534
	.byte	0x5
	.value	0x431
	.long	0x34
	.long	0x11bd4
	.uleb128 0x1e
	.long	.LASF535
	.byte	0x5
	.value	0x432
	.long	0x34
	.long	0x11bd8
	.uleb128 0x1e
	.long	.LASF536
	.byte	0x5
	.value	0x433
	.long	0x34
	.long	0x11bdc
	.uleb128 0x1e
	.long	.LASF537
	.byte	0x5
	.value	0x434
	.long	0x34
	.long	0x11be0
	.uleb128 0x1e
	.long	.LASF538
	.byte	0x5
	.value	0x435
	.long	0x34
	.long	0x11be4
	.uleb128 0x1e
	.long	.LASF539
	.byte	0x5
	.value	0x436
	.long	0x49
	.long	0x11be8
	.uleb128 0x1e
	.long	.LASF540
	.byte	0x5
	.value	0x437
	.long	0x34
	.long	0x11bec
	.uleb128 0x1e
	.long	.LASF541
	.byte	0x5
	.value	0x438
	.long	0x34
	.long	0x11bf0
	.uleb128 0x1e
	.long	.LASF542
	.byte	0x5
	.value	0x43a
	.long	0x34
	.long	0x11bf4
	.uleb128 0x1e
	.long	.LASF543
	.byte	0x5
	.value	0x43b
	.long	0x34
	.long	0x11bf8
	.uleb128 0x1e
	.long	.LASF281
	.byte	0x5
	.value	0x43c
	.long	0x34
	.long	0x11bfc
	.uleb128 0x1e
	.long	.LASF544
	.byte	0x5
	.value	0x43d
	.long	0x34
	.long	0x11c00
	.uleb128 0x1e
	.long	.LASF545
	.byte	0x5
	.value	0x43e
	.long	0x34
	.long	0x11c04
	.uleb128 0x1e
	.long	.LASF546
	.byte	0x5
	.value	0x43f
	.long	0x34
	.long	0x11c08
	.uleb128 0x1e
	.long	.LASF547
	.byte	0x5
	.value	0x441
	.long	0x65
	.long	0x11c0c
	.uleb128 0x1e
	.long	.LASF400
	.byte	0x5
	.value	0x444
	.long	0x34
	.long	0x11c14
	.uleb128 0x1e
	.long	.LASF548
	.byte	0x5
	.value	0x446
	.long	0x34
	.long	0x11c18
	.uleb128 0x1e
	.long	.LASF549
	.byte	0x5
	.value	0x447
	.long	0x34
	.long	0x11c1c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1043
	.uleb128 0x4
	.long	0x42
	.long	0x22c3
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
	.long	0x42
	.long	0x22df
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
	.long	0x42
	.long	0x22fb
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
	.long	0x42
	.long	0x231d
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
	.long	0x42
	.long	0x2333
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x2349
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x22a1
	.uleb128 0x6
	.byte	0x8
	.long	0x1037
	.uleb128 0x6
	.byte	0x8
	.long	0xd36
	.uleb128 0x4
	.long	0xa61
	.long	0x236c
	.uleb128 0x1c
	.long	0x75
	.value	0x4af
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x2382
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2388
	.uleb128 0x6
	.byte	0x8
	.long	0x238e
	.uleb128 0x6
	.byte	0x8
	.long	0x2394
	.uleb128 0x6
	.byte	0x8
	.long	0x239a
	.uleb128 0x6
	.byte	0x8
	.long	0x23a0
	.uleb128 0x6
	.byte	0x8
	.long	0x57
	.uleb128 0x4
	.long	0x57
	.long	0x23b6
	.uleb128 0x5
	.long	0x75
	.byte	0xe
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x23cc
	.uleb128 0x5
	.long	0x75
	.byte	0x5
	.uleb128 0x5
	.long	0x75
	.byte	0xe
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x23dc
	.uleb128 0x5
	.long	0x75
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x98b
	.uleb128 0x6
	.byte	0x8
	.long	0xd2f
	.uleb128 0x13
	.long	.LASF550
	.byte	0x5
	.value	0x449
	.long	0x18bc
	.uleb128 0x20
	.long	.LASF551
	.value	0x19b8
	.byte	0x6
	.byte	0x15
	.long	0x266a
	.uleb128 0xc
	.long	.LASF411
	.byte	0x6
	.byte	0x17
	.long	0x574
	.byte	0
	.uleb128 0xf
	.string	"poc"
	.byte	0x6
	.byte	0x19
	.long	0x34
	.byte	0x4
	.uleb128 0xc
	.long	.LASF552
	.byte	0x6
	.byte	0x1a
	.long	0x34
	.byte	0x8
	.uleb128 0xc
	.long	.LASF553
	.byte	0x6
	.byte	0x1b
	.long	0x34
	.byte	0xc
	.uleb128 0xc
	.long	.LASF554
	.byte	0x6
	.byte	0x1c
	.long	0x34
	.byte	0x10
	.uleb128 0xc
	.long	.LASF555
	.byte	0x6
	.byte	0x1d
	.long	0x34
	.byte	0x14
	.uleb128 0xc
	.long	.LASF556
	.byte	0x6
	.byte	0x1e
	.long	0x266a
	.byte	0x18
	.uleb128 0xd
	.long	.LASF557
	.byte	0x6
	.byte	0x1f
	.long	0x266a
	.value	0x648
	.uleb128 0xd
	.long	.LASF558
	.byte	0x6
	.byte	0x20
	.long	0x266a
	.value	0xc78
	.uleb128 0xd
	.long	.LASF559
	.byte	0x6
	.byte	0x21
	.long	0x266a
	.value	0x12a8
	.uleb128 0xd
	.long	.LASF492
	.byte	0x6
	.byte	0x22
	.long	0x49
	.value	0x18d8
	.uleb128 0xd
	.long	.LASF560
	.byte	0x6
	.byte	0x23
	.long	0x34
	.value	0x18dc
	.uleb128 0xd
	.long	.LASF162
	.byte	0x6
	.byte	0x24
	.long	0x34
	.value	0x18e0
	.uleb128 0xd
	.long	.LASF163
	.byte	0x6
	.byte	0x25
	.long	0x34
	.value	0x18e4
	.uleb128 0xd
	.long	.LASF561
	.byte	0x6
	.byte	0x27
	.long	0x34
	.value	0x18e8
	.uleb128 0xd
	.long	.LASF562
	.byte	0x6
	.byte	0x28
	.long	0x34
	.value	0x18ec
	.uleb128 0xd
	.long	.LASF563
	.byte	0x6
	.byte	0x29
	.long	0x34
	.value	0x18f0
	.uleb128 0xd
	.long	.LASF564
	.byte	0x6
	.byte	0x2a
	.long	0x34
	.value	0x18f4
	.uleb128 0xd
	.long	.LASF565
	.byte	0x6
	.byte	0x2c
	.long	0x34
	.value	0x18f8
	.uleb128 0xd
	.long	.LASF566
	.byte	0x6
	.byte	0x2c
	.long	0x34
	.value	0x18fc
	.uleb128 0xd
	.long	.LASF567
	.byte	0x6
	.byte	0x2c
	.long	0x34
	.value	0x1900
	.uleb128 0xd
	.long	.LASF568
	.byte	0x6
	.byte	0x2c
	.long	0x34
	.value	0x1904
	.uleb128 0xd
	.long	.LASF569
	.byte	0x6
	.byte	0x2d
	.long	0x34
	.value	0x1908
	.uleb128 0xd
	.long	.LASF570
	.byte	0x6
	.byte	0x2e
	.long	0x34
	.value	0x190c
	.uleb128 0xd
	.long	.LASF483
	.byte	0x6
	.byte	0x2f
	.long	0x34
	.value	0x1910
	.uleb128 0xd
	.long	.LASF571
	.byte	0x6
	.byte	0x31
	.long	0x104f
	.value	0x1918
	.uleb128 0xd
	.long	.LASF572
	.byte	0x6
	.byte	0x32
	.long	0x1055
	.value	0x1920
	.uleb128 0xd
	.long	.LASF573
	.byte	0x6
	.byte	0x33
	.long	0x1055
	.value	0x1928
	.uleb128 0xd
	.long	.LASF574
	.byte	0x6
	.byte	0x34
	.long	0x104f
	.value	0x1930
	.uleb128 0xd
	.long	.LASF575
	.byte	0x6
	.byte	0x35
	.long	0x104f
	.value	0x1938
	.uleb128 0xd
	.long	.LASF576
	.byte	0x6
	.byte	0x36
	.long	0x1049
	.value	0x1940
	.uleb128 0xd
	.long	.LASF195
	.byte	0x6
	.byte	0x38
	.long	0x332
	.value	0x1948
	.uleb128 0xd
	.long	.LASF577
	.byte	0x6
	.byte	0x3a
	.long	0x2394
	.value	0x1950
	.uleb128 0xd
	.long	.LASF578
	.byte	0x6
	.byte	0x3c
	.long	0x2680
	.value	0x1958
	.uleb128 0xd
	.long	.LASF579
	.byte	0x6
	.byte	0x3f
	.long	0x2680
	.value	0x1960
	.uleb128 0x21
	.string	"mv"
	.byte	0x6
	.byte	0x42
	.long	0x238e
	.value	0x1968
	.uleb128 0xd
	.long	.LASF580
	.byte	0x6
	.byte	0x44
	.long	0x105b
	.value	0x1970
	.uleb128 0xd
	.long	.LASF581
	.byte	0x6
	.byte	0x45
	.long	0x105b
	.value	0x1978
	.uleb128 0xd
	.long	.LASF475
	.byte	0x6
	.byte	0x47
	.long	0x2692
	.value	0x1980
	.uleb128 0xd
	.long	.LASF582
	.byte	0x6
	.byte	0x48
	.long	0x2692
	.value	0x1988
	.uleb128 0xd
	.long	.LASF583
	.byte	0x6
	.byte	0x49
	.long	0x2692
	.value	0x1990
	.uleb128 0xd
	.long	.LASF69
	.byte	0x6
	.byte	0x4b
	.long	0x34
	.value	0x1998
	.uleb128 0xd
	.long	.LASF86
	.byte	0x6
	.byte	0x4c
	.long	0x34
	.value	0x199c
	.uleb128 0xd
	.long	.LASF89
	.byte	0x6
	.byte	0x4d
	.long	0x34
	.value	0x19a0
	.uleb128 0xd
	.long	.LASF90
	.byte	0x6
	.byte	0x4e
	.long	0x34
	.value	0x19a4
	.uleb128 0xd
	.long	.LASF91
	.byte	0x6
	.byte	0x4f
	.long	0x34
	.value	0x19a8
	.uleb128 0xd
	.long	.LASF92
	.byte	0x6
	.byte	0x50
	.long	0x34
	.value	0x19ac
	.uleb128 0xd
	.long	.LASF93
	.byte	0x6
	.byte	0x51
	.long	0x34
	.value	0x19b0
	.byte	0
	.uleb128 0x4
	.long	0x50f
	.long	0x2680
	.uleb128 0x5
	.long	0x75
	.byte	0x5
	.uleb128 0x5
	.long	0x75
	.byte	0x20
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2686
	.uleb128 0x6
	.byte	0x8
	.long	0x268c
	.uleb128 0x6
	.byte	0x8
	.long	0x50f
	.uleb128 0x6
	.byte	0x8
	.long	0x23f4
	.uleb128 0x7
	.long	.LASF584
	.byte	0x6
	.byte	0x52
	.long	0x23f4
	.uleb128 0x20
	.long	.LASF585
	.value	0x1310
	.byte	0x6
	.byte	0x56
	.long	0x27b0
	.uleb128 0xc
	.long	.LASF87
	.byte	0x6
	.byte	0x58
	.long	0x34
	.byte	0
	.uleb128 0xc
	.long	.LASF565
	.byte	0x6
	.byte	0x59
	.long	0x34
	.byte	0x4
	.uleb128 0xc
	.long	.LASF566
	.byte	0x6
	.byte	0x59
	.long	0x34
	.byte	0x8
	.uleb128 0xc
	.long	.LASF556
	.byte	0x6
	.byte	0x5b
	.long	0x266a
	.byte	0x10
	.uleb128 0xd
	.long	.LASF577
	.byte	0x6
	.byte	0x5d
	.long	0x2394
	.value	0x640
	.uleb128 0xd
	.long	.LASF578
	.byte	0x6
	.byte	0x5e
	.long	0x2680
	.value	0x648
	.uleb128 0x21
	.string	"mv"
	.byte	0x6
	.byte	0x5f
	.long	0x238e
	.value	0x650
	.uleb128 0xd
	.long	.LASF580
	.byte	0x6
	.byte	0x60
	.long	0x105b
	.value	0x658
	.uleb128 0xd
	.long	.LASF558
	.byte	0x6
	.byte	0x63
	.long	0x266a
	.value	0x660
	.uleb128 0xd
	.long	.LASF586
	.byte	0x6
	.byte	0x64
	.long	0x2394
	.value	0xc90
	.uleb128 0xd
	.long	.LASF587
	.byte	0x6
	.byte	0x65
	.long	0x2680
	.value	0xc98
	.uleb128 0xd
	.long	.LASF588
	.byte	0x6
	.byte	0x66
	.long	0x238e
	.value	0xca0
	.uleb128 0xd
	.long	.LASF589
	.byte	0x6
	.byte	0x67
	.long	0x105b
	.value	0xca8
	.uleb128 0xd
	.long	.LASF559
	.byte	0x6
	.byte	0x6a
	.long	0x266a
	.value	0xcb0
	.uleb128 0xd
	.long	.LASF590
	.byte	0x6
	.byte	0x6b
	.long	0x2394
	.value	0x12e0
	.uleb128 0xd
	.long	.LASF591
	.byte	0x6
	.byte	0x6c
	.long	0x2680
	.value	0x12e8
	.uleb128 0xd
	.long	.LASF592
	.byte	0x6
	.byte	0x6d
	.long	0x238e
	.value	0x12f0
	.uleb128 0xd
	.long	.LASF593
	.byte	0x6
	.byte	0x6e
	.long	0x105b
	.value	0x12f8
	.uleb128 0xd
	.long	.LASF561
	.byte	0x6
	.byte	0x70
	.long	0x34
	.value	0x1300
	.uleb128 0xd
	.long	.LASF581
	.byte	0x6
	.byte	0x71
	.long	0x105b
	.value	0x1308
	.byte	0
	.uleb128 0x7
	.long	.LASF594
	.byte	0x6
	.byte	0x73
	.long	0x26a3
	.uleb128 0x22
	.long	.LASF595
	.byte	0x40
	.byte	0x6
	.byte	0x76
	.long	0x2864
	.uleb128 0xc
	.long	.LASF596
	.byte	0x6
	.byte	0x78
	.long	0x34
	.byte	0
	.uleb128 0xc
	.long	.LASF597
	.byte	0x6
	.byte	0x79
	.long	0x34
	.byte	0x4
	.uleb128 0xc
	.long	.LASF561
	.byte	0x6
	.byte	0x7a
	.long	0x34
	.byte	0x8
	.uleb128 0xc
	.long	.LASF598
	.byte	0x6
	.byte	0x7b
	.long	0x34
	.byte	0xc
	.uleb128 0xc
	.long	.LASF599
	.byte	0x6
	.byte	0x7d
	.long	0x34
	.byte	0x10
	.uleb128 0xc
	.long	.LASF492
	.byte	0x6
	.byte	0x7f
	.long	0x49
	.byte	0x14
	.uleb128 0xc
	.long	.LASF600
	.byte	0x6
	.byte	0x80
	.long	0x34
	.byte	0x18
	.uleb128 0xc
	.long	.LASF163
	.byte	0x6
	.byte	0x81
	.long	0x34
	.byte	0x1c
	.uleb128 0xc
	.long	.LASF563
	.byte	0x6
	.byte	0x82
	.long	0x34
	.byte	0x20
	.uleb128 0xf
	.string	"poc"
	.byte	0x6
	.byte	0x83
	.long	0x34
	.byte	0x24
	.uleb128 0xc
	.long	.LASF583
	.byte	0x6
	.byte	0x85
	.long	0x2864
	.byte	0x28
	.uleb128 0xc
	.long	.LASF475
	.byte	0x6
	.byte	0x86
	.long	0x2864
	.byte	0x30
	.uleb128 0xc
	.long	.LASF582
	.byte	0x6
	.byte	0x87
	.long	0x2864
	.byte	0x38
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2698
	.uleb128 0x7
	.long	.LASF601
	.byte	0x6
	.byte	0x89
	.long	0x27bb
	.uleb128 0x22
	.long	.LASF602
	.byte	0x40
	.byte	0x6
	.byte	0x8d
	.long	0x2905
	.uleb128 0xf
	.string	"fs"
	.byte	0x6
	.byte	0x8f
	.long	0x2905
	.byte	0
	.uleb128 0xc
	.long	.LASF603
	.byte	0x6
	.byte	0x90
	.long	0x2905
	.byte	0x8
	.uleb128 0xc
	.long	.LASF604
	.byte	0x6
	.byte	0x91
	.long	0x2905
	.byte	0x10
	.uleb128 0xc
	.long	.LASF605
	.byte	0x6
	.byte	0x92
	.long	0x49
	.byte	0x18
	.uleb128 0xc
	.long	.LASF606
	.byte	0x6
	.byte	0x93
	.long	0x49
	.byte	0x1c
	.uleb128 0xc
	.long	.LASF607
	.byte	0x6
	.byte	0x94
	.long	0x49
	.byte	0x20
	.uleb128 0xc
	.long	.LASF608
	.byte	0x6
	.byte	0x95
	.long	0x49
	.byte	0x24
	.uleb128 0xc
	.long	.LASF609
	.byte	0x6
	.byte	0x96
	.long	0x34
	.byte	0x28
	.uleb128 0xc
	.long	.LASF610
	.byte	0x6
	.byte	0x97
	.long	0x34
	.byte	0x2c
	.uleb128 0xc
	.long	.LASF611
	.byte	0x6
	.byte	0x99
	.long	0x34
	.byte	0x30
	.uleb128 0xc
	.long	.LASF612
	.byte	0x6
	.byte	0x9b
	.long	0x290b
	.byte	0x38
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x290b
	.uleb128 0x6
	.byte	0x8
	.long	0x286a
	.uleb128 0x7
	.long	.LASF613
	.byte	0x6
	.byte	0x9c
	.long	0x2875
	.uleb128 0x23
	.long	.LASF615
	.byte	0x1
	.byte	0x37
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x2943
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.byte	0x39
	.long	0x49
	.byte	0
	.uleb128 0x25
	.long	.LASF618
	.byte	0x1
	.byte	0x65
	.long	0x34
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x2981
	.uleb128 0x26
	.long	.LASF614
	.byte	0x1
	.byte	0x67
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x26
	.long	.LASF605
	.byte	0x1
	.byte	0x69
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x27
	.long	.LASF616
	.byte	0x1
	.byte	0xaa
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x29b7
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.byte	0xac
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.string	"j"
	.byte	0x1
	.byte	0xac
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x27
	.long	.LASF617
	.byte	0x1
	.byte	0xf1
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x29e1
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.byte	0xf3
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x29
	.long	.LASF619
	.byte	0x1
	.value	0x11b
	.long	0x290b
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x2a11
	.uleb128 0x2a
	.string	"f"
	.byte	0x1
	.value	0x11d
	.long	0x290b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2b
	.long	.LASF634
	.byte	0x1
	.value	0x145
	.long	0x2864
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x2a8c
	.uleb128 0x2c
	.long	.LASF411
	.byte	0x1
	.value	0x145
	.long	0x574
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.long	.LASF565
	.byte	0x1
	.value	0x145
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF566
	.byte	0x1
	.value	0x145
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2c
	.long	.LASF567
	.byte	0x1
	.value	0x145
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.long	.LASF568
	.byte	0x1
	.value	0x145
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2a
	.string	"s"
	.byte	0x1
	.value	0x147
	.long	0x2864
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF620
	.byte	0x1
	.value	0x18e
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x2ab8
	.uleb128 0x2e
	.string	"f"
	.byte	0x1
	.value	0x18e
	.long	0x290b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF621
	.byte	0x1
	.value	0x1af
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x2ae4
	.uleb128 0x2e
	.string	"p"
	.byte	0x1
	.value	0x1af
	.long	0x2864
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2f
	.long	.LASF622
	.byte	0x1
	.value	0x20b
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x2b11
	.uleb128 0x2e
	.string	"fs"
	.byte	0x1
	.value	0x20b
	.long	0x290b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x30
	.long	.LASF623
	.byte	0x1
	.value	0x23f
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x2b3e
	.uleb128 0x2e
	.string	"fs"
	.byte	0x1
	.value	0x23f
	.long	0x290b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x31
	.long	.LASF626
	.byte	0x1
	.value	0x268
	.long	0x34
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x2b7f
	.uleb128 0x2c
	.long	.LASF624
	.byte	0x1
	.value	0x268
	.long	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.long	.LASF625
	.byte	0x1
	.value	0x268
	.long	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x31
	.long	.LASF627
	.byte	0x1
	.value	0x279
	.long	0x34
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x2bc0
	.uleb128 0x2c
	.long	.LASF624
	.byte	0x1
	.value	0x279
	.long	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.long	.LASF625
	.byte	0x1
	.value	0x279
	.long	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x31
	.long	.LASF628
	.byte	0x1
	.value	0x28a
	.long	0x34
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x2c01
	.uleb128 0x2c
	.long	.LASF624
	.byte	0x1
	.value	0x28a
	.long	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.long	.LASF625
	.byte	0x1
	.value	0x28a
	.long	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x31
	.long	.LASF629
	.byte	0x1
	.value	0x29c
	.long	0x34
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x2c42
	.uleb128 0x2c
	.long	.LASF624
	.byte	0x1
	.value	0x29c
	.long	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.long	.LASF625
	.byte	0x1
	.value	0x29c
	.long	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x31
	.long	.LASF630
	.byte	0x1
	.value	0x2ae
	.long	0x34
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x2c83
	.uleb128 0x2c
	.long	.LASF624
	.byte	0x1
	.value	0x2ae
	.long	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.long	.LASF625
	.byte	0x1
	.value	0x2ae
	.long	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x31
	.long	.LASF631
	.byte	0x1
	.value	0x2c0
	.long	0x34
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x2cc4
	.uleb128 0x2c
	.long	.LASF624
	.byte	0x1
	.value	0x2c0
	.long	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.long	.LASF625
	.byte	0x1
	.value	0x2c0
	.long	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x31
	.long	.LASF632
	.byte	0x1
	.value	0x2d2
	.long	0x34
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x2d05
	.uleb128 0x2c
	.long	.LASF624
	.byte	0x1
	.value	0x2d2
	.long	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.long	.LASF625
	.byte	0x1
	.value	0x2d2
	.long	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x31
	.long	.LASF633
	.byte	0x1
	.value	0x2e4
	.long	0x34
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x2d46
	.uleb128 0x2c
	.long	.LASF624
	.byte	0x1
	.value	0x2e4
	.long	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.long	.LASF625
	.byte	0x1
	.value	0x2e4
	.long	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x32
	.long	.LASF635
	.byte	0x1
	.value	0x2f6
	.long	0x34
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x2d76
	.uleb128 0x2e
	.string	"s"
	.byte	0x1
	.value	0x2f6
	.long	0x2864
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x32
	.long	.LASF636
	.byte	0x1
	.value	0x303
	.long	0x34
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x2da6
	.uleb128 0x2e
	.string	"s"
	.byte	0x1
	.value	0x303
	.long	0x2864
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2f
	.long	.LASF637
	.byte	0x1
	.value	0x310
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x2e4d
	.uleb128 0x2c
	.long	.LASF638
	.byte	0x1
	.value	0x310
	.long	0x574
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.long	.LASF639
	.byte	0x1
	.value	0x310
	.long	0x2905
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.long	.LASF640
	.byte	0x1
	.value	0x310
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF641
	.byte	0x1
	.value	0x310
	.long	0x2e4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.long	.LASF642
	.byte	0x1
	.value	0x310
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2c
	.long	.LASF643
	.byte	0x1
	.value	0x310
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x33
	.long	.LASF644
	.byte	0x1
	.value	0x312
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.long	.LASF645
	.byte	0x1
	.value	0x313
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.long	.LASF646
	.byte	0x1
	.value	0x315
	.long	0x2e62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2864
	.uleb128 0x1b
	.long	0x34
	.long	0x2e62
	.uleb128 0x17
	.long	0x2864
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2e53
	.uleb128 0x2d
	.long	.LASF647
	.byte	0x1
	.value	0x36a
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x2f6b
	.uleb128 0x2c
	.long	.LASF648
	.byte	0x1
	.value	0x36a
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2c
	.long	.LASF649
	.byte	0x1
	.value	0x36a
	.long	0x574
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x33
	.long	.LASF650
	.byte	0x1
	.value	0x36c
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x33
	.long	.LASF651
	.byte	0x1
	.value	0x36c
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.value	0x36d
	.long	0x49
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2a
	.string	"j"
	.byte	0x1
	.value	0x36e
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x33
	.long	.LASF652
	.byte	0x1
	.value	0x36f
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x33
	.long	.LASF653
	.byte	0x1
	.value	0x370
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x33
	.long	.LASF654
	.byte	0x1
	.value	0x372
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x33
	.long	.LASF655
	.byte	0x1
	.value	0x373
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x33
	.long	.LASF656
	.byte	0x1
	.value	0x374
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x33
	.long	.LASF657
	.byte	0x1
	.value	0x376
	.long	0x2905
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.long	.LASF658
	.byte	0x1
	.value	0x377
	.long	0x2905
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.long	.LASF659
	.byte	0x1
	.value	0x378
	.long	0x2905
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.long	.LASF660
	.byte	0x1
	.value	0x37a
	.long	0x2864
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x34
	.long	.LASF661
	.byte	0x1
	.value	0x4d7
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x2fa4
	.uleb128 0x2a
	.string	"j"
	.byte	0x1
	.value	0x4d9
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.value	0x4da
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x31
	.long	.LASF662
	.byte	0x1
	.value	0x4ff
	.long	0x2864
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x2fe3
	.uleb128 0x2c
	.long	.LASF663
	.byte	0x1
	.value	0x4ff
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.value	0x501
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x31
	.long	.LASF664
	.byte	0x1
	.value	0x51f
	.long	0x2864
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x3022
	.uleb128 0x2c
	.long	.LASF665
	.byte	0x1
	.value	0x51f
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.value	0x521
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2f
	.long	.LASF666
	.byte	0x1
	.value	0x53f
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x30aa
	.uleb128 0x2c
	.long	.LASF667
	.byte	0x1
	.value	0x53f
	.long	0x2e4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF668
	.byte	0x1
	.value	0x53f
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2c
	.long	.LASF669
	.byte	0x1
	.value	0x53f
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.long	.LASF670
	.byte	0x1
	.value	0x53f
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x33
	.long	.LASF671
	.byte	0x1
	.value	0x541
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.long	.LASF672
	.byte	0x1
	.value	0x541
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.long	.LASF673
	.byte	0x1
	.value	0x543
	.long	0x2864
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2f
	.long	.LASF674
	.byte	0x1
	.value	0x55d
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x3132
	.uleb128 0x2c
	.long	.LASF667
	.byte	0x1
	.value	0x55d
	.long	0x2e4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF668
	.byte	0x1
	.value	0x55d
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2c
	.long	.LASF675
	.byte	0x1
	.value	0x55d
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.long	.LASF670
	.byte	0x1
	.value	0x55d
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x33
	.long	.LASF671
	.byte	0x1
	.value	0x55f
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.long	.LASF672
	.byte	0x1
	.value	0x55f
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.long	.LASF673
	.byte	0x1
	.value	0x561
	.long	0x2864
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF676
	.byte	0x1
	.value	0x579
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x3225
	.uleb128 0x2c
	.long	.LASF641
	.byte	0x1
	.value	0x579
	.long	0x2e4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2c
	.long	.LASF642
	.byte	0x1
	.value	0x579
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2c
	.long	.LASF668
	.byte	0x1
	.value	0x579
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2c
	.long	.LASF677
	.byte	0x1
	.value	0x579
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2c
	.long	.LASF678
	.byte	0x1
	.value	0x579
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2c
	.long	.LASF679
	.byte	0x1
	.value	0x579
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.value	0x57b
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x33
	.long	.LASF680
	.byte	0x1
	.value	0x57d
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.long	.LASF681
	.byte	0x1
	.value	0x57d
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.long	.LASF682
	.byte	0x1
	.value	0x57d
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.long	.LASF683
	.byte	0x1
	.value	0x57d
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.long	.LASF669
	.byte	0x1
	.value	0x57d
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.long	.LASF670
	.byte	0x1
	.value	0x57e
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.long	.LASF652
	.byte	0x1
	.value	0x57f
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x35
	.long	.LASF684
	.byte	0x1
	.value	0x5bf
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x325e
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.value	0x5c1
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.string	"j"
	.byte	0x1
	.value	0x5c1
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x35
	.long	.LASF685
	.byte	0x1
	.value	0x5db
	.quad	.LFB31
	.quad	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0x3297
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.value	0x5dd
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.string	"j"
	.byte	0x1
	.value	0x5dd
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2f
	.long	.LASF686
	.byte	0x1
	.value	0x5f5
	.quad	.LFB32
	.quad	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0x32d0
	.uleb128 0x2e
	.string	"p"
	.byte	0x1
	.value	0x5f5
	.long	0x2864
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.value	0x5f7
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x2f
	.long	.LASF687
	.byte	0x1
	.value	0x62c
	.quad	.LFB33
	.quad	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0x3309
	.uleb128 0x2e
	.string	"p"
	.byte	0x1
	.value	0x62c
	.long	0x2864
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.value	0x62e
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x31
	.long	.LASF688
	.byte	0x1
	.value	0x648
	.long	0x34
	.quad	.LFB34
	.quad	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0x3357
	.uleb128 0x2e
	.string	"p"
	.byte	0x1
	.value	0x648
	.long	0x2864
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF161
	.byte	0x1
	.value	0x648
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x33
	.long	.LASF681
	.byte	0x1
	.value	0x64a
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2f
	.long	.LASF689
	.byte	0x1
	.value	0x65b
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0x33ae
	.uleb128 0x2e
	.string	"p"
	.byte	0x1
	.value	0x65b
	.long	0x2864
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF161
	.byte	0x1
	.value	0x65b
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x33
	.long	.LASF690
	.byte	0x1
	.value	0x65d
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.value	0x65f
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2f
	.long	.LASF691
	.byte	0x1
	.value	0x697
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.long	0x33f6
	.uleb128 0x2e
	.string	"p"
	.byte	0x1
	.value	0x697
	.long	0x2864
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF162
	.byte	0x1
	.value	0x697
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.value	0x699
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2f
	.long	.LASF692
	.byte	0x1
	.value	0x6d3
	.quad	.LFB37
	.quad	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0x3431
	.uleb128 0x2c
	.long	.LASF163
	.byte	0x1
	.value	0x6d3
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.value	0x6d5
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2f
	.long	.LASF693
	.byte	0x1
	.value	0x6e4
	.quad	.LFB38
	.quad	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.long	0x34b7
	.uleb128 0x2c
	.long	.LASF411
	.byte	0x1
	.value	0x6e4
	.long	0x574
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.long	.LASF163
	.byte	0x1
	.value	0x6e4
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF694
	.byte	0x1
	.value	0x6e4
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2c
	.long	.LASF695
	.byte	0x1
	.value	0x6e4
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.long	.LASF696
	.byte	0x1
	.value	0x6e4
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.value	0x6e6
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.long	.LASF652
	.byte	0x1
	.value	0x6e7
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2f
	.long	.LASF697
	.byte	0x1
	.value	0x744
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.long	0x352c
	.uleb128 0x2e
	.string	"p"
	.byte	0x1
	.value	0x744
	.long	0x2864
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF163
	.byte	0x1
	.value	0x744
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2c
	.long	.LASF690
	.byte	0x1
	.value	0x744
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.value	0x746
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.long	.LASF650
	.byte	0x1
	.value	0x747
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.long	.LASF651
	.byte	0x1
	.value	0x747
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2f
	.long	.LASF698
	.byte	0x1
	.value	0x7a8
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x35b3
	.uleb128 0x2e
	.string	"p"
	.byte	0x1
	.value	0x7a8
	.long	0x2864
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF161
	.byte	0x1
	.value	0x7a8
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2c
	.long	.LASF163
	.byte	0x1
	.value	0x7a8
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.long	.LASF690
	.byte	0x1
	.value	0x7aa
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x36
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.value	0x7b5
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.long	.LASF411
	.byte	0x1
	.value	0x7b6
	.long	0x574
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF699
	.byte	0x1
	.value	0x7dc
	.quad	.LFB41
	.quad	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.long	0x35ee
	.uleb128 0x2c
	.long	.LASF164
	.byte	0x1
	.value	0x7dc
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.value	0x7de
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x37
	.long	.LASF751
	.byte	0x1
	.value	0x7f3
	.quad	.LFB42
	.quad	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x38
	.long	.LASF713
	.byte	0x1
	.value	0x7fe
	.quad	.LFB43
	.quad	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.long	0x3634
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.value	0x800
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2f
	.long	.LASF700
	.byte	0x1
	.value	0x80f
	.quad	.LFB44
	.quad	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.long	0x366f
	.uleb128 0x2e
	.string	"p"
	.byte	0x1
	.value	0x80f
	.long	0x2864
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.long	.LASF163
	.byte	0x1
	.value	0x80f
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x2f
	.long	.LASF701
	.byte	0x1
	.value	0x826
	.quad	.LFB45
	.quad	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.long	0x36aa
	.uleb128 0x2e
	.string	"p"
	.byte	0x1
	.value	0x826
	.long	0x2864
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.long	.LASF702
	.byte	0x1
	.value	0x828
	.long	0x23dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF703
	.byte	0x1
	.value	0x884
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0x3701
	.uleb128 0x2e
	.string	"p"
	.byte	0x1
	.value	0x884
	.long	0x2864
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.value	0x886
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2a
	.string	"poc"
	.byte	0x1
	.value	0x887
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2a
	.string	"pos"
	.byte	0x1
	.value	0x887
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF704
	.byte	0x1
	.value	0x8fe
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0x3757
	.uleb128 0x2e
	.string	"p"
	.byte	0x1
	.value	0x8fe
	.long	0x2864
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.string	"fs"
	.byte	0x1
	.value	0x900
	.long	0x290b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.value	0x901
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.long	.LASF705
	.byte	0x1
	.value	0x901
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x2f
	.long	.LASF706
	.byte	0x1
	.value	0x93e
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0x3791
	.uleb128 0x2e
	.string	"fs"
	.byte	0x1
	.value	0x93e
	.long	0x290b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2e
	.string	"p"
	.byte	0x1
	.value	0x93e
	.long	0x2864
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x31
	.long	.LASF707
	.byte	0x1
	.value	0x995
	.long	0x34
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0x37c2
	.uleb128 0x2e
	.string	"fs"
	.byte	0x1
	.value	0x995
	.long	0x290b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x31
	.long	.LASF708
	.byte	0x1
	.value	0x9bf
	.long	0x34
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0x37f3
	.uleb128 0x2e
	.string	"fs"
	.byte	0x1
	.value	0x9bf
	.long	0x290b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x31
	.long	.LASF709
	.byte	0x1
	.value	0x9e5
	.long	0x34
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0x3824
	.uleb128 0x2e
	.string	"fs"
	.byte	0x1
	.value	0x9e5
	.long	0x290b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2f
	.long	.LASF710
	.byte	0x1
	.value	0xa0b
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0x387c
	.uleb128 0x2e
	.string	"pos"
	.byte	0x1
	.value	0xa0b
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2a
	.string	"fs"
	.byte	0x1
	.value	0xa0d
	.long	0x290b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.string	"tmp"
	.byte	0x1
	.value	0xa0e
	.long	0x290b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.value	0xa0f
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x2f
	.long	.LASF711
	.byte	0x1
	.value	0xa3f
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0x38c6
	.uleb128 0x2e
	.string	"poc"
	.byte	0x1
	.value	0xa3f
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.string	"pos"
	.byte	0x1
	.value	0xa3f
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.value	0xa41
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x39
	.long	.LASF712
	.byte	0x1
	.value	0xa5a
	.long	0x34
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0x38f6
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.value	0xa5c
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x38
	.long	.LASF714
	.byte	0x1
	.value	0xa70
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0x3933
	.uleb128 0x2a
	.string	"poc"
	.byte	0x1
	.value	0xa72
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.string	"pos"
	.byte	0x1
	.value	0xa72
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x35
	.long	.LASF715
	.byte	0x1
	.value	0xa9e
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.long	0x395f
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.value	0xaa0
	.long	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x3a
	.long	.LASF716
	.byte	0x1
	.value	0xab9
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.long	0x39c3
	.uleb128 0x2e
	.string	"p"
	.byte	0x1
	.value	0xab9
	.long	0x2864
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.value	0xabb
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.string	"j"
	.byte	0x1
	.value	0xabb
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.long	.LASF717
	.byte	0x1
	.value	0xabb
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.long	.LASF718
	.byte	0x1
	.value	0xabb
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2d
	.long	.LASF719
	.byte	0x1
	.value	0xad1
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.long	0x3b57
	.uleb128 0x2e
	.string	"fs"
	.byte	0x1
	.value	0xad1
	.long	0x290b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.value	0xad3
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2a
	.string	"j"
	.byte	0x1
	.value	0xad3
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x33
	.long	.LASF717
	.byte	0x1
	.value	0xad4
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x33
	.long	.LASF718
	.byte	0x1
	.value	0xad4
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3b
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.long	0x3a91
	.uleb128 0x33
	.long	.LASF720
	.byte	0x1
	.value	0xb36
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x33
	.long	.LASF721
	.byte	0x1
	.value	0xb36
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x33
	.long	.LASF722
	.byte	0x1
	.value	0xb37
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x36
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x33
	.long	.LASF723
	.byte	0x1
	.value	0xb3a
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x3b
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.long	0x3ad4
	.uleb128 0x33
	.long	.LASF720
	.byte	0x1
	.value	0xb55
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x33
	.long	.LASF721
	.byte	0x1
	.value	0xb55
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.long	.LASF722
	.byte	0x1
	.value	0xb57
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x3b
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.long	0x3b17
	.uleb128 0x33
	.long	.LASF720
	.byte	0x1
	.value	0xb7b
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.long	.LASF721
	.byte	0x1
	.value	0xb7b
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.long	.LASF722
	.byte	0x1
	.value	0xb7d
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x36
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x33
	.long	.LASF720
	.byte	0x1
	.value	0xbb6
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.long	.LASF721
	.byte	0x1
	.value	0xbb6
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.long	.LASF722
	.byte	0x1
	.value	0xbb7
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF724
	.byte	0x1
	.value	0xbc6
	.quad	.LFB59
	.quad	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.long	0x3bbc
	.uleb128 0x2e
	.string	"fs"
	.byte	0x1
	.value	0xbc6
	.long	0x290b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.value	0xbc8
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2a
	.string	"j"
	.byte	0x1
	.value	0xbc8
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.long	.LASF717
	.byte	0x1
	.value	0xbc9
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.long	.LASF718
	.byte	0x1
	.value	0xbc9
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2d
	.long	.LASF725
	.byte	0x1
	.value	0xc48
	.quad	.LFB60
	.quad	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.long	0x3bf9
	.uleb128 0x2c
	.long	.LASF726
	.byte	0x1
	.value	0xc48
	.long	0x102a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.long	.LASF605
	.byte	0x1
	.value	0xc4a
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2d
	.long	.LASF727
	.byte	0x1
	.value	0xc70
	.quad	.LFB61
	.quad	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.long	0x3c27
	.uleb128 0x2c
	.long	.LASF726
	.byte	0x1
	.value	0xc70
	.long	0x102a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2d
	.long	.LASF728
	.byte	0x1
	.value	0xc95
	.quad	.LFB62
	.quad	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.long	0x3ca0
	.uleb128 0x2e
	.string	"img"
	.byte	0x1
	.value	0xc95
	.long	0x3ca0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x33
	.long	.LASF729
	.byte	0x1
	.value	0xc97
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.long	.LASF730
	.byte	0x1
	.value	0xc98
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.long	.LASF731
	.byte	0x1
	.value	0xc99
	.long	0x2864
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.long	.LASF732
	.byte	0x1
	.value	0xc9a
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.long	.LASF652
	.byte	0x1
	.value	0xc9b
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x23e8
	.uleb128 0x2b
	.long	.LASF733
	.byte	0x1
	.value	0xcc8
	.long	0x3d03
	.quad	.LFB63
	.quad	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.long	0x3d03
	.uleb128 0x2c
	.long	.LASF565
	.byte	0x1
	.value	0xcc8
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.long	.LASF566
	.byte	0x1
	.value	0xcc8
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2c
	.long	.LASF87
	.byte	0x1
	.value	0xcc8
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2a
	.string	"s"
	.byte	0x1
	.value	0xcca
	.long	0x3d03
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x27b0
	.uleb128 0x2d
	.long	.LASF734
	.byte	0x1
	.value	0xcf9
	.quad	.LFB64
	.quad	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.long	0x3d35
	.uleb128 0x2e
	.string	"p"
	.byte	0x1
	.value	0xcf9
	.long	0x3d03
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3a
	.long	.LASF735
	.byte	0x1
	.value	0xd35
	.quad	.LFB65
	.quad	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.long	0x3df7
	.uleb128 0x2e
	.string	"p"
	.byte	0x1
	.value	0xd35
	.long	0x3d03
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2c
	.long	.LASF736
	.byte	0x1
	.value	0xd35
	.long	0x3df7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2a
	.string	"fs"
	.byte	0x1
	.value	0xd37
	.long	0x2864
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.long	.LASF737
	.byte	0x1
	.value	0xd37
	.long	0x2864
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x33
	.long	.LASF738
	.byte	0x1
	.value	0xd37
	.long	0x2864
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.value	0xd38
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2a
	.string	"j"
	.byte	0x1
	.value	0xd38
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x36
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x33
	.long	.LASF739
	.byte	0x1
	.value	0xe76
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x33
	.long	.LASF740
	.byte	0x1
	.value	0xe76
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x33
	.long	.LASF741
	.byte	0x1
	.value	0xe76
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2e4d
	.uleb128 0x3c
	.long	.LASF74
	.byte	0x5
	.value	0x1f2
	.long	0x49
	.uleb128 0x3c
	.long	.LASF742
	.byte	0x5
	.value	0x1f7
	.long	0x3e15
	.uleb128 0x6
	.byte	0x8
	.long	0x504
	.uleb128 0x3c
	.long	.LASF743
	.byte	0x5
	.value	0x4b7
	.long	0x3e27
	.uleb128 0x6
	.byte	0x8
	.long	0x18b0
	.uleb128 0x3d
	.string	"img"
	.byte	0x5
	.value	0x4b8
	.long	0x3ca0
	.uleb128 0x3c
	.long	.LASF744
	.byte	0x5
	.value	0x4c3
	.long	0x34
	.uleb128 0x3e
	.string	"dpb"
	.byte	0x1
	.byte	0x26
	.long	0x2911
	.uleb128 0x9
	.byte	0x3
	.quad	dpb
	.uleb128 0x4
	.long	0x2e4d
	.long	0x3e6a
	.uleb128 0x5
	.long	0x75
	.byte	0x5
	.byte	0
	.uleb128 0x3f
	.long	.LASF736
	.byte	0x1
	.byte	0x28
	.long	0x3e5a
	.uleb128 0x9
	.byte	0x3
	.quad	listX
	.uleb128 0x4
	.long	0x34
	.long	0x3e8f
	.uleb128 0x5
	.long	0x75
	.byte	0x5
	.byte	0
	.uleb128 0x3f
	.long	.LASF745
	.byte	0x1
	.byte	0x2d
	.long	0x3e7f
	.uleb128 0x9
	.byte	0x3
	.quad	listXsize
	.uleb128 0x40
	.long	.LASF746
	.byte	0x7
	.byte	0x13
	.long	0x2864
	.uleb128 0x3f
	.long	.LASF747
	.byte	0x1
	.byte	0x2a
	.long	0x3d03
	.uleb128 0x9
	.byte	0x3
	.quad	Co_located
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x2e
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x39
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x3a
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3f
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
	.uleb128 0x40
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
.LASF536:
	.string	"bitdepth_luma_qp_scale"
.LASF388:
	.string	"channel_type"
.LASF407:
	.string	"nb_references"
.LASF594:
	.string	"ColocatedParams"
.LASF584:
	.string	"StorablePicture"
.LASF537:
	.string	"bitdepth_chroma_qp_scale"
.LASF389:
	.string	"ScalingMatrixPresentFlag"
.LASF502:
	.string	"no_output_of_prior_pics_flag"
.LASF101:
	.string	"BITS_INTER_MB"
.LASF473:
	.string	"num_ref_idx_l1_active"
.LASF484:
	.string	"pic_order_cnt_lsb"
.LASF664:
	.string	"get_long_term_pic"
.LASF526:
	.string	"write_macroblock"
.LASF7:
	.string	"sizetype"
.LASF54:
	.string	"max_bytes_per_pic_denom"
.LASF529:
	.string	"DeblockCall"
.LASF575:
	.string	"imgY_ups_w"
.LASF727:
	.string	"free_ref_pic_list_reordering_buffer"
.LASF106:
	.string	"MAX_BITCOUNTER_MB"
.LASF453:
	.string	"intra_block"
.LASF547:
	.string	"chroma_qp_offset"
.LASF415:
	.string	"width_cr"
.LASF497:
	.string	"PicSizeInMbs"
.LASF59:
	.string	"max_dec_frame_buffering"
.LASF601:
	.string	"FrameStore"
.LASF112:
	.string	"B_SLICE"
.LASF610:
	.string	"max_long_term_pic_idx"
.LASF451:
	.string	"MB_SyntaxElements"
.LASF573:
	.string	"imgY_11_w"
.LASF446:
	.string	"cofAC"
.LASF567:
	.string	"size_x_cr"
.LASF544:
	.string	"lossless_qpprime_flag"
.LASF319:
	.string	"PocMemoryManagement"
.LASF461:
	.string	"imgtr_next_P_fld"
.LASF272:
	.string	"search_range"
.LASF476:
	.string	"mvscale"
.LASF97:
	.string	"int64"
.LASF259:
	.string	"slices"
.LASF162:
	.string	"long_term_pic_num"
.LASF39:
	.string	"matrix_coefficients"
.LASF427:
	.string	"ipredmode8x8"
.LASF431:
	.string	"mb_y"
.LASF21:
	.string	"vbr_cbr_flag"
.LASF288:
	.string	"infile_header"
.LASF339:
	.string	"full_search"
.LASF587:
	.string	"top_ref_pic_id"
.LASF704:
	.string	"replace_top_pic_with_frame"
.LASF633:
	.string	"compare_fs_by_poc_desc"
.LASF164:
	.string	"max_long_term_frame_idx_plus1"
.LASF545:
	.string	"mb_cr_size_x"
.LASF383:
	.string	"DisplayEncParams"
.LASF751:
	.string	"mm_unmark_all_long_term_for_reference"
.LASF630:
	.string	"compare_pic_by_poc_asc"
.LASF475:
	.string	"top_field"
.LASF737:
	.string	"fs_top"
.LASF132:
	.string	"state"
.LASF726:
	.string	"currSlice"
.LASF705:
	.string	"found"
.LASF66:
	.string	"constrained_set3_flag"
.LASF716:
	.string	"gen_field_ref_ids"
.LASF334:
	.string	"Intra16x16ParDisable"
.LASF146:
	.string	"bcbp_contexts"
.LASF639:
	.string	"fs_list"
.LASF166:
	.string	"syntaxelement"
.LASF22:
	.string	"initial_cpb_removal_delay_length_minus1"
.LASF297:
	.string	"successive_Bframe"
.LASF31:
	.string	"overscan_info_present_flag"
.LASF307:
	.string	"WeightedPrediction"
.LASF167:
	.string	"type"
.LASF466:
	.string	"fw_mb_mode"
.LASF498:
	.string	"FrameSizeInMbs"
.LASF579:
	.string	"ref_id"
.LASF684:
	.string	"update_ref_list"
.LASF45:
	.string	"time_scale"
.LASF214:
	.string	"LFDisableIdc"
.LASF569:
	.string	"chroma_vector_adjustment"
.LASF300:
	.string	"directInferenceFlag"
.LASF228:
	.string	"bits_to_go_skip"
.LASF468:
	.string	"pred_mv"
.LASF378:
	.string	"context_init_method"
.LASF380:
	.string	"AllowTransform8x8"
.LASF542:
	.string	"num_blk8x8_uv"
.LASF286:
	.string	"slice_argument"
.LASF245:
	.string	"rmpni_buffer"
.LASF327:
	.string	"InterSearch8x4"
.LASF195:
	.string	"mb_field"
.LASF326:
	.string	"InterSearch8x8"
.LASF360:
	.string	"NumFramesInELSubSeq"
.LASF163:
	.string	"long_term_frame_idx"
.LASF559:
	.string	"bottom_ref_pic_num"
.LASF426:
	.string	"ipredmode"
.LASF671:
	.string	"cIdx"
.LASF313:
	.string	"RDBSliceWeightOnly"
.LASF278:
	.string	"GenerateMultiplePPS"
.LASF187:
	.string	"b8mode"
.LASF682:
	.string	"picNumLXNoWrap"
.LASF738:
	.string	"fs_bottom"
.LASF398:
	.string	"cr_qp_index_offset"
.LASF593:
	.string	"bottom_moving_block"
.LASF211:
	.string	"prev_cbp"
.LASF443:
	.string	"mprr_2"
.LASF444:
	.string	"mprr_3"
.LASF653:
	.string	"diff"
.LASF221:
	.string	"bits_to_go"
.LASF159:
	.string	"DecRefPicMarking_s"
.LASF165:
	.string	"DecRefPicMarking_t"
.LASF23:
	.string	"cpb_removal_delay_length_minus1"
.LASF707:
	.string	"is_used_for_reference"
.LASF67:
	.string	"level_idc"
.LASF527:
	.string	"bot_MB"
.LASF597:
	.string	"is_reference"
.LASF525:
	.string	"BasicUnit"
.LASF82:
	.string	"num_ref_frames"
.LASF128:
	.string	"EcodestrmS"
.LASF29:
	.string	"sar_width"
.LASF105:
	.string	"BITS_DELTA_QUANT_MB"
.LASF6:
	.string	"long int"
.LASF548:
	.string	"auto_crop_right"
.LASF675:
	.string	"LongTermPicNum"
.LASF50:
	.string	"vcl_hrd_parameters"
.LASF632:
	.string	"compare_fs_by_poc_asc"
.LASF560:
	.string	"pic_num"
.LASF44:
	.string	"num_units_in_tick"
.LASF445:
	.string	"mprr_c"
.LASF204:
	.string	"all_blk_8x8"
.LASF708:
	.string	"is_short_term_reference"
.LASF348:
	.string	"nobskip"
.LASF500:
	.string	"nal_reference_idc"
.LASF490:
	.string	"framepoc"
.LASF622:
	.string	"unmark_for_reference"
.LASF702:
	.string	"tmp_drpm"
.LASF607:
	.string	"ref_frames_in_buffer"
.LASF652:
	.string	"MaxFrameNum"
.LASF742:
	.string	"active_sps"
.LASF506:
	.string	"NumberofTextureBits"
.LASF441:
	.string	"opix_c_y"
.LASF74:
	.string	"log2_max_frame_num_minus4"
.LASF309:
	.string	"UseWeightedReferenceME"
.LASF562:
	.string	"used_for_reference"
.LASF362:
	.string	"RandomIntraMBRefresh"
.LASF528:
	.string	"write_macroblock_frame"
.LASF225:
	.string	"stored_byte_buf"
.LASF98:
	.string	"BITS_HEADER"
.LASF405:
	.string	"InputParameters"
.LASF28:
	.string	"aspect_ratio_idc"
.LASF494:
	.string	"PicHeightInMapUnits"
.LASF557:
	.string	"frm_ref_pic_num"
.LASF514:
	.string	"NumberofGOP"
.LASF691:
	.string	"mm_unmark_long_term_for_reference"
.LASF534:
	.string	"bitdepth_luma"
.LASF628:
	.string	"compare_fs_by_frame_num_desc"
.LASF30:
	.string	"sar_height"
.LASF102:
	.string	"BITS_CBP_MB"
.LASF440:
	.string	"opix_c_x"
.LASF118:
	.string	"Ebuffer"
.LASF289:
	.string	"infile"
.LASF623:
	.string	"unmark_for_long_term_reference"
.LASF117:
	.string	"Erange"
.LASF4:
	.string	"signed char"
.LASF413:
	.string	"framerate"
.LASF240:
	.string	"max_part_nr"
.LASF131:
	.string	"EncodingEnvironmentPtr"
.LASF647:
	.string	"init_lists"
.LASF77:
	.string	"delta_pic_order_always_zero_flag"
.LASF430:
	.string	"mb_x"
.LASF194:
	.string	"IntraChromaPredModeFlag"
.LASF171:
	.string	"context"
.LASF249:
	.string	"long_term_pic_idx_l0"
.LASF253:
	.string	"long_term_pic_idx_l1"
.LASF246:
	.string	"ref_pic_list_reordering_flag_l0"
.LASF250:
	.string	"ref_pic_list_reordering_flag_l1"
.LASF516:
	.string	"NumberofPPicture"
.LASF511:
	.string	"NumberofMBHeaderBits"
.LASF447:
	.string	"cofDC"
.LASF1:
	.string	"unsigned char"
.LASF642:
	.string	"list_size"
.LASF185:
	.string	"intra_pred_modes8x8"
.LASF85:
	.string	"pic_height_in_map_units_minus1"
.LASF304:
	.string	"BiPredMESubPel"
.LASF40:
	.string	"chroma_location_info_present_flag"
.LASF69:
	.string	"chroma_format_idc"
.LASF301:
	.string	"BiPredMotionEstimation"
.LASF470:
	.string	"bipred_mv1"
.LASF471:
	.string	"bipred_mv2"
.LASF148:
	.string	"last_contexts"
.LASF193:
	.string	"c_ipred_mode"
.LASF373:
	.string	"run_length_minus1"
.LASF541:
	.string	"max_imgpel_value_uv"
.LASF282:
	.string	"intra_upd"
.LASF689:
	.string	"mm_unmark_short_term_for_reference"
.LASF247:
	.string	"remapping_of_pic_nums_idc_l0"
.LASF251:
	.string	"remapping_of_pic_nums_idc_l1"
.LASF586:
	.string	"top_ref_idx"
.LASF248:
	.string	"abs_diff_pic_num_minus1_l0"
.LASF252:
	.string	"abs_diff_pic_num_minus1_l1"
.LASF366:
	.string	"SPPercentageThreshold"
.LASF668:
	.string	"num_ref_idx_lX_active_minus1"
.LASF222:
	.string	"byte_buf"
.LASF266:
	.string	"ProfileIDC"
.LASF207:
	.string	"bi_pred_me"
.LASF619:
	.string	"alloc_frame_store"
.LASF178:
	.string	"delta_qp"
.LASF718:
	.string	"dummylist1"
.LASF338:
	.string	"chroma_qp_index_offset"
.LASF17:
	.string	"bit_rate_scale"
.LASF646:
	.string	"is_ref"
.LASF8:
	.string	"char"
.LASF425:
	.string	"block_c_x"
.LASF141:
	.string	"transform_size_contexts"
.LASF503:
	.string	"long_term_reference_flag"
.LASF276:
	.string	"Log2MaxFrameNum"
.LASF739:
	.string	"prescale"
.LASF421:
	.string	"is_intra_block"
.LASF239:
	.string	"start_mb_nr"
.LASF736:
	.string	"listX"
.LASF384:
	.string	"RCEnable"
.LASF311:
	.string	"RDPictureIntra"
.LASF275:
	.string	"B_List1_refs"
.LASF298:
	.string	"qpBRSOffset"
.LASF564:
	.string	"non_existing"
.LASF364:
	.string	"SparePictureOption"
.LASF99:
	.string	"BITS_TOTAL_MB"
.LASF694:
	.string	"mark_current"
.LASF621:
	.string	"free_storable_picture"
.LASF341:
	.string	"qpN2"
.LASF659:
	.string	"fs_listlt"
.LASF294:
	.string	"intra_period"
.LASF181:
	.string	"mb_available_up"
.LASF486:
	.string	"delta_pic_order_cnt"
.LASF19:
	.string	"bit_rate_value"
.LASF329:
	.string	"InterSearch4x4"
.LASF663:
	.string	"picNum"
.LASF328:
	.string	"InterSearch4x8"
.LASF750:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/464.h264ref/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF572:
	.string	"imgY_11"
.LASF505:
	.string	"NumberofHeaderBits"
.LASF344:
	.string	"qp02"
.LASF697:
	.string	"mark_pic_long_term"
.LASF52:
	.string	"bitstream_restriction_flag"
.LASF115:
	.string	"SI_SLICE"
.LASF140:
	.string	"mb_aff_contexts"
.LASF205:
	.string	"luma_transform_size_8x8_flag"
.LASF667:
	.string	"RefPicListX"
.LASF390:
	.string	"ScalingListPresentFlag"
.LASF433:
	.string	"block_y"
.LASF314:
	.string	"SkipIntraInInterSlices"
.LASF43:
	.string	"timing_info_present_flag"
.LASF616:
	.string	"init_dpb"
.LASF448:
	.string	"currentPicture"
.LASF136:
	.string	"b8_type_contexts"
.LASF371:
	.string	"bottom_right"
.LASF308:
	.string	"WeightedBiprediction"
.LASF464:
	.string	"p_interval"
.LASF265:
	.string	"Picture"
.LASF553:
	.string	"bottom_poc"
.LASF462:
	.string	"imgtr_last_P_fld"
.LASF678:
	.string	"abs_diff_pic_num_minus1"
.LASF603:
	.string	"fs_ref"
.LASF743:
	.string	"input"
.LASF351:
	.string	"LeakyBucketParamFile"
.LASF574:
	.string	"imgY_ups"
.LASF268:
	.string	"no_frames"
.LASF111:
	.string	"P_SLICE"
.LASF635:
	.string	"is_short_ref"
.LASF279:
	.string	"img_width"
.LASF318:
	.string	"PyramidRefReorder"
.LASF422:
	.string	"is_v_block"
.LASF62:
	.string	"profile_idc"
.LASF285:
	.string	"slice_mode"
.LASF323:
	.string	"InterSearch16x16"
.LASF713:
	.string	"mm_unmark_all_short_term_for_reference"
.LASF16:
	.string	"cpb_cnt"
.LASF424:
	.string	"mb_y_intra"
.LASF135:
	.string	"mb_type_contexts"
.LASF370:
	.string	"top_left"
.LASF229:
	.string	"streamBuffer"
.LASF126:
	.string	"Ebits_to_goS"
.LASF563:
	.string	"is_output"
.LASF324:
	.string	"InterSearch16x8"
.LASF363:
	.string	"LFSendParameters"
.LASF517:
	.string	"MADofMB"
.LASF720:
	.string	"idiv4"
.LASF472:
	.string	"num_ref_idx_l0_active"
.LASF379:
	.string	"model_number"
.LASF335:
	.string	"Intra16x16PlaneDisable"
.LASF113:
	.string	"I_SLICE"
.LASF226:
	.string	"byte_buf_skip"
.LASF303:
	.string	"BiPredMESearchRange"
.LASF175:
	.string	"macroblock"
.LASF488:
	.string	"toppoc"
.LASF483:
	.string	"MbaffFrameFlag"
.LASF116:
	.string	"Elow"
.LASF55:
	.string	"max_bits_per_mb_denom"
.LASF438:
	.string	"opix_x"
.LASF387:
	.string	"basicunit"
.LASF552:
	.string	"top_poc"
.LASF352:
	.string	"PicInterlace"
.LASF238:
	.string	"picture_type"
.LASF254:
	.string	"slice_too_big"
.LASF83:
	.string	"gaps_in_frame_num_value_allowed_flag"
.LASF496:
	.string	"PicHeightInMbs"
.LASF399:
	.string	"lossless_qpprime_y_zero_flag"
.LASF648:
	.string	"currSliceType"
.LASF681:
	.string	"currPicNum"
.LASF551:
	.string	"storable_picture"
.LASF293:
	.string	"QmatrixFile"
.LASF618:
	.string	"getDpbSize"
.LASF310:
	.string	"RDPictureDecision"
.LASF51:
	.string	"low_delay_hrd_flag"
.LASF130:
	.string	"EncodingEnvironment"
.LASF235:
	.string	"writeSyntaxElement"
.LASF84:
	.string	"pic_width_in_mbs_minus1"
.LASF638:
	.string	"currStrcture"
.LASF665:
	.string	"LongtermPicNum"
.LASF267:
	.string	"LevelIDC"
.LASF0:
	.string	"long unsigned int"
.LASF144:
	.string	"cipr_contexts"
.LASF129:
	.string	"Ecodestrm_lenS"
.LASF57:
	.string	"log2_max_mv_length_horizontal"
.LASF41:
	.string	"chroma_location_frame"
.LASF96:
	.string	"seq_parameter_set_rbsp_t"
.LASF241:
	.string	"num_mb"
.LASF489:
	.string	"bottompoc"
.LASF649:
	.string	"currPicStructure"
.LASF277:
	.string	"ResendPPS"
.LASF657:
	.string	"fs_list0"
.LASF658:
	.string	"fs_list1"
.LASF332:
	.string	"Intra4x4DiagDisable"
.LASF458:
	.string	"pstruct_next_P"
.LASF745:
	.string	"listXsize"
.LASF191:
	.string	"lf_alpha_c0_offset"
.LASF549:
	.string	"auto_crop_bottom"
.LASF625:
	.string	"arg2"
.LASF292:
	.string	"TraceFile"
.LASF287:
	.string	"UseConstrainedIntraPred"
.LASF728:
	.string	"fill_frame_num_gap"
.LASF518:
	.string	"BasicUnitQP"
.LASF24:
	.string	"dpb_output_delay_length_minus1"
.LASF510:
	.string	"NumberofMBTextureBits"
.LASF38:
	.string	"transfer_characteristics"
.LASF189:
	.string	"cbp_bits"
.LASF715:
	.string	"flush_dpb"
.LASF65:
	.string	"constrained_set2_flag"
.LASF710:
	.string	"remove_frame_from_dpb"
.LASF670:
	.string	"refIdxLX"
.LASF570:
	.string	"coded_frame"
.LASF554:
	.string	"frame_poc"
.LASF436:
	.string	"pix_c_x"
.LASF437:
	.string	"pix_c_y"
.LASF270:
	.string	"hadamard"
.LASF465:
	.string	"b_frame_to_code"
.LASF260:
	.string	"bits_per_picture"
.LASF423:
	.string	"mb_y_upd"
.LASF404:
	.string	"OffsetMatrixPresentFlag"
.LASF358:
	.string	"NoOfDecoders"
.LASF154:
	.string	"RMPNI"
.LASF121:
	.string	"Ecodestrm"
.LASF109:
	.string	"BOTTOM_FIELD"
.LASF215:
	.string	"LFAlphaC0Offset"
.LASF192:
	.string	"lf_beta_offset"
.LASF679:
	.string	"long_term_pic_idx"
.LASF161:
	.string	"difference_of_pic_nums_minus1"
.LASF611:
	.string	"init_done"
.LASF361:
	.string	"NumFrameIn2ndIGOP"
.LASF487:
	.string	"field_picture"
.LASF687:
	.string	"sliding_window_memory_management"
.LASF295:
	.string	"idr_enable"
.LASF442:
	.string	"mprr"
.LASF296:
	.string	"start_frame"
.LASF571:
	.string	"imgY"
.LASF142:
	.string	"MotionInfoContexts"
.LASF543:
	.string	"num_cdc_coeff"
.LASF9:
	.string	"long long int"
.LASF463:
	.string	"b_interval"
.LASF119:
	.string	"Ebits_to_go"
.LASF455:
	.string	"fld_flag"
.LASF457:
	.string	"direct_intraP_ref"
.LASF414:
	.string	"width"
.LASF61:
	.string	"Valid"
.LASF183:
	.string	"mb_type"
.LASF224:
	.string	"stored_bits_to_go"
.LASF546:
	.string	"mb_cr_size_y"
.LASF589:
	.string	"top_moving_block"
.LASF81:
	.string	"offset_for_ref_frame"
.LASF662:
	.string	"get_short_term_pic"
.LASF177:
	.string	"slice_nr"
.LASF262:
	.string	"distortion_u"
.LASF263:
	.string	"distortion_v"
.LASF261:
	.string	"distortion_y"
.LASF227:
	.string	"byte_pos_skip"
.LASF216:
	.string	"LFBetaOffset"
.LASF72:
	.string	"bit_depth_luma_minus8"
.LASF666:
	.string	"reorder_short_term"
.LASF218:
	.string	"double"
.LASF64:
	.string	"constrained_set1_flag"
.LASF365:
	.string	"SPDetectionThreshold"
.LASF583:
	.string	"frame"
.LASF223:
	.string	"stored_byte_pos"
.LASF400:
	.string	"residue_transform_flag"
.LASF460:
	.string	"imgtr_last_P_frm"
.LASF676:
	.string	"reorder_ref_pic_list"
.LASF591:
	.string	"bottom_ref_pic_id"
.LASF149:
	.string	"one_contexts"
.LASF568:
	.string	"size_y_cr"
.LASF353:
	.string	"MbInterlace"
.LASF179:
	.string	"qpsp"
.LASF264:
	.string	"float"
.LASF210:
	.string	"prev_delta_qp"
.LASF382:
	.string	"ReportFrameStats"
.LASF316:
	.string	"PyramidCoding"
.LASF133:
	.string	"count"
.LASF88:
	.string	"direct_8x8_inference_flag"
.LASF320:
	.string	"symbol_mode"
.LASF699:
	.string	"mm_update_max_long_term_frame_idx"
.LASF134:
	.string	"BiContextType"
.LASF735:
	.string	"compute_colocated"
.LASF688:
	.string	"get_pic_num_x"
.LASF56:
	.string	"log2_max_mv_length_vertical"
.LASF729:
	.string	"CurrFrameNum"
.LASF456:
	.string	"rd_pass"
.LASF452:
	.string	"quad"
.LASF3:
	.string	"unsigned int"
.LASF629:
	.string	"compare_fs_by_lt_pic_idx_asc"
.LASF150:
	.string	"abs_contexts"
.LASF120:
	.string	"Ebits_to_follow"
.LASF230:
	.string	"write_flag"
.LASF409:
	.string	"total_number_mb"
.LASF291:
	.string	"ReconFile"
.LASF122:
	.string	"Ecodestrm_len"
.LASF244:
	.string	"tex_ctx"
.LASF305:
	.string	"sp_periodicity"
.LASF731:
	.string	"picture"
.LASF590:
	.string	"bottom_ref_idx"
.LASF76:
	.string	"log2_max_pic_order_cnt_lsb_minus4"
.LASF515:
	.string	"TotalQpforPPicture"
.LASF182:
	.string	"mb_available_left"
.LASF158:
	.string	"RMPNIbuffer_s"
.LASF157:
	.string	"RMPNIbuffer_t"
.LASF376:
	.string	"slice_group_change_cycle"
.LASF402:
	.string	"LambdaWeight"
.LASF153:
	.string	"TextureInfoContexts"
.LASF582:
	.string	"bottom_field"
.LASF408:
	.string	"current_mb_nr"
.LASF714:
	.string	"output_one_frame_from_dpb"
.LASF620:
	.string	"free_frame_store"
.LASF349:
	.string	"NumberLeakyBuckets"
.LASF556:
	.string	"ref_pic_num"
.LASF479:
	.string	"layer"
.LASF188:
	.string	"b8pdir"
.LASF257:
	.string	"no_slices"
.LASF612:
	.string	"last_picture"
.LASF79:
	.string	"offset_for_top_to_bottom_field"
.LASF719:
	.string	"dpb_split_field"
.LASF93:
	.string	"frame_cropping_rect_bottom_offset"
.LASF459:
	.string	"imgtr_next_P_frm"
.LASF520:
	.string	"FieldControl"
.LASF512:
	.string	"NumberofCodedBFrame"
.LASF641:
	.string	"list"
.LASF478:
	.string	"i16offset"
.LASF33:
	.string	"video_signal_type_present_flag"
.LASF306:
	.string	"qpsp_pred"
.LASF75:
	.string	"pic_order_cnt_type"
.LASF317:
	.string	"ExplicitPyramidFormat"
.LASF434:
	.string	"pix_x"
.LASF435:
	.string	"pix_y"
.LASF748:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF550:
	.string	"ImageParameters"
.LASF644:
	.string	"top_idx"
.LASF234:
	.string	"ee_cabac"
.LASF606:
	.string	"used_size"
.LASF13:
	.string	"FALSE"
.LASF89:
	.string	"frame_cropping_flag"
.LASF271:
	.string	"hadamardqpel"
.LASF474:
	.string	"field_mode"
.LASF331:
	.string	"Intra4x4ParDisable"
.LASF693:
	.string	"unmark_long_term_field_for_reference_by_frame_idx"
.LASF432:
	.string	"block_x"
.LASF596:
	.string	"is_used"
.LASF692:
	.string	"unmark_long_term_frame_for_reference_by_frame_idx"
.LASF350:
	.string	"LeakyBucketRateFile"
.LASF42:
	.string	"chroma_location_field"
.LASF284:
	.string	"part_size"
.LASF322:
	.string	"partition_mode"
.LASF685:
	.string	"update_ltref_list"
.LASF717:
	.string	"dummylist0"
.LASF531:
	.string	"last_has_mmco_5"
.LASF71:
	.string	"seq_scaling_list_present_flag"
.LASF152:
	.string	"fld_last_contexts"
.LASF78:
	.string	"offset_for_non_ref_pic"
.LASF91:
	.string	"frame_cropping_rect_right_offset"
.LASF730:
	.string	"UnusedShortTermFrameNum"
.LASF217:
	.string	"skip_flag"
.LASF492:
	.string	"frame_num"
.LASF147:
	.string	"map_contexts"
.LASF367:
	.string	"SliceGroupConfigFileName"
.LASF114:
	.string	"SP_SLICE"
.LASF160:
	.string	"memory_management_control_operation"
.LASF354:
	.string	"IntraBottom"
.LASF231:
	.string	"Bitstream"
.LASF403:
	.string	"QOffsetMatrixFile"
.LASF274:
	.string	"B_List0_refs"
.LASF481:
	.string	"NoResidueDirect"
.LASF87:
	.string	"mb_adaptive_frame_field_flag"
.LASF609:
	.string	"last_output_poc"
.LASF524:
	.string	"NumberofCodedMacroBlocks"
.LASF49:
	.string	"vcl_hrd_parameters_present_flag"
.LASF170:
	.string	"bitpattern"
.LASF530:
	.string	"last_pic_bottom_field"
.LASF237:
	.string	"picture_id"
.LASF86:
	.string	"frame_mbs_only_flag"
.LASF454:
	.string	"fld_type"
.LASF26:
	.string	"hrd_parameters_t"
.LASF513:
	.string	"NumberofCodedPFrame"
.LASF605:
	.string	"size"
.LASF393:
	.string	"BitDepthChroma"
.LASF10:
	.string	"long long unsigned int"
.LASF100:
	.string	"BITS_MB_MODE"
.LASF749:
	.string	"mbuffer.c"
.LASF535:
	.string	"bitdepth_chroma"
.LASF302:
	.string	"BiPredMERefinements"
.LASF25:
	.string	"time_offset_length"
.LASF417:
	.string	"height_cr"
.LASF469:
	.string	"all_mv"
.LASF343:
	.string	"qp2start"
.LASF724:
	.string	"dpb_combine_field"
.LASF651:
	.string	"add_bottom"
.LASF416:
	.string	"height"
.LASF411:
	.string	"structure"
.LASF255:
	.string	"field_ctx"
.LASF581:
	.string	"field_frame"
.LASF236:
	.string	"DataPartition"
.LASF450:
	.string	"mb_data"
.LASF92:
	.string	"frame_cropping_rect_top_offset"
.LASF386:
	.string	"SeinitialQP"
.LASF626:
	.string	"compare_pic_by_pic_num_desc"
.LASF508:
	.string	"NumberofBasicUnitTextureBits"
.LASF744:
	.string	"p_dec"
.LASF80:
	.string	"num_ref_frames_in_pic_order_cnt_cycle"
.LASF660:
	.string	"tmp_s"
.LASF703:
	.string	"store_picture_in_dpb"
.LASF256:
	.string	"Slice"
.LASF232:
	.string	"datapartition"
.LASF127:
	.string	"Ebits_to_followS"
.LASF700:
	.string	"mm_mark_current_picture_long_term"
.LASF650:
	.string	"add_top"
.LASF695:
	.string	"curr_frame_num"
.LASF53:
	.string	"motion_vectors_over_pic_boundaries_flag"
.LASF418:
	.string	"height_cr_frame"
.LASF640:
	.string	"list_idx"
.LASF522:
	.string	"Frame_Total_Number_MB"
.LASF168:
	.string	"value1"
.LASF169:
	.string	"value2"
.LASF673:
	.string	"picLX"
.LASF184:
	.string	"intra_pred_modes"
.LASF680:
	.string	"maxPicNum"
.LASF585:
	.string	"colocated_params"
.LASF90:
	.string	"frame_cropping_rect_left_offset"
.LASF396:
	.string	"rgb_input_flag"
.LASF233:
	.string	"bitstream"
.LASF273:
	.string	"P_List0_refs"
.LASF359:
	.string	"RestrictRef"
.LASF558:
	.string	"top_ref_pic_num"
.LASF123:
	.string	"ElowS"
.LASF599:
	.string	"is_non_existent"
.LASF369:
	.string	"slice_group_map_type"
.LASF696:
	.string	"curr_pic_num"
.LASF48:
	.string	"nal_hrd_parameters"
.LASF721:
	.string	"jdiv4"
.LASF15:
	.string	"Boolean"
.LASF634:
	.string	"alloc_storable_picture"
.LASF725:
	.string	"alloc_ref_pic_list_reordering_buffer"
.LASF740:
	.string	"iTRb"
.LASF321:
	.string	"of_mode"
.LASF538:
	.string	"bitdepth_lambda_scale"
.LASF347:
	.string	"disthres"
.LASF480:
	.string	"old_layer"
.LASF406:
	.string	"number"
.LASF412:
	.string	"max_num_references"
.LASF741:
	.string	"iTRp"
.LASF27:
	.string	"aspect_ratio_info_present_flag"
.LASF345:
	.string	"qpBRS2Offset"
.LASF540:
	.string	"max_imgpel_value"
.LASF493:
	.string	"PicWidthInMbs"
.LASF645:
	.string	"bot_idx"
.LASF68:
	.string	"seq_parameter_set_id"
.LASF674:
	.string	"reorder_long_term"
.LASF355:
	.string	"LossRateA"
.LASF356:
	.string	"LossRateB"
.LASF357:
	.string	"LossRateC"
.LASF533:
	.string	"pic_unit_size_on_disk"
.LASF539:
	.string	"dc_pred_value"
.LASF312:
	.string	"RDPSliceWeightOnly"
.LASF395:
	.string	"img_width_cr"
.LASF36:
	.string	"colour_description_present_flag"
.LASF711:
	.string	"get_smallest_poc"
.LASF627:
	.string	"compare_pic_by_lt_pic_num_asc"
.LASF212:
	.string	"predict_qp"
.LASF73:
	.string	"bit_depth_chroma_minus8"
.LASF219:
	.string	"Macroblock"
.LASF138:
	.string	"ref_no_contexts"
.LASF747:
	.string	"Co_located"
.LASF709:
	.string	"is_long_term_reference"
.LASF283:
	.string	"blc_size"
.LASF504:
	.string	"dec_ref_pic_marking_buffer"
.LASF107:
	.string	"FRAME"
.LASF501:
	.string	"adaptive_ref_pic_buffering_flag"
.LASF104:
	.string	"BITS_COEFF_UV_MB"
.LASF690:
	.string	"picNumX"
.LASF12:
	.string	"byte"
.LASF156:
	.string	"Next"
.LASF643:
	.string	"long_term"
.LASF315:
	.string	"BRefPictures"
.LASF155:
	.string	"Data"
.LASF519:
	.string	"TopFieldFlag"
.LASF669:
	.string	"picNumLX"
.LASF5:
	.string	"short int"
.LASF555:
	.string	"order_num"
.LASF580:
	.string	"moving_block"
.LASF47:
	.string	"nal_hrd_parameters_present_flag"
.LASF439:
	.string	"opix_y"
.LASF281:
	.string	"yuv_format"
.LASF391:
	.string	"FMEnable"
.LASF482:
	.string	"redundant_pic_cnt"
.LASF706:
	.string	"insert_picture_in_dpb"
.LASF58:
	.string	"max_dec_frame_reordering"
.LASF631:
	.string	"compare_pic_by_poc_desc"
.LASF467:
	.string	"bw_mb_mode"
.LASF617:
	.string	"free_dpb"
.LASF595:
	.string	"frame_store"
.LASF377:
	.string	"redundant_slice_flag"
.LASF637:
	.string	"gen_pic_list_from_frame_list"
.LASF392:
	.string	"BitDepthLuma"
.LASF14:
	.string	"TRUE"
.LASF346:
	.string	"rdopt"
.LASF604:
	.string	"fs_ltref"
.LASF95:
	.string	"vui_seq_parameters"
.LASF125:
	.string	"EbufferS"
.LASF613:
	.string	"DecodedPictureBuffer"
.LASF491:
	.string	"ThisPOC"
.LASF18:
	.string	"cpb_size_scale"
.LASF509:
	.string	"TotalMADBasicUnit"
.LASF209:
	.string	"prev_qp"
.LASF698:
	.string	"mm_assign_long_term_frame_idx"
.LASF330:
	.string	"IntraDisableInterOnly"
.LASF137:
	.string	"mv_res_contexts"
.LASF325:
	.string	"InterSearch8x16"
.LASF746:
	.string	"enc_picture"
.LASF655:
	.string	"list0idx_1"
.LASF385:
	.string	"bit_rate"
.LASF208:
	.string	"actj"
.LASF46:
	.string	"fixed_frame_rate_flag"
.LASF368:
	.string	"num_slice_groups_minus1"
.LASF485:
	.string	"delta_pic_order_cnt_bottom"
.LASF477:
	.string	"buf_cycle"
.LASF103:
	.string	"BITS_COEFF_Y_MB"
.LASF428:
	.string	"cod_counter"
.LASF602:
	.string	"decoded_picture_buffer"
.LASF683:
	.string	"picNumLXPred"
.LASF242:
	.string	"partArr"
.LASF220:
	.string	"byte_pos"
.LASF614:
	.string	"pic_size"
.LASF290:
	.string	"outfile"
.LASF143:
	.string	"ipr_contexts"
.LASF196:
	.string	"mbAddrA"
.LASF197:
	.string	"mbAddrB"
.LASF198:
	.string	"mbAddrC"
.LASF199:
	.string	"mbAddrD"
.LASF701:
	.string	"adaptive_memory_management"
.LASF381:
	.string	"LowPassForIntra8x8"
.LASF686:
	.string	"idr_memory_management"
.LASF429:
	.string	"nz_coeff"
.LASF139:
	.string	"delta_qp_contexts"
.LASF20:
	.string	"cpb_size_value"
.LASF600:
	.string	"frame_num_wrap"
.LASF333:
	.string	"Intra4x4DirDisable"
.LASF615:
	.string	"dump_dpb"
.LASF588:
	.string	"top_mv"
.LASF507:
	.string	"NumberofBasicUnitHeaderBits"
.LASF174:
	.string	"SyntaxElement"
.LASF342:
	.string	"qpB2"
.LASF63:
	.string	"constrained_set0_flag"
.LASF523:
	.string	"IFLAG"
.LASF532:
	.string	"pre_frame_num"
.LASF32:
	.string	"overscan_appropriate_flag"
.LASF499:
	.string	"pic_order_present_flag"
.LASF190:
	.string	"lf_disable"
.LASF108:
	.string	"TOP_FIELD"
.LASF37:
	.string	"colour_primaries"
.LASF565:
	.string	"size_x"
.LASF608:
	.string	"ltref_frames_in_buffer"
.LASF566:
	.string	"size_y"
.LASF258:
	.string	"idr_flag"
.LASF722:
	.string	"currentmb"
.LASF598:
	.string	"is_orig_reference"
.LASF2:
	.string	"short unsigned int"
.LASF521:
	.string	"FieldFrame"
.LASF340:
	.string	"last_frame"
.LASF656:
	.string	"listltidx"
.LASF213:
	.string	"predict_error"
.LASF410:
	.string	"current_slice_nr"
.LASF299:
	.string	"direct_spatial_mv_pred_flag"
.LASF280:
	.string	"img_height"
.LASF269:
	.string	"jumpd"
.LASF592:
	.string	"bottom_mv"
.LASF712:
	.string	"remove_unused_frame_from_dpb"
.LASF60:
	.string	"vui_seq_parameters_t"
.LASF172:
	.string	"mapping"
.LASF577:
	.string	"ref_idx"
.LASF394:
	.string	"img_height_cr"
.LASF732:
	.string	"nal_ref_idc_bak"
.LASF336:
	.string	"ChromaIntraDisable"
.LASF70:
	.string	"seq_scaling_matrix_present_flag"
.LASF661:
	.string	"init_mbaff_lists"
.LASF576:
	.string	"imgUV"
.LASF375:
	.string	"slice_group_change_rate_minus1"
.LASF578:
	.string	"ref_pic_id"
.LASF11:
	.string	"int64_t"
.LASF723:
	.string	"list_offset"
.LASF173:
	.string	"writing"
.LASF372:
	.string	"slice_group_id"
.LASF151:
	.string	"fld_map_contexts"
.LASF35:
	.string	"video_full_range_flag"
.LASF374:
	.string	"slice_group_change_direction_flag"
.LASF337:
	.string	"FrameRate"
.LASF94:
	.string	"vui_parameters_present_flag"
.LASF34:
	.string	"video_format"
.LASF145:
	.string	"cbp_contexts"
.LASF397:
	.string	"cb_qp_index_offset"
.LASF243:
	.string	"mot_ctx"
.LASF206:
	.string	"NoMbPartLessThan8x8Flag"
.LASF419:
	.string	"subblock_x"
.LASF420:
	.string	"subblock_y"
.LASF624:
	.string	"arg1"
.LASF561:
	.string	"is_long_term"
.LASF672:
	.string	"nIdx"
.LASF677:
	.string	"remapping_of_pic_nums_idc"
.LASF401:
	.string	"UseExplicitLambdaParams"
.LASF176:
	.string	"currSEnr"
.LASF636:
	.string	"is_long_ref"
.LASF110:
	.string	"PictureStructure"
.LASF495:
	.string	"FrameHeightInMbs"
.LASF449:
	.string	"currentSlice"
.LASF180:
	.string	"bitcounter"
.LASF733:
	.string	"alloc_colocated"
.LASF124:
	.string	"ErangeS"
.LASF654:
	.string	"list0idx"
.LASF200:
	.string	"mbAvailA"
.LASF201:
	.string	"mbAvailB"
.LASF202:
	.string	"mbAvailC"
.LASF203:
	.string	"mbAvailD"
.LASF186:
	.string	"cbp_blk"
.LASF734:
	.string	"free_colocated"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
