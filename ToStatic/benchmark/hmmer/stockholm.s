	.file	"stockholm.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 stockholm.c -mtune=generic -march=x86-64 -g
# -fverbose-asm -fno-strict-aliasing -fstack-protector -Wformat
# -Wformat-security
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
	.string	"# STOCKHOLM 1."
	.align 8
.LC1:
	.ascii	"File %s doesn't appear to be in Stockholm format.\nAssuming "
	.ascii	"there isn't some o"
	.string	"ther problem with your file (it is an\nalignment file, right?), please either:\n  a) use the Babelfish format autotranslator option (-B, usually);\n  b) specify the file's format with the --informat option; or\n  a) reformat the alignment to Stockholm format.\n"
.LC2:
	.string	"#=GF"
.LC3:
	.string	"#=GS"
.LC4:
	.string	"#=GC"
.LC5:
	.string	"#=GR"
.LC6:
	.string	"//"
.LC7:
	.string	""
	.align 8
.LC8:
	.string	"Stockholm format parse error: line %d of file %s while reading alignment %s"
	.align 8
.LC9:
	.string	"Didn't find // at end of alignment %s"
	.text
	.globl	ReadStockholm
	.type	ReadStockholm, @function
ReadStockholm:
.LFB2:
	.file 1 "stockholm.c"
	.loc 1 95 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# afp, afp
	.loc 1 100 0
	movq	-40(%rbp), %rax	# afp, tmp83
	movq	(%rax), %rax	# afp_8(D)->f, D.6462
	movq	%rax, %rdi	# D.6462,
	call	feof	#
	testl	%eax, %eax	# D.6463
	je	.L2	#,
	.loc 1 100 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.6461
	jmp	.L3	#
.L2:
	.loc 1 104 0 is_stmt 1
	movl	$0, %esi	#,
	movl	$10, %edi	#,
	call	MSAAlloc	#
	movq	%rax, -8(%rbp)	# tmp84, msa
.L5:
	.loc 1 112 0
	movq	-40(%rbp), %rax	# afp, tmp85
	movq	%rax, %rdi	# tmp85,
	call	MSAFileGetLine	#
	movq	%rax, -16(%rbp)	# tmp86, s
	cmpq	$0, -16(%rbp)	#, s
	jne	.L4	#,
	.loc 1 113 0
	movq	-8(%rbp), %rax	# msa, tmp87
	movq	%rax, %rdi	# tmp87,
	call	MSAFree	#
	.loc 1 114 0
	movl	$0, %eax	#, D.6461
	jmp	.L3	#
.L4:
	.loc 1 116 0
	movq	-16(%rbp), %rax	# s, tmp88
	movq	%rax, %rdi	# tmp88,
	call	IsBlankline	#
	testl	%eax, %eax	# D.6463
	jne	.L5	#,
	.loc 1 118 0
	movq	-16(%rbp), %rax	# s, tmp89
	movl	$14, %edx	#,
	movl	$.LC0, %esi	#,
	movq	%rax, %rdi	# tmp89,
	call	strncmp	#
	testl	%eax, %eax	# D.6463
	je	.L6	#,
	.loc 1 119 0
	movq	-40(%rbp), %rax	# afp, tmp90
	movq	8(%rax), %rax	# afp_8(D)->fname, D.6464
	movq	%rax, %rsi	# D.6464,
	movl	$.LC1, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
	.loc 1 130 0
	jmp	.L7	#
.L6:
	jmp	.L7	#
.L22:
	.loc 1 132 0
	jmp	.L8	#
.L9:
	.loc 1 132 0 is_stmt 0 discriminator 2
	addq	$1, -16(%rbp)	#, s
.L8:
	.loc 1 132 0 discriminator 1
	movq	-16(%rbp), %rax	# s, tmp91
	movzbl	(%rax), %eax	# *s_1, D.6465
	cmpb	$32, %al	#, D.6465
	je	.L9	#,
	.loc 1 132 0 discriminator 3
	movq	-16(%rbp), %rax	# s, tmp92
	movzbl	(%rax), %eax	# *s_1, D.6465
	cmpb	$9, %al	#, D.6465
	je	.L9	#,
	.loc 1 134 0 is_stmt 1
	movq	-16(%rbp), %rax	# s, tmp93
	movzbl	(%rax), %eax	# *s_1, D.6465
	cmpb	$35, %al	#, D.6465
	jne	.L10	#,
	.loc 1 135 0
	movq	-16(%rbp), %rax	# s, tmp94
	movl	$4, %edx	#,
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# tmp94,
	call	strncmp	#
	testl	%eax, %eax	# D.6463
	jne	.L11	#,
	.loc 1 135 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rdx	# s, tmp95
	movq	-8(%rbp), %rax	# msa, tmp96
	movq	%rdx, %rsi	# tmp95,
	movq	%rax, %rdi	# tmp96,
	call	parse_gf	#
	movl	%eax, -20(%rbp)	# tmp97, status
	jmp	.L16	#
.L11:
	.loc 1 136 0 is_stmt 1
	movq	-16(%rbp), %rax	# s, tmp98
	movl	$4, %edx	#,
	movl	$.LC3, %esi	#,
	movq	%rax, %rdi	# tmp98,
	call	strncmp	#
	testl	%eax, %eax	# D.6463
	jne	.L13	#,
	.loc 1 136 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rdx	# s, tmp99
	movq	-8(%rbp), %rax	# msa, tmp100
	movq	%rdx, %rsi	# tmp99,
	movq	%rax, %rdi	# tmp100,
	call	parse_gs	#
	movl	%eax, -20(%rbp)	# tmp101, status
	jmp	.L16	#
.L13:
	.loc 1 137 0 is_stmt 1
	movq	-16(%rbp), %rax	# s, tmp102
	movl	$4, %edx	#,
	movl	$.LC4, %esi	#,
	movq	%rax, %rdi	# tmp102,
	call	strncmp	#
	testl	%eax, %eax	# D.6463
	jne	.L14	#,
	.loc 1 137 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rdx	# s, tmp103
	movq	-8(%rbp), %rax	# msa, tmp104
	movq	%rdx, %rsi	# tmp103,
	movq	%rax, %rdi	# tmp104,
	call	parse_gc	#
	movl	%eax, -20(%rbp)	# tmp105, status
	jmp	.L16	#
.L14:
	.loc 1 138 0 is_stmt 1
	movq	-16(%rbp), %rax	# s, tmp106
	movl	$4, %edx	#,
	movl	$.LC5, %esi	#,
	movq	%rax, %rdi	# tmp106,
	call	strncmp	#
	testl	%eax, %eax	# D.6463
	jne	.L15	#,
	.loc 1 138 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rdx	# s, tmp107
	movq	-8(%rbp), %rax	# msa, tmp108
	movq	%rdx, %rsi	# tmp107,
	movq	%rax, %rdi	# tmp108,
	call	parse_gr	#
	movl	%eax, -20(%rbp)	# tmp109, status
	jmp	.L16	#
.L15:
	.loc 1 139 0 is_stmt 1
	movq	-16(%rbp), %rdx	# s, tmp110
	movq	-8(%rbp), %rax	# msa, tmp111
	movq	%rdx, %rsi	# tmp110,
	movq	%rax, %rdi	# tmp111,
	call	parse_comment	#
	movl	%eax, -20(%rbp)	# tmp112, status
	jmp	.L16	#
.L10:
	.loc 1 141 0
	movq	-16(%rbp), %rax	# s, tmp113
	movl	$2, %edx	#,
	movl	$.LC6, %esi	#,
	movq	%rax, %rdi	# tmp113,
	call	strncmp	#
	testl	%eax, %eax	# D.6463
	jne	.L17	#,
	.loc 1 141 0 is_stmt 0 discriminator 1
	jmp	.L18	#
.L17:
	.loc 1 142 0 is_stmt 1
	movq	-16(%rbp), %rax	# s, tmp114
	movzbl	(%rax), %eax	# *s_1, D.6465
	cmpb	$10, %al	#, D.6465
	jne	.L19	#,
	.loc 1 142 0 is_stmt 0 discriminator 1
	jmp	.L7	#
.L19:
	.loc 1 143 0 is_stmt 1
	movq	-16(%rbp), %rdx	# s, tmp115
	movq	-8(%rbp), %rax	# msa, tmp116
	movq	%rdx, %rsi	# tmp115,
	movq	%rax, %rdi	# tmp116,
	call	parse_sequence	#
	movl	%eax, -20(%rbp)	# tmp117, status
.L16:
	.loc 1 145 0
	cmpl	$0, -20(%rbp)	#, status
	jne	.L7	#,
	.loc 1 147 0
	movq	-8(%rbp), %rax	# msa, tmp118
	movq	40(%rax), %rax	# msa_12->name, D.6464
	.loc 1 146 0
	testq	%rax, %rax	# D.6464
	je	.L20	#,
	.loc 1 146 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# msa, tmp119
	movq	40(%rax), %rax	# msa_12->name, iftmp.0
	jmp	.L21	#
.L20:
	.loc 1 146 0 discriminator 2
	movl	$.LC7, %eax	#, iftmp.0
.L21:
	.loc 1 146 0 discriminator 3
	movq	-40(%rbp), %rdx	# afp, tmp120
	movq	8(%rdx), %rdx	# afp_8(D)->fname, D.6464
	movq	-40(%rbp), %rcx	# afp, tmp121
	movl	16(%rcx), %esi	# afp_8(D)->linenumber, D.6463
	movq	%rax, %rcx	# iftmp.0,
	movl	$.LC8, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L7:
	.loc 1 130 0 is_stmt 1 discriminator 1
	movq	-40(%rbp), %rax	# afp, tmp122
	movq	%rax, %rdi	# tmp122,
	call	MSAFileGetLine	#
	movq	%rax, -16(%rbp)	# tmp123, s
	cmpq	$0, -16(%rbp)	#, s
	jne	.L22	#,
.L18:
	.loc 1 150 0
	cmpq	$0, -16(%rbp)	#, s
	jne	.L23	#,
	.loc 1 150 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# msa, tmp124
	movl	28(%rax), %eax	# msa_12->nseq, D.6463
	testl	%eax, %eax	# D.6463
	je	.L23	#,
	.loc 1 151 0 is_stmt 1
	movq	-8(%rbp), %rax	# msa, tmp125
	movq	40(%rax), %rax	# msa_12->name, D.6464
	testq	%rax, %rax	# D.6464
	je	.L24	#,
	.loc 1 151 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# msa, tmp126
	movq	40(%rax), %rax	# msa_12->name, iftmp.1
	jmp	.L25	#
.L24:
	.loc 1 151 0 discriminator 2
	movl	$.LC7, %eax	#, iftmp.1
.L25:
	.loc 1 151 0 discriminator 3
	movq	%rax, %rsi	# iftmp.1,
	movl	$.LC9, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L23:
	.loc 1 153 0 is_stmt 1
	cmpq	$0, -16(%rbp)	#, s
	jne	.L26	#,
	.loc 1 153 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# msa, tmp127
	movl	28(%rax), %eax	# msa_12->nseq, D.6463
	testl	%eax, %eax	# D.6463
	jne	.L26	#,
	.loc 1 155 0 is_stmt 1
	movq	-8(%rbp), %rax	# msa, tmp128
	movq	%rax, %rdi	# tmp128,
	call	MSAFree	#
	.loc 1 156 0
	movl	$0, %eax	#, D.6461
	jmp	.L3	#
.L26:
	.loc 1 159 0
	movq	-8(%rbp), %rax	# msa, tmp129
	movq	%rax, %rdi	# tmp129,
	call	MSAVerifyParse	#
	.loc 1 160 0
	movq	-8(%rbp), %rax	# msa, D.6461
.L3:
	.loc 1 161 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	ReadStockholm, .-ReadStockholm
	.globl	WriteStockholm
	.type	WriteStockholm, @function
WriteStockholm:
.LFB3:
	.loc 1 178 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# fp, fp
	movq	%rsi, -16(%rbp)	# msa, msa
	.loc 1 179 0
	movq	-16(%rbp), %rcx	# msa, tmp59
	movq	-8(%rbp), %rax	# fp, tmp60
	movl	$50, %edx	#,
	movq	%rcx, %rsi	# tmp59,
	movq	%rax, %rdi	# tmp60,
	call	actually_write_stockholm	#
	.loc 1 180 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	WriteStockholm, .-WriteStockholm
	.globl	WriteStockholmOneBlock
	.type	WriteStockholmOneBlock, @function
WriteStockholmOneBlock:
.LFB4:
	.loc 1 196 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# fp, fp
	movq	%rsi, -16(%rbp)	# msa, msa
	.loc 1 197 0
	movq	-16(%rbp), %rax	# msa, tmp60
	movl	24(%rax), %edx	# msa_1(D)->alen, D.6476
	movq	-16(%rbp), %rcx	# msa, tmp61
	movq	-8(%rbp), %rax	# fp, tmp62
	movq	%rcx, %rsi	# tmp61,
	movq	%rax, %rdi	# tmp62,
	call	actually_write_stockholm	#
	.loc 1 198 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	WriteStockholmOneBlock, .-WriteStockholmOneBlock
	.section	.rodata
.LC10:
	.string	"stockholm.c"
.LC11:
	.string	"# STOCKHOLM 1.0\n"
.LC12:
	.string	"# %s\n"
.LC13:
	.string	"#=GF ID    %s\n"
.LC14:
	.string	"#=GF AC    %s\n"
.LC15:
	.string	"#=GF DE    %s\n"
.LC16:
	.string	"#=GF AU    %s\n"
.LC17:
	.string	"#=GF GA    %.1f %.1f\n"
.LC18:
	.string	"#=GF GA    %.1f\n"
.LC19:
	.string	"#=GF NC    %.1f %.1f\n"
.LC20:
	.string	"#=GF NC    %.1f\n"
.LC21:
	.string	"#=GF TC    %.1f %.1f\n"
.LC22:
	.string	"#=GF TC    %.1f\n"
.LC23:
	.string	"#=GF %-5s %s\n"
.LC24:
	.string	"#=GS %-*.*s WT    %.2f\n"
.LC25:
	.string	"#=GS %-*.*s AC    %s\n"
.LC26:
	.string	"#=GS %*.*s DE    %s\n"
.LC27:
	.string	"#=GS %*.*s %5s %s\n"
.LC28:
	.string	"\n"
.LC29:
	.string	"%-*.*s  %s\n"
.LC30:
	.string	"#=GR %-*.*s SS     %s\n"
.LC31:
	.string	"#=GR %-*.*s SA     %s\n"
.LC32:
	.string	"#=GR %-*.*s %5s  %s\n"
.LC33:
	.string	"SS_cons"
.LC34:
	.string	"#=GC %-*.*s %s\n"
.LC35:
	.string	"SA_cons"
.LC36:
	.string	"RF"
.LC37:
	.string	"//\n"
	.text
	.type	actually_write_stockholm, @function
actually_write_stockholm:
.LFB5:
	.loc 1 217 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -72(%rbp)	# fp, fp
	movq	%rsi, -80(%rbp)	# msa, msa
	movl	%edx, -84(%rbp)	# cpl, cpl
	.loc 1 219 0
	movl	$0, -28(%rbp)	#, len
	.loc 1 221 0
	movl	$0, -40(%rbp)	#, typewidth
	.loc 1 222 0
	movl	$0, -36(%rbp)	#, markupwidth
	.loc 1 231 0
	movl	$0, -44(%rbp)	#, namewidth
	.loc 1 232 0
	movl	$0, -52(%rbp)	#, i
	jmp	.L30	#
.L32:
	.loc 1 233 0
	movq	-80(%rbp), %rax	# msa, tmp363
	movq	8(%rax), %rax	# msa_36(D)->sqname, D.6478
	movl	-52(%rbp), %edx	# i, tmp364
	movslq	%edx, %rdx	# tmp364, D.6479
	salq	$3, %rdx	#, D.6479
	addq	%rdx, %rax	# D.6479, D.6478
	movq	(%rax), %rax	# *_41, D.6480
	movq	%rax, %rdi	# D.6480,
	call	strlen	#
	movl	%eax, -28(%rbp)	# D.6479, len
	movl	-28(%rbp), %eax	# len, tmp365
	cmpl	-44(%rbp), %eax	# namewidth, tmp365
	jle	.L31	#,
	.loc 1 234 0
	movl	-28(%rbp), %eax	# len, tmp366
	movl	%eax, -44(%rbp)	# tmp366, namewidth
.L31:
	.loc 1 232 0
	addl	$1, -52(%rbp)	#, i
.L30:
	.loc 1 232 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# msa, tmp367
	movl	28(%rax), %eax	# msa_36(D)->nseq, D.6477
	cmpl	-52(%rbp), %eax	# i, D.6477
	jg	.L32	#,
	.loc 1 240 0 is_stmt 1
	movq	-80(%rbp), %rax	# msa, tmp368
	movq	112(%rax), %rax	# msa_36(D)->ss, D.6478
	testq	%rax, %rax	# D.6478
	je	.L33	#,
	.loc 1 240 0 is_stmt 0 discriminator 1
	movl	$4, -36(%rbp)	#, markupwidth
	movl	$2, -40(%rbp)	#, typewidth
.L33:
	.loc 1 241 0 is_stmt 1
	movq	-80(%rbp), %rax	# msa, tmp369
	movq	120(%rax), %rax	# msa_36(D)->sa, D.6478
	testq	%rax, %rax	# D.6478
	je	.L34	#,
	.loc 1 241 0 is_stmt 0 discriminator 1
	movl	$4, -36(%rbp)	#, markupwidth
	movl	$2, -40(%rbp)	#, typewidth
.L34:
	.loc 1 242 0 is_stmt 1
	movl	$0, -52(%rbp)	#, i
	jmp	.L35	#
.L37:
	.loc 1 243 0
	movq	-80(%rbp), %rax	# msa, tmp370
	movq	280(%rax), %rax	# msa_36(D)->gr_tag, D.6478
	movl	-52(%rbp), %edx	# i, tmp371
	movslq	%edx, %rdx	# tmp371, D.6479
	salq	$3, %rdx	#, D.6479
	addq	%rdx, %rax	# D.6479, D.6478
	movq	(%rax), %rax	# *_58, D.6480
	movq	%rax, %rdi	# D.6480,
	call	strlen	#
	movl	%eax, -28(%rbp)	# D.6479, len
	movl	-28(%rbp), %eax	# len, tmp372
	cmpl	-40(%rbp), %eax	# typewidth, tmp372
	jle	.L36	#,
	.loc 1 243 0 is_stmt 0 discriminator 1
	movl	-28(%rbp), %eax	# len, tmp373
	movl	%eax, -40(%rbp)	# tmp373, typewidth
.L36:
	.loc 1 242 0 is_stmt 1
	addl	$1, -52(%rbp)	#, i
.L35:
	.loc 1 242 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# msa, tmp374
	movl	304(%rax), %eax	# msa_36(D)->ngr, D.6477
	cmpl	-52(%rbp), %eax	# i, D.6477
	jg	.L37	#,
	.loc 1 245 0 is_stmt 1
	movq	-80(%rbp), %rax	# msa, tmp375
	movq	88(%rax), %rax	# msa_36(D)->rf, D.6480
	testq	%rax, %rax	# D.6480
	je	.L38	#,
	.loc 1 245 0 is_stmt 0 discriminator 1
	movl	$4, -36(%rbp)	#, markupwidth
	cmpl	$1, -40(%rbp)	#, typewidth
	jg	.L38	#,
	movl	$2, -40(%rbp)	#, typewidth
.L38:
	.loc 1 246 0 is_stmt 1
	movq	-80(%rbp), %rax	# msa, tmp376
	movq	72(%rax), %rax	# msa_36(D)->ss_cons, D.6480
	testq	%rax, %rax	# D.6480
	je	.L39	#,
	.loc 1 246 0 is_stmt 0 discriminator 1
	movl	$4, -36(%rbp)	#, markupwidth
	cmpl	$6, -40(%rbp)	#, typewidth
	jg	.L39	#,
	movl	$7, -40(%rbp)	#, typewidth
.L39:
	.loc 1 247 0 is_stmt 1
	movq	-80(%rbp), %rax	# msa, tmp377
	movq	80(%rax), %rax	# msa_36(D)->sa_cons, D.6480
	testq	%rax, %rax	# D.6480
	je	.L40	#,
	.loc 1 247 0 is_stmt 0 discriminator 1
	movl	$4, -36(%rbp)	#, markupwidth
	cmpl	$6, -40(%rbp)	#, typewidth
	jg	.L40	#,
	movl	$7, -40(%rbp)	#, typewidth
.L40:
	.loc 1 248 0 is_stmt 1
	movl	$0, -52(%rbp)	#, i
	jmp	.L41	#
.L43:
	.loc 1 249 0
	movq	-80(%rbp), %rax	# msa, tmp378
	movq	248(%rax), %rax	# msa_36(D)->gc_tag, D.6478
	movl	-52(%rbp), %edx	# i, tmp379
	movslq	%edx, %rdx	# tmp379, D.6479
	salq	$3, %rdx	#, D.6479
	addq	%rdx, %rax	# D.6479, D.6478
	movq	(%rax), %rax	# *_78, D.6480
	movq	%rax, %rdi	# D.6480,
	call	strlen	#
	movl	%eax, -28(%rbp)	# D.6479, len
	movl	-28(%rbp), %eax	# len, tmp380
	cmpl	-40(%rbp), %eax	# typewidth, tmp380
	jle	.L42	#,
	.loc 1 249 0 is_stmt 0 discriminator 1
	movl	-28(%rbp), %eax	# len, tmp381
	movl	%eax, -40(%rbp)	# tmp381, typewidth
.L42:
	.loc 1 248 0 is_stmt 1
	addl	$1, -52(%rbp)	#, i
.L41:
	.loc 1 248 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# msa, tmp382
	movl	272(%rax), %eax	# msa_36(D)->ngc, D.6477
	cmpl	-52(%rbp), %eax	# i, D.6477
	jg	.L43	#,
	.loc 1 251 0 is_stmt 1
	movl	-44(%rbp), %eax	# namewidth, tmp383
	movl	-84(%rbp), %edx	# cpl, tmp384
	addl	%eax, %edx	# tmp383, D.6477
	movl	-40(%rbp), %eax	# typewidth, tmp385
	addl	%eax, %edx	# tmp385, D.6477
	movl	-36(%rbp), %eax	# markupwidth, tmp386
	addl	%edx, %eax	# D.6477, D.6477
	addl	$61, %eax	#, D.6477
	cltq
	movq	%rax, %rdx	# D.6479,
	movl	$251, %esi	#,
	movl	$.LC10, %edi	#,
	call	sre_malloc	#
	movq	%rax, -16(%rbp)	# tmp387, buf
	.loc 1 255 0
	movq	-72(%rbp), %rax	# fp, tmp388
	movq	%rax, %rcx	# tmp388,
	movl	$16, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC11, %edi	#,
	call	fwrite	#
	.loc 1 259 0
	movl	$0, -52(%rbp)	#, i
	jmp	.L44	#
.L45:
	.loc 1 260 0 discriminator 2
	movq	-80(%rbp), %rax	# msa, tmp389
	movq	176(%rax), %rax	# msa_36(D)->comment, D.6478
	movl	-52(%rbp), %edx	# i, tmp390
	movslq	%edx, %rdx	# tmp390, D.6479
	salq	$3, %rdx	#, D.6479
	addq	%rdx, %rax	# D.6479, D.6478
	movq	(%rax), %rdx	# *_97, D.6480
	movq	-72(%rbp), %rax	# fp, tmp391
	movl	$.LC12, %esi	#,
	movq	%rax, %rdi	# tmp391,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 259 0 discriminator 2
	addl	$1, -52(%rbp)	#, i
.L44:
	.loc 1 259 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# msa, tmp392
	movl	184(%rax), %eax	# msa_36(D)->ncomment, D.6477
	cmpl	-52(%rbp), %eax	# i, D.6477
	jg	.L45	#,
	.loc 1 261 0 is_stmt 1
	movq	-80(%rbp), %rax	# msa, tmp393
	movl	184(%rax), %eax	# msa_36(D)->ncomment, D.6477
	testl	%eax, %eax	# D.6477
	jle	.L46	#,
	.loc 1 261 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# fp, tmp394
	movq	%rax, %rsi	# tmp394,
	movl	$10, %edi	#,
	call	fputc	#
.L46:
	.loc 1 265 0 is_stmt 1
	movq	-80(%rbp), %rax	# msa, tmp395
	movq	40(%rax), %rax	# msa_36(D)->name, D.6480
	testq	%rax, %rax	# D.6480
	je	.L47	#,
	.loc 1 265 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# msa, tmp396
	movq	40(%rax), %rdx	# msa_36(D)->name, D.6480
	movq	-72(%rbp), %rax	# fp, tmp397
	movl	$.LC13, %esi	#,
	movq	%rax, %rdi	# tmp397,
	movl	$0, %eax	#,
	call	fprintf	#
.L47:
	.loc 1 266 0 is_stmt 1
	movq	-80(%rbp), %rax	# msa, tmp398
	movq	56(%rax), %rax	# msa_36(D)->acc, D.6480
	testq	%rax, %rax	# D.6480
	je	.L48	#,
	.loc 1 266 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# msa, tmp399
	movq	56(%rax), %rdx	# msa_36(D)->acc, D.6480
	movq	-72(%rbp), %rax	# fp, tmp400
	movl	$.LC14, %esi	#,
	movq	%rax, %rdi	# tmp400,
	movl	$0, %eax	#,
	call	fprintf	#
.L48:
	.loc 1 267 0 is_stmt 1
	movq	-80(%rbp), %rax	# msa, tmp401
	movq	48(%rax), %rax	# msa_36(D)->desc, D.6480
	testq	%rax, %rax	# D.6480
	je	.L49	#,
	.loc 1 267 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# msa, tmp402
	movq	48(%rax), %rdx	# msa_36(D)->desc, D.6480
	movq	-72(%rbp), %rax	# fp, tmp403
	movl	$.LC15, %esi	#,
	movq	%rax, %rdi	# tmp403,
	movl	$0, %eax	#,
	call	fprintf	#
.L49:
	.loc 1 268 0 is_stmt 1
	movq	-80(%rbp), %rax	# msa, tmp404
	movq	64(%rax), %rax	# msa_36(D)->au, D.6480
	testq	%rax, %rax	# D.6480
	je	.L50	#,
	.loc 1 268 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# msa, tmp405
	movq	64(%rax), %rdx	# msa_36(D)->au, D.6480
	movq	-72(%rbp), %rax	# fp, tmp406
	movl	$.LC16, %esi	#,
	movq	%rax, %rdi	# tmp406,
	movl	$0, %eax	#,
	call	fprintf	#
.L50:
	.loc 1 272 0 is_stmt 1
	movq	-80(%rbp), %rax	# msa, tmp407
	movl	160(%rax), %eax	# msa_36(D)->cutoff_is_set, D.6477
	testl	%eax, %eax	# D.6477
	je	.L51	#,
	.loc 1 272 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# msa, tmp408
	movl	164(%rax), %eax	# msa_36(D)->cutoff_is_set, D.6477
	testl	%eax, %eax	# D.6477
	je	.L51	#,
	.loc 1 273 0 is_stmt 1
	movq	-80(%rbp), %rax	# msa, tmp409
	movss	140(%rax), %xmm0	# msa_36(D)->cutoff, D.6481
	unpcklps	%xmm0, %xmm0	# D.6481, D.6481
	cvtps2pd	%xmm0, %xmm1	# D.6481, D.6482
	movq	-80(%rbp), %rax	# msa, tmp410
	movss	136(%rax), %xmm0	# msa_36(D)->cutoff, D.6481
	unpcklps	%xmm0, %xmm0	# D.6481, D.6481
	cvtps2pd	%xmm0, %xmm0	# D.6481, D.6482
	movq	-72(%rbp), %rax	# fp, tmp411
	movl	$.LC17, %esi	#,
	movq	%rax, %rdi	# tmp411,
	movl	$2, %eax	#,
	call	fprintf	#
	jmp	.L52	#
.L51:
	.loc 1 274 0
	movq	-80(%rbp), %rax	# msa, tmp412
	movl	160(%rax), %eax	# msa_36(D)->cutoff_is_set, D.6477
	testl	%eax, %eax	# D.6477
	je	.L52	#,
	.loc 1 275 0
	movq	-80(%rbp), %rax	# msa, tmp413
	movss	136(%rax), %xmm0	# msa_36(D)->cutoff, D.6481
	unpcklps	%xmm0, %xmm0	# D.6481, D.6481
	cvtps2pd	%xmm0, %xmm0	# D.6481, D.6482
	movq	-72(%rbp), %rax	# fp, tmp414
	movl	$.LC18, %esi	#,
	movq	%rax, %rdi	# tmp414,
	movl	$1, %eax	#,
	call	fprintf	#
.L52:
	.loc 1 276 0
	movq	-80(%rbp), %rax	# msa, tmp415
	movl	168(%rax), %eax	# msa_36(D)->cutoff_is_set, D.6477
	testl	%eax, %eax	# D.6477
	je	.L53	#,
	.loc 1 276 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# msa, tmp416
	movl	172(%rax), %eax	# msa_36(D)->cutoff_is_set, D.6477
	testl	%eax, %eax	# D.6477
	je	.L53	#,
	.loc 1 277 0 is_stmt 1
	movq	-80(%rbp), %rax	# msa, tmp417
	movss	148(%rax), %xmm0	# msa_36(D)->cutoff, D.6481
	unpcklps	%xmm0, %xmm0	# D.6481, D.6481
	cvtps2pd	%xmm0, %xmm1	# D.6481, D.6482
	movq	-80(%rbp), %rax	# msa, tmp418
	movss	144(%rax), %xmm0	# msa_36(D)->cutoff, D.6481
	unpcklps	%xmm0, %xmm0	# D.6481, D.6481
	cvtps2pd	%xmm0, %xmm0	# D.6481, D.6482
	movq	-72(%rbp), %rax	# fp, tmp419
	movl	$.LC19, %esi	#,
	movq	%rax, %rdi	# tmp419,
	movl	$2, %eax	#,
	call	fprintf	#
	jmp	.L54	#
.L53:
	.loc 1 278 0
	movq	-80(%rbp), %rax	# msa, tmp420
	movl	168(%rax), %eax	# msa_36(D)->cutoff_is_set, D.6477
	testl	%eax, %eax	# D.6477
	je	.L54	#,
	.loc 1 279 0
	movq	-80(%rbp), %rax	# msa, tmp421
	movss	144(%rax), %xmm0	# msa_36(D)->cutoff, D.6481
	unpcklps	%xmm0, %xmm0	# D.6481, D.6481
	cvtps2pd	%xmm0, %xmm0	# D.6481, D.6482
	movq	-72(%rbp), %rax	# fp, tmp422
	movl	$.LC20, %esi	#,
	movq	%rax, %rdi	# tmp422,
	movl	$1, %eax	#,
	call	fprintf	#
.L54:
	.loc 1 280 0
	movq	-80(%rbp), %rax	# msa, tmp423
	movl	152(%rax), %eax	# msa_36(D)->cutoff_is_set, D.6477
	testl	%eax, %eax	# D.6477
	je	.L55	#,
	.loc 1 280 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# msa, tmp424
	movl	156(%rax), %eax	# msa_36(D)->cutoff_is_set, D.6477
	testl	%eax, %eax	# D.6477
	je	.L55	#,
	.loc 1 281 0 is_stmt 1
	movq	-80(%rbp), %rax	# msa, tmp425
	movss	132(%rax), %xmm0	# msa_36(D)->cutoff, D.6481
	unpcklps	%xmm0, %xmm0	# D.6481, D.6481
	cvtps2pd	%xmm0, %xmm1	# D.6481, D.6482
	movq	-80(%rbp), %rax	# msa, tmp426
	movss	128(%rax), %xmm0	# msa_36(D)->cutoff, D.6481
	unpcklps	%xmm0, %xmm0	# D.6481, D.6481
	cvtps2pd	%xmm0, %xmm0	# D.6481, D.6482
	movq	-72(%rbp), %rax	# fp, tmp427
	movl	$.LC21, %esi	#,
	movq	%rax, %rdi	# tmp427,
	movl	$2, %eax	#,
	call	fprintf	#
	jmp	.L56	#
.L55:
	.loc 1 282 0
	movq	-80(%rbp), %rax	# msa, tmp428
	movl	152(%rax), %eax	# msa_36(D)->cutoff_is_set, D.6477
	testl	%eax, %eax	# D.6477
	je	.L56	#,
	.loc 1 283 0
	movq	-80(%rbp), %rax	# msa, tmp429
	movss	128(%rax), %xmm0	# msa_36(D)->cutoff, D.6481
	unpcklps	%xmm0, %xmm0	# D.6481, D.6481
	cvtps2pd	%xmm0, %xmm0	# D.6481, D.6482
	movq	-72(%rbp), %rax	# fp, tmp430
	movl	$.LC22, %esi	#,
	movq	%rax, %rdi	# tmp430,
	movl	$1, %eax	#,
	call	fprintf	#
.L56:
	.loc 1 285 0
	movl	$0, -52(%rbp)	#, i
	jmp	.L57	#
.L58:
	.loc 1 286 0 discriminator 2
	movq	-80(%rbp), %rax	# msa, tmp431
	movq	200(%rax), %rax	# msa_36(D)->gf, D.6478
	movl	-52(%rbp), %edx	# i, tmp432
	movslq	%edx, %rdx	# tmp432, D.6479
	salq	$3, %rdx	#, D.6479
	addq	%rdx, %rax	# D.6479, D.6478
	movq	(%rax), %rcx	# *_141, D.6480
	movq	-80(%rbp), %rax	# msa, tmp433
	movq	192(%rax), %rax	# msa_36(D)->gf_tag, D.6478
	movl	-52(%rbp), %edx	# i, tmp434
	movslq	%edx, %rdx	# tmp434, D.6479
	salq	$3, %rdx	#, D.6479
	addq	%rdx, %rax	# D.6479, D.6478
	movq	(%rax), %rdx	# *_146, D.6480
	movq	-72(%rbp), %rax	# fp, tmp435
	movl	$.LC23, %esi	#,
	movq	%rax, %rdi	# tmp435,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 285 0 discriminator 2
	addl	$1, -52(%rbp)	#, i
.L57:
	.loc 1 285 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# msa, tmp436
	movl	208(%rax), %eax	# msa_36(D)->ngf, D.6477
	cmpl	-52(%rbp), %eax	# i, D.6477
	jg	.L58	#,
	.loc 1 287 0 is_stmt 1
	movq	-72(%rbp), %rax	# fp, tmp437
	movq	%rax, %rsi	# tmp437,
	movl	$10, %edi	#,
	call	fputc	#
	.loc 1 292 0
	movq	-80(%rbp), %rax	# msa, tmp438
	movl	32(%rax), %eax	# msa_36(D)->flags, D.6477
	andl	$1, %eax	#, D.6477
	testl	%eax, %eax	# D.6477
	je	.L59	#,
	.loc 1 294 0
	movl	$0, -52(%rbp)	#, i
	jmp	.L60	#
.L61:
	.loc 1 295 0 discriminator 2
	movq	-80(%rbp), %rax	# msa, tmp439
	movq	16(%rax), %rax	# msa_36(D)->wgt, D.6483
	movl	-52(%rbp), %edx	# i, tmp440
	movslq	%edx, %rdx	# tmp440, D.6479
	salq	$2, %rdx	#, D.6479
	addq	%rdx, %rax	# D.6479, D.6483
	movss	(%rax), %xmm0	# *_156, D.6481
	unpcklps	%xmm0, %xmm0	# D.6481, D.6481
	cvtps2pd	%xmm0, %xmm0	# D.6481, D.6482
	movq	-80(%rbp), %rax	# msa, tmp441
	movq	8(%rax), %rax	# msa_36(D)->sqname, D.6478
	movl	-52(%rbp), %edx	# i, tmp442
	movslq	%edx, %rdx	# tmp442, D.6479
	salq	$3, %rdx	#, D.6479
	addq	%rdx, %rax	# D.6479, D.6478
	movq	(%rax), %rsi	# *_162, D.6480
	movl	-44(%rbp), %ecx	# namewidth, tmp443
	movl	-44(%rbp), %edx	# namewidth, tmp444
	movq	-72(%rbp), %rax	# fp, tmp445
	movq	%rsi, %r8	# D.6480,
	movl	$.LC24, %esi	#,
	movq	%rax, %rdi	# tmp445,
	movl	$1, %eax	#,
	call	fprintf	#
	.loc 1 294 0 discriminator 2
	addl	$1, -52(%rbp)	#, i
.L60:
	.loc 1 294 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# msa, tmp446
	movl	28(%rax), %eax	# msa_36(D)->nseq, D.6477
	cmpl	-52(%rbp), %eax	# i, D.6477
	jg	.L61	#,
	.loc 1 296 0 is_stmt 1
	movq	-72(%rbp), %rax	# fp, tmp447
	movq	%rax, %rsi	# tmp447,
	movl	$10, %edi	#,
	call	fputc	#
.L59:
	.loc 1 298 0
	movq	-80(%rbp), %rax	# msa, tmp448
	movq	96(%rax), %rax	# msa_36(D)->sqacc, D.6478
	testq	%rax, %rax	# D.6478
	je	.L62	#,
	.loc 1 300 0
	movl	$0, -52(%rbp)	#, i
	jmp	.L63	#
.L65:
	.loc 1 301 0
	movq	-80(%rbp), %rax	# msa, tmp449
	movq	96(%rax), %rax	# msa_36(D)->sqacc, D.6478
	movl	-52(%rbp), %edx	# i, tmp450
	movslq	%edx, %rdx	# tmp450, D.6479
	salq	$3, %rdx	#, D.6479
	addq	%rdx, %rax	# D.6479, D.6478
	movq	(%rax), %rax	# *_171, D.6480
	testq	%rax, %rax	# D.6480
	je	.L64	#,
	.loc 1 302 0
	movq	-80(%rbp), %rax	# msa, tmp451
	movq	96(%rax), %rax	# msa_36(D)->sqacc, D.6478
	movl	-52(%rbp), %edx	# i, tmp452
	movslq	%edx, %rdx	# tmp452, D.6479
	salq	$3, %rdx	#, D.6479
	addq	%rdx, %rax	# D.6479, D.6478
	movq	(%rax), %rdi	# *_176, D.6480
	movq	-80(%rbp), %rax	# msa, tmp453
	movq	8(%rax), %rax	# msa_36(D)->sqname, D.6478
	movl	-52(%rbp), %edx	# i, tmp454
	movslq	%edx, %rdx	# tmp454, D.6479
	salq	$3, %rdx	#, D.6479
	addq	%rdx, %rax	# D.6479, D.6478
	movq	(%rax), %rsi	# *_181, D.6480
	movl	-44(%rbp), %ecx	# namewidth, tmp455
	movl	-44(%rbp), %edx	# namewidth, tmp456
	movq	-72(%rbp), %rax	# fp, tmp457
	movq	%rdi, %r9	# D.6480,
	movq	%rsi, %r8	# D.6480,
	movl	$.LC25, %esi	#,
	movq	%rax, %rdi	# tmp457,
	movl	$0, %eax	#,
	call	fprintf	#
.L64:
	.loc 1 300 0
	addl	$1, -52(%rbp)	#, i
.L63:
	.loc 1 300 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# msa, tmp458
	movl	28(%rax), %eax	# msa_36(D)->nseq, D.6477
	cmpl	-52(%rbp), %eax	# i, D.6477
	jg	.L65	#,
	.loc 1 303 0 is_stmt 1
	movq	-72(%rbp), %rax	# fp, tmp459
	movq	%rax, %rsi	# tmp459,
	movl	$10, %edi	#,
	call	fputc	#
.L62:
	.loc 1 305 0
	movq	-80(%rbp), %rax	# msa, tmp460
	movq	104(%rax), %rax	# msa_36(D)->sqdesc, D.6478
	testq	%rax, %rax	# D.6478
	je	.L66	#,
	.loc 1 307 0
	movl	$0, -52(%rbp)	#, i
	jmp	.L67	#
.L69:
	.loc 1 308 0
	movq	-80(%rbp), %rax	# msa, tmp461
	movq	104(%rax), %rax	# msa_36(D)->sqdesc, D.6478
	movl	-52(%rbp), %edx	# i, tmp462
	movslq	%edx, %rdx	# tmp462, D.6479
	salq	$3, %rdx	#, D.6479
	addq	%rdx, %rax	# D.6479, D.6478
	movq	(%rax), %rax	# *_190, D.6480
	testq	%rax, %rax	# D.6480
	je	.L68	#,
	.loc 1 309 0
	movq	-80(%rbp), %rax	# msa, tmp463
	movq	104(%rax), %rax	# msa_36(D)->sqdesc, D.6478
	movl	-52(%rbp), %edx	# i, tmp464
	movslq	%edx, %rdx	# tmp464, D.6479
	salq	$3, %rdx	#, D.6479
	addq	%rdx, %rax	# D.6479, D.6478
	movq	(%rax), %rdi	# *_195, D.6480
	movq	-80(%rbp), %rax	# msa, tmp465
	movq	8(%rax), %rax	# msa_36(D)->sqname, D.6478
	movl	-52(%rbp), %edx	# i, tmp466
	movslq	%edx, %rdx	# tmp466, D.6479
	salq	$3, %rdx	#, D.6479
	addq	%rdx, %rax	# D.6479, D.6478
	movq	(%rax), %rsi	# *_200, D.6480
	movl	-44(%rbp), %ecx	# namewidth, tmp467
	movl	-44(%rbp), %edx	# namewidth, tmp468
	movq	-72(%rbp), %rax	# fp, tmp469
	movq	%rdi, %r9	# D.6480,
	movq	%rsi, %r8	# D.6480,
	movl	$.LC26, %esi	#,
	movq	%rax, %rdi	# tmp469,
	movl	$0, %eax	#,
	call	fprintf	#
.L68:
	.loc 1 307 0
	addl	$1, -52(%rbp)	#, i
.L67:
	.loc 1 307 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# msa, tmp470
	movl	28(%rax), %eax	# msa_36(D)->nseq, D.6477
	cmpl	-52(%rbp), %eax	# i, D.6477
	jg	.L69	#,
	.loc 1 310 0 is_stmt 1
	movq	-72(%rbp), %rax	# fp, tmp471
	movq	%rax, %rsi	# tmp471,
	movl	$10, %edi	#,
	call	fputc	#
.L66:
	.loc 1 312 0
	movl	$0, -52(%rbp)	#, i
	jmp	.L70	#
.L76:
	.loc 1 321 0
	movl	$0, -48(%rbp)	#, j
	jmp	.L71	#
.L75:
	.loc 1 322 0
	movq	-80(%rbp), %rax	# msa, tmp472
	movq	224(%rax), %rax	# msa_36(D)->gs, D.6484
	movl	-52(%rbp), %edx	# i, tmp473
	movslq	%edx, %rdx	# tmp473, D.6479
	salq	$3, %rdx	#, D.6479
	addq	%rdx, %rax	# D.6479, D.6484
	movq	(%rax), %rax	# *_210, D.6478
	movl	-48(%rbp), %edx	# j, tmp474
	movslq	%edx, %rdx	# tmp474, D.6479
	salq	$3, %rdx	#, D.6479
	addq	%rdx, %rax	# D.6479, D.6478
	movq	(%rax), %rax	# *_214, D.6480
	testq	%rax, %rax	# D.6480
	je	.L72	#,
	.loc 1 324 0
	movq	-80(%rbp), %rax	# msa, tmp475
	movq	224(%rax), %rax	# msa_36(D)->gs, D.6484
	movl	-52(%rbp), %edx	# i, tmp476
	movslq	%edx, %rdx	# tmp476, D.6479
	salq	$3, %rdx	#, D.6479
	addq	%rdx, %rax	# D.6479, D.6484
	movq	(%rax), %rax	# *_219, D.6478
	movl	-48(%rbp), %edx	# j, tmp477
	movslq	%edx, %rdx	# tmp477, D.6479
	salq	$3, %rdx	#, D.6479
	addq	%rdx, %rax	# D.6479, D.6478
	movq	(%rax), %rax	# *_223, s.2
	movq	%rax, -24(%rbp)	# s.2, s
	.loc 1 325 0
	jmp	.L73	#
.L74:
	.loc 1 327 0
	movq	-80(%rbp), %rax	# msa, tmp478
	movq	216(%rax), %rax	# msa_36(D)->gs_tag, D.6478
	movl	-52(%rbp), %edx	# i, tmp479
	movslq	%edx, %rdx	# tmp479, D.6479
	salq	$3, %rdx	#, D.6479
	addq	%rdx, %rax	# D.6479, D.6478
	.loc 1 326 0
	movq	(%rax), %r8	# *_229, D.6480
	.loc 1 327 0
	movq	-80(%rbp), %rax	# msa, tmp480
	movq	8(%rax), %rax	# msa_36(D)->sqname, D.6478
	movl	-48(%rbp), %edx	# j, tmp481
	movslq	%edx, %rdx	# tmp481, D.6479
	salq	$3, %rdx	#, D.6479
	addq	%rdx, %rax	# D.6479, D.6478
	.loc 1 326 0
	movq	(%rax), %rdi	# *_234, D.6480
	movl	-44(%rbp), %ecx	# namewidth, tmp482
	movl	-44(%rbp), %edx	# namewidth, tmp483
	movq	-72(%rbp), %rax	# fp, tmp484
	movq	-8(%rbp), %rsi	# tok, tmp485
	movq	%rsi, (%rsp)	# tmp485,
	movq	%r8, %r9	# D.6480,
	movq	%rdi, %r8	# D.6480,
	movl	$.LC27, %esi	#,
	movq	%rax, %rdi	# tmp484,
	movl	$0, %eax	#,
	call	fprintf	#
.L73:
	.loc 1 325 0 discriminator 1
	leaq	-24(%rbp), %rax	#, tmp486
	movl	$0, %edx	#,
	movl	$.LC28, %esi	#,
	movq	%rax, %rdi	# tmp486,
	call	sre_strtok	#
	movq	%rax, -8(%rbp)	# tmp487, tok
	cmpq	$0, -8(%rbp)	#, tok
	jne	.L74	#,
.L72:
	.loc 1 321 0
	addl	$1, -48(%rbp)	#, j
.L71:
	.loc 1 321 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# msa, tmp488
	movl	28(%rax), %eax	# msa_36(D)->nseq, D.6477
	cmpl	-48(%rbp), %eax	# j, D.6477
	jg	.L75	#,
	.loc 1 329 0 is_stmt 1
	movq	-72(%rbp), %rax	# fp, tmp489
	movq	%rax, %rsi	# tmp489,
	movl	$10, %edi	#,
	call	fputc	#
	.loc 1 312 0
	addl	$1, -52(%rbp)	#, i
.L70:
	.loc 1 312 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# msa, tmp490
	movl	240(%rax), %eax	# msa_36(D)->ngs, D.6477
	cmpl	-52(%rbp), %eax	# i, D.6477
	jg	.L76	#,
	.loc 1 335 0 is_stmt 1
	movl	$0, -32(%rbp)	#, currpos
	jmp	.L77	#
.L91:
	.loc 1 337 0
	cmpl	$0, -32(%rbp)	#, currpos
	jle	.L78	#,
	.loc 1 337 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# fp, tmp491
	movq	%rax, %rsi	# tmp491,
	movl	$10, %edi	#,
	call	fputc	#
.L78:
	.loc 1 338 0 is_stmt 1
	movl	$0, -52(%rbp)	#, i
	jmp	.L79	#
.L85:
	.loc 1 340 0
	movl	-84(%rbp), %eax	# cpl, tmp492
	movslq	%eax, %rdx	# tmp492, D.6479
	movq	-80(%rbp), %rax	# msa, tmp493
	movq	(%rax), %rax	# msa_36(D)->aseq, D.6478
	movl	-52(%rbp), %ecx	# i, tmp494
	movslq	%ecx, %rcx	# tmp494, D.6479
	salq	$3, %rcx	#, D.6479
	addq	%rcx, %rax	# D.6479, D.6478
	movq	(%rax), %rcx	# *_246, D.6480
	movl	-32(%rbp), %eax	# currpos, tmp495
	cltq
	addq	%rax, %rcx	# D.6485, D.6480
	movq	-16(%rbp), %rax	# buf, tmp496
	movq	%rcx, %rsi	# D.6480,
	movq	%rax, %rdi	# tmp496,
	call	strncpy	#
	.loc 1 341 0
	movl	-84(%rbp), %eax	# cpl, tmp497
	movslq	%eax, %rdx	# tmp497, D.6485
	movq	-16(%rbp), %rax	# buf, tmp498
	addq	%rdx, %rax	# D.6485, D.6480
	movb	$0, (%rax)	#, *_251
	.loc 1 343 0
	movq	-80(%rbp), %rax	# msa, tmp499
	movq	8(%rax), %rax	# msa_36(D)->sqname, D.6478
	movl	-52(%rbp), %edx	# i, tmp500
	movslq	%edx, %rdx	# tmp500, D.6479
	salq	$3, %rdx	#, D.6479
	addq	%rdx, %rax	# D.6479, D.6478
	.loc 1 342 0
	movq	(%rax), %rsi	# *_255, D.6480
	movl	-40(%rbp), %eax	# typewidth, tmp501
	movl	-44(%rbp), %edx	# namewidth, tmp502
	addl	%eax, %edx	# tmp501, D.6477
	movl	-36(%rbp), %eax	# markupwidth, tmp503
	leal	(%rdx,%rax), %ecx	#, D.6477
	movl	-40(%rbp), %eax	# typewidth, tmp504
	movl	-44(%rbp), %edx	# namewidth, tmp505
	addl	%eax, %edx	# tmp504, D.6477
	movl	-36(%rbp), %eax	# markupwidth, tmp506
	addl	%eax, %edx	# tmp506, D.6477
	movq	-16(%rbp), %rdi	# buf, tmp507
	movq	-72(%rbp), %rax	# fp, tmp508
	movq	%rdi, %r9	# tmp507,
	movq	%rsi, %r8	# D.6480,
	movl	$.LC29, %esi	#,
	movq	%rax, %rdi	# tmp508,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 345 0
	movq	-80(%rbp), %rax	# msa, tmp509
	movq	112(%rax), %rax	# msa_36(D)->ss, D.6478
	testq	%rax, %rax	# D.6478
	je	.L80	#,
	.loc 1 345 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# msa, tmp510
	movq	112(%rax), %rax	# msa_36(D)->ss, D.6478
	movl	-52(%rbp), %edx	# i, tmp511
	movslq	%edx, %rdx	# tmp511, D.6479
	salq	$3, %rdx	#, D.6479
	addq	%rdx, %rax	# D.6479, D.6478
	movq	(%rax), %rax	# *_265, D.6480
	testq	%rax, %rax	# D.6480
	je	.L80	#,
	.loc 1 346 0 is_stmt 1
	movl	-84(%rbp), %eax	# cpl, tmp512
	movslq	%eax, %rdx	# tmp512, D.6479
	movq	-80(%rbp), %rax	# msa, tmp513
	movq	112(%rax), %rax	# msa_36(D)->ss, D.6478
	movl	-52(%rbp), %ecx	# i, tmp514
	movslq	%ecx, %rcx	# tmp514, D.6479
	salq	$3, %rcx	#, D.6479
	addq	%rcx, %rax	# D.6479, D.6478
	movq	(%rax), %rcx	# *_271, D.6480
	movl	-32(%rbp), %eax	# currpos, tmp515
	cltq
	addq	%rax, %rcx	# D.6485, D.6480
	movq	-16(%rbp), %rax	# buf, tmp516
	movq	%rcx, %rsi	# D.6480,
	movq	%rax, %rdi	# tmp516,
	call	strncpy	#
	.loc 1 347 0
	movl	-84(%rbp), %eax	# cpl, tmp517
	movslq	%eax, %rdx	# tmp517, D.6485
	movq	-16(%rbp), %rax	# buf, tmp518
	addq	%rdx, %rax	# D.6485, D.6480
	movb	$0, (%rax)	#, *_276
	.loc 1 348 0
	movq	-80(%rbp), %rax	# msa, tmp519
	movq	8(%rax), %rax	# msa_36(D)->sqname, D.6478
	movl	-52(%rbp), %edx	# i, tmp520
	movslq	%edx, %rdx	# tmp520, D.6479
	salq	$3, %rdx	#, D.6479
	addq	%rdx, %rax	# D.6479, D.6478
	movq	(%rax), %rsi	# *_280, D.6480
	movq	-16(%rbp), %rdi	# buf, tmp521
	movl	-44(%rbp), %ecx	# namewidth, tmp522
	movl	-44(%rbp), %edx	# namewidth, tmp523
	movq	-72(%rbp), %rax	# fp, tmp524
	movq	%rdi, %r9	# tmp521,
	movq	%rsi, %r8	# D.6480,
	movl	$.LC30, %esi	#,
	movq	%rax, %rdi	# tmp524,
	movl	$0, %eax	#,
	call	fprintf	#
.L80:
	.loc 1 350 0
	movq	-80(%rbp), %rax	# msa, tmp525
	movq	120(%rax), %rax	# msa_36(D)->sa, D.6478
	testq	%rax, %rax	# D.6478
	je	.L81	#,
	.loc 1 350 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# msa, tmp526
	movq	120(%rax), %rax	# msa_36(D)->sa, D.6478
	movl	-52(%rbp), %edx	# i, tmp527
	movslq	%edx, %rdx	# tmp527, D.6479
	salq	$3, %rdx	#, D.6479
	addq	%rdx, %rax	# D.6479, D.6478
	movq	(%rax), %rax	# *_286, D.6480
	testq	%rax, %rax	# D.6480
	je	.L81	#,
	.loc 1 351 0 is_stmt 1
	movl	-84(%rbp), %eax	# cpl, tmp528
	movslq	%eax, %rdx	# tmp528, D.6479
	movq	-80(%rbp), %rax	# msa, tmp529
	movq	120(%rax), %rax	# msa_36(D)->sa, D.6478
	movl	-52(%rbp), %ecx	# i, tmp530
	movslq	%ecx, %rcx	# tmp530, D.6479
	salq	$3, %rcx	#, D.6479
	addq	%rcx, %rax	# D.6479, D.6478
	movq	(%rax), %rcx	# *_292, D.6480
	movl	-32(%rbp), %eax	# currpos, tmp531
	cltq
	addq	%rax, %rcx	# D.6485, D.6480
	movq	-16(%rbp), %rax	# buf, tmp532
	movq	%rcx, %rsi	# D.6480,
	movq	%rax, %rdi	# tmp532,
	call	strncpy	#
	.loc 1 352 0
	movl	-84(%rbp), %eax	# cpl, tmp533
	movslq	%eax, %rdx	# tmp533, D.6485
	movq	-16(%rbp), %rax	# buf, tmp534
	addq	%rdx, %rax	# D.6485, D.6480
	movb	$0, (%rax)	#, *_297
	.loc 1 353 0
	movq	-80(%rbp), %rax	# msa, tmp535
	movq	8(%rax), %rax	# msa_36(D)->sqname, D.6478
	movl	-52(%rbp), %edx	# i, tmp536
	movslq	%edx, %rdx	# tmp536, D.6479
	salq	$3, %rdx	#, D.6479
	addq	%rdx, %rax	# D.6479, D.6478
	movq	(%rax), %rsi	# *_301, D.6480
	movq	-16(%rbp), %rdi	# buf, tmp537
	movl	-44(%rbp), %ecx	# namewidth, tmp538
	movl	-44(%rbp), %edx	# namewidth, tmp539
	movq	-72(%rbp), %rax	# fp, tmp540
	movq	%rdi, %r9	# tmp537,
	movq	%rsi, %r8	# D.6480,
	movl	$.LC31, %esi	#,
	movq	%rax, %rdi	# tmp540,
	movl	$0, %eax	#,
	call	fprintf	#
.L81:
	.loc 1 355 0
	movl	$0, -48(%rbp)	#, j
	jmp	.L82	#
.L84:
	.loc 1 356 0
	movq	-80(%rbp), %rax	# msa, tmp541
	movq	288(%rax), %rax	# msa_36(D)->gr, D.6484
	movl	-48(%rbp), %edx	# j, tmp542
	movslq	%edx, %rdx	# tmp542, D.6479
	salq	$3, %rdx	#, D.6479
	addq	%rdx, %rax	# D.6479, D.6484
	movq	(%rax), %rax	# *_308, D.6478
	movl	-52(%rbp), %edx	# i, tmp543
	movslq	%edx, %rdx	# tmp543, D.6479
	salq	$3, %rdx	#, D.6479
	addq	%rdx, %rax	# D.6479, D.6478
	movq	(%rax), %rax	# *_312, D.6480
	testq	%rax, %rax	# D.6480
	je	.L83	#,
	.loc 1 357 0
	movl	-84(%rbp), %eax	# cpl, tmp544
	movslq	%eax, %rdx	# tmp544, D.6479
	movq	-80(%rbp), %rax	# msa, tmp545
	movq	288(%rax), %rax	# msa_36(D)->gr, D.6484
	movl	-48(%rbp), %ecx	# j, tmp546
	movslq	%ecx, %rcx	# tmp546, D.6479
	salq	$3, %rcx	#, D.6479
	addq	%rcx, %rax	# D.6479, D.6484
	movq	(%rax), %rax	# *_318, D.6478
	movl	-52(%rbp), %ecx	# i, tmp547
	movslq	%ecx, %rcx	# tmp547, D.6479
	salq	$3, %rcx	#, D.6479
	addq	%rcx, %rax	# D.6479, D.6478
	movq	(%rax), %rcx	# *_322, D.6480
	movl	-32(%rbp), %eax	# currpos, tmp548
	cltq
	addq	%rax, %rcx	# D.6485, D.6480
	movq	-16(%rbp), %rax	# buf, tmp549
	movq	%rcx, %rsi	# D.6480,
	movq	%rax, %rdi	# tmp549,
	call	strncpy	#
	.loc 1 358 0
	movl	-84(%rbp), %eax	# cpl, tmp550
	movslq	%eax, %rdx	# tmp550, D.6485
	movq	-16(%rbp), %rax	# buf, tmp551
	addq	%rdx, %rax	# D.6485, D.6480
	movb	$0, (%rax)	#, *_327
	.loc 1 360 0
	movq	-80(%rbp), %rax	# msa, tmp552
	movq	280(%rax), %rax	# msa_36(D)->gr_tag, D.6478
	movl	-48(%rbp), %edx	# j, tmp553
	movslq	%edx, %rdx	# tmp553, D.6479
	salq	$3, %rdx	#, D.6479
	addq	%rdx, %rax	# D.6479, D.6478
	.loc 1 359 0
	movq	(%rax), %r8	# *_331, D.6480
	.loc 1 360 0
	movq	-80(%rbp), %rax	# msa, tmp554
	movq	8(%rax), %rax	# msa_36(D)->sqname, D.6478
	movl	-52(%rbp), %edx	# i, tmp555
	movslq	%edx, %rdx	# tmp555, D.6479
	salq	$3, %rdx	#, D.6479
	addq	%rdx, %rax	# D.6479, D.6478
	.loc 1 359 0
	movq	(%rax), %rdi	# *_336, D.6480
	movl	-44(%rbp), %ecx	# namewidth, tmp556
	movl	-44(%rbp), %edx	# namewidth, tmp557
	movq	-72(%rbp), %rax	# fp, tmp558
	movq	-16(%rbp), %rsi	# buf, tmp559
	movq	%rsi, (%rsp)	# tmp559,
	movq	%r8, %r9	# D.6480,
	movq	%rdi, %r8	# D.6480,
	movl	$.LC32, %esi	#,
	movq	%rax, %rdi	# tmp558,
	movl	$0, %eax	#,
	call	fprintf	#
.L83:
	.loc 1 355 0
	addl	$1, -48(%rbp)	#, j
.L82:
	.loc 1 355 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# msa, tmp560
	movl	304(%rax), %eax	# msa_36(D)->ngr, D.6477
	cmpl	-48(%rbp), %eax	# j, D.6477
	jg	.L84	#,
	.loc 1 338 0 is_stmt 1
	addl	$1, -52(%rbp)	#, i
.L79:
	.loc 1 338 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# msa, tmp561
	movl	28(%rax), %eax	# msa_36(D)->nseq, D.6477
	cmpl	-52(%rbp), %eax	# i, D.6477
	jg	.L85	#,
	.loc 1 363 0 is_stmt 1
	movq	-80(%rbp), %rax	# msa, tmp562
	movq	72(%rax), %rax	# msa_36(D)->ss_cons, D.6480
	testq	%rax, %rax	# D.6480
	je	.L86	#,
	.loc 1 364 0
	movl	-84(%rbp), %eax	# cpl, tmp563
	movslq	%eax, %rdx	# tmp563, D.6479
	movq	-80(%rbp), %rax	# msa, tmp564
	movq	72(%rax), %rcx	# msa_36(D)->ss_cons, D.6480
	movl	-32(%rbp), %eax	# currpos, tmp565
	cltq
	addq	%rax, %rcx	# D.6485, D.6480
	movq	-16(%rbp), %rax	# buf, tmp566
	movq	%rcx, %rsi	# D.6480,
	movq	%rax, %rdi	# tmp566,
	call	strncpy	#
	.loc 1 365 0
	movl	-84(%rbp), %eax	# cpl, tmp567
	movslq	%eax, %rdx	# tmp567, D.6485
	movq	-16(%rbp), %rax	# buf, tmp568
	addq	%rdx, %rax	# D.6485, D.6480
	movb	$0, (%rax)	#, *_346
	.loc 1 366 0
	movl	-40(%rbp), %eax	# typewidth, tmp569
	movl	-44(%rbp), %edx	# namewidth, tmp570
	leal	(%rdx,%rax), %ecx	#, D.6477
	movl	-40(%rbp), %eax	# typewidth, tmp571
	movl	-44(%rbp), %edx	# namewidth, tmp572
	addl	%eax, %edx	# tmp571, D.6477
	movq	-16(%rbp), %rsi	# buf, tmp573
	movq	-72(%rbp), %rax	# fp, tmp574
	movq	%rsi, %r9	# tmp573,
	movl	$.LC33, %r8d	#,
	movl	$.LC34, %esi	#,
	movq	%rax, %rdi	# tmp574,
	movl	$0, %eax	#,
	call	fprintf	#
.L86:
	.loc 1 369 0
	movq	-80(%rbp), %rax	# msa, tmp575
	movq	80(%rax), %rax	# msa_36(D)->sa_cons, D.6480
	testq	%rax, %rax	# D.6480
	je	.L87	#,
	.loc 1 370 0
	movl	-84(%rbp), %eax	# cpl, tmp576
	movslq	%eax, %rdx	# tmp576, D.6479
	movq	-80(%rbp), %rax	# msa, tmp577
	movq	80(%rax), %rcx	# msa_36(D)->sa_cons, D.6480
	movl	-32(%rbp), %eax	# currpos, tmp578
	cltq
	addq	%rax, %rcx	# D.6485, D.6480
	movq	-16(%rbp), %rax	# buf, tmp579
	movq	%rcx, %rsi	# D.6480,
	movq	%rax, %rdi	# tmp579,
	call	strncpy	#
	.loc 1 371 0
	movl	-84(%rbp), %eax	# cpl, tmp580
	movslq	%eax, %rdx	# tmp580, D.6485
	movq	-16(%rbp), %rax	# buf, tmp581
	addq	%rdx, %rax	# D.6485, D.6480
	movb	$0, (%rax)	#, *_355
	.loc 1 372 0
	movl	-40(%rbp), %eax	# typewidth, tmp582
	movl	-44(%rbp), %edx	# namewidth, tmp583
	leal	(%rdx,%rax), %ecx	#, D.6477
	movl	-40(%rbp), %eax	# typewidth, tmp584
	movl	-44(%rbp), %edx	# namewidth, tmp585
	addl	%eax, %edx	# tmp584, D.6477
	movq	-16(%rbp), %rsi	# buf, tmp586
	movq	-72(%rbp), %rax	# fp, tmp587
	movq	%rsi, %r9	# tmp586,
	movl	$.LC35, %r8d	#,
	movl	$.LC34, %esi	#,
	movq	%rax, %rdi	# tmp587,
	movl	$0, %eax	#,
	call	fprintf	#
.L87:
	.loc 1 375 0
	movq	-80(%rbp), %rax	# msa, tmp588
	movq	88(%rax), %rax	# msa_36(D)->rf, D.6480
	testq	%rax, %rax	# D.6480
	je	.L88	#,
	.loc 1 376 0
	movl	-84(%rbp), %eax	# cpl, tmp589
	movslq	%eax, %rdx	# tmp589, D.6479
	movq	-80(%rbp), %rax	# msa, tmp590
	movq	88(%rax), %rcx	# msa_36(D)->rf, D.6480
	movl	-32(%rbp), %eax	# currpos, tmp591
	cltq
	addq	%rax, %rcx	# D.6485, D.6480
	movq	-16(%rbp), %rax	# buf, tmp592
	movq	%rcx, %rsi	# D.6480,
	movq	%rax, %rdi	# tmp592,
	call	strncpy	#
	.loc 1 377 0
	movl	-84(%rbp), %eax	# cpl, tmp593
	movslq	%eax, %rdx	# tmp593, D.6485
	movq	-16(%rbp), %rax	# buf, tmp594
	addq	%rdx, %rax	# D.6485, D.6480
	movb	$0, (%rax)	#, *_364
	.loc 1 378 0
	movl	-40(%rbp), %eax	# typewidth, tmp595
	movl	-44(%rbp), %edx	# namewidth, tmp596
	leal	(%rdx,%rax), %ecx	#, D.6477
	movl	-40(%rbp), %eax	# typewidth, tmp597
	movl	-44(%rbp), %edx	# namewidth, tmp598
	addl	%eax, %edx	# tmp597, D.6477
	movq	-16(%rbp), %rsi	# buf, tmp599
	movq	-72(%rbp), %rax	# fp, tmp600
	movq	%rsi, %r9	# tmp599,
	movl	$.LC36, %r8d	#,
	movl	$.LC34, %esi	#,
	movq	%rax, %rdi	# tmp600,
	movl	$0, %eax	#,
	call	fprintf	#
.L88:
	.loc 1 380 0
	movl	$0, -48(%rbp)	#, j
	jmp	.L89	#
.L90:
	.loc 1 381 0 discriminator 2
	movl	-84(%rbp), %eax	# cpl, tmp601
	movslq	%eax, %rdx	# tmp601, D.6479
	movq	-80(%rbp), %rax	# msa, tmp602
	movq	256(%rax), %rax	# msa_36(D)->gc, D.6478
	movl	-48(%rbp), %ecx	# j, tmp603
	movslq	%ecx, %rcx	# tmp603, D.6479
	salq	$3, %rcx	#, D.6479
	addq	%rcx, %rax	# D.6479, D.6478
	movq	(%rax), %rcx	# *_373, D.6480
	movl	-32(%rbp), %eax	# currpos, tmp604
	cltq
	addq	%rax, %rcx	# D.6485, D.6480
	movq	-16(%rbp), %rax	# buf, tmp605
	movq	%rcx, %rsi	# D.6480,
	movq	%rax, %rdi	# tmp605,
	call	strncpy	#
	.loc 1 382 0 discriminator 2
	movl	-84(%rbp), %eax	# cpl, tmp606
	movslq	%eax, %rdx	# tmp606, D.6485
	movq	-16(%rbp), %rax	# buf, tmp607
	addq	%rdx, %rax	# D.6485, D.6480
	movb	$0, (%rax)	#, *_378
	.loc 1 384 0 discriminator 2
	movq	-80(%rbp), %rax	# msa, tmp608
	movq	248(%rax), %rax	# msa_36(D)->gc_tag, D.6478
	movl	-48(%rbp), %edx	# j, tmp609
	movslq	%edx, %rdx	# tmp609, D.6479
	salq	$3, %rdx	#, D.6479
	addq	%rdx, %rax	# D.6479, D.6478
	.loc 1 383 0 discriminator 2
	movq	(%rax), %rsi	# *_382, D.6480
	movl	-40(%rbp), %eax	# typewidth, tmp610
	movl	-44(%rbp), %edx	# namewidth, tmp611
	leal	(%rdx,%rax), %ecx	#, D.6477
	movl	-40(%rbp), %eax	# typewidth, tmp612
	movl	-44(%rbp), %edx	# namewidth, tmp613
	addl	%eax, %edx	# tmp612, D.6477
	movq	-16(%rbp), %rdi	# buf, tmp614
	movq	-72(%rbp), %rax	# fp, tmp615
	movq	%rdi, %r9	# tmp614,
	movq	%rsi, %r8	# D.6480,
	movl	$.LC34, %esi	#,
	movq	%rax, %rdi	# tmp615,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 380 0 discriminator 2
	addl	$1, -48(%rbp)	#, j
.L89:
	.loc 1 380 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# msa, tmp616
	movl	272(%rax), %eax	# msa_36(D)->ngc, D.6477
	cmpl	-48(%rbp), %eax	# j, D.6477
	jg	.L90	#,
	.loc 1 335 0 is_stmt 1
	movl	-84(%rbp), %eax	# cpl, tmp617
	addl	%eax, -32(%rbp)	# tmp617, currpos
.L77:
	.loc 1 335 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rax	# msa, tmp618
	movl	24(%rax), %eax	# msa_36(D)->alen, D.6477
	cmpl	-32(%rbp), %eax	# currpos, D.6477
	jg	.L91	#,
	.loc 1 387 0 is_stmt 1
	movq	-72(%rbp), %rax	# fp, tmp619
	movq	%rax, %rcx	# tmp619,
	movl	$3, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC37, %edi	#,
	call	fwrite	#
	.loc 1 388 0
	movq	-16(%rbp), %rax	# buf, tmp620
	movq	%rax, %rdi	# tmp620,
	call	free	#
	.loc 1 389 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	actually_write_stockholm, .-actually_write_stockholm
	.section	.rodata
.LC38:
	.string	" \t\n"
.LC39:
	.string	"ID"
.LC40:
	.string	"AC"
.LC41:
	.string	"DE"
.LC42:
	.string	"AU"
.LC43:
	.string	"GA"
.LC44:
	.string	"NC"
.LC45:
	.string	"TC"
	.text
	.type	parse_gf, @function
parse_gf:
.LFB6:
	.loc 1 400 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# msa, msa
	movq	%rsi, -48(%rbp)	# buf, buf
	.loc 1 406 0
	movq	-48(%rbp), %rax	# buf, tmp87
	movq	%rax, -32(%rbp)	# tmp87, s
	.loc 1 407 0
	leaq	-32(%rbp), %rax	#, tmp88
	movl	$0, %edx	#,
	movl	$.LC38, %esi	#,
	movq	%rax, %rdi	# tmp88,
	call	sre_strtok	#
	movq	%rax, -16(%rbp)	# tmp89, gf
	cmpq	$0, -16(%rbp)	#, gf
	jne	.L93	#,
	.loc 1 407 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.6514
	jmp	.L114	#
.L93:
	.loc 1 408 0 is_stmt 1
	leaq	-32(%rbp), %rax	#, tmp90
	movl	$0, %edx	#,
	movl	$.LC38, %esi	#,
	movq	%rax, %rdi	# tmp90,
	call	sre_strtok	#
	movq	%rax, -8(%rbp)	# tmp91, featurename
	cmpq	$0, -8(%rbp)	#, featurename
	jne	.L95	#,
	.loc 1 408 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.6514
	jmp	.L114	#
.L95:
	.loc 1 409 0 is_stmt 1
	leaq	-32(%rbp), %rax	#, tmp92
	movl	$0, %edx	#,
	movl	$.LC28, %esi	#,
	movq	%rax, %rdi	# tmp92,
	call	sre_strtok	#
	movq	%rax, -24(%rbp)	# tmp93, text
	cmpq	$0, -24(%rbp)	#, text
	jne	.L96	#,
	.loc 1 409 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.6514
	jmp	.L114	#
.L96:
	.loc 1 410 0 is_stmt 1
	jmp	.L97	#
.L99:
	.loc 1 410 0 is_stmt 0 discriminator 1
	addq	$1, -24(%rbp)	#, text
.L97:
	movq	-24(%rbp), %rax	# text, tmp94
	movzbl	(%rax), %eax	# *text_1, D.6515
	testb	%al, %al	# D.6515
	je	.L98	#,
	.loc 1 410 0 discriminator 2
	movq	-24(%rbp), %rax	# text, tmp95
	movzbl	(%rax), %eax	# *text_1, D.6515
	cmpb	$32, %al	#, D.6515
	je	.L99	#,
	movq	-24(%rbp), %rax	# text, tmp96
	movzbl	(%rax), %eax	# *text_1, D.6515
	cmpb	$9, %al	#, D.6515
	je	.L99	#,
.L98:
	.loc 1 412 0 is_stmt 1
	movq	-8(%rbp), %rax	# featurename, tmp97
	movl	$.LC39, %esi	#,
	movq	%rax, %rdi	# tmp97,
	call	strcmp	#
	testl	%eax, %eax	# D.6514
	jne	.L100	#,
	.loc 1 413 0
	movq	-24(%rbp), %rax	# text, tmp98
	movl	$-1, %esi	#,
	movq	%rax, %rdi	# tmp98,
	call	sre_strdup	#
	movq	-40(%rbp), %rdx	# msa, tmp99
	movq	%rax, 40(%rdx)	# D.6516, msa_16(D)->name
	jmp	.L101	#
.L100:
	.loc 1 414 0
	movq	-8(%rbp), %rax	# featurename, tmp100
	movl	$.LC40, %esi	#,
	movq	%rax, %rdi	# tmp100,
	call	strcmp	#
	testl	%eax, %eax	# D.6514
	jne	.L102	#,
	.loc 1 415 0
	movq	-24(%rbp), %rax	# text, tmp101
	movl	$-1, %esi	#,
	movq	%rax, %rdi	# tmp101,
	call	sre_strdup	#
	movq	-40(%rbp), %rdx	# msa, tmp102
	movq	%rax, 56(%rdx)	# D.6516, msa_16(D)->acc
	jmp	.L101	#
.L102:
	.loc 1 416 0
	movq	-8(%rbp), %rax	# featurename, tmp103
	movl	$.LC41, %esi	#,
	movq	%rax, %rdi	# tmp103,
	call	strcmp	#
	testl	%eax, %eax	# D.6514
	jne	.L103	#,
	.loc 1 417 0
	movq	-24(%rbp), %rax	# text, tmp104
	movl	$-1, %esi	#,
	movq	%rax, %rdi	# tmp104,
	call	sre_strdup	#
	movq	-40(%rbp), %rdx	# msa, tmp105
	movq	%rax, 48(%rdx)	# D.6516, msa_16(D)->desc
	jmp	.L101	#
.L103:
	.loc 1 418 0
	movq	-8(%rbp), %rax	# featurename, tmp106
	movl	$.LC42, %esi	#,
	movq	%rax, %rdi	# tmp106,
	call	strcmp	#
	testl	%eax, %eax	# D.6514
	jne	.L104	#,
	.loc 1 419 0
	movq	-24(%rbp), %rax	# text, tmp107
	movl	$-1, %esi	#,
	movq	%rax, %rdi	# tmp107,
	call	sre_strdup	#
	movq	-40(%rbp), %rdx	# msa, tmp108
	movq	%rax, 64(%rdx)	# D.6516, msa_16(D)->au
	jmp	.L101	#
.L104:
	.loc 1 420 0
	movq	-8(%rbp), %rax	# featurename, tmp109
	movl	$.LC43, %esi	#,
	movq	%rax, %rdi	# tmp109,
	call	strcmp	#
	testl	%eax, %eax	# D.6514
	jne	.L105	#,
	.loc 1 422 0
	movq	-24(%rbp), %rax	# text, tmp110
	movq	%rax, -32(%rbp)	# tmp110, s
	.loc 1 423 0
	leaq	-32(%rbp), %rax	#, tmp111
	movl	$0, %edx	#,
	movl	$.LC38, %esi	#,
	movq	%rax, %rdi	# tmp111,
	call	sre_strtok	#
	movq	%rax, -24(%rbp)	# tmp112, text
	cmpq	$0, -24(%rbp)	#, text
	jne	.L106	#,
	.loc 1 423 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.6514
	jmp	.L114	#
.L106:
	.loc 1 424 0 is_stmt 1
	movq	-24(%rbp), %rax	# text, tmp113
	movq	%rax, %rdi	# tmp113,
	call	atof	#
	unpcklpd	%xmm0, %xmm0	# D.6517
	cvtpd2ps	%xmm0, %xmm0	# D.6517, D.6518
	movq	-40(%rbp), %rax	# msa, tmp114
	movss	%xmm0, 136(%rax)	# D.6518, msa_16(D)->cutoff
	.loc 1 425 0
	movq	-40(%rbp), %rax	# msa, tmp115
	movl	$1, 160(%rax)	#, msa_16(D)->cutoff_is_set
	.loc 1 426 0
	leaq	-32(%rbp), %rax	#, tmp116
	movl	$0, %edx	#,
	movl	$.LC38, %esi	#,
	movq	%rax, %rdi	# tmp116,
	call	sre_strtok	#
	movq	%rax, -24(%rbp)	# tmp117, text
	cmpq	$0, -24(%rbp)	#, text
	je	.L101	#,
	.loc 1 427 0
	movq	-24(%rbp), %rax	# text, tmp118
	movq	%rax, %rdi	# tmp118,
	call	atof	#
	unpcklpd	%xmm0, %xmm0	# D.6517
	cvtpd2ps	%xmm0, %xmm0	# D.6517, D.6518
	movq	-40(%rbp), %rax	# msa, tmp119
	movss	%xmm0, 140(%rax)	# D.6518, msa_16(D)->cutoff
	.loc 1 428 0
	movq	-40(%rbp), %rax	# msa, tmp120
	movl	$1, 164(%rax)	#, msa_16(D)->cutoff_is_set
	jmp	.L101	#
.L105:
	.loc 1 431 0
	movq	-8(%rbp), %rax	# featurename, tmp121
	movl	$.LC44, %esi	#,
	movq	%rax, %rdi	# tmp121,
	call	strcmp	#
	testl	%eax, %eax	# D.6514
	jne	.L108	#,
	.loc 1 433 0
	movq	-24(%rbp), %rax	# text, tmp122
	movq	%rax, -32(%rbp)	# tmp122, s
	.loc 1 434 0
	leaq	-32(%rbp), %rax	#, tmp123
	movl	$0, %edx	#,
	movl	$.LC38, %esi	#,
	movq	%rax, %rdi	# tmp123,
	call	sre_strtok	#
	movq	%rax, -24(%rbp)	# tmp124, text
	cmpq	$0, -24(%rbp)	#, text
	jne	.L109	#,
	.loc 1 434 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.6514
	jmp	.L114	#
.L109:
	.loc 1 435 0 is_stmt 1
	movq	-24(%rbp), %rax	# text, tmp125
	movq	%rax, %rdi	# tmp125,
	call	atof	#
	unpcklpd	%xmm0, %xmm0	# D.6517
	cvtpd2ps	%xmm0, %xmm0	# D.6517, D.6518
	movq	-40(%rbp), %rax	# msa, tmp126
	movss	%xmm0, 144(%rax)	# D.6518, msa_16(D)->cutoff
	.loc 1 436 0
	movq	-40(%rbp), %rax	# msa, tmp127
	movl	$1, 168(%rax)	#, msa_16(D)->cutoff_is_set
	.loc 1 437 0
	leaq	-32(%rbp), %rax	#, tmp128
	movl	$0, %edx	#,
	movl	$.LC38, %esi	#,
	movq	%rax, %rdi	# tmp128,
	call	sre_strtok	#
	movq	%rax, -24(%rbp)	# tmp129, text
	cmpq	$0, -24(%rbp)	#, text
	je	.L101	#,
	.loc 1 438 0
	movq	-24(%rbp), %rax	# text, tmp130
	movq	%rax, %rdi	# tmp130,
	call	atof	#
	unpcklpd	%xmm0, %xmm0	# D.6517
	cvtpd2ps	%xmm0, %xmm0	# D.6517, D.6518
	movq	-40(%rbp), %rax	# msa, tmp131
	movss	%xmm0, 148(%rax)	# D.6518, msa_16(D)->cutoff
	.loc 1 439 0
	movq	-40(%rbp), %rax	# msa, tmp132
	movl	$1, 172(%rax)	#, msa_16(D)->cutoff_is_set
	jmp	.L101	#
.L108:
	.loc 1 442 0
	movq	-8(%rbp), %rax	# featurename, tmp133
	movl	$.LC45, %esi	#,
	movq	%rax, %rdi	# tmp133,
	call	strcmp	#
	testl	%eax, %eax	# D.6514
	jne	.L111	#,
	.loc 1 444 0
	movq	-24(%rbp), %rax	# text, tmp134
	movq	%rax, -32(%rbp)	# tmp134, s
	.loc 1 445 0
	leaq	-32(%rbp), %rax	#, tmp135
	movl	$0, %edx	#,
	movl	$.LC38, %esi	#,
	movq	%rax, %rdi	# tmp135,
	call	sre_strtok	#
	movq	%rax, -24(%rbp)	# tmp136, text
	cmpq	$0, -24(%rbp)	#, text
	jne	.L112	#,
	.loc 1 445 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.6514
	jmp	.L114	#
.L112:
	.loc 1 446 0 is_stmt 1
	movq	-24(%rbp), %rax	# text, tmp137
	movq	%rax, %rdi	# tmp137,
	call	atof	#
	unpcklpd	%xmm0, %xmm0	# D.6517
	cvtpd2ps	%xmm0, %xmm0	# D.6517, D.6518
	movq	-40(%rbp), %rax	# msa, tmp138
	movss	%xmm0, 128(%rax)	# D.6518, msa_16(D)->cutoff
	.loc 1 447 0
	movq	-40(%rbp), %rax	# msa, tmp139
	movl	$1, 152(%rax)	#, msa_16(D)->cutoff_is_set
	.loc 1 448 0
	leaq	-32(%rbp), %rax	#, tmp140
	movl	$0, %edx	#,
	movl	$.LC38, %esi	#,
	movq	%rax, %rdi	# tmp140,
	call	sre_strtok	#
	movq	%rax, -24(%rbp)	# tmp141, text
	cmpq	$0, -24(%rbp)	#, text
	je	.L101	#,
	.loc 1 449 0
	movq	-24(%rbp), %rax	# text, tmp142
	movq	%rax, %rdi	# tmp142,
	call	atof	#
	unpcklpd	%xmm0, %xmm0	# D.6517
	cvtpd2ps	%xmm0, %xmm0	# D.6517, D.6518
	movq	-40(%rbp), %rax	# msa, tmp143
	movss	%xmm0, 132(%rax)	# D.6518, msa_16(D)->cutoff
	.loc 1 450 0
	movq	-40(%rbp), %rax	# msa, tmp144
	movl	$1, 156(%rax)	#, msa_16(D)->cutoff_is_set
	jmp	.L101	#
.L111:
	.loc 1 454 0
	movq	-24(%rbp), %rdx	# text, tmp145
	movq	-8(%rbp), %rcx	# featurename, tmp146
	movq	-40(%rbp), %rax	# msa, tmp147
	movq	%rcx, %rsi	# tmp146,
	movq	%rax, %rdi	# tmp147,
	call	MSAAddGF	#
.L101:
	.loc 1 456 0
	movl	$1, %eax	#, D.6514
.L114:
	.loc 1 457 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	parse_gf, .-parse_gf
	.section	.rodata
.LC46:
	.string	"WT"
	.text
	.type	parse_gs, @function
parse_gs:
.LFB7:
	.loc 1 465 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)	# msa, msa
	movq	%rsi, -80(%rbp)	# buf, buf
	.loc 1 473 0
	movq	-80(%rbp), %rax	# buf, tmp77
	movq	%rax, -56(%rbp)	# tmp77, s
	.loc 1 474 0
	leaq	-56(%rbp), %rax	#, tmp78
	movl	$0, %edx	#,
	movl	$.LC38, %esi	#,
	movq	%rax, %rdi	# tmp78,
	call	sre_strtok	#
	movq	%rax, -40(%rbp)	# tmp79, gs
	cmpq	$0, -40(%rbp)	#, gs
	jne	.L116	#,
	.loc 1 474 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.6527
	jmp	.L128	#
.L116:
	.loc 1 475 0 is_stmt 1
	leaq	-56(%rbp), %rax	#, tmp80
	movl	$0, %edx	#,
	movl	$.LC38, %esi	#,
	movq	%rax, %rdi	# tmp80,
	call	sre_strtok	#
	movq	%rax, -32(%rbp)	# tmp81, seqname
	cmpq	$0, -32(%rbp)	#, seqname
	jne	.L118	#,
	.loc 1 475 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.6527
	jmp	.L128	#
.L118:
	.loc 1 476 0 is_stmt 1
	leaq	-56(%rbp), %rax	#, tmp82
	movl	$0, %edx	#,
	movl	$.LC38, %esi	#,
	movq	%rax, %rdi	# tmp82,
	call	sre_strtok	#
	movq	%rax, -24(%rbp)	# tmp83, featurename
	cmpq	$0, -24(%rbp)	#, featurename
	jne	.L119	#,
	.loc 1 476 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.6527
	jmp	.L128	#
.L119:
	.loc 1 477 0 is_stmt 1
	leaq	-56(%rbp), %rax	#, tmp84
	movl	$0, %edx	#,
	movl	$.LC28, %esi	#,
	movq	%rax, %rdi	# tmp84,
	call	sre_strtok	#
	movq	%rax, -48(%rbp)	# tmp85, text
	cmpq	$0, -48(%rbp)	#, text
	jne	.L120	#,
	.loc 1 477 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.6527
	jmp	.L128	#
.L120:
	.loc 1 478 0 is_stmt 1
	jmp	.L121	#
.L123:
	.loc 1 478 0 is_stmt 0 discriminator 1
	addq	$1, -48(%rbp)	#, text
.L121:
	movq	-48(%rbp), %rax	# text, tmp86
	movzbl	(%rax), %eax	# *text_1, D.6528
	testb	%al, %al	# D.6528
	je	.L122	#,
	.loc 1 478 0 discriminator 2
	movq	-48(%rbp), %rax	# text, tmp87
	movzbl	(%rax), %eax	# *text_1, D.6528
	cmpb	$32, %al	#, D.6528
	je	.L123	#,
	movq	-48(%rbp), %rax	# text, tmp88
	movzbl	(%rax), %eax	# *text_1, D.6528
	cmpb	$9, %al	#, D.6528
	je	.L123	#,
.L122:
	.loc 1 482 0 is_stmt 1
	movq	-72(%rbp), %rax	# msa, tmp89
	movl	352(%rax), %eax	# msa_16(D)->lastidx, D.6527
	leal	1(%rax), %edx	#, D.6527
	movq	-32(%rbp), %rcx	# seqname, tmp90
	movq	-72(%rbp), %rax	# msa, tmp91
	movq	%rcx, %rsi	# tmp90,
	movq	%rax, %rdi	# tmp91,
	call	MSAGetSeqidx	#
	movl	%eax, -60(%rbp)	# tmp92, seqidx
	.loc 1 483 0
	movq	-72(%rbp), %rax	# msa, tmp93
	movl	-60(%rbp), %edx	# seqidx, tmp94
	movl	%edx, 352(%rax)	# tmp94, msa_16(D)->lastidx
	.loc 1 485 0
	movq	-24(%rbp), %rax	# featurename, tmp95
	movl	$.LC46, %esi	#,
	movq	%rax, %rdi	# tmp95,
	call	strcmp	#
	testl	%eax, %eax	# D.6527
	jne	.L124	#,
	.loc 1 487 0
	movq	-72(%rbp), %rax	# msa, tmp96
	movq	16(%rax), %rax	# msa_16(D)->wgt, D.6529
	movl	-60(%rbp), %edx	# seqidx, tmp97
	movslq	%edx, %rdx	# tmp97, D.6530
	salq	$2, %rdx	#, D.6530
	leaq	(%rax,%rdx), %rbx	#, D.6529
	movq	-48(%rbp), %rax	# text, tmp98
	movq	%rax, %rdi	# tmp98,
	call	atof	#
	unpcklpd	%xmm0, %xmm0	# D.6531
	cvtpd2ps	%xmm0, %xmm0	# D.6531, D.6532
	movss	%xmm0, (%rbx)	# D.6532, *_24
	.loc 1 488 0
	movq	-72(%rbp), %rax	# msa, tmp99
	movl	32(%rax), %eax	# msa_16(D)->flags, D.6527
	orl	$1, %eax	#, D.6527
	movl	%eax, %edx	# D.6527, D.6527
	movq	-72(%rbp), %rax	# msa, tmp100
	movl	%edx, 32(%rax)	# D.6527, msa_16(D)->flags
	jmp	.L125	#
.L124:
	.loc 1 491 0
	movq	-24(%rbp), %rax	# featurename, tmp101
	movl	$.LC40, %esi	#,
	movq	%rax, %rdi	# tmp101,
	call	strcmp	#
	testl	%eax, %eax	# D.6527
	jne	.L126	#,
	.loc 1 492 0
	movq	-48(%rbp), %rdx	# text, tmp102
	movl	-60(%rbp), %ecx	# seqidx, tmp103
	movq	-72(%rbp), %rax	# msa, tmp104
	movl	%ecx, %esi	# tmp103,
	movq	%rax, %rdi	# tmp104,
	call	MSASetSeqAccession	#
	jmp	.L125	#
.L126:
	.loc 1 494 0
	movq	-24(%rbp), %rax	# featurename, tmp105
	movl	$.LC41, %esi	#,
	movq	%rax, %rdi	# tmp105,
	call	strcmp	#
	testl	%eax, %eax	# D.6527
	jne	.L127	#,
	.loc 1 495 0
	movq	-48(%rbp), %rdx	# text, tmp106
	movl	-60(%rbp), %ecx	# seqidx, tmp107
	movq	-72(%rbp), %rax	# msa, tmp108
	movl	%ecx, %esi	# tmp107,
	movq	%rax, %rdi	# tmp108,
	call	MSASetSeqDescription	#
	jmp	.L125	#
.L127:
	.loc 1 498 0
	movq	-48(%rbp), %rcx	# text, tmp109
	movl	-60(%rbp), %edx	# seqidx, tmp110
	movq	-24(%rbp), %rsi	# featurename, tmp111
	movq	-72(%rbp), %rax	# msa, tmp112
	movq	%rax, %rdi	# tmp112,
	call	MSAAddGS	#
.L125:
	.loc 1 500 0
	movl	$1, %eax	#, D.6527
.L128:
	.loc 1 501 0
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	parse_gs, .-parse_gs
	.type	parse_gc, @function
parse_gc:
.LFB8:
	.loc 1 508 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -56(%rbp)	# msa, msa
	movq	%rsi, -64(%rbp)	# buf, buf
	.loc 1 515 0
	movq	-64(%rbp), %rax	# buf, tmp70
	movq	%rax, -32(%rbp)	# tmp70, s
	.loc 1 516 0
	leaq	-32(%rbp), %rax	#, tmp71
	movl	$0, %edx	#,
	movl	$.LC38, %esi	#,
	movq	%rax, %rdi	# tmp71,
	call	sre_strtok	#
	movq	%rax, -24(%rbp)	# tmp72, gc
	cmpq	$0, -24(%rbp)	#, gc
	jne	.L130	#,
	.loc 1 516 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.6534
	jmp	.L138	#
.L130:
	.loc 1 517 0 is_stmt 1
	leaq	-32(%rbp), %rax	#, tmp73
	movl	$0, %edx	#,
	movl	$.LC38, %esi	#,
	movq	%rax, %rdi	# tmp73,
	call	sre_strtok	#
	movq	%rax, -16(%rbp)	# tmp74, featurename
	cmpq	$0, -16(%rbp)	#, featurename
	jne	.L132	#,
	.loc 1 517 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.6534
	jmp	.L138	#
.L132:
	.loc 1 518 0 is_stmt 1
	leaq	-36(%rbp), %rdx	#, tmp75
	leaq	-32(%rbp), %rax	#, tmp76
	movl	$.LC38, %esi	#,
	movq	%rax, %rdi	# tmp76,
	call	sre_strtok	#
	movq	%rax, -8(%rbp)	# tmp77, text
	cmpq	$0, -8(%rbp)	#, text
	jne	.L133	#,
	.loc 1 518 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.6534
	jmp	.L138	#
.L133:
	.loc 1 520 0 is_stmt 1
	movq	-16(%rbp), %rax	# featurename, tmp78
	movl	$.LC33, %esi	#,
	movq	%rax, %rdi	# tmp78,
	call	strcmp	#
	testl	%eax, %eax	# D.6534
	jne	.L134	#,
	.loc 1 521 0
	movl	-36(%rbp), %edx	# len, len.3
	movq	-56(%rbp), %rax	# msa, tmp79
	leaq	72(%rax), %rdi	#, D.6535
	movq	-8(%rbp), %rax	# text, tmp80
	movl	%edx, %ecx	# len.3,
	movq	%rax, %rdx	# tmp80,
	movl	$-1, %esi	#,
	call	sre_strcat	#
	jmp	.L135	#
.L134:
	.loc 1 522 0
	movq	-16(%rbp), %rax	# featurename, tmp81
	movl	$.LC35, %esi	#,
	movq	%rax, %rdi	# tmp81,
	call	strcmp	#
	testl	%eax, %eax	# D.6534
	jne	.L136	#,
	.loc 1 523 0
	movl	-36(%rbp), %edx	# len, len.4
	movq	-56(%rbp), %rax	# msa, tmp82
	leaq	80(%rax), %rdi	#, D.6535
	movq	-8(%rbp), %rax	# text, tmp83
	movl	%edx, %ecx	# len.4,
	movq	%rax, %rdx	# tmp83,
	movl	$-1, %esi	#,
	call	sre_strcat	#
	jmp	.L135	#
.L136:
	.loc 1 524 0
	movq	-16(%rbp), %rax	# featurename, tmp84
	movl	$.LC36, %esi	#,
	movq	%rax, %rdi	# tmp84,
	call	strcmp	#
	testl	%eax, %eax	# D.6534
	jne	.L137	#,
	.loc 1 525 0
	movl	-36(%rbp), %edx	# len, len.5
	movq	-56(%rbp), %rax	# msa, tmp85
	leaq	88(%rax), %rdi	#, D.6535
	movq	-8(%rbp), %rax	# text, tmp86
	movl	%edx, %ecx	# len.5,
	movq	%rax, %rdx	# tmp86,
	movl	$-1, %esi	#,
	call	sre_strcat	#
	jmp	.L135	#
.L137:
	.loc 1 527 0
	movq	-8(%rbp), %rdx	# text, tmp87
	movq	-16(%rbp), %rcx	# featurename, tmp88
	movq	-56(%rbp), %rax	# msa, tmp89
	movq	%rcx, %rsi	# tmp88,
	movq	%rax, %rdi	# tmp89,
	call	MSAAppendGC	#
.L135:
	.loc 1 529 0
	movl	$1, %eax	#, D.6534
.L138:
	.loc 1 530 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	parse_gc, .-parse_gc
	.section	.rodata
.LC47:
	.string	"SS"
.LC48:
	.string	"SA"
	.text
	.type	parse_gr, @function
parse_gr:
.LFB9:
	.loc 1 537 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$88, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)	# msa, msa
	movq	%rsi, -96(%rbp)	# buf, buf
	.loc 1 547 0
	movq	-96(%rbp), %rax	# buf, tmp130
	movq	%rax, -56(%rbp)	# tmp130, s
	.loc 1 548 0
	leaq	-56(%rbp), %rax	#, tmp131
	movl	$0, %edx	#,
	movl	$.LC38, %esi	#,
	movq	%rax, %rdi	# tmp131,
	call	sre_strtok	#
	movq	%rax, -48(%rbp)	# tmp132, gr
	cmpq	$0, -48(%rbp)	#, gr
	jne	.L140	#,
	.loc 1 548 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.6536
	jmp	.L154	#
.L140:
	.loc 1 549 0 is_stmt 1
	leaq	-56(%rbp), %rax	#, tmp133
	movl	$0, %edx	#,
	movl	$.LC38, %esi	#,
	movq	%rax, %rdi	# tmp133,
	call	sre_strtok	#
	movq	%rax, -40(%rbp)	# tmp134, seqname
	cmpq	$0, -40(%rbp)	#, seqname
	jne	.L142	#,
	.loc 1 549 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.6536
	jmp	.L154	#
.L142:
	.loc 1 550 0 is_stmt 1
	leaq	-56(%rbp), %rax	#, tmp135
	movl	$0, %edx	#,
	movl	$.LC38, %esi	#,
	movq	%rax, %rdi	# tmp135,
	call	sre_strtok	#
	movq	%rax, -32(%rbp)	# tmp136, featurename
	cmpq	$0, -32(%rbp)	#, featurename
	jne	.L143	#,
	.loc 1 550 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.6536
	jmp	.L154	#
.L143:
	.loc 1 551 0 is_stmt 1
	leaq	-68(%rbp), %rdx	#, tmp137
	leaq	-56(%rbp), %rax	#, tmp138
	movl	$.LC38, %esi	#,
	movq	%rax, %rdi	# tmp138,
	call	sre_strtok	#
	movq	%rax, -24(%rbp)	# tmp139, text
	cmpq	$0, -24(%rbp)	#, text
	jne	.L144	#,
	.loc 1 551 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.6536
	jmp	.L154	#
.L144:
	.loc 1 554 0 is_stmt 1
	movq	-88(%rbp), %rax	# msa, tmp140
	movl	352(%rax), %edx	# msa_13(D)->lastidx, D.6536
	movq	-40(%rbp), %rcx	# seqname, tmp141
	movq	-88(%rbp), %rax	# msa, tmp142
	movq	%rcx, %rsi	# tmp141,
	movq	%rax, %rdi	# tmp142,
	call	MSAGetSeqidx	#
	movl	%eax, -60(%rbp)	# tmp143, seqidx
	.loc 1 555 0
	movq	-88(%rbp), %rax	# msa, tmp144
	movl	-60(%rbp), %edx	# seqidx, tmp145
	movl	%edx, 352(%rax)	# tmp145, msa_13(D)->lastidx
	.loc 1 557 0
	movq	-32(%rbp), %rax	# featurename, tmp146
	movl	$.LC47, %esi	#,
	movq	%rax, %rdi	# tmp146,
	call	strcmp	#
	testl	%eax, %eax	# D.6536
	jne	.L145	#,
	.loc 1 559 0
	movq	-88(%rbp), %rax	# msa, tmp147
	movq	112(%rax), %rax	# msa_13(D)->ss, D.6537
	testq	%rax, %rax	# D.6537
	jne	.L146	#,
	.loc 1 561 0
	movq	-88(%rbp), %rax	# msa, tmp148
	movl	320(%rax), %eax	# msa_13(D)->nseqalloc, D.6536
	cltq
	salq	$3, %rax	#, D.6538
	movq	%rax, %rdx	# D.6538,
	movl	$561, %esi	#,
	movl	$.LC10, %edi	#,
	call	sre_malloc	#
	movq	-88(%rbp), %rdx	# msa, tmp149
	movq	%rax, 112(%rdx)	# D.6539, msa_13(D)->ss
	.loc 1 562 0
	movq	-88(%rbp), %rax	# msa, tmp150
	movl	320(%rax), %eax	# msa_13(D)->nseqalloc, D.6536
	cltq
	salq	$2, %rax	#, D.6538
	movq	%rax, %rdx	# D.6538,
	movl	$562, %esi	#,
	movl	$.LC10, %edi	#,
	call	sre_malloc	#
	movq	-88(%rbp), %rdx	# msa, tmp151
	movq	%rax, 336(%rdx)	# D.6539, msa_13(D)->sslen
	.loc 1 563 0
	movl	$0, -64(%rbp)	#, j
	jmp	.L147	#
.L148:
	.loc 1 565 0 discriminator 2
	movq	-88(%rbp), %rax	# msa, tmp152
	movq	112(%rax), %rax	# msa_13(D)->ss, D.6537
	movl	-64(%rbp), %edx	# j, tmp153
	movslq	%edx, %rdx	# tmp153, D.6538
	salq	$3, %rdx	#, D.6538
	addq	%rdx, %rax	# D.6538, D.6537
	movq	$0, (%rax)	#, *_31
	.loc 1 566 0 discriminator 2
	movq	-88(%rbp), %rax	# msa, tmp154
	movq	336(%rax), %rax	# msa_13(D)->sslen, D.6540
	movl	-64(%rbp), %edx	# j, tmp155
	movslq	%edx, %rdx	# tmp155, D.6538
	salq	$2, %rdx	#, D.6538
	addq	%rdx, %rax	# D.6538, D.6540
	movl	$0, (%rax)	#, *_35
	.loc 1 563 0 discriminator 2
	addl	$1, -64(%rbp)	#, j
.L147:
	.loc 1 563 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# msa, tmp156
	movl	320(%rax), %eax	# msa_13(D)->nseqalloc, D.6536
	cmpl	-64(%rbp), %eax	# j, D.6536
	jg	.L148	#,
.L146:
	.loc 1 569 0 is_stmt 1
	movq	-88(%rbp), %rax	# msa, tmp157
	movq	336(%rax), %rax	# msa_13(D)->sslen, D.6540
	movl	-60(%rbp), %edx	# seqidx, tmp158
	movslq	%edx, %rdx	# tmp158, D.6538
	salq	$2, %rdx	#, D.6538
	leaq	(%rax,%rdx), %rbx	#, D.6540
	movl	-68(%rbp), %ecx	# len, len.6
	movq	-88(%rbp), %rax	# msa, tmp159
	movq	336(%rax), %rax	# msa_13(D)->sslen, D.6540
	movl	-60(%rbp), %edx	# seqidx, tmp160
	movslq	%edx, %rdx	# tmp160, D.6538
	salq	$2, %rdx	#, D.6538
	addq	%rdx, %rax	# D.6538, D.6540
	movl	(%rax), %eax	# *_45, D.6536
	movq	-88(%rbp), %rdx	# msa, tmp161
	movq	112(%rdx), %rdx	# msa_13(D)->ss, D.6537
	movl	-60(%rbp), %esi	# seqidx, tmp162
	movslq	%esi, %rsi	# tmp162, D.6538
	salq	$3, %rsi	#, D.6538
	leaq	(%rdx,%rsi), %rdi	#, D.6537
	movq	-24(%rbp), %rdx	# text, tmp163
	movl	%eax, %esi	# D.6536,
	call	sre_strcat	#
	movl	%eax, (%rbx)	# D.6536, *_40
	jmp	.L149	#
.L145:
	.loc 1 571 0
	movq	-32(%rbp), %rax	# featurename, tmp164
	movl	$.LC48, %esi	#,
	movq	%rax, %rdi	# tmp164,
	call	strcmp	#
	testl	%eax, %eax	# D.6536
	jne	.L150	#,
	.loc 1 573 0
	movq	-88(%rbp), %rax	# msa, tmp165
	movq	120(%rax), %rax	# msa_13(D)->sa, D.6537
	testq	%rax, %rax	# D.6537
	jne	.L151	#,
	.loc 1 575 0
	movq	-88(%rbp), %rax	# msa, tmp166
	movl	320(%rax), %eax	# msa_13(D)->nseqalloc, D.6536
	cltq
	salq	$3, %rax	#, D.6538
	movq	%rax, %rdx	# D.6538,
	movl	$575, %esi	#,
	movl	$.LC10, %edi	#,
	call	sre_malloc	#
	movq	-88(%rbp), %rdx	# msa, tmp167
	movq	%rax, 120(%rdx)	# D.6539, msa_13(D)->sa
	.loc 1 576 0
	movq	-88(%rbp), %rax	# msa, tmp168
	movl	320(%rax), %eax	# msa_13(D)->nseqalloc, D.6536
	cltq
	salq	$2, %rax	#, D.6538
	movq	%rax, %rdx	# D.6538,
	movl	$576, %esi	#,
	movl	$.LC10, %edi	#,
	call	sre_malloc	#
	movq	-88(%rbp), %rdx	# msa, tmp169
	movq	%rax, 344(%rdx)	# D.6539, msa_13(D)->salen
	.loc 1 577 0
	movl	$0, -64(%rbp)	#, j
	jmp	.L152	#
.L153:
	.loc 1 579 0 discriminator 2
	movq	-88(%rbp), %rax	# msa, tmp170
	movq	120(%rax), %rax	# msa_13(D)->sa, D.6537
	movl	-64(%rbp), %edx	# j, tmp171
	movslq	%edx, %rdx	# tmp171, D.6538
	salq	$3, %rdx	#, D.6538
	addq	%rdx, %rax	# D.6538, D.6537
	movq	$0, (%rax)	#, *_67
	.loc 1 580 0 discriminator 2
	movq	-88(%rbp), %rax	# msa, tmp172
	movq	344(%rax), %rax	# msa_13(D)->salen, D.6540
	movl	-64(%rbp), %edx	# j, tmp173
	movslq	%edx, %rdx	# tmp173, D.6538
	salq	$2, %rdx	#, D.6538
	addq	%rdx, %rax	# D.6538, D.6540
	movl	$0, (%rax)	#, *_71
	.loc 1 577 0 discriminator 2
	addl	$1, -64(%rbp)	#, j
.L152:
	.loc 1 577 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# msa, tmp174
	movl	320(%rax), %eax	# msa_13(D)->nseqalloc, D.6536
	cmpl	-64(%rbp), %eax	# j, D.6536
	jg	.L153	#,
.L151:
	.loc 1 583 0 is_stmt 1
	movq	-88(%rbp), %rax	# msa, tmp175
	movq	344(%rax), %rax	# msa_13(D)->salen, D.6540
	movl	-60(%rbp), %edx	# seqidx, tmp176
	movslq	%edx, %rdx	# tmp176, D.6538
	salq	$2, %rdx	#, D.6538
	leaq	(%rax,%rdx), %rbx	#, D.6540
	movl	-68(%rbp), %ecx	# len, len.7
	movq	-88(%rbp), %rax	# msa, tmp177
	movq	344(%rax), %rax	# msa_13(D)->salen, D.6540
	movl	-60(%rbp), %edx	# seqidx, tmp178
	movslq	%edx, %rdx	# tmp178, D.6538
	salq	$2, %rdx	#, D.6538
	addq	%rdx, %rax	# D.6538, D.6540
	movl	(%rax), %eax	# *_81, D.6536
	movq	-88(%rbp), %rdx	# msa, tmp179
	movq	120(%rdx), %rdx	# msa_13(D)->sa, D.6537
	movl	-60(%rbp), %esi	# seqidx, tmp180
	movslq	%esi, %rsi	# tmp180, D.6538
	salq	$3, %rsi	#, D.6538
	leaq	(%rdx,%rsi), %rdi	#, D.6537
	movq	-24(%rbp), %rdx	# text, tmp181
	movl	%eax, %esi	# D.6536,
	call	sre_strcat	#
	movl	%eax, (%rbx)	# D.6536, *_76
	jmp	.L149	#
.L150:
	.loc 1 586 0
	movq	-24(%rbp), %rcx	# text, tmp182
	movl	-60(%rbp), %edx	# seqidx, tmp183
	movq	-32(%rbp), %rsi	# featurename, tmp184
	movq	-88(%rbp), %rax	# msa, tmp185
	movq	%rax, %rdi	# tmp185,
	call	MSAAppendGR	#
.L149:
	.loc 1 588 0
	movl	$1, %eax	#, D.6536
.L154:
	.loc 1 589 0
	addq	$88, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	parse_gr, .-parse_gr
	.type	parse_comment, @function
parse_comment:
.LFB10:
	.loc 1 596 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# msa, msa
	movq	%rsi, -32(%rbp)	# buf, buf
	.loc 1 600 0
	movq	-32(%rbp), %rax	# buf, tmp65
	addq	$1, %rax	#, s.8
	movq	%rax, -16(%rbp)	# s.8, s
	.loc 1 601 0
	movq	-16(%rbp), %rax	# s, s.9
	movzbl	(%rax), %eax	# *s.9_5, D.6544
	cmpb	$10, %al	#, D.6544
	jne	.L156	#,
	.loc 1 601 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# s, s.10
	movb	$0, (%rax)	#, *s.10_7
	movq	-16(%rbp), %rax	# s, tmp66
	movq	%rax, -8(%rbp)	# tmp66, comment
	jmp	.L157	#
.L156:
	.loc 1 602 0 is_stmt 1
	leaq	-16(%rbp), %rax	#, tmp67
	movl	$0, %edx	#,
	movl	$.LC28, %esi	#,
	movq	%rax, %rdi	# tmp67,
	call	sre_strtok	#
	movq	%rax, -8(%rbp)	# tmp68, comment
	cmpq	$0, -8(%rbp)	#, comment
	jne	.L157	#,
	.loc 1 602 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.6543
	jmp	.L159	#
.L157:
	.loc 1 604 0 is_stmt 1
	movq	-8(%rbp), %rdx	# comment, tmp69
	movq	-24(%rbp), %rax	# msa, tmp70
	movq	%rdx, %rsi	# tmp69,
	movq	%rax, %rdi	# tmp70,
	call	MSAAddComment	#
	.loc 1 605 0
	movl	$1, %eax	#, D.6543
.L159:
	.loc 1 606 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	parse_comment, .-parse_comment
	.type	parse_sequence, @function
parse_sequence:
.LFB11:
	.loc 1 610 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# msa, msa
	movq	%rsi, -64(%rbp)	# buf, buf
	.loc 1 617 0
	movq	-64(%rbp), %rax	# buf, tmp78
	movq	%rax, -40(%rbp)	# tmp78, s
	.loc 1 618 0
	leaq	-40(%rbp), %rax	#, tmp79
	movl	$0, %edx	#,
	movl	$.LC38, %esi	#,
	movq	%rax, %rdi	# tmp79,
	call	sre_strtok	#
	movq	%rax, -32(%rbp)	# tmp80, seqname
	cmpq	$0, -32(%rbp)	#, seqname
	jne	.L161	#,
	.loc 1 618 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.6545
	jmp	.L164	#
.L161:
	.loc 1 619 0 is_stmt 1
	leaq	-48(%rbp), %rdx	#, tmp81
	leaq	-40(%rbp), %rax	#, tmp82
	movl	$.LC38, %esi	#,
	movq	%rax, %rdi	# tmp82,
	call	sre_strtok	#
	movq	%rax, -24(%rbp)	# tmp83, text
	cmpq	$0, -24(%rbp)	#, text
	jne	.L163	#,
	.loc 1 619 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.6545
	jmp	.L164	#
.L163:
	.loc 1 622 0 is_stmt 1
	movq	-56(%rbp), %rax	# msa, tmp84
	movl	352(%rax), %eax	# msa_7(D)->lastidx, D.6545
	leal	1(%rax), %edx	#, D.6545
	movq	-32(%rbp), %rcx	# seqname, tmp85
	movq	-56(%rbp), %rax	# msa, tmp86
	movq	%rcx, %rsi	# tmp85,
	movq	%rax, %rdi	# tmp86,
	call	MSAGetSeqidx	#
	movl	%eax, -44(%rbp)	# tmp87, seqidx
	.loc 1 623 0
	movq	-56(%rbp), %rax	# msa, tmp88
	movl	-44(%rbp), %edx	# seqidx, tmp89
	movl	%edx, 352(%rax)	# tmp89, msa_7(D)->lastidx
	.loc 1 625 0
	movq	-56(%rbp), %rax	# msa, tmp90
	movq	328(%rax), %rax	# msa_7(D)->sqlen, D.6546
	movl	-44(%rbp), %edx	# seqidx, tmp91
	movslq	%edx, %rdx	# tmp91, D.6547
	salq	$2, %rdx	#, D.6547
	leaq	(%rax,%rdx), %rbx	#, D.6546
	movl	-48(%rbp), %ecx	# len, len.11
	movq	-56(%rbp), %rax	# msa, tmp92
	movq	328(%rax), %rax	# msa_7(D)->sqlen, D.6546
	movl	-44(%rbp), %edx	# seqidx, tmp93
	movslq	%edx, %rdx	# tmp93, D.6547
	salq	$2, %rdx	#, D.6547
	addq	%rdx, %rax	# D.6547, D.6546
	movl	(%rax), %eax	# *_19, D.6545
	movq	-56(%rbp), %rdx	# msa, tmp94
	movq	(%rdx), %rdx	# msa_7(D)->aseq, D.6548
	movl	-44(%rbp), %esi	# seqidx, tmp95
	movslq	%esi, %rsi	# tmp95, D.6547
	salq	$3, %rsi	#, D.6547
	leaq	(%rdx,%rsi), %rdi	#, D.6548
	movq	-24(%rbp), %rdx	# text, tmp96
	movl	%eax, %esi	# D.6545,
	call	sre_strcat	#
	movl	%eax, (%rbx)	# D.6545, *_14
	.loc 1 626 0
	movl	$1, %eax	#, D.6545
.L164:
	.loc 1 627 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	parse_sequence, .-parse_sequence
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "squid.h"
	.file 7 "gki.h"
	.file 8 "ssi.h"
	.file 9 "msa.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xcaf
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF140
	.byte	0x1
	.long	.LASF141
	.long	.LASF142
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
	.long	.LASF143
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
	.uleb128 0x2
	.long	.LASF51
	.byte	0x6
	.byte	0x28
	.long	0x46
	.uleb128 0x2
	.long	.LASF52
	.byte	0x6
	.byte	0x29
	.long	0x4d
	.uleb128 0x2
	.long	.LASF53
	.byte	0x6
	.byte	0x2a
	.long	0x2ad
	.uleb128 0x7
	.long	.LASF54
	.byte	0x18
	.byte	0x7
	.byte	0x1a
	.long	0x306
	.uleb128 0xd
	.string	"key"
	.byte	0x7
	.byte	0x1b
	.long	0x8f
	.byte	0
	.uleb128 0xd
	.string	"idx"
	.byte	0x7
	.byte	0x1c
	.long	0x62
	.byte	0x8
	.uleb128 0xd
	.string	"nxt"
	.byte	0x7
	.byte	0x1d
	.long	0x306
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2d5
	.uleb128 0xe
	.byte	0x18
	.byte	0x7
	.byte	0x24
	.long	0x345
	.uleb128 0x8
	.long	.LASF55
	.byte	0x7
	.byte	0x25
	.long	0x345
	.byte	0
	.uleb128 0x8
	.long	.LASF56
	.byte	0x7
	.byte	0x27
	.long	0x62
	.byte	0x8
	.uleb128 0x8
	.long	.LASF57
	.byte	0x7
	.byte	0x28
	.long	0x62
	.byte	0xc
	.uleb128 0x8
	.long	.LASF58
	.byte	0x7
	.byte	0x29
	.long	0x62
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x306
	.uleb128 0xf
	.string	"GKI"
	.byte	0x7
	.byte	0x2a
	.long	0x30c
	.uleb128 0x10
	.byte	0x8
	.byte	0x8
	.byte	0x25
	.long	0x375
	.uleb128 0x11
	.string	"i32"
	.byte	0x8
	.byte	0x26
	.long	0x2bf
	.uleb128 0x11
	.string	"i64"
	.byte	0x8
	.byte	0x27
	.long	0x2ca
	.byte	0
	.uleb128 0x7
	.long	.LASF59
	.byte	0x10
	.byte	0x8
	.byte	0x23
	.long	0x39a
	.uleb128 0x8
	.long	.LASF60
	.byte	0x8
	.byte	0x24
	.long	0x95
	.byte	0
	.uleb128 0xd
	.string	"off"
	.byte	0x8
	.byte	0x28
	.long	0x356
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.long	.LASF61
	.byte	0x8
	.byte	0x2a
	.long	0x375
	.uleb128 0x7
	.long	.LASF62
	.byte	0x90
	.byte	0x8
	.byte	0x31
	.long	0x4ad
	.uleb128 0xd
	.string	"fp"
	.byte	0x8
	.byte	0x32
	.long	0x4ad
	.byte	0
	.uleb128 0x8
	.long	.LASF63
	.byte	0x8
	.byte	0x33
	.long	0x2bf
	.byte	0x8
	.uleb128 0x8
	.long	.LASF64
	.byte	0x8
	.byte	0x34
	.long	0x2b4
	.byte	0xc
	.uleb128 0x8
	.long	.LASF65
	.byte	0x8
	.byte	0x35
	.long	0x2bf
	.byte	0x10
	.uleb128 0x8
	.long	.LASF66
	.byte	0x8
	.byte	0x36
	.long	0x2bf
	.byte	0x14
	.uleb128 0x8
	.long	.LASF67
	.byte	0x8
	.byte	0x37
	.long	0x2bf
	.byte	0x18
	.uleb128 0x8
	.long	.LASF68
	.byte	0x8
	.byte	0x38
	.long	0x2bf
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF69
	.byte	0x8
	.byte	0x39
	.long	0x2bf
	.byte	0x20
	.uleb128 0x8
	.long	.LASF70
	.byte	0x8
	.byte	0x3a
	.long	0x2bf
	.byte	0x24
	.uleb128 0x8
	.long	.LASF71
	.byte	0x8
	.byte	0x3b
	.long	0x2bf
	.byte	0x28
	.uleb128 0x8
	.long	.LASF72
	.byte	0x8
	.byte	0x3c
	.long	0x2bf
	.byte	0x2c
	.uleb128 0x8
	.long	.LASF73
	.byte	0x8
	.byte	0x3d
	.long	0x39a
	.byte	0x30
	.uleb128 0x8
	.long	.LASF74
	.byte	0x8
	.byte	0x3e
	.long	0x39a
	.byte	0x40
	.uleb128 0x8
	.long	.LASF75
	.byte	0x8
	.byte	0x3f
	.long	0x39a
	.byte	0x50
	.uleb128 0x8
	.long	.LASF76
	.byte	0x8
	.byte	0x41
	.long	0x95
	.byte	0x60
	.uleb128 0x8
	.long	.LASF77
	.byte	0x8
	.byte	0x42
	.long	0x95
	.byte	0x61
	.uleb128 0x8
	.long	.LASF78
	.byte	0x8
	.byte	0x46
	.long	0x4b3
	.byte	0x68
	.uleb128 0x8
	.long	.LASF79
	.byte	0x8
	.byte	0x47
	.long	0x4b9
	.byte	0x70
	.uleb128 0x8
	.long	.LASF80
	.byte	0x8
	.byte	0x48
	.long	0x4b9
	.byte	0x78
	.uleb128 0xd
	.string	"bpl"
	.byte	0x8
	.byte	0x49
	.long	0x4b9
	.byte	0x80
	.uleb128 0xd
	.string	"rpl"
	.byte	0x8
	.byte	0x4a
	.long	0x4b9
	.byte	0x88
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x9c
	.uleb128 0x6
	.byte	0x8
	.long	0x8f
	.uleb128 0x6
	.byte	0x8
	.long	0x2bf
	.uleb128 0x2
	.long	.LASF81
	.byte	0x8
	.byte	0x4c
	.long	0x3a5
	.uleb128 0x6
	.byte	0x8
	.long	0x292
	.uleb128 0x12
	.long	.LASF82
	.value	0x168
	.byte	0x9
	.byte	0x70
	.long	0x70c
	.uleb128 0x8
	.long	.LASF83
	.byte	0x9
	.byte	0x73
	.long	0x4b3
	.byte	0
	.uleb128 0x8
	.long	.LASF84
	.byte	0x9
	.byte	0x74
	.long	0x4b3
	.byte	0x8
	.uleb128 0xd
	.string	"wgt"
	.byte	0x9
	.byte	0x75
	.long	0x4ca
	.byte	0x10
	.uleb128 0x8
	.long	.LASF85
	.byte	0x9
	.byte	0x76
	.long	0x62
	.byte	0x18
	.uleb128 0x8
	.long	.LASF86
	.byte	0x9
	.byte	0x77
	.long	0x62
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF63
	.byte	0x9
	.byte	0x7b
	.long	0x62
	.byte	0x20
	.uleb128 0x8
	.long	.LASF87
	.byte	0x9
	.byte	0x7c
	.long	0x62
	.byte	0x24
	.uleb128 0x8
	.long	.LASF88
	.byte	0x9
	.byte	0x7d
	.long	0x8f
	.byte	0x28
	.uleb128 0x8
	.long	.LASF89
	.byte	0x9
	.byte	0x7e
	.long	0x8f
	.byte	0x30
	.uleb128 0xd
	.string	"acc"
	.byte	0x9
	.byte	0x7f
	.long	0x8f
	.byte	0x38
	.uleb128 0xd
	.string	"au"
	.byte	0x9
	.byte	0x80
	.long	0x8f
	.byte	0x40
	.uleb128 0x8
	.long	.LASF90
	.byte	0x9
	.byte	0x81
	.long	0x8f
	.byte	0x48
	.uleb128 0x8
	.long	.LASF91
	.byte	0x9
	.byte	0x82
	.long	0x8f
	.byte	0x50
	.uleb128 0xd
	.string	"rf"
	.byte	0x9
	.byte	0x83
	.long	0x8f
	.byte	0x58
	.uleb128 0x8
	.long	.LASF92
	.byte	0x9
	.byte	0x84
	.long	0x4b3
	.byte	0x60
	.uleb128 0x8
	.long	.LASF93
	.byte	0x9
	.byte	0x85
	.long	0x4b3
	.byte	0x68
	.uleb128 0xd
	.string	"ss"
	.byte	0x9
	.byte	0x86
	.long	0x4b3
	.byte	0x70
	.uleb128 0xd
	.string	"sa"
	.byte	0x9
	.byte	0x87
	.long	0x4b3
	.byte	0x78
	.uleb128 0x8
	.long	.LASF94
	.byte	0x9
	.byte	0x88
	.long	0x70c
	.byte	0x80
	.uleb128 0x8
	.long	.LASF95
	.byte	0x9
	.byte	0x89
	.long	0x71c
	.byte	0x98
	.uleb128 0x8
	.long	.LASF96
	.byte	0x9
	.byte	0x90
	.long	0x4b3
	.byte	0xb0
	.uleb128 0x8
	.long	.LASF97
	.byte	0x9
	.byte	0x91
	.long	0x62
	.byte	0xb8
	.uleb128 0x8
	.long	.LASF98
	.byte	0x9
	.byte	0x92
	.long	0x62
	.byte	0xbc
	.uleb128 0x8
	.long	.LASF99
	.byte	0x9
	.byte	0x94
	.long	0x4b3
	.byte	0xc0
	.uleb128 0xd
	.string	"gf"
	.byte	0x9
	.byte	0x95
	.long	0x4b3
	.byte	0xc8
	.uleb128 0xd
	.string	"ngf"
	.byte	0x9
	.byte	0x96
	.long	0x62
	.byte	0xd0
	.uleb128 0x8
	.long	.LASF100
	.byte	0x9
	.byte	0x97
	.long	0x62
	.byte	0xd4
	.uleb128 0x8
	.long	.LASF101
	.byte	0x9
	.byte	0x99
	.long	0x4b3
	.byte	0xd8
	.uleb128 0xd
	.string	"gs"
	.byte	0x9
	.byte	0x9a
	.long	0x72c
	.byte	0xe0
	.uleb128 0x8
	.long	.LASF102
	.byte	0x9
	.byte	0x9b
	.long	0x732
	.byte	0xe8
	.uleb128 0xd
	.string	"ngs"
	.byte	0x9
	.byte	0x9c
	.long	0x62
	.byte	0xf0
	.uleb128 0x8
	.long	.LASF103
	.byte	0x9
	.byte	0x9e
	.long	0x4b3
	.byte	0xf8
	.uleb128 0x13
	.string	"gc"
	.byte	0x9
	.byte	0x9f
	.long	0x4b3
	.value	0x100
	.uleb128 0x14
	.long	.LASF104
	.byte	0x9
	.byte	0xa0
	.long	0x732
	.value	0x108
	.uleb128 0x13
	.string	"ngc"
	.byte	0x9
	.byte	0xa1
	.long	0x62
	.value	0x110
	.uleb128 0x14
	.long	.LASF105
	.byte	0x9
	.byte	0xa3
	.long	0x4b3
	.value	0x118
	.uleb128 0x13
	.string	"gr"
	.byte	0x9
	.byte	0xa4
	.long	0x72c
	.value	0x120
	.uleb128 0x14
	.long	.LASF106
	.byte	0x9
	.byte	0xa5
	.long	0x732
	.value	0x128
	.uleb128 0x13
	.string	"ngr"
	.byte	0x9
	.byte	0xa6
	.long	0x62
	.value	0x130
	.uleb128 0x14
	.long	.LASF107
	.byte	0x9
	.byte	0xaa
	.long	0x732
	.value	0x138
	.uleb128 0x14
	.long	.LASF108
	.byte	0x9
	.byte	0xab
	.long	0x62
	.value	0x140
	.uleb128 0x14
	.long	.LASF109
	.byte	0x9
	.byte	0xac
	.long	0x62
	.value	0x144
	.uleb128 0x14
	.long	.LASF110
	.byte	0x9
	.byte	0xad
	.long	0x2a0
	.value	0x148
	.uleb128 0x14
	.long	.LASF111
	.byte	0x9
	.byte	0xae
	.long	0x2a0
	.value	0x150
	.uleb128 0x14
	.long	.LASF112
	.byte	0x9
	.byte	0xaf
	.long	0x2a0
	.value	0x158
	.uleb128 0x14
	.long	.LASF113
	.byte	0x9
	.byte	0xb0
	.long	0x62
	.value	0x160
	.byte	0
	.uleb128 0xb
	.long	0x292
	.long	0x71c
	.uleb128 0xc
	.long	0x86
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.long	0x62
	.long	0x72c
	.uleb128 0xc
	.long	0x86
	.byte	0x5
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x4b3
	.uleb128 0x6
	.byte	0x8
	.long	0x34b
	.uleb128 0xf
	.string	"MSA"
	.byte	0x9
	.byte	0xb1
	.long	0x4d0
	.uleb128 0x7
	.long	.LASF114
	.byte	0x40
	.byte	0x9
	.byte	0xba
	.long	0x7ba
	.uleb128 0xd
	.string	"f"
	.byte	0x9
	.byte	0xbb
	.long	0x4ad
	.byte	0
	.uleb128 0x8
	.long	.LASF115
	.byte	0x9
	.byte	0xbc
	.long	0x8f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF116
	.byte	0x9
	.byte	0xbd
	.long	0x62
	.byte	0x10
	.uleb128 0xd
	.string	"buf"
	.byte	0x9
	.byte	0xbf
	.long	0x8f
	.byte	0x18
	.uleb128 0x8
	.long	.LASF117
	.byte	0x9
	.byte	0xc0
	.long	0x62
	.byte	0x20
	.uleb128 0xd
	.string	"ssi"
	.byte	0x9
	.byte	0xc2
	.long	0x7ba
	.byte	0x28
	.uleb128 0x8
	.long	.LASF118
	.byte	0x9
	.byte	0xc4
	.long	0x62
	.byte	0x30
	.uleb128 0x8
	.long	.LASF119
	.byte	0x9
	.byte	0xc5
	.long	0x62
	.byte	0x34
	.uleb128 0x8
	.long	.LASF120
	.byte	0x9
	.byte	0xc6
	.long	0x62
	.byte	0x38
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x4bf
	.uleb128 0x2
	.long	.LASF121
	.byte	0x9
	.byte	0xc7
	.long	0x743
	.uleb128 0x6
	.byte	0x8
	.long	0x738
	.uleb128 0x6
	.byte	0x8
	.long	0x7c0
	.uleb128 0x15
	.long	.LASF144
	.byte	0x1
	.byte	0x5e
	.long	0x7cb
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x82f
	.uleb128 0x16
	.string	"afp"
	.byte	0x1
	.byte	0x5e
	.long	0x7d1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x17
	.string	"msa"
	.byte	0x1
	.byte	0x60
	.long	0x7cb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x17
	.string	"s"
	.byte	0x1
	.byte	0x61
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x18
	.long	.LASF122
	.byte	0x1
	.byte	0x62
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x19
	.long	.LASF123
	.byte	0x1
	.byte	0xb1
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x868
	.uleb128 0x16
	.string	"fp"
	.byte	0x1
	.byte	0xb1
	.long	0x4ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x16
	.string	"msa"
	.byte	0x1
	.byte	0xb1
	.long	0x7cb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x19
	.long	.LASF124
	.byte	0x1
	.byte	0xc3
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x8a1
	.uleb128 0x16
	.string	"fp"
	.byte	0x1
	.byte	0xc3
	.long	0x4ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x16
	.string	"msa"
	.byte	0x1
	.byte	0xc3
	.long	0x7cb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1a
	.long	.LASF138
	.byte	0x1
	.byte	0xd8
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x972
	.uleb128 0x16
	.string	"fp"
	.byte	0x1
	.byte	0xd8
	.long	0x4ad
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x16
	.string	"msa"
	.byte	0x1
	.byte	0xd8
	.long	0x7cb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x16
	.string	"cpl"
	.byte	0x1
	.byte	0xd8
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.byte	0xda
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x17
	.string	"j"
	.byte	0x1
	.byte	0xda
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x17
	.string	"len"
	.byte	0x1
	.byte	0xdb
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x18
	.long	.LASF125
	.byte	0x1
	.byte	0xdc
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x18
	.long	.LASF126
	.byte	0x1
	.byte	0xdd
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x18
	.long	.LASF127
	.byte	0x1
	.byte	0xde
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x17
	.string	"buf"
	.byte	0x1
	.byte	0xdf
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x18
	.long	.LASF128
	.byte	0x1
	.byte	0xe0
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.string	"s"
	.byte	0x1
	.byte	0xe1
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.string	"tok"
	.byte	0x1
	.byte	0xe1
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1b
	.long	.LASF131
	.byte	0x1
	.value	0x18f
	.long	0x62
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x9ec
	.uleb128 0x1c
	.string	"msa"
	.byte	0x1
	.value	0x18f
	.long	0x7cb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1c
	.string	"buf"
	.byte	0x1
	.value	0x18f
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1d
	.string	"gf"
	.byte	0x1
	.value	0x191
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1e
	.long	.LASF129
	.byte	0x1
	.value	0x192
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.long	.LASF130
	.byte	0x1
	.value	0x193
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.string	"s"
	.byte	0x1
	.value	0x194
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x1b
	.long	.LASF132
	.byte	0x1
	.value	0x1d0
	.long	0x62
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0xa88
	.uleb128 0x1c
	.string	"msa"
	.byte	0x1
	.value	0x1d0
	.long	0x7cb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1c
	.string	"buf"
	.byte	0x1
	.value	0x1d0
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1d
	.string	"gs"
	.byte	0x1
	.value	0x1d2
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1e
	.long	.LASF133
	.byte	0x1
	.value	0x1d3
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.long	.LASF129
	.byte	0x1
	.value	0x1d4
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1e
	.long	.LASF130
	.byte	0x1
	.value	0x1d5
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1e
	.long	.LASF134
	.byte	0x1
	.value	0x1d6
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1d
	.string	"s"
	.byte	0x1
	.value	0x1d7
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x1b
	.long	.LASF135
	.byte	0x1
	.value	0x1fb
	.long	0x62
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0xb13
	.uleb128 0x1c
	.string	"msa"
	.byte	0x1
	.value	0x1fb
	.long	0x7cb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1c
	.string	"buf"
	.byte	0x1
	.value	0x1fb
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1d
	.string	"gc"
	.byte	0x1
	.value	0x1fd
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1e
	.long	.LASF129
	.byte	0x1
	.value	0x1fe
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1e
	.long	.LASF130
	.byte	0x1
	.value	0x1ff
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.string	"s"
	.byte	0x1
	.value	0x200
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1d
	.string	"len"
	.byte	0x1
	.value	0x201
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x1b
	.long	.LASF136
	.byte	0x1
	.value	0x218
	.long	0x62
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0xbcd
	.uleb128 0x1c
	.string	"msa"
	.byte	0x1
	.value	0x218
	.long	0x7cb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1c
	.string	"buf"
	.byte	0x1
	.value	0x218
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x1d
	.string	"gr"
	.byte	0x1
	.value	0x21a
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1e
	.long	.LASF133
	.byte	0x1
	.value	0x21b
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1e
	.long	.LASF129
	.byte	0x1
	.value	0x21c
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.long	.LASF130
	.byte	0x1
	.value	0x21d
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1e
	.long	.LASF134
	.byte	0x1
	.value	0x21e
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x1d
	.string	"len"
	.byte	0x1
	.value	0x21f
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x1d
	.string	"j"
	.byte	0x1
	.value	0x220
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1d
	.string	"s"
	.byte	0x1
	.value	0x221
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x1b
	.long	.LASF137
	.byte	0x1
	.value	0x253
	.long	0x62
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0xc2a
	.uleb128 0x1c
	.string	"msa"
	.byte	0x1
	.value	0x253
	.long	0x7cb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1c
	.string	"buf"
	.byte	0x1
	.value	0x253
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1d
	.string	"s"
	.byte	0x1
	.value	0x255
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1e
	.long	.LASF96
	.byte	0x1
	.value	0x256
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1f
	.long	.LASF139
	.byte	0x1
	.value	0x261
	.long	0x62
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1c
	.string	"msa"
	.byte	0x1
	.value	0x261
	.long	0x7cb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1c
	.string	"buf"
	.byte	0x1
	.value	0x261
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1d
	.string	"s"
	.byte	0x1
	.value	0x263
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1e
	.long	.LASF133
	.byte	0x1
	.value	0x264
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.long	.LASF130
	.byte	0x1
	.value	0x265
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1e
	.long	.LASF134
	.byte	0x1
	.value	0x266
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1d
	.string	"len"
	.byte	0x1
	.value	0x267
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
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
.LASF14:
	.string	"_IO_read_ptr"
.LASF121:
	.string	"MSAFILE"
.LASF26:
	.string	"_chain"
.LASF7:
	.string	"size_t"
.LASF52:
	.string	"sqd_uint32"
.LASF75:
	.string	"soffset"
.LASF32:
	.string	"_shortbuf"
.LASF95:
	.string	"cutoff_is_set"
.LASF87:
	.string	"type"
.LASF93:
	.string	"sqdesc"
.LASF103:
	.string	"gc_tag"
.LASF100:
	.string	"alloc_ngf"
.LASF86:
	.string	"nseq"
.LASF50:
	.string	"long long unsigned int"
.LASF129:
	.string	"featurename"
.LASF69:
	.string	"slen"
.LASF127:
	.string	"markupwidth"
.LASF68:
	.string	"plen"
.LASF81:
	.string	"SSIFILE"
.LASF101:
	.string	"gs_tag"
.LASF66:
	.string	"nsecondary"
.LASF4:
	.string	"signed char"
.LASF70:
	.string	"frecsize"
.LASF27:
	.string	"_fileno"
.LASF15:
	.string	"_IO_read_end"
.LASF143:
	.string	"_IO_lock_t"
.LASF6:
	.string	"long int"
.LASF13:
	.string	"_flags"
.LASF98:
	.string	"alloc_ncomment"
.LASF56:
	.string	"primelevel"
.LASF49:
	.string	"long long int"
.LASF48:
	.string	"double"
.LASF29:
	.string	"_old_offset"
.LASF34:
	.string	"_offset"
.LASF109:
	.string	"nseqlump"
.LASF92:
	.string	"sqacc"
.LASF74:
	.string	"poffset"
.LASF82:
	.string	"msa_struct"
.LASF43:
	.string	"_IO_marker"
.LASF77:
	.string	"smode"
.LASF3:
	.string	"unsigned int"
.LASF112:
	.string	"salen"
.LASF113:
	.string	"lastidx"
.LASF62:
	.string	"ssifile_s"
.LASF0:
	.string	"long unsigned int"
.LASF111:
	.string	"sslen"
.LASF18:
	.string	"_IO_write_ptr"
.LASF88:
	.string	"name"
.LASF144:
	.string	"ReadStockholm"
.LASF135:
	.string	"parse_gc"
.LASF45:
	.string	"_sbuf"
.LASF131:
	.string	"parse_gf"
.LASF114:
	.string	"msafile_struct"
.LASF2:
	.string	"short unsigned int"
.LASF46:
	.string	"_pos"
.LASF136:
	.string	"parse_gr"
.LASF132:
	.string	"parse_gs"
.LASF22:
	.string	"_IO_save_base"
.LASF67:
	.string	"flen"
.LASF53:
	.string	"sqd_uint64"
.LASF125:
	.string	"namewidth"
.LASF33:
	.string	"_lock"
.LASF28:
	.string	"_flags2"
.LASF134:
	.string	"seqidx"
.LASF115:
	.string	"fname"
.LASF90:
	.string	"ss_cons"
.LASF104:
	.string	"gc_idx"
.LASF10:
	.string	"sizetype"
.LASF119:
	.string	"do_stdin"
.LASF105:
	.string	"gr_tag"
.LASF83:
	.string	"aseq"
.LASF78:
	.string	"filename"
.LASF126:
	.string	"typewidth"
.LASF89:
	.string	"desc"
.LASF19:
	.string	"_IO_write_end"
.LASF73:
	.string	"foffset"
.LASF138:
	.string	"actually_write_stockholm"
.LASF102:
	.string	"gs_idx"
.LASF42:
	.string	"_IO_FILE"
.LASF80:
	.string	"fileflags"
.LASF108:
	.string	"nseqalloc"
.LASF110:
	.string	"sqlen"
.LASF40:
	.string	"_mode"
.LASF47:
	.string	"float"
.LASF118:
	.string	"do_gzip"
.LASF25:
	.string	"_markers"
.LASF64:
	.string	"nfiles"
.LASF116:
	.string	"linenumber"
.LASF99:
	.string	"gf_tag"
.LASF141:
	.string	"stockholm.c"
.LASF1:
	.string	"unsigned char"
.LASF96:
	.string	"comment"
.LASF21:
	.string	"_IO_buf_end"
.LASF65:
	.string	"nprimary"
.LASF5:
	.string	"short int"
.LASF58:
	.string	"nkeys"
.LASF55:
	.string	"table"
.LASF124:
	.string	"WriteStockholmOneBlock"
.LASF31:
	.string	"_vtable_offset"
.LASF51:
	.string	"sqd_uint16"
.LASF12:
	.string	"FILE"
.LASF117:
	.string	"buflen"
.LASF120:
	.string	"format"
.LASF128:
	.string	"currpos"
.LASF71:
	.string	"precsize"
.LASF76:
	.string	"imode"
.LASF11:
	.string	"char"
.LASF91:
	.string	"sa_cons"
.LASF60:
	.string	"mode"
.LASF130:
	.string	"text"
.LASF54:
	.string	"gki_elem"
.LASF59:
	.string	"ssioffset_s"
.LASF85:
	.string	"alen"
.LASF107:
	.string	"index"
.LASF79:
	.string	"fileformat"
.LASF44:
	.string	"_next"
.LASF9:
	.string	"__off64_t"
.LASF30:
	.string	"_cur_column"
.LASF16:
	.string	"_IO_read_base"
.LASF24:
	.string	"_IO_save_end"
.LASF72:
	.string	"srecsize"
.LASF97:
	.string	"ncomment"
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
.LASF94:
	.string	"cutoff"
.LASF41:
	.string	"_unused2"
.LASF122:
	.string	"status"
.LASF140:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF23:
	.string	"_IO_backup_base"
.LASF123:
	.string	"WriteStockholm"
.LASF63:
	.string	"flags"
.LASF84:
	.string	"sqname"
.LASF106:
	.string	"gr_idx"
.LASF139:
	.string	"parse_sequence"
.LASF57:
	.string	"nhash"
.LASF142:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/456.hmmer/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF133:
	.string	"seqname"
.LASF137:
	.string	"parse_comment"
.LASF17:
	.string	"_IO_write_base"
.LASF20:
	.string	"_IO_buf_base"
.LASF61:
	.string	"SSIOFFSET"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
