	.file	"kbcore.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -I . -I libutil -imultiarch x86_64-linux-gnu
# -D SPEC_CPU -D NDEBUG -D SPEC_CPU -D HAVE_CONFIG_H -D SPEC_CPU_LP64
# kbcore.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.string	"INFO"
.LC1:
	.string	"kbcore.c"
.LC2:
	.string	"Initializing core models:\n"
.LC3:
	.string	"FATAL_ERROR"
	.align 8
.LC4:
	.string	"Please specified the feature type\n"
.LC5:
	.string	"feat_init(%s) failed\n"
.LC6:
	.string	".cont."
	.align 8
.LC7:
	.string	"#Feature streams(%d) in the feature for continuous HMM!= 1\n"
.LC8:
	.string	".semi."
	.align 8
.LC9:
	.string	"#Feature streams(%d) in the feature for semi-continuous HMM!= 4\n"
	.align 8
.LC10:
	.string	"Feature should be either .semi. or .cont."
.LC11:
	.string	"mdef_init(%s) failed\n"
.LC12:
	.string	""
	.align 8
.LC13:
	.string	"Compound word separator(%s) must be empty or single character string\n"
.LC14:
	.string	"dict_init(%s,%s,%s) failed\n"
	.align 8
.LC15:
	.string	"Please only specify either -lmfile or -lmctlfile\n"
	.align 8
.LC16:
	.string	"Please specify either one of -lmfile or -lmctlfile\n"
	.align 8
.LC17:
	.string	"lm_read(%s, %e, %e, %e) failed\n"
.LC18:
	.string	"Reading LM ctl file\n"
.LC19:
	.string	"kb->lmset[0].name %s\n"
	.align 8
.LC20:
	.string	"lm_read_ctl(%s,%e,%e,%e) failed\n:"
	.align 8
.LC21:
	.string	"No dictionary for associating filler penalty file(%s)\n"
.LC22:
	.string	"fillpen_init(%s) failed\n"
	.align 8
.LC23:
	.string	"Dict/LM word-id mapping failed\n"
	.align 8
.LC24:
	.string	"Dict/LM word-id mapping failed for LM index %d, named %s\n"
	.align 8
.LC25:
	.string	"Varfile or mixwfile not specified along with meanfile(%s)\n"
	.align 8
.LC26:
	.string	"gauden_init(%s, %s, %e) failed\n"
	.align 8
.LC27:
	.string	"subvq_init (%s, %e, -1) failed\n"
.LC28:
	.string	"gs_read(%s) failed\n"
	.align 8
.LC29:
	.string	"After reading the number of senones: %d\n"
.LC30:
	.string	"tmat_init (%s, %e) failed\n"
	.align 8
.LC31:
	.string	"Verifying models consistency:\n"
	.align 8
.LC32:
	.string	"Feature streamlen(%d) != mgau streamlen(%d)\n"
	.align 8
.LC33:
	.string	"Mdef #senones(%d) != mgau #senones(%d)\n"
	.align 8
.LC34:
	.string	"Mdef #tmat(%d) != tmatfile(%d)\n"
	.align 8
.LC35:
	.string	"Mdef #states(%d) != tmat #states(%d)\n"
	.text
	.globl	kbcore_init
	.type	kbcore_init, @function
kbcore_init:
.LFB2:
	.file 1 "kbcore.c"
	.loc 1 91 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$152, %rsp	#,
	.cfi_offset 3, -24
	movsd	%xmm0, -40(%rbp)	# logbase, logbase
	movq	%rdi, -48(%rbp)	# feattype, feattype
	movq	%rsi, -56(%rbp)	# cmn, cmn
	movq	%rdx, -64(%rbp)	# varnorm, varnorm
	movq	%rcx, -72(%rbp)	# agc, agc
	movq	%r8, -80(%rbp)	# mdeffile, mdeffile
	movq	%r9, -88(%rbp)	# dictfile, dictfile
	movsd	%xmm1, -96(%rbp)	# silprob, silprob
	movsd	%xmm2, -104(%rbp)	# fillprob, fillprob
	movsd	%xmm3, -112(%rbp)	# langwt, langwt
	movsd	%xmm4, -120(%rbp)	# inspen, inspen
	movsd	%xmm5, -128(%rbp)	# uw, uw
	movsd	%xmm6, -136(%rbp)	# varfloor, varfloor
	movsd	%xmm7, -144(%rbp)	# mixwfloor, mixwfloor
	.loc 1 95 0
	movl	$.LC0, %edx	#,
	movl	$95, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_info_header	#
	movl	$.LC2, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 97 0
	movl	$97, %ecx	#,
	movl	$.LC1, %edx	#,
	movl	$104, %esi	#,
	movl	$1, %edi	#,
	call	__ckd_calloc__	#
	movq	%rax, -24(%rbp)	# tmp186, kb
	.loc 1 98 0
	movq	-24(%rbp), %rax	# kb, tmp187
	movq	$0, (%rax)	#, kb_4->fcb
	.loc 1 99 0
	movq	-24(%rbp), %rax	# kb, tmp188
	movq	$0, 8(%rax)	#, kb_4->mdef
	.loc 1 100 0
	movq	-24(%rbp), %rax	# kb, tmp189
	movq	$0, 16(%rax)	#, kb_4->dict
	.loc 1 101 0
	movq	-24(%rbp), %rax	# kb, tmp190
	movq	$0, 24(%rax)	#, kb_4->dict2pid
	.loc 1 102 0
	movq	-24(%rbp), %rax	# kb, tmp191
	movq	$0, 32(%rax)	#, kb_4->lm
	.loc 1 103 0
	movq	-24(%rbp), %rax	# kb, tmp192
	movq	$0, 48(%rax)	#, kb_4->fillpen
	.loc 1 104 0
	movq	-24(%rbp), %rax	# kb, tmp193
	movq	$0, 56(%rax)	#, kb_4->dict2lmwid
	.loc 1 105 0
	movq	-24(%rbp), %rax	# kb, tmp194
	movq	$0, 64(%rax)	#, kb_4->mgau
	.loc 1 106 0
	movq	-24(%rbp), %rax	# kb, tmp195
	movq	$0, 72(%rax)	#, kb_4->svq
	.loc 1 107 0
	movq	-24(%rbp), %rax	# kb, tmp196
	movq	$0, 88(%rax)	#, kb_4->tmat
	.loc 1 108 0
	movq	-24(%rbp), %rax	# kb, tmp197
	movl	$0, 96(%rax)	#, kb_4->n_lm
	.loc 1 109 0
	movq	-24(%rbp), %rax	# kb, tmp198
	movl	$0, 100(%rax)	#, kb_4->n_alloclm
	.loc 1 111 0
	movq	-40(%rbp), %rax	# logbase, tmp199
	movq	%rax, -152(%rbp)	# tmp199, %sfp
	movsd	-152(%rbp), %xmm0	# %sfp,
	call	logs3_init	#
	.loc 1 114 0
	cmpq	$0, -48(%rbp)	#, feattype
	jne	.L2	#,
	.loc 1 115 0
	movl	$.LC3, %edx	#,
	movl	$115, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movl	$.LC4, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L2:
	.loc 1 117 0
	cmpq	$0, -48(%rbp)	#, feattype
	je	.L3	#,
	.loc 1 118 0
	movq	-72(%rbp), %rcx	# agc, tmp200
	movq	-64(%rbp), %rdx	# varnorm, tmp201
	movq	-56(%rbp), %rsi	# cmn, tmp202
	movq	-48(%rbp), %rax	# feattype, tmp203
	movq	%rax, %rdi	# tmp203,
	call	feat_init	#
	movq	-24(%rbp), %rdx	# kb, tmp204
	movq	%rax, (%rdx)	# D.5981, kb_4->fcb
	movq	-24(%rbp), %rax	# kb, tmp205
	movq	(%rax), %rax	# kb_4->fcb, D.5981
	testq	%rax, %rax	# D.5981
	jne	.L4	#,
	.loc 1 119 0
	movl	$.LC3, %edx	#,
	movl	$119, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movq	-48(%rbp), %rax	# feattype, tmp206
	movq	%rax, %rsi	# tmp206,
	movl	$.LC5, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L4:
	.loc 1 121 0
	movq	64(%rbp), %rax	# senmgau, tmp207
	movl	$.LC6, %esi	#,
	movq	%rax, %rdi	# tmp207,
	call	strcmp	#
	testl	%eax, %eax	# D.5982
	jne	.L5	#,
	.loc 1 122 0
	movq	-24(%rbp), %rax	# kb, tmp208
	movq	(%rax), %rax	# kb_4->fcb, D.5981
	movl	16(%rax), %eax	# _14->n_stream, D.5982
	cmpl	$1, %eax	#, D.5982
	je	.L3	#,
	.loc 1 123 0
	movl	$.LC3, %edx	#,
	movl	$123, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movq	-24(%rbp), %rax	# kb, tmp209
	movq	(%rax), %rax	# kb_4->fcb, D.5981
	movl	16(%rax), %eax	# _16->n_stream, D.5982
	movl	%eax, %esi	# D.5982,
	movl	$.LC7, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
	jmp	.L3	#
.L5:
	.loc 1 124 0
	movq	64(%rbp), %rax	# senmgau, tmp210
	movl	$.LC8, %esi	#,
	movq	%rax, %rdi	# tmp210,
	call	strcmp	#
	testl	%eax, %eax	# D.5982
	jne	.L7	#,
	.loc 1 125 0
	movq	-24(%rbp), %rax	# kb, tmp211
	movq	(%rax), %rax	# kb_4->fcb, D.5981
	movl	16(%rax), %eax	# _19->n_stream, D.5982
	cmpl	$4, %eax	#, D.5982
	je	.L3	#,
	.loc 1 126 0
	movl	$.LC3, %edx	#,
	movl	$126, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movq	-24(%rbp), %rax	# kb, tmp212
	movq	(%rax), %rax	# kb_4->fcb, D.5981
	movl	16(%rax), %eax	# _21->n_stream, D.5982
	movl	%eax, %esi	# D.5982,
	movl	$.LC9, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
	jmp	.L3	#
.L7:
	.loc 1 128 0
	movl	$.LC3, %edx	#,
	movl	$128, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movl	$.LC10, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L3:
	.loc 1 132 0
	cmpq	$0, -80(%rbp)	#, mdeffile
	je	.L9	#,
	.loc 1 133 0
	movq	-80(%rbp), %rax	# mdeffile, tmp213
	movq	%rax, %rdi	# tmp213,
	call	mdef_init	#
	movq	-24(%rbp), %rdx	# kb, tmp214
	movq	%rax, 8(%rdx)	# D.5983, kb_4->mdef
	movq	-24(%rbp), %rax	# kb, tmp215
	movq	8(%rax), %rax	# kb_4->mdef, D.5983
	testq	%rax, %rax	# D.5983
	jne	.L9	#,
	.loc 1 134 0
	movl	$.LC3, %edx	#,
	movl	$134, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movq	-80(%rbp), %rax	# mdeffile, tmp216
	movq	%rax, %rsi	# tmp216,
	movl	$.LC11, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L9:
	.loc 1 137 0
	cmpq	$0, -88(%rbp)	#, dictfile
	je	.L10	#,
	.loc 1 138 0
	cmpq	$0, 24(%rbp)	#, compsep
	jne	.L11	#,
	.loc 1 139 0
	movq	$.LC12, 24(%rbp)	#, compsep
	jmp	.L12	#
.L11:
	.loc 1 140 0
	movq	24(%rbp), %rax	# compsep, tmp217
	movzbl	(%rax), %eax	# *compsep_27(D), D.5984
	testb	%al, %al	# D.5984
	je	.L12	#,
	.loc 1 140 0 is_stmt 0 discriminator 1
	movq	24(%rbp), %rax	# compsep, tmp218
	addq	$1, %rax	#, D.5985
	movzbl	(%rax), %eax	# *_30, D.5984
	testb	%al, %al	# D.5984
	je	.L12	#,
	.loc 1 141 0 is_stmt 1
	movl	$.LC3, %edx	#,
	movl	$141, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movq	24(%rbp), %rax	# compsep, tmp219
	movq	%rax, %rsi	# tmp219,
	movl	$.LC13, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L12:
	.loc 1 144 0
	movq	24(%rbp), %rax	# compsep, tmp220
	movzbl	(%rax), %eax	# *compsep_1, D.5984
	movsbl	%al, %edx	# D.5984, D.5982
	movq	-24(%rbp), %rax	# kb, tmp221
	movq	8(%rax), %rax	# kb_4->mdef, D.5983
	movq	-88(%rbp), %rsi	# dictfile, tmp222
	movl	%edx, %ecx	# D.5982,
	movq	16(%rbp), %rdx	# fdictfile,
	movq	%rax, %rdi	# D.5983,
	call	dict_init	#
	movq	-24(%rbp), %rdx	# kb, tmp223
	movq	%rax, 16(%rdx)	# D.5986, kb_4->dict
	movq	-24(%rbp), %rax	# kb, tmp224
	movq	16(%rax), %rax	# kb_4->dict, D.5986
	testq	%rax, %rax	# D.5986
	jne	.L10	#,
	.loc 1 145 0
	movl	$.LC3, %edx	#,
	movl	$145, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	cmpq	$0, 16(%rbp)	#, fdictfile
	je	.L13	#,
	.loc 1 145 0 is_stmt 0 discriminator 1
	movq	16(%rbp), %rax	# fdictfile, iftmp.0
	jmp	.L14	#
.L13:
	.loc 1 145 0 discriminator 2
	movl	$.LC12, %eax	#, iftmp.0
.L14:
	.loc 1 145 0 discriminator 3
	movq	24(%rbp), %rdx	# compsep, tmp225
	movq	-88(%rbp), %rsi	# dictfile, tmp226
	movq	%rdx, %rcx	# tmp225,
	movq	%rax, %rdx	# iftmp.0,
	movl	$.LC14, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L10:
	.loc 1 150 0 is_stmt 1
	cmpq	$0, 32(%rbp)	#, lmfile
	je	.L15	#,
	.loc 1 150 0 is_stmt 0 discriminator 1
	cmpq	$0, 40(%rbp)	#, lmctlfile
	je	.L15	#,
	.loc 1 151 0 is_stmt 1
	movl	$.LC3, %edx	#,
	movl	$151, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movl	$.LC15, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L15:
	.loc 1 153 0
	cmpq	$0, 32(%rbp)	#, lmfile
	jne	.L16	#,
	.loc 1 153 0 is_stmt 0 discriminator 1
	cmpq	$0, 40(%rbp)	#, lmctlfile
	jne	.L16	#,
	.loc 1 154 0 is_stmt 1
	movl	$.LC3, %edx	#,
	movl	$154, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movl	$.LC16, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L16:
	.loc 1 156 0
	cmpq	$0, 32(%rbp)	#, lmfile
	je	.L17	#,
	.loc 1 157 0
	movq	-128(%rbp), %rcx	# uw, tmp227
	movq	-120(%rbp), %rdx	# inspen, tmp228
	movq	-112(%rbp), %rax	# langwt, tmp229
	movq	32(%rbp), %rsi	# lmfile, tmp230
	movq	%rcx, -152(%rbp)	# tmp227, %sfp
	movsd	-152(%rbp), %xmm2	# %sfp,
	movq	%rdx, -152(%rbp)	# tmp228, %sfp
	movsd	-152(%rbp), %xmm1	# %sfp,
	movq	%rax, -152(%rbp)	# tmp229, %sfp
	movsd	-152(%rbp), %xmm0	# %sfp,
	movq	%rsi, %rdi	# tmp230,
	call	lm_read	#
	movq	-24(%rbp), %rdx	# kb, tmp231
	movq	%rax, 32(%rdx)	# D.5987, kb_4->lm
	movq	-24(%rbp), %rax	# kb, tmp232
	movq	32(%rax), %rax	# kb_4->lm, D.5987
	testq	%rax, %rax	# D.5987
	jne	.L17	#,
	.loc 1 158 0
	movl	$.LC3, %edx	#,
	movl	$158, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movq	-128(%rbp), %rcx	# uw, tmp233
	movq	-120(%rbp), %rdx	# inspen, tmp234
	movq	-112(%rbp), %rax	# langwt, tmp235
	movq	32(%rbp), %rsi	# lmfile, tmp236
	movq	%rcx, -152(%rbp)	# tmp233, %sfp
	movsd	-152(%rbp), %xmm2	# %sfp,
	movq	%rdx, -152(%rbp)	# tmp234, %sfp
	movsd	-152(%rbp), %xmm1	# %sfp,
	movq	%rax, -152(%rbp)	# tmp235, %sfp
	movsd	-152(%rbp), %xmm0	# %sfp,
	movl	$.LC17, %edi	#,
	movl	$3, %eax	#,
	call	_E__die_error	#
.L17:
	.loc 1 161 0
	cmpq	$0, 40(%rbp)	#, lmctlfile
	je	.L18	#,
	.loc 1 162 0
	movl	$.LC0, %edx	#,
	movl	$162, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_info_header	#
	movl	$.LC18, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 163 0
	movq	-24(%rbp), %rax	# kb, tmp237
	movq	16(%rax), %rax	# kb_4->dict, D.5986
	movl	52(%rax), %r8d	# _47->n_word, D.5982
	movq	-24(%rbp), %rax	# kb, tmp238
	leaq	100(%rax), %rbx	#, D.5988
	movq	-24(%rbp), %rax	# kb, tmp239
	leaq	96(%rax), %rcx	#, D.5988
	movq	-24(%rbp), %rax	# kb, tmp240
	movq	16(%rax), %r11	# kb_4->dict, D.5986
	movq	48(%rbp), %rdx	# lmdumpdir, tmp241
	movq	-120(%rbp), %rdi	# inspen, tmp242
	movq	-128(%rbp), %rsi	# uw, tmp243
	movq	-112(%rbp), %rax	# langwt, tmp244
	movq	40(%rbp), %r10	# lmctlfile, tmp245
	movl	%r8d, %r9d	# D.5982,
	movq	%rbx, %r8	# D.5988,
	movq	%rdi, -152(%rbp)	# tmp242, %sfp
	movsd	-152(%rbp), %xmm2	# %sfp,
	movq	%rsi, -152(%rbp)	# tmp243, %sfp
	movsd	-152(%rbp), %xmm1	# %sfp,
	movq	%rax, -152(%rbp)	# tmp244, %sfp
	movsd	-152(%rbp), %xmm0	# %sfp,
	movq	%r11, %rsi	# D.5986,
	movq	%r10, %rdi	# tmp245,
	call	lm_read_ctl	#
	movq	-24(%rbp), %rdx	# kb, tmp246
	movq	%rax, 40(%rdx)	# D.5989, kb_4->lmset
	.loc 1 165 0
	movl	$.LC0, %edx	#,
	movl	$165, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_info_header	#
	movq	-24(%rbp), %rax	# kb, tmp247
	movq	40(%rax), %rax	# kb_4->lmset, D.5989
	movq	(%rax), %rax	# _54->name, D.5985
	movq	%rax, %rsi	# D.5985,
	movl	$.LC19, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 166 0
	movq	-24(%rbp), %rax	# kb, tmp248
	movq	40(%rax), %rax	# kb_4->lmset, D.5989
	testq	%rax, %rax	# D.5989
	jne	.L18	#,
	.loc 1 167 0
	movl	$.LC3, %edx	#,
	movl	$167, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movq	-128(%rbp), %rcx	# uw, tmp249
	movq	-120(%rbp), %rdx	# inspen, tmp250
	movq	-112(%rbp), %rax	# langwt, tmp251
	movq	40(%rbp), %rsi	# lmctlfile, tmp252
	movq	%rcx, -152(%rbp)	# tmp249, %sfp
	movsd	-152(%rbp), %xmm2	# %sfp,
	movq	%rdx, -152(%rbp)	# tmp250, %sfp
	movsd	-152(%rbp), %xmm1	# %sfp,
	movq	%rax, -152(%rbp)	# tmp251, %sfp
	movsd	-152(%rbp), %xmm0	# %sfp,
	movl	$.LC20, %edi	#,
	movl	$3, %eax	#,
	call	_E__die_error	#
.L18:
	.loc 1 171 0
	cmpq	$0, 56(%rbp)	#, fillpenfile
	jne	.L19	#,
	.loc 1 171 0 is_stmt 0 discriminator 1
	cmpq	$0, 32(%rbp)	#, lmfile
	je	.L20	#,
	movq	-24(%rbp), %rax	# kb, tmp253
	movq	16(%rax), %rax	# kb_4->dict, D.5986
	testq	%rax, %rax	# D.5986
	jne	.L19	#,
.L20:
	.loc 1 171 0 discriminator 2
	cmpq	$0, 40(%rbp)	#, lmctlfile
	je	.L21	#,
	.loc 1 171 0 discriminator 1
	movq	-24(%rbp), %rax	# kb, tmp254
	movq	16(%rax), %rax	# kb_4->dict, D.5986
	testq	%rax, %rax	# D.5986
	je	.L21	#,
.L19:
	.loc 1 172 0 is_stmt 1
	movq	-24(%rbp), %rax	# kb, tmp255
	movq	16(%rax), %rax	# kb_4->dict, D.5986
	testq	%rax, %rax	# D.5986
	jne	.L22	#,
	.loc 1 173 0
	movl	$.LC3, %edx	#,
	movl	$173, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movq	56(%rbp), %rax	# fillpenfile, tmp256
	movq	%rax, %rsi	# tmp256,
	movl	$.LC21, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L22:
	.loc 1 175 0
	movq	-24(%rbp), %rax	# kb, tmp257
	movq	16(%rax), %rdi	# kb_4->dict, D.5986
	movq	-120(%rbp), %rsi	# inspen, tmp258
	movq	-112(%rbp), %rcx	# langwt, tmp259
	movq	-104(%rbp), %rdx	# fillprob, tmp260
	movq	-96(%rbp), %rax	# silprob, tmp261
	movq	56(%rbp), %r8	# fillpenfile, tmp262
	movq	%rsi, -152(%rbp)	# tmp258, %sfp
	movsd	-152(%rbp), %xmm3	# %sfp,
	movq	%rcx, -152(%rbp)	# tmp259, %sfp
	movsd	-152(%rbp), %xmm2	# %sfp,
	movq	%rdx, -152(%rbp)	# tmp260, %sfp
	movsd	-152(%rbp), %xmm1	# %sfp,
	movq	%rax, -152(%rbp)	# tmp261, %sfp
	movsd	-152(%rbp), %xmm0	# %sfp,
	movq	%r8, %rsi	# tmp262,
	call	fillpen_init	#
	movq	-24(%rbp), %rdx	# kb, tmp263
	movq	%rax, 48(%rdx)	# D.5990, kb_4->fillpen
	movq	-24(%rbp), %rax	# kb, tmp264
	movq	48(%rax), %rax	# kb_4->fillpen, D.5990
	testq	%rax, %rax	# D.5990
	jne	.L21	#,
	.loc 1 177 0
	movl	$.LC3, %edx	#,
	movl	$177, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movq	56(%rbp), %rax	# fillpenfile, tmp265
	movq	%rax, %rsi	# tmp265,
	movl	$.LC22, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L21:
	.loc 1 182 0
	movq	-24(%rbp), %rax	# kb, tmp266
	movq	16(%rax), %rax	# kb_4->dict, D.5986
	testq	%rax, %rax	# D.5986
	je	.L23	#,
	.loc 1 182 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# kb, tmp267
	movq	32(%rax), %rax	# kb_4->lm, D.5987
	testq	%rax, %rax	# D.5987
	je	.L23	#,
	.loc 1 183 0 is_stmt 1
	movsd	-112(%rbp), %xmm0	# langwt, tmp268
	cvttsd2si	%xmm0, %edx	# tmp268, D.5982
	movq	-24(%rbp), %rax	# kb, tmp269
	movq	32(%rax), %rcx	# kb_4->lm, D.5987
	movq	-24(%rbp), %rax	# kb, tmp270
	movq	16(%rax), %rax	# kb_4->dict, D.5986
	movq	%rcx, %rsi	# D.5987,
	movq	%rax, %rdi	# D.5986,
	call	wid_dict_lm_map	#
	movq	-24(%rbp), %rdx	# kb, tmp271
	movq	%rax, 56(%rdx)	# D.5991, kb_4->dict2lmwid
	movq	-24(%rbp), %rax	# kb, tmp272
	movq	56(%rax), %rax	# kb_4->dict2lmwid, D.5991
	testq	%rax, %rax	# D.5991
	jne	.L23	#,
	.loc 1 184 0
	movl	$.LC3, %edx	#,
	movl	$184, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movl	$.LC23, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L23:
	.loc 1 186 0
	movq	-24(%rbp), %rax	# kb, tmp273
	movq	16(%rax), %rax	# kb_4->dict, D.5986
	testq	%rax, %rax	# D.5986
	je	.L24	#,
	.loc 1 186 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# kb, tmp274
	movq	40(%rax), %rax	# kb_4->lmset, D.5989
	testq	%rax, %rax	# D.5989
	je	.L24	#,
	.loc 1 187 0 is_stmt 1
	movl	$0, -28(%rbp)	#, i
	jmp	.L25	#
.L27:
	.loc 1 188 0
	movq	-24(%rbp), %rax	# kb, tmp275
	movq	40(%rax), %rax	# kb_4->lmset, D.5989
	movl	-28(%rbp), %edx	# i, tmp276
	movslq	%edx, %rdx	# tmp276, D.5992
	salq	$4, %rdx	#, D.5992
	addq	%rdx, %rax	# D.5992, D.5989
	movq	8(%rax), %rbx	# _80->lm, D.5987
	movsd	-112(%rbp), %xmm0	# langwt, tmp277
	cvttsd2si	%xmm0, %edx	# tmp277, D.5982
	movq	-24(%rbp), %rax	# kb, tmp278
	movq	40(%rax), %rax	# kb_4->lmset, D.5989
	movl	-28(%rbp), %ecx	# i, tmp279
	movslq	%ecx, %rcx	# tmp279, D.5992
	salq	$4, %rcx	#, D.5992
	addq	%rcx, %rax	# D.5992, D.5989
	movq	8(%rax), %rcx	# _86->lm, D.5987
	movq	-24(%rbp), %rax	# kb, tmp280
	movq	16(%rax), %rax	# kb_4->dict, D.5986
	movq	%rcx, %rsi	# D.5987,
	movq	%rax, %rdi	# D.5986,
	call	wid_dict_lm_map	#
	movq	%rax, 208(%rbx)	# D.5991, _81->dict2lmwid
	movq	208(%rbx), %rax	# _81->dict2lmwid, D.5991
	testq	%rax, %rax	# D.5991
	jne	.L26	#,
	.loc 1 189 0
	movl	$.LC3, %edx	#,
	movl	$189, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movq	-24(%rbp), %rax	# kb, tmp281
	movq	40(%rax), %rax	# kb_4->lmset, D.5989
	movl	-28(%rbp), %edx	# i, tmp282
	movslq	%edx, %rdx	# tmp282, D.5992
	salq	$4, %rdx	#, D.5992
	addq	%rdx, %rax	# D.5992, D.5989
	movq	(%rax), %rdx	# _94->name, D.5985
	movl	-28(%rbp), %eax	# i, tmp283
	movl	%eax, %esi	# tmp283,
	movl	$.LC24, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L26:
	.loc 1 187 0
	addl	$1, -28(%rbp)	#, i
.L25:
	.loc 1 187 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# kb, tmp284
	movl	96(%rax), %eax	# kb_4->n_lm, D.5982
	cmpl	-28(%rbp), %eax	# i, D.5982
	jg	.L27	#,
.L24:
	.loc 1 192 0 is_stmt 1
	cmpq	$0, 72(%rbp)	#, meanfile
	je	.L28	#,
	.loc 1 193 0
	cmpq	$0, 80(%rbp)	#, varfile
	je	.L29	#,
	.loc 1 193 0 is_stmt 0 discriminator 1
	cmpq	$0, 88(%rbp)	#, mixwfile
	jne	.L30	#,
.L29:
	.loc 1 194 0 is_stmt 1
	movl	$.LC3, %edx	#,
	movl	$194, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movq	72(%rbp), %rax	# meanfile, tmp285
	movq	%rax, %rsi	# tmp285,
	movl	$.LC25, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L30:
	.loc 1 195 0
	movq	64(%rbp), %rcx	# senmgau, tmp286
	movq	-144(%rbp), %rdx	# mixwfloor, tmp287
	movq	88(%rbp), %r9	# mixwfile, tmp288
	movq	-136(%rbp), %rax	# varfloor, tmp289
	movq	80(%rbp), %rsi	# varfile, tmp290
	movq	72(%rbp), %rdi	# meanfile, tmp291
	movq	%rcx, %r8	# tmp286,
	movl	$1, %ecx	#,
	movq	%rdx, -152(%rbp)	# tmp287, %sfp
	movsd	-152(%rbp), %xmm1	# %sfp,
	movq	%r9, %rdx	# tmp288,
	movq	%rax, -152(%rbp)	# tmp289, %sfp
	movsd	-152(%rbp), %xmm0	# %sfp,
	call	mgau_init	#
	movq	-24(%rbp), %rdx	# kb, tmp292
	movq	%rax, 64(%rdx)	# D.5993, kb_4->mgau
	.loc 1 196 0
	movq	-24(%rbp), %rax	# kb, tmp293
	movq	64(%rax), %rax	# kb_4->mgau, D.5993
	testq	%rax, %rax	# D.5993
	jne	.L31	#,
	.loc 1 197 0
	movl	$.LC3, %edx	#,
	movl	$197, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movq	-136(%rbp), %rax	# varfloor, tmp294
	movq	80(%rbp), %rdx	# varfile, tmp295
	movq	72(%rbp), %rcx	# meanfile, tmp296
	movq	%rax, -152(%rbp)	# tmp294, %sfp
	movsd	-152(%rbp), %xmm0	# %sfp,
	movq	%rcx, %rsi	# tmp296,
	movl	$.LC26, %edi	#,
	movl	$1, %eax	#,
	call	_E__die_error	#
.L31:
	.loc 1 199 0
	cmpq	$0, 96(%rbp)	#, subvqfile
	je	.L32	#,
	.loc 1 200 0
	movq	-24(%rbp), %rax	# kb, tmp297
	movq	64(%rax), %rdx	# kb_4->mgau, D.5993
	movq	-136(%rbp), %rax	# varfloor, tmp298
	movq	96(%rbp), %rcx	# subvqfile, tmp299
	movl	$-1, %esi	#,
	movq	%rax, -152(%rbp)	# tmp298, %sfp
	movsd	-152(%rbp), %xmm0	# %sfp,
	movq	%rcx, %rdi	# tmp299,
	call	subvq_init	#
	movq	-24(%rbp), %rdx	# kb, tmp300
	movq	%rax, 72(%rdx)	# D.5994, kb_4->svq
	movq	-24(%rbp), %rax	# kb, tmp301
	movq	72(%rax), %rax	# kb_4->svq, D.5994
	testq	%rax, %rax	# D.5994
	jne	.L32	#,
	.loc 1 201 0
	movl	$.LC3, %edx	#,
	movl	$201, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movq	-136(%rbp), %rax	# varfloor, tmp302
	movq	96(%rbp), %rdx	# subvqfile, tmp303
	movq	%rax, -152(%rbp)	# tmp302, %sfp
	movsd	-152(%rbp), %xmm0	# %sfp,
	movq	%rdx, %rsi	# tmp303,
	movl	$.LC27, %edi	#,
	movl	$1, %eax	#,
	call	_E__die_error	#
.L32:
	.loc 1 204 0
	cmpq	$0, 104(%rbp)	#, gsfile
	je	.L28	#,
	.loc 1 206 0
	movq	104(%rbp), %rax	# gsfile, tmp304
	movq	%rax, %rdi	# tmp304,
	call	gs_read	#
	movq	-24(%rbp), %rdx	# kb, tmp305
	movq	%rax, 80(%rdx)	# D.5995, kb_4->gs
	movq	-24(%rbp), %rax	# kb, tmp306
	movq	80(%rax), %rax	# kb_4->gs, D.5995
	testq	%rax, %rax	# D.5995
	jne	.L33	#,
	.loc 1 207 0
	movl	$.LC3, %edx	#,
	movl	$207, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movq	104(%rbp), %rax	# gsfile, tmp307
	movq	%rax, %rsi	# tmp307,
	movl	$.LC28, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L33:
	.loc 1 209 0
	movl	$.LC0, %edx	#,
	movl	$209, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_info_header	#
	movq	-24(%rbp), %rax	# kb, tmp308
	movq	80(%rax), %rax	# kb_4->gs, D.5995
	movl	(%rax), %eax	# _111->n_mgau, D.5982
	movl	%eax, %esi	# D.5982,
	movl	$.LC29, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
.L28:
	.loc 1 214 0
	cmpq	$0, 112(%rbp)	#, tmatfile
	je	.L34	#,
	.loc 1 215 0
	movq	120(%rbp), %rax	# tmatfloor, tmp309
	movq	112(%rbp), %rdx	# tmatfile, tmp310
	movq	%rax, -152(%rbp)	# tmp309, %sfp
	movsd	-152(%rbp), %xmm0	# %sfp,
	movq	%rdx, %rdi	# tmp310,
	call	tmat_init	#
	movq	-24(%rbp), %rdx	# kb, tmp311
	movq	%rax, 88(%rdx)	# D.5996, kb_4->tmat
	movq	-24(%rbp), %rax	# kb, tmp312
	movq	88(%rax), %rax	# kb_4->tmat, D.5996
	testq	%rax, %rax	# D.5996
	jne	.L34	#,
	.loc 1 216 0
	movl	$.LC3, %edx	#,
	movl	$216, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movq	120(%rbp), %rax	# tmatfloor, tmp313
	movq	112(%rbp), %rdx	# tmatfile, tmp314
	movq	%rax, -152(%rbp)	# tmp313, %sfp
	movsd	-152(%rbp), %xmm0	# %sfp,
	movq	%rdx, %rsi	# tmp314,
	movl	$.LC30, %edi	#,
	movl	$1, %eax	#,
	call	_E__die_error	#
.L34:
	.loc 1 220 0
	movq	-24(%rbp), %rax	# kb, tmp315
	movq	8(%rax), %rax	# kb_4->mdef, D.5983
	testq	%rax, %rax	# D.5983
	je	.L35	#,
	.loc 1 220 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# kb, tmp316
	movq	16(%rax), %rax	# kb_4->dict, D.5986
	testq	%rax, %rax	# D.5986
	je	.L35	#,
	.loc 1 221 0 is_stmt 1
	movq	-24(%rbp), %rax	# kb, tmp317
	movq	16(%rax), %rdx	# kb_4->dict, D.5986
	movq	-24(%rbp), %rax	# kb, tmp318
	movq	8(%rax), %rax	# kb_4->mdef, D.5983
	movq	%rdx, %rsi	# D.5986,
	movq	%rax, %rdi	# D.5983,
	call	dict2pid_build	#
	movq	-24(%rbp), %rdx	# kb, tmp319
	movq	%rax, 24(%rdx)	# D.5997, kb_4->dict2pid
.L35:
	.loc 1 225 0
	movl	$.LC0, %edx	#,
	movl	$225, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_info_header	#
	movl	$.LC31, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 227 0
	movq	-24(%rbp), %rax	# kb, tmp320
	movq	(%rax), %rax	# kb_4->fcb, D.5981
	testq	%rax, %rax	# D.5981
	je	.L36	#,
	.loc 1 227 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# kb, tmp321
	movq	64(%rax), %rax	# kb_4->mgau, D.5993
	testq	%rax, %rax	# D.5993
	je	.L36	#,
	.loc 1 229 0 is_stmt 1
	movq	-24(%rbp), %rax	# kb, tmp322
	movq	(%rax), %rax	# kb_4->fcb, D.5981
	movq	24(%rax), %rax	# _124->stream_len, D.5988
	movl	(%rax), %edx	# *_125, D.5982
	movq	-24(%rbp), %rax	# kb, tmp323
	movq	64(%rax), %rax	# kb_4->mgau, D.5993
	movl	8(%rax), %eax	# _127->veclen, D.5982
	cmpl	%eax, %edx	# D.5982, D.5982
	je	.L36	#,
	.loc 1 230 0
	movl	$.LC3, %edx	#,
	movl	$230, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	.loc 1 231 0
	movq	-24(%rbp), %rax	# kb, tmp324
	movq	64(%rax), %rax	# kb_4->mgau, D.5993
	.loc 1 230 0
	movl	8(%rax), %edx	# _129->veclen, D.5982
	.loc 1 231 0
	movq	-24(%rbp), %rax	# kb, tmp325
	movq	(%rax), %rax	# kb_4->fcb, D.5981
	movq	24(%rax), %rax	# _131->stream_len, D.5988
	.loc 1 230 0
	movl	(%rax), %eax	# *_132, D.5982
	movl	%eax, %esi	# D.5982,
	movl	$.LC32, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L36:
	.loc 1 234 0
	movq	-24(%rbp), %rax	# kb, tmp326
	movq	8(%rax), %rax	# kb_4->mdef, D.5983
	testq	%rax, %rax	# D.5983
	je	.L37	#,
	.loc 1 234 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# kb, tmp327
	movq	64(%rax), %rax	# kb_4->mgau, D.5993
	testq	%rax, %rax	# D.5993
	je	.L37	#,
	.loc 1 236 0 is_stmt 1
	movq	-24(%rbp), %rax	# kb, tmp328
	movq	8(%rax), %rax	# kb_4->mdef, D.5983
	movl	16(%rax), %edx	# _136->n_sen, D.5982
	movq	-24(%rbp), %rax	# kb, tmp329
	movq	64(%rax), %rax	# kb_4->mgau, D.5993
	movl	(%rax), %eax	# _138->n_mgau, D.5982
	cmpl	%eax, %edx	# D.5982, D.5982
	je	.L37	#,
	.loc 1 237 0
	movl	$.LC3, %edx	#,
	movl	$237, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	.loc 1 238 0
	movq	-24(%rbp), %rax	# kb, tmp330
	movq	64(%rax), %rax	# kb_4->mgau, D.5993
	.loc 1 237 0
	movl	(%rax), %edx	# _140->n_mgau, D.5982
	.loc 1 238 0
	movq	-24(%rbp), %rax	# kb, tmp331
	movq	8(%rax), %rax	# kb_4->mdef, D.5983
	.loc 1 237 0
	movl	16(%rax), %eax	# _142->n_sen, D.5982
	movl	%eax, %esi	# D.5982,
	movl	$.LC33, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L37:
	.loc 1 241 0
	movq	-24(%rbp), %rax	# kb, tmp332
	movq	8(%rax), %rax	# kb_4->mdef, D.5983
	testq	%rax, %rax	# D.5983
	je	.L38	#,
	.loc 1 241 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# kb, tmp333
	movq	88(%rax), %rax	# kb_4->tmat, D.5996
	testq	%rax, %rax	# D.5996
	je	.L38	#,
	.loc 1 243 0 is_stmt 1
	movq	-24(%rbp), %rax	# kb, tmp334
	movq	8(%rax), %rax	# kb_4->mdef, D.5983
	movl	20(%rax), %edx	# _146->n_tmat, D.5982
	movq	-24(%rbp), %rax	# kb, tmp335
	movq	88(%rax), %rax	# kb_4->tmat, D.5996
	movl	8(%rax), %eax	# _148->n_tmat, D.5982
	cmpl	%eax, %edx	# D.5982, D.5982
	je	.L39	#,
	.loc 1 244 0
	movl	$.LC3, %edx	#,
	movl	$244, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movq	-24(%rbp), %rax	# kb, tmp336
	movq	88(%rax), %rax	# kb_4->tmat, D.5996
	movl	8(%rax), %edx	# _150->n_tmat, D.5982
	movq	-24(%rbp), %rax	# kb, tmp337
	movq	8(%rax), %rax	# kb_4->mdef, D.5983
	movl	20(%rax), %eax	# _152->n_tmat, D.5982
	movl	%eax, %esi	# D.5982,
	movl	$.LC34, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L39:
	.loc 1 245 0
	movq	-24(%rbp), %rax	# kb, tmp338
	movq	8(%rax), %rax	# kb_4->mdef, D.5983
	movl	8(%rax), %edx	# _154->n_emit_state, D.5982
	movq	-24(%rbp), %rax	# kb, tmp339
	movq	88(%rax), %rax	# kb_4->tmat, D.5996
	movl	12(%rax), %eax	# _156->n_state, D.5982
	cmpl	%eax, %edx	# D.5982, D.5982
	je	.L38	#,
	.loc 1 246 0
	movl	$.LC3, %edx	#,
	movl	$246, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	.loc 1 247 0
	movq	-24(%rbp), %rax	# kb, tmp340
	movq	88(%rax), %rax	# kb_4->tmat, D.5996
	.loc 1 246 0
	movl	12(%rax), %edx	# _158->n_state, D.5982
	.loc 1 247 0
	movq	-24(%rbp), %rax	# kb, tmp341
	movq	8(%rax), %rax	# kb_4->mdef, D.5983
	.loc 1 246 0
	movl	8(%rax), %eax	# _160->n_emit_state, D.5982
	movl	%eax, %esi	# D.5982,
	movl	$.LC35, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L38:
	.loc 1 250 0
	movq	-24(%rbp), %rax	# kb, D.5998
	.loc 1 251 0
	addq	$152, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	kbcore_init, .-kbcore_init
	.globl	kbcore_free
	.type	kbcore_free, @function
kbcore_free:
.LFB3:
	.loc 1 255 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# kbcore, kbcore
	.loc 1 256 0
	movq	-56(%rbp), %rax	# kbcore, tmp72
	movq	(%rax), %rax	# kbcore_1(D)->fcb, tmp73
	movq	%rax, -40(%rbp)	# tmp73, fcb
	.loc 1 257 0
	movq	-56(%rbp), %rax	# kbcore, tmp74
	movq	8(%rax), %rax	# kbcore_1(D)->mdef, tmp75
	movq	%rax, -32(%rbp)	# tmp75, mdef
	.loc 1 258 0
	movq	-56(%rbp), %rax	# kbcore, tmp76
	movq	16(%rax), %rax	# kbcore_1(D)->dict, tmp77
	movq	%rax, -24(%rbp)	# tmp77, dict
	.loc 1 259 0
	movq	-56(%rbp), %rax	# kbcore, tmp78
	movq	24(%rax), %rax	# kbcore_1(D)->dict2pid, tmp79
	movq	%rax, -16(%rbp)	# tmp79, dict2pid
	.loc 1 261 0
	movq	-56(%rbp), %rax	# kbcore, tmp80
	movq	32(%rax), %rax	# kbcore_1(D)->lm, tmp81
	movq	%rax, -8(%rbp)	# tmp81, lm
	.loc 1 264 0
	movq	-8(%rbp), %rax	# lm, tmp82
	movq	%rax, %rdi	# tmp82,
	call	lm_free	#
	.loc 1 267 0
	movq	-24(%rbp), %rax	# dict, tmp83
	movq	%rax, %rdi	# tmp83,
	call	dict_free	#
	.loc 1 271 0
	movq	-16(%rbp), %rax	# dict2pid, tmp84
	movq	40(%rax), %rax	# dict2pid_5->comwt, D.6036
	movq	%rax, %rdi	# D.6036,
	call	ckd_free	#
	.loc 1 272 0
	movq	-16(%rbp), %rax	# dict2pid, tmp85
	movq	32(%rax), %rax	# dict2pid_5->comsseq, D.6037
	movq	%rax, %rdi	# D.6037,
	call	ckd_free	#
	.loc 1 273 0
	movq	-16(%rbp), %rax	# dict2pid, tmp86
	movq	24(%rax), %rax	# dict2pid_5->comstate, D.6037
	movq	%rax, %rdi	# D.6037,
	call	ckd_free	#
	.loc 1 274 0
	movq	-16(%rbp), %rax	# dict2pid, tmp87
	movq	16(%rax), %rax	# dict2pid_5->single_lc, D.6038
	movq	%rax, %rdi	# D.6038,
	call	ckd_free_2d	#
	.loc 1 275 0
	movq	-16(%rbp), %rax	# dict2pid, tmp88
	movq	8(%rax), %rax	# dict2pid_5->ldiph_lc, D.6039
	movq	%rax, %rdi	# D.6039,
	call	ckd_free_3d	#
	.loc 1 281 0
	movq	-16(%rbp), %rax	# dict2pid, tmp89
	movq	(%rax), %rax	# dict2pid_5->internal, D.6038
	movq	%rax, %rdi	# D.6038,
	call	ckd_free	#
	.loc 1 284 0
	movq	-32(%rbp), %rax	# mdef, tmp90
	movq	%rax, %rdi	# tmp90,
	call	mdef_free	#
	.loc 1 286 0
	movq	-56(%rbp), %rax	# kbcore, tmp91
	movq	48(%rax), %rax	# kbcore_1(D)->fillpen, D.6040
	movq	%rax, %rdi	# D.6040,
	call	fillpen_free	#
	.loc 1 288 0
	movq	-56(%rbp), %rax	# kbcore, tmp92
	movq	88(%rax), %rax	# kbcore_1(D)->tmat, D.6041
	movq	%rax, %rdi	# D.6041,
	call	tmat_free	#
	.loc 1 289 0
	movq	-56(%rbp), %rax	# kbcore, tmp93
	movq	72(%rax), %rax	# kbcore_1(D)->svq, D.6042
	movq	%rax, %rdi	# D.6042,
	call	subvq_free	#
	.loc 1 290 0
	movq	-56(%rbp), %rax	# kbcore, tmp94
	movq	64(%rax), %rax	# kbcore_1(D)->mgau, D.6043
	movq	%rax, %rdi	# D.6043,
	call	mgau_free	#
	.loc 1 293 0
	cmpq	$0, -40(%rbp)	#, fcb
	je	.L42	#,
	.loc 1 294 0
	movq	-40(%rbp), %rax	# fcb, tmp95
	movq	(%rax), %rax	# fcb_2->name, D.6044
	movq	%rax, %rdi	# D.6044,
	call	ckd_free	#
	.loc 1 295 0
	movq	-40(%rbp), %rax	# fcb, tmp96
	movq	24(%rax), %rax	# fcb_2->stream_len, D.6036
	movq	%rax, %rdi	# D.6036,
	call	ckd_free	#
	.loc 1 296 0
	movq	-40(%rbp), %rax	# fcb, tmp97
	movq	%rax, %rdi	# tmp97,
	call	ckd_free	#
.L42:
	.loc 1 300 0
	movl	$0, %eax	#,
	call	logs_free	#
	.loc 1 301 0
	movq	-56(%rbp), %rax	# kbcore, tmp98
	movq	(%rax), %rax	# kbcore_1(D)->fcb, D.6045
	movq	%rax, %rdi	# D.6045,
	call	feat_free	#
	.loc 1 304 0
	movq	-56(%rbp), %rax	# kbcore, tmp99
	movq	%rax, %rdi	# tmp99,
	call	ckd_free	#
	.loc 1 305 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	kbcore_free, .-kbcore_free
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "./libutil/prim_type.h"
	.file 7 "./libutil/hash.h"
	.file 8 "feat.h"
	.file 9 "cont_mgau.h"
	.file 10 "s3types.h"
	.file 11 "mdef.h"
	.file 12 "dict.h"
	.file 13 "dict2pid.h"
	.file 14 "fillpen.h"
	.file 15 "lmclass.h"
	.file 16 "lm.h"
	.file 17 "tmat.h"
	.file 18 "vector.h"
	.file 19 "subvq.h"
	.file 20 "gs.h"
	.file 21 "kbcore.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x13bb
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF276
	.byte	0x1
	.long	.LASF277
	.long	.LASF278
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
	.long	.LASF279
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
	.uleb128 0x6
	.byte	0x8
	.long	0x298
	.uleb128 0xd
	.long	0x95
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
	.byte	0x40
	.long	0x5b
	.uleb128 0x2
	.long	.LASF53
	.byte	0x6
	.byte	0x41
	.long	0x95
	.uleb128 0x2
	.long	.LASF54
	.byte	0x6
	.byte	0x42
	.long	0x4d
	.uleb128 0x2
	.long	.LASF55
	.byte	0x6
	.byte	0x43
	.long	0x46
	.uleb128 0x2
	.long	.LASF56
	.byte	0x6
	.byte	0x44
	.long	0x3f
	.uleb128 0x2
	.long	.LASF57
	.byte	0x6
	.byte	0x45
	.long	0x2ab
	.uleb128 0x2
	.long	.LASF58
	.byte	0x6
	.byte	0x46
	.long	0x2b2
	.uleb128 0x6
	.byte	0x8
	.long	0x2da
	.uleb128 0x7
	.long	.LASF59
	.byte	0x18
	.byte	0x7
	.byte	0x58
	.long	0x354
	.uleb128 0xe
	.string	"key"
	.byte	0x7
	.byte	0x59
	.long	0x292
	.byte	0
	.uleb128 0xe
	.string	"len"
	.byte	0x7
	.byte	0x5c
	.long	0x2b9
	.byte	0x8
	.uleb128 0xe
	.string	"val"
	.byte	0x7
	.byte	0x5e
	.long	0x2b9
	.byte	0xc
	.uleb128 0x8
	.long	.LASF60
	.byte	0x7
	.byte	0x5f
	.long	0x354
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x317
	.uleb128 0x2
	.long	.LASF61
	.byte	0x7
	.byte	0x60
	.long	0x317
	.uleb128 0xf
	.byte	0x10
	.byte	0x7
	.byte	0x62
	.long	0x392
	.uleb128 0x8
	.long	.LASF62
	.byte	0x7
	.byte	0x63
	.long	0x392
	.byte	0
	.uleb128 0x8
	.long	.LASF63
	.byte	0x7
	.byte	0x64
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF64
	.byte	0x7
	.byte	0x67
	.long	0x2f0
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x35a
	.uleb128 0x2
	.long	.LASF65
	.byte	0x7
	.byte	0x68
	.long	0x365
	.uleb128 0x7
	.long	.LASF66
	.byte	0x38
	.byte	0x8
	.byte	0x48
	.long	0x428
	.uleb128 0x8
	.long	.LASF67
	.byte	0x8
	.byte	0x49
	.long	0x8f
	.byte	0
	.uleb128 0x8
	.long	.LASF68
	.byte	0x8
	.byte	0x4a
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF69
	.byte	0x8
	.byte	0x4b
	.long	0x2b9
	.byte	0xc
	.uleb128 0x8
	.long	.LASF70
	.byte	0x8
	.byte	0x4c
	.long	0x2b9
	.byte	0x10
	.uleb128 0x8
	.long	.LASF71
	.byte	0x8
	.byte	0x4d
	.long	0x428
	.byte	0x18
	.uleb128 0x8
	.long	.LASF72
	.byte	0x8
	.byte	0x4e
	.long	0x2b9
	.byte	0x20
	.uleb128 0xe
	.string	"cmn"
	.byte	0x8
	.byte	0x50
	.long	0x2b9
	.byte	0x24
	.uleb128 0x8
	.long	.LASF73
	.byte	0x8
	.byte	0x51
	.long	0x2b9
	.byte	0x28
	.uleb128 0xe
	.string	"agc"
	.byte	0x8
	.byte	0x53
	.long	0x2b9
	.byte	0x2c
	.uleb128 0x8
	.long	.LASF74
	.byte	0x8
	.byte	0x54
	.long	0x455
	.byte	0x30
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2b9
	.uleb128 0x10
	.long	0x443
	.uleb128 0x11
	.long	0x443
	.uleb128 0x11
	.long	0x449
	.uleb128 0x11
	.long	0x449
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x3a3
	.uleb128 0x6
	.byte	0x8
	.long	0x44f
	.uleb128 0x6
	.byte	0x8
	.long	0x2fb
	.uleb128 0x6
	.byte	0x8
	.long	0x42e
	.uleb128 0x2
	.long	.LASF75
	.byte	0x8
	.byte	0x5a
	.long	0x3a3
	.uleb128 0xf
	.byte	0x28
	.byte	0x9
	.byte	0x5f
	.long	0x4ab
	.uleb128 0x8
	.long	.LASF76
	.byte	0x9
	.byte	0x60
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF77
	.byte	0x9
	.byte	0x62
	.long	0x449
	.byte	0x8
	.uleb128 0xe
	.string	"var"
	.byte	0x9
	.byte	0x63
	.long	0x449
	.byte	0x10
	.uleb128 0xe
	.string	"lrd"
	.byte	0x9
	.byte	0x66
	.long	0x44f
	.byte	0x18
	.uleb128 0x8
	.long	.LASF78
	.byte	0x9
	.byte	0x69
	.long	0x428
	.byte	0x20
	.byte	0
	.uleb128 0x2
	.long	.LASF79
	.byte	0x9
	.byte	0x6c
	.long	0x466
	.uleb128 0xf
	.byte	0x30
	.byte	0x9
	.byte	0x74
	.long	0x51f
	.uleb128 0x8
	.long	.LASF80
	.byte	0x9
	.byte	0x75
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF81
	.byte	0x9
	.byte	0x76
	.long	0x2b9
	.byte	0x4
	.uleb128 0x8
	.long	.LASF82
	.byte	0x9
	.byte	0x77
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF83
	.byte	0x9
	.byte	0x78
	.long	0x51f
	.byte	0x10
	.uleb128 0x8
	.long	.LASF84
	.byte	0x9
	.byte	0x79
	.long	0x306
	.byte	0x18
	.uleb128 0x8
	.long	.LASF85
	.byte	0x9
	.byte	0x7c
	.long	0x2b9
	.byte	0x20
	.uleb128 0x8
	.long	.LASF86
	.byte	0x9
	.byte	0x7d
	.long	0x2b9
	.byte	0x24
	.uleb128 0x8
	.long	.LASF87
	.byte	0x9
	.byte	0x7e
	.long	0x2b9
	.byte	0x28
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x4ab
	.uleb128 0x2
	.long	.LASF88
	.byte	0x9
	.byte	0x81
	.long	0x4b6
	.uleb128 0x2
	.long	.LASF89
	.byte	0xa
	.byte	0x4b
	.long	0x2cf
	.uleb128 0x2
	.long	.LASF90
	.byte	0xa
	.byte	0x51
	.long	0x2b9
	.uleb128 0x2
	.long	.LASF91
	.byte	0xa
	.byte	0x57
	.long	0x53b
	.uleb128 0x2
	.long	.LASF92
	.byte	0xa
	.byte	0x5d
	.long	0x2b9
	.uleb128 0x2
	.long	.LASF93
	.byte	0xa
	.byte	0x63
	.long	0x2b9
	.uleb128 0x2
	.long	.LASF94
	.byte	0xa
	.byte	0x69
	.long	0x2e5
	.uleb128 0x2
	.long	.LASF95
	.byte	0xa
	.byte	0x7b
	.long	0x2c4
	.uleb128 0x12
	.byte	0x4
	.byte	0xb
	.byte	0x48
	.long	0x5a4
	.uleb128 0x13
	.long	.LASF96
	.sleb128 0
	.uleb128 0x13
	.long	.LASF97
	.sleb128 1
	.uleb128 0x13
	.long	.LASF98
	.sleb128 2
	.uleb128 0x13
	.long	.LASF99
	.sleb128 3
	.uleb128 0x13
	.long	.LASF100
	.sleb128 4
	.byte	0
	.uleb128 0x2
	.long	.LASF101
	.byte	0xb
	.byte	0x4e
	.long	0x57d
	.uleb128 0xf
	.byte	0x10
	.byte	0xb
	.byte	0x54
	.long	0x5d0
	.uleb128 0x8
	.long	.LASF67
	.byte	0xb
	.byte	0x55
	.long	0x8f
	.byte	0
	.uleb128 0x8
	.long	.LASF102
	.byte	0xb
	.byte	0x56
	.long	0x2b9
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.long	.LASF103
	.byte	0xb
	.byte	0x58
	.long	0x5af
	.uleb128 0xf
	.byte	0x10
	.byte	0xb
	.byte	0x5e
	.long	0x629
	.uleb128 0x8
	.long	.LASF104
	.byte	0xb
	.byte	0x5f
	.long	0x546
	.byte	0
	.uleb128 0x8
	.long	.LASF105
	.byte	0xb
	.byte	0x62
	.long	0x551
	.byte	0x4
	.uleb128 0xe
	.string	"ci"
	.byte	0xb
	.byte	0x63
	.long	0x530
	.byte	0x8
	.uleb128 0xe
	.string	"lc"
	.byte	0xb
	.byte	0x63
	.long	0x530
	.byte	0x9
	.uleb128 0xe
	.string	"rc"
	.byte	0xb
	.byte	0x63
	.long	0x530
	.byte	0xa
	.uleb128 0x8
	.long	.LASF106
	.byte	0xb
	.byte	0x64
	.long	0x5a4
	.byte	0xc
	.byte	0
	.uleb128 0x2
	.long	.LASF107
	.byte	0xb
	.byte	0x65
	.long	0x5db
	.uleb128 0x7
	.long	.LASF108
	.byte	0x10
	.byte	0xb
	.byte	0x6c
	.long	0x664
	.uleb128 0xe
	.string	"rc"
	.byte	0xb
	.byte	0x6d
	.long	0x530
	.byte	0
	.uleb128 0xe
	.string	"pid"
	.byte	0xb
	.byte	0x6e
	.long	0x53b
	.byte	0x4
	.uleb128 0x8
	.long	.LASF60
	.byte	0xb
	.byte	0x6f
	.long	0x664
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x634
	.uleb128 0x2
	.long	.LASF109
	.byte	0xb
	.byte	0x70
	.long	0x634
	.uleb128 0x7
	.long	.LASF110
	.byte	0x18
	.byte	0xb
	.byte	0x72
	.long	0x6a5
	.uleb128 0xe
	.string	"lc"
	.byte	0xb
	.byte	0x73
	.long	0x530
	.byte	0
	.uleb128 0x8
	.long	.LASF111
	.byte	0xb
	.byte	0x74
	.long	0x6a5
	.byte	0x8
	.uleb128 0x8
	.long	.LASF60
	.byte	0xb
	.byte	0x75
	.long	0x6ab
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x66a
	.uleb128 0x6
	.byte	0x8
	.long	0x675
	.uleb128 0x2
	.long	.LASF112
	.byte	0xb
	.byte	0x76
	.long	0x675
	.uleb128 0xf
	.byte	0x68
	.byte	0xb
	.byte	0x7a
	.long	0x785
	.uleb128 0x8
	.long	.LASF113
	.byte	0xb
	.byte	0x7b
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF114
	.byte	0xb
	.byte	0x7c
	.long	0x2b9
	.byte	0x4
	.uleb128 0x8
	.long	.LASF115
	.byte	0xb
	.byte	0x7d
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF116
	.byte	0xb
	.byte	0x7e
	.long	0x2b9
	.byte	0xc
	.uleb128 0x8
	.long	.LASF117
	.byte	0xb
	.byte	0x7f
	.long	0x2b9
	.byte	0x10
	.uleb128 0x8
	.long	.LASF118
	.byte	0xb
	.byte	0x80
	.long	0x2b9
	.byte	0x14
	.uleb128 0x8
	.long	.LASF119
	.byte	0xb
	.byte	0x82
	.long	0x785
	.byte	0x18
	.uleb128 0x8
	.long	.LASF120
	.byte	0xb
	.byte	0x83
	.long	0x78b
	.byte	0x20
	.uleb128 0x8
	.long	.LASF121
	.byte	0xb
	.byte	0x84
	.long	0x791
	.byte	0x28
	.uleb128 0x8
	.long	.LASF122
	.byte	0xb
	.byte	0x85
	.long	0x797
	.byte	0x30
	.uleb128 0x8
	.long	.LASF123
	.byte	0xb
	.byte	0x87
	.long	0x2b9
	.byte	0x38
	.uleb128 0x8
	.long	.LASF124
	.byte	0xb
	.byte	0x89
	.long	0x79d
	.byte	0x40
	.uleb128 0x8
	.long	.LASF125
	.byte	0xb
	.byte	0x8c
	.long	0x7a3
	.byte	0x48
	.uleb128 0x8
	.long	.LASF126
	.byte	0xb
	.byte	0x8d
	.long	0x428
	.byte	0x50
	.uleb128 0xe
	.string	"sil"
	.byte	0xb
	.byte	0x8f
	.long	0x530
	.byte	0x58
	.uleb128 0x8
	.long	.LASF127
	.byte	0xb
	.byte	0x91
	.long	0x7a9
	.byte	0x60
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x398
	.uleb128 0x6
	.byte	0x8
	.long	0x5d0
	.uleb128 0x6
	.byte	0x8
	.long	0x629
	.uleb128 0x6
	.byte	0x8
	.long	0x79d
	.uleb128 0x6
	.byte	0x8
	.long	0x572
	.uleb128 0x6
	.byte	0x8
	.long	0x530
	.uleb128 0x6
	.byte	0x8
	.long	0x7af
	.uleb128 0x6
	.byte	0x8
	.long	0x7b5
	.uleb128 0x6
	.byte	0x8
	.long	0x6b1
	.uleb128 0x2
	.long	.LASF128
	.byte	0xb
	.byte	0x96
	.long	0x6bc
	.uleb128 0xf
	.byte	0x28
	.byte	0xc
	.byte	0x47
	.long	0x823
	.uleb128 0x8
	.long	.LASF129
	.byte	0xc
	.byte	0x48
	.long	0x8f
	.byte	0
	.uleb128 0x8
	.long	.LASF120
	.byte	0xc
	.byte	0x49
	.long	0x7a3
	.byte	0x8
	.uleb128 0x8
	.long	.LASF130
	.byte	0xc
	.byte	0x4a
	.long	0x2b9
	.byte	0x10
	.uleb128 0xe
	.string	"alt"
	.byte	0xc
	.byte	0x4b
	.long	0x55c
	.byte	0x14
	.uleb128 0x8
	.long	.LASF131
	.byte	0xc
	.byte	0x4c
	.long	0x55c
	.byte	0x18
	.uleb128 0x8
	.long	.LASF76
	.byte	0xc
	.byte	0x4d
	.long	0x2b9
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF132
	.byte	0xc
	.byte	0x51
	.long	0x823
	.byte	0x20
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x55c
	.uleb128 0x2
	.long	.LASF133
	.byte	0xc
	.byte	0x52
	.long	0x7c6
	.uleb128 0xf
	.byte	0x58
	.byte	0xc
	.byte	0x54
	.long	0x8e4
	.uleb128 0x8
	.long	.LASF134
	.byte	0xc
	.byte	0x55
	.long	0x8e4
	.byte	0
	.uleb128 0xe
	.string	"pht"
	.byte	0xc
	.byte	0x56
	.long	0x785
	.byte	0x8
	.uleb128 0x8
	.long	.LASF135
	.byte	0xc
	.byte	0x57
	.long	0x8ea
	.byte	0x10
	.uleb128 0x8
	.long	.LASF113
	.byte	0xc
	.byte	0x58
	.long	0x2b9
	.byte	0x18
	.uleb128 0x8
	.long	.LASF129
	.byte	0xc
	.byte	0x59
	.long	0x8f0
	.byte	0x20
	.uleb128 0xe
	.string	"ht"
	.byte	0xc
	.byte	0x5a
	.long	0x785
	.byte	0x28
	.uleb128 0x8
	.long	.LASF136
	.byte	0xc
	.byte	0x5b
	.long	0x2b9
	.byte	0x30
	.uleb128 0x8
	.long	.LASF137
	.byte	0xc
	.byte	0x5c
	.long	0x2b9
	.byte	0x34
	.uleb128 0x8
	.long	.LASF138
	.byte	0xc
	.byte	0x5d
	.long	0x2b9
	.byte	0x38
	.uleb128 0x8
	.long	.LASF139
	.byte	0xc
	.byte	0x5e
	.long	0x2b9
	.byte	0x3c
	.uleb128 0x8
	.long	.LASF140
	.byte	0xc
	.byte	0x5f
	.long	0x823
	.byte	0x40
	.uleb128 0x8
	.long	.LASF141
	.byte	0xc
	.byte	0x62
	.long	0x55c
	.byte	0x48
	.uleb128 0x8
	.long	.LASF142
	.byte	0xc
	.byte	0x63
	.long	0x55c
	.byte	0x4c
	.uleb128 0x8
	.long	.LASF143
	.byte	0xc
	.byte	0x64
	.long	0x55c
	.byte	0x50
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x7bb
	.uleb128 0x6
	.byte	0x8
	.long	0x8f
	.uleb128 0x6
	.byte	0x8
	.long	0x829
	.uleb128 0x2
	.long	.LASF144
	.byte	0xc
	.byte	0x65
	.long	0x834
	.uleb128 0xf
	.byte	0x38
	.byte	0xd
	.byte	0x63
	.long	0x96a
	.uleb128 0x8
	.long	.LASF145
	.byte	0xd
	.byte	0x64
	.long	0x96a
	.byte	0
	.uleb128 0x8
	.long	.LASF146
	.byte	0xd
	.byte	0x67
	.long	0x976
	.byte	0x8
	.uleb128 0x8
	.long	.LASF147
	.byte	0xd
	.byte	0x69
	.long	0x96a
	.byte	0x10
	.uleb128 0x8
	.long	.LASF148
	.byte	0xd
	.byte	0x6c
	.long	0x797
	.byte	0x18
	.uleb128 0x8
	.long	.LASF149
	.byte	0xd
	.byte	0x6e
	.long	0x797
	.byte	0x20
	.uleb128 0x8
	.long	.LASF150
	.byte	0xd
	.byte	0x70
	.long	0x428
	.byte	0x28
	.uleb128 0x8
	.long	.LASF151
	.byte	0xd
	.byte	0x72
	.long	0x2b9
	.byte	0x30
	.uleb128 0x8
	.long	.LASF152
	.byte	0xd
	.byte	0x73
	.long	0x2b9
	.byte	0x34
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x970
	.uleb128 0x6
	.byte	0x8
	.long	0x546
	.uleb128 0x6
	.byte	0x8
	.long	0x96a
	.uleb128 0x2
	.long	.LASF153
	.byte	0xd
	.byte	0x74
	.long	0x901
	.uleb128 0xf
	.byte	0x20
	.byte	0xe
	.byte	0x3e
	.long	0x9bf
	.uleb128 0x8
	.long	.LASF154
	.byte	0xe
	.byte	0x3f
	.long	0x9bf
	.byte	0
	.uleb128 0x8
	.long	.LASF155
	.byte	0xe
	.byte	0x41
	.long	0x428
	.byte	0x8
	.uleb128 0xe
	.string	"lw"
	.byte	0xe
	.byte	0x43
	.long	0x306
	.byte	0x10
	.uleb128 0xe
	.string	"wip"
	.byte	0xe
	.byte	0x44
	.long	0x306
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x8f6
	.uleb128 0x2
	.long	.LASF156
	.byte	0xe
	.byte	0x45
	.long	0x987
	.uleb128 0x7
	.long	.LASF157
	.byte	0x18
	.byte	0xf
	.byte	0x42
	.long	0xa0d
	.uleb128 0x8
	.long	.LASF129
	.byte	0xf
	.byte	0x43
	.long	0x8f
	.byte	0
	.uleb128 0x8
	.long	.LASF158
	.byte	0xf
	.byte	0x44
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF159
	.byte	0xf
	.byte	0x46
	.long	0x2b9
	.byte	0xc
	.uleb128 0x8
	.long	.LASF60
	.byte	0xf
	.byte	0x47
	.long	0xa0d
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x9d0
	.uleb128 0x2
	.long	.LASF160
	.byte	0xf
	.byte	0x49
	.long	0xa0d
	.uleb128 0x7
	.long	.LASF161
	.byte	0x18
	.byte	0xf
	.byte	0x4f
	.long	0xa4f
	.uleb128 0x8
	.long	.LASF67
	.byte	0xf
	.byte	0x50
	.long	0x8f
	.byte	0
	.uleb128 0x8
	.long	.LASF162
	.byte	0xf
	.byte	0x51
	.long	0xa13
	.byte	0x8
	.uleb128 0x8
	.long	.LASF60
	.byte	0xf
	.byte	0x52
	.long	0xa4f
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xa1e
	.uleb128 0x2
	.long	.LASF163
	.byte	0xf
	.byte	0x54
	.long	0xa4f
	.uleb128 0x14
	.byte	0x4
	.byte	0x10
	.byte	0x4d
	.long	0xa7b
	.uleb128 0x15
	.string	"f"
	.byte	0x10
	.byte	0x4e
	.long	0x2fb
	.uleb128 0x15
	.string	"l"
	.byte	0x10
	.byte	0x4f
	.long	0x2b9
	.byte	0
	.uleb128 0x2
	.long	.LASF164
	.byte	0x10
	.byte	0x50
	.long	0xa60
	.uleb128 0xf
	.byte	0x10
	.byte	0x10
	.byte	0x52
	.long	0xabf
	.uleb128 0x8
	.long	.LASF158
	.byte	0x10
	.byte	0x53
	.long	0x55c
	.byte	0
	.uleb128 0x8
	.long	.LASF155
	.byte	0x10
	.byte	0x57
	.long	0xa7b
	.byte	0x4
	.uleb128 0x8
	.long	.LASF165
	.byte	0x10
	.byte	0x58
	.long	0xa7b
	.byte	0x8
	.uleb128 0x8
	.long	.LASF166
	.byte	0x10
	.byte	0x59
	.long	0x2b9
	.byte	0xc
	.byte	0
	.uleb128 0x2
	.long	.LASF167
	.byte	0x10
	.byte	0x5a
	.long	0xa86
	.uleb128 0xf
	.byte	0x8
	.byte	0x10
	.byte	0x5c
	.long	0xb03
	.uleb128 0xe
	.string	"wid"
	.byte	0x10
	.byte	0x5d
	.long	0x567
	.byte	0
	.uleb128 0x8
	.long	.LASF168
	.byte	0x10
	.byte	0x5e
	.long	0x2e5
	.byte	0x2
	.uleb128 0x8
	.long	.LASF169
	.byte	0x10
	.byte	0x5f
	.long	0x2e5
	.byte	0x4
	.uleb128 0x8
	.long	.LASF170
	.byte	0x10
	.byte	0x60
	.long	0x2e5
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.long	.LASF171
	.byte	0x10
	.byte	0x61
	.long	0xaca
	.uleb128 0xf
	.byte	0x4
	.byte	0x10
	.byte	0x63
	.long	0xb2f
	.uleb128 0xe
	.string	"wid"
	.byte	0x10
	.byte	0x64
	.long	0x567
	.byte	0
	.uleb128 0x8
	.long	.LASF168
	.byte	0x10
	.byte	0x65
	.long	0x2e5
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF172
	.byte	0x10
	.byte	0x66
	.long	0xb0e
	.uleb128 0xf
	.byte	0x10
	.byte	0x10
	.byte	0x6c
	.long	0xb5a
	.uleb128 0xe
	.string	"bg"
	.byte	0x10
	.byte	0x6d
	.long	0xb5a
	.byte	0
	.uleb128 0x8
	.long	.LASF173
	.byte	0x10
	.byte	0x6e
	.long	0x2b9
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xb03
	.uleb128 0x2
	.long	.LASF174
	.byte	0x10
	.byte	0x70
	.long	0xb3a
	.uleb128 0x7
	.long	.LASF175
	.byte	0x20
	.byte	0x10
	.byte	0x7a
	.long	0xbbe
	.uleb128 0xe
	.string	"w1"
	.byte	0x10
	.byte	0x7b
	.long	0x567
	.byte	0
	.uleb128 0x8
	.long	.LASF176
	.byte	0x10
	.byte	0x7d
	.long	0x2b9
	.byte	0x4
	.uleb128 0xe
	.string	"tg"
	.byte	0x10
	.byte	0x7e
	.long	0xbbe
	.byte	0x8
	.uleb128 0x8
	.long	.LASF165
	.byte	0x10
	.byte	0x7f
	.long	0x2b9
	.byte	0x10
	.uleb128 0x8
	.long	.LASF173
	.byte	0x10
	.byte	0x80
	.long	0x2b9
	.byte	0x14
	.uleb128 0x8
	.long	.LASF60
	.byte	0x10
	.byte	0x81
	.long	0xbc4
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xb2f
	.uleb128 0x6
	.byte	0x8
	.long	0xb6b
	.uleb128 0x2
	.long	.LASF177
	.byte	0x10
	.byte	0x82
	.long	0xb6b
	.uleb128 0xf
	.byte	0xc
	.byte	0x10
	.byte	0x88
	.long	0xbf6
	.uleb128 0x8
	.long	.LASF178
	.byte	0x10
	.byte	0x89
	.long	0xbf6
	.byte	0
	.uleb128 0x8
	.long	.LASF179
	.byte	0x10
	.byte	0x8a
	.long	0x2b9
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.long	0x567
	.long	0xc06
	.uleb128 0xc
	.long	0x86
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF180
	.byte	0x10
	.byte	0x8b
	.long	0xbd5
	.uleb128 0x7
	.long	.LASF181
	.byte	0xf8
	.byte	0x10
	.byte	0xb4
	.long	0xe1d
	.uleb128 0x8
	.long	.LASF182
	.byte	0x10
	.byte	0xb5
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF183
	.byte	0x10
	.byte	0xb6
	.long	0x2b9
	.byte	0x4
	.uleb128 0x8
	.long	.LASF176
	.byte	0x10
	.byte	0xb7
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF184
	.byte	0x10
	.byte	0xb8
	.long	0x2b9
	.byte	0xc
	.uleb128 0x8
	.long	.LASF185
	.byte	0x10
	.byte	0xba
	.long	0x8ea
	.byte	0x10
	.uleb128 0x8
	.long	.LASF186
	.byte	0x10
	.byte	0xbc
	.long	0x567
	.byte	0x18
	.uleb128 0x8
	.long	.LASF187
	.byte	0x10
	.byte	0xbd
	.long	0x567
	.byte	0x1a
	.uleb128 0x8
	.long	.LASF188
	.byte	0x10
	.byte	0xbf
	.long	0x2b9
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF189
	.byte	0x10
	.byte	0xc0
	.long	0x2b9
	.byte	0x20
	.uleb128 0xe
	.string	"ug"
	.byte	0x10
	.byte	0xc2
	.long	0xe1d
	.byte	0x28
	.uleb128 0xe
	.string	"bg"
	.byte	0x10
	.byte	0xc3
	.long	0xb5a
	.byte	0x30
	.uleb128 0xe
	.string	"tg"
	.byte	0x10
	.byte	0xc4
	.long	0xbbe
	.byte	0x38
	.uleb128 0x8
	.long	.LASF190
	.byte	0x10
	.byte	0xc5
	.long	0xe23
	.byte	0x40
	.uleb128 0x8
	.long	.LASF191
	.byte	0x10
	.byte	0xc6
	.long	0xe29
	.byte	0x48
	.uleb128 0x8
	.long	.LASF192
	.byte	0x10
	.byte	0xc8
	.long	0xe35
	.byte	0x50
	.uleb128 0x8
	.long	.LASF193
	.byte	0x10
	.byte	0xc9
	.long	0xe35
	.byte	0x58
	.uleb128 0x8
	.long	.LASF194
	.byte	0x10
	.byte	0xca
	.long	0xe35
	.byte	0x60
	.uleb128 0x8
	.long	.LASF195
	.byte	0x10
	.byte	0xcb
	.long	0x428
	.byte	0x68
	.uleb128 0x8
	.long	.LASF196
	.byte	0x10
	.byte	0xcd
	.long	0x2b9
	.byte	0x70
	.uleb128 0x8
	.long	.LASF197
	.byte	0x10
	.byte	0xce
	.long	0x2b9
	.byte	0x74
	.uleb128 0x8
	.long	.LASF198
	.byte	0x10
	.byte	0xcf
	.long	0x2b9
	.byte	0x78
	.uleb128 0xe
	.string	"fp"
	.byte	0x10
	.byte	0xd1
	.long	0xe3b
	.byte	0x80
	.uleb128 0x8
	.long	.LASF199
	.byte	0x10
	.byte	0xd2
	.long	0x2b9
	.byte	0x88
	.uleb128 0x8
	.long	.LASF200
	.byte	0x10
	.byte	0xd3
	.long	0x2b9
	.byte	0x8c
	.uleb128 0x8
	.long	.LASF201
	.byte	0x10
	.byte	0xd4
	.long	0x2b9
	.byte	0x90
	.uleb128 0xe
	.string	"lw"
	.byte	0x10
	.byte	0xd6
	.long	0x2fb
	.byte	0x94
	.uleb128 0xe
	.string	"wip"
	.byte	0x10
	.byte	0xd7
	.long	0x2b9
	.byte	0x98
	.uleb128 0x8
	.long	.LASF202
	.byte	0x10
	.byte	0xdd
	.long	0xe41
	.byte	0xa0
	.uleb128 0x8
	.long	.LASF203
	.byte	0x10
	.byte	0xe0
	.long	0x2b9
	.byte	0xa8
	.uleb128 0x8
	.long	.LASF204
	.byte	0x10
	.byte	0xe1
	.long	0x2b9
	.byte	0xac
	.uleb128 0x8
	.long	.LASF205
	.byte	0x10
	.byte	0xe2
	.long	0x2b9
	.byte	0xb0
	.uleb128 0x8
	.long	.LASF206
	.byte	0x10
	.byte	0xe3
	.long	0x2b9
	.byte	0xb4
	.uleb128 0x8
	.long	.LASF207
	.byte	0x10
	.byte	0xe4
	.long	0x2b9
	.byte	0xb8
	.uleb128 0x8
	.long	.LASF208
	.byte	0x10
	.byte	0xe5
	.long	0x2b9
	.byte	0xbc
	.uleb128 0x8
	.long	.LASF209
	.byte	0x10
	.byte	0xe6
	.long	0x2b9
	.byte	0xc0
	.uleb128 0x8
	.long	.LASF210
	.byte	0x10
	.byte	0xe7
	.long	0x2b9
	.byte	0xc4
	.uleb128 0x8
	.long	.LASF211
	.byte	0x10
	.byte	0xe8
	.long	0x2b9
	.byte	0xc8
	.uleb128 0x8
	.long	.LASF212
	.byte	0x10
	.byte	0xea
	.long	0x2b9
	.byte	0xcc
	.uleb128 0x8
	.long	.LASF213
	.byte	0x10
	.byte	0xef
	.long	0xe47
	.byte	0xd0
	.uleb128 0x8
	.long	.LASF214
	.byte	0x10
	.byte	0xf2
	.long	0x2b9
	.byte	0xd8
	.uleb128 0x8
	.long	.LASF215
	.byte	0x10
	.byte	0xf4
	.long	0xe4d
	.byte	0xe0
	.uleb128 0x8
	.long	.LASF216
	.byte	0x10
	.byte	0xf5
	.long	0x2b9
	.byte	0xe8
	.uleb128 0x8
	.long	.LASF217
	.byte	0x10
	.byte	0xf6
	.long	0x428
	.byte	0xf0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xabf
	.uleb128 0x6
	.byte	0x8
	.long	0xb60
	.uleb128 0x6
	.byte	0x8
	.long	0xe2f
	.uleb128 0x6
	.byte	0x8
	.long	0xbca
	.uleb128 0x6
	.byte	0x8
	.long	0xa7b
	.uleb128 0x6
	.byte	0x8
	.long	0x9c
	.uleb128 0x6
	.byte	0x8
	.long	0xc06
	.uleb128 0x6
	.byte	0x8
	.long	0x567
	.uleb128 0x6
	.byte	0x8
	.long	0xa55
	.uleb128 0x2
	.long	.LASF218
	.byte	0x10
	.byte	0xf8
	.long	0xc11
	.uleb128 0x7
	.long	.LASF219
	.byte	0x10
	.byte	0x10
	.byte	0xfb
	.long	0xe82
	.uleb128 0x8
	.long	.LASF67
	.byte	0x10
	.byte	0xfc
	.long	0x8f
	.byte	0
	.uleb128 0xe
	.string	"lm"
	.byte	0x10
	.byte	0xfd
	.long	0xe82
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xe53
	.uleb128 0x2
	.long	.LASF220
	.byte	0x10
	.byte	0xfe
	.long	0xe5e
	.uleb128 0xf
	.byte	0x10
	.byte	0x11
	.byte	0x4a
	.long	0xebf
	.uleb128 0xe
	.string	"tp"
	.byte	0x11
	.byte	0x4b
	.long	0xebf
	.byte	0
	.uleb128 0x8
	.long	.LASF118
	.byte	0x11
	.byte	0x4d
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF221
	.byte	0x11
	.byte	0x4e
	.long	0x2b9
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xec5
	.uleb128 0x6
	.byte	0x8
	.long	0x428
	.uleb128 0x2
	.long	.LASF222
	.byte	0x11
	.byte	0x50
	.long	0xe93
	.uleb128 0xf
	.byte	0x8
	.byte	0x12
	.byte	0x47
	.long	0xef3
	.uleb128 0xe
	.string	"r"
	.byte	0x12
	.byte	0x48
	.long	0x2b9
	.byte	0
	.uleb128 0xe
	.string	"c"
	.byte	0x12
	.byte	0x49
	.long	0x2b9
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.long	.LASF223
	.byte	0x12
	.byte	0x4a
	.long	0xed6
	.uleb128 0xf
	.byte	0x28
	.byte	0x12
	.byte	0xf0
	.long	0xf4f
	.uleb128 0x8
	.long	.LASF224
	.byte	0x12
	.byte	0xf1
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF82
	.byte	0x12
	.byte	0xf2
	.long	0x2b9
	.byte	0x4
	.uleb128 0x8
	.long	.LASF77
	.byte	0x12
	.byte	0xf3
	.long	0x449
	.byte	0x8
	.uleb128 0xe
	.string	"var"
	.byte	0x12
	.byte	0xf4
	.long	0x449
	.byte	0x10
	.uleb128 0xe
	.string	"lrd"
	.byte	0x12
	.byte	0xf5
	.long	0x44f
	.byte	0x18
	.uleb128 0x8
	.long	.LASF84
	.byte	0x12
	.byte	0xf6
	.long	0x306
	.byte	0x20
	.byte	0
	.uleb128 0x2
	.long	.LASF225
	.byte	0x12
	.byte	0xf8
	.long	0xefe
	.uleb128 0xf
	.byte	0x48
	.byte	0x13
	.byte	0x52
	.long	0xfdb
	.uleb128 0x8
	.long	.LASF226
	.byte	0x13
	.byte	0x53
	.long	0xef3
	.byte	0
	.uleb128 0x8
	.long	.LASF227
	.byte	0x13
	.byte	0x55
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF228
	.byte	0x13
	.byte	0x56
	.long	0x2b9
	.byte	0xc
	.uleb128 0x8
	.long	.LASF229
	.byte	0x13
	.byte	0x57
	.long	0xec5
	.byte	0x10
	.uleb128 0x8
	.long	.LASF230
	.byte	0x13
	.byte	0x58
	.long	0xfdb
	.byte	0x18
	.uleb128 0xe
	.string	"map"
	.byte	0x13
	.byte	0x59
	.long	0xebf
	.byte	0x20
	.uleb128 0x8
	.long	.LASF231
	.byte	0x13
	.byte	0x60
	.long	0x44f
	.byte	0x28
	.uleb128 0x8
	.long	.LASF232
	.byte	0x13
	.byte	0x61
	.long	0xec5
	.byte	0x30
	.uleb128 0x8
	.long	.LASF233
	.byte	0x13
	.byte	0x63
	.long	0x428
	.byte	0x38
	.uleb128 0x8
	.long	.LASF234
	.byte	0x13
	.byte	0x64
	.long	0x428
	.byte	0x40
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xf4f
	.uleb128 0x2
	.long	.LASF235
	.byte	0x13
	.byte	0x65
	.long	0xf5a
	.uleb128 0x7
	.long	.LASF236
	.byte	0x38
	.byte	0x14
	.byte	0x3c
	.long	0x1070
	.uleb128 0x8
	.long	.LASF80
	.byte	0x14
	.byte	0x3d
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF237
	.byte	0x14
	.byte	0x3e
	.long	0x2b9
	.byte	0x4
	.uleb128 0x8
	.long	.LASF238
	.byte	0x14
	.byte	0x3f
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF239
	.byte	0x14
	.byte	0x40
	.long	0x2b9
	.byte	0xc
	.uleb128 0x8
	.long	.LASF240
	.byte	0x14
	.byte	0x41
	.long	0x2b9
	.byte	0x10
	.uleb128 0x8
	.long	.LASF241
	.byte	0x14
	.byte	0x42
	.long	0x2b9
	.byte	0x14
	.uleb128 0x8
	.long	.LASF242
	.byte	0x14
	.byte	0x43
	.long	0x449
	.byte	0x18
	.uleb128 0x8
	.long	.LASF243
	.byte	0x14
	.byte	0x44
	.long	0x1070
	.byte	0x20
	.uleb128 0xe
	.string	"fp"
	.byte	0x14
	.byte	0x45
	.long	0xe3b
	.byte	0x28
	.uleb128 0x8
	.long	.LASF234
	.byte	0x14
	.byte	0x46
	.long	0x428
	.byte	0x30
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1076
	.uleb128 0x6
	.byte	0x8
	.long	0x311
	.uleb128 0x2
	.long	.LASF244
	.byte	0x14
	.byte	0x47
	.long	0xfec
	.uleb128 0xf
	.byte	0x68
	.byte	0x15
	.byte	0x50
	.long	0x1136
	.uleb128 0xe
	.string	"fcb"
	.byte	0x15
	.byte	0x51
	.long	0x1136
	.byte	0
	.uleb128 0x8
	.long	.LASF134
	.byte	0x15
	.byte	0x52
	.long	0x8e4
	.byte	0x8
	.uleb128 0x8
	.long	.LASF154
	.byte	0x15
	.byte	0x53
	.long	0x9bf
	.byte	0x10
	.uleb128 0x8
	.long	.LASF245
	.byte	0x15
	.byte	0x54
	.long	0x113c
	.byte	0x18
	.uleb128 0xe
	.string	"lm"
	.byte	0x15
	.byte	0x55
	.long	0xe82
	.byte	0x20
	.uleb128 0x8
	.long	.LASF246
	.byte	0x15
	.byte	0x56
	.long	0x1142
	.byte	0x28
	.uleb128 0x8
	.long	.LASF247
	.byte	0x15
	.byte	0x57
	.long	0x1148
	.byte	0x30
	.uleb128 0x8
	.long	.LASF213
	.byte	0x15
	.byte	0x58
	.long	0xe47
	.byte	0x38
	.uleb128 0x8
	.long	.LASF83
	.byte	0x15
	.byte	0x59
	.long	0x114e
	.byte	0x40
	.uleb128 0xe
	.string	"svq"
	.byte	0x15
	.byte	0x5a
	.long	0x1154
	.byte	0x48
	.uleb128 0xe
	.string	"gs"
	.byte	0x15
	.byte	0x5b
	.long	0x115a
	.byte	0x50
	.uleb128 0x8
	.long	.LASF105
	.byte	0x15
	.byte	0x5c
	.long	0x1160
	.byte	0x58
	.uleb128 0x8
	.long	.LASF248
	.byte	0x15
	.byte	0x5d
	.long	0x2b9
	.byte	0x60
	.uleb128 0x8
	.long	.LASF249
	.byte	0x15
	.byte	0x5e
	.long	0x2b9
	.byte	0x64
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x45b
	.uleb128 0x6
	.byte	0x8
	.long	0x97c
	.uleb128 0x6
	.byte	0x8
	.long	0xe88
	.uleb128 0x6
	.byte	0x8
	.long	0x9c5
	.uleb128 0x6
	.byte	0x8
	.long	0x525
	.uleb128 0x6
	.byte	0x8
	.long	0xfe1
	.uleb128 0x6
	.byte	0x8
	.long	0x107c
	.uleb128 0x6
	.byte	0x8
	.long	0xecb
	.uleb128 0x2
	.long	.LASF250
	.byte	0x15
	.byte	0x5f
	.long	0x1087
	.uleb128 0x16
	.long	.LASF280
	.byte	0x1
	.byte	0x3f
	.long	0x1345
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x1345
	.uleb128 0x17
	.long	.LASF251
	.byte	0x1
	.byte	0x3f
	.long	0x306
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x17
	.long	.LASF252
	.byte	0x1
	.byte	0x40
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.string	"cmn"
	.byte	0x1
	.byte	0x41
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x17
	.long	.LASF73
	.byte	0x1
	.byte	0x42
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x18
	.string	"agc"
	.byte	0x1
	.byte	0x43
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x17
	.long	.LASF253
	.byte	0x1
	.byte	0x44
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x17
	.long	.LASF254
	.byte	0x1
	.byte	0x45
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x17
	.long	.LASF255
	.byte	0x1
	.byte	0x46
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.long	.LASF256
	.byte	0x1
	.byte	0x47
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x17
	.long	.LASF257
	.byte	0x1
	.byte	0x48
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x17
	.long	.LASF258
	.byte	0x1
	.byte	0x49
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x17
	.long	.LASF259
	.byte	0x1
	.byte	0x4a
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x17
	.long	.LASF260
	.byte	0x1
	.byte	0x4b
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x17
	.long	.LASF261
	.byte	0x1
	.byte	0x4c
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 48
	.uleb128 0x17
	.long	.LASF262
	.byte	0x1
	.byte	0x4d
	.long	0x306
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x17
	.long	.LASF263
	.byte	0x1
	.byte	0x4e
	.long	0x306
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x17
	.long	.LASF264
	.byte	0x1
	.byte	0x4f
	.long	0x306
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x17
	.long	.LASF265
	.byte	0x1
	.byte	0x50
	.long	0x306
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x18
	.string	"uw"
	.byte	0x1
	.byte	0x51
	.long	0x306
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x17
	.long	.LASF266
	.byte	0x1
	.byte	0x52
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 56
	.uleb128 0x17
	.long	.LASF267
	.byte	0x1
	.byte	0x53
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 64
	.uleb128 0x17
	.long	.LASF268
	.byte	0x1
	.byte	0x54
	.long	0x306
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x17
	.long	.LASF269
	.byte	0x1
	.byte	0x55
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 72
	.uleb128 0x17
	.long	.LASF270
	.byte	0x1
	.byte	0x56
	.long	0x306
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x17
	.long	.LASF271
	.byte	0x1
	.byte	0x57
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 80
	.uleb128 0x17
	.long	.LASF272
	.byte	0x1
	.byte	0x58
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 88
	.uleb128 0x17
	.long	.LASF273
	.byte	0x1
	.byte	0x59
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 96
	.uleb128 0x17
	.long	.LASF274
	.byte	0x1
	.byte	0x5a
	.long	0x306
	.uleb128 0x3
	.byte	0x91
	.sleb128 104
	.uleb128 0x19
	.string	"kb"
	.byte	0x1
	.byte	0x5c
	.long	0x1345
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.byte	0x5d
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1166
	.uleb128 0x1a
	.long	.LASF281
	.byte	0x1
	.byte	0xfe
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x17
	.long	.LASF275
	.byte	0x1
	.byte	0xfe
	.long	0x1345
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1b
	.string	"fcb"
	.byte	0x1
	.value	0x100
	.long	0x1136
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1c
	.long	.LASF134
	.byte	0x1
	.value	0x101
	.long	0x8e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1c
	.long	.LASF154
	.byte	0x1
	.value	0x102
	.long	0x9bf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1c
	.long	.LASF245
	.byte	0x1
	.value	0x103
	.long	0x113c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1b
	.string	"lm"
	.byte	0x1
	.value	0x105
	.long	0xe82
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.byte	0
	.byte	0
	.uleb128 0x1b
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
.LASF251:
	.string	"logbase"
.LASF7:
	.string	"size_t"
.LASF238:
	.string	"n_code"
.LASF10:
	.string	"sizetype"
.LASF122:
	.string	"sseq"
.LASF193:
	.string	"tgprob"
.LASF173:
	.string	"used"
.LASF131:
	.string	"basewid"
.LASF95:
	.string	"s3senid_t"
.LASF128:
	.string	"mdef_t"
.LASF154:
	.string	"dict"
.LASF24:
	.string	"_IO_save_end"
.LASF243:
	.string	"codemap"
.LASF54:
	.string	"uint32"
.LASF195:
	.string	"tg_segbase"
.LASF117:
	.string	"n_sen"
.LASF149:
	.string	"comsseq"
.LASF17:
	.string	"_IO_write_base"
.LASF132:
	.string	"comp"
.LASF259:
	.string	"lmdumpdir"
.LASF33:
	.string	"_lock"
.LASF205:
	.string	"n_bg_score"
.LASF228:
	.string	"vqsize"
.LASF178:
	.string	"lwid"
.LASF22:
	.string	"_IO_save_base"
.LASF96:
	.string	"WORD_POSN_BEGIN"
.LASF88:
	.string	"mgau_model_t"
.LASF53:
	.string	"int8"
.LASF72:
	.string	"window_size"
.LASF26:
	.string	"_chain"
.LASF203:
	.string	"n_bg_fill"
.LASF30:
	.string	"_cur_column"
.LASF83:
	.string	"mgau"
.LASF215:
	.string	"lmclass"
.LASF153:
	.string	"dict2pid_t"
.LASF68:
	.string	"cepsize"
.LASF80:
	.string	"n_mgau"
.LASF104:
	.string	"ssid"
.LASF235:
	.string	"subvq_t"
.LASF6:
	.string	"long int"
.LASF81:
	.string	"max_comp"
.LASF230:
	.string	"gautbl"
.LASF135:
	.string	"ciphone_str"
.LASF65:
	.string	"hash_table_t"
.LASF249:
	.string	"n_alloclm"
.LASF43:
	.string	"_IO_marker"
.LASF57:
	.string	"float32"
.LASF257:
	.string	"lmfile"
.LASF274:
	.string	"tmatfloor"
.LASF200:
	.string	"bgoff"
.LASF120:
	.string	"ciphone"
.LASF105:
	.string	"tmat"
.LASF94:
	.string	"s3lmwid_t"
.LASF209:
	.string	"n_tg_score"
.LASF142:
	.string	"finishwid"
.LASF70:
	.string	"n_stream"
.LASF210:
	.string	"n_tg_bo"
.LASF4:
	.string	"signed char"
.LASF255:
	.string	"fdictfile"
.LASF42:
	.string	"_IO_FILE"
.LASF233:
	.string	"gauscore"
.LASF107:
	.string	"phone_t"
.LASF1:
	.string	"unsigned char"
.LASF150:
	.string	"comwt"
.LASF172:
	.string	"tg_t"
.LASF174:
	.string	"membg_t"
.LASF151:
	.string	"n_comstate"
.LASF211:
	.string	"n_tgcache_hit"
.LASF102:
	.string	"filler"
.LASF141:
	.string	"startwid"
.LASF189:
	.string	"bg_seg_sz"
.LASF62:
	.string	"table"
.LASF11:
	.string	"char"
.LASF166:
	.string	"firstbg"
.LASF93:
	.string	"s3wid_t"
.LASF240:
	.string	"n_featlen"
.LASF78:
	.string	"mixw"
.LASF162:
	.string	"wordlist"
.LASF226:
	.string	"origsize"
.LASF219:
	.string	"lmset_s"
.LASF220:
	.string	"lmset_t"
.LASF279:
	.string	"_IO_lock_t"
.LASF267:
	.string	"varfile"
.LASF138:
	.string	"filler_start"
.LASF110:
	.string	"ph_lc_s"
.LASF112:
	.string	"ph_lc_t"
.LASF232:
	.string	"vqdist"
.LASF152:
	.string	"n_comsseq"
.LASF155:
	.string	"prob"
.LASF271:
	.string	"subvqfile"
.LASF14:
	.string	"_IO_read_ptr"
.LASF148:
	.string	"comstate"
.LASF123:
	.string	"n_sseq"
.LASF46:
	.string	"_pos"
.LASF108:
	.string	"ph_rc_s"
.LASF109:
	.string	"ph_rc_t"
.LASF261:
	.string	"senmgau"
.LASF85:
	.string	"frm_sen_eval"
.LASF139:
	.string	"filler_end"
.LASF25:
	.string	"_markers"
.LASF147:
	.string	"single_lc"
.LASF124:
	.string	"cd2cisen"
.LASF156:
	.string	"fillpen_t"
.LASF192:
	.string	"bgprob"
.LASF90:
	.string	"s3pid_t"
.LASF216:
	.string	"n_lmclass"
.LASF204:
	.string	"n_bg_inmem"
.LASF248:
	.string	"n_lm"
.LASF34:
	.string	"_offset"
.LASF280:
	.string	"kbcore_init"
.LASF268:
	.string	"varfloor"
.LASF207:
	.string	"n_tg_fill"
.LASF191:
	.string	"tginfo"
.LASF222:
	.string	"tmat_t"
.LASF184:
	.string	"max_ug"
.LASF0:
	.string	"long unsigned int"
.LASF167:
	.string	"ug_t"
.LASF113:
	.string	"n_ciphone"
.LASF269:
	.string	"mixwfile"
.LASF264:
	.string	"langwt"
.LASF28:
	.string	"_flags2"
.LASF175:
	.string	"tginfo_s"
.LASF177:
	.string	"tginfo_t"
.LASF16:
	.string	"_IO_read_base"
.LASF273:
	.string	"tmatfile"
.LASF133:
	.string	"dictword_t"
.LASF236:
	.string	"gs_s"
.LASF244:
	.string	"gs_t"
.LASF41:
	.string	"_unused2"
.LASF246:
	.string	"lmset"
.LASF92:
	.string	"s3tmatid_t"
.LASF214:
	.string	"dict_size"
.LASF29:
	.string	"_old_offset"
.LASF208:
	.string	"n_tg_inmem"
.LASF101:
	.string	"word_posn_t"
.LASF260:
	.string	"fillpenfile"
.LASF198:
	.string	"n_tgbowt"
.LASF157:
	.string	"lmclass_word_s"
.LASF160:
	.string	"lmclass_word_t"
.LASF47:
	.string	"long long int"
.LASF224:
	.string	"n_gau"
.LASF50:
	.string	"double"
.LASF145:
	.string	"internal"
.LASF127:
	.string	"wpos_ci_lclist"
.LASF19:
	.string	"_IO_write_end"
.LASF185:
	.string	"wordstr"
.LASF275:
	.string	"kbcore"
.LASF281:
	.string	"kbcore_free"
.LASF87:
	.string	"gau_type"
.LASF49:
	.string	"float"
.LASF125:
	.string	"sen2cimap"
.LASF239:
	.string	"n_density"
.LASF256:
	.string	"compsep"
.LASF20:
	.string	"_IO_buf_base"
.LASF229:
	.string	"featdim"
.LASF3:
	.string	"unsigned int"
.LASF99:
	.string	"WORD_POSN_INTERNAL"
.LASF144:
	.string	"dict_t"
.LASF97:
	.string	"WORD_POSN_END"
.LASF180:
	.string	"lm_tgcache_entry_t"
.LASF241:
	.string	"n_mbyte"
.LASF79:
	.string	"mgau_t"
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
.LASF45:
	.string	"_sbuf"
.LASF252:
	.string	"feattype"
.LASF234:
	.string	"mgau_sl"
.LASF278:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/482.sphinx3/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF119:
	.string	"ciphone_ht"
.LASF13:
	.string	"_flags"
.LASF262:
	.string	"silprob"
.LASF227:
	.string	"n_sv"
.LASF168:
	.string	"probid"
.LASF258:
	.string	"lmctlfile"
.LASF40:
	.string	"_mode"
.LASF276:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF194:
	.string	"tgbowt"
.LASF179:
	.string	"lscr"
.LASF98:
	.string	"WORD_POSN_SINGLE"
.LASF263:
	.string	"fillprob"
.LASF176:
	.string	"n_tg"
.LASF134:
	.string	"mdef"
.LASF254:
	.string	"dictfile"
.LASF231:
	.string	"subvec"
.LASF223:
	.string	"arraysize_t"
.LASF129:
	.string	"word"
.LASF118:
	.string	"n_tmat"
.LASF12:
	.string	"FILE"
.LASF69:
	.string	"cepsize_used"
.LASF182:
	.string	"n_ug"
.LASF59:
	.string	"hash_entry_s"
.LASF61:
	.string	"hash_entry_t"
.LASF202:
	.string	"tgcache"
.LASF71:
	.string	"stream_len"
.LASF143:
	.string	"silwid"
.LASF270:
	.string	"mixwfloor"
.LASF245:
	.string	"dict2pid"
.LASF63:
	.string	"size"
.LASF48:
	.string	"long long unsigned int"
.LASF76:
	.string	"n_comp"
.LASF84:
	.string	"distfloor"
.LASF225:
	.string	"vector_gautbl_t"
.LASF8:
	.string	"__off_t"
.LASF212:
	.string	"access_type"
.LASF89:
	.string	"s3cipid_t"
.LASF77:
	.string	"mean"
.LASF103:
	.string	"ciphone_t"
.LASF201:
	.string	"tgoff"
.LASF111:
	.string	"rclist"
.LASF66:
	.string	"feat_s"
.LASF75:
	.string	"feat_t"
.LASF73:
	.string	"varnorm"
.LASF277:
	.string	"kbcore.c"
.LASF183:
	.string	"n_bg"
.LASF23:
	.string	"_IO_backup_base"
.LASF32:
	.string	"_shortbuf"
.LASF181:
	.string	"lm_s"
.LASF218:
	.string	"lm_t"
.LASF158:
	.string	"dictwid"
.LASF146:
	.string	"ldiph_lc"
.LASF106:
	.string	"wpos"
.LASF74:
	.string	"compute_feat"
.LASF44:
	.string	"_next"
.LASF9:
	.string	"__off64_t"
.LASF121:
	.string	"phone"
.LASF188:
	.string	"log_bg_seg_sz"
.LASF140:
	.string	"comp_head"
.LASF116:
	.string	"n_ci_sen"
.LASF170:
	.string	"firsttg"
.LASF82:
	.string	"veclen"
.LASF21:
	.string	"_IO_buf_end"
.LASF186:
	.string	"startlwid"
.LASF237:
	.string	"n_feat"
.LASF164:
	.string	"lmlog_t"
.LASF67:
	.string	"name"
.LASF86:
	.string	"frm_gau_eval"
.LASF56:
	.string	"uint8"
.LASF5:
	.string	"short int"
.LASF169:
	.string	"bowtid"
.LASF159:
	.string	"LOGprob"
.LASF126:
	.string	"ciphone2n_cd_sen"
.LASF115:
	.string	"n_emit_state"
.LASF31:
	.string	"_vtable_offset"
.LASF253:
	.string	"mdeffile"
.LASF242:
	.string	"codeword"
.LASF266:
	.string	"meanfile"
.LASF196:
	.string	"n_bgprob"
.LASF52:
	.string	"int16"
.LASF91:
	.string	"s3ssid_t"
.LASF247:
	.string	"fillpen"
.LASF15:
	.string	"_IO_read_end"
.LASF197:
	.string	"n_tgprob"
.LASF217:
	.string	"inclass_ugscore"
.LASF165:
	.string	"bowt"
.LASF221:
	.string	"n_state"
.LASF272:
	.string	"gsfile"
.LASF64:
	.string	"nocase"
.LASF161:
	.string	"lmclass_s"
.LASF163:
	.string	"lmclass_t"
.LASF27:
	.string	"_fileno"
.LASF100:
	.string	"WORD_POSN_UNDEFINED"
.LASF136:
	.string	"max_words"
.LASF58:
	.string	"float64"
.LASF213:
	.string	"dict2lmwid"
.LASF114:
	.string	"n_phone"
.LASF2:
	.string	"short unsigned int"
.LASF190:
	.string	"membg"
.LASF51:
	.string	"int32"
.LASF199:
	.string	"byteswap"
.LASF18:
	.string	"_IO_write_ptr"
.LASF171:
	.string	"bg_t"
.LASF187:
	.string	"finishlwid"
.LASF137:
	.string	"n_word"
.LASF130:
	.string	"pronlen"
.LASF250:
	.string	"kbcore_t"
.LASF60:
	.string	"next"
.LASF206:
	.string	"n_bg_bo"
.LASF265:
	.string	"inspen"
.LASF55:
	.string	"uint16"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
