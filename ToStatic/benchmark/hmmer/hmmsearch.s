	.file	"hmmsearch.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 hmmsearch.c -mtune=generic -march=x86-64 -g
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
	.comm	Alphabet,25,16
	.comm	Alphabet_type,4,4
	.comm	Alphabet_size,4,4
	.comm	Alphabet_iupac,4,4
	.comm	Degenerate,480,32
	.comm	DegenCount,96,32
	.data
	.align 32
	.type	banner, @object
	.size	banner, 58
banner:
	.string	"hmmsearch - search a sequence database with a profile HMM"
	.align 32
	.type	usage, @object
	.size	usage, 382
usage:
	.ascii	"Usage: hmmsearch [-options] <hmmfile> <sequence file or data"
	.ascii	"base>\n  Available options are:\n   -h        : help; print "
	.ascii	"brief h"
	.string	"elp on version and usage\n   -A <n>    : sets alignment output limit to <n> best domain alignments\n   -E <x>    : sets E value cutoff (globE) to <= x\n   -T <x>    : sets T bit threshold (globT) to >= x\n   -Z <n>    : sets Z (# seqs) for E-value calculation\n"
	.align 32
	.type	experts, @object
	.size	experts, 759
experts:
	.ascii	"   --compat       : make best effort to use last version's o"
	.ascii	"utput style\n   --cpu <n>      : run <n> threads in parallel"
	.ascii	" (if threaded)\n   --cut_ga       : use Pfam GA gathering th"
	.ascii	"reshold cutoffs\n   --cut_nc       : use Pfam NC noise thres"
	.ascii	"hold cutoffs\n   --cut_tc       : use Pfam TC trusted thresh"
	.ascii	"old cutoffs\n   --domE <x>     : sets domain Eval cutoff (2n"
	.ascii	"d threshold) to <= x\n   --domT <x>     : sets domain T bit "
	.ascii	"thresh (2nd threshold) to >= x\n   --forward      : use the "
	.ascii	"full Forward() algorithm inst"
	.string	"ead of Viterbi\n   --informat <s> : sequence file is in format <s>\n   --null2        : turn OFF the post hoc second null model\n   --pvm          : run on a Parallel Virtual Machine (PVM)\n   --xnu          : turn ON XNU filtering of target protein sequences\n"
	.section	.rodata
.LC0:
	.string	"-h"
.LC1:
	.string	"-A"
.LC2:
	.string	"-E"
.LC3:
	.string	"-T"
.LC4:
	.string	"-Z"
.LC5:
	.string	"--compat"
.LC6:
	.string	"--cpu"
.LC7:
	.string	"--cut_ga"
.LC8:
	.string	"--cut_nc"
.LC9:
	.string	"--cut_tc"
.LC10:
	.string	"--domE"
.LC11:
	.string	"--domT"
.LC12:
	.string	"--forward"
.LC13:
	.string	"--informat"
.LC14:
	.string	"--null2"
.LC15:
	.string	"--pvm"
.LC16:
	.string	"--xnu"
	.data
	.align 32
	.type	OPTIONS, @object
	.size	OPTIONS, 272
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
	.long	1
# argtype:
	.long	1
# name:
	.quad	.LC2
# single:
	.long	1
# argtype:
	.long	2
# name:
	.quad	.LC3
# single:
	.long	1
# argtype:
	.long	2
# name:
	.quad	.LC4
# single:
	.long	1
# argtype:
	.long	1
# name:
	.quad	.LC5
# single:
	.long	0
# argtype:
	.long	0
# name:
	.quad	.LC6
# single:
	.long	0
# argtype:
	.long	1
# name:
	.quad	.LC7
# single:
	.long	0
# argtype:
	.long	0
# name:
	.quad	.LC8
# single:
	.long	0
# argtype:
	.long	0
# name:
	.quad	.LC9
# single:
	.long	0
# argtype:
	.long	0
# name:
	.quad	.LC10
# single:
	.long	0
# argtype:
	.long	2
# name:
	.quad	.LC11
# single:
	.long	0
# argtype:
	.long	2
# name:
	.quad	.LC12
# single:
	.long	0
# argtype:
	.long	0
# name:
	.quad	.LC13
# single:
	.long	0
# argtype:
	.long	4
# name:
	.quad	.LC14
# single:
	.long	0
# argtype:
	.long	0
# name:
	.quad	.LC15
# single:
	.long	0
# argtype:
	.long	0
# name:
	.quad	.LC16
# single:
	.long	0
# argtype:
	.long	0
	.section	.rodata
	.align 8
.LC20:
	.string	"unrecognized sequence file format \"%s\""
	.align 8
.LC21:
	.string	"Incorrect number of arguments.\n%s\n"
	.align 8
.LC22:
	.string	"PVM support is not compiled into your HMMER software; --pvm doesn't work."
	.align 8
.LC23:
	.string	"POSIX threads support is not compiled into HMMER; --cpu doesn't have any effect"
.LC24:
	.string	"^.*\\.gz$"
.LC25:
	.string	"-"
.LC26:
	.string	"BLASTDB"
	.align 8
.LC27:
	.string	"Failed to open sequence database file %s\n%s\n"
.LC28:
	.string	"HMMERDB"
.LC29:
	.string	"Failed to open HMM file %s\n%s"
	.align 8
.LC30:
	.string	"Failed to read any HMMs from %s\n"
	.align 8
.LC31:
	.string	"HMM file %s corrupt or in incorrect format? Parse failed"
	.align 8
.LC32:
	.string	"The HMM is a DNA model, and you can't use the --xnu filter on DNA data"
	.align 8
.LC33:
	.string	"HMM %s did not contain the GA, TC, or NC cutoffs you needed"
	.align 8
.LC34:
	.string	"HMM file:                   %s [%s]\n"
	.align 8
.LC35:
	.string	"Sequence database:          %s\n"
	.align 8
.LC36:
	.string	"PVM:                        ACTIVE"
.LC37:
	.string	"per-sequence score cutoff:  "
.LC38:
	.string	"[none]"
.LC39:
	.string	">= %.1f"
.LC40:
	.string	" [GA1]"
.LC41:
	.string	" [NC1]"
.LC42:
	.string	" [TC1]"
.LC43:
	.string	"per-domain score cutoff:    "
.LC44:
	.string	" [GA2]"
.LC45:
	.string	" [NC2]"
.LC46:
	.string	" [TC2]"
.LC47:
	.string	"per-sequence Eval cutoff:   "
.LC48:
	.string	"<= %-10.2g\n"
.LC49:
	.string	"per-domain Eval cutoff:     "
.LC50:
	.string	"<= %10.2g\n"
	.align 8
.LC51:
	.string	"- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
.LC52:
	.string	""
.LC53:
	.string	"\nQuery HMM: %s|%s|%s\n"
.LC54:
	.string	"\nQuery HMM:   %s\n"
.LC55:
	.string	"Accession:   %s\n"
.LC56:
	.string	"Description: %s\n"
	.align 8
.LC57:
	.string	"  [HMM has been calibrated; E-values are empirical estimates]"
	.align 8
.LC58:
	.string	"  [No calibration for HMM; E-values are upper bounds]"
	.align 8
.LC59:
	.string	"\nAlignments of top-scoring domains:"
	.align 8
.LC60:
	.string	"%s: domain %d of %d, from %d to %d: score %.1f, E = %.2g\n"
.LC61:
	.string	"\t[no hits above thresholds]"
	.align 8
.LC62:
	.string	"\t[output cut off at A = %d top alignments]\n"
	.align 8
.LC63:
	.string	"\nTotal sequences searched: %d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB2:
	.file 1 "hmmsearch.c"
	.loc 1 155 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$400, %rsp	#,
	movl	%edi, -276(%rbp)	# argc, argc
	movq	%rsi, -288(%rbp)	# argv, argv
	.loc 1 201 0
	cmpl	$3, -276(%rbp)	#, argc
	je	.L2	#,
	.loc 1 202 0
	movq	-288(%rbp), %rdx	# argv, tmp231
	movl	-276(%rbp), %eax	# argc, tmp232
	movq	%rdx, %rsi	# tmp231,
	movl	%eax, %edi	# tmp232,
	call	hmmcalibrate	#
	jmp	.L86	#
.L2:
	.loc 1 210 0
	movl	$0, -228(%rbp)	#, format
	.loc 1 211 0
	movl	$0, -208(%rbp)	#, do_forward
	.loc 1 212 0
	movl	$1, -212(%rbp)	#, do_null2
	.loc 1 213 0
	movl	$0, -204(%rbp)	#, do_xnu
	.loc 1 214 0
	movl	$0, -200(%rbp)	#, do_pvm
	.loc 1 215 0
	movl	$0, -188(%rbp)	#, Z
	.loc 1 216 0
	movl	$0, -196(%rbp)	#, be_backwards
	.loc 1 218 0
	movl	$0, -184(%rbp)	#, pvm_support
	.loc 1 219 0
	movl	$0, -180(%rbp)	#, threads_support
	.loc 1 220 0
	movl	$0, -192(%rbp)	#, num_threads
	.loc 1 229 0
	movl	$2147483647, -216(%rbp)	#, Alimit
	.loc 1 230 0
	movabsq	$4621819117588971520, %rax	#, tmp233
	movq	%rax, -40(%rbp)	# tmp233, thresh.globE
	.loc 1 231 0
	movl	.LC18(%rip), %eax	#, tmp234
	movl	%eax, -48(%rbp)	# tmp234, thresh.globT
	.loc 1 232 0
	movl	.LC18(%rip), %eax	#, tmp235
	movl	%eax, -32(%rbp)	# tmp235, thresh.domT
	.loc 1 233 0
	movabsq	$5183643170566569984, %rax	#, tmp236
	movq	%rax, -24(%rbp)	# tmp236, thresh.domE
	.loc 1 234 0
	movl	$0, -16(%rbp)	#, thresh.autocut
	.loc 1 235 0
	movl	$0, -12(%rbp)	#, thresh.Z
	.loc 1 237 0
	jmp	.L4	#
.L22:
	.loc 1 239 0
	movq	-128(%rbp), %rax	# optname, optname.0
	movl	$.LC1, %esi	#,
	movq	%rax, %rdi	# optname.0,
	call	strcmp	#
	testl	%eax, %eax	# D.6979
	jne	.L5	#,
	.loc 1 239 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# optarg, optarg.1
	movq	%rax, %rdi	# optarg.1,
	call	atoi	#
	movl	%eax, -216(%rbp)	# tmp237, Alimit
	jmp	.L4	#
.L5:
	.loc 1 240 0 is_stmt 1
	movq	-128(%rbp), %rax	# optname, optname.2
	movl	$.LC2, %esi	#,
	movq	%rax, %rdi	# optname.2,
	call	strcmp	#
	testl	%eax, %eax	# D.6979
	jne	.L6	#,
	.loc 1 240 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# optarg, optarg.3
	movq	%rax, %rdi	# optarg.3,
	call	atof	#
	movsd	%xmm0, -296(%rbp)	#, %sfp
	movq	-296(%rbp), %rax	# %sfp, D.6980
	movq	%rax, -40(%rbp)	# D.6980, thresh.globE
	jmp	.L4	#
.L6:
	.loc 1 241 0 is_stmt 1
	movq	-128(%rbp), %rax	# optname, optname.4
	movl	$.LC3, %esi	#,
	movq	%rax, %rdi	# optname.4,
	call	strcmp	#
	testl	%eax, %eax	# D.6979
	jne	.L7	#,
	.loc 1 241 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# optarg, optarg.5
	movq	%rax, %rdi	# optarg.5,
	call	atof	#
	unpcklpd	%xmm0, %xmm0	# D.6980
	cvtpd2ps	%xmm0, %xmm0	# D.6980, D.6981
	movss	%xmm0, -48(%rbp)	# D.6981, thresh.globT
	jmp	.L4	#
.L7:
	.loc 1 242 0 is_stmt 1
	movq	-128(%rbp), %rax	# optname, optname.6
	movl	$.LC4, %esi	#,
	movq	%rax, %rdi	# optname.6,
	call	strcmp	#
	testl	%eax, %eax	# D.6979
	jne	.L8	#,
	.loc 1 242 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# optarg, optarg.7
	movq	%rax, %rdi	# optarg.7,
	call	atoi	#
	movl	%eax, -12(%rbp)	# D.6979, thresh.Z
	jmp	.L4	#
.L8:
	.loc 1 243 0 is_stmt 1
	movq	-128(%rbp), %rax	# optname, optname.8
	movl	$.LC5, %esi	#,
	movq	%rax, %rdi	# optname.8,
	call	strcmp	#
	testl	%eax, %eax	# D.6979
	jne	.L9	#,
	.loc 1 243 0 is_stmt 0 discriminator 1
	movl	$1, -196(%rbp)	#, be_backwards
	jmp	.L4	#
.L9:
	.loc 1 244 0 is_stmt 1
	movq	-128(%rbp), %rax	# optname, optname.9
	movl	$.LC6, %esi	#,
	movq	%rax, %rdi	# optname.9,
	call	strcmp	#
	testl	%eax, %eax	# D.6979
	jne	.L10	#,
	.loc 1 244 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# optarg, optarg.10
	movq	%rax, %rdi	# optarg.10,
	call	atoi	#
	movl	%eax, -192(%rbp)	# tmp238, num_threads
	jmp	.L4	#
.L10:
	.loc 1 245 0 is_stmt 1
	movq	-128(%rbp), %rax	# optname, optname.11
	movl	$.LC7, %esi	#,
	movq	%rax, %rdi	# optname.11,
	call	strcmp	#
	testl	%eax, %eax	# D.6979
	jne	.L11	#,
	.loc 1 245 0 is_stmt 0 discriminator 1
	movl	$1, -16(%rbp)	#, thresh.autocut
	jmp	.L4	#
.L11:
	.loc 1 246 0 is_stmt 1
	movq	-128(%rbp), %rax	# optname, optname.12
	movl	$.LC8, %esi	#,
	movq	%rax, %rdi	# optname.12,
	call	strcmp	#
	testl	%eax, %eax	# D.6979
	jne	.L12	#,
	.loc 1 246 0 is_stmt 0 discriminator 1
	movl	$2, -16(%rbp)	#, thresh.autocut
	jmp	.L4	#
.L12:
	.loc 1 247 0 is_stmt 1
	movq	-128(%rbp), %rax	# optname, optname.13
	movl	$.LC9, %esi	#,
	movq	%rax, %rdi	# optname.13,
	call	strcmp	#
	testl	%eax, %eax	# D.6979
	jne	.L13	#,
	.loc 1 247 0 is_stmt 0 discriminator 1
	movl	$3, -16(%rbp)	#, thresh.autocut
	jmp	.L4	#
.L13:
	.loc 1 248 0 is_stmt 1
	movq	-128(%rbp), %rax	# optname, optname.14
	movl	$.LC10, %esi	#,
	movq	%rax, %rdi	# optname.14,
	call	strcmp	#
	testl	%eax, %eax	# D.6979
	jne	.L14	#,
	.loc 1 248 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# optarg, optarg.15
	movq	%rax, %rdi	# optarg.15,
	call	atof	#
	movsd	%xmm0, -296(%rbp)	#, %sfp
	movq	-296(%rbp), %rax	# %sfp, D.6980
	movq	%rax, -24(%rbp)	# D.6980, thresh.domE
	jmp	.L4	#
.L14:
	.loc 1 249 0 is_stmt 1
	movq	-128(%rbp), %rax	# optname, optname.16
	movl	$.LC11, %esi	#,
	movq	%rax, %rdi	# optname.16,
	call	strcmp	#
	testl	%eax, %eax	# D.6979
	jne	.L15	#,
	.loc 1 249 0 is_stmt 0 discriminator 1
	movq	-120(%rbp), %rax	# optarg, optarg.17
	movq	%rax, %rdi	# optarg.17,
	call	atof	#
	unpcklpd	%xmm0, %xmm0	# D.6980
	cvtpd2ps	%xmm0, %xmm0	# D.6980, D.6981
	movss	%xmm0, -32(%rbp)	# D.6981, thresh.domT
	jmp	.L4	#
.L15:
	.loc 1 250 0 is_stmt 1
	movq	-128(%rbp), %rax	# optname, optname.18
	movl	$.LC12, %esi	#,
	movq	%rax, %rdi	# optname.18,
	call	strcmp	#
	testl	%eax, %eax	# D.6979
	jne	.L16	#,
	.loc 1 250 0 is_stmt 0 discriminator 1
	movl	$1, -208(%rbp)	#, do_forward
	jmp	.L4	#
.L16:
	.loc 1 251 0 is_stmt 1
	movq	-128(%rbp), %rax	# optname, optname.19
	movl	$.LC14, %esi	#,
	movq	%rax, %rdi	# optname.19,
	call	strcmp	#
	testl	%eax, %eax	# D.6979
	jne	.L17	#,
	.loc 1 251 0 is_stmt 0 discriminator 1
	movl	$0, -212(%rbp)	#, do_null2
	jmp	.L4	#
.L17:
	.loc 1 252 0 is_stmt 1
	movq	-128(%rbp), %rax	# optname, optname.20
	movl	$.LC15, %esi	#,
	movq	%rax, %rdi	# optname.20,
	call	strcmp	#
	testl	%eax, %eax	# D.6979
	jne	.L18	#,
	.loc 1 252 0 is_stmt 0 discriminator 1
	movl	$1, -200(%rbp)	#, do_pvm
	jmp	.L4	#
.L18:
	.loc 1 253 0 is_stmt 1
	movq	-128(%rbp), %rax	# optname, optname.21
	movl	$.LC16, %esi	#,
	movq	%rax, %rdi	# optname.21,
	call	strcmp	#
	testl	%eax, %eax	# D.6979
	jne	.L19	#,
	.loc 1 253 0 is_stmt 0 discriminator 1
	movl	$1, -204(%rbp)	#, do_xnu
	jmp	.L4	#
.L19:
	.loc 1 254 0 is_stmt 1
	movq	-128(%rbp), %rax	# optname, optname.22
	movl	$.LC13, %esi	#,
	movq	%rax, %rdi	# optname.22,
	call	strcmp	#
	testl	%eax, %eax	# D.6979
	jne	.L20	#,
	.loc 1 255 0
	movq	-120(%rbp), %rax	# optarg, optarg.23
	movq	%rax, %rdi	# optarg.23,
	call	String2SeqfileFormat	#
	movl	%eax, -228(%rbp)	# tmp239, format
	.loc 1 256 0
	cmpl	$0, -228(%rbp)	#, format
	jne	.L4	#,
	.loc 1 257 0
	movq	-120(%rbp), %rax	# optarg, optarg.24
	movq	%rax, %rsi	# optarg.24,
	movl	$.LC20, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
	jmp	.L4	#
.L20:
	.loc 1 259 0
	movq	-128(%rbp), %rax	# optname, optname.25
	movl	$.LC0, %esi	#,
	movq	%rax, %rdi	# optname.25,
	call	strcmp	#
	testl	%eax, %eax	# D.6979
	jne	.L4	#,
	.loc 1 260 0
	movq	stdout(%rip), %rax	# stdout, stdout.26
	movl	$banner, %esi	#,
	movq	%rax, %rdi	# stdout.26,
	call	HMMERBanner	#
	.loc 1 261 0
	movl	$usage, %edi	#,
	call	puts	#
	.loc 1 262 0
	movl	$experts, %edi	#,
	call	puts	#
	.loc 1 263 0
	movl	$0, %edi	#,
	call	exit	#
.L4:
	.loc 1 237 0 discriminator 1
	leaq	-232(%rbp), %rcx	#, tmp240
	movq	-288(%rbp), %rsi	# argv, tmp241
	movl	-276(%rbp), %eax	# argc, tmp242
	leaq	-120(%rbp), %rdx	#, tmp243
	movq	%rdx, 8(%rsp)	# tmp243,
	leaq	-128(%rbp), %rdx	#, tmp244
	movq	%rdx, (%rsp)	# tmp244,
	movq	%rcx, %r9	# tmp240,
	movl	$usage, %r8d	#,
	movl	$17, %ecx	#,
	movl	$OPTIONS, %edx	#,
	movl	%eax, %edi	# tmp242,
	call	Getopt	#
	testl	%eax, %eax	# D.6979
	jne	.L22	#,
	.loc 1 266 0
	movl	-232(%rbp), %eax	# optind, optind.27
	movl	-276(%rbp), %edx	# argc, tmp245
	subl	%eax, %edx	# optind.27, D.6979
	movl	%edx, %eax	# D.6979, D.6979
	cmpl	$2, %eax	#, D.6979
	je	.L23	#,
	.loc 1 267 0
	movl	$usage, %esi	#,
	movl	$.LC21, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L23:
	.loc 1 269 0
	movl	-232(%rbp), %eax	# optind, optind.28
	leal	1(%rax), %edx	#, optind.30
	movl	%edx, -232(%rbp)	# optind.30, optind
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6982
	movq	-288(%rbp), %rax	# argv, tmp246
	addq	%rdx, %rax	# D.6982, D.6983
	movq	(%rax), %rax	# *_101, tmp247
	movq	%rax, -112(%rbp)	# tmp247, hmmfile
	.loc 1 270 0
	movl	-232(%rbp), %eax	# optind, optind.31
	leal	1(%rax), %edx	#, optind.33
	movl	%edx, -232(%rbp)	# optind.33, optind
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6982
	movq	-288(%rbp), %rax	# argv, tmp248
	addq	%rdx, %rax	# D.6982, D.6983
	movq	(%rax), %rax	# *_108, tmp249
	movq	%rax, -104(%rbp)	# tmp249, seqfile
	.loc 1 272 0
	cmpl	$0, -200(%rbp)	#, do_pvm
	je	.L24	#,
	.loc 1 272 0 is_stmt 0 discriminator 1
	cmpl	$0, -184(%rbp)	#, pvm_support
	jne	.L24	#,
	.loc 1 273 0 is_stmt 1
	movl	$.LC22, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L24:
	.loc 1 274 0
	cmpl	$0, -192(%rbp)	#, num_threads
	je	.L25	#,
	.loc 1 274 0 is_stmt 0 discriminator 1
	cmpl	$0, -180(%rbp)	#, threads_support
	jne	.L25	#,
	.loc 1 275 0 is_stmt 1
	movl	$.LC23, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L25:
	.loc 1 280 0
	cmpl	$0, -228(%rbp)	#, format
	jne	.L26	#,
	.loc 1 281 0 discriminator 1
	movq	-104(%rbp), %rax	# seqfile, tmp250
	movl	$0, %edx	#,
	movq	%rax, %rsi	# tmp250,
	movl	$.LC24, %edi	#,
	call	Strparse	#
	.loc 1 280 0 discriminator 1
	testl	%eax, %eax	# D.6979
	jne	.L27	#,
	.loc 1 281 0
	movq	-104(%rbp), %rax	# seqfile, tmp251
	movl	$.LC25, %esi	#,
	movq	%rax, %rdi	# tmp251,
	call	strcmp	#
	testl	%eax, %eax	# D.6979
	jne	.L26	#,
.L27:
	.loc 1 282 0
	movl	$7, -228(%rbp)	#, format
.L26:
	.loc 1 288 0
	movl	-228(%rbp), %ecx	# format, tmp252
	movq	-104(%rbp), %rax	# seqfile, tmp253
	movl	$.LC26, %edx	#,
	movl	%ecx, %esi	# tmp252,
	movq	%rax, %rdi	# tmp253,
	call	SeqfileOpen	#
	movq	%rax, -96(%rbp)	# tmp254, sqfp
	cmpq	$0, -96(%rbp)	#, sqfp
	jne	.L28	#,
	.loc 1 289 0
	movq	-104(%rbp), %rax	# seqfile, tmp255
	movl	$usage, %edx	#,
	movq	%rax, %rsi	# tmp255,
	movl	$.LC27, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L28:
	.loc 1 297 0
	movq	-112(%rbp), %rax	# hmmfile, tmp256
	movl	$.LC28, %esi	#,
	movq	%rax, %rdi	# tmp256,
	call	HMMFileOpen	#
	movq	%rax, -88(%rbp)	# tmp257, hmmfp
	cmpq	$0, -88(%rbp)	#, hmmfp
	jne	.L29	#,
	.loc 1 298 0
	movq	-112(%rbp), %rax	# hmmfile, tmp258
	movl	$usage, %edx	#,
	movq	%rax, %rsi	# tmp258,
	movl	$.LC29, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L29:
	.loc 1 299 0
	leaq	-168(%rbp), %rdx	#, tmp259
	movq	-88(%rbp), %rax	# hmmfp, tmp260
	movq	%rdx, %rsi	# tmp259,
	movq	%rax, %rdi	# tmp260,
	call	HMMFileRead	#
	testl	%eax, %eax	# D.6979
	jne	.L30	#,
	.loc 1 300 0
	movq	-112(%rbp), %rax	# hmmfile, tmp261
	movq	%rax, %rsi	# tmp261,
	movl	$.LC30, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L30:
	.loc 1 301 0
	movq	-168(%rbp), %rax	# hmm, hmm.34
	testq	%rax, %rax	# hmm.34
	jne	.L31	#,
	.loc 1 302 0
	movq	-112(%rbp), %rax	# hmmfile, tmp262
	movq	%rax, %rsi	# tmp262,
	movl	$.LC31, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L31:
	.loc 1 303 0
	cmpl	$0, -208(%rbp)	#, do_forward
	sete	%al	#, D.6984
	movzbl	%al, %edx	# D.6984, D.6979
	movq	-168(%rbp), %rax	# hmm, hmm.35
	movl	%edx, %esi	# D.6979,
	movq	%rax, %rdi	# hmm.35,
	call	P7Logoddsify	#
	.loc 1 305 0
	cmpl	$0, -204(%rbp)	#, do_xnu
	je	.L32	#,
	.loc 1 305 0 is_stmt 0 discriminator 1
	movl	Alphabet_type(%rip), %eax	# Alphabet_type, Alphabet_type.36
	cmpl	$2, %eax	#, Alphabet_type.36
	jne	.L32	#,
	.loc 1 306 0 is_stmt 1
	movl	$.LC32, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L32:
	.loc 1 313 0
	movq	-168(%rbp), %rdx	# hmm, hmm.37
	leaq	-48(%rbp), %rax	#, tmp263
	movq	%rdx, %rsi	# hmm.37,
	movq	%rax, %rdi	# tmp263,
	call	SetAutocuts	#
	testl	%eax, %eax	# D.6979
	jne	.L33	#,
	.loc 1 315 0
	movq	-168(%rbp), %rax	# hmm, hmm.38
	.loc 1 314 0
	movq	(%rax), %rax	# hmm.38_123->name, D.6985
	movq	%rax, %rsi	# D.6985,
	movl	$.LC33, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L33:
	.loc 1 321 0
	movq	stdout(%rip), %rax	# stdout, stdout.39
	movl	$banner, %esi	#,
	movq	%rax, %rdi	# stdout.39,
	call	HMMERBanner	#
	.loc 1 322 0
	movq	-168(%rbp), %rax	# hmm, hmm.40
	movq	(%rax), %rdx	# hmm.40_126->name, D.6985
	movq	-112(%rbp), %rax	# hmmfile, tmp264
	movq	%rax, %rsi	# tmp264,
	movl	$.LC34, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 323 0
	movq	-104(%rbp), %rax	# seqfile, tmp265
	movq	%rax, %rsi	# tmp265,
	movl	$.LC35, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 324 0
	cmpl	$0, -200(%rbp)	#, do_pvm
	je	.L34	#,
	.loc 1 325 0
	movl	$.LC36, %edi	#,
	call	puts	#
.L34:
	.loc 1 326 0
	movl	$.LC37, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 327 0
	movss	-48(%rbp), %xmm0	# thresh.globT, D.6981
	ucomiss	.LC18(%rip), %xmm0	#, D.6981
	jp	.L35	#,
	ucomiss	.LC18(%rip), %xmm0	#, D.6981
	jne	.L35	#,
	.loc 1 327 0 is_stmt 0 discriminator 1
	movl	$.LC38, %edi	#,
	call	puts	#
	jmp	.L37	#
.L35:
	.loc 1 329 0 is_stmt 1
	movss	-48(%rbp), %xmm0	# thresh.globT, D.6981
	unpcklps	%xmm0, %xmm0	# D.6981, D.6981
	cvtps2pd	%xmm0, %xmm0	# D.6981, D.6980
	movl	$.LC39, %edi	#,
	movl	$1, %eax	#,
	call	printf	#
	.loc 1 330 0
	movl	-16(%rbp), %eax	# thresh.autocut, D.6986
	cmpl	$1, %eax	#, D.6986
	jne	.L38	#,
	.loc 1 330 0 is_stmt 0 discriminator 1
	movl	$.LC40, %edi	#,
	call	puts	#
	jmp	.L37	#
.L38:
	.loc 1 331 0 is_stmt 1
	movl	-16(%rbp), %eax	# thresh.autocut, D.6986
	cmpl	$2, %eax	#, D.6986
	jne	.L39	#,
	.loc 1 331 0 is_stmt 0 discriminator 1
	movl	$.LC41, %edi	#,
	call	puts	#
	jmp	.L37	#
.L39:
	.loc 1 332 0 is_stmt 1
	movl	-16(%rbp), %eax	# thresh.autocut, D.6986
	cmpl	$3, %eax	#, D.6986
	jne	.L40	#,
	.loc 1 332 0 is_stmt 0 discriminator 1
	movl	$.LC42, %edi	#,
	call	puts	#
	jmp	.L37	#
.L40:
	.loc 1 333 0 is_stmt 1
	movl	$10, %edi	#,
	call	putchar	#
.L37:
	.loc 1 335 0
	movl	$.LC43, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 336 0
	movss	-32(%rbp), %xmm0	# thresh.domT, D.6981
	ucomiss	.LC18(%rip), %xmm0	#, D.6981
	jp	.L41	#,
	ucomiss	.LC18(%rip), %xmm0	#, D.6981
	jne	.L41	#,
	.loc 1 336 0 is_stmt 0 discriminator 1
	movl	$.LC38, %edi	#,
	call	puts	#
	jmp	.L43	#
.L41:
	.loc 1 338 0 is_stmt 1
	movss	-32(%rbp), %xmm0	# thresh.domT, D.6981
	unpcklps	%xmm0, %xmm0	# D.6981, D.6981
	cvtps2pd	%xmm0, %xmm0	# D.6981, D.6980
	movl	$.LC39, %edi	#,
	movl	$1, %eax	#,
	call	printf	#
	.loc 1 339 0
	movl	-16(%rbp), %eax	# thresh.autocut, D.6986
	cmpl	$1, %eax	#, D.6986
	jne	.L44	#,
	.loc 1 339 0 is_stmt 0 discriminator 1
	movl	$.LC44, %edi	#,
	call	puts	#
	jmp	.L43	#
.L44:
	.loc 1 340 0 is_stmt 1
	movl	-16(%rbp), %eax	# thresh.autocut, D.6986
	cmpl	$2, %eax	#, D.6986
	jne	.L45	#,
	.loc 1 340 0 is_stmt 0 discriminator 1
	movl	$.LC45, %edi	#,
	call	puts	#
	jmp	.L43	#
.L45:
	.loc 1 341 0 is_stmt 1
	movl	-16(%rbp), %eax	# thresh.autocut, D.6986
	cmpl	$3, %eax	#, D.6986
	jne	.L46	#,
	.loc 1 341 0 is_stmt 0 discriminator 1
	movl	$.LC46, %edi	#,
	call	puts	#
	jmp	.L43	#
.L46:
	.loc 1 342 0 is_stmt 1
	movl	$10, %edi	#,
	call	putchar	#
.L43:
	.loc 1 344 0
	movl	$.LC47, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 345 0
	movsd	-40(%rbp), %xmm0	# thresh.globE, D.6980
	ucomisd	.LC19(%rip), %xmm0	#, D.6980
	jp	.L47	#,
	ucomisd	.LC19(%rip), %xmm0	#, D.6980
	jne	.L47	#,
	.loc 1 345 0 is_stmt 0 discriminator 1
	movl	$.LC38, %edi	#,
	call	puts	#
	jmp	.L49	#
.L47:
	.loc 1 346 0 is_stmt 1
	movq	-40(%rbp), %rax	# thresh.globE, D.6980
	movq	%rax, -296(%rbp)	# D.6980, %sfp
	movsd	-296(%rbp), %xmm0	# %sfp,
	movl	$.LC48, %edi	#,
	movl	$1, %eax	#,
	call	printf	#
.L49:
	.loc 1 348 0
	movl	$.LC49, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 349 0
	movsd	-24(%rbp), %xmm0	# thresh.domE, D.6980
	ucomisd	.LC19(%rip), %xmm0	#, D.6980
	jp	.L50	#,
	ucomisd	.LC19(%rip), %xmm0	#, D.6980
	jne	.L50	#,
	.loc 1 349 0 is_stmt 0 discriminator 1
	movl	$.LC38, %edi	#,
	call	puts	#
	jmp	.L52	#
.L50:
	.loc 1 350 0 is_stmt 1
	movq	-24(%rbp), %rax	# thresh.domE, D.6980
	movq	%rax, -296(%rbp)	# D.6980, %sfp
	movsd	-296(%rbp), %xmm0	# %sfp,
	movl	$.LC50, %edi	#,
	movl	$1, %eax	#,
	call	printf	#
.L52:
	.loc 1 351 0
	movl	$.LC51, %edi	#,
	call	puts	#
	.loc 1 358 0
	movl	$100, %edx	#,
	movl	$200, %esi	#,
	movl	$-200, %edi	#,
	call	AllocHistogram	#
	movq	%rax, -80(%rbp)	# tmp266, histogram
	.loc 1 359 0
	movl	$200, %edi	#,
	call	AllocTophits	#
	movq	%rax, -72(%rbp)	# tmp267, ghit
	.loc 1 360 0
	movl	$200, %edi	#,
	call	AllocTophits	#
	movq	%rax, -64(%rbp)	# tmp268, dhit
	.loc 1 362 0
	cmpl	$0, -184(%rbp)	#, pvm_support
	je	.L53	#,
	.loc 1 362 0 is_stmt 0 discriminator 1
	cmpl	$0, -200(%rbp)	#, do_pvm
	je	.L53	#,
	.loc 1 363 0 is_stmt 1
	movq	-168(%rbp), %rax	# hmm, hmm.41
	movl	-204(%rbp), %r9d	# do_xnu, tmp269
	movl	-212(%rbp), %r8d	# do_null2, tmp270
	movl	-208(%rbp), %ecx	# do_forward, tmp271
	leaq	-48(%rbp), %rdx	#, tmp272
	movq	-96(%rbp), %rsi	# sqfp, tmp273
	leaq	-244(%rbp), %rdi	#, tmp274
	movq	%rdi, 24(%rsp)	# tmp274,
	movq	-64(%rbp), %rdi	# dhit, tmp275
	movq	%rdi, 16(%rsp)	# tmp275,
	movq	-72(%rbp), %rdi	# ghit, tmp276
	movq	%rdi, 8(%rsp)	# tmp276,
	movq	-80(%rbp), %rdi	# histogram, tmp277
	movq	%rdi, (%rsp)	# tmp277,
	movq	%rax, %rdi	# hmm.41,
	call	main_loop_pvm	#
	jmp	.L54	#
.L53:
	.loc 1 365 0
	cmpl	$0, -180(%rbp)	#, threads_support
	je	.L55	#,
	.loc 1 365 0 is_stmt 0 discriminator 1
	cmpl	$0, -192(%rbp)	#, num_threads
	je	.L55	#,
	.loc 1 366 0 is_stmt 1
	movq	-168(%rbp), %rax	# hmm, hmm.42
	movl	-204(%rbp), %r9d	# do_xnu, tmp278
	movl	-212(%rbp), %r8d	# do_null2, tmp279
	movl	-208(%rbp), %ecx	# do_forward, tmp280
	leaq	-48(%rbp), %rdx	#, tmp281
	movq	-96(%rbp), %rsi	# sqfp, tmp282
	leaq	-244(%rbp), %rdi	#, tmp283
	movq	%rdi, 32(%rsp)	# tmp283,
	movq	-64(%rbp), %rdi	# dhit, tmp284
	movq	%rdi, 24(%rsp)	# tmp284,
	movq	-72(%rbp), %rdi	# ghit, tmp285
	movq	%rdi, 16(%rsp)	# tmp285,
	movq	-80(%rbp), %rdi	# histogram, tmp286
	movq	%rdi, 8(%rsp)	# tmp286,
	movl	-192(%rbp), %edi	# num_threads, tmp287
	movl	%edi, (%rsp)	# tmp287,
	movq	%rax, %rdi	# hmm.42,
	call	main_loop_threaded	#
	jmp	.L54	#
.L55:
	.loc 1 369 0
	movq	-168(%rbp), %rax	# hmm, hmm.43
	movl	-204(%rbp), %r9d	# do_xnu, tmp288
	movl	-212(%rbp), %r8d	# do_null2, tmp289
	movl	-208(%rbp), %ecx	# do_forward, tmp290
	leaq	-48(%rbp), %rdx	#, tmp291
	movq	-96(%rbp), %rsi	# sqfp, tmp292
	leaq	-244(%rbp), %rdi	#, tmp293
	movq	%rdi, 24(%rsp)	# tmp293,
	movq	-64(%rbp), %rdi	# dhit, tmp294
	movq	%rdi, 16(%rsp)	# tmp294,
	movq	-72(%rbp), %rdi	# ghit, tmp295
	movq	%rdi, 8(%rsp)	# tmp295,
	movq	-80(%rbp), %rdi	# histogram, tmp296
	movq	%rdi, (%rsp)	# tmp296,
	movq	%rax, %rdi	# hmm.43,
	call	main_loop_serial	#
.L54:
	.loc 1 379 0
	movq	-168(%rbp), %rax	# hmm, hmm.44
	movl	456(%rax), %eax	# hmm.44_150->flags, D.6979
	andl	$128, %eax	#, D.6979
	testl	%eax, %eax	# D.6979
	je	.L56	#,
	.loc 1 381 0
	movq	-80(%rbp), %rax	# histogram, tmp297
	movl	16(%rax), %eax	# histogram_144->highscore, D.6979
	.loc 1 380 0
	cvtsi2ss	%eax, %xmm1	# D.6979, D.6981
	.loc 1 381 0
	movq	-80(%rbp), %rax	# histogram, tmp298
	movl	20(%rax), %eax	# histogram_144->lowscore, D.6979
	.loc 1 380 0
	cvtsi2ss	%eax, %xmm0	# D.6979, D.6981
	movq	-168(%rbp), %rax	# hmm, hmm.45
	movl	452(%rax), %edx	# hmm.45_157->lambda, D.6981
	movq	-168(%rbp), %rax	# hmm, hmm.46
	movl	448(%rax), %eax	# hmm.46_159->mu, D.6981
	movq	-80(%rbp), %rcx	# histogram, tmp299
	movl	$0, %esi	#,
	movaps	%xmm1, %xmm3	# D.6981,
	movaps	%xmm0, %xmm2	# D.6981,
	movl	%edx, -296(%rbp)	# D.6981, %sfp
	movss	-296(%rbp), %xmm1	# %sfp,
	movl	%eax, -296(%rbp)	# D.6981, %sfp
	movss	-296(%rbp), %xmm0	# %sfp,
	movq	%rcx, %rdi	# tmp299,
	call	ExtremeValueSetHistogram	#
.L56:
	.loc 1 382 0
	movl	-12(%rbp), %eax	# thresh.Z, D.6979
	testl	%eax, %eax	# D.6979
	jne	.L57	#,
	.loc 1 382 0 is_stmt 0 discriminator 1
	movl	-244(%rbp), %eax	# nseq, nseq.47
	movl	%eax, -12(%rbp)	# nseq.47, thresh.Z
.L57:
	.loc 1 387 0 is_stmt 1
	cmpl	$0, -196(%rbp)	#, be_backwards
	je	.L58	#,
	.loc 1 392 0
	movq	-168(%rbp), %rax	# hmm, hmm.49
	movl	456(%rax), %eax	# hmm.49_163->flags, D.6979
	andl	$2, %eax	#, D.6979
	.loc 1 389 0
	testl	%eax, %eax	# D.6979
	je	.L59	#,
	.loc 1 392 0
	movq	-168(%rbp), %rax	# hmm, hmm.50
	.loc 1 389 0
	movq	16(%rax), %rdx	# hmm.50_166->desc, iftmp.48
	jmp	.L60	#
.L59:
	.loc 1 389 0 is_stmt 0 discriminator 1
	movl	$.LC52, %edx	#, iftmp.48
.L60:
	.loc 1 391 0 is_stmt 1 discriminator 2
	movq	-168(%rbp), %rax	# hmm, hmm.52
	movl	456(%rax), %eax	# hmm.52_169->flags, D.6979
	andl	$512, %eax	#, D.6979
	.loc 1 389 0 discriminator 2
	testl	%eax, %eax	# D.6979
	je	.L61	#,
	.loc 1 391 0
	movq	-168(%rbp), %rax	# hmm, hmm.53
	.loc 1 389 0
	movq	8(%rax), %rax	# hmm.53_172->acc, iftmp.51
	jmp	.L62	#
.L61:
	.loc 1 389 0 is_stmt 0 discriminator 3
	movl	$.LC52, %eax	#, iftmp.51
.L62:
	.loc 1 390 0 is_stmt 1 discriminator 1
	movq	-168(%rbp), %rcx	# hmm, hmm.54
	.loc 1 389 0 discriminator 1
	movq	(%rcx), %rsi	# hmm.54_175->name, D.6985
	movq	%rdx, %rcx	# iftmp.48,
	movq	%rax, %rdx	# iftmp.51,
	movl	$.LC53, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	jmp	.L63	#
.L58:
	.loc 1 396 0
	movq	-168(%rbp), %rax	# hmm, hmm.55
	movq	(%rax), %rax	# hmm.55_177->name, D.6985
	movq	%rax, %rsi	# D.6985,
	movl	$.LC54, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 397 0
	movq	-168(%rbp), %rax	# hmm, hmm.57
	movl	456(%rax), %eax	# hmm.57_179->flags, D.6979
	andl	$512, %eax	#, D.6979
	testl	%eax, %eax	# D.6979
	je	.L64	#,
	.loc 1 397 0 is_stmt 0 discriminator 1
	movq	-168(%rbp), %rax	# hmm, hmm.58
	movq	8(%rax), %rax	# hmm.58_182->acc, iftmp.56
	jmp	.L65	#
.L64:
	.loc 1 397 0 discriminator 2
	movl	$.LC38, %eax	#, iftmp.56
.L65:
	.loc 1 397 0 discriminator 3
	movq	%rax, %rsi	# iftmp.56,
	movl	$.LC55, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 398 0 is_stmt 1 discriminator 3
	movq	-168(%rbp), %rax	# hmm, hmm.60
	movl	456(%rax), %eax	# hmm.60_185->flags, D.6979
	andl	$2, %eax	#, D.6979
	testl	%eax, %eax	# D.6979
	je	.L66	#,
	.loc 1 398 0 is_stmt 0 discriminator 1
	movq	-168(%rbp), %rax	# hmm, hmm.61
	movq	16(%rax), %rax	# hmm.61_188->desc, iftmp.59
	jmp	.L67	#
.L66:
	.loc 1 398 0 discriminator 2
	movl	$.LC38, %eax	#, iftmp.59
.L67:
	.loc 1 398 0 discriminator 3
	movq	%rax, %rsi	# iftmp.59,
	movl	$.LC56, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
.L63:
	.loc 1 401 0 is_stmt 1
	movq	-168(%rbp), %rax	# hmm, hmm.62
	movl	456(%rax), %eax	# hmm.62_191->flags, D.6979
	andl	$128, %eax	#, D.6979
	testl	%eax, %eax	# D.6979
	je	.L68	#,
	.loc 1 402 0
	movl	$.LC57, %edi	#,
	call	puts	#
	jmp	.L69	#
.L68:
	.loc 1 404 0
	movl	$.LC58, %edi	#,
	call	puts	#
.L69:
	.loc 1 406 0
	movq	-72(%rbp), %rax	# ghit, tmp300
	movq	%rax, %rdi	# tmp300,
	call	FullSortTophits	#
	.loc 1 407 0
	movq	-72(%rbp), %rax	# ghit, tmp301
	movq	%rax, %rdi	# tmp301,
	call	TophitsMaxName	#
	cmpl	$7, %eax	#, D.6979
	jle	.L70	#,
	.loc 1 407 0 is_stmt 0 discriminator 1
	movq	-72(%rbp), %rax	# ghit, tmp302
	movq	%rax, %rdi	# tmp302,
	call	TophitsMaxName	#
	jmp	.L71	#
.L70:
	.loc 1 407 0 discriminator 2
	movl	$8, %eax	#, iftmp.63
.L71:
	.loc 1 407 0 discriminator 3
	movl	%eax, -176(%rbp)	# iftmp.63, namewidth
	.loc 1 408 0 is_stmt 1 discriminator 3
	movl	$52, %eax	#, tmp303
	subl	-176(%rbp), %eax	# namewidth, D.6979
	movl	$11, %edx	#, tmp305
	cmpl	$11, %eax	#, D.6979
	cmovl	%edx, %eax	# D.6979,, tmp305, tmp304
	movl	%eax, -172(%rbp)	# tmp304, descwidth
	.loc 1 456 0 discriminator 3
	movq	-64(%rbp), %rax	# dhit, tmp306
	movq	%rax, %rdi	# tmp306,
	call	FullSortTophits	#
	.loc 1 457 0 discriminator 3
	movq	-64(%rbp), %rax	# dhit, tmp307
	movq	%rax, %rdi	# tmp307,
	call	TophitsMaxName	#
	cmpl	$7, %eax	#, D.6979
	jle	.L72	#,
	.loc 1 457 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# dhit, tmp308
	movq	%rax, %rdi	# tmp308,
	call	TophitsMaxName	#
	jmp	.L73	#
.L72:
	.loc 1 457 0 discriminator 2
	movl	$8, %eax	#, iftmp.64
.L73:
	.loc 1 457 0 discriminator 3
	movl	%eax, -176(%rbp)	# iftmp.64, namewidth
	.loc 1 503 0 is_stmt 1 discriminator 3
	cmpl	$0, -216(%rbp)	#, Alimit
	je	.L74	#,
	.loc 1 505 0
	movl	$.LC59, %edi	#,
	call	puts	#
	.loc 1 506 0
	movl	$0, -224(%rbp)	#, i
	movl	$0, -220(%rbp)	#, nreported
	jmp	.L75	#
.L84:
	.loc 1 508 0
	movl	-220(%rbp), %eax	# nreported, tmp309
	cmpl	-216(%rbp), %eax	# Alimit, tmp309
	jne	.L76	#,
	.loc 1 508 0 is_stmt 0 discriminator 1
	jmp	.L77	#
.L76:
	.loc 1 509 0 is_stmt 1
	leaq	-268(%rbp), %r9	#, tmp310
	leaq	-144(%rbp), %r8	#, tmp311
	leaq	-272(%rbp), %rcx	#, tmp312
	leaq	-152(%rbp), %rdx	#, tmp313
	movl	-224(%rbp), %esi	# i, tmp314
	movq	-64(%rbp), %rax	# dhit, tmp315
	leaq	-160(%rbp), %rdi	#, tmp316
	movq	%rdi, 88(%rsp)	# tmp316,
	leaq	-236(%rbp), %rdi	#, tmp317
	movq	%rdi, 80(%rsp)	# tmp317,
	leaq	-240(%rbp), %rdi	#, tmp318
	movq	%rdi, 72(%rsp)	# tmp318,
	movq	$0, 64(%rsp)	#,
	leaq	-252(%rbp), %rdi	#, tmp319
	movq	%rdi, 56(%rsp)	# tmp319,
	leaq	-256(%rbp), %rdi	#, tmp320
	movq	%rdi, 48(%rsp)	# tmp320,
	leaq	-248(%rbp), %rdi	#, tmp321
	movq	%rdi, 40(%rsp)	# tmp321,
	leaq	-260(%rbp), %rdi	#, tmp322
	movq	%rdi, 32(%rsp)	# tmp322,
	leaq	-264(%rbp), %rdi	#, tmp323
	movq	%rdi, 24(%rsp)	# tmp323,
	movq	$0, 16(%rsp)	#,
	movq	$0, 8(%rsp)	#,
	leaq	-136(%rbp), %rdi	#, tmp324
	movq	%rdi, (%rsp)	# tmp324,
	movq	%rax, %rdi	# tmp315,
	call	GetRankedHit	#
	.loc 1 516 0
	movl	-12(%rbp), %eax	# thresh.Z, D.6979
	cvtsi2sd	%eax, %xmm0	# D.6979, D.6980
	movsd	-152(%rbp), %xmm1	# pvalue, pvalue.65
	mulsd	%xmm1, %xmm0	# pvalue.65, tmp325
	movsd	%xmm0, -56(%rbp)	# tmp325, evalue
	.loc 1 518 0
	movl	-12(%rbp), %eax	# thresh.Z, D.6979
	cvtsi2sd	%eax, %xmm0	# D.6979, D.6980
	movsd	-144(%rbp), %xmm1	# motherp, motherp.66
	mulsd	%xmm1, %xmm0	# motherp.66, D.6980
	movsd	-40(%rbp), %xmm1	# thresh.globE, D.6980
	ucomisd	%xmm1, %xmm0	# D.6980, D.6980
	ja	.L78	#,
	.loc 1 518 0 is_stmt 0 discriminator 1
	movss	-48(%rbp), %xmm0	# thresh.globT, D.6981
	movss	-268(%rbp), %xmm1	# mothersc, mothersc.67
	ucomiss	%xmm1, %xmm0	# mothersc.67, D.6981
	jbe	.L93	#,
.L78:
	.loc 1 519 0 is_stmt 1
	jmp	.L81	#
.L93:
	.loc 1 520 0
	movsd	-24(%rbp), %xmm0	# thresh.domE, D.6980
	ucomisd	-56(%rbp), %xmm0	# evalue, D.6980
	jb	.L81	#,
	.loc 1 520 0 is_stmt 0 discriminator 1
	movss	-32(%rbp), %xmm1	# thresh.domT, D.6981
	movss	-272(%rbp), %xmm0	# sc, sc.68
	ucomiss	%xmm1, %xmm0	# D.6981, sc.68
	jb	.L81	#,
	.loc 1 522 0 is_stmt 1
	movss	-272(%rbp), %xmm0	# sc, sc.69
	unpcklps	%xmm0, %xmm0	# sc.69, sc.69
	cvtps2pd	%xmm0, %xmm0	# sc.69, D.6980
	movl	-260(%rbp), %r8d	# sqto, sqto.70
	movl	-264(%rbp), %edi	# sqfrom, sqfrom.71
	movl	-236(%rbp), %ecx	# ndom, ndom.72
	movl	-240(%rbp), %edx	# domidx, domidx.73
	movq	-136(%rbp), %rsi	# name, name.74
	movq	-56(%rbp), %rax	# evalue, tmp326
	movq	%rax, -296(%rbp)	# tmp326, %sfp
	movsd	-296(%rbp), %xmm1	# %sfp,
	movl	%r8d, %r9d	# sqto.70,
	movl	%edi, %r8d	# sqfrom.71,
	movl	$.LC60, %edi	#,
	movl	$2, %eax	#,
	call	printf	#
	.loc 1 524 0
	movq	-160(%rbp), %rdx	# ali, ali.75
	movq	stdout(%rip), %rax	# stdout, stdout.76
	movq	%rdx, %rsi	# ali.75,
	movq	%rax, %rdi	# stdout.76,
	call	PrintFancyAli	#
	.loc 1 525 0
	addl	$1, -220(%rbp)	#, nreported
.L81:
	.loc 1 506 0
	addl	$1, -224(%rbp)	#, i
.L75:
	.loc 1 506 0 is_stmt 0 discriminator 1
	movq	-64(%rbp), %rax	# dhit, tmp327
	movl	20(%rax), %eax	# dhit_146->num, D.6979
	cmpl	-224(%rbp), %eax	# i, D.6979
	jg	.L84	#,
.L77:
	.loc 1 528 0 is_stmt 1
	cmpl	$0, -220(%rbp)	#, nreported
	jne	.L85	#,
	.loc 1 528 0 is_stmt 0 discriminator 1
	movl	$.LC61, %edi	#,
	call	puts	#
.L85:
	.loc 1 529 0 is_stmt 1
	movl	-220(%rbp), %eax	# nreported, tmp328
	cmpl	-216(%rbp), %eax	# Alimit, tmp328
	jne	.L74	#,
	.loc 1 529 0 is_stmt 0 discriminator 1
	movl	-216(%rbp), %eax	# Alimit, tmp329
	movl	%eax, %esi	# tmp329,
	movl	$.LC62, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
.L74:
	.loc 1 557 0 is_stmt 1
	movl	-244(%rbp), %eax	# nseq, nseq.77
	movl	%eax, %esi	# nseq.77,
	movl	$.LC63, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 562 0
	movq	-80(%rbp), %rax	# histogram, tmp330
	movq	%rax, %rdi	# tmp330,
	call	FreeHistogram	#
	.loc 1 563 0
	movq	-88(%rbp), %rax	# hmmfp, tmp331
	movq	%rax, %rdi	# tmp331,
	call	HMMFileClose	#
	.loc 1 564 0
	movq	-96(%rbp), %rax	# sqfp, tmp332
	movq	%rax, %rdi	# tmp332,
	call	SeqfileClose	#
	.loc 1 565 0
	movq	-72(%rbp), %rax	# ghit, tmp333
	movq	%rax, %rdi	# tmp333,
	call	FreeTophits	#
	.loc 1 566 0
	movq	-64(%rbp), %rax	# dhit, tmp334
	movq	%rax, %rdi	# tmp334,
	call	FreeTophits	#
	.loc 1 567 0
	movq	-168(%rbp), %rax	# hmm, hmm.78
	movq	%rax, %rdi	# hmm.78,
	call	FreePlan7	#
	.loc 1 568 0
	call	SqdClean	#
	.loc 1 570 0
	movl	$0, %eax	#, D.6979
.L86:
	.loc 1 571 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.type	main_loop_serial, @function
main_loop_serial:
.LFB3:
	.loc 1 602 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$584, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -456(%rbp)	# hmm, hmm
	movq	%rsi, -464(%rbp)	# sqfp, sqfp
	movq	%rdx, -472(%rbp)	# thresh, thresh
	movl	%ecx, -476(%rbp)	# do_forward, do_forward
	movl	%r8d, -480(%rbp)	# do_null2, do_null2
	movl	%r9d, -484(%rbp)	# do_xnu, do_xnu
	movq	16(%rbp), %rax	# histogram, tmp92
	movq	%rax, -496(%rbp)	# tmp92, histogram
	movq	24(%rbp), %rax	# ghit, tmp93
	movq	%rax, -504(%rbp)	# tmp93, ghit
	movq	32(%rbp), %rax	# dhit, tmp94
	movq	%rax, -512(%rbp)	# tmp94, dhit
	movq	40(%rbp), %rax	# ret_nseq, tmp95
	movq	%rax, -520(%rbp)	# tmp95, ret_nseq
	.loc 1 602 0
	movq	%fs:40, %rax	#, tmp150
	movq	%rax, -24(%rbp)	# tmp150, D.7035
	xorl	%eax, %eax	# tmp150
	.loc 1 617 0
	movq	-456(%rbp), %rax	# hmm, tmp96
	movl	136(%rax), %eax	# hmm_8(D)->M, D.7032
	movl	$0, %ecx	#,
	movl	$25, %edx	#,
	movl	%eax, %esi	# D.7032,
	movl	$1, %edi	#,
	call	CreatePlan7Matrix	#
	movq	%rax, -416(%rbp)	# tmp97, mx
	.loc 1 619 0
	movl	$0, -436(%rbp)	#, nseq
	.loc 1 620 0
	jmp	.L95	#
.L110:
	.loc 1 626 0
	movl	-60(%rbp), %eax	# sqinfo.len, D.7032
	testl	%eax, %eax	# D.7032
	jne	.L96	#,
	.loc 1 626 0 is_stmt 0 discriminator 1
	jmp	.L95	#
.L96:
	.loc 1 628 0 is_stmt 1
	addl	$1, -436(%rbp)	#, nseq
	.loc 1 629 0
	movl	-60(%rbp), %edx	# sqinfo.len, D.7032
	movq	-424(%rbp), %rax	# seq, seq.79
	movl	%edx, %esi	# D.7032,
	movq	%rax, %rdi	# seq.79,
	call	DigitizeSequence	#
	movq	%rax, -408(%rbp)	# tmp98, dsq
	.loc 1 631 0
	cmpl	$0, -484(%rbp)	#, do_xnu
	je	.L97	#,
	.loc 1 631 0 is_stmt 0 discriminator 1
	movl	Alphabet_type(%rip), %eax	# Alphabet_type, Alphabet_type.80
	cmpl	$3, %eax	#, Alphabet_type.80
	jne	.L97	#,
	movl	-60(%rbp), %edx	# sqinfo.len, D.7032
	movq	-408(%rbp), %rax	# dsq, tmp99
	movl	%edx, %esi	# D.7032,
	movq	%rax, %rdi	# tmp99,
	call	XNU	#
.L97:
	.loc 1 639 0 is_stmt 1
	movq	-456(%rbp), %rax	# hmm, tmp100
	movl	136(%rax), %edx	# hmm_8(D)->M, D.7032
	movl	-60(%rbp), %eax	# sqinfo.len, D.7032
	movl	%edx, %esi	# D.7032,
	movl	%eax, %edi	# D.7032,
	call	P7ViterbiSize	#
	cmpl	$1000, %eax	#, D.7032
	jg	.L98	#,
	.loc 1 640 0
	movl	-60(%rbp), %esi	# sqinfo.len, D.7032
	leaq	-432(%rbp), %rdi	#, tmp101
	movq	-416(%rbp), %rcx	# mx, tmp102
	movq	-456(%rbp), %rdx	# hmm, tmp103
	movq	-408(%rbp), %rax	# dsq, tmp104
	movq	%rdi, %r8	# tmp101,
	movq	%rax, %rdi	# tmp104,
	call	P7Viterbi	#
	movss	%xmm0, -528(%rbp)	#, %sfp
	movl	-528(%rbp), %eax	# %sfp, tmp105
	movl	%eax, -440(%rbp)	# tmp105, sc
	jmp	.L99	#
.L98:
	.loc 1 642 0
	movl	-60(%rbp), %esi	# sqinfo.len, D.7032
	leaq	-432(%rbp), %rdi	#, tmp106
	movq	-416(%rbp), %rcx	# mx, tmp107
	movq	-456(%rbp), %rdx	# hmm, tmp108
	movq	-408(%rbp), %rax	# dsq, tmp109
	movq	%rdi, %r8	# tmp106,
	movq	%rax, %rdi	# tmp109,
	call	P7SmallViterbi	#
	movss	%xmm0, -528(%rbp)	#, %sfp
	movl	-528(%rbp), %eax	# %sfp, tmp110
	movl	%eax, -440(%rbp)	# tmp110, sc
.L99:
	.loc 1 648 0
	cmpl	$0, -476(%rbp)	#, do_forward
	je	.L100	#,
	.loc 1 649 0
	movl	-60(%rbp), %esi	# sqinfo.len, D.7032
	movq	-456(%rbp), %rdx	# hmm, tmp111
	movq	-408(%rbp), %rax	# dsq, tmp112
	movl	$0, %ecx	#,
	movq	%rax, %rdi	# tmp112,
	call	P7Forward	#
	movss	%xmm0, -528(%rbp)	#, %sfp
	movl	-528(%rbp), %eax	# %sfp, tmp113
	movl	%eax, -440(%rbp)	# tmp113, sc
	.loc 1 650 0
	cmpl	$0, -480(%rbp)	#, do_null2
	je	.L100	#,
	.loc 1 650 0 is_stmt 0 discriminator 1
	movq	-432(%rbp), %rcx	# tr, tr.81
	movq	-408(%rbp), %rdx	# dsq, tmp114
	movq	-456(%rbp), %rax	# hmm, tmp115
	movq	%rcx, %rsi	# tr.81,
	movq	%rax, %rdi	# tmp115,
	call	TraceScoreCorrection	#
	movss	-440(%rbp), %xmm1	# sc, tmp117
	subss	%xmm0, %xmm1	# D.7033, tmp116
	movaps	%xmm1, %xmm0	# tmp116, tmp116
	movss	%xmm0, -440(%rbp)	# tmp116, sc
.L100:
	.loc 1 665 0 is_stmt 1
	movl	-440(%rbp), %eax	# sc, tmp118
	movq	-456(%rbp), %rdx	# hmm, tmp119
	movl	%eax, -528(%rbp)	# tmp118, %sfp
	movss	-528(%rbp), %xmm0	# %sfp,
	movq	%rdx, %rdi	# tmp119,
	call	PValue	#
	movsd	%xmm0, -528(%rbp)	#, %sfp
	movq	-528(%rbp), %rax	# %sfp, tmp120
	movq	%rax, -400(%rbp)	# tmp120, pvalue
	.loc 1 666 0
	movq	-472(%rbp), %rax	# thresh, tmp121
	movl	36(%rax), %eax	# thresh_38(D)->Z, D.7032
	testl	%eax, %eax	# D.7032
	je	.L101	#,
	.loc 1 666 0 is_stmt 0 discriminator 1
	movq	-472(%rbp), %rax	# thresh, tmp122
	movl	36(%rax), %eax	# thresh_38(D)->Z, D.7032
	cvtsi2sd	%eax, %xmm0	# D.7032, D.7034
	mulsd	-400(%rbp), %xmm0	# pvalue, iftmp.82
	jmp	.L102	#
.L101:
	.loc 1 666 0 discriminator 2
	cvtsi2sd	-436(%rbp), %xmm0	# nseq, D.7034
	mulsd	-400(%rbp), %xmm0	# pvalue, iftmp.82
.L102:
	.loc 1 666 0 discriminator 3
	movsd	%xmm0, -392(%rbp)	# iftmp.82, evalue
	.loc 1 667 0 is_stmt 1 discriminator 3
	movq	-472(%rbp), %rax	# thresh, tmp123
	movss	(%rax), %xmm1	# thresh_38(D)->globT, D.7033
	movss	-440(%rbp), %xmm0	# sc, tmp124
	ucomiss	%xmm1, %xmm0	# D.7033, tmp124
	jb	.L103	#,
	.loc 1 667 0 is_stmt 0 discriminator 1
	movq	-472(%rbp), %rax	# thresh, tmp125
	movsd	8(%rax), %xmm0	# thresh_38(D)->globE, D.7034
	ucomisd	-392(%rbp), %xmm0	# evalue, D.7034
	jb	.L103	#,
	.loc 1 673 0 is_stmt 1
	movl	-384(%rbp), %eax	# sqinfo.flags, D.7032
	andl	$8, %eax	#, D.7032
	.loc 1 669 0
	testl	%eax, %eax	# D.7032
	je	.L106	#,
	.loc 1 669 0 is_stmt 0 discriminator 1
	leaq	-384(%rbp), %rax	#, tmp126
	leaq	196(%rax), %rcx	#, iftmp.83
	jmp	.L107	#
.L106:
	.loc 1 669 0 discriminator 2
	movl	$0, %ecx	#, iftmp.83
.L107:
	.loc 1 672 0 is_stmt 1 discriminator 3
	movl	-384(%rbp), %eax	# sqinfo.flags, D.7032
	andl	$4, %eax	#, D.7032
	.loc 1 669 0 discriminator 3
	testl	%eax, %eax	# D.7032
	je	.L108	#,
	.loc 1 669 0 is_stmt 0 discriminator 4
	leaq	-384(%rbp), %rax	#, tmp127
	leaq	132(%rax), %rdx	#, iftmp.84
	jmp	.L109	#
.L108:
	.loc 1 669 0 discriminator 5
	movl	$0, %edx	#, iftmp.84
.L109:
	.loc 1 669 0 discriminator 6
	movl	-60(%rbp), %r9d	# sqinfo.len, D.7032
	movq	-432(%rbp), %r10	# tr, tr.85
	movl	-440(%rbp), %eax	# sc, tmp128
	movq	-408(%rbp), %rbx	# dsq, tmp129
	movq	-456(%rbp), %r11	# hmm, tmp130
	movq	-512(%rbp), %rsi	# dhit, tmp131
	movq	-504(%rbp), %rdi	# ghit, tmp132
	movl	$0, 48(%rsp)	#,
	movq	-472(%rbp), %r8	# thresh, tmp133
	movq	%r8, 40(%rsp)	# tmp133,
	movl	-480(%rbp), %r8d	# do_null2, tmp134
	movl	%r8d, 32(%rsp)	# tmp134,
	movl	-476(%rbp), %r8d	# do_forward, tmp135
	movl	%r8d, 24(%rsp)	# tmp135,
	movq	%rcx, 16(%rsp)	# iftmp.83,
	movq	%rdx, 8(%rsp)	# iftmp.84,
	leaq	-384(%rbp), %rdx	#, tmp136
	addq	$4, %rdx	#, tmp137
	movq	%rdx, (%rsp)	# tmp137,
	movl	%eax, -528(%rbp)	# tmp128, %sfp
	movss	-528(%rbp), %xmm0	# %sfp,
	movq	%rbx, %r8	# tmp129,
	movq	%r11, %rcx	# tmp130,
	movq	%r10, %rdx	# tr.85,
	call	PostprocessSignificantHit	#
	movss	%xmm0, -528(%rbp)	#, %sfp
	movl	-528(%rbp), %eax	# %sfp, tmp138
	movl	%eax, -440(%rbp)	# tmp138, sc
.L103:
	.loc 1 680 0 is_stmt 1
	movl	-440(%rbp), %eax	# sc, tmp139
	movq	-496(%rbp), %rdx	# histogram, tmp140
	movl	%eax, -528(%rbp)	# tmp139, %sfp
	movss	-528(%rbp), %xmm0	# %sfp,
	movq	%rdx, %rdi	# tmp140,
	call	AddToHistogram	#
	.loc 1 681 0
	movq	-424(%rbp), %rax	# seq, seq.86
	leaq	-384(%rbp), %rdx	#, tmp141
	movq	%rdx, %rsi	# tmp141,
	movq	%rax, %rdi	# seq.86,
	call	FreeSequence	#
	.loc 1 682 0
	movq	-432(%rbp), %rax	# tr, tr.87
	movq	%rax, %rdi	# tr.87,
	call	P7FreeTrace	#
	.loc 1 683 0
	movq	-408(%rbp), %rax	# dsq, tmp142
	movq	%rax, %rdi	# tmp142,
	call	free	#
.L95:
	.loc 1 620 0 discriminator 1
	movq	-464(%rbp), %rax	# sqfp, tmp143
	movl	144(%rax), %esi	# sqfp_12(D)->format, D.7032
	leaq	-384(%rbp), %rcx	#, tmp144
	leaq	-424(%rbp), %rdx	#, tmp145
	movq	-464(%rbp), %rax	# sqfp, tmp146
	movq	%rax, %rdi	# tmp146,
	call	ReadSeq	#
	testl	%eax, %eax	# D.7032
	jne	.L110	#,
	.loc 1 686 0
	movq	-416(%rbp), %rax	# mx, tmp147
	movq	%rax, %rdi	# tmp147,
	call	FreePlan7Matrix	#
	.loc 1 687 0
	movq	-520(%rbp), %rax	# ret_nseq, tmp148
	movl	-436(%rbp), %edx	# nseq, tmp149
	movl	%edx, (%rax)	# tmp149, *ret_nseq_64(D)
	.loc 1 688 0
	nop
	.loc 1 689 0
	movq	-24(%rbp), %rax	# D.7035, tmp151
	xorq	%fs:40, %rax	#, tmp151
	je	.L112	#,
	call	__stack_chk_fail	#
.L112:
	addq	$584, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	main_loop_serial, .-main_loop_serial
	.section	.rodata
.LC64:
	.string	"No PVM support"
	.text
	.type	main_loop_pvm, @function
main_loop_pvm:
.LFB4:
	.loc 1 935 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -8(%rbp)	# hmm, hmm
	movq	%rsi, -16(%rbp)	# sqfp, sqfp
	movq	%rdx, -24(%rbp)	# thresh, thresh
	movl	%ecx, -28(%rbp)	# do_forward, do_forward
	movl	%r8d, -32(%rbp)	# do_null2, do_null2
	movl	%r9d, -36(%rbp)	# do_xnu, do_xnu
	.loc 1 936 0
	movl	$.LC64, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
	.loc 1 937 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	main_loop_pvm, .-main_loop_pvm
	.section	.rodata
.LC65:
	.string	"No threads support"
	.text
	.type	main_loop_threaded, @function
main_loop_threaded:
.LFB5:
	.loc 1 1215 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -8(%rbp)	# hmm, hmm
	movq	%rsi, -16(%rbp)	# sqfp, sqfp
	movq	%rdx, -24(%rbp)	# thresh, thresh
	movl	%ecx, -28(%rbp)	# do_forward, do_forward
	movl	%r8d, -32(%rbp)	# do_null2, do_null2
	movl	%r9d, -36(%rbp)	# do_xnu, do_xnu
	.loc 1 1216 0
	movl	$.LC65, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
	.loc 1 1217 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	main_loop_threaded, .-main_loop_threaded
	.section	.rodata
	.align 4
.LC18:
	.long	4286578687
	.align 8
.LC19:
	.long	3758096384
	.long	1206910975
	.text
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "squid.h"
	.file 7 "gki.h"
	.file 8 "ssi.h"
	.file 9 "msa.h"
	.file 10 "structs.h"
	.file 11 "globals.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1865
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF268
	.byte	0x1
	.long	.LASF269
	.long	.LASF270
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
	.long	.LASF271
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
	.long	0x29f
	.uleb128 0xd
	.long	.LASF54
	.value	0x168
	.byte	0x6
	.byte	0x54
	.long	0x377
	.uleb128 0x8
	.long	.LASF55
	.byte	0x6
	.byte	0x55
	.long	0x62
	.byte	0
	.uleb128 0x8
	.long	.LASF56
	.byte	0x6
	.byte	0x56
	.long	0x377
	.byte	0x4
	.uleb128 0xe
	.string	"id"
	.byte	0x6
	.byte	0x57
	.long	0x377
	.byte	0x44
	.uleb128 0xe
	.string	"acc"
	.byte	0x6
	.byte	0x58
	.long	0x377
	.byte	0x84
	.uleb128 0x8
	.long	.LASF57
	.byte	0x6
	.byte	0x59
	.long	0x387
	.byte	0xc4
	.uleb128 0xf
	.string	"len"
	.byte	0x6
	.byte	0x5a
	.long	0x62
	.value	0x144
	.uleb128 0x10
	.long	.LASF58
	.byte	0x6
	.byte	0x5b
	.long	0x62
	.value	0x148
	.uleb128 0x10
	.long	.LASF59
	.byte	0x6
	.byte	0x5c
	.long	0x62
	.value	0x14c
	.uleb128 0x10
	.long	.LASF60
	.byte	0x6
	.byte	0x5d
	.long	0x62
	.value	0x150
	.uleb128 0x10
	.long	.LASF61
	.byte	0x6
	.byte	0x5e
	.long	0x62
	.value	0x154
	.uleb128 0xf
	.string	"ss"
	.byte	0x6
	.byte	0x5f
	.long	0x8f
	.value	0x158
	.uleb128 0xf
	.string	"sa"
	.byte	0x6
	.byte	0x60
	.long	0x8f
	.value	0x160
	.byte	0
	.uleb128 0xb
	.long	0x95
	.long	0x387
	.uleb128 0xc
	.long	0x86
	.byte	0x3f
	.byte	0
	.uleb128 0xb
	.long	0x95
	.long	0x397
	.uleb128 0xc
	.long	0x86
	.byte	0x7f
	.byte	0
	.uleb128 0x2
	.long	.LASF62
	.byte	0x6
	.byte	0x62
	.long	0x2d5
	.uleb128 0x7
	.long	.LASF63
	.byte	0x18
	.byte	0x7
	.byte	0x1a
	.long	0x3d3
	.uleb128 0xe
	.string	"key"
	.byte	0x7
	.byte	0x1b
	.long	0x8f
	.byte	0
	.uleb128 0xe
	.string	"idx"
	.byte	0x7
	.byte	0x1c
	.long	0x62
	.byte	0x8
	.uleb128 0xe
	.string	"nxt"
	.byte	0x7
	.byte	0x1d
	.long	0x3d3
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x3a2
	.uleb128 0x11
	.byte	0x18
	.byte	0x7
	.byte	0x24
	.long	0x412
	.uleb128 0x8
	.long	.LASF64
	.byte	0x7
	.byte	0x25
	.long	0x412
	.byte	0
	.uleb128 0x8
	.long	.LASF65
	.byte	0x7
	.byte	0x27
	.long	0x62
	.byte	0x8
	.uleb128 0x8
	.long	.LASF66
	.byte	0x7
	.byte	0x28
	.long	0x62
	.byte	0xc
	.uleb128 0x8
	.long	.LASF67
	.byte	0x7
	.byte	0x29
	.long	0x62
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x3d3
	.uleb128 0x12
	.string	"GKI"
	.byte	0x7
	.byte	0x2a
	.long	0x3d9
	.uleb128 0x13
	.byte	0x8
	.byte	0x8
	.byte	0x25
	.long	0x442
	.uleb128 0x14
	.string	"i32"
	.byte	0x8
	.byte	0x26
	.long	0x2bf
	.uleb128 0x14
	.string	"i64"
	.byte	0x8
	.byte	0x27
	.long	0x2ca
	.byte	0
	.uleb128 0x7
	.long	.LASF68
	.byte	0x10
	.byte	0x8
	.byte	0x23
	.long	0x467
	.uleb128 0x8
	.long	.LASF69
	.byte	0x8
	.byte	0x24
	.long	0x95
	.byte	0
	.uleb128 0xe
	.string	"off"
	.byte	0x8
	.byte	0x28
	.long	0x423
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.long	.LASF70
	.byte	0x8
	.byte	0x2a
	.long	0x442
	.uleb128 0x7
	.long	.LASF71
	.byte	0x90
	.byte	0x8
	.byte	0x31
	.long	0x57a
	.uleb128 0xe
	.string	"fp"
	.byte	0x8
	.byte	0x32
	.long	0x57a
	.byte	0
	.uleb128 0x8
	.long	.LASF55
	.byte	0x8
	.byte	0x33
	.long	0x2bf
	.byte	0x8
	.uleb128 0x8
	.long	.LASF72
	.byte	0x8
	.byte	0x34
	.long	0x2b4
	.byte	0xc
	.uleb128 0x8
	.long	.LASF73
	.byte	0x8
	.byte	0x35
	.long	0x2bf
	.byte	0x10
	.uleb128 0x8
	.long	.LASF74
	.byte	0x8
	.byte	0x36
	.long	0x2bf
	.byte	0x14
	.uleb128 0x8
	.long	.LASF75
	.byte	0x8
	.byte	0x37
	.long	0x2bf
	.byte	0x18
	.uleb128 0x8
	.long	.LASF76
	.byte	0x8
	.byte	0x38
	.long	0x2bf
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF77
	.byte	0x8
	.byte	0x39
	.long	0x2bf
	.byte	0x20
	.uleb128 0x8
	.long	.LASF78
	.byte	0x8
	.byte	0x3a
	.long	0x2bf
	.byte	0x24
	.uleb128 0x8
	.long	.LASF79
	.byte	0x8
	.byte	0x3b
	.long	0x2bf
	.byte	0x28
	.uleb128 0x8
	.long	.LASF80
	.byte	0x8
	.byte	0x3c
	.long	0x2bf
	.byte	0x2c
	.uleb128 0x8
	.long	.LASF81
	.byte	0x8
	.byte	0x3d
	.long	0x467
	.byte	0x30
	.uleb128 0x8
	.long	.LASF82
	.byte	0x8
	.byte	0x3e
	.long	0x467
	.byte	0x40
	.uleb128 0x8
	.long	.LASF83
	.byte	0x8
	.byte	0x3f
	.long	0x467
	.byte	0x50
	.uleb128 0x8
	.long	.LASF84
	.byte	0x8
	.byte	0x41
	.long	0x95
	.byte	0x60
	.uleb128 0x8
	.long	.LASF85
	.byte	0x8
	.byte	0x42
	.long	0x95
	.byte	0x61
	.uleb128 0x8
	.long	.LASF86
	.byte	0x8
	.byte	0x46
	.long	0x580
	.byte	0x68
	.uleb128 0x8
	.long	.LASF87
	.byte	0x8
	.byte	0x47
	.long	0x586
	.byte	0x70
	.uleb128 0x8
	.long	.LASF88
	.byte	0x8
	.byte	0x48
	.long	0x586
	.byte	0x78
	.uleb128 0xe
	.string	"bpl"
	.byte	0x8
	.byte	0x49
	.long	0x586
	.byte	0x80
	.uleb128 0xe
	.string	"rpl"
	.byte	0x8
	.byte	0x4a
	.long	0x586
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
	.long	.LASF89
	.byte	0x8
	.byte	0x4c
	.long	0x472
	.uleb128 0x6
	.byte	0x8
	.long	0x2a6
	.uleb128 0xd
	.long	.LASF90
	.value	0x168
	.byte	0x9
	.byte	0x70
	.long	0x7d9
	.uleb128 0x8
	.long	.LASF91
	.byte	0x9
	.byte	0x73
	.long	0x580
	.byte	0
	.uleb128 0x8
	.long	.LASF92
	.byte	0x9
	.byte	0x74
	.long	0x580
	.byte	0x8
	.uleb128 0xe
	.string	"wgt"
	.byte	0x9
	.byte	0x75
	.long	0x597
	.byte	0x10
	.uleb128 0x8
	.long	.LASF93
	.byte	0x9
	.byte	0x76
	.long	0x62
	.byte	0x18
	.uleb128 0x8
	.long	.LASF94
	.byte	0x9
	.byte	0x77
	.long	0x62
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF55
	.byte	0x9
	.byte	0x7b
	.long	0x62
	.byte	0x20
	.uleb128 0x8
	.long	.LASF61
	.byte	0x9
	.byte	0x7c
	.long	0x62
	.byte	0x24
	.uleb128 0x8
	.long	.LASF56
	.byte	0x9
	.byte	0x7d
	.long	0x8f
	.byte	0x28
	.uleb128 0x8
	.long	.LASF57
	.byte	0x9
	.byte	0x7e
	.long	0x8f
	.byte	0x30
	.uleb128 0xe
	.string	"acc"
	.byte	0x9
	.byte	0x7f
	.long	0x8f
	.byte	0x38
	.uleb128 0xe
	.string	"au"
	.byte	0x9
	.byte	0x80
	.long	0x8f
	.byte	0x40
	.uleb128 0x8
	.long	.LASF95
	.byte	0x9
	.byte	0x81
	.long	0x8f
	.byte	0x48
	.uleb128 0x8
	.long	.LASF96
	.byte	0x9
	.byte	0x82
	.long	0x8f
	.byte	0x50
	.uleb128 0xe
	.string	"rf"
	.byte	0x9
	.byte	0x83
	.long	0x8f
	.byte	0x58
	.uleb128 0x8
	.long	.LASF97
	.byte	0x9
	.byte	0x84
	.long	0x580
	.byte	0x60
	.uleb128 0x8
	.long	.LASF98
	.byte	0x9
	.byte	0x85
	.long	0x580
	.byte	0x68
	.uleb128 0xe
	.string	"ss"
	.byte	0x9
	.byte	0x86
	.long	0x580
	.byte	0x70
	.uleb128 0xe
	.string	"sa"
	.byte	0x9
	.byte	0x87
	.long	0x580
	.byte	0x78
	.uleb128 0x8
	.long	.LASF99
	.byte	0x9
	.byte	0x88
	.long	0x7d9
	.byte	0x80
	.uleb128 0x8
	.long	.LASF100
	.byte	0x9
	.byte	0x89
	.long	0x7e9
	.byte	0x98
	.uleb128 0x8
	.long	.LASF101
	.byte	0x9
	.byte	0x90
	.long	0x580
	.byte	0xb0
	.uleb128 0x8
	.long	.LASF102
	.byte	0x9
	.byte	0x91
	.long	0x62
	.byte	0xb8
	.uleb128 0x8
	.long	.LASF103
	.byte	0x9
	.byte	0x92
	.long	0x62
	.byte	0xbc
	.uleb128 0x8
	.long	.LASF104
	.byte	0x9
	.byte	0x94
	.long	0x580
	.byte	0xc0
	.uleb128 0xe
	.string	"gf"
	.byte	0x9
	.byte	0x95
	.long	0x580
	.byte	0xc8
	.uleb128 0xe
	.string	"ngf"
	.byte	0x9
	.byte	0x96
	.long	0x62
	.byte	0xd0
	.uleb128 0x8
	.long	.LASF105
	.byte	0x9
	.byte	0x97
	.long	0x62
	.byte	0xd4
	.uleb128 0x8
	.long	.LASF106
	.byte	0x9
	.byte	0x99
	.long	0x580
	.byte	0xd8
	.uleb128 0xe
	.string	"gs"
	.byte	0x9
	.byte	0x9a
	.long	0x7f9
	.byte	0xe0
	.uleb128 0x8
	.long	.LASF107
	.byte	0x9
	.byte	0x9b
	.long	0x7ff
	.byte	0xe8
	.uleb128 0xe
	.string	"ngs"
	.byte	0x9
	.byte	0x9c
	.long	0x62
	.byte	0xf0
	.uleb128 0x8
	.long	.LASF108
	.byte	0x9
	.byte	0x9e
	.long	0x580
	.byte	0xf8
	.uleb128 0xf
	.string	"gc"
	.byte	0x9
	.byte	0x9f
	.long	0x580
	.value	0x100
	.uleb128 0x10
	.long	.LASF109
	.byte	0x9
	.byte	0xa0
	.long	0x7ff
	.value	0x108
	.uleb128 0xf
	.string	"ngc"
	.byte	0x9
	.byte	0xa1
	.long	0x62
	.value	0x110
	.uleb128 0x10
	.long	.LASF110
	.byte	0x9
	.byte	0xa3
	.long	0x580
	.value	0x118
	.uleb128 0xf
	.string	"gr"
	.byte	0x9
	.byte	0xa4
	.long	0x7f9
	.value	0x120
	.uleb128 0x10
	.long	.LASF111
	.byte	0x9
	.byte	0xa5
	.long	0x7ff
	.value	0x128
	.uleb128 0xf
	.string	"ngr"
	.byte	0x9
	.byte	0xa6
	.long	0x62
	.value	0x130
	.uleb128 0x10
	.long	.LASF112
	.byte	0x9
	.byte	0xaa
	.long	0x7ff
	.value	0x138
	.uleb128 0x10
	.long	.LASF113
	.byte	0x9
	.byte	0xab
	.long	0x62
	.value	0x140
	.uleb128 0x10
	.long	.LASF114
	.byte	0x9
	.byte	0xac
	.long	0x62
	.value	0x144
	.uleb128 0x10
	.long	.LASF115
	.byte	0x9
	.byte	0xad
	.long	0x292
	.value	0x148
	.uleb128 0x10
	.long	.LASF116
	.byte	0x9
	.byte	0xae
	.long	0x292
	.value	0x150
	.uleb128 0x10
	.long	.LASF117
	.byte	0x9
	.byte	0xaf
	.long	0x292
	.value	0x158
	.uleb128 0x10
	.long	.LASF118
	.byte	0x9
	.byte	0xb0
	.long	0x62
	.value	0x160
	.byte	0
	.uleb128 0xb
	.long	0x2a6
	.long	0x7e9
	.uleb128 0xc
	.long	0x86
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.long	0x62
	.long	0x7f9
	.uleb128 0xc
	.long	0x86
	.byte	0x5
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x580
	.uleb128 0x6
	.byte	0x8
	.long	0x418
	.uleb128 0x12
	.string	"MSA"
	.byte	0x9
	.byte	0xb1
	.long	0x59d
	.uleb128 0x7
	.long	.LASF119
	.byte	0x40
	.byte	0x9
	.byte	0xba
	.long	0x887
	.uleb128 0xe
	.string	"f"
	.byte	0x9
	.byte	0xbb
	.long	0x57a
	.byte	0
	.uleb128 0x8
	.long	.LASF120
	.byte	0x9
	.byte	0xbc
	.long	0x8f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF121
	.byte	0x9
	.byte	0xbd
	.long	0x62
	.byte	0x10
	.uleb128 0xe
	.string	"buf"
	.byte	0x9
	.byte	0xbf
	.long	0x8f
	.byte	0x18
	.uleb128 0x8
	.long	.LASF122
	.byte	0x9
	.byte	0xc0
	.long	0x62
	.byte	0x20
	.uleb128 0xe
	.string	"ssi"
	.byte	0x9
	.byte	0xc2
	.long	0x887
	.byte	0x28
	.uleb128 0x8
	.long	.LASF123
	.byte	0x9
	.byte	0xc4
	.long	0x62
	.byte	0x30
	.uleb128 0x8
	.long	.LASF124
	.byte	0x9
	.byte	0xc5
	.long	0x62
	.byte	0x34
	.uleb128 0x8
	.long	.LASF125
	.byte	0x9
	.byte	0xc6
	.long	0x62
	.byte	0x38
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x58c
	.uleb128 0x2
	.long	.LASF126
	.byte	0x9
	.byte	0xc7
	.long	0x810
	.uleb128 0x7
	.long	.LASF127
	.byte	0xb0
	.byte	0x6
	.byte	0xc5
	.long	0x9ce
	.uleb128 0xe
	.string	"f"
	.byte	0x6
	.byte	0xc6
	.long	0x57a
	.byte	0
	.uleb128 0x8
	.long	.LASF120
	.byte	0x6
	.byte	0xc7
	.long	0x8f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF121
	.byte	0x6
	.byte	0xc8
	.long	0x62
	.byte	0x10
	.uleb128 0xe
	.string	"buf"
	.byte	0x6
	.byte	0xca
	.long	0x8f
	.byte	0x18
	.uleb128 0x8
	.long	.LASF122
	.byte	0x6
	.byte	0xcb
	.long	0x62
	.byte	0x20
	.uleb128 0x8
	.long	.LASF128
	.byte	0x6
	.byte	0xcd
	.long	0x62
	.byte	0x24
	.uleb128 0x8
	.long	.LASF129
	.byte	0x6
	.byte	0xce
	.long	0x467
	.byte	0x28
	.uleb128 0x8
	.long	.LASF130
	.byte	0x6
	.byte	0xcf
	.long	0x467
	.byte	0x38
	.uleb128 0x8
	.long	.LASF131
	.byte	0x6
	.byte	0xd0
	.long	0x467
	.byte	0x48
	.uleb128 0xe
	.string	"rpl"
	.byte	0x6
	.byte	0xd2
	.long	0x62
	.byte	0x58
	.uleb128 0x8
	.long	.LASF132
	.byte	0x6
	.byte	0xd3
	.long	0x62
	.byte	0x5c
	.uleb128 0x8
	.long	.LASF133
	.byte	0x6
	.byte	0xd4
	.long	0x62
	.byte	0x60
	.uleb128 0xe
	.string	"bpl"
	.byte	0x6
	.byte	0xd5
	.long	0x62
	.byte	0x64
	.uleb128 0x8
	.long	.LASF134
	.byte	0x6
	.byte	0xd6
	.long	0x62
	.byte	0x68
	.uleb128 0x8
	.long	.LASF135
	.byte	0x6
	.byte	0xd7
	.long	0x62
	.byte	0x6c
	.uleb128 0xe
	.string	"seq"
	.byte	0x6
	.byte	0xd9
	.long	0x8f
	.byte	0x70
	.uleb128 0x8
	.long	.LASF136
	.byte	0x6
	.byte	0xda
	.long	0x9ce
	.byte	0x78
	.uleb128 0xe
	.string	"sp"
	.byte	0x6
	.byte	0xdb
	.long	0x8f
	.byte	0x80
	.uleb128 0x8
	.long	.LASF137
	.byte	0x6
	.byte	0xdc
	.long	0x62
	.byte	0x88
	.uleb128 0x8
	.long	.LASF138
	.byte	0x6
	.byte	0xdd
	.long	0x62
	.byte	0x8c
	.uleb128 0x8
	.long	.LASF125
	.byte	0x6
	.byte	0xdf
	.long	0x62
	.byte	0x90
	.uleb128 0x8
	.long	.LASF123
	.byte	0x6
	.byte	0xe0
	.long	0x62
	.byte	0x94
	.uleb128 0x8
	.long	.LASF124
	.byte	0x6
	.byte	0xe1
	.long	0x62
	.byte	0x98
	.uleb128 0xe
	.string	"msa"
	.byte	0x6
	.byte	0xed
	.long	0x9d4
	.byte	0xa0
	.uleb128 0xe
	.string	"afp"
	.byte	0x6
	.byte	0xee
	.long	0x9da
	.byte	0xa8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x397
	.uleb128 0x6
	.byte	0x8
	.long	0x805
	.uleb128 0x6
	.byte	0x8
	.long	0x88d
	.uleb128 0x2
	.long	.LASF139
	.byte	0x6
	.byte	0xf0
	.long	0x898
	.uleb128 0x15
	.long	.LASF140
	.byte	0x10
	.byte	0x6
	.value	0x14a
	.long	0xa20
	.uleb128 0x9
	.long	.LASF56
	.byte	0x6
	.value	0x14b
	.long	0x8f
	.byte	0
	.uleb128 0x9
	.long	.LASF141
	.byte	0x6
	.value	0x14c
	.long	0x62
	.byte	0x8
	.uleb128 0x9
	.long	.LASF142
	.byte	0x6
	.value	0x14d
	.long	0x62
	.byte	0xc
	.byte	0
	.uleb128 0xd
	.long	.LASF143
	.value	0x1d0
	.byte	0xa
	.byte	0x65
	.long	0xc77
	.uleb128 0x8
	.long	.LASF56
	.byte	0xa
	.byte	0x71
	.long	0x8f
	.byte	0
	.uleb128 0xe
	.string	"acc"
	.byte	0xa
	.byte	0x72
	.long	0x8f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF57
	.byte	0xa
	.byte	0x73
	.long	0x8f
	.byte	0x10
	.uleb128 0xe
	.string	"rf"
	.byte	0xa
	.byte	0x74
	.long	0x8f
	.byte	0x18
	.uleb128 0xe
	.string	"cs"
	.byte	0xa
	.byte	0x75
	.long	0x8f
	.byte	0x20
	.uleb128 0xe
	.string	"ca"
	.byte	0xa
	.byte	0x76
	.long	0x8f
	.byte	0x28
	.uleb128 0x8
	.long	.LASF144
	.byte	0xa
	.byte	0x77
	.long	0x8f
	.byte	0x30
	.uleb128 0x8
	.long	.LASF94
	.byte	0xa
	.byte	0x78
	.long	0x62
	.byte	0x38
	.uleb128 0x8
	.long	.LASF145
	.byte	0xa
	.byte	0x79
	.long	0x8f
	.byte	0x40
	.uleb128 0xe
	.string	"map"
	.byte	0xa
	.byte	0x7a
	.long	0x292
	.byte	0x48
	.uleb128 0x8
	.long	.LASF146
	.byte	0xa
	.byte	0x7b
	.long	0x62
	.byte	0x50
	.uleb128 0x8
	.long	.LASF147
	.byte	0xa
	.byte	0x86
	.long	0x292
	.byte	0x58
	.uleb128 0x8
	.long	.LASF148
	.byte	0xa
	.byte	0x87
	.long	0x292
	.byte	0x60
	.uleb128 0x8
	.long	.LASF149
	.byte	0xa
	.byte	0x88
	.long	0x292
	.byte	0x68
	.uleb128 0xe
	.string	"ga1"
	.byte	0xa
	.byte	0x90
	.long	0x2a6
	.byte	0x70
	.uleb128 0xe
	.string	"ga2"
	.byte	0xa
	.byte	0x90
	.long	0x2a6
	.byte	0x74
	.uleb128 0xe
	.string	"tc1"
	.byte	0xa
	.byte	0x91
	.long	0x2a6
	.byte	0x78
	.uleb128 0xe
	.string	"tc2"
	.byte	0xa
	.byte	0x91
	.long	0x2a6
	.byte	0x7c
	.uleb128 0xe
	.string	"nc1"
	.byte	0xa
	.byte	0x92
	.long	0x2a6
	.byte	0x80
	.uleb128 0xe
	.string	"nc2"
	.byte	0xa
	.byte	0x92
	.long	0x2a6
	.byte	0x84
	.uleb128 0xe
	.string	"M"
	.byte	0xa
	.byte	0x9b
	.long	0x62
	.byte	0x88
	.uleb128 0xe
	.string	"t"
	.byte	0xa
	.byte	0x9c
	.long	0xc77
	.byte	0x90
	.uleb128 0xe
	.string	"mat"
	.byte	0xa
	.byte	0x9d
	.long	0xc77
	.byte	0x98
	.uleb128 0xe
	.string	"ins"
	.byte	0xa
	.byte	0x9e
	.long	0xc77
	.byte	0xa0
	.uleb128 0x8
	.long	.LASF150
	.byte	0xa
	.byte	0x9f
	.long	0x2a6
	.byte	0xa8
	.uleb128 0xe
	.string	"xt"
	.byte	0xa
	.byte	0xa8
	.long	0xc7d
	.byte	0xac
	.uleb128 0x8
	.long	.LASF151
	.byte	0xa
	.byte	0xa9
	.long	0x597
	.byte	0xd0
	.uleb128 0xe
	.string	"end"
	.byte	0xa
	.byte	0xaa
	.long	0x597
	.byte	0xd8
	.uleb128 0x8
	.long	.LASF152
	.byte	0xa
	.byte	0xae
	.long	0xc93
	.byte	0xe0
	.uleb128 0xf
	.string	"p1"
	.byte	0xa
	.byte	0xaf
	.long	0x2a6
	.value	0x130
	.uleb128 0xf
	.string	"tsc"
	.byte	0xa
	.byte	0xc5
	.long	0xca3
	.value	0x138
	.uleb128 0xf
	.string	"msc"
	.byte	0xa
	.byte	0xc6
	.long	0xca3
	.value	0x140
	.uleb128 0xf
	.string	"isc"
	.byte	0xa
	.byte	0xc7
	.long	0xca3
	.value	0x148
	.uleb128 0xf
	.string	"xsc"
	.byte	0xa
	.byte	0xc8
	.long	0xca9
	.value	0x150
	.uleb128 0xf
	.string	"bsc"
	.byte	0xa
	.byte	0xc9
	.long	0x292
	.value	0x170
	.uleb128 0xf
	.string	"esc"
	.byte	0xa
	.byte	0xca
	.long	0x292
	.value	0x178
	.uleb128 0x10
	.long	.LASF153
	.byte	0xa
	.byte	0xcb
	.long	0x292
	.value	0x180
	.uleb128 0x10
	.long	.LASF154
	.byte	0xa
	.byte	0xcb
	.long	0x292
	.value	0x188
	.uleb128 0x10
	.long	.LASF155
	.byte	0xa
	.byte	0xcb
	.long	0x292
	.value	0x190
	.uleb128 0x10
	.long	.LASF156
	.byte	0xa
	.byte	0xcb
	.long	0x292
	.value	0x198
	.uleb128 0x10
	.long	.LASF157
	.byte	0xa
	.byte	0xcb
	.long	0x292
	.value	0x1a0
	.uleb128 0x10
	.long	.LASF158
	.byte	0xa
	.byte	0xd6
	.long	0xca3
	.value	0x1a8
	.uleb128 0x10
	.long	.LASF159
	.byte	0xa
	.byte	0xd7
	.long	0xca3
	.value	0x1b0
	.uleb128 0x10
	.long	.LASF160
	.byte	0xa
	.byte	0xd8
	.long	0x62
	.value	0x1b8
	.uleb128 0x10
	.long	.LASF161
	.byte	0xa
	.byte	0xd9
	.long	0x62
	.value	0x1bc
	.uleb128 0xf
	.string	"mu"
	.byte	0xa
	.byte	0xde
	.long	0x2a6
	.value	0x1c0
	.uleb128 0x10
	.long	.LASF162
	.byte	0xa
	.byte	0xdf
	.long	0x2a6
	.value	0x1c4
	.uleb128 0x10
	.long	.LASF55
	.byte	0xa
	.byte	0xe1
	.long	0x62
	.value	0x1c8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x597
	.uleb128 0xb
	.long	0x2a6
	.long	0xc93
	.uleb128 0xc
	.long	0x86
	.byte	0x3
	.uleb128 0xc
	.long	0x86
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.long	0x2a6
	.long	0xca3
	.uleb128 0xc
	.long	0x86
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x292
	.uleb128 0xb
	.long	0x62
	.long	0xcbf
	.uleb128 0xc
	.long	0x86
	.byte	0x3
	.uleb128 0xc
	.long	0x86
	.byte	0x1
	.byte	0
	.uleb128 0x15
	.long	.LASF163
	.byte	0x50
	.byte	0xa
	.value	0x121
	.long	0xd69
	.uleb128 0x16
	.string	"xmx"
	.byte	0xa
	.value	0x122
	.long	0xca3
	.byte	0
	.uleb128 0x16
	.string	"mmx"
	.byte	0xa
	.value	0x123
	.long	0xca3
	.byte	0x8
	.uleb128 0x16
	.string	"imx"
	.byte	0xa
	.value	0x124
	.long	0xca3
	.byte	0x10
	.uleb128 0x16
	.string	"dmx"
	.byte	0xa
	.value	0x125
	.long	0xca3
	.byte	0x18
	.uleb128 0x9
	.long	.LASF164
	.byte	0xa
	.value	0x12b
	.long	0x8d
	.byte	0x20
	.uleb128 0x9
	.long	.LASF165
	.byte	0xa
	.value	0x12b
	.long	0x8d
	.byte	0x28
	.uleb128 0x9
	.long	.LASF166
	.byte	0xa
	.value	0x12b
	.long	0x8d
	.byte	0x30
	.uleb128 0x9
	.long	.LASF167
	.byte	0xa
	.value	0x12b
	.long	0x8d
	.byte	0x38
	.uleb128 0x9
	.long	.LASF168
	.byte	0xa
	.value	0x134
	.long	0x62
	.byte	0x40
	.uleb128 0x9
	.long	.LASF169
	.byte	0xa
	.value	0x135
	.long	0x62
	.byte	0x44
	.uleb128 0x9
	.long	.LASF170
	.byte	0xa
	.value	0x137
	.long	0x62
	.byte	0x48
	.uleb128 0x9
	.long	.LASF171
	.byte	0xa
	.value	0x138
	.long	0x62
	.byte	0x4c
	.byte	0
	.uleb128 0x15
	.long	.LASF172
	.byte	0x38
	.byte	0xa
	.value	0x14c
	.long	0xddd
	.uleb128 0x16
	.string	"f"
	.byte	0xa
	.value	0x14d
	.long	0x57a
	.byte	0
	.uleb128 0x16
	.string	"ssi"
	.byte	0xa
	.value	0x14e
	.long	0x887
	.byte	0x8
	.uleb128 0x9
	.long	.LASF173
	.byte	0xa
	.value	0x14f
	.long	0xe03
	.byte	0x10
	.uleb128 0x9
	.long	.LASF174
	.byte	0xa
	.value	0x150
	.long	0x62
	.byte	0x18
	.uleb128 0x9
	.long	.LASF175
	.byte	0xa
	.value	0x151
	.long	0x62
	.byte	0x1c
	.uleb128 0x9
	.long	.LASF176
	.byte	0xa
	.value	0x15a
	.long	0x62
	.byte	0x20
	.uleb128 0x9
	.long	.LASF69
	.byte	0xa
	.value	0x15b
	.long	0x62
	.byte	0x24
	.uleb128 0x9
	.long	.LASF177
	.byte	0xa
	.value	0x15c
	.long	0x467
	.byte	0x28
	.byte	0
	.uleb128 0x17
	.long	0x62
	.long	0xdf1
	.uleb128 0x18
	.long	0xdf1
	.uleb128 0x18
	.long	0xdf7
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xd69
	.uleb128 0x6
	.byte	0x8
	.long	0xdfd
	.uleb128 0x6
	.byte	0x8
	.long	0xa20
	.uleb128 0x6
	.byte	0x8
	.long	0xddd
	.uleb128 0x19
	.long	.LASF178
	.byte	0xa
	.value	0x15e
	.long	0xd69
	.uleb128 0x15
	.long	.LASF179
	.byte	0x20
	.byte	0xa
	.value	0x176
	.long	0xe57
	.uleb128 0x9
	.long	.LASF180
	.byte	0xa
	.value	0x177
	.long	0x62
	.byte	0
	.uleb128 0x9
	.long	.LASF181
	.byte	0xa
	.value	0x178
	.long	0x8f
	.byte	0x8
	.uleb128 0x9
	.long	.LASF182
	.byte	0xa
	.value	0x179
	.long	0x292
	.byte	0x10
	.uleb128 0x16
	.string	"pos"
	.byte	0xa
	.value	0x17a
	.long	0x292
	.byte	0x18
	.byte	0
	.uleb128 0x15
	.long	.LASF183
	.byte	0x40
	.byte	0xa
	.value	0x1a3
	.long	0xf01
	.uleb128 0x9
	.long	.LASF184
	.byte	0xa
	.value	0x1a4
	.long	0x292
	.byte	0
	.uleb128 0x16
	.string	"min"
	.byte	0xa
	.value	0x1a5
	.long	0x62
	.byte	0x8
	.uleb128 0x16
	.string	"max"
	.byte	0xa
	.value	0x1a6
	.long	0x62
	.byte	0xc
	.uleb128 0x9
	.long	.LASF185
	.byte	0xa
	.value	0x1a7
	.long	0x62
	.byte	0x10
	.uleb128 0x9
	.long	.LASF186
	.byte	0xa
	.value	0x1a8
	.long	0x62
	.byte	0x14
	.uleb128 0x9
	.long	.LASF187
	.byte	0xa
	.value	0x1a9
	.long	0x62
	.byte	0x18
	.uleb128 0x9
	.long	.LASF188
	.byte	0xa
	.value	0x1aa
	.long	0x62
	.byte	0x1c
	.uleb128 0x9
	.long	.LASF189
	.byte	0xa
	.value	0x1ac
	.long	0x597
	.byte	0x20
	.uleb128 0x9
	.long	.LASF190
	.byte	0xa
	.value	0x1ad
	.long	0x62
	.byte	0x28
	.uleb128 0x9
	.long	.LASF191
	.byte	0xa
	.value	0x1ae
	.long	0xf01
	.byte	0x2c
	.uleb128 0x9
	.long	.LASF192
	.byte	0xa
	.value	0x1af
	.long	0x2a6
	.byte	0x38
	.uleb128 0x9
	.long	.LASF193
	.byte	0xa
	.value	0x1b0
	.long	0x2a6
	.byte	0x3c
	.byte	0
	.uleb128 0xb
	.long	0x2a6
	.long	0xf11
	.uleb128 0xc
	.long	0x86
	.byte	0x2
	.byte	0
	.uleb128 0x15
	.long	.LASF194
	.byte	0x48
	.byte	0xa
	.value	0x1bf
	.long	0xfa1
	.uleb128 0x9
	.long	.LASF195
	.byte	0xa
	.value	0x1c0
	.long	0x8f
	.byte	0
	.uleb128 0x9
	.long	.LASF196
	.byte	0xa
	.value	0x1c1
	.long	0x8f
	.byte	0x8
	.uleb128 0x9
	.long	.LASF197
	.byte	0xa
	.value	0x1c2
	.long	0x8f
	.byte	0x10
	.uleb128 0x9
	.long	.LASF198
	.byte	0xa
	.value	0x1c3
	.long	0x8f
	.byte	0x18
	.uleb128 0x9
	.long	.LASF91
	.byte	0xa
	.value	0x1c4
	.long	0x8f
	.byte	0x20
	.uleb128 0x16
	.string	"len"
	.byte	0xa
	.value	0x1c5
	.long	0x62
	.byte	0x28
	.uleb128 0x9
	.long	.LASF199
	.byte	0xa
	.value	0x1c6
	.long	0x8f
	.byte	0x30
	.uleb128 0x9
	.long	.LASF200
	.byte	0xa
	.value	0x1c7
	.long	0x8f
	.byte	0x38
	.uleb128 0x9
	.long	.LASF201
	.byte	0xa
	.value	0x1c8
	.long	0x62
	.byte	0x40
	.uleb128 0x9
	.long	.LASF202
	.byte	0xa
	.value	0x1c9
	.long	0x62
	.byte	0x44
	.byte	0
	.uleb128 0x15
	.long	.LASF203
	.byte	0x68
	.byte	0xa
	.value	0x1d6
	.long	0x108c
	.uleb128 0x9
	.long	.LASF204
	.byte	0xa
	.value	0x1d7
	.long	0x2ad
	.byte	0
	.uleb128 0x9
	.long	.LASF205
	.byte	0xa
	.value	0x1d8
	.long	0x2a6
	.byte	0x8
	.uleb128 0x9
	.long	.LASF206
	.byte	0xa
	.value	0x1d9
	.long	0x2ad
	.byte	0x10
	.uleb128 0x9
	.long	.LASF207
	.byte	0xa
	.value	0x1da
	.long	0x2a6
	.byte	0x18
	.uleb128 0x9
	.long	.LASF208
	.byte	0xa
	.value	0x1db
	.long	0x2ad
	.byte	0x20
	.uleb128 0x9
	.long	.LASF56
	.byte	0xa
	.value	0x1dc
	.long	0x8f
	.byte	0x28
	.uleb128 0x16
	.string	"acc"
	.byte	0xa
	.value	0x1dd
	.long	0x8f
	.byte	0x30
	.uleb128 0x9
	.long	.LASF57
	.byte	0xa
	.value	0x1de
	.long	0x8f
	.byte	0x38
	.uleb128 0x9
	.long	.LASF201
	.byte	0xa
	.value	0x1df
	.long	0x62
	.byte	0x40
	.uleb128 0x9
	.long	.LASF202
	.byte	0xa
	.value	0x1e0
	.long	0x62
	.byte	0x44
	.uleb128 0x9
	.long	.LASF115
	.byte	0xa
	.value	0x1e1
	.long	0x62
	.byte	0x48
	.uleb128 0x9
	.long	.LASF209
	.byte	0xa
	.value	0x1e2
	.long	0x62
	.byte	0x4c
	.uleb128 0x9
	.long	.LASF210
	.byte	0xa
	.value	0x1e3
	.long	0x62
	.byte	0x50
	.uleb128 0x9
	.long	.LASF211
	.byte	0xa
	.value	0x1e4
	.long	0x62
	.byte	0x54
	.uleb128 0x9
	.long	.LASF212
	.byte	0xa
	.value	0x1e5
	.long	0x62
	.byte	0x58
	.uleb128 0x9
	.long	.LASF213
	.byte	0xa
	.value	0x1e6
	.long	0x62
	.byte	0x5c
	.uleb128 0x16
	.string	"ali"
	.byte	0xa
	.value	0x1e7
	.long	0x108c
	.byte	0x60
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xf11
	.uleb128 0x15
	.long	.LASF214
	.byte	0x20
	.byte	0xa
	.value	0x1f1
	.long	0x10e1
	.uleb128 0x16
	.string	"hit"
	.byte	0xa
	.value	0x1f2
	.long	0x10e1
	.byte	0
	.uleb128 0x9
	.long	.LASF215
	.byte	0xa
	.value	0x1f3
	.long	0x10e7
	.byte	0x8
	.uleb128 0x9
	.long	.LASF216
	.byte	0xa
	.value	0x1f4
	.long	0x62
	.byte	0x10
	.uleb128 0x16
	.string	"num"
	.byte	0xa
	.value	0x1f5
	.long	0x62
	.byte	0x14
	.uleb128 0x9
	.long	.LASF217
	.byte	0xa
	.value	0x1f6
	.long	0x62
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x10e7
	.uleb128 0x6
	.byte	0x8
	.long	0xfa1
	.uleb128 0x1a
	.byte	0x4
	.byte	0xa
	.value	0x20c
	.long	0x110f
	.uleb128 0x1b
	.long	.LASF218
	.sleb128 0
	.uleb128 0x1b
	.long	.LASF219
	.sleb128 1
	.uleb128 0x1b
	.long	.LASF220
	.sleb128 2
	.uleb128 0x1b
	.long	.LASF221
	.sleb128 3
	.byte	0
	.uleb128 0x15
	.long	.LASF222
	.byte	0x28
	.byte	0xa
	.value	0x206
	.long	0x1169
	.uleb128 0x9
	.long	.LASF223
	.byte	0xa
	.value	0x207
	.long	0x2a6
	.byte	0
	.uleb128 0x9
	.long	.LASF224
	.byte	0xa
	.value	0x208
	.long	0x2ad
	.byte	0x8
	.uleb128 0x9
	.long	.LASF225
	.byte	0xa
	.value	0x209
	.long	0x2a6
	.byte	0x10
	.uleb128 0x9
	.long	.LASF226
	.byte	0xa
	.value	0x20a
	.long	0x2ad
	.byte	0x18
	.uleb128 0x9
	.long	.LASF227
	.byte	0xa
	.value	0x20c
	.long	0x10ed
	.byte	0x20
	.uleb128 0x16
	.string	"Z"
	.byte	0xa
	.value	0x20d
	.long	0x62
	.byte	0x24
	.byte	0
	.uleb128 0x1c
	.long	.LASF272
	.byte	0x1
	.byte	0x9a
	.long	0x62
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x1424
	.uleb128 0x1d
	.long	.LASF228
	.byte	0x1
	.byte	0x9a
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -292
	.uleb128 0x1d
	.long	.LASF229
	.byte	0x1
	.byte	0x9a
	.long	0x580
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x1e
	.long	.LASF230
	.byte	0x1
	.byte	0x9c
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x1e
	.long	.LASF231
	.byte	0x1
	.byte	0x9d
	.long	0x1424
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x1e
	.long	.LASF232
	.byte	0x1
	.byte	0x9e
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x1e
	.long	.LASF233
	.byte	0x1
	.byte	0x9f
	.long	0x142a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x1e
	.long	.LASF125
	.byte	0x1
	.byte	0xa0
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -244
	.uleb128 0x1f
	.string	"i"
	.byte	0x1
	.byte	0xa1
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x1f
	.string	"hmm"
	.byte	0x1
	.byte	0xa2
	.long	0xdfd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x1e
	.long	.LASF184
	.byte	0x1
	.byte	0xa3
	.long	0x1430
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1f
	.string	"ali"
	.byte	0x1
	.byte	0xa4
	.long	0x108c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x1e
	.long	.LASF234
	.byte	0x1
	.byte	0xa5
	.long	0x1436
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1e
	.long	.LASF235
	.byte	0x1
	.byte	0xa6
	.long	0x1436
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1f
	.string	"sc"
	.byte	0x1
	.byte	0xa8
	.long	0x2a6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x1e
	.long	.LASF206
	.byte	0x1
	.byte	0xa9
	.long	0x2ad
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x1e
	.long	.LASF236
	.byte	0x1
	.byte	0xaa
	.long	0x2ad
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1e
	.long	.LASF208
	.byte	0x1
	.byte	0xab
	.long	0x2ad
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x1e
	.long	.LASF207
	.byte	0x1
	.byte	0xac
	.long	0x2a6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -284
	.uleb128 0x1e
	.long	.LASF201
	.byte	0x1
	.byte	0xad
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x1e
	.long	.LASF202
	.byte	0x1
	.byte	0xad
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -276
	.uleb128 0x1e
	.long	.LASF209
	.byte	0x1
	.byte	0xae
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x1e
	.long	.LASF210
	.byte	0x1
	.byte	0xae
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -268
	.uleb128 0x1e
	.long	.LASF56
	.byte	0x1
	.byte	0xaf
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x20
	.long	.LASF57
	.byte	0x1
	.byte	0xaf
	.long	0x8f
	.uleb128 0x1e
	.long	.LASF115
	.byte	0x1
	.byte	0xb0
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x1e
	.long	.LASF94
	.byte	0x1
	.byte	0xb1
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -260
	.uleb128 0x1f
	.string	"Z"
	.byte	0x1
	.byte	0xb2
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -204
	.uleb128 0x1e
	.long	.LASF212
	.byte	0x1
	.byte	0xb3
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x1e
	.long	.LASF213
	.byte	0x1
	.byte	0xb4
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -252
	.uleb128 0x1e
	.long	.LASF237
	.byte	0x1
	.byte	0xb5
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x1e
	.long	.LASF238
	.byte	0x1
	.byte	0xb6
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -188
	.uleb128 0x1e
	.long	.LASF239
	.byte	0x1
	.byte	0xb7
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -236
	.uleb128 0x1e
	.long	.LASF240
	.byte	0x1
	.byte	0xb9
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x1e
	.long	.LASF241
	.byte	0x1
	.byte	0xba
	.long	0x110f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1e
	.long	.LASF242
	.byte	0x1
	.byte	0xbc
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x1e
	.long	.LASF243
	.byte	0x1
	.byte	0xbd
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x1e
	.long	.LASF244
	.byte	0x1
	.byte	0xbe
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x1e
	.long	.LASF245
	.byte	0x1
	.byte	0xbf
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -228
	.uleb128 0x1e
	.long	.LASF246
	.byte	0x1
	.byte	0xc0
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x1e
	.long	.LASF247
	.byte	0x1
	.byte	0xc1
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -220
	.uleb128 0x1e
	.long	.LASF248
	.byte	0x1
	.byte	0xc2
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x1e
	.long	.LASF249
	.byte	0x1
	.byte	0xc3
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -212
	.uleb128 0x1e
	.long	.LASF250
	.byte	0x1
	.byte	0xc4
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x1e
	.long	.LASF251
	.byte	0x1
	.byte	0xc5
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x1e
	.long	.LASF252
	.byte	0x1
	.byte	0xc6
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xe09
	.uleb128 0x6
	.byte	0x8
	.long	0x9e0
	.uleb128 0x6
	.byte	0x8
	.long	0xe57
	.uleb128 0x6
	.byte	0x8
	.long	0x1092
	.uleb128 0x21
	.long	.LASF254
	.byte	0x1
	.value	0x256
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x1588
	.uleb128 0x22
	.string	"hmm"
	.byte	0x1
	.value	0x256
	.long	0xdfd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -472
	.uleb128 0x23
	.long	.LASF233
	.byte	0x1
	.value	0x256
	.long	0x142a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -480
	.uleb128 0x23
	.long	.LASF241
	.byte	0x1
	.value	0x256
	.long	0x1588
	.uleb128 0x3
	.byte	0x91
	.sleb128 -488
	.uleb128 0x23
	.long	.LASF246
	.byte	0x1
	.value	0x256
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -492
	.uleb128 0x23
	.long	.LASF245
	.byte	0x1
	.value	0x257
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -496
	.uleb128 0x23
	.long	.LASF247
	.byte	0x1
	.value	0x257
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -500
	.uleb128 0x23
	.long	.LASF184
	.byte	0x1
	.value	0x258
	.long	0x1430
	.uleb128 0x3
	.byte	0x91
	.sleb128 -512
	.uleb128 0x23
	.long	.LASF234
	.byte	0x1
	.value	0x259
	.long	0x1436
	.uleb128 0x3
	.byte	0x91
	.sleb128 -520
	.uleb128 0x23
	.long	.LASF235
	.byte	0x1
	.value	0x259
	.long	0x1436
	.uleb128 0x3
	.byte	0x91
	.sleb128 -528
	.uleb128 0x23
	.long	.LASF253
	.byte	0x1
	.value	0x259
	.long	0x292
	.uleb128 0x3
	.byte	0x91
	.sleb128 -536
	.uleb128 0x24
	.string	"mx"
	.byte	0x1
	.value	0x25b
	.long	0x158e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -432
	.uleb128 0x24
	.string	"tr"
	.byte	0x1
	.value	0x25c
	.long	0x1594
	.uleb128 0x3
	.byte	0x91
	.sleb128 -448
	.uleb128 0x24
	.string	"seq"
	.byte	0x1
	.value	0x25d
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -440
	.uleb128 0x24
	.string	"dsq"
	.byte	0x1
	.value	0x25e
	.long	0x8f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -424
	.uleb128 0x25
	.long	.LASF136
	.byte	0x1
	.value	0x25f
	.long	0x397
	.uleb128 0x3
	.byte	0x91
	.sleb128 -400
	.uleb128 0x24
	.string	"sc"
	.byte	0x1
	.value	0x260
	.long	0x2a6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -456
	.uleb128 0x25
	.long	.LASF206
	.byte	0x1
	.value	0x261
	.long	0x2ad
	.uleb128 0x3
	.byte	0x91
	.sleb128 -416
	.uleb128 0x25
	.long	.LASF236
	.byte	0x1
	.value	0x262
	.long	0x2ad
	.uleb128 0x3
	.byte	0x91
	.sleb128 -408
	.uleb128 0x25
	.long	.LASF94
	.byte	0x1
	.value	0x263
	.long	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -452
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x110f
	.uleb128 0x6
	.byte	0x8
	.long	0xcbf
	.uleb128 0x6
	.byte	0x8
	.long	0xe15
	.uleb128 0x21
	.long	.LASF255
	.byte	0x1
	.value	0x3a4
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x164f
	.uleb128 0x22
	.string	"hmm"
	.byte	0x1
	.value	0x3a4
	.long	0xdfd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.long	.LASF233
	.byte	0x1
	.value	0x3a4
	.long	0x142a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x23
	.long	.LASF241
	.byte	0x1
	.value	0x3a4
	.long	0x1588
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.long	.LASF246
	.byte	0x1
	.value	0x3a4
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x23
	.long	.LASF245
	.byte	0x1
	.value	0x3a5
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.long	.LASF247
	.byte	0x1
	.value	0x3a5
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x23
	.long	.LASF184
	.byte	0x1
	.value	0x3a5
	.long	0x1430
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x23
	.long	.LASF234
	.byte	0x1
	.value	0x3a6
	.long	0x1436
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x23
	.long	.LASF235
	.byte	0x1
	.value	0x3a6
	.long	0x1436
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x23
	.long	.LASF253
	.byte	0x1
	.value	0x3a6
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.byte	0
	.uleb128 0x21
	.long	.LASF256
	.byte	0x1
	.value	0x4bb
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x1713
	.uleb128 0x22
	.string	"hmm"
	.byte	0x1
	.value	0x4bb
	.long	0xdfd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.long	.LASF233
	.byte	0x1
	.value	0x4bb
	.long	0x142a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x23
	.long	.LASF241
	.byte	0x1
	.value	0x4bb
	.long	0x1588
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.long	.LASF246
	.byte	0x1
	.value	0x4bb
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x23
	.long	.LASF245
	.byte	0x1
	.value	0x4bc
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.long	.LASF247
	.byte	0x1
	.value	0x4bc
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x23
	.long	.LASF250
	.byte	0x1
	.value	0x4bc
	.long	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x23
	.long	.LASF184
	.byte	0x1
	.value	0x4bd
	.long	0x1430
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x23
	.long	.LASF234
	.byte	0x1
	.value	0x4be
	.long	0x1436
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x23
	.long	.LASF235
	.byte	0x1
	.value	0x4be
	.long	0x1436
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x23
	.long	.LASF253
	.byte	0x1
	.value	0x4be
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 32
	.byte	0
	.uleb128 0xb
	.long	0x95
	.long	0x1723
	.uleb128 0xc
	.long	0x86
	.byte	0x39
	.byte	0
	.uleb128 0x1e
	.long	.LASF257
	.byte	0x1
	.byte	0x2d
	.long	0x1713
	.uleb128 0x9
	.byte	0x3
	.quad	banner
	.uleb128 0xb
	.long	0x95
	.long	0x1749
	.uleb128 0x26
	.long	0x86
	.value	0x17d
	.byte	0
	.uleb128 0x1e
	.long	.LASF258
	.byte	0x1
	.byte	0x2f
	.long	0x1738
	.uleb128 0x9
	.byte	0x3
	.quad	usage
	.uleb128 0xb
	.long	0x95
	.long	0x176f
	.uleb128 0x26
	.long	0x86
	.value	0x2f6
	.byte	0
	.uleb128 0x1e
	.long	.LASF259
	.byte	0x1
	.byte	0x39
	.long	0x175e
	.uleb128 0x9
	.byte	0x3
	.quad	experts
	.uleb128 0xb
	.long	0x9eb
	.long	0x1794
	.uleb128 0xc
	.long	0x86
	.byte	0x10
	.byte	0
	.uleb128 0x1e
	.long	.LASF260
	.byte	0x1
	.byte	0x48
	.long	0x1784
	.uleb128 0x9
	.byte	0x3
	.quad	OPTIONS
	.uleb128 0x27
	.long	.LASF261
	.byte	0x4
	.byte	0xa9
	.long	0x266
	.uleb128 0xb
	.long	0x95
	.long	0x17c4
	.uleb128 0xc
	.long	0x86
	.byte	0x18
	.byte	0
	.uleb128 0x28
	.long	.LASF262
	.byte	0xb
	.byte	0x13
	.long	0x17b4
	.uleb128 0x9
	.byte	0x3
	.quad	Alphabet
	.uleb128 0x28
	.long	.LASF263
	.byte	0xb
	.byte	0x14
	.long	0x62
	.uleb128 0x9
	.byte	0x3
	.quad	Alphabet_type
	.uleb128 0x28
	.long	.LASF264
	.byte	0xb
	.byte	0x15
	.long	0x62
	.uleb128 0x9
	.byte	0x3
	.quad	Alphabet_size
	.uleb128 0x28
	.long	.LASF265
	.byte	0xb
	.byte	0x16
	.long	0x62
	.uleb128 0x9
	.byte	0x3
	.quad	Alphabet_iupac
	.uleb128 0xb
	.long	0x95
	.long	0x182e
	.uleb128 0xc
	.long	0x86
	.byte	0x17
	.uleb128 0xc
	.long	0x86
	.byte	0x13
	.byte	0
	.uleb128 0x28
	.long	.LASF266
	.byte	0xb
	.byte	0x17
	.long	0x1818
	.uleb128 0x9
	.byte	0x3
	.quad	Degenerate
	.uleb128 0xb
	.long	0x62
	.long	0x1853
	.uleb128 0xc
	.long	0x86
	.byte	0x17
	.byte	0
	.uleb128 0x28
	.long	.LASF267
	.byte	0xb
	.byte	0x18
	.long	0x1843
	.uleb128 0x9
	.byte	0x3
	.quad	DegenCount
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
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x4
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x1d
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
.LASF255:
	.string	"main_loop_pvm"
.LASF269:
	.string	"hmmsearch.c"
.LASF190:
	.string	"fit_type"
.LASF7:
	.string	"size_t"
.LASF10:
	.string	"sizetype"
.LASF58:
	.string	"start"
.LASF150:
	.string	"tbd1"
.LASF156:
	.string	"bsc_mem"
.LASF235:
	.string	"dhit"
.LASF24:
	.string	"_IO_save_end"
.LASF166:
	.string	"imx_mem"
.LASF260:
	.string	"OPTIONS"
.LASF198:
	.string	"mline"
.LASF173:
	.string	"parser"
.LASF84:
	.string	"imode"
.LASF17:
	.string	"_IO_write_base"
.LASF121:
	.string	"linenumber"
.LASF133:
	.string	"maxrpl"
.LASF33:
	.string	"_lock"
.LASF232:
	.string	"seqfile"
.LASF195:
	.string	"rfline"
.LASF259:
	.string	"experts"
.LASF61:
	.string	"type"
.LASF127:
	.string	"ReadSeqVars"
.LASF72:
	.string	"nfiles"
.LASF22:
	.string	"_IO_save_base"
.LASF134:
	.string	"lastbpl"
.LASF202:
	.string	"sqto"
.LASF26:
	.string	"_chain"
.LASF107:
	.string	"gs_idx"
.LASF180:
	.string	"tlen"
.LASF257:
	.string	"banner"
.LASF30:
	.string	"_cur_column"
.LASF63:
	.string	"gki_elem"
.LASF270:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/456.hmmer/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF118:
	.string	"lastidx"
.LASF237:
	.string	"namewidth"
.LASF142:
	.string	"argtype"
.LASF183:
	.string	"histogram_s"
.LASF6:
	.string	"long int"
.LASF74:
	.string	"nsecondary"
.LASF194:
	.string	"fancyali_s"
.LASF43:
	.string	"_IO_marker"
.LASF272:
	.string	"main"
.LASF94:
	.string	"nseq"
.LASF164:
	.string	"xmx_mem"
.LASF157:
	.string	"esc_mem"
.LASF93:
	.string	"alen"
.LASF4:
	.string	"signed char"
.LASF42:
	.string	"_IO_FILE"
.LASF196:
	.string	"csline"
.LASF86:
	.string	"filename"
.LASF182:
	.string	"nodeidx"
.LASF106:
	.string	"gs_tag"
.LASF136:
	.string	"sqinfo"
.LASF1:
	.string	"unsigned char"
.LASF139:
	.string	"SQFILE"
.LASF104:
	.string	"gf_tag"
.LASF264:
	.string	"Alphabet_size"
.LASF214:
	.string	"tophit_s"
.LASF245:
	.string	"do_null2"
.LASF205:
	.string	"score"
.LASF163:
	.string	"dpmatrix_s"
.LASF153:
	.string	"tsc_mem"
.LASF64:
	.string	"table"
.LASF60:
	.string	"olen"
.LASF209:
	.string	"hmmfrom"
.LASF111:
	.string	"gr_idx"
.LASF11:
	.string	"char"
.LASF197:
	.string	"model"
.LASF162:
	.string	"lambda"
.LASF124:
	.string	"do_stdin"
.LASF70:
	.string	"SSIOFFSET"
.LASF271:
	.string	"_IO_lock_t"
.LASF115:
	.string	"sqlen"
.LASF105:
	.string	"alloc_ngf"
.LASF100:
	.string	"cutoff_is_set"
.LASF116:
	.string	"sslen"
.LASF215:
	.string	"unsrt"
.LASF55:
	.string	"flags"
.LASF98:
	.string	"sqdesc"
.LASF204:
	.string	"sortkey"
.LASF14:
	.string	"_IO_read_ptr"
.LASF222:
	.string	"threshold_s"
.LASF165:
	.string	"mmx_mem"
.LASF256:
	.string	"main_loop_threaded"
.LASF46:
	.string	"_pos"
.LASF206:
	.string	"pvalue"
.LASF89:
	.string	"SSIFILE"
.LASF132:
	.string	"lastrpl"
.LASF25:
	.string	"_markers"
.LASF147:
	.string	"tpri"
.LASF210:
	.string	"hmmto"
.LASF181:
	.string	"statetype"
.LASF92:
	.string	"sqname"
.LASF73:
	.string	"nprimary"
.LASF97:
	.string	"sqacc"
.LASF246:
	.string	"do_forward"
.LASF110:
	.string	"gr_tag"
.LASF34:
	.string	"_offset"
.LASF112:
	.string	"index"
.LASF244:
	.string	"optind"
.LASF0:
	.string	"long unsigned int"
.LASF125:
	.string	"format"
.LASF28:
	.string	"_flags2"
.LASF191:
	.string	"param"
.LASF200:
	.string	"target"
.LASF65:
	.string	"primelevel"
.LASF16:
	.string	"_IO_read_base"
.LASF66:
	.string	"nhash"
.LASF41:
	.string	"_unused2"
.LASF239:
	.string	"nreported"
.LASF236:
	.string	"evalue"
.LASF228:
	.string	"argc"
.LASF29:
	.string	"_old_offset"
.LASF229:
	.string	"argv"
.LASF213:
	.string	"ndom"
.LASF250:
	.string	"num_threads"
.LASF267:
	.string	"DegenCount"
.LASF119:
	.string	"msafile_struct"
.LASF51:
	.string	"sqd_uint16"
.LASF148:
	.string	"mpri"
.LASF117:
	.string	"salen"
.LASF176:
	.string	"is_seekable"
.LASF47:
	.string	"long long int"
.LASF80:
	.string	"srecsize"
.LASF54:
	.string	"seqinfo_s"
.LASF171:
	.string	"padM"
.LASF170:
	.string	"padN"
.LASF120:
	.string	"fname"
.LASF101:
	.string	"comment"
.LASF262:
	.string	"Alphabet"
.LASF50:
	.string	"double"
.LASF19:
	.string	"_IO_write_end"
.LASF218:
	.string	"CUT_NONE"
.LASF143:
	.string	"plan7_s"
.LASF88:
	.string	"fileflags"
.LASF193:
	.string	"chip"
.LASF238:
	.string	"descwidth"
.LASF167:
	.string	"dmx_mem"
.LASF49:
	.string	"float"
.LASF52:
	.string	"sqd_uint32"
.LASF59:
	.string	"stop"
.LASF95:
	.string	"ss_cons"
.LASF103:
	.string	"alloc_ncomment"
.LASF234:
	.string	"ghit"
.LASF216:
	.string	"alloc"
.LASF82:
	.string	"poffset"
.LASF20:
	.string	"_IO_buf_base"
.LASF226:
	.string	"domE"
.LASF248:
	.string	"do_pvm"
.LASF3:
	.string	"unsigned int"
.LASF113:
	.string	"nseqalloc"
.LASF62:
	.string	"SQINFO"
.LASF225:
	.string	"domT"
.LASF122:
	.string	"buflen"
.LASF219:
	.string	"CUT_GA"
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
.LASF78:
	.string	"frecsize"
.LASF172:
	.string	"hmmfile_s"
.LASF45:
	.string	"_sbuf"
.LASF68:
	.string	"ssioffset_s"
.LASF249:
	.string	"be_backwards"
.LASF79:
	.string	"precsize"
.LASF109:
	.string	"gc_idx"
.LASF102:
	.string	"ncomment"
.LASF140:
	.string	"opt_s"
.LASF188:
	.string	"total"
.LASF13:
	.string	"_flags"
.LASF177:
	.string	"offset"
.LASF91:
	.string	"aseq"
.LASF77:
	.string	"slen"
.LASF40:
	.string	"_mode"
.LASF145:
	.string	"ctime"
.LASF268:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF242:
	.string	"optname"
.LASF212:
	.string	"domidx"
.LASF199:
	.string	"query"
.LASF263:
	.string	"Alphabet_type"
.LASF253:
	.string	"ret_nseq"
.LASF169:
	.string	"maxM"
.LASF168:
	.string	"maxN"
.LASF53:
	.string	"sqd_uint64"
.LASF233:
	.string	"sqfp"
.LASF12:
	.string	"FILE"
.LASF151:
	.string	"begin"
.LASF146:
	.string	"checksum"
.LASF251:
	.string	"threads_support"
.LASF211:
	.string	"hmmlen"
.LASF137:
	.string	"seqlen"
.LASF48:
	.string	"long long unsigned int"
.LASF8:
	.string	"__off_t"
.LASF108:
	.string	"gc_tag"
.LASF83:
	.string	"soffset"
.LASF155:
	.string	"isc_mem"
.LASF178:
	.string	"HMMFILE"
.LASF220:
	.string	"CUT_NC"
.LASF128:
	.string	"ssimode"
.LASF75:
	.string	"flen"
.LASF230:
	.string	"hmmfile"
.LASF258:
	.string	"usage"
.LASF81:
	.string	"foffset"
.LASF90:
	.string	"msa_struct"
.LASF23:
	.string	"_IO_backup_base"
.LASF32:
	.string	"_shortbuf"
.LASF187:
	.string	"lumpsize"
.LASF57:
	.string	"desc"
.LASF192:
	.string	"chisq"
.LASF254:
	.string	"main_loop_serial"
.LASF203:
	.string	"hit_s"
.LASF123:
	.string	"do_gzip"
.LASF44:
	.string	"_next"
.LASF9:
	.string	"__off64_t"
.LASF76:
	.string	"plen"
.LASF141:
	.string	"single"
.LASF179:
	.string	"p7trace_s"
.LASF227:
	.string	"autocut"
.LASF224:
	.string	"globE"
.LASF21:
	.string	"_IO_buf_end"
.LASF223:
	.string	"globT"
.LASF207:
	.string	"mothersc"
.LASF184:
	.string	"histogram"
.LASF56:
	.string	"name"
.LASF152:
	.string	"null"
.LASF185:
	.string	"highscore"
.LASF201:
	.string	"sqfrom"
.LASF114:
	.string	"nseqlump"
.LASF5:
	.string	"short int"
.LASF69:
	.string	"mode"
.LASF217:
	.string	"lump"
.LASF131:
	.string	"d_off"
.LASF85:
	.string	"smode"
.LASF31:
	.string	"_vtable_offset"
.LASF96:
	.string	"sa_cons"
.LASF208:
	.string	"motherp"
.LASF135:
	.string	"maxbpl"
.LASF189:
	.string	"expect"
.LASF87:
	.string	"fileformat"
.LASF266:
	.string	"Degenerate"
.LASF231:
	.string	"hmmfp"
.LASF15:
	.string	"_IO_read_end"
.LASF99:
	.string	"cutoff"
.LASF126:
	.string	"MSAFILE"
.LASF154:
	.string	"msc_mem"
.LASF27:
	.string	"_fileno"
.LASF221:
	.string	"CUT_TC"
.LASF247:
	.string	"do_xnu"
.LASF138:
	.string	"maxseq"
.LASF149:
	.string	"ipri"
.LASF243:
	.string	"optarg"
.LASF129:
	.string	"ssioffset"
.LASF2:
	.string	"short unsigned int"
.LASF261:
	.string	"stdout"
.LASF175:
	.string	"byteswap"
.LASF240:
	.string	"Alimit"
.LASF265:
	.string	"Alphabet_iupac"
.LASF18:
	.string	"_IO_write_ptr"
.LASF241:
	.string	"thresh"
.LASF160:
	.string	"dna2"
.LASF161:
	.string	"dna4"
.LASF71:
	.string	"ssifile_s"
.LASF67:
	.string	"nkeys"
.LASF174:
	.string	"is_binary"
.LASF144:
	.string	"comlog"
.LASF159:
	.string	"dnai"
.LASF252:
	.string	"pvm_support"
.LASF186:
	.string	"lowscore"
.LASF158:
	.string	"dnam"
.LASF130:
	.string	"r_off"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
