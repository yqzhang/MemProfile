	.file	"feat.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -I . -I libutil -imultiarch x86_64-linux-gnu
# -D SPEC_CPU -D NDEBUG -D SPEC_CPU -D HAVE_CONFIG_H -D SPEC_CPU_LP64
# feat.c -mtune=generic -march=x86-64 -g -fverbose-asm -fno-strict-aliasing
# -fstack-protector -Wformat -Wformat-security
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
	.string	"feat.c"
	.align 8
.LC2:
	.string	"Reading feature file: '%s'[%d..%d]\n"
.LC3:
	.string	"ERROR"
	.align 8
.LC4:
	.string	"%s: End frame (%d) <= Start frame (%d)\n"
.LC5:
	.string	"rb"
.LC6:
	.string	"fopen(%s,rb) failed\n"
.LC7:
	.string	"bio_readhdr(%s) failed\n"
.LC8:
	.string	"version"
.LC9:
	.string	"1.0"
.LC10:
	.string	"WARNING"
	.align 8
.LC11:
	.string	"%s: Version mismatch: %s, expecting %s\n"
.LC12:
	.string	"chksum0"
.LC13:
	.string	"%s: fread(#frames) failed\n"
	.align 8
.LC14:
	.string	"%s: Missing or bad #feature streams\n"
	.align 8
.LC15:
	.string	"%s: Missing or bad feature stream size\n"
	.align 8
.LC16:
	.string	"%s: Start frame (%d) beyond file size (%d)\n"
	.align 8
.LC17:
	.string	"%s: Feature buffer size(%d frames) < actual #frames(%d)\n"
	.align 8
.LC18:
	.string	"%s: fread(%dx%d) (feature data) failed\n"
	.text
	.globl	feat_readfile
	.type	feat_readfile, @function
feat_readfile:
.LFB2:
	.file 1 "feat.c"
	.loc 1 120 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$112, %rsp	#,
	movq	%rdi, -72(%rbp)	# fcb, fcb
	movq	%rsi, -80(%rbp)	# file, file
	movl	%edx, -84(%rbp)	# sf, sf
	movl	%ecx, -88(%rbp)	# ef, ef
	movq	%r8, -96(%rbp)	# feat, feat
	movl	%r9d, -100(%rbp)	# maxfr, maxfr
	.loc 1 127 0
	movl	$.LC0, %edx	#,
	movl	$127, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_info_header	#
	movl	-88(%rbp), %ecx	# ef, tmp133
	movl	-84(%rbp), %edx	# sf, tmp134
	movq	-80(%rbp), %rax	# file, tmp135
	movq	%rax, %rsi	# tmp135,
	movl	$.LC2, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 130 0
	movl	-88(%rbp), %eax	# ef, tmp136
	cmpl	-84(%rbp), %eax	# sf, tmp136
	jg	.L2	#,
	.loc 1 131 0
	movl	$.LC3, %edx	#,
	movl	$131, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movl	-84(%rbp), %ecx	# sf, tmp137
	movl	-88(%rbp), %edx	# ef, tmp138
	movq	-80(%rbp), %rax	# file, tmp139
	movq	%rax, %rsi	# tmp139,
	movl	$.LC4, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_warn	#
	.loc 1 132 0
	movl	$-1, %eax	#, D.6712
	jmp	.L24	#
.L2:
	.loc 1 135 0
	movq	-80(%rbp), %rax	# file, tmp140
	movl	$.LC5, %esi	#,
	movq	%rax, %rdi	# tmp140,
	call	fopen	#
	movq	%rax, -8(%rbp)	# tmp141, fp
	cmpq	$0, -8(%rbp)	#, fp
	jne	.L4	#,
	.loc 1 136 0
	movl	$.LC3, %edx	#,
	movl	$136, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movq	-80(%rbp), %rax	# file, tmp142
	movq	%rax, %rsi	# tmp142,
	movl	$.LC6, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_warn	#
	.loc 1 137 0
	movl	$-1, %eax	#, D.6712
	jmp	.L24	#
.L4:
	.loc 1 141 0
	leaq	-44(%rbp), %rcx	#, tmp143
	leaq	-16(%rbp), %rdx	#, tmp144
	leaq	-24(%rbp), %rsi	#, tmp145
	movq	-8(%rbp), %rax	# fp, tmp146
	movq	%rax, %rdi	# tmp146,
	call	bio_readhdr	#
	testl	%eax, %eax	# D.6713
	jns	.L5	#,
	.loc 1 142 0
	movl	$.LC3, %edx	#,
	movl	$142, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movq	-80(%rbp), %rax	# file, tmp147
	movq	%rax, %rsi	# tmp147,
	movl	$.LC7, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_warn	#
	.loc 1 143 0
	movq	-8(%rbp), %rax	# fp, tmp148
	movq	%rax, %rdi	# tmp148,
	call	fclose	#
	.loc 1 144 0
	movl	$-1, %eax	#, D.6712
	jmp	.L24	#
.L5:
	.loc 1 148 0
	movl	$0, -28(%rbp)	#, chksum_present
	.loc 1 149 0
	movl	$0, -36(%rbp)	#, i
	jmp	.L6	#
.L10:
	.loc 1 150 0
	movq	-24(%rbp), %rax	# argname, argname.0
	movl	-36(%rbp), %edx	# i, tmp149
	movslq	%edx, %rdx	# tmp149, D.6714
	salq	$3, %rdx	#, D.6714
	addq	%rdx, %rax	# D.6714, D.6715
	movq	(%rax), %rax	# *_23, D.6716
	movl	$.LC8, %esi	#,
	movq	%rax, %rdi	# D.6716,
	call	strcmp	#
	testl	%eax, %eax	# D.6713
	jne	.L7	#,
	.loc 1 151 0
	movq	-16(%rbp), %rax	# argval, argval.1
	movl	-36(%rbp), %edx	# i, tmp150
	movslq	%edx, %rdx	# tmp150, D.6714
	salq	$3, %rdx	#, D.6714
	addq	%rdx, %rax	# D.6714, D.6715
	movq	(%rax), %rax	# *_29, D.6716
	movl	$.LC9, %esi	#,
	movq	%rax, %rdi	# D.6716,
	call	strcmp	#
	testl	%eax, %eax	# D.6713
	je	.L9	#,
	.loc 1 152 0
	movl	$.LC10, %edx	#,
	movl	$152, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	.loc 1 153 0
	movq	-16(%rbp), %rax	# argval, argval.2
	movl	-36(%rbp), %edx	# i, tmp151
	movslq	%edx, %rdx	# tmp151, D.6714
	salq	$3, %rdx	#, D.6714
	addq	%rdx, %rax	# D.6714, D.6715
	.loc 1 152 0
	movq	(%rax), %rdx	# *_35, D.6716
	movq	-80(%rbp), %rax	# file, tmp152
	movl	$.LC9, %ecx	#,
	movq	%rax, %rsi	# tmp152,
	movl	$.LC11, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_warn	#
	jmp	.L9	#
.L7:
	.loc 1 154 0
	movq	-24(%rbp), %rax	# argname, argname.3
	movl	-36(%rbp), %edx	# i, tmp153
	movslq	%edx, %rdx	# tmp153, D.6714
	salq	$3, %rdx	#, D.6714
	addq	%rdx, %rax	# D.6714, D.6715
	movq	(%rax), %rax	# *_40, D.6716
	movl	$.LC12, %esi	#,
	movq	%rax, %rdi	# D.6716,
	call	strcmp	#
	testl	%eax, %eax	# D.6713
	jne	.L9	#,
	.loc 1 155 0
	movl	$1, -28(%rbp)	#, chksum_present
.L9:
	.loc 1 149 0
	addl	$1, -36(%rbp)	#, i
.L6:
	.loc 1 149 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# argname, argname.4
	movl	-36(%rbp), %edx	# i, tmp154
	movslq	%edx, %rdx	# tmp154, D.6714
	salq	$3, %rdx	#, D.6714
	addq	%rdx, %rax	# D.6714, D.6715
	movq	(%rax), %rax	# *_18, D.6716
	testq	%rax, %rax	# D.6716
	jne	.L10	#,
	.loc 1 159 0 is_stmt 1
	movq	-16(%rbp), %rdx	# argval, argval.5
	movq	-24(%rbp), %rax	# argname, argname.6
	movq	%rdx, %rsi	# argval.5,
	movq	%rax, %rdi	# argname.6,
	call	bio_hdrarg_free	#
	.loc 1 160 0
	movq	$0, -16(%rbp)	#, argval
	movq	-16(%rbp), %rax	# argval, argval.7
	movq	%rax, -24(%rbp)	# argval.7, argname
	.loc 1 162 0
	movl	$0, -40(%rbp)	#, chksum
	.loc 1 165 0
	movl	-44(%rbp), %ecx	# byteswap, byteswap.8
	leaq	-40(%rbp), %rsi	#, tmp155
	movq	-8(%rbp), %rdx	# fp, tmp156
	leaq	-48(%rbp), %rax	#, tmp157
	movq	%rsi, %r9	# tmp155,
	movl	%ecx, %r8d	# byteswap.8,
	movq	%rdx, %rcx	# tmp156,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp157,
	call	bio_fread	#
	cmpl	$1, %eax	#, D.6713
	je	.L11	#,
	.loc 1 166 0
	movl	$.LC3, %edx	#,
	movl	$166, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movq	-80(%rbp), %rax	# file, tmp158
	movq	%rax, %rsi	# tmp158,
	movl	$.LC13, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_warn	#
	.loc 1 167 0
	movq	-8(%rbp), %rax	# fp, tmp159
	movq	%rax, %rdi	# tmp159,
	call	fclose	#
	.loc 1 168 0
	movl	$-1, %eax	#, D.6712
	jmp	.L24	#
.L11:
	.loc 1 172 0
	movl	-44(%rbp), %ecx	# byteswap, byteswap.9
	leaq	-40(%rbp), %rsi	#, tmp160
	movq	-8(%rbp), %rdx	# fp, tmp161
	leaq	-52(%rbp), %rax	#, tmp162
	movq	%rsi, %r9	# tmp160,
	movl	%ecx, %r8d	# byteswap.9,
	movq	%rdx, %rcx	# tmp161,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp162,
	call	bio_fread	#
	cmpl	$1, %eax	#, D.6713
	jne	.L12	#,
	.loc 1 173 0 discriminator 1
	movq	-72(%rbp), %rax	# fcb, tmp163
	movl	16(%rax), %edx	# fcb_53(D)->n_stream, D.6713
	movl	-52(%rbp), %eax	# l, l.10
	.loc 1 172 0 discriminator 1
	cmpl	%eax, %edx	# l.10, D.6713
	je	.L13	#,
.L12:
	.loc 1 174 0
	movl	$.LC3, %edx	#,
	movl	$174, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movq	-80(%rbp), %rax	# file, tmp164
	movq	%rax, %rsi	# tmp164,
	movl	$.LC14, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_warn	#
	.loc 1 175 0
	movq	-8(%rbp), %rax	# fp, tmp165
	movq	%rax, %rdi	# tmp165,
	call	fclose	#
	.loc 1 176 0
	movl	$-1, %eax	#, D.6712
	jmp	.L24	#
.L13:
	.loc 1 180 0
	movl	$0, -32(%rbp)	#, k
	.loc 1 181 0
	movl	$0, -36(%rbp)	#, i
	jmp	.L14	#
.L17:
	.loc 1 182 0
	movl	-44(%rbp), %ecx	# byteswap, byteswap.11
	leaq	-40(%rbp), %rsi	#, tmp166
	movq	-8(%rbp), %rdx	# fp, tmp167
	leaq	-52(%rbp), %rax	#, tmp168
	movq	%rsi, %r9	# tmp166,
	movl	%ecx, %r8d	# byteswap.11,
	movq	%rdx, %rcx	# tmp167,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp168,
	call	bio_fread	#
	cmpl	$1, %eax	#, D.6713
	jne	.L15	#,
	.loc 1 183 0 discriminator 1
	movq	-72(%rbp), %rax	# fcb, tmp169
	movq	24(%rax), %rax	# fcb_53(D)->stream_len, D.6717
	movl	-36(%rbp), %edx	# i, tmp170
	movslq	%edx, %rdx	# tmp170, D.6714
	salq	$2, %rdx	#, D.6714
	addq	%rdx, %rax	# D.6714, D.6717
	movl	(%rax), %edx	# *_64, D.6713
	movl	-52(%rbp), %eax	# l, l.12
	.loc 1 182 0 discriminator 1
	cmpl	%eax, %edx	# l.12, D.6713
	je	.L16	#,
.L15:
	.loc 1 184 0
	movl	$.LC3, %edx	#,
	movl	$184, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movq	-80(%rbp), %rax	# file, tmp171
	movq	%rax, %rsi	# tmp171,
	movl	$.LC15, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_warn	#
	.loc 1 185 0
	movq	-8(%rbp), %rax	# fp, tmp172
	movq	%rax, %rdi	# tmp172,
	call	fclose	#
	.loc 1 186 0
	movl	$-1, %eax	#, D.6712
	jmp	.L24	#
.L16:
	.loc 1 188 0
	movl	-52(%rbp), %eax	# l, l.13
	addl	%eax, -32(%rbp)	# l.13, k
	.loc 1 181 0
	addl	$1, -36(%rbp)	#, i
.L14:
	.loc 1 181 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# fcb, tmp173
	movl	16(%rax), %eax	# fcb_53(D)->n_stream, D.6713
	cmpl	-36(%rbp), %eax	# i, D.6713
	jg	.L17	#,
	.loc 1 192 0 is_stmt 1
	cmpl	$0, -84(%rbp)	#, sf
	jle	.L18	#,
	.loc 1 193 0
	movl	-48(%rbp), %eax	# nfr, nfr.14
	cmpl	%eax, -84(%rbp)	# nfr.14, sf
	jl	.L19	#,
	.loc 1 194 0
	movl	$.LC3, %edx	#,
	movl	$194, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movl	-48(%rbp), %ecx	# nfr, nfr.15
	movl	-84(%rbp), %edx	# sf, tmp174
	movq	-80(%rbp), %rax	# file, tmp175
	movq	%rax, %rsi	# tmp175,
	movl	$.LC16, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_warn	#
	.loc 1 195 0
	movq	-8(%rbp), %rax	# fp, tmp176
	movq	%rax, %rdi	# tmp176,
	call	fclose	#
	.loc 1 196 0
	movl	$-1, %eax	#, D.6712
	jmp	.L24	#
.L19:
	.loc 1 198 0
	movl	-48(%rbp), %eax	# nfr, nfr.16
	subl	-84(%rbp), %eax	# sf, nfr.17
	movl	%eax, -48(%rbp)	# nfr.17, nfr
.L18:
	.loc 1 202 0
	movl	-84(%rbp), %eax	# sf, tmp177
	movl	-88(%rbp), %edx	# ef, tmp178
	subl	%eax, %edx	# tmp177, D.6713
	movl	%edx, %eax	# D.6713, D.6713
	leal	1(%rax), %edx	#, D.6713
	movl	-48(%rbp), %eax	# nfr, nfr.18
	cmpl	%eax, %edx	# nfr.18, D.6713
	jge	.L20	#,
	.loc 1 203 0
	movl	-84(%rbp), %eax	# sf, tmp179
	movl	-88(%rbp), %edx	# ef, tmp180
	subl	%eax, %edx	# tmp179, D.6713
	movl	%edx, %eax	# D.6713, D.6713
	addl	$1, %eax	#, nfr.19
	movl	%eax, -48(%rbp)	# nfr.19, nfr
.L20:
	.loc 1 204 0
	movl	-48(%rbp), %eax	# nfr, nfr.20
	cmpl	-100(%rbp), %eax	# maxfr, nfr.20
	jle	.L21	#,
	.loc 1 205 0
	movl	$.LC3, %edx	#,
	movl	$205, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movl	-48(%rbp), %ecx	# nfr, nfr.21
	movl	-100(%rbp), %edx	# maxfr, tmp181
	movq	-80(%rbp), %rax	# file, tmp182
	movq	%rax, %rsi	# tmp182,
	movl	$.LC17, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_warn	#
	.loc 1 207 0
	movq	-8(%rbp), %rax	# fp, tmp183
	movq	%rax, %rdi	# tmp183,
	call	fclose	#
	.loc 1 208 0
	movl	$-1, %eax	#, D.6712
	jmp	.L24	#
.L21:
	.loc 1 212 0
	cmpl	$0, -84(%rbp)	#, sf
	jle	.L22	#,
	.loc 1 213 0
	movl	-84(%rbp), %eax	# sf, tmp184
	imull	-32(%rbp), %eax	# k, D.6713
	cltq
	salq	$2, %rax	#, D.6714
	movq	%rax, %rcx	# D.6714, D.6718
	movq	-8(%rbp), %rax	# fp, tmp185
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# D.6718,
	movq	%rax, %rdi	# tmp185,
	call	fseek	#
.L22:
	.loc 1 214 0
	movl	-44(%rbp), %esi	# byteswap, byteswap.22
	movl	-48(%rbp), %eax	# nfr, nfr.23
	imull	-32(%rbp), %eax	# k, D.6713
	movl	%eax, %edx	# D.6713, D.6713
	movq	-96(%rbp), %rax	# feat, tmp186
	movq	(%rax), %rax	# *feat_92(D), D.6719
	movq	(%rax), %rax	# *_93, D.6720
	leaq	-40(%rbp), %rdi	#, tmp187
	movq	-8(%rbp), %rcx	# fp, tmp188
	movq	%rdi, %r9	# tmp187,
	movl	%esi, %r8d	# byteswap.22,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.6720,
	call	bio_fread	#
	movl	-48(%rbp), %edx	# nfr, nfr.24
	imull	-32(%rbp), %edx	# k, D.6713
	cmpl	%edx, %eax	# D.6713, D.6713
	je	.L23	#,
	.loc 1 215 0
	movl	$.LC3, %edx	#,
	movl	$215, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movl	-48(%rbp), %edx	# nfr, nfr.25
	movl	-32(%rbp), %ecx	# k, tmp189
	movq	-80(%rbp), %rax	# file, tmp190
	movq	%rax, %rsi	# tmp190,
	movl	$.LC18, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_warn	#
	.loc 1 216 0
	movq	-8(%rbp), %rax	# fp, tmp191
	movq	%rax, %rdi	# tmp191,
	call	fclose	#
	.loc 1 217 0
	movl	$-1, %eax	#, D.6712
	jmp	.L24	#
.L23:
	.loc 1 220 0
	movq	-8(%rbp), %rax	# fp, tmp192
	movq	%rax, %rdi	# tmp192,
	call	fclose	#
	.loc 1 222 0
	movl	-48(%rbp), %eax	# nfr, D.6712
.L24:
	.loc 1 223 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	feat_readfile, .-feat_readfile
	.section	.rodata
.LC19:
	.string	"Writing feature file: '%s'\n"
.LC20:
	.string	"wb"
.LC21:
	.string	"fopen(%s,wb) failed\n"
	.align 8
.LC22:
	.string	"%s: fwrite(%dx%d feature data) failed\n"
	.text
	.globl	feat_writefile
	.type	feat_writefile, @function
feat_writefile:
.LFB3:
	.loc 1 227 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# fcb, fcb
	movq	%rsi, -32(%rbp)	# file, file
	movq	%rdx, -40(%rbp)	# feat, feat
	movl	%ecx, -44(%rbp)	# nfr, nfr
	.loc 1 231 0
	movl	$.LC0, %edx	#,
	movl	$231, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_info_header	#
	movq	-32(%rbp), %rax	# file, tmp82
	movq	%rax, %rsi	# tmp82,
	movl	$.LC19, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 234 0
	movq	-32(%rbp), %rax	# file, tmp83
	movl	$.LC20, %esi	#,
	movq	%rax, %rdi	# tmp83,
	call	fopen	#
	movq	%rax, -8(%rbp)	# tmp84, fp
	cmpq	$0, -8(%rbp)	#, fp
	jne	.L26	#,
	.loc 1 235 0
	movl	$.LC3, %edx	#,
	movl	$235, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movq	-32(%rbp), %rax	# file, tmp85
	movq	%rax, %rsi	# tmp85,
	movl	$.LC21, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_warn	#
	.loc 1 236 0
	movl	$-1, %eax	#, D.6740
	jmp	.L27	#
.L26:
	.loc 1 240 0
	movq	-8(%rbp), %rax	# fp, tmp86
	movl	$.LC9, %esi	#,
	movq	%rax, %rdi	# tmp86,
	call	bio_writehdr_version	#
	.loc 1 242 0
	movq	-8(%rbp), %rdx	# fp, tmp87
	leaq	-44(%rbp), %rax	#, tmp88
	movq	%rdx, %rcx	# tmp87,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp88,
	call	fwrite	#
	.loc 1 243 0
	movq	-24(%rbp), %rax	# fcb, tmp89
	leaq	16(%rax), %rdi	#, D.6741
	movq	-8(%rbp), %rax	# fp, tmp90
	movq	%rax, %rcx	# tmp90,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	call	fwrite	#
	.loc 1 244 0
	movl	$0, -12(%rbp)	#, k
	.loc 1 245 0
	movl	$0, -16(%rbp)	#, i
	jmp	.L28	#
.L29:
	.loc 1 246 0 discriminator 2
	movq	-24(%rbp), %rax	# fcb, tmp91
	movq	24(%rax), %rax	# fcb_7(D)->stream_len, D.6741
	movl	-16(%rbp), %edx	# i, tmp92
	movslq	%edx, %rdx	# tmp92, D.6743
	salq	$2, %rdx	#, D.6743
	leaq	(%rax,%rdx), %rdi	#, D.6741
	movq	-8(%rbp), %rax	# fp, tmp93
	movq	%rax, %rcx	# tmp93,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	call	fwrite	#
	.loc 1 247 0 discriminator 2
	movq	-24(%rbp), %rax	# fcb, tmp94
	movq	24(%rax), %rax	# fcb_7(D)->stream_len, D.6741
	movl	-16(%rbp), %edx	# i, tmp95
	movslq	%edx, %rdx	# tmp95, D.6743
	salq	$2, %rdx	#, D.6743
	addq	%rdx, %rax	# D.6743, D.6741
	movl	(%rax), %eax	# *_19, D.6742
	addl	%eax, -12(%rbp)	# D.6742, k
	.loc 1 245 0 discriminator 2
	addl	$1, -16(%rbp)	#, i
.L28:
	.loc 1 245 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# fcb, tmp96
	movl	16(%rax), %eax	# fcb_7(D)->n_stream, D.6742
	cmpl	-16(%rbp), %eax	# i, D.6742
	jg	.L29	#,
	.loc 1 251 0 is_stmt 1
	movl	-44(%rbp), %eax	# nfr, nfr.26
	imull	-12(%rbp), %eax	# k, D.6742
	movslq	%eax, %rdx	# D.6742, D.6743
	movq	-40(%rbp), %rax	# feat, tmp97
	movq	(%rax), %rax	# *feat_26(D), D.6744
	movq	(%rax), %rax	# *_27, D.6745
	movq	-8(%rbp), %rcx	# fp, tmp98
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.6745,
	call	fwrite	#
	movl	%eax, %edx	# D.6743, D.6742
	movl	-44(%rbp), %eax	# nfr, nfr.27
	imull	-12(%rbp), %eax	# k, D.6742
	cmpl	%eax, %edx	# D.6742, D.6742
	je	.L30	#,
	.loc 1 252 0
	movl	$.LC3, %edx	#,
	movl	$252, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movl	-44(%rbp), %edx	# nfr, nfr.28
	movl	-12(%rbp), %ecx	# k, tmp99
	movq	-32(%rbp), %rax	# file, tmp100
	movq	%rax, %rsi	# tmp100,
	movl	$.LC22, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_warn	#
	.loc 1 253 0
	movq	-8(%rbp), %rax	# fp, tmp101
	movq	%rax, %rdi	# tmp101,
	call	fclose	#
	.loc 1 254 0
	movl	$-1, %eax	#, D.6740
	jmp	.L27	#
.L30:
	.loc 1 257 0
	movq	-8(%rbp), %rax	# fp, tmp102
	movq	%rax, %rdi	# tmp102,
	call	fclose	#
	.loc 1 259 0
	movl	$0, %eax	#, D.6740
.L27:
	.loc 1 260 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	feat_writefile, .-feat_writefile
	.section	.rodata
	.align 8
.LC23:
	.string	"Reading mfc file: '%s'[%d..%d]\n"
.LC24:
	.string	"stat_retry/fopen(%s) failed\n"
.LC25:
	.string	"%s: fread(#floats) failed\n"
	.align 8
.LC26:
	.string	"%s: Header size field: %d(%08x); filesize: %d(%08x)\n"
	.align 8
.LC27:
	.string	"%s: Header size field (#floats) = %d\n"
	.align 8
.LC28:
	.string	"Header size field: %d; not multiple of %d\n"
	.align 8
.LC29:
	.string	"%s: MFC buffer size(%d frames) < actual #frames(%d)\n"
	.align 8
.LC30:
	.string	"%s: fread(%dx%d) (MFC data) failed\n"
	.text
	.globl	feat_s2mfc_read
	.type	feat_s2mfc_read, @function
feat_s2mfc_read:
.LFB4:
	.loc 1 268 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$208, %rsp	#,
	movq	%rdi, -184(%rbp)	# file, file
	movl	%esi, -188(%rbp)	# sf, sf
	movl	%edx, -192(%rbp)	# ef, ef
	movq	%rcx, -200(%rbp)	# mfc, mfc
	movl	%r8d, -204(%rbp)	# maxfr, maxfr
	.loc 1 274 0
	cmpl	$0, -192(%rbp)	#, ef
	jns	.L32	#,
	.loc 1 275 0
	movl	$2147418112, -192(%rbp)	#, ef
.L32:
	.loc 1 277 0
	movl	$.LC0, %edx	#,
	movl	$277, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_info_header	#
	movl	-192(%rbp), %ecx	# ef, tmp172
	movl	-188(%rbp), %edx	# sf, tmp173
	movq	-184(%rbp), %rax	# file, tmp174
	movq	%rax, %rsi	# tmp174,
	movl	$.LC23, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 278 0
	movl	-192(%rbp), %eax	# ef, tmp175
	cmpl	-188(%rbp), %eax	# sf, tmp175
	jg	.L33	#,
	.loc 1 279 0
	movl	$.LC3, %edx	#,
	movl	$279, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movl	-188(%rbp), %ecx	# sf, tmp176
	movl	-192(%rbp), %edx	# ef, tmp177
	movq	-184(%rbp), %rax	# file, tmp178
	movq	%rax, %rsi	# tmp178,
	movl	$.LC4, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_warn	#
	.loc 1 280 0
	movl	$-1, %eax	#, D.6750
	jmp	.L51	#
.L33:
	.loc 1 283 0
	movl	$13, -156(%rbp)	#, cepsize
	.loc 1 286 0
	leaq	-144(%rbp), %rdx	#, tmp179
	movq	-184(%rbp), %rax	# file, tmp180
	movq	%rdx, %rsi	# tmp179,
	movq	%rax, %rdi	# tmp180,
	call	stat_retry	#
	testl	%eax, %eax	# D.6751
	js	.L35	#,
	.loc 1 286 0 is_stmt 0 discriminator 1
	movq	-184(%rbp), %rax	# file, tmp181
	movl	$.LC5, %esi	#,
	movq	%rax, %rdi	# tmp181,
	call	fopen	#
	movq	%rax, -152(%rbp)	# tmp182, fp
	cmpq	$0, -152(%rbp)	#, fp
	jne	.L36	#,
.L35:
	.loc 1 287 0 is_stmt 1
	movl	$.LC3, %edx	#,
	movl	$287, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movq	-184(%rbp), %rax	# file, tmp183
	movq	%rax, %rsi	# tmp183,
	movl	$.LC24, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_warn	#
	.loc 1 288 0
	movl	$-1, %eax	#, D.6750
	jmp	.L51	#
.L36:
	.loc 1 292 0
	movq	-152(%rbp), %rdx	# fp, tmp184
	leaq	-172(%rbp), %rax	#, tmp185
	movq	%rdx, %rcx	# tmp184,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp185,
	call	fread_retry	#
	cmpl	$1, %eax	#, D.6751
	je	.L37	#,
	.loc 1 293 0
	movl	$.LC3, %edx	#,
	movl	$293, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movq	-184(%rbp), %rax	# file, tmp186
	movq	%rax, %rsi	# tmp186,
	movl	$.LC25, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_warn	#
	.loc 1 294 0
	movq	-152(%rbp), %rax	# fp, tmp187
	movq	%rax, %rdi	# tmp187,
	call	fclose	#
	.loc 1 295 0
	movl	$-1, %eax	#, D.6750
	jmp	.L51	#
.L37:
	.loc 1 299 0
	movl	$0, -160(%rbp)	#, byterev
	.loc 1 300 0
	movl	-172(%rbp), %eax	# n_float32, n_float32.29
	cltq
	addl	$1, %eax	#, D.6753
	sall	$2, %eax	#, D.6753
	movl	%eax, %edx	# D.6753, D.6751
	movq	-96(%rbp), %rax	# statbuf.st_size, D.6754
	cmpl	%eax, %edx	# D.6751, D.6751
	je	.L38	#,
	.loc 1 301 0
	movl	-172(%rbp), %eax	# n_float32, n_float32.30
	movl	%eax, -168(%rbp)	# n_float32.30, n
	.loc 1 302 0
	movl	-168(%rbp), %eax	# n, n.31
	shrl	$24, %eax	#, D.6753
	movl	-168(%rbp), %edx	# n, n.33
	sarl	$8, %edx	#, D.6751
	andl	$65280, %edx	#, D.6751
	orl	%eax, %edx	# D.6751, D.6751
	movl	-168(%rbp), %eax	# n, n.34
	sall	$8, %eax	#, D.6751
	andl	$16711680, %eax	#, D.6751
	orl	%edx, %eax	# D.6751, D.6751
	movl	%eax, %edx	# D.6751, D.6755
	movl	-168(%rbp), %eax	# n, n.35
	sall	$24, %eax	#, D.6751
	orl	%edx, %eax	# D.6755, D.6755
	movl	%eax, -168(%rbp)	# n.36, n
	.loc 1 304 0
	movl	-168(%rbp), %eax	# n, n.37
	cltq
	addl	$1, %eax	#, D.6753
	sall	$2, %eax	#, D.6753
	movl	%eax, %edx	# D.6753, D.6751
	movq	-96(%rbp), %rax	# statbuf.st_size, D.6754
	cmpl	%eax, %edx	# D.6751, D.6751
	je	.L39	#,
	.loc 1 305 0
	movl	$.LC3, %edx	#,
	movl	$305, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movq	-96(%rbp), %rdi	# statbuf.st_size, D.6754
	movq	-96(%rbp), %rsi	# statbuf.st_size, D.6754
	movl	-172(%rbp), %ecx	# n_float32, n_float32.38
	movl	-172(%rbp), %edx	# n_float32, n_float32.39
	movq	-184(%rbp), %rax	# file, tmp188
	movq	%rdi, %r9	# D.6754,
	movq	%rsi, %r8	# D.6754,
	movq	%rax, %rsi	# tmp188,
	movl	$.LC26, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_warn	#
	.loc 1 307 0
	movq	-152(%rbp), %rax	# fp, tmp189
	movq	%rax, %rdi	# tmp189,
	call	fclose	#
	.loc 1 308 0
	movl	$-1, %eax	#, D.6750
	jmp	.L51	#
.L39:
	.loc 1 311 0
	movl	-168(%rbp), %eax	# n, n.40
	movl	%eax, -172(%rbp)	# n.40, n_float32
	.loc 1 312 0
	movl	$1, -160(%rbp)	#, byterev
.L38:
	.loc 1 314 0
	movl	-172(%rbp), %eax	# n_float32, n_float32.41
	testl	%eax, %eax	# n_float32.41
	jg	.L40	#,
	.loc 1 315 0
	movl	$.LC3, %edx	#,
	movl	$315, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movl	-172(%rbp), %edx	# n_float32, n_float32.42
	movq	-184(%rbp), %rax	# file, tmp190
	movq	%rax, %rsi	# tmp190,
	movl	$.LC27, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_warn	#
	.loc 1 316 0
	movq	-152(%rbp), %rax	# fp, tmp191
	movq	%rax, %rdi	# tmp191,
	call	fclose	#
	.loc 1 317 0
	movl	$-1, %eax	#, D.6750
	jmp	.L51	#
.L40:
	.loc 1 321 0
	movl	-172(%rbp), %eax	# n_float32, n_float32.43
	cltd
	idivl	-156(%rbp)	# cepsize
	movl	%eax, -168(%rbp)	# n.44, n
	.loc 1 322 0
	movl	-168(%rbp), %eax	# n, n.45
	imull	-156(%rbp), %eax	# cepsize, D.6751
	movl	%eax, %edx	# D.6751, D.6751
	movl	-172(%rbp), %eax	# n_float32, n_float32.46
	cmpl	%eax, %edx	# n_float32.46, D.6751
	je	.L41	#,
	.loc 1 323 0
	movl	$.LC3, %edx	#,
	movl	$323, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movl	-172(%rbp), %eax	# n_float32, n_float32.47
	movl	-156(%rbp), %edx	# cepsize, tmp194
	movl	%eax, %esi	# n_float32.47,
	movl	$.LC28, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_warn	#
	.loc 1 324 0
	movq	-152(%rbp), %rax	# fp, tmp195
	movq	%rax, %rdi	# tmp195,
	call	fclose	#
	.loc 1 325 0
	movl	$-1, %eax	#, D.6750
	jmp	.L51	#
.L41:
	.loc 1 329 0
	cmpl	$0, -188(%rbp)	#, sf
	jle	.L42	#,
	.loc 1 330 0
	movl	-168(%rbp), %eax	# n, n.48
	cmpl	%eax, -188(%rbp)	# n.48, sf
	jl	.L43	#,
	.loc 1 331 0
	movl	$.LC3, %edx	#,
	movl	$331, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movl	-168(%rbp), %ecx	# n, n.49
	movl	-188(%rbp), %edx	# sf, tmp196
	movq	-184(%rbp), %rax	# file, tmp197
	movq	%rax, %rsi	# tmp197,
	movl	$.LC16, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_warn	#
	.loc 1 332 0
	movq	-152(%rbp), %rax	# fp, tmp198
	movq	%rax, %rdi	# tmp198,
	call	fclose	#
	.loc 1 333 0
	movl	$-1, %eax	#, D.6750
	jmp	.L51	#
.L43:
	.loc 1 335 0
	movl	-168(%rbp), %eax	# n, n.50
	subl	-188(%rbp), %eax	# sf, n.51
	movl	%eax, -168(%rbp)	# n.51, n
.L42:
	.loc 1 339 0
	movl	-188(%rbp), %eax	# sf, tmp199
	movl	-192(%rbp), %edx	# ef, tmp200
	subl	%eax, %edx	# tmp199, D.6751
	movl	%edx, %eax	# D.6751, D.6751
	leal	1(%rax), %edx	#, D.6751
	movl	-168(%rbp), %eax	# n, n.52
	cmpl	%eax, %edx	# n.52, D.6751
	jge	.L44	#,
	.loc 1 340 0
	movl	-188(%rbp), %eax	# sf, tmp201
	movl	-192(%rbp), %edx	# ef, tmp202
	subl	%eax, %edx	# tmp201, D.6751
	movl	%edx, %eax	# D.6751, D.6751
	addl	$1, %eax	#, n.53
	movl	%eax, -168(%rbp)	# n.53, n
.L44:
	.loc 1 341 0
	movl	-168(%rbp), %eax	# n, n.54
	cmpl	-204(%rbp), %eax	# maxfr, n.54
	jle	.L45	#,
	.loc 1 342 0
	movl	$.LC3, %edx	#,
	movl	$342, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movl	-168(%rbp), %ecx	# n, n.55
	movl	-204(%rbp), %edx	# maxfr, tmp203
	movq	-184(%rbp), %rax	# file, tmp204
	movq	%rax, %rsi	# tmp204,
	movl	$.LC29, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_warn	#
	.loc 1 343 0
	movq	-152(%rbp), %rax	# fp, tmp205
	movq	%rax, %rdi	# tmp205,
	call	fclose	#
	.loc 1 344 0
	movl	$-1, %eax	#, D.6750
	jmp	.L51	#
.L45:
	.loc 1 348 0
	cmpl	$0, -188(%rbp)	#, sf
	jle	.L46	#,
	.loc 1 349 0
	movl	-188(%rbp), %eax	# sf, tmp206
	imull	-156(%rbp), %eax	# cepsize, D.6751
	cltq
	salq	$2, %rax	#, D.6752
	movq	%rax, %rcx	# D.6752, D.6754
	movq	-152(%rbp), %rax	# fp, tmp207
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# D.6754,
	movq	%rax, %rdi	# tmp207,
	call	fseek	#
.L46:
	.loc 1 350 0
	movl	-168(%rbp), %eax	# n, n.56
	imull	-156(%rbp), %eax	# cepsize, n_float32.57
	movl	%eax, -172(%rbp)	# n_float32.57, n_float32
	.loc 1 351 0
	movl	-172(%rbp), %edx	# n_float32, n_float32.58
	movq	-200(%rbp), %rax	# mfc, tmp208
	movq	(%rax), %rax	# *mfc_89(D), D.6756
	movq	-152(%rbp), %rcx	# fp, tmp209
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.6756,
	call	fread_retry	#
	movl	-172(%rbp), %edx	# n_float32, n_float32.59
	cmpl	%edx, %eax	# n_float32.59, D.6751
	je	.L47	#,
	.loc 1 352 0
	movl	$.LC3, %edx	#,
	movl	$352, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movl	-168(%rbp), %edx	# n, n.60
	movl	-156(%rbp), %ecx	# cepsize, tmp210
	movq	-184(%rbp), %rax	# file, tmp211
	movq	%rax, %rsi	# tmp211,
	movl	$.LC30, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_warn	#
	.loc 1 353 0
	movq	-152(%rbp), %rax	# fp, tmp212
	movq	%rax, %rdi	# tmp212,
	call	fclose	#
	.loc 1 354 0
	movl	$-1, %eax	#, D.6750
	jmp	.L51	#
.L47:
	.loc 1 356 0
	cmpl	$0, -160(%rbp)	#, byterev
	je	.L48	#,
	.loc 1 357 0
	movl	$0, -164(%rbp)	#, i
	jmp	.L49	#
.L50:
	.loc 1 358 0 discriminator 2
	movq	-200(%rbp), %rax	# mfc, tmp213
	movq	(%rax), %rax	# *mfc_89(D), D.6756
	movl	-164(%rbp), %edx	# i, tmp214
	movslq	%edx, %rdx	# tmp214, D.6752
	salq	$2, %rdx	#, D.6752
	addq	%rax, %rdx	# D.6756, D.6757
	movq	-200(%rbp), %rax	# mfc, tmp215
	movq	(%rax), %rax	# *mfc_89(D), D.6756
	movl	-164(%rbp), %ecx	# i, tmp216
	movslq	%ecx, %rcx	# tmp216, D.6752
	salq	$2, %rcx	#, D.6752
	addq	%rcx, %rax	# D.6752, D.6757
	movl	(%rax), %eax	# *_104, D.6751
	shrl	$24, %eax	#, D.6753
	movl	%eax, %ecx	# D.6753, D.6751
	movq	-200(%rbp), %rax	# mfc, tmp217
	movq	(%rax), %rax	# *mfc_89(D), D.6756
	movl	-164(%rbp), %esi	# i, tmp218
	movslq	%esi, %rsi	# tmp218, D.6752
	salq	$2, %rsi	#, D.6752
	addq	%rsi, %rax	# D.6752, D.6757
	movl	(%rax), %eax	# *_112, D.6751
	sarl	$8, %eax	#, D.6751
	andl	$65280, %eax	#, D.6751
	orl	%eax, %ecx	# D.6751, D.6751
	movl	%ecx, %esi	# D.6751, D.6751
	movq	-200(%rbp), %rax	# mfc, tmp219
	movq	(%rax), %rax	# *mfc_89(D), D.6756
	movl	-164(%rbp), %ecx	# i, tmp220
	movslq	%ecx, %rcx	# tmp220, D.6752
	salq	$2, %rcx	#, D.6752
	addq	%rcx, %rax	# D.6752, D.6757
	movl	(%rax), %eax	# *_120, D.6751
	sall	$8, %eax	#, D.6751
	andl	$16711680, %eax	#, D.6751
	orl	%esi, %eax	# D.6751, D.6751
	movl	%eax, %ecx	# D.6751, D.6755
	movq	-200(%rbp), %rax	# mfc, tmp221
	movq	(%rax), %rax	# *mfc_89(D), D.6756
	movl	-164(%rbp), %esi	# i, tmp222
	movslq	%esi, %rsi	# tmp222, D.6752
	salq	$2, %rsi	#, D.6752
	addq	%rsi, %rax	# D.6752, D.6757
	movl	(%rax), %eax	# *_129, D.6751
	sall	$24, %eax	#, D.6751
	orl	%ecx, %eax	# D.6755, D.6755
	movl	%eax, (%rdx)	# D.6751, *_100
	.loc 1 357 0 discriminator 2
	addl	$1, -164(%rbp)	#, i
.L49:
	.loc 1 357 0 is_stmt 0 discriminator 1
	movl	-172(%rbp), %eax	# n_float32, n_float32.61
	cmpl	%eax, -164(%rbp)	# n_float32.61, i
	jl	.L50	#,
.L48:
	.loc 1 361 0 is_stmt 1
	movq	-152(%rbp), %rax	# fp, tmp223
	movq	%rax, %rdi	# tmp223,
	call	fclose	#
	.loc 1 363 0
	movl	-168(%rbp), %eax	# n, D.6750
.L51:
	.loc 1 364 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	feat_s2mfc_read, .-feat_s2mfc_read
	.type	feat_stream_len_sum, @function
feat_stream_len_sum:
.LFB5:
	.loc 1 368 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# fcb, fcb
	.loc 1 371 0
	movl	$0, -4(%rbp)	#, k
	.loc 1 372 0
	movl	$0, -8(%rbp)	#, i
	jmp	.L53	#
.L54:
	.loc 1 373 0 discriminator 2
	movq	-24(%rbp), %rax	# fcb, tmp67
	movq	24(%rax), %rax	# fcb_5(D)->stream_len, D.6767
	movl	-8(%rbp), %edx	# i, tmp68
	movslq	%edx, %rdx	# tmp68, D.6768
	salq	$2, %rdx	#, D.6768
	addq	%rdx, %rax	# D.6768, D.6767
	movl	(%rax), %eax	# *_10, D.6766
	addl	%eax, -4(%rbp)	# D.6766, k
	.loc 1 372 0 discriminator 2
	addl	$1, -8(%rbp)	#, i
.L53:
	.loc 1 372 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# fcb, tmp69
	movl	16(%rax), %eax	# fcb_5(D)->n_stream, D.6766
	cmpl	-8(%rbp), %eax	# i, D.6766
	jg	.L54	#,
	.loc 1 374 0 is_stmt 1
	movl	-4(%rbp), %eax	# k, D.6769
	.loc 1 375 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	feat_stream_len_sum, .-feat_stream_len_sum
	.section	.rodata
	.align 8
.LC31:
	.string	"Sum(feature stream lengths) = %d\n"
	.text
	.globl	feat_vector_alloc
	.type	feat_vector_alloc, @function
feat_vector_alloc:
.LFB6:
	.loc 1 379 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# fcb, fcb
	.loc 1 385 0
	movq	-40(%rbp), %rax	# fcb, tmp75
	movq	%rax, %rdi	# tmp75,
	call	feat_stream_len_sum	#
	movl	%eax, -20(%rbp)	# tmp76, k
	cmpl	$0, -20(%rbp)	#, k
	jg	.L57	#,
	.loc 1 386 0
	movl	$.LC3, %edx	#,
	movl	$386, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movl	-20(%rbp), %eax	# k, tmp77
	movl	%eax, %esi	# tmp77,
	movl	$.LC31, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_warn	#
	.loc 1 387 0
	movl	$0, %eax	#, D.6770
	jmp	.L58	#
.L57:
	.loc 1 391 0
	movq	-40(%rbp), %rax	# fcb, tmp78
	movl	16(%rax), %eax	# fcb_4(D)->n_stream, D.6771
	cltq
	movl	$391, %ecx	#,
	movl	$.LC1, %edx	#,
	movl	$8, %esi	#,
	movq	%rax, %rdi	# D.6772,
	call	__ckd_calloc__	#
	movq	%rax, -8(%rbp)	# tmp79, feat
	.loc 1 392 0
	movl	-20(%rbp), %eax	# k, tmp80
	cltq
	movl	$392, %ecx	#,
	movl	$.LC1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.6772,
	call	__ckd_calloc__	#
	movq	%rax, -16(%rbp)	# tmp81, data
	.loc 1 394 0
	movl	$0, -24(%rbp)	#, i
	jmp	.L59	#
.L60:
	.loc 1 395 0 discriminator 2
	movl	-24(%rbp), %eax	# i, tmp82
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6772
	movq	-8(%rbp), %rax	# feat, tmp83
	addq	%rax, %rdx	# tmp83, D.6770
	movq	-16(%rbp), %rax	# data, tmp84
	movq	%rax, (%rdx)	# tmp84, *_16
	.loc 1 396 0 discriminator 2
	movq	-40(%rbp), %rax	# fcb, tmp85
	movq	24(%rax), %rax	# fcb_4(D)->stream_len, D.6773
	movl	-24(%rbp), %edx	# i, tmp86
	movslq	%edx, %rdx	# tmp86, D.6772
	salq	$2, %rdx	#, D.6772
	addq	%rdx, %rax	# D.6772, D.6773
	movl	(%rax), %eax	# *_20, D.6771
	cltq
	salq	$2, %rax	#, D.6772
	addq	%rax, -16(%rbp)	# D.6772, data
	.loc 1 394 0 discriminator 2
	addl	$1, -24(%rbp)	#, i
.L59:
	.loc 1 394 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# fcb, tmp87
	movl	16(%rax), %eax	# fcb_4(D)->n_stream, D.6771
	cmpl	-24(%rbp), %eax	# i, D.6771
	jg	.L60	#,
	.loc 1 399 0 is_stmt 1
	movq	-8(%rbp), %rax	# feat, D.6770
.L58:
	.loc 1 400 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	feat_vector_alloc, .-feat_vector_alloc
	.globl	feat_array_alloc
	.type	feat_array_alloc, @function
feat_array_alloc:
.LFB7:
	.loc 1 404 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# fcb, fcb
	movl	%esi, -44(%rbp)	# nfr, nfr
	.loc 1 411 0
	movq	-40(%rbp), %rax	# fcb, tmp79
	movq	%rax, %rdi	# tmp79,
	call	feat_stream_len_sum	#
	movl	%eax, -20(%rbp)	# tmp80, k
	cmpl	$0, -20(%rbp)	#, k
	jg	.L62	#,
	.loc 1 412 0
	movl	$.LC3, %edx	#,
	movl	$412, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movl	-20(%rbp), %eax	# k, tmp81
	movl	%eax, %esi	# tmp81,
	movl	$.LC31, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_warn	#
	.loc 1 413 0
	movl	$0, %eax	#, D.6775
	jmp	.L63	#
.L62:
	.loc 1 417 0
	movq	-40(%rbp), %rax	# fcb, tmp82
	movl	16(%rax), %esi	# fcb_6(D)->n_stream, D.6776
	movl	-44(%rbp), %eax	# nfr, tmp83
	movl	$417, %r8d	#,
	movl	$.LC1, %ecx	#,
	movl	$8, %edx	#,
	movl	%eax, %edi	# tmp83,
	call	__ckd_calloc_2d__	#
	movq	%rax, -8(%rbp)	# tmp84, feat
	.loc 1 418 0
	movl	-44(%rbp), %eax	# nfr, tmp85
	imull	-20(%rbp), %eax	# k, D.6776
	cltq
	movl	$418, %ecx	#,
	movl	$.LC1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.6777,
	call	__ckd_calloc__	#
	movq	%rax, -16(%rbp)	# tmp86, data
	.loc 1 420 0
	movl	$0, -28(%rbp)	#, i
	jmp	.L64	#
.L67:
	.loc 1 421 0
	movl	$0, -24(%rbp)	#, j
	jmp	.L65	#
.L66:
	.loc 1 422 0 discriminator 2
	movl	-28(%rbp), %eax	# i, tmp87
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6777
	movq	-8(%rbp), %rax	# feat, tmp88
	addq	%rdx, %rax	# D.6777, D.6775
	movq	(%rax), %rax	# *_20, D.6778
	movl	-24(%rbp), %edx	# j, tmp89
	movslq	%edx, %rdx	# tmp89, D.6777
	salq	$3, %rdx	#, D.6777
	addq	%rax, %rdx	# D.6778, D.6778
	movq	-16(%rbp), %rax	# data, tmp90
	movq	%rax, (%rdx)	# tmp90, *_24
	.loc 1 423 0 discriminator 2
	movq	-40(%rbp), %rax	# fcb, tmp91
	movq	24(%rax), %rax	# fcb_6(D)->stream_len, D.6779
	movl	-24(%rbp), %edx	# j, tmp92
	movslq	%edx, %rdx	# tmp92, D.6777
	salq	$2, %rdx	#, D.6777
	addq	%rdx, %rax	# D.6777, D.6779
	movl	(%rax), %eax	# *_28, D.6776
	cltq
	salq	$2, %rax	#, D.6777
	addq	%rax, -16(%rbp)	# D.6777, data
	.loc 1 421 0 discriminator 2
	addl	$1, -24(%rbp)	#, j
.L65:
	.loc 1 421 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# fcb, tmp93
	movl	16(%rax), %eax	# fcb_6(D)->n_stream, D.6776
	cmpl	-24(%rbp), %eax	# j, D.6776
	jg	.L66	#,
	.loc 1 420 0 is_stmt 1
	addl	$1, -28(%rbp)	#, i
.L64:
	.loc 1 420 0 is_stmt 0 discriminator 1
	movl	-28(%rbp), %eax	# i, tmp94
	cmpl	-44(%rbp), %eax	# nfr, tmp94
	jl	.L67	#,
	.loc 1 427 0 is_stmt 1
	movq	-8(%rbp), %rax	# feat, D.6775
.L63:
	.loc 1 428 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	feat_array_alloc, .-feat_array_alloc
	.type	feat_s2_4x_cep2feat, @function
feat_s2_4x_cep2feat:
.LFB8:
	.loc 1 432 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$112, %rsp	#,
	movq	%rdi, -88(%rbp)	# fcb, fcb
	movq	%rsi, -96(%rbp)	# mfc, mfc
	movq	%rdx, -104(%rbp)	# feat, feat
	.loc 1 450 0
	movq	-88(%rbp), %rax	# fcb, tmp156
	movl	8(%rax), %eax	# fcb_5(D)->cepsize, D.6780
	subl	$1, %eax	#, D.6780
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6781
	movq	-96(%rbp), %rax	# mfc, tmp157
	movq	(%rax), %rax	# *mfc_10(D), D.6782
	leaq	4(%rax), %rcx	#, D.6782
	movq	-104(%rbp), %rax	# feat, tmp158
	movq	(%rax), %rax	# *feat_13(D), D.6782
	movq	%rcx, %rsi	# D.6782,
	movq	%rax, %rdi	# D.6782,
	call	memcpy	#
	.loc 1 456 0
	movq	-96(%rbp), %rax	# mfc, tmp159
	addq	$16, %rax	#, D.6783
	movq	(%rax), %rax	# *_15, D.6782
	addq	$4, %rax	#, tmp160
	movq	%rax, -56(%rbp)	# tmp160, w
	.loc 1 457 0
	movq	-96(%rbp), %rax	# mfc, tmp161
	subq	$16, %rax	#, D.6783
	movq	(%rax), %rax	# *_18, D.6782
	addq	$4, %rax	#, tmp162
	movq	%rax, -48(%rbp)	# tmp162, _w
	.loc 1 459 0
	movq	-104(%rbp), %rax	# feat, tmp163
	movq	8(%rax), %rax	# MEM[(float32 * *)feat_13(D) + 8B], tmp164
	movq	%rax, -40(%rbp)	# tmp164, f
	.loc 1 460 0
	movl	$0, -72(%rbp)	#, i
	jmp	.L69	#
.L70:
	.loc 1 461 0 discriminator 2
	movl	-72(%rbp), %eax	# i, tmp165
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6781
	movq	-40(%rbp), %rax	# f, tmp166
	addq	%rdx, %rax	# D.6781, D.6782
	movl	-72(%rbp), %edx	# i, tmp167
	movslq	%edx, %rdx	# tmp167, D.6781
	leaq	0(,%rdx,4), %rcx	#, D.6781
	movq	-56(%rbp), %rdx	# w, tmp168
	addq	%rcx, %rdx	# D.6781, D.6782
	movss	(%rdx), %xmm0	# *_30, D.6784
	movl	-72(%rbp), %edx	# i, tmp169
	movslq	%edx, %rdx	# tmp169, D.6781
	leaq	0(,%rdx,4), %rcx	#, D.6781
	movq	-48(%rbp), %rdx	# _w, tmp170
	addq	%rcx, %rdx	# D.6781, D.6782
	movss	(%rdx), %xmm1	# *_34, D.6784
	subss	%xmm1, %xmm0	# D.6784, D.6784
	movss	%xmm0, (%rax)	# D.6784, *_27
	.loc 1 460 0 discriminator 2
	addl	$1, -72(%rbp)	#, i
.L69:
	.loc 1 460 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# fcb, tmp171
	movl	8(%rax), %eax	# fcb_5(D)->cepsize, D.6780
	subl	$1, %eax	#, D.6780
	cmpl	-72(%rbp), %eax	# i, D.6780
	jg	.L70	#,
	.loc 1 463 0 is_stmt 1
	movq	-96(%rbp), %rax	# mfc, tmp172
	addq	$32, %rax	#, D.6783
	movq	(%rax), %rax	# *_38, D.6782
	addq	$4, %rax	#, tmp173
	movq	%rax, -56(%rbp)	# tmp173, w
	.loc 1 464 0
	movq	-96(%rbp), %rax	# mfc, tmp174
	subq	$32, %rax	#, D.6783
	movq	(%rax), %rax	# *_41, D.6782
	addq	$4, %rax	#, tmp175
	movq	%rax, -48(%rbp)	# tmp175, _w
	.loc 1 466 0
	movl	$0, -68(%rbp)	#, j
	jmp	.L71	#
.L72:
	.loc 1 467 0 discriminator 2
	movl	-72(%rbp), %eax	# i, tmp176
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6781
	movq	-40(%rbp), %rax	# f, tmp177
	addq	%rdx, %rax	# D.6781, D.6782
	movl	-68(%rbp), %edx	# j, tmp178
	movslq	%edx, %rdx	# tmp178, D.6781
	leaq	0(,%rdx,4), %rcx	#, D.6781
	movq	-56(%rbp), %rdx	# w, tmp179
	addq	%rcx, %rdx	# D.6781, D.6782
	movss	(%rdx), %xmm0	# *_52, D.6784
	movl	-68(%rbp), %edx	# j, tmp180
	movslq	%edx, %rdx	# tmp180, D.6781
	leaq	0(,%rdx,4), %rcx	#, D.6781
	movq	-48(%rbp), %rdx	# _w, tmp181
	addq	%rcx, %rdx	# D.6781, D.6782
	movss	(%rdx), %xmm1	# *_56, D.6784
	subss	%xmm1, %xmm0	# D.6784, D.6784
	movss	%xmm0, (%rax)	# D.6784, *_49
	.loc 1 466 0 discriminator 2
	addl	$1, -72(%rbp)	#, i
	addl	$1, -68(%rbp)	#, j
.L71:
	.loc 1 466 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# fcb, tmp182
	movl	8(%rax), %eax	# fcb_5(D)->cepsize, D.6780
	subl	$1, %eax	#, D.6780
	cmpl	-68(%rbp), %eax	# j, D.6780
	jg	.L72	#,
	.loc 1 470 0 is_stmt 1
	movq	-96(%rbp), %rax	# mfc, tmp183
	addq	$24, %rax	#, D.6783
	movq	(%rax), %rax	# *_61, D.6782
	addq	$4, %rax	#, tmp184
	movq	%rax, -32(%rbp)	# tmp184, w1
	.loc 1 471 0
	movq	-96(%rbp), %rax	# mfc, tmp185
	subq	$8, %rax	#, D.6783
	movq	(%rax), %rax	# *_64, D.6782
	addq	$4, %rax	#, tmp186
	movq	%rax, -24(%rbp)	# tmp186, _w1
	.loc 1 472 0
	movq	-96(%rbp), %rax	# mfc, tmp187
	addq	$8, %rax	#, D.6783
	movq	(%rax), %rax	# *_67, D.6782
	addq	$4, %rax	#, tmp188
	movq	%rax, -16(%rbp)	# tmp188, w_1
	.loc 1 473 0
	movq	-96(%rbp), %rax	# mfc, tmp189
	subq	$24, %rax	#, D.6783
	movq	(%rax), %rax	# *_70, D.6782
	addq	$4, %rax	#, tmp190
	movq	%rax, -8(%rbp)	# tmp190, _w_1
	.loc 1 475 0
	movq	-104(%rbp), %rax	# feat, tmp191
	movq	24(%rax), %rax	# MEM[(float32 * *)feat_13(D) + 24B], tmp192
	movq	%rax, -40(%rbp)	# tmp192, f
	.loc 1 476 0
	movl	$0, -72(%rbp)	#, i
	jmp	.L73	#
.L74:
	.loc 1 477 0 discriminator 2
	movl	-72(%rbp), %eax	# i, tmp193
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6781
	movq	-32(%rbp), %rax	# w1, tmp194
	addq	%rdx, %rax	# D.6781, D.6782
	movss	(%rax), %xmm0	# *_79, D.6784
	movl	-72(%rbp), %eax	# i, tmp195
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6781
	movq	-24(%rbp), %rax	# _w1, tmp196
	addq	%rdx, %rax	# D.6781, D.6782
	movss	(%rax), %xmm1	# *_83, D.6784
	subss	%xmm1, %xmm0	# D.6784, tmp197
	movss	%xmm0, -64(%rbp)	# tmp197, d1
	.loc 1 478 0 discriminator 2
	movl	-72(%rbp), %eax	# i, tmp198
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6781
	movq	-16(%rbp), %rax	# w_1, tmp199
	addq	%rdx, %rax	# D.6781, D.6782
	movss	(%rax), %xmm0	# *_88, D.6784
	movl	-72(%rbp), %eax	# i, tmp200
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6781
	movq	-8(%rbp), %rax	# _w_1, tmp201
	addq	%rdx, %rax	# D.6781, D.6782
	movss	(%rax), %xmm1	# *_92, D.6784
	subss	%xmm1, %xmm0	# D.6784, tmp202
	movss	%xmm0, -60(%rbp)	# tmp202, d2
	.loc 1 480 0 discriminator 2
	movl	-72(%rbp), %eax	# i, tmp203
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6781
	movq	-40(%rbp), %rax	# f, tmp204
	addq	%rdx, %rax	# D.6781, D.6782
	movss	-64(%rbp), %xmm0	# d1, tmp205
	subss	-60(%rbp), %xmm0	# d2, D.6784
	movss	%xmm0, (%rax)	# D.6784, *_97
	.loc 1 476 0 discriminator 2
	addl	$1, -72(%rbp)	#, i
.L73:
	.loc 1 476 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# fcb, tmp206
	movl	8(%rax), %eax	# fcb_5(D)->cepsize, D.6780
	subl	$1, %eax	#, D.6780
	cmpl	-72(%rbp), %eax	# i, D.6780
	jg	.L74	#,
	.loc 1 484 0 is_stmt 1
	movq	-104(%rbp), %rax	# feat, tmp207
	movq	16(%rax), %rax	# MEM[(float32 * *)feat_13(D) + 16B], tmp208
	movq	%rax, -40(%rbp)	# tmp208, f
	.loc 1 485 0
	movq	-96(%rbp), %rax	# mfc, tmp209
	movq	(%rax), %rax	# *mfc_10(D), D.6782
	movl	(%rax), %eax	# *_101, D.6784
	movq	-40(%rbp), %rdx	# f, tmp210
	movl	%eax, (%rdx)	# D.6784, *f_100
	.loc 1 486 0
	movq	-40(%rbp), %rax	# f, tmp211
	leaq	4(%rax), %rdx	#, D.6782
	movq	-96(%rbp), %rax	# mfc, tmp212
	addq	$16, %rax	#, D.6783
	movq	(%rax), %rax	# *_104, D.6782
	movss	(%rax), %xmm0	# *_105, D.6784
	movq	-96(%rbp), %rax	# mfc, tmp213
	subq	$16, %rax	#, D.6783
	movq	(%rax), %rax	# *_107, D.6782
	movss	(%rax), %xmm1	# *_108, D.6784
	subss	%xmm1, %xmm0	# D.6784, D.6784
	movss	%xmm0, (%rdx)	# D.6784, *_103
	.loc 1 488 0
	movq	-96(%rbp), %rax	# mfc, tmp214
	addq	$24, %rax	#, D.6783
	movq	(%rax), %rax	# *_111, D.6782
	movss	(%rax), %xmm0	# *_112, D.6784
	movq	-96(%rbp), %rax	# mfc, tmp215
	subq	$8, %rax	#, D.6783
	movq	(%rax), %rax	# *_114, D.6782
	movss	(%rax), %xmm1	# *_115, D.6784
	subss	%xmm1, %xmm0	# D.6784, tmp216
	movss	%xmm0, -64(%rbp)	# tmp216, d1
	.loc 1 489 0
	movq	-96(%rbp), %rax	# mfc, tmp217
	addq	$8, %rax	#, D.6783
	movq	(%rax), %rax	# *_118, D.6782
	movss	(%rax), %xmm0	# *_119, D.6784
	movq	-96(%rbp), %rax	# mfc, tmp218
	subq	$24, %rax	#, D.6783
	movq	(%rax), %rax	# *_121, D.6782
	movss	(%rax), %xmm1	# *_122, D.6784
	subss	%xmm1, %xmm0	# D.6784, tmp219
	movss	%xmm0, -60(%rbp)	# tmp219, d2
	.loc 1 490 0
	movq	-40(%rbp), %rax	# f, tmp220
	addq	$8, %rax	#, D.6782
	movss	-64(%rbp), %xmm0	# d1, tmp221
	subss	-60(%rbp), %xmm0	# d2, D.6784
	movss	%xmm0, (%rax)	# D.6784, *_125
	.loc 1 491 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	feat_s2_4x_cep2feat, .-feat_s2_4x_cep2feat
	.type	feat_s3_1x39_cep2feat, @function
feat_s3_1x39_cep2feat:
.LFB9:
	.loc 1 495 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$112, %rsp	#,
	movq	%rdi, -88(%rbp)	# fcb, fcb
	movq	%rsi, -96(%rbp)	# mfc, mfc
	movq	%rdx, -104(%rbp)	# feat, feat
	.loc 1 510 0
	movq	-88(%rbp), %rax	# fcb, tmp147
	movl	8(%rax), %eax	# fcb_3(D)->cepsize, D.6785
	subl	$1, %eax	#, D.6785
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6786
	movq	-96(%rbp), %rax	# mfc, tmp148
	movq	(%rax), %rax	# *mfc_8(D), D.6787
	leaq	4(%rax), %rcx	#, D.6787
	movq	-104(%rbp), %rax	# feat, tmp149
	movq	(%rax), %rax	# *feat_11(D), D.6787
	movq	%rcx, %rsi	# D.6787,
	movq	%rax, %rdi	# D.6787,
	call	memcpy	#
	.loc 1 514 0
	movq	-104(%rbp), %rax	# feat, tmp150
	movq	(%rax), %rdx	# *feat_11(D), D.6787
	movq	-88(%rbp), %rax	# fcb, tmp151
	movl	8(%rax), %eax	# fcb_3(D)->cepsize, D.6785
	cltq
	salq	$2, %rax	#, D.6786
	subq	$4, %rax	#, D.6788
	addq	%rdx, %rax	# D.6787, tmp152
	movq	%rax, -56(%rbp)	# tmp152, f
	.loc 1 515 0
	movq	-96(%rbp), %rax	# mfc, tmp153
	addq	$16, %rax	#, D.6789
	movq	(%rax), %rax	# *_19, D.6787
	addq	$4, %rax	#, tmp154
	movq	%rax, -48(%rbp)	# tmp154, w
	.loc 1 516 0
	movq	-96(%rbp), %rax	# mfc, tmp155
	subq	$16, %rax	#, D.6789
	movq	(%rax), %rax	# *_22, D.6787
	addq	$4, %rax	#, tmp156
	movq	%rax, -40(%rbp)	# tmp156, _w
	.loc 1 518 0
	movl	$0, -68(%rbp)	#, i
	jmp	.L76	#
.L77:
	.loc 1 519 0 discriminator 2
	movl	-68(%rbp), %eax	# i, tmp157
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6786
	movq	-56(%rbp), %rax	# f, tmp158
	addq	%rdx, %rax	# D.6786, D.6787
	movl	-68(%rbp), %edx	# i, tmp159
	movslq	%edx, %rdx	# tmp159, D.6786
	leaq	0(,%rdx,4), %rcx	#, D.6786
	movq	-48(%rbp), %rdx	# w, tmp160
	addq	%rcx, %rdx	# D.6786, D.6787
	movss	(%rdx), %xmm0	# *_33, D.6790
	movl	-68(%rbp), %edx	# i, tmp161
	movslq	%edx, %rdx	# tmp161, D.6786
	leaq	0(,%rdx,4), %rcx	#, D.6786
	movq	-40(%rbp), %rdx	# _w, tmp162
	addq	%rcx, %rdx	# D.6786, D.6787
	movss	(%rdx), %xmm1	# *_37, D.6790
	subss	%xmm1, %xmm0	# D.6790, D.6790
	movss	%xmm0, (%rax)	# D.6790, *_30
	.loc 1 518 0 discriminator 2
	addl	$1, -68(%rbp)	#, i
.L76:
	.loc 1 518 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# fcb, tmp163
	movl	8(%rax), %eax	# fcb_3(D)->cepsize, D.6785
	subl	$1, %eax	#, D.6785
	cmpl	-68(%rbp), %eax	# i, D.6785
	jg	.L77	#,
	.loc 1 522 0 is_stmt 1
	movq	-88(%rbp), %rax	# fcb, tmp164
	movl	8(%rax), %eax	# fcb_3(D)->cepsize, D.6785
	cltq
	salq	$2, %rax	#, D.6786
	subq	$4, %rax	#, D.6788
	addq	%rax, -56(%rbp)	# D.6788, f
	.loc 1 524 0
	movq	-96(%rbp), %rax	# mfc, tmp165
	movq	(%rax), %rax	# *mfc_8(D), D.6787
	movl	(%rax), %eax	# *_46, D.6790
	movq	-56(%rbp), %rdx	# f, tmp166
	movl	%eax, (%rdx)	# D.6790, *f_45
	.loc 1 525 0
	movq	-56(%rbp), %rax	# f, tmp167
	leaq	4(%rax), %rdx	#, D.6787
	movq	-96(%rbp), %rax	# mfc, tmp168
	addq	$16, %rax	#, D.6789
	movq	(%rax), %rax	# *_49, D.6787
	movss	(%rax), %xmm0	# *_50, D.6790
	movq	-96(%rbp), %rax	# mfc, tmp169
	subq	$16, %rax	#, D.6789
	movq	(%rax), %rax	# *_52, D.6787
	movss	(%rax), %xmm1	# *_53, D.6790
	subss	%xmm1, %xmm0	# D.6790, D.6790
	movss	%xmm0, (%rdx)	# D.6790, *_48
	.loc 1 527 0
	movq	-96(%rbp), %rax	# mfc, tmp170
	addq	$24, %rax	#, D.6789
	movq	(%rax), %rax	# *_56, D.6787
	movss	(%rax), %xmm0	# *_57, D.6790
	movq	-96(%rbp), %rax	# mfc, tmp171
	subq	$8, %rax	#, D.6789
	movq	(%rax), %rax	# *_59, D.6787
	movss	(%rax), %xmm1	# *_60, D.6790
	subss	%xmm1, %xmm0	# D.6790, tmp172
	movss	%xmm0, -64(%rbp)	# tmp172, d1
	.loc 1 528 0
	movq	-96(%rbp), %rax	# mfc, tmp173
	addq	$8, %rax	#, D.6789
	movq	(%rax), %rax	# *_63, D.6787
	movss	(%rax), %xmm0	# *_64, D.6790
	movq	-96(%rbp), %rax	# mfc, tmp174
	subq	$24, %rax	#, D.6789
	movq	(%rax), %rax	# *_66, D.6787
	movss	(%rax), %xmm1	# *_67, D.6790
	subss	%xmm1, %xmm0	# D.6790, tmp175
	movss	%xmm0, -60(%rbp)	# tmp175, d2
	.loc 1 529 0
	movq	-56(%rbp), %rax	# f, tmp176
	addq	$8, %rax	#, D.6787
	movss	-64(%rbp), %xmm0	# d1, tmp177
	subss	-60(%rbp), %xmm0	# d2, D.6790
	movss	%xmm0, (%rax)	# D.6790, *_70
	.loc 1 532 0
	addq	$12, -56(%rbp)	#, f
	.loc 1 534 0
	movq	-96(%rbp), %rax	# mfc, tmp178
	addq	$24, %rax	#, D.6789
	movq	(%rax), %rax	# *_73, D.6787
	addq	$4, %rax	#, tmp179
	movq	%rax, -32(%rbp)	# tmp179, w1
	.loc 1 535 0
	movq	-96(%rbp), %rax	# mfc, tmp180
	subq	$8, %rax	#, D.6789
	movq	(%rax), %rax	# *_76, D.6787
	addq	$4, %rax	#, tmp181
	movq	%rax, -24(%rbp)	# tmp181, _w1
	.loc 1 536 0
	movq	-96(%rbp), %rax	# mfc, tmp182
	addq	$8, %rax	#, D.6789
	movq	(%rax), %rax	# *_79, D.6787
	addq	$4, %rax	#, tmp183
	movq	%rax, -16(%rbp)	# tmp183, w_1
	.loc 1 537 0
	movq	-96(%rbp), %rax	# mfc, tmp184
	subq	$24, %rax	#, D.6789
	movq	(%rax), %rax	# *_82, D.6787
	addq	$4, %rax	#, tmp185
	movq	%rax, -8(%rbp)	# tmp185, _w_1
	.loc 1 539 0
	movl	$0, -68(%rbp)	#, i
	jmp	.L78	#
.L79:
	.loc 1 540 0 discriminator 2
	movl	-68(%rbp), %eax	# i, tmp186
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6786
	movq	-32(%rbp), %rax	# w1, tmp187
	addq	%rdx, %rax	# D.6786, D.6787
	movss	(%rax), %xmm0	# *_90, D.6790
	movl	-68(%rbp), %eax	# i, tmp188
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6786
	movq	-24(%rbp), %rax	# _w1, tmp189
	addq	%rdx, %rax	# D.6786, D.6787
	movss	(%rax), %xmm1	# *_94, D.6790
	subss	%xmm1, %xmm0	# D.6790, tmp190
	movss	%xmm0, -64(%rbp)	# tmp190, d1
	.loc 1 541 0 discriminator 2
	movl	-68(%rbp), %eax	# i, tmp191
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6786
	movq	-16(%rbp), %rax	# w_1, tmp192
	addq	%rdx, %rax	# D.6786, D.6787
	movss	(%rax), %xmm0	# *_99, D.6790
	movl	-68(%rbp), %eax	# i, tmp193
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6786
	movq	-8(%rbp), %rax	# _w_1, tmp194
	addq	%rdx, %rax	# D.6786, D.6787
	movss	(%rax), %xmm1	# *_103, D.6790
	subss	%xmm1, %xmm0	# D.6790, tmp195
	movss	%xmm0, -60(%rbp)	# tmp195, d2
	.loc 1 543 0 discriminator 2
	movl	-68(%rbp), %eax	# i, tmp196
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6786
	movq	-56(%rbp), %rax	# f, tmp197
	addq	%rdx, %rax	# D.6786, D.6787
	movss	-64(%rbp), %xmm0	# d1, tmp198
	subss	-60(%rbp), %xmm0	# d2, D.6790
	movss	%xmm0, (%rax)	# D.6790, *_108
	.loc 1 539 0 discriminator 2
	addl	$1, -68(%rbp)	#, i
.L78:
	.loc 1 539 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# fcb, tmp199
	movl	8(%rax), %eax	# fcb_3(D)->cepsize, D.6785
	subl	$1, %eax	#, D.6785
	cmpl	-68(%rbp), %eax	# i, D.6785
	jg	.L79	#,
	.loc 1 545 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	feat_s3_1x39_cep2feat, .-feat_s3_1x39_cep2feat
	.type	feat_s3_cep, @function
feat_s3_cep:
.LFB10:
	.loc 1 549 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -8(%rbp)	# fcb, fcb
	movq	%rsi, -16(%rbp)	# mfc, mfc
	movq	%rdx, -24(%rbp)	# feat, feat
	.loc 1 558 0
	movq	-8(%rbp), %rax	# fcb, tmp64
	movl	12(%rax), %eax	# fcb_1(D)->cepsize_used, D.6791
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6792
	movq	-16(%rbp), %rax	# mfc, tmp65
	movq	(%rax), %rcx	# *mfc_5(D), D.6793
	movq	-24(%rbp), %rax	# feat, tmp66
	movq	(%rax), %rax	# *feat_7(D), D.6793
	movq	%rcx, %rsi	# D.6793,
	movq	%rax, %rdi	# D.6793,
	call	memcpy	#
	.loc 1 559 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	feat_s3_cep, .-feat_s3_cep
	.type	feat_s3_cep_dcep, @function
feat_s3_cep_dcep:
.LFB11:
	.loc 1 563 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -40(%rbp)	# fcb, fcb
	movq	%rsi, -48(%rbp)	# mfc, mfc
	movq	%rdx, -56(%rbp)	# feat, feat
	.loc 1 576 0
	movq	-40(%rbp), %rax	# fcb, tmp81
	movl	12(%rax), %eax	# fcb_2(D)->cepsize_used, D.6794
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6795
	movq	-48(%rbp), %rax	# mfc, tmp82
	movq	(%rax), %rcx	# *mfc_6(D), D.6796
	movq	-56(%rbp), %rax	# feat, tmp83
	movq	(%rax), %rax	# *feat_8(D), D.6796
	movq	%rcx, %rsi	# D.6796,
	movq	%rax, %rdi	# D.6796,
	call	memcpy	#
	.loc 1 581 0
	movq	-56(%rbp), %rax	# feat, tmp84
	movq	(%rax), %rdx	# *feat_8(D), D.6796
	movq	-40(%rbp), %rax	# fcb, tmp85
	movl	12(%rax), %eax	# fcb_2(D)->cepsize_used, D.6794
	cltq
	salq	$2, %rax	#, D.6795
	addq	%rdx, %rax	# D.6796, tmp86
	movq	%rax, -24(%rbp)	# tmp86, f
	.loc 1 582 0
	movq	-48(%rbp), %rax	# mfc, tmp87
	movq	16(%rax), %rax	# MEM[(float32 * *)mfc_6(D) + 16B], tmp88
	movq	%rax, -16(%rbp)	# tmp88, w
	.loc 1 583 0
	movq	-48(%rbp), %rax	# mfc, tmp89
	movq	-16(%rax), %rax	# MEM[(float32 * *)mfc_6(D) + -16B], tmp90
	movq	%rax, -8(%rbp)	# tmp90, _w
	.loc 1 585 0
	movl	$0, -28(%rbp)	#, i
	jmp	.L82	#
.L83:
	.loc 1 586 0 discriminator 2
	movl	-28(%rbp), %eax	# i, tmp91
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6795
	movq	-24(%rbp), %rax	# f, tmp92
	addq	%rdx, %rax	# D.6795, D.6796
	movl	-28(%rbp), %edx	# i, tmp93
	movslq	%edx, %rdx	# tmp93, D.6795
	leaq	0(,%rdx,4), %rcx	#, D.6795
	movq	-16(%rbp), %rdx	# w, tmp94
	addq	%rcx, %rdx	# D.6795, D.6796
	movss	(%rdx), %xmm0	# *_24, D.6797
	movl	-28(%rbp), %edx	# i, tmp95
	movslq	%edx, %rdx	# tmp95, D.6795
	leaq	0(,%rdx,4), %rcx	#, D.6795
	movq	-8(%rbp), %rdx	# _w, tmp96
	addq	%rcx, %rdx	# D.6795, D.6796
	movss	(%rdx), %xmm1	# *_28, D.6797
	subss	%xmm1, %xmm0	# D.6797, D.6797
	movss	%xmm0, (%rax)	# D.6797, *_21
	.loc 1 585 0 discriminator 2
	addl	$1, -28(%rbp)	#, i
.L82:
	.loc 1 585 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax	# fcb, tmp97
	movl	12(%rax), %eax	# fcb_2(D)->cepsize_used, D.6794
	cmpl	-28(%rbp), %eax	# i, D.6794
	jg	.L83	#,
	.loc 1 587 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	feat_s3_cep_dcep, .-feat_s3_cep_dcep
	.globl	feat_1s_c_d_dd_cep2feat
	.type	feat_1s_c_d_dd_cep2feat, @function
feat_1s_c_d_dd_cep2feat:
.LFB12:
	.loc 1 590 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$112, %rsp	#,
	movq	%rdi, -88(%rbp)	# fcb, fcb
	movq	%rsi, -96(%rbp)	# mfc, mfc
	movq	%rdx, -104(%rbp)	# feat, feat
	.loc 1 605 0
	movq	-88(%rbp), %rax	# fcb, tmp105
	movl	8(%rax), %eax	# fcb_3(D)->cepsize, D.6798
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6799
	movq	-96(%rbp), %rax	# mfc, tmp106
	movq	(%rax), %rcx	# *mfc_7(D), D.6800
	movq	-104(%rbp), %rax	# feat, tmp107
	movq	(%rax), %rax	# *feat_9(D), D.6800
	movq	%rcx, %rsi	# D.6800,
	movq	%rax, %rdi	# D.6800,
	call	memcpy	#
	.loc 1 610 0
	movq	-104(%rbp), %rax	# feat, tmp108
	movq	(%rax), %rdx	# *feat_9(D), D.6800
	movq	-88(%rbp), %rax	# fcb, tmp109
	movl	8(%rax), %eax	# fcb_3(D)->cepsize, D.6798
	cltq
	salq	$2, %rax	#, D.6799
	addq	%rdx, %rax	# D.6800, tmp110
	movq	%rax, -56(%rbp)	# tmp110, f
	.loc 1 611 0
	movq	-96(%rbp), %rax	# mfc, tmp111
	movq	16(%rax), %rax	# MEM[(float32 * *)mfc_7(D) + 16B], tmp112
	movq	%rax, -48(%rbp)	# tmp112, w
	.loc 1 612 0
	movq	-96(%rbp), %rax	# mfc, tmp113
	movq	-16(%rax), %rax	# MEM[(float32 * *)mfc_7(D) + -16B], tmp114
	movq	%rax, -40(%rbp)	# tmp114, _w
	.loc 1 614 0
	movl	$0, -68(%rbp)	#, i
	jmp	.L85	#
.L86:
	.loc 1 615 0 discriminator 2
	movl	-68(%rbp), %eax	# i, tmp115
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6799
	movq	-56(%rbp), %rax	# f, tmp116
	addq	%rdx, %rax	# D.6799, D.6800
	movl	-68(%rbp), %edx	# i, tmp117
	movslq	%edx, %rdx	# tmp117, D.6799
	leaq	0(,%rdx,4), %rcx	#, D.6799
	movq	-48(%rbp), %rdx	# w, tmp118
	addq	%rcx, %rdx	# D.6799, D.6800
	movss	(%rdx), %xmm0	# *_25, D.6801
	movl	-68(%rbp), %edx	# i, tmp119
	movslq	%edx, %rdx	# tmp119, D.6799
	leaq	0(,%rdx,4), %rcx	#, D.6799
	movq	-40(%rbp), %rdx	# _w, tmp120
	addq	%rcx, %rdx	# D.6799, D.6800
	movss	(%rdx), %xmm1	# *_29, D.6801
	subss	%xmm1, %xmm0	# D.6801, D.6801
	movss	%xmm0, (%rax)	# D.6801, *_22
	.loc 1 614 0 discriminator 2
	addl	$1, -68(%rbp)	#, i
.L85:
	.loc 1 614 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# fcb, tmp121
	movl	8(%rax), %eax	# fcb_3(D)->cepsize, D.6798
	cmpl	-68(%rbp), %eax	# i, D.6798
	jg	.L86	#,
	.loc 1 621 0 is_stmt 1
	movq	-88(%rbp), %rax	# fcb, tmp122
	movl	8(%rax), %eax	# fcb_3(D)->cepsize, D.6798
	cltq
	salq	$2, %rax	#, D.6799
	addq	%rax, -56(%rbp)	# D.6799, f
	.loc 1 623 0
	movq	-96(%rbp), %rax	# mfc, tmp123
	movq	24(%rax), %rax	# MEM[(float32 * *)mfc_7(D) + 24B], tmp124
	movq	%rax, -32(%rbp)	# tmp124, w1
	.loc 1 624 0
	movq	-96(%rbp), %rax	# mfc, tmp125
	movq	-8(%rax), %rax	# MEM[(float32 * *)mfc_7(D) + -8B], tmp126
	movq	%rax, -24(%rbp)	# tmp126, _w1
	.loc 1 625 0
	movq	-96(%rbp), %rax	# mfc, tmp127
	movq	8(%rax), %rax	# MEM[(float32 * *)mfc_7(D) + 8B], tmp128
	movq	%rax, -16(%rbp)	# tmp128, w_1
	.loc 1 626 0
	movq	-96(%rbp), %rax	# mfc, tmp129
	movq	-24(%rax), %rax	# MEM[(float32 * *)mfc_7(D) + -24B], tmp130
	movq	%rax, -8(%rbp)	# tmp130, _w_1
	.loc 1 628 0
	movl	$0, -68(%rbp)	#, i
	jmp	.L87	#
.L88:
	.loc 1 629 0 discriminator 2
	movl	-68(%rbp), %eax	# i, tmp131
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6799
	movq	-32(%rbp), %rax	# w1, tmp132
	addq	%rdx, %rax	# D.6799, D.6800
	movss	(%rax), %xmm0	# *_45, D.6801
	movl	-68(%rbp), %eax	# i, tmp133
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6799
	movq	-24(%rbp), %rax	# _w1, tmp134
	addq	%rdx, %rax	# D.6799, D.6800
	movss	(%rax), %xmm1	# *_49, D.6801
	subss	%xmm1, %xmm0	# D.6801, tmp135
	movss	%xmm0, -64(%rbp)	# tmp135, d1
	.loc 1 630 0 discriminator 2
	movl	-68(%rbp), %eax	# i, tmp136
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6799
	movq	-16(%rbp), %rax	# w_1, tmp137
	addq	%rdx, %rax	# D.6799, D.6800
	movss	(%rax), %xmm0	# *_54, D.6801
	movl	-68(%rbp), %eax	# i, tmp138
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6799
	movq	-8(%rbp), %rax	# _w_1, tmp139
	addq	%rdx, %rax	# D.6799, D.6800
	movss	(%rax), %xmm1	# *_58, D.6801
	subss	%xmm1, %xmm0	# D.6801, tmp140
	movss	%xmm0, -60(%rbp)	# tmp140, d2
	.loc 1 632 0 discriminator 2
	movl	-68(%rbp), %eax	# i, tmp141
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6799
	movq	-56(%rbp), %rax	# f, tmp142
	addq	%rdx, %rax	# D.6799, D.6800
	movss	-64(%rbp), %xmm0	# d1, tmp143
	subss	-60(%rbp), %xmm0	# d2, D.6801
	movss	%xmm0, (%rax)	# D.6801, *_63
	.loc 1 628 0 discriminator 2
	addl	$1, -68(%rbp)	#, i
.L87:
	.loc 1 628 0 is_stmt 0 discriminator 1
	movq	-88(%rbp), %rax	# fcb, tmp144
	movl	8(%rax), %eax	# fcb_3(D)->cepsize, D.6798
	cmpl	-68(%rbp), %eax	# i, D.6798
	jg	.L88	#,
	.loc 1 634 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	feat_1s_c_d_dd_cep2feat, .-feat_1s_c_d_dd_cep2feat
	.section	.rodata
	.align 8
.LC32:
	.string	"Initializing feature stream to type: '%s', CMN='%s', VARNORM='%s', AGC='%s'\n"
.LC33:
	.string	"s2_4x"
.LC34:
	.string	"s3_1x39"
.LC35:
	.string	"1s_c_d_dd"
.LC36:
	.string	"cep_dcep"
.LC37:
	.string	"%d%n"
.LC38:
	.string	"FATAL_ERROR"
	.align 8
.LC39:
	.string	"Bad feature type argument: '%s'\n"
.LC40:
	.string	"cep"
.LC41:
	.string	"%d"
.LC42:
	.string	"Bad feature type argument\n"
.LC43:
	.string	"%s%n"
.LC44:
	.string	"current"
.LC45:
	.string	"none"
.LC46:
	.string	"Unsupported CMN type '%s'\n"
.LC47:
	.string	"yes"
.LC48:
	.string	"no"
	.align 8
.LC49:
	.string	"Unsupported VARNORM type '%s'\n"
.LC50:
	.string	"max"
.LC51:
	.string	"Unsupported AGC type '%s'\n"
	.text
	.globl	feat_init
	.type	feat_init, @function
feat_init:
.LFB13:
	.loc 1 637 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$16472, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -16456(%rbp)	# type, type
	movq	%rsi, -16464(%rbp)	# cmn, cmn
	movq	%rdx, -16472(%rbp)	# varnorm, varnorm
	movq	%rcx, -16480(%rbp)	# agc, agc
	.loc 1 637 0
	movq	%fs:40, %rax	#, tmp254
	movq	%rax, -24(%rbp)	# tmp254, D.6810
	xorl	%eax, %eax	# tmp254
	.loc 1 642 0
	movl	$.LC0, %edx	#,
	movl	$642, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_info_header	#
	movq	-16480(%rbp), %rsi	# agc, tmp144
	movq	-16472(%rbp), %rcx	# varnorm, tmp145
	movq	-16464(%rbp), %rdx	# cmn, tmp146
	movq	-16456(%rbp), %rax	# type, tmp147
	movq	%rsi, %r8	# tmp144,
	movq	%rax, %rsi	# tmp147,
	movl	$.LC32, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 645 0
	movl	$645, %ecx	#,
	movl	$.LC1, %edx	#,
	movl	$56, %esi	#,
	movl	$1, %edi	#,
	call	__ckd_calloc__	#
	movq	%rax, -16424(%rbp)	# tmp148, fcb
	.loc 1 647 0
	movq	-16456(%rbp), %rax	# type, tmp149
	movl	$647, %edx	#,
	movl	$.LC1, %esi	#,
	movq	%rax, %rdi	# tmp149,
	call	__ckd_salloc__	#
	movq	-16424(%rbp), %rdx	# fcb, tmp150
	movq	%rax, (%rdx)	# D.6802, fcb_10->name
	.loc 1 648 0
	movq	-16456(%rbp), %rax	# type, tmp151
	movl	$.LC33, %esi	#,
	movq	%rax, %rdi	# tmp151,
	call	strcmp	#
	testl	%eax, %eax	# D.6803
	jne	.L90	#,
	.loc 1 650 0
	movq	-16424(%rbp), %rax	# fcb, tmp152
	movl	$13, 8(%rax)	#, fcb_10->cepsize
	.loc 1 651 0
	movq	-16424(%rbp), %rax	# fcb, tmp153
	movl	$13, 12(%rax)	#, fcb_10->cepsize_used
	.loc 1 652 0
	movq	-16424(%rbp), %rax	# fcb, tmp154
	movl	$4, 16(%rax)	#, fcb_10->n_stream
	.loc 1 653 0
	movl	$653, %ecx	#,
	movl	$.LC1, %edx	#,
	movl	$4, %esi	#,
	movl	$4, %edi	#,
	call	__ckd_calloc__	#
	movq	-16424(%rbp), %rdx	# fcb, tmp155
	movq	%rax, 24(%rdx)	# D.6804, fcb_10->stream_len
	.loc 1 654 0
	movq	-16424(%rbp), %rax	# fcb, tmp156
	movq	24(%rax), %rax	# fcb_10->stream_len, D.6805
	movl	$12, (%rax)	#, *_14
	.loc 1 655 0
	movq	-16424(%rbp), %rax	# fcb, tmp157
	movq	24(%rax), %rax	# fcb_10->stream_len, D.6805
	addq	$4, %rax	#, D.6805
	movl	$24, (%rax)	#, *_16
	.loc 1 656 0
	movq	-16424(%rbp), %rax	# fcb, tmp158
	movq	24(%rax), %rax	# fcb_10->stream_len, D.6805
	addq	$8, %rax	#, D.6805
	movl	$3, (%rax)	#, *_18
	.loc 1 657 0
	movq	-16424(%rbp), %rax	# fcb, tmp159
	movq	24(%rax), %rax	# fcb_10->stream_len, D.6805
	addq	$12, %rax	#, D.6805
	movl	$12, (%rax)	#, *_20
	.loc 1 658 0
	movq	-16424(%rbp), %rax	# fcb, tmp160
	movl	$4, 32(%rax)	#, fcb_10->window_size
	.loc 1 659 0
	movq	-16424(%rbp), %rax	# fcb, tmp161
	movq	$feat_s2_4x_cep2feat, 48(%rax)	#, fcb_10->compute_feat
	jmp	.L91	#
.L90:
	.loc 1 660 0
	movq	-16456(%rbp), %rax	# type, tmp162
	movl	$.LC34, %esi	#,
	movq	%rax, %rdi	# tmp162,
	call	strcmp	#
	testl	%eax, %eax	# D.6803
	jne	.L92	#,
	.loc 1 662 0
	movq	-16424(%rbp), %rax	# fcb, tmp163
	movl	$13, 8(%rax)	#, fcb_10->cepsize
	.loc 1 663 0
	movq	-16424(%rbp), %rax	# fcb, tmp164
	movl	$13, 12(%rax)	#, fcb_10->cepsize_used
	.loc 1 664 0
	movq	-16424(%rbp), %rax	# fcb, tmp165
	movl	$1, 16(%rax)	#, fcb_10->n_stream
	.loc 1 665 0
	movl	$665, %ecx	#,
	movl	$.LC1, %edx	#,
	movl	$4, %esi	#,
	movl	$1, %edi	#,
	call	__ckd_calloc__	#
	movq	-16424(%rbp), %rdx	# fcb, tmp166
	movq	%rax, 24(%rdx)	# D.6804, fcb_10->stream_len
	.loc 1 666 0
	movq	-16424(%rbp), %rax	# fcb, tmp167
	movq	24(%rax), %rax	# fcb_10->stream_len, D.6805
	movl	$39, (%rax)	#, *_23
	.loc 1 667 0
	movq	-16424(%rbp), %rax	# fcb, tmp168
	movl	$3, 32(%rax)	#, fcb_10->window_size
	.loc 1 668 0
	movq	-16424(%rbp), %rax	# fcb, tmp169
	movq	$feat_s3_1x39_cep2feat, 48(%rax)	#, fcb_10->compute_feat
	jmp	.L91	#
.L92:
	.loc 1 669 0
	movq	-16456(%rbp), %rax	# type, tmp170
	movl	$.LC35, %esi	#,
	movq	%rax, %rdi	# tmp170,
	call	strcmp	#
	testl	%eax, %eax	# D.6803
	jne	.L93	#,
	.loc 1 670 0
	movq	-16424(%rbp), %rax	# fcb, tmp171
	movl	$13, 8(%rax)	#, fcb_10->cepsize
	.loc 1 671 0
	movq	-16424(%rbp), %rax	# fcb, tmp172
	movl	$13, 12(%rax)	#, fcb_10->cepsize_used
	.loc 1 672 0
	movq	-16424(%rbp), %rax	# fcb, tmp173
	movl	$1, 16(%rax)	#, fcb_10->n_stream
	.loc 1 673 0
	movl	$673, %ecx	#,
	movl	$.LC1, %edx	#,
	movl	$4, %esi	#,
	movl	$1, %edi	#,
	call	__ckd_calloc__	#
	movq	-16424(%rbp), %rdx	# fcb, tmp174
	movq	%rax, 24(%rdx)	# D.6804, fcb_10->stream_len
	.loc 1 674 0
	movq	-16424(%rbp), %rax	# fcb, tmp175
	movq	24(%rax), %rax	# fcb_10->stream_len, D.6805
	movl	$39, (%rax)	#, *_26
	.loc 1 675 0
	movq	-16424(%rbp), %rax	# fcb, tmp176
	movl	$3, 32(%rax)	#, fcb_10->window_size
	.loc 1 676 0
	movq	-16424(%rbp), %rax	# fcb, tmp177
	movq	$feat_1s_c_d_dd_cep2feat, 48(%rax)	#, fcb_10->compute_feat
	jmp	.L91	#
.L93:
	.loc 1 677 0
	movq	-16456(%rbp), %rax	# type, tmp178
	movl	$8, %edx	#,
	movl	$.LC36, %esi	#,
	movq	%rax, %rdi	# tmp178,
	call	strncmp	#
	testl	%eax, %eax	# D.6803
	jne	.L94	#,
	.loc 1 679 0
	movq	-16424(%rbp), %rax	# fcb, tmp179
	movl	$13, 8(%rax)	#, fcb_10->cepsize
	.loc 1 681 0
	movq	-16456(%rbp), %rax	# type, tmp180
	addq	$8, %rax	#, D.6802
	movzbl	(%rax), %eax	# *_28, D.6806
	cmpb	$44, %al	#, D.6806
	jne	.L95	#,
	.loc 1 682 0
	movq	-16424(%rbp), %rax	# fcb, tmp181
	leaq	12(%rax), %rdx	#, D.6805
	movq	-16456(%rbp), %rax	# type, tmp182
	leaq	9(%rax), %rdi	#, D.6802
	leaq	-16444(%rbp), %rax	#, tmp183
	movq	%rax, %rcx	# tmp183,
	movl	$.LC37, %esi	#,
	movl	$0, %eax	#,
	call	__isoc99_sscanf	#
	cmpl	$1, %eax	#, D.6803
	jne	.L96	#,
	.loc 1 683 0 discriminator 1
	movl	-16444(%rbp), %eax	# l, l.62
	cltq
	leaq	9(%rax), %rdx	#, D.6807
	movq	-16456(%rbp), %rax	# type, tmp184
	addq	%rdx, %rax	# D.6807, D.6802
	movzbl	(%rax), %eax	# *_36, D.6806
	.loc 1 682 0 discriminator 1
	testb	%al, %al	# D.6806
	jne	.L96	#,
	.loc 1 684 0
	movq	-16424(%rbp), %rax	# fcb, tmp185
	movl	12(%rax), %eax	# fcb_10->cepsize_used, D.6803
	.loc 1 683 0
	testl	%eax, %eax	# D.6803
	jle	.L96	#,
	.loc 1 685 0
	movq	-16424(%rbp), %rax	# fcb, tmp186
	movl	12(%rax), %edx	# fcb_10->cepsize_used, D.6803
	movq	-16424(%rbp), %rax	# fcb, tmp187
	movl	8(%rax), %eax	# fcb_10->cepsize, D.6803
	.loc 1 684 0
	cmpl	%eax, %edx	# D.6803, D.6803
	jle	.L98	#,
.L96:
	.loc 1 686 0
	movl	$.LC38, %edx	#,
	movl	$686, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movq	-16456(%rbp), %rax	# type, tmp188
	movq	%rax, %rsi	# tmp188,
	movl	$.LC39, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
	jmp	.L98	#
.L95:
	.loc 1 688 0
	movq	-16424(%rbp), %rax	# fcb, tmp189
	movl	$13, 12(%rax)	#, fcb_10->cepsize_used
.L98:
	.loc 1 689 0 discriminator 1
	movq	-16424(%rbp), %rax	# fcb, tmp190
	movl	$1, 16(%rax)	#, fcb_10->n_stream
	.loc 1 690 0 discriminator 1
	movl	$690, %ecx	#,
	movl	$.LC1, %edx	#,
	movl	$4, %esi	#,
	movl	$1, %edi	#,
	call	__ckd_calloc__	#
	movq	-16424(%rbp), %rdx	# fcb, tmp191
	movq	%rax, 24(%rdx)	# D.6804, fcb_10->stream_len
	.loc 1 691 0 discriminator 1
	movq	-16424(%rbp), %rax	# fcb, tmp192
	movq	24(%rax), %rax	# fcb_10->stream_len, D.6805
	movq	-16424(%rbp), %rdx	# fcb, tmp193
	movl	12(%rdx), %edx	# fcb_10->cepsize_used, D.6803
	addl	%edx, %edx	# D.6803
	movl	%edx, (%rax)	# D.6803, *_42
	.loc 1 692 0 discriminator 1
	movq	-16424(%rbp), %rax	# fcb, tmp194
	movl	$2, 32(%rax)	#, fcb_10->window_size
	.loc 1 693 0 discriminator 1
	movq	-16424(%rbp), %rax	# fcb, tmp195
	movq	$feat_s3_cep_dcep, 48(%rax)	#, fcb_10->compute_feat
	jmp	.L91	#
.L94:
	.loc 1 694 0
	movq	-16456(%rbp), %rax	# type, tmp196
	movl	$3, %edx	#,
	movl	$.LC40, %esi	#,
	movq	%rax, %rdi	# tmp196,
	call	strncmp	#
	testl	%eax, %eax	# D.6803
	jne	.L99	#,
	.loc 1 696 0
	movq	-16424(%rbp), %rax	# fcb, tmp197
	movl	$13, 8(%rax)	#, fcb_10->cepsize
	.loc 1 698 0
	movq	-16456(%rbp), %rax	# type, tmp198
	addq	$3, %rax	#, D.6802
	movzbl	(%rax), %eax	# *_46, D.6806
	cmpb	$44, %al	#, D.6806
	jne	.L100	#,
	.loc 1 699 0
	movq	-16424(%rbp), %rax	# fcb, tmp199
	leaq	12(%rax), %rdx	#, D.6805
	movq	-16456(%rbp), %rax	# type, tmp200
	leaq	4(%rax), %rdi	#, D.6802
	leaq	-16444(%rbp), %rax	#, tmp201
	movq	%rax, %rcx	# tmp201,
	movl	$.LC37, %esi	#,
	movl	$0, %eax	#,
	call	__isoc99_sscanf	#
	cmpl	$1, %eax	#, D.6803
	jne	.L101	#,
	.loc 1 700 0 discriminator 1
	movl	-16444(%rbp), %eax	# l, l.63
	cltq
	leaq	4(%rax), %rdx	#, D.6807
	movq	-16456(%rbp), %rax	# type, tmp202
	addq	%rdx, %rax	# D.6807, D.6802
	movzbl	(%rax), %eax	# *_54, D.6806
	.loc 1 699 0 discriminator 1
	testb	%al, %al	# D.6806
	jne	.L101	#,
	.loc 1 701 0
	movq	-16424(%rbp), %rax	# fcb, tmp203
	movl	12(%rax), %eax	# fcb_10->cepsize_used, D.6803
	.loc 1 700 0
	testl	%eax, %eax	# D.6803
	jle	.L101	#,
	.loc 1 702 0
	movq	-16424(%rbp), %rax	# fcb, tmp204
	movl	12(%rax), %edx	# fcb_10->cepsize_used, D.6803
	movq	-16424(%rbp), %rax	# fcb, tmp205
	movl	8(%rax), %eax	# fcb_10->cepsize, D.6803
	.loc 1 701 0
	cmpl	%eax, %edx	# D.6803, D.6803
	jle	.L103	#,
.L101:
	.loc 1 703 0
	movl	$.LC38, %edx	#,
	movl	$703, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movq	-16456(%rbp), %rax	# type, tmp206
	movq	%rax, %rsi	# tmp206,
	movl	$.LC39, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
	jmp	.L103	#
.L100:
	.loc 1 705 0
	movq	-16424(%rbp), %rax	# fcb, tmp207
	movl	$13, 12(%rax)	#, fcb_10->cepsize_used
.L103:
	.loc 1 706 0 discriminator 2
	movq	-16424(%rbp), %rax	# fcb, tmp208
	movl	$1, 16(%rax)	#, fcb_10->n_stream
	.loc 1 707 0 discriminator 2
	movl	$707, %ecx	#,
	movl	$.LC1, %edx	#,
	movl	$4, %esi	#,
	movl	$1, %edi	#,
	call	__ckd_calloc__	#
	movq	-16424(%rbp), %rdx	# fcb, tmp209
	movq	%rax, 24(%rdx)	# D.6804, fcb_10->stream_len
	.loc 1 708 0 discriminator 2
	movq	-16424(%rbp), %rax	# fcb, tmp210
	movq	24(%rax), %rax	# fcb_10->stream_len, D.6805
	movq	-16424(%rbp), %rdx	# fcb, tmp211
	movl	12(%rdx), %edx	# fcb_10->cepsize_used, D.6803
	movl	%edx, (%rax)	# D.6803, *_60
	.loc 1 709 0 discriminator 2
	movq	-16424(%rbp), %rax	# fcb, tmp212
	movl	$0, 32(%rax)	#, fcb_10->window_size
	.loc 1 710 0 discriminator 2
	movq	-16424(%rbp), %rax	# fcb, tmp213
	movq	$feat_s3_cep, 48(%rax)	#, fcb_10->compute_feat
	jmp	.L91	#
.L99:
	.loc 1 716 0
	movq	-16456(%rbp), %rax	# type, tmp214
	movq	%rax, %rdi	# tmp214,
	call	strlen	#
	movl	%eax, -16444(%rbp)	# l.64, l
	.loc 1 717 0
	movl	$0, -16436(%rbp)	#, k
	.loc 1 718 0
	movl	$1, -16440(%rbp)	#, i
	jmp	.L104	#
.L106:
	.loc 1 719 0
	movl	-16440(%rbp), %eax	# i, tmp215
	movslq	%eax, %rdx	# tmp215, D.6807
	movq	-16456(%rbp), %rax	# type, tmp216
	addq	%rdx, %rax	# D.6807, D.6802
	movzbl	(%rax), %eax	# *_69, D.6806
	cmpb	$44, %al	#, D.6806
	jne	.L105	#,
	.loc 1 720 0
	movl	-16440(%rbp), %eax	# i, tmp217
	movslq	%eax, %rdx	# tmp217, D.6807
	movq	-16456(%rbp), %rax	# type, tmp218
	addq	%rdx, %rax	# D.6807, D.6802
	movb	$32, (%rax)	#, *_72
	.loc 1 721 0
	addl	$1, -16436(%rbp)	#, k
.L105:
	.loc 1 718 0
	addl	$1, -16440(%rbp)	#, i
.L104:
	.loc 1 718 0 is_stmt 0 discriminator 1
	movl	-16444(%rbp), %eax	# l, l.65
	subl	$1, %eax	#, D.6803
	cmpl	-16440(%rbp), %eax	# i, D.6803
	jg	.L106	#,
	.loc 1 723 0 is_stmt 1
	addl	$1, -16436(%rbp)	#, k
	.loc 1 724 0
	movq	-16424(%rbp), %rax	# fcb, tmp219
	movl	-16436(%rbp), %edx	# k, tmp220
	movl	%edx, 16(%rax)	# tmp220, fcb_10->n_stream
	.loc 1 725 0
	movl	-16436(%rbp), %eax	# k, tmp221
	cltq
	movl	$725, %ecx	#,
	movl	$.LC1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.6808,
	call	__ckd_calloc__	#
	movq	-16424(%rbp), %rdx	# fcb, tmp222
	movq	%rax, 24(%rdx)	# D.6804, fcb_10->stream_len
	.loc 1 728 0
	movq	-16456(%rbp), %rax	# type, tmp223
	movq	%rax, -16432(%rbp)	# tmp223, strp
	.loc 1 729 0
	movl	$0, -16440(%rbp)	#, i
	.loc 1 730 0
	jmp	.L107	#
.L110:
	.loc 1 731 0
	movl	-16444(%rbp), %eax	# l, l.66
	cltq
	addq	%rax, -16432(%rbp)	# D.6807, strp
	.loc 1 732 0
	movq	-16424(%rbp), %rax	# fcb, tmp224
	movl	16(%rax), %eax	# fcb_10->n_stream, D.6803
	cmpl	-16440(%rbp), %eax	# i, D.6803
	jle	.L108	#,
	.loc 1 732 0 is_stmt 0 discriminator 1
	movq	-16424(%rbp), %rax	# fcb, tmp225
	movq	24(%rax), %rax	# fcb_10->stream_len, D.6805
	movl	-16440(%rbp), %edx	# i, tmp226
	movslq	%edx, %rdx	# tmp226, D.6808
	salq	$2, %rdx	#, D.6808
	addq	%rax, %rdx	# D.6805, D.6805
	leaq	-16416(%rbp), %rax	#, tmp227
	movl	$.LC41, %esi	#,
	movq	%rax, %rdi	# tmp227,
	movl	$0, %eax	#,
	call	__isoc99_sscanf	#
	cmpl	$1, %eax	#, D.6803
	jne	.L108	#,
	.loc 1 733 0 is_stmt 1 discriminator 1
	movq	-16424(%rbp), %rax	# fcb, tmp228
	movq	24(%rax), %rax	# fcb_10->stream_len, D.6805
	movl	-16440(%rbp), %edx	# i, tmp229
	movslq	%edx, %rdx	# tmp229, D.6808
	salq	$2, %rdx	#, D.6808
	addq	%rdx, %rax	# D.6808, D.6805
	movl	(%rax), %eax	# *_93, D.6803
	.loc 1 732 0 discriminator 1
	testl	%eax, %eax	# D.6803
	jg	.L109	#,
.L108:
	.loc 1 734 0
	movl	$.LC38, %edx	#,
	movl	$734, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movl	$.LC42, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L109:
	.loc 1 735 0
	addl	$1, -16440(%rbp)	#, i
.L107:
	.loc 1 730 0 discriminator 1
	leaq	-16444(%rbp), %rcx	#, tmp230
	leaq	-16416(%rbp), %rdx	#, tmp231
	movq	-16432(%rbp), %rax	# strp, tmp232
	movl	$.LC43, %esi	#,
	movq	%rax, %rdi	# tmp232,
	movl	$0, %eax	#,
	call	__isoc99_sscanf	#
	cmpl	$1, %eax	#, D.6803
	je	.L110	#,
	.loc 1 737 0
	movq	-16424(%rbp), %rax	# fcb, tmp233
	movl	16(%rax), %eax	# fcb_10->n_stream, D.6803
	cmpl	-16440(%rbp), %eax	# i, D.6803
	je	.L111	#,
	.loc 1 738 0
	movl	$.LC38, %edx	#,
	movl	$738, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movl	$.LC42, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L111:
	.loc 1 741 0
	movq	-16424(%rbp), %rax	# fcb, tmp234
	movl	$-1, 8(%rax)	#, fcb_10->cepsize
	.loc 1 742 0
	movq	-16424(%rbp), %rax	# fcb, tmp235
	movl	$-1, 12(%rax)	#, fcb_10->cepsize_used
	.loc 1 743 0
	movq	-16424(%rbp), %rax	# fcb, tmp236
	movl	$0, 32(%rax)	#, fcb_10->window_size
	.loc 1 744 0
	movq	-16424(%rbp), %rax	# fcb, tmp237
	movq	$0, 48(%rax)	#, fcb_10->compute_feat
.L91:
	.loc 1 747 0
	movq	-16464(%rbp), %rax	# cmn, tmp238
	movl	$.LC44, %esi	#,
	movq	%rax, %rdi	# tmp238,
	call	strcmp	#
	testl	%eax, %eax	# D.6803
	jne	.L112	#,
	.loc 1 748 0
	movq	-16424(%rbp), %rax	# fcb, tmp239
	movl	$1, 36(%rax)	#, fcb_10->cmn
	jmp	.L113	#
.L112:
	.loc 1 749 0
	movq	-16464(%rbp), %rax	# cmn, tmp240
	movl	$.LC45, %esi	#,
	movq	%rax, %rdi	# tmp240,
	call	strcmp	#
	testl	%eax, %eax	# D.6803
	jne	.L114	#,
	.loc 1 750 0
	movq	-16424(%rbp), %rax	# fcb, tmp241
	movl	$0, 36(%rax)	#, fcb_10->cmn
	jmp	.L113	#
.L114:
	.loc 1 752 0
	movl	$.LC38, %edx	#,
	movl	$752, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movq	-16464(%rbp), %rax	# cmn, tmp242
	movq	%rax, %rsi	# tmp242,
	movl	$.LC46, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L113:
	.loc 1 754 0
	movq	-16472(%rbp), %rax	# varnorm, tmp243
	movl	$.LC47, %esi	#,
	movq	%rax, %rdi	# tmp243,
	call	strcmp	#
	testl	%eax, %eax	# D.6803
	jne	.L115	#,
	.loc 1 755 0
	movq	-16424(%rbp), %rax	# fcb, tmp244
	movl	$1, 40(%rax)	#, fcb_10->varnorm
	jmp	.L116	#
.L115:
	.loc 1 756 0
	movq	-16472(%rbp), %rax	# varnorm, tmp245
	movl	$.LC48, %esi	#,
	movq	%rax, %rdi	# tmp245,
	call	strcmp	#
	testl	%eax, %eax	# D.6803
	jne	.L117	#,
	.loc 1 757 0
	movq	-16424(%rbp), %rax	# fcb, tmp246
	movl	$0, 40(%rax)	#, fcb_10->varnorm
	jmp	.L116	#
.L117:
	.loc 1 759 0
	movl	$.LC38, %edx	#,
	movl	$759, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movq	-16472(%rbp), %rax	# varnorm, tmp247
	movq	%rax, %rsi	# tmp247,
	movl	$.LC49, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L116:
	.loc 1 761 0
	movq	-16480(%rbp), %rax	# agc, tmp248
	movl	$.LC50, %esi	#,
	movq	%rax, %rdi	# tmp248,
	call	strcmp	#
	testl	%eax, %eax	# D.6803
	jne	.L118	#,
	.loc 1 762 0
	movq	-16424(%rbp), %rax	# fcb, tmp249
	movl	$1, 44(%rax)	#, fcb_10->agc
	jmp	.L119	#
.L118:
	.loc 1 763 0
	movq	-16480(%rbp), %rax	# agc, tmp250
	movl	$.LC45, %esi	#,
	movq	%rax, %rdi	# tmp250,
	call	strcmp	#
	testl	%eax, %eax	# D.6803
	jne	.L120	#,
	.loc 1 764 0
	movq	-16424(%rbp), %rax	# fcb, tmp251
	movl	$0, 44(%rax)	#, fcb_10->agc
	jmp	.L119	#
.L120:
	.loc 1 766 0
	movl	$.LC38, %edx	#,
	movl	$766, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movq	-16480(%rbp), %rax	# agc, tmp252
	movq	%rax, %rsi	# tmp252,
	movl	$.LC51, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L119:
	.loc 1 768 0
	movq	-16424(%rbp), %rax	# fcb, D.6809
	.loc 1 769 0
	movq	-24(%rbp), %rbx	# D.6810, tmp255
	xorq	%fs:40, %rbx	#, tmp255
	je	.L122	#,
	call	__stack_chk_fail	#
.L122:
	addq	$16472, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	feat_init, .-feat_init
	.section	.rodata
.LC52:
	.string	"%8d:"
.LC53:
	.string	"\t%2d:"
.LC54:
	.string	" %8.4f"
	.text
	.globl	feat_print
	.type	feat_print, @function
feat_print:
.LFB14:
	.loc 1 773 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# fcb, fcb
	movq	%rsi, -32(%rbp)	# feat, feat
	movl	%edx, -36(%rbp)	# nfr, nfr
	movq	%rcx, -48(%rbp)	# fp, fp
	.loc 1 776 0
	movl	$0, -12(%rbp)	#, i
	jmp	.L124	#
.L129:
	.loc 1 777 0
	movl	-12(%rbp), %edx	# i, tmp78
	movq	-48(%rbp), %rax	# fp, tmp79
	movl	$.LC52, %esi	#,
	movq	%rax, %rdi	# tmp79,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 779 0
	movl	$0, -8(%rbp)	#, j
	jmp	.L125	#
.L128:
	.loc 1 780 0
	movl	-8(%rbp), %edx	# j, tmp80
	movq	-48(%rbp), %rax	# fp, tmp81
	movl	$.LC53, %esi	#,
	movq	%rax, %rdi	# tmp81,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 782 0
	movl	$0, -4(%rbp)	#, k
	jmp	.L126	#
.L127:
	.loc 1 783 0 discriminator 2
	movl	-12(%rbp), %eax	# i, tmp82
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6835
	movq	-32(%rbp), %rax	# feat, tmp83
	addq	%rdx, %rax	# D.6835, D.6836
	movq	(%rax), %rax	# *_19, D.6837
	movl	-8(%rbp), %edx	# j, tmp84
	movslq	%edx, %rdx	# tmp84, D.6835
	salq	$3, %rdx	#, D.6835
	addq	%rdx, %rax	# D.6835, D.6837
	movq	(%rax), %rax	# *_23, D.6838
	movl	-4(%rbp), %edx	# k, tmp85
	movslq	%edx, %rdx	# tmp85, D.6835
	salq	$2, %rdx	#, D.6835
	addq	%rdx, %rax	# D.6835, D.6838
	movss	(%rax), %xmm0	# *_27, D.6839
	unpcklps	%xmm0, %xmm0	# D.6839, D.6839
	cvtps2pd	%xmm0, %xmm0	# D.6839, D.6840
	movq	-48(%rbp), %rax	# fp, tmp86
	movl	$.LC54, %esi	#,
	movq	%rax, %rdi	# tmp86,
	movl	$1, %eax	#,
	call	fprintf	#
	.loc 1 782 0 discriminator 2
	addl	$1, -4(%rbp)	#, k
.L126:
	.loc 1 782 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# fcb, tmp87
	movq	24(%rax), %rax	# fcb_8(D)->stream_len, D.6834
	movl	-8(%rbp), %edx	# j, tmp88
	movslq	%edx, %rdx	# tmp88, D.6835
	salq	$2, %rdx	#, D.6835
	addq	%rdx, %rax	# D.6835, D.6834
	movl	(%rax), %eax	# *_14, D.6833
	cmpl	-4(%rbp), %eax	# k, D.6833
	jg	.L127	#,
	.loc 1 784 0 is_stmt 1
	movq	-48(%rbp), %rax	# fp, tmp89
	movq	%rax, %rsi	# tmp89,
	movl	$10, %edi	#,
	call	fputc	#
	.loc 1 779 0
	addl	$1, -8(%rbp)	#, j
.L125:
	.loc 1 779 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# fcb, tmp90
	movl	16(%rax), %eax	# fcb_8(D)->n_stream, D.6833
	cmpl	-8(%rbp), %eax	# j, D.6833
	jg	.L128	#,
	.loc 1 776 0 is_stmt 1
	addl	$1, -12(%rbp)	#, i
.L124:
	.loc 1 776 0 is_stmt 0 discriminator 1
	movl	-12(%rbp), %eax	# i, tmp91
	cmpl	-36(%rbp), %eax	# nfr, tmp91
	jl	.L129	#,
	.loc 1 788 0 is_stmt 1
	movq	-48(%rbp), %rax	# fp, tmp92
	movq	%rax, %rdi	# tmp92,
	call	fflush	#
	.loc 1 789 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	feat_print, .-feat_print
	.section	.rodata
.LC55:
	.string	"Bad cepsize: %d\n"
.LC56:
	.string	".mfc"
.LC57:
	.string	"%s/%s"
.LC58:
	.string	"%s/%s.mfc"
.LC59:
	.string	"%s.mfc"
	.align 8
.LC60:
	.string	"%s: MFC file/segment too short to compute features: %d frames\n"
	.align 8
.LC61:
	.string	"%s: Feature buffer size(%d frames) < required(%d)\n"
.LC62:
	.string	"CMN\n"
.LC63:
	.string	"AGC\n"
	.text
	.globl	feat_s2mfc2feat
	.type	feat_s2mfc2feat, @function
feat_s2mfc2feat:
.LFB15:
	.loc 1 794 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$16488, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -16456(%rbp)	# fcb, fcb
	movq	%rsi, -16464(%rbp)	# file, file
	movq	%rdx, -16472(%rbp)	# dir, dir
	movl	%ecx, -16476(%rbp)	# sf, sf
	movl	%r8d, -16480(%rbp)	# ef, ef
	movq	%r9, -16488(%rbp)	# feat, feat
	.loc 1 794 0
	movq	%fs:40, %rax	#, tmp230
	movq	%rax, -24(%rbp)	# tmp230, D.6854
	xorl	%eax, %eax	# tmp230
	.loc 1 801 0
	movq	-16456(%rbp), %rax	# fcb, tmp129
	movl	8(%rax), %eax	# fcb_10(D)->cepsize, D.6845
	testl	%eax, %eax	# D.6845
	jg	.L131	#,
	.loc 1 802 0
	movl	$.LC3, %edx	#,
	movl	$802, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movq	-16456(%rbp), %rax	# fcb, tmp130
	movl	8(%rax), %eax	# fcb_10(D)->cepsize, D.6845
	movl	%eax, %esi	# D.6845,
	movl	$.LC55, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_warn	#
	.loc 1 803 0
	movl	$-1, %eax	#, D.6844
	jmp	.L155	#
.L131:
	.loc 1 807 0
	movq	-16464(%rbp), %rax	# file, tmp131
	movq	%rax, %rdi	# tmp131,
	call	strlen	#
	movl	%eax, -16432(%rbp)	# D.6846, k
	.loc 1 808 0
	cmpl	$4, -16432(%rbp)	#, k
	jle	.L133	#,
	.loc 1 808 0 is_stmt 0 discriminator 1
	movl	-16432(%rbp), %eax	# k, tmp132
	cltq
	leaq	-4(%rax), %rdx	#, D.6847
	movq	-16464(%rbp), %rax	# file, tmp133
	addq	%rdx, %rax	# D.6847, D.6848
	movl	$.LC56, %esi	#,
	movq	%rax, %rdi	# D.6848,
	call	strcmp	#
	testl	%eax, %eax	# D.6845
	jne	.L133	#,
	.loc 1 809 0 is_stmt 1
	cmpq	$0, -16472(%rbp)	#, dir
	je	.L134	#,
	.loc 1 809 0 is_stmt 0 discriminator 1
	movq	-16464(%rbp), %rax	# file, tmp134
	movzbl	(%rax), %eax	# *file_14(D), D.6849
	cmpb	$47, %al	#, D.6849
	je	.L134	#,
	.loc 1 810 0 is_stmt 1
	movq	-16464(%rbp), %rcx	# file, tmp135
	movq	-16472(%rbp), %rdx	# dir, tmp136
	leaq	-16416(%rbp), %rax	#, tmp137
	movl	$.LC57, %esi	#,
	movq	%rax, %rdi	# tmp137,
	movl	$0, %eax	#,
	call	sprintf	#
	.loc 1 809 0
	jmp	.L136	#
.L134:
	.loc 1 812 0
	movq	-16464(%rbp), %rdx	# file, tmp138
	leaq	-16416(%rbp), %rax	#, tmp139
	movq	%rdx, %rsi	# tmp138,
	movq	%rax, %rdi	# tmp139,
	call	strcpy	#
	.loc 1 809 0
	jmp	.L136	#
.L133:
	.loc 1 814 0
	cmpq	$0, -16472(%rbp)	#, dir
	je	.L137	#,
	.loc 1 814 0 is_stmt 0 discriminator 1
	movq	-16464(%rbp), %rax	# file, tmp140
	movzbl	(%rax), %eax	# *file_14(D), D.6849
	cmpb	$47, %al	#, D.6849
	je	.L137	#,
	.loc 1 815 0 is_stmt 1
	movq	-16464(%rbp), %rcx	# file, tmp141
	movq	-16472(%rbp), %rdx	# dir, tmp142
	leaq	-16416(%rbp), %rax	#, tmp143
	movl	$.LC58, %esi	#,
	movq	%rax, %rdi	# tmp143,
	movl	$0, %eax	#,
	call	sprintf	#
	jmp	.L136	#
.L137:
	.loc 1 817 0
	movq	-16464(%rbp), %rdx	# file, tmp144
	leaq	-16416(%rbp), %rax	#, tmp145
	movl	$.LC59, %esi	#,
	movq	%rax, %rdi	# tmp145,
	movl	$0, %eax	#,
	call	sprintf	#
.L136:
	.loc 1 820 0
	movq	-16456(%rbp), %rax	# fcb, tmp146
	movl	32(%rax), %eax	# fcb_10(D)->window_size, tmp147
	movl	%eax, -16428(%rbp)	# tmp147, win
	.loc 1 823 0
	cmpl	$0, -16480(%rbp)	#, ef
	jns	.L138	#,
	.loc 1 824 0
	movl	$2147418112, %eax	#, tmp151
	subl	-16428(%rbp), %eax	# win, tmp150
	movl	%eax, -16480(%rbp)	# tmp150, ef
.L138:
	.loc 1 825 0
	movl	-16428(%rbp), %eax	# win, tmp152
	subl	%eax, -16476(%rbp)	# tmp152, sf
	.loc 1 826 0
	movl	-16428(%rbp), %eax	# win, tmp153
	addl	%eax, -16480(%rbp)	# tmp153, ef
	.loc 1 829 0
	movq	-16456(%rbp), %rax	# fcb, tmp154
	movl	8(%rax), %eax	# fcb_10(D)->cepsize, D.6845
	movl	$829, %r8d	#,
	movl	$.LC1, %ecx	#,
	movl	$4, %edx	#,
	movl	%eax, %esi	# D.6845,
	movl	$15000, %edi	#,
	call	__ckd_calloc_2d__	#
	movq	%rax, -16424(%rbp)	# tmp155, mfc
	.loc 1 830 0
	cmpl	$0, -16476(%rbp)	#, sf
	jns	.L139	#,
	.loc 1 831 0
	movl	-16476(%rbp), %eax	# sf, tmp156
	addl	$15000, %eax	#, D.6845
	subl	-16428(%rbp), %eax	# win, D.6845
	movl	%eax, %esi	# D.6845, D.6845
	movl	-16476(%rbp), %eax	# sf, tmp157
	cltq
	salq	$3, %rax	#, D.6846
	negq	%rax	# D.6847
	movq	%rax, %rdx	# D.6847, D.6847
	movq	-16424(%rbp), %rax	# mfc, tmp158
	leaq	(%rdx,%rax), %rcx	#, D.6850
	movl	-16480(%rbp), %edx	# ef, tmp159
	leaq	-16416(%rbp), %rax	#, tmp160
	movl	%esi, %r8d	# D.6845,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp160,
	call	feat_s2mfc_read	#
	movl	%eax, -16440(%rbp)	# tmp161, nfr
	jmp	.L140	#
.L139:
	.loc 1 833 0
	movl	$15000, %eax	#, tmp162
	subl	-16428(%rbp), %eax	# win, D.6845
	movl	%eax, %edi	# D.6845, D.6845
	movq	-16424(%rbp), %rcx	# mfc, tmp163
	movl	-16480(%rbp), %edx	# ef, tmp164
	movl	-16476(%rbp), %esi	# sf, tmp165
	leaq	-16416(%rbp), %rax	#, tmp166
	movl	%edi, %r8d	# D.6845,
	movq	%rax, %rdi	# tmp166,
	call	feat_s2mfc_read	#
	movl	%eax, -16440(%rbp)	# tmp167, nfr
.L140:
	.loc 1 834 0
	cmpl	$0, -16440(%rbp)	#, nfr
	jns	.L141	#,
	.loc 1 835 0
	movq	-16424(%rbp), %rax	# mfc, tmp168
	movq	%rax, %rdi	# tmp168,
	call	ckd_free_2d	#
	.loc 1 836 0
	movl	$-1, %eax	#, D.6844
	jmp	.L155	#
.L141:
	.loc 1 852 0
	movl	-16428(%rbp), %eax	# win, tmp169
	addl	%eax, %eax	# D.6845
	addl	$1, %eax	#, D.6845
	cmpl	-16440(%rbp), %eax	# nfr, D.6845
	jle	.L142	#,
	.loc 1 853 0
	movl	$.LC3, %edx	#,
	movl	$853, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movl	-16440(%rbp), %edx	# nfr, tmp170
	movq	-16464(%rbp), %rax	# file, tmp171
	movq	%rax, %rsi	# tmp171,
	movl	$.LC60, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_warn	#
	.loc 1 854 0
	movq	-16424(%rbp), %rax	# mfc, tmp172
	movq	%rax, %rdi	# tmp172,
	call	ckd_free_2d	#
	.loc 1 855 0
	movl	$-1, %eax	#, D.6844
	jmp	.L155	#
.L142:
	.loc 1 859 0
	cmpl	$0, -16476(%rbp)	#, sf
	jns	.L143	#,
	.loc 1 860 0
	movl	$0, -16436(%rbp)	#, i
	jmp	.L144	#
.L145:
	.loc 1 861 0 discriminator 2
	movq	-16456(%rbp), %rax	# fcb, tmp173
	movl	8(%rax), %eax	# fcb_10(D)->cepsize, D.6845
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6846
	movl	-16476(%rbp), %eax	# sf, tmp174
	movl	-16436(%rbp), %ecx	# i, tmp175
	subl	%eax, %ecx	# tmp174, D.6845
	movl	%ecx, %eax	# D.6845, D.6845
	cltq
	addq	$1, %rax	#, D.6847
	leaq	0(,%rax,8), %rcx	#, D.6847
	movq	-16424(%rbp), %rax	# mfc, tmp176
	addq	%rcx, %rax	# D.6847, D.6850
	movq	(%rax), %rcx	# *_54, D.6851
	movl	-16436(%rbp), %eax	# i, tmp177
	cltq
	leaq	0(,%rax,8), %rsi	#, D.6846
	movq	-16424(%rbp), %rax	# mfc, tmp178
	addq	%rsi, %rax	# D.6846, D.6850
	movq	(%rax), %rax	# *_58, D.6851
	movq	%rcx, %rsi	# D.6851,
	movq	%rax, %rdi	# D.6851,
	call	memcpy	#
	.loc 1 860 0 discriminator 2
	addl	$1, -16436(%rbp)	#, i
.L144:
	.loc 1 860 0 is_stmt 0 discriminator 1
	movl	-16476(%rbp), %eax	# sf, tmp179
	negl	%eax	# D.6845
	cmpl	-16436(%rbp), %eax	# i, D.6845
	jg	.L145	#,
	.loc 1 862 0 is_stmt 1
	movl	-16476(%rbp), %eax	# sf, tmp180
	subl	%eax, -16440(%rbp)	# tmp180, nfr
.L143:
	.loc 1 866 0
	movl	-16476(%rbp), %eax	# sf, tmp181
	movl	-16480(%rbp), %edx	# ef, tmp182
	subl	%eax, %edx	# tmp181, D.6845
	movl	%edx, %eax	# D.6845, D.6845
	addl	$1, %eax	#, tmp183
	movl	%eax, -16432(%rbp)	# tmp183, k
	.loc 1 867 0
	movl	-16440(%rbp), %eax	# nfr, tmp184
	cmpl	-16432(%rbp), %eax	# k, tmp184
	jge	.L146	#,
	.loc 1 868 0
	movl	-16440(%rbp), %eax	# nfr, tmp185
	subl	%eax, -16432(%rbp)	# tmp185, k
	.loc 1 869 0
	movl	-16432(%rbp), %eax	# k, tmp186
	cmpl	-16428(%rbp), %eax	# win, tmp186
	jle	.L147	#,
	.loc 1 870 0
	movl	-16428(%rbp), %eax	# win, tmp187
	movl	%eax, -16432(%rbp)	# tmp187, k
.L147:
	.loc 1 872 0
	movl	$0, -16436(%rbp)	#, i
	jmp	.L148	#
.L149:
	.loc 1 873 0 discriminator 2
	movq	-16456(%rbp), %rax	# fcb, tmp188
	movl	8(%rax), %eax	# fcb_10(D)->cepsize, D.6845
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6846
	movl	-16436(%rbp), %eax	# i, tmp189
	movl	-16440(%rbp), %ecx	# nfr, tmp190
	addl	%ecx, %eax	# tmp190, D.6845
	subl	$1, %eax	#, D.6845
	subl	-16432(%rbp), %eax	# k, D.6845
	cltq
	leaq	0(,%rax,8), %rcx	#, D.6846
	movq	-16424(%rbp), %rax	# mfc, tmp191
	addq	%rcx, %rax	# D.6846, D.6850
	movq	(%rax), %rcx	# *_75, D.6851
	movl	-16436(%rbp), %eax	# i, tmp192
	movl	-16440(%rbp), %esi	# nfr, tmp193
	addl	%esi, %eax	# tmp193, D.6845
	cltq
	leaq	0(,%rax,8), %rsi	#, D.6846
	movq	-16424(%rbp), %rax	# mfc, tmp194
	addq	%rsi, %rax	# D.6846, D.6850
	movq	(%rax), %rax	# *_80, D.6851
	movq	%rcx, %rsi	# D.6851,
	movq	%rax, %rdi	# D.6851,
	call	memcpy	#
	.loc 1 872 0 discriminator 2
	addl	$1, -16436(%rbp)	#, i
.L148:
	.loc 1 872 0 is_stmt 0 discriminator 1
	movl	-16436(%rbp), %eax	# i, tmp195
	cmpl	-16432(%rbp), %eax	# k, tmp195
	jl	.L149	#,
	.loc 1 874 0 is_stmt 1
	movl	-16432(%rbp), %eax	# k, tmp196
	addl	%eax, -16440(%rbp)	# tmp196, nfr
.L146:
	.loc 1 878 0
	movl	-16428(%rbp), %edx	# win, tmp197
	movl	$0, %eax	#, tmp198
	subl	%edx, %eax	# tmp197, tmp198
	addl	%eax, %eax	# tmp199
	movl	%eax, %edx	# tmp198, D.6845
	movl	-16440(%rbp), %eax	# nfr, tmp200
	addl	%edx, %eax	# D.6845, D.6845
	cmpl	16(%rbp), %eax	# maxfr, D.6845
	jle	.L150	#,
	.loc 1 879 0
	movl	$.LC3, %edx	#,
	movl	$879, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movl	-16428(%rbp), %edx	# win, tmp201
	movl	$0, %eax	#, tmp202
	subl	%edx, %eax	# tmp201, tmp202
	addl	%eax, %eax	# tmp203
	movl	%eax, %edx	# tmp202, D.6845
	movl	-16440(%rbp), %eax	# nfr, tmp204
	addl	%edx, %eax	# D.6845, D.6845
	movl	%eax, %edx	# D.6845,
	movl	16(%rbp), %esi	# maxfr,
	movl	$.LC61, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_warn	#
	.loc 1 880 0
	movq	-16424(%rbp), %rax	# mfc, tmp205
	movq	%rax, %rdi	# tmp205,
	call	ckd_free_2d	#
	.loc 1 881 0
	movl	$-1, %eax	#, D.6844
	jmp	.L155	#
.L150:
	.loc 1 884 0
	movq	-16456(%rbp), %rax	# fcb, tmp206
	movl	36(%rax), %eax	# fcb_10(D)->cmn, D.6845
	testl	%eax, %eax	# D.6845
	je	.L151	#,
	.loc 1 885 0
	movl	$.LC0, %edx	#,
	movl	$885, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_info_header	#
	movl	$.LC62, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 886 0
	movq	-16456(%rbp), %rax	# fcb, tmp207
	movl	8(%rax), %ecx	# fcb_10(D)->cepsize, D.6845
	movq	-16456(%rbp), %rax	# fcb, tmp208
	movl	40(%rax), %esi	# fcb_10(D)->varnorm, D.6845
	movl	-16440(%rbp), %edx	# nfr, tmp209
	movq	-16424(%rbp), %rax	# mfc, tmp210
	movq	%rax, %rdi	# tmp210,
	call	cmn	#
.L151:
	.loc 1 888 0
	movq	-16456(%rbp), %rax	# fcb, tmp211
	movl	44(%rax), %eax	# fcb_10(D)->agc, D.6845
	testl	%eax, %eax	# D.6845
	je	.L152	#,
	.loc 1 889 0
	movl	$.LC0, %edx	#,
	movl	$889, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_info_header	#
	movl	$.LC63, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
	.loc 1 890 0
	movl	-16440(%rbp), %edx	# nfr, tmp212
	movq	-16424(%rbp), %rax	# mfc, tmp213
	movl	%edx, %esi	# tmp212,
	movq	%rax, %rdi	# tmp213,
	call	agc_max	#
.L152:
	.loc 1 908 0
	movl	-16428(%rbp), %eax	# win, tmp214
	movl	%eax, -16436(%rbp)	# tmp214, i
	jmp	.L153	#
.L154:
	.loc 1 909 0 discriminator 2
	movq	-16456(%rbp), %rax	# fcb, tmp215
	movq	48(%rax), %rax	# fcb_10(D)->compute_feat, D.6852
	movl	-16428(%rbp), %edx	# win, tmp216
	movl	-16436(%rbp), %ecx	# i, tmp217
	subl	%edx, %ecx	# tmp216, D.6845
	movl	%ecx, %edx	# D.6845, D.6845
	movslq	%edx, %rdx	# D.6845, D.6846
	leaq	0(,%rdx,8), %rcx	#, D.6846
	movq	-16488(%rbp), %rdx	# feat, tmp218
	addq	%rcx, %rdx	# D.6846, D.6853
	movq	(%rdx), %rdx	# *_101, D.6850
	movl	-16436(%rbp), %ecx	# i, tmp219
	movslq	%ecx, %rcx	# tmp219, D.6846
	leaq	0(,%rcx,8), %rsi	#, D.6846
	movq	-16424(%rbp), %rcx	# mfc, tmp220
	addq	%rcx, %rsi	# tmp220, D.6850
	movq	-16456(%rbp), %rcx	# fcb, tmp221
	movq	%rcx, %rdi	# tmp221,
	call	*%rax	# D.6852
	.loc 1 908 0 discriminator 2
	addl	$1, -16436(%rbp)	#, i
.L153:
	.loc 1 908 0 is_stmt 0 discriminator 1
	movl	-16428(%rbp), %eax	# win, tmp222
	movl	-16440(%rbp), %edx	# nfr, tmp223
	subl	%eax, %edx	# tmp222, D.6845
	movl	%edx, %eax	# D.6845, D.6845
	cmpl	-16436(%rbp), %eax	# i, D.6845
	jg	.L154	#,
	.loc 1 938 0 is_stmt 1
	movq	-16424(%rbp), %rax	# mfc, tmp224
	movq	%rax, %rdi	# tmp224,
	call	ckd_free_2d	#
	.loc 1 940 0
	movl	-16428(%rbp), %edx	# win, tmp225
	movl	$0, %eax	#, tmp226
	subl	%edx, %eax	# tmp225, tmp226
	addl	%eax, %eax	# tmp227
	movl	%eax, %edx	# tmp226, D.6845
	movl	-16440(%rbp), %eax	# nfr, tmp228
	addl	%edx, %eax	# D.6845, D.6844
.L155:
	.loc 1 941 0
	movq	-24(%rbp), %rbx	# D.6854, tmp231
	xorq	%fs:40, %rbx	#, tmp231
	je	.L156	#,
	call	__stack_chk_fail	#
.L156:
	addq	$16488, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	feat_s2mfc2feat, .-feat_s2mfc2feat
	.section	.rodata
	.align 8
.LC64:
	.string	"Unable to allocate cepbuf ckd_calloc_2d(%ld,%d,%d)\n"
	.align 8
.LC65:
	.string	"Feature buffers initialized to %d vectors\n"
	.align 8
.LC66:
	.string	"Unable to allocate tmpcepbuf ckd_calloc_2d(%ld,%d,%d)\n"
	.text
	.globl	feat_s2mfc2feat_block
	.type	feat_s2mfc2feat_block, @function
feat_s2mfc2feat_block:
.LFB16:
	.loc 1 949 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -40(%rbp)	# fcb, fcb
	movq	%rsi, -48(%rbp)	# uttcep, uttcep
	movl	%edx, -52(%rbp)	# nfr, nfr
	movl	%ecx, -56(%rbp)	# beginutt, beginutt
	movl	%r8d, -60(%rbp)	# endutt, endutt
	movq	%r9, -72(%rbp)	# ofeat, ofeat
	.loc 1 961 0
	movq	-40(%rbp), %rax	# fcb, tmp195
	movl	32(%rax), %eax	# fcb_11(D)->window_size, tmp196
	movl	%eax, -12(%rbp)	# tmp196, win
	.loc 1 963 0
	movq	-40(%rbp), %rax	# fcb, tmp197
	movl	8(%rax), %eax	# fcb_11(D)->cepsize, D.6864
	testl	%eax, %eax	# D.6864
	jg	.L158	#,
	.loc 1 964 0
	movl	$.LC38, %edx	#,
	movl	$964, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movq	-40(%rbp), %rax	# fcb, tmp198
	movl	8(%rax), %eax	# fcb_11(D)->cepsize, D.6864
	movl	%eax, %esi	# D.6864,
	movl	$.LC55, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L158:
	.loc 1 965 0
	movq	-40(%rbp), %rax	# fcb, tmp199
	movl	8(%rax), %eax	# fcb_11(D)->cepsize, tmp200
	movl	%eax, -8(%rbp)	# tmp200, cepsize
	.loc 1 967 0
	movq	cepbuf.5644(%rip), %rax	# cepbuf, cepbuf.67
	testq	%rax, %rax	# cepbuf.67
	jne	.L159	#,
	.loc 1 968 0
	movl	-8(%rbp), %eax	# cepsize, tmp201
	movl	$968, %r8d	#,
	movl	$.LC1, %ecx	#,
	movl	$4, %edx	#,
	movl	%eax, %esi	# tmp201,
	movl	$256, %edi	#,
	call	__ckd_calloc_2d__	#
	movq	%rax, cepbuf.5644(%rip)	# cepbuf.68, cepbuf
	.loc 1 969 0
	movq	cepbuf.5644(%rip), %rax	# cepbuf, cepbuf.69
	testq	%rax, %rax	# cepbuf.69
	jne	.L160	#,
	.loc 1 969 0 is_stmt 0 discriminator 1
	movl	$.LC38, %edx	#,
	movl	$969, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movl	-8(%rbp), %eax	# cepsize, tmp202
	movl	$4, %ecx	#,
	movl	%eax, %edx	# tmp202,
	movl	$256, %esi	#,
	movl	$.LC64, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L160:
	.loc 1 970 0 is_stmt 1
	movl	$1, -56(%rbp)	#, beginutt
	.loc 1 971 0
	movl	$.LC0, %edx	#,
	movl	$971, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_info_header	#
	movl	$256, %esi	#,
	movl	$.LC65, %edi	#,
	movl	$0, %eax	#,
	call	_E__pr_info	#
.L159:
	.loc 1 974 0
	movq	tmpcepbuf.5645(%rip), %rax	# tmpcepbuf, tmpcepbuf.70
	testq	%rax, %rax	# tmpcepbuf.70
	jne	.L161	#,
	.loc 1 975 0
	movl	-12(%rbp), %eax	# win, tmp203
	addl	%eax, %eax	# D.6864
	leal	1(%rax), %edi	#, D.6864
	movl	-8(%rbp), %eax	# cepsize, tmp204
	movl	$975, %r8d	#,
	movl	$.LC1, %ecx	#,
	movl	$4, %edx	#,
	movl	%eax, %esi	# tmp204,
	call	__ckd_calloc_2d__	#
	movq	%rax, tmpcepbuf.5645(%rip)	# tmpcepbuf.71, tmpcepbuf
	.loc 1 976 0
	movq	tmpcepbuf.5645(%rip), %rax	# tmpcepbuf, tmpcepbuf.72
	testq	%rax, %rax	# tmpcepbuf.72
	jne	.L161	#,
	.loc 1 976 0 is_stmt 0 discriminator 1
	movl	$.LC38, %edx	#,
	movl	$976, %esi	#,
	movl	$.LC1, %edi	#,
	call	_E__pr_header	#
	movl	-12(%rbp), %eax	# win, tmp205
	addl	%eax, %eax	# D.6864
	leal	1(%rax), %esi	#, D.6864
	movl	-8(%rbp), %eax	# cepsize, tmp206
	movl	$4, %ecx	#,
	movl	%eax, %edx	# tmp206,
	movl	$.LC66, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L161:
	.loc 1 979 0 is_stmt 1
	movq	-40(%rbp), %rax	# fcb, tmp207
	movl	36(%rax), %eax	# fcb_11(D)->cmn, D.6864
	testl	%eax, %eax	# D.6864
	je	.L162	#,
	.loc 1 980 0
	movq	-40(%rbp), %rax	# fcb, tmp208
	movl	8(%rax), %ecx	# fcb_11(D)->cepsize, D.6864
	movq	-40(%rbp), %rax	# fcb, tmp209
	movl	40(%rax), %esi	# fcb_11(D)->varnorm, D.6864
	movl	-60(%rbp), %edi	# endutt, tmp210
	movl	-52(%rbp), %edx	# nfr, tmp211
	movq	-48(%rbp), %rax	# uttcep, tmp212
	movl	%edi, %r8d	# tmp210,
	movq	%rax, %rdi	# tmp212,
	call	cmn_prior	#
.L162:
	.loc 1 983 0
	movl	$0, -16(%rbp)	#, residualvecs
	.loc 1 985 0
	cmpl	$0, -56(%rbp)	#, beginutt
	je	.L163	#,
	.loc 1 987 0
	movl	$0, -28(%rbp)	#, i
	jmp	.L164	#
.L167:
	.loc 1 988 0
	movl	-12(%rbp), %eax	# win, tmp213
	addl	$1, %eax	#, D.6864
	cmpl	-52(%rbp), %eax	# nfr, D.6864
	jg	.L165	#,
	.loc 1 989 0
	movl	-8(%rbp), %eax	# cepsize, tmp214
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6865
	movl	-28(%rbp), %eax	# i, tmp215
	cltq
	addq	$1, %rax	#, D.6866
	leaq	0(,%rax,8), %rcx	#, D.6866
	movq	-48(%rbp), %rax	# uttcep, tmp216
	addq	%rcx, %rax	# D.6866, D.6867
	movq	(%rax), %rcx	# *_42, D.6868
	movq	cepbuf.5644(%rip), %rax	# cepbuf, cepbuf.73
	movl	-28(%rbp), %esi	# i, tmp217
	movslq	%esi, %rsi	# tmp217, D.6865
	salq	$3, %rsi	#, D.6865
	addq	%rsi, %rax	# D.6865, D.6867
	movq	(%rax), %rax	# *_47, D.6868
	movq	%rcx, %rsi	# D.6868,
	movq	%rax, %rdi	# D.6868,
	call	memcpy	#
	jmp	.L166	#
.L165:
	.loc 1 991 0
	movl	-8(%rbp), %eax	# cepsize, tmp218
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6865
	movq	-48(%rbp), %rax	# uttcep, tmp219
	movq	(%rax), %rcx	# *uttcep_31(D), D.6868
	movq	cepbuf.5644(%rip), %rax	# cepbuf, cepbuf.74
	movl	-28(%rbp), %esi	# i, tmp220
	movslq	%esi, %rsi	# tmp220, D.6865
	salq	$3, %rsi	#, D.6865
	addq	%rsi, %rax	# D.6865, D.6867
	movq	(%rax), %rax	# *_55, D.6868
	movq	%rcx, %rsi	# D.6868,
	movq	%rax, %rdi	# D.6868,
	call	memcpy	#
.L166:
	.loc 1 987 0
	addl	$1, -28(%rbp)	#, i
.L164:
	.loc 1 987 0 is_stmt 0 discriminator 1
	movl	-28(%rbp), %eax	# i, tmp221
	cmpl	-12(%rbp), %eax	# win, tmp221
	jl	.L167	#,
	.loc 1 993 0 is_stmt 1
	movl	-12(%rbp), %eax	# win, tmp222
	movl	%eax, bufpos.5646(%rip)	# tmp222, bufpos
	.loc 1 994 0
	movl	bufpos.5646(%rip), %eax	# bufpos, bufpos.75
	cltd
	shrl	$24, %edx	#, tmp224
	addl	%edx, %eax	# tmp224, tmp225
	movzbl	%al, %eax	# tmp225, tmp226
	subl	%edx, %eax	# tmp224, tmp227
	movl	%eax, bufpos.5646(%rip)	# bufpos.76, bufpos
	.loc 1 995 0
	movl	bufpos.5646(%rip), %eax	# bufpos, bufpos.77
	movl	%eax, curpos.5647(%rip)	# bufpos.77, curpos
	.loc 1 996 0
	movl	-12(%rbp), %eax	# win, tmp228
	subl	%eax, -16(%rbp)	# tmp228, residualvecs
.L163:
	.loc 1 999 0
	movl	$0, -28(%rbp)	#, i
	jmp	.L168	#
.L169:
	.loc 1 1001 0 discriminator 2
	movl	-8(%rbp), %eax	# cepsize, tmp229
	cltq
	leaq	0(,%rax,4), %rsi	#, D.6865
	movl	-28(%rbp), %eax	# i, tmp230
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6865
	movq	-48(%rbp), %rax	# uttcep, tmp231
	addq	%rdx, %rax	# D.6865, D.6867
	movq	(%rax), %rcx	# *_67, D.6868
	movq	cepbuf.5644(%rip), %rdi	# cepbuf, cepbuf.78
	movl	bufpos.5646(%rip), %eax	# bufpos, bufpos.79
	leal	1(%rax), %edx	#, bufpos.81
	movl	%edx, bufpos.5646(%rip)	# bufpos.81, bufpos
	cltq
	salq	$3, %rax	#, D.6865
	addq	%rdi, %rax	# cepbuf.78, D.6867
	movq	(%rax), %rax	# *_75, D.6868
	movq	%rsi, %rdx	# D.6865,
	movq	%rcx, %rsi	# D.6868,
	movq	%rax, %rdi	# D.6868,
	call	memcpy	#
	.loc 1 1002 0 discriminator 2
	movl	bufpos.5646(%rip), %eax	# bufpos, bufpos.82
	cltd
	shrl	$24, %edx	#, tmp233
	addl	%edx, %eax	# tmp233, tmp234
	movzbl	%al, %eax	# tmp234, tmp235
	subl	%edx, %eax	# tmp233, tmp236
	movl	%eax, bufpos.5646(%rip)	# bufpos.83, bufpos
	.loc 1 999 0 discriminator 2
	addl	$1, -28(%rbp)	#, i
.L168:
	.loc 1 999 0 is_stmt 0 discriminator 1
	movl	-28(%rbp), %eax	# i, tmp237
	cmpl	-52(%rbp), %eax	# nfr, tmp237
	jl	.L169	#,
	.loc 1 1016 0 is_stmt 1
	cmpl	$0, -60(%rbp)	#, endutt
	je	.L170	#,
	.loc 1 1018 0
	cmpl	$0, -52(%rbp)	#, nfr
	jle	.L171	#,
	.loc 1 1019 0
	movl	$0, -28(%rbp)	#, i
	jmp	.L172	#
.L173:
	.loc 1 1021 0 discriminator 2
	movl	-8(%rbp), %eax	# cepsize, tmp238
	cltq
	leaq	0(,%rax,4), %rsi	#, D.6865
	movl	-52(%rbp), %eax	# nfr, tmp239
	cltq
	salq	$3, %rax	#, D.6865
	leaq	-8(%rax), %rdx	#, D.6866
	movq	-48(%rbp), %rax	# uttcep, tmp240
	addq	%rdx, %rax	# D.6866, D.6867
	movq	(%rax), %rcx	# *_86, D.6868
	movq	cepbuf.5644(%rip), %rdi	# cepbuf, cepbuf.84
	movl	bufpos.5646(%rip), %eax	# bufpos, bufpos.85
	leal	1(%rax), %edx	#, bufpos.87
	movl	%edx, bufpos.5646(%rip)	# bufpos.87, bufpos
	cltq
	salq	$3, %rax	#, D.6865
	addq	%rdi, %rax	# cepbuf.84, D.6867
	movq	(%rax), %rax	# *_94, D.6868
	movq	%rsi, %rdx	# D.6865,
	movq	%rcx, %rsi	# D.6868,
	movq	%rax, %rdi	# D.6868,
	call	memcpy	#
	.loc 1 1022 0 discriminator 2
	movl	bufpos.5646(%rip), %eax	# bufpos, bufpos.88
	cltd
	shrl	$24, %edx	#, tmp242
	addl	%edx, %eax	# tmp242, tmp243
	movzbl	%al, %eax	# tmp243, tmp244
	subl	%edx, %eax	# tmp242, tmp245
	movl	%eax, bufpos.5646(%rip)	# bufpos.89, bufpos
	.loc 1 1019 0 discriminator 2
	addl	$1, -28(%rbp)	#, i
.L172:
	.loc 1 1019 0 is_stmt 0 discriminator 1
	movl	-28(%rbp), %eax	# i, tmp246
	cmpl	-12(%rbp), %eax	# win, tmp246
	jl	.L173	#,
	jmp	.L174	#
.L171:
.LBB2:
	.loc 1 1026 0 is_stmt 1
	movl	bufpos.5646(%rip), %eax	# bufpos, bufpos.90
	subl	$1, %eax	#, D.6869
	movw	%ax, -30(%rbp)	# D.6869, tpos
	.loc 1 1027 0
	movzwl	-30(%rbp), %eax	# tpos, tmp248
	movl	%eax, %edx	# tmp248, tmp249
	sarw	$15, %dx	#, tmp249
	shrw	$8, %dx	#, tmp250
	addl	%edx, %eax	# tmp250, tmp251
	movzbl	%al, %eax	# tmp251, tmp252
	subl	%edx, %eax	# tmp250, tmp253
	movw	%ax, -30(%rbp)	# tmp253, tpos
	.loc 1 1028 0
	movl	$0, -28(%rbp)	#, i
	jmp	.L175	#
.L176:
	.loc 1 1030 0 discriminator 2
	movl	-8(%rbp), %eax	# cepsize, tmp254
	cltq
	leaq	0(,%rax,4), %rsi	#, D.6865
	movq	cepbuf.5644(%rip), %rax	# cepbuf, cepbuf.91
	movswq	-30(%rbp), %rdx	# tpos, D.6865
	salq	$3, %rdx	#, D.6865
	addq	%rdx, %rax	# D.6865, D.6867
	movq	(%rax), %rcx	# *_110, D.6868
	movq	cepbuf.5644(%rip), %rdi	# cepbuf, cepbuf.92
	movl	bufpos.5646(%rip), %eax	# bufpos, bufpos.93
	leal	1(%rax), %edx	#, bufpos.95
	movl	%edx, bufpos.5646(%rip)	# bufpos.95, bufpos
	cltq
	salq	$3, %rax	#, D.6865
	addq	%rdi, %rax	# cepbuf.92, D.6867
	movq	(%rax), %rax	# *_118, D.6868
	movq	%rsi, %rdx	# D.6865,
	movq	%rcx, %rsi	# D.6868,
	movq	%rax, %rdi	# D.6868,
	call	memcpy	#
	.loc 1 1031 0 discriminator 2
	movl	bufpos.5646(%rip), %eax	# bufpos, bufpos.96
	cltd
	shrl	$24, %edx	#, tmp256
	addl	%edx, %eax	# tmp256, tmp257
	movzbl	%al, %eax	# tmp257, tmp258
	subl	%edx, %eax	# tmp256, tmp259
	movl	%eax, bufpos.5646(%rip)	# bufpos.97, bufpos
	.loc 1 1028 0 discriminator 2
	addl	$1, -28(%rbp)	#, i
.L175:
	.loc 1 1028 0 is_stmt 0 discriminator 1
	movl	-28(%rbp), %eax	# i, tmp260
	cmpl	-12(%rbp), %eax	# win, tmp260
	jl	.L176	#,
.L174:
.LBE2:
	.loc 1 1034 0 is_stmt 1
	movl	-12(%rbp), %eax	# win, tmp261
	addl	%eax, -16(%rbp)	# tmp261, residualvecs
.L170:
	.loc 1 1037 0
	movl	$0, -20(%rbp)	#, nfeatvec
	.loc 1 1038 0
	movl	-16(%rbp), %eax	# residualvecs, tmp262
	addl	%eax, -52(%rbp)	# tmp262, nfr
	.loc 1 1040 0
	movl	$0, -28(%rbp)	#, i
	jmp	.L177	#
.L183:
	.loc 1 1041 0
	movl	curpos.5647(%rip), %eax	# curpos, curpos.98
	cmpl	-12(%rbp), %eax	# win, curpos.98
	jl	.L178	#,
	.loc 1 1041 0 is_stmt 0 discriminator 1
	movl	$255, %eax	#, tmp263
	subl	-12(%rbp), %eax	# win, D.6864
	movl	%eax, %edx	# D.6864, D.6864
	movl	curpos.5647(%rip), %eax	# curpos, curpos.99
	cmpl	%eax, %edx	# curpos.99, D.6864
	jge	.L179	#,
.L178:
	.loc 1 1043 0 is_stmt 1
	movl	-12(%rbp), %eax	# win, tmp267
	negl	%eax	# tmp266
	movl	%eax, -24(%rbp)	# tmp266, j
	jmp	.L180	#
.L181:
	.loc 1 1044 0 discriminator 2
	movl	curpos.5647(%rip), %edx	# curpos, curpos.100
	movl	-24(%rbp), %eax	# j, tmp268
	addl	%edx, %eax	# curpos.100, D.6864
	leal	256(%rax), %edx	#, D.6864
	movl	%edx, %eax	# D.6864, tmp269
	sarl	$31, %eax	#, tmp269
	shrl	$24, %eax	#, tmp270
	addl	%eax, %edx	# tmp270, tmp271
	movzbl	%dl, %edx	# tmp271, tmp272
	subl	%eax, %edx	# tmp270, tmp273
	movl	%edx, %eax	# tmp273, tmp273
	movl	%eax, -4(%rbp)	# tmp273, tmppos
	.loc 1 1045 0 discriminator 2
	movl	-8(%rbp), %eax	# cepsize, tmp274
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6865
	movq	cepbuf.5644(%rip), %rax	# cepbuf, cepbuf.101
	movl	-4(%rbp), %ecx	# tmppos, tmp275
	movslq	%ecx, %rcx	# tmp275, D.6865
	salq	$3, %rcx	#, D.6865
	addq	%rcx, %rax	# D.6865, D.6867
	movq	(%rax), %rcx	# *_151, D.6868
	movq	tmpcepbuf.5645(%rip), %rax	# tmpcepbuf, tmpcepbuf.102
	movl	-24(%rbp), %esi	# j, tmp276
	movl	-12(%rbp), %edi	# win, tmp277
	addl	%edi, %esi	# tmp277, D.6864
	movslq	%esi, %rsi	# D.6864, D.6865
	salq	$3, %rsi	#, D.6865
	addq	%rsi, %rax	# D.6865, D.6867
	movq	(%rax), %rax	# *_157, D.6868
	movq	%rcx, %rsi	# D.6868,
	movq	%rax, %rdi	# D.6868,
	call	memcpy	#
	.loc 1 1043 0 discriminator 2
	addl	$1, -24(%rbp)	#, j
.L180:
	.loc 1 1043 0 is_stmt 0 discriminator 1
	movl	-24(%rbp), %eax	# j, tmp278
	cmpl	-12(%rbp), %eax	# win, tmp278
	jle	.L181	#,
	.loc 1 1047 0 is_stmt 1
	movq	-40(%rbp), %rax	# fcb, tmp279
	movq	48(%rax), %rax	# fcb_11(D)->compute_feat, D.6870
	movl	-28(%rbp), %edx	# i, tmp280
	movslq	%edx, %rdx	# tmp280, D.6865
	leaq	0(,%rdx,8), %rcx	#, D.6865
	movq	-72(%rbp), %rdx	# ofeat, tmp281
	addq	%rcx, %rdx	# D.6865, D.6871
	movq	(%rdx), %rdx	# *_163, D.6867
	movq	tmpcepbuf.5645(%rip), %rcx	# tmpcepbuf, tmpcepbuf.103
	movl	-12(%rbp), %esi	# win, tmp282
	movslq	%esi, %rsi	# tmp282, D.6865
	salq	$3, %rsi	#, D.6865
	addq	%rcx, %rsi	# tmpcepbuf.103, D.6867
	movq	-40(%rbp), %rcx	# fcb, tmp283
	movq	%rcx, %rdi	# tmp283,
	call	*%rax	# D.6870
	jmp	.L182	#
.L179:
	.loc 1 1049 0
	movq	-40(%rbp), %rax	# fcb, tmp284
	movq	48(%rax), %rax	# fcb_11(D)->compute_feat, D.6870
	movl	-28(%rbp), %edx	# i, tmp285
	movslq	%edx, %rdx	# tmp285, D.6865
	leaq	0(,%rdx,8), %rcx	#, D.6865
	movq	-72(%rbp), %rdx	# ofeat, tmp286
	addq	%rcx, %rdx	# D.6865, D.6871
	movq	(%rdx), %rdx	# *_134, D.6867
	movq	cepbuf.5644(%rip), %rcx	# cepbuf, cepbuf.104
	movl	curpos.5647(%rip), %esi	# curpos, curpos.105
	movslq	%esi, %rsi	# curpos.105, D.6865
	salq	$3, %rsi	#, D.6865
	addq	%rcx, %rsi	# cepbuf.104, D.6867
	movq	-40(%rbp), %rcx	# fcb, tmp287
	movq	%rcx, %rdi	# tmp287,
	call	*%rax	# D.6870
.L182:
	.loc 1 1051 0
	movl	curpos.5647(%rip), %eax	# curpos, curpos.106
	addl	$1, %eax	#, curpos.107
	movl	%eax, curpos.5647(%rip)	# curpos.107, curpos
	.loc 1 1052 0
	movl	curpos.5647(%rip), %eax	# curpos, curpos.108
	cltd
	shrl	$24, %edx	#, tmp289
	addl	%edx, %eax	# tmp289, tmp290
	movzbl	%al, %eax	# tmp290, tmp291
	subl	%edx, %eax	# tmp289, tmp292
	movl	%eax, curpos.5647(%rip)	# curpos.109, curpos
	.loc 1 1040 0
	addl	$1, -28(%rbp)	#, i
	addl	$1, -20(%rbp)	#, nfeatvec
.L177:
	.loc 1 1040 0 is_stmt 0 discriminator 1
	movl	-28(%rbp), %eax	# i, tmp293
	cmpl	-52(%rbp), %eax	# nfr, tmp293
	jl	.L183	#,
	.loc 1 1086 0 is_stmt 1
	movl	-20(%rbp), %eax	# nfeatvec, D.6872
	.loc 1 1255 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	feat_s2mfc2feat_block, .-feat_s2mfc2feat_block
	.globl	feat_free
	.type	feat_free, @function
feat_free:
.LFB17:
	.loc 1 1262 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# f, f
	.loc 1 1270 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	feat_free, .-feat_free
	.local	cepbuf.5644
	.comm	cepbuf.5644,8,8
	.local	tmpcepbuf.5645
	.comm	tmpcepbuf.5645,8,8
	.local	bufpos.5646
	.comm	bufpos.5646,4,4
	.local	curpos.5647
	.comm	curpos.5647,4,4
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "/usr/include/time.h"
	.file 7 "./libutil/prim_type.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/stat.h"
	.file 9 "feat.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xffd
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF136
	.byte	0x1
	.long	.LASF137
	.long	.LASF138
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
	.byte	0x85
	.long	0x38
	.uleb128 0x2
	.long	.LASF9
	.byte	0x3
	.byte	0x86
	.long	0x4d
	.uleb128 0x2
	.long	.LASF10
	.byte	0x3
	.byte	0x87
	.long	0x4d
	.uleb128 0x2
	.long	.LASF11
	.byte	0x3
	.byte	0x88
	.long	0x38
	.uleb128 0x2
	.long	.LASF12
	.byte	0x3
	.byte	0x8a
	.long	0x4d
	.uleb128 0x2
	.long	.LASF13
	.byte	0x3
	.byte	0x8b
	.long	0x38
	.uleb128 0x2
	.long	.LASF14
	.byte	0x3
	.byte	0x8c
	.long	0x69
	.uleb128 0x2
	.long	.LASF15
	.byte	0x3
	.byte	0x8d
	.long	0x69
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF16
	.uleb128 0x2
	.long	.LASF17
	.byte	0x3
	.byte	0x94
	.long	0x69
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x2
	.long	.LASF18
	.byte	0x3
	.byte	0xa2
	.long	0x69
	.uleb128 0x2
	.long	.LASF19
	.byte	0x3
	.byte	0xa7
	.long	0x69
	.uleb128 0x2
	.long	.LASF20
	.byte	0x3
	.byte	0xb8
	.long	0x69
	.uleb128 0x6
	.byte	0x8
	.long	0x103
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF21
	.uleb128 0x2
	.long	.LASF22
	.byte	0x4
	.byte	0x30
	.long	0x115
	.uleb128 0x7
	.long	.LASF52
	.byte	0xd8
	.byte	0x5
	.byte	0xf6
	.long	0x296
	.uleb128 0x8
	.long	.LASF23
	.byte	0x5
	.byte	0xf7
	.long	0x62
	.byte	0
	.uleb128 0x8
	.long	.LASF24
	.byte	0x5
	.byte	0xfc
	.long	0xfd
	.byte	0x8
	.uleb128 0x8
	.long	.LASF25
	.byte	0x5
	.byte	0xfd
	.long	0xfd
	.byte	0x10
	.uleb128 0x8
	.long	.LASF26
	.byte	0x5
	.byte	0xfe
	.long	0xfd
	.byte	0x18
	.uleb128 0x8
	.long	.LASF27
	.byte	0x5
	.byte	0xff
	.long	0xfd
	.byte	0x20
	.uleb128 0x9
	.long	.LASF28
	.byte	0x5
	.value	0x100
	.long	0xfd
	.byte	0x28
	.uleb128 0x9
	.long	.LASF29
	.byte	0x5
	.value	0x101
	.long	0xfd
	.byte	0x30
	.uleb128 0x9
	.long	.LASF30
	.byte	0x5
	.value	0x102
	.long	0xfd
	.byte	0x38
	.uleb128 0x9
	.long	.LASF31
	.byte	0x5
	.value	0x103
	.long	0xfd
	.byte	0x40
	.uleb128 0x9
	.long	.LASF32
	.byte	0x5
	.value	0x105
	.long	0xfd
	.byte	0x48
	.uleb128 0x9
	.long	.LASF33
	.byte	0x5
	.value	0x106
	.long	0xfd
	.byte	0x50
	.uleb128 0x9
	.long	.LASF34
	.byte	0x5
	.value	0x107
	.long	0xfd
	.byte	0x58
	.uleb128 0x9
	.long	.LASF35
	.byte	0x5
	.value	0x109
	.long	0x2ce
	.byte	0x60
	.uleb128 0x9
	.long	.LASF36
	.byte	0x5
	.value	0x10b
	.long	0x2d4
	.byte	0x68
	.uleb128 0x9
	.long	.LASF37
	.byte	0x5
	.value	0x10d
	.long	0x62
	.byte	0x70
	.uleb128 0x9
	.long	.LASF38
	.byte	0x5
	.value	0x111
	.long	0x62
	.byte	0x74
	.uleb128 0x9
	.long	.LASF39
	.byte	0x5
	.value	0x113
	.long	0xb2
	.byte	0x78
	.uleb128 0x9
	.long	.LASF40
	.byte	0x5
	.value	0x117
	.long	0x46
	.byte	0x80
	.uleb128 0x9
	.long	.LASF41
	.byte	0x5
	.value	0x118
	.long	0x54
	.byte	0x82
	.uleb128 0x9
	.long	.LASF42
	.byte	0x5
	.value	0x119
	.long	0x2da
	.byte	0x83
	.uleb128 0x9
	.long	.LASF43
	.byte	0x5
	.value	0x11d
	.long	0x2ea
	.byte	0x88
	.uleb128 0x9
	.long	.LASF44
	.byte	0x5
	.value	0x126
	.long	0xbd
	.byte	0x90
	.uleb128 0x9
	.long	.LASF45
	.byte	0x5
	.value	0x12f
	.long	0xda
	.byte	0x98
	.uleb128 0x9
	.long	.LASF46
	.byte	0x5
	.value	0x130
	.long	0xda
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF47
	.byte	0x5
	.value	0x131
	.long	0xda
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF48
	.byte	0x5
	.value	0x132
	.long	0xda
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF49
	.byte	0x5
	.value	0x133
	.long	0x2d
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF50
	.byte	0x5
	.value	0x135
	.long	0x62
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF51
	.byte	0x5
	.value	0x137
	.long	0x2f0
	.byte	0xc4
	.byte	0
	.uleb128 0xa
	.long	.LASF139
	.byte	0x5
	.byte	0x9b
	.uleb128 0x7
	.long	.LASF53
	.byte	0x18
	.byte	0x5
	.byte	0xa1
	.long	0x2ce
	.uleb128 0x8
	.long	.LASF54
	.byte	0x5
	.byte	0xa2
	.long	0x2ce
	.byte	0
	.uleb128 0x8
	.long	.LASF55
	.byte	0x5
	.byte	0xa3
	.long	0x2d4
	.byte	0x8
	.uleb128 0x8
	.long	.LASF56
	.byte	0x5
	.byte	0xa7
	.long	0x62
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x29d
	.uleb128 0x6
	.byte	0x8
	.long	0x115
	.uleb128 0xb
	.long	0x103
	.long	0x2ea
	.uleb128 0xc
	.long	0xc8
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x296
	.uleb128 0xb
	.long	0x103
	.long	0x300
	.uleb128 0xc
	.long	0xc8
	.byte	0x13
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF57
	.uleb128 0x7
	.long	.LASF58
	.byte	0x10
	.byte	0x6
	.byte	0x78
	.long	0x32c
	.uleb128 0x8
	.long	.LASF59
	.byte	0x6
	.byte	0x7a
	.long	0xcf
	.byte	0
	.uleb128 0x8
	.long	.LASF60
	.byte	0x6
	.byte	0x7b
	.long	0xf2
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF61
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF62
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF63
	.uleb128 0x2
	.long	.LASF64
	.byte	0x7
	.byte	0x3f
	.long	0x62
	.uleb128 0x2
	.long	.LASF65
	.byte	0x7
	.byte	0x40
	.long	0x5b
	.uleb128 0x2
	.long	.LASF66
	.byte	0x7
	.byte	0x42
	.long	0x4d
	.uleb128 0x2
	.long	.LASF67
	.byte	0x7
	.byte	0x45
	.long	0x333
	.uleb128 0x7
	.long	.LASF68
	.byte	0x90
	.byte	0x8
	.byte	0x2e
	.long	0x42e
	.uleb128 0x8
	.long	.LASF69
	.byte	0x8
	.byte	0x30
	.long	0x70
	.byte	0
	.uleb128 0x8
	.long	.LASF70
	.byte	0x8
	.byte	0x35
	.long	0x91
	.byte	0x8
	.uleb128 0x8
	.long	.LASF71
	.byte	0x8
	.byte	0x3d
	.long	0xa7
	.byte	0x10
	.uleb128 0x8
	.long	.LASF72
	.byte	0x8
	.byte	0x3e
	.long	0x9c
	.byte	0x18
	.uleb128 0x8
	.long	.LASF73
	.byte	0x8
	.byte	0x40
	.long	0x7b
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF74
	.byte	0x8
	.byte	0x41
	.long	0x86
	.byte	0x20
	.uleb128 0x8
	.long	.LASF75
	.byte	0x8
	.byte	0x43
	.long	0x62
	.byte	0x24
	.uleb128 0x8
	.long	.LASF76
	.byte	0x8
	.byte	0x45
	.long	0x70
	.byte	0x28
	.uleb128 0x8
	.long	.LASF77
	.byte	0x8
	.byte	0x4a
	.long	0xb2
	.byte	0x30
	.uleb128 0x8
	.long	.LASF78
	.byte	0x8
	.byte	0x4e
	.long	0xdc
	.byte	0x38
	.uleb128 0x8
	.long	.LASF79
	.byte	0x8
	.byte	0x50
	.long	0xe7
	.byte	0x40
	.uleb128 0x8
	.long	.LASF80
	.byte	0x8
	.byte	0x5b
	.long	0x307
	.byte	0x48
	.uleb128 0x8
	.long	.LASF81
	.byte	0x8
	.byte	0x5c
	.long	0x307
	.byte	0x58
	.uleb128 0x8
	.long	.LASF82
	.byte	0x8
	.byte	0x5d
	.long	0x307
	.byte	0x68
	.uleb128 0x8
	.long	.LASF83
	.byte	0x8
	.byte	0x6a
	.long	0x42e
	.byte	0x78
	.byte	0
	.uleb128 0xb
	.long	0xf2
	.long	0x43e
	.uleb128 0xc
	.long	0xc8
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.long	.LASF84
	.byte	0x38
	.byte	0x9
	.byte	0x48
	.long	0x4c3
	.uleb128 0x8
	.long	.LASF85
	.byte	0x9
	.byte	0x49
	.long	0xfd
	.byte	0
	.uleb128 0x8
	.long	.LASF86
	.byte	0x9
	.byte	0x4a
	.long	0x341
	.byte	0x8
	.uleb128 0x8
	.long	.LASF87
	.byte	0x9
	.byte	0x4b
	.long	0x341
	.byte	0xc
	.uleb128 0x8
	.long	.LASF88
	.byte	0x9
	.byte	0x4c
	.long	0x341
	.byte	0x10
	.uleb128 0x8
	.long	.LASF89
	.byte	0x9
	.byte	0x4d
	.long	0x4c3
	.byte	0x18
	.uleb128 0x8
	.long	.LASF90
	.byte	0x9
	.byte	0x4e
	.long	0x341
	.byte	0x20
	.uleb128 0xd
	.string	"cmn"
	.byte	0x9
	.byte	0x50
	.long	0x341
	.byte	0x24
	.uleb128 0x8
	.long	.LASF91
	.byte	0x9
	.byte	0x51
	.long	0x341
	.byte	0x28
	.uleb128 0xd
	.string	"agc"
	.byte	0x9
	.byte	0x53
	.long	0x341
	.byte	0x2c
	.uleb128 0x8
	.long	.LASF92
	.byte	0x9
	.byte	0x54
	.long	0x4f0
	.byte	0x30
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x341
	.uleb128 0xe
	.long	0x4de
	.uleb128 0xf
	.long	0x4de
	.uleb128 0xf
	.long	0x4e4
	.uleb128 0xf
	.long	0x4e4
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x43e
	.uleb128 0x6
	.byte	0x8
	.long	0x4ea
	.uleb128 0x6
	.byte	0x8
	.long	0x362
	.uleb128 0x6
	.byte	0x8
	.long	0x4c9
	.uleb128 0x2
	.long	.LASF93
	.byte	0x9
	.byte	0x5a
	.long	0x43e
	.uleb128 0x10
	.long	.LASF102
	.byte	0x1
	.byte	0x77
	.long	0x341
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x601
	.uleb128 0x11
	.string	"fcb"
	.byte	0x1
	.byte	0x77
	.long	0x601
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x12
	.long	.LASF94
	.byte	0x1
	.byte	0x77
	.long	0xfd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x11
	.string	"sf"
	.byte	0x1
	.byte	0x77
	.long	0x341
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x11
	.string	"ef"
	.byte	0x1
	.byte	0x77
	.long	0x341
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x12
	.long	.LASF95
	.byte	0x1
	.byte	0x77
	.long	0x607
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x12
	.long	.LASF96
	.byte	0x1
	.byte	0x77
	.long	0x341
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x13
	.string	"fp"
	.byte	0x1
	.byte	0x79
	.long	0x60d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x13
	.string	"i"
	.byte	0x1
	.byte	0x7a
	.long	0x341
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x13
	.string	"l"
	.byte	0x1
	.byte	0x7a
	.long	0x341
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x13
	.string	"k"
	.byte	0x1
	.byte	0x7a
	.long	0x341
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x13
	.string	"nfr"
	.byte	0x1
	.byte	0x7a
	.long	0x341
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x14
	.long	.LASF97
	.byte	0x1
	.byte	0x7b
	.long	0x341
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x14
	.long	.LASF98
	.byte	0x1
	.byte	0x7b
	.long	0x341
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x14
	.long	.LASF99
	.byte	0x1
	.byte	0x7c
	.long	0x357
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x14
	.long	.LASF100
	.byte	0x1
	.byte	0x7d
	.long	0x613
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x14
	.long	.LASF101
	.byte	0x1
	.byte	0x7d
	.long	0x613
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x4f6
	.uleb128 0x6
	.byte	0x8
	.long	0x4e4
	.uleb128 0x6
	.byte	0x8
	.long	0x10a
	.uleb128 0x6
	.byte	0x8
	.long	0xfd
	.uleb128 0x10
	.long	.LASF103
	.byte	0x1
	.byte	0xe2
	.long	0x341
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x698
	.uleb128 0x11
	.string	"fcb"
	.byte	0x1
	.byte	0xe2
	.long	0x601
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x12
	.long	.LASF94
	.byte	0x1
	.byte	0xe2
	.long	0xfd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x12
	.long	.LASF95
	.byte	0x1
	.byte	0xe2
	.long	0x607
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x11
	.string	"nfr"
	.byte	0x1
	.byte	0xe2
	.long	0x341
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x13
	.string	"fp"
	.byte	0x1
	.byte	0xe4
	.long	0x60d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x13
	.string	"i"
	.byte	0x1
	.byte	0xe5
	.long	0x341
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x13
	.string	"k"
	.byte	0x1
	.byte	0xe5
	.long	0x341
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x15
	.long	.LASF104
	.byte	0x1
	.value	0x10b
	.long	0x341
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x774
	.uleb128 0x16
	.long	.LASF94
	.byte	0x1
	.value	0x10b
	.long	0xfd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x17
	.string	"sf"
	.byte	0x1
	.value	0x10b
	.long	0x341
	.uleb128 0x3
	.byte	0x91
	.sleb128 -204
	.uleb128 0x17
	.string	"ef"
	.byte	0x1
	.value	0x10b
	.long	0x341
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x17
	.string	"mfc"
	.byte	0x1
	.value	0x10b
	.long	0x4e4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x16
	.long	.LASF96
	.byte	0x1
	.value	0x10b
	.long	0x341
	.uleb128 0x3
	.byte	0x91
	.sleb128 -220
	.uleb128 0x18
	.string	"fp"
	.byte	0x1
	.value	0x10d
	.long	0x60d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x19
	.long	.LASF105
	.byte	0x1
	.value	0x10e
	.long	0x341
	.uleb128 0x3
	.byte	0x91
	.sleb128 -188
	.uleb128 0x19
	.long	.LASF106
	.byte	0x1
	.value	0x10f
	.long	0x36d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.value	0x110
	.long	0x341
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x18
	.string	"n"
	.byte	0x1
	.value	0x110
	.long	0x341
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x19
	.long	.LASF107
	.byte	0x1
	.value	0x110
	.long	0x341
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x19
	.long	.LASF86
	.byte	0x1
	.value	0x110
	.long	0x341
	.uleb128 0x3
	.byte	0x91
	.sleb128 -172
	.byte	0
	.uleb128 0x1a
	.long	.LASF140
	.byte	0x1
	.value	0x16f
	.long	0x341
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x7c0
	.uleb128 0x17
	.string	"fcb"
	.byte	0x1
	.value	0x16f
	.long	0x601
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.value	0x171
	.long	0x341
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.string	"k"
	.byte	0x1
	.value	0x171
	.long	0x341
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x15
	.long	.LASF108
	.byte	0x1
	.value	0x17a
	.long	0x4e4
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x82a
	.uleb128 0x17
	.string	"fcb"
	.byte	0x1
	.value	0x17a
	.long	0x601
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.value	0x17c
	.long	0x341
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.string	"k"
	.byte	0x1
	.value	0x17c
	.long	0x341
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x19
	.long	.LASF109
	.byte	0x1
	.value	0x17d
	.long	0x4ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x19
	.long	.LASF95
	.byte	0x1
	.value	0x17d
	.long	0x4e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x15
	.long	.LASF110
	.byte	0x1
	.value	0x193
	.long	0x607
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x8b0
	.uleb128 0x17
	.string	"fcb"
	.byte	0x1
	.value	0x193
	.long	0x601
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x17
	.string	"nfr"
	.byte	0x1
	.value	0x193
	.long	0x341
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.value	0x195
	.long	0x341
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x18
	.string	"j"
	.byte	0x1
	.value	0x195
	.long	0x341
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.string	"k"
	.byte	0x1
	.value	0x195
	.long	0x341
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x19
	.long	.LASF109
	.byte	0x1
	.value	0x196
	.long	0x4ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x19
	.long	.LASF95
	.byte	0x1
	.value	0x196
	.long	0x607
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1b
	.long	.LASF112
	.byte	0x1
	.value	0x1af
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x99d
	.uleb128 0x17
	.string	"fcb"
	.byte	0x1
	.value	0x1af
	.long	0x601
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x17
	.string	"mfc"
	.byte	0x1
	.value	0x1af
	.long	0x4e4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x16
	.long	.LASF95
	.byte	0x1
	.value	0x1af
	.long	0x4e4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x18
	.string	"f"
	.byte	0x1
	.value	0x1b1
	.long	0x4ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x18
	.string	"w"
	.byte	0x1
	.value	0x1b2
	.long	0x4ea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x18
	.string	"_w"
	.byte	0x1
	.value	0x1b2
	.long	0x4ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.string	"w1"
	.byte	0x1
	.value	0x1b3
	.long	0x4ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x18
	.string	"w_1"
	.byte	0x1
	.value	0x1b3
	.long	0x4ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x18
	.string	"_w1"
	.byte	0x1
	.value	0x1b3
	.long	0x4ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x19
	.long	.LASF111
	.byte	0x1
	.value	0x1b3
	.long	0x4ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.string	"d1"
	.byte	0x1
	.value	0x1b4
	.long	0x362
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x18
	.string	"d2"
	.byte	0x1
	.value	0x1b4
	.long	0x362
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.value	0x1b5
	.long	0x341
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x18
	.string	"j"
	.byte	0x1
	.value	0x1b5
	.long	0x341
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.uleb128 0x1b
	.long	.LASF113
	.byte	0x1
	.value	0x1ee
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0xa7c
	.uleb128 0x17
	.string	"fcb"
	.byte	0x1
	.value	0x1ee
	.long	0x601
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x17
	.string	"mfc"
	.byte	0x1
	.value	0x1ee
	.long	0x4e4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x16
	.long	.LASF95
	.byte	0x1
	.value	0x1ee
	.long	0x4e4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x18
	.string	"f"
	.byte	0x1
	.value	0x1f0
	.long	0x4ea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x18
	.string	"w"
	.byte	0x1
	.value	0x1f1
	.long	0x4ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.string	"_w"
	.byte	0x1
	.value	0x1f1
	.long	0x4ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x18
	.string	"w1"
	.byte	0x1
	.value	0x1f2
	.long	0x4ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x18
	.string	"w_1"
	.byte	0x1
	.value	0x1f2
	.long	0x4ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x18
	.string	"_w1"
	.byte	0x1
	.value	0x1f2
	.long	0x4ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x19
	.long	.LASF111
	.byte	0x1
	.value	0x1f2
	.long	0x4ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.string	"d1"
	.byte	0x1
	.value	0x1f3
	.long	0x362
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x18
	.string	"d2"
	.byte	0x1
	.value	0x1f3
	.long	0x362
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.value	0x1f4
	.long	0x341
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.uleb128 0x1b
	.long	.LASF114
	.byte	0x1
	.value	0x224
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0xac8
	.uleb128 0x17
	.string	"fcb"
	.byte	0x1
	.value	0x224
	.long	0x601
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x17
	.string	"mfc"
	.byte	0x1
	.value	0x224
	.long	0x4e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x16
	.long	.LASF95
	.byte	0x1
	.value	0x224
	.long	0x4e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x1b
	.long	.LASF115
	.byte	0x1
	.value	0x232
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0xb4a
	.uleb128 0x17
	.string	"fcb"
	.byte	0x1
	.value	0x232
	.long	0x601
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x17
	.string	"mfc"
	.byte	0x1
	.value	0x232
	.long	0x4e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x16
	.long	.LASF95
	.byte	0x1
	.value	0x232
	.long	0x4e4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x18
	.string	"f"
	.byte	0x1
	.value	0x234
	.long	0x4ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.string	"w"
	.byte	0x1
	.value	0x235
	.long	0x4ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x18
	.string	"_w"
	.byte	0x1
	.value	0x235
	.long	0x4ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.value	0x236
	.long	0x341
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x1c
	.long	.LASF119
	.byte	0x1
	.value	0x24d
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0xc29
	.uleb128 0x17
	.string	"fcb"
	.byte	0x1
	.value	0x24d
	.long	0x601
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x17
	.string	"mfc"
	.byte	0x1
	.value	0x24d
	.long	0x4e4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x16
	.long	.LASF95
	.byte	0x1
	.value	0x24d
	.long	0x4e4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x18
	.string	"f"
	.byte	0x1
	.value	0x24f
	.long	0x4ea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x18
	.string	"w"
	.byte	0x1
	.value	0x250
	.long	0x4ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.string	"_w"
	.byte	0x1
	.value	0x250
	.long	0x4ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x18
	.string	"w1"
	.byte	0x1
	.value	0x251
	.long	0x4ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x18
	.string	"w_1"
	.byte	0x1
	.value	0x251
	.long	0x4ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x18
	.string	"_w1"
	.byte	0x1
	.value	0x251
	.long	0x4ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x19
	.long	.LASF111
	.byte	0x1
	.value	0x251
	.long	0x4ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.string	"d1"
	.byte	0x1
	.value	0x252
	.long	0x362
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x18
	.string	"d2"
	.byte	0x1
	.value	0x252
	.long	0x362
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.value	0x253
	.long	0x341
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.uleb128 0x15
	.long	.LASF116
	.byte	0x1
	.value	0x27c
	.long	0x601
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0xcef
	.uleb128 0x16
	.long	.LASF117
	.byte	0x1
	.value	0x27c
	.long	0xfd
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16472
	.uleb128 0x17
	.string	"cmn"
	.byte	0x1
	.value	0x27c
	.long	0xfd
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16480
	.uleb128 0x16
	.long	.LASF91
	.byte	0x1
	.value	0x27c
	.long	0xfd
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16488
	.uleb128 0x17
	.string	"agc"
	.byte	0x1
	.value	0x27c
	.long	0xfd
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16496
	.uleb128 0x18
	.string	"fcb"
	.byte	0x1
	.value	0x27e
	.long	0x601
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16440
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.value	0x27f
	.long	0x341
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16456
	.uleb128 0x18
	.string	"l"
	.byte	0x1
	.value	0x27f
	.long	0x341
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16460
	.uleb128 0x18
	.string	"k"
	.byte	0x1
	.value	0x27f
	.long	0x341
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16452
	.uleb128 0x18
	.string	"wd"
	.byte	0x1
	.value	0x280
	.long	0xcef
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16432
	.uleb128 0x19
	.long	.LASF118
	.byte	0x1
	.value	0x280
	.long	0xfd
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16448
	.byte	0
	.uleb128 0xb
	.long	0x103
	.long	0xd00
	.uleb128 0x1d
	.long	0xc8
	.value	0x3fff
	.byte	0
	.uleb128 0x1c
	.long	.LASF120
	.byte	0x1
	.value	0x304
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0xd81
	.uleb128 0x17
	.string	"fcb"
	.byte	0x1
	.value	0x304
	.long	0x601
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x16
	.long	.LASF95
	.byte	0x1
	.value	0x304
	.long	0x607
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.string	"nfr"
	.byte	0x1
	.value	0x304
	.long	0x341
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x17
	.string	"fp"
	.byte	0x1
	.value	0x304
	.long	0x60d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.value	0x306
	.long	0x341
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x18
	.string	"j"
	.byte	0x1
	.value	0x306
	.long	0x341
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.string	"k"
	.byte	0x1
	.value	0x306
	.long	0x341
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x15
	.long	.LASF121
	.byte	0x1
	.value	0x318
	.long	0x341
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0xe79
	.uleb128 0x17
	.string	"fcb"
	.byte	0x1
	.value	0x318
	.long	0x601
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16472
	.uleb128 0x16
	.long	.LASF94
	.byte	0x1
	.value	0x318
	.long	0xfd
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16480
	.uleb128 0x17
	.string	"dir"
	.byte	0x1
	.value	0x318
	.long	0xfd
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16488
	.uleb128 0x17
	.string	"sf"
	.byte	0x1
	.value	0x318
	.long	0x341
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16492
	.uleb128 0x17
	.string	"ef"
	.byte	0x1
	.value	0x318
	.long	0x341
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16496
	.uleb128 0x16
	.long	.LASF95
	.byte	0x1
	.value	0x318
	.long	0x607
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16504
	.uleb128 0x16
	.long	.LASF96
	.byte	0x1
	.value	0x319
	.long	0x341
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x19
	.long	.LASF122
	.byte	0x1
	.value	0x31b
	.long	0xcef
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16432
	.uleb128 0x18
	.string	"win"
	.byte	0x1
	.value	0x31c
	.long	0x341
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16444
	.uleb128 0x18
	.string	"nfr"
	.byte	0x1
	.value	0x31c
	.long	0x341
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16456
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.value	0x31d
	.long	0x341
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16452
	.uleb128 0x18
	.string	"k"
	.byte	0x1
	.value	0x31d
	.long	0x341
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16448
	.uleb128 0x18
	.string	"mfc"
	.byte	0x1
	.value	0x31e
	.long	0x4e4
	.uleb128 0x4
	.byte	0x91
	.sleb128 -16440
	.byte	0
	.uleb128 0x15
	.long	.LASF123
	.byte	0x1
	.value	0x3b3
	.long	0x341
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0xfd8
	.uleb128 0x17
	.string	"fcb"
	.byte	0x1
	.value	0x3b3
	.long	0x601
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x16
	.long	.LASF124
	.byte	0x1
	.value	0x3b3
	.long	0x4e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x17
	.string	"nfr"
	.byte	0x1
	.value	0x3b3
	.long	0x341
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x16
	.long	.LASF125
	.byte	0x1
	.value	0x3b4
	.long	0x341
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x16
	.long	.LASF126
	.byte	0x1
	.value	0x3b4
	.long	0x341
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x16
	.long	.LASF127
	.byte	0x1
	.value	0x3b4
	.long	0x607
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x19
	.long	.LASF128
	.byte	0x1
	.value	0x3b6
	.long	0x4e4
	.uleb128 0x9
	.byte	0x3
	.quad	cepbuf.5644
	.uleb128 0x19
	.long	.LASF129
	.byte	0x1
	.value	0x3b7
	.long	0x4e4
	.uleb128 0x9
	.byte	0x3
	.quad	tmpcepbuf.5645
	.uleb128 0x19
	.long	.LASF130
	.byte	0x1
	.value	0x3b8
	.long	0x341
	.uleb128 0x9
	.byte	0x3
	.quad	bufpos.5646
	.uleb128 0x19
	.long	.LASF131
	.byte	0x1
	.value	0x3b9
	.long	0x341
	.uleb128 0x9
	.byte	0x3
	.quad	curpos.5647
	.uleb128 0x18
	.string	"win"
	.byte	0x1
	.value	0x3bb
	.long	0x341
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x19
	.long	.LASF86
	.byte	0x1
	.value	0x3bb
	.long	0x341
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.value	0x3bc
	.long	0x341
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x18
	.string	"j"
	.byte	0x1
	.value	0x3bc
	.long	0x341
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x19
	.long	.LASF132
	.byte	0x1
	.value	0x3bc
	.long	0x341
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x19
	.long	.LASF133
	.byte	0x1
	.value	0x3bc
	.long	0x341
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x19
	.long	.LASF134
	.byte	0x1
	.value	0x3be
	.long	0x341
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1e
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x19
	.long	.LASF135
	.byte	0x1
	.value	0x402
	.long	0x34c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -46
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	.LASF141
	.byte	0x1
	.value	0x4ed
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x17
	.string	"f"
	.byte	0x1
	.value	0x4ed
	.long	0x601
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x16
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
	.uleb128 0x19
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
	.uleb128 0x2117
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
	.uleb128 0x1d
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x1f
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
.LASF69:
	.string	"st_dev"
.LASF14:
	.string	"__off_t"
.LASF10:
	.string	"__gid_t"
.LASF24:
	.string	"_IO_read_ptr"
.LASF36:
	.string	"_chain"
.LASF82:
	.string	"st_ctim"
.LASF7:
	.string	"size_t"
.LASF42:
	.string	"_shortbuf"
.LASF117:
	.string	"type"
.LASF122:
	.string	"path"
.LASF30:
	.string	"_IO_buf_base"
.LASF61:
	.string	"long long unsigned int"
.LASF111:
	.string	"_w_1"
.LASF131:
	.string	"curpos"
.LASF108:
	.string	"feat_vector_alloc"
.LASF123:
	.string	"feat_s2mfc2feat_block"
.LASF68:
	.string	"stat"
.LASF9:
	.string	"__uid_t"
.LASF57:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF133:
	.string	"residualvecs"
.LASF70:
	.string	"st_ino"
.LASF12:
	.string	"__mode_t"
.LASF113:
	.string	"feat_s3_1x39_cep2feat"
.LASF64:
	.string	"int32"
.LASF37:
	.string	"_fileno"
.LASF25:
	.string	"_IO_read_end"
.LASF93:
	.string	"feat_t"
.LASF19:
	.string	"__blkcnt_t"
.LASF6:
	.string	"long int"
.LASF23:
	.string	"_flags"
.LASF31:
	.string	"_IO_buf_end"
.LASF40:
	.string	"_cur_column"
.LASF106:
	.string	"statbuf"
.LASF96:
	.string	"maxfr"
.LASF63:
	.string	"double"
.LASF39:
	.string	"_old_offset"
.LASF66:
	.string	"uint32"
.LASF137:
	.string	"feat.c"
.LASF75:
	.string	"__pad0"
.LASF124:
	.string	"uttcep"
.LASF79:
	.string	"st_blocks"
.LASF125:
	.string	"beginutt"
.LASF73:
	.string	"st_uid"
.LASF53:
	.string	"_IO_marker"
.LASF3:
	.string	"unsigned int"
.LASF138:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/482.sphinx3/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF120:
	.string	"feat_print"
.LASF121:
	.string	"feat_s2mfc2feat"
.LASF0:
	.string	"long unsigned int"
.LASF92:
	.string	"compute_feat"
.LASF28:
	.string	"_IO_write_ptr"
.LASF118:
	.string	"strp"
.LASF85:
	.string	"name"
.LASF132:
	.string	"nfeatvec"
.LASF55:
	.string	"_sbuf"
.LASF109:
	.string	"data"
.LASF2:
	.string	"short unsigned int"
.LASF129:
	.string	"tmpcepbuf"
.LASF32:
	.string	"_IO_save_base"
.LASF88:
	.string	"n_stream"
.LASF13:
	.string	"__nlink_t"
.LASF43:
	.string	"_lock"
.LASF38:
	.string	"_flags2"
.LASF104:
	.string	"feat_s2mfc_read"
.LASF140:
	.string	"feat_stream_len_sum"
.LASF107:
	.string	"byterev"
.LASF77:
	.string	"st_size"
.LASF83:
	.string	"__unused"
.LASF72:
	.string	"st_mode"
.LASF102:
	.string	"feat_readfile"
.LASF67:
	.string	"float32"
.LASF60:
	.string	"tv_nsec"
.LASF16:
	.string	"sizetype"
.LASF44:
	.string	"_offset"
.LASF8:
	.string	"__dev_t"
.LASF90:
	.string	"window_size"
.LASF59:
	.string	"tv_sec"
.LASF20:
	.string	"__syscall_slong_t"
.LASF65:
	.string	"int16"
.LASF29:
	.string	"_IO_write_end"
.LASF126:
	.string	"endutt"
.LASF91:
	.string	"varnorm"
.LASF139:
	.string	"_IO_lock_t"
.LASF52:
	.string	"_IO_FILE"
.LASF128:
	.string	"cepbuf"
.LASF18:
	.string	"__blksize_t"
.LASF116:
	.string	"feat_init"
.LASF86:
	.string	"cepsize"
.LASF135:
	.string	"tpos"
.LASF62:
	.string	"float"
.LASF56:
	.string	"_pos"
.LASF35:
	.string	"_markers"
.LASF130:
	.string	"bufpos"
.LASF141:
	.string	"feat_free"
.LASF71:
	.string	"st_nlink"
.LASF1:
	.string	"unsigned char"
.LASF119:
	.string	"feat_1s_c_d_dd_cep2feat"
.LASF5:
	.string	"short int"
.LASF94:
	.string	"file"
.LASF78:
	.string	"st_blksize"
.LASF51:
	.string	"_unused2"
.LASF58:
	.string	"timespec"
.LASF41:
	.string	"_vtable_offset"
.LASF22:
	.string	"FILE"
.LASF127:
	.string	"ofeat"
.LASF11:
	.string	"__ino_t"
.LASF115:
	.string	"feat_s3_cep_dcep"
.LASF50:
	.string	"_mode"
.LASF76:
	.string	"st_rdev"
.LASF114:
	.string	"feat_s3_cep"
.LASF103:
	.string	"feat_writefile"
.LASF84:
	.string	"feat_s"
.LASF21:
	.string	"char"
.LASF97:
	.string	"byteswap"
.LASF110:
	.string	"feat_array_alloc"
.LASF98:
	.string	"chksum_present"
.LASF54:
	.string	"_next"
.LASF15:
	.string	"__off64_t"
.LASF26:
	.string	"_IO_read_base"
.LASF34:
	.string	"_IO_save_end"
.LASF74:
	.string	"st_gid"
.LASF45:
	.string	"__pad1"
.LASF46:
	.string	"__pad2"
.LASF47:
	.string	"__pad3"
.LASF48:
	.string	"__pad4"
.LASF49:
	.string	"__pad5"
.LASF17:
	.string	"__time_t"
.LASF87:
	.string	"cepsize_used"
.LASF80:
	.string	"st_atim"
.LASF134:
	.string	"tmppos"
.LASF112:
	.string	"feat_s2_4x_cep2feat"
.LASF105:
	.string	"n_float32"
.LASF136:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF33:
	.string	"_IO_backup_base"
.LASF81:
	.string	"st_mtim"
.LASF99:
	.string	"chksum"
.LASF101:
	.string	"argval"
.LASF100:
	.string	"argname"
.LASF27:
	.string	"_IO_write_base"
.LASF95:
	.string	"feat"
.LASF89:
	.string	"stream_len"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
