	.file	"hmmio.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 hmmio.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.data
	.align 4
	.type	v10magic, @object
	.size	v10magic, 4
v10magic:
	.long	-387060303
	.align 4
	.type	v10swap, @object
	.size	v10swap, 4
v10swap:
	.long	-1309807128
	.align 4
	.type	v11magic, @object
	.size	v11magic, 4
v11magic:
	.long	-387060302
	.align 4
	.type	v11swap, @object
	.size	v11swap, 4
v11swap:
	.long	-1293029912
	.align 4
	.type	v17magic, @object
	.size	v17magic, 4
v17magic:
	.long	-387060301
	.align 4
	.type	v17swap, @object
	.size	v17swap, 4
v17swap:
	.long	-1276252696
	.align 4
	.type	v19magic, @object
	.size	v19magic, 4
v19magic:
	.long	-387060300
	.align 4
	.type	v19swap, @object
	.size	v19swap, 4
v19swap:
	.long	-1259475480
	.align 4
	.type	v20magic, @object
	.size	v20magic, 4
v20magic:
	.long	-387060299
	.align 4
	.type	v20swap, @object
	.size	v20swap, 4
v20swap:
	.long	-1242698264
	.section	.rodata
.LC0:
	.string	"hmmio.c"
.LC1:
	.string	"r"
.LC2:
	.string	"%s.ssi"
.LC3:
	.string	"SSIRecommendMode() failed"
.LC4:
	.string	"SSIGetFilePosition() failed"
	.align 8
.LC5:
	.string	"%s appears to be a binary but format is not recognized\nIt may be from a HMMER version more recent than yours,\nor may be a different kind of binary altogether.\n"
.LC6:
	.string	"HMMER2.0"
.LC7:
	.string	"HMMER v1.9"
.LC8:
	.string	"# HMM v1.7"
.LC9:
	.string	"# HMM v1.1"
.LC10:
	.string	"# HMM v1.0"
	.text
	.globl	HMMFileOpen
	.type	HMMFileOpen, @function
HMMFileOpen:
.LFB2:
	.file 1 "hmmio.c"
	.loc 1 156 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$600, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -600(%rbp)	# hmmfile, hmmfile
	movq	%rsi, -608(%rbp)	# env, env
	.loc 1 156 0
	movq	%fs:40, %rax	#, tmp202
	movq	%rax, -24(%rbp)	# tmp202, D.9262
	xorl	%eax, %eax	# tmp202
	.loc 1 164 0
	movl	$56, %edx	#,
	movl	$164, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, -560(%rbp)	# tmp114, hmmfp
	.loc 1 165 0
	movq	-560(%rbp), %rax	# hmmfp, tmp115
	movq	$0, (%rax)	#, hmmfp_3->f
	.loc 1 166 0
	movq	-560(%rbp), %rax	# hmmfp, tmp116
	movq	$0, 16(%rax)	#, hmmfp_3->parser
	.loc 1 167 0
	movq	-560(%rbp), %rax	# hmmfp, tmp117
	movl	$0, 24(%rax)	#, hmmfp_3->is_binary
	.loc 1 168 0
	movq	-560(%rbp), %rax	# hmmfp, tmp118
	movl	$0, 28(%rax)	#, hmmfp_3->byteswap
	.loc 1 169 0
	movq	-560(%rbp), %rax	# hmmfp, tmp119
	movl	$1, 32(%rax)	#, hmmfp_3->is_seekable
	.loc 1 177 0
	movq	-560(%rbp), %rax	# hmmfp, tmp120
	movq	$0, (%rax)	#, hmmfp_3->f
	.loc 1 178 0
	movq	-560(%rbp), %rax	# hmmfp, tmp121
	movq	$0, 8(%rax)	#, hmmfp_3->ssi
	.loc 1 179 0
	movq	-600(%rbp), %rax	# hmmfile, tmp122
	movl	$.LC1, %esi	#,
	movq	%rax, %rdi	# tmp122,
	call	fopen	#
	movq	-560(%rbp), %rdx	# hmmfp, tmp123
	movq	%rax, (%rdx)	# D.9256, hmmfp_3->f
	movq	-560(%rbp), %rax	# hmmfp, tmp124
	movq	(%rax), %rax	# hmmfp_3->f, D.9256
	testq	%rax, %rax	# D.9256
	je	.L2	#,
	.loc 1 181 0
	movq	-600(%rbp), %rax	# hmmfile, tmp125
	movq	%rax, %rdi	# tmp125,
	call	strlen	#
	addq	$5, %rax	#, D.9257
	movq	%rax, %rdx	# D.9257,
	movl	$181, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, -568(%rbp)	# tmp126, ssifile
	.loc 1 182 0
	movq	-600(%rbp), %rdx	# hmmfile, tmp127
	movq	-568(%rbp), %rax	# ssifile, tmp128
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# tmp128,
	movl	$0, %eax	#,
	call	sprintf	#
	.loc 1 184 0
	movq	-600(%rbp), %rax	# hmmfile, tmp129
	movq	%rax, %rdi	# tmp129,
	call	SSIRecommendMode	#
	movq	-560(%rbp), %rdx	# hmmfp, tmp130
	movl	%eax, 36(%rdx)	# D.9258, hmmfp_3->mode
	movq	-560(%rbp), %rax	# hmmfp, tmp131
	movl	36(%rax), %eax	# hmmfp_3->mode, D.9258
	cmpl	$-1, %eax	#, D.9258
	jne	.L4	#,
	.loc 1 185 0
	movl	$.LC3, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
	jmp	.L4	#
.L2:
	.loc 1 187 0
	leaq	-576(%rbp), %rdx	#, tmp132
	movq	-608(%rbp), %rcx	# env, tmp133
	movq	-600(%rbp), %rax	# hmmfile, tmp134
	movq	%rcx, %rsi	# tmp133,
	movq	%rax, %rdi	# tmp134,
	call	EnvFileOpen	#
	movq	-560(%rbp), %rdx	# hmmfp, tmp135
	movq	%rax, (%rdx)	# D.9256, hmmfp_3->f
	movq	-560(%rbp), %rax	# hmmfp, tmp136
	movq	(%rax), %rax	# hmmfp_3->f, D.9256
	testq	%rax, %rax	# D.9256
	je	.L5	#,
.LBB2:
	.loc 1 190 0
	movq	-576(%rbp), %rax	# dir, dir.0
	movq	-600(%rbp), %rdx	# hmmfile, tmp137
	movq	%rdx, %rsi	# tmp137,
	movq	%rax, %rdi	# dir.0,
	call	FileConcat	#
	movq	%rax, -552(%rbp)	# tmp138, full
	.loc 1 192 0
	movq	-552(%rbp), %rax	# full, tmp139
	movq	%rax, %rdi	# tmp139,
	call	strlen	#
	movq	%rax, %rbx	#, D.9257
	movq	-600(%rbp), %rax	# hmmfile, tmp140
	movq	%rax, %rdi	# tmp140,
	call	strlen	#
	addq	%rbx, %rax	# D.9257, D.9257
	addq	$5, %rax	#, D.9257
	movq	%rax, %rdx	# D.9257,
	movl	$192, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, -568(%rbp)	# tmp141, ssifile
	.loc 1 193 0
	movq	-552(%rbp), %rdx	# full, tmp142
	movq	-568(%rbp), %rax	# ssifile, tmp143
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# tmp143,
	movl	$0, %eax	#,
	call	sprintf	#
	.loc 1 195 0
	movq	-552(%rbp), %rax	# full, tmp144
	movq	%rax, %rdi	# tmp144,
	call	SSIRecommendMode	#
	movq	-560(%rbp), %rdx	# hmmfp, tmp145
	movl	%eax, 36(%rdx)	# D.9258, hmmfp_3->mode
	movq	-560(%rbp), %rax	# hmmfp, tmp146
	movl	36(%rax), %eax	# hmmfp_3->mode, D.9258
	cmpl	$-1, %eax	#, D.9258
	jne	.L6	#,
	.loc 1 196 0
	movl	$.LC3, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L6:
	.loc 1 198 0
	movq	-552(%rbp), %rax	# full, tmp147
	movq	%rax, %rdi	# tmp147,
	call	free	#
	.loc 1 199 0
	movq	-576(%rbp), %rax	# dir, dir.1
	movq	%rax, %rdi	# dir.1,
	call	free	#
.LBE2:
	jmp	.L4	#
.L5:
	.loc 1 201 0
	movl	$0, %eax	#, D.9255
	jmp	.L27	#
.L4:
	.loc 1 207 0
	movq	-560(%rbp), %rax	# hmmfp, tmp148
	leaq	8(%rax), %rdx	#, D.9259
	movq	-568(%rbp), %rax	# ssifile, tmp149
	movq	%rdx, %rsi	# D.9259,
	movq	%rax, %rdi	# tmp149,
	call	SSIOpen	#
	.loc 1 208 0
	movq	-568(%rbp), %rax	# ssifile, tmp150
	movq	%rax, %rdi	# tmp150,
	call	free	#
	.loc 1 212 0
	movq	-560(%rbp), %rax	# hmmfp, tmp151
	leaq	40(%rax), %rdx	#, D.9260
	movq	-560(%rbp), %rax	# hmmfp, tmp152
	movl	36(%rax), %ecx	# hmmfp_3->mode, D.9258
	movq	-560(%rbp), %rax	# hmmfp, tmp153
	movq	(%rax), %rax	# hmmfp_3->f, D.9256
	movl	%ecx, %esi	# D.9258,
	movq	%rax, %rdi	# D.9256,
	call	SSIGetFilePosition	#
	movl	%eax, -580(%rbp)	# tmp154, status
	.loc 1 213 0
	cmpl	$0, -580(%rbp)	#, status
	je	.L8	#,
	.loc 1 213 0 is_stmt 0 discriminator 1
	movl	$.LC4, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L8:
	.loc 1 218 0 is_stmt 1
	movq	-560(%rbp), %rax	# hmmfp, tmp155
	movq	(%rax), %rdx	# hmmfp_3->f, D.9256
	leaq	-584(%rbp), %rax	#, tmp156
	movq	%rdx, %rcx	# D.9256,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp156,
	call	fread	#
	testq	%rax, %rax	# D.9257
	jne	.L9	#,
	.loc 1 219 0
	movq	-560(%rbp), %rax	# hmmfp, tmp157
	movq	%rax, %rdi	# tmp157,
	call	HMMFileClose	#
	.loc 1 220 0
	movl	$0, %eax	#, D.9255
	jmp	.L27	#
.L9:
	.loc 1 222 0
	movq	-560(%rbp), %rax	# hmmfp, tmp158
	movq	(%rax), %rax	# hmmfp_3->f, D.9256
	movq	%rax, %rdi	# D.9256,
	call	rewind	#
	.loc 1 224 0
	movl	-584(%rbp), %edx	# magic, magic.2
	movl	v20magic(%rip), %eax	# v20magic, v20magic.3
	cmpl	%eax, %edx	# v20magic.3, magic.2
	jne	.L10	#,
	.loc 1 225 0
	movq	-560(%rbp), %rax	# hmmfp, tmp159
	movq	$read_bin20hmm, 16(%rax)	#, hmmfp_3->parser
	.loc 1 226 0
	movq	-560(%rbp), %rax	# hmmfp, tmp160
	movl	$1, 24(%rax)	#, hmmfp_3->is_binary
	.loc 1 227 0
	movq	-560(%rbp), %rax	# hmmfp, D.9255
	jmp	.L27	#
.L10:
	.loc 1 229 0
	movl	-584(%rbp), %edx	# magic, magic.4
	movl	v20swap(%rip), %eax	# v20swap, v20swap.5
	cmpl	%eax, %edx	# v20swap.5, magic.4
	jne	.L11	#,
	.loc 1 231 0
	movq	-560(%rbp), %rax	# hmmfp, tmp161
	movq	$read_bin20hmm, 16(%rax)	#, hmmfp_3->parser
	.loc 1 232 0
	movq	-560(%rbp), %rax	# hmmfp, tmp162
	movl	$1, 24(%rax)	#, hmmfp_3->is_binary
	.loc 1 233 0
	movq	-560(%rbp), %rax	# hmmfp, tmp163
	movl	$1, 28(%rax)	#, hmmfp_3->byteswap
	.loc 1 234 0
	movq	-560(%rbp), %rax	# hmmfp, D.9255
	jmp	.L27	#
.L11:
	.loc 1 236 0
	movl	-584(%rbp), %edx	# magic, magic.6
	movl	v19magic(%rip), %eax	# v19magic, v19magic.7
	cmpl	%eax, %edx	# v19magic.7, magic.6
	jne	.L12	#,
	.loc 1 237 0
	movq	-560(%rbp), %rax	# hmmfp, tmp164
	movq	$read_bin19hmm, 16(%rax)	#, hmmfp_3->parser
	.loc 1 238 0
	movq	-560(%rbp), %rax	# hmmfp, tmp165
	movl	$1, 24(%rax)	#, hmmfp_3->is_binary
	.loc 1 239 0
	movq	-560(%rbp), %rax	# hmmfp, D.9255
	jmp	.L27	#
.L12:
	.loc 1 241 0
	movl	-584(%rbp), %edx	# magic, magic.8
	movl	v19swap(%rip), %eax	# v19swap, v19swap.9
	cmpl	%eax, %edx	# v19swap.9, magic.8
	jne	.L13	#,
	.loc 1 242 0
	movq	-560(%rbp), %rax	# hmmfp, tmp166
	movq	$read_bin19hmm, 16(%rax)	#, hmmfp_3->parser
	.loc 1 243 0
	movq	-560(%rbp), %rax	# hmmfp, tmp167
	movl	$1, 24(%rax)	#, hmmfp_3->is_binary
	.loc 1 244 0
	movq	-560(%rbp), %rax	# hmmfp, tmp168
	movl	$1, 28(%rax)	#, hmmfp_3->byteswap
	.loc 1 245 0
	movq	-560(%rbp), %rax	# hmmfp, D.9255
	jmp	.L27	#
.L13:
	.loc 1 247 0
	movl	-584(%rbp), %edx	# magic, magic.10
	movl	v17magic(%rip), %eax	# v17magic, v17magic.11
	cmpl	%eax, %edx	# v17magic.11, magic.10
	jne	.L14	#,
	.loc 1 248 0
	movq	-560(%rbp), %rax	# hmmfp, tmp169
	movq	$read_bin17hmm, 16(%rax)	#, hmmfp_3->parser
	.loc 1 249 0
	movq	-560(%rbp), %rax	# hmmfp, tmp170
	movl	$1, 24(%rax)	#, hmmfp_3->is_binary
	.loc 1 250 0
	movq	-560(%rbp), %rax	# hmmfp, D.9255
	jmp	.L27	#
.L14:
	.loc 1 252 0
	movl	-584(%rbp), %edx	# magic, magic.12
	movl	v17swap(%rip), %eax	# v17swap, v17swap.13
	cmpl	%eax, %edx	# v17swap.13, magic.12
	jne	.L15	#,
	.loc 1 253 0
	movq	-560(%rbp), %rax	# hmmfp, tmp171
	movq	$read_bin17hmm, 16(%rax)	#, hmmfp_3->parser
	.loc 1 254 0
	movq	-560(%rbp), %rax	# hmmfp, tmp172
	movl	$1, 24(%rax)	#, hmmfp_3->is_binary
	.loc 1 255 0
	movq	-560(%rbp), %rax	# hmmfp, tmp173
	movl	$1, 28(%rax)	#, hmmfp_3->byteswap
	.loc 1 256 0
	movq	-560(%rbp), %rax	# hmmfp, D.9255
	jmp	.L27	#
.L15:
	.loc 1 258 0
	movl	-584(%rbp), %edx	# magic, magic.14
	movl	v11magic(%rip), %eax	# v11magic, v11magic.15
	cmpl	%eax, %edx	# v11magic.15, magic.14
	jne	.L16	#,
	.loc 1 259 0
	movq	-560(%rbp), %rax	# hmmfp, tmp174
	movq	$read_bin11hmm, 16(%rax)	#, hmmfp_3->parser
	.loc 1 260 0
	movq	-560(%rbp), %rax	# hmmfp, tmp175
	movl	$1, 24(%rax)	#, hmmfp_3->is_binary
	.loc 1 261 0
	movq	-560(%rbp), %rax	# hmmfp, D.9255
	jmp	.L27	#
.L16:
	.loc 1 263 0
	movl	-584(%rbp), %edx	# magic, magic.16
	movl	v11swap(%rip), %eax	# v11swap, v11swap.17
	cmpl	%eax, %edx	# v11swap.17, magic.16
	jne	.L17	#,
	.loc 1 264 0
	movq	-560(%rbp), %rax	# hmmfp, tmp176
	movq	$read_bin11hmm, 16(%rax)	#, hmmfp_3->parser
	.loc 1 265 0
	movq	-560(%rbp), %rax	# hmmfp, tmp177
	movl	$1, 24(%rax)	#, hmmfp_3->is_binary
	.loc 1 266 0
	movq	-560(%rbp), %rax	# hmmfp, tmp178
	movl	$1, 28(%rax)	#, hmmfp_3->byteswap
	.loc 1 267 0
	movq	-560(%rbp), %rax	# hmmfp, D.9255
	jmp	.L27	#
.L17:
	.loc 1 269 0
	movl	-584(%rbp), %edx	# magic, magic.18
	movl	v10magic(%rip), %eax	# v10magic, v10magic.19
	cmpl	%eax, %edx	# v10magic.19, magic.18
	jne	.L18	#,
	.loc 1 270 0
	movq	-560(%rbp), %rax	# hmmfp, tmp179
	movq	$read_bin10hmm, 16(%rax)	#, hmmfp_3->parser
	.loc 1 271 0
	movq	-560(%rbp), %rax	# hmmfp, tmp180
	movl	$1, 24(%rax)	#, hmmfp_3->is_binary
	.loc 1 272 0
	movq	-560(%rbp), %rax	# hmmfp, D.9255
	jmp	.L27	#
.L18:
	.loc 1 274 0
	movl	-584(%rbp), %edx	# magic, magic.20
	movl	v10swap(%rip), %eax	# v10swap, v10swap.21
	cmpl	%eax, %edx	# v10swap.21, magic.20
	jne	.L19	#,
	.loc 1 275 0
	movq	-560(%rbp), %rax	# hmmfp, tmp181
	movq	$read_bin10hmm, 16(%rax)	#, hmmfp_3->parser
	.loc 1 276 0
	movq	-560(%rbp), %rax	# hmmfp, tmp182
	movl	$1, 24(%rax)	#, hmmfp_3->is_binary
	.loc 1 277 0
	movq	-560(%rbp), %rax	# hmmfp, tmp183
	movl	$1, 28(%rax)	#, hmmfp_3->byteswap
	.loc 1 278 0
	movq	-560(%rbp), %rax	# hmmfp, D.9255
	jmp	.L27	#
.L19:
	.loc 1 284 0
	movl	-584(%rbp), %eax	# magic, magic.22
	testl	%eax, %eax	# magic.23
	jns	.L20	#,
	.loc 1 285 0
	movq	-600(%rbp), %rax	# hmmfile, tmp184
	movq	%rax, %rsi	# tmp184,
	movl	$.LC5, %edi	#,
	movl	$0, %eax	#,
	call	Warn	#
	.loc 1 289 0
	movq	-560(%rbp), %rax	# hmmfp, tmp185
	movq	%rax, %rdi	# tmp185,
	call	HMMFileClose	#
	.loc 1 290 0
	movl	$0, %eax	#, D.9255
	jmp	.L27	#
.L20:
	.loc 1 295 0
	movq	-560(%rbp), %rax	# hmmfp, tmp186
	movq	(%rax), %rdx	# hmmfp_3->f, D.9256
	leaq	-544(%rbp), %rax	#, tmp187
	movl	$512, %esi	#,
	movq	%rax, %rdi	# tmp187,
	call	fgets	#
	testq	%rax, %rax	# D.9261
	jne	.L21	#,
	.loc 1 296 0
	movq	-560(%rbp), %rax	# hmmfp, tmp188
	movq	%rax, %rdi	# tmp188,
	call	HMMFileClose	#
	.loc 1 297 0
	movl	$0, %eax	#, D.9255
	jmp	.L27	#
.L21:
	.loc 1 299 0
	movq	-560(%rbp), %rax	# hmmfp, tmp189
	movq	(%rax), %rax	# hmmfp_3->f, D.9256
	movq	%rax, %rdi	# D.9256,
	call	rewind	#
	.loc 1 301 0
	leaq	-544(%rbp), %rax	#, tmp190
	movl	$8, %edx	#,
	movq	%rax, %rsi	# tmp190,
	movl	$.LC6, %edi	#,
	call	strncmp	#
	testl	%eax, %eax	# D.9258
	jne	.L22	#,
	.loc 1 302 0
	movq	-560(%rbp), %rax	# hmmfp, tmp191
	movq	$read_asc20hmm, 16(%rax)	#, hmmfp_3->parser
	.loc 1 303 0
	movq	-560(%rbp), %rax	# hmmfp, D.9255
	jmp	.L27	#
.L22:
	.loc 1 304 0
	leaq	-544(%rbp), %rax	#, tmp192
	movl	$10, %edx	#,
	movq	%rax, %rsi	# tmp192,
	movl	$.LC7, %edi	#,
	call	strncmp	#
	testl	%eax, %eax	# D.9258
	jne	.L23	#,
	.loc 1 305 0
	movq	-560(%rbp), %rax	# hmmfp, tmp193
	movq	$read_asc19hmm, 16(%rax)	#, hmmfp_3->parser
	.loc 1 306 0
	movq	-560(%rbp), %rax	# hmmfp, D.9255
	jmp	.L27	#
.L23:
	.loc 1 307 0
	leaq	-544(%rbp), %rax	#, tmp194
	movl	$10, %edx	#,
	movq	%rax, %rsi	# tmp194,
	movl	$.LC8, %edi	#,
	call	strncmp	#
	testl	%eax, %eax	# D.9258
	jne	.L24	#,
	.loc 1 308 0
	movq	-560(%rbp), %rax	# hmmfp, tmp195
	movq	$read_asc17hmm, 16(%rax)	#, hmmfp_3->parser
	.loc 1 309 0
	movq	-560(%rbp), %rax	# hmmfp, D.9255
	jmp	.L27	#
.L24:
	.loc 1 310 0
	leaq	-544(%rbp), %rax	#, tmp196
	movl	$10, %edx	#,
	movq	%rax, %rsi	# tmp196,
	movl	$.LC9, %edi	#,
	call	strncmp	#
	testl	%eax, %eax	# D.9258
	jne	.L25	#,
	.loc 1 311 0
	movq	-560(%rbp), %rax	# hmmfp, tmp197
	movq	$read_asc11hmm, 16(%rax)	#, hmmfp_3->parser
	.loc 1 312 0
	movq	-560(%rbp), %rax	# hmmfp, D.9255
	jmp	.L27	#
.L25:
	.loc 1 313 0
	leaq	-544(%rbp), %rax	#, tmp198
	movl	$10, %edx	#,
	movq	%rax, %rsi	# tmp198,
	movl	$.LC10, %edi	#,
	call	strncmp	#
	testl	%eax, %eax	# D.9258
	jne	.L26	#,
	.loc 1 314 0
	movq	-560(%rbp), %rax	# hmmfp, tmp199
	movq	$read_asc10hmm, 16(%rax)	#, hmmfp_3->parser
	.loc 1 315 0
	movq	-560(%rbp), %rax	# hmmfp, D.9255
	jmp	.L27	#
.L26:
	.loc 1 320 0
	movq	-560(%rbp), %rax	# hmmfp, tmp200
	movq	%rax, %rdi	# tmp200,
	call	HMMFileClose	#
	.loc 1 321 0
	movl	$0, %eax	#, D.9255
.L27:
	.loc 1 322 0
	movq	-24(%rbp), %rbx	# D.9262, tmp203
	xorq	%fs:40, %rbx	#, tmp203
	je	.L28	#,
	call	__stack_chk_fail	#
.L28:
	addq	$600, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	HMMFileOpen, .-HMMFileOpen
	.globl	HMMFileRead
	.type	HMMFileRead, @function
HMMFileRead:
.LFB3:
	.loc 1 325 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# hmmfp, hmmfp
	movq	%rsi, -32(%rbp)	# ret_hmm, ret_hmm
	.loc 1 328 0
	movq	-24(%rbp), %rax	# hmmfp, tmp66
	movl	32(%rax), %eax	# hmmfp_1(D)->is_seekable, D.9276
	testl	%eax, %eax	# D.9276
	je	.L30	#,
	.loc 1 329 0
	movq	-24(%rbp), %rax	# hmmfp, tmp67
	leaq	40(%rax), %rdx	#, D.9277
	movq	-24(%rbp), %rax	# hmmfp, tmp68
	movl	36(%rax), %ecx	# hmmfp_1(D)->mode, D.9276
	movq	-24(%rbp), %rax	# hmmfp, tmp69
	movq	(%rax), %rax	# hmmfp_1(D)->f, D.9278
	movl	%ecx, %esi	# D.9276,
	movq	%rax, %rdi	# D.9278,
	call	SSIGetFilePosition	#
	movl	%eax, -4(%rbp)	# tmp70, status
	.loc 1 330 0
	cmpl	$0, -4(%rbp)	#, status
	je	.L30	#,
	.loc 1 330 0 is_stmt 0 discriminator 1
	movl	$.LC4, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L30:
	.loc 1 333 0 is_stmt 1
	movq	-24(%rbp), %rax	# hmmfp, tmp71
	movq	16(%rax), %rax	# hmmfp_1(D)->parser, D.9279
	movq	-32(%rbp), %rcx	# ret_hmm, tmp72
	movq	-24(%rbp), %rdx	# hmmfp, tmp73
	movq	%rcx, %rsi	# tmp72,
	movq	%rdx, %rdi	# tmp73,
	call	*%rax	# D.9279
	.loc 1 334 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	HMMFileRead, .-HMMFileRead
	.globl	HMMFileClose
	.type	HMMFileClose, @function
HMMFileClose:
.LFB4:
	.loc 1 337 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# hmmfp, hmmfp
	.loc 1 338 0
	movq	-8(%rbp), %rax	# hmmfp, tmp63
	movq	(%rax), %rax	# hmmfp_1(D)->f, D.9280
	testq	%rax, %rax	# D.9280
	je	.L33	#,
	.loc 1 338 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# hmmfp, tmp64
	movq	(%rax), %rax	# hmmfp_1(D)->f, D.9280
	movq	%rax, %rdi	# D.9280,
	call	fclose	#
.L33:
	.loc 1 339 0 is_stmt 1
	movq	-8(%rbp), %rax	# hmmfp, tmp65
	movq	8(%rax), %rax	# hmmfp_1(D)->ssi, D.9281
	testq	%rax, %rax	# D.9281
	je	.L34	#,
	.loc 1 339 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# hmmfp, tmp66
	movq	8(%rax), %rax	# hmmfp_1(D)->ssi, D.9281
	movq	%rax, %rdi	# D.9281,
	call	SSIClose	#
.L34:
	.loc 1 340 0 is_stmt 1
	movq	-8(%rbp), %rax	# hmmfp, tmp67
	movq	%rax, %rdi	# tmp67,
	call	free	#
	.loc 1 341 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	HMMFileClose, .-HMMFileClose
	.globl	HMMFileRewind
	.type	HMMFileRewind, @function
HMMFileRewind:
.LFB5:
	.loc 1 344 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# hmmfp, hmmfp
	.loc 1 345 0
	movq	-8(%rbp), %rax	# hmmfp, tmp60
	movq	(%rax), %rax	# hmmfp_1(D)->f, D.9282
	movq	%rax, %rdi	# D.9282,
	call	rewind	#
	.loc 1 346 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	HMMFileRewind, .-HMMFileRewind
	.globl	HMMFilePositionByName
	.type	HMMFilePositionByName, @function
HMMFilePositionByName:
.LFB6:
	.loc 1 349 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# hmmfp, hmmfp
	movq	%rsi, -48(%rbp)	# name, name
	.loc 1 353 0
	movq	-40(%rbp), %rax	# hmmfp, tmp66
	movq	8(%rax), %rax	# hmmfp_2(D)->ssi, D.9284
	testq	%rax, %rax	# D.9284
	jne	.L37	#,
	.loc 1 353 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.9283
	jmp	.L41	#
.L37:
	.loc 1 354 0 is_stmt 1
	movq	-40(%rbp), %rax	# hmmfp, tmp67
	movq	8(%rax), %rax	# hmmfp_2(D)->ssi, D.9284
	leaq	-16(%rbp), %rcx	#, tmp68
	leaq	-20(%rbp), %rdx	#, tmp69
	movq	-48(%rbp), %rsi	# name, tmp70
	movq	%rax, %rdi	# D.9284,
	call	SSIGetOffsetByName	#
	testl	%eax, %eax	# D.9283
	je	.L39	#,
	.loc 1 354 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.9283
	jmp	.L41	#
.L39:
	.loc 1 355 0 is_stmt 1
	movq	-40(%rbp), %rax	# hmmfp, tmp71
	movq	(%rax), %rax	# hmmfp_2(D)->f, D.9285
	leaq	-16(%rbp), %rdx	#, tmp72
	movq	%rdx, %rsi	# tmp72,
	movq	%rax, %rdi	# D.9285,
	call	SSISetFilePosition	#
	testl	%eax, %eax	# D.9283
	je	.L40	#,
	.loc 1 355 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.9283
	jmp	.L41	#
.L40:
	.loc 1 356 0 is_stmt 1
	movl	$1, %eax	#, D.9283
.L41:
	.loc 1 357 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	HMMFilePositionByName, .-HMMFilePositionByName
	.globl	HMMFilePositionByIndex
	.type	HMMFilePositionByIndex, @function
HMMFilePositionByIndex:
.LFB7:
	.loc 1 360 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# hmmfp, hmmfp
	movl	%esi, -44(%rbp)	# idx, idx
	.loc 1 364 0
	movq	-40(%rbp), %rax	# hmmfp, tmp66
	movq	8(%rax), %rax	# hmmfp_2(D)->ssi, D.9287
	testq	%rax, %rax	# D.9287
	jne	.L43	#,
	.loc 1 364 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.9286
	jmp	.L47	#
.L43:
	.loc 1 365 0 is_stmt 1
	movq	-40(%rbp), %rax	# hmmfp, tmp67
	movq	8(%rax), %rax	# hmmfp_2(D)->ssi, D.9287
	leaq	-16(%rbp), %rcx	#, tmp68
	leaq	-20(%rbp), %rdx	#, tmp69
	movl	-44(%rbp), %esi	# idx, tmp70
	movq	%rax, %rdi	# D.9287,
	call	SSIGetOffsetByNumber	#
	testl	%eax, %eax	# D.9286
	je	.L45	#,
	.loc 1 365 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.9286
	jmp	.L47	#
.L45:
	.loc 1 366 0 is_stmt 1
	movq	-40(%rbp), %rax	# hmmfp, tmp71
	movq	(%rax), %rax	# hmmfp_2(D)->f, D.9288
	leaq	-16(%rbp), %rdx	#, tmp72
	movq	%rdx, %rsi	# tmp72,
	movq	%rax, %rdi	# D.9288,
	call	SSISetFilePosition	#
	testl	%eax, %eax	# D.9286
	je	.L46	#,
	.loc 1 366 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.9286
	jmp	.L47	#
.L46:
	.loc 1 367 0 is_stmt 1
	movl	$1, %eax	#, D.9286
.L47:
	.loc 1 368 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	HMMFilePositionByIndex, .-HMMFilePositionByIndex
	.section	.rodata
.LC11:
	.string	"2.3"
.LC12:
	.string	"HMMER2.0  [%s]\n"
.LC13:
	.string	"NAME  %s\n"
.LC14:
	.string	"ACC   %s\n"
.LC15:
	.string	"DESC  %s\n"
.LC16:
	.string	"LENG  %d\n"
.LC17:
	.string	"Amino"
.LC18:
	.string	"Nucleic"
.LC19:
	.string	"ALPH  %s\n"
.LC20:
	.string	"yes"
.LC21:
	.string	"no"
.LC22:
	.string	"RF    %s\n"
.LC23:
	.string	"CS    %s\n"
.LC24:
	.string	"MAP   %s\n"
.LC25:
	.string	"COM   "
.LC26:
	.string	"NSEQ  %d\n"
.LC27:
	.string	"DATE  %s\n"
.LC28:
	.string	"CKSUM %d\n"
.LC29:
	.string	"GA    %.1f %.1f\n"
.LC30:
	.string	"TC    %.1f %.1f\n"
.LC31:
	.string	"NC    %.1f %.1f\n"
.LC32:
	.string	"XT     "
.LC34:
	.string	"%6s "
.LC35:
	.string	"NULT  "
.LC36:
	.string	"%6s\n"
.LC37:
	.string	"NULE  "
.LC38:
	.string	"EVD   %10f %10f\n"
.LC39:
	.string	"HMM      "
.LC40:
	.string	"  %c    "
.LC41:
	.string	"i->m"
.LC42:
	.string	"m->d"
.LC43:
	.string	"m->i"
.LC44:
	.string	"m->m"
	.align 8
.LC45:
	.string	"       %6s %6s %6s %6s %6s %6s %6s %6s %6s\n"
.LC46:
	.string	"m->e"
.LC47:
	.string	"b->m"
.LC48:
	.string	"d->d"
.LC49:
	.string	"d->m"
.LC50:
	.string	"i->i"
.LC51:
	.string	"*"
.LC52:
	.string	"       %6s %6s "
.LC53:
	.string	" %5d "
.LC54:
	.string	"%5d"
.LC55:
	.string	" %5c "
.LC56:
	.string	"//\n"
	.text
	.globl	WriteAscHMM
	.type	WriteAscHMM, @function
WriteAscHMM:
.LFB8:
	.loc 1 386 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80, %rsp	#,
	movq	%rdi, -24(%rbp)	# fp, fp
	movq	%rsi, -32(%rbp)	# hmm, hmm
	.loc 1 391 0
	movq	-24(%rbp), %rax	# fp, tmp197
	movl	$.LC11, %edx	#,
	movl	$.LC12, %esi	#,
	movq	%rax, %rdi	# tmp197,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 395 0
	movq	-32(%rbp), %rax	# hmm, tmp198
	movq	(%rax), %rdx	# hmm_18(D)->name, D.9289
	movq	-24(%rbp), %rax	# fp, tmp199
	movl	$.LC13, %esi	#,
	movq	%rax, %rdi	# tmp199,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 396 0
	movq	-32(%rbp), %rax	# hmm, tmp200
	movl	456(%rax), %eax	# hmm_18(D)->flags, D.9290
	andl	$512, %eax	#, D.9290
	testl	%eax, %eax	# D.9290
	je	.L49	#,
	.loc 1 397 0
	movq	-32(%rbp), %rax	# hmm, tmp201
	movq	8(%rax), %rdx	# hmm_18(D)->acc, D.9289
	movq	-24(%rbp), %rax	# fp, tmp202
	movl	$.LC14, %esi	#,
	movq	%rax, %rdi	# tmp202,
	movl	$0, %eax	#,
	call	fprintf	#
.L49:
	.loc 1 398 0
	movq	-32(%rbp), %rax	# hmm, tmp203
	movl	456(%rax), %eax	# hmm_18(D)->flags, D.9290
	andl	$2, %eax	#, D.9290
	testl	%eax, %eax	# D.9290
	je	.L50	#,
	.loc 1 399 0
	movq	-32(%rbp), %rax	# hmm, tmp204
	movq	16(%rax), %rdx	# hmm_18(D)->desc, D.9289
	movq	-24(%rbp), %rax	# fp, tmp205
	movl	$.LC15, %esi	#,
	movq	%rax, %rdi	# tmp205,
	movl	$0, %eax	#,
	call	fprintf	#
.L50:
	.loc 1 400 0
	movq	-32(%rbp), %rax	# hmm, tmp206
	movl	136(%rax), %edx	# hmm_18(D)->M, D.9290
	movq	-24(%rbp), %rax	# fp, tmp207
	movl	$.LC16, %esi	#,
	movq	%rax, %rdi	# tmp207,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 402 0
	movl	Alphabet_type(%rip), %eax	# Alphabet_type, Alphabet_type.25
	.loc 1 401 0
	cmpl	$3, %eax	#, Alphabet_type.25
	jne	.L51	#,
	.loc 1 401 0 is_stmt 0 discriminator 1
	movl	$.LC17, %eax	#, iftmp.24
	jmp	.L52	#
.L51:
	.loc 1 401 0 discriminator 2
	movl	$.LC18, %eax	#, iftmp.24
.L52:
	.loc 1 401 0 discriminator 3
	movq	-24(%rbp), %rcx	# fp, tmp208
	movq	%rax, %rdx	# iftmp.24,
	movl	$.LC19, %esi	#,
	movq	%rcx, %rdi	# tmp208,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 403 0 is_stmt 1 discriminator 3
	movq	-32(%rbp), %rax	# hmm, tmp209
	movl	456(%rax), %eax	# hmm_18(D)->flags, D.9290
	andl	$4, %eax	#, D.9290
	testl	%eax, %eax	# D.9290
	je	.L53	#,
	.loc 1 403 0 is_stmt 0 discriminator 1
	movl	$.LC20, %eax	#, iftmp.26
	jmp	.L54	#
.L53:
	.loc 1 403 0 discriminator 2
	movl	$.LC21, %eax	#, iftmp.26
.L54:
	.loc 1 403 0 discriminator 3
	movq	-24(%rbp), %rcx	# fp, tmp210
	movq	%rax, %rdx	# iftmp.26,
	movl	$.LC22, %esi	#,
	movq	%rcx, %rdi	# tmp210,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 404 0 is_stmt 1 discriminator 3
	movq	-32(%rbp), %rax	# hmm, tmp211
	movl	456(%rax), %eax	# hmm_18(D)->flags, D.9290
	andl	$8, %eax	#, D.9290
	testl	%eax, %eax	# D.9290
	je	.L55	#,
	.loc 1 404 0 is_stmt 0 discriminator 1
	movl	$.LC20, %eax	#, iftmp.27
	jmp	.L56	#
.L55:
	.loc 1 404 0 discriminator 2
	movl	$.LC21, %eax	#, iftmp.27
.L56:
	.loc 1 404 0 discriminator 3
	movq	-24(%rbp), %rcx	# fp, tmp212
	movq	%rax, %rdx	# iftmp.27,
	movl	$.LC23, %esi	#,
	movq	%rcx, %rdi	# tmp212,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 405 0 is_stmt 1 discriminator 3
	movq	-32(%rbp), %rax	# hmm, tmp213
	movl	456(%rax), %eax	# hmm_18(D)->flags, D.9290
	andl	$256, %eax	#, D.9290
	testl	%eax, %eax	# D.9290
	je	.L57	#,
	.loc 1 405 0 is_stmt 0 discriminator 1
	movl	$.LC20, %eax	#, iftmp.28
	jmp	.L58	#
.L57:
	.loc 1 405 0 discriminator 2
	movl	$.LC21, %eax	#, iftmp.28
.L58:
	.loc 1 405 0 discriminator 3
	movq	-24(%rbp), %rcx	# fp, tmp214
	movq	%rax, %rdx	# iftmp.28,
	movl	$.LC24, %esi	#,
	movq	%rcx, %rdi	# tmp214,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 406 0 is_stmt 1 discriminator 3
	movq	-32(%rbp), %rax	# hmm, tmp215
	movq	48(%rax), %rdx	# hmm_18(D)->comlog, D.9289
	movq	-24(%rbp), %rax	# fp, tmp216
	movl	$.LC25, %esi	#,
	movq	%rax, %rdi	# tmp216,
	call	multiline	#
	.loc 1 407 0 discriminator 3
	movq	-32(%rbp), %rax	# hmm, tmp217
	movl	56(%rax), %edx	# hmm_18(D)->nseq, D.9290
	movq	-24(%rbp), %rax	# fp, tmp218
	movl	$.LC26, %esi	#,
	movq	%rax, %rdi	# tmp218,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 408 0 discriminator 3
	movq	-32(%rbp), %rax	# hmm, tmp219
	movq	64(%rax), %rdx	# hmm_18(D)->ctime, D.9289
	movq	-24(%rbp), %rax	# fp, tmp220
	movl	$.LC27, %esi	#,
	movq	%rax, %rdi	# tmp220,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 409 0 discriminator 3
	movq	-32(%rbp), %rax	# hmm, tmp221
	movl	80(%rax), %edx	# hmm_18(D)->checksum, D.9290
	movq	-24(%rbp), %rax	# fp, tmp222
	movl	$.LC28, %esi	#,
	movq	%rax, %rdi	# tmp222,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 410 0 discriminator 3
	movq	-32(%rbp), %rax	# hmm, tmp223
	movl	456(%rax), %eax	# hmm_18(D)->flags, D.9290
	andl	$1024, %eax	#, D.9290
	testl	%eax, %eax	# D.9290
	je	.L59	#,
	.loc 1 411 0
	movq	-32(%rbp), %rax	# hmm, tmp224
	movss	116(%rax), %xmm0	# hmm_18(D)->ga2, D.9291
	unpcklps	%xmm0, %xmm0	# D.9291, D.9291
	cvtps2pd	%xmm0, %xmm1	# D.9291, D.9292
	movq	-32(%rbp), %rax	# hmm, tmp225
	movss	112(%rax), %xmm0	# hmm_18(D)->ga1, D.9291
	unpcklps	%xmm0, %xmm0	# D.9291, D.9291
	cvtps2pd	%xmm0, %xmm0	# D.9291, D.9292
	movq	-24(%rbp), %rax	# fp, tmp226
	movl	$.LC29, %esi	#,
	movq	%rax, %rdi	# tmp226,
	movl	$2, %eax	#,
	call	fprintf	#
.L59:
	.loc 1 412 0
	movq	-32(%rbp), %rax	# hmm, tmp227
	movl	456(%rax), %eax	# hmm_18(D)->flags, D.9290
	andl	$2048, %eax	#, D.9290
	testl	%eax, %eax	# D.9290
	je	.L60	#,
	.loc 1 413 0
	movq	-32(%rbp), %rax	# hmm, tmp228
	movss	124(%rax), %xmm0	# hmm_18(D)->tc2, D.9291
	unpcklps	%xmm0, %xmm0	# D.9291, D.9291
	cvtps2pd	%xmm0, %xmm1	# D.9291, D.9292
	movq	-32(%rbp), %rax	# hmm, tmp229
	movss	120(%rax), %xmm0	# hmm_18(D)->tc1, D.9291
	unpcklps	%xmm0, %xmm0	# D.9291, D.9291
	cvtps2pd	%xmm0, %xmm0	# D.9291, D.9292
	movq	-24(%rbp), %rax	# fp, tmp230
	movl	$.LC30, %esi	#,
	movq	%rax, %rdi	# tmp230,
	movl	$2, %eax	#,
	call	fprintf	#
.L60:
	.loc 1 414 0
	movq	-32(%rbp), %rax	# hmm, tmp231
	movl	456(%rax), %eax	# hmm_18(D)->flags, D.9290
	andl	$4096, %eax	#, D.9290
	testl	%eax, %eax	# D.9290
	je	.L61	#,
	.loc 1 415 0
	movq	-32(%rbp), %rax	# hmm, tmp232
	movss	132(%rax), %xmm0	# hmm_18(D)->nc2, D.9291
	unpcklps	%xmm0, %xmm0	# D.9291, D.9291
	cvtps2pd	%xmm0, %xmm1	# D.9291, D.9292
	movq	-32(%rbp), %rax	# hmm, tmp233
	movss	128(%rax), %xmm0	# hmm_18(D)->nc1, D.9291
	unpcklps	%xmm0, %xmm0	# D.9291, D.9291
	cvtps2pd	%xmm0, %xmm0	# D.9291, D.9292
	movq	-24(%rbp), %rax	# fp, tmp234
	movl	$.LC31, %esi	#,
	movq	%rax, %rdi	# tmp234,
	movl	$2, %eax	#,
	call	fprintf	#
.L61:
	.loc 1 419 0
	movq	-24(%rbp), %rax	# fp, tmp235
	movq	%rax, %rcx	# tmp235,
	movl	$7, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC32, %edi	#,
	call	fwrite	#
	.loc 1 420 0
	movl	$0, -12(%rbp)	#, k
	jmp	.L62	#
.L65:
	.loc 1 421 0
	movl	$0, -8(%rbp)	#, x
	jmp	.L63	#
.L64:
	.loc 1 422 0 discriminator 2
	movq	-32(%rbp), %rax	# hmm, tmp236
	movl	-8(%rbp), %edx	# x, tmp238
	movslq	%edx, %rdx	# tmp238, tmp237
	movl	-12(%rbp), %ecx	# k, tmp240
	movslq	%ecx, %rcx	# tmp240, tmp239
	addq	%rcx, %rcx	# tmp241
	addq	%rcx, %rdx	# tmp241, tmp242
	addq	$40, %rdx	#, tmp243
	movl	12(%rax,%rdx,4), %eax	# hmm_18(D)->xt, D.9291
	movss	.LC33(%rip), %xmm1	#,
	movl	%eax, -36(%rbp)	# D.9291, %sfp
	movss	-36(%rbp), %xmm0	# %sfp,
	call	prob2ascii	#
	movq	%rax, %rdx	#, D.9289
	movq	-24(%rbp), %rax	# fp, tmp244
	movl	$.LC34, %esi	#,
	movq	%rax, %rdi	# tmp244,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 421 0 discriminator 2
	addl	$1, -8(%rbp)	#, x
.L63:
	.loc 1 421 0 is_stmt 0 discriminator 1
	cmpl	$1, -8(%rbp)	#, x
	jle	.L64	#,
	.loc 1 420 0 is_stmt 1
	addl	$1, -12(%rbp)	#, k
.L62:
	.loc 1 420 0 is_stmt 0 discriminator 1
	cmpl	$3, -12(%rbp)	#, k
	jle	.L65	#,
	.loc 1 423 0 is_stmt 1
	movq	-24(%rbp), %rax	# fp, tmp245
	movq	%rax, %rsi	# tmp245,
	movl	$10, %edi	#,
	call	fputc	#
	.loc 1 429 0
	movq	-24(%rbp), %rax	# fp, tmp246
	movq	%rax, %rcx	# tmp246,
	movl	$6, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC35, %edi	#,
	call	fwrite	#
	.loc 1 430 0
	movq	-32(%rbp), %rax	# hmm, tmp247
	movl	304(%rax), %eax	# hmm_18(D)->p1, D.9291
	movss	.LC33(%rip), %xmm1	#,
	movl	%eax, -36(%rbp)	# D.9291, %sfp
	movss	-36(%rbp), %xmm0	# %sfp,
	call	prob2ascii	#
	movq	%rax, %rdx	#, D.9289
	movq	-24(%rbp), %rax	# fp, tmp248
	movl	$.LC34, %esi	#,
	movq	%rax, %rdi	# tmp248,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 431 0
	movq	-32(%rbp), %rax	# hmm, tmp249
	movss	304(%rax), %xmm1	# hmm_18(D)->p1, D.9291
	movss	.LC33(%rip), %xmm0	#, tmp250
	subss	%xmm1, %xmm0	# D.9291, D.9291
	movss	.LC33(%rip), %xmm1	#,
	call	prob2ascii	#
	movq	%rax, %rdx	#, D.9289
	movq	-24(%rbp), %rax	# fp, tmp251
	movl	$.LC36, %esi	#,
	movq	%rax, %rdi	# tmp251,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 432 0
	movq	-24(%rbp), %rax	# fp, tmp252
	movq	%rax, %rcx	# tmp252,
	movl	$6, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC37, %edi	#,
	call	fwrite	#
	.loc 1 433 0
	movl	$0, -8(%rbp)	#, x
	jmp	.L66	#
.L67:
	.loc 1 434 0 discriminator 2
	movl	Alphabet_size(%rip), %eax	# Alphabet_size, Alphabet_size.29
	cvtsi2ss	%eax, %xmm0	# Alphabet_size.29, D.9291
	movss	.LC33(%rip), %xmm1	#, tmp253
	divss	%xmm0, %xmm1	# D.9291, D.9291
	movaps	%xmm1, %xmm0	# D.9291, D.9291
	movq	-32(%rbp), %rax	# hmm, tmp254
	movl	-8(%rbp), %edx	# x, tmp256
	movslq	%edx, %rdx	# tmp256, tmp255
	addq	$56, %rdx	#, tmp257
	movl	(%rax,%rdx,4), %eax	# hmm_18(D)->null, D.9291
	movaps	%xmm0, %xmm1	# D.9291,
	movl	%eax, -36(%rbp)	# D.9291, %sfp
	movss	-36(%rbp), %xmm0	# %sfp,
	call	prob2ascii	#
	movq	%rax, %rdx	#, D.9289
	movq	-24(%rbp), %rax	# fp, tmp258
	movl	$.LC34, %esi	#,
	movq	%rax, %rdi	# tmp258,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 433 0 discriminator 2
	addl	$1, -8(%rbp)	#, x
.L66:
	.loc 1 433 0 is_stmt 0 discriminator 1
	movl	Alphabet_size(%rip), %eax	# Alphabet_size, Alphabet_size.30
	cmpl	%eax, -8(%rbp)	# Alphabet_size.30, x
	jl	.L67	#,
	.loc 1 435 0 is_stmt 1
	movq	-24(%rbp), %rax	# fp, tmp259
	movq	%rax, %rsi	# tmp259,
	movl	$10, %edi	#,
	call	fputc	#
	.loc 1 439 0
	movq	-32(%rbp), %rax	# hmm, tmp260
	movl	456(%rax), %eax	# hmm_18(D)->flags, D.9290
	andl	$128, %eax	#, D.9290
	testl	%eax, %eax	# D.9290
	je	.L68	#,
	.loc 1 440 0
	movq	-32(%rbp), %rax	# hmm, tmp261
	movss	452(%rax), %xmm0	# hmm_18(D)->lambda, D.9291
	unpcklps	%xmm0, %xmm0	# D.9291, D.9291
	cvtps2pd	%xmm0, %xmm1	# D.9291, D.9292
	movq	-32(%rbp), %rax	# hmm, tmp262
	movss	448(%rax), %xmm0	# hmm_18(D)->mu, D.9291
	unpcklps	%xmm0, %xmm0	# D.9291, D.9291
	cvtps2pd	%xmm0, %xmm0	# D.9291, D.9292
	movq	-24(%rbp), %rax	# fp, tmp263
	movl	$.LC38, %esi	#,
	movq	%rax, %rdi	# tmp263,
	movl	$2, %eax	#,
	call	fprintf	#
.L68:
	.loc 1 444 0
	movq	-24(%rbp), %rax	# fp, tmp264
	movq	%rax, %rcx	# tmp264,
	movl	$9, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC39, %edi	#,
	call	fwrite	#
	.loc 1 445 0
	movl	$0, -8(%rbp)	#, x
	jmp	.L69	#
.L70:
	.loc 1 445 0 is_stmt 0 discriminator 2
	movl	-8(%rbp), %eax	# x, tmp266
	cltq
	movzbl	Alphabet(%rax), %eax	# Alphabet, D.9293
	movsbl	%al, %edx	# D.9293, D.9290
	movq	-24(%rbp), %rax	# fp, tmp267
	movl	$.LC40, %esi	#,
	movq	%rax, %rdi	# tmp267,
	movl	$0, %eax	#,
	call	fprintf	#
	addl	$1, -8(%rbp)	#, x
.L69:
	.loc 1 445 0 discriminator 1
	movl	Alphabet_size(%rip), %eax	# Alphabet_size, Alphabet_size.31
	cmpl	%eax, -8(%rbp)	# Alphabet_size.31, x
	jl	.L70	#,
	.loc 1 446 0 is_stmt 1
	movq	-24(%rbp), %rax	# fp, tmp268
	movq	%rax, %rsi	# tmp268,
	movl	$10, %edi	#,
	call	fputc	#
	.loc 1 447 0
	movq	-24(%rbp), %rax	# fp, tmp269
	movq	$.LC46, 32(%rsp)	#,
	movq	$.LC47, 24(%rsp)	#,
	movq	$.LC48, 16(%rsp)	#,
	movq	$.LC49, 8(%rsp)	#,
	movq	$.LC50, (%rsp)	#,
	movl	$.LC41, %r9d	#,
	movl	$.LC42, %r8d	#,
	movl	$.LC43, %ecx	#,
	movl	$.LC44, %edx	#,
	movl	$.LC45, %esi	#,
	movq	%rax, %rdi	# tmp269,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 452 0
	movq	-32(%rbp), %rax	# hmm, tmp270
	movss	168(%rax), %xmm1	# hmm_18(D)->tbd1, D.9291
	movss	.LC33(%rip), %xmm0	#, tmp271
	subss	%xmm1, %xmm0	# D.9291, D.9291
	movss	.LC33(%rip), %xmm1	#,
	call	prob2ascii	#
	movq	%rax, %rdx	#, D.9289
	movq	-24(%rbp), %rax	# fp, tmp272
	movl	$.LC51, %ecx	#,
	movl	$.LC52, %esi	#,
	movq	%rax, %rdi	# tmp272,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 453 0
	movq	-32(%rbp), %rax	# hmm, tmp273
	movl	168(%rax), %eax	# hmm_18(D)->tbd1, D.9291
	movss	.LC33(%rip), %xmm1	#,
	movl	%eax, -36(%rbp)	# D.9291, %sfp
	movss	-36(%rbp), %xmm0	# %sfp,
	call	prob2ascii	#
	movq	%rax, %rdx	#, D.9289
	movq	-24(%rbp), %rax	# fp, tmp274
	movl	$.LC36, %esi	#,
	movq	%rax, %rdi	# tmp274,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 454 0
	movl	$1, -12(%rbp)	#, k
	jmp	.L71	#
.L87:
	.loc 1 457 0
	movl	-12(%rbp), %edx	# k, tmp275
	movq	-24(%rbp), %rax	# fp, tmp276
	movl	$.LC53, %esi	#,
	movq	%rax, %rdi	# tmp276,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 458 0
	movl	$0, -8(%rbp)	#, x
	jmp	.L72	#
.L73:
	.loc 1 459 0 discriminator 2
	movq	-32(%rbp), %rax	# hmm, tmp277
	movl	-8(%rbp), %edx	# x, tmp279
	movslq	%edx, %rdx	# tmp279, tmp278
	addq	$56, %rdx	#, tmp280
	movl	(%rax,%rdx,4), %edx	# hmm_18(D)->null, D.9291
	movq	-32(%rbp), %rax	# hmm, tmp281
	movq	152(%rax), %rax	# hmm_18(D)->mat, D.9294
	movl	-12(%rbp), %ecx	# k, tmp282
	movslq	%ecx, %rcx	# tmp282, D.9295
	salq	$3, %rcx	#, D.9295
	addq	%rcx, %rax	# D.9295, D.9294
	movq	(%rax), %rax	# *_107, D.9296
	movl	-8(%rbp), %ecx	# x, tmp283
	movslq	%ecx, %rcx	# tmp283, D.9295
	salq	$2, %rcx	#, D.9295
	addq	%rcx, %rax	# D.9295, D.9296
	movl	(%rax), %eax	# *_111, D.9291
	movl	%edx, -36(%rbp)	# D.9291, %sfp
	movss	-36(%rbp), %xmm1	# %sfp,
	movl	%eax, -36(%rbp)	# D.9291, %sfp
	movss	-36(%rbp), %xmm0	# %sfp,
	call	prob2ascii	#
	movq	%rax, %rdx	#, D.9289
	movq	-24(%rbp), %rax	# fp, tmp284
	movl	$.LC34, %esi	#,
	movq	%rax, %rdi	# tmp284,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 458 0 discriminator 2
	addl	$1, -8(%rbp)	#, x
.L72:
	.loc 1 458 0 is_stmt 0 discriminator 1
	movl	Alphabet_size(%rip), %eax	# Alphabet_size, Alphabet_size.32
	cmpl	%eax, -8(%rbp)	# Alphabet_size.32, x
	jl	.L73	#,
	.loc 1 460 0 is_stmt 1
	movq	-32(%rbp), %rax	# hmm, tmp285
	movl	456(%rax), %eax	# hmm_18(D)->flags, D.9290
	andl	$256, %eax	#, D.9290
	testl	%eax, %eax	# D.9290
	je	.L74	#,
	.loc 1 460 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# hmm, tmp286
	movq	72(%rax), %rax	# hmm_18(D)->map, D.9297
	movl	-12(%rbp), %edx	# k, tmp287
	movslq	%edx, %rdx	# tmp287, D.9295
	salq	$2, %rdx	#, D.9295
	addq	%rdx, %rax	# D.9295, D.9297
	movl	(%rax), %edx	# *_120, D.9290
	movq	-24(%rbp), %rax	# fp, tmp288
	movl	$.LC54, %esi	#,
	movq	%rax, %rdi	# tmp288,
	movl	$0, %eax	#,
	call	fprintf	#
.L74:
	.loc 1 461 0 is_stmt 1
	movq	-24(%rbp), %rax	# fp, tmp289
	movq	%rax, %rsi	# tmp289,
	movl	$10, %edi	#,
	call	fputc	#
	.loc 1 463 0
	movq	-32(%rbp), %rax	# hmm, tmp290
	movl	456(%rax), %eax	# hmm_18(D)->flags, D.9290
	andl	$4, %eax	#, D.9290
	testl	%eax, %eax	# D.9290
	je	.L75	#,
	.loc 1 463 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# hmm, tmp291
	movq	24(%rax), %rdx	# hmm_18(D)->rf, D.9289
	movl	-12(%rbp), %eax	# k, tmp292
	cltq
	addq	%rdx, %rax	# D.9289, D.9289
	movzbl	(%rax), %eax	# *_126, D.9293
	movsbl	%al, %eax	# D.9293, iftmp.33
	jmp	.L76	#
.L75:
	.loc 1 463 0 discriminator 2
	movl	$45, %eax	#, iftmp.33
.L76:
	.loc 1 463 0 discriminator 3
	movq	-24(%rbp), %rcx	# fp, tmp293
	movl	%eax, %edx	# iftmp.33,
	movl	$.LC55, %esi	#,
	movq	%rcx, %rdi	# tmp293,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 464 0 is_stmt 1 discriminator 3
	movl	$0, -8(%rbp)	#, x
	jmp	.L77	#
.L80:
	.loc 1 465 0
	movq	-32(%rbp), %rax	# hmm, tmp294
	movl	136(%rax), %eax	# hmm_18(D)->M, D.9290
	cmpl	-12(%rbp), %eax	# k, D.9290
	jle	.L78	#,
	.loc 1 465 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# hmm, tmp295
	movl	-8(%rbp), %edx	# x, tmp297
	movslq	%edx, %rdx	# tmp297, tmp296
	addq	$56, %rdx	#, tmp298
	movl	(%rax,%rdx,4), %edx	# hmm_18(D)->null, D.9291
	movq	-32(%rbp), %rax	# hmm, tmp299
	movq	160(%rax), %rax	# hmm_18(D)->ins, D.9294
	movl	-12(%rbp), %ecx	# k, tmp300
	movslq	%ecx, %rcx	# tmp300, D.9295
	salq	$3, %rcx	#, D.9295
	addq	%rcx, %rax	# D.9295, D.9294
	movq	(%rax), %rax	# *_137, D.9296
	movl	-8(%rbp), %ecx	# x, tmp301
	movslq	%ecx, %rcx	# tmp301, D.9295
	salq	$2, %rcx	#, D.9295
	addq	%rcx, %rax	# D.9295, D.9296
	movl	(%rax), %eax	# *_141, D.9291
	movl	%edx, -36(%rbp)	# D.9291, %sfp
	movss	-36(%rbp), %xmm1	# %sfp,
	movl	%eax, -36(%rbp)	# D.9291, %sfp
	movss	-36(%rbp), %xmm0	# %sfp,
	call	prob2ascii	#
	jmp	.L79	#
.L78:
	.loc 1 465 0 discriminator 2
	movl	$.LC51, %eax	#, iftmp.34
.L79:
	.loc 1 465 0 discriminator 3
	movq	-24(%rbp), %rcx	# fp, tmp302
	movq	%rax, %rdx	# iftmp.34,
	movl	$.LC34, %esi	#,
	movq	%rcx, %rdi	# tmp302,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 464 0 is_stmt 1 discriminator 3
	addl	$1, -8(%rbp)	#, x
.L77:
	.loc 1 464 0 is_stmt 0 discriminator 1
	movl	Alphabet_size(%rip), %eax	# Alphabet_size, Alphabet_size.35
	cmpl	%eax, -8(%rbp)	# Alphabet_size.35, x
	jl	.L80	#,
	.loc 1 466 0 is_stmt 1
	movq	-24(%rbp), %rax	# fp, tmp303
	movq	%rax, %rsi	# tmp303,
	movl	$10, %edi	#,
	call	fputc	#
	.loc 1 468 0
	movq	-32(%rbp), %rax	# hmm, tmp304
	movl	456(%rax), %eax	# hmm_18(D)->flags, D.9290
	andl	$8, %eax	#, D.9290
	testl	%eax, %eax	# D.9290
	je	.L81	#,
	.loc 1 468 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# hmm, tmp305
	movq	32(%rax), %rdx	# hmm_18(D)->cs, D.9289
	movl	-12(%rbp), %eax	# k, tmp306
	cltq
	addq	%rdx, %rax	# D.9289, D.9289
	movzbl	(%rax), %eax	# *_150, D.9293
	movsbl	%al, %eax	# D.9293, iftmp.36
	jmp	.L82	#
.L81:
	.loc 1 468 0 discriminator 2
	movl	$45, %eax	#, iftmp.36
.L82:
	.loc 1 468 0 discriminator 3
	movq	-24(%rbp), %rcx	# fp, tmp307
	movl	%eax, %edx	# iftmp.36,
	movl	$.LC55, %esi	#,
	movq	%rcx, %rdi	# tmp307,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 469 0 is_stmt 1 discriminator 3
	movl	$0, -4(%rbp)	#, ts
	jmp	.L83	#
.L86:
	.loc 1 470 0
	movq	-32(%rbp), %rax	# hmm, tmp308
	movl	136(%rax), %eax	# hmm_18(D)->M, D.9290
	cmpl	-12(%rbp), %eax	# k, D.9290
	jle	.L84	#,
	.loc 1 470 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# hmm, tmp309
	movq	144(%rax), %rax	# hmm_18(D)->t, D.9294
	movl	-12(%rbp), %edx	# k, tmp310
	movslq	%edx, %rdx	# tmp310, D.9295
	salq	$3, %rdx	#, D.9295
	addq	%rdx, %rax	# D.9295, D.9294
	movq	(%rax), %rax	# *_159, D.9296
	movl	-4(%rbp), %edx	# ts, tmp311
	movslq	%edx, %rdx	# tmp311, D.9295
	salq	$2, %rdx	#, D.9295
	addq	%rdx, %rax	# D.9295, D.9296
	movl	(%rax), %eax	# *_163, D.9291
	movss	.LC33(%rip), %xmm1	#,
	movl	%eax, -36(%rbp)	# D.9291, %sfp
	movss	-36(%rbp), %xmm0	# %sfp,
	call	prob2ascii	#
	jmp	.L85	#
.L84:
	.loc 1 470 0 discriminator 2
	movl	$.LC51, %eax	#, iftmp.37
.L85:
	.loc 1 470 0 discriminator 3
	movq	-24(%rbp), %rcx	# fp, tmp312
	movq	%rax, %rdx	# iftmp.37,
	movl	$.LC34, %esi	#,
	movq	%rcx, %rdi	# tmp312,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 469 0 is_stmt 1 discriminator 3
	addl	$1, -4(%rbp)	#, ts
.L83:
	.loc 1 469 0 is_stmt 0 discriminator 1
	cmpl	$6, -4(%rbp)	#, ts
	jle	.L86	#,
	.loc 1 471 0 is_stmt 1
	movq	-32(%rbp), %rax	# hmm, tmp313
	movq	208(%rax), %rax	# hmm_18(D)->begin, D.9296
	movl	-12(%rbp), %edx	# k, tmp314
	movslq	%edx, %rdx	# tmp314, D.9295
	salq	$2, %rdx	#, D.9295
	addq	%rdx, %rax	# D.9295, D.9296
	movl	(%rax), %eax	# *_171, D.9291
	movss	.LC33(%rip), %xmm1	#,
	movl	%eax, -36(%rbp)	# D.9291, %sfp
	movss	-36(%rbp), %xmm0	# %sfp,
	call	prob2ascii	#
	movq	%rax, %rdx	#, D.9289
	movq	-24(%rbp), %rax	# fp, tmp315
	movl	$.LC34, %esi	#,
	movq	%rax, %rdi	# tmp315,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 472 0
	movq	-32(%rbp), %rax	# hmm, tmp316
	movq	216(%rax), %rax	# hmm_18(D)->end, D.9296
	movl	-12(%rbp), %edx	# k, tmp317
	movslq	%edx, %rdx	# tmp317, D.9295
	salq	$2, %rdx	#, D.9295
	addq	%rdx, %rax	# D.9295, D.9296
	movl	(%rax), %eax	# *_177, D.9291
	movss	.LC33(%rip), %xmm1	#,
	movl	%eax, -36(%rbp)	# D.9291, %sfp
	movss	-36(%rbp), %xmm0	# %sfp,
	call	prob2ascii	#
	movq	%rax, %rdx	#, D.9289
	movq	-24(%rbp), %rax	# fp, tmp318
	movl	$.LC34, %esi	#,
	movq	%rax, %rdi	# tmp318,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 474 0
	movq	-24(%rbp), %rax	# fp, tmp319
	movq	%rax, %rsi	# tmp319,
	movl	$10, %edi	#,
	call	fputc	#
	.loc 1 454 0
	addl	$1, -12(%rbp)	#, k
.L71:
	.loc 1 454 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# hmm, tmp320
	movl	136(%rax), %eax	# hmm_18(D)->M, D.9290
	cmpl	-12(%rbp), %eax	# k, D.9290
	jge	.L87	#,
	.loc 1 476 0 is_stmt 1
	movq	-24(%rbp), %rax	# fp, tmp321
	movq	%rax, %rcx	# tmp321,
	movl	$3, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC56, %edi	#,
	call	fwrite	#
	.loc 1 477 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	WriteAscHMM, .-WriteAscHMM
	.globl	WriteBinHMM
	.type	WriteBinHMM, @function
WriteBinHMM:
.LFB9:
	.loc 1 485 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# fp, fp
	movq	%rsi, -32(%rbp)	# hmm, hmm
	.loc 1 489 0
	movq	-24(%rbp), %rax	# fp, tmp142
	movq	%rax, %rcx	# tmp142,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	movl	$v20magic, %edi	#,
	call	fwrite	#
	.loc 1 493 0
	movq	-32(%rbp), %rax	# hmm, tmp143
	leaq	456(%rax), %rdi	#, D.9345
	movq	-24(%rbp), %rax	# fp, tmp144
	movq	%rax, %rcx	# tmp144,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	call	fwrite	#
	.loc 1 494 0
	movq	-32(%rbp), %rax	# hmm, tmp145
	movq	(%rax), %rdx	# hmm_6(D)->name, D.9346
	movq	-24(%rbp), %rax	# fp, tmp146
	movq	%rdx, %rsi	# D.9346,
	movq	%rax, %rdi	# tmp146,
	call	write_bin_string	#
	.loc 1 495 0
	movq	-32(%rbp), %rax	# hmm, tmp147
	movl	456(%rax), %eax	# hmm_6(D)->flags, D.9347
	andl	$512, %eax	#, D.9347
	testl	%eax, %eax	# D.9347
	je	.L89	#,
	.loc 1 495 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# hmm, tmp148
	movq	8(%rax), %rdx	# hmm_6(D)->acc, D.9346
	movq	-24(%rbp), %rax	# fp, tmp149
	movq	%rdx, %rsi	# D.9346,
	movq	%rax, %rdi	# tmp149,
	call	write_bin_string	#
.L89:
	.loc 1 496 0 is_stmt 1
	movq	-32(%rbp), %rax	# hmm, tmp150
	movl	456(%rax), %eax	# hmm_6(D)->flags, D.9347
	andl	$2, %eax	#, D.9347
	testl	%eax, %eax	# D.9347
	je	.L90	#,
	.loc 1 496 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# hmm, tmp151
	movq	16(%rax), %rdx	# hmm_6(D)->desc, D.9346
	movq	-24(%rbp), %rax	# fp, tmp152
	movq	%rdx, %rsi	# D.9346,
	movq	%rax, %rdi	# tmp152,
	call	write_bin_string	#
.L90:
	.loc 1 497 0 is_stmt 1
	movq	-32(%rbp), %rax	# hmm, tmp153
	leaq	136(%rax), %rdi	#, D.9345
	movq	-24(%rbp), %rax	# fp, tmp154
	movq	%rax, %rcx	# tmp154,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	call	fwrite	#
	.loc 1 498 0
	movq	-24(%rbp), %rax	# fp, tmp155
	movq	%rax, %rcx	# tmp155,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	movl	$Alphabet_type, %edi	#,
	call	fwrite	#
	.loc 1 499 0
	movq	-32(%rbp), %rax	# hmm, tmp156
	movl	456(%rax), %eax	# hmm_6(D)->flags, D.9347
	andl	$4, %eax	#, D.9347
	testl	%eax, %eax	# D.9347
	je	.L91	#,
	.loc 1 499 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# hmm, tmp157
	movl	136(%rax), %eax	# hmm_6(D)->M, D.9347
	addl	$1, %eax	#, D.9347
	movslq	%eax, %rdx	# D.9347, D.9348
	movq	-32(%rbp), %rax	# hmm, tmp158
	movq	24(%rax), %rax	# hmm_6(D)->rf, D.9346
	movq	-24(%rbp), %rcx	# fp, tmp159
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.9346,
	call	fwrite	#
.L91:
	.loc 1 500 0 is_stmt 1
	movq	-32(%rbp), %rax	# hmm, tmp160
	movl	456(%rax), %eax	# hmm_6(D)->flags, D.9347
	andl	$8, %eax	#, D.9347
	testl	%eax, %eax	# D.9347
	je	.L92	#,
	.loc 1 500 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# hmm, tmp161
	movl	136(%rax), %eax	# hmm_6(D)->M, D.9347
	addl	$1, %eax	#, D.9347
	movslq	%eax, %rdx	# D.9347, D.9348
	movq	-32(%rbp), %rax	# hmm, tmp162
	movq	32(%rax), %rax	# hmm_6(D)->cs, D.9346
	movq	-24(%rbp), %rcx	# fp, tmp163
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.9346,
	call	fwrite	#
.L92:
	.loc 1 501 0 is_stmt 1
	movq	-32(%rbp), %rax	# hmm, tmp164
	movl	456(%rax), %eax	# hmm_6(D)->flags, D.9347
	andl	$256, %eax	#, D.9347
	testl	%eax, %eax	# D.9347
	je	.L93	#,
	.loc 1 501 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# hmm, tmp165
	movl	136(%rax), %eax	# hmm_6(D)->M, D.9347
	addl	$1, %eax	#, D.9347
	movslq	%eax, %rdx	# D.9347, D.9348
	movq	-32(%rbp), %rax	# hmm, tmp166
	movq	72(%rax), %rax	# hmm_6(D)->map, D.9345
	movq	-24(%rbp), %rcx	# fp, tmp167
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.9345,
	call	fwrite	#
.L93:
	.loc 1 502 0 is_stmt 1
	movq	-32(%rbp), %rax	# hmm, tmp168
	movq	48(%rax), %rdx	# hmm_6(D)->comlog, D.9346
	movq	-24(%rbp), %rax	# fp, tmp169
	movq	%rdx, %rsi	# D.9346,
	movq	%rax, %rdi	# tmp169,
	call	write_bin_string	#
	.loc 1 503 0
	movq	-32(%rbp), %rax	# hmm, tmp170
	leaq	56(%rax), %rdi	#, D.9345
	movq	-24(%rbp), %rax	# fp, tmp171
	movq	%rax, %rcx	# tmp171,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	call	fwrite	#
	.loc 1 504 0
	movq	-32(%rbp), %rax	# hmm, tmp172
	movq	64(%rax), %rdx	# hmm_6(D)->ctime, D.9346
	movq	-24(%rbp), %rax	# fp, tmp173
	movq	%rdx, %rsi	# D.9346,
	movq	%rax, %rdi	# tmp173,
	call	write_bin_string	#
	.loc 1 505 0
	movq	-32(%rbp), %rax	# hmm, tmp174
	leaq	80(%rax), %rdi	#, D.9345
	movq	-24(%rbp), %rax	# fp, tmp175
	movq	%rax, %rcx	# tmp175,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	call	fwrite	#
	.loc 1 506 0
	movq	-32(%rbp), %rax	# hmm, tmp176
	movl	456(%rax), %eax	# hmm_6(D)->flags, D.9347
	andl	$1024, %eax	#, D.9347
	testl	%eax, %eax	# D.9347
	je	.L94	#,
	.loc 1 507 0
	movq	-32(%rbp), %rax	# hmm, tmp177
	leaq	112(%rax), %rdi	#, D.9349
	movq	-24(%rbp), %rax	# fp, tmp178
	movq	%rax, %rcx	# tmp178,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	call	fwrite	#
	.loc 1 508 0
	movq	-32(%rbp), %rax	# hmm, tmp179
	leaq	116(%rax), %rdi	#, D.9349
	movq	-24(%rbp), %rax	# fp, tmp180
	movq	%rax, %rcx	# tmp180,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	call	fwrite	#
.L94:
	.loc 1 510 0
	movq	-32(%rbp), %rax	# hmm, tmp181
	movl	456(%rax), %eax	# hmm_6(D)->flags, D.9347
	andl	$2048, %eax	#, D.9347
	testl	%eax, %eax	# D.9347
	je	.L95	#,
	.loc 1 511 0
	movq	-32(%rbp), %rax	# hmm, tmp182
	leaq	120(%rax), %rdi	#, D.9349
	movq	-24(%rbp), %rax	# fp, tmp183
	movq	%rax, %rcx	# tmp183,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	call	fwrite	#
	.loc 1 512 0
	movq	-32(%rbp), %rax	# hmm, tmp184
	leaq	124(%rax), %rdi	#, D.9349
	movq	-24(%rbp), %rax	# fp, tmp185
	movq	%rax, %rcx	# tmp185,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	call	fwrite	#
.L95:
	.loc 1 514 0
	movq	-32(%rbp), %rax	# hmm, tmp186
	movl	456(%rax), %eax	# hmm_6(D)->flags, D.9347
	andl	$4096, %eax	#, D.9347
	testl	%eax, %eax	# D.9347
	je	.L96	#,
	.loc 1 515 0
	movq	-32(%rbp), %rax	# hmm, tmp187
	leaq	128(%rax), %rdi	#, D.9349
	movq	-24(%rbp), %rax	# fp, tmp188
	movq	%rax, %rcx	# tmp188,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	call	fwrite	#
	.loc 1 516 0
	movq	-32(%rbp), %rax	# hmm, tmp189
	leaq	132(%rax), %rdi	#, D.9349
	movq	-24(%rbp), %rax	# fp, tmp190
	movq	%rax, %rcx	# tmp190,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	call	fwrite	#
.L96:
	.loc 1 520 0
	movl	$0, -4(%rbp)	#, k
	jmp	.L97	#
.L98:
	.loc 1 521 0 discriminator 2
	movl	-4(%rbp), %eax	# k, tmp192
	cltq
	addq	$20, %rax	#, tmp193
	leaq	0(,%rax,8), %rdx	#, tmp194
	movq	-32(%rbp), %rax	# hmm, tmp196
	addq	%rdx, %rax	# tmp194, tmp195
	leaq	12(%rax), %rdi	#, D.9350
	movq	-24(%rbp), %rax	# fp, tmp197
	movq	%rax, %rcx	# tmp197,
	movl	$2, %edx	#,
	movl	$4, %esi	#,
	call	fwrite	#
	.loc 1 520 0 discriminator 2
	addl	$1, -4(%rbp)	#, k
.L97:
	.loc 1 520 0 is_stmt 0 discriminator 1
	cmpl	$3, -4(%rbp)	#, k
	jle	.L98	#,
	.loc 1 524 0 is_stmt 1
	movq	-32(%rbp), %rax	# hmm, tmp198
	leaq	304(%rax), %rdi	#, D.9349
	movq	-24(%rbp), %rax	# fp, tmp199
	movq	%rax, %rcx	# tmp199,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	call	fwrite	#
	.loc 1 525 0
	movl	Alphabet_size(%rip), %eax	# Alphabet_size, Alphabet_size.38
	cltq
	movq	-32(%rbp), %rdx	# hmm, tmp200
	leaq	224(%rdx), %rdi	#, D.9351
	movq	-24(%rbp), %rdx	# fp, tmp201
	movq	%rdx, %rcx	# tmp201,
	movq	%rax, %rdx	# D.9348,
	movl	$4, %esi	#,
	call	fwrite	#
	.loc 1 528 0
	movq	-32(%rbp), %rax	# hmm, tmp202
	movl	456(%rax), %eax	# hmm_6(D)->flags, D.9347
	andl	$128, %eax	#, D.9347
	testl	%eax, %eax	# D.9347
	je	.L99	#,
	.loc 1 529 0
	movq	-32(%rbp), %rax	# hmm, tmp203
	leaq	448(%rax), %rdi	#, D.9349
	movq	-24(%rbp), %rax	# fp, tmp204
	movq	%rax, %rcx	# tmp204,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	call	fwrite	#
	.loc 1 530 0
	movq	-32(%rbp), %rax	# hmm, tmp205
	leaq	452(%rax), %rdi	#, D.9349
	movq	-24(%rbp), %rax	# fp, tmp206
	movq	%rax, %rcx	# tmp206,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	call	fwrite	#
.L99:
	.loc 1 535 0
	movq	-32(%rbp), %rax	# hmm, tmp207
	leaq	168(%rax), %rdi	#, D.9349
	movq	-24(%rbp), %rax	# fp, tmp208
	movq	%rax, %rcx	# tmp208,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	call	fwrite	#
	.loc 1 536 0
	movq	-32(%rbp), %rax	# hmm, tmp209
	movl	136(%rax), %eax	# hmm_6(D)->M, D.9347
	addl	$1, %eax	#, D.9347
	movslq	%eax, %rdx	# D.9347, D.9348
	movq	-32(%rbp), %rax	# hmm, tmp210
	movq	208(%rax), %rax	# hmm_6(D)->begin, D.9349
	movq	-24(%rbp), %rcx	# fp, tmp211
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.9349,
	call	fwrite	#
	.loc 1 537 0
	movq	-32(%rbp), %rax	# hmm, tmp212
	movl	136(%rax), %eax	# hmm_6(D)->M, D.9347
	addl	$1, %eax	#, D.9347
	movslq	%eax, %rdx	# D.9347, D.9348
	movq	-32(%rbp), %rax	# hmm, tmp213
	movq	216(%rax), %rax	# hmm_6(D)->end, D.9349
	movq	-24(%rbp), %rcx	# fp, tmp214
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.9349,
	call	fwrite	#
	.loc 1 541 0
	movl	$1, -4(%rbp)	#, k
	jmp	.L100	#
.L101:
	.loc 1 542 0 discriminator 2
	movl	Alphabet_size(%rip), %eax	# Alphabet_size, Alphabet_size.39
	movslq	%eax, %rdx	# Alphabet_size.39, D.9348
	movq	-32(%rbp), %rax	# hmm, tmp215
	movq	152(%rax), %rax	# hmm_6(D)->mat, D.9352
	movl	-4(%rbp), %ecx	# k, tmp216
	movslq	%ecx, %rcx	# tmp216, D.9348
	salq	$3, %rcx	#, D.9348
	addq	%rcx, %rax	# D.9348, D.9352
	movq	(%rax), %rax	# *_77, D.9349
	movq	-24(%rbp), %rcx	# fp, tmp217
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.9349,
	call	fwrite	#
	.loc 1 541 0 discriminator 2
	addl	$1, -4(%rbp)	#, k
.L100:
	.loc 1 541 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# hmm, tmp218
	movl	136(%rax), %eax	# hmm_6(D)->M, D.9347
	cmpl	-4(%rbp), %eax	# k, D.9347
	jge	.L101	#,
	.loc 1 543 0 is_stmt 1
	movl	$1, -4(%rbp)	#, k
	jmp	.L102	#
.L103:
	.loc 1 544 0 discriminator 2
	movl	Alphabet_size(%rip), %eax	# Alphabet_size, Alphabet_size.40
	movslq	%eax, %rdx	# Alphabet_size.40, D.9348
	movq	-32(%rbp), %rax	# hmm, tmp219
	movq	160(%rax), %rax	# hmm_6(D)->ins, D.9352
	movl	-4(%rbp), %ecx	# k, tmp220
	movslq	%ecx, %rcx	# tmp220, D.9348
	salq	$3, %rcx	#, D.9348
	addq	%rcx, %rax	# D.9348, D.9352
	movq	(%rax), %rax	# *_87, D.9349
	movq	-24(%rbp), %rcx	# fp, tmp221
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.9349,
	call	fwrite	#
	.loc 1 543 0 discriminator 2
	addl	$1, -4(%rbp)	#, k
.L102:
	.loc 1 543 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# hmm, tmp222
	movl	136(%rax), %eax	# hmm_6(D)->M, D.9347
	cmpl	-4(%rbp), %eax	# k, D.9347
	jg	.L103	#,
	.loc 1 545 0 is_stmt 1
	movl	$1, -4(%rbp)	#, k
	jmp	.L104	#
.L105:
	.loc 1 546 0 discriminator 2
	movq	-32(%rbp), %rax	# hmm, tmp223
	movq	144(%rax), %rax	# hmm_6(D)->t, D.9352
	movl	-4(%rbp), %edx	# k, tmp224
	movslq	%edx, %rdx	# tmp224, D.9348
	salq	$3, %rdx	#, D.9348
	addq	%rdx, %rax	# D.9348, D.9352
	movq	(%rax), %rax	# *_95, D.9349
	movq	-24(%rbp), %rdx	# fp, tmp225
	movq	%rdx, %rcx	# tmp225,
	movl	$7, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.9349,
	call	fwrite	#
	.loc 1 545 0 discriminator 2
	addl	$1, -4(%rbp)	#, k
.L104:
	.loc 1 545 0 is_stmt 0 discriminator 1
	movq	-32(%rbp), %rax	# hmm, tmp226
	movl	136(%rax), %eax	# hmm_6(D)->M, D.9347
	cmpl	-4(%rbp), %eax	# k, D.9347
	jg	.L105	#,
	.loc 1 547 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	WriteBinHMM, .-WriteBinHMM
	.section	.rodata
.LC57:
	.string	"NAME "
.LC58:
	.string	"ACC  "
.LC59:
	.string	"DESC "
.LC60:
	.string	"LENG "
.LC61:
	.string	"NSEQ "
.LC62:
	.string	"ALPH "
.LC63:
	.string	"AMINO"
.LC64:
	.string	"NUCLEIC"
	.align 8
.LC65:
	.string	"Alphabet mismatch error.\nI thought we were working with %s, but tried to read a %s HMM.\n"
.LC66:
	.string	"RF   "
.LC67:
	.string	"CS   "
.LC68:
	.string	"MAP  "
.LC69:
	.string	"COM  "
.LC70:
	.string	"DATE "
.LC71:
	.string	"GA   "
.LC72:
	.string	" \t\n"
.LC73:
	.string	"TC   "
.LC74:
	.string	"NC   "
.LC75:
	.string	"XT   "
.LC76:
	.string	"NULT "
.LC77:
	.string	"NULE "
	.align 8
.LC78:
	.string	"ALPH must precede NULE in HMM save files"
.LC79:
	.string	"EVD  "
.LC80:
	.string	"CKSUM"
.LC81:
	.string	"HMM  "
.LC82:
	.string	"//"
	.text
	.type	read_asc20hmm, @function
read_asc20hmm:
.LFB10:
	.loc 1 568 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$616, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -600(%rbp)	# hmmfp, hmmfp
	movq	%rsi, -608(%rbp)	# ret_hmm, ret_hmm
	.loc 1 568 0
	movq	%fs:40, %rax	#, tmp504
	movq	%rax, -24(%rbp)	# tmp504, D.9365
	xorl	%eax, %eax	# tmp504
	.loc 1 577 0
	movq	$0, -560(%rbp)	#, hmm
	.loc 1 578 0
	movq	-600(%rbp), %rax	# hmmfp, tmp254
	movq	(%rax), %rax	# hmmfp_16(D)->f, D.9354
	movq	%rax, %rdi	# D.9354,
	call	feof	#
	testl	%eax, %eax	# D.9353
	jne	.L107	#,
	.loc 1 578 0 is_stmt 0 discriminator 2
	movq	-600(%rbp), %rax	# hmmfp, tmp255
	movq	(%rax), %rdx	# hmmfp_16(D)->f, D.9354
	leaq	-544(%rbp), %rax	#, tmp256
	movl	$512, %esi	#,
	movq	%rax, %rdi	# tmp256,
	call	fgets	#
	testq	%rax, %rax	# D.9355
	jne	.L108	#,
.L107:
	.loc 1 578 0 discriminator 1
	movl	$0, %eax	#, D.9353
	jmp	.L203	#
.L108:
	.loc 1 579 0 is_stmt 1
	leaq	-544(%rbp), %rax	#, tmp257
	movl	$8, %edx	#,
	movl	$.LC6, %esi	#,
	movq	%rax, %rdi	# tmp257,
	call	strncmp	#
	testl	%eax, %eax	# D.9353
	je	.L110	#,
	.loc 1 579 0 is_stmt 0 discriminator 1
	jmp	.L111	#
.L110:
	.loc 1 585 0 is_stmt 1
	call	AllocPlan7Shell	#
	movq	%rax, -560(%rbp)	# tmp258, hmm
	.loc 1 586 0
	movl	$-1, -580(%rbp)	#, M
	.loc 1 587 0
	jmp	.L112	#
.L163:
	.loc 1 588 0
	leaq	-544(%rbp), %rax	#, tmp259
	movl	$5, %edx	#,
	movl	$.LC57, %esi	#,
	movq	%rax, %rdi	# tmp259,
	call	strncmp	#
	testl	%eax, %eax	# D.9353
	jne	.L113	#,
	.loc 1 588 0 is_stmt 0 discriminator 1
	leaq	-544(%rbp), %rax	#, tmp260
	leaq	6(%rax), %rdx	#, tmp261
	movq	-560(%rbp), %rax	# hmm, tmp262
	movq	%rdx, %rsi	# tmp261,
	movq	%rax, %rdi	# tmp262,
	call	Plan7SetName	#
	jmp	.L112	#
.L113:
	.loc 1 589 0 is_stmt 1
	leaq	-544(%rbp), %rax	#, tmp263
	movl	$5, %edx	#,
	movl	$.LC58, %esi	#,
	movq	%rax, %rdi	# tmp263,
	call	strncmp	#
	testl	%eax, %eax	# D.9353
	jne	.L114	#,
	.loc 1 589 0 is_stmt 0 discriminator 1
	leaq	-544(%rbp), %rax	#, tmp264
	leaq	6(%rax), %rdx	#, tmp265
	movq	-560(%rbp), %rax	# hmm, tmp266
	movq	%rdx, %rsi	# tmp265,
	movq	%rax, %rdi	# tmp266,
	call	Plan7SetAccession	#
	jmp	.L112	#
.L114:
	.loc 1 590 0 is_stmt 1
	leaq	-544(%rbp), %rax	#, tmp267
	movl	$5, %edx	#,
	movl	$.LC59, %esi	#,
	movq	%rax, %rdi	# tmp267,
	call	strncmp	#
	testl	%eax, %eax	# D.9353
	jne	.L115	#,
	.loc 1 590 0 is_stmt 0 discriminator 1
	leaq	-544(%rbp), %rax	#, tmp268
	leaq	6(%rax), %rdx	#, tmp269
	movq	-560(%rbp), %rax	# hmm, tmp270
	movq	%rdx, %rsi	# tmp269,
	movq	%rax, %rdi	# tmp270,
	call	Plan7SetDescription	#
	jmp	.L112	#
.L115:
	.loc 1 591 0 is_stmt 1
	leaq	-544(%rbp), %rax	#, tmp271
	movl	$5, %edx	#,
	movl	$.LC60, %esi	#,
	movq	%rax, %rdi	# tmp271,
	call	strncmp	#
	testl	%eax, %eax	# D.9353
	jne	.L116	#,
	.loc 1 591 0 is_stmt 0 discriminator 1
	leaq	-544(%rbp), %rax	#, tmp272
	addq	$6, %rax	#, tmp273
	movq	%rax, %rdi	# tmp273,
	call	atoi	#
	movl	%eax, -580(%rbp)	# tmp274, M
	jmp	.L112	#
.L116:
	.loc 1 592 0 is_stmt 1
	leaq	-544(%rbp), %rax	#, tmp275
	movl	$5, %edx	#,
	movl	$.LC61, %esi	#,
	movq	%rax, %rdi	# tmp275,
	call	strncmp	#
	testl	%eax, %eax	# D.9353
	jne	.L117	#,
	.loc 1 592 0 is_stmt 0 discriminator 1
	leaq	-544(%rbp), %rax	#, tmp276
	addq	$6, %rax	#, tmp277
	movq	%rax, %rdi	# tmp277,
	call	atoi	#
	movq	-560(%rbp), %rdx	# hmm, tmp278
	movl	%eax, 56(%rdx)	# D.9353, hmm_22->nseq
	jmp	.L112	#
.L117:
	.loc 1 593 0 is_stmt 1
	leaq	-544(%rbp), %rax	#, tmp279
	movl	$5, %edx	#,
	movl	$.LC62, %esi	#,
	movq	%rax, %rdi	# tmp279,
	call	strncmp	#
	testl	%eax, %eax	# D.9353
	jne	.L118	#,
	.loc 1 595 0
	leaq	-544(%rbp), %rax	#, tmp280
	addq	$6, %rax	#, tmp281
	movq	%rax, %rdi	# tmp281,
	call	s2upper	#
	.loc 1 596 0
	leaq	-544(%rbp), %rax	#, tmp282
	addq	$6, %rax	#, tmp283
	movl	$5, %edx	#,
	movl	$.LC63, %esi	#,
	movq	%rax, %rdi	# tmp283,
	call	strncmp	#
	testl	%eax, %eax	# D.9353
	jne	.L119	#,
	.loc 1 596 0 is_stmt 0 discriminator 1
	movl	$3, -568(%rbp)	#, atype
	jmp	.L120	#
.L119:
	.loc 1 597 0 is_stmt 1
	leaq	-544(%rbp), %rax	#, tmp284
	addq	$6, %rax	#, tmp285
	movl	$7, %edx	#,
	movl	$.LC64, %esi	#,
	movq	%rax, %rdi	# tmp285,
	call	strncmp	#
	testl	%eax, %eax	# D.9353
	jne	.L121	#,
	.loc 1 597 0 is_stmt 0 discriminator 1
	movl	$2, -568(%rbp)	#, atype
	jmp	.L120	#
.L121:
	.loc 1 598 0 is_stmt 1
	jmp	.L111	#
.L120:
	.loc 1 600 0
	movl	Alphabet_type(%rip), %eax	# Alphabet_type, Alphabet_type.41
	testl	%eax, %eax	# Alphabet_type.41
	jne	.L122	#,
	.loc 1 600 0 is_stmt 0 discriminator 1
	movl	-568(%rbp), %eax	# atype, tmp286
	movl	%eax, %edi	# tmp286,
	call	SetAlphabet	#
	jmp	.L112	#
.L122:
	.loc 1 601 0 is_stmt 1
	movl	Alphabet_type(%rip), %eax	# Alphabet_type, Alphabet_type.42
	cmpl	%eax, -568(%rbp)	# Alphabet_type.42, atype
	je	.L112	#,
	.loc 1 602 0
	movl	-568(%rbp), %eax	# atype, tmp287
	movl	%eax, %edi	# tmp287,
	call	AlphabetType2String	#
	movq	%rax, %rbx	#, D.9355
	movl	Alphabet_type(%rip), %eax	# Alphabet_type, Alphabet_type.43
	movl	%eax, %edi	# Alphabet_type.43,
	call	AlphabetType2String	#
	movq	%rbx, %rdx	# D.9355,
	movq	%rax, %rsi	# D.9355,
	movl	$.LC65, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
	jmp	.L112	#
.L118:
	.loc 1 604 0
	leaq	-544(%rbp), %rax	#, tmp288
	movl	$5, %edx	#,
	movl	$.LC66, %esi	#,
	movq	%rax, %rdi	# tmp288,
	call	strncmp	#
	testl	%eax, %eax	# D.9353
	jne	.L124	#,
	.loc 1 606 0
	movzbl	-538(%rbp), %eax	# buffer, D.9356
	movsbl	%al, %eax	# D.9356, D.9353
	movl	%eax, %edi	# D.9353,
	call	sre_toupper	#
	cmpl	$89, %eax	#, D.9353
	jne	.L112	#,
	.loc 1 606 0 is_stmt 0 discriminator 1
	movq	-560(%rbp), %rax	# hmm, tmp289
	movl	456(%rax), %eax	# hmm_22->flags, D.9353
	orl	$4, %eax	#, D.9353
	movl	%eax, %edx	# D.9353, D.9353
	movq	-560(%rbp), %rax	# hmm, tmp290
	movl	%edx, 456(%rax)	# D.9353, hmm_22->flags
	jmp	.L112	#
.L124:
	.loc 1 608 0 is_stmt 1
	leaq	-544(%rbp), %rax	#, tmp291
	movl	$5, %edx	#,
	movl	$.LC67, %esi	#,
	movq	%rax, %rdi	# tmp291,
	call	strncmp	#
	testl	%eax, %eax	# D.9353
	jne	.L126	#,
	.loc 1 610 0
	movzbl	-538(%rbp), %eax	# buffer, D.9356
	movsbl	%al, %eax	# D.9356, D.9353
	movl	%eax, %edi	# D.9353,
	call	sre_toupper	#
	cmpl	$89, %eax	#, D.9353
	jne	.L112	#,
	.loc 1 610 0 is_stmt 0 discriminator 1
	movq	-560(%rbp), %rax	# hmm, tmp292
	movl	456(%rax), %eax	# hmm_22->flags, D.9353
	orl	$8, %eax	#, D.9353
	movl	%eax, %edx	# D.9353, D.9353
	movq	-560(%rbp), %rax	# hmm, tmp293
	movl	%edx, 456(%rax)	# D.9353, hmm_22->flags
	jmp	.L112	#
.L126:
	.loc 1 612 0 is_stmt 1
	leaq	-544(%rbp), %rax	#, tmp294
	movl	$5, %edx	#,
	movl	$.LC68, %esi	#,
	movq	%rax, %rdi	# tmp294,
	call	strncmp	#
	testl	%eax, %eax	# D.9353
	jne	.L128	#,
	.loc 1 614 0
	movzbl	-538(%rbp), %eax	# buffer, D.9356
	movsbl	%al, %eax	# D.9356, D.9353
	movl	%eax, %edi	# D.9353,
	call	sre_toupper	#
	cmpl	$89, %eax	#, D.9353
	jne	.L112	#,
	.loc 1 614 0 is_stmt 0 discriminator 1
	movq	-560(%rbp), %rax	# hmm, tmp295
	movl	456(%rax), %eax	# hmm_22->flags, D.9353
	orb	$1, %ah	#, D.9353
	movl	%eax, %edx	# D.9353, D.9353
	movq	-560(%rbp), %rax	# hmm, tmp296
	movl	%edx, 456(%rax)	# D.9353, hmm_22->flags
	jmp	.L112	#
.L128:
	.loc 1 616 0 is_stmt 1
	leaq	-544(%rbp), %rax	#, tmp297
	movl	$5, %edx	#,
	movl	$.LC69, %esi	#,
	movq	%rax, %rdi	# tmp297,
	call	strncmp	#
	testl	%eax, %eax	# D.9353
	jne	.L130	#,
	.loc 1 618 0
	leaq	-544(%rbp), %rax	#, tmp298
	addq	$6, %rax	#, tmp299
	movq	%rax, %rdi	# tmp299,
	call	StringChop	#
	.loc 1 619 0
	movq	-560(%rbp), %rax	# hmm, tmp300
	movq	48(%rax), %rax	# hmm_22->comlog, D.9355
	testq	%rax, %rax	# D.9355
	jne	.L131	#,
	.loc 1 620 0
	leaq	-544(%rbp), %rax	#, tmp301
	addq	$6, %rax	#, tmp302
	movq	%rax, %rdi	# tmp302,
	call	Strdup	#
	movq	-560(%rbp), %rdx	# hmm, tmp303
	movq	%rax, 48(%rdx)	# D.9355, hmm_22->comlog
	jmp	.L112	#
.L131:
	.loc 1 623 0
	movq	-560(%rbp), %rax	# hmm, tmp304
	movq	48(%rax), %rax	# hmm_22->comlog, D.9355
	movq	%rax, %rdi	# D.9355,
	call	strlen	#
	movq	%rax, %rbx	#, D.9357
	leaq	-544(%rbp), %rax	#, tmp305
	addq	$6, %rax	#, tmp306
	movq	%rax, %rdi	# tmp306,
	call	strlen	#
	addq	%rbx, %rax	# D.9357, D.9357
	addq	$1, %rax	#, D.9357
	leaq	0(,%rax,8), %rdx	#, D.9357
	movq	-560(%rbp), %rax	# hmm, tmp307
	movq	48(%rax), %rax	# hmm_22->comlog, D.9355
	movq	%rdx, %rcx	# D.9357,
	movq	%rax, %rdx	# D.9355,
	movl	$624, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_realloc	#
	movq	-560(%rbp), %rdx	# hmm, tmp308
	movq	%rax, 48(%rdx)	# D.9358, hmm_22->comlog
	.loc 1 625 0
	movq	-560(%rbp), %rax	# hmm, tmp309
	movq	48(%rax), %rsi	# hmm_22->comlog, D.9355
	movq	%rsi, %rax	# D.9355, tmp310
	movq	$-1, %rcx	#, tmp314
	movq	%rax, %rdx	# tmp310, tmp313
	movl	$0, %eax	#, tmp315
	movq	%rdx, %rdi	# tmp313, tmp313
	repnz scasb
	movq	%rcx, %rax	# tmp311, tmp311
	notq	%rax	# tmp312
	subq	$1, %rax	#, D.9357
	addq	%rsi, %rax	# D.9355, D.9355
	movw	$10, (%rax)	#, MEM[(void *)_74]
	.loc 1 626 0
	movq	-560(%rbp), %rax	# hmm, tmp316
	movq	48(%rax), %rax	# hmm_22->comlog, D.9355
	leaq	-544(%rbp), %rdx	#, tmp317
	addq	$6, %rdx	#, tmp318
	movq	%rdx, %rsi	# tmp318,
	movq	%rax, %rdi	# D.9355,
	call	strcat	#
	jmp	.L112	#
.L130:
	.loc 1 629 0
	leaq	-544(%rbp), %rax	#, tmp319
	movl	$5, %edx	#,
	movl	$.LC70, %esi	#,
	movq	%rax, %rdi	# tmp319,
	call	strncmp	#
	testl	%eax, %eax	# D.9353
	jne	.L133	#,
	.loc 1 631 0
	leaq	-544(%rbp), %rax	#, tmp320
	addq	$6, %rax	#, tmp321
	movq	%rax, %rdi	# tmp321,
	call	StringChop	#
	.loc 1 632 0
	leaq	-544(%rbp), %rax	#, tmp322
	addq	$6, %rax	#, tmp323
	movq	%rax, %rdi	# tmp323,
	call	Strdup	#
	movq	-560(%rbp), %rdx	# hmm, tmp324
	movq	%rax, 64(%rdx)	# D.9355, hmm_22->ctime
	jmp	.L112	#
.L133:
	.loc 1 634 0
	leaq	-544(%rbp), %rax	#, tmp325
	movl	$5, %edx	#,
	movl	$.LC71, %esi	#,
	movq	%rax, %rdi	# tmp325,
	call	strncmp	#
	testl	%eax, %eax	# D.9353
	jne	.L134	#,
	.loc 1 636 0
	leaq	-544(%rbp), %rax	#, tmp326
	addq	$6, %rax	#, tmp327
	movl	$.LC72, %esi	#,
	movq	%rax, %rdi	# tmp327,
	call	strtok	#
	movq	%rax, -552(%rbp)	# tmp328, s
	cmpq	$0, -552(%rbp)	#, s
	jne	.L135	#,
	.loc 1 636 0 is_stmt 0 discriminator 1
	jmp	.L111	#
.L135:
	.loc 1 637 0 is_stmt 1
	movq	-552(%rbp), %rax	# s, tmp329
	movq	%rax, %rdi	# tmp329,
	call	atof	#
	unpcklpd	%xmm0, %xmm0	# D.9359
	cvtpd2ps	%xmm0, %xmm0	# D.9359, D.9360
	movq	-560(%rbp), %rax	# hmm, tmp330
	movss	%xmm0, 112(%rax)	# D.9360, hmm_22->ga1
	.loc 1 638 0
	movl	$.LC72, %esi	#,
	movl	$0, %edi	#,
	call	strtok	#
	movq	%rax, -552(%rbp)	# tmp331, s
	cmpq	$0, -552(%rbp)	#, s
	jne	.L136	#,
	.loc 1 638 0 is_stmt 0 discriminator 1
	jmp	.L111	#
.L136:
	.loc 1 639 0 is_stmt 1
	movq	-552(%rbp), %rax	# s, tmp332
	movq	%rax, %rdi	# tmp332,
	call	atof	#
	unpcklpd	%xmm0, %xmm0	# D.9359
	cvtpd2ps	%xmm0, %xmm0	# D.9359, D.9360
	movq	-560(%rbp), %rax	# hmm, tmp333
	movss	%xmm0, 116(%rax)	# D.9360, hmm_22->ga2
	.loc 1 640 0
	movq	-560(%rbp), %rax	# hmm, tmp334
	movl	456(%rax), %eax	# hmm_22->flags, D.9353
	orb	$4, %ah	#, D.9353
	movl	%eax, %edx	# D.9353, D.9353
	movq	-560(%rbp), %rax	# hmm, tmp335
	movl	%edx, 456(%rax)	# D.9353, hmm_22->flags
	jmp	.L112	#
.L134:
	.loc 1 642 0
	leaq	-544(%rbp), %rax	#, tmp336
	movl	$5, %edx	#,
	movl	$.LC73, %esi	#,
	movq	%rax, %rdi	# tmp336,
	call	strncmp	#
	testl	%eax, %eax	# D.9353
	jne	.L137	#,
	.loc 1 644 0
	leaq	-544(%rbp), %rax	#, tmp337
	addq	$6, %rax	#, tmp338
	movl	$.LC72, %esi	#,
	movq	%rax, %rdi	# tmp338,
	call	strtok	#
	movq	%rax, -552(%rbp)	# tmp339, s
	cmpq	$0, -552(%rbp)	#, s
	jne	.L138	#,
	.loc 1 644 0 is_stmt 0 discriminator 1
	jmp	.L111	#
.L138:
	.loc 1 645 0 is_stmt 1
	movq	-552(%rbp), %rax	# s, tmp340
	movq	%rax, %rdi	# tmp340,
	call	atof	#
	unpcklpd	%xmm0, %xmm0	# D.9359
	cvtpd2ps	%xmm0, %xmm0	# D.9359, D.9360
	movq	-560(%rbp), %rax	# hmm, tmp341
	movss	%xmm0, 120(%rax)	# D.9360, hmm_22->tc1
	.loc 1 646 0
	movl	$.LC72, %esi	#,
	movl	$0, %edi	#,
	call	strtok	#
	movq	%rax, -552(%rbp)	# tmp342, s
	cmpq	$0, -552(%rbp)	#, s
	jne	.L139	#,
	.loc 1 646 0 is_stmt 0 discriminator 1
	jmp	.L111	#
.L139:
	.loc 1 647 0 is_stmt 1
	movq	-552(%rbp), %rax	# s, tmp343
	movq	%rax, %rdi	# tmp343,
	call	atof	#
	unpcklpd	%xmm0, %xmm0	# D.9359
	cvtpd2ps	%xmm0, %xmm0	# D.9359, D.9360
	movq	-560(%rbp), %rax	# hmm, tmp344
	movss	%xmm0, 124(%rax)	# D.9360, hmm_22->tc2
	.loc 1 648 0
	movq	-560(%rbp), %rax	# hmm, tmp345
	movl	456(%rax), %eax	# hmm_22->flags, D.9353
	orb	$8, %ah	#, D.9353
	movl	%eax, %edx	# D.9353, D.9353
	movq	-560(%rbp), %rax	# hmm, tmp346
	movl	%edx, 456(%rax)	# D.9353, hmm_22->flags
	jmp	.L112	#
.L137:
	.loc 1 650 0
	leaq	-544(%rbp), %rax	#, tmp347
	movl	$5, %edx	#,
	movl	$.LC74, %esi	#,
	movq	%rax, %rdi	# tmp347,
	call	strncmp	#
	testl	%eax, %eax	# D.9353
	jne	.L140	#,
	.loc 1 652 0
	leaq	-544(%rbp), %rax	#, tmp348
	addq	$6, %rax	#, tmp349
	movl	$.LC72, %esi	#,
	movq	%rax, %rdi	# tmp349,
	call	strtok	#
	movq	%rax, -552(%rbp)	# tmp350, s
	cmpq	$0, -552(%rbp)	#, s
	jne	.L141	#,
	.loc 1 652 0 is_stmt 0 discriminator 1
	jmp	.L111	#
.L141:
	.loc 1 653 0 is_stmt 1
	movq	-552(%rbp), %rax	# s, tmp351
	movq	%rax, %rdi	# tmp351,
	call	atof	#
	unpcklpd	%xmm0, %xmm0	# D.9359
	cvtpd2ps	%xmm0, %xmm0	# D.9359, D.9360
	movq	-560(%rbp), %rax	# hmm, tmp352
	movss	%xmm0, 128(%rax)	# D.9360, hmm_22->nc1
	.loc 1 654 0
	movl	$.LC72, %esi	#,
	movl	$0, %edi	#,
	call	strtok	#
	movq	%rax, -552(%rbp)	# tmp353, s
	cmpq	$0, -552(%rbp)	#, s
	jne	.L142	#,
	.loc 1 654 0 is_stmt 0 discriminator 1
	jmp	.L111	#
.L142:
	.loc 1 655 0 is_stmt 1
	movq	-552(%rbp), %rax	# s, tmp354
	movq	%rax, %rdi	# tmp354,
	call	atof	#
	unpcklpd	%xmm0, %xmm0	# D.9359
	cvtpd2ps	%xmm0, %xmm0	# D.9359, D.9360
	movq	-560(%rbp), %rax	# hmm, tmp355
	movss	%xmm0, 132(%rax)	# D.9360, hmm_22->nc2
	.loc 1 656 0
	movq	-560(%rbp), %rax	# hmm, tmp356
	movl	456(%rax), %eax	# hmm_22->flags, D.9353
	orb	$16, %ah	#, D.9353
	movl	%eax, %edx	# D.9353, D.9353
	movq	-560(%rbp), %rax	# hmm, tmp357
	movl	%edx, 456(%rax)	# D.9353, hmm_22->flags
	jmp	.L112	#
.L140:
	.loc 1 658 0
	leaq	-544(%rbp), %rax	#, tmp358
	movl	$5, %edx	#,
	movl	$.LC75, %esi	#,
	movq	%rax, %rdi	# tmp358,
	call	strncmp	#
	testl	%eax, %eax	# D.9353
	jne	.L143	#,
	.loc 1 660 0
	leaq	-544(%rbp), %rax	#, tmp359
	addq	$6, %rax	#, tmp360
	movl	$.LC72, %esi	#,
	movq	%rax, %rdi	# tmp360,
	call	strtok	#
	movq	%rax, -552(%rbp)	# tmp361, s
	cmpq	$0, -552(%rbp)	#, s
	jne	.L144	#,
	.loc 1 660 0 is_stmt 0 discriminator 1
	jmp	.L111	#
.L144:
	.loc 1 661 0 is_stmt 1
	movl	$0, -576(%rbp)	#, k
	jmp	.L145	#
.L149:
	.loc 1 662 0
	movl	$0, -572(%rbp)	#, x
	jmp	.L146	#
.L148:
	.loc 1 664 0
	cmpq	$0, -552(%rbp)	#, s
	jne	.L147	#,
	.loc 1 664 0 is_stmt 0 discriminator 1
	jmp	.L111	#
.L147:
	.loc 1 665 0 is_stmt 1
	movq	-552(%rbp), %rax	# s, tmp362
	movss	.LC33(%rip), %xmm0	#,
	movq	%rax, %rdi	# tmp362,
	call	ascii2prob	#
	movss	%xmm0, -612(%rbp)	#, %sfp
	movl	-612(%rbp), %eax	# %sfp, D.9360
	movq	-560(%rbp), %rdx	# hmm, tmp363
	movl	-572(%rbp), %ecx	# x, tmp365
	movslq	%ecx, %rcx	# tmp365, tmp364
	movl	-576(%rbp), %esi	# k, tmp367
	movslq	%esi, %rsi	# tmp367, tmp366
	addq	%rsi, %rsi	# tmp368
	addq	%rsi, %rcx	# tmp368, tmp369
	addq	$40, %rcx	#, tmp370
	movl	%eax, 12(%rdx,%rcx,4)	# D.9360, hmm_22->xt
	.loc 1 666 0
	movl	$.LC72, %esi	#,
	movl	$0, %edi	#,
	call	strtok	#
	movq	%rax, -552(%rbp)	# tmp371, s
	.loc 1 662 0
	addl	$1, -572(%rbp)	#, x
.L146:
	.loc 1 662 0 is_stmt 0 discriminator 1
	cmpl	$1, -572(%rbp)	#, x
	jle	.L148	#,
	.loc 1 661 0 is_stmt 1
	addl	$1, -576(%rbp)	#, k
.L145:
	.loc 1 661 0 is_stmt 0 discriminator 1
	cmpl	$3, -576(%rbp)	#, k
	jle	.L149	#,
	jmp	.L112	#
.L143:
	.loc 1 669 0 is_stmt 1
	leaq	-544(%rbp), %rax	#, tmp372
	movl	$5, %edx	#,
	movl	$.LC76, %esi	#,
	movq	%rax, %rdi	# tmp372,
	call	strncmp	#
	testl	%eax, %eax	# D.9353
	jne	.L150	#,
	.loc 1 671 0
	leaq	-544(%rbp), %rax	#, tmp373
	addq	$6, %rax	#, tmp374
	movl	$.LC72, %esi	#,
	movq	%rax, %rdi	# tmp374,
	call	strtok	#
	movq	%rax, -552(%rbp)	# tmp375, s
	cmpq	$0, -552(%rbp)	#, s
	jne	.L151	#,
	.loc 1 671 0 is_stmt 0 discriminator 1
	jmp	.L111	#
.L151:
	.loc 1 672 0 is_stmt 1
	movq	-552(%rbp), %rax	# s, tmp376
	movss	.LC33(%rip), %xmm0	#,
	movq	%rax, %rdi	# tmp376,
	call	ascii2prob	#
	movss	%xmm0, -612(%rbp)	#, %sfp
	movl	-612(%rbp), %eax	# %sfp, D.9360
	movq	-560(%rbp), %rdx	# hmm, tmp377
	movl	%eax, 304(%rdx)	# D.9360, hmm_22->p1
	.loc 1 673 0
	movl	$.LC72, %esi	#,
	movl	$0, %edi	#,
	call	strtok	#
	movq	%rax, -552(%rbp)	# tmp378, s
	cmpq	$0, -552(%rbp)	#, s
	jne	.L152	#,
	.loc 1 673 0 is_stmt 0 discriminator 1
	jmp	.L111	#
.L152:
	.loc 1 674 0 is_stmt 1
	movq	-560(%rbp), %rax	# hmm, tmp379
	movss	304(%rax), %xmm2	# hmm_22->p1, D.9360
	movss	%xmm2, -612(%rbp)	# D.9360, %sfp
	movq	-560(%rbp), %rax	# hmm, tmp380
	movss	304(%rax), %xmm3	# hmm_22->p1, D.9360
	movss	%xmm3, -616(%rbp)	# D.9360, %sfp
	movq	-552(%rbp), %rax	# s, tmp381
	movss	.LC33(%rip), %xmm0	#,
	movq	%rax, %rdi	# tmp381,
	call	ascii2prob	#
	addss	-616(%rbp), %xmm0	# %sfp, D.9360
	movss	-612(%rbp), %xmm2	# %sfp, D.9360
	divss	%xmm0, %xmm2	# D.9360, D.9360
	movaps	%xmm2, %xmm0	# D.9360, D.9360
	movq	-560(%rbp), %rax	# hmm, tmp382
	movss	%xmm0, 304(%rax)	# D.9360, hmm_22->p1
	jmp	.L112	#
.L150:
	.loc 1 676 0
	leaq	-544(%rbp), %rax	#, tmp383
	movl	$5, %edx	#,
	movl	$.LC77, %esi	#,
	movq	%rax, %rdi	# tmp383,
	call	strncmp	#
	testl	%eax, %eax	# D.9353
	jne	.L153	#,
	.loc 1 678 0
	movl	Alphabet_type(%rip), %eax	# Alphabet_type, Alphabet_type.44
	testl	%eax, %eax	# Alphabet_type.44
	jne	.L154	#,
	.loc 1 679 0
	movl	$.LC78, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L154:
	.loc 1 680 0
	leaq	-544(%rbp), %rax	#, tmp384
	addq	$6, %rax	#, tmp385
	movl	$.LC72, %esi	#,
	movq	%rax, %rdi	# tmp385,
	call	strtok	#
	movq	%rax, -552(%rbp)	# tmp386, s
	.loc 1 681 0
	movl	$0, -572(%rbp)	#, x
	jmp	.L155	#
.L157:
	.loc 1 682 0
	cmpq	$0, -552(%rbp)	#, s
	jne	.L156	#,
	.loc 1 682 0 is_stmt 0 discriminator 1
	jmp	.L111	#
.L156:
	.loc 1 683 0 is_stmt 1
	movl	Alphabet_size(%rip), %eax	# Alphabet_size, Alphabet_size.45
	cvtsi2ss	%eax, %xmm0	# Alphabet_size.45, D.9360
	movss	.LC33(%rip), %xmm1	#, tmp387
	divss	%xmm0, %xmm1	# D.9360, D.9360
	movaps	%xmm1, %xmm0	# D.9360, D.9360
	movq	-552(%rbp), %rax	# s, tmp388
	movq	%rax, %rdi	# tmp388,
	call	ascii2prob	#
	movss	%xmm0, -612(%rbp)	#, %sfp
	movl	-612(%rbp), %eax	# %sfp, D.9360
	movq	-560(%rbp), %rdx	# hmm, tmp389
	movl	-572(%rbp), %ecx	# x, tmp391
	movslq	%ecx, %rcx	# tmp391, tmp390
	addq	$56, %rcx	#, tmp392
	movl	%eax, (%rdx,%rcx,4)	# D.9360, hmm_22->null
	.loc 1 684 0
	movl	$.LC72, %esi	#,
	movl	$0, %edi	#,
	call	strtok	#
	movq	%rax, -552(%rbp)	# tmp393, s
	.loc 1 681 0
	addl	$1, -572(%rbp)	#, x
.L155:
	.loc 1 681 0 is_stmt 0 discriminator 1
	movl	Alphabet_size(%rip), %eax	# Alphabet_size, Alphabet_size.46
	cmpl	%eax, -572(%rbp)	# Alphabet_size.46, x
	jl	.L157	#,
	jmp	.L112	#
.L153:
	.loc 1 687 0 is_stmt 1
	leaq	-544(%rbp), %rax	#, tmp394
	movl	$5, %edx	#,
	movl	$.LC79, %esi	#,
	movq	%rax, %rdi	# tmp394,
	call	strncmp	#
	testl	%eax, %eax	# D.9353
	jne	.L158	#,
	.loc 1 689 0
	movq	-560(%rbp), %rax	# hmm, tmp395
	movl	456(%rax), %eax	# hmm_22->flags, D.9353
	orb	$-128, %al	#, D.9353
	movl	%eax, %edx	# D.9353, D.9353
	movq	-560(%rbp), %rax	# hmm, tmp396
	movl	%edx, 456(%rax)	# D.9353, hmm_22->flags
	.loc 1 690 0
	leaq	-544(%rbp), %rax	#, tmp397
	addq	$6, %rax	#, tmp398
	movl	$.LC72, %esi	#,
	movq	%rax, %rdi	# tmp398,
	call	strtok	#
	movq	%rax, -552(%rbp)	# tmp399, s
	cmpq	$0, -552(%rbp)	#, s
	jne	.L159	#,
	.loc 1 690 0 is_stmt 0 discriminator 1
	jmp	.L111	#
.L159:
	.loc 1 691 0 is_stmt 1
	movq	-552(%rbp), %rax	# s, tmp400
	movq	%rax, %rdi	# tmp400,
	call	atof	#
	unpcklpd	%xmm0, %xmm0	# D.9359
	cvtpd2ps	%xmm0, %xmm0	# D.9359, D.9360
	movq	-560(%rbp), %rax	# hmm, tmp401
	movss	%xmm0, 448(%rax)	# D.9360, hmm_22->mu
	.loc 1 692 0
	movl	$.LC72, %esi	#,
	movl	$0, %edi	#,
	call	strtok	#
	movq	%rax, -552(%rbp)	# tmp402, s
	cmpq	$0, -552(%rbp)	#, s
	jne	.L160	#,
	.loc 1 692 0 is_stmt 0 discriminator 1
	jmp	.L111	#
.L160:
	.loc 1 693 0 is_stmt 1
	movq	-552(%rbp), %rax	# s, tmp403
	movq	%rax, %rdi	# tmp403,
	call	atof	#
	unpcklpd	%xmm0, %xmm0	# D.9359
	cvtpd2ps	%xmm0, %xmm0	# D.9359, D.9360
	movq	-560(%rbp), %rax	# hmm, tmp404
	movss	%xmm0, 452(%rax)	# D.9360, hmm_22->lambda
	jmp	.L112	#
.L158:
	.loc 1 695 0
	leaq	-544(%rbp), %rax	#, tmp405
	movl	$5, %edx	#,
	movl	$.LC80, %esi	#,
	movq	%rax, %rdi	# tmp405,
	call	strncmp	#
	testl	%eax, %eax	# D.9353
	jne	.L161	#,
	.loc 1 695 0 is_stmt 0 discriminator 1
	leaq	-544(%rbp), %rax	#, tmp406
	addq	$6, %rax	#, tmp407
	movq	%rax, %rdi	# tmp407,
	call	atoi	#
	movq	-560(%rbp), %rdx	# hmm, tmp408
	movl	%eax, 80(%rdx)	# D.9353, hmm_22->checksum
	jmp	.L112	#
.L161:
	.loc 1 696 0 is_stmt 1
	leaq	-544(%rbp), %rax	#, tmp409
	movl	$5, %edx	#,
	movl	$.LC81, %esi	#,
	movq	%rax, %rdi	# tmp409,
	call	strncmp	#
	testl	%eax, %eax	# D.9353
	jne	.L112	#,
	.loc 1 696 0 is_stmt 0 discriminator 1
	jmp	.L162	#
.L112:
	.loc 1 587 0 is_stmt 1 discriminator 1
	movq	-600(%rbp), %rax	# hmmfp, tmp410
	movq	(%rax), %rdx	# hmmfp_16(D)->f, D.9354
	leaq	-544(%rbp), %rax	#, tmp411
	movl	$512, %esi	#,
	movq	%rax, %rdi	# tmp411,
	call	fgets	#
	testq	%rax, %rax	# D.9355
	jne	.L163	#,
.L162:
	.loc 1 700 0
	movq	-600(%rbp), %rax	# hmmfp, tmp412
	movq	(%rax), %rax	# hmmfp_16(D)->f, D.9354
	movq	%rax, %rdi	# D.9354,
	call	feof	#
	testl	%eax, %eax	# D.9353
	je	.L164	#,
	.loc 1 700 0 is_stmt 0 discriminator 1
	jmp	.L111	#
.L164:
	.loc 1 701 0 is_stmt 1
	cmpl	$0, -580(%rbp)	#, M
	jg	.L165	#,
	.loc 1 701 0 is_stmt 0 discriminator 1
	jmp	.L111	#
.L165:
	.loc 1 702 0 is_stmt 1
	movq	-560(%rbp), %rax	# hmm, tmp413
	movq	(%rax), %rax	# hmm_22->name, D.9355
	testq	%rax, %rax	# D.9355
	jne	.L166	#,
	.loc 1 702 0 is_stmt 0 discriminator 1
	jmp	.L111	#
.L166:
	.loc 1 703 0 is_stmt 1
	movl	Alphabet_type(%rip), %eax	# Alphabet_type, Alphabet_type.47
	testl	%eax, %eax	# Alphabet_type.47
	jne	.L167	#,
	.loc 1 703 0 is_stmt 0 discriminator 1
	jmp	.L111	#
.L167:
	.loc 1 708 0 is_stmt 1
	movl	-580(%rbp), %edx	# M, tmp414
	movq	-560(%rbp), %rax	# hmm, tmp415
	movl	%edx, %esi	# tmp414,
	movq	%rax, %rdi	# tmp415,
	call	AllocPlan7Body	#
	.loc 1 710 0
	movq	-600(%rbp), %rax	# hmmfp, tmp416
	movq	(%rax), %rdx	# hmmfp_16(D)->f, D.9354
	leaq	-544(%rbp), %rax	#, tmp417
	movl	$512, %esi	#,
	movq	%rax, %rdi	# tmp417,
	call	fgets	#
	testq	%rax, %rax	# D.9355
	jne	.L168	#,
	.loc 1 710 0 is_stmt 0 discriminator 1
	jmp	.L111	#
.L168:
	.loc 1 712 0 is_stmt 1
	movq	-600(%rbp), %rax	# hmmfp, tmp418
	movq	(%rax), %rdx	# hmmfp_16(D)->f, D.9354
	leaq	-544(%rbp), %rax	#, tmp419
	movl	$512, %esi	#,
	movq	%rax, %rdi	# tmp419,
	call	fgets	#
	testq	%rax, %rax	# D.9355
	jne	.L169	#,
	.loc 1 712 0 is_stmt 0 discriminator 1
	jmp	.L111	#
.L169:
	.loc 1 713 0 is_stmt 1
	leaq	-544(%rbp), %rax	#, tmp420
	movl	$.LC72, %esi	#,
	movq	%rax, %rdi	# tmp420,
	call	strtok	#
	movq	%rax, -552(%rbp)	# tmp421, s
	cmpq	$0, -552(%rbp)	#, s
	jne	.L170	#,
	.loc 1 713 0 is_stmt 0 discriminator 1
	jmp	.L111	#
.L170:
	.loc 1 714 0 is_stmt 1
	movq	-552(%rbp), %rax	# s, tmp422
	movss	.LC33(%rip), %xmm0	#,
	movq	%rax, %rdi	# tmp422,
	call	ascii2prob	#
	movss	%xmm0, -612(%rbp)	#, %sfp
	movl	-612(%rbp), %eax	# %sfp, tmp423
	movl	%eax, -564(%rbp)	# tmp423, p
	.loc 1 715 0
	movl	$.LC72, %esi	#,
	movl	$0, %edi	#,
	call	strtok	#
	movq	%rax, -552(%rbp)	# tmp424, s
	cmpq	$0, -552(%rbp)	#, s
	jne	.L171	#,
	.loc 1 715 0 is_stmt 0 discriminator 1
	jmp	.L111	#
.L171:
	.loc 1 716 0 is_stmt 1
	movl	$.LC72, %esi	#,
	movl	$0, %edi	#,
	call	strtok	#
	movq	%rax, -552(%rbp)	# tmp425, s
	cmpq	$0, -552(%rbp)	#, s
	jne	.L172	#,
	.loc 1 716 0 is_stmt 0 discriminator 1
	jmp	.L111	#
.L172:
	.loc 1 717 0 is_stmt 1
	movq	-552(%rbp), %rax	# s, tmp426
	movss	.LC33(%rip), %xmm0	#,
	movq	%rax, %rdi	# tmp426,
	call	ascii2prob	#
	movss	%xmm0, -612(%rbp)	#, %sfp
	movl	-612(%rbp), %eax	# %sfp, D.9360
	movq	-560(%rbp), %rdx	# hmm, tmp427
	movl	%eax, 168(%rdx)	# D.9360, hmm_22->tbd1
	.loc 1 718 0
	movq	-560(%rbp), %rax	# hmm, tmp428
	movss	168(%rax), %xmm1	# hmm_22->tbd1, D.9360
	movq	-560(%rbp), %rax	# hmm, tmp429
	movss	168(%rax), %xmm0	# hmm_22->tbd1, D.9360
	addss	-564(%rbp), %xmm0	# p, D.9360
	divss	%xmm0, %xmm1	# D.9360, D.9360
	movaps	%xmm1, %xmm0	# D.9360, D.9360
	movq	-560(%rbp), %rax	# hmm, tmp430
	movss	%xmm0, 168(%rax)	# D.9360, hmm_22->tbd1
	.loc 1 721 0
	movl	$1, -576(%rbp)	#, k
	jmp	.L173	#
.L198:
	.loc 1 723 0
	movq	-600(%rbp), %rax	# hmmfp, tmp431
	movq	(%rax), %rdx	# hmmfp_16(D)->f, D.9354
	leaq	-544(%rbp), %rax	#, tmp432
	movl	$512, %esi	#,
	movq	%rax, %rdi	# tmp432,
	call	fgets	#
	testq	%rax, %rax	# D.9355
	jne	.L174	#,
	.loc 1 723 0 is_stmt 0 discriminator 1
	jmp	.L111	#
.L174:
	.loc 1 724 0 is_stmt 1
	leaq	-544(%rbp), %rax	#, tmp433
	movl	$.LC72, %esi	#,
	movq	%rax, %rdi	# tmp433,
	call	strtok	#
	movq	%rax, -552(%rbp)	# tmp434, s
	cmpq	$0, -552(%rbp)	#, s
	jne	.L175	#,
	.loc 1 724 0 is_stmt 0 discriminator 1
	jmp	.L111	#
.L175:
	.loc 1 725 0 is_stmt 1
	movq	-552(%rbp), %rax	# s, tmp435
	movq	%rax, %rdi	# tmp435,
	call	atoi	#
	cmpl	-576(%rbp), %eax	# k, D.9353
	je	.L176	#,
	.loc 1 725 0 is_stmt 0 discriminator 1
	jmp	.L111	#
.L176:
	.loc 1 726 0 is_stmt 1
	movl	$0, -572(%rbp)	#, x
	jmp	.L177	#
.L179:
	.loc 1 727 0
	movl	$.LC72, %esi	#,
	movl	$0, %edi	#,
	call	strtok	#
	movq	%rax, -552(%rbp)	# tmp436, s
	cmpq	$0, -552(%rbp)	#, s
	jne	.L178	#,
	.loc 1 727 0 is_stmt 0 discriminator 1
	jmp	.L111	#
.L178:
	.loc 1 728 0 is_stmt 1
	movq	-560(%rbp), %rax	# hmm, tmp437
	movq	152(%rax), %rax	# hmm_22->mat, D.9361
	movl	-576(%rbp), %edx	# k, tmp438
	movslq	%edx, %rdx	# tmp438, D.9357
	salq	$3, %rdx	#, D.9357
	addq	%rdx, %rax	# D.9357, D.9361
	movq	(%rax), %rax	# *_174, D.9362
	movl	-572(%rbp), %edx	# x, tmp439
	movslq	%edx, %rdx	# tmp439, D.9357
	salq	$2, %rdx	#, D.9357
	leaq	(%rax,%rdx), %rbx	#, D.9362
	movq	-560(%rbp), %rax	# hmm, tmp440
	movl	-572(%rbp), %edx	# x, tmp442
	movslq	%edx, %rdx	# tmp442, tmp441
	addq	$56, %rdx	#, tmp443
	movl	(%rax,%rdx,4), %eax	# hmm_22->null, D.9360
	movq	-552(%rbp), %rdx	# s, tmp444
	movl	%eax, -612(%rbp)	# D.9360, %sfp
	movss	-612(%rbp), %xmm0	# %sfp,
	movq	%rdx, %rdi	# tmp444,
	call	ascii2prob	#
	movss	%xmm0, -612(%rbp)	#, %sfp
	movl	-612(%rbp), %eax	# %sfp, D.9360
	movl	%eax, (%rbx)	# D.9360, *_178
	.loc 1 726 0
	addl	$1, -572(%rbp)	#, x
.L177:
	.loc 1 726 0 is_stmt 0 discriminator 1
	movl	Alphabet_size(%rip), %eax	# Alphabet_size, Alphabet_size.48
	cmpl	%eax, -572(%rbp)	# Alphabet_size.48, x
	jl	.L179	#,
	.loc 1 730 0 is_stmt 1
	movq	-560(%rbp), %rax	# hmm, tmp445
	movl	456(%rax), %eax	# hmm_22->flags, D.9353
	andl	$256, %eax	#, D.9353
	testl	%eax, %eax	# D.9353
	je	.L180	#,
	.loc 1 731 0
	movl	$.LC72, %esi	#,
	movl	$0, %edi	#,
	call	strtok	#
	movq	%rax, -552(%rbp)	# tmp446, s
	cmpq	$0, -552(%rbp)	#, s
	jne	.L181	#,
	.loc 1 731 0 is_stmt 0 discriminator 1
	jmp	.L111	#
.L181:
	.loc 1 732 0 is_stmt 1
	movq	-560(%rbp), %rax	# hmm, tmp447
	movq	72(%rax), %rax	# hmm_22->map, D.9363
	movl	-576(%rbp), %edx	# k, tmp448
	movslq	%edx, %rdx	# tmp448, D.9357
	salq	$2, %rdx	#, D.9357
	leaq	(%rax,%rdx), %rbx	#, D.9363
	movq	-552(%rbp), %rax	# s, tmp449
	movq	%rax, %rdi	# tmp449,
	call	atoi	#
	movl	%eax, (%rbx)	# D.9353, *_188
.L180:
	.loc 1 735 0
	movq	-600(%rbp), %rax	# hmmfp, tmp450
	movq	(%rax), %rdx	# hmmfp_16(D)->f, D.9354
	leaq	-544(%rbp), %rax	#, tmp451
	movl	$512, %esi	#,
	movq	%rax, %rdi	# tmp451,
	call	fgets	#
	testq	%rax, %rax	# D.9355
	jne	.L182	#,
	.loc 1 735 0 is_stmt 0 discriminator 1
	jmp	.L111	#
.L182:
	.loc 1 736 0 is_stmt 1
	leaq	-544(%rbp), %rax	#, tmp452
	movl	$.LC72, %esi	#,
	movq	%rax, %rdi	# tmp452,
	call	strtok	#
	movq	%rax, -552(%rbp)	# tmp453, s
	cmpq	$0, -552(%rbp)	#, s
	jne	.L183	#,
	.loc 1 736 0 is_stmt 0 discriminator 1
	jmp	.L111	#
.L183:
	.loc 1 737 0 is_stmt 1
	movq	-560(%rbp), %rax	# hmm, tmp454
	movl	456(%rax), %eax	# hmm_22->flags, D.9353
	andl	$4, %eax	#, D.9353
	testl	%eax, %eax	# D.9353
	je	.L184	#,
	.loc 1 737 0 is_stmt 0 discriminator 1
	movq	-560(%rbp), %rax	# hmm, tmp455
	movq	24(%rax), %rdx	# hmm_22->rf, D.9355
	movl	-576(%rbp), %eax	# k, tmp456
	cltq
	addq	%rax, %rdx	# D.9364, D.9355
	movq	-552(%rbp), %rax	# s, tmp457
	movzbl	(%rax), %eax	# *s_192, D.9356
	movb	%al, (%rdx)	# D.9356, *_197
.L184:
	.loc 1 738 0 is_stmt 1
	movq	-560(%rbp), %rax	# hmm, tmp458
	movl	136(%rax), %eax	# hmm_22->M, D.9353
	cmpl	-576(%rbp), %eax	# k, D.9353
	jle	.L185	#,
	.loc 1 739 0
	movl	$0, -572(%rbp)	#, x
	jmp	.L186	#
.L188:
	.loc 1 740 0
	movl	$.LC72, %esi	#,
	movl	$0, %edi	#,
	call	strtok	#
	movq	%rax, -552(%rbp)	# tmp459, s
	cmpq	$0, -552(%rbp)	#, s
	jne	.L187	#,
	.loc 1 740 0 is_stmt 0 discriminator 1
	jmp	.L111	#
.L187:
	.loc 1 741 0 is_stmt 1
	movq	-560(%rbp), %rax	# hmm, tmp460
	movq	160(%rax), %rax	# hmm_22->ins, D.9361
	movl	-576(%rbp), %edx	# k, tmp461
	movslq	%edx, %rdx	# tmp461, D.9357
	salq	$3, %rdx	#, D.9357
	addq	%rdx, %rax	# D.9357, D.9361
	movq	(%rax), %rax	# *_206, D.9362
	movl	-572(%rbp), %edx	# x, tmp462
	movslq	%edx, %rdx	# tmp462, D.9357
	salq	$2, %rdx	#, D.9357
	leaq	(%rax,%rdx), %rbx	#, D.9362
	movq	-560(%rbp), %rax	# hmm, tmp463
	movl	-572(%rbp), %edx	# x, tmp465
	movslq	%edx, %rdx	# tmp465, tmp464
	addq	$56, %rdx	#, tmp466
	movl	(%rax,%rdx,4), %eax	# hmm_22->null, D.9360
	movq	-552(%rbp), %rdx	# s, tmp467
	movl	%eax, -612(%rbp)	# D.9360, %sfp
	movss	-612(%rbp), %xmm0	# %sfp,
	movq	%rdx, %rdi	# tmp467,
	call	ascii2prob	#
	movss	%xmm0, -612(%rbp)	#, %sfp
	movl	-612(%rbp), %eax	# %sfp, D.9360
	movl	%eax, (%rbx)	# D.9360, *_210
	.loc 1 739 0
	addl	$1, -572(%rbp)	#, x
.L186:
	.loc 1 739 0 is_stmt 0 discriminator 1
	movl	Alphabet_size(%rip), %eax	# Alphabet_size, Alphabet_size.49
	cmpl	%eax, -572(%rbp)	# Alphabet_size.49, x
	jl	.L188	#,
.L185:
	.loc 1 745 0 is_stmt 1
	movq	-600(%rbp), %rax	# hmmfp, tmp468
	movq	(%rax), %rdx	# hmmfp_16(D)->f, D.9354
	leaq	-544(%rbp), %rax	#, tmp469
	movl	$512, %esi	#,
	movq	%rax, %rdi	# tmp469,
	call	fgets	#
	testq	%rax, %rax	# D.9355
	jne	.L189	#,
	.loc 1 745 0 is_stmt 0 discriminator 1
	jmp	.L111	#
.L189:
	.loc 1 746 0 is_stmt 1
	leaq	-544(%rbp), %rax	#, tmp470
	movl	$.LC72, %esi	#,
	movq	%rax, %rdi	# tmp470,
	call	strtok	#
	movq	%rax, -552(%rbp)	# tmp471, s
	cmpq	$0, -552(%rbp)	#, s
	jne	.L190	#,
	.loc 1 746 0 is_stmt 0 discriminator 1
	jmp	.L111	#
.L190:
	.loc 1 747 0 is_stmt 1
	movq	-560(%rbp), %rax	# hmm, tmp472
	movl	456(%rax), %eax	# hmm_22->flags, D.9353
	andl	$8, %eax	#, D.9353
	testl	%eax, %eax	# D.9353
	je	.L191	#,
	.loc 1 747 0 is_stmt 0 discriminator 1
	movq	-560(%rbp), %rax	# hmm, tmp473
	movq	32(%rax), %rdx	# hmm_22->cs, D.9355
	movl	-576(%rbp), %eax	# k, tmp474
	cltq
	addq	%rax, %rdx	# D.9364, D.9355
	movq	-552(%rbp), %rax	# s, tmp475
	movzbl	(%rax), %eax	# *s_216, D.9356
	movb	%al, (%rdx)	# D.9356, *_221
.L191:
	.loc 1 748 0 is_stmt 1
	movl	$0, -572(%rbp)	#, x
	jmp	.L192	#
.L195:
	.loc 1 749 0
	movl	$.LC72, %esi	#,
	movl	$0, %edi	#,
	call	strtok	#
	movq	%rax, -552(%rbp)	# tmp476, s
	cmpq	$0, -552(%rbp)	#, s
	jne	.L193	#,
	.loc 1 749 0 is_stmt 0 discriminator 1
	jmp	.L111	#
.L193:
	.loc 1 750 0 is_stmt 1
	movq	-560(%rbp), %rax	# hmm, tmp477
	movl	136(%rax), %eax	# hmm_22->M, D.9353
	cmpl	-576(%rbp), %eax	# k, D.9353
	jle	.L194	#,
	.loc 1 750 0 is_stmt 0 discriminator 1
	movq	-560(%rbp), %rax	# hmm, tmp478
	movq	144(%rax), %rax	# hmm_22->t, D.9361
	movl	-576(%rbp), %edx	# k, tmp479
	movslq	%edx, %rdx	# tmp479, D.9357
	salq	$3, %rdx	#, D.9357
	addq	%rdx, %rax	# D.9357, D.9361
	movq	(%rax), %rax	# *_229, D.9362
	movl	-572(%rbp), %edx	# x, tmp480
	movslq	%edx, %rdx	# tmp480, D.9357
	salq	$2, %rdx	#, D.9357
	leaq	(%rax,%rdx), %rbx	#, D.9362
	movq	-552(%rbp), %rax	# s, tmp481
	movss	.LC33(%rip), %xmm0	#,
	movq	%rax, %rdi	# tmp481,
	call	ascii2prob	#
	movss	%xmm0, -612(%rbp)	#, %sfp
	movl	-612(%rbp), %eax	# %sfp, D.9360
	movl	%eax, (%rbx)	# D.9360, *_233
.L194:
	.loc 1 748 0 is_stmt 1
	addl	$1, -572(%rbp)	#, x
.L192:
	.loc 1 748 0 is_stmt 0 discriminator 1
	cmpl	$6, -572(%rbp)	#, x
	jle	.L195	#,
	.loc 1 752 0 is_stmt 1
	movl	$.LC72, %esi	#,
	movl	$0, %edi	#,
	call	strtok	#
	movq	%rax, -552(%rbp)	# tmp482, s
	cmpq	$0, -552(%rbp)	#, s
	jne	.L196	#,
	.loc 1 752 0 is_stmt 0 discriminator 1
	jmp	.L111	#
.L196:
	.loc 1 753 0 is_stmt 1
	movq	-560(%rbp), %rax	# hmm, tmp483
	movq	208(%rax), %rax	# hmm_22->begin, D.9362
	movl	-576(%rbp), %edx	# k, tmp484
	movslq	%edx, %rdx	# tmp484, D.9357
	salq	$2, %rdx	#, D.9357
	leaq	(%rax,%rdx), %rbx	#, D.9362
	movq	-552(%rbp), %rax	# s, tmp485
	movss	.LC33(%rip), %xmm0	#,
	movq	%rax, %rdi	# tmp485,
	call	ascii2prob	#
	movss	%xmm0, -612(%rbp)	#, %sfp
	movl	-612(%rbp), %eax	# %sfp, D.9360
	movl	%eax, (%rbx)	# D.9360, *_240
	.loc 1 754 0
	movl	$.LC72, %esi	#,
	movl	$0, %edi	#,
	call	strtok	#
	movq	%rax, -552(%rbp)	# tmp486, s
	cmpq	$0, -552(%rbp)	#, s
	jne	.L197	#,
	.loc 1 754 0 is_stmt 0 discriminator 1
	jmp	.L111	#
.L197:
	.loc 1 755 0 is_stmt 1
	movq	-560(%rbp), %rax	# hmm, tmp487
	movq	216(%rax), %rax	# hmm_22->end, D.9362
	movl	-576(%rbp), %edx	# k, tmp488
	movslq	%edx, %rdx	# tmp488, D.9357
	salq	$2, %rdx	#, D.9357
	leaq	(%rax,%rdx), %rbx	#, D.9362
	movq	-552(%rbp), %rax	# s, tmp489
	movss	.LC33(%rip), %xmm0	#,
	movq	%rax, %rdi	# tmp489,
	call	ascii2prob	#
	movss	%xmm0, -612(%rbp)	#, %sfp
	movl	-612(%rbp), %eax	# %sfp, D.9360
	movl	%eax, (%rbx)	# D.9360, *_246
	.loc 1 721 0
	addl	$1, -576(%rbp)	#, k
.L173:
	.loc 1 721 0 is_stmt 0 discriminator 1
	movq	-560(%rbp), %rax	# hmm, tmp490
	movl	136(%rax), %eax	# hmm_22->M, D.9353
	cmpl	-576(%rbp), %eax	# k, D.9353
	jge	.L198	#,
	.loc 1 761 0 is_stmt 1
	jmp	.L199	#
.L201:
	.loc 1 762 0
	leaq	-544(%rbp), %rax	#, tmp491
	movl	$2, %edx	#,
	movl	$.LC82, %esi	#,
	movq	%rax, %rdi	# tmp491,
	call	strncmp	#
	testl	%eax, %eax	# D.9353
	jne	.L199	#,
	.loc 1 762 0 is_stmt 0 discriminator 1
	jmp	.L200	#
.L199:
	.loc 1 761 0 is_stmt 1 discriminator 1
	movq	-600(%rbp), %rax	# hmmfp, tmp492
	movq	(%rax), %rdx	# hmmfp_16(D)->f, D.9354
	leaq	-544(%rbp), %rax	#, tmp493
	movl	$512, %esi	#,
	movq	%rax, %rdi	# tmp493,
	call	fgets	#
	testq	%rax, %rax	# D.9355
	jne	.L201	#,
.L200:
	.loc 1 764 0
	movq	-560(%rbp), %rax	# hmm, tmp494
	movq	%rax, %rdi	# tmp494,
	call	Plan7Renormalize	#
	.loc 1 768 0
	movq	-560(%rbp), %rax	# hmm, tmp495
	movl	456(%rax), %eax	# hmm_22->flags, D.9353
	orl	$32, %eax	#, D.9353
	movl	%eax, %edx	# D.9353, D.9353
	movq	-560(%rbp), %rax	# hmm, tmp496
	movl	%edx, 456(%rax)	# D.9353, hmm_22->flags
	.loc 1 769 0
	movq	-560(%rbp), %rax	# hmm, tmp497
	movl	456(%rax), %eax	# hmm_22->flags, D.9353
	andl	$-2, %eax	#, D.9353
	movl	%eax, %edx	# D.9353, D.9353
	movq	-560(%rbp), %rax	# hmm, tmp498
	movl	%edx, 456(%rax)	# D.9353, hmm_22->flags
	.loc 1 771 0
	movq	-608(%rbp), %rax	# ret_hmm, tmp499
	movq	-560(%rbp), %rdx	# hmm, tmp500
	movq	%rdx, (%rax)	# tmp500, *ret_hmm_256(D)
	.loc 1 772 0
	movl	$1, %eax	#, D.9353
	jmp	.L203	#
.L111:
	.loc 1 775 0
	cmpq	$0, -560(%rbp)	#, hmm
	je	.L202	#,
	.loc 1 775 0 is_stmt 0 discriminator 1
	movq	-560(%rbp), %rax	# hmm, tmp501
	movq	%rax, %rdi	# tmp501,
	call	FreePlan7	#
.L202:
	.loc 1 776 0 is_stmt 1
	movq	-608(%rbp), %rax	# ret_hmm, tmp502
	movq	$0, (%rax)	#, *ret_hmm_256(D)
	.loc 1 777 0
	movl	$1, %eax	#, D.9353
.L203:
	.loc 1 778 0
	movq	-24(%rbp), %rbx	# D.9365, tmp505
	xorq	%fs:40, %rbx	#, tmp505
	je	.L204	#,
	call	__stack_chk_fail	#
.L204:
	addq	$616, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	read_asc20hmm, .-read_asc20hmm
	.type	read_bin20hmm, @function
read_bin20hmm:
.LFB11:
	.loc 1 783 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# hmmfp, hmmfp
	movq	%rsi, -64(%rbp)	# ret_hmm, ret_hmm
	.loc 1 789 0
	movq	$0, -24(%rbp)	#, hmm
	.loc 1 793 0
	movq	-56(%rbp), %rax	# hmmfp, tmp310
	movq	(%rax), %rax	# hmmfp_15(D)->f, D.9393
	movq	%rax, %rdi	# D.9393,
	call	feof	#
	testl	%eax, %eax	# D.9392
	je	.L206	#,
	.loc 1 793 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.9392
	jmp	.L281	#
.L206:
	.loc 1 794 0 is_stmt 1
	movq	-56(%rbp), %rax	# hmmfp, tmp311
	movq	(%rax), %rdx	# hmmfp_15(D)->f, D.9393
	leaq	-36(%rbp), %rax	#, tmp312
	movq	%rdx, %rcx	# D.9393,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp312,
	call	fread	#
	testq	%rax, %rax	# D.9394
	jne	.L208	#,
	.loc 1 794 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.9392
	jmp	.L281	#
.L208:
	.loc 1 796 0 is_stmt 1
	movq	-56(%rbp), %rax	# hmmfp, tmp313
	movl	28(%rax), %eax	# hmmfp_15(D)->byteswap, D.9392
	testl	%eax, %eax	# D.9392
	je	.L209	#,
	.loc 1 796 0 is_stmt 0 discriminator 1
	leaq	-36(%rbp), %rax	#, tmp314
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp314,
	call	byteswap	#
.L209:
	.loc 1 797 0 is_stmt 1
	movl	-36(%rbp), %edx	# magic, magic.50
	movl	v20magic(%rip), %eax	# v20magic, v20magic.51
	cmpl	%eax, %edx	# v20magic.51, magic.50
	je	.L210	#,
	.loc 1 797 0 is_stmt 0 discriminator 1
	jmp	.L211	#
.L210:
	.loc 1 799 0 is_stmt 1
	call	AllocPlan7Shell	#
	movq	%rax, -24(%rbp)	# tmp315, hmm
	.loc 1 801 0
	movq	-56(%rbp), %rax	# hmmfp, tmp316
	movq	(%rax), %rax	# hmmfp_15(D)->f, D.9393
	movq	-24(%rbp), %rdx	# hmm, tmp317
	leaq	456(%rdx), %rdi	#, D.9395
	movq	%rax, %rcx	# D.9393,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	call	fread	#
	testq	%rax, %rax	# D.9394
	jne	.L212	#,
	.loc 1 801 0 is_stmt 0 discriminator 1
	jmp	.L211	#
.L212:
	.loc 1 802 0 is_stmt 1
	movq	-56(%rbp), %rax	# hmmfp, tmp318
	movl	28(%rax), %eax	# hmmfp_15(D)->byteswap, D.9392
	testl	%eax, %eax	# D.9392
	je	.L213	#,
	.loc 1 802 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# hmm, tmp319
	addq	$456, %rax	#, D.9395
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.9395,
	call	byteswap	#
.L213:
	.loc 1 804 0 is_stmt 1
	movq	-24(%rbp), %rdx	# hmm, D.9396
	movq	-56(%rbp), %rax	# hmmfp, tmp320
	movl	28(%rax), %ecx	# hmmfp_15(D)->byteswap, D.9392
	movq	-56(%rbp), %rax	# hmmfp, tmp321
	movq	(%rax), %rax	# hmmfp_15(D)->f, D.9393
	movl	%ecx, %esi	# D.9392,
	movq	%rax, %rdi	# D.9393,
	call	read_bin_string	#
	testl	%eax, %eax	# D.9392
	jne	.L214	#,
	.loc 1 804 0 is_stmt 0 discriminator 1
	jmp	.L211	#
.L214:
	.loc 1 807 0 is_stmt 1
	movq	-24(%rbp), %rax	# hmm, tmp322
	movl	456(%rax), %eax	# hmm_25->flags, D.9392
	andl	$512, %eax	#, D.9392
	testl	%eax, %eax	# D.9392
	je	.L215	#,
	.loc 1 808 0 discriminator 1
	movq	-24(%rbp), %rax	# hmm, tmp323
	leaq	8(%rax), %rdx	#, D.9396
	movq	-56(%rbp), %rax	# hmmfp, tmp324
	movl	28(%rax), %ecx	# hmmfp_15(D)->byteswap, D.9392
	movq	-56(%rbp), %rax	# hmmfp, tmp325
	movq	(%rax), %rax	# hmmfp_15(D)->f, D.9393
	movl	%ecx, %esi	# D.9392,
	movq	%rax, %rdi	# D.9393,
	call	read_bin_string	#
	.loc 1 807 0 discriminator 1
	testl	%eax, %eax	# D.9392
	jne	.L215	#,
	.loc 1 808 0
	jmp	.L211	#
.L215:
	.loc 1 810 0
	movq	-24(%rbp), %rax	# hmm, tmp326
	movl	456(%rax), %eax	# hmm_25->flags, D.9392
	andl	$2, %eax	#, D.9392
	testl	%eax, %eax	# D.9392
	je	.L216	#,
	.loc 1 811 0 discriminator 1
	movq	-24(%rbp), %rax	# hmm, tmp327
	leaq	16(%rax), %rdx	#, D.9396
	movq	-56(%rbp), %rax	# hmmfp, tmp328
	movl	28(%rax), %ecx	# hmmfp_15(D)->byteswap, D.9392
	movq	-56(%rbp), %rax	# hmmfp, tmp329
	movq	(%rax), %rax	# hmmfp_15(D)->f, D.9393
	movl	%ecx, %esi	# D.9392,
	movq	%rax, %rdi	# D.9393,
	call	read_bin_string	#
	.loc 1 810 0 discriminator 1
	testl	%eax, %eax	# D.9392
	jne	.L216	#,
	.loc 1 811 0
	jmp	.L211	#
.L216:
	.loc 1 813 0
	movq	-56(%rbp), %rax	# hmmfp, tmp330
	movq	(%rax), %rax	# hmmfp_15(D)->f, D.9393
	movq	-24(%rbp), %rdx	# hmm, tmp331
	leaq	136(%rdx), %rdi	#, D.9395
	movq	%rax, %rcx	# D.9393,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	call	fread	#
	testq	%rax, %rax	# D.9394
	jne	.L217	#,
	.loc 1 813 0 is_stmt 0 discriminator 1
	jmp	.L211	#
.L217:
	.loc 1 814 0 is_stmt 1
	movq	-56(%rbp), %rax	# hmmfp, tmp332
	movl	28(%rax), %eax	# hmmfp_15(D)->byteswap, D.9392
	testl	%eax, %eax	# D.9392
	je	.L218	#,
	.loc 1 814 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# hmm, tmp333
	addq	$136, %rax	#, D.9395
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.9395,
	call	byteswap	#
.L218:
	.loc 1 816 0 is_stmt 1
	movq	-56(%rbp), %rax	# hmmfp, tmp334
	movq	(%rax), %rdx	# hmmfp_15(D)->f, D.9393
	leaq	-40(%rbp), %rax	#, tmp335
	movq	%rdx, %rcx	# D.9393,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp335,
	call	fread	#
	testq	%rax, %rax	# D.9394
	jne	.L219	#,
	.loc 1 816 0 is_stmt 0 discriminator 1
	jmp	.L211	#
.L219:
	.loc 1 817 0 is_stmt 1
	movq	-56(%rbp), %rax	# hmmfp, tmp336
	movl	28(%rax), %eax	# hmmfp_15(D)->byteswap, D.9392
	testl	%eax, %eax	# D.9392
	je	.L220	#,
	.loc 1 817 0 is_stmt 0 discriminator 1
	leaq	-40(%rbp), %rax	#, tmp337
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp337,
	call	byteswap	#
.L220:
	.loc 1 818 0 is_stmt 1
	movl	Alphabet_type(%rip), %eax	# Alphabet_type, Alphabet_type.52
	testl	%eax, %eax	# Alphabet_type.52
	jne	.L221	#,
	.loc 1 818 0 is_stmt 0 discriminator 1
	movl	-40(%rbp), %eax	# type, type.53
	movl	%eax, %edi	# type.53,
	call	SetAlphabet	#
	jmp	.L222	#
.L221:
	.loc 1 819 0 is_stmt 1
	movl	-40(%rbp), %edx	# type, type.54
	movl	Alphabet_type(%rip), %eax	# Alphabet_type, Alphabet_type.55
	cmpl	%eax, %edx	# Alphabet_type.55, type.54
	je	.L222	#,
	.loc 1 820 0
	movl	-40(%rbp), %eax	# type, type.56
	movl	%eax, %edi	# type.56,
	call	AlphabetType2String	#
	movq	%rax, %rbx	#, D.9397
	movl	Alphabet_type(%rip), %eax	# Alphabet_type, Alphabet_type.57
	movl	%eax, %edi	# Alphabet_type.57,
	call	AlphabetType2String	#
	movq	%rbx, %rdx	# D.9397,
	movq	%rax, %rsi	# D.9397,
	movl	$.LC65, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L222:
	.loc 1 823 0
	movq	-24(%rbp), %rax	# hmm, tmp338
	movl	136(%rax), %edx	# hmm_25->M, D.9392
	movq	-24(%rbp), %rax	# hmm, tmp339
	movl	%edx, %esi	# D.9392,
	movq	%rax, %rdi	# tmp339,
	call	AllocPlan7Body	#
	.loc 1 826 0
	movq	-24(%rbp), %rax	# hmm, tmp340
	movl	456(%rax), %eax	# hmm_25->flags, D.9392
	andl	$4, %eax	#, D.9392
	testl	%eax, %eax	# D.9392
	je	.L223	#,
	.loc 1 827 0 discriminator 1
	movq	-56(%rbp), %rax	# hmmfp, tmp341
	movq	(%rax), %rcx	# hmmfp_15(D)->f, D.9393
	movq	-24(%rbp), %rax	# hmm, tmp342
	movl	136(%rax), %eax	# hmm_25->M, D.9392
	addl	$1, %eax	#, D.9392
	movslq	%eax, %rdx	# D.9392, D.9394
	movq	-24(%rbp), %rax	# hmm, tmp343
	movq	24(%rax), %rax	# hmm_25->rf, D.9397
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.9397,
	call	fread	#
	.loc 1 826 0 discriminator 1
	testq	%rax, %rax	# D.9394
	jne	.L223	#,
	.loc 1 827 0
	jmp	.L211	#
.L223:
	.loc 1 828 0
	movq	-24(%rbp), %rax	# hmm, tmp344
	movq	24(%rax), %rdx	# hmm_25->rf, D.9397
	movq	-24(%rbp), %rax	# hmm, tmp345
	movl	136(%rax), %eax	# hmm_25->M, D.9392
	cltq
	addq	$1, %rax	#, D.9398
	addq	%rdx, %rax	# D.9397, D.9397
	movb	$0, (%rax)	#, *_76
	.loc 1 830 0
	movq	-24(%rbp), %rax	# hmm, tmp346
	movl	456(%rax), %eax	# hmm_25->flags, D.9392
	andl	$8, %eax	#, D.9392
	testl	%eax, %eax	# D.9392
	je	.L224	#,
	.loc 1 831 0 discriminator 1
	movq	-56(%rbp), %rax	# hmmfp, tmp347
	movq	(%rax), %rcx	# hmmfp_15(D)->f, D.9393
	movq	-24(%rbp), %rax	# hmm, tmp348
	movl	136(%rax), %eax	# hmm_25->M, D.9392
	addl	$1, %eax	#, D.9392
	movslq	%eax, %rdx	# D.9392, D.9394
	movq	-24(%rbp), %rax	# hmm, tmp349
	movq	32(%rax), %rax	# hmm_25->cs, D.9397
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.9397,
	call	fread	#
	.loc 1 830 0 discriminator 1
	testq	%rax, %rax	# D.9394
	jne	.L224	#,
	.loc 1 831 0
	jmp	.L211	#
.L224:
	.loc 1 832 0
	movq	-24(%rbp), %rax	# hmm, tmp350
	movq	32(%rax), %rdx	# hmm_25->cs, D.9397
	movq	-24(%rbp), %rax	# hmm, tmp351
	movl	136(%rax), %eax	# hmm_25->M, D.9392
	cltq
	addq	$1, %rax	#, D.9398
	addq	%rdx, %rax	# D.9397, D.9397
	movb	$0, (%rax)	#, *_89
	.loc 1 834 0
	movq	-24(%rbp), %rax	# hmm, tmp352
	movl	456(%rax), %eax	# hmm_25->flags, D.9392
	andl	$256, %eax	#, D.9392
	testl	%eax, %eax	# D.9392
	je	.L225	#,
	.loc 1 835 0 discriminator 1
	movq	-56(%rbp), %rax	# hmmfp, tmp353
	movq	(%rax), %rcx	# hmmfp_15(D)->f, D.9393
	movq	-24(%rbp), %rax	# hmm, tmp354
	movl	136(%rax), %eax	# hmm_25->M, D.9392
	addl	$1, %eax	#, D.9392
	movslq	%eax, %rdx	# D.9392, D.9394
	movq	-24(%rbp), %rax	# hmm, tmp355
	movq	72(%rax), %rax	# hmm_25->map, D.9395
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.9395,
	call	fread	#
	.loc 1 834 0 discriminator 1
	testq	%rax, %rax	# D.9394
	jne	.L225	#,
	.loc 1 835 0
	jmp	.L211	#
.L225:
	.loc 1 836 0
	movq	-56(%rbp), %rax	# hmmfp, tmp356
	movl	28(%rax), %eax	# hmmfp_15(D)->byteswap, D.9392
	testl	%eax, %eax	# D.9392
	je	.L226	#,
	.loc 1 837 0
	movl	$1, -32(%rbp)	#, k
	jmp	.L227	#
.L228:
	.loc 1 838 0 discriminator 2
	movq	-24(%rbp), %rax	# hmm, tmp357
	movq	72(%rax), %rax	# hmm_25->map, D.9395
	movl	-32(%rbp), %edx	# k, tmp358
	movslq	%edx, %rdx	# tmp358, D.9394
	salq	$2, %rdx	#, D.9394
	addq	%rdx, %rax	# D.9394, D.9397
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.9397,
	call	byteswap	#
	.loc 1 837 0 discriminator 2
	addl	$1, -32(%rbp)	#, k
.L227:
	.loc 1 837 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# hmm, tmp359
	movl	136(%rax), %eax	# hmm_25->M, D.9392
	cmpl	-32(%rbp), %eax	# k, D.9392
	jge	.L228	#,
.L226:
	.loc 1 840 0 is_stmt 1
	movq	-24(%rbp), %rax	# hmm, tmp360
	leaq	48(%rax), %rdx	#, D.9396
	movq	-56(%rbp), %rax	# hmmfp, tmp361
	movl	28(%rax), %ecx	# hmmfp_15(D)->byteswap, D.9392
	movq	-56(%rbp), %rax	# hmmfp, tmp362
	movq	(%rax), %rax	# hmmfp_15(D)->f, D.9393
	movl	%ecx, %esi	# D.9392,
	movq	%rax, %rdi	# D.9393,
	call	read_bin_string	#
	testl	%eax, %eax	# D.9392
	jne	.L229	#,
	.loc 1 840 0 is_stmt 0 discriminator 1
	jmp	.L211	#
.L229:
	.loc 1 842 0 is_stmt 1
	movq	-56(%rbp), %rax	# hmmfp, tmp363
	movq	(%rax), %rax	# hmmfp_15(D)->f, D.9393
	movq	-24(%rbp), %rdx	# hmm, tmp364
	leaq	56(%rdx), %rdi	#, D.9395
	movq	%rax, %rcx	# D.9393,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	call	fread	#
	testq	%rax, %rax	# D.9394
	jne	.L230	#,
	.loc 1 842 0 is_stmt 0 discriminator 1
	jmp	.L211	#
.L230:
	.loc 1 843 0 is_stmt 1
	movq	-56(%rbp), %rax	# hmmfp, tmp365
	movl	28(%rax), %eax	# hmmfp_15(D)->byteswap, D.9392
	testl	%eax, %eax	# D.9392
	je	.L231	#,
	.loc 1 843 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# hmm, tmp366
	addq	$56, %rax	#, D.9395
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.9395,
	call	byteswap	#
.L231:
	.loc 1 845 0 is_stmt 1
	movq	-24(%rbp), %rax	# hmm, tmp367
	leaq	64(%rax), %rdx	#, D.9396
	movq	-56(%rbp), %rax	# hmmfp, tmp368
	movl	28(%rax), %ecx	# hmmfp_15(D)->byteswap, D.9392
	movq	-56(%rbp), %rax	# hmmfp, tmp369
	movq	(%rax), %rax	# hmmfp_15(D)->f, D.9393
	movl	%ecx, %esi	# D.9392,
	movq	%rax, %rdi	# D.9393,
	call	read_bin_string	#
	testl	%eax, %eax	# D.9392
	jne	.L232	#,
	.loc 1 845 0 is_stmt 0 discriminator 1
	jmp	.L211	#
.L232:
	.loc 1 847 0 is_stmt 1
	movq	-56(%rbp), %rax	# hmmfp, tmp370
	movq	(%rax), %rax	# hmmfp_15(D)->f, D.9393
	movq	-24(%rbp), %rdx	# hmm, tmp371
	leaq	80(%rdx), %rdi	#, D.9395
	movq	%rax, %rcx	# D.9393,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	call	fread	#
	testq	%rax, %rax	# D.9394
	jne	.L233	#,
	.loc 1 847 0 is_stmt 0 discriminator 1
	jmp	.L211	#
.L233:
	.loc 1 848 0 is_stmt 1
	movq	-56(%rbp), %rax	# hmmfp, tmp372
	movl	28(%rax), %eax	# hmmfp_15(D)->byteswap, D.9392
	testl	%eax, %eax	# D.9392
	je	.L234	#,
	.loc 1 848 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# hmm, tmp373
	addq	$80, %rax	#, D.9395
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.9395,
	call	byteswap	#
.L234:
	.loc 1 851 0 is_stmt 1
	movq	-24(%rbp), %rax	# hmm, tmp374
	movl	456(%rax), %eax	# hmm_25->flags, D.9392
	andl	$1024, %eax	#, D.9392
	testl	%eax, %eax	# D.9392
	je	.L235	#,
	.loc 1 852 0
	movq	-56(%rbp), %rax	# hmmfp, tmp375
	movq	(%rax), %rax	# hmmfp_15(D)->f, D.9393
	movq	-24(%rbp), %rdx	# hmm, tmp376
	leaq	112(%rdx), %rdi	#, D.9399
	movq	%rax, %rcx	# D.9393,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	call	fread	#
	testq	%rax, %rax	# D.9394
	jne	.L236	#,
	.loc 1 852 0 is_stmt 0 discriminator 1
	jmp	.L211	#
.L236:
	.loc 1 853 0 is_stmt 1
	movq	-56(%rbp), %rax	# hmmfp, tmp377
	movq	(%rax), %rax	# hmmfp_15(D)->f, D.9393
	movq	-24(%rbp), %rdx	# hmm, tmp378
	leaq	116(%rdx), %rdi	#, D.9399
	movq	%rax, %rcx	# D.9393,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	call	fread	#
	testq	%rax, %rax	# D.9394
	jne	.L237	#,
	.loc 1 853 0 is_stmt 0 discriminator 1
	jmp	.L211	#
.L237:
	.loc 1 854 0 is_stmt 1
	movq	-56(%rbp), %rax	# hmmfp, tmp379
	movl	28(%rax), %eax	# hmmfp_15(D)->byteswap, D.9392
	testl	%eax, %eax	# D.9392
	je	.L235	#,
	.loc 1 855 0
	movq	-24(%rbp), %rax	# hmm, tmp380
	addq	$112, %rax	#, D.9399
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.9399,
	call	byteswap	#
	.loc 1 856 0
	movq	-24(%rbp), %rax	# hmm, tmp381
	addq	$116, %rax	#, D.9399
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.9399,
	call	byteswap	#
.L235:
	.loc 1 860 0
	movq	-24(%rbp), %rax	# hmm, tmp382
	movl	456(%rax), %eax	# hmm_25->flags, D.9392
	andl	$2048, %eax	#, D.9392
	testl	%eax, %eax	# D.9392
	je	.L238	#,
	.loc 1 861 0
	movq	-56(%rbp), %rax	# hmmfp, tmp383
	movq	(%rax), %rax	# hmmfp_15(D)->f, D.9393
	movq	-24(%rbp), %rdx	# hmm, tmp384
	leaq	120(%rdx), %rdi	#, D.9399
	movq	%rax, %rcx	# D.9393,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	call	fread	#
	testq	%rax, %rax	# D.9394
	jne	.L239	#,
	.loc 1 861 0 is_stmt 0 discriminator 1
	jmp	.L211	#
.L239:
	.loc 1 862 0 is_stmt 1
	movq	-56(%rbp), %rax	# hmmfp, tmp385
	movq	(%rax), %rax	# hmmfp_15(D)->f, D.9393
	movq	-24(%rbp), %rdx	# hmm, tmp386
	leaq	124(%rdx), %rdi	#, D.9399
	movq	%rax, %rcx	# D.9393,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	call	fread	#
	testq	%rax, %rax	# D.9394
	jne	.L240	#,
	.loc 1 862 0 is_stmt 0 discriminator 1
	jmp	.L211	#
.L240:
	.loc 1 863 0 is_stmt 1
	movq	-56(%rbp), %rax	# hmmfp, tmp387
	movl	28(%rax), %eax	# hmmfp_15(D)->byteswap, D.9392
	testl	%eax, %eax	# D.9392
	je	.L238	#,
	.loc 1 864 0
	movq	-24(%rbp), %rax	# hmm, tmp388
	addq	$120, %rax	#, D.9399
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.9399,
	call	byteswap	#
	.loc 1 865 0
	movq	-24(%rbp), %rax	# hmm, tmp389
	addq	$124, %rax	#, D.9399
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.9399,
	call	byteswap	#
.L238:
	.loc 1 869 0
	movq	-24(%rbp), %rax	# hmm, tmp390
	movl	456(%rax), %eax	# hmm_25->flags, D.9392
	andl	$4096, %eax	#, D.9392
	testl	%eax, %eax	# D.9392
	je	.L241	#,
	.loc 1 870 0
	movq	-56(%rbp), %rax	# hmmfp, tmp391
	movq	(%rax), %rax	# hmmfp_15(D)->f, D.9393
	movq	-24(%rbp), %rdx	# hmm, tmp392
	leaq	128(%rdx), %rdi	#, D.9399
	movq	%rax, %rcx	# D.9393,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	call	fread	#
	testq	%rax, %rax	# D.9394
	jne	.L242	#,
	.loc 1 870 0 is_stmt 0 discriminator 1
	jmp	.L211	#
.L242:
	.loc 1 871 0 is_stmt 1
	movq	-56(%rbp), %rax	# hmmfp, tmp393
	movq	(%rax), %rax	# hmmfp_15(D)->f, D.9393
	movq	-24(%rbp), %rdx	# hmm, tmp394
	leaq	132(%rdx), %rdi	#, D.9399
	movq	%rax, %rcx	# D.9393,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	call	fread	#
	testq	%rax, %rax	# D.9394
	jne	.L243	#,
	.loc 1 871 0 is_stmt 0 discriminator 1
	jmp	.L211	#
.L243:
	.loc 1 872 0 is_stmt 1
	movq	-56(%rbp), %rax	# hmmfp, tmp395
	movl	28(%rax), %eax	# hmmfp_15(D)->byteswap, D.9392
	testl	%eax, %eax	# D.9392
	je	.L241	#,
	.loc 1 873 0
	movq	-24(%rbp), %rax	# hmm, tmp396
	subq	$-128, %rax	#, D.9399
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.9399,
	call	byteswap	#
	.loc 1 874 0
	movq	-24(%rbp), %rax	# hmm, tmp397
	addq	$132, %rax	#, D.9399
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.9399,
	call	byteswap	#
.L241:
	.loc 1 879 0
	movl	$0, -32(%rbp)	#, k
	jmp	.L244	#
.L249:
	.loc 1 881 0
	movq	-56(%rbp), %rax	# hmmfp, tmp398
	movq	(%rax), %rax	# hmmfp_15(D)->f, D.9393
	movl	-32(%rbp), %edx	# k, tmp400
	movslq	%edx, %rdx	# tmp400, tmp399
	addq	$20, %rdx	#, tmp401
	leaq	0(,%rdx,8), %rcx	#, tmp402
	movq	-24(%rbp), %rdx	# hmm, tmp404
	addq	%rcx, %rdx	# tmp402, tmp403
	leaq	12(%rdx), %rdi	#, D.9400
	movq	%rax, %rcx	# D.9393,
	movl	$2, %edx	#,
	movl	$4, %esi	#,
	call	fread	#
	testq	%rax, %rax	# D.9394
	jne	.L245	#,
	.loc 1 881 0 is_stmt 0 discriminator 1
	jmp	.L211	#
.L245:
	.loc 1 882 0 is_stmt 1
	movq	-56(%rbp), %rax	# hmmfp, tmp405
	movl	28(%rax), %eax	# hmmfp_15(D)->byteswap, D.9392
	testl	%eax, %eax	# D.9392
	je	.L246	#,
	.loc 1 883 0
	movl	$0, -28(%rbp)	#, x
	jmp	.L247	#
.L248:
	.loc 1 884 0 discriminator 2
	movl	-28(%rbp), %eax	# x, tmp407
	cltq
	movl	-32(%rbp), %edx	# k, tmp409
	movslq	%edx, %rdx	# tmp409, tmp408
	addq	%rdx, %rdx	# tmp410
	addq	%rdx, %rax	# tmp410, tmp411
	addq	$40, %rax	#, tmp412
	leaq	0(,%rax,4), %rdx	#, tmp413
	movq	-24(%rbp), %rax	# hmm, tmp415
	addq	%rdx, %rax	# tmp413, tmp414
	addq	$12, %rax	#, D.9399
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.9399,
	call	byteswap	#
	.loc 1 883 0 discriminator 2
	addl	$1, -28(%rbp)	#, x
.L247:
	.loc 1 883 0 is_stmt 0 discriminator 1
	cmpl	$1, -28(%rbp)	#, x
	jle	.L248	#,
.L246:
	.loc 1 879 0 is_stmt 1
	addl	$1, -32(%rbp)	#, k
.L244:
	.loc 1 879 0 is_stmt 0 discriminator 1
	cmpl	$3, -32(%rbp)	#, k
	jle	.L249	#,
	.loc 1 889 0 is_stmt 1
	movq	-56(%rbp), %rax	# hmmfp, tmp416
	movq	(%rax), %rax	# hmmfp_15(D)->f, D.9393
	movq	-24(%rbp), %rdx	# hmm, tmp417
	leaq	304(%rdx), %rdi	#, D.9399
	movq	%rax, %rcx	# D.9393,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	call	fread	#
	testq	%rax, %rax	# D.9394
	jne	.L250	#,
	.loc 1 889 0 is_stmt 0 discriminator 1
	jmp	.L211	#
.L250:
	.loc 1 890 0 is_stmt 1
	movq	-56(%rbp), %rax	# hmmfp, tmp418
	movq	(%rax), %rdx	# hmmfp_15(D)->f, D.9393
	movl	Alphabet_size(%rip), %eax	# Alphabet_size, Alphabet_size.58
	cltq
	movq	-24(%rbp), %rcx	# hmm, tmp419
	leaq	224(%rcx), %rdi	#, D.9401
	movq	%rdx, %rcx	# D.9393,
	movq	%rax, %rdx	# D.9394,
	movl	$4, %esi	#,
	call	fread	#
	testq	%rax, %rax	# D.9394
	jne	.L251	#,
	.loc 1 890 0 is_stmt 0 discriminator 1
	jmp	.L211	#
.L251:
	.loc 1 893 0 is_stmt 1
	movq	-24(%rbp), %rax	# hmm, tmp420
	movl	456(%rax), %eax	# hmm_25->flags, D.9392
	andl	$128, %eax	#, D.9392
	testl	%eax, %eax	# D.9392
	je	.L252	#,
	.loc 1 894 0
	movq	-56(%rbp), %rax	# hmmfp, tmp421
	movq	(%rax), %rax	# hmmfp_15(D)->f, D.9393
	movq	-24(%rbp), %rdx	# hmm, tmp422
	leaq	448(%rdx), %rdi	#, D.9399
	movq	%rax, %rcx	# D.9393,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	call	fread	#
	testq	%rax, %rax	# D.9394
	jne	.L253	#,
	.loc 1 894 0 is_stmt 0 discriminator 1
	jmp	.L211	#
.L253:
	.loc 1 895 0 is_stmt 1
	movq	-56(%rbp), %rax	# hmmfp, tmp423
	movq	(%rax), %rax	# hmmfp_15(D)->f, D.9393
	movq	-24(%rbp), %rdx	# hmm, tmp424
	leaq	452(%rdx), %rdi	#, D.9399
	movq	%rax, %rcx	# D.9393,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	call	fread	#
	testq	%rax, %rax	# D.9394
	jne	.L254	#,
	.loc 1 895 0 is_stmt 0 discriminator 1
	jmp	.L211	#
.L254:
	.loc 1 897 0 is_stmt 1
	movq	-56(%rbp), %rax	# hmmfp, tmp425
	movl	28(%rax), %eax	# hmmfp_15(D)->byteswap, D.9392
	testl	%eax, %eax	# D.9392
	je	.L252	#,
	.loc 1 898 0
	movq	-24(%rbp), %rax	# hmm, tmp426
	addq	$448, %rax	#, D.9399
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.9399,
	call	byteswap	#
	.loc 1 899 0
	movq	-24(%rbp), %rax	# hmm, tmp427
	addq	$452, %rax	#, D.9399
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.9399,
	call	byteswap	#
.L252:
	.loc 1 905 0
	movq	-56(%rbp), %rax	# hmmfp, tmp428
	movq	(%rax), %rax	# hmmfp_15(D)->f, D.9393
	movq	-24(%rbp), %rdx	# hmm, tmp429
	leaq	168(%rdx), %rdi	#, D.9399
	movq	%rax, %rcx	# D.9393,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	call	fread	#
	testq	%rax, %rax	# D.9394
	jne	.L255	#,
	.loc 1 905 0 is_stmt 0 discriminator 1
	jmp	.L211	#
.L255:
	.loc 1 906 0 is_stmt 1
	movq	-56(%rbp), %rax	# hmmfp, tmp430
	movq	(%rax), %rcx	# hmmfp_15(D)->f, D.9393
	movq	-24(%rbp), %rax	# hmm, tmp431
	movl	136(%rax), %eax	# hmm_25->M, D.9392
	addl	$1, %eax	#, D.9392
	movslq	%eax, %rdx	# D.9392, D.9394
	movq	-24(%rbp), %rax	# hmm, tmp432
	movq	208(%rax), %rax	# hmm_25->begin, D.9399
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.9399,
	call	fread	#
	testq	%rax, %rax	# D.9394
	jne	.L256	#,
	.loc 1 906 0 is_stmt 0 discriminator 1
	jmp	.L211	#
.L256:
	.loc 1 907 0 is_stmt 1
	movq	-56(%rbp), %rax	# hmmfp, tmp433
	movq	(%rax), %rcx	# hmmfp_15(D)->f, D.9393
	movq	-24(%rbp), %rax	# hmm, tmp434
	movl	136(%rax), %eax	# hmm_25->M, D.9392
	addl	$1, %eax	#, D.9392
	movslq	%eax, %rdx	# D.9392, D.9394
	movq	-24(%rbp), %rax	# hmm, tmp435
	movq	216(%rax), %rax	# hmm_25->end, D.9399
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.9399,
	call	fread	#
	testq	%rax, %rax	# D.9394
	jne	.L257	#,
	.loc 1 907 0 is_stmt 0 discriminator 1
	jmp	.L211	#
.L257:
	.loc 1 910 0 is_stmt 1
	movl	$1, -32(%rbp)	#, k
	jmp	.L258	#
.L260:
	.loc 1 911 0
	movq	-56(%rbp), %rax	# hmmfp, tmp436
	movq	(%rax), %rcx	# hmmfp_15(D)->f, D.9393
	movl	Alphabet_size(%rip), %eax	# Alphabet_size, Alphabet_size.59
	movslq	%eax, %rdx	# Alphabet_size.59, D.9394
	movq	-24(%rbp), %rax	# hmm, tmp437
	movq	152(%rax), %rax	# hmm_25->mat, D.9402
	movl	-32(%rbp), %esi	# k, tmp438
	movslq	%esi, %rsi	# tmp438, D.9394
	salq	$3, %rsi	#, D.9394
	addq	%rsi, %rax	# D.9394, D.9402
	movq	(%rax), %rax	# *_208, D.9399
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.9399,
	call	fread	#
	testq	%rax, %rax	# D.9394
	jne	.L259	#,
	.loc 1 911 0 is_stmt 0 discriminator 1
	jmp	.L211	#
.L259:
	.loc 1 910 0 is_stmt 1
	addl	$1, -32(%rbp)	#, k
.L258:
	.loc 1 910 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# hmm, tmp439
	movl	136(%rax), %eax	# hmm_25->M, D.9392
	cmpl	-32(%rbp), %eax	# k, D.9392
	jge	.L260	#,
	.loc 1 912 0 is_stmt 1
	movl	$1, -32(%rbp)	#, k
	jmp	.L261	#
.L263:
	.loc 1 913 0
	movq	-56(%rbp), %rax	# hmmfp, tmp440
	movq	(%rax), %rcx	# hmmfp_15(D)->f, D.9393
	movl	Alphabet_size(%rip), %eax	# Alphabet_size, Alphabet_size.60
	movslq	%eax, %rdx	# Alphabet_size.60, D.9394
	movq	-24(%rbp), %rax	# hmm, tmp441
	movq	160(%rax), %rax	# hmm_25->ins, D.9402
	movl	-32(%rbp), %esi	# k, tmp442
	movslq	%esi, %rsi	# tmp442, D.9394
	salq	$3, %rsi	#, D.9394
	addq	%rsi, %rax	# D.9394, D.9402
	movq	(%rax), %rax	# *_220, D.9399
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.9399,
	call	fread	#
	testq	%rax, %rax	# D.9394
	jne	.L262	#,
	.loc 1 913 0 is_stmt 0 discriminator 1
	jmp	.L211	#
.L262:
	.loc 1 912 0 is_stmt 1
	addl	$1, -32(%rbp)	#, k
.L261:
	.loc 1 912 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# hmm, tmp443
	movl	136(%rax), %eax	# hmm_25->M, D.9392
	cmpl	-32(%rbp), %eax	# k, D.9392
	jg	.L263	#,
	.loc 1 914 0 is_stmt 1
	movl	$1, -32(%rbp)	#, k
	jmp	.L264	#
.L266:
	.loc 1 915 0
	movq	-56(%rbp), %rax	# hmmfp, tmp444
	movq	(%rax), %rdx	# hmmfp_15(D)->f, D.9393
	movq	-24(%rbp), %rax	# hmm, tmp445
	movq	144(%rax), %rax	# hmm_25->t, D.9402
	movl	-32(%rbp), %ecx	# k, tmp446
	movslq	%ecx, %rcx	# tmp446, D.9394
	salq	$3, %rcx	#, D.9394
	addq	%rcx, %rax	# D.9394, D.9402
	movq	(%rax), %rax	# *_230, D.9399
	movq	%rdx, %rcx	# D.9393,
	movl	$7, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.9399,
	call	fread	#
	testq	%rax, %rax	# D.9394
	jne	.L265	#,
	.loc 1 915 0 is_stmt 0 discriminator 1
	jmp	.L211	#
.L265:
	.loc 1 914 0 is_stmt 1
	addl	$1, -32(%rbp)	#, k
.L264:
	.loc 1 914 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# hmm, tmp447
	movl	136(%rax), %eax	# hmm_25->M, D.9392
	cmpl	-32(%rbp), %eax	# k, D.9392
	jg	.L266	#,
	.loc 1 919 0 is_stmt 1
	movq	-56(%rbp), %rax	# hmmfp, tmp448
	movl	28(%rax), %eax	# hmmfp_15(D)->byteswap, D.9392
	testl	%eax, %eax	# D.9392
	je	.L267	#,
	.loc 1 920 0
	movl	$0, -28(%rbp)	#, x
	jmp	.L268	#
.L269:
	.loc 1 921 0 discriminator 2
	movl	-28(%rbp), %eax	# x, tmp450
	cltq
	addq	$56, %rax	#, tmp451
	leaq	0(,%rax,4), %rdx	#, tmp452
	movq	-24(%rbp), %rax	# hmm, tmp453
	addq	%rdx, %rax	# tmp452, D.9399
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.9399,
	call	byteswap	#
	.loc 1 920 0 discriminator 2
	addl	$1, -28(%rbp)	#, x
.L268:
	.loc 1 920 0 is_stmt 0 discriminator 1
	movl	Alphabet_size(%rip), %eax	# Alphabet_size, Alphabet_size.61
	cmpl	%eax, -28(%rbp)	# Alphabet_size.61, x
	jl	.L269	#,
	.loc 1 922 0 is_stmt 1
	movq	-24(%rbp), %rax	# hmm, tmp454
	addq	$304, %rax	#, D.9399
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.9399,
	call	byteswap	#
	.loc 1 923 0
	movq	-24(%rbp), %rax	# hmm, tmp455
	addq	$168, %rax	#, D.9399
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.9399,
	call	byteswap	#
	.loc 1 925 0
	movl	$1, -32(%rbp)	#, k
	jmp	.L270	#
.L279:
	.loc 1 927 0
	movl	$0, -28(%rbp)	#, x
	jmp	.L271	#
.L272:
	.loc 1 928 0 discriminator 2
	movq	-24(%rbp), %rax	# hmm, tmp456
	movq	152(%rax), %rax	# hmm_25->mat, D.9402
	movl	-32(%rbp), %edx	# k, tmp457
	movslq	%edx, %rdx	# tmp457, D.9394
	salq	$3, %rdx	#, D.9394
	addq	%rdx, %rax	# D.9394, D.9402
	movq	(%rax), %rax	# *_248, D.9399
	movl	-28(%rbp), %edx	# x, tmp458
	movslq	%edx, %rdx	# tmp458, D.9394
	salq	$2, %rdx	#, D.9394
	addq	%rdx, %rax	# D.9394, D.9397
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.9397,
	call	byteswap	#
	.loc 1 927 0 discriminator 2
	addl	$1, -28(%rbp)	#, x
.L271:
	.loc 1 927 0 is_stmt 0 discriminator 1
	movl	Alphabet_size(%rip), %eax	# Alphabet_size, Alphabet_size.62
	cmpl	%eax, -28(%rbp)	# Alphabet_size.62, x
	jl	.L272	#,
	.loc 1 929 0 is_stmt 1
	movq	-24(%rbp), %rax	# hmm, tmp459
	movl	136(%rax), %eax	# hmm_25->M, D.9392
	cmpl	-32(%rbp), %eax	# k, D.9392
	jle	.L273	#,
	.loc 1 930 0
	movl	$0, -28(%rbp)	#, x
	jmp	.L274	#
.L275:
	.loc 1 931 0 discriminator 2
	movq	-24(%rbp), %rax	# hmm, tmp460
	movq	160(%rax), %rax	# hmm_25->ins, D.9402
	movl	-32(%rbp), %edx	# k, tmp461
	movslq	%edx, %rdx	# tmp461, D.9394
	salq	$3, %rdx	#, D.9394
	addq	%rdx, %rax	# D.9394, D.9402
	movq	(%rax), %rax	# *_260, D.9399
	movl	-28(%rbp), %edx	# x, tmp462
	movslq	%edx, %rdx	# tmp462, D.9394
	salq	$2, %rdx	#, D.9394
	addq	%rdx, %rax	# D.9394, D.9397
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.9397,
	call	byteswap	#
	.loc 1 930 0 discriminator 2
	addl	$1, -28(%rbp)	#, x
.L274:
	.loc 1 930 0 is_stmt 0 discriminator 1
	movl	Alphabet_size(%rip), %eax	# Alphabet_size, Alphabet_size.63
	cmpl	%eax, -28(%rbp)	# Alphabet_size.63, x
	jl	.L275	#,
.L273:
	.loc 1 932 0 is_stmt 1
	movq	-24(%rbp), %rax	# hmm, tmp463
	movq	208(%rax), %rax	# hmm_25->begin, D.9399
	movl	-32(%rbp), %edx	# k, tmp464
	movslq	%edx, %rdx	# tmp464, D.9394
	salq	$2, %rdx	#, D.9394
	addq	%rdx, %rax	# D.9394, D.9397
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.9397,
	call	byteswap	#
	.loc 1 933 0
	movq	-24(%rbp), %rax	# hmm, tmp465
	movq	216(%rax), %rax	# hmm_25->end, D.9399
	movl	-32(%rbp), %edx	# k, tmp466
	movslq	%edx, %rdx	# tmp466, D.9394
	salq	$2, %rdx	#, D.9394
	addq	%rdx, %rax	# D.9394, D.9397
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.9397,
	call	byteswap	#
	.loc 1 934 0
	movq	-24(%rbp), %rax	# hmm, tmp467
	movl	136(%rax), %eax	# hmm_25->M, D.9392
	cmpl	-32(%rbp), %eax	# k, D.9392
	jle	.L276	#,
	.loc 1 935 0
	movl	$0, -28(%rbp)	#, x
	jmp	.L277	#
.L278:
	.loc 1 936 0 discriminator 2
	movq	-24(%rbp), %rax	# hmm, tmp468
	movq	144(%rax), %rax	# hmm_25->t, D.9402
	movl	-32(%rbp), %edx	# k, tmp469
	movslq	%edx, %rdx	# tmp469, D.9394
	salq	$3, %rdx	#, D.9394
	addq	%rdx, %rax	# D.9394, D.9402
	movq	(%rax), %rax	# *_279, D.9399
	movl	-28(%rbp), %edx	# x, tmp470
	movslq	%edx, %rdx	# tmp470, D.9394
	salq	$2, %rdx	#, D.9394
	addq	%rdx, %rax	# D.9394, D.9397
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.9397,
	call	byteswap	#
	.loc 1 935 0 discriminator 2
	addl	$1, -28(%rbp)	#, x
.L277:
	.loc 1 935 0 is_stmt 0 discriminator 1
	cmpl	$6, -28(%rbp)	#, x
	jle	.L278	#,
.L276:
	.loc 1 925 0 is_stmt 1
	addl	$1, -32(%rbp)	#, k
.L270:
	.loc 1 925 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# hmm, tmp471
	movl	136(%rax), %eax	# hmm_25->M, D.9392
	cmpl	-32(%rbp), %eax	# k, D.9392
	jge	.L279	#,
.L267:
	.loc 1 943 0 is_stmt 1
	movq	-24(%rbp), %rax	# hmm, tmp472
	movl	456(%rax), %eax	# hmm_25->flags, D.9392
	orl	$32, %eax	#, D.9392
	movl	%eax, %edx	# D.9392, D.9392
	movq	-24(%rbp), %rax	# hmm, tmp473
	movl	%edx, 456(%rax)	# D.9392, hmm_25->flags
	.loc 1 944 0
	movq	-24(%rbp), %rax	# hmm, tmp474
	movl	456(%rax), %eax	# hmm_25->flags, D.9392
	andl	$-2, %eax	#, D.9392
	movl	%eax, %edx	# D.9392, D.9392
	movq	-24(%rbp), %rax	# hmm, tmp475
	movl	%edx, 456(%rax)	# D.9392, hmm_25->flags
	.loc 1 945 0
	movq	-64(%rbp), %rax	# ret_hmm, tmp476
	movq	-24(%rbp), %rdx	# hmm, tmp477
	movq	%rdx, (%rax)	# tmp477, *ret_hmm_290(D)
	.loc 1 946 0
	movl	$1, %eax	#, D.9392
	jmp	.L281	#
.L211:
	.loc 1 949 0
	cmpq	$0, -24(%rbp)	#, hmm
	je	.L280	#,
	.loc 1 949 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax	# hmm, tmp478
	movq	%rax, %rdi	# tmp478,
	call	FreePlan7	#
.L280:
	.loc 1 950 0 is_stmt 1
	movq	-64(%rbp), %rax	# ret_hmm, tmp479
	movq	$0, (%rax)	#, *ret_hmm_290(D)
	.loc 1 951 0
	movl	$1, %eax	#, D.9392
.L281:
	.loc 1 952 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	read_bin20hmm, .-read_bin20hmm
	.section	.rodata
.LC83:
	.string	"null"
	.align 8
.LC87:
	.string	"[converted from an old Plan9 HMM]"
	.text
	.type	read_asc19hmm, @function
read_asc19hmm:
.LFB12:
	.loc 1 969 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$616, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -600(%rbp)	# hmmfp, hmmfp
	movq	%rsi, -608(%rbp)	# ret_hmm, ret_hmm
	.loc 1 969 0
	movq	%fs:40, %rax	#, tmp390
	movq	%rax, -24(%rbp)	# tmp390, D.9412
	xorl	%eax, %eax	# tmp390
	.loc 1 979 0
	movq	$0, -568(%rbp)	#, hmm
	.loc 1 980 0
	movq	-600(%rbp), %rax	# hmmfp, tmp211
	movq	(%rax), %rax	# hmmfp_15(D)->f, tmp212
	movq	%rax, -560(%rbp)	# tmp212, fp
	.loc 1 981 0
	movq	-560(%rbp), %rax	# fp, tmp213
	movq	%rax, %rdi	# tmp213,
	call	feof	#
	testl	%eax, %eax	# D.9403
	jne	.L283	#,
	.loc 1 981 0 is_stmt 0 discriminator 2
	movq	-560(%rbp), %rdx	# fp, tmp214
	leaq	-544(%rbp), %rax	#, tmp215
	movl	$512, %esi	#,
	movq	%rax, %rdi	# tmp215,
	call	fgets	#
	testq	%rax, %rax	# D.9404
	jne	.L284	#,
.L283:
	.loc 1 981 0 discriminator 1
	movl	$0, %eax	#, D.9403
	jmp	.L363	#
.L284:
	.loc 1 982 0 is_stmt 1
	leaq	-544(%rbp), %rax	#, tmp216
	movl	$10, %edx	#,
	movl	$.LC7, %esi	#,
	movq	%rax, %rdi	# tmp216,
	call	strncmp	#
	testl	%eax, %eax	# D.9403
	je	.L286	#,
	.loc 1 982 0 is_stmt 0 discriminator 1
	jmp	.L287	#
.L286:
	.loc 1 984 0 is_stmt 1
	call	AllocPlan7Shell	#
	movq	%rax, -568(%rbp)	# tmp217, hmm
	.loc 1 986 0
	movq	-560(%rbp), %rax	# fp, tmp218
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp218,
	call	Getword	#
	movq	%rax, -552(%rbp)	# tmp219, s
	cmpq	$0, -552(%rbp)	#, s
	jne	.L288	#,
	.loc 1 986 0 is_stmt 0 discriminator 1
	jmp	.L287	#
.L288:
	.loc 1 986 0 discriminator 2
	movq	-552(%rbp), %rax	# s, tmp220
	movq	%rax, %rdi	# tmp220,
	call	atoi	#
	movl	%eax, -572(%rbp)	# tmp221, M
	.loc 1 987 0 is_stmt 1 discriminator 2
	movq	-560(%rbp), %rax	# fp, tmp222
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp222,
	call	Getword	#
	movq	%rax, -552(%rbp)	# tmp223, s
	cmpq	$0, -552(%rbp)	#, s
	jne	.L289	#,
	.loc 1 987 0 is_stmt 0 discriminator 1
	jmp	.L287	#
.L289:
	.loc 1 988 0 is_stmt 1
	movq	-560(%rbp), %rax	# fp, tmp224
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp224,
	call	Getword	#
	movq	%rax, -552(%rbp)	# tmp225, s
	cmpq	$0, -552(%rbp)	#, s
	jne	.L290	#,
	.loc 1 988 0 is_stmt 0 discriminator 1
	jmp	.L287	#
.L290:
	.loc 1 988 0 discriminator 2
	movq	-552(%rbp), %rdx	# s, tmp226
	movq	-568(%rbp), %rax	# hmm, tmp227
	movq	%rdx, %rsi	# tmp226,
	movq	%rax, %rdi	# tmp227,
	call	Plan7SetName	#
	.loc 1 989 0 is_stmt 1 discriminator 2
	movq	-560(%rbp), %rax	# fp, tmp228
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp228,
	call	Getword	#
	movq	%rax, -552(%rbp)	# tmp229, s
	cmpq	$0, -552(%rbp)	#, s
	jne	.L291	#,
	.loc 1 989 0 is_stmt 0 discriminator 1
	jmp	.L287	#
.L291:
	.loc 1 990 0 is_stmt 1
	movq	-552(%rbp), %rax	# s, tmp230
	movq	%rax, %rdi	# tmp230,
	call	s2upper	#
	.loc 1 991 0
	movq	-552(%rbp), %rax	# s, tmp231
	movl	$.LC63, %esi	#,
	movq	%rax, %rdi	# tmp231,
	call	strcmp	#
	testl	%eax, %eax	# D.9403
	jne	.L292	#,
	.loc 1 991 0 is_stmt 0 discriminator 1
	movl	$3, -576(%rbp)	#, atype
	jmp	.L293	#
.L292:
	.loc 1 992 0 is_stmt 1
	movq	-552(%rbp), %rax	# s, tmp232
	movl	$.LC64, %esi	#,
	movq	%rax, %rdi	# tmp232,
	call	strcmp	#
	testl	%eax, %eax	# D.9403
	jne	.L294	#,
	.loc 1 992 0 is_stmt 0 discriminator 1
	movl	$2, -576(%rbp)	#, atype
	jmp	.L293	#
.L294:
	.loc 1 993 0 is_stmt 1
	jmp	.L287	#
.L293:
	.loc 1 995 0
	movl	Alphabet_type(%rip), %eax	# Alphabet_type, Alphabet_type.64
	testl	%eax, %eax	# Alphabet_type.64
	jne	.L295	#,
	.loc 1 995 0 is_stmt 0 discriminator 1
	movl	-576(%rbp), %eax	# atype, tmp233
	movl	%eax, %edi	# tmp233,
	call	SetAlphabet	#
	jmp	.L296	#
.L295:
	.loc 1 996 0 is_stmt 1
	movl	Alphabet_type(%rip), %eax	# Alphabet_type, Alphabet_type.65
	cmpl	%eax, -576(%rbp)	# Alphabet_type.65, atype
	je	.L296	#,
	.loc 1 997 0
	movl	-576(%rbp), %eax	# atype, tmp234
	movl	%eax, %edi	# tmp234,
	call	AlphabetType2String	#
	movq	%rax, %rbx	#, D.9404
	movl	Alphabet_type(%rip), %eax	# Alphabet_type, Alphabet_type.66
	movl	%eax, %edi	# Alphabet_type.66,
	call	AlphabetType2String	#
	movq	%rbx, %rdx	# D.9404,
	movq	%rax, %rsi	# D.9404,
	movl	$.LC65, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L296:
	.loc 1 1000 0
	movq	-560(%rbp), %rax	# fp, tmp235
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp235,
	call	Getword	#
	movq	%rax, -552(%rbp)	# tmp236, s
	cmpq	$0, -552(%rbp)	#, s
	jne	.L297	#,
	.loc 1 1000 0 is_stmt 0 discriminator 1
	jmp	.L287	#
.L297:
	.loc 1 1001 0 is_stmt 1
	movl	Alphabet_size(%rip), %eax	# Alphabet_size, Alphabet_size.67
	movslq	%eax, %rdx	# Alphabet_size.67, D.9405
	movq	-552(%rbp), %rax	# s, tmp237
	movl	$Alphabet, %esi	#,
	movq	%rax, %rdi	# tmp237,
	call	strncmp	#
	testl	%eax, %eax	# D.9403
	je	.L298	#,
	.loc 1 1001 0 is_stmt 0 discriminator 1
	jmp	.L287	#
.L298:
	.loc 1 1004 0 is_stmt 1
	movq	-560(%rbp), %rax	# fp, tmp238
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp238,
	call	Getword	#
	movq	%rax, -552(%rbp)	# tmp239, s
	cmpq	$0, -552(%rbp)	#, s
	jne	.L299	#,
	.loc 1 1004 0 is_stmt 0 discriminator 1
	jmp	.L287	#
.L299:
	.loc 1 1005 0 is_stmt 1
	movq	-552(%rbp), %rax	# s, tmp240
	movl	$.LC20, %esi	#,
	movq	%rax, %rdi	# tmp240,
	call	strcmp	#
	testl	%eax, %eax	# D.9403
	jne	.L300	#,
	.loc 1 1005 0 is_stmt 0 discriminator 1
	movq	-568(%rbp), %rax	# hmm, tmp241
	movl	456(%rax), %eax	# hmm_20->flags, D.9403
	orl	$4, %eax	#, D.9403
	movl	%eax, %edx	# D.9403, D.9403
	movq	-568(%rbp), %rax	# hmm, tmp242
	movl	%edx, 456(%rax)	# D.9403, hmm_20->flags
.L300:
	.loc 1 1006 0 is_stmt 1
	movq	-560(%rbp), %rax	# fp, tmp243
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp243,
	call	Getword	#
	movq	%rax, -552(%rbp)	# tmp244, s
	cmpq	$0, -552(%rbp)	#, s
	jne	.L301	#,
	.loc 1 1006 0 is_stmt 0 discriminator 1
	jmp	.L287	#
.L301:
	.loc 1 1007 0 is_stmt 1
	movq	-552(%rbp), %rax	# s, tmp245
	movl	$.LC20, %esi	#,
	movq	%rax, %rdi	# tmp245,
	call	strcmp	#
	testl	%eax, %eax	# D.9403
	jne	.L302	#,
	.loc 1 1007 0 is_stmt 0 discriminator 1
	movq	-568(%rbp), %rax	# hmm, tmp246
	movl	456(%rax), %eax	# hmm_20->flags, D.9403
	orl	$8, %eax	#, D.9403
	movl	%eax, %edx	# D.9403, D.9403
	movq	-568(%rbp), %rax	# hmm, tmp247
	movl	%edx, 456(%rax)	# D.9403, hmm_20->flags
.L302:
	.loc 1 1010 0 is_stmt 1
	movq	-560(%rbp), %rax	# fp, tmp248
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp248,
	call	Getword	#
	movq	%rax, -552(%rbp)	# tmp249, s
	cmpq	$0, -552(%rbp)	#, s
	jne	.L303	#,
	.loc 1 1010 0 is_stmt 0 discriminator 1
	jmp	.L287	#
.L303:
	.loc 1 1011 0 is_stmt 1
	movq	-552(%rbp), %rax	# s, tmp250
	movl	$.LC83, %esi	#,
	movq	%rax, %rdi	# tmp250,
	call	strcmp	#
	testl	%eax, %eax	# D.9403
	je	.L304	#,
	.loc 1 1011 0 is_stmt 0 discriminator 1
	jmp	.L287	#
.L304:
	.loc 1 1012 0 is_stmt 1
	movl	$0, -580(%rbp)	#, x
	jmp	.L305	#
.L307:
	.loc 1 1013 0
	movq	-560(%rbp), %rax	# fp, tmp251
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp251,
	call	Getword	#
	movq	%rax, -552(%rbp)	# tmp252, s
	cmpq	$0, -552(%rbp)	#, s
	jne	.L306	#,
	.loc 1 1013 0 is_stmt 0 discriminator 1
	jmp	.L287	#
.L306:
	.loc 1 1014 0 is_stmt 1
	movq	-552(%rbp), %rax	# s, tmp253
	movss	.LC33(%rip), %xmm0	#,
	movq	%rax, %rdi	# tmp253,
	call	ascii2prob	#
	movss	%xmm0, -612(%rbp)	#, %sfp
	movl	-612(%rbp), %eax	# %sfp, D.9406
	movq	-568(%rbp), %rdx	# hmm, tmp254
	movl	-580(%rbp), %ecx	# x, tmp256
	movslq	%ecx, %rcx	# tmp256, tmp255
	addq	$56, %rcx	#, tmp257
	movl	%eax, (%rdx,%rcx,4)	# D.9406, hmm_20->null
	.loc 1 1012 0
	addl	$1, -580(%rbp)	#, x
.L305:
	.loc 1 1012 0 is_stmt 0 discriminator 1
	movl	Alphabet_size(%rip), %eax	# Alphabet_size, Alphabet_size.68
	cmpl	%eax, -580(%rbp)	# Alphabet_size.68, x
	jl	.L307	#,
	.loc 1 1016 0 is_stmt 1
	movl	Alphabet_type(%rip), %eax	# Alphabet_type, Alphabet_type.70
	cmpl	$3, %eax	#, Alphabet_type.70
	jne	.L308	#,
	.loc 1 1016 0 is_stmt 0 discriminator 1
	movl	.LC84(%rip), %eax	#, iftmp.69
	jmp	.L309	#
.L308:
	.loc 1 1016 0 discriminator 2
	movl	.LC85(%rip), %eax	#, iftmp.69
.L309:
	.loc 1 1016 0 discriminator 3
	movq	-568(%rbp), %rdx	# hmm, tmp258
	movl	%eax, 304(%rdx)	# iftmp.69, hmm_20->p1
	.loc 1 1020 0 is_stmt 1 discriminator 3
	movq	-600(%rbp), %rax	# hmmfp, tmp259
	movq	(%rax), %rax	# hmmfp_15(D)->f, D.9407
	movq	%rax, %rdi	# D.9407,
	call	feof	#
	testl	%eax, %eax	# D.9403
	je	.L310	#,
	.loc 1 1020 0 is_stmt 0 discriminator 1
	jmp	.L287	#
.L310:
	.loc 1 1021 0 is_stmt 1
	cmpl	$0, -572(%rbp)	#, M
	jg	.L311	#,
	.loc 1 1021 0 is_stmt 0 discriminator 1
	jmp	.L287	#
.L311:
	.loc 1 1022 0 is_stmt 1
	movq	-568(%rbp), %rax	# hmm, tmp260
	movq	(%rax), %rax	# hmm_20->name, D.9404
	testq	%rax, %rax	# D.9404
	jne	.L312	#,
	.loc 1 1022 0 is_stmt 0 discriminator 1
	jmp	.L287	#
.L312:
	.loc 1 1023 0 is_stmt 1
	movl	Alphabet_type(%rip), %eax	# Alphabet_type, Alphabet_type.71
	testl	%eax, %eax	# Alphabet_type.71
	jne	.L313	#,
	.loc 1 1023 0 is_stmt 0 discriminator 1
	jmp	.L287	#
.L313:
	.loc 1 1028 0 is_stmt 1
	movl	-572(%rbp), %edx	# M, tmp261
	movq	-568(%rbp), %rax	# hmm, tmp262
	movl	%edx, %esi	# tmp261,
	movq	%rax, %rdi	# tmp262,
	call	AllocPlan7Body	#
	.loc 1 1029 0
	movq	-568(%rbp), %rax	# hmm, tmp263
	movq	%rax, %rdi	# tmp263,
	call	ZeroPlan7	#
	.loc 1 1030 0
	movq	-568(%rbp), %rax	# hmm, tmp264
	movq	%rax, %rdi	# tmp264,
	call	Plan7LSConfig	#
	.loc 1 1037 0
	movq	-560(%rbp), %rax	# fp, tmp265
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp265,
	call	Getword	#
	movq	%rax, -552(%rbp)	# tmp266, s
	cmpq	$0, -552(%rbp)	#, s
	jne	.L314	#,
	.loc 1 1037 0 is_stmt 0 discriminator 1
	jmp	.L287	#
.L314:
	.loc 1 1038 0 is_stmt 1
	movl	$0, -580(%rbp)	#, x
	jmp	.L315	#
.L317:
	.loc 1 1039 0
	movq	-560(%rbp), %rax	# fp, tmp267
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp267,
	call	Getword	#
	movq	%rax, -552(%rbp)	# tmp268, s
	cmpq	$0, -552(%rbp)	#, s
	jne	.L316	#,
	.loc 1 1039 0 is_stmt 0 discriminator 1
	jmp	.L287	#
.L316:
	.loc 1 1038 0 is_stmt 1
	addl	$1, -580(%rbp)	#, x
.L315:
	.loc 1 1038 0 is_stmt 0 discriminator 1
	movl	Alphabet_size(%rip), %eax	# Alphabet_size, Alphabet_size.72
	cmpl	%eax, -580(%rbp)	# Alphabet_size.72, x
	jl	.L317	#,
	.loc 1 1040 0 is_stmt 1
	movq	-560(%rbp), %rax	# fp, tmp269
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp269,
	call	Getword	#
	movq	%rax, -552(%rbp)	# tmp270, s
	cmpq	$0, -552(%rbp)	#, s
	jne	.L318	#,
	.loc 1 1040 0 is_stmt 0 discriminator 1
	jmp	.L287	#
.L318:
	.loc 1 1041 0 is_stmt 1
	movq	-568(%rbp), %rax	# hmm, tmp271
	movq	208(%rax), %rax	# hmm_20->begin, D.9408
	leaq	4(%rax), %rbx	#, D.9408
	movq	-552(%rbp), %rax	# s, tmp272
	movss	.LC33(%rip), %xmm0	#,
	movq	%rax, %rdi	# tmp272,
	call	ascii2prob	#
	movss	%xmm0, -612(%rbp)	#, %sfp
	movl	-612(%rbp), %eax	# %sfp, D.9406
	movl	%eax, (%rbx)	# D.9406, *_68
	.loc 1 1042 0
	movq	-560(%rbp), %rax	# fp, tmp273
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp273,
	call	Getword	#
	movq	%rax, -552(%rbp)	# tmp274, s
	cmpq	$0, -552(%rbp)	#, s
	jne	.L319	#,
	.loc 1 1042 0 is_stmt 0 discriminator 1
	jmp	.L287	#
.L319:
	.loc 1 1043 0 is_stmt 1
	movq	-552(%rbp), %rax	# s, tmp275
	movss	.LC33(%rip), %xmm0	#,
	movq	%rax, %rdi	# tmp275,
	call	ascii2prob	#
	movss	%xmm0, -612(%rbp)	#, %sfp
	movl	-612(%rbp), %eax	# %sfp, D.9406
	movq	-568(%rbp), %rdx	# hmm, tmp276
	movl	%eax, 168(%rdx)	# D.9406, hmm_20->tbd1
	.loc 1 1045 0
	movq	-568(%rbp), %rax	# hmm, tmp277
	movq	208(%rax), %rax	# hmm_20->begin, D.9408
	leaq	4(%rax), %rdx	#, D.9408
	movq	-568(%rbp), %rax	# hmm, tmp278
	movq	208(%rax), %rax	# hmm_20->begin, D.9408
	addq	$4, %rax	#, D.9408
	movss	(%rax), %xmm1	# *_75, D.9406
	movq	-568(%rbp), %rax	# hmm, tmp279
	movq	208(%rax), %rax	# hmm_20->begin, D.9408
	addq	$4, %rax	#, D.9408
	movss	(%rax), %xmm2	# *_78, D.9406
	movq	-568(%rbp), %rax	# hmm, tmp280
	movss	168(%rax), %xmm0	# hmm_20->tbd1, D.9406
	addss	%xmm2, %xmm0	# D.9406, D.9406
	divss	%xmm0, %xmm1	# D.9406, D.9406
	movaps	%xmm1, %xmm0	# D.9406, D.9406
	movss	%xmm0, (%rdx)	# D.9406, *_73
	.loc 1 1046 0
	movq	-568(%rbp), %rax	# hmm, tmp281
	movss	168(%rax), %xmm1	# hmm_20->tbd1, D.9406
	movq	-568(%rbp), %rax	# hmm, tmp282
	movq	208(%rax), %rax	# hmm_20->begin, D.9408
	addq	$4, %rax	#, D.9408
	movss	(%rax), %xmm2	# *_85, D.9406
	movq	-568(%rbp), %rax	# hmm, tmp283
	movss	168(%rax), %xmm0	# hmm_20->tbd1, D.9406
	addss	%xmm2, %xmm0	# D.9406, D.9406
	divss	%xmm0, %xmm1	# D.9406, D.9406
	movaps	%xmm1, %xmm0	# D.9406, D.9406
	movq	-568(%rbp), %rax	# hmm, tmp284
	movss	%xmm0, 168(%rax)	# D.9406, hmm_20->tbd1
	.loc 1 1048 0
	movl	$0, -580(%rbp)	#, x
	jmp	.L320	#
.L322:
	.loc 1 1049 0
	movq	-560(%rbp), %rax	# fp, tmp285
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp285,
	call	Getword	#
	movq	%rax, -552(%rbp)	# tmp286, s
	cmpq	$0, -552(%rbp)	#, s
	jne	.L321	#,
	.loc 1 1049 0 is_stmt 0 discriminator 1
	jmp	.L287	#
.L321:
	.loc 1 1048 0 is_stmt 1
	addl	$1, -580(%rbp)	#, x
.L320:
	.loc 1 1048 0 is_stmt 0 discriminator 1
	cmpl	$6, -580(%rbp)	#, x
	jle	.L322	#,
	.loc 1 1050 0 is_stmt 1
	movq	-560(%rbp), %rax	# fp, tmp287
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp287,
	call	Getword	#
	movq	%rax, -552(%rbp)	# tmp288, s
	cmpq	$0, -552(%rbp)	#, s
	jne	.L323	#,
	.loc 1 1050 0 is_stmt 0 discriminator 1
	jmp	.L287	#
.L323:
	.loc 1 1051 0 is_stmt 1
	movq	-560(%rbp), %rax	# fp, tmp289
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp289,
	call	Getword	#
	movq	%rax, -552(%rbp)	# tmp290, s
	cmpq	$0, -552(%rbp)	#, s
	jne	.L324	#,
	.loc 1 1051 0 is_stmt 0 discriminator 1
	jmp	.L287	#
.L324:
	.loc 1 1054 0 is_stmt 1
	movl	$1, -584(%rbp)	#, k
	jmp	.L325	#
.L354:
	.loc 1 1057 0
	movq	-560(%rbp), %rax	# fp, tmp291
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp291,
	call	Getword	#
	movq	%rax, -552(%rbp)	# tmp292, s
	cmpq	$0, -552(%rbp)	#, s
	jne	.L326	#,
	.loc 1 1057 0 is_stmt 0 discriminator 1
	jmp	.L287	#
.L326:
	.loc 1 1059 0 is_stmt 1
	movl	$0, -580(%rbp)	#, x
	jmp	.L327	#
.L329:
	.loc 1 1060 0
	movq	-560(%rbp), %rax	# fp, tmp293
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp293,
	call	Getword	#
	movq	%rax, -552(%rbp)	# tmp294, s
	cmpq	$0, -552(%rbp)	#, s
	jne	.L328	#,
	.loc 1 1060 0 is_stmt 0 discriminator 1
	jmp	.L287	#
.L328:
	.loc 1 1061 0 is_stmt 1
	movq	-568(%rbp), %rax	# hmm, tmp295
	movq	152(%rax), %rax	# hmm_20->mat, D.9409
	movl	-584(%rbp), %edx	# k, tmp296
	movslq	%edx, %rdx	# tmp296, D.9405
	salq	$3, %rdx	#, D.9405
	addq	%rdx, %rax	# D.9405, D.9409
	movq	(%rax), %rax	# *_104, D.9408
	movl	-580(%rbp), %edx	# x, tmp297
	movslq	%edx, %rdx	# tmp297, D.9405
	salq	$2, %rdx	#, D.9405
	leaq	(%rax,%rdx), %rbx	#, D.9408
	movq	-568(%rbp), %rax	# hmm, tmp298
	movl	-580(%rbp), %edx	# x, tmp300
	movslq	%edx, %rdx	# tmp300, tmp299
	addq	$56, %rdx	#, tmp301
	movl	(%rax,%rdx,4), %eax	# hmm_20->null, D.9406
	movq	-552(%rbp), %rdx	# s, tmp302
	movl	%eax, -612(%rbp)	# D.9406, %sfp
	movss	-612(%rbp), %xmm0	# %sfp,
	movq	%rdx, %rdi	# tmp302,
	call	ascii2prob	#
	movss	%xmm0, -612(%rbp)	#, %sfp
	movl	-612(%rbp), %eax	# %sfp, D.9406
	movl	%eax, (%rbx)	# D.9406, *_108
	.loc 1 1059 0
	addl	$1, -580(%rbp)	#, x
.L327:
	.loc 1 1059 0 is_stmt 0 discriminator 1
	movl	Alphabet_size(%rip), %eax	# Alphabet_size, Alphabet_size.73
	cmpl	%eax, -580(%rbp)	# Alphabet_size.73, x
	jl	.L329	#,
	.loc 1 1064 0 is_stmt 1
	movq	-560(%rbp), %rax	# fp, tmp303
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp303,
	call	Getword	#
	movq	%rax, -552(%rbp)	# tmp304, s
	cmpq	$0, -552(%rbp)	#, s
	jne	.L330	#,
	.loc 1 1064 0 is_stmt 0 discriminator 1
	jmp	.L287	#
.L330:
	.loc 1 1065 0 is_stmt 1
	movq	-568(%rbp), %rax	# hmm, tmp305
	movl	136(%rax), %eax	# hmm_20->M, D.9403
	cmpl	-584(%rbp), %eax	# k, D.9403
	jle	.L331	#,
	.loc 1 1065 0 is_stmt 0 discriminator 1
	movq	-568(%rbp), %rax	# hmm, tmp306
	movq	144(%rax), %rax	# hmm_20->t, D.9409
	movl	-584(%rbp), %edx	# k, tmp307
	movslq	%edx, %rdx	# tmp307, D.9405
	salq	$3, %rdx	#, D.9405
	addq	%rdx, %rax	# D.9405, D.9409
	movq	(%rax), %rbx	# *_117, D.9408
	movq	-552(%rbp), %rax	# s, tmp308
	movss	.LC33(%rip), %xmm0	#,
	movq	%rax, %rdi	# tmp308,
	call	ascii2prob	#
	movss	%xmm0, -612(%rbp)	#, %sfp
	movl	-612(%rbp), %eax	# %sfp, D.9406
	movl	%eax, (%rbx)	# D.9406, *_118
.L331:
	.loc 1 1066 0 is_stmt 1
	movq	-560(%rbp), %rax	# fp, tmp309
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp309,
	call	Getword	#
	movq	%rax, -552(%rbp)	# tmp310, s
	cmpq	$0, -552(%rbp)	#, s
	jne	.L332	#,
	.loc 1 1066 0 is_stmt 0 discriminator 1
	jmp	.L287	#
.L332:
	.loc 1 1067 0 is_stmt 1
	movq	-568(%rbp), %rax	# hmm, tmp311
	movl	136(%rax), %eax	# hmm_20->M, D.9403
	cmpl	-584(%rbp), %eax	# k, D.9403
	jle	.L333	#,
	.loc 1 1067 0 is_stmt 0 discriminator 1
	movq	-568(%rbp), %rax	# hmm, tmp312
	movq	144(%rax), %rax	# hmm_20->t, D.9409
	movl	-584(%rbp), %edx	# k, tmp313
	movslq	%edx, %rdx	# tmp313, D.9405
	salq	$3, %rdx	#, D.9405
	addq	%rdx, %rax	# D.9405, D.9409
	movq	(%rax), %rax	# *_125, D.9408
	leaq	8(%rax), %rbx	#, D.9408
	movq	-568(%rbp), %rax	# hmm, tmp314
	movl	136(%rax), %eax	# hmm_20->M, D.9403
	cmpl	-584(%rbp), %eax	# k, D.9403
	je	.L334	#,
	movq	-552(%rbp), %rax	# s, tmp315
	movss	.LC33(%rip), %xmm0	#,
	movq	%rax, %rdi	# tmp315,
	call	ascii2prob	#
	movss	%xmm0, -612(%rbp)	#, %sfp
	movl	-612(%rbp), %eax	# %sfp, iftmp.74
	jmp	.L335	#
.L334:
	.loc 1 1067 0 discriminator 2
	movl	.LC86(%rip), %eax	#, iftmp.74
.L335:
	.loc 1 1067 0 discriminator 3
	movl	%eax, (%rbx)	# iftmp.74, *_127
.L333:
	.loc 1 1068 0 is_stmt 1
	movq	-560(%rbp), %rax	# fp, tmp316
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp316,
	call	Getword	#
	movq	%rax, -552(%rbp)	# tmp317, s
	cmpq	$0, -552(%rbp)	#, s
	jne	.L336	#,
	.loc 1 1068 0 is_stmt 0 discriminator 1
	jmp	.L287	#
.L336:
	.loc 1 1069 0 is_stmt 1
	movq	-568(%rbp), %rax	# hmm, tmp318
	movl	136(%rax), %eax	# hmm_20->M, D.9403
	cmpl	-584(%rbp), %eax	# k, D.9403
	jle	.L337	#,
	.loc 1 1069 0 is_stmt 0 discriminator 1
	movq	-568(%rbp), %rax	# hmm, tmp319
	movq	144(%rax), %rax	# hmm_20->t, D.9409
	movl	-584(%rbp), %edx	# k, tmp320
	movslq	%edx, %rdx	# tmp320, D.9405
	salq	$3, %rdx	#, D.9405
	addq	%rdx, %rax	# D.9405, D.9409
	movq	(%rax), %rax	# *_136, D.9408
	leaq	4(%rax), %rbx	#, D.9408
	movq	-552(%rbp), %rax	# s, tmp321
	movss	.LC33(%rip), %xmm0	#,
	movq	%rax, %rdi	# tmp321,
	call	ascii2prob	#
	movss	%xmm0, -612(%rbp)	#, %sfp
	movl	-612(%rbp), %eax	# %sfp, D.9406
	movl	%eax, (%rbx)	# D.9406, *_138
.L337:
	.loc 1 1071 0 is_stmt 1
	movq	-560(%rbp), %rax	# fp, tmp322
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp322,
	call	Getword	#
	movq	%rax, -552(%rbp)	# tmp323, s
	cmpq	$0, -552(%rbp)	#, s
	jne	.L338	#,
	.loc 1 1071 0 is_stmt 0 discriminator 1
	jmp	.L287	#
.L338:
	.loc 1 1072 0 is_stmt 1
	movq	-568(%rbp), %rax	# hmm, tmp324
	movl	136(%rax), %eax	# hmm_20->M, D.9403
	cmpl	-584(%rbp), %eax	# k, D.9403
	jle	.L339	#,
	.loc 1 1072 0 is_stmt 0 discriminator 1
	movq	-568(%rbp), %rax	# hmm, tmp325
	movq	144(%rax), %rax	# hmm_20->t, D.9409
	movl	-584(%rbp), %edx	# k, tmp326
	movslq	%edx, %rdx	# tmp326, D.9405
	salq	$3, %rdx	#, D.9405
	addq	%rdx, %rax	# D.9405, D.9409
	movq	(%rax), %rax	# *_145, D.9408
	leaq	20(%rax), %rbx	#, D.9408
	movq	-552(%rbp), %rax	# s, tmp327
	movss	.LC33(%rip), %xmm0	#,
	movq	%rax, %rdi	# tmp327,
	call	ascii2prob	#
	movss	%xmm0, -612(%rbp)	#, %sfp
	movl	-612(%rbp), %eax	# %sfp, D.9406
	movl	%eax, (%rbx)	# D.9406, *_147
.L339:
	.loc 1 1073 0 is_stmt 1
	movq	-560(%rbp), %rax	# fp, tmp328
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp328,
	call	Getword	#
	movq	%rax, -552(%rbp)	# tmp329, s
	cmpq	$0, -552(%rbp)	#, s
	jne	.L340	#,
	.loc 1 1073 0 is_stmt 0 discriminator 1
	jmp	.L287	#
.L340:
	.loc 1 1074 0 is_stmt 1
	movq	-568(%rbp), %rax	# hmm, tmp330
	movl	136(%rax), %eax	# hmm_20->M, D.9403
	cmpl	-584(%rbp), %eax	# k, D.9403
	jle	.L341	#,
	.loc 1 1074 0 is_stmt 0 discriminator 1
	movq	-568(%rbp), %rax	# hmm, tmp331
	movq	144(%rax), %rax	# hmm_20->t, D.9409
	movl	-584(%rbp), %edx	# k, tmp332
	movslq	%edx, %rdx	# tmp332, D.9405
	salq	$3, %rdx	#, D.9405
	addq	%rdx, %rax	# D.9405, D.9409
	movq	(%rax), %rax	# *_154, D.9408
	leaq	24(%rax), %rbx	#, D.9408
	movq	-568(%rbp), %rax	# hmm, tmp333
	movl	136(%rax), %eax	# hmm_20->M, D.9403
	cmpl	-584(%rbp), %eax	# k, D.9403
	je	.L342	#,
	movq	-552(%rbp), %rax	# s, tmp334
	movss	.LC33(%rip), %xmm0	#,
	movq	%rax, %rdi	# tmp334,
	call	ascii2prob	#
	movss	%xmm0, -612(%rbp)	#, %sfp
	movl	-612(%rbp), %eax	# %sfp, iftmp.75
	jmp	.L343	#
.L342:
	.loc 1 1074 0 discriminator 2
	movl	.LC86(%rip), %eax	#, iftmp.75
.L343:
	.loc 1 1074 0 discriminator 3
	movl	%eax, (%rbx)	# iftmp.75, *_156
.L341:
	.loc 1 1075 0 is_stmt 1
	movq	-560(%rbp), %rax	# fp, tmp335
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp335,
	call	Getword	#
	movq	%rax, -552(%rbp)	# tmp336, s
	cmpq	$0, -552(%rbp)	#, s
	jne	.L344	#,
	.loc 1 1075 0 is_stmt 0 discriminator 1
	jmp	.L287	#
.L344:
	.loc 1 1078 0 is_stmt 1
	movq	-560(%rbp), %rax	# fp, tmp337
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp337,
	call	Getword	#
	movq	%rax, -552(%rbp)	# tmp338, s
	cmpq	$0, -552(%rbp)	#, s
	jne	.L345	#,
	.loc 1 1078 0 is_stmt 0 discriminator 1
	jmp	.L287	#
.L345:
	.loc 1 1079 0 is_stmt 1
	movq	-568(%rbp), %rax	# hmm, tmp339
	movl	136(%rax), %eax	# hmm_20->M, D.9403
	cmpl	-584(%rbp), %eax	# k, D.9403
	jle	.L346	#,
	.loc 1 1079 0 is_stmt 0 discriminator 1
	movq	-568(%rbp), %rax	# hmm, tmp340
	movq	144(%rax), %rax	# hmm_20->t, D.9409
	movl	-584(%rbp), %edx	# k, tmp341
	movslq	%edx, %rdx	# tmp341, D.9405
	salq	$3, %rdx	#, D.9405
	addq	%rdx, %rax	# D.9405, D.9409
	movq	(%rax), %rax	# *_166, D.9408
	leaq	12(%rax), %rbx	#, D.9408
	movq	-552(%rbp), %rax	# s, tmp342
	movss	.LC33(%rip), %xmm0	#,
	movq	%rax, %rdi	# tmp342,
	call	ascii2prob	#
	movss	%xmm0, -612(%rbp)	#, %sfp
	movl	-612(%rbp), %eax	# %sfp, D.9406
	movl	%eax, (%rbx)	# D.9406, *_168
.L346:
	.loc 1 1080 0 is_stmt 1
	movq	-560(%rbp), %rax	# fp, tmp343
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp343,
	call	Getword	#
	movq	%rax, -552(%rbp)	# tmp344, s
	cmpq	$0, -552(%rbp)	#, s
	jne	.L347	#,
	.loc 1 1080 0 is_stmt 0 discriminator 1
	jmp	.L287	#
.L347:
	.loc 1 1081 0 is_stmt 1
	movq	-560(%rbp), %rax	# fp, tmp345
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp345,
	call	Getword	#
	movq	%rax, -552(%rbp)	# tmp346, s
	cmpq	$0, -552(%rbp)	#, s
	jne	.L348	#,
	.loc 1 1081 0 is_stmt 0 discriminator 1
	jmp	.L287	#
.L348:
	.loc 1 1082 0 is_stmt 1
	movq	-568(%rbp), %rax	# hmm, tmp347
	movl	136(%rax), %eax	# hmm_20->M, D.9403
	cmpl	-584(%rbp), %eax	# k, D.9403
	jle	.L349	#,
	.loc 1 1082 0 is_stmt 0 discriminator 1
	movq	-568(%rbp), %rax	# hmm, tmp348
	movq	144(%rax), %rax	# hmm_20->t, D.9409
	movl	-584(%rbp), %edx	# k, tmp349
	movslq	%edx, %rdx	# tmp349, D.9405
	salq	$3, %rdx	#, D.9405
	addq	%rdx, %rax	# D.9405, D.9409
	movq	(%rax), %rax	# *_176, D.9408
	leaq	16(%rax), %rbx	#, D.9408
	movq	-552(%rbp), %rax	# s, tmp350
	movss	.LC33(%rip), %xmm0	#,
	movq	%rax, %rdi	# tmp350,
	call	ascii2prob	#
	movss	%xmm0, -612(%rbp)	#, %sfp
	movl	-612(%rbp), %eax	# %sfp, D.9406
	movl	%eax, (%rbx)	# D.9406, *_178
.L349:
	.loc 1 1085 0 is_stmt 1
	movq	-560(%rbp), %rax	# fp, tmp351
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp351,
	call	Getword	#
	movq	%rax, -552(%rbp)	# tmp352, s
	cmpq	$0, -552(%rbp)	#, s
	jne	.L350	#,
	.loc 1 1085 0 is_stmt 0 discriminator 1
	jmp	.L287	#
.L350:
	.loc 1 1086 0 is_stmt 1
	movq	-568(%rbp), %rax	# hmm, tmp353
	movl	456(%rax), %eax	# hmm_20->flags, D.9403
	andl	$4, %eax	#, D.9403
	testl	%eax, %eax	# D.9403
	je	.L351	#,
	.loc 1 1086 0 is_stmt 0 discriminator 1
	movq	-568(%rbp), %rax	# hmm, tmp354
	movq	24(%rax), %rdx	# hmm_20->rf, D.9404
	movl	-584(%rbp), %eax	# k, tmp355
	cltq
	addq	%rax, %rdx	# D.9410, D.9404
	movq	-552(%rbp), %rax	# s, tmp356
	movzbl	(%rax), %eax	# *s_180, D.9411
	movb	%al, (%rdx)	# D.9411, *_185
.L351:
	.loc 1 1087 0 is_stmt 1
	movq	-560(%rbp), %rax	# fp, tmp357
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp357,
	call	Getword	#
	movq	%rax, -552(%rbp)	# tmp358, s
	cmpq	$0, -552(%rbp)	#, s
	jne	.L352	#,
	.loc 1 1087 0 is_stmt 0 discriminator 1
	jmp	.L287	#
.L352:
	.loc 1 1088 0 is_stmt 1
	movq	-568(%rbp), %rax	# hmm, tmp359
	movl	456(%rax), %eax	# hmm_20->flags, D.9403
	andl	$8, %eax	#, D.9403
	testl	%eax, %eax	# D.9403
	je	.L353	#,
	.loc 1 1088 0 is_stmt 0 discriminator 1
	movq	-568(%rbp), %rax	# hmm, tmp360
	movq	32(%rax), %rdx	# hmm_20->cs, D.9404
	movl	-584(%rbp), %eax	# k, tmp361
	cltq
	addq	%rax, %rdx	# D.9410, D.9404
	movq	-552(%rbp), %rax	# s, tmp362
	movzbl	(%rax), %eax	# *s_187, D.9411
	movb	%al, (%rdx)	# D.9411, *_192
.L353:
	.loc 1 1054 0 is_stmt 1
	addl	$1, -584(%rbp)	#, k
.L325:
	.loc 1 1054 0 is_stmt 0 discriminator 1
	movq	-568(%rbp), %rax	# hmm, tmp363
	movl	136(%rax), %eax	# hmm_20->M, D.9403
	cmpl	-584(%rbp), %eax	# k, D.9403
	jge	.L354	#,
	.loc 1 1092 0 is_stmt 1
	movl	$0, -584(%rbp)	#, k
	jmp	.L355	#
.L361:
	.loc 1 1094 0
	movq	-560(%rbp), %rax	# fp, tmp364
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp364,
	call	Getword	#
	movq	%rax, -552(%rbp)	# tmp365, s
	cmpq	$0, -552(%rbp)	#, s
	jne	.L356	#,
	.loc 1 1094 0 is_stmt 0 discriminator 1
	jmp	.L287	#
.L356:
	.loc 1 1095 0 is_stmt 1
	movl	$0, -580(%rbp)	#, x
	jmp	.L357	#
.L360:
	.loc 1 1096 0
	movq	-560(%rbp), %rax	# fp, tmp366
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp366,
	call	Getword	#
	movq	%rax, -552(%rbp)	# tmp367, s
	cmpq	$0, -552(%rbp)	#, s
	jne	.L358	#,
	.loc 1 1096 0 is_stmt 0 discriminator 1
	jmp	.L287	#
.L358:
	.loc 1 1097 0 is_stmt 1
	cmpl	$0, -584(%rbp)	#, k
	jle	.L359	#,
	.loc 1 1097 0 is_stmt 0 discriminator 1
	movq	-568(%rbp), %rax	# hmm, tmp368
	movl	136(%rax), %eax	# hmm_20->M, D.9403
	cmpl	-584(%rbp), %eax	# k, D.9403
	jle	.L359	#,
	.loc 1 1098 0 is_stmt 1
	movq	-568(%rbp), %rax	# hmm, tmp369
	movq	160(%rax), %rax	# hmm_20->ins, D.9409
	movl	-584(%rbp), %edx	# k, tmp370
	movslq	%edx, %rdx	# tmp370, D.9405
	salq	$3, %rdx	#, D.9405
	addq	%rdx, %rax	# D.9405, D.9409
	movq	(%rax), %rax	# *_205, D.9408
	movl	-580(%rbp), %edx	# x, tmp371
	movslq	%edx, %rdx	# tmp371, D.9405
	salq	$2, %rdx	#, D.9405
	leaq	(%rax,%rdx), %rbx	#, D.9408
	movq	-568(%rbp), %rax	# hmm, tmp372
	movl	-580(%rbp), %edx	# x, tmp374
	movslq	%edx, %rdx	# tmp374, tmp373
	addq	$56, %rdx	#, tmp375
	movl	(%rax,%rdx,4), %eax	# hmm_20->null, D.9406
	movq	-552(%rbp), %rdx	# s, tmp376
	movl	%eax, -612(%rbp)	# D.9406, %sfp
	movss	-612(%rbp), %xmm0	# %sfp,
	movq	%rdx, %rdi	# tmp376,
	call	ascii2prob	#
	movss	%xmm0, -612(%rbp)	#, %sfp
	movl	-612(%rbp), %eax	# %sfp, D.9406
	movl	%eax, (%rbx)	# D.9406, *_209
.L359:
	.loc 1 1095 0
	addl	$1, -580(%rbp)	#, x
.L357:
	.loc 1 1095 0 is_stmt 0 discriminator 1
	movl	Alphabet_size(%rip), %eax	# Alphabet_size, Alphabet_size.76
	cmpl	%eax, -580(%rbp)	# Alphabet_size.76, x
	jl	.L360	#,
	.loc 1 1092 0 is_stmt 1
	addl	$1, -584(%rbp)	#, k
.L355:
	.loc 1 1092 0 is_stmt 0 discriminator 1
	movq	-568(%rbp), %rax	# hmm, tmp377
	movl	136(%rax), %eax	# hmm_20->M, D.9403
	cmpl	-584(%rbp), %eax	# k, D.9403
	jge	.L361	#,
	.loc 1 1104 0 is_stmt 1
	movq	-568(%rbp), %rax	# hmm, tmp378
	movl	456(%rax), %eax	# hmm_20->flags, D.9403
	orl	$32, %eax	#, D.9403
	movl	%eax, %edx	# D.9403, D.9403
	movq	-568(%rbp), %rax	# hmm, tmp379
	movl	%edx, 456(%rax)	# D.9403, hmm_20->flags
	.loc 1 1105 0
	movq	-568(%rbp), %rax	# hmm, tmp380
	movl	456(%rax), %eax	# hmm_20->flags, D.9403
	andl	$-2, %eax	#, D.9403
	movl	%eax, %edx	# D.9403, D.9403
	movq	-568(%rbp), %rax	# hmm, tmp381
	movl	%edx, 456(%rax)	# D.9403, hmm_20->flags
	.loc 1 1106 0
	movq	-568(%rbp), %rax	# hmm, tmp382
	movq	%rax, %rdi	# tmp382,
	call	Plan7Renormalize	#
	.loc 1 1107 0
	movl	$.LC87, %edi	#,
	call	Strdup	#
	movq	-568(%rbp), %rdx	# hmm, tmp383
	movq	%rax, 48(%rdx)	# D.9404, hmm_20->comlog
	.loc 1 1108 0
	movq	-568(%rbp), %rax	# hmm, tmp384
	movq	%rax, %rdi	# tmp384,
	call	Plan7SetCtime	#
	.loc 1 1109 0
	movq	-608(%rbp), %rax	# ret_hmm, tmp385
	movq	-568(%rbp), %rdx	# hmm, tmp386
	movq	%rdx, (%rax)	# tmp386, *ret_hmm_219(D)
	.loc 1 1110 0
	movl	$1, %eax	#, D.9403
	jmp	.L363	#
.L287:
	.loc 1 1113 0
	cmpq	$0, -568(%rbp)	#, hmm
	je	.L362	#,
	.loc 1 1113 0 is_stmt 0 discriminator 1
	movq	-568(%rbp), %rax	# hmm, tmp387
	movq	%rax, %rdi	# tmp387,
	call	FreePlan7	#
.L362:
	.loc 1 1114 0 is_stmt 1
	movq	-608(%rbp), %rax	# ret_hmm, tmp388
	movq	$0, (%rax)	#, *ret_hmm_219(D)
	.loc 1 1115 0
	movl	$1, %eax	#, D.9403
.L363:
	.loc 1 1116 0
	movq	-24(%rbp), %rcx	# D.9412, tmp391
	xorq	%fs:40, %rcx	#, tmp391
	je	.L364	#,
	call	__stack_chk_fail	#
.L364:
	addq	$616, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	read_asc19hmm, .-read_asc19hmm
	.type	read_bin19hmm, @function
read_bin19hmm:
.LFB13:
	.loc 1 1120 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# hmmfp, hmmfp
	movq	%rsi, -64(%rbp)	# ret_hmm, ret_hmm
	.loc 1 1128 0
	movq	-56(%rbp), %rax	# hmmfp, tmp71
	movq	(%rax), %rax	# hmmfp_2(D)->f, D.9416
	movq	%rax, %rdi	# D.9416,
	call	feof	#
	testl	%eax, %eax	# D.9415
	je	.L366	#,
	.loc 1 1128 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.9415
	jmp	.L370	#
.L366:
	.loc 1 1129 0 is_stmt 1
	movq	-56(%rbp), %rax	# hmmfp, tmp72
	movq	(%rax), %rdx	# hmmfp_2(D)->f, D.9416
	leaq	-36(%rbp), %rax	#, tmp73
	movq	%rdx, %rcx	# D.9416,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp73,
	call	fread	#
	testq	%rax, %rax	# D.9417
	jne	.L368	#,
	.loc 1 1129 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.9415
	jmp	.L370	#
.L368:
	.loc 1 1131 0 is_stmt 1
	movq	-56(%rbp), %rax	# hmmfp, tmp74
	movl	28(%rax), %edx	# hmmfp_2(D)->byteswap, D.9415
	movq	-56(%rbp), %rax	# hmmfp, tmp75
	movq	(%rax), %rax	# hmmfp_2(D)->f, D.9416
	movl	$7, %esi	#,
	movq	%rax, %rdi	# D.9416,
	call	read_plan9_binhmm	#
	movq	%rax, -24(%rbp)	# tmp76, p9hmm
	.loc 1 1132 0
	cmpq	$0, -24(%rbp)	#, p9hmm
	jne	.L369	#,
	.loc 1 1132 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# ret_hmm, tmp77
	movq	$0, (%rax)	#, *ret_hmm_12(D)
	movl	$1, %eax	#, D.9415
	jmp	.L370	#
.L369:
	.loc 1 1134 0 is_stmt 1
	leaq	-32(%rbp), %rdx	#, tmp78
	movq	-24(%rbp), %rax	# p9hmm, tmp79
	movq	%rdx, %rsi	# tmp78,
	movq	%rax, %rdi	# tmp79,
	call	Plan9toPlan7	#
	.loc 1 1136 0
	movq	-32(%rbp), %rbx	# hmm, hmm.77
	movl	$.LC87, %edi	#,
	call	Strdup	#
	movq	%rax, 48(%rbx)	# D.9418, hmm.77_14->comlog
	.loc 1 1137 0
	movq	-32(%rbp), %rax	# hmm, hmm.78
	movq	%rax, %rdi	# hmm.78,
	call	Plan7SetCtime	#
	.loc 1 1139 0
	movq	-24(%rbp), %rax	# p9hmm, tmp80
	movq	%rax, %rdi	# tmp80,
	call	P9FreeHMM	#
	.loc 1 1140 0
	movq	-32(%rbp), %rdx	# hmm, hmm.79
	movq	-64(%rbp), %rax	# ret_hmm, tmp81
	movq	%rdx, (%rax)	# hmm.79, *ret_hmm_12(D)
	.loc 1 1141 0
	movl	$1, %eax	#, D.9415
.L370:
	.loc 1 1142 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	read_bin19hmm, .-read_bin19hmm
	.type	read_asc17hmm, @function
read_asc17hmm:
.LFB14:
	.loc 1 1145 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$568, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -568(%rbp)	# hmmfp, hmmfp
	movq	%rsi, -576(%rbp)	# ret_hmm, ret_hmm
	.loc 1 1145 0
	movq	%fs:40, %rax	#, tmp82
	movq	%rax, -24(%rbp)	# tmp82, D.9422
	xorl	%eax, %eax	# tmp82
	.loc 1 1153 0
	movq	-568(%rbp), %rax	# hmmfp, tmp71
	movq	(%rax), %rax	# hmmfp_2(D)->f, D.9420
	movq	%rax, %rdi	# D.9420,
	call	feof	#
	testl	%eax, %eax	# D.9419
	jne	.L372	#,
	.loc 1 1153 0 is_stmt 0 discriminator 2
	movq	-568(%rbp), %rax	# hmmfp, tmp72
	movq	(%rax), %rdx	# hmmfp_2(D)->f, D.9420
	leaq	-544(%rbp), %rax	#, tmp73
	movl	$512, %esi	#,
	movq	%rax, %rdi	# tmp73,
	call	fgets	#
	testq	%rax, %rax	# D.9421
	jne	.L373	#,
.L372:
	.loc 1 1153 0 discriminator 1
	movl	$0, %eax	#, D.9419
	jmp	.L376	#
.L373:
	.loc 1 1155 0 is_stmt 1
	movq	-568(%rbp), %rax	# hmmfp, tmp74
	movq	(%rax), %rax	# hmmfp_2(D)->f, D.9420
	movl	$6, %esi	#,
	movq	%rax, %rdi	# D.9420,
	call	read_plan9_aschmm	#
	movq	%rax, -552(%rbp)	# tmp75, p9hmm
	.loc 1 1156 0
	cmpq	$0, -552(%rbp)	#, p9hmm
	jne	.L375	#,
	.loc 1 1156 0 is_stmt 0 discriminator 1
	movq	-576(%rbp), %rax	# ret_hmm, tmp76
	movq	$0, (%rax)	#, *ret_hmm_9(D)
	movl	$1, %eax	#, D.9419
	jmp	.L376	#
.L375:
	.loc 1 1158 0 is_stmt 1
	leaq	-560(%rbp), %rdx	#, tmp77
	movq	-552(%rbp), %rax	# p9hmm, tmp78
	movq	%rdx, %rsi	# tmp77,
	movq	%rax, %rdi	# tmp78,
	call	Plan9toPlan7	#
	.loc 1 1160 0
	movq	-560(%rbp), %rbx	# hmm, hmm.80
	movl	$.LC87, %edi	#,
	call	Strdup	#
	movq	%rax, 48(%rbx)	# D.9421, hmm.80_11->comlog
	.loc 1 1161 0
	movq	-560(%rbp), %rax	# hmm, hmm.81
	movq	%rax, %rdi	# hmm.81,
	call	Plan7SetCtime	#
	.loc 1 1163 0
	movq	-552(%rbp), %rax	# p9hmm, tmp79
	movq	%rax, %rdi	# tmp79,
	call	P9FreeHMM	#
	.loc 1 1164 0
	movq	-560(%rbp), %rax	# hmm, hmm.82
	movq	%rax, %rdi	# hmm.82,
	call	Plan7Renormalize	#
	.loc 1 1165 0
	movq	-560(%rbp), %rdx	# hmm, hmm.83
	movq	-576(%rbp), %rax	# ret_hmm, tmp80
	movq	%rdx, (%rax)	# hmm.83, *ret_hmm_9(D)
	.loc 1 1166 0
	movl	$1, %eax	#, D.9419
.L376:
	.loc 1 1167 0
	movq	-24(%rbp), %rcx	# D.9422, tmp83
	xorq	%fs:40, %rcx	#, tmp83
	je	.L377	#,
	call	__stack_chk_fail	#
.L377:
	addq	$568, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	read_asc17hmm, .-read_asc17hmm
	.type	read_bin17hmm, @function
read_bin17hmm:
.LFB15:
	.loc 1 1171 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# hmmfp, hmmfp
	movq	%rsi, -64(%rbp)	# ret_hmm, ret_hmm
	.loc 1 1179 0
	movq	-56(%rbp), %rax	# hmmfp, tmp71
	movq	(%rax), %rax	# hmmfp_2(D)->f, D.9424
	movq	%rax, %rdi	# D.9424,
	call	feof	#
	testl	%eax, %eax	# D.9423
	je	.L379	#,
	.loc 1 1179 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.9423
	jmp	.L383	#
.L379:
	.loc 1 1180 0 is_stmt 1
	movq	-56(%rbp), %rax	# hmmfp, tmp72
	movq	(%rax), %rdx	# hmmfp_2(D)->f, D.9424
	leaq	-36(%rbp), %rax	#, tmp73
	movq	%rdx, %rcx	# D.9424,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp73,
	call	fread	#
	testq	%rax, %rax	# D.9425
	jne	.L381	#,
	.loc 1 1180 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.9423
	jmp	.L383	#
.L381:
	.loc 1 1182 0 is_stmt 1
	movq	-56(%rbp), %rax	# hmmfp, tmp74
	movl	28(%rax), %edx	# hmmfp_2(D)->byteswap, D.9423
	movq	-56(%rbp), %rax	# hmmfp, tmp75
	movq	(%rax), %rax	# hmmfp_2(D)->f, D.9424
	movl	$5, %esi	#,
	movq	%rax, %rdi	# D.9424,
	call	read_plan9_binhmm	#
	movq	%rax, -24(%rbp)	# tmp76, p9hmm
	.loc 1 1183 0
	cmpq	$0, -24(%rbp)	#, p9hmm
	jne	.L382	#,
	.loc 1 1183 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# ret_hmm, tmp77
	movq	$0, (%rax)	#, *ret_hmm_12(D)
	movl	$1, %eax	#, D.9423
	jmp	.L383	#
.L382:
	.loc 1 1185 0 is_stmt 1
	leaq	-32(%rbp), %rdx	#, tmp78
	movq	-24(%rbp), %rax	# p9hmm, tmp79
	movq	%rdx, %rsi	# tmp78,
	movq	%rax, %rdi	# tmp79,
	call	Plan9toPlan7	#
	.loc 1 1187 0
	movq	-32(%rbp), %rbx	# hmm, hmm.84
	movl	$.LC87, %edi	#,
	call	Strdup	#
	movq	%rax, 48(%rbx)	# D.9426, hmm.84_14->comlog
	.loc 1 1188 0
	movq	-32(%rbp), %rax	# hmm, hmm.85
	movq	%rax, %rdi	# hmm.85,
	call	Plan7SetCtime	#
	.loc 1 1190 0
	movq	-24(%rbp), %rax	# p9hmm, tmp80
	movq	%rax, %rdi	# tmp80,
	call	P9FreeHMM	#
	.loc 1 1191 0
	movq	-32(%rbp), %rdx	# hmm, hmm.86
	movq	-64(%rbp), %rax	# ret_hmm, tmp81
	movq	%rdx, (%rax)	# hmm.86, *ret_hmm_12(D)
	.loc 1 1192 0
	movl	$1, %eax	#, D.9423
.L383:
	.loc 1 1193 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	read_bin17hmm, .-read_bin17hmm
	.section	.rodata
.LC88:
	.string	"1.1 ASCII HMMs unsupported"
	.text
	.type	read_asc11hmm, @function
read_asc11hmm:
.LFB16:
	.loc 1 1197 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# hmmfp, hmmfp
	movq	%rsi, -16(%rbp)	# ret_hmm, ret_hmm
	.loc 1 1198 0
	movl	$.LC88, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
	.loc 1 1199 0
	movl	$1, %eax	#, D.9427
	.loc 1 1200 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	read_asc11hmm, .-read_asc11hmm
	.type	read_bin11hmm, @function
read_bin11hmm:
.LFB17:
	.loc 1 1203 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# hmmfp, hmmfp
	movq	%rsi, -64(%rbp)	# ret_hmm, ret_hmm
	.loc 1 1211 0
	movq	-56(%rbp), %rax	# hmmfp, tmp71
	movq	(%rax), %rax	# hmmfp_2(D)->f, D.9430
	movq	%rax, %rdi	# D.9430,
	call	feof	#
	testl	%eax, %eax	# D.9429
	je	.L387	#,
	.loc 1 1211 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.9429
	jmp	.L391	#
.L387:
	.loc 1 1212 0 is_stmt 1
	movq	-56(%rbp), %rax	# hmmfp, tmp72
	movq	(%rax), %rdx	# hmmfp_2(D)->f, D.9430
	leaq	-36(%rbp), %rax	#, tmp73
	movq	%rdx, %rcx	# D.9430,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp73,
	call	fread	#
	testq	%rax, %rax	# D.9431
	jne	.L389	#,
	.loc 1 1212 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.9429
	jmp	.L391	#
.L389:
	.loc 1 1214 0 is_stmt 1
	movq	-56(%rbp), %rax	# hmmfp, tmp74
	movl	28(%rax), %edx	# hmmfp_2(D)->byteswap, D.9429
	movq	-56(%rbp), %rax	# hmmfp, tmp75
	movq	(%rax), %rax	# hmmfp_2(D)->f, D.9430
	movl	$3, %esi	#,
	movq	%rax, %rdi	# D.9430,
	call	read_plan9_binhmm	#
	movq	%rax, -24(%rbp)	# tmp76, p9hmm
	.loc 1 1215 0
	cmpq	$0, -24(%rbp)	#, p9hmm
	jne	.L390	#,
	.loc 1 1215 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# ret_hmm, tmp77
	movq	$0, (%rax)	#, *ret_hmm_12(D)
	movl	$1, %eax	#, D.9429
	jmp	.L391	#
.L390:
	.loc 1 1217 0 is_stmt 1
	leaq	-32(%rbp), %rdx	#, tmp78
	movq	-24(%rbp), %rax	# p9hmm, tmp79
	movq	%rdx, %rsi	# tmp78,
	movq	%rax, %rdi	# tmp79,
	call	Plan9toPlan7	#
	.loc 1 1219 0
	movq	-32(%rbp), %rbx	# hmm, hmm.87
	movl	$.LC87, %edi	#,
	call	Strdup	#
	movq	%rax, 48(%rbx)	# D.9432, hmm.87_14->comlog
	.loc 1 1220 0
	movq	-32(%rbp), %rax	# hmm, hmm.88
	movq	%rax, %rdi	# hmm.88,
	call	Plan7SetCtime	#
	.loc 1 1222 0
	movq	-24(%rbp), %rax	# p9hmm, tmp80
	movq	%rax, %rdi	# tmp80,
	call	P9FreeHMM	#
	.loc 1 1223 0
	movq	-32(%rbp), %rdx	# hmm, hmm.89
	movq	-64(%rbp), %rax	# ret_hmm, tmp81
	movq	%rdx, (%rax)	# hmm.89, *ret_hmm_12(D)
	.loc 1 1224 0
	movl	$1, %eax	#, D.9429
.L391:
	.loc 1 1225 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	read_bin11hmm, .-read_bin11hmm
	.section	.rodata
.LC89:
	.string	"1.0 ASCII HMMs unsupported"
	.text
	.type	read_asc10hmm, @function
read_asc10hmm:
.LFB18:
	.loc 1 1229 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# hmmfp, hmmfp
	movq	%rsi, -16(%rbp)	# ret_hmm, ret_hmm
	.loc 1 1230 0
	movl	$.LC89, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
	.loc 1 1231 0
	movl	$1, %eax	#, D.9433
	.loc 1 1232 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	read_asc10hmm, .-read_asc10hmm
	.type	read_bin10hmm, @function
read_bin10hmm:
.LFB19:
	.loc 1 1236 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# hmmfp, hmmfp
	movq	%rsi, -64(%rbp)	# ret_hmm, ret_hmm
	.loc 1 1244 0
	movq	-56(%rbp), %rax	# hmmfp, tmp71
	movq	(%rax), %rax	# hmmfp_2(D)->f, D.9436
	movq	%rax, %rdi	# D.9436,
	call	feof	#
	testl	%eax, %eax	# D.9435
	je	.L395	#,
	.loc 1 1244 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.9435
	jmp	.L399	#
.L395:
	.loc 1 1245 0 is_stmt 1
	movq	-56(%rbp), %rax	# hmmfp, tmp72
	movq	(%rax), %rdx	# hmmfp_2(D)->f, D.9436
	leaq	-36(%rbp), %rax	#, tmp73
	movq	%rdx, %rcx	# D.9436,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp73,
	call	fread	#
	testq	%rax, %rax	# D.9437
	jne	.L397	#,
	.loc 1 1245 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.9435
	jmp	.L399	#
.L397:
	.loc 1 1247 0 is_stmt 1
	movq	-56(%rbp), %rax	# hmmfp, tmp74
	movl	28(%rax), %edx	# hmmfp_2(D)->byteswap, D.9435
	movq	-56(%rbp), %rax	# hmmfp, tmp75
	movq	(%rax), %rax	# hmmfp_2(D)->f, D.9436
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.9436,
	call	read_plan9_binhmm	#
	movq	%rax, -24(%rbp)	# tmp76, p9hmm
	.loc 1 1248 0
	cmpq	$0, -24(%rbp)	#, p9hmm
	jne	.L398	#,
	.loc 1 1248 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# ret_hmm, tmp77
	movq	$0, (%rax)	#, *ret_hmm_12(D)
	movl	$1, %eax	#, D.9435
	jmp	.L399	#
.L398:
	.loc 1 1250 0 is_stmt 1
	leaq	-32(%rbp), %rdx	#, tmp78
	movq	-24(%rbp), %rax	# p9hmm, tmp79
	movq	%rdx, %rsi	# tmp78,
	movq	%rax, %rdi	# tmp79,
	call	Plan9toPlan7	#
	.loc 1 1252 0
	movq	-32(%rbp), %rbx	# hmm, hmm.90
	movl	$.LC87, %edi	#,
	call	Strdup	#
	movq	%rax, 48(%rbx)	# D.9438, hmm.90_14->comlog
	.loc 1 1253 0
	movq	-32(%rbp), %rax	# hmm, hmm.91
	movq	%rax, %rdi	# hmm.91,
	call	Plan7SetCtime	#
	.loc 1 1255 0
	movq	-24(%rbp), %rax	# p9hmm, tmp80
	movq	%rax, %rdi	# tmp80,
	call	P9FreeHMM	#
	.loc 1 1256 0
	movq	-32(%rbp), %rdx	# hmm, hmm.92
	movq	-64(%rbp), %rax	# ret_hmm, tmp81
	movq	%rdx, (%rax)	# hmm.92, *ret_hmm_12(D)
	.loc 1 1257 0
	movl	$1, %eax	#, D.9435
.L399:
	.loc 1 1258 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	read_bin10hmm, .-read_bin10hmm
	.section	.rodata
.LC90:
	.string	"%6d"
	.text
	.type	prob2ascii, @function
prob2ascii:
.LFB20:
	.loc 1 1272 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movss	%xmm0, -4(%rbp)	# p, p
	movss	%xmm1, -8(%rbp)	# null, null
	.loc 1 1275 0
	xorps	%xmm0, %xmm0	# tmp62
	ucomiss	-4(%rbp), %xmm0	# p, tmp62
	jp	.L401	#,
	xorps	%xmm0, %xmm0	# tmp63
	ucomiss	-4(%rbp), %xmm0	# p, tmp63
	jne	.L401	#,
	.loc 1 1275 0 is_stmt 0 discriminator 1
	movl	$.LC51, %eax	#, D.9439
	jmp	.L403	#
.L401:
	.loc 1 1276 0 is_stmt 1
	movl	-8(%rbp), %edx	# null, tmp64
	movl	-4(%rbp), %eax	# p, tmp65
	movl	%edx, -12(%rbp)	# tmp64, %sfp
	movss	-12(%rbp), %xmm1	# %sfp,
	movl	%eax, -12(%rbp)	# tmp65, %sfp
	movss	-12(%rbp), %xmm0	# %sfp,
	call	Prob2Score	#
	movl	%eax, %edx	# D.9440,
	movl	$.LC90, %esi	#,
	movl	$buffer.6931, %edi	#,
	movl	$0, %eax	#,
	call	sprintf	#
	.loc 1 1277 0
	movl	$buffer.6931, %eax	#, D.9439
.L403:
	.loc 1 1278 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	prob2ascii, .-prob2ascii
	.type	ascii2prob, @function
ascii2prob:
.LFB21:
	.loc 1 1287 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# s, s
	movss	%xmm0, -12(%rbp)	# null, null
	.loc 1 1288 0
	movq	-8(%rbp), %rax	# s, tmp64
	movzbl	(%rax), %eax	# *s_2(D), D.9442
	cmpb	$42, %al	#, D.9442
	je	.L406	#,
	.loc 1 1288 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# s, tmp65
	movq	%rax, %rdi	# tmp65,
	call	atoi	#
	movl	%eax, %edx	#, D.9443
	movl	-12(%rbp), %eax	# null, tmp66
	movl	%eax, -16(%rbp)	# tmp66, %sfp
	movss	-16(%rbp), %xmm0	# %sfp,
	movl	%edx, %edi	# D.9443,
	call	Score2Prob	#
	movss	%xmm0, -16(%rbp)	#, %sfp
	movl	-16(%rbp), %eax	# %sfp, iftmp.93
	jmp	.L407	#
.L406:
	.loc 1 1288 0 discriminator 2
	movl	.LC86(%rip), %eax	#, iftmp.93
.L407:
	.loc 1 1289 0 is_stmt 1 discriminator 3
	movl	%eax, -16(%rbp)	# <retval>, %sfp
	movss	-16(%rbp), %xmm0	# %sfp,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	ascii2prob, .-ascii2prob
	.type	byteswap, @function
byteswap:
.LFB22:
	.loc 1 1314 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# swap, swap
	movl	%esi, -28(%rbp)	# nbytes, nbytes
	.loc 1 1318 0
	movl	$0, -4(%rbp)	#, x
	jmp	.L410	#
.L411:
	.loc 1 1320 0 discriminator 2
	movl	-4(%rbp), %eax	# x, tmp73
	movl	-28(%rbp), %edx	# nbytes, tmp74
	subl	%eax, %edx	# tmp73, D.9445
	movl	%edx, %eax	# D.9445, D.9445
	cltq
	leaq	-1(%rax), %rdx	#, D.9446
	movq	-24(%rbp), %rax	# swap, tmp75
	addq	%rdx, %rax	# D.9446, D.9447
	movzbl	(%rax), %eax	# *_9, tmp76
	movb	%al, -5(%rbp)	# tmp76, byte
	.loc 1 1321 0 discriminator 2
	movl	-4(%rbp), %eax	# x, tmp77
	movl	-28(%rbp), %edx	# nbytes, tmp78
	subl	%eax, %edx	# tmp77, D.9445
	movl	%edx, %eax	# D.9445, D.9445
	cltq
	leaq	-1(%rax), %rdx	#, D.9446
	movq	-24(%rbp), %rax	# swap, tmp79
	addq	%rax, %rdx	# tmp79, D.9447
	movl	-4(%rbp), %eax	# x, tmp80
	movslq	%eax, %rcx	# tmp80, D.9446
	movq	-24(%rbp), %rax	# swap, tmp81
	addq	%rcx, %rax	# D.9446, D.9447
	movzbl	(%rax), %eax	# *_16, D.9448
	movb	%al, (%rdx)	# D.9448, *_14
	.loc 1 1322 0 discriminator 2
	movl	-4(%rbp), %eax	# x, tmp82
	movslq	%eax, %rdx	# tmp82, D.9446
	movq	-24(%rbp), %rax	# swap, tmp83
	addq	%rax, %rdx	# tmp83, D.9447
	movzbl	-5(%rbp), %eax	# byte, tmp84
	movb	%al, (%rdx)	# tmp84, *_19
	.loc 1 1318 0 discriminator 2
	addl	$1, -4(%rbp)	#, x
.L410:
	.loc 1 1318 0 is_stmt 0 discriminator 1
	movl	-28(%rbp), %eax	# nbytes, tmp85
	movl	%eax, %edx	# tmp85, tmp86
	shrl	$31, %edx	#, tmp86
	addl	%edx, %eax	# tmp86, tmp87
	sarl	%eax	# tmp88
	cmpl	-4(%rbp), %eax	# x, D.9445
	jg	.L411	#,
	.loc 1 1324 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	byteswap, .-byteswap
	.type	write_bin_string, @function
write_bin_string:
.LFB23:
	.loc 1 1335 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# fp, fp
	movq	%rsi, -32(%rbp)	# s, s
	.loc 1 1337 0
	cmpq	$0, -32(%rbp)	#, s
	je	.L413	#,
	.loc 1 1339 0
	movq	-32(%rbp), %rax	# s, tmp65
	movq	%rax, %rdi	# tmp65,
	call	strlen	#
	addl	$1, %eax	#, D.9450
	movl	%eax, -4(%rbp)	# len.94, len
	.loc 1 1340 0
	movq	-24(%rbp), %rdx	# fp, tmp66
	leaq	-4(%rbp), %rax	#, tmp67
	movq	%rdx, %rcx	# tmp66,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp67,
	call	fwrite	#
	.loc 1 1341 0
	movl	-4(%rbp), %eax	# len, len.95
	movslq	%eax, %rdx	# len.95, D.9449
	movq	-24(%rbp), %rcx	# fp, tmp68
	movq	-32(%rbp), %rax	# s, tmp69
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp69,
	call	fwrite	#
	jmp	.L412	#
.L413:
	.loc 1 1345 0
	movl	$0, -4(%rbp)	#, len
	.loc 1 1346 0
	movq	-24(%rbp), %rdx	# fp, tmp70
	leaq	-4(%rbp), %rax	#, tmp71
	movq	%rdx, %rcx	# tmp70,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp71,
	call	fwrite	#
.L412:
	.loc 1 1348 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	write_bin_string, .-write_bin_string
	.type	read_bin_string, @function
read_bin_string:
.LFB24:
	.loc 1 1364 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# fp, fp
	movl	%esi, -28(%rbp)	# doswap, doswap
	movq	%rdx, -40(%rbp)	# ret_s, ret_s
	.loc 1 1368 0
	movq	-24(%rbp), %rdx	# fp, tmp67
	leaq	-12(%rbp), %rax	#, tmp68
	movq	%rdx, %rcx	# tmp67,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp68,
	call	fread	#
	testq	%rax, %rax	# D.9452
	jne	.L416	#,
	.loc 1 1368 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.9451
	jmp	.L420	#
.L416:
	.loc 1 1369 0 is_stmt 1
	cmpl	$0, -28(%rbp)	#, doswap
	je	.L418	#,
	.loc 1 1369 0 is_stmt 0 discriminator 1
	leaq	-12(%rbp), %rax	#, tmp69
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp69,
	call	byteswap	#
.L418:
	.loc 1 1370 0 is_stmt 1
	movl	-12(%rbp), %eax	# len, len.96
	cltq
	movq	%rax, %rdx	# D.9452,
	movl	$1370, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_malloc	#
	movq	%rax, -8(%rbp)	# tmp70, s
	.loc 1 1371 0
	movl	-12(%rbp), %eax	# len, len.97
	movslq	%eax, %rdx	# len.97, D.9452
	movq	-24(%rbp), %rcx	# fp, tmp71
	movq	-8(%rbp), %rax	# s, tmp72
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp72,
	call	fread	#
	testq	%rax, %rax	# D.9452
	jne	.L419	#,
	.loc 1 1373 0
	movq	-8(%rbp), %rax	# s, tmp73
	movq	%rax, %rdi	# tmp73,
	call	free	#
	.loc 1 1374 0
	movl	$0, %eax	#, D.9451
	jmp	.L420	#
.L419:
	.loc 1 1377 0
	movq	-40(%rbp), %rax	# ret_s, tmp74
	movq	-8(%rbp), %rdx	# s, tmp75
	movq	%rdx, (%rax)	# tmp75, *ret_s_13(D)
	.loc 1 1378 0
	movl	$1, %eax	#, D.9451
.L420:
	.loc 1 1379 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	read_bin_string, .-read_bin_string
	.section	.rodata
.LC91:
	.string	"\n"
.LC92:
	.string	"%s%s\n"
	.text
	.type	multiline, @function
multiline:
.LFB25:
	.loc 1 1404 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# fp, fp
	movq	%rsi, -32(%rbp)	# pfx, pfx
	movq	%rdx, -40(%rbp)	# s, s
	.loc 1 1408 0
	cmpq	$0, -40(%rbp)	#, s
	jne	.L422	#,
	.loc 1 1408 0 is_stmt 0 discriminator 1
	jmp	.L421	#
.L422:
	.loc 1 1409 0 is_stmt 1
	movq	-40(%rbp), %rax	# s, tmp59
	movq	%rax, %rdi	# tmp59,
	call	Strdup	#
	movq	%rax, -8(%rbp)	# tmp60, buf
	.loc 1 1410 0
	movq	-8(%rbp), %rax	# buf, tmp61
	movl	$.LC91, %esi	#,
	movq	%rax, %rdi	# tmp61,
	call	strtok	#
	movq	%rax, -16(%rbp)	# tmp62, sptr
	.loc 1 1411 0
	jmp	.L424	#
.L425:
	.loc 1 1413 0
	movq	-16(%rbp), %rcx	# sptr, tmp63
	movq	-32(%rbp), %rdx	# pfx, tmp64
	movq	-24(%rbp), %rax	# fp, tmp65
	movl	$.LC92, %esi	#,
	movq	%rax, %rdi	# tmp65,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 1414 0
	movl	$.LC91, %esi	#,
	movl	$0, %edi	#,
	call	strtok	#
	movq	%rax, -16(%rbp)	# tmp66, sptr
.L424:
	.loc 1 1411 0 discriminator 1
	cmpq	$0, -16(%rbp)	#, sptr
	jne	.L425	#,
	.loc 1 1416 0
	movq	-8(%rbp), %rax	# buf, tmp67
	movq	%rax, %rdi	# tmp67,
	call	free	#
.L421:
	.loc 1 1417 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	multiline, .-multiline
	.section	.rodata
	.align 8
.LC93:
	.string	"A nonbiological alphabet size of %d; so I can't convert plan9 to plan7"
	.align 8
.LC94:
	.string	"malloc failed for reading hmm in\n"
	.text
	.type	read_plan9_binhmm, @function
read_plan9_binhmm:
.LFB26:
	.loc 1 1440 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$88, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)	# fp, fp
	movl	%esi, -92(%rbp)	# version, version
	movl	%edx, -96(%rbp)	# swapped, swapped
	.loc 1 1440 0
	movq	%fs:40, %rax	#, tmp381
	movq	%rax, -24(%rbp)	# tmp381, D.9466
	xorl	%eax, %eax	# tmp381
	.loc 1 1451 0
	movq	-88(%rbp), %rdx	# fp, tmp269
	leaq	-80(%rbp), %rax	#, tmp270
	movq	%rdx, %rcx	# tmp269,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp270,
	call	fread	#
	testq	%rax, %rax	# D.9456
	jne	.L427	#,
	.loc 1 1451 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.9455
	jmp	.L478	#
.L427:
	.loc 1 1452 0 is_stmt 1
	movq	-88(%rbp), %rdx	# fp, tmp271
	leaq	-72(%rbp), %rax	#, tmp272
	movq	%rdx, %rcx	# tmp271,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp272,
	call	fread	#
	testq	%rax, %rax	# D.9456
	jne	.L429	#,
	.loc 1 1452 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.9455
	jmp	.L478	#
.L429:
	.loc 1 1453 0 is_stmt 1
	cmpl	$0, -96(%rbp)	#, swapped
	je	.L430	#,
	.loc 1 1454 0
	leaq	-80(%rbp), %rax	#, tmp273
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp273,
	call	byteswap	#
	.loc 1 1455 0
	leaq	-72(%rbp), %rax	#, tmp274
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp274,
	call	byteswap	#
.L430:
	.loc 1 1460 0
	movl	-72(%rbp), %eax	# asize, asize.98
	cmpl	$4, %eax	#, asize.98
	jne	.L431	#,
	.loc 1 1460 0 is_stmt 0 discriminator 1
	movl	$2, -68(%rbp)	#, atype
	jmp	.L432	#
.L431:
	.loc 1 1461 0 is_stmt 1
	movl	-72(%rbp), %eax	# asize, asize.99
	cmpl	$20, %eax	#, asize.99
	jne	.L433	#,
	.loc 1 1461 0 is_stmt 0 discriminator 1
	movl	$3, -68(%rbp)	#, atype
	jmp	.L432	#
.L433:
	.loc 1 1462 0 is_stmt 1
	movl	-72(%rbp), %eax	# asize, asize.100
	movl	%eax, %esi	# asize.100,
	movl	$.LC93, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L432:
	.loc 1 1463 0
	movl	Alphabet_type(%rip), %eax	# Alphabet_type, Alphabet_type.101
	testl	%eax, %eax	# Alphabet_type.101
	jne	.L434	#,
	.loc 1 1463 0 is_stmt 0 discriminator 1
	movl	-68(%rbp), %eax	# atype, atype.102
	movl	%eax, %edi	# atype.102,
	call	SetAlphabet	#
	jmp	.L435	#
.L434:
	.loc 1 1464 0 is_stmt 1
	movl	-68(%rbp), %edx	# atype, atype.103
	movl	Alphabet_type(%rip), %eax	# Alphabet_type, Alphabet_type.104
	cmpl	%eax, %edx	# Alphabet_type.104, atype.103
	je	.L435	#,
	.loc 1 1465 0
	movl	-68(%rbp), %eax	# atype, atype.105
	movl	%eax, %edi	# atype.105,
	call	AlphabetType2String	#
	movq	%rax, %rbx	#, D.9457
	movl	Alphabet_type(%rip), %eax	# Alphabet_type, Alphabet_type.106
	movl	%eax, %edi	# Alphabet_type.106,
	call	AlphabetType2String	#
	movq	%rbx, %rdx	# D.9457,
	movq	%rax, %rsi	# D.9457,
	movl	$.LC65, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L435:
	.loc 1 1468 0
	movl	-80(%rbp), %eax	# M, M.107
	movl	%eax, %edi	# M.107,
	call	P9AllocHMM	#
	movq	%rax, -56(%rbp)	# tmp275, hmm
	cmpq	$0, -56(%rbp)	#, hmm
	jne	.L436	#,
	.loc 1 1469 0
	movl	$.LC94, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L436:
	.loc 1 1472 0
	cmpl	$7, -92(%rbp)	#, version
	jne	.L437	#,
	.loc 1 1473 0
	movq	-88(%rbp), %rdx	# fp, tmp276
	leaq	-76(%rbp), %rax	#, tmp277
	movq	%rdx, %rcx	# tmp276,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp277,
	call	fread	#
	testq	%rax, %rax	# D.9456
	jne	.L438	#,
	.loc 1 1473 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.9455
	jmp	.L478	#
.L438:
	.loc 1 1474 0 is_stmt 1
	cmpl	$0, -96(%rbp)	#, swapped
	je	.L439	#,
	.loc 1 1474 0 is_stmt 0 discriminator 1
	leaq	-76(%rbp), %rax	#, tmp278
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp278,
	call	byteswap	#
.L439:
	.loc 1 1475 0 is_stmt 1
	movl	-76(%rbp), %eax	# len, len.108
	addl	$1, %eax	#, D.9458
	movslq	%eax, %rdx	# D.9458, D.9456
	movq	-56(%rbp), %rax	# hmm, tmp279
	movq	112(%rax), %rax	# hmm_24->name, D.9457
	movq	%rdx, %rcx	# D.9456,
	movq	%rax, %rdx	# D.9457,
	movl	$1475, %esi	#,
	movl	$.LC0, %edi	#,
	call	sre_realloc	#
	movq	-56(%rbp), %rdx	# hmm, tmp280
	movq	%rax, 112(%rdx)	# D.9459, hmm_24->name
	.loc 1 1476 0
	movl	-76(%rbp), %eax	# len, len.109
	movslq	%eax, %rdx	# len.109, D.9456
	movq	-56(%rbp), %rax	# hmm, tmp281
	movq	112(%rax), %rax	# hmm_24->name, D.9457
	movq	-88(%rbp), %rcx	# fp, tmp282
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.9457,
	call	fread	#
	testq	%rax, %rax	# D.9456
	jne	.L440	#,
	.loc 1 1476 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.9455
	jmp	.L478	#
.L440:
	.loc 1 1477 0 is_stmt 1
	movq	-56(%rbp), %rax	# hmm, tmp283
	movq	112(%rax), %rdx	# hmm_24->name, D.9457
	movl	-76(%rbp), %eax	# len, len.110
	cltq
	addq	%rdx, %rax	# D.9457, D.9457
	movb	$0, (%rax)	#, *_41
.L437:
	.loc 1 1481 0
	movq	-88(%rbp), %rdx	# fp, tmp284
	leaq	-68(%rbp), %rax	#, tmp285
	movq	%rdx, %rcx	# tmp284,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# tmp285,
	call	fread	#
	testq	%rax, %rax	# D.9456
	jne	.L441	#,
	.loc 1 1481 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.9455
	jmp	.L478	#
.L441:
	.loc 1 1482 0 is_stmt 1
	movl	Alphabet_size(%rip), %eax	# Alphabet_size, Alphabet_size.111
	movslq	%eax, %rdx	# Alphabet_size.111, D.9456
	movq	-88(%rbp), %rcx	# fp, tmp286
	leaq	-48(%rbp), %rax	#, tmp287
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp287,
	call	fread	#
	testq	%rax, %rax	# D.9456
	jne	.L442	#,
	.loc 1 1482 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.9455
	jmp	.L478	#
.L442:
	.loc 1 1485 0 is_stmt 1
	cmpl	$1, -92(%rbp)	#, version
	jne	.L443	#,
	.loc 1 1486 0
	movl	Alphabet_size(%rip), %eax	# Alphabet_size, Alphabet_size.112
	cltq
	salq	$2, %rax	#, D.9456
	movq	%rax, %rcx	# D.9456, D.9461
	movq	-88(%rbp), %rax	# fp, tmp288
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# D.9461,
	movq	%rax, %rdi	# tmp288,
	call	fseek	#
.L443:
	.loc 1 1490 0
	cmpl	$5, -92(%rbp)	#, version
	je	.L444	#,
	.loc 1 1490 0 is_stmt 0 discriminator 1
	cmpl	$7, -92(%rbp)	#, version
	jne	.L445	#,
.L444:
	.loc 1 1492 0 is_stmt 1
	movq	-56(%rbp), %rax	# hmm, tmp289
	leaq	144(%rax), %rdi	#, D.9462
	movq	-88(%rbp), %rax	# fp, tmp290
	movq	%rax, %rcx	# tmp290,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	call	fread	#
	testq	%rax, %rax	# D.9456
	jne	.L446	#,
	.loc 1 1492 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.9455
	jmp	.L478	#
.L446:
	.loc 1 1493 0 is_stmt 1
	cmpl	$0, -96(%rbp)	#, swapped
	je	.L447	#,
	.loc 1 1493 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# hmm, tmp291
	addq	$144, %rax	#, D.9462
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.9462,
	call	byteswap	#
.L447:
	.loc 1 1494 0 is_stmt 1
	movq	-56(%rbp), %rax	# hmm, tmp292
	movl	144(%rax), %eax	# hmm_24->flags, D.9458
	andl	$1, %eax	#, D.9458
	testl	%eax, %eax	# D.9458
	je	.L448	#,
	.loc 1 1495 0 discriminator 1
	movq	-56(%rbp), %rax	# hmm, tmp293
	movl	(%rax), %eax	# hmm_24->M, D.9458
	addl	$1, %eax	#, D.9458
	movslq	%eax, %rdx	# D.9458, D.9456
	movq	-56(%rbp), %rax	# hmm, tmp294
	movq	120(%rax), %rax	# hmm_24->ref, D.9457
	movq	-88(%rbp), %rcx	# fp, tmp295
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.9457,
	call	fread	#
	.loc 1 1494 0 discriminator 1
	testq	%rax, %rax	# D.9456
	jne	.L448	#,
	.loc 1 1495 0
	movl	$0, %eax	#, D.9455
	jmp	.L478	#
.L448:
	.loc 1 1496 0
	movq	-56(%rbp), %rax	# hmm, tmp296
	movq	120(%rax), %rdx	# hmm_24->ref, D.9457
	movq	-56(%rbp), %rax	# hmm, tmp297
	movl	(%rax), %eax	# hmm_24->M, D.9458
	cltq
	addq	$1, %rax	#, D.9460
	addq	%rdx, %rax	# D.9457, D.9457
	movb	$0, (%rax)	#, *_68
	.loc 1 1497 0
	movq	-56(%rbp), %rax	# hmm, tmp298
	movl	144(%rax), %eax	# hmm_24->flags, D.9458
	andl	$2, %eax	#, D.9458
	testl	%eax, %eax	# D.9458
	je	.L449	#,
	.loc 1 1498 0 discriminator 1
	movq	-56(%rbp), %rax	# hmm, tmp299
	movl	(%rax), %eax	# hmm_24->M, D.9458
	addl	$1, %eax	#, D.9458
	movslq	%eax, %rdx	# D.9458, D.9456
	movq	-56(%rbp), %rax	# hmm, tmp300
	movq	128(%rax), %rax	# hmm_24->cs, D.9457
	movq	-88(%rbp), %rcx	# fp, tmp301
	movl	$1, %esi	#,
	movq	%rax, %rdi	# D.9457,
	call	fread	#
	.loc 1 1497 0 discriminator 1
	testq	%rax, %rax	# D.9456
	jne	.L449	#,
	.loc 1 1498 0
	movl	$0, %eax	#, D.9455
	jmp	.L478	#
.L449:
	.loc 1 1499 0
	movq	-56(%rbp), %rax	# hmm, tmp302
	movq	128(%rax), %rdx	# hmm_24->cs, D.9457
	movq	-56(%rbp), %rax	# hmm, tmp303
	movl	(%rax), %eax	# hmm_24->M, D.9458
	cltq
	addq	$1, %rax	#, D.9460
	addq	%rdx, %rax	# D.9457, D.9457
	movb	$0, (%rax)	#, *_81
.L445:
	.loc 1 1504 0
	cmpl	$7, -92(%rbp)	#, version
	jne	.L450	#,
	.loc 1 1506 0
	movl	Alphabet_size(%rip), %eax	# Alphabet_size, Alphabet_size.113
	cltq
	movq	-56(%rbp), %rdx	# hmm, tmp304
	leaq	32(%rdx), %rdi	#, D.9463
	movq	-88(%rbp), %rdx	# fp, tmp305
	movq	%rdx, %rcx	# tmp305,
	movq	%rax, %rdx	# D.9456,
	movl	$4, %esi	#,
	call	fread	#
	testq	%rax, %rax	# D.9456
	jne	.L451	#,
	.loc 1 1506 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.9455
	jmp	.L478	#
.L451:
	.loc 1 1507 0 is_stmt 1
	cmpl	$0, -96(%rbp)	#, swapped
	je	.L452	#,
	.loc 1 1508 0
	movl	$0, -60(%rbp)	#, x
	jmp	.L453	#
.L454:
	.loc 1 1509 0 discriminator 2
	movl	-60(%rbp), %eax	# x, tmp307
	cltq
	addq	$8, %rax	#, tmp308
	leaq	0(,%rax,4), %rdx	#, tmp309
	movq	-56(%rbp), %rax	# hmm, tmp310
	addq	%rdx, %rax	# tmp309, D.9464
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.9464,
	call	byteswap	#
	.loc 1 1508 0 discriminator 2
	addl	$1, -60(%rbp)	#, x
.L453:
	.loc 1 1508 0 is_stmt 0 discriminator 1
	movl	Alphabet_size(%rip), %eax	# Alphabet_size, Alphabet_size.114
	cmpl	%eax, -60(%rbp)	# Alphabet_size.114, x
	jl	.L454	#,
	jmp	.L452	#
.L450:
	.loc 1 1511 0 is_stmt 1
	movq	-56(%rbp), %rax	# hmm, tmp311
	addq	$32, %rax	#, D.9463
	movq	%rax, %rdi	# D.9463,
	call	P9DefaultNullModel	#
.L452:
	.loc 1 1514 0
	movl	$0, -64(%rbp)	#, k
	jmp	.L455	#
.L477:
	.loc 1 1517 0
	movq	-56(%rbp), %rax	# hmm, tmp312
	movq	16(%rax), %rdx	# hmm_24->mat, D.9465
	movl	-64(%rbp), %eax	# k, tmp313
	cltq
	imulq	$92, %rax, %rax	#, D.9456, D.9456
	addq	%rdx, %rax	# D.9465, D.9465
	movq	-88(%rbp), %rdx	# fp, tmp314
	movq	%rdx, %rcx	# tmp314,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.9464,
	call	fread	#
	testq	%rax, %rax	# D.9456
	jne	.L456	#,
	.loc 1 1517 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.9455
	jmp	.L478	#
.L456:
	.loc 1 1518 0 is_stmt 1
	movq	-56(%rbp), %rax	# hmm, tmp315
	movq	16(%rax), %rdx	# hmm_24->mat, D.9465
	movl	-64(%rbp), %eax	# k, tmp316
	cltq
	imulq	$92, %rax, %rax	#, D.9456, D.9456
	addq	%rdx, %rax	# D.9465, D.9465
	leaq	8(%rax), %rdi	#, D.9464
	movq	-88(%rbp), %rax	# fp, tmp317
	movq	%rax, %rcx	# tmp317,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	call	fread	#
	testq	%rax, %rax	# D.9456
	jne	.L457	#,
	.loc 1 1518 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.9455
	jmp	.L478	#
.L457:
	.loc 1 1519 0 is_stmt 1
	movq	-56(%rbp), %rax	# hmm, tmp318
	movq	16(%rax), %rdx	# hmm_24->mat, D.9465
	movl	-64(%rbp), %eax	# k, tmp319
	cltq
	imulq	$92, %rax, %rax	#, D.9456, D.9456
	addq	%rdx, %rax	# D.9465, D.9465
	leaq	4(%rax), %rdi	#, D.9464
	movq	-88(%rbp), %rax	# fp, tmp320
	movq	%rax, %rcx	# tmp320,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	call	fread	#
	testq	%rax, %rax	# D.9456
	jne	.L458	#,
	.loc 1 1519 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.9455
	jmp	.L478	#
.L458:
	.loc 1 1520 0 is_stmt 1
	movl	Alphabet_size(%rip), %eax	# Alphabet_size, Alphabet_size.115
	cltq
	movq	-56(%rbp), %rdx	# hmm, tmp321
	movq	16(%rdx), %rcx	# hmm_24->mat, D.9465
	movl	-64(%rbp), %edx	# k, tmp322
	movslq	%edx, %rdx	# tmp322, D.9456
	imulq	$92, %rdx, %rdx	#, D.9456, D.9456
	addq	%rcx, %rdx	# D.9465, D.9465
	leaq	12(%rdx), %rdi	#, D.9463
	movq	-88(%rbp), %rdx	# fp, tmp323
	movq	%rdx, %rcx	# tmp323,
	movq	%rax, %rdx	# D.9456,
	movl	$4, %esi	#,
	call	fread	#
	testq	%rax, %rax	# D.9456
	jne	.L459	#,
	.loc 1 1520 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.9455
	jmp	.L478	#
.L459:
	.loc 1 1522 0 is_stmt 1
	cmpl	$0, -96(%rbp)	#, swapped
	je	.L460	#,
	.loc 1 1523 0
	movq	-56(%rbp), %rax	# hmm, tmp324
	movq	16(%rax), %rdx	# hmm_24->mat, D.9465
	movl	-64(%rbp), %eax	# k, tmp325
	cltq
	imulq	$92, %rax, %rax	#, D.9456, D.9456
	addq	%rdx, %rax	# D.9465, D.9465
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.9464,
	call	byteswap	#
	.loc 1 1524 0
	movq	-56(%rbp), %rax	# hmm, tmp326
	movq	16(%rax), %rdx	# hmm_24->mat, D.9465
	movl	-64(%rbp), %eax	# k, tmp327
	cltq
	imulq	$92, %rax, %rax	#, D.9456, D.9456
	addq	%rdx, %rax	# D.9465, D.9465
	addq	$8, %rax	#, D.9464
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.9464,
	call	byteswap	#
	.loc 1 1525 0
	movq	-56(%rbp), %rax	# hmm, tmp328
	movq	16(%rax), %rdx	# hmm_24->mat, D.9465
	movl	-64(%rbp), %eax	# k, tmp329
	cltq
	imulq	$92, %rax, %rax	#, D.9456, D.9456
	addq	%rdx, %rax	# D.9465, D.9465
	addq	$4, %rax	#, D.9464
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.9464,
	call	byteswap	#
	.loc 1 1526 0
	movl	$0, -60(%rbp)	#, x
	jmp	.L461	#
.L462:
	.loc 1 1527 0 discriminator 2
	movq	-56(%rbp), %rax	# hmm, tmp330
	movq	16(%rax), %rdx	# hmm_24->mat, D.9465
	movl	-64(%rbp), %eax	# k, tmp331
	cltq
	imulq	$92, %rax, %rax	#, D.9456, D.9456
	addq	%rax, %rdx	# D.9456, D.9465
	movl	-60(%rbp), %eax	# x, tmp333
	cltq
	salq	$2, %rax	#, tmp334
	addq	%rdx, %rax	# D.9465, tmp335
	addq	$12, %rax	#, D.9464
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.9464,
	call	byteswap	#
	.loc 1 1526 0 discriminator 2
	addl	$1, -60(%rbp)	#, x
.L461:
	.loc 1 1526 0 is_stmt 0 discriminator 1
	movl	Alphabet_size(%rip), %eax	# Alphabet_size, Alphabet_size.116
	cmpl	%eax, -60(%rbp)	# Alphabet_size.116, x
	jl	.L462	#,
.L460:
	.loc 1 1531 0 is_stmt 1
	cmpl	$1, -92(%rbp)	#, version
	jne	.L463	#,
	.loc 1 1532 0
	movl	Alphabet_size(%rip), %eax	# Alphabet_size, Alphabet_size.117
	addl	$3, %eax	#, D.9458
	cltq
	salq	$2, %rax	#, D.9456
	movq	%rax, %rcx	# D.9456, D.9461
	movq	-88(%rbp), %rax	# fp, tmp336
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# D.9461,
	movq	%rax, %rdi	# tmp336,
	call	fseek	#
.L463:
	.loc 1 1535 0
	movq	-56(%rbp), %rax	# hmm, tmp337
	movq	24(%rax), %rdx	# hmm_24->del, D.9465
	movl	-64(%rbp), %eax	# k, tmp338
	cltq
	imulq	$92, %rax, %rax	#, D.9456, D.9456
	addq	%rdx, %rax	# D.9465, D.9465
	movq	-88(%rbp), %rdx	# fp, tmp339
	movq	%rdx, %rcx	# tmp339,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.9464,
	call	fread	#
	testq	%rax, %rax	# D.9456
	jne	.L464	#,
	.loc 1 1535 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.9455
	jmp	.L478	#
.L464:
	.loc 1 1536 0 is_stmt 1
	movq	-56(%rbp), %rax	# hmm, tmp340
	movq	24(%rax), %rdx	# hmm_24->del, D.9465
	movl	-64(%rbp), %eax	# k, tmp341
	cltq
	imulq	$92, %rax, %rax	#, D.9456, D.9456
	addq	%rdx, %rax	# D.9465, D.9465
	leaq	8(%rax), %rdi	#, D.9464
	movq	-88(%rbp), %rax	# fp, tmp342
	movq	%rax, %rcx	# tmp342,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	call	fread	#
	testq	%rax, %rax	# D.9456
	jne	.L465	#,
	.loc 1 1536 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.9455
	jmp	.L478	#
.L465:
	.loc 1 1537 0 is_stmt 1
	movq	-56(%rbp), %rax	# hmm, tmp343
	movq	24(%rax), %rdx	# hmm_24->del, D.9465
	movl	-64(%rbp), %eax	# k, tmp344
	cltq
	imulq	$92, %rax, %rax	#, D.9456, D.9456
	addq	%rdx, %rax	# D.9465, D.9465
	leaq	4(%rax), %rdi	#, D.9464
	movq	-88(%rbp), %rax	# fp, tmp345
	movq	%rax, %rcx	# tmp345,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	call	fread	#
	testq	%rax, %rax	# D.9456
	jne	.L466	#,
	.loc 1 1537 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.9455
	jmp	.L478	#
.L466:
	.loc 1 1538 0 is_stmt 1
	cmpl	$0, -96(%rbp)	#, swapped
	je	.L467	#,
	.loc 1 1539 0
	movq	-56(%rbp), %rax	# hmm, tmp346
	movq	24(%rax), %rdx	# hmm_24->del, D.9465
	movl	-64(%rbp), %eax	# k, tmp347
	cltq
	imulq	$92, %rax, %rax	#, D.9456, D.9456
	addq	%rdx, %rax	# D.9465, D.9465
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.9464,
	call	byteswap	#
	.loc 1 1540 0
	movq	-56(%rbp), %rax	# hmm, tmp348
	movq	24(%rax), %rdx	# hmm_24->del, D.9465
	movl	-64(%rbp), %eax	# k, tmp349
	cltq
	imulq	$92, %rax, %rax	#, D.9456, D.9456
	addq	%rdx, %rax	# D.9465, D.9465
	addq	$8, %rax	#, D.9464
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.9464,
	call	byteswap	#
	.loc 1 1541 0
	movq	-56(%rbp), %rax	# hmm, tmp350
	movq	24(%rax), %rdx	# hmm_24->del, D.9465
	movl	-64(%rbp), %eax	# k, tmp351
	cltq
	imulq	$92, %rax, %rax	#, D.9456, D.9456
	addq	%rdx, %rax	# D.9465, D.9465
	addq	$4, %rax	#, D.9464
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.9464,
	call	byteswap	#
.L467:
	.loc 1 1545 0
	cmpl	$1, -92(%rbp)	#, version
	jne	.L468	#,
	.loc 1 1546 0
	movq	-88(%rbp), %rax	# fp, tmp352
	movl	$1, %edx	#,
	movl	$12, %esi	#,
	movq	%rax, %rdi	# tmp352,
	call	fseek	#
.L468:
	.loc 1 1549 0
	movq	-56(%rbp), %rax	# hmm, tmp353
	movq	8(%rax), %rdx	# hmm_24->ins, D.9465
	movl	-64(%rbp), %eax	# k, tmp354
	cltq
	imulq	$92, %rax, %rax	#, D.9456, D.9456
	addq	%rdx, %rax	# D.9465, D.9465
	movq	-88(%rbp), %rdx	# fp, tmp355
	movq	%rdx, %rcx	# tmp355,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.9464,
	call	fread	#
	testq	%rax, %rax	# D.9456
	jne	.L469	#,
	.loc 1 1549 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.9455
	jmp	.L478	#
.L469:
	.loc 1 1550 0 is_stmt 1
	movq	-56(%rbp), %rax	# hmm, tmp356
	movq	8(%rax), %rdx	# hmm_24->ins, D.9465
	movl	-64(%rbp), %eax	# k, tmp357
	cltq
	imulq	$92, %rax, %rax	#, D.9456, D.9456
	addq	%rdx, %rax	# D.9465, D.9465
	leaq	8(%rax), %rdi	#, D.9464
	movq	-88(%rbp), %rax	# fp, tmp358
	movq	%rax, %rcx	# tmp358,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	call	fread	#
	testq	%rax, %rax	# D.9456
	jne	.L470	#,
	.loc 1 1550 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.9455
	jmp	.L478	#
.L470:
	.loc 1 1551 0 is_stmt 1
	movq	-56(%rbp), %rax	# hmm, tmp359
	movq	8(%rax), %rdx	# hmm_24->ins, D.9465
	movl	-64(%rbp), %eax	# k, tmp360
	cltq
	imulq	$92, %rax, %rax	#, D.9456, D.9456
	addq	%rdx, %rax	# D.9465, D.9465
	leaq	4(%rax), %rdi	#, D.9464
	movq	-88(%rbp), %rax	# fp, tmp361
	movq	%rax, %rcx	# tmp361,
	movl	$1, %edx	#,
	movl	$4, %esi	#,
	call	fread	#
	testq	%rax, %rax	# D.9456
	jne	.L471	#,
	.loc 1 1551 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.9455
	jmp	.L478	#
.L471:
	.loc 1 1552 0 is_stmt 1
	movl	Alphabet_size(%rip), %eax	# Alphabet_size, Alphabet_size.118
	cltq
	movq	-56(%rbp), %rdx	# hmm, tmp362
	movq	8(%rdx), %rcx	# hmm_24->ins, D.9465
	movl	-64(%rbp), %edx	# k, tmp363
	movslq	%edx, %rdx	# tmp363, D.9456
	imulq	$92, %rdx, %rdx	#, D.9456, D.9456
	addq	%rcx, %rdx	# D.9465, D.9465
	leaq	12(%rdx), %rdi	#, D.9463
	movq	-88(%rbp), %rdx	# fp, tmp364
	movq	%rdx, %rcx	# tmp364,
	movq	%rax, %rdx	# D.9456,
	movl	$4, %esi	#,
	call	fread	#
	testq	%rax, %rax	# D.9456
	jne	.L472	#,
	.loc 1 1552 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.9455
	jmp	.L478	#
.L472:
	.loc 1 1554 0 is_stmt 1
	cmpl	$0, -96(%rbp)	#, swapped
	je	.L473	#,
	.loc 1 1555 0
	movq	-56(%rbp), %rax	# hmm, tmp365
	movq	8(%rax), %rdx	# hmm_24->ins, D.9465
	movl	-64(%rbp), %eax	# k, tmp366
	cltq
	imulq	$92, %rax, %rax	#, D.9456, D.9456
	addq	%rdx, %rax	# D.9465, D.9465
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.9464,
	call	byteswap	#
	.loc 1 1556 0
	movq	-56(%rbp), %rax	# hmm, tmp367
	movq	8(%rax), %rdx	# hmm_24->ins, D.9465
	movl	-64(%rbp), %eax	# k, tmp368
	cltq
	imulq	$92, %rax, %rax	#, D.9456, D.9456
	addq	%rdx, %rax	# D.9465, D.9465
	addq	$8, %rax	#, D.9464
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.9464,
	call	byteswap	#
	.loc 1 1557 0
	movq	-56(%rbp), %rax	# hmm, tmp369
	movq	8(%rax), %rdx	# hmm_24->ins, D.9465
	movl	-64(%rbp), %eax	# k, tmp370
	cltq
	imulq	$92, %rax, %rax	#, D.9456, D.9456
	addq	%rdx, %rax	# D.9465, D.9465
	addq	$4, %rax	#, D.9464
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.9464,
	call	byteswap	#
	.loc 1 1558 0
	movl	$0, -60(%rbp)	#, x
	jmp	.L474	#
.L475:
	.loc 1 1559 0 discriminator 2
	movq	-56(%rbp), %rax	# hmm, tmp371
	movq	8(%rax), %rdx	# hmm_24->ins, D.9465
	movl	-64(%rbp), %eax	# k, tmp372
	cltq
	imulq	$92, %rax, %rax	#, D.9456, D.9456
	addq	%rax, %rdx	# D.9456, D.9465
	movl	-60(%rbp), %eax	# x, tmp374
	cltq
	salq	$2, %rax	#, tmp375
	addq	%rdx, %rax	# D.9465, tmp376
	addq	$12, %rax	#, D.9464
	movl	$4, %esi	#,
	movq	%rax, %rdi	# D.9464,
	call	byteswap	#
	.loc 1 1558 0 discriminator 2
	addl	$1, -60(%rbp)	#, x
.L474:
	.loc 1 1558 0 is_stmt 0 discriminator 1
	movl	Alphabet_size(%rip), %eax	# Alphabet_size, Alphabet_size.119
	cmpl	%eax, -60(%rbp)	# Alphabet_size.119, x
	jl	.L475	#,
.L473:
	.loc 1 1563 0 is_stmt 1
	cmpl	$1, -92(%rbp)	#, version
	jne	.L476	#,
	.loc 1 1564 0
	movl	Alphabet_size(%rip), %eax	# Alphabet_size, Alphabet_size.120
	addl	$3, %eax	#, D.9458
	cltq
	salq	$2, %rax	#, D.9456
	movq	%rax, %rcx	# D.9456, D.9461
	movq	-88(%rbp), %rax	# fp, tmp377
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# D.9461,
	movq	%rax, %rdi	# tmp377,
	call	fseek	#
.L476:
	.loc 1 1514 0
	addl	$1, -64(%rbp)	#, k
.L455:
	.loc 1 1514 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# hmm, tmp378
	movl	(%rax), %eax	# hmm_24->M, D.9458
	cmpl	-64(%rbp), %eax	# k, D.9458
	jge	.L477	#,
	.loc 1 1566 0 is_stmt 1
	movq	-56(%rbp), %rax	# hmm, tmp379
	movq	%rax, %rdi	# tmp379,
	call	P9Renormalize	#
	.loc 1 1567 0
	movq	-56(%rbp), %rax	# hmm, D.9455
.L478:
	.loc 1 1568 0
	movq	-24(%rbp), %rbx	# D.9466, tmp382
	xorq	%fs:40, %rbx	#, tmp382
	je	.L479	#,
	call	__stack_chk_fail	#
.L479:
	addq	$88, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	read_plan9_binhmm, .-read_plan9_binhmm
	.section	.rodata
.LC95:
	.string	"###MATCH_STATE"
.LC96:
	.string	"###INSERT_STATE"
.LC97:
	.string	"###DELETE_STATE"
	.text
	.type	read_plan9_aschmm, @function
read_plan9_aschmm:
.LFB27:
	.loc 1 1586 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$600, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -600(%rbp)	# fp, fp
	movl	%esi, -604(%rbp)	# version, version
	.loc 1 1586 0
	movq	%fs:40, %rax	#, tmp378
	movq	%rax, -24(%rbp)	# tmp378, D.9482
	xorl	%eax, %eax	# tmp378
	.loc 1 1598 0
	movq	-600(%rbp), %rdx	# fp, tmp223
	leaq	-544(%rbp), %rax	#, tmp224
	movl	$512, %esi	#,
	movq	%rax, %rdi	# tmp224,
	call	fgets	#
	testq	%rax, %rax	# D.9470
	jne	.L481	#,
	.loc 1 1598 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.9469
	jmp	.L561	#
.L481:
	.loc 1 1599 0 is_stmt 1
	leaq	-544(%rbp), %rax	#, tmp225
	movl	$.LC72, %esi	#,
	movq	%rax, %rdi	# tmp225,
	call	strtok	#
	movq	%rax, -568(%rbp)	# tmp226, s
	cmpq	$0, -568(%rbp)	#, s
	jne	.L483	#,
	.loc 1 1599 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.9469
	jmp	.L561	#
.L483:
	.loc 1 1600 0 is_stmt 1
	call	__ctype_b_loc	#
	movq	(%rax), %rdx	# *_16, D.9472
	movq	-568(%rbp), %rax	# s, tmp227
	movzbl	(%rax), %eax	# *s_14, D.9473
	movsbq	%al, %rax	# D.9473, D.9474
	addq	%rax, %rax	# D.9474
	addq	%rdx, %rax	# D.9472, D.9472
	movzwl	(%rax), %eax	# *_21, D.9475
	movzwl	%ax, %eax	# D.9475, D.9476
	andl	$2048, %eax	#, D.9476
	testl	%eax, %eax	# D.9476
	jne	.L484	#,
	.loc 1 1600 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.9469
	jmp	.L561	#
.L484:
	.loc 1 1601 0 is_stmt 1
	movq	-568(%rbp), %rax	# s, tmp228
	movq	%rax, %rdi	# tmp228,
	call	atoi	#
	movl	%eax, -580(%rbp)	# tmp229, M
	.loc 1 1603 0
	movq	-600(%rbp), %rdx	# fp, tmp230
	leaq	-544(%rbp), %rax	#, tmp231
	movl	$512, %esi	#,
	movq	%rax, %rdi	# tmp231,
	call	fgets	#
	testq	%rax, %rax	# D.9470
	jne	.L485	#,
	.loc 1 1603 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.9469
	jmp	.L561	#
.L485:
	.loc 1 1604 0 is_stmt 1
	leaq	-544(%rbp), %rax	#, tmp232
	movl	$.LC72, %esi	#,
	movq	%rax, %rdi	# tmp232,
	call	strtok	#
	movq	%rax, -568(%rbp)	# tmp233, s
	cmpq	$0, -568(%rbp)	#, s
	jne	.L486	#,
	.loc 1 1604 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.9469
	jmp	.L561	#
.L486:
	.loc 1 1605 0 is_stmt 1
	call	__ctype_b_loc	#
	movq	(%rax), %rdx	# *_31, D.9472
	movq	-568(%rbp), %rax	# s, tmp234
	movzbl	(%rax), %eax	# *s_29, D.9473
	movsbq	%al, %rax	# D.9473, D.9474
	addq	%rax, %rax	# D.9474
	addq	%rdx, %rax	# D.9472, D.9472
	movzwl	(%rax), %eax	# *_36, D.9475
	movzwl	%ax, %eax	# D.9475, D.9476
	andl	$2048, %eax	#, D.9476
	testl	%eax, %eax	# D.9476
	jne	.L487	#,
	.loc 1 1605 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.9469
	jmp	.L561	#
.L487:
	.loc 1 1606 0 is_stmt 1
	movq	-568(%rbp), %rax	# s, tmp235
	movq	%rax, %rdi	# tmp235,
	call	atoi	#
	movl	%eax, -576(%rbp)	# tmp236, asize
	.loc 1 1610 0
	cmpl	$4, -576(%rbp)	#, asize
	jne	.L488	#,
	.loc 1 1610 0 is_stmt 0 discriminator 1
	movl	$2, -584(%rbp)	#, atype
	jmp	.L489	#
.L488:
	.loc 1 1611 0 is_stmt 1
	cmpl	$20, -576(%rbp)	#, asize
	jne	.L490	#,
	.loc 1 1611 0 is_stmt 0 discriminator 1
	movl	$3, -584(%rbp)	#, atype
	jmp	.L489	#
.L490:
	.loc 1 1612 0 is_stmt 1
	movl	-576(%rbp), %eax	# asize, tmp237
	movl	%eax, %esi	# tmp237,
	movl	$.LC93, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L489:
	.loc 1 1613 0
	movl	Alphabet_type(%rip), %eax	# Alphabet_type, Alphabet_type.121
	testl	%eax, %eax	# Alphabet_type.121
	jne	.L491	#,
	.loc 1 1613 0 is_stmt 0 discriminator 1
	movl	-584(%rbp), %eax	# atype, tmp238
	movl	%eax, %edi	# tmp238,
	call	SetAlphabet	#
	jmp	.L492	#
.L491:
	.loc 1 1614 0 is_stmt 1
	movl	Alphabet_type(%rip), %eax	# Alphabet_type, Alphabet_type.122
	cmpl	%eax, -584(%rbp)	# Alphabet_type.122, atype
	je	.L492	#,
	.loc 1 1615 0
	movl	-584(%rbp), %eax	# atype, tmp239
	movl	%eax, %edi	# tmp239,
	call	AlphabetType2String	#
	movq	%rax, %rbx	#, D.9470
	movl	Alphabet_type(%rip), %eax	# Alphabet_type, Alphabet_type.123
	movl	%eax, %edi	# Alphabet_type.123,
	call	AlphabetType2String	#
	movq	%rbx, %rdx	# D.9470,
	movq	%rax, %rsi	# D.9470,
	movl	$.LC65, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L492:
	.loc 1 1618 0
	movl	-580(%rbp), %eax	# M, tmp240
	movl	%eax, %edi	# tmp240,
	call	P9AllocHMM	#
	movq	%rax, -560(%rbp)	# tmp241, hmm
	cmpq	$0, -560(%rbp)	#, hmm
	jne	.L493	#,
	.loc 1 1619 0
	movl	$.LC94, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L493:
	.loc 1 1622 0
	movq	-600(%rbp), %rdx	# fp, tmp242
	leaq	-544(%rbp), %rax	#, tmp243
	movl	$512, %esi	#,
	movq	%rax, %rdi	# tmp243,
	call	fgets	#
	testq	%rax, %rax	# D.9470
	jne	.L494	#,
	.loc 1 1622 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.9469
	jmp	.L561	#
.L494:
	.loc 1 1623 0 is_stmt 1
	leaq	-544(%rbp), %rax	#, tmp244
	movl	$.LC72, %esi	#,
	movq	%rax, %rdi	# tmp244,
	call	strtok	#
	movq	%rax, -568(%rbp)	# tmp245, s
	cmpq	$0, -568(%rbp)	#, s
	jne	.L495	#,
	.loc 1 1623 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.9469
	jmp	.L561	#
.L495:
	.loc 1 1624 0 is_stmt 1
	call	__ctype_b_loc	#
	movq	(%rax), %rdx	# *_55, D.9472
	movq	-568(%rbp), %rax	# s, tmp246
	movzbl	(%rax), %eax	# *s_53, D.9473
	movsbq	%al, %rax	# D.9473, D.9474
	addq	%rax, %rax	# D.9474
	addq	%rdx, %rax	# D.9472, D.9472
	movzwl	(%rax), %eax	# *_60, D.9475
	movzwl	%ax, %eax	# D.9475, D.9476
	andl	$2048, %eax	#, D.9476
	testl	%eax, %eax	# D.9476
	jne	.L496	#,
	.loc 1 1624 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.9469
	jmp	.L561	#
.L496:
	.loc 1 1626 0 is_stmt 1
	movq	-600(%rbp), %rdx	# fp, tmp247
	leaq	-544(%rbp), %rax	#, tmp248
	movl	$512, %esi	#,
	movq	%rax, %rdi	# tmp248,
	call	fgets	#
	testq	%rax, %rax	# D.9470
	jne	.L497	#,
	.loc 1 1626 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.9469
	jmp	.L561	#
.L497:
	.loc 1 1627 0 is_stmt 1
	leaq	-544(%rbp), %rax	#, tmp249
	movl	$.LC72, %esi	#,
	movq	%rax, %rdi	# tmp249,
	call	strtok	#
	movq	%rax, -568(%rbp)	# tmp250, s
	cmpq	$0, -568(%rbp)	#, s
	jne	.L498	#,
	.loc 1 1627 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.9469
	jmp	.L561	#
.L498:
	.loc 1 1630 0 is_stmt 1
	cmpl	$2, -604(%rbp)	#, version
	jne	.L499	#,
	.loc 1 1631 0
	movl	$0, -588(%rbp)	#, i
	jmp	.L500	#
.L502:
	.loc 1 1632 0
	movq	-600(%rbp), %rdx	# fp, tmp251
	leaq	-544(%rbp), %rax	#, tmp252
	movl	$512, %esi	#,
	movq	%rax, %rdi	# tmp252,
	call	fgets	#
	testq	%rax, %rax	# D.9470
	jne	.L501	#,
	.loc 1 1632 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.9469
	jmp	.L561	#
.L501:
	.loc 1 1631 0 is_stmt 1
	addl	$1, -588(%rbp)	#, i
.L500:
	.loc 1 1631 0 is_stmt 0 discriminator 1
	movl	Alphabet_size(%rip), %eax	# Alphabet_size, Alphabet_size.124
	cmpl	%eax, -588(%rbp)	# Alphabet_size.124, i
	jl	.L502	#,
.L499:
	.loc 1 1636 0 is_stmt 1
	cmpl	$6, -604(%rbp)	#, version
	jne	.L503	#,
	.loc 1 1638 0
	movq	-600(%rbp), %rdx	# fp, tmp253
	leaq	-544(%rbp), %rax	#, tmp254
	movl	$512, %esi	#,
	movq	%rax, %rdi	# tmp254,
	call	fgets	#
	testq	%rax, %rax	# D.9470
	jne	.L504	#,
	.loc 1 1638 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.9469
	jmp	.L561	#
.L504:
	.loc 1 1639 0 is_stmt 1
	leaq	-544(%rbp), %rax	#, tmp255
	movl	$3, %edx	#,
	movl	$.LC20, %esi	#,
	movq	%rax, %rdi	# tmp255,
	call	strncmp	#
	testl	%eax, %eax	# D.9476
	jne	.L505	#,
	.loc 1 1639 0 is_stmt 0 discriminator 1
	movq	-560(%rbp), %rax	# hmm, tmp256
	movl	144(%rax), %eax	# hmm_50->flags, D.9476
	orl	$1, %eax	#, D.9476
	movl	%eax, %edx	# D.9476, D.9476
	movq	-560(%rbp), %rax	# hmm, tmp257
	movl	%edx, 144(%rax)	# D.9476, hmm_50->flags
.L505:
	.loc 1 1640 0 is_stmt 1
	movq	-600(%rbp), %rdx	# fp, tmp258
	leaq	-544(%rbp), %rax	#, tmp259
	movl	$512, %esi	#,
	movq	%rax, %rdi	# tmp259,
	call	fgets	#
	testq	%rax, %rax	# D.9470
	jne	.L506	#,
	.loc 1 1640 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.9469
	jmp	.L561	#
.L506:
	.loc 1 1641 0 is_stmt 1
	leaq	-544(%rbp), %rax	#, tmp260
	movl	$3, %edx	#,
	movl	$.LC20, %esi	#,
	movq	%rax, %rdi	# tmp260,
	call	strncmp	#
	testl	%eax, %eax	# D.9476
	jne	.L503	#,
	.loc 1 1641 0 is_stmt 0 discriminator 1
	movq	-560(%rbp), %rax	# hmm, tmp261
	movl	144(%rax), %eax	# hmm_50->flags, D.9476
	orl	$2, %eax	#, D.9476
	movl	%eax, %edx	# D.9476, D.9476
	movq	-560(%rbp), %rax	# hmm, tmp262
	movl	%edx, 144(%rax)	# D.9476, hmm_50->flags
	.loc 1 1645 0 is_stmt 1 discriminator 1
	jmp	.L507	#
.L503:
	.loc 1 1645 0 is_stmt 0
	jmp	.L507	#
.L560:
	.loc 1 1648 0 is_stmt 1
	leaq	-544(%rbp), %rax	#, tmp263
	movl	$.LC72, %esi	#,
	movq	%rax, %rdi	# tmp263,
	call	strtok	#
	movq	%rax, -552(%rbp)	# tmp264, statetype
	cmpq	$0, -552(%rbp)	#, statetype
	jne	.L508	#,
	.loc 1 1648 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.9469
	jmp	.L561	#
.L508:
	.loc 1 1649 0 is_stmt 1
	movl	$.LC72, %esi	#,
	movl	$0, %edi	#,
	call	strtok	#
	movq	%rax, -568(%rbp)	# tmp265, s
	cmpq	$0, -568(%rbp)	#, s
	jne	.L509	#,
	.loc 1 1649 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.9469
	jmp	.L561	#
.L509:
	.loc 1 1650 0 is_stmt 1
	call	__ctype_b_loc	#
	movq	(%rax), %rdx	# *_90, D.9472
	movq	-568(%rbp), %rax	# s, tmp266
	movzbl	(%rax), %eax	# *s_88, D.9473
	movsbq	%al, %rax	# D.9473, D.9474
	addq	%rax, %rax	# D.9474
	addq	%rdx, %rax	# D.9472, D.9472
	movzwl	(%rax), %eax	# *_95, D.9475
	movzwl	%ax, %eax	# D.9475, D.9476
	andl	$2048, %eax	#, D.9476
	testl	%eax, %eax	# D.9476
	jne	.L510	#,
	.loc 1 1650 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.9469
	jmp	.L561	#
.L510:
	.loc 1 1651 0 is_stmt 1
	movq	-568(%rbp), %rax	# s, tmp267
	movq	%rax, %rdi	# tmp267,
	call	atoi	#
	movl	%eax, -572(%rbp)	# tmp268, k
	.loc 1 1652 0
	cmpl	$0, -572(%rbp)	#, k
	js	.L511	#,
	.loc 1 1652 0 is_stmt 0 discriminator 2
	movq	-560(%rbp), %rax	# hmm, tmp269
	movl	(%rax), %eax	# hmm_50->M, D.9476
	addl	$1, %eax	#, D.9476
	cmpl	-572(%rbp), %eax	# k, D.9476
	jge	.L512	#,
.L511:
	.loc 1 1652 0 discriminator 1
	movl	$0, %eax	#, D.9469
	jmp	.L561	#
.L512:
	.loc 1 1654 0 is_stmt 1
	movq	-552(%rbp), %rax	# statetype, tmp270
	movl	$.LC95, %esi	#,
	movq	%rax, %rdi	# tmp270,
	call	strcmp	#
	testl	%eax, %eax	# D.9476
	jne	.L513	#,
	.loc 1 1658 0
	cmpl	$6, -604(%rbp)	#, version
	jne	.L514	#,
	.loc 1 1660 0
	movl	$.LC91, %esi	#,
	movl	$0, %edi	#,
	call	strtok	#
	movq	%rax, -568(%rbp)	# tmp271, s
	.loc 1 1661 0
	jmp	.L515	#
.L517:
	.loc 1 1661 0 is_stmt 0 discriminator 1
	addq	$1, -568(%rbp)	#, s
.L515:
	movq	-568(%rbp), %rax	# s, tmp272
	movzbl	(%rax), %eax	# *s_1, D.9473
	cmpb	$40, %al	#, D.9473
	je	.L516	#,
	.loc 1 1661 0 discriminator 2
	movq	-568(%rbp), %rax	# s, tmp273
	movzbl	(%rax), %eax	# *s_1, D.9473
	testb	%al, %al	# D.9473
	jne	.L517	#,
.L516:
	.loc 1 1662 0 is_stmt 1
	movq	-568(%rbp), %rax	# s, tmp274
	movzbl	(%rax), %eax	# *s_1, D.9473
	cmpb	$40, %al	#, D.9473
	je	.L518	#,
	.loc 1 1662 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.9469
	jmp	.L561	#
.L518:
	.loc 1 1663 0 is_stmt 1
	movq	-560(%rbp), %rax	# hmm, tmp275
	movq	120(%rax), %rdx	# hmm_50->ref, D.9470
	movl	-572(%rbp), %eax	# k, tmp276
	cltq
	addq	%rax, %rdx	# D.9477, D.9470
	movq	-568(%rbp), %rax	# s, tmp277
	movzbl	1(%rax), %eax	# MEM[(char *)s_1 + 1B], D.9473
	movb	%al, (%rdx)	# D.9473, *_112
	.loc 1 1664 0
	jmp	.L519	#
.L521:
	.loc 1 1664 0 is_stmt 0 discriminator 1
	addq	$1, -568(%rbp)	#, s
.L519:
	movq	-568(%rbp), %rax	# s, tmp278
	movzbl	(%rax), %eax	# *s_2, D.9473
	cmpb	$40, %al	#, D.9473
	je	.L520	#,
	.loc 1 1664 0 discriminator 2
	movq	-568(%rbp), %rax	# s, tmp279
	movzbl	(%rax), %eax	# *s_2, D.9473
	testb	%al, %al	# D.9473
	jne	.L521	#,
.L520:
	.loc 1 1665 0 is_stmt 1
	movq	-568(%rbp), %rax	# s, tmp280
	movzbl	(%rax), %eax	# *s_2, D.9473
	cmpb	$40, %al	#, D.9473
	je	.L522	#,
	.loc 1 1665 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.9469
	jmp	.L561	#
.L522:
	.loc 1 1666 0 is_stmt 1
	movq	-560(%rbp), %rax	# hmm, tmp281
	movq	128(%rax), %rdx	# hmm_50->cs, D.9470
	movl	-572(%rbp), %eax	# k, tmp282
	cltq
	addq	%rax, %rdx	# D.9477, D.9470
	movq	-568(%rbp), %rax	# s, tmp283
	movzbl	1(%rax), %eax	# MEM[(char *)s_2 + 1B], D.9473
	movb	%al, (%rdx)	# D.9473, *_121
.L514:
	.loc 1 1669 0
	movq	-600(%rbp), %rdx	# fp, tmp284
	leaq	-544(%rbp), %rax	#, tmp285
	movl	$512, %esi	#,
	movq	%rax, %rdi	# tmp285,
	call	fgets	#
	testq	%rax, %rax	# D.9470
	jne	.L523	#,
	.loc 1 1669 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.9469
	jmp	.L561	#
.L523:
	.loc 1 1670 0 is_stmt 1
	leaq	-544(%rbp), %rax	#, tmp286
	movl	$.LC72, %esi	#,
	movq	%rax, %rdi	# tmp286,
	call	strtok	#
	movq	%rax, -568(%rbp)	# tmp287, s
	cmpq	$0, -568(%rbp)	#, s
	jne	.L524	#,
	.loc 1 1670 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.9469
	jmp	.L561	#
.L524:
	.loc 1 1671 0 is_stmt 1
	movq	-560(%rbp), %rax	# hmm, tmp288
	movq	16(%rax), %rdx	# hmm_50->mat, D.9478
	movl	-572(%rbp), %eax	# k, tmp289
	cltq
	imulq	$92, %rax, %rax	#, D.9474, D.9474
	leaq	(%rdx,%rax), %rbx	#, D.9478
	movq	-568(%rbp), %rax	# s, tmp290
	movq	%rax, %rdi	# tmp290,
	call	atof	#
	unpcklpd	%xmm0, %xmm0	# D.9479
	cvtpd2ps	%xmm0, %xmm0	# D.9479, D.9480
	movss	%xmm0, (%rbx)	# D.9480, _130->t
	.loc 1 1673 0
	movq	-600(%rbp), %rdx	# fp, tmp291
	leaq	-544(%rbp), %rax	#, tmp292
	movl	$512, %esi	#,
	movq	%rax, %rdi	# tmp292,
	call	fgets	#
	testq	%rax, %rax	# D.9470
	jne	.L525	#,
	.loc 1 1673 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.9469
	jmp	.L561	#
.L525:
	.loc 1 1674 0 is_stmt 1
	leaq	-544(%rbp), %rax	#, tmp293
	movl	$.LC72, %esi	#,
	movq	%rax, %rdi	# tmp293,
	call	strtok	#
	movq	%rax, -568(%rbp)	# tmp294, s
	cmpq	$0, -568(%rbp)	#, s
	jne	.L526	#,
	.loc 1 1674 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.9469
	jmp	.L561	#
.L526:
	.loc 1 1675 0 is_stmt 1
	movq	-560(%rbp), %rax	# hmm, tmp295
	movq	16(%rax), %rdx	# hmm_50->mat, D.9478
	movl	-572(%rbp), %eax	# k, tmp296
	cltq
	imulq	$92, %rax, %rax	#, D.9474, D.9474
	leaq	(%rdx,%rax), %rbx	#, D.9478
	movq	-568(%rbp), %rax	# s, tmp297
	movq	%rax, %rdi	# tmp297,
	call	atof	#
	unpcklpd	%xmm0, %xmm0	# D.9479
	cvtpd2ps	%xmm0, %xmm0	# D.9479, D.9480
	movss	%xmm0, 8(%rbx)	# D.9480, _140->t
	.loc 1 1677 0
	movq	-600(%rbp), %rdx	# fp, tmp298
	leaq	-544(%rbp), %rax	#, tmp299
	movl	$512, %esi	#,
	movq	%rax, %rdi	# tmp299,
	call	fgets	#
	testq	%rax, %rax	# D.9470
	jne	.L527	#,
	.loc 1 1677 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.9469
	jmp	.L561	#
.L527:
	.loc 1 1678 0 is_stmt 1
	leaq	-544(%rbp), %rax	#, tmp300
	movl	$.LC72, %esi	#,
	movq	%rax, %rdi	# tmp300,
	call	strtok	#
	movq	%rax, -568(%rbp)	# tmp301, s
	cmpq	$0, -568(%rbp)	#, s
	jne	.L528	#,
	.loc 1 1678 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.9469
	jmp	.L561	#
.L528:
	.loc 1 1679 0 is_stmt 1
	movq	-560(%rbp), %rax	# hmm, tmp302
	movq	16(%rax), %rdx	# hmm_50->mat, D.9478
	movl	-572(%rbp), %eax	# k, tmp303
	cltq
	imulq	$92, %rax, %rax	#, D.9474, D.9474
	leaq	(%rdx,%rax), %rbx	#, D.9478
	movq	-568(%rbp), %rax	# s, tmp304
	movq	%rax, %rdi	# tmp304,
	call	atof	#
	unpcklpd	%xmm0, %xmm0	# D.9479
	cvtpd2ps	%xmm0, %xmm0	# D.9479, D.9480
	movss	%xmm0, 4(%rbx)	# D.9480, _150->t
	.loc 1 1681 0
	movl	$0, -588(%rbp)	#, i
	jmp	.L529	#
.L532:
	.loc 1 1683 0
	movq	-600(%rbp), %rdx	# fp, tmp305
	leaq	-544(%rbp), %rax	#, tmp306
	movl	$512, %esi	#,
	movq	%rax, %rdi	# tmp306,
	call	fgets	#
	testq	%rax, %rax	# D.9470
	jne	.L530	#,
	.loc 1 1683 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.9469
	jmp	.L561	#
.L530:
	.loc 1 1684 0 is_stmt 1
	leaq	-544(%rbp), %rax	#, tmp307
	movl	$.LC72, %esi	#,
	movq	%rax, %rdi	# tmp307,
	call	strtok	#
	movq	%rax, -568(%rbp)	# tmp308, s
	cmpq	$0, -568(%rbp)	#, s
	jne	.L531	#,
	.loc 1 1684 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.9469
	jmp	.L561	#
.L531:
	.loc 1 1685 0 is_stmt 1
	movq	-560(%rbp), %rax	# hmm, tmp309
	movq	16(%rax), %rdx	# hmm_50->mat, D.9478
	movl	-572(%rbp), %eax	# k, tmp310
	cltq
	imulq	$92, %rax, %rax	#, D.9474, D.9474
	leaq	(%rdx,%rax), %rbx	#, D.9478
	movq	-568(%rbp), %rax	# s, tmp311
	movq	%rax, %rdi	# tmp311,
	call	atof	#
	unpcklpd	%xmm0, %xmm0	# D.9479
	cvtpd2ps	%xmm0, %xmm0	# D.9479, D.9480
	movl	-588(%rbp), %eax	# i, tmp313
	cltq
	movss	%xmm0, 12(%rbx,%rax,4)	# D.9480, _162->p
	.loc 1 1681 0
	addl	$1, -588(%rbp)	#, i
.L529:
	.loc 1 1681 0 is_stmt 0 discriminator 1
	movl	Alphabet_size(%rip), %eax	# Alphabet_size, Alphabet_size.125
	cmpl	%eax, -588(%rbp)	# Alphabet_size.125, i
	jl	.L532	#,
	.loc 1 1689 0 is_stmt 1
	cmpl	$2, -604(%rbp)	#, version
	jne	.L507	#,
	.loc 1 1690 0
	movl	$0, -588(%rbp)	#, i
	jmp	.L533	#
.L535:
	.loc 1 1691 0
	movq	-600(%rbp), %rdx	# fp, tmp314
	leaq	-544(%rbp), %rax	#, tmp315
	movl	$512, %esi	#,
	movq	%rax, %rdi	# tmp315,
	call	fgets	#
	testq	%rax, %rax	# D.9470
	jne	.L534	#,
	.loc 1 1691 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.9469
	jmp	.L561	#
.L534:
	.loc 1 1690 0 is_stmt 1
	addl	$1, -588(%rbp)	#, i
.L533:
	.loc 1 1690 0 is_stmt 0 discriminator 1
	movl	Alphabet_size(%rip), %eax	# Alphabet_size, Alphabet_size.126
	addl	$3, %eax	#, D.9476
	cmpl	-588(%rbp), %eax	# i, D.9476
	jg	.L535	#,
	jmp	.L507	#
.L513:
	.loc 1 1694 0 is_stmt 1
	movq	-552(%rbp), %rax	# statetype, tmp316
	movl	$.LC96, %esi	#,
	movq	%rax, %rdi	# tmp316,
	call	strcmp	#
	testl	%eax, %eax	# D.9476
	jne	.L536	#,
	.loc 1 1696 0
	movq	-600(%rbp), %rdx	# fp, tmp317
	leaq	-544(%rbp), %rax	#, tmp318
	movl	$512, %esi	#,
	movq	%rax, %rdi	# tmp318,
	call	fgets	#
	testq	%rax, %rax	# D.9470
	jne	.L537	#,
	.loc 1 1696 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.9469
	jmp	.L561	#
.L537:
	.loc 1 1697 0 is_stmt 1
	leaq	-544(%rbp), %rax	#, tmp319
	movl	$.LC72, %esi	#,
	movq	%rax, %rdi	# tmp319,
	call	strtok	#
	movq	%rax, -568(%rbp)	# tmp320, s
	cmpq	$0, -568(%rbp)	#, s
	jne	.L538	#,
	.loc 1 1697 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.9469
	jmp	.L561	#
.L538:
	.loc 1 1698 0 is_stmt 1
	movq	-560(%rbp), %rax	# hmm, tmp321
	movq	8(%rax), %rdx	# hmm_50->ins, D.9478
	movl	-572(%rbp), %eax	# k, tmp322
	cltq
	imulq	$92, %rax, %rax	#, D.9474, D.9474
	leaq	(%rdx,%rax), %rbx	#, D.9478
	movq	-568(%rbp), %rax	# s, tmp323
	movq	%rax, %rdi	# tmp323,
	call	atof	#
	unpcklpd	%xmm0, %xmm0	# D.9479
	cvtpd2ps	%xmm0, %xmm0	# D.9479, D.9480
	movss	%xmm0, (%rbx)	# D.9480, _180->t
	.loc 1 1700 0
	movq	-600(%rbp), %rdx	# fp, tmp324
	leaq	-544(%rbp), %rax	#, tmp325
	movl	$512, %esi	#,
	movq	%rax, %rdi	# tmp325,
	call	fgets	#
	testq	%rax, %rax	# D.9470
	jne	.L539	#,
	.loc 1 1700 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.9469
	jmp	.L561	#
.L539:
	.loc 1 1701 0 is_stmt 1
	leaq	-544(%rbp), %rax	#, tmp326
	movl	$.LC72, %esi	#,
	movq	%rax, %rdi	# tmp326,
	call	strtok	#
	movq	%rax, -568(%rbp)	# tmp327, s
	cmpq	$0, -568(%rbp)	#, s
	jne	.L540	#,
	.loc 1 1701 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.9469
	jmp	.L561	#
.L540:
	.loc 1 1702 0 is_stmt 1
	movq	-560(%rbp), %rax	# hmm, tmp328
	movq	8(%rax), %rdx	# hmm_50->ins, D.9478
	movl	-572(%rbp), %eax	# k, tmp329
	cltq
	imulq	$92, %rax, %rax	#, D.9474, D.9474
	leaq	(%rdx,%rax), %rbx	#, D.9478
	movq	-568(%rbp), %rax	# s, tmp330
	movq	%rax, %rdi	# tmp330,
	call	atof	#
	unpcklpd	%xmm0, %xmm0	# D.9479
	cvtpd2ps	%xmm0, %xmm0	# D.9479, D.9480
	movss	%xmm0, 8(%rbx)	# D.9480, _190->t
	.loc 1 1704 0
	movq	-600(%rbp), %rdx	# fp, tmp331
	leaq	-544(%rbp), %rax	#, tmp332
	movl	$512, %esi	#,
	movq	%rax, %rdi	# tmp332,
	call	fgets	#
	testq	%rax, %rax	# D.9470
	jne	.L541	#,
	.loc 1 1704 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.9469
	jmp	.L561	#
.L541:
	.loc 1 1705 0 is_stmt 1
	leaq	-544(%rbp), %rax	#, tmp333
	movl	$.LC72, %esi	#,
	movq	%rax, %rdi	# tmp333,
	call	strtok	#
	movq	%rax, -568(%rbp)	# tmp334, s
	cmpq	$0, -568(%rbp)	#, s
	jne	.L542	#,
	.loc 1 1705 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.9469
	jmp	.L561	#
.L542:
	.loc 1 1706 0 is_stmt 1
	movq	-560(%rbp), %rax	# hmm, tmp335
	movq	8(%rax), %rdx	# hmm_50->ins, D.9478
	movl	-572(%rbp), %eax	# k, tmp336
	cltq
	imulq	$92, %rax, %rax	#, D.9474, D.9474
	leaq	(%rdx,%rax), %rbx	#, D.9478
	movq	-568(%rbp), %rax	# s, tmp337
	movq	%rax, %rdi	# tmp337,
	call	atof	#
	unpcklpd	%xmm0, %xmm0	# D.9479
	cvtpd2ps	%xmm0, %xmm0	# D.9479, D.9480
	movss	%xmm0, 4(%rbx)	# D.9480, _200->t
	.loc 1 1708 0
	movl	$0, -588(%rbp)	#, i
	jmp	.L543	#
.L546:
	.loc 1 1710 0
	movq	-600(%rbp), %rdx	# fp, tmp338
	leaq	-544(%rbp), %rax	#, tmp339
	movl	$512, %esi	#,
	movq	%rax, %rdi	# tmp339,
	call	fgets	#
	testq	%rax, %rax	# D.9470
	jne	.L544	#,
	.loc 1 1710 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.9469
	jmp	.L561	#
.L544:
	.loc 1 1711 0 is_stmt 1
	leaq	-544(%rbp), %rax	#, tmp340
	movl	$.LC72, %esi	#,
	movq	%rax, %rdi	# tmp340,
	call	strtok	#
	movq	%rax, -568(%rbp)	# tmp341, s
	cmpq	$0, -568(%rbp)	#, s
	jne	.L545	#,
	.loc 1 1711 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.9469
	jmp	.L561	#
.L545:
	.loc 1 1712 0 is_stmt 1
	movq	-560(%rbp), %rax	# hmm, tmp342
	movq	8(%rax), %rdx	# hmm_50->ins, D.9478
	movl	-572(%rbp), %eax	# k, tmp343
	cltq
	imulq	$92, %rax, %rax	#, D.9474, D.9474
	leaq	(%rdx,%rax), %rbx	#, D.9478
	movq	-568(%rbp), %rax	# s, tmp344
	movq	%rax, %rdi	# tmp344,
	call	atof	#
	unpcklpd	%xmm0, %xmm0	# D.9479
	cvtpd2ps	%xmm0, %xmm0	# D.9479, D.9480
	movl	-588(%rbp), %eax	# i, tmp346
	cltq
	movss	%xmm0, 12(%rbx,%rax,4)	# D.9480, _212->p
	.loc 1 1708 0
	addl	$1, -588(%rbp)	#, i
.L543:
	.loc 1 1708 0 is_stmt 0 discriminator 1
	movl	Alphabet_size(%rip), %eax	# Alphabet_size, Alphabet_size.127
	cmpl	%eax, -588(%rbp)	# Alphabet_size.127, i
	jl	.L546	#,
	.loc 1 1716 0 is_stmt 1
	cmpl	$2, -604(%rbp)	#, version
	jne	.L507	#,
	.loc 1 1717 0
	movl	$0, -588(%rbp)	#, i
	jmp	.L547	#
.L549:
	.loc 1 1718 0
	movq	-600(%rbp), %rdx	# fp, tmp347
	leaq	-544(%rbp), %rax	#, tmp348
	movl	$512, %esi	#,
	movq	%rax, %rdi	# tmp348,
	call	fgets	#
	testq	%rax, %rax	# D.9470
	jne	.L548	#,
	.loc 1 1718 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.9469
	jmp	.L561	#
.L548:
	.loc 1 1717 0 is_stmt 1
	addl	$1, -588(%rbp)	#, i
.L547:
	.loc 1 1717 0 is_stmt 0 discriminator 1
	movl	Alphabet_size(%rip), %eax	# Alphabet_size, Alphabet_size.128
	addl	$3, %eax	#, D.9476
	cmpl	-588(%rbp), %eax	# i, D.9476
	jg	.L549	#,
	jmp	.L507	#
.L536:
	.loc 1 1721 0 is_stmt 1
	movq	-552(%rbp), %rax	# statetype, tmp349
	movl	$.LC97, %esi	#,
	movq	%rax, %rdi	# tmp349,
	call	strcmp	#
	testl	%eax, %eax	# D.9476
	jne	.L550	#,
	.loc 1 1723 0
	movq	-600(%rbp), %rdx	# fp, tmp350
	leaq	-544(%rbp), %rax	#, tmp351
	movl	$512, %esi	#,
	movq	%rax, %rdi	# tmp351,
	call	fgets	#
	testq	%rax, %rax	# D.9470
	jne	.L551	#,
	.loc 1 1723 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.9469
	jmp	.L561	#
.L551:
	.loc 1 1724 0 is_stmt 1
	leaq	-544(%rbp), %rax	#, tmp352
	movl	$.LC72, %esi	#,
	movq	%rax, %rdi	# tmp352,
	call	strtok	#
	movq	%rax, -568(%rbp)	# tmp353, s
	cmpq	$0, -568(%rbp)	#, s
	jne	.L552	#,
	.loc 1 1724 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.9469
	jmp	.L561	#
.L552:
	.loc 1 1725 0 is_stmt 1
	movq	-560(%rbp), %rax	# hmm, tmp354
	movq	24(%rax), %rdx	# hmm_50->del, D.9478
	movl	-572(%rbp), %eax	# k, tmp355
	cltq
	imulq	$92, %rax, %rax	#, D.9474, D.9474
	leaq	(%rdx,%rax), %rbx	#, D.9478
	movq	-568(%rbp), %rax	# s, tmp356
	movq	%rax, %rdi	# tmp356,
	call	atof	#
	unpcklpd	%xmm0, %xmm0	# D.9479
	cvtpd2ps	%xmm0, %xmm0	# D.9479, D.9480
	movss	%xmm0, (%rbx)	# D.9480, _230->t
	.loc 1 1727 0
	movq	-600(%rbp), %rdx	# fp, tmp357
	leaq	-544(%rbp), %rax	#, tmp358
	movl	$512, %esi	#,
	movq	%rax, %rdi	# tmp358,
	call	fgets	#
	testq	%rax, %rax	# D.9470
	jne	.L553	#,
	.loc 1 1727 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.9469
	jmp	.L561	#
.L553:
	.loc 1 1728 0 is_stmt 1
	leaq	-544(%rbp), %rax	#, tmp359
	movl	$.LC72, %esi	#,
	movq	%rax, %rdi	# tmp359,
	call	strtok	#
	movq	%rax, -568(%rbp)	# tmp360, s
	cmpq	$0, -568(%rbp)	#, s
	jne	.L554	#,
	.loc 1 1728 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.9469
	jmp	.L561	#
.L554:
	.loc 1 1729 0 is_stmt 1
	movq	-560(%rbp), %rax	# hmm, tmp361
	movq	24(%rax), %rdx	# hmm_50->del, D.9478
	movl	-572(%rbp), %eax	# k, tmp362
	cltq
	imulq	$92, %rax, %rax	#, D.9474, D.9474
	leaq	(%rdx,%rax), %rbx	#, D.9478
	movq	-568(%rbp), %rax	# s, tmp363
	movq	%rax, %rdi	# tmp363,
	call	atof	#
	unpcklpd	%xmm0, %xmm0	# D.9479
	cvtpd2ps	%xmm0, %xmm0	# D.9479, D.9480
	movss	%xmm0, 8(%rbx)	# D.9480, _240->t
	.loc 1 1731 0
	movq	-600(%rbp), %rdx	# fp, tmp364
	leaq	-544(%rbp), %rax	#, tmp365
	movl	$512, %esi	#,
	movq	%rax, %rdi	# tmp365,
	call	fgets	#
	testq	%rax, %rax	# D.9470
	jne	.L555	#,
	.loc 1 1731 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.9469
	jmp	.L561	#
.L555:
	.loc 1 1732 0 is_stmt 1
	leaq	-544(%rbp), %rax	#, tmp366
	movl	$.LC72, %esi	#,
	movq	%rax, %rdi	# tmp366,
	call	strtok	#
	movq	%rax, -568(%rbp)	# tmp367, s
	cmpq	$0, -568(%rbp)	#, s
	jne	.L556	#,
	.loc 1 1732 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.9469
	jmp	.L561	#
.L556:
	.loc 1 1733 0 is_stmt 1
	movq	-560(%rbp), %rax	# hmm, tmp368
	movq	24(%rax), %rdx	# hmm_50->del, D.9478
	movl	-572(%rbp), %eax	# k, tmp369
	cltq
	imulq	$92, %rax, %rax	#, D.9474, D.9474
	leaq	(%rdx,%rax), %rbx	#, D.9478
	movq	-568(%rbp), %rax	# s, tmp370
	movq	%rax, %rdi	# tmp370,
	call	atof	#
	unpcklpd	%xmm0, %xmm0	# D.9479
	cvtpd2ps	%xmm0, %xmm0	# D.9479, D.9480
	movss	%xmm0, 4(%rbx)	# D.9480, _250->t
	.loc 1 1736 0
	cmpl	$2, -604(%rbp)	#, version
	jne	.L507	#,
	.loc 1 1737 0
	movl	$0, -588(%rbp)	#, i
	jmp	.L557	#
.L559:
	.loc 1 1738 0
	movq	-600(%rbp), %rdx	# fp, tmp371
	leaq	-544(%rbp), %rax	#, tmp372
	movl	$512, %esi	#,
	movq	%rax, %rdi	# tmp372,
	call	fgets	#
	testq	%rax, %rax	# D.9470
	jne	.L558	#,
	.loc 1 1738 0 is_stmt 0 discriminator 1
	movl	$0, %eax	#, D.9469
	jmp	.L561	#
.L558:
	.loc 1 1737 0 is_stmt 1
	addl	$1, -588(%rbp)	#, i
.L557:
	.loc 1 1737 0 is_stmt 0 discriminator 1
	cmpl	$2, -588(%rbp)	#, i
	jle	.L559	#,
	jmp	.L507	#
.L550:
	.loc 1 1741 0 is_stmt 1
	movl	$0, %eax	#, D.9469
	jmp	.L561	#
.L507:
	.loc 1 1645 0 discriminator 1
	movq	-600(%rbp), %rdx	# fp, tmp373
	leaq	-544(%rbp), %rax	#, tmp374
	movl	$512, %esi	#,
	movq	%rax, %rdi	# tmp374,
	call	fgets	#
	testq	%rax, %rax	# D.9470
	jne	.L560	#,
	.loc 1 1744 0
	movq	-560(%rbp), %rax	# hmm, tmp375
	addq	$32, %rax	#, D.9481
	movq	%rax, %rdi	# D.9481,
	call	P9DefaultNullModel	#
	.loc 1 1745 0
	movq	-560(%rbp), %rax	# hmm, tmp376
	movq	%rax, %rdi	# tmp376,
	call	P9Renormalize	#
	.loc 1 1746 0
	movq	-560(%rbp), %rax	# hmm, D.9469
.L561:
	.loc 1 1747 0
	movq	-24(%rbp), %rcx	# D.9482, tmp379
	xorq	%fs:40, %rcx	#, tmp379
	je	.L562	#,
	call	__stack_chk_fail	#
.L562:
	addq	$600, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	read_plan9_aschmm, .-read_plan9_aschmm
	.local	buffer.6931
	.comm	buffer.6931,8,1
	.section	.rodata
	.align 4
.LC33:
	.long	1065353216
	.align 4
.LC84:
	.long	1065305418
	.align 4
.LC85:
	.long	1065336456
	.align 4
.LC86:
	.long	0
	.text
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "squid.h"
	.file 7 "ssi.h"
	.file 8 "structs.h"
	.file 9 "/usr/include/ctype.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x153f
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF183
	.byte	0x1
	.long	.LASF184
	.long	.LASF185
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
	.long	.LASF186
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
	.uleb128 0xb
	.long	0x95
	.long	0x2b6
	.uleb128 0xc
	.long	0x86
	.byte	0x7
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.byte	0x9
	.byte	0x30
	.long	0x312
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
	.byte	0x8
	.byte	0x7
	.byte	0x25
	.long	0x360
	.uleb128 0x10
	.string	"i32"
	.byte	0x7
	.byte	0x26
	.long	0x32b
	.uleb128 0x10
	.string	"i64"
	.byte	0x7
	.byte	0x27
	.long	0x336
	.byte	0
	.uleb128 0x7
	.long	.LASF66
	.byte	0x10
	.byte	0x7
	.byte	0x23
	.long	0x385
	.uleb128 0x8
	.long	.LASF67
	.byte	0x7
	.byte	0x24
	.long	0x95
	.byte	0
	.uleb128 0x11
	.string	"off"
	.byte	0x7
	.byte	0x28
	.long	0x341
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.long	.LASF68
	.byte	0x7
	.byte	0x2a
	.long	0x360
	.uleb128 0x7
	.long	.LASF69
	.byte	0x90
	.byte	0x7
	.byte	0x31
	.long	0x498
	.uleb128 0x11
	.string	"fp"
	.byte	0x7
	.byte	0x32
	.long	0x498
	.byte	0
	.uleb128 0x8
	.long	.LASF70
	.byte	0x7
	.byte	0x33
	.long	0x32b
	.byte	0x8
	.uleb128 0x8
	.long	.LASF71
	.byte	0x7
	.byte	0x34
	.long	0x320
	.byte	0xc
	.uleb128 0x8
	.long	.LASF72
	.byte	0x7
	.byte	0x35
	.long	0x32b
	.byte	0x10
	.uleb128 0x8
	.long	.LASF73
	.byte	0x7
	.byte	0x36
	.long	0x32b
	.byte	0x14
	.uleb128 0x8
	.long	.LASF74
	.byte	0x7
	.byte	0x37
	.long	0x32b
	.byte	0x18
	.uleb128 0x8
	.long	.LASF75
	.byte	0x7
	.byte	0x38
	.long	0x32b
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF76
	.byte	0x7
	.byte	0x39
	.long	0x32b
	.byte	0x20
	.uleb128 0x8
	.long	.LASF77
	.byte	0x7
	.byte	0x3a
	.long	0x32b
	.byte	0x24
	.uleb128 0x8
	.long	.LASF78
	.byte	0x7
	.byte	0x3b
	.long	0x32b
	.byte	0x28
	.uleb128 0x8
	.long	.LASF79
	.byte	0x7
	.byte	0x3c
	.long	0x32b
	.byte	0x2c
	.uleb128 0x8
	.long	.LASF80
	.byte	0x7
	.byte	0x3d
	.long	0x385
	.byte	0x30
	.uleb128 0x8
	.long	.LASF81
	.byte	0x7
	.byte	0x3e
	.long	0x385
	.byte	0x40
	.uleb128 0x8
	.long	.LASF82
	.byte	0x7
	.byte	0x3f
	.long	0x385
	.byte	0x50
	.uleb128 0x8
	.long	.LASF83
	.byte	0x7
	.byte	0x41
	.long	0x95
	.byte	0x60
	.uleb128 0x8
	.long	.LASF84
	.byte	0x7
	.byte	0x42
	.long	0x95
	.byte	0x61
	.uleb128 0x8
	.long	.LASF85
	.byte	0x7
	.byte	0x46
	.long	0x49e
	.byte	0x68
	.uleb128 0x8
	.long	.LASF86
	.byte	0x7
	.byte	0x47
	.long	0x4a4
	.byte	0x70
	.uleb128 0x8
	.long	.LASF87
	.byte	0x7
	.byte	0x48
	.long	0x4a4
	.byte	0x78
	.uleb128 0x11
	.string	"bpl"
	.byte	0x7
	.byte	0x49
	.long	0x4a4
	.byte	0x80
	.uleb128 0x11
	.string	"rpl"
	.byte	0x7
	.byte	0x4a
	.long	0x4a4
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
	.long	0x32b
	.uleb128 0x2
	.long	.LASF88
	.byte	0x7
	.byte	0x4c
	.long	0x390
	.uleb128 0x6
	.byte	0x8
	.long	0x312
	.uleb128 0x6
	.byte	0x8
	.long	0x4aa
	.uleb128 0x12
	.long	.LASF89
	.value	0x1d0
	.byte	0x8
	.byte	0x65
	.long	0x718
	.uleb128 0x8
	.long	.LASF90
	.byte	0x8
	.byte	0x71
	.long	0x8f
	.byte	0
	.uleb128 0x11
	.string	"acc"
	.byte	0x8
	.byte	0x72
	.long	0x8f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF91
	.byte	0x8
	.byte	0x73
	.long	0x8f
	.byte	0x10
	.uleb128 0x11
	.string	"rf"
	.byte	0x8
	.byte	0x74
	.long	0x8f
	.byte	0x18
	.uleb128 0x11
	.string	"cs"
	.byte	0x8
	.byte	0x75
	.long	0x8f
	.byte	0x20
	.uleb128 0x11
	.string	"ca"
	.byte	0x8
	.byte	0x76
	.long	0x8f
	.byte	0x28
	.uleb128 0x8
	.long	.LASF92
	.byte	0x8
	.byte	0x77
	.long	0x8f
	.byte	0x30
	.uleb128 0x8
	.long	.LASF93
	.byte	0x8
	.byte	0x78
	.long	0x62
	.byte	0x38
	.uleb128 0x8
	.long	.LASF94
	.byte	0x8
	.byte	0x79
	.long	0x8f
	.byte	0x40
	.uleb128 0x11
	.string	"map"
	.byte	0x8
	.byte	0x7a
	.long	0x292
	.byte	0x48
	.uleb128 0x8
	.long	.LASF95
	.byte	0x8
	.byte	0x7b
	.long	0x62
	.byte	0x50
	.uleb128 0x8
	.long	.LASF96
	.byte	0x8
	.byte	0x86
	.long	0x292
	.byte	0x58
	.uleb128 0x8
	.long	.LASF97
	.byte	0x8
	.byte	0x87
	.long	0x292
	.byte	0x60
	.uleb128 0x8
	.long	.LASF98
	.byte	0x8
	.byte	0x88
	.long	0x292
	.byte	0x68
	.uleb128 0x11
	.string	"ga1"
	.byte	0x8
	.byte	0x90
	.long	0x312
	.byte	0x70
	.uleb128 0x11
	.string	"ga2"
	.byte	0x8
	.byte	0x90
	.long	0x312
	.byte	0x74
	.uleb128 0x11
	.string	"tc1"
	.byte	0x8
	.byte	0x91
	.long	0x312
	.byte	0x78
	.uleb128 0x11
	.string	"tc2"
	.byte	0x8
	.byte	0x91
	.long	0x312
	.byte	0x7c
	.uleb128 0x11
	.string	"nc1"
	.byte	0x8
	.byte	0x92
	.long	0x312
	.byte	0x80
	.uleb128 0x11
	.string	"nc2"
	.byte	0x8
	.byte	0x92
	.long	0x312
	.byte	0x84
	.uleb128 0x11
	.string	"M"
	.byte	0x8
	.byte	0x9b
	.long	0x62
	.byte	0x88
	.uleb128 0x11
	.string	"t"
	.byte	0x8
	.byte	0x9c
	.long	0x718
	.byte	0x90
	.uleb128 0x11
	.string	"mat"
	.byte	0x8
	.byte	0x9d
	.long	0x718
	.byte	0x98
	.uleb128 0x11
	.string	"ins"
	.byte	0x8
	.byte	0x9e
	.long	0x718
	.byte	0xa0
	.uleb128 0x8
	.long	.LASF99
	.byte	0x8
	.byte	0x9f
	.long	0x312
	.byte	0xa8
	.uleb128 0x11
	.string	"xt"
	.byte	0x8
	.byte	0xa8
	.long	0x71e
	.byte	0xac
	.uleb128 0x8
	.long	.LASF100
	.byte	0x8
	.byte	0xa9
	.long	0x4b5
	.byte	0xd0
	.uleb128 0x11
	.string	"end"
	.byte	0x8
	.byte	0xaa
	.long	0x4b5
	.byte	0xd8
	.uleb128 0x8
	.long	.LASF101
	.byte	0x8
	.byte	0xae
	.long	0x734
	.byte	0xe0
	.uleb128 0x13
	.string	"p1"
	.byte	0x8
	.byte	0xaf
	.long	0x312
	.value	0x130
	.uleb128 0x13
	.string	"tsc"
	.byte	0x8
	.byte	0xc5
	.long	0x744
	.value	0x138
	.uleb128 0x13
	.string	"msc"
	.byte	0x8
	.byte	0xc6
	.long	0x744
	.value	0x140
	.uleb128 0x13
	.string	"isc"
	.byte	0x8
	.byte	0xc7
	.long	0x744
	.value	0x148
	.uleb128 0x13
	.string	"xsc"
	.byte	0x8
	.byte	0xc8
	.long	0x74a
	.value	0x150
	.uleb128 0x13
	.string	"bsc"
	.byte	0x8
	.byte	0xc9
	.long	0x292
	.value	0x170
	.uleb128 0x13
	.string	"esc"
	.byte	0x8
	.byte	0xca
	.long	0x292
	.value	0x178
	.uleb128 0x14
	.long	.LASF102
	.byte	0x8
	.byte	0xcb
	.long	0x292
	.value	0x180
	.uleb128 0x14
	.long	.LASF103
	.byte	0x8
	.byte	0xcb
	.long	0x292
	.value	0x188
	.uleb128 0x14
	.long	.LASF104
	.byte	0x8
	.byte	0xcb
	.long	0x292
	.value	0x190
	.uleb128 0x14
	.long	.LASF105
	.byte	0x8
	.byte	0xcb
	.long	0x292
	.value	0x198
	.uleb128 0x14
	.long	.LASF106
	.byte	0x8
	.byte	0xcb
	.long	0x292
	.value	0x1a0
	.uleb128 0x14
	.long	.LASF107
	.byte	0x8
	.byte	0xd6
	.long	0x744
	.value	0x1a8
	.uleb128 0x14
	.long	.LASF108
	.byte	0x8
	.byte	0xd7
	.long	0x744
	.value	0x1b0
	.uleb128 0x14
	.long	.LASF109
	.byte	0x8
	.byte	0xd8
	.long	0x62
	.value	0x1b8
	.uleb128 0x14
	.long	.LASF110
	.byte	0x8
	.byte	0xd9
	.long	0x62
	.value	0x1bc
	.uleb128 0x13
	.string	"mu"
	.byte	0x8
	.byte	0xde
	.long	0x312
	.value	0x1c0
	.uleb128 0x14
	.long	.LASF111
	.byte	0x8
	.byte	0xdf
	.long	0x312
	.value	0x1c4
	.uleb128 0x14
	.long	.LASF70
	.byte	0x8
	.byte	0xe1
	.long	0x62
	.value	0x1c8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x4b5
	.uleb128 0xb
	.long	0x312
	.long	0x734
	.uleb128 0xc
	.long	0x86
	.byte	0x3
	.uleb128 0xc
	.long	0x86
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.long	0x312
	.long	0x744
	.uleb128 0xc
	.long	0x86
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x292
	.uleb128 0xb
	.long	0x62
	.long	0x760
	.uleb128 0xc
	.long	0x86
	.byte	0x3
	.uleb128 0xc
	.long	0x86
	.byte	0x1
	.byte	0
	.uleb128 0x15
	.long	.LASF112
	.byte	0x38
	.byte	0x8
	.value	0x14c
	.long	0x7d4
	.uleb128 0x16
	.string	"f"
	.byte	0x8
	.value	0x14d
	.long	0x498
	.byte	0
	.uleb128 0x16
	.string	"ssi"
	.byte	0x8
	.value	0x14e
	.long	0x4bb
	.byte	0x8
	.uleb128 0x9
	.long	.LASF113
	.byte	0x8
	.value	0x14f
	.long	0x7fa
	.byte	0x10
	.uleb128 0x9
	.long	.LASF114
	.byte	0x8
	.value	0x150
	.long	0x62
	.byte	0x18
	.uleb128 0x9
	.long	.LASF115
	.byte	0x8
	.value	0x151
	.long	0x62
	.byte	0x1c
	.uleb128 0x9
	.long	.LASF116
	.byte	0x8
	.value	0x15a
	.long	0x62
	.byte	0x20
	.uleb128 0x9
	.long	.LASF67
	.byte	0x8
	.value	0x15b
	.long	0x62
	.byte	0x24
	.uleb128 0x9
	.long	.LASF117
	.byte	0x8
	.value	0x15c
	.long	0x385
	.byte	0x28
	.byte	0
	.uleb128 0x17
	.long	0x62
	.long	0x7e8
	.uleb128 0x18
	.long	0x7e8
	.uleb128 0x18
	.long	0x7ee
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x760
	.uleb128 0x6
	.byte	0x8
	.long	0x7f4
	.uleb128 0x6
	.byte	0x8
	.long	0x4c1
	.uleb128 0x6
	.byte	0x8
	.long	0x7d4
	.uleb128 0x19
	.long	.LASF118
	.byte	0x8
	.value	0x15e
	.long	0x760
	.uleb128 0xb
	.long	0x312
	.long	0x81c
	.uleb128 0xc
	.long	0x86
	.byte	0x2
	.byte	0
	.uleb128 0x15
	.long	.LASF119
	.byte	0x5c
	.byte	0x8
	.value	0x230
	.long	0x840
	.uleb128 0x16
	.string	"t"
	.byte	0x8
	.value	0x231
	.long	0x80c
	.byte	0
	.uleb128 0x16
	.string	"p"
	.byte	0x8
	.value	0x232
	.long	0x734
	.byte	0xc
	.byte	0
	.uleb128 0x15
	.long	.LASF120
	.byte	0x98
	.byte	0x8
	.value	0x237
	.long	0x8cd
	.uleb128 0x16
	.string	"M"
	.byte	0x8
	.value	0x238
	.long	0x62
	.byte	0
	.uleb128 0x16
	.string	"ins"
	.byte	0x8
	.value	0x239
	.long	0x8cd
	.byte	0x8
	.uleb128 0x16
	.string	"mat"
	.byte	0x8
	.value	0x23a
	.long	0x8cd
	.byte	0x10
	.uleb128 0x16
	.string	"del"
	.byte	0x8
	.value	0x23b
	.long	0x8cd
	.byte	0x18
	.uleb128 0x9
	.long	.LASF101
	.byte	0x8
	.value	0x23d
	.long	0x734
	.byte	0x20
	.uleb128 0x9
	.long	.LASF90
	.byte	0x8
	.value	0x241
	.long	0x8f
	.byte	0x70
	.uleb128 0x16
	.string	"ref"
	.byte	0x8
	.value	0x242
	.long	0x8f
	.byte	0x78
	.uleb128 0x16
	.string	"cs"
	.byte	0x8
	.value	0x243
	.long	0x8f
	.byte	0x80
	.uleb128 0x9
	.long	.LASF121
	.byte	0x8
	.value	0x244
	.long	0x4b5
	.byte	0x88
	.uleb128 0x9
	.long	.LASF70
	.byte	0x8
	.value	0x246
	.long	0x62
	.byte	0x90
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x81c
	.uleb128 0x1a
	.long	.LASF128
	.byte	0x1
	.byte	0x9b
	.long	0x98e
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x98e
	.uleb128 0x1b
	.long	.LASF122
	.byte	0x1
	.byte	0x9b
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -616
	.uleb128 0x1c
	.string	"env"
	.byte	0x1
	.byte	0x9b
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -624
	.uleb128 0x1d
	.long	.LASF123
	.byte	0x1
	.byte	0x9d
	.long	0x98e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -576
	.uleb128 0x1d
	.long	.LASF124
	.byte	0x1
	.byte	0x9e
	.long	0x4d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -600
	.uleb128 0x1e
	.string	"buf"
	.byte	0x1
	.byte	0x9f
	.long	0x994
	.uleb128 0x3
	.byte	0x91
	.sleb128 -560
	.uleb128 0x1d
	.long	.LASF125
	.byte	0x1
	.byte	0xa0
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -584
	.uleb128 0x1e
	.string	"dir"
	.byte	0x1
	.byte	0xa1
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -592
	.uleb128 0x1d
	.long	.LASF126
	.byte	0x1
	.byte	0xa2
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -596
	.uleb128 0x1f
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x1d
	.long	.LASF127
	.byte	0x1
	.byte	0xbd
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -568
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x800
	.uleb128 0xb
	.long	0x95
	.long	0x9a5
	.uleb128 0x20
	.long	0x86
	.value	0x1ff
	.byte	0
	.uleb128 0x21
	.long	.LASF129
	.byte	0x1
	.value	0x144
	.long	0x62
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x9f5
	.uleb128 0x22
	.long	.LASF123
	.byte	0x1
	.value	0x144
	.long	0x98e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.long	.LASF130
	.byte	0x1
	.value	0x144
	.long	0x7ee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.long	.LASF126
	.byte	0x1
	.value	0x146
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x24
	.long	.LASF131
	.byte	0x1
	.value	0x150
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0xa23
	.uleb128 0x22
	.long	.LASF123
	.byte	0x1
	.value	0x150
	.long	0x98e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x24
	.long	.LASF132
	.byte	0x1
	.value	0x157
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0xa51
	.uleb128 0x22
	.long	.LASF123
	.byte	0x1
	.value	0x157
	.long	0x98e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x21
	.long	.LASF133
	.byte	0x1
	.value	0x15c
	.long	0x62
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0xaaf
	.uleb128 0x22
	.long	.LASF123
	.byte	0x1
	.value	0x15c
	.long	0x98e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x22
	.long	.LASF90
	.byte	0x1
	.value	0x15c
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x23
	.long	.LASF117
	.byte	0x1
	.value	0x15e
	.long	0x385
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x25
	.string	"fh"
	.byte	0x1
	.value	0x15f
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x21
	.long	.LASF134
	.byte	0x1
	.value	0x167
	.long	0x62
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0xb0d
	.uleb128 0x22
	.long	.LASF123
	.byte	0x1
	.value	0x167
	.long	0x98e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.string	"idx"
	.byte	0x1
	.value	0x167
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x25
	.string	"fh"
	.byte	0x1
	.value	0x169
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x23
	.long	.LASF117
	.byte	0x1
	.value	0x16a
	.long	0x385
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x24
	.long	.LASF135
	.byte	0x1
	.value	0x181
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0xb71
	.uleb128 0x26
	.string	"fp"
	.byte	0x1
	.value	0x181
	.long	0x498
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.string	"hmm"
	.byte	0x1
	.value	0x181
	.long	0x7f4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.string	"k"
	.byte	0x1
	.value	0x183
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x25
	.string	"x"
	.byte	0x1
	.value	0x184
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.string	"ts"
	.byte	0x1
	.value	0x185
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x24
	.long	.LASF136
	.byte	0x1
	.value	0x1e4
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0xbba
	.uleb128 0x26
	.string	"fp"
	.byte	0x1
	.value	0x1e4
	.long	0x498
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.string	"hmm"
	.byte	0x1
	.value	0x1e4
	.long	0x7f4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.string	"k"
	.byte	0x1
	.value	0x1e6
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x27
	.long	.LASF139
	.byte	0x1
	.value	0x237
	.long	0x62
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0xc83
	.uleb128 0x22
	.long	.LASF123
	.byte	0x1
	.value	0x237
	.long	0x98e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -616
	.uleb128 0x22
	.long	.LASF130
	.byte	0x1
	.value	0x237
	.long	0x7ee
	.uleb128 0x3
	.byte	0x91
	.sleb128 -624
	.uleb128 0x25
	.string	"hmm"
	.byte	0x1
	.value	0x239
	.long	0x7f4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -576
	.uleb128 0x23
	.long	.LASF137
	.byte	0x1
	.value	0x23a
	.long	0x994
	.uleb128 0x3
	.byte	0x91
	.sleb128 -560
	.uleb128 0x25
	.string	"s"
	.byte	0x1
	.value	0x23b
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -568
	.uleb128 0x25
	.string	"M"
	.byte	0x1
	.value	0x23c
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -596
	.uleb128 0x25
	.string	"p"
	.byte	0x1
	.value	0x23d
	.long	0x312
	.uleb128 0x3
	.byte	0x91
	.sleb128 -580
	.uleb128 0x25
	.string	"k"
	.byte	0x1
	.value	0x23e
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -592
	.uleb128 0x25
	.string	"x"
	.byte	0x1
	.value	0x23e
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -588
	.uleb128 0x23
	.long	.LASF138
	.byte	0x1
	.value	0x23f
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -584
	.uleb128 0x28
	.long	.LASF142
	.byte	0x1
	.value	0x306
	.quad	.L111
	.byte	0
	.uleb128 0x27
	.long	.LASF140
	.byte	0x1
	.value	0x30e
	.long	0x62
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0xd1d
	.uleb128 0x22
	.long	.LASF123
	.byte	0x1
	.value	0x30e
	.long	0x98e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x22
	.long	.LASF130
	.byte	0x1
	.value	0x30e
	.long	0x7ee
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x25
	.string	"hmm"
	.byte	0x1
	.value	0x310
	.long	0x7f4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.string	"k"
	.byte	0x1
	.value	0x311
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.string	"x"
	.byte	0x1
	.value	0x311
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x23
	.long	.LASF141
	.byte	0x1
	.value	0x312
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.long	.LASF124
	.byte	0x1
	.value	0x313
	.long	0x4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x28
	.long	.LASF142
	.byte	0x1
	.value	0x3b4
	.quad	.L211
	.byte	0
	.uleb128 0x27
	.long	.LASF143
	.byte	0x1
	.value	0x3c8
	.long	0x62
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0xde7
	.uleb128 0x22
	.long	.LASF123
	.byte	0x1
	.value	0x3c8
	.long	0x98e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -616
	.uleb128 0x22
	.long	.LASF130
	.byte	0x1
	.value	0x3c8
	.long	0x7ee
	.uleb128 0x3
	.byte	0x91
	.sleb128 -624
	.uleb128 0x25
	.string	"hmm"
	.byte	0x1
	.value	0x3ca
	.long	0x7f4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -584
	.uleb128 0x25
	.string	"fp"
	.byte	0x1
	.value	0x3cb
	.long	0x498
	.uleb128 0x3
	.byte	0x91
	.sleb128 -576
	.uleb128 0x23
	.long	.LASF137
	.byte	0x1
	.value	0x3cc
	.long	0x994
	.uleb128 0x3
	.byte	0x91
	.sleb128 -560
	.uleb128 0x25
	.string	"s"
	.byte	0x1
	.value	0x3cd
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -568
	.uleb128 0x25
	.string	"M"
	.byte	0x1
	.value	0x3ce
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -588
	.uleb128 0x25
	.string	"k"
	.byte	0x1
	.value	0x3cf
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -600
	.uleb128 0x25
	.string	"x"
	.byte	0x1
	.value	0x3d0
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -596
	.uleb128 0x23
	.long	.LASF138
	.byte	0x1
	.value	0x3d1
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -592
	.uleb128 0x28
	.long	.LASF142
	.byte	0x1
	.value	0x458
	.quad	.L287
	.byte	0
	.uleb128 0x27
	.long	.LASF144
	.byte	0x1
	.value	0x45f
	.long	0x62
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0xe57
	.uleb128 0x22
	.long	.LASF123
	.byte	0x1
	.value	0x45f
	.long	0x98e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x22
	.long	.LASF130
	.byte	0x1
	.value	0x45f
	.long	0x7ee
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x23
	.long	.LASF124
	.byte	0x1
	.value	0x461
	.long	0x4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x25
	.string	"hmm"
	.byte	0x1
	.value	0x462
	.long	0x7f4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.long	.LASF145
	.byte	0x1
	.value	0x463
	.long	0xe57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x840
	.uleb128 0x27
	.long	.LASF146
	.byte	0x1
	.value	0x478
	.long	0x62
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0xed0
	.uleb128 0x22
	.long	.LASF123
	.byte	0x1
	.value	0x478
	.long	0x98e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -584
	.uleb128 0x22
	.long	.LASF130
	.byte	0x1
	.value	0x478
	.long	0x7ee
	.uleb128 0x3
	.byte	0x91
	.sleb128 -592
	.uleb128 0x25
	.string	"hmm"
	.byte	0x1
	.value	0x47a
	.long	0x7f4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -576
	.uleb128 0x23
	.long	.LASF145
	.byte	0x1
	.value	0x47b
	.long	0xe57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -568
	.uleb128 0x23
	.long	.LASF137
	.byte	0x1
	.value	0x47c
	.long	0x994
	.uleb128 0x3
	.byte	0x91
	.sleb128 -560
	.byte	0
	.uleb128 0x27
	.long	.LASF147
	.byte	0x1
	.value	0x492
	.long	0x62
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0xf40
	.uleb128 0x22
	.long	.LASF123
	.byte	0x1
	.value	0x492
	.long	0x98e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x22
	.long	.LASF130
	.byte	0x1
	.value	0x492
	.long	0x7ee
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x23
	.long	.LASF124
	.byte	0x1
	.value	0x494
	.long	0x4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x25
	.string	"hmm"
	.byte	0x1
	.value	0x495
	.long	0x7f4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.long	.LASF145
	.byte	0x1
	.value	0x496
	.long	0xe57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x27
	.long	.LASF148
	.byte	0x1
	.value	0x4ac
	.long	0x62
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0xf81
	.uleb128 0x22
	.long	.LASF123
	.byte	0x1
	.value	0x4ac
	.long	0x98e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x22
	.long	.LASF130
	.byte	0x1
	.value	0x4ac
	.long	0x7ee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x27
	.long	.LASF149
	.byte	0x1
	.value	0x4b2
	.long	0x62
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0xff1
	.uleb128 0x22
	.long	.LASF123
	.byte	0x1
	.value	0x4b2
	.long	0x98e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x22
	.long	.LASF130
	.byte	0x1
	.value	0x4b2
	.long	0x7ee
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x23
	.long	.LASF124
	.byte	0x1
	.value	0x4b4
	.long	0x4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x25
	.string	"hmm"
	.byte	0x1
	.value	0x4b5
	.long	0x7f4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.long	.LASF145
	.byte	0x1
	.value	0x4b6
	.long	0xe57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x27
	.long	.LASF150
	.byte	0x1
	.value	0x4cc
	.long	0x62
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x1032
	.uleb128 0x22
	.long	.LASF123
	.byte	0x1
	.value	0x4cc
	.long	0x98e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x22
	.long	.LASF130
	.byte	0x1
	.value	0x4cc
	.long	0x7ee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x27
	.long	.LASF151
	.byte	0x1
	.value	0x4d3
	.long	0x62
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x10a2
	.uleb128 0x22
	.long	.LASF123
	.byte	0x1
	.value	0x4d3
	.long	0x98e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x22
	.long	.LASF130
	.byte	0x1
	.value	0x4d3
	.long	0x7ee
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x23
	.long	.LASF124
	.byte	0x1
	.value	0x4d5
	.long	0x4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x25
	.string	"hmm"
	.byte	0x1
	.value	0x4d6
	.long	0x7f4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.long	.LASF145
	.byte	0x1
	.value	0x4d7
	.long	0xe57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x27
	.long	.LASF152
	.byte	0x1
	.value	0x4f7
	.long	0x8f
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x10f7
	.uleb128 0x26
	.string	"p"
	.byte	0x1
	.value	0x4f7
	.long	0x312
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x22
	.long	.LASF101
	.byte	0x1
	.value	0x4f7
	.long	0x312
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.long	.LASF137
	.byte	0x1
	.value	0x4f9
	.long	0x2a6
	.uleb128 0x9
	.byte	0x3
	.quad	buffer.6931
	.byte	0
	.uleb128 0x27
	.long	.LASF153
	.byte	0x1
	.value	0x506
	.long	0x312
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x1136
	.uleb128 0x26
	.string	"s"
	.byte	0x1
	.value	0x506
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x22
	.long	.LASF101
	.byte	0x1
	.value	0x506
	.long	0x312
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x29
	.long	.LASF115
	.byte	0x1
	.value	0x521
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x118f
	.uleb128 0x22
	.long	.LASF154
	.byte	0x1
	.value	0x521
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.long	.LASF155
	.byte	0x1
	.value	0x521
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x25
	.string	"x"
	.byte	0x1
	.value	0x523
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x23
	.long	.LASF156
	.byte	0x1
	.value	0x524
	.long	0x95
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.uleb128 0x2a
	.long	.LASF157
	.byte	0x1
	.value	0x536
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x11d8
	.uleb128 0x26
	.string	"fp"
	.byte	0x1
	.value	0x536
	.long	0x498
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.string	"s"
	.byte	0x1
	.value	0x536
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.string	"len"
	.byte	0x1
	.value	0x538
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x27
	.long	.LASF158
	.byte	0x1
	.value	0x553
	.long	0x62
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x1243
	.uleb128 0x26
	.string	"fp"
	.byte	0x1
	.value	0x553
	.long	0x498
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.long	.LASF159
	.byte	0x1
	.value	0x553
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x22
	.long	.LASF160
	.byte	0x1
	.value	0x553
	.long	0x49e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.string	"s"
	.byte	0x1
	.value	0x555
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.string	"len"
	.byte	0x1
	.value	0x556
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x2a
	.long	.LASF161
	.byte	0x1
	.value	0x57b
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x12aa
	.uleb128 0x26
	.string	"fp"
	.byte	0x1
	.value	0x57b
	.long	0x498
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.string	"pfx"
	.byte	0x1
	.value	0x57b
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.string	"s"
	.byte	0x1
	.value	0x57b
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x25
	.string	"buf"
	.byte	0x1
	.value	0x57d
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.long	.LASF162
	.byte	0x1
	.value	0x57e
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x27
	.long	.LASF163
	.byte	0x1
	.value	0x59f
	.long	0xe57
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x1375
	.uleb128 0x26
	.string	"fp"
	.byte	0x1
	.value	0x59f
	.long	0x498
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x22
	.long	.LASF164
	.byte	0x1
	.value	0x59f
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x22
	.long	.LASF165
	.byte	0x1
	.value	0x59f
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x25
	.string	"hmm"
	.byte	0x1
	.value	0x5a1
	.long	0xe57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x25
	.string	"M"
	.byte	0x1
	.value	0x5a2
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x25
	.string	"k"
	.byte	0x1
	.value	0x5a3
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x25
	.string	"x"
	.byte	0x1
	.value	0x5a4
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x25
	.string	"len"
	.byte	0x1
	.value	0x5a5
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x23
	.long	.LASF166
	.byte	0x1
	.value	0x5a6
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x23
	.long	.LASF138
	.byte	0x1
	.value	0x5a7
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x23
	.long	.LASF167
	.byte	0x1
	.value	0x5a8
	.long	0x282
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x27
	.long	.LASF168
	.byte	0x1
	.value	0x631
	.long	0xe57
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x143f
	.uleb128 0x26
	.string	"fp"
	.byte	0x1
	.value	0x631
	.long	0x498
	.uleb128 0x3
	.byte	0x91
	.sleb128 -616
	.uleb128 0x22
	.long	.LASF164
	.byte	0x1
	.value	0x631
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -620
	.uleb128 0x25
	.string	"hmm"
	.byte	0x1
	.value	0x633
	.long	0xe57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -576
	.uleb128 0x25
	.string	"M"
	.byte	0x1
	.value	0x634
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -596
	.uleb128 0x23
	.long	.LASF137
	.byte	0x1
	.value	0x635
	.long	0x994
	.uleb128 0x3
	.byte	0x91
	.sleb128 -560
	.uleb128 0x23
	.long	.LASF169
	.byte	0x1
	.value	0x636
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -568
	.uleb128 0x25
	.string	"s"
	.byte	0x1
	.value	0x637
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -584
	.uleb128 0x25
	.string	"k"
	.byte	0x1
	.value	0x638
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -588
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.value	0x639
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -604
	.uleb128 0x23
	.long	.LASF166
	.byte	0x1
	.value	0x63a
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -592
	.uleb128 0x23
	.long	.LASF138
	.byte	0x1
	.value	0x63b
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -600
	.byte	0
	.uleb128 0x1d
	.long	.LASF170
	.byte	0x1
	.byte	0x5d
	.long	0x4d
	.uleb128 0x9
	.byte	0x3
	.quad	v10magic
	.uleb128 0x1d
	.long	.LASF171
	.byte	0x1
	.byte	0x5e
	.long	0x4d
	.uleb128 0x9
	.byte	0x3
	.quad	v10swap
	.uleb128 0x1d
	.long	.LASF172
	.byte	0x1
	.byte	0x5f
	.long	0x4d
	.uleb128 0x9
	.byte	0x3
	.quad	v11magic
	.uleb128 0x1d
	.long	.LASF173
	.byte	0x1
	.byte	0x60
	.long	0x4d
	.uleb128 0x9
	.byte	0x3
	.quad	v11swap
	.uleb128 0x1d
	.long	.LASF174
	.byte	0x1
	.byte	0x61
	.long	0x4d
	.uleb128 0x9
	.byte	0x3
	.quad	v17magic
	.uleb128 0x1d
	.long	.LASF175
	.byte	0x1
	.byte	0x62
	.long	0x4d
	.uleb128 0x9
	.byte	0x3
	.quad	v17swap
	.uleb128 0x1d
	.long	.LASF176
	.byte	0x1
	.byte	0x63
	.long	0x4d
	.uleb128 0x9
	.byte	0x3
	.quad	v19magic
	.uleb128 0x1d
	.long	.LASF177
	.byte	0x1
	.byte	0x64
	.long	0x4d
	.uleb128 0x9
	.byte	0x3
	.quad	v19swap
	.uleb128 0x1d
	.long	.LASF178
	.byte	0x1
	.byte	0x65
	.long	0x4d
	.uleb128 0x9
	.byte	0x3
	.quad	v20magic
	.uleb128 0x1d
	.long	.LASF179
	.byte	0x1
	.byte	0x66
	.long	0x4d
	.uleb128 0x9
	.byte	0x3
	.quad	v20swap
	.uleb128 0xb
	.long	0x95
	.long	0x1521
	.uleb128 0xc
	.long	0x86
	.byte	0x18
	.byte	0
	.uleb128 0x2b
	.long	.LASF180
	.byte	0x8
	.byte	0x39
	.long	0x1511
	.uleb128 0x2b
	.long	.LASF181
	.byte	0x8
	.byte	0x3a
	.long	0x62
	.uleb128 0x2b
	.long	.LASF182
	.byte	0x8
	.byte	0x3b
	.long	0x62
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
.LASF56:
	.string	"_ISgraph"
.LASF166:
	.string	"asize"
.LASF7:
	.string	"size_t"
.LASF64:
	.string	"sqd_uint32"
.LASF82:
	.string	"soffset"
.LASF95:
	.string	"checksum"
.LASF160:
	.string	"ret_s"
.LASF32:
	.string	"_shortbuf"
.LASF169:
	.string	"statetype"
.LASF128:
	.string	"HMMFileOpen"
.LASF156:
	.string	"byte"
.LASF49:
	.string	"_ISupper"
.LASF14:
	.string	"_IO_read_ptr"
.LASF141:
	.string	"type"
.LASF106:
	.string	"esc_mem"
.LASF66:
	.string	"ssioffset_s"
.LASF93:
	.string	"nseq"
.LASF48:
	.string	"long long unsigned int"
.LASF76:
	.string	"slen"
.LASF102:
	.string	"tsc_mem"
.LASF51:
	.string	"_ISalpha"
.LASF75:
	.string	"plen"
.LASF88:
	.string	"SSIFILE"
.LASF52:
	.string	"_ISdigit"
.LASF111:
	.string	"lambda"
.LASF87:
	.string	"fileflags"
.LASF73:
	.string	"nsecondary"
.LASF4:
	.string	"signed char"
.LASF171:
	.string	"v10swap"
.LASF77:
	.string	"frecsize"
.LASF134:
	.string	"HMMFilePositionByIndex"
.LASF184:
	.string	"hmmio.c"
.LASF129:
	.string	"HMMFileRead"
.LASF27:
	.string	"_fileno"
.LASF15:
	.string	"_IO_read_end"
.LASF152:
	.string	"prob2ascii"
.LASF158:
	.string	"read_bin_string"
.LASF6:
	.string	"long int"
.LASF153:
	.string	"ascii2prob"
.LASF108:
	.string	"dnai"
.LASF122:
	.string	"hmmfile"
.LASF100:
	.string	"begin"
.LASF13:
	.string	"_flags"
.LASF60:
	.string	"_ISalnum"
.LASF30:
	.string	"_cur_column"
.LASF47:
	.string	"long long int"
.LASF159:
	.string	"doswap"
.LASF62:
	.string	"double"
.LASF29:
	.string	"_old_offset"
.LASF34:
	.string	"_offset"
.LASF163:
	.string	"read_plan9_binhmm"
.LASF57:
	.string	"_ISblank"
.LASF112:
	.string	"hmmfile_s"
.LASF125:
	.string	"ssifile"
.LASF104:
	.string	"isc_mem"
.LASF120:
	.string	"plan9_s"
.LASF59:
	.string	"_ISpunct"
.LASF43:
	.string	"_IO_marker"
.LASF145:
	.string	"p9hmm"
.LASF84:
	.string	"smode"
.LASF3:
	.string	"unsigned int"
.LASF148:
	.string	"read_asc11hmm"
.LASF168:
	.string	"read_plan9_aschmm"
.LASF176:
	.string	"v19magic"
.LASF118:
	.string	"HMMFILE"
.LASF69:
	.string	"ssifile_s"
.LASF0:
	.string	"long unsigned int"
.LASF162:
	.string	"sptr"
.LASF18:
	.string	"_IO_write_ptr"
.LASF135:
	.string	"WriteAscHMM"
.LASF45:
	.string	"_sbuf"
.LASF90:
	.string	"name"
.LASF2:
	.string	"short unsigned int"
.LASF142:
	.string	"FAILURE"
.LASF116:
	.string	"is_seekable"
.LASF149:
	.string	"read_bin11hmm"
.LASF119:
	.string	"basic_state"
.LASF22:
	.string	"_IO_save_base"
.LASF74:
	.string	"flen"
.LASF65:
	.string	"sqd_uint64"
.LASF97:
	.string	"mpri"
.LASF33:
	.string	"_lock"
.LASF54:
	.string	"_ISspace"
.LASF40:
	.string	"_mode"
.LASF181:
	.string	"Alphabet_type"
.LASF172:
	.string	"v11magic"
.LASF94:
	.string	"ctime"
.LASF113:
	.string	"parser"
.LASF164:
	.string	"version"
.LASF103:
	.string	"msc_mem"
.LASF10:
	.string	"sizetype"
.LASF151:
	.string	"read_bin10hmm"
.LASF144:
	.string	"read_bin19hmm"
.LASF85:
	.string	"filename"
.LASF91:
	.string	"desc"
.LASF105:
	.string	"bsc_mem"
.LASF80:
	.string	"foffset"
.LASF99:
	.string	"tbd1"
.LASF175:
	.string	"v17swap"
.LASF107:
	.string	"dnam"
.LASF186:
	.string	"_IO_lock_t"
.LASF42:
	.string	"_IO_FILE"
.LASF179:
	.string	"v20swap"
.LASF173:
	.string	"v11swap"
.LASF92:
	.string	"comlog"
.LASF154:
	.string	"swap"
.LASF61:
	.string	"float"
.LASF167:
	.string	"abet"
.LASF157:
	.string	"write_bin_string"
.LASF46:
	.string	"_pos"
.LASF155:
	.string	"nbytes"
.LASF25:
	.string	"_markers"
.LASF71:
	.string	"nfiles"
.LASF136:
	.string	"WriteBinHMM"
.LASF101:
	.string	"null"
.LASF1:
	.string	"unsigned char"
.LASF21:
	.string	"_IO_buf_end"
.LASF109:
	.string	"dna2"
.LASF89:
	.string	"plan7_s"
.LASF72:
	.string	"nprimary"
.LASF5:
	.string	"short int"
.LASF170:
	.string	"v10magic"
.LASF124:
	.string	"magic"
.LASF26:
	.string	"_chain"
.LASF28:
	.string	"_flags2"
.LASF79:
	.string	"srecsize"
.LASF165:
	.string	"swapped"
.LASF12:
	.string	"FILE"
.LASF138:
	.string	"atype"
.LASF150:
	.string	"read_asc10hmm"
.LASF81:
	.string	"poffset"
.LASF143:
	.string	"read_asc19hmm"
.LASF132:
	.string	"HMMFileRewind"
.LASF127:
	.string	"full"
.LASF78:
	.string	"precsize"
.LASF83:
	.string	"imode"
.LASF147:
	.string	"read_bin17hmm"
.LASF123:
	.string	"hmmfp"
.LASF11:
	.string	"char"
.LASF115:
	.string	"byteswap"
.LASF67:
	.string	"mode"
.LASF182:
	.string	"Alphabet_size"
.LASF58:
	.string	"_IScntrl"
.LASF63:
	.string	"sqd_uint16"
.LASF53:
	.string	"_ISxdigit"
.LASF50:
	.string	"_ISlower"
.LASF137:
	.string	"buffer"
.LASF130:
	.string	"ret_hmm"
.LASF86:
	.string	"fileformat"
.LASF177:
	.string	"v19swap"
.LASF44:
	.string	"_next"
.LASF9:
	.string	"__off64_t"
.LASF117:
	.string	"offset"
.LASF16:
	.string	"_IO_read_base"
.LASF24:
	.string	"_IO_save_end"
.LASF161:
	.string	"multiline"
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
.LASF178:
	.string	"v20magic"
.LASF19:
	.string	"_IO_write_end"
.LASF41:
	.string	"_unused2"
.LASF98:
	.string	"ipri"
.LASF126:
	.string	"status"
.LASF114:
	.string	"is_binary"
.LASF110:
	.string	"dna4"
.LASF140:
	.string	"read_bin20hmm"
.LASF183:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF23:
	.string	"_IO_backup_base"
.LASF70:
	.string	"flags"
.LASF174:
	.string	"v17magic"
.LASF131:
	.string	"HMMFileClose"
.LASF31:
	.string	"_vtable_offset"
.LASF146:
	.string	"read_asc17hmm"
.LASF133:
	.string	"HMMFilePositionByName"
.LASF180:
	.string	"Alphabet"
.LASF185:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/456.hmmer/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF121:
	.string	"xray"
.LASF96:
	.string	"tpri"
.LASF17:
	.string	"_IO_write_base"
.LASF139:
	.string	"read_asc20hmm"
.LASF20:
	.string	"_IO_buf_base"
.LASF55:
	.string	"_ISprint"
.LASF68:
	.string	"SSIOFFSET"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
