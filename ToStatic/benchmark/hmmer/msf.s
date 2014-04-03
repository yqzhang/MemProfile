	.file	"msf.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 msf.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.string	"!!AA_MULTIPLE_ALIGNMENT"
.LC1:
	.string	"!!NA_MULTIPLE_ALIGNMENT"
.LC2:
	.string	".."
.LC3:
	.string	"MSF:"
	.align 8
.LC4:
	.string	"^.+MSF: +([0-9]+) +Type: +([PNX]).+Check: +([0-9]+) +\\.\\."
.LC5:
	.string	"Name:"
.LC6:
	.string	" \t"
.LC7:
	.string	"Weight:"
	.align 8
.LC8:
	.string	"No Weight: on line %d for %s in name section of MSF file %s\n"
.LC9:
	.string	"//"
	.align 8
.LC10:
	.string	"Invalid line (probably %d) in name section of MSF file %s:\n%s\n"
.LC11:
	.string	"\n"
	.align 8
.LC12:
	.string	"Didn't find a sequence for %s in MSF file %s\n"
	.text
	.globl	ReadMSF
	.type	ReadMSF, @function
ReadMSF:
.LFB2:
	.file 1 "msf.c"
	.loc 1 83 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$104, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)	# afp, afp
	.loc 1 96 0
	movq	-104(%rbp), %rax	# afp, tmp182
	movq	(%rax), %rax	# afp_7(D)->f, D.6289
	movq	%rax, %rdi	# D.6289,
	call	feof	#
	testl	%eax, %eax	# D.6290
	je	.L2	#,
	.loc 1 96 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.6288
	jmp	.L43	#
.L2:
	.loc 1 97 0 is_stmt 1
	movq	-104(%rbp), %rax	# afp, tmp183
	movq	%rax, %rdi	# tmp183,
	call	MSAFileGetLine	#
	movq	%rax, -56(%rbp)	# tmp184, s
	cmpq	$0, -56(%rbp)	#, s
	jne	.L4	#,
	.loc 1 97 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.6288
	jmp	.L43	#
.L4:
	.loc 1 104 0 is_stmt 1
	movl	$0, %esi	#,
	movl	$10, %edi	#,
	call	MSAAlloc	#
	movq	%rax, -48(%rbp)	# tmp185, msa
	.loc 1 105 0
	movq	-56(%rbp), %rax	# s, tmp186
	movl	$23, %edx	#,
	movl	$.LC0, %esi	#,
	movq	%rax, %rdi	# tmp186,
	call	strncmp	#
	testl	%eax, %eax	# D.6290
	jne	.L5	#,
	.loc 1 106 0
	movq	-48(%rbp), %rax	# msa, tmp187
	movl	$3, 36(%rax)	#, msa_13->type
	.loc 1 107 0
	movq	-104(%rbp), %rax	# afp, tmp188
	movq	%rax, %rdi	# tmp188,
	call	MSAFileGetLine	#
	movq	%rax, -56(%rbp)	# tmp189, s
	cmpq	$0, -56(%rbp)	#, s
	jne	.L6	#,
	.loc 1 107 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.6288
	jmp	.L43	#
.L5:
	.loc 1 108 0 is_stmt 1
	movq	-56(%rbp), %rax	# s, tmp190
	movl	$23, %edx	#,
	movl	$.LC1, %esi	#,
	movq	%rax, %rdi	# tmp190,
	call	strncmp	#
	testl	%eax, %eax	# D.6290
	jne	.L6	#,
	.loc 1 109 0
	movq	-48(%rbp), %rax	# msa, tmp191
	movl	$2, 36(%rax)	#, msa_13->type
	.loc 1 110 0
	movq	-104(%rbp), %rax	# afp, tmp192
	movq	%rax, %rdi	# tmp192,
	call	MSAFileGetLine	#
	movq	%rax, -56(%rbp)	# tmp193, s
	cmpq	$0, -56(%rbp)	#, s
	jne	.L6	#,
	.loc 1 110 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.6288
	jmp	.L43	#
.L6:
	.loc 1 119 0 is_stmt 1
	movq	-56(%rbp), %rax	# s, tmp194
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# tmp194,
	call	strstr	#
	testq	%rax, %rax	# D.6291
	je	.L7	#,
	.loc 1 119 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# s, tmp195
	movl	$.LC3, %esi	#,
	movq	%rax, %rdi	# tmp195,
	call	strstr	#
	testq	%rax, %rax	# D.6291
	je	.L7	#,
	.loc 1 120 0 is_stmt 1 discriminator 1
	movq	-56(%rbp), %rax	# s, tmp196
	movl	$3, %edx	#,
	movq	%rax, %rsi	# tmp196,
	movl	$.LC4, %edi	#,
	call	Strparse	#
	.loc 1 119 0 discriminator 1
	testl	%eax, %eax	# D.6290
	je	.L7	#,
	.loc 1 122 0
	movq	sqd_parse(%rip), %rax	# sqd_parse, D.6291
	movq	%rax, %rdi	# D.6291,
	call	atoi	#
	movl	%eax, -72(%rbp)	# tmp197, alleged_alen
	.loc 1 123 0
	movq	sqd_parse+8(%rip), %rax	# sqd_parse, D.6291
	movzbl	(%rax), %eax	# *_25, D.6292
	movsbl	%al, %eax	# D.6292, D.6290
	cmpl	$80, %eax	#, D.6290
	je	.L9	#,
	cmpl	$88, %eax	#, D.6290
	je	.L10	#,
	cmpl	$78, %eax	#, D.6290
	jne	.L44	#,
	.loc 1 124 0
	movl	$2, -80(%rbp)	#, alleged_type
	jmp	.L12	#
.L9:
	.loc 1 125 0
	movl	$3, -80(%rbp)	#, alleged_type
	jmp	.L12	#
.L10:
	.loc 1 126 0
	movl	$0, -80(%rbp)	#, alleged_type
	jmp	.L12	#
.L44:
	.loc 1 127 0
	movl	$0, -80(%rbp)	#, alleged_type
.L12:
	.loc 1 129 0
	movq	sqd_parse+24(%rip), %rax	# sqd_parse, D.6291
	movq	%rax, %rdi	# D.6291,
	call	atoi	#
	movl	%eax, -68(%rbp)	# tmp198, alleged_checksum
	.loc 1 130 0
	movq	-48(%rbp), %rax	# msa, tmp199
	movl	36(%rax), %eax	# msa_13->type, D.6290
	testl	%eax, %eax	# D.6290
	jne	.L13	#,
	.loc 1 130 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# msa, tmp200
	movl	-80(%rbp), %edx	# alleged_type, tmp201
	movl	%edx, 36(%rax)	# tmp201, msa_13->type
	.loc 1 131 0 is_stmt 1 discriminator 1
	jmp	.L14	#
.L13:
	.loc 1 131 0 is_stmt 0
	jmp	.L14	#
.L7:
	.loc 1 133 0 is_stmt 1
	movq	-56(%rbp), %rax	# s, tmp202
	movq	%rax, %rdi	# tmp202,
	call	IsBlankline	#
	testl	%eax, %eax	# D.6290
	jne	.L15	#,
	.loc 1 134 0
	movq	-56(%rbp), %rdx	# s, tmp203
	movq	-48(%rbp), %rax	# msa, tmp204
	movq	%rdx, %rsi	# tmp203,
	movq	%rax, %rdi	# tmp204,
	call	MSAAddComment	#
.L15:
	.loc 1 135 0
	movq	-104(%rbp), %rax	# afp, tmp205
	movq	%rax, %rdi	# tmp205,
	call	MSAFileGetLine	#
	movq	%rax, -56(%rbp)	# tmp206, s
	cmpq	$0, -56(%rbp)	#, s
	jne	.L6	#,
.L14:
	.loc 1 146 0
	jmp	.L16	#
.L28:
	.loc 1 148 0
	jmp	.L17	#
.L20:
	.loc 1 148 0 is_stmt 0 discriminator 1
	addq	$1, -56(%rbp)	#, s
.L17:
	movq	-56(%rbp), %rax	# s, tmp207
	movzbl	(%rax), %eax	# *s_2, D.6292
	cmpb	$32, %al	#, D.6292
	je	.L18	#,
	.loc 1 148 0 discriminator 3
	movq	-56(%rbp), %rax	# s, tmp208
	movzbl	(%rax), %eax	# *s_2, D.6292
	cmpb	$9, %al	#, D.6292
	jne	.L19	#,
.L18:
	.loc 1 148 0 discriminator 2
	movq	-56(%rbp), %rax	# s, tmp209
	movzbl	(%rax), %eax	# *s_2, D.6292
	testb	%al, %al	# D.6292
	jne	.L20	#,
.L19:
	.loc 1 150 0 is_stmt 1
	movq	-56(%rbp), %rax	# s, tmp210
	movzbl	(%rax), %eax	# *s_2, D.6292
	cmpb	$10, %al	#, D.6292
	jne	.L21	#,
	.loc 1 150 0 is_stmt 0 discriminator 1
	jmp	.L16	#
.L21:
	.loc 1 151 0 is_stmt 1
	movq	-56(%rbp), %rax	# s, tmp211
	movzbl	(%rax), %eax	# *s_2, D.6292
	cmpb	$33, %al	#, D.6292
	jne	.L22	#,
	.loc 1 151 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rdx	# s, tmp212
	movq	-48(%rbp), %rax	# msa, tmp213
	movq	%rdx, %rsi	# tmp212,
	movq	%rax, %rdi	# tmp213,
	call	MSAAddComment	#
	jmp	.L16	#
.L22:
	.loc 1 152 0 is_stmt 1
	movq	-56(%rbp), %rax	# s, tmp214
	movl	$.LC5, %esi	#,
	movq	%rax, %rdi	# tmp214,
	call	strstr	#
	movq	%rax, -64(%rbp)	# sp.0, sp
	movq	-64(%rbp), %rax	# sp, sp.1
	testq	%rax, %rax	# sp.1
	je	.L23	#,
	.loc 1 155 0
	movq	-64(%rbp), %rax	# sp, sp.2
	addq	$5, %rax	#, sp.3
	movq	%rax, -64(%rbp)	# sp.3, sp
	.loc 1 156 0
	leaq	-84(%rbp), %rdx	#, tmp215
	leaq	-64(%rbp), %rax	#, tmp216
	movl	$.LC6, %esi	#,
	movq	%rax, %rdi	# tmp216,
	call	sre_strtok	#
	movq	%rax, -40(%rbp)	# tmp217, tok
	.loc 1 157 0
	movq	-48(%rbp), %rax	# msa, tmp218
	movq	312(%rax), %rax	# msa_13->index, D.6293
	movq	-40(%rbp), %rdx	# tok, tmp219
	movq	%rdx, %rsi	# tmp219,
	movq	%rax, %rdi	# D.6293,
	call	GKIStoreKey	#
	movl	%eax, -76(%rbp)	# tmp220, sqidx
	.loc 1 158 0
	movq	-48(%rbp), %rax	# msa, tmp221
	movl	320(%rax), %eax	# msa_13->nseqalloc, D.6290
	cmpl	-76(%rbp), %eax	# sqidx, D.6290
	jg	.L24	#,
	.loc 1 158 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# msa, tmp222
	movq	%rax, %rdi	# tmp222,
	call	MSAExpand	#
.L24:
	.loc 1 159 0 is_stmt 1
	movq	-48(%rbp), %rax	# msa, tmp223
	movq	8(%rax), %rax	# msa_13->sqname, D.6294
	movl	-76(%rbp), %edx	# sqidx, tmp224
	movslq	%edx, %rdx	# tmp224, D.6295
	salq	$3, %rdx	#, D.6295
	leaq	(%rax,%rdx), %rbx	#, D.6294
	movl	-84(%rbp), %edx	# slen, slen.4
	movq	-40(%rbp), %rax	# tok, tmp225
	movl	%edx, %esi	# slen.4,
	movq	%rax, %rdi	# tmp225,
	call	sre_strdup	#
	movq	%rax, (%rbx)	# D.6291, *_55
	.loc 1 160 0
	movq	-48(%rbp), %rax	# msa, tmp226
	movl	28(%rax), %eax	# msa_13->nseq, D.6290
	leal	1(%rax), %edx	#, D.6290
	movq	-48(%rbp), %rax	# msa, tmp227
	movl	%edx, 28(%rax)	# D.6290, msa_13->nseq
	.loc 1 162 0
	movq	-64(%rbp), %rax	# sp, sp.5
	movl	$.LC7, %esi	#,
	movq	%rax, %rdi	# sp.5,
	call	strstr	#
	movq	%rax, -64(%rbp)	# sp.6, sp
	movq	-64(%rbp), %rax	# sp, sp.7
	testq	%rax, %rax	# sp.7
	jne	.L25	#,
	.loc 1 163 0
	movq	-104(%rbp), %rax	# afp, tmp228
	movq	8(%rax), %rcx	# afp_7(D)->fname, D.6291
	.loc 1 164 0
	movq	-48(%rbp), %rax	# msa, tmp229
	movq	8(%rax), %rax	# msa_13->sqname, D.6294
	movl	-76(%rbp), %edx	# sqidx, tmp230
	movslq	%edx, %rdx	# tmp230, D.6295
	salq	$3, %rdx	#, D.6295
	addq	%rdx, %rax	# D.6295, D.6294
	.loc 1 163 0
	movq	(%rax), %rdx	# *_67, D.6291
	movq	-104(%rbp), %rax	# afp, tmp231
	movl	16(%rax), %eax	# afp_7(D)->linenumber, D.6290
	movl	%eax, %esi	# D.6290,
	movl	$.LC8, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L25:
	.loc 1 165 0
	movq	-64(%rbp), %rax	# sp, sp.8
	addq	$7, %rax	#, sp.9
	movq	%rax, -64(%rbp)	# sp.9, sp
	.loc 1 166 0
	leaq	-84(%rbp), %rdx	#, tmp232
	leaq	-64(%rbp), %rax	#, tmp233
	movl	$.LC6, %esi	#,
	movq	%rax, %rdi	# tmp233,
	call	sre_strtok	#
	movq	%rax, -40(%rbp)	# tmp234, tok
	.loc 1 167 0
	movq	-48(%rbp), %rax	# msa, tmp235
	movq	16(%rax), %rax	# msa_13->wgt, D.6296
	movl	-76(%rbp), %edx	# sqidx, tmp236
	movslq	%edx, %rdx	# tmp236, D.6295
	salq	$2, %rdx	#, D.6295
	leaq	(%rax,%rdx), %rbx	#, D.6296
	movq	-40(%rbp), %rax	# tok, tmp237
	movq	%rax, %rdi	# tmp237,
	call	atof	#
	unpcklpd	%xmm0, %xmm0	# D.6297
	cvtpd2ps	%xmm0, %xmm0	# D.6297, D.6298
	movss	%xmm0, (%rbx)	# D.6298, *_76
	.loc 1 168 0
	movq	-48(%rbp), %rax	# msa, tmp238
	movl	32(%rax), %eax	# msa_13->flags, D.6290
	orl	$1, %eax	#, D.6290
	movl	%eax, %edx	# D.6290, D.6290
	movq	-48(%rbp), %rax	# msa, tmp239
	movl	%edx, 32(%rax)	# D.6290, msa_13->flags
	jmp	.L16	#
.L23:
	.loc 1 170 0
	movq	-56(%rbp), %rax	# s, tmp240
	movl	$2, %edx	#,
	movl	$.LC9, %esi	#,
	movq	%rax, %rdi	# tmp240,
	call	strncmp	#
	testl	%eax, %eax	# D.6290
	jne	.L26	#,
	.loc 1 171 0
	jmp	.L27	#
.L26:
	.loc 1 174 0
	movq	-104(%rbp), %rax	# afp, tmp241
	movq	8(%rax), %rdx	# afp_7(D)->fname, D.6291
	movq	-104(%rbp), %rax	# afp, tmp242
	movl	16(%rax), %eax	# afp_7(D)->linenumber, D.6290
	movq	-56(%rbp), %rcx	# s, tmp243
	movl	%eax, %esi	# D.6290,
	movl	$.LC10, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
	.loc 1 176 0
	movl	$5, squid_errno(%rip)	#, squid_errno
	.loc 1 177 0
	movl	$0, %eax	#, D.6288
	jmp	.L43	#
.L16:
	.loc 1 146 0 discriminator 1
	movq	-104(%rbp), %rax	# afp, tmp244
	movq	%rax, %rdi	# tmp244,
	call	MSAFileGetLine	#
	movq	%rax, -56(%rbp)	# tmp245, s
	cmpq	$0, -56(%rbp)	#, s
	jne	.L28	#,
.L27:
	.loc 1 187 0
	jmp	.L29	#
.L34:
	.loc 1 189 0
	movq	-56(%rbp), %rax	# s, tmp246
	movq	%rax, -64(%rbp)	# tmp246, sp
	.loc 1 190 0
	leaq	-64(%rbp), %rax	#, tmp247
	movl	$0, %edx	#,
	movl	$.LC6, %esi	#,
	movq	%rax, %rdi	# tmp247,
	call	sre_strtok	#
	movq	%rax, -32(%rbp)	# tmp248, name
	cmpq	$0, -32(%rbp)	#, name
	jne	.L30	#,
	.loc 1 190 0 is_stmt 0 discriminator 1
	jmp	.L29	#
.L30:
	.loc 1 191 0 is_stmt 1
	leaq	-84(%rbp), %rdx	#, tmp249
	leaq	-64(%rbp), %rax	#, tmp250
	movl	$.LC11, %esi	#,
	movq	%rax, %rdi	# tmp250,
	call	sre_strtok	#
	movq	%rax, -24(%rbp)	# tmp251, seq
	cmpq	$0, -24(%rbp)	#, seq
	jne	.L31	#,
	.loc 1 191 0 is_stmt 0 discriminator 1
	jmp	.L29	#
.L31:
	.loc 1 195 0 is_stmt 1
	call	__ctype_b_loc	#
	movq	(%rax), %rdx	# *_88, D.6300
	movq	-32(%rbp), %rax	# name, tmp252
	movzbl	(%rax), %eax	# *name_86, D.6292
	movsbq	%al, %rax	# D.6292, D.6295
	addq	%rax, %rax	# D.6295
	addq	%rdx, %rax	# D.6300, D.6300
	movzwl	(%rax), %eax	# *_93, D.6301
	movzwl	%ax, %eax	# D.6301, D.6290
	andl	$2048, %eax	#, D.6290
	testl	%eax, %eax	# D.6290
	je	.L32	#,
	.loc 1 195 0 is_stmt 0 discriminator 1
	call	__ctype_b_loc	#
	movq	(%rax), %rdx	# *_97, D.6300
	movq	-24(%rbp), %rax	# seq, tmp253
	movzbl	(%rax), %eax	# *seq_87, D.6292
	movsbq	%al, %rax	# D.6292, D.6295
	addq	%rax, %rax	# D.6295
	addq	%rdx, %rax	# D.6300, D.6300
	movzwl	(%rax), %eax	# *_102, D.6301
	movzwl	%ax, %eax	# D.6301, D.6290
	andl	$2048, %eax	#, D.6290
	testl	%eax, %eax	# D.6290
	je	.L32	#,
	.loc 1 196 0 is_stmt 1
	jmp	.L29	#
.L32:
	.loc 1 200 0
	movq	-48(%rbp), %rax	# msa, tmp254
	movq	312(%rax), %rax	# msa_13->index, D.6293
	movq	-32(%rbp), %rdx	# name, tmp255
	movq	%rdx, %rsi	# tmp255,
	movq	%rax, %rdi	# D.6293,
	call	GKIKeyIndex	#
	movl	%eax, -76(%rbp)	# tmp256, sqidx
	.loc 1 201 0
	cmpl	$0, -76(%rbp)	#, sqidx
	jns	.L33	#,
	.loc 1 201 0 is_stmt 0 discriminator 1
	jmp	.L29	#
.L33:
	.loc 1 203 0 is_stmt 1
	movq	-48(%rbp), %rax	# msa, tmp257
	movq	328(%rax), %rax	# msa_13->sqlen, D.6302
	movl	-76(%rbp), %edx	# sqidx, tmp258
	movslq	%edx, %rdx	# tmp258, D.6295
	salq	$2, %rdx	#, D.6295
	leaq	(%rax,%rdx), %rbx	#, D.6302
	movl	-84(%rbp), %ecx	# slen, slen.10
	movq	-48(%rbp), %rax	# msa, tmp259
	movq	328(%rax), %rax	# msa_13->sqlen, D.6302
	movl	-76(%rbp), %edx	# sqidx, tmp260
	movslq	%edx, %rdx	# tmp260, D.6295
	salq	$2, %rdx	#, D.6295
	addq	%rdx, %rax	# D.6295, D.6302
	movl	(%rax), %eax	# *_116, D.6290
	movq	-48(%rbp), %rdx	# msa, tmp261
	movq	(%rdx), %rdx	# msa_13->aseq, D.6294
	movl	-76(%rbp), %esi	# sqidx, tmp262
	movslq	%esi, %rsi	# tmp262, D.6295
	salq	$3, %rsi	#, D.6295
	leaq	(%rdx,%rsi), %rdi	#, D.6294
	movq	-24(%rbp), %rdx	# seq, tmp263
	movl	%eax, %esi	# D.6290,
	call	sre_strcat	#
	movl	%eax, (%rbx)	# D.6290, *_111
.L29:
	.loc 1 187 0 discriminator 1
	movq	-104(%rbp), %rax	# afp, tmp264
	movq	%rax, %rdi	# tmp264,
	call	MSAFileGetLine	#
	movq	%rax, -56(%rbp)	# tmp265, s
	cmpq	$0, -56(%rbp)	#, s
	jne	.L34	#,
	.loc 1 208 0
	movl	$0, -76(%rbp)	#, sqidx
	jmp	.L35	#
.L42:
	.loc 1 210 0
	movq	-48(%rbp), %rax	# msa, tmp266
	movq	(%rax), %rax	# msa_13->aseq, D.6294
	movl	-76(%rbp), %edx	# sqidx, tmp267
	movslq	%edx, %rdx	# tmp267, D.6295
	salq	$3, %rdx	#, D.6295
	addq	%rdx, %rax	# D.6295, D.6294
	movq	(%rax), %rax	# *_128, D.6291
	testq	%rax, %rax	# D.6291
	jne	.L36	#,
	.loc 1 211 0
	movq	-104(%rbp), %rax	# afp, tmp268
	movq	8(%rax), %rdx	# afp_7(D)->fname, D.6291
	movq	-48(%rbp), %rax	# msa, tmp269
	movq	8(%rax), %rax	# msa_13->sqname, D.6294
	movl	-76(%rbp), %ecx	# sqidx, tmp270
	movslq	%ecx, %rcx	# tmp270, D.6295
	salq	$3, %rcx	#, D.6295
	addq	%rcx, %rax	# D.6295, D.6294
	movq	(%rax), %rax	# *_134, D.6291
	movq	%rax, %rsi	# D.6291,
	movl	$.LC12, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L36:
	.loc 1 213 0
	movq	-48(%rbp), %rax	# msa, tmp271
	movq	(%rax), %rax	# msa_13->aseq, D.6294
	movl	-76(%rbp), %edx	# sqidx, tmp272
	movslq	%edx, %rdx	# tmp272, D.6295
	salq	$3, %rdx	#, D.6295
	addq	%rdx, %rax	# D.6295, D.6294
	movq	(%rax), %rax	# *_139, sp.11
	movq	%rax, -64(%rbp)	# sp.11, sp
	movq	-64(%rbp), %rax	# sp, tmp273
	movq	%rax, -56(%rbp)	# tmp273, s
	jmp	.L37	#
.L41:
	.loc 1 215 0
	movq	-56(%rbp), %rax	# s, tmp274
	movzbl	(%rax), %eax	# *s_3, D.6292
	cmpb	$32, %al	#, D.6292
	je	.L38	#,
	.loc 1 215 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# s, tmp275
	movzbl	(%rax), %eax	# *s_3, D.6292
	cmpb	$9, %al	#, D.6292
	jne	.L39	#,
.L38:
	.loc 1 216 0 is_stmt 1
	movq	-48(%rbp), %rax	# msa, tmp276
	movq	328(%rax), %rax	# msa_13->sqlen, D.6302
	movl	-76(%rbp), %edx	# sqidx, tmp277
	movslq	%edx, %rdx	# tmp277, D.6295
	salq	$2, %rdx	#, D.6295
	addq	%rdx, %rax	# D.6295, D.6302
	movl	(%rax), %edx	# *_152, D.6290
	subl	$1, %edx	#, D.6290
	movl	%edx, (%rax)	# D.6290, *_152
	jmp	.L40	#
.L39:
	.loc 1 218 0
	movq	-64(%rbp), %rax	# sp, sp.12
	movq	-56(%rbp), %rdx	# s, tmp278
	movzbl	(%rdx), %edx	# *s_3, D.6292
	movb	%dl, (%rax)	# D.6292, *sp.12_145
	.loc 1 219 0
	movq	-64(%rbp), %rax	# sp, sp.13
	addq	$1, %rax	#, sp.14
	movq	%rax, -64(%rbp)	# sp.14, sp
.L40:
	.loc 1 213 0
	addq	$1, -56(%rbp)	#, s
.L37:
	.loc 1 213 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# s, tmp279
	movzbl	(%rax), %eax	# *s_3, D.6292
	testb	%al, %al	# D.6292
	jne	.L41	#,
	.loc 1 222 0 is_stmt 1
	movq	-64(%rbp), %rax	# sp, sp.15
	movb	$0, (%rax)	#, *sp.15_156
	.loc 1 208 0
	addl	$1, -76(%rbp)	#, sqidx
.L35:
	.loc 1 208 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# msa, tmp280
	movl	28(%rax), %eax	# msa_13->nseq, D.6290
	cmpl	-76(%rbp), %eax	# sqidx, D.6290
	jg	.L42	#,
	.loc 1 225 0 is_stmt 1
	movq	-48(%rbp), %rax	# msa, tmp281
	movq	%rax, %rdi	# tmp281,
	call	MSAVerifyParse	#
	.loc 1 226 0
	movq	-48(%rbp), %rax	# msa, D.6288
.L43:
	.loc 1 227 0
	addq	$104, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	ReadMSF, .-ReadMSF
	.section	.rodata
.LC13:
	.string	"msf.c"
.LC14:
	.string	"!!NA_MULTIPLE_ALIGNMENT 1.0\n"
.LC15:
	.string	"!!AA_MULTIPLE_ALIGNMENT 1.0\n"
	.align 8
.LC16:
	.string	"WriteMSF(): couldn't guess whether that alignment is RNA or protein.\n"
	.align 8
.LC17:
	.string	"Invalid sequence type %d in WriteMSF()\n"
.LC18:
	.string	"%s\n"
.LC19:
	.string	"%B %d, %Y %H:%M"
	.align 8
.LC20:
	.string	"What time is it on earth? strftime() failed in WriteMSF().\n"
.LC21:
	.string	"squid.msf"
	.align 8
.LC22:
	.string	" %s  MSF: %d  Type: %c  %s  Check: %d  ..\n"
	.align 8
.LC23:
	.string	" Name: %-*.*s  Len:  %5d  Check: %4d  Weight: %.2f\n"
.LC24:
	.string	"//\n"
.LC25:
	.string	""
.LC26:
	.string	"%*s  %-6d%*s%6d\n"
.LC27:
	.string	"%*s  %-6d\n"
.LC28:
	.string	"%-*s "
	.text
	.globl	WriteMSF
	.type	WriteMSF, @function
WriteMSF:
.LFB3:
	.loc 1 246 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$264, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -232(%rbp)	# fp, fp
	movq	%rsi, -240(%rbp)	# msa, msa
	.loc 1 246 0
	movq	%fs:40, %rax	#, tmp392
	movq	%rax, -24(%rbp)	# tmp392, D.6329
	xorl	%eax, %eax	# tmp392
	.loc 1 273 0
	movq	-240(%rbp), %rax	# msa, tmp238
	movl	28(%rax), %eax	# msa_19(D)->nseq, D.6316
	cltq
	salq	$3, %rax	#, D.6317
	movq	%rax, %rdx	# D.6317,
	movl	$273, %esi	#,
	movl	$.LC13, %edi	#,
	call	sre_malloc	#
	movq	%rax, -176(%rbp)	# tmp239, gcg_aseq
	.loc 1 274 0
	movq	-240(%rbp), %rax	# msa, tmp240
	movl	28(%rax), %eax	# msa_19(D)->nseq, D.6316
	cltq
	salq	$3, %rax	#, D.6317
	movq	%rax, %rdx	# D.6317,
	movl	$274, %esi	#,
	movl	$.LC13, %edi	#,
	call	sre_malloc	#
	movq	%rax, -168(%rbp)	# tmp241, gcg_sqname
	.loc 1 275 0
	movl	$0, -212(%rbp)	#, idx
	jmp	.L46	#
.L47:
	.loc 1 277 0 discriminator 2
	movl	-212(%rbp), %eax	# idx, tmp242
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6317
	movq	-176(%rbp), %rax	# gcg_aseq, tmp243
	leaq	(%rdx,%rax), %rbx	#, D.6318
	movq	-240(%rbp), %rax	# msa, tmp244
	movl	24(%rax), %edx	# msa_19(D)->alen, D.6316
	movq	-240(%rbp), %rax	# msa, tmp245
	movq	(%rax), %rax	# msa_19(D)->aseq, D.6318
	movl	-212(%rbp), %ecx	# idx, tmp246
	movslq	%ecx, %rcx	# tmp246, D.6317
	salq	$3, %rcx	#, D.6317
	addq	%rcx, %rax	# D.6317, D.6318
	movq	(%rax), %rax	# *_37, D.6319
	movl	%edx, %esi	# D.6316,
	movq	%rax, %rdi	# D.6319,
	call	sre_strdup	#
	movq	%rax, (%rbx)	# D.6319, *_32
	.loc 1 278 0 discriminator 2
	movl	-212(%rbp), %eax	# idx, tmp247
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6317
	movq	-168(%rbp), %rax	# gcg_sqname, tmp248
	leaq	(%rdx,%rax), %rbx	#, D.6318
	movq	-240(%rbp), %rax	# msa, tmp249
	movq	8(%rax), %rax	# msa_19(D)->sqname, D.6318
	movl	-212(%rbp), %edx	# idx, tmp250
	movslq	%edx, %rdx	# tmp250, D.6317
	salq	$3, %rdx	#, D.6317
	addq	%rdx, %rax	# D.6317, D.6318
	movq	(%rax), %rax	# *_46, D.6319
	movl	$-1, %esi	#,
	movq	%rax, %rdi	# D.6319,
	call	sre_strdup	#
	movq	%rax, (%rbx)	# D.6319, *_42
	.loc 1 275 0 discriminator 2
	addl	$1, -212(%rbp)	#, idx
.L46:
	.loc 1 275 0 is_stmt 0 discriminator 1
	movq	-240(%rbp), %rax	# msa, tmp251
	movl	28(%rax), %eax	# msa_19(D)->nseq, D.6316
	cmpl	-212(%rbp), %eax	# idx, D.6316
	jg	.L47	#,
	.loc 1 281 0 is_stmt 1
	movl	$0, -212(%rbp)	#, idx
	jmp	.L48	#
.L52:
	.loc 1 282 0
	movl	-212(%rbp), %eax	# idx, tmp252
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6317
	movq	-168(%rbp), %rax	# gcg_sqname, tmp253
	addq	%rdx, %rax	# D.6317, D.6318
	movq	(%rax), %rax	# *_54, tmp254
	movq	%rax, -184(%rbp)	# tmp254, s
	jmp	.L49	#
.L51:
	.loc 1 283 0
	call	__ctype_b_loc	#
	movq	(%rax), %rdx	# *_57, D.6322
	movq	-184(%rbp), %rax	# s, tmp255
	movzbl	(%rax), %eax	# *s_8, D.6320
	movsbq	%al, %rax	# D.6320, D.6317
	addq	%rax, %rax	# D.6317
	addq	%rdx, %rax	# D.6322, D.6322
	movzwl	(%rax), %eax	# *_62, D.6323
	movzwl	%ax, %eax	# D.6323, D.6316
	andl	$8, %eax	#, D.6316
	testl	%eax, %eax	# D.6316
	jne	.L50	#,
	.loc 1 283 0 is_stmt 0 discriminator 1
	movq	-184(%rbp), %rax	# s, tmp256
	movzbl	(%rax), %eax	# *s_8, D.6320
	cmpb	$45, %al	#, D.6320
	je	.L50	#,
	movq	-184(%rbp), %rax	# s, tmp257
	movzbl	(%rax), %eax	# *s_8, D.6320
	cmpb	$95, %al	#, D.6320
	je	.L50	#,
	.loc 1 284 0 is_stmt 1
	movq	-184(%rbp), %rax	# s, tmp258
	movb	$95, (%rax)	#, *s_8
.L50:
	.loc 1 282 0
	addq	$1, -184(%rbp)	#, s
.L49:
	.loc 1 282 0 is_stmt 0 discriminator 1
	movq	-184(%rbp), %rax	# s, tmp259
	movzbl	(%rax), %eax	# *s_8, D.6320
	testb	%al, %al	# D.6320
	jne	.L51	#,
	.loc 1 281 0 is_stmt 1
	addl	$1, -212(%rbp)	#, idx
.L48:
	.loc 1 281 0 is_stmt 0 discriminator 1
	movq	-240(%rbp), %rax	# msa, tmp260
	movl	28(%rax), %eax	# msa_19(D)->nseq, D.6316
	cmpl	-212(%rbp), %eax	# idx, D.6316
	jg	.L52	#,
	.loc 1 286 0 is_stmt 1
	movl	$0, -212(%rbp)	#, idx
	jmp	.L53	#
.L64:
	.loc 1 288 0
	movl	-212(%rbp), %eax	# idx, tmp261
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6317
	movq	-176(%rbp), %rax	# gcg_aseq, tmp262
	addq	%rdx, %rax	# D.6317, D.6318
	movq	(%rax), %rax	# *_74, tmp263
	movq	%rax, -184(%rbp)	# tmp263, s
	jmp	.L54	#
.L56:
	.loc 1 289 0 discriminator 1
	movq	-184(%rbp), %rax	# s, tmp264
	movb	$126, (%rax)	#, *s_9
	.loc 1 288 0 discriminator 1
	addq	$1, -184(%rbp)	#, s
.L54:
	movq	-184(%rbp), %rax	# s, tmp265
	movzbl	(%rax), %eax	# *s_9, D.6320
	testb	%al, %al	# D.6320
	je	.L55	#,
	.loc 1 288 0 is_stmt 0 discriminator 2
	movq	-184(%rbp), %rax	# s, tmp266
	movzbl	(%rax), %eax	# *s_9, D.6320
	cmpb	$32, %al	#, D.6320
	je	.L56	#,
	movq	-184(%rbp), %rax	# s, tmp267
	movzbl	(%rax), %eax	# *s_9, D.6320
	cmpb	$46, %al	#, D.6320
	je	.L56	#,
	.loc 1 288 0 discriminator 1
	movq	-184(%rbp), %rax	# s, tmp268
	movzbl	(%rax), %eax	# *s_9, D.6320
	cmpb	$95, %al	#, D.6320
	je	.L56	#,
	movq	-184(%rbp), %rax	# s, tmp269
	movzbl	(%rax), %eax	# *s_9, D.6320
	cmpb	$45, %al	#, D.6320
	je	.L56	#,
	movq	-184(%rbp), %rax	# s, tmp270
	movzbl	(%rax), %eax	# *s_9, D.6320
	cmpb	$126, %al	#, D.6320
	je	.L56	#,
.L55:
	.loc 1 290 0 is_stmt 1
	jmp	.L57	#
.L60:
	.loc 1 291 0
	movq	-184(%rbp), %rax	# s, tmp271
	movzbl	(%rax), %eax	# *s_10, D.6320
	cmpb	$32, %al	#, D.6320
	je	.L58	#,
	.loc 1 291 0 is_stmt 0 discriminator 2
	movq	-184(%rbp), %rax	# s, tmp272
	movzbl	(%rax), %eax	# *s_10, D.6320
	cmpb	$46, %al	#, D.6320
	je	.L58	#,
	.loc 1 291 0 discriminator 1
	movq	-184(%rbp), %rax	# s, tmp273
	movzbl	(%rax), %eax	# *s_10, D.6320
	cmpb	$95, %al	#, D.6320
	je	.L58	#,
	movq	-184(%rbp), %rax	# s, tmp274
	movzbl	(%rax), %eax	# *s_10, D.6320
	cmpb	$45, %al	#, D.6320
	je	.L58	#,
	movq	-184(%rbp), %rax	# s, tmp275
	movzbl	(%rax), %eax	# *s_10, D.6320
	cmpb	$126, %al	#, D.6320
	jne	.L59	#,
.L58:
	movq	-184(%rbp), %rax	# s, tmp276
	movb	$46, (%rax)	#, *s_10
.L59:
	.loc 1 290 0 is_stmt 1
	addq	$1, -184(%rbp)	#, s
.L57:
	.loc 1 290 0 is_stmt 0 discriminator 1
	movq	-184(%rbp), %rax	# s, tmp277
	movzbl	(%rax), %eax	# *s_10, D.6320
	testb	%al, %al	# D.6320
	jne	.L60	#,
	.loc 1 292 0 is_stmt 1
	movq	-240(%rbp), %rax	# msa, tmp278
	movl	24(%rax), %eax	# msa_19(D)->alen, D.6316
	subl	$1, %eax	#, tmp279
	movl	%eax, -204(%rbp)	# tmp279, pos
	jmp	.L61	#
.L63:
	.loc 1 293 0 discriminator 1
	movl	-212(%rbp), %eax	# idx, tmp280
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6317
	movq	-176(%rbp), %rax	# gcg_aseq, tmp281
	addq	%rdx, %rax	# D.6317, D.6318
	movq	(%rax), %rdx	# *_129, D.6319
	movl	-204(%rbp), %eax	# pos, tmp282
	cltq
	addq	%rdx, %rax	# D.6319, D.6319
	movb	$126, (%rax)	#, *_132
	.loc 1 292 0 discriminator 1
	subl	$1, -204(%rbp)	#, pos
.L61:
	cmpl	$0, -204(%rbp)	#, pos
	jle	.L62	#,
	.loc 1 292 0 is_stmt 0 discriminator 2
	movl	-212(%rbp), %eax	# idx, tmp283
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6317
	movq	-176(%rbp), %rax	# gcg_aseq, tmp284
	addq	%rdx, %rax	# D.6317, D.6318
	movq	(%rax), %rdx	# *_94, D.6319
	movl	-204(%rbp), %eax	# pos, tmp285
	cltq
	addq	%rdx, %rax	# D.6319, D.6319
	movzbl	(%rax), %eax	# *_97, D.6320
	cmpb	$32, %al	#, D.6320
	je	.L63	#,
	movl	-212(%rbp), %eax	# idx, tmp286
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6317
	movq	-176(%rbp), %rax	# gcg_aseq, tmp287
	addq	%rdx, %rax	# D.6317, D.6318
	movq	(%rax), %rdx	# *_101, D.6319
	movl	-204(%rbp), %eax	# pos, tmp288
	cltq
	addq	%rdx, %rax	# D.6319, D.6319
	movzbl	(%rax), %eax	# *_104, D.6320
	cmpb	$46, %al	#, D.6320
	je	.L63	#,
	.loc 1 292 0 discriminator 1
	movl	-212(%rbp), %eax	# idx, tmp289
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6317
	movq	-176(%rbp), %rax	# gcg_aseq, tmp290
	addq	%rdx, %rax	# D.6317, D.6318
	movq	(%rax), %rdx	# *_108, D.6319
	movl	-204(%rbp), %eax	# pos, tmp291
	cltq
	addq	%rdx, %rax	# D.6319, D.6319
	movzbl	(%rax), %eax	# *_111, D.6320
	cmpb	$95, %al	#, D.6320
	je	.L63	#,
	movl	-212(%rbp), %eax	# idx, tmp292
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6317
	movq	-176(%rbp), %rax	# gcg_aseq, tmp293
	addq	%rdx, %rax	# D.6317, D.6318
	movq	(%rax), %rdx	# *_115, D.6319
	movl	-204(%rbp), %eax	# pos, tmp294
	cltq
	addq	%rdx, %rax	# D.6319, D.6319
	movzbl	(%rax), %eax	# *_118, D.6320
	cmpb	$45, %al	#, D.6320
	je	.L63	#,
	movl	-212(%rbp), %eax	# idx, tmp295
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6317
	movq	-176(%rbp), %rax	# gcg_aseq, tmp296
	addq	%rdx, %rax	# D.6317, D.6318
	movq	(%rax), %rdx	# *_122, D.6319
	movl	-204(%rbp), %eax	# pos, tmp297
	cltq
	addq	%rdx, %rax	# D.6319, D.6319
	movzbl	(%rax), %eax	# *_125, D.6320
	cmpb	$126, %al	#, D.6320
	je	.L63	#,
.L62:
	.loc 1 286 0 is_stmt 1
	addl	$1, -212(%rbp)	#, idx
.L53:
	.loc 1 286 0 is_stmt 0 discriminator 1
	movq	-240(%rbp), %rax	# msa, tmp298
	movl	28(%rax), %eax	# msa_19(D)->nseq, D.6316
	cmpl	-212(%rbp), %eax	# idx, D.6316
	jg	.L64	#,
	.loc 1 296 0 is_stmt 1
	movl	$0, -208(%rbp)	#, namelen
	.loc 1 297 0
	movl	$0, -212(%rbp)	#, idx
	jmp	.L65	#
.L67:
	.loc 1 298 0
	movq	-240(%rbp), %rax	# msa, tmp299
	movq	8(%rax), %rax	# msa_19(D)->sqname, D.6318
	movl	-212(%rbp), %edx	# idx, tmp300
	movslq	%edx, %rdx	# tmp300, D.6317
	salq	$3, %rdx	#, D.6317
	addq	%rdx, %rax	# D.6317, D.6318
	movq	(%rax), %rax	# *_141, D.6319
	movq	%rax, %rdi	# D.6319,
	call	strlen	#
	movl	%eax, -196(%rbp)	# D.6317, len
	movl	-196(%rbp), %eax	# len, tmp301
	cmpl	-208(%rbp), %eax	# namelen, tmp301
	jle	.L66	#,
	.loc 1 299 0
	movl	-196(%rbp), %eax	# len, tmp302
	movl	%eax, -208(%rbp)	# tmp302, namelen
.L66:
	.loc 1 297 0
	addl	$1, -212(%rbp)	#, idx
.L65:
	.loc 1 297 0 is_stmt 0 discriminator 1
	movq	-240(%rbp), %rax	# msa, tmp303
	movl	28(%rax), %eax	# msa_19(D)->nseq, D.6316
	cmpl	-212(%rbp), %eax	# idx, D.6316
	jg	.L67	#,
	.loc 1 305 0 is_stmt 1
	movq	-240(%rbp), %rax	# msa, tmp304
	movl	36(%rax), %eax	# msa_19(D)->type, D.6316
	testl	%eax, %eax	# D.6316
	jne	.L68	#,
	.loc 1 306 0
	movq	-240(%rbp), %rax	# msa, tmp305
	movl	28(%rax), %edx	# msa_19(D)->nseq, D.6316
	movq	-240(%rbp), %rax	# msa, tmp306
	movq	(%rax), %rax	# msa_19(D)->aseq, D.6318
	movl	%edx, %esi	# D.6316,
	movq	%rax, %rdi	# D.6318,
	call	GuessAlignmentSeqtype	#
	movq	-240(%rbp), %rdx	# msa, tmp307
	movl	%eax, 36(%rdx)	# D.6316, msa_19(D)->type
.L68:
	.loc 1 308 0
	movq	-240(%rbp), %rax	# msa, tmp308
	movl	36(%rax), %eax	# msa_19(D)->type, D.6316
	cmpl	$2, %eax	#, D.6316
	jne	.L69	#,
	.loc 1 308 0 is_stmt 0 discriminator 1
	movq	-232(%rbp), %rax	# fp, tmp309
	movq	%rax, %rcx	# tmp309,
	movl	$28, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC14, %edi	#,
	call	fwrite	#
	jmp	.L70	#
.L69:
	.loc 1 309 0 is_stmt 1
	movq	-240(%rbp), %rax	# msa, tmp310
	movl	36(%rax), %eax	# msa_19(D)->type, D.6316
	cmpl	$1, %eax	#, D.6316
	jne	.L71	#,
	.loc 1 309 0 is_stmt 0 discriminator 1
	movq	-232(%rbp), %rax	# fp, tmp311
	movq	%rax, %rcx	# tmp311,
	movl	$28, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC14, %edi	#,
	call	fwrite	#
	jmp	.L70	#
.L71:
	.loc 1 310 0 is_stmt 1
	movq	-240(%rbp), %rax	# msa, tmp312
	movl	36(%rax), %eax	# msa_19(D)->type, D.6316
	cmpl	$3, %eax	#, D.6316
	jne	.L72	#,
	.loc 1 310 0 is_stmt 0 discriminator 1
	movq	-232(%rbp), %rax	# fp, tmp313
	movq	%rax, %rcx	# tmp313,
	movl	$28, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC15, %edi	#,
	call	fwrite	#
	jmp	.L70	#
.L72:
	.loc 1 311 0 is_stmt 1
	movq	-240(%rbp), %rax	# msa, tmp314
	movl	36(%rax), %eax	# msa_19(D)->type, D.6316
	testl	%eax, %eax	# D.6316
	jne	.L73	#,
	.loc 1 312 0
	movl	$.LC16, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
	jmp	.L70	#
.L73:
	.loc 1 314 0
	movq	-240(%rbp), %rax	# msa, tmp315
	movl	36(%rax), %eax	# msa_19(D)->type, D.6316
	movl	%eax, %esi	# D.6316,
	movl	$.LC17, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L70:
	.loc 1 317 0
	movq	-240(%rbp), %rax	# msa, tmp316
	movl	184(%rax), %eax	# msa_19(D)->ncomment, D.6316
	testl	%eax, %eax	# D.6316
	jle	.L74	#,
	.loc 1 319 0
	movl	$0, -212(%rbp)	#, idx
	jmp	.L75	#
.L76:
	.loc 1 320 0 discriminator 2
	movq	-240(%rbp), %rax	# msa, tmp317
	movq	176(%rax), %rax	# msa_19(D)->comment, D.6318
	movl	-212(%rbp), %edx	# idx, tmp318
	movslq	%edx, %rdx	# tmp318, D.6317
	salq	$3, %rdx	#, D.6317
	addq	%rdx, %rax	# D.6317, D.6318
	movq	(%rax), %rdx	# *_163, D.6319
	movq	-232(%rbp), %rax	# fp, tmp319
	movl	$.LC18, %esi	#,
	movq	%rax, %rdi	# tmp319,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 319 0 discriminator 2
	addl	$1, -212(%rbp)	#, idx
.L75:
	.loc 1 319 0 is_stmt 0 discriminator 1
	movq	-240(%rbp), %rax	# msa, tmp320
	movl	184(%rax), %eax	# msa_19(D)->ncomment, D.6316
	cmpl	-212(%rbp), %eax	# idx, D.6316
	jg	.L76	#,
	.loc 1 321 0 is_stmt 1
	movq	-232(%rbp), %rax	# fp, tmp321
	movq	%rax, %rsi	# tmp321,
	movl	$10, %edi	#,
	call	fputc	#
.L74:
	.loc 1 324 0
	movl	$0, %edi	#,
	call	time	#
	movq	%rax, -192(%rbp)	# now.16, now
	.loc 1 325 0
	leaq	-192(%rbp), %rax	#, tmp322
	movq	%rax, %rdi	# tmp322,
	call	localtime	#
	movq	%rax, %rdx	#, D.6325
	leaq	-96(%rbp), %rax	#, tmp323
	movq	%rdx, %rcx	# D.6325,
	movl	$.LC19, %edx	#,
	movl	$64, %esi	#,
	movq	%rax, %rdi	# tmp323,
	call	strftime	#
	testq	%rax, %rax	# D.6317
	jne	.L77	#,
	.loc 1 326 0
	movl	$.LC20, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L77:
	.loc 1 327 0
	movq	-240(%rbp), %rax	# msa, tmp324
	movl	28(%rax), %edx	# msa_19(D)->nseq, D.6316
	movq	-176(%rbp), %rax	# gcg_aseq, tmp325
	movl	%edx, %esi	# D.6316,
	movq	%rax, %rdi	# tmp325,
	call	GCGMultchecksum	#
	movl	%eax, %ecx	#, D.6316
	.loc 1 330 0
	movq	-240(%rbp), %rax	# msa, tmp326
	movl	36(%rax), %eax	# msa_19(D)->type, D.6316
	.loc 1 327 0
	cmpl	$2, %eax	#, D.6316
	jne	.L78	#,
	.loc 1 327 0 is_stmt 0 discriminator 1
	movl	$78, %edx	#, iftmp.17
	jmp	.L79	#
.L78:
	.loc 1 327 0 discriminator 2
	movl	$80, %edx	#, iftmp.17
.L79:
	.loc 1 327 0 discriminator 3
	movq	-240(%rbp), %rax	# msa, tmp327
	movl	24(%rax), %esi	# msa_19(D)->alen, D.6316
	.loc 1 328 0 is_stmt 1 discriminator 3
	movq	-240(%rbp), %rax	# msa, tmp328
	movq	40(%rax), %rax	# msa_19(D)->name, D.6319
	.loc 1 327 0 discriminator 3
	testq	%rax, %rax	# D.6319
	je	.L80	#,
	.loc 1 327 0 is_stmt 0 discriminator 4
	movq	-240(%rbp), %rax	# msa, tmp329
	movq	40(%rax), %rax	# msa_19(D)->name, iftmp.18
	jmp	.L81	#
.L80:
	.loc 1 327 0 discriminator 5
	movl	$.LC21, %eax	#, iftmp.18
.L81:
	.loc 1 327 0 discriminator 6
	leaq	-96(%rbp), %r8	#, tmp330
	movq	-232(%rbp), %rdi	# fp, tmp331
	movl	%ecx, (%rsp)	# D.6316,
	movq	%r8, %r9	# tmp330,
	movl	%edx, %r8d	# iftmp.17,
	movl	%esi, %ecx	# D.6316,
	movq	%rax, %rdx	# iftmp.18,
	movl	$.LC22, %esi	#,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 333 0 is_stmt 1 discriminator 6
	movq	-232(%rbp), %rax	# fp, tmp332
	movq	%rax, %rsi	# tmp332,
	movl	$10, %edi	#,
	call	fputc	#
	.loc 1 339 0 discriminator 6
	movl	$0, -212(%rbp)	#, idx
	jmp	.L82	#
.L83:
	.loc 1 346 0 discriminator 2
	movq	-240(%rbp), %rax	# msa, tmp333
	movq	16(%rax), %rax	# msa_19(D)->wgt, D.6326
	movl	-212(%rbp), %edx	# idx, tmp334
	movslq	%edx, %rdx	# tmp334, D.6317
	salq	$2, %rdx	#, D.6317
	addq	%rdx, %rax	# D.6317, D.6326
	movss	(%rax), %xmm0	# *_183, D.6327
	.loc 1 341 0 discriminator 2
	unpcklps	%xmm0, %xmm0	# D.6327, D.6327
	cvtps2pd	%xmm0, %xmm1	# D.6327, D.6328
	movsd	%xmm1, -248(%rbp)	# D.6328, %sfp
	movq	-240(%rbp), %rax	# msa, tmp335
	movl	24(%rax), %edx	# msa_19(D)->alen, D.6316
	.loc 1 345 0 discriminator 2
	movl	-212(%rbp), %eax	# idx, tmp336
	cltq
	leaq	0(,%rax,8), %rcx	#, D.6317
	movq	-176(%rbp), %rax	# gcg_aseq, tmp337
	addq	%rcx, %rax	# D.6317, D.6318
	.loc 1 341 0 discriminator 2
	movq	(%rax), %rax	# *_189, D.6319
	movl	%edx, %esi	# D.6316,
	movq	%rax, %rdi	# D.6319,
	call	GCGchecksum	#
	movq	-240(%rbp), %rdx	# msa, tmp338
	movl	24(%rdx), %r8d	# msa_19(D)->alen, D.6316
	.loc 1 343 0 discriminator 2
	movl	-212(%rbp), %edx	# idx, tmp339
	movslq	%edx, %rdx	# tmp339, D.6317
	leaq	0(,%rdx,8), %rcx	#, D.6317
	movq	-168(%rbp), %rdx	# gcg_sqname, tmp340
	addq	%rcx, %rdx	# D.6317, D.6318
	.loc 1 341 0 discriminator 2
	movq	(%rdx), %rsi	# *_195, D.6319
	movl	-208(%rbp), %ecx	# namelen, tmp341
	movl	-208(%rbp), %edx	# namelen, tmp342
	movq	-232(%rbp), %rdi	# fp, tmp343
	movl	%eax, (%rsp)	# D.6316,
	movsd	-248(%rbp), %xmm0	# %sfp,
	movl	%r8d, %r9d	# D.6316,
	movq	%rsi, %r8	# D.6319,
	movl	$.LC23, %esi	#,
	movl	$1, %eax	#,
	call	fprintf	#
	.loc 1 339 0 discriminator 2
	addl	$1, -212(%rbp)	#, idx
.L82:
	.loc 1 339 0 is_stmt 0 discriminator 1
	movq	-240(%rbp), %rax	# msa, tmp344
	movl	28(%rax), %eax	# msa_19(D)->nseq, D.6316
	cmpl	-212(%rbp), %eax	# idx, D.6316
	jg	.L83	#,
	.loc 1 348 0 is_stmt 1
	movq	-232(%rbp), %rax	# fp, tmp345
	movq	%rax, %rsi	# tmp345,
	movl	$10, %edi	#,
	call	fputc	#
	.loc 1 349 0
	movq	-232(%rbp), %rax	# fp, tmp346
	movq	%rax, %rcx	# tmp346,
	movl	$3, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC24, %edi	#,
	call	fwrite	#
	.loc 1 355 0
	movl	$0, -204(%rbp)	#, pos
	jmp	.L84	#
.L94:
	.loc 1 357 0
	movq	-232(%rbp), %rax	# fp, tmp347
	movq	%rax, %rsi	# tmp347,
	movl	$10, %edi	#,
	call	fputc	#
	.loc 1 360 0
	movl	-204(%rbp), %eax	# pos, tmp348
	leal	50(%rax), %edx	#, D.6316
	movq	-240(%rbp), %rax	# msa, tmp349
	movl	24(%rax), %eax	# msa_19(D)->alen, D.6316
	cmpl	%eax, %edx	# D.6316, D.6316
	jle	.L85	#,
	.loc 1 360 0 is_stmt 0 discriminator 1
	movq	-240(%rbp), %rax	# msa, tmp350
	movl	24(%rax), %eax	# msa_19(D)->alen, D.6316
	subl	-204(%rbp), %eax	# pos, iftmp.19
	jmp	.L86	#
.L85:
	.loc 1 360 0 discriminator 2
	movl	$50, %eax	#, iftmp.19
.L86:
	.loc 1 360 0 discriminator 3
	movl	%eax, -196(%rbp)	# iftmp.19, len
	.loc 1 361 0 is_stmt 1 discriminator 3
	cmpl	$10, -196(%rbp)	#, len
	jle	.L87	#,
	.loc 1 362 0
	movl	-196(%rbp), %eax	# len, tmp351
	movl	-204(%rbp), %edx	# pos, tmp352
	leal	(%rdx,%rax), %esi	#, D.6316
	.loc 1 364 0
	movl	-196(%rbp), %eax	# len, tmp353
	leal	-1(%rax), %ecx	#, D.6316
	movl	$1717986919, %edx	#, tmp355
	movl	%ecx, %eax	# D.6316, tmp393
	imull	%edx	# tmp355
	sarl	$2, %edx	#, tmp356
	movl	%ecx, %eax	# D.6316, tmp357
	sarl	$31, %eax	#, tmp357
	subl	%eax, %edx	# tmp357, D.6316
	movl	-196(%rbp), %eax	# len, tmp358
	addl	%edx, %eax	# D.6316, D.6316
	.loc 1 362 0
	leal	-12(%rax), %edi	#, D.6316
	movl	-204(%rbp), %eax	# pos, tmp359
	leal	1(%rax), %ecx	#, D.6316
	movl	-208(%rbp), %edx	# namelen, tmp360
	movq	-232(%rbp), %rax	# fp, tmp361
	movl	%esi, 8(%rsp)	# D.6316,
	movq	$.LC25, (%rsp)	#,
	movl	%edi, %r9d	# D.6316,
	movl	%ecx, %r8d	# D.6316,
	movl	$.LC25, %ecx	#,
	movl	$.LC26, %esi	#,
	movq	%rax, %rdi	# tmp361,
	movl	$0, %eax	#,
	call	fprintf	#
	jmp	.L88	#
.L87:
	.loc 1 367 0
	movl	-204(%rbp), %eax	# pos, tmp362
	leal	1(%rax), %ecx	#, D.6316
	movl	-208(%rbp), %edx	# namelen, tmp363
	movq	-232(%rbp), %rax	# fp, tmp364
	movl	%ecx, %r8d	# D.6316,
	movl	$.LC25, %ecx	#,
	movl	$.LC27, %esi	#,
	movq	%rax, %rdi	# tmp364,
	movl	$0, %eax	#,
	call	fprintf	#
.L88:
	.loc 1 369 0
	movl	$0, -212(%rbp)	#, idx
	jmp	.L89	#
.L93:
	.loc 1 371 0
	movl	-212(%rbp), %eax	# idx, tmp365
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6317
	movq	-168(%rbp), %rax	# gcg_sqname, tmp366
	addq	%rdx, %rax	# D.6317, D.6318
	movq	(%rax), %rcx	# *_217, D.6319
	movl	-208(%rbp), %edx	# namelen, tmp367
	movq	-232(%rbp), %rax	# fp, tmp368
	movl	$.LC28, %esi	#,
	movq	%rax, %rdi	# tmp368,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 373 0
	movl	-212(%rbp), %eax	# idx, tmp369
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6317
	movq	-176(%rbp), %rax	# gcg_aseq, tmp370
	addq	%rdx, %rax	# D.6317, D.6318
	movq	(%rax), %rdx	# *_221, D.6319
	movl	-204(%rbp), %eax	# pos, tmp371
	cltq
	leaq	(%rdx,%rax), %rcx	#, D.6319
	leaq	-160(%rbp), %rax	#, tmp372
	movl	$50, %edx	#,
	movq	%rcx, %rsi	# D.6319,
	movq	%rax, %rdi	# tmp372,
	call	strncpy	#
	.loc 1 374 0
	movb	$0, -110(%rbp)	#, buffer
	.loc 1 376 0
	movl	$0, -200(%rbp)	#, i
	jmp	.L90	#
.L92:
	.loc 1 378 0
	movl	-200(%rbp), %ecx	# i, tmp373
	movl	$1717986919, %edx	#, tmp375
	movl	%ecx, %eax	# tmp373, tmp394
	imull	%edx	# tmp375
	sarl	$2, %edx	#, tmp376
	movl	%ecx, %eax	# tmp373, tmp377
	sarl	$31, %eax	#, tmp377
	subl	%eax, %edx	# tmp377, D.6316
	movl	%edx, %eax	# D.6316, tmp378
	sall	$2, %eax	#, tmp378
	addl	%edx, %eax	# D.6316, tmp378
	addl	%eax, %eax	# tmp379
	subl	%eax, %ecx	# tmp378, D.6316
	movl	%ecx, %edx	# D.6316, D.6316
	testl	%edx, %edx	# D.6316
	jne	.L91	#,
	.loc 1 378 0 is_stmt 0 discriminator 1
	movq	-232(%rbp), %rax	# fp, tmp380
	movq	%rax, %rsi	# tmp380,
	movl	$32, %edi	#,
	call	fputc	#
.L91:
	.loc 1 379 0 is_stmt 1
	movl	-200(%rbp), %eax	# i, tmp382
	cltq
	movzbl	-160(%rbp,%rax), %eax	# buffer, D.6320
	movsbl	%al, %eax	# D.6320, D.6316
	movq	-232(%rbp), %rdx	# fp, tmp383
	movq	%rdx, %rsi	# tmp383,
	movl	%eax, %edi	# D.6316,
	call	fputc	#
	.loc 1 376 0
	addl	$1, -200(%rbp)	#, i
.L90:
	.loc 1 376 0 is_stmt 0 discriminator 1
	movl	-200(%rbp), %eax	# i, tmp384
	cmpl	-196(%rbp), %eax	# len, tmp384
	jl	.L92	#,
	.loc 1 381 0 is_stmt 1
	movq	-232(%rbp), %rax	# fp, tmp385
	movq	%rax, %rsi	# tmp385,
	movl	$10, %edi	#,
	call	fputc	#
	.loc 1 369 0
	addl	$1, -212(%rbp)	#, idx
.L89:
	.loc 1 369 0 is_stmt 0 discriminator 1
	movq	-240(%rbp), %rax	# msa, tmp386
	movl	28(%rax), %eax	# msa_19(D)->nseq, D.6316
	cmpl	-212(%rbp), %eax	# idx, D.6316
	jg	.L93	#,
	.loc 1 355 0 is_stmt 1
	addl	$50, -204(%rbp)	#, pos
.L84:
	.loc 1 355 0 is_stmt 0 discriminator 1
	movq	-240(%rbp), %rax	# msa, tmp387
	movl	24(%rax), %eax	# msa_19(D)->alen, D.6316
	cmpl	-204(%rbp), %eax	# pos, D.6316
	jg	.L94	#,
	.loc 1 385 0 is_stmt 1
	movq	-240(%rbp), %rax	# msa, tmp388
	movl	28(%rax), %edx	# msa_19(D)->nseq, D.6316
	movq	-176(%rbp), %rax	# gcg_aseq, tmp389
	movl	%edx, %esi	# D.6316,
	movq	%rax, %rdi	# tmp389,
	call	Free2DArray	#
	.loc 1 386 0
	movq	-240(%rbp), %rax	# msa, tmp390
	movl	28(%rax), %edx	# msa_19(D)->nseq, D.6316
	movq	-168(%rbp), %rax	# gcg_sqname, tmp391
	movl	%edx, %esi	# D.6316,
	movq	%rax, %rdi	# tmp391,
	call	Free2DArray	#
	.loc 1 387 0
	nop
	.loc 1 388 0
	movq	-24(%rbp), %rax	# D.6329, tmp395
	xorq	%fs:40, %rax	#, tmp395
	je	.L96	#,
	call	__stack_chk_fail	#
.L96:
	addq	$264, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	WriteMSF, .-WriteMSF
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "/usr/include/time.h"
	.file 7 "squid.h"
	.file 8 "gki.h"
	.file 9 "ssi.h"
	.file 10 "msa.h"
	.file 11 "/usr/include/ctype.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xa3a
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF147
	.byte	0x1
	.long	.LASF148
	.long	.LASF149
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
	.uleb128 0x2
	.long	.LASF11
	.byte	0x3
	.byte	0x94
	.long	0x69
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0xa0
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF12
	.uleb128 0x2
	.long	.LASF13
	.byte	0x4
	.byte	0x30
	.long	0xb2
	.uleb128 0x7
	.long	.LASF43
	.byte	0xd8
	.byte	0x5
	.byte	0xf6
	.long	0x233
	.uleb128 0x8
	.long	.LASF14
	.byte	0x5
	.byte	0xf7
	.long	0x62
	.byte	0
	.uleb128 0x8
	.long	.LASF15
	.byte	0x5
	.byte	0xfc
	.long	0x9a
	.byte	0x8
	.uleb128 0x8
	.long	.LASF16
	.byte	0x5
	.byte	0xfd
	.long	0x9a
	.byte	0x10
	.uleb128 0x8
	.long	.LASF17
	.byte	0x5
	.byte	0xfe
	.long	0x9a
	.byte	0x18
	.uleb128 0x8
	.long	.LASF18
	.byte	0x5
	.byte	0xff
	.long	0x9a
	.byte	0x20
	.uleb128 0x9
	.long	.LASF19
	.byte	0x5
	.value	0x100
	.long	0x9a
	.byte	0x28
	.uleb128 0x9
	.long	.LASF20
	.byte	0x5
	.value	0x101
	.long	0x9a
	.byte	0x30
	.uleb128 0x9
	.long	.LASF21
	.byte	0x5
	.value	0x102
	.long	0x9a
	.byte	0x38
	.uleb128 0x9
	.long	.LASF22
	.byte	0x5
	.value	0x103
	.long	0x9a
	.byte	0x40
	.uleb128 0x9
	.long	.LASF23
	.byte	0x5
	.value	0x105
	.long	0x9a
	.byte	0x48
	.uleb128 0x9
	.long	.LASF24
	.byte	0x5
	.value	0x106
	.long	0x9a
	.byte	0x50
	.uleb128 0x9
	.long	.LASF25
	.byte	0x5
	.value	0x107
	.long	0x9a
	.byte	0x58
	.uleb128 0x9
	.long	.LASF26
	.byte	0x5
	.value	0x109
	.long	0x26b
	.byte	0x60
	.uleb128 0x9
	.long	.LASF27
	.byte	0x5
	.value	0x10b
	.long	0x271
	.byte	0x68
	.uleb128 0x9
	.long	.LASF28
	.byte	0x5
	.value	0x10d
	.long	0x62
	.byte	0x70
	.uleb128 0x9
	.long	.LASF29
	.byte	0x5
	.value	0x111
	.long	0x62
	.byte	0x74
	.uleb128 0x9
	.long	.LASF30
	.byte	0x5
	.value	0x113
	.long	0x70
	.byte	0x78
	.uleb128 0x9
	.long	.LASF31
	.byte	0x5
	.value	0x117
	.long	0x46
	.byte	0x80
	.uleb128 0x9
	.long	.LASF32
	.byte	0x5
	.value	0x118
	.long	0x54
	.byte	0x82
	.uleb128 0x9
	.long	.LASF33
	.byte	0x5
	.value	0x119
	.long	0x277
	.byte	0x83
	.uleb128 0x9
	.long	.LASF34
	.byte	0x5
	.value	0x11d
	.long	0x287
	.byte	0x88
	.uleb128 0x9
	.long	.LASF35
	.byte	0x5
	.value	0x126
	.long	0x7b
	.byte	0x90
	.uleb128 0x9
	.long	.LASF36
	.byte	0x5
	.value	0x12f
	.long	0x98
	.byte	0x98
	.uleb128 0x9
	.long	.LASF37
	.byte	0x5
	.value	0x130
	.long	0x98
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF38
	.byte	0x5
	.value	0x131
	.long	0x98
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF39
	.byte	0x5
	.value	0x132
	.long	0x98
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF40
	.byte	0x5
	.value	0x133
	.long	0x2d
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF41
	.byte	0x5
	.value	0x135
	.long	0x62
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF42
	.byte	0x5
	.value	0x137
	.long	0x28d
	.byte	0xc4
	.byte	0
	.uleb128 0xa
	.long	.LASF150
	.byte	0x5
	.byte	0x9b
	.uleb128 0x7
	.long	.LASF44
	.byte	0x18
	.byte	0x5
	.byte	0xa1
	.long	0x26b
	.uleb128 0x8
	.long	.LASF45
	.byte	0x5
	.byte	0xa2
	.long	0x26b
	.byte	0
	.uleb128 0x8
	.long	.LASF46
	.byte	0x5
	.byte	0xa3
	.long	0x271
	.byte	0x8
	.uleb128 0x8
	.long	.LASF47
	.byte	0x5
	.byte	0xa7
	.long	0x62
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x23a
	.uleb128 0x6
	.byte	0x8
	.long	0xb2
	.uleb128 0xb
	.long	0xa0
	.long	0x287
	.uleb128 0xc
	.long	0x86
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x233
	.uleb128 0xb
	.long	0xa0
	.long	0x29d
	.uleb128 0xc
	.long	0x86
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x62
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF48
	.uleb128 0x2
	.long	.LASF49
	.byte	0x6
	.byte	0x4b
	.long	0x8d
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF50
	.uleb128 0xd
	.byte	0x4
	.byte	0xb
	.byte	0x30
	.long	0x318
	.uleb128 0xe
	.long	.LASF51
	.sleb128 256
	.uleb128 0xe
	.long	.LASF52
	.sleb128 512
	.uleb128 0xe
	.long	.LASF53
	.sleb128 1024
	.uleb128 0xe
	.long	.LASF54
	.sleb128 2048
	.uleb128 0xe
	.long	.LASF55
	.sleb128 4096
	.uleb128 0xe
	.long	.LASF56
	.sleb128 8192
	.uleb128 0xe
	.long	.LASF57
	.sleb128 16384
	.uleb128 0xe
	.long	.LASF58
	.sleb128 32768
	.uleb128 0xe
	.long	.LASF59
	.sleb128 1
	.uleb128 0xe
	.long	.LASF60
	.sleb128 2
	.uleb128 0xe
	.long	.LASF61
	.sleb128 4
	.uleb128 0xe
	.long	.LASF62
	.sleb128 8
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF63
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF64
	.uleb128 0x2
	.long	.LASF65
	.byte	0x7
	.byte	0x28
	.long	0x46
	.uleb128 0x2
	.long	.LASF66
	.byte	0x7
	.byte	0x29
	.long	0x4d
	.uleb128 0x2
	.long	.LASF67
	.byte	0x7
	.byte	0x2a
	.long	0x2b5
	.uleb128 0xb
	.long	0xa0
	.long	0x357
	.uleb128 0xc
	.long	0x86
	.byte	0x3f
	.byte	0
	.uleb128 0x7
	.long	.LASF68
	.byte	0x18
	.byte	0x8
	.byte	0x1a
	.long	0x388
	.uleb128 0xf
	.string	"key"
	.byte	0x8
	.byte	0x1b
	.long	0x9a
	.byte	0
	.uleb128 0xf
	.string	"idx"
	.byte	0x8
	.byte	0x1c
	.long	0x62
	.byte	0x8
	.uleb128 0xf
	.string	"nxt"
	.byte	0x8
	.byte	0x1d
	.long	0x388
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x357
	.uleb128 0x10
	.byte	0x18
	.byte	0x8
	.byte	0x24
	.long	0x3c7
	.uleb128 0x8
	.long	.LASF69
	.byte	0x8
	.byte	0x25
	.long	0x3c7
	.byte	0
	.uleb128 0x8
	.long	.LASF70
	.byte	0x8
	.byte	0x27
	.long	0x62
	.byte	0x8
	.uleb128 0x8
	.long	.LASF71
	.byte	0x8
	.byte	0x28
	.long	0x62
	.byte	0xc
	.uleb128 0x8
	.long	.LASF72
	.byte	0x8
	.byte	0x29
	.long	0x62
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x388
	.uleb128 0x11
	.string	"GKI"
	.byte	0x8
	.byte	0x2a
	.long	0x38e
	.uleb128 0x12
	.byte	0x8
	.byte	0x9
	.byte	0x25
	.long	0x3f7
	.uleb128 0x13
	.string	"i32"
	.byte	0x9
	.byte	0x26
	.long	0x331
	.uleb128 0x13
	.string	"i64"
	.byte	0x9
	.byte	0x27
	.long	0x33c
	.byte	0
	.uleb128 0x7
	.long	.LASF73
	.byte	0x10
	.byte	0x9
	.byte	0x23
	.long	0x41c
	.uleb128 0x8
	.long	.LASF74
	.byte	0x9
	.byte	0x24
	.long	0xa0
	.byte	0
	.uleb128 0xf
	.string	"off"
	.byte	0x9
	.byte	0x28
	.long	0x3d8
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.long	.LASF75
	.byte	0x9
	.byte	0x2a
	.long	0x3f7
	.uleb128 0x7
	.long	.LASF76
	.byte	0x90
	.byte	0x9
	.byte	0x31
	.long	0x52f
	.uleb128 0xf
	.string	"fp"
	.byte	0x9
	.byte	0x32
	.long	0x52f
	.byte	0
	.uleb128 0x8
	.long	.LASF77
	.byte	0x9
	.byte	0x33
	.long	0x331
	.byte	0x8
	.uleb128 0x8
	.long	.LASF78
	.byte	0x9
	.byte	0x34
	.long	0x326
	.byte	0xc
	.uleb128 0x8
	.long	.LASF79
	.byte	0x9
	.byte	0x35
	.long	0x331
	.byte	0x10
	.uleb128 0x8
	.long	.LASF80
	.byte	0x9
	.byte	0x36
	.long	0x331
	.byte	0x14
	.uleb128 0x8
	.long	.LASF81
	.byte	0x9
	.byte	0x37
	.long	0x331
	.byte	0x18
	.uleb128 0x8
	.long	.LASF82
	.byte	0x9
	.byte	0x38
	.long	0x331
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF83
	.byte	0x9
	.byte	0x39
	.long	0x331
	.byte	0x20
	.uleb128 0x8
	.long	.LASF84
	.byte	0x9
	.byte	0x3a
	.long	0x331
	.byte	0x24
	.uleb128 0x8
	.long	.LASF85
	.byte	0x9
	.byte	0x3b
	.long	0x331
	.byte	0x28
	.uleb128 0x8
	.long	.LASF86
	.byte	0x9
	.byte	0x3c
	.long	0x331
	.byte	0x2c
	.uleb128 0x8
	.long	.LASF87
	.byte	0x9
	.byte	0x3d
	.long	0x41c
	.byte	0x30
	.uleb128 0x8
	.long	.LASF88
	.byte	0x9
	.byte	0x3e
	.long	0x41c
	.byte	0x40
	.uleb128 0x8
	.long	.LASF89
	.byte	0x9
	.byte	0x3f
	.long	0x41c
	.byte	0x50
	.uleb128 0x8
	.long	.LASF90
	.byte	0x9
	.byte	0x41
	.long	0xa0
	.byte	0x60
	.uleb128 0x8
	.long	.LASF91
	.byte	0x9
	.byte	0x42
	.long	0xa0
	.byte	0x61
	.uleb128 0x8
	.long	.LASF92
	.byte	0x9
	.byte	0x46
	.long	0x535
	.byte	0x68
	.uleb128 0x8
	.long	.LASF93
	.byte	0x9
	.byte	0x47
	.long	0x53b
	.byte	0x70
	.uleb128 0x8
	.long	.LASF94
	.byte	0x9
	.byte	0x48
	.long	0x53b
	.byte	0x78
	.uleb128 0xf
	.string	"bpl"
	.byte	0x9
	.byte	0x49
	.long	0x53b
	.byte	0x80
	.uleb128 0xf
	.string	"rpl"
	.byte	0x9
	.byte	0x4a
	.long	0x53b
	.byte	0x88
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xa7
	.uleb128 0x6
	.byte	0x8
	.long	0x9a
	.uleb128 0x6
	.byte	0x8
	.long	0x331
	.uleb128 0x2
	.long	.LASF95
	.byte	0x9
	.byte	0x4c
	.long	0x427
	.uleb128 0x6
	.byte	0x8
	.long	0x318
	.uleb128 0x14
	.long	.LASF96
	.value	0x168
	.byte	0xa
	.byte	0x70
	.long	0x78e
	.uleb128 0x8
	.long	.LASF97
	.byte	0xa
	.byte	0x73
	.long	0x535
	.byte	0
	.uleb128 0x8
	.long	.LASF98
	.byte	0xa
	.byte	0x74
	.long	0x535
	.byte	0x8
	.uleb128 0xf
	.string	"wgt"
	.byte	0xa
	.byte	0x75
	.long	0x54c
	.byte	0x10
	.uleb128 0x8
	.long	.LASF99
	.byte	0xa
	.byte	0x76
	.long	0x62
	.byte	0x18
	.uleb128 0x8
	.long	.LASF100
	.byte	0xa
	.byte	0x77
	.long	0x62
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF77
	.byte	0xa
	.byte	0x7b
	.long	0x62
	.byte	0x20
	.uleb128 0x8
	.long	.LASF101
	.byte	0xa
	.byte	0x7c
	.long	0x62
	.byte	0x24
	.uleb128 0x8
	.long	.LASF102
	.byte	0xa
	.byte	0x7d
	.long	0x9a
	.byte	0x28
	.uleb128 0x8
	.long	.LASF103
	.byte	0xa
	.byte	0x7e
	.long	0x9a
	.byte	0x30
	.uleb128 0xf
	.string	"acc"
	.byte	0xa
	.byte	0x7f
	.long	0x9a
	.byte	0x38
	.uleb128 0xf
	.string	"au"
	.byte	0xa
	.byte	0x80
	.long	0x9a
	.byte	0x40
	.uleb128 0x8
	.long	.LASF104
	.byte	0xa
	.byte	0x81
	.long	0x9a
	.byte	0x48
	.uleb128 0x8
	.long	.LASF105
	.byte	0xa
	.byte	0x82
	.long	0x9a
	.byte	0x50
	.uleb128 0xf
	.string	"rf"
	.byte	0xa
	.byte	0x83
	.long	0x9a
	.byte	0x58
	.uleb128 0x8
	.long	.LASF106
	.byte	0xa
	.byte	0x84
	.long	0x535
	.byte	0x60
	.uleb128 0x8
	.long	.LASF107
	.byte	0xa
	.byte	0x85
	.long	0x535
	.byte	0x68
	.uleb128 0xf
	.string	"ss"
	.byte	0xa
	.byte	0x86
	.long	0x535
	.byte	0x70
	.uleb128 0xf
	.string	"sa"
	.byte	0xa
	.byte	0x87
	.long	0x535
	.byte	0x78
	.uleb128 0x8
	.long	.LASF108
	.byte	0xa
	.byte	0x88
	.long	0x78e
	.byte	0x80
	.uleb128 0x8
	.long	.LASF109
	.byte	0xa
	.byte	0x89
	.long	0x79e
	.byte	0x98
	.uleb128 0x8
	.long	.LASF110
	.byte	0xa
	.byte	0x90
	.long	0x535
	.byte	0xb0
	.uleb128 0x8
	.long	.LASF111
	.byte	0xa
	.byte	0x91
	.long	0x62
	.byte	0xb8
	.uleb128 0x8
	.long	.LASF112
	.byte	0xa
	.byte	0x92
	.long	0x62
	.byte	0xbc
	.uleb128 0x8
	.long	.LASF113
	.byte	0xa
	.byte	0x94
	.long	0x535
	.byte	0xc0
	.uleb128 0xf
	.string	"gf"
	.byte	0xa
	.byte	0x95
	.long	0x535
	.byte	0xc8
	.uleb128 0xf
	.string	"ngf"
	.byte	0xa
	.byte	0x96
	.long	0x62
	.byte	0xd0
	.uleb128 0x8
	.long	.LASF114
	.byte	0xa
	.byte	0x97
	.long	0x62
	.byte	0xd4
	.uleb128 0x8
	.long	.LASF115
	.byte	0xa
	.byte	0x99
	.long	0x535
	.byte	0xd8
	.uleb128 0xf
	.string	"gs"
	.byte	0xa
	.byte	0x9a
	.long	0x7ae
	.byte	0xe0
	.uleb128 0x8
	.long	.LASF116
	.byte	0xa
	.byte	0x9b
	.long	0x7b4
	.byte	0xe8
	.uleb128 0xf
	.string	"ngs"
	.byte	0xa
	.byte	0x9c
	.long	0x62
	.byte	0xf0
	.uleb128 0x8
	.long	.LASF117
	.byte	0xa
	.byte	0x9e
	.long	0x535
	.byte	0xf8
	.uleb128 0x15
	.string	"gc"
	.byte	0xa
	.byte	0x9f
	.long	0x535
	.value	0x100
	.uleb128 0x16
	.long	.LASF118
	.byte	0xa
	.byte	0xa0
	.long	0x7b4
	.value	0x108
	.uleb128 0x15
	.string	"ngc"
	.byte	0xa
	.byte	0xa1
	.long	0x62
	.value	0x110
	.uleb128 0x16
	.long	.LASF119
	.byte	0xa
	.byte	0xa3
	.long	0x535
	.value	0x118
	.uleb128 0x15
	.string	"gr"
	.byte	0xa
	.byte	0xa4
	.long	0x7ae
	.value	0x120
	.uleb128 0x16
	.long	.LASF120
	.byte	0xa
	.byte	0xa5
	.long	0x7b4
	.value	0x128
	.uleb128 0x15
	.string	"ngr"
	.byte	0xa
	.byte	0xa6
	.long	0x62
	.value	0x130
	.uleb128 0x16
	.long	.LASF121
	.byte	0xa
	.byte	0xaa
	.long	0x7b4
	.value	0x138
	.uleb128 0x16
	.long	.LASF122
	.byte	0xa
	.byte	0xab
	.long	0x62
	.value	0x140
	.uleb128 0x16
	.long	.LASF123
	.byte	0xa
	.byte	0xac
	.long	0x62
	.value	0x144
	.uleb128 0x16
	.long	.LASF124
	.byte	0xa
	.byte	0xad
	.long	0x29d
	.value	0x148
	.uleb128 0x16
	.long	.LASF125
	.byte	0xa
	.byte	0xae
	.long	0x29d
	.value	0x150
	.uleb128 0x16
	.long	.LASF126
	.byte	0xa
	.byte	0xaf
	.long	0x29d
	.value	0x158
	.uleb128 0x16
	.long	.LASF127
	.byte	0xa
	.byte	0xb0
	.long	0x62
	.value	0x160
	.byte	0
	.uleb128 0xb
	.long	0x318
	.long	0x79e
	.uleb128 0xc
	.long	0x86
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.long	0x62
	.long	0x7ae
	.uleb128 0xc
	.long	0x86
	.byte	0x5
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x535
	.uleb128 0x6
	.byte	0x8
	.long	0x3cd
	.uleb128 0x11
	.string	"MSA"
	.byte	0xa
	.byte	0xb1
	.long	0x552
	.uleb128 0x7
	.long	.LASF128
	.byte	0x40
	.byte	0xa
	.byte	0xba
	.long	0x83c
	.uleb128 0xf
	.string	"f"
	.byte	0xa
	.byte	0xbb
	.long	0x52f
	.byte	0
	.uleb128 0x8
	.long	.LASF129
	.byte	0xa
	.byte	0xbc
	.long	0x9a
	.byte	0x8
	.uleb128 0x8
	.long	.LASF130
	.byte	0xa
	.byte	0xbd
	.long	0x62
	.byte	0x10
	.uleb128 0xf
	.string	"buf"
	.byte	0xa
	.byte	0xbf
	.long	0x9a
	.byte	0x18
	.uleb128 0x8
	.long	.LASF131
	.byte	0xa
	.byte	0xc0
	.long	0x62
	.byte	0x20
	.uleb128 0xf
	.string	"ssi"
	.byte	0xa
	.byte	0xc2
	.long	0x83c
	.byte	0x28
	.uleb128 0x8
	.long	.LASF132
	.byte	0xa
	.byte	0xc4
	.long	0x62
	.byte	0x30
	.uleb128 0x8
	.long	.LASF133
	.byte	0xa
	.byte	0xc5
	.long	0x62
	.byte	0x34
	.uleb128 0x8
	.long	.LASF134
	.byte	0xa
	.byte	0xc6
	.long	0x62
	.byte	0x38
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x541
	.uleb128 0x2
	.long	.LASF135
	.byte	0xa
	.byte	0xc7
	.long	0x7c5
	.uleb128 0x6
	.byte	0x8
	.long	0x7ba
	.uleb128 0x6
	.byte	0x8
	.long	0x842
	.uleb128 0xb
	.long	0x9a
	.long	0x869
	.uleb128 0xc
	.long	0x86
	.byte	0x9
	.byte	0
	.uleb128 0x17
	.long	.LASF151
	.byte	0x1
	.byte	0x52
	.long	0x84d
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x938
	.uleb128 0x18
	.string	"afp"
	.byte	0x1
	.byte	0x52
	.long	0x853
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x19
	.string	"msa"
	.byte	0x1
	.byte	0x54
	.long	0x84d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x19
	.string	"s"
	.byte	0x1
	.byte	0x55
	.long	0x9a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1a
	.long	.LASF136
	.byte	0x1
	.byte	0x56
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1a
	.long	.LASF137
	.byte	0x1
	.byte	0x57
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1a
	.long	.LASF138
	.byte	0x1
	.byte	0x58
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x19
	.string	"tok"
	.byte	0x1
	.byte	0x59
	.long	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x19
	.string	"sp"
	.byte	0x1
	.byte	0x5a
	.long	0x9a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1a
	.long	.LASF83
	.byte	0x1
	.byte	0x5b
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x1a
	.long	.LASF139
	.byte	0x1
	.byte	0x5c
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x1a
	.long	.LASF102
	.byte	0x1
	.byte	0x5d
	.long	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x19
	.string	"seq"
	.byte	0x1
	.byte	0x5e
	.long	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x1b
	.long	.LASF152
	.byte	0x1
	.byte	0xf5
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0xa16
	.uleb128 0x18
	.string	"fp"
	.byte	0x1
	.byte	0xf5
	.long	0x52f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x18
	.string	"msa"
	.byte	0x1
	.byte	0xf5
	.long	0x84d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x19
	.string	"now"
	.byte	0x1
	.byte	0xf7
	.long	0x2aa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x1a
	.long	.LASF140
	.byte	0x1
	.byte	0xf8
	.long	0x347
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x1a
	.long	.LASF141
	.byte	0x1
	.byte	0xf9
	.long	0x535
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x1a
	.long	.LASF142
	.byte	0x1
	.byte	0xfa
	.long	0x535
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x19
	.string	"idx"
	.byte	0x1
	.byte	0xfb
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -228
	.uleb128 0x19
	.string	"s"
	.byte	0x1
	.byte	0xfc
	.long	0x9a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x19
	.string	"len"
	.byte	0x1
	.byte	0xfd
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -212
	.uleb128 0x1a
	.long	.LASF143
	.byte	0x1
	.byte	0xfe
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x19
	.string	"pos"
	.byte	0x1
	.byte	0xff
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -220
	.uleb128 0x1c
	.long	.LASF144
	.byte	0x1
	.value	0x100
	.long	0xa16
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.value	0x101
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.byte	0
	.uleb128 0xb
	.long	0xa0
	.long	0xa26
	.uleb128 0xc
	.long	0x86
	.byte	0x32
	.byte	0
	.uleb128 0x1e
	.long	.LASF145
	.byte	0x7
	.byte	0x3b
	.long	0x62
	.uleb128 0x1f
	.long	.LASF146
	.byte	0x7
	.value	0x16b
	.long	0x859
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
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x16
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
	.uleb128 0x1f
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
.LASF8:
	.string	"__off_t"
.LASF139:
	.string	"sqidx"
.LASF58:
	.string	"_ISgraph"
.LASF135:
	.string	"MSAFILE"
.LASF27:
	.string	"_chain"
.LASF7:
	.string	"size_t"
.LASF66:
	.string	"sqd_uint32"
.LASF89:
	.string	"soffset"
.LASF33:
	.string	"_shortbuf"
.LASF109:
	.string	"cutoff_is_set"
.LASF56:
	.string	"_ISspace"
.LASF123:
	.string	"nseqlump"
.LASF101:
	.string	"type"
.LASF107:
	.string	"sqdesc"
.LASF73:
	.string	"ssioffset_s"
.LASF117:
	.string	"gc_tag"
.LASF114:
	.string	"alloc_ngf"
.LASF100:
	.string	"nseq"
.LASF50:
	.string	"long long unsigned int"
.LASF83:
	.string	"slen"
.LASF138:
	.string	"alleged_checksum"
.LASF53:
	.string	"_ISalpha"
.LASF82:
	.string	"plen"
.LASF95:
	.string	"SSIFILE"
.LASF54:
	.string	"_ISdigit"
.LASF115:
	.string	"gs_tag"
.LASF80:
	.string	"nsecondary"
.LASF4:
	.string	"signed char"
.LASF84:
	.string	"frecsize"
.LASF28:
	.string	"_fileno"
.LASF16:
	.string	"_IO_read_end"
.LASF150:
	.string	"_IO_lock_t"
.LASF96:
	.string	"msa_struct"
.LASF6:
	.string	"long int"
.LASF14:
	.string	"_flags"
.LASF112:
	.string	"alloc_ncomment"
.LASF70:
	.string	"primelevel"
.LASF48:
	.string	"long long int"
.LASF64:
	.string	"double"
.LASF30:
	.string	"_old_offset"
.LASF35:
	.string	"_offset"
.LASF59:
	.string	"_ISblank"
.LASF152:
	.string	"WriteMSF"
.LASF106:
	.string	"sqacc"
.LASF141:
	.string	"gcg_aseq"
.LASF88:
	.string	"poffset"
.LASF61:
	.string	"_ISpunct"
.LASF44:
	.string	"_IO_marker"
.LASF91:
	.string	"smode"
.LASF3:
	.string	"unsigned int"
.LASF126:
	.string	"salen"
.LASF127:
	.string	"lastidx"
.LASF76:
	.string	"ssifile_s"
.LASF0:
	.string	"long unsigned int"
.LASF125:
	.string	"sslen"
.LASF19:
	.string	"_IO_write_ptr"
.LASF102:
	.string	"name"
.LASF46:
	.string	"_sbuf"
.LASF128:
	.string	"msafile_struct"
.LASF140:
	.string	"date"
.LASF47:
	.string	"_pos"
.LASF23:
	.string	"_IO_save_base"
.LASF81:
	.string	"flen"
.LASF67:
	.string	"sqd_uint64"
.LASF34:
	.string	"_lock"
.LASF29:
	.string	"_flags2"
.LASF41:
	.string	"_mode"
.LASF129:
	.string	"fname"
.LASF104:
	.string	"ss_cons"
.LASF146:
	.string	"sqd_parse"
.LASF118:
	.string	"gc_idx"
.LASF10:
	.string	"sizetype"
.LASF133:
	.string	"do_stdin"
.LASF119:
	.string	"gr_tag"
.LASF97:
	.string	"aseq"
.LASF92:
	.string	"filename"
.LASF103:
	.string	"desc"
.LASF15:
	.string	"_IO_read_ptr"
.LASF87:
	.string	"foffset"
.LASF11:
	.string	"__time_t"
.LASF116:
	.string	"gs_idx"
.LASF43:
	.string	"_IO_FILE"
.LASF94:
	.string	"fileflags"
.LASF122:
	.string	"nseqalloc"
.LASF124:
	.string	"sqlen"
.LASF49:
	.string	"time_t"
.LASF63:
	.string	"float"
.LASF132:
	.string	"do_gzip"
.LASF26:
	.string	"_markers"
.LASF78:
	.string	"nfiles"
.LASF130:
	.string	"linenumber"
.LASF1:
	.string	"unsigned char"
.LASF110:
	.string	"comment"
.LASF22:
	.string	"_IO_buf_end"
.LASF79:
	.string	"nprimary"
.LASF5:
	.string	"short int"
.LASF72:
	.string	"nkeys"
.LASF69:
	.string	"table"
.LASF145:
	.string	"squid_errno"
.LASF32:
	.string	"_vtable_offset"
.LASF65:
	.string	"sqd_uint16"
.LASF13:
	.string	"FILE"
.LASF131:
	.string	"buflen"
.LASF134:
	.string	"format"
.LASF85:
	.string	"precsize"
.LASF90:
	.string	"imode"
.LASF151:
	.string	"ReadMSF"
.LASF12:
	.string	"char"
.LASF105:
	.string	"sa_cons"
.LASF74:
	.string	"mode"
.LASF68:
	.string	"gki_elem"
.LASF60:
	.string	"_IScntrl"
.LASF99:
	.string	"alen"
.LASF55:
	.string	"_ISxdigit"
.LASF121:
	.string	"index"
.LASF52:
	.string	"_ISlower"
.LASF144:
	.string	"buffer"
.LASF93:
	.string	"fileformat"
.LASF143:
	.string	"namelen"
.LASF45:
	.string	"_next"
.LASF9:
	.string	"__off64_t"
.LASF31:
	.string	"_cur_column"
.LASF17:
	.string	"_IO_read_base"
.LASF25:
	.string	"_IO_save_end"
.LASF86:
	.string	"srecsize"
.LASF2:
	.string	"short unsigned int"
.LASF111:
	.string	"ncomment"
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
.LASF20:
	.string	"_IO_write_end"
.LASF108:
	.string	"cutoff"
.LASF42:
	.string	"_unused2"
.LASF142:
	.string	"gcg_sqname"
.LASF62:
	.string	"_ISalnum"
.LASF51:
	.string	"_ISupper"
.LASF147:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF24:
	.string	"_IO_backup_base"
.LASF137:
	.string	"alleged_type"
.LASF77:
	.string	"flags"
.LASF98:
	.string	"sqname"
.LASF136:
	.string	"alleged_alen"
.LASF120:
	.string	"gr_idx"
.LASF71:
	.string	"nhash"
.LASF149:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/456.hmmer/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF148:
	.string	"msf.c"
.LASF113:
	.string	"gf_tag"
.LASF18:
	.string	"_IO_write_base"
.LASF21:
	.string	"_IO_buf_base"
.LASF57:
	.string	"_ISprint"
.LASF75:
	.string	"SSIOFFSET"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
