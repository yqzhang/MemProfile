	.file	"spec_main_live_pretend.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -I . -I libutil -imultiarch x86_64-linux-gnu
# -D SPEC_CPU -D NDEBUG -D SPEC_CPU -D HAVE_CONFIG_H -D SPEC_CPU_LP64
# spec_main_live_pretend.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.comm	beams,32000,32
	.section	.rodata
.LC0:
	.string	"r"
.LC1:
	.string	"beams.dat"
.LC2:
	.string	"FATAL_ERROR"
.LC3:
	.string	"spec_main_live_pretend.c"
.LC4:
	.string	"Can't find beams.dat\n"
.LC5:
	.string	"%lg%lg%lg%lg"
.LC6:
	.string	"Not enough beams %d\n"
.LC7:
	.string	"INFO"
.LC8:
	.string	"Processing %d beamsets\n"
	.align 8
.LC9:
	.string	"\nUSAGE: %s <ctlfile> <inrawdir> <argsfile>\n"
.LC10:
	.string	"Unable to read %s\n"
	.align 8
.LC11:
	.string	"Filesize claimed to be %d for %s\n"
	.align 8
.LC12:
	.string	"Can't allocate %d bytes for file %s\n"
	.align 8
.LC13:
	.string	"Can't allocate %d bytes for uttid %s"
.LC14:
	.string	"%s/%s.raw"
.LC15:
	.string	"rb"
	.align 8
.LC16:
	.string	"Only read %d, expected %d in %s\n"
	.align 8
.LC17:
	.string	"%d samples in %s will be decoded in blocks of %d\n"
.LC18:
	.string	"%s%d"
	.align 8
.LC19:
	.string	"Beam= %d, PBeam= %d, WBeam= %d, SVQBeam= %d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB2:
	.file 1 "spec_main_live_pretend.c"
	.loc 1 85 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$201192, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -201172(%rbp)	# argc, argc
	movq	%rsi, -201184(%rbp)	# argv, argv
	.loc 1 85 0
	movq	%fs:40, %rax	#, tmp261
	movq	%rax, -24(%rbp)	# tmp261, D.6159
	xorl	%eax, %eax	# tmp261
	.loc 1 103 0
	movl	$.LC0, %esi	#,
	movl	$.LC1, %edi	#,
	call	fopen	#
	movq	%rax, -201104(%rbp)	# tmp139, beamsfp
	cmpq	$0, -201104(%rbp)	#, beamsfp
	jne	.L2	#,
	.loc 1 104 0
	movl	$.LC2, %edx	#,
	movl	$104, %esi	#,
	movl	$.LC3, %edi	#,
	call	_E__pr_header	#
	movl	$.LC4, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L2:
	.loc 1 106 0
	movl	$0, -201144(%rbp)	#, ib
	.loc 1 107 0
	jmp	.L3	#
.L5:
	.loc 1 113 0
	addl	$1, -201144(%rbp)	#, ib
.L3:
	.loc 1 107 0 discriminator 1
	cmpl	$999, -201144(%rbp)	#, ib
	jg	.L4	#,
	.loc 1 108 0 discriminator 2
	movl	-201144(%rbp), %eax	# ib, tmp141
	cltq
	salq	$5, %rax	#, tmp142
	addq	$24, %rax	#, tmp143
	leaq	beams(%rax), %rdi	#, D.6149
	movl	-201144(%rbp), %eax	# ib, tmp145
	cltq
	salq	$5, %rax	#, tmp146
	addq	$16, %rax	#, tmp147
	leaq	beams(%rax), %rsi	#, D.6149
	movl	-201144(%rbp), %eax	# ib, tmp149
	cltq
	salq	$5, %rax	#, tmp150
	addq	$8, %rax	#, tmp151
	leaq	beams(%rax), %rcx	#, D.6149
	movl	-201144(%rbp), %eax	# ib, tmp153
	cltq
	salq	$5, %rax	#, tmp154
	leaq	beams(%rax), %rdx	#, D.6149
	movq	-201104(%rbp), %rax	# beamsfp, tmp155
	movq	%rdi, %r9	# D.6149,
	movq	%rsi, %r8	# D.6149,
	movl	$.LC5, %esi	#,
	movq	%rax, %rdi	# tmp155,
	movl	$0, %eax	#,
	call	__isoc99_fscanf	#
	.loc 1 107 0 discriminator 2
	cmpl	$-1, %eax	#, D.6150
	jne	.L5	#,
.L4:
	.loc 1 115 0
	movl	-201144(%rbp), %eax	# ib, tmp156
	movl	%eax, -201140(%rbp)	# tmp156, nbeams
	.loc 1 116 0
	cmpl	$0, -201140(%rbp)	#, nbeams
	jg	.L6	#,
	.loc 1 117 0
	movl	$.LC2, %edx	#,
	movl	$117, %esi	#,
	movl	$.LC3, %edi	#,
	call	_E__pr_header	#
	movl	-201140(%rbp), %eax	# nbeams, tmp157
	movl	%eax, %esi	# tmp157,
	movl	$.LC6, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L6:
	.loc 1 119 0
	movq	-201104(%rbp), %rax	# beamsfp, tmp158
	movq	%rax, %rdi	# tmp158,
	call	fclose	#
	.loc 1 120 0
	movl	$.LC7, %edx	#,
	movl	$120, %esi	#,
	movl	$.LC3, %edi	#,
	call	_E__pr_info_header	#
	movl	-201140(%rbp), %eax	# nbeams, tmp159
	movl	%eax, %esi	# tmp159,
	movl	$.LC8, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 124 0
	cmpl	$4, -201172(%rbp)	#, argc
	je	.L7	#,
	.loc 1 125 0
	movq	$0, -201096(%rbp)	#, argsfile
	.loc 1 126 0
	movq	-201096(%rbp), %rax	# argsfile, tmp160
	movq	%rax, %rdi	# tmp160,
	call	parse_args_file	#
	.loc 1 127 0
	movl	$.LC2, %edx	#,
	movl	$127, %esi	#,
	movl	$.LC3, %edi	#,
	call	_E__pr_header	#
	movq	-201184(%rbp), %rax	# argv, tmp161
	movq	(%rax), %rax	# *argv_18(D), D.6151
	movq	%rax, %rsi	# D.6151,
	movl	$.LC9, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L7:
	.loc 1 129 0
	movq	-201184(%rbp), %rax	# argv, tmp162
	movq	8(%rax), %rax	# MEM[(char * *)argv_18(D) + 8B], tmp163
	movq	%rax, -201088(%rbp)	# tmp163, ctlfile
	movq	-201184(%rbp), %rax	# argv, tmp164
	movq	16(%rax), %rax	# MEM[(char * *)argv_18(D) + 16B], tmp165
	movq	%rax, -201080(%rbp)	# tmp165, indir
	movq	-201184(%rbp), %rax	# argv, tmp166
	movq	24(%rax), %rax	# MEM[(char * *)argv_18(D) + 24B], tmp167
	movq	%rax, -201096(%rbp)	# tmp167, argsfile
	.loc 1 130 0
	movl	$2000, -201136(%rbp)	#, blksize
	.loc 1 131 0
	movq	-201088(%rbp), %rax	# ctlfile, tmp168
	movl	$.LC0, %esi	#,
	movq	%rax, %rdi	# tmp168,
	call	fopen	#
	movq	%rax, -201072(%rbp)	# tmp169, fp
	cmpq	$0, -201072(%rbp)	#, fp
	jne	.L8	#,
	.loc 1 132 0
	movl	$.LC2, %edx	#,
	movl	$132, %esi	#,
	movl	$.LC3, %edi	#,
	call	_E__pr_header	#
	movq	-201088(%rbp), %rax	# ctlfile, tmp170
	movq	%rax, %rsi	# tmp170,
	movl	$.LC10, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L8:
	.loc 1 133 0
	movq	-201096(%rbp), %rax	# argsfile, tmp171
	movq	%rax, %rdi	# tmp171,
	call	live_initialize_decoder	#
	.loc 1 137 0
	movl	$0, -201152(%rbp)	#, iutt
	.loc 1 138 0
	jmp	.L9	#
.L17:
	.loc 1 139 0
	movl	-201156(%rbp), %eax	# filesize, filesize.0
	testl	%eax, %eax	# filesize.0
	jle	.L10	#,
	.loc 1 139 0 is_stmt 0 discriminator 1
	movl	-201156(%rbp), %eax	# filesize, filesize.1
	cltq
	andl	$1, %eax	#, D.6152
	testq	%rax, %rax	# D.6152
	je	.L11	#,
.L10:
	.loc 1 140 0 is_stmt 1
	movl	$.LC2, %edx	#,
	movl	$140, %esi	#,
	movl	$.LC3, %edi	#,
	call	_E__pr_header	#
	movl	-201156(%rbp), %eax	# filesize, filesize.2
	leaq	-1056(%rbp), %rdx	#, tmp172
	movl	%eax, %esi	# filesize.2,
	movl	$.LC11, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L11:
	.loc 1 142 0
	movl	-201156(%rbp), %eax	# filesize, filesize.3
	cltq
	shrq	%rax	# D.6152
	movl	%eax, %edx	# D.6152, D.6150
	movl	-201152(%rbp), %eax	# iutt, tmp174
	cltq
	movl	%edx, -201056(%rbp,%rax,4)	# D.6150, uttsize
	.loc 1 143 0
	movl	-201152(%rbp), %eax	# iutt, tmp176
	cltq
	movl	-201056(%rbp,%rax,4), %eax	# uttsize, D.6150
	cltq
	movl	$2, %esi	#,
	movq	%rax, %rdi	# D.6152,
	call	calloc	#
	movq	%rax, %rdx	# tmp177, D.6153
	movl	-201152(%rbp), %eax	# iutt, tmp179
	cltq
	movq	%rdx, -161056(%rbp,%rax,8)	# D.6153, samps
	movl	-201152(%rbp), %eax	# iutt, tmp181
	cltq
	movq	-161056(%rbp,%rax,8), %rax	# samps, D.6154
	testq	%rax, %rax	# D.6154
	jne	.L12	#,
	.loc 1 144 0
	movl	$.LC2, %edx	#,
	movl	$144, %esi	#,
	movl	$.LC3, %edi	#,
	call	_E__pr_header	#
	movl	-201156(%rbp), %eax	# filesize, filesize.4
	leaq	-1056(%rbp), %rdx	#, tmp182
	movl	%eax, %esi	# filesize.4,
	movl	$.LC12, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L12:
	.loc 1 146 0
	leaq	-1056(%rbp), %rax	#, tmp183
	movq	%rax, %rdi	# tmp183,
	call	strlen	#
	addq	$1, %rax	#, D.6152
	movq	%rax, %rdi	# D.6152,
	call	malloc	#
	movq	%rax, %rdx	# tmp184, D.6153
	movl	-201152(%rbp), %eax	# iutt, tmp186
	cltq
	movq	%rdx, -81056(%rbp,%rax,8)	# D.6153, uttid
	movl	-201152(%rbp), %eax	# iutt, tmp188
	cltq
	movq	-81056(%rbp,%rax,8), %rax	# uttid, D.6151
	testq	%rax, %rax	# D.6151
	jne	.L13	#,
	.loc 1 147 0
	movl	$.LC2, %edx	#,
	movl	$147, %esi	#,
	movl	$.LC3, %edi	#,
	call	_E__pr_header	#
	leaq	-1056(%rbp), %rax	#, tmp189
	movq	%rax, %rdi	# tmp189,
	call	strlen	#
	leaq	1(%rax), %rcx	#, D.6152
	leaq	-1056(%rbp), %rax	#, tmp190
	movq	%rax, %rdx	# tmp190,
	movq	%rcx, %rsi	# D.6152,
	movl	$.LC13, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L13:
	.loc 1 149 0
	movl	-201152(%rbp), %eax	# iutt, tmp192
	cltq
	movq	-81056(%rbp,%rax,8), %rax	# uttid, D.6151
	leaq	-1056(%rbp), %rdx	#, tmp193
	movq	%rdx, %rsi	# tmp193,
	movq	%rax, %rdi	# D.6151,
	call	strcpy	#
	.loc 1 150 0
	leaq	-1056(%rbp), %rcx	#, tmp194
	movq	-201080(%rbp), %rdx	# indir, tmp195
	leaq	-544(%rbp), %rax	#, tmp196
	movl	$.LC14, %esi	#,
	movq	%rax, %rdi	# tmp196,
	movl	$0, %eax	#,
	call	sprintf	#
	.loc 1 151 0
	leaq	-544(%rbp), %rax	#, tmp197
	movl	$.LC15, %esi	#,
	movq	%rax, %rdi	# tmp197,
	call	fopen	#
	movq	%rax, -201064(%rbp)	# tmp198, sfp
	cmpq	$0, -201064(%rbp)	#, sfp
	jne	.L14	#,
	.loc 1 152 0
	movl	$.LC2, %edx	#,
	movl	$152, %esi	#,
	movl	$.LC3, %edi	#,
	call	_E__pr_header	#
	leaq	-544(%rbp), %rax	#, tmp199
	movq	%rax, %rsi	# tmp199,
	movl	$.LC10, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L14:
	.loc 1 154 0
	movl	-201152(%rbp), %eax	# iutt, tmp201
	cltq
	movl	-201056(%rbp,%rax,4), %eax	# uttsize, D.6150
	movslq	%eax, %rdx	# D.6150, D.6152
	movl	-201152(%rbp), %eax	# iutt, tmp203
	cltq
	movq	-161056(%rbp,%rax,8), %rax	# samps, D.6154
	movq	-201064(%rbp), %rcx	# sfp, tmp204
	movl	$2, %esi	#,
	movq	%rax, %rdi	# D.6154,
	call	fread	#
	movl	%eax, -201132(%rbp)	# D.6152, nsamp
	.loc 1 155 0
	movl	-201152(%rbp), %eax	# iutt, tmp206
	cltq
	movl	-201056(%rbp,%rax,4), %eax	# uttsize, D.6150
	cmpl	-201132(%rbp), %eax	# nsamp, D.6150
	je	.L15	#,
	.loc 1 156 0
	movl	$.LC2, %edx	#,
	movl	$156, %esi	#,
	movl	$.LC3, %edi	#,
	call	_E__pr_header	#
	movl	-201152(%rbp), %eax	# iutt, tmp208
	cltq
	movl	-201056(%rbp,%rax,4), %edx	# uttsize, D.6150
	leaq	-1056(%rbp), %rcx	#, tmp209
	movl	-201132(%rbp), %eax	# nsamp, tmp210
	movl	%eax, %esi	# tmp210,
	movl	$.LC16, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L15:
	.loc 1 158 0
	movq	stdout(%rip), %rax	# stdout, stdout.5
	movl	-201136(%rbp), %esi	# blksize, tmp211
	leaq	-544(%rbp), %rcx	#, tmp212
	movl	-201132(%rbp), %edx	# nsamp, tmp213
	movl	%esi, %r8d	# tmp211,
	movl	$.LC17, %esi	#,
	movq	%rax, %rdi	# stdout.5,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 160 0
	movq	stdout(%rip), %rax	# stdout, stdout.6
	movq	%rax, %rdi	# stdout.6,
	call	fflush	#
	movq	-201064(%rbp), %rax	# sfp, tmp214
	movq	%rax, %rdi	# tmp214,
	call	fclose	#
	.loc 1 161 0
	addl	$1, -201152(%rbp)	#, iutt
.L9:
	.loc 1 138 0 discriminator 1
	cmpl	$9999, -201152(%rbp)	#, iutt
	jg	.L16	#,
	.loc 1 138 0 is_stmt 0 discriminator 2
	leaq	-201156(%rbp), %rcx	#, tmp215
	leaq	-1056(%rbp), %rdx	#, tmp216
	movq	-201072(%rbp), %rax	# fp, tmp217
	movl	$.LC18, %esi	#,
	movq	%rax, %rdi	# tmp217,
	movl	$0, %eax	#,
	call	__isoc99_fscanf	#
	cmpl	$-1, %eax	#, D.6150
	jne	.L17	#,
.L16:
	.loc 1 163 0 is_stmt 1
	movl	-201152(%rbp), %eax	# iutt, tmp218
	movl	%eax, -201128(%rbp)	# tmp218, nutt
	.loc 1 167 0
	movl	$0, -201144(%rbp)	#, ib
	jmp	.L18	#
.L25:
	.loc 1 168 0
	movq	kb(%rip), %rax	# kb, kb.7
	movq	160(%rax), %rbx	# kb.7_61->beam, D.6155
	movl	-201144(%rbp), %eax	# ib, tmp220
	cltq
	salq	$5, %rax	#, tmp221
	addq	$beams, %rax	#, tmp222
	movq	(%rax), %rax	# beams, D.6156
	movq	%rax, -201192(%rbp)	# D.6156, %sfp
	movsd	-201192(%rbp), %xmm0	# %sfp,
	call	logs3	#
	movl	%eax, 4(%rbx)	# D.6150, _62->hmm
	.loc 1 169 0
	movq	kb(%rip), %rax	# kb, kb.8
	movq	160(%rax), %rbx	# kb.8_65->beam, D.6155
	movl	-201144(%rbp), %eax	# ib, tmp224
	cltq
	salq	$5, %rax	#, tmp225
	addq	$beams+8, %rax	#, tmp226
	movq	(%rax), %rax	# beams, D.6156
	movq	%rax, -201192(%rbp)	# D.6156, %sfp
	movsd	-201192(%rbp), %xmm0	# %sfp,
	call	logs3	#
	movl	%eax, 8(%rbx)	# D.6150, _66->ptrans
	.loc 1 170 0
	movq	kb(%rip), %rax	# kb, kb.9
	movq	160(%rax), %rbx	# kb.9_69->beam, D.6155
	movl	-201144(%rbp), %eax	# ib, tmp228
	cltq
	salq	$5, %rax	#, tmp229
	addq	$beams+16, %rax	#, tmp230
	movq	(%rax), %rax	# beams, D.6156
	movq	%rax, -201192(%rbp)	# D.6156, %sfp
	movsd	-201192(%rbp), %xmm0	# %sfp,
	call	logs3	#
	movl	%eax, 12(%rbx)	# D.6150, _70->word
	.loc 1 171 0
	movq	kb(%rip), %rax	# kb, kb.10
	movq	160(%rax), %rbx	# kb.10_73->beam, D.6155
	movl	-201144(%rbp), %eax	# ib, tmp232
	cltq
	salq	$5, %rax	#, tmp233
	addq	$beams+24, %rax	#, tmp234
	movq	(%rax), %rax	# beams, D.6156
	movq	%rax, -201192(%rbp)	# D.6156, %sfp
	movsd	-201192(%rbp), %xmm0	# %sfp,
	call	logs3	#
	movl	%eax, (%rbx)	# D.6150, _74->subvq
	.loc 1 172 0
	movl	$.LC7, %edx	#,
	movl	$172, %esi	#,
	movl	$.LC3, %edi	#,
	call	_E__pr_info_header	#
	.loc 1 173 0
	movq	kb(%rip), %rax	# kb, kb.11
	movq	160(%rax), %rax	# kb.11_77->beam, D.6155
	.loc 1 172 0
	movl	(%rax), %esi	# _78->subvq, D.6150
	.loc 1 173 0
	movq	kb(%rip), %rax	# kb, kb.12
	movq	160(%rax), %rax	# kb.12_80->beam, D.6155
	.loc 1 172 0
	movl	12(%rax), %ecx	# _81->word, D.6150
	.loc 1 173 0
	movq	kb(%rip), %rax	# kb, kb.13
	movq	160(%rax), %rax	# kb.13_83->beam, D.6155
	.loc 1 172 0
	movl	8(%rax), %edx	# _84->ptrans, D.6150
	.loc 1 173 0
	movq	kb(%rip), %rax	# kb, kb.14
	movq	160(%rax), %rax	# kb.14_86->beam, D.6155
	.loc 1 172 0
	movl	4(%rax), %eax	# _87->hmm, D.6150
	movl	%esi, %r8d	# D.6150,
	movl	%eax, %esi	# D.6150,
	movl	$.LC19, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 175 0
	movl	$0, -201152(%rbp)	#, iutt
	jmp	.L19	#
.L24:
	.loc 1 176 0
	movl	-201152(%rbp), %eax	# iutt, tmp236
	cltq
	movq	-81056(%rbp,%rax,8), %rax	# uttid, D.6151
	movq	%rax, %rdi	# D.6151,
	call	live_utt_set_uttid	#
	.loc 1 177 0
	movl	$0, -201148(%rbp)	#, i
	jmp	.L20	#
.L23:
	.loc 1 178 0
	movl	-201136(%rbp), %eax	# blksize, tmp237
	movl	-201148(%rbp), %edx	# i, tmp238
	addl	%eax, %edx	# tmp237, D.6150
	movl	-201152(%rbp), %eax	# iutt, tmp240
	cltq
	movl	-201056(%rbp,%rax,4), %eax	# uttsize, D.6150
	cmpl	%eax, %edx	# D.6150, D.6150
	jl	.L21	#,
	.loc 1 178 0 is_stmt 0 discriminator 1
	movl	-201152(%rbp), %eax	# iutt, tmp242
	cltq
	movl	-201056(%rbp,%rax,4), %eax	# uttsize, D.6150
	subl	-201148(%rbp), %eax	# i, iftmp.15
	jmp	.L22	#
.L21:
	.loc 1 178 0 discriminator 2
	movl	-201136(%rbp), %eax	# blksize, iftmp.15
.L22:
	.loc 1 178 0 discriminator 3
	movl	%eax, -201124(%rbp)	# iftmp.15, buflen
	.loc 1 179 0 is_stmt 1 discriminator 3
	movl	-201136(%rbp), %eax	# blksize, tmp243
	movl	-201148(%rbp), %edx	# i, tmp244
	addl	%eax, %edx	# tmp243, D.6150
	movl	-201152(%rbp), %eax	# iutt, tmp246
	cltq
	movl	-201056(%rbp,%rax,4), %eax	# uttsize, D.6150
	subl	$1, %eax	#, D.6150
	cmpl	%eax, %edx	# D.6150, D.6150
	setg	%al	#, D.6157
	movzbl	%al, %eax	# D.6157, tmp247
	movl	%eax, -201120(%rbp)	# tmp247, endutt
	.loc 1 181 0 discriminator 3
	movl	-201152(%rbp), %eax	# iutt, tmp249
	cltq
	movq	-161056(%rbp,%rax,8), %rax	# samps, D.6154
	.loc 1 180 0 discriminator 3
	movl	-201148(%rbp), %edx	# i, tmp250
	movslq	%edx, %rdx	# tmp250, D.6152
	.loc 1 181 0 discriminator 3
	addq	%rdx, %rdx	# D.6152
	.loc 1 180 0 discriminator 3
	leaq	(%rax,%rdx), %rdi	#, D.6158
	leaq	-201112(%rbp), %rcx	#, tmp251
	movl	-201120(%rbp), %edx	# endutt, tmp252
	movl	-201124(%rbp), %eax	# buflen, tmp253
	movl	%eax, %esi	# tmp253,
	call	live_utt_decode_block	#
	movl	%eax, -201116(%rbp)	# tmp254, nhypwds
	.loc 1 177 0 discriminator 3
	movl	-201136(%rbp), %eax	# blksize, tmp255
	addl	%eax, -201148(%rbp)	# tmp255, i
.L20:
	.loc 1 177 0 is_stmt 0 discriminator 1
	movl	-201152(%rbp), %eax	# iutt, tmp257
	cltq
	movl	-201056(%rbp,%rax,4), %eax	# uttsize, D.6150
	cmpl	-201148(%rbp), %eax	# i, D.6150
	jg	.L23	#,
	.loc 1 175 0 is_stmt 1
	addl	$1, -201152(%rbp)	#, iutt
.L19:
	.loc 1 175 0 is_stmt 0 discriminator 1
	movl	-201152(%rbp), %eax	# iutt, tmp258
	cmpl	-201128(%rbp), %eax	# nutt, tmp258
	jl	.L24	#,
	.loc 1 167 0 is_stmt 1
	addl	$1, -201144(%rbp)	#, ib
.L18:
	.loc 1 167 0 is_stmt 0 discriminator 1
	movl	-201144(%rbp), %eax	# ib, tmp259
	cmpl	-201140(%rbp), %eax	# nbeams, tmp259
	jl	.L25	#,
	.loc 1 191 0 is_stmt 1
	movl	$0, %eax	#,
	call	live_utt_summary	#
	.loc 1 192 0
	movl	$0, %eax	#, D.6150
	.loc 1 193 0
	movq	-24(%rbp), %rbx	# D.6159, tmp262
	xorq	%fs:40, %rbx	#, tmp262
	je	.L27	#,
	call	__stack_chk_fail	#
.L27:
	addq	$201192, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "./libutil/prim_type.h"
	.file 7 "./libutil/glist.h"
	.file 8 "./libutil/hash.h"
	.file 9 "./libutil/profile.h"
	.file 10 "feat.h"
	.file 11 "live.h"
	.file 12 "cont_mgau.h"
	.file 13 "s3types.h"
	.file 14 "mdef.h"
	.file 15 "dict.h"
	.file 16 "dict2pid.h"
	.file 17 "fillpen.h"
	.file 18 "lmclass.h"
	.file 19 "lm.h"
	.file 20 "tmat.h"
	.file 21 "vector.h"
	.file 22 "subvq.h"
	.file 23 "gs.h"
	.file 24 "kbcore.h"
	.file 25 "hmm.h"
	.file 26 "hyp.h"
	.file 27 "vithist.h"
	.file 28 "ascr.h"
	.file 29 "lextree.h"
	.file 30 "beam.h"
	.file 31 "kb.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1c60
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF388
	.byte	0x1
	.long	.LASF389
	.long	.LASF390
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
	.long	.LASF391
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
	.uleb128 0xe
	.long	.LASF392
	.byte	0x8
	.byte	0x6
	.byte	0x48
	.long	0x355
	.uleb128 0xf
	.string	"ptr"
	.byte	0x6
	.byte	0x49
	.long	0x8d
	.uleb128 0x10
	.long	.LASF51
	.byte	0x6
	.byte	0x4a
	.long	0x2b9
	.uleb128 0x10
	.long	.LASF54
	.byte	0x6
	.byte	0x4b
	.long	0x2da
	.uleb128 0x10
	.long	.LASF57
	.byte	0x6
	.byte	0x4c
	.long	0x2fb
	.uleb128 0x10
	.long	.LASF58
	.byte	0x6
	.byte	0x4d
	.long	0x306
	.byte	0
	.uleb128 0x2
	.long	.LASF59
	.byte	0x6
	.byte	0x4e
	.long	0x311
	.uleb128 0x6
	.byte	0x8
	.long	0x2da
	.uleb128 0x7
	.long	.LASF60
	.byte	0x10
	.byte	0x7
	.byte	0x4c
	.long	0x38b
	.uleb128 0x8
	.long	.LASF61
	.byte	0x7
	.byte	0x4d
	.long	0x355
	.byte	0
	.uleb128 0x8
	.long	.LASF62
	.byte	0x7
	.byte	0x4e
	.long	0x38b
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x366
	.uleb128 0x2
	.long	.LASF63
	.byte	0x7
	.byte	0x4f
	.long	0x366
	.uleb128 0x2
	.long	.LASF64
	.byte	0x7
	.byte	0x50
	.long	0x3a7
	.uleb128 0x6
	.byte	0x8
	.long	0x391
	.uleb128 0x7
	.long	.LASF65
	.byte	0x18
	.byte	0x8
	.byte	0x58
	.long	0x3ea
	.uleb128 0x11
	.string	"key"
	.byte	0x8
	.byte	0x59
	.long	0x292
	.byte	0
	.uleb128 0x11
	.string	"len"
	.byte	0x8
	.byte	0x5c
	.long	0x2b9
	.byte	0x8
	.uleb128 0x11
	.string	"val"
	.byte	0x8
	.byte	0x5e
	.long	0x2b9
	.byte	0xc
	.uleb128 0x8
	.long	.LASF62
	.byte	0x8
	.byte	0x5f
	.long	0x3ea
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x3ad
	.uleb128 0x2
	.long	.LASF66
	.byte	0x8
	.byte	0x60
	.long	0x3ad
	.uleb128 0x12
	.byte	0x10
	.byte	0x8
	.byte	0x62
	.long	0x428
	.uleb128 0x8
	.long	.LASF67
	.byte	0x8
	.byte	0x63
	.long	0x428
	.byte	0
	.uleb128 0x8
	.long	.LASF68
	.byte	0x8
	.byte	0x64
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF69
	.byte	0x8
	.byte	0x67
	.long	0x2f0
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x3f0
	.uleb128 0x2
	.long	.LASF70
	.byte	0x8
	.byte	0x68
	.long	0x3fb
	.uleb128 0x12
	.byte	0x38
	.byte	0x9
	.byte	0x53
	.long	0x496
	.uleb128 0x8
	.long	.LASF71
	.byte	0x9
	.byte	0x54
	.long	0x292
	.byte	0
	.uleb128 0x8
	.long	.LASF72
	.byte	0x9
	.byte	0x56
	.long	0x306
	.byte	0x8
	.uleb128 0x8
	.long	.LASF73
	.byte	0x9
	.byte	0x57
	.long	0x306
	.byte	0x10
	.uleb128 0x8
	.long	.LASF74
	.byte	0x9
	.byte	0x58
	.long	0x306
	.byte	0x18
	.uleb128 0x8
	.long	.LASF75
	.byte	0x9
	.byte	0x59
	.long	0x306
	.byte	0x20
	.uleb128 0x8
	.long	.LASF76
	.byte	0x9
	.byte	0x5a
	.long	0x306
	.byte	0x28
	.uleb128 0x8
	.long	.LASF77
	.byte	0x9
	.byte	0x5b
	.long	0x306
	.byte	0x30
	.byte	0
	.uleb128 0x2
	.long	.LASF78
	.byte	0x9
	.byte	0x5c
	.long	0x439
	.uleb128 0x7
	.long	.LASF79
	.byte	0x38
	.byte	0xa
	.byte	0x48
	.long	0x526
	.uleb128 0x8
	.long	.LASF71
	.byte	0xa
	.byte	0x49
	.long	0x8f
	.byte	0
	.uleb128 0x8
	.long	.LASF80
	.byte	0xa
	.byte	0x4a
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF81
	.byte	0xa
	.byte	0x4b
	.long	0x2b9
	.byte	0xc
	.uleb128 0x8
	.long	.LASF82
	.byte	0xa
	.byte	0x4c
	.long	0x2b9
	.byte	0x10
	.uleb128 0x8
	.long	.LASF83
	.byte	0xa
	.byte	0x4d
	.long	0x526
	.byte	0x18
	.uleb128 0x8
	.long	.LASF84
	.byte	0xa
	.byte	0x4e
	.long	0x2b9
	.byte	0x20
	.uleb128 0x11
	.string	"cmn"
	.byte	0xa
	.byte	0x50
	.long	0x2b9
	.byte	0x24
	.uleb128 0x8
	.long	.LASF85
	.byte	0xa
	.byte	0x51
	.long	0x2b9
	.byte	0x28
	.uleb128 0x11
	.string	"agc"
	.byte	0xa
	.byte	0x53
	.long	0x2b9
	.byte	0x2c
	.uleb128 0x8
	.long	.LASF86
	.byte	0xa
	.byte	0x54
	.long	0x553
	.byte	0x30
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2b9
	.uleb128 0x13
	.long	0x541
	.uleb128 0x14
	.long	0x541
	.uleb128 0x14
	.long	0x547
	.uleb128 0x14
	.long	0x547
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x4a1
	.uleb128 0x6
	.byte	0x8
	.long	0x54d
	.uleb128 0x6
	.byte	0x8
	.long	0x2fb
	.uleb128 0x6
	.byte	0x8
	.long	0x52c
	.uleb128 0x2
	.long	.LASF87
	.byte	0xa
	.byte	0x5a
	.long	0x4a1
	.uleb128 0x12
	.byte	0x18
	.byte	0xb
	.byte	0x2e
	.long	0x5a7
	.uleb128 0x8
	.long	.LASF88
	.byte	0xb
	.byte	0x2f
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF89
	.byte	0xb
	.byte	0x30
	.long	0x2b9
	.byte	0x4
	.uleb128 0x8
	.long	.LASF90
	.byte	0xb
	.byte	0x31
	.long	0x8f
	.byte	0x8
	.uleb128 0x11
	.string	"sf"
	.byte	0xb
	.byte	0x32
	.long	0x2b9
	.byte	0x10
	.uleb128 0x11
	.string	"ef"
	.byte	0xb
	.byte	0x33
	.long	0x2b9
	.byte	0x14
	.byte	0
	.uleb128 0x2
	.long	.LASF91
	.byte	0xb
	.byte	0x34
	.long	0x564
	.uleb128 0x12
	.byte	0x28
	.byte	0xc
	.byte	0x5f
	.long	0x5f7
	.uleb128 0x8
	.long	.LASF92
	.byte	0xc
	.byte	0x60
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF93
	.byte	0xc
	.byte	0x62
	.long	0x547
	.byte	0x8
	.uleb128 0x11
	.string	"var"
	.byte	0xc
	.byte	0x63
	.long	0x547
	.byte	0x10
	.uleb128 0x11
	.string	"lrd"
	.byte	0xc
	.byte	0x66
	.long	0x54d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF94
	.byte	0xc
	.byte	0x69
	.long	0x526
	.byte	0x20
	.byte	0
	.uleb128 0x2
	.long	.LASF95
	.byte	0xc
	.byte	0x6c
	.long	0x5b2
	.uleb128 0x12
	.byte	0x30
	.byte	0xc
	.byte	0x74
	.long	0x66b
	.uleb128 0x8
	.long	.LASF96
	.byte	0xc
	.byte	0x75
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF97
	.byte	0xc
	.byte	0x76
	.long	0x2b9
	.byte	0x4
	.uleb128 0x8
	.long	.LASF98
	.byte	0xc
	.byte	0x77
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF99
	.byte	0xc
	.byte	0x78
	.long	0x66b
	.byte	0x10
	.uleb128 0x8
	.long	.LASF100
	.byte	0xc
	.byte	0x79
	.long	0x306
	.byte	0x18
	.uleb128 0x8
	.long	.LASF101
	.byte	0xc
	.byte	0x7c
	.long	0x2b9
	.byte	0x20
	.uleb128 0x8
	.long	.LASF102
	.byte	0xc
	.byte	0x7d
	.long	0x2b9
	.byte	0x24
	.uleb128 0x8
	.long	.LASF103
	.byte	0xc
	.byte	0x7e
	.long	0x2b9
	.byte	0x28
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5f7
	.uleb128 0x2
	.long	.LASF104
	.byte	0xc
	.byte	0x81
	.long	0x602
	.uleb128 0x2
	.long	.LASF105
	.byte	0xd
	.byte	0x4b
	.long	0x2cf
	.uleb128 0x2
	.long	.LASF106
	.byte	0xd
	.byte	0x51
	.long	0x2b9
	.uleb128 0x2
	.long	.LASF107
	.byte	0xd
	.byte	0x57
	.long	0x687
	.uleb128 0x2
	.long	.LASF108
	.byte	0xd
	.byte	0x5d
	.long	0x2b9
	.uleb128 0x2
	.long	.LASF109
	.byte	0xd
	.byte	0x63
	.long	0x2b9
	.uleb128 0x2
	.long	.LASF110
	.byte	0xd
	.byte	0x69
	.long	0x2e5
	.uleb128 0x2
	.long	.LASF111
	.byte	0xd
	.byte	0x75
	.long	0x2c4
	.uleb128 0x2
	.long	.LASF112
	.byte	0xd
	.byte	0x7b
	.long	0x2c4
	.uleb128 0x15
	.byte	0x4
	.byte	0xe
	.byte	0x48
	.long	0x6fb
	.uleb128 0x16
	.long	.LASF113
	.sleb128 0
	.uleb128 0x16
	.long	.LASF114
	.sleb128 1
	.uleb128 0x16
	.long	.LASF115
	.sleb128 2
	.uleb128 0x16
	.long	.LASF116
	.sleb128 3
	.uleb128 0x16
	.long	.LASF117
	.sleb128 4
	.byte	0
	.uleb128 0x2
	.long	.LASF118
	.byte	0xe
	.byte	0x4e
	.long	0x6d4
	.uleb128 0x12
	.byte	0x10
	.byte	0xe
	.byte	0x54
	.long	0x727
	.uleb128 0x8
	.long	.LASF71
	.byte	0xe
	.byte	0x55
	.long	0x8f
	.byte	0
	.uleb128 0x8
	.long	.LASF119
	.byte	0xe
	.byte	0x56
	.long	0x2b9
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.long	.LASF120
	.byte	0xe
	.byte	0x58
	.long	0x706
	.uleb128 0x12
	.byte	0x10
	.byte	0xe
	.byte	0x5e
	.long	0x780
	.uleb128 0x8
	.long	.LASF121
	.byte	0xe
	.byte	0x5f
	.long	0x692
	.byte	0
	.uleb128 0x8
	.long	.LASF122
	.byte	0xe
	.byte	0x62
	.long	0x69d
	.byte	0x4
	.uleb128 0x11
	.string	"ci"
	.byte	0xe
	.byte	0x63
	.long	0x67c
	.byte	0x8
	.uleb128 0x11
	.string	"lc"
	.byte	0xe
	.byte	0x63
	.long	0x67c
	.byte	0x9
	.uleb128 0x11
	.string	"rc"
	.byte	0xe
	.byte	0x63
	.long	0x67c
	.byte	0xa
	.uleb128 0x8
	.long	.LASF123
	.byte	0xe
	.byte	0x64
	.long	0x6fb
	.byte	0xc
	.byte	0
	.uleb128 0x2
	.long	.LASF124
	.byte	0xe
	.byte	0x65
	.long	0x732
	.uleb128 0x7
	.long	.LASF125
	.byte	0x10
	.byte	0xe
	.byte	0x6c
	.long	0x7bb
	.uleb128 0x11
	.string	"rc"
	.byte	0xe
	.byte	0x6d
	.long	0x67c
	.byte	0
	.uleb128 0x11
	.string	"pid"
	.byte	0xe
	.byte	0x6e
	.long	0x687
	.byte	0x4
	.uleb128 0x8
	.long	.LASF62
	.byte	0xe
	.byte	0x6f
	.long	0x7bb
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x78b
	.uleb128 0x2
	.long	.LASF126
	.byte	0xe
	.byte	0x70
	.long	0x78b
	.uleb128 0x7
	.long	.LASF127
	.byte	0x18
	.byte	0xe
	.byte	0x72
	.long	0x7fc
	.uleb128 0x11
	.string	"lc"
	.byte	0xe
	.byte	0x73
	.long	0x67c
	.byte	0
	.uleb128 0x8
	.long	.LASF128
	.byte	0xe
	.byte	0x74
	.long	0x7fc
	.byte	0x8
	.uleb128 0x8
	.long	.LASF62
	.byte	0xe
	.byte	0x75
	.long	0x802
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x7c1
	.uleb128 0x6
	.byte	0x8
	.long	0x7cc
	.uleb128 0x2
	.long	.LASF129
	.byte	0xe
	.byte	0x76
	.long	0x7cc
	.uleb128 0x12
	.byte	0x68
	.byte	0xe
	.byte	0x7a
	.long	0x8dc
	.uleb128 0x8
	.long	.LASF130
	.byte	0xe
	.byte	0x7b
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF131
	.byte	0xe
	.byte	0x7c
	.long	0x2b9
	.byte	0x4
	.uleb128 0x8
	.long	.LASF132
	.byte	0xe
	.byte	0x7d
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF133
	.byte	0xe
	.byte	0x7e
	.long	0x2b9
	.byte	0xc
	.uleb128 0x8
	.long	.LASF134
	.byte	0xe
	.byte	0x7f
	.long	0x2b9
	.byte	0x10
	.uleb128 0x8
	.long	.LASF135
	.byte	0xe
	.byte	0x80
	.long	0x2b9
	.byte	0x14
	.uleb128 0x8
	.long	.LASF136
	.byte	0xe
	.byte	0x82
	.long	0x8dc
	.byte	0x18
	.uleb128 0x8
	.long	.LASF137
	.byte	0xe
	.byte	0x83
	.long	0x8e2
	.byte	0x20
	.uleb128 0x8
	.long	.LASF138
	.byte	0xe
	.byte	0x84
	.long	0x8e8
	.byte	0x28
	.uleb128 0x8
	.long	.LASF139
	.byte	0xe
	.byte	0x85
	.long	0x8ee
	.byte	0x30
	.uleb128 0x8
	.long	.LASF140
	.byte	0xe
	.byte	0x87
	.long	0x2b9
	.byte	0x38
	.uleb128 0x8
	.long	.LASF141
	.byte	0xe
	.byte	0x89
	.long	0x8f4
	.byte	0x40
	.uleb128 0x8
	.long	.LASF142
	.byte	0xe
	.byte	0x8c
	.long	0x8fa
	.byte	0x48
	.uleb128 0x8
	.long	.LASF143
	.byte	0xe
	.byte	0x8d
	.long	0x526
	.byte	0x50
	.uleb128 0x11
	.string	"sil"
	.byte	0xe
	.byte	0x8f
	.long	0x67c
	.byte	0x58
	.uleb128 0x8
	.long	.LASF144
	.byte	0xe
	.byte	0x91
	.long	0x900
	.byte	0x60
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x42e
	.uleb128 0x6
	.byte	0x8
	.long	0x727
	.uleb128 0x6
	.byte	0x8
	.long	0x780
	.uleb128 0x6
	.byte	0x8
	.long	0x8f4
	.uleb128 0x6
	.byte	0x8
	.long	0x6c9
	.uleb128 0x6
	.byte	0x8
	.long	0x67c
	.uleb128 0x6
	.byte	0x8
	.long	0x906
	.uleb128 0x6
	.byte	0x8
	.long	0x90c
	.uleb128 0x6
	.byte	0x8
	.long	0x808
	.uleb128 0x2
	.long	.LASF145
	.byte	0xe
	.byte	0x96
	.long	0x813
	.uleb128 0x12
	.byte	0x28
	.byte	0xf
	.byte	0x47
	.long	0x97a
	.uleb128 0x8
	.long	.LASF90
	.byte	0xf
	.byte	0x48
	.long	0x8f
	.byte	0
	.uleb128 0x8
	.long	.LASF137
	.byte	0xf
	.byte	0x49
	.long	0x8fa
	.byte	0x8
	.uleb128 0x8
	.long	.LASF146
	.byte	0xf
	.byte	0x4a
	.long	0x2b9
	.byte	0x10
	.uleb128 0x11
	.string	"alt"
	.byte	0xf
	.byte	0x4b
	.long	0x6a8
	.byte	0x14
	.uleb128 0x8
	.long	.LASF147
	.byte	0xf
	.byte	0x4c
	.long	0x6a8
	.byte	0x18
	.uleb128 0x8
	.long	.LASF92
	.byte	0xf
	.byte	0x4d
	.long	0x2b9
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF148
	.byte	0xf
	.byte	0x51
	.long	0x97a
	.byte	0x20
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x6a8
	.uleb128 0x2
	.long	.LASF149
	.byte	0xf
	.byte	0x52
	.long	0x91d
	.uleb128 0x12
	.byte	0x58
	.byte	0xf
	.byte	0x54
	.long	0xa3b
	.uleb128 0x8
	.long	.LASF150
	.byte	0xf
	.byte	0x55
	.long	0xa3b
	.byte	0
	.uleb128 0x11
	.string	"pht"
	.byte	0xf
	.byte	0x56
	.long	0x8dc
	.byte	0x8
	.uleb128 0x8
	.long	.LASF151
	.byte	0xf
	.byte	0x57
	.long	0xa41
	.byte	0x10
	.uleb128 0x8
	.long	.LASF130
	.byte	0xf
	.byte	0x58
	.long	0x2b9
	.byte	0x18
	.uleb128 0x8
	.long	.LASF90
	.byte	0xf
	.byte	0x59
	.long	0xa47
	.byte	0x20
	.uleb128 0x11
	.string	"ht"
	.byte	0xf
	.byte	0x5a
	.long	0x8dc
	.byte	0x28
	.uleb128 0x8
	.long	.LASF152
	.byte	0xf
	.byte	0x5b
	.long	0x2b9
	.byte	0x30
	.uleb128 0x8
	.long	.LASF153
	.byte	0xf
	.byte	0x5c
	.long	0x2b9
	.byte	0x34
	.uleb128 0x8
	.long	.LASF154
	.byte	0xf
	.byte	0x5d
	.long	0x2b9
	.byte	0x38
	.uleb128 0x8
	.long	.LASF155
	.byte	0xf
	.byte	0x5e
	.long	0x2b9
	.byte	0x3c
	.uleb128 0x8
	.long	.LASF156
	.byte	0xf
	.byte	0x5f
	.long	0x97a
	.byte	0x40
	.uleb128 0x8
	.long	.LASF157
	.byte	0xf
	.byte	0x62
	.long	0x6a8
	.byte	0x48
	.uleb128 0x8
	.long	.LASF158
	.byte	0xf
	.byte	0x63
	.long	0x6a8
	.byte	0x4c
	.uleb128 0x8
	.long	.LASF159
	.byte	0xf
	.byte	0x64
	.long	0x6a8
	.byte	0x50
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x912
	.uleb128 0x6
	.byte	0x8
	.long	0x8f
	.uleb128 0x6
	.byte	0x8
	.long	0x980
	.uleb128 0x2
	.long	.LASF160
	.byte	0xf
	.byte	0x65
	.long	0x98b
	.uleb128 0x12
	.byte	0x38
	.byte	0x10
	.byte	0x63
	.long	0xac1
	.uleb128 0x8
	.long	.LASF161
	.byte	0x10
	.byte	0x64
	.long	0xac1
	.byte	0
	.uleb128 0x8
	.long	.LASF162
	.byte	0x10
	.byte	0x67
	.long	0xacd
	.byte	0x8
	.uleb128 0x8
	.long	.LASF163
	.byte	0x10
	.byte	0x69
	.long	0xac1
	.byte	0x10
	.uleb128 0x8
	.long	.LASF164
	.byte	0x10
	.byte	0x6c
	.long	0x8ee
	.byte	0x18
	.uleb128 0x8
	.long	.LASF165
	.byte	0x10
	.byte	0x6e
	.long	0x8ee
	.byte	0x20
	.uleb128 0x8
	.long	.LASF166
	.byte	0x10
	.byte	0x70
	.long	0x526
	.byte	0x28
	.uleb128 0x8
	.long	.LASF167
	.byte	0x10
	.byte	0x72
	.long	0x2b9
	.byte	0x30
	.uleb128 0x8
	.long	.LASF168
	.byte	0x10
	.byte	0x73
	.long	0x2b9
	.byte	0x34
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xac7
	.uleb128 0x6
	.byte	0x8
	.long	0x692
	.uleb128 0x6
	.byte	0x8
	.long	0xac1
	.uleb128 0x2
	.long	.LASF169
	.byte	0x10
	.byte	0x74
	.long	0xa58
	.uleb128 0x12
	.byte	0x20
	.byte	0x11
	.byte	0x3e
	.long	0xb16
	.uleb128 0x8
	.long	.LASF170
	.byte	0x11
	.byte	0x3f
	.long	0xb16
	.byte	0
	.uleb128 0x8
	.long	.LASF171
	.byte	0x11
	.byte	0x41
	.long	0x526
	.byte	0x8
	.uleb128 0x11
	.string	"lw"
	.byte	0x11
	.byte	0x43
	.long	0x306
	.byte	0x10
	.uleb128 0x11
	.string	"wip"
	.byte	0x11
	.byte	0x44
	.long	0x306
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xa4d
	.uleb128 0x2
	.long	.LASF172
	.byte	0x11
	.byte	0x45
	.long	0xade
	.uleb128 0x7
	.long	.LASF173
	.byte	0x18
	.byte	0x12
	.byte	0x42
	.long	0xb64
	.uleb128 0x8
	.long	.LASF90
	.byte	0x12
	.byte	0x43
	.long	0x8f
	.byte	0
	.uleb128 0x8
	.long	.LASF174
	.byte	0x12
	.byte	0x44
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF175
	.byte	0x12
	.byte	0x46
	.long	0x2b9
	.byte	0xc
	.uleb128 0x8
	.long	.LASF62
	.byte	0x12
	.byte	0x47
	.long	0xb64
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xb27
	.uleb128 0x2
	.long	.LASF176
	.byte	0x12
	.byte	0x49
	.long	0xb64
	.uleb128 0x7
	.long	.LASF177
	.byte	0x18
	.byte	0x12
	.byte	0x4f
	.long	0xba6
	.uleb128 0x8
	.long	.LASF71
	.byte	0x12
	.byte	0x50
	.long	0x8f
	.byte	0
	.uleb128 0x8
	.long	.LASF178
	.byte	0x12
	.byte	0x51
	.long	0xb6a
	.byte	0x8
	.uleb128 0x8
	.long	.LASF62
	.byte	0x12
	.byte	0x52
	.long	0xba6
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xb75
	.uleb128 0x2
	.long	.LASF179
	.byte	0x12
	.byte	0x54
	.long	0xba6
	.uleb128 0x17
	.byte	0x4
	.byte	0x13
	.byte	0x4d
	.long	0xbd2
	.uleb128 0xf
	.string	"f"
	.byte	0x13
	.byte	0x4e
	.long	0x2fb
	.uleb128 0xf
	.string	"l"
	.byte	0x13
	.byte	0x4f
	.long	0x2b9
	.byte	0
	.uleb128 0x2
	.long	.LASF180
	.byte	0x13
	.byte	0x50
	.long	0xbb7
	.uleb128 0x12
	.byte	0x10
	.byte	0x13
	.byte	0x52
	.long	0xc16
	.uleb128 0x8
	.long	.LASF174
	.byte	0x13
	.byte	0x53
	.long	0x6a8
	.byte	0
	.uleb128 0x8
	.long	.LASF171
	.byte	0x13
	.byte	0x57
	.long	0xbd2
	.byte	0x4
	.uleb128 0x8
	.long	.LASF181
	.byte	0x13
	.byte	0x58
	.long	0xbd2
	.byte	0x8
	.uleb128 0x8
	.long	.LASF182
	.byte	0x13
	.byte	0x59
	.long	0x2b9
	.byte	0xc
	.byte	0
	.uleb128 0x2
	.long	.LASF183
	.byte	0x13
	.byte	0x5a
	.long	0xbdd
	.uleb128 0x12
	.byte	0x8
	.byte	0x13
	.byte	0x5c
	.long	0xc5a
	.uleb128 0x11
	.string	"wid"
	.byte	0x13
	.byte	0x5d
	.long	0x6b3
	.byte	0
	.uleb128 0x8
	.long	.LASF184
	.byte	0x13
	.byte	0x5e
	.long	0x2e5
	.byte	0x2
	.uleb128 0x8
	.long	.LASF185
	.byte	0x13
	.byte	0x5f
	.long	0x2e5
	.byte	0x4
	.uleb128 0x8
	.long	.LASF186
	.byte	0x13
	.byte	0x60
	.long	0x2e5
	.byte	0x6
	.byte	0
	.uleb128 0x2
	.long	.LASF187
	.byte	0x13
	.byte	0x61
	.long	0xc21
	.uleb128 0x12
	.byte	0x4
	.byte	0x13
	.byte	0x63
	.long	0xc86
	.uleb128 0x11
	.string	"wid"
	.byte	0x13
	.byte	0x64
	.long	0x6b3
	.byte	0
	.uleb128 0x8
	.long	.LASF184
	.byte	0x13
	.byte	0x65
	.long	0x2e5
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF188
	.byte	0x13
	.byte	0x66
	.long	0xc65
	.uleb128 0x12
	.byte	0x10
	.byte	0x13
	.byte	0x6c
	.long	0xcb1
	.uleb128 0x11
	.string	"bg"
	.byte	0x13
	.byte	0x6d
	.long	0xcb1
	.byte	0
	.uleb128 0x8
	.long	.LASF189
	.byte	0x13
	.byte	0x6e
	.long	0x2b9
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xc5a
	.uleb128 0x2
	.long	.LASF190
	.byte	0x13
	.byte	0x70
	.long	0xc91
	.uleb128 0x7
	.long	.LASF191
	.byte	0x20
	.byte	0x13
	.byte	0x7a
	.long	0xd15
	.uleb128 0x11
	.string	"w1"
	.byte	0x13
	.byte	0x7b
	.long	0x6b3
	.byte	0
	.uleb128 0x8
	.long	.LASF192
	.byte	0x13
	.byte	0x7d
	.long	0x2b9
	.byte	0x4
	.uleb128 0x11
	.string	"tg"
	.byte	0x13
	.byte	0x7e
	.long	0xd15
	.byte	0x8
	.uleb128 0x8
	.long	.LASF181
	.byte	0x13
	.byte	0x7f
	.long	0x2b9
	.byte	0x10
	.uleb128 0x8
	.long	.LASF189
	.byte	0x13
	.byte	0x80
	.long	0x2b9
	.byte	0x14
	.uleb128 0x8
	.long	.LASF62
	.byte	0x13
	.byte	0x81
	.long	0xd1b
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xc86
	.uleb128 0x6
	.byte	0x8
	.long	0xcc2
	.uleb128 0x2
	.long	.LASF193
	.byte	0x13
	.byte	0x82
	.long	0xcc2
	.uleb128 0x12
	.byte	0xc
	.byte	0x13
	.byte	0x88
	.long	0xd4d
	.uleb128 0x8
	.long	.LASF194
	.byte	0x13
	.byte	0x89
	.long	0xd4d
	.byte	0
	.uleb128 0x8
	.long	.LASF89
	.byte	0x13
	.byte	0x8a
	.long	0x2b9
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.long	0x6b3
	.long	0xd5d
	.uleb128 0xc
	.long	0x86
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF195
	.byte	0x13
	.byte	0x8b
	.long	0xd2c
	.uleb128 0x7
	.long	.LASF196
	.byte	0xf8
	.byte	0x13
	.byte	0xb4
	.long	0xf74
	.uleb128 0x8
	.long	.LASF197
	.byte	0x13
	.byte	0xb5
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF198
	.byte	0x13
	.byte	0xb6
	.long	0x2b9
	.byte	0x4
	.uleb128 0x8
	.long	.LASF192
	.byte	0x13
	.byte	0xb7
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF199
	.byte	0x13
	.byte	0xb8
	.long	0x2b9
	.byte	0xc
	.uleb128 0x8
	.long	.LASF200
	.byte	0x13
	.byte	0xba
	.long	0xa41
	.byte	0x10
	.uleb128 0x8
	.long	.LASF201
	.byte	0x13
	.byte	0xbc
	.long	0x6b3
	.byte	0x18
	.uleb128 0x8
	.long	.LASF202
	.byte	0x13
	.byte	0xbd
	.long	0x6b3
	.byte	0x1a
	.uleb128 0x8
	.long	.LASF203
	.byte	0x13
	.byte	0xbf
	.long	0x2b9
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF204
	.byte	0x13
	.byte	0xc0
	.long	0x2b9
	.byte	0x20
	.uleb128 0x11
	.string	"ug"
	.byte	0x13
	.byte	0xc2
	.long	0xf74
	.byte	0x28
	.uleb128 0x11
	.string	"bg"
	.byte	0x13
	.byte	0xc3
	.long	0xcb1
	.byte	0x30
	.uleb128 0x11
	.string	"tg"
	.byte	0x13
	.byte	0xc4
	.long	0xd15
	.byte	0x38
	.uleb128 0x8
	.long	.LASF205
	.byte	0x13
	.byte	0xc5
	.long	0xf7a
	.byte	0x40
	.uleb128 0x8
	.long	.LASF206
	.byte	0x13
	.byte	0xc6
	.long	0xf80
	.byte	0x48
	.uleb128 0x8
	.long	.LASF207
	.byte	0x13
	.byte	0xc8
	.long	0xf8c
	.byte	0x50
	.uleb128 0x8
	.long	.LASF208
	.byte	0x13
	.byte	0xc9
	.long	0xf8c
	.byte	0x58
	.uleb128 0x8
	.long	.LASF209
	.byte	0x13
	.byte	0xca
	.long	0xf8c
	.byte	0x60
	.uleb128 0x8
	.long	.LASF210
	.byte	0x13
	.byte	0xcb
	.long	0x526
	.byte	0x68
	.uleb128 0x8
	.long	.LASF211
	.byte	0x13
	.byte	0xcd
	.long	0x2b9
	.byte	0x70
	.uleb128 0x8
	.long	.LASF212
	.byte	0x13
	.byte	0xce
	.long	0x2b9
	.byte	0x74
	.uleb128 0x8
	.long	.LASF213
	.byte	0x13
	.byte	0xcf
	.long	0x2b9
	.byte	0x78
	.uleb128 0x11
	.string	"fp"
	.byte	0x13
	.byte	0xd1
	.long	0xf92
	.byte	0x80
	.uleb128 0x8
	.long	.LASF214
	.byte	0x13
	.byte	0xd2
	.long	0x2b9
	.byte	0x88
	.uleb128 0x8
	.long	.LASF215
	.byte	0x13
	.byte	0xd3
	.long	0x2b9
	.byte	0x8c
	.uleb128 0x8
	.long	.LASF216
	.byte	0x13
	.byte	0xd4
	.long	0x2b9
	.byte	0x90
	.uleb128 0x11
	.string	"lw"
	.byte	0x13
	.byte	0xd6
	.long	0x2fb
	.byte	0x94
	.uleb128 0x11
	.string	"wip"
	.byte	0x13
	.byte	0xd7
	.long	0x2b9
	.byte	0x98
	.uleb128 0x8
	.long	.LASF217
	.byte	0x13
	.byte	0xdd
	.long	0xf98
	.byte	0xa0
	.uleb128 0x8
	.long	.LASF218
	.byte	0x13
	.byte	0xe0
	.long	0x2b9
	.byte	0xa8
	.uleb128 0x8
	.long	.LASF219
	.byte	0x13
	.byte	0xe1
	.long	0x2b9
	.byte	0xac
	.uleb128 0x8
	.long	.LASF220
	.byte	0x13
	.byte	0xe2
	.long	0x2b9
	.byte	0xb0
	.uleb128 0x8
	.long	.LASF221
	.byte	0x13
	.byte	0xe3
	.long	0x2b9
	.byte	0xb4
	.uleb128 0x8
	.long	.LASF222
	.byte	0x13
	.byte	0xe4
	.long	0x2b9
	.byte	0xb8
	.uleb128 0x8
	.long	.LASF223
	.byte	0x13
	.byte	0xe5
	.long	0x2b9
	.byte	0xbc
	.uleb128 0x8
	.long	.LASF224
	.byte	0x13
	.byte	0xe6
	.long	0x2b9
	.byte	0xc0
	.uleb128 0x8
	.long	.LASF225
	.byte	0x13
	.byte	0xe7
	.long	0x2b9
	.byte	0xc4
	.uleb128 0x8
	.long	.LASF226
	.byte	0x13
	.byte	0xe8
	.long	0x2b9
	.byte	0xc8
	.uleb128 0x8
	.long	.LASF227
	.byte	0x13
	.byte	0xea
	.long	0x2b9
	.byte	0xcc
	.uleb128 0x8
	.long	.LASF228
	.byte	0x13
	.byte	0xef
	.long	0xf9e
	.byte	0xd0
	.uleb128 0x8
	.long	.LASF229
	.byte	0x13
	.byte	0xf2
	.long	0x2b9
	.byte	0xd8
	.uleb128 0x8
	.long	.LASF230
	.byte	0x13
	.byte	0xf4
	.long	0xfa4
	.byte	0xe0
	.uleb128 0x8
	.long	.LASF231
	.byte	0x13
	.byte	0xf5
	.long	0x2b9
	.byte	0xe8
	.uleb128 0x8
	.long	.LASF232
	.byte	0x13
	.byte	0xf6
	.long	0x526
	.byte	0xf0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xc16
	.uleb128 0x6
	.byte	0x8
	.long	0xcb7
	.uleb128 0x6
	.byte	0x8
	.long	0xf86
	.uleb128 0x6
	.byte	0x8
	.long	0xd21
	.uleb128 0x6
	.byte	0x8
	.long	0xbd2
	.uleb128 0x6
	.byte	0x8
	.long	0x9c
	.uleb128 0x6
	.byte	0x8
	.long	0xd5d
	.uleb128 0x6
	.byte	0x8
	.long	0x6b3
	.uleb128 0x6
	.byte	0x8
	.long	0xbac
	.uleb128 0x2
	.long	.LASF233
	.byte	0x13
	.byte	0xf8
	.long	0xd68
	.uleb128 0x7
	.long	.LASF234
	.byte	0x10
	.byte	0x13
	.byte	0xfb
	.long	0xfd9
	.uleb128 0x8
	.long	.LASF71
	.byte	0x13
	.byte	0xfc
	.long	0x8f
	.byte	0
	.uleb128 0x11
	.string	"lm"
	.byte	0x13
	.byte	0xfd
	.long	0xfd9
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xfaa
	.uleb128 0x2
	.long	.LASF235
	.byte	0x13
	.byte	0xfe
	.long	0xfb5
	.uleb128 0x12
	.byte	0x10
	.byte	0x14
	.byte	0x4a
	.long	0x1016
	.uleb128 0x11
	.string	"tp"
	.byte	0x14
	.byte	0x4b
	.long	0x1016
	.byte	0
	.uleb128 0x8
	.long	.LASF135
	.byte	0x14
	.byte	0x4d
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF236
	.byte	0x14
	.byte	0x4e
	.long	0x2b9
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x101c
	.uleb128 0x6
	.byte	0x8
	.long	0x526
	.uleb128 0x2
	.long	.LASF237
	.byte	0x14
	.byte	0x50
	.long	0xfea
	.uleb128 0x12
	.byte	0x8
	.byte	0x15
	.byte	0x47
	.long	0x104a
	.uleb128 0x11
	.string	"r"
	.byte	0x15
	.byte	0x48
	.long	0x2b9
	.byte	0
	.uleb128 0x11
	.string	"c"
	.byte	0x15
	.byte	0x49
	.long	0x2b9
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.long	.LASF238
	.byte	0x15
	.byte	0x4a
	.long	0x102d
	.uleb128 0x12
	.byte	0x28
	.byte	0x15
	.byte	0xf0
	.long	0x10a6
	.uleb128 0x8
	.long	.LASF239
	.byte	0x15
	.byte	0xf1
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF98
	.byte	0x15
	.byte	0xf2
	.long	0x2b9
	.byte	0x4
	.uleb128 0x8
	.long	.LASF93
	.byte	0x15
	.byte	0xf3
	.long	0x547
	.byte	0x8
	.uleb128 0x11
	.string	"var"
	.byte	0x15
	.byte	0xf4
	.long	0x547
	.byte	0x10
	.uleb128 0x11
	.string	"lrd"
	.byte	0x15
	.byte	0xf5
	.long	0x54d
	.byte	0x18
	.uleb128 0x8
	.long	.LASF100
	.byte	0x15
	.byte	0xf6
	.long	0x306
	.byte	0x20
	.byte	0
	.uleb128 0x2
	.long	.LASF240
	.byte	0x15
	.byte	0xf8
	.long	0x1055
	.uleb128 0x12
	.byte	0x48
	.byte	0x16
	.byte	0x52
	.long	0x1132
	.uleb128 0x8
	.long	.LASF241
	.byte	0x16
	.byte	0x53
	.long	0x104a
	.byte	0
	.uleb128 0x8
	.long	.LASF242
	.byte	0x16
	.byte	0x55
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF243
	.byte	0x16
	.byte	0x56
	.long	0x2b9
	.byte	0xc
	.uleb128 0x8
	.long	.LASF244
	.byte	0x16
	.byte	0x57
	.long	0x101c
	.byte	0x10
	.uleb128 0x8
	.long	.LASF245
	.byte	0x16
	.byte	0x58
	.long	0x1132
	.byte	0x18
	.uleb128 0x11
	.string	"map"
	.byte	0x16
	.byte	0x59
	.long	0x1016
	.byte	0x20
	.uleb128 0x8
	.long	.LASF246
	.byte	0x16
	.byte	0x60
	.long	0x54d
	.byte	0x28
	.uleb128 0x8
	.long	.LASF247
	.byte	0x16
	.byte	0x61
	.long	0x101c
	.byte	0x30
	.uleb128 0x8
	.long	.LASF248
	.byte	0x16
	.byte	0x63
	.long	0x526
	.byte	0x38
	.uleb128 0x8
	.long	.LASF249
	.byte	0x16
	.byte	0x64
	.long	0x526
	.byte	0x40
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x10a6
	.uleb128 0x2
	.long	.LASF250
	.byte	0x16
	.byte	0x65
	.long	0x10b1
	.uleb128 0x7
	.long	.LASF251
	.byte	0x38
	.byte	0x17
	.byte	0x3c
	.long	0x11c7
	.uleb128 0x8
	.long	.LASF96
	.byte	0x17
	.byte	0x3d
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF252
	.byte	0x17
	.byte	0x3e
	.long	0x2b9
	.byte	0x4
	.uleb128 0x8
	.long	.LASF253
	.byte	0x17
	.byte	0x3f
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF254
	.byte	0x17
	.byte	0x40
	.long	0x2b9
	.byte	0xc
	.uleb128 0x8
	.long	.LASF255
	.byte	0x17
	.byte	0x41
	.long	0x2b9
	.byte	0x10
	.uleb128 0x8
	.long	.LASF256
	.byte	0x17
	.byte	0x42
	.long	0x2b9
	.byte	0x14
	.uleb128 0x8
	.long	.LASF257
	.byte	0x17
	.byte	0x43
	.long	0x547
	.byte	0x18
	.uleb128 0x8
	.long	.LASF258
	.byte	0x17
	.byte	0x44
	.long	0x11c7
	.byte	0x20
	.uleb128 0x11
	.string	"fp"
	.byte	0x17
	.byte	0x45
	.long	0xf92
	.byte	0x28
	.uleb128 0x8
	.long	.LASF249
	.byte	0x17
	.byte	0x46
	.long	0x526
	.byte	0x30
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x11cd
	.uleb128 0x6
	.byte	0x8
	.long	0x360
	.uleb128 0x2
	.long	.LASF259
	.byte	0x17
	.byte	0x47
	.long	0x1143
	.uleb128 0x12
	.byte	0x68
	.byte	0x18
	.byte	0x50
	.long	0x128d
	.uleb128 0x11
	.string	"fcb"
	.byte	0x18
	.byte	0x51
	.long	0x128d
	.byte	0
	.uleb128 0x8
	.long	.LASF150
	.byte	0x18
	.byte	0x52
	.long	0xa3b
	.byte	0x8
	.uleb128 0x8
	.long	.LASF170
	.byte	0x18
	.byte	0x53
	.long	0xb16
	.byte	0x10
	.uleb128 0x8
	.long	.LASF260
	.byte	0x18
	.byte	0x54
	.long	0x1293
	.byte	0x18
	.uleb128 0x11
	.string	"lm"
	.byte	0x18
	.byte	0x55
	.long	0xfd9
	.byte	0x20
	.uleb128 0x8
	.long	.LASF261
	.byte	0x18
	.byte	0x56
	.long	0x1299
	.byte	0x28
	.uleb128 0x8
	.long	.LASF262
	.byte	0x18
	.byte	0x57
	.long	0x129f
	.byte	0x30
	.uleb128 0x8
	.long	.LASF228
	.byte	0x18
	.byte	0x58
	.long	0xf9e
	.byte	0x38
	.uleb128 0x8
	.long	.LASF99
	.byte	0x18
	.byte	0x59
	.long	0x12a5
	.byte	0x40
	.uleb128 0x11
	.string	"svq"
	.byte	0x18
	.byte	0x5a
	.long	0x12ab
	.byte	0x48
	.uleb128 0x11
	.string	"gs"
	.byte	0x18
	.byte	0x5b
	.long	0x12b1
	.byte	0x50
	.uleb128 0x8
	.long	.LASF122
	.byte	0x18
	.byte	0x5c
	.long	0x12b7
	.byte	0x58
	.uleb128 0x8
	.long	.LASF263
	.byte	0x18
	.byte	0x5d
	.long	0x2b9
	.byte	0x60
	.uleb128 0x8
	.long	.LASF264
	.byte	0x18
	.byte	0x5e
	.long	0x2b9
	.byte	0x64
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x559
	.uleb128 0x6
	.byte	0x8
	.long	0xad3
	.uleb128 0x6
	.byte	0x8
	.long	0xfdf
	.uleb128 0x6
	.byte	0x8
	.long	0xb1c
	.uleb128 0x6
	.byte	0x8
	.long	0x671
	.uleb128 0x6
	.byte	0x8
	.long	0x1138
	.uleb128 0x6
	.byte	0x8
	.long	0x11d3
	.uleb128 0x6
	.byte	0x8
	.long	0x1022
	.uleb128 0x2
	.long	.LASF265
	.byte	0x18
	.byte	0x5f
	.long	0x11de
	.uleb128 0x12
	.byte	0x8
	.byte	0x19
	.byte	0x69
	.long	0x12e9
	.uleb128 0x8
	.long	.LASF266
	.byte	0x19
	.byte	0x6a
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF267
	.byte	0x19
	.byte	0x6b
	.long	0x2b9
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.long	.LASF268
	.byte	0x19
	.byte	0x6c
	.long	0x12c8
	.uleb128 0x12
	.byte	0x28
	.byte	0x19
	.byte	0x6e
	.long	0x1337
	.uleb128 0x8
	.long	.LASF269
	.byte	0x19
	.byte	0x6f
	.long	0x1337
	.byte	0
	.uleb128 0x11
	.string	"in"
	.byte	0x19
	.byte	0x70
	.long	0x12e9
	.byte	0x8
	.uleb128 0x11
	.string	"out"
	.byte	0x19
	.byte	0x71
	.long	0x12e9
	.byte	0x10
	.uleb128 0x11
	.string	"tp"
	.byte	0x19
	.byte	0x72
	.long	0x101c
	.byte	0x18
	.uleb128 0x8
	.long	.LASF270
	.byte	0x19
	.byte	0x73
	.long	0x2b9
	.byte	0x20
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x12e9
	.uleb128 0x2
	.long	.LASF271
	.byte	0x19
	.byte	0x74
	.long	0x12f4
	.uleb128 0x12
	.byte	0x1c
	.byte	0x1a
	.byte	0x3c
	.long	0x13a2
	.uleb128 0x11
	.string	"id"
	.byte	0x1a
	.byte	0x3d
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF272
	.byte	0x1a
	.byte	0x3e
	.long	0x2b9
	.byte	0x4
	.uleb128 0x11
	.string	"sf"
	.byte	0x1a
	.byte	0x3f
	.long	0x2b9
	.byte	0x8
	.uleb128 0x11
	.string	"ef"
	.byte	0x1a
	.byte	0x3f
	.long	0x2b9
	.byte	0xc
	.uleb128 0x8
	.long	.LASF88
	.byte	0x1a
	.byte	0x40
	.long	0x2b9
	.byte	0x10
	.uleb128 0x8
	.long	.LASF89
	.byte	0x1a
	.byte	0x41
	.long	0x2b9
	.byte	0x14
	.uleb128 0x8
	.long	.LASF273
	.byte	0x1a
	.byte	0x42
	.long	0x2b9
	.byte	0x18
	.byte	0
	.uleb128 0x2
	.long	.LASF274
	.byte	0x1a
	.byte	0x43
	.long	0x1348
	.uleb128 0x12
	.byte	0x4
	.byte	0x1b
	.byte	0x50
	.long	0x13c2
	.uleb128 0x8
	.long	.LASF194
	.byte	0x1b
	.byte	0x51
	.long	0x13c2
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x6b3
	.long	0x13d2
	.uleb128 0xc
	.long	0x86
	.byte	0x1
	.byte	0
	.uleb128 0x17
	.byte	0x4
	.byte	0x1b
	.byte	0x4f
	.long	0x13e6
	.uleb128 0x10
	.long	.LASF275
	.byte	0x1b
	.byte	0x52
	.long	0x13ad
	.byte	0
	.uleb128 0x2
	.long	.LASF276
	.byte	0x1b
	.byte	0x53
	.long	0x13d2
	.uleb128 0x12
	.byte	0x24
	.byte	0x1b
	.byte	0x59
	.long	0x1470
	.uleb128 0x11
	.string	"wid"
	.byte	0x1b
	.byte	0x5a
	.long	0x6a8
	.byte	0
	.uleb128 0x11
	.string	"sf"
	.byte	0x1b
	.byte	0x5b
	.long	0x6be
	.byte	0x4
	.uleb128 0x11
	.string	"ef"
	.byte	0x1b
	.byte	0x5b
	.long	0x6be
	.byte	0x6
	.uleb128 0x8
	.long	.LASF88
	.byte	0x1b
	.byte	0x5c
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF89
	.byte	0x1b
	.byte	0x5d
	.long	0x2b9
	.byte	0xc
	.uleb128 0x8
	.long	.LASF266
	.byte	0x1b
	.byte	0x5e
	.long	0x2b9
	.byte	0x10
	.uleb128 0x8
	.long	.LASF277
	.byte	0x1b
	.byte	0x5f
	.long	0x2b9
	.byte	0x14
	.uleb128 0x8
	.long	.LASF273
	.byte	0x1b
	.byte	0x60
	.long	0x2b9
	.byte	0x18
	.uleb128 0x8
	.long	.LASF278
	.byte	0x1b
	.byte	0x61
	.long	0x2b9
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF279
	.byte	0x1b
	.byte	0x62
	.long	0x13e6
	.byte	0x20
	.byte	0
	.uleb128 0x2
	.long	.LASF280
	.byte	0x1b
	.byte	0x63
	.long	0x13f1
	.uleb128 0x12
	.byte	0x18
	.byte	0x1b
	.byte	0x79
	.long	0x14b3
	.uleb128 0x8
	.long	.LASF269
	.byte	0x1b
	.byte	0x7a
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF272
	.byte	0x1b
	.byte	0x7b
	.long	0x2b9
	.byte	0x4
	.uleb128 0x11
	.string	"ve"
	.byte	0x1b
	.byte	0x7c
	.long	0x14b3
	.byte	0x8
	.uleb128 0x8
	.long	.LASF281
	.byte	0x1b
	.byte	0x7d
	.long	0x39c
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1470
	.uleb128 0x2
	.long	.LASF282
	.byte	0x1b
	.byte	0x7f
	.long	0x147b
	.uleb128 0x12
	.byte	0x40
	.byte	0x1b
	.byte	0x88
	.long	0x1545
	.uleb128 0x8
	.long	.LASF283
	.byte	0x1b
	.byte	0x89
	.long	0x1545
	.byte	0
	.uleb128 0x8
	.long	.LASF284
	.byte	0x1b
	.byte	0x8a
	.long	0x526
	.byte	0x8
	.uleb128 0x8
	.long	.LASF285
	.byte	0x1b
	.byte	0x8c
	.long	0x2b9
	.byte	0x10
	.uleb128 0x8
	.long	.LASF286
	.byte	0x1b
	.byte	0x8d
	.long	0x2b9
	.byte	0x14
	.uleb128 0x8
	.long	.LASF287
	.byte	0x1b
	.byte	0x8f
	.long	0x2b9
	.byte	0x18
	.uleb128 0x8
	.long	.LASF288
	.byte	0x1b
	.byte	0x92
	.long	0x2b9
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF270
	.byte	0x1b
	.byte	0x94
	.long	0x526
	.byte	0x20
	.uleb128 0x8
	.long	.LASF289
	.byte	0x1b
	.byte	0x95
	.long	0x526
	.byte	0x28
	.uleb128 0x8
	.long	.LASF290
	.byte	0x1b
	.byte	0x97
	.long	0x154b
	.byte	0x30
	.uleb128 0x8
	.long	.LASF291
	.byte	0x1b
	.byte	0x98
	.long	0x39c
	.byte	0x38
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x14b3
	.uleb128 0x6
	.byte	0x8
	.long	0x1551
	.uleb128 0x6
	.byte	0x8
	.long	0x14b9
	.uleb128 0x2
	.long	.LASF292
	.byte	0x1b
	.byte	0x99
	.long	0x14c4
	.uleb128 0x12
	.byte	0x10
	.byte	0x1c
	.byte	0x40
	.long	0x1583
	.uleb128 0x11
	.string	"sen"
	.byte	0x1c
	.byte	0x41
	.long	0x526
	.byte	0
	.uleb128 0x8
	.long	.LASF293
	.byte	0x1c
	.byte	0x42
	.long	0x526
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.long	.LASF294
	.byte	0x1c
	.byte	0x43
	.long	0x1562
	.uleb128 0x12
	.byte	0x50
	.byte	0x1d
	.byte	0x5e
	.long	0x1602
	.uleb128 0x11
	.string	"hmm"
	.byte	0x1d
	.byte	0x5f
	.long	0x133d
	.byte	0
	.uleb128 0x8
	.long	.LASF281
	.byte	0x1d
	.byte	0x60
	.long	0x39c
	.byte	0x28
	.uleb128 0x11
	.string	"wid"
	.byte	0x1d
	.byte	0x61
	.long	0x2b9
	.byte	0x30
	.uleb128 0x8
	.long	.LASF171
	.byte	0x1d
	.byte	0x62
	.long	0x2b9
	.byte	0x34
	.uleb128 0x8
	.long	.LASF121
	.byte	0x1d
	.byte	0x63
	.long	0x2b9
	.byte	0x38
	.uleb128 0x8
	.long	.LASF295
	.byte	0x1d
	.byte	0x64
	.long	0xac7
	.byte	0x40
	.uleb128 0x11
	.string	"ci"
	.byte	0x1d
	.byte	0x66
	.long	0x67c
	.byte	0x48
	.uleb128 0x8
	.long	.LASF296
	.byte	0x1d
	.byte	0x67
	.long	0x2cf
	.byte	0x49
	.uleb128 0x8
	.long	.LASF297
	.byte	0x1d
	.byte	0x68
	.long	0x6be
	.byte	0x4a
	.byte	0
	.uleb128 0x2
	.long	.LASF298
	.byte	0x1d
	.byte	0x69
	.long	0x158e
	.uleb128 0x12
	.byte	0x10
	.byte	0x1d
	.byte	0x76
	.long	0x162d
	.uleb128 0x11
	.string	"lc"
	.byte	0x1d
	.byte	0x77
	.long	0x67c
	.byte	0
	.uleb128 0x8
	.long	.LASF299
	.byte	0x1d
	.byte	0x78
	.long	0x39c
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.long	.LASF300
	.byte	0x1d
	.byte	0x7a
	.long	0x160d
	.uleb128 0x12
	.byte	0x40
	.byte	0x1d
	.byte	0x7f
	.long	0x16c5
	.uleb128 0x8
	.long	.LASF273
	.byte	0x1d
	.byte	0x80
	.long	0x2b9
	.byte	0
	.uleb128 0x8
	.long	.LASF299
	.byte	0x1d
	.byte	0x82
	.long	0x39c
	.byte	0x8
	.uleb128 0x8
	.long	.LASF301
	.byte	0x1d
	.byte	0x83
	.long	0x16c5
	.byte	0x10
	.uleb128 0x8
	.long	.LASF302
	.byte	0x1d
	.byte	0x85
	.long	0x2b9
	.byte	0x18
	.uleb128 0x8
	.long	.LASF303
	.byte	0x1d
	.byte	0x86
	.long	0x2b9
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF304
	.byte	0x1d
	.byte	0x87
	.long	0x16cb
	.byte	0x20
	.uleb128 0x8
	.long	.LASF305
	.byte	0x1d
	.byte	0x88
	.long	0x16cb
	.byte	0x28
	.uleb128 0x8
	.long	.LASF306
	.byte	0x1d
	.byte	0x8a
	.long	0x2b9
	.byte	0x30
	.uleb128 0x8
	.long	.LASF307
	.byte	0x1d
	.byte	0x8b
	.long	0x2b9
	.byte	0x34
	.uleb128 0x8
	.long	.LASF308
	.byte	0x1d
	.byte	0x8d
	.long	0x2b9
	.byte	0x38
	.uleb128 0x8
	.long	.LASF309
	.byte	0x1d
	.byte	0x8e
	.long	0x2b9
	.byte	0x3c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x162d
	.uleb128 0x6
	.byte	0x8
	.long	0x16d1
	.uleb128 0x6
	.byte	0x8
	.long	0x1602
	.uleb128 0x2
	.long	.LASF310
	.byte	0x1d
	.byte	0x8f
	.long	0x1638
	.uleb128 0x12
	.byte	0x10
	.byte	0x1e
	.byte	0x40
	.long	0x171b
	.uleb128 0x8
	.long	.LASF311
	.byte	0x1e
	.byte	0x41
	.long	0x2b9
	.byte	0
	.uleb128 0x11
	.string	"hmm"
	.byte	0x1e
	.byte	0x42
	.long	0x2b9
	.byte	0x4
	.uleb128 0x8
	.long	.LASF312
	.byte	0x1e
	.byte	0x43
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF90
	.byte	0x1e
	.byte	0x44
	.long	0x2b9
	.byte	0xc
	.byte	0
	.uleb128 0x2
	.long	.LASF313
	.byte	0x1e
	.byte	0x45
	.long	0x16e2
	.uleb128 0x18
	.value	0x1f8
	.byte	0x1f
	.byte	0x56
	.long	0x19c5
	.uleb128 0x8
	.long	.LASF314
	.byte	0x1f
	.byte	0x57
	.long	0x19c5
	.byte	0
	.uleb128 0x8
	.long	.LASF315
	.byte	0x1f
	.byte	0x58
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF316
	.byte	0x1f
	.byte	0x59
	.long	0x19cb
	.byte	0x10
	.uleb128 0x8
	.long	.LASF317
	.byte	0x1f
	.byte	0x5a
	.long	0x19cb
	.byte	0x18
	.uleb128 0x8
	.long	.LASF318
	.byte	0x1f
	.byte	0x5b
	.long	0x19cb
	.byte	0x20
	.uleb128 0x8
	.long	.LASF319
	.byte	0x1f
	.byte	0x5c
	.long	0x2b9
	.byte	0x28
	.uleb128 0x8
	.long	.LASF320
	.byte	0x1f
	.byte	0x5e
	.long	0x19d7
	.byte	0x30
	.uleb128 0x8
	.long	.LASF321
	.byte	0x1f
	.byte	0x60
	.long	0x19dd
	.byte	0x38
	.uleb128 0x11
	.string	"nfr"
	.byte	0x1f
	.byte	0x61
	.long	0x2b9
	.byte	0x40
	.uleb128 0x8
	.long	.LASF322
	.byte	0x1f
	.byte	0x63
	.long	0x526
	.byte	0x48
	.uleb128 0x8
	.long	.LASF323
	.byte	0x1f
	.byte	0x64
	.long	0x526
	.byte	0x50
	.uleb128 0x8
	.long	.LASF324
	.byte	0x1f
	.byte	0x65
	.long	0x526
	.byte	0x58
	.uleb128 0x8
	.long	.LASF325
	.byte	0x1f
	.byte	0x66
	.long	0x526
	.byte	0x60
	.uleb128 0x8
	.long	.LASF326
	.byte	0x1f
	.byte	0x67
	.long	0x2b9
	.byte	0x68
	.uleb128 0x8
	.long	.LASF327
	.byte	0x1f
	.byte	0x68
	.long	0x2b9
	.byte	0x6c
	.uleb128 0x8
	.long	.LASF328
	.byte	0x1f
	.byte	0x6a
	.long	0x101c
	.byte	0x70
	.uleb128 0x8
	.long	.LASF329
	.byte	0x1f
	.byte	0x6b
	.long	0x526
	.byte	0x78
	.uleb128 0x8
	.long	.LASF330
	.byte	0x1f
	.byte	0x6c
	.long	0x526
	.byte	0x80
	.uleb128 0x8
	.long	.LASF331
	.byte	0x1f
	.byte	0x6d
	.long	0x2b9
	.byte	0x88
	.uleb128 0x8
	.long	.LASF270
	.byte	0x1f
	.byte	0x6e
	.long	0x2b9
	.byte	0x8c
	.uleb128 0x8
	.long	.LASF332
	.byte	0x1f
	.byte	0x6f
	.long	0x2b9
	.byte	0x90
	.uleb128 0x8
	.long	.LASF88
	.byte	0x1f
	.byte	0x71
	.long	0x19e3
	.byte	0x98
	.uleb128 0x8
	.long	.LASF333
	.byte	0x1f
	.byte	0x72
	.long	0x19e9
	.byte	0xa0
	.uleb128 0x8
	.long	.LASF334
	.byte	0x1f
	.byte	0x73
	.long	0x2b9
	.byte	0xa8
	.uleb128 0x8
	.long	.LASF335
	.byte	0x1f
	.byte	0x74
	.long	0x2b9
	.byte	0xac
	.uleb128 0x8
	.long	.LASF336
	.byte	0x1f
	.byte	0x78
	.long	0x2b9
	.byte	0xb0
	.uleb128 0x8
	.long	.LASF337
	.byte	0x1f
	.byte	0x7a
	.long	0x2b9
	.byte	0xb4
	.uleb128 0x8
	.long	.LASF338
	.byte	0x1f
	.byte	0x7c
	.long	0x2b9
	.byte	0xb8
	.uleb128 0x8
	.long	.LASF339
	.byte	0x1f
	.byte	0x7f
	.long	0x2b9
	.byte	0xbc
	.uleb128 0x8
	.long	.LASF340
	.byte	0x1f
	.byte	0x80
	.long	0x2b9
	.byte	0xc0
	.uleb128 0x8
	.long	.LASF341
	.byte	0x1f
	.byte	0x81
	.long	0x2b9
	.byte	0xc4
	.uleb128 0x8
	.long	.LASF342
	.byte	0x1f
	.byte	0x82
	.long	0x2b9
	.byte	0xc8
	.uleb128 0x8
	.long	.LASF343
	.byte	0x1f
	.byte	0x83
	.long	0x2b9
	.byte	0xcc
	.uleb128 0x8
	.long	.LASF344
	.byte	0x1f
	.byte	0x84
	.long	0x8f
	.byte	0xd0
	.uleb128 0x8
	.long	.LASF345
	.byte	0x1f
	.byte	0x86
	.long	0x2b9
	.byte	0xd8
	.uleb128 0x8
	.long	.LASF346
	.byte	0x1f
	.byte	0x87
	.long	0x2b9
	.byte	0xdc
	.uleb128 0x8
	.long	.LASF347
	.byte	0x1f
	.byte	0x88
	.long	0x2b9
	.byte	0xe0
	.uleb128 0x8
	.long	.LASF348
	.byte	0x1f
	.byte	0x89
	.long	0x526
	.byte	0xe8
	.uleb128 0x8
	.long	.LASF349
	.byte	0x1f
	.byte	0x8a
	.long	0x2b9
	.byte	0xf0
	.uleb128 0x8
	.long	.LASF350
	.byte	0x1f
	.byte	0x8b
	.long	0x2b9
	.byte	0xf4
	.uleb128 0x8
	.long	.LASF351
	.byte	0x1f
	.byte	0x8d
	.long	0x496
	.byte	0xf8
	.uleb128 0x19
	.long	.LASF352
	.byte	0x1f
	.byte	0x8e
	.long	0x496
	.value	0x130
	.uleb128 0x19
	.long	.LASF353
	.byte	0x1f
	.byte	0x8f
	.long	0x496
	.value	0x168
	.uleb128 0x19
	.long	.LASF354
	.byte	0x1f
	.byte	0x90
	.long	0x2b9
	.value	0x1a0
	.uleb128 0x19
	.long	.LASF355
	.byte	0x1f
	.byte	0x91
	.long	0x306
	.value	0x1a8
	.uleb128 0x19
	.long	.LASF356
	.byte	0x1f
	.byte	0x92
	.long	0x306
	.value	0x1b0
	.uleb128 0x19
	.long	.LASF357
	.byte	0x1f
	.byte	0x93
	.long	0x306
	.value	0x1b8
	.uleb128 0x19
	.long	.LASF358
	.byte	0x1f
	.byte	0x94
	.long	0x306
	.value	0x1c0
	.uleb128 0x19
	.long	.LASF359
	.byte	0x1f
	.byte	0x95
	.long	0xf92
	.value	0x1c8
	.uleb128 0x19
	.long	.LASF360
	.byte	0x1f
	.byte	0x96
	.long	0xf92
	.value	0x1d0
	.uleb128 0x19
	.long	.LASF361
	.byte	0x1f
	.byte	0x98
	.long	0x19ef
	.value	0x1d8
	.uleb128 0x19
	.long	.LASF362
	.byte	0x1f
	.byte	0x99
	.long	0x2b9
	.value	0x1e0
	.uleb128 0x19
	.long	.LASF363
	.byte	0x1f
	.byte	0x9a
	.long	0x8f
	.value	0x1e8
	.uleb128 0x19
	.long	.LASF364
	.byte	0x1f
	.byte	0x9b
	.long	0x2b9
	.value	0x1f0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x12bd
	.uleb128 0x6
	.byte	0x8
	.long	0x19d1
	.uleb128 0x6
	.byte	0x8
	.long	0x16d7
	.uleb128 0x6
	.byte	0x8
	.long	0x1557
	.uleb128 0x6
	.byte	0x8
	.long	0x547
	.uleb128 0x6
	.byte	0x8
	.long	0x1583
	.uleb128 0x6
	.byte	0x8
	.long	0x171b
	.uleb128 0x6
	.byte	0x8
	.long	0x19f5
	.uleb128 0x6
	.byte	0x8
	.long	0x13a2
	.uleb128 0x2
	.long	.LASF365
	.byte	0x1f
	.byte	0x9c
	.long	0x1726
	.uleb128 0x1a
	.long	.LASF393
	.byte	0x1
	.byte	0x54
	.long	0x62
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x1bbb
	.uleb128 0x1b
	.long	.LASF366
	.byte	0x1
	.byte	0x54
	.long	0x62
	.uleb128 0x4
	.byte	0x91
	.sleb128 -201188
	.uleb128 0x1b
	.long	.LASF367
	.byte	0x1
	.byte	0x54
	.long	0xa41
	.uleb128 0x4
	.byte	0x91
	.sleb128 -201200
	.uleb128 0x1c
	.long	.LASF368
	.byte	0x1
	.byte	0x56
	.long	0x1bbb
	.uleb128 0x4
	.byte	0x91
	.sleb128 -161072
	.uleb128 0x1c
	.long	.LASF344
	.byte	0x1
	.byte	0x57
	.long	0x1bd2
	.uleb128 0x4
	.byte	0x91
	.sleb128 -81072
	.uleb128 0x1c
	.long	.LASF369
	.byte	0x1
	.byte	0x58
	.long	0x1be3
	.uleb128 0x4
	.byte	0x91
	.sleb128 -201072
	.uleb128 0x1c
	.long	.LASF370
	.byte	0x1
	.byte	0x59
	.long	0x62
	.uleb128 0x4
	.byte	0x91
	.sleb128 -201168
	.uleb128 0x1c
	.long	.LASF371
	.byte	0x1
	.byte	0x59
	.long	0x62
	.uleb128 0x4
	.byte	0x91
	.sleb128 -201144
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.byte	0x5a
	.long	0x62
	.uleb128 0x4
	.byte	0x91
	.sleb128 -201164
	.uleb128 0x1e
	.string	"j"
	.byte	0x1
	.byte	0x5a
	.long	0x62
	.uleb128 0x1c
	.long	.LASF372
	.byte	0x1
	.byte	0x5a
	.long	0x62
	.uleb128 0x4
	.byte	0x91
	.sleb128 -201140
	.uleb128 0x1c
	.long	.LASF373
	.byte	0x1
	.byte	0x5a
	.long	0x62
	.uleb128 0x4
	.byte	0x91
	.sleb128 -201136
	.uleb128 0x1c
	.long	.LASF374
	.byte	0x1
	.byte	0x5a
	.long	0x62
	.uleb128 0x4
	.byte	0x91
	.sleb128 -201152
	.uleb128 0x1c
	.long	.LASF375
	.byte	0x1
	.byte	0x5a
	.long	0x62
	.uleb128 0x4
	.byte	0x91
	.sleb128 -201132
	.uleb128 0x1c
	.long	.LASF376
	.byte	0x1
	.byte	0x5a
	.long	0x62
	.uleb128 0x4
	.byte	0x91
	.sleb128 -201148
	.uleb128 0x1c
	.long	.LASF377
	.byte	0x1
	.byte	0x5b
	.long	0x8f
	.uleb128 0x4
	.byte	0x91
	.sleb128 -201112
	.uleb128 0x1c
	.long	.LASF378
	.byte	0x1
	.byte	0x5b
	.long	0x8f
	.uleb128 0x4
	.byte	0x91
	.sleb128 -201104
	.uleb128 0x1c
	.long	.LASF379
	.byte	0x1
	.byte	0x5b
	.long	0x8f
	.uleb128 0x4
	.byte	0x91
	.sleb128 -201096
	.uleb128 0x1c
	.long	.LASF380
	.byte	0x1
	.byte	0x5c
	.long	0x1bf4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.uleb128 0x1c
	.long	.LASF381
	.byte	0x1
	.byte	0x5d
	.long	0x1c05
	.uleb128 0x3
	.byte	0x91
	.sleb128 -560
	.uleb128 0x1c
	.long	.LASF382
	.byte	0x1
	.byte	0x5e
	.long	0x62
	.uleb128 0x4
	.byte	0x91
	.sleb128 -201172
	.uleb128 0x1c
	.long	.LASF383
	.byte	0x1
	.byte	0x5f
	.long	0x1c16
	.uleb128 0x4
	.byte	0x91
	.sleb128 -201128
	.uleb128 0x1d
	.string	"fp"
	.byte	0x1
	.byte	0x60
	.long	0xf92
	.uleb128 0x4
	.byte	0x91
	.sleb128 -201088
	.uleb128 0x1d
	.string	"sfp"
	.byte	0x1
	.byte	0x60
	.long	0xf92
	.uleb128 0x4
	.byte	0x91
	.sleb128 -201080
	.uleb128 0x1d
	.string	"ib"
	.byte	0x1
	.byte	0x62
	.long	0x62
	.uleb128 0x4
	.byte	0x91
	.sleb128 -201160
	.uleb128 0x1c
	.long	.LASF384
	.byte	0x1
	.byte	0x62
	.long	0x62
	.uleb128 0x4
	.byte	0x91
	.sleb128 -201156
	.uleb128 0x1c
	.long	.LASF385
	.byte	0x1
	.byte	0x63
	.long	0xf92
	.uleb128 0x4
	.byte	0x91
	.sleb128 -201120
	.byte	0
	.uleb128 0xb
	.long	0x1bcc
	.long	0x1bcc
	.uleb128 0x1f
	.long	0x86
	.value	0x270f
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5b
	.uleb128 0xb
	.long	0x8f
	.long	0x1be3
	.uleb128 0x1f
	.long	0x86
	.value	0x270f
	.byte	0
	.uleb128 0xb
	.long	0x62
	.long	0x1bf4
	.uleb128 0x1f
	.long	0x86
	.value	0x270f
	.byte	0
	.uleb128 0xb
	.long	0x95
	.long	0x1c05
	.uleb128 0x1f
	.long	0x86
	.value	0x1ff
	.byte	0
	.uleb128 0xb
	.long	0x95
	.long	0x1c16
	.uleb128 0x1f
	.long	0x86
	.value	0x203
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5a7
	.uleb128 0x20
	.long	.LASF386
	.byte	0x4
	.byte	0xa9
	.long	0x266
	.uleb128 0x21
	.string	"kb"
	.byte	0x1
	.byte	0x46
	.long	0x1c31
	.uleb128 0x6
	.byte	0x8
	.long	0x19fb
	.uleb128 0xb
	.long	0x2b2
	.long	0x1c4e
	.uleb128 0x1f
	.long	0x86
	.value	0x3e7
	.uleb128 0xc
	.long	0x86
	.byte	0x3
	.byte	0
	.uleb128 0x22
	.long	.LASF387
	.byte	0x1
	.byte	0x4f
	.long	0x1c37
	.uleb128 0x9
	.byte	0x3
	.quad	beams
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0xb
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
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x22
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
.LASF347:
	.string	"utt_gau_eval"
.LASF7:
	.string	"size_t"
.LASF253:
	.string	"n_code"
.LASF10:
	.string	"sizetype"
.LASF357:
	.string	"tot_hmm_eval"
.LASF139:
	.string	"sseq"
.LASF298:
	.string	"lextree_node_t"
.LASF208:
	.string	"tgprob"
.LASF189:
	.string	"used"
.LASF147:
	.string	"basewid"
.LASF365:
	.string	"kb_t"
.LASF112:
	.string	"s3senid_t"
.LASF145:
	.string	"mdef_t"
.LASF299:
	.string	"root"
.LASF170:
	.string	"dict"
.LASF24:
	.string	"_IO_save_end"
.LASF258:
	.string	"codemap"
.LASF54:
	.string	"uint32"
.LASF210:
	.string	"tg_segbase"
.LASF323:
	.string	"comssid_active"
.LASF134:
	.string	"n_sen"
.LASF293:
	.string	"comsen"
.LASF352:
	.string	"tm_srch"
.LASF165:
	.string	"comsseq"
.LASF358:
	.string	"tot_wd_exit"
.LASF17:
	.string	"_IO_write_base"
.LASF371:
	.string	"nutt"
.LASF148:
	.string	"comp"
.LASF269:
	.string	"state"
.LASF33:
	.string	"_lock"
.LASF370:
	.string	"iutt"
.LASF220:
	.string	"n_bg_score"
.LASF273:
	.string	"type"
.LASF243:
	.string	"vqsize"
.LASF194:
	.string	"lwid"
.LASF22:
	.string	"_IO_save_base"
.LASF89:
	.string	"lscr"
.LASF341:
	.string	"pl_window_effective"
.LASF104:
	.string	"mgau_model_t"
.LASF325:
	.string	"rec_sen_active"
.LASF53:
	.string	"int8"
.LASF84:
	.string	"window_size"
.LASF26:
	.string	"_chain"
.LASF218:
	.string	"n_bg_fill"
.LASF381:
	.string	"cepfile"
.LASF281:
	.string	"children"
.LASF288:
	.string	"wbeam"
.LASF30:
	.string	"_cur_column"
.LASF99:
	.string	"mgau"
.LASF373:
	.string	"endutt"
.LASF230:
	.string	"lmclass"
.LASF306:
	.string	"n_active"
.LASF319:
	.string	"n_lextrans"
.LASF169:
	.string	"dict2pid_t"
.LASF80:
	.string	"cepsize"
.LASF96:
	.string	"n_mgau"
.LASF309:
	.string	"wbest"
.LASF91:
	.string	"partialhyp_t"
.LASF121:
	.string	"ssid"
.LASF250:
	.string	"subvq_t"
.LASF6:
	.string	"long int"
.LASF97:
	.string	"max_comp"
.LASF333:
	.string	"beam"
.LASF245:
	.string	"gautbl"
.LASF151:
	.string	"ciphone_str"
.LASF70:
	.string	"hash_table_t"
.LASF264:
	.string	"n_alloclm"
.LASF43:
	.string	"_IO_marker"
.LASF57:
	.string	"float32"
.LASF393:
	.string	"main"
.LASF267:
	.string	"history"
.LASF321:
	.string	"feat"
.LASF215:
	.string	"bgoff"
.LASF137:
	.string	"ciphone"
.LASF122:
	.string	"tmat"
.LASF110:
	.string	"s3lmwid_t"
.LASF224:
	.string	"n_tg_score"
.LASF78:
	.string	"ptmr_t"
.LASF158:
	.string	"finishwid"
.LASF82:
	.string	"n_stream"
.LASF225:
	.string	"n_tg_bo"
.LASF4:
	.string	"signed char"
.LASF268:
	.string	"hmm_state_t"
.LASF295:
	.string	"ssid_lc"
.LASF42:
	.string	"_IO_FILE"
.LASF380:
	.string	"filename"
.LASF315:
	.string	"n_lextree"
.LASF248:
	.string	"gauscore"
.LASF305:
	.string	"next_active"
.LASF124:
	.string	"phone_t"
.LASF276:
	.string	"vh_lmstate_t"
.LASF1:
	.string	"unsigned char"
.LASF166:
	.string	"comwt"
.LASF330:
	.string	"phn_heur_list"
.LASF188:
	.string	"tg_t"
.LASF190:
	.string	"membg_t"
.LASF167:
	.string	"n_comstate"
.LASF349:
	.string	"hmm_hist_bins"
.LASF226:
	.string	"n_tgcache_hit"
.LASF266:
	.string	"score"
.LASF119:
	.string	"filler"
.LASF157:
	.string	"startwid"
.LASF204:
	.string	"bg_seg_sz"
.LASF337:
	.string	"svq4svq"
.LASF67:
	.string	"table"
.LASF334:
	.string	"ds_ratio"
.LASF318:
	.string	"fillertree"
.LASF11:
	.string	"char"
.LASF335:
	.string	"cond_ds"
.LASF182:
	.string	"firstbg"
.LASF109:
	.string	"s3wid_t"
.LASF255:
	.string	"n_featlen"
.LASF94:
	.string	"mixw"
.LASF178:
	.string	"wordlist"
.LASF360:
	.string	"matchsegfp"
.LASF241:
	.string	"origsize"
.LASF234:
	.string	"lmset_s"
.LASF235:
	.string	"lmset_t"
.LASF391:
	.string	"_IO_lock_t"
.LASF154:
	.string	"filler_start"
.LASF127:
	.string	"ph_lc_s"
.LASF129:
	.string	"ph_lc_t"
.LASF247:
	.string	"vqdist"
.LASF296:
	.string	"composite"
.LASF324:
	.string	"sen_active"
.LASF359:
	.string	"matchfp"
.LASF168:
	.string	"n_comsseq"
.LASF171:
	.string	"prob"
.LASF300:
	.string	"lextree_lcroot_t"
.LASF275:
	.string	"lm3g"
.LASF14:
	.string	"_IO_read_ptr"
.LASF164:
	.string	"comstate"
.LASF140:
	.string	"n_sseq"
.LASF361:
	.string	"hyp_segs"
.LASF46:
	.string	"_pos"
.LASF125:
	.string	"ph_rc_s"
.LASF126:
	.string	"ph_rc_t"
.LASF274:
	.string	"hyp_t"
.LASF291:
	.string	"lwidlist"
.LASF101:
	.string	"frm_sen_eval"
.LASF155:
	.string	"filler_end"
.LASF25:
	.string	"_markers"
.LASF348:
	.string	"hmm_hist"
.LASF163:
	.string	"single_lc"
.LASF141:
	.string	"cd2cisen"
.LASF172:
	.string	"fillpen_t"
.LASF207:
	.string	"bgprob"
.LASF356:
	.string	"tot_gau_eval"
.LASF106:
	.string	"s3pid_t"
.LASF231:
	.string	"n_lmclass"
.LASF302:
	.string	"n_lc"
.LASF304:
	.string	"active"
.LASF219:
	.string	"n_bg_inmem"
.LASF363:
	.string	"hyp_str"
.LASF392:
	.string	"anytype_s"
.LASF59:
	.string	"anytype_t"
.LASF263:
	.string	"n_lm"
.LASF375:
	.string	"nhypwds"
.LASF34:
	.string	"_offset"
.LASF351:
	.string	"tm_sen"
.LASF222:
	.string	"n_tg_fill"
.LASF206:
	.string	"tginfo"
.LASF237:
	.string	"tmat_t"
.LASF199:
	.string	"max_ug"
.LASF0:
	.string	"long unsigned int"
.LASF183:
	.string	"ug_t"
.LASF384:
	.string	"nbeams"
.LASF130:
	.string	"n_ciphone"
.LASF332:
	.string	"bestwordscore"
.LASF28:
	.string	"_flags2"
.LASF191:
	.string	"tginfo_s"
.LASF193:
	.string	"tginfo_t"
.LASF16:
	.string	"_IO_read_base"
.LASF339:
	.string	"pl_window"
.LASF76:
	.string	"start_cpu"
.LASF294:
	.string	"ascr_t"
.LASF149:
	.string	"dictword_t"
.LASF251:
	.string	"gs_s"
.LASF259:
	.string	"gs_t"
.LASF41:
	.string	"_unused2"
.LASF272:
	.string	"vhid"
.LASF261:
	.string	"lmset"
.LASF377:
	.string	"argsfile"
.LASF108:
	.string	"s3tmatid_t"
.LASF322:
	.string	"ssid_active"
.LASF229:
	.string	"dict_size"
.LASF338:
	.string	"ci_pbeam"
.LASF366:
	.string	"argc"
.LASF29:
	.string	"_old_offset"
.LASF223:
	.string	"n_tg_inmem"
.LASF113:
	.string	"WORD_POSN_BEGIN"
.LASF367:
	.string	"argv"
.LASF118:
	.string	"word_posn_t"
.LASF213:
	.string	"n_tgbowt"
.LASF327:
	.string	"rec_bst_senscr"
.LASF303:
	.string	"n_node"
.LASF173:
	.string	"lmclass_word_s"
.LASF176:
	.string	"lmclass_word_t"
.LASF362:
	.string	"hyp_seglen"
.LASF47:
	.string	"long long int"
.LASF239:
	.string	"n_gau"
.LASF50:
	.string	"double"
.LASF161:
	.string	"internal"
.LASF144:
	.string	"wpos_ci_lclist"
.LASF379:
	.string	"indir"
.LASF19:
	.string	"_IO_write_end"
.LASF200:
	.string	"wordstr"
.LASF313:
	.string	"beam_t"
.LASF346:
	.string	"utt_sen_eval"
.LASF314:
	.string	"kbcore"
.LASF103:
	.string	"gau_type"
.LASF88:
	.string	"ascr"
.LASF271:
	.string	"hmm_t"
.LASF49:
	.string	"float"
.LASF142:
	.string	"sen2cimap"
.LASF254:
	.string	"n_density"
.LASF329:
	.string	"cache_best_list"
.LASF77:
	.string	"start_elapsed"
.LASF20:
	.string	"_IO_buf_base"
.LASF244:
	.string	"featdim"
.LASF3:
	.string	"unsigned int"
.LASF116:
	.string	"WORD_POSN_INTERNAL"
.LASF160:
	.string	"dict_t"
.LASF114:
	.string	"WORD_POSN_END"
.LASF372:
	.string	"buflen"
.LASF195:
	.string	"lm_tgcache_entry_t"
.LASF256:
	.string	"n_mbyte"
.LASF297:
	.string	"frame"
.LASF95:
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
.LASF378:
	.string	"ctlfile"
.LASF387:
	.string	"beams"
.LASF72:
	.string	"t_cpu"
.LASF249:
	.string	"mgau_sl"
.LASF369:
	.string	"uttsize"
.LASF292:
	.string	"vithist_t"
.LASF390:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/482.sphinx3/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF136:
	.string	"ciphone_ht"
.LASF282:
	.string	"vh_lms2vh_t"
.LASF13:
	.string	"_flags"
.LASF242:
	.string	"n_sv"
.LASF184:
	.string	"probid"
.LASF287:
	.string	"bghist"
.LASF75:
	.string	"t_tot_elapsed"
.LASF40:
	.string	"_mode"
.LASF350:
	.string	"hmm_hist_binsize"
.LASF336:
	.string	"gs4gs"
.LASF388:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF209:
	.string	"tgbowt"
.LASF320:
	.string	"vithist"
.LASF115:
	.string	"WORD_POSN_SINGLE"
.LASF310:
	.string	"lextree_t"
.LASF192:
	.string	"n_tg"
.LASF150:
	.string	"mdef"
.LASF246:
	.string	"subvec"
.LASF342:
	.string	"pl_beam"
.LASF326:
	.string	"rec_bstcid"
.LASF238:
	.string	"arraysize_t"
.LASF316:
	.string	"ugtree"
.LASF90:
	.string	"word"
.LASF135:
	.string	"n_tmat"
.LASF12:
	.string	"FILE"
.LASF81:
	.string	"cepsize_used"
.LASF197:
	.string	"n_ug"
.LASF65:
	.string	"hash_entry_s"
.LASF66:
	.string	"hash_entry_t"
.LASF217:
	.string	"tgcache"
.LASF283:
	.string	"entry"
.LASF83:
	.string	"stream_len"
.LASF159:
	.string	"silwid"
.LASF260:
	.string	"dict2pid"
.LASF354:
	.string	"tot_fr"
.LASF68:
	.string	"size"
.LASF48:
	.string	"long long unsigned int"
.LASF92:
	.string	"n_comp"
.LASF389:
	.string	"spec_main_live_pretend.c"
.LASF100:
	.string	"distfloor"
.LASF331:
	.string	"skip_count"
.LASF240:
	.string	"vector_gautbl_t"
.LASF8:
	.string	"__off_t"
.LASF227:
	.string	"access_type"
.LASF105:
	.string	"s3cipid_t"
.LASF93:
	.string	"mean"
.LASF120:
	.string	"ciphone_t"
.LASF216:
	.string	"tgoff"
.LASF279:
	.string	"lmstate"
.LASF128:
	.string	"rclist"
.LASF344:
	.string	"uttid"
.LASF64:
	.string	"glist_t"
.LASF79:
	.string	"feat_s"
.LASF87:
	.string	"feat_t"
.LASF364:
	.string	"hyp_strlen"
.LASF284:
	.string	"frame_start"
.LASF85:
	.string	"varnorm"
.LASF60:
	.string	"gnode_s"
.LASF63:
	.string	"gnode_t"
.LASF385:
	.string	"beamsfp"
.LASF74:
	.string	"t_tot_cpu"
.LASF198:
	.string	"n_bg"
.LASF23:
	.string	"_IO_backup_base"
.LASF308:
	.string	"best"
.LASF32:
	.string	"_shortbuf"
.LASF317:
	.string	"ugtreeMulti"
.LASF196:
	.string	"lm_s"
.LASF233:
	.string	"lm_t"
.LASF174:
	.string	"dictwid"
.LASF162:
	.string	"ldiph_lc"
.LASF307:
	.string	"n_next_active"
.LASF123:
	.string	"wpos"
.LASF86:
	.string	"compute_feat"
.LASF44:
	.string	"_next"
.LASF280:
	.string	"vithist_entry_t"
.LASF9:
	.string	"__off64_t"
.LASF368:
	.string	"samps"
.LASF382:
	.string	"filesize"
.LASF138:
	.string	"phone"
.LASF203:
	.string	"log_bg_seg_sz"
.LASF156:
	.string	"comp_head"
.LASF133:
	.string	"n_ci_sen"
.LASF186:
	.string	"firsttg"
.LASF98:
	.string	"veclen"
.LASF21:
	.string	"_IO_buf_end"
.LASF201:
	.string	"startlwid"
.LASF376:
	.string	"nsamp"
.LASF252:
	.string	"n_feat"
.LASF180:
	.string	"lmlog_t"
.LASF71:
	.string	"name"
.LASF102:
	.string	"frm_gau_eval"
.LASF56:
	.string	"uint8"
.LASF285:
	.string	"n_entry"
.LASF5:
	.string	"short int"
.LASF374:
	.string	"blksize"
.LASF185:
	.string	"bowtid"
.LASF175:
	.string	"LOGprob"
.LASF143:
	.string	"ciphone2n_cd_sen"
.LASF290:
	.string	"lms2vh_root"
.LASF289:
	.string	"bestvh"
.LASF111:
	.string	"s3frmid_t"
.LASF132:
	.string	"n_emit_state"
.LASF31:
	.string	"_vtable_offset"
.LASF311:
	.string	"subvq"
.LASF312:
	.string	"ptrans"
.LASF257:
	.string	"codeword"
.LASF343:
	.string	"wend_beam"
.LASF286:
	.string	"n_frm"
.LASF278:
	.string	"valid"
.LASF211:
	.string	"n_bgprob"
.LASF52:
	.string	"int16"
.LASF355:
	.string	"tot_sen_eval"
.LASF107:
	.string	"s3ssid_t"
.LASF262:
	.string	"fillpen"
.LASF15:
	.string	"_IO_read_end"
.LASF212:
	.string	"n_tgprob"
.LASF73:
	.string	"t_elapsed"
.LASF232:
	.string	"inclass_ugscore"
.LASF181:
	.string	"bowt"
.LASF236:
	.string	"n_state"
.LASF69:
	.string	"nocase"
.LASF177:
	.string	"lmclass_s"
.LASF179:
	.string	"lmclass_t"
.LASF27:
	.string	"_fileno"
.LASF117:
	.string	"WORD_POSN_UNDEFINED"
.LASF152:
	.string	"max_words"
.LASF270:
	.string	"bestscore"
.LASF353:
	.string	"tm_ovrhd"
.LASF58:
	.string	"float64"
.LASF228:
	.string	"dict2lmwid"
.LASF131:
	.string	"n_phone"
.LASF2:
	.string	"short unsigned int"
.LASF386:
	.string	"stdout"
.LASF205:
	.string	"membg"
.LASF301:
	.string	"lcroot"
.LASF51:
	.string	"int32"
.LASF214:
	.string	"byteswap"
.LASF18:
	.string	"_IO_write_ptr"
.LASF187:
	.string	"bg_t"
.LASF328:
	.string	"cache_ci_senscr"
.LASF202:
	.string	"finishlwid"
.LASF153:
	.string	"n_word"
.LASF340:
	.string	"pl_window_start"
.LASF146:
	.string	"pronlen"
.LASF265:
	.string	"kbcore_t"
.LASF383:
	.string	"parthyp"
.LASF277:
	.string	"pred"
.LASF62:
	.string	"next"
.LASF221:
	.string	"n_bg_bo"
.LASF61:
	.string	"data"
.LASF55:
	.string	"uint16"
.LASF345:
	.string	"utt_hmm_eval"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
