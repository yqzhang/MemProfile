	.file	"eval.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 eval.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.comm	Material,4,4
	.globl	std_material
	.data
	.align 32
	.type	std_material, @object
	.size	std_material, 56
std_material:
	.long	0
	.long	100
	.long	-100
	.long	310
	.long	-310
	.long	4000
	.long	-4000
	.long	500
	.long	-500
	.long	900
	.long	-900
	.long	325
	.long	-325
	.long	0
	.globl	zh_material
	.align 32
	.type	zh_material, @object
	.size	zh_material, 56
zh_material:
	.long	0
	.long	100
	.long	-100
	.long	210
	.long	-210
	.long	4000
	.long	-4000
	.long	250
	.long	-250
	.long	450
	.long	-450
	.long	230
	.long	-230
	.long	0
	.globl	suicide_material
	.align 32
	.type	suicide_material, @object
	.size	suicide_material, 56
suicide_material:
	.long	0
	.long	15
	.long	-15
	.long	150
	.long	-150
	.long	500
	.long	-500
	.long	150
	.long	-150
	.long	50
	.long	-50
	.long	0
	.long	0
	.long	0
	.globl	losers_material
	.align 32
	.type	losers_material, @object
	.size	losers_material, 56
losers_material:
	.long	0
	.long	80
	.long	-80
	.long	320
	.long	-320
	.long	1000
	.long	-1000
	.long	350
	.long	-350
	.long	400
	.long	-400
	.long	270
	.long	-270
	.long	0
	.globl	material
	.bss
	.align 32
	.type	material, @object
	.size	material, 56
material:
	.zero	56
	.globl	Xfile
	.section	.rodata
	.align 32
	.type	Xfile, @object
	.size	Xfile, 576
Xfile:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
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
	.long	4
	.long	5
	.long	6
	.long	7
	.long	8
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.long	8
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.long	8
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.long	8
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.long	8
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.long	8
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.long	8
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.long	8
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.globl	Xrank
	.align 32
	.type	Xrank, @object
	.size	Xrank, 576
Xrank:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
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
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	2
	.long	2
	.long	2
	.long	2
	.long	2
	.long	2
	.long	2
	.long	2
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	4
	.long	4
	.long	4
	.long	4
	.long	4
	.long	4
	.long	4
	.long	4
	.long	0
	.long	0
	.long	0
	.long	0
	.long	5
	.long	5
	.long	5
	.long	5
	.long	5
	.long	5
	.long	5
	.long	5
	.long	0
	.long	0
	.long	0
	.long	0
	.long	6
	.long	6
	.long	6
	.long	6
	.long	6
	.long	6
	.long	6
	.long	6
	.long	0
	.long	0
	.long	0
	.long	0
	.long	7
	.long	7
	.long	7
	.long	7
	.long	7
	.long	7
	.long	7
	.long	7
	.long	0
	.long	0
	.long	0
	.long	0
	.long	8
	.long	8
	.long	8
	.long	8
	.long	8
	.long	8
	.long	8
	.long	8
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.globl	Xdiagl
	.align 32
	.type	Xdiagl, @object
	.size	Xdiagl, 576
Xdiagl:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
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
	.long	4
	.long	5
	.long	6
	.long	7
	.long	8
	.long	0
	.long	0
	.long	0
	.long	0
	.long	9
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.long	0
	.long	0
	.long	0
	.long	0
	.long	10
	.long	9
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	0
	.long	0
	.long	0
	.long	0
	.long	11
	.long	10
	.long	9
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	0
	.long	0
	.long	0
	.long	0
	.long	12
	.long	11
	.long	10
	.long	9
	.long	1
	.long	2
	.long	3
	.long	4
	.long	0
	.long	0
	.long	0
	.long	0
	.long	13
	.long	12
	.long	11
	.long	10
	.long	9
	.long	1
	.long	2
	.long	3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	14
	.long	13
	.long	12
	.long	11
	.long	10
	.long	9
	.long	1
	.long	2
	.long	0
	.long	0
	.long	0
	.long	0
	.long	15
	.long	14
	.long	13
	.long	12
	.long	11
	.long	10
	.long	9
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
	.globl	Xdiagr
	.align 32
	.type	Xdiagr, @object
	.size	Xdiagr, 576
Xdiagr:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	15
	.long	14
	.long	13
	.long	12
	.long	11
	.long	10
	.long	9
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	14
	.long	13
	.long	12
	.long	11
	.long	10
	.long	9
	.long	1
	.long	2
	.long	0
	.long	0
	.long	0
	.long	0
	.long	13
	.long	12
	.long	11
	.long	10
	.long	9
	.long	1
	.long	2
	.long	3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	12
	.long	11
	.long	10
	.long	9
	.long	1
	.long	2
	.long	3
	.long	4
	.long	0
	.long	0
	.long	0
	.long	0
	.long	11
	.long	10
	.long	9
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	0
	.long	0
	.long	0
	.long	0
	.long	10
	.long	9
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	0
	.long	0
	.long	0
	.long	0
	.long	9
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.long	8
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.globl	sqcolor
	.align 32
	.type	sqcolor, @object
	.size	sqcolor, 576
sqcolor:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
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
	.long	0
	.long	1
	.long	0
	.long	1
	.long	0
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	0
	.long	1
	.long	0
	.long	1
	.long	0
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	0
	.long	1
	.long	0
	.long	1
	.long	0
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	0
	.long	1
	.long	0
	.long	1
	.long	0
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	0
	.long	1
	.long	0
	.long	1
	.long	0
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	0
	.long	1
	.long	0
	.long	1
	.long	0
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	0
	.long	1
	.long	0
	.long	1
	.long	0
	.long	1
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	0
	.long	1
	.long	0
	.long	1
	.long	0
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
	.globl	pcsqbishop
	.align 32
	.type	pcsqbishop, @object
	.size	pcsqbishop, 576
pcsqbishop:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
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
	.long	-5
	.long	-10
	.long	-5
	.long	-5
	.long	-10
	.long	-5
	.long	-5
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-5
	.long	10
	.long	5
	.long	10
	.long	10
	.long	5
	.long	10
	.long	-5
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-5
	.long	5
	.long	6
	.long	15
	.long	15
	.long	6
	.long	5
	.long	-5
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-5
	.long	3
	.long	15
	.long	10
	.long	10
	.long	15
	.long	3
	.long	-5
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-5
	.long	3
	.long	15
	.long	10
	.long	10
	.long	15
	.long	3
	.long	-5
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-5
	.long	5
	.long	6
	.long	15
	.long	15
	.long	6
	.long	5
	.long	-5
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-5
	.long	10
	.long	5
	.long	10
	.long	10
	.long	5
	.long	10
	.long	-5
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-5
	.long	-5
	.long	-10
	.long	-5
	.long	-5
	.long	-10
	.long	-5
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
	.globl	black_knight
	.align 32
	.type	black_knight, @object
	.size	black_knight, 576
black_knight:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
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
	.long	15
	.long	25
	.long	25
	.long	25
	.long	25
	.long	15
	.long	-10
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-10
	.long	15
	.long	25
	.long	35
	.long	35
	.long	35
	.long	15
	.long	-10
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-10
	.long	10
	.long	25
	.long	20
	.long	25
	.long	25
	.long	10
	.long	-10
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-10
	.long	0
	.long	20
	.long	20
	.long	20
	.long	20
	.long	0
	.long	-10
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-10
	.long	0
	.long	15
	.long	15
	.long	15
	.long	15
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
	.long	-35
	.long	-10
	.long	-10
	.long	-10
	.long	-10
	.long	-35
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
	.globl	white_knight
	.align 32
	.type	white_knight, @object
	.size	white_knight, 576
white_knight:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
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
	.long	-35
	.long	-10
	.long	-10
	.long	-10
	.long	-10
	.long	-35
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
	.long	15
	.long	15
	.long	15
	.long	15
	.long	0
	.long	-10
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-10
	.long	0
	.long	20
	.long	20
	.long	20
	.long	20
	.long	0
	.long	-10
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-10
	.long	10
	.long	25
	.long	20
	.long	25
	.long	25
	.long	10
	.long	-10
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-10
	.long	15
	.long	25
	.long	35
	.long	35
	.long	35
	.long	15
	.long	-10
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-10
	.long	15
	.long	25
	.long	25
	.long	25
	.long	25
	.long	15
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
	.globl	white_pawn
	.align 32
	.type	white_pawn, @object
	.size	white_pawn, 576
white_pawn:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	25
	.long	25
	.long	35
	.long	5
	.long	5
	.long	50
	.long	45
	.long	30
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	7
	.long	7
	.long	5
	.long	5
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	14
	.long	14
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	10
	.long	20
	.long	20
	.long	10
	.long	5
	.long	5
	.long	0
	.long	0
	.long	0
	.long	0
	.long	12
	.long	18
	.long	18
	.long	27
	.long	27
	.long	18
	.long	18
	.long	18
	.long	0
	.long	0
	.long	0
	.long	0
	.long	25
	.long	30
	.long	30
	.long	35
	.long	35
	.long	35
	.long	30
	.long	25
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.globl	black_pawn
	.align 32
	.type	black_pawn, @object
	.size	black_pawn, 576
black_pawn:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	30
	.long	30
	.long	30
	.long	35
	.long	35
	.long	35
	.long	30
	.long	25
	.long	0
	.long	0
	.long	0
	.long	0
	.long	12
	.long	18
	.long	18
	.long	27
	.long	27
	.long	18
	.long	18
	.long	18
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	10
	.long	20
	.long	20
	.long	10
	.long	5
	.long	5
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	14
	.long	14
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	7
	.long	7
	.long	5
	.long	5
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	25
	.long	25
	.long	35
	.long	5
	.long	5
	.long	50
	.long	45
	.long	30
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.globl	white_king
	.align 32
	.type	white_king, @object
	.size	white_king, 576
white_king:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-100
	.long	7
	.long	4
	.long	0
	.long	10
	.long	4
	.long	7
	.long	-100
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-250
	.long	-200
	.long	-150
	.long	-100
	.long	-100
	.long	-150
	.long	-200
	.long	-250
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-350
	.long	-300
	.long	-300
	.long	-250
	.long	-250
	.long	-300
	.long	-300
	.long	-350
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-400
	.long	-400
	.long	-400
	.long	-350
	.long	-350
	.long	-400
	.long	-400
	.long	-400
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-450
	.long	-450
	.long	-450
	.long	-450
	.long	-450
	.long	-450
	.long	-450
	.long	-450
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-500
	.long	-500
	.long	-500
	.long	-500
	.long	-500
	.long	-500
	.long	-500
	.long	-500
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-500
	.long	-500
	.long	-500
	.long	-500
	.long	-500
	.long	-500
	.long	-500
	.long	-500
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-500
	.long	-500
	.long	-500
	.long	-500
	.long	-500
	.long	-500
	.long	-500
	.long	-500
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.globl	black_king
	.align 32
	.type	black_king, @object
	.size	black_king, 576
black_king:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-500
	.long	-500
	.long	-500
	.long	-500
	.long	-500
	.long	-500
	.long	-500
	.long	-500
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-500
	.long	-500
	.long	-500
	.long	-500
	.long	-500
	.long	-500
	.long	-500
	.long	-500
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-500
	.long	-500
	.long	-500
	.long	-500
	.long	-500
	.long	-500
	.long	-500
	.long	-500
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-450
	.long	-450
	.long	-450
	.long	-450
	.long	-450
	.long	-450
	.long	-450
	.long	-450
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-400
	.long	-400
	.long	-400
	.long	-350
	.long	-350
	.long	-400
	.long	-400
	.long	-400
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-350
	.long	-300
	.long	-300
	.long	-250
	.long	-250
	.long	-300
	.long	-300
	.long	-350
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-250
	.long	-200
	.long	-150
	.long	-100
	.long	-100
	.long	-150
	.long	-200
	.long	-250
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-100
	.long	7
	.long	4
	.long	0
	.long	10
	.long	4
	.long	7
	.long	-100
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.globl	black_queen
	.align 32
	.type	black_queen, @object
	.size	black_queen, 576
black_queen:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	5
	.long	5
	.long	5
	.long	10
	.long	10
	.long	5
	.long	5
	.long	5
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-30
	.long	-30
	.long	-30
	.long	-30
	.long	-30
	.long	-30
	.long	-30
	.long	-30
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-60
	.long	-40
	.long	-40
	.long	-60
	.long	-60
	.long	-40
	.long	-40
	.long	-60
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-40
	.long	-40
	.long	-40
	.long	-40
	.long	-40
	.long	-40
	.long	-40
	.long	-40
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-15
	.long	-15
	.long	-15
	.long	-10
	.long	-10
	.long	-15
	.long	-15
	.long	-15
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	7
	.long	10
	.long	5
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	5
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.globl	white_queen
	.align 32
	.type	white_queen, @object
	.size	white_queen, 576
white_queen:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	5
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	7
	.long	10
	.long	5
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-15
	.long	-15
	.long	-15
	.long	-10
	.long	-10
	.long	-15
	.long	-15
	.long	-15
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-40
	.long	-40
	.long	-40
	.long	-40
	.long	-40
	.long	-40
	.long	-40
	.long	-40
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-60
	.long	-40
	.long	-40
	.long	-60
	.long	-60
	.long	-40
	.long	-40
	.long	-60
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-30
	.long	-30
	.long	-30
	.long	-30
	.long	-30
	.long	-30
	.long	-30
	.long	-30
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	3
	.long	3
	.long	3
	.long	3
	.long	3
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	5
	.long	5
	.long	5
	.long	10
	.long	10
	.long	5
	.long	5
	.long	5
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.globl	black_rook
	.align 32
	.type	black_rook, @object
	.size	black_rook, 576
black_rook:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	10
	.long	15
	.long	20
	.long	25
	.long	25
	.long	20
	.long	15
	.long	10
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	10
	.long	15
	.long	20
	.long	20
	.long	15
	.long	10
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-20
	.long	-20
	.long	-20
	.long	-20
	.long	-20
	.long	-20
	.long	-20
	.long	-20
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-20
	.long	-20
	.long	-20
	.long	-30
	.long	-30
	.long	-20
	.long	-20
	.long	-20
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-20
	.long	-20
	.long	-20
	.long	-20
	.long	-20
	.long	-20
	.long	-20
	.long	-20
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-15
	.long	-15
	.long	-15
	.long	-10
	.long	-10
	.long	-15
	.long	-15
	.long	-15
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	7
	.long	10
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	2
	.long	2
	.long	2
	.long	2
	.long	2
	.long	2
	.long	2
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
	.globl	white_rook
	.align 32
	.type	white_rook, @object
	.size	white_rook, 576
white_rook:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
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
	.long	2
	.long	2
	.long	2
	.long	2
	.long	2
	.long	2
	.long	2
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	7
	.long	10
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-15
	.long	-15
	.long	-15
	.long	-10
	.long	-10
	.long	-15
	.long	-15
	.long	-15
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-20
	.long	-20
	.long	-20
	.long	-20
	.long	-20
	.long	-20
	.long	-20
	.long	-20
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-20
	.long	-20
	.long	-20
	.long	-30
	.long	-30
	.long	-20
	.long	-20
	.long	-20
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-20
	.long	-20
	.long	-20
	.long	-20
	.long	-20
	.long	-20
	.long	-20
	.long	-20
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	10
	.long	15
	.long	20
	.long	20
	.long	15
	.long	10
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	10
	.long	15
	.long	20
	.long	25
	.long	25
	.long	20
	.long	15
	.long	10
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.globl	upscale
	.align 32
	.type	upscale, @object
	.size	upscale, 256
upscale:
	.long	26
	.long	27
	.long	28
	.long	29
	.long	30
	.long	31
	.long	32
	.long	33
	.long	38
	.long	39
	.long	40
	.long	41
	.long	42
	.long	43
	.long	44
	.long	45
	.long	50
	.long	51
	.long	52
	.long	53
	.long	54
	.long	55
	.long	56
	.long	57
	.long	62
	.long	63
	.long	64
	.long	65
	.long	66
	.long	67
	.long	68
	.long	69
	.long	74
	.long	75
	.long	76
	.long	77
	.long	78
	.long	79
	.long	80
	.long	81
	.long	86
	.long	87
	.long	88
	.long	89
	.long	90
	.long	91
	.long	92
	.long	93
	.long	98
	.long	99
	.long	100
	.long	101
	.long	102
	.long	103
	.long	104
	.long	105
	.long	110
	.long	111
	.long	112
	.long	113
	.long	114
	.long	115
	.long	116
	.long	117
	.globl	pre_p_tropism
	.data
	.align 32
	.type	pre_p_tropism, @object
	.size	pre_p_tropism, 36
pre_p_tropism:
	.long	9999
	.long	40
	.long	20
	.long	10
	.long	3
	.long	1
	.long	1
	.long	0
	.long	9999
	.globl	pre_r_tropism
	.align 32
	.type	pre_r_tropism, @object
	.size	pre_r_tropism, 36
pre_r_tropism:
	.long	9999
	.long	50
	.long	40
	.long	15
	.long	5
	.long	1
	.long	1
	.long	0
	.long	9999
	.globl	pre_n_tropism
	.align 32
	.type	pre_n_tropism, @object
	.size	pre_n_tropism, 36
pre_n_tropism:
	.long	9999
	.long	50
	.long	70
	.long	35
	.long	10
	.long	2
	.long	1
	.long	0
	.long	9999
	.globl	pre_q_tropism
	.align 32
	.type	pre_q_tropism, @object
	.size	pre_q_tropism, 36
pre_q_tropism:
	.long	9999
	.long	100
	.long	60
	.long	20
	.long	5
	.long	2
	.long	0
	.long	0
	.long	9999
	.globl	pre_b_tropism
	.align 32
	.type	pre_b_tropism, @object
	.size	pre_b_tropism, 36
pre_b_tropism:
	.long	9999
	.long	50
	.long	25
	.long	15
	.long	5
	.long	2
	.long	2
	.long	2
	.long	9999
	.comm	p_tropism,20736,32
	.comm	q_tropism,20736,32
	.comm	n_tropism,20736,32
	.comm	r_tropism,20736,32
	.comm	b_tropism,20736,32
	.globl	ksafety_scaled
	.align 32
	.type	ksafety_scaled, @object
	.size	ksafety_scaled, 540
ksafety_scaled:
	.long	-5
	.long	5
	.long	10
	.long	15
	.long	50
	.long	80
	.long	150
	.long	150
	.long	150
	.long	-5
	.long	15
	.long	20
	.long	25
	.long	70
	.long	150
	.long	200
	.long	200
	.long	200
	.long	-5
	.long	15
	.long	30
	.long	30
	.long	100
	.long	200
	.long	300
	.long	300
	.long	300
	.long	-10
	.long	20
	.long	40
	.long	40
	.long	100
	.long	200
	.long	300
	.long	300
	.long	400
	.long	-10
	.long	30
	.long	50
	.long	80
	.long	150
	.long	300
	.long	400
	.long	400
	.long	500
	.long	-10
	.long	35
	.long	60
	.long	100
	.long	200
	.long	250
	.long	400
	.long	400
	.long	500
	.long	-10
	.long	40
	.long	70
	.long	110
	.long	210
	.long	300
	.long	500
	.long	500
	.long	600
	.long	-10
	.long	45
	.long	75
	.long	125
	.long	215
	.long	300
	.long	500
	.long	600
	.long	700
	.long	-10
	.long	60
	.long	90
	.long	130
	.long	240
	.long	350
	.long	500
	.long	600
	.long	700
	.long	-15
	.long	60
	.long	95
	.long	145
	.long	260
	.long	350
	.long	500
	.long	600
	.long	700
	.long	-15
	.long	60
	.long	100
	.long	150
	.long	270
	.long	350
	.long	500
	.long	600
	.long	700
	.long	-15
	.long	60
	.long	110
	.long	160
	.long	280
	.long	400
	.long	600
	.long	700
	.long	800
	.long	-20
	.long	70
	.long	115
	.long	165
	.long	290
	.long	400
	.long	600
	.long	700
	.long	800
	.long	-20
	.long	80
	.long	120
	.long	170
	.long	300
	.long	450
	.long	700
	.long	800
	.long	900
	.long	-20
	.long	80
	.long	125
	.long	175
	.long	310
	.long	450
	.long	700
	.long	800
	.long	900
	.text
	.globl	initialize_eval
	.type	initialize_eval, @function
initialize_eval:
.LFB2:
	.file 1 "eval.c"
	.loc 1 329 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 332 0
	movl	$0, -16(%rbp)	#, i
	jmp	.L2	#
.L5:
	.loc 1 334 0
	movl	$0, -12(%rbp)	#, j
	jmp	.L3	#
.L4:
	.loc 1 336 0 discriminator 2
	movl	-16(%rbp), %eax	# i, tmp126
	andl	$7, %eax	#, D.4854
	movl	%eax, %edx	# D.4854, D.4854
	movl	-12(%rbp), %eax	# j, tmp127
	andl	$7, %eax	#, D.4854
	subl	%eax, %edx	# D.4854, D.4854
	movl	%edx, %eax	# D.4854, tmp128
	sarl	$31, %eax	#, tmp128
	xorl	%eax, %edx	# tmp128, tmp129
	movl	%edx, -8(%rbp)	# tmp129, sd
	subl	%eax, -8(%rbp)	# tmp128, sd
	.loc 1 337 0 discriminator 2
	movl	-16(%rbp), %eax	# i, tmp130
	sarl	$3, %eax	#, D.4854
	movl	%eax, %edx	# D.4854, D.4854
	movl	-12(%rbp), %eax	# j, tmp131
	sarl	$3, %eax	#, D.4854
	subl	%eax, %edx	# D.4854, D.4854
	movl	%edx, %eax	# D.4854, tmp132
	sarl	$31, %eax	#, tmp132
	xorl	%eax, %edx	# tmp132, tmp133
	movl	%edx, -4(%rbp)	# tmp133, sdi
	subl	%eax, -4(%rbp)	# tmp132, sdi
	.loc 1 338 0 discriminator 2
	movl	-16(%rbp), %eax	# i, tmp135
	cltq
	movl	upscale(,%rax,4), %edx	# upscale, D.4854
	movl	-12(%rbp), %eax	# j, tmp137
	cltq
	movl	upscale(,%rax,4), %eax	# upscale, D.4854
	movl	-4(%rbp), %ecx	# sdi, tmp138
	movl	-8(%rbp), %esi	# sd, tmp139
	addl	%esi, %ecx	# tmp139, D.4854
	movslq	%eax, %rsi	# D.4854, tmp140
	movslq	%edx, %rdx	# D.4854, tmp141
	movq	%rdx, %rax	# tmp141, tmp142
	salq	$3, %rax	#, tmp142
	addq	%rdx, %rax	# tmp141, tmp142
	salq	$4, %rax	#, tmp143
	addq	%rsi, %rax	# tmp140, tmp144
	movl	%ecx, rookdistance(,%rax,4)	# D.4854, rookdistance
	.loc 1 339 0 discriminator 2
	movl	-16(%rbp), %eax	# i, tmp146
	cltq
	movl	upscale(,%rax,4), %edx	# upscale, D.4854
	movl	-12(%rbp), %eax	# j, tmp148
	cltq
	movl	upscale(,%rax,4), %esi	# upscale, D.4854
	movl	-8(%rbp), %eax	# sd, tmp149
	cmpl	%eax, -4(%rbp)	# tmp149, sdi
	cmovge	-4(%rbp), %eax	# sdi,, D.4854
	movl	%eax, %ecx	# D.4854, D.4854
	movslq	%esi, %rsi	# D.4854, tmp150
	movslq	%edx, %rdx	# D.4854, tmp151
	movq	%rdx, %rax	# tmp151, tmp152
	salq	$3, %rax	#, tmp152
	addq	%rdx, %rax	# tmp151, tmp152
	salq	$4, %rax	#, tmp153
	addq	%rsi, %rax	# tmp150, tmp154
	movl	%ecx, distance(,%rax,4)	# D.4854, distance
	.loc 1 334 0 discriminator 2
	addl	$1, -12(%rbp)	#, j
.L3:
	.loc 1 334 0 is_stmt 0 discriminator 1
	cmpl	$63, -12(%rbp)	#, j
	jle	.L4	#,
	.loc 1 332 0 is_stmt 1
	addl	$1, -16(%rbp)	#, i
.L2:
	.loc 1 332 0 is_stmt 0 discriminator 1
	cmpl	$63, -16(%rbp)	#, i
	jle	.L5	#,
	.loc 1 343 0 is_stmt 1
	movl	$0, -16(%rbp)	#, i
	jmp	.L6	#
.L9:
	.loc 1 345 0
	movl	$0, -12(%rbp)	#, j
	jmp	.L7	#
.L8:
	.loc 1 348 0 discriminator 2
	movl	-16(%rbp), %eax	# i, tmp156
	cltq
	movl	Xfile(,%rax,4), %edx	# Xfile, D.4854
	movl	-12(%rbp), %eax	# j, tmp158
	cltq
	movl	Xfile(,%rax,4), %eax	# Xfile, D.4854
	subl	%eax, %edx	# D.4854, D.4854
	movl	%edx, %eax	# D.4854, tmp159
	sarl	$31, %eax	#, tmp159
	xorl	%eax, %edx	# tmp159, D.4854
	subl	%eax, %edx	# tmp159, D.4854
	movl	-16(%rbp), %eax	# i, tmp161
	cltq
	movl	Xrank(,%rax,4), %ecx	# Xrank, D.4854
	movl	-12(%rbp), %eax	# j, tmp163
	cltq
	movl	Xrank(,%rax,4), %eax	# Xrank, D.4854
	subl	%eax, %ecx	# D.4854, D.4854
	movl	%ecx, %eax	# D.4854, D.4854
	movl	%eax, %ecx	# D.4854, tmp164
	sarl	$31, %ecx	#, tmp164
	xorl	%ecx, %eax	# tmp164, D.4854
	subl	%ecx, %eax	# tmp164, D.4854
	cmpl	%eax, %edx	# D.4854, D.4854
	cmovge	%edx, %eax	# D.4854,, D.4854
	cltq
	movl	pre_p_tropism(,%rax,4), %eax	# pre_p_tropism, D.4854
	.loc 1 347 0 discriminator 2
	movl	%eax, %ecx	# D.4854, D.4855
	movl	-12(%rbp), %eax	# j, tmp167
	movslq	%eax, %rsi	# tmp167, tmp166
	movl	-16(%rbp), %eax	# i, tmp169
	movslq	%eax, %rdx	# tmp169, tmp168
	movq	%rdx, %rax	# tmp168, tmp170
	salq	$3, %rax	#, tmp170
	addq	%rdx, %rax	# tmp168, tmp170
	salq	$4, %rax	#, tmp171
	addq	%rsi, %rax	# tmp166, tmp172
	addq	$p_tropism, %rax	#, tmp173
	movb	%cl, (%rax)	# D.4855, p_tropism
	.loc 1 350 0 discriminator 2
	movl	-16(%rbp), %eax	# i, tmp175
	cltq
	movl	Xfile(,%rax,4), %edx	# Xfile, D.4854
	movl	-12(%rbp), %eax	# j, tmp177
	cltq
	movl	Xfile(,%rax,4), %eax	# Xfile, D.4854
	subl	%eax, %edx	# D.4854, D.4854
	movl	%edx, %eax	# D.4854, tmp178
	sarl	$31, %eax	#, tmp178
	xorl	%eax, %edx	# tmp178, D.4854
	subl	%eax, %edx	# tmp178, D.4854
	movl	-16(%rbp), %eax	# i, tmp180
	cltq
	movl	Xrank(,%rax,4), %ecx	# Xrank, D.4854
	movl	-12(%rbp), %eax	# j, tmp182
	cltq
	movl	Xrank(,%rax,4), %eax	# Xrank, D.4854
	subl	%eax, %ecx	# D.4854, D.4854
	movl	%ecx, %eax	# D.4854, D.4854
	movl	%eax, %ecx	# D.4854, tmp183
	sarl	$31, %ecx	#, tmp183
	xorl	%ecx, %eax	# tmp183, D.4854
	subl	%ecx, %eax	# tmp183, D.4854
	cmpl	%eax, %edx	# D.4854, D.4854
	cmovge	%edx, %eax	# D.4854,, D.4854
	cltq
	movl	pre_b_tropism(,%rax,4), %eax	# pre_b_tropism, D.4854
	.loc 1 349 0 discriminator 2
	movl	%eax, %ecx	# D.4854, D.4855
	movl	-12(%rbp), %eax	# j, tmp186
	movslq	%eax, %rsi	# tmp186, tmp185
	movl	-16(%rbp), %eax	# i, tmp188
	movslq	%eax, %rdx	# tmp188, tmp187
	movq	%rdx, %rax	# tmp187, tmp189
	salq	$3, %rax	#, tmp189
	addq	%rdx, %rax	# tmp187, tmp189
	salq	$4, %rax	#, tmp190
	addq	%rsi, %rax	# tmp185, tmp191
	addq	$b_tropism, %rax	#, tmp192
	movb	%cl, (%rax)	# D.4855, b_tropism
	.loc 1 352 0 discriminator 2
	movl	-16(%rbp), %eax	# i, tmp194
	cltq
	movl	Xfile(,%rax,4), %edx	# Xfile, D.4854
	movl	-12(%rbp), %eax	# j, tmp196
	cltq
	movl	Xfile(,%rax,4), %eax	# Xfile, D.4854
	subl	%eax, %edx	# D.4854, D.4854
	movl	%edx, %eax	# D.4854, tmp197
	sarl	$31, %eax	#, tmp197
	xorl	%eax, %edx	# tmp197, D.4854
	subl	%eax, %edx	# tmp197, D.4854
	movl	-16(%rbp), %eax	# i, tmp199
	cltq
	movl	Xrank(,%rax,4), %ecx	# Xrank, D.4854
	movl	-12(%rbp), %eax	# j, tmp201
	cltq
	movl	Xrank(,%rax,4), %eax	# Xrank, D.4854
	subl	%eax, %ecx	# D.4854, D.4854
	movl	%ecx, %eax	# D.4854, D.4854
	movl	%eax, %ecx	# D.4854, tmp202
	sarl	$31, %ecx	#, tmp202
	xorl	%ecx, %eax	# tmp202, D.4854
	subl	%ecx, %eax	# tmp202, D.4854
	cmpl	%eax, %edx	# D.4854, D.4854
	cmovge	%edx, %eax	# D.4854,, D.4854
	cltq
	movl	pre_n_tropism(,%rax,4), %eax	# pre_n_tropism, D.4854
	.loc 1 351 0 discriminator 2
	movl	%eax, %ecx	# D.4854, D.4855
	movl	-12(%rbp), %eax	# j, tmp205
	movslq	%eax, %rsi	# tmp205, tmp204
	movl	-16(%rbp), %eax	# i, tmp207
	movslq	%eax, %rdx	# tmp207, tmp206
	movq	%rdx, %rax	# tmp206, tmp208
	salq	$3, %rax	#, tmp208
	addq	%rdx, %rax	# tmp206, tmp208
	salq	$4, %rax	#, tmp209
	addq	%rsi, %rax	# tmp204, tmp210
	addq	$n_tropism, %rax	#, tmp211
	movb	%cl, (%rax)	# D.4855, n_tropism
	.loc 1 354 0 discriminator 2
	movl	-16(%rbp), %eax	# i, tmp213
	cltq
	movl	Xfile(,%rax,4), %edx	# Xfile, D.4854
	movl	-12(%rbp), %eax	# j, tmp215
	cltq
	movl	Xfile(,%rax,4), %eax	# Xfile, D.4854
	subl	%eax, %edx	# D.4854, D.4854
	movl	%edx, %eax	# D.4854, tmp216
	sarl	$31, %eax	#, tmp216
	xorl	%eax, %edx	# tmp216, D.4854
	subl	%eax, %edx	# tmp216, D.4854
	movl	-16(%rbp), %eax	# i, tmp218
	cltq
	movl	Xrank(,%rax,4), %ecx	# Xrank, D.4854
	movl	-12(%rbp), %eax	# j, tmp220
	cltq
	movl	Xrank(,%rax,4), %eax	# Xrank, D.4854
	subl	%eax, %ecx	# D.4854, D.4854
	movl	%ecx, %eax	# D.4854, D.4854
	movl	%eax, %ecx	# D.4854, tmp221
	sarl	$31, %ecx	#, tmp221
	xorl	%ecx, %eax	# tmp221, D.4854
	subl	%ecx, %eax	# tmp221, D.4854
	cmpl	%eax, %edx	# D.4854, D.4854
	cmovge	%edx, %eax	# D.4854,, D.4854
	cltq
	movl	pre_r_tropism(,%rax,4), %eax	# pre_r_tropism, D.4854
	.loc 1 353 0 discriminator 2
	movl	%eax, %ecx	# D.4854, D.4855
	movl	-12(%rbp), %eax	# j, tmp224
	movslq	%eax, %rsi	# tmp224, tmp223
	movl	-16(%rbp), %eax	# i, tmp226
	movslq	%eax, %rdx	# tmp226, tmp225
	movq	%rdx, %rax	# tmp225, tmp227
	salq	$3, %rax	#, tmp227
	addq	%rdx, %rax	# tmp225, tmp227
	salq	$4, %rax	#, tmp228
	addq	%rsi, %rax	# tmp223, tmp229
	addq	$r_tropism, %rax	#, tmp230
	movb	%cl, (%rax)	# D.4855, r_tropism
	.loc 1 356 0 discriminator 2
	movl	-16(%rbp), %eax	# i, tmp232
	cltq
	movl	Xfile(,%rax,4), %edx	# Xfile, D.4854
	movl	-12(%rbp), %eax	# j, tmp234
	cltq
	movl	Xfile(,%rax,4), %eax	# Xfile, D.4854
	subl	%eax, %edx	# D.4854, D.4854
	movl	%edx, %eax	# D.4854, tmp235
	sarl	$31, %eax	#, tmp235
	xorl	%eax, %edx	# tmp235, D.4854
	subl	%eax, %edx	# tmp235, D.4854
	movl	-16(%rbp), %eax	# i, tmp237
	cltq
	movl	Xrank(,%rax,4), %ecx	# Xrank, D.4854
	movl	-12(%rbp), %eax	# j, tmp239
	cltq
	movl	Xrank(,%rax,4), %eax	# Xrank, D.4854
	subl	%eax, %ecx	# D.4854, D.4854
	movl	%ecx, %eax	# D.4854, D.4854
	movl	%eax, %ecx	# D.4854, tmp240
	sarl	$31, %ecx	#, tmp240
	xorl	%ecx, %eax	# tmp240, D.4854
	subl	%ecx, %eax	# tmp240, D.4854
	cmpl	%eax, %edx	# D.4854, D.4854
	cmovge	%edx, %eax	# D.4854,, D.4854
	cltq
	movl	pre_q_tropism(,%rax,4), %eax	# pre_q_tropism, D.4854
	.loc 1 355 0 discriminator 2
	movl	%eax, %ecx	# D.4854, D.4855
	movl	-12(%rbp), %eax	# j, tmp243
	movslq	%eax, %rsi	# tmp243, tmp242
	movl	-16(%rbp), %eax	# i, tmp245
	movslq	%eax, %rdx	# tmp245, tmp244
	movq	%rdx, %rax	# tmp244, tmp246
	salq	$3, %rax	#, tmp246
	addq	%rdx, %rax	# tmp244, tmp246
	salq	$4, %rax	#, tmp247
	addq	%rsi, %rax	# tmp242, tmp248
	addq	$q_tropism, %rax	#, tmp249
	movb	%cl, (%rax)	# D.4855, q_tropism
	.loc 1 345 0 discriminator 2
	addl	$1, -12(%rbp)	#, j
.L7:
	.loc 1 345 0 is_stmt 0 discriminator 1
	cmpl	$143, -12(%rbp)	#, j
	jle	.L8	#,
	.loc 1 343 0 is_stmt 1
	addl	$1, -16(%rbp)	#, i
.L6:
	.loc 1 343 0 is_stmt 0 discriminator 1
	cmpl	$143, -16(%rbp)	#, i
	jle	.L9	#,
	.loc 1 359 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	initialize_eval, .-initialize_eval
	.globl	eval
	.type	eval, @function
eval:
.LFB3:
	.loc 1 361 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movl	%edi, -52(%rbp)	# alpha, alpha
	movl	%esi, -56(%rbp)	# beta, beta
	.loc 1 366 0
	movl	$0, -44(%rbp)	#, score
	.loc 1 372 0
	movl	Variant(%rip), %eax	# Variant, Variant.0
	cmpl	$2, %eax	#, Variant.0
	jne	.L11	#,
	.loc 1 374 0
	movl	-56(%rbp), %edx	# beta, tmp603
	movl	-52(%rbp), %eax	# alpha, tmp604
	movl	%edx, %esi	# tmp603,
	movl	%eax, %edi	# tmp604,
	call	std_eval	#
	jmp	.L136	#
.L11:
	.loc 1 376 0
	movl	Variant(%rip), %eax	# Variant, Variant.1
	cmpl	$3, %eax	#, Variant.1
	jne	.L13	#,
	.loc 1 378 0
	call	suicide_eval	#
	jmp	.L136	#
.L13:
	.loc 1 380 0
	movl	Variant(%rip), %eax	# Variant, Variant.2
	cmpl	$4, %eax	#, Variant.2
	jne	.L14	#,
	.loc 1 382 0
	call	losers_eval	#
	jmp	.L136	#
.L14:
	.loc 1 385 0
	movl	$0, -40(%rbp)	#, in_cache
	.loc 1 387 0
	leaq	-40(%rbp), %rdx	#, tmp605
	leaq	-44(%rbp), %rax	#, tmp606
	movq	%rdx, %rsi	# tmp605,
	movq	%rax, %rdi	# tmp606,
	call	checkECache	#
	.loc 1 389 0
	movl	-40(%rbp), %eax	# in_cache, in_cache.3
	testl	%eax, %eax	# in_cache.3
	je	.L15	#,
	.loc 1 391 0
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.4
	cmpl	$1, %eax	#, white_to_move.4
	jne	.L16	#,
	.loc 1 391 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# score, D.4856
	jmp	.L136	#
.L16:
	.loc 1 392 0 is_stmt 1
	movl	-44(%rbp), %eax	# score, score.5
	negl	%eax	# D.4856
	jmp	.L136	#
.L15:
	.loc 1 397 0
	movl	cfg_devscale(%rip), %eax	# cfg_devscale, cfg_devscale.6
	testl	%eax, %eax	# cfg_devscale.6
	je	.L17	#,
	.loc 1 400 0
	movl	white_to_move(%rip), %edx	# white_to_move, white_to_move.7
	movl	comp_color(%rip), %eax	# comp_color, comp_color.8
	cmpl	%eax, %edx	# comp_color.8, white_to_move.7
	je	.L18	#,
	.loc 1 402 0
	movl	white_hand_eval(%rip), %eax	# white_hand_eval, white_hand_eval.9
	cmpl	$200, %eax	#, white_hand_eval.9
	jg	.L19	#,
	.loc 1 402 0 is_stmt 0 discriminator 1
	movl	Variant(%rip), %eax	# Variant, Variant.10
	cmpl	$1, %eax	#, Variant.10
	je	.L19	#,
	.loc 1 405 0 is_stmt 1
	movl	$2, -20(%rbp)	#, wdev_dscale
	jmp	.L22	#
.L19:
	.loc 1 407 0
	movl	white_hand_eval(%rip), %eax	# white_hand_eval, white_hand_eval.11
	cmpl	$699, %eax	#, white_hand_eval.11
	jle	.L21	#,
	.loc 1 410 0
	movl	$0, -20(%rbp)	#, wdev_dscale
	jmp	.L22	#
.L21:
	.loc 1 414 0
	movl	$1, -20(%rbp)	#, wdev_dscale
	jmp	.L22	#
.L18:
	.loc 1 418 0
	movl	$0, -20(%rbp)	#, wdev_dscale
.L22:
	.loc 1 420 0
	movl	white_to_move(%rip), %edx	# white_to_move, white_to_move.12
	movl	comp_color(%rip), %eax	# comp_color, comp_color.13
	cmpl	%eax, %edx	# comp_color.13, white_to_move.12
	jne	.L23	#,
	.loc 1 422 0
	movl	black_hand_eval(%rip), %eax	# black_hand_eval, black_hand_eval.14
	negl	%eax	# D.4856
	cmpl	$200, %eax	#, D.4856
	jg	.L24	#,
	.loc 1 422 0 is_stmt 0 discriminator 1
	movl	Variant(%rip), %eax	# Variant, Variant.15
	cmpl	$1, %eax	#, Variant.15
	je	.L24	#,
	.loc 1 425 0 is_stmt 1
	movl	$2, -16(%rbp)	#, bdev_dscale
	jmp	.L28	#
.L24:
	.loc 1 427 0
	movl	black_hand_eval(%rip), %eax	# black_hand_eval, black_hand_eval.16
	negl	%eax	# D.4856
	cmpl	$699, %eax	#, D.4856
	jle	.L26	#,
	.loc 1 430 0
	movl	$0, -16(%rbp)	#, bdev_dscale
	jmp	.L28	#
.L26:
	.loc 1 434 0
	movl	$1, -16(%rbp)	#, bdev_dscale
	jmp	.L28	#
.L23:
	.loc 1 438 0
	movl	$0, -16(%rbp)	#, bdev_dscale
	jmp	.L28	#
.L17:
	.loc 1 442 0
	movl	$0, -16(%rbp)	#, bdev_dscale
	movl	-16(%rbp), %eax	# bdev_dscale, tmp607
	movl	%eax, -20(%rbp)	# tmp607, wdev_dscale
.L28:
	.loc 1 447 0
	movl	$1, -36(%rbp)	#, a
	movl	$1, -32(%rbp)	#, j
	jmp	.L29	#
.L43:
	.loc 1 448 0
	movl	-32(%rbp), %eax	# j, tmp609
	cltq
	movl	pieces(,%rax,4), %eax	# pieces, tmp610
	movl	%eax, -12(%rbp)	# tmp610, i
	.loc 1 450 0
	cmpl	$0, -12(%rbp)	#, i
	jne	.L30	#,
	.loc 1 451 0
	jmp	.L31	#
.L30:
	.loc 1 453 0
	addl	$1, -36(%rbp)	#, a
	.loc 1 455 0
	movl	-12(%rbp), %eax	# i, tmp612
	cltq
	movl	board(,%rax,4), %eax	# board, D.4856
	cmpl	$12, %eax	#, D.4856
	ja	.L31	#,
	movl	%eax, %eax	# D.4856, tmp613
	movq	.L33(,%rax,8), %rax	#, tmp614
	jmp	*%rax	# tmp614
	.section	.rodata
	.align 8
	.align 4
.L33:
	.quad	.L31
	.quad	.L32
	.quad	.L34
	.quad	.L35
	.quad	.L36
	.quad	.L31
	.quad	.L31
	.quad	.L37
	.quad	.L38
	.quad	.L39
	.quad	.L40
	.quad	.L41
	.quad	.L42
	.text
.L32:
	.loc 1 457 0
	movl	-44(%rbp), %eax	# score, score.17
	addl	$100, %eax	#, score.18
	movl	%eax, -44(%rbp)	# score.18, score
	.loc 1 458 0
	movl	-12(%rbp), %eax	# i, tmp616
	cltq
	movl	white_pawn(,%rax,4), %edx	# white_pawn, D.4856
	movl	-20(%rbp), %eax	# wdev_dscale, tmp617
	movl	%eax, %ecx	# tmp617, tmp789
	sarl	%cl, %edx	# tmp789, D.4856
	movl	-44(%rbp), %eax	# score, score.19
	addl	%edx, %eax	# D.4856, score.20
	movl	%eax, -44(%rbp)	# score.20, score
	.loc 1 459 0
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.21
	movslq	%eax, %rcx	# bking_loc.21, tmp618
	movl	-12(%rbp), %eax	# i, tmp620
	movslq	%eax, %rdx	# tmp620, tmp619
	movq	%rdx, %rax	# tmp619, tmp621
	salq	$3, %rax	#, tmp621
	addq	%rdx, %rax	# tmp619, tmp621
	salq	$4, %rax	#, tmp622
	addq	%rcx, %rax	# tmp618, tmp623
	addq	$p_tropism, %rax	#, tmp624
	movzbl	(%rax), %eax	# p_tropism, D.4857
	movzbl	%al, %edx	# D.4857, D.4856
	movl	-44(%rbp), %eax	# score, score.22
	addl	%edx, %eax	# D.4856, score.23
	movl	%eax, -44(%rbp)	# score.23, score
	.loc 1 460 0
	jmp	.L31	#
.L34:
	.loc 1 463 0
	movl	-44(%rbp), %eax	# score, score.24
	subl	$100, %eax	#, score.25
	movl	%eax, -44(%rbp)	# score.25, score
	.loc 1 464 0
	movl	-44(%rbp), %edx	# score, score.26
	movl	-12(%rbp), %eax	# i, tmp626
	cltq
	movl	black_pawn(,%rax,4), %esi	# black_pawn, D.4856
	movl	-16(%rbp), %eax	# bdev_dscale, tmp627
	movl	%eax, %ecx	# tmp627, tmp791
	sarl	%cl, %esi	# tmp791, D.4856
	movl	%esi, %eax	# D.4856, D.4856
	subl	%eax, %edx	# D.4856, score.27
	movl	%edx, %eax	# score.27, score.27
	movl	%eax, -44(%rbp)	# score.27, score
	.loc 1 465 0
	movl	-44(%rbp), %ecx	# score, score.28
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.29
	movslq	%eax, %rsi	# wking_loc.29, tmp628
	movl	-12(%rbp), %eax	# i, tmp630
	movslq	%eax, %rdx	# tmp630, tmp629
	movq	%rdx, %rax	# tmp629, tmp631
	salq	$3, %rax	#, tmp631
	addq	%rdx, %rax	# tmp629, tmp631
	salq	$4, %rax	#, tmp632
	addq	%rsi, %rax	# tmp628, tmp633
	addq	$p_tropism, %rax	#, tmp634
	movzbl	(%rax), %eax	# p_tropism, D.4857
	movzbl	%al, %eax	# D.4857, D.4856
	subl	%eax, %ecx	# D.4856, score.30
	movl	%ecx, %eax	# score.30, score.30
	movl	%eax, -44(%rbp)	# score.30, score
	.loc 1 466 0
	jmp	.L31	#
.L37:
	.loc 1 469 0
	movl	-44(%rbp), %eax	# score, score.31
	addl	$250, %eax	#, score.32
	movl	%eax, -44(%rbp)	# score.32, score
	.loc 1 470 0
	movl	-12(%rbp), %eax	# i, tmp636
	cltq
	movl	white_rook(,%rax,4), %edx	# white_rook, D.4856
	movl	-20(%rbp), %eax	# wdev_dscale, tmp637
	movl	%eax, %ecx	# tmp637, tmp794
	sarl	%cl, %edx	# tmp794, D.4856
	movl	-44(%rbp), %eax	# score, score.33
	addl	%edx, %eax	# D.4856, score.34
	movl	%eax, -44(%rbp)	# score.34, score
	.loc 1 471 0
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.35
	movslq	%eax, %rcx	# bking_loc.35, tmp638
	movl	-12(%rbp), %eax	# i, tmp640
	movslq	%eax, %rdx	# tmp640, tmp639
	movq	%rdx, %rax	# tmp639, tmp641
	salq	$3, %rax	#, tmp641
	addq	%rdx, %rax	# tmp639, tmp641
	salq	$4, %rax	#, tmp642
	addq	%rcx, %rax	# tmp638, tmp643
	addq	$r_tropism, %rax	#, tmp644
	movzbl	(%rax), %eax	# r_tropism, D.4857
	movzbl	%al, %edx	# D.4857, D.4856
	movl	-44(%rbp), %eax	# score, score.36
	addl	%edx, %eax	# D.4856, score.37
	movl	%eax, -44(%rbp)	# score.37, score
	.loc 1 472 0
	jmp	.L31	#
.L38:
	.loc 1 475 0
	movl	-44(%rbp), %eax	# score, score.38
	subl	$250, %eax	#, score.39
	movl	%eax, -44(%rbp)	# score.39, score
	.loc 1 476 0
	movl	-44(%rbp), %edx	# score, score.40
	movl	-12(%rbp), %eax	# i, tmp646
	cltq
	movl	black_rook(,%rax,4), %esi	# black_rook, D.4856
	movl	-16(%rbp), %eax	# bdev_dscale, tmp647
	movl	%eax, %ecx	# tmp647, tmp796
	sarl	%cl, %esi	# tmp796, D.4856
	movl	%esi, %eax	# D.4856, D.4856
	subl	%eax, %edx	# D.4856, score.41
	movl	%edx, %eax	# score.41, score.41
	movl	%eax, -44(%rbp)	# score.41, score
	.loc 1 477 0
	movl	-44(%rbp), %ecx	# score, score.42
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.43
	movslq	%eax, %rsi	# wking_loc.43, tmp648
	movl	-12(%rbp), %eax	# i, tmp650
	movslq	%eax, %rdx	# tmp650, tmp649
	movq	%rdx, %rax	# tmp649, tmp651
	salq	$3, %rax	#, tmp651
	addq	%rdx, %rax	# tmp649, tmp651
	salq	$4, %rax	#, tmp652
	addq	%rsi, %rax	# tmp648, tmp653
	addq	$r_tropism, %rax	#, tmp654
	movzbl	(%rax), %eax	# r_tropism, D.4857
	movzbl	%al, %eax	# D.4857, D.4856
	subl	%eax, %ecx	# D.4856, score.44
	movl	%ecx, %eax	# score.44, score.44
	movl	%eax, -44(%rbp)	# score.44, score
	.loc 1 478 0
	jmp	.L31	#
.L41:
	.loc 1 481 0
	movl	-44(%rbp), %eax	# score, score.45
	addl	$230, %eax	#, score.46
	movl	%eax, -44(%rbp)	# score.46, score
	.loc 1 482 0
	movl	-12(%rbp), %eax	# i, tmp656
	cltq
	movl	pcsqbishop(,%rax,4), %edx	# pcsqbishop, D.4856
	movl	-20(%rbp), %eax	# wdev_dscale, tmp657
	movl	%eax, %ecx	# tmp657, tmp799
	sarl	%cl, %edx	# tmp799, D.4856
	movl	-44(%rbp), %eax	# score, score.47
	addl	%edx, %eax	# D.4856, score.48
	movl	%eax, -44(%rbp)	# score.48, score
	.loc 1 483 0
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.49
	movslq	%eax, %rcx	# bking_loc.49, tmp658
	movl	-12(%rbp), %eax	# i, tmp660
	movslq	%eax, %rdx	# tmp660, tmp659
	movq	%rdx, %rax	# tmp659, tmp661
	salq	$3, %rax	#, tmp661
	addq	%rdx, %rax	# tmp659, tmp661
	salq	$4, %rax	#, tmp662
	addq	%rcx, %rax	# tmp658, tmp663
	addq	$b_tropism, %rax	#, tmp664
	movzbl	(%rax), %eax	# b_tropism, D.4857
	movzbl	%al, %edx	# D.4857, D.4856
	movl	-44(%rbp), %eax	# score, score.50
	addl	%edx, %eax	# D.4856, score.51
	movl	%eax, -44(%rbp)	# score.51, score
	.loc 1 484 0
	jmp	.L31	#
.L42:
	.loc 1 487 0
	movl	-44(%rbp), %eax	# score, score.52
	subl	$230, %eax	#, score.53
	movl	%eax, -44(%rbp)	# score.53, score
	.loc 1 488 0
	movl	-44(%rbp), %edx	# score, score.54
	movl	-12(%rbp), %eax	# i, tmp666
	cltq
	movl	pcsqbishop(,%rax,4), %esi	# pcsqbishop, D.4856
	movl	-16(%rbp), %eax	# bdev_dscale, tmp667
	movl	%eax, %ecx	# tmp667, tmp801
	sarl	%cl, %esi	# tmp801, D.4856
	movl	%esi, %eax	# D.4856, D.4856
	subl	%eax, %edx	# D.4856, score.55
	movl	%edx, %eax	# score.55, score.55
	movl	%eax, -44(%rbp)	# score.55, score
	.loc 1 489 0
	movl	-44(%rbp), %ecx	# score, score.56
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.57
	movslq	%eax, %rsi	# wking_loc.57, tmp668
	movl	-12(%rbp), %eax	# i, tmp670
	movslq	%eax, %rdx	# tmp670, tmp669
	movq	%rdx, %rax	# tmp669, tmp671
	salq	$3, %rax	#, tmp671
	addq	%rdx, %rax	# tmp669, tmp671
	salq	$4, %rax	#, tmp672
	addq	%rsi, %rax	# tmp668, tmp673
	addq	$b_tropism, %rax	#, tmp674
	movzbl	(%rax), %eax	# b_tropism, D.4857
	movzbl	%al, %eax	# D.4857, D.4856
	subl	%eax, %ecx	# D.4856, score.58
	movl	%ecx, %eax	# score.58, score.58
	movl	%eax, -44(%rbp)	# score.58, score
	.loc 1 490 0
	jmp	.L31	#
.L35:
	.loc 1 493 0
	movl	-44(%rbp), %eax	# score, score.59
	addl	$210, %eax	#, score.60
	movl	%eax, -44(%rbp)	# score.60, score
	.loc 1 494 0
	movl	-12(%rbp), %eax	# i, tmp676
	cltq
	movl	white_knight(,%rax,4), %edx	# white_knight, D.4856
	movl	-20(%rbp), %eax	# wdev_dscale, tmp677
	movl	%eax, %ecx	# tmp677, tmp804
	sarl	%cl, %edx	# tmp804, D.4856
	movl	-44(%rbp), %eax	# score, score.61
	addl	%edx, %eax	# D.4856, score.62
	movl	%eax, -44(%rbp)	# score.62, score
	.loc 1 495 0
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.63
	movslq	%eax, %rcx	# bking_loc.63, tmp678
	movl	-12(%rbp), %eax	# i, tmp680
	movslq	%eax, %rdx	# tmp680, tmp679
	movq	%rdx, %rax	# tmp679, tmp681
	salq	$3, %rax	#, tmp681
	addq	%rdx, %rax	# tmp679, tmp681
	salq	$4, %rax	#, tmp682
	addq	%rcx, %rax	# tmp678, tmp683
	addq	$n_tropism, %rax	#, tmp684
	movzbl	(%rax), %eax	# n_tropism, D.4857
	movzbl	%al, %edx	# D.4857, D.4856
	movl	-44(%rbp), %eax	# score, score.64
	addl	%edx, %eax	# D.4856, score.65
	movl	%eax, -44(%rbp)	# score.65, score
	.loc 1 496 0
	jmp	.L31	#
.L36:
	.loc 1 499 0
	movl	-44(%rbp), %eax	# score, score.66
	subl	$210, %eax	#, score.67
	movl	%eax, -44(%rbp)	# score.67, score
	.loc 1 500 0
	movl	-44(%rbp), %edx	# score, score.68
	movl	-12(%rbp), %eax	# i, tmp686
	cltq
	movl	black_knight(,%rax,4), %esi	# black_knight, D.4856
	movl	-16(%rbp), %eax	# bdev_dscale, tmp687
	movl	%eax, %ecx	# tmp687, tmp806
	sarl	%cl, %esi	# tmp806, D.4856
	movl	%esi, %eax	# D.4856, D.4856
	subl	%eax, %edx	# D.4856, score.69
	movl	%edx, %eax	# score.69, score.69
	movl	%eax, -44(%rbp)	# score.69, score
	.loc 1 501 0
	movl	-44(%rbp), %ecx	# score, score.70
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.71
	movslq	%eax, %rsi	# wking_loc.71, tmp688
	movl	-12(%rbp), %eax	# i, tmp690
	movslq	%eax, %rdx	# tmp690, tmp689
	movq	%rdx, %rax	# tmp689, tmp691
	salq	$3, %rax	#, tmp691
	addq	%rdx, %rax	# tmp689, tmp691
	salq	$4, %rax	#, tmp692
	addq	%rsi, %rax	# tmp688, tmp693
	addq	$n_tropism, %rax	#, tmp694
	movzbl	(%rax), %eax	# n_tropism, D.4857
	movzbl	%al, %eax	# D.4857, D.4856
	subl	%eax, %ecx	# D.4856, score.72
	movl	%ecx, %eax	# score.72, score.72
	movl	%eax, -44(%rbp)	# score.72, score
	.loc 1 502 0
	jmp	.L31	#
.L39:
	.loc 1 505 0
	movl	-44(%rbp), %eax	# score, score.73
	addl	$450, %eax	#, score.74
	movl	%eax, -44(%rbp)	# score.74, score
	.loc 1 506 0
	movl	-12(%rbp), %eax	# i, tmp696
	cltq
	movl	white_queen(,%rax,4), %edx	# white_queen, D.4856
	movl	-20(%rbp), %eax	# wdev_dscale, tmp697
	movl	%eax, %ecx	# tmp697, tmp809
	sarl	%cl, %edx	# tmp809, D.4856
	movl	-44(%rbp), %eax	# score, score.75
	addl	%edx, %eax	# D.4856, score.76
	movl	%eax, -44(%rbp)	# score.76, score
	.loc 1 507 0
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.77
	movslq	%eax, %rcx	# bking_loc.77, tmp698
	movl	-12(%rbp), %eax	# i, tmp700
	movslq	%eax, %rdx	# tmp700, tmp699
	movq	%rdx, %rax	# tmp699, tmp701
	salq	$3, %rax	#, tmp701
	addq	%rdx, %rax	# tmp699, tmp701
	salq	$4, %rax	#, tmp702
	addq	%rcx, %rax	# tmp698, tmp703
	addq	$q_tropism, %rax	#, tmp704
	movzbl	(%rax), %eax	# q_tropism, D.4857
	movzbl	%al, %edx	# D.4857, D.4856
	movl	-44(%rbp), %eax	# score, score.78
	addl	%edx, %eax	# D.4856, score.79
	movl	%eax, -44(%rbp)	# score.79, score
	.loc 1 508 0
	jmp	.L31	#
.L40:
	.loc 1 511 0
	movl	-44(%rbp), %eax	# score, score.80
	subl	$450, %eax	#, score.81
	movl	%eax, -44(%rbp)	# score.81, score
	.loc 1 512 0
	movl	-44(%rbp), %edx	# score, score.82
	movl	-12(%rbp), %eax	# i, tmp706
	cltq
	movl	black_queen(,%rax,4), %esi	# black_queen, D.4856
	movl	-16(%rbp), %eax	# bdev_dscale, tmp707
	movl	%eax, %ecx	# tmp707, tmp811
	sarl	%cl, %esi	# tmp811, D.4856
	movl	%esi, %eax	# D.4856, D.4856
	subl	%eax, %edx	# D.4856, score.83
	movl	%edx, %eax	# score.83, score.83
	movl	%eax, -44(%rbp)	# score.83, score
	.loc 1 513 0
	movl	-44(%rbp), %ecx	# score, score.84
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.85
	movslq	%eax, %rsi	# wking_loc.85, tmp708
	movl	-12(%rbp), %eax	# i, tmp710
	movslq	%eax, %rdx	# tmp710, tmp709
	movq	%rdx, %rax	# tmp709, tmp711
	salq	$3, %rax	#, tmp711
	addq	%rdx, %rax	# tmp709, tmp711
	salq	$4, %rax	#, tmp712
	addq	%rsi, %rax	# tmp708, tmp713
	addq	$q_tropism, %rax	#, tmp714
	movzbl	(%rax), %eax	# q_tropism, D.4857
	movzbl	%al, %eax	# D.4857, D.4856
	subl	%eax, %ecx	# D.4856, score.86
	movl	%ecx, %eax	# score.86, score.86
	movl	%eax, -44(%rbp)	# score.86, score
	.loc 1 514 0
	nop
.L31:
	.loc 1 447 0
	addl	$1, -32(%rbp)	#, j
.L29:
	.loc 1 447 0 is_stmt 0 discriminator 1
	movl	piece_count(%rip), %eax	# piece_count, piece_count.87
	cmpl	%eax, -36(%rbp)	# piece_count.87, a
	jle	.L43	#,
	.loc 1 522 0 is_stmt 1
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.88
	cltq
	movl	white_king(,%rax,4), %edx	# white_king, D.4856
	movl	-16(%rbp), %eax	# bdev_dscale, tmp716
	movl	%eax, %ecx	# tmp716, tmp814
	sarl	%cl, %edx	# tmp814, D.4856
	movl	-44(%rbp), %eax	# score, score.89
	addl	%edx, %eax	# D.4856, score.90
	movl	%eax, -44(%rbp)	# score.90, score
	.loc 1 523 0
	movl	-44(%rbp), %edx	# score, score.91
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.92
	cltq
	movl	black_king(,%rax,4), %esi	# black_king, D.4856
	movl	-20(%rbp), %eax	# wdev_dscale, tmp718
	movl	%eax, %ecx	# tmp718, tmp816
	sarl	%cl, %esi	# tmp816, D.4856
	movl	%esi, %eax	# D.4856, D.4856
	subl	%eax, %edx	# D.4856, score.93
	movl	%edx, %eax	# score.93, score.93
	movl	%eax, -44(%rbp)	# score.93, score
	.loc 1 528 0
	movl	white_castled(%rip), %eax	# white_castled, white_castled.94
	testl	%eax, %eax	# white_castled.94
	jne	.L44	#,
	.loc 1 528 0 is_stmt 0 discriminator 1
	movl	moved+120(%rip), %eax	# moved, D.4856
	testl	%eax, %eax	# D.4856
	je	.L44	#,
	.loc 1 530 0 is_stmt 1
	movl	-44(%rbp), %eax	# score, score.95
	subl	$30, %eax	#, score.96
	movl	%eax, -44(%rbp)	# score.96, score
.L44:
	.loc 1 532 0
	movl	black_castled(%rip), %eax	# black_castled, black_castled.97
	testl	%eax, %eax	# black_castled.97
	jne	.L45	#,
	.loc 1 532 0 is_stmt 0 discriminator 1
	movl	moved+456(%rip), %eax	# moved, D.4856
	testl	%eax, %eax	# D.4856
	je	.L45	#,
	.loc 1 534 0 is_stmt 1
	movl	-44(%rbp), %eax	# score, score.98
	addl	$30, %eax	#, score.99
	movl	%eax, -44(%rbp)	# score.99, score
.L45:
	.loc 1 538 0
	movl	moved+164(%rip), %eax	# moved, D.4856
	testl	%eax, %eax	# D.4856
	jne	.L46	#,
	.loc 1 538 0 is_stmt 0 discriminator 1
	movl	board+212(%rip), %eax	# board, D.4856
	cmpl	$13, %eax	#, D.4856
	je	.L46	#,
	.loc 1 539 0 is_stmt 1
	movl	-44(%rbp), %eax	# score, score.100
	subl	$15, %eax	#, score.101
	movl	%eax, -44(%rbp)	# score.101, score
.L46:
	.loc 1 540 0
	movl	moved+168(%rip), %eax	# moved, D.4856
	testl	%eax, %eax	# D.4856
	jne	.L47	#,
	.loc 1 540 0 is_stmt 0 discriminator 1
	movl	board+216(%rip), %eax	# board, D.4856
	cmpl	$13, %eax	#, D.4856
	je	.L47	#,
	.loc 1 541 0 is_stmt 1
	movl	-44(%rbp), %eax	# score, score.102
	subl	$15, %eax	#, score.103
	movl	%eax, -44(%rbp)	# score.103, score
.L47:
	.loc 1 542 0
	movl	moved+404(%rip), %eax	# moved, D.4856
	testl	%eax, %eax	# D.4856
	jne	.L48	#,
	.loc 1 542 0 is_stmt 0 discriminator 1
	movl	board+356(%rip), %eax	# board, D.4856
	cmpl	$13, %eax	#, D.4856
	je	.L48	#,
	.loc 1 543 0 is_stmt 1
	movl	-44(%rbp), %eax	# score, score.104
	addl	$15, %eax	#, score.105
	movl	%eax, -44(%rbp)	# score.105, score
.L48:
	.loc 1 544 0
	movl	moved+408(%rip), %eax	# moved, D.4856
	testl	%eax, %eax	# D.4856
	jne	.L49	#,
	.loc 1 544 0 is_stmt 0 discriminator 1
	movl	board+360(%rip), %eax	# board, D.4856
	cmpl	$13, %eax	#, D.4856
	je	.L49	#,
	.loc 1 545 0 is_stmt 1
	movl	-44(%rbp), %eax	# score, score.106
	addl	$15, %eax	#, score.107
	movl	%eax, -44(%rbp)	# score.107, score
.L49:
	.loc 1 548 0
	movl	cfg_smarteval(%rip), %eax	# cfg_smarteval, cfg_smarteval.108
	testl	%eax, %eax	# cfg_smarteval.108
	je	.L50	#,
	.loc 1 553 0
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.109
	cmpl	$30, %eax	#, wking_loc.109
	je	.L51	#,
	.loc 1 553 0 is_stmt 0 discriminator 1
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.110
	cmpl	$29, %eax	#, wking_loc.110
	je	.L51	#,
	.loc 1 555 0 is_stmt 1
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.111
	addl	$11, %eax	#, D.4856
	cltq
	movl	board(,%rax,4), %eax	# board, D.4856
	cmpl	$1, %eax	#, D.4856
	je	.L52	#,
	.loc 1 555 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# score, score.112
	subl	$24, %eax	#, score.113
	movl	%eax, -44(%rbp)	# score.113, score
.L52:
	.loc 1 556 0 is_stmt 1
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.114
	addl	$12, %eax	#, D.4856
	cltq
	movl	board(,%rax,4), %eax	# board, D.4856
	cmpl	$1, %eax	#, D.4856
	je	.L53	#,
	.loc 1 556 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# score, score.115
	subl	$35, %eax	#, score.116
	movl	%eax, -44(%rbp)	# score.116, score
.L53:
	.loc 1 557 0 is_stmt 1
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.117
	addl	$13, %eax	#, D.4856
	cltq
	movl	board(,%rax,4), %eax	# board, D.4856
	cmpl	$1, %eax	#, D.4856
	je	.L54	#,
	.loc 1 557 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# score, score.118
	subl	$24, %eax	#, score.119
	movl	%eax, -44(%rbp)	# score.119, score
.L54:
	.loc 1 560 0 is_stmt 1
	movl	white_castled(%rip), %eax	# white_castled, white_castled.120
	testl	%eax, %eax	# white_castled.120
	je	.L51	#,
	.loc 1 562 0
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.121
	subl	$25, %eax	#, D.4856
	cltq
	movl	board(,%rax,4), %eax	# board, D.4856
	cmpl	$2, %eax	#, D.4856
	jne	.L55	#,
	.loc 1 562 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# score, score.122
	addl	$11, %eax	#, score.123
	movl	%eax, -44(%rbp)	# score.123, score
.L55:
	.loc 1 563 0 is_stmt 1
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.124
	subl	$24, %eax	#, D.4856
	cltq
	movl	board(,%rax,4), %eax	# board, D.4856
	cmpl	$2, %eax	#, D.4856
	jne	.L56	#,
	.loc 1 563 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# score, score.125
	addl	$15, %eax	#, score.126
	movl	%eax, -44(%rbp)	# score.126, score
.L56:
	.loc 1 564 0 is_stmt 1
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.127
	subl	$23, %eax	#, D.4856
	cltq
	movl	board(,%rax,4), %eax	# board, D.4856
	cmpl	$2, %eax	#, D.4856
	jne	.L51	#,
	.loc 1 564 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# score, score.128
	addl	$11, %eax	#, score.129
	movl	%eax, -44(%rbp)	# score.129, score
.L51:
	.loc 1 568 0 is_stmt 1
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.130
	cmpl	$114, %eax	#, bking_loc.130
	je	.L57	#,
	.loc 1 568 0 is_stmt 0 discriminator 1
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.131
	cmpl	$113, %eax	#, bking_loc.131
	je	.L57	#,
	.loc 1 570 0 is_stmt 1
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.132
	subl	$13, %eax	#, D.4856
	cltq
	movl	board(,%rax,4), %eax	# board, D.4856
	cmpl	$2, %eax	#, D.4856
	je	.L58	#,
	.loc 1 570 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# score, score.133
	addl	$24, %eax	#, score.134
	movl	%eax, -44(%rbp)	# score.134, score
.L58:
	.loc 1 571 0 is_stmt 1
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.135
	subl	$12, %eax	#, D.4856
	cltq
	movl	board(,%rax,4), %eax	# board, D.4856
	cmpl	$2, %eax	#, D.4856
	je	.L59	#,
	.loc 1 571 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# score, score.136
	addl	$35, %eax	#, score.137
	movl	%eax, -44(%rbp)	# score.137, score
.L59:
	.loc 1 572 0 is_stmt 1
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.138
	subl	$11, %eax	#, D.4856
	cltq
	movl	board(,%rax,4), %eax	# board, D.4856
	cmpl	$2, %eax	#, D.4856
	je	.L60	#,
	.loc 1 572 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# score, score.139
	addl	$24, %eax	#, score.140
	movl	%eax, -44(%rbp)	# score.140, score
.L60:
	.loc 1 575 0 is_stmt 1
	movl	black_castled(%rip), %eax	# black_castled, black_castled.141
	testl	%eax, %eax	# black_castled.141
	je	.L57	#,
	.loc 1 577 0
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.142
	subl	$25, %eax	#, D.4856
	cltq
	movl	board(,%rax,4), %eax	# board, D.4856
	cmpl	$2, %eax	#, D.4856
	jne	.L61	#,
	.loc 1 577 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# score, score.143
	subl	$11, %eax	#, score.144
	movl	%eax, -44(%rbp)	# score.144, score
.L61:
	.loc 1 578 0 is_stmt 1
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.145
	subl	$24, %eax	#, D.4856
	cltq
	movl	board(,%rax,4), %eax	# board, D.4856
	cmpl	$2, %eax	#, D.4856
	jne	.L62	#,
	.loc 1 578 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# score, score.146
	subl	$15, %eax	#, score.147
	movl	%eax, -44(%rbp)	# score.147, score
.L62:
	.loc 1 579 0 is_stmt 1
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.148
	subl	$23, %eax	#, D.4856
	cltq
	movl	board(,%rax,4), %eax	# board, D.4856
	cmpl	$2, %eax	#, D.4856
	jne	.L57	#,
	.loc 1 579 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# score, score.149
	subl	$11, %eax	#, score.150
	movl	%eax, -44(%rbp)	# score.150, score
.L57:
	.loc 1 583 0 is_stmt 1
	movl	moved+168(%rip), %eax	# moved, D.4856
	testl	%eax, %eax	# D.4856
	je	.L63	#,
	.loc 1 585 0
	movl	-44(%rbp), %eax	# score, score.151
	addl	$30, %eax	#, score.152
	movl	%eax, -44(%rbp)	# score.152, score
	.loc 1 586 0
	movl	moved+164(%rip), %eax	# moved, D.4856
	testl	%eax, %eax	# D.4856
	je	.L64	#,
	.loc 1 586 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# score, score.153
	addl	$25, %eax	#, score.154
	movl	%eax, -44(%rbp)	# score.154, score
.L64:
	.loc 1 587 0 is_stmt 1
	movl	moved+128(%rip), %eax	# moved, D.4856
	testl	%eax, %eax	# D.4856
	je	.L65	#,
	.loc 1 587 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# score, score.155
	addl	$20, %eax	#, score.156
	movl	%eax, -44(%rbp)	# score.156, score
.L65:
	.loc 1 588 0 is_stmt 1
	movl	moved+108(%rip), %eax	# moved, D.4856
	testl	%eax, %eax	# D.4856
	je	.L66	#,
	.loc 1 588 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# score, score.157
	addl	$15, %eax	#, score.158
	movl	%eax, -44(%rbp)	# score.158, score
.L66:
	.loc 1 589 0 is_stmt 1
	movl	moved+112(%rip), %eax	# moved, D.4856
	testl	%eax, %eax	# D.4856
	je	.L63	#,
	.loc 1 589 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# score, score.159
	addl	$10, %eax	#, score.160
	movl	%eax, -44(%rbp)	# score.160, score
.L63:
	.loc 1 591 0 is_stmt 1
	movl	moved+408(%rip), %eax	# moved, D.4856
	testl	%eax, %eax	# D.4856
	je	.L67	#,
	.loc 1 593 0
	movl	-44(%rbp), %eax	# score, score.161
	subl	$30, %eax	#, score.162
	movl	%eax, -44(%rbp)	# score.162, score
	.loc 1 594 0
	movl	moved+404(%rip), %eax	# moved, D.4856
	testl	%eax, %eax	# D.4856
	je	.L68	#,
	.loc 1 594 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# score, score.163
	subl	$25, %eax	#, score.164
	movl	%eax, -44(%rbp)	# score.164, score
.L68:
	.loc 1 595 0 is_stmt 1
	movl	moved+464(%rip), %eax	# moved, D.4856
	testl	%eax, %eax	# D.4856
	je	.L69	#,
	.loc 1 595 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# score, score.165
	subl	$20, %eax	#, score.166
	movl	%eax, -44(%rbp)	# score.166, score
.L69:
	.loc 1 596 0 is_stmt 1
	movl	moved+444(%rip), %eax	# moved, D.4856
	testl	%eax, %eax	# D.4856
	je	.L70	#,
	.loc 1 596 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# score, score.167
	subl	$15, %eax	#, score.168
	movl	%eax, -44(%rbp)	# score.168, score
.L70:
	.loc 1 597 0 is_stmt 1
	movl	moved+448(%rip), %eax	# moved, D.4856
	testl	%eax, %eax	# D.4856
	je	.L67	#,
	.loc 1 597 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# score, score.169
	subl	$10, %eax	#, score.170
	movl	%eax, -44(%rbp)	# score.170, score
.L67:
	.loc 1 603 0 is_stmt 1
	movl	board+176(%rip), %eax	# board, D.4856
	cmpl	$1, %eax	#, D.4856
	je	.L71	#,
	.loc 1 603 0 is_stmt 0 discriminator 1
	movl	board+220(%rip), %eax	# board, D.4856
	cmpl	$2, %eax	#, D.4856
	je	.L72	#,
	movl	board+264(%rip), %eax	# board, D.4856
	cmpl	$2, %eax	#, D.4856
	jne	.L71	#,
.L72:
	.loc 1 604 0 is_stmt 1
	movl	-44(%rbp), %eax	# score, score.171
	subl	$30, %eax	#, score.172
	movl	%eax, -44(%rbp)	# score.172, score
.L71:
	.loc 1 605 0
	movl	board+416(%rip), %eax	# board, D.4856
	cmpl	$2, %eax	#, D.4856
	je	.L73	#,
	.loc 1 605 0 is_stmt 0 discriminator 1
	movl	board+364(%rip), %eax	# board, D.4856
	cmpl	$1, %eax	#, D.4856
	je	.L74	#,
	movl	board+312(%rip), %eax	# board, D.4856
	cmpl	$1, %eax	#, D.4856
	jne	.L73	#,
.L74:
	.loc 1 606 0 is_stmt 1
	movl	-44(%rbp), %eax	# score, score.173
	addl	$30, %eax	#, score.174
	movl	%eax, -44(%rbp)	# score.174, score
.L73:
	.loc 1 614 0
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.175
	addl	$12, %eax	#, D.4856
	cltq
	movl	board(,%rax,4), %eax	# board, D.4856
	cmpl	$2, %eax	#, D.4856
	je	.L75	#,
	.loc 1 614 0 is_stmt 0 discriminator 1
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.176
	addl	$12, %eax	#, D.4856
	cltq
	movl	board(,%rax,4), %eax	# board, D.4856
	cmpl	$12, %eax	#, D.4856
	jne	.L76	#,
.L75:
	.loc 1 616 0 is_stmt 1
	movl	-44(%rbp), %eax	# score, score.177
	subl	$35, %eax	#, score.178
	movl	%eax, -44(%rbp)	# score.178, score
	.loc 1 617 0
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.179
	addl	$12, %eax	#, D.4856
	cltq
	movl	board(,%rax,4), %eax	# board, D.4856
	testl	%eax, %eax	# D.4856
	je	.L76	#,
	.loc 1 617 0 is_stmt 0 discriminator 1
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.180
	addl	$12, %eax	#, D.4856
	movl	$0, %esi	#,
	movl	%eax, %edi	# D.4856,
	call	is_attacked	#
	testl	%eax, %eax	# D.4858
	je	.L76	#,
	.loc 1 618 0 is_stmt 1
	movl	-44(%rbp), %edx	# score, score.181
	movl	-16(%rbp), %eax	# bdev_dscale, tmp734
	movl	$150, %esi	#, tmp735
	movl	%eax, %ecx	# tmp734, tmp819
	sarl	%cl, %esi	# tmp819, D.4856
	movl	%esi, %eax	# D.4856, D.4856
	subl	%eax, %edx	# D.4856, score.182
	movl	%edx, %eax	# score.182, score.182
	movl	%eax, -44(%rbp)	# score.182, score
.L76:
	.loc 1 620 0
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.183
	subl	$12, %eax	#, D.4856
	cltq
	movl	board(,%rax,4), %eax	# board, D.4856
	cmpl	$1, %eax	#, D.4856
	je	.L77	#,
	.loc 1 620 0 is_stmt 0 discriminator 1
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.184
	subl	$12, %eax	#, D.4856
	cltq
	movl	board(,%rax,4), %eax	# board, D.4856
	cmpl	$11, %eax	#, D.4856
	jne	.L78	#,
.L77:
	.loc 1 622 0 is_stmt 1
	movl	-44(%rbp), %eax	# score, score.185
	addl	$35, %eax	#, score.186
	movl	%eax, -44(%rbp)	# score.186, score
	.loc 1 623 0
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.187
	subl	$12, %eax	#, D.4856
	cltq
	movl	board(,%rax,4), %eax	# board, D.4856
	testl	%eax, %eax	# D.4856
	je	.L78	#,
	.loc 1 623 0 is_stmt 0 discriminator 1
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.188
	subl	$12, %eax	#, D.4856
	movl	$1, %esi	#,
	movl	%eax, %edi	# D.4856,
	call	is_attacked	#
	testl	%eax, %eax	# D.4858
	je	.L78	#,
	.loc 1 624 0 is_stmt 1
	movl	-20(%rbp), %eax	# wdev_dscale, tmp739
	movl	$150, %edx	#, tmp740
	movl	%eax, %ecx	# tmp739, tmp821
	sarl	%cl, %edx	# tmp821, D.4856
	movl	-44(%rbp), %eax	# score, score.189
	addl	%edx, %eax	# D.4856, score.190
	movl	%eax, -44(%rbp)	# score.190, score
.L78:
	.loc 1 630 0
	movl	board+172(%rip), %eax	# board, D.4856
	cmpl	$1, %eax	#, D.4856
	je	.L79	#,
	.loc 1 630 0 is_stmt 0 discriminator 2
	movl	board+216(%rip), %eax	# board, D.4856
	cmpl	$1, %eax	#, D.4856
	je	.L79	#,
	.loc 1 630 0 discriminator 1
	movl	board+216(%rip), %eax	# board, D.4856
	cmpl	$2, %eax	#, D.4856
	jne	.L80	#,
.L79:
	movl	board+216(%rip), %eax	# board, D.4856
	testl	%eax, %eax	# D.4856
	je	.L80	#,
	movl	$0, %esi	#,
	movl	$54, %edi	#,
	call	is_attacked	#
	testl	%eax, %eax	# D.4858
	je	.L80	#,
	.loc 1 632 0 is_stmt 1
	movl	board+172(%rip), %eax	# board, D.4856
	cmpl	$1, %eax	#, D.4856
	jne	.L81	#,
	.loc 1 632 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# score, score.191
	addl	$10, %eax	#, score.192
	movl	%eax, -44(%rbp)	# score.192, score
.L81:
	.loc 1 633 0 is_stmt 1
	movl	board+216(%rip), %eax	# board, D.4856
	cmpl	$1, %eax	#, D.4856
	jne	.L82	#,
	.loc 1 633 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# score, score.193
	addl	$20, %eax	#, score.194
	movl	%eax, -44(%rbp)	# score.194, score
	jmp	.L80	#
.L82:
	.loc 1 634 0 is_stmt 1
	movl	board+216(%rip), %eax	# board, D.4856
	cmpl	$2, %eax	#, D.4856
	jne	.L80	#,
	.loc 1 634 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# score, score.195
	subl	$15, %eax	#, score.196
	movl	%eax, -44(%rbp)	# score.196, score
.L80:
	.loc 1 636 0 is_stmt 1
	movl	board+412(%rip), %eax	# board, D.4856
	cmpl	$2, %eax	#, D.4856
	je	.L83	#,
	.loc 1 636 0 is_stmt 0 discriminator 2
	movl	board+360(%rip), %eax	# board, D.4856
	cmpl	$2, %eax	#, D.4856
	je	.L83	#,
	.loc 1 636 0 discriminator 1
	movl	board+360(%rip), %eax	# board, D.4856
	cmpl	$1, %eax	#, D.4856
	jne	.L84	#,
.L83:
	movl	board+360(%rip), %eax	# board, D.4856
	testl	%eax, %eax	# D.4856
	je	.L84	#,
	movl	$1, %esi	#,
	movl	$90, %edi	#,
	call	is_attacked	#
	testl	%eax, %eax	# D.4858
	je	.L84	#,
	.loc 1 638 0 is_stmt 1
	movl	board+412(%rip), %eax	# board, D.4856
	cmpl	$2, %eax	#, D.4856
	jne	.L85	#,
	.loc 1 638 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# score, score.197
	subl	$10, %eax	#, score.198
	movl	%eax, -44(%rbp)	# score.198, score
.L85:
	.loc 1 639 0 is_stmt 1
	movl	board+360(%rip), %eax	# board, D.4856
	cmpl	$2, %eax	#, D.4856
	jne	.L86	#,
	.loc 1 639 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# score, score.199
	subl	$20, %eax	#, score.200
	movl	%eax, -44(%rbp)	# score.200, score
	jmp	.L84	#
.L86:
	.loc 1 640 0 is_stmt 1
	movl	board+360(%rip), %eax	# board, D.4856
	cmpl	$1, %eax	#, D.4856
	jne	.L84	#,
	.loc 1 640 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# score, score.201
	addl	$15, %eax	#, score.202
	movl	%eax, -44(%rbp)	# score.202, score
.L84:
	.loc 1 645 0 is_stmt 1
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.203
	cltq
	movl	board(,%rax,4), %eax	# board, D.4856
	testl	%eax, %eax	# D.4856
	je	.L87	#,
	.loc 1 645 0 is_stmt 0 discriminator 1
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.204
	movl	$1, %esi	#,
	movl	%eax, %edi	# bking_loc.204,
	call	is_attacked	#
	testl	%eax, %eax	# D.4858
	je	.L87	#,
	.loc 1 646 0 is_stmt 1
	movl	-20(%rbp), %eax	# wdev_dscale, tmp742
	movl	$50, %edx	#, tmp743
	movl	%eax, %ecx	# tmp742, tmp822
	sarl	%cl, %edx	# tmp822, D.4856
	movl	-44(%rbp), %eax	# score, score.205
	addl	%edx, %eax	# D.4856, score.206
	movl	%eax, -44(%rbp)	# score.206, score
	jmp	.L88	#
.L87:
	.loc 1 647 0
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.207
	cltq
	movl	board(,%rax,4), %eax	# board, D.4856
	testl	%eax, %eax	# D.4856
	je	.L88	#,
	.loc 1 647 0 is_stmt 0 discriminator 1
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.208
	movl	$0, %esi	#,
	movl	%eax, %edi	# wking_loc.208,
	call	is_attacked	#
	testl	%eax, %eax	# D.4858
	je	.L88	#,
	.loc 1 648 0 is_stmt 1
	movl	-44(%rbp), %edx	# score, score.209
	movl	-16(%rbp), %eax	# bdev_dscale, tmp745
	movl	$50, %esi	#, tmp746
	movl	%eax, %ecx	# tmp745, tmp824
	sarl	%cl, %esi	# tmp824, D.4856
	movl	%esi, %eax	# D.4856, D.4856
	subl	%eax, %edx	# D.4856, score.210
	movl	%edx, %eax	# score.210, score.210
	movl	%eax, -44(%rbp)	# score.210, score
.L88:
	.loc 1 653 0
	movl	board+176(%rip), %eax	# board, D.4856
	cmpl	$4, %eax	#, D.4856
	jne	.L89	#,
	.loc 1 655 0
	movl	-44(%rbp), %eax	# score, score.211
	subl	$20, %eax	#, score.212
	movl	%eax, -44(%rbp)	# score.212, score
	.loc 1 656 0
	movl	board+176(%rip), %eax	# board, D.4856
	testl	%eax, %eax	# D.4856
	je	.L90	#,
	.loc 1 656 0 is_stmt 0 discriminator 1
	movl	$0, %esi	#,
	movl	$44, %edi	#,
	call	is_attacked	#
	testl	%eax, %eax	# D.4858
	je	.L90	#,
	movl	-44(%rbp), %eax	# score, score.213
	subl	$40, %eax	#, score.214
	movl	%eax, -44(%rbp)	# score.214, score
.L90:
	.loc 1 657 0 is_stmt 1
	movl	board+128(%rip), %eax	# board, D.4856
	cmpl	$7, %eax	#, D.4856
	jne	.L91	#,
	.loc 1 657 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# score, score.215
	addl	$10, %eax	#, score.216
	movl	%eax, -44(%rbp)	# score.216, score
.L91:
	.loc 1 658 0 is_stmt 1
	movl	board+124(%rip), %eax	# board, D.4856
	cmpl	$11, %eax	#, D.4856
	jne	.L89	#,
	.loc 1 658 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# score, score.217
	addl	$10, %eax	#, score.218
	movl	%eax, -44(%rbp)	# score.218, score
.L89:
	.loc 1 660 0 is_stmt 1
	movl	board+416(%rip), %eax	# board, D.4856
	cmpl	$3, %eax	#, D.4856
	jne	.L92	#,
	.loc 1 662 0
	movl	-44(%rbp), %eax	# score, score.219
	addl	$20, %eax	#, score.220
	movl	%eax, -44(%rbp)	# score.220, score
	.loc 1 663 0
	movl	board+416(%rip), %eax	# board, D.4856
	testl	%eax, %eax	# D.4856
	je	.L93	#,
	.loc 1 663 0 is_stmt 0 discriminator 1
	movl	$1, %esi	#,
	movl	$104, %edi	#,
	call	is_attacked	#
	testl	%eax, %eax	# D.4858
	je	.L93	#,
	movl	-44(%rbp), %eax	# score, score.221
	addl	$40, %eax	#, score.222
	movl	%eax, -44(%rbp)	# score.222, score
.L93:
	.loc 1 664 0 is_stmt 1
	movl	board+464(%rip), %eax	# board, D.4856
	cmpl	$8, %eax	#, D.4856
	jne	.L94	#,
	.loc 1 664 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# score, score.223
	subl	$10, %eax	#, score.224
	movl	%eax, -44(%rbp)	# score.224, score
.L94:
	.loc 1 665 0 is_stmt 1
	movl	board+460(%rip), %eax	# board, D.4856
	cmpl	$12, %eax	#, D.4856
	jne	.L92	#,
	.loc 1 665 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax	# score, score.225
	subl	$10, %eax	#, score.226
	movl	%eax, -44(%rbp)	# score.226, score
.L92:
	.loc 1 671 0 is_stmt 1
	movl	board+228(%rip), %eax	# board, D.4856
	cmpl	$12, %eax	#, D.4856
	jne	.L95	#,
	.loc 1 671 0 is_stmt 0 discriminator 1
	movl	board+176(%rip), %eax	# board, D.4856
	cmpl	$1, %eax	#, D.4856
	je	.L95	#,
	.loc 1 673 0 is_stmt 1
	movl	-44(%rbp), %eax	# score, score.227
	subl	$20, %eax	#, score.228
	movl	%eax, -44(%rbp)	# score.228, score
	.loc 1 674 0
	movl	board+176(%rip), %eax	# board, D.4856
	cmpl	$4, %eax	#, D.4856
	jne	.L95	#,
	.loc 1 676 0
	movl	-44(%rbp), %eax	# score, score.229
	subl	$40, %eax	#, score.230
	movl	%eax, -44(%rbp)	# score.230, score
	.loc 1 677 0
	movl	board+124(%rip), %eax	# board, D.4856
	cmpl	$5, %eax	#, D.4856
	je	.L96	#,
	.loc 1 677 0 is_stmt 0 discriminator 1
	movl	board+128(%rip), %eax	# board, D.4856
	cmpl	$5, %eax	#, D.4856
	je	.L96	#,
	movl	board+132(%rip), %eax	# board, D.4856
	cmpl	$5, %eax	#, D.4856
	jne	.L95	#,
.L96:
	.loc 1 678 0 is_stmt 1
	movl	-44(%rbp), %eax	# score, score.231
	subl	$80, %eax	#, score.232
	movl	%eax, -44(%rbp)	# score.232, score
.L95:
	.loc 1 681 0
	movl	board+372(%rip), %eax	# board, D.4856
	cmpl	$11, %eax	#, D.4856
	jne	.L50	#,
	.loc 1 681 0 is_stmt 0 discriminator 1
	movl	board+416(%rip), %eax	# board, D.4856
	cmpl	$2, %eax	#, D.4856
	je	.L50	#,
	.loc 1 683 0 is_stmt 1
	movl	-44(%rbp), %eax	# score, score.233
	addl	$20, %eax	#, score.234
	movl	%eax, -44(%rbp)	# score.234, score
	.loc 1 684 0
	movl	board+416(%rip), %eax	# board, D.4856
	cmpl	$3, %eax	#, D.4856
	jne	.L50	#,
	.loc 1 686 0
	movl	-44(%rbp), %eax	# score, score.235
	addl	$40, %eax	#, score.236
	movl	%eax, -44(%rbp)	# score.236, score
	.loc 1 687 0
	movl	board+460(%rip), %eax	# board, D.4856
	cmpl	$6, %eax	#, D.4856
	je	.L97	#,
	.loc 1 687 0 is_stmt 0 discriminator 1
	movl	board+464(%rip), %eax	# board, D.4856
	cmpl	$6, %eax	#, D.4856
	je	.L97	#,
	movl	board+468(%rip), %eax	# board, D.4856
	cmpl	$6, %eax	#, D.4856
	jne	.L50	#,
.L97:
	.loc 1 688 0 is_stmt 1
	movl	-44(%rbp), %eax	# score, score.237
	addl	$80, %eax	#, score.238
	movl	%eax, -44(%rbp)	# score.238, score
.L50:
	.loc 1 693 0
	movl	cfg_attackeval(%rip), %eax	# cfg_attackeval, cfg_attackeval.239
	testl	%eax, %eax	# cfg_attackeval.239
	je	.L98	#,
	.loc 1 695 0
	movl	$0, -8(%rbp)	#, badsquares
	.loc 1 696 0
	movl	$0, -4(%rbp)	#, safety
	.loc 1 698 0
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.241
	subl	$13, %eax	#, D.4856
	cltq
	movl	board(,%rax,4), %eax	# board, D.4856
	testl	%eax, %eax	# D.4856
	je	.L99	#,
	.loc 1 698 0 is_stmt 0 discriminator 1
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.242
	subl	$13, %eax	#, D.4856
	movl	$0, %esi	#,
	movl	%eax, %edi	# D.4856,
	call	nk_attacked	#
	jmp	.L100	#
.L99:
	.loc 1 698 0 discriminator 2
	movl	$0, %eax	#, iftmp.240
.L100:
	.loc 1 698 0 discriminator 3
	movl	-8(%rbp), %edx	# badsquares, badsquares.243
	addl	%edx, %eax	# badsquares.243, D.4859
	movl	%eax, -8(%rbp)	# D.4859, badsquares
	.loc 1 699 0 is_stmt 1 discriminator 3
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.245
	subl	$12, %eax	#, D.4856
	cltq
	movl	board(,%rax,4), %eax	# board, D.4856
	testl	%eax, %eax	# D.4856
	je	.L101	#,
	.loc 1 699 0 is_stmt 0 discriminator 1
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.246
	subl	$12, %eax	#, D.4856
	movl	$0, %esi	#,
	movl	%eax, %edi	# D.4856,
	call	nk_attacked	#
	jmp	.L102	#
.L101:
	.loc 1 699 0 discriminator 2
	movl	$0, %eax	#, iftmp.244
.L102:
	.loc 1 699 0 discriminator 3
	movl	-8(%rbp), %edx	# badsquares, badsquares.247
	addl	%edx, %eax	# badsquares.247, D.4859
	movl	%eax, -8(%rbp)	# D.4859, badsquares
	.loc 1 700 0 is_stmt 1 discriminator 3
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.249
	subl	$11, %eax	#, D.4856
	cltq
	movl	board(,%rax,4), %eax	# board, D.4856
	testl	%eax, %eax	# D.4856
	je	.L103	#,
	.loc 1 700 0 is_stmt 0 discriminator 1
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.250
	subl	$11, %eax	#, D.4856
	movl	$0, %esi	#,
	movl	%eax, %edi	# D.4856,
	call	nk_attacked	#
	jmp	.L104	#
.L103:
	.loc 1 700 0 discriminator 2
	movl	$0, %eax	#, iftmp.248
.L104:
	.loc 1 700 0 discriminator 3
	movl	-8(%rbp), %edx	# badsquares, badsquares.251
	addl	%edx, %eax	# badsquares.251, D.4859
	movl	%eax, -8(%rbp)	# D.4859, badsquares
	.loc 1 701 0 is_stmt 1 discriminator 3
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.253
	subl	$1, %eax	#, D.4856
	cltq
	movl	board(,%rax,4), %eax	# board, D.4856
	testl	%eax, %eax	# D.4856
	je	.L105	#,
	.loc 1 701 0 is_stmt 0 discriminator 1
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.254
	subl	$1, %eax	#, D.4856
	movl	$0, %esi	#,
	movl	%eax, %edi	# D.4856,
	call	nk_attacked	#
	jmp	.L106	#
.L105:
	.loc 1 701 0 discriminator 2
	movl	$0, %eax	#, iftmp.252
.L106:
	.loc 1 701 0 discriminator 3
	movl	-8(%rbp), %edx	# badsquares, badsquares.255
	addl	%edx, %eax	# badsquares.255, D.4859
	movl	%eax, -8(%rbp)	# D.4859, badsquares
	.loc 1 702 0 is_stmt 1 discriminator 3
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.257
	addl	$1, %eax	#, D.4856
	cltq
	movl	board(,%rax,4), %eax	# board, D.4856
	testl	%eax, %eax	# D.4856
	je	.L107	#,
	.loc 1 702 0 is_stmt 0 discriminator 1
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.258
	addl	$1, %eax	#, D.4856
	movl	$0, %esi	#,
	movl	%eax, %edi	# D.4856,
	call	nk_attacked	#
	jmp	.L108	#
.L107:
	.loc 1 702 0 discriminator 2
	movl	$0, %eax	#, iftmp.256
.L108:
	.loc 1 702 0 discriminator 3
	movl	-8(%rbp), %edx	# badsquares, badsquares.259
	addl	%edx, %eax	# badsquares.259, D.4859
	movl	%eax, -8(%rbp)	# D.4859, badsquares
	.loc 1 703 0 is_stmt 1 discriminator 3
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.261
	addl	$11, %eax	#, D.4856
	cltq
	movl	board(,%rax,4), %eax	# board, D.4856
	testl	%eax, %eax	# D.4856
	je	.L109	#,
	.loc 1 703 0 is_stmt 0 discriminator 1
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.262
	addl	$11, %eax	#, D.4856
	movl	$0, %esi	#,
	movl	%eax, %edi	# D.4856,
	call	nk_attacked	#
	jmp	.L110	#
.L109:
	.loc 1 703 0 discriminator 2
	movl	$0, %eax	#, iftmp.260
.L110:
	.loc 1 703 0 discriminator 3
	movl	-8(%rbp), %edx	# badsquares, badsquares.263
	addl	%edx, %eax	# badsquares.263, D.4859
	movl	%eax, -8(%rbp)	# D.4859, badsquares
	.loc 1 704 0 is_stmt 1 discriminator 3
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.265
	addl	$12, %eax	#, D.4856
	cltq
	movl	board(,%rax,4), %eax	# board, D.4856
	testl	%eax, %eax	# D.4856
	je	.L111	#,
	.loc 1 704 0 is_stmt 0 discriminator 1
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.266
	addl	$12, %eax	#, D.4856
	movl	$0, %esi	#,
	movl	%eax, %edi	# D.4856,
	call	nk_attacked	#
	jmp	.L112	#
.L111:
	.loc 1 704 0 discriminator 2
	movl	$0, %eax	#, iftmp.264
.L112:
	.loc 1 704 0 discriminator 3
	movl	-8(%rbp), %edx	# badsquares, badsquares.267
	addl	%edx, %eax	# badsquares.267, D.4859
	movl	%eax, -8(%rbp)	# D.4859, badsquares
	.loc 1 705 0 is_stmt 1 discriminator 3
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.269
	addl	$13, %eax	#, D.4856
	cltq
	movl	board(,%rax,4), %eax	# board, D.4856
	testl	%eax, %eax	# D.4856
	je	.L113	#,
	.loc 1 705 0 is_stmt 0 discriminator 1
	movl	wking_loc(%rip), %eax	# wking_loc, wking_loc.270
	addl	$13, %eax	#, D.4856
	movl	$0, %esi	#,
	movl	%eax, %edi	# D.4856,
	call	nk_attacked	#
	jmp	.L114	#
.L113:
	.loc 1 705 0 discriminator 2
	movl	$0, %eax	#, iftmp.268
.L114:
	.loc 1 705 0 discriminator 3
	movl	-8(%rbp), %edx	# badsquares, badsquares.271
	addl	%edx, %eax	# badsquares.271, D.4859
	movl	%eax, -8(%rbp)	# D.4859, badsquares
	.loc 1 707 0 is_stmt 1 discriminator 3
	movl	black_hand_eval(%rip), %eax	# black_hand_eval, black_hand_eval.272
	negl	%eax	# D.4856
	movl	%eax, %ecx	# D.4856, D.4856
	movl	$1374389535, %edx	#, tmp756
	movl	%ecx, %eax	# D.4856, tmp787
	imull	%edx	# tmp756
	sarl	$5, %edx	#, tmp757
	movl	%ecx, %eax	# D.4856, tmp758
	sarl	$31, %eax	#, tmp758
	subl	%eax, %edx	# tmp758, tmp759
	movl	%edx, %eax	# tmp759, tmp759
	movl	%eax, -24(%rbp)	# tmp759, norm_black_hand_eval
	.loc 1 708 0 discriminator 3
	cmpl	$14, -24(%rbp)	#, norm_black_hand_eval
	jle	.L115	#,
	.loc 1 708 0 is_stmt 0 discriminator 1
	movl	$14, -24(%rbp)	#, norm_black_hand_eval
	jmp	.L116	#
.L115:
	.loc 1 709 0 is_stmt 1
	cmpl	$0, -24(%rbp)	#, norm_black_hand_eval
	jns	.L116	#,
	.loc 1 709 0 is_stmt 0 discriminator 1
	movl	$0, -24(%rbp)	#, norm_black_hand_eval
.L116:
	.loc 1 711 0 is_stmt 1
	movl	-8(%rbp), %eax	# badsquares, tmp761
	movslq	%eax, %rcx	# tmp761, tmp760
	movl	-24(%rbp), %eax	# norm_black_hand_eval, tmp763
	movslq	%eax, %rdx	# tmp763, tmp762
	movq	%rdx, %rax	# tmp762, tmp764
	salq	$3, %rax	#, tmp764
	addq	%rdx, %rax	# tmp762, tmp764
	addq	%rcx, %rax	# tmp760, tmp765
	movl	ksafety_scaled(,%rax,4), %eax	# ksafety_scaled, D.4856
	subl	%eax, -4(%rbp)	# D.4856, safety
	.loc 1 713 0
	movl	$0, -8(%rbp)	#, badsquares
	.loc 1 715 0
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.274
	subl	$13, %eax	#, D.4856
	cltq
	movl	board(,%rax,4), %eax	# board, D.4856
	testl	%eax, %eax	# D.4856
	je	.L117	#,
	.loc 1 715 0 is_stmt 0 discriminator 1
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.275
	subl	$13, %eax	#, D.4856
	movl	$1, %esi	#,
	movl	%eax, %edi	# D.4856,
	call	nk_attacked	#
	jmp	.L118	#
.L117:
	.loc 1 715 0 discriminator 2
	movl	$0, %eax	#, iftmp.273
.L118:
	.loc 1 715 0 discriminator 3
	movl	-8(%rbp), %edx	# badsquares, badsquares.276
	addl	%edx, %eax	# badsquares.276, D.4859
	movl	%eax, -8(%rbp)	# D.4859, badsquares
	.loc 1 716 0 is_stmt 1 discriminator 3
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.278
	subl	$12, %eax	#, D.4856
	cltq
	movl	board(,%rax,4), %eax	# board, D.4856
	testl	%eax, %eax	# D.4856
	je	.L119	#,
	.loc 1 716 0 is_stmt 0 discriminator 1
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.279
	subl	$12, %eax	#, D.4856
	movl	$1, %esi	#,
	movl	%eax, %edi	# D.4856,
	call	nk_attacked	#
	jmp	.L120	#
.L119:
	.loc 1 716 0 discriminator 2
	movl	$0, %eax	#, iftmp.277
.L120:
	.loc 1 716 0 discriminator 3
	movl	-8(%rbp), %edx	# badsquares, badsquares.280
	addl	%edx, %eax	# badsquares.280, D.4859
	movl	%eax, -8(%rbp)	# D.4859, badsquares
	.loc 1 717 0 is_stmt 1 discriminator 3
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.282
	subl	$11, %eax	#, D.4856
	cltq
	movl	board(,%rax,4), %eax	# board, D.4856
	testl	%eax, %eax	# D.4856
	je	.L121	#,
	.loc 1 717 0 is_stmt 0 discriminator 1
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.283
	subl	$11, %eax	#, D.4856
	movl	$1, %esi	#,
	movl	%eax, %edi	# D.4856,
	call	nk_attacked	#
	jmp	.L122	#
.L121:
	.loc 1 717 0 discriminator 2
	movl	$0, %eax	#, iftmp.281
.L122:
	.loc 1 717 0 discriminator 3
	movl	-8(%rbp), %edx	# badsquares, badsquares.284
	addl	%edx, %eax	# badsquares.284, D.4859
	movl	%eax, -8(%rbp)	# D.4859, badsquares
	.loc 1 718 0 is_stmt 1 discriminator 3
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.286
	subl	$1, %eax	#, D.4856
	cltq
	movl	board(,%rax,4), %eax	# board, D.4856
	testl	%eax, %eax	# D.4856
	je	.L123	#,
	.loc 1 718 0 is_stmt 0 discriminator 1
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.287
	subl	$1, %eax	#, D.4856
	movl	$1, %esi	#,
	movl	%eax, %edi	# D.4856,
	call	nk_attacked	#
	jmp	.L124	#
.L123:
	.loc 1 718 0 discriminator 2
	movl	$0, %eax	#, iftmp.285
.L124:
	.loc 1 718 0 discriminator 3
	movl	-8(%rbp), %edx	# badsquares, badsquares.288
	addl	%edx, %eax	# badsquares.288, D.4859
	movl	%eax, -8(%rbp)	# D.4859, badsquares
	.loc 1 719 0 is_stmt 1 discriminator 3
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.290
	addl	$1, %eax	#, D.4856
	cltq
	movl	board(,%rax,4), %eax	# board, D.4856
	testl	%eax, %eax	# D.4856
	je	.L125	#,
	.loc 1 719 0 is_stmt 0 discriminator 1
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.291
	addl	$1, %eax	#, D.4856
	movl	$1, %esi	#,
	movl	%eax, %edi	# D.4856,
	call	nk_attacked	#
	jmp	.L126	#
.L125:
	.loc 1 719 0 discriminator 2
	movl	$0, %eax	#, iftmp.289
.L126:
	.loc 1 719 0 discriminator 3
	movl	-8(%rbp), %edx	# badsquares, badsquares.292
	addl	%edx, %eax	# badsquares.292, D.4859
	movl	%eax, -8(%rbp)	# D.4859, badsquares
	.loc 1 720 0 is_stmt 1 discriminator 3
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.294
	addl	$11, %eax	#, D.4856
	cltq
	movl	board(,%rax,4), %eax	# board, D.4856
	testl	%eax, %eax	# D.4856
	je	.L127	#,
	.loc 1 720 0 is_stmt 0 discriminator 1
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.295
	addl	$11, %eax	#, D.4856
	movl	$1, %esi	#,
	movl	%eax, %edi	# D.4856,
	call	nk_attacked	#
	jmp	.L128	#
.L127:
	.loc 1 720 0 discriminator 2
	movl	$0, %eax	#, iftmp.293
.L128:
	.loc 1 720 0 discriminator 3
	movl	-8(%rbp), %edx	# badsquares, badsquares.296
	addl	%edx, %eax	# badsquares.296, D.4859
	movl	%eax, -8(%rbp)	# D.4859, badsquares
	.loc 1 721 0 is_stmt 1 discriminator 3
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.298
	addl	$12, %eax	#, D.4856
	cltq
	movl	board(,%rax,4), %eax	# board, D.4856
	testl	%eax, %eax	# D.4856
	je	.L129	#,
	.loc 1 721 0 is_stmt 0 discriminator 1
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.299
	addl	$12, %eax	#, D.4856
	movl	$1, %esi	#,
	movl	%eax, %edi	# D.4856,
	call	nk_attacked	#
	jmp	.L130	#
.L129:
	.loc 1 721 0 discriminator 2
	movl	$0, %eax	#, iftmp.297
.L130:
	.loc 1 721 0 discriminator 3
	movl	-8(%rbp), %edx	# badsquares, badsquares.300
	addl	%edx, %eax	# badsquares.300, D.4859
	movl	%eax, -8(%rbp)	# D.4859, badsquares
	.loc 1 722 0 is_stmt 1 discriminator 3
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.302
	addl	$13, %eax	#, D.4856
	cltq
	movl	board(,%rax,4), %eax	# board, D.4856
	testl	%eax, %eax	# D.4856
	je	.L131	#,
	.loc 1 722 0 is_stmt 0 discriminator 1
	movl	bking_loc(%rip), %eax	# bking_loc, bking_loc.303
	addl	$13, %eax	#, D.4856
	movl	$1, %esi	#,
	movl	%eax, %edi	# D.4856,
	call	nk_attacked	#
	jmp	.L132	#
.L131:
	.loc 1 722 0 discriminator 2
	movl	$0, %eax	#, iftmp.301
.L132:
	.loc 1 722 0 discriminator 3
	movl	-8(%rbp), %edx	# badsquares, badsquares.304
	addl	%edx, %eax	# badsquares.304, D.4859
	movl	%eax, -8(%rbp)	# D.4859, badsquares
	.loc 1 724 0 is_stmt 1 discriminator 3
	movl	white_hand_eval(%rip), %ecx	# white_hand_eval, white_hand_eval.305
	movl	$1374389535, %edx	#, tmp775
	movl	%ecx, %eax	# white_hand_eval.305, tmp788
	imull	%edx	# tmp775
	sarl	$5, %edx	#, tmp776
	movl	%ecx, %eax	# white_hand_eval.305, tmp777
	sarl	$31, %eax	#, tmp777
	subl	%eax, %edx	# tmp777, tmp778
	movl	%edx, %eax	# tmp778, tmp778
	movl	%eax, -28(%rbp)	# tmp778, norm_white_hand_eval
	.loc 1 725 0 discriminator 3
	cmpl	$14, -28(%rbp)	#, norm_white_hand_eval
	jle	.L133	#,
	.loc 1 725 0 is_stmt 0 discriminator 1
	movl	$14, -28(%rbp)	#, norm_white_hand_eval
	jmp	.L134	#
.L133:
	.loc 1 726 0 is_stmt 1
	cmpl	$0, -28(%rbp)	#, norm_white_hand_eval
	jns	.L134	#,
	.loc 1 726 0 is_stmt 0 discriminator 1
	movl	$0, -28(%rbp)	#, norm_white_hand_eval
.L134:
	.loc 1 728 0 is_stmt 1
	movl	-8(%rbp), %eax	# badsquares, tmp780
	movslq	%eax, %rcx	# tmp780, tmp779
	movl	-28(%rbp), %eax	# norm_white_hand_eval, tmp782
	movslq	%eax, %rdx	# tmp782, tmp781
	movq	%rdx, %rax	# tmp781, tmp783
	salq	$3, %rax	#, tmp783
	addq	%rdx, %rax	# tmp781, tmp783
	addq	%rcx, %rax	# tmp779, tmp784
	movl	ksafety_scaled(,%rax,4), %eax	# ksafety_scaled, D.4856
	addl	%eax, -4(%rbp)	# D.4856, safety
	.loc 1 730 0
	movl	-44(%rbp), %edx	# score, score.306
	movl	-4(%rbp), %eax	# safety, tmp785
	addl	%edx, %eax	# score.306, score.307
	movl	%eax, -44(%rbp)	# score.307, score
.L98:
	.loc 1 733 0
	movl	white_hand_eval(%rip), %edx	# white_hand_eval, white_hand_eval.308
	movl	black_hand_eval(%rip), %eax	# black_hand_eval, black_hand_eval.309
	addl	%eax, %edx	# black_hand_eval.309, D.4856
	movl	-44(%rbp), %eax	# score, score.310
	addl	%edx, %eax	# D.4856, score.311
	movl	%eax, -44(%rbp)	# score.311, score
	.loc 1 735 0
	movl	-44(%rbp), %eax	# score, score.312
	movl	%eax, %edi	# score.312,
	call	storeECache	#
	.loc 1 738 0
	movl	white_to_move(%rip), %eax	# white_to_move, white_to_move.313
	cmpl	$1, %eax	#, white_to_move.313
	jne	.L135	#,
	.loc 1 739 0
	movl	-44(%rbp), %eax	# score, D.4856
	jmp	.L136	#
.L135:
	.loc 1 742 0
	movl	-44(%rbp), %eax	# score, score.314
	negl	%eax	# D.4856
.L136:
	.loc 1 745 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	eval, .-eval
.Letext0:
	.file 2 "extvars.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x63a
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF73
	.byte	0x1
	.long	.LASF74
	.long	.LASF75
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF1
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF3
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF7
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x4
	.long	.LASF76
	.byte	0x1
	.value	0x148
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0xd7
	.uleb128 0x5
	.string	"i"
	.byte	0x1
	.value	0x14a
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x5
	.string	"j"
	.byte	0x1
	.value	0x14a
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x5
	.string	"sd"
	.byte	0x1
	.value	0x14a
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.string	"sdi"
	.byte	0x1
	.value	0x14a
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.long	.LASF77
	.byte	0x1
	.value	0x169
	.long	0x57
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b9
	.uleb128 0x7
	.long	.LASF11
	.byte	0x1
	.value	0x169
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x7
	.long	.LASF12
	.byte	0x1
	.value	0x169
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x5
	.string	"i"
	.byte	0x1
	.value	0x16d
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x5
	.string	"a"
	.byte	0x1
	.value	0x16d
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x5
	.string	"j"
	.byte	0x1
	.value	0x16d
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x8
	.long	.LASF13
	.byte	0x1
	.value	0x16e
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x8
	.long	.LASF14
	.byte	0x1
	.value	0x16f
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x8
	.long	.LASF15
	.byte	0x1
	.value	0x170
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x8
	.long	.LASF16
	.byte	0x1
	.value	0x170
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.long	.LASF17
	.byte	0x1
	.value	0x171
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x8
	.long	.LASF18
	.byte	0x1
	.value	0x171
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x8
	.long	.LASF19
	.byte	0x1
	.value	0x172
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.long	.LASF20
	.byte	0x1
	.value	0x172
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x9
	.long	0x57
	.long	0x1c9
	.uleb128 0xa
	.long	0x65
	.byte	0x8f
	.byte	0
	.uleb128 0xb
	.long	.LASF21
	.byte	0x2
	.byte	0xc
	.long	0x1b9
	.uleb128 0xb
	.long	.LASF22
	.byte	0x2
	.byte	0xc
	.long	0x1b9
	.uleb128 0xb
	.long	.LASF23
	.byte	0x2
	.byte	0xc
	.long	0x57
	.uleb128 0xb
	.long	.LASF24
	.byte	0x2
	.byte	0xc
	.long	0x57
	.uleb128 0xb
	.long	.LASF25
	.byte	0x2
	.byte	0xd
	.long	0x57
	.uleb128 0xb
	.long	.LASF26
	.byte	0x2
	.byte	0xd
	.long	0x57
	.uleb128 0xb
	.long	.LASF27
	.byte	0x2
	.byte	0xd
	.long	0x57
	.uleb128 0xb
	.long	.LASF28
	.byte	0x2
	.byte	0xe
	.long	0x57
	.uleb128 0xb
	.long	.LASF29
	.byte	0x2
	.byte	0xe
	.long	0x57
	.uleb128 0xb
	.long	.LASF30
	.byte	0x2
	.byte	0x25
	.long	0x57
	.uleb128 0xb
	.long	.LASF31
	.byte	0x2
	.byte	0x26
	.long	0x57
	.uleb128 0x9
	.long	0x57
	.long	0x252
	.uleb128 0xa
	.long	0x65
	.byte	0x3d
	.byte	0
	.uleb128 0xb
	.long	.LASF32
	.byte	0x2
	.byte	0x2c
	.long	0x242
	.uleb128 0xc
	.long	.LASF33
	.byte	0x1
	.byte	0xf
	.long	0x57
	.uleb128 0x9
	.byte	0x3
	.quad	Material
	.uleb128 0x9
	.long	0x57
	.long	0x282
	.uleb128 0xa
	.long	0x65
	.byte	0xd
	.byte	0
	.uleb128 0xc
	.long	.LASF34
	.byte	0x1
	.byte	0x18
	.long	0x272
	.uleb128 0x9
	.byte	0x3
	.quad	material
	.uleb128 0xc
	.long	.LASF35
	.byte	0x1
	.byte	0x12
	.long	0x272
	.uleb128 0x9
	.byte	0x3
	.quad	zh_material
	.uleb128 0xc
	.long	.LASF36
	.byte	0x1
	.byte	0x10
	.long	0x272
	.uleb128 0x9
	.byte	0x3
	.quad	std_material
	.uleb128 0xc
	.long	.LASF37
	.byte	0x1
	.byte	0x14
	.long	0x272
	.uleb128 0x9
	.byte	0x3
	.quad	suicide_material
	.uleb128 0xc
	.long	.LASF38
	.byte	0x1
	.byte	0x16
	.long	0x272
	.uleb128 0x9
	.byte	0x3
	.quad	losers_material
	.uleb128 0xc
	.long	.LASF39
	.byte	0x1
	.byte	0x2a
	.long	0x300
	.uleb128 0x9
	.byte	0x3
	.quad	Xrank
	.uleb128 0xd
	.long	0x1b9
	.uleb128 0xc
	.long	.LASF40
	.byte	0x1
	.byte	0x1a
	.long	0x31a
	.uleb128 0x9
	.byte	0x3
	.quad	Xfile
	.uleb128 0xd
	.long	0x1b9
	.uleb128 0xc
	.long	.LASF41
	.byte	0x1
	.byte	0x3a
	.long	0x334
	.uleb128 0x9
	.byte	0x3
	.quad	Xdiagl
	.uleb128 0xd
	.long	0x1b9
	.uleb128 0xc
	.long	.LASF42
	.byte	0x1
	.byte	0x4a
	.long	0x34e
	.uleb128 0x9
	.byte	0x3
	.quad	Xdiagr
	.uleb128 0xd
	.long	0x1b9
	.uleb128 0xc
	.long	.LASF43
	.byte	0x1
	.byte	0x5a
	.long	0x368
	.uleb128 0x9
	.byte	0x3
	.quad	sqcolor
	.uleb128 0xd
	.long	0x1b9
	.uleb128 0x9
	.long	0x57
	.long	0x383
	.uleb128 0xa
	.long	0x65
	.byte	0x8f
	.uleb128 0xa
	.long	0x65
	.byte	0x8f
	.byte	0
	.uleb128 0xb
	.long	.LASF44
	.byte	0x2
	.byte	0x5f
	.long	0x36d
	.uleb128 0xb
	.long	.LASF45
	.byte	0x2
	.byte	0x60
	.long	0x36d
	.uleb128 0x9
	.long	0x57
	.long	0x3a9
	.uleb128 0xa
	.long	0x65
	.byte	0x3f
	.byte	0
	.uleb128 0xe
	.long	.LASF46
	.byte	0x1
	.value	0x112
	.long	0x3bf
	.uleb128 0x9
	.byte	0x3
	.quad	upscale
	.uleb128 0xd
	.long	0x399
	.uleb128 0xb
	.long	.LASF47
	.byte	0x2
	.byte	0x63
	.long	0x57
	.uleb128 0xb
	.long	.LASF48
	.byte	0x2
	.byte	0x8b
	.long	0x57
	.uleb128 0xb
	.long	.LASF49
	.byte	0x2
	.byte	0x91
	.long	0x57
	.uleb128 0xb
	.long	.LASF50
	.byte	0x2
	.byte	0x92
	.long	0x57
	.uleb128 0xc
	.long	.LASF51
	.byte	0x1
	.byte	0x6d
	.long	0x405
	.uleb128 0x9
	.byte	0x3
	.quad	pcsqbishop
	.uleb128 0xd
	.long	0x1b9
	.uleb128 0xc
	.long	.LASF52
	.byte	0x1
	.byte	0x7b
	.long	0x41f
	.uleb128 0x9
	.byte	0x3
	.quad	black_knight
	.uleb128 0xd
	.long	0x1b9
	.uleb128 0xc
	.long	.LASF53
	.byte	0x1
	.byte	0x89
	.long	0x439
	.uleb128 0x9
	.byte	0x3
	.quad	white_knight
	.uleb128 0xd
	.long	0x1b9
	.uleb128 0xc
	.long	.LASF54
	.byte	0x1
	.byte	0x97
	.long	0x453
	.uleb128 0x9
	.byte	0x3
	.quad	white_pawn
	.uleb128 0xd
	.long	0x1b9
	.uleb128 0xc
	.long	.LASF55
	.byte	0x1
	.byte	0xa7
	.long	0x46d
	.uleb128 0x9
	.byte	0x3
	.quad	black_pawn
	.uleb128 0xd
	.long	0x1b9
	.uleb128 0xc
	.long	.LASF56
	.byte	0x1
	.byte	0xb8
	.long	0x487
	.uleb128 0x9
	.byte	0x3
	.quad	white_king
	.uleb128 0xd
	.long	0x1b9
	.uleb128 0xc
	.long	.LASF57
	.byte	0x1
	.byte	0xc7
	.long	0x4a1
	.uleb128 0x9
	.byte	0x3
	.quad	black_king
	.uleb128 0xd
	.long	0x1b9
	.uleb128 0xc
	.long	.LASF58
	.byte	0x1
	.byte	0xd5
	.long	0x4bb
	.uleb128 0x9
	.byte	0x3
	.quad	black_queen
	.uleb128 0xd
	.long	0x1b9
	.uleb128 0xc
	.long	.LASF59
	.byte	0x1
	.byte	0xe4
	.long	0x4d5
	.uleb128 0x9
	.byte	0x3
	.quad	white_queen
	.uleb128 0xd
	.long	0x1b9
	.uleb128 0xc
	.long	.LASF60
	.byte	0x1
	.byte	0xf2
	.long	0x4ef
	.uleb128 0x9
	.byte	0x3
	.quad	black_rook
	.uleb128 0xd
	.long	0x1b9
	.uleb128 0xe
	.long	.LASF61
	.byte	0x1
	.value	0x102
	.long	0x50a
	.uleb128 0x9
	.byte	0x3
	.quad	white_rook
	.uleb128 0xd
	.long	0x1b9
	.uleb128 0x9
	.long	0x57
	.long	0x51f
	.uleb128 0xa
	.long	0x65
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.long	.LASF62
	.byte	0x1
	.value	0x120
	.long	0x50f
	.uleb128 0x9
	.byte	0x3
	.quad	pre_p_tropism
	.uleb128 0xe
	.long	.LASF63
	.byte	0x1
	.value	0x123
	.long	0x50f
	.uleb128 0x9
	.byte	0x3
	.quad	pre_r_tropism
	.uleb128 0xe
	.long	.LASF64
	.byte	0x1
	.value	0x126
	.long	0x50f
	.uleb128 0x9
	.byte	0x3
	.quad	pre_n_tropism
	.uleb128 0xe
	.long	.LASF65
	.byte	0x1
	.value	0x129
	.long	0x50f
	.uleb128 0x9
	.byte	0x3
	.quad	pre_q_tropism
	.uleb128 0xe
	.long	.LASF66
	.byte	0x1
	.value	0x12c
	.long	0x50f
	.uleb128 0x9
	.byte	0x3
	.quad	pre_b_tropism
	.uleb128 0x9
	.long	0x2d
	.long	0x5a3
	.uleb128 0xa
	.long	0x65
	.byte	0x8f
	.uleb128 0xa
	.long	0x65
	.byte	0x8f
	.byte	0
	.uleb128 0xe
	.long	.LASF67
	.byte	0x1
	.value	0x12f
	.long	0x58d
	.uleb128 0x9
	.byte	0x3
	.quad	p_tropism
	.uleb128 0xe
	.long	.LASF68
	.byte	0x1
	.value	0x130
	.long	0x58d
	.uleb128 0x9
	.byte	0x3
	.quad	q_tropism
	.uleb128 0xe
	.long	.LASF69
	.byte	0x1
	.value	0x131
	.long	0x58d
	.uleb128 0x9
	.byte	0x3
	.quad	n_tropism
	.uleb128 0xe
	.long	.LASF70
	.byte	0x1
	.value	0x132
	.long	0x58d
	.uleb128 0x9
	.byte	0x3
	.quad	r_tropism
	.uleb128 0xe
	.long	.LASF71
	.byte	0x1
	.value	0x133
	.long	0x58d
	.uleb128 0x9
	.byte	0x3
	.quad	b_tropism
	.uleb128 0x9
	.long	0x57
	.long	0x627
	.uleb128 0xa
	.long	0x65
	.byte	0xe
	.uleb128 0xa
	.long	0x65
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.long	.LASF72
	.byte	0x1
	.value	0x135
	.long	0x611
	.uleb128 0x9
	.byte	0x3
	.quad	ksafety_scaled
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
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
.LASF39:
	.string	"Xrank"
.LASF35:
	.string	"zh_material"
.LASF50:
	.string	"cfg_attackeval"
.LASF66:
	.string	"pre_b_tropism"
.LASF73:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF18:
	.string	"norm_black_hand_eval"
.LASF5:
	.string	"short int"
.LASF7:
	.string	"sizetype"
.LASF28:
	.string	"comp_color"
.LASF58:
	.string	"black_queen"
.LASF23:
	.string	"white_to_move"
.LASF27:
	.string	"black_castled"
.LASF63:
	.string	"pre_r_tropism"
.LASF41:
	.string	"Xdiagl"
.LASF49:
	.string	"cfg_smarteval"
.LASF42:
	.string	"Xdiagr"
.LASF11:
	.string	"alpha"
.LASF56:
	.string	"white_king"
.LASF16:
	.string	"badsquares"
.LASF20:
	.string	"bdev_dscale"
.LASF69:
	.string	"n_tropism"
.LASF65:
	.string	"pre_q_tropism"
.LASF74:
	.string	"eval.c"
.LASF9:
	.string	"long long int"
.LASF45:
	.string	"rookdistance"
.LASF14:
	.string	"in_cache"
.LASF6:
	.string	"long int"
.LASF67:
	.string	"p_tropism"
.LASF75:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/458.sjeng/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF51:
	.string	"pcsqbishop"
.LASF52:
	.string	"black_knight"
.LASF68:
	.string	"q_tropism"
.LASF40:
	.string	"Xfile"
.LASF36:
	.string	"std_material"
.LASF70:
	.string	"r_tropism"
.LASF48:
	.string	"cfg_devscale"
.LASF76:
	.string	"initialize_eval"
.LASF26:
	.string	"white_castled"
.LASF0:
	.string	"unsigned char"
.LASF64:
	.string	"pre_n_tropism"
.LASF32:
	.string	"pieces"
.LASF77:
	.string	"eval"
.LASF4:
	.string	"signed char"
.LASF13:
	.string	"score"
.LASF10:
	.string	"long long unsigned int"
.LASF2:
	.string	"unsigned int"
.LASF60:
	.string	"black_rook"
.LASF62:
	.string	"pre_p_tropism"
.LASF29:
	.string	"piece_count"
.LASF30:
	.string	"white_hand_eval"
.LASF33:
	.string	"Material"
.LASF34:
	.string	"material"
.LASF1:
	.string	"short unsigned int"
.LASF8:
	.string	"char"
.LASF44:
	.string	"distance"
.LASF24:
	.string	"wking_loc"
.LASF61:
	.string	"white_rook"
.LASF72:
	.string	"ksafety_scaled"
.LASF59:
	.string	"white_queen"
.LASF43:
	.string	"sqcolor"
.LASF46:
	.string	"upscale"
.LASF12:
	.string	"beta"
.LASF22:
	.string	"moved"
.LASF17:
	.string	"norm_white_hand_eval"
.LASF15:
	.string	"safety"
.LASF3:
	.string	"long unsigned int"
.LASF53:
	.string	"white_knight"
.LASF37:
	.string	"suicide_material"
.LASF21:
	.string	"board"
.LASF38:
	.string	"losers_material"
.LASF19:
	.string	"wdev_dscale"
.LASF31:
	.string	"black_hand_eval"
.LASF47:
	.string	"Variant"
.LASF71:
	.string	"b_tropism"
.LASF25:
	.string	"bking_loc"
.LASF54:
	.string	"white_pawn"
.LASF55:
	.string	"black_pawn"
.LASF57:
	.string	"black_king"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
