	.file	"neval.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 neval.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.align 32
	.type	evalRoutines, @object
	.size	evalRoutines, 56
evalRoutines:
	.quad	ErrorIt
	.quad	Pawn
	.quad	Knight
	.quad	King
	.quad	Rook
	.quad	Queen
	.quad	Bishop
	.comm	maxposdiff,4,4
	.comm	distance,82944,32
	.comm	rookdistance,82944,32
	.comm	king_locs,8,4
	.comm	wmat,4,4
	.comm	bmat,4,4
	.align 32
	.type	sbishop, @object
	.size	sbishop, 576
sbishop:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-2
	.long	-2
	.long	-2
	.long	-2
	.long	-2
	.long	-2
	.long	-2
	.long	-2
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-2
	.long	8
	.long	5
	.long	5
	.long	5
	.long	5
	.long	8
	.long	-2
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-2
	.long	3
	.long	3
	.long	5
	.long	5
	.long	3
	.long	3
	.long	-2
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-2
	.long	2
	.long	5
	.long	4
	.long	4
	.long	5
	.long	2
	.long	-2
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-2
	.long	2
	.long	5
	.long	4
	.long	4
	.long	5
	.long	2
	.long	-2
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-2
	.long	3
	.long	3
	.long	5
	.long	5
	.long	3
	.long	3
	.long	-2
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-2
	.long	8
	.long	5
	.long	5
	.long	5
	.long	5
	.long	8
	.long	-2
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-2
	.long	-2
	.long	-2
	.long	-2
	.long	-2
	.long	-2
	.long	-2
	.long	-2
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.align 32
	.type	sknight, @object
	.size	sknight, 576
sknight:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-20
	.long	-10
	.long	-10
	.long	-10
	.long	-10
	.long	-10
	.long	-10
	.long	-20
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-10
	.long	0
	.long	0
	.long	3
	.long	3
	.long	0
	.long	0
	.long	-10
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-10
	.long	0
	.long	5
	.long	5
	.long	5
	.long	5
	.long	0
	.long	-10
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-10
	.long	0
	.long	5
	.long	10
	.long	10
	.long	5
	.long	0
	.long	-10
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-10
	.long	0
	.long	5
	.long	10
	.long	10
	.long	5
	.long	0
	.long	-10
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-10
	.long	0
	.long	5
	.long	5
	.long	5
	.long	5
	.long	0
	.long	-10
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-10
	.long	0
	.long	0
	.long	3
	.long	3
	.long	0
	.long	0
	.long	-10
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-20
	.long	-10
	.long	-10
	.long	-10
	.long	-10
	.long	-10
	.long	-10
	.long	-20
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.align 32
	.type	swhite_pawn, @object
	.size	swhite_pawn, 576
swhite_pawn:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	2
	.long	3
	.long	10
	.long	10
	.long	3
	.long	2
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	2
	.long	4
	.long	6
	.long	12
	.long	12
	.long	6
	.long	4
	.long	2
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	6
	.long	9
	.long	14
	.long	14
	.long	9
	.long	6
	.long	3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	10
	.long	12
	.long	14
	.long	16
	.long	16
	.long	14
	.long	12
	.long	10
	.long	0
	.long	0
	.long	0
	.long	0
	.long	20
	.long	22
	.long	24
	.long	26
	.long	26
	.long	24
	.long	22
	.long	20
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.align 32
	.type	sblack_pawn, @object
	.size	sblack_pawn, 576
sblack_pawn:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	20
	.long	22
	.long	24
	.long	26
	.long	26
	.long	24
	.long	22
	.long	20
	.long	0
	.long	0
	.long	0
	.long	0
	.long	10
	.long	12
	.long	14
	.long	16
	.long	16
	.long	14
	.long	12
	.long	10
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	6
	.long	9
	.long	14
	.long	14
	.long	9
	.long	6
	.long	3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	2
	.long	4
	.long	6
	.long	12
	.long	12
	.long	6
	.long	4
	.long	2
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	2
	.long	3
	.long	10
	.long	10
	.long	3
	.long	2
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.align 32
	.type	swhite_king, @object
	.size	swhite_king, 576
swhite_king:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	2
	.long	14
	.long	0
	.long	0
	.long	0
	.long	9
	.long	14
	.long	2
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-3
	.long	-5
	.long	-6
	.long	-6
	.long	-6
	.long	-6
	.long	-5
	.long	-3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-5
	.long	-5
	.long	-8
	.long	-8
	.long	-8
	.long	-8
	.long	-5
	.long	-5
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-8
	.long	-8
	.long	-13
	.long	-13
	.long	-13
	.long	-13
	.long	-8
	.long	-8
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-13
	.long	-13
	.long	-21
	.long	-21
	.long	-21
	.long	-21
	.long	-13
	.long	-13
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-21
	.long	-21
	.long	-34
	.long	-34
	.long	-34
	.long	-34
	.long	-21
	.long	-21
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-34
	.long	-34
	.long	-55
	.long	-55
	.long	-55
	.long	-55
	.long	-34
	.long	-34
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-55
	.long	-55
	.long	-89
	.long	-89
	.long	-89
	.long	-89
	.long	-55
	.long	-55
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.align 32
	.type	sblack_king, @object
	.size	sblack_king, 576
sblack_king:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-55
	.long	-55
	.long	-89
	.long	-89
	.long	-89
	.long	-89
	.long	-55
	.long	-55
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-34
	.long	-34
	.long	-55
	.long	-55
	.long	-55
	.long	-55
	.long	-34
	.long	-34
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-21
	.long	-21
	.long	-34
	.long	-34
	.long	-34
	.long	-34
	.long	-21
	.long	-21
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-13
	.long	-13
	.long	-21
	.long	-21
	.long	-21
	.long	-21
	.long	-13
	.long	-13
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-8
	.long	-8
	.long	-13
	.long	-13
	.long	-13
	.long	-13
	.long	-8
	.long	-8
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-5
	.long	-5
	.long	-8
	.long	-8
	.long	-8
	.long	-8
	.long	-5
	.long	-5
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-3
	.long	-5
	.long	-6
	.long	-6
	.long	-6
	.long	-6
	.long	-5
	.long	-3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	2
	.long	14
	.long	0
	.long	0
	.long	0
	.long	9
	.long	14
	.long	2
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.align 32
	.type	send_king, @object
	.size	send_king, 576
send_king:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-5
	.long	-3
	.long	-1
	.long	0
	.long	0
	.long	-1
	.long	-3
	.long	-5
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-3
	.long	10
	.long	10
	.long	10
	.long	10
	.long	10
	.long	10
	.long	-3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-1
	.long	10
	.long	25
	.long	25
	.long	25
	.long	25
	.long	10
	.long	-1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	10
	.long	25
	.long	50
	.long	50
	.long	25
	.long	10
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	10
	.long	25
	.long	50
	.long	50
	.long	25
	.long	10
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-1
	.long	10
	.long	25
	.long	25
	.long	25
	.long	25
	.long	10
	.long	-1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-3
	.long	10
	.long	10
	.long	10
	.long	10
	.long	10
	.long	10
	.long	-3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-5
	.long	-3
	.long	-1
	.long	0
	.long	0
	.long	-1
	.long	-3
	.long	-5
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.section	.rodata
	.align 32
	.type	srev_rank, @object
	.size	srev_rank, 36
srev_rank:
	.long	0
	.long	8
	.long	7
	.long	6
	.long	5
	.long	4
	.long	3
	.long	2
	.long	1
	.globl	std_p_tropism
	.align 32
	.type	std_p_tropism, @object
	.size	std_p_tropism, 32
std_p_tropism:
	.long	9999
	.long	15
	.long	10
	.long	7
	.long	2
	.long	0
	.long	0
	.long	0
	.globl	std_own_p_tropism
	.align 32
	.type	std_own_p_tropism, @object
	.size	std_own_p_tropism, 32
std_own_p_tropism:
	.long	9999
	.long	30
	.long	10
	.long	2
	.long	0
	.long	0
	.long	0
	.long	0
	.globl	std_r_tropism
	.align 32
	.type	std_r_tropism, @object
	.size	std_r_tropism, 64
std_r_tropism:
	.long	9999
	.long	0
	.long	15
	.long	5
	.long	2
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.globl	std_n_tropism
	.align 32
	.type	std_n_tropism, @object
	.size	std_n_tropism, 32
std_n_tropism:
	.long	9999
	.long	14
	.long	9
	.long	6
	.long	1
	.long	0
	.long	0
	.long	0
	.globl	std_q_tropism
	.align 32
	.type	std_q_tropism, @object
	.size	std_q_tropism, 32
std_q_tropism:
	.long	9999
	.long	200
	.long	50
	.long	15
	.long	3
	.long	2
	.long	1
	.long	0
	.globl	std_b_tropism
	.align 32
	.type	std_b_tropism, @object
	.size	std_b_tropism, 32
std_b_tropism:
	.long	9999
	.long	12
	.long	7
	.long	5
	.long	0
	.long	0
	.long	0
	.long	0
	.text
	.globl	check_phase
	.type	check_phase, @function
check_phase:
.LFB2:
	.file 1 "neval.c"
	.loc 1 169 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 170 0
	movl	$0, -16(%rbp)	#, xnum_pieces
	.loc 1 173 0
	movl	$1, -12(%rbp)	#, j
	movl	$1, -8(%rbp)	#, a
	jmp	.L2	#
.L5:
	.loc 1 175 0
	movl	-12(%rbp), %eax	# j, tmp69
	cltq
	movl	pieces(,%rax,4), %eax	# pieces, tmp70
	movl	%eax, -4(%rbp)	# tmp70, i
	.loc 1 177 0
	cmpl	$0, -4(%rbp)	#, i
	jne	.L3	#,
	.loc 1 178 0
	jmp	.L4	#
.L3:
	.loc 1 180 0
	addl	$1, -8(%rbp)	#, a
	.loc 1 182 0
	movl	-4(%rbp), %eax	# i, tmp72
	cltq
	movl	board(,%rax,4), %eax	# board, D.5286
	cmpl	$1, %eax	#, D.5286
	je	.L4	#,
	.loc 1 182 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# i, tmp74
	cltq
	movl	board(,%rax,4), %eax	# board, D.5286
	cmpl	$2, %eax	#, D.5286
	je	.L4	#,
	.loc 1 183 0 is_stmt 1 discriminator 1
	movl	-4(%rbp), %eax	# i, tmp76
	cltq
	movl	board(,%rax,4), %eax	# board, D.5286
	.loc 1 182 0 discriminator 1
	cmpl	$13, %eax	#, D.5286
	je	.L4	#,
	.loc 1 183 0
	movl	-4(%rbp), %eax	# i, tmp78
	cltq
	movl	board(,%rax,4), %eax	# board, D.5286
	testl	%eax, %eax	# D.5286
	je	.L4	#,
	.loc 1 185 0
	addl	$1, -16(%rbp)	#, xnum_pieces
.L4:
	.loc 1 173 0
	addl	$1, -12(%rbp)	#, j
.L2:
	.loc 1 173 0 is_stmt 0 discriminator 1
	movl	piece_count(%rip), %eax	# piece_count, piece_count.0
	cmpl	%eax, -8(%rbp)	# piece_count.0, a
	jle	.L5	#,
	.loc 1 188 0 is_stmt 1
	cmpl	$11, -16(%rbp)	#, xnum_pieces
	jle	.L6	#,
	.loc 1 190 0
	movl	white_castled(%rip), %eax	# white_castled, white_castled.1
	testl	%eax, %eax	# white_castled.1
	je	.L7	#,
	.loc 1 190 0 is_stmt 0 discriminator 1
	movl	black_castled(%rip), %eax	# black_castled, black_castled.2
	testl	%eax, %eax	# black_castled.2
	jne	.L6	#,
.L7:
	.loc 1 192 0 is_stmt 1
	movl	board+120(%rip), %eax	# board, D.5286
	cmpl	$5, %eax	#, D.5286
	je	.L8	#,
	.loc 1 192 0 is_stmt 0 discriminator 1
	movl	board+456(%rip), %eax	# board, D.5286
	cmpl	$6, %eax	#, D.5286
	jne	.L6	#,
.L8:
	.loc 1 194 0 is_stmt 1
	movl	$0, phase(%rip)	#, phase
	jmp	.L1	#
.L6:
	.loc 1 196 0
	cmpl	$6, -16(%rbp)	#, xnum_pieces
	jg	.L10	#,
	.loc 1 198 0
	movl	$2, phase(%rip)	#, phase
	jmp	.L1	#
.L10:
	.loc 1 201 0
	movl	$1, phase(%rip)	#, phase
.L1:
	.loc 1 203 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	check_phase, .-check_phase
	.type	bishop_mobility, @function
bishop_mobility:
.LFB3:
	.loc 1 206 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movl	%edi, -28(%rbp)	# square, square
	.loc 1 208 0
	movl	$0, %r12d	#, m
	.loc 1 212 0
	movl	$0, %ebx	#, diridx
	jmp	.L12	#
.L15:
	.loc 1 214 0
	movslq	%ebx, %rax	# diridx, tmp67
	movl	dir.3936(,%rax,4), %edx	# dir, D.5287
	movl	-28(%rbp), %eax	# square, tmp68
	leal	(%rdx,%rax), %r13d	#, l
	jmp	.L13	#
.L14:
	.loc 1 215 0 discriminator 2
	addl	$1, %r12d	#, m
	.loc 1 214 0 discriminator 2
	movslq	%ebx, %rax	# diridx, tmp69
	movl	dir.3936(,%rax,4), %eax	# dir, D.5287
	addl	%eax, %r13d	# D.5287, l
.L13:
	.loc 1 214 0 is_stmt 0 discriminator 1
	movslq	%r13d, %rax	# l, tmp70
	movl	board(,%rax,4), %eax	# board, D.5287
	cmpl	$13, %eax	#, D.5287
	je	.L14	#,
	.loc 1 212 0 is_stmt 1
	addl	$1, %ebx	#, diridx
.L12:
	.loc 1 212 0 is_stmt 0 discriminator 1
	cmpl	$3, %ebx	#, diridx
	jle	.L15	#,
	.loc 1 217 0 is_stmt 1
	movl	%r12d, %eax	# m, D.5287
	.loc 1 218 0
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	bishop_mobility, .-bishop_mobility
	.type	rook_mobility, @function
rook_mobility:
.LFB4:
	.loc 1 221 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movl	%edi, -28(%rbp)	# square, square
	.loc 1 223 0
	movl	$0, %r12d	#, m
	.loc 1 227 0
	movl	$0, %ebx	#, diridx
	jmp	.L18	#
.L21:
	.loc 1 229 0
	movslq	%ebx, %rax	# diridx, tmp67
	movl	dir.3949(,%rax,4), %edx	# dir, D.5288
	movl	-28(%rbp), %eax	# square, tmp68
	leal	(%rdx,%rax), %r13d	#, l
	jmp	.L19	#
.L20:
	.loc 1 230 0 discriminator 2
	addl	$1, %r12d	#, m
	.loc 1 229 0 discriminator 2
	movslq	%ebx, %rax	# diridx, tmp69
	movl	dir.3949(,%rax,4), %eax	# dir, D.5288
	addl	%eax, %r13d	# D.5288, l
.L19:
	.loc 1 229 0 is_stmt 0 discriminator 1
	movslq	%r13d, %rax	# l, tmp70
	movl	board(,%rax,4), %eax	# board, D.5288
	cmpl	$13, %eax	#, D.5288
	je	.L20	#,
	.loc 1 227 0 is_stmt 1
	addl	$1, %ebx	#, diridx
.L18:
	.loc 1 227 0 is_stmt 0 discriminator 1
	cmpl	$3, %ebx	#, diridx
	jle	.L21	#,
	.loc 1 232 0 is_stmt 1
	movl	%r12d, %eax	# m, D.5288
	.loc 1 233 0
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	rook_mobility, .-rook_mobility
	.globl	King
	.type	King, @function
King:
.LFB5:
	.loc 1 235 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)	# sq, sq
	movl	%esi, -24(%rbp)	# c, c
	.loc 1 236 0
	movl	$0, -4(%rbp)	#, s
	.loc 1 238 0
	movl	-20(%rbp), %eax	# sq, tmp80
	cltq
	movl	Xfile(,%rax,4), %eax	# Xfile, D.5289
	cmpl	$5, %eax	#, D.5289
	jle	.L24	#,
	.loc 1 239 0
	movl	-20(%rbp), %eax	# sq, tmp81
	subl	$1, %eax	#, D.5289
	cltq
	movl	board(,%rax,4), %eax	# board, D.5289
	addl	$1, %eax	#, D.5289
	sarl	%eax	# D.5289
	cmpl	$4, %eax	#, D.5289
	jne	.L24	#,
	.loc 1 240 0
	movl	-20(%rbp), %eax	# sq, tmp83
	subl	$1, %eax	#, D.5289
	cltq
	movl	board(,%rax,4), %eax	# board, D.5289
	addl	$1, %eax	#, D.5289
	andl	$1, %eax	#, D.5289
	cmpl	-24(%rbp), %eax	# c, D.5289
	jne	.L24	#,
	.loc 1 241 0
	addl	$2, -4(%rbp)	#, s
.L24:
	.loc 1 244 0
	movl	-20(%rbp), %eax	# sq, tmp86
	cltq
	movl	Xfile(,%rax,4), %eax	# Xfile, D.5289
	cmpl	$5, %eax	#, D.5289
	jle	.L25	#,
	.loc 1 245 0
	movl	-20(%rbp), %eax	# sq, tmp87
	addl	$1, %eax	#, D.5289
	cltq
	movl	board(,%rax,4), %eax	# board, D.5289
	addl	$1, %eax	#, D.5289
	sarl	%eax	# D.5289
	cmpl	$4, %eax	#, D.5289
	jne	.L25	#,
	.loc 1 246 0
	movl	-20(%rbp), %eax	# sq, tmp89
	addl	$1, %eax	#, D.5289
	cltq
	movl	board(,%rax,4), %eax	# board, D.5289
	addl	$1, %eax	#, D.5289
	andl	$1, %eax	#, D.5289
	cmpl	-24(%rbp), %eax	# c, D.5289
	jne	.L25	#,
	.loc 1 247 0
	addl	$2, -4(%rbp)	#, s
.L25:
	.loc 1 250 0
	cmpl	$1, -24(%rbp)	#, c
	jne	.L26	#,
	.loc 1 251 0
	negl	-4(%rbp)	# s
.L26:
	.loc 1 252 0
	movl	-4(%rbp), %eax	# s, D.5289
	.loc 1 253 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	King, .-King
	.globl	Queen
	.type	Queen, @function
Queen:
.LFB6:
	.loc 1 255 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$24, %rsp	#,
	movl	%edi, -20(%rbp)	# sq, sq
	movl	%esi, -24(%rbp)	# c, c
	.loc 1 256 0
	movl	$0, -12(%rbp)	#, s
	.loc 1 258 0
	movl	-24(%rbp), %eax	# c, tmp70
	xorl	$1, %eax	#, tmp69
	movl	%eax, -4(%rbp)	# tmp69, xside
	.loc 1 260 0
	addl	$900, -12(%rbp)	#, s
	.loc 1 262 0
	movl	-4(%rbp), %eax	# xside, tmp72
	cltq
	movl	king_locs(,%rax,4), %eax	# king_locs, D.5290
	movslq	%eax, %rcx	# D.5290, tmp73
	movl	-20(%rbp), %eax	# sq, tmp75
	movslq	%eax, %rdx	# tmp75, tmp74
	movq	%rdx, %rax	# tmp74, tmp76
	salq	$3, %rax	#, tmp76
	addq	%rdx, %rax	# tmp74, tmp76
	salq	$4, %rax	#, tmp77
	addq	%rcx, %rax	# tmp73, tmp78
	movl	distance(,%rax,4), %eax	# distance, D.5290
	cltq
	movl	std_q_tropism(,%rax,4), %eax	# std_q_tropism, D.5290
	addl	%eax, -12(%rbp)	# D.5290, s
	.loc 1 264 0
	movl	-20(%rbp), %eax	# sq, tmp80
	movl	%eax, %edi	# tmp80,
	call	rook_mobility	#
	addl	%eax, %eax	# tmp81
	movl	%eax, -8(%rbp)	# tmp81, mob
	.loc 1 265 0
	movl	-20(%rbp), %eax	# sq, tmp82
	movl	%eax, %edi	# tmp82,
	call	bishop_mobility	#
	addl	%eax, %eax	# D.5290
	addl	%eax, -8(%rbp)	# D.5290, mob
	.loc 1 267 0
	cmpl	$4, -8(%rbp)	#, mob
	jg	.L29	#,
	.loc 1 268 0
	cmpl	$0, -8(%rbp)	#, mob
	jne	.L30	#,
	.loc 1 269 0
	subl	$15, -8(%rbp)	#, mob
	jmp	.L29	#
.L30:
	.loc 1 270 0
	cmpl	$2, -8(%rbp)	#, mob
	jne	.L31	#,
	.loc 1 271 0
	subl	$10, -8(%rbp)	#, mob
	jmp	.L29	#
.L31:
	.loc 1 273 0
	subl	$5, -8(%rbp)	#, mob
.L29:
	.loc 1 276 0
	movl	-8(%rbp), %eax	# mob, tmp83
	addl	%eax, -12(%rbp)	# tmp83, s
	.loc 1 278 0
	cmpl	$1, -24(%rbp)	#, c
	jne	.L32	#,
	.loc 1 279 0
	negl	-12(%rbp)	# s
.L32:
	.loc 1 280 0
	movl	-12(%rbp), %eax	# s, D.5290
	.loc 1 281 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	Queen, .-Queen
	.globl	Rook
	.type	Rook, @function
Rook:
.LFB7:
	.loc 1 283 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$24, %rsp	#,
	movl	%edi, -20(%rbp)	# sq, sq
	movl	%esi, -24(%rbp)	# c, c
	.loc 1 285 0
	movl	$0, -12(%rbp)	#, s
	.loc 1 287 0
	movl	-24(%rbp), %eax	# c, tmp87
	xorl	$1, %eax	#, tmp86
	movl	%eax, -4(%rbp)	# tmp86, xside
	.loc 1 289 0
	addl	$500, -12(%rbp)	#, s
	.loc 1 291 0
	movl	-4(%rbp), %eax	# xside, tmp89
	cltq
	movl	king_locs(,%rax,4), %eax	# king_locs, D.5291
	movslq	%eax, %rcx	# D.5291, tmp90
	movl	-20(%rbp), %eax	# sq, tmp92
	movslq	%eax, %rdx	# tmp92, tmp91
	movq	%rdx, %rax	# tmp91, tmp93
	salq	$3, %rax	#, tmp93
	addq	%rdx, %rax	# tmp91, tmp93
	salq	$4, %rax	#, tmp94
	addq	%rcx, %rax	# tmp90, tmp95
	movl	rookdistance(,%rax,4), %eax	# rookdistance, D.5291
	cltq
	movl	std_r_tropism(,%rax,4), %eax	# std_r_tropism, D.5291
	addl	%eax, -12(%rbp)	# D.5291, s
	.loc 1 293 0
	movl	-20(%rbp), %eax	# sq, tmp97
	movl	%eax, %edi	# tmp97,
	call	rook_mobility	#
	addl	%eax, %eax	# tmp98
	movl	%eax, -8(%rbp)	# tmp98, mob
	.loc 1 294 0
	cmpl	$2, -8(%rbp)	#, mob
	jg	.L35	#,
	.loc 1 294 0 is_stmt 0 discriminator 1
	subl	$5, -8(%rbp)	#, mob
.L35:
	.loc 1 295 0 is_stmt 1
	movl	-8(%rbp), %eax	# mob, tmp99
	addl	%eax, -12(%rbp)	# tmp99, s
	.loc 1 298 0
	movl	-20(%rbp), %eax	# sq, tmp100
	subl	$1, %eax	#, D.5291
	cltq
	movl	board(,%rax,4), %eax	# board, D.5291
	cmpl	$13, %eax	#, D.5291
	je	.L36	#,
	.loc 1 298 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# sq, tmp102
	addl	$1, %eax	#, D.5291
	cltq
	movl	board(,%rax,4), %eax	# board, D.5291
	cmpl	$13, %eax	#, D.5291
	je	.L36	#,
	.loc 1 299 0 is_stmt 1
	subl	$5, -12(%rbp)	#, s
.L36:
	.loc 1 303 0
	movl	wmat(%rip), %eax	# wmat, wmat.3
	cmpl	$1300, %eax	#, wmat.3
	jne	.L37	#,
	.loc 1 303 0 is_stmt 0 discriminator 1
	movl	bmat(%rip), %eax	# bmat, bmat.4
	cmpl	$1300, %eax	#, bmat.4
	je	.L38	#,
.L37:
	.loc 1 304 0 is_stmt 1
	movl	-24(%rbp), %eax	# c, tmp105
	cltq
	movl	square_d1.3972(,%rax,4), %eax	# square_d1, D.5291
	cmpl	-20(%rbp), %eax	# sq, D.5291
	jne	.L39	#,
	.loc 1 305 0
	addl	$10, -12(%rbp)	#, s
	.loc 1 306 0
	movl	-24(%rbp), %eax	# c, tmp107
	cltq
	movl	square_d1.3972(,%rax,4), %eax	# square_d1, D.5291
	addl	$1, %eax	#, D.5291
	cltq
	movl	board(,%rax,4), %eax	# board, D.5291
	addl	$1, %eax	#, D.5291
	sarl	%eax	# D.5291
	cmpl	$4, %eax	#, D.5291
	jne	.L39	#,
	.loc 1 307 0
	movl	-24(%rbp), %eax	# c, tmp110
	cltq
	movl	square_d1.3972(,%rax,4), %eax	# square_d1, D.5291
	addl	$1, %eax	#, D.5291
	cltq
	movl	board(,%rax,4), %eax	# board, D.5291
	addl	$1, %eax	#, D.5291
	andl	$1, %eax	#, D.5291
	cmpl	-24(%rbp), %eax	# c, D.5291
	jne	.L39	#,
	.loc 1 309 0
	addl	$5, -12(%rbp)	#, s
.L39:
	.loc 1 312 0
	movl	-24(%rbp), %eax	# c, tmp113
	cltq
	movl	square_d1.3972(,%rax,4), %eax	# square_d1, D.5291
	addl	$1, %eax	#, D.5291
	cmpl	-20(%rbp), %eax	# sq, D.5291
	jne	.L38	#,
	.loc 1 313 0
	addl	$10, -12(%rbp)	#, s
.L38:
	.loc 1 317 0
	cmpl	$1, -24(%rbp)	#, c
	jne	.L40	#,
	.loc 1 318 0
	negl	-12(%rbp)	# s
.L40:
	.loc 1 319 0
	movl	-12(%rbp), %eax	# s, D.5291
	.loc 1 320 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	Rook, .-Rook
	.globl	Bishop
	.type	Bishop, @function
Bishop:
.LFB8:
	.loc 1 322 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$24, %rsp	#,
	movl	%edi, -20(%rbp)	# sq, sq
	movl	%esi, -24(%rbp)	# c, c
	.loc 1 323 0
	movl	$0, -12(%rbp)	#, s
	.loc 1 325 0
	movl	-24(%rbp), %eax	# c, tmp71
	xorl	$1, %eax	#, tmp70
	movl	%eax, -4(%rbp)	# tmp70, xside
	.loc 1 327 0
	addl	$325, -12(%rbp)	#, s
	.loc 1 328 0
	movl	-20(%rbp), %eax	# sq, tmp73
	cltq
	movl	sbishop(,%rax,4), %eax	# sbishop, D.5292
	addl	%eax, -12(%rbp)	# D.5292, s
	.loc 1 330 0
	movl	-4(%rbp), %eax	# xside, tmp75
	cltq
	movl	king_locs(,%rax,4), %eax	# king_locs, D.5292
	movslq	%eax, %rcx	# D.5292, tmp76
	movl	-20(%rbp), %eax	# sq, tmp78
	movslq	%eax, %rdx	# tmp78, tmp77
	movq	%rdx, %rax	# tmp77, tmp79
	salq	$3, %rax	#, tmp79
	addq	%rdx, %rax	# tmp77, tmp79
	salq	$4, %rax	#, tmp80
	addq	%rcx, %rax	# tmp76, tmp81
	movl	distance(,%rax,4), %eax	# distance, D.5292
	cltq
	movl	std_b_tropism(,%rax,4), %eax	# std_b_tropism, D.5292
	addl	%eax, -12(%rbp)	# D.5292, s
	.loc 1 332 0
	movl	-20(%rbp), %eax	# sq, tmp83
	movl	%eax, %edi	# tmp83,
	call	bishop_mobility	#
	addl	%eax, %eax	# tmp84
	movl	%eax, -8(%rbp)	# tmp84, mob
	.loc 1 333 0
	cmpl	$2, -8(%rbp)	#, mob
	jg	.L43	#,
	.loc 1 333 0 is_stmt 0 discriminator 1
	subl	$5, -8(%rbp)	#, mob
.L43:
	.loc 1 334 0 is_stmt 1
	movl	-8(%rbp), %eax	# mob, tmp85
	addl	%eax, -12(%rbp)	# tmp85, s
	.loc 1 336 0
	cmpl	$0, -24(%rbp)	#, c
	jne	.L44	#,
	.loc 1 336 0 is_stmt 0 discriminator 1
	cmpl	$39, -20(%rbp)	#, sq
	jne	.L44	#,
	movl	board+208(%rip), %eax	# board, D.5292
	cmpl	$1, %eax	#, D.5292
	je	.L45	#,
.L44:
	.loc 1 337 0 is_stmt 1
	cmpl	$1, -24(%rbp)	#, c
	jne	.L46	#,
	.loc 1 338 0
	cmpl	$99, -20(%rbp)	#, sq
	jne	.L46	#,
	.loc 1 338 0 is_stmt 0 discriminator 1
	movl	board+352(%rip), %eax	# board, D.5292
	cmpl	$2, %eax	#, D.5292
	jne	.L46	#,
.L45:
	.loc 1 339 0 is_stmt 1
	subl	$5, -12(%rbp)	#, s
.L46:
	.loc 1 341 0
	cmpl	$1, -24(%rbp)	#, c
	jne	.L47	#,
	.loc 1 342 0
	negl	-12(%rbp)	# s
.L47:
	.loc 1 343 0
	movl	-12(%rbp), %eax	# s, D.5292
	.loc 1 344 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	Bishop, .-Bishop
	.globl	Knight
	.type	Knight, @function
Knight:
.LFB9:
	.loc 1 346 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)	# sq, sq
	movl	%esi, -24(%rbp)	# c, c
	.loc 1 347 0
	movl	$0, -8(%rbp)	#, s
	.loc 1 348 0
	movl	-24(%rbp), %eax	# c, tmp68
	xorl	$1, %eax	#, tmp67
	movl	%eax, -4(%rbp)	# tmp67, xside
	.loc 1 350 0
	addl	$310, -8(%rbp)	#, s
	.loc 1 351 0
	movl	-20(%rbp), %eax	# sq, tmp70
	cltq
	movl	sknight(,%rax,4), %eax	# sknight, D.5293
	addl	%eax, -8(%rbp)	# D.5293, s
	.loc 1 353 0
	movl	-4(%rbp), %eax	# xside, tmp72
	cltq
	movl	king_locs(,%rax,4), %eax	# king_locs, D.5293
	movslq	%eax, %rcx	# D.5293, tmp73
	movl	-20(%rbp), %eax	# sq, tmp75
	movslq	%eax, %rdx	# tmp75, tmp74
	movq	%rdx, %rax	# tmp74, tmp76
	salq	$3, %rax	#, tmp76
	addq	%rdx, %rax	# tmp74, tmp76
	salq	$4, %rax	#, tmp77
	addq	%rcx, %rax	# tmp73, tmp78
	movl	distance(,%rax,4), %eax	# distance, D.5293
	cltq
	movl	std_n_tropism(,%rax,4), %eax	# std_n_tropism, D.5293
	addl	%eax, -8(%rbp)	# D.5293, s
	.loc 1 355 0
	cmpl	$1, -24(%rbp)	#, c
	jne	.L50	#,
	.loc 1 356 0
	negl	-8(%rbp)	# s
.L50:
	.loc 1 357 0
	movl	-8(%rbp), %eax	# s, D.5293
	.loc 1 358 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	Knight, .-Knight
	.globl	Pawn
	.type	Pawn, @function
Pawn:
.LFB10:
	.loc 1 360 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)	# sq, sq
	movl	%esi, -24(%rbp)	# c, c
	.loc 1 361 0
	movl	$0, -8(%rbp)	#, s
	.loc 1 362 0
	movl	-24(%rbp), %eax	# c, tmp94
	xorl	$1, %eax	#, tmp93
	movl	%eax, -4(%rbp)	# tmp93, xside
	.loc 1 364 0
	addl	$100, -8(%rbp)	#, s
	.loc 1 366 0
	movl	-4(%rbp), %eax	# xside, tmp96
	cltq
	movl	king_locs(,%rax,4), %eax	# king_locs, D.5294
	movslq	%eax, %rcx	# D.5294, tmp97
	movl	-20(%rbp), %eax	# sq, tmp99
	movslq	%eax, %rdx	# tmp99, tmp98
	movq	%rdx, %rax	# tmp98, tmp100
	salq	$3, %rax	#, tmp100
	addq	%rdx, %rax	# tmp98, tmp100
	salq	$4, %rax	#, tmp101
	addq	%rcx, %rax	# tmp97, tmp102
	movl	distance(,%rax,4), %eax	# distance, D.5294
	cltq
	movl	std_p_tropism(,%rax,4), %eax	# std_p_tropism, D.5294
	addl	%eax, -8(%rbp)	# D.5294, s
	.loc 1 367 0
	movl	-24(%rbp), %eax	# c, tmp105
	cltq
	movl	king_locs(,%rax,4), %eax	# king_locs, D.5294
	movslq	%eax, %rcx	# D.5294, tmp106
	movl	-20(%rbp), %eax	# sq, tmp108
	movslq	%eax, %rdx	# tmp108, tmp107
	movq	%rdx, %rax	# tmp107, tmp109
	salq	$3, %rax	#, tmp109
	addq	%rdx, %rax	# tmp107, tmp109
	salq	$4, %rax	#, tmp110
	addq	%rcx, %rax	# tmp106, tmp111
	movl	distance(,%rax,4), %eax	# distance, D.5294
	cltq
	movl	std_own_p_tropism(,%rax,4), %eax	# std_own_p_tropism, D.5294
	addl	%eax, -8(%rbp)	# D.5294, s
	.loc 1 370 0
	movl	-20(%rbp), %eax	# sq, tmp113
	addl	$1, %eax	#, D.5294
	cltq
	movl	board(,%rax,4), %eax	# board, D.5294
	addl	$1, %eax	#, D.5294
	sarl	%eax	# D.5294
	cmpl	$1, %eax	#, D.5294
	jne	.L53	#,
	.loc 1 371 0
	movl	-20(%rbp), %eax	# sq, tmp115
	addl	$1, %eax	#, D.5294
	cltq
	movl	board(,%rax,4), %eax	# board, D.5294
	addl	$1, %eax	#, D.5294
	andl	$1, %eax	#, D.5294
	cmpl	-24(%rbp), %eax	# c, D.5294
	jne	.L53	#,
	.loc 1 372 0
	addl	$5, -8(%rbp)	#, s
.L53:
	.loc 1 375 0
	movl	-20(%rbp), %eax	# sq, tmp117
	addl	$11, %eax	#, D.5294
	cltq
	movl	board(,%rax,4), %eax	# board, D.5294
	addl	$1, %eax	#, D.5294
	sarl	%eax	# D.5294
	cmpl	$1, %eax	#, D.5294
	jne	.L54	#,
	.loc 1 376 0
	movl	-20(%rbp), %eax	# sq, tmp119
	addl	$11, %eax	#, D.5294
	cltq
	movl	board(,%rax,4), %eax	# board, D.5294
	addl	$1, %eax	#, D.5294
	andl	$1, %eax	#, D.5294
	cmpl	-24(%rbp), %eax	# c, D.5294
	jne	.L54	#,
	.loc 1 377 0
	addl	$1, -8(%rbp)	#, s
	jmp	.L55	#
.L54:
	.loc 1 378 0
	movl	-20(%rbp), %eax	# sq, tmp121
	addl	$13, %eax	#, D.5294
	cltq
	movl	board(,%rax,4), %eax	# board, D.5294
	addl	$1, %eax	#, D.5294
	sarl	%eax	# D.5294
	cmpl	$1, %eax	#, D.5294
	jne	.L55	#,
	.loc 1 379 0
	movl	-20(%rbp), %eax	# sq, tmp123
	addl	$13, %eax	#, D.5294
	cltq
	movl	board(,%rax,4), %eax	# board, D.5294
	addl	$1, %eax	#, D.5294
	andl	$1, %eax	#, D.5294
	cmpl	-24(%rbp), %eax	# c, D.5294
	jne	.L55	#,
	.loc 1 380 0
	addl	$1, -8(%rbp)	#, s
.L55:
	.loc 1 382 0
	cmpl	$1, -24(%rbp)	#, c
	jne	.L56	#,
	.loc 1 383 0
	negl	-8(%rbp)	# s
.L56:
	.loc 1 384 0
	movl	-8(%rbp), %eax	# s, D.5294
	.loc 1 385 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	Pawn, .-Pawn
	.section	.rodata
	.align 8
.LC0:
	.string	"Illegal piece detected sq=%i c=%i\n"
	.text
	.globl	ErrorIt
	.type	ErrorIt, @function
ErrorIt:
.LFB11:
	.loc 1 387 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# sq, sq
	movl	%esi, -8(%rbp)	# c, c
	.loc 1 388 0
	movl	-8(%rbp), %edx	# c, tmp61
	movl	-4(%rbp), %eax	# sq, tmp62
	movl	%eax, %esi	# tmp62,
	movl	$.LC0, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 389 0
	movl	$0, %eax	#, D.5295
	.loc 1 390 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	ErrorIt, .-ErrorIt
	.globl	std_eval
	.type	std_eval, @function
std_eval:
.LFB12:
	.loc 1 392 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$336, %rsp	#,
	movl	%edi, -324(%rbp)	# alpha, alpha
	movl	%esi, -328(%rbp)	# beta, beta
	.loc 1 396 0
	movl	$0, -312(%rbp)	#, score
	.loc 1 404 0
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.6
	testl	%eax, %eax	# white_to_move.6
	jne	.L61	#,
	.loc 1 404 0 is_stmt 0 discriminator 1
	movl	Material(%rip), %eax	# Material, Material.7
	negl	%eax	# iftmp.5
	jmp	.L62	#
.L61:
	.loc 1 404 0 discriminator 2
	movl	Material(%rip), %eax	# Material, iftmp.5
.L62:
	.loc 1 404 0 discriminator 3
	movl	maxposdiff(%rip), %edx	# maxposdiff, maxposdiff.8
	subl	%edx, %eax	# maxposdiff.8, D.5297
	cmpl	-328(%rbp), %eax	# beta, D.5297
	jl	.L63	#,
	.loc 1 405 0 is_stmt 1
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.10
	testl	%eax, %eax	# white_to_move.10
	jne	.L64	#,
	.loc 1 405 0 is_stmt 0 discriminator 1
	movl	Material(%rip), %eax	# Material, Material.11
	negl	%eax	# iftmp.9
	jmp	.L65	#
.L64:
	.loc 1 405 0 discriminator 2
	movl	Material(%rip), %eax	# Material, iftmp.9
.L65:
	.loc 1 405 0 discriminator 3
	movl	maxposdiff(%rip), %edx	# maxposdiff, maxposdiff.12
	subl	%edx, %eax	# maxposdiff.12, D.5297
	jmp	.L206	#
.L63:
	.loc 1 406 0 is_stmt 1
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.14
	testl	%eax, %eax	# white_to_move.14
	jne	.L67	#,
	.loc 1 406 0 is_stmt 0 discriminator 1
	movl	Material(%rip), %eax	# Material, Material.15
	negl	%eax	# iftmp.13
	jmp	.L68	#
.L67:
	.loc 1 406 0 discriminator 2
	movl	Material(%rip), %eax	# Material, iftmp.13
.L68:
	.loc 1 406 0 discriminator 3
	movl	maxposdiff(%rip), %edx	# maxposdiff, maxposdiff.16
	addl	%edx, %eax	# maxposdiff.16, D.5297
	cmpl	-324(%rbp), %eax	# alpha, D.5297
	jg	.L69	#,
	.loc 1 407 0 is_stmt 1
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.18
	testl	%eax, %eax	# white_to_move.18
	jne	.L70	#,
	.loc 1 407 0 is_stmt 0 discriminator 1
	movl	Material(%rip), %eax	# Material, Material.19
	negl	%eax	# iftmp.17
	jmp	.L71	#
.L70:
	.loc 1 407 0 discriminator 2
	movl	Material(%rip), %eax	# Material, iftmp.17
.L71:
	.loc 1 407 0 discriminator 3
	movl	maxposdiff(%rip), %edx	# maxposdiff, maxposdiff.20
	addl	%edx, %eax	# maxposdiff.20, D.5297
	jmp	.L206	#
.L69:
	.loc 1 409 0 is_stmt 1
	movl	$0, -308(%rbp)	#, in_cache
	.loc 1 411 0
	leaq	-308(%rbp), %rdx	#, tmp654
	leaq	-312(%rbp), %rax	#, tmp655
	movq	%rdx, %rsi	# tmp654,
	movq	%rax, %rdi	# tmp655,
	call	checkECache	#
	.loc 1 413 0
	movl	-308(%rbp), %eax	# in_cache, in_cache.21
	testl	%eax, %eax	# in_cache.21
	je	.L72	#,
	.loc 1 415 0
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.22
	cmpl	$1, %eax	#, white_to_move.22
	jne	.L73	#,
	.loc 1 415 0 is_stmt 0 discriminator 1
	movl	-312(%rbp), %eax	# score, D.5297
	jmp	.L206	#
.L73:
	.loc 1 416 0 is_stmt 1
	movl	-312(%rbp), %eax	# score, score.23
	negl	%eax	# D.5297
	jmp	.L206	#
.L72:
	.loc 1 419 0
	leaq	-96(%rbp), %rax	#, tmp656
	movl	$88, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp656,
	call	memset	#
	.loc 1 420 0
	movl	$0, -304(%rbp)	#, i
	jmp	.L74	#
.L75:
	.loc 1 421 0 discriminator 2
	movl	-304(%rbp), %eax	# i, tmp658
	cltq
	movl	$7, -192(%rbp,%rax,4)	#, white_back_pawn
	.loc 1 422 0 discriminator 2
	movl	-304(%rbp), %eax	# i, tmp660
	cltq
	movl	$2, -144(%rbp,%rax,4)	#, black_back_pawn
	.loc 1 420 0 discriminator 2
	addl	$1, -304(%rbp)	#, i
.L74:
	.loc 1 420 0 is_stmt 0 discriminator 1
	cmpl	$10, -304(%rbp)	#, i
	jle	.L75	#,
	.loc 1 425 0 is_stmt 1
	movl	$0, wmat(%rip)	#, wmat
	.loc 1 426 0
	movl	$0, bmat(%rip)	#, bmat
	.loc 1 428 0
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.24
	movl	%eax, king_locs(%rip)	# wking_loc.24, king_locs
	.loc 1 429 0
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.25
	movl	%eax, king_locs+4(%rip)	# bking_loc.25, king_locs
	.loc 1 432 0
	movl	$1, -296(%rbp)	#, j
	movl	$1, -300(%rbp)	#, a
	jmp	.L76	#
.L83:
	.loc 1 433 0
	movl	-296(%rbp), %eax	# j, tmp662
	cltq
	movl	pieces(,%rax,4), %eax	# pieces, tmp663
	movl	%eax, -304(%rbp)	# tmp663, i
	.loc 1 435 0
	cmpl	$0, -304(%rbp)	#, i
	jne	.L77	#,
	.loc 1 436 0
	jmp	.L78	#
.L77:
	.loc 1 438 0
	addl	$1, -300(%rbp)	#, a
	.loc 1 442 0
	movl	-304(%rbp), %eax	# i, tmp665
	cltq
	movl	board(,%rax,4), %eax	# board, D.5297
	addl	$1, %eax	#, D.5297
	sarl	%eax	# D.5297
	cmpl	$1, %eax	#, D.5297
	je	.L79	#,
	.loc 1 442 0 is_stmt 0 discriminator 1
	movl	-304(%rbp), %eax	# i, tmp667
	cltq
	movl	board(,%rax,4), %eax	# board, D.5297
	addl	$1, %eax	#, D.5297
	sarl	%eax	# D.5297
	cmpl	$3, %eax	#, D.5297
	je	.L79	#,
	.loc 1 444 0 is_stmt 1
	movl	-304(%rbp), %eax	# i, tmp669
	cltq
	movl	board(,%rax,4), %eax	# board, D.5297
	addl	$1, %eax	#, D.5297
	andl	$1, %eax	#, D.5297
	testl	%eax, %eax	# D.5297
	jne	.L80	#,
	.loc 1 445 0
	movl	-304(%rbp), %eax	# i, tmp671
	cltq
	movl	board(,%rax,4), %eax	# board, D.5297
	cltq
	movl	material(,%rax,4), %edx	# material, D.5297
	movl	wmat(%rip), %eax	# wmat, wmat.26
	addl	%edx, %eax	# D.5297, wmat.27
	movl	%eax, wmat(%rip)	# wmat.27, wmat
	jmp	.L79	#
.L80:
	.loc 1 447 0
	movl	-304(%rbp), %eax	# i, tmp674
	cltq
	movl	board(,%rax,4), %eax	# board, D.5297
	cltq
	movl	material(,%rax,4), %eax	# material, D.5297
	cltd
	xorl	%edx, %eax	# tmp676, D.5297
	subl	%edx, %eax	# tmp676, D.5297
	movl	bmat(%rip), %edx	# bmat, bmat.28
	addl	%edx, %eax	# bmat.28, bmat.29
	movl	%eax, bmat(%rip)	# bmat.29, bmat
.L79:
	.loc 1 450 0
	movl	-304(%rbp), %eax	# i, tmp678
	cltq
	movl	board(,%rax,4), %eax	# board, D.5297
	addl	$1, %eax	#, D.5297
	sarl	%eax	# D.5297
	cmpl	$1, %eax	#, D.5297
	jne	.L78	#,
	.loc 1 452 0
	movl	-304(%rbp), %eax	# i, tmp680
	cltq
	movl	Xfile(,%rax,4), %eax	# Xfile, D.5297
	addl	$1, %eax	#, tmp681
	movl	%eax, -212(%rbp)	# tmp681, pawn_file
	.loc 1 453 0
	movl	-304(%rbp), %eax	# i, tmp683
	cltq
	movl	Xrank(,%rax,4), %eax	# Xrank, tmp684
	movl	%eax, -208(%rbp)	# tmp684, srank
	.loc 1 455 0
	movl	-304(%rbp), %eax	# i, tmp686
	cltq
	movl	board(,%rax,4), %eax	# board, D.5297
	addl	$1, %eax	#, D.5297
	andl	$1, %eax	#, D.5297
	testl	%eax, %eax	# D.5297
	jne	.L81	#,
	.loc 1 457 0
	movl	-212(%rbp), %eax	# pawn_file, tmp688
	cltq
	addq	$11, %rax	#, tmp689
	movl	-96(%rbp,%rax,4), %eax	# pawns, D.5297
	leal	1(%rax), %edx	#, D.5297
	movl	-212(%rbp), %eax	# pawn_file, tmp691
	cltq
	addq	$11, %rax	#, tmp692
	movl	%edx, -96(%rbp,%rax,4)	# D.5297, pawns
	.loc 1 458 0
	movl	-212(%rbp), %eax	# pawn_file, tmp694
	cltq
	movl	-192(%rbp,%rax,4), %eax	# white_back_pawn, D.5297
	cmpl	-208(%rbp), %eax	# srank, D.5297
	jle	.L78	#,
	.loc 1 459 0
	movl	-212(%rbp), %eax	# pawn_file, tmp696
	cltq
	movl	-208(%rbp), %edx	# srank, tmp697
	movl	%edx, -192(%rbp,%rax,4)	# tmp697, white_back_pawn
	jmp	.L78	#
.L81:
	.loc 1 464 0
	movl	-212(%rbp), %eax	# pawn_file, tmp699
	cltq
	movl	-96(%rbp,%rax,4), %eax	# pawns, D.5297
	leal	1(%rax), %edx	#, D.5297
	movl	-212(%rbp), %eax	# pawn_file, tmp701
	cltq
	movl	%edx, -96(%rbp,%rax,4)	# D.5297, pawns
	.loc 1 465 0
	movl	-212(%rbp), %eax	# pawn_file, tmp703
	cltq
	movl	-144(%rbp,%rax,4), %eax	# black_back_pawn, D.5297
	cmpl	-208(%rbp), %eax	# srank, D.5297
	jge	.L78	#,
	.loc 1 466 0
	movl	-212(%rbp), %eax	# pawn_file, tmp705
	cltq
	movl	-208(%rbp), %edx	# srank, tmp706
	movl	%edx, -144(%rbp,%rax,4)	# tmp706, black_back_pawn
.L78:
	.loc 1 432 0
	addl	$1, -296(%rbp)	#, j
.L76:
	.loc 1 432 0 is_stmt 0 discriminator 1
	movl	piece_count(%rip), %eax	# piece_count, piece_count.30
	cmpl	%eax, -300(%rbp)	# piece_count.30, a
	jle	.L83	#,
	.loc 1 473 0 is_stmt 1
	movl	$0, -228(%rbp)	#, wpotential
	.loc 1 474 0
	movl	$0, -224(%rbp)	#, bpotential
	.loc 1 475 0
	movl	$0, -220(%rbp)	#, wksafety
	.loc 1 476 0
	movl	$0, -216(%rbp)	#, bksafety
	.loc 1 477 0
	movl	$0, -244(%rbp)	#, rbrook
	.loc 1 478 0
	movl	$0, -240(%rbp)	#, fbrook
	.loc 1 479 0
	movl	$0, -236(%rbp)	#, rwrook
	.loc 1 480 0
	movl	$0, -232(%rbp)	#, fwrook
	.loc 1 481 0
	movl	$0, -284(%rbp)	#, wp
	.loc 1 482 0
	movl	$0, -280(%rbp)	#, bp
	.loc 1 483 0
	movl	$0, -268(%rbp)	#, wb
	.loc 1 484 0
	movl	$0, -264(%rbp)	#, bb
	.loc 1 485 0
	movl	$0, -276(%rbp)	#, wn
	.loc 1 486 0
	movl	$0, -272(%rbp)	#, bn
	.loc 1 487 0
	movl	$0, -252(%rbp)	#, wr
	.loc 1 488 0
	movl	$0, -248(%rbp)	#, br
	.loc 1 489 0
	movl	$0, -260(%rbp)	#, wq
	.loc 1 490 0
	movl	$0, -256(%rbp)	#, bq
	.loc 1 493 0
	movl	$1, -296(%rbp)	#, j
	movl	$1, -300(%rbp)	#, a
	jmp	.L84	#
.L158:
	.loc 1 494 0
	movl	-296(%rbp), %eax	# j, tmp708
	cltq
	movl	pieces(,%rax,4), %eax	# pieces, tmp709
	movl	%eax, -304(%rbp)	# tmp709, i
	.loc 1 495 0
	cmpl	$0, -304(%rbp)	#, i
	jne	.L85	#,
	.loc 1 496 0
	jmp	.L86	#
.L85:
	.loc 1 498 0
	addl	$1, -300(%rbp)	#, a
	.loc 1 500 0
	movl	-304(%rbp), %eax	# i, tmp711
	cltq
	movl	board(,%rax,4), %eax	# board, D.5297
	addl	$1, %eax	#, D.5297
	sarl	%eax	# D.5297
	cltq
	movq	evalRoutines(,%rax,8), %rax	# evalRoutines, D.5298
	movl	-304(%rbp), %edx	# i, tmp714
	movslq	%edx, %rdx	# tmp714, tmp713
	movl	board(,%rdx,4), %edx	# board, D.5297
	addl	$1, %edx	#, D.5297
	movl	%edx, %ecx	# D.5297, D.5297
	andl	$1, %ecx	#, D.5297
	movl	-304(%rbp), %edx	# i, tmp715
	movl	%ecx, %esi	# D.5297,
	movl	%edx, %edi	# tmp715,
	call	*%rax	# D.5298
	movl	-312(%rbp), %edx	# score, score.31
	addl	%edx, %eax	# score.31, score.32
	movl	%eax, -312(%rbp)	# score.32, score
	.loc 1 502 0
	movl	-304(%rbp), %eax	# i, tmp717
	cltq
	movl	Xfile(,%rax,4), %eax	# Xfile, D.5297
	addl	$1, %eax	#, tmp718
	movl	%eax, -212(%rbp)	# tmp718, pawn_file
	.loc 1 503 0
	movl	-304(%rbp), %eax	# i, tmp720
	cltq
	movl	Xrank(,%rax,4), %eax	# Xrank, tmp721
	movl	%eax, -208(%rbp)	# tmp721, srank
	.loc 1 504 0
	movl	-304(%rbp), %eax	# i, tmp723
	cltq
	movl	board(,%rax,4), %eax	# board, D.5297
	cmpl	$12, %eax	#, D.5297
	ja	.L86	#,
	movl	%eax, %eax	# D.5297, tmp724
	movq	.L88(,%rax,8), %rax	#, tmp725
	jmp	*%rax	# tmp725
	.section	.rodata
	.align 8
	.align 4
.L88:
	.quad	.L86
	.quad	.L87
	.quad	.L89
	.quad	.L90
	.quad	.L91
	.quad	.L92
	.quad	.L93
	.quad	.L94
	.quad	.L95
	.quad	.L96
	.quad	.L97
	.quad	.L98
	.quad	.L99
	.text
.L87:
	.loc 1 506 0
	movl	$0, -292(%rbp)	#, isolated
	.loc 1 507 0
	movl	$0, -288(%rbp)	#, backwards
	.loc 1 508 0
	movl	-304(%rbp), %eax	# i, tmp727
	cltq
	movl	swhite_pawn(,%rax,4), %edx	# swhite_pawn, D.5297
	movl	-312(%rbp), %eax	# score, score.33
	addl	%edx, %eax	# D.5297, score.34
	movl	%eax, -312(%rbp)	# score.34, score
	.loc 1 509 0
	addl	$1, -284(%rbp)	#, wp
	.loc 1 512 0
	movl	-212(%rbp), %eax	# pawn_file, tmp728
	addl	$1, %eax	#, D.5297
	cltq
	movl	-192(%rbp,%rax,4), %eax	# white_back_pawn, D.5297
	cmpl	-208(%rbp), %eax	# srank, D.5297
	jle	.L100	#,
	.loc 1 513 0
	movl	-212(%rbp), %eax	# pawn_file, tmp730
	subl	$1, %eax	#, D.5297
	cltq
	movl	-192(%rbp,%rax,4), %eax	# white_back_pawn, D.5297
	cmpl	-208(%rbp), %eax	# srank, D.5297
	jle	.L100	#,
	.loc 1 514 0
	movl	-312(%rbp), %eax	# score, score.35
	subl	$8, %eax	#, score.36
	movl	%eax, -312(%rbp)	# score.36, score
	.loc 1 515 0
	movl	$1, -288(%rbp)	#, backwards
	.loc 1 517 0
	movl	-212(%rbp), %eax	# pawn_file, tmp732
	addl	$1, %eax	#, D.5297
	cltq
	addq	$11, %rax	#, tmp734
	movl	-96(%rbp,%rax,4), %eax	# pawns, D.5297
	testl	%eax, %eax	# D.5297
	jne	.L100	#,
	.loc 1 517 0 is_stmt 0 discriminator 1
	movl	-212(%rbp), %eax	# pawn_file, tmp735
	subl	$1, %eax	#, D.5297
	cltq
	addq	$11, %rax	#, tmp737
	movl	-96(%rbp,%rax,4), %eax	# pawns, D.5297
	testl	%eax, %eax	# D.5297
	jne	.L100	#,
	.loc 1 518 0 is_stmt 1
	movl	-312(%rbp), %eax	# score, score.37
	subl	$5, %eax	#, score.38
	movl	%eax, -312(%rbp)	# score.38, score
	.loc 1 519 0
	movl	$1, -292(%rbp)	#, isolated
.L100:
	.loc 1 524 0
	movl	-212(%rbp), %eax	# pawn_file, tmp739
	cltq
	movl	-96(%rbp,%rax,4), %eax	# pawns, D.5297
	testl	%eax, %eax	# D.5297
	jne	.L101	#,
	.loc 1 525 0
	cmpl	$0, -288(%rbp)	#, backwards
	je	.L102	#,
	.loc 1 525 0 is_stmt 0 discriminator 1
	movl	-312(%rbp), %eax	# score, score.39
	subl	$3, %eax	#, score.40
	movl	%eax, -312(%rbp)	# score.40, score
.L102:
	.loc 1 526 0 is_stmt 1
	cmpl	$0, -292(%rbp)	#, isolated
	je	.L101	#,
	.loc 1 526 0 is_stmt 0 discriminator 1
	movl	-312(%rbp), %eax	# score, score.41
	subl	$5, %eax	#, score.42
	movl	%eax, -312(%rbp)	# score.42, score
.L101:
	.loc 1 530 0 is_stmt 1
	movl	-212(%rbp), %eax	# pawn_file, tmp741
	cltq
	addq	$11, %rax	#, tmp742
	movl	-96(%rbp,%rax,4), %eax	# pawns, D.5297
	cmpl	$1, %eax	#, D.5297
	jle	.L103	#,
	.loc 1 531 0
	movl	-212(%rbp), %eax	# pawn_file, tmp744
	cltq
	addq	$11, %rax	#, tmp745
	movl	-96(%rbp,%rax,4), %eax	# pawns, D.5297
	movl	$1, %edx	#, tmp746
	subl	%eax, %edx	# D.5297, D.5297
	movl	%edx, %eax	# D.5297, tmp747
	addl	%eax, %eax	# tmp747
	addl	%eax, %edx	# tmp747, D.5297
	movl	-312(%rbp), %eax	# score, score.43
	addl	%edx, %eax	# D.5297, score.44
	movl	%eax, -312(%rbp)	# score.44, score
.L103:
	.loc 1 534 0
	movl	-212(%rbp), %eax	# pawn_file, tmp749
	cltq
	movl	-96(%rbp,%rax,4), %eax	# pawns, D.5297
	testl	%eax, %eax	# D.5297
	jne	.L104	#,
	.loc 1 534 0 is_stmt 0 discriminator 1
	movl	-212(%rbp), %eax	# pawn_file, tmp750
	subl	$1, %eax	#, D.5297
	cltq
	movl	-144(%rbp,%rax,4), %eax	# black_back_pawn, D.5297
	cmpl	-208(%rbp), %eax	# srank, D.5297
	jg	.L104	#,
	.loc 1 535 0 is_stmt 1 discriminator 1
	movl	-212(%rbp), %eax	# pawn_file, tmp752
	addl	$1, %eax	#, D.5297
	cltq
	movl	-144(%rbp,%rax,4), %eax	# black_back_pawn, D.5297
	.loc 1 534 0 discriminator 1
	cmpl	-208(%rbp), %eax	# srank, D.5297
	jg	.L104	#,
	.loc 1 536 0
	movl	-304(%rbp), %eax	# i, tmp755
	cltq
	movl	swhite_pawn(,%rax,4), %edx	# swhite_pawn, D.5297
	movl	%edx, %eax	# D.5297, tmp756
	addl	%eax, %eax	# tmp756
	addl	%edx, %eax	# D.5297, D.5297
	leal	30(%rax), %edx	#, D.5297
	movl	-312(%rbp), %eax	# score, score.45
	addl	%edx, %eax	# D.5297, score.46
	movl	%eax, -312(%rbp)	# score.46, score
	.loc 1 538 0
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.47
	testl	%eax, %eax	# white_to_move.47
	je	.L105	#,
	.loc 1 542 0
	movl	-304(%rbp), %eax	# i, tmp758
	cltq
	movl	Xfile(,%rax,4), %eax	# Xfile, D.5297
	addl	$109, %eax	#, tmp759
	movl	%eax, -204(%rbp)	# tmp759, tmp
	.loc 1 544 0
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.48
	cltq
	movl	Xrank(,%rax,4), %edx	# Xrank, D.5297
	movl	-204(%rbp), %eax	# tmp, tmp762
	cltq
	movl	Xrank(,%rax,4), %eax	# Xrank, D.5297
	subl	%eax, %edx	# D.5297, D.5297
	movl	%edx, %eax	# D.5297, tmp763
	sarl	$31, %eax	#, tmp763
	xorl	%eax, %edx	# tmp763, D.5297
	subl	%eax, %edx	# tmp763, D.5297
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.49
	cltq
	movl	Xfile(,%rax,4), %ecx	# Xfile, D.5297
	movl	-204(%rbp), %eax	# tmp, tmp766
	cltq
	movl	Xfile(,%rax,4), %eax	# Xfile, D.5297
	subl	%eax, %ecx	# D.5297, D.5297
	movl	%ecx, %eax	# D.5297, D.5297
	movl	%eax, %ecx	# D.5297, tmp767
	sarl	$31, %ecx	#, tmp767
	xorl	%ecx, %eax	# tmp767, D.5297
	subl	%ecx, %eax	# tmp767, D.5297
	cmpl	%eax, %edx	# D.5297, D.5297
	cmovge	%edx, %eax	# D.5297,, D.5297
	movl	%eax, %ecx	# D.5297, D.5297
	.loc 1 545 0
	movl	-204(%rbp), %eax	# tmp, tmp769
	cltq
	movl	Xrank(,%rax,4), %edx	# Xrank, D.5297
	movl	-304(%rbp), %eax	# i, tmp771
	cltq
	movl	Xrank(,%rax,4), %eax	# Xrank, D.5297
	subl	%eax, %edx	# D.5297, D.5297
	movl	%edx, %eax	# D.5297, D.5297
	cltd
	xorl	%edx, %eax	# tmp772, D.5297
	subl	%edx, %eax	# tmp772, D.5297
	.loc 1 544 0
	cmpl	%eax, %ecx	# D.5297, D.5297
	jle	.L107	#,
	.loc 1 547 0
	addl	$800, -228(%rbp)	#, wpotential
	jmp	.L107	#
.L105:
	.loc 1 554 0
	movl	-304(%rbp), %eax	# i, tmp774
	cltq
	movl	Xfile(,%rax,4), %eax	# Xfile, D.5297
	addl	$109, %eax	#, tmp775
	movl	%eax, -204(%rbp)	# tmp775, tmp
	.loc 1 556 0
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.50
	cltq
	movl	Xrank(,%rax,4), %edx	# Xrank, D.5297
	movl	-204(%rbp), %eax	# tmp, tmp778
	cltq
	movl	Xrank(,%rax,4), %eax	# Xrank, D.5297
	subl	%eax, %edx	# D.5297, D.5297
	movl	%edx, %eax	# D.5297, tmp779
	sarl	$31, %eax	#, tmp779
	xorl	%eax, %edx	# tmp779, D.5297
	subl	%eax, %edx	# tmp779, D.5297
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.51
	cltq
	movl	Xfile(,%rax,4), %ecx	# Xfile, D.5297
	movl	-204(%rbp), %eax	# tmp, tmp782
	cltq
	movl	Xfile(,%rax,4), %eax	# Xfile, D.5297
	subl	%eax, %ecx	# D.5297, D.5297
	movl	%ecx, %eax	# D.5297, D.5297
	movl	%eax, %ecx	# D.5297, tmp783
	sarl	$31, %ecx	#, tmp783
	xorl	%ecx, %eax	# tmp783, D.5297
	subl	%ecx, %eax	# tmp783, D.5297
	cmpl	%eax, %edx	# D.5297, D.5297
	cmovge	%edx, %eax	# D.5297,, D.5297
	leal	-1(%rax), %ecx	#, D.5297
	.loc 1 557 0
	movl	-204(%rbp), %eax	# tmp, tmp785
	cltq
	movl	Xrank(,%rax,4), %edx	# Xrank, D.5297
	movl	-304(%rbp), %eax	# i, tmp787
	cltq
	movl	Xrank(,%rax,4), %eax	# Xrank, D.5297
	subl	%eax, %edx	# D.5297, D.5297
	movl	%edx, %eax	# D.5297, D.5297
	cltd
	xorl	%edx, %eax	# tmp788, D.5297
	subl	%edx, %eax	# tmp788, D.5297
	.loc 1 556 0
	cmpl	%eax, %ecx	# D.5297, D.5297
	jle	.L107	#,
	.loc 1 559 0
	addl	$800, -228(%rbp)	#, wpotential
.L107:
	.loc 1 564 0
	movl	-304(%rbp), %eax	# i, tmp790
	cltq
	movl	Xfile(,%rax,4), %eax	# Xfile, D.5297
	cmpl	$1, %eax	#, D.5297
	je	.L108	#,
	.loc 1 564 0 is_stmt 0 discriminator 1
	movl	-304(%rbp), %eax	# i, tmp792
	cltq
	movl	Xfile(,%rax,4), %eax	# Xfile, D.5297
	cmpl	$8, %eax	#, D.5297
	jne	.L109	#,
.L108:
	.loc 1 565 0 is_stmt 1
	movl	-304(%rbp), %eax	# i, tmp794
	cltq
	movl	swhite_pawn(,%rax,4), %eax	# swhite_pawn, D.5297
	addl	$6, %eax	#, D.5297
	leal	(%rax,%rax), %edx	#, D.5297
	movl	-312(%rbp), %eax	# score, score.52
	addl	%edx, %eax	# D.5297, score.53
	movl	%eax, -312(%rbp)	# score.53, score
.L109:
	.loc 1 568 0
	cmpl	$0, -292(%rbp)	#, isolated
	jne	.L104	#,
	.loc 1 570 0
	movl	-312(%rbp), %eax	# score, score.54
	addl	$12, %eax	#, score.55
	movl	%eax, -312(%rbp)	# score.55, score
	.loc 1 573 0
	movl	-212(%rbp), %eax	# pawn_file, tmp795
	addl	$1, %eax	#, D.5297
	cltq
	addq	$11, %rax	#, tmp797
	movl	-96(%rbp,%rax,4), %eax	# pawns, D.5297
	testl	%eax, %eax	# D.5297
	je	.L110	#,
	.loc 1 575 0
	movl	-212(%rbp), %eax	# pawn_file, tmp798
	addl	$1, %eax	#, D.5297
	cltq
	movl	-96(%rbp,%rax,4), %eax	# pawns, D.5297
	testl	%eax, %eax	# D.5297
	jne	.L110	#,
	.loc 1 576 0
	movl	-212(%rbp), %eax	# pawn_file, tmp800
	addl	$1, %eax	#, D.5297
	cltq
	movl	-192(%rbp,%rax,4), %edx	# white_back_pawn, D.5297
	movl	-212(%rbp), %eax	# pawn_file, tmp802
	addl	$2, %eax	#, D.5297
	cltq
	movl	-144(%rbp,%rax,4), %eax	# black_back_pawn, D.5297
	cmpl	%eax, %edx	# D.5297, D.5297
	jl	.L110	#,
	.loc 1 578 0
	movl	-304(%rbp), %eax	# i, tmp805
	cltq
	movl	Xrank(,%rax,4), %edx	# Xrank, D.5297
	movl	%edx, %eax	# D.5297, tmp806
	sall	$3, %eax	#, tmp807
	subl	%edx, %eax	# D.5297, D.5297
	movl	%eax, %edx	# D.5297, D.5297
	movl	-312(%rbp), %eax	# score, score.56
	addl	%edx, %eax	# D.5297, score.57
	movl	%eax, -312(%rbp)	# score.57, score
	.loc 1 581 0
	movl	-304(%rbp), %eax	# i, tmp809
	cltq
	movl	Xrank(,%rax,4), %eax	# Xrank, D.5297
	cmpl	$7, %eax	#, D.5297
	jne	.L110	#,
	.loc 1 581 0 is_stmt 0 discriminator 1
	movl	-212(%rbp), %eax	# pawn_file, tmp810
	addl	$1, %eax	#, D.5297
	cltq
	movl	-192(%rbp,%rax,4), %eax	# white_back_pawn, D.5297
	cmpl	$5, %eax	#, D.5297
	jle	.L110	#,
	.loc 1 583 0 is_stmt 1
	movl	-312(%rbp), %eax	# score, score.58
	addl	$50, %eax	#, score.59
	movl	%eax, -312(%rbp)	# score.59, score
.L110:
	.loc 1 587 0
	movl	-212(%rbp), %eax	# pawn_file, tmp812
	subl	$1, %eax	#, D.5297
	cltq
	addq	$11, %rax	#, tmp814
	movl	-96(%rbp,%rax,4), %eax	# pawns, D.5297
	testl	%eax, %eax	# D.5297
	je	.L104	#,
	.loc 1 589 0
	movl	-212(%rbp), %eax	# pawn_file, tmp815
	subl	$1, %eax	#, D.5297
	cltq
	movl	-96(%rbp,%rax,4), %eax	# pawns, D.5297
	testl	%eax, %eax	# D.5297
	jne	.L104	#,
	.loc 1 590 0
	movl	-212(%rbp), %eax	# pawn_file, tmp817
	addl	$1, %eax	#, D.5297
	cltq
	movl	-192(%rbp,%rax,4), %edx	# white_back_pawn, D.5297
	movl	-212(%rbp), %eax	# pawn_file, tmp819
	subl	$2, %eax	#, D.5297
	cltq
	movl	-144(%rbp,%rax,4), %eax	# black_back_pawn, D.5297
	cmpl	%eax, %edx	# D.5297, D.5297
	jl	.L104	#,
	.loc 1 592 0
	movl	-304(%rbp), %eax	# i, tmp822
	cltq
	movl	Xrank(,%rax,4), %edx	# Xrank, D.5297
	movl	%edx, %eax	# D.5297, tmp823
	sall	$3, %eax	#, tmp824
	subl	%edx, %eax	# D.5297, D.5297
	movl	%eax, %edx	# D.5297, D.5297
	movl	-312(%rbp), %eax	# score, score.60
	addl	%edx, %eax	# D.5297, score.61
	movl	%eax, -312(%rbp)	# score.61, score
	.loc 1 595 0
	movl	-304(%rbp), %eax	# i, tmp826
	cltq
	movl	Xrank(,%rax,4), %eax	# Xrank, D.5297
	cmpl	$7, %eax	#, D.5297
	jne	.L104	#,
	.loc 1 595 0 is_stmt 0 discriminator 1
	movl	-212(%rbp), %eax	# pawn_file, tmp827
	subl	$1, %eax	#, D.5297
	cltq
	movl	-192(%rbp,%rax,4), %eax	# white_back_pawn, D.5297
	cmpl	$5, %eax	#, D.5297
	jle	.L104	#,
	.loc 1 597 0 is_stmt 1
	movl	-312(%rbp), %eax	# score, score.62
	addl	$50, %eax	#, score.63
	movl	%eax, -312(%rbp)	# score.63, score
.L104:
	.loc 1 604 0
	movl	-212(%rbp), %eax	# pawn_file, tmp829
	subl	$1, %eax	#, D.5297
	cltq
	addq	$11, %rax	#, tmp831
	movl	-96(%rbp,%rax,4), %eax	# pawns, D.5297
	testl	%eax, %eax	# D.5297
	jne	.L111	#,
	.loc 1 605 0
	movl	-312(%rbp), %eax	# score, score.64
	subl	$7, %eax	#, score.65
	movl	%eax, -312(%rbp)	# score.65, score
	.loc 1 607 0
	jmp	.L86	#
.L111:
	jmp	.L86	#
.L89:
	.loc 1 610 0
	movl	$0, -292(%rbp)	#, isolated
	.loc 1 611 0
	movl	$0, -288(%rbp)	#, backwards
	.loc 1 612 0
	movl	-312(%rbp), %edx	# score, score.66
	movl	-304(%rbp), %eax	# i, tmp833
	cltq
	movl	sblack_pawn(,%rax,4), %eax	# sblack_pawn, D.5297
	subl	%eax, %edx	# D.5297, score.67
	movl	%edx, %eax	# score.67, score.67
	movl	%eax, -312(%rbp)	# score.67, score
	.loc 1 613 0
	addl	$1, -280(%rbp)	#, bp
	.loc 1 617 0
	movl	-212(%rbp), %eax	# pawn_file, tmp834
	addl	$1, %eax	#, D.5297
	cltq
	movl	-144(%rbp,%rax,4), %eax	# black_back_pawn, D.5297
	cmpl	-208(%rbp), %eax	# srank, D.5297
	jge	.L112	#,
	.loc 1 618 0
	movl	-212(%rbp), %eax	# pawn_file, tmp836
	subl	$1, %eax	#, D.5297
	cltq
	movl	-144(%rbp,%rax,4), %eax	# black_back_pawn, D.5297
	cmpl	-208(%rbp), %eax	# srank, D.5297
	jge	.L112	#,
	.loc 1 619 0
	movl	-312(%rbp), %eax	# score, score.68
	addl	$8, %eax	#, score.69
	movl	%eax, -312(%rbp)	# score.69, score
	.loc 1 620 0
	movl	$1, -288(%rbp)	#, backwards
	.loc 1 622 0
	movl	-212(%rbp), %eax	# pawn_file, tmp838
	addl	$1, %eax	#, D.5297
	cltq
	movl	-96(%rbp,%rax,4), %eax	# pawns, D.5297
	testl	%eax, %eax	# D.5297
	jne	.L112	#,
	.loc 1 622 0 is_stmt 0 discriminator 1
	movl	-212(%rbp), %eax	# pawn_file, tmp840
	subl	$1, %eax	#, D.5297
	cltq
	movl	-96(%rbp,%rax,4), %eax	# pawns, D.5297
	testl	%eax, %eax	# D.5297
	jne	.L112	#,
	.loc 1 623 0 is_stmt 1
	movl	-312(%rbp), %eax	# score, score.70
	addl	$5, %eax	#, score.71
	movl	%eax, -312(%rbp)	# score.71, score
	.loc 1 624 0
	movl	$1, -292(%rbp)	#, isolated
.L112:
	.loc 1 629 0
	movl	-212(%rbp), %eax	# pawn_file, tmp843
	cltq
	addq	$11, %rax	#, tmp844
	movl	-96(%rbp,%rax,4), %eax	# pawns, D.5297
	testl	%eax, %eax	# D.5297
	jne	.L113	#,
	.loc 1 630 0
	cmpl	$0, -288(%rbp)	#, backwards
	je	.L114	#,
	.loc 1 630 0 is_stmt 0 discriminator 1
	movl	-312(%rbp), %eax	# score, score.72
	addl	$3, %eax	#, score.73
	movl	%eax, -312(%rbp)	# score.73, score
.L114:
	.loc 1 631 0 is_stmt 1
	cmpl	$0, -292(%rbp)	#, isolated
	je	.L113	#,
	.loc 1 631 0 is_stmt 0 discriminator 1
	movl	-312(%rbp), %eax	# score, score.74
	addl	$5, %eax	#, score.75
	movl	%eax, -312(%rbp)	# score.75, score
.L113:
	.loc 1 635 0 is_stmt 1
	movl	-212(%rbp), %eax	# pawn_file, tmp846
	cltq
	movl	-96(%rbp,%rax,4), %eax	# pawns, D.5297
	cmpl	$1, %eax	#, D.5297
	jle	.L115	#,
	.loc 1 636 0
	movl	-212(%rbp), %eax	# pawn_file, tmp848
	cltq
	movl	-96(%rbp,%rax,4), %eax	# pawns, D.5297
	leal	-1(%rax), %edx	#, D.5297
	movl	%edx, %eax	# D.5297, tmp849
	addl	%eax, %eax	# tmp849
	addl	%eax, %edx	# tmp849, D.5297
	movl	-312(%rbp), %eax	# score, score.76
	addl	%edx, %eax	# D.5297, score.77
	movl	%eax, -312(%rbp)	# score.77, score
.L115:
	.loc 1 639 0
	movl	-212(%rbp), %eax	# pawn_file, tmp851
	cltq
	addq	$11, %rax	#, tmp852
	movl	-96(%rbp,%rax,4), %eax	# pawns, D.5297
	testl	%eax, %eax	# D.5297
	jne	.L116	#,
	.loc 1 639 0 is_stmt 0 discriminator 1
	movl	-212(%rbp), %eax	# pawn_file, tmp853
	subl	$1, %eax	#, D.5297
	cltq
	movl	-192(%rbp,%rax,4), %eax	# white_back_pawn, D.5297
	cmpl	-208(%rbp), %eax	# srank, D.5297
	jl	.L116	#,
	.loc 1 640 0 is_stmt 1 discriminator 1
	movl	-212(%rbp), %eax	# pawn_file, tmp855
	addl	$1, %eax	#, D.5297
	cltq
	movl	-192(%rbp,%rax,4), %eax	# white_back_pawn, D.5297
	.loc 1 639 0 discriminator 1
	cmpl	-208(%rbp), %eax	# srank, D.5297
	jl	.L116	#,
	.loc 1 641 0
	movl	-304(%rbp), %eax	# i, tmp858
	cltq
	movl	sblack_pawn(,%rax,4), %edx	# sblack_pawn, D.5297
	movl	%edx, %eax	# D.5297, tmp859
	addl	%eax, %eax	# tmp859
	addl	%edx, %eax	# D.5297, D.5297
	negl	%eax	# D.5297
	leal	-30(%rax), %edx	#, D.5297
	movl	-312(%rbp), %eax	# score, score.78
	addl	%edx, %eax	# D.5297, score.79
	movl	%eax, -312(%rbp)	# score.79, score
	.loc 1 643 0
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.80
	testl	%eax, %eax	# white_to_move.80
	jne	.L117	#,
	.loc 1 647 0
	movl	-304(%rbp), %eax	# i, tmp861
	cltq
	movl	Xfile(,%rax,4), %eax	# Xfile, D.5297
	addl	$25, %eax	#, tmp862
	movl	%eax, -204(%rbp)	# tmp862, tmp
	.loc 1 649 0
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.81
	cltq
	movl	Xrank(,%rax,4), %edx	# Xrank, D.5297
	movl	-204(%rbp), %eax	# tmp, tmp865
	cltq
	movl	Xrank(,%rax,4), %eax	# Xrank, D.5297
	subl	%eax, %edx	# D.5297, D.5297
	movl	%edx, %eax	# D.5297, tmp866
	sarl	$31, %eax	#, tmp866
	xorl	%eax, %edx	# tmp866, D.5297
	subl	%eax, %edx	# tmp866, D.5297
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.82
	cltq
	movl	Xfile(,%rax,4), %ecx	# Xfile, D.5297
	movl	-204(%rbp), %eax	# tmp, tmp869
	cltq
	movl	Xfile(,%rax,4), %eax	# Xfile, D.5297
	subl	%eax, %ecx	# D.5297, D.5297
	movl	%ecx, %eax	# D.5297, D.5297
	movl	%eax, %ecx	# D.5297, tmp870
	sarl	$31, %ecx	#, tmp870
	xorl	%ecx, %eax	# tmp870, D.5297
	subl	%ecx, %eax	# tmp870, D.5297
	cmpl	%eax, %edx	# D.5297, D.5297
	cmovge	%edx, %eax	# D.5297,, D.5297
	movl	%eax, %ecx	# D.5297, D.5297
	.loc 1 650 0
	movl	-204(%rbp), %eax	# tmp, tmp872
	cltq
	movl	Xrank(,%rax,4), %edx	# Xrank, D.5297
	movl	-304(%rbp), %eax	# i, tmp874
	cltq
	movl	Xrank(,%rax,4), %eax	# Xrank, D.5297
	subl	%eax, %edx	# D.5297, D.5297
	movl	%edx, %eax	# D.5297, D.5297
	cltd
	xorl	%edx, %eax	# tmp875, D.5297
	subl	%edx, %eax	# tmp875, D.5297
	.loc 1 649 0
	cmpl	%eax, %ecx	# D.5297, D.5297
	jle	.L119	#,
	.loc 1 652 0
	subl	$800, -224(%rbp)	#, bpotential
	jmp	.L119	#
.L117:
	.loc 1 659 0
	movl	-304(%rbp), %eax	# i, tmp877
	cltq
	movl	Xfile(,%rax,4), %eax	# Xfile, D.5297
	addl	$25, %eax	#, tmp878
	movl	%eax, -204(%rbp)	# tmp878, tmp
	.loc 1 661 0
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.83
	cltq
	movl	Xrank(,%rax,4), %edx	# Xrank, D.5297
	movl	-204(%rbp), %eax	# tmp, tmp881
	cltq
	movl	Xrank(,%rax,4), %eax	# Xrank, D.5297
	subl	%eax, %edx	# D.5297, D.5297
	movl	%edx, %eax	# D.5297, tmp882
	sarl	$31, %eax	#, tmp882
	xorl	%eax, %edx	# tmp882, D.5297
	subl	%eax, %edx	# tmp882, D.5297
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.84
	cltq
	movl	Xfile(,%rax,4), %ecx	# Xfile, D.5297
	movl	-204(%rbp), %eax	# tmp, tmp885
	cltq
	movl	Xfile(,%rax,4), %eax	# Xfile, D.5297
	subl	%eax, %ecx	# D.5297, D.5297
	movl	%ecx, %eax	# D.5297, D.5297
	movl	%eax, %ecx	# D.5297, tmp886
	sarl	$31, %ecx	#, tmp886
	xorl	%ecx, %eax	# tmp886, D.5297
	subl	%ecx, %eax	# tmp886, D.5297
	cmpl	%eax, %edx	# D.5297, D.5297
	cmovge	%edx, %eax	# D.5297,, D.5297
	leal	-1(%rax), %ecx	#, D.5297
	.loc 1 662 0
	movl	-204(%rbp), %eax	# tmp, tmp888
	cltq
	movl	Xrank(,%rax,4), %edx	# Xrank, D.5297
	movl	-304(%rbp), %eax	# i, tmp890
	cltq
	movl	Xrank(,%rax,4), %eax	# Xrank, D.5297
	subl	%eax, %edx	# D.5297, D.5297
	movl	%edx, %eax	# D.5297, D.5297
	cltd
	xorl	%edx, %eax	# tmp891, D.5297
	subl	%edx, %eax	# tmp891, D.5297
	.loc 1 661 0
	cmpl	%eax, %ecx	# D.5297, D.5297
	jle	.L119	#,
	.loc 1 664 0
	subl	$800, -224(%rbp)	#, bpotential
.L119:
	.loc 1 669 0
	movl	-304(%rbp), %eax	# i, tmp893
	cltq
	movl	Xfile(,%rax,4), %eax	# Xfile, D.5297
	cmpl	$1, %eax	#, D.5297
	je	.L120	#,
	.loc 1 669 0 is_stmt 0 discriminator 1
	movl	-304(%rbp), %eax	# i, tmp895
	cltq
	movl	Xfile(,%rax,4), %eax	# Xfile, D.5297
	cmpl	$8, %eax	#, D.5297
	jne	.L121	#,
.L120:
	.loc 1 670 0 is_stmt 1
	movl	-304(%rbp), %eax	# i, tmp897
	cltq
	movl	sblack_pawn(,%rax,4), %eax	# sblack_pawn, D.5297
	movl	$-6, %edx	#, tmp898
	subl	%eax, %edx	# D.5297, D.5297
	movl	%edx, %eax	# D.5297, D.5297
	leal	(%rax,%rax), %edx	#, D.5297
	movl	-312(%rbp), %eax	# score, score.85
	addl	%edx, %eax	# D.5297, score.86
	movl	%eax, -312(%rbp)	# score.86, score
.L121:
	.loc 1 673 0
	cmpl	$0, -292(%rbp)	#, isolated
	jne	.L116	#,
	.loc 1 675 0
	movl	-312(%rbp), %eax	# score, score.87
	subl	$12, %eax	#, score.88
	movl	%eax, -312(%rbp)	# score.88, score
	.loc 1 678 0
	movl	-212(%rbp), %eax	# pawn_file, tmp899
	addl	$1, %eax	#, D.5297
	cltq
	movl	-96(%rbp,%rax,4), %eax	# pawns, D.5297
	testl	%eax, %eax	# D.5297
	je	.L122	#,
	.loc 1 680 0
	movl	-212(%rbp), %eax	# pawn_file, tmp901
	addl	$1, %eax	#, D.5297
	cltq
	addq	$11, %rax	#, tmp903
	movl	-96(%rbp,%rax,4), %eax	# pawns, D.5297
	testl	%eax, %eax	# D.5297
	jne	.L122	#,
	.loc 1 681 0
	movl	-212(%rbp), %eax	# pawn_file, tmp904
	addl	$1, %eax	#, D.5297
	cltq
	movl	-144(%rbp,%rax,4), %edx	# black_back_pawn, D.5297
	movl	-212(%rbp), %eax	# pawn_file, tmp906
	addl	$2, %eax	#, D.5297
	cltq
	movl	-192(%rbp,%rax,4), %eax	# white_back_pawn, D.5297
	cmpl	%eax, %edx	# D.5297, D.5297
	jg	.L122	#,
	.loc 1 683 0
	movl	-304(%rbp), %eax	# i, tmp909
	cltq
	movl	Xrank(,%rax,4), %eax	# Xrank, D.5297
	leal	-9(%rax), %edx	#, D.5297
	movl	%edx, %eax	# D.5297, tmp910
	sall	$3, %eax	#, tmp911
	subl	%edx, %eax	# D.5297, D.5297
	movl	%eax, %edx	# D.5297, D.5297
	movl	-312(%rbp), %eax	# score, score.89
	addl	%edx, %eax	# D.5297, score.90
	movl	%eax, -312(%rbp)	# score.90, score
	.loc 1 686 0
	movl	-304(%rbp), %eax	# i, tmp913
	cltq
	movl	Xrank(,%rax,4), %eax	# Xrank, D.5297
	cmpl	$2, %eax	#, D.5297
	jne	.L122	#,
	.loc 1 686 0 is_stmt 0 discriminator 1
	movl	-212(%rbp), %eax	# pawn_file, tmp914
	addl	$1, %eax	#, D.5297
	cltq
	movl	-144(%rbp,%rax,4), %eax	# black_back_pawn, D.5297
	cmpl	$3, %eax	#, D.5297
	jg	.L122	#,
	.loc 1 688 0 is_stmt 1
	movl	-312(%rbp), %eax	# score, score.91
	subl	$50, %eax	#, score.92
	movl	%eax, -312(%rbp)	# score.92, score
.L122:
	.loc 1 692 0
	movl	-212(%rbp), %eax	# pawn_file, tmp916
	subl	$1, %eax	#, D.5297
	cltq
	movl	-96(%rbp,%rax,4), %eax	# pawns, D.5297
	testl	%eax, %eax	# D.5297
	je	.L116	#,
	.loc 1 694 0
	movl	-212(%rbp), %eax	# pawn_file, tmp918
	subl	$1, %eax	#, D.5297
	cltq
	addq	$11, %rax	#, tmp920
	movl	-96(%rbp,%rax,4), %eax	# pawns, D.5297
	testl	%eax, %eax	# D.5297
	jne	.L116	#,
	.loc 1 695 0
	movl	-212(%rbp), %eax	# pawn_file, tmp921
	subl	$1, %eax	#, D.5297
	cltq
	movl	-144(%rbp,%rax,4), %edx	# black_back_pawn, D.5297
	movl	-212(%rbp), %eax	# pawn_file, tmp923
	subl	$2, %eax	#, D.5297
	cltq
	movl	-192(%rbp,%rax,4), %eax	# white_back_pawn, D.5297
	cmpl	%eax, %edx	# D.5297, D.5297
	jg	.L116	#,
	.loc 1 697 0
	movl	-304(%rbp), %eax	# i, tmp926
	cltq
	movl	Xrank(,%rax,4), %eax	# Xrank, D.5297
	leal	-9(%rax), %edx	#, D.5297
	movl	%edx, %eax	# D.5297, tmp927
	sall	$3, %eax	#, tmp928
	subl	%edx, %eax	# D.5297, D.5297
	movl	%eax, %edx	# D.5297, D.5297
	movl	-312(%rbp), %eax	# score, score.93
	addl	%edx, %eax	# D.5297, score.94
	movl	%eax, -312(%rbp)	# score.94, score
	.loc 1 700 0
	movl	-304(%rbp), %eax	# i, tmp930
	cltq
	movl	Xrank(,%rax,4), %eax	# Xrank, D.5297
	cmpl	$2, %eax	#, D.5297
	jne	.L116	#,
	.loc 1 700 0 is_stmt 0 discriminator 1
	movl	-212(%rbp), %eax	# pawn_file, tmp931
	subl	$1, %eax	#, D.5297
	cltq
	movl	-144(%rbp,%rax,4), %eax	# black_back_pawn, D.5297
	cmpl	$3, %eax	#, D.5297
	jg	.L116	#,
	.loc 1 702 0 is_stmt 1
	movl	-312(%rbp), %eax	# score, score.95
	subl	$50, %eax	#, score.96
	movl	%eax, -312(%rbp)	# score.96, score
.L116:
	.loc 1 710 0
	movl	-212(%rbp), %eax	# pawn_file, tmp933
	subl	$1, %eax	#, D.5297
	cltq
	movl	-96(%rbp,%rax,4), %eax	# pawns, D.5297
	testl	%eax, %eax	# D.5297
	jne	.L123	#,
	.loc 1 711 0
	movl	-312(%rbp), %eax	# score, score.97
	addl	$7, %eax	#, score.98
	movl	%eax, -312(%rbp)	# score.98, score
	.loc 1 713 0
	jmp	.L86	#
.L123:
	jmp	.L86	#
.L94:
	.loc 1 716 0
	addl	$1, -252(%rbp)	#, wr
	.loc 1 718 0
	cmpl	$1, -252(%rbp)	#, wr
	jne	.L124	#,
	.loc 1 720 0
	movl	-304(%rbp), %eax	# i, tmp936
	cltq
	movl	Xfile(,%rax,4), %eax	# Xfile, tmp937
	movl	%eax, -232(%rbp)	# tmp937, fwrook
	.loc 1 721 0
	movl	-304(%rbp), %eax	# i, tmp939
	cltq
	movl	Xrank(,%rax,4), %eax	# Xrank, tmp940
	movl	%eax, -236(%rbp)	# tmp940, rwrook
.L124:
	.loc 1 726 0
	cmpl	$7, -208(%rbp)	#, srank
	jne	.L125	#,
	.loc 1 728 0
	movl	-312(%rbp), %eax	# score, score.99
	addl	$25, %eax	#, score.100
	movl	%eax, -312(%rbp)	# score.100, score
	.loc 1 729 0
	cmpl	$2, -252(%rbp)	#, wr
	jne	.L125	#,
	.loc 1 729 0 is_stmt 0 discriminator 1
	cmpl	$7, -236(%rbp)	#, rwrook
	jne	.L125	#,
	.loc 1 731 0 is_stmt 1
	movl	-312(%rbp), %eax	# score, score.101
	addl	$10, %eax	#, score.102
	movl	%eax, -312(%rbp)	# score.102, score
.L125:
	.loc 1 737 0
	movl	-212(%rbp), %eax	# pawn_file, tmp942
	cltq
	addq	$11, %rax	#, tmp943
	movl	-96(%rbp,%rax,4), %eax	# pawns, D.5297
	testl	%eax, %eax	# D.5297
	jne	.L126	#,
	.loc 1 739 0
	movl	-312(%rbp), %eax	# score, score.103
	addl	$5, %eax	#, score.104
	movl	%eax, -312(%rbp)	# score.104, score
	.loc 1 741 0
	cmpl	$2, -252(%rbp)	#, wr
	jne	.L127	#,
	.loc 1 741 0 is_stmt 0 discriminator 1
	movl	-304(%rbp), %eax	# i, tmp945
	cltq
	movl	Xfile(,%rax,4), %eax	# Xfile, D.5297
	cmpl	-232(%rbp), %eax	# fwrook, D.5297
	jne	.L127	#,
	.loc 1 743 0 is_stmt 1
	movl	-312(%rbp), %eax	# score, score.105
	addl	$12, %eax	#, score.106
	movl	%eax, -312(%rbp)	# score.106, score
.L127:
	.loc 1 746 0
	movl	-212(%rbp), %eax	# pawn_file, tmp947
	cltq
	movl	-96(%rbp,%rax,4), %eax	# pawns, D.5297
	testl	%eax, %eax	# D.5297
	jne	.L126	#,
	.loc 1 748 0
	movl	-312(%rbp), %eax	# score, score.107
	addl	$3, %eax	#, score.108
	movl	%eax, -312(%rbp)	# score.108, score
	.loc 1 752 0
	jmp	.L86	#
.L126:
	jmp	.L86	#
.L95:
	.loc 1 755 0
	addl	$1, -248(%rbp)	#, br
	.loc 1 756 0
	cmpl	$1, -248(%rbp)	#, br
	jne	.L128	#,
	.loc 1 758 0
	movl	-304(%rbp), %eax	# i, tmp949
	cltq
	movl	Xfile(,%rax,4), %eax	# Xfile, tmp950
	movl	%eax, -240(%rbp)	# tmp950, fbrook
	.loc 1 759 0
	movl	-304(%rbp), %eax	# i, tmp952
	cltq
	movl	Xrank(,%rax,4), %eax	# Xrank, tmp953
	movl	%eax, -244(%rbp)	# tmp953, rbrook
.L128:
	.loc 1 763 0
	cmpl	$2, -208(%rbp)	#, srank
	jne	.L129	#,
	.loc 1 765 0
	movl	-312(%rbp), %eax	# score, score.109
	subl	$25, %eax	#, score.110
	movl	%eax, -312(%rbp)	# score.110, score
	.loc 1 766 0
	cmpl	$2, -252(%rbp)	#, wr
	jne	.L129	#,
	.loc 1 766 0 is_stmt 0 discriminator 1
	cmpl	$2, -244(%rbp)	#, rbrook
	jne	.L129	#,
	.loc 1 768 0 is_stmt 1
	movl	-312(%rbp), %eax	# score, score.111
	subl	$10, %eax	#, score.112
	movl	%eax, -312(%rbp)	# score.112, score
.L129:
	.loc 1 773 0
	movl	-212(%rbp), %eax	# pawn_file, tmp955
	cltq
	movl	-96(%rbp,%rax,4), %eax	# pawns, D.5297
	testl	%eax, %eax	# D.5297
	jne	.L130	#,
	.loc 1 775 0
	movl	-312(%rbp), %eax	# score, score.113
	subl	$5, %eax	#, score.114
	movl	%eax, -312(%rbp)	# score.114, score
	.loc 1 777 0
	cmpl	$2, -248(%rbp)	#, br
	jne	.L131	#,
	.loc 1 777 0 is_stmt 0 discriminator 1
	movl	-304(%rbp), %eax	# i, tmp957
	cltq
	movl	Xfile(,%rax,4), %eax	# Xfile, D.5297
	cmpl	-240(%rbp), %eax	# fbrook, D.5297
	jne	.L131	#,
	.loc 1 779 0 is_stmt 1
	movl	-312(%rbp), %eax	# score, score.115
	subl	$12, %eax	#, score.116
	movl	%eax, -312(%rbp)	# score.116, score
.L131:
	.loc 1 782 0
	movl	-212(%rbp), %eax	# pawn_file, tmp959
	cltq
	addq	$11, %rax	#, tmp960
	movl	-96(%rbp,%rax,4), %eax	# pawns, D.5297
	testl	%eax, %eax	# D.5297
	jne	.L130	#,
	.loc 1 784 0
	movl	-312(%rbp), %eax	# score, score.117
	subl	$3, %eax	#, score.118
	movl	%eax, -312(%rbp)	# score.118, score
	.loc 1 788 0
	jmp	.L86	#
.L130:
	jmp	.L86	#
.L98:
	.loc 1 791 0
	addl	$1, -268(%rbp)	#, wb
	.loc 1 792 0
	jmp	.L86	#
.L99:
	.loc 1 795 0
	addl	$1, -264(%rbp)	#, bb
	.loc 1 796 0
	jmp	.L86	#
.L90:
	.loc 1 799 0
	addl	$1, -276(%rbp)	#, wn
	.loc 1 800 0
	jmp	.L86	#
.L91:
	.loc 1 803 0
	addl	$1, -272(%rbp)	#, bn
	.loc 1 804 0
	jmp	.L86	#
.L96:
	.loc 1 807 0
	addl	$1, -260(%rbp)	#, wq
	.loc 1 808 0
	jmp	.L86	#
.L97:
	.loc 1 811 0
	addl	$1, -256(%rbp)	#, bq
	.loc 1 812 0
	jmp	.L86	#
.L92:
	.loc 1 815 0
	movl	wmat(%rip), %eax	# wmat, wmat.119
	cmpl	$1300, %eax	#, wmat.119
	jle	.L132	#,
	.loc 1 817 0
	movl	-304(%rbp), %eax	# i, tmp962
	cltq
	movl	swhite_king(,%rax,4), %edx	# swhite_king, D.5297
	movl	-312(%rbp), %eax	# score, score.120
	addl	%edx, %eax	# D.5297, score.121
	movl	%eax, -312(%rbp)	# score.121, score
	.loc 1 821 0
	movl	white_castled(%rip), %eax	# white_castled, white_castled.122
	cmpl	$2, %eax	#, white_castled.122
	jne	.L133	#,
	.loc 1 822 0
	movl	-312(%rbp), %eax	# score, score.123
	addl	$15, %eax	#, score.124
	movl	%eax, -312(%rbp)	# score.124, score
	jmp	.L134	#
.L133:
	.loc 1 823 0
	movl	white_castled(%rip), %eax	# white_castled, white_castled.125
	cmpl	$1, %eax	#, white_castled.125
	jne	.L135	#,
	.loc 1 824 0
	movl	-312(%rbp), %eax	# score, score.126
	addl	$25, %eax	#, score.127
	movl	%eax, -312(%rbp)	# score.127, score
	jmp	.L134	#
.L135:
	.loc 1 825 0
	movl	moved+120(%rip), %eax	# moved, D.5297
	testl	%eax, %eax	# D.5297
	je	.L134	#,
	.loc 1 826 0
	movl	-312(%rbp), %eax	# score, score.128
	subl	$10, %eax	#, score.129
	movl	%eax, -312(%rbp)	# score.129, score
	.loc 1 830 0
	movl	-212(%rbp), %eax	# pawn_file, tmp964
	cltq
	addq	$11, %rax	#, tmp965
	movl	-96(%rbp,%rax,4), %eax	# pawns, D.5297
	testl	%eax, %eax	# D.5297
	jne	.L134	#,
	.loc 1 831 0
	movl	-312(%rbp), %eax	# score, score.130
	subl	$15, %eax	#, score.131
	movl	%eax, -312(%rbp)	# score.131, score
.L134:
	.loc 1 837 0
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.132
	cltq
	movl	Xfile(,%rax,4), %eax	# Xfile, D.5297
	cmpl	$4, %eax	#, D.5297
	je	.L136	#,
	.loc 1 837 0 is_stmt 0 discriminator 1
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.133
	cltq
	movl	Xfile(,%rax,4), %eax	# Xfile, D.5297
	cmpl	$5, %eax	#, D.5297
	je	.L136	#,
	.loc 1 839 0 is_stmt 1
	movl	-212(%rbp), %eax	# pawn_file, tmp969
	cltq
	movl	-192(%rbp,%rax,4), %eax	# white_back_pawn, D.5297
	cmpl	-208(%rbp), %eax	# srank, D.5297
	jle	.L137	#,
	.loc 1 839 0 is_stmt 0 discriminator 1
	movl	-212(%rbp), %eax	# pawn_file, tmp971
	cltq
	addq	$11, %rax	#, tmp972
	movl	-96(%rbp,%rax,4), %eax	# pawns, D.5297
	testl	%eax, %eax	# D.5297
	je	.L137	#,
	.loc 1 840 0 is_stmt 1
	movl	-212(%rbp), %eax	# pawn_file, tmp974
	cltq
	movl	-192(%rbp,%rax,4), %eax	# white_back_pawn, D.5297
	movl	-208(%rbp), %edx	# srank, tmp975
	subl	%eax, %edx	# D.5297, D.5297
	movl	%edx, %eax	# D.5297, D.5297
	leal	1(%rax), %edx	#, D.5297
	movl	%edx, %eax	# D.5297, tmp976
	sall	$3, %eax	#, tmp976
	addl	%eax, %edx	# tmp976, D.5297
	movl	-312(%rbp), %eax	# score, score.134
	addl	%edx, %eax	# D.5297, score.135
	movl	%eax, -312(%rbp)	# score.135, score
	jmp	.L138	#
.L137:
	.loc 1 842 0
	movl	-312(%rbp), %eax	# score, score.136
	subl	$22, %eax	#, score.137
	movl	%eax, -312(%rbp)	# score.137, score
.L138:
	.loc 1 843 0
	movl	-212(%rbp), %eax	# pawn_file, tmp977
	addl	$1, %eax	#, D.5297
	cltq
	movl	-192(%rbp,%rax,4), %eax	# white_back_pawn, D.5297
	cmpl	-208(%rbp), %eax	# srank, D.5297
	jle	.L139	#,
	.loc 1 843 0 is_stmt 0 discriminator 1
	movl	-212(%rbp), %eax	# pawn_file, tmp979
	addl	$1, %eax	#, D.5297
	cltq
	addq	$11, %rax	#, tmp981
	movl	-96(%rbp,%rax,4), %eax	# pawns, D.5297
	testl	%eax, %eax	# D.5297
	je	.L139	#,
	.loc 1 844 0 is_stmt 1
	movl	-212(%rbp), %eax	# pawn_file, tmp982
	addl	$1, %eax	#, D.5297
	cltq
	movl	-192(%rbp,%rax,4), %eax	# white_back_pawn, D.5297
	movl	-208(%rbp), %edx	# srank, tmp984
	subl	%eax, %edx	# D.5297, D.5297
	movl	%edx, %eax	# D.5297, D.5297
	addl	$1, %eax	#, D.5297
	leal	0(,%rax,8), %edx	#, D.5297
	movl	-312(%rbp), %eax	# score, score.138
	addl	%edx, %eax	# D.5297, score.139
	movl	%eax, -312(%rbp)	# score.139, score
	jmp	.L140	#
.L139:
	.loc 1 846 0
	movl	-312(%rbp), %eax	# score, score.140
	subl	$16, %eax	#, score.141
	movl	%eax, -312(%rbp)	# score.141, score
.L140:
	.loc 1 847 0
	movl	-212(%rbp), %eax	# pawn_file, tmp985
	subl	$1, %eax	#, D.5297
	cltq
	movl	-192(%rbp,%rax,4), %eax	# white_back_pawn, D.5297
	cmpl	-208(%rbp), %eax	# srank, D.5297
	jle	.L141	#,
	.loc 1 847 0 is_stmt 0 discriminator 1
	movl	-212(%rbp), %eax	# pawn_file, tmp987
	subl	$1, %eax	#, D.5297
	cltq
	addq	$11, %rax	#, tmp989
	movl	-96(%rbp,%rax,4), %eax	# pawns, D.5297
	testl	%eax, %eax	# D.5297
	je	.L141	#,
	.loc 1 848 0 is_stmt 1
	movl	-212(%rbp), %eax	# pawn_file, tmp990
	subl	$1, %eax	#, D.5297
	cltq
	movl	-192(%rbp,%rax,4), %eax	# white_back_pawn, D.5297
	movl	-208(%rbp), %edx	# srank, tmp992
	subl	%eax, %edx	# D.5297, D.5297
	movl	%edx, %eax	# D.5297, D.5297
	addl	$1, %eax	#, D.5297
	leal	0(,%rax,8), %edx	#, D.5297
	movl	-312(%rbp), %eax	# score, score.142
	addl	%edx, %eax	# D.5297, score.143
	movl	%eax, -312(%rbp)	# score.143, score
	.loc 1 847 0
	jmp	.L143	#
.L141:
	.loc 1 850 0
	movl	-312(%rbp), %eax	# score, score.144
	subl	$16, %eax	#, score.145
	movl	%eax, -312(%rbp)	# score.145, score
	.loc 1 847 0
	jmp	.L143	#
.L136:
	.loc 1 855 0
	movl	-312(%rbp), %eax	# score, score.146
	subl	$10, %eax	#, score.147
	movl	%eax, -312(%rbp)	# score.147, score
	jmp	.L144	#
.L143:
	jmp	.L144	#
.L132:
	.loc 1 860 0
	movl	-304(%rbp), %eax	# i, tmp994
	cltq
	movl	send_king(,%rax,4), %edx	# send_king, D.5297
	movl	-312(%rbp), %eax	# score, score.148
	addl	%edx, %eax	# D.5297, score.149
	movl	%eax, -312(%rbp)	# score.149, score
	.loc 1 862 0
	jmp	.L86	#
.L144:
	jmp	.L86	#
.L93:
	.loc 1 865 0
	movl	bmat(%rip), %eax	# bmat, bmat.150
	cmpl	$1300, %eax	#, bmat.150
	jle	.L145	#,
	.loc 1 867 0
	movl	-312(%rbp), %edx	# score, score.151
	movl	-304(%rbp), %eax	# i, tmp996
	cltq
	movl	sblack_king(,%rax,4), %eax	# sblack_king, D.5297
	subl	%eax, %edx	# D.5297, score.152
	movl	%edx, %eax	# score.152, score.152
	movl	%eax, -312(%rbp)	# score.152, score
	.loc 1 871 0
	movl	black_castled(%rip), %eax	# black_castled, black_castled.153
	cmpl	$4, %eax	#, black_castled.153
	jne	.L146	#,
	.loc 1 872 0
	movl	-312(%rbp), %eax	# score, score.154
	subl	$15, %eax	#, score.155
	movl	%eax, -312(%rbp)	# score.155, score
	jmp	.L147	#
.L146:
	.loc 1 873 0
	movl	black_castled(%rip), %eax	# black_castled, black_castled.156
	cmpl	$3, %eax	#, black_castled.156
	jne	.L148	#,
	.loc 1 874 0
	movl	-312(%rbp), %eax	# score, score.157
	subl	$25, %eax	#, score.158
	movl	%eax, -312(%rbp)	# score.158, score
	jmp	.L147	#
.L148:
	.loc 1 875 0
	movl	moved+456(%rip), %eax	# moved, D.5297
	testl	%eax, %eax	# D.5297
	je	.L147	#,
	.loc 1 876 0
	movl	-312(%rbp), %eax	# score, score.159
	addl	$10, %eax	#, score.160
	movl	%eax, -312(%rbp)	# score.160, score
	.loc 1 880 0
	movl	-212(%rbp), %eax	# pawn_file, tmp998
	cltq
	movl	-96(%rbp,%rax,4), %eax	# pawns, D.5297
	testl	%eax, %eax	# D.5297
	jne	.L147	#,
	.loc 1 881 0
	movl	-312(%rbp), %eax	# score, score.161
	addl	$15, %eax	#, score.162
	movl	%eax, -312(%rbp)	# score.162, score
.L147:
	.loc 1 887 0
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.163
	cltq
	movl	Xfile(,%rax,4), %eax	# Xfile, D.5297
	cmpl	$4, %eax	#, D.5297
	je	.L149	#,
	.loc 1 887 0 is_stmt 0 discriminator 1
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.164
	cltq
	movl	Xfile(,%rax,4), %eax	# Xfile, D.5297
	cmpl	$5, %eax	#, D.5297
	je	.L149	#,
	.loc 1 889 0 is_stmt 1
	movl	-212(%rbp), %eax	# pawn_file, tmp1002
	cltq
	movl	-144(%rbp,%rax,4), %eax	# black_back_pawn, D.5297
	cmpl	-208(%rbp), %eax	# srank, D.5297
	jge	.L150	#,
	.loc 1 889 0 is_stmt 0 discriminator 1
	movl	-212(%rbp), %eax	# pawn_file, tmp1004
	cltq
	movl	-96(%rbp,%rax,4), %eax	# pawns, D.5297
	testl	%eax, %eax	# D.5297
	je	.L150	#,
	.loc 1 890 0 is_stmt 1
	movl	-212(%rbp), %eax	# pawn_file, tmp1006
	cltq
	movl	-144(%rbp,%rax,4), %eax	# black_back_pawn, D.5297
	movl	-208(%rbp), %edx	# srank, tmp1007
	subl	%eax, %edx	# D.5297, D.5297
	movl	%edx, %eax	# D.5297, D.5297
	subl	$1, %eax	#, D.5297
	cltq
	movl	srev_rank(,%rax,4), %edx	# srev_rank, D.5297
	movl	%edx, %eax	# D.5297, tmp1009
	sall	$3, %eax	#, tmp1009
	addl	%eax, %edx	# tmp1009, D.5297
	movl	-312(%rbp), %eax	# score, score.165
	addl	%edx, %eax	# D.5297, score.166
	movl	%eax, -312(%rbp)	# score.166, score
	jmp	.L151	#
.L150:
	.loc 1 892 0
	movl	-312(%rbp), %eax	# score, score.167
	addl	$22, %eax	#, score.168
	movl	%eax, -312(%rbp)	# score.168, score
.L151:
	.loc 1 893 0
	movl	-212(%rbp), %eax	# pawn_file, tmp1010
	addl	$1, %eax	#, D.5297
	cltq
	movl	-144(%rbp,%rax,4), %eax	# black_back_pawn, D.5297
	cmpl	-208(%rbp), %eax	# srank, D.5297
	jge	.L152	#,
	.loc 1 893 0 is_stmt 0 discriminator 1
	movl	-212(%rbp), %eax	# pawn_file, tmp1012
	addl	$1, %eax	#, D.5297
	cltq
	movl	-96(%rbp,%rax,4), %eax	# pawns, D.5297
	testl	%eax, %eax	# D.5297
	je	.L152	#,
	.loc 1 894 0 is_stmt 1
	movl	-212(%rbp), %eax	# pawn_file, tmp1014
	addl	$1, %eax	#, D.5297
	cltq
	movl	-144(%rbp,%rax,4), %eax	# black_back_pawn, D.5297
	movl	-208(%rbp), %edx	# srank, tmp1016
	subl	%eax, %edx	# D.5297, D.5297
	movl	%edx, %eax	# D.5297, D.5297
	subl	$1, %eax	#, D.5297
	cltq
	movl	srev_rank(,%rax,4), %eax	# srev_rank, D.5297
	leal	0(,%rax,8), %edx	#, D.5297
	movl	-312(%rbp), %eax	# score, score.169
	addl	%edx, %eax	# D.5297, score.170
	movl	%eax, -312(%rbp)	# score.170, score
	jmp	.L153	#
.L152:
	.loc 1 896 0
	movl	-312(%rbp), %eax	# score, score.171
	addl	$16, %eax	#, score.172
	movl	%eax, -312(%rbp)	# score.172, score
.L153:
	.loc 1 897 0
	movl	-212(%rbp), %eax	# pawn_file, tmp1018
	subl	$1, %eax	#, D.5297
	cltq
	movl	-144(%rbp,%rax,4), %eax	# black_back_pawn, D.5297
	cmpl	-208(%rbp), %eax	# srank, D.5297
	jge	.L154	#,
	.loc 1 897 0 is_stmt 0 discriminator 1
	movl	-212(%rbp), %eax	# pawn_file, tmp1020
	subl	$1, %eax	#, D.5297
	cltq
	movl	-96(%rbp,%rax,4), %eax	# pawns, D.5297
	testl	%eax, %eax	# D.5297
	je	.L154	#,
	.loc 1 898 0 is_stmt 1
	movl	-212(%rbp), %eax	# pawn_file, tmp1022
	subl	$1, %eax	#, D.5297
	cltq
	movl	-144(%rbp,%rax,4), %eax	# black_back_pawn, D.5297
	movl	-208(%rbp), %edx	# srank, tmp1024
	subl	%eax, %edx	# D.5297, D.5297
	movl	%edx, %eax	# D.5297, D.5297
	subl	$1, %eax	#, D.5297
	cltq
	movl	srev_rank(,%rax,4), %eax	# srev_rank, D.5297
	leal	0(,%rax,8), %edx	#, D.5297
	movl	-312(%rbp), %eax	# score, score.173
	addl	%edx, %eax	# D.5297, score.174
	movl	%eax, -312(%rbp)	# score.174, score
	.loc 1 897 0
	jmp	.L156	#
.L154:
	.loc 1 900 0
	movl	-312(%rbp), %eax	# score, score.175
	addl	$16, %eax	#, score.176
	movl	%eax, -312(%rbp)	# score.176, score
	.loc 1 897 0
	jmp	.L156	#
.L149:
	.loc 1 904 0
	movl	-312(%rbp), %eax	# score, score.177
	addl	$10, %eax	#, score.178
	movl	%eax, -312(%rbp)	# score.178, score
	jmp	.L157	#
.L156:
	jmp	.L157	#
.L145:
	.loc 1 909 0
	movl	-312(%rbp), %edx	# score, score.179
	movl	-304(%rbp), %eax	# i, tmp1027
	cltq
	movl	send_king(,%rax,4), %eax	# send_king, D.5297
	subl	%eax, %edx	# D.5297, score.180
	movl	%edx, %eax	# score.180, score.180
	movl	%eax, -312(%rbp)	# score.180, score
	.loc 1 911 0
	jmp	.L207	#
.L157:
.L207:
	nop
.L86:
	.loc 1 493 0
	addl	$1, -296(%rbp)	#, j
.L84:
	.loc 1 493 0 is_stmt 0 discriminator 1
	movl	piece_count(%rip), %eax	# piece_count, piece_count.181
	cmpl	%eax, -300(%rbp)	# piece_count.181, a
	jle	.L158	#,
	.loc 1 916 0 is_stmt 1
	movl	wmat(%rip), %eax	# wmat, wmat.182
	cmpl	$2200, %eax	#, wmat.182
	jg	.L159	#,
	.loc 1 916 0 is_stmt 0 discriminator 1
	movl	bmat(%rip), %eax	# bmat, bmat.183
	cmpl	$2200, %eax	#, bmat.183
	jle	.L160	#,
.L159:
	.loc 1 919 0 is_stmt 1
	movl	moved+164(%rip), %eax	# moved, D.5297
	testl	%eax, %eax	# D.5297
	jne	.L161	#,
	.loc 1 919 0 is_stmt 0 discriminator 1
	movl	board+212(%rip), %eax	# board, D.5297
	cmpl	$13, %eax	#, D.5297
	je	.L161	#,
	.loc 1 920 0 is_stmt 1
	movl	-312(%rbp), %eax	# score, score.184
	subl	$5, %eax	#, score.185
	movl	%eax, -312(%rbp)	# score.185, score
.L161:
	.loc 1 921 0
	movl	moved+168(%rip), %eax	# moved, D.5297
	testl	%eax, %eax	# D.5297
	jne	.L162	#,
	.loc 1 921 0 is_stmt 0 discriminator 1
	movl	board+216(%rip), %eax	# board, D.5297
	cmpl	$13, %eax	#, D.5297
	je	.L162	#,
	.loc 1 922 0 is_stmt 1
	movl	-312(%rbp), %eax	# score, score.186
	subl	$5, %eax	#, score.187
	movl	%eax, -312(%rbp)	# score.187, score
.L162:
	.loc 1 923 0
	movl	moved+404(%rip), %eax	# moved, D.5297
	testl	%eax, %eax	# D.5297
	jne	.L163	#,
	.loc 1 923 0 is_stmt 0 discriminator 1
	movl	board+356(%rip), %eax	# board, D.5297
	cmpl	$13, %eax	#, D.5297
	je	.L163	#,
	.loc 1 924 0 is_stmt 1
	movl	-312(%rbp), %eax	# score, score.188
	addl	$5, %eax	#, score.189
	movl	%eax, -312(%rbp)	# score.189, score
.L163:
	.loc 1 925 0
	movl	moved+408(%rip), %eax	# moved, D.5297
	testl	%eax, %eax	# D.5297
	jne	.L160	#,
	.loc 1 925 0 is_stmt 0 discriminator 1
	movl	board+360(%rip), %eax	# board, D.5297
	cmpl	$13, %eax	#, D.5297
	je	.L160	#,
	.loc 1 926 0 is_stmt 1
	movl	-312(%rbp), %eax	# score, score.190
	addl	$5, %eax	#, score.191
	movl	%eax, -312(%rbp)	# score.191, score
.L160:
	.loc 1 929 0
	movl	wmat(%rip), %eax	# wmat, wmat.192
	cmpl	$1300, %eax	#, wmat.192
	jg	.L164	#,
	.loc 1 929 0 is_stmt 0 discriminator 1
	movl	bmat(%rip), %eax	# bmat, bmat.193
	cmpl	$1300, %eax	#, bmat.193
	jle	.L165	#,
.L164:
	.loc 1 932 0 is_stmt 1
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.194
	cltq
	movl	Xfile(,%rax,4), %eax	# Xfile, D.5297
	addl	$1, %eax	#, tmp1029
	movl	%eax, -200(%rbp)	# tmp1029, wking_pawn_file
	.loc 1 933 0
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.195
	cltq
	movl	Xfile(,%rax,4), %eax	# Xfile, D.5297
	addl	$1, %eax	#, tmp1031
	movl	%eax, -196(%rbp)	# tmp1031, bking_pawn_file
	.loc 1 937 0
	movl	-196(%rbp), %eax	# bking_pawn_file, tmp1032
	movl	-200(%rbp), %edx	# wking_pawn_file, tmp1033
	subl	%eax, %edx	# tmp1032, D.5297
	movl	%edx, %eax	# D.5297, D.5297
	cltd
	xorl	%edx, %eax	# tmp1034, D.5297
	subl	%edx, %eax	# tmp1034, D.5297
	cmpl	$2, %eax	#, D.5297
	jle	.L165	#,
	.loc 1 939 0
	movl	-200(%rbp), %eax	# wking_pawn_file, tmp1036
	cltq
	movl	-144(%rbp,%rax,4), %eax	# black_back_pawn, D.5297
	cltq
	movl	srev_rank(,%rax,4), %eax	# srev_rank, D.5297
	leal	-2(%rax), %edx	#, D.5297
	movl	%edx, %eax	# D.5297, tmp1038
	addl	%eax, %eax	# tmp1038
	addl	%edx, %eax	# D.5297, D.5297
	addl	%eax, -220(%rbp)	# D.5297, wksafety
	.loc 1 940 0
	movl	-200(%rbp), %eax	# wking_pawn_file, tmp1039
	addl	$1, %eax	#, D.5297
	cltq
	movl	-144(%rbp,%rax,4), %eax	# black_back_pawn, D.5297
	cltq
	movl	srev_rank(,%rax,4), %eax	# srev_rank, D.5297
	leal	-2(%rax), %edx	#, D.5297
	movl	%edx, %eax	# D.5297, tmp1042
	addl	%eax, %eax	# tmp1042
	addl	%edx, %eax	# D.5297, D.5297
	addl	%eax, -220(%rbp)	# D.5297, wksafety
	.loc 1 941 0
	movl	-200(%rbp), %eax	# wking_pawn_file, tmp1043
	subl	$1, %eax	#, D.5297
	cltq
	movl	-144(%rbp,%rax,4), %eax	# black_back_pawn, D.5297
	cltq
	movl	srev_rank(,%rax,4), %eax	# srev_rank, D.5297
	leal	-2(%rax), %edx	#, D.5297
	movl	%edx, %eax	# D.5297, tmp1046
	addl	%eax, %eax	# tmp1046
	addl	%edx, %eax	# D.5297, D.5297
	addl	%eax, -220(%rbp)	# D.5297, wksafety
	.loc 1 944 0
	movl	-196(%rbp), %eax	# bking_pawn_file, tmp1048
	cltq
	movl	-192(%rbp,%rax,4), %eax	# white_back_pawn, D.5297
	leal	-2(%rax), %edx	#, D.5297
	movl	%edx, %eax	# D.5297, tmp1049
	addl	%eax, %eax	# tmp1049
	addl	%edx, %eax	# D.5297, D.5297
	addl	%eax, -216(%rbp)	# D.5297, bksafety
	.loc 1 945 0
	movl	-196(%rbp), %eax	# bking_pawn_file, tmp1050
	addl	$1, %eax	#, D.5297
	cltq
	movl	-192(%rbp,%rax,4), %eax	# white_back_pawn, D.5297
	leal	-2(%rax), %edx	#, D.5297
	movl	%edx, %eax	# D.5297, tmp1052
	addl	%eax, %eax	# tmp1052
	addl	%edx, %eax	# D.5297, D.5297
	addl	%eax, -216(%rbp)	# D.5297, bksafety
	.loc 1 946 0
	movl	-196(%rbp), %eax	# bking_pawn_file, tmp1053
	subl	$1, %eax	#, D.5297
	cltq
	movl	-192(%rbp,%rax,4), %eax	# white_back_pawn, D.5297
	leal	-2(%rax), %edx	#, D.5297
	movl	%edx, %eax	# D.5297, tmp1055
	addl	%eax, %eax	# tmp1055
	addl	%edx, %eax	# D.5297, D.5297
	addl	%eax, -216(%rbp)	# D.5297, bksafety
	.loc 1 949 0
	movl	-200(%rbp), %eax	# wking_pawn_file, tmp1057
	cltq
	movl	-96(%rbp,%rax,4), %eax	# pawns, D.5297
	testl	%eax, %eax	# D.5297
	jne	.L166	#,
	.loc 1 950 0
	addl	$8, -220(%rbp)	#, wksafety
.L166:
	.loc 1 951 0
	movl	-200(%rbp), %eax	# wking_pawn_file, tmp1058
	addl	$1, %eax	#, D.5297
	cltq
	movl	-96(%rbp,%rax,4), %eax	# pawns, D.5297
	testl	%eax, %eax	# D.5297
	jne	.L167	#,
	.loc 1 952 0
	addl	$6, -220(%rbp)	#, wksafety
.L167:
	.loc 1 953 0
	movl	-200(%rbp), %eax	# wking_pawn_file, tmp1060
	subl	$1, %eax	#, D.5297
	cltq
	movl	-96(%rbp,%rax,4), %eax	# pawns, D.5297
	testl	%eax, %eax	# D.5297
	jne	.L168	#,
	.loc 1 954 0
	addl	$6, -220(%rbp)	#, wksafety
.L168:
	.loc 1 957 0
	movl	-196(%rbp), %eax	# bking_pawn_file, tmp1063
	cltq
	addq	$11, %rax	#, tmp1064
	movl	-96(%rbp,%rax,4), %eax	# pawns, D.5297
	testl	%eax, %eax	# D.5297
	jne	.L169	#,
	.loc 1 958 0
	addl	$8, -216(%rbp)	#, bksafety
.L169:
	.loc 1 959 0
	movl	-196(%rbp), %eax	# bking_pawn_file, tmp1065
	addl	$1, %eax	#, D.5297
	cltq
	addq	$11, %rax	#, tmp1067
	movl	-96(%rbp,%rax,4), %eax	# pawns, D.5297
	testl	%eax, %eax	# D.5297
	jne	.L170	#,
	.loc 1 960 0
	addl	$6, -216(%rbp)	#, bksafety
.L170:
	.loc 1 961 0
	movl	-196(%rbp), %eax	# bking_pawn_file, tmp1068
	subl	$1, %eax	#, D.5297
	cltq
	addq	$11, %rax	#, tmp1070
	movl	-96(%rbp,%rax,4), %eax	# pawns, D.5297
	testl	%eax, %eax	# D.5297
	jne	.L165	#,
	.loc 1 962 0
	addl	$6, -216(%rbp)	#, bksafety
.L165:
	.loc 1 966 0
	movl	bmat(%rip), %eax	# bmat, bmat.196
	cmpl	$1300, %eax	#, bmat.196
	jle	.L171	#,
	.loc 1 966 0 is_stmt 0 discriminator 1
	cmpl	$0, -256(%rbp)	#, bq
	je	.L171	#,
	.loc 1 968 0 is_stmt 1
	movl	-312(%rbp), %eax	# score, score.197
	subl	-220(%rbp), %eax	# wksafety, score.198
	movl	%eax, -312(%rbp)	# score.198, score
.L171:
	.loc 1 970 0
	movl	wmat(%rip), %eax	# wmat, wmat.199
	cmpl	$1300, %eax	#, wmat.199
	jle	.L172	#,
	.loc 1 970 0 is_stmt 0 discriminator 1
	cmpl	$0, -260(%rbp)	#, wq
	je	.L172	#,
	.loc 1 972 0 is_stmt 1
	movl	-312(%rbp), %edx	# score, score.200
	movl	-216(%rbp), %eax	# bksafety, tmp1071
	addl	%edx, %eax	# score.200, score.201
	movl	%eax, -312(%rbp)	# score.201, score
.L172:
	.loc 1 978 0
	cmpl	$0, -252(%rbp)	#, wr
	jne	.L173	#,
	.loc 1 978 0 is_stmt 0 discriminator 1
	cmpl	$0, -260(%rbp)	#, wq
	jne	.L173	#,
	cmpl	$0, -268(%rbp)	#, wb
	jne	.L173	#,
	cmpl	$0, -276(%rbp)	#, wn
	jne	.L173	#,
	.loc 1 980 0 is_stmt 1
	movl	-312(%rbp), %edx	# score, score.202
	movl	-224(%rbp), %eax	# bpotential, tmp1072
	addl	%edx, %eax	# score.202, score.203
	movl	%eax, -312(%rbp)	# score.203, score
.L173:
	.loc 1 983 0
	cmpl	$0, -248(%rbp)	#, br
	jne	.L174	#,
	.loc 1 983 0 is_stmt 0 discriminator 1
	cmpl	$0, -256(%rbp)	#, bq
	jne	.L174	#,
	cmpl	$0, -264(%rbp)	#, bb
	jne	.L174	#,
	cmpl	$0, -272(%rbp)	#, bn
	jne	.L174	#,
	.loc 1 985 0 is_stmt 1
	movl	-312(%rbp), %edx	# score, score.204
	movl	-228(%rbp), %eax	# wpotential, tmp1073
	addl	%edx, %eax	# score.204, score.205
	movl	%eax, -312(%rbp)	# score.205, score
.L174:
	.loc 1 989 0
	cmpl	$0, -284(%rbp)	#, wp
	jne	.L175	#,
	.loc 1 989 0 is_stmt 0 discriminator 1
	cmpl	$0, -280(%rbp)	#, bp
	jne	.L175	#,
	.loc 1 992 0 is_stmt 1
	cmpl	$0, -252(%rbp)	#, wr
	jne	.L176	#,
	.loc 1 992 0 is_stmt 0 discriminator 1
	cmpl	$0, -248(%rbp)	#, br
	jne	.L176	#,
	cmpl	$0, -260(%rbp)	#, wq
	jne	.L176	#,
	cmpl	$0, -256(%rbp)	#, bq
	jne	.L176	#,
	.loc 1 994 0 is_stmt 1
	cmpl	$0, -264(%rbp)	#, bb
	jne	.L177	#,
	.loc 1 994 0 is_stmt 0 discriminator 1
	cmpl	$0, -268(%rbp)	#, wb
	jne	.L177	#,
	.loc 1 998 0 is_stmt 1
	cmpl	$2, -276(%rbp)	#, wn
	jg	.L178	#,
	.loc 1 998 0 is_stmt 0 discriminator 1
	cmpl	$2, -272(%rbp)	#, bn
	jg	.L178	#,
	.loc 1 1000 0 is_stmt 1
	movl	$0, -312(%rbp)	#, score
	.loc 1 998 0
	jmp	.L179	#
.L178:
	.loc 1 998 0 is_stmt 0 discriminator 2
	jmp	.L179	#
.L177:
	.loc 1 1003 0 is_stmt 1
	cmpl	$0, -276(%rbp)	#, wn
	jne	.L180	#,
	.loc 1 1003 0 is_stmt 0 discriminator 1
	cmpl	$0, -272(%rbp)	#, bn
	jne	.L180	#,
	.loc 1 1008 0 is_stmt 1
	movl	-264(%rbp), %eax	# bb, tmp1074
	movl	-268(%rbp), %edx	# wb, tmp1075
	subl	%eax, %edx	# tmp1074, D.5297
	movl	%edx, %eax	# D.5297, D.5297
	cmpl	$-1, %eax	#, D.5297
	jl	.L181	#,
	.loc 1 1008 0 is_stmt 0 discriminator 1
	movl	-264(%rbp), %eax	# bb, tmp1076
	movl	-268(%rbp), %edx	# wb, tmp1077
	subl	%eax, %edx	# tmp1076, D.5297
	movl	%edx, %eax	# D.5297, D.5297
	cmpl	$1, %eax	#, D.5297
	jg	.L181	#,
	.loc 1 1010 0 is_stmt 1
	movl	$0, -312(%rbp)	#, score
	.loc 1 1008 0
	jmp	.L179	#
.L181:
	.loc 1 1008 0 is_stmt 0 discriminator 2
	jmp	.L179	#
.L180:
	.loc 1 1013 0 is_stmt 1
	cmpl	$2, -276(%rbp)	#, wn
	jg	.L182	#,
	.loc 1 1013 0 is_stmt 0 discriminator 1
	cmpl	$0, -268(%rbp)	#, wb
	je	.L183	#,
.L182:
	.loc 1 1013 0 discriminator 2
	cmpl	$1, -268(%rbp)	#, wb
	jne	.L179	#,
	.loc 1 1013 0 discriminator 1
	cmpl	$0, -276(%rbp)	#, wn
	jne	.L179	#,
.L183:
	.loc 1 1016 0 is_stmt 1
	cmpl	$2, -272(%rbp)	#, bn
	jg	.L184	#,
	.loc 1 1016 0 is_stmt 0 discriminator 1
	cmpl	$0, -264(%rbp)	#, bb
	je	.L185	#,
.L184:
	.loc 1 1016 0 discriminator 2
	cmpl	$1, -264(%rbp)	#, bb
	jne	.L179	#,
	.loc 1 1016 0 discriminator 1
	cmpl	$0, -272(%rbp)	#, bn
	jne	.L179	#,
.L185:
	.loc 1 1019 0 is_stmt 1
	movl	$0, -312(%rbp)	#, score
	.loc 1 994 0
	jmp	.L186	#
.L179:
	jmp	.L186	#
.L176:
	.loc 1 1023 0
	cmpl	$0, -260(%rbp)	#, wq
	jne	.L186	#,
	.loc 1 1023 0 is_stmt 0 discriminator 1
	cmpl	$0, -256(%rbp)	#, bq
	jne	.L186	#,
	.loc 1 1025 0 is_stmt 1
	cmpl	$1, -252(%rbp)	#, wr
	jne	.L187	#,
	.loc 1 1025 0 is_stmt 0 discriminator 1
	cmpl	$1, -248(%rbp)	#, br
	jne	.L187	#,
	.loc 1 1028 0 is_stmt 1
	movl	-268(%rbp), %eax	# wb, tmp1078
	movl	-276(%rbp), %edx	# wn, tmp1079
	addl	%edx, %eax	# tmp1079, D.5297
	cmpl	$1, %eax	#, D.5297
	jg	.L188	#,
	.loc 1 1028 0 is_stmt 0 discriminator 1
	movl	-264(%rbp), %eax	# bb, tmp1080
	movl	-272(%rbp), %edx	# bn, tmp1081
	addl	%edx, %eax	# tmp1081, D.5297
	cmpl	$1, %eax	#, D.5297
	jg	.L188	#,
	.loc 1 1032 0 is_stmt 1
	movl	$0, -312(%rbp)	#, score
	.loc 1 1028 0
	jmp	.L186	#
.L188:
	.loc 1 1028 0 is_stmt 0 discriminator 2
	jmp	.L186	#
.L187:
	.loc 1 1035 0 is_stmt 1
	cmpl	$1, -252(%rbp)	#, wr
	jne	.L189	#,
	.loc 1 1035 0 is_stmt 0 discriminator 1
	cmpl	$0, -248(%rbp)	#, br
	jne	.L189	#,
	.loc 1 1040 0 is_stmt 1
	movl	-268(%rbp), %eax	# wb, tmp1082
	movl	-276(%rbp), %edx	# wn, tmp1083
	addl	%edx, %eax	# tmp1083, D.5297
	testl	%eax, %eax	# D.5297
	jne	.L190	#,
	.loc 1 1040 0 is_stmt 0 discriminator 1
	movl	-264(%rbp), %eax	# bb, tmp1084
	movl	-272(%rbp), %edx	# bn, tmp1085
	addl	%edx, %eax	# tmp1085, D.5297
	cmpl	$1, %eax	#, D.5297
	je	.L191	#,
	movl	-264(%rbp), %eax	# bb, tmp1086
	movl	-272(%rbp), %edx	# bn, tmp1087
	addl	%edx, %eax	# tmp1087, D.5297
	cmpl	$2, %eax	#, D.5297
	jne	.L190	#,
.L191:
	.loc 1 1042 0 is_stmt 1
	movl	$0, -312(%rbp)	#, score
	.loc 1 1040 0
	jmp	.L186	#
.L190:
	.loc 1 1040 0 is_stmt 0 discriminator 2
	jmp	.L186	#
.L189:
	.loc 1 1045 0 is_stmt 1
	cmpl	$1, -248(%rbp)	#, br
	jne	.L186	#,
	.loc 1 1045 0 is_stmt 0 discriminator 1
	cmpl	$0, -252(%rbp)	#, wr
	jne	.L186	#,
	.loc 1 1050 0 is_stmt 1
	movl	-264(%rbp), %eax	# bb, tmp1088
	movl	-272(%rbp), %edx	# bn, tmp1089
	addl	%edx, %eax	# tmp1089, D.5297
	testl	%eax, %eax	# D.5297
	jne	.L186	#,
	.loc 1 1050 0 is_stmt 0 discriminator 1
	movl	-268(%rbp), %eax	# wb, tmp1090
	movl	-276(%rbp), %edx	# wn, tmp1091
	addl	%edx, %eax	# tmp1091, D.5297
	cmpl	$1, %eax	#, D.5297
	je	.L192	#,
	movl	-268(%rbp), %eax	# wb, tmp1092
	movl	-276(%rbp), %edx	# wn, tmp1093
	addl	%edx, %eax	# tmp1093, D.5297
	cmpl	$2, %eax	#, D.5297
	jne	.L186	#,
.L192:
	.loc 1 1052 0 is_stmt 1
	movl	$0, -312(%rbp)	#, score
	.loc 1 992 0
	jmp	.L193	#
.L186:
	jmp	.L193	#
.L175:
	.loc 1 1060 0
	movl	-268(%rbp), %eax	# wb, tmp1094
	movl	-276(%rbp), %edx	# wn, tmp1095
	leal	(%rdx,%rax), %ecx	#, D.5297
	movl	-264(%rbp), %eax	# bb, tmp1096
	movl	-272(%rbp), %edx	# bn, tmp1097
	addl	%edx, %eax	# tmp1097, D.5297
	cmpl	%eax, %ecx	# D.5297, D.5297
	je	.L194	#,
	.loc 1 1063 0
	movl	-252(%rbp), %eax	# wr, tmp1098
	movl	-260(%rbp), %edx	# wq, tmp1099
	leal	(%rdx,%rax), %ecx	#, D.5297
	movl	-248(%rbp), %eax	# br, tmp1100
	movl	-256(%rbp), %edx	# bq, tmp1101
	addl	%edx, %eax	# tmp1101, D.5297
	cmpl	%eax, %ecx	# D.5297, D.5297
	jne	.L195	#,
	.loc 1 1065 0
	movl	-268(%rbp), %eax	# wb, tmp1102
	movl	-276(%rbp), %edx	# wn, tmp1103
	leal	(%rdx,%rax), %ecx	#, D.5297
	movl	-264(%rbp), %eax	# bb, tmp1104
	movl	-272(%rbp), %edx	# bn, tmp1105
	addl	%edx, %eax	# tmp1105, D.5297
	cmpl	%eax, %ecx	# D.5297, D.5297
	jle	.L196	#,
	.loc 1 1068 0
	movl	-312(%rbp), %eax	# score, score.206
	addl	$120, %eax	#, score.207
	movl	%eax, -312(%rbp)	# score.207, score
	jmp	.L193	#
.L196:
	.loc 1 1073 0
	movl	-312(%rbp), %eax	# score, score.208
	subl	$120, %eax	#, score.209
	movl	%eax, -312(%rbp)	# score.209, score
	jmp	.L193	#
.L195:
	.loc 1 1076 0
	movl	-260(%rbp), %eax	# wq, tmp1106
	movl	-252(%rbp), %edx	# wr, tmp1107
	leal	(%rdx,%rax), %ecx	#, D.5297
	movl	-256(%rbp), %eax	# bq, tmp1108
	movl	-248(%rbp), %edx	# br, tmp1109
	addl	%edx, %eax	# tmp1109, D.5297
	subl	%eax, %ecx	# D.5297, D.5297
	movl	%ecx, %eax	# D.5297, D.5297
	cltd
	xorl	%edx, %eax	# tmp1110, D.5297
	subl	%edx, %eax	# tmp1110, D.5297
	cmpl	$1, %eax	#, D.5297
	jne	.L199	#,
	.loc 1 1080 0
	movl	-276(%rbp), %eax	# wn, tmp1111
	movl	-268(%rbp), %edx	# wb, tmp1112
	leal	(%rdx,%rax), %ecx	#, D.5297
	movl	-272(%rbp), %eax	# bn, tmp1113
	movl	-264(%rbp), %edx	# bb, tmp1114
	addl	%edx, %eax	# tmp1114, D.5297
	addl	$1, %eax	#, D.5297
	cmpl	%eax, %ecx	# D.5297, D.5297
	jle	.L200	#,
	.loc 1 1083 0
	movl	-312(%rbp), %eax	# score, score.210
	addl	$120, %eax	#, score.211
	movl	%eax, -312(%rbp)	# score.211, score
	jmp	.L193	#
.L200:
	.loc 1 1085 0
	movl	-272(%rbp), %eax	# bn, tmp1115
	movl	-264(%rbp), %edx	# bb, tmp1116
	leal	(%rdx,%rax), %ecx	#, D.5297
	movl	-276(%rbp), %eax	# wn, tmp1117
	movl	-268(%rbp), %edx	# wb, tmp1118
	addl	%edx, %eax	# tmp1118, D.5297
	addl	$1, %eax	#, D.5297
	cmpl	%eax, %ecx	# D.5297, D.5297
	jle	.L193	#,
	.loc 1 1087 0
	movl	-312(%rbp), %eax	# score, score.212
	subl	$120, %eax	#, score.213
	movl	%eax, -312(%rbp)	# score.213, score
	jmp	.L193	#
.L199:
	.loc 1 1090 0
	movl	-260(%rbp), %eax	# wq, tmp1119
	movl	-252(%rbp), %edx	# wr, tmp1120
	leal	(%rdx,%rax), %ecx	#, D.5297
	movl	-256(%rbp), %eax	# bq, tmp1121
	movl	-248(%rbp), %edx	# br, tmp1122
	addl	%edx, %eax	# tmp1122, D.5297
	subl	%eax, %ecx	# D.5297, D.5297
	movl	%ecx, %eax	# D.5297, D.5297
	cltd
	xorl	%edx, %eax	# tmp1123, D.5297
	subl	%edx, %eax	# tmp1123, D.5297
	cmpl	$2, %eax	#, D.5297
	jne	.L193	#,
	.loc 1 1094 0
	movl	-276(%rbp), %eax	# wn, tmp1124
	movl	-268(%rbp), %edx	# wb, tmp1125
	leal	(%rdx,%rax), %ecx	#, D.5297
	movl	-272(%rbp), %eax	# bn, tmp1126
	movl	-264(%rbp), %edx	# bb, tmp1127
	addl	%edx, %eax	# tmp1127, D.5297
	addl	$2, %eax	#, D.5297
	cmpl	%eax, %ecx	# D.5297, D.5297
	jle	.L202	#,
	.loc 1 1097 0
	movl	-312(%rbp), %eax	# score, score.214
	addl	$120, %eax	#, score.215
	movl	%eax, -312(%rbp)	# score.215, score
	jmp	.L193	#
.L202:
	.loc 1 1099 0
	movl	-272(%rbp), %eax	# bn, tmp1128
	movl	-264(%rbp), %edx	# bb, tmp1129
	leal	(%rdx,%rax), %ecx	#, D.5297
	movl	-276(%rbp), %eax	# wn, tmp1130
	movl	-268(%rbp), %edx	# wb, tmp1131
	addl	%edx, %eax	# tmp1131, D.5297
	addl	$2, %eax	#, D.5297
	cmpl	%eax, %ecx	# D.5297, D.5297
	jle	.L193	#,
	.loc 1 1101 0
	movl	-312(%rbp), %eax	# score, score.216
	subl	$120, %eax	#, score.217
	movl	%eax, -312(%rbp)	# score.217, score
	jmp	.L193	#
.L194:
	.loc 1 1106 0
	movl	-252(%rbp), %eax	# wr, tmp1132
	movl	-260(%rbp), %edx	# wq, tmp1133
	leal	(%rdx,%rax), %ecx	#, D.5297
	movl	-248(%rbp), %eax	# br, tmp1134
	movl	-256(%rbp), %edx	# bq, tmp1135
	addl	%edx, %eax	# tmp1135, D.5297
	cmpl	%eax, %ecx	# D.5297, D.5297
	jne	.L193	#,
	.loc 1 1108 0
	cmpl	$0, -260(%rbp)	#, wq
	je	.L203	#,
	.loc 1 1108 0 is_stmt 0 discriminator 1
	cmpl	$0, -256(%rbp)	#, bq
	jne	.L203	#,
	.loc 1 1110 0 is_stmt 1
	movl	-312(%rbp), %eax	# score, score.218
	addl	$120, %eax	#, score.219
	movl	%eax, -312(%rbp)	# score.219, score
	jmp	.L193	#
.L203:
	.loc 1 1112 0
	cmpl	$0, -260(%rbp)	#, wq
	jne	.L193	#,
	.loc 1 1112 0 is_stmt 0 discriminator 1
	cmpl	$0, -256(%rbp)	#, bq
	je	.L193	#,
	.loc 1 1114 0 is_stmt 1
	movl	-312(%rbp), %eax	# score, score.220
	subl	$120, %eax	#, score.221
	movl	%eax, -312(%rbp)	# score.221, score
.L193:
	.loc 1 1119 0
	movl	-312(%rbp), %eax	# score, score.222
	movl	%eax, %edi	# score.222,
	call	storeECache	#
	.loc 1 1121 0
	movl	Material(%rip), %edx	# Material, Material.223
	movl	-312(%rbp), %eax	# score, score.224
	subl	%eax, %edx	# score.224, D.5297
	movl	%edx, %eax	# D.5297, D.5297
	cltd
	xorl	%edx, %eax	# tmp1136, D.5297
	subl	%edx, %eax	# tmp1136, D.5297
	movl	maxposdiff(%rip), %edx	# maxposdiff, maxposdiff.225
	cmpl	%edx, %eax	# maxposdiff.225, D.5297
	jle	.L204	#,
	.loc 1 1122 0
	movl	Material(%rip), %edx	# Material, Material.226
	movl	-312(%rbp), %eax	# score, score.227
	subl	%eax, %edx	# score.227, D.5297
	movl	%edx, %eax	# D.5297, D.5297
	cltd
	xorl	%edx, %eax	# tmp1137, D.5297
	subl	%edx, %eax	# tmp1137, D.5297
	movl	$1000, %edx	#, tmp1138
	cmpl	$1000, %eax	#, D.5297
	cmovg	%edx, %eax	# D.5297,, tmp1138, maxposdiff.228
	movl	%eax, maxposdiff(%rip)	# maxposdiff.228, maxposdiff
.L204:
	.loc 1 1125 0
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.229
	cmpl	$1, %eax	#, white_to_move.229
	jne	.L205	#,
	.loc 1 1126 0
	movl	-312(%rbp), %eax	# score, D.5297
	jmp	.L206	#
.L205:
	.loc 1 1129 0
	movl	-312(%rbp), %eax	# score, score.230
	negl	%eax	# D.5297
.L206:
	.loc 1 1131 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	std_eval, .-std_eval
	.section	.rodata
	.align 16
	.type	dir.3936, @object
	.size	dir.3936, 16
dir.3936:
	.long	-13
	.long	-11
	.long	11
	.long	13
	.align 16
	.type	dir.3949, @object
	.size	dir.3949, 16
dir.3949:
	.long	-1
	.long	1
	.long	12
	.long	-12
	.align 4
	.type	square_d1.3972, @object
	.size	square_d1.3972, 8
square_d1.3972:
	.long	29
	.long	113
	.text
.Letext0:
	.file 2 "sjeng.h"
	.file 3 "extvars.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xa08
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF86
	.byte	0x1
	.long	.LASF87
	.long	.LASF88
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x2
	.byte	0xe
	.long	0x42
	.uleb128 0x3
	.long	.LASF0
	.sleb128 0
	.uleb128 0x3
	.long	.LASF1
	.sleb128 1
	.byte	0
	.uleb128 0x4
	.long	.LASF13
	.byte	0x2
	.byte	0xe
	.long	0x2d
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.long	.LASF2
	.uleb128 0x5
	.byte	0x2
	.byte	0x7
	.long	.LASF3
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.long	.LASF4
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.long	.LASF5
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x5
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x7
	.long	0x77
	.long	0x95
	.uleb128 0x8
	.long	0x95
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.long	.LASF9
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.long	.LASF10
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.long	.LASF11
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.long	.LASF12
	.uleb128 0x4
	.long	.LASF14
	.byte	0x1
	.byte	0x17
	.long	0xbc
	.uleb128 0x9
	.byte	0x8
	.long	0xc2
	.uleb128 0xa
	.long	0x77
	.long	0xd6
	.uleb128 0xb
	.long	0x77
	.uleb128 0xb
	.long	0x77
	.byte	0
	.uleb128 0xc
	.long	.LASF89
	.byte	0x1
	.byte	0xa8
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x126
	.uleb128 0xd
	.long	.LASF15
	.byte	0x1
	.byte	0xaa
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xe
	.string	"j"
	.byte	0x1
	.byte	0xab
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xe
	.string	"a"
	.byte	0x1
	.byte	0xab
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xe
	.string	"i"
	.byte	0x1
	.byte	0xab
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xf
	.long	.LASF17
	.byte	0x1
	.byte	0xcd
	.long	0x77
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x18e
	.uleb128 0x10
	.long	.LASF19
	.byte	0x1
	.byte	0xcd
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xe
	.string	"l"
	.byte	0x1
	.byte	0xcf
	.long	0x77
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0xe
	.string	"m"
	.byte	0x1
	.byte	0xd0
	.long	0x77
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0xd
	.long	.LASF16
	.byte	0x1
	.byte	0xd1
	.long	0x77
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xe
	.string	"dir"
	.byte	0x1
	.byte	0xd2
	.long	0x19e
	.uleb128 0x9
	.byte	0x3
	.quad	dir.3936
	.byte	0
	.uleb128 0x7
	.long	0x77
	.long	0x19e
	.uleb128 0x8
	.long	0x95
	.byte	0x3
	.byte	0
	.uleb128 0x11
	.long	0x18e
	.uleb128 0xf
	.long	.LASF18
	.byte	0x1
	.byte	0xdc
	.long	0x77
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x20b
	.uleb128 0x10
	.long	.LASF19
	.byte	0x1
	.byte	0xdc
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xe
	.string	"l"
	.byte	0x1
	.byte	0xde
	.long	0x77
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0xe
	.string	"m"
	.byte	0x1
	.byte	0xdf
	.long	0x77
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0xd
	.long	.LASF16
	.byte	0x1
	.byte	0xe0
	.long	0x77
	.uleb128 0x1
	.byte	0x53
	.uleb128 0xe
	.string	"dir"
	.byte	0x1
	.byte	0xe1
	.long	0x20b
	.uleb128 0x9
	.byte	0x3
	.quad	dir.3949
	.byte	0
	.uleb128 0x11
	.long	0x18e
	.uleb128 0x12
	.long	.LASF20
	.byte	0x1
	.byte	0xeb
	.long	0x77
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x257
	.uleb128 0x13
	.string	"sq"
	.byte	0x1
	.byte	0xeb
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x13
	.string	"c"
	.byte	0x1
	.byte	0xeb
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xe
	.string	"s"
	.byte	0x1
	.byte	0xec
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x14
	.long	.LASF21
	.byte	0x1
	.byte	0xff
	.long	0x77
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x2bd
	.uleb128 0x13
	.string	"sq"
	.byte	0x1
	.byte	0xff
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x13
	.string	"c"
	.byte	0x1
	.byte	0xff
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x100
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x15
	.string	"mob"
	.byte	0x1
	.value	0x101
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x16
	.long	.LASF22
	.byte	0x1
	.value	0x102
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x17
	.long	.LASF23
	.byte	0x1
	.value	0x11b
	.long	0x77
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x33c
	.uleb128 0x18
	.string	"sq"
	.byte	0x1
	.value	0x11b
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x18
	.string	"c"
	.byte	0x1
	.value	0x11b
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x16
	.long	.LASF24
	.byte	0x1
	.value	0x11c
	.long	0x33c
	.uleb128 0x9
	.byte	0x3
	.quad	square_d1.3972
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x11d
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x15
	.string	"mob"
	.byte	0x1
	.value	0x11e
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x16
	.long	.LASF22
	.byte	0x1
	.value	0x11f
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x11
	.long	0x85
	.uleb128 0x17
	.long	.LASF25
	.byte	0x1
	.value	0x142
	.long	0x77
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x3aa
	.uleb128 0x18
	.string	"sq"
	.byte	0x1
	.value	0x142
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x18
	.string	"c"
	.byte	0x1
	.value	0x142
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x143
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x15
	.string	"mob"
	.byte	0x1
	.value	0x144
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x16
	.long	.LASF22
	.byte	0x1
	.value	0x145
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x19
	.long	.LASF26
	.byte	0x1
	.value	0x15a
	.long	0x77
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x404
	.uleb128 0x18
	.string	"sq"
	.byte	0x1
	.value	0x15a
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x18
	.string	"c"
	.byte	0x1
	.value	0x15a
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x15b
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x16
	.long	.LASF22
	.byte	0x1
	.value	0x15c
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x19
	.long	.LASF27
	.byte	0x1
	.value	0x168
	.long	0x77
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x45e
	.uleb128 0x18
	.string	"sq"
	.byte	0x1
	.value	0x168
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x18
	.string	"c"
	.byte	0x1
	.value	0x168
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x169
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x16
	.long	.LASF22
	.byte	0x1
	.value	0x16a
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x17
	.long	.LASF28
	.byte	0x1
	.value	0x183
	.long	0x77
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x49c
	.uleb128 0x18
	.string	"sq"
	.byte	0x1
	.value	0x183
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x18
	.string	"c"
	.byte	0x1
	.value	0x183
	.long	0x77
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x17
	.long	.LASF29
	.byte	0x1
	.value	0x188
	.long	0x77
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x6df
	.uleb128 0x1a
	.long	.LASF30
	.byte	0x1
	.value	0x188
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -340
	.uleb128 0x1a
	.long	.LASF31
	.byte	0x1
	.value	0x188
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x15
	.string	"i"
	.byte	0x1
	.value	0x18a
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x15
	.string	"a"
	.byte	0x1
	.value	0x18a
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -316
	.uleb128 0x16
	.long	.LASF32
	.byte	0x1
	.value	0x18a
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -228
	.uleb128 0x16
	.long	.LASF33
	.byte	0x1
	.value	0x18a
	.long	0x6df
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x16
	.long	.LASF34
	.byte	0x1
	.value	0x18a
	.long	0x6f5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x16
	.long	.LASF35
	.byte	0x1
	.value	0x18a
	.long	0x6f5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x16
	.long	.LASF36
	.byte	0x1
	.value	0x18b
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x16
	.long	.LASF37
	.byte	0x1
	.value	0x18b
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x16
	.long	.LASF38
	.byte	0x1
	.value	0x18b
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -212
	.uleb128 0x15
	.string	"j"
	.byte	0x1
	.value	0x18b
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x16
	.long	.LASF39
	.byte	0x1
	.value	0x18c
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x16
	.long	.LASF40
	.byte	0x1
	.value	0x18d
	.long	0x42
	.uleb128 0x3
	.byte	0x91
	.sleb128 -308
	.uleb128 0x16
	.long	.LASF41
	.byte	0x1
	.value	0x18d
	.long	0x42
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x16
	.long	.LASF42
	.byte	0x1
	.value	0x18e
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -324
	.uleb128 0x15
	.string	"wp"
	.byte	0x1
	.value	0x18f
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -300
	.uleb128 0x15
	.string	"bp"
	.byte	0x1
	.value	0x18f
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x15
	.string	"wn"
	.byte	0x1
	.value	0x18f
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -292
	.uleb128 0x15
	.string	"bn"
	.byte	0x1
	.value	0x18f
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x15
	.string	"wb"
	.byte	0x1
	.value	0x18f
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -284
	.uleb128 0x15
	.string	"bb"
	.byte	0x1
	.value	0x18f
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x15
	.string	"wq"
	.byte	0x1
	.value	0x18f
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -276
	.uleb128 0x15
	.string	"bq"
	.byte	0x1
	.value	0x18f
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x15
	.string	"wr"
	.byte	0x1
	.value	0x18f
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -268
	.uleb128 0x15
	.string	"br"
	.byte	0x1
	.value	0x18f
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x16
	.long	.LASF43
	.byte	0x1
	.value	0x190
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -260
	.uleb128 0x16
	.long	.LASF44
	.byte	0x1
	.value	0x190
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x16
	.long	.LASF45
	.byte	0x1
	.value	0x190
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -252
	.uleb128 0x16
	.long	.LASF46
	.byte	0x1
	.value	0x190
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x16
	.long	.LASF47
	.byte	0x1
	.value	0x191
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -244
	.uleb128 0x16
	.long	.LASF48
	.byte	0x1
	.value	0x191
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x15
	.string	"tmp"
	.byte	0x1
	.value	0x191
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -220
	.uleb128 0x16
	.long	.LASF49
	.byte	0x1
	.value	0x192
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -236
	.uleb128 0x16
	.long	.LASF50
	.byte	0x1
	.value	0x192
	.long	0x77
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.byte	0
	.uleb128 0x7
	.long	0x77
	.long	0x6f5
	.uleb128 0x8
	.long	0x95
	.byte	0x1
	.uleb128 0x8
	.long	0x95
	.byte	0xa
	.byte	0
	.uleb128 0x7
	.long	0x77
	.long	0x705
	.uleb128 0x8
	.long	0x95
	.byte	0xa
	.byte	0
	.uleb128 0x7
	.long	0xb1
	.long	0x715
	.uleb128 0x8
	.long	0x95
	.byte	0x6
	.byte	0
	.uleb128 0xd
	.long	.LASF51
	.byte	0x1
	.byte	0x18
	.long	0x705
	.uleb128 0x9
	.byte	0x3
	.quad	evalRoutines
	.uleb128 0x7
	.long	0x77
	.long	0x73a
	.uleb128 0x8
	.long	0x95
	.byte	0x8f
	.byte	0
	.uleb128 0xd
	.long	.LASF52
	.byte	0x1
	.byte	0x2d
	.long	0x72a
	.uleb128 0x9
	.byte	0x3
	.quad	sbishop
	.uleb128 0xd
	.long	.LASF53
	.byte	0x1
	.byte	0x3b
	.long	0x72a
	.uleb128 0x9
	.byte	0x3
	.quad	sknight
	.uleb128 0xd
	.long	.LASF54
	.byte	0x1
	.byte	0x49
	.long	0x72a
	.uleb128 0x9
	.byte	0x3
	.quad	swhite_pawn
	.uleb128 0xd
	.long	.LASF55
	.byte	0x1
	.byte	0x57
	.long	0x72a
	.uleb128 0x9
	.byte	0x3
	.quad	sblack_pawn
	.uleb128 0xd
	.long	.LASF56
	.byte	0x1
	.byte	0x66
	.long	0x72a
	.uleb128 0x9
	.byte	0x3
	.quad	swhite_king
	.uleb128 0xd
	.long	.LASF57
	.byte	0x1
	.byte	0x75
	.long	0x72a
	.uleb128 0x9
	.byte	0x3
	.quad	sblack_king
	.uleb128 0xd
	.long	.LASF58
	.byte	0x1
	.byte	0x84
	.long	0x72a
	.uleb128 0x9
	.byte	0x3
	.quad	send_king
	.uleb128 0x7
	.long	0x77
	.long	0x7dd
	.uleb128 0x8
	.long	0x95
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.long	.LASF59
	.byte	0x1
	.byte	0x93
	.long	0x7f2
	.uleb128 0x9
	.byte	0x3
	.quad	srev_rank
	.uleb128 0x11
	.long	0x7cd
	.uleb128 0x1b
	.long	.LASF60
	.byte	0x3
	.byte	0xc
	.long	0x72a
	.uleb128 0x1b
	.long	.LASF61
	.byte	0x3
	.byte	0xc
	.long	0x72a
	.uleb128 0x1b
	.long	.LASF62
	.byte	0x3
	.byte	0xc
	.long	0x77
	.uleb128 0x1b
	.long	.LASF63
	.byte	0x3
	.byte	0xc
	.long	0x77
	.uleb128 0x1b
	.long	.LASF64
	.byte	0x3
	.byte	0xd
	.long	0x77
	.uleb128 0x1b
	.long	.LASF65
	.byte	0x3
	.byte	0xd
	.long	0x77
	.uleb128 0x1b
	.long	.LASF66
	.byte	0x3
	.byte	0xd
	.long	0x77
	.uleb128 0x1b
	.long	.LASF67
	.byte	0x3
	.byte	0xe
	.long	0x77
	.uleb128 0x1c
	.long	.LASF68
	.byte	0x1
	.byte	0x21
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	maxposdiff
	.uleb128 0x7
	.long	0x77
	.long	0x874
	.uleb128 0x8
	.long	0x95
	.byte	0x3d
	.byte	0
	.uleb128 0x1b
	.long	.LASF69
	.byte	0x3
	.byte	0x2c
	.long	0x864
	.uleb128 0x1b
	.long	.LASF70
	.byte	0x3
	.byte	0x4a
	.long	0x77
	.uleb128 0x7
	.long	0x77
	.long	0x89a
	.uleb128 0x8
	.long	0x95
	.byte	0xd
	.byte	0
	.uleb128 0x1b
	.long	.LASF71
	.byte	0x3
	.byte	0x4b
	.long	0x88a
	.uleb128 0x1b
	.long	.LASF72
	.byte	0x3
	.byte	0x5e
	.long	0x8b0
	.uleb128 0x11
	.long	0x72a
	.uleb128 0x1b
	.long	.LASF73
	.byte	0x3
	.byte	0x5e
	.long	0x8c0
	.uleb128 0x11
	.long	0x72a
	.uleb128 0x7
	.long	0x77
	.long	0x8db
	.uleb128 0x8
	.long	0x95
	.byte	0x8f
	.uleb128 0x8
	.long	0x95
	.byte	0x8f
	.byte	0
	.uleb128 0x1c
	.long	.LASF74
	.byte	0x1
	.byte	0x26
	.long	0x8c5
	.uleb128 0x9
	.byte	0x3
	.quad	distance
	.uleb128 0x1c
	.long	.LASF75
	.byte	0x1
	.byte	0x27
	.long	0x8c5
	.uleb128 0x9
	.byte	0x3
	.quad	rookdistance
	.uleb128 0x1b
	.long	.LASF76
	.byte	0x3
	.byte	0x78
	.long	0x77
	.uleb128 0x1c
	.long	.LASF77
	.byte	0x1
	.byte	0x28
	.long	0x85
	.uleb128 0x9
	.byte	0x3
	.quad	king_locs
	.uleb128 0x1c
	.long	.LASF78
	.byte	0x1
	.byte	0x29
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	wmat
	.uleb128 0x1c
	.long	.LASF79
	.byte	0x1
	.byte	0x29
	.long	0x77
	.uleb128 0x9
	.byte	0x3
	.quad	bmat
	.uleb128 0x7
	.long	0x77
	.long	0x95f
	.uleb128 0x8
	.long	0x95
	.byte	0x7
	.byte	0
	.uleb128 0x1c
	.long	.LASF80
	.byte	0x1
	.byte	0x96
	.long	0x974
	.uleb128 0x9
	.byte	0x3
	.quad	std_p_tropism
	.uleb128 0x11
	.long	0x94f
	.uleb128 0x1c
	.long	.LASF81
	.byte	0x1
	.byte	0x99
	.long	0x98e
	.uleb128 0x9
	.byte	0x3
	.quad	std_own_p_tropism
	.uleb128 0x11
	.long	0x94f
	.uleb128 0x7
	.long	0x77
	.long	0x9a3
	.uleb128 0x8
	.long	0x95
	.byte	0xf
	.byte	0
	.uleb128 0x1c
	.long	.LASF82
	.byte	0x1
	.byte	0x9c
	.long	0x9b8
	.uleb128 0x9
	.byte	0x3
	.quad	std_r_tropism
	.uleb128 0x11
	.long	0x993
	.uleb128 0x1c
	.long	.LASF83
	.byte	0x1
	.byte	0x9f
	.long	0x9d2
	.uleb128 0x9
	.byte	0x3
	.quad	std_n_tropism
	.uleb128 0x11
	.long	0x94f
	.uleb128 0x1c
	.long	.LASF84
	.byte	0x1
	.byte	0xa2
	.long	0x9ec
	.uleb128 0x9
	.byte	0x3
	.quad	std_q_tropism
	.uleb128 0x11
	.long	0x94f
	.uleb128 0x1c
	.long	.LASF85
	.byte	0x1
	.byte	0xa5
	.long	0xa06
	.uleb128 0x9
	.byte	0x3
	.quad	std_b_tropism
	.uleb128 0x11
	.long	0x94f
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
	.uleb128 0x3
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x18
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
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
.LASF16:
	.string	"diridx"
.LASF37:
	.string	"wking_pawn_file"
.LASF85:
	.string	"std_b_tropism"
.LASF88:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/458.sjeng/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF41:
	.string	"backwards"
.LASF0:
	.string	"FALSE"
.LASF19:
	.string	"square"
.LASF7:
	.string	"short int"
.LASF15:
	.string	"xnum_pieces"
.LASF9:
	.string	"sizetype"
.LASF32:
	.string	"pawn_file"
.LASF58:
	.string	"send_king"
.LASF71:
	.string	"material"
.LASF23:
	.string	"Rook"
.LASF76:
	.string	"phase"
.LASF11:
	.string	"long long int"
.LASF66:
	.string	"black_castled"
.LASF38:
	.string	"bking_pawn_file"
.LASF28:
	.string	"ErrorIt"
.LASF69:
	.string	"pieces"
.LASF33:
	.string	"pawns"
.LASF84:
	.string	"std_q_tropism"
.LASF30:
	.string	"alpha"
.LASF44:
	.string	"fbrook"
.LASF47:
	.string	"wpotential"
.LASF89:
	.string	"check_phase"
.LASF54:
	.string	"swhite_pawn"
.LASF14:
	.string	"EVALFUNC"
.LASF50:
	.string	"bksafety"
.LASF59:
	.string	"srev_rank"
.LASF75:
	.string	"rookdistance"
.LASF42:
	.string	"in_cache"
.LASF8:
	.string	"long int"
.LASF22:
	.string	"xside"
.LASF27:
	.string	"Pawn"
.LASF52:
	.string	"sbishop"
.LASF2:
	.string	"unsigned char"
.LASF73:
	.string	"Xfile"
.LASF24:
	.string	"square_d1"
.LASF65:
	.string	"white_castled"
.LASF21:
	.string	"Queen"
.LASF34:
	.string	"white_back_pawn"
.LASF17:
	.string	"bishop_mobility"
.LASF86:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF6:
	.string	"signed char"
.LASF45:
	.string	"rwrook"
.LASF12:
	.string	"long long unsigned int"
.LASF68:
	.string	"maxposdiff"
.LASF4:
	.string	"unsigned int"
.LASF56:
	.string	"swhite_king"
.LASF67:
	.string	"piece_count"
.LASF46:
	.string	"fwrook"
.LASF82:
	.string	"std_r_tropism"
.LASF83:
	.string	"std_n_tropism"
.LASF29:
	.string	"std_eval"
.LASF18:
	.string	"rook_mobility"
.LASF10:
	.string	"char"
.LASF74:
	.string	"distance"
.LASF63:
	.string	"wking_loc"
.LASF70:
	.string	"Material"
.LASF43:
	.string	"rbrook"
.LASF3:
	.string	"short unsigned int"
.LASF87:
	.string	"neval.c"
.LASF57:
	.string	"sblack_king"
.LASF39:
	.string	"score"
.LASF31:
	.string	"beta"
.LASF20:
	.string	"King"
.LASF61:
	.string	"moved"
.LASF5:
	.string	"long unsigned int"
.LASF78:
	.string	"wmat"
.LASF81:
	.string	"std_own_p_tropism"
.LASF53:
	.string	"sknight"
.LASF60:
	.string	"board"
.LASF35:
	.string	"black_back_pawn"
.LASF13:
	.string	"xbool"
.LASF79:
	.string	"bmat"
.LASF48:
	.string	"bpotential"
.LASF40:
	.string	"isolated"
.LASF62:
	.string	"white_to_move"
.LASF51:
	.string	"evalRoutines"
.LASF77:
	.string	"king_locs"
.LASF25:
	.string	"Bishop"
.LASF64:
	.string	"bking_loc"
.LASF26:
	.string	"Knight"
.LASF1:
	.string	"TRUE"
.LASF55:
	.string	"sblack_pawn"
.LASF49:
	.string	"wksafety"
.LASF80:
	.string	"std_p_tropism"
.LASF36:
	.string	"srank"
.LASF72:
	.string	"Xrank"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
