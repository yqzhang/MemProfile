	.file	"hmmcalibrate.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 hmmcalibrate.c -mtune=generic -march=x86-64 -g
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
	.data
	.align 32
	.type	banner, @object
	.size	banner, 48
banner:
	.string	"hmmcalibrate -- calibrate HMM search statistics"
	.align 32
	.type	usage, @object
	.size	usage, 130
usage:
	.string	"Usage: hmmcalibrate [-options] <hmmfile>\nAvailable options are:\n  -h             : print short usage and version info, then exit\n"
	.align 32
	.type	experts, @object
	.size	experts, 456
experts:
	.ascii	"  --cpu <n>      : run <n> threads in parallel (if threaded)"
	.ascii	"\n  --fixed <n>    : fix random sequence length at <n>\n  --"
	.ascii	"histfile <f> : save histogram(s) to file <f>\n  --mean <x>  "
	.ascii	"   : set random seq le"
	.string	"ngth mean at <x> [350]\n  --num <n>      : set number of sampled seqs to <n> [5000]\n  --pvm          : run on a Parallel Virtual Machine (PVM)\n  --sd <x>       : set random seq length std. dev to <x> [350]\n  --seed <n>     : set random seed to <n> [time()]\n"
	.section	.rodata
.LC0:
	.string	"-h"
.LC1:
	.string	"--cpu"
.LC2:
	.string	"--fixed"
.LC3:
	.string	"--histfile"
.LC4:
	.string	"--mean"
.LC5:
	.string	"--num"
.LC6:
	.string	"--pvm"
.LC7:
	.string	"--sd"
.LC8:
	.string	"--seed"
	.data
	.align 32
	.type	OPTIONS, @object
	.size	OPTIONS, 144
OPTIONS:
# name:
	.quad	.LC0
# single:
	.long	1
# argtype:
	.long	0
# name:
	.quad	.LC1
# single:
	.long	0
# argtype:
	.long	1
# name:
	.quad	.LC2
# single:
	.long	0
# argtype:
	.long	1
# name:
	.quad	.LC3
# single:
	.long	0
# argtype:
	.long	4
# name:
	.quad	.LC4
# single:
	.long	0
# argtype:
	.long	2
# name:
	.quad	.LC5
# single:
	.long	0
# argtype:
	.long	1
# name:
	.quad	.LC6
# single:
	.long	0
# argtype:
	.long	0
# name:
	.quad	.LC7
# single:
	.long	0
# argtype:
	.long	2
# name:
	.quad	.LC8
# single:
	.long	0
# argtype:
	.long	1
	.section	.rodata
	.align 8
.LC11:
	.string	"Incorrect number of arguments.\n%s\n"
	.align 8
.LC12:
	.string	"PVM support is not compiled into HMMER; --pvm doesn't work."
	.align 8
.LC13:
	.string	"Posix threads support is not compiled into HMMER; --cpu doesn't have any effect"
	.align 8
.LC14:
	.string	"failed to open HMM file %s for reading."
.LC15:
	.string	"w"
	.align 8
.LC16:
	.string	"Failed to open histogram save file %s for writing\n"
.LC17:
	.string	"hmmcalibrate.c"
.LC18:
	.string	"wb"
.LC19:
	.string	"HMM file:                 %s\n"
.LC20:
	.string	"Length fixed to:          %d\n"
	.align 8
.LC21:
	.string	"Length distribution mean: %.0f\n"
	.align 8
.LC22:
	.string	"Length distribution s.d.: %.0f\n"
.LC23:
	.string	"Number of samples:        %d\n"
.LC24:
	.string	"random seed:              %d\n"
.LC25:
	.string	"[not saved]"
.LC26:
	.string	"histogram(s) saved to:    %s\n"
	.align 8
.LC27:
	.string	"PVM:                      ACTIVE"
.LC28:
	.string	"POSIX threads:            %d\n"
	.align 8
.LC29:
	.string	"- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -\n"
	.align 8
.LC30:
	.string	"HMM file may be corrupt or in incorrect format; parse failed"
	.align 8
.LC31:
	.string	"wait. that can't happen. I didn't do anything."
	.align 8
.LC33:
	.string	"fit failed; --num may be set too small?\n"
.LC34:
	.string	"HMM    : %s\n"
.LC35:
	.string	"mu     : %12f\n"
.LC36:
	.string	"lambda : %12f\n"
.LC37:
	.string	"max    : %12f\n"
.LC38:
	.string	"//"
.LC39:
	.string	"HMM: %s\n"
.LC40:
	.string	"//\n"
	.align 8
.LC41:
	.string	"Ouch. Temporary file %s appeared during the run."
	.align 8
.LC42:
	.string	"Ouch. Temporary file %s couldn't be opened for writing."
	.align 8
.LC43:
	.string	"Ran out of HMMs too early in pass 2"
	.align 8
.LC44:
	.string	"HMM file %s was corrupted? Parse failed in pass 2"
	.text
	.globl	hmmcalibrate
	.type	hmmcalibrate, @function
hmmcalibrate:
.LFB2:
	.file 1 "hmmcalibrate.c"
	.loc 1 146 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$240, %rsp	#,
	movl	%edi, -212(%rbp)	# argc, argc
	movq	%rsi, -224(%rbp)	# argv, argv
	.loc 1 196 0
	movl	$5000, -180(%rbp)	#, nsample
	.loc 1 197 0
	movl	$0, -172(%rbp)	#, fixedlen
	.loc 1 198 0
	movl	.LC9(%rip), %eax	#, tmp173
	movl	%eax, -168(%rbp)	# tmp173, lenmean
	.loc 1 199 0
	movl	.LC10(%rip), %eax	#, tmp174
	movl	%eax, -164(%rbp)	# tmp174, lensd
	.loc 1 200 0
	movl	$0, %edi	#,
	call	time	#
	movl	%eax, -176(%rbp)	# D.7209, seed
	.loc 1 201 0
	movq	$0, -112(%rbp)	#, histfile
	.loc 1 202 0
	movl	$0, -160(%rbp)	#, do_pvm
	.loc 1 203 0
	movl	$20, -152(%rbp)	#, pvm_lumpsize
	.loc 1 204 0
	movl	$100, -148(%rbp)	#, mu_lumpsize
	.loc 1 208 0
	movl	$0, -156(%rbp)	#, num_threads
	.loc 1 211 0
	jmp	.L2	#
.L11:
	.loc 1 214 0
	movq	-128(%rbp), %rax	# optname, optname.0
	movl	$.LC1, %esi	#,
	movq	%rax, %rdi	# optname.0,
	call	strcmp	#
	testl	%eax, %eax	# D.7210
	jne	.L3	#,
	.loc 1 214 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# optarg, optarg.1
	movq	%rax, %rdi	# optarg.1,
	call	atoi	#
	movl	%eax, -156(%rbp)	# tmp175, num_threads
	jmp	.L2	#
.L3:
	.loc 1 215 0 is_stmt 1
	movq	-128(%rbp), %rax	# optname, optname.2
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# optname.2,
	call	strcmp	#
	testl	%eax, %eax	# D.7210
	jne	.L4	#,
	.loc 1 215 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# optarg, optarg.3
	movq	%rax, %rdi	# optarg.3,
	call	atoi	#
	movl	%eax, -172(%rbp)	# tmp176, fixedlen
	jmp	.L2	#
.L4:
	.loc 1 216 0 is_stmt 1
	movq	-128(%rbp), %rax	# optname, optname.4
	movl	$.LC3, %esi	#,
	movq	%rax, %rdi	# optname.4,
	call	strcmp	#
	testl	%eax, %eax	# D.7210
	jne	.L5	#,
	.loc 1 216 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# optarg, tmp177
	movq	%rax, -112(%rbp)	# tmp177, histfile
	jmp	.L2	#
.L5:
	.loc 1 217 0 is_stmt 1
	movq	-128(%rbp), %rax	# optname, optname.5
	movl	$.LC4, %esi	#,
	movq	%rax, %rdi	# optname.5,
	call	strcmp	#
	testl	%eax, %eax	# D.7210
	jne	.L6	#,
	.loc 1 217 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# optarg, optarg.6
	movq	%rax, %rdi	# optarg.6,
	call	atof	#
	unpcklpd	%xmm0, %xmm0	# D.7211
	cvtpd2ps	%xmm0, %xmm2	# D.7211, tmp275
	movss	%xmm2, -168(%rbp)	# tmp275, lenmean
	jmp	.L2	#
.L6:
	.loc 1 218 0 is_stmt 1
	movq	-128(%rbp), %rax	# optname, optname.7
	movl	$.LC5, %esi	#,
	movq	%rax, %rdi	# optname.7,
	call	strcmp	#
	testl	%eax, %eax	# D.7210
	jne	.L7	#,
	.loc 1 218 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# optarg, optarg.8
	movq	%rax, %rdi	# optarg.8,
	call	atoi	#
	movl	%eax, -180(%rbp)	# tmp178, nsample
	jmp	.L2	#
.L7:
	.loc 1 219 0 is_stmt 1
	movq	-128(%rbp), %rax	# optname, optname.9
	movl	$.LC6, %esi	#,
	movq	%rax, %rdi	# optname.9,
	call	strcmp	#
	testl	%eax, %eax	# D.7210
	jne	.L8	#,
	.loc 1 219 0 is_stmt 0 discriminator 1
	movl	$1, -160(%rbp)	#, do_pvm
	jmp	.L2	#
.L8:
	.loc 1 220 0 is_stmt 1
	movq	-128(%rbp), %rax	# optname, optname.10
	movl	$.LC7, %esi	#,
	movq	%rax, %rdi	# optname.10,
	call	strcmp	#
	testl	%eax, %eax	# D.7210
	jne	.L9	#,
	.loc 1 220 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# optarg, optarg.11
	movq	%rax, %rdi	# optarg.11,
	call	atof	#
	unpcklpd	%xmm0, %xmm0	# D.7211
	cvtpd2ps	%xmm0, %xmm3	# D.7211, tmp276
	movss	%xmm3, -164(%rbp)	# tmp276, lensd
	jmp	.L2	#
.L9:
	.loc 1 221 0 is_stmt 1
	movq	-128(%rbp), %rax	# optname, optname.12
	movl	$.LC8, %esi	#,
	movq	%rax, %rdi	# optname.12,
	call	strcmp	#
	testl	%eax, %eax	# D.7210
	jne	.L10	#,
	.loc 1 221 0 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# optarg, optarg.13
	movq	%rax, %rdi	# optarg.13,
	call	atoi	#
	movl	%eax, -176(%rbp)	# tmp179, seed
	jmp	.L2	#
.L10:
	.loc 1 222 0 is_stmt 1
	movq	-128(%rbp), %rax	# optname, optname.14
	movl	$.LC0, %esi	#,
	movq	%rax, %rdi	# optname.14,
	call	strcmp	#
	testl	%eax, %eax	# D.7210
	jne	.L2	#,
	.loc 1 224 0
	movq	stdout(%rip), %rax	# stdout, stdout.15
	movl	$banner, %esi	#,
	movq	%rax, %rdi	# stdout.15,
	call	HMMERBanner	#
	.loc 1 225 0
	movl	$usage, %edi	#,
	call	puts	#
	.loc 1 226 0
	movl	$experts, %edi	#,
	call	puts	#
	.loc 1 227 0
	movl	$0, %edi	#,
	call	exit	#
.L2:
	.loc 1 211 0 discriminator 1
	leaq	-192(%rbp), %rcx	#, tmp180
	movq	-224(%rbp), %rsi	# argv, tmp181
	movl	-212(%rbp), %eax	# argc, tmp182
	leaq	-48(%rbp), %rdx	#, tmp183
	movq	%rdx, 8(%rsp)	# tmp183,
	leaq	-128(%rbp), %rdx	#, tmp184
	movq	%rdx, (%rsp)	# tmp184,
	movq	%rcx, %r9	# tmp180,
	movl	$usage, %r8d	#,
	movl	$9, %ecx	#,
	movl	$OPTIONS, %edx	#,
	movl	%eax, %edi	# tmp182,
	call	Getopt	#
	testl	%eax, %eax	# D.7210
	jne	.L11	#,
	.loc 1 231 0
	movl	-192(%rbp), %eax	# optind, optind.16
	movl	-212(%rbp), %edx	# argc, tmp185
	subl	%eax, %edx	# optind.16, D.7210
	movl	%edx, %eax	# D.7210, D.7210
	cmpl	$1, %eax	#, D.7210
	je	.L12	#,
	.loc 1 231 0 is_stmt 0 discriminator 1
	movl	$usage, %esi	#,
	movl	$.LC11, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L12:
	.loc 1 232 0 is_stmt 1
	movl	-192(%rbp), %eax	# optind, optind.17
	leal	1(%rax), %edx	#, optind.19
	movl	%edx, -192(%rbp)	# optind.19, optind
	cltq
	leaq	0(,%rax,8), %rdx	#, D.7212
	movq	-224(%rbp), %rax	# argv, tmp186
	addq	%rdx, %rax	# D.7212, D.7213
	movq	(%rax), %rax	# *_74, tmp187
	movq	%rax, -80(%rbp)	# tmp187, hmmfile
	.loc 1 235 0
	cmpl	$0, -160(%rbp)	#, do_pvm
	je	.L13	#,
	.loc 1 235 0 is_stmt 0 discriminator 1
	movl	$.LC12, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L13:
	.loc 1 238 0 is_stmt 1
	cmpl	$0, -156(%rbp)	#, num_threads
	je	.L14	#,
	.loc 1 238 0 is_stmt 0 discriminator 1
	movl	$.LC13, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L14:
	.loc 1 246 0 is_stmt 1
	movq	-80(%rbp), %rax	# hmmfile, tmp188
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp188,
	call	HMMFileOpen	#
	movq	%rax, -72(%rbp)	# tmp189, hmmfp
	cmpq	$0, -72(%rbp)	#, hmmfp
	jne	.L15	#,
	.loc 1 247 0
	movq	-80(%rbp), %rax	# hmmfile, tmp190
	movq	%rax, %rsi	# tmp190,
	movl	$.LC14, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L15:
	.loc 1 250 0
	movq	$0, -104(%rbp)	#, hfp
	.loc 1 251 0
	cmpq	$0, -112(%rbp)	#, histfile
	je	.L16	#,
	.loc 1 252 0
	movq	-112(%rbp), %rax	# histfile, tmp191
	movl	$.LC15, %esi	#,
	movq	%rax, %rdi	# tmp191,
	call	fopen	#
	movq	%rax, -104(%rbp)	# tmp192, hfp
	cmpq	$0, -104(%rbp)	#, hfp
	jne	.L16	#,
	.loc 1 253 0
	movq	-112(%rbp), %rax	# histfile, tmp193
	movq	%rax, %rsi	# tmp193,
	movl	$.LC16, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L16:
	.loc 1 265 0
	movq	-80(%rbp), %rax	# hmmfile, tmp194
	movq	%rax, %rdi	# tmp194,
	call	strlen	#
	addq	$5, %rax	#, D.7212
	movq	%rax, %rdx	# D.7212,
	movl	$265, %esi	#,
	movl	$.LC17, %edi	#,
	call	sre_malloc	#
	movq	%rax, -64(%rbp)	# tmp195, tmpfile
	.loc 1 266 0
	movq	-80(%rbp), %rdx	# hmmfile, tmp196
	movq	-64(%rbp), %rax	# tmpfile, tmp197
	movq	%rdx, %rsi	# tmp196,
	movq	%rax, %rdi	# tmp197,
	call	strcpy	#
	.loc 1 267 0
	movq	-64(%rbp), %rax	# tmpfile, tmp198
	movq	$-1, %rcx	#, tmp202
	movq	%rax, %rdx	# tmp198, tmp201
	movl	$0, %eax	#, tmp203
	movq	%rdx, %rdi	# tmp201, tmp201
	repnz scasb
	movq	%rcx, %rax	# tmp199, tmp199
	notq	%rax	# tmp200
	leaq	-1(%rax), %rdx	#, D.7212
	movq	-64(%rbp), %rax	# tmpfile, tmp204
	addq	%rdx, %rax	# D.7212, D.7214
	movl	$2003136046, (%rax)	#, MEM[(void *)_83]
	movb	$0, 4(%rax)	#, MEM[(void *)_83]
	.loc 1 268 0
	movq	-64(%rbp), %rax	# tmpfile, tmp205
	movq	%rax, %rdi	# tmp205,
	call	FileExists	#
	testl	%eax, %eax	# D.7210
	je	.L17	#,
	.loc 1 270 0
	movq	-64(%rbp), %rax	# tmpfile, tmp206
	movq	%rax, %rdi	# tmp206,
	call	remove	#
	testl	%eax, %eax	# D.7210
	je	.L17	#,
	.loc 1 270 0 is_stmt 0 discriminator 1
	movl	$270, %esi	#,
	movl	$.LC17, %edi	#,
	call	Panic	#
.L17:
	.loc 1 274 0 is_stmt 1
	movq	-72(%rbp), %rax	# hmmfp, tmp207
	movl	24(%rax), %eax	# hmmfp_76->is_binary, D.7210
	testl	%eax, %eax	# D.7210
	je	.L18	#,
	.loc 1 274 0 is_stmt 0 discriminator 1
	movq	$.LC18, -120(%rbp)	#, mode
	jmp	.L19	#
.L18:
	.loc 1 275 0 is_stmt 1
	movq	$.LC15, -120(%rbp)	#, mode
.L19:
	.loc 1 281 0
	movq	stdout(%rip), %rax	# stdout, stdout.20
	movl	$banner, %esi	#,
	movq	%rax, %rdi	# stdout.20,
	call	HMMERBanner	#
	.loc 1 282 0
	movq	-80(%rbp), %rax	# hmmfile, tmp208
	movq	%rax, %rsi	# tmp208,
	movl	$.LC19, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 283 0
	cmpl	$0, -172(%rbp)	#, fixedlen
	je	.L20	#,
	.loc 1 284 0
	movl	-172(%rbp), %eax	# fixedlen, tmp209
	movl	%eax, %esi	# tmp209,
	movl	$.LC20, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	jmp	.L21	#
.L20:
	.loc 1 286 0
	movss	-168(%rbp), %xmm0	# lenmean, D.7211
	cvtps2pd	%xmm0, %xmm0	# D.7211, D.7211
	movl	$.LC21, %edi	#,
	movl	$1, %eax	#,
	call	printf	#
	.loc 1 287 0
	movss	-164(%rbp), %xmm0	# lensd, D.7211
	cvtps2pd	%xmm0, %xmm0	# D.7211, D.7211
	movl	$.LC22, %edi	#,
	movl	$1, %eax	#,
	call	printf	#
.L21:
	.loc 1 289 0
	movl	-180(%rbp), %eax	# nsample, tmp210
	movl	%eax, %esi	# tmp210,
	movl	$.LC23, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 290 0
	movl	-176(%rbp), %eax	# seed, tmp211
	movl	%eax, %esi	# tmp211,
	movl	$.LC24, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 291 0
	cmpq	$0, -112(%rbp)	#, histfile
	je	.L22	#,
	.loc 1 291 0 is_stmt 0 discriminator 1
	movq	-112(%rbp), %rax	# histfile, iftmp.21
	jmp	.L23	#
.L22:
	.loc 1 291 0 discriminator 2
	movl	$.LC25, %eax	#, iftmp.21
.L23:
	.loc 1 291 0 discriminator 3
	movq	%rax, %rsi	# iftmp.21,
	movl	$.LC26, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 293 0 is_stmt 1 discriminator 3
	cmpl	$0, -160(%rbp)	#, do_pvm
	je	.L24	#,
	.loc 1 294 0
	movl	$.LC27, %edi	#,
	call	puts	#
	jmp	.L25	#
.L24:
	.loc 1 295 0
	cmpl	$0, -156(%rbp)	#, num_threads
	jle	.L25	#,
	.loc 1 296 0
	movl	-156(%rbp), %eax	# num_threads, tmp212
	movl	%eax, %esi	# tmp212,
	movl	$.LC28, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
.L25:
	.loc 1 297 0
	movl	$.LC29, %edi	#,
	call	puts	#
	.loc 1 307 0
	movl	$0, -184(%rbp)	#, nhmm
	.loc 1 308 0
	movl	-148(%rbp), %eax	# mu_lumpsize, tmp213
	cltq
	salq	$2, %rax	#, D.7212
	movq	%rax, %rdx	# D.7212,
	movl	$308, %esi	#,
	movl	$.LC17, %edi	#,
	call	sre_malloc	#
	movq	%rax, -96(%rbp)	# tmp214, mu
	.loc 1 309 0
	movl	-148(%rbp), %eax	# mu_lumpsize, tmp215
	cltq
	salq	$2, %rax	#, D.7212
	movq	%rax, %rdx	# D.7212,
	movl	$309, %esi	#,
	movl	$.LC17, %edi	#,
	call	sre_malloc	#
	movq	%rax, -88(%rbp)	# tmp216, lambda
	.loc 1 311 0
	jmp	.L26	#
.L33:
	.loc 1 313 0
	movq	-144(%rbp), %rax	# hmm, hmm.22
	testq	%rax, %rax	# hmm.22
	jne	.L27	#,
	.loc 1 314 0
	movl	$.LC30, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L27:
	.loc 1 316 0
	cmpl	$0, -160(%rbp)	#, do_pvm
	jne	.L28	#,
	.loc 1 316 0 is_stmt 0 discriminator 1
	cmpl	$0, -156(%rbp)	#, num_threads
	jne	.L28	#,
	.loc 1 317 0 is_stmt 1
	movq	-144(%rbp), %rdi	# hmm, hmm.23
	leaq	-196(%rbp), %r9	#, tmp217
	leaq	-136(%rbp), %r8	#, tmp218
	movl	-172(%rbp), %ecx	# fixedlen, tmp219
	movl	-164(%rbp), %edx	# lensd, tmp220
	movl	-168(%rbp), %eax	# lenmean, tmp221
	movl	-180(%rbp), %r10d	# nsample, tmp222
	movl	-176(%rbp), %esi	# seed, tmp223
	movl	%edx, -216(%rbp)	# tmp220, %sfp
	movss	-216(%rbp), %xmm1	# %sfp,
	movl	%eax, -216(%rbp)	# tmp221, %sfp
	movss	-216(%rbp), %xmm0	# %sfp,
	movl	%r10d, %edx	# tmp222,
	call	main_loop_serial	#
	jmp	.L29	#
.L28:
	.loc 1 333 0
	movl	$.LC31, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L29:
	.loc 1 341 0
	movq	-136(%rbp), %rax	# hist, hist.24
	movss	.LC32(%rip), %xmm0	#,
	movl	$1, %esi	#,
	movq	%rax, %rdi	# hist.24,
	call	ExtremeValueFitHistogram	#
	testl	%eax, %eax	# D.7210
	jne	.L30	#,
	.loc 1 342 0
	movl	$.LC33, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L30:
	.loc 1 344 0
	movl	-184(%rbp), %eax	# nhmm, tmp224
	cltq
	leaq	0(,%rax,4), %rdx	#, D.7212
	movq	-96(%rbp), %rax	# mu, tmp225
	addq	%rax, %rdx	# tmp225, D.7215
	movq	-136(%rbp), %rax	# hist, hist.25
	movl	44(%rax), %eax	# hist.25_109->param, D.7216
	movl	%eax, (%rdx)	# D.7216, *_108
	.loc 1 345 0
	movl	-184(%rbp), %eax	# nhmm, tmp226
	cltq
	leaq	0(,%rax,4), %rdx	#, D.7212
	movq	-88(%rbp), %rax	# lambda, tmp227
	addq	%rax, %rdx	# tmp227, D.7215
	movq	-136(%rbp), %rax	# hist, hist.26
	movl	48(%rax), %eax	# hist.26_114->param, D.7216
	movl	%eax, (%rdx)	# D.7216, *_113
	.loc 1 346 0
	addl	$1, -184(%rbp)	#, nhmm
	.loc 1 347 0
	movl	-184(%rbp), %ecx	# nhmm, tmp228
	movl	$1374389535, %edx	#, tmp230
	movl	%ecx, %eax	# tmp228, tmp274
	imull	%edx	# tmp230
	sarl	$5, %edx	#, tmp231
	movl	%ecx, %eax	# tmp228, tmp232
	sarl	$31, %eax	#, tmp232
	subl	%eax, %edx	# tmp232, D.7210
	movl	%edx, %eax	# D.7210, D.7210
	imull	$100, %eax, %eax	#, D.7210, tmp233
	subl	%eax, %ecx	# tmp233, D.7210
	movl	%ecx, %eax	# D.7210, D.7210
	testl	%eax, %eax	# D.7210
	jne	.L31	#,
	.loc 1 348 0
	movl	-148(%rbp), %eax	# mu_lumpsize, tmp234
	movl	-184(%rbp), %edx	# nhmm, tmp235
	addl	%edx, %eax	# tmp235, D.7210
	cltq
	leaq	0(,%rax,4), %rdx	#, D.7212
	movq	-96(%rbp), %rax	# mu, tmp236
	movq	%rdx, %rcx	# D.7212,
	movq	%rax, %rdx	# tmp236,
	movl	$348, %esi	#,
	movl	$.LC17, %edi	#,
	call	sre_realloc	#
	movq	%rax, -96(%rbp)	# tmp237, mu
	.loc 1 349 0
	movl	-148(%rbp), %eax	# mu_lumpsize, tmp238
	movl	-184(%rbp), %edx	# nhmm, tmp239
	addl	%edx, %eax	# tmp239, D.7210
	cltq
	leaq	0(,%rax,4), %rdx	#, D.7212
	movq	-88(%rbp), %rax	# lambda, tmp240
	movq	%rdx, %rcx	# D.7212,
	movq	%rax, %rdx	# tmp240,
	movl	$349, %esi	#,
	movl	$.LC17, %edi	#,
	call	sre_realloc	#
	movq	%rax, -88(%rbp)	# tmp241, lambda
.L31:
	.loc 1 354 0
	movq	-144(%rbp), %rax	# hmm, hmm.27
	movq	(%rax), %rax	# hmm.27_126->name, D.7214
	movq	%rax, %rsi	# D.7214,
	movl	$.LC34, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 355 0
	movq	-136(%rbp), %rax	# hist, hist.28
	movss	44(%rax), %xmm0	# hist.28_128->param, D.7216
	unpcklps	%xmm0, %xmm0	# D.7216, D.7216
	cvtps2pd	%xmm0, %xmm0	# D.7216, D.7211
	movl	$.LC35, %edi	#,
	movl	$1, %eax	#,
	call	printf	#
	.loc 1 356 0
	movq	-136(%rbp), %rax	# hist, hist.29
	movss	48(%rax), %xmm0	# hist.29_131->param, D.7216
	unpcklps	%xmm0, %xmm0	# D.7216, D.7216
	cvtps2pd	%xmm0, %xmm0	# D.7216, D.7211
	movl	$.LC36, %edi	#,
	movl	$1, %eax	#,
	call	printf	#
	.loc 1 357 0
	movss	-196(%rbp), %xmm0	# max, max.30
	unpcklps	%xmm0, %xmm0	# max.30, max.30
	cvtps2pd	%xmm0, %xmm0	# max.30, D.7211
	movl	$.LC37, %edi	#,
	movl	$1, %eax	#,
	call	printf	#
	.loc 1 358 0
	movl	$.LC38, %edi	#,
	call	puts	#
	.loc 1 360 0
	cmpq	$0, -104(%rbp)	#, hfp
	je	.L32	#,
	.loc 1 362 0
	movq	-144(%rbp), %rax	# hmm, hmm.31
	movq	(%rax), %rdx	# hmm.31_136->name, D.7214
	movq	-104(%rbp), %rax	# hfp, tmp242
	movl	$.LC39, %esi	#,
	movq	%rax, %rdi	# tmp242,
	movl	$0, %eax	#,
	call	fprintf	#
	.loc 1 363 0
	movq	-136(%rbp), %rdx	# hist, hist.32
	movq	-104(%rbp), %rax	# hfp, tmp243
	movq	%rdx, %rsi	# hist.32,
	movq	%rax, %rdi	# tmp243,
	call	PrintASCIIHistogram	#
	.loc 1 364 0
	movq	-104(%rbp), %rax	# hfp, tmp244
	movq	%rax, %rcx	# tmp244,
	movl	$3, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC40, %edi	#,
	call	fwrite	#
.L32:
	.loc 1 367 0
	movq	-136(%rbp), %rax	# hist, hist.33
	movq	%rax, %rdi	# hist.33,
	call	FreeHistogram	#
	.loc 1 368 0
	movq	-144(%rbp), %rax	# hmm, hmm.34
	movq	%rax, %rdi	# hmm.34,
	call	FreePlan7	#
.L26:
	.loc 1 311 0 discriminator 1
	leaq	-144(%rbp), %rdx	#, tmp245
	movq	-72(%rbp), %rax	# hmmfp, tmp246
	movq	%rdx, %rsi	# tmp245,
	movq	%rax, %rdi	# tmp246,
	call	HMMFileRead	#
	testl	%eax, %eax	# D.7210
	jne	.L33	#,
	.loc 1 377 0
	movq	-72(%rbp), %rax	# hmmfp, tmp247
	movq	%rax, %rdi	# tmp247,
	call	HMMFileRewind	#
	.loc 1 378 0
	movq	-64(%rbp), %rax	# tmpfile, tmp248
	movq	%rax, %rdi	# tmp248,
	call	FileExists	#
	testl	%eax, %eax	# D.7210
	je	.L34	#,
	.loc 1 379 0
	movq	-64(%rbp), %rax	# tmpfile, tmp249
	movq	%rax, %rsi	# tmp249,
	movl	$.LC41, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L34:
	.loc 1 380 0
	movq	-120(%rbp), %rdx	# mode, tmp250
	movq	-64(%rbp), %rax	# tmpfile, tmp251
	movq	%rdx, %rsi	# tmp250,
	movq	%rax, %rdi	# tmp251,
	call	fopen	#
	movq	%rax, -56(%rbp)	# tmp252, outfp
	cmpq	$0, -56(%rbp)	#, outfp
	jne	.L35	#,
	.loc 1 381 0
	movq	-64(%rbp), %rax	# tmpfile, tmp253
	movq	%rax, %rsi	# tmp253,
	movl	$.LC42, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L35:
	.loc 1 383 0
	movl	$0, -188(%rbp)	#, idx
	jmp	.L36	#
.L41:
	.loc 1 387 0
	leaq	-144(%rbp), %rdx	#, tmp254
	movq	-72(%rbp), %rax	# hmmfp, tmp255
	movq	%rdx, %rsi	# tmp254,
	movq	%rax, %rdi	# tmp255,
	call	HMMFileRead	#
	testl	%eax, %eax	# D.7210
	jne	.L37	#,
	.loc 1 388 0
	movl	$.LC43, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L37:
	.loc 1 389 0
	movq	-144(%rbp), %rax	# hmm, hmm.35
	testq	%rax, %rax	# hmm.35
	jne	.L38	#,
	.loc 1 390 0
	movq	-80(%rbp), %rax	# hmmfile, tmp256
	movq	%rax, %rsi	# tmp256,
	movl	$.LC44, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L38:
	.loc 1 394 0
	movq	-144(%rbp), %rdx	# hmm, hmm.36
	movl	-188(%rbp), %eax	# idx, tmp257
	cltq
	leaq	0(,%rax,4), %rcx	#, D.7212
	movq	-96(%rbp), %rax	# mu, tmp258
	addq	%rcx, %rax	# D.7212, D.7215
	movl	(%rax), %eax	# *_149, D.7216
	movl	%eax, 448(%rdx)	# D.7216, hmm.36_146->mu
	.loc 1 395 0
	movq	-144(%rbp), %rdx	# hmm, hmm.37
	movl	-188(%rbp), %eax	# idx, tmp259
	cltq
	leaq	0(,%rax,4), %rcx	#, D.7212
	movq	-88(%rbp), %rax	# lambda, tmp260
	addq	%rcx, %rax	# D.7212, D.7215
	movl	(%rax), %eax	# *_154, D.7216
	movl	%eax, 452(%rdx)	# D.7216, hmm.37_151->lambda
	.loc 1 396 0
	movq	-144(%rbp), %rax	# hmm, hmm.38
	movq	-144(%rbp), %rdx	# hmm, hmm.39
	movl	456(%rdx), %edx	# hmm.39_157->flags, D.7210
	orb	$-128, %dl	#, D.7210
	movl	%edx, 456(%rax)	# D.7210, hmm.38_156->flags
	.loc 1 397 0
	movq	-144(%rbp), %rax	# hmm, hmm.40
	movq	-224(%rbp), %rdx	# argv, tmp261
	movl	-212(%rbp), %ecx	# argc, tmp262
	movl	%ecx, %esi	# tmp262,
	movq	%rax, %rdi	# hmm.40,
	call	Plan7ComlogAppend	#
	.loc 1 401 0
	movq	-72(%rbp), %rax	# hmmfp, tmp263
	movl	24(%rax), %eax	# hmmfp_76->is_binary, D.7210
	testl	%eax, %eax	# D.7210
	je	.L39	#,
	.loc 1 401 0 is_stmt 0 discriminator 1
	movq	-144(%rbp), %rdx	# hmm, hmm.41
	movq	-56(%rbp), %rax	# outfp, tmp264
	movq	%rdx, %rsi	# hmm.41,
	movq	%rax, %rdi	# tmp264,
	call	WriteBinHMM	#
	jmp	.L40	#
.L39:
	.loc 1 402 0 is_stmt 1
	movq	-144(%rbp), %rdx	# hmm, hmm.42
	movq	-56(%rbp), %rax	# outfp, tmp265
	movq	%rdx, %rsi	# hmm.42,
	movq	%rax, %rdi	# tmp265,
	call	WriteAscHMM	#
.L40:
	.loc 1 404 0
	movq	-144(%rbp), %rax	# hmm, hmm.43
	movq	%rax, %rdi	# hmm.43,
	call	FreePlan7	#
	.loc 1 383 0
	addl	$1, -188(%rbp)	#, idx
.L36:
	.loc 1 383 0 is_stmt 0 discriminator 1
	movl	-188(%rbp), %eax	# idx, tmp266
	cmpl	-184(%rbp), %eax	# nhmm, tmp266
	jl	.L41	#,
	.loc 1 414 0 is_stmt 1
	movq	-72(%rbp), %rax	# hmmfp, tmp267
	movq	%rax, %rdi	# tmp267,
	call	HMMFileClose	#
	.loc 1 415 0
	movq	-56(%rbp), %rax	# outfp, tmp268
	movq	%rax, %rdi	# tmp268,
	call	fclose	#
	testl	%eax, %eax	# D.7210
	je	.L42	#,
	.loc 1 415 0 is_stmt 0 discriminator 1
	movl	$415, %esi	#,
	movl	$.LC17, %edi	#,
	call	Panic	#
.L42:
	.loc 1 425 0 is_stmt 1
	movq	-64(%rbp), %rax	# tmpfile, tmp269
	movq	%rax, %rdi	# tmp269,
	call	free	#
	.loc 1 446 0
	movq	-96(%rbp), %rax	# mu, tmp270
	movq	%rax, %rdi	# tmp270,
	call	free	#
	.loc 1 447 0
	movq	-88(%rbp), %rax	# lambda, tmp271
	movq	%rax, %rdi	# tmp271,
	call	free	#
	.loc 1 448 0
	cmpq	$0, -104(%rbp)	#, hfp
	je	.L43	#,
	.loc 1 448 0 is_stmt 0 discriminator 1
	movq	-104(%rbp), %rax	# hfp, tmp272
	movq	%rax, %rdi	# tmp272,
	call	fclose	#
.L43:
	.loc 1 449 0 is_stmt 1
	call	SqdClean	#
	.loc 1 450 0
	movl	$0, %eax	#, D.7210
	.loc 1 451 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	hmmcalibrate, .-hmmcalibrate
	.type	main_loop_serial, @function
main_loop_serial:
.LFB3:
	.loc 1 476 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$192, %rsp	#,
	movq	%rdi, -152(%rbp)	# hmm, hmm
	movl	%esi, -156(%rbp)	# seed, seed
	movl	%edx, -160(%rbp)	# nsample, nsample
	movss	%xmm0, -164(%rbp)	# lenmean, lenmean
	movss	%xmm1, -168(%rbp)	# lensd, lensd
	movl	%ecx, -172(%rbp)	# fixedlen, fixedlen
	movq	%r8, -184(%rbp)	# ret_hist, ret_hist
	movq	%r9, -192(%rbp)	# ret_max, ret_max
	.loc 1 492 0
	movl	-156(%rbp), %eax	# seed, tmp66
	movl	%eax, %edi	# tmp66,
	call	sre_srandom	#
	.loc 1 493 0
	movq	-152(%rbp), %rax	# hmm, tmp67
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp67,
	call	P7Logoddsify	#
	.loc 1 494 0
	leaq	-132(%rbp), %rdx	#, tmp68
	leaq	-80(%rbp), %rax	#, tmp69
	movq	%rdx, %rsi	# tmp68,
	movq	%rax, %rdi	# tmp69,
	call	P7DefaultNullModel	#
	.loc 1 495 0
	movl	$100, %edx	#,
	movl	$200, %esi	#,
	movl	$-200, %edi	#,
	call	AllocHistogram	#
	movq	%rax, -112(%rbp)	# tmp70, hist
	.loc 1 496 0
	movq	-152(%rbp), %rax	# hmm, tmp71
	movl	136(%rax), %eax	# hmm_7(D)->M, D.7252
	movl	$0, %ecx	#,
	movl	$25, %edx	#,
	movl	%eax, %esi	# D.7252,
	movl	$1, %edi	#,
	call	CreatePlan7Matrix	#
	movq	%rax, -104(%rbp)	# tmp72, mx
	.loc 1 497 0
	movl	.LC45(%rip), %eax	#, tmp73
	movl	%eax, -128(%rbp)	# tmp73, max
	.loc 1 499 0
	movl	$0, -116(%rbp)	#, idx
	jmp	.L46	#
.L53:
	.loc 1 502 0
	cmpl	$0, -172(%rbp)	#, fixedlen
	je	.L47	#,
	.loc 1 502 0 is_stmt 0 discriminator 1
	movl	-172(%rbp), %eax	# fixedlen, tmp74
	movl	%eax, -120(%rbp)	# tmp74, sqlen
	jmp	.L48	#
.L47:
	.loc 1 503 0 is_stmt 1 discriminator 1
	movss	-168(%rbp), %xmm1	# lensd, D.7253
	cvtps2pd	%xmm1, %xmm1	# D.7253, D.7253
	movss	-164(%rbp), %xmm0	# lenmean, D.7253
	cvtps2pd	%xmm0, %xmm0	# D.7253, D.7253
	call	Gaussrandom	#
	cvttsd2si	%xmm0, %eax	# D.7253, tmp75
	movl	%eax, -120(%rbp)	# tmp75, sqlen
	cmpl	$0, -120(%rbp)	#, sqlen
	jle	.L47	#,
.L48:
	.loc 1 505 0
	movl	Alphabet_size(%rip), %edx	# Alphabet_size, Alphabet_size.44
	movl	-120(%rbp), %ecx	# sqlen, tmp76
	leaq	-80(%rbp), %rax	#, tmp77
	movq	%rax, %rsi	# tmp77,
	movl	$Alphabet, %edi	#,
	call	RandomSequence	#
	movq	%rax, -96(%rbp)	# tmp78, seq
	.loc 1 506 0
	movl	-120(%rbp), %edx	# sqlen, tmp79
	movq	-96(%rbp), %rax	# seq, tmp80
	movl	%edx, %esi	# tmp79,
	movq	%rax, %rdi	# tmp80,
	call	DigitizeSequence	#
	movq	%rax, -88(%rbp)	# tmp81, dsq
	.loc 1 508 0
	movq	-152(%rbp), %rax	# hmm, tmp82
	movl	136(%rax), %edx	# hmm_7(D)->M, D.7252
	movl	-120(%rbp), %eax	# sqlen, tmp83
	movl	%edx, %esi	# D.7252,
	movl	%eax, %edi	# tmp83,
	call	P7ViterbiSize	#
	cmpl	$1000, %eax	#, D.7252
	jg	.L49	#,
	.loc 1 509 0
	movq	-104(%rbp), %rcx	# mx, tmp84
	movq	-152(%rbp), %rdx	# hmm, tmp85
	movl	-120(%rbp), %esi	# sqlen, tmp86
	movq	-88(%rbp), %rax	# dsq, tmp87
	movl	$0, %r8d	#,
	movq	%rax, %rdi	# tmp87,
	call	P7Viterbi	#
	movss	%xmm0, -176(%rbp)	#, %sfp
	movl	-176(%rbp), %eax	# %sfp, tmp88
	movl	%eax, -124(%rbp)	# tmp88, score
	jmp	.L50	#
.L49:
	.loc 1 511 0
	movq	-104(%rbp), %rcx	# mx, tmp89
	movq	-152(%rbp), %rdx	# hmm, tmp90
	movl	-120(%rbp), %esi	# sqlen, tmp91
	movq	-88(%rbp), %rax	# dsq, tmp92
	movl	$0, %r8d	#,
	movq	%rax, %rdi	# tmp92,
	call	P7SmallViterbi	#
	movss	%xmm0, -176(%rbp)	#, %sfp
	movl	-176(%rbp), %eax	# %sfp, tmp93
	movl	%eax, -124(%rbp)	# tmp93, score
.L50:
	.loc 1 513 0
	movl	-124(%rbp), %eax	# score, tmp94
	movq	-112(%rbp), %rdx	# hist, tmp95
	movl	%eax, -176(%rbp)	# tmp94, %sfp
	movss	-176(%rbp), %xmm0	# %sfp,
	movq	%rdx, %rdi	# tmp95,
	call	AddToHistogram	#
	.loc 1 514 0
	movss	-124(%rbp), %xmm0	# score, tmp96
	ucomiss	-128(%rbp), %xmm0	# max, tmp96
	jbe	.L51	#,
	.loc 1 514 0 is_stmt 0 discriminator 1
	movl	-124(%rbp), %eax	# score, tmp97
	movl	%eax, -128(%rbp)	# tmp97, max
.L51:
	.loc 1 516 0 is_stmt 1
	movq	-88(%rbp), %rax	# dsq, tmp98
	movq	%rax, %rdi	# tmp98,
	call	free	#
	.loc 1 517 0
	movq	-96(%rbp), %rax	# seq, tmp99
	movq	%rax, %rdi	# tmp99,
	call	free	#
	.loc 1 499 0
	addl	$1, -116(%rbp)	#, idx
.L46:
	.loc 1 499 0 is_stmt 0 discriminator 1
	movl	-116(%rbp), %eax	# idx, tmp100
	cmpl	-160(%rbp), %eax	# nsample, tmp100
	jl	.L53	#,
	.loc 1 520 0 is_stmt 1
	movq	-104(%rbp), %rax	# mx, tmp101
	movq	%rax, %rdi	# tmp101,
	call	FreePlan7Matrix	#
	.loc 1 521 0
	movq	-184(%rbp), %rax	# ret_hist, tmp102
	movq	-112(%rbp), %rdx	# hist, tmp103
	movq	%rdx, (%rax)	# tmp103, *ret_hist_31(D)
	.loc 1 522 0
	movq	-192(%rbp), %rdx	# ret_max, tmp104
	movl	-128(%rbp), %eax	# max, tmp105
	movl	%eax, (%rdx)	# tmp105, *ret_max_32(D)
	.loc 1 523 0
	nop
	.loc 1 524 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	main_loop_serial, .-main_loop_serial
	.section	.rodata
	.align 4
.LC9:
	.long	1134723072
	.align 4
.LC10:
	.long	1128792064
	.align 4
.LC32:
	.long	1176255488
	.align 4
.LC45:
	.long	4286578687
	.text
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "/usr/include/time.h"
	.file 7 "squid.h"
	.file 8 "ssi.h"
	.file 9 "stopwatch.h"
	.file 10 "structs.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xdbb
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF174
	.byte	0x1
	.long	.LASF175
	.long	.LASF176
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
	.byte	0x90
	.long	0x69
	.uleb128 0x2
	.long	.LASF12
	.byte	0x3
	.byte	0x94
	.long	0x69
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0xab
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF13
	.uleb128 0x2
	.long	.LASF14
	.byte	0x4
	.byte	0x30
	.long	0xbd
	.uleb128 0x7
	.long	.LASF44
	.byte	0xd8
	.byte	0x5
	.byte	0xf6
	.long	0x23e
	.uleb128 0x8
	.long	.LASF15
	.byte	0x5
	.byte	0xf7
	.long	0x62
	.byte	0
	.uleb128 0x8
	.long	.LASF16
	.byte	0x5
	.byte	0xfc
	.long	0xa5
	.byte	0x8
	.uleb128 0x8
	.long	.LASF17
	.byte	0x5
	.byte	0xfd
	.long	0xa5
	.byte	0x10
	.uleb128 0x8
	.long	.LASF18
	.byte	0x5
	.byte	0xfe
	.long	0xa5
	.byte	0x18
	.uleb128 0x8
	.long	.LASF19
	.byte	0x5
	.byte	0xff
	.long	0xa5
	.byte	0x20
	.uleb128 0x9
	.long	.LASF20
	.byte	0x5
	.value	0x100
	.long	0xa5
	.byte	0x28
	.uleb128 0x9
	.long	.LASF21
	.byte	0x5
	.value	0x101
	.long	0xa5
	.byte	0x30
	.uleb128 0x9
	.long	.LASF22
	.byte	0x5
	.value	0x102
	.long	0xa5
	.byte	0x38
	.uleb128 0x9
	.long	.LASF23
	.byte	0x5
	.value	0x103
	.long	0xa5
	.byte	0x40
	.uleb128 0x9
	.long	.LASF24
	.byte	0x5
	.value	0x105
	.long	0xa5
	.byte	0x48
	.uleb128 0x9
	.long	.LASF25
	.byte	0x5
	.value	0x106
	.long	0xa5
	.byte	0x50
	.uleb128 0x9
	.long	.LASF26
	.byte	0x5
	.value	0x107
	.long	0xa5
	.byte	0x58
	.uleb128 0x9
	.long	.LASF27
	.byte	0x5
	.value	0x109
	.long	0x276
	.byte	0x60
	.uleb128 0x9
	.long	.LASF28
	.byte	0x5
	.value	0x10b
	.long	0x27c
	.byte	0x68
	.uleb128 0x9
	.long	.LASF29
	.byte	0x5
	.value	0x10d
	.long	0x62
	.byte	0x70
	.uleb128 0x9
	.long	.LASF30
	.byte	0x5
	.value	0x111
	.long	0x62
	.byte	0x74
	.uleb128 0x9
	.long	.LASF31
	.byte	0x5
	.value	0x113
	.long	0x70
	.byte	0x78
	.uleb128 0x9
	.long	.LASF32
	.byte	0x5
	.value	0x117
	.long	0x46
	.byte	0x80
	.uleb128 0x9
	.long	.LASF33
	.byte	0x5
	.value	0x118
	.long	0x54
	.byte	0x82
	.uleb128 0x9
	.long	.LASF34
	.byte	0x5
	.value	0x119
	.long	0x282
	.byte	0x83
	.uleb128 0x9
	.long	.LASF35
	.byte	0x5
	.value	0x11d
	.long	0x292
	.byte	0x88
	.uleb128 0x9
	.long	.LASF36
	.byte	0x5
	.value	0x126
	.long	0x7b
	.byte	0x90
	.uleb128 0x9
	.long	.LASF37
	.byte	0x5
	.value	0x12f
	.long	0xa3
	.byte	0x98
	.uleb128 0x9
	.long	.LASF38
	.byte	0x5
	.value	0x130
	.long	0xa3
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF39
	.byte	0x5
	.value	0x131
	.long	0xa3
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF40
	.byte	0x5
	.value	0x132
	.long	0xa3
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF41
	.byte	0x5
	.value	0x133
	.long	0x2d
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF42
	.byte	0x5
	.value	0x135
	.long	0x62
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF43
	.byte	0x5
	.value	0x137
	.long	0x298
	.byte	0xc4
	.byte	0
	.uleb128 0xa
	.long	.LASF177
	.byte	0x5
	.byte	0x9b
	.uleb128 0x7
	.long	.LASF45
	.byte	0x18
	.byte	0x5
	.byte	0xa1
	.long	0x276
	.uleb128 0x8
	.long	.LASF46
	.byte	0x5
	.byte	0xa2
	.long	0x276
	.byte	0
	.uleb128 0x8
	.long	.LASF47
	.byte	0x5
	.byte	0xa3
	.long	0x27c
	.byte	0x8
	.uleb128 0x8
	.long	.LASF48
	.byte	0x5
	.byte	0xa7
	.long	0x62
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x245
	.uleb128 0x6
	.byte	0x8
	.long	0xbd
	.uleb128 0xb
	.long	0xab
	.long	0x292
	.uleb128 0xc
	.long	0x86
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x23e
	.uleb128 0xb
	.long	0xab
	.long	0x2a8
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
	.long	.LASF49
	.uleb128 0x2
	.long	.LASF50
	.byte	0x6
	.byte	0x3b
	.long	0x8d
	.uleb128 0x2
	.long	.LASF51
	.byte	0x6
	.byte	0x4b
	.long	0x98
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF52
	.uleb128 0xb
	.long	0xab
	.long	0x2e2
	.uleb128 0xc
	.long	0x86
	.byte	0x2f
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF53
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF54
	.uleb128 0x2
	.long	.LASF55
	.byte	0x7
	.byte	0x28
	.long	0x46
	.uleb128 0x2
	.long	.LASF56
	.byte	0x7
	.byte	0x29
	.long	0x4d
	.uleb128 0x2
	.long	.LASF57
	.byte	0x7
	.byte	0x2a
	.long	0x2cb
	.uleb128 0xd
	.byte	0x8
	.byte	0x8
	.byte	0x25
	.long	0x330
	.uleb128 0xe
	.string	"i32"
	.byte	0x8
	.byte	0x26
	.long	0x2fb
	.uleb128 0xe
	.string	"i64"
	.byte	0x8
	.byte	0x27
	.long	0x306
	.byte	0
	.uleb128 0x7
	.long	.LASF58
	.byte	0x10
	.byte	0x8
	.byte	0x23
	.long	0x355
	.uleb128 0x8
	.long	.LASF59
	.byte	0x8
	.byte	0x24
	.long	0xab
	.byte	0
	.uleb128 0xf
	.string	"off"
	.byte	0x8
	.byte	0x28
	.long	0x311
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.long	.LASF60
	.byte	0x8
	.byte	0x2a
	.long	0x330
	.uleb128 0x7
	.long	.LASF61
	.byte	0x90
	.byte	0x8
	.byte	0x31
	.long	0x468
	.uleb128 0xf
	.string	"fp"
	.byte	0x8
	.byte	0x32
	.long	0x468
	.byte	0
	.uleb128 0x8
	.long	.LASF62
	.byte	0x8
	.byte	0x33
	.long	0x2fb
	.byte	0x8
	.uleb128 0x8
	.long	.LASF63
	.byte	0x8
	.byte	0x34
	.long	0x2f0
	.byte	0xc
	.uleb128 0x8
	.long	.LASF64
	.byte	0x8
	.byte	0x35
	.long	0x2fb
	.byte	0x10
	.uleb128 0x8
	.long	.LASF65
	.byte	0x8
	.byte	0x36
	.long	0x2fb
	.byte	0x14
	.uleb128 0x8
	.long	.LASF66
	.byte	0x8
	.byte	0x37
	.long	0x2fb
	.byte	0x18
	.uleb128 0x8
	.long	.LASF67
	.byte	0x8
	.byte	0x38
	.long	0x2fb
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF68
	.byte	0x8
	.byte	0x39
	.long	0x2fb
	.byte	0x20
	.uleb128 0x8
	.long	.LASF69
	.byte	0x8
	.byte	0x3a
	.long	0x2fb
	.byte	0x24
	.uleb128 0x8
	.long	.LASF70
	.byte	0x8
	.byte	0x3b
	.long	0x2fb
	.byte	0x28
	.uleb128 0x8
	.long	.LASF71
	.byte	0x8
	.byte	0x3c
	.long	0x2fb
	.byte	0x2c
	.uleb128 0x8
	.long	.LASF72
	.byte	0x8
	.byte	0x3d
	.long	0x355
	.byte	0x30
	.uleb128 0x8
	.long	.LASF73
	.byte	0x8
	.byte	0x3e
	.long	0x355
	.byte	0x40
	.uleb128 0x8
	.long	.LASF74
	.byte	0x8
	.byte	0x3f
	.long	0x355
	.byte	0x50
	.uleb128 0x8
	.long	.LASF75
	.byte	0x8
	.byte	0x41
	.long	0xab
	.byte	0x60
	.uleb128 0x8
	.long	.LASF76
	.byte	0x8
	.byte	0x42
	.long	0xab
	.byte	0x61
	.uleb128 0x8
	.long	.LASF77
	.byte	0x8
	.byte	0x46
	.long	0x46e
	.byte	0x68
	.uleb128 0x8
	.long	.LASF78
	.byte	0x8
	.byte	0x47
	.long	0x474
	.byte	0x70
	.uleb128 0x8
	.long	.LASF79
	.byte	0x8
	.byte	0x48
	.long	0x474
	.byte	0x78
	.uleb128 0xf
	.string	"bpl"
	.byte	0x8
	.byte	0x49
	.long	0x474
	.byte	0x80
	.uleb128 0xf
	.string	"rpl"
	.byte	0x8
	.byte	0x4a
	.long	0x474
	.byte	0x88
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xb2
	.uleb128 0x6
	.byte	0x8
	.long	0xa5
	.uleb128 0x6
	.byte	0x8
	.long	0x2fb
	.uleb128 0x2
	.long	.LASF80
	.byte	0x8
	.byte	0x4c
	.long	0x360
	.uleb128 0x6
	.byte	0x8
	.long	0x2e2
	.uleb128 0x6
	.byte	0x8
	.long	0x47a
	.uleb128 0x10
	.long	.LASF81
	.byte	0x10
	.byte	0x7
	.value	0x14a
	.long	0x4c6
	.uleb128 0x9
	.long	.LASF82
	.byte	0x7
	.value	0x14b
	.long	0xa5
	.byte	0
	.uleb128 0x9
	.long	.LASF83
	.byte	0x7
	.value	0x14c
	.long	0x62
	.byte	0x8
	.uleb128 0x9
	.long	.LASF84
	.byte	0x7
	.value	0x14d
	.long	0x62
	.byte	0xc
	.byte	0
	.uleb128 0x7
	.long	.LASF85
	.byte	0x28
	.byte	0x9
	.byte	0x22
	.long	0x50e
	.uleb128 0xf
	.string	"t0"
	.byte	0x9
	.byte	0x23
	.long	0x2c0
	.byte	0
	.uleb128 0x8
	.long	.LASF86
	.byte	0x9
	.byte	0x25
	.long	0x2b5
	.byte	0x8
	.uleb128 0x8
	.long	.LASF87
	.byte	0x9
	.byte	0x2a
	.long	0x2e9
	.byte	0x10
	.uleb128 0x8
	.long	.LASF88
	.byte	0x9
	.byte	0x2b
	.long	0x2e9
	.byte	0x18
	.uleb128 0xf
	.string	"sys"
	.byte	0x9
	.byte	0x2c
	.long	0x2e9
	.byte	0x20
	.byte	0
	.uleb128 0x2
	.long	.LASF89
	.byte	0x9
	.byte	0x2e
	.long	0x4c6
	.uleb128 0x11
	.long	.LASF90
	.value	0x1d0
	.byte	0xa
	.byte	0x65
	.long	0x770
	.uleb128 0x8
	.long	.LASF82
	.byte	0xa
	.byte	0x71
	.long	0xa5
	.byte	0
	.uleb128 0xf
	.string	"acc"
	.byte	0xa
	.byte	0x72
	.long	0xa5
	.byte	0x8
	.uleb128 0x8
	.long	.LASF91
	.byte	0xa
	.byte	0x73
	.long	0xa5
	.byte	0x10
	.uleb128 0xf
	.string	"rf"
	.byte	0xa
	.byte	0x74
	.long	0xa5
	.byte	0x18
	.uleb128 0xf
	.string	"cs"
	.byte	0xa
	.byte	0x75
	.long	0xa5
	.byte	0x20
	.uleb128 0xf
	.string	"ca"
	.byte	0xa
	.byte	0x76
	.long	0xa5
	.byte	0x28
	.uleb128 0x8
	.long	.LASF92
	.byte	0xa
	.byte	0x77
	.long	0xa5
	.byte	0x30
	.uleb128 0x8
	.long	.LASF93
	.byte	0xa
	.byte	0x78
	.long	0x62
	.byte	0x38
	.uleb128 0x8
	.long	.LASF94
	.byte	0xa
	.byte	0x79
	.long	0xa5
	.byte	0x40
	.uleb128 0xf
	.string	"map"
	.byte	0xa
	.byte	0x7a
	.long	0x2a8
	.byte	0x48
	.uleb128 0x8
	.long	.LASF95
	.byte	0xa
	.byte	0x7b
	.long	0x62
	.byte	0x50
	.uleb128 0x8
	.long	.LASF96
	.byte	0xa
	.byte	0x86
	.long	0x2a8
	.byte	0x58
	.uleb128 0x8
	.long	.LASF97
	.byte	0xa
	.byte	0x87
	.long	0x2a8
	.byte	0x60
	.uleb128 0x8
	.long	.LASF98
	.byte	0xa
	.byte	0x88
	.long	0x2a8
	.byte	0x68
	.uleb128 0xf
	.string	"ga1"
	.byte	0xa
	.byte	0x90
	.long	0x2e2
	.byte	0x70
	.uleb128 0xf
	.string	"ga2"
	.byte	0xa
	.byte	0x90
	.long	0x2e2
	.byte	0x74
	.uleb128 0xf
	.string	"tc1"
	.byte	0xa
	.byte	0x91
	.long	0x2e2
	.byte	0x78
	.uleb128 0xf
	.string	"tc2"
	.byte	0xa
	.byte	0x91
	.long	0x2e2
	.byte	0x7c
	.uleb128 0xf
	.string	"nc1"
	.byte	0xa
	.byte	0x92
	.long	0x2e2
	.byte	0x80
	.uleb128 0xf
	.string	"nc2"
	.byte	0xa
	.byte	0x92
	.long	0x2e2
	.byte	0x84
	.uleb128 0xf
	.string	"M"
	.byte	0xa
	.byte	0x9b
	.long	0x62
	.byte	0x88
	.uleb128 0xf
	.string	"t"
	.byte	0xa
	.byte	0x9c
	.long	0x770
	.byte	0x90
	.uleb128 0xf
	.string	"mat"
	.byte	0xa
	.byte	0x9d
	.long	0x770
	.byte	0x98
	.uleb128 0xf
	.string	"ins"
	.byte	0xa
	.byte	0x9e
	.long	0x770
	.byte	0xa0
	.uleb128 0x8
	.long	.LASF99
	.byte	0xa
	.byte	0x9f
	.long	0x2e2
	.byte	0xa8
	.uleb128 0xf
	.string	"xt"
	.byte	0xa
	.byte	0xa8
	.long	0x776
	.byte	0xac
	.uleb128 0x8
	.long	.LASF100
	.byte	0xa
	.byte	0xa9
	.long	0x485
	.byte	0xd0
	.uleb128 0xf
	.string	"end"
	.byte	0xa
	.byte	0xaa
	.long	0x485
	.byte	0xd8
	.uleb128 0x8
	.long	.LASF101
	.byte	0xa
	.byte	0xae
	.long	0x78c
	.byte	0xe0
	.uleb128 0x12
	.string	"p1"
	.byte	0xa
	.byte	0xaf
	.long	0x2e2
	.value	0x130
	.uleb128 0x12
	.string	"tsc"
	.byte	0xa
	.byte	0xc5
	.long	0x79c
	.value	0x138
	.uleb128 0x12
	.string	"msc"
	.byte	0xa
	.byte	0xc6
	.long	0x79c
	.value	0x140
	.uleb128 0x12
	.string	"isc"
	.byte	0xa
	.byte	0xc7
	.long	0x79c
	.value	0x148
	.uleb128 0x12
	.string	"xsc"
	.byte	0xa
	.byte	0xc8
	.long	0x7a2
	.value	0x150
	.uleb128 0x12
	.string	"bsc"
	.byte	0xa
	.byte	0xc9
	.long	0x2a8
	.value	0x170
	.uleb128 0x12
	.string	"esc"
	.byte	0xa
	.byte	0xca
	.long	0x2a8
	.value	0x178
	.uleb128 0x13
	.long	.LASF102
	.byte	0xa
	.byte	0xcb
	.long	0x2a8
	.value	0x180
	.uleb128 0x13
	.long	.LASF103
	.byte	0xa
	.byte	0xcb
	.long	0x2a8
	.value	0x188
	.uleb128 0x13
	.long	.LASF104
	.byte	0xa
	.byte	0xcb
	.long	0x2a8
	.value	0x190
	.uleb128 0x13
	.long	.LASF105
	.byte	0xa
	.byte	0xcb
	.long	0x2a8
	.value	0x198
	.uleb128 0x13
	.long	.LASF106
	.byte	0xa
	.byte	0xcb
	.long	0x2a8
	.value	0x1a0
	.uleb128 0x13
	.long	.LASF107
	.byte	0xa
	.byte	0xd6
	.long	0x79c
	.value	0x1a8
	.uleb128 0x13
	.long	.LASF108
	.byte	0xa
	.byte	0xd7
	.long	0x79c
	.value	0x1b0
	.uleb128 0x13
	.long	.LASF109
	.byte	0xa
	.byte	0xd8
	.long	0x62
	.value	0x1b8
	.uleb128 0x13
	.long	.LASF110
	.byte	0xa
	.byte	0xd9
	.long	0x62
	.value	0x1bc
	.uleb128 0x12
	.string	"mu"
	.byte	0xa
	.byte	0xde
	.long	0x2e2
	.value	0x1c0
	.uleb128 0x13
	.long	.LASF111
	.byte	0xa
	.byte	0xdf
	.long	0x2e2
	.value	0x1c4
	.uleb128 0x13
	.long	.LASF62
	.byte	0xa
	.byte	0xe1
	.long	0x62
	.value	0x1c8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x485
	.uleb128 0xb
	.long	0x2e2
	.long	0x78c
	.uleb128 0xc
	.long	0x86
	.byte	0x3
	.uleb128 0xc
	.long	0x86
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.long	0x2e2
	.long	0x79c
	.uleb128 0xc
	.long	0x86
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2a8
	.uleb128 0xb
	.long	0x62
	.long	0x7b8
	.uleb128 0xc
	.long	0x86
	.byte	0x3
	.uleb128 0xc
	.long	0x86
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.long	.LASF112
	.byte	0x50
	.byte	0xa
	.value	0x121
	.long	0x862
	.uleb128 0x14
	.string	"xmx"
	.byte	0xa
	.value	0x122
	.long	0x79c
	.byte	0
	.uleb128 0x14
	.string	"mmx"
	.byte	0xa
	.value	0x123
	.long	0x79c
	.byte	0x8
	.uleb128 0x14
	.string	"imx"
	.byte	0xa
	.value	0x124
	.long	0x79c
	.byte	0x10
	.uleb128 0x14
	.string	"dmx"
	.byte	0xa
	.value	0x125
	.long	0x79c
	.byte	0x18
	.uleb128 0x9
	.long	.LASF113
	.byte	0xa
	.value	0x12b
	.long	0xa3
	.byte	0x20
	.uleb128 0x9
	.long	.LASF114
	.byte	0xa
	.value	0x12b
	.long	0xa3
	.byte	0x28
	.uleb128 0x9
	.long	.LASF115
	.byte	0xa
	.value	0x12b
	.long	0xa3
	.byte	0x30
	.uleb128 0x9
	.long	.LASF116
	.byte	0xa
	.value	0x12b
	.long	0xa3
	.byte	0x38
	.uleb128 0x9
	.long	.LASF117
	.byte	0xa
	.value	0x134
	.long	0x62
	.byte	0x40
	.uleb128 0x9
	.long	.LASF118
	.byte	0xa
	.value	0x135
	.long	0x62
	.byte	0x44
	.uleb128 0x9
	.long	.LASF119
	.byte	0xa
	.value	0x137
	.long	0x62
	.byte	0x48
	.uleb128 0x9
	.long	.LASF120
	.byte	0xa
	.value	0x138
	.long	0x62
	.byte	0x4c
	.byte	0
	.uleb128 0x10
	.long	.LASF121
	.byte	0x38
	.byte	0xa
	.value	0x14c
	.long	0x8d6
	.uleb128 0x14
	.string	"f"
	.byte	0xa
	.value	0x14d
	.long	0x468
	.byte	0
	.uleb128 0x14
	.string	"ssi"
	.byte	0xa
	.value	0x14e
	.long	0x48b
	.byte	0x8
	.uleb128 0x9
	.long	.LASF122
	.byte	0xa
	.value	0x14f
	.long	0x8fc
	.byte	0x10
	.uleb128 0x9
	.long	.LASF123
	.byte	0xa
	.value	0x150
	.long	0x62
	.byte	0x18
	.uleb128 0x9
	.long	.LASF124
	.byte	0xa
	.value	0x151
	.long	0x62
	.byte	0x1c
	.uleb128 0x9
	.long	.LASF125
	.byte	0xa
	.value	0x15a
	.long	0x62
	.byte	0x20
	.uleb128 0x9
	.long	.LASF59
	.byte	0xa
	.value	0x15b
	.long	0x62
	.byte	0x24
	.uleb128 0x9
	.long	.LASF126
	.byte	0xa
	.value	0x15c
	.long	0x355
	.byte	0x28
	.byte	0
	.uleb128 0x15
	.long	0x62
	.long	0x8ea
	.uleb128 0x16
	.long	0x8ea
	.uleb128 0x16
	.long	0x8f0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x862
	.uleb128 0x6
	.byte	0x8
	.long	0x8f6
	.uleb128 0x6
	.byte	0x8
	.long	0x519
	.uleb128 0x6
	.byte	0x8
	.long	0x8d6
	.uleb128 0x17
	.long	.LASF127
	.byte	0xa
	.value	0x15e
	.long	0x862
	.uleb128 0x10
	.long	.LASF128
	.byte	0x40
	.byte	0xa
	.value	0x1a3
	.long	0x9b8
	.uleb128 0x9
	.long	.LASF129
	.byte	0xa
	.value	0x1a4
	.long	0x2a8
	.byte	0
	.uleb128 0x14
	.string	"min"
	.byte	0xa
	.value	0x1a5
	.long	0x62
	.byte	0x8
	.uleb128 0x14
	.string	"max"
	.byte	0xa
	.value	0x1a6
	.long	0x62
	.byte	0xc
	.uleb128 0x9
	.long	.LASF130
	.byte	0xa
	.value	0x1a7
	.long	0x62
	.byte	0x10
	.uleb128 0x9
	.long	.LASF131
	.byte	0xa
	.value	0x1a8
	.long	0x62
	.byte	0x14
	.uleb128 0x9
	.long	.LASF132
	.byte	0xa
	.value	0x1a9
	.long	0x62
	.byte	0x18
	.uleb128 0x9
	.long	.LASF133
	.byte	0xa
	.value	0x1aa
	.long	0x62
	.byte	0x1c
	.uleb128 0x9
	.long	.LASF134
	.byte	0xa
	.value	0x1ac
	.long	0x485
	.byte	0x20
	.uleb128 0x9
	.long	.LASF135
	.byte	0xa
	.value	0x1ad
	.long	0x62
	.byte	0x28
	.uleb128 0x9
	.long	.LASF136
	.byte	0xa
	.value	0x1ae
	.long	0x9b8
	.byte	0x2c
	.uleb128 0x9
	.long	.LASF137
	.byte	0xa
	.value	0x1af
	.long	0x2e2
	.byte	0x38
	.uleb128 0x9
	.long	.LASF138
	.byte	0xa
	.value	0x1b0
	.long	0x2e2
	.byte	0x3c
	.byte	0
	.uleb128 0xb
	.long	0x2e2
	.long	0x9c8
	.uleb128 0xc
	.long	0x86
	.byte	0x2
	.byte	0
	.uleb128 0x18
	.long	.LASF178
	.byte	0x1
	.byte	0x8e
	.long	0x62
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0xbb3
	.uleb128 0x19
	.long	.LASF139
	.byte	0x1
	.byte	0x8e
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -228
	.uleb128 0x19
	.long	.LASF140
	.byte	0x1
	.byte	0x8e
	.long	0x46e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x1a
	.long	.LASF141
	.byte	0x1
	.byte	0x93
	.long	0xa5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1a
	.long	.LASF142
	.byte	0x1
	.byte	0x94
	.long	0xa5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1a
	.long	.LASF143
	.byte	0x1
	.byte	0x95
	.long	0xbb3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1a
	.long	.LASF144
	.byte	0x1
	.byte	0x96
	.long	0x468
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1a
	.long	.LASF59
	.byte	0x1
	.byte	0x97
	.long	0xa5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x1b
	.string	"hmm"
	.byte	0x1
	.byte	0x98
	.long	0x8f6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x1b
	.string	"idx"
	.byte	0x1
	.byte	0x99
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -204
	.uleb128 0x1a
	.long	.LASF145
	.byte	0x1
	.byte	0x9d
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x1a
	.long	.LASF146
	.byte	0x1
	.byte	0x9f
	.long	0xbb9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x1b
	.string	"max"
	.byte	0x1
	.byte	0xa0
	.long	0x2e2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -212
	.uleb128 0x1a
	.long	.LASF147
	.byte	0x1
	.byte	0xa1
	.long	0xa5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x1b
	.string	"hfp"
	.byte	0x1
	.byte	0xa2
	.long	0x468
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x1a
	.long	.LASF148
	.byte	0x1
	.byte	0xa4
	.long	0x50e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1a
	.long	.LASF149
	.byte	0x1
	.byte	0xa5
	.long	0x50e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1b
	.string	"mu"
	.byte	0x1
	.byte	0xa7
	.long	0x485
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x1a
	.long	.LASF111
	.byte	0x1
	.byte	0xa8
	.long	0x485
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1a
	.long	.LASF150
	.byte	0x1
	.byte	0xa9
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x1a
	.long	.LASF151
	.byte	0x1
	.byte	0xab
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x1a
	.long	.LASF152
	.byte	0x1
	.byte	0xac
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x1a
	.long	.LASF153
	.byte	0x1
	.byte	0xad
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -188
	.uleb128 0x1a
	.long	.LASF154
	.byte	0x1
	.byte	0xae
	.long	0x2e2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x1a
	.long	.LASF155
	.byte	0x1
	.byte	0xaf
	.long	0x2e2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x1a
	.long	.LASF156
	.byte	0x1
	.byte	0xb0
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x1a
	.long	.LASF157
	.byte	0x1
	.byte	0xb1
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x1c
	.long	.LASF179
	.byte	0x1
	.byte	0xb2
	.long	0x62
	.uleb128 0x1a
	.long	.LASF158
	.byte	0x1
	.byte	0xb5
	.long	0xa5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x1a
	.long	.LASF159
	.byte	0x1
	.byte	0xb6
	.long	0xa5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1a
	.long	.LASF160
	.byte	0x1
	.byte	0xb7
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x1a
	.long	.LASF161
	.byte	0x1
	.byte	0xb9
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -172
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x902
	.uleb128 0x6
	.byte	0x8
	.long	0x90e
	.uleb128 0x1d
	.long	.LASF180
	.byte	0x1
	.value	0x1d9
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0xcfc
	.uleb128 0x1e
	.string	"hmm"
	.byte	0x1
	.value	0x1d9
	.long	0x8f6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x1f
	.long	.LASF152
	.byte	0x1
	.value	0x1d9
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x1f
	.long	.LASF151
	.byte	0x1
	.value	0x1d9
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x1f
	.long	.LASF154
	.byte	0x1
	.value	0x1da
	.long	0x2e2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x1f
	.long	.LASF155
	.byte	0x1
	.value	0x1da
	.long	0x2e2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x1f
	.long	.LASF153
	.byte	0x1
	.value	0x1da
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -188
	.uleb128 0x1f
	.long	.LASF162
	.byte	0x1
	.value	0x1db
	.long	0xcfc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x1f
	.long	.LASF163
	.byte	0x1
	.value	0x1db
	.long	0x485
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x20
	.long	.LASF146
	.byte	0x1
	.value	0x1dd
	.long	0xbb9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x21
	.string	"mx"
	.byte	0x1
	.value	0x1de
	.long	0xd02
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x20
	.long	.LASF164
	.byte	0x1
	.value	0x1df
	.long	0x78c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x21
	.string	"p1"
	.byte	0x1
	.value	0x1e0
	.long	0x2e2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x21
	.string	"max"
	.byte	0x1
	.value	0x1e1
	.long	0x2e2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x21
	.string	"seq"
	.byte	0x1
	.value	0x1e2
	.long	0xa5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x21
	.string	"dsq"
	.byte	0x1
	.value	0x1e3
	.long	0xa5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x20
	.long	.LASF165
	.byte	0x1
	.value	0x1e4
	.long	0x2e2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x20
	.long	.LASF166
	.byte	0x1
	.value	0x1e5
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x21
	.string	"idx"
	.byte	0x1
	.value	0x1e6
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xbb9
	.uleb128 0x6
	.byte	0x8
	.long	0x7b8
	.uleb128 0x1a
	.long	.LASF167
	.byte	0x1
	.byte	0x30
	.long	0x2d2
	.uleb128 0x9
	.byte	0x3
	.quad	banner
	.uleb128 0xb
	.long	0xab
	.long	0xd2d
	.uleb128 0xc
	.long	0x86
	.byte	0x81
	.byte	0
	.uleb128 0x1a
	.long	.LASF168
	.byte	0x1
	.byte	0x32
	.long	0xd1d
	.uleb128 0x9
	.byte	0x3
	.quad	usage
	.uleb128 0xb
	.long	0xab
	.long	0xd53
	.uleb128 0x22
	.long	0x86
	.value	0x1c7
	.byte	0
	.uleb128 0x1a
	.long	.LASF169
	.byte	0x1
	.byte	0x38
	.long	0xd42
	.uleb128 0x9
	.byte	0x3
	.quad	experts
	.uleb128 0xb
	.long	0x491
	.long	0xd78
	.uleb128 0xc
	.long	0x86
	.byte	0x8
	.byte	0
	.uleb128 0x1a
	.long	.LASF170
	.byte	0x1
	.byte	0x43
	.long	0xd68
	.uleb128 0x9
	.byte	0x3
	.quad	OPTIONS
	.uleb128 0x23
	.long	.LASF171
	.byte	0x4
	.byte	0xa9
	.long	0x27c
	.uleb128 0xb
	.long	0xab
	.long	0xda8
	.uleb128 0xc
	.long	0x86
	.byte	0x18
	.byte	0
	.uleb128 0x23
	.long	.LASF172
	.byte	0xa
	.byte	0x39
	.long	0xd98
	.uleb128 0x23
	.long	.LASF173
	.byte	0xa
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
.LASF144:
	.string	"outfp"
.LASF16:
	.string	"_IO_read_ptr"
.LASF128:
	.string	"histogram_s"
.LASF28:
	.string	"_chain"
.LASF112:
	.string	"dpmatrix_s"
.LASF129:
	.string	"histogram"
.LASF135:
	.string	"fit_type"
.LASF7:
	.string	"size_t"
.LASF56:
	.string	"sqd_uint32"
.LASF74:
	.string	"soffset"
.LASF95:
	.string	"checksum"
.LASF34:
	.string	"_shortbuf"
.LASF154:
	.string	"lenmean"
.LASF148:
	.string	"stopwatch"
.LASF162:
	.string	"ret_hist"
.LASF6:
	.string	"long int"
.LASF106:
	.string	"esc_mem"
.LASF153:
	.string	"fixedlen"
.LASF93:
	.string	"nseq"
.LASF52:
	.string	"long long unsigned int"
.LASF68:
	.string	"slen"
.LASF61:
	.string	"ssifile_s"
.LASF102:
	.string	"tsc_mem"
.LASF158:
	.string	"optname"
.LASF136:
	.string	"param"
.LASF145:
	.string	"nhmm"
.LASF67:
	.string	"plen"
.LASF80:
	.string	"SSIFILE"
.LASF111:
	.string	"lambda"
.LASF79:
	.string	"fileflags"
.LASF65:
	.string	"nsecondary"
.LASF4:
	.string	"signed char"
.LASF69:
	.string	"frecsize"
.LASF86:
	.string	"cpu0"
.LASF150:
	.string	"mu_lumpsize"
.LASF134:
	.string	"expect"
.LASF29:
	.string	"_fileno"
.LASF165:
	.string	"score"
.LASF17:
	.string	"_IO_read_end"
.LASF170:
	.string	"OPTIONS"
.LASF15:
	.string	"_flags"
.LASF127:
	.string	"HMMFILE"
.LASF23:
	.string	"_IO_buf_end"
.LASF32:
	.string	"_cur_column"
.LASF85:
	.string	"stopwatch_s"
.LASF54:
	.string	"double"
.LASF132:
	.string	"lumpsize"
.LASF31:
	.string	"_old_offset"
.LASF36:
	.string	"_offset"
.LASF71:
	.string	"srecsize"
.LASF121:
	.string	"hmmfile_s"
.LASF50:
	.string	"clock_t"
.LASF159:
	.string	"optarg"
.LASF104:
	.string	"isc_mem"
.LASF73:
	.string	"poffset"
.LASF115:
	.string	"imx_mem"
.LASF49:
	.string	"long long int"
.LASF45:
	.string	"_IO_marker"
.LASF76:
	.string	"smode"
.LASF3:
	.string	"unsigned int"
.LASF113:
	.string	"xmx_mem"
.LASF110:
	.string	"dna4"
.LASF100:
	.string	"begin"
.LASF163:
	.string	"ret_max"
.LASF152:
	.string	"seed"
.LASF179:
	.string	"pvm_nslaves"
.LASF0:
	.string	"long unsigned int"
.LASF175:
	.string	"hmmcalibrate.c"
.LASF180:
	.string	"main_loop_serial"
.LASF20:
	.string	"_IO_write_ptr"
.LASF84:
	.string	"argtype"
.LASF82:
	.string	"name"
.LASF47:
	.string	"_sbuf"
.LASF2:
	.string	"short unsigned int"
.LASF87:
	.string	"elapsed"
.LASF125:
	.string	"is_seekable"
.LASF146:
	.string	"hist"
.LASF147:
	.string	"histfile"
.LASF24:
	.string	"_IO_save_base"
.LASF66:
	.string	"flen"
.LASF116:
	.string	"dmx_mem"
.LASF97:
	.string	"mpri"
.LASF35:
	.string	"_lock"
.LASF133:
	.string	"total"
.LASF171:
	.string	"stdout"
.LASF156:
	.string	"do_pvm"
.LASF94:
	.string	"ctime"
.LASF122:
	.string	"parser"
.LASF168:
	.string	"usage"
.LASF103:
	.string	"msc_mem"
.LASF10:
	.string	"sizetype"
.LASF77:
	.string	"filename"
.LASF160:
	.string	"optind"
.LASF91:
	.string	"desc"
.LASF105:
	.string	"bsc_mem"
.LASF72:
	.string	"foffset"
.LASF99:
	.string	"tbd1"
.LASF108:
	.string	"dnai"
.LASF107:
	.string	"dnam"
.LASF177:
	.string	"_IO_lock_t"
.LASF44:
	.string	"_IO_FILE"
.LASF166:
	.string	"sqlen"
.LASF151:
	.string	"nsample"
.LASF51:
	.string	"time_t"
.LASF92:
	.string	"comlog"
.LASF130:
	.string	"highscore"
.LASF11:
	.string	"__clock_t"
.LASF42:
	.string	"_mode"
.LASF53:
	.string	"float"
.LASF137:
	.string	"chisq"
.LASF48:
	.string	"_pos"
.LASF27:
	.string	"_markers"
.LASF178:
	.string	"hmmcalibrate"
.LASF88:
	.string	"user"
.LASF63:
	.string	"nfiles"
.LASF123:
	.string	"is_binary"
.LASF101:
	.string	"null"
.LASF81:
	.string	"opt_s"
.LASF1:
	.string	"unsigned char"
.LASF155:
	.string	"lensd"
.LASF109:
	.string	"dna2"
.LASF90:
	.string	"plan7_s"
.LASF64:
	.string	"nprimary"
.LASF5:
	.string	"short int"
.LASF141:
	.string	"hmmfile"
.LASF30:
	.string	"_flags2"
.LASF83:
	.string	"single"
.LASF12:
	.string	"__time_t"
.LASF14:
	.string	"FILE"
.LASF70:
	.string	"precsize"
.LASF75:
	.string	"imode"
.LASF57:
	.string	"sqd_uint64"
.LASF143:
	.string	"hmmfp"
.LASF13:
	.string	"char"
.LASF124:
	.string	"byteswap"
.LASF59:
	.string	"mode"
.LASF173:
	.string	"Alphabet_size"
.LASF58:
	.string	"ssioffset_s"
.LASF55:
	.string	"sqd_uint16"
.LASF131:
	.string	"lowscore"
.LASF142:
	.string	"tmpfile"
.LASF78:
	.string	"fileformat"
.LASF46:
	.string	"_next"
.LASF138:
	.string	"chip"
.LASF9:
	.string	"__off64_t"
.LASF126:
	.string	"offset"
.LASF18:
	.string	"_IO_read_base"
.LASF26:
	.string	"_IO_save_end"
.LASF37:
	.string	"__pad1"
.LASF38:
	.string	"__pad2"
.LASF39:
	.string	"__pad3"
.LASF40:
	.string	"__pad4"
.LASF41:
	.string	"__pad5"
.LASF21:
	.string	"_IO_write_end"
.LASF43:
	.string	"_unused2"
.LASF140:
	.string	"argv"
.LASF89:
	.string	"Stopwatch_t"
.LASF98:
	.string	"ipri"
.LASF118:
	.string	"maxM"
.LASF117:
	.string	"maxN"
.LASF169:
	.string	"experts"
.LASF167:
	.string	"banner"
.LASF174:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF25:
	.string	"_IO_backup_base"
.LASF114:
	.string	"mmx_mem"
.LASF62:
	.string	"flags"
.LASF120:
	.string	"padM"
.LASF119:
	.string	"padN"
.LASF33:
	.string	"_vtable_offset"
.LASF139:
	.string	"argc"
.LASF172:
	.string	"Alphabet"
.LASF176:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/456.hmmer/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF149:
	.string	"extrawatch"
.LASF96:
	.string	"tpri"
.LASF19:
	.string	"_IO_write_base"
.LASF22:
	.string	"_IO_buf_base"
.LASF161:
	.string	"num_threads"
.LASF164:
	.string	"randomseq"
.LASF157:
	.string	"pvm_lumpsize"
.LASF60:
	.string	"SSIOFFSET"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
