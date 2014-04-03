	.file	"sqio.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 sqio.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.string	"ABCDEFGHIKLMNPQRSTVWXYZ*"
	.data
	.align 8
	.type	aminos, @object
	.size	aminos, 8
aminos:
	.quad	.LC0
	.section	.rodata
.LC1:
	.string	"ACGTUN"
	.data
	.align 8
	.type	primenuc, @object
	.size	primenuc, 8
primenuc:
	.quad	.LC1
	.section	.rodata
.LC2:
	.string	"EFIPQZ"
	.data
	.align 8
	.type	protonly, @object
	.size	protonly, 8
protonly:
	.quad	.LC2
	.text
	.globl	SeqfileOpen
	.type	SeqfileOpen, @function
SeqfileOpen:
.LFB2:
	.file 1 "sqio.c"
	.loc 1 88 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# filename, filename
	movl	%esi, -12(%rbp)	# format, format
	movq	%rdx, -24(%rbp)	# env, env
	.loc 1 89 0
	movq	-24(%rbp), %rdx	# env, tmp61
	movl	-12(%rbp), %esi	# format, tmp62
	movq	-8(%rbp), %rax	# filename, tmp63
	movl	$-1, %ecx	#,
	movq	%rax, %rdi	# tmp63,
	call	seqfile_open	#
	.loc 1 90 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	SeqfileOpen, .-SeqfileOpen
	.globl	SeqfileOpenForIndexing
	.type	SeqfileOpenForIndexing, @function
SeqfileOpenForIndexing:
.LFB3:
	.loc 1 93 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# filename, filename
	movl	%esi, -12(%rbp)	# format, format
	movq	%rdx, -24(%rbp)	# env, env
	movl	%ecx, -16(%rbp)	# ssimode, ssimode
	.loc 1 94 0
	movl	-16(%rbp), %ecx	# ssimode, tmp61
	movq	-24(%rbp), %rdx	# env, tmp62
	movl	-12(%rbp), %esi	# format, tmp63
	movq	-8(%rbp), %rax	# filename, tmp64
	movq	%rax, %rdi	# tmp64,
	call	seqfile_open	#
	.loc 1 95 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	SeqfileOpenForIndexing, .-SeqfileOpenForIndexing
	.section	.rodata
.LC3:
	.string	"sqio.c"
.LC4:
	.string	"-"
.LC5:
	.string	"[STDIN]"
.LC6:
	.string	"r"
	.align 8
.LC7:
	.string	"Can't autodetect sequence file format from a stdin or gzip pipe"
	.align 8
.LC8:
	.string	"Can't determine format of sequence file %s"
	.align 8
.LC9:
	.string	"Failed to read any alignment data from file %s"
	.text
	.type	seqfile_open, @function
seqfile_open:
.LFB4:
	.loc 1 98 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# filename, filename
	movl	%esi, -28(%rbp)	# format, format
	movq	%rdx, -40(%rbp)	# env, env
	movl	%ecx, -32(%rbp)	# ssimode, ssimode
	.loc 1 101 0
	movl	$176, %edx	#,
	movl	$101, %esi	#,
	movl	$.LC3, %edi	#,
	call	sre_malloc	#
	movq	%rax, -8(%rbp)	# tmp93, dbfp
	.loc 1 103 0
	movq	-8(%rbp), %rax	# dbfp, tmp94
	movl	-32(%rbp), %edx	# ssimode, tmp95
	movl	%edx, 36(%rax)	# tmp95, dbfp_3->ssimode
	.loc 1 104 0
	movq	-8(%rbp), %rax	# dbfp, tmp96
	movl	$-1, 88(%rax)	#, dbfp_3->rpl
	.loc 1 105 0
	movq	-8(%rbp), %rax	# dbfp, tmp97
	movl	$0, 92(%rax)	#, dbfp_3->lastrpl
	.loc 1 106 0
	movq	-8(%rbp), %rax	# dbfp, tmp98
	movl	$0, 96(%rax)	#, dbfp_3->maxrpl
	.loc 1 107 0
	movq	-8(%rbp), %rax	# dbfp, tmp99
	movl	$-1, 100(%rax)	#, dbfp_3->bpl
	.loc 1 108 0
	movq	-8(%rbp), %rax	# dbfp, tmp100
	movl	$0, 104(%rax)	#, dbfp_3->lastbpl
	.loc 1 109 0
	movq	-8(%rbp), %rax	# dbfp, tmp101
	movl	$0, 108(%rax)	#, dbfp_3->maxbpl
	.loc 1 120 0
	movq	-24(%rbp), %rax	# filename, tmp102
	movl	$.LC4, %esi	#,
	movq	%rax, %rdi	# tmp102,
	call	strcmp	#
	testl	%eax, %eax	# D.8006
	jne	.L6	#,
	.loc 1 122 0
	movq	stdin(%rip), %rdx	# stdin, stdin.0
	movq	-8(%rbp), %rax	# dbfp, tmp103
	movq	%rdx, (%rax)	# stdin.0, dbfp_3->f
	.loc 1 123 0
	movq	-8(%rbp), %rax	# dbfp, tmp104
	movl	$1, 152(%rax)	#, dbfp_3->do_stdin
	.loc 1 124 0
	movq	-8(%rbp), %rax	# dbfp, tmp105
	movl	$0, 148(%rax)	#, dbfp_3->do_gzip
	.loc 1 125 0
	movl	$-1, %esi	#,
	movl	$.LC5, %edi	#,
	call	sre_strdup	#
	movq	-8(%rbp), %rdx	# dbfp, tmp106
	movq	%rax, 8(%rdx)	# D.8007, dbfp_3->fname
	jmp	.L7	#
.L6:
	.loc 1 154 0
	movq	-24(%rbp), %rax	# filename, tmp107
	movl	$.LC6, %esi	#,
	movq	%rax, %rdi	# tmp107,
	call	fopen	#
	movq	-8(%rbp), %rdx	# dbfp, tmp108
	movq	%rax, (%rdx)	# D.8008, dbfp_3->f
	movq	-8(%rbp), %rax	# dbfp, tmp109
	movq	(%rax), %rax	# dbfp_3->f, D.8008
	testq	%rax, %rax	# D.8008
	jne	.L8	#,
	.loc 1 155 0 discriminator 1
	movq	-40(%rbp), %rcx	# env, tmp110
	movq	-24(%rbp), %rax	# filename, tmp111
	movl	$0, %edx	#,
	movq	%rcx, %rsi	# tmp110,
	movq	%rax, %rdi	# tmp111,
	call	EnvFileOpen	#
	movq	-8(%rbp), %rdx	# dbfp, tmp112
	movq	%rax, (%rdx)	# D.8008, dbfp_3->f
	movq	-8(%rbp), %rax	# dbfp, tmp113
	movq	(%rax), %rax	# dbfp_3->f, D.8008
	.loc 1 154 0 discriminator 1
	testq	%rax, %rax	# D.8008
	jne	.L8	#,
	.loc 1 156 0
	movl	$0, %eax	#, D.8005
	jmp	.L9	#
.L8:
	.loc 1 158 0
	movq	-8(%rbp), %rax	# dbfp, tmp114
	movl	$0, 152(%rax)	#, dbfp_3->do_stdin
	.loc 1 159 0
	movq	-8(%rbp), %rax	# dbfp, tmp115
	movl	$0, 148(%rax)	#, dbfp_3->do_gzip
	.loc 1 160 0
	movq	-24(%rbp), %rax	# filename, tmp116
	movl	$-1, %esi	#,
	movq	%rax, %rdi	# tmp116,
	call	sre_strdup	#
	movq	-8(%rbp), %rdx	# dbfp, tmp117
	movq	%rax, 8(%rdx)	# D.8007, dbfp_3->fname
.L7:
	.loc 1 167 0
	cmpl	$0, -28(%rbp)	#, format
	jne	.L10	#,
	.loc 1 169 0
	movq	-8(%rbp), %rax	# dbfp, tmp118
	movl	152(%rax), %eax	# dbfp_3->do_stdin, D.8006
	cmpl	$1, %eax	#, D.8006
	je	.L11	#,
	.loc 1 169 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# dbfp, tmp119
	movl	148(%rax), %eax	# dbfp_3->do_gzip, D.8006
	testl	%eax, %eax	# D.8006
	je	.L12	#,
.L11:
	.loc 1 170 0 is_stmt 1
	movl	$.LC7, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L12:
	.loc 1 171 0
	movq	-8(%rbp), %rax	# dbfp, tmp120
	movq	(%rax), %rax	# dbfp_3->f, D.8008
	movq	%rax, %rdi	# D.8008,
	call	SeqfileFormat	#
	movl	%eax, -28(%rbp)	# tmp121, format
	.loc 1 172 0
	cmpl	$0, -28(%rbp)	#, format
	jne	.L10	#,
	.loc 1 173 0
	movq	-8(%rbp), %rax	# dbfp, tmp122
	movq	8(%rax), %rax	# dbfp_3->fname, D.8007
	movq	%rax, %rsi	# D.8007,
	movl	$.LC8, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L10:
	.loc 1 179 0
	movq	-8(%rbp), %rax	# dbfp, tmp123
	movq	$0, 160(%rax)	#, dbfp_3->msa
	.loc 1 180 0
	movq	-8(%rbp), %rax	# dbfp, tmp124
	movq	$0, 168(%rax)	#, dbfp_3->afp
	.loc 1 181 0
	movq	-8(%rbp), %rax	# dbfp, tmp125
	movl	-28(%rbp), %edx	# format, tmp126
	movl	%edx, 144(%rax)	# tmp126, dbfp_3->format
	.loc 1 182 0
	movq	-8(%rbp), %rax	# dbfp, tmp127
	movl	$0, 16(%rax)	#, dbfp_3->linenumber
	.loc 1 183 0
	movq	-8(%rbp), %rax	# dbfp, tmp128
	movq	$0, 24(%rax)	#, dbfp_3->buf
	.loc 1 184 0
	movq	-8(%rbp), %rax	# dbfp, tmp129
	movl	$0, 32(%rax)	#, dbfp_3->buflen
	.loc 1 185 0
	cmpl	$100, -28(%rbp)	#, format
	jle	.L13	#,
	.loc 1 190 0
	movl	$64, %edx	#,
	movl	$190, %esi	#,
	movl	$.LC3, %edi	#,
	call	sre_malloc	#
	movq	-8(%rbp), %rdx	# dbfp, tmp130
	movq	%rax, 168(%rdx)	# D.8009, dbfp_3->afp
	.loc 1 191 0
	movq	-8(%rbp), %rax	# dbfp, tmp131
	movq	168(%rax), %rax	# dbfp_3->afp, D.8010
	movq	-8(%rbp), %rdx	# dbfp, tmp132
	movq	(%rdx), %rdx	# dbfp_3->f, D.8008
	movq	%rdx, (%rax)	# D.8008, _23->f
	.loc 1 192 0
	movq	-8(%rbp), %rax	# dbfp, tmp133
	movq	168(%rax), %rax	# dbfp_3->afp, D.8010
	movq	-8(%rbp), %rdx	# dbfp, tmp134
	movl	152(%rdx), %edx	# dbfp_3->do_stdin, D.8006
	movl	%edx, 52(%rax)	# D.8006, _25->do_stdin
	.loc 1 193 0
	movq	-8(%rbp), %rax	# dbfp, tmp135
	movq	168(%rax), %rax	# dbfp_3->afp, D.8010
	movq	-8(%rbp), %rdx	# dbfp, tmp136
	movl	148(%rdx), %edx	# dbfp_3->do_gzip, D.8006
	movl	%edx, 48(%rax)	# D.8006, _27->do_gzip
	.loc 1 194 0
	movq	-8(%rbp), %rax	# dbfp, tmp137
	movq	168(%rax), %rax	# dbfp_3->afp, D.8010
	movq	-8(%rbp), %rdx	# dbfp, tmp138
	movq	8(%rdx), %rdx	# dbfp_3->fname, D.8007
	movq	%rdx, 8(%rax)	# D.8007, _29->fname
	.loc 1 195 0
	movq	-8(%rbp), %rax	# dbfp, tmp139
	movq	168(%rax), %rax	# dbfp_3->afp, D.8010
	movq	-8(%rbp), %rdx	# dbfp, tmp140
	movl	144(%rdx), %edx	# dbfp_3->format, D.8006
	movl	%edx, 56(%rax)	# D.8006, _31->format
	.loc 1 196 0
	movq	-8(%rbp), %rax	# dbfp, tmp141
	movq	168(%rax), %rax	# dbfp_3->afp, D.8010
	movq	-8(%rbp), %rdx	# dbfp, tmp142
	movl	16(%rdx), %edx	# dbfp_3->linenumber, D.8006
	movl	%edx, 16(%rax)	# D.8006, _33->linenumber
	.loc 1 197 0
	movq	-8(%rbp), %rax	# dbfp, tmp143
	movq	168(%rax), %rax	# dbfp_3->afp, D.8010
	movq	$0, 24(%rax)	#, _35->buf
	.loc 1 198 0
	movq	-8(%rbp), %rax	# dbfp, tmp144
	movq	168(%rax), %rax	# dbfp_3->afp, D.8010
	movl	$0, 32(%rax)	#, _36->buflen
	.loc 1 200 0
	movq	-8(%rbp), %rax	# dbfp, tmp145
	movq	168(%rax), %rax	# dbfp_3->afp, D.8010
	movq	%rax, %rdi	# D.8010,
	call	MSAFileRead	#
	movq	-8(%rbp), %rdx	# dbfp, tmp146
	movq	%rax, 160(%rdx)	# D.8011, dbfp_3->msa
	movq	-8(%rbp), %rax	# dbfp, tmp147
	movq	160(%rax), %rax	# dbfp_3->msa, D.8011
	testq	%rax, %rax	# D.8011
	jne	.L14	#,
	.loc 1 201 0
	movq	-8(%rbp), %rax	# dbfp, tmp148
	movq	8(%rax), %rax	# dbfp_3->fname, D.8007
	movq	%rax, %rsi	# D.8007,
	movl	$.LC9, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L14:
	.loc 1 204 0
	movq	-8(%rbp), %rax	# dbfp, tmp149
	movq	160(%rax), %rax	# dbfp_3->msa, D.8011
	movl	$0, 352(%rax)	#, _41->lastidx
	.loc 1 206 0
	movq	-8(%rbp), %rax	# dbfp, D.8005
	jmp	.L9	#
.L13:
	.loc 1 211 0
	movq	-8(%rbp), %rax	# dbfp, tmp150
	movq	%rax, %rdi	# tmp150,
	call	SeqfileGetLine	#
	.loc 1 212 0
	movq	-8(%rbp), %rax	# dbfp, D.8005
.L9:
	.loc 1 213 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	seqfile_open, .-seqfile_open
	.section	.rodata
	.align 8
.LC10:
	.string	"SeqfilePosition() failed: in a nonrewindable data file or stream"
	.align 8
.LC11:
	.string	"SSISetFilePosition failed, but that shouldn't happen."
	.text
	.globl	SeqfilePosition
	.type	SeqfilePosition, @function
SeqfilePosition:
.LFB5:
	.loc 1 222 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# sqfp, sqfp
	movq	%rsi, -16(%rbp)	# offset, offset
	.loc 1 223 0
	movq	-8(%rbp), %rax	# sqfp, tmp64
	movl	152(%rax), %eax	# sqfp_1(D)->do_stdin, D.8019
	testl	%eax, %eax	# D.8019
	jne	.L16	#,
	.loc 1 223 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# sqfp, tmp65
	movl	148(%rax), %eax	# sqfp_1(D)->do_gzip, D.8019
	testl	%eax, %eax	# D.8019
	jne	.L16	#,
	movq	-8(%rbp), %rax	# sqfp, tmp66
	movl	144(%rax), %eax	# sqfp_1(D)->format, D.8019
	cmpl	$100, %eax	#, D.8019
	jle	.L17	#,
.L16:
	.loc 1 224 0 is_stmt 1
	movl	$.LC10, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L17:
	.loc 1 226 0
	movq	-8(%rbp), %rax	# sqfp, tmp67
	movq	(%rax), %rax	# sqfp_1(D)->f, D.8020
	movq	-16(%rbp), %rdx	# offset, tmp68
	movq	%rdx, %rsi	# tmp68,
	movq	%rax, %rdi	# D.8020,
	call	SSISetFilePosition	#
	testl	%eax, %eax	# D.8019
	je	.L18	#,
	.loc 1 227 0
	movl	$.LC11, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L18:
	.loc 1 228 0
	movq	-8(%rbp), %rax	# sqfp, tmp69
	movq	%rax, %rdi	# tmp69,
	call	SeqfileGetLine	#
	.loc 1 229 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	SeqfilePosition, .-SeqfilePosition
	.section	.rodata
	.align 8
.LC12:
	.string	"SeqfileRewind() failed: in a nonrewindable data file or stream"
	.text
	.globl	SeqfileRewind
	.type	SeqfileRewind, @function
SeqfileRewind:
.LFB6:
	.loc 1 243 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# sqfp, sqfp
	.loc 1 244 0
	movq	-8(%rbp), %rax	# sqfp, tmp62
	movl	152(%rax), %eax	# sqfp_1(D)->do_stdin, D.8023
	testl	%eax, %eax	# D.8023
	jne	.L20	#,
	.loc 1 244 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# sqfp, tmp63
	movl	148(%rax), %eax	# sqfp_1(D)->do_gzip, D.8023
	testl	%eax, %eax	# D.8023
	je	.L21	#,
.L20:
	.loc 1 245 0 is_stmt 1
	movl	$.LC12, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L21:
	.loc 1 247 0
	movq	-8(%rbp), %rax	# sqfp, tmp64
	movq	(%rax), %rax	# sqfp_1(D)->f, D.8024
	movq	%rax, %rdi	# D.8024,
	call	rewind	#
	.loc 1 248 0
	movq	-8(%rbp), %rax	# sqfp, tmp65
	movq	%rax, %rdi	# tmp65,
	call	SeqfileGetLine	#
	.loc 1 249 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	SeqfileRewind, .-SeqfileRewind
	.globl	SeqfileLineParameters
	.type	SeqfileLineParameters, @function
SeqfileLineParameters:
.LFB7:
	.loc 1 271 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# V, V
	movq	%rsi, -16(%rbp)	# ret_bpl, ret_bpl
	movq	%rdx, -24(%rbp)	# ret_rpl, ret_rpl
	.loc 1 272 0
	movq	-8(%rbp), %rax	# V, tmp67
	movl	88(%rax), %eax	# V_1(D)->rpl, D.8026
	testl	%eax, %eax	# D.8026
	jle	.L23	#,
	.loc 1 272 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# V, tmp68
	movl	96(%rax), %edx	# V_1(D)->maxrpl, D.8026
	movq	-8(%rbp), %rax	# V, tmp69
	movl	88(%rax), %eax	# V_1(D)->rpl, D.8026
	cmpl	%eax, %edx	# D.8026, D.8026
	jne	.L23	#,
	.loc 1 273 0 is_stmt 1 discriminator 1
	movq	-8(%rbp), %rax	# V, tmp70
	movl	100(%rax), %eax	# V_1(D)->bpl, D.8026
	.loc 1 272 0 discriminator 1
	testl	%eax, %eax	# D.8026
	jle	.L23	#,
	.loc 1 273 0
	movq	-8(%rbp), %rax	# V, tmp71
	movl	108(%rax), %edx	# V_1(D)->maxbpl, D.8026
	movq	-8(%rbp), %rax	# V, tmp72
	movl	100(%rax), %eax	# V_1(D)->bpl, D.8026
	cmpl	%eax, %edx	# D.8026, D.8026
	jne	.L23	#,
	.loc 1 274 0
	movq	-8(%rbp), %rax	# V, tmp73
	movl	100(%rax), %edx	# V_1(D)->bpl, D.8026
	movq	-16(%rbp), %rax	# ret_bpl, tmp74
	movl	%edx, (%rax)	# D.8026, *ret_bpl_9(D)
	.loc 1 275 0
	movq	-8(%rbp), %rax	# V, tmp75
	movl	88(%rax), %edx	# V_1(D)->rpl, D.8026
	movq	-24(%rbp), %rax	# ret_rpl, tmp76
	movl	%edx, (%rax)	# D.8026, *ret_rpl_11(D)
	jmp	.L22	#
.L23:
	.loc 1 277 0
	movq	-16(%rbp), %rax	# ret_bpl, tmp77
	movl	$0, (%rax)	#, *ret_bpl_9(D)
	.loc 1 278 0
	movq	-24(%rbp), %rax	# ret_rpl, tmp78
	movl	$0, (%rax)	#, *ret_rpl_11(D)
.L22:
	.loc 1 280 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	SeqfileLineParameters, .-SeqfileLineParameters
	.globl	SeqfileClose
	.type	SeqfileClose, @function
SeqfileClose:
.LFB8:
	.loc 1 285 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# sqfp, sqfp
	.loc 1 291 0
	movq	-8(%rbp), %rax	# sqfp, tmp73
	movq	168(%rax), %rax	# sqfp_1(D)->afp, D.8027
	testq	%rax, %rax	# D.8027
	je	.L26	#,
	.loc 1 292 0
	movq	-8(%rbp), %rax	# sqfp, tmp74
	movq	160(%rax), %rax	# sqfp_1(D)->msa, D.8028
	testq	%rax, %rax	# D.8028
	je	.L27	#,
	.loc 1 292 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# sqfp, tmp75
	movq	160(%rax), %rax	# sqfp_1(D)->msa, D.8028
	movq	%rax, %rdi	# D.8028,
	call	MSAFree	#
.L27:
	.loc 1 293 0 is_stmt 1
	movq	-8(%rbp), %rax	# sqfp, tmp76
	movq	168(%rax), %rax	# sqfp_1(D)->afp, D.8027
	movq	24(%rax), %rax	# _5->buf, D.8029
	testq	%rax, %rax	# D.8029
	je	.L28	#,
	.loc 1 293 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# sqfp, tmp77
	movq	168(%rax), %rax	# sqfp_1(D)->afp, D.8027
	movq	24(%rax), %rax	# _7->buf, D.8029
	movq	%rax, %rdi	# D.8029,
	call	free	#
.L28:
	.loc 1 294 0 is_stmt 1
	movq	-8(%rbp), %rax	# sqfp, tmp78
	movq	168(%rax), %rax	# sqfp_1(D)->afp, D.8027
	movq	%rax, %rdi	# D.8027,
	call	free	#
	jmp	.L29	#
.L26:
	.loc 1 300 0
	movq	-8(%rbp), %rax	# sqfp, tmp79
	movl	152(%rax), %eax	# sqfp_1(D)->do_stdin, D.8030
	testl	%eax, %eax	# D.8030
	jne	.L29	#,
	.loc 1 300 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# sqfp, tmp80
	movq	(%rax), %rax	# sqfp_1(D)->f, D.8031
	movq	%rax, %rdi	# D.8031,
	call	fclose	#
.L29:
	.loc 1 301 0 is_stmt 1
	movq	-8(%rbp), %rax	# sqfp, tmp81
	movq	24(%rax), %rax	# sqfp_1(D)->buf, D.8029
	testq	%rax, %rax	# D.8029
	je	.L30	#,
	.loc 1 301 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# sqfp, tmp82
	movq	24(%rax), %rax	# sqfp_1(D)->buf, D.8029
	movq	%rax, %rdi	# D.8029,
	call	free	#
.L30:
	.loc 1 302 0 is_stmt 1
	movq	-8(%rbp), %rax	# sqfp, tmp83
	movq	8(%rax), %rax	# sqfp_1(D)->fname, D.8029
	testq	%rax, %rax	# D.8029
	je	.L31	#,
	.loc 1 302 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# sqfp, tmp84
	movq	8(%rax), %rax	# sqfp_1(D)->fname, D.8029
	movq	%rax, %rdi	# D.8029,
	call	free	#
.L31:
	.loc 1 303 0 is_stmt 1
	movq	-8(%rbp), %rax	# sqfp, tmp85
	movq	%rax, %rdi	# tmp85,
	call	free	#
	.loc 1 304 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	SeqfileClose, .-SeqfileClose
	.section	.rodata
.LC13:
	.string	"SSIGetFilePosition() failed"
	.text
	.type	SeqfileGetLine, @function
SeqfileGetLine:
.LFB9:
	.loc 1 319 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# V, V
	.loc 1 320 0
	movq	-8(%rbp), %rax	# V, tmp71
	movl	36(%rax), %eax	# V_1(D)->ssimode, D.8032
	testl	%eax, %eax	# D.8032
	js	.L33	#,
	.loc 1 321 0
	movq	-8(%rbp), %rax	# V, tmp72
	leaq	40(%rax), %rdx	#, D.8033
	movq	-8(%rbp), %rax	# V, tmp73
	movl	36(%rax), %ecx	# V_1(D)->ssimode, D.8032
	movq	-8(%rbp), %rax	# V, tmp74
	movq	(%rax), %rax	# V_1(D)->f, D.8034
	movl	%ecx, %esi	# D.8032,
	movq	%rax, %rdi	# D.8034,
	call	SSIGetFilePosition	#
	testl	%eax, %eax	# D.8032
	je	.L33	#,
	.loc 1 322 0
	movl	$.LC13, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L33:
	.loc 1 323 0
	movq	-8(%rbp), %rax	# V, tmp75
	movq	(%rax), %rax	# V_1(D)->f, D.8034
	movq	-8(%rbp), %rdx	# V, tmp76
	leaq	32(%rdx), %rsi	#, D.8035
	movq	-8(%rbp), %rdx	# V, tmp77
	leaq	24(%rdx), %rcx	#, D.8036
	movq	%rax, %rdx	# D.8034,
	movq	%rcx, %rdi	# D.8036,
	call	sre_fgets	#
	testq	%rax, %rax	# D.8037
	jne	.L34	#,
	.loc 1 324 0
	movq	-8(%rbp), %rax	# V, tmp78
	movq	24(%rax), %rax	# V_1(D)->buf, D.8037
	movb	$0, (%rax)	#, *_11
.L34:
	.loc 1 325 0
	movq	-8(%rbp), %rax	# V, tmp79
	movl	16(%rax), %eax	# V_1(D)->linenumber, D.8032
	leal	1(%rax), %edx	#, D.8032
	movq	-8(%rbp), %rax	# V, tmp80
	movl	%edx, 16(%rax)	# D.8032, V_1(D)->linenumber
	.loc 1 326 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	SeqfileGetLine, .-SeqfileGetLine
	.globl	FreeSequence
	.type	FreeSequence, @function
FreeSequence:
.LFB10:
	.loc 1 331 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# seq, seq
	movq	%rsi, -16(%rbp)	# sqinfo, sqinfo
	.loc 1 332 0
	cmpq	$0, -8(%rbp)	#, seq
	je	.L36	#,
	.loc 1 332 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# seq, tmp65
	movq	%rax, %rdi	# tmp65,
	call	free	#
.L36:
	.loc 1 333 0 is_stmt 1
	movq	-16(%rbp), %rax	# sqinfo, tmp66
	movl	(%rax), %eax	# sqinfo_2(D)->flags, D.8039
	andl	$512, %eax	#, D.8039
	testl	%eax, %eax	# D.8039
	je	.L37	#,
	.loc 1 333 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# sqinfo, tmp67
	movq	344(%rax), %rax	# sqinfo_2(D)->ss, D.8040
	movq	%rax, %rdi	# D.8040,
	call	free	#
.L37:
	.loc 1 334 0 is_stmt 1
	movq	-16(%rbp), %rax	# sqinfo, tmp68
	movl	(%rax), %eax	# sqinfo_2(D)->flags, D.8039
	andl	$1024, %eax	#, D.8039
	testl	%eax, %eax	# D.8039
	je	.L35	#,
	.loc 1 334 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# sqinfo, tmp69
	movq	352(%rax), %rax	# sqinfo_2(D)->sa, D.8040
	movq	%rax, %rdi	# D.8040,
	call	free	#
.L35:
	.loc 1 335 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	FreeSequence, .-FreeSequence
	.section	.rodata
.LC14:
	.string	" "
	.align 8
.LC15:
	.string	"Invalid flag %d to SetSeqinfoString()"
	.text
	.globl	SetSeqinfoString
	.type	SetSeqinfoString, @function
SetSeqinfoString:
.LFB11:
	.loc 1 339 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# sqinfo, sqinfo
	movq	%rsi, -32(%rbp)	# sptr, sptr
	movl	%edx, -36(%rbp)	# flag, flag
	.loc 1 344 0
	cmpq	$0, -32(%rbp)	#, sptr
	jne	.L40	#,
	.loc 1 344 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, D.8041
	jmp	.L41	#
.L40:
	.loc 1 346 0 is_stmt 1
	jmp	.L42	#
.L43:
	.loc 1 346 0 is_stmt 0 discriminator 2
	addq	$1, -32(%rbp)	#, sptr
.L42:
	.loc 1 346 0 discriminator 1
	movq	-32(%rbp), %rax	# sptr, tmp120
	movzbl	(%rax), %eax	# *sptr_1, D.8042
	cmpb	$32, %al	#, D.8042
	je	.L43	#,
	.loc 1 347 0 is_stmt 1
	movq	-32(%rbp), %rax	# sptr, tmp121
	movq	%rax, %rdi	# tmp121,
	call	strlen	#
	subl	$1, %eax	#, D.8044
	movl	%eax, -8(%rbp)	# D.8044, pos
	jmp	.L44	#
.L47:
	.loc 1 348 0
	call	__ctype_b_loc	#
	movq	(%rax), %rax	# *_12, D.8046
	movl	-8(%rbp), %edx	# pos, tmp122
	movslq	%edx, %rcx	# tmp122, D.8047
	movq	-32(%rbp), %rdx	# sptr, tmp123
	addq	%rcx, %rdx	# D.8047, D.8048
	movzbl	(%rdx), %edx	# *_15, D.8042
	movsbq	%dl, %rdx	# D.8042, D.8043
	addq	%rdx, %rdx	# D.8043
	addq	%rdx, %rax	# D.8043, D.8046
	movzwl	(%rax), %eax	# *_19, D.8049
	movzwl	%ax, %eax	# D.8049, D.8041
	andl	$8192, %eax	#, D.8041
	testl	%eax, %eax	# D.8041
	jne	.L45	#,
	.loc 1 348 0 is_stmt 0 discriminator 1
	jmp	.L46	#
.L45:
	.loc 1 347 0 is_stmt 1
	subl	$1, -8(%rbp)	#, pos
.L44:
	.loc 1 347 0 is_stmt 0 discriminator 1
	cmpl	$0, -8(%rbp)	#, pos
	jns	.L47	#,
.L46:
	.loc 1 349 0 is_stmt 1
	movl	-8(%rbp), %eax	# pos, tmp124
	cltq
	leaq	1(%rax), %rdx	#, D.8047
	movq	-32(%rbp), %rax	# sptr, tmp125
	addq	%rdx, %rax	# D.8047, D.8048
	movb	$0, (%rax)	#, *_26
	.loc 1 351 0
	movl	-36(%rbp), %eax	# flag, flag
	cmpl	$8, %eax	#, flag
	je	.L49	#,
	cmpl	$8, %eax	#, flag
	jg	.L50	#,
	cmpl	$2, %eax	#, flag
	je	.L51	#,
	cmpl	$4, %eax	#, flag
	je	.L52	#,
	cmpl	$1, %eax	#, flag
	je	.L53	#,
	jmp	.L48	#
.L50:
	cmpl	$32, %eax	#, flag
	je	.L54	#,
	cmpl	$256, %eax	#, flag
	je	.L55	#,
	cmpl	$16, %eax	#, flag
	je	.L56	#,
	jmp	.L48	#
.L53:
	.loc 1 353 0
	movq	-32(%rbp), %rax	# sptr, tmp127
	movzbl	(%rax), %eax	# *sptr_1, D.8042
	cmpb	$45, %al	#, D.8042
	je	.L57	#,
	.loc 1 355 0
	movq	-24(%rbp), %rax	# sqinfo, tmp128
	leaq	4(%rax), %rcx	#, D.8050
	movq	-32(%rbp), %rax	# sptr, tmp129
	movl	$63, %edx	#,
	movq	%rax, %rsi	# tmp129,
	movq	%rcx, %rdi	# D.8050,
	call	strncpy	#
	.loc 1 356 0
	movq	-24(%rbp), %rax	# sqinfo, tmp130
	movb	$0, 67(%rax)	#, sqinfo_29(D)->name
	.loc 1 357 0
	movq	-24(%rbp), %rax	# sqinfo, tmp131
	movl	(%rax), %eax	# sqinfo_29(D)->flags, D.8041
	orl	$1, %eax	#, D.8041
	movl	%eax, %edx	# D.8041, D.8041
	movq	-24(%rbp), %rax	# sqinfo, tmp132
	movl	%edx, (%rax)	# D.8041, sqinfo_29(D)->flags
	.loc 1 359 0
	jmp	.L58	#
.L57:
	jmp	.L58	#
.L51:
	.loc 1 362 0
	movq	-32(%rbp), %rax	# sptr, tmp133
	movzbl	(%rax), %eax	# *sptr_1, D.8042
	cmpb	$45, %al	#, D.8042
	je	.L59	#,
	.loc 1 364 0
	movq	-24(%rbp), %rax	# sqinfo, tmp134
	leaq	68(%rax), %rcx	#, D.8050
	movq	-32(%rbp), %rax	# sptr, tmp135
	movl	$63, %edx	#,
	movq	%rax, %rsi	# tmp135,
	movq	%rcx, %rdi	# D.8050,
	call	strncpy	#
	.loc 1 365 0
	movq	-24(%rbp), %rax	# sqinfo, tmp136
	movb	$0, 131(%rax)	#, sqinfo_29(D)->id
	.loc 1 366 0
	movq	-24(%rbp), %rax	# sqinfo, tmp137
	movl	(%rax), %eax	# sqinfo_29(D)->flags, D.8041
	orl	$2, %eax	#, D.8041
	movl	%eax, %edx	# D.8041, D.8041
	movq	-24(%rbp), %rax	# sqinfo, tmp138
	movl	%edx, (%rax)	# D.8041, sqinfo_29(D)->flags
	.loc 1 368 0
	jmp	.L58	#
.L59:
	jmp	.L58	#
.L52:
	.loc 1 371 0
	movq	-32(%rbp), %rax	# sptr, tmp139
	movzbl	(%rax), %eax	# *sptr_1, D.8042
	cmpb	$45, %al	#, D.8042
	je	.L60	#,
	.loc 1 373 0
	movq	-24(%rbp), %rax	# sqinfo, tmp140
	leaq	132(%rax), %rcx	#, D.8050
	movq	-32(%rbp), %rax	# sptr, tmp141
	movl	$63, %edx	#,
	movq	%rax, %rsi	# tmp141,
	movq	%rcx, %rdi	# D.8050,
	call	strncpy	#
	.loc 1 374 0
	movq	-24(%rbp), %rax	# sqinfo, tmp142
	movb	$0, 195(%rax)	#, sqinfo_29(D)->acc
	.loc 1 375 0
	movq	-24(%rbp), %rax	# sqinfo, tmp143
	movl	(%rax), %eax	# sqinfo_29(D)->flags, D.8041
	orl	$4, %eax	#, D.8041
	movl	%eax, %edx	# D.8041, D.8041
	movq	-24(%rbp), %rax	# sqinfo, tmp144
	movl	%edx, (%rax)	# D.8041, sqinfo_29(D)->flags
	.loc 1 377 0
	jmp	.L58	#
.L60:
	jmp	.L58	#
.L49:
	.loc 1 380 0
	movq	-32(%rbp), %rax	# sptr, tmp145
	movzbl	(%rax), %eax	# *sptr_1, D.8042
	cmpb	$45, %al	#, D.8042
	je	.L61	#,
	.loc 1 382 0
	movq	-24(%rbp), %rax	# sqinfo, tmp146
	movl	(%rax), %eax	# sqinfo_29(D)->flags, D.8041
	andl	$8, %eax	#, D.8041
	testl	%eax, %eax	# D.8041
	je	.L62	#,
	.loc 1 384 0
	movq	-24(%rbp), %rax	# sqinfo, tmp147
	addq	$196, %rax	#, D.8051
	movq	%rax, %rdi	# D.8051,
	call	strlen	#
	movl	%eax, -4(%rbp)	# D.8043, len
	.loc 1 385 0
	cmpl	$125, -4(%rbp)	#, len
	jg	.L64	#,
	.loc 1 387 0
	movl	$127, %eax	#, tmp148
	subl	-4(%rbp), %eax	# len, D.8041
	cltq
	movq	-24(%rbp), %rdx	# sqinfo, tmp149
	leaq	196(%rdx), %rcx	#, D.8051
	movq	%rax, %rdx	# D.8043,
	movl	$.LC14, %esi	#,
	movq	%rcx, %rdi	# D.8051,
	call	strncat	#
	addl	$1, -4(%rbp)	#, len
	.loc 1 388 0
	movl	$127, %eax	#, tmp150
	subl	-4(%rbp), %eax	# len, D.8041
	movslq	%eax, %rdx	# D.8041, D.8043
	movq	-24(%rbp), %rax	# sqinfo, tmp151
	leaq	196(%rax), %rcx	#, D.8051
	movq	-32(%rbp), %rax	# sptr, tmp152
	movq	%rax, %rsi	# tmp152,
	movq	%rcx, %rdi	# D.8051,
	call	strncat	#
	jmp	.L64	#
.L62:
	.loc 1 392 0
	movq	-24(%rbp), %rax	# sqinfo, tmp153
	leaq	196(%rax), %rcx	#, D.8051
	movq	-32(%rbp), %rax	# sptr, tmp154
	movl	$127, %edx	#,
	movq	%rax, %rsi	# tmp154,
	movq	%rcx, %rdi	# D.8051,
	call	strncpy	#
.L64:
	.loc 1 393 0
	movq	-24(%rbp), %rax	# sqinfo, tmp155
	movb	$0, 323(%rax)	#, sqinfo_29(D)->desc
	.loc 1 394 0
	movq	-24(%rbp), %rax	# sqinfo, tmp156
	movl	(%rax), %eax	# sqinfo_29(D)->flags, D.8041
	orl	$8, %eax	#, D.8041
	movl	%eax, %edx	# D.8041, D.8041
	movq	-24(%rbp), %rax	# sqinfo, tmp157
	movl	%edx, (%rax)	# D.8041, sqinfo_29(D)->flags
	.loc 1 396 0
	jmp	.L58	#
.L61:
	jmp	.L58	#
.L56:
	.loc 1 399 0
	movq	-32(%rbp), %rax	# sptr, tmp158
	movq	%rax, %rdi	# tmp158,
	call	IsInt	#
	testl	%eax, %eax	# D.8041
	jne	.L65	#,
	.loc 1 399 0 is_stmt 0 discriminator 1
	movl	$5, squid_errno(%rip)	#, squid_errno
	movl	$0, %eax	#, D.8041
	jmp	.L41	#
.L65:
	.loc 1 400 0 is_stmt 1
	movq	-32(%rbp), %rax	# sptr, tmp159
	movq	%rax, %rdi	# tmp159,
	call	atoi	#
	movq	-24(%rbp), %rdx	# sqinfo, tmp160
	movl	%eax, 328(%rdx)	# D.8041, sqinfo_29(D)->start
	.loc 1 401 0
	movq	-24(%rbp), %rax	# sqinfo, tmp161
	movl	328(%rax), %eax	# sqinfo_29(D)->start, D.8041
	testl	%eax, %eax	# D.8041
	je	.L66	#,
	.loc 1 401 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# sqinfo, tmp162
	movl	(%rax), %eax	# sqinfo_29(D)->flags, D.8041
	orl	$16, %eax	#, D.8041
	movl	%eax, %edx	# D.8041, D.8041
	movq	-24(%rbp), %rax	# sqinfo, tmp163
	movl	%edx, (%rax)	# D.8041, sqinfo_29(D)->flags
	.loc 1 402 0 is_stmt 1 discriminator 1
	jmp	.L58	#
.L66:
	.loc 1 402 0 is_stmt 0
	jmp	.L58	#
.L54:
	.loc 1 405 0 is_stmt 1
	movq	-32(%rbp), %rax	# sptr, tmp164
	movq	%rax, %rdi	# tmp164,
	call	IsInt	#
	testl	%eax, %eax	# D.8041
	jne	.L67	#,
	.loc 1 405 0 is_stmt 0 discriminator 1
	movl	$5, squid_errno(%rip)	#, squid_errno
	movl	$0, %eax	#, D.8041
	jmp	.L41	#
.L67:
	.loc 1 406 0 is_stmt 1
	movq	-32(%rbp), %rax	# sptr, tmp165
	movq	%rax, %rdi	# tmp165,
	call	atoi	#
	movq	-24(%rbp), %rdx	# sqinfo, tmp166
	movl	%eax, 332(%rdx)	# D.8041, sqinfo_29(D)->stop
	.loc 1 407 0
	movq	-24(%rbp), %rax	# sqinfo, tmp167
	movl	332(%rax), %eax	# sqinfo_29(D)->stop, D.8041
	testl	%eax, %eax	# D.8041
	je	.L68	#,
	.loc 1 407 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# sqinfo, tmp168
	movl	(%rax), %eax	# sqinfo_29(D)->flags, D.8041
	orl	$32, %eax	#, D.8041
	movl	%eax, %edx	# D.8041, D.8041
	movq	-24(%rbp), %rax	# sqinfo, tmp169
	movl	%edx, (%rax)	# D.8041, sqinfo_29(D)->flags
	.loc 1 408 0 is_stmt 1 discriminator 1
	jmp	.L58	#
.L68:
	.loc 1 408 0 is_stmt 0
	jmp	.L58	#
.L55:
	.loc 1 411 0 is_stmt 1
	movq	-32(%rbp), %rax	# sptr, tmp170
	movq	%rax, %rdi	# tmp170,
	call	IsInt	#
	testl	%eax, %eax	# D.8041
	jne	.L69	#,
	.loc 1 411 0 is_stmt 0 discriminator 1
	movl	$5, squid_errno(%rip)	#, squid_errno
	movl	$0, %eax	#, D.8041
	jmp	.L41	#
.L69:
	.loc 1 412 0 is_stmt 1
	movq	-32(%rbp), %rax	# sptr, tmp171
	movq	%rax, %rdi	# tmp171,
	call	atoi	#
	movq	-24(%rbp), %rdx	# sqinfo, tmp172
	movl	%eax, 336(%rdx)	# D.8041, sqinfo_29(D)->olen
	.loc 1 413 0
	movq	-24(%rbp), %rax	# sqinfo, tmp173
	movl	336(%rax), %eax	# sqinfo_29(D)->olen, D.8041
	testl	%eax, %eax	# D.8041
	je	.L70	#,
	.loc 1 413 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# sqinfo, tmp174
	movl	(%rax), %eax	# sqinfo_29(D)->flags, D.8041
	orb	$1, %ah	#, D.8041
	movl	%eax, %edx	# D.8041, D.8041
	movq	-24(%rbp), %rax	# sqinfo, tmp175
	movl	%edx, (%rax)	# D.8041, sqinfo_29(D)->flags
	.loc 1 414 0 is_stmt 1 discriminator 1
	jmp	.L58	#
.L70:
	.loc 1 414 0 is_stmt 0
	jmp	.L58	#
.L48:
	.loc 1 417 0 is_stmt 1
	movl	-36(%rbp), %eax	# flag, tmp176
	movl	%eax, %esi	# tmp176,
	movl	$.LC15, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L58:
	.loc 1 419 0
	movl	$1, %eax	#, D.8041
.L41:
	.loc 1 420 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	SetSeqinfoString, .-SetSeqinfoString
	.globl	SeqinfoCopy
	.type	SeqinfoCopy, @function
SeqinfoCopy:
.LFB12:
	.loc 1 424 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# sq1, sq1
	movq	%rsi, -16(%rbp)	# sq2, sq2
	.loc 1 425 0
	movq	-16(%rbp), %rax	# sq2, tmp99
	movl	(%rax), %edx	# sq2_1(D)->flags, D.8055
	movq	-8(%rbp), %rax	# sq1, tmp100
	movl	%edx, (%rax)	# D.8055, sq1_3(D)->flags
	.loc 1 426 0
	movq	-16(%rbp), %rax	# sq2, tmp101
	movl	(%rax), %eax	# sq2_1(D)->flags, D.8055
	andl	$1, %eax	#, D.8055
	testl	%eax, %eax	# D.8055
	je	.L72	#,
	.loc 1 426 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# sq2, tmp102
	leaq	4(%rax), %rdx	#, D.8056
	movq	-8(%rbp), %rax	# sq1, tmp103
	addq	$4, %rax	#, D.8056
	movq	%rdx, %rsi	# D.8056,
	movq	%rax, %rdi	# D.8056,
	call	strcpy	#
.L72:
	.loc 1 427 0 is_stmt 1
	movq	-16(%rbp), %rax	# sq2, tmp104
	movl	(%rax), %eax	# sq2_1(D)->flags, D.8055
	andl	$2, %eax	#, D.8055
	testl	%eax, %eax	# D.8055
	je	.L73	#,
	.loc 1 427 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# sq2, tmp105
	leaq	68(%rax), %rdx	#, D.8056
	movq	-8(%rbp), %rax	# sq1, tmp106
	addq	$68, %rax	#, D.8056
	movq	%rdx, %rsi	# D.8056,
	movq	%rax, %rdi	# D.8056,
	call	strcpy	#
.L73:
	.loc 1 428 0 is_stmt 1
	movq	-16(%rbp), %rax	# sq2, tmp107
	movl	(%rax), %eax	# sq2_1(D)->flags, D.8055
	andl	$4, %eax	#, D.8055
	testl	%eax, %eax	# D.8055
	je	.L74	#,
	.loc 1 428 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# sq2, tmp108
	leaq	132(%rax), %rdx	#, D.8056
	movq	-8(%rbp), %rax	# sq1, tmp109
	addq	$132, %rax	#, D.8056
	movq	%rdx, %rsi	# D.8056,
	movq	%rax, %rdi	# D.8056,
	call	strcpy	#
.L74:
	.loc 1 429 0 is_stmt 1
	movq	-16(%rbp), %rax	# sq2, tmp110
	movl	(%rax), %eax	# sq2_1(D)->flags, D.8055
	andl	$8, %eax	#, D.8055
	testl	%eax, %eax	# D.8055
	je	.L75	#,
	.loc 1 429 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# sq2, tmp111
	leaq	196(%rax), %rdx	#, D.8057
	movq	-8(%rbp), %rax	# sq1, tmp112
	addq	$196, %rax	#, D.8057
	movq	%rdx, %rsi	# D.8057,
	movq	%rax, %rdi	# D.8057,
	call	strcpy	#
.L75:
	.loc 1 430 0 is_stmt 1
	movq	-16(%rbp), %rax	# sq2, tmp113
	movl	(%rax), %eax	# sq2_1(D)->flags, D.8055
	andl	$64, %eax	#, D.8055
	testl	%eax, %eax	# D.8055
	je	.L76	#,
	.loc 1 430 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# sq2, tmp114
	movl	324(%rax), %edx	# sq2_1(D)->len, D.8055
	movq	-8(%rbp), %rax	# sq1, tmp115
	movl	%edx, 324(%rax)	# D.8055, sq1_3(D)->len
.L76:
	.loc 1 431 0 is_stmt 1
	movq	-16(%rbp), %rax	# sq2, tmp116
	movl	(%rax), %eax	# sq2_1(D)->flags, D.8055
	andl	$16, %eax	#, D.8055
	testl	%eax, %eax	# D.8055
	je	.L77	#,
	.loc 1 431 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# sq2, tmp117
	movl	328(%rax), %edx	# sq2_1(D)->start, D.8055
	movq	-8(%rbp), %rax	# sq1, tmp118
	movl	%edx, 328(%rax)	# D.8055, sq1_3(D)->start
.L77:
	.loc 1 432 0 is_stmt 1
	movq	-16(%rbp), %rax	# sq2, tmp119
	movl	(%rax), %eax	# sq2_1(D)->flags, D.8055
	andl	$32, %eax	#, D.8055
	testl	%eax, %eax	# D.8055
	je	.L78	#,
	.loc 1 432 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# sq2, tmp120
	movl	332(%rax), %edx	# sq2_1(D)->stop, D.8055
	movq	-8(%rbp), %rax	# sq1, tmp121
	movl	%edx, 332(%rax)	# D.8055, sq1_3(D)->stop
.L78:
	.loc 1 433 0 is_stmt 1
	movq	-16(%rbp), %rax	# sq2, tmp122
	movl	(%rax), %eax	# sq2_1(D)->flags, D.8055
	andl	$256, %eax	#, D.8055
	testl	%eax, %eax	# D.8055
	je	.L79	#,
	.loc 1 433 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# sq2, tmp123
	movl	336(%rax), %edx	# sq2_1(D)->olen, D.8055
	movq	-8(%rbp), %rax	# sq1, tmp124
	movl	%edx, 336(%rax)	# D.8055, sq1_3(D)->olen
.L79:
	.loc 1 434 0 is_stmt 1
	movq	-16(%rbp), %rax	# sq2, tmp125
	movl	(%rax), %eax	# sq2_1(D)->flags, D.8055
	andl	$128, %eax	#, D.8055
	testl	%eax, %eax	# D.8055
	je	.L80	#,
	.loc 1 434 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# sq2, tmp126
	movl	340(%rax), %edx	# sq2_1(D)->type, D.8055
	movq	-8(%rbp), %rax	# sq1, tmp127
	movl	%edx, 340(%rax)	# D.8055, sq1_3(D)->type
.L80:
	.loc 1 435 0 is_stmt 1
	movq	-16(%rbp), %rax	# sq2, tmp128
	movl	(%rax), %eax	# sq2_1(D)->flags, D.8055
	andl	$512, %eax	#, D.8055
	testl	%eax, %eax	# D.8055
	je	.L81	#,
	.loc 1 435 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# sq2, tmp129
	movq	344(%rax), %rax	# sq2_1(D)->ss, D.8058
	movq	%rax, %rdi	# D.8058,
	call	Strdup	#
	movq	-8(%rbp), %rdx	# sq1, tmp130
	movq	%rax, 344(%rdx)	# D.8058, sq1_3(D)->ss
.L81:
	.loc 1 436 0 is_stmt 1
	movq	-16(%rbp), %rax	# sq2, tmp131
	movl	(%rax), %eax	# sq2_1(D)->flags, D.8055
	andl	$1024, %eax	#, D.8055
	testl	%eax, %eax	# D.8055
	je	.L71	#,
	.loc 1 436 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# sq2, tmp132
	movq	352(%rax), %rax	# sq2_1(D)->sa, D.8058
	movq	%rax, %rdi	# D.8058,
	call	Strdup	#
	movq	-8(%rbp), %rdx	# sq1, tmp133
	movq	%rax, 352(%rdx)	# D.8058, sq1_3(D)->sa
.L71:
	.loc 1 437 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	SeqinfoCopy, .-SeqinfoCopy
	.globl	ToDNA
	.type	ToDNA, @function
ToDNA:
.LFB13:
	.loc 1 446 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# seq, seq
	.loc 1 447 0
	jmp	.L84	#
.L87:
	.loc 1 449 0
	movq	-8(%rbp), %rax	# seq, tmp62
	movzbl	(%rax), %eax	# *seq_1, D.8059
	cmpb	$85, %al	#, D.8059
	jne	.L85	#,
	.loc 1 449 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# seq, tmp63
	movb	$84, (%rax)	#, *seq_1
	jmp	.L86	#
.L85:
	.loc 1 450 0 is_stmt 1
	movq	-8(%rbp), %rax	# seq, tmp64
	movzbl	(%rax), %eax	# *seq_1, D.8059
	cmpb	$117, %al	#, D.8059
	jne	.L86	#,
	.loc 1 450 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# seq, tmp65
	movb	$116, (%rax)	#, *seq_1
.L86:
	.loc 1 447 0 is_stmt 1
	addq	$1, -8(%rbp)	#, seq
.L84:
	.loc 1 447 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# seq, tmp66
	movzbl	(%rax), %eax	# *seq_1, D.8059
	testb	%al, %al	# D.8059
	jne	.L87	#,
	.loc 1 452 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	ToDNA, .-ToDNA
	.globl	ToRNA
	.type	ToRNA, @function
ToRNA:
.LFB14:
	.loc 1 461 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# seq, seq
	.loc 1 462 0
	jmp	.L89	#
.L92:
	.loc 1 464 0
	movq	-8(%rbp), %rax	# seq, tmp62
	movzbl	(%rax), %eax	# *seq_1, D.8060
	cmpb	$84, %al	#, D.8060
	jne	.L90	#,
	.loc 1 464 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# seq, tmp63
	movb	$85, (%rax)	#, *seq_1
	jmp	.L91	#
.L90:
	.loc 1 465 0 is_stmt 1
	movq	-8(%rbp), %rax	# seq, tmp64
	movzbl	(%rax), %eax	# *seq_1, D.8060
	cmpb	$116, %al	#, D.8060
	jne	.L91	#,
	.loc 1 465 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# seq, tmp65
	movb	$117, (%rax)	#, *seq_1
.L91:
	.loc 1 462 0 is_stmt 1
	addq	$1, -8(%rbp)	#, seq
.L89:
	.loc 1 462 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# seq, tmp66
	movzbl	(%rax), %eax	# *seq_1, D.8060
	testb	%al, %al	# D.8060
	jne	.L92	#,
	.loc 1 467 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	ToRNA, .-ToRNA
	.section	.rodata
	.align 8
.LC16:
	.string	"ACGTUNRYMKSWHBVDacgtunrymkswhbvd"
	.text
	.globl	ToIUPAC
	.type	ToIUPAC, @function
ToIUPAC:
.LFB15:
	.loc 1 487 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# seq, seq
	movl	%esi, -12(%rbp)	# is_aseq, is_aseq
	.loc 1 488 0
	cmpl	$0, -12(%rbp)	#, is_aseq
	je	.L94	#,
	.loc 1 489 0
	jmp	.L95	#
.L97:
	.loc 1 490 0
	movq	-8(%rbp), %rax	# seq, tmp72
	movzbl	(%rax), %eax	# *seq_1, D.8061
	movsbl	%al, %eax	# D.8061, D.8062
	movl	%eax, %esi	# D.8062,
	movl	$.LC16, %edi	#,
	call	strchr	#
	testq	%rax, %rax	# D.8063
	jne	.L96	#,
	.loc 1 490 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# seq, tmp73
	movzbl	(%rax), %eax	# *seq_1, D.8061
	cmpb	$32, %al	#, D.8061
	je	.L96	#,
	movq	-8(%rbp), %rax	# seq, tmp74
	movzbl	(%rax), %eax	# *seq_1, D.8061
	cmpb	$46, %al	#, D.8061
	je	.L96	#,
	movq	-8(%rbp), %rax	# seq, tmp75
	movzbl	(%rax), %eax	# *seq_1, D.8061
	cmpb	$95, %al	#, D.8061
	je	.L96	#,
	movq	-8(%rbp), %rax	# seq, tmp76
	movzbl	(%rax), %eax	# *seq_1, D.8061
	cmpb	$45, %al	#, D.8061
	je	.L96	#,
	movq	-8(%rbp), %rax	# seq, tmp77
	movzbl	(%rax), %eax	# *seq_1, D.8061
	cmpb	$126, %al	#, D.8061
	je	.L96	#,
	movq	-8(%rbp), %rax	# seq, tmp78
	movb	$78, (%rax)	#, *seq_1
.L96:
	.loc 1 489 0 is_stmt 1
	addq	$1, -8(%rbp)	#, seq
.L95:
	.loc 1 489 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# seq, tmp79
	movzbl	(%rax), %eax	# *seq_1, D.8061
	testb	%al, %al	# D.8061
	jne	.L97	#,
	jmp	.L93	#
.L94:
	.loc 1 492 0 is_stmt 1
	jmp	.L99	#
.L101:
	.loc 1 493 0
	movq	-8(%rbp), %rax	# seq, tmp80
	movzbl	(%rax), %eax	# *seq_2, D.8061
	movsbl	%al, %eax	# D.8061, D.8062
	movl	%eax, %esi	# D.8062,
	movl	$.LC16, %edi	#,
	call	strchr	#
	testq	%rax, %rax	# D.8063
	jne	.L100	#,
	.loc 1 493 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# seq, tmp81
	movb	$78, (%rax)	#, *seq_2
.L100:
	.loc 1 492 0 is_stmt 1
	addq	$1, -8(%rbp)	#, seq
.L99:
	.loc 1 492 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# seq, tmp82
	movzbl	(%rax), %eax	# *seq_2, D.8061
	testb	%al, %al	# D.8061
	jne	.L101	#,
.L93:
	.loc 1 495 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	ToIUPAC, .-ToIUPAC
	.type	addseq, @function
addseq:
.LFB16:
	.loc 1 510 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# s, s
	movq	%rsi, -48(%rbp)	# V, V
	.loc 1 516 0
	movq	-48(%rbp), %rax	# V, tmp145
	movl	36(%rax), %eax	# V_7(D)->ssimode, D.8065
	cmpl	$-1, %eax	#, D.8065
	jne	.L103	#,
	.loc 1 522 0
	movq	-48(%rbp), %rax	# V, tmp146
	movl	136(%rax), %edx	# V_7(D)->seqlen, D.8065
	movq	-48(%rbp), %rax	# V, tmp147
	movl	32(%rax), %eax	# V_7(D)->buflen, D.8065
	addl	%eax, %edx	# D.8065, D.8065
	movq	-48(%rbp), %rax	# V, tmp148
	movl	140(%rax), %eax	# V_7(D)->maxseq, D.8065
	cmpl	%eax, %edx	# D.8065, D.8065
	jle	.L104	#,
	.loc 1 523 0
	movq	-48(%rbp), %rax	# V, tmp149
	movl	140(%rax), %edx	# V_7(D)->maxseq, D.8065
	movq	-48(%rbp), %rax	# V, tmp150
	movl	32(%rax), %eax	# V_7(D)->buflen, D.8065
	movl	$500, %ecx	#, tmp151
	cmpl	$500, %eax	#, D.8065
	cmovl	%ecx, %eax	# D.8065,, tmp151, D.8065
	addl	%eax, %edx	# D.8065, D.8065
	movq	-48(%rbp), %rax	# V, tmp152
	movl	%edx, 140(%rax)	# D.8065, V_7(D)->maxseq
	.loc 1 524 0
	movq	-48(%rbp), %rax	# V, tmp153
	movl	140(%rax), %eax	# V_7(D)->maxseq, D.8065
	addl	$1, %eax	#, D.8065
	movslq	%eax, %rdx	# D.8065, D.8066
	movq	-48(%rbp), %rax	# V, tmp154
	movq	112(%rax), %rax	# V_7(D)->seq, D.8067
	movq	%rdx, %rcx	# D.8066,
	movq	%rax, %rdx	# D.8067,
	movl	$524, %esi	#,
	movl	$.LC3, %edi	#,
	call	sre_realloc	#
	movq	-48(%rbp), %rdx	# V, tmp155
	movq	%rax, 112(%rdx)	# D.8068, V_7(D)->seq
	.loc 1 532 0
	movq	-48(%rbp), %rax	# V, tmp156
	movq	112(%rax), %rdx	# V_7(D)->seq, D.8067
	movq	-48(%rbp), %rax	# V, tmp157
	movl	140(%rax), %eax	# V_7(D)->maxseq, D.8065
	cltq
	addq	%rdx, %rax	# D.8067, D.8067
	movb	$0, (%rax)	#, *_25
.L104:
	.loc 1 536 0
	movq	-48(%rbp), %rax	# V, tmp158
	movq	112(%rax), %rdx	# V_7(D)->seq, D.8067
	movq	-48(%rbp), %rax	# V, tmp159
	movl	136(%rax), %eax	# V_7(D)->seqlen, D.8065
	cltq
	addq	%rdx, %rax	# D.8067, tmp160
	movq	%rax, -16(%rbp)	# tmp160, sq
	.loc 1 537 0
	jmp	.L105	#
.L107:
	.loc 1 538 0
	call	__ctype_b_loc	#
	movq	(%rax), %rdx	# *_32, D.8072
	movq	-40(%rbp), %rax	# s, tmp161
	movzbl	(%rax), %eax	# *s_1, D.8070
	movsbq	%al, %rax	# D.8070, D.8066
	addq	%rax, %rax	# D.8066
	addq	%rdx, %rax	# D.8072, D.8072
	movzwl	(%rax), %eax	# *_37, D.8073
	movzwl	%ax, %eax	# D.8073, D.8065
	andl	$2048, %eax	#, D.8065
	testl	%eax, %eax	# D.8065
	jne	.L106	#,
	.loc 1 538 0 is_stmt 0 discriminator 1
	call	__ctype_b_loc	#
	movq	(%rax), %rdx	# *_41, D.8072
	movq	-40(%rbp), %rax	# s, tmp162
	movzbl	(%rax), %eax	# *s_1, D.8070
	movsbq	%al, %rax	# D.8070, D.8066
	addq	%rax, %rax	# D.8066
	addq	%rdx, %rax	# D.8072, D.8072
	movzwl	(%rax), %eax	# *_46, D.8073
	movzwl	%ax, %eax	# D.8073, D.8065
	andl	$8192, %eax	#, D.8065
	testl	%eax, %eax	# D.8065
	jne	.L106	#,
	.loc 1 539 0 is_stmt 1
	movq	-40(%rbp), %rax	# s, tmp163
	movzbl	(%rax), %edx	# *s_1, D.8070
	movq	-16(%rbp), %rax	# sq, tmp164
	movb	%dl, (%rax)	# D.8070, *sq_4
	.loc 1 540 0
	addq	$1, -16(%rbp)	#, sq
.L106:
	.loc 1 542 0
	addq	$1, -40(%rbp)	#, s
.L105:
	.loc 1 537 0 discriminator 1
	movq	-40(%rbp), %rax	# s, tmp165
	movzbl	(%rax), %eax	# *s_1, D.8070
	testb	%al, %al	# D.8070
	jne	.L107	#,
	.loc 1 544 0
	movq	-16(%rbp), %rdx	# sq, sq.1
	movq	-48(%rbp), %rax	# V, tmp166
	movq	112(%rax), %rax	# V_7(D)->seq, D.8067
	subq	%rax, %rdx	# D.8074, D.8074
	movq	%rdx, %rax	# D.8074, D.8074
	movl	%eax, %edx	# D.8074, D.8065
	movq	-48(%rbp), %rax	# V, tmp167
	movl	%edx, 136(%rax)	# D.8065, V_7(D)->seqlen
	jmp	.L102	#
.L103:
	.loc 1 548 0
	movq	-40(%rbp), %rax	# s, tmp168
	movq	%rax, -8(%rbp)	# tmp168, s0
	.loc 1 549 0
	movl	$0, -24(%rbp)	#, rpl
	.loc 1 550 0
	jmp	.L109	#
.L111:
	.loc 1 551 0
	call	__ctype_b_loc	#
	movq	(%rax), %rdx	# *_61, D.8072
	movq	-40(%rbp), %rax	# s, tmp169
	movzbl	(%rax), %eax	# *s_2, D.8070
	movsbq	%al, %rax	# D.8070, D.8066
	addq	%rax, %rax	# D.8066
	addq	%rdx, %rax	# D.8072, D.8072
	movzwl	(%rax), %eax	# *_66, D.8073
	movzwl	%ax, %eax	# D.8073, D.8065
	andl	$2048, %eax	#, D.8065
	testl	%eax, %eax	# D.8065
	jne	.L110	#,
	.loc 1 551 0 is_stmt 0 discriminator 1
	call	__ctype_b_loc	#
	movq	(%rax), %rdx	# *_70, D.8072
	movq	-40(%rbp), %rax	# s, tmp170
	movzbl	(%rax), %eax	# *s_2, D.8070
	movsbq	%al, %rax	# D.8070, D.8066
	addq	%rax, %rax	# D.8066
	addq	%rdx, %rax	# D.8072, D.8072
	movzwl	(%rax), %eax	# *_75, D.8073
	movzwl	%ax, %eax	# D.8073, D.8065
	andl	$8192, %eax	#, D.8065
	testl	%eax, %eax	# D.8065
	jne	.L110	#,
	.loc 1 552 0 is_stmt 1
	addl	$1, -24(%rbp)	#, rpl
.L110:
	.loc 1 554 0
	addq	$1, -40(%rbp)	#, s
.L109:
	.loc 1 550 0 discriminator 1
	movq	-40(%rbp), %rax	# s, tmp171
	movzbl	(%rax), %eax	# *s_2, D.8070
	testb	%al, %al	# D.8070
	jne	.L111	#,
	.loc 1 556 0
	movq	-48(%rbp), %rax	# V, tmp172
	movl	136(%rax), %edx	# V_7(D)->seqlen, D.8065
	movl	-24(%rbp), %eax	# rpl, tmp173
	addl	%eax, %edx	# tmp173, D.8065
	movq	-48(%rbp), %rax	# V, tmp174
	movl	%edx, 136(%rax)	# D.8065, V_7(D)->seqlen
	.loc 1 557 0
	movq	-40(%rbp), %rdx	# s, s.2
	movq	-8(%rbp), %rax	# s0, s0.3
	subq	%rax, %rdx	# s0.3, D.8074
	movq	%rdx, %rax	# D.8074, D.8074
	movl	%eax, -20(%rbp)	# D.8074, bpl
	.loc 1 573 0
	movq	-48(%rbp), %rax	# V, tmp175
	movl	88(%rax), %eax	# V_7(D)->rpl, D.8065
	testl	%eax, %eax	# D.8065
	je	.L112	#,
	.loc 1 574 0
	movq	-48(%rbp), %rax	# V, tmp176
	movl	92(%rax), %eax	# V_7(D)->lastrpl, D.8065
	testl	%eax, %eax	# D.8065
	jle	.L113	#,
	.loc 1 575 0
	movq	-48(%rbp), %rax	# V, tmp177
	movl	88(%rax), %eax	# V_7(D)->rpl, D.8065
	testl	%eax, %eax	# D.8065
	jle	.L114	#,
	.loc 1 575 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# V, tmp178
	movl	92(%rax), %edx	# V_7(D)->lastrpl, D.8065
	movq	-48(%rbp), %rax	# V, tmp179
	movl	88(%rax), %eax	# V_7(D)->rpl, D.8065
	cmpl	%eax, %edx	# D.8065, D.8065
	je	.L114	#,
	movq	-48(%rbp), %rax	# V, tmp180
	movl	$0, 88(%rax)	#, V_7(D)->rpl
	jmp	.L113	#
.L114:
	.loc 1 576 0 is_stmt 1
	movq	-48(%rbp), %rax	# V, tmp181
	movl	88(%rax), %eax	# V_7(D)->rpl, D.8065
	cmpl	$-1, %eax	#, D.8065
	jne	.L113	#,
	.loc 1 576 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# V, tmp182
	movl	92(%rax), %edx	# V_7(D)->lastrpl, D.8065
	movq	-48(%rbp), %rax	# V, tmp183
	movl	%edx, 88(%rax)	# D.8065, V_7(D)->rpl
.L113:
	.loc 1 578 0 is_stmt 1
	movq	-48(%rbp), %rax	# V, tmp184
	movl	-24(%rbp), %edx	# rpl, tmp185
	movl	%edx, 92(%rax)	# tmp185, V_7(D)->lastrpl
	.loc 1 579 0
	movq	-48(%rbp), %rax	# V, tmp186
	movl	96(%rax), %eax	# V_7(D)->maxrpl, D.8065
	cmpl	-24(%rbp), %eax	# rpl, D.8065
	jge	.L112	#,
	.loc 1 579 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# V, tmp187
	movl	-24(%rbp), %edx	# rpl, tmp188
	movl	%edx, 96(%rax)	# tmp188, V_7(D)->maxrpl
.L112:
	.loc 1 581 0 is_stmt 1
	movq	-48(%rbp), %rax	# V, tmp189
	movl	100(%rax), %eax	# V_7(D)->bpl, D.8065
	testl	%eax, %eax	# D.8065
	je	.L102	#,
	.loc 1 582 0
	movq	-48(%rbp), %rax	# V, tmp190
	movl	104(%rax), %eax	# V_7(D)->lastbpl, D.8065
	testl	%eax, %eax	# D.8065
	jle	.L115	#,
	.loc 1 583 0
	movq	-48(%rbp), %rax	# V, tmp191
	movl	100(%rax), %eax	# V_7(D)->bpl, D.8065
	testl	%eax, %eax	# D.8065
	jle	.L116	#,
	.loc 1 583 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# V, tmp192
	movl	104(%rax), %edx	# V_7(D)->lastbpl, D.8065
	movq	-48(%rbp), %rax	# V, tmp193
	movl	100(%rax), %eax	# V_7(D)->bpl, D.8065
	cmpl	%eax, %edx	# D.8065, D.8065
	je	.L116	#,
	movq	-48(%rbp), %rax	# V, tmp194
	movl	$0, 100(%rax)	#, V_7(D)->bpl
	jmp	.L115	#
.L116:
	.loc 1 584 0 is_stmt 1
	movq	-48(%rbp), %rax	# V, tmp195
	movl	100(%rax), %eax	# V_7(D)->bpl, D.8065
	cmpl	$-1, %eax	#, D.8065
	jne	.L115	#,
	.loc 1 584 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# V, tmp196
	movl	104(%rax), %edx	# V_7(D)->lastbpl, D.8065
	movq	-48(%rbp), %rax	# V, tmp197
	movl	%edx, 100(%rax)	# D.8065, V_7(D)->bpl
.L115:
	.loc 1 586 0 is_stmt 1
	movq	-48(%rbp), %rax	# V, tmp198
	movl	-20(%rbp), %edx	# bpl, tmp199
	movl	%edx, 104(%rax)	# tmp199, V_7(D)->lastbpl
	.loc 1 587 0
	movq	-48(%rbp), %rax	# V, tmp200
	movl	108(%rax), %eax	# V_7(D)->maxbpl, D.8065
	cmpl	-20(%rbp), %eax	# bpl, D.8065
	jge	.L102	#,
	.loc 1 587 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# V, tmp201
	movl	-20(%rbp), %edx	# bpl, tmp202
	movl	%edx, 108(%rax)	# tmp202, V_7(D)->maxbpl
.L102:
	.loc 1 591 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	addseq, .-addseq
	.type	readLoop, @function
readLoop:
.LFB17:
	.loc 1 595 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movl	%edi, -20(%rbp)	# addfirst, addfirst
	movq	%rsi, -32(%rbp)	# endTest, endTest
	movq	%rdx, -40(%rbp)	# V, V
	.loc 1 596 0
	movl	$0, -8(%rbp)	#, addend
	.loc 1 597 0
	movl	$0, -4(%rbp)	#, done
	.loc 1 599 0
	movq	-40(%rbp), %rax	# V, tmp75
	movl	$0, 136(%rax)	#, V_4(D)->seqlen
	.loc 1 600 0
	movq	-40(%rbp), %rax	# V, tmp76
	movl	$0, 104(%rax)	#, V_4(D)->lastbpl
	movq	-40(%rbp), %rax	# V, tmp77
	movl	104(%rax), %edx	# V_4(D)->lastbpl, D.8075
	movq	-40(%rbp), %rax	# V, tmp78
	movl	%edx, 92(%rax)	# D.8075, V_4(D)->lastrpl
	.loc 1 601 0
	cmpl	$0, -20(%rbp)	#, addfirst
	je	.L118	#,
	.loc 1 602 0
	movq	-40(%rbp), %rax	# V, tmp79
	movl	36(%rax), %eax	# V_4(D)->ssimode, D.8075
	testl	%eax, %eax	# D.8075
	js	.L119	#,
	.loc 1 602 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rcx	# V, tmp80
	movq	-40(%rbp), %rax	# V, tmp81
	movq	48(%rax), %rdx	# V_4(D)->ssioffset,
	movq	40(%rax), %rax	# V_4(D)->ssioffset, tmp82
	movq	%rax, 72(%rcx)	# tmp82, V_4(D)->d_off
	movq	%rdx, 80(%rcx)	#, V_4(D)->d_off
.L119:
	.loc 1 603 0 is_stmt 1
	movq	-40(%rbp), %rax	# V, tmp83
	movq	24(%rax), %rax	# V_4(D)->buf, D.8076
	movq	-40(%rbp), %rdx	# V, tmp84
	movq	%rdx, %rsi	# tmp84,
	movq	%rax, %rdi	# D.8076,
	call	addseq	#
	jmp	.L120	#
.L118:
	.loc 1 604 0
	movq	-40(%rbp), %rax	# V, tmp85
	movl	36(%rax), %eax	# V_4(D)->ssimode, D.8075
	testl	%eax, %eax	# D.8075
	js	.L120	#,
	.loc 1 605 0
	movq	-40(%rbp), %rax	# V, tmp86
	leaq	72(%rax), %rdx	#, D.8077
	movq	-40(%rbp), %rax	# V, tmp87
	movl	36(%rax), %ecx	# V_4(D)->ssimode, D.8075
	movq	-40(%rbp), %rax	# V, tmp88
	movq	(%rax), %rax	# V_4(D)->f, D.8078
	movl	%ecx, %esi	# D.8075,
	movq	%rax, %rdi	# D.8078,
	call	SSIGetFilePosition	#
	testl	%eax, %eax	# D.8075
	je	.L120	#,
	.loc 1 606 0
	movl	$.LC13, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L120:
	.loc 1 609 0
	movq	-40(%rbp), %rax	# V, tmp89
	movq	%rax, %rdi	# tmp89,
	call	SeqfileGetLine	#
	.loc 1 611 0
	movq	-40(%rbp), %rax	# V, tmp90
	movq	24(%rax), %rax	# V_4(D)->buf, D.8076
	movzbl	(%rax), %eax	# *_14, D.8079
	testb	%al, %al	# D.8079
	jne	.L121	#,
	.loc 1 611 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# V, tmp91
	movq	(%rax), %rax	# V_4(D)->f, D.8078
	movq	%rax, %rdi	# D.8078,
	call	feof	#
	testl	%eax, %eax	# D.8075
	je	.L121	#,
	.loc 1 612 0 is_stmt 1
	movl	$1, -4(%rbp)	#, done
.L121:
	.loc 1 613 0
	movq	-40(%rbp), %rax	# V, tmp92
	movq	24(%rax), %rdx	# V_4(D)->buf, D.8076
	leaq	-8(%rbp), %rcx	#, tmp93
	movq	-32(%rbp), %rax	# endTest, tmp94
	movq	%rcx, %rsi	# tmp93,
	movq	%rdx, %rdi	# D.8076,
	call	*%rax	# tmp94
	orl	%eax, -4(%rbp)	# D.8075, done
	.loc 1 614 0
	movl	-8(%rbp), %eax	# addend, addend.4
	testl	%eax, %eax	# addend.4
	jne	.L122	#,
	.loc 1 614 0 is_stmt 0 discriminator 1
	cmpl	$0, -4(%rbp)	#, done
	jne	.L123	#,
.L122:
	.loc 1 615 0 is_stmt 1
	movq	-40(%rbp), %rax	# V, tmp95
	movq	24(%rax), %rax	# V_4(D)->buf, D.8076
	movq	-40(%rbp), %rdx	# V, tmp96
	movq	%rdx, %rsi	# tmp96,
	movq	%rax, %rdi	# D.8076,
	call	addseq	#
.L123:
	.loc 1 616 0
	cmpl	$0, -4(%rbp)	#, done
	je	.L120	#,
	.loc 1 617 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	readLoop, .-readLoop
	.section	.rodata
.LC17:
	.string	"///"
.LC18:
	.string	"ENTRY"
	.text
	.type	endPIR, @function
endPIR:
.LFB18:
	.loc 1 622 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# s, s
	movq	%rsi, -16(%rbp)	# addend, addend
	.loc 1 623 0
	movq	-16(%rbp), %rax	# addend, tmp63
	movl	$0, (%rax)	#, *addend_2(D)
	.loc 1 624 0
	movq	-8(%rbp), %rax	# s, tmp64
	movl	$3, %edx	#,
	movl	$.LC17, %esi	#,
	movq	%rax, %rdi	# tmp64,
	call	strncmp	#
	testl	%eax, %eax	# D.8080
	je	.L125	#,
	.loc 1 625 0 discriminator 1
	movq	-8(%rbp), %rax	# s, tmp65
	movl	$5, %edx	#,
	movl	$.LC18, %esi	#,
	movq	%rax, %rdi	# tmp65,
	call	strncmp	#
	.loc 1 624 0 discriminator 1
	testl	%eax, %eax	# D.8080
	jne	.L126	#,
.L125:
	.loc 1 626 0
	movl	$1, %eax	#, D.8080
	jmp	.L127	#
.L126:
	.loc 1 628 0
	movl	$0, %eax	#, D.8080
.L127:
	.loc 1 629 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	endPIR, .-endPIR
	.section	.rodata
.LC19:
	.string	"\n\t "
.LC20:
	.string	"TITLE"
.LC21:
	.string	"ACCESSION"
.LC22:
	.string	" \t\n"
.LC23:
	.string	"SEQUENCE"
	.text
	.type	readPIR, @function
readPIR:
.LFB19:
	.loc 1 633 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# V, V
	.loc 1 636 0
	jmp	.L129	#
.L131:
	.loc 1 637 0
	movq	-24(%rbp), %rax	# V, tmp101
	movq	%rax, %rdi	# tmp101,
	call	SeqfileGetLine	#
.L129:
	.loc 1 636 0 discriminator 1
	movq	-24(%rbp), %rax	# V, tmp102
	movq	(%rax), %rax	# V_1(D)->f, D.8083
	movq	%rax, %rdi	# D.8083,
	call	feof	#
	testl	%eax, %eax	# D.8084
	jne	.L130	#,
	.loc 1 636 0 is_stmt 0 discriminator 2
	movq	-24(%rbp), %rax	# V, tmp103
	movq	24(%rax), %rax	# V_1(D)->buf, D.8085
	movl	$5, %edx	#,
	movl	$.LC18, %esi	#,
	movq	%rax, %rdi	# D.8085,
	call	strncmp	#
	testl	%eax, %eax	# D.8084
	jne	.L131	#,
.L130:
	.loc 1 639 0 is_stmt 1
	movq	-24(%rbp), %rax	# V, tmp104
	movq	(%rax), %rax	# V_1(D)->f, D.8083
	movq	%rax, %rdi	# D.8083,
	call	feof	#
	testl	%eax, %eax	# D.8084
	je	.L132	#,
	.loc 1 639 0 is_stmt 0 discriminator 1
	jmp	.L128	#
.L132:
	.loc 1 640 0 is_stmt 1
	movq	-24(%rbp), %rax	# V, tmp105
	movl	36(%rax), %eax	# V_1(D)->ssimode, D.8084
	testl	%eax, %eax	# D.8084
	js	.L134	#,
	.loc 1 640 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rcx	# V, tmp106
	movq	-24(%rbp), %rax	# V, tmp107
	movq	48(%rax), %rdx	# V_1(D)->ssioffset,
	movq	40(%rax), %rax	# V_1(D)->ssioffset, tmp108
	movq	%rax, 56(%rcx)	# tmp108, V_1(D)->r_off
	movq	%rdx, 64(%rcx)	#, V_1(D)->r_off
.L134:
	.loc 1 642 0 is_stmt 1
	movq	-24(%rbp), %rax	# V, tmp109
	movq	24(%rax), %rax	# V_1(D)->buf, D.8085
	addq	$15, %rax	#, D.8085
	movl	$.LC19, %esi	#,
	movq	%rax, %rdi	# D.8085,
	call	strtok	#
	movq	%rax, -8(%rbp)	# tmp110, sptr
	cmpq	$0, -8(%rbp)	#, sptr
	je	.L135	#,
	.loc 1 644 0
	movq	-24(%rbp), %rax	# V, tmp111
	movq	120(%rax), %rax	# V_1(D)->sqinfo, D.8086
	movq	-8(%rbp), %rcx	# sptr, tmp112
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp112,
	movq	%rax, %rdi	# D.8086,
	call	SetSeqinfoString	#
	.loc 1 645 0
	movq	-24(%rbp), %rax	# V, tmp113
	movq	120(%rax), %rax	# V_1(D)->sqinfo, D.8086
	movq	-8(%rbp), %rcx	# sptr, tmp114
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp114,
	movq	%rax, %rdi	# D.8086,
	call	SetSeqinfoString	#
.L135:
	.loc 1 648 0
	movq	-24(%rbp), %rax	# V, tmp115
	movq	%rax, %rdi	# tmp115,
	call	SeqfileGetLine	#
	.loc 1 649 0
	movq	-24(%rbp), %rax	# V, tmp116
	movq	(%rax), %rax	# V_1(D)->f, D.8083
	movq	%rax, %rdi	# D.8083,
	call	feof	#
	testl	%eax, %eax	# D.8084
	jne	.L136	#,
	.loc 1 649 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# V, tmp117
	movq	24(%rax), %rax	# V_1(D)->buf, D.8085
	movl	$5, %edx	#,
	movl	$.LC20, %esi	#,
	movq	%rax, %rdi	# D.8085,
	call	strncmp	#
	testl	%eax, %eax	# D.8084
	jne	.L136	#,
	.loc 1 650 0 is_stmt 1
	movq	-24(%rbp), %rax	# V, tmp118
	movq	24(%rax), %rax	# V_1(D)->buf, D.8085
	leaq	15(%rax), %rcx	#, D.8085
	movq	-24(%rbp), %rax	# V, tmp119
	movq	120(%rax), %rax	# V_1(D)->sqinfo, D.8086
	movl	$8, %edx	#,
	movq	%rcx, %rsi	# D.8085,
	movq	%rax, %rdi	# D.8086,
	call	SetSeqinfoString	#
	jmp	.L137	#
.L136:
	.loc 1 651 0
	movq	-24(%rbp), %rax	# V, tmp120
	movq	(%rax), %rax	# V_1(D)->f, D.8083
	movq	%rax, %rdi	# D.8083,
	call	feof	#
	testl	%eax, %eax	# D.8084
	jne	.L137	#,
	.loc 1 651 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# V, tmp121
	movq	24(%rax), %rax	# V_1(D)->buf, D.8085
	movl	$9, %edx	#,
	movl	$.LC21, %esi	#,
	movq	%rax, %rdi	# D.8085,
	call	strncmp	#
	testl	%eax, %eax	# D.8084
	jne	.L137	#,
	.loc 1 653 0 is_stmt 1
	movq	-24(%rbp), %rax	# V, tmp122
	movq	24(%rax), %rax	# V_1(D)->buf, D.8085
	addq	$15, %rax	#, D.8085
	movl	$.LC22, %esi	#,
	movq	%rax, %rdi	# D.8085,
	call	strtok	#
	movq	%rax, -8(%rbp)	# tmp123, sptr
	cmpq	$0, -8(%rbp)	#, sptr
	je	.L137	#,
	.loc 1 654 0
	movq	-24(%rbp), %rax	# V, tmp124
	movq	120(%rax), %rax	# V_1(D)->sqinfo, D.8086
	movq	-8(%rbp), %rcx	# sptr, tmp125
	movl	$4, %edx	#,
	movq	%rcx, %rsi	# tmp125,
	movq	%rax, %rdi	# D.8086,
	call	SetSeqinfoString	#
.L137:
	.loc 1 656 0
	movq	-24(%rbp), %rax	# V, tmp126
	movq	(%rax), %rax	# V_1(D)->f, D.8083
	movq	%rax, %rdi	# D.8083,
	call	feof	#
	testl	%eax, %eax	# D.8084
	jne	.L138	#,
	.loc 1 656 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# V, tmp127
	movq	24(%rax), %rax	# V_1(D)->buf, D.8085
	movl	$8, %edx	#,
	movl	$.LC23, %esi	#,
	movq	%rax, %rdi	# D.8085,
	call	strncmp	#
	testl	%eax, %eax	# D.8084
	jne	.L135	#,
.L138:
	.loc 1 657 0 is_stmt 1
	movq	-24(%rbp), %rax	# V, tmp128
	movq	%rax, %rdi	# tmp128,
	call	SeqfileGetLine	#
	.loc 1 659 0
	movq	-24(%rbp), %rax	# V, tmp129
	movq	%rax, %rdx	# tmp129,
	movl	$endPIR, %esi	#,
	movl	$0, %edi	#,
	call	readLoop	#
	.loc 1 663 0
	movq	-24(%rbp), %rax	# V, tmp130
	movq	120(%rax), %rax	# V_1(D)->sqinfo, D.8086
	movl	$1, 328(%rax)	#, _33->start
	.loc 1 664 0
	movq	-24(%rbp), %rax	# V, tmp131
	movq	120(%rax), %rax	# V_1(D)->sqinfo, D.8086
	movq	-24(%rbp), %rdx	# V, tmp132
	movl	136(%rdx), %edx	# V_1(D)->seqlen, D.8084
	movl	%edx, 332(%rax)	# D.8084, _34->stop
	.loc 1 665 0
	movq	-24(%rbp), %rax	# V, tmp133
	movq	120(%rax), %rax	# V_1(D)->sqinfo, D.8086
	movq	-24(%rbp), %rdx	# V, tmp134
	movl	136(%rdx), %edx	# V_1(D)->seqlen, D.8084
	movl	%edx, 336(%rax)	# D.8084, _36->olen
	.loc 1 666 0
	movq	-24(%rbp), %rax	# V, tmp135
	movq	120(%rax), %rax	# V_1(D)->sqinfo, D.8086
	movq	-24(%rbp), %rdx	# V, tmp136
	movq	120(%rdx), %rdx	# V_1(D)->sqinfo, D.8086
	movl	(%rdx), %edx	# _39->flags, D.8084
	orl	$304, %edx	#, D.8084
	movl	%edx, (%rax)	# D.8084, _38->flags
	.loc 1 670 0
	jmp	.L139	#
.L140:
	.loc 1 671 0
	movq	-24(%rbp), %rax	# V, tmp137
	movq	%rax, %rdi	# tmp137,
	call	SeqfileGetLine	#
.L139:
	.loc 1 670 0 discriminator 1
	movq	-24(%rbp), %rax	# V, tmp138
	movq	(%rax), %rax	# V_1(D)->f, D.8083
	movq	%rax, %rdi	# D.8083,
	call	feof	#
	testl	%eax, %eax	# D.8084
	jne	.L128	#,
	.loc 1 670 0 is_stmt 0 discriminator 2
	movq	-24(%rbp), %rax	# V, tmp139
	movq	24(%rax), %rax	# V_1(D)->buf, D.8085
	movl	$5, %edx	#,
	movl	$.LC18, %esi	#,
	movq	%rax, %rdi	# D.8085,
	call	strncmp	#
	testl	%eax, %eax	# D.8084
	jne	.L140	#,
.L128:
	.loc 1 673 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	readPIR, .-readPIR
	.type	endIG, @function
endIG:
.LFB20:
	.loc 1 679 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# s, s
	movq	%rsi, -16(%rbp)	# addend, addend
	.loc 1 680 0
	movq	-16(%rbp), %rax	# addend, tmp64
	movl	$1, (%rax)	#, *addend_2(D)
	.loc 1 681 0
	movq	-8(%rbp), %rax	# s, tmp65
	movl	$49, %esi	#,
	movq	%rax, %rdi	# tmp65,
	call	strchr	#
	testq	%rax, %rax	# D.8092
	jne	.L142	#,
	.loc 1 681 0 is_stmt 0 discriminator 2
	movq	-8(%rbp), %rax	# s, tmp66
	movl	$50, %esi	#,
	movq	%rax, %rdi	# tmp66,
	call	strchr	#
	testq	%rax, %rax	# D.8092
	je	.L143	#,
.L142:
	.loc 1 681 0 discriminator 1
	movl	$1, %eax	#, iftmp.5
	jmp	.L144	#
.L143:
	.loc 1 681 0 discriminator 3
	movl	$0, %eax	#, iftmp.5
.L144:
	.loc 1 682 0 is_stmt 1 discriminator 4
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	endIG, .-endIG
	.type	readIG, @function
readIG:
.LFB21:
	.loc 1 686 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# V, V
.L148:
	.loc 1 690 0 discriminator 1
	movq	-24(%rbp), %rax	# V, tmp75
	movq	%rax, %rdi	# tmp75,
	call	SeqfileGetLine	#
	.loc 1 691 0 discriminator 1
	movq	-24(%rbp), %rax	# V, tmp76
	movq	(%rax), %rax	# V_1(D)->f, D.8094
	movq	%rax, %rdi	# D.8094,
	call	feof	#
	testl	%eax, %eax	# D.8095
	jne	.L147	#,
	movq	-24(%rbp), %rax	# V, tmp77
	movq	24(%rax), %rax	# V_1(D)->buf, D.8096
	movzbl	(%rax), %eax	# *_4, D.8097
	testb	%al, %al	# D.8097
	je	.L148	#,
	.loc 1 691 0 is_stmt 0 discriminator 2
	movq	-24(%rbp), %rax	# V, tmp78
	movq	24(%rax), %rax	# V_1(D)->buf, D.8096
	movzbl	(%rax), %eax	# *_6, D.8097
	cmpb	$59, %al	#, D.8097
	je	.L148	#,
.L147:
	.loc 1 693 0 is_stmt 1
	movq	-24(%rbp), %rax	# V, tmp79
	movq	(%rax), %rax	# V_1(D)->f, D.8094
	movq	%rax, %rdi	# D.8094,
	call	feof	#
	testl	%eax, %eax	# D.8095
	jne	.L149	#,
	.loc 1 695 0
	movq	-24(%rbp), %rax	# V, tmp80
	movq	24(%rax), %rax	# V_1(D)->buf, D.8096
	movl	$.LC19, %esi	#,
	movq	%rax, %rdi	# D.8096,
	call	strtok	#
	movq	%rax, -8(%rbp)	# tmp81, nm
	cmpq	$0, -8(%rbp)	#, nm
	je	.L150	#,
	.loc 1 696 0
	movq	-24(%rbp), %rax	# V, tmp82
	movq	120(%rax), %rax	# V_1(D)->sqinfo, D.8098
	movq	-8(%rbp), %rcx	# nm, tmp83
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp83,
	movq	%rax, %rdi	# D.8098,
	call	SetSeqinfoString	#
.L150:
	.loc 1 698 0
	movq	-24(%rbp), %rax	# V, tmp84
	movq	%rax, %rdx	# tmp84,
	movl	$endIG, %esi	#,
	movl	$0, %edi	#,
	call	readLoop	#
	.loc 1 701 0
	jmp	.L151	#
.L149:
	jmp	.L151	#
.L153:
	.loc 1 702 0
	movq	-24(%rbp), %rax	# V, tmp85
	movq	%rax, %rdi	# tmp85,
	call	SeqfileGetLine	#
.L151:
	.loc 1 701 0 discriminator 1
	movq	-24(%rbp), %rax	# V, tmp86
	movq	(%rax), %rax	# V_1(D)->f, D.8094
	movq	%rax, %rdi	# D.8094,
	call	feof	#
	testl	%eax, %eax	# D.8095
	jne	.L146	#,
	.loc 1 701 0 is_stmt 0 discriminator 2
	movq	-24(%rbp), %rax	# V, tmp87
	movq	24(%rax), %rax	# V_1(D)->buf, D.8096
	movzbl	(%rax), %eax	# *_15, D.8097
	testb	%al, %al	# D.8097
	je	.L153	#,
	.loc 1 701 0 discriminator 1
	movq	-24(%rbp), %rax	# V, tmp88
	movq	24(%rax), %rax	# V_1(D)->buf, D.8096
	movzbl	(%rax), %eax	# *_17, D.8097
	cmpb	$59, %al	#, D.8097
	jne	.L153	#,
.L146:
	.loc 1 703 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	readIG, .-readIG
	.section	.rodata
.LC24:
	.string	"//"
	.text
	.type	endStrider, @function
endStrider:
.LFB22:
	.loc 1 707 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# s, s
	movq	%rsi, -16(%rbp)	# addend, addend
	.loc 1 708 0
	movq	-16(%rbp), %rax	# addend, tmp63
	movl	$0, (%rax)	#, *addend_1(D)
	.loc 1 709 0
	movq	-8(%rbp), %rax	# s, tmp64
	movl	$.LC24, %esi	#,
	movq	%rax, %rdi	# tmp64,
	call	strstr	#
	testq	%rax, %rax	# D.8099
	setne	%al	#, D.8100
	movzbl	%al, %eax	# D.8100, D.8101
	.loc 1 710 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	endStrider, .-endStrider
	.section	.rodata
.LC25:
	.string	"; DNA sequence"
.LC26:
	.string	",\n\t "
	.text
	.type	readStrider, @function
readStrider:
.LFB23:
	.loc 1 714 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# V, V
	.loc 1 717 0
	jmp	.L157	#
.L160:
	.loc 1 719 0
	movq	-24(%rbp), %rax	# V, tmp74
	movq	24(%rax), %rax	# V_1(D)->buf, D.8105
	movl	$14, %edx	#,
	movl	$.LC25, %esi	#,
	movq	%rax, %rdi	# D.8105,
	call	strncmp	#
	testl	%eax, %eax	# D.8104
	jne	.L158	#,
	.loc 1 721 0
	movq	-24(%rbp), %rax	# V, tmp75
	movq	24(%rax), %rax	# V_1(D)->buf, D.8105
	addq	$16, %rax	#, D.8105
	movl	$.LC26, %esi	#,
	movq	%rax, %rdi	# D.8105,
	call	strtok	#
	movq	%rax, -8(%rbp)	# tmp76, nm
	cmpq	$0, -8(%rbp)	#, nm
	je	.L158	#,
	.loc 1 722 0
	movq	-24(%rbp), %rax	# V, tmp77
	movq	120(%rax), %rax	# V_1(D)->sqinfo, D.8107
	movq	-8(%rbp), %rcx	# nm, tmp78
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp78,
	movq	%rax, %rdi	# D.8107,
	call	SetSeqinfoString	#
.L158:
	.loc 1 724 0
	movq	-24(%rbp), %rax	# V, tmp79
	movq	%rax, %rdi	# tmp79,
	call	SeqfileGetLine	#
.L157:
	.loc 1 717 0 discriminator 1
	movq	-24(%rbp), %rax	# V, tmp80
	movq	(%rax), %rax	# V_1(D)->f, D.8103
	movq	%rax, %rdi	# D.8103,
	call	feof	#
	testl	%eax, %eax	# D.8104
	jne	.L159	#,
	.loc 1 717 0 is_stmt 0 discriminator 2
	movq	-24(%rbp), %rax	# V, tmp81
	movq	24(%rax), %rax	# V_1(D)->buf, D.8105
	movzbl	(%rax), %eax	# *_4, D.8106
	cmpb	$59, %al	#, D.8106
	je	.L160	#,
.L159:
	.loc 1 727 0 is_stmt 1
	movq	-24(%rbp), %rax	# V, tmp82
	movq	(%rax), %rax	# V_1(D)->f, D.8103
	movq	%rax, %rdi	# D.8103,
	call	feof	#
	testl	%eax, %eax	# D.8104
	jne	.L161	#,
	.loc 1 728 0
	movq	-24(%rbp), %rax	# V, tmp83
	movq	%rax, %rdx	# tmp83,
	movl	$endStrider, %esi	#,
	movl	$1, %edi	#,
	call	readLoop	#
	.loc 1 732 0
	jmp	.L162	#
.L161:
	jmp	.L162	#
.L164:
	.loc 1 733 0
	movq	-24(%rbp), %rax	# V, tmp84
	movq	%rax, %rdi	# tmp84,
	call	SeqfileGetLine	#
.L162:
	.loc 1 732 0 discriminator 1
	movq	-24(%rbp), %rax	# V, tmp85
	movq	(%rax), %rax	# V_1(D)->f, D.8103
	movq	%rax, %rdi	# D.8103,
	call	feof	#
	testl	%eax, %eax	# D.8104
	jne	.L156	#,
	.loc 1 732 0 is_stmt 0 discriminator 2
	movq	-24(%rbp), %rax	# V, tmp86
	movq	24(%rax), %rax	# V_1(D)->buf, D.8105
	movzbl	(%rax), %eax	# *_16, D.8106
	cmpb	$59, %al	#, D.8106
	jne	.L164	#,
.L156:
	.loc 1 734 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	readStrider, .-readStrider
	.section	.rodata
.LC27:
	.string	"LOCUS"
	.text
	.type	endGB, @function
endGB:
.LFB24:
	.loc 1 739 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# s, s
	movq	%rsi, -16(%rbp)	# addend, addend
	.loc 1 740 0
	movq	-16(%rbp), %rax	# addend, tmp64
	movl	$0, (%rax)	#, *addend_2(D)
	.loc 1 741 0
	movq	-8(%rbp), %rax	# s, tmp65
	movl	$.LC24, %esi	#,
	movq	%rax, %rdi	# tmp65,
	call	strstr	#
	testq	%rax, %rax	# D.8110
	jne	.L166	#,
	.loc 1 741 0 is_stmt 0 discriminator 2
	movq	-8(%rbp), %rax	# s, tmp66
	movl	$.LC27, %esi	#,
	movq	%rax, %rdi	# tmp66,
	call	strstr	#
	cmpq	-8(%rbp), %rax	# s, D.8110
	jne	.L167	#,
.L166:
	.loc 1 741 0 discriminator 1
	movl	$1, %eax	#, iftmp.6
	jmp	.L168	#
.L167:
	.loc 1 741 0 discriminator 3
	movl	$0, %eax	#, iftmp.6
.L168:
	.loc 1 742 0 is_stmt 1 discriminator 4
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	endGB, .-endGB
	.section	.rodata
.LC28:
	.string	"DEFINITION"
.LC29:
	.string	"\n"
.LC30:
	.string	"VERSION"
.LC31:
	.string	"ORIGIN"
.LC32:
	.string	"LOCUS  "
	.text
	.type	readGenBank, @function
readGenBank:
.LFB25:
	.loc 1 746 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# V, V
	.loc 1 756 0
	jmp	.L171	#
.L172:
	.loc 1 757 0
	movq	-24(%rbp), %rax	# V, tmp116
	movq	%rax, %rdi	# tmp116,
	call	SeqfileGetLine	#
.L171:
	.loc 1 756 0 discriminator 1
	movq	-24(%rbp), %rax	# V, tmp117
	movq	24(%rax), %rax	# V_2(D)->buf, D.8113
	movl	$5, %edx	#,
	movl	$.LC27, %esi	#,
	movq	%rax, %rdi	# D.8113,
	call	strncmp	#
	testl	%eax, %eax	# D.8114
	jne	.L172	#,
	.loc 1 759 0
	movq	-24(%rbp), %rax	# V, tmp118
	movl	36(%rax), %eax	# V_2(D)->ssimode, D.8114
	testl	%eax, %eax	# D.8114
	js	.L173	#,
	.loc 1 759 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rcx	# V, tmp119
	movq	-24(%rbp), %rax	# V, tmp120
	movq	48(%rax), %rdx	# V_2(D)->ssioffset,
	movq	40(%rax), %rax	# V_2(D)->ssioffset, tmp121
	movq	%rax, 56(%rcx)	# tmp121, V_2(D)->r_off
	movq	%rdx, 64(%rcx)	#, V_2(D)->r_off
.L173:
	.loc 1 761 0 is_stmt 1
	movq	-24(%rbp), %rax	# V, tmp122
	movq	24(%rax), %rax	# V_2(D)->buf, D.8113
	addq	$12, %rax	#, D.8113
	movl	$.LC19, %esi	#,
	movq	%rax, %rdi	# D.8113,
	call	strtok	#
	movq	%rax, -8(%rbp)	# tmp123, sptr
	cmpq	$0, -8(%rbp)	#, sptr
	je	.L174	#,
	.loc 1 762 0
	movq	-24(%rbp), %rax	# V, tmp124
	movq	120(%rax), %rax	# V_2(D)->sqinfo, D.8115
	movq	-8(%rbp), %rcx	# sptr, tmp125
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp125,
	movq	%rax, %rdi	# D.8115,
	call	SetSeqinfoString	#
.L174:
	.loc 1 764 0
	movl	$0, -12(%rbp)	#, in_definition
	.loc 1 765 0
	jmp	.L175	#
.L185:
	.loc 1 767 0
	movq	-24(%rbp), %rax	# V, tmp126
	movq	%rax, %rdi	# tmp126,
	call	SeqfileGetLine	#
	.loc 1 768 0
	movq	-24(%rbp), %rax	# V, tmp127
	movq	(%rax), %rax	# V_2(D)->f, D.8116
	movq	%rax, %rdi	# D.8116,
	call	feof	#
	testl	%eax, %eax	# D.8114
	jne	.L176	#,
	.loc 1 768 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# V, tmp128
	movq	24(%rax), %rax	# V_2(D)->buf, D.8113
	movl	$.LC28, %esi	#,
	movq	%rax, %rdi	# D.8113,
	call	strstr	#
	movq	-24(%rbp), %rdx	# V, tmp129
	movq	24(%rdx), %rdx	# V_2(D)->buf, D.8113
	cmpq	%rdx, %rax	# D.8113, D.8113
	jne	.L176	#,
	.loc 1 770 0 is_stmt 1
	movq	-24(%rbp), %rax	# V, tmp130
	movq	24(%rax), %rax	# V_2(D)->buf, D.8113
	addq	$12, %rax	#, D.8113
	movl	$.LC29, %esi	#,
	movq	%rax, %rdi	# D.8113,
	call	strtok	#
	movq	%rax, -8(%rbp)	# tmp131, sptr
	cmpq	$0, -8(%rbp)	#, sptr
	je	.L177	#,
	.loc 1 771 0
	movq	-24(%rbp), %rax	# V, tmp132
	movq	120(%rax), %rax	# V_2(D)->sqinfo, D.8115
	movq	-8(%rbp), %rcx	# sptr, tmp133
	movl	$8, %edx	#,
	movq	%rcx, %rsi	# tmp133,
	movq	%rax, %rdi	# D.8115,
	call	SetSeqinfoString	#
.L177:
	.loc 1 772 0
	movl	$1, -12(%rbp)	#, in_definition
	jmp	.L175	#
.L176:
	.loc 1 774 0
	movq	-24(%rbp), %rax	# V, tmp134
	movq	(%rax), %rax	# V_2(D)->f, D.8116
	movq	%rax, %rdi	# D.8116,
	call	feof	#
	testl	%eax, %eax	# D.8114
	jne	.L178	#,
	.loc 1 774 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# V, tmp135
	movq	24(%rax), %rax	# V_2(D)->buf, D.8113
	movl	$.LC21, %esi	#,
	movq	%rax, %rdi	# D.8113,
	call	strstr	#
	movq	-24(%rbp), %rdx	# V, tmp136
	movq	24(%rdx), %rdx	# V_2(D)->buf, D.8113
	cmpq	%rdx, %rax	# D.8113, D.8113
	jne	.L178	#,
	.loc 1 776 0 is_stmt 1
	movq	-24(%rbp), %rax	# V, tmp137
	movq	24(%rax), %rax	# V_2(D)->buf, D.8113
	addq	$12, %rax	#, D.8113
	movl	$.LC19, %esi	#,
	movq	%rax, %rdi	# D.8113,
	call	strtok	#
	movq	%rax, -8(%rbp)	# tmp138, sptr
	cmpq	$0, -8(%rbp)	#, sptr
	je	.L179	#,
	.loc 1 777 0
	movq	-24(%rbp), %rax	# V, tmp139
	movq	120(%rax), %rax	# V_2(D)->sqinfo, D.8115
	movq	-8(%rbp), %rcx	# sptr, tmp140
	movl	$4, %edx	#,
	movq	%rcx, %rsi	# tmp140,
	movq	%rax, %rdi	# D.8115,
	call	SetSeqinfoString	#
.L179:
	.loc 1 778 0
	movl	$0, -12(%rbp)	#, in_definition
	jmp	.L175	#
.L178:
	.loc 1 780 0
	movq	-24(%rbp), %rax	# V, tmp141
	movq	(%rax), %rax	# V_2(D)->f, D.8116
	movq	%rax, %rdi	# D.8116,
	call	feof	#
	testl	%eax, %eax	# D.8114
	jne	.L180	#,
	.loc 1 780 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# V, tmp142
	movq	24(%rax), %rax	# V_2(D)->buf, D.8113
	movl	$.LC30, %esi	#,
	movq	%rax, %rdi	# D.8113,
	call	strstr	#
	movq	-24(%rbp), %rdx	# V, tmp143
	movq	24(%rdx), %rdx	# V_2(D)->buf, D.8113
	cmpq	%rdx, %rax	# D.8113, D.8113
	jne	.L180	#,
	.loc 1 782 0 is_stmt 1
	movq	-24(%rbp), %rax	# V, tmp144
	movq	24(%rax), %rax	# V_2(D)->buf, D.8113
	addq	$12, %rax	#, D.8113
	movl	$.LC19, %esi	#,
	movq	%rax, %rdi	# D.8113,
	call	strtok	#
	movq	%rax, -8(%rbp)	# tmp145, sptr
	cmpq	$0, -8(%rbp)	#, sptr
	je	.L181	#,
	.loc 1 783 0
	movq	-24(%rbp), %rax	# V, tmp146
	movq	120(%rax), %rax	# V_2(D)->sqinfo, D.8115
	movq	-8(%rbp), %rcx	# sptr, tmp147
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp147,
	movq	%rax, %rdi	# D.8115,
	call	SetSeqinfoString	#
.L181:
	.loc 1 784 0
	movl	$0, -12(%rbp)	#, in_definition
	jmp	.L175	#
.L180:
	.loc 1 786 0
	movq	-24(%rbp), %rax	# V, tmp148
	movq	24(%rax), %rax	# V_2(D)->buf, D.8113
	movl	$6, %edx	#,
	movl	$.LC31, %esi	#,
	movq	%rax, %rdi	# D.8113,
	call	strncmp	#
	testl	%eax, %eax	# D.8114
	je	.L182	#,
	.loc 1 788 0
	cmpl	$0, -12(%rbp)	#, in_definition
	je	.L175	#,
	.loc 1 789 0
	movq	-24(%rbp), %rax	# V, tmp149
	movq	24(%rax), %rcx	# V_2(D)->buf, D.8113
	movq	-24(%rbp), %rax	# V, tmp150
	movq	120(%rax), %rax	# V_2(D)->sqinfo, D.8115
	movl	$8, %edx	#,
	movq	%rcx, %rsi	# D.8113,
	movq	%rax, %rdi	# D.8115,
	call	SetSeqinfoString	#
	jmp	.L175	#
.L182:
	.loc 1 792 0
	jmp	.L184	#
.L175:
	.loc 1 765 0 discriminator 1
	movq	-24(%rbp), %rax	# V, tmp151
	movq	(%rax), %rax	# V_2(D)->f, D.8116
	movq	%rax, %rdi	# D.8116,
	call	feof	#
	testl	%eax, %eax	# D.8114
	je	.L185	#,
.L184:
	.loc 1 795 0
	movq	-24(%rbp), %rax	# V, tmp152
	movq	%rax, %rdx	# tmp152,
	movl	$endGB, %esi	#,
	movl	$0, %edi	#,
	call	readLoop	#
	.loc 1 799 0
	movq	-24(%rbp), %rax	# V, tmp153
	movq	120(%rax), %rax	# V_2(D)->sqinfo, D.8115
	movl	$1, 328(%rax)	#, _47->start
	.loc 1 800 0
	movq	-24(%rbp), %rax	# V, tmp154
	movq	120(%rax), %rax	# V_2(D)->sqinfo, D.8115
	movq	-24(%rbp), %rdx	# V, tmp155
	movl	136(%rdx), %edx	# V_2(D)->seqlen, D.8114
	movl	%edx, 332(%rax)	# D.8114, _48->stop
	.loc 1 801 0
	movq	-24(%rbp), %rax	# V, tmp156
	movq	120(%rax), %rax	# V_2(D)->sqinfo, D.8115
	movq	-24(%rbp), %rdx	# V, tmp157
	movl	136(%rdx), %edx	# V_2(D)->seqlen, D.8114
	movl	%edx, 336(%rax)	# D.8114, _50->olen
	.loc 1 802 0
	movq	-24(%rbp), %rax	# V, tmp158
	movq	120(%rax), %rax	# V_2(D)->sqinfo, D.8115
	movq	-24(%rbp), %rdx	# V, tmp159
	movq	120(%rdx), %rdx	# V_2(D)->sqinfo, D.8115
	movl	(%rdx), %edx	# _53->flags, D.8114
	orl	$304, %edx	#, D.8114
	movl	%edx, (%rax)	# D.8114, _52->flags
	.loc 1 805 0
	jmp	.L186	#
.L188:
	.loc 1 806 0
	movq	-24(%rbp), %rax	# V, tmp160
	movq	%rax, %rdi	# tmp160,
	call	SeqfileGetLine	#
.L186:
	.loc 1 805 0 discriminator 1
	movq	-24(%rbp), %rax	# V, tmp161
	movq	(%rax), %rax	# V_2(D)->f, D.8116
	movq	%rax, %rdi	# D.8116,
	call	feof	#
	testl	%eax, %eax	# D.8114
	jne	.L187	#,
	.loc 1 805 0 is_stmt 0 discriminator 2
	movq	-24(%rbp), %rax	# V, tmp162
	movq	24(%rax), %rax	# V_2(D)->buf, D.8113
	movzbl	(%rax), %eax	# *_58, D.8117
	testb	%al, %al	# D.8117
	je	.L188	#,
	.loc 1 805 0 discriminator 1
	movq	-24(%rbp), %rax	# V, tmp163
	movq	24(%rax), %rax	# V_2(D)->buf, D.8113
	movl	$.LC27, %esi	#,
	movq	%rax, %rdi	# D.8113,
	call	strstr	#
	movq	-24(%rbp), %rdx	# V, tmp164
	movq	24(%rdx), %rdx	# V_2(D)->buf, D.8113
	cmpq	%rdx, %rax	# D.8113, D.8113
	jne	.L188	#,
.L187:
	.loc 1 809 0 is_stmt 1
	jmp	.L189	#
.L191:
	.loc 1 810 0
	movq	-24(%rbp), %rax	# V, tmp165
	movq	%rax, %rdi	# tmp165,
	call	SeqfileGetLine	#
.L189:
	.loc 1 809 0 discriminator 1
	movq	-24(%rbp), %rax	# V, tmp166
	movq	(%rax), %rax	# V_2(D)->f, D.8116
	movq	%rax, %rdi	# D.8116,
	call	feof	#
	testl	%eax, %eax	# D.8114
	jne	.L170	#,
	.loc 1 809 0 is_stmt 0 discriminator 2
	movq	-24(%rbp), %rax	# V, tmp167
	movq	24(%rax), %rax	# V_2(D)->buf, D.8113
	movl	$.LC32, %esi	#,
	movq	%rax, %rdi	# D.8113,
	call	strstr	#
	movq	-24(%rbp), %rdx	# V, tmp168
	movq	24(%rdx), %rdx	# V_2(D)->buf, D.8113
	cmpq	%rdx, %rax	# D.8113, D.8113
	jne	.L191	#,
.L170:
	.loc 1 811 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	readGenBank, .-readGenBank
	.type	endGCGdata, @function
endGCGdata:
.LFB26:
	.loc 1 815 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# s, s
	movq	%rsi, -16(%rbp)	# addend, addend
	.loc 1 816 0
	movq	-16(%rbp), %rax	# addend, tmp63
	movl	$0, (%rax)	#, *addend_1(D)
	.loc 1 817 0
	movq	-8(%rbp), %rax	# s, tmp64
	movzbl	(%rax), %eax	# *s_2(D), D.8123
	cmpb	$62, %al	#, D.8123
	sete	%al	#, D.8124
	movzbl	%al, %eax	# D.8124, D.8125
	.loc 1 818 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	endGCGdata, .-endGCGdata
	.section	.rodata
	.align 8
.LC33:
	.string	">>>>([^ ]+) .+2BIT +Len: ([0-9]+)"
	.align 8
.LC34:
	.string	">>>>([^ ]+) .+ASCII +Len: [0-9]+"
.LC35:
	.string	"bogus GCGdata format? %s"
.LC36:
	.string	"malloc failed"
.LC37:
	.string	"fread failed"
	.text
	.type	readGCGdata, @function
readGCGdata:
.LFB27:
	.loc 1 822 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# V, V
	.loc 1 823 0
	movl	$0, -8(%rbp)	#, binary
	.loc 1 824 0
	movl	$0, -4(%rbp)	#, blen
	.loc 1 827 0
	movq	-24(%rbp), %rax	# V, tmp94
	movq	24(%rax), %rax	# V_5(D)->buf, D.8126
	movl	$2, %edx	#,
	movq	%rax, %rsi	# D.8126,
	movl	$.LC33, %edi	#,
	call	Strparse	#
	testl	%eax, %eax	# D.8127
	je	.L195	#,
	.loc 1 829 0
	movl	$1, -8(%rbp)	#, binary
	.loc 1 830 0
	movq	sqd_parse+8(%rip), %rcx	# sqd_parse, D.8126
	movq	-24(%rbp), %rax	# V, tmp95
	movq	120(%rax), %rax	# V_5(D)->sqinfo, D.8128
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# D.8126,
	movq	%rax, %rdi	# D.8128,
	call	SetSeqinfoString	#
	.loc 1 831 0
	movq	sqd_parse+16(%rip), %rax	# sqd_parse, D.8126
	movq	%rax, %rdi	# D.8126,
	call	atoi	#
	movl	%eax, -4(%rbp)	# tmp96, blen
	jmp	.L196	#
.L195:
	.loc 1 833 0
	movq	-24(%rbp), %rax	# V, tmp97
	movq	24(%rax), %rax	# V_5(D)->buf, D.8126
	movl	$1, %edx	#,
	movq	%rax, %rsi	# D.8126,
	movl	$.LC34, %edi	#,
	call	Strparse	#
	testl	%eax, %eax	# D.8127
	je	.L197	#,
	.loc 1 834 0
	movq	sqd_parse+8(%rip), %rcx	# sqd_parse, D.8126
	movq	-24(%rbp), %rax	# V, tmp98
	movq	120(%rax), %rax	# V_5(D)->sqinfo, D.8128
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# D.8126,
	movq	%rax, %rdi	# D.8128,
	call	SetSeqinfoString	#
	jmp	.L196	#
.L197:
	.loc 1 836 0
	movq	-24(%rbp), %rax	# V, tmp99
	movq	24(%rax), %rax	# V_5(D)->buf, D.8126
	movq	%rax, %rsi	# D.8126,
	movl	$.LC35, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L196:
	.loc 1 839 0
	movq	-24(%rbp), %rax	# V, tmp100
	movq	%rax, %rdi	# tmp100,
	call	SeqfileGetLine	#
	.loc 1 840 0
	movq	-24(%rbp), %rax	# V, tmp101
	movq	24(%rax), %rcx	# V_5(D)->buf, D.8126
	movq	-24(%rbp), %rax	# V, tmp102
	movq	120(%rax), %rax	# V_5(D)->sqinfo, D.8128
	movl	$8, %edx	#,
	movq	%rcx, %rsi	# D.8126,
	movq	%rax, %rdi	# D.8128,
	call	SetSeqinfoString	#
	.loc 1 842 0
	cmpl	$0, -8(%rbp)	#, binary
	je	.L198	#,
	.loc 1 844 0
	movq	-24(%rbp), %rax	# V, tmp103
	movl	140(%rax), %eax	# V_5(D)->maxseq, D.8127
	cmpl	-4(%rbp), %eax	# blen, D.8127
	jg	.L199	#,
	.loc 1 845 0
	movq	-24(%rbp), %rax	# V, tmp104
	movl	-4(%rbp), %edx	# blen, tmp105
	movl	%edx, 140(%rax)	# tmp105, V_5(D)->maxseq
	.loc 1 846 0
	movq	-24(%rbp), %rax	# V, tmp106
	movl	140(%rax), %eax	# V_5(D)->maxseq, D.8127
	addl	$4, %eax	#, D.8127
	movslq	%eax, %rdx	# D.8127, D.8129
	movq	-24(%rbp), %rax	# V, tmp107
	movq	112(%rax), %rax	# V_5(D)->seq, D.8126
	movq	%rdx, %rsi	# D.8129,
	movq	%rax, %rdi	# D.8126,
	call	realloc	#
	movq	-24(%rbp), %rdx	# V, tmp108
	movq	%rax, 112(%rdx)	# D.8130, V_5(D)->seq
	movq	-24(%rbp), %rax	# V, tmp109
	movq	112(%rax), %rax	# V_5(D)->seq, D.8126
	testq	%rax, %rax	# D.8126
	jne	.L199	#,
	.loc 1 847 0
	movl	$.LC36, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L199:
	.loc 1 850 0
	movq	-24(%rbp), %rax	# V, tmp110
	movq	(%rax), %rcx	# V_5(D)->f, D.8131
	movl	-4(%rbp), %eax	# blen, tmp111
	addl	$3, %eax	#, D.8127
	leal	3(%rax), %edx	#, tmp113
	testl	%eax, %eax	# tmp112
	cmovs	%edx, %eax	# tmp113,, tmp112
	sarl	$2, %eax	#, tmp114
	movslq	%eax, %rdx	# D.8127, D.8129
	movq	-24(%rbp), %rax	# V, tmp115
	movq	112(%rax), %rax	# V_5(D)->seq, D.8126
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.8126,
	call	fread	#
	movq	%rax, %rdx	#, D.8129
	movl	-4(%rbp), %eax	# blen, tmp116
	addl	$3, %eax	#, D.8127
	leal	3(%rax), %ecx	#, tmp118
	testl	%eax, %eax	# tmp117
	cmovs	%ecx, %eax	# tmp118,, tmp117
	sarl	$2, %eax	#, tmp119
	cltq
	cmpq	%rax, %rdx	# D.8129, D.8129
	jae	.L200	#,
	.loc 1 851 0
	movl	$.LC37, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L200:
	.loc 1 852 0
	movq	-24(%rbp), %rax	# V, tmp120
	movl	-4(%rbp), %edx	# blen, tmp121
	movl	%edx, 136(%rax)	# tmp121, V_5(D)->seqlen
	.loc 1 854 0
	movq	-24(%rbp), %rax	# V, tmp122
	movq	112(%rax), %rax	# V_5(D)->seq, D.8126
	movl	-4(%rbp), %edx	# blen, tmp123
	movl	%edx, %esi	# tmp123,
	movq	%rax, %rdi	# D.8126,
	call	GCGBinaryToSequence	#
	.loc 1 858 0
	jmp	.L202	#
.L198:
	.loc 1 856 0
	movq	-24(%rbp), %rax	# V, tmp124
	movq	%rax, %rdx	# tmp124,
	movl	$endGCGdata, %esi	#,
	movl	$0, %edi	#,
	call	readLoop	#
	.loc 1 858 0
	jmp	.L202	#
.L204:
	.loc 1 859 0
	movq	-24(%rbp), %rax	# V, tmp125
	movq	%rax, %rdi	# tmp125,
	call	SeqfileGetLine	#
.L202:
	.loc 1 858 0 discriminator 1
	movq	-24(%rbp), %rax	# V, tmp126
	movq	(%rax), %rax	# V_5(D)->f, D.8131
	movq	%rax, %rdi	# D.8131,
	call	feof	#
	testl	%eax, %eax	# D.8127
	jne	.L194	#,
	.loc 1 858 0 is_stmt 0 discriminator 2
	movq	-24(%rbp), %rax	# V, tmp127
	movq	24(%rax), %rax	# V_5(D)->buf, D.8126
	movzbl	(%rax), %eax	# *_39, D.8132
	testb	%al, %al	# D.8132
	je	.L204	#,
	.loc 1 858 0 discriminator 1
	movq	-24(%rbp), %rax	# V, tmp128
	movq	24(%rax), %rax	# V_5(D)->buf, D.8126
	movzbl	(%rax), %eax	# *_41, D.8132
	cmpb	$62, %al	#, D.8132
	jne	.L204	#,
.L194:
	.loc 1 860 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	readGCGdata, .-readGCGdata
	.type	endPearson, @function
endPearson:
.LFB28:
	.loc 1 864 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# s, s
	movq	%rsi, -16(%rbp)	# addend, addend
	.loc 1 865 0
	movq	-16(%rbp), %rax	# addend, tmp63
	movl	$0, (%rax)	#, *addend_1(D)
	.loc 1 866 0
	movq	-8(%rbp), %rax	# s, tmp64
	movzbl	(%rax), %eax	# *s_2(D), D.8138
	cmpb	$62, %al	#, D.8138
	sete	%al	#, D.8139
	movzbl	%al, %eax	# D.8139, D.8140
	.loc 1 867 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	endPearson, .-endPearson
	.section	.rodata
	.align 8
.LC38:
	.string	"File %s does not appear to be in FASTA format at line %d.\nYou may want to specify the file format on the command line.\nUsually this is done with an option --informat <fmt>.\n"
	.text
	.type	readPearson, @function
readPearson:
.LFB29:
	.loc 1 871 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# V, V
	.loc 1 874 0
	movq	-24(%rbp), %rax	# V, tmp74
	movl	36(%rax), %eax	# V_1(D)->ssimode, D.8141
	testl	%eax, %eax	# D.8141
	js	.L208	#,
	.loc 1 874 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rcx	# V, tmp75
	movq	-24(%rbp), %rax	# V, tmp76
	movq	48(%rax), %rdx	# V_1(D)->ssioffset,
	movq	40(%rax), %rax	# V_1(D)->ssioffset, tmp77
	movq	%rax, 56(%rcx)	# tmp77, V_1(D)->r_off
	movq	%rdx, 64(%rcx)	#, V_1(D)->r_off
.L208:
	.loc 1 876 0 is_stmt 1
	movq	-24(%rbp), %rax	# V, tmp78
	movq	24(%rax), %rax	# V_1(D)->buf, D.8142
	movzbl	(%rax), %eax	# *_3, D.8143
	cmpb	$62, %al	#, D.8143
	je	.L209	#,
	.loc 1 877 0
	movq	-24(%rbp), %rax	# V, tmp79
	movl	16(%rax), %edx	# V_1(D)->linenumber, D.8141
	movq	-24(%rbp), %rax	# V, tmp80
	movq	8(%rax), %rax	# V_1(D)->fname, D.8142
	movq	%rax, %rsi	# D.8142,
	movl	$.LC38, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L209:
	.loc 1 883 0
	movq	-24(%rbp), %rax	# V, tmp81
	movq	24(%rax), %rax	# V_1(D)->buf, D.8142
	addq	$1, %rax	#, D.8142
	movl	$.LC19, %esi	#,
	movq	%rax, %rdi	# D.8142,
	call	strtok	#
	movq	%rax, -8(%rbp)	# tmp82, sptr
	cmpq	$0, -8(%rbp)	#, sptr
	je	.L210	#,
	.loc 1 884 0
	movq	-24(%rbp), %rax	# V, tmp83
	movq	120(%rax), %rax	# V_1(D)->sqinfo, D.8144
	movq	-8(%rbp), %rcx	# sptr, tmp84
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp84,
	movq	%rax, %rdi	# D.8144,
	call	SetSeqinfoString	#
.L210:
	.loc 1 885 0
	movl	$.LC29, %esi	#,
	movl	$0, %edi	#,
	call	strtok	#
	movq	%rax, -8(%rbp)	# tmp85, sptr
	cmpq	$0, -8(%rbp)	#, sptr
	je	.L211	#,
	.loc 1 886 0
	movq	-24(%rbp), %rax	# V, tmp86
	movq	120(%rax), %rax	# V_1(D)->sqinfo, D.8144
	movq	-8(%rbp), %rcx	# sptr, tmp87
	movl	$8, %edx	#,
	movq	%rcx, %rsi	# tmp87,
	movq	%rax, %rdi	# D.8144,
	call	SetSeqinfoString	#
.L211:
	.loc 1 888 0
	movq	-24(%rbp), %rax	# V, tmp88
	movq	%rax, %rdx	# tmp88,
	movl	$endPearson, %esi	#,
	movl	$0, %edi	#,
	call	readLoop	#
	.loc 1 890 0
	jmp	.L212	#
.L214:
	.loc 1 891 0
	movq	-24(%rbp), %rax	# V, tmp89
	movq	%rax, %rdi	# tmp89,
	call	SeqfileGetLine	#
.L212:
	.loc 1 890 0 discriminator 1
	movq	-24(%rbp), %rax	# V, tmp90
	movq	(%rax), %rax	# V_1(D)->f, D.8145
	movq	%rax, %rdi	# D.8145,
	call	feof	#
	testl	%eax, %eax	# D.8141
	jne	.L207	#,
	.loc 1 890 0 is_stmt 0 discriminator 2
	movq	-24(%rbp), %rax	# V, tmp91
	movq	24(%rax), %rax	# V_1(D)->buf, D.8142
	movzbl	(%rax), %eax	# *_15, D.8143
	testb	%al, %al	# D.8143
	je	.L214	#,
	.loc 1 890 0 discriminator 1
	movq	-24(%rbp), %rax	# V, tmp92
	movq	24(%rax), %rax	# V_1(D)->buf, D.8142
	movzbl	(%rax), %eax	# *_17, D.8143
	cmpb	$62, %al	#, D.8143
	jne	.L214	#,
.L207:
	.loc 1 893 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	readPearson, .-readPearson
	.section	.rodata
.LC39:
	.string	"     "
	.text
	.type	endEMBL, @function
endEMBL:
.LFB30:
	.loc 1 898 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# s, s
	movq	%rsi, -16(%rbp)	# addend, addend
	.loc 1 899 0
	movq	-16(%rbp), %rax	# addend, tmp63
	movl	$0, (%rax)	#, *addend_1(D)
	.loc 1 908 0
	movq	-8(%rbp), %rax	# s, tmp64
	movl	$5, %edx	#,
	movl	$.LC39, %esi	#,
	movq	%rax, %rdi	# tmp64,
	call	strncmp	#
	testl	%eax, %eax	# D.8147
	setne	%al	#, D.8148
	movzbl	%al, %eax	# D.8148, D.8147
	.loc 1 910 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	endEMBL, .-endEMBL
	.section	.rodata
.LC40:
	.string	"ID  "
.LC41:
	.string	"AC  "
.LC42:
	.string	";  \t\n"
.LC43:
	.string	"DE  "
.LC44:
	.string	"SQ"
	.text
	.type	readEMBL, @function
readEMBL:
.LFB31:
	.loc 1 914 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# V, V
	.loc 1 918 0
	jmp	.L218	#
.L220:
	.loc 1 919 0
	movq	-24(%rbp), %rax	# V, tmp104
	movq	%rax, %rdi	# tmp104,
	call	SeqfileGetLine	#
.L218:
	.loc 1 918 0 discriminator 1
	movq	-24(%rbp), %rax	# V, tmp105
	movq	(%rax), %rax	# V_2(D)->f, D.8150
	movq	%rax, %rdi	# D.8150,
	call	feof	#
	testl	%eax, %eax	# D.8151
	jne	.L219	#,
	.loc 1 918 0 is_stmt 0 discriminator 2
	movq	-24(%rbp), %rax	# V, tmp106
	movq	24(%rax), %rax	# V_2(D)->buf, D.8152
	movl	$4, %edx	#,
	movl	$.LC40, %esi	#,
	movq	%rax, %rdi	# D.8152,
	call	strncmp	#
	testl	%eax, %eax	# D.8151
	jne	.L220	#,
.L219:
	.loc 1 921 0 is_stmt 1
	movq	-24(%rbp), %rax	# V, tmp107
	movl	36(%rax), %eax	# V_2(D)->ssimode, D.8151
	testl	%eax, %eax	# D.8151
	js	.L221	#,
	.loc 1 921 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rcx	# V, tmp108
	movq	-24(%rbp), %rax	# V, tmp109
	movq	48(%rax), %rdx	# V_2(D)->ssioffset,
	movq	40(%rax), %rax	# V_2(D)->ssioffset, tmp110
	movq	%rax, 56(%rcx)	# tmp110, V_2(D)->r_off
	movq	%rdx, 64(%rcx)	#, V_2(D)->r_off
.L221:
	.loc 1 923 0 is_stmt 1
	movq	-24(%rbp), %rax	# V, tmp111
	movq	24(%rax), %rax	# V_2(D)->buf, D.8152
	addq	$5, %rax	#, D.8152
	movl	$.LC19, %esi	#,
	movq	%rax, %rdi	# D.8152,
	call	strtok	#
	movq	%rax, -8(%rbp)	# tmp112, sptr
	cmpq	$0, -8(%rbp)	#, sptr
	je	.L222	#,
	.loc 1 925 0
	movq	-24(%rbp), %rax	# V, tmp113
	movq	120(%rax), %rax	# V_2(D)->sqinfo, D.8153
	movq	-8(%rbp), %rcx	# sptr, tmp114
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp114,
	movq	%rax, %rdi	# D.8153,
	call	SetSeqinfoString	#
	.loc 1 926 0
	movq	-24(%rbp), %rax	# V, tmp115
	movq	120(%rax), %rax	# V_2(D)->sqinfo, D.8153
	movq	-8(%rbp), %rcx	# sptr, tmp116
	movl	$2, %edx	#,
	movq	%rcx, %rsi	# tmp116,
	movq	%rax, %rdi	# D.8153,
	call	SetSeqinfoString	#
.L222:
	.loc 1 930 0
	movq	-24(%rbp), %rax	# V, tmp117
	movq	%rax, %rdi	# tmp117,
	call	SeqfileGetLine	#
	.loc 1 931 0
	movq	-24(%rbp), %rax	# V, tmp118
	movq	(%rax), %rax	# V_2(D)->f, D.8150
	movq	%rax, %rdi	# D.8150,
	call	feof	#
	testl	%eax, %eax	# D.8151
	jne	.L223	#,
	.loc 1 931 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# V, tmp119
	movq	24(%rax), %rax	# V_2(D)->buf, D.8152
	movl	$.LC41, %esi	#,
	movq	%rax, %rdi	# D.8152,
	call	strstr	#
	movq	-24(%rbp), %rdx	# V, tmp120
	movq	24(%rdx), %rdx	# V_2(D)->buf, D.8152
	cmpq	%rdx, %rax	# D.8152, D.8152
	jne	.L223	#,
	.loc 1 933 0 is_stmt 1
	movq	-24(%rbp), %rax	# V, tmp121
	movq	24(%rax), %rax	# V_2(D)->buf, D.8152
	addq	$5, %rax	#, D.8152
	movl	$.LC42, %esi	#,
	movq	%rax, %rdi	# D.8152,
	call	strtok	#
	movq	%rax, -8(%rbp)	# tmp122, sptr
	cmpq	$0, -8(%rbp)	#, sptr
	je	.L224	#,
	.loc 1 934 0
	movq	-24(%rbp), %rax	# V, tmp123
	movq	120(%rax), %rax	# V_2(D)->sqinfo, D.8153
	movq	-8(%rbp), %rcx	# sptr, tmp124
	movl	$4, %edx	#,
	movq	%rcx, %rsi	# tmp124,
	movq	%rax, %rdi	# D.8153,
	call	SetSeqinfoString	#
	.loc 1 933 0
	jmp	.L225	#
.L224:
	.loc 1 933 0 is_stmt 0 discriminator 1
	jmp	.L225	#
.L223:
	.loc 1 936 0 is_stmt 1
	movq	-24(%rbp), %rax	# V, tmp125
	movq	(%rax), %rax	# V_2(D)->f, D.8150
	movq	%rax, %rdi	# D.8150,
	call	feof	#
	testl	%eax, %eax	# D.8151
	jne	.L225	#,
	.loc 1 936 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# V, tmp126
	movq	24(%rax), %rax	# V_2(D)->buf, D.8152
	movl	$.LC43, %esi	#,
	movq	%rax, %rdi	# D.8152,
	call	strstr	#
	movq	-24(%rbp), %rdx	# V, tmp127
	movq	24(%rdx), %rdx	# V_2(D)->buf, D.8152
	cmpq	%rdx, %rax	# D.8152, D.8152
	jne	.L225	#,
	.loc 1 938 0 is_stmt 1
	movq	-24(%rbp), %rax	# V, tmp128
	movq	24(%rax), %rax	# V_2(D)->buf, D.8152
	addq	$5, %rax	#, D.8152
	movl	$.LC29, %esi	#,
	movq	%rax, %rdi	# D.8152,
	call	strtok	#
	movq	%rax, -8(%rbp)	# tmp129, sptr
	cmpq	$0, -8(%rbp)	#, sptr
	je	.L225	#,
	.loc 1 939 0
	movq	-24(%rbp), %rax	# V, tmp130
	movq	120(%rax), %rax	# V_2(D)->sqinfo, D.8153
	movq	-8(%rbp), %rcx	# sptr, tmp131
	movl	$8, %edx	#,
	movq	%rcx, %rsi	# tmp131,
	movq	%rax, %rdi	# D.8153,
	call	SetSeqinfoString	#
.L225:
	.loc 1 941 0
	movq	-24(%rbp), %rax	# V, tmp132
	movq	(%rax), %rax	# V_2(D)->f, D.8150
	movq	%rax, %rdi	# D.8150,
	call	feof	#
	testl	%eax, %eax	# D.8151
	jne	.L226	#,
	.loc 1 941 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# V, tmp133
	movq	24(%rax), %rax	# V_2(D)->buf, D.8152
	movl	$2, %edx	#,
	movl	$.LC44, %esi	#,
	movq	%rax, %rdi	# D.8152,
	call	strncmp	#
	testl	%eax, %eax	# D.8151
	jne	.L222	#,
.L226:
	.loc 1 943 0 is_stmt 1
	movq	-24(%rbp), %rax	# V, tmp134
	movq	%rax, %rdx	# tmp134,
	movl	$endEMBL, %esi	#,
	movl	$0, %edi	#,
	call	readLoop	#
	.loc 1 947 0
	movq	-24(%rbp), %rax	# V, tmp135
	movl	36(%rax), %eax	# V_2(D)->ssimode, D.8151
	cmpl	$-1, %eax	#, D.8151
	jne	.L227	#,
	.loc 1 948 0
	movq	-24(%rbp), %rax	# V, tmp136
	movq	112(%rax), %rax	# V_2(D)->seq, tmp137
	movq	%rax, -8(%rbp)	# tmp137, sptr
	jmp	.L228	#
.L230:
	.loc 1 949 0
	movq	-8(%rbp), %rax	# sptr, tmp138
	movzbl	(%rax), %eax	# *sptr_1, D.8154
	cmpb	$45, %al	#, D.8154
	jne	.L229	#,
	.loc 1 949 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# sptr, tmp139
	movb	$78, (%rax)	#, *sptr_1
.L229:
	.loc 1 948 0 is_stmt 1
	addq	$1, -8(%rbp)	#, sptr
.L228:
	.loc 1 948 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# sptr, tmp140
	movzbl	(%rax), %eax	# *sptr_1, D.8154
	testb	%al, %al	# D.8154
	jne	.L230	#,
.L227:
	.loc 1 953 0 is_stmt 1
	movq	-24(%rbp), %rax	# V, tmp141
	movq	120(%rax), %rax	# V_2(D)->sqinfo, D.8153
	movl	$1, 328(%rax)	#, _40->start
	.loc 1 954 0
	movq	-24(%rbp), %rax	# V, tmp142
	movq	120(%rax), %rax	# V_2(D)->sqinfo, D.8153
	movq	-24(%rbp), %rdx	# V, tmp143
	movl	136(%rdx), %edx	# V_2(D)->seqlen, D.8151
	movl	%edx, 332(%rax)	# D.8151, _41->stop
	.loc 1 955 0
	movq	-24(%rbp), %rax	# V, tmp144
	movq	120(%rax), %rax	# V_2(D)->sqinfo, D.8153
	movq	-24(%rbp), %rdx	# V, tmp145
	movl	136(%rdx), %edx	# V_2(D)->seqlen, D.8151
	movl	%edx, 336(%rax)	# D.8151, _43->olen
	.loc 1 956 0
	movq	-24(%rbp), %rax	# V, tmp146
	movq	120(%rax), %rax	# V_2(D)->sqinfo, D.8153
	movq	-24(%rbp), %rdx	# V, tmp147
	movq	120(%rdx), %rdx	# V_2(D)->sqinfo, D.8153
	movl	(%rdx), %edx	# _46->flags, D.8151
	orl	$304, %edx	#, D.8151
	movl	%edx, (%rax)	# D.8151, _45->flags
	.loc 1 959 0
	jmp	.L231	#
.L233:
	.loc 1 960 0
	movq	-24(%rbp), %rax	# V, tmp148
	movq	%rax, %rdi	# tmp148,
	call	SeqfileGetLine	#
.L231:
	.loc 1 959 0 discriminator 1
	movq	-24(%rbp), %rax	# V, tmp149
	movq	(%rax), %rax	# V_2(D)->f, D.8150
	movq	%rax, %rdi	# D.8150,
	call	feof	#
	testl	%eax, %eax	# D.8151
	jne	.L217	#,
	.loc 1 959 0 is_stmt 0 discriminator 2
	movq	-24(%rbp), %rax	# V, tmp150
	movq	24(%rax), %rax	# V_2(D)->buf, D.8152
	movl	$4, %edx	#,
	movl	$.LC40, %esi	#,
	movq	%rax, %rdi	# D.8152,
	call	strncmp	#
	testl	%eax, %eax	# D.8151
	jne	.L233	#,
.L217:
	.loc 1 963 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	readEMBL, .-readEMBL
	.type	endZuker, @function
endZuker:
.LFB32:
	.loc 1 968 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# s, s
	movq	%rsi, -16(%rbp)	# addend, addend
	.loc 1 969 0
	movq	-16(%rbp), %rax	# addend, tmp63
	movl	$0, (%rax)	#, *addend_1(D)
	.loc 1 970 0
	movq	-8(%rbp), %rax	# s, tmp64
	movzbl	(%rax), %eax	# *s_2(D), D.8160
	cmpb	$40, %al	#, D.8160
	sete	%al	#, D.8161
	movzbl	%al, %eax	# D.8161, D.8162
	.loc 1 971 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	endZuker, .-endZuker
	.type	readZuker, @function
readZuker:
.LFB33:
	.loc 1 975 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# V, V
	.loc 1 978 0
	movq	-24(%rbp), %rax	# V, tmp74
	movq	%rax, %rdi	# tmp74,
	call	SeqfileGetLine	#
	.loc 1 980 0
	movq	-24(%rbp), %rax	# V, tmp75
	movq	24(%rax), %rax	# V_1(D)->buf, D.8163
	addq	$6, %rax	#, D.8163
	movl	$.LC22, %esi	#,
	movq	%rax, %rdi	# D.8163,
	call	strtok	#
	movq	%rax, -8(%rbp)	# tmp76, sptr
	cmpq	$0, -8(%rbp)	#, sptr
	je	.L237	#,
	.loc 1 981 0
	movq	-24(%rbp), %rax	# V, tmp77
	movq	120(%rax), %rax	# V_1(D)->sqinfo, D.8164
	movq	-8(%rbp), %rcx	# sptr, tmp78
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp78,
	movq	%rax, %rdi	# D.8164,
	call	SetSeqinfoString	#
.L237:
	.loc 1 983 0
	movl	$.LC29, %esi	#,
	movl	$0, %edi	#,
	call	strtok	#
	movq	%rax, -8(%rbp)	# tmp79, sptr
	cmpq	$0, -8(%rbp)	#, sptr
	je	.L238	#,
	.loc 1 984 0
	movq	-24(%rbp), %rax	# V, tmp80
	movq	120(%rax), %rax	# V_1(D)->sqinfo, D.8164
	movq	-8(%rbp), %rcx	# sptr, tmp81
	movl	$8, %edx	#,
	movq	%rcx, %rsi	# tmp81,
	movq	%rax, %rdi	# D.8164,
	call	SetSeqinfoString	#
.L238:
	.loc 1 986 0
	movq	-24(%rbp), %rax	# V, tmp82
	movq	%rax, %rdx	# tmp82,
	movl	$endZuker, %esi	#,
	movl	$0, %edi	#,
	call	readLoop	#
	.loc 1 988 0
	jmp	.L239	#
.L240:
	.loc 1 989 0
	movq	-24(%rbp), %rax	# V, tmp83
	movq	%rax, %rdi	# tmp83,
	call	SeqfileGetLine	#
.L239:
	.loc 1 988 0 discriminator 1
	movq	-24(%rbp), %rax	# V, tmp84
	movq	(%rax), %rax	# V_1(D)->f, D.8165
	movq	%rax, %rdi	# D.8165,
	call	feof	#
	movq	-24(%rbp), %rdx	# V, tmp85
	movq	24(%rdx), %rdx	# V_1(D)->buf, D.8163
	movzbl	(%rdx), %edx	# *_10, D.8167
	testb	%dl, %dl	# D.8167
	setne	%cl	#, D.8168
	movq	-24(%rbp), %rdx	# V, tmp86
	movq	24(%rdx), %rdx	# V_1(D)->buf, D.8163
	movzbl	(%rdx), %edx	# *_13, D.8167
	cmpb	$40, %dl	#, D.8167
	sete	%dl	#, D.8168
	andl	%ecx, %edx	# D.8168, D.8168
	movzbl	%dl, %edx	# D.8168, D.8166
	orl	%edx, %eax	# D.8166, D.8166
	testl	%eax, %eax	# D.8166
	je	.L240	#,
	.loc 1 990 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	readZuker, .-readZuker
	.section	.rodata
.LC45:
	.string	"  Length: "
.LC46:
	.string	".."
	.text
	.type	readUWGCG, @function
readUWGCG:
.LFB34:
	.loc 1 994 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# V, V
	.loc 1 999 0
	movq	-40(%rbp), %rax	# V, tmp65
	movl	$0, 136(%rax)	#, V_1(D)->seqlen
	.loc 1 1003 0
	movq	-40(%rbp), %rax	# V, tmp66
	movq	24(%rax), %rax	# V_1(D)->buf, D.8169
	movl	$.LC45, %esi	#,
	movq	%rax, %rdi	# D.8169,
	call	strstr	#
	movq	%rax, -16(%rbp)	# tmp67, si
	cmpq	$0, -16(%rbp)	#, si
	je	.L242	#,
	.loc 1 1003 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# si, tmp68
	movb	$0, (%rax)	#, *si_3
	jmp	.L243	#
.L242:
	.loc 1 1004 0 is_stmt 1
	movq	-40(%rbp), %rax	# V, tmp69
	movq	24(%rax), %rax	# V_1(D)->buf, D.8169
	movl	$.LC46, %esi	#,
	movq	%rax, %rdi	# D.8169,
	call	strstr	#
	movq	%rax, -16(%rbp)	# tmp70, si
	cmpq	$0, -16(%rbp)	#, si
	je	.L243	#,
	.loc 1 1004 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax	# si, tmp71
	movb	$0, (%rax)	#, *si_5
.L243:
	.loc 1 1006 0 is_stmt 1
	movq	-40(%rbp), %rax	# V, tmp72
	movq	24(%rax), %rax	# V_1(D)->buf, D.8169
	movl	$.LC19, %esi	#,
	movq	%rax, %rdi	# D.8169,
	call	strtok	#
	movq	%rax, -8(%rbp)	# tmp73, sptr
	cmpq	$0, -8(%rbp)	#, sptr
	je	.L244	#,
	.loc 1 1007 0
	movq	-40(%rbp), %rax	# V, tmp74
	movq	120(%rax), %rax	# V_1(D)->sqinfo, D.8170
	movq	-8(%rbp), %rcx	# sptr, tmp75
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp75,
	movq	%rax, %rdi	# D.8170,
	call	SetSeqinfoString	#
.L244:
	.loc 1 1010 0
	movq	-40(%rbp), %rax	# V, tmp76
	movq	(%rax), %rax	# V_1(D)->f, D.8171
	movq	%rax, %rdi	# D.8171,
	call	feof	#
	movl	%eax, -20(%rbp)	# tmp77, done
	.loc 1 1011 0
	movq	-40(%rbp), %rax	# V, tmp78
	movq	%rax, %rdi	# tmp78,
	call	SeqfileGetLine	#
	.loc 1 1012 0
	cmpl	$0, -20(%rbp)	#, done
	jne	.L245	#,
	.loc 1 1012 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# V, tmp79
	movq	24(%rax), %rax	# V_1(D)->buf, D.8169
	movq	-40(%rbp), %rdx	# V, tmp80
	movq	%rdx, %rsi	# tmp80,
	movq	%rax, %rdi	# D.8169,
	call	addseq	#
.L245:
	.loc 1 1013 0 is_stmt 1
	cmpl	$0, -20(%rbp)	#, done
	je	.L244	#,
	.loc 1 1014 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	readUWGCG, .-readUWGCG
	.globl	ReadSeq
	.type	ReadSeq, @function
ReadSeq:
.LFB35:
	.loc 1 1044 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# V, V
	movl	%esi, -28(%rbp)	# format, format
	movq	%rdx, -40(%rbp)	# ret_seq, ret_seq
	movq	%rcx, -48(%rbp)	# sqinfo, sqinfo
	.loc 1 1047 0
	movl	$0, squid_errno(%rip)	#, squid_errno
	.loc 1 1052 0
	movq	-24(%rbp), %rax	# V, tmp232
	movl	144(%rax), %eax	# V_2(D)->format, D.8174
	cmpl	$100, %eax	#, D.8174
	jle	.L247	#,
	.loc 1 1054 0
	movq	-24(%rbp), %rax	# V, tmp233
	movq	160(%rax), %rax	# V_2(D)->msa, D.8175
	movl	352(%rax), %edx	# _4->lastidx, D.8174
	movq	-24(%rbp), %rax	# V, tmp234
	movq	160(%rax), %rax	# V_2(D)->msa, D.8175
	movl	28(%rax), %eax	# _6->nseq, D.8174
	cmpl	%eax, %edx	# D.8174, D.8174
	jl	.L248	#,
	.loc 1 1056 0
	movq	-24(%rbp), %rax	# V, tmp235
	movq	160(%rax), %rax	# V_2(D)->msa, D.8175
	movq	%rax, %rdi	# D.8175,
	call	MSAFree	#
	.loc 1 1057 0
	movq	-24(%rbp), %rax	# V, tmp236
	movq	168(%rax), %rax	# V_2(D)->afp, D.8176
	movq	%rax, %rdi	# D.8176,
	call	MSAFileRead	#
	movq	-24(%rbp), %rdx	# V, tmp237
	movq	%rax, 160(%rdx)	# D.8175, V_2(D)->msa
	movq	-24(%rbp), %rax	# V, tmp238
	movq	160(%rax), %rax	# V_2(D)->msa, D.8175
	testq	%rax, %rax	# D.8175
	jne	.L249	#,
	.loc 1 1058 0
	movl	$0, %eax	#, D.8174
	jmp	.L250	#
.L249:
	.loc 1 1059 0
	movq	-24(%rbp), %rax	# V, tmp239
	movq	160(%rax), %rax	# V_2(D)->msa, D.8175
	movl	$0, 352(%rax)	#, _13->lastidx
.L248:
	.loc 1 1062 0
	movq	-24(%rbp), %rax	# V, tmp240
	leaq	112(%rax), %rcx	#, D.8177
	.loc 1 1063 0
	movq	-24(%rbp), %rax	# V, tmp241
	movq	160(%rax), %rax	# V_2(D)->msa, D.8175
	movq	(%rax), %rdx	# _15->aseq, D.8177
	movq	-24(%rbp), %rax	# V, tmp242
	movq	160(%rax), %rax	# V_2(D)->msa, D.8175
	movl	352(%rax), %eax	# _17->lastidx, D.8174
	cltq
	salq	$3, %rax	#, D.8178
	addq	%rdx, %rax	# D.8177, D.8177
	.loc 1 1062 0
	movq	(%rax), %rdx	# *_21, D.8179
	movq	-24(%rbp), %rax	# V, tmp243
	movq	160(%rax), %rax	# V_2(D)->msa, D.8175
	movl	24(%rax), %esi	# _23->alen, D.8174
	movq	-24(%rbp), %rax	# V, tmp244
	movq	160(%rax), %rax	# V_2(D)->msa, D.8175
	movq	(%rax), %rdi	# _25->aseq, D.8177
	movq	-24(%rbp), %rax	# V, tmp245
	movq	160(%rax), %rax	# V_2(D)->msa, D.8175
	movl	352(%rax), %eax	# _27->lastidx, D.8174
	cltq
	salq	$3, %rax	#, D.8178
	addq	%rdi, %rax	# D.8177, D.8177
	movq	(%rax), %rax	# *_31, D.8179
	movq	%rax, %rdi	# D.8179,
	call	MakeDealignedString	#
	.loc 1 1064 0
	movq	-24(%rbp), %rax	# V, tmp246
	movq	112(%rax), %rax	# V_2(D)->seq, D.8179
	movq	%rax, %rdi	# D.8179,
	call	strlen	#
	movl	%eax, %edx	# D.8178, D.8174
	movq	-24(%rbp), %rax	# V, tmp247
	movl	%edx, 136(%rax)	# D.8174, V_2(D)->seqlen
	.loc 1 1069 0
	movq	-48(%rbp), %rax	# sqinfo, tmp248
	movl	$0, (%rax)	#, sqinfo_36(D)->flags
	.loc 1 1070 0
	movq	-24(%rbp), %rax	# V, tmp249
	movq	160(%rax), %rax	# V_2(D)->msa, D.8175
	movq	8(%rax), %rdx	# _37->sqname, D.8177
	movq	-24(%rbp), %rax	# V, tmp250
	movq	160(%rax), %rax	# V_2(D)->msa, D.8175
	movl	352(%rax), %eax	# _39->lastidx, D.8174
	cltq
	salq	$3, %rax	#, D.8178
	addq	%rdx, %rax	# D.8177, D.8177
	movq	(%rax), %rax	# *_43, D.8179
	testq	%rax, %rax	# D.8179
	je	.L251	#,
	.loc 1 1071 0
	movq	-24(%rbp), %rax	# V, tmp251
	movq	160(%rax), %rax	# V_2(D)->msa, D.8175
	movq	8(%rax), %rdx	# _45->sqname, D.8177
	movq	-24(%rbp), %rax	# V, tmp252
	movq	160(%rax), %rax	# V_2(D)->msa, D.8175
	movl	352(%rax), %eax	# _47->lastidx, D.8174
	cltq
	salq	$3, %rax	#, D.8178
	addq	%rdx, %rax	# D.8177, D.8177
	movq	(%rax), %rcx	# *_51, D.8179
	movq	-48(%rbp), %rax	# sqinfo, tmp253
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# D.8179,
	movq	%rax, %rdi	# tmp253,
	call	SetSeqinfoString	#
.L251:
	.loc 1 1072 0
	movq	-24(%rbp), %rax	# V, tmp254
	movq	160(%rax), %rax	# V_2(D)->msa, D.8175
	movq	96(%rax), %rax	# _53->sqacc, D.8177
	testq	%rax, %rax	# D.8177
	je	.L252	#,
	.loc 1 1072 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# V, tmp255
	movq	160(%rax), %rax	# V_2(D)->msa, D.8175
	movq	96(%rax), %rdx	# _55->sqacc, D.8177
	movq	-24(%rbp), %rax	# V, tmp256
	movq	160(%rax), %rax	# V_2(D)->msa, D.8175
	movl	352(%rax), %eax	# _57->lastidx, D.8174
	cltq
	salq	$3, %rax	#, D.8178
	addq	%rdx, %rax	# D.8177, D.8177
	movq	(%rax), %rax	# *_61, D.8179
	testq	%rax, %rax	# D.8179
	je	.L252	#,
	.loc 1 1073 0 is_stmt 1
	movq	-24(%rbp), %rax	# V, tmp257
	movq	160(%rax), %rax	# V_2(D)->msa, D.8175
	movq	96(%rax), %rdx	# _63->sqacc, D.8177
	movq	-24(%rbp), %rax	# V, tmp258
	movq	160(%rax), %rax	# V_2(D)->msa, D.8175
	movl	352(%rax), %eax	# _65->lastidx, D.8174
	cltq
	salq	$3, %rax	#, D.8178
	addq	%rdx, %rax	# D.8177, D.8177
	movq	(%rax), %rcx	# *_69, D.8179
	movq	-48(%rbp), %rax	# sqinfo, tmp259
	movl	$4, %edx	#,
	movq	%rcx, %rsi	# D.8179,
	movq	%rax, %rdi	# tmp259,
	call	SetSeqinfoString	#
.L252:
	.loc 1 1074 0
	movq	-24(%rbp), %rax	# V, tmp260
	movq	160(%rax), %rax	# V_2(D)->msa, D.8175
	movq	104(%rax), %rax	# _71->sqdesc, D.8177
	testq	%rax, %rax	# D.8177
	je	.L253	#,
	.loc 1 1074 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# V, tmp261
	movq	160(%rax), %rax	# V_2(D)->msa, D.8175
	movq	104(%rax), %rdx	# _73->sqdesc, D.8177
	movq	-24(%rbp), %rax	# V, tmp262
	movq	160(%rax), %rax	# V_2(D)->msa, D.8175
	movl	352(%rax), %eax	# _75->lastidx, D.8174
	cltq
	salq	$3, %rax	#, D.8178
	addq	%rdx, %rax	# D.8177, D.8177
	movq	(%rax), %rax	# *_79, D.8179
	testq	%rax, %rax	# D.8179
	je	.L253	#,
	.loc 1 1075 0 is_stmt 1
	movq	-24(%rbp), %rax	# V, tmp263
	movq	160(%rax), %rax	# V_2(D)->msa, D.8175
	movq	104(%rax), %rdx	# _81->sqdesc, D.8177
	movq	-24(%rbp), %rax	# V, tmp264
	movq	160(%rax), %rax	# V_2(D)->msa, D.8175
	movl	352(%rax), %eax	# _83->lastidx, D.8174
	cltq
	salq	$3, %rax	#, D.8178
	addq	%rdx, %rax	# D.8177, D.8177
	movq	(%rax), %rcx	# *_87, D.8179
	movq	-48(%rbp), %rax	# sqinfo, tmp265
	movl	$8, %edx	#,
	movq	%rcx, %rsi	# D.8179,
	movq	%rax, %rdi	# tmp265,
	call	SetSeqinfoString	#
.L253:
	.loc 1 1076 0
	movq	-24(%rbp), %rax	# V, tmp266
	movq	160(%rax), %rax	# V_2(D)->msa, D.8175
	movq	112(%rax), %rax	# _89->ss, D.8177
	testq	%rax, %rax	# D.8177
	je	.L254	#,
	.loc 1 1076 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# V, tmp267
	movq	160(%rax), %rax	# V_2(D)->msa, D.8175
	movq	112(%rax), %rdx	# _91->ss, D.8177
	movq	-24(%rbp), %rax	# V, tmp268
	movq	160(%rax), %rax	# V_2(D)->msa, D.8175
	movl	352(%rax), %eax	# _93->lastidx, D.8174
	cltq
	salq	$3, %rax	#, D.8178
	addq	%rdx, %rax	# D.8177, D.8177
	movq	(%rax), %rax	# *_97, D.8179
	testq	%rax, %rax	# D.8179
	je	.L254	#,
	.loc 1 1077 0 is_stmt 1
	movq	-48(%rbp), %rax	# sqinfo, tmp269
	leaq	344(%rax), %rcx	#, D.8177
	.loc 1 1078 0
	movq	-24(%rbp), %rax	# V, tmp270
	movq	160(%rax), %rax	# V_2(D)->msa, D.8175
	movq	112(%rax), %rdx	# _100->ss, D.8177
	movq	-24(%rbp), %rax	# V, tmp271
	movq	160(%rax), %rax	# V_2(D)->msa, D.8175
	movl	352(%rax), %eax	# _102->lastidx, D.8174
	cltq
	salq	$3, %rax	#, D.8178
	addq	%rdx, %rax	# D.8177, D.8177
	.loc 1 1077 0
	movq	(%rax), %rdx	# *_106, D.8179
	movq	-24(%rbp), %rax	# V, tmp272
	movq	160(%rax), %rax	# V_2(D)->msa, D.8175
	movl	24(%rax), %esi	# _108->alen, D.8174
	movq	-24(%rbp), %rax	# V, tmp273
	movq	160(%rax), %rax	# V_2(D)->msa, D.8175
	movq	(%rax), %rdi	# _110->aseq, D.8177
	movq	-24(%rbp), %rax	# V, tmp274
	movq	160(%rax), %rax	# V_2(D)->msa, D.8175
	movl	352(%rax), %eax	# _112->lastidx, D.8174
	cltq
	salq	$3, %rax	#, D.8178
	addq	%rdi, %rax	# D.8177, D.8177
	movq	(%rax), %rax	# *_116, D.8179
	movq	%rax, %rdi	# D.8179,
	call	MakeDealignedString	#
	.loc 1 1079 0
	movq	-48(%rbp), %rax	# sqinfo, tmp275
	movl	(%rax), %eax	# sqinfo_36(D)->flags, D.8174
	orb	$2, %ah	#, D.8174
	movl	%eax, %edx	# D.8174, D.8174
	movq	-48(%rbp), %rax	# sqinfo, tmp276
	movl	%edx, (%rax)	# D.8174, sqinfo_36(D)->flags
.L254:
	.loc 1 1081 0
	movq	-24(%rbp), %rax	# V, tmp277
	movq	160(%rax), %rax	# V_2(D)->msa, D.8175
	movq	120(%rax), %rax	# _120->sa, D.8177
	testq	%rax, %rax	# D.8177
	je	.L255	#,
	.loc 1 1081 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# V, tmp278
	movq	160(%rax), %rax	# V_2(D)->msa, D.8175
	movq	120(%rax), %rdx	# _122->sa, D.8177
	movq	-24(%rbp), %rax	# V, tmp279
	movq	160(%rax), %rax	# V_2(D)->msa, D.8175
	movl	352(%rax), %eax	# _124->lastidx, D.8174
	cltq
	salq	$3, %rax	#, D.8178
	addq	%rdx, %rax	# D.8177, D.8177
	movq	(%rax), %rax	# *_128, D.8179
	testq	%rax, %rax	# D.8179
	je	.L255	#,
	.loc 1 1082 0 is_stmt 1
	movq	-48(%rbp), %rax	# sqinfo, tmp280
	leaq	352(%rax), %rcx	#, D.8177
	.loc 1 1083 0
	movq	-24(%rbp), %rax	# V, tmp281
	movq	160(%rax), %rax	# V_2(D)->msa, D.8175
	movq	120(%rax), %rdx	# _131->sa, D.8177
	movq	-24(%rbp), %rax	# V, tmp282
	movq	160(%rax), %rax	# V_2(D)->msa, D.8175
	movl	352(%rax), %eax	# _133->lastidx, D.8174
	cltq
	salq	$3, %rax	#, D.8178
	addq	%rdx, %rax	# D.8177, D.8177
	.loc 1 1082 0
	movq	(%rax), %rdx	# *_137, D.8179
	movq	-24(%rbp), %rax	# V, tmp283
	movq	160(%rax), %rax	# V_2(D)->msa, D.8175
	movl	24(%rax), %esi	# _139->alen, D.8174
	movq	-24(%rbp), %rax	# V, tmp284
	movq	160(%rax), %rax	# V_2(D)->msa, D.8175
	movq	(%rax), %rdi	# _141->aseq, D.8177
	movq	-24(%rbp), %rax	# V, tmp285
	movq	160(%rax), %rax	# V_2(D)->msa, D.8175
	movl	352(%rax), %eax	# _143->lastidx, D.8174
	cltq
	salq	$3, %rax	#, D.8178
	addq	%rdi, %rax	# D.8177, D.8177
	movq	(%rax), %rax	# *_147, D.8179
	movq	%rax, %rdi	# D.8179,
	call	MakeDealignedString	#
	.loc 1 1084 0
	movq	-48(%rbp), %rax	# sqinfo, tmp286
	movl	(%rax), %eax	# sqinfo_36(D)->flags, D.8174
	orb	$4, %ah	#, D.8174
	movl	%eax, %edx	# D.8174, D.8174
	movq	-48(%rbp), %rax	# sqinfo, tmp287
	movl	%edx, (%rax)	# D.8174, sqinfo_36(D)->flags
.L255:
	.loc 1 1086 0
	movq	-24(%rbp), %rax	# V, tmp288
	movq	160(%rax), %rax	# V_2(D)->msa, D.8175
	movl	352(%rax), %edx	# _151->lastidx, D.8174
	addl	$1, %edx	#, D.8174
	movl	%edx, 352(%rax)	# D.8174, _151->lastidx
	jmp	.L256	#
.L247:
	.loc 1 1089 0
	movq	-24(%rbp), %rax	# V, tmp289
	movq	(%rax), %rax	# V_2(D)->f, D.8180
	movq	%rax, %rdi	# D.8180,
	call	feof	#
	testl	%eax, %eax	# D.8174
	je	.L257	#,
	.loc 1 1089 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.8174
	jmp	.L250	#
.L257:
	.loc 1 1091 0 is_stmt 1
	movq	-24(%rbp), %rax	# V, tmp290
	movl	36(%rax), %eax	# V_2(D)->ssimode, D.8174
	cmpl	$-1, %eax	#, D.8174
	jne	.L258	#,
	.loc 1 1092 0
	movl	$1, %esi	#,
	movl	$501, %edi	#,
	call	calloc	#
	movq	%rax, %rdx	# tmp291, D.8181
	movq	-24(%rbp), %rax	# V, tmp292
	movq	%rdx, 112(%rax)	# D.8181, V_2(D)->seq
	.loc 1 1093 0
	movq	-24(%rbp), %rax	# V, tmp293
	movl	$500, 140(%rax)	#, V_2(D)->maxseq
	jmp	.L259	#
.L258:
	.loc 1 1095 0
	movq	-24(%rbp), %rax	# V, tmp294
	movq	$0, 112(%rax)	#, V_2(D)->seq
	.loc 1 1096 0
	movq	-24(%rbp), %rax	# V, tmp295
	movl	$0, 140(%rax)	#, V_2(D)->maxseq
.L259:
	.loc 1 1098 0
	movq	-24(%rbp), %rax	# V, tmp296
	movl	$0, 136(%rax)	#, V_2(D)->seqlen
	.loc 1 1099 0
	movq	-24(%rbp), %rax	# V, tmp297
	movq	-48(%rbp), %rdx	# sqinfo, tmp298
	movq	%rdx, 120(%rax)	# tmp298, V_2(D)->sqinfo
	.loc 1 1100 0
	movq	-24(%rbp), %rax	# V, tmp299
	movq	120(%rax), %rax	# V_2(D)->sqinfo, D.8182
	movl	$0, (%rax)	#, _159->flags
	.loc 1 1102 0
	movq	-24(%rbp), %rax	# V, tmp300
	movl	144(%rax), %eax	# V_2(D)->format, D.8174
	cmpl	$16, %eax	#, D.8174
	ja	.L260	#,
	movl	%eax, %eax	# D.8174, tmp301
	movq	.L262(,%rax,8), %rax	#, tmp302
	jmp	*%rax	# tmp302
	.section	.rodata
	.align 8
	.align 4
.L262:
	.quad	.L260
	.quad	.L261
	.quad	.L263
	.quad	.L260
	.quad	.L264
	.quad	.L265
	.quad	.L266
	.quad	.L267
	.quad	.L268
	.quad	.L260
	.quad	.L260
	.quad	.L260
	.quad	.L269
	.quad	.L260
	.quad	.L260
	.quad	.L260
	.quad	.L270
	.text
.L261:
	.loc 1 1103 0
	movq	-24(%rbp), %rax	# V, tmp303
	movq	%rax, %rdi	# tmp303,
	call	readIG	#
	jmp	.L271	#
.L266:
	.loc 1 1104 0
	movq	-24(%rbp), %rax	# V, tmp304
	movq	%rax, %rdi	# tmp304,
	call	readStrider	#
	jmp	.L271	#
.L263:
	.loc 1 1105 0
	movq	-24(%rbp), %rax	# V, tmp305
	movq	%rax, %rdi	# tmp305,
	call	readGenBank	#
	jmp	.L271	#
.L267:
	.loc 1 1106 0
	movq	-24(%rbp), %rax	# V, tmp306
	movq	%rax, %rdi	# tmp306,
	call	readPearson	#
	jmp	.L271	#
.L264:
	.loc 1 1107 0
	movq	-24(%rbp), %rax	# V, tmp307
	movq	%rax, %rdi	# tmp307,
	call	readEMBL	#
	jmp	.L271	#
.L268:
	.loc 1 1108 0
	movq	-24(%rbp), %rax	# V, tmp308
	movq	%rax, %rdi	# tmp308,
	call	readZuker	#
	jmp	.L271	#
.L269:
	.loc 1 1109 0
	movq	-24(%rbp), %rax	# V, tmp309
	movq	%rax, %rdi	# tmp309,
	call	readPIR	#
	jmp	.L271	#
.L270:
	.loc 1 1110 0
	movq	-24(%rbp), %rax	# V, tmp310
	movq	%rax, %rdi	# tmp310,
	call	readGCGdata	#
	jmp	.L271	#
.L265:
	.loc 1 1114 0
	movq	-24(%rbp), %rax	# V, tmp311
	movq	24(%rax), %rax	# V_2(D)->buf, D.8179
	movl	$.LC46, %esi	#,
	movq	%rax, %rdi	# D.8179,
	call	strstr	#
	testq	%rax, %rax	# D.8179
	setne	%al	#, D.8183
	movzbl	%al, %eax	# D.8183, tmp312
	movl	%eax, -4(%rbp)	# tmp312, gotuw
	.loc 1 1115 0
	cmpl	$0, -4(%rbp)	#, gotuw
	je	.L272	#,
	.loc 1 1115 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# V, tmp313
	movq	%rax, %rdi	# tmp313,
	call	readUWGCG	#
.L272:
	.loc 1 1116 0 is_stmt 1
	movq	-24(%rbp), %rax	# V, tmp314
	movq	%rax, %rdi	# tmp314,
	call	SeqfileGetLine	#
	.loc 1 1117 0
	movq	-24(%rbp), %rax	# V, tmp315
	movq	(%rax), %rax	# V_2(D)->f, D.8180
	movq	%rax, %rdi	# D.8180,
	call	feof	#
	testl	%eax, %eax	# D.8174
	je	.L265	#,
	.loc 1 1118 0
	jmp	.L271	#
.L260:
	.loc 1 1122 0
	movl	$5, squid_errno(%rip)	#, squid_errno
	.loc 1 1123 0
	movq	-24(%rbp), %rax	# V, tmp316
	movq	112(%rax), %rax	# V_2(D)->seq, D.8179
	movq	%rax, %rdi	# D.8179,
	call	free	#
	.loc 1 1124 0
	movl	$0, %eax	#, D.8174
	jmp	.L250	#
.L271:
	.loc 1 1126 0
	movq	-24(%rbp), %rax	# V, tmp317
	movq	112(%rax), %rax	# V_2(D)->seq, D.8179
	testq	%rax, %rax	# D.8179
	je	.L256	#,
	.loc 1 1127 0
	movq	-24(%rbp), %rax	# V, tmp318
	movq	112(%rax), %rdx	# V_2(D)->seq, D.8179
	movq	-24(%rbp), %rax	# V, tmp319
	movl	136(%rax), %eax	# V_2(D)->seqlen, D.8174
	cltq
	addq	%rdx, %rax	# D.8179, D.8179
	movb	$0, (%rax)	#, *_173
.L256:
	.loc 1 1132 0
	movq	-24(%rbp), %rax	# V, tmp320
	movl	136(%rax), %edx	# V_2(D)->seqlen, D.8174
	movq	-48(%rbp), %rax	# sqinfo, tmp321
	movl	%edx, 324(%rax)	# D.8174, sqinfo_36(D)->len
	.loc 1 1133 0
	movq	-48(%rbp), %rax	# sqinfo, tmp322
	movl	(%rax), %eax	# sqinfo_36(D)->flags, D.8174
	orl	$64, %eax	#, D.8174
	movl	%eax, %edx	# D.8174, D.8174
	movq	-48(%rbp), %rax	# sqinfo, tmp323
	movl	%edx, (%rax)	# D.8174, sqinfo_36(D)->flags
	.loc 1 1134 0
	movq	-24(%rbp), %rax	# V, tmp324
	movq	112(%rax), %rdx	# V_2(D)->seq, D.8179
	movq	-40(%rbp), %rax	# ret_seq, tmp325
	movq	%rdx, (%rax)	# D.8179, *ret_seq_178(D)
	.loc 1 1135 0
	movl	squid_errno(%rip), %eax	# squid_errno, squid_errno.7
	testl	%eax, %eax	# squid_errno.7
	jne	.L273	#,
	.loc 1 1135 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, D.8174
	jmp	.L250	#
.L273:
	.loc 1 1135 0 discriminator 2
	movl	$0, %eax	#, D.8174
.L250:
	.loc 1 1136 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	ReadSeq, .-ReadSeq
	.section	.rodata
.LC47:
	.string	">>>>"
.LC48:
	.string	"Len: "
.LC49:
	.string	"!!AA_SEQUENCE"
.LC50:
	.string	"!!NA_SEQUENCE"
.LC51:
	.string	"# STOCKHOLM 1."
.LC52:
	.string	"CLUSTAL"
.LC53:
	.string	"multiple sequence alignment"
.LC54:
	.string	"!!AA_MULTIPLE_ALIGNMENT"
.LC55:
	.string	"!!NA_MULTIPLE_ALIGNMENT"
.LC56:
	.string	"#=AU"
.LC57:
	.string	"#=ID"
.LC58:
	.string	"#=AC"
.LC59:
	.string	"#=DE"
.LC60:
	.string	"#=GA"
.LC61:
	.string	"#=TC"
.LC62:
	.string	"#=NC"
.LC63:
	.string	"#=SQ"
.LC64:
	.string	"#=SS"
.LC65:
	.string	"#=CS"
.LC66:
	.string	"#=RF"
.LC67:
	.string	"ENTRY "
.LC68:
	.string	"MSF:"
.LC69:
	.string	"Check:"
.LC70:
	.string	" Check: "
.LC71:
	.string	"LOCUS "
.LC72:
	.string	"ORIGIN "
.LC73:
	.string	"ID   "
.LC74:
	.string	"SQ   "
.LC75:
	.string	"#%"
	.align 8
.LC76:
	.string	"Sequence file contains no data"
	.text
	.globl	SeqfileFormat
	.type	SeqfileFormat, @function
SeqfileFormat:
.LFB36:
	.loc 1 1168 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -72(%rbp)	# fp, fp
	.loc 1 1171 0
	movl	$0, -52(%rbp)	#, fmt
	.loc 1 1176 0
	movq	$0, -40(%rbp)	#, buf
	.loc 1 1177 0
	movl	$0, -56(%rbp)	#, len
	.loc 1 1178 0
	movl	$0, -48(%rbp)	#, ndataline
	.loc 1 1179 0
	movl	$0, -44(%rbp)	#, has_junk
	.loc 1 1180 0
	jmp	.L275	#
.L303:
	.loc 1 1182 0
	movq	-40(%rbp), %rax	# buf, buf.8
	movq	%rax, %rdi	# buf.8,
	call	IsBlankline	#
	testl	%eax, %eax	# D.8186
	je	.L276	#,
	.loc 1 1182 0 is_stmt 0 discriminator 1
	jmp	.L275	#
.L276:
	.loc 1 1186 0 is_stmt 1
	cmpl	$0, -48(%rbp)	#, ndataline
	jne	.L277	#,
	.loc 1 1188 0
	movq	-40(%rbp), %rax	# buf, buf.9
	movl	$4, %edx	#,
	movl	$.LC47, %esi	#,
	movq	%rax, %rdi	# buf.9,
	call	strncmp	#
	testl	%eax, %eax	# D.8186
	jne	.L278	#,
	.loc 1 1188 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# buf, buf.10
	movl	$.LC48, %esi	#,
	movq	%rax, %rdi	# buf.10,
	call	strstr	#
	testq	%rax, %rax	# D.8185
	je	.L278	#,
	.loc 1 1189 0 is_stmt 1
	movl	$16, -52(%rbp)	#, fmt
	jmp	.L279	#
.L278:
	.loc 1 1191 0
	movq	-40(%rbp), %rax	# buf, buf.11
	movzbl	(%rax), %eax	# *buf.11_20, D.8187
	cmpb	$62, %al	#, D.8187
	jne	.L280	#,
	.loc 1 1192 0
	movl	$7, -52(%rbp)	#, fmt
	jmp	.L279	#
.L280:
	.loc 1 1194 0
	movq	-40(%rbp), %rax	# buf, buf.12
	movl	$13, %edx	#,
	movl	$.LC49, %esi	#,
	movq	%rax, %rdi	# buf.12,
	call	strncmp	#
	testl	%eax, %eax	# D.8186
	je	.L281	#,
	.loc 1 1195 0 discriminator 1
	movq	-40(%rbp), %rax	# buf, buf.13
	movl	$13, %edx	#,
	movl	$.LC50, %esi	#,
	movq	%rax, %rdi	# buf.13,
	call	strncmp	#
	.loc 1 1194 0 discriminator 1
	testl	%eax, %eax	# D.8186
	jne	.L282	#,
.L281:
	.loc 1 1196 0
	movl	$5, -52(%rbp)	#, fmt
	jmp	.L279	#
.L282:
	.loc 1 1198 0
	movq	-40(%rbp), %rax	# buf, buf.14
	movl	$14, %edx	#,
	movl	$.LC51, %esi	#,
	movq	%rax, %rdi	# buf.14,
	call	strncmp	#
	testl	%eax, %eax	# D.8186
	jne	.L283	#,
	.loc 1 1199 0
	movl	$101, -52(%rbp)	#, fmt
	jmp	.L279	#
.L283:
	.loc 1 1201 0
	movq	-40(%rbp), %rax	# buf, buf.15
	movl	$7, %edx	#,
	movl	$.LC52, %esi	#,
	movq	%rax, %rdi	# buf.15,
	call	strncmp	#
	testl	%eax, %eax	# D.8186
	jne	.L284	#,
	.loc 1 1202 0 discriminator 1
	movq	-40(%rbp), %rax	# buf, buf.16
	movl	$.LC53, %esi	#,
	movq	%rax, %rdi	# buf.16,
	call	strstr	#
	.loc 1 1201 0 discriminator 1
	testq	%rax, %rax	# D.8185
	je	.L284	#,
	.loc 1 1203 0
	movl	$104, -52(%rbp)	#, fmt
	jmp	.L279	#
.L284:
	.loc 1 1205 0
	movq	-40(%rbp), %rax	# buf, buf.17
	movl	$23, %edx	#,
	movl	$.LC54, %esi	#,
	movq	%rax, %rdi	# buf.17,
	call	strncmp	#
	testl	%eax, %eax	# D.8186
	je	.L285	#,
	.loc 1 1206 0 discriminator 1
	movq	-40(%rbp), %rax	# buf, buf.18
	movl	$23, %edx	#,
	movl	$.LC55, %esi	#,
	movq	%rax, %rdi	# buf.18,
	call	strncmp	#
	.loc 1 1205 0 discriminator 1
	testl	%eax, %eax	# D.8186
	jne	.L286	#,
.L285:
	.loc 1 1207 0
	movl	$103, -52(%rbp)	#, fmt
	jmp	.L279	#
.L286:
	.loc 1 1210 0
	movq	-40(%rbp), %rax	# buf, buf.19
	movl	$-1, %esi	#,
	movq	%rax, %rdi	# buf.19,
	call	sre_strdup	#
	movq	%rax, -24(%rbp)	# tmp138, bufcpy
	.loc 1 1211 0
	movq	-24(%rbp), %rax	# bufcpy, tmp139
	movq	%rax, -32(%rbp)	# tmp139, s
	.loc 1 1212 0
	leaq	-32(%rbp), %rax	#, tmp140
	movl	$0, %edx	#,
	movl	$.LC22, %esi	#,
	movq	%rax, %rdi	# tmp140,
	call	sre_strtok	#
	movq	%rax, -16(%rbp)	# tmp141, s1
	cmpq	$0, -16(%rbp)	#, s1
	je	.L287	#,
	.loc 1 1212 0 is_stmt 0 discriminator 1
	leaq	-32(%rbp), %rax	#, tmp142
	movl	$0, %edx	#,
	movl	$.LC22, %esi	#,
	movq	%rax, %rdi	# tmp142,
	call	sre_strtok	#
	movq	%rax, -8(%rbp)	# tmp143, s2
	cmpq	$0, -8(%rbp)	#, s2
	je	.L287	#,
	.loc 1 1214 0 is_stmt 1
	movq	-16(%rbp), %rax	# s1, tmp144
	movq	%rax, %rdi	# tmp144,
	call	IsInt	#
	.loc 1 1213 0
	testl	%eax, %eax	# D.8186
	je	.L287	#,
	.loc 1 1215 0
	movq	-8(%rbp), %rax	# s2, tmp145
	movq	%rax, %rdi	# tmp145,
	call	IsInt	#
	.loc 1 1214 0
	testl	%eax, %eax	# D.8186
	je	.L287	#,
	.loc 1 1216 0
	movq	-24(%rbp), %rax	# bufcpy, tmp146
	movq	%rax, %rdi	# tmp146,
	call	free	#
	movl	$106, -52(%rbp)	#, fmt
	jmp	.L279	#
.L287:
	.loc 1 1217 0
	movq	-24(%rbp), %rax	# bufcpy, tmp147
	movq	%rax, %rdi	# tmp147,
	call	free	#
.L277:
	.loc 1 1223 0
	movq	-40(%rbp), %rax	# buf, buf.20
	movl	$4, %edx	#,
	movl	$.LC56, %esi	#,
	movq	%rax, %rdi	# buf.20,
	call	strncmp	#
	testl	%eax, %eax	# D.8186
	je	.L288	#,
	.loc 1 1224 0 discriminator 1
	movq	-40(%rbp), %rax	# buf, buf.21
	movl	$4, %edx	#,
	movl	$.LC57, %esi	#,
	movq	%rax, %rdi	# buf.21,
	call	strncmp	#
	.loc 1 1223 0 discriminator 1
	testl	%eax, %eax	# D.8186
	je	.L288	#,
	.loc 1 1225 0
	movq	-40(%rbp), %rax	# buf, buf.22
	movl	$4, %edx	#,
	movl	$.LC58, %esi	#,
	movq	%rax, %rdi	# buf.22,
	call	strncmp	#
	.loc 1 1224 0
	testl	%eax, %eax	# D.8186
	je	.L288	#,
	.loc 1 1226 0
	movq	-40(%rbp), %rax	# buf, buf.23
	movl	$4, %edx	#,
	movl	$.LC59, %esi	#,
	movq	%rax, %rdi	# buf.23,
	call	strncmp	#
	.loc 1 1225 0
	testl	%eax, %eax	# D.8186
	je	.L288	#,
	.loc 1 1227 0
	movq	-40(%rbp), %rax	# buf, buf.24
	movl	$4, %edx	#,
	movl	$.LC60, %esi	#,
	movq	%rax, %rdi	# buf.24,
	call	strncmp	#
	.loc 1 1226 0
	testl	%eax, %eax	# D.8186
	je	.L288	#,
	.loc 1 1228 0
	movq	-40(%rbp), %rax	# buf, buf.25
	movl	$4, %edx	#,
	movl	$.LC61, %esi	#,
	movq	%rax, %rdi	# buf.25,
	call	strncmp	#
	.loc 1 1227 0
	testl	%eax, %eax	# D.8186
	je	.L288	#,
	.loc 1 1229 0
	movq	-40(%rbp), %rax	# buf, buf.26
	movl	$4, %edx	#,
	movl	$.LC62, %esi	#,
	movq	%rax, %rdi	# buf.26,
	call	strncmp	#
	.loc 1 1228 0
	testl	%eax, %eax	# D.8186
	je	.L288	#,
	.loc 1 1230 0
	movq	-40(%rbp), %rax	# buf, buf.27
	movl	$4, %edx	#,
	movl	$.LC63, %esi	#,
	movq	%rax, %rdi	# buf.27,
	call	strncmp	#
	.loc 1 1229 0
	testl	%eax, %eax	# D.8186
	je	.L288	#,
	.loc 1 1231 0
	movq	-40(%rbp), %rax	# buf, buf.28
	movl	$4, %edx	#,
	movl	$.LC64, %esi	#,
	movq	%rax, %rdi	# buf.28,
	call	strncmp	#
	.loc 1 1230 0
	testl	%eax, %eax	# D.8186
	je	.L288	#,
	.loc 1 1232 0
	movq	-40(%rbp), %rax	# buf, buf.29
	movl	$4, %edx	#,
	movl	$.LC65, %esi	#,
	movq	%rax, %rdi	# buf.29,
	call	strncmp	#
	.loc 1 1231 0
	testl	%eax, %eax	# D.8186
	je	.L288	#,
	.loc 1 1233 0
	movq	-40(%rbp), %rax	# buf, buf.30
	movl	$4, %edx	#,
	movl	$.LC66, %esi	#,
	movq	%rax, %rdi	# buf.30,
	call	strncmp	#
	.loc 1 1232 0
	testl	%eax, %eax	# D.8186
	jne	.L289	#,
.L288:
	.loc 1 1234 0
	movl	$102, -52(%rbp)	#, fmt
	jmp	.L279	#
.L289:
	.loc 1 1236 0
	movq	-40(%rbp), %rax	# buf, buf.31
	movl	$3, %edx	#,
	movl	$.LC17, %esi	#,
	movq	%rax, %rdi	# buf.31,
	call	strncmp	#
	testl	%eax, %eax	# D.8186
	je	.L290	#,
	.loc 1 1236 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# buf, buf.32
	movl	$6, %edx	#,
	movl	$.LC67, %esi	#,
	movq	%rax, %rdi	# buf.32,
	call	strncmp	#
	testl	%eax, %eax	# D.8186
	jne	.L291	#,
.L290:
	.loc 1 1237 0 is_stmt 1
	movl	$12, -52(%rbp)	#, fmt
	jmp	.L279	#
.L291:
	.loc 1 1240 0
	movq	-40(%rbp), %rax	# buf, buf.33
	movl	$.LC46, %esi	#,
	movq	%rax, %rdi	# buf.33,
	call	strstr	#
	testq	%rax, %rax	# D.8185
	je	.L292	#,
	.loc 1 1241 0 discriminator 1
	movq	-40(%rbp), %rax	# buf, buf.34
	movl	$.LC68, %esi	#,
	movq	%rax, %rdi	# buf.34,
	call	strstr	#
	.loc 1 1240 0 discriminator 1
	testq	%rax, %rax	# D.8185
	je	.L292	#,
	.loc 1 1242 0
	movq	-40(%rbp), %rax	# buf, buf.35
	movl	$.LC69, %esi	#,
	movq	%rax, %rdi	# buf.35,
	call	strstr	#
	.loc 1 1241 0
	testq	%rax, %rax	# D.8185
	je	.L292	#,
	.loc 1 1243 0
	movl	$103, -52(%rbp)	#, fmt
	jmp	.L279	#
.L292:
	.loc 1 1246 0
	movq	-40(%rbp), %rax	# buf, buf.36
	movl	$.LC70, %esi	#,
	movq	%rax, %rdi	# buf.36,
	call	strstr	#
	testq	%rax, %rax	# D.8185
	je	.L293	#,
	.loc 1 1246 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# buf, buf.37
	movl	$.LC46, %esi	#,
	movq	%rax, %rdi	# buf.37,
	call	strstr	#
	testq	%rax, %rax	# D.8185
	je	.L293	#,
	.loc 1 1247 0 is_stmt 1
	movl	$5, -52(%rbp)	#, fmt
	jmp	.L279	#
.L293:
	.loc 1 1249 0
	movq	-40(%rbp), %rax	# buf, buf.38
	movl	$6, %edx	#,
	movl	$.LC71, %esi	#,
	movq	%rax, %rdi	# buf.38,
	call	strncmp	#
	testl	%eax, %eax	# D.8186
	je	.L294	#,
	.loc 1 1249 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# buf, buf.39
	movl	$6, %edx	#,
	movl	$.LC72, %esi	#,
	movq	%rax, %rdi	# buf.39,
	call	strncmp	#
	testl	%eax, %eax	# D.8186
	jne	.L295	#,
.L294:
	.loc 1 1250 0 is_stmt 1
	movl	$2, -52(%rbp)	#, fmt
	jmp	.L279	#
.L295:
	.loc 1 1252 0
	movq	-40(%rbp), %rax	# buf, buf.40
	movl	$5, %edx	#,
	movl	$.LC73, %esi	#,
	movq	%rax, %rdi	# buf.40,
	call	strncmp	#
	testl	%eax, %eax	# D.8186
	je	.L296	#,
	.loc 1 1252 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# buf, buf.41
	movl	$5, %edx	#,
	movl	$.LC74, %esi	#,
	movq	%rax, %rdi	# buf.41,
	call	strncmp	#
	testl	%eax, %eax	# D.8186
	jne	.L297	#,
.L296:
	.loc 1 1253 0 is_stmt 1
	movl	$4, -52(%rbp)	#, fmt
	jmp	.L279	#
.L297:
	.loc 1 1258 0
	movq	-40(%rbp), %rax	# buf, buf.42
	movq	%rax, -32(%rbp)	# buf.42, s
	.loc 1 1259 0
	leaq	-32(%rbp), %rax	#, tmp148
	movl	$0, %edx	#,
	movl	$.LC22, %esi	#,
	movq	%rax, %rdi	# tmp148,
	call	sre_strtok	#
	movq	%rax, -16(%rbp)	# tmp149, s1
	cmpq	$0, -16(%rbp)	#, s1
	jne	.L298	#,
	.loc 1 1259 0 is_stmt 0 discriminator 1
	jmp	.L275	#
.L298:
	.loc 1 1260 0 is_stmt 1
	movq	-16(%rbp), %rax	# s1, tmp150
	movzbl	(%rax), %eax	# *s1_95, D.8187
	movsbl	%al, %eax	# D.8187, D.8186
	movl	%eax, %esi	# D.8186,
	movl	$.LC75, %edi	#,
	call	strchr	#
	testq	%rax, %rax	# D.8185
	je	.L299	#,
	.loc 1 1260 0 is_stmt 0 discriminator 1
	jmp	.L275	#
.L299:
	.loc 1 1265 0 is_stmt 1
	leaq	-32(%rbp), %rax	#, tmp151
	movl	$0, %edx	#,
	movl	$.LC22, %esi	#,
	movq	%rax, %rdi	# tmp151,
	call	sre_strtok	#
	movq	%rax, -8(%rbp)	# tmp152, s2
	cmpq	$0, -8(%rbp)	#, s2
	jne	.L300	#,
	.loc 1 1266 0
	movl	$1, -44(%rbp)	#, has_junk
.L300:
	.loc 1 1271 0
	cmpq	$0, -8(%rbp)	#, s2
	je	.L301	#,
	.loc 1 1271 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# s2, tmp153
	movq	%rax, %rdi	# tmp153,
	call	Seqtype	#
	testl	%eax, %eax	# D.8186
	jne	.L301	#,
	.loc 1 1272 0 is_stmt 1
	movl	$1, -44(%rbp)	#, has_junk
.L301:
	.loc 1 1274 0
	addl	$1, -48(%rbp)	#, ndataline
	.loc 1 1275 0
	cmpl	$300, -48(%rbp)	#, ndataline
	jne	.L275	#,
	.loc 1 1275 0 is_stmt 0 discriminator 1
	jmp	.L302	#
.L275:
	.loc 1 1180 0 is_stmt 1 discriminator 1
	movq	-72(%rbp), %rdx	# fp, tmp154
	leaq	-56(%rbp), %rcx	#, tmp155
	leaq	-40(%rbp), %rax	#, tmp156
	movq	%rcx, %rsi	# tmp155,
	movq	%rax, %rdi	# tmp156,
	call	sre_fgets	#
	testq	%rax, %rax	# D.8185
	jne	.L303	#,
.L302:
	.loc 1 1278 0
	cmpl	$0, -48(%rbp)	#, ndataline
	jne	.L304	#,
	.loc 1 1279 0
	movl	$.LC76, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L304:
	.loc 1 1285 0
	cmpl	$1, -44(%rbp)	#, has_junk
	jne	.L305	#,
	.loc 1 1285 0 is_stmt 0 discriminator 1
	movl	$0, -52(%rbp)	#, fmt
	jmp	.L279	#
.L305:
	.loc 1 1286 0 is_stmt 1
	movl	$102, -52(%rbp)	#, fmt
.L279:
	.loc 1 1289 0
	movq	-40(%rbp), %rax	# buf, buf.43
	testq	%rax, %rax	# buf.43
	je	.L306	#,
	.loc 1 1289 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# buf, buf.44
	movq	%rax, %rdi	# buf.44,
	call	free	#
.L306:
	.loc 1 1290 0 is_stmt 1
	movq	-72(%rbp), %rax	# fp, tmp157
	movq	%rax, %rdi	# tmp157,
	call	rewind	#
	.loc 1 1291 0
	movl	-52(%rbp), %eax	# fmt, D.8186
	.loc 1 1292 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	SeqfileFormat, .-SeqfileFormat
	.globl	GCGBinaryToSequence
	.type	GCGBinaryToSequence, @function
GCGBinaryToSequence:
.LFB37:
	.loc 1 1305 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# seq, seq
	movl	%esi, -28(%rbp)	# len, len
	.loc 1 1311 0
	movl	-28(%rbp), %eax	# len, tmp80
	subl	$1, %eax	#, D.8218
	leal	3(%rax), %edx	#, tmp82
	testl	%eax, %eax	# tmp81
	cmovs	%edx, %eax	# tmp82,, tmp81
	sarl	$2, %eax	#, tmp83
	movl	%eax, -12(%rbp)	# tmp83, bpos
	jmp	.L309	#
.L318:
	.loc 1 1313 0
	movl	-12(%rbp), %eax	# bpos, tmp84
	movslq	%eax, %rdx	# tmp84, D.8219
	movq	-24(%rbp), %rax	# seq, tmp85
	addq	%rdx, %rax	# D.8219, D.8220
	movzbl	(%rax), %eax	# *_9, tmp86
	movb	%al, -13(%rbp)	# tmp86, twobit
	.loc 1 1314 0
	movl	-12(%rbp), %eax	# bpos, tmp90
	sall	$2, %eax	#, tmp89
	movl	%eax, -4(%rbp)	# tmp89, spos
	.loc 1 1316 0
	movl	$3, -8(%rbp)	#, i
	jmp	.L310	#
.L317:
	.loc 1 1318 0
	movsbl	-13(%rbp), %eax	# twobit, D.8218
	andl	$3, %eax	#, D.8218
	cmpl	$1, %eax	#, D.8218
	je	.L312	#,
	cmpl	$1, %eax	#, D.8218
	jg	.L313	#,
	testl	%eax, %eax	# D.8218
	je	.L314	#,
	jmp	.L311	#
.L313:
	cmpl	$2, %eax	#, D.8218
	je	.L315	#,
	cmpl	$3, %eax	#, D.8218
	je	.L316	#,
	jmp	.L311	#
.L314:
	.loc 1 1319 0
	movl	-8(%rbp), %eax	# i, tmp91
	movl	-4(%rbp), %edx	# spos, tmp92
	addl	%edx, %eax	# tmp92, D.8218
	movslq	%eax, %rdx	# D.8218, D.8219
	movq	-24(%rbp), %rax	# seq, tmp93
	addq	%rdx, %rax	# D.8219, D.8220
	movb	$67, (%rax)	#, *_17
	jmp	.L311	#
.L312:
	.loc 1 1320 0
	movl	-8(%rbp), %eax	# i, tmp94
	movl	-4(%rbp), %edx	# spos, tmp95
	addl	%edx, %eax	# tmp95, D.8218
	movslq	%eax, %rdx	# D.8218, D.8219
	movq	-24(%rbp), %rax	# seq, tmp96
	addq	%rdx, %rax	# D.8219, D.8220
	movb	$84, (%rax)	#, *_20
	jmp	.L311	#
.L315:
	.loc 1 1321 0
	movl	-8(%rbp), %eax	# i, tmp97
	movl	-4(%rbp), %edx	# spos, tmp98
	addl	%edx, %eax	# tmp98, D.8218
	movslq	%eax, %rdx	# D.8218, D.8219
	movq	-24(%rbp), %rax	# seq, tmp99
	addq	%rdx, %rax	# D.8219, D.8220
	movb	$65, (%rax)	#, *_23
	jmp	.L311	#
.L316:
	.loc 1 1322 0
	movl	-8(%rbp), %eax	# i, tmp100
	movl	-4(%rbp), %edx	# spos, tmp101
	addl	%edx, %eax	# tmp101, D.8218
	movslq	%eax, %rdx	# D.8218, D.8219
	movq	-24(%rbp), %rax	# seq, tmp102
	addq	%rdx, %rax	# D.8219, D.8220
	movb	$71, (%rax)	#, *_26
	nop
.L311:
	.loc 1 1324 0
	sarb	$2, -13(%rbp)	#, twobit
	.loc 1 1316 0
	subl	$1, -8(%rbp)	#, i
.L310:
	.loc 1 1316 0 is_stmt 0 discriminator 1
	cmpl	$0, -8(%rbp)	#, i
	jns	.L317	#,
	.loc 1 1311 0 is_stmt 1
	subl	$1, -12(%rbp)	#, bpos
.L309:
	.loc 1 1311 0 is_stmt 0 discriminator 1
	cmpl	$0, -12(%rbp)	#, bpos
	jns	.L318	#,
	.loc 1 1327 0 is_stmt 1
	movl	-28(%rbp), %eax	# len, tmp103
	movslq	%eax, %rdx	# tmp103, D.8219
	movq	-24(%rbp), %rax	# seq, tmp104
	addq	%rdx, %rax	# D.8219, D.8220
	movb	$0, (%rax)	#, *_31
	.loc 1 1328 0
	movl	$1, %eax	#, D.8218
	.loc 1 1329 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	GCGBinaryToSequence, .-GCGBinaryToSequence
	.globl	GCGchecksum
	.type	GCGchecksum, @function
GCGchecksum:
.LFB38:
	.loc 1 1348 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# seq, seq
	movl	%esi, -44(%rbp)	# len, len
	.loc 1 1350 0
	movl	$0, -20(%rbp)	#, chk
	.loc 1 1352 0
	movl	$0, -24(%rbp)	#, i
	jmp	.L321	#
.L322:
	.loc 1 1353 0 discriminator 2
	movl	-24(%rbp), %ecx	# i, tmp70
	movl	$-1883757585, %edx	#, tmp72
	movl	%ecx, %eax	# tmp70, tmp90
	imull	%edx	# tmp72
	leal	(%rdx,%rcx), %eax	#, tmp73
	sarl	$5, %eax	#, tmp74
	movl	%eax, %edx	# tmp74, tmp74
	movl	%ecx, %eax	# tmp70, tmp75
	sarl	$31, %eax	#, tmp75
	subl	%eax, %edx	# tmp75, D.8222
	movl	%edx, %eax	# D.8222, D.8222
	imull	$57, %eax, %eax	#, D.8222, tmp76
	subl	%eax, %ecx	# tmp76, D.8222
	movl	%ecx, %eax	# D.8222, D.8222
	leal	1(%rax), %ebx	#, D.8222
	movl	-24(%rbp), %eax	# i, tmp77
	movslq	%eax, %rdx	# tmp77, D.8223
	movq	-40(%rbp), %rax	# seq, tmp78
	addq	%rdx, %rax	# D.8223, D.8224
	movzbl	(%rax), %eax	# *_10, D.8225
	movsbl	%al, %eax	# D.8225, D.8222
	movl	%eax, %edi	# D.8222,
	call	sre_toupper	#
	imull	%eax, %ebx	# D.8222, D.8222
	movl	%ebx, %edx	# D.8222, D.8222
	movl	-20(%rbp), %eax	# chk, tmp79
	leal	(%rdx,%rax), %ecx	#, D.8222
	movl	$1759218605, %edx	#, tmp81
	movl	%ecx, %eax	# D.8222, tmp91
	imull	%edx	# tmp81
	sarl	$12, %edx	#, tmp82
	movl	%ecx, %eax	# D.8222, tmp83
	sarl	$31, %eax	#, tmp83
	subl	%eax, %edx	# tmp83, tmp84
	movl	%edx, %eax	# tmp84, tmp84
	movl	%eax, -20(%rbp)	# tmp84, chk
	movl	-20(%rbp), %eax	# chk, tmp86
	imull	$10000, %eax, %eax	#, tmp86, tmp85
	subl	%eax, %ecx	# tmp85, tmp87
	movl	%ecx, %eax	# tmp87, tmp87
	movl	%eax, -20(%rbp)	# tmp87, chk
	.loc 1 1352 0 discriminator 2
	addl	$1, -24(%rbp)	#, i
.L321:
	.loc 1 1352 0 is_stmt 0 discriminator 1
	movl	-24(%rbp), %eax	# i, tmp88
	cmpl	-44(%rbp), %eax	# len, tmp88
	jl	.L322	#,
	.loc 1 1354 0 is_stmt 1
	movl	-20(%rbp), %eax	# chk, D.8222
	.loc 1 1355 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	GCGchecksum, .-GCGchecksum
	.globl	GCGMultchecksum
	.type	GCGMultchecksum, @function
GCGMultchecksum:
.LFB39:
	.loc 1 1374 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# seqs, seqs
	movl	%esi, -28(%rbp)	# nseq, nseq
	.loc 1 1375 0
	movl	$0, -8(%rbp)	#, chk
	.loc 1 1378 0
	movl	$0, -4(%rbp)	#, idx
	jmp	.L325	#
.L326:
	.loc 1 1379 0 discriminator 2
	movl	-4(%rbp), %eax	# idx, tmp73
	cltq
	leaq	0(,%rax,8), %rdx	#, D.8226
	movq	-24(%rbp), %rax	# seqs, tmp74
	addq	%rdx, %rax	# D.8226, D.8227
	movq	(%rax), %rax	# *_9, D.8228
	movq	%rax, %rdi	# D.8228,
	call	strlen	#
	movl	%eax, %edx	# D.8226, D.8229
	movl	-4(%rbp), %eax	# idx, tmp75
	cltq
	leaq	0(,%rax,8), %rcx	#, D.8226
	movq	-24(%rbp), %rax	# seqs, tmp76
	addq	%rcx, %rax	# D.8226, D.8227
	movq	(%rax), %rax	# *_15, D.8228
	movl	%edx, %esi	# D.8229,
	movq	%rax, %rdi	# D.8228,
	call	GCGchecksum	#
	movl	-8(%rbp), %edx	# chk, tmp77
	leal	(%rax,%rdx), %ecx	#, D.8229
	movl	$1759218605, %edx	#, tmp79
	movl	%ecx, %eax	# D.8229, tmp88
	imull	%edx	# tmp79
	sarl	$12, %edx	#, tmp80
	movl	%ecx, %eax	# D.8229, tmp81
	sarl	$31, %eax	#, tmp81
	subl	%eax, %edx	# tmp81, tmp82
	movl	%edx, %eax	# tmp82, tmp82
	movl	%eax, -8(%rbp)	# tmp82, chk
	movl	-8(%rbp), %eax	# chk, tmp84
	imull	$10000, %eax, %eax	#, tmp84, tmp83
	subl	%eax, %ecx	# tmp83, tmp85
	movl	%ecx, %eax	# tmp85, tmp85
	movl	%eax, -8(%rbp)	# tmp85, chk
	.loc 1 1378 0 discriminator 2
	addl	$1, -4(%rbp)	#, idx
.L325:
	.loc 1 1378 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# idx, tmp86
	cmpl	-28(%rbp), %eax	# nseq, tmp86
	jl	.L326	#,
	.loc 1 1380 0 is_stmt 1
	movl	-8(%rbp), %eax	# chk, D.8229
	.loc 1 1381 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	GCGMultchecksum, .-GCGMultchecksum
	.globl	Seqtype
	.type	Seqtype, @function
Seqtype:
.LFB40:
	.loc 1 1395 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# seq, seq
	.loc 1 1398 0
	movl	$0, -24(%rbp)	#, po
	.loc 1 1399 0
	movl	$0, -20(%rbp)	#, nt
	.loc 1 1400 0
	movl	$0, -16(%rbp)	#, nu
	.loc 1 1401 0
	movl	$0, -12(%rbp)	#, na
	.loc 1 1402 0
	movl	$0, -8(%rbp)	#, aa
	.loc 1 1403 0
	movl	$0, -4(%rbp)	#, no
	.loc 1 1407 0
	movl	$0, -28(%rbp)	#, saw
	jmp	.L329	#
.L338:
	.loc 1 1409 0
	movq	-40(%rbp), %rax	# seq, tmp82
	movzbl	(%rax), %eax	# *seq_1, D.8231
	movsbl	%al, %eax	# D.8231, D.8230
	movl	%eax, %edi	# D.8230,
	call	sre_toupper	#
	movb	%al, -29(%rbp)	# D.8230, c
	.loc 1 1410 0
	cmpb	$32, -29(%rbp)	#, c
	je	.L330	#,
	.loc 1 1410 0 is_stmt 0 discriminator 1
	cmpb	$46, -29(%rbp)	#, c
	je	.L330	#,
	cmpb	$95, -29(%rbp)	#, c
	je	.L330	#,
	cmpb	$45, -29(%rbp)	#, c
	je	.L330	#,
	cmpb	$126, -29(%rbp)	#, c
	je	.L330	#,
	.loc 1 1412 0 is_stmt 1
	movsbl	-29(%rbp), %edx	# c, D.8230
	movq	protonly(%rip), %rax	# protonly, protonly.45
	movl	%edx, %esi	# D.8230,
	movq	%rax, %rdi	# protonly.45,
	call	strchr	#
	testq	%rax, %rax	# D.8232
	je	.L331	#,
	.loc 1 1412 0 is_stmt 0 discriminator 1
	addl	$1, -24(%rbp)	#, po
	jmp	.L332	#
.L331:
	.loc 1 1413 0 is_stmt 1
	movsbl	-29(%rbp), %edx	# c, D.8230
	movq	primenuc(%rip), %rax	# primenuc, primenuc.46
	movl	%edx, %esi	# D.8230,
	movq	%rax, %rdi	# primenuc.46,
	call	strchr	#
	testq	%rax, %rax	# D.8232
	je	.L333	#,
	.loc 1 1414 0
	addl	$1, -12(%rbp)	#, na
	.loc 1 1415 0
	cmpb	$84, -29(%rbp)	#, c
	jne	.L334	#,
	.loc 1 1415 0 is_stmt 0 discriminator 1
	addl	$1, -20(%rbp)	#, nt
	jmp	.L332	#
.L334:
	.loc 1 1416 0 is_stmt 1
	cmpb	$85, -29(%rbp)	#, c
	jne	.L332	#,
	.loc 1 1416 0 is_stmt 0 discriminator 1
	addl	$1, -16(%rbp)	#, nu
	jmp	.L332	#
.L333:
	.loc 1 1418 0 is_stmt 1
	movsbl	-29(%rbp), %edx	# c, D.8230
	movq	aminos(%rip), %rax	# aminos, aminos.47
	movl	%edx, %esi	# D.8230,
	movq	%rax, %rdi	# aminos.47,
	call	strchr	#
	testq	%rax, %rax	# D.8232
	je	.L336	#,
	.loc 1 1418 0 is_stmt 0 discriminator 1
	addl	$1, -8(%rbp)	#, aa
	jmp	.L332	#
.L336:
	.loc 1 1419 0 is_stmt 1
	call	__ctype_b_loc	#
	movq	(%rax), %rax	# *_52, D.8234
	movsbq	-29(%rbp), %rdx	# c, D.8235
	addq	%rdx, %rdx	# D.8235
	addq	%rdx, %rax	# D.8235, D.8234
	movzwl	(%rax), %eax	# *_56, D.8236
	movzwl	%ax, %eax	# D.8236, D.8230
	andl	$1024, %eax	#, D.8230
	testl	%eax, %eax	# D.8230
	je	.L332	#,
	.loc 1 1419 0 is_stmt 0 discriminator 1
	addl	$1, -4(%rbp)	#, no
.L332:
	.loc 1 1420 0 is_stmt 1
	addl	$1, -28(%rbp)	#, saw
.L330:
	.loc 1 1407 0
	addq	$1, -40(%rbp)	#, seq
.L329:
	.loc 1 1407 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# seq, tmp83
	movzbl	(%rax), %eax	# *seq_1, D.8231
	testb	%al, %al	# D.8231
	je	.L337	#,
	.loc 1 1407 0 discriminator 2
	cmpl	$299, -28(%rbp)	#, saw
	jle	.L338	#,
.L337:
	.loc 1 1424 0 is_stmt 1
	cmpl	$0, -4(%rbp)	#, no
	jle	.L339	#,
	.loc 1 1424 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.8230
	jmp	.L340	#
.L339:
	.loc 1 1425 0 is_stmt 1
	cmpl	$0, -24(%rbp)	#, po
	jle	.L341	#,
	.loc 1 1425 0 is_stmt 0 discriminator 1
	movl	$3, %eax	#, D.8230
	jmp	.L340	#
.L341:
	.loc 1 1426 0 is_stmt 1
	movl	-12(%rbp), %eax	# na, tmp84
	cmpl	-8(%rbp), %eax	# aa, tmp84
	jle	.L342	#,
	.loc 1 1427 0
	movl	-16(%rbp), %eax	# nu, tmp85
	cmpl	-20(%rbp), %eax	# nt, tmp85
	jle	.L343	#,
	.loc 1 1427 0 is_stmt 0 discriminator 1
	movl	$2, %eax	#, D.8230
	jmp	.L340	#
.L343:
	.loc 1 1428 0 is_stmt 1
	movl	$1, %eax	#, D.8230
	jmp	.L340	#
.L342:
	.loc 1 1430 0
	movl	$3, %eax	#, D.8230
.L340:
	.loc 1 1431 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	Seqtype, .-Seqtype
	.globl	GuessAlignmentSeqtype
	.type	GuessAlignmentSeqtype, @function
GuessAlignmentSeqtype:
.LFB41:
	.loc 1 1450 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# aseq, aseq
	movl	%esi, -44(%rbp)	# nseq, nseq
	.loc 1 1452 0
	movl	$0, -16(%rbp)	#, nrna
	.loc 1 1453 0
	movl	$0, -12(%rbp)	#, ndna
	.loc 1 1454 0
	movl	$0, -8(%rbp)	#, namino
	.loc 1 1455 0
	movl	$0, -4(%rbp)	#, nother
	.loc 1 1457 0
	movl	$0, -20(%rbp)	#, idx
	jmp	.L345	#
.L351:
	.loc 1 1458 0
	movl	-20(%rbp), %eax	# idx, tmp66
	cltq
	leaq	0(,%rax,8), %rdx	#, D.8238
	movq	-40(%rbp), %rax	# aseq, tmp67
	addq	%rdx, %rax	# D.8238, D.8239
	movq	(%rax), %rax	# *_20, D.8240
	movq	%rax, %rdi	# D.8240,
	call	Seqtype	#
	cmpl	$2, %eax	#, D.8237
	je	.L347	#,
	cmpl	$3, %eax	#, D.8237
	je	.L348	#,
	cmpl	$1, %eax	#, D.8237
	je	.L349	#,
	jmp	.L358	#
.L347:
	.loc 1 1459 0
	addl	$1, -16(%rbp)	#, nrna
	jmp	.L350	#
.L349:
	.loc 1 1460 0
	addl	$1, -12(%rbp)	#, ndna
	jmp	.L350	#
.L348:
	.loc 1 1461 0
	addl	$1, -8(%rbp)	#, namino
	jmp	.L350	#
.L358:
	.loc 1 1462 0
	addl	$1, -4(%rbp)	#, nother
.L350:
	.loc 1 1457 0
	addl	$1, -20(%rbp)	#, idx
.L345:
	.loc 1 1457 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# idx, tmp68
	cmpl	-44(%rbp), %eax	# nseq, tmp68
	jl	.L351	#,
	.loc 1 1467 0 is_stmt 1
	cmpl	$0, -4(%rbp)	#, nother
	je	.L352	#,
	.loc 1 1467 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.8237
	jmp	.L353	#
.L352:
	.loc 1 1468 0 is_stmt 1
	movl	-8(%rbp), %eax	# namino, tmp69
	cmpl	-44(%rbp), %eax	# nseq, tmp69
	jne	.L354	#,
	.loc 1 1468 0 is_stmt 0 discriminator 1
	movl	$3, %eax	#, D.8237
	jmp	.L353	#
.L354:
	.loc 1 1469 0 is_stmt 1
	movl	-12(%rbp), %eax	# ndna, tmp70
	cmpl	-44(%rbp), %eax	# nseq, tmp70
	jne	.L355	#,
	.loc 1 1469 0 is_stmt 0 discriminator 1
	movl	$1, %eax	#, D.8237
	jmp	.L353	#
.L355:
	.loc 1 1470 0 is_stmt 1
	movl	-16(%rbp), %eax	# nrna, tmp71
	cmpl	-44(%rbp), %eax	# nseq, tmp71
	jne	.L356	#,
	.loc 1 1470 0 is_stmt 0 discriminator 1
	movl	$2, %eax	#, D.8237
	jmp	.L353	#
.L356:
	.loc 1 1474 0 is_stmt 1
	cmpl	$0, -8(%rbp)	#, namino
	jne	.L357	#,
	.loc 1 1474 0 is_stmt 0 discriminator 1
	movl	$2, %eax	#, D.8237
	jmp	.L353	#
.L357:
	.loc 1 1475 0 is_stmt 1
	movl	$3, %eax	#, D.8237
.L353:
	.loc 1 1479 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE41:
	.size	GuessAlignmentSeqtype, .-GuessAlignmentSeqtype
	.section	.rodata
.LC77:
	.string	""
.LC78:
	.string	">%s %s\n"
.LC79:
	.string	"%s\n"
	.text
	.globl	WriteSimpleFASTA
	.type	WriteSimpleFASTA, @function
WriteSimpleFASTA:
.LFB42:
	.loc 1 1496 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	addq	$-128, %rsp	#,
	movq	%rdi, -104(%rbp)	# fp, fp
	movq	%rsi, -112(%rbp)	# seq, seq
	movq	%rdx, -120(%rbp)	# name, name
	movq	%rcx, -128(%rbp)	# desc, desc
	.loc 1 1496 0
	movq	%fs:40, %rax	#, tmp72
	movq	%rax, -8(%rbp)	# tmp72, D.8244
	xorl	%eax, %eax	# tmp72
	.loc 1 1501 0
	movq	-112(%rbp), %rax	# seq, tmp63
	movq	%rax, %rdi	# tmp63,
	call	strlen	#
	movl	%eax, -84(%rbp)	# D.8241, len
	.loc 1 1502 0
	movb	$0, -20(%rbp)	#, buf
	.loc 1 1503 0
	cmpq	$0, -128(%rbp)	#, desc
	je	.L360	#,
	.loc 1 1503 0 is_stmt 0 discriminator 1
	movq	-128(%rbp), %rax	# desc, iftmp.48
	jmp	.L361	#
.L360:
	.loc 1 1503 0 discriminator 2
	movl	$.LC77, %eax	#, iftmp.48
.L361:
	.loc 1 1503 0 discriminator 3
	movq	-120(%rbp), %rdx	# name, tmp64
	movq	-104(%rbp), %rdi	# fp, tmp65
	movq	%rax, %rcx	# iftmp.48,
	movl	$.LC78, %esi	#,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1504 0 is_stmt 1 discriminator 3
	movl	$0, -88(%rbp)	#, pos
	jmp	.L362	#
.L363:
	.loc 1 1506 0 discriminator 2
	movl	-88(%rbp), %eax	# pos, tmp66
	movslq	%eax, %rdx	# tmp66, D.8242
	movq	-112(%rbp), %rax	# seq, tmp67
	leaq	(%rdx,%rax), %rcx	#, D.8243
	leaq	-80(%rbp), %rax	#, tmp68
	movl	$60, %edx	#,
	movq	%rcx, %rsi	# D.8243,
	movq	%rax, %rdi	# tmp68,
	call	strncpy	#
	.loc 1 1507 0 discriminator 2
	leaq	-80(%rbp), %rdx	#, tmp69
	movq	-104(%rbp), %rax	# fp, tmp70
	movl	$.LC79, %esi	#,
	movq	%rax, %rdi	# tmp70,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1504 0 discriminator 2
	addl	$60, -88(%rbp)	#, pos
.L362:
	.loc 1 1504 0 is_stmt 0 discriminator 1
	movl	-88(%rbp), %eax	# pos, tmp71
	cmpl	-84(%rbp), %eax	# len, tmp71
	jl	.L363	#,
	.loc 1 1509 0 is_stmt 1
	movq	-8(%rbp), %rax	# D.8244, tmp73
	xorq	%fs:40, %rax	#, tmp73
	je	.L364	#,
	call	__stack_chk_fail	#
.L364:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.size	WriteSimpleFASTA, .-WriteSimpleFASTA
	.section	.rodata
	.align 8
.LC80:
	.string	"Tried to write an aligned format with WriteSeq() -- bad, bad."
.LC81:
	.string	"LOCUS       %s       %d bp\n"
.LC82:
	.string	"."
.LC83:
	.string	"ACCESSION   %s\n"
.LC84:
	.string	"DEFINITION  %s\n"
.LC85:
	.string	"VERSION     %s\n"
.LC86:
	.string	"ORIGIN      \n"
.LC87:
	.string	">>>>%s  9/95  ASCII  Len: %d\n"
.LC88:
	.string	"ENTRY          %s\n"
.LC89:
	.string	"TITLE          %s\n"
.LC90:
	.string	"ACCESSION      %s\n"
	.align 8
.LC91:
	.string	"SUMMARY                                #Length %d  #Checksum  %d\n"
.LC92:
	.string	"SEQUENCE\n"
	.align 8
.LC93:
	.string	"                  5        10        15        20        25        30\n"
.LC94:
	.string	"NAM  %s\n"
.LC95:
	.string	"SRC  %s %s %d..%d::%d\n"
.LC96:
	.string	"DES  %s\n"
.LC97:
	.string	"SEQ  +SS\n"
.LC98:
	.string	"SEQ\n"
.LC99:
	.string	"ID   %s\n"
.LC100:
	.string	"AC   %s\n"
.LC101:
	.string	"DE   %s\n"
.LC102:
	.string	"SQ             %d BP\n"
	.align 8
.LC103:
	.string	"    %s  Length: %d  (today)  Check: %d  ..\n"
.LC104:
	.string	"; ### from DNA Strider ;-)\n"
	.align 8
.LC105:
	.string	"; DNA sequence  %s, %d bases, %d checksum.\n;\n"
.LC106:
	.string	";%s %s\n"
.LC107:
	.string	"%8d "
.LC108:
	.string	"         "
.LC109:
	.string	"%s%s\n"
	.text
	.globl	WriteSeq
	.type	WriteSeq, @function
WriteSeq:
.LFB43:
	.loc 1 1513 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$360, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -328(%rbp)	# outf, outf
	movl	%esi, -332(%rbp)	# outform, outform
	movq	%rdx, -344(%rbp)	# seq, seq
	movq	%rcx, -352(%rbp)	# sqinfo, sqinfo
	.loc 1 1513 0
	movq	%fs:40, %rax	#, tmp316
	movq	%rax, -24(%rbp)	# tmp316, D.8257
	xorl	%eax, %eax	# tmp316
	.loc 1 1514 0
	movl	$0, -312(%rbp)	#, numline
	.loc 1 1515 0
	movl	$0, -308(%rbp)	#, lines
	movl	$0, -304(%rbp)	#, spacer
	movl	$50, -300(%rbp)	#, width
	movl	$0, -296(%rbp)	#, tab
	.loc 1 1520 0
	movl	$0, -264(%rbp)	#, checksum
	.loc 1 1525 0
	movl	$0, -272(%rbp)	#, which_case
	.loc 1 1526 0
	movl	$0, -268(%rbp)	#, dostruc
	.loc 1 1527 0
	movq	-352(%rbp), %rax	# sqinfo, tmp152
	movl	(%rax), %eax	# sqinfo_45(D)->flags, D.8250
	andl	$64, %eax	#, D.8250
	testl	%eax, %eax	# D.8250
	je	.L366	#,
	.loc 1 1527 0 is_stmt 0 discriminator 1
	movq	-352(%rbp), %rax	# sqinfo, tmp153
	movl	324(%rax), %eax	# sqinfo_45(D)->len, iftmp.49
	jmp	.L367	#
.L366:
	.loc 1 1527 0 discriminator 2
	movq	-344(%rbp), %rax	# seq, tmp154
	movq	%rax, %rdi	# tmp154,
	call	strlen	#
.L367:
	.loc 1 1527 0 discriminator 3
	movl	%eax, -260(%rbp)	# iftmp.49, seqlen
	.loc 1 1529 0 is_stmt 1 discriminator 3
	cmpl	$100, -332(%rbp)	#, outform
	jle	.L368	#,
	.loc 1 1530 0
	movl	$.LC80, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L368:
	.loc 1 1533 0
	movl	$0, %eax	#, D.8252
	movb	%al, -256(%rbp)	# D.8252, MEM[(char * {ref-all})&endstr]
	.loc 1 1534 0
	movl	$0, -280(%rbp)	#, l1
	.loc 1 1535 0
	movl	-260(%rbp), %edx	# seqlen, tmp155
	movq	-344(%rbp), %rax	# seq, tmp156
	movl	%edx, %esi	# tmp155,
	movq	%rax, %rdi	# tmp156,
	call	GCGchecksum	#
	movl	%eax, -264(%rbp)	# tmp157, checksum
	.loc 1 1537 0
	cmpl	$16, -332(%rbp)	#, outform
	ja	.L369	#,
	movl	-332(%rbp), %eax	# outform, tmp158
	movq	.L371(,%rax,8), %rax	#, tmp159
	jmp	*%rax	# tmp159
	.section	.rodata
	.align 8
	.align 4
.L371:
	.quad	.L370
	.quad	.L372
	.quad	.L373
	.quad	.L369
	.quad	.L374
	.quad	.L375
	.quad	.L376
	.quad	.L369
	.quad	.L377
	.quad	.L369
	.quad	.L369
	.quad	.L369
	.quad	.L378
	.quad	.L446
	.quad	.L380
	.quad	.L369
	.quad	.L381
	.text
.L370:
	.loc 1 1539 0
	leaq	-256(%rbp), %rax	#, tmp160
	movw	$10, (%rax)	#, MEM[(void *)&endstr]
	.loc 1 1540 0
	jmp	.L382	#
.L373:
	.loc 1 1544 0
	movq	-352(%rbp), %rax	# sqinfo, tmp161
	leaq	4(%rax), %rsi	#, D.8253
	.loc 1 1543 0
	movl	-260(%rbp), %edx	# seqlen, tmp162
	movq	-328(%rbp), %rax	# outf, tmp163
	movl	%edx, %ecx	# tmp162,
	movq	%rsi, %rdx	# D.8253,
	movl	$.LC81, %esi	#,
	movq	%rax, %rdi	# tmp163,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1546 0
	movq	-352(%rbp), %rax	# sqinfo, tmp164
	movl	(%rax), %eax	# sqinfo_45(D)->flags, D.8250
	andl	$4, %eax	#, D.8250
	.loc 1 1545 0
	testl	%eax, %eax	# D.8250
	je	.L383	#,
	.loc 1 1545 0 is_stmt 0 discriminator 1
	movq	-352(%rbp), %rax	# sqinfo, tmp165
	addq	$132, %rax	#, iftmp.50
	jmp	.L384	#
.L383:
	.loc 1 1545 0 discriminator 2
	movl	$.LC82, %eax	#, iftmp.50
.L384:
	.loc 1 1545 0 discriminator 3
	movq	-328(%rbp), %rcx	# outf, tmp166
	movq	%rax, %rdx	# iftmp.50,
	movl	$.LC83, %esi	#,
	movq	%rcx, %rdi	# tmp166,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1548 0 is_stmt 1 discriminator 3
	movq	-352(%rbp), %rax	# sqinfo, tmp167
	movl	(%rax), %eax	# sqinfo_45(D)->flags, D.8250
	andl	$8, %eax	#, D.8250
	.loc 1 1547 0 discriminator 3
	testl	%eax, %eax	# D.8250
	je	.L385	#,
	.loc 1 1547 0 is_stmt 0 discriminator 1
	movq	-352(%rbp), %rax	# sqinfo, tmp168
	addq	$196, %rax	#, iftmp.51
	jmp	.L386	#
.L385:
	.loc 1 1547 0 discriminator 2
	movl	$.LC82, %eax	#, iftmp.51
.L386:
	.loc 1 1547 0 discriminator 3
	movq	-328(%rbp), %rcx	# outf, tmp169
	movq	%rax, %rdx	# iftmp.51,
	movl	$.LC84, %esi	#,
	movq	%rcx, %rdi	# tmp169,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1550 0 is_stmt 1 discriminator 3
	movq	-352(%rbp), %rax	# sqinfo, tmp170
	movl	(%rax), %eax	# sqinfo_45(D)->flags, D.8250
	andl	$2, %eax	#, D.8250
	.loc 1 1549 0 discriminator 3
	testl	%eax, %eax	# D.8250
	je	.L387	#,
	.loc 1 1549 0 is_stmt 0 discriminator 1
	movq	-352(%rbp), %rax	# sqinfo, tmp171
	addq	$68, %rax	#, iftmp.52
	jmp	.L388	#
.L387:
	.loc 1 1549 0 discriminator 2
	movl	$.LC82, %eax	#, iftmp.52
.L388:
	.loc 1 1549 0 discriminator 3
	movq	-328(%rbp), %rcx	# outf, tmp172
	movq	%rax, %rdx	# iftmp.52,
	movl	$.LC85, %esi	#,
	movq	%rcx, %rdi	# tmp172,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1551 0 is_stmt 1 discriminator 3
	movq	-328(%rbp), %rax	# outf, tmp173
	movq	%rax, %rcx	# tmp173,
	movl	$13, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC86, %edi	#,
	call	fwrite	#
	.loc 1 1552 0 discriminator 3
	movl	$11, -304(%rbp)	#, spacer
	.loc 1 1553 0 discriminator 3
	movl	$1, -312(%rbp)	#, numline
	.loc 1 1554 0 discriminator 3
	leaq	-256(%rbp), %rax	#, tmp174
	movl	$3092234, (%rax)	#, MEM[(void *)&endstr]
	.loc 1 1555 0 discriminator 3
	jmp	.L382	#
.L381:
	.loc 1 1558 0
	movq	-352(%rbp), %rax	# sqinfo, tmp175
	leaq	4(%rax), %rsi	#, D.8253
	movl	-260(%rbp), %edx	# seqlen, tmp176
	movq	-328(%rbp), %rax	# outf, tmp177
	movl	%edx, %ecx	# tmp176,
	movq	%rsi, %rdx	# D.8253,
	movl	$.LC87, %esi	#,
	movq	%rax, %rdi	# tmp177,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1559 0
	movq	-352(%rbp), %rax	# sqinfo, tmp178
	movl	(%rax), %eax	# sqinfo_45(D)->flags, D.8250
	andl	$8, %eax	#, D.8250
	testl	%eax, %eax	# D.8250
	je	.L389	#,
	.loc 1 1559 0 is_stmt 0 discriminator 1
	movq	-352(%rbp), %rax	# sqinfo, tmp179
	addq	$196, %rax	#, iftmp.53
	jmp	.L390	#
.L389:
	.loc 1 1559 0 discriminator 2
	movl	$.LC4, %eax	#, iftmp.53
.L390:
	.loc 1 1559 0 discriminator 3
	movq	-328(%rbp), %rcx	# outf, tmp180
	movq	%rax, %rdx	# iftmp.53,
	movl	$.LC79, %esi	#,
	movq	%rcx, %rdi	# tmp180,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1560 0 is_stmt 1 discriminator 3
	jmp	.L382	#
.L378:
	.loc 1 1564 0
	movq	-352(%rbp), %rax	# sqinfo, tmp181
	movl	(%rax), %eax	# sqinfo_45(D)->flags, D.8250
	andl	$2, %eax	#, D.8250
	.loc 1 1563 0
	testl	%eax, %eax	# D.8250
	je	.L391	#,
	.loc 1 1563 0 is_stmt 0 discriminator 1
	movq	-352(%rbp), %rax	# sqinfo, tmp182
	addq	$68, %rax	#, iftmp.54
	jmp	.L392	#
.L391:
	.loc 1 1563 0 discriminator 2
	movq	-352(%rbp), %rax	# sqinfo, tmp183
	addq	$4, %rax	#, iftmp.54
.L392:
	.loc 1 1563 0 discriminator 3
	movq	-328(%rbp), %rcx	# outf, tmp184
	movq	%rax, %rdx	# iftmp.54,
	movl	$.LC88, %esi	#,
	movq	%rcx, %rdi	# tmp184,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1566 0 is_stmt 1 discriminator 3
	movq	-352(%rbp), %rax	# sqinfo, tmp185
	movl	(%rax), %eax	# sqinfo_45(D)->flags, D.8250
	andl	$8, %eax	#, D.8250
	.loc 1 1565 0 discriminator 3
	testl	%eax, %eax	# D.8250
	je	.L393	#,
	.loc 1 1565 0 is_stmt 0 discriminator 1
	movq	-352(%rbp), %rax	# sqinfo, tmp186
	addq	$196, %rax	#, iftmp.55
	jmp	.L394	#
.L393:
	.loc 1 1565 0 discriminator 2
	movl	$.LC4, %eax	#, iftmp.55
.L394:
	.loc 1 1565 0 discriminator 3
	movq	-328(%rbp), %rcx	# outf, tmp187
	movq	%rax, %rdx	# iftmp.55,
	movl	$.LC89, %esi	#,
	movq	%rcx, %rdi	# tmp187,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1568 0 is_stmt 1 discriminator 3
	movq	-352(%rbp), %rax	# sqinfo, tmp188
	movl	(%rax), %eax	# sqinfo_45(D)->flags, D.8250
	andl	$4, %eax	#, D.8250
	.loc 1 1567 0 discriminator 3
	testl	%eax, %eax	# D.8250
	je	.L395	#,
	.loc 1 1567 0 is_stmt 0 discriminator 1
	movq	-352(%rbp), %rax	# sqinfo, tmp189
	addq	$132, %rax	#, iftmp.56
	jmp	.L396	#
.L395:
	.loc 1 1567 0 discriminator 2
	movl	$.LC4, %eax	#, iftmp.56
.L396:
	.loc 1 1567 0 discriminator 3
	movq	-328(%rbp), %rcx	# outf, tmp190
	movq	%rax, %rdx	# iftmp.56,
	movl	$.LC90, %esi	#,
	movq	%rcx, %rdi	# tmp190,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1569 0 is_stmt 1 discriminator 3
	movq	-352(%rbp), %rax	# sqinfo, tmp191
	movl	324(%rax), %edx	# sqinfo_45(D)->len, D.8250
	movl	-264(%rbp), %ecx	# checksum, tmp192
	movq	-328(%rbp), %rax	# outf, tmp193
	movl	$.LC91, %esi	#,
	movq	%rax, %rdi	# tmp193,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1571 0 discriminator 3
	movq	-328(%rbp), %rax	# outf, tmp194
	movq	%rax, %rcx	# tmp194,
	movl	$9, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC92, %edi	#,
	call	fwrite	#
	.loc 1 1572 0 discriminator 3
	movq	-328(%rbp), %rax	# outf, tmp195
	movq	%rax, %rcx	# tmp195,
	movl	$70, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC93, %edi	#,
	call	fwrite	#
	.loc 1 1573 0 discriminator 3
	movl	$2, -304(%rbp)	#, spacer
	.loc 1 1574 0 discriminator 3
	movl	$1, -312(%rbp)	#, numline
	.loc 1 1575 0 discriminator 3
	movl	$30, -300(%rbp)	#, width
	.loc 1 1576 0 discriminator 3
	leaq	-256(%rbp), %rax	#, tmp196
	movl	$791621386, (%rax)	#, MEM[(void *)&endstr]
	movb	$0, 4(%rax)	#, MEM[(void *)&endstr]
	.loc 1 1577 0 discriminator 3
	jmp	.L382	#
.L380:
	.loc 1 1580 0
	movq	-352(%rbp), %rax	# sqinfo, tmp197
	leaq	4(%rax), %rdx	#, D.8253
	movq	-328(%rbp), %rax	# outf, tmp198
	movl	$.LC94, %esi	#,
	movq	%rax, %rdi	# tmp198,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1581 0
	movq	-352(%rbp), %rax	# sqinfo, tmp199
	movl	(%rax), %eax	# sqinfo_45(D)->flags, D.8250
	andl	$310, %eax	#, D.8250
	testl	%eax, %eax	# D.8250
	je	.L397	#,
	.loc 1 1587 0
	movq	-352(%rbp), %rax	# sqinfo, tmp200
	movl	(%rax), %eax	# sqinfo_45(D)->flags, D.8250
	andl	$256, %eax	#, D.8250
	.loc 1 1582 0
	testl	%eax, %eax	# D.8250
	je	.L398	#,
	.loc 1 1582 0 is_stmt 0 discriminator 1
	movq	-352(%rbp), %rax	# sqinfo, tmp201
	movl	336(%rax), %eax	# sqinfo_45(D)->olen, iftmp.57
	jmp	.L399	#
.L398:
	.loc 1 1582 0 discriminator 2
	movl	$0, %eax	#, iftmp.57
.L399:
	.loc 1 1586 0 is_stmt 1 discriminator 3
	movq	-352(%rbp), %rdx	# sqinfo, tmp202
	movl	(%rdx), %edx	# sqinfo_45(D)->flags, D.8250
	andl	$32, %edx	#, D.8250
	.loc 1 1582 0 discriminator 3
	testl	%edx, %edx	# D.8250
	je	.L400	#,
	.loc 1 1582 0 is_stmt 0 discriminator 4
	movq	-352(%rbp), %rdx	# sqinfo, tmp203
	movl	332(%rdx), %edi	# sqinfo_45(D)->stop, iftmp.58
	jmp	.L401	#
.L400:
	.loc 1 1582 0 discriminator 5
	movl	$0, %edi	#, iftmp.58
.L401:
	.loc 1 1585 0 is_stmt 1 discriminator 6
	movq	-352(%rbp), %rdx	# sqinfo, tmp204
	movl	(%rdx), %edx	# sqinfo_45(D)->flags, D.8250
	andl	$16, %edx	#, D.8250
	.loc 1 1582 0 discriminator 6
	testl	%edx, %edx	# D.8250
	je	.L402	#,
	.loc 1 1582 0 is_stmt 0 discriminator 7
	movq	-352(%rbp), %rdx	# sqinfo, tmp205
	movl	328(%rdx), %esi	# sqinfo_45(D)->start, iftmp.59
	jmp	.L403	#
.L402:
	.loc 1 1582 0 discriminator 8
	movl	$0, %esi	#, iftmp.59
.L403:
	.loc 1 1584 0 is_stmt 1 discriminator 9
	movq	-352(%rbp), %rdx	# sqinfo, tmp206
	movl	(%rdx), %edx	# sqinfo_45(D)->flags, D.8250
	andl	$4, %edx	#, D.8250
	.loc 1 1582 0 discriminator 9
	testl	%edx, %edx	# D.8250
	je	.L404	#,
	.loc 1 1582 0 is_stmt 0 discriminator 10
	movq	-352(%rbp), %rdx	# sqinfo, tmp207
	leaq	132(%rdx), %rcx	#, iftmp.60
	jmp	.L405	#
.L404:
	.loc 1 1582 0 discriminator 11
	movl	$.LC4, %ecx	#, iftmp.60
.L405:
	.loc 1 1583 0 is_stmt 1 discriminator 12
	movq	-352(%rbp), %rdx	# sqinfo, tmp208
	movl	(%rdx), %edx	# sqinfo_45(D)->flags, D.8250
	andl	$2, %edx	#, D.8250
	.loc 1 1582 0 discriminator 12
	testl	%edx, %edx	# D.8250
	je	.L406	#,
	.loc 1 1582 0 is_stmt 0 discriminator 13
	movq	-352(%rbp), %rdx	# sqinfo, tmp209
	addq	$68, %rdx	#, iftmp.61
	jmp	.L407	#
.L406:
	.loc 1 1582 0 discriminator 14
	movl	$.LC4, %edx	#, iftmp.61
.L407:
	.loc 1 1582 0 discriminator 15
	movq	-328(%rbp), %r10	# outf, tmp210
	movl	%eax, (%rsp)	# iftmp.57,
	movl	%edi, %r9d	# iftmp.58,
	movl	%esi, %r8d	# iftmp.59,
	movl	$.LC95, %esi	#,
	movq	%r10, %rdi	# tmp210,
	movl	$0, %eax	#,
	call	fprintf	#
.L397:
	.loc 1 1588 0 is_stmt 1
	movq	-352(%rbp), %rax	# sqinfo, tmp211
	movl	(%rax), %eax	# sqinfo_45(D)->flags, D.8250
	andl	$8, %eax	#, D.8250
	testl	%eax, %eax	# D.8250
	je	.L408	#,
	.loc 1 1589 0
	movq	-352(%rbp), %rax	# sqinfo, tmp212
	leaq	196(%rax), %rdx	#, D.8254
	movq	-328(%rbp), %rax	# outf, tmp213
	movl	$.LC96, %esi	#,
	movq	%rax, %rdi	# tmp213,
	movl	$0, %eax	#,
	call	fprintf	#
.L408:
	.loc 1 1590 0
	movq	-352(%rbp), %rax	# sqinfo, tmp214
	movl	(%rax), %eax	# sqinfo_45(D)->flags, D.8250
	andl	$512, %eax	#, D.8250
	testl	%eax, %eax	# D.8250
	je	.L409	#,
	.loc 1 1592 0
	movq	-328(%rbp), %rax	# outf, tmp215
	movq	%rax, %rcx	# tmp215,
	movl	$9, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC97, %edi	#,
	call	fwrite	#
	.loc 1 1593 0
	movl	$1, -268(%rbp)	#, dostruc
	jmp	.L410	#
.L409:
	.loc 1 1596 0
	movq	-328(%rbp), %rax	# outf, tmp216
	movq	%rax, %rcx	# tmp216,
	movl	$4, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC98, %edi	#,
	call	fwrite	#
.L410:
	.loc 1 1597 0
	movl	$1, -312(%rbp)	#, numline
	.loc 1 1598 0
	leaq	-256(%rbp), %rax	#, tmp217
	movl	$2829066, (%rax)	#, MEM[(void *)&endstr]
	.loc 1 1599 0
	jmp	.L382	#
.L374:
	.loc 1 1603 0
	movq	-352(%rbp), %rax	# sqinfo, tmp218
	movl	(%rax), %eax	# sqinfo_45(D)->flags, D.8250
	andl	$2, %eax	#, D.8250
	.loc 1 1602 0
	testl	%eax, %eax	# D.8250
	je	.L411	#,
	.loc 1 1602 0 is_stmt 0 discriminator 1
	movq	-352(%rbp), %rax	# sqinfo, tmp219
	addq	$68, %rax	#, iftmp.62
	jmp	.L412	#
.L411:
	.loc 1 1602 0 discriminator 2
	movq	-352(%rbp), %rax	# sqinfo, tmp220
	addq	$4, %rax	#, iftmp.62
.L412:
	.loc 1 1602 0 discriminator 3
	movq	-328(%rbp), %rcx	# outf, tmp221
	movq	%rax, %rdx	# iftmp.62,
	movl	$.LC99, %esi	#,
	movq	%rcx, %rdi	# tmp221,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1605 0 is_stmt 1 discriminator 3
	movq	-352(%rbp), %rax	# sqinfo, tmp222
	movl	(%rax), %eax	# sqinfo_45(D)->flags, D.8250
	andl	$4, %eax	#, D.8250
	.loc 1 1604 0 discriminator 3
	testl	%eax, %eax	# D.8250
	je	.L413	#,
	.loc 1 1604 0 is_stmt 0 discriminator 1
	movq	-352(%rbp), %rax	# sqinfo, tmp223
	addq	$132, %rax	#, iftmp.63
	jmp	.L414	#
.L413:
	.loc 1 1604 0 discriminator 2
	movl	$.LC4, %eax	#, iftmp.63
.L414:
	.loc 1 1604 0 discriminator 3
	movq	-328(%rbp), %rcx	# outf, tmp224
	movq	%rax, %rdx	# iftmp.63,
	movl	$.LC100, %esi	#,
	movq	%rcx, %rdi	# tmp224,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1607 0 is_stmt 1 discriminator 3
	movq	-352(%rbp), %rax	# sqinfo, tmp225
	movl	(%rax), %eax	# sqinfo_45(D)->flags, D.8250
	andl	$8, %eax	#, D.8250
	.loc 1 1606 0 discriminator 3
	testl	%eax, %eax	# D.8250
	je	.L415	#,
	.loc 1 1606 0 is_stmt 0 discriminator 1
	movq	-352(%rbp), %rax	# sqinfo, tmp226
	addq	$196, %rax	#, iftmp.64
	jmp	.L416	#
.L415:
	.loc 1 1606 0 discriminator 2
	movl	$.LC4, %eax	#, iftmp.64
.L416:
	.loc 1 1606 0 discriminator 3
	movq	-328(%rbp), %rcx	# outf, tmp227
	movq	%rax, %rdx	# iftmp.64,
	movl	$.LC101, %esi	#,
	movq	%rcx, %rdi	# tmp227,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1608 0 is_stmt 1 discriminator 3
	movl	-260(%rbp), %edx	# seqlen, tmp228
	movq	-328(%rbp), %rax	# outf, tmp229
	movl	$.LC102, %esi	#,
	movq	%rax, %rdi	# tmp229,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1609 0 discriminator 3
	leaq	-256(%rbp), %rax	#, tmp230
	movl	$3092234, (%rax)	#, MEM[(void *)&endstr]
	.loc 1 1610 0 discriminator 3
	movl	$5, -296(%rbp)	#, tab
	.loc 1 1611 0 discriminator 3
	movl	$11, -304(%rbp)	#, spacer
	.loc 1 1612 0 discriminator 3
	jmp	.L382	#
.L375:
	.loc 1 1615 0
	movq	-352(%rbp), %rax	# sqinfo, tmp231
	leaq	4(%rax), %rdx	#, D.8253
	movq	-328(%rbp), %rax	# outf, tmp232
	movl	$.LC79, %esi	#,
	movq	%rax, %rdi	# tmp232,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1616 0
	movq	-352(%rbp), %rax	# sqinfo, tmp233
	movl	(%rax), %eax	# sqinfo_45(D)->flags, D.8250
	andl	$4, %eax	#, D.8250
	testl	%eax, %eax	# D.8250
	je	.L417	#,
	.loc 1 1617 0
	movq	-352(%rbp), %rax	# sqinfo, tmp234
	leaq	132(%rax), %rdx	#, D.8253
	movq	-328(%rbp), %rax	# outf, tmp235
	movl	$.LC83, %esi	#,
	movq	%rax, %rdi	# tmp235,
	movl	$0, %eax	#,
	call	fprintf	#
.L417:
	.loc 1 1618 0
	movq	-352(%rbp), %rax	# sqinfo, tmp236
	movl	(%rax), %eax	# sqinfo_45(D)->flags, D.8250
	andl	$8, %eax	#, D.8250
	testl	%eax, %eax	# D.8250
	je	.L418	#,
	.loc 1 1619 0
	movq	-352(%rbp), %rax	# sqinfo, tmp237
	leaq	196(%rax), %rdx	#, D.8254
	movq	-328(%rbp), %rax	# outf, tmp238
	movl	$.LC84, %esi	#,
	movq	%rax, %rdi	# tmp238,
	movl	$0, %eax	#,
	call	fprintf	#
.L418:
	.loc 1 1621 0
	movq	-352(%rbp), %rax	# sqinfo, tmp239
	leaq	4(%rax), %rsi	#, D.8253
	.loc 1 1620 0
	movl	-264(%rbp), %ecx	# checksum, tmp240
	movl	-260(%rbp), %edx	# seqlen, tmp241
	movq	-328(%rbp), %rax	# outf, tmp242
	movl	%ecx, %r8d	# tmp240,
	movl	%edx, %ecx	# tmp241,
	movq	%rsi, %rdx	# D.8253,
	movl	$.LC103, %esi	#,
	movq	%rax, %rdi	# tmp242,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1622 0
	movl	$11, -304(%rbp)	#, spacer
	.loc 1 1623 0
	movl	$1, -312(%rbp)	#, numline
	.loc 1 1624 0
	leaq	-256(%rbp), %rax	#, tmp243
	movw	$10, (%rax)	#, MEM[(void *)&endstr]
	.loc 1 1625 0
	jmp	.L382	#
.L376:
	.loc 1 1628 0
	movq	-328(%rbp), %rax	# outf, tmp244
	movq	%rax, %rcx	# tmp244,
	movl	$27, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC104, %edi	#,
	call	fwrite	#
	.loc 1 1630 0
	movq	-352(%rbp), %rax	# sqinfo, tmp245
	leaq	4(%rax), %rsi	#, D.8253
	.loc 1 1629 0
	movl	-264(%rbp), %ecx	# checksum, tmp246
	movl	-260(%rbp), %edx	# seqlen, tmp247
	movq	-328(%rbp), %rax	# outf, tmp248
	movl	%ecx, %r8d	# tmp246,
	movl	%edx, %ecx	# tmp247,
	movq	%rsi, %rdx	# D.8253,
	movl	$.LC105, %esi	#,
	movq	%rax, %rdi	# tmp248,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1631 0
	leaq	-256(%rbp), %rax	#, tmp249
	movl	$3092234, (%rax)	#, MEM[(void *)&endstr]
	.loc 1 1632 0
	jmp	.L382	#
.L377:
	.loc 1 1638 0
	movl	$1, -272(%rbp)	#, which_case
.L372:
	.loc 1 1643 0
	movq	-352(%rbp), %rax	# sqinfo, tmp250
	movl	(%rax), %eax	# sqinfo_45(D)->flags, D.8250
	andl	$8, %eax	#, D.8250
	.loc 1 1641 0
	testl	%eax, %eax	# D.8250
	je	.L419	#,
	.loc 1 1641 0 is_stmt 0 discriminator 1
	movq	-352(%rbp), %rax	# sqinfo, tmp251
	addq	$196, %rax	#, iftmp.65
	jmp	.L420	#
.L419:
	.loc 1 1641 0 discriminator 2
	movl	$.LC77, %eax	#, iftmp.65
.L420:
	.loc 1 1642 0 is_stmt 1
	movq	-352(%rbp), %rdx	# sqinfo, tmp252
	addq	$4, %rdx	#, D.8253
	.loc 1 1641 0
	movq	-328(%rbp), %rdi	# outf, tmp253
	movq	%rax, %rcx	# iftmp.65,
	movl	$.LC106, %esi	#,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1644 0
	movq	-352(%rbp), %rax	# sqinfo, tmp254
	leaq	4(%rax), %rdx	#, D.8253
	movq	-328(%rbp), %rax	# outf, tmp255
	movl	$.LC79, %esi	#,
	movq	%rax, %rdi	# tmp255,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1645 0
	leaq	-256(%rbp), %rax	#, tmp256
	movw	$49, (%rax)	#, MEM[(void *)&endstr]
	.loc 1 1646 0
	jmp	.L382	#
.L369:
	.loc 1 1654 0
	movq	-352(%rbp), %rax	# sqinfo, tmp257
	movl	(%rax), %eax	# sqinfo_45(D)->flags, D.8250
	andl	$8, %eax	#, D.8250
	.loc 1 1653 0
	testl	%eax, %eax	# D.8250
	je	.L421	#,
	.loc 1 1653 0 is_stmt 0 discriminator 1
	movq	-352(%rbp), %rax	# sqinfo, tmp258
	addq	$196, %rax	#, iftmp.66
	jmp	.L422	#
.L421:
	.loc 1 1653 0 discriminator 2
	movl	$.LC77, %eax	#, iftmp.66
.L422:
	.loc 1 1653 0 discriminator 3
	movq	-352(%rbp), %rdx	# sqinfo, tmp259
	addq	$4, %rdx	#, D.8253
	movq	-328(%rbp), %rdi	# outf, tmp260
	movq	%rax, %rcx	# iftmp.66,
	movl	$.LC78, %esi	#,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1655 0 is_stmt 1 discriminator 3
	jmp	.L382	#
.L446:
	.loc 1 1649 0
	nop
.L382:
	.loc 1 1658 0
	cmpl	$1, -272(%rbp)	#, which_case
	jne	.L423	#,
	.loc 1 1658 0 is_stmt 0 discriminator 1
	movq	-344(%rbp), %rax	# seq, tmp261
	movq	%rax, %rdi	# tmp261,
	call	s2upper	#
.L423:
	.loc 1 1659 0 is_stmt 1
	cmpl	$2, -272(%rbp)	#, which_case
	jne	.L424	#,
	.loc 1 1659 0 is_stmt 0 discriminator 1
	movq	-344(%rbp), %rax	# seq, tmp262
	movq	%rax, %rdi	# tmp262,
	call	s2lower	#
.L424:
	.loc 1 1662 0 is_stmt 1
	movl	$100, %eax	#, tmp264
	cmpl	$100, -300(%rbp)	#, width
	cmovle	-300(%rbp), %eax	# width,, tmp263
	movl	%eax, -300(%rbp)	# tmp263, width
	.loc 1 1663 0
	movl	$0, -292(%rbp)	#, i
	movl	$0, -284(%rbp)	#, l
	movl	$1, -276(%rbp)	#, ibase
	movl	$0, -308(%rbp)	#, lines
	jmp	.L425	#
.L443:
	.loc 1 1664 0
	cmpl	$0, -280(%rbp)	#, l1
	jns	.L426	#,
	.loc 1 1664 0 is_stmt 0 discriminator 1
	movl	$0, -280(%rbp)	#, l1
	jmp	.L427	#
.L426:
	.loc 1 1665 0 is_stmt 1
	cmpl	$0, -280(%rbp)	#, l1
	jne	.L427	#,
	.loc 1 1666 0
	cmpl	$0, -312(%rbp)	#, numline
	je	.L428	#,
	.loc 1 1666 0 is_stmt 0 discriminator 1
	movl	-276(%rbp), %edx	# ibase, tmp265
	movq	-328(%rbp), %rax	# outf, tmp266
	movl	$.LC107, %esi	#,
	movq	%rax, %rdi	# tmp266,
	movl	$0, %eax	#,
	call	fprintf	#
.L428:
	.loc 1 1667 0 is_stmt 1
	movl	$0, -288(%rbp)	#, j
	jmp	.L429	#
.L430:
	.loc 1 1667 0 is_stmt 0 discriminator 2
	movq	-328(%rbp), %rax	# outf, tmp267
	movq	%rax, %rsi	# tmp267,
	movl	$32, %edi	#,
	call	fputc	#
	addl	$1, -288(%rbp)	#, j
.L429:
	.loc 1 1667 0 discriminator 1
	movl	-288(%rbp), %eax	# j, tmp268
	cmpl	-296(%rbp), %eax	# tab, tmp268
	jl	.L430	#,
.L427:
	.loc 1 1669 0 is_stmt 1
	cmpl	$0, -304(%rbp)	#, spacer
	je	.L431	#,
	.loc 1 1669 0 is_stmt 0 discriminator 1
	movl	-284(%rbp), %eax	# l, tmp269
	addl	$1, %eax	#, D.8250
	cltd
	idivl	-304(%rbp)	# spacer
	movl	%edx, %eax	# tmp270, D.8250
	cmpl	$1, %eax	#, D.8250
	jne	.L431	#,
	.loc 1 1670 0 is_stmt 1
	movl	-284(%rbp), %eax	# l, tmp273
	cltq
	movb	$32, -240(%rbp,%rax)	#, s
	movl	-284(%rbp), %eax	# l, tmp275
	cltq
	movb	$32, -128(%rbp,%rax)	#, ss
	addl	$1, -284(%rbp)	#, l
.L431:
	.loc 1 1671 0
	movl	-292(%rbp), %eax	# i, tmp276
	movslq	%eax, %rdx	# tmp276, D.8255
	movq	-344(%rbp), %rax	# seq, tmp277
	addq	%rdx, %rax	# D.8255, D.8256
	movzbl	(%rax), %edx	# *_173, D.8252
	movl	-284(%rbp), %eax	# l, tmp279
	cltq
	movb	%dl, -240(%rbp,%rax)	# D.8252, s
	.loc 1 1672 0
	movq	-352(%rbp), %rax	# sqinfo, tmp280
	movl	(%rax), %eax	# sqinfo_45(D)->flags, D.8250
	andl	$512, %eax	#, D.8250
	testl	%eax, %eax	# D.8250
	je	.L432	#,
	.loc 1 1672 0 is_stmt 0 discriminator 1
	movq	-352(%rbp), %rax	# sqinfo, tmp281
	movq	344(%rax), %rdx	# sqinfo_45(D)->ss, D.8256
	movl	-292(%rbp), %eax	# i, tmp282
	cltq
	addq	%rdx, %rax	# D.8256, D.8256
	movzbl	(%rax), %eax	# *_179, iftmp.67
	jmp	.L433	#
.L432:
	.loc 1 1672 0 discriminator 2
	movl	$46, %eax	#, iftmp.67
.L433:
	.loc 1 1672 0 discriminator 3
	movl	-284(%rbp), %edx	# l, tmp284
	movslq	%edx, %rdx	# tmp284, tmp283
	movb	%al, -128(%rbp,%rdx)	# iftmp.67, ss
	.loc 1 1673 0 is_stmt 1 discriminator 3
	addl	$1, -284(%rbp)	#, l
	addl	$1, -292(%rbp)	#, i
	.loc 1 1674 0 discriminator 3
	addl	$1, -280(%rbp)	#, l1
	.loc 1 1675 0 discriminator 3
	movl	-280(%rbp), %eax	# l1, tmp285
	cmpl	-300(%rbp), %eax	# width, tmp285
	je	.L434	#,
	.loc 1 1675 0 is_stmt 0 discriminator 1
	movl	-292(%rbp), %eax	# i, tmp286
	cmpl	-260(%rbp), %eax	# seqlen, tmp286
	jne	.L425	#,
.L434:
	.loc 1 1676 0 is_stmt 1
	movl	-284(%rbp), %eax	# l, tmp288
	cltq
	movb	$0, -128(%rbp,%rax)	#, ss
	movl	-284(%rbp), %eax	# l, tmp290
	cltq
	movzbl	-128(%rbp,%rax), %edx	# ss, D.8252
	movl	-284(%rbp), %eax	# l, tmp292
	cltq
	movb	%dl, -240(%rbp,%rax)	# D.8252, s
	.loc 1 1677 0
	movl	$0, -284(%rbp)	#, l
	movl	$0, -280(%rbp)	#, l1
	.loc 1 1678 0
	cmpl	$0, -268(%rbp)	#, dostruc
	je	.L435	#,
	.loc 1 1680 0
	leaq	-240(%rbp), %rdx	#, tmp293
	movq	-328(%rbp), %rax	# outf, tmp294
	movl	$.LC79, %esi	#,
	movq	%rax, %rdi	# tmp294,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1681 0
	cmpl	$0, -312(%rbp)	#, numline
	je	.L436	#,
	.loc 1 1681 0 is_stmt 0 discriminator 1
	movq	-328(%rbp), %rax	# outf, tmp295
	movq	%rax, %rcx	# tmp295,
	movl	$9, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC108, %edi	#,
	call	fwrite	#
.L436:
	.loc 1 1682 0 is_stmt 1
	movl	$0, -288(%rbp)	#, j
	jmp	.L437	#
.L438:
	.loc 1 1682 0 is_stmt 0 discriminator 2
	movq	-328(%rbp), %rax	# outf, tmp296
	movq	%rax, %rsi	# tmp296,
	movl	$32, %edi	#,
	call	fputc	#
	addl	$1, -288(%rbp)	#, j
.L437:
	.loc 1 1682 0 discriminator 1
	movl	-288(%rbp), %eax	# j, tmp297
	cmpl	-296(%rbp), %eax	# tab, tmp297
	jl	.L438	#,
	.loc 1 1683 0 is_stmt 1
	movl	-292(%rbp), %eax	# i, tmp298
	cmpl	-260(%rbp), %eax	# seqlen, tmp298
	jne	.L439	#,
	.loc 1 1683 0 is_stmt 0 discriminator 1
	leaq	-256(%rbp), %rcx	#, tmp299
	leaq	-128(%rbp), %rdx	#, tmp300
	movq	-328(%rbp), %rax	# outf, tmp301
	movl	$.LC109, %esi	#,
	movq	%rax, %rdi	# tmp301,
	movl	$0, %eax	#,
	call	fprintf	#
	jmp	.L441	#
.L439:
	.loc 1 1684 0 is_stmt 1
	leaq	-128(%rbp), %rdx	#, tmp302
	movq	-328(%rbp), %rax	# outf, tmp303
	movl	$.LC79, %esi	#,
	movq	%rax, %rdi	# tmp303,
	movl	$0, %eax	#,
	call	fprintf	#
	jmp	.L441	#
.L435:
	.loc 1 1688 0
	movl	-292(%rbp), %eax	# i, tmp304
	cmpl	-260(%rbp), %eax	# seqlen, tmp304
	jne	.L442	#,
	.loc 1 1688 0 is_stmt 0 discriminator 1
	leaq	-256(%rbp), %rcx	#, tmp305
	leaq	-240(%rbp), %rdx	#, tmp306
	movq	-328(%rbp), %rax	# outf, tmp307
	movl	$.LC109, %esi	#,
	movq	%rax, %rdi	# tmp307,
	movl	$0, %eax	#,
	call	fprintf	#
	jmp	.L441	#
.L442:
	.loc 1 1689 0 is_stmt 1
	leaq	-240(%rbp), %rdx	#, tmp308
	movq	-328(%rbp), %rax	# outf, tmp309
	movl	$.LC79, %esi	#,
	movq	%rax, %rdi	# tmp309,
	movl	$0, %eax	#,
	call	fprintf	#
.L441:
	.loc 1 1691 0
	addl	$1, -308(%rbp)	#, lines
	.loc 1 1692 0
	movl	-292(%rbp), %eax	# i, tmp313
	addl	$1, %eax	#, tmp312
	movl	%eax, -276(%rbp)	# tmp312, ibase
.L425:
	.loc 1 1663 0 discriminator 1
	movl	-292(%rbp), %eax	# i, tmp314
	cmpl	-260(%rbp), %eax	# seqlen, tmp314
	jl	.L443	#,
	.loc 1 1695 0
	movl	-308(%rbp), %eax	# lines, D.8250
	.loc 1 1696 0
	movq	-24(%rbp), %rbx	# D.8257, tmp317
	xorq	%fs:40, %rbx	#, tmp317
	je	.L445	#,
	call	__stack_chk_fail	#
.L445:
	addq	$360, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE43:
	.size	WriteSeq, .-WriteSeq
	.globl	ReadMultipleRseqs
	.type	ReadMultipleRseqs, @function
ReadMultipleRseqs:
.LFB44:
	.loc 1 1722 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -40(%rbp)	# seqfile, seqfile
	movl	%esi, -44(%rbp)	# fformat, fformat
	movq	%rdx, -56(%rbp)	# ret_rseqs, ret_rseqs
	movq	%rcx, -64(%rbp)	# ret_sqinfo, ret_sqinfo
	movq	%r8, -72(%rbp)	# ret_num, ret_num
	.loc 1 1730 0
	movl	$0, -28(%rbp)	#, num
	.loc 1 1731 0
	movl	$16, -32(%rbp)	#, numalloced
	.loc 1 1732 0
	movl	-32(%rbp), %eax	# numalloced, tmp77
	cltq
	salq	$3, %rax	#, D.8289
	movq	%rax, %rdx	# D.8289,
	movl	$1732, %esi	#,
	movl	$.LC3, %edi	#,
	call	sre_malloc	#
	movq	%rax, -16(%rbp)	# tmp78, rseqs
	.loc 1 1733 0
	movl	-32(%rbp), %eax	# numalloced, tmp79
	cltq
	imulq	$360, %rax, %rax	#, D.8289, D.8289
	movq	%rax, %rdx	# D.8289,
	movl	$1733, %esi	#,
	movl	$.LC3, %edi	#,
	call	sre_malloc	#
	movq	%rax, -24(%rbp)	# tmp80, sqinfo
	.loc 1 1734 0
	movl	-44(%rbp), %ecx	# fformat, tmp81
	movq	-40(%rbp), %rax	# seqfile, tmp82
	movl	$0, %edx	#,
	movl	%ecx, %esi	# tmp81,
	movq	%rax, %rdi	# tmp82,
	call	SeqfileOpen	#
	movq	%rax, -8(%rbp)	# tmp83, dbfp
	cmpq	$0, -8(%rbp)	#, dbfp
	jne	.L448	#,
	.loc 1 1734 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.8288
	jmp	.L449	#
.L448:
	.loc 1 1736 0 is_stmt 1
	jmp	.L450	#
.L451:
	.loc 1 1738 0
	addl	$1, -28(%rbp)	#, num
	.loc 1 1739 0
	movl	-28(%rbp), %eax	# num, tmp84
	cmpl	-32(%rbp), %eax	# numalloced, tmp84
	jne	.L450	#,
	.loc 1 1741 0
	addl	$16, -32(%rbp)	#, numalloced
	.loc 1 1742 0
	movl	-32(%rbp), %eax	# numalloced, tmp85
	cltq
	leaq	0(,%rax,8), %rdx	#, D.8289
	movq	-16(%rbp), %rax	# rseqs, tmp86
	movq	%rdx, %rcx	# D.8289,
	movq	%rax, %rdx	# tmp86,
	movl	$1742, %esi	#,
	movl	$.LC3, %edi	#,
	call	sre_realloc	#
	movq	%rax, -16(%rbp)	# tmp87, rseqs
	.loc 1 1743 0
	movl	-32(%rbp), %eax	# numalloced, tmp88
	cltq
	imulq	$360, %rax, %rdx	#, D.8289, D.8289
	movq	-24(%rbp), %rax	# sqinfo, tmp89
	movq	%rdx, %rcx	# D.8289,
	movq	%rax, %rdx	# tmp89,
	movl	$1743, %esi	#,
	movl	$.LC3, %edi	#,
	call	sre_realloc	#
	movq	%rax, -24(%rbp)	# tmp90, sqinfo
.L450:
	.loc 1 1736 0 discriminator 1
	movl	-28(%rbp), %eax	# num, tmp91
	cltq
	imulq	$360, %rax, %rdx	#, D.8289, D.8289
	movq	-24(%rbp), %rax	# sqinfo, tmp92
	leaq	(%rdx,%rax), %rcx	#, D.8290
	movl	-28(%rbp), %eax	# num, tmp93
	cltq
	leaq	0(,%rax,8), %rdx	#, D.8289
	movq	-16(%rbp), %rax	# rseqs, tmp94
	addq	%rax, %rdx	# tmp94, D.8291
	movq	-8(%rbp), %rax	# dbfp, tmp95
	movl	144(%rax), %esi	# dbfp_16->format, D.8288
	movq	-8(%rbp), %rax	# dbfp, tmp96
	movq	%rax, %rdi	# tmp96,
	call	ReadSeq	#
	testl	%eax, %eax	# D.8288
	jne	.L451	#,
	.loc 1 1746 0
	movq	-8(%rbp), %rax	# dbfp, tmp97
	movq	%rax, %rdi	# tmp97,
	call	SeqfileClose	#
	.loc 1 1748 0
	movq	-56(%rbp), %rax	# ret_rseqs, tmp98
	movq	-16(%rbp), %rdx	# rseqs, tmp99
	movq	%rdx, (%rax)	# tmp99, *ret_rseqs_34(D)
	.loc 1 1749 0
	movq	-64(%rbp), %rax	# ret_sqinfo, tmp100
	movq	-24(%rbp), %rdx	# sqinfo, tmp101
	movq	%rdx, (%rax)	# tmp101, *ret_sqinfo_35(D)
	.loc 1 1750 0
	movq	-72(%rbp), %rax	# ret_num, tmp102
	movl	-28(%rbp), %edx	# num, tmp103
	movl	%edx, (%rax)	# tmp103, *ret_num_36(D)
	.loc 1 1751 0
	movl	$1, %eax	#, D.8288
.L449:
	.loc 1 1752 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE44:
	.size	ReadMultipleRseqs, .-ReadMultipleRseqs
	.section	.rodata
.LC110:
	.string	"FASTA"
.LC111:
	.string	"GENBANK"
.LC112:
	.string	"EMBL"
.LC113:
	.string	"GCG"
.LC114:
	.string	"GCGDATA"
.LC115:
	.string	"RAW"
.LC116:
	.string	"IG"
.LC117:
	.string	"STRIDER"
.LC118:
	.string	"IDRAW"
.LC119:
	.string	"ZUKER"
.LC120:
	.string	"PIR"
.LC121:
	.string	"SQUID"
.LC122:
	.string	"STOCKHOLM"
.LC123:
	.string	"SELEX"
.LC124:
	.string	"MSF"
.LC125:
	.string	"A2M"
.LC126:
	.string	"PHYLIP"
.LC127:
	.string	"EPS"
	.text
	.globl	String2SeqfileFormat
	.type	String2SeqfileFormat, @function
String2SeqfileFormat:
.LFB45:
	.loc 1 1770 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# s, s
	.loc 1 1772 0
	movl	$0, -12(%rbp)	#, code
	.loc 1 1774 0
	cmpq	$0, -24(%rbp)	#, s
	jne	.L453	#,
	.loc 1 1774 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.8292
	jmp	.L454	#
.L453:
	.loc 1 1775 0 is_stmt 1
	movq	-24(%rbp), %rax	# s, tmp80
	movl	$-1, %esi	#,
	movq	%rax, %rdi	# tmp80,
	call	sre_strdup	#
	movq	%rax, -8(%rbp)	# tmp81, s2
	.loc 1 1776 0
	movq	-8(%rbp), %rax	# s2, tmp82
	movq	%rax, %rdi	# tmp82,
	call	s2upper	#
	.loc 1 1778 0
	movq	-8(%rbp), %rax	# s2, tmp83
	movl	$.LC110, %esi	#,
	movq	%rax, %rdi	# tmp83,
	call	strcmp	#
	testl	%eax, %eax	# D.8292
	jne	.L455	#,
	.loc 1 1778 0 is_stmt 0 discriminator 1
	movl	$7, -12(%rbp)	#, code
	jmp	.L456	#
.L455:
	.loc 1 1779 0 is_stmt 1
	movq	-8(%rbp), %rax	# s2, tmp84
	movl	$.LC111, %esi	#,
	movq	%rax, %rdi	# tmp84,
	call	strcmp	#
	testl	%eax, %eax	# D.8292
	jne	.L457	#,
	.loc 1 1779 0 is_stmt 0 discriminator 1
	movl	$2, -12(%rbp)	#, code
	jmp	.L456	#
.L457:
	.loc 1 1780 0 is_stmt 1
	movq	-8(%rbp), %rax	# s2, tmp85
	movl	$.LC112, %esi	#,
	movq	%rax, %rdi	# tmp85,
	call	strcmp	#
	testl	%eax, %eax	# D.8292
	jne	.L458	#,
	.loc 1 1780 0 is_stmt 0 discriminator 1
	movl	$4, -12(%rbp)	#, code
	jmp	.L456	#
.L458:
	.loc 1 1781 0 is_stmt 1
	movq	-8(%rbp), %rax	# s2, tmp86
	movl	$.LC113, %esi	#,
	movq	%rax, %rdi	# tmp86,
	call	strcmp	#
	testl	%eax, %eax	# D.8292
	jne	.L459	#,
	.loc 1 1781 0 is_stmt 0 discriminator 1
	movl	$5, -12(%rbp)	#, code
	jmp	.L456	#
.L459:
	.loc 1 1782 0 is_stmt 1
	movq	-8(%rbp), %rax	# s2, tmp87
	movl	$.LC114, %esi	#,
	movq	%rax, %rdi	# tmp87,
	call	strcmp	#
	testl	%eax, %eax	# D.8292
	jne	.L460	#,
	.loc 1 1782 0 is_stmt 0 discriminator 1
	movl	$16, -12(%rbp)	#, code
	jmp	.L456	#
.L460:
	.loc 1 1783 0 is_stmt 1
	movq	-8(%rbp), %rax	# s2, tmp88
	movl	$.LC115, %esi	#,
	movq	%rax, %rdi	# tmp88,
	call	strcmp	#
	testl	%eax, %eax	# D.8292
	jne	.L461	#,
	.loc 1 1783 0 is_stmt 0 discriminator 1
	movl	$13, -12(%rbp)	#, code
	jmp	.L456	#
.L461:
	.loc 1 1784 0 is_stmt 1
	movq	-8(%rbp), %rax	# s2, tmp89
	movl	$.LC116, %esi	#,
	movq	%rax, %rdi	# tmp89,
	call	strcmp	#
	testl	%eax, %eax	# D.8292
	jne	.L462	#,
	.loc 1 1784 0 is_stmt 0 discriminator 1
	movl	$1, -12(%rbp)	#, code
	jmp	.L456	#
.L462:
	.loc 1 1785 0 is_stmt 1
	movq	-8(%rbp), %rax	# s2, tmp90
	movl	$.LC117, %esi	#,
	movq	%rax, %rdi	# tmp90,
	call	strcmp	#
	testl	%eax, %eax	# D.8292
	jne	.L463	#,
	.loc 1 1785 0 is_stmt 0 discriminator 1
	movl	$6, -12(%rbp)	#, code
	jmp	.L456	#
.L463:
	.loc 1 1786 0 is_stmt 1
	movq	-8(%rbp), %rax	# s2, tmp91
	movl	$.LC118, %esi	#,
	movq	%rax, %rdi	# tmp91,
	call	strcmp	#
	testl	%eax, %eax	# D.8292
	jne	.L464	#,
	.loc 1 1786 0 is_stmt 0 discriminator 1
	movl	$9, -12(%rbp)	#, code
	jmp	.L456	#
.L464:
	.loc 1 1787 0 is_stmt 1
	movq	-8(%rbp), %rax	# s2, tmp92
	movl	$.LC119, %esi	#,
	movq	%rax, %rdi	# tmp92,
	call	strcmp	#
	testl	%eax, %eax	# D.8292
	jne	.L465	#,
	.loc 1 1787 0 is_stmt 0 discriminator 1
	movl	$8, -12(%rbp)	#, code
	jmp	.L456	#
.L465:
	.loc 1 1788 0 is_stmt 1
	movq	-8(%rbp), %rax	# s2, tmp93
	movl	$.LC120, %esi	#,
	movq	%rax, %rdi	# tmp93,
	call	strcmp	#
	testl	%eax, %eax	# D.8292
	jne	.L466	#,
	.loc 1 1788 0 is_stmt 0 discriminator 1
	movl	$12, -12(%rbp)	#, code
	jmp	.L456	#
.L466:
	.loc 1 1789 0 is_stmt 1
	movq	-8(%rbp), %rax	# s2, tmp94
	movl	$.LC121, %esi	#,
	movq	%rax, %rdi	# tmp94,
	call	strcmp	#
	testl	%eax, %eax	# D.8292
	jne	.L467	#,
	.loc 1 1789 0 is_stmt 0 discriminator 1
	movl	$14, -12(%rbp)	#, code
	jmp	.L456	#
.L467:
	.loc 1 1790 0 is_stmt 1
	movq	-8(%rbp), %rax	# s2, tmp95
	movl	$.LC122, %esi	#,
	movq	%rax, %rdi	# tmp95,
	call	strcmp	#
	testl	%eax, %eax	# D.8292
	jne	.L468	#,
	.loc 1 1790 0 is_stmt 0 discriminator 1
	movl	$101, -12(%rbp)	#, code
	jmp	.L456	#
.L468:
	.loc 1 1791 0 is_stmt 1
	movq	-8(%rbp), %rax	# s2, tmp96
	movl	$.LC123, %esi	#,
	movq	%rax, %rdi	# tmp96,
	call	strcmp	#
	testl	%eax, %eax	# D.8292
	jne	.L469	#,
	.loc 1 1791 0 is_stmt 0 discriminator 1
	movl	$102, -12(%rbp)	#, code
	jmp	.L456	#
.L469:
	.loc 1 1792 0 is_stmt 1
	movq	-8(%rbp), %rax	# s2, tmp97
	movl	$.LC124, %esi	#,
	movq	%rax, %rdi	# tmp97,
	call	strcmp	#
	testl	%eax, %eax	# D.8292
	jne	.L470	#,
	.loc 1 1792 0 is_stmt 0 discriminator 1
	movl	$103, -12(%rbp)	#, code
	jmp	.L456	#
.L470:
	.loc 1 1793 0 is_stmt 1
	movq	-8(%rbp), %rax	# s2, tmp98
	movl	$.LC52, %esi	#,
	movq	%rax, %rdi	# tmp98,
	call	strcmp	#
	testl	%eax, %eax	# D.8292
	jne	.L471	#,
	.loc 1 1793 0 is_stmt 0 discriminator 1
	movl	$104, -12(%rbp)	#, code
	jmp	.L456	#
.L471:
	.loc 1 1794 0 is_stmt 1
	movq	-8(%rbp), %rax	# s2, tmp99
	movl	$.LC125, %esi	#,
	movq	%rax, %rdi	# tmp99,
	call	strcmp	#
	testl	%eax, %eax	# D.8292
	jne	.L472	#,
	.loc 1 1794 0 is_stmt 0 discriminator 1
	movl	$105, -12(%rbp)	#, code
	jmp	.L456	#
.L472:
	.loc 1 1795 0 is_stmt 1
	movq	-8(%rbp), %rax	# s2, tmp100
	movl	$.LC126, %esi	#,
	movq	%rax, %rdi	# tmp100,
	call	strcmp	#
	testl	%eax, %eax	# D.8292
	jne	.L473	#,
	.loc 1 1795 0 is_stmt 0 discriminator 1
	movl	$106, -12(%rbp)	#, code
	jmp	.L456	#
.L473:
	.loc 1 1796 0 is_stmt 1
	movq	-8(%rbp), %rax	# s2, tmp101
	movl	$.LC127, %esi	#,
	movq	%rax, %rdi	# tmp101,
	call	strcmp	#
	testl	%eax, %eax	# D.8292
	jne	.L456	#,
	.loc 1 1796 0 is_stmt 0 discriminator 1
	movl	$107, -12(%rbp)	#, code
.L456:
	.loc 1 1798 0 is_stmt 1
	movq	-8(%rbp), %rax	# s2, tmp102
	movq	%rax, %rdi	# tmp102,
	call	free	#
	.loc 1 1799 0
	movl	-12(%rbp), %eax	# code, D.8292
.L454:
	.loc 1 1800 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE45:
	.size	String2SeqfileFormat, .-String2SeqfileFormat
	.section	.rodata
.LC128:
	.string	"unknown"
.LC129:
	.string	"Genbank"
.LC130:
	.string	"GCG data library"
.LC131:
	.string	"raw"
.LC132:
	.string	"Intelligenetics"
.LC133:
	.string	"MacStrider"
.LC134:
	.string	"Idraw Postscript"
.LC135:
	.string	"Zuker"
.LC136:
	.string	"Stockholm"
.LC137:
	.string	"Clustal"
.LC138:
	.string	"a2m"
.LC139:
	.string	"Phylip"
	.align 8
.LC140:
	.string	"Bad code passed to MSAFormat2String()"
	.text
	.globl	SeqfileFormat2String
	.type	SeqfileFormat2String, @function
SeqfileFormat2String:
.LFB46:
	.loc 1 1803 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# code, code
	.loc 1 1804 0
	cmpl	$107, -4(%rbp)	#, code
	ja	.L475	#,
	movl	-4(%rbp), %eax	# code, tmp61
	movq	.L477(,%rax,8), %rax	#, tmp62
	jmp	*%rax	# tmp62
	.section	.rodata
	.align 8
	.align 4
.L477:
	.quad	.L476
	.quad	.L478
	.quad	.L479
	.quad	.L475
	.quad	.L480
	.quad	.L481
	.quad	.L482
	.quad	.L483
	.quad	.L484
	.quad	.L485
	.quad	.L475
	.quad	.L475
	.quad	.L486
	.quad	.L487
	.quad	.L488
	.quad	.L475
	.quad	.L489
	.quad	.L475
	.quad	.L475
	.quad	.L475
	.quad	.L475
	.quad	.L475
	.quad	.L475
	.quad	.L475
	.quad	.L475
	.quad	.L475
	.quad	.L475
	.quad	.L475
	.quad	.L475
	.quad	.L475
	.quad	.L475
	.quad	.L475
	.quad	.L475
	.quad	.L475
	.quad	.L475
	.quad	.L475
	.quad	.L475
	.quad	.L475
	.quad	.L475
	.quad	.L475
	.quad	.L475
	.quad	.L475
	.quad	.L475
	.quad	.L475
	.quad	.L475
	.quad	.L475
	.quad	.L475
	.quad	.L475
	.quad	.L475
	.quad	.L475
	.quad	.L475
	.quad	.L475
	.quad	.L475
	.quad	.L475
	.quad	.L475
	.quad	.L475
	.quad	.L475
	.quad	.L475
	.quad	.L475
	.quad	.L475
	.quad	.L475
	.quad	.L475
	.quad	.L475
	.quad	.L475
	.quad	.L475
	.quad	.L475
	.quad	.L475
	.quad	.L475
	.quad	.L475
	.quad	.L475
	.quad	.L475
	.quad	.L475
	.quad	.L475
	.quad	.L475
	.quad	.L475
	.quad	.L475
	.quad	.L475
	.quad	.L475
	.quad	.L475
	.quad	.L475
	.quad	.L475
	.quad	.L475
	.quad	.L475
	.quad	.L475
	.quad	.L475
	.quad	.L475
	.quad	.L475
	.quad	.L475
	.quad	.L475
	.quad	.L475
	.quad	.L475
	.quad	.L475
	.quad	.L475
	.quad	.L475
	.quad	.L475
	.quad	.L475
	.quad	.L475
	.quad	.L475
	.quad	.L475
	.quad	.L475
	.quad	.L475
	.quad	.L490
	.quad	.L491
	.quad	.L492
	.quad	.L493
	.quad	.L494
	.quad	.L495
	.quad	.L496
	.text
.L476:
	.loc 1 1805 0
	movl	$.LC128, %eax	#, D.8311
	jmp	.L497	#
.L483:
	.loc 1 1806 0
	movl	$.LC110, %eax	#, D.8311
	jmp	.L497	#
.L479:
	.loc 1 1807 0
	movl	$.LC129, %eax	#, D.8311
	jmp	.L497	#
.L480:
	.loc 1 1808 0
	movl	$.LC112, %eax	#, D.8311
	jmp	.L497	#
.L481:
	.loc 1 1809 0
	movl	$.LC113, %eax	#, D.8311
	jmp	.L497	#
.L489:
	.loc 1 1810 0
	movl	$.LC130, %eax	#, D.8311
	jmp	.L497	#
.L487:
	.loc 1 1811 0
	movl	$.LC131, %eax	#, D.8311
	jmp	.L497	#
.L478:
	.loc 1 1812 0
	movl	$.LC132, %eax	#, D.8311
	jmp	.L497	#
.L482:
	.loc 1 1813 0
	movl	$.LC133, %eax	#, D.8311
	jmp	.L497	#
.L485:
	.loc 1 1814 0
	movl	$.LC134, %eax	#, D.8311
	jmp	.L497	#
.L484:
	.loc 1 1815 0
	movl	$.LC135, %eax	#, D.8311
	jmp	.L497	#
.L486:
	.loc 1 1816 0
	movl	$.LC120, %eax	#, D.8311
	jmp	.L497	#
.L488:
	.loc 1 1817 0
	movl	$.LC121, %eax	#, D.8311
	jmp	.L497	#
.L490:
	.loc 1 1818 0
	movl	$.LC136, %eax	#, D.8311
	jmp	.L497	#
.L491:
	.loc 1 1819 0
	movl	$.LC123, %eax	#, D.8311
	jmp	.L497	#
.L492:
	.loc 1 1820 0
	movl	$.LC124, %eax	#, D.8311
	jmp	.L497	#
.L493:
	.loc 1 1821 0
	movl	$.LC137, %eax	#, D.8311
	jmp	.L497	#
.L494:
	.loc 1 1822 0
	movl	$.LC138, %eax	#, D.8311
	jmp	.L497	#
.L495:
	.loc 1 1823 0
	movl	$.LC139, %eax	#, D.8311
	jmp	.L497	#
.L496:
	.loc 1 1824 0
	movl	$.LC127, %eax	#, D.8311
	jmp	.L497	#
.L475:
	.loc 1 1826 0
	movl	$.LC140, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
	.loc 1 1829 0
	movl	$0, %eax	#, D.8311
.L497:
	.loc 1 1830 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	SeqfileFormat2String, .-SeqfileFormat2String
	.globl	MSAToSqinfo
	.type	MSAToSqinfo, @function
MSAToSqinfo:
.LFB47:
	.loc 1 1853 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# msa, msa
	.loc 1 1857 0
	movq	-40(%rbp), %rax	# msa, tmp159
	movl	28(%rax), %eax	# msa_2(D)->nseq, D.8325
	cltq
	imulq	$360, %rax, %rax	#, D.8326, D.8326
	movq	%rax, %rdx	# D.8326,
	movl	$1857, %esi	#,
	movl	$.LC3, %edi	#,
	call	sre_malloc	#
	movq	%rax, -24(%rbp)	# tmp160, sqinfo
	.loc 1 1859 0
	movl	$0, -28(%rbp)	#, idx
	jmp	.L499	#
.L502:
	.loc 1 1861 0
	movl	-28(%rbp), %eax	# idx, tmp161
	cltq
	imulq	$360, %rax, %rdx	#, D.8326, D.8326
	movq	-24(%rbp), %rax	# sqinfo, tmp162
	addq	%rdx, %rax	# D.8326, D.8327
	movl	$0, (%rax)	#, _11->flags
	.loc 1 1863 0
	movq	-40(%rbp), %rax	# msa, tmp163
	movq	8(%rax), %rax	# msa_2(D)->sqname, D.8328
	movl	-28(%rbp), %edx	# idx, tmp164
	movslq	%edx, %rdx	# tmp164, D.8326
	salq	$3, %rdx	#, D.8326
	addq	%rdx, %rax	# D.8326, D.8328
	.loc 1 1862 0
	movq	(%rax), %rax	# *_15, D.8329
	movl	-28(%rbp), %edx	# idx, tmp165
	movslq	%edx, %rdx	# tmp165, D.8326
	imulq	$360, %rdx, %rcx	#, D.8326, D.8326
	movq	-24(%rbp), %rdx	# sqinfo, tmp166
	addq	%rdx, %rcx	# tmp166, D.8327
	movl	$1, %edx	#,
	movq	%rax, %rsi	# D.8329,
	movq	%rcx, %rdi	# D.8327,
	call	SetSeqinfoString	#
	.loc 1 1864 0
	movl	-28(%rbp), %edx	# idx, tmp167
	movq	-40(%rbp), %rax	# msa, tmp168
	movl	%edx, %esi	# tmp167,
	movq	%rax, %rdi	# tmp168,
	call	MSAGetSeqAccession	#
	movl	-28(%rbp), %edx	# idx, tmp169
	movslq	%edx, %rdx	# tmp169, D.8326
	imulq	$360, %rdx, %rcx	#, D.8326, D.8326
	movq	-24(%rbp), %rdx	# sqinfo, tmp170
	addq	%rdx, %rcx	# tmp170, D.8327
	movl	$4, %edx	#,
	movq	%rax, %rsi	# D.8329,
	movq	%rcx, %rdi	# D.8327,
	call	SetSeqinfoString	#
	.loc 1 1866 0
	movl	-28(%rbp), %edx	# idx, tmp171
	movq	-40(%rbp), %rax	# msa, tmp172
	movl	%edx, %esi	# tmp171,
	movq	%rax, %rdi	# tmp172,
	call	MSAGetSeqDescription	#
	movl	-28(%rbp), %edx	# idx, tmp173
	movslq	%edx, %rdx	# tmp173, D.8326
	imulq	$360, %rdx, %rcx	#, D.8326, D.8326
	movq	-24(%rbp), %rdx	# sqinfo, tmp174
	addq	%rdx, %rcx	# tmp174, D.8327
	movl	$8, %edx	#,
	movq	%rax, %rsi	# D.8329,
	movq	%rcx, %rdi	# D.8327,
	call	SetSeqinfoString	#
	.loc 1 1869 0
	movq	-40(%rbp), %rax	# msa, tmp175
	movq	112(%rax), %rax	# msa_2(D)->ss, D.8328
	testq	%rax, %rax	# D.8328
	je	.L500	#,
	.loc 1 1869 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# msa, tmp176
	movq	112(%rax), %rax	# msa_2(D)->ss, D.8328
	movl	-28(%rbp), %edx	# idx, tmp177
	movslq	%edx, %rdx	# tmp177, D.8326
	salq	$3, %rdx	#, D.8326
	addq	%rdx, %rax	# D.8326, D.8328
	movq	(%rax), %rax	# *_32, D.8329
	testq	%rax, %rax	# D.8329
	je	.L500	#,
	.loc 1 1871 0 is_stmt 1
	movl	-28(%rbp), %eax	# idx, tmp178
	cltq
	imulq	$360, %rax, %rdx	#, D.8326, D.8326
	movq	-24(%rbp), %rax	# sqinfo, tmp179
	addq	%rdx, %rax	# D.8326, D.8327
	.loc 1 1870 0
	leaq	344(%rax), %rcx	#, D.8328
	.loc 1 1871 0
	movq	-40(%rbp), %rax	# msa, tmp180
	movq	112(%rax), %rax	# msa_2(D)->ss, D.8328
	movl	-28(%rbp), %edx	# idx, tmp181
	movslq	%edx, %rdx	# tmp181, D.8326
	salq	$3, %rdx	#, D.8326
	addq	%rdx, %rax	# D.8326, D.8328
	.loc 1 1870 0
	movq	(%rax), %rdx	# *_41, D.8329
	movq	-40(%rbp), %rax	# msa, tmp182
	movl	24(%rax), %esi	# msa_2(D)->alen, D.8325
	movq	-40(%rbp), %rax	# msa, tmp183
	movq	(%rax), %rax	# msa_2(D)->aseq, D.8328
	movl	-28(%rbp), %edi	# idx, tmp184
	movslq	%edi, %rdi	# tmp184, D.8326
	salq	$3, %rdi	#, D.8326
	addq	%rdi, %rax	# D.8326, D.8328
	movq	(%rax), %rax	# *_47, D.8329
	movq	%rax, %rdi	# D.8329,
	call	MakeDealignedString	#
	.loc 1 1872 0
	movl	-28(%rbp), %eax	# idx, tmp185
	cltq
	imulq	$360, %rax, %rdx	#, D.8326, D.8326
	movq	-24(%rbp), %rax	# sqinfo, tmp186
	addq	%rdx, %rax	# D.8326, D.8327
	movl	-28(%rbp), %edx	# idx, tmp187
	movslq	%edx, %rdx	# tmp187, D.8326
	imulq	$360, %rdx, %rcx	#, D.8326, D.8326
	movq	-24(%rbp), %rdx	# sqinfo, tmp188
	addq	%rcx, %rdx	# D.8326, D.8327
	movl	(%rdx), %edx	# _54->flags, D.8325
	orb	$2, %dh	#, D.8325
	movl	%edx, (%rax)	# D.8325, _51->flags
.L500:
	.loc 1 1875 0
	movq	-40(%rbp), %rax	# msa, tmp189
	movq	120(%rax), %rax	# msa_2(D)->sa, D.8328
	testq	%rax, %rax	# D.8328
	je	.L501	#,
	.loc 1 1875 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# msa, tmp190
	movq	120(%rax), %rax	# msa_2(D)->sa, D.8328
	movl	-28(%rbp), %edx	# idx, tmp191
	movslq	%edx, %rdx	# tmp191, D.8326
	salq	$3, %rdx	#, D.8326
	addq	%rdx, %rax	# D.8326, D.8328
	movq	(%rax), %rax	# *_61, D.8329
	testq	%rax, %rax	# D.8329
	je	.L501	#,
	.loc 1 1877 0 is_stmt 1
	movl	-28(%rbp), %eax	# idx, tmp192
	cltq
	imulq	$360, %rax, %rdx	#, D.8326, D.8326
	movq	-24(%rbp), %rax	# sqinfo, tmp193
	addq	%rdx, %rax	# D.8326, D.8327
	.loc 1 1876 0
	leaq	352(%rax), %rcx	#, D.8328
	.loc 1 1877 0
	movq	-40(%rbp), %rax	# msa, tmp194
	movq	120(%rax), %rax	# msa_2(D)->sa, D.8328
	movl	-28(%rbp), %edx	# idx, tmp195
	movslq	%edx, %rdx	# tmp195, D.8326
	salq	$3, %rdx	#, D.8326
	addq	%rdx, %rax	# D.8326, D.8328
	.loc 1 1876 0
	movq	(%rax), %rdx	# *_70, D.8329
	movq	-40(%rbp), %rax	# msa, tmp196
	movl	24(%rax), %esi	# msa_2(D)->alen, D.8325
	movq	-40(%rbp), %rax	# msa, tmp197
	movq	(%rax), %rax	# msa_2(D)->aseq, D.8328
	movl	-28(%rbp), %edi	# idx, tmp198
	movslq	%edi, %rdi	# tmp198, D.8326
	salq	$3, %rdi	#, D.8326
	addq	%rdi, %rax	# D.8326, D.8328
	movq	(%rax), %rax	# *_76, D.8329
	movq	%rax, %rdi	# D.8329,
	call	MakeDealignedString	#
	.loc 1 1878 0
	movl	-28(%rbp), %eax	# idx, tmp199
	cltq
	imulq	$360, %rax, %rdx	#, D.8326, D.8326
	movq	-24(%rbp), %rax	# sqinfo, tmp200
	addq	%rdx, %rax	# D.8326, D.8327
	movl	-28(%rbp), %edx	# idx, tmp201
	movslq	%edx, %rdx	# tmp201, D.8326
	imulq	$360, %rdx, %rcx	#, D.8326, D.8326
	movq	-24(%rbp), %rdx	# sqinfo, tmp202
	addq	%rcx, %rdx	# D.8326, D.8327
	movl	(%rdx), %edx	# _83->flags, D.8325
	orb	$4, %dh	#, D.8325
	movl	%edx, (%rax)	# D.8325, _80->flags
.L501:
	.loc 1 1881 0
	movl	-28(%rbp), %eax	# idx, tmp203
	cltq
	imulq	$360, %rax, %rdx	#, D.8326, D.8326
	movq	-24(%rbp), %rax	# sqinfo, tmp204
	leaq	(%rdx,%rax), %rbx	#, D.8327
	movq	-40(%rbp), %rax	# msa, tmp205
	movq	(%rax), %rax	# msa_2(D)->aseq, D.8328
	movl	-28(%rbp), %edx	# idx, tmp206
	movslq	%edx, %rdx	# tmp206, D.8326
	salq	$3, %rdx	#, D.8326
	addq	%rdx, %rax	# D.8326, D.8328
	movq	(%rax), %rax	# *_92, D.8329
	movq	%rax, %rdi	# D.8329,
	call	DealignedLength	#
	movl	%eax, 324(%rbx)	# D.8325, _88->len
	.loc 1 1882 0
	movl	-28(%rbp), %eax	# idx, tmp207
	cltq
	imulq	$360, %rax, %rdx	#, D.8326, D.8326
	movq	-24(%rbp), %rax	# sqinfo, tmp208
	addq	%rdx, %rax	# D.8326, D.8327
	movl	-28(%rbp), %edx	# idx, tmp209
	movslq	%edx, %rdx	# tmp209, D.8326
	imulq	$360, %rdx, %rcx	#, D.8326, D.8326
	movq	-24(%rbp), %rdx	# sqinfo, tmp210
	addq	%rcx, %rdx	# D.8326, D.8327
	movl	(%rdx), %edx	# _100->flags, D.8325
	orl	$64, %edx	#, D.8325
	movl	%edx, (%rax)	# D.8325, _97->flags
	.loc 1 1859 0
	addl	$1, -28(%rbp)	#, idx
.L499:
	.loc 1 1859 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# msa, tmp211
	movl	28(%rax), %eax	# msa_2(D)->nseq, D.8325
	cmpl	-28(%rbp), %eax	# idx, D.8325
	jg	.L502	#,
	.loc 1 1884 0 is_stmt 1
	movq	-24(%rbp), %rax	# sqinfo, D.8327
	.loc 1 1885 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	MSAToSqinfo, .-MSAToSqinfo
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "squid.h"
	.file 7 "gki.h"
	.file 8 "ssi.h"
	.file 9 "msa.h"
	.file 10 "/usr/include/ctype.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1ae9
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF251
	.byte	0x1
	.long	.LASF252
	.long	.LASF253
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
	.long	.LASF254
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
	.long	0x62
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF47
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF48
	.uleb128 0xd
	.byte	0x4
	.byte	0xa
	.byte	0x30
	.long	0x302
	.uleb128 0xe
	.long	.LASF49
	.sleb128 256
	.uleb128 0xe
	.long	.LASF50
	.sleb128 512
	.uleb128 0xe
	.long	.LASF51
	.sleb128 1024
	.uleb128 0xe
	.long	.LASF52
	.sleb128 2048
	.uleb128 0xe
	.long	.LASF53
	.sleb128 4096
	.uleb128 0xe
	.long	.LASF54
	.sleb128 8192
	.uleb128 0xe
	.long	.LASF55
	.sleb128 16384
	.uleb128 0xe
	.long	.LASF56
	.sleb128 32768
	.uleb128 0xe
	.long	.LASF57
	.sleb128 1
	.uleb128 0xe
	.long	.LASF58
	.sleb128 2
	.uleb128 0xe
	.long	.LASF59
	.sleb128 4
	.uleb128 0xe
	.long	.LASF60
	.sleb128 8
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF61
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF62
	.uleb128 0x2
	.long	.LASF63
	.byte	0x6
	.byte	0x28
	.long	0x46
	.uleb128 0x2
	.long	.LASF64
	.byte	0x6
	.byte	0x29
	.long	0x4d
	.uleb128 0x2
	.long	.LASF65
	.byte	0x6
	.byte	0x2a
	.long	0x29f
	.uleb128 0xf
	.long	.LASF66
	.value	0x168
	.byte	0x6
	.byte	0x54
	.long	0x3d3
	.uleb128 0x8
	.long	.LASF67
	.byte	0x6
	.byte	0x55
	.long	0x62
	.byte	0
	.uleb128 0x8
	.long	.LASF68
	.byte	0x6
	.byte	0x56
	.long	0x3d3
	.byte	0x4
	.uleb128 0x10
	.string	"id"
	.byte	0x6
	.byte	0x57
	.long	0x3d3
	.byte	0x44
	.uleb128 0x10
	.string	"acc"
	.byte	0x6
	.byte	0x58
	.long	0x3d3
	.byte	0x84
	.uleb128 0x8
	.long	.LASF69
	.byte	0x6
	.byte	0x59
	.long	0x3e3
	.byte	0xc4
	.uleb128 0x11
	.string	"len"
	.byte	0x6
	.byte	0x5a
	.long	0x62
	.value	0x144
	.uleb128 0x12
	.long	.LASF70
	.byte	0x6
	.byte	0x5b
	.long	0x62
	.value	0x148
	.uleb128 0x12
	.long	.LASF71
	.byte	0x6
	.byte	0x5c
	.long	0x62
	.value	0x14c
	.uleb128 0x12
	.long	.LASF72
	.byte	0x6
	.byte	0x5d
	.long	0x62
	.value	0x150
	.uleb128 0x12
	.long	.LASF73
	.byte	0x6
	.byte	0x5e
	.long	0x62
	.value	0x154
	.uleb128 0x11
	.string	"ss"
	.byte	0x6
	.byte	0x5f
	.long	0x8f
	.value	0x158
	.uleb128 0x11
	.string	"sa"
	.byte	0x6
	.byte	0x60
	.long	0x8f
	.value	0x160
	.byte	0
	.uleb128 0xb
	.long	0x95
	.long	0x3e3
	.uleb128 0xc
	.long	0x86
	.byte	0x3f
	.byte	0
	.uleb128 0xb
	.long	0x95
	.long	0x3f3
	.uleb128 0xc
	.long	0x86
	.byte	0x7f
	.byte	0
	.uleb128 0x2
	.long	.LASF74
	.byte	0x6
	.byte	0x62
	.long	0x331
	.uleb128 0x7
	.long	.LASF75
	.byte	0x18
	.byte	0x7
	.byte	0x1a
	.long	0x42f
	.uleb128 0x10
	.string	"key"
	.byte	0x7
	.byte	0x1b
	.long	0x8f
	.byte	0
	.uleb128 0x10
	.string	"idx"
	.byte	0x7
	.byte	0x1c
	.long	0x62
	.byte	0x8
	.uleb128 0x10
	.string	"nxt"
	.byte	0x7
	.byte	0x1d
	.long	0x42f
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x3fe
	.uleb128 0x13
	.byte	0x18
	.byte	0x7
	.byte	0x24
	.long	0x46e
	.uleb128 0x8
	.long	.LASF76
	.byte	0x7
	.byte	0x25
	.long	0x46e
	.byte	0
	.uleb128 0x8
	.long	.LASF77
	.byte	0x7
	.byte	0x27
	.long	0x62
	.byte	0x8
	.uleb128 0x8
	.long	.LASF78
	.byte	0x7
	.byte	0x28
	.long	0x62
	.byte	0xc
	.uleb128 0x8
	.long	.LASF79
	.byte	0x7
	.byte	0x29
	.long	0x62
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x42f
	.uleb128 0x14
	.string	"GKI"
	.byte	0x7
	.byte	0x2a
	.long	0x435
	.uleb128 0x15
	.byte	0x8
	.byte	0x8
	.byte	0x25
	.long	0x49e
	.uleb128 0x16
	.string	"i32"
	.byte	0x8
	.byte	0x26
	.long	0x31b
	.uleb128 0x16
	.string	"i64"
	.byte	0x8
	.byte	0x27
	.long	0x326
	.byte	0
	.uleb128 0x7
	.long	.LASF80
	.byte	0x10
	.byte	0x8
	.byte	0x23
	.long	0x4c3
	.uleb128 0x8
	.long	.LASF81
	.byte	0x8
	.byte	0x24
	.long	0x95
	.byte	0
	.uleb128 0x10
	.string	"off"
	.byte	0x8
	.byte	0x28
	.long	0x47f
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.long	.LASF82
	.byte	0x8
	.byte	0x2a
	.long	0x49e
	.uleb128 0x7
	.long	.LASF83
	.byte	0x90
	.byte	0x8
	.byte	0x31
	.long	0x5d6
	.uleb128 0x10
	.string	"fp"
	.byte	0x8
	.byte	0x32
	.long	0x5d6
	.byte	0
	.uleb128 0x8
	.long	.LASF67
	.byte	0x8
	.byte	0x33
	.long	0x31b
	.byte	0x8
	.uleb128 0x8
	.long	.LASF84
	.byte	0x8
	.byte	0x34
	.long	0x310
	.byte	0xc
	.uleb128 0x8
	.long	.LASF85
	.byte	0x8
	.byte	0x35
	.long	0x31b
	.byte	0x10
	.uleb128 0x8
	.long	.LASF86
	.byte	0x8
	.byte	0x36
	.long	0x31b
	.byte	0x14
	.uleb128 0x8
	.long	.LASF87
	.byte	0x8
	.byte	0x37
	.long	0x31b
	.byte	0x18
	.uleb128 0x8
	.long	.LASF88
	.byte	0x8
	.byte	0x38
	.long	0x31b
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF89
	.byte	0x8
	.byte	0x39
	.long	0x31b
	.byte	0x20
	.uleb128 0x8
	.long	.LASF90
	.byte	0x8
	.byte	0x3a
	.long	0x31b
	.byte	0x24
	.uleb128 0x8
	.long	.LASF91
	.byte	0x8
	.byte	0x3b
	.long	0x31b
	.byte	0x28
	.uleb128 0x8
	.long	.LASF92
	.byte	0x8
	.byte	0x3c
	.long	0x31b
	.byte	0x2c
	.uleb128 0x8
	.long	.LASF93
	.byte	0x8
	.byte	0x3d
	.long	0x4c3
	.byte	0x30
	.uleb128 0x8
	.long	.LASF94
	.byte	0x8
	.byte	0x3e
	.long	0x4c3
	.byte	0x40
	.uleb128 0x8
	.long	.LASF95
	.byte	0x8
	.byte	0x3f
	.long	0x4c3
	.byte	0x50
	.uleb128 0x8
	.long	.LASF96
	.byte	0x8
	.byte	0x41
	.long	0x95
	.byte	0x60
	.uleb128 0x8
	.long	.LASF97
	.byte	0x8
	.byte	0x42
	.long	0x95
	.byte	0x61
	.uleb128 0x8
	.long	.LASF98
	.byte	0x8
	.byte	0x46
	.long	0x5dc
	.byte	0x68
	.uleb128 0x8
	.long	.LASF99
	.byte	0x8
	.byte	0x47
	.long	0x5e2
	.byte	0x70
	.uleb128 0x8
	.long	.LASF100
	.byte	0x8
	.byte	0x48
	.long	0x5e2
	.byte	0x78
	.uleb128 0x10
	.string	"bpl"
	.byte	0x8
	.byte	0x49
	.long	0x5e2
	.byte	0x80
	.uleb128 0x10
	.string	"rpl"
	.byte	0x8
	.byte	0x4a
	.long	0x5e2
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
	.long	0x31b
	.uleb128 0x2
	.long	.LASF101
	.byte	0x8
	.byte	0x4c
	.long	0x4ce
	.uleb128 0x6
	.byte	0x8
	.long	0x302
	.uleb128 0xf
	.long	.LASF102
	.value	0x168
	.byte	0x9
	.byte	0x70
	.long	0x835
	.uleb128 0x8
	.long	.LASF103
	.byte	0x9
	.byte	0x73
	.long	0x5dc
	.byte	0
	.uleb128 0x8
	.long	.LASF104
	.byte	0x9
	.byte	0x74
	.long	0x5dc
	.byte	0x8
	.uleb128 0x10
	.string	"wgt"
	.byte	0x9
	.byte	0x75
	.long	0x5f3
	.byte	0x10
	.uleb128 0x8
	.long	.LASF105
	.byte	0x9
	.byte	0x76
	.long	0x62
	.byte	0x18
	.uleb128 0x8
	.long	.LASF106
	.byte	0x9
	.byte	0x77
	.long	0x62
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF67
	.byte	0x9
	.byte	0x7b
	.long	0x62
	.byte	0x20
	.uleb128 0x8
	.long	.LASF73
	.byte	0x9
	.byte	0x7c
	.long	0x62
	.byte	0x24
	.uleb128 0x8
	.long	.LASF68
	.byte	0x9
	.byte	0x7d
	.long	0x8f
	.byte	0x28
	.uleb128 0x8
	.long	.LASF69
	.byte	0x9
	.byte	0x7e
	.long	0x8f
	.byte	0x30
	.uleb128 0x10
	.string	"acc"
	.byte	0x9
	.byte	0x7f
	.long	0x8f
	.byte	0x38
	.uleb128 0x10
	.string	"au"
	.byte	0x9
	.byte	0x80
	.long	0x8f
	.byte	0x40
	.uleb128 0x8
	.long	.LASF107
	.byte	0x9
	.byte	0x81
	.long	0x8f
	.byte	0x48
	.uleb128 0x8
	.long	.LASF108
	.byte	0x9
	.byte	0x82
	.long	0x8f
	.byte	0x50
	.uleb128 0x10
	.string	"rf"
	.byte	0x9
	.byte	0x83
	.long	0x8f
	.byte	0x58
	.uleb128 0x8
	.long	.LASF109
	.byte	0x9
	.byte	0x84
	.long	0x5dc
	.byte	0x60
	.uleb128 0x8
	.long	.LASF110
	.byte	0x9
	.byte	0x85
	.long	0x5dc
	.byte	0x68
	.uleb128 0x10
	.string	"ss"
	.byte	0x9
	.byte	0x86
	.long	0x5dc
	.byte	0x70
	.uleb128 0x10
	.string	"sa"
	.byte	0x9
	.byte	0x87
	.long	0x5dc
	.byte	0x78
	.uleb128 0x8
	.long	.LASF111
	.byte	0x9
	.byte	0x88
	.long	0x835
	.byte	0x80
	.uleb128 0x8
	.long	.LASF112
	.byte	0x9
	.byte	0x89
	.long	0x845
	.byte	0x98
	.uleb128 0x8
	.long	.LASF113
	.byte	0x9
	.byte	0x90
	.long	0x5dc
	.byte	0xb0
	.uleb128 0x8
	.long	.LASF114
	.byte	0x9
	.byte	0x91
	.long	0x62
	.byte	0xb8
	.uleb128 0x8
	.long	.LASF115
	.byte	0x9
	.byte	0x92
	.long	0x62
	.byte	0xbc
	.uleb128 0x8
	.long	.LASF116
	.byte	0x9
	.byte	0x94
	.long	0x5dc
	.byte	0xc0
	.uleb128 0x10
	.string	"gf"
	.byte	0x9
	.byte	0x95
	.long	0x5dc
	.byte	0xc8
	.uleb128 0x10
	.string	"ngf"
	.byte	0x9
	.byte	0x96
	.long	0x62
	.byte	0xd0
	.uleb128 0x8
	.long	.LASF117
	.byte	0x9
	.byte	0x97
	.long	0x62
	.byte	0xd4
	.uleb128 0x8
	.long	.LASF118
	.byte	0x9
	.byte	0x99
	.long	0x5dc
	.byte	0xd8
	.uleb128 0x10
	.string	"gs"
	.byte	0x9
	.byte	0x9a
	.long	0x855
	.byte	0xe0
	.uleb128 0x8
	.long	.LASF119
	.byte	0x9
	.byte	0x9b
	.long	0x85b
	.byte	0xe8
	.uleb128 0x10
	.string	"ngs"
	.byte	0x9
	.byte	0x9c
	.long	0x62
	.byte	0xf0
	.uleb128 0x8
	.long	.LASF120
	.byte	0x9
	.byte	0x9e
	.long	0x5dc
	.byte	0xf8
	.uleb128 0x11
	.string	"gc"
	.byte	0x9
	.byte	0x9f
	.long	0x5dc
	.value	0x100
	.uleb128 0x12
	.long	.LASF121
	.byte	0x9
	.byte	0xa0
	.long	0x85b
	.value	0x108
	.uleb128 0x11
	.string	"ngc"
	.byte	0x9
	.byte	0xa1
	.long	0x62
	.value	0x110
	.uleb128 0x12
	.long	.LASF122
	.byte	0x9
	.byte	0xa3
	.long	0x5dc
	.value	0x118
	.uleb128 0x11
	.string	"gr"
	.byte	0x9
	.byte	0xa4
	.long	0x855
	.value	0x120
	.uleb128 0x12
	.long	.LASF123
	.byte	0x9
	.byte	0xa5
	.long	0x85b
	.value	0x128
	.uleb128 0x11
	.string	"ngr"
	.byte	0x9
	.byte	0xa6
	.long	0x62
	.value	0x130
	.uleb128 0x12
	.long	.LASF124
	.byte	0x9
	.byte	0xaa
	.long	0x85b
	.value	0x138
	.uleb128 0x12
	.long	.LASF125
	.byte	0x9
	.byte	0xab
	.long	0x62
	.value	0x140
	.uleb128 0x12
	.long	.LASF126
	.byte	0x9
	.byte	0xac
	.long	0x62
	.value	0x144
	.uleb128 0x12
	.long	.LASF127
	.byte	0x9
	.byte	0xad
	.long	0x292
	.value	0x148
	.uleb128 0x12
	.long	.LASF128
	.byte	0x9
	.byte	0xae
	.long	0x292
	.value	0x150
	.uleb128 0x12
	.long	.LASF129
	.byte	0x9
	.byte	0xaf
	.long	0x292
	.value	0x158
	.uleb128 0x12
	.long	.LASF130
	.byte	0x9
	.byte	0xb0
	.long	0x62
	.value	0x160
	.byte	0
	.uleb128 0xb
	.long	0x302
	.long	0x845
	.uleb128 0xc
	.long	0x86
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.long	0x62
	.long	0x855
	.uleb128 0xc
	.long	0x86
	.byte	0x5
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5dc
	.uleb128 0x6
	.byte	0x8
	.long	0x474
	.uleb128 0x14
	.string	"MSA"
	.byte	0x9
	.byte	0xb1
	.long	0x5f9
	.uleb128 0x7
	.long	.LASF131
	.byte	0x40
	.byte	0x9
	.byte	0xba
	.long	0x8e3
	.uleb128 0x10
	.string	"f"
	.byte	0x9
	.byte	0xbb
	.long	0x5d6
	.byte	0
	.uleb128 0x8
	.long	.LASF132
	.byte	0x9
	.byte	0xbc
	.long	0x8f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF133
	.byte	0x9
	.byte	0xbd
	.long	0x62
	.byte	0x10
	.uleb128 0x10
	.string	"buf"
	.byte	0x9
	.byte	0xbf
	.long	0x8f
	.byte	0x18
	.uleb128 0x8
	.long	.LASF134
	.byte	0x9
	.byte	0xc0
	.long	0x62
	.byte	0x20
	.uleb128 0x10
	.string	"ssi"
	.byte	0x9
	.byte	0xc2
	.long	0x8e3
	.byte	0x28
	.uleb128 0x8
	.long	.LASF135
	.byte	0x9
	.byte	0xc4
	.long	0x62
	.byte	0x30
	.uleb128 0x8
	.long	.LASF136
	.byte	0x9
	.byte	0xc5
	.long	0x62
	.byte	0x34
	.uleb128 0x8
	.long	.LASF137
	.byte	0x9
	.byte	0xc6
	.long	0x62
	.byte	0x38
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5e8
	.uleb128 0x2
	.long	.LASF138
	.byte	0x9
	.byte	0xc7
	.long	0x86c
	.uleb128 0x7
	.long	.LASF139
	.byte	0xb0
	.byte	0x6
	.byte	0xc5
	.long	0xa2a
	.uleb128 0x10
	.string	"f"
	.byte	0x6
	.byte	0xc6
	.long	0x5d6
	.byte	0
	.uleb128 0x8
	.long	.LASF132
	.byte	0x6
	.byte	0xc7
	.long	0x8f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF133
	.byte	0x6
	.byte	0xc8
	.long	0x62
	.byte	0x10
	.uleb128 0x10
	.string	"buf"
	.byte	0x6
	.byte	0xca
	.long	0x8f
	.byte	0x18
	.uleb128 0x8
	.long	.LASF134
	.byte	0x6
	.byte	0xcb
	.long	0x62
	.byte	0x20
	.uleb128 0x8
	.long	.LASF140
	.byte	0x6
	.byte	0xcd
	.long	0x62
	.byte	0x24
	.uleb128 0x8
	.long	.LASF141
	.byte	0x6
	.byte	0xce
	.long	0x4c3
	.byte	0x28
	.uleb128 0x8
	.long	.LASF142
	.byte	0x6
	.byte	0xcf
	.long	0x4c3
	.byte	0x38
	.uleb128 0x8
	.long	.LASF143
	.byte	0x6
	.byte	0xd0
	.long	0x4c3
	.byte	0x48
	.uleb128 0x10
	.string	"rpl"
	.byte	0x6
	.byte	0xd2
	.long	0x62
	.byte	0x58
	.uleb128 0x8
	.long	.LASF144
	.byte	0x6
	.byte	0xd3
	.long	0x62
	.byte	0x5c
	.uleb128 0x8
	.long	.LASF145
	.byte	0x6
	.byte	0xd4
	.long	0x62
	.byte	0x60
	.uleb128 0x10
	.string	"bpl"
	.byte	0x6
	.byte	0xd5
	.long	0x62
	.byte	0x64
	.uleb128 0x8
	.long	.LASF146
	.byte	0x6
	.byte	0xd6
	.long	0x62
	.byte	0x68
	.uleb128 0x8
	.long	.LASF147
	.byte	0x6
	.byte	0xd7
	.long	0x62
	.byte	0x6c
	.uleb128 0x10
	.string	"seq"
	.byte	0x6
	.byte	0xd9
	.long	0x8f
	.byte	0x70
	.uleb128 0x8
	.long	.LASF148
	.byte	0x6
	.byte	0xda
	.long	0xa2a
	.byte	0x78
	.uleb128 0x10
	.string	"sp"
	.byte	0x6
	.byte	0xdb
	.long	0x8f
	.byte	0x80
	.uleb128 0x8
	.long	.LASF149
	.byte	0x6
	.byte	0xdc
	.long	0x62
	.byte	0x88
	.uleb128 0x8
	.long	.LASF150
	.byte	0x6
	.byte	0xdd
	.long	0x62
	.byte	0x8c
	.uleb128 0x8
	.long	.LASF137
	.byte	0x6
	.byte	0xdf
	.long	0x62
	.byte	0x90
	.uleb128 0x8
	.long	.LASF135
	.byte	0x6
	.byte	0xe0
	.long	0x62
	.byte	0x94
	.uleb128 0x8
	.long	.LASF136
	.byte	0x6
	.byte	0xe1
	.long	0x62
	.byte	0x98
	.uleb128 0x10
	.string	"msa"
	.byte	0x6
	.byte	0xed
	.long	0xa30
	.byte	0xa0
	.uleb128 0x10
	.string	"afp"
	.byte	0x6
	.byte	0xee
	.long	0xa36
	.byte	0xa8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x3f3
	.uleb128 0x6
	.byte	0x8
	.long	0x861
	.uleb128 0x6
	.byte	0x8
	.long	0x8e9
	.uleb128 0x2
	.long	.LASF151
	.byte	0x6
	.byte	0xf0
	.long	0x8f4
	.uleb128 0xb
	.long	0x8f
	.long	0xa57
	.uleb128 0xc
	.long	0x86
	.byte	0x9
	.byte	0
	.uleb128 0x17
	.long	.LASF152
	.byte	0x1
	.byte	0x57
	.long	0xaa3
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0xaa3
	.uleb128 0x18
	.long	.LASF98
	.byte	0x1
	.byte	0x57
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.long	.LASF137
	.byte	0x1
	.byte	0x57
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x19
	.string	"env"
	.byte	0x1
	.byte	0x57
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xa3c
	.uleb128 0x17
	.long	.LASF153
	.byte	0x1
	.byte	0x5c
	.long	0xaa3
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0xb03
	.uleb128 0x18
	.long	.LASF98
	.byte	0x1
	.byte	0x5c
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.long	.LASF137
	.byte	0x1
	.byte	0x5c
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x19
	.string	"env"
	.byte	0x1
	.byte	0x5c
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.long	.LASF140
	.byte	0x1
	.byte	0x5c
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1a
	.long	.LASF179
	.byte	0x1
	.byte	0x61
	.long	0xaa3
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0xb6b
	.uleb128 0x18
	.long	.LASF98
	.byte	0x1
	.byte	0x61
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.long	.LASF137
	.byte	0x1
	.byte	0x61
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x19
	.string	"env"
	.byte	0x1
	.byte	0x61
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x18
	.long	.LASF140
	.byte	0x1
	.byte	0x61
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.long	.LASF166
	.byte	0x1
	.byte	0x63
	.long	0xaa3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1c
	.long	.LASF156
	.byte	0x1
	.byte	0xdd
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0xba5
	.uleb128 0x18
	.long	.LASF154
	.byte	0x1
	.byte	0xdd
	.long	0xaa3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.long	.LASF155
	.byte	0x1
	.byte	0xdd
	.long	0xba5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x4c3
	.uleb128 0x1c
	.long	.LASF157
	.byte	0x1
	.byte	0xf2
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0xbd7
	.uleb128 0x18
	.long	.LASF154
	.byte	0x1
	.byte	0xf2
	.long	0xaa3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1d
	.long	.LASF158
	.byte	0x1
	.value	0x10e
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0xc21
	.uleb128 0x1e
	.string	"V"
	.byte	0x1
	.value	0x10e
	.long	0xaa3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.long	.LASF159
	.byte	0x1
	.value	0x10e
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1f
	.long	.LASF160
	.byte	0x1
	.value	0x10e
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x20
	.long	.LASF161
	.byte	0x1
	.value	0x11c
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0xc4f
	.uleb128 0x1f
	.long	.LASF154
	.byte	0x1
	.value	0x11c
	.long	0xaa3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x21
	.long	.LASF172
	.byte	0x1
	.value	0x13e
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0xc7b
	.uleb128 0x1e
	.string	"V"
	.byte	0x1
	.value	0x13e
	.long	0xaa3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x20
	.long	.LASF162
	.byte	0x1
	.value	0x14a
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0xcb8
	.uleb128 0x1e
	.string	"seq"
	.byte	0x1
	.value	0x14a
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.long	.LASF148
	.byte	0x1
	.value	0x14a
	.long	0xa2a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x22
	.long	.LASF163
	.byte	0x1
	.value	0x152
	.long	0x62
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0xd26
	.uleb128 0x1f
	.long	.LASF148
	.byte	0x1
	.value	0x152
	.long	0xa2a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1f
	.long	.LASF164
	.byte	0x1
	.value	0x152
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1f
	.long	.LASF165
	.byte	0x1
	.value	0x152
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x23
	.string	"len"
	.byte	0x1
	.value	0x154
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x23
	.string	"pos"
	.byte	0x1
	.value	0x155
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x20
	.long	.LASF167
	.byte	0x1
	.value	0x1a7
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0xd63
	.uleb128 0x1e
	.string	"sq1"
	.byte	0x1
	.value	0x1a7
	.long	0xa2a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1e
	.string	"sq2"
	.byte	0x1
	.value	0x1a7
	.long	0xa2a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x1d
	.long	.LASF168
	.byte	0x1
	.value	0x1bd
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0xd91
	.uleb128 0x1e
	.string	"seq"
	.byte	0x1
	.value	0x1bd
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1d
	.long	.LASF169
	.byte	0x1
	.value	0x1cc
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0xdbf
	.uleb128 0x1e
	.string	"seq"
	.byte	0x1
	.value	0x1cc
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x20
	.long	.LASF170
	.byte	0x1
	.value	0x1e6
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0xdfc
	.uleb128 0x1e
	.string	"seq"
	.byte	0x1
	.value	0x1e6
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.long	.LASF171
	.byte	0x1
	.value	0x1e6
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x21
	.long	.LASF173
	.byte	0x1
	.value	0x1fd
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0xe6f
	.uleb128 0x1e
	.string	"s"
	.byte	0x1
	.value	0x1fd
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1e
	.string	"V"
	.byte	0x1
	.value	0x1fd
	.long	0xe6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x23
	.string	"s0"
	.byte	0x1
	.value	0x1ff
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.string	"sq"
	.byte	0x1
	.value	0x200
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x23
	.string	"rpl"
	.byte	0x1
	.value	0x201
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.string	"bpl"
	.byte	0x1
	.value	0x202
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x8f4
	.uleb128 0x21
	.long	.LASF174
	.byte	0x1
	.value	0x252
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0xedd
	.uleb128 0x1f
	.long	.LASF175
	.byte	0x1
	.value	0x252
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1f
	.long	.LASF176
	.byte	0x1
	.value	0x252
	.long	0xef1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.string	"V"
	.byte	0x1
	.value	0x252
	.long	0xe6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x24
	.long	.LASF177
	.byte	0x1
	.value	0x254
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.long	.LASF178
	.byte	0x1
	.value	0x255
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x25
	.long	0x62
	.long	0xef1
	.uleb128 0x26
	.long	0x8f
	.uleb128 0x26
	.long	0x292
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xedd
	.uleb128 0x27
	.long	.LASF180
	.byte	0x1
	.value	0x26d
	.long	0x62
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0xf36
	.uleb128 0x1e
	.string	"s"
	.byte	0x1
	.value	0x26d
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.long	.LASF177
	.byte	0x1
	.value	0x26d
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x21
	.long	.LASF181
	.byte	0x1
	.value	0x278
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0xf71
	.uleb128 0x1e
	.string	"V"
	.byte	0x1
	.value	0x278
	.long	0xe6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.long	.LASF164
	.byte	0x1
	.value	0x27a
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x27
	.long	.LASF182
	.byte	0x1
	.value	0x2a6
	.long	0x62
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0xfb0
	.uleb128 0x1e
	.string	"s"
	.byte	0x1
	.value	0x2a6
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.long	.LASF177
	.byte	0x1
	.value	0x2a6
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x21
	.long	.LASF183
	.byte	0x1
	.value	0x2ad
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0xfea
	.uleb128 0x1e
	.string	"V"
	.byte	0x1
	.value	0x2ad
	.long	0xe6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.string	"nm"
	.byte	0x1
	.value	0x2af
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x27
	.long	.LASF184
	.byte	0x1
	.value	0x2c2
	.long	0x62
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x1029
	.uleb128 0x1e
	.string	"s"
	.byte	0x1
	.value	0x2c2
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.long	.LASF177
	.byte	0x1
	.value	0x2c2
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x21
	.long	.LASF185
	.byte	0x1
	.value	0x2c9
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x1063
	.uleb128 0x1e
	.string	"V"
	.byte	0x1
	.value	0x2c9
	.long	0xe6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.string	"nm"
	.byte	0x1
	.value	0x2cb
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x27
	.long	.LASF186
	.byte	0x1
	.value	0x2e2
	.long	0x62
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x10a2
	.uleb128 0x1e
	.string	"s"
	.byte	0x1
	.value	0x2e2
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.long	.LASF177
	.byte	0x1
	.value	0x2e2
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x21
	.long	.LASF187
	.byte	0x1
	.value	0x2e9
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x10ec
	.uleb128 0x1e
	.string	"V"
	.byte	0x1
	.value	0x2e9
	.long	0xe6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.long	.LASF164
	.byte	0x1
	.value	0x2eb
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.long	.LASF188
	.byte	0x1
	.value	0x2ec
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x28
	.long	.LASF189
	.byte	0x1
	.value	0x32e
	.long	0x62
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x112b
	.uleb128 0x1e
	.string	"s"
	.byte	0x1
	.value	0x32e
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.long	.LASF177
	.byte	0x1
	.value	0x32e
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x21
	.long	.LASF190
	.byte	0x1
	.value	0x335
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x1175
	.uleb128 0x1e
	.string	"V"
	.byte	0x1
	.value	0x335
	.long	0xe6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.long	.LASF191
	.byte	0x1
	.value	0x337
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.long	.LASF192
	.byte	0x1
	.value	0x338
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x28
	.long	.LASF193
	.byte	0x1
	.value	0x35f
	.long	0x62
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x11b4
	.uleb128 0x1e
	.string	"s"
	.byte	0x1
	.value	0x35f
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.long	.LASF177
	.byte	0x1
	.value	0x35f
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x21
	.long	.LASF194
	.byte	0x1
	.value	0x366
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x11ef
	.uleb128 0x1e
	.string	"V"
	.byte	0x1
	.value	0x366
	.long	0xe6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.long	.LASF164
	.byte	0x1
	.value	0x368
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x27
	.long	.LASF195
	.byte	0x1
	.value	0x381
	.long	0x62
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x122e
	.uleb128 0x1e
	.string	"s"
	.byte	0x1
	.value	0x381
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.long	.LASF177
	.byte	0x1
	.value	0x381
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x21
	.long	.LASF196
	.byte	0x1
	.value	0x391
	.quad	.LFB31
	.quad	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0x1269
	.uleb128 0x1e
	.string	"V"
	.byte	0x1
	.value	0x391
	.long	0xe6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.long	.LASF164
	.byte	0x1
	.value	0x393
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x28
	.long	.LASF197
	.byte	0x1
	.value	0x3c7
	.long	0x62
	.quad	.LFB32
	.quad	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0x12a8
	.uleb128 0x1e
	.string	"s"
	.byte	0x1
	.value	0x3c7
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.long	.LASF177
	.byte	0x1
	.value	0x3c7
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x21
	.long	.LASF198
	.byte	0x1
	.value	0x3ce
	.quad	.LFB33
	.quad	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0x12e3
	.uleb128 0x1e
	.string	"V"
	.byte	0x1
	.value	0x3ce
	.long	0xe6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.long	.LASF164
	.byte	0x1
	.value	0x3d0
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x21
	.long	.LASF199
	.byte	0x1
	.value	0x3e1
	.quad	.LFB34
	.quad	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0x133b
	.uleb128 0x1e
	.string	"V"
	.byte	0x1
	.value	0x3e1
	.long	0xe6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.string	"si"
	.byte	0x1
	.value	0x3e3
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.long	.LASF164
	.byte	0x1
	.value	0x3e4
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.long	.LASF178
	.byte	0x1
	.value	0x3e5
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x22
	.long	.LASF200
	.byte	0x1
	.value	0x413
	.long	0x62
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0x13a7
	.uleb128 0x1e
	.string	"V"
	.byte	0x1
	.value	0x413
	.long	0xaa3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1f
	.long	.LASF137
	.byte	0x1
	.value	0x413
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1f
	.long	.LASF201
	.byte	0x1
	.value	0x413
	.long	0x5dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1f
	.long	.LASF148
	.byte	0x1
	.value	0x413
	.long	0xa2a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.long	.LASF202
	.byte	0x1
	.value	0x415
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x22
	.long	.LASF203
	.byte	0x1
	.value	0x48f
	.long	0x62
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.long	0x146e
	.uleb128 0x1e
	.string	"fp"
	.byte	0x1
	.value	0x48f
	.long	0x5d6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x23
	.string	"buf"
	.byte	0x1
	.value	0x491
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.string	"len"
	.byte	0x1
	.value	0x492
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x23
	.string	"fmt"
	.byte	0x1
	.value	0x493
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x24
	.long	.LASF204
	.byte	0x1
	.value	0x494
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x24
	.long	.LASF205
	.byte	0x1
	.value	0x495
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.string	"s"
	.byte	0x1
	.value	0x495
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.string	"s1"
	.byte	0x1
	.value	0x495
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x23
	.string	"s2"
	.byte	0x1
	.value	0x495
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.long	.LASF206
	.byte	0x1
	.value	0x496
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x29
	.long	.LASF255
	.byte	0x1
	.value	0x508
	.quad	.L279
	.byte	0
	.uleb128 0x2a
	.long	.LASF207
	.byte	0x1
	.value	0x518
	.long	0x62
	.quad	.LFB37
	.quad	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0x14e9
	.uleb128 0x1e
	.string	"seq"
	.byte	0x1
	.value	0x518
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1e
	.string	"len"
	.byte	0x1
	.value	0x518
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x24
	.long	.LASF208
	.byte	0x1
	.value	0x51a
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x24
	.long	.LASF209
	.byte	0x1
	.value	0x51b
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x24
	.long	.LASF210
	.byte	0x1
	.value	0x51c
	.long	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.value	0x51d
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x22
	.long	.LASF211
	.byte	0x1
	.value	0x543
	.long	0x62
	.quad	.LFB38
	.quad	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.long	0x1546
	.uleb128 0x1e
	.string	"seq"
	.byte	0x1
	.value	0x543
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1e
	.string	"len"
	.byte	0x1
	.value	0x543
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.value	0x545
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.string	"chk"
	.byte	0x1
	.value	0x546
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x22
	.long	.LASF212
	.byte	0x1
	.value	0x55d
	.long	0x62
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.long	0x15a5
	.uleb128 0x1f
	.long	.LASF213
	.byte	0x1
	.value	0x55d
	.long	0x5dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1f
	.long	.LASF106
	.byte	0x1
	.value	0x55d
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x23
	.string	"chk"
	.byte	0x1
	.value	0x55f
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.string	"idx"
	.byte	0x1
	.value	0x560
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x22
	.long	.LASF214
	.byte	0x1
	.value	0x572
	.long	0x62
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x1647
	.uleb128 0x1e
	.string	"seq"
	.byte	0x1
	.value	0x572
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.string	"saw"
	.byte	0x1
	.value	0x574
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x23
	.string	"c"
	.byte	0x1
	.value	0x575
	.long	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -45
	.uleb128 0x23
	.string	"po"
	.byte	0x1
	.value	0x576
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.string	"nt"
	.byte	0x1
	.value	0x577
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x23
	.string	"nu"
	.byte	0x1
	.value	0x578
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x23
	.string	"na"
	.byte	0x1
	.value	0x579
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x23
	.string	"aa"
	.byte	0x1
	.value	0x57a
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.string	"no"
	.byte	0x1
	.value	0x57b
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x22
	.long	.LASF215
	.byte	0x1
	.value	0x5a9
	.long	0x62
	.quad	.LFB41
	.quad	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.long	0x16d3
	.uleb128 0x1f
	.long	.LASF103
	.byte	0x1
	.value	0x5a9
	.long	0x5dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1f
	.long	.LASF106
	.byte	0x1
	.value	0x5a9
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x23
	.string	"idx"
	.byte	0x1
	.value	0x5ab
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x24
	.long	.LASF216
	.byte	0x1
	.value	0x5ac
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.long	.LASF217
	.byte	0x1
	.value	0x5ad
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x24
	.long	.LASF218
	.byte	0x1
	.value	0x5ae
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.long	.LASF219
	.byte	0x1
	.value	0x5af
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x20
	.long	.LASF220
	.byte	0x1
	.value	0x5d7
	.quad	.LFB42
	.quad	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.long	0x1761
	.uleb128 0x1e
	.string	"fp"
	.byte	0x1
	.value	0x5d7
	.long	0x5d6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x1e
	.string	"seq"
	.byte	0x1
	.value	0x5d7
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x1f
	.long	.LASF68
	.byte	0x1
	.value	0x5d7
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x1f
	.long	.LASF69
	.byte	0x1
	.value	0x5d7
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x23
	.string	"buf"
	.byte	0x1
	.value	0x5d9
	.long	0x1761
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x23
	.string	"len"
	.byte	0x1
	.value	0x5da
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x23
	.string	"pos"
	.byte	0x1
	.value	0x5db
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.byte	0
	.uleb128 0xb
	.long	0x95
	.long	0x1771
	.uleb128 0xc
	.long	0x86
	.byte	0x3c
	.byte	0
	.uleb128 0x22
	.long	.LASF221
	.byte	0x1
	.value	0x5e8
	.long	0x62
	.quad	.LFB43
	.quad	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.long	0x18da
	.uleb128 0x1f
	.long	.LASF222
	.byte	0x1
	.value	0x5e8
	.long	0x5d6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x1f
	.long	.LASF223
	.byte	0x1
	.value	0x5e8
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -348
	.uleb128 0x1e
	.string	"seq"
	.byte	0x1
	.value	0x5e8
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -360
	.uleb128 0x1f
	.long	.LASF148
	.byte	0x1
	.value	0x5e8
	.long	0xa2a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -368
	.uleb128 0x24
	.long	.LASF224
	.byte	0x1
	.value	0x5ea
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x24
	.long	.LASF225
	.byte	0x1
	.value	0x5eb
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -324
	.uleb128 0x24
	.long	.LASF226
	.byte	0x1
	.value	0x5eb
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x24
	.long	.LASF227
	.byte	0x1
	.value	0x5eb
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -316
	.uleb128 0x23
	.string	"tab"
	.byte	0x1
	.value	0x5eb
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.value	0x5ec
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -308
	.uleb128 0x23
	.string	"j"
	.byte	0x1
	.value	0x5ec
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x23
	.string	"l"
	.byte	0x1
	.value	0x5ec
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -300
	.uleb128 0x23
	.string	"l1"
	.byte	0x1
	.value	0x5ec
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x24
	.long	.LASF228
	.byte	0x1
	.value	0x5ec
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -292
	.uleb128 0x24
	.long	.LASF229
	.byte	0x1
	.value	0x5ed
	.long	0x18da
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x23
	.string	"s"
	.byte	0x1
	.value	0x5ee
	.long	0x18ea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x23
	.string	"ss"
	.byte	0x1
	.value	0x5ef
	.long	0x18ea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x24
	.long	.LASF230
	.byte	0x1
	.value	0x5f0
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x24
	.long	.LASF149
	.byte	0x1
	.value	0x5f1
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -276
	.uleb128 0x24
	.long	.LASF231
	.byte	0x1
	.value	0x5f2
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x24
	.long	.LASF232
	.byte	0x1
	.value	0x5f3
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -284
	.byte	0
	.uleb128 0xb
	.long	0x95
	.long	0x18ea
	.uleb128 0xc
	.long	0x86
	.byte	0x9
	.byte	0
	.uleb128 0xb
	.long	0x95
	.long	0x18fa
	.uleb128 0xc
	.long	0x86
	.byte	0x63
	.byte	0
	.uleb128 0x22
	.long	.LASF233
	.byte	0x1
	.value	0x6b5
	.long	0x62
	.quad	.LFB44
	.quad	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.long	0x19b6
	.uleb128 0x1f
	.long	.LASF234
	.byte	0x1
	.value	0x6b5
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1f
	.long	.LASF235
	.byte	0x1
	.value	0x6b6
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1f
	.long	.LASF236
	.byte	0x1
	.value	0x6b7
	.long	0x855
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1f
	.long	.LASF237
	.byte	0x1
	.value	0x6b8
	.long	0x19b6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1f
	.long	.LASF238
	.byte	0x1
	.value	0x6b9
	.long	0x292
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x24
	.long	.LASF148
	.byte	0x1
	.value	0x6bb
	.long	0xa2a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x24
	.long	.LASF166
	.byte	0x1
	.value	0x6bc
	.long	0xaa3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.long	.LASF239
	.byte	0x1
	.value	0x6bd
	.long	0x5dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.long	.LASF240
	.byte	0x1
	.value	0x6be
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.string	"num"
	.byte	0x1
	.value	0x6bf
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xa2a
	.uleb128 0x22
	.long	.LASF241
	.byte	0x1
	.value	0x6e9
	.long	0x62
	.quad	.LFB45
	.quad	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a09
	.uleb128 0x1e
	.string	"s"
	.byte	0x1
	.value	0x6e9
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.string	"s2"
	.byte	0x1
	.value	0x6eb
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.long	.LASF242
	.byte	0x1
	.value	0x6ec
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x22
	.long	.LASF243
	.byte	0x1
	.value	0x70a
	.long	0x8f
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a3b
	.uleb128 0x1f
	.long	.LASF242
	.byte	0x1
	.value	0x70a
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x22
	.long	.LASF244
	.byte	0x1
	.value	0x73c
	.long	0xa2a
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a8b
	.uleb128 0x1e
	.string	"msa"
	.byte	0x1
	.value	0x73c
	.long	0xa30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.string	"idx"
	.byte	0x1
	.value	0x73e
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x24
	.long	.LASF148
	.byte	0x1
	.value	0x73f
	.long	0xa2a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x1b
	.long	.LASF245
	.byte	0x1
	.byte	0x44
	.long	0x8f
	.uleb128 0x9
	.byte	0x3
	.quad	aminos
	.uleb128 0x1b
	.long	.LASF246
	.byte	0x1
	.byte	0x45
	.long	0x8f
	.uleb128 0x9
	.byte	0x3
	.quad	primenuc
	.uleb128 0x1b
	.long	.LASF247
	.byte	0x1
	.byte	0x46
	.long	0x8f
	.uleb128 0x9
	.byte	0x3
	.quad	protonly
	.uleb128 0x2b
	.long	.LASF248
	.byte	0x4
	.byte	0xa8
	.long	0x266
	.uleb128 0x2b
	.long	.LASF249
	.byte	0x6
	.byte	0x3b
	.long	0x62
	.uleb128 0x2c
	.long	.LASF250
	.byte	0x6
	.value	0x16b
	.long	0xa47
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
	.uleb128 0x10
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
	.uleb128 0x5
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
.LASF232:
	.string	"dostruc"
.LASF7:
	.string	"size_t"
.LASF188:
	.string	"in_definition"
.LASF10:
	.string	"sizetype"
.LASF224:
	.string	"numline"
.LASF70:
	.string	"start"
.LASF206:
	.string	"has_junk"
.LASF56:
	.string	"_ISgraph"
.LASF24:
	.string	"_IO_save_end"
.LASF96:
	.string	"imode"
.LASF17:
	.string	"_IO_write_base"
.LASF182:
	.string	"endIG"
.LASF133:
	.string	"linenumber"
.LASF145:
	.string	"maxrpl"
.LASF33:
	.string	"_lock"
.LASF234:
	.string	"seqfile"
.LASF73:
	.string	"type"
.LASF162:
	.string	"FreeSequence"
.LASF139:
	.string	"ReadSeqVars"
.LASF84:
	.string	"nfiles"
.LASF22:
	.string	"_IO_save_base"
.LASF174:
	.string	"readLoop"
.LASF164:
	.string	"sptr"
.LASF146:
	.string	"lastbpl"
.LASF237:
	.string	"ret_sqinfo"
.LASF26:
	.string	"_chain"
.LASF119:
	.string	"gs_idx"
.LASF30:
	.string	"_cur_column"
.LASF171:
	.string	"is_aseq"
.LASF245:
	.string	"aminos"
.LASF205:
	.string	"bufcpy"
.LASF75:
	.string	"gki_elem"
.LASF253:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/456.hmmer/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF130:
	.string	"lastidx"
.LASF177:
	.string	"addend"
.LASF6:
	.string	"long int"
.LASF170:
	.string	"ToIUPAC"
.LASF86:
	.string	"nsecondary"
.LASF153:
	.string	"SeqfileOpenForIndexing"
.LASF43:
	.string	"_IO_marker"
.LASF106:
	.string	"nseq"
.LASF228:
	.string	"ibase"
.LASF55:
	.string	"_ISprint"
.LASF105:
	.string	"alen"
.LASF167:
	.string	"SeqinfoCopy"
.LASF4:
	.string	"signed char"
.LASF42:
	.string	"_IO_FILE"
.LASF231:
	.string	"which_case"
.LASF98:
	.string	"filename"
.LASF196:
	.string	"readEMBL"
.LASF118:
	.string	"gs_tag"
.LASF173:
	.string	"addseq"
.LASF249:
	.string	"squid_errno"
.LASF148:
	.string	"sqinfo"
.LASF1:
	.string	"unsigned char"
.LASF151:
	.string	"SQFILE"
.LASF180:
	.string	"endPIR"
.LASF116:
	.string	"gf_tag"
.LASF193:
	.string	"endPearson"
.LASF197:
	.string	"endZuker"
.LASF218:
	.string	"namino"
.LASF216:
	.string	"nrna"
.LASF76:
	.string	"table"
.LASF214:
	.string	"Seqtype"
.LASF72:
	.string	"olen"
.LASF123:
	.string	"gr_idx"
.LASF11:
	.string	"char"
.LASF203:
	.string	"SeqfileFormat"
.LASF136:
	.string	"do_stdin"
.LASF82:
	.string	"SSIOFFSET"
.LASF254:
	.string	"_IO_lock_t"
.LASF127:
	.string	"sqlen"
.LASF117:
	.string	"alloc_ngf"
.LASF112:
	.string	"cutoff_is_set"
.LASF223:
	.string	"outform"
.LASF225:
	.string	"lines"
.LASF128:
	.string	"sslen"
.LASF181:
	.string	"readPIR"
.LASF67:
	.string	"flags"
.LASF110:
	.string	"sqdesc"
.LASF14:
	.string	"_IO_read_ptr"
.LASF46:
	.string	"_pos"
.LASF248:
	.string	"stdin"
.LASF101:
	.string	"SSIFILE"
.LASF144:
	.string	"lastrpl"
.LASF238:
	.string	"ret_num"
.LASF25:
	.string	"_markers"
.LASF59:
	.string	"_ISpunct"
.LASF104:
	.string	"sqname"
.LASF199:
	.string	"readUWGCG"
.LASF85:
	.string	"nprimary"
.LASF212:
	.string	"GCGMultchecksum"
.LASF109:
	.string	"sqacc"
.LASF244:
	.string	"MSAToSqinfo"
.LASF226:
	.string	"spacer"
.LASF215:
	.string	"GuessAlignmentSeqtype"
.LASF122:
	.string	"gr_tag"
.LASF158:
	.string	"SeqfileLineParameters"
.LASF34:
	.string	"_offset"
.LASF124:
	.string	"index"
.LASF156:
	.string	"SeqfilePosition"
.LASF161:
	.string	"SeqfileClose"
.LASF0:
	.string	"long unsigned int"
.LASF137:
	.string	"format"
.LASF28:
	.string	"_flags2"
.LASF77:
	.string	"primelevel"
.LASF16:
	.string	"_IO_read_base"
.LASF78:
	.string	"nhash"
.LASF217:
	.string	"ndna"
.LASF239:
	.string	"rseqs"
.LASF183:
	.string	"readIG"
.LASF41:
	.string	"_unused2"
.LASF219:
	.string	"nother"
.LASF53:
	.string	"_ISxdigit"
.LASF29:
	.string	"_old_offset"
.LASF178:
	.string	"done"
.LASF131:
	.string	"msafile_struct"
.LASF172:
	.string	"SeqfileGetLine"
.LASF63:
	.string	"sqd_uint16"
.LASF129:
	.string	"salen"
.LASF47:
	.string	"long long int"
.LASF92:
	.string	"srecsize"
.LASF198:
	.string	"readZuker"
.LASF66:
	.string	"seqinfo_s"
.LASF227:
	.string	"width"
.LASF132:
	.string	"fname"
.LASF49:
	.string	"_ISupper"
.LASF113:
	.string	"comment"
.LASF62:
	.string	"double"
.LASF58:
	.string	"_IScntrl"
.LASF19:
	.string	"_IO_write_end"
.LASF100:
	.string	"fileflags"
.LASF61:
	.string	"float"
.LASF235:
	.string	"fformat"
.LASF64:
	.string	"sqd_uint32"
.LASF71:
	.string	"stop"
.LASF107:
	.string	"ss_cons"
.LASF115:
	.string	"alloc_ncomment"
.LASF94:
	.string	"poffset"
.LASF20:
	.string	"_IO_buf_base"
.LASF3:
	.string	"unsigned int"
.LASF125:
	.string	"nseqalloc"
.LASF74:
	.string	"SQINFO"
.LASF134:
	.string	"buflen"
.LASF222:
	.string	"outf"
.LASF240:
	.string	"numalloced"
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
.LASF90:
	.string	"frecsize"
.LASF252:
	.string	"sqio.c"
.LASF45:
	.string	"_sbuf"
.LASF80:
	.string	"ssioffset_s"
.LASF165:
	.string	"flag"
.LASF91:
	.string	"precsize"
.LASF121:
	.string	"gc_idx"
.LASF213:
	.string	"seqs"
.LASF200:
	.string	"ReadSeq"
.LASF246:
	.string	"primenuc"
.LASF114:
	.string	"ncomment"
.LASF13:
	.string	"_flags"
.LASF155:
	.string	"offset"
.LASF103:
	.string	"aseq"
.LASF89:
	.string	"slen"
.LASF211:
	.string	"GCGchecksum"
.LASF40:
	.string	"_mode"
.LASF251:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF247:
	.string	"protonly"
.LASF210:
	.string	"twobit"
.LASF194:
	.string	"readPearson"
.LASF65:
	.string	"sqd_uint64"
.LASF157:
	.string	"SeqfileRewind"
.LASF154:
	.string	"sqfp"
.LASF12:
	.string	"FILE"
.LASF230:
	.string	"checksum"
.LASF221:
	.string	"WriteSeq"
.LASF51:
	.string	"_ISalpha"
.LASF191:
	.string	"binary"
.LASF204:
	.string	"ndataline"
.LASF149:
	.string	"seqlen"
.LASF48:
	.string	"long long unsigned int"
.LASF192:
	.string	"blen"
.LASF57:
	.string	"_ISblank"
.LASF8:
	.string	"__off_t"
.LASF120:
	.string	"gc_tag"
.LASF95:
	.string	"soffset"
.LASF60:
	.string	"_ISalnum"
.LASF140:
	.string	"ssimode"
.LASF229:
	.string	"endstr"
.LASF87:
	.string	"flen"
.LASF54:
	.string	"_ISspace"
.LASF184:
	.string	"endStrider"
.LASF166:
	.string	"dbfp"
.LASF93:
	.string	"foffset"
.LASF102:
	.string	"msa_struct"
.LASF169:
	.string	"ToRNA"
.LASF209:
	.string	"spos"
.LASF23:
	.string	"_IO_backup_base"
.LASF32:
	.string	"_shortbuf"
.LASF159:
	.string	"ret_bpl"
.LASF69:
	.string	"desc"
.LASF135:
	.string	"do_gzip"
.LASF44:
	.string	"_next"
.LASF9:
	.string	"__off64_t"
.LASF88:
	.string	"plen"
.LASF242:
	.string	"code"
.LASF250:
	.string	"sqd_parse"
.LASF21:
	.string	"_IO_buf_end"
.LASF189:
	.string	"endGCGdata"
.LASF68:
	.string	"name"
.LASF50:
	.string	"_ISlower"
.LASF243:
	.string	"SeqfileFormat2String"
.LASF126:
	.string	"nseqlump"
.LASF5:
	.string	"short int"
.LASF201:
	.string	"ret_seq"
.LASF81:
	.string	"mode"
.LASF236:
	.string	"ret_rseqs"
.LASF185:
	.string	"readStrider"
.LASF143:
	.string	"d_off"
.LASF241:
	.string	"String2SeqfileFormat"
.LASF97:
	.string	"smode"
.LASF175:
	.string	"addfirst"
.LASF208:
	.string	"bpos"
.LASF31:
	.string	"_vtable_offset"
.LASF233:
	.string	"ReadMultipleRseqs"
.LASF108:
	.string	"sa_cons"
.LASF147:
	.string	"maxbpl"
.LASF99:
	.string	"fileformat"
.LASF195:
	.string	"endEMBL"
.LASF15:
	.string	"_IO_read_end"
.LASF111:
	.string	"cutoff"
.LASF179:
	.string	"seqfile_open"
.LASF138:
	.string	"MSAFILE"
.LASF190:
	.string	"readGCGdata"
.LASF163:
	.string	"SetSeqinfoString"
.LASF27:
	.string	"_fileno"
.LASF150:
	.string	"maxseq"
.LASF168:
	.string	"ToDNA"
.LASF141:
	.string	"ssioffset"
.LASF176:
	.string	"endTest"
.LASF255:
	.string	"DONE"
.LASF52:
	.string	"_ISdigit"
.LASF2:
	.string	"short unsigned int"
.LASF220:
	.string	"WriteSimpleFASTA"
.LASF152:
	.string	"SeqfileOpen"
.LASF18:
	.string	"_IO_write_ptr"
.LASF83:
	.string	"ssifile_s"
.LASF202:
	.string	"gotuw"
.LASF79:
	.string	"nkeys"
.LASF160:
	.string	"ret_rpl"
.LASF187:
	.string	"readGenBank"
.LASF207:
	.string	"GCGBinaryToSequence"
.LASF142:
	.string	"r_off"
.LASF186:
	.string	"endGB"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
