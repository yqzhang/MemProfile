	.file	"cont_mgau.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -I . -I libutil -imultiarch x86_64-linux-gnu
# -D SPEC_CPU -D NDEBUG -D SPEC_CPU -D HAVE_CONFIG_H -D SPEC_CPU_LP64
# cont_mgau.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.globl	considered
	.bss
	.align 8
	.type	considered, @object
	.size	considered, 8
considered:
	.zero	8
	.section	.rodata
.LC0:
	.string	"INFO"
.LC1:
	.string	"cont_mgau.c"
	.align 8
.LC2:
	.string	"Reading mixture gaussian file '%s'\n"
.LC3:
	.string	"rb"
.LC4:
	.string	"FATAL_ERROR"
.LC5:
	.string	"bio_readhdr(%s) failed\n"
.LC6:
	.string	"version"
.LC7:
	.string	"1.0"
.LC8:
	.string	"WARNING"
	.align 8
.LC9:
	.string	"Version mismatch(%s): %s, expecting %s\n"
.LC10:
	.string	"chksum0"
	.align 8
.LC11:
	.string	"fread(%s) (#codebooks) failed\n"
	.align 8
.LC12:
	.string	"%s: #Mixture Gaussians (%d) exceeds limit(%d) enforced by MGAUID type\n"
.LC13:
	.string	"fread(%s) (#features) failed\n"
	.align 8
.LC14:
	.string	"#Features streams(%d) != 1 in continuous HMM\n"
	.align 8
.LC15:
	.string	"#Features streams(%d) != 1 in semi-continuous HMM\n"
	.align 8
.LC16:
	.string	"fread(%s) (#density/codebook) failed\n"
	.align 8
.LC17:
	.string	"fread(%s) (feature-lengths) failed\n"
	.align 8
.LC18:
	.string	"fread(%s) (total #floats) failed\n"
	.align 8
.LC19:
	.string	"%s: #float32s(%d) doesn't match dimensions: %d x %d x %d\n"
	.align 8
.LC20:
	.string	"Currently S2 semi-continous HMM is not supported\n"
	.align 8
.LC21:
	.string	"#Mixtures(%d) doesn't match that of means(%d)\n"
	.align 8
.LC22:
	.string	"#Components(%d) doesn't match that of means(%d)\n"
	.align 8
.LC23:
	.string	"#Vector length(%d) doesn't match that of means(%d)\n"
	.align 8
.LC24:
	.string	"Mixture %d: #Components(%d) doesn't match that of means(%d)\n"
	.align 8
.LC25:
	.string	"fread(%s) (densitydata) failed\n"
.LC26:
	.string	"%s: More data than expected\n"
	.align 8
.LC27:
	.string	"%d mixture Gaussians, %d components, %d streams, veclen %d\n"
	.text
	.type	mgau_file_read, @function
mgau_file_read:
.LFB2:
	.file 1 "cont_mgau.c"
	.loc 1 81 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$144, %rsp	#,
	movq	%rdi, -120(%rbp)	# g, g
	movq	%rsi, -128(%rbp)	# file_name, file_name
	movl	%edx, -132(%rbp)	# type, type
	.loc 1 96 0
	movl	$.LC0, %edx	#,
	movl	$96, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_info_header	#
	movq	-128(%rbp), %rax	# file_name, tmp237
	movq	%rax, %rsi	# tmp237,
	movl	$.LC2, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 98 0
	movq	-128(%rbp), %rax	# file_name, tmp238
	movl	$98, %ecx	#,
	movl	$.LC1, %edx	#,
	movl	$.LC3, %esi	#,
	movq	%rax, %rdi	# tmp238,
	call	_myfopen	#
	movq	%rax, -24(%rbp)	# tmp239, fp
	.loc 1 101 0
	leaq	-80(%rbp), %rcx	#, tmp240
	leaq	-48(%rbp), %rdx	#, tmp241
	leaq	-56(%rbp), %rsi	#, tmp242
	movq	-24(%rbp), %rax	# fp, tmp243
	movq	%rax, %rdi	# tmp243,
	call	bio_readhdr	#
	testl	%eax, %eax	# D.6252
	jns	.L2	#,
	.loc 1 102 0
	movl	$.LC4, %edx	#,
	movl	$102, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movq	-128(%rbp), %rax	# file_name, tmp244
	movq	%rax, %rsi	# tmp244,
	movl	$.LC5, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L2:
	.loc 1 105 0
	movl	$0, -60(%rbp)	#, chksum_present
	.loc 1 106 0
	movl	$0, -72(%rbp)	#, i
	jmp	.L3	#
.L7:
	.loc 1 107 0
	movq	-56(%rbp), %rax	# argname, argname.0
	movl	-72(%rbp), %edx	# i, tmp245
	movslq	%edx, %rdx	# tmp245, D.6253
	salq	$3, %rdx	#, D.6253
	addq	%rdx, %rax	# D.6253, D.6254
	movq	(%rax), %rax	# *_32, D.6255
	movl	$.LC6, %esi	#,
	movq	%rax, %rdi	# D.6255,
	call	strcmp	#
	testl	%eax, %eax	# D.6252
	jne	.L4	#,
	.loc 1 108 0
	movq	-48(%rbp), %rax	# argval, argval.1
	movl	-72(%rbp), %edx	# i, tmp246
	movslq	%edx, %rdx	# tmp246, D.6253
	salq	$3, %rdx	#, D.6253
	addq	%rdx, %rax	# D.6253, D.6254
	movq	(%rax), %rax	# *_38, D.6255
	movl	$.LC7, %esi	#,
	movq	%rax, %rdi	# D.6255,
	call	strcmp	#
	testl	%eax, %eax	# D.6252
	je	.L6	#,
	.loc 1 109 0
	movl	$.LC8, %edx	#,
	movl	$109, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	.loc 1 110 0
	movq	-48(%rbp), %rax	# argval, argval.2
	movl	-72(%rbp), %edx	# i, tmp247
	movslq	%edx, %rdx	# tmp247, D.6253
	salq	$3, %rdx	#, D.6253
	addq	%rdx, %rax	# D.6253, D.6254
	.loc 1 109 0
	movq	(%rax), %rdx	# *_44, D.6255
	movq	-128(%rbp), %rax	# file_name, tmp248
	movl	$.LC7, %ecx	#,
	movq	%rax, %rsi	# tmp248,
	movl	$.LC9, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_warn	#
	jmp	.L6	#
.L4:
	.loc 1 111 0
	movq	-56(%rbp), %rax	# argname, argname.3
	movl	-72(%rbp), %edx	# i, tmp249
	movslq	%edx, %rdx	# tmp249, D.6253
	salq	$3, %rdx	#, D.6253
	addq	%rdx, %rax	# D.6253, D.6254
	movq	(%rax), %rax	# *_49, D.6255
	movl	$.LC10, %esi	#,
	movq	%rax, %rdi	# D.6255,
	call	strcmp	#
	testl	%eax, %eax	# D.6252
	jne	.L6	#,
	.loc 1 112 0
	movl	$1, -60(%rbp)	#, chksum_present
.L6:
	.loc 1 106 0
	addl	$1, -72(%rbp)	#, i
.L3:
	.loc 1 106 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# argname, argname.4
	movl	-72(%rbp), %edx	# i, tmp250
	movslq	%edx, %rdx	# tmp250, D.6253
	salq	$3, %rdx	#, D.6253
	addq	%rdx, %rax	# D.6253, D.6254
	movq	(%rax), %rax	# *_27, D.6255
	testq	%rax, %rax	# D.6255
	jne	.L7	#,
	.loc 1 115 0 is_stmt 1
	movq	-48(%rbp), %rdx	# argval, argval.5
	movq	-56(%rbp), %rax	# argname, argname.6
	movq	%rdx, %rsi	# argval.5,
	movq	%rax, %rdi	# argname.6,
	call	bio_hdrarg_free	#
	.loc 1 116 0
	movq	$0, -48(%rbp)	#, argval
	movq	-48(%rbp), %rax	# argval, argval.7
	movq	%rax, -56(%rbp)	# argval.7, argname
	.loc 1 118 0
	movl	$0, -76(%rbp)	#, chksum
	.loc 1 121 0
	movl	-80(%rbp), %ecx	# byteswap, byteswap.8
	leaq	-76(%rbp), %rsi	#, tmp251
	movq	-24(%rbp), %rdx	# fp, tmp252
	leaq	-92(%rbp), %rax	#, tmp253
	movq	%rsi, %r9	# tmp251,
	movl	%ecx, %r8d	# byteswap.8,
	movq	%rdx, %rcx	# tmp252,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp253,
	call	bio_fread	#
	cmpl	$1, %eax	#, D.6252
	je	.L8	#,
	.loc 1 122 0
	movl	$.LC4, %edx	#,
	movl	$122, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movq	-128(%rbp), %rax	# file_name, tmp254
	movq	%rax, %rsi	# tmp254,
	movl	$.LC11, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L8:
	.loc 1 123 0
	movl	-92(%rbp), %eax	# n_mgau, n_mgau.9
	cmpl	$32765, %eax	#, n_mgau.9
	jle	.L9	#,
	.loc 1 124 0
	movl	$.LC4, %edx	#,
	movl	$124, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movl	-92(%rbp), %edx	# n_mgau, n_mgau.10
	movq	-128(%rbp), %rax	# file_name, tmp255
	movl	$32766, %ecx	#,
	movq	%rax, %rsi	# tmp255,
	movl	$.LC12, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L9:
	.loc 1 129 0
	movl	-80(%rbp), %ecx	# byteswap, byteswap.11
	leaq	-76(%rbp), %rsi	#, tmp256
	movq	-24(%rbp), %rdx	# fp, tmp257
	leaq	-88(%rbp), %rax	#, tmp258
	movq	%rsi, %r9	# tmp256,
	movl	%ecx, %r8d	# byteswap.11,
	movq	%rdx, %rcx	# tmp257,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp258,
	call	bio_fread	#
	cmpl	$1, %eax	#, D.6252
	je	.L10	#,
	.loc 1 130 0
	movl	$.LC4, %edx	#,
	movl	$130, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movq	-128(%rbp), %rax	# file_name, tmp259
	movq	%rax, %rsi	# tmp259,
	movl	$.LC13, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L10:
	.loc 1 132 0
	movq	-120(%rbp), %rax	# g, tmp260
	movl	40(%rax), %eax	# g_63(D)->gau_type, D.6252
	cmpl	$10001, %eax	#, D.6252
	jne	.L11	#,
	.loc 1 133 0
	movl	-88(%rbp), %eax	# n_feat, n_feat.12
	cmpl	$1, %eax	#, n_feat.12
	je	.L13	#,
	.loc 1 134 0
	movl	$.LC4, %edx	#,
	movl	$134, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movl	-88(%rbp), %eax	# n_feat, n_feat.13
	movl	%eax, %esi	# n_feat.13,
	movl	$.LC14, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
	jmp	.L13	#
.L11:
	.loc 1 135 0
	movq	-120(%rbp), %rax	# g, tmp261
	movl	40(%rax), %eax	# g_63(D)->gau_type, D.6252
	cmpl	$10002, %eax	#, D.6252
	jne	.L13	#,
	.loc 1 136 0
	movl	-88(%rbp), %eax	# n_feat, n_feat.14
	cmpl	$4, %eax	#, n_feat.14
	je	.L13	#,
	.loc 1 137 0
	movl	$.LC4, %edx	#,
	movl	$137, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movl	-88(%rbp), %eax	# n_feat, n_feat.15
	movl	%eax, %esi	# n_feat.15,
	movl	$.LC15, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L13:
	.loc 1 141 0
	movl	-80(%rbp), %ecx	# byteswap, byteswap.16
	leaq	-76(%rbp), %rsi	#, tmp262
	movq	-24(%rbp), %rdx	# fp, tmp263
	leaq	-84(%rbp), %rax	#, tmp264
	movq	%rsi, %r9	# tmp262,
	movl	%ecx, %r8d	# byteswap.16,
	movq	%rdx, %rcx	# tmp263,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp264,
	call	bio_fread	#
	cmpl	$1, %eax	#, D.6252
	je	.L14	#,
	.loc 1 142 0
	movl	$.LC4, %edx	#,
	movl	$142, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movq	-128(%rbp), %rax	# file_name, tmp265
	movq	%rax, %rsi	# tmp265,
	movl	$.LC16, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L14:
	.loc 1 146 0
	movl	-88(%rbp), %eax	# n_feat, n_feat.17
	cltq
	movl	$146, %ecx	#,
	movl	$.LC1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.6253,
	call	__ckd_calloc__	#
	movq	%rax, -16(%rbp)	# tmp266, veclen
	.loc 1 148 0
	movl	-80(%rbp), %esi	# byteswap, byteswap.18
	movl	-88(%rbp), %edx	# n_feat, n_feat.19
	leaq	-76(%rbp), %rdi	#, tmp267
	movq	-24(%rbp), %rcx	# fp, tmp268
	movq	-16(%rbp), %rax	# veclen, tmp269
	movq	%rdi, %r9	# tmp267,
	movl	%esi, %r8d	# byteswap.18,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp269,
	call	bio_fread	#
	movl	-88(%rbp), %edx	# n_feat, n_feat.20
	cmpl	%edx, %eax	# n_feat.20, D.6252
	je	.L15	#,
	.loc 1 149 0
	movl	$.LC4, %edx	#,
	movl	$149, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movq	-128(%rbp), %rax	# file_name, tmp270
	movq	%rax, %rsi	# tmp270,
	movl	$.LC17, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L15:
	.loc 1 151 0
	movl	$0, -72(%rbp)	#, i
	movl	$0, -64(%rbp)	#, blk
	jmp	.L16	#
.L17:
	.loc 1 152 0 discriminator 2
	movl	-72(%rbp), %eax	# i, tmp271
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6253
	movq	-16(%rbp), %rax	# veclen, tmp272
	addq	%rdx, %rax	# D.6253, D.6256
	movl	(%rax), %eax	# *_84, D.6252
	addl	%eax, -64(%rbp)	# D.6252, blk
	.loc 1 151 0 discriminator 2
	addl	$1, -72(%rbp)	#, i
.L16:
	.loc 1 151 0 is_stmt 0 discriminator 1
	movl	-88(%rbp), %eax	# n_feat, n_feat.21
	cmpl	%eax, -72(%rbp)	# n_feat.21, i
	jl	.L17	#,
	.loc 1 158 0 is_stmt 1
	movl	-80(%rbp), %ecx	# byteswap, byteswap.22
	leaq	-76(%rbp), %rsi	#, tmp273
	movq	-24(%rbp), %rdx	# fp, tmp274
	leaq	-96(%rbp), %rax	#, tmp275
	movq	%rsi, %r9	# tmp273,
	movl	%ecx, %r8d	# byteswap.22,
	movq	%rdx, %rcx	# tmp274,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp275,
	call	bio_fread	#
	cmpl	$1, %eax	#, D.6252
	je	.L18	#,
	.loc 1 159 0
	movl	$.LC4, %edx	#,
	movl	$159, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movq	-128(%rbp), %rax	# file_name, tmp276
	movq	%rax, %rsi	# tmp276,
	movl	$.LC18, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L18:
	.loc 1 161 0
	movl	-92(%rbp), %edx	# n_mgau, n_mgau.23
	movl	-84(%rbp), %eax	# n_density, n_density.24
	imull	%edx, %eax	# n_mgau.23, D.6252
	imull	-64(%rbp), %eax	# blk, D.6252
	movl	%eax, %edx	# D.6252, D.6252
	movl	-96(%rbp), %eax	# n, n.25
	cmpl	%eax, %edx	# n.25, D.6252
	je	.L19	#,
	.loc 1 162 0
	movl	$.LC4, %edx	#,
	movl	$162, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movl	-84(%rbp), %esi	# n_density, n_density.26
	movl	-92(%rbp), %ecx	# n_mgau, n_mgau.27
	movl	-96(%rbp), %edx	# n, n.28
	movl	-64(%rbp), %edi	# blk, tmp277
	movq	-128(%rbp), %rax	# file_name, tmp278
	movl	%edi, %r9d	# tmp277,
	movl	%esi, %r8d	# n_density.26,
	movq	%rax, %rsi	# tmp278,
	movl	$.LC19, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L19:
	.loc 1 166 0
	movq	-120(%rbp), %rax	# g, tmp279
	movl	40(%rax), %eax	# g_63(D)->gau_type, D.6252
	cmpl	$10002, %eax	#, D.6252
	jne	.L20	#,
	.loc 1 167 0
	movl	$.LC4, %edx	#,
	movl	$167, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movl	$.LC20, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L20:
	.loc 1 170 0
	cmpl	$1, -132(%rbp)	#, type
	jne	.L21	#,
	.loc 1 172 0
	movl	-92(%rbp), %edx	# n_mgau, n_mgau.29
	movq	-120(%rbp), %rax	# g, tmp280
	movl	%edx, (%rax)	# n_mgau.29, g_63(D)->n_mgau
	.loc 1 173 0
	movl	-84(%rbp), %edx	# n_density, n_density.30
	movq	-120(%rbp), %rax	# g, tmp281
	movl	%edx, 4(%rax)	# n_density.30, g_63(D)->max_comp
	.loc 1 174 0
	movq	-120(%rbp), %rax	# g, tmp282
	movl	-64(%rbp), %edx	# blk, tmp283
	movl	%edx, 8(%rax)	# tmp283, g_63(D)->veclen
	.loc 1 175 0
	movl	-92(%rbp), %eax	# n_mgau, n_mgau.31
	cltq
	movl	$175, %ecx	#,
	movl	$.LC1, %edx	#,
	movl	$40, %esi	#,
	movq	%rax, %rdi	# D.6253,
	call	__ckd_calloc__	#
	movq	-120(%rbp), %rdx	# g, tmp284
	movq	%rax, 16(%rdx)	# D.6257, g_63(D)->mgau
	.loc 1 177 0
	movl	-96(%rbp), %eax	# n, n.32
	cltq
	movl	$177, %ecx	#,
	movl	$.LC1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.6253,
	call	__ckd_calloc__	#
	movq	%rax, -40(%rbp)	# tmp285, buf
	.loc 1 178 0
	movl	-92(%rbp), %edx	# n_mgau, n_mgau.33
	movl	-84(%rbp), %eax	# n_density, n_density.34
	imull	%edx, %eax	# n_mgau.33, D.6252
	cltq
	movl	$178, %ecx	#,
	movl	$.LC1, %edx	#,
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.6253,
	call	__ckd_calloc__	#
	movq	%rax, -32(%rbp)	# tmp286, pbuf
	.loc 1 181 0
	movl	$0, -72(%rbp)	#, i
	jmp	.L22	#
.L25:
	.loc 1 182 0
	movq	-120(%rbp), %rax	# g, tmp287
	movq	16(%rax), %rcx	# g_63(D)->mgau, D.6258
	movl	-72(%rbp), %eax	# i, tmp288
	movslq	%eax, %rdx	# tmp288, D.6253
	movq	%rdx, %rax	# D.6253, tmp289
	salq	$2, %rax	#, tmp289
	addq	%rdx, %rax	# D.6253, tmp289
	salq	$3, %rax	#, tmp290
	leaq	(%rcx,%rax), %rdx	#, D.6258
	movl	-84(%rbp), %eax	# n_density, n_density.35
	movl	%eax, (%rdx)	# n_density.35, _118->n_comp
	.loc 1 183 0
	movq	-120(%rbp), %rax	# g, tmp291
	movq	16(%rax), %rcx	# g_63(D)->mgau, D.6258
	movl	-72(%rbp), %eax	# i, tmp292
	movslq	%eax, %rdx	# tmp292, D.6253
	movq	%rdx, %rax	# D.6253, tmp293
	salq	$2, %rax	#, tmp293
	addq	%rdx, %rax	# D.6253, tmp293
	salq	$3, %rax	#, tmp294
	leaq	(%rcx,%rax), %rdx	#, D.6258
	movq	-32(%rbp), %rax	# pbuf, tmp295
	movq	%rax, 8(%rdx)	# tmp295, _123->mean
	.loc 1 185 0
	movl	$0, -68(%rbp)	#, k
	jmp	.L23	#
.L24:
	.loc 1 186 0 discriminator 2
	movq	-120(%rbp), %rax	# g, tmp296
	movq	16(%rax), %rcx	# g_63(D)->mgau, D.6258
	movl	-72(%rbp), %eax	# i, tmp297
	movslq	%eax, %rdx	# tmp297, D.6253
	movq	%rdx, %rax	# D.6253, tmp298
	salq	$2, %rax	#, tmp298
	addq	%rdx, %rax	# D.6253, tmp298
	salq	$3, %rax	#, tmp299
	addq	%rcx, %rax	# D.6258, D.6258
	movq	8(%rax), %rax	# _129->mean, D.6259
	movl	-68(%rbp), %edx	# k, tmp300
	movslq	%edx, %rdx	# tmp300, D.6253
	salq	$3, %rdx	#, D.6253
	addq	%rax, %rdx	# D.6259, D.6259
	movq	-40(%rbp), %rax	# buf, tmp301
	movq	%rax, (%rdx)	# tmp301, *_133
	.loc 1 187 0 discriminator 2
	movl	-64(%rbp), %eax	# blk, tmp302
	cltq
	salq	$2, %rax	#, D.6253
	addq	%rax, -40(%rbp)	# D.6253, buf
	.loc 1 185 0 discriminator 2
	addl	$1, -68(%rbp)	#, k
.L23:
	.loc 1 185 0 is_stmt 0 discriminator 1
	movl	-84(%rbp), %eax	# n_density, n_density.36
	cmpl	%eax, -68(%rbp)	# n_density.36, k
	jl	.L24	#,
	.loc 1 190 0 is_stmt 1
	movl	-84(%rbp), %eax	# n_density, n_density.37
	cltq
	salq	$3, %rax	#, D.6253
	addq	%rax, -32(%rbp)	# D.6253, pbuf
	.loc 1 181 0
	addl	$1, -72(%rbp)	#, i
.L22:
	.loc 1 181 0 is_stmt 0 discriminator 1
	movl	-92(%rbp), %eax	# n_mgau, n_mgau.38
	cmpl	%eax, -72(%rbp)	# n_mgau.38, i
	jl	.L25	#,
	.loc 1 193 0 is_stmt 1
	movq	-120(%rbp), %rax	# g, tmp303
	movq	16(%rax), %rax	# g_63(D)->mgau, D.6258
	movq	8(%rax), %rax	# _143->mean, D.6259
	movq	(%rax), %rax	# *_144, tmp304
	movq	%rax, -40(%rbp)	# tmp304, buf
	jmp	.L26	#
.L21:
	.loc 1 197 0
	movq	-120(%rbp), %rax	# g, tmp305
	movl	(%rax), %edx	# g_63(D)->n_mgau, D.6252
	movl	-92(%rbp), %eax	# n_mgau, n_mgau.39
	cmpl	%eax, %edx	# n_mgau.39, D.6252
	je	.L27	#,
	.loc 1 198 0
	movl	$.LC4, %edx	#,
	movl	$198, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movq	-120(%rbp), %rax	# g, tmp306
	movl	(%rax), %edx	# g_63(D)->n_mgau, D.6252
	movl	-92(%rbp), %eax	# n_mgau, n_mgau.40
	movl	%eax, %esi	# n_mgau.40,
	movl	$.LC21, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L27:
	.loc 1 199 0
	movq	-120(%rbp), %rax	# g, tmp307
	movl	4(%rax), %edx	# g_63(D)->max_comp, D.6252
	movl	-84(%rbp), %eax	# n_density, n_density.41
	cmpl	%eax, %edx	# n_density.41, D.6252
	je	.L28	#,
	.loc 1 200 0
	movl	$.LC4, %edx	#,
	movl	$200, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movq	-120(%rbp), %rax	# g, tmp308
	movl	4(%rax), %edx	# g_63(D)->max_comp, D.6252
	movl	-84(%rbp), %eax	# n_density, n_density.42
	movl	%eax, %esi	# n_density.42,
	movl	$.LC22, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L28:
	.loc 1 201 0
	movq	-120(%rbp), %rax	# g, tmp309
	movl	8(%rax), %eax	# g_63(D)->veclen, D.6252
	cmpl	-64(%rbp), %eax	# blk, D.6252
	je	.L29	#,
	.loc 1 202 0
	movl	$.LC4, %edx	#,
	movl	$202, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movq	-120(%rbp), %rax	# g, tmp310
	movl	8(%rax), %edx	# g_63(D)->veclen, D.6252
	movl	-64(%rbp), %eax	# blk, tmp311
	movl	%eax, %esi	# tmp311,
	movl	$.LC23, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L29:
	.loc 1 204 0
	movl	-96(%rbp), %eax	# n, n.43
	cltq
	movl	$204, %ecx	#,
	movl	$.LC1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.6253,
	call	__ckd_calloc__	#
	movq	%rax, -40(%rbp)	# tmp312, buf
	.loc 1 205 0
	movl	-92(%rbp), %edx	# n_mgau, n_mgau.44
	movl	-84(%rbp), %eax	# n_density, n_density.45
	imull	%edx, %eax	# n_mgau.44, D.6252
	cltq
	movl	$205, %ecx	#,
	movl	$.LC1, %edx	#,
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.6253,
	call	__ckd_calloc__	#
	movq	%rax, -32(%rbp)	# tmp313, pbuf
	.loc 1 208 0
	movl	$0, -72(%rbp)	#, i
	jmp	.L30	#
.L34:
	.loc 1 209 0
	movq	-120(%rbp), %rax	# g, tmp314
	movq	16(%rax), %rcx	# g_63(D)->mgau, D.6258
	movl	-72(%rbp), %eax	# i, tmp315
	movslq	%eax, %rdx	# tmp315, D.6253
	movq	%rdx, %rax	# D.6253, tmp316
	salq	$2, %rax	#, tmp316
	addq	%rdx, %rax	# D.6253, tmp316
	salq	$3, %rax	#, tmp317
	addq	%rcx, %rax	# D.6258, D.6258
	movl	(%rax), %edx	# _169->n_comp, D.6252
	movl	-84(%rbp), %eax	# n_density, n_density.46
	cmpl	%eax, %edx	# n_density.46, D.6252
	je	.L31	#,
	.loc 1 210 0
	movl	$.LC4, %edx	#,
	movl	$210, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	.loc 1 211 0
	movq	-120(%rbp), %rax	# g, tmp318
	movq	16(%rax), %rcx	# g_63(D)->mgau, D.6258
	movl	-72(%rbp), %eax	# i, tmp319
	movslq	%eax, %rdx	# tmp319, D.6253
	movq	%rdx, %rax	# D.6253, tmp320
	salq	$2, %rax	#, tmp320
	addq	%rdx, %rax	# D.6253, tmp320
	salq	$3, %rax	#, tmp321
	addq	%rcx, %rax	# D.6258, D.6258
	.loc 1 210 0
	movl	(%rax), %ecx	# _175->n_comp, D.6252
	movl	-84(%rbp), %edx	# n_density, n_density.47
	movl	-72(%rbp), %eax	# i, tmp322
	movl	%eax, %esi	# tmp322,
	movl	$.LC24, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L31:
	.loc 1 213 0
	movq	-120(%rbp), %rax	# g, tmp323
	movq	16(%rax), %rcx	# g_63(D)->mgau, D.6258
	movl	-72(%rbp), %eax	# i, tmp324
	movslq	%eax, %rdx	# tmp324, D.6253
	movq	%rdx, %rax	# D.6253, tmp325
	salq	$2, %rax	#, tmp325
	addq	%rdx, %rax	# D.6253, tmp325
	salq	$3, %rax	#, tmp326
	leaq	(%rcx,%rax), %rdx	#, D.6258
	movq	-32(%rbp), %rax	# pbuf, tmp327
	movq	%rax, 16(%rdx)	# tmp327, _181->var
	.loc 1 215 0
	movl	$0, -68(%rbp)	#, k
	jmp	.L32	#
.L33:
	.loc 1 216 0 discriminator 2
	movq	-120(%rbp), %rax	# g, tmp328
	movq	16(%rax), %rcx	# g_63(D)->mgau, D.6258
	movl	-72(%rbp), %eax	# i, tmp329
	movslq	%eax, %rdx	# tmp329, D.6253
	movq	%rdx, %rax	# D.6253, tmp330
	salq	$2, %rax	#, tmp330
	addq	%rdx, %rax	# D.6253, tmp330
	salq	$3, %rax	#, tmp331
	addq	%rcx, %rax	# D.6258, D.6258
	movq	16(%rax), %rax	# _187->var, D.6259
	movl	-68(%rbp), %edx	# k, tmp332
	movslq	%edx, %rdx	# tmp332, D.6253
	salq	$3, %rdx	#, D.6253
	addq	%rax, %rdx	# D.6259, D.6259
	movq	-40(%rbp), %rax	# buf, tmp333
	movq	%rax, (%rdx)	# tmp333, *_191
	.loc 1 217 0 discriminator 2
	movl	-64(%rbp), %eax	# blk, tmp334
	cltq
	salq	$2, %rax	#, D.6253
	addq	%rax, -40(%rbp)	# D.6253, buf
	.loc 1 215 0 discriminator 2
	addl	$1, -68(%rbp)	#, k
.L32:
	.loc 1 215 0 is_stmt 0 discriminator 1
	movl	-84(%rbp), %eax	# n_density, n_density.48
	cmpl	%eax, -68(%rbp)	# n_density.48, k
	jl	.L33	#,
	.loc 1 221 0 is_stmt 1
	movl	-84(%rbp), %eax	# n_density, n_density.49
	cltq
	salq	$3, %rax	#, D.6253
	addq	%rax, -32(%rbp)	# D.6253, pbuf
	.loc 1 208 0
	addl	$1, -72(%rbp)	#, i
.L30:
	.loc 1 208 0 is_stmt 0 discriminator 1
	movl	-92(%rbp), %eax	# n_mgau, n_mgau.50
	cmpl	%eax, -72(%rbp)	# n_mgau.50, i
	jl	.L34	#,
	.loc 1 224 0 is_stmt 1
	movl	-92(%rbp), %edx	# n_mgau, n_mgau.51
	movl	-84(%rbp), %eax	# n_density, n_density.52
	imull	%edx, %eax	# n_mgau.51, D.6252
	cltq
	movl	$224, %ecx	#,
	movl	$.LC1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.6253,
	call	__ckd_calloc__	#
	movq	%rax, -40(%rbp)	# tmp335, buf
	.loc 1 226 0
	movl	$0, -72(%rbp)	#, i
	jmp	.L35	#
.L36:
	.loc 1 227 0 discriminator 2
	movq	-120(%rbp), %rax	# g, tmp336
	movq	16(%rax), %rcx	# g_63(D)->mgau, D.6258
	movl	-72(%rbp), %eax	# i, tmp337
	movslq	%eax, %rdx	# tmp337, D.6253
	movq	%rdx, %rax	# D.6253, tmp338
	salq	$2, %rax	#, tmp338
	addq	%rdx, %rax	# D.6253, tmp338
	salq	$3, %rax	#, tmp339
	leaq	(%rcx,%rax), %rdx	#, D.6258
	movq	-40(%rbp), %rax	# buf, tmp340
	movq	%rax, 24(%rdx)	# tmp340, _211->lrd
	.loc 1 228 0 discriminator 2
	movl	-84(%rbp), %eax	# n_density, n_density.53
	cltq
	salq	$2, %rax	#, D.6253
	addq	%rax, -40(%rbp)	# D.6253, buf
	.loc 1 226 0 discriminator 2
	addl	$1, -72(%rbp)	#, i
.L35:
	.loc 1 226 0 is_stmt 0 discriminator 1
	movl	-92(%rbp), %eax	# n_mgau, n_mgau.54
	cmpl	%eax, -72(%rbp)	# n_mgau.54, i
	jl	.L36	#,
	.loc 1 231 0 is_stmt 1
	movq	-120(%rbp), %rax	# g, tmp341
	movq	16(%rax), %rax	# g_63(D)->mgau, D.6258
	movq	16(%rax), %rax	# _217->var, D.6259
	movq	(%rax), %rax	# *_218, tmp342
	movq	%rax, -40(%rbp)	# tmp342, buf
.L26:
	.loc 1 235 0
	movl	-80(%rbp), %esi	# byteswap, byteswap.55
	movl	-96(%rbp), %edx	# n, n.56
	leaq	-76(%rbp), %rdi	#, tmp343
	movq	-24(%rbp), %rcx	# fp, tmp344
	movq	-40(%rbp), %rax	# buf, tmp345
	movq	%rdi, %r9	# tmp343,
	movl	%esi, %r8d	# byteswap.55,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp345,
	call	bio_fread	#
	movl	-96(%rbp), %edx	# n, n.57
	cmpl	%edx, %eax	# n.57, D.6252
	je	.L37	#,
	.loc 1 236 0
	movl	$.LC4, %edx	#,
	movl	$236, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movq	-128(%rbp), %rax	# file_name, tmp346
	movq	%rax, %rsi	# tmp346,
	movl	$.LC25, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L37:
	.loc 1 238 0
	call	log_to_logs3_factor	#
	movsd	%xmm0, -144(%rbp)	#, %sfp
	movq	-144(%rbp), %rax	# %sfp, tmp347
	movq	%rax, -8(%rbp)	# tmp347, f
	.loc 1 240 0
	cmpl	$0, -60(%rbp)	#, chksum_present
	je	.L38	#,
	.loc 1 241 0
	movl	-76(%rbp), %edx	# chksum, chksum.58
	movl	-80(%rbp), %ecx	# byteswap, byteswap.59
	movq	-24(%rbp), %rax	# fp, tmp348
	movl	%ecx, %esi	# byteswap.59,
	movq	%rax, %rdi	# tmp348,
	call	bio_verify_chksum	#
.L38:
	.loc 1 243 0
	movq	-24(%rbp), %rdx	# fp, tmp349
	leaq	-97(%rbp), %rax	#, tmp350
	movq	%rdx, %rcx	# tmp349,
	movl	$1, %edx	#,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp350,
	call	fread	#
	cmpq	$1, %rax	#, D.6253
	jne	.L39	#,
	.loc 1 244 0
	movl	$.LC4, %edx	#,
	movl	$244, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movq	-128(%rbp), %rax	# file_name, tmp351
	movq	%rax, %rsi	# tmp351,
	movl	$.LC26, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L39:
	.loc 1 246 0
	movq	-24(%rbp), %rax	# fp, tmp352
	movq	%rax, %rdi	# tmp352,
	call	fclose	#
	.loc 1 248 0
	movl	$.LC0, %edx	#,
	movl	$248, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_info_header	#
	movl	-88(%rbp), %ecx	# n_feat, n_feat.60
	movl	-84(%rbp), %edx	# n_density, n_density.61
	movl	-92(%rbp), %eax	# n_mgau, n_mgau.62
	movl	-64(%rbp), %esi	# blk, tmp353
	movl	%esi, %r8d	# tmp353,
	movl	%eax, %esi	# n_mgau.62,
	movl	$.LC27, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 250 0
	movl	$0, %eax	#, D.6260
	.loc 1 251 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	mgau_file_read, .-mgau_file_read
	.section	.rodata
	.align 8
.LC28:
	.string	"Reading mixture weights file '%s'\n"
	.align 8
.LC29:
	.string	"bio_fread(%s) (arraysize) failed\n"
	.align 8
.LC30:
	.string	"#Features streams(%d) != 4 in semi-continuous HMM\n"
	.align 8
.LC31:
	.string	"How can this happen? Someone must have moved this part of the code somewhere! Not my fault! ARCHAN at 20040504 :-)\n"
	.align 8
.LC32:
	.string	"%s: #float32s(%d) doesn't match header dimensions: %d x %d\n"
	.align 8
.LC33:
	.string	"%s: #Mixture Gaussians(%d) doesn't match mean/var parameters(%d)\n"
	.align 8
.LC34:
	.string	"Mixture %d: #Weights(%d) doesn't match #Gaussian components(%d)\n"
	.align 8
.LC35:
	.string	"bio_fread(%s) (arraydata) failed\n"
	.align 8
.LC37:
	.string	"More data than expected in %s\n"
.LC38:
	.string	"Read %d x %d mixture weights\n"
	.text
	.type	mgau_mixw_read, @function
mgau_mixw_read:
.LFB3:
	.loc 1 255 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$136, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -120(%rbp)	# g, g
	movq	%rsi, -128(%rbp)	# file_name, file_name
	movsd	%xmm0, -136(%rbp)	# mixwfloor, mixwfloor
	.loc 1 269 0
	movl	$.LC0, %edx	#,
	movl	$269, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_info_header	#
	movq	-128(%rbp), %rax	# file_name, tmp189
	movq	%rax, %rsi	# tmp189,
	movl	$.LC28, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 271 0
	movq	-128(%rbp), %rax	# file_name, tmp190
	movl	$271, %ecx	#,
	movl	$.LC1, %edx	#,
	movl	$.LC3, %esi	#,
	movq	%rax, %rdi	# tmp190,
	call	_myfopen	#
	movq	%rax, -32(%rbp)	# tmp191, fp
	.loc 1 274 0
	leaq	-96(%rbp), %rcx	#, tmp192
	leaq	-48(%rbp), %rdx	#, tmp193
	leaq	-56(%rbp), %rsi	#, tmp194
	movq	-32(%rbp), %rax	# fp, tmp195
	movq	%rax, %rdi	# tmp195,
	call	bio_readhdr	#
	testl	%eax, %eax	# D.6290
	jns	.L42	#,
	.loc 1 275 0
	movl	$.LC4, %edx	#,
	movl	$275, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movq	-128(%rbp), %rax	# file_name, tmp196
	movq	%rax, %rsi	# tmp196,
	movl	$.LC5, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L42:
	.loc 1 278 0
	movl	$0, -72(%rbp)	#, chksum_present
	.loc 1 279 0
	movl	$0, -68(%rbp)	#, i
	jmp	.L43	#
.L47:
	.loc 1 280 0
	movq	-56(%rbp), %rax	# argname, argname.63
	movl	-68(%rbp), %edx	# i, tmp197
	movslq	%edx, %rdx	# tmp197, D.6291
	salq	$3, %rdx	#, D.6291
	addq	%rdx, %rax	# D.6291, D.6292
	movq	(%rax), %rax	# *_25, D.6293
	movl	$.LC6, %esi	#,
	movq	%rax, %rdi	# D.6293,
	call	strcmp	#
	testl	%eax, %eax	# D.6290
	jne	.L44	#,
	.loc 1 281 0
	movq	-48(%rbp), %rax	# argval, argval.64
	movl	-68(%rbp), %edx	# i, tmp198
	movslq	%edx, %rdx	# tmp198, D.6291
	salq	$3, %rdx	#, D.6291
	addq	%rdx, %rax	# D.6291, D.6292
	movq	(%rax), %rax	# *_31, D.6293
	movl	$.LC7, %esi	#,
	movq	%rax, %rdi	# D.6293,
	call	strcmp	#
	testl	%eax, %eax	# D.6290
	je	.L46	#,
	.loc 1 282 0
	movl	$.LC8, %edx	#,
	movl	$282, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	.loc 1 283 0
	movq	-48(%rbp), %rax	# argval, argval.65
	movl	-68(%rbp), %edx	# i, tmp199
	movslq	%edx, %rdx	# tmp199, D.6291
	salq	$3, %rdx	#, D.6291
	addq	%rdx, %rax	# D.6291, D.6292
	.loc 1 282 0
	movq	(%rax), %rdx	# *_37, D.6293
	movq	-128(%rbp), %rax	# file_name, tmp200
	movl	$.LC7, %ecx	#,
	movq	%rax, %rsi	# tmp200,
	movl	$.LC9, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_warn	#
	jmp	.L46	#
.L44:
	.loc 1 284 0
	movq	-56(%rbp), %rax	# argname, argname.66
	movl	-68(%rbp), %edx	# i, tmp201
	movslq	%edx, %rdx	# tmp201, D.6291
	salq	$3, %rdx	#, D.6291
	addq	%rdx, %rax	# D.6291, D.6292
	movq	(%rax), %rax	# *_42, D.6293
	movl	$.LC10, %esi	#,
	movq	%rax, %rdi	# D.6293,
	call	strcmp	#
	testl	%eax, %eax	# D.6290
	jne	.L46	#,
	.loc 1 285 0
	movl	$1, -72(%rbp)	#, chksum_present
.L46:
	.loc 1 279 0
	addl	$1, -68(%rbp)	#, i
.L43:
	.loc 1 279 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# argname, argname.67
	movl	-68(%rbp), %edx	# i, tmp202
	movslq	%edx, %rdx	# tmp202, D.6291
	salq	$3, %rdx	#, D.6291
	addq	%rdx, %rax	# D.6291, D.6292
	movq	(%rax), %rax	# *_20, D.6293
	testq	%rax, %rax	# D.6293
	jne	.L47	#,
	.loc 1 288 0 is_stmt 1
	movq	-48(%rbp), %rdx	# argval, argval.68
	movq	-56(%rbp), %rax	# argname, argname.69
	movq	%rdx, %rsi	# argval.68,
	movq	%rax, %rdi	# argname.69,
	call	bio_hdrarg_free	#
	.loc 1 289 0
	movq	$0, -48(%rbp)	#, argval
	movq	-48(%rbp), %rax	# argval, argval.70
	movq	%rax, -56(%rbp)	# argval.70, argname
	.loc 1 291 0
	movl	$0, -92(%rbp)	#, chksum
	.loc 1 294 0
	movl	-96(%rbp), %ecx	# byteswap, byteswap.71
	leaq	-92(%rbp), %rsi	#, tmp203
	movq	-32(%rbp), %rdx	# fp, tmp204
	leaq	-84(%rbp), %rax	#, tmp205
	movq	%rsi, %r9	# tmp203,
	movl	%ecx, %r8d	# byteswap.71,
	movq	%rdx, %rcx	# tmp204,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp205,
	call	bio_fread	#
	cmpl	$1, %eax	#, D.6290
	jne	.L48	#,
	.loc 1 295 0 discriminator 1
	movl	-96(%rbp), %ecx	# byteswap, byteswap.72
	leaq	-92(%rbp), %rsi	#, tmp206
	movq	-32(%rbp), %rdx	# fp, tmp207
	leaq	-80(%rbp), %rax	#, tmp208
	movq	%rsi, %r9	# tmp206,
	movl	%ecx, %r8d	# byteswap.72,
	movq	%rdx, %rcx	# tmp207,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp208,
	call	bio_fread	#
	.loc 1 294 0 discriminator 1
	cmpl	$1, %eax	#, D.6290
	jne	.L48	#,
	.loc 1 296 0
	movl	-96(%rbp), %ecx	# byteswap, byteswap.73
	leaq	-92(%rbp), %rsi	#, tmp209
	movq	-32(%rbp), %rdx	# fp, tmp210
	leaq	-76(%rbp), %rax	#, tmp211
	movq	%rsi, %r9	# tmp209,
	movl	%ecx, %r8d	# byteswap.73,
	movq	%rdx, %rcx	# tmp210,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp211,
	call	bio_fread	#
	.loc 1 295 0
	cmpl	$1, %eax	#, D.6290
	jne	.L48	#,
	.loc 1 297 0
	movl	-96(%rbp), %ecx	# byteswap, byteswap.74
	leaq	-92(%rbp), %rsi	#, tmp212
	movq	-32(%rbp), %rdx	# fp, tmp213
	leaq	-88(%rbp), %rax	#, tmp214
	movq	%rsi, %r9	# tmp212,
	movl	%ecx, %r8d	# byteswap.74,
	movq	%rdx, %rcx	# tmp213,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp214,
	call	bio_fread	#
	.loc 1 296 0
	cmpl	$1, %eax	#, D.6290
	je	.L49	#,
.L48:
	.loc 1 298 0
	movl	$.LC4, %edx	#,
	movl	$298, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movq	-128(%rbp), %rax	# file_name, tmp215
	movq	%rax, %rsi	# tmp215,
	movl	$.LC29, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L49:
	.loc 1 300 0
	movq	-120(%rbp), %rax	# g, tmp216
	movl	40(%rax), %eax	# g_58(D)->gau_type, D.6290
	cmpl	$10001, %eax	#, D.6290
	jne	.L50	#,
	.loc 1 301 0
	movl	-80(%rbp), %eax	# n_feat, n_feat.75
	cmpl	$1, %eax	#, n_feat.75
	je	.L52	#,
	.loc 1 302 0
	movl	$.LC4, %edx	#,
	movl	$302, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movl	-80(%rbp), %eax	# n_feat, n_feat.76
	movl	%eax, %esi	# n_feat.76,
	movl	$.LC14, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
	jmp	.L52	#
.L50:
	.loc 1 303 0
	movq	-120(%rbp), %rax	# g, tmp217
	movl	40(%rax), %eax	# g_58(D)->gau_type, D.6290
	cmpl	$10002, %eax	#, D.6290
	jne	.L53	#,
	.loc 1 304 0
	movl	-80(%rbp), %eax	# n_feat, n_feat.77
	cmpl	$4, %eax	#, n_feat.77
	je	.L52	#,
	.loc 1 305 0
	movl	$.LC4, %edx	#,
	movl	$305, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movl	-80(%rbp), %eax	# n_feat, n_feat.78
	movl	%eax, %esi	# n_feat.78,
	movl	$.LC30, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
	jmp	.L52	#
.L53:
	.loc 1 307 0
	movl	$.LC4, %edx	#,
	movl	$307, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movl	$.LC31, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L52:
	.loc 1 310 0
	movl	-84(%rbp), %edx	# n_mgau, n_mgau.79
	movl	-76(%rbp), %eax	# n_comp, n_comp.80
	imull	%eax, %edx	# n_comp.80, D.6290
	movl	-88(%rbp), %eax	# n, n.81
	cmpl	%eax, %edx	# n.81, D.6290
	je	.L55	#,
	.loc 1 311 0
	movl	$.LC4, %edx	#,
	movl	$311, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movl	-76(%rbp), %esi	# n_comp, n_comp.82
	movl	-84(%rbp), %ecx	# n_mgau, n_mgau.83
	movl	-68(%rbp), %edx	# i, tmp218
	movq	-128(%rbp), %rax	# file_name, tmp219
	movl	%esi, %r8d	# n_comp.82,
	movq	%rax, %rsi	# tmp219,
	movl	$.LC32, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L55:
	.loc 1 314 0
	movq	-120(%rbp), %rax	# g, tmp220
	movl	(%rax), %edx	# g_58(D)->n_mgau, D.6290
	movl	-84(%rbp), %eax	# n_mgau, n_mgau.84
	cmpl	%eax, %edx	# n_mgau.84, D.6290
	je	.L56	#,
	.loc 1 315 0
	movl	$.LC4, %edx	#,
	movl	$315, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movq	-120(%rbp), %rax	# g, tmp221
	movl	(%rax), %edx	# g_58(D)->n_mgau, D.6290
	movl	-84(%rbp), %eax	# n_mgau, n_mgau.85
	movl	%eax, %esi	# n_mgau.85,
	movl	$.LC33, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L56:
	.loc 1 318 0
	movl	-84(%rbp), %edx	# n_mgau, n_mgau.86
	movl	-76(%rbp), %eax	# n_comp, n_comp.87
	imull	%edx, %eax	# n_mgau.86, D.6290
	cltq
	movl	$318, %ecx	#,
	movl	$.LC1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.6291,
	call	__ckd_calloc__	#
	movq	%rax, -40(%rbp)	# tmp222, buf
	.loc 1 319 0
	movl	$0, -68(%rbp)	#, i
	jmp	.L57	#
.L59:
	.loc 1 320 0
	movq	-120(%rbp), %rax	# g, tmp223
	movq	16(%rax), %rcx	# g_58(D)->mgau, D.6294
	movl	-68(%rbp), %eax	# i, tmp224
	movslq	%eax, %rdx	# tmp224, D.6291
	movq	%rdx, %rax	# D.6291, tmp225
	salq	$2, %rax	#, tmp225
	addq	%rdx, %rax	# D.6291, tmp225
	salq	$3, %rax	#, tmp226
	addq	%rcx, %rax	# D.6294, D.6294
	movl	(%rax), %edx	# _85->n_comp, D.6290
	movl	-76(%rbp), %eax	# n_comp, n_comp.88
	cmpl	%eax, %edx	# n_comp.88, D.6290
	je	.L58	#,
	.loc 1 321 0
	movl	$.LC4, %edx	#,
	movl	$321, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	.loc 1 322 0
	movq	-120(%rbp), %rax	# g, tmp227
	movq	16(%rax), %rcx	# g_58(D)->mgau, D.6294
	movl	-68(%rbp), %eax	# i, tmp228
	movslq	%eax, %rdx	# tmp228, D.6291
	movq	%rdx, %rax	# D.6291, tmp229
	salq	$2, %rax	#, tmp229
	addq	%rdx, %rax	# D.6291, tmp229
	salq	$3, %rax	#, tmp230
	addq	%rcx, %rax	# D.6294, D.6294
	.loc 1 321 0
	movl	(%rax), %ecx	# _91->n_comp, D.6290
	movl	-76(%rbp), %edx	# n_comp, n_comp.89
	movl	-68(%rbp), %eax	# i, tmp231
	movl	%eax, %esi	# tmp231,
	movl	$.LC34, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L58:
	.loc 1 324 0
	movq	-120(%rbp), %rax	# g, tmp232
	movq	16(%rax), %rcx	# g_58(D)->mgau, D.6294
	movl	-68(%rbp), %eax	# i, tmp233
	movslq	%eax, %rdx	# tmp233, D.6291
	movq	%rdx, %rax	# D.6291, tmp234
	salq	$2, %rax	#, tmp234
	addq	%rdx, %rax	# D.6291, tmp234
	salq	$3, %rax	#, tmp235
	leaq	(%rcx,%rax), %rdx	#, D.6294
	movq	-40(%rbp), %rax	# buf, tmp236
	movq	%rax, 32(%rdx)	# tmp236, _97->mixw
	.loc 1 325 0
	movq	-120(%rbp), %rax	# g, tmp237
	movq	16(%rax), %rcx	# g_58(D)->mgau, D.6294
	movl	-68(%rbp), %eax	# i, tmp238
	movslq	%eax, %rdx	# tmp238, D.6291
	movq	%rdx, %rax	# D.6291, tmp239
	salq	$2, %rax	#, tmp239
	addq	%rdx, %rax	# D.6291, tmp239
	salq	$3, %rax	#, tmp240
	addq	%rcx, %rax	# D.6294, D.6294
	movl	(%rax), %eax	# _101->n_comp, D.6290
	cltq
	salq	$2, %rax	#, D.6291
	addq	%rax, -40(%rbp)	# D.6291, buf
	.loc 1 319 0
	addl	$1, -68(%rbp)	#, i
.L57:
	.loc 1 319 0 is_stmt 0 discriminator 1
	movl	-84(%rbp), %eax	# n_mgau, n_mgau.90
	cmpl	%eax, -68(%rbp)	# n_mgau.90, i
	jl	.L59	#,
	.loc 1 329 0 is_stmt 1
	movl	-76(%rbp), %eax	# n_comp, n_comp.91
	cltq
	movl	$329, %ecx	#,
	movl	$.LC1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.6291,
	call	__ckd_calloc__	#
	movq	%rax, -24(%rbp)	# tmp241, pdf
	.loc 1 332 0
	movl	$0, -60(%rbp)	#, n_err
	.loc 1 333 0
	movl	$0, -68(%rbp)	#, i
	jmp	.L60	#
.L71:
	.loc 1 334 0
	movl	-96(%rbp), %esi	# byteswap, byteswap.92
	movl	-76(%rbp), %edx	# n_comp, n_comp.93
	leaq	-92(%rbp), %rdi	#, tmp242
	movq	-32(%rbp), %rcx	# fp, tmp243
	movq	-24(%rbp), %rax	# pdf, tmp244
	movq	%rdi, %r9	# tmp242,
	movl	%esi, %r8d	# byteswap.92,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp244,
	call	bio_fread	#
	movl	-76(%rbp), %edx	# n_comp, n_comp.94
	cmpl	%edx, %eax	# n_comp.94, D.6290
	je	.L61	#,
	.loc 1 335 0
	movl	$.LC4, %edx	#,
	movl	$335, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movq	-128(%rbp), %rax	# file_name, tmp245
	movq	%rax, %rsi	# tmp245,
	movl	$.LC35, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L61:
	.loc 1 338 0
	movl	-76(%rbp), %edx	# n_comp, n_comp.95
	movq	-24(%rbp), %rax	# pdf, tmp246
	movl	%edx, %esi	# n_comp.95,
	movq	%rax, %rdi	# tmp246,
	call	vector_is_zero	#
	testl	%eax, %eax	# D.6290
	je	.L62	#,
	.loc 1 339 0
	addl	$1, -60(%rbp)	#, n_err
	.loc 1 340 0
	movl	$0, -64(%rbp)	#, j
	jmp	.L63	#
.L64:
	.loc 1 341 0 discriminator 2
	movq	-120(%rbp), %rax	# g, tmp247
	movq	16(%rax), %rcx	# g_58(D)->mgau, D.6294
	movl	-68(%rbp), %eax	# i, tmp248
	movslq	%eax, %rdx	# tmp248, D.6291
	movq	%rdx, %rax	# D.6291, tmp249
	salq	$2, %rax	#, tmp249
	addq	%rdx, %rax	# D.6291, tmp249
	salq	$3, %rax	#, tmp250
	addq	%rcx, %rax	# D.6294, D.6294
	movq	32(%rax), %rax	# _125->mixw, D.6295
	movl	-64(%rbp), %edx	# j, tmp251
	movslq	%edx, %rdx	# tmp251, D.6291
	salq	$2, %rdx	#, D.6291
	addq	%rdx, %rax	# D.6291, D.6295
	movl	$-939524096, (%rax)	#, *_129
	.loc 1 340 0 discriminator 2
	addl	$1, -64(%rbp)	#, j
.L63:
	.loc 1 340 0 is_stmt 0 discriminator 1
	movl	-76(%rbp), %eax	# n_comp, n_comp.96
	cmpl	%eax, -64(%rbp)	# n_comp.96, j
	jl	.L64	#,
	jmp	.L65	#
.L62:
	.loc 1 343 0 is_stmt 1
	movl	-76(%rbp), %ecx	# n_comp, n_comp.97
	movq	-136(%rbp), %rax	# mixwfloor, tmp252
	movq	-24(%rbp), %rdx	# pdf, tmp253
	movq	%rax, -144(%rbp)	# tmp252, %sfp
	movsd	-144(%rbp), %xmm0	# %sfp,
	movl	%ecx, %esi	# n_comp.97,
	movq	%rdx, %rdi	# tmp253,
	call	vector_nz_floor	#
	.loc 1 344 0
	movl	-76(%rbp), %edx	# n_comp, n_comp.98
	movq	-24(%rbp), %rax	# pdf, tmp254
	movl	%edx, %esi	# n_comp.98,
	movq	%rax, %rdi	# tmp254,
	call	vector_sum_norm	#
	.loc 1 345 0
	movl	$0, -64(%rbp)	#, j
	jmp	.L66	#
.L70:
	.loc 1 346 0
	movq	-120(%rbp), %rax	# g, tmp255
	movq	16(%rax), %rcx	# g_58(D)->mgau, D.6294
	movl	-68(%rbp), %eax	# i, tmp256
	movslq	%eax, %rdx	# tmp256, D.6291
	movq	%rdx, %rax	# D.6291, tmp257
	salq	$2, %rax	#, tmp257
	addq	%rdx, %rax	# D.6291, tmp257
	salq	$3, %rax	#, tmp258
	addq	%rcx, %rax	# D.6294, D.6294
	movq	32(%rax), %rax	# _139->mixw, D.6295
	movl	-64(%rbp), %edx	# j, tmp259
	movslq	%edx, %rdx	# tmp259, D.6291
	salq	$2, %rdx	#, D.6291
	leaq	(%rax,%rdx), %rbx	#, D.6295
	movl	-64(%rbp), %eax	# j, tmp260
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6291
	movq	-24(%rbp), %rax	# pdf, tmp261
	addq	%rdx, %rax	# D.6291, D.6296
	movss	(%rax), %xmm0	# *_146, D.6297
	xorps	%xmm1, %xmm1	# tmp262
	ucomiss	%xmm1, %xmm0	# tmp262, D.6297
	jp	.L75	#,
	xorps	%xmm1, %xmm1	# tmp263
	ucomiss	%xmm1, %xmm0	# tmp263, D.6297
	je	.L76	#,
.L75:
	.loc 1 346 0 is_stmt 0 discriminator 1
	movl	-64(%rbp), %eax	# j, tmp264
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6291
	movq	-24(%rbp), %rax	# pdf, tmp265
	addq	%rdx, %rax	# D.6291, D.6296
	movss	(%rax), %xmm0	# *_150, D.6297
	unpcklps	%xmm0, %xmm0	# D.6297, D.6297
	cvtps2pd	%xmm0, %xmm0	# D.6297, D.6298
	call	logs3	#
	jmp	.L69	#
.L76:
	.loc 1 346 0 discriminator 2
	movl	$-939524096, %eax	#, iftmp.99
.L69:
	.loc 1 346 0 discriminator 3
	movl	%eax, (%rbx)	# iftmp.99, *_143
	.loc 1 345 0 is_stmt 1 discriminator 3
	addl	$1, -64(%rbp)	#, j
.L66:
	.loc 1 345 0 is_stmt 0 discriminator 1
	movl	-76(%rbp), %eax	# n_comp, n_comp.100
	cmpl	%eax, -64(%rbp)	# n_comp.100, j
	jl	.L70	#,
.L65:
	.loc 1 333 0 is_stmt 1
	addl	$1, -68(%rbp)	#, i
.L60:
	.loc 1 333 0 is_stmt 0 discriminator 1
	movl	-84(%rbp), %eax	# n_mgau, n_mgau.101
	cmpl	%eax, -68(%rbp)	# n_mgau.101, i
	jl	.L71	#,
	.loc 1 352 0 is_stmt 1
	movq	-24(%rbp), %rax	# pdf, tmp266
	movq	%rax, %rdi	# tmp266,
	call	ckd_free	#
	.loc 1 354 0
	cmpl	$0, -72(%rbp)	#, chksum_present
	je	.L72	#,
	.loc 1 355 0
	movl	-92(%rbp), %edx	# chksum, chksum.102
	movl	-96(%rbp), %ecx	# byteswap, byteswap.103
	movq	-32(%rbp), %rax	# fp, tmp267
	movl	%ecx, %esi	# byteswap.103,
	movq	%rax, %rdi	# tmp267,
	call	bio_verify_chksum	#
.L72:
	.loc 1 357 0
	movq	-32(%rbp), %rdx	# fp, tmp268
	leaq	-97(%rbp), %rax	#, tmp269
	movq	%rdx, %rcx	# tmp268,
	movl	$1, %edx	#,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp269,
	call	fread	#
	cmpq	$1, %rax	#, D.6291
	jne	.L73	#,
	.loc 1 358 0
	movl	$.LC4, %edx	#,
	movl	$358, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movq	-128(%rbp), %rax	# file_name, tmp270
	movq	%rax, %rsi	# tmp270,
	movl	$.LC37, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L73:
	.loc 1 360 0
	movq	-32(%rbp), %rax	# fp, tmp271
	movq	%rax, %rdi	# tmp271,
	call	fclose	#
	.loc 1 362 0
	movl	$.LC0, %edx	#,
	movl	$362, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_info_header	#
	movl	-76(%rbp), %edx	# n_comp, n_comp.104
	movl	-84(%rbp), %eax	# n_mgau, n_mgau.105
	movl	%eax, %esi	# n_mgau.105,
	movl	$.LC38, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 364 0
	movl	$0, %eax	#, D.6299
	.loc 1 365 0
	addq	$136, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	mgau_mixw_read, .-mgau_mixw_read
	.section	.rodata
	.align 8
.LC39:
	.string	"Removing uninitialized Gaussian densities\n"
.LC40:
	.string	" %d"
	.align 8
.LC41:
	.string	"%d densities removed (%d mixtures removed entirely)\n"
	.text
	.type	mgau_uninit_compact, @function
mgau_uninit_compact:
.LFB4:
	.loc 1 375 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# g, g
	.loc 1 378 0
	movl	$.LC0, %edx	#,
	movl	$378, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_info_header	#
	movl	$.LC39, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 380 0
	movl	$0, -8(%rbp)	#, n
	.loc 1 381 0
	movl	$0, -4(%rbp)	#, nm
	.loc 1 382 0
	movl	$0, -20(%rbp)	#, m
	jmp	.L78	#
.L85:
	.loc 1 383 0
	movl	$0, -16(%rbp)	#, c
	movl	$0, -12(%rbp)	#, c2
	jmp	.L79	#
.L83:
	.loc 1 384 0
	movq	-40(%rbp), %rax	# g, tmp141
	movl	8(%rax), %ecx	# g_13(D)->veclen, D.6310
	movq	-40(%rbp), %rax	# g, tmp142
	movq	16(%rax), %rsi	# g_13(D)->mgau, D.6311
	movl	-20(%rbp), %eax	# m, tmp143
	movslq	%eax, %rdx	# tmp143, D.6312
	movq	%rdx, %rax	# D.6312, tmp144
	salq	$2, %rax	#, tmp144
	addq	%rdx, %rax	# D.6312, tmp144
	salq	$3, %rax	#, tmp145
	addq	%rsi, %rax	# D.6311, D.6311
	movq	16(%rax), %rax	# _26->var, D.6313
	movl	-16(%rbp), %edx	# c, tmp146
	movslq	%edx, %rdx	# tmp146, D.6312
	salq	$3, %rdx	#, D.6312
	addq	%rdx, %rax	# D.6312, D.6313
	movq	(%rax), %rax	# *_30, D.6314
	movl	%ecx, %esi	# D.6310,
	movq	%rax, %rdi	# D.6314,
	call	vector_is_zero	#
	testl	%eax, %eax	# D.6310
	jne	.L80	#,
	.loc 1 385 0
	movl	-12(%rbp), %eax	# c2, tmp147
	cmpl	-16(%rbp), %eax	# c, tmp147
	je	.L81	#,
	.loc 1 387 0
	movq	-40(%rbp), %rax	# g, tmp148
	movl	8(%rax), %eax	# g_13(D)->veclen, D.6310
	.loc 1 386 0
	cltq
	leaq	0(,%rax,4), %rsi	#, D.6312
	movq	-40(%rbp), %rax	# g, tmp149
	movq	16(%rax), %rcx	# g_13(D)->mgau, D.6311
	movl	-20(%rbp), %eax	# m, tmp150
	movslq	%eax, %rdx	# tmp150, D.6312
	movq	%rdx, %rax	# D.6312, tmp151
	salq	$2, %rax	#, tmp151
	addq	%rdx, %rax	# D.6312, tmp151
	salq	$3, %rax	#, tmp152
	addq	%rcx, %rax	# D.6311, D.6311
	movq	8(%rax), %rax	# _39->mean, D.6313
	movl	-16(%rbp), %edx	# c, tmp153
	movslq	%edx, %rdx	# tmp153, D.6312
	salq	$3, %rdx	#, D.6312
	addq	%rdx, %rax	# D.6312, D.6313
	movq	(%rax), %rcx	# *_43, D.6314
	movq	-40(%rbp), %rax	# g, tmp154
	movq	16(%rax), %rdi	# g_13(D)->mgau, D.6311
	movl	-20(%rbp), %eax	# m, tmp155
	movslq	%eax, %rdx	# tmp155, D.6312
	movq	%rdx, %rax	# D.6312, tmp156
	salq	$2, %rax	#, tmp156
	addq	%rdx, %rax	# D.6312, tmp156
	salq	$3, %rax	#, tmp157
	addq	%rdi, %rax	# D.6311, D.6311
	movq	8(%rax), %rax	# _48->mean, D.6313
	movl	-12(%rbp), %edx	# c2, tmp158
	movslq	%edx, %rdx	# tmp158, D.6312
	salq	$3, %rdx	#, D.6312
	addq	%rdx, %rax	# D.6312, D.6313
	movq	(%rax), %rax	# *_52, D.6314
	movq	%rsi, %rdx	# D.6312,
	movq	%rcx, %rsi	# D.6314,
	movq	%rax, %rdi	# D.6314,
	call	memcpy	#
	.loc 1 389 0
	movq	-40(%rbp), %rax	# g, tmp159
	movl	8(%rax), %eax	# g_13(D)->veclen, D.6310
	.loc 1 388 0
	cltq
	leaq	0(,%rax,4), %rsi	#, D.6312
	movq	-40(%rbp), %rax	# g, tmp160
	movq	16(%rax), %rcx	# g_13(D)->mgau, D.6311
	movl	-20(%rbp), %eax	# m, tmp161
	movslq	%eax, %rdx	# tmp161, D.6312
	movq	%rdx, %rax	# D.6312, tmp162
	salq	$2, %rax	#, tmp162
	addq	%rdx, %rax	# D.6312, tmp162
	salq	$3, %rax	#, tmp163
	addq	%rcx, %rax	# D.6311, D.6311
	movq	16(%rax), %rax	# _60->var, D.6313
	movl	-16(%rbp), %edx	# c, tmp164
	movslq	%edx, %rdx	# tmp164, D.6312
	salq	$3, %rdx	#, D.6312
	addq	%rdx, %rax	# D.6312, D.6313
	movq	(%rax), %rcx	# *_64, D.6314
	movq	-40(%rbp), %rax	# g, tmp165
	movq	16(%rax), %rdi	# g_13(D)->mgau, D.6311
	movl	-20(%rbp), %eax	# m, tmp166
	movslq	%eax, %rdx	# tmp166, D.6312
	movq	%rdx, %rax	# D.6312, tmp167
	salq	$2, %rax	#, tmp167
	addq	%rdx, %rax	# D.6312, tmp167
	salq	$3, %rax	#, tmp168
	addq	%rdi, %rax	# D.6311, D.6311
	movq	16(%rax), %rax	# _69->var, D.6313
	movl	-12(%rbp), %edx	# c2, tmp169
	movslq	%edx, %rdx	# tmp169, D.6312
	salq	$3, %rdx	#, D.6312
	addq	%rdx, %rax	# D.6312, D.6313
	movq	(%rax), %rax	# *_73, D.6314
	movq	%rsi, %rdx	# D.6312,
	movq	%rcx, %rsi	# D.6314,
	movq	%rax, %rdi	# D.6314,
	call	memcpy	#
	.loc 1 390 0
	movq	-40(%rbp), %rax	# g, tmp170
	movq	16(%rax), %rcx	# g_13(D)->mgau, D.6311
	movl	-20(%rbp), %eax	# m, tmp171
	movslq	%eax, %rdx	# tmp171, D.6312
	movq	%rdx, %rax	# D.6312, tmp172
	salq	$2, %rax	#, tmp172
	addq	%rdx, %rax	# D.6312, tmp172
	salq	$3, %rax	#, tmp173
	addq	%rcx, %rax	# D.6311, D.6311
	movq	32(%rax), %rax	# _78->mixw, D.6315
	movl	-12(%rbp), %edx	# c2, tmp174
	movslq	%edx, %rdx	# tmp174, D.6312
	salq	$2, %rdx	#, D.6312
	leaq	(%rax,%rdx), %rcx	#, D.6315
	movq	-40(%rbp), %rax	# g, tmp175
	movq	16(%rax), %rsi	# g_13(D)->mgau, D.6311
	movl	-20(%rbp), %eax	# m, tmp176
	movslq	%eax, %rdx	# tmp176, D.6312
	movq	%rdx, %rax	# D.6312, tmp177
	salq	$2, %rax	#, tmp177
	addq	%rdx, %rax	# D.6312, tmp177
	salq	$3, %rax	#, tmp178
	addq	%rsi, %rax	# D.6311, D.6311
	movq	32(%rax), %rax	# _86->mixw, D.6315
	movl	-16(%rbp), %edx	# c, tmp179
	movslq	%edx, %rdx	# tmp179, D.6312
	salq	$2, %rdx	#, D.6312
	addq	%rdx, %rax	# D.6312, D.6315
	movl	(%rax), %eax	# *_90, D.6310
	movl	%eax, (%rcx)	# D.6310, *_82
.L81:
	.loc 1 392 0
	addl	$1, -12(%rbp)	#, c2
	jmp	.L82	#
.L80:
	.loc 1 394 0
	addl	$1, -8(%rbp)	#, n
.L82:
	.loc 1 383 0
	addl	$1, -16(%rbp)	#, c
.L79:
	.loc 1 383 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# g, tmp180
	movq	16(%rax), %rcx	# g_13(D)->mgau, D.6311
	movl	-20(%rbp), %eax	# m, tmp181
	movslq	%eax, %rdx	# tmp181, D.6312
	movq	%rdx, %rax	# D.6312, tmp182
	salq	$2, %rax	#, tmp182
	addq	%rdx, %rax	# D.6312, tmp182
	salq	$3, %rax	#, tmp183
	addq	%rcx, %rax	# D.6311, D.6311
	movl	(%rax), %eax	# _20->n_comp, D.6310
	cmpl	-16(%rbp), %eax	# c, D.6310
	jg	.L83	#,
	.loc 1 397 0 is_stmt 1
	movq	-40(%rbp), %rax	# g, tmp184
	movq	16(%rax), %rcx	# g_13(D)->mgau, D.6311
	movl	-20(%rbp), %eax	# m, tmp185
	movslq	%eax, %rdx	# tmp185, D.6312
	movq	%rdx, %rax	# D.6312, tmp186
	salq	$2, %rax	#, tmp186
	addq	%rdx, %rax	# D.6312, tmp186
	salq	$3, %rax	#, tmp187
	leaq	(%rcx,%rax), %rdx	#, D.6311
	movl	-12(%rbp), %eax	# c2, tmp188
	movl	%eax, (%rdx)	# tmp188, _98->n_comp
	.loc 1 398 0
	cmpl	$0, -12(%rbp)	#, c2
	jne	.L84	#,
	.loc 1 399 0
	movq	stdout(%rip), %rax	# stdout, stdout.106
	movl	-20(%rbp), %edx	# m, tmp189
	movl	$.LC40, %esi	#,
	movq	%rax, %rdi	# stdout.106,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 401 0
	addl	$1, -4(%rbp)	#, nm
.L84:
	.loc 1 382 0
	addl	$1, -20(%rbp)	#, m
.L78:
	.loc 1 382 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# g, tmp190
	movl	(%rax), %eax	# g_13(D)->n_mgau, D.6310
	cmpl	-20(%rbp), %eax	# m, D.6310
	jg	.L85	#,
	.loc 1 404 0 is_stmt 1
	cmpl	$0, -4(%rbp)	#, nm
	jle	.L86	#,
	.loc 1 405 0
	movq	stdout(%rip), %rax	# stdout, stdout.107
	movq	%rax, %rsi	# stdout.107,
	movl	$10, %edi	#,
	call	fputc	#
.L86:
	.loc 1 407 0
	cmpl	$0, -4(%rbp)	#, nm
	jg	.L87	#,
	.loc 1 407 0 is_stmt 0 discriminator 1
	cmpl	$0, -8(%rbp)	#, n
	jle	.L77	#,
.L87:
	.loc 1 408 0 is_stmt 1
	movl	$.LC0, %edx	#,
	movl	$408, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_info_header	#
	movl	-4(%rbp), %edx	# nm, tmp191
	movl	-8(%rbp), %eax	# n, tmp192
	movl	%eax, %esi	# tmp192,
	movl	$.LC41, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
.L77:
	.loc 1 409 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	mgau_uninit_compact, .-mgau_uninit_compact
	.section	.rodata
.LC42:
	.string	"Applying variance floor\n"
.LC43:
	.string	"%d variance values floored\n"
	.text
	.type	mgau_var_floor, @function
mgau_var_floor:
.LFB5:
	.loc 1 413 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# g, g
	movsd	%xmm0, -32(%rbp)	# floor, floor
	.loc 1 416 0
	movl	$.LC0, %edx	#,
	movl	$416, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_info_header	#
	movl	$.LC42, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 417 0
	movl	$0, -4(%rbp)	#, n
	.loc 1 418 0
	movl	$0, -16(%rbp)	#, m
	jmp	.L90	#
.L97:
	.loc 1 419 0
	movl	$0, -12(%rbp)	#, c
	jmp	.L91	#
.L96:
	.loc 1 420 0
	movl	$0, -8(%rbp)	#, i
	jmp	.L92	#
.L95:
	.loc 1 421 0
	movq	-24(%rbp), %rax	# g, tmp93
	movq	16(%rax), %rcx	# g_10(D)->mgau, D.6320
	movl	-16(%rbp), %eax	# m, tmp94
	movslq	%eax, %rdx	# tmp94, D.6321
	movq	%rdx, %rax	# D.6321, tmp95
	salq	$2, %rax	#, tmp95
	addq	%rdx, %rax	# D.6321, tmp95
	salq	$3, %rax	#, tmp96
	addq	%rcx, %rax	# D.6320, D.6320
	movq	16(%rax), %rax	# _23->var, D.6322
	movl	-12(%rbp), %edx	# c, tmp97
	movslq	%edx, %rdx	# tmp97, D.6321
	salq	$3, %rdx	#, D.6321
	addq	%rdx, %rax	# D.6321, D.6322
	movq	(%rax), %rax	# *_27, D.6323
	movl	-8(%rbp), %edx	# i, tmp98
	movslq	%edx, %rdx	# tmp98, D.6321
	salq	$2, %rdx	#, D.6321
	addq	%rdx, %rax	# D.6321, D.6323
	movss	(%rax), %xmm0	# *_31, D.6324
	unpcklps	%xmm0, %xmm0	# D.6324, D.6324
	cvtps2pd	%xmm0, %xmm0	# D.6324, D.6325
	movsd	-32(%rbp), %xmm1	# floor, tmp99
	ucomisd	%xmm0, %xmm1	# D.6325, tmp99
	jbe	.L93	#,
	.loc 1 422 0
	movq	-24(%rbp), %rax	# g, tmp100
	movq	16(%rax), %rcx	# g_10(D)->mgau, D.6320
	movl	-16(%rbp), %eax	# m, tmp101
	movslq	%eax, %rdx	# tmp101, D.6321
	movq	%rdx, %rax	# D.6321, tmp102
	salq	$2, %rax	#, tmp102
	addq	%rdx, %rax	# D.6321, tmp102
	salq	$3, %rax	#, tmp103
	addq	%rcx, %rax	# D.6320, D.6320
	movq	16(%rax), %rax	# _38->var, D.6322
	movl	-12(%rbp), %edx	# c, tmp104
	movslq	%edx, %rdx	# tmp104, D.6321
	salq	$3, %rdx	#, D.6321
	addq	%rdx, %rax	# D.6321, D.6322
	movq	(%rax), %rax	# *_42, D.6323
	movl	-8(%rbp), %edx	# i, tmp105
	movslq	%edx, %rdx	# tmp105, D.6321
	salq	$2, %rdx	#, D.6321
	addq	%rdx, %rax	# D.6321, D.6323
	movsd	-32(%rbp), %xmm0	# floor, D.6324
	cvtpd2ps	%xmm0, %xmm0	# D.6324, D.6324
	movss	%xmm0, (%rax)	# D.6324, *_46
	.loc 1 423 0
	addl	$1, -4(%rbp)	#, n
.L93:
	.loc 1 420 0
	addl	$1, -8(%rbp)	#, i
.L92:
	.loc 1 420 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# g, tmp106
	movl	8(%rax), %eax	# g_10(D)->veclen, D.6319
	cmpl	-8(%rbp), %eax	# i, D.6319
	jg	.L95	#,
	.loc 1 419 0 is_stmt 1
	addl	$1, -12(%rbp)	#, c
.L91:
	.loc 1 419 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# g, tmp107
	movq	16(%rax), %rcx	# g_10(D)->mgau, D.6320
	movl	-16(%rbp), %eax	# m, tmp108
	movslq	%eax, %rdx	# tmp108, D.6321
	movq	%rdx, %rax	# D.6321, tmp109
	salq	$2, %rax	#, tmp109
	addq	%rdx, %rax	# D.6321, tmp109
	salq	$3, %rax	#, tmp110
	addq	%rcx, %rax	# D.6320, D.6320
	movl	(%rax), %eax	# _16->n_comp, D.6319
	cmpl	-12(%rbp), %eax	# c, D.6319
	jg	.L96	#,
	.loc 1 418 0 is_stmt 1
	addl	$1, -16(%rbp)	#, m
.L90:
	.loc 1 418 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# g, tmp111
	movl	(%rax), %eax	# g_10(D)->n_mgau, D.6319
	cmpl	-16(%rbp), %eax	# m, D.6319
	jg	.L97	#,
	.loc 1 428 0 is_stmt 1
	movl	$.LC0, %edx	#,
	movl	$428, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_info_header	#
	movl	-4(%rbp), %eax	# n, tmp112
	movl	%eax, %esi	# tmp112,
	movl	$.LC43, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 429 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	mgau_var_floor, .-mgau_var_floor
	.section	.rodata
	.align 8
.LC44:
	.string	"Applying variance floor to non-zero variance vectors\n"
	.text
	.globl	mgau_var_nzvec_floor
	.type	mgau_var_nzvec_floor, @function
mgau_var_nzvec_floor:
.LFB6:
	.loc 1 433 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# g, g
	movsd	%xmm0, -48(%rbp)	# floor, floor
	.loc 1 437 0
	movl	$.LC0, %edx	#,
	movl	$437, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_info_header	#
	movl	$.LC44, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 439 0
	movq	-40(%rbp), %rax	# g, tmp85
	movl	8(%rax), %eax	# g_9(D)->veclen, tmp86
	movl	%eax, -12(%rbp)	# tmp86, l
	.loc 1 441 0
	movl	$0, -16(%rbp)	#, n
	.loc 1 442 0
	movl	$0, -28(%rbp)	#, m
	jmp	.L100	#
.L108:
	.loc 1 443 0
	movl	$0, -24(%rbp)	#, c
	jmp	.L101	#
.L107:
	.loc 1 444 0
	movq	-40(%rbp), %rax	# g, tmp87
	movq	16(%rax), %rcx	# g_9(D)->mgau, D.6329
	movl	-28(%rbp), %eax	# m, tmp88
	movslq	%eax, %rdx	# tmp88, D.6330
	movq	%rdx, %rax	# D.6330, tmp89
	salq	$2, %rax	#, tmp89
	addq	%rdx, %rax	# D.6330, tmp89
	salq	$3, %rax	#, tmp90
	addq	%rcx, %rax	# D.6329, D.6329
	movq	16(%rax), %rax	# _23->var, D.6331
	movl	-24(%rbp), %edx	# c, tmp91
	movslq	%edx, %rdx	# tmp91, D.6330
	salq	$3, %rdx	#, D.6330
	addq	%rdx, %rax	# D.6330, D.6331
	movq	(%rax), %rax	# *_27, tmp92
	movq	%rax, -8(%rbp)	# tmp92, var
	.loc 1 446 0
	movl	-12(%rbp), %edx	# l, tmp93
	movq	-8(%rbp), %rax	# var, tmp94
	movl	%edx, %esi	# tmp93,
	movq	%rax, %rdi	# tmp94,
	call	vector_is_zero	#
	testl	%eax, %eax	# D.6328
	jne	.L102	#,
	.loc 1 447 0
	movl	$0, -20(%rbp)	#, i
	jmp	.L103	#
.L106:
	.loc 1 448 0
	movl	-20(%rbp), %eax	# i, tmp95
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6330
	movq	-8(%rbp), %rax	# var, tmp96
	addq	%rdx, %rax	# D.6330, D.6332
	movss	(%rax), %xmm0	# *_33, D.6333
	unpcklps	%xmm0, %xmm0	# D.6333, D.6333
	cvtps2pd	%xmm0, %xmm0	# D.6333, D.6334
	movsd	-48(%rbp), %xmm1	# floor, tmp97
	ucomisd	%xmm0, %xmm1	# D.6334, tmp97
	jbe	.L104	#,
	.loc 1 449 0
	movl	-20(%rbp), %eax	# i, tmp98
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6330
	movq	-8(%rbp), %rax	# var, tmp99
	addq	%rdx, %rax	# D.6330, D.6332
	movsd	-48(%rbp), %xmm0	# floor, D.6333
	cvtpd2ps	%xmm0, %xmm0	# D.6333, D.6333
	movss	%xmm0, (%rax)	# D.6333, *_39
	.loc 1 450 0
	addl	$1, -16(%rbp)	#, n
.L104:
	.loc 1 447 0
	addl	$1, -20(%rbp)	#, i
.L103:
	.loc 1 447 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# i, tmp100
	cmpl	-12(%rbp), %eax	# l, tmp100
	jl	.L106	#,
.L102:
	.loc 1 443 0 is_stmt 1
	addl	$1, -24(%rbp)	#, c
.L101:
	.loc 1 443 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# g, tmp101
	movq	16(%rax), %rcx	# g_9(D)->mgau, D.6329
	movl	-28(%rbp), %eax	# m, tmp102
	movslq	%eax, %rdx	# tmp102, D.6330
	movq	%rdx, %rax	# D.6330, tmp103
	salq	$2, %rax	#, tmp103
	addq	%rdx, %rax	# D.6330, tmp103
	salq	$3, %rax	#, tmp104
	addq	%rcx, %rax	# D.6329, D.6329
	movl	(%rax), %eax	# _18->n_comp, D.6328
	cmpl	-24(%rbp), %eax	# c, D.6328
	jg	.L107	#,
	.loc 1 442 0 is_stmt 1
	addl	$1, -28(%rbp)	#, m
.L100:
	.loc 1 442 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# g, tmp105
	movl	(%rax), %eax	# g_9(D)->n_mgau, D.6328
	cmpl	-28(%rbp), %eax	# m, D.6328
	jg	.L108	#,
	.loc 1 457 0 is_stmt 1
	movl	$.LC0, %edx	#,
	movl	$457, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_info_header	#
	movl	-16(%rbp), %eax	# n, tmp106
	movl	%eax, %esi	# tmp106,
	movl	$.LC43, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 459 0
	movl	-16(%rbp), %eax	# n, D.6335
	.loc 1 460 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	mgau_var_nzvec_floor, .-mgau_var_nzvec_floor
	.section	.rodata
	.align 8
.LC45:
	.string	"Precomputing Mahalanobis distance invariants\n"
	.text
	.type	mgau_precomp, @function
mgau_precomp:
.LFB7:
	.loc 1 468 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# g, g
	.loc 1 473 0
	call	log_to_logs3_factor	#
	movsd	%xmm0, -48(%rbp)	#, %sfp
	movq	-48(%rbp), %rax	# %sfp, tmp125
	movq	%rax, -8(%rbp)	# tmp125, f
	.loc 1 474 0
	movl	$.LC0, %edx	#,
	movl	$474, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_info_header	#
	movl	$.LC45, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 476 0
	movl	$0, -28(%rbp)	#, m
	jmp	.L112	#
.L117:
	.loc 1 477 0
	movl	$0, -24(%rbp)	#, c
	jmp	.L113	#
.L116:
	.loc 1 478 0
	movl	$0, %eax	#, tmp126
	movq	%rax, -16(%rbp)	# tmp126, lrd
	.loc 1 479 0
	movl	$0, -20(%rbp)	#, i
	jmp	.L114	#
.L115:
	.loc 1 480 0 discriminator 2
	movq	-40(%rbp), %rax	# g, tmp127
	movq	16(%rax), %rcx	# g_7(D)->mgau, D.6338
	movl	-28(%rbp), %eax	# m, tmp128
	movslq	%eax, %rdx	# tmp128, D.6339
	movq	%rdx, %rax	# D.6339, tmp129
	salq	$2, %rax	#, tmp129
	addq	%rdx, %rax	# D.6339, tmp129
	salq	$3, %rax	#, tmp130
	addq	%rcx, %rax	# D.6338, D.6338
	movq	16(%rax), %rax	# _21->var, D.6340
	movl	-24(%rbp), %edx	# c, tmp131
	movslq	%edx, %rdx	# tmp131, D.6339
	salq	$3, %rdx	#, D.6339
	addq	%rdx, %rax	# D.6339, D.6340
	movq	(%rax), %rax	# *_25, D.6341
	movl	-20(%rbp), %edx	# i, tmp132
	movslq	%edx, %rdx	# tmp132, D.6339
	salq	$2, %rdx	#, D.6339
	addq	%rdx, %rax	# D.6339, D.6341
	movss	(%rax), %xmm0	# *_29, D.6342
	unpcklps	%xmm0, %xmm0	# D.6342, D.6342
	cvtps2pd	%xmm0, %xmm0	# D.6342, D.6343
	call	log	#
	movsd	-16(%rbp), %xmm1	# lrd, tmp134
	addsd	%xmm1, %xmm0	# tmp134, tmp133
	movsd	%xmm0, -16(%rbp)	# tmp133, lrd
	.loc 1 483 0 discriminator 2
	movq	-40(%rbp), %rax	# g, tmp135
	movq	16(%rax), %rcx	# g_7(D)->mgau, D.6338
	movl	-28(%rbp), %eax	# m, tmp136
	movslq	%eax, %rdx	# tmp136, D.6339
	movq	%rdx, %rax	# D.6339, tmp137
	salq	$2, %rax	#, tmp137
	addq	%rdx, %rax	# D.6339, tmp137
	salq	$3, %rax	#, tmp138
	addq	%rcx, %rax	# D.6338, D.6338
	movq	16(%rax), %rax	# _37->var, D.6340
	movl	-24(%rbp), %edx	# c, tmp139
	movslq	%edx, %rdx	# tmp139, D.6339
	salq	$3, %rdx	#, D.6339
	addq	%rdx, %rax	# D.6339, D.6340
	movq	(%rax), %rax	# *_41, D.6341
	movl	-20(%rbp), %edx	# i, tmp140
	movslq	%edx, %rdx	# tmp140, D.6339
	salq	$2, %rdx	#, D.6339
	leaq	(%rax,%rdx), %rcx	#, D.6341
	movq	-40(%rbp), %rax	# g, tmp141
	movq	16(%rax), %rsi	# g_7(D)->mgau, D.6338
	movl	-28(%rbp), %eax	# m, tmp142
	movslq	%eax, %rdx	# tmp142, D.6339
	movq	%rdx, %rax	# D.6339, tmp143
	salq	$2, %rax	#, tmp143
	addq	%rdx, %rax	# D.6339, tmp143
	salq	$3, %rax	#, tmp144
	addq	%rsi, %rax	# D.6338, D.6338
	movq	16(%rax), %rax	# _49->var, D.6340
	movl	-24(%rbp), %edx	# c, tmp145
	movslq	%edx, %rdx	# tmp145, D.6339
	salq	$3, %rdx	#, D.6339
	addq	%rdx, %rax	# D.6339, D.6340
	movq	(%rax), %rax	# *_53, D.6341
	movl	-20(%rbp), %edx	# i, tmp146
	movslq	%edx, %rdx	# tmp146, D.6339
	salq	$2, %rdx	#, D.6339
	addq	%rdx, %rax	# D.6339, D.6341
	movss	(%rax), %xmm0	# *_57, D.6342
	unpcklps	%xmm0, %xmm0	# D.6342, D.6342
	cvtps2pd	%xmm0, %xmm0	# D.6342, D.6343
	addsd	%xmm0, %xmm0	# D.6343, D.6343
	movsd	.LC47(%rip), %xmm1	#, tmp147
	divsd	%xmm0, %xmm1	# D.6343, D.6343
	movapd	%xmm1, %xmm0	# D.6343, D.6343
	unpcklpd	%xmm0, %xmm0	# D.6343
	cvtpd2ps	%xmm0, %xmm0	# D.6343, D.6342
	movss	%xmm0, (%rcx)	# D.6342, *_45
	.loc 1 479 0 discriminator 2
	addl	$1, -20(%rbp)	#, i
.L114:
	.loc 1 479 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# g, tmp148
	movl	8(%rax), %eax	# g_7(D)->veclen, D.6337
	cmpl	-20(%rbp), %eax	# i, D.6337
	jg	.L115	#,
	.loc 1 486 0 is_stmt 1
	movq	-40(%rbp), %rax	# g, tmp149
	movl	8(%rax), %eax	# g_7(D)->veclen, D.6337
	cvtsi2sd	%eax, %xmm0	# D.6337, D.6343
	movsd	.LC48(%rip), %xmm1	#, tmp150
	mulsd	%xmm1, %xmm0	# tmp150, D.6343
	movsd	-16(%rbp), %xmm1	# lrd, tmp152
	addsd	%xmm1, %xmm0	# tmp152, tmp151
	movsd	%xmm0, -16(%rbp)	# tmp151, lrd
	.loc 1 487 0
	movq	-40(%rbp), %rax	# g, tmp153
	movq	16(%rax), %rcx	# g_7(D)->mgau, D.6338
	movl	-28(%rbp), %eax	# m, tmp154
	movslq	%eax, %rdx	# tmp154, D.6339
	movq	%rdx, %rax	# D.6339, tmp155
	salq	$2, %rax	#, tmp155
	addq	%rdx, %rax	# D.6339, tmp155
	salq	$3, %rax	#, tmp156
	addq	%rcx, %rax	# D.6338, D.6338
	movq	24(%rax), %rax	# _71->lrd, D.6341
	movl	-24(%rbp), %edx	# c, tmp157
	movslq	%edx, %rdx	# tmp157, D.6339
	salq	$2, %rdx	#, D.6339
	addq	%rdx, %rax	# D.6339, D.6341
	movsd	-16(%rbp), %xmm1	# lrd, tmp158
	movsd	.LC49(%rip), %xmm0	#, tmp159
	mulsd	%xmm1, %xmm0	# tmp158, D.6343
	unpcklpd	%xmm0, %xmm0	# D.6343
	cvtpd2ps	%xmm0, %xmm0	# D.6343, D.6342
	movss	%xmm0, (%rax)	# D.6342, *_75
	.loc 1 477 0
	addl	$1, -24(%rbp)	#, c
.L113:
	.loc 1 477 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# g, tmp160
	movq	16(%rax), %rcx	# g_7(D)->mgau, D.6338
	movl	-28(%rbp), %eax	# m, tmp161
	movslq	%eax, %rdx	# tmp161, D.6339
	movq	%rdx, %rax	# D.6339, tmp162
	salq	$2, %rax	#, tmp162
	addq	%rdx, %rax	# D.6339, tmp162
	salq	$3, %rax	#, tmp163
	addq	%rcx, %rax	# D.6338, D.6338
	movl	(%rax), %eax	# _13->n_comp, D.6337
	cmpl	-24(%rbp), %eax	# c, D.6337
	jg	.L116	#,
	.loc 1 476 0 is_stmt 1
	addl	$1, -28(%rbp)	#, m
.L112:
	.loc 1 476 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# g, tmp164
	movl	(%rax), %eax	# g_7(D)->n_mgau, D.6337
	cmpl	-28(%rbp), %eax	# m, D.6337
	jg	.L117	#,
	.loc 1 491 0 is_stmt 1
	movl	$0, %eax	#, D.6344
	.loc 1 492 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	mgau_precomp, .-mgau_precomp
	.section	.rodata
.LC50:
	.string	".cont."
.LC51:
	.string	".semi."
	.align 8
.LC52:
	.string	"Feature should be either .semi. or .cont."
	.text
	.globl	mgau_init
	.type	mgau_init, @function
mgau_init:
.LFB8:
	.loc 1 499 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -24(%rbp)	# meanfile, meanfile
	movq	%rsi, -32(%rbp)	# varfile, varfile
	movsd	%xmm0, -40(%rbp)	# varfloor, varfloor
	movq	%rdx, -48(%rbp)	# mixwfile, mixwfile
	movsd	%xmm1, -56(%rbp)	# mixwfloor, mixwfloor
	movl	%ecx, -60(%rbp)	# precomp, precomp
	movq	%r8, -72(%rbp)	# senmgau, senmgau
	.loc 1 509 0
	movl	$509, %ecx	#,
	movl	$.LC1, %edx	#,
	movl	$48, %esi	#,
	movl	$1, %edi	#,
	call	__ckd_calloc__	#
	movq	%rax, -8(%rbp)	# tmp64, g
	.loc 1 511 0
	movq	-72(%rbp), %rax	# senmgau, tmp65
	movl	$.LC50, %esi	#,
	movq	%rax, %rdi	# tmp65,
	call	strcmp	#
	testl	%eax, %eax	# D.6346
	jne	.L120	#,
	.loc 1 512 0
	movq	-8(%rbp), %rax	# g, tmp66
	movl	$10001, 40(%rax)	#, g_1->gau_type
	jmp	.L121	#
.L120:
	.loc 1 513 0
	movq	-72(%rbp), %rax	# senmgau, tmp67
	movl	$.LC51, %esi	#,
	movq	%rax, %rdi	# tmp67,
	call	strcmp	#
	testl	%eax, %eax	# D.6346
	jne	.L122	#,
	.loc 1 514 0
	movq	-8(%rbp), %rax	# g, tmp68
	movl	$10002, 40(%rax)	#, g_1->gau_type
	jmp	.L121	#
.L122:
	.loc 1 516 0
	movl	$.LC4, %edx	#,
	movl	$516, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movl	$.LC52, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L121:
	.loc 1 520 0
	movq	-24(%rbp), %rcx	# meanfile, tmp69
	movq	-8(%rbp), %rax	# g, tmp70
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp69,
	movq	%rax, %rdi	# tmp70,
	call	mgau_file_read	#
	.loc 1 521 0
	movq	-32(%rbp), %rcx	# varfile, tmp71
	movq	-8(%rbp), %rax	# g, tmp72
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp71,
	movq	%rax, %rdi	# tmp72,
	call	mgau_file_read	#
	.loc 1 522 0
	movq	-56(%rbp), %rax	# mixwfloor, tmp73
	movq	-48(%rbp), %rcx	# mixwfile, tmp74
	movq	-8(%rbp), %rdx	# g, tmp75
	movq	%rax, -80(%rbp)	# tmp73, %sfp
	movsd	-80(%rbp), %xmm0	# %sfp,
	movq	%rcx, %rsi	# tmp74,
	movq	%rdx, %rdi	# tmp75,
	call	mgau_mixw_read	#
	.loc 1 524 0
	movq	-8(%rbp), %rax	# g, tmp76
	movq	%rax, %rdi	# tmp76,
	call	mgau_uninit_compact	#
	.loc 1 526 0
	movsd	-40(%rbp), %xmm0	# varfloor, tmp77
	xorpd	%xmm1, %xmm1	# tmp78
	ucomisd	%xmm1, %xmm0	# tmp78, tmp77
	jbe	.L123	#,
	.loc 1 527 0
	movq	-40(%rbp), %rax	# varfloor, tmp79
	movq	-8(%rbp), %rdx	# g, tmp80
	movq	%rax, -80(%rbp)	# tmp79, %sfp
	movsd	-80(%rbp), %xmm0	# %sfp,
	movq	%rdx, %rdi	# tmp80,
	call	mgau_var_floor	#
.L123:
	.loc 1 529 0
	cmpl	$0, -60(%rbp)	#, precomp
	je	.L125	#,
	.loc 1 530 0
	movq	-8(%rbp), %rax	# g, tmp81
	movq	%rax, %rdi	# tmp81,
	call	mgau_precomp	#
.L125:
	.loc 1 532 0
	movl	$-939524096, %edi	#,
	call	logs3_to_log	#
	movsd	%xmm0, -80(%rbp)	#, %sfp
	movq	-80(%rbp), %rax	# %sfp, D.6347
	movq	-8(%rbp), %rdx	# g, tmp82
	movq	%rax, 24(%rdx)	# D.6347, g_1->distfloor
	.loc 1 535 0
	movq	-8(%rbp), %rax	# g, D.6348
	.loc 1 536 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	mgau_init, .-mgau_init
	.globl	mgau_comp_eval
	.type	mgau_comp_eval, @function
mgau_comp_eval:
.LFB9:
	.loc 1 540 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$112, %rsp	#,
	movq	%rdi, -72(%rbp)	# g, g
	movl	%esi, -76(%rbp)	# s, s
	movq	%rdx, -88(%rbp)	# x, x
	movq	%rcx, -96(%rbp)	# score, score
	.loc 1 548 0
	movq	-72(%rbp), %rax	# g, tmp107
	movl	8(%rax), %eax	# g_7(D)->veclen, tmp108
	movl	%eax, -52(%rbp)	# tmp108, veclen
	.loc 1 549 0
	movq	-72(%rbp), %rax	# g, tmp109
	movq	16(%rax), %rcx	# g_7(D)->mgau, D.6352
	movl	-76(%rbp), %eax	# s, tmp110
	movslq	%eax, %rdx	# tmp110, D.6353
	movq	%rdx, %rax	# D.6353, tmp111
	salq	$2, %rax	#, tmp111
	addq	%rdx, %rax	# D.6353, tmp111
	salq	$3, %rax	#, tmp112
	addq	%rcx, %rax	# D.6352, tmp113
	movq	%rax, -40(%rbp)	# tmp113, mgau
	.loc 1 550 0
	call	log_to_logs3_factor	#
	movsd	%xmm0, -104(%rbp)	#, %sfp
	movq	-104(%rbp), %rax	# %sfp, tmp114
	movq	%rax, -32(%rbp)	# tmp114, f
	.loc 1 552 0
	movl	$-2147483648, -64(%rbp)	#, bs
	.loc 1 553 0
	movl	$0, -56(%rbp)	#, c
	jmp	.L129	#
.L135:
	.loc 1 554 0
	movq	-40(%rbp), %rax	# mgau, tmp115
	movq	8(%rax), %rax	# mgau_13->mean, D.6355
	movl	-56(%rbp), %edx	# c, tmp116
	movslq	%edx, %rdx	# tmp116, D.6353
	salq	$3, %rdx	#, D.6353
	addq	%rdx, %rax	# D.6353, D.6355
	movq	(%rax), %rax	# *_21, tmp117
	movq	%rax, -24(%rbp)	# tmp117, m
	.loc 1 555 0
	movq	-40(%rbp), %rax	# mgau, tmp118
	movq	16(%rax), %rax	# mgau_13->var, D.6355
	movl	-56(%rbp), %edx	# c, tmp119
	movslq	%edx, %rdx	# tmp119, D.6353
	salq	$3, %rdx	#, D.6353
	addq	%rdx, %rax	# D.6353, D.6355
	movq	(%rax), %rax	# *_26, tmp120
	movq	%rax, -16(%rbp)	# tmp120, v
	.loc 1 556 0
	movq	-40(%rbp), %rax	# mgau, tmp121
	movq	24(%rax), %rax	# mgau_13->lrd, D.6356
	movl	-56(%rbp), %edx	# c, tmp122
	movslq	%edx, %rdx	# tmp122, D.6353
	salq	$2, %rdx	#, D.6353
	addq	%rdx, %rax	# D.6353, D.6356
	movss	(%rax), %xmm0	# *_31, D.6357
	unpcklps	%xmm0, %xmm0	# D.6357, D.6357
	cvtps2pd	%xmm0, %xmm2	# D.6357, tmp147
	movsd	%xmm2, -48(%rbp)	# tmp147, dval
	.loc 1 558 0
	movl	$0, -60(%rbp)	#, i
	jmp	.L130	#
.L131:
	.loc 1 559 0 discriminator 2
	movl	-60(%rbp), %eax	# i, tmp123
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6353
	movq	-88(%rbp), %rax	# x, tmp124
	addq	%rdx, %rax	# D.6353, D.6356
	movss	(%rax), %xmm0	# *_38, D.6357
	movl	-60(%rbp), %eax	# i, tmp125
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6353
	movq	-24(%rbp), %rax	# m, tmp126
	addq	%rdx, %rax	# D.6353, D.6356
	movss	(%rax), %xmm1	# *_42, D.6357
	subss	%xmm1, %xmm0	# D.6357, D.6357
	unpcklps	%xmm0, %xmm0	# D.6357, D.6357
	cvtps2pd	%xmm0, %xmm3	# D.6357, tmp148
	movsd	%xmm3, -8(%rbp)	# tmp148, diff
	.loc 1 560 0 discriminator 2
	movsd	-8(%rbp), %xmm0	# diff, tmp127
	movapd	%xmm0, %xmm1	# tmp127, D.6358
	mulsd	-8(%rbp), %xmm1	# diff, D.6358
	movl	-60(%rbp), %eax	# i, tmp128
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6353
	movq	-16(%rbp), %rax	# v, tmp129
	addq	%rdx, %rax	# D.6353, D.6356
	movss	(%rax), %xmm0	# *_49, D.6357
	unpcklps	%xmm0, %xmm0	# D.6357, D.6357
	cvtps2pd	%xmm0, %xmm0	# D.6357, D.6358
	mulsd	%xmm1, %xmm0	# D.6358, D.6358
	movsd	-48(%rbp), %xmm1	# dval, tmp131
	subsd	%xmm0, %xmm1	# D.6358, tmp130
	movapd	%xmm1, %xmm0	# tmp130, tmp130
	movsd	%xmm0, -48(%rbp)	# tmp130, dval
	.loc 1 558 0 discriminator 2
	addl	$1, -60(%rbp)	#, i
.L130:
	.loc 1 558 0 is_stmt 0 discriminator 1
	movl	-60(%rbp), %eax	# i, tmp132
	cmpl	-52(%rbp), %eax	# veclen, tmp132
	jl	.L131	#,
	.loc 1 563 0 is_stmt 1
	movq	-72(%rbp), %rax	# g, tmp133
	movsd	24(%rax), %xmm0	# g_7(D)->distfloor, D.6358
	ucomisd	-48(%rbp), %xmm0	# dval, D.6358
	jbe	.L132	#,
	.loc 1 564 0
	movq	-72(%rbp), %rax	# g, tmp134
	movq	24(%rax), %rax	# g_7(D)->distfloor, tmp135
	movq	%rax, -48(%rbp)	# tmp135, dval
.L132:
	.loc 1 566 0
	movl	-56(%rbp), %eax	# c, tmp136
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6353
	movq	-96(%rbp), %rax	# score, tmp137
	addq	%rax, %rdx	# tmp137, D.6359
	movsd	-32(%rbp), %xmm0	# f, tmp138
	mulsd	-48(%rbp), %xmm0	# dval, D.6358
	cvttsd2si	%xmm0, %eax	# D.6358, D.6354
	movl	%eax, (%rdx)	# D.6354, *_60
	.loc 1 567 0
	movl	-56(%rbp), %eax	# c, tmp139
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6353
	movq	-96(%rbp), %rax	# score, tmp140
	addq	%rdx, %rax	# D.6353, D.6359
	movl	(%rax), %eax	# *_65, D.6354
	cmpl	-64(%rbp), %eax	# bs, D.6354
	jle	.L134	#,
	.loc 1 568 0
	movl	-56(%rbp), %eax	# c, tmp141
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6353
	movq	-96(%rbp), %rax	# score, tmp142
	addq	%rdx, %rax	# D.6353, D.6359
	movl	(%rax), %eax	# *_69, tmp143
	movl	%eax, -64(%rbp)	# tmp143, bs
.L134:
	.loc 1 553 0
	addl	$1, -56(%rbp)	#, c
.L129:
	.loc 1 553 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# mgau, tmp144
	movl	(%rax), %eax	# mgau_13->n_comp, D.6354
	cmpl	-56(%rbp), %eax	# c, D.6354
	jg	.L135	#,
	.loc 1 571 0 is_stmt 1
	movl	-64(%rbp), %eax	# bs, D.6360
	.loc 1 572 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	mgau_comp_eval, .-mgau_comp_eval
	.globl	mgau_eval
	.type	mgau_eval, @function
mgau_eval:
.LFB10:
	.loc 1 576 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$160, %rsp	#,
	movq	%rdi, -120(%rbp)	# g, g
	movl	%esi, -124(%rbp)	# m, m
	movq	%rdx, -136(%rbp)	# active, active
	movq	%rcx, -144(%rbp)	# x, x
	.loc 1 586 0
	movq	-120(%rbp), %rax	# g, tmp232
	movl	8(%rax), %eax	# g_18(D)->veclen, tmp233
	movl	%eax, -84(%rbp)	# tmp233, veclen
	.loc 1 587 0
	movq	-120(%rbp), %rax	# g, tmp234
	movq	16(%rax), %rcx	# g_18(D)->mgau, D.6361
	movl	-124(%rbp), %eax	# m, tmp235
	movslq	%eax, %rdx	# tmp235, D.6362
	movq	%rdx, %rax	# D.6362, tmp236
	salq	$2, %rax	#, tmp236
	addq	%rdx, %rax	# D.6362, tmp236
	salq	$3, %rax	#, tmp237
	addq	%rcx, %rax	# D.6361, tmp238
	movq	%rax, -64(%rbp)	# tmp238, mgau
	.loc 1 588 0
	call	log_to_logs3_factor	#
	movsd	%xmm0, -152(%rbp)	#, %sfp
	movq	-152(%rbp), %rax	# %sfp, tmp239
	movq	%rax, -56(%rbp)	# tmp239, f
	.loc 1 589 0
	movl	$-939524096, -100(%rbp)	#, score
	.loc 1 592 0
	cmpq	$0, -136(%rbp)	#, active
	jne	.L139	#,
	.loc 1 596 0
	movl	$0, -88(%rbp)	#, c
	jmp	.L140	#
.L147:
	.loc 1 597 0
	movq	-64(%rbp), %rax	# mgau, tmp240
	movq	8(%rax), %rax	# mgau_24->mean, D.6364
	movl	-88(%rbp), %edx	# c, tmp241
	movslq	%edx, %rdx	# tmp241, D.6362
	salq	$3, %rdx	#, D.6362
	addq	%rdx, %rax	# D.6362, D.6364
	movq	(%rax), %rax	# *_34, tmp242
	movq	%rax, -48(%rbp)	# tmp242, m1
	.loc 1 598 0
	movq	-64(%rbp), %rax	# mgau, tmp243
	movq	8(%rax), %rax	# mgau_24->mean, D.6364
	movl	-88(%rbp), %edx	# c, tmp244
	movslq	%edx, %rdx	# tmp244, D.6365
	addq	$1, %rdx	#, D.6365
	salq	$3, %rdx	#, D.6365
	addq	%rdx, %rax	# D.6365, D.6364
	movq	(%rax), %rax	# *_40, tmp245
	movq	%rax, -40(%rbp)	# tmp245, m2
	.loc 1 599 0
	movq	-64(%rbp), %rax	# mgau, tmp246
	movq	16(%rax), %rax	# mgau_24->var, D.6364
	movl	-88(%rbp), %edx	# c, tmp247
	movslq	%edx, %rdx	# tmp247, D.6362
	salq	$3, %rdx	#, D.6362
	addq	%rdx, %rax	# D.6362, D.6364
	movq	(%rax), %rax	# *_45, tmp248
	movq	%rax, -32(%rbp)	# tmp248, v1
	.loc 1 600 0
	movq	-64(%rbp), %rax	# mgau, tmp249
	movq	16(%rax), %rax	# mgau_24->var, D.6364
	movl	-88(%rbp), %edx	# c, tmp250
	movslq	%edx, %rdx	# tmp250, D.6365
	addq	$1, %rdx	#, D.6365
	salq	$3, %rdx	#, D.6365
	addq	%rdx, %rax	# D.6365, D.6364
	movq	(%rax), %rax	# *_51, tmp251
	movq	%rax, -24(%rbp)	# tmp251, v2
	.loc 1 601 0
	movq	-64(%rbp), %rax	# mgau, tmp252
	movq	24(%rax), %rax	# mgau_24->lrd, D.6366
	movl	-88(%rbp), %edx	# c, tmp253
	movslq	%edx, %rdx	# tmp253, D.6362
	salq	$2, %rdx	#, D.6362
	addq	%rdx, %rax	# D.6362, D.6366
	movss	(%rax), %xmm0	# *_56, D.6367
	unpcklps	%xmm0, %xmm0	# D.6367, D.6367
	cvtps2pd	%xmm0, %xmm2	# D.6367, tmp352
	movsd	%xmm2, -80(%rbp)	# tmp352, dval1
	.loc 1 602 0
	movq	-64(%rbp), %rax	# mgau, tmp254
	movq	24(%rax), %rax	# mgau_24->lrd, D.6366
	movl	-88(%rbp), %edx	# c, tmp255
	movslq	%edx, %rdx	# tmp255, D.6365
	addq	$1, %rdx	#, D.6365
	salq	$2, %rdx	#, D.6365
	addq	%rdx, %rax	# D.6365, D.6366
	movss	(%rax), %xmm0	# *_63, D.6367
	unpcklps	%xmm0, %xmm0	# D.6367, D.6367
	cvtps2pd	%xmm0, %xmm3	# D.6367, tmp353
	movsd	%xmm3, -72(%rbp)	# tmp353, dval2
	.loc 1 604 0
	movl	$0, -96(%rbp)	#, i
	jmp	.L141	#
.L142:
	.loc 1 605 0 discriminator 2
	movl	-96(%rbp), %eax	# i, tmp256
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6362
	movq	-144(%rbp), %rax	# x, tmp257
	addq	%rdx, %rax	# D.6362, D.6366
	movss	(%rax), %xmm0	# *_70, D.6367
	movl	-96(%rbp), %eax	# i, tmp258
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6362
	movq	-48(%rbp), %rax	# m1, tmp259
	addq	%rdx, %rax	# D.6362, D.6366
	movss	(%rax), %xmm1	# *_74, D.6367
	subss	%xmm1, %xmm0	# D.6367, D.6367
	unpcklps	%xmm0, %xmm0	# D.6367, D.6367
	cvtps2pd	%xmm0, %xmm4	# D.6367, tmp354
	movsd	%xmm4, -16(%rbp)	# tmp354, diff1
	.loc 1 606 0 discriminator 2
	movsd	-16(%rbp), %xmm0	# diff1, tmp260
	movapd	%xmm0, %xmm1	# tmp260, D.6368
	mulsd	-16(%rbp), %xmm1	# diff1, D.6368
	movl	-96(%rbp), %eax	# i, tmp261
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6362
	movq	-32(%rbp), %rax	# v1, tmp262
	addq	%rdx, %rax	# D.6362, D.6366
	movss	(%rax), %xmm0	# *_81, D.6367
	unpcklps	%xmm0, %xmm0	# D.6367, D.6367
	cvtps2pd	%xmm0, %xmm0	# D.6367, D.6368
	mulsd	%xmm1, %xmm0	# D.6368, D.6368
	movsd	-80(%rbp), %xmm1	# dval1, tmp264
	subsd	%xmm0, %xmm1	# D.6368, tmp263
	movapd	%xmm1, %xmm0	# tmp263, tmp263
	movsd	%xmm0, -80(%rbp)	# tmp263, dval1
	.loc 1 607 0 discriminator 2
	movl	-96(%rbp), %eax	# i, tmp265
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6362
	movq	-144(%rbp), %rax	# x, tmp266
	addq	%rdx, %rax	# D.6362, D.6366
	movss	(%rax), %xmm0	# *_88, D.6367
	movl	-96(%rbp), %eax	# i, tmp267
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6362
	movq	-40(%rbp), %rax	# m2, tmp268
	addq	%rdx, %rax	# D.6362, D.6366
	movss	(%rax), %xmm1	# *_92, D.6367
	subss	%xmm1, %xmm0	# D.6367, D.6367
	unpcklps	%xmm0, %xmm0	# D.6367, D.6367
	cvtps2pd	%xmm0, %xmm5	# D.6367, tmp357
	movsd	%xmm5, -8(%rbp)	# tmp357, diff2
	.loc 1 608 0 discriminator 2
	movsd	-8(%rbp), %xmm0	# diff2, tmp269
	movapd	%xmm0, %xmm1	# tmp269, D.6368
	mulsd	-8(%rbp), %xmm1	# diff2, D.6368
	movl	-96(%rbp), %eax	# i, tmp270
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6362
	movq	-24(%rbp), %rax	# v2, tmp271
	addq	%rdx, %rax	# D.6362, D.6366
	movss	(%rax), %xmm0	# *_99, D.6367
	unpcklps	%xmm0, %xmm0	# D.6367, D.6367
	cvtps2pd	%xmm0, %xmm0	# D.6367, D.6368
	mulsd	%xmm1, %xmm0	# D.6368, D.6368
	movsd	-72(%rbp), %xmm1	# dval2, tmp273
	subsd	%xmm0, %xmm1	# D.6368, tmp272
	movapd	%xmm1, %xmm0	# tmp272, tmp272
	movsd	%xmm0, -72(%rbp)	# tmp272, dval2
	.loc 1 604 0 discriminator 2
	addl	$1, -96(%rbp)	#, i
.L141:
	.loc 1 604 0 is_stmt 0 discriminator 1
	movl	-96(%rbp), %eax	# i, tmp274
	cmpl	-84(%rbp), %eax	# veclen, tmp274
	jl	.L142	#,
	.loc 1 613 0 is_stmt 1
	movq	-120(%rbp), %rax	# g, tmp275
	movsd	24(%rax), %xmm0	# g_18(D)->distfloor, D.6368
	ucomisd	-80(%rbp), %xmm0	# dval1, D.6368
	jbe	.L143	#,
	.loc 1 614 0
	movq	-120(%rbp), %rax	# g, tmp276
	movq	24(%rax), %rax	# g_18(D)->distfloor, tmp277
	movq	%rax, -80(%rbp)	# tmp277, dval1
.L143:
	.loc 1 615 0
	movq	-120(%rbp), %rax	# g, tmp278
	movsd	24(%rax), %xmm0	# g_18(D)->distfloor, D.6368
	ucomisd	-72(%rbp), %xmm0	# dval2, D.6368
	jbe	.L145	#,
	.loc 1 616 0
	movq	-120(%rbp), %rax	# g, tmp279
	movq	24(%rax), %rax	# g_18(D)->distfloor, tmp280
	movq	%rax, -72(%rbp)	# tmp280, dval2
.L145:
	.loc 1 618 0
	movsd	-56(%rbp), %xmm0	# f, tmp281
	mulsd	-80(%rbp), %xmm0	# dval1, D.6368
	cvttsd2si	%xmm0, %edx	# D.6368, D.6363
	movq	-64(%rbp), %rax	# mgau, tmp282
	movq	32(%rax), %rax	# mgau_24->mixw, D.6369
	movl	-88(%rbp), %ecx	# c, tmp283
	movslq	%ecx, %rcx	# tmp283, D.6362
	salq	$2, %rcx	#, D.6362
	addq	%rcx, %rax	# D.6362, D.6369
	movl	(%rax), %eax	# *_114, D.6363
	addl	%eax, %edx	# D.6363, D.6363
	movl	-100(%rbp), %eax	# score, tmp284
	movl	%edx, %esi	# D.6363,
	movl	%eax, %edi	# tmp284,
	call	logs3_add	#
	movl	%eax, -100(%rbp)	# tmp285, score
	.loc 1 619 0
	movsd	-56(%rbp), %xmm0	# f, tmp286
	mulsd	-72(%rbp), %xmm0	# dval2, D.6368
	cvttsd2si	%xmm0, %edx	# D.6368, D.6363
	movq	-64(%rbp), %rax	# mgau, tmp287
	movq	32(%rax), %rax	# mgau_24->mixw, D.6369
	movl	-88(%rbp), %ecx	# c, tmp288
	movslq	%ecx, %rcx	# tmp288, D.6365
	addq	$1, %rcx	#, D.6365
	salq	$2, %rcx	#, D.6365
	addq	%rcx, %rax	# D.6365, D.6369
	movl	(%rax), %eax	# *_124, D.6363
	addl	%eax, %edx	# D.6363, D.6363
	movl	-100(%rbp), %eax	# score, tmp289
	movl	%edx, %esi	# D.6363,
	movl	%eax, %edi	# tmp289,
	call	logs3_add	#
	movl	%eax, -100(%rbp)	# tmp290, score
	.loc 1 596 0
	addl	$2, -88(%rbp)	#, c
.L140:
	.loc 1 596 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# mgau, tmp291
	movl	(%rax), %eax	# mgau_24->n_comp, D.6363
	subl	$1, %eax	#, D.6363
	cmpl	-88(%rbp), %eax	# c, D.6363
	jg	.L147	#,
	.loc 1 623 0 is_stmt 1
	movq	-64(%rbp), %rax	# mgau, tmp292
	movl	(%rax), %eax	# mgau_24->n_comp, D.6363
	cmpl	-88(%rbp), %eax	# c, D.6363
	jle	.L153	#,
	.loc 1 624 0
	movq	-64(%rbp), %rax	# mgau, tmp293
	movq	8(%rax), %rax	# mgau_24->mean, D.6364
	movl	-88(%rbp), %edx	# c, tmp294
	movslq	%edx, %rdx	# tmp294, D.6362
	salq	$3, %rdx	#, D.6362
	addq	%rdx, %rax	# D.6362, D.6364
	movq	(%rax), %rax	# *_133, tmp295
	movq	%rax, -48(%rbp)	# tmp295, m1
	.loc 1 625 0
	movq	-64(%rbp), %rax	# mgau, tmp296
	movq	16(%rax), %rax	# mgau_24->var, D.6364
	movl	-88(%rbp), %edx	# c, tmp297
	movslq	%edx, %rdx	# tmp297, D.6362
	salq	$3, %rdx	#, D.6362
	addq	%rdx, %rax	# D.6362, D.6364
	movq	(%rax), %rax	# *_138, tmp298
	movq	%rax, -32(%rbp)	# tmp298, v1
	.loc 1 626 0
	movq	-64(%rbp), %rax	# mgau, tmp299
	movq	24(%rax), %rax	# mgau_24->lrd, D.6366
	movl	-88(%rbp), %edx	# c, tmp300
	movslq	%edx, %rdx	# tmp300, D.6362
	salq	$2, %rdx	#, D.6362
	addq	%rdx, %rax	# D.6362, D.6366
	movss	(%rax), %xmm0	# *_143, D.6367
	unpcklps	%xmm0, %xmm0	# D.6367, D.6367
	cvtps2pd	%xmm0, %xmm6	# D.6367, tmp360
	movsd	%xmm6, -80(%rbp)	# tmp360, dval1
	.loc 1 628 0
	movl	$0, -96(%rbp)	#, i
	jmp	.L149	#
.L150:
	.loc 1 629 0 discriminator 2
	movl	-96(%rbp), %eax	# i, tmp301
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6362
	movq	-144(%rbp), %rax	# x, tmp302
	addq	%rdx, %rax	# D.6362, D.6366
	movss	(%rax), %xmm0	# *_149, D.6367
	movl	-96(%rbp), %eax	# i, tmp303
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6362
	movq	-48(%rbp), %rax	# m1, tmp304
	addq	%rdx, %rax	# D.6362, D.6366
	movss	(%rax), %xmm1	# *_153, D.6367
	subss	%xmm1, %xmm0	# D.6367, D.6367
	unpcklps	%xmm0, %xmm0	# D.6367, D.6367
	cvtps2pd	%xmm0, %xmm7	# D.6367, tmp361
	movsd	%xmm7, -16(%rbp)	# tmp361, diff1
	.loc 1 630 0 discriminator 2
	movsd	-16(%rbp), %xmm0	# diff1, tmp305
	movapd	%xmm0, %xmm1	# tmp305, D.6368
	mulsd	-16(%rbp), %xmm1	# diff1, D.6368
	movl	-96(%rbp), %eax	# i, tmp306
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6362
	movq	-32(%rbp), %rax	# v1, tmp307
	addq	%rdx, %rax	# D.6362, D.6366
	movss	(%rax), %xmm0	# *_160, D.6367
	unpcklps	%xmm0, %xmm0	# D.6367, D.6367
	cvtps2pd	%xmm0, %xmm0	# D.6367, D.6368
	mulsd	%xmm1, %xmm0	# D.6368, D.6368
	movsd	-80(%rbp), %xmm1	# dval1, tmp309
	subsd	%xmm0, %xmm1	# D.6368, tmp308
	movapd	%xmm1, %xmm0	# tmp308, tmp308
	movsd	%xmm0, -80(%rbp)	# tmp308, dval1
	.loc 1 628 0 discriminator 2
	addl	$1, -96(%rbp)	#, i
.L149:
	.loc 1 628 0 is_stmt 0 discriminator 1
	movl	-96(%rbp), %eax	# i, tmp310
	cmpl	-84(%rbp), %eax	# veclen, tmp310
	jl	.L150	#,
	.loc 1 633 0 is_stmt 1
	movq	-120(%rbp), %rax	# g, tmp311
	movsd	24(%rax), %xmm0	# g_18(D)->distfloor, D.6368
	ucomisd	-80(%rbp), %xmm0	# dval1, D.6368
	jbe	.L151	#,
	.loc 1 634 0
	movq	-120(%rbp), %rax	# g, tmp312
	movq	24(%rax), %rax	# g_18(D)->distfloor, tmp313
	movq	%rax, -80(%rbp)	# tmp313, dval1
.L151:
	.loc 1 636 0
	movsd	-56(%rbp), %xmm0	# f, tmp314
	mulsd	-80(%rbp), %xmm0	# dval1, D.6368
	cvttsd2si	%xmm0, %edx	# D.6368, D.6363
	movq	-64(%rbp), %rax	# mgau, tmp315
	movq	32(%rax), %rax	# mgau_24->mixw, D.6369
	movl	-88(%rbp), %ecx	# c, tmp316
	movslq	%ecx, %rcx	# tmp316, D.6362
	salq	$2, %rcx	#, D.6362
	addq	%rcx, %rax	# D.6362, D.6369
	movl	(%rax), %eax	# *_173, D.6363
	addl	%eax, %edx	# D.6363, D.6363
	movl	-100(%rbp), %eax	# score, tmp317
	movl	%edx, %esi	# D.6363,
	movl	%eax, %edi	# tmp317,
	call	logs3_add	#
	movl	%eax, -100(%rbp)	# tmp318, score
	jmp	.L153	#
.L139:
	.loc 1 642 0
	movl	$0, -92(%rbp)	#, j
	jmp	.L154	#
.L159:
	.loc 1 644 0
	movq	considered(%rip), %rax	# considered, considered.108
	addq	$1, %rax	#, considered.109
	movq	%rax, considered(%rip)	# considered.109, considered
	.loc 1 646 0
	movl	-92(%rbp), %eax	# j, tmp319
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6362
	movq	-136(%rbp), %rax	# active, tmp320
	addq	%rdx, %rax	# D.6362, D.6369
	movl	(%rax), %eax	# *_186, tmp321
	movl	%eax, -88(%rbp)	# tmp321, c
	.loc 1 648 0
	movq	-64(%rbp), %rax	# mgau, tmp322
	movq	8(%rax), %rax	# mgau_24->mean, D.6364
	movl	-88(%rbp), %edx	# c, tmp323
	movslq	%edx, %rdx	# tmp323, D.6362
	salq	$3, %rdx	#, D.6362
	addq	%rdx, %rax	# D.6362, D.6364
	movq	(%rax), %rax	# *_191, tmp324
	movq	%rax, -48(%rbp)	# tmp324, m1
	.loc 1 649 0
	movq	-64(%rbp), %rax	# mgau, tmp325
	movq	16(%rax), %rax	# mgau_24->var, D.6364
	movl	-88(%rbp), %edx	# c, tmp326
	movslq	%edx, %rdx	# tmp326, D.6362
	salq	$3, %rdx	#, D.6362
	addq	%rdx, %rax	# D.6362, D.6364
	movq	(%rax), %rax	# *_196, tmp327
	movq	%rax, -32(%rbp)	# tmp327, v1
	.loc 1 650 0
	movq	-64(%rbp), %rax	# mgau, tmp328
	movq	24(%rax), %rax	# mgau_24->lrd, D.6366
	movl	-88(%rbp), %edx	# c, tmp329
	movslq	%edx, %rdx	# tmp329, D.6362
	salq	$2, %rdx	#, D.6362
	addq	%rdx, %rax	# D.6362, D.6366
	movss	(%rax), %xmm0	# *_201, D.6367
	unpcklps	%xmm0, %xmm0	# D.6367, D.6367
	cvtps2pd	%xmm0, %xmm2	# D.6367, tmp364
	movsd	%xmm2, -80(%rbp)	# tmp364, dval1
	.loc 1 652 0
	movl	$0, -96(%rbp)	#, i
	jmp	.L155	#
.L156:
	.loc 1 653 0 discriminator 2
	movl	-96(%rbp), %eax	# i, tmp330
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6362
	movq	-144(%rbp), %rax	# x, tmp331
	addq	%rdx, %rax	# D.6362, D.6366
	movss	(%rax), %xmm0	# *_207, D.6367
	movl	-96(%rbp), %eax	# i, tmp332
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6362
	movq	-48(%rbp), %rax	# m1, tmp333
	addq	%rdx, %rax	# D.6362, D.6366
	movss	(%rax), %xmm1	# *_211, D.6367
	subss	%xmm1, %xmm0	# D.6367, D.6367
	unpcklps	%xmm0, %xmm0	# D.6367, D.6367
	cvtps2pd	%xmm0, %xmm3	# D.6367, tmp365
	movsd	%xmm3, -16(%rbp)	# tmp365, diff1
	.loc 1 654 0 discriminator 2
	movsd	-16(%rbp), %xmm0	# diff1, tmp334
	movapd	%xmm0, %xmm1	# tmp334, D.6368
	mulsd	-16(%rbp), %xmm1	# diff1, D.6368
	movl	-96(%rbp), %eax	# i, tmp335
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6362
	movq	-32(%rbp), %rax	# v1, tmp336
	addq	%rdx, %rax	# D.6362, D.6366
	movss	(%rax), %xmm0	# *_218, D.6367
	unpcklps	%xmm0, %xmm0	# D.6367, D.6367
	cvtps2pd	%xmm0, %xmm0	# D.6367, D.6368
	mulsd	%xmm1, %xmm0	# D.6368, D.6368
	movsd	-80(%rbp), %xmm1	# dval1, tmp338
	subsd	%xmm0, %xmm1	# D.6368, tmp337
	movapd	%xmm1, %xmm0	# tmp337, tmp337
	movsd	%xmm0, -80(%rbp)	# tmp337, dval1
	.loc 1 652 0 discriminator 2
	addl	$1, -96(%rbp)	#, i
.L155:
	.loc 1 652 0 is_stmt 0 discriminator 1
	movl	-96(%rbp), %eax	# i, tmp339
	cmpl	-84(%rbp), %eax	# veclen, tmp339
	jl	.L156	#,
	.loc 1 657 0 is_stmt 1
	movq	-120(%rbp), %rax	# g, tmp340
	movsd	24(%rax), %xmm0	# g_18(D)->distfloor, D.6368
	ucomisd	-80(%rbp), %xmm0	# dval1, D.6368
	jbe	.L157	#,
	.loc 1 658 0
	movq	-120(%rbp), %rax	# g, tmp341
	movq	24(%rax), %rax	# g_18(D)->distfloor, tmp342
	movq	%rax, -80(%rbp)	# tmp342, dval1
.L157:
	.loc 1 660 0
	movsd	-56(%rbp), %xmm0	# f, tmp343
	mulsd	-80(%rbp), %xmm0	# dval1, D.6368
	cvttsd2si	%xmm0, %edx	# D.6368, D.6363
	movq	-64(%rbp), %rax	# mgau, tmp344
	movq	32(%rax), %rax	# mgau_24->mixw, D.6369
	movl	-88(%rbp), %ecx	# c, tmp345
	movslq	%ecx, %rcx	# tmp345, D.6362
	salq	$2, %rcx	#, D.6362
	addq	%rcx, %rax	# D.6362, D.6369
	movl	(%rax), %eax	# *_231, D.6363
	addl	%eax, %edx	# D.6363, D.6363
	movl	-100(%rbp), %eax	# score, tmp346
	movl	%edx, %esi	# D.6363,
	movl	%eax, %edi	# tmp346,
	call	logs3_add	#
	movl	%eax, -100(%rbp)	# tmp347, score
	.loc 1 642 0
	addl	$1, -92(%rbp)	#, j
.L154:
	.loc 1 642 0 is_stmt 0 discriminator 1
	movl	-92(%rbp), %eax	# j, tmp348
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6362
	movq	-136(%rbp), %rax	# active, tmp349
	addq	%rdx, %rax	# D.6362, D.6369
	movl	(%rax), %eax	# *_180, D.6363
	testl	%eax, %eax	# D.6363
	jns	.L159	#,
.L153:
	.loc 1 668 0 is_stmt 1
	movl	-100(%rbp), %eax	# score, D.6370
	.loc 1 669 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	mgau_eval, .-mgau_eval
	.globl	mgau_free
	.type	mgau_free, @function
mgau_free:
.LFB11:
	.loc 1 675 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# g, g
	.loc 1 677 0
	cmpq	$0, -8(%rbp)	#, g
	je	.L165	#,
	.loc 1 685 0
	movq	-8(%rbp), %rax	# g, tmp77
	movq	16(%rax), %rax	# g_1(D)->mgau, D.6371
	movq	8(%rax), %rax	# _2->mean, D.6372
	testq	%rax, %rax	# D.6372
	je	.L167	#,
	.loc 1 686 0
	movq	-8(%rbp), %rax	# g, tmp78
	movq	16(%rax), %rax	# g_1(D)->mgau, D.6371
	movq	8(%rax), %rax	# _4->mean, D.6372
	movq	%rax, %rdi	# D.6372,
	call	ckd_free	#
.L167:
	.loc 1 695 0
	movq	-8(%rbp), %rax	# g, tmp79
	movq	16(%rax), %rax	# g_1(D)->mgau, D.6371
	movq	16(%rax), %rax	# _6->var, D.6372
	testq	%rax, %rax	# D.6372
	je	.L168	#,
	.loc 1 696 0
	movq	-8(%rbp), %rax	# g, tmp80
	movq	16(%rax), %rax	# g_1(D)->mgau, D.6371
	movq	16(%rax), %rax	# _8->var, D.6372
	movq	%rax, %rdi	# D.6372,
	call	ckd_free	#
.L168:
	.loc 1 697 0
	movq	-8(%rbp), %rax	# g, tmp81
	movq	16(%rax), %rax	# g_1(D)->mgau, D.6371
	movq	24(%rax), %rax	# _10->lrd, D.6373
	testq	%rax, %rax	# D.6373
	je	.L169	#,
	.loc 1 698 0
	movq	-8(%rbp), %rax	# g, tmp82
	movq	16(%rax), %rax	# g_1(D)->mgau, D.6371
	movq	24(%rax), %rax	# _12->lrd, D.6373
	movq	%rax, %rdi	# D.6373,
	call	ckd_free	#
.L169:
	.loc 1 705 0
	movq	-8(%rbp), %rax	# g, tmp83
	movq	16(%rax), %rax	# g_1(D)->mgau, D.6371
	movq	32(%rax), %rax	# _14->mixw, D.6374
	testq	%rax, %rax	# D.6374
	je	.L170	#,
	.loc 1 706 0
	movq	-8(%rbp), %rax	# g, tmp84
	movq	16(%rax), %rax	# g_1(D)->mgau, D.6371
	movq	32(%rax), %rax	# _16->mixw, D.6374
	movq	%rax, %rdi	# D.6374,
	call	ckd_free	#
.L170:
	.loc 1 708 0
	movq	-8(%rbp), %rax	# g, tmp85
	movq	16(%rax), %rax	# g_1(D)->mgau, D.6371
	testq	%rax, %rax	# D.6371
	je	.L171	#,
	.loc 1 709 0
	movq	-8(%rbp), %rax	# g, tmp86
	movq	16(%rax), %rax	# g_1(D)->mgau, D.6371
	movq	%rax, %rdi	# D.6371,
	call	ckd_free	#
.L171:
	.loc 1 710 0
	movq	-8(%rbp), %rax	# g, tmp87
	movq	%rax, %rdi	# tmp87,
	call	ckd_free	#
.L165:
	.loc 1 712 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	mgau_free, .-mgau_free
	.section	.rodata
	.align 8
.LC47:
	.long	0
	.long	1072693248
	.align 8
.LC48:
	.long	3362045620
	.long	1073571825
	.align 8
.LC49:
	.long	0
	.long	-1075838976
	.text
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "./libutil/prim_type.h"
	.file 7 "cont_mgau.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xb42
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF107
	.byte	0x1
	.long	.LASF108
	.long	.LASF109
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
	.long	.LASF110
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
	.byte	0x8
	.byte	0x5
	.long	.LASF47
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF48
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF49
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF50
	.uleb128 0x2
	.long	.LASF51
	.byte	0x6
	.byte	0x3f
	.long	0x62
	.uleb128 0x2
	.long	.LASF52
	.byte	0x6
	.byte	0x42
	.long	0x4d
	.uleb128 0x2
	.long	.LASF53
	.byte	0x6
	.byte	0x45
	.long	0x2a0
	.uleb128 0x2
	.long	.LASF54
	.byte	0x6
	.byte	0x46
	.long	0x2a7
	.uleb128 0x6
	.byte	0x8
	.long	0x2c4
	.uleb128 0x6
	.byte	0x8
	.long	0x2da
	.uleb128 0xd
	.byte	0x28
	.byte	0x7
	.byte	0x5f
	.long	0x32b
	.uleb128 0x8
	.long	.LASF55
	.byte	0x7
	.byte	0x60
	.long	0x2ae
	.byte	0
	.uleb128 0x8
	.long	.LASF56
	.byte	0x7
	.byte	0x62
	.long	0x2e0
	.byte	0x8
	.uleb128 0xe
	.string	"var"
	.byte	0x7
	.byte	0x63
	.long	0x2e0
	.byte	0x10
	.uleb128 0xe
	.string	"lrd"
	.byte	0x7
	.byte	0x66
	.long	0x2da
	.byte	0x18
	.uleb128 0x8
	.long	.LASF57
	.byte	0x7
	.byte	0x69
	.long	0x32b
	.byte	0x20
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2ae
	.uleb128 0x2
	.long	.LASF58
	.byte	0x7
	.byte	0x6c
	.long	0x2e6
	.uleb128 0xd
	.byte	0x30
	.byte	0x7
	.byte	0x74
	.long	0x3a5
	.uleb128 0x8
	.long	.LASF59
	.byte	0x7
	.byte	0x75
	.long	0x2ae
	.byte	0
	.uleb128 0x8
	.long	.LASF60
	.byte	0x7
	.byte	0x76
	.long	0x2ae
	.byte	0x4
	.uleb128 0x8
	.long	.LASF61
	.byte	0x7
	.byte	0x77
	.long	0x2ae
	.byte	0x8
	.uleb128 0x8
	.long	.LASF62
	.byte	0x7
	.byte	0x78
	.long	0x3a5
	.byte	0x10
	.uleb128 0x8
	.long	.LASF63
	.byte	0x7
	.byte	0x79
	.long	0x2cf
	.byte	0x18
	.uleb128 0x8
	.long	.LASF64
	.byte	0x7
	.byte	0x7c
	.long	0x2ae
	.byte	0x20
	.uleb128 0x8
	.long	.LASF65
	.byte	0x7
	.byte	0x7d
	.long	0x2ae
	.byte	0x24
	.uleb128 0x8
	.long	.LASF66
	.byte	0x7
	.byte	0x7e
	.long	0x2ae
	.byte	0x28
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x331
	.uleb128 0x2
	.long	.LASF67
	.byte	0x7
	.byte	0x81
	.long	0x33c
	.uleb128 0xf
	.long	.LASF78
	.byte	0x1
	.byte	0x50
	.long	0x2ae
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x502
	.uleb128 0x10
	.string	"g"
	.byte	0x1
	.byte	0x50
	.long	0x502
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x11
	.long	.LASF68
	.byte	0x1
	.byte	0x50
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x11
	.long	.LASF69
	.byte	0x1
	.byte	0x50
	.long	0x2ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x12
	.string	"tmp"
	.byte	0x1
	.byte	0x52
	.long	0x95
	.uleb128 0x3
	.byte	0x91
	.sleb128 -113
	.uleb128 0x12
	.string	"fp"
	.byte	0x1
	.byte	0x53
	.long	0x508
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0x54
	.long	0x2ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x12
	.string	"k"
	.byte	0x1
	.byte	0x54
	.long	0x2ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x12
	.string	"n"
	.byte	0x1
	.byte	0x54
	.long	0x2ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x13
	.long	.LASF59
	.byte	0x1
	.byte	0x55
	.long	0x2ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x13
	.long	.LASF70
	.byte	0x1
	.byte	0x56
	.long	0x2ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x13
	.long	.LASF71
	.byte	0x1
	.byte	0x57
	.long	0x2ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x13
	.long	.LASF61
	.byte	0x1
	.byte	0x58
	.long	0x32b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x12
	.string	"blk"
	.byte	0x1
	.byte	0x59
	.long	0x2ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x13
	.long	.LASF72
	.byte	0x1
	.byte	0x5a
	.long	0x2ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x13
	.long	.LASF73
	.byte	0x1
	.byte	0x5a
	.long	0x2ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x12
	.string	"buf"
	.byte	0x1
	.byte	0x5b
	.long	0x2da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x13
	.long	.LASF74
	.byte	0x1
	.byte	0x5b
	.long	0x2e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x13
	.long	.LASF75
	.byte	0x1
	.byte	0x5c
	.long	0x50e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x13
	.long	.LASF76
	.byte	0x1
	.byte	0x5c
	.long	0x50e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x13
	.long	.LASF77
	.byte	0x1
	.byte	0x5d
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x12
	.string	"f"
	.byte	0x1
	.byte	0x5e
	.long	0x2cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x3ab
	.uleb128 0x6
	.byte	0x8
	.long	0x9c
	.uleb128 0x6
	.byte	0x8
	.long	0x8f
	.uleb128 0xf
	.long	.LASF79
	.byte	0x1
	.byte	0xfe
	.long	0x2ae
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x656
	.uleb128 0x10
	.string	"g"
	.byte	0x1
	.byte	0xfe
	.long	0x502
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x11
	.long	.LASF68
	.byte	0x1
	.byte	0xfe
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x11
	.long	.LASF80
	.byte	0x1
	.byte	0xfe
	.long	0x2cf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x14
	.long	.LASF75
	.byte	0x1
	.value	0x100
	.long	0x50e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x14
	.long	.LASF76
	.byte	0x1
	.value	0x100
	.long	0x50e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x14
	.long	.LASF81
	.byte	0x1
	.value	0x101
	.long	0x95
	.uleb128 0x3
	.byte	0x91
	.sleb128 -113
	.uleb128 0x15
	.string	"fp"
	.byte	0x1
	.value	0x102
	.long	0x508
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x14
	.long	.LASF72
	.byte	0x1
	.value	0x103
	.long	0x2ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x14
	.long	.LASF73
	.byte	0x1
	.value	0x103
	.long	0x2ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x14
	.long	.LASF77
	.byte	0x1
	.value	0x104
	.long	0x2b9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x15
	.string	"buf"
	.byte	0x1
	.value	0x105
	.long	0x32b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x15
	.string	"pdf"
	.byte	0x1
	.value	0x106
	.long	0x2da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.value	0x107
	.long	0x2ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x15
	.string	"j"
	.byte	0x1
	.value	0x107
	.long	0x2ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x15
	.string	"n"
	.byte	0x1
	.value	0x107
	.long	0x2ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x14
	.long	.LASF59
	.byte	0x1
	.value	0x108
	.long	0x2ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x14
	.long	.LASF70
	.byte	0x1
	.value	0x109
	.long	0x2ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x14
	.long	.LASF55
	.byte	0x1
	.value	0x10a
	.long	0x2ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x14
	.long	.LASF82
	.byte	0x1
	.value	0x10b
	.long	0x2ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.uleb128 0x16
	.long	.LASF83
	.byte	0x1
	.value	0x176
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x6c5
	.uleb128 0x17
	.string	"g"
	.byte	0x1
	.value	0x176
	.long	0x502
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x15
	.string	"m"
	.byte	0x1
	.value	0x178
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x15
	.string	"c"
	.byte	0x1
	.value	0x178
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x15
	.string	"c2"
	.byte	0x1
	.value	0x178
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x15
	.string	"n"
	.byte	0x1
	.value	0x178
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.string	"nm"
	.byte	0x1
	.value	0x178
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x16
	.long	.LASF84
	.byte	0x1
	.value	0x19c
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x734
	.uleb128 0x17
	.string	"g"
	.byte	0x1
	.value	0x19c
	.long	0x502
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.long	.LASF85
	.byte	0x1
	.value	0x19c
	.long	0x2cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x15
	.string	"m"
	.byte	0x1
	.value	0x19e
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x15
	.string	"c"
	.byte	0x1
	.value	0x19e
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.value	0x19e
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.string	"n"
	.byte	0x1
	.value	0x19e
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x19
	.long	.LASF87
	.byte	0x1
	.value	0x1b0
	.long	0x2ae
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x7c3
	.uleb128 0x17
	.string	"g"
	.byte	0x1
	.value	0x1b0
	.long	0x502
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x18
	.long	.LASF85
	.byte	0x1
	.value	0x1b0
	.long	0x2cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x15
	.string	"m"
	.byte	0x1
	.value	0x1b2
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x15
	.string	"c"
	.byte	0x1
	.value	0x1b2
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.value	0x1b2
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x15
	.string	"n"
	.byte	0x1
	.value	0x1b2
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x15
	.string	"l"
	.byte	0x1
	.value	0x1b2
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x15
	.string	"var"
	.byte	0x1
	.value	0x1b3
	.long	0x2da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1a
	.long	.LASF86
	.byte	0x1
	.value	0x1d3
	.long	0x2ae
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x836
	.uleb128 0x17
	.string	"g"
	.byte	0x1
	.value	0x1d3
	.long	0x502
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x15
	.string	"m"
	.byte	0x1
	.value	0x1d5
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x15
	.string	"c"
	.byte	0x1
	.value	0x1d5
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.value	0x1d5
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x15
	.string	"lrd"
	.byte	0x1
	.value	0x1d6
	.long	0x2cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x15
	.string	"f"
	.byte	0x1
	.value	0x1d7
	.long	0x2cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x19
	.long	.LASF88
	.byte	0x1
	.value	0x1f0
	.long	0x502
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x8d2
	.uleb128 0x18
	.long	.LASF89
	.byte	0x1
	.value	0x1f0
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.long	.LASF90
	.byte	0x1
	.value	0x1f0
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x18
	.long	.LASF91
	.byte	0x1
	.value	0x1f0
	.long	0x2cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x18
	.long	.LASF92
	.byte	0x1
	.value	0x1f1
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.long	.LASF80
	.byte	0x1
	.value	0x1f1
	.long	0x2cf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x18
	.long	.LASF93
	.byte	0x1
	.value	0x1f2
	.long	0x2ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x18
	.long	.LASF94
	.byte	0x1
	.value	0x1f2
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x15
	.string	"g"
	.byte	0x1
	.value	0x1f4
	.long	0x502
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x19
	.long	.LASF95
	.byte	0x1
	.value	0x21b
	.long	0x2ae
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x9be
	.uleb128 0x17
	.string	"g"
	.byte	0x1
	.value	0x21b
	.long	0x502
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x17
	.string	"s"
	.byte	0x1
	.value	0x21b
	.long	0x2ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x17
	.string	"x"
	.byte	0x1
	.value	0x21b
	.long	0x2da
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x18
	.long	.LASF96
	.byte	0x1
	.value	0x21b
	.long	0x32b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x14
	.long	.LASF62
	.byte	0x1
	.value	0x21d
	.long	0x3a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x14
	.long	.LASF61
	.byte	0x1
	.value	0x21e
	.long	0x2ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x15
	.string	"m"
	.byte	0x1
	.value	0x21f
	.long	0x2da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x15
	.string	"v"
	.byte	0x1
	.value	0x21f
	.long	0x2da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x14
	.long	.LASF97
	.byte	0x1
	.value	0x220
	.long	0x2cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x14
	.long	.LASF98
	.byte	0x1
	.value	0x220
	.long	0x2cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.string	"f"
	.byte	0x1
	.value	0x220
	.long	0x2cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x15
	.string	"bs"
	.byte	0x1
	.value	0x221
	.long	0x2ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.value	0x222
	.long	0x2ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x15
	.string	"c"
	.byte	0x1
	.value	0x222
	.long	0x2ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x19
	.long	.LASF99
	.byte	0x1
	.value	0x23f
	.long	0x2ae
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0xaf9
	.uleb128 0x17
	.string	"g"
	.byte	0x1
	.value	0x23f
	.long	0x502
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x17
	.string	"m"
	.byte	0x1
	.value	0x23f
	.long	0x2ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x18
	.long	.LASF100
	.byte	0x1
	.value	0x23f
	.long	0x32b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x17
	.string	"x"
	.byte	0x1
	.value	0x23f
	.long	0x2da
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x14
	.long	.LASF62
	.byte	0x1
	.value	0x241
	.long	0x3a5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x14
	.long	.LASF61
	.byte	0x1
	.value	0x242
	.long	0x2ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x14
	.long	.LASF96
	.byte	0x1
	.value	0x242
	.long	0x2ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x15
	.string	"m1"
	.byte	0x1
	.value	0x244
	.long	0x2da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x15
	.string	"m2"
	.byte	0x1
	.value	0x244
	.long	0x2da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x15
	.string	"v1"
	.byte	0x1
	.value	0x244
	.long	0x2da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x15
	.string	"v2"
	.byte	0x1
	.value	0x244
	.long	0x2da
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x14
	.long	.LASF101
	.byte	0x1
	.value	0x245
	.long	0x2cf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x14
	.long	.LASF102
	.byte	0x1
	.value	0x245
	.long	0x2cf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x14
	.long	.LASF103
	.byte	0x1
	.value	0x245
	.long	0x2cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x14
	.long	.LASF104
	.byte	0x1
	.value	0x245
	.long	0x2cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.string	"f"
	.byte	0x1
	.value	0x245
	.long	0x2cf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.value	0x248
	.long	0x2ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x15
	.string	"j"
	.byte	0x1
	.value	0x248
	.long	0x2ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x15
	.string	"c"
	.byte	0x1
	.value	0x248
	.long	0x2ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.byte	0
	.uleb128 0x1b
	.long	.LASF111
	.byte	0x1
	.value	0x2a2
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0xb25
	.uleb128 0x17
	.string	"g"
	.byte	0x1
	.value	0x2a2
	.long	0x502
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1c
	.long	.LASF105
	.byte	0x4
	.byte	0xa9
	.long	0x266
	.uleb128 0x1d
	.long	.LASF106
	.byte	0x1
	.byte	0x49
	.long	0x69
	.uleb128 0x9
	.byte	0x3
	.quad	considered
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
	.uleb128 0x10
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
.LASF95:
	.string	"mgau_comp_eval"
.LASF32:
	.string	"_shortbuf"
.LASF110:
	.string	"_IO_lock_t"
.LASF87:
	.string	"mgau_var_nzvec_floor"
.LASF21:
	.string	"_IO_buf_end"
.LASF93:
	.string	"precomp"
.LASF73:
	.string	"chksum_present"
.LASF19:
	.string	"_IO_write_end"
.LASF3:
	.string	"unsigned int"
.LASF60:
	.string	"max_comp"
.LASF13:
	.string	"_flags"
.LASF66:
	.string	"gau_type"
.LASF25:
	.string	"_markers"
.LASF99:
	.string	"mgau_eval"
.LASF85:
	.string	"floor"
.LASF79:
	.string	"mgau_mixw_read"
.LASF100:
	.string	"active"
.LASF57:
	.string	"mixw"
.LASF46:
	.string	"_pos"
.LASF105:
	.string	"stdout"
.LASF24:
	.string	"_IO_save_end"
.LASF109:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/482.sphinx3/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF49:
	.string	"float"
.LASF51:
	.string	"int32"
.LASF76:
	.string	"argval"
.LASF48:
	.string	"long long unsigned int"
.LASF108:
	.string	"cont_mgau.c"
.LASF59:
	.string	"n_mgau"
.LASF23:
	.string	"_IO_backup_base"
.LASF34:
	.string	"_offset"
.LASF27:
	.string	"_fileno"
.LASF86:
	.string	"mgau_precomp"
.LASF67:
	.string	"mgau_model_t"
.LASF77:
	.string	"chksum"
.LASF7:
	.string	"size_t"
.LASF58:
	.string	"mgau_t"
.LASF16:
	.string	"_IO_read_base"
.LASF74:
	.string	"pbuf"
.LASF63:
	.string	"distfloor"
.LASF44:
	.string	"_next"
.LASF71:
	.string	"n_density"
.LASF111:
	.string	"mgau_free"
.LASF92:
	.string	"mixwfile"
.LASF64:
	.string	"frm_sen_eval"
.LASF11:
	.string	"char"
.LASF40:
	.string	"_mode"
.LASF70:
	.string	"n_feat"
.LASF61:
	.string	"veclen"
.LASF43:
	.string	"_IO_marker"
.LASF14:
	.string	"_IO_read_ptr"
.LASF55:
	.string	"n_comp"
.LASF89:
	.string	"meanfile"
.LASF53:
	.string	"float32"
.LASF101:
	.string	"dval1"
.LASF17:
	.string	"_IO_write_base"
.LASF96:
	.string	"score"
.LASF47:
	.string	"long long int"
.LASF22:
	.string	"_IO_save_base"
.LASF78:
	.string	"mgau_file_read"
.LASF97:
	.string	"dval"
.LASF80:
	.string	"mixwfloor"
.LASF106:
	.string	"considered"
.LASF52:
	.string	"uint32"
.LASF72:
	.string	"byteswap"
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
.LASF31:
	.string	"_vtable_offset"
.LASF94:
	.string	"senmgau"
.LASF91:
	.string	"varfloor"
.LASF54:
	.string	"float64"
.LASF107:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF15:
	.string	"_IO_read_end"
.LASF5:
	.string	"short int"
.LASF6:
	.string	"long int"
.LASF98:
	.string	"diff"
.LASF83:
	.string	"mgau_uninit_compact"
.LASF81:
	.string	"eofchk"
.LASF33:
	.string	"_lock"
.LASF10:
	.string	"sizetype"
.LASF62:
	.string	"mgau"
.LASF102:
	.string	"dval2"
.LASF0:
	.string	"long unsigned int"
.LASF88:
	.string	"mgau_init"
.LASF29:
	.string	"_old_offset"
.LASF42:
	.string	"_IO_FILE"
.LASF82:
	.string	"n_err"
.LASF69:
	.string	"type"
.LASF1:
	.string	"unsigned char"
.LASF45:
	.string	"_sbuf"
.LASF18:
	.string	"_IO_write_ptr"
.LASF75:
	.string	"argname"
.LASF103:
	.string	"diff1"
.LASF104:
	.string	"diff2"
.LASF65:
	.string	"frm_gau_eval"
.LASF8:
	.string	"__off_t"
.LASF4:
	.string	"signed char"
.LASF2:
	.string	"short unsigned int"
.LASF68:
	.string	"file_name"
.LASF90:
	.string	"varfile"
.LASF50:
	.string	"double"
.LASF26:
	.string	"_chain"
.LASF12:
	.string	"FILE"
.LASF28:
	.string	"_flags2"
.LASF30:
	.string	"_cur_column"
.LASF56:
	.string	"mean"
.LASF9:
	.string	"__off64_t"
.LASF84:
	.string	"mgau_var_floor"
.LASF41:
	.string	"_unused2"
.LASF20:
	.string	"_IO_buf_base"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
