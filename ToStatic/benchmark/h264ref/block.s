	.file	"block.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 block.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.globl	QP_SCALE_CR
	.section	.rodata
	.align 32
	.type	QP_SCALE_CR, @object
	.size	QP_SCALE_CR, 52
QP_SCALE_CR:
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	8
	.byte	9
	.byte	10
	.byte	11
	.byte	12
	.byte	13
	.byte	14
	.byte	15
	.byte	16
	.byte	17
	.byte	18
	.byte	19
	.byte	20
	.byte	21
	.byte	22
	.byte	23
	.byte	24
	.byte	25
	.byte	26
	.byte	27
	.byte	28
	.byte	29
	.byte	29
	.byte	30
	.byte	31
	.byte	32
	.byte	32
	.byte	33
	.byte	34
	.byte	34
	.byte	35
	.byte	35
	.byte	36
	.byte	36
	.byte	37
	.byte	37
	.byte	37
	.byte	38
	.byte	38
	.byte	38
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.globl	SNGL_SCAN
	.align 32
	.type	SNGL_SCAN, @object
	.size	SNGL_SCAN, 32
SNGL_SCAN:
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	2
	.byte	1
	.byte	1
	.byte	2
	.byte	0
	.byte	3
	.byte	0
	.byte	2
	.byte	1
	.byte	1
	.byte	2
	.byte	0
	.byte	3
	.byte	1
	.byte	3
	.byte	2
	.byte	2
	.byte	3
	.byte	1
	.byte	3
	.byte	2
	.byte	2
	.byte	3
	.byte	3
	.byte	3
	.globl	FIELD_SCAN
	.align 32
	.type	FIELD_SCAN, @object
	.size	FIELD_SCAN, 32
FIELD_SCAN:
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	3
	.byte	1
	.byte	1
	.byte	1
	.byte	2
	.byte	1
	.byte	3
	.byte	2
	.byte	0
	.byte	2
	.byte	1
	.byte	2
	.byte	2
	.byte	2
	.byte	3
	.byte	3
	.byte	0
	.byte	3
	.byte	1
	.byte	3
	.byte	2
	.byte	3
	.byte	3
	.globl	COEFF_COST
	.align 32
	.type	COEFF_COST, @object
	.size	COEFF_COST, 32
COEFF_COST:
	.byte	3
	.byte	2
	.byte	2
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.globl	COEFF_BIT_COST
	.align 32
	.type	COEFF_BIT_COST, @object
	.size	COEFF_BIT_COST, 768
COEFF_BIT_COST:
	.byte	3
	.byte	5
	.byte	7
	.byte	9
	.byte	9
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	5
	.byte	7
	.byte	9
	.byte	9
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	7
	.byte	9
	.byte	9
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	15
	.byte	7
	.byte	9
	.byte	9
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	15
	.byte	7
	.byte	7
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	13
	.byte	13
	.byte	7
	.byte	7
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	13
	.byte	13
	.byte	7
	.byte	7
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	13
	.byte	13
	.byte	7
	.byte	7
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	13
	.byte	13
	.byte	7
	.byte	7
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	13
	.byte	13
	.byte	7
	.byte	7
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	13
	.byte	13
	.byte	7
	.byte	7
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	13
	.byte	13
	.byte	7
	.byte	7
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	13
	.byte	13
	.byte	7
	.byte	7
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	13
	.byte	13
	.byte	7
	.byte	7
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	13
	.byte	13
	.byte	7
	.byte	7
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	13
	.byte	13
	.byte	7
	.byte	7
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	13
	.byte	13
	.byte	3
	.byte	5
	.byte	7
	.byte	7
	.byte	7
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	11
	.byte	11
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	15
	.byte	5
	.byte	9
	.byte	9
	.byte	11
	.byte	11
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	7
	.byte	11
	.byte	11
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	17
	.byte	9
	.byte	11
	.byte	11
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	17
	.byte	9
	.byte	11
	.byte	11
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	17
	.byte	11
	.byte	11
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	17
	.byte	17
	.byte	11
	.byte	11
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	17
	.byte	17
	.byte	11
	.byte	11
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	17
	.byte	17
	.byte	11
	.byte	11
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	17
	.byte	17
	.byte	11
	.byte	11
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	17
	.byte	17
	.byte	11
	.byte	11
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	17
	.byte	17
	.byte	11
	.byte	11
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	17
	.byte	17
	.byte	11
	.byte	11
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	17
	.byte	17
	.byte	11
	.byte	11
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	17
	.byte	17
	.zero	32
	.byte	3
	.byte	7
	.byte	9
	.byte	9
	.byte	11
	.byte	13
	.byte	13
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	5
	.byte	9
	.byte	11
	.byte	13
	.byte	13
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	5
	.byte	9
	.byte	11
	.byte	13
	.byte	13
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	7
	.byte	11
	.byte	13
	.byte	13
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	7
	.byte	11
	.byte	13
	.byte	13
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	7
	.byte	11
	.byte	13
	.byte	13
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	9
	.byte	11
	.byte	13
	.byte	13
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	9
	.byte	11
	.byte	13
	.byte	13
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	9
	.byte	11
	.byte	13
	.byte	13
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	9
	.byte	11
	.byte	13
	.byte	13
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	11
	.byte	13
	.byte	13
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	19
	.byte	11
	.byte	13
	.byte	13
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	19
	.byte	11
	.byte	13
	.byte	13
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	19
	.byte	11
	.byte	13
	.byte	13
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	19
	.byte	11
	.byte	13
	.byte	13
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	19
	.byte	11
	.byte	13
	.byte	13
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	19
	.globl	SCAN_YUV422
	.align 16
	.type	SCAN_YUV422, @object
	.size	SCAN_YUV422, 16
SCAN_YUV422:
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	3
	.byte	1
	.byte	1
	.byte	1
	.byte	2
	.byte	1
	.byte	3
	.globl	hor_offset
	.align 32
	.type	hor_offset, @object
	.size	hor_offset, 64
hor_offset:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	4
	.byte	0
	.byte	4
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	4
	.byte	0
	.byte	4
	.byte	0
	.byte	4
	.byte	0
	.byte	4
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	4
	.byte	0
	.byte	4
	.byte	8
	.byte	12
	.byte	8
	.byte	12
	.byte	0
	.byte	4
	.byte	0
	.byte	4
	.byte	8
	.byte	12
	.byte	8
	.byte	12
	.globl	ver_offset
	.align 32
	.type	ver_offset, @object
	.size	ver_offset, 64
ver_offset:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	4
	.byte	4
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	4
	.byte	4
	.byte	8
	.byte	8
	.byte	12
	.byte	12
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	4
	.byte	4
	.byte	0
	.byte	0
	.byte	4
	.byte	4
	.byte	8
	.byte	8
	.byte	12
	.byte	12
	.byte	8
	.byte	8
	.byte	12
	.byte	12
	.data
	.align 32
	.type	cbp_blk_chroma, @object
	.size	cbp_blk_chroma, 32
cbp_blk_chroma:
	.byte	16
	.byte	17
	.byte	18
	.byte	19
	.byte	20
	.byte	21
	.byte	22
	.byte	23
	.byte	24
	.byte	25
	.byte	26
	.byte	27
	.byte	28
	.byte	29
	.byte	30
	.byte	31
	.byte	32
	.byte	33
	.byte	34
	.byte	35
	.byte	36
	.byte	37
	.byte	38
	.byte	39
	.byte	40
	.byte	41
	.byte	42
	.byte	43
	.byte	44
	.byte	45
	.byte	46
	.byte	47
	.globl	quant_coef
	.section	.rodata
	.align 32
	.type	quant_coef, @object
	.size	quant_coef, 384
quant_coef:
	.long	13107
	.long	8066
	.long	13107
	.long	8066
	.long	8066
	.long	5243
	.long	8066
	.long	5243
	.long	13107
	.long	8066
	.long	13107
	.long	8066
	.long	8066
	.long	5243
	.long	8066
	.long	5243
	.long	11916
	.long	7490
	.long	11916
	.long	7490
	.long	7490
	.long	4660
	.long	7490
	.long	4660
	.long	11916
	.long	7490
	.long	11916
	.long	7490
	.long	7490
	.long	4660
	.long	7490
	.long	4660
	.long	10082
	.long	6554
	.long	10082
	.long	6554
	.long	6554
	.long	4194
	.long	6554
	.long	4194
	.long	10082
	.long	6554
	.long	10082
	.long	6554
	.long	6554
	.long	4194
	.long	6554
	.long	4194
	.long	9362
	.long	5825
	.long	9362
	.long	5825
	.long	5825
	.long	3647
	.long	5825
	.long	3647
	.long	9362
	.long	5825
	.long	9362
	.long	5825
	.long	5825
	.long	3647
	.long	5825
	.long	3647
	.long	8192
	.long	5243
	.long	8192
	.long	5243
	.long	5243
	.long	3355
	.long	5243
	.long	3355
	.long	8192
	.long	5243
	.long	8192
	.long	5243
	.long	5243
	.long	3355
	.long	5243
	.long	3355
	.long	7282
	.long	4559
	.long	7282
	.long	4559
	.long	4559
	.long	2893
	.long	4559
	.long	2893
	.long	7282
	.long	4559
	.long	7282
	.long	4559
	.long	4559
	.long	2893
	.long	4559
	.long	2893
	.globl	dequant_coef
	.align 32
	.type	dequant_coef, @object
	.size	dequant_coef, 384
dequant_coef:
	.long	10
	.long	13
	.long	10
	.long	13
	.long	13
	.long	16
	.long	13
	.long	16
	.long	10
	.long	13
	.long	10
	.long	13
	.long	13
	.long	16
	.long	13
	.long	16
	.long	11
	.long	14
	.long	11
	.long	14
	.long	14
	.long	18
	.long	14
	.long	18
	.long	11
	.long	14
	.long	11
	.long	14
	.long	14
	.long	18
	.long	14
	.long	18
	.long	13
	.long	16
	.long	13
	.long	16
	.long	16
	.long	20
	.long	16
	.long	20
	.long	13
	.long	16
	.long	13
	.long	16
	.long	16
	.long	20
	.long	16
	.long	20
	.long	14
	.long	18
	.long	14
	.long	18
	.long	18
	.long	23
	.long	18
	.long	23
	.long	14
	.long	18
	.long	14
	.long	18
	.long	18
	.long	23
	.long	18
	.long	23
	.long	16
	.long	20
	.long	16
	.long	20
	.long	20
	.long	25
	.long	20
	.long	25
	.long	16
	.long	20
	.long	16
	.long	20
	.long	20
	.long	25
	.long	20
	.long	25
	.long	18
	.long	23
	.long	18
	.long	23
	.long	23
	.long	29
	.long	23
	.long	29
	.long	18
	.long	23
	.long	18
	.long	23
	.long	23
	.long	29
	.long	23
	.long	29
	.align 32
	.type	A, @object
	.size	A, 64
A:
	.long	16
	.long	20
	.long	16
	.long	20
	.long	20
	.long	25
	.long	20
	.long	25
	.long	16
	.long	20
	.long	16
	.long	20
	.long	20
	.long	25
	.long	20
	.long	25
	.text
	.globl	intrapred_luma
	.type	intrapred_luma, @function
intrapred_luma:
.LFB2:
	.file 1 "block.c"
	.loc 1 107 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$336, %rsp	#,
	movl	%edi, -308(%rbp)	# img_x, img_x
	movl	%esi, -312(%rbp)	# img_y, img_y
	movq	%rdx, -320(%rbp)	# left_available, left_available
	movq	%rcx, -328(%rbp)	# up_available, up_available
	movq	%r8, -336(%rbp)	# all_available, all_available
	.loc 1 111 0
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.0
	movq	6424(%rax), %rax	# enc_picture.0_19->imgY, tmp878
	movq	%rax, -264(%rbp)	# tmp878, imgY
	.loc 1 113 0
	movl	-308(%rbp), %eax	# img_x, tmp882
	andl	$15, %eax	#, tmp881
	movl	%eax, -276(%rbp)	# tmp881, ioff
	.loc 1 114 0
	movl	-312(%rbp), %eax	# img_y, tmp886
	andl	$15, %eax	#, tmp885
	movl	%eax, -272(%rbp)	# tmp885, joff
	.loc 1 115 0
	movq	img(%rip), %rax	# img, img.1
	movl	12(%rax), %eax	# img.1_25->current_mb_nr, tmp887
	movl	%eax, -268(%rbp)	# tmp887, mb_nr
	.loc 1 125 0
	movl	$0, -304(%rbp)	#, i
	jmp	.L2	#
.L3:
	.loc 1 127 0 discriminator 2
	leaq	-96(%rbp), %rcx	#, tmp888
	movl	-304(%rbp), %eax	# i, tmp890
	movslq	%eax, %rdx	# tmp890, tmp889
	movq	%rdx, %rax	# tmp889, tmp891
	addq	%rax, %rax	# tmp891
	addq	%rdx, %rax	# tmp889, tmp891
	salq	$3, %rax	#, tmp892
	addq	%rax, %rcx	# tmp891, D.11341
	movl	-304(%rbp), %eax	# i, tmp893
	movl	-272(%rbp), %edx	# joff, tmp894
	addl	%eax, %edx	# tmp893, D.11342
	movl	-276(%rbp), %eax	# ioff, tmp895
	leal	-1(%rax), %esi	#, D.11342
	movl	-268(%rbp), %eax	# mb_nr, tmp896
	movq	%rcx, %r8	# D.11341,
	movl	$1, %ecx	#,
	movl	%eax, %edi	# tmp896,
	call	getNeighbour	#
	.loc 1 125 0 discriminator 2
	addl	$1, -304(%rbp)	#, i
.L2:
	.loc 1 125 0 is_stmt 0 discriminator 1
	cmpl	$3, -304(%rbp)	#, i
	jle	.L3	#,
	.loc 1 131 0 is_stmt 1
	movl	-272(%rbp), %eax	# joff, tmp897
	leal	-1(%rax), %edx	#, D.11342
	leaq	-256(%rbp), %rcx	#, tmp898
	movl	-276(%rbp), %esi	# ioff, tmp899
	movl	-268(%rbp), %eax	# mb_nr, tmp900
	movq	%rcx, %r8	# tmp898,
	movl	$1, %ecx	#,
	movl	%eax, %edi	# tmp900,
	call	getNeighbour	#
	.loc 1 132 0
	movl	-272(%rbp), %eax	# joff, tmp901
	leal	-1(%rax), %edx	#, D.11342
	movl	-276(%rbp), %eax	# ioff, tmp902
	leal	4(%rax), %esi	#, D.11342
	leaq	-224(%rbp), %rcx	#, tmp903
	movl	-268(%rbp), %eax	# mb_nr, tmp904
	movq	%rcx, %r8	# tmp903,
	movl	$1, %ecx	#,
	movl	%eax, %edi	# tmp904,
	call	getNeighbour	#
	.loc 1 133 0
	movl	-272(%rbp), %eax	# joff, tmp905
	leal	-1(%rax), %edx	#, D.11342
	movl	-276(%rbp), %eax	# ioff, tmp906
	leal	-1(%rax), %esi	#, D.11342
	leaq	-192(%rbp), %rcx	#, tmp907
	movl	-268(%rbp), %eax	# mb_nr, tmp908
	movq	%rcx, %r8	# tmp907,
	movl	$1, %ecx	#,
	movl	%eax, %edi	# tmp908,
	call	getNeighbour	#
	.loc 1 135 0
	movl	-224(%rbp), %eax	# pix_c.available, D.11342
	testl	%eax, %eax	# D.11342
	je	.L4	#,
	.loc 1 135 0 is_stmt 0 discriminator 1
	cmpl	$4, -276(%rbp)	#, ioff
	je	.L5	#,
	.loc 1 135 0 discriminator 3
	cmpl	$12, -276(%rbp)	#, ioff
	jne	.L6	#,
.L5:
	.loc 1 135 0 discriminator 4
	cmpl	$4, -272(%rbp)	#, joff
	je	.L4	#,
	.loc 1 135 0 discriminator 1
	cmpl	$12, -272(%rbp)	#, joff
	je	.L4	#,
.L6:
	movl	$1, %eax	#, iftmp.2
	jmp	.L7	#
.L4:
	.loc 1 135 0 discriminator 2
	movl	$0, %eax	#, iftmp.2
.L7:
	.loc 1 135 0 discriminator 5
	movl	%eax, -224(%rbp)	# iftmp.2, pix_c.available
	.loc 1 137 0 is_stmt 1 discriminator 5
	movq	input(%rip), %rax	# input, input.3
	movl	216(%rax), %eax	# input.3_40->UseConstrainedIntraPred, D.11342
	testl	%eax, %eax	# D.11342
	je	.L8	#,
	.loc 1 139 0
	movl	$0, -304(%rbp)	#, i
	movl	$1, -288(%rbp)	#, block_available_left
	jmp	.L9	#
.L12:
	.loc 1 140 0
	movl	-304(%rbp), %eax	# i, tmp910
	movslq	%eax, %rdx	# tmp910, tmp909
	movq	%rdx, %rax	# tmp909, tmp911
	addq	%rax, %rax	# tmp911
	addq	%rdx, %rax	# tmp909, tmp911
	salq	$3, %rax	#, tmp912
	addq	%rbp, %rax	#, tmp913
	subq	$96, %rax	#, tmp914
	movl	(%rax), %eax	# pix_a[i_2].available, D.11342
	testl	%eax, %eax	# D.11342
	je	.L10	#,
	.loc 1 140 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.5
	movq	71784(%rax), %rcx	# img.5_45->intra_block, D.11343
	movl	-304(%rbp), %eax	# i, tmp916
	movslq	%eax, %rdx	# tmp916, tmp915
	movq	%rdx, %rax	# tmp915, tmp917
	addq	%rax, %rax	# tmp917
	addq	%rdx, %rax	# tmp915, tmp917
	salq	$3, %rax	#, tmp918
	addq	%rbp, %rax	#, tmp919
	subq	$96, %rax	#, tmp920
	movl	4(%rax), %eax	# pix_a[i_2].mb_addr, D.11342
	cltq
	salq	$2, %rax	#, D.11344
	addq	%rcx, %rax	# D.11343, D.11343
	movl	(%rax), %eax	# *_50, iftmp.4
	jmp	.L11	#
.L10:
	.loc 1 140 0 discriminator 2
	movl	$0, %eax	#, iftmp.4
.L11:
	.loc 1 140 0 discriminator 3
	andl	%eax, -288(%rbp)	# iftmp.4, block_available_left
	.loc 1 139 0 is_stmt 1 discriminator 3
	addl	$1, -304(%rbp)	#, i
.L9:
	.loc 1 139 0 is_stmt 0 discriminator 1
	cmpl	$3, -304(%rbp)	#, i
	jle	.L12	#,
	.loc 1 141 0 is_stmt 1
	movl	-256(%rbp), %eax	# pix_b.available, D.11342
	testl	%eax, %eax	# D.11342
	je	.L13	#,
	.loc 1 141 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.7
	movq	71784(%rax), %rax	# img.7_56->intra_block, D.11343
	movl	-252(%rbp), %edx	# pix_b.mb_addr, D.11342
	movslq	%edx, %rdx	# D.11342, D.11344
	salq	$2, %rdx	#, D.11344
	addq	%rdx, %rax	# D.11344, D.11343
	movl	(%rax), %eax	# *_61, iftmp.6
	jmp	.L14	#
.L13:
	.loc 1 141 0 discriminator 2
	movl	$0, %eax	#, iftmp.6
.L14:
	.loc 1 141 0 discriminator 3
	movl	%eax, -292(%rbp)	# iftmp.6, block_available_up
	.loc 1 142 0 is_stmt 1 discriminator 3
	movl	-224(%rbp), %eax	# pix_c.available, D.11342
	testl	%eax, %eax	# D.11342
	je	.L15	#,
	.loc 1 142 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.9
	movq	71784(%rax), %rax	# img.9_66->intra_block, D.11343
	movl	-220(%rbp), %edx	# pix_c.mb_addr, D.11342
	movslq	%edx, %rdx	# D.11342, D.11344
	salq	$2, %rdx	#, D.11344
	addq	%rdx, %rax	# D.11344, D.11343
	movl	(%rax), %eax	# *_71, iftmp.8
	jmp	.L16	#
.L15:
	.loc 1 142 0 discriminator 2
	movl	$0, %eax	#, iftmp.8
.L16:
	.loc 1 142 0 discriminator 3
	movl	%eax, -280(%rbp)	# iftmp.8, block_available_up_right
	.loc 1 143 0 is_stmt 1 discriminator 3
	movl	-192(%rbp), %eax	# pix_d.available, D.11342
	testl	%eax, %eax	# D.11342
	je	.L17	#,
	.loc 1 143 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.11
	movq	71784(%rax), %rax	# img.11_76->intra_block, D.11343
	movl	-188(%rbp), %edx	# pix_d.mb_addr, D.11342
	movslq	%edx, %rdx	# D.11342, D.11344
	salq	$2, %rdx	#, D.11344
	addq	%rdx, %rax	# D.11344, D.11343
	movl	(%rax), %eax	# *_81, iftmp.10
	jmp	.L18	#
.L17:
	.loc 1 143 0 discriminator 2
	movl	$0, %eax	#, iftmp.10
.L18:
	.loc 1 143 0 discriminator 1
	movl	%eax, -284(%rbp)	# iftmp.10, block_available_up_left
	jmp	.L19	#
.L8:
	.loc 1 147 0 is_stmt 1
	movl	-96(%rbp), %eax	# pix_a[0].available, tmp921
	movl	%eax, -288(%rbp)	# tmp921, block_available_left
	.loc 1 148 0
	movl	-256(%rbp), %eax	# pix_b.available, tmp922
	movl	%eax, -292(%rbp)	# tmp922, block_available_up
	.loc 1 149 0
	movl	-224(%rbp), %eax	# pix_c.available, tmp923
	movl	%eax, -280(%rbp)	# tmp923, block_available_up_right
	.loc 1 150 0
	movl	-192(%rbp), %eax	# pix_d.available, tmp924
	movl	%eax, -284(%rbp)	# tmp924, block_available_up_left
.L19:
	.loc 1 153 0
	movq	-320(%rbp), %rax	# left_available, tmp925
	movl	-288(%rbp), %edx	# block_available_left, tmp926
	movl	%edx, (%rax)	# tmp926, *left_available_89(D)
	.loc 1 154 0
	movq	-328(%rbp), %rax	# up_available, tmp927
	movl	-292(%rbp), %edx	# block_available_up, tmp928
	movl	%edx, (%rax)	# tmp928, *up_available_90(D)
	.loc 1 155 0
	cmpl	$0, -292(%rbp)	#, block_available_up
	je	.L20	#,
	.loc 1 155 0 is_stmt 0 discriminator 1
	cmpl	$0, -288(%rbp)	#, block_available_left
	je	.L20	#,
	cmpl	$0, -284(%rbp)	#, block_available_up_left
	je	.L20	#,
	.loc 1 155 0 discriminator 3
	movl	$1, %eax	#, iftmp.12
	jmp	.L21	#
.L20:
	.loc 1 155 0 discriminator 2
	movl	$0, %eax	#, iftmp.12
.L21:
	.loc 1 155 0 discriminator 4
	movq	-336(%rbp), %rdx	# all_available, tmp929
	movl	%eax, (%rdx)	# iftmp.12, *all_available_93(D)
	.loc 1 157 0 is_stmt 1 discriminator 4
	movl	-308(%rbp), %eax	# img_x, tmp933
	andl	$15, %eax	#, tmp932
	movl	%eax, -304(%rbp)	# tmp932, i
	.loc 1 158 0 discriminator 4
	movl	-312(%rbp), %eax	# img_y, tmp937
	andl	$15, %eax	#, tmp936
	movl	%eax, -300(%rbp)	# tmp936, j
	.loc 1 161 0 discriminator 4
	cmpl	$0, -292(%rbp)	#, block_available_up
	je	.L22	#,
	.loc 1 163 0
	movl	-236(%rbp), %eax	# pix_b.pos_y, D.11342
	cltq
	leaq	0(,%rax,8), %rdx	#, D.11344
	movq	-264(%rbp), %rax	# imgY, tmp938
	addq	%rdx, %rax	# D.11344, D.11345
	movq	(%rax), %rax	# *_99, D.11346
	movl	-240(%rbp), %edx	# pix_b.pos_x, D.11342
	movslq	%edx, %rdx	# D.11342, D.11344
	addq	%rdx, %rdx	# D.11344
	addq	%rdx, %rax	# D.11344, D.11346
	movzwl	(%rax), %eax	# *_104, D.11347
	movzwl	%ax, %eax	# D.11347, D.11342
	movl	%eax, -156(%rbp)	# D.11342, PredPel
	.loc 1 164 0
	movl	-236(%rbp), %eax	# pix_b.pos_y, D.11342
	cltq
	leaq	0(,%rax,8), %rdx	#, D.11344
	movq	-264(%rbp), %rax	# imgY, tmp939
	addq	%rdx, %rax	# D.11344, D.11345
	movq	(%rax), %rax	# *_110, D.11346
	movl	-240(%rbp), %edx	# pix_b.pos_x, D.11342
	movslq	%edx, %rdx	# D.11342, D.11348
	addq	$1, %rdx	#, D.11348
	addq	%rdx, %rdx	# D.11348
	addq	%rdx, %rax	# D.11348, D.11346
	movzwl	(%rax), %eax	# *_116, D.11347
	movzwl	%ax, %eax	# D.11347, D.11342
	movl	%eax, -152(%rbp)	# D.11342, PredPel
	.loc 1 165 0
	movl	-236(%rbp), %eax	# pix_b.pos_y, D.11342
	cltq
	leaq	0(,%rax,8), %rdx	#, D.11344
	movq	-264(%rbp), %rax	# imgY, tmp940
	addq	%rdx, %rax	# D.11344, D.11345
	movq	(%rax), %rax	# *_122, D.11346
	movl	-240(%rbp), %edx	# pix_b.pos_x, D.11342
	movslq	%edx, %rdx	# D.11342, D.11348
	addq	$2, %rdx	#, D.11348
	addq	%rdx, %rdx	# D.11348
	addq	%rdx, %rax	# D.11348, D.11346
	movzwl	(%rax), %eax	# *_128, D.11347
	movzwl	%ax, %eax	# D.11347, D.11342
	movl	%eax, -148(%rbp)	# D.11342, PredPel
	.loc 1 166 0
	movl	-236(%rbp), %eax	# pix_b.pos_y, D.11342
	cltq
	leaq	0(,%rax,8), %rdx	#, D.11344
	movq	-264(%rbp), %rax	# imgY, tmp941
	addq	%rdx, %rax	# D.11344, D.11345
	movq	(%rax), %rax	# *_134, D.11346
	movl	-240(%rbp), %edx	# pix_b.pos_x, D.11342
	movslq	%edx, %rdx	# D.11342, D.11348
	addq	$3, %rdx	#, D.11348
	addq	%rdx, %rdx	# D.11348
	addq	%rdx, %rax	# D.11348, D.11346
	movzwl	(%rax), %eax	# *_140, D.11347
	movzwl	%ax, %eax	# D.11347, D.11342
	movl	%eax, -144(%rbp)	# D.11342, PredPel
	jmp	.L23	#
.L22:
	.loc 1 171 0
	movq	img(%rip), %rax	# img, img.13
	movl	72680(%rax), %eax	# img.13_143->dc_pred_value, D.11349
	movl	%eax, -144(%rbp)	# D.11342, PredPel
	movl	-144(%rbp), %eax	# PredPel, D.11342
	movl	%eax, -148(%rbp)	# D.11342, PredPel
	movl	-148(%rbp), %eax	# PredPel, D.11342
	movl	%eax, -152(%rbp)	# D.11342, PredPel
	movl	-152(%rbp), %eax	# PredPel, D.11342
	movl	%eax, -156(%rbp)	# D.11342, PredPel
.L23:
	.loc 1 174 0
	cmpl	$0, -280(%rbp)	#, block_available_up_right
	je	.L24	#,
	.loc 1 176 0
	movl	-204(%rbp), %eax	# pix_c.pos_y, D.11342
	cltq
	leaq	0(,%rax,8), %rdx	#, D.11344
	movq	-264(%rbp), %rax	# imgY, tmp942
	addq	%rdx, %rax	# D.11344, D.11345
	movq	(%rax), %rax	# *_152, D.11346
	movl	-208(%rbp), %edx	# pix_c.pos_x, D.11342
	movslq	%edx, %rdx	# D.11342, D.11344
	addq	%rdx, %rdx	# D.11344
	addq	%rdx, %rax	# D.11344, D.11346
	movzwl	(%rax), %eax	# *_157, D.11347
	movzwl	%ax, %eax	# D.11347, D.11342
	movl	%eax, -140(%rbp)	# D.11342, PredPel
	.loc 1 177 0
	movl	-204(%rbp), %eax	# pix_c.pos_y, D.11342
	cltq
	leaq	0(,%rax,8), %rdx	#, D.11344
	movq	-264(%rbp), %rax	# imgY, tmp943
	addq	%rdx, %rax	# D.11344, D.11345
	movq	(%rax), %rax	# *_163, D.11346
	movl	-208(%rbp), %edx	# pix_c.pos_x, D.11342
	movslq	%edx, %rdx	# D.11342, D.11348
	addq	$1, %rdx	#, D.11348
	addq	%rdx, %rdx	# D.11348
	addq	%rdx, %rax	# D.11348, D.11346
	movzwl	(%rax), %eax	# *_169, D.11347
	movzwl	%ax, %eax	# D.11347, D.11342
	movl	%eax, -136(%rbp)	# D.11342, PredPel
	.loc 1 178 0
	movl	-204(%rbp), %eax	# pix_c.pos_y, D.11342
	cltq
	leaq	0(,%rax,8), %rdx	#, D.11344
	movq	-264(%rbp), %rax	# imgY, tmp944
	addq	%rdx, %rax	# D.11344, D.11345
	movq	(%rax), %rax	# *_175, D.11346
	movl	-208(%rbp), %edx	# pix_c.pos_x, D.11342
	movslq	%edx, %rdx	# D.11342, D.11348
	addq	$2, %rdx	#, D.11348
	addq	%rdx, %rdx	# D.11348
	addq	%rdx, %rax	# D.11348, D.11346
	movzwl	(%rax), %eax	# *_181, D.11347
	movzwl	%ax, %eax	# D.11347, D.11342
	movl	%eax, -132(%rbp)	# D.11342, PredPel
	.loc 1 179 0
	movl	-204(%rbp), %eax	# pix_c.pos_y, D.11342
	cltq
	leaq	0(,%rax,8), %rdx	#, D.11344
	movq	-264(%rbp), %rax	# imgY, tmp945
	addq	%rdx, %rax	# D.11344, D.11345
	movq	(%rax), %rax	# *_187, D.11346
	movl	-208(%rbp), %edx	# pix_c.pos_x, D.11342
	movslq	%edx, %rdx	# D.11342, D.11348
	addq	$3, %rdx	#, D.11348
	addq	%rdx, %rdx	# D.11348
	addq	%rdx, %rax	# D.11348, D.11346
	movzwl	(%rax), %eax	# *_193, D.11347
	movzwl	%ax, %eax	# D.11347, D.11342
	movl	%eax, -128(%rbp)	# D.11342, PredPel
	jmp	.L25	#
.L24:
	.loc 1 183 0
	movl	-144(%rbp), %eax	# PredPel, D.11342
	movl	%eax, -128(%rbp)	# D.11342, PredPel
	movl	-128(%rbp), %eax	# PredPel, D.11342
	movl	%eax, -132(%rbp)	# D.11342, PredPel
	movl	-132(%rbp), %eax	# PredPel, D.11342
	movl	%eax, -136(%rbp)	# D.11342, PredPel
	movl	-136(%rbp), %eax	# PredPel, D.11342
	movl	%eax, -140(%rbp)	# D.11342, PredPel
.L25:
	.loc 1 186 0
	cmpl	$0, -288(%rbp)	#, block_available_left
	je	.L26	#,
	.loc 1 188 0
	movl	-76(%rbp), %eax	# pix_a[0].pos_y, D.11342
	cltq
	leaq	0(,%rax,8), %rdx	#, D.11344
	movq	-264(%rbp), %rax	# imgY, tmp946
	addq	%rdx, %rax	# D.11344, D.11345
	movq	(%rax), %rax	# *_203, D.11346
	movl	-80(%rbp), %edx	# pix_a[0].pos_x, D.11342
	movslq	%edx, %rdx	# D.11342, D.11344
	addq	%rdx, %rdx	# D.11344
	addq	%rdx, %rax	# D.11344, D.11346
	movzwl	(%rax), %eax	# *_208, D.11347
	movzwl	%ax, %eax	# D.11347, D.11342
	movl	%eax, -124(%rbp)	# D.11342, PredPel
	.loc 1 189 0
	movl	-52(%rbp), %eax	# pix_a[1].pos_y, D.11342
	cltq
	leaq	0(,%rax,8), %rdx	#, D.11344
	movq	-264(%rbp), %rax	# imgY, tmp947
	addq	%rdx, %rax	# D.11344, D.11345
	movq	(%rax), %rax	# *_214, D.11346
	movl	-56(%rbp), %edx	# pix_a[1].pos_x, D.11342
	movslq	%edx, %rdx	# D.11342, D.11344
	addq	%rdx, %rdx	# D.11344
	addq	%rdx, %rax	# D.11344, D.11346
	movzwl	(%rax), %eax	# *_219, D.11347
	movzwl	%ax, %eax	# D.11347, D.11342
	movl	%eax, -120(%rbp)	# D.11342, PredPel
	.loc 1 190 0
	movl	-28(%rbp), %eax	# pix_a[2].pos_y, D.11342
	cltq
	leaq	0(,%rax,8), %rdx	#, D.11344
	movq	-264(%rbp), %rax	# imgY, tmp948
	addq	%rdx, %rax	# D.11344, D.11345
	movq	(%rax), %rax	# *_225, D.11346
	movl	-32(%rbp), %edx	# pix_a[2].pos_x, D.11342
	movslq	%edx, %rdx	# D.11342, D.11344
	addq	%rdx, %rdx	# D.11344
	addq	%rdx, %rax	# D.11344, D.11346
	movzwl	(%rax), %eax	# *_230, D.11347
	movzwl	%ax, %eax	# D.11347, D.11342
	movl	%eax, -116(%rbp)	# D.11342, PredPel
	.loc 1 191 0
	movl	-4(%rbp), %eax	# pix_a[3].pos_y, D.11342
	cltq
	leaq	0(,%rax,8), %rdx	#, D.11344
	movq	-264(%rbp), %rax	# imgY, tmp949
	addq	%rdx, %rax	# D.11344, D.11345
	movq	(%rax), %rax	# *_236, D.11346
	movl	-8(%rbp), %edx	# pix_a[3].pos_x, D.11342
	movslq	%edx, %rdx	# D.11342, D.11344
	addq	%rdx, %rdx	# D.11344
	addq	%rdx, %rax	# D.11344, D.11346
	movzwl	(%rax), %eax	# *_241, D.11347
	movzwl	%ax, %eax	# D.11347, D.11342
	movl	%eax, -112(%rbp)	# D.11342, PredPel
	jmp	.L27	#
.L26:
	.loc 1 195 0
	movq	img(%rip), %rax	# img, img.14
	movl	72680(%rax), %eax	# img.14_244->dc_pred_value, D.11349
	movl	%eax, -112(%rbp)	# D.11342, PredPel
	movl	-112(%rbp), %eax	# PredPel, D.11342
	movl	%eax, -116(%rbp)	# D.11342, PredPel
	movl	-116(%rbp), %eax	# PredPel, D.11342
	movl	%eax, -120(%rbp)	# D.11342, PredPel
	movl	-120(%rbp), %eax	# PredPel, D.11342
	movl	%eax, -124(%rbp)	# D.11342, PredPel
.L27:
	.loc 1 198 0
	cmpl	$0, -284(%rbp)	#, block_available_up_left
	je	.L28	#,
	.loc 1 200 0
	movl	-172(%rbp), %eax	# pix_d.pos_y, D.11342
	cltq
	leaq	0(,%rax,8), %rdx	#, D.11344
	movq	-264(%rbp), %rax	# imgY, tmp950
	addq	%rdx, %rax	# D.11344, D.11345
	movq	(%rax), %rax	# *_253, D.11346
	movl	-176(%rbp), %edx	# pix_d.pos_x, D.11342
	movslq	%edx, %rdx	# D.11342, D.11344
	addq	%rdx, %rdx	# D.11344
	addq	%rdx, %rax	# D.11344, D.11346
	movzwl	(%rax), %eax	# *_258, D.11347
	movzwl	%ax, %eax	# D.11347, D.11342
	movl	%eax, -160(%rbp)	# D.11342, PredPel
	jmp	.L29	#
.L28:
	.loc 1 204 0
	movq	img(%rip), %rax	# img, img.15
	movl	72680(%rax), %eax	# img.15_261->dc_pred_value, D.11349
	movl	%eax, -160(%rbp)	# D.11342, PredPel
.L29:
	.loc 1 207 0
	movl	$0, -304(%rbp)	#, i
	jmp	.L30	#
.L31:
	.loc 1 208 0 discriminator 2
	movq	img(%rip), %rax	# img, img.16
	movl	-304(%rbp), %edx	# i, tmp952
	movslq	%edx, %rdx	# tmp952, tmp951
	salq	$9, %rdx	#, tmp953
	addq	%rdx, %rax	# tmp953, tmp954
	addq	$176, %rax	#, tmp955
	movw	$-1, 8(%rax)	#, img.16_265->mprr
	.loc 1 207 0 discriminator 2
	addl	$1, -304(%rbp)	#, i
.L30:
	.loc 1 207 0 is_stmt 0 discriminator 1
	cmpl	$8, -304(%rbp)	#, i
	jle	.L31	#,
	.loc 1 213 0 is_stmt 1
	movl	$0, -296(%rbp)	#, s0
	.loc 1 214 0
	cmpl	$0, -292(%rbp)	#, block_available_up
	je	.L32	#,
	.loc 1 214 0 is_stmt 0 discriminator 1
	cmpl	$0, -288(%rbp)	#, block_available_left
	je	.L32	#,
	.loc 1 217 0 is_stmt 1
	movl	-156(%rbp), %edx	# PredPel, D.11342
	movl	-152(%rbp), %eax	# PredPel, D.11342
	addl	%eax, %edx	# D.11342, D.11342
	movl	-148(%rbp), %eax	# PredPel, D.11342
	addl	%eax, %edx	# D.11342, D.11342
	movl	-144(%rbp), %eax	# PredPel, D.11342
	addl	%eax, %edx	# D.11342, D.11342
	movl	-124(%rbp), %eax	# PredPel, D.11342
	addl	%eax, %edx	# D.11342, D.11342
	movl	-120(%rbp), %eax	# PredPel, D.11342
	addl	%eax, %edx	# D.11342, D.11342
	movl	-116(%rbp), %eax	# PredPel, D.11342
	addl	%eax, %edx	# D.11342, D.11342
	movl	-112(%rbp), %eax	# PredPel, D.11342
	addl	%edx, %eax	# D.11342, D.11342
	addl	$4, %eax	#, D.11342
	leal	7(%rax), %edx	#, tmp957
	testl	%eax, %eax	# tmp956
	cmovs	%edx, %eax	# tmp957,, tmp956
	sarl	$3, %eax	#, tmp958
	movl	%eax, -296(%rbp)	# tmp958, s0
	jmp	.L33	#
.L32:
	.loc 1 219 0
	cmpl	$0, -292(%rbp)	#, block_available_up
	jne	.L34	#,
	.loc 1 219 0 is_stmt 0 discriminator 1
	cmpl	$0, -288(%rbp)	#, block_available_left
	je	.L34	#,
	.loc 1 222 0 is_stmt 1
	movl	-124(%rbp), %edx	# PredPel, D.11342
	movl	-120(%rbp), %eax	# PredPel, D.11342
	addl	%eax, %edx	# D.11342, D.11342
	movl	-116(%rbp), %eax	# PredPel, D.11342
	addl	%eax, %edx	# D.11342, D.11342
	movl	-112(%rbp), %eax	# PredPel, D.11342
	addl	%edx, %eax	# D.11342, D.11342
	addl	$2, %eax	#, D.11342
	leal	3(%rax), %edx	#, tmp960
	testl	%eax, %eax	# tmp959
	cmovs	%edx, %eax	# tmp960,, tmp959
	sarl	$2, %eax	#, tmp961
	movl	%eax, -296(%rbp)	# tmp961, s0
	jmp	.L33	#
.L34:
	.loc 1 224 0
	cmpl	$0, -292(%rbp)	#, block_available_up
	je	.L35	#,
	.loc 1 224 0 is_stmt 0 discriminator 1
	cmpl	$0, -288(%rbp)	#, block_available_left
	jne	.L35	#,
	.loc 1 227 0 is_stmt 1
	movl	-156(%rbp), %edx	# PredPel, D.11342
	movl	-152(%rbp), %eax	# PredPel, D.11342
	addl	%eax, %edx	# D.11342, D.11342
	movl	-148(%rbp), %eax	# PredPel, D.11342
	addl	%eax, %edx	# D.11342, D.11342
	movl	-144(%rbp), %eax	# PredPel, D.11342
	addl	%edx, %eax	# D.11342, D.11342
	addl	$2, %eax	#, D.11342
	leal	3(%rax), %edx	#, tmp963
	testl	%eax, %eax	# tmp962
	cmovs	%edx, %eax	# tmp963,, tmp962
	sarl	$2, %eax	#, tmp964
	movl	%eax, -296(%rbp)	# tmp964, s0
	jmp	.L33	#
.L35:
	.loc 1 232 0
	movq	img(%rip), %rax	# img, img.17
	movl	72680(%rax), %eax	# img.17_303->dc_pred_value, D.11349
	movl	%eax, -296(%rbp)	# D.11349, s0
.L33:
	.loc 1 235 0
	movl	$0, -300(%rbp)	#, j
	jmp	.L36	#
.L39:
	.loc 1 237 0
	movl	$0, -304(%rbp)	#, i
	jmp	.L37	#
.L38:
	.loc 1 240 0 discriminator 2
	movq	img(%rip), %rax	# img, img.18
	movl	-296(%rbp), %edx	# s0, tmp965
	movl	-300(%rbp), %ecx	# j, tmp967
	movslq	%ecx, %rcx	# tmp967, tmp966
	movl	-304(%rbp), %esi	# i, tmp969
	movslq	%esi, %rsi	# tmp969, tmp968
	salq	$4, %rsi	#, tmp970
	addq	%rsi, %rcx	# tmp970, tmp971
	addq	$600, %rcx	#, tmp972
	movw	%dx, 8(%rax,%rcx,2)	# D.11347, img.18_308->mprr
	.loc 1 237 0 discriminator 2
	addl	$1, -304(%rbp)	#, i
.L37:
	.loc 1 237 0 is_stmt 0 discriminator 1
	cmpl	$3, -304(%rbp)	#, i
	jle	.L38	#,
	.loc 1 235 0 is_stmt 1
	addl	$1, -300(%rbp)	#, j
.L36:
	.loc 1 235 0 is_stmt 0 discriminator 1
	cmpl	$3, -300(%rbp)	#, j
	jle	.L39	#,
	.loc 1 248 0 is_stmt 1
	movl	$0, -304(%rbp)	#, i
	jmp	.L40	#
.L41:
	.loc 1 250 0 discriminator 2
	movq	img(%rip), %rsi	# img, img.19
	.loc 1 251 0 discriminator 2
	movq	img(%rip), %rax	# img, img.20
	.loc 1 252 0 discriminator 2
	movq	img(%rip), %rdx	# img, img.21
	.loc 1 253 0 discriminator 2
	movq	img(%rip), %rcx	# img, img.22
	movl	-304(%rbp), %edi	# i, tmp973
	movslq	%edi, %rdi	# tmp973, D.11348
	addq	$1, %rdi	#, D.11348
	movl	-160(%rbp,%rdi,4), %edi	# PredPel, D.11342
	movl	-304(%rbp), %r8d	# i, tmp975
	movslq	%r8d, %r8	# tmp975, tmp974
	addq	$136, %r8	#, tmp976
	movw	%di, 8(%rcx,%r8,2)	# D.11347, img.22_316->mprr
	movl	-304(%rbp), %edi	# i, tmp978
	movslq	%edi, %rdi	# tmp978, tmp977
	addq	$136, %rdi	#, tmp979
	movzwl	8(%rcx,%rdi,2), %ecx	# img.22_316->mprr, D.11347
	.loc 1 252 0 discriminator 2
	movl	-304(%rbp), %edi	# i, tmp981
	movslq	%edi, %rdi	# tmp981, tmp980
	addq	$120, %rdi	#, tmp982
	movw	%cx, 8(%rdx,%rdi,2)	# D.11347, img.21_315->mprr
	movl	-304(%rbp), %ecx	# i, tmp984
	movslq	%ecx, %rcx	# tmp984, tmp983
	addq	$120, %rcx	#, tmp985
	movzwl	8(%rdx,%rcx,2), %edx	# img.21_315->mprr, D.11347
	.loc 1 251 0 discriminator 2
	movl	-304(%rbp), %ecx	# i, tmp987
	movslq	%ecx, %rcx	# tmp987, tmp986
	addq	$104, %rcx	#, tmp988
	movw	%dx, 8(%rax,%rcx,2)	# D.11347, img.20_314->mprr
	movl	-304(%rbp), %edx	# i, tmp990
	movslq	%edx, %rdx	# tmp990, tmp989
	addq	$104, %rdx	#, tmp991
	movzwl	8(%rax,%rdx,2), %eax	# img.20_314->mprr, D.11347
	.loc 1 250 0 discriminator 2
	movl	-304(%rbp), %edx	# i, tmp993
	movslq	%edx, %rdx	# tmp993, tmp992
	addq	$88, %rdx	#, tmp994
	movw	%ax, 8(%rsi,%rdx,2)	# D.11347, img.19_313->mprr
	.loc 1 254 0 discriminator 2
	movq	img(%rip), %rdi	# img, img.23
	.loc 1 255 0 discriminator 2
	movq	img(%rip), %rax	# img, img.24
	.loc 1 256 0 discriminator 2
	movq	img(%rip), %rdx	# img, img.25
	.loc 1 257 0 discriminator 2
	movq	img(%rip), %rcx	# img, img.26
	movl	-304(%rbp), %esi	# i, tmp995
	movslq	%esi, %rsi	# tmp995, D.11348
	addq	$9, %rsi	#, D.11348
	movl	-160(%rbp,%rsi,4), %esi	# PredPel, D.11342
	movl	-304(%rbp), %r8d	# i, tmp997
	movslq	%r8d, %r8	# tmp997, tmp996
	salq	$5, %r8	#, tmp998
	addq	%rcx, %r8	# img.26, tmp999
	addq	$694, %r8	#, tmp1000
	movw	%si, 8(%r8)	# D.11347, img.26_327->mprr
	movl	-304(%rbp), %esi	# i, tmp1002
	movslq	%esi, %rsi	# tmp1002, tmp1001
	salq	$5, %rsi	#, tmp1003
	addq	%rsi, %rcx	# tmp1003, tmp1004
	addq	$694, %rcx	#, tmp1005
	movzwl	8(%rcx), %ecx	# img.26_327->mprr, D.11347
	.loc 1 256 0 discriminator 2
	movl	-304(%rbp), %esi	# i, tmp1007
	movslq	%esi, %rsi	# tmp1007, tmp1006
	salq	$5, %rsi	#, tmp1008
	addq	%rdx, %rsi	# img.25, tmp1009
	addq	$692, %rsi	#, tmp1010
	movw	%cx, 8(%rsi)	# D.11347, img.25_326->mprr
	movl	-304(%rbp), %ecx	# i, tmp1012
	movslq	%ecx, %rcx	# tmp1012, tmp1011
	salq	$5, %rcx	#, tmp1013
	addq	%rcx, %rdx	# tmp1013, tmp1014
	addq	$692, %rdx	#, tmp1015
	movzwl	8(%rdx), %edx	# img.25_326->mprr, D.11347
	.loc 1 255 0 discriminator 2
	movl	-304(%rbp), %ecx	# i, tmp1017
	movslq	%ecx, %rcx	# tmp1017, tmp1016
	salq	$5, %rcx	#, tmp1018
	addq	%rax, %rcx	# img.24, tmp1019
	addq	$690, %rcx	#, tmp1020
	movw	%dx, 8(%rcx)	# D.11347, img.24_325->mprr
	movl	-304(%rbp), %edx	# i, tmp1022
	movslq	%edx, %rdx	# tmp1022, tmp1021
	salq	$5, %rdx	#, tmp1023
	addq	%rdx, %rax	# tmp1023, tmp1024
	addq	$690, %rax	#, tmp1025
	movzwl	8(%rax), %eax	# img.24_325->mprr, D.11347
	.loc 1 254 0 discriminator 2
	movl	-304(%rbp), %edx	# i, tmp1027
	movslq	%edx, %rdx	# tmp1027, tmp1026
	addq	$16, %rdx	#, tmp1028
	salq	$5, %rdx	#, tmp1029
	addq	%rdi, %rdx	# img.23, tmp1030
	addq	$176, %rdx	#, tmp1031
	movw	%ax, 8(%rdx)	# D.11347, img.23_324->mprr
	.loc 1 248 0 discriminator 2
	addl	$1, -304(%rbp)	#, i
.L40:
	.loc 1 248 0 is_stmt 0 discriminator 1
	cmpl	$3, -304(%rbp)	#, i
	jle	.L41	#,
	.loc 1 260 0 is_stmt 1
	cmpl	$0, -292(%rbp)	#, block_available_up
	jne	.L42	#,
	.loc 1 260 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.27
	movw	$-1, 184(%rax)	#, img.27_336->mprr
.L42:
	.loc 1 261 0 is_stmt 1
	cmpl	$0, -288(%rbp)	#, block_available_left
	jne	.L43	#,
	.loc 1 261 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.28
	movw	$-1, 696(%rax)	#, img.28_337->mprr
.L43:
	.loc 1 263 0 is_stmt 1
	cmpl	$0, -292(%rbp)	#, block_available_up
	je	.L44	#,
	.loc 1 266 0
	movq	img(%rip), %rdx	# img, img.29
	movl	-156(%rbp), %ecx	# PredPel, D.11342
	movl	-148(%rbp), %eax	# PredPel, D.11342
	addl	%eax, %ecx	# D.11342, D.11342
	movl	-152(%rbp), %eax	# PredPel, D.11342
	addl	%eax, %eax	# D.11342
	addl	%ecx, %eax	# D.11342, D.11342
	addl	$2, %eax	#, D.11342
	leal	3(%rax), %ecx	#, tmp1033
	testl	%eax, %eax	# tmp1032
	cmovs	%ecx, %eax	# tmp1033,, tmp1032
	sarl	$2, %eax	#, tmp1034
	movw	%ax, 1720(%rdx)	# D.11347, img.29_338->mprr
	.loc 1 267 0
	movq	img(%rip), %rcx	# img, img.30
	.loc 1 268 0
	movq	img(%rip), %rdx	# img, img.31
	movl	-152(%rbp), %esi	# PredPel, D.11342
	movl	-144(%rbp), %eax	# PredPel, D.11342
	addl	%eax, %esi	# D.11342, D.11342
	movl	-148(%rbp), %eax	# PredPel, D.11342
	addl	%eax, %eax	# D.11342
	addl	%esi, %eax	# D.11342, D.11342
	addl	$2, %eax	#, D.11342
	leal	3(%rax), %esi	#, tmp1036
	testl	%eax, %eax	# tmp1035
	cmovs	%esi, %eax	# tmp1036,, tmp1035
	sarl	$2, %eax	#, tmp1037
	movw	%ax, 1752(%rdx)	# D.11347, img.31_349->mprr
	movzwl	1752(%rdx), %eax	# img.31_349->mprr, D.11347
	.loc 1 267 0
	movw	%ax, 1722(%rcx)	# D.11347, img.30_348->mprr
	.loc 1 269 0
	movq	img(%rip), %rsi	# img, img.32
	.loc 1 270 0
	movq	img(%rip), %rdx	# img, img.33
	.loc 1 271 0
	movq	img(%rip), %rcx	# img, img.34
	movl	-148(%rbp), %edi	# PredPel, D.11342
	movl	-140(%rbp), %eax	# PredPel, D.11342
	addl	%eax, %edi	# D.11342, D.11342
	movl	-144(%rbp), %eax	# PredPel, D.11342
	addl	%eax, %eax	# D.11342
	addl	%edi, %eax	# D.11342, D.11342
	addl	$2, %eax	#, D.11342
	leal	3(%rax), %edi	#, tmp1039
	testl	%eax, %eax	# tmp1038
	cmovs	%edi, %eax	# tmp1039,, tmp1038
	sarl	$2, %eax	#, tmp1040
	movw	%ax, 1784(%rcx)	# D.11347, img.34_362->mprr
	movzwl	1784(%rcx), %eax	# img.34_362->mprr, D.11347
	.loc 1 270 0
	movw	%ax, 1754(%rdx)	# D.11347, img.33_361->mprr
	movzwl	1754(%rdx), %eax	# img.33_361->mprr, D.11347
	.loc 1 269 0
	movw	%ax, 1724(%rsi)	# D.11347, img.32_360->mprr
	.loc 1 272 0
	movq	img(%rip), %rdi	# img, img.35
	.loc 1 273 0
	movq	img(%rip), %rdx	# img, img.36
	.loc 1 274 0
	movq	img(%rip), %rcx	# img, img.37
	.loc 1 275 0
	movq	img(%rip), %rsi	# img, img.38
	movl	-144(%rbp), %r8d	# PredPel, D.11342
	movl	-136(%rbp), %eax	# PredPel, D.11342
	addl	%eax, %r8d	# D.11342, D.11342
	movl	-140(%rbp), %eax	# PredPel, D.11342
	addl	%eax, %eax	# D.11342
	addl	%r8d, %eax	# D.11342, D.11342
	addl	$2, %eax	#, D.11342
	leal	3(%rax), %r8d	#, tmp1042
	testl	%eax, %eax	# tmp1041
	cmovs	%r8d, %eax	# tmp1042,, tmp1041
	sarl	$2, %eax	#, tmp1043
	movw	%ax, 1816(%rsi)	# D.11347, img.38_377->mprr
	movzwl	1816(%rsi), %eax	# img.38_377->mprr, D.11347
	.loc 1 274 0
	movw	%ax, 1786(%rcx)	# D.11347, img.37_376->mprr
	movzwl	1786(%rcx), %eax	# img.37_376->mprr, D.11347
	.loc 1 273 0
	movw	%ax, 1756(%rdx)	# D.11347, img.36_375->mprr
	movzwl	1756(%rdx), %eax	# img.36_375->mprr, D.11347
	.loc 1 272 0
	movw	%ax, 1726(%rdi)	# D.11347, img.35_374->mprr
	.loc 1 276 0
	movq	img(%rip), %rsi	# img, img.39
	.loc 1 277 0
	movq	img(%rip), %rdx	# img, img.40
	.loc 1 278 0
	movq	img(%rip), %rcx	# img, img.41
	movl	-140(%rbp), %edi	# PredPel, D.11342
	movl	-132(%rbp), %eax	# PredPel, D.11342
	addl	%eax, %edi	# D.11342, D.11342
	movl	-136(%rbp), %eax	# PredPel, D.11342
	addl	%eax, %eax	# D.11342
	addl	%edi, %eax	# D.11342, D.11342
	addl	$2, %eax	#, D.11342
	leal	3(%rax), %edi	#, tmp1045
	testl	%eax, %eax	# tmp1044
	cmovs	%edi, %eax	# tmp1045,, tmp1044
	sarl	$2, %eax	#, tmp1046
	movw	%ax, 1818(%rcx)	# D.11347, img.41_392->mprr
	movzwl	1818(%rcx), %eax	# img.41_392->mprr, D.11347
	.loc 1 277 0
	movw	%ax, 1788(%rdx)	# D.11347, img.40_391->mprr
	movzwl	1788(%rdx), %eax	# img.40_391->mprr, D.11347
	.loc 1 276 0
	movw	%ax, 1758(%rsi)	# D.11347, img.39_390->mprr
	.loc 1 279 0
	movq	img(%rip), %rcx	# img, img.42
	.loc 1 280 0
	movq	img(%rip), %rdx	# img, img.43
	movl	-136(%rbp), %esi	# PredPel, D.11342
	movl	-128(%rbp), %eax	# PredPel, D.11342
	addl	%eax, %esi	# D.11342, D.11342
	movl	-132(%rbp), %eax	# PredPel, D.11342
	addl	%eax, %eax	# D.11342
	addl	%esi, %eax	# D.11342, D.11342
	addl	$2, %eax	#, D.11342
	leal	3(%rax), %esi	#, tmp1048
	testl	%eax, %eax	# tmp1047
	cmovs	%esi, %eax	# tmp1048,, tmp1047
	sarl	$2, %eax	#, tmp1049
	movw	%ax, 1820(%rdx)	# D.11347, img.43_405->mprr
	movzwl	1820(%rdx), %eax	# img.43_405->mprr, D.11347
	.loc 1 279 0
	movw	%ax, 1790(%rcx)	# D.11347, img.42_404->mprr
	.loc 1 281 0
	movq	img(%rip), %rcx	# img, img.44
	movl	-132(%rbp), %esi	# PredPel, D.11342
	movl	-128(%rbp), %edx	# PredPel, D.11342
	movl	%edx, %eax	# D.11342, tmp1050
	addl	%eax, %eax	# tmp1050
	addl	%edx, %eax	# D.11342, D.11342
	addl	%esi, %eax	# D.11342, D.11342
	addl	$2, %eax	#, D.11342
	leal	3(%rax), %edx	#, tmp1052
	testl	%eax, %eax	# tmp1051
	cmovs	%edx, %eax	# tmp1052,, tmp1051
	sarl	$2, %eax	#, tmp1053
	movw	%ax, 1822(%rcx)	# D.11347, img.44_416->mprr
	.loc 1 284 0
	movq	img(%rip), %rdx	# img, img.45
	movl	-156(%rbp), %ecx	# PredPel, D.11342
	movl	-152(%rbp), %eax	# PredPel, D.11342
	addl	%ecx, %eax	# D.11342, D.11342
	addl	$1, %eax	#, D.11342
	movl	%eax, %ecx	# D.11342, tmp1054
	shrl	$31, %ecx	#, tmp1054
	addl	%ecx, %eax	# tmp1054, tmp1055
	sarl	%eax	# tmp1056
	movw	%ax, 3768(%rdx)	# D.11347, img.45_424->mprr
	.loc 1 285 0
	movq	img(%rip), %rcx	# img, img.46
	.loc 1 286 0
	movq	img(%rip), %rax	# img, img.47
	movl	-152(%rbp), %esi	# PredPel, D.11342
	movl	-148(%rbp), %edx	# PredPel, D.11342
	addl	%esi, %edx	# D.11342, D.11342
	addl	$1, %edx	#, D.11342
	movl	%edx, %esi	# D.11342, tmp1057
	shrl	$31, %esi	#, tmp1057
	addl	%esi, %edx	# tmp1057, tmp1058
	sarl	%edx	# tmp1059
	movw	%dx, 3832(%rax)	# D.11347, img.47_432->mprr
	movzwl	3832(%rax), %eax	# img.47_432->mprr, D.11347
	.loc 1 285 0
	movw	%ax, 3770(%rcx)	# D.11347, img.46_431->mprr
	.loc 1 287 0
	movq	img(%rip), %rcx	# img, img.48
	.loc 1 288 0
	movq	img(%rip), %rax	# img, img.49
	movl	-148(%rbp), %esi	# PredPel, D.11342
	movl	-144(%rbp), %edx	# PredPel, D.11342
	addl	%esi, %edx	# D.11342, D.11342
	addl	$1, %edx	#, D.11342
	movl	%edx, %esi	# D.11342, tmp1060
	shrl	$31, %esi	#, tmp1060
	addl	%esi, %edx	# tmp1060, tmp1061
	sarl	%edx	# tmp1062
	movw	%dx, 3834(%rax)	# D.11347, img.49_441->mprr
	movzwl	3834(%rax), %eax	# img.49_441->mprr, D.11347
	.loc 1 287 0
	movw	%ax, 3772(%rcx)	# D.11347, img.48_440->mprr
	.loc 1 289 0
	movq	img(%rip), %rcx	# img, img.50
	.loc 1 290 0
	movq	img(%rip), %rax	# img, img.51
	movl	-144(%rbp), %esi	# PredPel, D.11342
	movl	-140(%rbp), %edx	# PredPel, D.11342
	addl	%esi, %edx	# D.11342, D.11342
	addl	$1, %edx	#, D.11342
	movl	%edx, %esi	# D.11342, tmp1063
	shrl	$31, %esi	#, tmp1063
	addl	%esi, %edx	# tmp1063, tmp1064
	sarl	%edx	# tmp1065
	movw	%dx, 3836(%rax)	# D.11347, img.51_450->mprr
	movzwl	3836(%rax), %eax	# img.51_450->mprr, D.11347
	.loc 1 289 0
	movw	%ax, 3774(%rcx)	# D.11347, img.50_449->mprr
	.loc 1 291 0
	movq	img(%rip), %rdx	# img, img.52
	movl	-140(%rbp), %ecx	# PredPel, D.11342
	movl	-136(%rbp), %eax	# PredPel, D.11342
	addl	%ecx, %eax	# D.11342, D.11342
	addl	$1, %eax	#, D.11342
	movl	%eax, %ecx	# D.11342, tmp1066
	shrl	$31, %ecx	#, tmp1066
	addl	%ecx, %eax	# tmp1066, tmp1067
	sarl	%eax	# tmp1068
	movw	%ax, 3838(%rdx)	# D.11347, img.52_458->mprr
	.loc 1 292 0
	movq	img(%rip), %rdx	# img, img.53
	movl	-156(%rbp), %eax	# PredPel, D.11342
	movl	-152(%rbp), %ecx	# PredPel, D.11342
	addl	%ecx, %ecx	# D.11342
	addl	%eax, %ecx	# D.11342, D.11342
	movl	-148(%rbp), %eax	# PredPel, D.11342
	addl	%ecx, %eax	# D.11342, D.11342
	addl	$2, %eax	#, D.11342
	leal	3(%rax), %ecx	#, tmp1070
	testl	%eax, %eax	# tmp1069
	cmovs	%ecx, %eax	# tmp1070,, tmp1069
	sarl	$2, %eax	#, tmp1071
	movw	%ax, 3800(%rdx)	# D.11347, img.53_465->mprr
	.loc 1 293 0
	movq	img(%rip), %rcx	# img, img.54
	.loc 1 294 0
	movq	img(%rip), %rdx	# img, img.55
	movl	-152(%rbp), %eax	# PredPel, D.11342
	movl	-148(%rbp), %esi	# PredPel, D.11342
	addl	%esi, %esi	# D.11342
	addl	%eax, %esi	# D.11342, D.11342
	movl	-144(%rbp), %eax	# PredPel, D.11342
	addl	%esi, %eax	# D.11342, D.11342
	addl	$2, %eax	#, D.11342
	leal	3(%rax), %esi	#, tmp1073
	testl	%eax, %eax	# tmp1072
	cmovs	%esi, %eax	# tmp1073,, tmp1072
	sarl	$2, %eax	#, tmp1074
	movw	%ax, 3864(%rdx)	# D.11347, img.55_476->mprr
	movzwl	3864(%rdx), %eax	# img.55_476->mprr, D.11347
	.loc 1 293 0
	movw	%ax, 3802(%rcx)	# D.11347, img.54_475->mprr
	.loc 1 295 0
	movq	img(%rip), %rcx	# img, img.56
	.loc 1 296 0
	movq	img(%rip), %rdx	# img, img.57
	movl	-148(%rbp), %eax	# PredPel, D.11342
	movl	-144(%rbp), %esi	# PredPel, D.11342
	addl	%esi, %esi	# D.11342
	addl	%eax, %esi	# D.11342, D.11342
	movl	-140(%rbp), %eax	# PredPel, D.11342
	addl	%esi, %eax	# D.11342, D.11342
	addl	$2, %eax	#, D.11342
	leal	3(%rax), %esi	#, tmp1076
	testl	%eax, %eax	# tmp1075
	cmovs	%esi, %eax	# tmp1076,, tmp1075
	sarl	$2, %eax	#, tmp1077
	movw	%ax, 3866(%rdx)	# D.11347, img.57_488->mprr
	movzwl	3866(%rdx), %eax	# img.57_488->mprr, D.11347
	.loc 1 295 0
	movw	%ax, 3804(%rcx)	# D.11347, img.56_487->mprr
	.loc 1 297 0
	movq	img(%rip), %rcx	# img, img.58
	.loc 1 298 0
	movq	img(%rip), %rdx	# img, img.59
	movl	-144(%rbp), %eax	# PredPel, D.11342
	movl	-140(%rbp), %esi	# PredPel, D.11342
	addl	%esi, %esi	# D.11342
	addl	%eax, %esi	# D.11342, D.11342
	movl	-136(%rbp), %eax	# PredPel, D.11342
	addl	%esi, %eax	# D.11342, D.11342
	addl	$2, %eax	#, D.11342
	leal	3(%rax), %esi	#, tmp1079
	testl	%eax, %eax	# tmp1078
	cmovs	%esi, %eax	# tmp1079,, tmp1078
	sarl	$2, %eax	#, tmp1080
	movw	%ax, 3868(%rdx)	# D.11347, img.59_500->mprr
	movzwl	3868(%rdx), %eax	# img.59_500->mprr, D.11347
	.loc 1 297 0
	movw	%ax, 3806(%rcx)	# D.11347, img.58_499->mprr
	.loc 1 299 0
	movq	img(%rip), %rdx	# img, img.60
	movl	-140(%rbp), %eax	# PredPel, D.11342
	movl	-136(%rbp), %ecx	# PredPel, D.11342
	addl	%ecx, %ecx	# D.11342
	addl	%eax, %ecx	# D.11342, D.11342
	movl	-132(%rbp), %eax	# PredPel, D.11342
	addl	%ecx, %eax	# D.11342, D.11342
	addl	$2, %eax	#, D.11342
	leal	3(%rax), %ecx	#, tmp1082
	testl	%eax, %eax	# tmp1081
	cmovs	%ecx, %eax	# tmp1082,, tmp1081
	sarl	$2, %eax	#, tmp1083
	movw	%ax, 3870(%rdx)	# D.11347, img.60_511->mprr
.L44:
	.loc 1 304 0
	cmpl	$0, -288(%rbp)	#, block_available_left
	je	.L45	#,
	.loc 1 307 0
	movq	img(%rip), %rdx	# img, img.61
	movl	-124(%rbp), %ecx	# PredPel, D.11342
	movl	-120(%rbp), %eax	# PredPel, D.11342
	addl	%ecx, %eax	# D.11342, D.11342
	addl	$1, %eax	#, D.11342
	movl	%eax, %ecx	# D.11342, tmp1084
	shrl	$31, %ecx	#, tmp1084
	addl	%ecx, %eax	# tmp1084, tmp1085
	sarl	%eax	# tmp1086
	movw	%ax, 4280(%rdx)	# D.11347, img.61_521->mprr
	.loc 1 308 0
	movq	img(%rip), %rdx	# img, img.62
	movl	-124(%rbp), %eax	# PredPel, D.11342
	movl	-120(%rbp), %ecx	# PredPel, D.11342
	addl	%ecx, %ecx	# D.11342
	addl	%eax, %ecx	# D.11342, D.11342
	movl	-116(%rbp), %eax	# PredPel, D.11342
	addl	%ecx, %eax	# D.11342, D.11342
	addl	$2, %eax	#, D.11342
	leal	3(%rax), %ecx	#, tmp1088
	testl	%eax, %eax	# tmp1087
	cmovs	%ecx, %eax	# tmp1088,, tmp1087
	sarl	$2, %eax	#, tmp1089
	movw	%ax, 4282(%rdx)	# D.11347, img.62_528->mprr
	.loc 1 309 0
	movq	img(%rip), %rcx	# img, img.63
	.loc 1 310 0
	movq	img(%rip), %rax	# img, img.64
	movl	-120(%rbp), %esi	# PredPel, D.11342
	movl	-116(%rbp), %edx	# PredPel, D.11342
	addl	%esi, %edx	# D.11342, D.11342
	addl	$1, %edx	#, D.11342
	movl	%edx, %esi	# D.11342, tmp1090
	shrl	$31, %esi	#, tmp1090
	addl	%esi, %edx	# tmp1090, tmp1091
	sarl	%edx	# tmp1092
	movw	%dx, 4312(%rax)	# D.11347, img.64_539->mprr
	movzwl	4312(%rax), %eax	# img.64_539->mprr, D.11347
	.loc 1 309 0
	movw	%ax, 4284(%rcx)	# D.11347, img.63_538->mprr
	.loc 1 311 0
	movq	img(%rip), %rcx	# img, img.65
	.loc 1 312 0
	movq	img(%rip), %rdx	# img, img.66
	movl	-120(%rbp), %eax	# PredPel, D.11342
	movl	-116(%rbp), %esi	# PredPel, D.11342
	addl	%esi, %esi	# D.11342
	addl	%eax, %esi	# D.11342, D.11342
	movl	-112(%rbp), %eax	# PredPel, D.11342
	addl	%esi, %eax	# D.11342, D.11342
	addl	$2, %eax	#, D.11342
	leal	3(%rax), %esi	#, tmp1094
	testl	%eax, %eax	# tmp1093
	cmovs	%esi, %eax	# tmp1094,, tmp1093
	sarl	$2, %eax	#, tmp1095
	movw	%ax, 4314(%rdx)	# D.11347, img.66_548->mprr
	movzwl	4314(%rdx), %eax	# img.66_548->mprr, D.11347
	.loc 1 311 0
	movw	%ax, 4286(%rcx)	# D.11347, img.65_547->mprr
	.loc 1 313 0
	movq	img(%rip), %rcx	# img, img.67
	.loc 1 314 0
	movq	img(%rip), %rax	# img, img.68
	movl	-116(%rbp), %esi	# PredPel, D.11342
	movl	-112(%rbp), %edx	# PredPel, D.11342
	addl	%esi, %edx	# D.11342, D.11342
	addl	$1, %edx	#, D.11342
	movl	%edx, %esi	# D.11342, tmp1096
	shrl	$31, %esi	#, tmp1096
	addl	%esi, %edx	# tmp1096, tmp1097
	sarl	%edx	# tmp1098
	movw	%dx, 4344(%rax)	# D.11347, img.68_560->mprr
	movzwl	4344(%rax), %eax	# img.68_560->mprr, D.11347
	.loc 1 313 0
	movw	%ax, 4316(%rcx)	# D.11347, img.67_559->mprr
	.loc 1 315 0
	movq	img(%rip), %rcx	# img, img.69
	.loc 1 316 0
	movq	img(%rip), %rdx	# img, img.70
	movl	-116(%rbp), %eax	# PredPel, D.11342
	movl	-112(%rbp), %esi	# PredPel, D.11342
	addl	%esi, %esi	# D.11342
	addl	%eax, %esi	# D.11342, D.11342
	movl	-112(%rbp), %eax	# PredPel, D.11342
	addl	%esi, %eax	# D.11342, D.11342
	addl	$2, %eax	#, D.11342
	leal	3(%rax), %esi	#, tmp1100
	testl	%eax, %eax	# tmp1099
	cmovs	%esi, %eax	# tmp1100,, tmp1099
	sarl	$2, %eax	#, tmp1101
	movw	%ax, 4346(%rdx)	# D.11347, img.70_569->mprr
	movzwl	4346(%rdx), %eax	# img.70_569->mprr, D.11347
	.loc 1 315 0
	movw	%ax, 4318(%rcx)	# D.11347, img.69_568->mprr
	.loc 1 317 0
	movq	img(%rip), %r8	# img, img.71
	.loc 1 318 0
	movq	img(%rip), %rax	# img, img.72
	.loc 1 319 0
	movq	img(%rip), %rdx	# img, img.73
	.loc 1 320 0
	movq	img(%rip), %rcx	# img, img.74
	.loc 1 321 0
	movq	img(%rip), %rsi	# img, img.75
	.loc 1 322 0
	movq	img(%rip), %rdi	# img, img.76
	movl	-112(%rbp), %r9d	# PredPel, D.11342
	movw	%r9w, 4382(%rdi)	# D.11347, img.76_585->mprr
	movzwl	4382(%rdi), %edi	# img.76_585->mprr, D.11347
	.loc 1 321 0
	movw	%di, 4380(%rsi)	# D.11347, img.75_584->mprr
	movzwl	4380(%rsi), %esi	# img.75_584->mprr, D.11347
	.loc 1 320 0
	movw	%si, 4378(%rcx)	# D.11347, img.74_583->mprr
	movzwl	4378(%rcx), %ecx	# img.74_583->mprr, D.11347
	.loc 1 319 0
	movw	%cx, 4350(%rdx)	# D.11347, img.73_582->mprr
	movzwl	4350(%rdx), %edx	# img.73_582->mprr, D.11347
	.loc 1 318 0
	movw	%dx, 4348(%rax)	# D.11347, img.72_581->mprr
	movzwl	4348(%rax), %eax	# img.72_581->mprr, D.11347
	.loc 1 317 0
	movw	%ax, 4376(%r8)	# D.11347, img.71_580->mprr
.L45:
	.loc 1 326 0
	cmpl	$0, -292(%rbp)	#, block_available_up
	je	.L1	#,
	.loc 1 326 0 is_stmt 0 discriminator 1
	cmpl	$0, -288(%rbp)	#, block_available_left
	je	.L1	#,
	cmpl	$0, -284(%rbp)	#, block_available_up_left
	je	.L1	#,
	.loc 1 329 0 is_stmt 1
	movq	img(%rip), %rdx	# img, img.77
	movl	-112(%rbp), %eax	# PredPel, D.11342
	movl	-116(%rbp), %ecx	# PredPel, D.11342
	addl	%ecx, %ecx	# D.11342
	addl	%eax, %ecx	# D.11342, D.11342
	movl	-120(%rbp), %eax	# PredPel, D.11342
	addl	%ecx, %eax	# D.11342, D.11342
	addl	$2, %eax	#, D.11342
	leal	3(%rax), %ecx	#, tmp1103
	testl	%eax, %eax	# tmp1102
	cmovs	%ecx, %eax	# tmp1103,, tmp1102
	sarl	$2, %eax	#, tmp1104
	movw	%ax, 2328(%rdx)	# D.11347, img.77_593->mprr
	.loc 1 330 0
	movq	img(%rip), %rcx	# img, img.78
	.loc 1 331 0
	movq	img(%rip), %rdx	# img, img.79
	movl	-116(%rbp), %eax	# PredPel, D.11342
	movl	-120(%rbp), %esi	# PredPel, D.11342
	addl	%esi, %esi	# D.11342
	addl	%eax, %esi	# D.11342, D.11342
	movl	-124(%rbp), %eax	# PredPel, D.11342
	addl	%esi, %eax	# D.11342, D.11342
	addl	$2, %eax	#, D.11342
	leal	3(%rax), %esi	#, tmp1106
	testl	%eax, %eax	# tmp1105
	cmovs	%esi, %eax	# tmp1106,, tmp1105
	sarl	$2, %eax	#, tmp1107
	movw	%ax, 2330(%rdx)	# D.11347, img.79_604->mprr
	movzwl	2330(%rdx), %eax	# img.79_604->mprr, D.11347
	.loc 1 330 0
	movw	%ax, 2296(%rcx)	# D.11347, img.78_603->mprr
	.loc 1 332 0
	movq	img(%rip), %rsi	# img, img.80
	.loc 1 333 0
	movq	img(%rip), %rdx	# img, img.81
	.loc 1 334 0
	movq	img(%rip), %rcx	# img, img.82
	movl	-120(%rbp), %eax	# PredPel, D.11342
	movl	-124(%rbp), %edi	# PredPel, D.11342
	addl	%edi, %edi	# D.11342
	addl	%eax, %edi	# D.11342, D.11342
	movl	-160(%rbp), %eax	# PredPel, D.11342
	addl	%edi, %eax	# D.11342, D.11342
	addl	$2, %eax	#, D.11342
	leal	3(%rax), %edi	#, tmp1109
	testl	%eax, %eax	# tmp1108
	cmovs	%edi, %eax	# tmp1109,, tmp1108
	sarl	$2, %eax	#, tmp1110
	movw	%ax, 2332(%rcx)	# D.11347, img.82_617->mprr
	movzwl	2332(%rcx), %eax	# img.82_617->mprr, D.11347
	.loc 1 333 0
	movw	%ax, 2298(%rdx)	# D.11347, img.81_616->mprr
	movzwl	2298(%rdx), %eax	# img.81_616->mprr, D.11347
	.loc 1 332 0
	movw	%ax, 2264(%rsi)	# D.11347, img.80_615->mprr
	.loc 1 335 0
	movq	img(%rip), %rdi	# img, img.83
	.loc 1 336 0
	movq	img(%rip), %rdx	# img, img.84
	.loc 1 337 0
	movq	img(%rip), %rcx	# img, img.85
	.loc 1 338 0
	movq	img(%rip), %rsi	# img, img.86
	movl	-124(%rbp), %eax	# PredPel, D.11342
	movl	-160(%rbp), %r8d	# PredPel, D.11342
	addl	%r8d, %r8d	# D.11342
	addl	%eax, %r8d	# D.11342, D.11342
	movl	-156(%rbp), %eax	# PredPel, D.11342
	addl	%r8d, %eax	# D.11342, D.11342
	addl	$2, %eax	#, D.11342
	leal	3(%rax), %r8d	#, tmp1112
	testl	%eax, %eax	# tmp1111
	cmovs	%r8d, %eax	# tmp1112,, tmp1111
	sarl	$2, %eax	#, tmp1113
	movw	%ax, 2334(%rsi)	# D.11347, img.86_632->mprr
	movzwl	2334(%rsi), %eax	# img.86_632->mprr, D.11347
	.loc 1 337 0
	movw	%ax, 2300(%rcx)	# D.11347, img.85_631->mprr
	movzwl	2300(%rcx), %eax	# img.85_631->mprr, D.11347
	.loc 1 336 0
	movw	%ax, 2266(%rdx)	# D.11347, img.84_630->mprr
	movzwl	2266(%rdx), %eax	# img.84_630->mprr, D.11347
	.loc 1 335 0
	movw	%ax, 2232(%rdi)	# D.11347, img.83_629->mprr
	.loc 1 339 0
	movq	img(%rip), %rsi	# img, img.87
	.loc 1 340 0
	movq	img(%rip), %rdx	# img, img.88
	.loc 1 341 0
	movq	img(%rip), %rcx	# img, img.89
	movl	-160(%rbp), %eax	# PredPel, D.11342
	movl	-156(%rbp), %edi	# PredPel, D.11342
	addl	%edi, %edi	# D.11342
	addl	%eax, %edi	# D.11342, D.11342
	movl	-152(%rbp), %eax	# PredPel, D.11342
	addl	%edi, %eax	# D.11342, D.11342
	addl	$2, %eax	#, D.11342
	leal	3(%rax), %edi	#, tmp1115
	testl	%eax, %eax	# tmp1114
	cmovs	%edi, %eax	# tmp1115,, tmp1114
	sarl	$2, %eax	#, tmp1116
	movw	%ax, 2302(%rcx)	# D.11347, img.89_647->mprr
	movzwl	2302(%rcx), %eax	# img.89_647->mprr, D.11347
	.loc 1 340 0
	movw	%ax, 2268(%rdx)	# D.11347, img.88_646->mprr
	movzwl	2268(%rdx), %eax	# img.88_646->mprr, D.11347
	.loc 1 339 0
	movw	%ax, 2234(%rsi)	# D.11347, img.87_645->mprr
	.loc 1 342 0
	movq	img(%rip), %rcx	# img, img.90
	.loc 1 343 0
	movq	img(%rip), %rdx	# img, img.91
	movl	-156(%rbp), %eax	# PredPel, D.11342
	movl	-152(%rbp), %esi	# PredPel, D.11342
	addl	%esi, %esi	# D.11342
	addl	%eax, %esi	# D.11342, D.11342
	movl	-148(%rbp), %eax	# PredPel, D.11342
	addl	%esi, %eax	# D.11342, D.11342
	addl	$2, %eax	#, D.11342
	leal	3(%rax), %esi	#, tmp1118
	testl	%eax, %eax	# tmp1117
	cmovs	%esi, %eax	# tmp1118,, tmp1117
	sarl	$2, %eax	#, tmp1119
	movw	%ax, 2270(%rdx)	# D.11347, img.91_660->mprr
	movzwl	2270(%rdx), %eax	# img.91_660->mprr, D.11347
	.loc 1 342 0
	movw	%ax, 2236(%rcx)	# D.11347, img.90_659->mprr
	.loc 1 344 0
	movq	img(%rip), %rdx	# img, img.92
	movl	-152(%rbp), %eax	# PredPel, D.11342
	movl	-148(%rbp), %ecx	# PredPel, D.11342
	addl	%ecx, %ecx	# D.11342
	addl	%eax, %ecx	# D.11342, D.11342
	movl	-144(%rbp), %eax	# PredPel, D.11342
	addl	%ecx, %eax	# D.11342, D.11342
	addl	$2, %eax	#, D.11342
	leal	3(%rax), %ecx	#, tmp1121
	testl	%eax, %eax	# tmp1120
	cmovs	%ecx, %eax	# tmp1121,, tmp1120
	sarl	$2, %eax	#, tmp1122
	movw	%ax, 2238(%rdx)	# D.11347, img.92_671->mprr
	.loc 1 347 0
	movq	img(%rip), %rcx	# img, img.93
	.loc 1 348 0
	movq	img(%rip), %rax	# img, img.94
	movl	-160(%rbp), %esi	# PredPel, D.11342
	movl	-156(%rbp), %edx	# PredPel, D.11342
	addl	%esi, %edx	# D.11342, D.11342
	addl	$1, %edx	#, D.11342
	movl	%edx, %esi	# D.11342, tmp1123
	shrl	$31, %esi	#, tmp1123
	addl	%esi, %edx	# tmp1123, tmp1124
	sarl	%edx	# tmp1125
	movw	%dx, 2810(%rax)	# D.11347, img.94_682->mprr
	movzwl	2810(%rax), %eax	# img.94_682->mprr, D.11347
	.loc 1 347 0
	movw	%ax, 2744(%rcx)	# D.11347, img.93_681->mprr
	.loc 1 349 0
	movq	img(%rip), %rcx	# img, img.95
	.loc 1 350 0
	movq	img(%rip), %rax	# img, img.96
	movl	-156(%rbp), %esi	# PredPel, D.11342
	movl	-152(%rbp), %edx	# PredPel, D.11342
	addl	%esi, %edx	# D.11342, D.11342
	addl	$1, %edx	#, D.11342
	movl	%edx, %esi	# D.11342, tmp1126
	shrl	$31, %esi	#, tmp1126
	addl	%esi, %edx	# tmp1126, tmp1127
	sarl	%edx	# tmp1128
	movw	%dx, 2812(%rax)	# D.11347, img.96_691->mprr
	movzwl	2812(%rax), %eax	# img.96_691->mprr, D.11347
	.loc 1 349 0
	movw	%ax, 2746(%rcx)	# D.11347, img.95_690->mprr
	.loc 1 351 0
	movq	img(%rip), %rcx	# img, img.97
	.loc 1 352 0
	movq	img(%rip), %rax	# img, img.98
	movl	-152(%rbp), %esi	# PredPel, D.11342
	movl	-148(%rbp), %edx	# PredPel, D.11342
	addl	%esi, %edx	# D.11342, D.11342
	addl	$1, %edx	#, D.11342
	movl	%edx, %esi	# D.11342, tmp1129
	shrl	$31, %esi	#, tmp1129
	addl	%esi, %edx	# tmp1129, tmp1130
	sarl	%edx	# tmp1131
	movw	%dx, 2814(%rax)	# D.11347, img.98_700->mprr
	movzwl	2814(%rax), %eax	# img.98_700->mprr, D.11347
	.loc 1 351 0
	movw	%ax, 2748(%rcx)	# D.11347, img.97_699->mprr
	.loc 1 353 0
	movq	img(%rip), %rdx	# img, img.99
	movl	-148(%rbp), %ecx	# PredPel, D.11342
	movl	-144(%rbp), %eax	# PredPel, D.11342
	addl	%ecx, %eax	# D.11342, D.11342
	addl	$1, %eax	#, D.11342
	movl	%eax, %ecx	# D.11342, tmp1132
	shrl	$31, %ecx	#, tmp1132
	addl	%ecx, %eax	# tmp1132, tmp1133
	sarl	%eax	# tmp1134
	movw	%ax, 2750(%rdx)	# D.11347, img.99_708->mprr
	.loc 1 354 0
	movq	img(%rip), %rcx	# img, img.100
	.loc 1 355 0
	movq	img(%rip), %rdx	# img, img.101
	movl	-124(%rbp), %eax	# PredPel, D.11342
	movl	-160(%rbp), %esi	# PredPel, D.11342
	addl	%esi, %esi	# D.11342
	addl	%eax, %esi	# D.11342, D.11342
	movl	-156(%rbp), %eax	# PredPel, D.11342
	addl	%esi, %eax	# D.11342, D.11342
	addl	$2, %eax	#, D.11342
	leal	3(%rax), %esi	#, tmp1136
	testl	%eax, %eax	# tmp1135
	cmovs	%esi, %eax	# tmp1136,, tmp1135
	sarl	$2, %eax	#, tmp1137
	movw	%ax, 2842(%rdx)	# D.11347, img.101_716->mprr
	movzwl	2842(%rdx), %eax	# img.101_716->mprr, D.11347
	.loc 1 354 0
	movw	%ax, 2776(%rcx)	# D.11347, img.100_715->mprr
	.loc 1 356 0
	movq	img(%rip), %rcx	# img, img.102
	.loc 1 357 0
	movq	img(%rip), %rdx	# img, img.103
	movl	-160(%rbp), %eax	# PredPel, D.11342
	movl	-156(%rbp), %esi	# PredPel, D.11342
	addl	%esi, %esi	# D.11342
	addl	%eax, %esi	# D.11342, D.11342
	movl	-152(%rbp), %eax	# PredPel, D.11342
	addl	%esi, %eax	# D.11342, D.11342
	addl	$2, %eax	#, D.11342
	leal	3(%rax), %esi	#, tmp1139
	testl	%eax, %eax	# tmp1138
	cmovs	%esi, %eax	# tmp1139,, tmp1138
	sarl	$2, %eax	#, tmp1140
	movw	%ax, 2844(%rdx)	# D.11347, img.103_728->mprr
	movzwl	2844(%rdx), %eax	# img.103_728->mprr, D.11347
	.loc 1 356 0
	movw	%ax, 2778(%rcx)	# D.11347, img.102_727->mprr
	.loc 1 358 0
	movq	img(%rip), %rcx	# img, img.104
	.loc 1 359 0
	movq	img(%rip), %rdx	# img, img.105
	movl	-156(%rbp), %eax	# PredPel, D.11342
	movl	-152(%rbp), %esi	# PredPel, D.11342
	addl	%esi, %esi	# D.11342
	addl	%eax, %esi	# D.11342, D.11342
	movl	-148(%rbp), %eax	# PredPel, D.11342
	addl	%esi, %eax	# D.11342, D.11342
	addl	$2, %eax	#, D.11342
	leal	3(%rax), %esi	#, tmp1142
	testl	%eax, %eax	# tmp1141
	cmovs	%esi, %eax	# tmp1142,, tmp1141
	sarl	$2, %eax	#, tmp1143
	movw	%ax, 2846(%rdx)	# D.11347, img.105_740->mprr
	movzwl	2846(%rdx), %eax	# img.105_740->mprr, D.11347
	.loc 1 358 0
	movw	%ax, 2780(%rcx)	# D.11347, img.104_739->mprr
	.loc 1 360 0
	movq	img(%rip), %rdx	# img, img.106
	movl	-152(%rbp), %eax	# PredPel, D.11342
	movl	-148(%rbp), %ecx	# PredPel, D.11342
	addl	%ecx, %ecx	# D.11342
	addl	%eax, %ecx	# D.11342, D.11342
	movl	-144(%rbp), %eax	# PredPel, D.11342
	addl	%ecx, %eax	# D.11342, D.11342
	addl	$2, %eax	#, D.11342
	leal	3(%rax), %ecx	#, tmp1145
	testl	%eax, %eax	# tmp1144
	cmovs	%ecx, %eax	# tmp1145,, tmp1144
	sarl	$2, %eax	#, tmp1146
	movw	%ax, 2782(%rdx)	# D.11347, img.106_751->mprr
	.loc 1 361 0
	movq	img(%rip), %rdx	# img, img.107
	movl	-160(%rbp), %eax	# PredPel, D.11342
	movl	-124(%rbp), %ecx	# PredPel, D.11342
	addl	%ecx, %ecx	# D.11342
	addl	%eax, %ecx	# D.11342, D.11342
	movl	-120(%rbp), %eax	# PredPel, D.11342
	addl	%ecx, %eax	# D.11342, D.11342
	addl	$2, %eax	#, D.11342
	leal	3(%rax), %ecx	#, tmp1148
	testl	%eax, %eax	# tmp1147
	cmovs	%ecx, %eax	# tmp1148,, tmp1147
	sarl	$2, %eax	#, tmp1149
	movw	%ax, 2808(%rdx)	# D.11347, img.107_761->mprr
	.loc 1 362 0
	movq	img(%rip), %rdx	# img, img.108
	movl	-124(%rbp), %eax	# PredPel, D.11342
	movl	-120(%rbp), %ecx	# PredPel, D.11342
	addl	%ecx, %ecx	# D.11342
	addl	%eax, %ecx	# D.11342, D.11342
	movl	-116(%rbp), %eax	# PredPel, D.11342
	addl	%ecx, %eax	# D.11342, D.11342
	addl	$2, %eax	#, D.11342
	leal	3(%rax), %ecx	#, tmp1151
	testl	%eax, %eax	# tmp1150
	cmovs	%ecx, %eax	# tmp1151,, tmp1150
	sarl	$2, %eax	#, tmp1152
	movw	%ax, 2840(%rdx)	# D.11347, img.108_771->mprr
	.loc 1 365 0
	movq	img(%rip), %rcx	# img, img.109
	.loc 1 366 0
	movq	img(%rip), %rax	# img, img.110
	movl	-160(%rbp), %esi	# PredPel, D.11342
	movl	-124(%rbp), %edx	# PredPel, D.11342
	addl	%esi, %edx	# D.11342, D.11342
	addl	$1, %edx	#, D.11342
	movl	%edx, %esi	# D.11342, tmp1153
	shrl	$31, %esi	#, tmp1153
	addl	%esi, %edx	# tmp1153, tmp1154
	sarl	%edx	# tmp1155
	movw	%dx, 3292(%rax)	# D.11347, img.110_782->mprr
	movzwl	3292(%rax), %eax	# img.110_782->mprr, D.11347
	.loc 1 365 0
	movw	%ax, 3256(%rcx)	# D.11347, img.109_781->mprr
	.loc 1 367 0
	movq	img(%rip), %rcx	# img, img.111
	.loc 1 368 0
	movq	img(%rip), %rdx	# img, img.112
	movl	-124(%rbp), %eax	# PredPel, D.11342
	movl	-160(%rbp), %esi	# PredPel, D.11342
	addl	%esi, %esi	# D.11342
	addl	%eax, %esi	# D.11342, D.11342
	movl	-156(%rbp), %eax	# PredPel, D.11342
	addl	%esi, %eax	# D.11342, D.11342
	addl	$2, %eax	#, D.11342
	leal	3(%rax), %esi	#, tmp1157
	testl	%eax, %eax	# tmp1156
	cmovs	%esi, %eax	# tmp1157,, tmp1156
	sarl	$2, %eax	#, tmp1158
	movw	%ax, 3294(%rdx)	# D.11347, img.112_791->mprr
	movzwl	3294(%rdx), %eax	# img.112_791->mprr, D.11347
	.loc 1 367 0
	movw	%ax, 3258(%rcx)	# D.11347, img.111_790->mprr
	.loc 1 369 0
	movq	img(%rip), %rdx	# img, img.113
	movl	-160(%rbp), %eax	# PredPel, D.11342
	movl	-156(%rbp), %ecx	# PredPel, D.11342
	addl	%ecx, %ecx	# D.11342
	addl	%eax, %ecx	# D.11342, D.11342
	movl	-152(%rbp), %eax	# PredPel, D.11342
	addl	%ecx, %eax	# D.11342, D.11342
	addl	$2, %eax	#, D.11342
	leal	3(%rax), %ecx	#, tmp1160
	testl	%eax, %eax	# tmp1159
	cmovs	%ecx, %eax	# tmp1160,, tmp1159
	sarl	$2, %eax	#, tmp1161
	movw	%ax, 3260(%rdx)	# D.11347, img.113_802->mprr
	.loc 1 370 0
	movq	img(%rip), %rdx	# img, img.114
	movl	-156(%rbp), %eax	# PredPel, D.11342
	movl	-152(%rbp), %ecx	# PredPel, D.11342
	addl	%ecx, %ecx	# D.11342
	addl	%eax, %ecx	# D.11342, D.11342
	movl	-148(%rbp), %eax	# PredPel, D.11342
	addl	%ecx, %eax	# D.11342, D.11342
	addl	$2, %eax	#, D.11342
	leal	3(%rax), %ecx	#, tmp1163
	testl	%eax, %eax	# tmp1162
	cmovs	%ecx, %eax	# tmp1163,, tmp1162
	sarl	$2, %eax	#, tmp1164
	movw	%ax, 3262(%rdx)	# D.11347, img.114_812->mprr
	.loc 1 371 0
	movq	img(%rip), %rcx	# img, img.115
	.loc 1 372 0
	movq	img(%rip), %rax	# img, img.116
	movl	-124(%rbp), %esi	# PredPel, D.11342
	movl	-120(%rbp), %edx	# PredPel, D.11342
	addl	%esi, %edx	# D.11342, D.11342
	addl	$1, %edx	#, D.11342
	movl	%edx, %esi	# D.11342, tmp1165
	shrl	$31, %esi	#, tmp1165
	addl	%esi, %edx	# tmp1165, tmp1166
	sarl	%edx	# tmp1167
	movw	%dx, 3324(%rax)	# D.11347, img.116_823->mprr
	movzwl	3324(%rax), %eax	# img.116_823->mprr, D.11347
	.loc 1 371 0
	movw	%ax, 3288(%rcx)	# D.11347, img.115_822->mprr
	.loc 1 373 0
	movq	img(%rip), %rcx	# img, img.117
	.loc 1 374 0
	movq	img(%rip), %rdx	# img, img.118
	movl	-160(%rbp), %eax	# PredPel, D.11342
	movl	-124(%rbp), %esi	# PredPel, D.11342
	addl	%esi, %esi	# D.11342
	addl	%eax, %esi	# D.11342, D.11342
	movl	-120(%rbp), %eax	# PredPel, D.11342
	addl	%esi, %eax	# D.11342, D.11342
	addl	$2, %eax	#, D.11342
	leal	3(%rax), %esi	#, tmp1169
	testl	%eax, %eax	# tmp1168
	cmovs	%esi, %eax	# tmp1169,, tmp1168
	sarl	$2, %eax	#, tmp1170
	movw	%ax, 3326(%rdx)	# D.11347, img.118_832->mprr
	movzwl	3326(%rdx), %eax	# img.118_832->mprr, D.11347
	.loc 1 373 0
	movw	%ax, 3290(%rcx)	# D.11347, img.117_831->mprr
	.loc 1 375 0
	movq	img(%rip), %rcx	# img, img.119
	.loc 1 376 0
	movq	img(%rip), %rax	# img, img.120
	movl	-120(%rbp), %esi	# PredPel, D.11342
	movl	-116(%rbp), %edx	# PredPel, D.11342
	addl	%esi, %edx	# D.11342, D.11342
	addl	$1, %edx	#, D.11342
	movl	%edx, %esi	# D.11342, tmp1171
	shrl	$31, %esi	#, tmp1171
	addl	%esi, %edx	# tmp1171, tmp1172
	sarl	%edx	# tmp1173
	movw	%dx, 3356(%rax)	# D.11347, img.120_844->mprr
	movzwl	3356(%rax), %eax	# img.120_844->mprr, D.11347
	.loc 1 375 0
	movw	%ax, 3320(%rcx)	# D.11347, img.119_843->mprr
	.loc 1 377 0
	movq	img(%rip), %rcx	# img, img.121
	.loc 1 378 0
	movq	img(%rip), %rdx	# img, img.122
	movl	-124(%rbp), %eax	# PredPel, D.11342
	movl	-120(%rbp), %esi	# PredPel, D.11342
	addl	%esi, %esi	# D.11342
	addl	%eax, %esi	# D.11342, D.11342
	movl	-116(%rbp), %eax	# PredPel, D.11342
	addl	%esi, %eax	# D.11342, D.11342
	addl	$2, %eax	#, D.11342
	leal	3(%rax), %esi	#, tmp1175
	testl	%eax, %eax	# tmp1174
	cmovs	%esi, %eax	# tmp1175,, tmp1174
	sarl	$2, %eax	#, tmp1176
	movw	%ax, 3358(%rdx)	# D.11347, img.122_853->mprr
	movzwl	3358(%rdx), %eax	# img.122_853->mprr, D.11347
	.loc 1 377 0
	movw	%ax, 3322(%rcx)	# D.11347, img.121_852->mprr
	.loc 1 379 0
	movq	img(%rip), %rdx	# img, img.123
	movl	-116(%rbp), %ecx	# PredPel, D.11342
	movl	-112(%rbp), %eax	# PredPel, D.11342
	addl	%ecx, %eax	# D.11342, D.11342
	addl	$1, %eax	#, D.11342
	movl	%eax, %ecx	# D.11342, tmp1177
	shrl	$31, %ecx	#, tmp1177
	addl	%ecx, %eax	# tmp1177, tmp1178
	sarl	%eax	# tmp1179
	movw	%ax, 3352(%rdx)	# D.11347, img.123_864->mprr
	.loc 1 380 0
	movq	img(%rip), %rdx	# img, img.124
	movl	-120(%rbp), %eax	# PredPel, D.11342
	movl	-116(%rbp), %ecx	# PredPel, D.11342
	addl	%ecx, %ecx	# D.11342
	addl	%eax, %ecx	# D.11342, D.11342
	movl	-112(%rbp), %eax	# PredPel, D.11342
	addl	%ecx, %eax	# D.11342, D.11342
	addl	$2, %eax	#, D.11342
	leal	3(%rax), %ecx	#, tmp1181
	testl	%eax, %eax	# tmp1180
	cmovs	%ecx, %eax	# tmp1181,, tmp1180
	sarl	$2, %eax	#, tmp1182
	movw	%ax, 3354(%rdx)	# D.11347, img.124_871->mprr
.L1:
	.loc 1 382 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	intrapred_luma, .-intrapred_luma
	.globl	intrapred_luma_16x16
	.type	intrapred_luma_16x16, @function
intrapred_luma_16x16:
.LFB3:
	.loc 1 397 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$640, %rsp	#,
	.loc 1 398 0
	movl	$0, -640(%rbp)	#, s0
	.loc 1 405 0
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.125
	movq	6424(%rax), %rax	# enc_picture.125_29->imgY, tmp277
	movq	%rax, -584(%rbp)	# tmp277, imgY_pred
	.loc 1 406 0
	movq	img(%rip), %rax	# img, img.126
	movl	12(%rax), %eax	# img.126_31->current_mb_nr, tmp278
	movl	%eax, -600(%rbp)	# tmp278, mb_nr
	.loc 1 413 0
	movl	$0, -628(%rbp)	#, i
	jmp	.L48	#
.L49:
	.loc 1 415 0 discriminator 2
	leaq	-416(%rbp), %rcx	#, tmp279
	movl	-628(%rbp), %eax	# i, tmp281
	movslq	%eax, %rdx	# tmp281, tmp280
	movq	%rdx, %rax	# tmp280, tmp282
	addq	%rax, %rax	# tmp282
	addq	%rdx, %rax	# tmp280, tmp282
	salq	$3, %rax	#, tmp283
	addq	%rax, %rcx	# tmp282, D.11350
	movl	-628(%rbp), %eax	# i, tmp284
	leal	-1(%rax), %edx	#, D.11351
	movl	-600(%rbp), %eax	# mb_nr, tmp285
	movq	%rcx, %r8	# D.11350,
	movl	$1, %ecx	#,
	movl	$-1, %esi	#,
	movl	%eax, %edi	# tmp285,
	call	getNeighbour	#
	.loc 1 413 0 discriminator 2
	addl	$1, -628(%rbp)	#, i
.L48:
	.loc 1 413 0 is_stmt 0 discriminator 1
	cmpl	$16, -628(%rbp)	#, i
	jle	.L49	#,
	.loc 1 418 0 is_stmt 1
	leaq	-576(%rbp), %rdx	#, tmp286
	movl	-600(%rbp), %eax	# mb_nr, tmp287
	movq	%rdx, %r8	# tmp286,
	movl	$1, %ecx	#,
	movl	$-1, %edx	#,
	movl	$0, %esi	#,
	movl	%eax, %edi	# tmp287,
	call	getNeighbour	#
	.loc 1 420 0
	movq	input(%rip), %rax	# input, input.127
	movl	216(%rax), %eax	# input.127_37->UseConstrainedIntraPred, D.11351
	testl	%eax, %eax	# D.11351
	jne	.L50	#,
	.loc 1 422 0
	movl	-576(%rbp), %eax	# up.available, tmp288
	movl	%eax, -612(%rbp)	# tmp288, up_avail
	.loc 1 423 0
	movl	-392(%rbp), %eax	# left[1].available, tmp289
	movl	%eax, -608(%rbp)	# tmp289, left_avail
	.loc 1 424 0
	movl	-416(%rbp), %eax	# left[0].available, tmp290
	movl	%eax, -604(%rbp)	# tmp290, left_up_avail
	jmp	.L51	#
.L50:
	.loc 1 428 0
	movl	-576(%rbp), %eax	# up.available, D.11351
	testl	%eax, %eax	# D.11351
	je	.L52	#,
	.loc 1 428 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.129
	movq	71784(%rax), %rax	# img.129_43->intra_block, D.11352
	movl	-572(%rbp), %edx	# up.mb_addr, D.11351
	movslq	%edx, %rdx	# D.11351, D.11353
	salq	$2, %rdx	#, D.11353
	addq	%rdx, %rax	# D.11353, D.11352
	movl	(%rax), %eax	# *_48, iftmp.128
	jmp	.L53	#
.L52:
	.loc 1 428 0 discriminator 2
	movl	$0, %eax	#, iftmp.128
.L53:
	.loc 1 428 0 discriminator 3
	movl	%eax, -612(%rbp)	# iftmp.128, up_avail
	.loc 1 429 0 is_stmt 1 discriminator 3
	movl	$1, -628(%rbp)	#, i
	movl	$1, -608(%rbp)	#, left_avail
	jmp	.L54	#
.L57:
	.loc 1 430 0
	movl	-628(%rbp), %eax	# i, tmp292
	movslq	%eax, %rdx	# tmp292, tmp291
	movq	%rdx, %rax	# tmp291, tmp293
	addq	%rax, %rax	# tmp293
	addq	%rdx, %rax	# tmp291, tmp293
	salq	$3, %rax	#, tmp294
	addq	%rbp, %rax	#, tmp295
	subq	$416, %rax	#, tmp296
	movl	(%rax), %eax	# left[i_10].available, D.11351
	testl	%eax, %eax	# D.11351
	je	.L55	#,
	.loc 1 430 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.131
	movq	71784(%rax), %rcx	# img.131_55->intra_block, D.11352
	movl	-628(%rbp), %eax	# i, tmp298
	movslq	%eax, %rdx	# tmp298, tmp297
	movq	%rdx, %rax	# tmp297, tmp299
	addq	%rax, %rax	# tmp299
	addq	%rdx, %rax	# tmp297, tmp299
	salq	$3, %rax	#, tmp300
	addq	%rbp, %rax	#, tmp301
	subq	$416, %rax	#, tmp302
	movl	4(%rax), %eax	# left[i_10].mb_addr, D.11351
	cltq
	salq	$2, %rax	#, D.11353
	addq	%rcx, %rax	# D.11352, D.11352
	movl	(%rax), %eax	# *_60, iftmp.130
	jmp	.L56	#
.L55:
	.loc 1 430 0 discriminator 2
	movl	$0, %eax	#, iftmp.130
.L56:
	.loc 1 430 0 discriminator 3
	andl	%eax, -608(%rbp)	# iftmp.130, left_avail
	.loc 1 429 0 is_stmt 1 discriminator 3
	addl	$1, -628(%rbp)	#, i
.L54:
	.loc 1 429 0 is_stmt 0 discriminator 1
	cmpl	$16, -628(%rbp)	#, i
	jle	.L57	#,
	.loc 1 431 0 is_stmt 1
	movl	-416(%rbp), %eax	# left[0].available, D.11351
	testl	%eax, %eax	# D.11351
	je	.L58	#,
	.loc 1 431 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.133
	movq	71784(%rax), %rax	# img.133_66->intra_block, D.11352
	movl	-412(%rbp), %edx	# left[0].mb_addr, D.11351
	movslq	%edx, %rdx	# D.11351, D.11353
	salq	$2, %rdx	#, D.11353
	addq	%rdx, %rax	# D.11353, D.11352
	movl	(%rax), %eax	# *_71, iftmp.132
	jmp	.L59	#
.L58:
	.loc 1 431 0 discriminator 2
	movl	$0, %eax	#, iftmp.132
.L59:
	.loc 1 431 0 discriminator 3
	movl	%eax, -604(%rbp)	# iftmp.132, left_up_avail
.L51:
	.loc 1 434 0 is_stmt 1
	movl	$0, -632(%rbp)	#, s2
	movl	-632(%rbp), %eax	# s2, tmp303
	movl	%eax, -636(%rbp)	# tmp303, s1
	.loc 1 436 0
	movl	$0, -628(%rbp)	#, i
	jmp	.L60	#
.L63:
	.loc 1 438 0
	cmpl	$0, -612(%rbp)	#, up_avail
	je	.L61	#,
	.loc 1 439 0
	movl	-556(%rbp), %eax	# up.pos_y, D.11351
	cltq
	leaq	0(,%rax,8), %rdx	#, D.11353
	movq	-584(%rbp), %rax	# imgY_pred, tmp304
	addq	%rdx, %rax	# D.11353, D.11354
	movq	(%rax), %rax	# *_81, D.11355
	movl	-560(%rbp), %ecx	# up.pos_x, D.11351
	movl	-628(%rbp), %edx	# i, tmp305
	addl	%ecx, %edx	# D.11351, D.11351
	movslq	%edx, %rdx	# D.11351, D.11353
	addq	%rdx, %rdx	# D.11353
	addq	%rdx, %rax	# D.11353, D.11355
	movzwl	(%rax), %eax	# *_87, D.11356
	movzwl	%ax, %eax	# D.11356, D.11351
	addl	%eax, -636(%rbp)	# D.11351, s1
.L61:
	.loc 1 440 0
	cmpl	$0, -608(%rbp)	#, left_avail
	je	.L62	#,
	.loc 1 441 0
	movl	-628(%rbp), %eax	# i, tmp306
	addl	$1, %eax	#, D.11351
	movslq	%eax, %rdx	# D.11351, tmp307
	movq	%rdx, %rax	# tmp307, tmp308
	addq	%rax, %rax	# tmp308
	addq	%rdx, %rax	# tmp307, tmp308
	salq	$3, %rax	#, tmp309
	addq	%rbp, %rax	#, tmp310
	subq	$400, %rax	#, tmp311
	movl	4(%rax), %eax	# left[_91].pos_y, D.11351
	cltq
	leaq	0(,%rax,8), %rdx	#, D.11353
	movq	-584(%rbp), %rax	# imgY_pred, tmp312
	addq	%rdx, %rax	# D.11353, D.11354
	movq	(%rax), %rcx	# *_95, D.11355
	movl	-628(%rbp), %eax	# i, tmp313
	addl	$1, %eax	#, D.11351
	movslq	%eax, %rdx	# D.11351, tmp314
	movq	%rdx, %rax	# tmp314, tmp315
	addq	%rax, %rax	# tmp315
	addq	%rdx, %rax	# tmp314, tmp315
	salq	$3, %rax	#, tmp316
	addq	%rbp, %rax	#, tmp317
	subq	$400, %rax	#, tmp318
	movl	(%rax), %eax	# left[_97].pos_x, D.11351
	cltq
	addq	%rax, %rax	# D.11353
	addq	%rcx, %rax	# D.11355, D.11355
	movzwl	(%rax), %eax	# *_101, D.11356
	movzwl	%ax, %eax	# D.11356, D.11351
	addl	%eax, -632(%rbp)	# D.11351, s2
.L62:
	.loc 1 436 0
	addl	$1, -628(%rbp)	#, i
.L60:
	.loc 1 436 0 is_stmt 0 discriminator 1
	cmpl	$15, -628(%rbp)	#, i
	jle	.L63	#,
	.loc 1 443 0 is_stmt 1
	cmpl	$0, -612(%rbp)	#, up_avail
	je	.L64	#,
	.loc 1 443 0 is_stmt 0 discriminator 1
	cmpl	$0, -608(%rbp)	#, left_avail
	je	.L64	#,
	.loc 1 444 0 is_stmt 1
	movl	-632(%rbp), %eax	# s2, tmp319
	movl	-636(%rbp), %edx	# s1, tmp320
	addl	%edx, %eax	# tmp320, D.11351
	addl	$16, %eax	#, D.11351
	leal	31(%rax), %edx	#, tmp322
	testl	%eax, %eax	# tmp321
	cmovs	%edx, %eax	# tmp322,, tmp321
	sarl	$5, %eax	#, tmp323
	movl	%eax, -640(%rbp)	# tmp323, s0
.L64:
	.loc 1 445 0
	cmpl	$0, -612(%rbp)	#, up_avail
	jne	.L65	#,
	.loc 1 445 0 is_stmt 0 discriminator 1
	cmpl	$0, -608(%rbp)	#, left_avail
	je	.L65	#,
	.loc 1 446 0 is_stmt 1
	movl	-632(%rbp), %eax	# s2, tmp324
	addl	$8, %eax	#, D.11351
	leal	15(%rax), %edx	#, tmp326
	testl	%eax, %eax	# tmp325
	cmovs	%edx, %eax	# tmp326,, tmp325
	sarl	$4, %eax	#, tmp327
	movl	%eax, -640(%rbp)	# tmp327, s0
.L65:
	.loc 1 447 0
	cmpl	$0, -612(%rbp)	#, up_avail
	je	.L66	#,
	.loc 1 447 0 is_stmt 0 discriminator 1
	cmpl	$0, -608(%rbp)	#, left_avail
	jne	.L66	#,
	.loc 1 448 0 is_stmt 1
	movl	-636(%rbp), %eax	# s1, tmp328
	addl	$8, %eax	#, D.11351
	leal	15(%rax), %edx	#, tmp330
	testl	%eax, %eax	# tmp329
	cmovs	%edx, %eax	# tmp330,, tmp329
	sarl	$4, %eax	#, tmp331
	movl	%eax, -640(%rbp)	# tmp331, s0
.L66:
	.loc 1 449 0
	cmpl	$0, -612(%rbp)	#, up_avail
	jne	.L67	#,
	.loc 1 449 0 is_stmt 0 discriminator 1
	cmpl	$0, -608(%rbp)	#, left_avail
	jne	.L67	#,
	.loc 1 450 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.134
	movl	72680(%rax), %eax	# img.134_113->dc_pred_value, D.11357
	movl	%eax, -640(%rbp)	# D.11357, s0
.L67:
	.loc 1 452 0
	movl	$0, -628(%rbp)	#, i
	jmp	.L68	#
.L71:
	.loc 1 455 0
	cmpl	$0, -612(%rbp)	#, up_avail
	je	.L69	#,
	.loc 1 456 0
	movl	-556(%rbp), %eax	# up.pos_y, D.11351
	cltq
	leaq	0(,%rax,8), %rdx	#, D.11353
	movq	-584(%rbp), %rax	# imgY_pred, tmp332
	addq	%rdx, %rax	# D.11353, D.11354
	movq	(%rax), %rax	# *_120, D.11355
	movl	-560(%rbp), %ecx	# up.pos_x, D.11351
	movl	-628(%rbp), %edx	# i, tmp333
	addl	%ecx, %edx	# D.11351, D.11351
	movslq	%edx, %rdx	# D.11351, D.11353
	addq	%rdx, %rdx	# D.11353
	addq	%rdx, %rax	# D.11353, D.11355
	movzwl	(%rax), %eax	# *_126, D.11356
	movzwl	%ax, %edx	# D.11356, D.11351
	movl	-628(%rbp), %eax	# i, tmp335
	cltq
	movl	%edx, -544(%rbp,%rax,8)	# D.11351, s
.L69:
	.loc 1 458 0
	cmpl	$0, -608(%rbp)	#, left_avail
	je	.L70	#,
	.loc 1 459 0
	movl	-628(%rbp), %eax	# i, tmp336
	addl	$1, %eax	#, D.11351
	movslq	%eax, %rdx	# D.11351, tmp337
	movq	%rdx, %rax	# tmp337, tmp338
	addq	%rax, %rax	# tmp338
	addq	%rdx, %rax	# tmp337, tmp338
	salq	$3, %rax	#, tmp339
	addq	%rbp, %rax	#, tmp340
	subq	$400, %rax	#, tmp341
	movl	4(%rax), %eax	# left[_129].pos_y, D.11351
	cltq
	leaq	0(,%rax,8), %rdx	#, D.11353
	movq	-584(%rbp), %rax	# imgY_pred, tmp342
	addq	%rdx, %rax	# D.11353, D.11354
	movq	(%rax), %rcx	# *_133, D.11355
	movl	-628(%rbp), %eax	# i, tmp343
	addl	$1, %eax	#, D.11351
	movslq	%eax, %rdx	# D.11351, tmp344
	movq	%rdx, %rax	# tmp344, tmp345
	addq	%rax, %rax	# tmp345
	addq	%rdx, %rax	# tmp344, tmp345
	salq	$3, %rax	#, tmp346
	addq	%rbp, %rax	#, tmp347
	subq	$400, %rax	#, tmp348
	movl	(%rax), %eax	# left[_135].pos_x, D.11351
	cltq
	addq	%rax, %rax	# D.11353
	addq	%rcx, %rax	# D.11355, D.11355
	movzwl	(%rax), %eax	# *_139, D.11356
	movzwl	%ax, %edx	# D.11356, D.11351
	movl	-628(%rbp), %eax	# i, tmp350
	cltq
	movl	%edx, -540(%rbp,%rax,8)	# D.11351, s
.L70:
	.loc 1 452 0
	addl	$1, -628(%rbp)	#, i
.L68:
	.loc 1 452 0 is_stmt 0 discriminator 1
	cmpl	$15, -628(%rbp)	#, i
	jle	.L71	#,
	.loc 1 462 0 is_stmt 1
	movl	$0, -624(%rbp)	#, j
	jmp	.L72	#
.L75:
	.loc 1 464 0
	movl	$0, -628(%rbp)	#, i
	jmp	.L73	#
.L74:
	.loc 1 466 0 discriminator 2
	movq	img(%rip), %rax	# img, img.135
	movl	-628(%rbp), %edx	# i, tmp352
	movslq	%edx, %rdx	# tmp352, tmp351
	movl	-544(%rbp,%rdx,8), %edx	# s, D.11351
	movl	-628(%rbp), %ecx	# i, tmp354
	movslq	%ecx, %rcx	# tmp354, tmp353
	movl	-624(%rbp), %esi	# j, tmp356
	movslq	%esi, %rsi	# tmp356, tmp355
	salq	$4, %rsi	#, tmp357
	addq	%rsi, %rcx	# tmp357, tmp358
	addq	$2392, %rcx	#, tmp359
	movw	%dx, 8(%rax,%rcx,2)	# D.11356, img.135_145->mprr_2
	.loc 1 467 0 discriminator 2
	movq	img(%rip), %rax	# img, img.136
	movl	-624(%rbp), %edx	# j, tmp361
	movslq	%edx, %rdx	# tmp361, tmp360
	movl	-540(%rbp,%rdx,8), %edx	# s, D.11351
	movl	-628(%rbp), %ecx	# i, tmp363
	movslq	%ecx, %rcx	# tmp363, tmp362
	movl	-624(%rbp), %esi	# j, tmp365
	movslq	%esi, %rsi	# tmp365, tmp364
	salq	$4, %rsi	#, tmp366
	addq	%rsi, %rcx	# tmp366, tmp367
	addq	$2648, %rcx	#, tmp368
	movw	%dx, 8(%rax,%rcx,2)	# D.11356, img.136_148->mprr_2
	.loc 1 468 0 discriminator 2
	movq	img(%rip), %rax	# img, img.137
	movl	-640(%rbp), %edx	# s0, tmp369
	movl	-628(%rbp), %ecx	# i, tmp371
	movslq	%ecx, %rcx	# tmp371, tmp370
	movl	-624(%rbp), %esi	# j, tmp373
	movslq	%esi, %rsi	# tmp373, tmp372
	salq	$4, %rsi	#, tmp374
	addq	%rsi, %rcx	# tmp374, tmp375
	addq	$2904, %rcx	#, tmp376
	movw	%dx, 8(%rax,%rcx,2)	# D.11356, img.137_151->mprr_2
	.loc 1 464 0 discriminator 2
	addl	$1, -628(%rbp)	#, i
.L73:
	.loc 1 464 0 is_stmt 0 discriminator 1
	cmpl	$15, -628(%rbp)	#, i
	jle	.L74	#,
	.loc 1 462 0 is_stmt 1
	addl	$1, -624(%rbp)	#, j
.L72:
	.loc 1 462 0 is_stmt 0 discriminator 1
	cmpl	$15, -624(%rbp)	#, j
	jle	.L75	#,
	.loc 1 471 0 is_stmt 1
	cmpl	$0, -612(%rbp)	#, up_avail
	je	.L47	#,
	.loc 1 471 0 is_stmt 0 discriminator 1
	cmpl	$0, -608(%rbp)	#, left_avail
	je	.L47	#,
	cmpl	$0, -604(%rbp)	#, left_up_avail
	je	.L47	#,
	.loc 1 476 0 is_stmt 1
	movl	$0, -620(%rbp)	#, ih
	.loc 1 477 0
	movl	$0, -616(%rbp)	#, iv
	.loc 1 478 0
	movl	$1, -628(%rbp)	#, i
	jmp	.L79	#
.L82:
	.loc 1 480 0
	cmpl	$7, -628(%rbp)	#, i
	jg	.L80	#,
	.loc 1 481 0
	movl	-556(%rbp), %eax	# up.pos_y, D.11351
	cltq
	leaq	0(,%rax,8), %rdx	#, D.11353
	movq	-584(%rbp), %rax	# imgY_pred, tmp377
	addq	%rdx, %rax	# D.11353, D.11354
	movq	(%rax), %rax	# *_161, D.11355
	movl	-560(%rbp), %edx	# up.pos_x, D.11351
	leal	7(%rdx), %ecx	#, D.11351
	movl	-628(%rbp), %edx	# i, tmp378
	addl	%ecx, %edx	# D.11351, D.11351
	movslq	%edx, %rdx	# D.11351, D.11353
	addq	%rdx, %rdx	# D.11353
	addq	%rdx, %rax	# D.11353, D.11355
	movzwl	(%rax), %eax	# *_168, D.11356
	movzwl	%ax, %edx	# D.11356, D.11351
	movl	-556(%rbp), %eax	# up.pos_y, D.11351
	cltq
	leaq	0(,%rax,8), %rcx	#, D.11353
	movq	-584(%rbp), %rax	# imgY_pred, tmp379
	addq	%rcx, %rax	# D.11353, D.11354
	movq	(%rax), %rax	# *_174, D.11355
	movl	-560(%rbp), %ecx	# up.pos_x, D.11351
	addl	$7, %ecx	#, D.11351
	subl	-628(%rbp), %ecx	# i, D.11351
	movslq	%ecx, %rcx	# D.11351, D.11353
	addq	%rcx, %rcx	# D.11353
	addq	%rcx, %rax	# D.11353, D.11355
	movzwl	(%rax), %eax	# *_181, D.11356
	movzwl	%ax, %eax	# D.11356, D.11351
	subl	%eax, %edx	# D.11351, D.11351
	movl	%edx, %eax	# D.11351, D.11351
	imull	-628(%rbp), %eax	# i, D.11351
	addl	%eax, -620(%rbp)	# D.11351, ih
	jmp	.L81	#
.L80:
	.loc 1 483 0
	movl	-556(%rbp), %eax	# up.pos_y, D.11351
	cltq
	leaq	0(,%rax,8), %rdx	#, D.11353
	movq	-584(%rbp), %rax	# imgY_pred, tmp380
	addq	%rdx, %rax	# D.11353, D.11354
	movq	(%rax), %rax	# *_190, D.11355
	movl	-560(%rbp), %edx	# up.pos_x, D.11351
	leal	7(%rdx), %ecx	#, D.11351
	movl	-628(%rbp), %edx	# i, tmp381
	addl	%ecx, %edx	# D.11351, D.11351
	movslq	%edx, %rdx	# D.11351, D.11353
	addq	%rdx, %rdx	# D.11353
	addq	%rdx, %rax	# D.11353, D.11355
	movzwl	(%rax), %eax	# *_197, D.11356
	movzwl	%ax, %edx	# D.11356, D.11351
	movl	-396(%rbp), %eax	# left[0].pos_y, D.11351
	cltq
	leaq	0(,%rax,8), %rcx	#, D.11353
	movq	-584(%rbp), %rax	# imgY_pred, tmp382
	addq	%rcx, %rax	# D.11353, D.11354
	movq	(%rax), %rax	# *_203, D.11355
	movl	-400(%rbp), %ecx	# left[0].pos_x, D.11351
	movslq	%ecx, %rcx	# D.11351, D.11353
	addq	%rcx, %rcx	# D.11353
	addq	%rcx, %rax	# D.11353, D.11355
	movzwl	(%rax), %eax	# *_208, D.11356
	movzwl	%ax, %eax	# D.11356, D.11351
	subl	%eax, %edx	# D.11351, D.11351
	movl	%edx, %eax	# D.11351, D.11351
	imull	-628(%rbp), %eax	# i, D.11351
	addl	%eax, -620(%rbp)	# D.11351, ih
.L81:
	.loc 1 485 0
	movl	-628(%rbp), %eax	# i, tmp383
	addl	$8, %eax	#, D.11351
	movslq	%eax, %rdx	# D.11351, tmp384
	movq	%rdx, %rax	# tmp384, tmp385
	addq	%rax, %rax	# tmp385
	addq	%rdx, %rax	# tmp384, tmp385
	salq	$3, %rax	#, tmp386
	addq	%rbp, %rax	#, tmp387
	subq	$400, %rax	#, tmp388
	movl	4(%rax), %eax	# left[_214].pos_y, D.11351
	cltq
	leaq	0(,%rax,8), %rdx	#, D.11353
	movq	-584(%rbp), %rax	# imgY_pred, tmp389
	addq	%rdx, %rax	# D.11353, D.11354
	movq	(%rax), %rcx	# *_218, D.11355
	movl	-628(%rbp), %eax	# i, tmp390
	addl	$8, %eax	#, D.11351
	movslq	%eax, %rdx	# D.11351, tmp391
	movq	%rdx, %rax	# tmp391, tmp392
	addq	%rax, %rax	# tmp392
	addq	%rdx, %rax	# tmp391, tmp392
	salq	$3, %rax	#, tmp393
	addq	%rbp, %rax	#, tmp394
	subq	$400, %rax	#, tmp395
	movl	(%rax), %eax	# left[_220].pos_x, D.11351
	cltq
	addq	%rax, %rax	# D.11353
	addq	%rcx, %rax	# D.11355, D.11355
	movzwl	(%rax), %eax	# *_224, D.11356
	movzwl	%ax, %ecx	# D.11356, D.11351
	movl	$8, %eax	#, tmp396
	subl	-628(%rbp), %eax	# i, D.11351
	movslq	%eax, %rdx	# D.11351, tmp397
	movq	%rdx, %rax	# tmp397, tmp398
	addq	%rax, %rax	# tmp398
	addq	%rdx, %rax	# tmp397, tmp398
	salq	$3, %rax	#, tmp399
	addq	%rbp, %rax	#, tmp400
	subq	$400, %rax	#, tmp401
	movl	4(%rax), %eax	# left[_227].pos_y, D.11351
	cltq
	leaq	0(,%rax,8), %rdx	#, D.11353
	movq	-584(%rbp), %rax	# imgY_pred, tmp402
	addq	%rdx, %rax	# D.11353, D.11354
	movq	(%rax), %rsi	# *_231, D.11355
	movl	$8, %eax	#, tmp403
	subl	-628(%rbp), %eax	# i, D.11351
	movslq	%eax, %rdx	# D.11351, tmp404
	movq	%rdx, %rax	# tmp404, tmp405
	addq	%rax, %rax	# tmp405
	addq	%rdx, %rax	# tmp404, tmp405
	salq	$3, %rax	#, tmp406
	addq	%rbp, %rax	#, tmp407
	subq	$400, %rax	#, tmp408
	movl	(%rax), %eax	# left[_233].pos_x, D.11351
	cltq
	addq	%rax, %rax	# D.11353
	addq	%rsi, %rax	# D.11355, D.11355
	movzwl	(%rax), %eax	# *_237, D.11356
	movzwl	%ax, %eax	# D.11356, D.11351
	subl	%eax, %ecx	# D.11351, D.11351
	movl	%ecx, %eax	# D.11351, D.11351
	imull	-628(%rbp), %eax	# i, D.11351
	addl	%eax, -616(%rbp)	# D.11351, iv
	.loc 1 478 0
	addl	$1, -628(%rbp)	#, i
.L79:
	.loc 1 478 0 is_stmt 0 discriminator 1
	cmpl	$8, -628(%rbp)	#, i
	jle	.L82	#,
	.loc 1 487 0 is_stmt 1
	movl	-620(%rbp), %edx	# ih, tmp409
	movl	%edx, %eax	# tmp409, tmp410
	sall	$2, %eax	#, tmp410
	addl	%edx, %eax	# tmp409, D.11351
	addl	$32, %eax	#, D.11351
	sarl	$6, %eax	#, tmp411
	movl	%eax, -596(%rbp)	# tmp411, ib
	.loc 1 488 0
	movl	-616(%rbp), %edx	# iv, tmp412
	movl	%edx, %eax	# tmp412, tmp413
	sall	$2, %eax	#, tmp413
	addl	%edx, %eax	# tmp412, D.11351
	addl	$32, %eax	#, D.11351
	sarl	$6, %eax	#, tmp414
	movl	%eax, -592(%rbp)	# tmp414, ic
	.loc 1 490 0
	movl	-556(%rbp), %eax	# up.pos_y, D.11351
	cltq
	leaq	0(,%rax,8), %rdx	#, D.11353
	movq	-584(%rbp), %rax	# imgY_pred, tmp415
	addq	%rdx, %rax	# D.11353, D.11354
	movq	(%rax), %rax	# *_253, D.11355
	movl	-560(%rbp), %edx	# up.pos_x, D.11351
	movslq	%edx, %rdx	# D.11351, D.11358
	addq	$15, %rdx	#, D.11358
	addq	%rdx, %rdx	# D.11358
	addq	%rdx, %rax	# D.11358, D.11355
	movzwl	(%rax), %eax	# *_259, D.11356
	movzwl	%ax, %edx	# D.11356, D.11351
	movl	-12(%rbp), %eax	# left[16].pos_y, D.11351
	cltq
	leaq	0(,%rax,8), %rcx	#, D.11353
	movq	-584(%rbp), %rax	# imgY_pred, tmp416
	addq	%rcx, %rax	# D.11353, D.11354
	movq	(%rax), %rax	# *_265, D.11355
	movl	-16(%rbp), %ecx	# left[16].pos_x, D.11351
	movslq	%ecx, %rcx	# D.11351, D.11353
	addq	%rcx, %rcx	# D.11353
	addq	%rcx, %rax	# D.11353, D.11355
	movzwl	(%rax), %eax	# *_270, D.11356
	movzwl	%ax, %eax	# D.11356, D.11351
	addl	%edx, %eax	# D.11351, D.11351
	sall	$4, %eax	#, tmp417
	movl	%eax, -588(%rbp)	# tmp417, iaa
	.loc 1 492 0
	movl	$0, -624(%rbp)	#, j
	jmp	.L83	#
.L86:
	.loc 1 494 0
	movl	$0, -628(%rbp)	#, i
	jmp	.L84	#
.L85:
	.loc 1 496 0 discriminator 2
	movq	img(%rip), %rcx	# img, img.138
	movl	-628(%rbp), %eax	# i, tmp418
	subl	$7, %eax	#, D.11351
	imull	-596(%rbp), %eax	# ib, D.11351
	movl	%eax, %edx	# D.11351, D.11351
	movl	-588(%rbp), %eax	# iaa, tmp419
	addl	%eax, %edx	# tmp419, D.11351
	movl	-624(%rbp), %eax	# j, tmp420
	subl	$7, %eax	#, D.11351
	imull	-592(%rbp), %eax	# ic, D.11351
	addl	%edx, %eax	# D.11351, D.11351
	addl	$16, %eax	#, D.11351
	leal	31(%rax), %edx	#, tmp422
	testl	%eax, %eax	# tmp421
	cmovs	%edx, %eax	# tmp422,, tmp421
	sarl	$5, %eax	#, tmp423
	movl	%eax, %edx	# tmp423, D.11351
	movq	img(%rip), %rax	# img, img.139
	movl	72684(%rax), %eax	# img.139_286->max_imgpel_value, D.11351
	cmpl	%eax, %edx	# D.11351, D.11351
	cmovle	%edx, %eax	# D.11351,, D.11351
	movl	$0, %edx	#, tmp424
	testl	%eax, %eax	# D.11351
	cmovs	%edx, %eax	# D.11351,, tmp424, D.11351
	movl	-628(%rbp), %edx	# i, tmp426
	movslq	%edx, %rdx	# tmp426, tmp425
	movl	-624(%rbp), %esi	# j, tmp428
	movslq	%esi, %rsi	# tmp428, tmp427
	salq	$4, %rsi	#, tmp429
	addq	%rsi, %rdx	# tmp429, tmp430
	addq	$3160, %rdx	#, tmp431
	movw	%ax, 8(%rcx,%rdx,2)	# D.11356, img.138_277->mprr_2
	.loc 1 494 0 discriminator 2
	addl	$1, -628(%rbp)	#, i
.L84:
	.loc 1 494 0 is_stmt 0 discriminator 1
	cmpl	$15, -628(%rbp)	#, i
	jle	.L85	#,
	.loc 1 492 0 is_stmt 1
	addl	$1, -624(%rbp)	#, j
.L83:
	.loc 1 492 0 is_stmt 0 discriminator 1
	cmpl	$15, -624(%rbp)	#, j
	jle	.L86	#,
.L47:
	.loc 1 499 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	intrapred_luma_16x16, .-intrapred_luma_16x16
	.globl	dct_luma_16x16
	.type	dct_luma_16x16, @function
dct_luma_16x16:
.LFB4:
	.loc 1 515 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$2280, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -2276(%rbp)	# new_intra_mode, new_intra_mode
	.loc 1 526 0
	movl	$0, -2236(%rbp)	#, ac_coef
	.loc 1 528 0
	movq	img(%rip), %rax	# img, img.140
	movq	14168(%rax), %rdx	# img.140_60->mb_data, D.11359
	movq	img(%rip), %rax	# img, img.141
	movl	12(%rax), %eax	# img.141_62->current_mb_nr, D.11360
	cltq
	imulq	$632, %rax, %rax	#, D.11361, D.11361
	addq	%rdx, %rax	# D.11359, tmp499
	movq	%rax, -2200(%rbp)	# tmp499, currMB
	.loc 1 531 0
	movq	img(%rip), %rax	# img, img.142
	movq	14144(%rax), %rax	# img.142_67->cofDC, D.11362
	movq	(%rax), %rax	# *_68, D.11363
	movq	(%rax), %rax	# *_69, tmp500
	movq	%rax, -2192(%rbp)	# tmp500, DCLevel
	.loc 1 532 0
	movq	img(%rip), %rax	# img, img.143
	movq	14144(%rax), %rax	# img.143_71->cofDC, D.11362
	movq	(%rax), %rax	# *_72, D.11363
	movq	8(%rax), %rax	# MEM[(int * *)_73 + 8B], tmp501
	movq	%rax, -2184(%rbp)	# tmp501, DCRun
	.loc 1 536 0
	movq	-2200(%rbp), %rax	# currMB, tmp502
	movl	12(%rax), %edx	# currMB_66->qp, D.11360
	movq	img(%rip), %rax	# img, img.145
	movl	72668(%rax), %eax	# img.145_76->bitdepth_luma_qp_scale, D.11360
	addl	%edx, %eax	# D.11360, D.11360
	testl	%eax, %eax	# D.11360
	jne	.L88	#,
	.loc 1 536 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.146
	movl	72704(%rax), %eax	# img.146_79->lossless_qpprime_flag, D.11360
	cmpl	$1, %eax	#, D.11360
	jne	.L88	#,
	.loc 1 536 0 discriminator 3
	movl	$1, %eax	#, iftmp.144
	jmp	.L89	#
.L88:
	.loc 1 536 0 discriminator 2
	movl	$0, %eax	#, iftmp.144
.L89:
	.loc 1 536 0 discriminator 4
	movl	%eax, -2232(%rbp)	# iftmp.144, lossless_qpprime
	.loc 1 538 0 is_stmt 1 discriminator 4
	movq	-2200(%rbp), %rax	# currMB, tmp503
	movl	12(%rax), %edx	# currMB_66->qp, D.11360
	movq	img(%rip), %rax	# img, img.147
	movl	72668(%rax), %eax	# img.147_85->bitdepth_luma_qp_scale, D.11360
	leal	(%rdx,%rax), %ecx	#, D.11360
	movl	$715827883, %edx	#, tmp505
	movl	%ecx, %eax	# D.11360, tmp1565
	imull	%edx	# tmp505
	movl	%ecx, %eax	# D.11360, tmp506
	sarl	$31, %eax	#, tmp506
	subl	%eax, %edx	# tmp506, tmp507
	movl	%edx, %eax	# tmp507, tmp507
	movl	%eax, -2228(%rbp)	# tmp507, qp_per
	.loc 1 539 0 discriminator 4
	movq	-2200(%rbp), %rax	# currMB, tmp508
	movl	12(%rax), %edx	# currMB_66->qp, D.11360
	movq	img(%rip), %rax	# img, img.148
	movl	72668(%rax), %eax	# img.148_90->bitdepth_luma_qp_scale, D.11360
	leal	(%rdx,%rax), %ecx	#, D.11360
	movl	$715827883, %edx	#, tmp510
	movl	%ecx, %eax	# D.11360, tmp1566
	imull	%edx	# tmp510
	movl	%ecx, %eax	# D.11360, tmp511
	sarl	$31, %eax	#, tmp511
	subl	%eax, %edx	# tmp511, tmp512
	movl	%edx, %eax	# tmp512, tmp512
	movl	%eax, -2224(%rbp)	# tmp512, qp_rem
	movl	-2224(%rbp), %edx	# qp_rem, tmp513
	movl	%edx, %eax	# tmp513, tmp514
	addl	%eax, %eax	# tmp514
	addl	%edx, %eax	# tmp513, tmp514
	addl	%eax, %eax	# tmp515
	subl	%eax, %ecx	# tmp514, tmp516
	movl	%ecx, %eax	# tmp516, tmp516
	movl	%eax, -2224(%rbp)	# tmp516, qp_rem
	.loc 1 540 0 discriminator 4
	movl	-2228(%rbp), %eax	# qp_per, tmp520
	addl	$15, %eax	#, tmp519
	movl	%eax, -2220(%rbp)	# tmp519, q_bits
	.loc 1 543 0 discriminator 4
	movl	$0, -2264(%rbp)	#, j
	jmp	.L90	#
.L95:
	.loc 1 545 0
	movl	$0, -2268(%rbp)	#, i
	jmp	.L91	#
.L94:
	.loc 1 548 0
	movq	img(%rip), %rax	# img, img.149
	movl	72724(%rax), %eax	# img.149_97->residue_transform_flag, D.11360
	testl	%eax, %eax	# D.11360
	jne	.L92	#,
	.loc 1 549 0
	movq	imgY_org(%rip), %rdx	# imgY_org, imgY_org.150
	movq	img(%rip), %rax	# img, img.151
	movl	172(%rax), %ecx	# img.151_100->opix_y, D.11360
	movl	-2264(%rbp), %eax	# j, tmp521
	addl	%ecx, %eax	# D.11360, D.11360
	cltq
	salq	$3, %rax	#, D.11361
	addq	%rdx, %rax	# imgY_org.150, D.11364
	movq	(%rax), %rdx	# *_105, D.11365
	movq	img(%rip), %rax	# img, img.152
	movl	168(%rax), %ecx	# img.152_107->opix_x, D.11360
	movl	-2268(%rbp), %eax	# i, tmp522
	addl	%ecx, %eax	# D.11360, D.11360
	cltq
	addq	%rax, %rax	# D.11361
	addq	%rdx, %rax	# D.11365, D.11365
	movzwl	(%rax), %eax	# *_112, D.11366
	movzwl	%ax, %edx	# D.11366, D.11360
	movq	img(%rip), %rax	# img, img.153
	movl	-2268(%rbp), %ecx	# i, tmp524
	movslq	%ecx, %rcx	# tmp524, tmp523
	movl	-2276(%rbp), %esi	# new_intra_mode, tmp526
	movslq	%esi, %rdi	# tmp526, tmp525
	movl	-2264(%rbp), %esi	# j, tmp528
	movslq	%esi, %rsi	# tmp528, tmp527
	salq	$4, %rdi	#, tmp529
	addq	%rdi, %rsi	# tmp529, tmp530
	salq	$4, %rsi	#, tmp531
	addq	%rsi, %rcx	# tmp531, tmp532
	addq	$2392, %rcx	#, tmp533
	movzwl	8(%rax,%rcx,2), %eax	# img.153_115->mprr_2, D.11366
	movzwl	%ax, %eax	# D.11366, D.11360
	subl	%eax, %edx	# D.11360, D.11360
	movl	-2264(%rbp), %eax	# j, tmp535
	cltq
	movl	-2268(%rbp), %ecx	# i, tmp537
	movslq	%ecx, %rcx	# tmp537, tmp536
	salq	$4, %rcx	#, tmp538
	addq	%rcx, %rax	# tmp538, tmp539
	movl	%edx, -2064(%rbp,%rax,4)	# D.11360, M1
	jmp	.L93	#
.L92:
	.loc 1 551 0
	movq	img(%rip), %rax	# img, img.154
	movl	-2264(%rbp), %edx	# j, tmp541
	movslq	%edx, %rdx	# tmp541, tmp540
	movl	-2268(%rbp), %ecx	# i, tmp543
	movslq	%ecx, %rcx	# tmp543, tmp542
	salq	$4, %rcx	#, tmp544
	addq	%rcx, %rdx	# tmp544, tmp545
	addq	$3276, %rdx	#, tmp546
	movl	8(%rax,%rdx,4), %eax	# img.154_120->m7, D.11360
	movl	-2264(%rbp), %edx	# j, tmp548
	movslq	%edx, %rdx	# tmp548, tmp547
	movl	-2268(%rbp), %ecx	# i, tmp550
	movslq	%ecx, %rcx	# tmp550, tmp549
	salq	$4, %rcx	#, tmp551
	addq	%rcx, %rdx	# tmp551, tmp552
	movl	%eax, -2064(%rbp,%rdx,4)	# D.11360, M1
.L93:
	.loc 1 553 0
	movl	-2268(%rbp), %eax	# i, tmp553
	cltd
	shrl	$30, %edx	#, tmp555
	addl	%edx, %eax	# tmp555, tmp556
	andl	$3, %eax	#, tmp557
	subl	%edx, %eax	# tmp555, tmp558
	movl	%eax, %edi	# tmp558, D.11360
	movl	-2268(%rbp), %eax	# i, tmp559
	leal	3(%rax), %edx	#, tmp561
	testl	%eax, %eax	# tmp560
	cmovs	%edx, %eax	# tmp561,, tmp560
	sarl	$2, %eax	#, tmp562
	movl	%eax, %esi	# tmp562, D.11360
	movl	-2264(%rbp), %eax	# j, tmp563
	cltd
	shrl	$30, %edx	#, tmp565
	addl	%edx, %eax	# tmp565, tmp566
	andl	$3, %eax	#, tmp567
	subl	%edx, %eax	# tmp565, tmp568
	movl	%eax, %ecx	# tmp568, D.11360
	movl	-2264(%rbp), %eax	# j, tmp569
	leal	3(%rax), %edx	#, tmp571
	testl	%eax, %eax	# tmp570
	cmovs	%edx, %eax	# tmp571,, tmp570
	sarl	$2, %eax	#, tmp572
	movl	%eax, %edx	# tmp572, D.11360
	movl	-2264(%rbp), %eax	# j, tmp574
	cltq
	movl	-2268(%rbp), %r8d	# i, tmp576
	movslq	%r8d, %r8	# tmp576, tmp575
	salq	$4, %r8	#, tmp577
	addq	%r8, %rax	# tmp577, tmp578
	movl	-2064(%rbp,%rax,4), %eax	# M1, D.11360
	movslq	%edx, %rdx	# D.11360, tmp579
	movslq	%esi, %rsi	# D.11360, tmp580
	movslq	%edi, %rdi	# D.11360, tmp581
	salq	$2, %rdi	#, tmp582
	addq	%rdi, %rsi	# tmp582, tmp583
	movslq	%ecx, %rcx	# D.11360, tmp584
	salq	$2, %rsi	#, tmp585
	addq	%rsi, %rcx	# tmp585, tmp586
	salq	$2, %rcx	#, tmp587
	addq	%rcx, %rdx	# tmp587, tmp588
	movl	%eax, -1040(%rbp,%rdx,4)	# D.11360, M0
	.loc 1 545 0
	addl	$1, -2268(%rbp)	#, i
.L91:
	.loc 1 545 0 is_stmt 0 discriminator 1
	cmpl	$15, -2268(%rbp)	#, i
	jle	.L94	#,
	.loc 1 543 0 is_stmt 1
	addl	$1, -2264(%rbp)	#, j
.L90:
	.loc 1 543 0 is_stmt 0 discriminator 1
	cmpl	$15, -2264(%rbp)	#, j
	jle	.L95	#,
	.loc 1 557 0 is_stmt 1
	movl	$0, -2256(%rbp)	#, jj
	jmp	.L96	#
.L108:
	.loc 1 559 0
	movl	$0, -2260(%rbp)	#, ii
	jmp	.L97	#
.L106:
	.loc 1 561 0
	movl	$0, -2264(%rbp)	#, j
	jmp	.L98	#
.L101:
	.loc 1 563 0
	movl	$0, -2268(%rbp)	#, i
	jmp	.L99	#
.L100:
	.loc 1 565 0 discriminator 2
	movl	$3, %eax	#, tmp592
	subl	-2268(%rbp), %eax	# i, tmp591
	movl	%eax, -2216(%rbp)	# tmp591, i1
	.loc 1 566 0 discriminator 2
	movl	-2256(%rbp), %eax	# jj, tmp594
	cltq
	movl	-2260(%rbp), %edx	# ii, tmp596
	movslq	%edx, %rdx	# tmp596, tmp595
	movl	-2268(%rbp), %ecx	# i, tmp598
	movslq	%ecx, %rcx	# tmp598, tmp597
	salq	$2, %rcx	#, tmp599
	addq	%rdx, %rcx	# tmp595, tmp600
	movl	-2264(%rbp), %edx	# j, tmp602
	movslq	%edx, %rdx	# tmp602, tmp601
	salq	$2, %rcx	#, tmp603
	addq	%rcx, %rdx	# tmp603, tmp604
	salq	$2, %rdx	#, tmp605
	addq	%rdx, %rax	# tmp605, tmp606
	movl	-1040(%rbp,%rax,4), %edx	# M0, D.11360
	movl	-2256(%rbp), %eax	# jj, tmp608
	cltq
	movl	-2260(%rbp), %ecx	# ii, tmp610
	movslq	%ecx, %rcx	# tmp610, tmp609
	movl	-2216(%rbp), %esi	# i1, tmp612
	movslq	%esi, %rsi	# tmp612, tmp611
	salq	$2, %rsi	#, tmp613
	addq	%rcx, %rsi	# tmp609, tmp614
	movl	-2264(%rbp), %ecx	# j, tmp616
	movslq	%ecx, %rcx	# tmp616, tmp615
	salq	$2, %rsi	#, tmp617
	addq	%rsi, %rcx	# tmp617, tmp618
	salq	$2, %rcx	#, tmp619
	addq	%rcx, %rax	# tmp619, tmp620
	movl	-1040(%rbp,%rax,4), %eax	# M0, D.11360
	addl	%eax, %edx	# D.11360, D.11360
	movl	-2268(%rbp), %eax	# i, tmp622
	cltq
	movl	%edx, -2160(%rbp,%rax,4)	# D.11360, M5
	.loc 1 567 0 discriminator 2
	movl	-2256(%rbp), %eax	# jj, tmp624
	cltq
	movl	-2260(%rbp), %edx	# ii, tmp626
	movslq	%edx, %rdx	# tmp626, tmp625
	movl	-2268(%rbp), %ecx	# i, tmp628
	movslq	%ecx, %rcx	# tmp628, tmp627
	salq	$2, %rcx	#, tmp629
	addq	%rdx, %rcx	# tmp625, tmp630
	movl	-2264(%rbp), %edx	# j, tmp632
	movslq	%edx, %rdx	# tmp632, tmp631
	salq	$2, %rcx	#, tmp633
	addq	%rcx, %rdx	# tmp633, tmp634
	salq	$2, %rdx	#, tmp635
	addq	%rdx, %rax	# tmp635, tmp636
	movl	-1040(%rbp,%rax,4), %edx	# M0, D.11360
	movl	-2256(%rbp), %eax	# jj, tmp638
	cltq
	movl	-2260(%rbp), %ecx	# ii, tmp640
	movslq	%ecx, %rcx	# tmp640, tmp639
	movl	-2216(%rbp), %esi	# i1, tmp642
	movslq	%esi, %rsi	# tmp642, tmp641
	salq	$2, %rsi	#, tmp643
	addq	%rcx, %rsi	# tmp639, tmp644
	movl	-2264(%rbp), %ecx	# j, tmp646
	movslq	%ecx, %rcx	# tmp646, tmp645
	salq	$2, %rsi	#, tmp647
	addq	%rsi, %rcx	# tmp647, tmp648
	salq	$2, %rcx	#, tmp649
	addq	%rcx, %rax	# tmp649, tmp650
	movl	-1040(%rbp,%rax,4), %eax	# M0, D.11360
	subl	%eax, %edx	# D.11360, D.11360
	movl	-2216(%rbp), %eax	# i1, tmp652
	cltq
	movl	%edx, -2160(%rbp,%rax,4)	# D.11360, M5
	.loc 1 563 0 discriminator 2
	addl	$1, -2268(%rbp)	#, i
.L99:
	.loc 1 563 0 is_stmt 0 discriminator 1
	cmpl	$1, -2268(%rbp)	#, i
	jle	.L100	#,
	.loc 1 569 0 is_stmt 1
	movl	-2160(%rbp), %edx	# M5, D.11360
	movl	-2156(%rbp), %eax	# M5, D.11360
	addl	%eax, %edx	# D.11360, D.11360
	movl	-2256(%rbp), %eax	# jj, tmp654
	cltq
	movl	-2260(%rbp), %ecx	# ii, tmp656
	movslq	%ecx, %rsi	# tmp656, tmp655
	movl	-2264(%rbp), %ecx	# j, tmp658
	movslq	%ecx, %rcx	# tmp658, tmp657
	salq	$2, %rsi	#, tmp659
	addq	%rsi, %rcx	# tmp659, tmp660
	salq	$2, %rcx	#, tmp661
	addq	%rcx, %rax	# tmp661, tmp662
	movl	%edx, -1040(%rbp,%rax,4)	# D.11360, M0
	.loc 1 570 0
	movl	-2160(%rbp), %edx	# M5, D.11360
	movl	-2156(%rbp), %eax	# M5, D.11360
	subl	%eax, %edx	# D.11360, D.11360
	movl	-2256(%rbp), %eax	# jj, tmp664
	cltq
	movl	-2260(%rbp), %ecx	# ii, tmp666
	movslq	%ecx, %rsi	# tmp666, tmp665
	movl	-2264(%rbp), %ecx	# j, tmp668
	movslq	%ecx, %rcx	# tmp668, tmp667
	salq	$2, %rsi	#, tmp669
	addq	%rsi, %rcx	# tmp669, tmp670
	salq	$2, %rcx	#, tmp671
	addq	%rcx, %rax	# tmp671, tmp672
	subq	$-128, %rax	#, tmp673
	movl	%edx, -1040(%rbp,%rax,4)	# D.11360, M0
	.loc 1 571 0
	movl	-2148(%rbp), %eax	# M5, D.11360
	leal	(%rax,%rax), %edx	#, D.11360
	movl	-2152(%rbp), %eax	# M5, D.11360
	addl	%eax, %edx	# D.11360, D.11360
	movl	-2256(%rbp), %eax	# jj, tmp675
	cltq
	movl	-2260(%rbp), %ecx	# ii, tmp677
	movslq	%ecx, %rsi	# tmp677, tmp676
	movl	-2264(%rbp), %ecx	# j, tmp679
	movslq	%ecx, %rcx	# tmp679, tmp678
	salq	$2, %rsi	#, tmp680
	addq	%rsi, %rcx	# tmp680, tmp681
	salq	$2, %rcx	#, tmp682
	addq	%rcx, %rax	# tmp682, tmp683
	addq	$64, %rax	#, tmp684
	movl	%edx, -1040(%rbp,%rax,4)	# D.11360, M0
	.loc 1 572 0
	movl	-2148(%rbp), %edx	# M5, D.11360
	movl	-2152(%rbp), %ecx	# M5, D.11360
	movl	$0, %eax	#, tmp685
	subl	%ecx, %eax	# D.11360, tmp685
	addl	%eax, %eax	# tmp686
	addl	%eax, %edx	# D.11360, D.11360
	movl	-2256(%rbp), %eax	# jj, tmp688
	cltq
	movl	-2260(%rbp), %ecx	# ii, tmp690
	movslq	%ecx, %rsi	# tmp690, tmp689
	movl	-2264(%rbp), %ecx	# j, tmp692
	movslq	%ecx, %rcx	# tmp692, tmp691
	salq	$2, %rsi	#, tmp693
	addq	%rsi, %rcx	# tmp693, tmp694
	salq	$2, %rcx	#, tmp695
	addq	%rcx, %rax	# tmp695, tmp696
	addq	$192, %rax	#, tmp697
	movl	%edx, -1040(%rbp,%rax,4)	# D.11360, M0
	.loc 1 561 0
	addl	$1, -2264(%rbp)	#, j
.L98:
	.loc 1 561 0 is_stmt 0 discriminator 1
	cmpl	$3, -2264(%rbp)	#, j
	jle	.L101	#,
	.loc 1 575 0 is_stmt 1
	movl	$0, -2268(%rbp)	#, i
	jmp	.L102	#
.L105:
	.loc 1 577 0
	movl	$0, -2264(%rbp)	#, j
	jmp	.L103	#
.L104:
	.loc 1 579 0 discriminator 2
	movl	$3, %eax	#, tmp701
	subl	-2264(%rbp), %eax	# j, tmp700
	movl	%eax, -2212(%rbp)	# tmp700, j1
	.loc 1 580 0 discriminator 2
	movl	-2256(%rbp), %eax	# jj, tmp703
	cltq
	movl	-2260(%rbp), %edx	# ii, tmp705
	movslq	%edx, %rdx	# tmp705, tmp704
	movl	-2268(%rbp), %ecx	# i, tmp707
	movslq	%ecx, %rcx	# tmp707, tmp706
	salq	$2, %rcx	#, tmp708
	addq	%rdx, %rcx	# tmp704, tmp709
	movl	-2264(%rbp), %edx	# j, tmp711
	movslq	%edx, %rdx	# tmp711, tmp710
	salq	$2, %rcx	#, tmp712
	addq	%rcx, %rdx	# tmp712, tmp713
	salq	$2, %rdx	#, tmp714
	addq	%rdx, %rax	# tmp714, tmp715
	movl	-1040(%rbp,%rax,4), %edx	# M0, D.11360
	movl	-2256(%rbp), %eax	# jj, tmp717
	cltq
	movl	-2260(%rbp), %ecx	# ii, tmp719
	movslq	%ecx, %rcx	# tmp719, tmp718
	movl	-2268(%rbp), %esi	# i, tmp721
	movslq	%esi, %rsi	# tmp721, tmp720
	salq	$2, %rsi	#, tmp722
	addq	%rcx, %rsi	# tmp718, tmp723
	movl	-2212(%rbp), %ecx	# j1, tmp725
	movslq	%ecx, %rcx	# tmp725, tmp724
	salq	$2, %rsi	#, tmp726
	addq	%rsi, %rcx	# tmp726, tmp727
	salq	$2, %rcx	#, tmp728
	addq	%rcx, %rax	# tmp728, tmp729
	movl	-1040(%rbp,%rax,4), %eax	# M0, D.11360
	addl	%eax, %edx	# D.11360, D.11360
	movl	-2264(%rbp), %eax	# j, tmp731
	cltq
	movl	%edx, -2160(%rbp,%rax,4)	# D.11360, M5
	.loc 1 581 0 discriminator 2
	movl	-2256(%rbp), %eax	# jj, tmp733
	cltq
	movl	-2260(%rbp), %edx	# ii, tmp735
	movslq	%edx, %rdx	# tmp735, tmp734
	movl	-2268(%rbp), %ecx	# i, tmp737
	movslq	%ecx, %rcx	# tmp737, tmp736
	salq	$2, %rcx	#, tmp738
	addq	%rdx, %rcx	# tmp734, tmp739
	movl	-2264(%rbp), %edx	# j, tmp741
	movslq	%edx, %rdx	# tmp741, tmp740
	salq	$2, %rcx	#, tmp742
	addq	%rcx, %rdx	# tmp742, tmp743
	salq	$2, %rdx	#, tmp744
	addq	%rdx, %rax	# tmp744, tmp745
	movl	-1040(%rbp,%rax,4), %edx	# M0, D.11360
	movl	-2256(%rbp), %eax	# jj, tmp747
	cltq
	movl	-2260(%rbp), %ecx	# ii, tmp749
	movslq	%ecx, %rcx	# tmp749, tmp748
	movl	-2268(%rbp), %esi	# i, tmp751
	movslq	%esi, %rsi	# tmp751, tmp750
	salq	$2, %rsi	#, tmp752
	addq	%rcx, %rsi	# tmp748, tmp753
	movl	-2212(%rbp), %ecx	# j1, tmp755
	movslq	%ecx, %rcx	# tmp755, tmp754
	salq	$2, %rsi	#, tmp756
	addq	%rsi, %rcx	# tmp756, tmp757
	salq	$2, %rcx	#, tmp758
	addq	%rcx, %rax	# tmp758, tmp759
	movl	-1040(%rbp,%rax,4), %eax	# M0, D.11360
	subl	%eax, %edx	# D.11360, D.11360
	movl	-2212(%rbp), %eax	# j1, tmp761
	cltq
	movl	%edx, -2160(%rbp,%rax,4)	# D.11360, M5
	.loc 1 577 0 discriminator 2
	addl	$1, -2264(%rbp)	#, j
.L103:
	.loc 1 577 0 is_stmt 0 discriminator 1
	cmpl	$1, -2264(%rbp)	#, j
	jle	.L104	#,
	.loc 1 583 0 is_stmt 1
	movl	-2160(%rbp), %edx	# M5, D.11360
	movl	-2156(%rbp), %eax	# M5, D.11360
	addl	%eax, %edx	# D.11360, D.11360
	movl	-2256(%rbp), %eax	# jj, tmp763
	cltq
	movl	-2268(%rbp), %ecx	# i, tmp765
	movslq	%ecx, %rsi	# tmp765, tmp764
	movl	-2260(%rbp), %ecx	# ii, tmp767
	movslq	%ecx, %rcx	# tmp767, tmp766
	salq	$2, %rsi	#, tmp768
	addq	%rsi, %rcx	# tmp768, tmp769
	salq	$4, %rcx	#, tmp770
	addq	%rcx, %rax	# tmp770, tmp771
	movl	%edx, -1040(%rbp,%rax,4)	# D.11360, M0
	.loc 1 584 0
	movl	-2160(%rbp), %edx	# M5, D.11360
	movl	-2156(%rbp), %eax	# M5, D.11360
	subl	%eax, %edx	# D.11360, D.11360
	movl	-2256(%rbp), %eax	# jj, tmp773
	cltq
	movl	-2260(%rbp), %ecx	# ii, tmp775
	movslq	%ecx, %rsi	# tmp775, tmp774
	movl	-2268(%rbp), %ecx	# i, tmp777
	movslq	%ecx, %rcx	# tmp777, tmp776
	salq	$4, %rsi	#, tmp778
	salq	$6, %rcx	#, tmp779
	addq	%rsi, %rcx	# tmp778, tmp780
	addq	%rcx, %rax	# tmp780, tmp781
	addq	$8, %rax	#, tmp782
	movl	%edx, -1040(%rbp,%rax,4)	# D.11360, M0
	.loc 1 585 0
	movl	-2148(%rbp), %eax	# M5, D.11360
	leal	(%rax,%rax), %edx	#, D.11360
	movl	-2152(%rbp), %eax	# M5, D.11360
	addl	%eax, %edx	# D.11360, D.11360
	movl	-2256(%rbp), %eax	# jj, tmp784
	cltq
	movl	-2260(%rbp), %ecx	# ii, tmp786
	movslq	%ecx, %rsi	# tmp786, tmp785
	movl	-2268(%rbp), %ecx	# i, tmp788
	movslq	%ecx, %rcx	# tmp788, tmp787
	salq	$4, %rsi	#, tmp789
	salq	$6, %rcx	#, tmp790
	addq	%rsi, %rcx	# tmp789, tmp791
	addq	%rcx, %rax	# tmp791, tmp792
	addq	$4, %rax	#, tmp793
	movl	%edx, -1040(%rbp,%rax,4)	# D.11360, M0
	.loc 1 586 0
	movl	-2148(%rbp), %edx	# M5, D.11360
	movl	-2152(%rbp), %ecx	# M5, D.11360
	movl	$0, %eax	#, tmp794
	subl	%ecx, %eax	# D.11360, tmp794
	addl	%eax, %eax	# tmp795
	addl	%eax, %edx	# D.11360, D.11360
	movl	-2256(%rbp), %eax	# jj, tmp797
	cltq
	movl	-2260(%rbp), %ecx	# ii, tmp799
	movslq	%ecx, %rsi	# tmp799, tmp798
	movl	-2268(%rbp), %ecx	# i, tmp801
	movslq	%ecx, %rcx	# tmp801, tmp800
	salq	$4, %rsi	#, tmp802
	salq	$6, %rcx	#, tmp803
	addq	%rsi, %rcx	# tmp802, tmp804
	addq	%rcx, %rax	# tmp804, tmp805
	addq	$12, %rax	#, tmp806
	movl	%edx, -1040(%rbp,%rax,4)	# D.11360, M0
	.loc 1 575 0
	addl	$1, -2268(%rbp)	#, i
.L102:
	.loc 1 575 0 is_stmt 0 discriminator 1
	cmpl	$3, -2268(%rbp)	#, i
	jle	.L105	#,
	.loc 1 559 0 is_stmt 1
	addl	$1, -2260(%rbp)	#, ii
.L97:
	.loc 1 559 0 is_stmt 0 discriminator 1
	cmpl	$3, -2260(%rbp)	#, ii
	jle	.L106	#,
	.loc 1 557 0 is_stmt 1
	addl	$1, -2256(%rbp)	#, jj
.L96:
	.loc 1 557 0 is_stmt 0 discriminator 1
	cmpl	$3, -2256(%rbp)	#, jj
	jg	.L107	#,
	.loc 1 557 0 discriminator 2
	cmpl	$0, -2232(%rbp)	#, lossless_qpprime
	je	.L108	#,
.L107:
	.loc 1 593 0 is_stmt 1
	movl	$0, -2264(%rbp)	#, j
	jmp	.L109	#
.L112:
	.loc 1 594 0
	movl	$0, -2268(%rbp)	#, i
	jmp	.L110	#
.L111:
	.loc 1 595 0 discriminator 2
	movl	-2264(%rbp), %eax	# j, tmp808
	cltq
	movl	-2268(%rbp), %edx	# i, tmp810
	movslq	%edx, %rdx	# tmp810, tmp809
	salq	$4, %rdx	#, tmp811
	addq	%rdx, %rax	# tmp811, tmp812
	movl	-1040(%rbp,%rax,4), %eax	# M0, D.11360
	movl	-2264(%rbp), %edx	# j, tmp814
	movslq	%edx, %rdx	# tmp814, tmp813
	movl	-2268(%rbp), %ecx	# i, tmp816
	movslq	%ecx, %rcx	# tmp816, tmp815
	salq	$2, %rcx	#, tmp817
	addq	%rcx, %rdx	# tmp817, tmp818
	movl	%eax, -2128(%rbp,%rdx,4)	# D.11360, M4
	.loc 1 594 0 discriminator 2
	addl	$1, -2268(%rbp)	#, i
.L110:
	.loc 1 594 0 is_stmt 0 discriminator 1
	cmpl	$3, -2268(%rbp)	#, i
	jle	.L111	#,
	.loc 1 593 0 is_stmt 1
	addl	$1, -2264(%rbp)	#, j
.L109:
	.loc 1 593 0 is_stmt 0 discriminator 1
	cmpl	$3, -2264(%rbp)	#, j
	jle	.L112	#,
	.loc 1 597 0 is_stmt 1
	movl	$0, -2264(%rbp)	#, j
	jmp	.L113	#
.L117:
	.loc 1 599 0
	movl	$0, -2268(%rbp)	#, i
	jmp	.L114	#
.L115:
	.loc 1 601 0 discriminator 2
	movl	$3, %eax	#, tmp822
	subl	-2268(%rbp), %eax	# i, tmp821
	movl	%eax, -2216(%rbp)	# tmp821, i1
	.loc 1 602 0 discriminator 2
	movl	-2264(%rbp), %eax	# j, tmp824
	cltq
	movl	-2268(%rbp), %edx	# i, tmp826
	movslq	%edx, %rdx	# tmp826, tmp825
	salq	$2, %rdx	#, tmp827
	addq	%rdx, %rax	# tmp827, tmp828
	movl	-2128(%rbp,%rax,4), %edx	# M4, D.11360
	movl	-2264(%rbp), %eax	# j, tmp830
	cltq
	movl	-2216(%rbp), %ecx	# i1, tmp832
	movslq	%ecx, %rcx	# tmp832, tmp831
	salq	$2, %rcx	#, tmp833
	addq	%rcx, %rax	# tmp833, tmp834
	movl	-2128(%rbp,%rax,4), %eax	# M4, D.11360
	addl	%eax, %edx	# D.11360, D.11360
	movl	-2268(%rbp), %eax	# i, tmp836
	cltq
	movl	%edx, -2160(%rbp,%rax,4)	# D.11360, M5
	.loc 1 603 0 discriminator 2
	movl	-2264(%rbp), %eax	# j, tmp838
	cltq
	movl	-2268(%rbp), %edx	# i, tmp840
	movslq	%edx, %rdx	# tmp840, tmp839
	salq	$2, %rdx	#, tmp841
	addq	%rdx, %rax	# tmp841, tmp842
	movl	-2128(%rbp,%rax,4), %edx	# M4, D.11360
	movl	-2264(%rbp), %eax	# j, tmp844
	cltq
	movl	-2216(%rbp), %ecx	# i1, tmp846
	movslq	%ecx, %rcx	# tmp846, tmp845
	salq	$2, %rcx	#, tmp847
	addq	%rcx, %rax	# tmp847, tmp848
	movl	-2128(%rbp,%rax,4), %eax	# M4, D.11360
	subl	%eax, %edx	# D.11360, D.11360
	movl	-2216(%rbp), %eax	# i1, tmp850
	cltq
	movl	%edx, -2160(%rbp,%rax,4)	# D.11360, M5
	.loc 1 599 0 discriminator 2
	addl	$1, -2268(%rbp)	#, i
.L114:
	.loc 1 599 0 is_stmt 0 discriminator 1
	cmpl	$1, -2268(%rbp)	#, i
	jle	.L115	#,
	.loc 1 605 0 is_stmt 1
	movl	-2160(%rbp), %edx	# M5, D.11360
	movl	-2156(%rbp), %eax	# M5, D.11360
	addl	%eax, %edx	# D.11360, D.11360
	movl	-2264(%rbp), %eax	# j, tmp852
	cltq
	movl	%edx, -2128(%rbp,%rax,4)	# D.11360, M4
	.loc 1 606 0
	movl	-2160(%rbp), %edx	# M5, D.11360
	movl	-2156(%rbp), %eax	# M5, D.11360
	subl	%eax, %edx	# D.11360, D.11360
	movl	-2264(%rbp), %eax	# j, tmp854
	cltq
	addq	$8, %rax	#, tmp855
	movl	%edx, -2128(%rbp,%rax,4)	# D.11360, M4
	.loc 1 607 0
	movl	-2148(%rbp), %edx	# M5, D.11360
	movl	-2152(%rbp), %eax	# M5, D.11360
	addl	%eax, %edx	# D.11360, D.11360
	movl	-2264(%rbp), %eax	# j, tmp857
	cltq
	addq	$4, %rax	#, tmp858
	movl	%edx, -2128(%rbp,%rax,4)	# D.11360, M4
	.loc 1 608 0
	movl	-2148(%rbp), %edx	# M5, D.11360
	movl	-2152(%rbp), %eax	# M5, D.11360
	subl	%eax, %edx	# D.11360, D.11360
	movl	-2264(%rbp), %eax	# j, tmp860
	cltq
	addq	$12, %rax	#, tmp861
	movl	%edx, -2128(%rbp,%rax,4)	# D.11360, M4
	.loc 1 597 0
	addl	$1, -2264(%rbp)	#, j
.L113:
	.loc 1 597 0 is_stmt 0 discriminator 1
	cmpl	$3, -2264(%rbp)	#, j
	jg	.L116	#,
	.loc 1 597 0 discriminator 2
	cmpl	$0, -2232(%rbp)	#, lossless_qpprime
	je	.L117	#,
.L116:
	.loc 1 613 0 is_stmt 1
	movl	$0, -2268(%rbp)	#, i
	jmp	.L118	#
.L122:
	.loc 1 615 0
	movl	$0, -2264(%rbp)	#, j
	jmp	.L119	#
.L120:
	.loc 1 617 0 discriminator 2
	movl	$3, %eax	#, tmp865
	subl	-2264(%rbp), %eax	# j, tmp864
	movl	%eax, -2212(%rbp)	# tmp864, j1
	.loc 1 618 0 discriminator 2
	movl	-2264(%rbp), %eax	# j, tmp867
	cltq
	movl	-2268(%rbp), %edx	# i, tmp869
	movslq	%edx, %rdx	# tmp869, tmp868
	salq	$2, %rdx	#, tmp870
	addq	%rdx, %rax	# tmp870, tmp871
	movl	-2128(%rbp,%rax,4), %edx	# M4, D.11360
	movl	-2212(%rbp), %eax	# j1, tmp873
	cltq
	movl	-2268(%rbp), %ecx	# i, tmp875
	movslq	%ecx, %rcx	# tmp875, tmp874
	salq	$2, %rcx	#, tmp876
	addq	%rcx, %rax	# tmp876, tmp877
	movl	-2128(%rbp,%rax,4), %eax	# M4, D.11360
	addl	%eax, %edx	# D.11360, D.11360
	movl	-2264(%rbp), %eax	# j, tmp879
	cltq
	movl	%edx, -2160(%rbp,%rax,4)	# D.11360, M5
	.loc 1 619 0 discriminator 2
	movl	-2264(%rbp), %eax	# j, tmp881
	cltq
	movl	-2268(%rbp), %edx	# i, tmp883
	movslq	%edx, %rdx	# tmp883, tmp882
	salq	$2, %rdx	#, tmp884
	addq	%rdx, %rax	# tmp884, tmp885
	movl	-2128(%rbp,%rax,4), %edx	# M4, D.11360
	movl	-2212(%rbp), %eax	# j1, tmp887
	cltq
	movl	-2268(%rbp), %ecx	# i, tmp889
	movslq	%ecx, %rcx	# tmp889, tmp888
	salq	$2, %rcx	#, tmp890
	addq	%rcx, %rax	# tmp890, tmp891
	movl	-2128(%rbp,%rax,4), %eax	# M4, D.11360
	subl	%eax, %edx	# D.11360, D.11360
	movl	-2212(%rbp), %eax	# j1, tmp893
	cltq
	movl	%edx, -2160(%rbp,%rax,4)	# D.11360, M5
	.loc 1 615 0 discriminator 2
	addl	$1, -2264(%rbp)	#, j
.L119:
	.loc 1 615 0 is_stmt 0 discriminator 1
	cmpl	$1, -2264(%rbp)	#, j
	jle	.L120	#,
	.loc 1 621 0 is_stmt 1
	movl	-2160(%rbp), %edx	# M5, D.11360
	movl	-2156(%rbp), %eax	# M5, D.11360
	addl	%edx, %eax	# D.11360, D.11360
	sarl	%eax	# D.11360
	movl	%eax, %edx	# D.11360, D.11360
	movl	-2268(%rbp), %eax	# i, tmp895
	cltq
	salq	$4, %rax	#, tmp896
	leaq	-16(%rbp), %rbx	#, tmp1575
	addq	%rbx, %rax	# tmp1575, tmp897
	subq	$2112, %rax	#, tmp898
	movl	%edx, (%rax)	# D.11360, M4
	.loc 1 622 0
	movl	-2160(%rbp), %edx	# M5, D.11360
	movl	-2156(%rbp), %eax	# M5, D.11360
	subl	%eax, %edx	# D.11360, D.11360
	movl	%edx, %eax	# D.11360, D.11360
	sarl	%eax	# D.11360
	movl	%eax, %edx	# D.11360, D.11360
	movl	-2268(%rbp), %eax	# i, tmp900
	cltq
	salq	$4, %rax	#, tmp901
	leaq	-16(%rbp), %rbx	#, tmp1578
	addq	%rbx, %rax	# tmp1578, tmp902
	subq	$2104, %rax	#, tmp903
	movl	%edx, (%rax)	# D.11360, M4
	.loc 1 623 0
	movl	-2148(%rbp), %edx	# M5, D.11360
	movl	-2152(%rbp), %eax	# M5, D.11360
	addl	%edx, %eax	# D.11360, D.11360
	sarl	%eax	# D.11360
	movl	%eax, %edx	# D.11360, D.11360
	movl	-2268(%rbp), %eax	# i, tmp905
	cltq
	salq	$4, %rax	#, tmp906
	leaq	-16(%rbp), %rbx	#, tmp1580
	addq	%rbx, %rax	# tmp1580, tmp907
	subq	$2108, %rax	#, tmp908
	movl	%edx, (%rax)	# D.11360, M4
	.loc 1 624 0
	movl	-2148(%rbp), %edx	# M5, D.11360
	movl	-2152(%rbp), %eax	# M5, D.11360
	subl	%eax, %edx	# D.11360, D.11360
	movl	%edx, %eax	# D.11360, D.11360
	sarl	%eax	# D.11360
	movl	%eax, %edx	# D.11360, D.11360
	movl	-2268(%rbp), %eax	# i, tmp910
	cltq
	salq	$4, %rax	#, tmp911
	leaq	-16(%rbp), %rbx	#, tmp1583
	addq	%rbx, %rax	# tmp1583, tmp912
	subq	$2100, %rax	#, tmp913
	movl	%edx, (%rax)	# D.11360, M4
	.loc 1 613 0
	addl	$1, -2268(%rbp)	#, i
.L118:
	.loc 1 613 0 is_stmt 0 discriminator 1
	cmpl	$3, -2268(%rbp)	#, i
	jg	.L121	#,
	.loc 1 613 0 discriminator 2
	cmpl	$0, -2232(%rbp)	#, lossless_qpprime
	je	.L122	#,
.L121:
	.loc 1 629 0 is_stmt 1
	movl	$-1, -2252(%rbp)	#, run
	.loc 1 630 0
	movl	$0, -2248(%rbp)	#, scan_pos
	.loc 1 632 0
	movl	$0, -2244(%rbp)	#, coeff_ctr
	jmp	.L123	#
.L132:
	.loc 1 634 0
	movq	img(%rip), %rax	# img, img.155
	movl	72444(%rax), %eax	# img.155_241->field_picture, D.11367
	testl	%eax, %eax	# D.11367
	jne	.L124	#,
	.loc 1 634 0 is_stmt 0 discriminator 1
	movl	mb_adaptive(%rip), %eax	# mb_adaptive, mb_adaptive.156
	testl	%eax, %eax	# mb_adaptive.156
	je	.L125	#,
	movq	img(%rip), %rax	# img, img.157
	movl	72008(%rax), %eax	# img.157_244->field_mode, D.11360
	testl	%eax, %eax	# D.11360
	je	.L125	#,
.L124:
	.loc 1 636 0 is_stmt 1
	movl	-2244(%rbp), %eax	# coeff_ctr, tmp915
	cltq
	movzbl	FIELD_SCAN(%rax,%rax), %eax	# FIELD_SCAN, D.11368
	movzbl	%al, %eax	# D.11368, tmp916
	movl	%eax, -2268(%rbp)	# tmp916, i
	.loc 1 637 0
	movl	-2244(%rbp), %eax	# coeff_ctr, tmp918
	cltq
	movzbl	FIELD_SCAN+1(%rax,%rax), %eax	# FIELD_SCAN, D.11368
	movzbl	%al, %eax	# D.11368, tmp919
	movl	%eax, -2264(%rbp)	# tmp919, j
	jmp	.L126	#
.L125:
	.loc 1 641 0
	movl	-2244(%rbp), %eax	# coeff_ctr, tmp921
	cltq
	movzbl	SNGL_SCAN(%rax,%rax), %eax	# SNGL_SCAN, D.11368
	movzbl	%al, %eax	# D.11368, tmp922
	movl	%eax, -2268(%rbp)	# tmp922, i
	.loc 1 642 0
	movl	-2244(%rbp), %eax	# coeff_ctr, tmp924
	cltq
	movzbl	SNGL_SCAN+1(%rax,%rax), %eax	# SNGL_SCAN, D.11368
	movzbl	%al, %eax	# D.11368, tmp925
	movl	%eax, -2264(%rbp)	# tmp925, j
.L126:
	.loc 1 645 0
	addl	$1, -2252(%rbp)	#, run
	.loc 1 647 0
	cmpl	$0, -2232(%rbp)	#, lossless_qpprime
	je	.L127	#,
	.loc 1 648 0
	movl	-2264(%rbp), %eax	# j, tmp927
	cltq
	movl	-2268(%rbp), %edx	# i, tmp929
	movslq	%edx, %rdx	# tmp929, tmp928
	salq	$2, %rdx	#, tmp930
	addq	%rdx, %rax	# tmp930, tmp931
	movl	-2128(%rbp,%rax,4), %edx	# M4, D.11360
	movl	%edx, %eax	# D.11360, tmp932
	sarl	$31, %eax	#, tmp932
	xorl	%eax, %edx	# tmp932, tmp933
	movl	%edx, -2240(%rbp)	# tmp933, level
	subl	%eax, -2240(%rbp)	# tmp932, level
	jmp	.L128	#
.L127:
	.loc 1 650 0
	movl	-2264(%rbp), %eax	# j, tmp935
	cltq
	movl	-2268(%rbp), %edx	# i, tmp937
	movslq	%edx, %rdx	# tmp937, tmp936
	salq	$2, %rdx	#, tmp938
	addq	%rdx, %rax	# tmp938, tmp939
	movl	-2128(%rbp,%rax,4), %eax	# M4, D.11360
	cltd
	xorl	%edx, %eax	# tmp940, D.11360
	subl	%edx, %eax	# tmp940, D.11360
	movl	-2224(%rbp), %edx	# qp_rem, tmp942
	movslq	%edx, %rdx	# tmp942, tmp941
	salq	$6, %rdx	#, tmp943
	addq	$LevelScale4x4Luma_Intra, %rdx	#, tmp944
	movl	(%rdx), %edx	# LevelScale4x4Luma_Intra, D.11360
	imull	%edx, %eax	# D.11360, D.11360
	movl	-2228(%rbp), %edx	# qp_per, tmp946
	movslq	%edx, %rdx	# tmp946, tmp945
	salq	$6, %rdx	#, tmp947
	addq	$LevelOffset4x4Luma_Intra, %rdx	#, tmp948
	movl	(%rdx), %edx	# LevelOffset4x4Luma_Intra, D.11360
	addl	%edx, %edx	# D.11360
	addl	%eax, %edx	# D.11360, D.11360
	movl	-2220(%rbp), %eax	# q_bits, tmp949
	addl	$1, %eax	#, D.11360
	movl	%eax, %ecx	# D.11360, tmp1586
	sarl	%cl, %edx	# tmp1586, tmp950
	movl	%edx, %eax	# tmp950, tmp950
	movl	%eax, -2240(%rbp)	# tmp950, level
.L128:
	.loc 1 653 0
	movq	input(%rip), %rax	# input, input.158
	movl	2356(%rax), %eax	# input.158_266->symbol_mode, D.11360
	testl	%eax, %eax	# D.11360
	jne	.L129	#,
	.loc 1 653 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.159
	movl	40(%rax), %eax	# img.159_268->qp, D.11360
	cmpl	$9, %eax	#, D.11360
	jg	.L129	#,
	.loc 1 655 0 is_stmt 1
	cmpl	$2063, -2240(%rbp)	#, level
	jle	.L129	#,
	.loc 1 657 0
	movl	$2063, -2240(%rbp)	#, level
.L129:
	.loc 1 661 0
	cmpl	$0, -2240(%rbp)	#, level
	je	.L130	#,
	.loc 1 663 0
	movl	-2248(%rbp), %eax	# scan_pos, tmp951
	cltq
	leaq	0(,%rax,4), %rdx	#, D.11361
	movq	-2192(%rbp), %rax	# DCLevel, tmp952
	leaq	(%rdx,%rax), %rbx	#, D.11369
	movl	-2264(%rbp), %eax	# j, tmp954
	cltq
	movl	-2268(%rbp), %edx	# i, tmp956
	movslq	%edx, %rdx	# tmp956, tmp955
	salq	$2, %rdx	#, tmp957
	addq	%rdx, %rax	# tmp957, tmp958
	movl	-2128(%rbp,%rax,4), %edx	# M4, D.11360
	movl	-2240(%rbp), %eax	# level, tmp959
	movl	%edx, %esi	# D.11360,
	movl	%eax, %edi	# tmp959,
	call	sign	#
	movl	%eax, (%rbx)	# D.11360, *_273
	.loc 1 664 0
	movl	-2248(%rbp), %eax	# scan_pos, tmp960
	cltq
	leaq	0(,%rax,4), %rdx	#, D.11361
	movq	-2184(%rbp), %rax	# DCRun, tmp961
	addq	%rax, %rdx	# tmp961, D.11369
	movl	-2252(%rbp), %eax	# run, tmp962
	movl	%eax, (%rdx)	# tmp962, *_278
	.loc 1 665 0
	addl	$1, -2248(%rbp)	#, scan_pos
	.loc 1 666 0
	movl	$-1, -2252(%rbp)	#, run
.L130:
	.loc 1 668 0
	cmpl	$0, -2232(%rbp)	#, lossless_qpprime
	jne	.L131	#,
	.loc 1 669 0
	movl	-2264(%rbp), %eax	# j, tmp964
	cltq
	movl	-2268(%rbp), %edx	# i, tmp966
	movslq	%edx, %rdx	# tmp966, tmp965
	salq	$2, %rdx	#, tmp967
	addq	%rdx, %rax	# tmp967, tmp968
	movl	-2128(%rbp,%rax,4), %edx	# M4, D.11360
	movl	-2240(%rbp), %eax	# level, tmp969
	movl	%edx, %esi	# D.11360,
	movl	%eax, %edi	# tmp969,
	call	sign	#
	movl	-2264(%rbp), %edx	# j, tmp971
	movslq	%edx, %rdx	# tmp971, tmp970
	movl	-2268(%rbp), %ecx	# i, tmp973
	movslq	%ecx, %rcx	# tmp973, tmp972
	salq	$2, %rcx	#, tmp974
	addq	%rcx, %rdx	# tmp974, tmp975
	movl	%eax, -2128(%rbp,%rdx,4)	# D.11360, M4
.L131:
	.loc 1 632 0
	addl	$1, -2244(%rbp)	#, coeff_ctr
.L123:
	.loc 1 632 0 is_stmt 0 discriminator 1
	cmpl	$15, -2244(%rbp)	#, coeff_ctr
	jle	.L132	#,
	.loc 1 671 0 is_stmt 1
	movl	-2248(%rbp), %eax	# scan_pos, tmp976
	cltq
	leaq	0(,%rax,4), %rdx	#, D.11361
	movq	-2192(%rbp), %rax	# DCLevel, tmp977
	addq	%rdx, %rax	# D.11361, D.11369
	movl	$0, (%rax)	#, *_286
	.loc 1 674 0
	movl	$0, -2264(%rbp)	#, j
	jmp	.L133	#
.L139:
	.loc 1 676 0
	movl	$0, -2268(%rbp)	#, i
	jmp	.L134	#
.L135:
	.loc 1 677 0 discriminator 2
	movl	-2264(%rbp), %eax	# j, tmp979
	cltq
	movl	-2268(%rbp), %edx	# i, tmp981
	movslq	%edx, %rdx	# tmp981, tmp980
	salq	$2, %rdx	#, tmp982
	addq	%rdx, %rax	# tmp982, tmp983
	movl	-2128(%rbp,%rax,4), %edx	# M4, D.11360
	movl	-2268(%rbp), %eax	# i, tmp985
	cltq
	movl	%edx, -2160(%rbp,%rax,4)	# D.11360, M5
	.loc 1 676 0 discriminator 2
	addl	$1, -2268(%rbp)	#, i
.L134:
	.loc 1 676 0 is_stmt 0 discriminator 1
	cmpl	$3, -2268(%rbp)	#, i
	jle	.L135	#,
	.loc 1 679 0 is_stmt 1
	movl	-2160(%rbp), %edx	# M5, D.11360
	movl	-2152(%rbp), %eax	# M5, D.11360
	addl	%edx, %eax	# D.11360, D.11360
	movl	%eax, -2144(%rbp)	# D.11360, M6
	.loc 1 680 0
	movl	-2160(%rbp), %edx	# M5, D.11360
	movl	-2152(%rbp), %eax	# M5, D.11360
	subl	%eax, %edx	# D.11360, D.11360
	movl	%edx, %eax	# D.11360, D.11360
	movl	%eax, -2140(%rbp)	# D.11360, M6
	.loc 1 681 0
	movl	-2156(%rbp), %edx	# M5, D.11360
	movl	-2148(%rbp), %eax	# M5, D.11360
	subl	%eax, %edx	# D.11360, D.11360
	movl	%edx, %eax	# D.11360, D.11360
	movl	%eax, -2136(%rbp)	# D.11360, M6
	.loc 1 682 0
	movl	-2156(%rbp), %edx	# M5, D.11360
	movl	-2148(%rbp), %eax	# M5, D.11360
	addl	%edx, %eax	# D.11360, D.11360
	movl	%eax, -2132(%rbp)	# D.11360, M6
	.loc 1 684 0
	movl	$0, -2268(%rbp)	#, i
	jmp	.L136	#
.L137:
	.loc 1 686 0 discriminator 2
	movl	$3, %eax	#, tmp989
	subl	-2268(%rbp), %eax	# i, tmp988
	movl	%eax, -2216(%rbp)	# tmp988, i1
	.loc 1 687 0 discriminator 2
	movl	-2268(%rbp), %eax	# i, tmp991
	cltq
	movl	-2144(%rbp,%rax,4), %edx	# M6, D.11360
	movl	-2216(%rbp), %eax	# i1, tmp993
	cltq
	movl	-2144(%rbp,%rax,4), %eax	# M6, D.11360
	addl	%eax, %edx	# D.11360, D.11360
	movl	-2264(%rbp), %eax	# j, tmp995
	cltq
	movl	-2268(%rbp), %ecx	# i, tmp997
	movslq	%ecx, %rcx	# tmp997, tmp996
	salq	$2, %rcx	#, tmp998
	addq	%rcx, %rax	# tmp998, tmp999
	movl	%edx, -2128(%rbp,%rax,4)	# D.11360, M4
	.loc 1 688 0 discriminator 2
	movl	-2268(%rbp), %eax	# i, tmp1001
	cltq
	movl	-2144(%rbp,%rax,4), %edx	# M6, D.11360
	movl	-2216(%rbp), %eax	# i1, tmp1003
	cltq
	movl	-2144(%rbp,%rax,4), %eax	# M6, D.11360
	subl	%eax, %edx	# D.11360, D.11360
	movl	-2264(%rbp), %eax	# j, tmp1005
	cltq
	movl	-2216(%rbp), %ecx	# i1, tmp1007
	movslq	%ecx, %rcx	# tmp1007, tmp1006
	salq	$2, %rcx	#, tmp1008
	addq	%rcx, %rax	# tmp1008, tmp1009
	movl	%edx, -2128(%rbp,%rax,4)	# D.11360, M4
	.loc 1 684 0 discriminator 2
	addl	$1, -2268(%rbp)	#, i
.L136:
	.loc 1 684 0 is_stmt 0 discriminator 1
	cmpl	$1, -2268(%rbp)	#, i
	jle	.L137	#,
	.loc 1 674 0 is_stmt 1
	addl	$1, -2264(%rbp)	#, j
.L133:
	.loc 1 674 0 is_stmt 0 discriminator 1
	cmpl	$3, -2264(%rbp)	#, j
	jg	.L138	#,
	.loc 1 674 0 discriminator 2
	cmpl	$0, -2232(%rbp)	#, lossless_qpprime
	je	.L139	#,
.L138:
	.loc 1 692 0 is_stmt 1
	movl	$0, -2268(%rbp)	#, i
	jmp	.L140	#
.L148:
	.loc 1 694 0
	movl	$0, -2264(%rbp)	#, j
	jmp	.L141	#
.L142:
	.loc 1 695 0 discriminator 2
	movl	-2264(%rbp), %eax	# j, tmp1011
	cltq
	movl	-2268(%rbp), %edx	# i, tmp1013
	movslq	%edx, %rdx	# tmp1013, tmp1012
	salq	$2, %rdx	#, tmp1014
	addq	%rdx, %rax	# tmp1014, tmp1015
	movl	-2128(%rbp,%rax,4), %edx	# M4, D.11360
	movl	-2264(%rbp), %eax	# j, tmp1017
	cltq
	movl	%edx, -2160(%rbp,%rax,4)	# D.11360, M5
	.loc 1 694 0 discriminator 2
	addl	$1, -2264(%rbp)	#, j
.L141:
	.loc 1 694 0 is_stmt 0 discriminator 1
	cmpl	$3, -2264(%rbp)	#, j
	jle	.L142	#,
	.loc 1 697 0 is_stmt 1
	movl	-2160(%rbp), %edx	# M5, D.11360
	movl	-2152(%rbp), %eax	# M5, D.11360
	addl	%edx, %eax	# D.11360, D.11360
	movl	%eax, -2144(%rbp)	# D.11360, M6
	.loc 1 698 0
	movl	-2160(%rbp), %edx	# M5, D.11360
	movl	-2152(%rbp), %eax	# M5, D.11360
	subl	%eax, %edx	# D.11360, D.11360
	movl	%edx, %eax	# D.11360, D.11360
	movl	%eax, -2140(%rbp)	# D.11360, M6
	.loc 1 699 0
	movl	-2156(%rbp), %edx	# M5, D.11360
	movl	-2148(%rbp), %eax	# M5, D.11360
	subl	%eax, %edx	# D.11360, D.11360
	movl	%edx, %eax	# D.11360, D.11360
	movl	%eax, -2136(%rbp)	# D.11360, M6
	.loc 1 700 0
	movl	-2156(%rbp), %edx	# M5, D.11360
	movl	-2148(%rbp), %eax	# M5, D.11360
	addl	%edx, %eax	# D.11360, D.11360
	movl	%eax, -2132(%rbp)	# D.11360, M6
	.loc 1 702 0
	movl	$0, -2264(%rbp)	#, j
	jmp	.L143	#
.L146:
	.loc 1 704 0
	movl	$3, %eax	#, tmp1021
	subl	-2264(%rbp), %eax	# j, tmp1020
	movl	%eax, -2212(%rbp)	# tmp1020, j1
	.loc 1 706 0
	cmpl	$5, -2228(%rbp)	#, qp_per
	jg	.L144	#,
	.loc 1 708 0
	movl	-2264(%rbp), %eax	# j, tmp1023
	cltq
	movl	-2144(%rbp,%rax,4), %edx	# M6, D.11360
	movl	-2212(%rbp), %eax	# j1, tmp1025
	cltq
	movl	-2144(%rbp,%rax,4), %eax	# M6, D.11360
	addl	%eax, %edx	# D.11360, D.11360
	movl	-2224(%rbp), %eax	# qp_rem, tmp1027
	cltq
	salq	$6, %rax	#, tmp1028
	addq	$InvLevelScale4x4Luma_Intra, %rax	#, tmp1029
	movl	(%rax), %eax	# InvLevelScale4x4Luma_Intra, D.11360
	imull	%eax, %edx	# D.11360, D.11360
	movl	$5, %eax	#, tmp1030
	subl	-2228(%rbp), %eax	# qp_per, D.11360
	movl	$1, %esi	#, tmp1031
	movl	%eax, %ecx	# D.11360, tmp1592
	sall	%cl, %esi	# tmp1592, D.11360
	movl	%esi, %eax	# D.11360, D.11360
	addl	%eax, %edx	# D.11360, D.11360
	movl	$6, %eax	#, tmp1032
	subl	-2228(%rbp), %eax	# qp_per, D.11360
	movl	%eax, %ecx	# D.11360, tmp1593
	sarl	%cl, %edx	# tmp1593, D.11360
	movl	-2264(%rbp), %eax	# j, tmp1034
	cltq
	movl	-2268(%rbp), %ecx	# i, tmp1036
	movslq	%ecx, %rcx	# tmp1036, tmp1035
	salq	$4, %rcx	#, tmp1037
	addq	%rcx, %rax	# tmp1037, tmp1038
	movl	%edx, -1040(%rbp,%rax,4)	# D.11360, M0
	.loc 1 709 0
	movl	-2264(%rbp), %eax	# j, tmp1040
	cltq
	movl	-2144(%rbp,%rax,4), %edx	# M6, D.11360
	movl	-2212(%rbp), %eax	# j1, tmp1042
	cltq
	movl	-2144(%rbp,%rax,4), %eax	# M6, D.11360
	subl	%eax, %edx	# D.11360, D.11360
	movl	-2224(%rbp), %eax	# qp_rem, tmp1044
	cltq
	salq	$6, %rax	#, tmp1045
	addq	$InvLevelScale4x4Luma_Intra, %rax	#, tmp1046
	movl	(%rax), %eax	# InvLevelScale4x4Luma_Intra, D.11360
	imull	%eax, %edx	# D.11360, D.11360
	movl	$5, %eax	#, tmp1047
	subl	-2228(%rbp), %eax	# qp_per, D.11360
	movl	$1, %esi	#, tmp1048
	movl	%eax, %ecx	# D.11360, tmp1595
	sall	%cl, %esi	# tmp1595, D.11360
	movl	%esi, %eax	# D.11360, D.11360
	addl	%eax, %edx	# D.11360, D.11360
	movl	$6, %eax	#, tmp1049
	subl	-2228(%rbp), %eax	# qp_per, D.11360
	movl	%eax, %ecx	# D.11360, tmp1596
	sarl	%cl, %edx	# tmp1596, D.11360
	movl	-2212(%rbp), %eax	# j1, tmp1051
	cltq
	movl	-2268(%rbp), %ecx	# i, tmp1053
	movslq	%ecx, %rcx	# tmp1053, tmp1052
	salq	$4, %rcx	#, tmp1054
	addq	%rcx, %rax	# tmp1054, tmp1055
	movl	%edx, -1040(%rbp,%rax,4)	# D.11360, M0
	jmp	.L145	#
.L144:
	.loc 1 713 0
	movl	-2264(%rbp), %eax	# j, tmp1057
	cltq
	movl	-2144(%rbp,%rax,4), %edx	# M6, D.11360
	movl	-2212(%rbp), %eax	# j1, tmp1059
	cltq
	movl	-2144(%rbp,%rax,4), %eax	# M6, D.11360
	addl	%eax, %edx	# D.11360, D.11360
	movl	-2224(%rbp), %eax	# qp_rem, tmp1061
	cltq
	salq	$6, %rax	#, tmp1062
	addq	$InvLevelScale4x4Luma_Intra, %rax	#, tmp1063
	movl	(%rax), %eax	# InvLevelScale4x4Luma_Intra, D.11360
	imull	%eax, %edx	# D.11360, D.11360
	movl	-2228(%rbp), %eax	# qp_per, tmp1064
	subl	$6, %eax	#, D.11360
	movl	%eax, %ecx	# D.11360, tmp1597
	sall	%cl, %edx	# tmp1597, D.11360
	movl	-2264(%rbp), %eax	# j, tmp1066
	cltq
	movl	-2268(%rbp), %ecx	# i, tmp1068
	movslq	%ecx, %rcx	# tmp1068, tmp1067
	salq	$4, %rcx	#, tmp1069
	addq	%rcx, %rax	# tmp1069, tmp1070
	movl	%edx, -1040(%rbp,%rax,4)	# D.11360, M0
	.loc 1 714 0
	movl	-2264(%rbp), %eax	# j, tmp1072
	cltq
	movl	-2144(%rbp,%rax,4), %edx	# M6, D.11360
	movl	-2212(%rbp), %eax	# j1, tmp1074
	cltq
	movl	-2144(%rbp,%rax,4), %eax	# M6, D.11360
	subl	%eax, %edx	# D.11360, D.11360
	movl	-2224(%rbp), %eax	# qp_rem, tmp1076
	cltq
	salq	$6, %rax	#, tmp1077
	addq	$InvLevelScale4x4Luma_Intra, %rax	#, tmp1078
	movl	(%rax), %eax	# InvLevelScale4x4Luma_Intra, D.11360
	imull	%eax, %edx	# D.11360, D.11360
	movl	-2228(%rbp), %eax	# qp_per, tmp1079
	subl	$6, %eax	#, D.11360
	movl	%eax, %ecx	# D.11360, tmp1598
	sall	%cl, %edx	# tmp1598, D.11360
	movl	-2212(%rbp), %eax	# j1, tmp1081
	cltq
	movl	-2268(%rbp), %ecx	# i, tmp1083
	movslq	%ecx, %rcx	# tmp1083, tmp1082
	salq	$4, %rcx	#, tmp1084
	addq	%rcx, %rax	# tmp1084, tmp1085
	movl	%edx, -1040(%rbp,%rax,4)	# D.11360, M0
.L145:
	.loc 1 702 0
	addl	$1, -2264(%rbp)	#, j
.L143:
	.loc 1 702 0 is_stmt 0 discriminator 1
	cmpl	$1, -2264(%rbp)	#, j
	jle	.L146	#,
	.loc 1 692 0 is_stmt 1
	addl	$1, -2268(%rbp)	#, i
.L140:
	.loc 1 692 0 is_stmt 0 discriminator 1
	cmpl	$3, -2268(%rbp)	#, i
	jg	.L147	#,
	.loc 1 692 0 discriminator 2
	cmpl	$0, -2232(%rbp)	#, lossless_qpprime
	je	.L148	#,
.L147:
	.loc 1 720 0 is_stmt 1
	movl	$0, -2256(%rbp)	#, jj
	jmp	.L149	#
.L176:
	.loc 1 722 0
	movl	$0, -2260(%rbp)	#, ii
	jmp	.L150	#
.L175:
	.loc 1 724 0
	movl	$-1, -2252(%rbp)	#, run
	.loc 1 725 0
	movl	$0, -2248(%rbp)	#, scan_pos
	.loc 1 726 0
	movl	-2256(%rbp), %eax	# jj, tmp1086
	movl	%eax, %edx	# tmp1086, tmp1087
	shrl	$31, %edx	#, tmp1087
	addl	%edx, %eax	# tmp1087, tmp1088
	sarl	%eax	# tmp1089
	leal	(%rax,%rax), %edx	#, D.11360
	movl	-2260(%rbp), %eax	# ii, tmp1090
	movl	%eax, %ecx	# tmp1090, tmp1091
	shrl	$31, %ecx	#, tmp1091
	addl	%ecx, %eax	# tmp1091, tmp1092
	sarl	%eax	# tmp1093
	addl	%edx, %eax	# D.11360, tmp1094
	movl	%eax, -2208(%rbp)	# tmp1094, b8
	.loc 1 727 0
	movl	-2256(%rbp), %eax	# jj, tmp1095
	cltd
	shrl	$31, %edx	#, tmp1097
	addl	%edx, %eax	# tmp1097, tmp1098
	andl	$1, %eax	#, tmp1099
	subl	%edx, %eax	# tmp1097, tmp1100
	leal	(%rax,%rax), %ecx	#, D.11360
	movl	-2260(%rbp), %eax	# ii, tmp1101
	cltd
	shrl	$31, %edx	#, tmp1103
	addl	%edx, %eax	# tmp1103, tmp1104
	andl	$1, %eax	#, tmp1105
	subl	%edx, %eax	# tmp1103, tmp1106
	addl	%ecx, %eax	# D.11360, tmp1107
	movl	%eax, -2204(%rbp)	# tmp1107, b4
	.loc 1 728 0
	movq	img(%rip), %rax	# img, img.160
	movq	14136(%rax), %rax	# img.160_379->cofAC, D.11370
	movl	-2208(%rbp), %edx	# b8, tmp1108
	movslq	%edx, %rdx	# tmp1108, D.11361
	salq	$3, %rdx	#, D.11361
	addq	%rdx, %rax	# D.11361, D.11370
	movq	(%rax), %rax	# *_383, D.11362
	movl	-2204(%rbp), %edx	# b4, tmp1109
	movslq	%edx, %rdx	# tmp1109, D.11361
	salq	$3, %rdx	#, D.11361
	addq	%rdx, %rax	# D.11361, D.11362
	movq	(%rax), %rax	# *_387, D.11363
	movq	(%rax), %rax	# *_388, tmp1110
	movq	%rax, -2176(%rbp)	# tmp1110, ACLevel
	.loc 1 729 0
	movq	img(%rip), %rax	# img, img.161
	movq	14136(%rax), %rax	# img.161_390->cofAC, D.11370
	movl	-2208(%rbp), %edx	# b8, tmp1111
	movslq	%edx, %rdx	# tmp1111, D.11361
	salq	$3, %rdx	#, D.11361
	addq	%rdx, %rax	# D.11361, D.11370
	movq	(%rax), %rax	# *_394, D.11362
	movl	-2204(%rbp), %edx	# b4, tmp1112
	movslq	%edx, %rdx	# tmp1112, D.11361
	salq	$3, %rdx	#, D.11361
	addq	%rdx, %rax	# D.11361, D.11362
	movq	(%rax), %rax	# *_398, D.11363
	movq	8(%rax), %rax	# MEM[(int * *)_399 + 8B], tmp1113
	movq	%rax, -2168(%rbp)	# tmp1113, ACRun
	.loc 1 731 0
	movl	$1, -2244(%rbp)	#, coeff_ctr
	jmp	.L151	#
.L160:
	.loc 1 734 0
	movq	img(%rip), %rax	# img, img.162
	movl	72444(%rax), %eax	# img.162_402->field_picture, D.11367
	testl	%eax, %eax	# D.11367
	jne	.L152	#,
	.loc 1 734 0 is_stmt 0 discriminator 1
	movl	mb_adaptive(%rip), %eax	# mb_adaptive, mb_adaptive.163
	testl	%eax, %eax	# mb_adaptive.163
	je	.L153	#,
	movq	img(%rip), %rax	# img, img.164
	movl	72008(%rax), %eax	# img.164_405->field_mode, D.11360
	testl	%eax, %eax	# D.11360
	je	.L153	#,
.L152:
	.loc 1 736 0 is_stmt 1
	movl	-2244(%rbp), %eax	# coeff_ctr, tmp1115
	cltq
	movzbl	FIELD_SCAN(%rax,%rax), %eax	# FIELD_SCAN, D.11368
	movzbl	%al, %eax	# D.11368, tmp1116
	movl	%eax, -2268(%rbp)	# tmp1116, i
	.loc 1 737 0
	movl	-2244(%rbp), %eax	# coeff_ctr, tmp1118
	cltq
	movzbl	FIELD_SCAN+1(%rax,%rax), %eax	# FIELD_SCAN, D.11368
	movzbl	%al, %eax	# D.11368, tmp1119
	movl	%eax, -2264(%rbp)	# tmp1119, j
	jmp	.L154	#
.L153:
	.loc 1 741 0
	movl	-2244(%rbp), %eax	# coeff_ctr, tmp1121
	cltq
	movzbl	SNGL_SCAN(%rax,%rax), %eax	# SNGL_SCAN, D.11368
	movzbl	%al, %eax	# D.11368, tmp1122
	movl	%eax, -2268(%rbp)	# tmp1122, i
	.loc 1 742 0
	movl	-2244(%rbp), %eax	# coeff_ctr, tmp1124
	cltq
	movzbl	SNGL_SCAN+1(%rax,%rax), %eax	# SNGL_SCAN, D.11368
	movzbl	%al, %eax	# D.11368, tmp1125
	movl	%eax, -2264(%rbp)	# tmp1125, j
.L154:
	.loc 1 744 0
	addl	$1, -2252(%rbp)	#, run
	.loc 1 746 0
	cmpl	$0, -2232(%rbp)	#, lossless_qpprime
	je	.L155	#,
	.loc 1 747 0
	movl	-2256(%rbp), %eax	# jj, tmp1127
	cltq
	movl	-2260(%rbp), %edx	# ii, tmp1129
	movslq	%edx, %rdx	# tmp1129, tmp1128
	movl	-2268(%rbp), %ecx	# i, tmp1131
	movslq	%ecx, %rcx	# tmp1131, tmp1130
	salq	$2, %rcx	#, tmp1132
	addq	%rdx, %rcx	# tmp1128, tmp1133
	movl	-2264(%rbp), %edx	# j, tmp1135
	movslq	%edx, %rdx	# tmp1135, tmp1134
	salq	$2, %rcx	#, tmp1136
	addq	%rcx, %rdx	# tmp1136, tmp1137
	salq	$2, %rdx	#, tmp1138
	addq	%rdx, %rax	# tmp1138, tmp1139
	movl	-1040(%rbp,%rax,4), %edx	# M0, D.11360
	movl	%edx, %eax	# D.11360, tmp1140
	sarl	$31, %eax	#, tmp1140
	xorl	%eax, %edx	# tmp1140, tmp1141
	movl	%edx, -2240(%rbp)	# tmp1141, level
	subl	%eax, -2240(%rbp)	# tmp1140, level
	jmp	.L156	#
.L155:
	.loc 1 749 0
	movl	-2256(%rbp), %eax	# jj, tmp1143
	cltq
	movl	-2260(%rbp), %edx	# ii, tmp1145
	movslq	%edx, %rdx	# tmp1145, tmp1144
	movl	-2268(%rbp), %ecx	# i, tmp1147
	movslq	%ecx, %rcx	# tmp1147, tmp1146
	salq	$2, %rcx	#, tmp1148
	addq	%rdx, %rcx	# tmp1144, tmp1149
	movl	-2264(%rbp), %edx	# j, tmp1151
	movslq	%edx, %rdx	# tmp1151, tmp1150
	salq	$2, %rcx	#, tmp1152
	addq	%rcx, %rdx	# tmp1152, tmp1153
	salq	$2, %rdx	#, tmp1154
	addq	%rdx, %rax	# tmp1154, tmp1155
	movl	-1040(%rbp,%rax,4), %eax	# M0, D.11360
	cltd
	xorl	%edx, %eax	# tmp1156, D.11360
	subl	%edx, %eax	# tmp1156, D.11360
	movl	-2264(%rbp), %edx	# j, tmp1158
	movslq	%edx, %rdx	# tmp1158, tmp1157
	movl	-2224(%rbp), %ecx	# qp_rem, tmp1160
	movslq	%ecx, %rsi	# tmp1160, tmp1159
	movl	-2268(%rbp), %ecx	# i, tmp1162
	movslq	%ecx, %rcx	# tmp1162, tmp1161
	salq	$2, %rsi	#, tmp1163
	addq	%rsi, %rcx	# tmp1163, tmp1164
	salq	$2, %rcx	#, tmp1165
	addq	%rcx, %rdx	# tmp1165, tmp1166
	movl	LevelScale4x4Luma_Intra(,%rdx,4), %edx	# LevelScale4x4Luma_Intra, D.11360
	imull	%eax, %edx	# D.11360, D.11360
	movl	-2264(%rbp), %eax	# j, tmp1168
	cltq
	movl	-2228(%rbp), %ecx	# qp_per, tmp1170
	movslq	%ecx, %rsi	# tmp1170, tmp1169
	movl	-2268(%rbp), %ecx	# i, tmp1172
	movslq	%ecx, %rcx	# tmp1172, tmp1171
	salq	$2, %rsi	#, tmp1173
	addq	%rsi, %rcx	# tmp1173, tmp1174
	salq	$2, %rcx	#, tmp1175
	addq	%rcx, %rax	# tmp1175, tmp1176
	movl	LevelOffset4x4Luma_Intra(,%rax,4), %eax	# LevelOffset4x4Luma_Intra, D.11360
	addl	%eax, %edx	# D.11360, D.11360
	movl	-2220(%rbp), %eax	# q_bits, tmp1177
	movl	%eax, %ecx	# tmp1177, tmp1603
	sarl	%cl, %edx	# tmp1603, tmp1178
	movl	%edx, %eax	# tmp1178, tmp1178
	movl	%eax, -2240(%rbp)	# tmp1178, level
.L156:
	.loc 1 752 0
	cmpl	$0, -2240(%rbp)	#, level
	je	.L157	#,
	.loc 1 754 0
	movl	$15, -2236(%rbp)	#, ac_coef
	.loc 1 755 0
	movl	-2248(%rbp), %eax	# scan_pos, tmp1179
	cltq
	leaq	0(,%rax,4), %rdx	#, D.11361
	movq	-2176(%rbp), %rax	# ACLevel, tmp1180
	leaq	(%rdx,%rax), %rbx	#, D.11369
	movl	-2256(%rbp), %eax	# jj, tmp1182
	cltq
	movl	-2260(%rbp), %edx	# ii, tmp1184
	movslq	%edx, %rdx	# tmp1184, tmp1183
	movl	-2268(%rbp), %ecx	# i, tmp1186
	movslq	%ecx, %rcx	# tmp1186, tmp1185
	salq	$2, %rcx	#, tmp1187
	addq	%rdx, %rcx	# tmp1183, tmp1188
	movl	-2264(%rbp), %edx	# j, tmp1190
	movslq	%edx, %rdx	# tmp1190, tmp1189
	salq	$2, %rcx	#, tmp1191
	addq	%rcx, %rdx	# tmp1191, tmp1192
	salq	$2, %rdx	#, tmp1193
	addq	%rdx, %rax	# tmp1193, tmp1194
	movl	-1040(%rbp,%rax,4), %edx	# M0, D.11360
	movl	-2240(%rbp), %eax	# level, tmp1195
	movl	%edx, %esi	# D.11360,
	movl	%eax, %edi	# tmp1195,
	call	sign	#
	movl	%eax, (%rbx)	# D.11360, *_428
	.loc 1 756 0
	movl	-2248(%rbp), %eax	# scan_pos, tmp1196
	cltq
	leaq	0(,%rax,4), %rdx	#, D.11361
	movq	-2168(%rbp), %rax	# ACRun, tmp1197
	addq	%rax, %rdx	# tmp1197, D.11369
	movl	-2252(%rbp), %eax	# run, tmp1198
	movl	%eax, (%rdx)	# tmp1198, *_433
	.loc 1 757 0
	addl	$1, -2248(%rbp)	#, scan_pos
	.loc 1 758 0
	movl	$-1, -2252(%rbp)	#, run
.L157:
	.loc 1 761 0
	cmpl	$0, -2232(%rbp)	#, lossless_qpprime
	jne	.L158	#,
	.loc 1 763 0
	movl	-2256(%rbp), %eax	# jj, tmp1200
	cltq
	movl	-2260(%rbp), %edx	# ii, tmp1202
	movslq	%edx, %rdx	# tmp1202, tmp1201
	movl	-2268(%rbp), %ecx	# i, tmp1204
	movslq	%ecx, %rcx	# tmp1204, tmp1203
	salq	$2, %rcx	#, tmp1205
	addq	%rdx, %rcx	# tmp1201, tmp1206
	movl	-2264(%rbp), %edx	# j, tmp1208
	movslq	%edx, %rdx	# tmp1208, tmp1207
	salq	$2, %rcx	#, tmp1209
	addq	%rcx, %rdx	# tmp1209, tmp1210
	salq	$2, %rdx	#, tmp1211
	addq	%rdx, %rax	# tmp1211, tmp1212
	movl	-1040(%rbp,%rax,4), %edx	# M0, D.11360
	movl	-2240(%rbp), %eax	# level, tmp1213
	movl	%edx, %esi	# D.11360,
	movl	%eax, %edi	# tmp1213,
	call	sign	#
	movl	%eax, -2240(%rbp)	# tmp1214, level
	.loc 1 764 0
	cmpl	$3, -2228(%rbp)	#, qp_per
	jg	.L159	#,
	.loc 1 765 0
	movl	-2264(%rbp), %eax	# j, tmp1216
	cltq
	movl	-2224(%rbp), %edx	# qp_rem, tmp1218
	movslq	%edx, %rcx	# tmp1218, tmp1217
	movl	-2268(%rbp), %edx	# i, tmp1220
	movslq	%edx, %rdx	# tmp1220, tmp1219
	salq	$2, %rcx	#, tmp1221
	addq	%rcx, %rdx	# tmp1221, tmp1222
	salq	$2, %rdx	#, tmp1223
	addq	%rdx, %rax	# tmp1223, tmp1224
	movl	InvLevelScale4x4Luma_Intra(,%rax,4), %eax	# InvLevelScale4x4Luma_Intra, D.11360
	imull	-2240(%rbp), %eax	# level, D.11360
	movl	%eax, %edx	# D.11360, D.11360
	movl	$3, %eax	#, tmp1225
	subl	-2228(%rbp), %eax	# qp_per, D.11360
	movl	$1, %esi	#, tmp1226
	movl	%eax, %ecx	# D.11360, tmp1606
	sall	%cl, %esi	# tmp1606, D.11360
	movl	%esi, %eax	# D.11360, D.11360
	addl	%eax, %edx	# D.11360, D.11360
	movl	$4, %eax	#, tmp1227
	subl	-2228(%rbp), %eax	# qp_per, D.11360
	movl	%eax, %ecx	# D.11360, tmp1607
	sarl	%cl, %edx	# tmp1607, D.11360
	movl	-2256(%rbp), %eax	# jj, tmp1229
	cltq
	movl	-2260(%rbp), %ecx	# ii, tmp1231
	movslq	%ecx, %rcx	# tmp1231, tmp1230
	movl	-2268(%rbp), %esi	# i, tmp1233
	movslq	%esi, %rsi	# tmp1233, tmp1232
	salq	$2, %rsi	#, tmp1234
	addq	%rcx, %rsi	# tmp1230, tmp1235
	movl	-2264(%rbp), %ecx	# j, tmp1237
	movslq	%ecx, %rcx	# tmp1237, tmp1236
	salq	$2, %rsi	#, tmp1238
	addq	%rsi, %rcx	# tmp1238, tmp1239
	salq	$2, %rcx	#, tmp1240
	addq	%rcx, %rax	# tmp1240, tmp1241
	movl	%edx, -1040(%rbp,%rax,4)	# D.11360, M0
	jmp	.L158	#
.L159:
	.loc 1 767 0
	movl	-2264(%rbp), %eax	# j, tmp1243
	cltq
	movl	-2224(%rbp), %edx	# qp_rem, tmp1245
	movslq	%edx, %rcx	# tmp1245, tmp1244
	movl	-2268(%rbp), %edx	# i, tmp1247
	movslq	%edx, %rdx	# tmp1247, tmp1246
	salq	$2, %rcx	#, tmp1248
	addq	%rcx, %rdx	# tmp1248, tmp1249
	salq	$2, %rdx	#, tmp1250
	addq	%rdx, %rax	# tmp1250, tmp1251
	movl	InvLevelScale4x4Luma_Intra(,%rax,4), %eax	# InvLevelScale4x4Luma_Intra, D.11360
	imull	-2240(%rbp), %eax	# level, D.11360
	movl	%eax, %edx	# D.11360, D.11360
	movl	-2228(%rbp), %eax	# qp_per, tmp1252
	subl	$4, %eax	#, D.11360
	movl	%eax, %ecx	# D.11360, tmp1609
	sall	%cl, %edx	# tmp1609, D.11360
	movl	-2256(%rbp), %eax	# jj, tmp1254
	cltq
	movl	-2260(%rbp), %ecx	# ii, tmp1256
	movslq	%ecx, %rcx	# tmp1256, tmp1255
	movl	-2268(%rbp), %esi	# i, tmp1258
	movslq	%esi, %rsi	# tmp1258, tmp1257
	salq	$2, %rsi	#, tmp1259
	addq	%rcx, %rsi	# tmp1255, tmp1260
	movl	-2264(%rbp), %ecx	# j, tmp1262
	movslq	%ecx, %rcx	# tmp1262, tmp1261
	salq	$2, %rsi	#, tmp1263
	addq	%rsi, %rcx	# tmp1263, tmp1264
	salq	$2, %rcx	#, tmp1265
	addq	%rcx, %rax	# tmp1265, tmp1266
	movl	%edx, -1040(%rbp,%rax,4)	# D.11360, M0
.L158:
	.loc 1 731 0
	addl	$1, -2244(%rbp)	#, coeff_ctr
.L151:
	.loc 1 731 0 is_stmt 0 discriminator 1
	cmpl	$15, -2244(%rbp)	#, coeff_ctr
	jle	.L160	#,
	.loc 1 770 0 is_stmt 1
	movl	-2248(%rbp), %eax	# scan_pos, tmp1267
	cltq
	leaq	0(,%rax,4), %rdx	#, D.11361
	movq	-2176(%rbp), %rax	# ACLevel, tmp1268
	addq	%rdx, %rax	# D.11361, D.11369
	movl	$0, (%rax)	#, *_452
	.loc 1 775 0
	movl	$0, -2264(%rbp)	#, j
	jmp	.L161	#
.L167:
	.loc 1 777 0
	movl	$0, -2268(%rbp)	#, i
	jmp	.L162	#
.L163:
	.loc 1 779 0 discriminator 2
	movl	-2256(%rbp), %eax	# jj, tmp1270
	cltq
	movl	-2260(%rbp), %edx	# ii, tmp1272
	movslq	%edx, %rdx	# tmp1272, tmp1271
	movl	-2268(%rbp), %ecx	# i, tmp1274
	movslq	%ecx, %rcx	# tmp1274, tmp1273
	salq	$2, %rcx	#, tmp1275
	addq	%rdx, %rcx	# tmp1271, tmp1276
	movl	-2264(%rbp), %edx	# j, tmp1278
	movslq	%edx, %rdx	# tmp1278, tmp1277
	salq	$2, %rcx	#, tmp1279
	addq	%rcx, %rdx	# tmp1279, tmp1280
	salq	$2, %rdx	#, tmp1281
	addq	%rdx, %rax	# tmp1281, tmp1282
	movl	-1040(%rbp,%rax,4), %edx	# M0, D.11360
	movl	-2268(%rbp), %eax	# i, tmp1284
	cltq
	movl	%edx, -2160(%rbp,%rax,4)	# D.11360, M5
	.loc 1 777 0 discriminator 2
	addl	$1, -2268(%rbp)	#, i
.L162:
	.loc 1 777 0 is_stmt 0 discriminator 1
	cmpl	$3, -2268(%rbp)	#, i
	jle	.L163	#,
	.loc 1 782 0 is_stmt 1
	movl	-2160(%rbp), %edx	# M5, D.11360
	movl	-2152(%rbp), %eax	# M5, D.11360
	addl	%edx, %eax	# D.11360, D.11360
	movl	%eax, -2144(%rbp)	# D.11360, M6
	.loc 1 783 0
	movl	-2160(%rbp), %edx	# M5, D.11360
	movl	-2152(%rbp), %eax	# M5, D.11360
	subl	%eax, %edx	# D.11360, D.11360
	movl	%edx, %eax	# D.11360, D.11360
	movl	%eax, -2140(%rbp)	# D.11360, M6
	.loc 1 784 0
	movl	-2156(%rbp), %eax	# M5, D.11360
	sarl	%eax	# D.11360
	movl	%eax, %edx	# D.11360, D.11360
	movl	-2148(%rbp), %eax	# M5, D.11360
	subl	%eax, %edx	# D.11360, D.11360
	movl	%edx, %eax	# D.11360, D.11360
	movl	%eax, -2136(%rbp)	# D.11360, M6
	.loc 1 785 0
	movl	-2156(%rbp), %eax	# M5, D.11360
	movl	-2148(%rbp), %edx	# M5, D.11360
	sarl	%edx	# D.11360
	addl	%edx, %eax	# D.11360, D.11360
	movl	%eax, -2132(%rbp)	# D.11360, M6
	.loc 1 787 0
	movl	$0, -2268(%rbp)	#, i
	jmp	.L164	#
.L165:
	.loc 1 789 0 discriminator 2
	movl	$3, %eax	#, tmp1288
	subl	-2268(%rbp), %eax	# i, tmp1287
	movl	%eax, -2216(%rbp)	# tmp1287, i1
	.loc 1 790 0 discriminator 2
	movl	-2268(%rbp), %eax	# i, tmp1290
	cltq
	movl	-2144(%rbp,%rax,4), %edx	# M6, D.11360
	movl	-2216(%rbp), %eax	# i1, tmp1292
	cltq
	movl	-2144(%rbp,%rax,4), %eax	# M6, D.11360
	addl	%eax, %edx	# D.11360, D.11360
	movl	-2256(%rbp), %eax	# jj, tmp1294
	cltq
	movl	-2260(%rbp), %ecx	# ii, tmp1296
	movslq	%ecx, %rcx	# tmp1296, tmp1295
	movl	-2268(%rbp), %esi	# i, tmp1298
	movslq	%esi, %rsi	# tmp1298, tmp1297
	salq	$2, %rsi	#, tmp1299
	addq	%rcx, %rsi	# tmp1295, tmp1300
	movl	-2264(%rbp), %ecx	# j, tmp1302
	movslq	%ecx, %rcx	# tmp1302, tmp1301
	salq	$2, %rsi	#, tmp1303
	addq	%rsi, %rcx	# tmp1303, tmp1304
	salq	$2, %rcx	#, tmp1305
	addq	%rcx, %rax	# tmp1305, tmp1306
	movl	%edx, -1040(%rbp,%rax,4)	# D.11360, M0
	.loc 1 791 0 discriminator 2
	movl	-2268(%rbp), %eax	# i, tmp1308
	cltq
	movl	-2144(%rbp,%rax,4), %edx	# M6, D.11360
	movl	-2216(%rbp), %eax	# i1, tmp1310
	cltq
	movl	-2144(%rbp,%rax,4), %eax	# M6, D.11360
	subl	%eax, %edx	# D.11360, D.11360
	movl	-2256(%rbp), %eax	# jj, tmp1312
	cltq
	movl	-2260(%rbp), %ecx	# ii, tmp1314
	movslq	%ecx, %rcx	# tmp1314, tmp1313
	movl	-2216(%rbp), %esi	# i1, tmp1316
	movslq	%esi, %rsi	# tmp1316, tmp1315
	salq	$2, %rsi	#, tmp1317
	addq	%rcx, %rsi	# tmp1313, tmp1318
	movl	-2264(%rbp), %ecx	# j, tmp1320
	movslq	%ecx, %rcx	# tmp1320, tmp1319
	salq	$2, %rsi	#, tmp1321
	addq	%rsi, %rcx	# tmp1321, tmp1322
	salq	$2, %rcx	#, tmp1323
	addq	%rcx, %rax	# tmp1323, tmp1324
	movl	%edx, -1040(%rbp,%rax,4)	# D.11360, M0
	.loc 1 787 0 discriminator 2
	addl	$1, -2268(%rbp)	#, i
.L164:
	.loc 1 787 0 is_stmt 0 discriminator 1
	cmpl	$1, -2268(%rbp)	#, i
	jle	.L165	#,
	.loc 1 775 0 is_stmt 1
	addl	$1, -2264(%rbp)	#, j
.L161:
	.loc 1 775 0 is_stmt 0 discriminator 1
	cmpl	$3, -2264(%rbp)	#, j
	jg	.L166	#,
	.loc 1 775 0 discriminator 2
	cmpl	$0, -2232(%rbp)	#, lossless_qpprime
	je	.L167	#,
.L166:
	.loc 1 796 0 is_stmt 1
	movl	$0, -2268(%rbp)	#, i
	jmp	.L168	#
.L174:
	.loc 1 798 0
	movl	$0, -2264(%rbp)	#, j
	jmp	.L169	#
.L170:
	.loc 1 799 0 discriminator 2
	movl	-2256(%rbp), %eax	# jj, tmp1326
	cltq
	movl	-2260(%rbp), %edx	# ii, tmp1328
	movslq	%edx, %rdx	# tmp1328, tmp1327
	movl	-2268(%rbp), %ecx	# i, tmp1330
	movslq	%ecx, %rcx	# tmp1330, tmp1329
	salq	$2, %rcx	#, tmp1331
	addq	%rdx, %rcx	# tmp1327, tmp1332
	movl	-2264(%rbp), %edx	# j, tmp1334
	movslq	%edx, %rdx	# tmp1334, tmp1333
	salq	$2, %rcx	#, tmp1335
	addq	%rcx, %rdx	# tmp1335, tmp1336
	salq	$2, %rdx	#, tmp1337
	addq	%rdx, %rax	# tmp1337, tmp1338
	movl	-1040(%rbp,%rax,4), %edx	# M0, D.11360
	movl	-2264(%rbp), %eax	# j, tmp1340
	cltq
	movl	%edx, -2160(%rbp,%rax,4)	# D.11360, M5
	.loc 1 798 0 discriminator 2
	addl	$1, -2264(%rbp)	#, j
.L169:
	.loc 1 798 0 is_stmt 0 discriminator 1
	cmpl	$3, -2264(%rbp)	#, j
	jle	.L170	#,
	.loc 1 801 0 is_stmt 1
	movl	-2160(%rbp), %edx	# M5, D.11360
	movl	-2152(%rbp), %eax	# M5, D.11360
	addl	%edx, %eax	# D.11360, D.11360
	movl	%eax, -2144(%rbp)	# D.11360, M6
	.loc 1 802 0
	movl	-2160(%rbp), %edx	# M5, D.11360
	movl	-2152(%rbp), %eax	# M5, D.11360
	subl	%eax, %edx	# D.11360, D.11360
	movl	%edx, %eax	# D.11360, D.11360
	movl	%eax, -2140(%rbp)	# D.11360, M6
	.loc 1 803 0
	movl	-2156(%rbp), %eax	# M5, D.11360
	sarl	%eax	# D.11360
	movl	%eax, %edx	# D.11360, D.11360
	movl	-2148(%rbp), %eax	# M5, D.11360
	subl	%eax, %edx	# D.11360, D.11360
	movl	%edx, %eax	# D.11360, D.11360
	movl	%eax, -2136(%rbp)	# D.11360, M6
	.loc 1 804 0
	movl	-2156(%rbp), %eax	# M5, D.11360
	movl	-2148(%rbp), %edx	# M5, D.11360
	sarl	%edx	# D.11360
	addl	%edx, %eax	# D.11360, D.11360
	movl	%eax, -2132(%rbp)	# D.11360, M6
	.loc 1 806 0
	movl	$0, -2264(%rbp)	#, j
	jmp	.L171	#
.L172:
	.loc 1 808 0 discriminator 2
	movl	$3, %eax	#, tmp1344
	subl	-2264(%rbp), %eax	# j, tmp1343
	movl	%eax, -2212(%rbp)	# tmp1343, j1
	.loc 1 809 0 discriminator 2
	movl	-2264(%rbp), %eax	# j, tmp1346
	cltq
	movl	-2144(%rbp,%rax,4), %edx	# M6, D.11360
	movl	-2212(%rbp), %eax	# j1, tmp1348
	cltq
	movl	-2144(%rbp,%rax,4), %eax	# M6, D.11360
	addl	%eax, %edx	# D.11360, D.11360
	movl	-2256(%rbp), %eax	# jj, tmp1350
	cltq
	movl	-2260(%rbp), %ecx	# ii, tmp1352
	movslq	%ecx, %rcx	# tmp1352, tmp1351
	movl	-2268(%rbp), %esi	# i, tmp1354
	movslq	%esi, %rsi	# tmp1354, tmp1353
	salq	$2, %rsi	#, tmp1355
	addq	%rcx, %rsi	# tmp1351, tmp1356
	movl	-2264(%rbp), %ecx	# j, tmp1358
	movslq	%ecx, %rcx	# tmp1358, tmp1357
	salq	$2, %rsi	#, tmp1359
	addq	%rsi, %rcx	# tmp1359, tmp1360
	salq	$2, %rcx	#, tmp1361
	addq	%rcx, %rax	# tmp1361, tmp1362
	movl	%edx, -1040(%rbp,%rax,4)	# D.11360, M0
	.loc 1 810 0 discriminator 2
	movl	-2264(%rbp), %eax	# j, tmp1364
	cltq
	movl	-2144(%rbp,%rax,4), %edx	# M6, D.11360
	movl	-2212(%rbp), %eax	# j1, tmp1366
	cltq
	movl	-2144(%rbp,%rax,4), %eax	# M6, D.11360
	subl	%eax, %edx	# D.11360, D.11360
	movl	-2256(%rbp), %eax	# jj, tmp1368
	cltq
	movl	-2260(%rbp), %ecx	# ii, tmp1370
	movslq	%ecx, %rcx	# tmp1370, tmp1369
	movl	-2268(%rbp), %esi	# i, tmp1372
	movslq	%esi, %rsi	# tmp1372, tmp1371
	salq	$2, %rsi	#, tmp1373
	addq	%rcx, %rsi	# tmp1369, tmp1374
	movl	-2212(%rbp), %ecx	# j1, tmp1376
	movslq	%ecx, %rcx	# tmp1376, tmp1375
	salq	$2, %rsi	#, tmp1377
	addq	%rsi, %rcx	# tmp1377, tmp1378
	salq	$2, %rcx	#, tmp1379
	addq	%rcx, %rax	# tmp1379, tmp1380
	movl	%edx, -1040(%rbp,%rax,4)	# D.11360, M0
	.loc 1 806 0 discriminator 2
	addl	$1, -2264(%rbp)	#, j
.L171:
	.loc 1 806 0 is_stmt 0 discriminator 1
	cmpl	$1, -2264(%rbp)	#, j
	jle	.L172	#,
	.loc 1 796 0 is_stmt 1
	addl	$1, -2268(%rbp)	#, i
.L168:
	.loc 1 796 0 is_stmt 0 discriminator 1
	cmpl	$3, -2268(%rbp)	#, i
	jg	.L173	#,
	.loc 1 796 0 discriminator 2
	cmpl	$0, -2232(%rbp)	#, lossless_qpprime
	je	.L174	#,
.L173:
	.loc 1 722 0 is_stmt 1
	addl	$1, -2260(%rbp)	#, ii
.L150:
	.loc 1 722 0 is_stmt 0 discriminator 1
	cmpl	$3, -2260(%rbp)	#, ii
	jle	.L175	#,
	.loc 1 720 0 is_stmt 1
	addl	$1, -2256(%rbp)	#, jj
.L149:
	.loc 1 720 0 is_stmt 0 discriminator 1
	cmpl	$3, -2256(%rbp)	#, jj
	jle	.L176	#,
	.loc 1 819 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.165
	movl	72724(%rax), %eax	# img.165_511->residue_transform_flag, D.11360
	testl	%eax, %eax	# D.11360
	jne	.L177	#,
	.loc 1 821 0
	movl	$0, -2264(%rbp)	#, j
	jmp	.L178	#
.L181:
	.loc 1 823 0
	movl	$0, -2268(%rbp)	#, i
	jmp	.L179	#
.L180:
	.loc 1 825 0 discriminator 2
	movl	-2268(%rbp), %eax	# i, tmp1381
	cltd
	shrl	$30, %edx	#, tmp1383
	addl	%edx, %eax	# tmp1383, tmp1384
	andl	$3, %eax	#, tmp1385
	subl	%edx, %eax	# tmp1383, tmp1386
	movl	%eax, %esi	# tmp1386, D.11360
	movl	-2268(%rbp), %eax	# i, tmp1387
	leal	3(%rax), %edx	#, tmp1389
	testl	%eax, %eax	# tmp1388
	cmovs	%edx, %eax	# tmp1389,, tmp1388
	sarl	$2, %eax	#, tmp1390
	movl	%eax, %ecx	# tmp1390, D.11360
	movl	-2264(%rbp), %eax	# j, tmp1391
	cltd
	shrl	$30, %edx	#, tmp1393
	addl	%edx, %eax	# tmp1393, tmp1394
	andl	$3, %eax	#, tmp1395
	subl	%edx, %eax	# tmp1393, tmp1396
	movl	%eax, %edx	# tmp1396, D.11360
	movl	-2264(%rbp), %eax	# j, tmp1397
	leal	3(%rax), %edi	#, tmp1399
	testl	%eax, %eax	# tmp1398
	cmovs	%edi, %eax	# tmp1399,, tmp1398
	sarl	$2, %eax	#, tmp1400
	cltq
	movslq	%ecx, %rcx	# D.11360, tmp1402
	movslq	%esi, %rsi	# D.11360, tmp1403
	salq	$2, %rsi	#, tmp1404
	addq	%rsi, %rcx	# tmp1404, tmp1405
	movslq	%edx, %rdx	# D.11360, tmp1406
	salq	$2, %rcx	#, tmp1407
	addq	%rcx, %rdx	# tmp1407, tmp1408
	salq	$2, %rdx	#, tmp1409
	addq	%rdx, %rax	# tmp1409, tmp1410
	movl	-1040(%rbp,%rax,4), %eax	# M0, D.11360
	movl	-2264(%rbp), %edx	# j, tmp1412
	movslq	%edx, %rdx	# tmp1412, tmp1411
	movl	-2268(%rbp), %ecx	# i, tmp1414
	movslq	%ecx, %rcx	# tmp1414, tmp1413
	salq	$4, %rcx	#, tmp1415
	addq	%rcx, %rdx	# tmp1415, tmp1416
	movl	%eax, -2064(%rbp,%rdx,4)	# D.11360, M1
	.loc 1 823 0 discriminator 2
	addl	$1, -2268(%rbp)	#, i
.L179:
	.loc 1 823 0 is_stmt 0 discriminator 1
	cmpl	$15, -2268(%rbp)	#, i
	jle	.L180	#,
	.loc 1 821 0 is_stmt 1
	addl	$1, -2264(%rbp)	#, j
.L178:
	.loc 1 821 0 is_stmt 0 discriminator 1
	cmpl	$15, -2264(%rbp)	#, j
	jle	.L181	#,
	jmp	.L182	#
.L177:
	.loc 1 831 0 is_stmt 1
	movl	$0, -2264(%rbp)	#, j
	jmp	.L183	#
.L188:
	.loc 1 833 0
	movl	$0, -2268(%rbp)	#, i
	jmp	.L184	#
.L187:
	.loc 1 835 0
	cmpl	$0, -2232(%rbp)	#, lossless_qpprime
	je	.L185	#,
	.loc 1 836 0
	movq	img(%rip), %rcx	# img, img.166
	movl	-2268(%rbp), %eax	# i, tmp1417
	cltd
	shrl	$30, %edx	#, tmp1419
	addl	%edx, %eax	# tmp1419, tmp1420
	andl	$3, %eax	#, tmp1421
	subl	%edx, %eax	# tmp1419, tmp1422
	movl	%eax, %edi	# tmp1422, D.11360
	movl	-2268(%rbp), %eax	# i, tmp1423
	leal	3(%rax), %edx	#, tmp1425
	testl	%eax, %eax	# tmp1424
	cmovs	%edx, %eax	# tmp1425,, tmp1424
	sarl	$2, %eax	#, tmp1426
	movl	%eax, %esi	# tmp1426, D.11360
	movl	-2264(%rbp), %eax	# j, tmp1427
	cltd
	shrl	$30, %edx	#, tmp1429
	addl	%edx, %eax	# tmp1429, tmp1430
	andl	$3, %eax	#, tmp1431
	subl	%edx, %eax	# tmp1429, tmp1432
	movl	%eax, %edx	# tmp1432, D.11360
	movl	-2264(%rbp), %eax	# j, tmp1433
	leal	3(%rax), %r8d	#, tmp1435
	testl	%eax, %eax	# tmp1434
	cmovs	%r8d, %eax	# tmp1435,, tmp1434
	sarl	$2, %eax	#, tmp1436
	cltq
	movslq	%esi, %rsi	# D.11360, tmp1438
	movslq	%edi, %rdi	# D.11360, tmp1439
	salq	$2, %rdi	#, tmp1440
	addq	%rdi, %rsi	# tmp1440, tmp1441
	movslq	%edx, %rdx	# D.11360, tmp1442
	salq	$2, %rsi	#, tmp1443
	addq	%rsi, %rdx	# tmp1443, tmp1444
	salq	$2, %rdx	#, tmp1445
	addq	%rdx, %rax	# tmp1445, tmp1446
	movl	-1040(%rbp,%rax,4), %eax	# M0, D.11360
	movl	-2264(%rbp), %edx	# j, tmp1448
	movslq	%edx, %rdx	# tmp1448, tmp1447
	movl	-2268(%rbp), %esi	# i, tmp1450
	movslq	%esi, %rsi	# tmp1450, tmp1449
	salq	$4, %rsi	#, tmp1451
	addq	%rsi, %rdx	# tmp1451, tmp1452
	addq	$3276, %rdx	#, tmp1453
	movl	%eax, 8(%rcx,%rdx,4)	# D.11360, img.166_524->m7
	jmp	.L186	#
.L185:
	.loc 1 838 0
	movq	img(%rip), %rcx	# img, img.167
	movl	-2268(%rbp), %eax	# i, tmp1454
	cltd
	shrl	$30, %edx	#, tmp1456
	addl	%edx, %eax	# tmp1456, tmp1457
	andl	$3, %eax	#, tmp1458
	subl	%edx, %eax	# tmp1456, tmp1459
	movl	%eax, %edi	# tmp1459, D.11360
	movl	-2268(%rbp), %eax	# i, tmp1460
	leal	3(%rax), %edx	#, tmp1462
	testl	%eax, %eax	# tmp1461
	cmovs	%edx, %eax	# tmp1462,, tmp1461
	sarl	$2, %eax	#, tmp1463
	movl	%eax, %esi	# tmp1463, D.11360
	movl	-2264(%rbp), %eax	# j, tmp1464
	cltd
	shrl	$30, %edx	#, tmp1466
	addl	%edx, %eax	# tmp1466, tmp1467
	andl	$3, %eax	#, tmp1468
	subl	%edx, %eax	# tmp1466, tmp1469
	movl	%eax, %edx	# tmp1469, D.11360
	movl	-2264(%rbp), %eax	# j, tmp1470
	leal	3(%rax), %r8d	#, tmp1472
	testl	%eax, %eax	# tmp1471
	cmovs	%r8d, %eax	# tmp1472,, tmp1471
	sarl	$2, %eax	#, tmp1473
	cltq
	movslq	%esi, %rsi	# D.11360, tmp1475
	movslq	%edi, %rdi	# D.11360, tmp1476
	salq	$2, %rdi	#, tmp1477
	addq	%rdi, %rsi	# tmp1477, tmp1478
	movslq	%edx, %rdx	# D.11360, tmp1479
	salq	$2, %rsi	#, tmp1480
	addq	%rsi, %rdx	# tmp1480, tmp1481
	salq	$2, %rdx	#, tmp1482
	addq	%rdx, %rax	# tmp1482, tmp1483
	movl	-1040(%rbp,%rax,4), %eax	# M0, D.11360
	addl	$32, %eax	#, D.11360
	sarl	$6, %eax	#, D.11360
	movl	%eax, %edx	# D.11360, D.11360
	movl	-2264(%rbp), %eax	# j, tmp1485
	cltq
	movl	-2268(%rbp), %esi	# i, tmp1487
	movslq	%esi, %rsi	# tmp1487, tmp1486
	salq	$4, %rsi	#, tmp1488
	addq	%rsi, %rax	# tmp1488, tmp1489
	addq	$3276, %rax	#, tmp1490
	movl	%edx, 8(%rcx,%rax,4)	# D.11360, img.167_530->m7
.L186:
	.loc 1 833 0
	addl	$1, -2268(%rbp)	#, i
.L184:
	.loc 1 833 0 is_stmt 0 discriminator 1
	cmpl	$15, -2268(%rbp)	#, i
	jle	.L187	#,
	.loc 1 831 0 is_stmt 1
	addl	$1, -2264(%rbp)	#, j
.L183:
	.loc 1 831 0 is_stmt 0 discriminator 1
	cmpl	$15, -2264(%rbp)	#, j
	jle	.L188	#,
.L182:
	.loc 1 843 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.168
	movl	72724(%rax), %eax	# img.168_540->residue_transform_flag, D.11360
	testl	%eax, %eax	# D.11360
	jne	.L189	#,
	.loc 1 845 0
	movl	$0, -2264(%rbp)	#, j
	jmp	.L190	#
.L199:
	.loc 1 847 0
	movl	$0, -2268(%rbp)	#, i
	jmp	.L191	#
.L198:
	.loc 1 849 0
	cmpl	$0, -2232(%rbp)	#, lossless_qpprime
	je	.L192	#,
	.loc 1 850 0
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.169
	movq	6424(%rax), %rdx	# enc_picture.169_544->imgY, D.11364
	movq	img(%rip), %rax	# img, img.170
	movl	156(%rax), %ecx	# img.170_546->pix_y, D.11360
	movl	-2264(%rbp), %eax	# j, tmp1491
	addl	%ecx, %eax	# D.11360, D.11360
	cltq
	salq	$3, %rax	#, D.11361
	addq	%rdx, %rax	# D.11364, D.11364
	movq	(%rax), %rdx	# *_551, D.11365
	movq	img(%rip), %rax	# img, img.171
	movl	152(%rax), %ecx	# img.171_553->pix_x, D.11360
	movl	-2268(%rbp), %eax	# i, tmp1492
	addl	%ecx, %eax	# D.11360, D.11360
	cltq
	addq	%rax, %rax	# D.11361
	addq	%rax, %rdx	# D.11361, D.11365
	movl	-2264(%rbp), %eax	# j, tmp1494
	cltq
	movl	-2268(%rbp), %ecx	# i, tmp1496
	movslq	%ecx, %rcx	# tmp1496, tmp1495
	salq	$4, %rcx	#, tmp1497
	addq	%rcx, %rax	# tmp1497, tmp1498
	movl	-2064(%rbp,%rax,4), %eax	# M1, D.11360
	movl	%eax, %ecx	# D.11360, D.11366
	movq	img(%rip), %rax	# img, img.172
	movl	-2268(%rbp), %esi	# i, tmp1500
	movslq	%esi, %rsi	# tmp1500, tmp1499
	movl	-2276(%rbp), %edi	# new_intra_mode, tmp1502
	movslq	%edi, %r8	# tmp1502, tmp1501
	movl	-2264(%rbp), %edi	# j, tmp1504
	movslq	%edi, %rdi	# tmp1504, tmp1503
	salq	$4, %r8	#, tmp1505
	addq	%r8, %rdi	# tmp1505, tmp1506
	salq	$4, %rdi	#, tmp1507
	addq	%rdi, %rsi	# tmp1507, tmp1508
	addq	$2392, %rsi	#, tmp1509
	movzwl	8(%rax,%rsi,2), %eax	# img.172_561->mprr_2, D.11366
	addl	%ecx, %eax	# D.11366, D.11366
	movw	%ax, (%rdx)	# D.11366, *_558
	jmp	.L193	#
.L192:
	.loc 1 852 0
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.173
	movq	6424(%rax), %rdx	# enc_picture.173_564->imgY, D.11364
	movq	img(%rip), %rax	# img, img.174
	movl	156(%rax), %ecx	# img.174_566->pix_y, D.11360
	movl	-2264(%rbp), %eax	# j, tmp1510
	addl	%ecx, %eax	# D.11360, D.11360
	cltq
	salq	$3, %rax	#, D.11361
	addq	%rdx, %rax	# D.11364, D.11364
	movq	(%rax), %rdx	# *_571, D.11365
	movq	img(%rip), %rax	# img, img.175
	movl	152(%rax), %ecx	# img.175_573->pix_x, D.11360
	movl	-2268(%rbp), %eax	# i, tmp1511
	addl	%ecx, %eax	# D.11360, D.11360
	cltq
	addq	%rax, %rax	# D.11361
	addq	%rax, %rdx	# D.11361, D.11365
	movq	img(%rip), %rax	# img, img.177
	movl	72684(%rax), %eax	# img.177_579->max_imgpel_value, D.11360
	movslq	%eax, %rcx	# D.11360, D.11371
	movl	-2264(%rbp), %eax	# j, tmp1513
	cltq
	movl	-2268(%rbp), %esi	# i, tmp1515
	movslq	%esi, %rsi	# tmp1515, tmp1514
	salq	$4, %rsi	#, tmp1516
	addq	%rsi, %rax	# tmp1516, tmp1517
	movl	-2064(%rbp,%rax,4), %eax	# M1, D.11360
	movslq	%eax, %rsi	# D.11360, D.11371
	movq	img(%rip), %rax	# img, img.178
	movl	-2268(%rbp), %edi	# i, tmp1519
	movslq	%edi, %rdi	# tmp1519, tmp1518
	movl	-2276(%rbp), %r8d	# new_intra_mode, tmp1521
	movslq	%r8d, %r9	# tmp1521, tmp1520
	movl	-2264(%rbp), %r8d	# j, tmp1523
	movslq	%r8d, %r8	# tmp1523, tmp1522
	salq	$4, %r9	#, tmp1524
	addq	%r9, %r8	# tmp1524, tmp1525
	salq	$4, %r8	#, tmp1526
	addq	%r8, %rdi	# tmp1526, tmp1527
	addq	$2392, %rdi	#, tmp1528
	movzwl	8(%rax,%rdi,2), %eax	# img.178_584->mprr_2, D.11366
	movzwl	%ax, %eax	# D.11366, D.11371
	salq	$6, %rax	#, D.11371
	addq	%rsi, %rax	# D.11371, D.11371
	addq	$32, %rax	#, D.11371
	sarq	$6, %rax	#, D.11371
	movl	$0, %esi	#, tmp1529
	testq	%rax, %rax	# D.11371
	cmovs	%rsi, %rax	# D.11371,, tmp1529, D.11371
	cmpq	%rax, %rcx	# D.11371, D.11371
	jge	.L194	#,
	.loc 1 852 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.179
	movl	72684(%rax), %eax	# img.179_592->max_imgpel_value, D.11360
	jmp	.L195	#
.L194:
	.loc 1 852 0 discriminator 2
	movl	-2264(%rbp), %eax	# j, tmp1531
	cltq
	movl	-2268(%rbp), %ecx	# i, tmp1533
	movslq	%ecx, %rcx	# tmp1533, tmp1532
	salq	$4, %rcx	#, tmp1534
	addq	%rcx, %rax	# tmp1534, tmp1535
	movl	-2064(%rbp,%rax,4), %eax	# M1, D.11360
	movslq	%eax, %rcx	# D.11360, D.11371
	movq	img(%rip), %rax	# img, img.181
	movl	-2268(%rbp), %esi	# i, tmp1537
	movslq	%esi, %rsi	# tmp1537, tmp1536
	movl	-2276(%rbp), %edi	# new_intra_mode, tmp1539
	movslq	%edi, %r8	# tmp1539, tmp1538
	movl	-2264(%rbp), %edi	# j, tmp1541
	movslq	%edi, %rdi	# tmp1541, tmp1540
	salq	$4, %r8	#, tmp1542
	addq	%r8, %rdi	# tmp1542, tmp1543
	salq	$4, %rdi	#, tmp1544
	addq	%rdi, %rsi	# tmp1544, tmp1545
	addq	$2392, %rsi	#, tmp1546
	movzwl	8(%rax,%rsi,2), %eax	# img.181_597->mprr_2, D.11366
	movzwl	%ax, %eax	# D.11366, D.11371
	salq	$6, %rax	#, D.11371
	addq	%rcx, %rax	# D.11371, D.11371
	addq	$32, %rax	#, D.11371
	sarq	$6, %rax	#, D.11371
	testq	%rax, %rax	# D.11371
	js	.L196	#,
	.loc 1 852 0 discriminator 3
	movl	-2264(%rbp), %eax	# j, tmp1548
	cltq
	movl	-2268(%rbp), %ecx	# i, tmp1550
	movslq	%ecx, %rcx	# tmp1550, tmp1549
	salq	$4, %rcx	#, tmp1551
	addq	%rcx, %rax	# tmp1551, tmp1552
	movl	-2064(%rbp,%rax,4), %eax	# M1, D.11360
	movslq	%eax, %rcx	# D.11360, D.11371
	movq	img(%rip), %rax	# img, img.182
	movl	-2268(%rbp), %esi	# i, tmp1554
	movslq	%esi, %rsi	# tmp1554, tmp1553
	movl	-2276(%rbp), %edi	# new_intra_mode, tmp1556
	movslq	%edi, %r8	# tmp1556, tmp1555
	movl	-2264(%rbp), %edi	# j, tmp1558
	movslq	%edi, %rdi	# tmp1558, tmp1557
	salq	$4, %r8	#, tmp1559
	addq	%r8, %rdi	# tmp1559, tmp1560
	salq	$4, %rdi	#, tmp1561
	addq	%rdi, %rsi	# tmp1561, tmp1562
	addq	$2392, %rsi	#, tmp1563
	movzwl	8(%rax,%rsi,2), %eax	# img.182_606->mprr_2, D.11366
	movzwl	%ax, %eax	# D.11366, D.11371
	salq	$6, %rax	#, D.11371
	addq	%rcx, %rax	# D.11371, D.11371
	addq	$32, %rax	#, D.11371
	sarq	$6, %rax	#, D.11371
	jmp	.L195	#
.L196:
	.loc 1 852 0 discriminator 4
	movl	$0, %eax	#, iftmp.180
.L195:
	.loc 1 852 0 discriminator 6
	movw	%ax, (%rdx)	# iftmp.176, *_578
.L193:
	.loc 1 847 0 is_stmt 1
	addl	$1, -2268(%rbp)	#, i
.L191:
	.loc 1 847 0 is_stmt 0 discriminator 1
	cmpl	$15, -2268(%rbp)	#, i
	jle	.L198	#,
	.loc 1 845 0 is_stmt 1
	addl	$1, -2264(%rbp)	#, j
.L190:
	.loc 1 845 0 is_stmt 0 discriminator 1
	cmpl	$15, -2264(%rbp)	#, j
	jle	.L199	#,
.L189:
	.loc 1 856 0 is_stmt 1
	movl	-2236(%rbp), %eax	# ac_coef, D.11360
	.loc 1 857 0
	addq	$2280, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	dct_luma_16x16, .-dct_luma_16x16
	.globl	dct_luma
	.type	dct_luma, @function
dct_luma:
.LFB5:
	.loc 1 876 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$168, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -148(%rbp)	# block_x, block_x
	movl	%esi, -152(%rbp)	# block_y, block_y
	movq	%rdx, -160(%rbp)	# coeff_cost, coeff_cost
	movl	%ecx, -164(%rbp)	# intra, intra
	.loc 1 885 0
	movl	-148(%rbp), %eax	# block_x, tmp380
	leal	3(%rax), %edx	#, tmp382
	testl	%eax, %eax	# tmp381
	cmovs	%edx, %eax	# tmp382,, tmp381
	sarl	$2, %eax	#, tmp383
	movl	%eax, -112(%rbp)	# tmp383, pos_x
	.loc 1 886 0
	movl	-152(%rbp), %eax	# block_y, tmp385
	leal	3(%rax), %edx	#, tmp387
	testl	%eax, %eax	# tmp386
	cmovs	%edx, %eax	# tmp387,, tmp386
	sarl	$2, %eax	#, tmp388
	movl	%eax, -108(%rbp)	# tmp388, pos_y
	.loc 1 887 0
	movl	-108(%rbp), %eax	# pos_y, tmp389
	movl	%eax, %edx	# tmp389, tmp390
	shrl	$31, %edx	#, tmp390
	addl	%edx, %eax	# tmp390, tmp391
	sarl	%eax	# tmp392
	leal	(%rax,%rax), %edx	#, D.11373
	movl	-112(%rbp), %eax	# pos_x, tmp393
	movl	%eax, %ecx	# tmp393, tmp394
	shrl	$31, %ecx	#, tmp394
	addl	%ecx, %eax	# tmp394, tmp395
	sarl	%eax	# tmp396
	addl	%edx, %eax	# D.11373, tmp397
	movl	%eax, -104(%rbp)	# tmp397, b8
	.loc 1 888 0
	movl	-108(%rbp), %eax	# pos_y, tmp398
	cltd
	shrl	$31, %edx	#, tmp400
	addl	%edx, %eax	# tmp400, tmp401
	andl	$1, %eax	#, tmp402
	subl	%edx, %eax	# tmp400, tmp403
	leal	(%rax,%rax), %ecx	#, D.11373
	movl	-112(%rbp), %eax	# pos_x, tmp404
	cltd
	shrl	$31, %edx	#, tmp406
	addl	%edx, %eax	# tmp406, tmp407
	andl	$1, %eax	#, tmp408
	subl	%edx, %eax	# tmp406, tmp409
	addl	%ecx, %eax	# D.11373, tmp410
	movl	%eax, -100(%rbp)	# tmp410, b4
	.loc 1 889 0
	movq	img(%rip), %rax	# img, img.183
	movq	14136(%rax), %rax	# img.183_38->cofAC, D.11374
	movl	-104(%rbp), %edx	# b8, tmp411
	movslq	%edx, %rdx	# tmp411, D.11375
	salq	$3, %rdx	#, D.11375
	addq	%rdx, %rax	# D.11375, D.11374
	movq	(%rax), %rax	# *_42, D.11376
	movl	-100(%rbp), %edx	# b4, tmp412
	movslq	%edx, %rdx	# tmp412, D.11375
	salq	$3, %rdx	#, D.11375
	addq	%rdx, %rax	# D.11375, D.11376
	movq	(%rax), %rax	# *_46, D.11377
	movq	(%rax), %rax	# *_47, tmp413
	movq	%rax, -72(%rbp)	# tmp413, ACLevel
	.loc 1 890 0
	movq	img(%rip), %rax	# img, img.184
	movq	14136(%rax), %rax	# img.184_49->cofAC, D.11374
	movl	-104(%rbp), %edx	# b8, tmp414
	movslq	%edx, %rdx	# tmp414, D.11375
	salq	$3, %rdx	#, D.11375
	addq	%rdx, %rax	# D.11375, D.11374
	movq	(%rax), %rax	# *_53, D.11376
	movl	-100(%rbp), %edx	# b4, tmp415
	movslq	%edx, %rdx	# tmp415, D.11375
	salq	$3, %rdx	#, D.11375
	addq	%rdx, %rax	# D.11375, D.11376
	movq	(%rax), %rax	# *_57, D.11377
	movq	8(%rax), %rax	# MEM[(int * *)_58 + 8B], tmp416
	movq	%rax, -64(%rbp)	# tmp416, ACRun
	.loc 1 892 0
	movq	img(%rip), %rax	# img, img.185
	movq	14168(%rax), %rdx	# img.185_60->mb_data, D.11378
	movq	img(%rip), %rax	# img, img.186
	movl	12(%rax), %eax	# img.186_62->current_mb_nr, D.11373
	cltq
	imulq	$632, %rax, %rax	#, D.11375, D.11375
	addq	%rdx, %rax	# D.11378, tmp417
	movq	%rax, -56(%rbp)	# tmp417, currMB
	.loc 1 893 0
	movq	-56(%rbp), %rax	# currMB, tmp418
	movl	12(%rax), %edx	# currMB_66->qp, D.11373
	movq	img(%rip), %rax	# img, img.188
	movl	72668(%rax), %eax	# img.188_68->bitdepth_luma_qp_scale, D.11373
	addl	%edx, %eax	# D.11373, D.11373
	testl	%eax, %eax	# D.11373
	jne	.L202	#,
	.loc 1 893 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.189
	movl	72704(%rax), %eax	# img.189_71->lossless_qpprime_flag, D.11373
	cmpl	$1, %eax	#, D.11373
	jne	.L202	#,
	.loc 1 893 0 discriminator 3
	movl	$1, %eax	#, iftmp.187
	jmp	.L203	#
.L202:
	.loc 1 893 0 discriminator 2
	movl	$0, %eax	#, iftmp.187
.L203:
	.loc 1 893 0 discriminator 4
	movl	%eax, -96(%rbp)	# iftmp.187, lossless_qpprime
	.loc 1 895 0 is_stmt 1 discriminator 4
	movq	-56(%rbp), %rax	# currMB, tmp419
	movl	12(%rax), %edx	# currMB_66->qp, D.11373
	movq	img(%rip), %rax	# img, img.190
	movl	72668(%rax), %eax	# img.190_77->bitdepth_luma_qp_scale, D.11373
	leal	(%rdx,%rax), %ecx	#, D.11373
	movl	$715827883, %edx	#, tmp421
	movl	%ecx, %eax	# D.11373, tmp888
	imull	%edx	# tmp421
	movl	%ecx, %eax	# D.11373, tmp422
	sarl	$31, %eax	#, tmp422
	subl	%eax, %edx	# tmp422, tmp423
	movl	%edx, %eax	# tmp423, tmp423
	movl	%eax, -92(%rbp)	# tmp423, qp_per
	.loc 1 896 0 discriminator 4
	movq	-56(%rbp), %rax	# currMB, tmp424
	movl	12(%rax), %edx	# currMB_66->qp, D.11373
	movq	img(%rip), %rax	# img, img.191
	movl	72668(%rax), %eax	# img.191_82->bitdepth_luma_qp_scale, D.11373
	leal	(%rdx,%rax), %ecx	#, D.11373
	movl	$715827883, %edx	#, tmp426
	movl	%ecx, %eax	# D.11373, tmp889
	imull	%edx	# tmp426
	movl	%ecx, %eax	# D.11373, tmp427
	sarl	$31, %eax	#, tmp427
	subl	%eax, %edx	# tmp427, tmp428
	movl	%edx, %eax	# tmp428, tmp428
	movl	%eax, -88(%rbp)	# tmp428, qp_rem
	movl	-88(%rbp), %edx	# qp_rem, tmp429
	movl	%edx, %eax	# tmp429, tmp430
	addl	%eax, %eax	# tmp430
	addl	%edx, %eax	# tmp429, tmp430
	addl	%eax, %eax	# tmp431
	subl	%eax, %ecx	# tmp430, tmp432
	movl	%ecx, %eax	# tmp432, tmp432
	movl	%eax, -88(%rbp)	# tmp432, qp_rem
	.loc 1 897 0 discriminator 4
	movl	-92(%rbp), %eax	# qp_per, tmp436
	addl	$15, %eax	#, tmp435
	movl	%eax, -84(%rbp)	# tmp435, q_bits
	.loc 1 906 0 discriminator 4
	movl	$0, -140(%rbp)	#, j
	jmp	.L204	#
.L208:
	.loc 1 908 0
	movl	$0, -144(%rbp)	#, i
	jmp	.L205	#
.L206:
	.loc 1 910 0 discriminator 2
	movl	$3, %eax	#, tmp440
	subl	-144(%rbp), %eax	# i, tmp439
	movl	%eax, -80(%rbp)	# tmp439, i1
	.loc 1 911 0 discriminator 2
	movq	img(%rip), %rax	# img, img.192
	movl	-140(%rbp), %edx	# j, tmp442
	movslq	%edx, %rdx	# tmp442, tmp441
	movl	-144(%rbp), %ecx	# i, tmp444
	movslq	%ecx, %rcx	# tmp444, tmp443
	salq	$4, %rcx	#, tmp445
	addq	%rcx, %rdx	# tmp445, tmp446
	addq	$3276, %rdx	#, tmp447
	movl	8(%rax,%rdx,4), %edx	# img.192_90->m7, D.11373
	movq	img(%rip), %rax	# img, img.193
	movl	-140(%rbp), %ecx	# j, tmp449
	movslq	%ecx, %rcx	# tmp449, tmp448
	movl	-80(%rbp), %esi	# i1, tmp451
	movslq	%esi, %rsi	# tmp451, tmp450
	salq	$4, %rsi	#, tmp452
	addq	%rsi, %rcx	# tmp452, tmp453
	addq	$3276, %rcx	#, tmp454
	movl	8(%rax,%rcx,4), %eax	# img.193_92->m7, D.11373
	addl	%eax, %edx	# D.11373, D.11373
	movl	-144(%rbp), %eax	# i, tmp456
	cltq
	movl	%edx, -48(%rbp,%rax,4)	# D.11373, m5
	.loc 1 912 0 discriminator 2
	movq	img(%rip), %rax	# img, img.194
	movl	-140(%rbp), %edx	# j, tmp458
	movslq	%edx, %rdx	# tmp458, tmp457
	movl	-144(%rbp), %ecx	# i, tmp460
	movslq	%ecx, %rcx	# tmp460, tmp459
	salq	$4, %rcx	#, tmp461
	addq	%rcx, %rdx	# tmp461, tmp462
	addq	$3276, %rdx	#, tmp463
	movl	8(%rax,%rdx,4), %edx	# img.194_95->m7, D.11373
	movq	img(%rip), %rax	# img, img.195
	movl	-140(%rbp), %ecx	# j, tmp465
	movslq	%ecx, %rcx	# tmp465, tmp464
	movl	-80(%rbp), %esi	# i1, tmp467
	movslq	%esi, %rsi	# tmp467, tmp466
	salq	$4, %rsi	#, tmp468
	addq	%rsi, %rcx	# tmp468, tmp469
	addq	$3276, %rcx	#, tmp470
	movl	8(%rax,%rcx,4), %eax	# img.195_97->m7, D.11373
	subl	%eax, %edx	# D.11373, D.11373
	movl	-80(%rbp), %eax	# i1, tmp472
	cltq
	movl	%edx, -48(%rbp,%rax,4)	# D.11373, m5
	.loc 1 908 0 discriminator 2
	addl	$1, -144(%rbp)	#, i
.L205:
	.loc 1 908 0 is_stmt 0 discriminator 1
	cmpl	$1, -144(%rbp)	#, i
	jle	.L206	#,
	.loc 1 914 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.196
	movl	-48(%rbp), %ecx	# m5, D.11373
	movl	-44(%rbp), %edx	# m5, D.11373
	addl	%edx, %ecx	# D.11373, D.11373
	movl	-140(%rbp), %edx	# j, tmp474
	movslq	%edx, %rdx	# tmp474, tmp473
	addq	$3276, %rdx	#, tmp475
	movl	%ecx, 8(%rax,%rdx,4)	# D.11373, img.196_101->m7
	.loc 1 915 0
	movq	img(%rip), %rax	# img, img.197
	movl	-48(%rbp), %ecx	# m5, D.11373
	movl	-44(%rbp), %edx	# m5, D.11373
	subl	%edx, %ecx	# D.11373, D.11373
	movl	-140(%rbp), %edx	# j, tmp477
	movslq	%edx, %rdx	# tmp477, tmp476
	addq	$3308, %rdx	#, tmp478
	movl	%ecx, 8(%rax,%rdx,4)	# D.11373, img.197_105->m7
	.loc 1 916 0
	movq	img(%rip), %rax	# img, img.198
	movl	-36(%rbp), %edx	# m5, D.11373
	leal	(%rdx,%rdx), %ecx	#, D.11373
	movl	-40(%rbp), %edx	# m5, D.11373
	addl	%edx, %ecx	# D.11373, D.11373
	movl	-140(%rbp), %edx	# j, tmp480
	movslq	%edx, %rdx	# tmp480, tmp479
	addq	$3292, %rdx	#, tmp481
	movl	%ecx, 8(%rax,%rdx,4)	# D.11373, img.198_109->m7
	.loc 1 917 0
	movq	img(%rip), %rdx	# img, img.199
	movl	-36(%rbp), %ecx	# m5, D.11373
	movl	-40(%rbp), %esi	# m5, D.11373
	movl	$0, %eax	#, tmp482
	subl	%esi, %eax	# D.11373, tmp482
	addl	%eax, %eax	# tmp483
	addl	%eax, %ecx	# D.11373, D.11373
	movl	-140(%rbp), %eax	# j, tmp485
	cltq
	addq	$3324, %rax	#, tmp486
	movl	%ecx, 8(%rdx,%rax,4)	# D.11373, img.199_114->m7
	.loc 1 906 0
	addl	$1, -140(%rbp)	#, j
.L204:
	.loc 1 906 0 is_stmt 0 discriminator 1
	cmpl	$3, -140(%rbp)	#, j
	jg	.L207	#,
	.loc 1 906 0 discriminator 2
	cmpl	$0, -96(%rbp)	#, lossless_qpprime
	je	.L208	#,
.L207:
	.loc 1 921 0 is_stmt 1
	movl	$0, -144(%rbp)	#, i
	jmp	.L209	#
.L213:
	.loc 1 923 0
	movl	$0, -140(%rbp)	#, j
	jmp	.L210	#
.L211:
	.loc 1 925 0 discriminator 2
	movl	$3, %eax	#, tmp490
	subl	-140(%rbp), %eax	# j, tmp489
	movl	%eax, -76(%rbp)	# tmp489, j1
	.loc 1 926 0 discriminator 2
	movq	img(%rip), %rax	# img, img.200
	movl	-140(%rbp), %edx	# j, tmp492
	movslq	%edx, %rdx	# tmp492, tmp491
	movl	-144(%rbp), %ecx	# i, tmp494
	movslq	%ecx, %rcx	# tmp494, tmp493
	salq	$4, %rcx	#, tmp495
	addq	%rcx, %rdx	# tmp495, tmp496
	addq	$3276, %rdx	#, tmp497
	movl	8(%rax,%rdx,4), %edx	# img.200_123->m7, D.11373
	movq	img(%rip), %rax	# img, img.201
	movl	-76(%rbp), %ecx	# j1, tmp499
	movslq	%ecx, %rcx	# tmp499, tmp498
	movl	-144(%rbp), %esi	# i, tmp501
	movslq	%esi, %rsi	# tmp501, tmp500
	salq	$4, %rsi	#, tmp502
	addq	%rsi, %rcx	# tmp502, tmp503
	addq	$3276, %rcx	#, tmp504
	movl	8(%rax,%rcx,4), %eax	# img.201_125->m7, D.11373
	addl	%eax, %edx	# D.11373, D.11373
	movl	-140(%rbp), %eax	# j, tmp506
	cltq
	movl	%edx, -48(%rbp,%rax,4)	# D.11373, m5
	.loc 1 927 0 discriminator 2
	movq	img(%rip), %rax	# img, img.202
	movl	-140(%rbp), %edx	# j, tmp508
	movslq	%edx, %rdx	# tmp508, tmp507
	movl	-144(%rbp), %ecx	# i, tmp510
	movslq	%ecx, %rcx	# tmp510, tmp509
	salq	$4, %rcx	#, tmp511
	addq	%rcx, %rdx	# tmp511, tmp512
	addq	$3276, %rdx	#, tmp513
	movl	8(%rax,%rdx,4), %edx	# img.202_128->m7, D.11373
	movq	img(%rip), %rax	# img, img.203
	movl	-76(%rbp), %ecx	# j1, tmp515
	movslq	%ecx, %rcx	# tmp515, tmp514
	movl	-144(%rbp), %esi	# i, tmp517
	movslq	%esi, %rsi	# tmp517, tmp516
	salq	$4, %rsi	#, tmp518
	addq	%rsi, %rcx	# tmp518, tmp519
	addq	$3276, %rcx	#, tmp520
	movl	8(%rax,%rcx,4), %eax	# img.203_130->m7, D.11373
	subl	%eax, %edx	# D.11373, D.11373
	movl	-76(%rbp), %eax	# j1, tmp522
	cltq
	movl	%edx, -48(%rbp,%rax,4)	# D.11373, m5
	.loc 1 923 0 discriminator 2
	addl	$1, -140(%rbp)	#, j
.L210:
	.loc 1 923 0 is_stmt 0 discriminator 1
	cmpl	$1, -140(%rbp)	#, j
	jle	.L211	#,
	.loc 1 929 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.204
	movl	-48(%rbp), %ecx	# m5, D.11373
	movl	-44(%rbp), %edx	# m5, D.11373
	addl	%ecx, %edx	# D.11373, D.11373
	movl	-144(%rbp), %ecx	# i, tmp524
	movslq	%ecx, %rcx	# tmp524, tmp523
	salq	$6, %rcx	#, tmp525
	addq	%rcx, %rax	# tmp525, tmp526
	addq	$13104, %rax	#, tmp527
	movl	%edx, 8(%rax)	# D.11373, img.204_134->m7
	.loc 1 930 0
	movq	img(%rip), %rax	# img, img.205
	movl	-48(%rbp), %ecx	# m5, D.11373
	movl	-44(%rbp), %edx	# m5, D.11373
	subl	%edx, %ecx	# D.11373, D.11373
	movl	%ecx, %edx	# D.11373, D.11373
	movl	-144(%rbp), %ecx	# i, tmp529
	movslq	%ecx, %rcx	# tmp529, tmp528
	salq	$6, %rcx	#, tmp530
	addq	%rcx, %rax	# tmp530, tmp531
	addq	$13112, %rax	#, tmp532
	movl	%edx, 8(%rax)	# D.11373, img.205_138->m7
	.loc 1 931 0
	movq	img(%rip), %rax	# img, img.206
	movl	-36(%rbp), %edx	# m5, D.11373
	leal	(%rdx,%rdx), %ecx	#, D.11373
	movl	-40(%rbp), %edx	# m5, D.11373
	addl	%ecx, %edx	# D.11373, D.11373
	movl	-144(%rbp), %ecx	# i, tmp534
	movslq	%ecx, %rcx	# tmp534, tmp533
	salq	$6, %rcx	#, tmp535
	addq	%rcx, %rax	# tmp535, tmp536
	addq	$13108, %rax	#, tmp537
	movl	%edx, 8(%rax)	# D.11373, img.206_142->m7
	.loc 1 932 0
	movq	img(%rip), %rcx	# img, img.207
	movl	-36(%rbp), %edx	# m5, D.11373
	movl	-40(%rbp), %esi	# m5, D.11373
	movl	$0, %eax	#, tmp538
	subl	%esi, %eax	# D.11373, tmp538
	addl	%eax, %eax	# tmp539
	addl	%eax, %edx	# D.11373, D.11373
	movl	-144(%rbp), %eax	# i, tmp541
	cltq
	salq	$6, %rax	#, tmp542
	addq	%rcx, %rax	# img.207, tmp543
	addq	$13116, %rax	#, tmp544
	movl	%edx, 8(%rax)	# D.11373, img.207_147->m7
	.loc 1 921 0
	addl	$1, -144(%rbp)	#, i
.L209:
	.loc 1 921 0 is_stmt 0 discriminator 1
	cmpl	$3, -144(%rbp)	#, i
	jg	.L212	#,
	.loc 1 921 0 discriminator 2
	cmpl	$0, -96(%rbp)	#, lossless_qpprime
	je	.L213	#,
.L212:
	.loc 1 937 0 is_stmt 1
	movl	$0, -116(%rbp)	#, nonzero
	.loc 1 939 0
	movl	$-1, -120(%rbp)	#, run
	.loc 1 940 0
	movl	$0, -124(%rbp)	#, scan_pos
	.loc 1 942 0
	movl	$0, -132(%rbp)	#, coeff_ctr
	jmp	.L214	#
.L231:
	.loc 1 945 0
	movq	img(%rip), %rax	# img, img.208
	movl	72444(%rax), %eax	# img.208_157->field_picture, D.11379
	testl	%eax, %eax	# D.11379
	jne	.L215	#,
	.loc 1 945 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.209
	movl	72400(%rax), %eax	# img.209_159->MbaffFrameFlag, D.11373
	testl	%eax, %eax	# D.11373
	je	.L216	#,
	movq	-56(%rbp), %rax	# currMB, tmp545
	movl	532(%rax), %eax	# currMB_66->mb_field, D.11373
	testl	%eax, %eax	# D.11373
	je	.L216	#,
.L215:
	.loc 1 947 0 is_stmt 1
	movl	-132(%rbp), %eax	# coeff_ctr, tmp547
	cltq
	movzbl	FIELD_SCAN(%rax,%rax), %eax	# FIELD_SCAN, D.11380
	movzbl	%al, %eax	# D.11380, tmp548
	movl	%eax, -144(%rbp)	# tmp548, i
	.loc 1 948 0
	movl	-132(%rbp), %eax	# coeff_ctr, tmp550
	cltq
	movzbl	FIELD_SCAN+1(%rax,%rax), %eax	# FIELD_SCAN, D.11380
	movzbl	%al, %eax	# D.11380, tmp551
	movl	%eax, -140(%rbp)	# tmp551, j
	jmp	.L217	#
.L216:
	.loc 1 952 0
	movl	-132(%rbp), %eax	# coeff_ctr, tmp553
	cltq
	movzbl	SNGL_SCAN(%rax,%rax), %eax	# SNGL_SCAN, D.11380
	movzbl	%al, %eax	# D.11380, tmp554
	movl	%eax, -144(%rbp)	# tmp554, i
	.loc 1 953 0
	movl	-132(%rbp), %eax	# coeff_ctr, tmp556
	cltq
	movzbl	SNGL_SCAN+1(%rax,%rax), %eax	# SNGL_SCAN, D.11380
	movzbl	%al, %eax	# D.11380, tmp557
	movl	%eax, -140(%rbp)	# tmp557, j
.L217:
	.loc 1 956 0
	addl	$1, -120(%rbp)	#, run
	.loc 1 957 0
	movl	$0, -136(%rbp)	#, ilev
	.loc 1 959 0
	cmpl	$0, -96(%rbp)	#, lossless_qpprime
	je	.L218	#,
	.loc 1 960 0
	movq	img(%rip), %rax	# img, img.210
	movl	-140(%rbp), %edx	# j, tmp559
	movslq	%edx, %rdx	# tmp559, tmp558
	movl	-144(%rbp), %ecx	# i, tmp561
	movslq	%ecx, %rcx	# tmp561, tmp560
	salq	$4, %rcx	#, tmp562
	addq	%rcx, %rdx	# tmp562, tmp563
	addq	$3276, %rdx	#, tmp564
	movl	8(%rax,%rdx,4), %edx	# img.210_172->m7, D.11373
	movl	%edx, %eax	# D.11373, tmp565
	sarl	$31, %eax	#, tmp565
	xorl	%eax, %edx	# tmp565, tmp566
	movl	%edx, -128(%rbp)	# tmp566, level
	subl	%eax, -128(%rbp)	# tmp565, level
	jmp	.L219	#
.L218:
	.loc 1 961 0
	cmpl	$1, -164(%rbp)	#, intra
	jne	.L220	#,
	.loc 1 962 0
	movq	img(%rip), %rax	# img, img.211
	movl	-140(%rbp), %edx	# j, tmp568
	movslq	%edx, %rdx	# tmp568, tmp567
	movl	-144(%rbp), %ecx	# i, tmp570
	movslq	%ecx, %rcx	# tmp570, tmp569
	salq	$4, %rcx	#, tmp571
	addq	%rcx, %rdx	# tmp571, tmp572
	addq	$3276, %rdx	#, tmp573
	movl	8(%rax,%rdx,4), %eax	# img.211_176->m7, D.11373
	cltd
	xorl	%edx, %eax	# tmp574, D.11373
	subl	%edx, %eax	# tmp574, D.11373
	movl	-140(%rbp), %edx	# j, tmp576
	movslq	%edx, %rdx	# tmp576, tmp575
	movl	-88(%rbp), %ecx	# qp_rem, tmp578
	movslq	%ecx, %rsi	# tmp578, tmp577
	movl	-144(%rbp), %ecx	# i, tmp580
	movslq	%ecx, %rcx	# tmp580, tmp579
	salq	$2, %rsi	#, tmp581
	addq	%rsi, %rcx	# tmp581, tmp582
	salq	$2, %rcx	#, tmp583
	addq	%rcx, %rdx	# tmp583, tmp584
	movl	LevelScale4x4Luma_Intra(,%rdx,4), %edx	# LevelScale4x4Luma_Intra, D.11373
	imull	%eax, %edx	# D.11373, D.11373
	movl	-140(%rbp), %eax	# j, tmp586
	cltq
	movl	-92(%rbp), %ecx	# qp_per, tmp588
	movslq	%ecx, %rsi	# tmp588, tmp587
	movl	-144(%rbp), %ecx	# i, tmp590
	movslq	%ecx, %rcx	# tmp590, tmp589
	salq	$2, %rsi	#, tmp591
	addq	%rsi, %rcx	# tmp591, tmp592
	salq	$2, %rcx	#, tmp593
	addq	%rcx, %rax	# tmp593, tmp594
	movl	LevelOffset4x4Luma_Intra(,%rax,4), %eax	# LevelOffset4x4Luma_Intra, D.11373
	addl	%eax, %edx	# D.11373, D.11373
	movl	-84(%rbp), %eax	# q_bits, tmp595
	movl	%eax, %ecx	# tmp595, tmp902
	sarl	%cl, %edx	# tmp902, tmp596
	movl	%edx, %eax	# tmp596, tmp596
	movl	%eax, -128(%rbp)	# tmp596, level
	jmp	.L219	#
.L220:
	.loc 1 965 0
	movq	img(%rip), %rax	# img, img.212
	movl	-140(%rbp), %edx	# j, tmp598
	movslq	%edx, %rdx	# tmp598, tmp597
	movl	-144(%rbp), %ecx	# i, tmp600
	movslq	%ecx, %rcx	# tmp600, tmp599
	salq	$4, %rcx	#, tmp601
	addq	%rcx, %rdx	# tmp601, tmp602
	addq	$3276, %rdx	#, tmp603
	movl	8(%rax,%rdx,4), %eax	# img.212_184->m7, D.11373
	cltd
	xorl	%edx, %eax	# tmp604, D.11373
	subl	%edx, %eax	# tmp604, D.11373
	movl	-140(%rbp), %edx	# j, tmp606
	movslq	%edx, %rdx	# tmp606, tmp605
	movl	-88(%rbp), %ecx	# qp_rem, tmp608
	movslq	%ecx, %rsi	# tmp608, tmp607
	movl	-144(%rbp), %ecx	# i, tmp610
	movslq	%ecx, %rcx	# tmp610, tmp609
	salq	$2, %rsi	#, tmp611
	addq	%rsi, %rcx	# tmp611, tmp612
	salq	$2, %rcx	#, tmp613
	addq	%rcx, %rdx	# tmp613, tmp614
	movl	LevelScale4x4Luma_Inter(,%rdx,4), %edx	# LevelScale4x4Luma_Inter, D.11373
	imull	%eax, %edx	# D.11373, D.11373
	movl	-140(%rbp), %eax	# j, tmp616
	cltq
	movl	-92(%rbp), %ecx	# qp_per, tmp618
	movslq	%ecx, %rsi	# tmp618, tmp617
	movl	-144(%rbp), %ecx	# i, tmp620
	movslq	%ecx, %rcx	# tmp620, tmp619
	salq	$2, %rsi	#, tmp621
	addq	%rsi, %rcx	# tmp621, tmp622
	salq	$2, %rcx	#, tmp623
	addq	%rcx, %rax	# tmp623, tmp624
	movl	LevelOffset4x4Luma_Inter(,%rax,4), %eax	# LevelOffset4x4Luma_Inter, D.11373
	addl	%eax, %edx	# D.11373, D.11373
	movl	-84(%rbp), %eax	# q_bits, tmp625
	movl	%eax, %ecx	# tmp625, tmp904
	sarl	%cl, %edx	# tmp904, tmp626
	movl	%edx, %eax	# tmp626, tmp626
	movl	%eax, -128(%rbp)	# tmp626, level
.L219:
	.loc 1 968 0
	cmpl	$0, -128(%rbp)	#, level
	je	.L221	#,
	.loc 1 970 0
	movl	$1, -116(%rbp)	#, nonzero
	.loc 1 971 0
	cmpl	$1, -128(%rbp)	#, level
	jg	.L222	#,
	.loc 1 971 0 is_stmt 0 discriminator 1
	cmpl	$0, -96(%rbp)	#, lossless_qpprime
	je	.L223	#,
.L222:
	.loc 1 972 0 is_stmt 1
	movq	-160(%rbp), %rax	# coeff_cost, tmp627
	movl	(%rax), %eax	# *coeff_cost_193(D), D.11373
	leal	999999(%rax), %edx	#, D.11373
	movq	-160(%rbp), %rax	# coeff_cost, tmp628
	movl	%edx, (%rax)	# D.11373, *coeff_cost_193(D)
	jmp	.L224	#
.L223:
	.loc 1 974 0
	movq	-160(%rbp), %rax	# coeff_cost, tmp629
	movl	(%rax), %edx	# *coeff_cost_193(D), D.11373
	movq	input(%rip), %rax	# input, input.213
	movl	2468(%rax), %ecx	# input.213_195->disthres, D.11373
	movl	-120(%rbp), %eax	# run, tmp631
	cltq
	movslq	%ecx, %rcx	# D.11373, tmp632
	salq	$4, %rcx	#, tmp633
	addq	%rcx, %rax	# tmp633, tmp634
	addq	$COEFF_COST, %rax	#, tmp635
	movzbl	(%rax), %eax	# COEFF_COST, D.11380
	movzbl	%al, %eax	# D.11380, D.11373
	addl	%eax, %edx	# D.11373, D.11373
	movq	-160(%rbp), %rax	# coeff_cost, tmp636
	movl	%edx, (%rax)	# D.11373, *coeff_cost_193(D)
.L224:
	.loc 1 975 0
	movl	-124(%rbp), %eax	# scan_pos, tmp637
	cltq
	leaq	0(,%rax,4), %rdx	#, D.11375
	movq	-72(%rbp), %rax	# ACLevel, tmp638
	leaq	(%rdx,%rax), %rbx	#, D.11381
	movq	img(%rip), %rax	# img, img.214
	movl	-140(%rbp), %edx	# j, tmp640
	movslq	%edx, %rdx	# tmp640, tmp639
	movl	-144(%rbp), %ecx	# i, tmp642
	movslq	%ecx, %rcx	# tmp642, tmp641
	salq	$4, %rcx	#, tmp643
	addq	%rcx, %rdx	# tmp643, tmp644
	addq	$3276, %rdx	#, tmp645
	movl	8(%rax,%rdx,4), %edx	# img.214_205->m7, D.11373
	movl	-128(%rbp), %eax	# level, tmp646
	movl	%edx, %esi	# D.11373,
	movl	%eax, %edi	# tmp646,
	call	sign	#
	movl	%eax, (%rbx)	# D.11373, *_204
	.loc 1 976 0
	movl	-124(%rbp), %eax	# scan_pos, tmp647
	cltq
	leaq	0(,%rax,4), %rdx	#, D.11375
	movq	-64(%rbp), %rax	# ACRun, tmp648
	addq	%rax, %rdx	# tmp648, D.11381
	movl	-120(%rbp), %eax	# run, tmp649
	movl	%eax, (%rdx)	# tmp649, *_210
	.loc 1 977 0
	addl	$1, -124(%rbp)	#, scan_pos
	.loc 1 978 0
	movl	$-1, -120(%rbp)	#, run
	.loc 1 980 0
	movq	img(%rip), %rax	# img, img.215
	movl	-140(%rbp), %edx	# j, tmp651
	movslq	%edx, %rdx	# tmp651, tmp650
	movl	-144(%rbp), %ecx	# i, tmp653
	movslq	%ecx, %rcx	# tmp653, tmp652
	salq	$4, %rcx	#, tmp654
	addq	%rcx, %rdx	# tmp654, tmp655
	addq	$3276, %rdx	#, tmp656
	movl	8(%rax,%rdx,4), %edx	# img.215_213->m7, D.11373
	movl	-128(%rbp), %eax	# level, tmp657
	movl	%edx, %esi	# D.11373,
	movl	%eax, %edi	# tmp657,
	call	sign	#
	movl	%eax, -128(%rbp)	# tmp658, level
	.loc 1 981 0
	cmpl	$0, -96(%rbp)	#, lossless_qpprime
	je	.L225	#,
	.loc 1 983 0
	movl	-128(%rbp), %eax	# level, tmp659
	movl	%eax, -136(%rbp)	# tmp659, ilev
	jmp	.L221	#
.L225:
	.loc 1 985 0
	cmpl	$3, -92(%rbp)	#, qp_per
	jg	.L226	#,
	.loc 1 987 0
	cmpl	$1, -164(%rbp)	#, intra
	jne	.L227	#,
	.loc 1 988 0
	movl	-140(%rbp), %eax	# j, tmp661
	cltq
	movl	-88(%rbp), %edx	# qp_rem, tmp663
	movslq	%edx, %rcx	# tmp663, tmp662
	movl	-144(%rbp), %edx	# i, tmp665
	movslq	%edx, %rdx	# tmp665, tmp664
	salq	$2, %rcx	#, tmp666
	addq	%rcx, %rdx	# tmp666, tmp667
	salq	$2, %rdx	#, tmp668
	addq	%rdx, %rax	# tmp668, tmp669
	movl	InvLevelScale4x4Luma_Intra(,%rax,4), %eax	# InvLevelScale4x4Luma_Intra, D.11373
	imull	-128(%rbp), %eax	# level, D.11373
	movl	%eax, %edx	# D.11373, D.11373
	movl	$3, %eax	#, tmp670
	subl	-92(%rbp), %eax	# qp_per, D.11373
	movl	$1, %esi	#, tmp671
	movl	%eax, %ecx	# D.11373, tmp907
	sall	%cl, %esi	# tmp907, D.11373
	movl	%esi, %eax	# D.11373, D.11373
	addl	%eax, %edx	# D.11373, D.11373
	movl	$4, %eax	#, tmp672
	subl	-92(%rbp), %eax	# qp_per, D.11373
	movl	%eax, %ecx	# D.11373, tmp909
	sarl	%cl, %edx	# tmp909, tmp673
	movl	%edx, %eax	# tmp673, tmp673
	movl	%eax, -136(%rbp)	# tmp673, ilev
	jmp	.L221	#
.L227:
	.loc 1 990 0
	movl	-140(%rbp), %eax	# j, tmp675
	cltq
	movl	-88(%rbp), %edx	# qp_rem, tmp677
	movslq	%edx, %rcx	# tmp677, tmp676
	movl	-144(%rbp), %edx	# i, tmp679
	movslq	%edx, %rdx	# tmp679, tmp678
	salq	$2, %rcx	#, tmp680
	addq	%rcx, %rdx	# tmp680, tmp681
	salq	$2, %rdx	#, tmp682
	addq	%rdx, %rax	# tmp682, tmp683
	movl	InvLevelScale4x4Luma_Inter(,%rax,4), %eax	# InvLevelScale4x4Luma_Inter, D.11373
	imull	-128(%rbp), %eax	# level, D.11373
	movl	%eax, %edx	# D.11373, D.11373
	movl	$3, %eax	#, tmp684
	subl	-92(%rbp), %eax	# qp_per, D.11373
	movl	$1, %esi	#, tmp685
	movl	%eax, %ecx	# D.11373, tmp912
	sall	%cl, %esi	# tmp912, D.11373
	movl	%esi, %eax	# D.11373, D.11373
	addl	%eax, %edx	# D.11373, D.11373
	movl	$4, %eax	#, tmp686
	subl	-92(%rbp), %eax	# qp_per, D.11373
	movl	%eax, %ecx	# D.11373, tmp914
	sarl	%cl, %edx	# tmp914, tmp687
	movl	%edx, %eax	# tmp687, tmp687
	movl	%eax, -136(%rbp)	# tmp687, ilev
	jmp	.L221	#
.L226:
	.loc 1 994 0
	cmpl	$1, -164(%rbp)	#, intra
	jne	.L229	#,
	.loc 1 995 0
	movl	-140(%rbp), %eax	# j, tmp689
	cltq
	movl	-88(%rbp), %edx	# qp_rem, tmp691
	movslq	%edx, %rcx	# tmp691, tmp690
	movl	-144(%rbp), %edx	# i, tmp693
	movslq	%edx, %rdx	# tmp693, tmp692
	salq	$2, %rcx	#, tmp694
	addq	%rcx, %rdx	# tmp694, tmp695
	salq	$2, %rdx	#, tmp696
	addq	%rdx, %rax	# tmp696, tmp697
	movl	InvLevelScale4x4Luma_Intra(,%rax,4), %eax	# InvLevelScale4x4Luma_Intra, D.11373
	imull	-128(%rbp), %eax	# level, D.11373
	movl	%eax, %edx	# D.11373, D.11373
	movl	-92(%rbp), %eax	# qp_per, tmp698
	subl	$4, %eax	#, D.11373
	movl	%eax, %ecx	# D.11373, tmp917
	sall	%cl, %edx	# tmp917, tmp699
	movl	%edx, %eax	# tmp699, tmp699
	movl	%eax, -136(%rbp)	# tmp699, ilev
	jmp	.L221	#
.L229:
	.loc 1 997 0
	movl	-140(%rbp), %eax	# j, tmp701
	cltq
	movl	-88(%rbp), %edx	# qp_rem, tmp703
	movslq	%edx, %rcx	# tmp703, tmp702
	movl	-144(%rbp), %edx	# i, tmp705
	movslq	%edx, %rdx	# tmp705, tmp704
	salq	$2, %rcx	#, tmp706
	addq	%rcx, %rdx	# tmp706, tmp707
	salq	$2, %rdx	#, tmp708
	addq	%rdx, %rax	# tmp708, tmp709
	movl	InvLevelScale4x4Luma_Inter(,%rax,4), %eax	# InvLevelScale4x4Luma_Inter, D.11373
	imull	-128(%rbp), %eax	# level, D.11373
	movl	%eax, %edx	# D.11373, D.11373
	movl	-92(%rbp), %eax	# qp_per, tmp710
	subl	$4, %eax	#, D.11373
	movl	%eax, %ecx	# D.11373, tmp920
	sall	%cl, %edx	# tmp920, tmp711
	movl	%edx, %eax	# tmp711, tmp711
	movl	%eax, -136(%rbp)	# tmp711, ilev
.L221:
	.loc 1 1000 0
	cmpl	$0, -96(%rbp)	#, lossless_qpprime
	jne	.L230	#,
	.loc 1 1001 0
	movq	img(%rip), %rax	# img, img.216
	movl	-140(%rbp), %edx	# j, tmp713
	movslq	%edx, %rdx	# tmp713, tmp712
	movl	-144(%rbp), %ecx	# i, tmp715
	movslq	%ecx, %rcx	# tmp715, tmp714
	salq	$4, %rcx	#, tmp716
	addq	%rcx, %rdx	# tmp716, tmp717
	leaq	3276(%rdx), %rcx	#, tmp718
	movl	-136(%rbp), %edx	# ilev, tmp719
	movl	%edx, 8(%rax,%rcx,4)	# tmp719, img.216_239->m7
.L230:
	.loc 1 942 0
	addl	$1, -132(%rbp)	#, coeff_ctr
.L214:
	.loc 1 942 0 is_stmt 0 discriminator 1
	cmpl	$15, -132(%rbp)	#, coeff_ctr
	jle	.L231	#,
	.loc 1 1003 0 is_stmt 1
	movl	-124(%rbp), %eax	# scan_pos, tmp720
	cltq
	leaq	0(,%rax,4), %rdx	#, D.11375
	movq	-72(%rbp), %rax	# ACLevel, tmp721
	addq	%rdx, %rax	# D.11375, D.11381
	movl	$0, (%rax)	#, *_243
	.loc 1 1008 0
	movl	$0, -140(%rbp)	#, j
	jmp	.L232	#
.L238:
	.loc 1 1010 0
	movl	$0, -144(%rbp)	#, i
	jmp	.L233	#
.L234:
	.loc 1 1012 0 discriminator 2
	movq	img(%rip), %rax	# img, img.217
	movl	-140(%rbp), %edx	# j, tmp723
	movslq	%edx, %rdx	# tmp723, tmp722
	movl	-144(%rbp), %ecx	# i, tmp725
	movslq	%ecx, %rcx	# tmp725, tmp724
	salq	$4, %rcx	#, tmp726
	addq	%rcx, %rdx	# tmp726, tmp727
	addq	$3276, %rdx	#, tmp728
	movl	8(%rax,%rdx,4), %edx	# img.217_246->m7, D.11373
	movl	-144(%rbp), %eax	# i, tmp730
	cltq
	movl	%edx, -48(%rbp,%rax,4)	# D.11373, m5
	.loc 1 1010 0 discriminator 2
	addl	$1, -144(%rbp)	#, i
.L233:
	.loc 1 1010 0 is_stmt 0 discriminator 1
	cmpl	$3, -144(%rbp)	#, i
	jle	.L234	#,
	.loc 1 1014 0 is_stmt 1
	movl	-48(%rbp), %edx	# m5, D.11373
	movl	-40(%rbp), %eax	# m5, D.11373
	addl	%edx, %eax	# D.11373, D.11373
	movl	%eax, -32(%rbp)	# D.11373, m6
	.loc 1 1015 0
	movl	-48(%rbp), %edx	# m5, D.11373
	movl	-40(%rbp), %eax	# m5, D.11373
	subl	%eax, %edx	# D.11373, D.11373
	movl	%edx, %eax	# D.11373, D.11373
	movl	%eax, -28(%rbp)	# D.11373, m6
	.loc 1 1016 0
	movl	-44(%rbp), %eax	# m5, D.11373
	sarl	%eax	# D.11373
	movl	%eax, %edx	# D.11373, D.11373
	movl	-36(%rbp), %eax	# m5, D.11373
	subl	%eax, %edx	# D.11373, D.11373
	movl	%edx, %eax	# D.11373, D.11373
	movl	%eax, -24(%rbp)	# D.11373, m6
	.loc 1 1017 0
	movl	-44(%rbp), %eax	# m5, D.11373
	movl	-36(%rbp), %edx	# m5, D.11373
	sarl	%edx	# D.11373
	addl	%edx, %eax	# D.11373, D.11373
	movl	%eax, -20(%rbp)	# D.11373, m6
	.loc 1 1019 0
	movl	$0, -144(%rbp)	#, i
	jmp	.L235	#
.L236:
	.loc 1 1021 0 discriminator 2
	movl	$3, %eax	#, tmp734
	subl	-144(%rbp), %eax	# i, tmp733
	movl	%eax, -80(%rbp)	# tmp733, i1
	.loc 1 1022 0 discriminator 2
	movq	img(%rip), %rax	# img, img.218
	movl	-144(%rbp), %edx	# i, tmp736
	movslq	%edx, %rdx	# tmp736, tmp735
	movl	-32(%rbp,%rdx,4), %ecx	# m6, D.11373
	movl	-80(%rbp), %edx	# i1, tmp738
	movslq	%edx, %rdx	# tmp738, tmp737
	movl	-32(%rbp,%rdx,4), %edx	# m6, D.11373
	addl	%edx, %ecx	# D.11373, D.11373
	movl	-140(%rbp), %edx	# j, tmp740
	movslq	%edx, %rdx	# tmp740, tmp739
	movl	-144(%rbp), %esi	# i, tmp742
	movslq	%esi, %rsi	# tmp742, tmp741
	salq	$4, %rsi	#, tmp743
	addq	%rsi, %rdx	# tmp743, tmp744
	addq	$3276, %rdx	#, tmp745
	movl	%ecx, 8(%rax,%rdx,4)	# D.11373, img.218_265->m7
	.loc 1 1023 0 discriminator 2
	movq	img(%rip), %rax	# img, img.219
	movl	-144(%rbp), %edx	# i, tmp747
	movslq	%edx, %rdx	# tmp747, tmp746
	movl	-32(%rbp,%rdx,4), %ecx	# m6, D.11373
	movl	-80(%rbp), %edx	# i1, tmp749
	movslq	%edx, %rdx	# tmp749, tmp748
	movl	-32(%rbp,%rdx,4), %edx	# m6, D.11373
	subl	%edx, %ecx	# D.11373, D.11373
	movl	-140(%rbp), %edx	# j, tmp751
	movslq	%edx, %rdx	# tmp751, tmp750
	movl	-80(%rbp), %esi	# i1, tmp753
	movslq	%esi, %rsi	# tmp753, tmp752
	salq	$4, %rsi	#, tmp754
	addq	%rsi, %rdx	# tmp754, tmp755
	addq	$3276, %rdx	#, tmp756
	movl	%ecx, 8(%rax,%rdx,4)	# D.11373, img.219_269->m7
	.loc 1 1019 0 discriminator 2
	addl	$1, -144(%rbp)	#, i
.L235:
	.loc 1 1019 0 is_stmt 0 discriminator 1
	cmpl	$1, -144(%rbp)	#, i
	jle	.L236	#,
	.loc 1 1008 0 is_stmt 1
	addl	$1, -140(%rbp)	#, j
.L232:
	.loc 1 1008 0 is_stmt 0 discriminator 1
	cmpl	$3, -140(%rbp)	#, j
	jg	.L237	#,
	.loc 1 1008 0 discriminator 2
	cmpl	$0, -96(%rbp)	#, lossless_qpprime
	je	.L238	#,
.L237:
	.loc 1 1028 0 is_stmt 1
	movl	$0, -144(%rbp)	#, i
	jmp	.L239	#
.L248:
	.loc 1 1030 0
	movl	$0, -140(%rbp)	#, j
	jmp	.L240	#
.L241:
	.loc 1 1032 0 discriminator 2
	movq	img(%rip), %rax	# img, img.220
	movl	-140(%rbp), %edx	# j, tmp758
	movslq	%edx, %rdx	# tmp758, tmp757
	movl	-144(%rbp), %ecx	# i, tmp760
	movslq	%ecx, %rcx	# tmp760, tmp759
	salq	$4, %rcx	#, tmp761
	addq	%rcx, %rdx	# tmp761, tmp762
	addq	$3276, %rdx	#, tmp763
	movl	8(%rax,%rdx,4), %edx	# img.220_277->m7, D.11373
	movl	-140(%rbp), %eax	# j, tmp765
	cltq
	movl	%edx, -48(%rbp,%rax,4)	# D.11373, m5
	.loc 1 1030 0 discriminator 2
	addl	$1, -140(%rbp)	#, j
.L240:
	.loc 1 1030 0 is_stmt 0 discriminator 1
	cmpl	$3, -140(%rbp)	#, j
	jle	.L241	#,
	.loc 1 1034 0 is_stmt 1
	movl	-48(%rbp), %edx	# m5, D.11373
	movl	-40(%rbp), %eax	# m5, D.11373
	addl	%edx, %eax	# D.11373, D.11373
	movl	%eax, -32(%rbp)	# D.11373, m6
	.loc 1 1035 0
	movl	-48(%rbp), %edx	# m5, D.11373
	movl	-40(%rbp), %eax	# m5, D.11373
	subl	%eax, %edx	# D.11373, D.11373
	movl	%edx, %eax	# D.11373, D.11373
	movl	%eax, -28(%rbp)	# D.11373, m6
	.loc 1 1036 0
	movl	-44(%rbp), %eax	# m5, D.11373
	sarl	%eax	# D.11373
	movl	%eax, %edx	# D.11373, D.11373
	movl	-36(%rbp), %eax	# m5, D.11373
	subl	%eax, %edx	# D.11373, D.11373
	movl	%edx, %eax	# D.11373, D.11373
	movl	%eax, -24(%rbp)	# D.11373, m6
	.loc 1 1037 0
	movl	-44(%rbp), %eax	# m5, D.11373
	movl	-36(%rbp), %edx	# m5, D.11373
	sarl	%edx	# D.11373
	addl	%edx, %eax	# D.11373, D.11373
	movl	%eax, -20(%rbp)	# D.11373, m6
	.loc 1 1039 0
	movl	$0, -140(%rbp)	#, j
	jmp	.L242	#
.L246:
	.loc 1 1041 0
	movl	$3, %eax	#, tmp769
	subl	-140(%rbp), %eax	# j, tmp768
	movl	%eax, -76(%rbp)	# tmp768, j1
	.loc 1 1043 0
	movq	img(%rip), %rax	# img, img.221
	movl	72724(%rax), %eax	# img.221_296->residue_transform_flag, D.11373
	testl	%eax, %eax	# D.11373
	jne	.L243	#,
	.loc 1 1045 0
	movq	img(%rip), %rcx	# img, img.222
	movl	-140(%rbp), %eax	# j, tmp771
	cltq
	movl	-32(%rbp,%rax,4), %edx	# m6, D.11373
	movl	-76(%rbp), %eax	# j1, tmp773
	cltq
	movl	-32(%rbp,%rax,4), %eax	# m6, D.11373
	addl	%edx, %eax	# D.11373, D.11373
	movslq	%eax, %rdx	# D.11373, D.11382
	movq	img(%rip), %rax	# img, img.223
	movl	-148(%rbp), %esi	# block_x, tmp774
	movl	-144(%rbp), %edi	# i, tmp775
	leal	(%rdi,%rsi), %r8d	#, D.11373
	movl	-152(%rbp), %esi	# block_y, tmp776
	movl	-140(%rbp), %edi	# j, tmp777
	addl	%edi, %esi	# tmp777, D.11373
	movslq	%esi, %rsi	# D.11373, tmp778
	movslq	%r8d, %rdi	# D.11373, tmp779
	salq	$4, %rdi	#, tmp780
	addq	%rdi, %rsi	# tmp780, tmp781
	addq	$6296, %rsi	#, tmp782
	movzwl	8(%rax,%rsi,2), %eax	# img.223_303->mpr, D.11383
	movzwl	%ax, %eax	# D.11383, D.11382
	salq	$6, %rax	#, D.11382
	addq	%rdx, %rax	# D.11382, D.11382
	addq	$32, %rax	#, D.11382
	sarq	$6, %rax	#, D.11382
	movl	$0, %edx	#, tmp783
	testq	%rax, %rax	# D.11382
	cmovns	%rax, %rdx	# D.11382,, D.11382
	movq	img(%rip), %rax	# img, img.224
	movl	72684(%rax), %eax	# img.224_313->max_imgpel_value, D.11373
	cltq
	cmpq	%rax, %rdx	# D.11382, D.11382
	cmovle	%rdx, %rax	# D.11382,, D.11382
	movl	-140(%rbp), %edx	# j, tmp785
	movslq	%edx, %rdx	# tmp785, tmp784
	movl	-144(%rbp), %esi	# i, tmp787
	movslq	%esi, %rsi	# tmp787, tmp786
	salq	$4, %rsi	#, tmp788
	addq	%rsi, %rdx	# tmp788, tmp789
	addq	$3276, %rdx	#, tmp790
	movl	%eax, 8(%rcx,%rdx,4)	# D.11373, img.222_298->m7
	.loc 1 1046 0
	movq	img(%rip), %rcx	# img, img.225
	movl	-140(%rbp), %eax	# j, tmp792
	cltq
	movl	-32(%rbp,%rax,4), %edx	# m6, D.11373
	movl	-76(%rbp), %eax	# j1, tmp794
	cltq
	movl	-32(%rbp,%rax,4), %eax	# m6, D.11373
	subl	%eax, %edx	# D.11373, D.11373
	movl	%edx, %eax	# D.11373, D.11373
	movslq	%eax, %rdx	# D.11373, D.11382
	movq	img(%rip), %rax	# img, img.226
	movl	-148(%rbp), %esi	# block_x, tmp795
	movl	-144(%rbp), %edi	# i, tmp796
	leal	(%rdi,%rsi), %r8d	#, D.11373
	movl	-152(%rbp), %esi	# block_y, tmp797
	movl	-76(%rbp), %edi	# j1, tmp798
	addl	%edi, %esi	# tmp798, D.11373
	movslq	%esi, %rsi	# D.11373, tmp799
	movslq	%r8d, %rdi	# D.11373, tmp800
	salq	$4, %rdi	#, tmp801
	addq	%rdi, %rsi	# tmp801, tmp802
	addq	$6296, %rsi	#, tmp803
	movzwl	8(%rax,%rsi,2), %eax	# img.226_323->mpr, D.11383
	movzwl	%ax, %eax	# D.11383, D.11382
	salq	$6, %rax	#, D.11382
	addq	%rdx, %rax	# D.11382, D.11382
	addq	$32, %rax	#, D.11382
	sarq	$6, %rax	#, D.11382
	movl	$0, %edx	#, tmp804
	testq	%rax, %rax	# D.11382
	cmovns	%rax, %rdx	# D.11382,, D.11382
	movq	img(%rip), %rax	# img, img.227
	movl	72684(%rax), %eax	# img.227_333->max_imgpel_value, D.11373
	cltq
	cmpq	%rax, %rdx	# D.11382, D.11382
	cmovle	%rdx, %rax	# D.11382,, D.11382
	movl	-76(%rbp), %edx	# j1, tmp806
	movslq	%edx, %rdx	# tmp806, tmp805
	movl	-144(%rbp), %esi	# i, tmp808
	movslq	%esi, %rsi	# tmp808, tmp807
	salq	$4, %rsi	#, tmp809
	addq	%rsi, %rdx	# tmp809, tmp810
	addq	$3276, %rdx	#, tmp811
	movl	%eax, 8(%rcx,%rdx,4)	# D.11373, img.225_318->m7
	jmp	.L244	#
.L243:
	.loc 1 1050 0
	cmpl	$0, -96(%rbp)	#, lossless_qpprime
	je	.L245	#,
	.loc 1 1052 0
	movq	img(%rip), %rax	# img, img.228
	movl	-140(%rbp), %edx	# j, tmp813
	movslq	%edx, %rdx	# tmp813, tmp812
	movl	-32(%rbp,%rdx,4), %ecx	# m6, D.11373
	movl	-76(%rbp), %edx	# j1, tmp815
	movslq	%edx, %rdx	# tmp815, tmp814
	movl	-32(%rbp,%rdx,4), %edx	# m6, D.11373
	addl	%edx, %ecx	# D.11373, D.11373
	movl	-140(%rbp), %edx	# j, tmp817
	movslq	%edx, %rdx	# tmp817, tmp816
	movl	-144(%rbp), %esi	# i, tmp819
	movslq	%esi, %rsi	# tmp819, tmp818
	salq	$4, %rsi	#, tmp820
	addq	%rsi, %rdx	# tmp820, tmp821
	addq	$3276, %rdx	#, tmp822
	movl	%ecx, 8(%rax,%rdx,4)	# D.11373, img.228_338->m7
	.loc 1 1053 0
	movq	img(%rip), %rax	# img, img.229
	movl	-140(%rbp), %edx	# j, tmp824
	movslq	%edx, %rdx	# tmp824, tmp823
	movl	-32(%rbp,%rdx,4), %ecx	# m6, D.11373
	movl	-76(%rbp), %edx	# j1, tmp826
	movslq	%edx, %rdx	# tmp826, tmp825
	movl	-32(%rbp,%rdx,4), %edx	# m6, D.11373
	subl	%edx, %ecx	# D.11373, D.11373
	movl	-76(%rbp), %edx	# j1, tmp828
	movslq	%edx, %rdx	# tmp828, tmp827
	movl	-144(%rbp), %esi	# i, tmp830
	movslq	%esi, %rsi	# tmp830, tmp829
	salq	$4, %rsi	#, tmp831
	addq	%rsi, %rdx	# tmp831, tmp832
	addq	$3276, %rdx	#, tmp833
	movl	%ecx, 8(%rax,%rdx,4)	# D.11373, img.229_342->m7
	jmp	.L244	#
.L245:
	.loc 1 1057 0
	movq	img(%rip), %rax	# img, img.230
	movl	-140(%rbp), %edx	# j, tmp835
	movslq	%edx, %rdx	# tmp835, tmp834
	movl	-32(%rbp,%rdx,4), %ecx	# m6, D.11373
	movl	-76(%rbp), %edx	# j1, tmp837
	movslq	%edx, %rdx	# tmp837, tmp836
	movl	-32(%rbp,%rdx,4), %edx	# m6, D.11373
	addl	%ecx, %edx	# D.11373, D.11373
	addl	$32, %edx	#, D.11373
	movl	%edx, %ecx	# D.11373, D.11373
	sarl	$6, %ecx	#, D.11373
	movl	-140(%rbp), %edx	# j, tmp839
	movslq	%edx, %rdx	# tmp839, tmp838
	movl	-144(%rbp), %esi	# i, tmp841
	movslq	%esi, %rsi	# tmp841, tmp840
	salq	$4, %rsi	#, tmp842
	addq	%rsi, %rdx	# tmp842, tmp843
	addq	$3276, %rdx	#, tmp844
	movl	%ecx, 8(%rax,%rdx,4)	# D.11373, img.230_346->m7
	.loc 1 1058 0
	movq	img(%rip), %rax	# img, img.231
	movl	-140(%rbp), %edx	# j, tmp846
	movslq	%edx, %rdx	# tmp846, tmp845
	movl	-32(%rbp,%rdx,4), %ecx	# m6, D.11373
	movl	-76(%rbp), %edx	# j1, tmp848
	movslq	%edx, %rdx	# tmp848, tmp847
	movl	-32(%rbp,%rdx,4), %edx	# m6, D.11373
	subl	%edx, %ecx	# D.11373, D.11373
	movl	%ecx, %edx	# D.11373, D.11373
	addl	$32, %edx	#, D.11373
	movl	%edx, %ecx	# D.11373, D.11373
	sarl	$6, %ecx	#, D.11373
	movl	-76(%rbp), %edx	# j1, tmp850
	movslq	%edx, %rdx	# tmp850, tmp849
	movl	-144(%rbp), %esi	# i, tmp852
	movslq	%esi, %rsi	# tmp852, tmp851
	salq	$4, %rsi	#, tmp853
	addq	%rsi, %rdx	# tmp853, tmp854
	addq	$3276, %rdx	#, tmp855
	movl	%ecx, 8(%rax,%rdx,4)	# D.11373, img.231_352->m7
.L244:
	.loc 1 1039 0
	addl	$1, -140(%rbp)	#, j
.L242:
	.loc 1 1039 0 is_stmt 0 discriminator 1
	cmpl	$1, -140(%rbp)	#, j
	jle	.L246	#,
	.loc 1 1028 0 is_stmt 1
	addl	$1, -144(%rbp)	#, i
.L239:
	.loc 1 1028 0 is_stmt 0 discriminator 1
	cmpl	$3, -144(%rbp)	#, i
	jg	.L247	#,
	.loc 1 1028 0 discriminator 2
	cmpl	$0, -96(%rbp)	#, lossless_qpprime
	je	.L248	#,
.L247:
	.loc 1 1065 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.232
	movl	72724(%rax), %eax	# img.232_360->residue_transform_flag, D.11373
	testl	%eax, %eax	# D.11373
	jne	.L249	#,
	.loc 1 1067 0
	movl	$0, -140(%rbp)	#, j
	jmp	.L250	#
.L255:
	.loc 1 1069 0
	movl	$0, -144(%rbp)	#, i
	jmp	.L251	#
.L254:
	.loc 1 1071 0
	cmpl	$0, -96(%rbp)	#, lossless_qpprime
	je	.L252	#,
	.loc 1 1072 0
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.233
	movq	6424(%rax), %rdx	# enc_picture.233_364->imgY, D.11384
	movq	img(%rip), %rax	# img, img.234
	movl	156(%rax), %ecx	# img.234_366->pix_y, D.11373
	movl	-152(%rbp), %eax	# block_y, tmp856
	addl	%eax, %ecx	# tmp856, D.11373
	movl	-140(%rbp), %eax	# j, tmp857
	addl	%ecx, %eax	# D.11373, D.11373
	cltq
	salq	$3, %rax	#, D.11375
	addq	%rdx, %rax	# D.11384, D.11384
	movq	(%rax), %rdx	# *_372, D.11385
	movq	img(%rip), %rax	# img, img.235
	movl	152(%rax), %ecx	# img.235_374->pix_x, D.11373
	movl	-148(%rbp), %eax	# block_x, tmp858
	addl	%eax, %ecx	# tmp858, D.11373
	movl	-144(%rbp), %eax	# i, tmp859
	addl	%ecx, %eax	# D.11373, D.11373
	cltq
	addq	%rax, %rax	# D.11375
	addq	%rax, %rdx	# D.11375, D.11385
	movq	img(%rip), %rax	# img, img.236
	movl	-140(%rbp), %ecx	# j, tmp861
	movslq	%ecx, %rcx	# tmp861, tmp860
	movl	-144(%rbp), %esi	# i, tmp863
	movslq	%esi, %rsi	# tmp863, tmp862
	salq	$4, %rsi	#, tmp864
	addq	%rsi, %rcx	# tmp864, tmp865
	addq	$3276, %rcx	#, tmp866
	movl	8(%rax,%rcx,4), %eax	# img.236_381->m7, D.11373
	movl	%eax, %ecx	# D.11373, D.11383
	movq	img(%rip), %rax	# img, img.237
	movl	-148(%rbp), %esi	# block_x, tmp867
	movl	-144(%rbp), %edi	# i, tmp868
	leal	(%rdi,%rsi), %r8d	#, D.11373
	movl	-152(%rbp), %esi	# block_y, tmp869
	movl	-140(%rbp), %edi	# j, tmp870
	addl	%edi, %esi	# tmp870, D.11373
	movslq	%esi, %rsi	# D.11373, tmp871
	movslq	%r8d, %rdi	# D.11373, tmp872
	salq	$4, %rdi	#, tmp873
	addq	%rdi, %rsi	# tmp873, tmp874
	addq	$6296, %rsi	#, tmp875
	movzwl	8(%rax,%rsi,2), %eax	# img.237_384->mpr, D.11383
	addl	%ecx, %eax	# D.11383, D.11383
	movw	%ax, (%rdx)	# D.11383, *_380
	jmp	.L253	#
.L252:
	.loc 1 1074 0
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.238
	movq	6424(%rax), %rdx	# enc_picture.238_389->imgY, D.11384
	movq	img(%rip), %rax	# img, img.239
	movl	156(%rax), %ecx	# img.239_391->pix_y, D.11373
	movl	-152(%rbp), %eax	# block_y, tmp876
	addl	%eax, %ecx	# tmp876, D.11373
	movl	-140(%rbp), %eax	# j, tmp877
	addl	%ecx, %eax	# D.11373, D.11373
	cltq
	salq	$3, %rax	#, D.11375
	addq	%rdx, %rax	# D.11384, D.11384
	movq	(%rax), %rdx	# *_397, D.11385
	movq	img(%rip), %rax	# img, img.240
	movl	152(%rax), %ecx	# img.240_399->pix_x, D.11373
	movl	-148(%rbp), %eax	# block_x, tmp878
	addl	%eax, %ecx	# tmp878, D.11373
	movl	-144(%rbp), %eax	# i, tmp879
	addl	%ecx, %eax	# D.11373, D.11373
	cltq
	addq	%rax, %rax	# D.11375
	addq	%rax, %rdx	# D.11375, D.11385
	movq	img(%rip), %rax	# img, img.241
	movl	-140(%rbp), %ecx	# j, tmp881
	movslq	%ecx, %rcx	# tmp881, tmp880
	movl	-144(%rbp), %esi	# i, tmp883
	movslq	%esi, %rsi	# tmp883, tmp882
	salq	$4, %rsi	#, tmp884
	addq	%rsi, %rcx	# tmp884, tmp885
	addq	$3276, %rcx	#, tmp886
	movl	8(%rax,%rcx,4), %eax	# img.241_406->m7, D.11373
	movw	%ax, (%rdx)	# D.11383, *_405
.L253:
	.loc 1 1069 0
	addl	$1, -144(%rbp)	#, i
.L251:
	.loc 1 1069 0 is_stmt 0 discriminator 1
	cmpl	$3, -144(%rbp)	#, i
	jle	.L254	#,
	.loc 1 1067 0 is_stmt 1
	addl	$1, -140(%rbp)	#, j
.L250:
	.loc 1 1067 0 is_stmt 0 discriminator 1
	cmpl	$3, -140(%rbp)	#, j
	jle	.L255	#,
.L249:
	.loc 1 1078 0 is_stmt 1
	movl	-116(%rbp), %eax	# nonzero, D.11373
	.loc 1 1079 0
	addq	$168, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	dct_luma, .-dct_luma
	.globl	dct_chroma
	.type	dct_chroma, @function
dct_chroma:
.LFB6:
	.loc 1 1099 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$392, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -388(%rbp)	# uv, uv
	movl	%esi, -392(%rbp)	# cr_cbp, cr_cbp
	.loc 1 1104 0
	movl	$0, -336(%rbp)	#, DCcoded
	.loc 1 1105 0
	movq	img(%rip), %rax	# img, img.242
	movq	14168(%rax), %rdx	# img.242_107->mb_data, D.11387
	movq	img(%rip), %rax	# img, img.243
	movl	12(%rax), %eax	# img.243_109->current_mb_nr, D.11388
	cltq
	imulq	$632, %rax, %rax	#, D.11389, D.11389
	addq	%rdx, %rax	# D.11387, tmp1128
	movq	%rax, -264(%rbp)	# tmp1128, currMB
	.loc 1 1111 0
	movq	img(%rip), %rax	# img, img.244
	movq	14144(%rax), %rax	# img.244_114->cofDC, D.11390
	movl	-388(%rbp), %edx	# uv, tmp1129
	movslq	%edx, %rdx	# tmp1129, D.11391
	addq	$1, %rdx	#, D.11391
	salq	$3, %rdx	#, D.11391
	addq	%rdx, %rax	# D.11391, D.11390
	movq	(%rax), %rax	# *_120, D.11392
	movq	(%rax), %rax	# *_121, tmp1130
	movq	%rax, -256(%rbp)	# tmp1130, DCLevel
	.loc 1 1112 0
	movq	img(%rip), %rax	# img, img.245
	movq	14144(%rax), %rax	# img.245_123->cofDC, D.11390
	movl	-388(%rbp), %edx	# uv, tmp1131
	movslq	%edx, %rdx	# tmp1131, D.11391
	addq	$1, %rdx	#, D.11391
	salq	$3, %rdx	#, D.11391
	addq	%rdx, %rax	# D.11391, D.11390
	movq	(%rax), %rax	# *_128, D.11392
	movq	8(%rax), %rax	# MEM[(int * *)_129 + 8B], tmp1132
	movq	%rax, -248(%rbp)	# tmp1132, DCRun
	.loc 1 1115 0
	movq	-264(%rbp), %rax	# currMB, tmp1133
	movl	72(%rax), %eax	# currMB_113->mb_type, D.11388
	cmpl	$9, %eax	#, D.11388
	je	.L258	#,
	.loc 1 1115 0 is_stmt 0 discriminator 2
	movq	-264(%rbp), %rax	# currMB, tmp1134
	movl	72(%rax), %eax	# currMB_113->mb_type, D.11388
	cmpl	$10, %eax	#, D.11388
	je	.L258	#,
	.loc 1 1115 0 discriminator 1
	movq	-264(%rbp), %rax	# currMB, tmp1135
	movl	72(%rax), %eax	# currMB_113->mb_type, D.11388
	cmpl	$13, %eax	#, D.11388
	jne	.L259	#,
.L258:
	movl	$1, %eax	#, iftmp.246
	jmp	.L260	#
.L259:
	.loc 1 1115 0 discriminator 3
	movl	$0, %eax	#, iftmp.246
.L260:
	.loc 1 1115 0 discriminator 4
	movl	%eax, -312(%rbp)	# iftmp.246, intra
	.loc 1 1116 0 is_stmt 1 discriminator 4
	movq	img(%rip), %rax	# img, img.247
	movl	72692(%rax), %eax	# img.247_137->num_blk8x8_uv, D.11388
	movl	%eax, %edx	# D.11388, tmp1136
	shrl	$31, %edx	#, tmp1136
	addl	%edx, %eax	# tmp1136, tmp1137
	sarl	%eax	# tmp1138
	imull	-388(%rbp), %eax	# uv, tmp1139
	movl	%eax, -308(%rbp)	# tmp1139, uv_scale
	.loc 1 1119 0 discriminator 4
	movq	$0, -176(%rbp)	#, cbpblk_pattern
	movq	$983040, -168(%rbp)	#, cbpblk_pattern
	movq	$16711680, -160(%rbp)	#, cbpblk_pattern
	movl	$4294901760, %eax	#, tmp2739
	movq	%rax, -152(%rbp)	# tmp2739, cbpblk_pattern
	.loc 1 1120 0 discriminator 4
	movq	img(%rip), %rax	# img, img.248
	movl	72700(%rax), %eax	# img.248_141->yuv_format, tmp1140
	movl	%eax, -304(%rbp)	# tmp1140, yuv
	.loc 1 1124 0 discriminator 4
	movl	$0, -324(%rbp)	#, qp_per_dc
	.loc 1 1125 0 discriminator 4
	movl	$0, -320(%rbp)	#, qp_rem_dc
	.loc 1 1126 0 discriminator 4
	movl	$0, -316(%rbp)	#, q_bits_422
	.loc 1 1127 0 discriminator 4
	movq	-264(%rbp), %rax	# currMB, tmp1141
	movl	12(%rax), %edx	# currMB_113->qp, D.11388
	movq	img(%rip), %rax	# img, img.250
	movl	72668(%rax), %eax	# img.250_147->bitdepth_luma_qp_scale, D.11388
	addl	%edx, %eax	# D.11388, D.11388
	testl	%eax, %eax	# D.11388
	jne	.L261	#,
	.loc 1 1127 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.251
	movl	72704(%rax), %eax	# img.251_150->lossless_qpprime_flag, D.11388
	cmpl	$1, %eax	#, D.11388
	jne	.L261	#,
	.loc 1 1127 0 discriminator 3
	movl	$1, %eax	#, iftmp.249
	jmp	.L262	#
.L261:
	.loc 1 1127 0 discriminator 2
	movl	$0, %eax	#, iftmp.249
.L262:
	.loc 1 1127 0 discriminator 4
	movl	%eax, -300(%rbp)	# iftmp.249, lossless_qpprime
	.loc 1 1129 0 is_stmt 1 discriminator 4
	movq	-264(%rbp), %rax	# currMB, tmp1142
	movl	12(%rax), %edx	# currMB_113->qp, D.11388
	movq	img(%rip), %rax	# img, img.252
	movl	-388(%rbp), %ecx	# uv, tmp1144
	movslq	%ecx, %rcx	# tmp1144, tmp1143
	addq	$18176, %rcx	#, tmp1145
	movl	12(%rax,%rcx,4), %eax	# img.252_156->chroma_qp_offset, D.11388
	addl	%edx, %eax	# D.11388, tmp1146
	movl	%eax, -296(%rbp)	# tmp1146, qp_c
	.loc 1 1130 0 discriminator 4
	movq	img(%rip), %rax	# img, img.254
	movl	72672(%rax), %eax	# img.254_159->bitdepth_chroma_qp_scale, D.11388
	negl	%eax	# D.11388
	cmpl	-296(%rbp), %eax	# qp_c, D.11388
	jle	.L263	#,
	.loc 1 1130 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.255
	movl	72672(%rax), %eax	# img.255_162->bitdepth_chroma_qp_scale, D.11388
	negl	%eax	# iftmp.253
	jmp	.L264	#
.L263:
	.loc 1 1130 0 discriminator 2
	movl	$51, %eax	#, tmp1147
	cmpl	$51, -296(%rbp)	#, qp_c
	cmovle	-296(%rbp), %eax	# qp_c,, iftmp.253
.L264:
	.loc 1 1130 0 discriminator 3
	movl	%eax, -296(%rbp)	# iftmp.253, qp_c
	.loc 1 1131 0 is_stmt 1 discriminator 3
	cmpl	$0, -296(%rbp)	#, qp_c
	js	.L265	#,
	.loc 1 1131 0 is_stmt 0 discriminator 1
	movl	-296(%rbp), %eax	# qp_c, tmp1149
	cltq
	movzbl	QP_SCALE_CR(%rax), %eax	# QP_SCALE_CR, D.11393
	movzbl	%al, %eax	# D.11393, iftmp.256
	jmp	.L266	#
.L265:
	.loc 1 1131 0 discriminator 2
	movl	-296(%rbp), %eax	# qp_c, iftmp.256
.L266:
	.loc 1 1131 0 discriminator 3
	movl	%eax, -296(%rbp)	# iftmp.256, qp_c
	.loc 1 1133 0 is_stmt 1 discriminator 3
	movq	img(%rip), %rax	# img, img.257
	movl	72672(%rax), %edx	# img.257_171->bitdepth_chroma_qp_scale, D.11388
	movl	-296(%rbp), %eax	# qp_c, tmp1150
	leal	(%rdx,%rax), %ecx	#, D.11388
	movl	$715827883, %edx	#, tmp1152
	movl	%ecx, %eax	# D.11388, tmp2734
	imull	%edx	# tmp1152
	movl	%ecx, %eax	# D.11388, tmp1153
	sarl	$31, %eax	#, tmp1153
	subl	%eax, %edx	# tmp1153, tmp1154
	movl	%edx, %eax	# tmp1154, tmp1154
	movl	%eax, -292(%rbp)	# tmp1154, qp_per
	.loc 1 1134 0 discriminator 3
	movq	img(%rip), %rax	# img, img.258
	movl	72672(%rax), %edx	# img.258_175->bitdepth_chroma_qp_scale, D.11388
	movl	-296(%rbp), %eax	# qp_c, tmp1155
	leal	(%rdx,%rax), %ecx	#, D.11388
	movl	$715827883, %edx	#, tmp1157
	movl	%ecx, %eax	# D.11388, tmp2735
	imull	%edx	# tmp1157
	movl	%ecx, %eax	# D.11388, tmp1158
	sarl	$31, %eax	#, tmp1158
	subl	%eax, %edx	# tmp1158, tmp1159
	movl	%edx, %eax	# tmp1159, tmp1159
	movl	%eax, -288(%rbp)	# tmp1159, qp_rem
	movl	-288(%rbp), %edx	# qp_rem, tmp1160
	movl	%edx, %eax	# tmp1160, tmp1161
	addl	%eax, %eax	# tmp1161
	addl	%edx, %eax	# tmp1160, tmp1161
	addl	%eax, %eax	# tmp1162
	subl	%eax, %ecx	# tmp1161, tmp1163
	movl	%ecx, %eax	# tmp1163, tmp1163
	movl	%eax, -288(%rbp)	# tmp1163, qp_rem
	.loc 1 1135 0 discriminator 3
	movl	-292(%rbp), %eax	# qp_per, tmp1167
	addl	$15, %eax	#, tmp1166
	movl	%eax, -284(%rbp)	# tmp1166, q_bits
	.loc 1 1137 0 discriminator 3
	movq	img(%rip), %rax	# img, img.259
	movl	72700(%rax), %eax	# img.259_180->yuv_format, D.11388
	cmpl	$2, %eax	#, D.11388
	jne	.L267	#,
	.loc 1 1140 0
	movl	-296(%rbp), %eax	# qp_c, tmp1168
	leal	3(%rax), %edx	#, D.11388
	movq	img(%rip), %rax	# img, img.260
	movl	72672(%rax), %eax	# img.260_183->bitdepth_chroma_qp_scale, D.11388
	leal	(%rdx,%rax), %ecx	#, D.11388
	movl	$715827883, %edx	#, tmp1170
	movl	%ecx, %eax	# D.11388, tmp2736
	imull	%edx	# tmp1170
	movl	%ecx, %eax	# D.11388, tmp1171
	sarl	$31, %eax	#, tmp1171
	subl	%eax, %edx	# tmp1171, tmp1172
	movl	%edx, %eax	# tmp1172, tmp1172
	movl	%eax, -324(%rbp)	# tmp1172, qp_per_dc
	.loc 1 1141 0
	movl	-296(%rbp), %eax	# qp_c, tmp1173
	leal	3(%rax), %edx	#, D.11388
	movq	img(%rip), %rax	# img, img.261
	movl	72672(%rax), %eax	# img.261_188->bitdepth_chroma_qp_scale, D.11388
	leal	(%rdx,%rax), %ecx	#, D.11388
	movl	$715827883, %edx	#, tmp1175
	movl	%ecx, %eax	# D.11388, tmp2737
	imull	%edx	# tmp1175
	movl	%ecx, %eax	# D.11388, tmp1176
	sarl	$31, %eax	#, tmp1176
	subl	%eax, %edx	# tmp1176, tmp1177
	movl	%edx, %eax	# tmp1177, tmp1177
	movl	%eax, -320(%rbp)	# tmp1177, qp_rem_dc
	movl	-320(%rbp), %edx	# qp_rem_dc, tmp1178
	movl	%edx, %eax	# tmp1178, tmp1179
	addl	%eax, %eax	# tmp1179
	addl	%edx, %eax	# tmp1178, tmp1179
	addl	%eax, %eax	# tmp1180
	subl	%eax, %ecx	# tmp1179, tmp1181
	movl	%ecx, %eax	# tmp1181, tmp1181
	movl	%eax, -320(%rbp)	# tmp1181, qp_rem_dc
	.loc 1 1143 0
	movl	-324(%rbp), %eax	# qp_per_dc, tmp1185
	addl	$15, %eax	#, tmp1184
	movl	%eax, -316(%rbp)	# tmp1184, q_bits_422
.L267:
	.loc 1 1149 0
	movl	$0, -368(%rbp)	#, n2
	jmp	.L268	#
.L281:
	.loc 1 1151 0
	movl	$0, -364(%rbp)	#, n1
	jmp	.L269	#
.L280:
	.loc 1 1155 0
	movl	$0, -376(%rbp)	#, j
	jmp	.L270	#
.L274:
	.loc 1 1157 0
	movl	-376(%rbp), %eax	# j, tmp1190
	movl	-368(%rbp), %edx	# n2, tmp1191
	addl	%edx, %eax	# tmp1191, tmp1189
	movl	%eax, -280(%rbp)	# tmp1189, mb_y
	.loc 1 1158 0
	movl	$0, -380(%rbp)	#, i
	jmp	.L271	#
.L272:
	.loc 1 1160 0 discriminator 2
	movl	$3, %eax	#, tmp1195
	subl	-380(%rbp), %eax	# i, tmp1194
	movl	%eax, -276(%rbp)	# tmp1194, i1
	.loc 1 1161 0 discriminator 2
	movq	img(%rip), %rax	# img, img.262
	movl	-364(%rbp), %edx	# n1, tmp1196
	movl	-380(%rbp), %ecx	# i, tmp1197
	addl	%edx, %ecx	# tmp1196, D.11388
	movl	-280(%rbp), %edx	# mb_y, tmp1199
	movslq	%edx, %rdx	# tmp1199, tmp1198
	movslq	%ecx, %rcx	# D.11388, tmp1200
	salq	$4, %rcx	#, tmp1201
	addq	%rcx, %rdx	# tmp1201, tmp1202
	addq	$3276, %rdx	#, tmp1203
	movl	8(%rax,%rdx,4), %edx	# img.262_203->m7, D.11388
	movq	img(%rip), %rax	# img, img.263
	movl	-364(%rbp), %ecx	# n1, tmp1204
	movl	-276(%rbp), %esi	# i1, tmp1205
	addl	%ecx, %esi	# tmp1204, D.11388
	movl	-280(%rbp), %ecx	# mb_y, tmp1207
	movslq	%ecx, %rcx	# tmp1207, tmp1206
	movslq	%esi, %rsi	# D.11388, tmp1208
	salq	$4, %rsi	#, tmp1209
	addq	%rsi, %rcx	# tmp1209, tmp1210
	addq	$3276, %rcx	#, tmp1211
	movl	8(%rax,%rcx,4), %eax	# img.263_206->m7, D.11388
	addl	%eax, %edx	# D.11388, D.11388
	movl	-380(%rbp), %eax	# i, tmp1213
	cltq
	movl	%edx, -208(%rbp,%rax,4)	# D.11388, m5
	.loc 1 1162 0 discriminator 2
	movq	img(%rip), %rax	# img, img.264
	movl	-364(%rbp), %edx	# n1, tmp1214
	movl	-380(%rbp), %ecx	# i, tmp1215
	addl	%edx, %ecx	# tmp1214, D.11388
	movl	-280(%rbp), %edx	# mb_y, tmp1217
	movslq	%edx, %rdx	# tmp1217, tmp1216
	movslq	%ecx, %rcx	# D.11388, tmp1218
	salq	$4, %rcx	#, tmp1219
	addq	%rcx, %rdx	# tmp1219, tmp1220
	addq	$3276, %rdx	#, tmp1221
	movl	8(%rax,%rdx,4), %edx	# img.264_210->m7, D.11388
	movq	img(%rip), %rax	# img, img.265
	movl	-364(%rbp), %ecx	# n1, tmp1222
	movl	-276(%rbp), %esi	# i1, tmp1223
	addl	%ecx, %esi	# tmp1222, D.11388
	movl	-280(%rbp), %ecx	# mb_y, tmp1225
	movslq	%ecx, %rcx	# tmp1225, tmp1224
	movslq	%esi, %rsi	# D.11388, tmp1226
	salq	$4, %rsi	#, tmp1227
	addq	%rsi, %rcx	# tmp1227, tmp1228
	addq	$3276, %rcx	#, tmp1229
	movl	8(%rax,%rcx,4), %eax	# img.265_213->m7, D.11388
	subl	%eax, %edx	# D.11388, D.11388
	movl	-276(%rbp), %eax	# i1, tmp1231
	cltq
	movl	%edx, -208(%rbp,%rax,4)	# D.11388, m5
	.loc 1 1158 0 discriminator 2
	addl	$1, -380(%rbp)	#, i
.L271:
	.loc 1 1158 0 is_stmt 0 discriminator 1
	cmpl	$1, -380(%rbp)	#, i
	jle	.L272	#,
	.loc 1 1164 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.266
	movl	-208(%rbp), %ecx	# m5, D.11388
	movl	-204(%rbp), %edx	# m5, D.11388
	addl	%edx, %ecx	# D.11388, D.11388
	movl	-280(%rbp), %edx	# mb_y, tmp1233
	movslq	%edx, %rdx	# tmp1233, tmp1232
	movl	-364(%rbp), %esi	# n1, tmp1235
	movslq	%esi, %rsi	# tmp1235, tmp1234
	salq	$4, %rsi	#, tmp1236
	addq	%rsi, %rdx	# tmp1236, tmp1237
	addq	$3276, %rdx	#, tmp1238
	movl	%ecx, 8(%rax,%rdx,4)	# D.11388, img.266_218->m7
	.loc 1 1165 0
	movq	img(%rip), %rax	# img, img.267
	movl	-364(%rbp), %edx	# n1, tmp1239
	leal	2(%rdx), %esi	#, D.11388
	movl	-208(%rbp), %ecx	# m5, D.11388
	movl	-204(%rbp), %edx	# m5, D.11388
	subl	%edx, %ecx	# D.11388, D.11388
	movl	-280(%rbp), %edx	# mb_y, tmp1241
	movslq	%edx, %rdx	# tmp1241, tmp1240
	movslq	%esi, %rsi	# D.11388, tmp1242
	salq	$4, %rsi	#, tmp1243
	addq	%rsi, %rdx	# tmp1243, tmp1244
	addq	$3276, %rdx	#, tmp1245
	movl	%ecx, 8(%rax,%rdx,4)	# D.11388, img.267_222->m7
	.loc 1 1166 0
	movq	img(%rip), %rax	# img, img.268
	movl	-364(%rbp), %edx	# n1, tmp1246
	leal	1(%rdx), %esi	#, D.11388
	movl	-196(%rbp), %edx	# m5, D.11388
	leal	(%rdx,%rdx), %ecx	#, D.11388
	movl	-200(%rbp), %edx	# m5, D.11388
	addl	%edx, %ecx	# D.11388, D.11388
	movl	-280(%rbp), %edx	# mb_y, tmp1248
	movslq	%edx, %rdx	# tmp1248, tmp1247
	movslq	%esi, %rsi	# D.11388, tmp1249
	salq	$4, %rsi	#, tmp1250
	addq	%rsi, %rdx	# tmp1250, tmp1251
	addq	$3276, %rdx	#, tmp1252
	movl	%ecx, 8(%rax,%rdx,4)	# D.11388, img.268_227->m7
	.loc 1 1167 0
	movq	img(%rip), %rdx	# img, img.269
	movl	-364(%rbp), %eax	# n1, tmp1253
	leal	3(%rax), %edi	#, D.11388
	movl	-196(%rbp), %ecx	# m5, D.11388
	movl	-200(%rbp), %esi	# m5, D.11388
	movl	$0, %eax	#, tmp1254
	subl	%esi, %eax	# D.11388, tmp1254
	addl	%eax, %eax	# tmp1255
	addl	%eax, %ecx	# D.11388, D.11388
	movl	-280(%rbp), %eax	# mb_y, tmp1257
	cltq
	movslq	%edi, %rsi	# D.11388, tmp1258
	salq	$4, %rsi	#, tmp1259
	addq	%rsi, %rax	# tmp1259, tmp1260
	addq	$3276, %rax	#, tmp1261
	movl	%ecx, 8(%rdx,%rax,4)	# D.11388, img.269_233->m7
	.loc 1 1155 0
	addl	$1, -376(%rbp)	#, j
.L270:
	.loc 1 1155 0 is_stmt 0 discriminator 1
	cmpl	$3, -376(%rbp)	#, j
	jg	.L273	#,
	.loc 1 1155 0 discriminator 2
	cmpl	$0, -300(%rbp)	#, lossless_qpprime
	je	.L274	#,
.L273:
	.loc 1 1172 0 is_stmt 1
	movl	$0, -380(%rbp)	#, i
	jmp	.L275	#
.L279:
	.loc 1 1174 0
	movl	-380(%rbp), %eax	# i, tmp1266
	movl	-364(%rbp), %edx	# n1, tmp1267
	addl	%edx, %eax	# tmp1267, tmp1265
	movl	%eax, -272(%rbp)	# tmp1265, j1
	.loc 1 1175 0
	movl	$0, -376(%rbp)	#, j
	jmp	.L276	#
.L277:
	.loc 1 1177 0 discriminator 2
	movl	$3, %eax	#, tmp1271
	subl	-376(%rbp), %eax	# j, tmp1270
	movl	%eax, -268(%rbp)	# tmp1270, j2
	.loc 1 1178 0 discriminator 2
	movq	img(%rip), %rax	# img, img.270
	movl	-376(%rbp), %edx	# j, tmp1272
	movl	-368(%rbp), %ecx	# n2, tmp1273
	addl	%ecx, %edx	# tmp1273, D.11388
	movslq	%edx, %rdx	# D.11388, tmp1274
	movl	-272(%rbp), %ecx	# j1, tmp1276
	movslq	%ecx, %rcx	# tmp1276, tmp1275
	salq	$4, %rcx	#, tmp1277
	addq	%rcx, %rdx	# tmp1277, tmp1278
	addq	$3276, %rdx	#, tmp1279
	movl	8(%rax,%rdx,4), %edx	# img.270_244->m7, D.11388
	movq	img(%rip), %rax	# img, img.271
	movl	-268(%rbp), %ecx	# j2, tmp1280
	movl	-368(%rbp), %esi	# n2, tmp1281
	addl	%esi, %ecx	# tmp1281, D.11388
	movslq	%ecx, %rcx	# D.11388, tmp1282
	movl	-272(%rbp), %esi	# j1, tmp1284
	movslq	%esi, %rsi	# tmp1284, tmp1283
	salq	$4, %rsi	#, tmp1285
	addq	%rsi, %rcx	# tmp1285, tmp1286
	addq	$3276, %rcx	#, tmp1287
	movl	8(%rax,%rcx,4), %eax	# img.271_247->m7, D.11388
	addl	%eax, %edx	# D.11388, D.11388
	movl	-376(%rbp), %eax	# j, tmp1289
	cltq
	movl	%edx, -208(%rbp,%rax,4)	# D.11388, m5
	.loc 1 1179 0 discriminator 2
	movq	img(%rip), %rax	# img, img.272
	movl	-376(%rbp), %edx	# j, tmp1290
	movl	-368(%rbp), %ecx	# n2, tmp1291
	addl	%ecx, %edx	# tmp1291, D.11388
	movslq	%edx, %rdx	# D.11388, tmp1292
	movl	-272(%rbp), %ecx	# j1, tmp1294
	movslq	%ecx, %rcx	# tmp1294, tmp1293
	salq	$4, %rcx	#, tmp1295
	addq	%rcx, %rdx	# tmp1295, tmp1296
	addq	$3276, %rdx	#, tmp1297
	movl	8(%rax,%rdx,4), %edx	# img.272_251->m7, D.11388
	movq	img(%rip), %rax	# img, img.273
	movl	-268(%rbp), %ecx	# j2, tmp1298
	movl	-368(%rbp), %esi	# n2, tmp1299
	addl	%esi, %ecx	# tmp1299, D.11388
	movslq	%ecx, %rcx	# D.11388, tmp1300
	movl	-272(%rbp), %esi	# j1, tmp1302
	movslq	%esi, %rsi	# tmp1302, tmp1301
	salq	$4, %rsi	#, tmp1303
	addq	%rsi, %rcx	# tmp1303, tmp1304
	addq	$3276, %rcx	#, tmp1305
	movl	8(%rax,%rcx,4), %eax	# img.273_254->m7, D.11388
	subl	%eax, %edx	# D.11388, D.11388
	movl	-268(%rbp), %eax	# j2, tmp1307
	cltq
	movl	%edx, -208(%rbp,%rax,4)	# D.11388, m5
	.loc 1 1175 0 discriminator 2
	addl	$1, -376(%rbp)	#, j
.L276:
	.loc 1 1175 0 is_stmt 0 discriminator 1
	cmpl	$1, -376(%rbp)	#, j
	jle	.L277	#,
	.loc 1 1181 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.274
	movl	-208(%rbp), %ecx	# m5, D.11388
	movl	-204(%rbp), %edx	# m5, D.11388
	addl	%edx, %ecx	# D.11388, D.11388
	movl	-368(%rbp), %edx	# n2, tmp1309
	movslq	%edx, %rdx	# tmp1309, tmp1308
	movl	-272(%rbp), %esi	# j1, tmp1311
	movslq	%esi, %rsi	# tmp1311, tmp1310
	salq	$4, %rsi	#, tmp1312
	addq	%rsi, %rdx	# tmp1312, tmp1313
	addq	$3276, %rdx	#, tmp1314
	movl	%ecx, 8(%rax,%rdx,4)	# D.11388, img.274_259->m7
	.loc 1 1182 0
	movq	img(%rip), %rax	# img, img.275
	movl	-368(%rbp), %edx	# n2, tmp1315
	leal	2(%rdx), %esi	#, D.11388
	movl	-208(%rbp), %ecx	# m5, D.11388
	movl	-204(%rbp), %edx	# m5, D.11388
	subl	%edx, %ecx	# D.11388, D.11388
	movslq	%esi, %rdx	# D.11388, tmp1316
	movl	-272(%rbp), %esi	# j1, tmp1318
	movslq	%esi, %rsi	# tmp1318, tmp1317
	salq	$4, %rsi	#, tmp1319
	addq	%rsi, %rdx	# tmp1319, tmp1320
	addq	$3276, %rdx	#, tmp1321
	movl	%ecx, 8(%rax,%rdx,4)	# D.11388, img.275_263->m7
	.loc 1 1183 0
	movq	img(%rip), %rax	# img, img.276
	movl	-368(%rbp), %edx	# n2, tmp1322
	leal	1(%rdx), %esi	#, D.11388
	movl	-196(%rbp), %edx	# m5, D.11388
	leal	(%rdx,%rdx), %ecx	#, D.11388
	movl	-200(%rbp), %edx	# m5, D.11388
	addl	%edx, %ecx	# D.11388, D.11388
	movslq	%esi, %rdx	# D.11388, tmp1323
	movl	-272(%rbp), %esi	# j1, tmp1325
	movslq	%esi, %rsi	# tmp1325, tmp1324
	salq	$4, %rsi	#, tmp1326
	addq	%rsi, %rdx	# tmp1326, tmp1327
	addq	$3276, %rdx	#, tmp1328
	movl	%ecx, 8(%rax,%rdx,4)	# D.11388, img.276_268->m7
	.loc 1 1184 0
	movq	img(%rip), %rdx	# img, img.277
	movl	-368(%rbp), %eax	# n2, tmp1329
	leal	3(%rax), %edi	#, D.11388
	movl	-196(%rbp), %ecx	# m5, D.11388
	movl	-200(%rbp), %esi	# m5, D.11388
	movl	$0, %eax	#, tmp1330
	subl	%esi, %eax	# D.11388, tmp1330
	addl	%eax, %eax	# tmp1331
	addl	%eax, %ecx	# D.11388, D.11388
	movslq	%edi, %rax	# D.11388, tmp1332
	movl	-272(%rbp), %esi	# j1, tmp1334
	movslq	%esi, %rsi	# tmp1334, tmp1333
	salq	$4, %rsi	#, tmp1335
	addq	%rsi, %rax	# tmp1335, tmp1336
	addq	$3276, %rax	#, tmp1337
	movl	%ecx, 8(%rdx,%rax,4)	# D.11388, img.277_274->m7
	.loc 1 1172 0
	addl	$1, -380(%rbp)	#, i
.L275:
	.loc 1 1172 0 is_stmt 0 discriminator 1
	cmpl	$3, -380(%rbp)	#, i
	jg	.L278	#,
	.loc 1 1172 0 discriminator 2
	cmpl	$0, -300(%rbp)	#, lossless_qpprime
	je	.L279	#,
.L278:
	.loc 1 1151 0 is_stmt 1
	addl	$4, -364(%rbp)	#, n1
.L269:
	.loc 1 1151 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.278
	movl	72708(%rax), %eax	# img.278_197->mb_cr_size_x, D.11388
	cmpl	-364(%rbp), %eax	# n1, D.11388
	jg	.L280	#,
	.loc 1 1149 0 is_stmt 1
	addl	$4, -368(%rbp)	#, n2
.L268:
	.loc 1 1149 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.279
	movl	72712(%rax), %eax	# img.279_194->mb_cr_size_y, D.11388
	cmpl	-368(%rbp), %eax	# n2, D.11388
	jg	.L281	#,
	.loc 1 1189 0 is_stmt 1
	cmpl	$1, -304(%rbp)	#, yuv
	jne	.L282	#,
	.loc 1 1193 0
	movq	img(%rip), %rax	# img, img.280
	movl	13112(%rax), %edx	# img.280_283->m7, D.11388
	movq	img(%rip), %rax	# img, img.281
	movl	13368(%rax), %eax	# img.281_285->m7, D.11388
	addl	%eax, %edx	# D.11388, D.11388
	movq	img(%rip), %rax	# img, img.282
	movl	13128(%rax), %eax	# img.282_288->m7, D.11388
	addl	%eax, %edx	# D.11388, D.11388
	movq	img(%rip), %rax	# img, img.283
	movl	13384(%rax), %eax	# img.283_291->m7, D.11388
	addl	%edx, %eax	# D.11388, D.11388
	movl	%eax, -224(%rbp)	# D.11388, m1
	.loc 1 1194 0
	movq	img(%rip), %rax	# img, img.284
	movl	13112(%rax), %edx	# img.284_294->m7, D.11388
	movq	img(%rip), %rax	# img, img.285
	movl	13368(%rax), %eax	# img.285_296->m7, D.11388
	subl	%eax, %edx	# D.11388, D.11388
	movq	img(%rip), %rax	# img, img.286
	movl	13128(%rax), %eax	# img.286_299->m7, D.11388
	addl	%eax, %edx	# D.11388, D.11388
	movq	img(%rip), %rax	# img, img.287
	movl	13384(%rax), %eax	# img.287_302->m7, D.11388
	subl	%eax, %edx	# D.11388, D.11388
	movl	%edx, %eax	# D.11388, D.11388
	movl	%eax, -220(%rbp)	# D.11388, m1
	.loc 1 1195 0
	movq	img(%rip), %rax	# img, img.288
	movl	13112(%rax), %edx	# img.288_305->m7, D.11388
	movq	img(%rip), %rax	# img, img.289
	movl	13368(%rax), %eax	# img.289_307->m7, D.11388
	addl	%eax, %edx	# D.11388, D.11388
	movq	img(%rip), %rax	# img, img.290
	movl	13128(%rax), %eax	# img.290_310->m7, D.11388
	subl	%eax, %edx	# D.11388, D.11388
	movq	img(%rip), %rax	# img, img.291
	movl	13384(%rax), %eax	# img.291_313->m7, D.11388
	subl	%eax, %edx	# D.11388, D.11388
	movl	%edx, %eax	# D.11388, D.11388
	movl	%eax, -216(%rbp)	# D.11388, m1
	.loc 1 1196 0
	movq	img(%rip), %rax	# img, img.292
	movl	13112(%rax), %edx	# img.292_316->m7, D.11388
	movq	img(%rip), %rax	# img, img.293
	movl	13368(%rax), %eax	# img.293_318->m7, D.11388
	subl	%eax, %edx	# D.11388, D.11388
	movq	img(%rip), %rax	# img, img.294
	movl	13128(%rax), %eax	# img.294_321->m7, D.11388
	subl	%eax, %edx	# D.11388, D.11388
	movq	img(%rip), %rax	# img, img.295
	movl	13384(%rax), %eax	# img.295_324->m7, D.11388
	addl	%edx, %eax	# D.11388, D.11388
	movl	%eax, -212(%rbp)	# D.11388, m1
	.loc 1 1199 0
	movl	$-1, -348(%rbp)	#, run
	.loc 1 1200 0
	movl	$0, -352(%rbp)	#, scan_pos
	.loc 1 1202 0
	movl	$0, -360(%rbp)	#, coeff_ctr
	jmp	.L283	#
.L288:
	.loc 1 1204 0
	addl	$1, -348(%rbp)	#, run
	.loc 1 1205 0
	movl	$0, -372(%rbp)	#, ilev
	.loc 1 1207 0
	cmpl	$1, -312(%rbp)	#, intra
	jne	.L284	#,
	.loc 1 1208 0
	movl	-360(%rbp), %eax	# coeff_ctr, tmp1339
	cltq
	movl	-224(%rbp,%rax,4), %eax	# m1, D.11388
	movl	%eax, %ecx	# D.11388, tmp1340
	sarl	$31, %ecx	#, tmp1340
	xorl	%ecx, %eax	# tmp1340, D.11388
	movl	%eax, %edx	# D.11388, D.11388
	subl	%ecx, %edx	# tmp1340, D.11388
	movl	-288(%rbp), %eax	# qp_rem, tmp1342
	movslq	%eax, %rsi	# tmp1342, tmp1341
	movl	-388(%rbp), %eax	# uv, tmp1344
	movslq	%eax, %rcx	# tmp1344, tmp1343
	movq	%rcx, %rax	# tmp1343, tmp1345
	addq	%rax, %rax	# tmp1345
	addq	%rcx, %rax	# tmp1343, tmp1345
	addq	%rax, %rax	# tmp1346
	addq	%rsi, %rax	# tmp1341, tmp1347
	salq	$6, %rax	#, tmp1348
	addq	$LevelScale4x4Chroma_Intra, %rax	#, tmp1349
	movl	(%rax), %eax	# LevelScale4x4Chroma_Intra, D.11388
	movl	%edx, %ecx	# D.11388, D.11388
	imull	%eax, %ecx	# D.11388, D.11388
	movl	-292(%rbp), %eax	# qp_per, tmp1351
	movslq	%eax, %rsi	# tmp1351, tmp1350
	movl	-388(%rbp), %eax	# uv, tmp1353
	movslq	%eax, %rdx	# tmp1353, tmp1352
	movq	%rdx, %rax	# tmp1352, tmp1354
	addq	%rax, %rax	# tmp1354
	addq	%rdx, %rax	# tmp1352, tmp1354
	salq	$2, %rax	#, tmp1354
	addq	%rdx, %rax	# tmp1352, tmp1354
	addq	%rsi, %rax	# tmp1350, tmp1355
	salq	$6, %rax	#, tmp1356
	addq	$LevelOffset4x4Chroma_Intra, %rax	#, tmp1357
	movl	(%rax), %eax	# LevelOffset4x4Chroma_Intra, D.11388
	addl	%eax, %eax	# D.11388
	leal	(%rcx,%rax), %edx	#, D.11388
	movl	-284(%rbp), %eax	# q_bits, tmp1358
	addl	$1, %eax	#, D.11388
	movl	%eax, %ecx	# D.11388, tmp2760
	sarl	%cl, %edx	# tmp2760, tmp1359
	movl	%edx, %eax	# tmp1359, tmp1359
	movl	%eax, -356(%rbp)	# tmp1359, level
	jmp	.L285	#
.L284:
	.loc 1 1210 0
	movl	-360(%rbp), %eax	# coeff_ctr, tmp1361
	cltq
	movl	-224(%rbp,%rax,4), %eax	# m1, D.11388
	movl	%eax, %ecx	# D.11388, tmp1362
	sarl	$31, %ecx	#, tmp1362
	xorl	%ecx, %eax	# tmp1362, D.11388
	movl	%eax, %edx	# D.11388, D.11388
	subl	%ecx, %edx	# tmp1362, D.11388
	movl	-288(%rbp), %eax	# qp_rem, tmp1364
	movslq	%eax, %rsi	# tmp1364, tmp1363
	movl	-388(%rbp), %eax	# uv, tmp1366
	movslq	%eax, %rcx	# tmp1366, tmp1365
	movq	%rcx, %rax	# tmp1365, tmp1367
	addq	%rax, %rax	# tmp1367
	addq	%rcx, %rax	# tmp1365, tmp1367
	addq	%rax, %rax	# tmp1368
	addq	%rsi, %rax	# tmp1363, tmp1369
	salq	$6, %rax	#, tmp1370
	addq	$LevelScale4x4Chroma_Inter, %rax	#, tmp1371
	movl	(%rax), %eax	# LevelScale4x4Chroma_Inter, D.11388
	movl	%edx, %ecx	# D.11388, D.11388
	imull	%eax, %ecx	# D.11388, D.11388
	movl	-292(%rbp), %eax	# qp_per, tmp1373
	movslq	%eax, %rsi	# tmp1373, tmp1372
	movl	-388(%rbp), %eax	# uv, tmp1375
	movslq	%eax, %rdx	# tmp1375, tmp1374
	movq	%rdx, %rax	# tmp1374, tmp1376
	addq	%rax, %rax	# tmp1376
	addq	%rdx, %rax	# tmp1374, tmp1376
	salq	$2, %rax	#, tmp1376
	addq	%rdx, %rax	# tmp1374, tmp1376
	addq	%rsi, %rax	# tmp1372, tmp1377
	salq	$6, %rax	#, tmp1378
	addq	$LevelOffset4x4Chroma_Inter, %rax	#, tmp1379
	movl	(%rax), %eax	# LevelOffset4x4Chroma_Inter, D.11388
	addl	%eax, %eax	# D.11388
	leal	(%rcx,%rax), %edx	#, D.11388
	movl	-284(%rbp), %eax	# q_bits, tmp1380
	addl	$1, %eax	#, D.11388
	movl	%eax, %ecx	# D.11388, tmp2765
	sarl	%cl, %edx	# tmp2765, tmp1381
	movl	%edx, %eax	# tmp1381, tmp1381
	movl	%eax, -356(%rbp)	# tmp1381, level
.L285:
	.loc 1 1212 0
	movq	input(%rip), %rax	# input, input.296
	movl	2356(%rax), %eax	# input.296_351->symbol_mode, D.11388
	testl	%eax, %eax	# D.11388
	jne	.L286	#,
	.loc 1 1212 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.297
	movl	40(%rax), %eax	# img.297_353->qp, D.11388
	cmpl	$3, %eax	#, D.11388
	jg	.L286	#,
	.loc 1 1214 0 is_stmt 1
	cmpl	$2063, -356(%rbp)	#, level
	jle	.L286	#,
	.loc 1 1216 0
	movl	$2063, -356(%rbp)	#, level
.L286:
	.loc 1 1220 0
	cmpl	$0, -356(%rbp)	#, level
	je	.L287	#,
	.loc 1 1222 0
	movq	-264(%rbp), %rax	# currMB, tmp1382
	movq	464(%rax), %rdx	# currMB_113->cbp_blk, D.11394
	movl	-388(%rbp), %eax	# uv, tmp1383
	sall	$2, %eax	#, D.11388
	movl	$983040, %esi	#, tmp1384
	movl	%eax, %ecx	# D.11388, tmp2767
	sall	%cl, %esi	# tmp2767, D.11388
	movl	%esi, %eax	# D.11388, D.11388
	cltq
	orq	%rax, %rdx	# D.11394, D.11394
	movq	-264(%rbp), %rax	# currMB, tmp1385
	movq	%rdx, 464(%rax)	# D.11394, currMB_113->cbp_blk
	.loc 1 1223 0
	movl	$1, %eax	#, tmp1387
	cmpl	$0, -392(%rbp)	#, cr_cbp
	cmovg	-392(%rbp), %eax	# cr_cbp,, tmp1386
	movl	%eax, -392(%rbp)	# tmp1386, cr_cbp
	.loc 1 1224 0
	movl	$1, -336(%rbp)	#, DCcoded
	.loc 1 1225 0
	movl	-352(%rbp), %eax	# scan_pos, tmp1388
	cltq
	leaq	0(,%rax,4), %rdx	#, D.11389
	movq	-256(%rbp), %rax	# DCLevel, tmp1389
	leaq	(%rdx,%rax), %rbx	#, D.11395
	movl	-360(%rbp), %eax	# coeff_ctr, tmp1391
	cltq
	movl	-224(%rbp,%rax,4), %edx	# m1, D.11388
	movl	-356(%rbp), %eax	# level, tmp1392
	movl	%edx, %esi	# D.11388,
	movl	%eax, %edi	# tmp1392,
	call	sign	#
	movl	%eax, (%rbx)	# D.11388, *_365
	.loc 1 1226 0
	movl	-352(%rbp), %eax	# scan_pos, tmp1393
	cltq
	leaq	0(,%rax,4), %rdx	#, D.11389
	movq	-248(%rbp), %rax	# DCRun, tmp1394
	addq	%rax, %rdx	# tmp1394, D.11395
	movl	-348(%rbp), %eax	# run, tmp1395
	movl	%eax, (%rdx)	# tmp1395, *_370
	.loc 1 1227 0
	addl	$1, -352(%rbp)	#, scan_pos
	.loc 1 1228 0
	movl	$-1, -348(%rbp)	#, run
	.loc 1 1230 0
	movl	-360(%rbp), %eax	# coeff_ctr, tmp1397
	cltq
	movl	-224(%rbp,%rax,4), %edx	# m1, D.11388
	movl	-356(%rbp), %eax	# level, tmp1398
	movl	%edx, %esi	# D.11388,
	movl	%eax, %edi	# tmp1398,
	call	sign	#
	movl	%eax, -372(%rbp)	# tmp1399, ilev
.L287:
	.loc 1 1232 0
	movl	-360(%rbp), %eax	# coeff_ctr, tmp1401
	cltq
	movl	-372(%rbp), %edx	# ilev, tmp1402
	movl	%edx, -224(%rbp,%rax,4)	# tmp1402, m1
	.loc 1 1202 0
	addl	$1, -360(%rbp)	#, coeff_ctr
.L283:
	.loc 1 1202 0 is_stmt 0 discriminator 1
	cmpl	$3, -360(%rbp)	#, coeff_ctr
	jle	.L288	#,
	.loc 1 1234 0 is_stmt 1
	movl	-352(%rbp), %eax	# scan_pos, tmp1403
	cltq
	leaq	0(,%rax,4), %rdx	#, D.11389
	movq	-256(%rbp), %rax	# DCLevel, tmp1404
	addq	%rdx, %rax	# D.11389, D.11395
	movl	$0, (%rax)	#, *_378
	.loc 1 1237 0
	movl	-224(%rbp), %edx	# m1, D.11388
	movl	-220(%rbp), %eax	# m1, D.11388
	addl	%eax, %edx	# D.11388, D.11388
	movl	-216(%rbp), %eax	# m1, D.11388
	addl	%eax, %edx	# D.11388, D.11388
	movl	-212(%rbp), %eax	# m1, D.11388
	addl	%edx, %eax	# D.11388, D.11388
	movl	%eax, -208(%rbp)	# D.11388, m5
	.loc 1 1238 0
	movl	-224(%rbp), %edx	# m1, D.11388
	movl	-220(%rbp), %eax	# m1, D.11388
	subl	%eax, %edx	# D.11388, D.11388
	movl	-216(%rbp), %eax	# m1, D.11388
	addl	%eax, %edx	# D.11388, D.11388
	movl	-212(%rbp), %eax	# m1, D.11388
	subl	%eax, %edx	# D.11388, D.11388
	movl	%edx, %eax	# D.11388, D.11388
	movl	%eax, -204(%rbp)	# D.11388, m5
	.loc 1 1239 0
	movl	-224(%rbp), %edx	# m1, D.11388
	movl	-220(%rbp), %eax	# m1, D.11388
	addl	%eax, %edx	# D.11388, D.11388
	movl	-216(%rbp), %eax	# m1, D.11388
	subl	%eax, %edx	# D.11388, D.11388
	movl	-212(%rbp), %eax	# m1, D.11388
	subl	%eax, %edx	# D.11388, D.11388
	movl	%edx, %eax	# D.11388, D.11388
	movl	%eax, -200(%rbp)	# D.11388, m5
	.loc 1 1240 0
	movl	-224(%rbp), %edx	# m1, D.11388
	movl	-220(%rbp), %eax	# m1, D.11388
	subl	%eax, %edx	# D.11388, D.11388
	movl	-216(%rbp), %eax	# m1, D.11388
	subl	%eax, %edx	# D.11388, D.11388
	movl	-212(%rbp), %eax	# m1, D.11388
	addl	%edx, %eax	# D.11388, D.11388
	movl	%eax, -196(%rbp)	# D.11388, m5
	.loc 1 1241 0
	movl	$0, -380(%rbp)	#, i
	jmp	.L289	#
.L295:
	.loc 1 1243 0
	cmpl	$4, -292(%rbp)	#, qp_per
	jg	.L290	#,
	.loc 1 1245 0
	cmpl	$1, -312(%rbp)	#, intra
	jne	.L291	#,
	.loc 1 1246 0
	movl	-380(%rbp), %eax	# i, tmp1406
	cltq
	movl	-208(%rbp,%rax,4), %ecx	# m5, D.11388
	movl	-288(%rbp), %eax	# qp_rem, tmp1408
	movslq	%eax, %rsi	# tmp1408, tmp1407
	movl	-388(%rbp), %eax	# uv, tmp1410
	movslq	%eax, %rdx	# tmp1410, tmp1409
	movq	%rdx, %rax	# tmp1409, tmp1411
	addq	%rax, %rax	# tmp1411
	addq	%rdx, %rax	# tmp1409, tmp1411
	addq	%rax, %rax	# tmp1412
	addq	%rsi, %rax	# tmp1407, tmp1413
	salq	$6, %rax	#, tmp1414
	addq	$InvLevelScale4x4Chroma_Intra, %rax	#, tmp1415
	movl	(%rax), %eax	# InvLevelScale4x4Chroma_Intra, D.11388
	imull	%eax, %ecx	# D.11388, D.11388
	movl	%ecx, %edx	# D.11388, D.11388
	movl	$5, %eax	#, tmp1416
	subl	-292(%rbp), %eax	# qp_per, D.11388
	movl	%eax, %ecx	# D.11388, tmp2771
	sarl	%cl, %edx	# tmp2771, D.11388
	movl	-380(%rbp), %eax	# i, tmp1418
	cltq
	movl	%edx, -224(%rbp,%rax,4)	# D.11388, m1
	jmp	.L293	#
.L291:
	.loc 1 1248 0
	movl	-380(%rbp), %eax	# i, tmp1420
	cltq
	movl	-208(%rbp,%rax,4), %ecx	# m5, D.11388
	movl	-288(%rbp), %eax	# qp_rem, tmp1422
	movslq	%eax, %rsi	# tmp1422, tmp1421
	movl	-388(%rbp), %eax	# uv, tmp1424
	movslq	%eax, %rdx	# tmp1424, tmp1423
	movq	%rdx, %rax	# tmp1423, tmp1425
	addq	%rax, %rax	# tmp1425
	addq	%rdx, %rax	# tmp1423, tmp1425
	addq	%rax, %rax	# tmp1426
	addq	%rsi, %rax	# tmp1421, tmp1427
	salq	$6, %rax	#, tmp1428
	addq	$InvLevelScale4x4Chroma_Inter, %rax	#, tmp1429
	movl	(%rax), %eax	# InvLevelScale4x4Chroma_Inter, D.11388
	imull	%eax, %ecx	# D.11388, D.11388
	movl	%ecx, %edx	# D.11388, D.11388
	movl	$5, %eax	#, tmp1430
	subl	-292(%rbp), %eax	# qp_per, D.11388
	movl	%eax, %ecx	# D.11388, tmp2773
	sarl	%cl, %edx	# tmp2773, D.11388
	movl	-380(%rbp), %eax	# i, tmp1432
	cltq
	movl	%edx, -224(%rbp,%rax,4)	# D.11388, m1
	jmp	.L293	#
.L290:
	.loc 1 1252 0
	cmpl	$1, -312(%rbp)	#, intra
	jne	.L294	#,
	.loc 1 1253 0
	movl	-380(%rbp), %eax	# i, tmp1434
	cltq
	movl	-208(%rbp,%rax,4), %ecx	# m5, D.11388
	movl	-288(%rbp), %eax	# qp_rem, tmp1436
	movslq	%eax, %rsi	# tmp1436, tmp1435
	movl	-388(%rbp), %eax	# uv, tmp1438
	movslq	%eax, %rdx	# tmp1438, tmp1437
	movq	%rdx, %rax	# tmp1437, tmp1439
	addq	%rax, %rax	# tmp1439
	addq	%rdx, %rax	# tmp1437, tmp1439
	addq	%rax, %rax	# tmp1440
	addq	%rsi, %rax	# tmp1435, tmp1441
	salq	$6, %rax	#, tmp1442
	addq	$InvLevelScale4x4Chroma_Intra, %rax	#, tmp1443
	movl	(%rax), %eax	# InvLevelScale4x4Chroma_Intra, D.11388
	imull	%eax, %ecx	# D.11388, D.11388
	movl	%ecx, %edx	# D.11388, D.11388
	movl	-292(%rbp), %eax	# qp_per, tmp1444
	subl	$5, %eax	#, D.11388
	movl	%eax, %ecx	# D.11388, tmp2775
	sall	%cl, %edx	# tmp2775, D.11388
	movl	-380(%rbp), %eax	# i, tmp1446
	cltq
	movl	%edx, -224(%rbp,%rax,4)	# D.11388, m1
	jmp	.L293	#
.L294:
	.loc 1 1255 0
	movl	-380(%rbp), %eax	# i, tmp1448
	cltq
	movl	-208(%rbp,%rax,4), %ecx	# m5, D.11388
	movl	-288(%rbp), %eax	# qp_rem, tmp1450
	movslq	%eax, %rsi	# tmp1450, tmp1449
	movl	-388(%rbp), %eax	# uv, tmp1452
	movslq	%eax, %rdx	# tmp1452, tmp1451
	movq	%rdx, %rax	# tmp1451, tmp1453
	addq	%rax, %rax	# tmp1453
	addq	%rdx, %rax	# tmp1451, tmp1453
	addq	%rax, %rax	# tmp1454
	addq	%rsi, %rax	# tmp1449, tmp1455
	salq	$6, %rax	#, tmp1456
	addq	$InvLevelScale4x4Chroma_Inter, %rax	#, tmp1457
	movl	(%rax), %eax	# InvLevelScale4x4Chroma_Inter, D.11388
	imull	%eax, %ecx	# D.11388, D.11388
	movl	%ecx, %edx	# D.11388, D.11388
	movl	-292(%rbp), %eax	# qp_per, tmp1458
	subl	$5, %eax	#, D.11388
	movl	%eax, %ecx	# D.11388, tmp2777
	sall	%cl, %edx	# tmp2777, D.11388
	movl	-380(%rbp), %eax	# i, tmp1460
	cltq
	movl	%edx, -224(%rbp,%rax,4)	# D.11388, m1
.L293:
	.loc 1 1241 0
	addl	$1, -380(%rbp)	#, i
.L289:
	.loc 1 1241 0 is_stmt 0 discriminator 1
	cmpl	$3, -380(%rbp)	#, i
	jle	.L295	#,
	.loc 1 1258 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.298
	movl	-224(%rbp), %edx	# m1, D.11388
	movl	%edx, 13112(%rax)	# D.11388, img.298_429->m7
	.loc 1 1259 0
	movq	img(%rip), %rax	# img, img.299
	movl	-220(%rbp), %edx	# m1, D.11388
	movl	%edx, 13368(%rax)	# D.11388, img.299_431->m7
	.loc 1 1260 0
	movq	img(%rip), %rax	# img, img.300
	movl	-216(%rbp), %edx	# m1, D.11388
	movl	%edx, 13128(%rax)	# D.11388, img.300_433->m7
	.loc 1 1261 0
	movq	img(%rip), %rax	# img, img.301
	movl	-212(%rbp), %edx	# m1, D.11388
	movl	%edx, 13384(%rax)	# D.11388, img.301_435->m7
	jmp	.L296	#
.L282:
	.loc 1 1263 0
	cmpl	$2, -304(%rbp)	#, yuv
	jne	.L297	#,
	.loc 1 1270 0
	movl	$0, -376(%rbp)	#, j
	jmp	.L298	#
.L301:
	.loc 1 1271 0
	movl	$0, -380(%rbp)	#, i
	jmp	.L299	#
.L300:
	.loc 1 1272 0 discriminator 2
	movl	-380(%rbp), %eax	# i, tmp1461
	sarl	$2, %eax	#, D.11388
	movl	%eax, %esi	# D.11388, D.11388
	movl	-376(%rbp), %eax	# j, tmp1462
	sarl	$2, %eax	#, D.11388
	movl	%eax, %edi	# D.11388, D.11388
	movq	img(%rip), %rax	# img, img.302
	movl	-376(%rbp), %edx	# j, tmp1464
	movslq	%edx, %rdx	# tmp1464, tmp1463
	movl	-380(%rbp), %ecx	# i, tmp1466
	movslq	%ecx, %rcx	# tmp1466, tmp1465
	salq	$4, %rcx	#, tmp1467
	addq	%rcx, %rdx	# tmp1467, tmp1468
	addq	$3276, %rdx	#, tmp1469
	movl	8(%rax,%rdx,4), %eax	# img.302_445->m7, D.11388
	movslq	%edi, %rdx	# D.11388, tmp1470
	movslq	%esi, %rcx	# D.11388, tmp1471
	salq	$2, %rcx	#, tmp1472
	addq	%rcx, %rdx	# tmp1472, tmp1473
	movl	%eax, -144(%rbp,%rdx,4)	# D.11388, m3
	.loc 1 1271 0 discriminator 2
	addl	$4, -380(%rbp)	#, i
.L299:
	.loc 1 1271 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.303
	movl	72708(%rax), %eax	# img.303_441->mb_cr_size_x, D.11388
	cmpl	-380(%rbp), %eax	# i, D.11388
	jg	.L300	#,
	.loc 1 1270 0 is_stmt 1
	addl	$4, -376(%rbp)	#, j
.L298:
	.loc 1 1270 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.304
	movl	72712(%rax), %eax	# img.304_438->mb_cr_size_y, D.11388
	cmpl	-376(%rbp), %eax	# j, D.11388
	jg	.L301	#,
	.loc 1 1275 0 is_stmt 1
	movl	-144(%rbp), %edx	# m3, D.11388
	movl	-128(%rbp), %eax	# m3, D.11388
	addl	%edx, %eax	# D.11388, D.11388
	movl	%eax, -80(%rbp)	# D.11388, m4
	.loc 1 1276 0
	movl	-140(%rbp), %edx	# m3, D.11388
	movl	-124(%rbp), %eax	# m3, D.11388
	addl	%edx, %eax	# D.11388, D.11388
	movl	%eax, -76(%rbp)	# D.11388, m4
	.loc 1 1277 0
	movl	-136(%rbp), %edx	# m3, D.11388
	movl	-120(%rbp), %eax	# m3, D.11388
	addl	%edx, %eax	# D.11388, D.11388
	movl	%eax, -72(%rbp)	# D.11388, m4
	.loc 1 1278 0
	movl	-132(%rbp), %edx	# m3, D.11388
	movl	-116(%rbp), %eax	# m3, D.11388
	addl	%edx, %eax	# D.11388, D.11388
	movl	%eax, -68(%rbp)	# D.11388, m4
	.loc 1 1280 0
	movl	-144(%rbp), %edx	# m3, D.11388
	movl	-128(%rbp), %eax	# m3, D.11388
	subl	%eax, %edx	# D.11388, D.11388
	movl	%edx, %eax	# D.11388, D.11388
	movl	%eax, -64(%rbp)	# D.11388, m4
	.loc 1 1281 0
	movl	-140(%rbp), %edx	# m3, D.11388
	movl	-124(%rbp), %eax	# m3, D.11388
	subl	%eax, %edx	# D.11388, D.11388
	movl	%edx, %eax	# D.11388, D.11388
	movl	%eax, -60(%rbp)	# D.11388, m4
	.loc 1 1282 0
	movl	-136(%rbp), %edx	# m3, D.11388
	movl	-120(%rbp), %eax	# m3, D.11388
	subl	%eax, %edx	# D.11388, D.11388
	movl	%edx, %eax	# D.11388, D.11388
	movl	%eax, -56(%rbp)	# D.11388, m4
	.loc 1 1283 0
	movl	-132(%rbp), %edx	# m3, D.11388
	movl	-116(%rbp), %eax	# m3, D.11388
	subl	%eax, %edx	# D.11388, D.11388
	movl	%edx, %eax	# D.11388, D.11388
	movl	%eax, -52(%rbp)	# D.11388, m4
	.loc 1 1286 0
	movl	$0, -380(%rbp)	#, i
	jmp	.L302	#
.L305:
	.loc 1 1288 0
	movl	$0, -376(%rbp)	#, j
	jmp	.L303	#
.L304:
	.loc 1 1290 0 discriminator 2
	movl	$3, %eax	#, tmp1477
	subl	-376(%rbp), %eax	# j, tmp1476
	movl	%eax, -272(%rbp)	# tmp1476, j1
	.loc 1 1291 0 discriminator 2
	movl	-376(%rbp), %eax	# j, tmp1479
	cltq
	movl	-380(%rbp), %edx	# i, tmp1481
	movslq	%edx, %rdx	# tmp1481, tmp1480
	salq	$2, %rdx	#, tmp1482
	addq	%rdx, %rax	# tmp1482, tmp1483
	movl	-80(%rbp,%rax,4), %edx	# m4, D.11388
	movl	-272(%rbp), %eax	# j1, tmp1485
	cltq
	movl	-380(%rbp), %ecx	# i, tmp1487
	movslq	%ecx, %rcx	# tmp1487, tmp1486
	salq	$2, %rcx	#, tmp1488
	addq	%rcx, %rax	# tmp1488, tmp1489
	movl	-80(%rbp,%rax,4), %eax	# m4, D.11388
	addl	%eax, %edx	# D.11388, D.11388
	movl	-376(%rbp), %eax	# j, tmp1491
	cltq
	movl	%edx, -208(%rbp,%rax,4)	# D.11388, m5
	.loc 1 1292 0 discriminator 2
	movl	-376(%rbp), %eax	# j, tmp1493
	cltq
	movl	-380(%rbp), %edx	# i, tmp1495
	movslq	%edx, %rdx	# tmp1495, tmp1494
	salq	$2, %rdx	#, tmp1496
	addq	%rdx, %rax	# tmp1496, tmp1497
	movl	-80(%rbp,%rax,4), %edx	# m4, D.11388
	movl	-272(%rbp), %eax	# j1, tmp1499
	cltq
	movl	-380(%rbp), %ecx	# i, tmp1501
	movslq	%ecx, %rcx	# tmp1501, tmp1500
	salq	$2, %rcx	#, tmp1502
	addq	%rcx, %rax	# tmp1502, tmp1503
	movl	-80(%rbp,%rax,4), %eax	# m4, D.11388
	subl	%eax, %edx	# D.11388, D.11388
	movl	-272(%rbp), %eax	# j1, tmp1505
	cltq
	movl	%edx, -208(%rbp,%rax,4)	# D.11388, m5
	.loc 1 1288 0 discriminator 2
	addl	$1, -376(%rbp)	#, j
.L303:
	.loc 1 1288 0 is_stmt 0 discriminator 1
	cmpl	$1, -376(%rbp)	#, j
	jle	.L304	#,
	.loc 1 1294 0 is_stmt 1
	movl	-208(%rbp), %edx	# m5, D.11388
	movl	-204(%rbp), %eax	# m5, D.11388
	addl	%eax, %edx	# D.11388, D.11388
	movl	-380(%rbp), %eax	# i, tmp1507
	cltq
	salq	$4, %rax	#, tmp1508
	leaq	-16(%rbp), %rbx	#, tmp2784
	addq	%rbx, %rax	# tmp2784, tmp1509
	subq	$64, %rax	#, tmp1510
	movl	%edx, (%rax)	# D.11388, m4
	.loc 1 1295 0
	movl	-208(%rbp), %edx	# m5, D.11388
	movl	-204(%rbp), %eax	# m5, D.11388
	subl	%eax, %edx	# D.11388, D.11388
	movl	-380(%rbp), %eax	# i, tmp1512
	cltq
	salq	$4, %rax	#, tmp1513
	leaq	-16(%rbp), %rbx	#, tmp2785
	addq	%rbx, %rax	# tmp2785, tmp1514
	subq	$56, %rax	#, tmp1515
	movl	%edx, (%rax)	# D.11388, m4
	.loc 1 1296 0
	movl	-196(%rbp), %edx	# m5, D.11388
	movl	-200(%rbp), %eax	# m5, D.11388
	addl	%eax, %edx	# D.11388, D.11388
	movl	-380(%rbp), %eax	# i, tmp1517
	cltq
	salq	$4, %rax	#, tmp1518
	leaq	-16(%rbp), %rbx	#, tmp2786
	addq	%rbx, %rax	# tmp2786, tmp1519
	subq	$60, %rax	#, tmp1520
	movl	%edx, (%rax)	# D.11388, m4
	.loc 1 1297 0
	movl	-196(%rbp), %edx	# m5, D.11388
	movl	-200(%rbp), %eax	# m5, D.11388
	subl	%eax, %edx	# D.11388, D.11388
	movl	-380(%rbp), %eax	# i, tmp1522
	cltq
	salq	$4, %rax	#, tmp1523
	leaq	-16(%rbp), %rbx	#, tmp2787
	addq	%rbx, %rax	# tmp2787, tmp1524
	subq	$52, %rax	#, tmp1525
	movl	%edx, (%rax)	# D.11388, m4
	.loc 1 1286 0
	addl	$1, -380(%rbp)	#, i
.L302:
	.loc 1 1286 0 is_stmt 0 discriminator 1
	cmpl	$1, -380(%rbp)	#, i
	jle	.L305	#,
	.loc 1 1300 0 is_stmt 1
	movl	$-1, -348(%rbp)	#, run
	.loc 1 1301 0
	movl	$0, -352(%rbp)	#, scan_pos
	.loc 1 1304 0
	movl	$0, -360(%rbp)	#, coeff_ctr
	jmp	.L306	#
.L310:
	.loc 1 1306 0
	movl	-360(%rbp), %eax	# coeff_ctr, tmp1527
	cltq
	movzbl	SCAN_YUV422(%rax,%rax), %eax	# SCAN_YUV422, D.11393
	movzbl	%al, %eax	# D.11393, tmp1528
	movl	%eax, -380(%rbp)	# tmp1528, i
	.loc 1 1307 0
	movl	-360(%rbp), %eax	# coeff_ctr, tmp1530
	cltq
	movzbl	SCAN_YUV422+1(%rax,%rax), %eax	# SCAN_YUV422, D.11393
	movzbl	%al, %eax	# D.11393, tmp1531
	movl	%eax, -376(%rbp)	# tmp1531, j
	.loc 1 1309 0
	addl	$1, -348(%rbp)	#, run
	.loc 1 1311 0
	cmpl	$1, -312(%rbp)	#, intra
	jne	.L307	#,
	.loc 1 1312 0
	movl	-376(%rbp), %eax	# j, tmp1533
	cltq
	movl	-380(%rbp), %edx	# i, tmp1535
	movslq	%edx, %rdx	# tmp1535, tmp1534
	salq	$2, %rdx	#, tmp1536
	addq	%rdx, %rax	# tmp1536, tmp1537
	movl	-80(%rbp,%rax,4), %eax	# m4, D.11388
	movl	%eax, %ecx	# D.11388, tmp1538
	sarl	$31, %ecx	#, tmp1538
	xorl	%ecx, %eax	# tmp1538, D.11388
	movl	%eax, %edx	# D.11388, D.11388
	subl	%ecx, %edx	# tmp1538, D.11388
	movl	-320(%rbp), %eax	# qp_rem_dc, tmp1540
	movslq	%eax, %rsi	# tmp1540, tmp1539
	movl	-388(%rbp), %eax	# uv, tmp1542
	movslq	%eax, %rcx	# tmp1542, tmp1541
	movq	%rcx, %rax	# tmp1541, tmp1543
	addq	%rax, %rax	# tmp1543
	addq	%rcx, %rax	# tmp1541, tmp1543
	addq	%rax, %rax	# tmp1544
	addq	%rsi, %rax	# tmp1539, tmp1545
	salq	$6, %rax	#, tmp1546
	addq	$LevelScale4x4Chroma_Intra, %rax	#, tmp1547
	movl	(%rax), %eax	# LevelScale4x4Chroma_Intra, D.11388
	movl	%edx, %ecx	# D.11388, D.11388
	imull	%eax, %ecx	# D.11388, D.11388
	movl	-324(%rbp), %eax	# qp_per_dc, tmp1549
	movslq	%eax, %rsi	# tmp1549, tmp1548
	movl	-388(%rbp), %eax	# uv, tmp1551
	movslq	%eax, %rdx	# tmp1551, tmp1550
	movq	%rdx, %rax	# tmp1550, tmp1552
	addq	%rax, %rax	# tmp1552
	addq	%rdx, %rax	# tmp1550, tmp1552
	salq	$2, %rax	#, tmp1552
	addq	%rdx, %rax	# tmp1550, tmp1552
	addq	%rsi, %rax	# tmp1548, tmp1553
	salq	$6, %rax	#, tmp1554
	addq	$LevelOffset4x4Chroma_Intra, %rax	#, tmp1555
	movl	(%rax), %eax	# LevelOffset4x4Chroma_Intra, D.11388
	addl	%eax, %eax	# D.11388
	leal	(%rcx,%rax), %edx	#, D.11388
	movl	-316(%rbp), %eax	# q_bits_422, tmp1556
	addl	$1, %eax	#, D.11388
	movl	%eax, %ecx	# D.11388, tmp2792
	sarl	%cl, %edx	# tmp2792, tmp1557
	movl	%edx, %eax	# tmp1557, tmp1557
	movl	%eax, -356(%rbp)	# tmp1557, level
	jmp	.L308	#
.L307:
	.loc 1 1314 0
	movl	-376(%rbp), %eax	# j, tmp1559
	cltq
	movl	-380(%rbp), %edx	# i, tmp1561
	movslq	%edx, %rdx	# tmp1561, tmp1560
	salq	$2, %rdx	#, tmp1562
	addq	%rdx, %rax	# tmp1562, tmp1563
	movl	-80(%rbp,%rax,4), %eax	# m4, D.11388
	movl	%eax, %ecx	# D.11388, tmp1564
	sarl	$31, %ecx	#, tmp1564
	xorl	%ecx, %eax	# tmp1564, D.11388
	movl	%eax, %edx	# D.11388, D.11388
	subl	%ecx, %edx	# tmp1564, D.11388
	movl	-320(%rbp), %eax	# qp_rem_dc, tmp1566
	movslq	%eax, %rsi	# tmp1566, tmp1565
	movl	-388(%rbp), %eax	# uv, tmp1568
	movslq	%eax, %rcx	# tmp1568, tmp1567
	movq	%rcx, %rax	# tmp1567, tmp1569
	addq	%rax, %rax	# tmp1569
	addq	%rcx, %rax	# tmp1567, tmp1569
	addq	%rax, %rax	# tmp1570
	addq	%rsi, %rax	# tmp1565, tmp1571
	salq	$6, %rax	#, tmp1572
	addq	$LevelScale4x4Chroma_Inter, %rax	#, tmp1573
	movl	(%rax), %eax	# LevelScale4x4Chroma_Inter, D.11388
	movl	%edx, %ecx	# D.11388, D.11388
	imull	%eax, %ecx	# D.11388, D.11388
	movl	-324(%rbp), %eax	# qp_per_dc, tmp1575
	movslq	%eax, %rsi	# tmp1575, tmp1574
	movl	-388(%rbp), %eax	# uv, tmp1577
	movslq	%eax, %rdx	# tmp1577, tmp1576
	movq	%rdx, %rax	# tmp1576, tmp1578
	addq	%rax, %rax	# tmp1578
	addq	%rdx, %rax	# tmp1576, tmp1578
	salq	$2, %rax	#, tmp1578
	addq	%rdx, %rax	# tmp1576, tmp1578
	addq	%rsi, %rax	# tmp1574, tmp1579
	salq	$6, %rax	#, tmp1580
	addq	$LevelOffset4x4Chroma_Inter, %rax	#, tmp1581
	movl	(%rax), %eax	# LevelOffset4x4Chroma_Inter, D.11388
	addl	%eax, %eax	# D.11388
	leal	(%rcx,%rax), %edx	#, D.11388
	movl	-316(%rbp), %eax	# q_bits_422, tmp1582
	addl	$1, %eax	#, D.11388
	movl	%eax, %ecx	# D.11388, tmp2797
	sarl	%cl, %edx	# tmp2797, tmp1583
	movl	%edx, %eax	# tmp1583, tmp1583
	movl	%eax, -356(%rbp)	# tmp1583, level
.L308:
	.loc 1 1316 0
	cmpl	$0, -356(%rbp)	#, level
	je	.L309	#,
	.loc 1 1319 0
	movq	-264(%rbp), %rax	# currMB, tmp1584
	movq	464(%rax), %rdx	# currMB_113->cbp_blk, D.11394
	movl	-388(%rbp), %eax	# uv, tmp1585
	sall	$3, %eax	#, D.11388
	movl	$16711680, %esi	#, tmp1586
	movl	%eax, %ecx	# D.11388, tmp2799
	sall	%cl, %esi	# tmp2799, D.11388
	movl	%esi, %eax	# D.11388, D.11388
	cltq
	orq	%rax, %rdx	# D.11394, D.11394
	movq	-264(%rbp), %rax	# currMB, tmp1587
	movq	%rdx, 464(%rax)	# D.11394, currMB_113->cbp_blk
	.loc 1 1320 0
	movl	$1, %eax	#, tmp1589
	cmpl	$0, -392(%rbp)	#, cr_cbp
	cmovg	-392(%rbp), %eax	# cr_cbp,, tmp1588
	movl	%eax, -392(%rbp)	# tmp1588, cr_cbp
	.loc 1 1321 0
	movl	$1, -336(%rbp)	#, DCcoded
	.loc 1 1323 0
	movl	-352(%rbp), %eax	# scan_pos, tmp1590
	cltq
	leaq	0(,%rax,4), %rdx	#, D.11389
	movq	-256(%rbp), %rax	# DCLevel, tmp1591
	leaq	(%rdx,%rax), %rbx	#, D.11395
	movl	-376(%rbp), %eax	# j, tmp1593
	cltq
	movl	-380(%rbp), %edx	# i, tmp1595
	movslq	%edx, %rdx	# tmp1595, tmp1594
	salq	$2, %rdx	#, tmp1596
	addq	%rdx, %rax	# tmp1596, tmp1597
	movl	-80(%rbp,%rax,4), %edx	# m4, D.11388
	movl	-356(%rbp), %eax	# level, tmp1598
	movl	%edx, %esi	# D.11388,
	movl	%eax, %edi	# tmp1598,
	call	sign	#
	movl	%eax, (%rbx)	# D.11388, *_531
	.loc 1 1324 0
	movl	-352(%rbp), %eax	# scan_pos, tmp1599
	cltq
	leaq	0(,%rax,4), %rdx	#, D.11389
	movq	-248(%rbp), %rax	# DCRun, tmp1600
	addq	%rax, %rdx	# tmp1600, D.11395
	movl	-348(%rbp), %eax	# run, tmp1601
	movl	%eax, (%rdx)	# tmp1601, *_536
	.loc 1 1325 0
	addl	$1, -352(%rbp)	#, scan_pos
	.loc 1 1326 0
	movl	$-1, -348(%rbp)	#, run
.L309:
	.loc 1 1328 0
	movl	-376(%rbp), %eax	# j, tmp1603
	cltq
	movl	-380(%rbp), %edx	# i, tmp1605
	movslq	%edx, %rdx	# tmp1605, tmp1604
	salq	$2, %rdx	#, tmp1606
	addq	%rdx, %rax	# tmp1606, tmp1607
	movl	-80(%rbp,%rax,4), %edx	# m4, D.11388
	movl	-356(%rbp), %eax	# level, tmp1608
	movl	%edx, %esi	# D.11388,
	movl	%eax, %edi	# tmp1608,
	call	sign	#
	movl	-376(%rbp), %edx	# j, tmp1610
	movslq	%edx, %rdx	# tmp1610, tmp1609
	movl	-380(%rbp), %ecx	# i, tmp1612
	movslq	%ecx, %rcx	# tmp1612, tmp1611
	salq	$2, %rcx	#, tmp1613
	addq	%rcx, %rdx	# tmp1613, tmp1614
	movl	%eax, -144(%rbp,%rdx,4)	# D.11388, m3
	.loc 1 1304 0
	addl	$1, -360(%rbp)	#, coeff_ctr
.L306:
	.loc 1 1304 0 is_stmt 0 discriminator 1
	cmpl	$7, -360(%rbp)	#, coeff_ctr
	jle	.L310	#,
	.loc 1 1330 0 is_stmt 1
	movl	-352(%rbp), %eax	# scan_pos, tmp1615
	cltq
	leaq	0(,%rax,4), %rdx	#, D.11389
	movq	-256(%rbp), %rax	# DCLevel, tmp1616
	addq	%rdx, %rax	# D.11389, D.11395
	movl	$0, (%rax)	#, *_544
	.loc 1 1334 0
	movl	-144(%rbp), %edx	# m3, D.11388
	movl	-128(%rbp), %eax	# m3, D.11388
	addl	%edx, %eax	# D.11388, D.11388
	movl	%eax, -80(%rbp)	# D.11388, m4
	.loc 1 1335 0
	movl	-140(%rbp), %edx	# m3, D.11388
	movl	-124(%rbp), %eax	# m3, D.11388
	addl	%edx, %eax	# D.11388, D.11388
	movl	%eax, -76(%rbp)	# D.11388, m4
	.loc 1 1336 0
	movl	-136(%rbp), %edx	# m3, D.11388
	movl	-120(%rbp), %eax	# m3, D.11388
	addl	%edx, %eax	# D.11388, D.11388
	movl	%eax, -72(%rbp)	# D.11388, m4
	.loc 1 1337 0
	movl	-132(%rbp), %edx	# m3, D.11388
	movl	-116(%rbp), %eax	# m3, D.11388
	addl	%edx, %eax	# D.11388, D.11388
	movl	%eax, -68(%rbp)	# D.11388, m4
	.loc 1 1339 0
	movl	-144(%rbp), %edx	# m3, D.11388
	movl	-128(%rbp), %eax	# m3, D.11388
	subl	%eax, %edx	# D.11388, D.11388
	movl	%edx, %eax	# D.11388, D.11388
	movl	%eax, -64(%rbp)	# D.11388, m4
	.loc 1 1340 0
	movl	-140(%rbp), %edx	# m3, D.11388
	movl	-124(%rbp), %eax	# m3, D.11388
	subl	%eax, %edx	# D.11388, D.11388
	movl	%edx, %eax	# D.11388, D.11388
	movl	%eax, -60(%rbp)	# D.11388, m4
	.loc 1 1341 0
	movl	-136(%rbp), %edx	# m3, D.11388
	movl	-120(%rbp), %eax	# m3, D.11388
	subl	%eax, %edx	# D.11388, D.11388
	movl	%edx, %eax	# D.11388, D.11388
	movl	%eax, -56(%rbp)	# D.11388, m4
	.loc 1 1342 0
	movl	-132(%rbp), %edx	# m3, D.11388
	movl	-116(%rbp), %eax	# m3, D.11388
	subl	%eax, %edx	# D.11388, D.11388
	movl	%edx, %eax	# D.11388, D.11388
	movl	%eax, -52(%rbp)	# D.11388, m4
	.loc 1 1346 0
	movl	$0, -380(%rbp)	#, i
	jmp	.L311	#
.L321:
	.loc 1 1348 0
	movl	$0, -376(%rbp)	#, j
	jmp	.L312	#
.L313:
	.loc 1 1349 0 discriminator 2
	movl	-376(%rbp), %eax	# j, tmp1618
	cltq
	movl	-380(%rbp), %edx	# i, tmp1620
	movslq	%edx, %rdx	# tmp1620, tmp1619
	salq	$2, %rdx	#, tmp1621
	addq	%rdx, %rax	# tmp1621, tmp1622
	movl	-80(%rbp,%rax,4), %edx	# m4, D.11388
	movl	-376(%rbp), %eax	# j, tmp1624
	cltq
	movl	%edx, -208(%rbp,%rax,4)	# D.11388, m5
	.loc 1 1348 0 discriminator 2
	addl	$1, -376(%rbp)	#, j
.L312:
	.loc 1 1348 0 is_stmt 0 discriminator 1
	cmpl	$3, -376(%rbp)	#, j
	jle	.L313	#,
	.loc 1 1351 0 is_stmt 1
	movl	-208(%rbp), %edx	# m5, D.11388
	movl	-200(%rbp), %eax	# m5, D.11388
	addl	%edx, %eax	# D.11388, D.11388
	movl	%eax, -192(%rbp)	# D.11388, m6
	.loc 1 1352 0
	movl	-208(%rbp), %edx	# m5, D.11388
	movl	-200(%rbp), %eax	# m5, D.11388
	subl	%eax, %edx	# D.11388, D.11388
	movl	%edx, %eax	# D.11388, D.11388
	movl	%eax, -188(%rbp)	# D.11388, m6
	.loc 1 1353 0
	movl	-204(%rbp), %edx	# m5, D.11388
	movl	-196(%rbp), %eax	# m5, D.11388
	subl	%eax, %edx	# D.11388, D.11388
	movl	%edx, %eax	# D.11388, D.11388
	movl	%eax, -184(%rbp)	# D.11388, m6
	.loc 1 1354 0
	movl	-204(%rbp), %edx	# m5, D.11388
	movl	-196(%rbp), %eax	# m5, D.11388
	addl	%edx, %eax	# D.11388, D.11388
	movl	%eax, -180(%rbp)	# D.11388, m6
	.loc 1 1356 0
	movl	$0, -376(%rbp)	#, j
	jmp	.L314	#
.L320:
	.loc 1 1358 0
	movl	$3, %eax	#, tmp1628
	subl	-376(%rbp), %eax	# j, tmp1627
	movl	%eax, -272(%rbp)	# tmp1627, j1
	.loc 1 1360 0
	cmpl	$3, -324(%rbp)	#, qp_per_dc
	jg	.L315	#,
	.loc 1 1362 0
	cmpl	$1, -312(%rbp)	#, intra
	jne	.L316	#,
	.loc 1 1364 0
	movq	img(%rip), %rsi	# img, img.305
	movl	-380(%rbp), %eax	# i, tmp1629
	leal	0(,%rax,4), %r8d	#, D.11388
	movl	-376(%rbp), %eax	# j, tmp1630
	leal	0(,%rax,4), %r9d	#, D.11388
	movl	-376(%rbp), %eax	# j, tmp1632
	cltq
	movl	-192(%rbp,%rax,4), %edx	# m6, D.11388
	movl	-272(%rbp), %eax	# j1, tmp1634
	cltq
	movl	-192(%rbp,%rax,4), %eax	# m6, D.11388
	leal	(%rdx,%rax), %edi	#, D.11388
	movl	-320(%rbp), %eax	# qp_rem_dc, tmp1636
	movslq	%eax, %rcx	# tmp1636, tmp1635
	movl	-388(%rbp), %eax	# uv, tmp1638
	movslq	%eax, %rdx	# tmp1638, tmp1637
	movq	%rdx, %rax	# tmp1637, tmp1639
	addq	%rax, %rax	# tmp1639
	addq	%rdx, %rax	# tmp1637, tmp1639
	addq	%rax, %rax	# tmp1640
	addq	%rcx, %rax	# tmp1635, tmp1641
	salq	$6, %rax	#, tmp1642
	addq	$InvLevelScale4x4Chroma_Intra, %rax	#, tmp1643
	movl	(%rax), %eax	# InvLevelScale4x4Chroma_Intra, D.11388
	imull	%eax, %edi	# D.11388, D.11388
	movl	%edi, %edx	# D.11388, D.11388
	movl	$3, %eax	#, tmp1644
	subl	-324(%rbp), %eax	# qp_per_dc, D.11388
	movl	$1, %edi	#, tmp1645
	movl	%eax, %ecx	# D.11388, tmp2808
	sall	%cl, %edi	# tmp2808, D.11388
	movl	%edi, %eax	# D.11388, D.11388
	addl	%eax, %edx	# D.11388, D.11388
	movl	$4, %eax	#, tmp1646
	subl	-324(%rbp), %eax	# qp_per_dc, D.11388
	movl	%eax, %ecx	# D.11388, tmp2810
	sarl	%cl, %edx	# tmp2810, D.11388
	movl	%edx, %eax	# D.11388, D.11388
	addl	$2, %eax	#, D.11388
	sarl	$2, %eax	#, D.11388
	movl	%eax, %edx	# D.11388, D.11388
	movslq	%r9d, %rax	# D.11388, tmp1647
	movslq	%r8d, %rcx	# D.11388, tmp1648
	salq	$4, %rcx	#, tmp1649
	addq	%rcx, %rax	# tmp1649, tmp1650
	addq	$3276, %rax	#, tmp1651
	movl	%edx, 8(%rsi,%rax,4)	# D.11388, img.305_587->m7
	.loc 1 1365 0
	movq	img(%rip), %rsi	# img, img.306
	movl	-380(%rbp), %eax	# i, tmp1652
	leal	0(,%rax,4), %r8d	#, D.11388
	movl	-272(%rbp), %eax	# j1, tmp1653
	leal	0(,%rax,4), %r9d	#, D.11388
	movl	-376(%rbp), %eax	# j, tmp1655
	cltq
	movl	-192(%rbp,%rax,4), %edx	# m6, D.11388
	movl	-272(%rbp), %eax	# j1, tmp1657
	cltq
	movl	-192(%rbp,%rax,4), %eax	# m6, D.11388
	movl	%edx, %edi	# D.11388, D.11388
	subl	%eax, %edi	# D.11388, D.11388
	movl	-320(%rbp), %eax	# qp_rem_dc, tmp1659
	movslq	%eax, %rcx	# tmp1659, tmp1658
	movl	-388(%rbp), %eax	# uv, tmp1661
	movslq	%eax, %rdx	# tmp1661, tmp1660
	movq	%rdx, %rax	# tmp1660, tmp1662
	addq	%rax, %rax	# tmp1662
	addq	%rdx, %rax	# tmp1660, tmp1662
	addq	%rax, %rax	# tmp1663
	addq	%rcx, %rax	# tmp1658, tmp1664
	salq	$6, %rax	#, tmp1665
	addq	$InvLevelScale4x4Chroma_Intra, %rax	#, tmp1666
	movl	(%rax), %eax	# InvLevelScale4x4Chroma_Intra, D.11388
	imull	%eax, %edi	# D.11388, D.11388
	movl	%edi, %edx	# D.11388, D.11388
	movl	$3, %eax	#, tmp1667
	subl	-324(%rbp), %eax	# qp_per_dc, D.11388
	movl	$1, %edi	#, tmp1668
	movl	%eax, %ecx	# D.11388, tmp2815
	sall	%cl, %edi	# tmp2815, D.11388
	movl	%edi, %eax	# D.11388, D.11388
	addl	%eax, %edx	# D.11388, D.11388
	movl	$4, %eax	#, tmp1669
	subl	-324(%rbp), %eax	# qp_per_dc, D.11388
	movl	%eax, %ecx	# D.11388, tmp2817
	sarl	%cl, %edx	# tmp2817, D.11388
	movl	%edx, %eax	# D.11388, D.11388
	addl	$2, %eax	#, D.11388
	sarl	$2, %eax	#, D.11388
	movl	%eax, %edx	# D.11388, D.11388
	movslq	%r9d, %rax	# D.11388, tmp1670
	movslq	%r8d, %rcx	# D.11388, tmp1671
	salq	$4, %rcx	#, tmp1672
	addq	%rcx, %rax	# tmp1672, tmp1673
	addq	$3276, %rax	#, tmp1674
	movl	%edx, 8(%rsi,%rax,4)	# D.11388, img.306_602->m7
	jmp	.L318	#
.L316:
	.loc 1 1369 0
	movq	img(%rip), %rsi	# img, img.307
	movl	-380(%rbp), %eax	# i, tmp1675
	leal	0(,%rax,4), %r8d	#, D.11388
	movl	-376(%rbp), %eax	# j, tmp1676
	leal	0(,%rax,4), %r9d	#, D.11388
	movl	-376(%rbp), %eax	# j, tmp1678
	cltq
	movl	-192(%rbp,%rax,4), %edx	# m6, D.11388
	movl	-272(%rbp), %eax	# j1, tmp1680
	cltq
	movl	-192(%rbp,%rax,4), %eax	# m6, D.11388
	leal	(%rdx,%rax), %edi	#, D.11388
	movl	-320(%rbp), %eax	# qp_rem_dc, tmp1682
	movslq	%eax, %rcx	# tmp1682, tmp1681
	movl	-388(%rbp), %eax	# uv, tmp1684
	movslq	%eax, %rdx	# tmp1684, tmp1683
	movq	%rdx, %rax	# tmp1683, tmp1685
	addq	%rax, %rax	# tmp1685
	addq	%rdx, %rax	# tmp1683, tmp1685
	addq	%rax, %rax	# tmp1686
	addq	%rcx, %rax	# tmp1681, tmp1687
	salq	$6, %rax	#, tmp1688
	addq	$InvLevelScale4x4Chroma_Inter, %rax	#, tmp1689
	movl	(%rax), %eax	# InvLevelScale4x4Chroma_Inter, D.11388
	imull	%eax, %edi	# D.11388, D.11388
	movl	%edi, %edx	# D.11388, D.11388
	movl	$3, %eax	#, tmp1690
	subl	-324(%rbp), %eax	# qp_per_dc, D.11388
	movl	$1, %edi	#, tmp1691
	movl	%eax, %ecx	# D.11388, tmp2821
	sall	%cl, %edi	# tmp2821, D.11388
	movl	%edi, %eax	# D.11388, D.11388
	addl	%eax, %edx	# D.11388, D.11388
	movl	$4, %eax	#, tmp1692
	subl	-324(%rbp), %eax	# qp_per_dc, D.11388
	movl	%eax, %ecx	# D.11388, tmp2823
	sarl	%cl, %edx	# tmp2823, D.11388
	movl	%edx, %eax	# D.11388, D.11388
	addl	$2, %eax	#, D.11388
	sarl	$2, %eax	#, D.11388
	movl	%eax, %edx	# D.11388, D.11388
	movslq	%r9d, %rax	# D.11388, tmp1693
	movslq	%r8d, %rcx	# D.11388, tmp1694
	salq	$4, %rcx	#, tmp1695
	addq	%rcx, %rax	# tmp1695, tmp1696
	addq	$3276, %rax	#, tmp1697
	movl	%edx, 8(%rsi,%rax,4)	# D.11388, img.307_617->m7
	.loc 1 1370 0
	movq	img(%rip), %rsi	# img, img.308
	movl	-380(%rbp), %eax	# i, tmp1698
	leal	0(,%rax,4), %r8d	#, D.11388
	movl	-272(%rbp), %eax	# j1, tmp1699
	leal	0(,%rax,4), %r9d	#, D.11388
	movl	-376(%rbp), %eax	# j, tmp1701
	cltq
	movl	-192(%rbp,%rax,4), %edx	# m6, D.11388
	movl	-272(%rbp), %eax	# j1, tmp1703
	cltq
	movl	-192(%rbp,%rax,4), %eax	# m6, D.11388
	movl	%edx, %edi	# D.11388, D.11388
	subl	%eax, %edi	# D.11388, D.11388
	movl	-320(%rbp), %eax	# qp_rem_dc, tmp1705
	movslq	%eax, %rcx	# tmp1705, tmp1704
	movl	-388(%rbp), %eax	# uv, tmp1707
	movslq	%eax, %rdx	# tmp1707, tmp1706
	movq	%rdx, %rax	# tmp1706, tmp1708
	addq	%rax, %rax	# tmp1708
	addq	%rdx, %rax	# tmp1706, tmp1708
	addq	%rax, %rax	# tmp1709
	addq	%rcx, %rax	# tmp1704, tmp1710
	salq	$6, %rax	#, tmp1711
	addq	$InvLevelScale4x4Chroma_Inter, %rax	#, tmp1712
	movl	(%rax), %eax	# InvLevelScale4x4Chroma_Inter, D.11388
	imull	%eax, %edi	# D.11388, D.11388
	movl	%edi, %edx	# D.11388, D.11388
	movl	$3, %eax	#, tmp1713
	subl	-324(%rbp), %eax	# qp_per_dc, D.11388
	movl	$1, %edi	#, tmp1714
	movl	%eax, %ecx	# D.11388, tmp2828
	sall	%cl, %edi	# tmp2828, D.11388
	movl	%edi, %eax	# D.11388, D.11388
	addl	%eax, %edx	# D.11388, D.11388
	movl	$4, %eax	#, tmp1715
	subl	-324(%rbp), %eax	# qp_per_dc, D.11388
	movl	%eax, %ecx	# D.11388, tmp2830
	sarl	%cl, %edx	# tmp2830, D.11388
	movl	%edx, %eax	# D.11388, D.11388
	addl	$2, %eax	#, D.11388
	sarl	$2, %eax	#, D.11388
	movl	%eax, %edx	# D.11388, D.11388
	movslq	%r9d, %rax	# D.11388, tmp1716
	movslq	%r8d, %rcx	# D.11388, tmp1717
	salq	$4, %rcx	#, tmp1718
	addq	%rcx, %rax	# tmp1718, tmp1719
	addq	$3276, %rax	#, tmp1720
	movl	%edx, 8(%rsi,%rax,4)	# D.11388, img.308_632->m7
	jmp	.L318	#
.L315:
	.loc 1 1375 0
	cmpl	$1, -312(%rbp)	#, intra
	jne	.L319	#,
	.loc 1 1377 0
	movq	img(%rip), %rsi	# img, img.309
	movl	-380(%rbp), %eax	# i, tmp1721
	leal	0(,%rax,4), %edi	#, D.11388
	movl	-376(%rbp), %eax	# j, tmp1722
	leal	0(,%rax,4), %r8d	#, D.11388
	movl	-376(%rbp), %eax	# j, tmp1724
	cltq
	movl	-192(%rbp,%rax,4), %edx	# m6, D.11388
	movl	-272(%rbp), %eax	# j1, tmp1726
	cltq
	movl	-192(%rbp,%rax,4), %eax	# m6, D.11388
	leal	(%rdx,%rax), %r9d	#, D.11388
	movl	-320(%rbp), %eax	# qp_rem_dc, tmp1728
	movslq	%eax, %rcx	# tmp1728, tmp1727
	movl	-388(%rbp), %eax	# uv, tmp1730
	movslq	%eax, %rdx	# tmp1730, tmp1729
	movq	%rdx, %rax	# tmp1729, tmp1731
	addq	%rax, %rax	# tmp1731
	addq	%rdx, %rax	# tmp1729, tmp1731
	addq	%rax, %rax	# tmp1732
	addq	%rcx, %rax	# tmp1727, tmp1733
	salq	$6, %rax	#, tmp1734
	addq	$InvLevelScale4x4Chroma_Intra, %rax	#, tmp1735
	movl	(%rax), %eax	# InvLevelScale4x4Chroma_Intra, D.11388
	movl	%r9d, %edx	# D.11388, D.11388
	imull	%eax, %edx	# D.11388, D.11388
	movl	-324(%rbp), %eax	# qp_per_dc, tmp1736
	subl	$4, %eax	#, D.11388
	movl	%eax, %ecx	# D.11388, tmp2834
	sall	%cl, %edx	# tmp2834, D.11388
	movl	%edx, %eax	# D.11388, D.11388
	addl	$2, %eax	#, D.11388
	sarl	$2, %eax	#, D.11388
	movl	%eax, %edx	# D.11388, D.11388
	movslq	%r8d, %rax	# D.11388, tmp1737
	movslq	%edi, %rcx	# D.11388, tmp1738
	salq	$4, %rcx	#, tmp1739
	addq	%rcx, %rax	# tmp1739, tmp1740
	addq	$3276, %rax	#, tmp1741
	movl	%edx, 8(%rsi,%rax,4)	# D.11388, img.309_647->m7
	.loc 1 1378 0
	movq	img(%rip), %rsi	# img, img.310
	movl	-380(%rbp), %eax	# i, tmp1742
	leal	0(,%rax,4), %edi	#, D.11388
	movl	-272(%rbp), %eax	# j1, tmp1743
	leal	0(,%rax,4), %r8d	#, D.11388
	movl	-376(%rbp), %eax	# j, tmp1745
	cltq
	movl	-192(%rbp,%rax,4), %edx	# m6, D.11388
	movl	-272(%rbp), %eax	# j1, tmp1747
	cltq
	movl	-192(%rbp,%rax,4), %eax	# m6, D.11388
	subl	%eax, %edx	# D.11388, D.11388
	movl	%edx, %r9d	# D.11388, D.11388
	movl	-320(%rbp), %eax	# qp_rem_dc, tmp1749
	movslq	%eax, %rcx	# tmp1749, tmp1748
	movl	-388(%rbp), %eax	# uv, tmp1751
	movslq	%eax, %rdx	# tmp1751, tmp1750
	movq	%rdx, %rax	# tmp1750, tmp1752
	addq	%rax, %rax	# tmp1752
	addq	%rdx, %rax	# tmp1750, tmp1752
	addq	%rax, %rax	# tmp1753
	addq	%rcx, %rax	# tmp1748, tmp1754
	salq	$6, %rax	#, tmp1755
	addq	$InvLevelScale4x4Chroma_Intra, %rax	#, tmp1756
	movl	(%rax), %eax	# InvLevelScale4x4Chroma_Intra, D.11388
	movl	%r9d, %edx	# D.11388, D.11388
	imull	%eax, %edx	# D.11388, D.11388
	movl	-324(%rbp), %eax	# qp_per_dc, tmp1757
	subl	$4, %eax	#, D.11388
	movl	%eax, %ecx	# D.11388, tmp2839
	sall	%cl, %edx	# tmp2839, D.11388
	movl	%edx, %eax	# D.11388, D.11388
	addl	$2, %eax	#, D.11388
	sarl	$2, %eax	#, D.11388
	movl	%eax, %edx	# D.11388, D.11388
	movslq	%r8d, %rax	# D.11388, tmp1758
	movslq	%edi, %rcx	# D.11388, tmp1759
	salq	$4, %rcx	#, tmp1760
	addq	%rcx, %rax	# tmp1760, tmp1761
	addq	$3276, %rax	#, tmp1762
	movl	%edx, 8(%rsi,%rax,4)	# D.11388, img.310_659->m7
	jmp	.L318	#
.L319:
	.loc 1 1382 0
	movq	img(%rip), %rsi	# img, img.311
	movl	-380(%rbp), %eax	# i, tmp1763
	leal	0(,%rax,4), %edi	#, D.11388
	movl	-376(%rbp), %eax	# j, tmp1764
	leal	0(,%rax,4), %r8d	#, D.11388
	movl	-376(%rbp), %eax	# j, tmp1766
	cltq
	movl	-192(%rbp,%rax,4), %edx	# m6, D.11388
	movl	-272(%rbp), %eax	# j1, tmp1768
	cltq
	movl	-192(%rbp,%rax,4), %eax	# m6, D.11388
	leal	(%rdx,%rax), %r9d	#, D.11388
	movl	-320(%rbp), %eax	# qp_rem_dc, tmp1770
	movslq	%eax, %rcx	# tmp1770, tmp1769
	movl	-388(%rbp), %eax	# uv, tmp1772
	movslq	%eax, %rdx	# tmp1772, tmp1771
	movq	%rdx, %rax	# tmp1771, tmp1773
	addq	%rax, %rax	# tmp1773
	addq	%rdx, %rax	# tmp1771, tmp1773
	addq	%rax, %rax	# tmp1774
	addq	%rcx, %rax	# tmp1769, tmp1775
	salq	$6, %rax	#, tmp1776
	addq	$InvLevelScale4x4Chroma_Inter, %rax	#, tmp1777
	movl	(%rax), %eax	# InvLevelScale4x4Chroma_Inter, D.11388
	movl	%r9d, %edx	# D.11388, D.11388
	imull	%eax, %edx	# D.11388, D.11388
	movl	-324(%rbp), %eax	# qp_per_dc, tmp1778
	subl	$4, %eax	#, D.11388
	movl	%eax, %ecx	# D.11388, tmp2843
	sall	%cl, %edx	# tmp2843, D.11388
	movl	%edx, %eax	# D.11388, D.11388
	addl	$2, %eax	#, D.11388
	sarl	$2, %eax	#, D.11388
	movl	%eax, %edx	# D.11388, D.11388
	movslq	%r8d, %rax	# D.11388, tmp1779
	movslq	%edi, %rcx	# D.11388, tmp1780
	salq	$4, %rcx	#, tmp1781
	addq	%rcx, %rax	# tmp1781, tmp1782
	addq	$3276, %rax	#, tmp1783
	movl	%edx, 8(%rsi,%rax,4)	# D.11388, img.311_671->m7
	.loc 1 1383 0
	movq	img(%rip), %rsi	# img, img.312
	movl	-380(%rbp), %eax	# i, tmp1784
	leal	0(,%rax,4), %edi	#, D.11388
	movl	-272(%rbp), %eax	# j1, tmp1785
	leal	0(,%rax,4), %r8d	#, D.11388
	movl	-376(%rbp), %eax	# j, tmp1787
	cltq
	movl	-192(%rbp,%rax,4), %edx	# m6, D.11388
	movl	-272(%rbp), %eax	# j1, tmp1789
	cltq
	movl	-192(%rbp,%rax,4), %eax	# m6, D.11388
	subl	%eax, %edx	# D.11388, D.11388
	movl	%edx, %r9d	# D.11388, D.11388
	movl	-320(%rbp), %eax	# qp_rem_dc, tmp1791
	movslq	%eax, %rcx	# tmp1791, tmp1790
	movl	-388(%rbp), %eax	# uv, tmp1793
	movslq	%eax, %rdx	# tmp1793, tmp1792
	movq	%rdx, %rax	# tmp1792, tmp1794
	addq	%rax, %rax	# tmp1794
	addq	%rdx, %rax	# tmp1792, tmp1794
	addq	%rax, %rax	# tmp1795
	addq	%rcx, %rax	# tmp1790, tmp1796
	salq	$6, %rax	#, tmp1797
	addq	$InvLevelScale4x4Chroma_Inter, %rax	#, tmp1798
	movl	(%rax), %eax	# InvLevelScale4x4Chroma_Inter, D.11388
	movl	%r9d, %edx	# D.11388, D.11388
	imull	%eax, %edx	# D.11388, D.11388
	movl	-324(%rbp), %eax	# qp_per_dc, tmp1799
	subl	$4, %eax	#, D.11388
	movl	%eax, %ecx	# D.11388, tmp2848
	sall	%cl, %edx	# tmp2848, D.11388
	movl	%edx, %eax	# D.11388, D.11388
	addl	$2, %eax	#, D.11388
	sarl	$2, %eax	#, D.11388
	movl	%eax, %edx	# D.11388, D.11388
	movslq	%r8d, %rax	# D.11388, tmp1800
	movslq	%edi, %rcx	# D.11388, tmp1801
	salq	$4, %rcx	#, tmp1802
	addq	%rcx, %rax	# tmp1802, tmp1803
	addq	$3276, %rax	#, tmp1804
	movl	%edx, 8(%rsi,%rax,4)	# D.11388, img.312_683->m7
.L318:
	.loc 1 1356 0
	addl	$1, -376(%rbp)	#, j
.L314:
	.loc 1 1356 0 is_stmt 0 discriminator 1
	cmpl	$1, -376(%rbp)	#, j
	jle	.L320	#,
	.loc 1 1346 0 is_stmt 1
	addl	$1, -380(%rbp)	#, i
.L311:
	.loc 1 1346 0 is_stmt 0 discriminator 1
	cmpl	$1, -380(%rbp)	#, i
	jle	.L321	#,
	jmp	.L296	#
.L297:
	.loc 1 1389 0 is_stmt 1
	cmpl	$3, -304(%rbp)	#, yuv
	jne	.L296	#,
	.loc 1 1394 0
	movl	$0, -376(%rbp)	#, j
	jmp	.L322	#
.L325:
	.loc 1 1395 0
	movl	$0, -380(%rbp)	#, i
	jmp	.L323	#
.L324:
	.loc 1 1396 0 discriminator 2
	movl	-380(%rbp), %eax	# i, tmp1805
	sarl	$2, %eax	#, D.11388
	movl	%eax, %esi	# D.11388, D.11388
	movl	-376(%rbp), %eax	# j, tmp1806
	sarl	$2, %eax	#, D.11388
	movl	%eax, %edi	# D.11388, D.11388
	movq	img(%rip), %rax	# img, img.313
	movl	-376(%rbp), %edx	# j, tmp1808
	movslq	%edx, %rdx	# tmp1808, tmp1807
	movl	-380(%rbp), %ecx	# i, tmp1810
	movslq	%ecx, %rcx	# tmp1810, tmp1809
	salq	$4, %rcx	#, tmp1811
	addq	%rcx, %rdx	# tmp1811, tmp1812
	addq	$3276, %rdx	#, tmp1813
	movl	8(%rax,%rdx,4), %eax	# img.313_705->m7, D.11388
	movslq	%edi, %rdx	# D.11388, tmp1814
	movslq	%esi, %rcx	# D.11388, tmp1815
	salq	$2, %rcx	#, tmp1816
	addq	%rcx, %rdx	# tmp1816, tmp1817
	movl	%eax, -80(%rbp,%rdx,4)	# D.11388, m4
	.loc 1 1395 0 discriminator 2
	addl	$4, -380(%rbp)	#, i
.L323:
	.loc 1 1395 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.314
	movl	72708(%rax), %eax	# img.314_701->mb_cr_size_x, D.11388
	cmpl	-380(%rbp), %eax	# i, D.11388
	jg	.L324	#,
	.loc 1 1394 0 is_stmt 1
	addl	$4, -376(%rbp)	#, j
.L322:
	.loc 1 1394 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.315
	movl	72712(%rax), %eax	# img.315_698->mb_cr_size_y, D.11388
	cmpl	-376(%rbp), %eax	# j, D.11388
	jg	.L325	#,
	.loc 1 1399 0 is_stmt 1
	movl	$0, -376(%rbp)	#, j
	jmp	.L326	#
.L330:
	.loc 1 1401 0
	movl	$0, -380(%rbp)	#, i
	jmp	.L327	#
.L328:
	.loc 1 1403 0 discriminator 2
	movl	$3, %eax	#, tmp1821
	subl	-380(%rbp), %eax	# i, tmp1820
	movl	%eax, -276(%rbp)	# tmp1820, i1
	.loc 1 1404 0 discriminator 2
	movl	-376(%rbp), %eax	# j, tmp1823
	cltq
	movl	-380(%rbp), %edx	# i, tmp1825
	movslq	%edx, %rdx	# tmp1825, tmp1824
	salq	$2, %rdx	#, tmp1826
	addq	%rdx, %rax	# tmp1826, tmp1827
	movl	-80(%rbp,%rax,4), %edx	# m4, D.11388
	movl	-376(%rbp), %eax	# j, tmp1829
	cltq
	movl	-276(%rbp), %ecx	# i1, tmp1831
	movslq	%ecx, %rcx	# tmp1831, tmp1830
	salq	$2, %rcx	#, tmp1832
	addq	%rcx, %rax	# tmp1832, tmp1833
	movl	-80(%rbp,%rax,4), %eax	# m4, D.11388
	addl	%eax, %edx	# D.11388, D.11388
	movl	-380(%rbp), %eax	# i, tmp1835
	cltq
	movl	%edx, -208(%rbp,%rax,4)	# D.11388, m5
	.loc 1 1405 0 discriminator 2
	movl	-376(%rbp), %eax	# j, tmp1837
	cltq
	movl	-380(%rbp), %edx	# i, tmp1839
	movslq	%edx, %rdx	# tmp1839, tmp1838
	salq	$2, %rdx	#, tmp1840
	addq	%rdx, %rax	# tmp1840, tmp1841
	movl	-80(%rbp,%rax,4), %edx	# m4, D.11388
	movl	-376(%rbp), %eax	# j, tmp1843
	cltq
	movl	-276(%rbp), %ecx	# i1, tmp1845
	movslq	%ecx, %rcx	# tmp1845, tmp1844
	salq	$2, %rcx	#, tmp1846
	addq	%rcx, %rax	# tmp1846, tmp1847
	movl	-80(%rbp,%rax,4), %eax	# m4, D.11388
	subl	%eax, %edx	# D.11388, D.11388
	movl	-276(%rbp), %eax	# i1, tmp1849
	cltq
	movl	%edx, -208(%rbp,%rax,4)	# D.11388, m5
	.loc 1 1401 0 discriminator 2
	addl	$1, -380(%rbp)	#, i
.L327:
	.loc 1 1401 0 is_stmt 0 discriminator 1
	cmpl	$1, -380(%rbp)	#, i
	jle	.L328	#,
	.loc 1 1407 0 is_stmt 1
	movl	-208(%rbp), %edx	# m5, D.11388
	movl	-204(%rbp), %eax	# m5, D.11388
	addl	%eax, %edx	# D.11388, D.11388
	movl	-376(%rbp), %eax	# j, tmp1851
	cltq
	movl	%edx, -80(%rbp,%rax,4)	# D.11388, m4
	.loc 1 1408 0
	movl	-208(%rbp), %edx	# m5, D.11388
	movl	-204(%rbp), %eax	# m5, D.11388
	subl	%eax, %edx	# D.11388, D.11388
	movl	-376(%rbp), %eax	# j, tmp1853
	cltq
	addq	$8, %rax	#, tmp1854
	movl	%edx, -80(%rbp,%rax,4)	# D.11388, m4
	.loc 1 1409 0
	movl	-196(%rbp), %edx	# m5, D.11388
	movl	-200(%rbp), %eax	# m5, D.11388
	addl	%eax, %edx	# D.11388, D.11388
	movl	-376(%rbp), %eax	# j, tmp1856
	cltq
	addq	$4, %rax	#, tmp1857
	movl	%edx, -80(%rbp,%rax,4)	# D.11388, m4
	.loc 1 1410 0
	movl	-196(%rbp), %edx	# m5, D.11388
	movl	-200(%rbp), %eax	# m5, D.11388
	subl	%eax, %edx	# D.11388, D.11388
	movl	-376(%rbp), %eax	# j, tmp1859
	cltq
	addq	$12, %rax	#, tmp1860
	movl	%edx, -80(%rbp,%rax,4)	# D.11388, m4
	.loc 1 1399 0
	addl	$1, -376(%rbp)	#, j
.L326:
	.loc 1 1399 0 is_stmt 0 discriminator 1
	cmpl	$3, -376(%rbp)	#, j
	jg	.L329	#,
	.loc 1 1399 0 discriminator 2
	cmpl	$0, -300(%rbp)	#, lossless_qpprime
	je	.L330	#,
.L329:
	.loc 1 1413 0 is_stmt 1
	movl	$0, -380(%rbp)	#, i
	jmp	.L331	#
.L335:
	.loc 1 1415 0
	movl	$0, -376(%rbp)	#, j
	jmp	.L332	#
.L333:
	.loc 1 1417 0 discriminator 2
	movl	$3, %eax	#, tmp1864
	subl	-376(%rbp), %eax	# j, tmp1863
	movl	%eax, -272(%rbp)	# tmp1863, j1
	.loc 1 1418 0 discriminator 2
	movl	-376(%rbp), %eax	# j, tmp1866
	cltq
	movl	-380(%rbp), %edx	# i, tmp1868
	movslq	%edx, %rdx	# tmp1868, tmp1867
	salq	$2, %rdx	#, tmp1869
	addq	%rdx, %rax	# tmp1869, tmp1870
	movl	-80(%rbp,%rax,4), %edx	# m4, D.11388
	movl	-272(%rbp), %eax	# j1, tmp1872
	cltq
	movl	-380(%rbp), %ecx	# i, tmp1874
	movslq	%ecx, %rcx	# tmp1874, tmp1873
	salq	$2, %rcx	#, tmp1875
	addq	%rcx, %rax	# tmp1875, tmp1876
	movl	-80(%rbp,%rax,4), %eax	# m4, D.11388
	addl	%eax, %edx	# D.11388, D.11388
	movl	-376(%rbp), %eax	# j, tmp1878
	cltq
	movl	%edx, -208(%rbp,%rax,4)	# D.11388, m5
	.loc 1 1419 0 discriminator 2
	movl	-376(%rbp), %eax	# j, tmp1880
	cltq
	movl	-380(%rbp), %edx	# i, tmp1882
	movslq	%edx, %rdx	# tmp1882, tmp1881
	salq	$2, %rdx	#, tmp1883
	addq	%rdx, %rax	# tmp1883, tmp1884
	movl	-80(%rbp,%rax,4), %edx	# m4, D.11388
	movl	-272(%rbp), %eax	# j1, tmp1886
	cltq
	movl	-380(%rbp), %ecx	# i, tmp1888
	movslq	%ecx, %rcx	# tmp1888, tmp1887
	salq	$2, %rcx	#, tmp1889
	addq	%rcx, %rax	# tmp1889, tmp1890
	movl	-80(%rbp,%rax,4), %eax	# m4, D.11388
	subl	%eax, %edx	# D.11388, D.11388
	movl	-272(%rbp), %eax	# j1, tmp1892
	cltq
	movl	%edx, -208(%rbp,%rax,4)	# D.11388, m5
	.loc 1 1415 0 discriminator 2
	addl	$1, -376(%rbp)	#, j
.L332:
	.loc 1 1415 0 is_stmt 0 discriminator 1
	cmpl	$1, -376(%rbp)	#, j
	jle	.L333	#,
	.loc 1 1421 0 is_stmt 1
	movl	-208(%rbp), %edx	# m5, D.11388
	movl	-204(%rbp), %eax	# m5, D.11388
	addl	%edx, %eax	# D.11388, D.11388
	sarl	%eax	# D.11388
	movl	%eax, %edx	# D.11388, D.11388
	movl	-380(%rbp), %eax	# i, tmp1894
	cltq
	salq	$4, %rax	#, tmp1895
	leaq	-16(%rbp), %rbx	#, tmp2853
	addq	%rbx, %rax	# tmp2853, tmp1896
	subq	$64, %rax	#, tmp1897
	movl	%edx, (%rax)	# D.11388, m4
	.loc 1 1422 0
	movl	-208(%rbp), %edx	# m5, D.11388
	movl	-204(%rbp), %eax	# m5, D.11388
	subl	%eax, %edx	# D.11388, D.11388
	movl	%edx, %eax	# D.11388, D.11388
	sarl	%eax	# D.11388
	movl	%eax, %edx	# D.11388, D.11388
	movl	-380(%rbp), %eax	# i, tmp1899
	cltq
	salq	$4, %rax	#, tmp1900
	leaq	-16(%rbp), %rbx	#, tmp2856
	addq	%rbx, %rax	# tmp2856, tmp1901
	subq	$56, %rax	#, tmp1902
	movl	%edx, (%rax)	# D.11388, m4
	.loc 1 1423 0
	movl	-196(%rbp), %edx	# m5, D.11388
	movl	-200(%rbp), %eax	# m5, D.11388
	addl	%edx, %eax	# D.11388, D.11388
	sarl	%eax	# D.11388
	movl	%eax, %edx	# D.11388, D.11388
	movl	-380(%rbp), %eax	# i, tmp1904
	cltq
	salq	$4, %rax	#, tmp1905
	leaq	-16(%rbp), %rbx	#, tmp2858
	addq	%rbx, %rax	# tmp2858, tmp1906
	subq	$60, %rax	#, tmp1907
	movl	%edx, (%rax)	# D.11388, m4
	.loc 1 1424 0
	movl	-196(%rbp), %edx	# m5, D.11388
	movl	-200(%rbp), %eax	# m5, D.11388
	subl	%eax, %edx	# D.11388, D.11388
	movl	%edx, %eax	# D.11388, D.11388
	sarl	%eax	# D.11388
	movl	%eax, %edx	# D.11388, D.11388
	movl	-380(%rbp), %eax	# i, tmp1909
	cltq
	salq	$4, %rax	#, tmp1910
	leaq	-16(%rbp), %rbx	#, tmp2861
	addq	%rbx, %rax	# tmp2861, tmp1911
	subq	$52, %rax	#, tmp1912
	movl	%edx, (%rax)	# D.11388, m4
	.loc 1 1413 0
	addl	$1, -380(%rbp)	#, i
.L331:
	.loc 1 1413 0 is_stmt 0 discriminator 1
	cmpl	$3, -380(%rbp)	#, i
	jg	.L334	#,
	.loc 1 1413 0 discriminator 2
	cmpl	$0, -300(%rbp)	#, lossless_qpprime
	je	.L335	#,
.L334:
	.loc 1 1427 0 is_stmt 1
	movl	$-1, -348(%rbp)	#, run
	.loc 1 1428 0
	movl	$0, -352(%rbp)	#, scan_pos
	.loc 1 1431 0
	movl	$0, -360(%rbp)	#, coeff_ctr
	jmp	.L336	#
.L342:
	.loc 1 1433 0
	movl	-360(%rbp), %eax	# coeff_ctr, tmp1914
	cltq
	movzbl	SNGL_SCAN(%rax,%rax), %eax	# SNGL_SCAN, D.11393
	movzbl	%al, %eax	# D.11393, tmp1915
	movl	%eax, -380(%rbp)	# tmp1915, i
	.loc 1 1434 0
	movl	-360(%rbp), %eax	# coeff_ctr, tmp1917
	cltq
	movzbl	SNGL_SCAN+1(%rax,%rax), %eax	# SNGL_SCAN, D.11393
	movzbl	%al, %eax	# D.11393, tmp1918
	movl	%eax, -376(%rbp)	# tmp1918, j
	.loc 1 1436 0
	addl	$1, -348(%rbp)	#, run
	.loc 1 1438 0
	cmpl	$0, -300(%rbp)	#, lossless_qpprime
	je	.L337	#,
	.loc 1 1439 0
	movl	-376(%rbp), %eax	# j, tmp1920
	cltq
	movl	-380(%rbp), %edx	# i, tmp1922
	movslq	%edx, %rdx	# tmp1922, tmp1921
	salq	$2, %rdx	#, tmp1923
	addq	%rdx, %rax	# tmp1923, tmp1924
	movl	-80(%rbp,%rax,4), %edx	# m4, D.11388
	movl	%edx, %eax	# D.11388, tmp1925
	sarl	$31, %eax	#, tmp1925
	xorl	%eax, %edx	# tmp1925, tmp1926
	movl	%edx, -356(%rbp)	# tmp1926, level
	subl	%eax, -356(%rbp)	# tmp1925, level
	jmp	.L338	#
.L337:
	.loc 1 1440 0
	cmpl	$1, -312(%rbp)	#, intra
	jne	.L339	#,
	.loc 1 1441 0
	movl	-376(%rbp), %eax	# j, tmp1928
	cltq
	movl	-380(%rbp), %edx	# i, tmp1930
	movslq	%edx, %rdx	# tmp1930, tmp1929
	salq	$2, %rdx	#, tmp1931
	addq	%rdx, %rax	# tmp1931, tmp1932
	movl	-80(%rbp,%rax,4), %eax	# m4, D.11388
	movl	%eax, %ecx	# D.11388, tmp1933
	sarl	$31, %ecx	#, tmp1933
	xorl	%ecx, %eax	# tmp1933, D.11388
	movl	%eax, %edx	# D.11388, D.11388
	subl	%ecx, %edx	# tmp1933, D.11388
	movl	-288(%rbp), %eax	# qp_rem, tmp1935
	movslq	%eax, %rsi	# tmp1935, tmp1934
	movl	-388(%rbp), %eax	# uv, tmp1937
	movslq	%eax, %rcx	# tmp1937, tmp1936
	movq	%rcx, %rax	# tmp1936, tmp1938
	addq	%rax, %rax	# tmp1938
	addq	%rcx, %rax	# tmp1936, tmp1938
	addq	%rax, %rax	# tmp1939
	addq	%rsi, %rax	# tmp1934, tmp1940
	salq	$6, %rax	#, tmp1941
	addq	$LevelScale4x4Chroma_Intra, %rax	#, tmp1942
	movl	(%rax), %eax	# LevelScale4x4Chroma_Intra, D.11388
	movl	%edx, %ecx	# D.11388, D.11388
	imull	%eax, %ecx	# D.11388, D.11388
	movl	-292(%rbp), %eax	# qp_per, tmp1944
	movslq	%eax, %rsi	# tmp1944, tmp1943
	movl	-388(%rbp), %eax	# uv, tmp1946
	movslq	%eax, %rdx	# tmp1946, tmp1945
	movq	%rdx, %rax	# tmp1945, tmp1947
	addq	%rax, %rax	# tmp1947
	addq	%rdx, %rax	# tmp1945, tmp1947
	salq	$2, %rax	#, tmp1947
	addq	%rdx, %rax	# tmp1945, tmp1947
	addq	%rsi, %rax	# tmp1943, tmp1948
	salq	$6, %rax	#, tmp1949
	addq	$LevelOffset4x4Chroma_Intra, %rax	#, tmp1950
	movl	(%rax), %eax	# LevelOffset4x4Chroma_Intra, D.11388
	addl	%eax, %eax	# D.11388
	leal	(%rcx,%rax), %edx	#, D.11388
	movl	-284(%rbp), %eax	# q_bits, tmp1951
	addl	$1, %eax	#, D.11388
	movl	%eax, %ecx	# D.11388, tmp2867
	sarl	%cl, %edx	# tmp2867, tmp1952
	movl	%edx, %eax	# tmp1952, tmp1952
	movl	%eax, -356(%rbp)	# tmp1952, level
	jmp	.L338	#
.L339:
	.loc 1 1443 0
	movl	-376(%rbp), %eax	# j, tmp1954
	cltq
	movl	-380(%rbp), %edx	# i, tmp1956
	movslq	%edx, %rdx	# tmp1956, tmp1955
	salq	$2, %rdx	#, tmp1957
	addq	%rdx, %rax	# tmp1957, tmp1958
	movl	-80(%rbp,%rax,4), %eax	# m4, D.11388
	movl	%eax, %ecx	# D.11388, tmp1959
	sarl	$31, %ecx	#, tmp1959
	xorl	%ecx, %eax	# tmp1959, D.11388
	movl	%eax, %edx	# D.11388, D.11388
	subl	%ecx, %edx	# tmp1959, D.11388
	movl	-288(%rbp), %eax	# qp_rem, tmp1961
	movslq	%eax, %rsi	# tmp1961, tmp1960
	movl	-388(%rbp), %eax	# uv, tmp1963
	movslq	%eax, %rcx	# tmp1963, tmp1962
	movq	%rcx, %rax	# tmp1962, tmp1964
	addq	%rax, %rax	# tmp1964
	addq	%rcx, %rax	# tmp1962, tmp1964
	addq	%rax, %rax	# tmp1965
	addq	%rsi, %rax	# tmp1960, tmp1966
	salq	$6, %rax	#, tmp1967
	addq	$LevelScale4x4Chroma_Inter, %rax	#, tmp1968
	movl	(%rax), %eax	# LevelScale4x4Chroma_Inter, D.11388
	movl	%edx, %ecx	# D.11388, D.11388
	imull	%eax, %ecx	# D.11388, D.11388
	movl	-292(%rbp), %eax	# qp_per, tmp1970
	movslq	%eax, %rsi	# tmp1970, tmp1969
	movl	-388(%rbp), %eax	# uv, tmp1972
	movslq	%eax, %rdx	# tmp1972, tmp1971
	movq	%rdx, %rax	# tmp1971, tmp1973
	addq	%rax, %rax	# tmp1973
	addq	%rdx, %rax	# tmp1971, tmp1973
	salq	$2, %rax	#, tmp1973
	addq	%rdx, %rax	# tmp1971, tmp1973
	addq	%rsi, %rax	# tmp1969, tmp1974
	salq	$6, %rax	#, tmp1975
	addq	$LevelOffset4x4Chroma_Inter, %rax	#, tmp1976
	movl	(%rax), %eax	# LevelOffset4x4Chroma_Inter, D.11388
	addl	%eax, %eax	# D.11388
	leal	(%rcx,%rax), %edx	#, D.11388
	movl	-284(%rbp), %eax	# q_bits, tmp1977
	addl	$1, %eax	#, D.11388
	movl	%eax, %ecx	# D.11388, tmp2872
	sarl	%cl, %edx	# tmp2872, tmp1978
	movl	%edx, %eax	# tmp1978, tmp1978
	movl	%eax, -356(%rbp)	# tmp1978, level
.L338:
	.loc 1 1445 0
	cmpl	$0, -356(%rbp)	#, level
	je	.L340	#,
	.loc 1 1448 0
	movq	-264(%rbp), %rax	# currMB, tmp1979
	movq	464(%rax), %rax	# currMB_113->cbp_blk, D.11394
	movl	-388(%rbp), %edx	# uv, tmp1980
	sall	$4, %edx	#, D.11388
	movl	$4294901760, %esi	#, tmp1981
	movl	%edx, %ecx	# D.11388, tmp2874
	salq	%cl, %rsi	# tmp2874, D.11394
	movq	%rsi, %rdx	# D.11394, D.11394
	orq	%rax, %rdx	# D.11394, D.11394
	movq	-264(%rbp), %rax	# currMB, tmp1982
	movq	%rdx, 464(%rax)	# D.11394, currMB_113->cbp_blk
	.loc 1 1449 0
	movl	$1, %eax	#, tmp1984
	cmpl	$0, -392(%rbp)	#, cr_cbp
	cmovg	-392(%rbp), %eax	# cr_cbp,, tmp1983
	movl	%eax, -392(%rbp)	# tmp1983, cr_cbp
	.loc 1 1450 0
	movl	$1, -336(%rbp)	#, DCcoded
	.loc 1 1452 0
	movl	-352(%rbp), %eax	# scan_pos, tmp1985
	cltq
	leaq	0(,%rax,4), %rdx	#, D.11389
	movq	-256(%rbp), %rax	# DCLevel, tmp1986
	leaq	(%rdx,%rax), %rbx	#, D.11395
	movl	-376(%rbp), %eax	# j, tmp1988
	cltq
	movl	-380(%rbp), %edx	# i, tmp1990
	movslq	%edx, %rdx	# tmp1990, tmp1989
	salq	$2, %rdx	#, tmp1991
	addq	%rdx, %rax	# tmp1991, tmp1992
	movl	-80(%rbp,%rax,4), %edx	# m4, D.11388
	movl	-356(%rbp), %eax	# level, tmp1993
	movl	%edx, %esi	# D.11388,
	movl	%eax, %edi	# tmp1993,
	call	sign	#
	movl	%eax, (%rbx)	# D.11388, *_795
	.loc 1 1453 0
	movl	-352(%rbp), %eax	# scan_pos, tmp1994
	cltq
	leaq	0(,%rax,4), %rdx	#, D.11389
	movq	-248(%rbp), %rax	# DCRun, tmp1995
	addq	%rax, %rdx	# tmp1995, D.11395
	movl	-348(%rbp), %eax	# run, tmp1996
	movl	%eax, (%rdx)	# tmp1996, *_800
	.loc 1 1454 0
	addl	$1, -352(%rbp)	#, scan_pos
	.loc 1 1455 0
	movl	$-1, -348(%rbp)	#, run
.L340:
	.loc 1 1457 0
	cmpl	$0, -300(%rbp)	#, lossless_qpprime
	jne	.L341	#,
	.loc 1 1458 0
	movl	-376(%rbp), %eax	# j, tmp1998
	cltq
	movl	-380(%rbp), %edx	# i, tmp2000
	movslq	%edx, %rdx	# tmp2000, tmp1999
	salq	$2, %rdx	#, tmp2001
	addq	%rdx, %rax	# tmp2001, tmp2002
	movl	-80(%rbp,%rax,4), %edx	# m4, D.11388
	movl	-356(%rbp), %eax	# level, tmp2003
	movl	%edx, %esi	# D.11388,
	movl	%eax, %edi	# tmp2003,
	call	sign	#
	movl	-376(%rbp), %edx	# j, tmp2005
	movslq	%edx, %rdx	# tmp2005, tmp2004
	movl	-380(%rbp), %ecx	# i, tmp2007
	movslq	%ecx, %rcx	# tmp2007, tmp2006
	salq	$2, %rcx	#, tmp2008
	addq	%rcx, %rdx	# tmp2008, tmp2009
	movl	%eax, -80(%rbp,%rdx,4)	# D.11388, m4
.L341:
	.loc 1 1431 0
	addl	$1, -360(%rbp)	#, coeff_ctr
.L336:
	.loc 1 1431 0 is_stmt 0 discriminator 1
	cmpl	$15, -360(%rbp)	#, coeff_ctr
	jle	.L342	#,
	.loc 1 1460 0 is_stmt 1
	movl	-352(%rbp), %eax	# scan_pos, tmp2010
	cltq
	leaq	0(,%rax,4), %rdx	#, D.11389
	movq	-256(%rbp), %rax	# DCLevel, tmp2011
	addq	%rdx, %rax	# D.11389, D.11395
	movl	$0, (%rax)	#, *_808
	.loc 1 1464 0
	movl	$0, -376(%rbp)	#, j
	jmp	.L343	#
.L349:
	.loc 1 1466 0
	movl	$0, -380(%rbp)	#, i
	jmp	.L344	#
.L345:
	.loc 1 1467 0 discriminator 2
	movl	-376(%rbp), %eax	# j, tmp2013
	cltq
	movl	-380(%rbp), %edx	# i, tmp2015
	movslq	%edx, %rdx	# tmp2015, tmp2014
	salq	$2, %rdx	#, tmp2016
	addq	%rdx, %rax	# tmp2016, tmp2017
	movl	-80(%rbp,%rax,4), %edx	# m4, D.11388
	movl	-380(%rbp), %eax	# i, tmp2019
	cltq
	movl	%edx, -208(%rbp,%rax,4)	# D.11388, m5
	.loc 1 1466 0 discriminator 2
	addl	$1, -380(%rbp)	#, i
.L344:
	.loc 1 1466 0 is_stmt 0 discriminator 1
	cmpl	$3, -380(%rbp)	#, i
	jle	.L345	#,
	.loc 1 1469 0 is_stmt 1
	movl	-208(%rbp), %edx	# m5, D.11388
	movl	-200(%rbp), %eax	# m5, D.11388
	addl	%edx, %eax	# D.11388, D.11388
	movl	%eax, -192(%rbp)	# D.11388, m6
	.loc 1 1470 0
	movl	-208(%rbp), %edx	# m5, D.11388
	movl	-200(%rbp), %eax	# m5, D.11388
	subl	%eax, %edx	# D.11388, D.11388
	movl	%edx, %eax	# D.11388, D.11388
	movl	%eax, -188(%rbp)	# D.11388, m6
	.loc 1 1471 0
	movl	-204(%rbp), %edx	# m5, D.11388
	movl	-196(%rbp), %eax	# m5, D.11388
	subl	%eax, %edx	# D.11388, D.11388
	movl	%edx, %eax	# D.11388, D.11388
	movl	%eax, -184(%rbp)	# D.11388, m6
	.loc 1 1472 0
	movl	-204(%rbp), %edx	# m5, D.11388
	movl	-196(%rbp), %eax	# m5, D.11388
	addl	%edx, %eax	# D.11388, D.11388
	movl	%eax, -180(%rbp)	# D.11388, m6
	.loc 1 1474 0
	movl	$0, -380(%rbp)	#, i
	jmp	.L346	#
.L347:
	.loc 1 1476 0 discriminator 2
	movl	$3, %eax	#, tmp2023
	subl	-380(%rbp), %eax	# i, tmp2022
	movl	%eax, -276(%rbp)	# tmp2022, i1
	.loc 1 1477 0 discriminator 2
	movl	-380(%rbp), %eax	# i, tmp2025
	cltq
	movl	-192(%rbp,%rax,4), %edx	# m6, D.11388
	movl	-276(%rbp), %eax	# i1, tmp2027
	cltq
	movl	-192(%rbp,%rax,4), %eax	# m6, D.11388
	addl	%eax, %edx	# D.11388, D.11388
	movl	-376(%rbp), %eax	# j, tmp2029
	cltq
	movl	-380(%rbp), %ecx	# i, tmp2031
	movslq	%ecx, %rcx	# tmp2031, tmp2030
	salq	$2, %rcx	#, tmp2032
	addq	%rcx, %rax	# tmp2032, tmp2033
	movl	%edx, -80(%rbp,%rax,4)	# D.11388, m4
	.loc 1 1478 0 discriminator 2
	movl	-380(%rbp), %eax	# i, tmp2035
	cltq
	movl	-192(%rbp,%rax,4), %edx	# m6, D.11388
	movl	-276(%rbp), %eax	# i1, tmp2037
	cltq
	movl	-192(%rbp,%rax,4), %eax	# m6, D.11388
	subl	%eax, %edx	# D.11388, D.11388
	movl	-376(%rbp), %eax	# j, tmp2039
	cltq
	movl	-276(%rbp), %ecx	# i1, tmp2041
	movslq	%ecx, %rcx	# tmp2041, tmp2040
	salq	$2, %rcx	#, tmp2042
	addq	%rcx, %rax	# tmp2042, tmp2043
	movl	%edx, -80(%rbp,%rax,4)	# D.11388, m4
	.loc 1 1474 0 discriminator 2
	addl	$1, -380(%rbp)	#, i
.L346:
	.loc 1 1474 0 is_stmt 0 discriminator 1
	cmpl	$1, -380(%rbp)	#, i
	jle	.L347	#,
	.loc 1 1464 0 is_stmt 1
	addl	$1, -376(%rbp)	#, j
.L343:
	.loc 1 1464 0 is_stmt 0 discriminator 1
	cmpl	$3, -376(%rbp)	#, j
	jg	.L348	#,
	.loc 1 1464 0 discriminator 2
	cmpl	$0, -300(%rbp)	#, lossless_qpprime
	je	.L349	#,
.L348:
	.loc 1 1483 0 is_stmt 1
	movl	$0, -380(%rbp)	#, i
	jmp	.L350	#
.L360:
	.loc 1 1485 0
	movl	$0, -376(%rbp)	#, j
	jmp	.L351	#
.L352:
	.loc 1 1486 0 discriminator 2
	movl	-376(%rbp), %eax	# j, tmp2045
	cltq
	movl	-380(%rbp), %edx	# i, tmp2047
	movslq	%edx, %rdx	# tmp2047, tmp2046
	salq	$2, %rdx	#, tmp2048
	addq	%rdx, %rax	# tmp2048, tmp2049
	movl	-80(%rbp,%rax,4), %edx	# m4, D.11388
	movl	-376(%rbp), %eax	# j, tmp2051
	cltq
	movl	%edx, -208(%rbp,%rax,4)	# D.11388, m5
	.loc 1 1485 0 discriminator 2
	addl	$1, -376(%rbp)	#, j
.L351:
	.loc 1 1485 0 is_stmt 0 discriminator 1
	cmpl	$3, -376(%rbp)	#, j
	jle	.L352	#,
	.loc 1 1488 0 is_stmt 1
	movl	-208(%rbp), %edx	# m5, D.11388
	movl	-200(%rbp), %eax	# m5, D.11388
	addl	%edx, %eax	# D.11388, D.11388
	movl	%eax, -192(%rbp)	# D.11388, m6
	.loc 1 1489 0
	movl	-208(%rbp), %edx	# m5, D.11388
	movl	-200(%rbp), %eax	# m5, D.11388
	subl	%eax, %edx	# D.11388, D.11388
	movl	%edx, %eax	# D.11388, D.11388
	movl	%eax, -188(%rbp)	# D.11388, m6
	.loc 1 1490 0
	movl	-204(%rbp), %edx	# m5, D.11388
	movl	-196(%rbp), %eax	# m5, D.11388
	subl	%eax, %edx	# D.11388, D.11388
	movl	%edx, %eax	# D.11388, D.11388
	movl	%eax, -184(%rbp)	# D.11388, m6
	.loc 1 1491 0
	movl	-204(%rbp), %edx	# m5, D.11388
	movl	-196(%rbp), %eax	# m5, D.11388
	addl	%edx, %eax	# D.11388, D.11388
	movl	%eax, -180(%rbp)	# D.11388, m6
	.loc 1 1493 0
	movl	$0, -376(%rbp)	#, j
	jmp	.L353	#
.L359:
	.loc 1 1495 0
	movl	$3, %eax	#, tmp2055
	subl	-376(%rbp), %eax	# j, tmp2054
	movl	%eax, -272(%rbp)	# tmp2054, j1
	.loc 1 1496 0
	cmpl	$3, -292(%rbp)	#, qp_per
	jg	.L354	#,
	.loc 1 1498 0
	cmpl	$1, -312(%rbp)	#, intra
	jne	.L355	#,
	.loc 1 1500 0
	movq	img(%rip), %rsi	# img, img.316
	movl	-380(%rbp), %eax	# i, tmp2056
	leal	0(,%rax,4), %r8d	#, D.11388
	movl	-376(%rbp), %eax	# j, tmp2057
	leal	0(,%rax,4), %r9d	#, D.11388
	movl	-376(%rbp), %eax	# j, tmp2059
	cltq
	movl	-192(%rbp,%rax,4), %edx	# m6, D.11388
	movl	-272(%rbp), %eax	# j1, tmp2061
	cltq
	movl	-192(%rbp,%rax,4), %eax	# m6, D.11388
	leal	(%rdx,%rax), %edi	#, D.11388
	movl	-288(%rbp), %eax	# qp_rem, tmp2063
	movslq	%eax, %rcx	# tmp2063, tmp2062
	movl	-388(%rbp), %eax	# uv, tmp2065
	movslq	%eax, %rdx	# tmp2065, tmp2064
	movq	%rdx, %rax	# tmp2064, tmp2066
	addq	%rax, %rax	# tmp2066
	addq	%rdx, %rax	# tmp2064, tmp2066
	addq	%rax, %rax	# tmp2067
	addq	%rcx, %rax	# tmp2062, tmp2068
	salq	$6, %rax	#, tmp2069
	addq	$InvLevelScale4x4Chroma_Intra, %rax	#, tmp2070
	movl	(%rax), %eax	# InvLevelScale4x4Chroma_Intra, D.11388
	imull	%eax, %edi	# D.11388, D.11388
	movl	%edi, %edx	# D.11388, D.11388
	movl	$3, %eax	#, tmp2071
	subl	-292(%rbp), %eax	# qp_per, D.11388
	movl	$1, %edi	#, tmp2072
	movl	%eax, %ecx	# D.11388, tmp2881
	sall	%cl, %edi	# tmp2881, D.11388
	movl	%edi, %eax	# D.11388, D.11388
	addl	%eax, %edx	# D.11388, D.11388
	movl	$4, %eax	#, tmp2073
	subl	-292(%rbp), %eax	# qp_per, D.11388
	movl	%eax, %ecx	# D.11388, tmp2883
	sarl	%cl, %edx	# tmp2883, D.11388
	movl	%edx, %eax	# D.11388, D.11388
	addl	$2, %eax	#, D.11388
	sarl	$2, %eax	#, D.11388
	movl	%eax, %edx	# D.11388, D.11388
	movslq	%r9d, %rax	# D.11388, tmp2074
	movslq	%r8d, %rcx	# D.11388, tmp2075
	salq	$4, %rcx	#, tmp2076
	addq	%rcx, %rax	# tmp2076, tmp2077
	addq	$3276, %rax	#, tmp2078
	movl	%edx, 8(%rsi,%rax,4)	# D.11388, img.316_853->m7
	.loc 1 1501 0
	movq	img(%rip), %rsi	# img, img.317
	movl	-380(%rbp), %eax	# i, tmp2079
	leal	0(,%rax,4), %r8d	#, D.11388
	movl	-272(%rbp), %eax	# j1, tmp2080
	leal	0(,%rax,4), %r9d	#, D.11388
	movl	-376(%rbp), %eax	# j, tmp2082
	cltq
	movl	-192(%rbp,%rax,4), %edx	# m6, D.11388
	movl	-272(%rbp), %eax	# j1, tmp2084
	cltq
	movl	-192(%rbp,%rax,4), %eax	# m6, D.11388
	movl	%edx, %edi	# D.11388, D.11388
	subl	%eax, %edi	# D.11388, D.11388
	movl	-288(%rbp), %eax	# qp_rem, tmp2086
	movslq	%eax, %rcx	# tmp2086, tmp2085
	movl	-388(%rbp), %eax	# uv, tmp2088
	movslq	%eax, %rdx	# tmp2088, tmp2087
	movq	%rdx, %rax	# tmp2087, tmp2089
	addq	%rax, %rax	# tmp2089
	addq	%rdx, %rax	# tmp2087, tmp2089
	addq	%rax, %rax	# tmp2090
	addq	%rcx, %rax	# tmp2085, tmp2091
	salq	$6, %rax	#, tmp2092
	addq	$InvLevelScale4x4Chroma_Intra, %rax	#, tmp2093
	movl	(%rax), %eax	# InvLevelScale4x4Chroma_Intra, D.11388
	imull	%eax, %edi	# D.11388, D.11388
	movl	%edi, %edx	# D.11388, D.11388
	movl	$3, %eax	#, tmp2094
	subl	-292(%rbp), %eax	# qp_per, D.11388
	movl	$1, %edi	#, tmp2095
	movl	%eax, %ecx	# D.11388, tmp2888
	sall	%cl, %edi	# tmp2888, D.11388
	movl	%edi, %eax	# D.11388, D.11388
	addl	%eax, %edx	# D.11388, D.11388
	movl	$4, %eax	#, tmp2096
	subl	-292(%rbp), %eax	# qp_per, D.11388
	movl	%eax, %ecx	# D.11388, tmp2890
	sarl	%cl, %edx	# tmp2890, D.11388
	movl	%edx, %eax	# D.11388, D.11388
	addl	$2, %eax	#, D.11388
	sarl	$2, %eax	#, D.11388
	movl	%eax, %edx	# D.11388, D.11388
	movslq	%r9d, %rax	# D.11388, tmp2097
	movslq	%r8d, %rcx	# D.11388, tmp2098
	salq	$4, %rcx	#, tmp2099
	addq	%rcx, %rax	# tmp2099, tmp2100
	addq	$3276, %rax	#, tmp2101
	movl	%edx, 8(%rsi,%rax,4)	# D.11388, img.317_868->m7
	jmp	.L357	#
.L355:
	.loc 1 1505 0
	movq	img(%rip), %rsi	# img, img.318
	movl	-380(%rbp), %eax	# i, tmp2102
	leal	0(,%rax,4), %r8d	#, D.11388
	movl	-376(%rbp), %eax	# j, tmp2103
	leal	0(,%rax,4), %r9d	#, D.11388
	movl	-376(%rbp), %eax	# j, tmp2105
	cltq
	movl	-192(%rbp,%rax,4), %edx	# m6, D.11388
	movl	-272(%rbp), %eax	# j1, tmp2107
	cltq
	movl	-192(%rbp,%rax,4), %eax	# m6, D.11388
	leal	(%rdx,%rax), %edi	#, D.11388
	movl	-288(%rbp), %eax	# qp_rem, tmp2109
	movslq	%eax, %rcx	# tmp2109, tmp2108
	movl	-388(%rbp), %eax	# uv, tmp2111
	movslq	%eax, %rdx	# tmp2111, tmp2110
	movq	%rdx, %rax	# tmp2110, tmp2112
	addq	%rax, %rax	# tmp2112
	addq	%rdx, %rax	# tmp2110, tmp2112
	addq	%rax, %rax	# tmp2113
	addq	%rcx, %rax	# tmp2108, tmp2114
	salq	$6, %rax	#, tmp2115
	addq	$InvLevelScale4x4Chroma_Inter, %rax	#, tmp2116
	movl	(%rax), %eax	# InvLevelScale4x4Chroma_Inter, D.11388
	imull	%eax, %edi	# D.11388, D.11388
	movl	%edi, %edx	# D.11388, D.11388
	movl	$3, %eax	#, tmp2117
	subl	-292(%rbp), %eax	# qp_per, D.11388
	movl	$1, %edi	#, tmp2118
	movl	%eax, %ecx	# D.11388, tmp2894
	sall	%cl, %edi	# tmp2894, D.11388
	movl	%edi, %eax	# D.11388, D.11388
	addl	%eax, %edx	# D.11388, D.11388
	movl	$4, %eax	#, tmp2119
	subl	-292(%rbp), %eax	# qp_per, D.11388
	movl	%eax, %ecx	# D.11388, tmp2896
	sarl	%cl, %edx	# tmp2896, D.11388
	movl	%edx, %eax	# D.11388, D.11388
	addl	$2, %eax	#, D.11388
	sarl	$2, %eax	#, D.11388
	movl	%eax, %edx	# D.11388, D.11388
	movslq	%r9d, %rax	# D.11388, tmp2120
	movslq	%r8d, %rcx	# D.11388, tmp2121
	salq	$4, %rcx	#, tmp2122
	addq	%rcx, %rax	# tmp2122, tmp2123
	addq	$3276, %rax	#, tmp2124
	movl	%edx, 8(%rsi,%rax,4)	# D.11388, img.318_883->m7
	.loc 1 1506 0
	movq	img(%rip), %rsi	# img, img.319
	movl	-380(%rbp), %eax	# i, tmp2125
	leal	0(,%rax,4), %r8d	#, D.11388
	movl	-272(%rbp), %eax	# j1, tmp2126
	leal	0(,%rax,4), %r9d	#, D.11388
	movl	-376(%rbp), %eax	# j, tmp2128
	cltq
	movl	-192(%rbp,%rax,4), %edx	# m6, D.11388
	movl	-272(%rbp), %eax	# j1, tmp2130
	cltq
	movl	-192(%rbp,%rax,4), %eax	# m6, D.11388
	movl	%edx, %edi	# D.11388, D.11388
	subl	%eax, %edi	# D.11388, D.11388
	movl	-288(%rbp), %eax	# qp_rem, tmp2132
	movslq	%eax, %rcx	# tmp2132, tmp2131
	movl	-388(%rbp), %eax	# uv, tmp2134
	movslq	%eax, %rdx	# tmp2134, tmp2133
	movq	%rdx, %rax	# tmp2133, tmp2135
	addq	%rax, %rax	# tmp2135
	addq	%rdx, %rax	# tmp2133, tmp2135
	addq	%rax, %rax	# tmp2136
	addq	%rcx, %rax	# tmp2131, tmp2137
	salq	$6, %rax	#, tmp2138
	addq	$InvLevelScale4x4Chroma_Inter, %rax	#, tmp2139
	movl	(%rax), %eax	# InvLevelScale4x4Chroma_Inter, D.11388
	imull	%eax, %edi	# D.11388, D.11388
	movl	%edi, %edx	# D.11388, D.11388
	movl	$3, %eax	#, tmp2140
	subl	-292(%rbp), %eax	# qp_per, D.11388
	movl	$1, %edi	#, tmp2141
	movl	%eax, %ecx	# D.11388, tmp2901
	sall	%cl, %edi	# tmp2901, D.11388
	movl	%edi, %eax	# D.11388, D.11388
	addl	%eax, %edx	# D.11388, D.11388
	movl	$4, %eax	#, tmp2142
	subl	-292(%rbp), %eax	# qp_per, D.11388
	movl	%eax, %ecx	# D.11388, tmp2903
	sarl	%cl, %edx	# tmp2903, D.11388
	movl	%edx, %eax	# D.11388, D.11388
	addl	$2, %eax	#, D.11388
	sarl	$2, %eax	#, D.11388
	movl	%eax, %edx	# D.11388, D.11388
	movslq	%r9d, %rax	# D.11388, tmp2143
	movslq	%r8d, %rcx	# D.11388, tmp2144
	salq	$4, %rcx	#, tmp2145
	addq	%rcx, %rax	# tmp2145, tmp2146
	addq	$3276, %rax	#, tmp2147
	movl	%edx, 8(%rsi,%rax,4)	# D.11388, img.319_898->m7
	jmp	.L357	#
.L354:
	.loc 1 1511 0
	cmpl	$1, -312(%rbp)	#, intra
	jne	.L358	#,
	.loc 1 1513 0
	movq	img(%rip), %rsi	# img, img.320
	movl	-380(%rbp), %eax	# i, tmp2148
	leal	0(,%rax,4), %edi	#, D.11388
	movl	-376(%rbp), %eax	# j, tmp2149
	leal	0(,%rax,4), %r8d	#, D.11388
	movl	-376(%rbp), %eax	# j, tmp2151
	cltq
	movl	-192(%rbp,%rax,4), %edx	# m6, D.11388
	movl	-272(%rbp), %eax	# j1, tmp2153
	cltq
	movl	-192(%rbp,%rax,4), %eax	# m6, D.11388
	leal	(%rdx,%rax), %r9d	#, D.11388
	movl	-288(%rbp), %eax	# qp_rem, tmp2155
	movslq	%eax, %rcx	# tmp2155, tmp2154
	movl	-388(%rbp), %eax	# uv, tmp2157
	movslq	%eax, %rdx	# tmp2157, tmp2156
	movq	%rdx, %rax	# tmp2156, tmp2158
	addq	%rax, %rax	# tmp2158
	addq	%rdx, %rax	# tmp2156, tmp2158
	addq	%rax, %rax	# tmp2159
	addq	%rcx, %rax	# tmp2154, tmp2160
	salq	$6, %rax	#, tmp2161
	addq	$InvLevelScale4x4Chroma_Intra, %rax	#, tmp2162
	movl	(%rax), %eax	# InvLevelScale4x4Chroma_Intra, D.11388
	movl	%r9d, %edx	# D.11388, D.11388
	imull	%eax, %edx	# D.11388, D.11388
	movl	-292(%rbp), %eax	# qp_per, tmp2163
	subl	$4, %eax	#, D.11388
	movl	%eax, %ecx	# D.11388, tmp2907
	sall	%cl, %edx	# tmp2907, D.11388
	movl	%edx, %eax	# D.11388, D.11388
	addl	$2, %eax	#, D.11388
	sarl	$2, %eax	#, D.11388
	movl	%eax, %edx	# D.11388, D.11388
	movslq	%r8d, %rax	# D.11388, tmp2164
	movslq	%edi, %rcx	# D.11388, tmp2165
	salq	$4, %rcx	#, tmp2166
	addq	%rcx, %rax	# tmp2166, tmp2167
	addq	$3276, %rax	#, tmp2168
	movl	%edx, 8(%rsi,%rax,4)	# D.11388, img.320_913->m7
	.loc 1 1514 0
	movq	img(%rip), %rsi	# img, img.321
	movl	-380(%rbp), %eax	# i, tmp2169
	leal	0(,%rax,4), %edi	#, D.11388
	movl	-272(%rbp), %eax	# j1, tmp2170
	leal	0(,%rax,4), %r8d	#, D.11388
	movl	-376(%rbp), %eax	# j, tmp2172
	cltq
	movl	-192(%rbp,%rax,4), %edx	# m6, D.11388
	movl	-272(%rbp), %eax	# j1, tmp2174
	cltq
	movl	-192(%rbp,%rax,4), %eax	# m6, D.11388
	subl	%eax, %edx	# D.11388, D.11388
	movl	%edx, %r9d	# D.11388, D.11388
	movl	-288(%rbp), %eax	# qp_rem, tmp2176
	movslq	%eax, %rcx	# tmp2176, tmp2175
	movl	-388(%rbp), %eax	# uv, tmp2178
	movslq	%eax, %rdx	# tmp2178, tmp2177
	movq	%rdx, %rax	# tmp2177, tmp2179
	addq	%rax, %rax	# tmp2179
	addq	%rdx, %rax	# tmp2177, tmp2179
	addq	%rax, %rax	# tmp2180
	addq	%rcx, %rax	# tmp2175, tmp2181
	salq	$6, %rax	#, tmp2182
	addq	$InvLevelScale4x4Chroma_Intra, %rax	#, tmp2183
	movl	(%rax), %eax	# InvLevelScale4x4Chroma_Intra, D.11388
	movl	%r9d, %edx	# D.11388, D.11388
	imull	%eax, %edx	# D.11388, D.11388
	movl	-292(%rbp), %eax	# qp_per, tmp2184
	subl	$4, %eax	#, D.11388
	movl	%eax, %ecx	# D.11388, tmp2912
	sall	%cl, %edx	# tmp2912, D.11388
	movl	%edx, %eax	# D.11388, D.11388
	addl	$2, %eax	#, D.11388
	sarl	$2, %eax	#, D.11388
	movl	%eax, %edx	# D.11388, D.11388
	movslq	%r8d, %rax	# D.11388, tmp2185
	movslq	%edi, %rcx	# D.11388, tmp2186
	salq	$4, %rcx	#, tmp2187
	addq	%rcx, %rax	# tmp2187, tmp2188
	addq	$3276, %rax	#, tmp2189
	movl	%edx, 8(%rsi,%rax,4)	# D.11388, img.321_925->m7
	jmp	.L357	#
.L358:
	.loc 1 1518 0
	movq	img(%rip), %rsi	# img, img.322
	movl	-380(%rbp), %eax	# i, tmp2190
	leal	0(,%rax,4), %edi	#, D.11388
	movl	-376(%rbp), %eax	# j, tmp2191
	leal	0(,%rax,4), %r8d	#, D.11388
	movl	-376(%rbp), %eax	# j, tmp2193
	cltq
	movl	-192(%rbp,%rax,4), %edx	# m6, D.11388
	movl	-272(%rbp), %eax	# j1, tmp2195
	cltq
	movl	-192(%rbp,%rax,4), %eax	# m6, D.11388
	leal	(%rdx,%rax), %r9d	#, D.11388
	movl	-288(%rbp), %eax	# qp_rem, tmp2197
	movslq	%eax, %rcx	# tmp2197, tmp2196
	movl	-388(%rbp), %eax	# uv, tmp2199
	movslq	%eax, %rdx	# tmp2199, tmp2198
	movq	%rdx, %rax	# tmp2198, tmp2200
	addq	%rax, %rax	# tmp2200
	addq	%rdx, %rax	# tmp2198, tmp2200
	addq	%rax, %rax	# tmp2201
	addq	%rcx, %rax	# tmp2196, tmp2202
	salq	$6, %rax	#, tmp2203
	addq	$InvLevelScale4x4Chroma_Inter, %rax	#, tmp2204
	movl	(%rax), %eax	# InvLevelScale4x4Chroma_Inter, D.11388
	movl	%r9d, %edx	# D.11388, D.11388
	imull	%eax, %edx	# D.11388, D.11388
	movl	-292(%rbp), %eax	# qp_per, tmp2205
	subl	$4, %eax	#, D.11388
	movl	%eax, %ecx	# D.11388, tmp2916
	sall	%cl, %edx	# tmp2916, D.11388
	movl	%edx, %eax	# D.11388, D.11388
	addl	$2, %eax	#, D.11388
	sarl	$2, %eax	#, D.11388
	movl	%eax, %edx	# D.11388, D.11388
	movslq	%r8d, %rax	# D.11388, tmp2206
	movslq	%edi, %rcx	# D.11388, tmp2207
	salq	$4, %rcx	#, tmp2208
	addq	%rcx, %rax	# tmp2208, tmp2209
	addq	$3276, %rax	#, tmp2210
	movl	%edx, 8(%rsi,%rax,4)	# D.11388, img.322_937->m7
	.loc 1 1519 0
	movq	img(%rip), %rsi	# img, img.323
	movl	-380(%rbp), %eax	# i, tmp2211
	leal	0(,%rax,4), %edi	#, D.11388
	movl	-272(%rbp), %eax	# j1, tmp2212
	leal	0(,%rax,4), %r8d	#, D.11388
	movl	-376(%rbp), %eax	# j, tmp2214
	cltq
	movl	-192(%rbp,%rax,4), %edx	# m6, D.11388
	movl	-272(%rbp), %eax	# j1, tmp2216
	cltq
	movl	-192(%rbp,%rax,4), %eax	# m6, D.11388
	subl	%eax, %edx	# D.11388, D.11388
	movl	%edx, %r9d	# D.11388, D.11388
	movl	-288(%rbp), %eax	# qp_rem, tmp2218
	movslq	%eax, %rcx	# tmp2218, tmp2217
	movl	-388(%rbp), %eax	# uv, tmp2220
	movslq	%eax, %rdx	# tmp2220, tmp2219
	movq	%rdx, %rax	# tmp2219, tmp2221
	addq	%rax, %rax	# tmp2221
	addq	%rdx, %rax	# tmp2219, tmp2221
	addq	%rax, %rax	# tmp2222
	addq	%rcx, %rax	# tmp2217, tmp2223
	salq	$6, %rax	#, tmp2224
	addq	$InvLevelScale4x4Chroma_Inter, %rax	#, tmp2225
	movl	(%rax), %eax	# InvLevelScale4x4Chroma_Inter, D.11388
	movl	%r9d, %edx	# D.11388, D.11388
	imull	%eax, %edx	# D.11388, D.11388
	movl	-292(%rbp), %eax	# qp_per, tmp2226
	subl	$4, %eax	#, D.11388
	movl	%eax, %ecx	# D.11388, tmp2921
	sall	%cl, %edx	# tmp2921, D.11388
	movl	%edx, %eax	# D.11388, D.11388
	addl	$2, %eax	#, D.11388
	sarl	$2, %eax	#, D.11388
	movl	%eax, %edx	# D.11388, D.11388
	movslq	%r8d, %rax	# D.11388, tmp2227
	movslq	%edi, %rcx	# D.11388, tmp2228
	salq	$4, %rcx	#, tmp2229
	addq	%rcx, %rax	# tmp2229, tmp2230
	addq	$3276, %rax	#, tmp2231
	movl	%edx, 8(%rsi,%rax,4)	# D.11388, img.323_949->m7
.L357:
	.loc 1 1493 0
	addl	$1, -376(%rbp)	#, j
.L353:
	.loc 1 1493 0 is_stmt 0 discriminator 1
	cmpl	$1, -376(%rbp)	#, j
	jle	.L359	#,
	.loc 1 1483 0 is_stmt 1
	addl	$1, -380(%rbp)	#, i
.L350:
	.loc 1 1483 0 is_stmt 0 discriminator 1
	cmpl	$3, -380(%rbp)	#, i
	jg	.L296	#,
	.loc 1 1483 0 discriminator 2
	cmpl	$0, -300(%rbp)	#, lossless_qpprime
	je	.L360	#,
.L296:
	.loc 1 1527 0 is_stmt 1
	movl	$0, -344(%rbp)	#, coeff_cost
	.loc 1 1528 0
	movl	$0, -340(%rbp)	#, cr_cbp_tmp
	.loc 1 1530 0
	movl	$0, -328(%rbp)	#, b8
	jmp	.L361	#
.L382:
	.loc 1 1532 0
	movl	$0, -332(%rbp)	#, b4
	jmp	.L362	#
.L381:
	.loc 1 1534 0
	movl	-332(%rbp), %eax	# b4, tmp2233
	cltq
	movl	-304(%rbp), %edx	# yuv, tmp2235
	movslq	%edx, %rcx	# tmp2235, tmp2234
	movl	-328(%rbp), %edx	# b8, tmp2237
	movslq	%edx, %rdx	# tmp2237, tmp2236
	salq	$2, %rcx	#, tmp2238
	addq	%rcx, %rdx	# tmp2238, tmp2239
	movzbl	hor_offset(%rax,%rdx,4), %eax	# hor_offset, D.11393
	movzbl	%al, %eax	# D.11393, tmp2240
	movl	%eax, -364(%rbp)	# tmp2240, n1
	.loc 1 1535 0
	movl	-332(%rbp), %eax	# b4, tmp2242
	cltq
	movl	-304(%rbp), %edx	# yuv, tmp2244
	movslq	%edx, %rcx	# tmp2244, tmp2243
	movl	-328(%rbp), %edx	# b8, tmp2246
	movslq	%edx, %rdx	# tmp2246, tmp2245
	salq	$2, %rcx	#, tmp2247
	addq	%rcx, %rdx	# tmp2247, tmp2248
	movzbl	ver_offset(%rax,%rdx,4), %eax	# ver_offset, D.11393
	movzbl	%al, %eax	# D.11393, tmp2249
	movl	%eax, -368(%rbp)	# tmp2249, n2
	.loc 1 1536 0
	movq	img(%rip), %rax	# img, img.324
	movq	14136(%rax), %rax	# img.324_974->cofAC, D.11396
	movl	-328(%rbp), %edx	# b8, tmp2250
	leal	4(%rdx), %ecx	#, D.11388
	movl	-308(%rbp), %edx	# uv_scale, tmp2251
	addl	%ecx, %edx	# D.11388, D.11388
	movslq	%edx, %rdx	# D.11388, D.11389
	salq	$3, %rdx	#, D.11389
	addq	%rdx, %rax	# D.11389, D.11396
	movq	(%rax), %rax	# *_980, D.11390
	movl	-332(%rbp), %edx	# b4, tmp2252
	movslq	%edx, %rdx	# tmp2252, D.11389
	salq	$3, %rdx	#, D.11389
	addq	%rdx, %rax	# D.11389, D.11390
	movq	(%rax), %rax	# *_984, D.11392
	movq	(%rax), %rax	# *_985, tmp2253
	movq	%rax, -240(%rbp)	# tmp2253, ACLevel
	.loc 1 1537 0
	movq	img(%rip), %rax	# img, img.325
	movq	14136(%rax), %rax	# img.325_987->cofAC, D.11396
	movl	-328(%rbp), %edx	# b8, tmp2254
	leal	4(%rdx), %ecx	#, D.11388
	movl	-308(%rbp), %edx	# uv_scale, tmp2255
	addl	%ecx, %edx	# D.11388, D.11388
	movslq	%edx, %rdx	# D.11388, D.11389
	salq	$3, %rdx	#, D.11389
	addq	%rdx, %rax	# D.11389, D.11396
	movq	(%rax), %rax	# *_993, D.11390
	movl	-332(%rbp), %edx	# b4, tmp2256
	movslq	%edx, %rdx	# tmp2256, D.11389
	salq	$3, %rdx	#, D.11389
	addq	%rdx, %rax	# D.11389, D.11390
	movq	(%rax), %rax	# *_997, D.11392
	movq	8(%rax), %rax	# MEM[(int * *)_998 + 8B], tmp2257
	movq	%rax, -232(%rbp)	# tmp2257, ACRun
	.loc 1 1538 0
	movl	$-1, -348(%rbp)	#, run
	.loc 1 1539 0
	movl	$0, -352(%rbp)	#, scan_pos
	.loc 1 1541 0
	movl	$1, -360(%rbp)	#, coeff_ctr
	jmp	.L363	#
.L380:
	.loc 1 1544 0
	movq	img(%rip), %rax	# img, img.326
	movl	72444(%rax), %eax	# img.326_1003->field_picture, D.11397
	testl	%eax, %eax	# D.11397
	jne	.L364	#,
	.loc 1 1544 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.327
	movl	72400(%rax), %eax	# img.327_1005->MbaffFrameFlag, D.11388
	testl	%eax, %eax	# D.11388
	je	.L365	#,
	movq	-264(%rbp), %rax	# currMB, tmp2258
	movl	532(%rax), %eax	# currMB_113->mb_field, D.11388
	testl	%eax, %eax	# D.11388
	je	.L365	#,
.L364:
	.loc 1 1546 0 is_stmt 1
	movl	-360(%rbp), %eax	# coeff_ctr, tmp2260
	cltq
	movzbl	FIELD_SCAN(%rax,%rax), %eax	# FIELD_SCAN, D.11393
	movzbl	%al, %eax	# D.11393, tmp2261
	movl	%eax, -380(%rbp)	# tmp2261, i
	.loc 1 1547 0
	movl	-360(%rbp), %eax	# coeff_ctr, tmp2263
	cltq
	movzbl	FIELD_SCAN+1(%rax,%rax), %eax	# FIELD_SCAN, D.11393
	movzbl	%al, %eax	# D.11393, tmp2264
	movl	%eax, -376(%rbp)	# tmp2264, j
	jmp	.L366	#
.L365:
	.loc 1 1551 0
	movl	-360(%rbp), %eax	# coeff_ctr, tmp2266
	cltq
	movzbl	SNGL_SCAN(%rax,%rax), %eax	# SNGL_SCAN, D.11393
	movzbl	%al, %eax	# D.11393, tmp2267
	movl	%eax, -380(%rbp)	# tmp2267, i
	.loc 1 1552 0
	movl	-360(%rbp), %eax	# coeff_ctr, tmp2269
	cltq
	movzbl	SNGL_SCAN+1(%rax,%rax), %eax	# SNGL_SCAN, D.11393
	movzbl	%al, %eax	# D.11393, tmp2270
	movl	%eax, -376(%rbp)	# tmp2270, j
.L366:
	.loc 1 1554 0
	addl	$1, -348(%rbp)	#, run
	.loc 1 1555 0
	movl	$0, -372(%rbp)	#, ilev
	.loc 1 1557 0
	cmpl	$0, -300(%rbp)	#, lossless_qpprime
	je	.L367	#,
	.loc 1 1558 0
	movq	img(%rip), %rax	# img, img.328
	movl	-380(%rbp), %edx	# i, tmp2271
	movl	-364(%rbp), %ecx	# n1, tmp2272
	leal	(%rcx,%rdx), %esi	#, D.11388
	movl	-376(%rbp), %edx	# j, tmp2273
	movl	-368(%rbp), %ecx	# n2, tmp2274
	addl	%ecx, %edx	# tmp2274, D.11388
	movslq	%edx, %rdx	# D.11388, tmp2275
	movslq	%esi, %rcx	# D.11388, tmp2276
	salq	$4, %rcx	#, tmp2277
	addq	%rcx, %rdx	# tmp2277, tmp2278
	addq	$3276, %rdx	#, tmp2279
	movl	8(%rax,%rdx,4), %edx	# img.328_1018->m7, D.11388
	movl	%edx, %eax	# D.11388, tmp2280
	sarl	$31, %eax	#, tmp2280
	xorl	%eax, %edx	# tmp2280, tmp2281
	movl	%edx, -356(%rbp)	# tmp2281, level
	subl	%eax, -356(%rbp)	# tmp2280, level
	jmp	.L368	#
.L367:
	.loc 1 1559 0
	cmpl	$1, -312(%rbp)	#, intra
	jne	.L369	#,
	.loc 1 1560 0
	movq	img(%rip), %rax	# img, img.329
	movl	-380(%rbp), %edx	# i, tmp2282
	movl	-364(%rbp), %ecx	# n1, tmp2283
	leal	(%rcx,%rdx), %esi	#, D.11388
	movl	-376(%rbp), %edx	# j, tmp2284
	movl	-368(%rbp), %ecx	# n2, tmp2285
	addl	%ecx, %edx	# tmp2285, D.11388
	movslq	%edx, %rdx	# D.11388, tmp2286
	movslq	%esi, %rcx	# D.11388, tmp2287
	salq	$4, %rcx	#, tmp2288
	addq	%rcx, %rdx	# tmp2288, tmp2289
	addq	$3276, %rdx	#, tmp2290
	movl	8(%rax,%rdx,4), %eax	# img.329_1023->m7, D.11388
	movl	%eax, %ecx	# D.11388, tmp2291
	sarl	$31, %ecx	#, tmp2291
	xorl	%ecx, %eax	# tmp2291, D.11388
	movl	%eax, %edx	# D.11388, D.11388
	subl	%ecx, %edx	# tmp2291, D.11388
	movl	-376(%rbp), %eax	# j, tmp2293
	movslq	%eax, %rsi	# tmp2293, tmp2292
	movl	-288(%rbp), %eax	# qp_rem, tmp2295
	movslq	%eax, %rdi	# tmp2295, tmp2294
	movl	-388(%rbp), %eax	# uv, tmp2297
	movslq	%eax, %rcx	# tmp2297, tmp2296
	movq	%rcx, %rax	# tmp2296, tmp2298
	addq	%rax, %rax	# tmp2298
	addq	%rcx, %rax	# tmp2296, tmp2298
	addq	%rax, %rax	# tmp2299
	leaq	(%rax,%rdi), %rcx	#, tmp2300
	movl	-380(%rbp), %eax	# i, tmp2302
	cltq
	salq	$2, %rcx	#, tmp2303
	addq	%rcx, %rax	# tmp2303, tmp2304
	salq	$2, %rax	#, tmp2305
	addq	%rsi, %rax	# tmp2292, tmp2306
	movl	LevelScale4x4Chroma_Intra(,%rax,4), %eax	# LevelScale4x4Chroma_Intra, D.11388
	movl	%edx, %ecx	# D.11388, D.11388
	imull	%eax, %ecx	# D.11388, D.11388
	movl	-376(%rbp), %eax	# j, tmp2308
	movslq	%eax, %rsi	# tmp2308, tmp2307
	movl	-292(%rbp), %eax	# qp_per, tmp2310
	movslq	%eax, %rdi	# tmp2310, tmp2309
	movl	-388(%rbp), %eax	# uv, tmp2312
	movslq	%eax, %rdx	# tmp2312, tmp2311
	movq	%rdx, %rax	# tmp2311, tmp2313
	addq	%rax, %rax	# tmp2313
	addq	%rdx, %rax	# tmp2311, tmp2313
	salq	$2, %rax	#, tmp2313
	addq	%rdx, %rax	# tmp2311, tmp2313
	leaq	(%rax,%rdi), %rdx	#, tmp2314
	movl	-380(%rbp), %eax	# i, tmp2316
	cltq
	salq	$2, %rdx	#, tmp2317
	addq	%rdx, %rax	# tmp2317, tmp2318
	salq	$2, %rax	#, tmp2319
	addq	%rsi, %rax	# tmp2307, tmp2320
	movl	LevelOffset4x4Chroma_Intra(,%rax,4), %eax	# LevelOffset4x4Chroma_Intra, D.11388
	leal	(%rcx,%rax), %edx	#, D.11388
	movl	-284(%rbp), %eax	# q_bits, tmp2321
	movl	%eax, %ecx	# tmp2321, tmp2928
	sarl	%cl, %edx	# tmp2928, tmp2322
	movl	%edx, %eax	# tmp2322, tmp2322
	movl	%eax, -356(%rbp)	# tmp2322, level
	jmp	.L368	#
.L369:
	.loc 1 1562 0
	movq	img(%rip), %rax	# img, img.330
	movl	-380(%rbp), %edx	# i, tmp2323
	movl	-364(%rbp), %ecx	# n1, tmp2324
	leal	(%rcx,%rdx), %esi	#, D.11388
	movl	-376(%rbp), %edx	# j, tmp2325
	movl	-368(%rbp), %ecx	# n2, tmp2326
	addl	%ecx, %edx	# tmp2326, D.11388
	movslq	%edx, %rdx	# D.11388, tmp2327
	movslq	%esi, %rcx	# D.11388, tmp2328
	salq	$4, %rcx	#, tmp2329
	addq	%rcx, %rdx	# tmp2329, tmp2330
	addq	$3276, %rdx	#, tmp2331
	movl	8(%rax,%rdx,4), %eax	# img.330_1033->m7, D.11388
	movl	%eax, %ecx	# D.11388, tmp2332
	sarl	$31, %ecx	#, tmp2332
	xorl	%ecx, %eax	# tmp2332, D.11388
	movl	%eax, %edx	# D.11388, D.11388
	subl	%ecx, %edx	# tmp2332, D.11388
	movl	-376(%rbp), %eax	# j, tmp2334
	movslq	%eax, %rsi	# tmp2334, tmp2333
	movl	-288(%rbp), %eax	# qp_rem, tmp2336
	movslq	%eax, %rdi	# tmp2336, tmp2335
	movl	-388(%rbp), %eax	# uv, tmp2338
	movslq	%eax, %rcx	# tmp2338, tmp2337
	movq	%rcx, %rax	# tmp2337, tmp2339
	addq	%rax, %rax	# tmp2339
	addq	%rcx, %rax	# tmp2337, tmp2339
	addq	%rax, %rax	# tmp2340
	leaq	(%rax,%rdi), %rcx	#, tmp2341
	movl	-380(%rbp), %eax	# i, tmp2343
	cltq
	salq	$2, %rcx	#, tmp2344
	addq	%rcx, %rax	# tmp2344, tmp2345
	salq	$2, %rax	#, tmp2346
	addq	%rsi, %rax	# tmp2333, tmp2347
	movl	LevelScale4x4Chroma_Inter(,%rax,4), %eax	# LevelScale4x4Chroma_Inter, D.11388
	movl	%edx, %ecx	# D.11388, D.11388
	imull	%eax, %ecx	# D.11388, D.11388
	movl	-376(%rbp), %eax	# j, tmp2349
	movslq	%eax, %rsi	# tmp2349, tmp2348
	movl	-292(%rbp), %eax	# qp_per, tmp2351
	movslq	%eax, %rdi	# tmp2351, tmp2350
	movl	-388(%rbp), %eax	# uv, tmp2353
	movslq	%eax, %rdx	# tmp2353, tmp2352
	movq	%rdx, %rax	# tmp2352, tmp2354
	addq	%rax, %rax	# tmp2354
	addq	%rdx, %rax	# tmp2352, tmp2354
	salq	$2, %rax	#, tmp2354
	addq	%rdx, %rax	# tmp2352, tmp2354
	leaq	(%rax,%rdi), %rdx	#, tmp2355
	movl	-380(%rbp), %eax	# i, tmp2357
	cltq
	salq	$2, %rdx	#, tmp2358
	addq	%rdx, %rax	# tmp2358, tmp2359
	salq	$2, %rax	#, tmp2360
	addq	%rsi, %rax	# tmp2348, tmp2361
	movl	LevelOffset4x4Chroma_Inter(,%rax,4), %eax	# LevelOffset4x4Chroma_Inter, D.11388
	leal	(%rcx,%rax), %edx	#, D.11388
	movl	-284(%rbp), %eax	# q_bits, tmp2362
	movl	%eax, %ecx	# tmp2362, tmp2933
	sarl	%cl, %edx	# tmp2933, tmp2363
	movl	%edx, %eax	# tmp2363, tmp2363
	movl	%eax, -356(%rbp)	# tmp2363, level
.L368:
	.loc 1 1564 0
	cmpl	$0, -356(%rbp)	#, level
	je	.L370	#,
	.loc 1 1566 0
	movq	-264(%rbp), %rax	# currMB, tmp2364
	movq	464(%rax), %rsi	# currMB_113->cbp_blk, D.11394
	movl	-308(%rbp), %eax	# uv_scale, tmp2365
	movl	-328(%rbp), %edx	# b8, tmp2366
	addl	%eax, %edx	# tmp2365, D.11388
	movl	-332(%rbp), %eax	# b4, tmp2368
	cltq
	movslq	%edx, %rdx	# D.11388, tmp2369
	movzbl	cbp_blk_chroma(%rax,%rdx,4), %eax	# cbp_blk_chroma, D.11393
	movzbl	%al, %eax	# D.11393, D.11388
	movl	$1, %edx	#, tmp2370
	movl	%eax, %ecx	# D.11388, tmp2935
	salq	%cl, %rdx	# tmp2935, D.11394
	movq	%rdx, %rax	# D.11394, D.11394
	orq	%rax, %rsi	# D.11394, D.11394
	movq	%rsi, %rdx	# D.11394, D.11394
	movq	-264(%rbp), %rax	# currMB, tmp2371
	movq	%rdx, 464(%rax)	# D.11394, currMB_113->cbp_blk
	.loc 1 1567 0
	cmpl	$1, -356(%rbp)	#, level
	jg	.L371	#,
	.loc 1 1567 0 is_stmt 0 discriminator 1
	cmpl	$0, -300(%rbp)	#, lossless_qpprime
	je	.L372	#,
.L371:
	.loc 1 1568 0 is_stmt 1
	addl	$999999, -344(%rbp)	#, coeff_cost
	jmp	.L373	#
.L372:
	.loc 1 1570 0
	movq	input(%rip), %rax	# input, input.331
	movl	2468(%rax), %edx	# input.331_1049->disthres, D.11388
	movl	-348(%rbp), %eax	# run, tmp2373
	cltq
	movslq	%edx, %rdx	# D.11388, tmp2374
	salq	$4, %rdx	#, tmp2375
	addq	%rdx, %rax	# tmp2375, tmp2376
	addq	$COEFF_COST, %rax	#, tmp2377
	movzbl	(%rax), %eax	# COEFF_COST, D.11393
	movzbl	%al, %eax	# D.11393, D.11388
	addl	%eax, -344(%rbp)	# D.11388, coeff_cost
.L373:
	.loc 1 1572 0
	movl	$2, -340(%rbp)	#, cr_cbp_tmp
	.loc 1 1573 0
	movl	-352(%rbp), %eax	# scan_pos, tmp2378
	cltq
	leaq	0(,%rax,4), %rdx	#, D.11389
	movq	-240(%rbp), %rax	# ACLevel, tmp2379
	leaq	(%rdx,%rax), %rbx	#, D.11395
	movq	img(%rip), %rax	# img, img.332
	movl	-380(%rbp), %edx	# i, tmp2380
	movl	-364(%rbp), %ecx	# n1, tmp2381
	leal	(%rcx,%rdx), %esi	#, D.11388
	movl	-376(%rbp), %edx	# j, tmp2382
	movl	-368(%rbp), %ecx	# n2, tmp2383
	addl	%ecx, %edx	# tmp2383, D.11388
	movslq	%edx, %rdx	# D.11388, tmp2384
	movslq	%esi, %rcx	# D.11388, tmp2385
	salq	$4, %rcx	#, tmp2386
	addq	%rcx, %rdx	# tmp2386, tmp2387
	addq	$3276, %rdx	#, tmp2388
	movl	8(%rax,%rdx,4), %edx	# img.332_1059->m7, D.11388
	movl	-356(%rbp), %eax	# level, tmp2389
	movl	%edx, %esi	# D.11388,
	movl	%eax, %edi	# tmp2389,
	call	sign	#
	movl	%eax, (%rbx)	# D.11388, *_1058
	.loc 1 1574 0
	movl	-352(%rbp), %eax	# scan_pos, tmp2390
	cltq
	leaq	0(,%rax,4), %rdx	#, D.11389
	movq	-232(%rbp), %rax	# ACRun, tmp2391
	addq	%rax, %rdx	# tmp2391, D.11395
	movl	-348(%rbp), %eax	# run, tmp2392
	movl	%eax, (%rdx)	# tmp2392, *_1066
	.loc 1 1575 0
	addl	$1, -352(%rbp)	#, scan_pos
	.loc 1 1576 0
	movl	$-1, -348(%rbp)	#, run
	.loc 1 1578 0
	movq	img(%rip), %rax	# img, img.333
	movl	-380(%rbp), %edx	# i, tmp2393
	movl	-364(%rbp), %ecx	# n1, tmp2394
	leal	(%rcx,%rdx), %esi	#, D.11388
	movl	-376(%rbp), %edx	# j, tmp2395
	movl	-368(%rbp), %ecx	# n2, tmp2396
	addl	%ecx, %edx	# tmp2396, D.11388
	movslq	%edx, %rdx	# D.11388, tmp2397
	movslq	%esi, %rcx	# D.11388, tmp2398
	salq	$4, %rcx	#, tmp2399
	addq	%rcx, %rdx	# tmp2399, tmp2400
	addq	$3276, %rdx	#, tmp2401
	movl	8(%rax,%rdx,4), %edx	# img.333_1069->m7, D.11388
	movl	-356(%rbp), %eax	# level, tmp2402
	movl	%edx, %esi	# D.11388,
	movl	%eax, %edi	# tmp2402,
	call	sign	#
	movl	%eax, -356(%rbp)	# tmp2403, level
	.loc 1 1579 0
	cmpl	$0, -300(%rbp)	#, lossless_qpprime
	je	.L374	#,
	.loc 1 1581 0
	movl	-356(%rbp), %eax	# level, tmp2404
	movl	%eax, -372(%rbp)	# tmp2404, ilev
	jmp	.L370	#
.L374:
	.loc 1 1583 0
	cmpl	$3, -292(%rbp)	#, qp_per
	jg	.L375	#,
	.loc 1 1585 0
	cmpl	$1, -312(%rbp)	#, intra
	jne	.L376	#,
	.loc 1 1586 0
	movl	-376(%rbp), %eax	# j, tmp2406
	movslq	%eax, %rcx	# tmp2406, tmp2405
	movl	-288(%rbp), %eax	# qp_rem, tmp2408
	movslq	%eax, %rsi	# tmp2408, tmp2407
	movl	-388(%rbp), %eax	# uv, tmp2410
	movslq	%eax, %rdx	# tmp2410, tmp2409
	movq	%rdx, %rax	# tmp2409, tmp2411
	addq	%rax, %rax	# tmp2411
	addq	%rdx, %rax	# tmp2409, tmp2411
	addq	%rax, %rax	# tmp2412
	leaq	(%rax,%rsi), %rdx	#, tmp2413
	movl	-380(%rbp), %eax	# i, tmp2415
	cltq
	salq	$2, %rdx	#, tmp2416
	addq	%rdx, %rax	# tmp2416, tmp2417
	salq	$2, %rax	#, tmp2418
	addq	%rcx, %rax	# tmp2405, tmp2419
	movl	InvLevelScale4x4Chroma_Intra(,%rax,4), %eax	# InvLevelScale4x4Chroma_Intra, D.11388
	imull	-356(%rbp), %eax	# level, D.11388
	movl	%eax, %edx	# D.11388, D.11388
	movl	$3, %eax	#, tmp2420
	subl	-292(%rbp), %eax	# qp_per, D.11388
	movl	$1, %esi	#, tmp2421
	movl	%eax, %ecx	# D.11388, tmp2939
	sall	%cl, %esi	# tmp2939, D.11388
	movl	%esi, %eax	# D.11388, D.11388
	addl	%eax, %edx	# D.11388, D.11388
	movl	$4, %eax	#, tmp2422
	subl	-292(%rbp), %eax	# qp_per, D.11388
	movl	%eax, %ecx	# D.11388, tmp2941
	sarl	%cl, %edx	# tmp2941, tmp2423
	movl	%edx, %eax	# tmp2423, tmp2423
	movl	%eax, -372(%rbp)	# tmp2423, ilev
	jmp	.L370	#
.L376:
	.loc 1 1588 0
	movl	-376(%rbp), %eax	# j, tmp2425
	movslq	%eax, %rcx	# tmp2425, tmp2424
	movl	-288(%rbp), %eax	# qp_rem, tmp2427
	movslq	%eax, %rsi	# tmp2427, tmp2426
	movl	-388(%rbp), %eax	# uv, tmp2429
	movslq	%eax, %rdx	# tmp2429, tmp2428
	movq	%rdx, %rax	# tmp2428, tmp2430
	addq	%rax, %rax	# tmp2430
	addq	%rdx, %rax	# tmp2428, tmp2430
	addq	%rax, %rax	# tmp2431
	leaq	(%rax,%rsi), %rdx	#, tmp2432
	movl	-380(%rbp), %eax	# i, tmp2434
	cltq
	salq	$2, %rdx	#, tmp2435
	addq	%rdx, %rax	# tmp2435, tmp2436
	salq	$2, %rax	#, tmp2437
	addq	%rcx, %rax	# tmp2424, tmp2438
	movl	InvLevelScale4x4Chroma_Inter(,%rax,4), %eax	# InvLevelScale4x4Chroma_Inter, D.11388
	imull	-356(%rbp), %eax	# level, D.11388
	movl	%eax, %edx	# D.11388, D.11388
	movl	$3, %eax	#, tmp2439
	subl	-292(%rbp), %eax	# qp_per, D.11388
	movl	$1, %esi	#, tmp2440
	movl	%eax, %ecx	# D.11388, tmp2944
	sall	%cl, %esi	# tmp2944, D.11388
	movl	%esi, %eax	# D.11388, D.11388
	addl	%eax, %edx	# D.11388, D.11388
	movl	$4, %eax	#, tmp2441
	subl	-292(%rbp), %eax	# qp_per, D.11388
	movl	%eax, %ecx	# D.11388, tmp2946
	sarl	%cl, %edx	# tmp2946, tmp2442
	movl	%edx, %eax	# tmp2442, tmp2442
	movl	%eax, -372(%rbp)	# tmp2442, ilev
	jmp	.L370	#
.L375:
	.loc 1 1592 0
	cmpl	$1, -312(%rbp)	#, intra
	jne	.L378	#,
	.loc 1 1593 0
	movl	-376(%rbp), %eax	# j, tmp2444
	movslq	%eax, %rcx	# tmp2444, tmp2443
	movl	-288(%rbp), %eax	# qp_rem, tmp2446
	movslq	%eax, %rsi	# tmp2446, tmp2445
	movl	-388(%rbp), %eax	# uv, tmp2448
	movslq	%eax, %rdx	# tmp2448, tmp2447
	movq	%rdx, %rax	# tmp2447, tmp2449
	addq	%rax, %rax	# tmp2449
	addq	%rdx, %rax	# tmp2447, tmp2449
	addq	%rax, %rax	# tmp2450
	leaq	(%rax,%rsi), %rdx	#, tmp2451
	movl	-380(%rbp), %eax	# i, tmp2453
	cltq
	salq	$2, %rdx	#, tmp2454
	addq	%rdx, %rax	# tmp2454, tmp2455
	salq	$2, %rax	#, tmp2456
	addq	%rcx, %rax	# tmp2443, tmp2457
	movl	InvLevelScale4x4Chroma_Intra(,%rax,4), %eax	# InvLevelScale4x4Chroma_Intra, D.11388
	imull	-356(%rbp), %eax	# level, D.11388
	movl	%eax, %edx	# D.11388, D.11388
	movl	-292(%rbp), %eax	# qp_per, tmp2458
	subl	$4, %eax	#, D.11388
	movl	%eax, %ecx	# D.11388, tmp2949
	sall	%cl, %edx	# tmp2949, tmp2459
	movl	%edx, %eax	# tmp2459, tmp2459
	movl	%eax, -372(%rbp)	# tmp2459, ilev
	jmp	.L370	#
.L378:
	.loc 1 1595 0
	movl	-376(%rbp), %eax	# j, tmp2461
	movslq	%eax, %rcx	# tmp2461, tmp2460
	movl	-288(%rbp), %eax	# qp_rem, tmp2463
	movslq	%eax, %rsi	# tmp2463, tmp2462
	movl	-388(%rbp), %eax	# uv, tmp2465
	movslq	%eax, %rdx	# tmp2465, tmp2464
	movq	%rdx, %rax	# tmp2464, tmp2466
	addq	%rax, %rax	# tmp2466
	addq	%rdx, %rax	# tmp2464, tmp2466
	addq	%rax, %rax	# tmp2467
	leaq	(%rax,%rsi), %rdx	#, tmp2468
	movl	-380(%rbp), %eax	# i, tmp2470
	cltq
	salq	$2, %rdx	#, tmp2471
	addq	%rdx, %rax	# tmp2471, tmp2472
	salq	$2, %rax	#, tmp2473
	addq	%rcx, %rax	# tmp2460, tmp2474
	movl	InvLevelScale4x4Chroma_Inter(,%rax,4), %eax	# InvLevelScale4x4Chroma_Inter, D.11388
	imull	-356(%rbp), %eax	# level, D.11388
	movl	%eax, %edx	# D.11388, D.11388
	movl	-292(%rbp), %eax	# qp_per, tmp2475
	subl	$4, %eax	#, D.11388
	movl	%eax, %ecx	# D.11388, tmp2952
	sall	%cl, %edx	# tmp2952, tmp2476
	movl	%edx, %eax	# tmp2476, tmp2476
	movl	%eax, -372(%rbp)	# tmp2476, ilev
.L370:
	.loc 1 1598 0
	cmpl	$0, -300(%rbp)	#, lossless_qpprime
	jne	.L379	#,
	.loc 1 1599 0
	movq	img(%rip), %rax	# img, img.334
	movl	-380(%rbp), %edx	# i, tmp2477
	movl	-364(%rbp), %ecx	# n1, tmp2478
	leal	(%rcx,%rdx), %esi	#, D.11388
	movl	-376(%rbp), %edx	# j, tmp2479
	movl	-368(%rbp), %ecx	# n2, tmp2480
	addl	%ecx, %edx	# tmp2480, D.11388
	movslq	%edx, %rdx	# D.11388, tmp2481
	movslq	%esi, %rcx	# D.11388, tmp2482
	salq	$4, %rcx	#, tmp2483
	addq	%rcx, %rdx	# tmp2483, tmp2484
	leaq	3276(%rdx), %rcx	#, tmp2485
	movl	-372(%rbp), %edx	# ilev, tmp2486
	movl	%edx, 8(%rax,%rcx,4)	# tmp2486, img.334_1097->m7
.L379:
	.loc 1 1541 0
	addl	$1, -360(%rbp)	#, coeff_ctr
.L363:
	.loc 1 1541 0 is_stmt 0 discriminator 1
	cmpl	$15, -360(%rbp)	#, coeff_ctr
	jle	.L380	#,
	.loc 1 1601 0 is_stmt 1
	movl	-352(%rbp), %eax	# scan_pos, tmp2487
	cltq
	leaq	0(,%rax,4), %rdx	#, D.11389
	movq	-240(%rbp), %rax	# ACLevel, tmp2488
	addq	%rdx, %rax	# D.11389, D.11395
	movl	$0, (%rax)	#, *_1103
	.loc 1 1532 0
	addl	$1, -332(%rbp)	#, b4
.L362:
	.loc 1 1532 0 is_stmt 0 discriminator 1
	cmpl	$3, -332(%rbp)	#, b4
	jle	.L381	#,
	.loc 1 1530 0 is_stmt 1
	addl	$1, -328(%rbp)	#, b8
.L361:
	.loc 1 1530 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.335
	movl	72692(%rax), %eax	# img.335_966->num_blk8x8_uv, D.11388
	movl	%eax, %edx	# D.11388, tmp2489
	shrl	$31, %edx	#, tmp2489
	addl	%edx, %eax	# tmp2489, tmp2490
	sarl	%eax	# tmp2491
	cmpl	-328(%rbp), %eax	# b8, D.11388
	jg	.L382	#,
	.loc 1 1606 0 is_stmt 1
	cmpl	$3, -344(%rbp)	#, coeff_cost
	jg	.L383	#,
	.loc 1 1606 0 is_stmt 0 discriminator 1
	cmpl	$0, -300(%rbp)	#, lossless_qpprime
	jne	.L383	#,
	.loc 1 1608 0 is_stmt 1
	movl	$0, -340(%rbp)	#, cr_cbp_tmp
	.loc 1 1610 0
	movl	$0, -328(%rbp)	#, b8
	jmp	.L384	#
.L393:
	.loc 1 1612 0
	movl	$0, -332(%rbp)	#, b4
	jmp	.L385	#
.L392:
	.loc 1 1614 0
	movl	-332(%rbp), %eax	# b4, tmp2493
	cltq
	movl	-304(%rbp), %edx	# yuv, tmp2495
	movslq	%edx, %rcx	# tmp2495, tmp2494
	movl	-328(%rbp), %edx	# b8, tmp2497
	movslq	%edx, %rdx	# tmp2497, tmp2496
	salq	$2, %rcx	#, tmp2498
	addq	%rcx, %rdx	# tmp2498, tmp2499
	movzbl	hor_offset(%rax,%rdx,4), %eax	# hor_offset, D.11393
	movzbl	%al, %eax	# D.11393, tmp2500
	movl	%eax, -364(%rbp)	# tmp2500, n1
	.loc 1 1615 0
	movl	-332(%rbp), %eax	# b4, tmp2502
	cltq
	movl	-304(%rbp), %edx	# yuv, tmp2504
	movslq	%edx, %rcx	# tmp2504, tmp2503
	movl	-328(%rbp), %edx	# b8, tmp2506
	movslq	%edx, %rdx	# tmp2506, tmp2505
	salq	$2, %rcx	#, tmp2507
	addq	%rcx, %rdx	# tmp2507, tmp2508
	movzbl	ver_offset(%rax,%rdx,4), %eax	# ver_offset, D.11393
	movzbl	%al, %eax	# D.11393, tmp2509
	movl	%eax, -368(%rbp)	# tmp2509, n2
	.loc 1 1616 0
	movq	img(%rip), %rax	# img, img.336
	movq	14136(%rax), %rax	# img.336_1116->cofAC, D.11396
	movl	-328(%rbp), %edx	# b8, tmp2510
	leal	4(%rdx), %ecx	#, D.11388
	movl	-308(%rbp), %edx	# uv_scale, tmp2511
	addl	%ecx, %edx	# D.11388, D.11388
	movslq	%edx, %rdx	# D.11388, D.11389
	salq	$3, %rdx	#, D.11389
	addq	%rdx, %rax	# D.11389, D.11396
	movq	(%rax), %rax	# *_1122, D.11390
	movl	-332(%rbp), %edx	# b4, tmp2512
	movslq	%edx, %rdx	# tmp2512, D.11389
	salq	$3, %rdx	#, D.11389
	addq	%rdx, %rax	# D.11389, D.11390
	movq	(%rax), %rax	# *_1126, D.11392
	movq	(%rax), %rax	# *_1127, tmp2513
	movq	%rax, -240(%rbp)	# tmp2513, ACLevel
	.loc 1 1617 0
	movq	img(%rip), %rax	# img, img.337
	movq	14136(%rax), %rax	# img.337_1129->cofAC, D.11396
	movl	-328(%rbp), %edx	# b8, tmp2514
	leal	4(%rdx), %ecx	#, D.11388
	movl	-308(%rbp), %edx	# uv_scale, tmp2515
	addl	%ecx, %edx	# D.11388, D.11388
	movslq	%edx, %rdx	# D.11388, D.11389
	salq	$3, %rdx	#, D.11389
	addq	%rdx, %rax	# D.11389, D.11396
	movq	(%rax), %rax	# *_1135, D.11390
	movl	-332(%rbp), %edx	# b4, tmp2516
	movslq	%edx, %rdx	# tmp2516, D.11389
	salq	$3, %rdx	#, D.11389
	addq	%rdx, %rax	# D.11389, D.11390
	movq	(%rax), %rax	# *_1139, D.11392
	movq	8(%rax), %rax	# MEM[(int * *)_1140 + 8B], tmp2517
	movq	%rax, -232(%rbp)	# tmp2517, ACRun
	.loc 1 1618 0
	cmpl	$0, -336(%rbp)	#, DCcoded
	jne	.L386	#,
	.loc 1 1618 0 is_stmt 0 discriminator 1
	movq	-264(%rbp), %rax	# currMB, tmp2518
	movq	464(%rax), %rdx	# currMB_113->cbp_blk, D.11394
	movl	-304(%rbp), %eax	# yuv, tmp2520
	cltq
	movq	-176(%rbp,%rax,8), %rsi	# cbpblk_pattern, D.11394
	movl	-304(%rbp), %eax	# yuv, tmp2521
	addl	$1, %eax	#, D.11388
	movl	-388(%rbp), %edi	# uv, tmp2522
	movl	%eax, %ecx	# D.11388, tmp2955
	sall	%cl, %edi	# tmp2955, D.11388
	movl	%edi, %eax	# D.11388, D.11388
	movl	%eax, %ecx	# D.11388, tmp2957
	salq	%cl, %rsi	# tmp2957, D.11394
	movq	%rsi, %rax	# D.11394, D.11394
	notq	%rax	# D.11394
	andq	%rax, %rdx	# D.11394, D.11394
	movq	-264(%rbp), %rax	# currMB, tmp2523
	movq	%rdx, 464(%rax)	# D.11394, currMB_113->cbp_blk
.L386:
	.loc 1 1620 0 is_stmt 1
	movq	-240(%rbp), %rax	# ACLevel, tmp2524
	movl	$0, (%rax)	#, *ACLevel_1128
	.loc 1 1621 0
	movl	$1, -360(%rbp)	#, coeff_ctr
	jmp	.L387	#
.L391:
	.loc 1 1624 0
	movq	img(%rip), %rax	# img, img.338
	movl	72444(%rax), %eax	# img.338_1150->field_picture, D.11397
	testl	%eax, %eax	# D.11397
	jne	.L388	#,
	.loc 1 1624 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.339
	movl	72400(%rax), %eax	# img.339_1152->MbaffFrameFlag, D.11388
	testl	%eax, %eax	# D.11388
	je	.L389	#,
	movq	-264(%rbp), %rax	# currMB, tmp2525
	movl	532(%rax), %eax	# currMB_113->mb_field, D.11388
	testl	%eax, %eax	# D.11388
	je	.L389	#,
.L388:
	.loc 1 1626 0 is_stmt 1
	movl	-360(%rbp), %eax	# coeff_ctr, tmp2527
	cltq
	movzbl	FIELD_SCAN(%rax,%rax), %eax	# FIELD_SCAN, D.11393
	movzbl	%al, %eax	# D.11393, tmp2528
	movl	%eax, -380(%rbp)	# tmp2528, i
	.loc 1 1627 0
	movl	-360(%rbp), %eax	# coeff_ctr, tmp2530
	cltq
	movzbl	FIELD_SCAN+1(%rax,%rax), %eax	# FIELD_SCAN, D.11393
	movzbl	%al, %eax	# D.11393, tmp2531
	movl	%eax, -376(%rbp)	# tmp2531, j
	jmp	.L390	#
.L389:
	.loc 1 1631 0
	movl	-360(%rbp), %eax	# coeff_ctr, tmp2533
	cltq
	movzbl	SNGL_SCAN(%rax,%rax), %eax	# SNGL_SCAN, D.11393
	movzbl	%al, %eax	# D.11393, tmp2534
	movl	%eax, -380(%rbp)	# tmp2534, i
	.loc 1 1632 0
	movl	-360(%rbp), %eax	# coeff_ctr, tmp2536
	cltq
	movzbl	SNGL_SCAN+1(%rax,%rax), %eax	# SNGL_SCAN, D.11393
	movzbl	%al, %eax	# D.11393, tmp2537
	movl	%eax, -376(%rbp)	# tmp2537, j
.L390:
	.loc 1 1634 0
	movq	img(%rip), %rax	# img, img.340
	movl	-380(%rbp), %edx	# i, tmp2538
	movl	-364(%rbp), %ecx	# n1, tmp2539
	leal	(%rcx,%rdx), %esi	#, D.11388
	movl	-376(%rbp), %edx	# j, tmp2540
	movl	-368(%rbp), %ecx	# n2, tmp2541
	addl	%ecx, %edx	# tmp2541, D.11388
	movslq	%edx, %rdx	# D.11388, tmp2542
	movslq	%esi, %rcx	# D.11388, tmp2543
	salq	$4, %rcx	#, tmp2544
	addq	%rcx, %rdx	# tmp2544, tmp2545
	addq	$3276, %rdx	#, tmp2546
	movl	$0, 8(%rax,%rdx,4)	#, img.340_1163->m7
	.loc 1 1635 0
	movl	-360(%rbp), %eax	# coeff_ctr, tmp2547
	cltq
	leaq	0(,%rax,4), %rdx	#, D.11389
	movq	-240(%rbp), %rax	# ACLevel, tmp2548
	addq	%rdx, %rax	# D.11389, D.11395
	movl	$0, (%rax)	#, *_1168
	.loc 1 1621 0
	addl	$1, -360(%rbp)	#, coeff_ctr
.L387:
	.loc 1 1621 0 is_stmt 0 discriminator 1
	cmpl	$15, -360(%rbp)	#, coeff_ctr
	jle	.L391	#,
	.loc 1 1612 0 is_stmt 1
	addl	$1, -332(%rbp)	#, b4
.L385:
	.loc 1 1612 0 is_stmt 0 discriminator 1
	cmpl	$3, -332(%rbp)	#, b4
	jle	.L392	#,
	.loc 1 1610 0 is_stmt 1
	addl	$1, -328(%rbp)	#, b8
.L384:
	.loc 1 1610 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.341
	movl	72692(%rax), %eax	# img.341_1108->num_blk8x8_uv, D.11388
	movl	%eax, %edx	# D.11388, tmp2549
	shrl	$31, %edx	#, tmp2549
	addl	%edx, %eax	# tmp2549, tmp2550
	sarl	%eax	# tmp2551
	cmpl	-328(%rbp), %eax	# b8, D.11388
	jg	.L393	#,
.L383:
	.loc 1 1642 0 is_stmt 1
	cmpl	$2, -340(%rbp)	#, cr_cbp_tmp
	jne	.L394	#,
	.loc 1 1643 0
	movl	$2, -392(%rbp)	#, cr_cbp
.L394:
	.loc 1 1648 0
	movl	$0, -368(%rbp)	#, n2
	jmp	.L395	#
.L415:
	.loc 1 1650 0
	movl	$0, -364(%rbp)	#, n1
	jmp	.L396	#
.L413:
	.loc 1 1652 0
	movl	$0, -376(%rbp)	#, j
	jmp	.L397	#
.L402:
	.loc 1 1654 0
	movl	$0, -380(%rbp)	#, i
	jmp	.L398	#
.L399:
	.loc 1 1656 0 discriminator 2
	movq	img(%rip), %rax	# img, img.342
	movl	-380(%rbp), %edx	# i, tmp2552
	movl	-364(%rbp), %ecx	# n1, tmp2553
	leal	(%rcx,%rdx), %esi	#, D.11388
	movl	-376(%rbp), %edx	# j, tmp2554
	movl	-368(%rbp), %ecx	# n2, tmp2555
	addl	%ecx, %edx	# tmp2555, D.11388
	movslq	%edx, %rdx	# D.11388, tmp2556
	movslq	%esi, %rcx	# D.11388, tmp2557
	salq	$4, %rcx	#, tmp2558
	addq	%rcx, %rdx	# tmp2558, tmp2559
	addq	$3276, %rdx	#, tmp2560
	movl	8(%rax,%rdx,4), %edx	# img.342_1181->m7, D.11388
	movl	-380(%rbp), %eax	# i, tmp2562
	cltq
	movl	%edx, -208(%rbp,%rax,4)	# D.11388, m5
	.loc 1 1654 0 discriminator 2
	addl	$1, -380(%rbp)	#, i
.L398:
	.loc 1 1654 0 is_stmt 0 discriminator 1
	cmpl	$3, -380(%rbp)	#, i
	jle	.L399	#,
	.loc 1 1658 0 is_stmt 1
	movl	-208(%rbp), %edx	# m5, D.11388
	movl	-200(%rbp), %eax	# m5, D.11388
	addl	%edx, %eax	# D.11388, D.11388
	movl	%eax, -192(%rbp)	# D.11388, m6
	.loc 1 1659 0
	movl	-208(%rbp), %edx	# m5, D.11388
	movl	-200(%rbp), %eax	# m5, D.11388
	subl	%eax, %edx	# D.11388, D.11388
	movl	%edx, %eax	# D.11388, D.11388
	movl	%eax, -188(%rbp)	# D.11388, m6
	.loc 1 1660 0
	movl	-204(%rbp), %eax	# m5, D.11388
	sarl	%eax	# D.11388
	movl	%eax, %edx	# D.11388, D.11388
	movl	-196(%rbp), %eax	# m5, D.11388
	subl	%eax, %edx	# D.11388, D.11388
	movl	%edx, %eax	# D.11388, D.11388
	movl	%eax, -184(%rbp)	# D.11388, m6
	.loc 1 1661 0
	movl	-204(%rbp), %eax	# m5, D.11388
	movl	-196(%rbp), %edx	# m5, D.11388
	sarl	%edx	# D.11388
	addl	%edx, %eax	# D.11388, D.11388
	movl	%eax, -180(%rbp)	# D.11388, m6
	.loc 1 1663 0
	movl	$0, -380(%rbp)	#, i
	jmp	.L400	#
.L401:
	.loc 1 1665 0 discriminator 2
	movl	$3, %eax	#, tmp2566
	subl	-380(%rbp), %eax	# i, tmp2565
	movl	%eax, -276(%rbp)	# tmp2565, i1
	.loc 1 1666 0 discriminator 2
	movq	img(%rip), %rax	# img, img.343
	movl	-380(%rbp), %edx	# i, tmp2567
	movl	-364(%rbp), %ecx	# n1, tmp2568
	leal	(%rcx,%rdx), %esi	#, D.11388
	movl	-376(%rbp), %edx	# j, tmp2569
	movl	-368(%rbp), %ecx	# n2, tmp2570
	leal	(%rcx,%rdx), %edi	#, D.11388
	movl	-380(%rbp), %edx	# i, tmp2572
	movslq	%edx, %rdx	# tmp2572, tmp2571
	movl	-192(%rbp,%rdx,4), %ecx	# m6, D.11388
	movl	-276(%rbp), %edx	# i1, tmp2574
	movslq	%edx, %rdx	# tmp2574, tmp2573
	movl	-192(%rbp,%rdx,4), %edx	# m6, D.11388
	addl	%edx, %ecx	# D.11388, D.11388
	movslq	%edi, %rdx	# D.11388, tmp2575
	movslq	%esi, %rsi	# D.11388, tmp2576
	salq	$4, %rsi	#, tmp2577
	addq	%rsi, %rdx	# tmp2577, tmp2578
	addq	$3276, %rdx	#, tmp2579
	movl	%ecx, 8(%rax,%rdx,4)	# D.11388, img.343_1202->m7
	.loc 1 1667 0 discriminator 2
	movq	img(%rip), %rax	# img, img.344
	movl	-276(%rbp), %edx	# i1, tmp2580
	movl	-364(%rbp), %ecx	# n1, tmp2581
	leal	(%rcx,%rdx), %esi	#, D.11388
	movl	-376(%rbp), %edx	# j, tmp2582
	movl	-368(%rbp), %ecx	# n2, tmp2583
	leal	(%rcx,%rdx), %edi	#, D.11388
	movl	-380(%rbp), %edx	# i, tmp2585
	movslq	%edx, %rdx	# tmp2585, tmp2584
	movl	-192(%rbp,%rdx,4), %ecx	# m6, D.11388
	movl	-276(%rbp), %edx	# i1, tmp2587
	movslq	%edx, %rdx	# tmp2587, tmp2586
	movl	-192(%rbp,%rdx,4), %edx	# m6, D.11388
	subl	%edx, %ecx	# D.11388, D.11388
	movslq	%edi, %rdx	# D.11388, tmp2588
	movslq	%esi, %rsi	# D.11388, tmp2589
	salq	$4, %rsi	#, tmp2590
	addq	%rsi, %rdx	# tmp2590, tmp2591
	addq	$3276, %rdx	#, tmp2592
	movl	%ecx, 8(%rax,%rdx,4)	# D.11388, img.344_1208->m7
	.loc 1 1663 0 discriminator 2
	addl	$1, -380(%rbp)	#, i
.L400:
	.loc 1 1663 0 is_stmt 0 discriminator 1
	cmpl	$1, -380(%rbp)	#, i
	jle	.L401	#,
	.loc 1 1652 0 is_stmt 1
	addl	$1, -376(%rbp)	#, j
.L397:
	.loc 1 1652 0 is_stmt 0 discriminator 1
	cmpl	$3, -376(%rbp)	#, j
	jle	.L402	#,
	.loc 1 1672 0 is_stmt 1
	movl	$0, -380(%rbp)	#, i
	jmp	.L403	#
.L412:
	.loc 1 1674 0
	movl	$0, -376(%rbp)	#, j
	jmp	.L404	#
.L405:
	.loc 1 1676 0 discriminator 2
	movq	img(%rip), %rax	# img, img.345
	movl	-380(%rbp), %edx	# i, tmp2593
	movl	-364(%rbp), %ecx	# n1, tmp2594
	leal	(%rcx,%rdx), %esi	#, D.11388
	movl	-376(%rbp), %edx	# j, tmp2595
	movl	-368(%rbp), %ecx	# n2, tmp2596
	addl	%ecx, %edx	# tmp2596, D.11388
	movslq	%edx, %rdx	# D.11388, tmp2597
	movslq	%esi, %rcx	# D.11388, tmp2598
	salq	$4, %rcx	#, tmp2599
	addq	%rcx, %rdx	# tmp2599, tmp2600
	addq	$3276, %rdx	#, tmp2601
	movl	8(%rax,%rdx,4), %edx	# img.345_1218->m7, D.11388
	movl	-376(%rbp), %eax	# j, tmp2603
	cltq
	movl	%edx, -208(%rbp,%rax,4)	# D.11388, m5
	.loc 1 1674 0 discriminator 2
	addl	$1, -376(%rbp)	#, j
.L404:
	.loc 1 1674 0 is_stmt 0 discriminator 1
	cmpl	$3, -376(%rbp)	#, j
	jle	.L405	#,
	.loc 1 1678 0 is_stmt 1
	movl	-208(%rbp), %edx	# m5, D.11388
	movl	-200(%rbp), %eax	# m5, D.11388
	addl	%edx, %eax	# D.11388, D.11388
	movl	%eax, -192(%rbp)	# D.11388, m6
	.loc 1 1679 0
	movl	-208(%rbp), %edx	# m5, D.11388
	movl	-200(%rbp), %eax	# m5, D.11388
	subl	%eax, %edx	# D.11388, D.11388
	movl	%edx, %eax	# D.11388, D.11388
	movl	%eax, -188(%rbp)	# D.11388, m6
	.loc 1 1680 0
	movl	-204(%rbp), %eax	# m5, D.11388
	sarl	%eax	# D.11388
	movl	%eax, %edx	# D.11388, D.11388
	movl	-196(%rbp), %eax	# m5, D.11388
	subl	%eax, %edx	# D.11388, D.11388
	movl	%edx, %eax	# D.11388, D.11388
	movl	%eax, -184(%rbp)	# D.11388, m6
	.loc 1 1681 0
	movl	-204(%rbp), %eax	# m5, D.11388
	movl	-196(%rbp), %edx	# m5, D.11388
	sarl	%edx	# D.11388
	addl	%edx, %eax	# D.11388, D.11388
	movl	%eax, -180(%rbp)	# D.11388, m6
	.loc 1 1683 0
	movl	$0, -376(%rbp)	#, j
	jmp	.L406	#
.L410:
	.loc 1 1685 0
	movl	$3, %eax	#, tmp2607
	subl	-376(%rbp), %eax	# j, tmp2606
	movl	%eax, -268(%rbp)	# tmp2606, j2
	.loc 1 1687 0
	movq	img(%rip), %rax	# img, img.346
	movl	72724(%rax), %eax	# img.346_1239->residue_transform_flag, D.11388
	testl	%eax, %eax	# D.11388
	jne	.L407	#,
	.loc 1 1689 0
	movq	img(%rip), %rcx	# img, img.347
	movl	-380(%rbp), %eax	# i, tmp2608
	movl	-364(%rbp), %edx	# n1, tmp2609
	leal	(%rdx,%rax), %r8d	#, D.11388
	movl	-376(%rbp), %eax	# j, tmp2610
	movl	-368(%rbp), %edx	# n2, tmp2611
	leal	(%rdx,%rax), %r9d	#, D.11388
	movl	-376(%rbp), %eax	# j, tmp2613
	cltq
	movl	-192(%rbp,%rax,4), %edx	# m6, D.11388
	movl	-268(%rbp), %eax	# j2, tmp2615
	cltq
	movl	-192(%rbp,%rax,4), %eax	# m6, D.11388
	addl	%edx, %eax	# D.11388, D.11388
	movslq	%eax, %rdx	# D.11388, D.11394
	movq	img(%rip), %rax	# img, img.348
	movl	-380(%rbp), %esi	# i, tmp2616
	movl	-364(%rbp), %edi	# n1, tmp2617
	leal	(%rdi,%rsi), %r10d	#, D.11388
	movl	-376(%rbp), %esi	# j, tmp2618
	movl	-368(%rbp), %edi	# n2, tmp2619
	addl	%edi, %esi	# tmp2619, D.11388
	movslq	%esi, %rsi	# D.11388, tmp2620
	movslq	%r10d, %rdi	# D.11388, tmp2621
	salq	$4, %rdi	#, tmp2622
	addq	%rdi, %rsi	# tmp2622, tmp2623
	addq	$6296, %rsi	#, tmp2624
	movzwl	8(%rax,%rsi,2), %eax	# img.348_1248->mpr, D.11398
	movzwl	%ax, %eax	# D.11398, D.11394
	salq	$6, %rax	#, D.11394
	addq	%rdx, %rax	# D.11394, D.11394
	addq	$32, %rax	#, D.11394
	sarq	$6, %rax	#, D.11394
	movl	$0, %edx	#, tmp2625
	testq	%rax, %rax	# D.11394
	cmovns	%rax, %rdx	# D.11394,, D.11394
	movq	img(%rip), %rax	# img, img.349
	movl	72688(%rax), %eax	# img.349_1258->max_imgpel_value_uv, D.11388
	cltq
	cmpq	%rax, %rdx	# D.11394, D.11394
	cmovle	%rdx, %rax	# D.11394,, D.11394
	movslq	%r9d, %rdx	# D.11388, tmp2626
	movslq	%r8d, %rsi	# D.11388, tmp2627
	salq	$4, %rsi	#, tmp2628
	addq	%rsi, %rdx	# tmp2628, tmp2629
	addq	$3276, %rdx	#, tmp2630
	movl	%eax, 8(%rcx,%rdx,4)	# D.11388, img.347_1241->m7
	.loc 1 1690 0
	movq	img(%rip), %rcx	# img, img.350
	movl	-380(%rbp), %eax	# i, tmp2631
	movl	-364(%rbp), %edx	# n1, tmp2632
	leal	(%rdx,%rax), %r8d	#, D.11388
	movl	-268(%rbp), %eax	# j2, tmp2633
	movl	-368(%rbp), %edx	# n2, tmp2634
	leal	(%rdx,%rax), %r9d	#, D.11388
	movl	-376(%rbp), %eax	# j, tmp2636
	cltq
	movl	-192(%rbp,%rax,4), %edx	# m6, D.11388
	movl	-268(%rbp), %eax	# j2, tmp2638
	cltq
	movl	-192(%rbp,%rax,4), %eax	# m6, D.11388
	subl	%eax, %edx	# D.11388, D.11388
	movl	%edx, %eax	# D.11388, D.11388
	movslq	%eax, %rdx	# D.11388, D.11394
	movq	img(%rip), %rax	# img, img.351
	movl	-380(%rbp), %esi	# i, tmp2639
	movl	-364(%rbp), %edi	# n1, tmp2640
	leal	(%rdi,%rsi), %r10d	#, D.11388
	movl	-268(%rbp), %esi	# j2, tmp2641
	movl	-368(%rbp), %edi	# n2, tmp2642
	addl	%edi, %esi	# tmp2642, D.11388
	movslq	%esi, %rsi	# D.11388, tmp2643
	movslq	%r10d, %rdi	# D.11388, tmp2644
	salq	$4, %rdi	#, tmp2645
	addq	%rdi, %rsi	# tmp2645, tmp2646
	addq	$6296, %rsi	#, tmp2647
	movzwl	8(%rax,%rsi,2), %eax	# img.351_1270->mpr, D.11398
	movzwl	%ax, %eax	# D.11398, D.11394
	salq	$6, %rax	#, D.11394
	addq	%rdx, %rax	# D.11394, D.11394
	addq	$32, %rax	#, D.11394
	sarq	$6, %rax	#, D.11394
	movl	$0, %edx	#, tmp2648
	testq	%rax, %rax	# D.11394
	cmovns	%rax, %rdx	# D.11394,, D.11394
	movq	img(%rip), %rax	# img, img.352
	movl	72688(%rax), %eax	# img.352_1280->max_imgpel_value_uv, D.11388
	cltq
	cmpq	%rax, %rdx	# D.11394, D.11394
	cmovle	%rdx, %rax	# D.11394,, D.11394
	movslq	%r9d, %rdx	# D.11388, tmp2649
	movslq	%r8d, %rsi	# D.11388, tmp2650
	salq	$4, %rsi	#, tmp2651
	addq	%rsi, %rdx	# tmp2651, tmp2652
	addq	$3276, %rdx	#, tmp2653
	movl	%eax, 8(%rcx,%rdx,4)	# D.11388, img.350_1263->m7
	jmp	.L408	#
.L407:
	.loc 1 1694 0
	cmpl	$0, -300(%rbp)	#, lossless_qpprime
	je	.L409	#,
	.loc 1 1696 0
	movq	img(%rip), %rax	# img, img.353
	movl	-380(%rbp), %edx	# i, tmp2654
	movl	-364(%rbp), %ecx	# n1, tmp2655
	leal	(%rcx,%rdx), %esi	#, D.11388
	movl	-376(%rbp), %edx	# j, tmp2656
	movl	-368(%rbp), %ecx	# n2, tmp2657
	leal	(%rcx,%rdx), %edi	#, D.11388
	movl	-376(%rbp), %edx	# j, tmp2659
	movslq	%edx, %rdx	# tmp2659, tmp2658
	movl	-192(%rbp,%rdx,4), %ecx	# m6, D.11388
	movl	-268(%rbp), %edx	# j2, tmp2661
	movslq	%edx, %rdx	# tmp2661, tmp2660
	movl	-192(%rbp,%rdx,4), %edx	# m6, D.11388
	addl	%edx, %ecx	# D.11388, D.11388
	movslq	%edi, %rdx	# D.11388, tmp2662
	movslq	%esi, %rsi	# D.11388, tmp2663
	salq	$4, %rsi	#, tmp2664
	addq	%rsi, %rdx	# tmp2664, tmp2665
	addq	$3276, %rdx	#, tmp2666
	movl	%ecx, 8(%rax,%rdx,4)	# D.11388, img.353_1285->m7
	.loc 1 1697 0
	movq	img(%rip), %rax	# img, img.354
	movl	-380(%rbp), %edx	# i, tmp2667
	movl	-364(%rbp), %ecx	# n1, tmp2668
	leal	(%rcx,%rdx), %esi	#, D.11388
	movl	-268(%rbp), %edx	# j2, tmp2669
	movl	-368(%rbp), %ecx	# n2, tmp2670
	leal	(%rcx,%rdx), %edi	#, D.11388
	movl	-376(%rbp), %edx	# j, tmp2672
	movslq	%edx, %rdx	# tmp2672, tmp2671
	movl	-192(%rbp,%rdx,4), %ecx	# m6, D.11388
	movl	-268(%rbp), %edx	# j2, tmp2674
	movslq	%edx, %rdx	# tmp2674, tmp2673
	movl	-192(%rbp,%rdx,4), %edx	# m6, D.11388
	subl	%edx, %ecx	# D.11388, D.11388
	movslq	%edi, %rdx	# D.11388, tmp2675
	movslq	%esi, %rsi	# D.11388, tmp2676
	salq	$4, %rsi	#, tmp2677
	addq	%rsi, %rdx	# tmp2677, tmp2678
	addq	$3276, %rdx	#, tmp2679
	movl	%ecx, 8(%rax,%rdx,4)	# D.11388, img.354_1291->m7
	jmp	.L408	#
.L409:
	.loc 1 1701 0
	movq	img(%rip), %rax	# img, img.355
	movl	-380(%rbp), %edx	# i, tmp2680
	movl	-364(%rbp), %ecx	# n1, tmp2681
	leal	(%rcx,%rdx), %esi	#, D.11388
	movl	-376(%rbp), %edx	# j, tmp2682
	movl	-368(%rbp), %ecx	# n2, tmp2683
	leal	(%rcx,%rdx), %edi	#, D.11388
	movl	-376(%rbp), %edx	# j, tmp2685
	movslq	%edx, %rdx	# tmp2685, tmp2684
	movl	-192(%rbp,%rdx,4), %ecx	# m6, D.11388
	movl	-268(%rbp), %edx	# j2, tmp2687
	movslq	%edx, %rdx	# tmp2687, tmp2686
	movl	-192(%rbp,%rdx,4), %edx	# m6, D.11388
	addl	%ecx, %edx	# D.11388, D.11388
	addl	$32, %edx	#, D.11388
	movl	%edx, %ecx	# D.11388, D.11388
	sarl	$6, %ecx	#, D.11388
	movslq	%edi, %rdx	# D.11388, tmp2688
	movslq	%esi, %rsi	# D.11388, tmp2689
	salq	$4, %rsi	#, tmp2690
	addq	%rsi, %rdx	# tmp2690, tmp2691
	addq	$3276, %rdx	#, tmp2692
	movl	%ecx, 8(%rax,%rdx,4)	# D.11388, img.355_1297->m7
	.loc 1 1702 0
	movq	img(%rip), %rax	# img, img.356
	movl	-380(%rbp), %edx	# i, tmp2693
	movl	-364(%rbp), %ecx	# n1, tmp2694
	leal	(%rcx,%rdx), %esi	#, D.11388
	movl	-268(%rbp), %edx	# j2, tmp2695
	movl	-368(%rbp), %ecx	# n2, tmp2696
	leal	(%rcx,%rdx), %edi	#, D.11388
	movl	-376(%rbp), %edx	# j, tmp2698
	movslq	%edx, %rdx	# tmp2698, tmp2697
	movl	-192(%rbp,%rdx,4), %ecx	# m6, D.11388
	movl	-268(%rbp), %edx	# j2, tmp2700
	movslq	%edx, %rdx	# tmp2700, tmp2699
	movl	-192(%rbp,%rdx,4), %edx	# m6, D.11388
	subl	%edx, %ecx	# D.11388, D.11388
	movl	%ecx, %edx	# D.11388, D.11388
	addl	$32, %edx	#, D.11388
	movl	%edx, %ecx	# D.11388, D.11388
	sarl	$6, %ecx	#, D.11388
	movslq	%edi, %rdx	# D.11388, tmp2701
	movslq	%esi, %rsi	# D.11388, tmp2702
	salq	$4, %rsi	#, tmp2703
	addq	%rsi, %rdx	# tmp2703, tmp2704
	addq	$3276, %rdx	#, tmp2705
	movl	%ecx, 8(%rax,%rdx,4)	# D.11388, img.356_1305->m7
.L408:
	.loc 1 1683 0
	addl	$1, -376(%rbp)	#, j
.L406:
	.loc 1 1683 0 is_stmt 0 discriminator 1
	cmpl	$1, -376(%rbp)	#, j
	jle	.L410	#,
	.loc 1 1672 0 is_stmt 1
	addl	$1, -380(%rbp)	#, i
.L403:
	.loc 1 1672 0 is_stmt 0 discriminator 1
	cmpl	$3, -380(%rbp)	#, i
	jg	.L411	#,
	.loc 1 1672 0 discriminator 2
	cmpl	$0, -300(%rbp)	#, lossless_qpprime
	je	.L412	#,
.L411:
	.loc 1 1650 0 is_stmt 1
	addl	$4, -364(%rbp)	#, n1
.L396:
	.loc 1 1650 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.357
	movl	72708(%rax), %eax	# img.357_1177->mb_cr_size_x, D.11388
	cmpl	-364(%rbp), %eax	# n1, D.11388
	jg	.L413	#,
	.loc 1 1648 0 is_stmt 1
	addl	$4, -368(%rbp)	#, n2
.L395:
	.loc 1 1648 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.358
	movl	72712(%rax), %eax	# img.358_1174->mb_cr_size_y, D.11388
	cmpl	-368(%rbp), %eax	# n2, D.11388
	jle	.L414	#,
	.loc 1 1648 0 discriminator 2
	cmpl	$0, -300(%rbp)	#, lossless_qpprime
	je	.L415	#,
.L414:
	.loc 1 1711 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.359
	movl	72724(%rax), %eax	# img.359_1317->residue_transform_flag, D.11388
	testl	%eax, %eax	# D.11388
	jne	.L416	#,
	.loc 1 1712 0
	movl	$0, -376(%rbp)	#, j
	jmp	.L417	#
.L422:
	.loc 1 1714 0
	movl	$0, -380(%rbp)	#, i
	jmp	.L418	#
.L421:
	.loc 1 1716 0
	cmpl	$0, -300(%rbp)	#, lossless_qpprime
	je	.L419	#,
	.loc 1 1717 0
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.360
	movq	6464(%rax), %rax	# enc_picture.360_1325->imgUV, D.11399
	movl	-388(%rbp), %edx	# uv, tmp2706
	movslq	%edx, %rdx	# tmp2706, D.11389
	salq	$3, %rdx	#, D.11389
	addq	%rdx, %rax	# D.11389, D.11399
	movq	(%rax), %rdx	# *_1329, D.11400
	movq	img(%rip), %rax	# img, img.361
	movl	164(%rax), %ecx	# img.361_1331->pix_c_y, D.11388
	movl	-376(%rbp), %eax	# j, tmp2707
	addl	%ecx, %eax	# D.11388, D.11388
	cltq
	salq	$3, %rax	#, D.11389
	addq	%rdx, %rax	# D.11400, D.11400
	movq	(%rax), %rdx	# *_1336, D.11401
	movq	img(%rip), %rax	# img, img.362
	movl	160(%rax), %ecx	# img.362_1338->pix_c_x, D.11388
	movl	-380(%rbp), %eax	# i, tmp2708
	addl	%ecx, %eax	# D.11388, D.11388
	cltq
	addq	%rax, %rax	# D.11389
	addq	%rax, %rdx	# D.11389, D.11401
	movq	img(%rip), %rax	# img, img.363
	movl	-376(%rbp), %ecx	# j, tmp2710
	movslq	%ecx, %rcx	# tmp2710, tmp2709
	movl	-380(%rbp), %esi	# i, tmp2712
	movslq	%esi, %rsi	# tmp2712, tmp2711
	salq	$4, %rsi	#, tmp2713
	addq	%rsi, %rcx	# tmp2713, tmp2714
	addq	$3276, %rcx	#, tmp2715
	movl	8(%rax,%rcx,4), %eax	# img.363_1344->m7, D.11388
	movl	%eax, %ecx	# D.11388, D.11398
	movq	img(%rip), %rax	# img, img.364
	movl	-376(%rbp), %esi	# j, tmp2717
	movslq	%esi, %rsi	# tmp2717, tmp2716
	movl	-380(%rbp), %edi	# i, tmp2719
	movslq	%edi, %rdi	# tmp2719, tmp2718
	salq	$4, %rdi	#, tmp2720
	addq	%rdi, %rsi	# tmp2720, tmp2721
	addq	$6296, %rsi	#, tmp2722
	movzwl	8(%rax,%rsi,2), %eax	# img.364_1347->mpr, D.11398
	addl	%ecx, %eax	# D.11398, D.11398
	movw	%ax, (%rdx)	# D.11398, *_1343
	jmp	.L420	#
.L419:
	.loc 1 1719 0
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.365
	movq	6464(%rax), %rax	# enc_picture.365_1350->imgUV, D.11399
	movl	-388(%rbp), %edx	# uv, tmp2723
	movslq	%edx, %rdx	# tmp2723, D.11389
	salq	$3, %rdx	#, D.11389
	addq	%rdx, %rax	# D.11389, D.11399
	movq	(%rax), %rdx	# *_1354, D.11400
	movq	img(%rip), %rax	# img, img.366
	movl	164(%rax), %ecx	# img.366_1356->pix_c_y, D.11388
	movl	-376(%rbp), %eax	# j, tmp2724
	addl	%ecx, %eax	# D.11388, D.11388
	cltq
	salq	$3, %rax	#, D.11389
	addq	%rdx, %rax	# D.11400, D.11400
	movq	(%rax), %rdx	# *_1361, D.11401
	movq	img(%rip), %rax	# img, img.367
	movl	160(%rax), %ecx	# img.367_1363->pix_c_x, D.11388
	movl	-380(%rbp), %eax	# i, tmp2725
	addl	%ecx, %eax	# D.11388, D.11388
	cltq
	addq	%rax, %rax	# D.11389
	addq	%rax, %rdx	# D.11389, D.11401
	movq	img(%rip), %rax	# img, img.368
	movl	-376(%rbp), %ecx	# j, tmp2727
	movslq	%ecx, %rcx	# tmp2727, tmp2726
	movl	-380(%rbp), %esi	# i, tmp2729
	movslq	%esi, %rsi	# tmp2729, tmp2728
	salq	$4, %rsi	#, tmp2730
	addq	%rsi, %rcx	# tmp2730, tmp2731
	addq	$3276, %rcx	#, tmp2732
	movl	8(%rax,%rcx,4), %eax	# img.368_1369->m7, D.11388
	movw	%ax, (%rdx)	# D.11398, *_1368
.L420:
	.loc 1 1714 0
	addl	$1, -380(%rbp)	#, i
.L418:
	.loc 1 1714 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.369
	movl	72708(%rax), %eax	# img.369_1323->mb_cr_size_x, D.11388
	cmpl	-380(%rbp), %eax	# i, D.11388
	jg	.L421	#,
	.loc 1 1712 0 is_stmt 1
	addl	$1, -376(%rbp)	#, j
.L417:
	.loc 1 1712 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.370
	movl	72712(%rax), %eax	# img.370_1320->mb_cr_size_y, D.11388
	cmpl	-376(%rbp), %eax	# j, D.11388
	jg	.L422	#,
.L416:
	.loc 1 1723 0 is_stmt 1
	movl	-392(%rbp), %eax	# cr_cbp, D.11388
	.loc 1 1724 0
	addq	$392, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	dct_chroma, .-dct_chroma
	.globl	dct_chroma4x4
	.type	dct_chroma4x4, @function
dct_chroma4x4:
.LFB7:
	.loc 1 1729 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$144, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movl	%edi, -148(%rbp)	# uv, uv
	movl	%esi, -152(%rbp)	# b8, b8
	movl	%edx, -156(%rbp)	# b4, b4
	.loc 1 1735 0
	movq	img(%rip), %rax	# img, img.371
	movq	14168(%rax), %rdx	# img.371_26->mb_data, D.11402
	movq	img(%rip), %rax	# img, img.372
	movl	12(%rax), %eax	# img.372_28->current_mb_nr, D.11403
	cltq
	imulq	$632, %rax, %rax	#, D.11404, D.11404
	addq	%rdx, %rax	# D.11402, tmp340
	movq	%rax, -72(%rbp)	# tmp340, currMB
	.loc 1 1736 0
	movq	-72(%rbp), %rax	# currMB, tmp341
	movl	72(%rax), %eax	# currMB_32->mb_type, D.11403
	cmpl	$9, %eax	#, D.11403
	je	.L425	#,
	.loc 1 1736 0 is_stmt 0 discriminator 2
	movq	-72(%rbp), %rax	# currMB, tmp342
	movl	72(%rax), %eax	# currMB_32->mb_type, D.11403
	cmpl	$10, %eax	#, D.11403
	je	.L425	#,
	.loc 1 1736 0 discriminator 1
	movq	-72(%rbp), %rax	# currMB, tmp343
	movl	72(%rax), %eax	# currMB_32->mb_type, D.11403
	cmpl	$13, %eax	#, D.11403
	jne	.L426	#,
.L425:
	movl	$1, %eax	#, iftmp.373
	jmp	.L427	#
.L426:
	.loc 1 1736 0 discriminator 3
	movl	$0, %eax	#, iftmp.373
.L427:
	.loc 1 1736 0 discriminator 4
	movl	%eax, -104(%rbp)	# iftmp.373, intra
	.loc 1 1741 0 is_stmt 1 discriminator 4
	movq	img(%rip), %rax	# img, img.374
	movq	14136(%rax), %rax	# img.374_39->cofAC, D.11405
	movl	-152(%rbp), %edx	# b8, tmp344
	movslq	%edx, %rdx	# tmp344, D.11404
	salq	$3, %rdx	#, D.11404
	addq	%rdx, %rax	# D.11404, D.11405
	movq	(%rax), %rax	# *_44, D.11406
	movl	-156(%rbp), %edx	# b4, tmp345
	movslq	%edx, %rdx	# tmp345, D.11404
	salq	$3, %rdx	#, D.11404
	addq	%rdx, %rax	# D.11404, D.11406
	movq	(%rax), %rax	# *_49, D.11407
	movq	(%rax), %rax	# *_50, tmp346
	movq	%rax, -64(%rbp)	# tmp346, ACLevel
	.loc 1 1742 0 discriminator 4
	movq	img(%rip), %rax	# img, img.375
	movq	14136(%rax), %rax	# img.375_52->cofAC, D.11405
	movl	-152(%rbp), %edx	# b8, tmp347
	movslq	%edx, %rdx	# tmp347, D.11404
	salq	$3, %rdx	#, D.11404
	addq	%rdx, %rax	# D.11404, D.11405
	movq	(%rax), %rax	# *_56, D.11406
	movl	-156(%rbp), %edx	# b4, tmp348
	movslq	%edx, %rdx	# tmp348, D.11404
	salq	$3, %rdx	#, D.11404
	addq	%rdx, %rax	# D.11404, D.11406
	movq	(%rax), %rax	# *_60, D.11407
	movq	8(%rax), %rax	# MEM[(int * *)_61 + 8B], tmp349
	movq	%rax, -56(%rbp)	# tmp349, ACRun
	.loc 1 1744 0 discriminator 4
	movq	img(%rip), %rax	# img, img.377
	movl	40(%rax), %edx	# img.377_63->qp, D.11403
	movq	img(%rip), %rax	# img, img.378
	movl	72668(%rax), %eax	# img.378_65->bitdepth_luma_qp_scale, D.11403
	addl	%edx, %eax	# D.11403, D.11403
	testl	%eax, %eax	# D.11403
	jne	.L428	#,
	.loc 1 1744 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.379
	movl	72704(%rax), %eax	# img.379_68->lossless_qpprime_flag, D.11403
	cmpl	$1, %eax	#, D.11403
	jne	.L428	#,
	.loc 1 1744 0 discriminator 3
	movl	$1, %eax	#, iftmp.376
	jmp	.L429	#
.L428:
	.loc 1 1744 0 discriminator 2
	movl	$0, %eax	#, iftmp.376
.L429:
	.loc 1 1744 0 discriminator 4
	movl	%eax, -100(%rbp)	# iftmp.376, lossless_qpprime
	.loc 1 1746 0 is_stmt 1 discriminator 4
	movq	-72(%rbp), %rax	# currMB, tmp350
	movl	12(%rax), %edx	# currMB_32->qp, D.11403
	movq	img(%rip), %rax	# img, img.380
	movl	-148(%rbp), %ecx	# uv, tmp352
	movslq	%ecx, %rcx	# tmp352, tmp351
	addq	$18176, %rcx	#, tmp353
	movl	12(%rax,%rcx,4), %eax	# img.380_74->chroma_qp_offset, D.11403
	addl	%edx, %eax	# D.11403, tmp354
	movl	%eax, -96(%rbp)	# tmp354, qp_c
	.loc 1 1747 0 discriminator 4
	cmpl	$0, -96(%rbp)	#, qp_c
	js	.L430	#,
	.loc 1 1747 0 is_stmt 0 discriminator 1
	movl	-96(%rbp), %eax	# qp_c, tmp356
	cltq
	movzbl	QP_SCALE_CR(%rax), %eax	# QP_SCALE_CR, D.11408
	movzbl	%al, %eax	# D.11408, iftmp.381
	jmp	.L431	#
.L430:
	.loc 1 1747 0 discriminator 2
	movl	-96(%rbp), %eax	# qp_c, iftmp.381
.L431:
	.loc 1 1747 0 discriminator 3
	movl	%eax, -96(%rbp)	# iftmp.381, qp_c
	.loc 1 1749 0 is_stmt 1 discriminator 3
	movq	img(%rip), %rax	# img, img.382
	movl	72672(%rax), %edx	# img.382_82->bitdepth_chroma_qp_scale, D.11403
	movl	-96(%rbp), %eax	# qp_c, tmp357
	leal	(%rdx,%rax), %ecx	#, D.11403
	movl	$715827883, %edx	#, tmp359
	movl	%ecx, %eax	# D.11403, tmp869
	imull	%edx	# tmp359
	movl	%ecx, %eax	# D.11403, tmp360
	sarl	$31, %eax	#, tmp360
	subl	%eax, %edx	# tmp360, tmp361
	movl	%edx, %eax	# tmp361, tmp361
	movl	%eax, -92(%rbp)	# tmp361, qp_per
	.loc 1 1750 0 discriminator 3
	movq	img(%rip), %rax	# img, img.383
	movl	72672(%rax), %edx	# img.383_86->bitdepth_chroma_qp_scale, D.11403
	movl	-96(%rbp), %eax	# qp_c, tmp362
	leal	(%rdx,%rax), %ecx	#, D.11403
	movl	$715827883, %edx	#, tmp364
	movl	%ecx, %eax	# D.11403, tmp870
	imull	%edx	# tmp364
	movl	%ecx, %eax	# D.11403, tmp365
	sarl	$31, %eax	#, tmp365
	subl	%eax, %edx	# tmp365, tmp366
	movl	%edx, %eax	# tmp366, tmp366
	movl	%eax, -88(%rbp)	# tmp366, qp_rem
	movl	-88(%rbp), %edx	# qp_rem, tmp367
	movl	%edx, %eax	# tmp367, tmp368
	addl	%eax, %eax	# tmp368
	addl	%edx, %eax	# tmp367, tmp368
	addl	%eax, %eax	# tmp369
	subl	%eax, %ecx	# tmp368, tmp370
	movl	%ecx, %eax	# tmp370, tmp370
	movl	%eax, -88(%rbp)	# tmp370, qp_rem
	.loc 1 1751 0 discriminator 3
	movl	-92(%rbp), %eax	# qp_per, tmp374
	addl	$15, %eax	#, tmp373
	movl	%eax, -84(%rbp)	# tmp373, q_bits
	.loc 1 1754 0 discriminator 3
	cmpl	$0, -100(%rbp)	#, lossless_qpprime
	jne	.L432	#,
	.loc 1 1755 0
	movl	$0, -132(%rbp)	#, j
	jmp	.L433	#
.L436:
	.loc 1 1757 0
	movl	$0, -136(%rbp)	#, i
	jmp	.L434	#
.L435:
	.loc 1 1759 0 discriminator 2
	movl	$3, %eax	#, tmp378
	subl	-136(%rbp), %eax	# i, tmp377
	movl	%eax, -80(%rbp)	# tmp377, i1
	.loc 1 1760 0 discriminator 2
	movq	img(%rip), %rax	# img, img.384
	movl	-132(%rbp), %edx	# j, tmp380
	movslq	%edx, %rdx	# tmp380, tmp379
	movl	-136(%rbp), %ecx	# i, tmp382
	movslq	%ecx, %rcx	# tmp382, tmp381
	salq	$4, %rcx	#, tmp383
	addq	%rcx, %rdx	# tmp383, tmp384
	addq	$3276, %rdx	#, tmp385
	movl	8(%rax,%rdx,4), %edx	# img.384_94->m7, D.11403
	movq	img(%rip), %rax	# img, img.385
	movl	-132(%rbp), %ecx	# j, tmp387
	movslq	%ecx, %rcx	# tmp387, tmp386
	movl	-80(%rbp), %esi	# i1, tmp389
	movslq	%esi, %rsi	# tmp389, tmp388
	salq	$4, %rsi	#, tmp390
	addq	%rsi, %rcx	# tmp390, tmp391
	addq	$3276, %rcx	#, tmp392
	movl	8(%rax,%rcx,4), %eax	# img.385_96->m7, D.11403
	addl	%eax, %edx	# D.11403, D.11403
	movl	-136(%rbp), %eax	# i, tmp394
	cltq
	movl	%edx, -48(%rbp,%rax,4)	# D.11403, m5
	.loc 1 1761 0 discriminator 2
	movq	img(%rip), %rax	# img, img.386
	movl	-132(%rbp), %edx	# j, tmp396
	movslq	%edx, %rdx	# tmp396, tmp395
	movl	-136(%rbp), %ecx	# i, tmp398
	movslq	%ecx, %rcx	# tmp398, tmp397
	salq	$4, %rcx	#, tmp399
	addq	%rcx, %rdx	# tmp399, tmp400
	addq	$3276, %rdx	#, tmp401
	movl	8(%rax,%rdx,4), %edx	# img.386_99->m7, D.11403
	movq	img(%rip), %rax	# img, img.387
	movl	-132(%rbp), %ecx	# j, tmp403
	movslq	%ecx, %rcx	# tmp403, tmp402
	movl	-80(%rbp), %esi	# i1, tmp405
	movslq	%esi, %rsi	# tmp405, tmp404
	salq	$4, %rsi	#, tmp406
	addq	%rsi, %rcx	# tmp406, tmp407
	addq	$3276, %rcx	#, tmp408
	movl	8(%rax,%rcx,4), %eax	# img.387_101->m7, D.11403
	subl	%eax, %edx	# D.11403, D.11403
	movl	-80(%rbp), %eax	# i1, tmp410
	cltq
	movl	%edx, -48(%rbp,%rax,4)	# D.11403, m5
	.loc 1 1757 0 discriminator 2
	addl	$1, -136(%rbp)	#, i
.L434:
	.loc 1 1757 0 is_stmt 0 discriminator 1
	cmpl	$1, -136(%rbp)	#, i
	jle	.L435	#,
	.loc 1 1763 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.388
	movl	-48(%rbp), %ecx	# m5, D.11403
	movl	-44(%rbp), %edx	# m5, D.11403
	addl	%edx, %ecx	# D.11403, D.11403
	movl	-132(%rbp), %edx	# j, tmp412
	movslq	%edx, %rdx	# tmp412, tmp411
	addq	$3276, %rdx	#, tmp413
	movl	%ecx, 8(%rax,%rdx,4)	# D.11403, img.388_105->m7
	.loc 1 1764 0
	movq	img(%rip), %rax	# img, img.389
	movl	-48(%rbp), %ecx	# m5, D.11403
	movl	-44(%rbp), %edx	# m5, D.11403
	subl	%edx, %ecx	# D.11403, D.11403
	movl	-132(%rbp), %edx	# j, tmp415
	movslq	%edx, %rdx	# tmp415, tmp414
	addq	$3308, %rdx	#, tmp416
	movl	%ecx, 8(%rax,%rdx,4)	# D.11403, img.389_109->m7
	.loc 1 1765 0
	movq	img(%rip), %rax	# img, img.390
	movl	-36(%rbp), %edx	# m5, D.11403
	leal	(%rdx,%rdx), %ecx	#, D.11403
	movl	-40(%rbp), %edx	# m5, D.11403
	addl	%edx, %ecx	# D.11403, D.11403
	movl	-132(%rbp), %edx	# j, tmp418
	movslq	%edx, %rdx	# tmp418, tmp417
	addq	$3292, %rdx	#, tmp419
	movl	%ecx, 8(%rax,%rdx,4)	# D.11403, img.390_113->m7
	.loc 1 1766 0
	movq	img(%rip), %rdx	# img, img.391
	movl	-36(%rbp), %ecx	# m5, D.11403
	movl	-40(%rbp), %esi	# m5, D.11403
	movl	$0, %eax	#, tmp420
	subl	%esi, %eax	# D.11403, tmp420
	addl	%eax, %eax	# tmp421
	addl	%eax, %ecx	# D.11403, D.11403
	movl	-132(%rbp), %eax	# j, tmp423
	cltq
	addq	$3324, %rax	#, tmp424
	movl	%ecx, 8(%rdx,%rax,4)	# D.11403, img.391_118->m7
	.loc 1 1755 0
	addl	$1, -132(%rbp)	#, j
.L433:
	.loc 1 1755 0 is_stmt 0 discriminator 1
	cmpl	$3, -132(%rbp)	#, j
	jle	.L436	#,
.L432:
	.loc 1 1770 0 is_stmt 1
	cmpl	$0, -100(%rbp)	#, lossless_qpprime
	jne	.L437	#,
	.loc 1 1771 0
	movl	$0, -136(%rbp)	#, i
	jmp	.L438	#
.L441:
	.loc 1 1773 0
	movl	$0, -132(%rbp)	#, j
	jmp	.L439	#
.L440:
	.loc 1 1775 0 discriminator 2
	movl	$3, %eax	#, tmp428
	subl	-132(%rbp), %eax	# j, tmp427
	movl	%eax, -76(%rbp)	# tmp427, j1
	.loc 1 1776 0 discriminator 2
	movq	img(%rip), %rax	# img, img.392
	movl	-132(%rbp), %edx	# j, tmp430
	movslq	%edx, %rdx	# tmp430, tmp429
	movl	-136(%rbp), %ecx	# i, tmp432
	movslq	%ecx, %rcx	# tmp432, tmp431
	salq	$4, %rcx	#, tmp433
	addq	%rcx, %rdx	# tmp433, tmp434
	addq	$3276, %rdx	#, tmp435
	movl	8(%rax,%rdx,4), %edx	# img.392_127->m7, D.11403
	movq	img(%rip), %rax	# img, img.393
	movl	-76(%rbp), %ecx	# j1, tmp437
	movslq	%ecx, %rcx	# tmp437, tmp436
	movl	-136(%rbp), %esi	# i, tmp439
	movslq	%esi, %rsi	# tmp439, tmp438
	salq	$4, %rsi	#, tmp440
	addq	%rsi, %rcx	# tmp440, tmp441
	addq	$3276, %rcx	#, tmp442
	movl	8(%rax,%rcx,4), %eax	# img.393_129->m7, D.11403
	addl	%eax, %edx	# D.11403, D.11403
	movl	-132(%rbp), %eax	# j, tmp444
	cltq
	movl	%edx, -48(%rbp,%rax,4)	# D.11403, m5
	.loc 1 1777 0 discriminator 2
	movq	img(%rip), %rax	# img, img.394
	movl	-132(%rbp), %edx	# j, tmp446
	movslq	%edx, %rdx	# tmp446, tmp445
	movl	-136(%rbp), %ecx	# i, tmp448
	movslq	%ecx, %rcx	# tmp448, tmp447
	salq	$4, %rcx	#, tmp449
	addq	%rcx, %rdx	# tmp449, tmp450
	addq	$3276, %rdx	#, tmp451
	movl	8(%rax,%rdx,4), %edx	# img.394_132->m7, D.11403
	movq	img(%rip), %rax	# img, img.395
	movl	-76(%rbp), %ecx	# j1, tmp453
	movslq	%ecx, %rcx	# tmp453, tmp452
	movl	-136(%rbp), %esi	# i, tmp455
	movslq	%esi, %rsi	# tmp455, tmp454
	salq	$4, %rsi	#, tmp456
	addq	%rsi, %rcx	# tmp456, tmp457
	addq	$3276, %rcx	#, tmp458
	movl	8(%rax,%rcx,4), %eax	# img.395_134->m7, D.11403
	subl	%eax, %edx	# D.11403, D.11403
	movl	-76(%rbp), %eax	# j1, tmp460
	cltq
	movl	%edx, -48(%rbp,%rax,4)	# D.11403, m5
	.loc 1 1773 0 discriminator 2
	addl	$1, -132(%rbp)	#, j
.L439:
	.loc 1 1773 0 is_stmt 0 discriminator 1
	cmpl	$1, -132(%rbp)	#, j
	jle	.L440	#,
	.loc 1 1779 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.396
	movl	-48(%rbp), %ecx	# m5, D.11403
	movl	-44(%rbp), %edx	# m5, D.11403
	addl	%ecx, %edx	# D.11403, D.11403
	movl	-136(%rbp), %ecx	# i, tmp462
	movslq	%ecx, %rcx	# tmp462, tmp461
	salq	$6, %rcx	#, tmp463
	addq	%rcx, %rax	# tmp463, tmp464
	addq	$13104, %rax	#, tmp465
	movl	%edx, 8(%rax)	# D.11403, img.396_138->m7
	.loc 1 1780 0
	movq	img(%rip), %rax	# img, img.397
	movl	-48(%rbp), %ecx	# m5, D.11403
	movl	-44(%rbp), %edx	# m5, D.11403
	subl	%edx, %ecx	# D.11403, D.11403
	movl	%ecx, %edx	# D.11403, D.11403
	movl	-136(%rbp), %ecx	# i, tmp467
	movslq	%ecx, %rcx	# tmp467, tmp466
	salq	$6, %rcx	#, tmp468
	addq	%rcx, %rax	# tmp468, tmp469
	addq	$13112, %rax	#, tmp470
	movl	%edx, 8(%rax)	# D.11403, img.397_142->m7
	.loc 1 1781 0
	movq	img(%rip), %rax	# img, img.398
	movl	-36(%rbp), %edx	# m5, D.11403
	leal	(%rdx,%rdx), %ecx	#, D.11403
	movl	-40(%rbp), %edx	# m5, D.11403
	addl	%ecx, %edx	# D.11403, D.11403
	movl	-136(%rbp), %ecx	# i, tmp472
	movslq	%ecx, %rcx	# tmp472, tmp471
	salq	$6, %rcx	#, tmp473
	addq	%rcx, %rax	# tmp473, tmp474
	addq	$13108, %rax	#, tmp475
	movl	%edx, 8(%rax)	# D.11403, img.398_146->m7
	.loc 1 1782 0
	movq	img(%rip), %rcx	# img, img.399
	movl	-36(%rbp), %edx	# m5, D.11403
	movl	-40(%rbp), %esi	# m5, D.11403
	movl	$0, %eax	#, tmp476
	subl	%esi, %eax	# D.11403, tmp476
	addl	%eax, %eax	# tmp477
	addl	%eax, %edx	# D.11403, D.11403
	movl	-136(%rbp), %eax	# i, tmp479
	cltq
	salq	$6, %rax	#, tmp480
	addq	%rcx, %rax	# img.399, tmp481
	addq	$13116, %rax	#, tmp482
	movl	%edx, 8(%rax)	# D.11403, img.399_151->m7
	.loc 1 1771 0
	addl	$1, -136(%rbp)	#, i
.L438:
	.loc 1 1771 0 is_stmt 0 discriminator 1
	cmpl	$3, -136(%rbp)	#, i
	jle	.L441	#,
.L437:
	.loc 1 1787 0 is_stmt 1
	movl	$0, -108(%rbp)	#, nonzeroAC
	.loc 1 1789 0
	movl	$-1, -112(%rbp)	#, run
	.loc 1 1790 0
	movl	$0, -116(%rbp)	#, scan_pos
	.loc 1 1792 0
	cmpl	$0, -100(%rbp)	#, lossless_qpprime
	je	.L442	#,
	.loc 1 1793 0
	movq	img(%rip), %rax	# img, img.400
	movl	13112(%rax), %edx	# img.400_160->m7, D.11403
	movl	%edx, %eax	# D.11403, tmp483
	sarl	$31, %eax	#, tmp483
	xorl	%eax, %edx	# tmp483, tmp484
	movl	%edx, -120(%rbp)	# tmp484, level
	subl	%eax, -120(%rbp)	# tmp483, level
	jmp	.L443	#
.L442:
	.loc 1 1794 0
	cmpl	$1, -104(%rbp)	#, intra
	jne	.L444	#,
	.loc 1 1795 0
	movq	img(%rip), %rax	# img, img.401
	movl	13112(%rax), %eax	# img.401_163->m7, D.11403
	movl	%eax, %ecx	# D.11403, tmp485
	sarl	$31, %ecx	#, tmp485
	xorl	%ecx, %eax	# tmp485, D.11403
	movl	%eax, %edx	# D.11403, D.11403
	subl	%ecx, %edx	# tmp485, D.11403
	movl	-88(%rbp), %eax	# qp_rem, tmp487
	movslq	%eax, %rsi	# tmp487, tmp486
	movl	-148(%rbp), %eax	# uv, tmp489
	movslq	%eax, %rcx	# tmp489, tmp488
	movq	%rcx, %rax	# tmp488, tmp490
	addq	%rax, %rax	# tmp490
	addq	%rcx, %rax	# tmp488, tmp490
	addq	%rax, %rax	# tmp491
	addq	%rsi, %rax	# tmp486, tmp492
	salq	$6, %rax	#, tmp493
	addq	$LevelScale4x4Chroma_Intra, %rax	#, tmp494
	movl	(%rax), %eax	# LevelScale4x4Chroma_Intra, D.11403
	movl	%edx, %ecx	# D.11403, D.11403
	imull	%eax, %ecx	# D.11403, D.11403
	movl	-92(%rbp), %eax	# qp_per, tmp496
	movslq	%eax, %rsi	# tmp496, tmp495
	movl	-148(%rbp), %eax	# uv, tmp498
	movslq	%eax, %rdx	# tmp498, tmp497
	movq	%rdx, %rax	# tmp497, tmp499
	addq	%rax, %rax	# tmp499
	addq	%rdx, %rax	# tmp497, tmp499
	salq	$2, %rax	#, tmp499
	addq	%rdx, %rax	# tmp497, tmp499
	addq	%rsi, %rax	# tmp495, tmp500
	salq	$6, %rax	#, tmp501
	addq	$LevelOffset4x4Chroma_Intra, %rax	#, tmp502
	movl	(%rax), %eax	# LevelOffset4x4Chroma_Intra, D.11403
	leal	(%rcx,%rax), %edx	#, D.11403
	movl	-84(%rbp), %eax	# q_bits, tmp503
	movl	%eax, %ecx	# tmp503, tmp884
	sarl	%cl, %edx	# tmp884, tmp504
	movl	%edx, %eax	# tmp504, tmp504
	movl	%eax, -120(%rbp)	# tmp504, level
	jmp	.L443	#
.L444:
	.loc 1 1797 0
	movq	img(%rip), %rax	# img, img.402
	movl	13112(%rax), %eax	# img.402_171->m7, D.11403
	movl	%eax, %ecx	# D.11403, tmp505
	sarl	$31, %ecx	#, tmp505
	xorl	%ecx, %eax	# tmp505, D.11403
	movl	%eax, %edx	# D.11403, D.11403
	subl	%ecx, %edx	# tmp505, D.11403
	movl	-88(%rbp), %eax	# qp_rem, tmp507
	movslq	%eax, %rsi	# tmp507, tmp506
	movl	-148(%rbp), %eax	# uv, tmp509
	movslq	%eax, %rcx	# tmp509, tmp508
	movq	%rcx, %rax	# tmp508, tmp510
	addq	%rax, %rax	# tmp510
	addq	%rcx, %rax	# tmp508, tmp510
	addq	%rax, %rax	# tmp511
	addq	%rsi, %rax	# tmp506, tmp512
	salq	$6, %rax	#, tmp513
	addq	$LevelScale4x4Chroma_Inter, %rax	#, tmp514
	movl	(%rax), %eax	# LevelScale4x4Chroma_Inter, D.11403
	movl	%edx, %ecx	# D.11403, D.11403
	imull	%eax, %ecx	# D.11403, D.11403
	movl	-92(%rbp), %eax	# qp_per, tmp516
	movslq	%eax, %rsi	# tmp516, tmp515
	movl	-148(%rbp), %eax	# uv, tmp518
	movslq	%eax, %rdx	# tmp518, tmp517
	movq	%rdx, %rax	# tmp517, tmp519
	addq	%rax, %rax	# tmp519
	addq	%rdx, %rax	# tmp517, tmp519
	salq	$2, %rax	#, tmp519
	addq	%rdx, %rax	# tmp517, tmp519
	addq	%rsi, %rax	# tmp515, tmp520
	salq	$6, %rax	#, tmp521
	addq	$LevelOffset4x4Chroma_Inter, %rax	#, tmp522
	movl	(%rax), %eax	# LevelOffset4x4Chroma_Inter, D.11403
	leal	(%rcx,%rax), %edx	#, D.11403
	movl	-84(%rbp), %eax	# q_bits, tmp523
	movl	%eax, %ecx	# tmp523, tmp889
	sarl	%cl, %edx	# tmp889, tmp524
	movl	%edx, %eax	# tmp524, tmp524
	movl	%eax, -120(%rbp)	# tmp524, level
.L443:
	.loc 1 1799 0
	movl	-148(%rbp), %eax	# uv, tmp525
	notl	%eax	# D.11403
	sall	$2, %eax	#, D.11403
	addl	%eax, -152(%rbp)	# D.11403, b8
	.loc 1 1800 0
	movl	-152(%rbp), %eax	# b8, tmp526
	cltd
	shrl	$31, %edx	#, tmp528
	addl	%edx, %eax	# tmp528, tmp529
	andl	$1, %eax	#, tmp530
	subl	%edx, %eax	# tmp528, tmp531
	leal	(%rax,%rax), %ecx	#, D.11403
	movl	-156(%rbp), %eax	# b4, tmp532
	cltd
	shrl	$31, %edx	#, tmp534
	addl	%edx, %eax	# tmp534, tmp535
	andl	$1, %eax	#, tmp536
	subl	%edx, %eax	# tmp534, tmp537
	leal	(%rcx,%rax), %ebx	#, D.11403
	movl	-152(%rbp), %eax	# b8, tmp538
	movl	%eax, %edx	# tmp538, tmp539
	shrl	$31, %edx	#, tmp539
	addl	%edx, %eax	# tmp539, tmp540
	sarl	%eax	# tmp541
	leal	(%rax,%rax), %edx	#, D.11403
	movl	-156(%rbp), %eax	# b4, tmp542
	movl	%eax, %ecx	# tmp542, tmp543
	shrl	$31, %ecx	#, tmp543
	addl	%ecx, %eax	# tmp543, tmp544
	sarl	%eax	# tmp545
	leal	(%rdx,%rax), %r12d	#, D.11403
	movq	img(%rip), %rax	# img, img.403
	movl	13112(%rax), %edx	# img.403_190->m7, D.11403
	movl	-120(%rbp), %eax	# level, tmp546
	movl	%edx, %esi	# D.11403,
	movl	%eax, %edi	# tmp546,
	call	sign	#
	movslq	%r12d, %rdx	# D.11403, tmp547
	movl	-148(%rbp), %ecx	# uv, tmp549
	movslq	%ecx, %rsi	# tmp549, tmp548
	movslq	%ebx, %rcx	# D.11403, tmp550
	salq	$2, %rsi	#, tmp551
	addq	%rsi, %rcx	# tmp551, tmp552
	salq	$2, %rcx	#, tmp553
	addq	%rcx, %rdx	# tmp553, tmp554
	movl	%eax, dc_level_temp(,%rdx,4)	# D.11403, dc_level_temp
	.loc 1 1803 0
	cmpl	$0, -100(%rbp)	#, lossless_qpprime
	je	.L445	#,
	.loc 1 1805 0
	movq	img(%rip), %rbx	# img, img.404
	movq	img(%rip), %rax	# img, img.405
	movl	13112(%rax), %edx	# img.405_194->m7, D.11403
	movl	-120(%rbp), %eax	# level, tmp555
	movl	%edx, %esi	# D.11403,
	movl	%eax, %edi	# tmp555,
	call	sign	#
	movl	%eax, 13112(%rbx)	# D.11403, img.404_193->m7
	jmp	.L446	#
.L445:
	.loc 1 1809 0
	cmpl	$3, -92(%rbp)	#, qp_per
	jg	.L447	#,
	.loc 1 1811 0
	cmpl	$1, -104(%rbp)	#, intra
	jne	.L448	#,
	.loc 1 1812 0
	movq	img(%rip), %rbx	# img, img.406
	movq	img(%rip), %rax	# img, img.407
	movl	13112(%rax), %esi	# img.407_198->m7, D.11403
	movl	-88(%rbp), %eax	# qp_rem, tmp557
	movslq	%eax, %rcx	# tmp557, tmp556
	movl	-148(%rbp), %eax	# uv, tmp559
	movslq	%eax, %rdx	# tmp559, tmp558
	movq	%rdx, %rax	# tmp558, tmp560
	addq	%rax, %rax	# tmp560
	addq	%rdx, %rax	# tmp558, tmp560
	addq	%rax, %rax	# tmp561
	addq	%rcx, %rax	# tmp556, tmp562
	salq	$6, %rax	#, tmp563
	addq	$InvLevelScale4x4Chroma_Intra, %rax	#, tmp564
	movl	(%rax), %eax	# InvLevelScale4x4Chroma_Intra, D.11403
	imull	-120(%rbp), %eax	# level, D.11403
	movl	%eax, %edx	# D.11403, D.11403
	movl	$3, %eax	#, tmp565
	subl	-92(%rbp), %eax	# qp_per, D.11403
	movl	$1, %edi	#, tmp566
	movl	%eax, %ecx	# D.11403, tmp894
	sall	%cl, %edi	# tmp894, D.11403
	movl	%edi, %eax	# D.11403, D.11403
	addl	%eax, %edx	# D.11403, D.11403
	movl	$4, %eax	#, tmp567
	subl	-92(%rbp), %eax	# qp_per, D.11403
	movl	%eax, %ecx	# D.11403, tmp896
	sarl	%cl, %edx	# tmp896, D.11403
	movl	%edx, %eax	# D.11403, D.11403
	movl	%eax, %edi	# D.11403,
	call	sign	#
	movl	%eax, 13112(%rbx)	# D.11403, img.406_197->m7
	jmp	.L446	#
.L448:
	.loc 1 1814 0
	movq	img(%rip), %rbx	# img, img.408
	movq	img(%rip), %rax	# img, img.409
	movl	13112(%rax), %esi	# img.409_209->m7, D.11403
	movl	-88(%rbp), %eax	# qp_rem, tmp569
	movslq	%eax, %rcx	# tmp569, tmp568
	movl	-148(%rbp), %eax	# uv, tmp571
	movslq	%eax, %rdx	# tmp571, tmp570
	movq	%rdx, %rax	# tmp570, tmp572
	addq	%rax, %rax	# tmp572
	addq	%rdx, %rax	# tmp570, tmp572
	addq	%rax, %rax	# tmp573
	addq	%rcx, %rax	# tmp568, tmp574
	salq	$6, %rax	#, tmp575
	addq	$InvLevelScale4x4Chroma_Inter, %rax	#, tmp576
	movl	(%rax), %eax	# InvLevelScale4x4Chroma_Inter, D.11403
	imull	-120(%rbp), %eax	# level, D.11403
	movl	%eax, %edx	# D.11403, D.11403
	movl	$3, %eax	#, tmp577
	subl	-92(%rbp), %eax	# qp_per, D.11403
	movl	$1, %edi	#, tmp578
	movl	%eax, %ecx	# D.11403, tmp899
	sall	%cl, %edi	# tmp899, D.11403
	movl	%edi, %eax	# D.11403, D.11403
	addl	%eax, %edx	# D.11403, D.11403
	movl	$4, %eax	#, tmp579
	subl	-92(%rbp), %eax	# qp_per, D.11403
	movl	%eax, %ecx	# D.11403, tmp901
	sarl	%cl, %edx	# tmp901, D.11403
	movl	%edx, %eax	# D.11403, D.11403
	movl	%eax, %edi	# D.11403,
	call	sign	#
	movl	%eax, 13112(%rbx)	# D.11403, img.408_208->m7
	jmp	.L446	#
.L447:
	.loc 1 1818 0
	cmpl	$1, -104(%rbp)	#, intra
	jne	.L450	#,
	.loc 1 1819 0
	movq	img(%rip), %rbx	# img, img.410
	movq	img(%rip), %rax	# img, img.411
	movl	13112(%rax), %esi	# img.411_220->m7, D.11403
	movl	-88(%rbp), %eax	# qp_rem, tmp581
	movslq	%eax, %rcx	# tmp581, tmp580
	movl	-148(%rbp), %eax	# uv, tmp583
	movslq	%eax, %rdx	# tmp583, tmp582
	movq	%rdx, %rax	# tmp582, tmp584
	addq	%rax, %rax	# tmp584
	addq	%rdx, %rax	# tmp582, tmp584
	addq	%rax, %rax	# tmp585
	addq	%rcx, %rax	# tmp580, tmp586
	salq	$6, %rax	#, tmp587
	addq	$InvLevelScale4x4Chroma_Intra, %rax	#, tmp588
	movl	(%rax), %eax	# InvLevelScale4x4Chroma_Intra, D.11403
	imull	-120(%rbp), %eax	# level, D.11403
	movl	%eax, %edx	# D.11403, D.11403
	movl	-92(%rbp), %eax	# qp_per, tmp589
	subl	$4, %eax	#, D.11403
	movl	%eax, %ecx	# D.11403, tmp904
	sall	%cl, %edx	# tmp904, D.11403
	movl	%edx, %eax	# D.11403, D.11403
	movl	%eax, %edi	# D.11403,
	call	sign	#
	movl	%eax, 13112(%rbx)	# D.11403, img.410_219->m7
	jmp	.L446	#
.L450:
	.loc 1 1821 0
	movq	img(%rip), %rbx	# img, img.412
	movq	img(%rip), %rax	# img, img.413
	movl	13112(%rax), %esi	# img.413_228->m7, D.11403
	movl	-88(%rbp), %eax	# qp_rem, tmp591
	movslq	%eax, %rcx	# tmp591, tmp590
	movl	-148(%rbp), %eax	# uv, tmp593
	movslq	%eax, %rdx	# tmp593, tmp592
	movq	%rdx, %rax	# tmp592, tmp594
	addq	%rax, %rax	# tmp594
	addq	%rdx, %rax	# tmp592, tmp594
	addq	%rax, %rax	# tmp595
	addq	%rcx, %rax	# tmp590, tmp596
	salq	$6, %rax	#, tmp597
	addq	$InvLevelScale4x4Chroma_Inter, %rax	#, tmp598
	movl	(%rax), %eax	# InvLevelScale4x4Chroma_Inter, D.11403
	imull	-120(%rbp), %eax	# level, D.11403
	movl	%eax, %edx	# D.11403, D.11403
	movl	-92(%rbp), %eax	# qp_per, tmp599
	subl	$4, %eax	#, D.11403
	movl	%eax, %ecx	# D.11403, tmp907
	sall	%cl, %edx	# tmp907, D.11403
	movl	%edx, %eax	# D.11403, D.11403
	movl	%eax, %edi	# D.11403,
	call	sign	#
	movl	%eax, 13112(%rbx)	# D.11403, img.412_227->m7
.L446:
	.loc 1 1825 0
	movl	$1, -124(%rbp)	#, coeff_ctr
	jmp	.L451	#
.L464:
	.loc 1 1827 0
	movl	-124(%rbp), %eax	# coeff_ctr, tmp601
	cltq
	movzbl	SNGL_SCAN(%rax,%rax), %eax	# SNGL_SCAN, D.11408
	movzbl	%al, %eax	# D.11408, tmp602
	movl	%eax, -136(%rbp)	# tmp602, i
	.loc 1 1828 0
	movl	-124(%rbp), %eax	# coeff_ctr, tmp604
	cltq
	movzbl	SNGL_SCAN+1(%rax,%rax), %eax	# SNGL_SCAN, D.11408
	movzbl	%al, %eax	# D.11408, tmp605
	movl	%eax, -132(%rbp)	# tmp605, j
	.loc 1 1830 0
	addl	$1, -112(%rbp)	#, run
	.loc 1 1831 0
	movl	$0, -128(%rbp)	#, ilev
	.loc 1 1833 0
	cmpl	$0, -100(%rbp)	#, lossless_qpprime
	je	.L452	#,
	.loc 1 1834 0
	movq	img(%rip), %rax	# img, img.414
	movl	-132(%rbp), %edx	# j, tmp607
	movslq	%edx, %rdx	# tmp607, tmp606
	movl	-136(%rbp), %ecx	# i, tmp609
	movslq	%ecx, %rcx	# tmp609, tmp608
	salq	$4, %rcx	#, tmp610
	addq	%rcx, %rdx	# tmp610, tmp611
	addq	$3276, %rdx	#, tmp612
	movl	8(%rax,%rdx,4), %edx	# img.414_242->m7, D.11403
	movl	%edx, %eax	# D.11403, tmp613
	sarl	$31, %eax	#, tmp613
	xorl	%eax, %edx	# tmp613, tmp614
	movl	%edx, -120(%rbp)	# tmp614, level
	subl	%eax, -120(%rbp)	# tmp613, level
	jmp	.L453	#
.L452:
	.loc 1 1835 0
	cmpl	$1, -104(%rbp)	#, intra
	jne	.L454	#,
	.loc 1 1836 0
	movq	img(%rip), %rax	# img, img.415
	movl	-132(%rbp), %edx	# j, tmp616
	movslq	%edx, %rdx	# tmp616, tmp615
	movl	-136(%rbp), %ecx	# i, tmp618
	movslq	%ecx, %rcx	# tmp618, tmp617
	salq	$4, %rcx	#, tmp619
	addq	%rcx, %rdx	# tmp619, tmp620
	addq	$3276, %rdx	#, tmp621
	movl	8(%rax,%rdx,4), %eax	# img.415_245->m7, D.11403
	movl	%eax, %ecx	# D.11403, tmp622
	sarl	$31, %ecx	#, tmp622
	xorl	%ecx, %eax	# tmp622, D.11403
	movl	%eax, %edx	# D.11403, D.11403
	subl	%ecx, %edx	# tmp622, D.11403
	movl	-132(%rbp), %eax	# j, tmp624
	movslq	%eax, %rsi	# tmp624, tmp623
	movl	-88(%rbp), %eax	# qp_rem, tmp626
	movslq	%eax, %rdi	# tmp626, tmp625
	movl	-148(%rbp), %eax	# uv, tmp628
	movslq	%eax, %rcx	# tmp628, tmp627
	movq	%rcx, %rax	# tmp627, tmp629
	addq	%rax, %rax	# tmp629
	addq	%rcx, %rax	# tmp627, tmp629
	addq	%rax, %rax	# tmp630
	leaq	(%rax,%rdi), %rcx	#, tmp631
	movl	-136(%rbp), %eax	# i, tmp633
	cltq
	salq	$2, %rcx	#, tmp634
	addq	%rcx, %rax	# tmp634, tmp635
	salq	$2, %rax	#, tmp636
	addq	%rsi, %rax	# tmp623, tmp637
	movl	LevelScale4x4Chroma_Intra(,%rax,4), %eax	# LevelScale4x4Chroma_Intra, D.11403
	movl	%edx, %ecx	# D.11403, D.11403
	imull	%eax, %ecx	# D.11403, D.11403
	movl	-132(%rbp), %eax	# j, tmp639
	movslq	%eax, %rsi	# tmp639, tmp638
	movl	-92(%rbp), %eax	# qp_per, tmp641
	movslq	%eax, %rdi	# tmp641, tmp640
	movl	-148(%rbp), %eax	# uv, tmp643
	movslq	%eax, %rdx	# tmp643, tmp642
	movq	%rdx, %rax	# tmp642, tmp644
	addq	%rax, %rax	# tmp644
	addq	%rdx, %rax	# tmp642, tmp644
	salq	$2, %rax	#, tmp644
	addq	%rdx, %rax	# tmp642, tmp644
	leaq	(%rax,%rdi), %rdx	#, tmp645
	movl	-136(%rbp), %eax	# i, tmp647
	cltq
	salq	$2, %rdx	#, tmp648
	addq	%rdx, %rax	# tmp648, tmp649
	salq	$2, %rax	#, tmp650
	addq	%rsi, %rax	# tmp638, tmp651
	movl	LevelOffset4x4Chroma_Intra(,%rax,4), %eax	# LevelOffset4x4Chroma_Intra, D.11403
	leal	(%rcx,%rax), %edx	#, D.11403
	movl	-84(%rbp), %eax	# q_bits, tmp652
	movl	%eax, %ecx	# tmp652, tmp913
	sarl	%cl, %edx	# tmp913, tmp653
	movl	%edx, %eax	# tmp653, tmp653
	movl	%eax, -120(%rbp)	# tmp653, level
	jmp	.L453	#
.L454:
	.loc 1 1838 0
	movq	img(%rip), %rax	# img, img.416
	movl	-132(%rbp), %edx	# j, tmp655
	movslq	%edx, %rdx	# tmp655, tmp654
	movl	-136(%rbp), %ecx	# i, tmp657
	movslq	%ecx, %rcx	# tmp657, tmp656
	salq	$4, %rcx	#, tmp658
	addq	%rcx, %rdx	# tmp658, tmp659
	addq	$3276, %rdx	#, tmp660
	movl	8(%rax,%rdx,4), %eax	# img.416_253->m7, D.11403
	movl	%eax, %ecx	# D.11403, tmp661
	sarl	$31, %ecx	#, tmp661
	xorl	%ecx, %eax	# tmp661, D.11403
	movl	%eax, %edx	# D.11403, D.11403
	subl	%ecx, %edx	# tmp661, D.11403
	movl	-132(%rbp), %eax	# j, tmp663
	movslq	%eax, %rsi	# tmp663, tmp662
	movl	-88(%rbp), %eax	# qp_rem, tmp665
	movslq	%eax, %rdi	# tmp665, tmp664
	movl	-148(%rbp), %eax	# uv, tmp667
	movslq	%eax, %rcx	# tmp667, tmp666
	movq	%rcx, %rax	# tmp666, tmp668
	addq	%rax, %rax	# tmp668
	addq	%rcx, %rax	# tmp666, tmp668
	addq	%rax, %rax	# tmp669
	leaq	(%rax,%rdi), %rcx	#, tmp670
	movl	-136(%rbp), %eax	# i, tmp672
	cltq
	salq	$2, %rcx	#, tmp673
	addq	%rcx, %rax	# tmp673, tmp674
	salq	$2, %rax	#, tmp675
	addq	%rsi, %rax	# tmp662, tmp676
	movl	LevelScale4x4Chroma_Inter(,%rax,4), %eax	# LevelScale4x4Chroma_Inter, D.11403
	movl	%edx, %ecx	# D.11403, D.11403
	imull	%eax, %ecx	# D.11403, D.11403
	movl	-132(%rbp), %eax	# j, tmp678
	movslq	%eax, %rsi	# tmp678, tmp677
	movl	-92(%rbp), %eax	# qp_per, tmp680
	movslq	%eax, %rdi	# tmp680, tmp679
	movl	-148(%rbp), %eax	# uv, tmp682
	movslq	%eax, %rdx	# tmp682, tmp681
	movq	%rdx, %rax	# tmp681, tmp683
	addq	%rax, %rax	# tmp683
	addq	%rdx, %rax	# tmp681, tmp683
	salq	$2, %rax	#, tmp683
	addq	%rdx, %rax	# tmp681, tmp683
	leaq	(%rax,%rdi), %rdx	#, tmp684
	movl	-136(%rbp), %eax	# i, tmp686
	cltq
	salq	$2, %rdx	#, tmp687
	addq	%rdx, %rax	# tmp687, tmp688
	salq	$2, %rax	#, tmp689
	addq	%rsi, %rax	# tmp677, tmp690
	movl	LevelOffset4x4Chroma_Inter(,%rax,4), %eax	# LevelOffset4x4Chroma_Inter, D.11403
	leal	(%rcx,%rax), %edx	#, D.11403
	movl	-84(%rbp), %eax	# q_bits, tmp691
	movl	%eax, %ecx	# tmp691, tmp918
	sarl	%cl, %edx	# tmp918, tmp692
	movl	%edx, %eax	# tmp692, tmp692
	movl	%eax, -120(%rbp)	# tmp692, level
.L453:
	.loc 1 1840 0
	cmpl	$0, -120(%rbp)	#, level
	je	.L455	#,
	.loc 1 1842 0
	cmpl	$0, -136(%rbp)	#, i
	jne	.L456	#,
	.loc 1 1842 0 is_stmt 0 discriminator 2
	cmpl	$0, -132(%rbp)	#, j
	je	.L457	#,
.L456:
	.loc 1 1842 0 discriminator 1
	movl	$1, -108(%rbp)	#, nonzeroAC
.L457:
	.loc 1 1844 0 is_stmt 1
	movl	-116(%rbp), %eax	# scan_pos, tmp693
	cltq
	leaq	0(,%rax,4), %rdx	#, D.11404
	movq	-64(%rbp), %rax	# ACLevel, tmp694
	leaq	(%rdx,%rax), %rbx	#, D.11409
	movq	img(%rip), %rax	# img, img.417
	movl	-132(%rbp), %edx	# j, tmp696
	movslq	%edx, %rdx	# tmp696, tmp695
	movl	-136(%rbp), %ecx	# i, tmp698
	movslq	%ecx, %rcx	# tmp698, tmp697
	salq	$4, %rcx	#, tmp699
	addq	%rcx, %rdx	# tmp699, tmp700
	addq	$3276, %rdx	#, tmp701
	movl	8(%rax,%rdx,4), %edx	# img.417_265->m7, D.11403
	movl	-120(%rbp), %eax	# level, tmp702
	movl	%edx, %esi	# D.11403,
	movl	%eax, %edi	# tmp702,
	call	sign	#
	movl	%eax, (%rbx)	# D.11403, *_264
	.loc 1 1845 0
	movl	-116(%rbp), %eax	# scan_pos, tmp703
	cltq
	leaq	0(,%rax,4), %rdx	#, D.11404
	movq	-56(%rbp), %rax	# ACRun, tmp704
	addq	%rax, %rdx	# tmp704, D.11409
	movl	-112(%rbp), %eax	# run, tmp705
	movl	%eax, (%rdx)	# tmp705, *_270
	.loc 1 1846 0
	addl	$1, -116(%rbp)	#, scan_pos
	.loc 1 1847 0
	movl	$-1, -112(%rbp)	#, run
	.loc 1 1849 0
	movq	img(%rip), %rax	# img, img.418
	movl	-132(%rbp), %edx	# j, tmp707
	movslq	%edx, %rdx	# tmp707, tmp706
	movl	-136(%rbp), %ecx	# i, tmp709
	movslq	%ecx, %rcx	# tmp709, tmp708
	salq	$4, %rcx	#, tmp710
	addq	%rcx, %rdx	# tmp710, tmp711
	addq	$3276, %rdx	#, tmp712
	movl	8(%rax,%rdx,4), %edx	# img.418_273->m7, D.11403
	movl	-120(%rbp), %eax	# level, tmp713
	movl	%edx, %esi	# D.11403,
	movl	%eax, %edi	# tmp713,
	call	sign	#
	movl	%eax, -120(%rbp)	# tmp714, level
	.loc 1 1850 0
	cmpl	$0, -100(%rbp)	#, lossless_qpprime
	je	.L458	#,
	.loc 1 1852 0
	movl	-120(%rbp), %eax	# level, tmp715
	movl	%eax, -128(%rbp)	# tmp715, ilev
	jmp	.L455	#
.L458:
	.loc 1 1854 0
	cmpl	$3, -92(%rbp)	#, qp_per
	jg	.L459	#,
	.loc 1 1856 0
	cmpl	$1, -104(%rbp)	#, intra
	jne	.L460	#,
	.loc 1 1857 0
	movl	-132(%rbp), %eax	# j, tmp717
	movslq	%eax, %rcx	# tmp717, tmp716
	movl	-88(%rbp), %eax	# qp_rem, tmp719
	movslq	%eax, %rsi	# tmp719, tmp718
	movl	-148(%rbp), %eax	# uv, tmp721
	movslq	%eax, %rdx	# tmp721, tmp720
	movq	%rdx, %rax	# tmp720, tmp722
	addq	%rax, %rax	# tmp722
	addq	%rdx, %rax	# tmp720, tmp722
	addq	%rax, %rax	# tmp723
	leaq	(%rax,%rsi), %rdx	#, tmp724
	movl	-136(%rbp), %eax	# i, tmp726
	cltq
	salq	$2, %rdx	#, tmp727
	addq	%rdx, %rax	# tmp727, tmp728
	salq	$2, %rax	#, tmp729
	addq	%rcx, %rax	# tmp716, tmp730
	movl	InvLevelScale4x4Chroma_Intra(,%rax,4), %eax	# InvLevelScale4x4Chroma_Intra, D.11403
	imull	-120(%rbp), %eax	# level, D.11403
	movl	%eax, %edx	# D.11403, D.11403
	movl	$3, %eax	#, tmp731
	subl	-92(%rbp), %eax	# qp_per, D.11403
	movl	$1, %esi	#, tmp732
	movl	%eax, %ecx	# D.11403, tmp921
	sall	%cl, %esi	# tmp921, D.11403
	movl	%esi, %eax	# D.11403, D.11403
	addl	%eax, %edx	# D.11403, D.11403
	movl	$4, %eax	#, tmp733
	subl	-92(%rbp), %eax	# qp_per, D.11403
	movl	%eax, %ecx	# D.11403, tmp923
	sarl	%cl, %edx	# tmp923, tmp734
	movl	%edx, %eax	# tmp734, tmp734
	movl	%eax, -128(%rbp)	# tmp734, ilev
	jmp	.L455	#
.L460:
	.loc 1 1859 0
	movl	-132(%rbp), %eax	# j, tmp736
	movslq	%eax, %rcx	# tmp736, tmp735
	movl	-88(%rbp), %eax	# qp_rem, tmp738
	movslq	%eax, %rsi	# tmp738, tmp737
	movl	-148(%rbp), %eax	# uv, tmp740
	movslq	%eax, %rdx	# tmp740, tmp739
	movq	%rdx, %rax	# tmp739, tmp741
	addq	%rax, %rax	# tmp741
	addq	%rdx, %rax	# tmp739, tmp741
	addq	%rax, %rax	# tmp742
	leaq	(%rax,%rsi), %rdx	#, tmp743
	movl	-136(%rbp), %eax	# i, tmp745
	cltq
	salq	$2, %rdx	#, tmp746
	addq	%rdx, %rax	# tmp746, tmp747
	salq	$2, %rax	#, tmp748
	addq	%rcx, %rax	# tmp735, tmp749
	movl	InvLevelScale4x4Chroma_Inter(,%rax,4), %eax	# InvLevelScale4x4Chroma_Inter, D.11403
	imull	-120(%rbp), %eax	# level, D.11403
	movl	%eax, %edx	# D.11403, D.11403
	movl	$3, %eax	#, tmp750
	subl	-92(%rbp), %eax	# qp_per, D.11403
	movl	$1, %esi	#, tmp751
	movl	%eax, %ecx	# D.11403, tmp926
	sall	%cl, %esi	# tmp926, D.11403
	movl	%esi, %eax	# D.11403, D.11403
	addl	%eax, %edx	# D.11403, D.11403
	movl	$4, %eax	#, tmp752
	subl	-92(%rbp), %eax	# qp_per, D.11403
	movl	%eax, %ecx	# D.11403, tmp928
	sarl	%cl, %edx	# tmp928, tmp753
	movl	%edx, %eax	# tmp753, tmp753
	movl	%eax, -128(%rbp)	# tmp753, ilev
	jmp	.L455	#
.L459:
	.loc 1 1863 0
	cmpl	$1, -104(%rbp)	#, intra
	jne	.L462	#,
	.loc 1 1864 0
	movl	-132(%rbp), %eax	# j, tmp755
	movslq	%eax, %rcx	# tmp755, tmp754
	movl	-88(%rbp), %eax	# qp_rem, tmp757
	movslq	%eax, %rsi	# tmp757, tmp756
	movl	-148(%rbp), %eax	# uv, tmp759
	movslq	%eax, %rdx	# tmp759, tmp758
	movq	%rdx, %rax	# tmp758, tmp760
	addq	%rax, %rax	# tmp760
	addq	%rdx, %rax	# tmp758, tmp760
	addq	%rax, %rax	# tmp761
	leaq	(%rax,%rsi), %rdx	#, tmp762
	movl	-136(%rbp), %eax	# i, tmp764
	cltq
	salq	$2, %rdx	#, tmp765
	addq	%rdx, %rax	# tmp765, tmp766
	salq	$2, %rax	#, tmp767
	addq	%rcx, %rax	# tmp754, tmp768
	movl	InvLevelScale4x4Chroma_Intra(,%rax,4), %eax	# InvLevelScale4x4Chroma_Intra, D.11403
	imull	-120(%rbp), %eax	# level, D.11403
	movl	%eax, %edx	# D.11403, D.11403
	movl	-92(%rbp), %eax	# qp_per, tmp769
	subl	$4, %eax	#, D.11403
	movl	%eax, %ecx	# D.11403, tmp931
	sall	%cl, %edx	# tmp931, tmp770
	movl	%edx, %eax	# tmp770, tmp770
	movl	%eax, -128(%rbp)	# tmp770, ilev
	jmp	.L455	#
.L462:
	.loc 1 1866 0
	movl	-132(%rbp), %eax	# j, tmp772
	movslq	%eax, %rcx	# tmp772, tmp771
	movl	-88(%rbp), %eax	# qp_rem, tmp774
	movslq	%eax, %rsi	# tmp774, tmp773
	movl	-148(%rbp), %eax	# uv, tmp776
	movslq	%eax, %rdx	# tmp776, tmp775
	movq	%rdx, %rax	# tmp775, tmp777
	addq	%rax, %rax	# tmp777
	addq	%rdx, %rax	# tmp775, tmp777
	addq	%rax, %rax	# tmp778
	leaq	(%rax,%rsi), %rdx	#, tmp779
	movl	-136(%rbp), %eax	# i, tmp781
	cltq
	salq	$2, %rdx	#, tmp782
	addq	%rdx, %rax	# tmp782, tmp783
	salq	$2, %rax	#, tmp784
	addq	%rcx, %rax	# tmp771, tmp785
	movl	InvLevelScale4x4Chroma_Inter(,%rax,4), %eax	# InvLevelScale4x4Chroma_Inter, D.11403
	imull	-120(%rbp), %eax	# level, D.11403
	movl	%eax, %edx	# D.11403, D.11403
	movl	-92(%rbp), %eax	# qp_per, tmp786
	subl	$4, %eax	#, D.11403
	movl	%eax, %ecx	# D.11403, tmp934
	sall	%cl, %edx	# tmp934, tmp787
	movl	%edx, %eax	# tmp787, tmp787
	movl	%eax, -128(%rbp)	# tmp787, ilev
.L455:
	.loc 1 1869 0
	cmpl	$0, -100(%rbp)	#, lossless_qpprime
	jne	.L463	#,
	.loc 1 1870 0
	movq	img(%rip), %rax	# img, img.419
	movl	-132(%rbp), %edx	# j, tmp789
	movslq	%edx, %rdx	# tmp789, tmp788
	movl	-136(%rbp), %ecx	# i, tmp791
	movslq	%ecx, %rcx	# tmp791, tmp790
	salq	$4, %rcx	#, tmp792
	addq	%rcx, %rdx	# tmp792, tmp793
	leaq	3276(%rdx), %rcx	#, tmp794
	movl	-128(%rbp), %edx	# ilev, tmp795
	movl	%edx, 8(%rax,%rcx,4)	# tmp795, img.419_299->m7
.L463:
	.loc 1 1825 0
	addl	$1, -124(%rbp)	#, coeff_ctr
.L451:
	.loc 1 1825 0 is_stmt 0 discriminator 1
	cmpl	$15, -124(%rbp)	#, coeff_ctr
	jle	.L464	#,
	.loc 1 1872 0 is_stmt 1
	movl	-116(%rbp), %eax	# scan_pos, tmp796
	cltq
	leaq	0(,%rax,4), %rdx	#, D.11404
	movq	-64(%rbp), %rax	# ACLevel, tmp797
	addq	%rdx, %rax	# D.11404, D.11409
	movl	$0, (%rax)	#, *_303
	.loc 1 1877 0
	cmpl	$0, -100(%rbp)	#, lossless_qpprime
	jne	.L465	#,
	.loc 1 1878 0
	movl	$0, -132(%rbp)	#, j
	jmp	.L466	#
.L471:
	.loc 1 1880 0
	movl	$0, -136(%rbp)	#, i
	jmp	.L467	#
.L468:
	.loc 1 1882 0 discriminator 2
	movq	img(%rip), %rax	# img, img.420
	movl	-132(%rbp), %edx	# j, tmp799
	movslq	%edx, %rdx	# tmp799, tmp798
	movl	-136(%rbp), %ecx	# i, tmp801
	movslq	%ecx, %rcx	# tmp801, tmp800
	salq	$4, %rcx	#, tmp802
	addq	%rcx, %rdx	# tmp802, tmp803
	addq	$3276, %rdx	#, tmp804
	movl	8(%rax,%rdx,4), %edx	# img.420_306->m7, D.11403
	movl	-136(%rbp), %eax	# i, tmp806
	cltq
	movl	%edx, -48(%rbp,%rax,4)	# D.11403, m5
	.loc 1 1880 0 discriminator 2
	addl	$1, -136(%rbp)	#, i
.L467:
	.loc 1 1880 0 is_stmt 0 discriminator 1
	cmpl	$3, -136(%rbp)	#, i
	jle	.L468	#,
	.loc 1 1884 0 is_stmt 1
	movl	-48(%rbp), %edx	# m5, D.11403
	movl	-40(%rbp), %eax	# m5, D.11403
	addl	%edx, %eax	# D.11403, D.11403
	movl	%eax, -32(%rbp)	# D.11403, m6
	.loc 1 1885 0
	movl	-48(%rbp), %edx	# m5, D.11403
	movl	-40(%rbp), %eax	# m5, D.11403
	subl	%eax, %edx	# D.11403, D.11403
	movl	%edx, %eax	# D.11403, D.11403
	movl	%eax, -28(%rbp)	# D.11403, m6
	.loc 1 1886 0
	movl	-44(%rbp), %eax	# m5, D.11403
	sarl	%eax	# D.11403
	movl	%eax, %edx	# D.11403, D.11403
	movl	-36(%rbp), %eax	# m5, D.11403
	subl	%eax, %edx	# D.11403, D.11403
	movl	%edx, %eax	# D.11403, D.11403
	movl	%eax, -24(%rbp)	# D.11403, m6
	.loc 1 1887 0
	movl	-44(%rbp), %eax	# m5, D.11403
	movl	-36(%rbp), %edx	# m5, D.11403
	sarl	%edx	# D.11403
	addl	%edx, %eax	# D.11403, D.11403
	movl	%eax, -20(%rbp)	# D.11403, m6
	.loc 1 1889 0
	movl	$0, -136(%rbp)	#, i
	jmp	.L469	#
.L470:
	.loc 1 1891 0 discriminator 2
	movl	$3, %eax	#, tmp810
	subl	-136(%rbp), %eax	# i, tmp809
	movl	%eax, -80(%rbp)	# tmp809, i1
	.loc 1 1892 0 discriminator 2
	movq	img(%rip), %rax	# img, img.421
	movl	-136(%rbp), %edx	# i, tmp812
	movslq	%edx, %rdx	# tmp812, tmp811
	movl	-32(%rbp,%rdx,4), %ecx	# m6, D.11403
	movl	-80(%rbp), %edx	# i1, tmp814
	movslq	%edx, %rdx	# tmp814, tmp813
	movl	-32(%rbp,%rdx,4), %edx	# m6, D.11403
	addl	%edx, %ecx	# D.11403, D.11403
	movl	-132(%rbp), %edx	# j, tmp816
	movslq	%edx, %rdx	# tmp816, tmp815
	movl	-136(%rbp), %esi	# i, tmp818
	movslq	%esi, %rsi	# tmp818, tmp817
	salq	$4, %rsi	#, tmp819
	addq	%rsi, %rdx	# tmp819, tmp820
	addq	$3276, %rdx	#, tmp821
	movl	%ecx, 8(%rax,%rdx,4)	# D.11403, img.421_325->m7
	.loc 1 1893 0 discriminator 2
	movq	img(%rip), %rax	# img, img.422
	movl	-136(%rbp), %edx	# i, tmp823
	movslq	%edx, %rdx	# tmp823, tmp822
	movl	-32(%rbp,%rdx,4), %ecx	# m6, D.11403
	movl	-80(%rbp), %edx	# i1, tmp825
	movslq	%edx, %rdx	# tmp825, tmp824
	movl	-32(%rbp,%rdx,4), %edx	# m6, D.11403
	subl	%edx, %ecx	# D.11403, D.11403
	movl	-132(%rbp), %edx	# j, tmp827
	movslq	%edx, %rdx	# tmp827, tmp826
	movl	-80(%rbp), %esi	# i1, tmp829
	movslq	%esi, %rsi	# tmp829, tmp828
	salq	$4, %rsi	#, tmp830
	addq	%rsi, %rdx	# tmp830, tmp831
	addq	$3276, %rdx	#, tmp832
	movl	%ecx, 8(%rax,%rdx,4)	# D.11403, img.422_329->m7
	.loc 1 1889 0 discriminator 2
	addl	$1, -136(%rbp)	#, i
.L469:
	.loc 1 1889 0 is_stmt 0 discriminator 1
	cmpl	$1, -136(%rbp)	#, i
	jle	.L470	#,
	.loc 1 1878 0 is_stmt 1
	addl	$1, -132(%rbp)	#, j
.L466:
	.loc 1 1878 0 is_stmt 0 discriminator 1
	cmpl	$3, -132(%rbp)	#, j
	jle	.L471	#,
.L465:
	.loc 1 1898 0 is_stmt 1
	cmpl	$0, -100(%rbp)	#, lossless_qpprime
	jne	.L472	#,
	.loc 1 1899 0
	movl	$0, -136(%rbp)	#, i
	jmp	.L473	#
.L478:
	.loc 1 1901 0
	movl	$0, -132(%rbp)	#, j
	jmp	.L474	#
.L475:
	.loc 1 1903 0 discriminator 2
	movq	img(%rip), %rax	# img, img.423
	movl	-132(%rbp), %edx	# j, tmp834
	movslq	%edx, %rdx	# tmp834, tmp833
	movl	-136(%rbp), %ecx	# i, tmp836
	movslq	%ecx, %rcx	# tmp836, tmp835
	salq	$4, %rcx	#, tmp837
	addq	%rcx, %rdx	# tmp837, tmp838
	addq	$3276, %rdx	#, tmp839
	movl	8(%rax,%rdx,4), %edx	# img.423_337->m7, D.11403
	movl	-132(%rbp), %eax	# j, tmp841
	cltq
	movl	%edx, -48(%rbp,%rax,4)	# D.11403, m5
	.loc 1 1901 0 discriminator 2
	addl	$1, -132(%rbp)	#, j
.L474:
	.loc 1 1901 0 is_stmt 0 discriminator 1
	cmpl	$3, -132(%rbp)	#, j
	jle	.L475	#,
	.loc 1 1905 0 is_stmt 1
	movl	-48(%rbp), %edx	# m5, D.11403
	movl	-40(%rbp), %eax	# m5, D.11403
	addl	%edx, %eax	# D.11403, D.11403
	movl	%eax, -32(%rbp)	# D.11403, m6
	.loc 1 1906 0
	movl	-48(%rbp), %edx	# m5, D.11403
	movl	-40(%rbp), %eax	# m5, D.11403
	subl	%eax, %edx	# D.11403, D.11403
	movl	%edx, %eax	# D.11403, D.11403
	movl	%eax, -28(%rbp)	# D.11403, m6
	.loc 1 1907 0
	movl	-44(%rbp), %eax	# m5, D.11403
	sarl	%eax	# D.11403
	movl	%eax, %edx	# D.11403, D.11403
	movl	-36(%rbp), %eax	# m5, D.11403
	subl	%eax, %edx	# D.11403, D.11403
	movl	%edx, %eax	# D.11403, D.11403
	movl	%eax, -24(%rbp)	# D.11403, m6
	.loc 1 1908 0
	movl	-44(%rbp), %eax	# m5, D.11403
	movl	-36(%rbp), %edx	# m5, D.11403
	sarl	%edx	# D.11403
	addl	%edx, %eax	# D.11403, D.11403
	movl	%eax, -20(%rbp)	# D.11403, m6
	.loc 1 1910 0
	movl	$0, -132(%rbp)	#, j
	jmp	.L476	#
.L477:
	.loc 1 1912 0 discriminator 2
	movl	$3, %eax	#, tmp845
	subl	-132(%rbp), %eax	# j, tmp844
	movl	%eax, -76(%rbp)	# tmp844, j1
	.loc 1 1913 0 discriminator 2
	movq	img(%rip), %rax	# img, img.424
	movl	-132(%rbp), %edx	# j, tmp847
	movslq	%edx, %rdx	# tmp847, tmp846
	movl	-32(%rbp,%rdx,4), %ecx	# m6, D.11403
	movl	-76(%rbp), %edx	# j1, tmp849
	movslq	%edx, %rdx	# tmp849, tmp848
	movl	-32(%rbp,%rdx,4), %edx	# m6, D.11403
	addl	%ecx, %edx	# D.11403, D.11403
	addl	$32, %edx	#, D.11403
	movl	%edx, %ecx	# D.11403, D.11403
	sarl	$6, %ecx	#, D.11403
	movl	-132(%rbp), %edx	# j, tmp851
	movslq	%edx, %rdx	# tmp851, tmp850
	movl	-136(%rbp), %esi	# i, tmp853
	movslq	%esi, %rsi	# tmp853, tmp852
	salq	$4, %rsi	#, tmp854
	addq	%rsi, %rdx	# tmp854, tmp855
	addq	$3276, %rdx	#, tmp856
	movl	%ecx, 8(%rax,%rdx,4)	# D.11403, img.424_356->m7
	.loc 1 1914 0 discriminator 2
	movq	img(%rip), %rax	# img, img.425
	movl	-132(%rbp), %edx	# j, tmp858
	movslq	%edx, %rdx	# tmp858, tmp857
	movl	-32(%rbp,%rdx,4), %ecx	# m6, D.11403
	movl	-76(%rbp), %edx	# j1, tmp860
	movslq	%edx, %rdx	# tmp860, tmp859
	movl	-32(%rbp,%rdx,4), %edx	# m6, D.11403
	subl	%edx, %ecx	# D.11403, D.11403
	movl	%ecx, %edx	# D.11403, D.11403
	addl	$32, %edx	#, D.11403
	movl	%edx, %ecx	# D.11403, D.11403
	sarl	$6, %ecx	#, D.11403
	movl	-76(%rbp), %edx	# j1, tmp862
	movslq	%edx, %rdx	# tmp862, tmp861
	movl	-136(%rbp), %esi	# i, tmp864
	movslq	%esi, %rsi	# tmp864, tmp863
	salq	$4, %rsi	#, tmp865
	addq	%rsi, %rdx	# tmp865, tmp866
	addq	$3276, %rdx	#, tmp867
	movl	%ecx, 8(%rax,%rdx,4)	# D.11403, img.425_362->m7
	.loc 1 1910 0 discriminator 2
	addl	$1, -132(%rbp)	#, j
.L476:
	.loc 1 1910 0 is_stmt 0 discriminator 1
	cmpl	$1, -132(%rbp)	#, j
	jle	.L477	#,
	.loc 1 1899 0 is_stmt 1
	addl	$1, -136(%rbp)	#, i
.L473:
	.loc 1 1899 0 is_stmt 0 discriminator 1
	cmpl	$3, -136(%rbp)	#, i
	jle	.L478	#,
.L472:
	.loc 1 1918 0 is_stmt 1
	movl	-108(%rbp), %eax	# nonzeroAC, D.11403
	.loc 1 1919 0
	addq	$144, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	dct_chroma4x4, .-dct_chroma4x4
	.globl	dct_chroma_DC
	.type	dct_chroma_DC, @function
dct_chroma_DC:
.LFB8:
	.loc 1 1923 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$72, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -68(%rbp)	# uv, uv
	movl	%esi, -72(%rbp)	# cr_cbp, cr_cbp
	.loc 1 1925 0
	movq	img(%rip), %rax	# img, img.426
	movq	14144(%rax), %rax	# img.426_8->cofDC, D.11410
	movl	-68(%rbp), %edx	# uv, tmp89
	movslq	%edx, %rdx	# tmp89, D.11411
	addq	$1, %rdx	#, D.11411
	salq	$3, %rdx	#, D.11411
	addq	%rdx, %rax	# D.11411, D.11410
	movq	(%rax), %rax	# *_14, D.11412
	movq	(%rax), %rax	# *_15, tmp90
	movq	%rax, -32(%rbp)	# tmp90, DCLevel
	.loc 1 1926 0
	movq	img(%rip), %rax	# img, img.427
	movq	14144(%rax), %rax	# img.427_17->cofDC, D.11410
	movl	-68(%rbp), %edx	# uv, tmp91
	movslq	%edx, %rdx	# tmp91, D.11411
	addq	$1, %rdx	#, D.11411
	salq	$3, %rdx	#, D.11411
	addq	%rdx, %rax	# D.11411, D.11410
	movq	(%rax), %rax	# *_22, D.11412
	movq	8(%rax), %rax	# MEM[(int * *)_23 + 8B], tmp92
	movq	%rax, -24(%rbp)	# tmp92, DCRun
	.loc 1 1928 0
	movl	$-1, -56(%rbp)	#, run
	.loc 1 1929 0
	movl	$0, -52(%rbp)	#, scan_pos
	.loc 1 1931 0
	movl	$0, -48(%rbp)	#, coeff_ctr
	jmp	.L481	#
.L483:
	.loc 1 1933 0
	movl	-48(%rbp), %eax	# coeff_ctr, tmp94
	cltq
	movzbl	SNGL_SCAN(%rax,%rax), %eax	# SNGL_SCAN, D.11413
	movzbl	%al, %eax	# D.11413, tmp95
	movl	%eax, -44(%rbp)	# tmp95, i
	.loc 1 1934 0
	movl	-48(%rbp), %eax	# coeff_ctr, tmp97
	cltq
	movzbl	SNGL_SCAN+1(%rax,%rax), %eax	# SNGL_SCAN, D.11413
	movzbl	%al, %eax	# D.11413, tmp98
	movl	%eax, -40(%rbp)	# tmp98, j
	.loc 1 1936 0
	addl	$1, -56(%rbp)	#, run
	.loc 1 1938 0
	movl	-40(%rbp), %eax	# j, tmp100
	cltq
	movl	-68(%rbp), %edx	# uv, tmp102
	movslq	%edx, %rcx	# tmp102, tmp101
	movl	-44(%rbp), %edx	# i, tmp104
	movslq	%edx, %rdx	# tmp104, tmp103
	salq	$2, %rcx	#, tmp105
	addq	%rcx, %rdx	# tmp105, tmp106
	salq	$2, %rdx	#, tmp107
	addq	%rdx, %rax	# tmp107, tmp108
	movl	dc_level(,%rax,4), %edx	# dc_level, D.11414
	movl	%edx, %eax	# D.11414, tmp109
	sarl	$31, %eax	#, tmp109
	xorl	%eax, %edx	# tmp109, tmp110
	movl	%edx, -36(%rbp)	# tmp110, level
	subl	%eax, -36(%rbp)	# tmp109, level
	.loc 1 1940 0
	cmpl	$0, -36(%rbp)	#, level
	je	.L482	#,
	.loc 1 1942 0
	movl	$1, %eax	#, tmp112
	cmpl	$0, -72(%rbp)	#, cr_cbp
	cmovg	-72(%rbp), %eax	# cr_cbp,, tmp111
	movl	%eax, -72(%rbp)	# tmp111, cr_cbp
	.loc 1 1943 0
	movl	-52(%rbp), %eax	# scan_pos, tmp113
	cltq
	leaq	0(,%rax,4), %rdx	#, D.11415
	movq	-32(%rbp), %rax	# DCLevel, tmp114
	leaq	(%rdx,%rax), %rbx	#, D.11416
	movl	-40(%rbp), %eax	# j, tmp116
	cltq
	movl	-68(%rbp), %edx	# uv, tmp118
	movslq	%edx, %rcx	# tmp118, tmp117
	movl	-44(%rbp), %edx	# i, tmp120
	movslq	%edx, %rdx	# tmp120, tmp119
	salq	$2, %rcx	#, tmp121
	addq	%rcx, %rdx	# tmp121, tmp122
	salq	$2, %rdx	#, tmp123
	addq	%rdx, %rax	# tmp123, tmp124
	movl	dc_level(,%rax,4), %edx	# dc_level, D.11414
	movl	-36(%rbp), %eax	# level, tmp125
	movl	%edx, %esi	# D.11414,
	movl	%eax, %edi	# tmp125,
	call	sign	#
	movl	%eax, (%rbx)	# D.11414, *_39
	.loc 1 1944 0
	movl	-52(%rbp), %eax	# scan_pos, tmp126
	cltq
	leaq	0(,%rax,4), %rdx	#, D.11415
	movq	-24(%rbp), %rax	# DCRun, tmp127
	addq	%rax, %rdx	# tmp127, D.11416
	movl	-56(%rbp), %eax	# run, tmp128
	movl	%eax, (%rdx)	# tmp128, *_44
	.loc 1 1945 0
	addl	$1, -52(%rbp)	#, scan_pos
	.loc 1 1946 0
	movl	$-1, -56(%rbp)	#, run
.L482:
	.loc 1 1931 0
	addl	$1, -48(%rbp)	#, coeff_ctr
.L481:
	.loc 1 1931 0 is_stmt 0 discriminator 1
	cmpl	$15, -48(%rbp)	#, coeff_ctr
	jle	.L483	#,
	.loc 1 1949 0 is_stmt 1
	movl	-52(%rbp), %eax	# scan_pos, tmp129
	cltq
	leaq	0(,%rax,4), %rdx	#, D.11415
	movq	-32(%rbp), %rax	# DCLevel, tmp130
	addq	%rdx, %rax	# D.11415, D.11416
	movl	$0, (%rax)	#, *_50
	.loc 1 1951 0
	movl	-72(%rbp), %eax	# cr_cbp, D.11414
	.loc 1 1952 0
	addq	$72, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	dct_chroma_DC, .-dct_chroma_DC
	.globl	dct_luma_sp
	.type	dct_luma_sp, @function
dct_luma_sp:
.LFB9:
	.loc 1 1973 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$312, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -292(%rbp)	# block_x, block_x
	movl	%esi, -296(%rbp)	# block_y, block_y
	movq	%rdx, -304(%rbp)	# coeff_cost, coeff_cost
	.loc 1 1984 0
	movl	-292(%rbp), %eax	# block_x, tmp400
	leal	3(%rax), %edx	#, tmp402
	testl	%eax, %eax	# tmp401
	cmovs	%edx, %eax	# tmp402,, tmp401
	sarl	$2, %eax	#, tmp403
	movl	%eax, -232(%rbp)	# tmp403, pos_x
	.loc 1 1985 0
	movl	-296(%rbp), %eax	# block_y, tmp405
	leal	3(%rax), %edx	#, tmp407
	testl	%eax, %eax	# tmp406
	cmovs	%edx, %eax	# tmp407,, tmp406
	sarl	$2, %eax	#, tmp408
	movl	%eax, -228(%rbp)	# tmp408, pos_y
	.loc 1 1986 0
	movl	-228(%rbp), %eax	# pos_y, tmp409
	movl	%eax, %edx	# tmp409, tmp410
	shrl	$31, %edx	#, tmp410
	addl	%edx, %eax	# tmp410, tmp411
	sarl	%eax	# tmp412
	leal	(%rax,%rax), %edx	#, D.11417
	movl	-232(%rbp), %eax	# pos_x, tmp413
	movl	%eax, %ecx	# tmp413, tmp414
	shrl	$31, %ecx	#, tmp414
	addl	%ecx, %eax	# tmp414, tmp415
	sarl	%eax	# tmp416
	addl	%edx, %eax	# D.11417, tmp417
	movl	%eax, -224(%rbp)	# tmp417, b8
	.loc 1 1987 0
	movl	-228(%rbp), %eax	# pos_y, tmp418
	cltd
	shrl	$31, %edx	#, tmp420
	addl	%edx, %eax	# tmp420, tmp421
	andl	$1, %eax	#, tmp422
	subl	%edx, %eax	# tmp420, tmp423
	leal	(%rax,%rax), %ecx	#, D.11417
	movl	-232(%rbp), %eax	# pos_x, tmp424
	cltd
	shrl	$31, %edx	#, tmp426
	addl	%edx, %eax	# tmp426, tmp427
	andl	$1, %eax	#, tmp428
	subl	%edx, %eax	# tmp426, tmp429
	addl	%ecx, %eax	# D.11417, tmp430
	movl	%eax, -220(%rbp)	# tmp430, b4
	.loc 1 1988 0
	movq	img(%rip), %rax	# img, img.428
	movq	14136(%rax), %rax	# img.428_48->cofAC, D.11418
	movl	-224(%rbp), %edx	# b8, tmp431
	movslq	%edx, %rdx	# tmp431, D.11419
	salq	$3, %rdx	#, D.11419
	addq	%rdx, %rax	# D.11419, D.11418
	movq	(%rax), %rax	# *_52, D.11420
	movl	-220(%rbp), %edx	# b4, tmp432
	movslq	%edx, %rdx	# tmp432, D.11419
	salq	$3, %rdx	#, D.11419
	addq	%rdx, %rax	# D.11419, D.11420
	movq	(%rax), %rax	# *_56, D.11421
	movq	(%rax), %rax	# *_57, tmp433
	movq	%rax, -160(%rbp)	# tmp433, ACLevel
	.loc 1 1989 0
	movq	img(%rip), %rax	# img, img.429
	movq	14136(%rax), %rax	# img.429_59->cofAC, D.11418
	movl	-224(%rbp), %edx	# b8, tmp434
	movslq	%edx, %rdx	# tmp434, D.11419
	salq	$3, %rdx	#, D.11419
	addq	%rdx, %rax	# D.11419, D.11418
	movq	(%rax), %rax	# *_63, D.11420
	movl	-220(%rbp), %edx	# b4, tmp435
	movslq	%edx, %rdx	# tmp435, D.11419
	salq	$3, %rdx	#, D.11419
	addq	%rdx, %rax	# D.11419, D.11420
	movq	(%rax), %rax	# *_67, D.11421
	movq	8(%rax), %rax	# MEM[(int * *)_68 + 8B], tmp436
	movq	%rax, -152(%rbp)	# tmp436, ACRun
	.loc 1 1990 0
	movq	img(%rip), %rax	# img, img.430
	movq	14168(%rax), %rdx	# img.430_70->mb_data, D.11422
	movq	img(%rip), %rax	# img, img.431
	movl	12(%rax), %eax	# img.431_72->current_mb_nr, D.11417
	cltq
	imulq	$632, %rax, %rax	#, D.11419, D.11419
	addq	%rdx, %rax	# D.11422, tmp437
	movq	%rax, -144(%rbp)	# tmp437, currMB
	.loc 1 1996 0
	movq	-144(%rbp), %rax	# currMB, tmp438
	movl	12(%rax), %eax	# currMB_76->qp, D.11417
	subl	$12, %eax	#, D.11417
	cvtsi2sd	%eax, %xmm0	# D.11417, D.11423
	movsd	.LC0(%rip), %xmm1	#, tmp439
	divsd	%xmm1, %xmm0	# tmp439, D.11423
	movabsq	$4611686018427387904, %rax	#, tmp440
	movapd	%xmm0, %xmm1	# D.11423,
	movq	%rax, -312(%rbp)	# tmp440, %sfp
	movsd	-312(%rbp), %xmm0	# %sfp,
	call	pow	#
	movsd	.LC2(%rip), %xmm1	#, tmp441
	mulsd	%xmm1, %xmm0	# tmp441, D.11423
	movsd	.LC3(%rip), %xmm1	#, tmp443
	mulsd	%xmm1, %xmm0	# tmp443, tmp442
	movsd	%xmm0, -136(%rbp)	# tmp442, lambda_mode
	.loc 1 1998 0
	movq	-144(%rbp), %rax	# currMB, tmp444
	movl	12(%rax), %ecx	# currMB_76->qp, D.11417
	movl	$715827883, %edx	#, tmp446
	movl	%ecx, %eax	# D.11417, tmp1095
	imull	%edx	# tmp446
	movl	%ecx, %eax	# D.11417, tmp447
	sarl	$31, %eax	#, tmp447
	subl	%eax, %edx	# tmp447, tmp448
	movl	%edx, %eax	# tmp448, tmp448
	movl	%eax, -216(%rbp)	# tmp448, qp_per
	.loc 1 1999 0
	movq	-144(%rbp), %rax	# currMB, tmp449
	movl	12(%rax), %ecx	# currMB_76->qp, D.11417
	movl	$715827883, %edx	#, tmp451
	movl	%ecx, %eax	# D.11417, tmp1096
	imull	%edx	# tmp451
	movl	%ecx, %eax	# D.11417, tmp452
	sarl	$31, %eax	#, tmp452
	subl	%eax, %edx	# tmp452, tmp453
	movl	%edx, %eax	# tmp453, tmp453
	movl	%eax, -212(%rbp)	# tmp453, qp_rem
	movl	-212(%rbp), %edx	# qp_rem, tmp454
	movl	%edx, %eax	# tmp454, tmp455
	addl	%eax, %eax	# tmp455
	addl	%edx, %eax	# tmp454, tmp455
	addl	%eax, %eax	# tmp456
	subl	%eax, %ecx	# tmp455, tmp457
	movl	%ecx, %eax	# tmp457, tmp457
	movl	%eax, -212(%rbp)	# tmp457, qp_rem
	.loc 1 2000 0
	movl	-216(%rbp), %eax	# qp_per, tmp461
	addl	$15, %eax	#, tmp460
	movl	%eax, -208(%rbp)	# tmp460, q_bits
	.loc 1 2001 0
	movq	-144(%rbp), %rax	# currMB, tmp462
	movl	16(%rax), %ecx	# currMB_76->qpsp, D.11417
	movl	$715827883, %edx	#, tmp464
	movl	%ecx, %eax	# D.11417, tmp1097
	imull	%edx	# tmp464
	movl	%ecx, %eax	# D.11417, tmp465
	sarl	$31, %eax	#, tmp465
	subl	%eax, %edx	# tmp465, tmp466
	movl	%edx, %eax	# tmp466, tmp466
	movl	%eax, -204(%rbp)	# tmp466, qp_per_sp
	.loc 1 2002 0
	movq	-144(%rbp), %rax	# currMB, tmp467
	movl	16(%rax), %ecx	# currMB_76->qpsp, D.11417
	movl	$715827883, %edx	#, tmp469
	movl	%ecx, %eax	# D.11417, tmp1098
	imull	%edx	# tmp469
	movl	%ecx, %eax	# D.11417, tmp470
	sarl	$31, %eax	#, tmp470
	subl	%eax, %edx	# tmp470, tmp471
	movl	%edx, %eax	# tmp471, tmp471
	movl	%eax, -200(%rbp)	# tmp471, qp_rem_sp
	movl	-200(%rbp), %edx	# qp_rem_sp, tmp472
	movl	%edx, %eax	# tmp472, tmp473
	addl	%eax, %eax	# tmp473
	addl	%edx, %eax	# tmp472, tmp473
	addl	%eax, %eax	# tmp474
	subl	%eax, %ecx	# tmp473, tmp475
	movl	%ecx, %eax	# tmp475, tmp475
	movl	%eax, -200(%rbp)	# tmp475, qp_rem_sp
	.loc 1 2003 0
	movl	-204(%rbp), %eax	# qp_per_sp, tmp479
	addl	$15, %eax	#, tmp478
	movl	%eax, -196(%rbp)	# tmp478, q_bits_sp
	.loc 1 2005 0
	movl	-208(%rbp), %eax	# q_bits, tmp480
	movl	$1, %edx	#, tmp481
	movl	%eax, %ecx	# tmp480, tmp1118
	sall	%cl, %edx	# tmp1118, D.11417
	movl	%edx, %ecx	# D.11417, D.11417
	movl	$715827883, %edx	#, tmp483
	movl	%ecx, %eax	# D.11417, tmp1099
	imull	%edx	# tmp483
	movl	%ecx, %eax	# D.11417, tmp484
	sarl	$31, %eax	#, tmp484
	subl	%eax, %edx	# tmp484, tmp485
	movl	%edx, %eax	# tmp485, tmp485
	movl	%eax, -192(%rbp)	# tmp485, qp_const
	.loc 1 2006 0
	movl	-196(%rbp), %eax	# q_bits_sp, tmp486
	movl	$1, %edx	#, tmp487
	movl	%eax, %ecx	# tmp486, tmp1123
	sall	%cl, %edx	# tmp1123, D.11417
	movl	%edx, %eax	# D.11417, D.11417
	movl	%eax, %edx	# D.11417, tmp488
	shrl	$31, %edx	#, tmp488
	addl	%edx, %eax	# tmp488, tmp489
	sarl	%eax	# tmp490
	movl	%eax, -188(%rbp)	# tmp490, qp_const2
	.loc 1 2009 0
	movl	$0, -264(%rbp)	#, j
	jmp	.L486	#
.L489:
	.loc 1 2010 0
	movl	$0, -268(%rbp)	#, i
	jmp	.L487	#
.L488:
	.loc 1 2012 0 discriminator 2
	movq	img(%rip), %rax	# img, img.432
	movq	img(%rip), %rdx	# img, img.433
	movl	-264(%rbp), %ecx	# j, tmp492
	movslq	%ecx, %rcx	# tmp492, tmp491
	movl	-268(%rbp), %esi	# i, tmp494
	movslq	%esi, %rsi	# tmp494, tmp493
	salq	$4, %rsi	#, tmp495
	addq	%rsi, %rcx	# tmp495, tmp496
	addq	$3276, %rcx	#, tmp497
	movl	8(%rdx,%rcx,4), %ecx	# img.433_101->m7, D.11417
	movq	img(%rip), %rdx	# img, img.434
	movl	-292(%rbp), %esi	# block_x, tmp498
	movl	-268(%rbp), %edi	# i, tmp499
	leal	(%rdi,%rsi), %r8d	#, D.11417
	movl	-296(%rbp), %esi	# block_y, tmp500
	movl	-264(%rbp), %edi	# j, tmp501
	addl	%edi, %esi	# tmp501, D.11417
	movslq	%esi, %rsi	# D.11417, tmp502
	movslq	%r8d, %rdi	# D.11417, tmp503
	salq	$4, %rdi	#, tmp504
	addq	%rdi, %rsi	# tmp504, tmp505
	addq	$6296, %rsi	#, tmp506
	movzwl	8(%rdx,%rsi,2), %edx	# img.434_103->mpr, D.11424
	movzwl	%dx, %edx	# D.11424, D.11417
	addl	%edx, %ecx	# D.11417, D.11417
	movl	-264(%rbp), %edx	# j, tmp508
	movslq	%edx, %rdx	# tmp508, tmp507
	movl	-268(%rbp), %esi	# i, tmp510
	movslq	%esi, %rsi	# tmp510, tmp509
	salq	$4, %rsi	#, tmp511
	addq	%rsi, %rdx	# tmp511, tmp512
	addq	$3276, %rdx	#, tmp513
	movl	%ecx, 8(%rax,%rdx,4)	# D.11417, img.432_100->m7
	.loc 1 2013 0 discriminator 2
	movq	img(%rip), %rax	# img, img.435
	movl	-292(%rbp), %edx	# block_x, tmp514
	movl	-268(%rbp), %ecx	# i, tmp515
	leal	(%rcx,%rdx), %esi	#, D.11417
	movl	-296(%rbp), %edx	# block_y, tmp516
	movl	-264(%rbp), %ecx	# j, tmp517
	addl	%ecx, %edx	# tmp517, D.11417
	movslq	%edx, %rdx	# D.11417, tmp518
	movslq	%esi, %rcx	# D.11417, tmp519
	salq	$4, %rcx	#, tmp520
	addq	%rcx, %rdx	# tmp520, tmp521
	addq	$6296, %rdx	#, tmp522
	movzwl	8(%rax,%rdx,2), %eax	# img.435_109->mpr, D.11424
	movzwl	%ax, %eax	# D.11424, D.11417
	movl	-264(%rbp), %edx	# j, tmp524
	movslq	%edx, %rdx	# tmp524, tmp523
	movl	-268(%rbp), %ecx	# i, tmp526
	movslq	%ecx, %rcx	# tmp526, tmp525
	salq	$2, %rcx	#, tmp527
	addq	%rcx, %rdx	# tmp527, tmp528
	movl	%eax, -80(%rbp,%rdx,4)	# D.11417, predicted_block
	.loc 1 2010 0 discriminator 2
	addl	$1, -268(%rbp)	#, i
.L487:
	.loc 1 2010 0 is_stmt 0 discriminator 1
	cmpl	$3, -268(%rbp)	#, i
	jle	.L488	#,
	.loc 1 2009 0 is_stmt 1
	addl	$1, -264(%rbp)	#, j
.L486:
	.loc 1 2009 0 is_stmt 0 discriminator 1
	cmpl	$3, -264(%rbp)	#, j
	jle	.L489	#,
	.loc 1 2016 0 is_stmt 1
	movl	$0, -264(%rbp)	#, j
	jmp	.L490	#
.L493:
	.loc 1 2018 0
	movl	$0, -268(%rbp)	#, i
	jmp	.L491	#
.L492:
	.loc 1 2020 0 discriminator 2
	movl	$3, %eax	#, tmp532
	subl	-268(%rbp), %eax	# i, tmp531
	movl	%eax, -184(%rbp)	# tmp531, i1
	.loc 1 2021 0 discriminator 2
	movq	img(%rip), %rax	# img, img.436
	movl	-264(%rbp), %edx	# j, tmp534
	movslq	%edx, %rdx	# tmp534, tmp533
	movl	-268(%rbp), %ecx	# i, tmp536
	movslq	%ecx, %rcx	# tmp536, tmp535
	salq	$4, %rcx	#, tmp537
	addq	%rcx, %rdx	# tmp537, tmp538
	addq	$3276, %rdx	#, tmp539
	movl	8(%rax,%rdx,4), %edx	# img.436_119->m7, D.11417
	movq	img(%rip), %rax	# img, img.437
	movl	-264(%rbp), %ecx	# j, tmp541
	movslq	%ecx, %rcx	# tmp541, tmp540
	movl	-184(%rbp), %esi	# i1, tmp543
	movslq	%esi, %rsi	# tmp543, tmp542
	salq	$4, %rsi	#, tmp544
	addq	%rsi, %rcx	# tmp544, tmp545
	addq	$3276, %rcx	#, tmp546
	movl	8(%rax,%rcx,4), %eax	# img.437_121->m7, D.11417
	addl	%eax, %edx	# D.11417, D.11417
	movl	-268(%rbp), %eax	# i, tmp548
	cltq
	movl	%edx, -112(%rbp,%rax,4)	# D.11417, m5
	.loc 1 2022 0 discriminator 2
	movq	img(%rip), %rax	# img, img.438
	movl	-264(%rbp), %edx	# j, tmp550
	movslq	%edx, %rdx	# tmp550, tmp549
	movl	-268(%rbp), %ecx	# i, tmp552
	movslq	%ecx, %rcx	# tmp552, tmp551
	salq	$4, %rcx	#, tmp553
	addq	%rcx, %rdx	# tmp553, tmp554
	addq	$3276, %rdx	#, tmp555
	movl	8(%rax,%rdx,4), %edx	# img.438_124->m7, D.11417
	movq	img(%rip), %rax	# img, img.439
	movl	-264(%rbp), %ecx	# j, tmp557
	movslq	%ecx, %rcx	# tmp557, tmp556
	movl	-184(%rbp), %esi	# i1, tmp559
	movslq	%esi, %rsi	# tmp559, tmp558
	salq	$4, %rsi	#, tmp560
	addq	%rsi, %rcx	# tmp560, tmp561
	addq	$3276, %rcx	#, tmp562
	movl	8(%rax,%rcx,4), %eax	# img.439_126->m7, D.11417
	subl	%eax, %edx	# D.11417, D.11417
	movl	-184(%rbp), %eax	# i1, tmp564
	cltq
	movl	%edx, -112(%rbp,%rax,4)	# D.11417, m5
	.loc 1 2018 0 discriminator 2
	addl	$1, -268(%rbp)	#, i
.L491:
	.loc 1 2018 0 is_stmt 0 discriminator 1
	cmpl	$1, -268(%rbp)	#, i
	jle	.L492	#,
	.loc 1 2024 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.440
	movl	-112(%rbp), %ecx	# m5, D.11417
	movl	-108(%rbp), %edx	# m5, D.11417
	addl	%edx, %ecx	# D.11417, D.11417
	movl	-264(%rbp), %edx	# j, tmp566
	movslq	%edx, %rdx	# tmp566, tmp565
	addq	$3276, %rdx	#, tmp567
	movl	%ecx, 8(%rax,%rdx,4)	# D.11417, img.440_130->m7
	.loc 1 2025 0
	movq	img(%rip), %rax	# img, img.441
	movl	-112(%rbp), %ecx	# m5, D.11417
	movl	-108(%rbp), %edx	# m5, D.11417
	subl	%edx, %ecx	# D.11417, D.11417
	movl	-264(%rbp), %edx	# j, tmp569
	movslq	%edx, %rdx	# tmp569, tmp568
	addq	$3308, %rdx	#, tmp570
	movl	%ecx, 8(%rax,%rdx,4)	# D.11417, img.441_134->m7
	.loc 1 2026 0
	movq	img(%rip), %rax	# img, img.442
	movl	-100(%rbp), %edx	# m5, D.11417
	leal	(%rdx,%rdx), %ecx	#, D.11417
	movl	-104(%rbp), %edx	# m5, D.11417
	addl	%edx, %ecx	# D.11417, D.11417
	movl	-264(%rbp), %edx	# j, tmp572
	movslq	%edx, %rdx	# tmp572, tmp571
	addq	$3292, %rdx	#, tmp573
	movl	%ecx, 8(%rax,%rdx,4)	# D.11417, img.442_138->m7
	.loc 1 2027 0
	movq	img(%rip), %rdx	# img, img.443
	movl	-100(%rbp), %ecx	# m5, D.11417
	movl	-104(%rbp), %esi	# m5, D.11417
	movl	$0, %eax	#, tmp574
	subl	%esi, %eax	# D.11417, tmp574
	addl	%eax, %eax	# tmp575
	addl	%eax, %ecx	# D.11417, D.11417
	movl	-264(%rbp), %eax	# j, tmp577
	cltq
	addq	$3324, %rax	#, tmp578
	movl	%ecx, 8(%rdx,%rax,4)	# D.11417, img.443_143->m7
	.loc 1 2016 0
	addl	$1, -264(%rbp)	#, j
.L490:
	.loc 1 2016 0 is_stmt 0 discriminator 1
	cmpl	$3, -264(%rbp)	#, j
	jle	.L493	#,
	.loc 1 2032 0 is_stmt 1
	movl	$0, -268(%rbp)	#, i
	jmp	.L494	#
.L497:
	.loc 1 2034 0
	movl	$0, -264(%rbp)	#, j
	jmp	.L495	#
.L496:
	.loc 1 2036 0 discriminator 2
	movl	$3, %eax	#, tmp582
	subl	-264(%rbp), %eax	# j, tmp581
	movl	%eax, -180(%rbp)	# tmp581, j1
	.loc 1 2037 0 discriminator 2
	movq	img(%rip), %rax	# img, img.444
	movl	-264(%rbp), %edx	# j, tmp584
	movslq	%edx, %rdx	# tmp584, tmp583
	movl	-268(%rbp), %ecx	# i, tmp586
	movslq	%ecx, %rcx	# tmp586, tmp585
	salq	$4, %rcx	#, tmp587
	addq	%rcx, %rdx	# tmp587, tmp588
	addq	$3276, %rdx	#, tmp589
	movl	8(%rax,%rdx,4), %edx	# img.444_152->m7, D.11417
	movq	img(%rip), %rax	# img, img.445
	movl	-180(%rbp), %ecx	# j1, tmp591
	movslq	%ecx, %rcx	# tmp591, tmp590
	movl	-268(%rbp), %esi	# i, tmp593
	movslq	%esi, %rsi	# tmp593, tmp592
	salq	$4, %rsi	#, tmp594
	addq	%rsi, %rcx	# tmp594, tmp595
	addq	$3276, %rcx	#, tmp596
	movl	8(%rax,%rcx,4), %eax	# img.445_154->m7, D.11417
	addl	%eax, %edx	# D.11417, D.11417
	movl	-264(%rbp), %eax	# j, tmp598
	cltq
	movl	%edx, -112(%rbp,%rax,4)	# D.11417, m5
	.loc 1 2038 0 discriminator 2
	movq	img(%rip), %rax	# img, img.446
	movl	-264(%rbp), %edx	# j, tmp600
	movslq	%edx, %rdx	# tmp600, tmp599
	movl	-268(%rbp), %ecx	# i, tmp602
	movslq	%ecx, %rcx	# tmp602, tmp601
	salq	$4, %rcx	#, tmp603
	addq	%rcx, %rdx	# tmp603, tmp604
	addq	$3276, %rdx	#, tmp605
	movl	8(%rax,%rdx,4), %edx	# img.446_157->m7, D.11417
	movq	img(%rip), %rax	# img, img.447
	movl	-180(%rbp), %ecx	# j1, tmp607
	movslq	%ecx, %rcx	# tmp607, tmp606
	movl	-268(%rbp), %esi	# i, tmp609
	movslq	%esi, %rsi	# tmp609, tmp608
	salq	$4, %rsi	#, tmp610
	addq	%rsi, %rcx	# tmp610, tmp611
	addq	$3276, %rcx	#, tmp612
	movl	8(%rax,%rcx,4), %eax	# img.447_159->m7, D.11417
	subl	%eax, %edx	# D.11417, D.11417
	movl	-180(%rbp), %eax	# j1, tmp614
	cltq
	movl	%edx, -112(%rbp,%rax,4)	# D.11417, m5
	.loc 1 2034 0 discriminator 2
	addl	$1, -264(%rbp)	#, j
.L495:
	.loc 1 2034 0 is_stmt 0 discriminator 1
	cmpl	$1, -264(%rbp)	#, j
	jle	.L496	#,
	.loc 1 2040 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.448
	movl	-112(%rbp), %ecx	# m5, D.11417
	movl	-108(%rbp), %edx	# m5, D.11417
	addl	%ecx, %edx	# D.11417, D.11417
	movl	-268(%rbp), %ecx	# i, tmp616
	movslq	%ecx, %rcx	# tmp616, tmp615
	salq	$6, %rcx	#, tmp617
	addq	%rcx, %rax	# tmp617, tmp618
	addq	$13104, %rax	#, tmp619
	movl	%edx, 8(%rax)	# D.11417, img.448_163->m7
	.loc 1 2041 0
	movq	img(%rip), %rax	# img, img.449
	movl	-112(%rbp), %ecx	# m5, D.11417
	movl	-108(%rbp), %edx	# m5, D.11417
	subl	%edx, %ecx	# D.11417, D.11417
	movl	%ecx, %edx	# D.11417, D.11417
	movl	-268(%rbp), %ecx	# i, tmp621
	movslq	%ecx, %rcx	# tmp621, tmp620
	salq	$6, %rcx	#, tmp622
	addq	%rcx, %rax	# tmp622, tmp623
	addq	$13112, %rax	#, tmp624
	movl	%edx, 8(%rax)	# D.11417, img.449_167->m7
	.loc 1 2042 0
	movq	img(%rip), %rax	# img, img.450
	movl	-100(%rbp), %edx	# m5, D.11417
	leal	(%rdx,%rdx), %ecx	#, D.11417
	movl	-104(%rbp), %edx	# m5, D.11417
	addl	%ecx, %edx	# D.11417, D.11417
	movl	-268(%rbp), %ecx	# i, tmp626
	movslq	%ecx, %rcx	# tmp626, tmp625
	salq	$6, %rcx	#, tmp627
	addq	%rcx, %rax	# tmp627, tmp628
	addq	$13108, %rax	#, tmp629
	movl	%edx, 8(%rax)	# D.11417, img.450_171->m7
	.loc 1 2043 0
	movq	img(%rip), %rcx	# img, img.451
	movl	-100(%rbp), %edx	# m5, D.11417
	movl	-104(%rbp), %esi	# m5, D.11417
	movl	$0, %eax	#, tmp630
	subl	%esi, %eax	# D.11417, tmp630
	addl	%eax, %eax	# tmp631
	addl	%eax, %edx	# D.11417, D.11417
	movl	-268(%rbp), %eax	# i, tmp633
	cltq
	salq	$6, %rax	#, tmp634
	addq	%rcx, %rax	# img.451, tmp635
	addq	$13116, %rax	#, tmp636
	movl	%edx, 8(%rax)	# D.11417, img.451_176->m7
	.loc 1 2032 0
	addl	$1, -268(%rbp)	#, i
.L494:
	.loc 1 2032 0 is_stmt 0 discriminator 1
	cmpl	$3, -268(%rbp)	#, i
	jle	.L497	#,
	.loc 1 2046 0 is_stmt 1
	movl	$0, -264(%rbp)	#, j
	jmp	.L498	#
.L501:
	.loc 1 2048 0
	movl	$0, -268(%rbp)	#, i
	jmp	.L499	#
.L500:
	.loc 1 2050 0 discriminator 2
	movl	$3, %eax	#, tmp640
	subl	-268(%rbp), %eax	# i, tmp639
	movl	%eax, -184(%rbp)	# tmp639, i1
	.loc 1 2051 0 discriminator 2
	movl	-264(%rbp), %eax	# j, tmp642
	cltq
	movl	-268(%rbp), %edx	# i, tmp644
	movslq	%edx, %rdx	# tmp644, tmp643
	salq	$2, %rdx	#, tmp645
	addq	%rdx, %rax	# tmp645, tmp646
	movl	-80(%rbp,%rax,4), %edx	# predicted_block, D.11417
	movl	-264(%rbp), %eax	# j, tmp648
	cltq
	movl	-184(%rbp), %ecx	# i1, tmp650
	movslq	%ecx, %rcx	# tmp650, tmp649
	salq	$2, %rcx	#, tmp651
	addq	%rcx, %rax	# tmp651, tmp652
	movl	-80(%rbp,%rax,4), %eax	# predicted_block, D.11417
	addl	%eax, %edx	# D.11417, D.11417
	movl	-268(%rbp), %eax	# i, tmp654
	cltq
	movl	%edx, -112(%rbp,%rax,4)	# D.11417, m5
	.loc 1 2052 0 discriminator 2
	movl	-264(%rbp), %eax	# j, tmp656
	cltq
	movl	-268(%rbp), %edx	# i, tmp658
	movslq	%edx, %rdx	# tmp658, tmp657
	salq	$2, %rdx	#, tmp659
	addq	%rdx, %rax	# tmp659, tmp660
	movl	-80(%rbp,%rax,4), %edx	# predicted_block, D.11417
	movl	-264(%rbp), %eax	# j, tmp662
	cltq
	movl	-184(%rbp), %ecx	# i1, tmp664
	movslq	%ecx, %rcx	# tmp664, tmp663
	salq	$2, %rcx	#, tmp665
	addq	%rcx, %rax	# tmp665, tmp666
	movl	-80(%rbp,%rax,4), %eax	# predicted_block, D.11417
	subl	%eax, %edx	# D.11417, D.11417
	movl	-184(%rbp), %eax	# i1, tmp668
	cltq
	movl	%edx, -112(%rbp,%rax,4)	# D.11417, m5
	.loc 1 2048 0 discriminator 2
	addl	$1, -268(%rbp)	#, i
.L499:
	.loc 1 2048 0 is_stmt 0 discriminator 1
	cmpl	$1, -268(%rbp)	#, i
	jle	.L500	#,
	.loc 1 2054 0 is_stmt 1
	movl	-112(%rbp), %edx	# m5, D.11417
	movl	-108(%rbp), %eax	# m5, D.11417
	addl	%eax, %edx	# D.11417, D.11417
	movl	-264(%rbp), %eax	# j, tmp670
	cltq
	movl	%edx, -80(%rbp,%rax,4)	# D.11417, predicted_block
	.loc 1 2055 0
	movl	-112(%rbp), %edx	# m5, D.11417
	movl	-108(%rbp), %eax	# m5, D.11417
	subl	%eax, %edx	# D.11417, D.11417
	movl	-264(%rbp), %eax	# j, tmp672
	cltq
	addq	$8, %rax	#, tmp673
	movl	%edx, -80(%rbp,%rax,4)	# D.11417, predicted_block
	.loc 1 2056 0
	movl	-100(%rbp), %eax	# m5, D.11417
	leal	(%rax,%rax), %edx	#, D.11417
	movl	-104(%rbp), %eax	# m5, D.11417
	addl	%eax, %edx	# D.11417, D.11417
	movl	-264(%rbp), %eax	# j, tmp675
	cltq
	addq	$4, %rax	#, tmp676
	movl	%edx, -80(%rbp,%rax,4)	# D.11417, predicted_block
	.loc 1 2057 0
	movl	-100(%rbp), %edx	# m5, D.11417
	movl	-104(%rbp), %ecx	# m5, D.11417
	movl	$0, %eax	#, tmp677
	subl	%ecx, %eax	# D.11417, tmp677
	addl	%eax, %eax	# tmp678
	addl	%eax, %edx	# D.11417, D.11417
	movl	-264(%rbp), %eax	# j, tmp680
	cltq
	addq	$12, %rax	#, tmp681
	movl	%edx, -80(%rbp,%rax,4)	# D.11417, predicted_block
	.loc 1 2046 0
	addl	$1, -264(%rbp)	#, j
.L498:
	.loc 1 2046 0 is_stmt 0 discriminator 1
	cmpl	$3, -264(%rbp)	#, j
	jle	.L501	#,
	.loc 1 2062 0 is_stmt 1
	movl	$0, -268(%rbp)	#, i
	jmp	.L502	#
.L505:
	.loc 1 2064 0
	movl	$0, -264(%rbp)	#, j
	jmp	.L503	#
.L504:
	.loc 1 2066 0 discriminator 2
	movl	$3, %eax	#, tmp685
	subl	-264(%rbp), %eax	# j, tmp684
	movl	%eax, -180(%rbp)	# tmp684, j1
	.loc 1 2067 0 discriminator 2
	movl	-264(%rbp), %eax	# j, tmp687
	cltq
	movl	-268(%rbp), %edx	# i, tmp689
	movslq	%edx, %rdx	# tmp689, tmp688
	salq	$2, %rdx	#, tmp690
	addq	%rdx, %rax	# tmp690, tmp691
	movl	-80(%rbp,%rax,4), %edx	# predicted_block, D.11417
	movl	-180(%rbp), %eax	# j1, tmp693
	cltq
	movl	-268(%rbp), %ecx	# i, tmp695
	movslq	%ecx, %rcx	# tmp695, tmp694
	salq	$2, %rcx	#, tmp696
	addq	%rcx, %rax	# tmp696, tmp697
	movl	-80(%rbp,%rax,4), %eax	# predicted_block, D.11417
	addl	%eax, %edx	# D.11417, D.11417
	movl	-264(%rbp), %eax	# j, tmp699
	cltq
	movl	%edx, -112(%rbp,%rax,4)	# D.11417, m5
	.loc 1 2068 0 discriminator 2
	movl	-264(%rbp), %eax	# j, tmp701
	cltq
	movl	-268(%rbp), %edx	# i, tmp703
	movslq	%edx, %rdx	# tmp703, tmp702
	salq	$2, %rdx	#, tmp704
	addq	%rdx, %rax	# tmp704, tmp705
	movl	-80(%rbp,%rax,4), %edx	# predicted_block, D.11417
	movl	-180(%rbp), %eax	# j1, tmp707
	cltq
	movl	-268(%rbp), %ecx	# i, tmp709
	movslq	%ecx, %rcx	# tmp709, tmp708
	salq	$2, %rcx	#, tmp710
	addq	%rcx, %rax	# tmp710, tmp711
	movl	-80(%rbp,%rax,4), %eax	# predicted_block, D.11417
	subl	%eax, %edx	# D.11417, D.11417
	movl	-180(%rbp), %eax	# j1, tmp713
	cltq
	movl	%edx, -112(%rbp,%rax,4)	# D.11417, m5
	.loc 1 2064 0 discriminator 2
	addl	$1, -264(%rbp)	#, j
.L503:
	.loc 1 2064 0 is_stmt 0 discriminator 1
	cmpl	$1, -264(%rbp)	#, j
	jle	.L504	#,
	.loc 1 2070 0 is_stmt 1
	movl	-112(%rbp), %edx	# m5, D.11417
	movl	-108(%rbp), %eax	# m5, D.11417
	addl	%eax, %edx	# D.11417, D.11417
	movl	-268(%rbp), %eax	# i, tmp715
	cltq
	salq	$4, %rax	#, tmp716
	leaq	-16(%rbp), %rdi	#, tmp1126
	addq	%rdi, %rax	# tmp1126, tmp717
	subq	$64, %rax	#, tmp718
	movl	%edx, (%rax)	# D.11417, predicted_block
	.loc 1 2071 0
	movl	-112(%rbp), %edx	# m5, D.11417
	movl	-108(%rbp), %eax	# m5, D.11417
	subl	%eax, %edx	# D.11417, D.11417
	movl	-268(%rbp), %eax	# i, tmp720
	cltq
	salq	$4, %rax	#, tmp721
	leaq	-16(%rbp), %rdi	#, tmp1127
	addq	%rdi, %rax	# tmp1127, tmp722
	subq	$56, %rax	#, tmp723
	movl	%edx, (%rax)	# D.11417, predicted_block
	.loc 1 2072 0
	movl	-100(%rbp), %eax	# m5, D.11417
	leal	(%rax,%rax), %edx	#, D.11417
	movl	-104(%rbp), %eax	# m5, D.11417
	addl	%eax, %edx	# D.11417, D.11417
	movl	-268(%rbp), %eax	# i, tmp725
	cltq
	salq	$4, %rax	#, tmp726
	leaq	-16(%rbp), %rbx	#, tmp1128
	addq	%rbx, %rax	# tmp1128, tmp727
	subq	$60, %rax	#, tmp728
	movl	%edx, (%rax)	# D.11417, predicted_block
	.loc 1 2073 0
	movl	-100(%rbp), %edx	# m5, D.11417
	movl	-104(%rbp), %ecx	# m5, D.11417
	movl	$0, %eax	#, tmp729
	subl	%ecx, %eax	# D.11417, tmp729
	addl	%eax, %eax	# tmp730
	addl	%eax, %edx	# D.11417, D.11417
	movl	-268(%rbp), %eax	# i, tmp732
	cltq
	salq	$4, %rax	#, tmp733
	leaq	-16(%rbp), %rdi	#, tmp1129
	addq	%rdi, %rax	# tmp1129, tmp734
	subq	$52, %rax	#, tmp735
	movl	%edx, (%rax)	# D.11417, predicted_block
	.loc 1 2062 0
	addl	$1, -268(%rbp)	#, i
.L502:
	.loc 1 2062 0 is_stmt 0 discriminator 1
	cmpl	$3, -268(%rbp)	#, i
	jle	.L505	#,
	.loc 1 2077 0 is_stmt 1
	movl	$0, -240(%rbp)	#, nonzero
	.loc 1 2079 0
	movl	$-1, -244(%rbp)	#, run
	.loc 1 2080 0
	movl	$0, -248(%rbp)	#, scan_pos
	.loc 1 2082 0
	movl	$0, -256(%rbp)	#, coeff_ctr
	jmp	.L506	#
.L529:
	.loc 1 2085 0
	movq	img(%rip), %rax	# img, img.452
	movl	72444(%rax), %eax	# img.452_236->field_picture, D.11425
	testl	%eax, %eax	# D.11425
	jne	.L507	#,
	.loc 1 2085 0 is_stmt 0 discriminator 1
	movl	mb_adaptive(%rip), %eax	# mb_adaptive, mb_adaptive.453
	testl	%eax, %eax	# mb_adaptive.453
	je	.L508	#,
	movq	img(%rip), %rax	# img, img.454
	movl	72008(%rax), %eax	# img.454_239->field_mode, D.11417
	testl	%eax, %eax	# D.11417
	je	.L508	#,
.L507:
	.loc 1 2087 0 is_stmt 1
	movl	-256(%rbp), %eax	# coeff_ctr, tmp737
	cltq
	movzbl	FIELD_SCAN(%rax,%rax), %eax	# FIELD_SCAN, D.11426
	movzbl	%al, %eax	# D.11426, tmp738
	movl	%eax, -268(%rbp)	# tmp738, i
	.loc 1 2088 0
	movl	-256(%rbp), %eax	# coeff_ctr, tmp740
	cltq
	movzbl	FIELD_SCAN+1(%rax,%rax), %eax	# FIELD_SCAN, D.11426
	movzbl	%al, %eax	# D.11426, tmp741
	movl	%eax, -264(%rbp)	# tmp741, j
	jmp	.L509	#
.L508:
	.loc 1 2092 0
	movl	-256(%rbp), %eax	# coeff_ctr, tmp743
	cltq
	movzbl	SNGL_SCAN(%rax,%rax), %eax	# SNGL_SCAN, D.11426
	movzbl	%al, %eax	# D.11426, tmp744
	movl	%eax, -268(%rbp)	# tmp744, i
	.loc 1 2093 0
	movl	-256(%rbp), %eax	# coeff_ctr, tmp746
	cltq
	movzbl	SNGL_SCAN+1(%rax,%rax), %eax	# SNGL_SCAN, D.11426
	movzbl	%al, %eax	# D.11426, tmp747
	movl	%eax, -264(%rbp)	# tmp747, j
.L509:
	.loc 1 2096 0
	addl	$1, -244(%rbp)	#, run
	.loc 1 2097 0
	movl	$0, -260(%rbp)	#, ilev
	.loc 1 2102 0
	movl	-264(%rbp), %eax	# j, tmp749
	cltq
	movl	-268(%rbp), %edx	# i, tmp751
	movslq	%edx, %rdx	# tmp751, tmp750
	salq	$2, %rdx	#, tmp752
	addq	%rdx, %rax	# tmp752, tmp753
	movl	-80(%rbp,%rax,4), %eax	# predicted_block, D.11417
	cltd
	xorl	%edx, %eax	# tmp754, D.11417
	subl	%edx, %eax	# tmp754, D.11417
	movl	-264(%rbp), %edx	# j, tmp756
	movslq	%edx, %rdx	# tmp756, tmp755
	movl	-200(%rbp), %ecx	# qp_rem_sp, tmp758
	movslq	%ecx, %rsi	# tmp758, tmp757
	movl	-268(%rbp), %ecx	# i, tmp760
	movslq	%ecx, %rcx	# tmp760, tmp759
	salq	$2, %rsi	#, tmp761
	addq	%rsi, %rcx	# tmp761, tmp762
	salq	$2, %rcx	#, tmp763
	addq	%rcx, %rdx	# tmp763, tmp764
	movl	quant_coef(,%rdx,4), %edx	# quant_coef, D.11417
	imull	%eax, %edx	# D.11417, D.11417
	movl	-188(%rbp), %eax	# qp_const2, tmp765
	addl	%eax, %edx	# tmp765, D.11417
	movl	-196(%rbp), %eax	# q_bits_sp, tmp766
	movl	%eax, %ecx	# tmp766, tmp1131
	sarl	%cl, %edx	# tmp1131, tmp767
	movl	%edx, %eax	# tmp767, tmp767
	movl	%eax, -176(%rbp)	# tmp767, level1
	.loc 1 2103 0
	movl	-196(%rbp), %eax	# q_bits_sp, tmp768
	movl	-176(%rbp), %edx	# level1, tmp769
	movl	%eax, %ecx	# tmp768, tmp1133
	sall	%cl, %edx	# tmp1133, D.11417
	movl	%edx, %eax	# D.11417, D.11417
	movl	-264(%rbp), %edx	# j, tmp771
	movslq	%edx, %rdx	# tmp771, tmp770
	movl	-200(%rbp), %ecx	# qp_rem_sp, tmp773
	movslq	%ecx, %rsi	# tmp773, tmp772
	movl	-268(%rbp), %ecx	# i, tmp775
	movslq	%ecx, %rcx	# tmp775, tmp774
	salq	$2, %rsi	#, tmp776
	addq	%rsi, %rcx	# tmp776, tmp777
	salq	$2, %rcx	#, tmp778
	addq	%rcx, %rdx	# tmp778, tmp779
	movl	quant_coef(,%rdx,4), %ebx	# quant_coef, D.11417
	cltd
	idivl	%ebx	# D.11417
	movl	%eax, -176(%rbp)	# tmp780, level1
	.loc 1 2104 0
	movq	img(%rip), %rax	# img, img.455
	movl	-264(%rbp), %edx	# j, tmp783
	movslq	%edx, %rdx	# tmp783, tmp782
	movl	-268(%rbp), %ecx	# i, tmp785
	movslq	%ecx, %rcx	# tmp785, tmp784
	salq	$4, %rcx	#, tmp786
	addq	%rcx, %rdx	# tmp786, tmp787
	addq	$3276, %rdx	#, tmp788
	movl	8(%rax,%rdx,4), %ebx	# img.455_260->m7, D.11417
	movl	-264(%rbp), %eax	# j, tmp790
	cltq
	movl	-268(%rbp), %edx	# i, tmp792
	movslq	%edx, %rdx	# tmp792, tmp791
	salq	$2, %rdx	#, tmp793
	addq	%rdx, %rax	# tmp793, tmp794
	movl	-80(%rbp,%rax,4), %edx	# predicted_block, D.11417
	movl	-176(%rbp), %eax	# level1, tmp795
	movl	%edx, %esi	# D.11417,
	movl	%eax, %edi	# tmp795,
	call	sign	#
	subl	%eax, %ebx	# D.11417, tmp796
	movl	%ebx, %eax	# tmp796, tmp796
	movl	%eax, -172(%rbp)	# tmp796, c_err1
	.loc 1 2105 0
	movl	-172(%rbp), %eax	# c_err1, tmp798
	cltd
	movl	%edx, %eax	# tmp797, D.11417
	xorl	-172(%rbp), %eax	# c_err1, D.11417
	subl	%edx, %eax	# tmp797, D.11417
	movl	-264(%rbp), %edx	# j, tmp800
	movslq	%edx, %rdx	# tmp800, tmp799
	movl	-212(%rbp), %ecx	# qp_rem, tmp802
	movslq	%ecx, %rsi	# tmp802, tmp801
	movl	-268(%rbp), %ecx	# i, tmp804
	movslq	%ecx, %rcx	# tmp804, tmp803
	salq	$2, %rsi	#, tmp805
	addq	%rsi, %rcx	# tmp805, tmp806
	salq	$2, %rcx	#, tmp807
	addq	%rcx, %rdx	# tmp807, tmp808
	movl	quant_coef(,%rdx,4), %edx	# quant_coef, D.11417
	imull	%eax, %edx	# D.11417, D.11417
	movl	-192(%rbp), %eax	# qp_const, tmp809
	addl	%eax, %edx	# tmp809, D.11417
	movl	-208(%rbp), %eax	# q_bits, tmp810
	movl	%eax, %ecx	# tmp810, tmp1138
	sarl	%cl, %edx	# tmp1138, tmp811
	movl	%edx, %eax	# tmp811, tmp811
	movl	%eax, -176(%rbp)	# tmp811, level1
	.loc 1 2108 0
	movq	img(%rip), %rax	# img, img.456
	movl	-264(%rbp), %edx	# j, tmp813
	movslq	%edx, %rdx	# tmp813, tmp812
	movl	-268(%rbp), %ecx	# i, tmp815
	movslq	%ecx, %rcx	# tmp815, tmp814
	salq	$4, %rcx	#, tmp816
	addq	%rcx, %rdx	# tmp816, tmp817
	addq	$3276, %rdx	#, tmp818
	movl	8(%rax,%rdx,4), %edx	# img.456_270->m7, D.11417
	movl	-264(%rbp), %eax	# j, tmp820
	cltq
	movl	-268(%rbp), %ecx	# i, tmp822
	movslq	%ecx, %rcx	# tmp822, tmp821
	salq	$2, %rcx	#, tmp823
	addq	%rcx, %rax	# tmp823, tmp824
	movl	-80(%rbp,%rax,4), %eax	# predicted_block, D.11417
	subl	%eax, %edx	# D.11417, tmp825
	movl	%edx, %eax	# tmp825, tmp825
	movl	%eax, -168(%rbp)	# tmp825, c_err2
	.loc 1 2109 0
	movl	-168(%rbp), %eax	# c_err2, tmp827
	cltd
	movl	%edx, %eax	# tmp826, D.11417
	xorl	-168(%rbp), %eax	# c_err2, D.11417
	subl	%edx, %eax	# tmp826, D.11417
	movl	-264(%rbp), %edx	# j, tmp829
	movslq	%edx, %rdx	# tmp829, tmp828
	movl	-212(%rbp), %ecx	# qp_rem, tmp831
	movslq	%ecx, %rsi	# tmp831, tmp830
	movl	-268(%rbp), %ecx	# i, tmp833
	movslq	%ecx, %rcx	# tmp833, tmp832
	salq	$2, %rsi	#, tmp834
	addq	%rsi, %rcx	# tmp834, tmp835
	salq	$2, %rcx	#, tmp836
	addq	%rcx, %rdx	# tmp836, tmp837
	movl	quant_coef(,%rdx,4), %edx	# quant_coef, D.11417
	imull	%eax, %edx	# D.11417, D.11417
	movl	-192(%rbp), %eax	# qp_const, tmp838
	addl	%eax, %edx	# tmp838, D.11417
	movl	-208(%rbp), %eax	# q_bits, tmp839
	movl	%eax, %ecx	# tmp839, tmp1142
	sarl	%cl, %edx	# tmp1142, tmp840
	movl	%edx, %eax	# tmp840, tmp840
	movl	%eax, -164(%rbp)	# tmp840, level2
	.loc 1 2112 0
	movl	-176(%rbp), %eax	# level1, tmp841
	cmpl	-164(%rbp), %eax	# level2, tmp841
	je	.L510	#,
	.loc 1 2112 0 is_stmt 0 discriminator 1
	cmpl	$0, -176(%rbp)	#, level1
	je	.L510	#,
	cmpl	$0, -164(%rbp)	#, level2
	je	.L510	#,
	.loc 1 2114 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.457
	movl	-264(%rbp), %edx	# j, tmp843
	movslq	%edx, %rdx	# tmp843, tmp842
	movl	-268(%rbp), %ecx	# i, tmp845
	movslq	%ecx, %rcx	# tmp845, tmp844
	salq	$4, %rcx	#, tmp846
	addq	%rcx, %rdx	# tmp846, tmp847
	addq	$3276, %rdx	#, tmp848
	movl	8(%rax,%rdx,4), %ebx	# img.457_279->m7, D.11417
	movl	-172(%rbp), %edx	# c_err1, tmp849
	movl	-176(%rbp), %eax	# level1, tmp850
	movl	%edx, %esi	# tmp849,
	movl	%eax, %edi	# tmp850,
	call	sign	#
	movl	-264(%rbp), %edx	# j, tmp852
	movslq	%edx, %rdx	# tmp852, tmp851
	movl	-212(%rbp), %ecx	# qp_rem, tmp854
	movslq	%ecx, %rsi	# tmp854, tmp853
	movl	-268(%rbp), %ecx	# i, tmp856
	movslq	%ecx, %rcx	# tmp856, tmp855
	salq	$2, %rsi	#, tmp857
	addq	%rsi, %rcx	# tmp857, tmp858
	salq	$2, %rcx	#, tmp859
	addq	%rcx, %rdx	# tmp859, tmp860
	movl	dequant_coef(,%rdx,4), %edx	# dequant_coef, D.11417
	imull	%eax, %edx	# D.11417, D.11417
	movl	-264(%rbp), %eax	# j, tmp862
	cltq
	movl	-268(%rbp), %ecx	# i, tmp864
	movslq	%ecx, %rcx	# tmp864, tmp863
	salq	$2, %rcx	#, tmp865
	addq	%rcx, %rax	# tmp865, tmp866
	movl	A(,%rax,4), %eax	# A, D.11417
	imull	%eax, %edx	# D.11417, D.11417
	movl	-216(%rbp), %eax	# qp_per, tmp867
	movl	%eax, %ecx	# tmp867, tmp1144
	sall	%cl, %edx	# tmp1144, D.11417
	movl	%edx, %eax	# D.11417, D.11417
	sarl	$6, %eax	#, D.11417
	subl	%eax, %ebx	# D.11417, D.11417
	movl	%ebx, %ecx	# D.11417, D.11417
	movl	-264(%rbp), %eax	# j, tmp869
	cltq
	movl	-268(%rbp), %edx	# i, tmp871
	movslq	%edx, %rdx	# tmp871, tmp870
	salq	$2, %rdx	#, tmp872
	addq	%rdx, %rax	# tmp872, tmp873
	movl	-80(%rbp,%rax,4), %eax	# predicted_block, D.11417
	subl	%eax, %ecx	# D.11417, D.11417
	movl	%ecx, %eax	# D.11417, D.11417
	cvtsi2sd	%eax, %xmm0	# D.11417, tmp874
	movsd	%xmm0, -128(%rbp)	# tmp874, D_dis1
	.loc 1 2115 0
	leaq	-272(%rbp), %rcx	#, tmp875
	leaq	-276(%rbp), %rdx	#, tmp876
	movl	-244(%rbp), %esi	# run, tmp877
	movl	-176(%rbp), %eax	# level1, tmp878
	movl	%eax, %edi	# tmp878,
	call	levrun_linfo_inter	#
	.loc 1 2116 0
	movsd	-128(%rbp), %xmm0	# D_dis1, tmp879
	movapd	%xmm0, %xmm1	# tmp879, D.11423
	mulsd	-128(%rbp), %xmm1	# D_dis1, D.11423
	movl	-276(%rbp), %eax	# len, len.458
	cvtsi2sd	%eax, %xmm0	# len.458, D.11423
	mulsd	-136(%rbp), %xmm0	# lambda_mode, D.11423
	addsd	%xmm1, %xmm0	# D.11423, tmp880
	movsd	%xmm0, -128(%rbp)	# tmp880, D_dis1
	.loc 1 2118 0
	movq	img(%rip), %rax	# img, img.459
	movl	-264(%rbp), %edx	# j, tmp882
	movslq	%edx, %rdx	# tmp882, tmp881
	movl	-268(%rbp), %ecx	# i, tmp884
	movslq	%ecx, %rcx	# tmp884, tmp883
	salq	$4, %rcx	#, tmp885
	addq	%rcx, %rdx	# tmp885, tmp886
	addq	$3276, %rdx	#, tmp887
	movl	8(%rax,%rdx,4), %ebx	# img.459_297->m7, D.11417
	movl	-168(%rbp), %edx	# c_err2, tmp888
	movl	-164(%rbp), %eax	# level2, tmp889
	movl	%edx, %esi	# tmp888,
	movl	%eax, %edi	# tmp889,
	call	sign	#
	movl	-264(%rbp), %edx	# j, tmp891
	movslq	%edx, %rdx	# tmp891, tmp890
	movl	-212(%rbp), %ecx	# qp_rem, tmp893
	movslq	%ecx, %rsi	# tmp893, tmp892
	movl	-268(%rbp), %ecx	# i, tmp895
	movslq	%ecx, %rcx	# tmp895, tmp894
	salq	$2, %rsi	#, tmp896
	addq	%rsi, %rcx	# tmp896, tmp897
	salq	$2, %rcx	#, tmp898
	addq	%rcx, %rdx	# tmp898, tmp899
	movl	dequant_coef(,%rdx,4), %edx	# dequant_coef, D.11417
	imull	%eax, %edx	# D.11417, D.11417
	movl	-264(%rbp), %eax	# j, tmp901
	cltq
	movl	-268(%rbp), %ecx	# i, tmp903
	movslq	%ecx, %rcx	# tmp903, tmp902
	salq	$2, %rcx	#, tmp904
	addq	%rcx, %rax	# tmp904, tmp905
	movl	A(,%rax,4), %eax	# A, D.11417
	imull	%eax, %edx	# D.11417, D.11417
	movl	-216(%rbp), %eax	# qp_per, tmp906
	movl	%eax, %ecx	# tmp906, tmp1149
	sall	%cl, %edx	# tmp1149, D.11417
	movl	%edx, %eax	# D.11417, D.11417
	sarl	$6, %eax	#, D.11417
	subl	%eax, %ebx	# D.11417, D.11417
	movl	%ebx, %ecx	# D.11417, D.11417
	movl	-264(%rbp), %eax	# j, tmp908
	cltq
	movl	-268(%rbp), %edx	# i, tmp910
	movslq	%edx, %rdx	# tmp910, tmp909
	salq	$2, %rdx	#, tmp911
	addq	%rdx, %rax	# tmp911, tmp912
	movl	-80(%rbp,%rax,4), %eax	# predicted_block, D.11417
	subl	%eax, %ecx	# D.11417, D.11417
	movl	%ecx, %eax	# D.11417, D.11417
	cvtsi2sd	%eax, %xmm0	# D.11417, tmp913
	movsd	%xmm0, -120(%rbp)	# tmp913, D_dis2
	.loc 1 2119 0
	leaq	-272(%rbp), %rcx	#, tmp914
	leaq	-276(%rbp), %rdx	#, tmp915
	movl	-244(%rbp), %esi	# run, tmp916
	movl	-164(%rbp), %eax	# level2, tmp917
	movl	%eax, %edi	# tmp917,
	call	levrun_linfo_inter	#
	.loc 1 2120 0
	movsd	-120(%rbp), %xmm0	# D_dis2, tmp918
	movapd	%xmm0, %xmm1	# tmp918, D.11423
	mulsd	-120(%rbp), %xmm1	# D_dis2, D.11423
	movl	-276(%rbp), %eax	# len, len.460
	cvtsi2sd	%eax, %xmm0	# len.460, D.11423
	mulsd	-136(%rbp), %xmm0	# lambda_mode, D.11423
	addsd	%xmm1, %xmm0	# D.11423, tmp919
	movsd	%xmm0, -120(%rbp)	# tmp919, D_dis2
	.loc 1 2122 0
	movsd	-128(%rbp), %xmm0	# D_dis1, tmp920
	ucomisd	-120(%rbp), %xmm0	# D_dis2, tmp920
	jp	.L511	#,
	movsd	-128(%rbp), %xmm0	# D_dis1, tmp921
	ucomisd	-120(%rbp), %xmm0	# D_dis2, tmp921
	jne	.L511	#,
	.loc 1 2123 0
	movl	-176(%rbp), %eax	# level1, tmp923
	sarl	$31, %eax	#, tmp922
	movl	%eax, %edx	# tmp922, D.11417
	xorl	-176(%rbp), %edx	# level1, D.11417
	subl	%eax, %edx	# tmp922, D.11417
	movl	-164(%rbp), %eax	# level2, tmp925
	sarl	$31, %eax	#, tmp924
	movl	%eax, %ecx	# tmp924, tmp924
	movl	%ecx, %eax	# tmp924, D.11417
	xorl	-164(%rbp), %eax	# level2, D.11417
	subl	%ecx, %eax	# tmp924, D.11417
	cmpl	%eax, %edx	# D.11417, D.11417
	jge	.L513	#,
	.loc 1 2123 0 is_stmt 0 discriminator 1
	movl	-176(%rbp), %eax	# level1, iftmp.461
	jmp	.L514	#
.L513:
	.loc 1 2123 0 discriminator 2
	movl	-164(%rbp), %eax	# level2, iftmp.461
.L514:
	.loc 1 2123 0 discriminator 1
	movl	%eax, -252(%rbp)	# iftmp.461, level
	jmp	.L515	#
.L511:
	.loc 1 2126 0 is_stmt 1
	movsd	-120(%rbp), %xmm0	# D_dis2, tmp926
	ucomisd	-128(%rbp), %xmm0	# D_dis1, tmp926
	jbe	.L549	#,
	.loc 1 2127 0
	movl	-176(%rbp), %eax	# level1, tmp927
	movl	%eax, -252(%rbp)	# tmp927, level
	jmp	.L515	#
.L549:
	.loc 1 2129 0
	movl	-164(%rbp), %eax	# level2, tmp928
	movl	%eax, -252(%rbp)	# tmp928, level
.L515:
	.loc 1 2131 0
	movl	-252(%rbp), %eax	# level, tmp929
	cmpl	-176(%rbp), %eax	# level1, tmp929
	jne	.L518	#,
	.loc 1 2131 0 is_stmt 0 discriminator 1
	movl	-172(%rbp), %eax	# c_err1, iftmp.462
	jmp	.L519	#
.L518:
	.loc 1 2131 0 discriminator 2
	movl	-168(%rbp), %eax	# c_err2, iftmp.462
.L519:
	.loc 1 2131 0 discriminator 3
	movl	%eax, -236(%rbp)	# iftmp.462, c_err
	jmp	.L520	#
.L510:
	.loc 1 2133 0 is_stmt 1
	movl	-176(%rbp), %eax	# level1, tmp930
	cmpl	-164(%rbp), %eax	# level2, tmp930
	jne	.L521	#,
	.loc 1 2135 0
	movl	-176(%rbp), %eax	# level1, tmp931
	movl	%eax, -252(%rbp)	# tmp931, level
	.loc 1 2136 0
	movl	-172(%rbp), %eax	# c_err1, tmp932
	movl	%eax, -236(%rbp)	# tmp932, c_err
	jmp	.L520	#
.L521:
	.loc 1 2140 0
	cmpl	$0, -176(%rbp)	#, level1
	jne	.L522	#,
	.loc 1 2140 0 is_stmt 0 discriminator 1
	movl	-176(%rbp), %eax	# level1, iftmp.463
	jmp	.L523	#
.L522:
	.loc 1 2140 0 discriminator 2
	movl	-164(%rbp), %eax	# level2, iftmp.463
.L523:
	.loc 1 2140 0 discriminator 3
	movl	%eax, -252(%rbp)	# iftmp.463, level
	.loc 1 2141 0 is_stmt 1 discriminator 3
	cmpl	$0, -176(%rbp)	#, level1
	jne	.L524	#,
	.loc 1 2141 0 is_stmt 0 discriminator 1
	movl	-172(%rbp), %eax	# c_err1, iftmp.464
	jmp	.L525	#
.L524:
	.loc 1 2141 0 discriminator 2
	movl	-168(%rbp), %eax	# c_err2, iftmp.464
.L525:
	.loc 1 2141 0 discriminator 3
	movl	%eax, -236(%rbp)	# iftmp.464, c_err
.L520:
	.loc 1 2144 0 is_stmt 1
	cmpl	$0, -252(%rbp)	#, level
	je	.L526	#,
	.loc 1 2146 0
	movl	$1, -240(%rbp)	#, nonzero
	.loc 1 2147 0
	cmpl	$1, -252(%rbp)	#, level
	jle	.L527	#,
	.loc 1 2148 0
	movq	-304(%rbp), %rax	# coeff_cost, tmp933
	movl	(%rax), %eax	# *coeff_cost_334(D), D.11417
	leal	999999(%rax), %edx	#, D.11417
	movq	-304(%rbp), %rax	# coeff_cost, tmp934
	movl	%edx, (%rax)	# D.11417, *coeff_cost_334(D)
	jmp	.L528	#
.L527:
	.loc 1 2150 0
	movq	-304(%rbp), %rax	# coeff_cost, tmp935
	movl	(%rax), %edx	# *coeff_cost_334(D), D.11417
	movq	input(%rip), %rax	# input, input.465
	movl	2468(%rax), %ecx	# input.465_338->disthres, D.11417
	movl	-244(%rbp), %eax	# run, tmp937
	cltq
	movslq	%ecx, %rcx	# D.11417, tmp938
	salq	$4, %rcx	#, tmp939
	addq	%rcx, %rax	# tmp939, tmp940
	addq	$COEFF_COST, %rax	#, tmp941
	movzbl	(%rax), %eax	# COEFF_COST, D.11426
	movzbl	%al, %eax	# D.11426, D.11417
	addl	%eax, %edx	# D.11417, D.11417
	movq	-304(%rbp), %rax	# coeff_cost, tmp942
	movl	%edx, (%rax)	# D.11417, *coeff_cost_334(D)
.L528:
	.loc 1 2151 0
	movl	-248(%rbp), %eax	# scan_pos, tmp943
	cltq
	leaq	0(,%rax,4), %rdx	#, D.11419
	movq	-160(%rbp), %rax	# ACLevel, tmp944
	leaq	(%rdx,%rax), %rbx	#, D.11427
	movl	-236(%rbp), %edx	# c_err, tmp945
	movl	-252(%rbp), %eax	# level, tmp946
	movl	%edx, %esi	# tmp945,
	movl	%eax, %edi	# tmp946,
	call	sign	#
	movl	%eax, (%rbx)	# D.11417, *_345
	.loc 1 2152 0
	movl	-248(%rbp), %eax	# scan_pos, tmp947
	cltq
	leaq	0(,%rax,4), %rdx	#, D.11419
	movq	-152(%rbp), %rax	# ACRun, tmp948
	addq	%rax, %rdx	# tmp948, D.11427
	movl	-244(%rbp), %eax	# run, tmp949
	movl	%eax, (%rdx)	# tmp949, *_349
	.loc 1 2153 0
	addl	$1, -248(%rbp)	#, scan_pos
	.loc 1 2154 0
	movl	$-1, -244(%rbp)	#, run
	.loc 1 2155 0
	movl	-236(%rbp), %edx	# c_err, tmp950
	movl	-252(%rbp), %eax	# level, tmp951
	movl	%edx, %esi	# tmp950,
	movl	%eax, %edi	# tmp951,
	call	sign	#
	movl	-264(%rbp), %edx	# j, tmp953
	movslq	%edx, %rdx	# tmp953, tmp952
	movl	-212(%rbp), %ecx	# qp_rem, tmp955
	movslq	%ecx, %rsi	# tmp955, tmp954
	movl	-268(%rbp), %ecx	# i, tmp957
	movslq	%ecx, %rcx	# tmp957, tmp956
	salq	$2, %rsi	#, tmp958
	addq	%rsi, %rcx	# tmp958, tmp959
	salq	$2, %rcx	#, tmp960
	addq	%rcx, %rdx	# tmp960, tmp961
	movl	dequant_coef(,%rdx,4), %edx	# dequant_coef, D.11417
	imull	%eax, %edx	# D.11417, D.11417
	movl	-264(%rbp), %eax	# j, tmp963
	cltq
	movl	-268(%rbp), %ecx	# i, tmp965
	movslq	%ecx, %rcx	# tmp965, tmp964
	salq	$2, %rcx	#, tmp966
	addq	%rcx, %rax	# tmp966, tmp967
	movl	A(,%rax,4), %eax	# A, D.11417
	imull	%eax, %edx	# D.11417, D.11417
	movl	-216(%rbp), %eax	# qp_per, tmp968
	movl	%eax, %ecx	# tmp968, tmp1157
	sall	%cl, %edx	# tmp1157, D.11417
	movl	%edx, %eax	# D.11417, D.11417
	sarl	$6, %eax	#, tmp969
	movl	%eax, -260(%rbp)	# tmp969, ilev
.L526:
	.loc 1 2157 0
	movl	-264(%rbp), %eax	# j, tmp971
	cltq
	movl	-268(%rbp), %edx	# i, tmp973
	movslq	%edx, %rdx	# tmp973, tmp972
	salq	$2, %rdx	#, tmp974
	addq	%rdx, %rax	# tmp974, tmp975
	movl	-80(%rbp,%rax,4), %eax	# predicted_block, D.11417
	addl	%eax, -260(%rbp)	# D.11417, ilev
	.loc 1 2158 0
	movq	img(%rip), %rbx	# img, img.466
	movl	-260(%rbp), %eax	# ilev, tmp977
	cltd
	movl	%edx, %eax	# tmp976, D.11417
	xorl	-260(%rbp), %eax	# ilev, D.11417
	subl	%edx, %eax	# tmp976, D.11417
	movl	-264(%rbp), %edx	# j, tmp979
	movslq	%edx, %rdx	# tmp979, tmp978
	movl	-200(%rbp), %ecx	# qp_rem_sp, tmp981
	movslq	%ecx, %rsi	# tmp981, tmp980
	movl	-268(%rbp), %ecx	# i, tmp983
	movslq	%ecx, %rcx	# tmp983, tmp982
	salq	$2, %rsi	#, tmp984
	addq	%rsi, %rcx	# tmp984, tmp985
	salq	$2, %rcx	#, tmp986
	addq	%rcx, %rdx	# tmp986, tmp987
	movl	quant_coef(,%rdx,4), %edx	# quant_coef, D.11417
	imull	%eax, %edx	# D.11417, D.11417
	movl	-188(%rbp), %eax	# qp_const2, tmp988
	addl	%eax, %edx	# tmp988, D.11417
	movl	-196(%rbp), %eax	# q_bits_sp, tmp989
	movl	%eax, %ecx	# tmp989, tmp1159
	sarl	%cl, %edx	# tmp1159, D.11417
	movl	-260(%rbp), %eax	# ilev, tmp990
	movl	%eax, %esi	# tmp990,
	movl	%edx, %edi	# D.11417,
	call	sign	#
	movl	-264(%rbp), %edx	# j, tmp992
	movslq	%edx, %rdx	# tmp992, tmp991
	movl	-200(%rbp), %ecx	# qp_rem_sp, tmp994
	movslq	%ecx, %rsi	# tmp994, tmp993
	movl	-268(%rbp), %ecx	# i, tmp996
	movslq	%ecx, %rcx	# tmp996, tmp995
	salq	$2, %rsi	#, tmp997
	addq	%rsi, %rcx	# tmp997, tmp998
	salq	$2, %rcx	#, tmp999
	addq	%rcx, %rdx	# tmp999, tmp1000
	movl	dequant_coef(,%rdx,4), %edx	# dequant_coef, D.11417
	imull	%eax, %edx	# D.11417, D.11417
	movl	-204(%rbp), %eax	# qp_per_sp, tmp1001
	movl	%eax, %ecx	# tmp1001, tmp1160
	sall	%cl, %edx	# tmp1160, D.11417
	movl	-264(%rbp), %eax	# j, tmp1003
	cltq
	movl	-268(%rbp), %ecx	# i, tmp1005
	movslq	%ecx, %rcx	# tmp1005, tmp1004
	salq	$4, %rcx	#, tmp1006
	addq	%rcx, %rax	# tmp1006, tmp1007
	addq	$3276, %rax	#, tmp1008
	movl	%edx, 8(%rbx,%rax,4)	# D.11417, img.466_361->m7
	.loc 1 2082 0
	addl	$1, -256(%rbp)	#, coeff_ctr
.L506:
	.loc 1 2082 0 is_stmt 0 discriminator 1
	cmpl	$15, -256(%rbp)	#, coeff_ctr
	jle	.L529	#,
	.loc 1 2160 0 is_stmt 1
	movl	-248(%rbp), %eax	# scan_pos, tmp1009
	cltq
	leaq	0(,%rax,4), %rdx	#, D.11419
	movq	-160(%rbp), %rax	# ACLevel, tmp1010
	addq	%rdx, %rax	# D.11419, D.11427
	movl	$0, (%rax)	#, *_374
	.loc 1 2166 0
	movl	$0, -264(%rbp)	#, j
	jmp	.L530	#
.L535:
	.loc 1 2168 0
	movl	$0, -268(%rbp)	#, i
	jmp	.L531	#
.L532:
	.loc 1 2170 0 discriminator 2
	movq	img(%rip), %rax	# img, img.467
	movl	-264(%rbp), %edx	# j, tmp1012
	movslq	%edx, %rdx	# tmp1012, tmp1011
	movl	-268(%rbp), %ecx	# i, tmp1014
	movslq	%ecx, %rcx	# tmp1014, tmp1013
	salq	$4, %rcx	#, tmp1015
	addq	%rcx, %rdx	# tmp1015, tmp1016
	addq	$3276, %rdx	#, tmp1017
	movl	8(%rax,%rdx,4), %edx	# img.467_377->m7, D.11417
	movl	-268(%rbp), %eax	# i, tmp1019
	cltq
	movl	%edx, -112(%rbp,%rax,4)	# D.11417, m5
	.loc 1 2168 0 discriminator 2
	addl	$1, -268(%rbp)	#, i
.L531:
	.loc 1 2168 0 is_stmt 0 discriminator 1
	cmpl	$3, -268(%rbp)	#, i
	jle	.L532	#,
	.loc 1 2172 0 is_stmt 1
	movl	-112(%rbp), %edx	# m5, D.11417
	movl	-104(%rbp), %eax	# m5, D.11417
	addl	%edx, %eax	# D.11417, D.11417
	movl	%eax, -96(%rbp)	# D.11417, m6
	.loc 1 2173 0
	movl	-112(%rbp), %edx	# m5, D.11417
	movl	-104(%rbp), %eax	# m5, D.11417
	subl	%eax, %edx	# D.11417, D.11417
	movl	%edx, %eax	# D.11417, D.11417
	movl	%eax, -92(%rbp)	# D.11417, m6
	.loc 1 2174 0
	movl	-108(%rbp), %eax	# m5, D.11417
	sarl	%eax	# D.11417
	movl	%eax, %edx	# D.11417, D.11417
	movl	-100(%rbp), %eax	# m5, D.11417
	subl	%eax, %edx	# D.11417, D.11417
	movl	%edx, %eax	# D.11417, D.11417
	movl	%eax, -88(%rbp)	# D.11417, m6
	.loc 1 2175 0
	movl	-108(%rbp), %eax	# m5, D.11417
	movl	-100(%rbp), %edx	# m5, D.11417
	sarl	%edx	# D.11417
	addl	%edx, %eax	# D.11417, D.11417
	movl	%eax, -84(%rbp)	# D.11417, m6
	.loc 1 2177 0
	movl	$0, -268(%rbp)	#, i
	jmp	.L533	#
.L534:
	.loc 1 2179 0 discriminator 2
	movl	$3, %eax	#, tmp1023
	subl	-268(%rbp), %eax	# i, tmp1022
	movl	%eax, -184(%rbp)	# tmp1022, i1
	.loc 1 2180 0 discriminator 2
	movq	img(%rip), %rax	# img, img.468
	movl	-268(%rbp), %edx	# i, tmp1025
	movslq	%edx, %rdx	# tmp1025, tmp1024
	movl	-96(%rbp,%rdx,4), %ecx	# m6, D.11417
	movl	-184(%rbp), %edx	# i1, tmp1027
	movslq	%edx, %rdx	# tmp1027, tmp1026
	movl	-96(%rbp,%rdx,4), %edx	# m6, D.11417
	addl	%edx, %ecx	# D.11417, D.11417
	movl	-264(%rbp), %edx	# j, tmp1029
	movslq	%edx, %rdx	# tmp1029, tmp1028
	movl	-268(%rbp), %esi	# i, tmp1031
	movslq	%esi, %rsi	# tmp1031, tmp1030
	salq	$4, %rsi	#, tmp1032
	addq	%rsi, %rdx	# tmp1032, tmp1033
	addq	$3276, %rdx	#, tmp1034
	movl	%ecx, 8(%rax,%rdx,4)	# D.11417, img.468_396->m7
	.loc 1 2181 0 discriminator 2
	movq	img(%rip), %rax	# img, img.469
	movl	-268(%rbp), %edx	# i, tmp1036
	movslq	%edx, %rdx	# tmp1036, tmp1035
	movl	-96(%rbp,%rdx,4), %ecx	# m6, D.11417
	movl	-184(%rbp), %edx	# i1, tmp1038
	movslq	%edx, %rdx	# tmp1038, tmp1037
	movl	-96(%rbp,%rdx,4), %edx	# m6, D.11417
	subl	%edx, %ecx	# D.11417, D.11417
	movl	-264(%rbp), %edx	# j, tmp1040
	movslq	%edx, %rdx	# tmp1040, tmp1039
	movl	-184(%rbp), %esi	# i1, tmp1042
	movslq	%esi, %rsi	# tmp1042, tmp1041
	salq	$4, %rsi	#, tmp1043
	addq	%rsi, %rdx	# tmp1043, tmp1044
	addq	$3276, %rdx	#, tmp1045
	movl	%ecx, 8(%rax,%rdx,4)	# D.11417, img.469_400->m7
	.loc 1 2177 0 discriminator 2
	addl	$1, -268(%rbp)	#, i
.L533:
	.loc 1 2177 0 is_stmt 0 discriminator 1
	cmpl	$1, -268(%rbp)	#, i
	jle	.L534	#,
	.loc 1 2166 0 is_stmt 1
	addl	$1, -264(%rbp)	#, j
.L530:
	.loc 1 2166 0 is_stmt 0 discriminator 1
	cmpl	$3, -264(%rbp)	#, j
	jle	.L535	#,
	.loc 1 2187 0 is_stmt 1
	movl	$0, -268(%rbp)	#, i
	jmp	.L536	#
.L541:
	.loc 1 2189 0
	movl	$0, -264(%rbp)	#, j
	jmp	.L537	#
.L538:
	.loc 1 2191 0 discriminator 2
	movq	img(%rip), %rax	# img, img.470
	movl	-264(%rbp), %edx	# j, tmp1047
	movslq	%edx, %rdx	# tmp1047, tmp1046
	movl	-268(%rbp), %ecx	# i, tmp1049
	movslq	%ecx, %rcx	# tmp1049, tmp1048
	salq	$4, %rcx	#, tmp1050
	addq	%rcx, %rdx	# tmp1050, tmp1051
	addq	$3276, %rdx	#, tmp1052
	movl	8(%rax,%rdx,4), %edx	# img.470_408->m7, D.11417
	movl	-264(%rbp), %eax	# j, tmp1054
	cltq
	movl	%edx, -112(%rbp,%rax,4)	# D.11417, m5
	.loc 1 2189 0 discriminator 2
	addl	$1, -264(%rbp)	#, j
.L537:
	.loc 1 2189 0 is_stmt 0 discriminator 1
	cmpl	$3, -264(%rbp)	#, j
	jle	.L538	#,
	.loc 1 2193 0 is_stmt 1
	movl	-112(%rbp), %edx	# m5, D.11417
	movl	-104(%rbp), %eax	# m5, D.11417
	addl	%edx, %eax	# D.11417, D.11417
	movl	%eax, -96(%rbp)	# D.11417, m6
	.loc 1 2194 0
	movl	-112(%rbp), %edx	# m5, D.11417
	movl	-104(%rbp), %eax	# m5, D.11417
	subl	%eax, %edx	# D.11417, D.11417
	movl	%edx, %eax	# D.11417, D.11417
	movl	%eax, -92(%rbp)	# D.11417, m6
	.loc 1 2195 0
	movl	-108(%rbp), %eax	# m5, D.11417
	sarl	%eax	# D.11417
	movl	%eax, %edx	# D.11417, D.11417
	movl	-100(%rbp), %eax	# m5, D.11417
	subl	%eax, %edx	# D.11417, D.11417
	movl	%edx, %eax	# D.11417, D.11417
	movl	%eax, -88(%rbp)	# D.11417, m6
	.loc 1 2196 0
	movl	-108(%rbp), %eax	# m5, D.11417
	movl	-100(%rbp), %edx	# m5, D.11417
	sarl	%edx	# D.11417
	addl	%edx, %eax	# D.11417, D.11417
	movl	%eax, -84(%rbp)	# D.11417, m6
	.loc 1 2198 0
	movl	$0, -264(%rbp)	#, j
	jmp	.L539	#
.L540:
	.loc 1 2200 0 discriminator 2
	movl	$3, %eax	#, tmp1058
	subl	-264(%rbp), %eax	# j, tmp1057
	movl	%eax, -180(%rbp)	# tmp1057, j1
	.loc 1 2201 0 discriminator 2
	movq	img(%rip), %rcx	# img, img.471
	movl	-264(%rbp), %eax	# j, tmp1060
	cltq
	movl	-96(%rbp,%rax,4), %edx	# m6, D.11417
	movl	-180(%rbp), %eax	# j1, tmp1062
	cltq
	movl	-96(%rbp,%rax,4), %eax	# m6, D.11417
	addl	%edx, %eax	# D.11417, D.11417
	addl	$32, %eax	#, D.11417
	sarl	$6, %eax	#, D.11417
	movl	$0, %edx	#, tmp1063
	testl	%eax, %eax	# D.11417
	cmovns	%eax, %edx	# D.11417,, D.11417
	movq	img(%rip), %rax	# img, img.472
	movl	72684(%rax), %eax	# img.472_434->max_imgpel_value, D.11417
	cmpl	%eax, %edx	# D.11417, D.11417
	cmovle	%edx, %eax	# D.11417,, D.11417
	movl	-264(%rbp), %edx	# j, tmp1065
	movslq	%edx, %rdx	# tmp1065, tmp1064
	movl	-268(%rbp), %esi	# i, tmp1067
	movslq	%esi, %rsi	# tmp1067, tmp1066
	salq	$4, %rsi	#, tmp1068
	addq	%rsi, %rdx	# tmp1068, tmp1069
	addq	$3276, %rdx	#, tmp1070
	movl	%eax, 8(%rcx,%rdx,4)	# D.11417, img.471_427->m7
	.loc 1 2202 0 discriminator 2
	movq	img(%rip), %rcx	# img, img.473
	movl	-264(%rbp), %eax	# j, tmp1072
	cltq
	movl	-96(%rbp,%rax,4), %edx	# m6, D.11417
	movl	-180(%rbp), %eax	# j1, tmp1074
	cltq
	movl	-96(%rbp,%rax,4), %eax	# m6, D.11417
	subl	%eax, %edx	# D.11417, D.11417
	movl	%edx, %eax	# D.11417, D.11417
	addl	$32, %eax	#, D.11417
	sarl	$6, %eax	#, D.11417
	movl	$0, %edx	#, tmp1075
	testl	%eax, %eax	# D.11417
	cmovns	%eax, %edx	# D.11417,, D.11417
	movq	img(%rip), %rax	# img, img.474
	movl	72684(%rax), %eax	# img.474_444->max_imgpel_value, D.11417
	cmpl	%eax, %edx	# D.11417, D.11417
	cmovle	%edx, %eax	# D.11417,, D.11417
	movl	-180(%rbp), %edx	# j1, tmp1077
	movslq	%edx, %rdx	# tmp1077, tmp1076
	movl	-268(%rbp), %esi	# i, tmp1079
	movslq	%esi, %rsi	# tmp1079, tmp1078
	salq	$4, %rsi	#, tmp1080
	addq	%rsi, %rdx	# tmp1080, tmp1081
	addq	$3276, %rdx	#, tmp1082
	movl	%eax, 8(%rcx,%rdx,4)	# D.11417, img.473_437->m7
	.loc 1 2198 0 discriminator 2
	addl	$1, -264(%rbp)	#, j
.L539:
	.loc 1 2198 0 is_stmt 0 discriminator 1
	cmpl	$1, -264(%rbp)	#, j
	jle	.L540	#,
	.loc 1 2187 0 is_stmt 1
	addl	$1, -268(%rbp)	#, i
.L536:
	.loc 1 2187 0 is_stmt 0 discriminator 1
	cmpl	$3, -268(%rbp)	#, i
	jle	.L541	#,
	.loc 1 2208 0 is_stmt 1
	movl	$0, -264(%rbp)	#, j
	jmp	.L542	#
.L545:
	.loc 1 2209 0
	movl	$0, -268(%rbp)	#, i
	jmp	.L543	#
.L544:
	.loc 1 2210 0 discriminator 2
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.475
	movq	6424(%rax), %rdx	# enc_picture.475_451->imgY, D.11428
	movq	img(%rip), %rax	# img, img.476
	movl	156(%rax), %ecx	# img.476_453->pix_y, D.11417
	movl	-296(%rbp), %eax	# block_y, tmp1083
	addl	%eax, %ecx	# tmp1083, D.11417
	movl	-264(%rbp), %eax	# j, tmp1084
	addl	%ecx, %eax	# D.11417, D.11417
	cltq
	salq	$3, %rax	#, D.11419
	addq	%rdx, %rax	# D.11428, D.11428
	movq	(%rax), %rdx	# *_459, D.11429
	movq	img(%rip), %rax	# img, img.477
	movl	152(%rax), %ecx	# img.477_461->pix_x, D.11417
	movl	-292(%rbp), %eax	# block_x, tmp1085
	addl	%eax, %ecx	# tmp1085, D.11417
	movl	-268(%rbp), %eax	# i, tmp1086
	addl	%ecx, %eax	# D.11417, D.11417
	cltq
	addq	%rax, %rax	# D.11419
	addq	%rax, %rdx	# D.11419, D.11429
	movq	img(%rip), %rax	# img, img.478
	movl	-264(%rbp), %ecx	# j, tmp1088
	movslq	%ecx, %rcx	# tmp1088, tmp1087
	movl	-268(%rbp), %esi	# i, tmp1090
	movslq	%esi, %rsi	# tmp1090, tmp1089
	salq	$4, %rsi	#, tmp1091
	addq	%rsi, %rcx	# tmp1091, tmp1092
	addq	$3276, %rcx	#, tmp1093
	movl	8(%rax,%rcx,4), %eax	# img.478_468->m7, D.11417
	movw	%ax, (%rdx)	# D.11424, *_467
	.loc 1 2209 0 discriminator 2
	addl	$1, -268(%rbp)	#, i
.L543:
	.loc 1 2209 0 is_stmt 0 discriminator 1
	cmpl	$3, -268(%rbp)	#, i
	jle	.L544	#,
	.loc 1 2208 0 is_stmt 1
	addl	$1, -264(%rbp)	#, j
.L542:
	.loc 1 2208 0 is_stmt 0 discriminator 1
	cmpl	$3, -264(%rbp)	#, j
	jle	.L545	#,
	.loc 1 2212 0 is_stmt 1
	movl	-240(%rbp), %eax	# nonzero, D.11417
	.loc 1 2213 0
	addq	$312, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	dct_luma_sp, .-dct_luma_sp
	.globl	dct_chroma_sp
	.type	dct_chroma_sp, @function
dct_chroma_sp:
.LFB10:
	.loc 1 2232 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	subq	$552, %rsp	#,
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movl	%edi, -564(%rbp)	# uv, uv
	movl	%esi, -568(%rbp)	# cr_cbp, cr_cbp
	.loc 1 2238 0
	movq	img(%rip), %rax	# img, img.479
	movq	14168(%rax), %rdx	# img.479_74->mb_data, D.11431
	movq	img(%rip), %rax	# img, img.480
	movl	12(%rax), %eax	# img.480_76->current_mb_nr, D.11432
	cltq
	imulq	$632, %rax, %rax	#, D.11433, D.11433
	addq	%rdx, %rax	# D.11431, tmp714
	movq	%rax, -416(%rbp)	# tmp714, currMB
	.loc 1 2244 0
	movq	img(%rip), %rax	# img, img.481
	movq	14144(%rax), %rax	# img.481_81->cofDC, D.11434
	movl	-564(%rbp), %edx	# uv, tmp715
	movslq	%edx, %rdx	# tmp715, D.11435
	addq	$1, %rdx	#, D.11435
	salq	$3, %rdx	#, D.11435
	addq	%rdx, %rax	# D.11435, D.11434
	movq	(%rax), %rax	# *_87, D.11436
	movq	(%rax), %rax	# *_88, tmp716
	movq	%rax, -408(%rbp)	# tmp716, DCLevel
	.loc 1 2245 0
	movq	img(%rip), %rax	# img, img.482
	movq	14144(%rax), %rax	# img.482_90->cofDC, D.11434
	movl	-564(%rbp), %edx	# uv, tmp717
	movslq	%edx, %rdx	# tmp717, D.11435
	addq	$1, %rdx	#, D.11435
	salq	$3, %rdx	#, D.11435
	addq	%rdx, %rax	# D.11435, D.11434
	movq	(%rax), %rax	# *_95, D.11436
	movq	8(%rax), %rax	# MEM[(int * *)_96 + 8B], tmp718
	movq	%rax, -400(%rbp)	# tmp718, DCRun
	.loc 1 2252 0
	movq	-416(%rbp), %rax	# currMB, tmp719
	movl	12(%rax), %eax	# currMB_80->qp, D.11432
	subl	$12, %eax	#, D.11432
	cvtsi2sd	%eax, %xmm0	# D.11432, D.11437
	movsd	.LC0(%rip), %xmm1	#, tmp720
	divsd	%xmm1, %xmm0	# tmp720, D.11437
	movabsq	$4611686018427387904, %rax	#, tmp721
	movapd	%xmm0, %xmm1	# D.11437,
	movq	%rax, -576(%rbp)	# tmp721, %sfp
	movsd	-576(%rbp), %xmm0	# %sfp,
	call	pow	#
	movsd	.LC2(%rip), %xmm1	#, tmp722
	mulsd	%xmm1, %xmm0	# tmp722, D.11437
	movsd	.LC3(%rip), %xmm1	#, tmp724
	mulsd	%xmm1, %xmm0	# tmp724, tmp723
	movsd	%xmm0, -392(%rbp)	# tmp723, lambda_mode
	.loc 1 2255 0
	movq	-416(%rbp), %rax	# currMB, tmp725
	movl	12(%rax), %edx	# currMB_80->qp, D.11432
	movq	active_pps(%rip), %rax	# active_pps, active_pps.484
	movl	208(%rax), %eax	# active_pps.484_106->chroma_qp_index_offset, D.11432
	addl	%edx, %eax	# D.11432, D.11432
	testl	%eax, %eax	# D.11432
	js	.L551	#,
	.loc 1 2255 0 is_stmt 0 discriminator 1
	movq	-416(%rbp), %rax	# currMB, tmp726
	movl	12(%rax), %edx	# currMB_80->qp, D.11432
	movq	active_pps(%rip), %rax	# active_pps, active_pps.485
	movl	208(%rax), %eax	# active_pps.485_110->chroma_qp_index_offset, D.11432
	addl	%edx, %eax	# D.11432, D.11432
	movl	$51, %edx	#, tmp727
	cmpl	$51, %eax	#, D.11432
	cmovg	%edx, %eax	# D.11432,, tmp727, iftmp.483
	jmp	.L552	#
.L551:
	.loc 1 2255 0 discriminator 2
	movl	$0, %eax	#, iftmp.483
.L552:
	.loc 1 2255 0 discriminator 3
	movl	%eax, -492(%rbp)	# iftmp.483, qpChroma
	.loc 1 2256 0 is_stmt 1 discriminator 3
	movq	-416(%rbp), %rax	# currMB, tmp728
	movl	16(%rax), %edx	# currMB_80->qpsp, D.11432
	movq	active_pps(%rip), %rax	# active_pps, active_pps.487
	movl	208(%rax), %eax	# active_pps.487_117->chroma_qp_index_offset, D.11432
	addl	%edx, %eax	# D.11432, D.11432
	testl	%eax, %eax	# D.11432
	js	.L553	#,
	.loc 1 2256 0 is_stmt 0 discriminator 1
	movq	-416(%rbp), %rax	# currMB, tmp729
	movl	16(%rax), %edx	# currMB_80->qpsp, D.11432
	movq	active_pps(%rip), %rax	# active_pps, active_pps.488
	movl	208(%rax), %eax	# active_pps.488_121->chroma_qp_index_offset, D.11432
	addl	%edx, %eax	# D.11432, D.11432
	movl	$51, %edx	#, tmp730
	cmpl	$51, %eax	#, D.11432
	cmovg	%edx, %eax	# D.11432,, tmp730, iftmp.486
	jmp	.L554	#
.L553:
	.loc 1 2256 0 discriminator 2
	movl	$0, %eax	#, iftmp.486
.L554:
	.loc 1 2256 0 discriminator 3
	movl	%eax, -488(%rbp)	# iftmp.486, qpChromaSP
	.loc 1 2258 0 is_stmt 1 discriminator 3
	cmpl	$0, -492(%rbp)	#, qpChroma
	js	.L555	#,
	.loc 1 2258 0 is_stmt 0 discriminator 1
	movl	-492(%rbp), %eax	# qpChroma, tmp732
	cltq
	movzbl	QP_SCALE_CR(%rax), %eax	# QP_SCALE_CR, D.11438
	movzbl	%al, %ecx	# D.11438, D.11432
	movl	$715827883, %edx	#, tmp734
	movl	%ecx, %eax	# D.11432, tmp1675
	imull	%edx	# tmp734
	movl	%ecx, %eax	# D.11432, tmp735
	sarl	$31, %eax	#, tmp735
	subl	%eax, %edx	# tmp735, iftmp.489
	movl	%edx, %eax	# iftmp.489, iftmp.489
	jmp	.L556	#
.L555:
	.loc 1 2258 0 discriminator 2
	movl	-492(%rbp), %ecx	# qpChroma, tmp736
	movl	$715827883, %edx	#, tmp738
	movl	%ecx, %eax	# tmp736, tmp1676
	imull	%edx	# tmp738
	movl	%ecx, %eax	# tmp736, tmp739
	sarl	$31, %eax	#, tmp739
	subl	%eax, %edx	# tmp739, iftmp.489
	movl	%edx, %eax	# iftmp.489, iftmp.489
.L556:
	.loc 1 2258 0 discriminator 3
	movl	%eax, -484(%rbp)	# iftmp.489, qp_per
	.loc 1 2259 0 is_stmt 1 discriminator 3
	cmpl	$0, -492(%rbp)	#, qpChroma
	js	.L557	#,
	.loc 1 2259 0 is_stmt 0 discriminator 1
	movl	-492(%rbp), %eax	# qpChroma, tmp741
	cltq
	movzbl	QP_SCALE_CR(%rax), %eax	# QP_SCALE_CR, D.11438
	movzbl	%al, %ecx	# D.11438, D.11432
	movl	$715827883, %edx	#, tmp743
	movl	%ecx, %eax	# D.11432, tmp1677
	imull	%edx	# tmp743
	movl	%ecx, %eax	# D.11432, tmp744
	sarl	$31, %eax	#, tmp744
	subl	%eax, %edx	# tmp744, iftmp.490
	movl	%edx, %eax	# iftmp.490, iftmp.490
	movl	%eax, %edx	# iftmp.490, tmp745
	addl	%edx, %edx	# tmp745
	addl	%eax, %edx	# iftmp.490, tmp745
	leal	(%rdx,%rdx), %eax	#, tmp746
	movl	%eax, %edx	# tmp746, tmp745
	movl	%ecx, %eax	# D.11432, iftmp.490
	subl	%edx, %eax	# tmp745, iftmp.490
	jmp	.L558	#
.L557:
	.loc 1 2259 0 discriminator 2
	movl	-492(%rbp), %ecx	# qpChroma, tmp747
	movl	$715827883, %edx	#, tmp749
	movl	%ecx, %eax	# tmp747, tmp1678
	imull	%edx	# tmp749
	movl	%ecx, %eax	# tmp747, tmp750
	sarl	$31, %eax	#, tmp750
	subl	%eax, %edx	# tmp750, iftmp.490
	movl	%edx, %eax	# iftmp.490, iftmp.490
	movl	%eax, %edx	# iftmp.490, tmp751
	addl	%edx, %edx	# tmp751
	addl	%eax, %edx	# iftmp.490, tmp751
	leal	(%rdx,%rdx), %eax	#, tmp752
	movl	%eax, %edx	# tmp752, tmp751
	movl	%ecx, %eax	# tmp747, iftmp.490
	subl	%edx, %eax	# tmp751, iftmp.490
.L558:
	.loc 1 2259 0 discriminator 3
	movl	%eax, -480(%rbp)	# iftmp.490, qp_rem
	.loc 1 2260 0 is_stmt 1 discriminator 3
	movl	-484(%rbp), %eax	# qp_per, tmp756
	addl	$15, %eax	#, tmp755
	movl	%eax, -476(%rbp)	# tmp755, q_bits
	.loc 1 2261 0 discriminator 3
	movl	-476(%rbp), %eax	# q_bits, tmp757
	movl	$1, %edx	#, tmp758
	movl	%eax, %ecx	# tmp757, tmp1700
	sall	%cl, %edx	# tmp1700, D.11432
	movl	%edx, %ecx	# D.11432, D.11432
	movl	$715827883, %edx	#, tmp760
	movl	%ecx, %eax	# D.11432, tmp1679
	imull	%edx	# tmp760
	movl	%ecx, %eax	# D.11432, tmp761
	sarl	$31, %eax	#, tmp761
	subl	%eax, %edx	# tmp761, tmp762
	movl	%edx, %eax	# tmp762, tmp762
	movl	%eax, -472(%rbp)	# tmp762, qp_const
	.loc 1 2262 0 discriminator 3
	cmpl	$0, -488(%rbp)	#, qpChromaSP
	jns	.L559	#,
	.loc 1 2262 0 is_stmt 0 discriminator 1
	movq	-416(%rbp), %rax	# currMB, tmp763
	movl	16(%rax), %ecx	# currMB_80->qpsp, D.11432
	movl	$715827883, %edx	#, tmp765
	movl	%ecx, %eax	# D.11432, tmp1680
	imull	%edx	# tmp765
	movl	%ecx, %eax	# D.11432, tmp766
	sarl	$31, %eax	#, tmp766
	subl	%eax, %edx	# tmp766, iftmp.491
	movl	%edx, %eax	# iftmp.491, iftmp.491
	jmp	.L560	#
.L559:
	.loc 1 2262 0 discriminator 2
	movl	-488(%rbp), %eax	# qpChromaSP, tmp768
	cltq
	movzbl	QP_SCALE_CR(%rax), %eax	# QP_SCALE_CR, D.11438
	movzbl	%al, %ecx	# D.11438, D.11432
	movl	$715827883, %edx	#, tmp770
	movl	%ecx, %eax	# D.11432, tmp1681
	imull	%edx	# tmp770
	movl	%ecx, %eax	# D.11432, tmp771
	sarl	$31, %eax	#, tmp771
	subl	%eax, %edx	# tmp771, iftmp.491
	movl	%edx, %eax	# iftmp.491, iftmp.491
.L560:
	.loc 1 2262 0 discriminator 3
	movl	%eax, -468(%rbp)	# iftmp.491, qp_per_sp
	.loc 1 2263 0 is_stmt 1 discriminator 3
	cmpl	$0, -488(%rbp)	#, qpChromaSP
	jns	.L561	#,
	.loc 1 2263 0 is_stmt 0 discriminator 1
	movq	-416(%rbp), %rax	# currMB, tmp772
	movl	16(%rax), %ecx	# currMB_80->qpsp, D.11432
	movl	$715827883, %edx	#, tmp774
	movl	%ecx, %eax	# D.11432, tmp1682
	imull	%edx	# tmp774
	movl	%ecx, %eax	# D.11432, tmp775
	sarl	$31, %eax	#, tmp775
	subl	%eax, %edx	# tmp775, iftmp.492
	movl	%edx, %eax	# iftmp.492, iftmp.492
	movl	%eax, %edx	# iftmp.492, tmp776
	addl	%edx, %edx	# tmp776
	addl	%eax, %edx	# iftmp.492, tmp776
	leal	(%rdx,%rdx), %eax	#, tmp777
	movl	%eax, %edx	# tmp777, tmp776
	movl	%ecx, %eax	# D.11432, iftmp.492
	subl	%edx, %eax	# tmp776, iftmp.492
	jmp	.L562	#
.L561:
	.loc 1 2263 0 discriminator 2
	movl	-488(%rbp), %eax	# qpChromaSP, tmp779
	cltq
	movzbl	QP_SCALE_CR(%rax), %eax	# QP_SCALE_CR, D.11438
	movzbl	%al, %ecx	# D.11438, D.11432
	movl	$715827883, %edx	#, tmp781
	movl	%ecx, %eax	# D.11432, tmp1683
	imull	%edx	# tmp781
	movl	%ecx, %eax	# D.11432, tmp782
	sarl	$31, %eax	#, tmp782
	subl	%eax, %edx	# tmp782, iftmp.492
	movl	%edx, %eax	# iftmp.492, iftmp.492
	movl	%eax, %edx	# iftmp.492, tmp783
	addl	%edx, %edx	# tmp783
	addl	%eax, %edx	# iftmp.492, tmp783
	leal	(%rdx,%rdx), %eax	#, tmp784
	movl	%eax, %edx	# tmp784, tmp783
	movl	%ecx, %eax	# D.11432, iftmp.492
	subl	%edx, %eax	# tmp783, iftmp.492
.L562:
	.loc 1 2263 0 discriminator 3
	movl	%eax, -464(%rbp)	# iftmp.492, qp_rem_sp
	.loc 1 2264 0 is_stmt 1 discriminator 3
	movl	-468(%rbp), %eax	# qp_per_sp, tmp788
	addl	$15, %eax	#, tmp787
	movl	%eax, -460(%rbp)	# tmp787, q_bits_sp
	.loc 1 2265 0 discriminator 3
	movl	-460(%rbp), %eax	# q_bits_sp, tmp789
	movl	$1, %edx	#, tmp790
	movl	%eax, %ecx	# tmp789, tmp1719
	sall	%cl, %edx	# tmp1719, D.11432
	movl	%edx, %eax	# D.11432, D.11432
	movl	%eax, %edx	# D.11432, tmp791
	shrl	$31, %edx	#, tmp791
	addl	%edx, %eax	# tmp791, tmp792
	sarl	%eax	# tmp793
	movl	%eax, -456(%rbp)	# tmp793, qp_const2
	.loc 1 2268 0 discriminator 3
	movl	$0, -536(%rbp)	#, j
	jmp	.L563	#
.L566:
	.loc 1 2269 0
	movl	$0, -540(%rbp)	#, i
	jmp	.L564	#
.L565:
	.loc 1 2271 0 discriminator 2
	movq	img(%rip), %rax	# img, img.493
	movq	img(%rip), %rdx	# img, img.494
	movl	-536(%rbp), %ecx	# j, tmp795
	movslq	%ecx, %rcx	# tmp795, tmp794
	movl	-540(%rbp), %esi	# i, tmp797
	movslq	%esi, %rsi	# tmp797, tmp796
	salq	$4, %rsi	#, tmp798
	addq	%rsi, %rcx	# tmp798, tmp799
	addq	$3276, %rcx	#, tmp800
	movl	8(%rdx,%rcx,4), %ecx	# img.494_158->m7, D.11432
	movq	img(%rip), %rdx	# img, img.495
	movl	-536(%rbp), %esi	# j, tmp802
	movslq	%esi, %rsi	# tmp802, tmp801
	movl	-540(%rbp), %edi	# i, tmp804
	movslq	%edi, %rdi	# tmp804, tmp803
	salq	$4, %rdi	#, tmp805
	addq	%rdi, %rsi	# tmp805, tmp806
	addq	$6296, %rsi	#, tmp807
	movzwl	8(%rdx,%rsi,2), %edx	# img.495_160->mpr, D.11439
	movzwl	%dx, %edx	# D.11439, D.11432
	addl	%edx, %ecx	# D.11432, D.11432
	movl	-536(%rbp), %edx	# j, tmp809
	movslq	%edx, %rdx	# tmp809, tmp808
	movl	-540(%rbp), %esi	# i, tmp811
	movslq	%esi, %rsi	# tmp811, tmp810
	salq	$4, %rsi	#, tmp812
	addq	%rsi, %rdx	# tmp812, tmp813
	addq	$3276, %rdx	#, tmp814
	movl	%ecx, 8(%rax,%rdx,4)	# D.11432, img.493_157->m7
	.loc 1 2272 0 discriminator 2
	movq	img(%rip), %rax	# img, img.496
	movl	-536(%rbp), %edx	# j, tmp816
	movslq	%edx, %rdx	# tmp816, tmp815
	movl	-540(%rbp), %ecx	# i, tmp818
	movslq	%ecx, %rcx	# tmp818, tmp817
	salq	$4, %rcx	#, tmp819
	addq	%rcx, %rdx	# tmp819, tmp820
	addq	$6296, %rdx	#, tmp821
	movzwl	8(%rax,%rdx,2), %eax	# img.496_164->mpr, D.11439
	movzwl	%ax, %eax	# D.11439, D.11432
	movl	-536(%rbp), %edx	# j, tmp823
	movslq	%edx, %rdx	# tmp823, tmp822
	movl	-540(%rbp), %ecx	# i, tmp825
	movslq	%ecx, %rcx	# tmp825, tmp824
	salq	$3, %rcx	#, tmp826
	addq	%rcx, %rdx	# tmp826, tmp827
	movl	%eax, -288(%rbp,%rdx,4)	# D.11432, predicted_chroma_block
	.loc 1 2269 0 discriminator 2
	addl	$1, -540(%rbp)	#, i
.L564:
	.loc 1 2269 0 is_stmt 0 discriminator 1
	cmpl	$7, -540(%rbp)	#, i
	jle	.L565	#,
	.loc 1 2268 0 is_stmt 1
	addl	$1, -536(%rbp)	#, j
.L563:
	.loc 1 2268 0 is_stmt 0 discriminator 1
	cmpl	$7, -536(%rbp)	#, j
	jle	.L566	#,
	.loc 1 2275 0 is_stmt 1
	movl	$0, -528(%rbp)	#, n2
	jmp	.L567	#
.L578:
	.loc 1 2277 0
	movl	$0, -524(%rbp)	#, n1
	jmp	.L568	#
.L577:
	.loc 1 2281 0
	movl	$0, -536(%rbp)	#, j
	jmp	.L569	#
.L572:
	.loc 1 2283 0
	movl	-536(%rbp), %eax	# j, tmp832
	movl	-528(%rbp), %edx	# n2, tmp833
	addl	%edx, %eax	# tmp833, tmp831
	movl	%eax, -452(%rbp)	# tmp831, mb_y
	.loc 1 2284 0
	movl	$0, -540(%rbp)	#, i
	jmp	.L570	#
.L571:
	.loc 1 2286 0 discriminator 2
	movl	$3, %eax	#, tmp837
	subl	-540(%rbp), %eax	# i, tmp836
	movl	%eax, -448(%rbp)	# tmp836, i1
	.loc 1 2287 0 discriminator 2
	movq	img(%rip), %rax	# img, img.497
	movl	-524(%rbp), %edx	# n1, tmp838
	movl	-540(%rbp), %ecx	# i, tmp839
	addl	%edx, %ecx	# tmp838, D.11432
	movl	-452(%rbp), %edx	# mb_y, tmp841
	movslq	%edx, %rdx	# tmp841, tmp840
	movslq	%ecx, %rcx	# D.11432, tmp842
	salq	$4, %rcx	#, tmp843
	addq	%rcx, %rdx	# tmp843, tmp844
	addq	$3276, %rdx	#, tmp845
	movl	8(%rax,%rdx,4), %edx	# img.497_175->m7, D.11432
	movq	img(%rip), %rax	# img, img.498
	movl	-524(%rbp), %ecx	# n1, tmp846
	movl	-448(%rbp), %esi	# i1, tmp847
	addl	%ecx, %esi	# tmp846, D.11432
	movl	-452(%rbp), %ecx	# mb_y, tmp849
	movslq	%ecx, %rcx	# tmp849, tmp848
	movslq	%esi, %rsi	# D.11432, tmp850
	salq	$4, %rsi	#, tmp851
	addq	%rsi, %rcx	# tmp851, tmp852
	addq	$3276, %rcx	#, tmp853
	movl	8(%rax,%rcx,4), %eax	# img.498_178->m7, D.11432
	addl	%eax, %edx	# D.11432, D.11432
	movl	-540(%rbp), %eax	# i, tmp855
	cltq
	movl	%edx, -336(%rbp,%rax,4)	# D.11432, m5
	.loc 1 2288 0 discriminator 2
	movq	img(%rip), %rax	# img, img.499
	movl	-524(%rbp), %edx	# n1, tmp856
	movl	-540(%rbp), %ecx	# i, tmp857
	addl	%edx, %ecx	# tmp856, D.11432
	movl	-452(%rbp), %edx	# mb_y, tmp859
	movslq	%edx, %rdx	# tmp859, tmp858
	movslq	%ecx, %rcx	# D.11432, tmp860
	salq	$4, %rcx	#, tmp861
	addq	%rcx, %rdx	# tmp861, tmp862
	addq	$3276, %rdx	#, tmp863
	movl	8(%rax,%rdx,4), %edx	# img.499_182->m7, D.11432
	movq	img(%rip), %rax	# img, img.500
	movl	-524(%rbp), %ecx	# n1, tmp864
	movl	-448(%rbp), %esi	# i1, tmp865
	addl	%ecx, %esi	# tmp864, D.11432
	movl	-452(%rbp), %ecx	# mb_y, tmp867
	movslq	%ecx, %rcx	# tmp867, tmp866
	movslq	%esi, %rsi	# D.11432, tmp868
	salq	$4, %rsi	#, tmp869
	addq	%rsi, %rcx	# tmp869, tmp870
	addq	$3276, %rcx	#, tmp871
	movl	8(%rax,%rcx,4), %eax	# img.500_185->m7, D.11432
	subl	%eax, %edx	# D.11432, D.11432
	movl	-448(%rbp), %eax	# i1, tmp873
	cltq
	movl	%edx, -336(%rbp,%rax,4)	# D.11432, m5
	.loc 1 2284 0 discriminator 2
	addl	$1, -540(%rbp)	#, i
.L570:
	.loc 1 2284 0 is_stmt 0 discriminator 1
	cmpl	$1, -540(%rbp)	#, i
	jle	.L571	#,
	.loc 1 2290 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.501
	movl	-336(%rbp), %ecx	# m5, D.11432
	movl	-332(%rbp), %edx	# m5, D.11432
	addl	%edx, %ecx	# D.11432, D.11432
	movl	-452(%rbp), %edx	# mb_y, tmp875
	movslq	%edx, %rdx	# tmp875, tmp874
	movl	-524(%rbp), %esi	# n1, tmp877
	movslq	%esi, %rsi	# tmp877, tmp876
	salq	$4, %rsi	#, tmp878
	addq	%rsi, %rdx	# tmp878, tmp879
	addq	$3276, %rdx	#, tmp880
	movl	%ecx, 8(%rax,%rdx,4)	# D.11432, img.501_190->m7
	.loc 1 2291 0
	movq	img(%rip), %rax	# img, img.502
	movl	-524(%rbp), %edx	# n1, tmp881
	leal	2(%rdx), %esi	#, D.11432
	movl	-336(%rbp), %ecx	# m5, D.11432
	movl	-332(%rbp), %edx	# m5, D.11432
	subl	%edx, %ecx	# D.11432, D.11432
	movl	-452(%rbp), %edx	# mb_y, tmp883
	movslq	%edx, %rdx	# tmp883, tmp882
	movslq	%esi, %rsi	# D.11432, tmp884
	salq	$4, %rsi	#, tmp885
	addq	%rsi, %rdx	# tmp885, tmp886
	addq	$3276, %rdx	#, tmp887
	movl	%ecx, 8(%rax,%rdx,4)	# D.11432, img.502_194->m7
	.loc 1 2292 0
	movq	img(%rip), %rax	# img, img.503
	movl	-524(%rbp), %edx	# n1, tmp888
	leal	1(%rdx), %esi	#, D.11432
	movl	-324(%rbp), %edx	# m5, D.11432
	leal	(%rdx,%rdx), %ecx	#, D.11432
	movl	-328(%rbp), %edx	# m5, D.11432
	addl	%edx, %ecx	# D.11432, D.11432
	movl	-452(%rbp), %edx	# mb_y, tmp890
	movslq	%edx, %rdx	# tmp890, tmp889
	movslq	%esi, %rsi	# D.11432, tmp891
	salq	$4, %rsi	#, tmp892
	addq	%rsi, %rdx	# tmp892, tmp893
	addq	$3276, %rdx	#, tmp894
	movl	%ecx, 8(%rax,%rdx,4)	# D.11432, img.503_199->m7
	.loc 1 2293 0
	movq	img(%rip), %rdx	# img, img.504
	movl	-524(%rbp), %eax	# n1, tmp895
	leal	3(%rax), %edi	#, D.11432
	movl	-324(%rbp), %ecx	# m5, D.11432
	movl	-328(%rbp), %esi	# m5, D.11432
	movl	$0, %eax	#, tmp896
	subl	%esi, %eax	# D.11432, tmp896
	addl	%eax, %eax	# tmp897
	addl	%eax, %ecx	# D.11432, D.11432
	movl	-452(%rbp), %eax	# mb_y, tmp899
	cltq
	movslq	%edi, %rsi	# D.11432, tmp900
	salq	$4, %rsi	#, tmp901
	addq	%rsi, %rax	# tmp901, tmp902
	addq	$3276, %rax	#, tmp903
	movl	%ecx, 8(%rdx,%rax,4)	# D.11432, img.504_205->m7
	.loc 1 2281 0
	addl	$1, -536(%rbp)	#, j
.L569:
	.loc 1 2281 0 is_stmt 0 discriminator 1
	cmpl	$3, -536(%rbp)	#, j
	jle	.L572	#,
	.loc 1 2298 0 is_stmt 1
	movl	$0, -540(%rbp)	#, i
	jmp	.L573	#
.L576:
	.loc 1 2300 0
	movl	-540(%rbp), %eax	# i, tmp908
	movl	-524(%rbp), %edx	# n1, tmp909
	addl	%edx, %eax	# tmp909, tmp907
	movl	%eax, -444(%rbp)	# tmp907, j1
	.loc 1 2301 0
	movl	$0, -536(%rbp)	#, j
	jmp	.L574	#
.L575:
	.loc 1 2303 0 discriminator 2
	movl	$3, %eax	#, tmp913
	subl	-536(%rbp), %eax	# j, tmp912
	movl	%eax, -440(%rbp)	# tmp912, j2
	.loc 1 2304 0 discriminator 2
	movq	img(%rip), %rax	# img, img.505
	movl	-536(%rbp), %edx	# j, tmp914
	movl	-528(%rbp), %ecx	# n2, tmp915
	addl	%ecx, %edx	# tmp915, D.11432
	movslq	%edx, %rdx	# D.11432, tmp916
	movl	-444(%rbp), %ecx	# j1, tmp918
	movslq	%ecx, %rcx	# tmp918, tmp917
	salq	$4, %rcx	#, tmp919
	addq	%rcx, %rdx	# tmp919, tmp920
	addq	$3276, %rdx	#, tmp921
	movl	8(%rax,%rdx,4), %edx	# img.505_216->m7, D.11432
	movq	img(%rip), %rax	# img, img.506
	movl	-440(%rbp), %ecx	# j2, tmp922
	movl	-528(%rbp), %esi	# n2, tmp923
	addl	%esi, %ecx	# tmp923, D.11432
	movslq	%ecx, %rcx	# D.11432, tmp924
	movl	-444(%rbp), %esi	# j1, tmp926
	movslq	%esi, %rsi	# tmp926, tmp925
	salq	$4, %rsi	#, tmp927
	addq	%rsi, %rcx	# tmp927, tmp928
	addq	$3276, %rcx	#, tmp929
	movl	8(%rax,%rcx,4), %eax	# img.506_219->m7, D.11432
	addl	%eax, %edx	# D.11432, D.11432
	movl	-536(%rbp), %eax	# j, tmp931
	cltq
	movl	%edx, -336(%rbp,%rax,4)	# D.11432, m5
	.loc 1 2305 0 discriminator 2
	movq	img(%rip), %rax	# img, img.507
	movl	-536(%rbp), %edx	# j, tmp932
	movl	-528(%rbp), %ecx	# n2, tmp933
	addl	%ecx, %edx	# tmp933, D.11432
	movslq	%edx, %rdx	# D.11432, tmp934
	movl	-444(%rbp), %ecx	# j1, tmp936
	movslq	%ecx, %rcx	# tmp936, tmp935
	salq	$4, %rcx	#, tmp937
	addq	%rcx, %rdx	# tmp937, tmp938
	addq	$3276, %rdx	#, tmp939
	movl	8(%rax,%rdx,4), %edx	# img.507_223->m7, D.11432
	movq	img(%rip), %rax	# img, img.508
	movl	-440(%rbp), %ecx	# j2, tmp940
	movl	-528(%rbp), %esi	# n2, tmp941
	addl	%esi, %ecx	# tmp941, D.11432
	movslq	%ecx, %rcx	# D.11432, tmp942
	movl	-444(%rbp), %esi	# j1, tmp944
	movslq	%esi, %rsi	# tmp944, tmp943
	salq	$4, %rsi	#, tmp945
	addq	%rsi, %rcx	# tmp945, tmp946
	addq	$3276, %rcx	#, tmp947
	movl	8(%rax,%rcx,4), %eax	# img.508_226->m7, D.11432
	subl	%eax, %edx	# D.11432, D.11432
	movl	-440(%rbp), %eax	# j2, tmp949
	cltq
	movl	%edx, -336(%rbp,%rax,4)	# D.11432, m5
	.loc 1 2301 0 discriminator 2
	addl	$1, -536(%rbp)	#, j
.L574:
	.loc 1 2301 0 is_stmt 0 discriminator 1
	cmpl	$1, -536(%rbp)	#, j
	jle	.L575	#,
	.loc 1 2307 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.509
	movl	-336(%rbp), %ecx	# m5, D.11432
	movl	-332(%rbp), %edx	# m5, D.11432
	addl	%edx, %ecx	# D.11432, D.11432
	movl	-528(%rbp), %edx	# n2, tmp951
	movslq	%edx, %rdx	# tmp951, tmp950
	movl	-444(%rbp), %esi	# j1, tmp953
	movslq	%esi, %rsi	# tmp953, tmp952
	salq	$4, %rsi	#, tmp954
	addq	%rsi, %rdx	# tmp954, tmp955
	addq	$3276, %rdx	#, tmp956
	movl	%ecx, 8(%rax,%rdx,4)	# D.11432, img.509_231->m7
	.loc 1 2308 0
	movq	img(%rip), %rax	# img, img.510
	movl	-528(%rbp), %edx	# n2, tmp957
	leal	2(%rdx), %esi	#, D.11432
	movl	-336(%rbp), %ecx	# m5, D.11432
	movl	-332(%rbp), %edx	# m5, D.11432
	subl	%edx, %ecx	# D.11432, D.11432
	movslq	%esi, %rdx	# D.11432, tmp958
	movl	-444(%rbp), %esi	# j1, tmp960
	movslq	%esi, %rsi	# tmp960, tmp959
	salq	$4, %rsi	#, tmp961
	addq	%rsi, %rdx	# tmp961, tmp962
	addq	$3276, %rdx	#, tmp963
	movl	%ecx, 8(%rax,%rdx,4)	# D.11432, img.510_235->m7
	.loc 1 2309 0
	movq	img(%rip), %rax	# img, img.511
	movl	-528(%rbp), %edx	# n2, tmp964
	leal	1(%rdx), %esi	#, D.11432
	movl	-324(%rbp), %edx	# m5, D.11432
	leal	(%rdx,%rdx), %ecx	#, D.11432
	movl	-328(%rbp), %edx	# m5, D.11432
	addl	%edx, %ecx	# D.11432, D.11432
	movslq	%esi, %rdx	# D.11432, tmp965
	movl	-444(%rbp), %esi	# j1, tmp967
	movslq	%esi, %rsi	# tmp967, tmp966
	salq	$4, %rsi	#, tmp968
	addq	%rsi, %rdx	# tmp968, tmp969
	addq	$3276, %rdx	#, tmp970
	movl	%ecx, 8(%rax,%rdx,4)	# D.11432, img.511_240->m7
	.loc 1 2310 0
	movq	img(%rip), %rdx	# img, img.512
	movl	-528(%rbp), %eax	# n2, tmp971
	leal	3(%rax), %edi	#, D.11432
	movl	-324(%rbp), %ecx	# m5, D.11432
	movl	-328(%rbp), %esi	# m5, D.11432
	movl	$0, %eax	#, tmp972
	subl	%esi, %eax	# D.11432, tmp972
	addl	%eax, %eax	# tmp973
	addl	%eax, %ecx	# D.11432, D.11432
	movslq	%edi, %rax	# D.11432, tmp974
	movl	-444(%rbp), %esi	# j1, tmp976
	movslq	%esi, %rsi	# tmp976, tmp975
	salq	$4, %rsi	#, tmp977
	addq	%rsi, %rax	# tmp977, tmp978
	addq	$3276, %rax	#, tmp979
	movl	%ecx, 8(%rdx,%rax,4)	# D.11432, img.512_246->m7
	.loc 1 2298 0
	addl	$1, -540(%rbp)	#, i
.L573:
	.loc 1 2298 0 is_stmt 0 discriminator 1
	cmpl	$3, -540(%rbp)	#, i
	jle	.L576	#,
	.loc 1 2277 0 is_stmt 1
	addl	$4, -524(%rbp)	#, n1
.L568:
	.loc 1 2277 0 is_stmt 0 discriminator 1
	cmpl	$4, -524(%rbp)	#, n1
	jle	.L577	#,
	.loc 1 2275 0 is_stmt 1
	addl	$4, -528(%rbp)	#, n2
.L567:
	.loc 1 2275 0 is_stmt 0 discriminator 1
	cmpl	$4, -528(%rbp)	#, n2
	jle	.L578	#,
	.loc 1 2314 0 is_stmt 1
	movl	$0, -528(%rbp)	#, n2
	jmp	.L579	#
.L590:
	.loc 1 2316 0
	movl	$0, -524(%rbp)	#, n1
	jmp	.L580	#
.L589:
	.loc 1 2320 0
	movl	$0, -536(%rbp)	#, j
	jmp	.L581	#
.L584:
	.loc 1 2322 0
	movl	-536(%rbp), %eax	# j, tmp984
	movl	-528(%rbp), %edx	# n2, tmp985
	addl	%edx, %eax	# tmp985, tmp983
	movl	%eax, -452(%rbp)	# tmp983, mb_y
	.loc 1 2323 0
	movl	$0, -540(%rbp)	#, i
	jmp	.L582	#
.L583:
	.loc 1 2325 0 discriminator 2
	movl	$3, %eax	#, tmp989
	subl	-540(%rbp), %eax	# i, tmp988
	movl	%eax, -448(%rbp)	# tmp988, i1
	.loc 1 2326 0 discriminator 2
	movl	-524(%rbp), %eax	# n1, tmp990
	movl	-540(%rbp), %edx	# i, tmp991
	addl	%eax, %edx	# tmp990, D.11432
	movl	-452(%rbp), %eax	# mb_y, tmp993
	cltq
	movslq	%edx, %rdx	# D.11432, tmp994
	salq	$3, %rdx	#, tmp995
	addq	%rdx, %rax	# tmp995, tmp996
	movl	-288(%rbp,%rax,4), %edx	# predicted_chroma_block, D.11432
	movl	-524(%rbp), %eax	# n1, tmp997
	movl	-448(%rbp), %ecx	# i1, tmp998
	addl	%eax, %ecx	# tmp997, D.11432
	movl	-452(%rbp), %eax	# mb_y, tmp1000
	cltq
	movslq	%ecx, %rcx	# D.11432, tmp1001
	salq	$3, %rcx	#, tmp1002
	addq	%rcx, %rax	# tmp1002, tmp1003
	movl	-288(%rbp,%rax,4), %eax	# predicted_chroma_block, D.11432
	addl	%eax, %edx	# D.11432, D.11432
	movl	-540(%rbp), %eax	# i, tmp1005
	cltq
	movl	%edx, -336(%rbp,%rax,4)	# D.11432, m5
	.loc 1 2327 0 discriminator 2
	movl	-524(%rbp), %eax	# n1, tmp1006
	movl	-540(%rbp), %edx	# i, tmp1007
	addl	%eax, %edx	# tmp1006, D.11432
	movl	-452(%rbp), %eax	# mb_y, tmp1009
	cltq
	movslq	%edx, %rdx	# D.11432, tmp1010
	salq	$3, %rdx	#, tmp1011
	addq	%rdx, %rax	# tmp1011, tmp1012
	movl	-288(%rbp,%rax,4), %edx	# predicted_chroma_block, D.11432
	movl	-524(%rbp), %eax	# n1, tmp1013
	movl	-448(%rbp), %ecx	# i1, tmp1014
	addl	%eax, %ecx	# tmp1013, D.11432
	movl	-452(%rbp), %eax	# mb_y, tmp1016
	cltq
	movslq	%ecx, %rcx	# D.11432, tmp1017
	salq	$3, %rcx	#, tmp1018
	addq	%rcx, %rax	# tmp1018, tmp1019
	movl	-288(%rbp,%rax,4), %eax	# predicted_chroma_block, D.11432
	subl	%eax, %edx	# D.11432, D.11432
	movl	-448(%rbp), %eax	# i1, tmp1021
	cltq
	movl	%edx, -336(%rbp,%rax,4)	# D.11432, m5
	.loc 1 2323 0 discriminator 2
	addl	$1, -540(%rbp)	#, i
.L582:
	.loc 1 2323 0 is_stmt 0 discriminator 1
	cmpl	$1, -540(%rbp)	#, i
	jle	.L583	#,
	.loc 1 2329 0 is_stmt 1
	movl	-336(%rbp), %edx	# m5, D.11432
	movl	-332(%rbp), %eax	# m5, D.11432
	addl	%eax, %edx	# D.11432, D.11432
	movl	-452(%rbp), %eax	# mb_y, tmp1023
	cltq
	movl	-524(%rbp), %ecx	# n1, tmp1025
	movslq	%ecx, %rcx	# tmp1025, tmp1024
	salq	$3, %rcx	#, tmp1026
	addq	%rcx, %rax	# tmp1026, tmp1027
	movl	%edx, -288(%rbp,%rax,4)	# D.11432, predicted_chroma_block
	.loc 1 2330 0
	movl	-524(%rbp), %eax	# n1, tmp1028
	leal	2(%rax), %ecx	#, D.11432
	movl	-336(%rbp), %edx	# m5, D.11432
	movl	-332(%rbp), %eax	# m5, D.11432
	subl	%eax, %edx	# D.11432, D.11432
	movl	-452(%rbp), %eax	# mb_y, tmp1030
	cltq
	movslq	%ecx, %rcx	# D.11432, tmp1031
	salq	$3, %rcx	#, tmp1032
	addq	%rcx, %rax	# tmp1032, tmp1033
	movl	%edx, -288(%rbp,%rax,4)	# D.11432, predicted_chroma_block
	.loc 1 2331 0
	movl	-524(%rbp), %eax	# n1, tmp1034
	leal	1(%rax), %ecx	#, D.11432
	movl	-324(%rbp), %eax	# m5, D.11432
	leal	(%rax,%rax), %edx	#, D.11432
	movl	-328(%rbp), %eax	# m5, D.11432
	addl	%eax, %edx	# D.11432, D.11432
	movl	-452(%rbp), %eax	# mb_y, tmp1036
	cltq
	movslq	%ecx, %rcx	# D.11432, tmp1037
	salq	$3, %rcx	#, tmp1038
	addq	%rcx, %rax	# tmp1038, tmp1039
	movl	%edx, -288(%rbp,%rax,4)	# D.11432, predicted_chroma_block
	.loc 1 2332 0
	movl	-524(%rbp), %eax	# n1, tmp1040
	leal	3(%rax), %esi	#, D.11432
	movl	-324(%rbp), %edx	# m5, D.11432
	movl	-328(%rbp), %ecx	# m5, D.11432
	movl	$0, %eax	#, tmp1041
	subl	%ecx, %eax	# D.11432, tmp1041
	addl	%eax, %eax	# tmp1042
	addl	%eax, %edx	# D.11432, D.11432
	movl	-452(%rbp), %eax	# mb_y, tmp1044
	cltq
	movslq	%esi, %rcx	# D.11432, tmp1045
	salq	$3, %rcx	#, tmp1046
	addq	%rcx, %rax	# tmp1046, tmp1047
	movl	%edx, -288(%rbp,%rax,4)	# D.11432, predicted_chroma_block
	.loc 1 2320 0
	addl	$1, -536(%rbp)	#, j
.L581:
	.loc 1 2320 0 is_stmt 0 discriminator 1
	cmpl	$3, -536(%rbp)	#, j
	jle	.L584	#,
	.loc 1 2337 0 is_stmt 1
	movl	$0, -540(%rbp)	#, i
	jmp	.L585	#
.L588:
	.loc 1 2339 0
	movl	-540(%rbp), %eax	# i, tmp1052
	movl	-524(%rbp), %edx	# n1, tmp1053
	addl	%edx, %eax	# tmp1053, tmp1051
	movl	%eax, -444(%rbp)	# tmp1051, j1
	.loc 1 2340 0
	movl	$0, -536(%rbp)	#, j
	jmp	.L586	#
.L587:
	.loc 1 2342 0 discriminator 2
	movl	$3, %eax	#, tmp1057
	subl	-536(%rbp), %eax	# j, tmp1056
	movl	%eax, -440(%rbp)	# tmp1056, j2
	.loc 1 2343 0 discriminator 2
	movl	-536(%rbp), %eax	# j, tmp1058
	movl	-528(%rbp), %edx	# n2, tmp1059
	addl	%edx, %eax	# tmp1059, D.11432
	cltq
	movl	-444(%rbp), %edx	# j1, tmp1062
	movslq	%edx, %rdx	# tmp1062, tmp1061
	salq	$3, %rdx	#, tmp1063
	addq	%rdx, %rax	# tmp1063, tmp1064
	movl	-288(%rbp,%rax,4), %edx	# predicted_chroma_block, D.11432
	movl	-440(%rbp), %eax	# j2, tmp1065
	movl	-528(%rbp), %ecx	# n2, tmp1066
	addl	%ecx, %eax	# tmp1066, D.11432
	cltq
	movl	-444(%rbp), %ecx	# j1, tmp1069
	movslq	%ecx, %rcx	# tmp1069, tmp1068
	salq	$3, %rcx	#, tmp1070
	addq	%rcx, %rax	# tmp1070, tmp1071
	movl	-288(%rbp,%rax,4), %eax	# predicted_chroma_block, D.11432
	addl	%eax, %edx	# D.11432, D.11432
	movl	-536(%rbp), %eax	# j, tmp1073
	cltq
	movl	%edx, -336(%rbp,%rax,4)	# D.11432, m5
	.loc 1 2344 0 discriminator 2
	movl	-536(%rbp), %eax	# j, tmp1074
	movl	-528(%rbp), %edx	# n2, tmp1075
	addl	%edx, %eax	# tmp1075, D.11432
	cltq
	movl	-444(%rbp), %edx	# j1, tmp1078
	movslq	%edx, %rdx	# tmp1078, tmp1077
	salq	$3, %rdx	#, tmp1079
	addq	%rdx, %rax	# tmp1079, tmp1080
	movl	-288(%rbp,%rax,4), %edx	# predicted_chroma_block, D.11432
	movl	-440(%rbp), %eax	# j2, tmp1081
	movl	-528(%rbp), %ecx	# n2, tmp1082
	addl	%ecx, %eax	# tmp1082, D.11432
	cltq
	movl	-444(%rbp), %ecx	# j1, tmp1085
	movslq	%ecx, %rcx	# tmp1085, tmp1084
	salq	$3, %rcx	#, tmp1086
	addq	%rcx, %rax	# tmp1086, tmp1087
	movl	-288(%rbp,%rax,4), %eax	# predicted_chroma_block, D.11432
	subl	%eax, %edx	# D.11432, D.11432
	movl	-440(%rbp), %eax	# j2, tmp1089
	cltq
	movl	%edx, -336(%rbp,%rax,4)	# D.11432, m5
	.loc 1 2340 0 discriminator 2
	addl	$1, -536(%rbp)	#, j
.L586:
	.loc 1 2340 0 is_stmt 0 discriminator 1
	cmpl	$1, -536(%rbp)	#, j
	jle	.L587	#,
	.loc 1 2346 0 is_stmt 1
	movl	-336(%rbp), %edx	# m5, D.11432
	movl	-332(%rbp), %eax	# m5, D.11432
	addl	%eax, %edx	# D.11432, D.11432
	movl	-528(%rbp), %eax	# n2, tmp1091
	cltq
	movl	-444(%rbp), %ecx	# j1, tmp1093
	movslq	%ecx, %rcx	# tmp1093, tmp1092
	salq	$3, %rcx	#, tmp1094
	addq	%rcx, %rax	# tmp1094, tmp1095
	movl	%edx, -288(%rbp,%rax,4)	# D.11432, predicted_chroma_block
	.loc 1 2347 0
	movl	-528(%rbp), %eax	# n2, tmp1096
	leal	2(%rax), %ecx	#, D.11432
	movl	-336(%rbp), %edx	# m5, D.11432
	movl	-332(%rbp), %eax	# m5, D.11432
	subl	%eax, %edx	# D.11432, D.11432
	movslq	%ecx, %rax	# D.11432, tmp1097
	movl	-444(%rbp), %ecx	# j1, tmp1099
	movslq	%ecx, %rcx	# tmp1099, tmp1098
	salq	$3, %rcx	#, tmp1100
	addq	%rcx, %rax	# tmp1100, tmp1101
	movl	%edx, -288(%rbp,%rax,4)	# D.11432, predicted_chroma_block
	.loc 1 2348 0
	movl	-528(%rbp), %eax	# n2, tmp1102
	leal	1(%rax), %ecx	#, D.11432
	movl	-324(%rbp), %eax	# m5, D.11432
	leal	(%rax,%rax), %edx	#, D.11432
	movl	-328(%rbp), %eax	# m5, D.11432
	addl	%eax, %edx	# D.11432, D.11432
	movslq	%ecx, %rax	# D.11432, tmp1103
	movl	-444(%rbp), %ecx	# j1, tmp1105
	movslq	%ecx, %rcx	# tmp1105, tmp1104
	salq	$3, %rcx	#, tmp1106
	addq	%rcx, %rax	# tmp1106, tmp1107
	movl	%edx, -288(%rbp,%rax,4)	# D.11432, predicted_chroma_block
	.loc 1 2349 0
	movl	-528(%rbp), %eax	# n2, tmp1108
	leal	3(%rax), %esi	#, D.11432
	movl	-324(%rbp), %edx	# m5, D.11432
	movl	-328(%rbp), %ecx	# m5, D.11432
	movl	$0, %eax	#, tmp1109
	subl	%ecx, %eax	# D.11432, tmp1109
	addl	%eax, %eax	# tmp1110
	addl	%eax, %edx	# D.11432, D.11432
	movslq	%esi, %rax	# D.11432, tmp1111
	movl	-444(%rbp), %ecx	# j1, tmp1113
	movslq	%ecx, %rcx	# tmp1113, tmp1112
	salq	$3, %rcx	#, tmp1114
	addq	%rcx, %rax	# tmp1114, tmp1115
	movl	%edx, -288(%rbp,%rax,4)	# D.11432, predicted_chroma_block
	.loc 1 2337 0
	addl	$1, -540(%rbp)	#, i
.L585:
	.loc 1 2337 0 is_stmt 0 discriminator 1
	cmpl	$3, -540(%rbp)	#, i
	jle	.L588	#,
	.loc 1 2316 0 is_stmt 1
	addl	$4, -524(%rbp)	#, n1
.L580:
	.loc 1 2316 0 is_stmt 0 discriminator 1
	cmpl	$4, -524(%rbp)	#, n1
	jle	.L589	#,
	.loc 1 2314 0 is_stmt 1
	addl	$4, -528(%rbp)	#, n2
.L579:
	.loc 1 2314 0 is_stmt 0 discriminator 1
	cmpl	$4, -528(%rbp)	#, n2
	jle	.L590	#,
	.loc 1 2355 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.513
	movl	13112(%rax), %edx	# img.513_325->m7, D.11432
	movq	img(%rip), %rax	# img, img.514
	movl	13368(%rax), %eax	# img.514_327->m7, D.11432
	addl	%eax, %edx	# D.11432, D.11432
	movq	img(%rip), %rax	# img, img.515
	movl	13128(%rax), %eax	# img.515_330->m7, D.11432
	addl	%eax, %edx	# D.11432, D.11432
	movq	img(%rip), %rax	# img, img.516
	movl	13384(%rax), %eax	# img.516_333->m7, D.11432
	addl	%edx, %eax	# D.11432, D.11432
	movl	%eax, -352(%rbp)	# D.11432, m1
	.loc 1 2356 0
	movq	img(%rip), %rax	# img, img.517
	movl	13112(%rax), %edx	# img.517_336->m7, D.11432
	movq	img(%rip), %rax	# img, img.518
	movl	13368(%rax), %eax	# img.518_338->m7, D.11432
	subl	%eax, %edx	# D.11432, D.11432
	movq	img(%rip), %rax	# img, img.519
	movl	13128(%rax), %eax	# img.519_341->m7, D.11432
	addl	%eax, %edx	# D.11432, D.11432
	movq	img(%rip), %rax	# img, img.520
	movl	13384(%rax), %eax	# img.520_344->m7, D.11432
	subl	%eax, %edx	# D.11432, D.11432
	movl	%edx, %eax	# D.11432, D.11432
	movl	%eax, -348(%rbp)	# D.11432, m1
	.loc 1 2357 0
	movq	img(%rip), %rax	# img, img.521
	movl	13112(%rax), %edx	# img.521_347->m7, D.11432
	movq	img(%rip), %rax	# img, img.522
	movl	13368(%rax), %eax	# img.522_349->m7, D.11432
	addl	%eax, %edx	# D.11432, D.11432
	movq	img(%rip), %rax	# img, img.523
	movl	13128(%rax), %eax	# img.523_352->m7, D.11432
	subl	%eax, %edx	# D.11432, D.11432
	movq	img(%rip), %rax	# img, img.524
	movl	13384(%rax), %eax	# img.524_355->m7, D.11432
	subl	%eax, %edx	# D.11432, D.11432
	movl	%edx, %eax	# D.11432, D.11432
	movl	%eax, -344(%rbp)	# D.11432, m1
	.loc 1 2358 0
	movq	img(%rip), %rax	# img, img.525
	movl	13112(%rax), %edx	# img.525_358->m7, D.11432
	movq	img(%rip), %rax	# img, img.526
	movl	13368(%rax), %eax	# img.526_360->m7, D.11432
	subl	%eax, %edx	# D.11432, D.11432
	movq	img(%rip), %rax	# img, img.527
	movl	13128(%rax), %eax	# img.527_363->m7, D.11432
	subl	%eax, %edx	# D.11432, D.11432
	movq	img(%rip), %rax	# img, img.528
	movl	13384(%rax), %eax	# img.528_366->m7, D.11432
	addl	%edx, %eax	# D.11432, D.11432
	movl	%eax, -340(%rbp)	# D.11432, m1
	.loc 1 2361 0
	movl	-288(%rbp), %edx	# predicted_chroma_block, D.11432
	movl	-160(%rbp), %eax	# predicted_chroma_block, D.11432
	addl	%eax, %edx	# D.11432, D.11432
	movl	-272(%rbp), %eax	# predicted_chroma_block, D.11432
	addl	%eax, %edx	# D.11432, D.11432
	movl	-144(%rbp), %eax	# predicted_chroma_block, D.11432
	addl	%edx, %eax	# D.11432, D.11432
	movl	%eax, -304(%rbp)	# D.11432, mp1
	.loc 1 2362 0
	movl	-288(%rbp), %edx	# predicted_chroma_block, D.11432
	movl	-160(%rbp), %eax	# predicted_chroma_block, D.11432
	subl	%eax, %edx	# D.11432, D.11432
	movl	-272(%rbp), %eax	# predicted_chroma_block, D.11432
	addl	%eax, %edx	# D.11432, D.11432
	movl	-144(%rbp), %eax	# predicted_chroma_block, D.11432
	subl	%eax, %edx	# D.11432, D.11432
	movl	%edx, %eax	# D.11432, D.11432
	movl	%eax, -300(%rbp)	# D.11432, mp1
	.loc 1 2363 0
	movl	-288(%rbp), %edx	# predicted_chroma_block, D.11432
	movl	-160(%rbp), %eax	# predicted_chroma_block, D.11432
	addl	%eax, %edx	# D.11432, D.11432
	movl	-272(%rbp), %eax	# predicted_chroma_block, D.11432
	subl	%eax, %edx	# D.11432, D.11432
	movl	-144(%rbp), %eax	# predicted_chroma_block, D.11432
	subl	%eax, %edx	# D.11432, D.11432
	movl	%edx, %eax	# D.11432, D.11432
	movl	%eax, -296(%rbp)	# D.11432, mp1
	.loc 1 2364 0
	movl	-288(%rbp), %edx	# predicted_chroma_block, D.11432
	movl	-160(%rbp), %eax	# predicted_chroma_block, D.11432
	subl	%eax, %edx	# D.11432, D.11432
	movl	-272(%rbp), %eax	# predicted_chroma_block, D.11432
	subl	%eax, %edx	# D.11432, D.11432
	movl	-144(%rbp), %eax	# predicted_chroma_block, D.11432
	addl	%edx, %eax	# D.11432, D.11432
	movl	%eax, -292(%rbp)	# D.11432, mp1
	.loc 1 2366 0
	movl	$-1, -504(%rbp)	#, run
	.loc 1 2367 0
	movl	$0, -508(%rbp)	#, scan_pos
	.loc 1 2369 0
	movl	$0, -520(%rbp)	#, coeff_ctr
	jmp	.L591	#
.L610:
	.loc 1 2371 0
	addl	$1, -504(%rbp)	#, run
	.loc 1 2372 0
	movl	$0, -532(%rbp)	#, ilev
	.loc 1 2375 0
	movl	-520(%rbp), %eax	# coeff_ctr, tmp1117
	cltq
	movl	-304(%rbp,%rax,4), %eax	# mp1, D.11432
	cltd
	xorl	%edx, %eax	# tmp1118, D.11432
	subl	%edx, %eax	# tmp1118, D.11432
	movl	-464(%rbp), %edx	# qp_rem_sp, tmp1120
	movslq	%edx, %rdx	# tmp1120, tmp1119
	salq	$6, %rdx	#, tmp1121
	addq	$quant_coef, %rdx	#, tmp1122
	movl	(%rdx), %edx	# quant_coef, D.11432
	imull	%edx, %eax	# D.11432, D.11432
	movl	-456(%rbp), %edx	# qp_const2, tmp1123
	addl	%edx, %edx	# D.11432
	addl	%eax, %edx	# D.11432, D.11432
	movl	-460(%rbp), %eax	# q_bits_sp, tmp1124
	addl	$1, %eax	#, D.11432
	movl	%eax, %ecx	# D.11432, tmp1726
	sarl	%cl, %edx	# tmp1726, tmp1125
	movl	%edx, %eax	# tmp1125, tmp1125
	movl	%eax, -436(%rbp)	# tmp1125, c_err1
	.loc 1 2376 0
	movl	-460(%rbp), %eax	# q_bits_sp, tmp1126
	addl	$1, %eax	#, D.11432
	movl	-436(%rbp), %edx	# c_err1, tmp1127
	movl	%eax, %ecx	# D.11432, tmp1728
	sall	%cl, %edx	# tmp1728, D.11432
	movl	%edx, %eax	# D.11432, D.11432
	movl	-464(%rbp), %edx	# qp_rem_sp, tmp1129
	movslq	%edx, %rdx	# tmp1129, tmp1128
	salq	$6, %rdx	#, tmp1130
	addq	$quant_coef, %rdx	#, tmp1131
	movl	(%rdx), %edi	# quant_coef, D.11432
	cltd
	idivl	%edi	# D.11432
	movl	%eax, -436(%rbp)	# tmp1132, c_err1
	.loc 1 2377 0
	movl	-520(%rbp), %eax	# coeff_ctr, tmp1135
	cltq
	movl	-352(%rbp,%rax,4), %ebx	# m1, D.11432
	movl	-520(%rbp), %eax	# coeff_ctr, tmp1137
	cltq
	movl	-304(%rbp,%rax,4), %edx	# mp1, D.11432
	movl	-436(%rbp), %eax	# c_err1, tmp1138
	movl	%edx, %esi	# D.11432,
	movl	%eax, %edi	# tmp1138,
	call	sign	#
	subl	%eax, %ebx	# D.11432, tmp1139
	movl	%ebx, %eax	# tmp1139, tmp1139
	movl	%eax, -436(%rbp)	# tmp1139, c_err1
	.loc 1 2378 0
	movl	-436(%rbp), %eax	# c_err1, tmp1141
	cltd
	movl	%edx, %eax	# tmp1140, D.11432
	xorl	-436(%rbp), %eax	# c_err1, D.11432
	subl	%edx, %eax	# tmp1140, D.11432
	movl	-480(%rbp), %edx	# qp_rem, tmp1143
	movslq	%edx, %rdx	# tmp1143, tmp1142
	salq	$6, %rdx	#, tmp1144
	addq	$quant_coef, %rdx	#, tmp1145
	movl	(%rdx), %edx	# quant_coef, D.11432
	imull	%edx, %eax	# D.11432, D.11432
	movl	-472(%rbp), %edx	# qp_const, tmp1146
	addl	%edx, %edx	# D.11432
	addl	%eax, %edx	# D.11432, D.11432
	movl	-476(%rbp), %eax	# q_bits, tmp1147
	addl	$1, %eax	#, D.11432
	movl	%eax, %ecx	# D.11432, tmp1733
	sarl	%cl, %edx	# tmp1733, tmp1148
	movl	%edx, %eax	# tmp1148, tmp1148
	movl	%eax, -432(%rbp)	# tmp1148, level1
	.loc 1 2381 0
	movl	-520(%rbp), %eax	# coeff_ctr, tmp1150
	cltq
	movl	-352(%rbp,%rax,4), %edx	# m1, D.11432
	movl	-520(%rbp), %eax	# coeff_ctr, tmp1152
	cltq
	movl	-304(%rbp,%rax,4), %eax	# mp1, D.11432
	subl	%eax, %edx	# D.11432, tmp1153
	movl	%edx, %eax	# tmp1153, tmp1153
	movl	%eax, -428(%rbp)	# tmp1153, c_err2
	.loc 1 2382 0
	movl	-428(%rbp), %eax	# c_err2, tmp1155
	cltd
	movl	%edx, %eax	# tmp1154, D.11432
	xorl	-428(%rbp), %eax	# c_err2, D.11432
	subl	%edx, %eax	# tmp1154, D.11432
	movl	-480(%rbp), %edx	# qp_rem, tmp1157
	movslq	%edx, %rdx	# tmp1157, tmp1156
	salq	$6, %rdx	#, tmp1158
	addq	$quant_coef, %rdx	#, tmp1159
	movl	(%rdx), %edx	# quant_coef, D.11432
	imull	%edx, %eax	# D.11432, D.11432
	movl	-472(%rbp), %edx	# qp_const, tmp1160
	addl	%edx, %edx	# D.11432
	addl	%eax, %edx	# D.11432, D.11432
	movl	-476(%rbp), %eax	# q_bits, tmp1161
	addl	$1, %eax	#, D.11432
	movl	%eax, %ecx	# D.11432, tmp1737
	sarl	%cl, %edx	# tmp1737, tmp1162
	movl	%edx, %eax	# tmp1162, tmp1162
	movl	%eax, -424(%rbp)	# tmp1162, level2
	.loc 1 2384 0
	movl	-432(%rbp), %eax	# level1, tmp1163
	cmpl	-424(%rbp), %eax	# level2, tmp1163
	je	.L592	#,
	.loc 1 2384 0 is_stmt 0 discriminator 1
	cmpl	$0, -432(%rbp)	#, level1
	je	.L592	#,
	cmpl	$0, -424(%rbp)	#, level2
	je	.L592	#,
	.loc 1 2386 0 is_stmt 1
	movl	-520(%rbp), %eax	# coeff_ctr, tmp1165
	cltq
	movl	-352(%rbp,%rax,4), %ebx	# m1, D.11432
	movl	-436(%rbp), %edx	# c_err1, tmp1166
	movl	-432(%rbp), %eax	# level1, tmp1167
	movl	%edx, %esi	# tmp1166,
	movl	%eax, %edi	# tmp1167,
	call	sign	#
	movl	-480(%rbp), %edx	# qp_rem, tmp1169
	movslq	%edx, %rdx	# tmp1169, tmp1168
	salq	$6, %rdx	#, tmp1170
	addq	$dequant_coef, %rdx	#, tmp1171
	movl	(%rdx), %edx	# dequant_coef, D.11432
	imull	%eax, %edx	# D.11432, D.11432
	movl	$16, %eax	#, D.11432
	imull	%eax, %edx	# D.11432, D.11432
	movl	-484(%rbp), %eax	# qp_per, tmp1172
	movl	%eax, %ecx	# tmp1172, tmp1739
	sall	%cl, %edx	# tmp1739, D.11432
	movl	%edx, %eax	# D.11432, D.11432
	sarl	$5, %eax	#, D.11432
	subl	%eax, %ebx	# D.11432, D.11432
	movl	%ebx, %edx	# D.11432, D.11432
	movl	-520(%rbp), %eax	# coeff_ctr, tmp1174
	cltq
	movl	-304(%rbp,%rax,4), %eax	# mp1, D.11432
	subl	%eax, %edx	# D.11432, D.11432
	movl	%edx, %eax	# D.11432, D.11432
	cvtsi2sd	%eax, %xmm0	# D.11432, tmp1175
	movsd	%xmm0, -384(%rbp)	# tmp1175, D_dis1
	.loc 1 2387 0
	leaq	-544(%rbp), %rcx	#, tmp1176
	leaq	-548(%rbp), %rdx	#, tmp1177
	movl	-504(%rbp), %esi	# run, tmp1178
	movl	-432(%rbp), %eax	# level1, tmp1179
	movl	%eax, %edi	# tmp1179,
	call	levrun_linfo_c2x2	#
	.loc 1 2388 0
	movsd	-384(%rbp), %xmm0	# D_dis1, tmp1180
	movapd	%xmm0, %xmm1	# tmp1180, D.11437
	mulsd	-384(%rbp), %xmm1	# D_dis1, D.11437
	movl	-548(%rbp), %eax	# len, len.529
	cvtsi2sd	%eax, %xmm0	# len.529, D.11437
	mulsd	-392(%rbp), %xmm0	# lambda_mode, D.11437
	addsd	%xmm1, %xmm0	# D.11437, tmp1181
	movsd	%xmm0, -384(%rbp)	# tmp1181, D_dis1
	.loc 1 2390 0
	movl	-520(%rbp), %eax	# coeff_ctr, tmp1183
	cltq
	movl	-352(%rbp,%rax,4), %ebx	# m1, D.11432
	movl	-428(%rbp), %edx	# c_err2, tmp1184
	movl	-424(%rbp), %eax	# level2, tmp1185
	movl	%edx, %esi	# tmp1184,
	movl	%eax, %edi	# tmp1185,
	call	sign	#
	movl	-480(%rbp), %edx	# qp_rem, tmp1187
	movslq	%edx, %rdx	# tmp1187, tmp1186
	salq	$6, %rdx	#, tmp1188
	addq	$dequant_coef, %rdx	#, tmp1189
	movl	(%rdx), %edx	# dequant_coef, D.11432
	imull	%eax, %edx	# D.11432, D.11432
	movl	$16, %eax	#, D.11432
	imull	%eax, %edx	# D.11432, D.11432
	movl	-484(%rbp), %eax	# qp_per, tmp1190
	movl	%eax, %ecx	# tmp1190, tmp1744
	sall	%cl, %edx	# tmp1744, D.11432
	movl	%edx, %eax	# D.11432, D.11432
	sarl	$5, %eax	#, D.11432
	subl	%eax, %ebx	# D.11432, D.11432
	movl	%ebx, %edx	# D.11432, D.11432
	movl	-520(%rbp), %eax	# coeff_ctr, tmp1192
	cltq
	movl	-304(%rbp,%rax,4), %eax	# mp1, D.11432
	subl	%eax, %edx	# D.11432, D.11432
	movl	%edx, %eax	# D.11432, D.11432
	cvtsi2sd	%eax, %xmm0	# D.11432, tmp1193
	movsd	%xmm0, -376(%rbp)	# tmp1193, D_dis2
	.loc 1 2391 0
	leaq	-544(%rbp), %rcx	#, tmp1194
	leaq	-548(%rbp), %rdx	#, tmp1195
	movl	-504(%rbp), %esi	# run, tmp1196
	movl	-424(%rbp), %eax	# level2, tmp1197
	movl	%eax, %edi	# tmp1197,
	call	levrun_linfo_c2x2	#
	.loc 1 2392 0
	movsd	-376(%rbp), %xmm0	# D_dis2, tmp1198
	movapd	%xmm0, %xmm1	# tmp1198, D.11437
	mulsd	-376(%rbp), %xmm1	# D_dis2, D.11437
	movl	-548(%rbp), %eax	# len, len.530
	cvtsi2sd	%eax, %xmm0	# len.530, D.11437
	mulsd	-392(%rbp), %xmm0	# lambda_mode, D.11437
	addsd	%xmm1, %xmm0	# D.11437, tmp1199
	movsd	%xmm0, -376(%rbp)	# tmp1199, D_dis2
	.loc 1 2394 0
	movsd	-384(%rbp), %xmm0	# D_dis1, tmp1200
	ucomisd	-376(%rbp), %xmm0	# D_dis2, tmp1200
	jp	.L593	#,
	movsd	-384(%rbp), %xmm0	# D_dis1, tmp1201
	ucomisd	-376(%rbp), %xmm0	# D_dis2, tmp1201
	jne	.L593	#,
	.loc 1 2395 0
	movl	-432(%rbp), %eax	# level1, tmp1203
	sarl	$31, %eax	#, tmp1202
	movl	%eax, %edx	# tmp1202, D.11432
	xorl	-432(%rbp), %edx	# level1, D.11432
	subl	%eax, %edx	# tmp1202, D.11432
	movl	-424(%rbp), %eax	# level2, tmp1205
	sarl	$31, %eax	#, tmp1204
	movl	%eax, %ecx	# tmp1204, tmp1204
	movl	%ecx, %eax	# tmp1204, D.11432
	xorl	-424(%rbp), %eax	# level2, D.11432
	subl	%ecx, %eax	# tmp1204, D.11432
	cmpl	%eax, %edx	# D.11432, D.11432
	jge	.L595	#,
	.loc 1 2395 0 is_stmt 0 discriminator 1
	movl	-432(%rbp), %eax	# level1, iftmp.531
	jmp	.L596	#
.L595:
	.loc 1 2395 0 discriminator 2
	movl	-424(%rbp), %eax	# level2, iftmp.531
.L596:
	.loc 1 2395 0 discriminator 1
	movl	%eax, -512(%rbp)	# iftmp.531, level
	jmp	.L597	#
.L593:
	.loc 1 2398 0 is_stmt 1
	movsd	-376(%rbp), %xmm0	# D_dis2, tmp1206
	ucomisd	-384(%rbp), %xmm0	# D_dis1, tmp1206
	jbe	.L665	#,
	.loc 1 2399 0
	movl	-432(%rbp), %eax	# level1, tmp1207
	movl	%eax, -512(%rbp)	# tmp1207, level
	jmp	.L597	#
.L665:
	.loc 1 2401 0
	movl	-424(%rbp), %eax	# level2, tmp1208
	movl	%eax, -512(%rbp)	# tmp1208, level
.L597:
	.loc 1 2403 0
	movl	-512(%rbp), %eax	# level, tmp1209
	cmpl	-432(%rbp), %eax	# level1, tmp1209
	jne	.L600	#,
	.loc 1 2403 0 is_stmt 0 discriminator 1
	movl	-436(%rbp), %eax	# c_err1, iftmp.532
	jmp	.L601	#
.L600:
	.loc 1 2403 0 discriminator 2
	movl	-428(%rbp), %eax	# c_err2, iftmp.532
.L601:
	.loc 1 2403 0 discriminator 3
	movl	%eax, -516(%rbp)	# iftmp.532, c_err
	jmp	.L602	#
.L592:
	.loc 1 2405 0 is_stmt 1
	movl	-432(%rbp), %eax	# level1, tmp1210
	cmpl	-424(%rbp), %eax	# level2, tmp1210
	jne	.L603	#,
	.loc 1 2407 0
	movl	-432(%rbp), %eax	# level1, tmp1211
	movl	%eax, -512(%rbp)	# tmp1211, level
	.loc 1 2408 0
	movl	-436(%rbp), %eax	# c_err1, tmp1212
	movl	%eax, -516(%rbp)	# tmp1212, c_err
	jmp	.L602	#
.L603:
	.loc 1 2412 0
	cmpl	$0, -432(%rbp)	#, level1
	jne	.L604	#,
	.loc 1 2412 0 is_stmt 0 discriminator 1
	movl	-432(%rbp), %eax	# level1, iftmp.533
	jmp	.L605	#
.L604:
	.loc 1 2412 0 discriminator 2
	movl	-424(%rbp), %eax	# level2, iftmp.533
.L605:
	.loc 1 2412 0 discriminator 3
	movl	%eax, -512(%rbp)	# iftmp.533, level
	.loc 1 2413 0 is_stmt 1 discriminator 3
	cmpl	$0, -432(%rbp)	#, level1
	jne	.L606	#,
	.loc 1 2413 0 is_stmt 0 discriminator 1
	movl	-436(%rbp), %eax	# c_err1, iftmp.534
	jmp	.L607	#
.L606:
	.loc 1 2413 0 discriminator 2
	movl	-428(%rbp), %eax	# c_err2, iftmp.534
.L607:
	.loc 1 2413 0 discriminator 3
	movl	%eax, -516(%rbp)	# iftmp.534, c_err
.L602:
	.loc 1 2416 0 is_stmt 1
	movq	input(%rip), %rax	# input, input.535
	movl	2356(%rax), %eax	# input.535_488->symbol_mode, D.11432
	testl	%eax, %eax	# D.11432
	jne	.L608	#,
	.loc 1 2416 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.536
	movl	40(%rax), %eax	# img.536_490->qp, D.11432
	cmpl	$3, %eax	#, D.11432
	jg	.L608	#,
	.loc 1 2418 0 is_stmt 1
	cmpl	$2063, -512(%rbp)	#, level
	jle	.L608	#,
	.loc 1 2420 0
	movl	$2063, -512(%rbp)	#, level
.L608:
	.loc 1 2424 0
	cmpl	$0, -512(%rbp)	#, level
	je	.L609	#,
	.loc 1 2426 0
	movq	-416(%rbp), %rax	# currMB, tmp1213
	movq	464(%rax), %rdx	# currMB_80->cbp_blk, D.11440
	movl	-564(%rbp), %eax	# uv, tmp1214
	sall	$2, %eax	#, D.11432
	movl	$983040, %esi	#, tmp1215
	movl	%eax, %ecx	# D.11432, tmp1752
	sall	%cl, %esi	# tmp1752, D.11432
	movl	%esi, %eax	# D.11432, D.11432
	cltq
	orq	%rax, %rdx	# D.11440, D.11440
	movq	-416(%rbp), %rax	# currMB, tmp1216
	movq	%rdx, 464(%rax)	# D.11440, currMB_80->cbp_blk
	.loc 1 2427 0
	movl	$1, %eax	#, tmp1218
	cmpl	$0, -568(%rbp)	#, cr_cbp
	cmovg	-568(%rbp), %eax	# cr_cbp,, tmp1217
	movl	%eax, -568(%rbp)	# tmp1217, cr_cbp
	.loc 1 2428 0
	movl	-508(%rbp), %eax	# scan_pos, tmp1219
	cltq
	leaq	0(,%rax,4), %rdx	#, D.11433
	movq	-408(%rbp), %rax	# DCLevel, tmp1220
	leaq	(%rdx,%rax), %rbx	#, D.11441
	movl	-516(%rbp), %edx	# c_err, tmp1221
	movl	-512(%rbp), %eax	# level, tmp1222
	movl	%edx, %esi	# tmp1221,
	movl	%eax, %edi	# tmp1222,
	call	sign	#
	movl	%eax, (%rbx)	# D.11432, *_501
	.loc 1 2429 0
	movl	-508(%rbp), %eax	# scan_pos, tmp1223
	cltq
	leaq	0(,%rax,4), %rdx	#, D.11433
	movq	-400(%rbp), %rax	# DCRun, tmp1224
	addq	%rax, %rdx	# tmp1224, D.11441
	movl	-504(%rbp), %eax	# run, tmp1225
	movl	%eax, (%rdx)	# tmp1225, *_505
	.loc 1 2430 0
	addl	$1, -508(%rbp)	#, scan_pos
	.loc 1 2431 0
	movl	$-1, -504(%rbp)	#, run
	.loc 1 2432 0
	movl	-516(%rbp), %edx	# c_err, tmp1226
	movl	-512(%rbp), %eax	# level, tmp1227
	movl	%edx, %esi	# tmp1226,
	movl	%eax, %edi	# tmp1227,
	call	sign	#
	movl	-480(%rbp), %edx	# qp_rem, tmp1229
	movslq	%edx, %rdx	# tmp1229, tmp1228
	salq	$6, %rdx	#, tmp1230
	addq	$dequant_coef, %rdx	#, tmp1231
	movl	(%rdx), %edx	# dequant_coef, D.11432
	imull	%eax, %edx	# D.11432, D.11432
	movl	$16, %eax	#, D.11432
	imull	%eax, %edx	# D.11432, D.11432
	movl	-484(%rbp), %eax	# qp_per, tmp1232
	movl	%eax, %ecx	# tmp1232, tmp1754
	sall	%cl, %edx	# tmp1754, D.11432
	movl	%edx, %eax	# D.11432, D.11432
	sarl	$5, %eax	#, tmp1233
	movl	%eax, -532(%rbp)	# tmp1233, ilev
.L609:
	.loc 1 2434 0
	movl	-520(%rbp), %eax	# coeff_ctr, tmp1235
	cltq
	movl	-304(%rbp,%rax,4), %eax	# mp1, D.11432
	addl	%eax, -532(%rbp)	# D.11432, ilev
	.loc 1 2435 0
	movl	-532(%rbp), %eax	# ilev, tmp1237
	cltd
	movl	%edx, %eax	# tmp1236, D.11432
	xorl	-532(%rbp), %eax	# ilev, D.11432
	subl	%edx, %eax	# tmp1236, D.11432
	movl	-464(%rbp), %edx	# qp_rem_sp, tmp1239
	movslq	%edx, %rdx	# tmp1239, tmp1238
	salq	$6, %rdx	#, tmp1240
	addq	$quant_coef, %rdx	#, tmp1241
	movl	(%rdx), %edx	# quant_coef, D.11432
	imull	%edx, %eax	# D.11432, D.11432
	movl	-456(%rbp), %edx	# qp_const2, tmp1242
	addl	%edx, %edx	# D.11432
	addl	%eax, %edx	# D.11432, D.11432
	movl	-460(%rbp), %eax	# q_bits_sp, tmp1243
	addl	$1, %eax	#, D.11432
	movl	%eax, %ecx	# D.11432, tmp1756
	sarl	%cl, %edx	# tmp1756, D.11432
	movl	-532(%rbp), %eax	# ilev, tmp1244
	movl	%eax, %esi	# tmp1244,
	movl	%edx, %edi	# D.11432,
	call	sign	#
	movl	-464(%rbp), %edx	# qp_rem_sp, tmp1246
	movslq	%edx, %rdx	# tmp1246, tmp1245
	salq	$6, %rdx	#, tmp1247
	addq	$dequant_coef, %rdx	#, tmp1248
	movl	(%rdx), %edx	# dequant_coef, D.11432
	imull	%eax, %edx	# D.11432, D.11432
	movl	-468(%rbp), %eax	# qp_per_sp, tmp1249
	movl	%eax, %ecx	# tmp1249, tmp1757
	sall	%cl, %edx	# tmp1757, D.11432
	movl	-520(%rbp), %eax	# coeff_ctr, tmp1251
	cltq
	movl	%edx, -352(%rbp,%rax,4)	# D.11432, m1
	.loc 1 2369 0
	addl	$1, -520(%rbp)	#, coeff_ctr
.L591:
	.loc 1 2369 0 is_stmt 0 discriminator 1
	cmpl	$3, -520(%rbp)	#, coeff_ctr
	jle	.L610	#,
	.loc 1 2437 0 is_stmt 1
	movl	-508(%rbp), %eax	# scan_pos, tmp1252
	cltq
	leaq	0(,%rax,4), %rdx	#, D.11433
	movq	-408(%rbp), %rax	# DCLevel, tmp1253
	addq	%rdx, %rax	# D.11433, D.11441
	movl	$0, (%rax)	#, *_531
	.loc 1 2441 0
	movq	img(%rip), %rdx	# img, img.537
	movl	-352(%rbp), %ecx	# m1, D.11432
	movl	-348(%rbp), %eax	# m1, D.11432
	addl	%eax, %ecx	# D.11432, D.11432
	movl	-344(%rbp), %eax	# m1, D.11432
	addl	%eax, %ecx	# D.11432, D.11432
	movl	-340(%rbp), %eax	# m1, D.11432
	addl	%ecx, %eax	# D.11432, D.11432
	movl	%eax, %ecx	# D.11432, tmp1254
	shrl	$31, %ecx	#, tmp1254
	addl	%ecx, %eax	# tmp1254, tmp1255
	sarl	%eax	# tmp1256
	movl	%eax, 13112(%rdx)	# D.11432, img.537_532->m7
	.loc 1 2442 0
	movq	img(%rip), %rdx	# img, img.538
	movl	-352(%rbp), %ecx	# m1, D.11432
	movl	-348(%rbp), %eax	# m1, D.11432
	subl	%eax, %ecx	# D.11432, D.11432
	movl	-344(%rbp), %eax	# m1, D.11432
	addl	%eax, %ecx	# D.11432, D.11432
	movl	-340(%rbp), %eax	# m1, D.11432
	subl	%eax, %ecx	# D.11432, D.11432
	movl	%ecx, %eax	# D.11432, D.11432
	movl	%eax, %ecx	# D.11432, tmp1257
	shrl	$31, %ecx	#, tmp1257
	addl	%ecx, %eax	# tmp1257, tmp1258
	sarl	%eax	# tmp1259
	movl	%eax, 13368(%rdx)	# D.11432, img.538_541->m7
	.loc 1 2443 0
	movq	img(%rip), %rdx	# img, img.539
	movl	-352(%rbp), %ecx	# m1, D.11432
	movl	-348(%rbp), %eax	# m1, D.11432
	addl	%eax, %ecx	# D.11432, D.11432
	movl	-344(%rbp), %eax	# m1, D.11432
	subl	%eax, %ecx	# D.11432, D.11432
	movl	-340(%rbp), %eax	# m1, D.11432
	subl	%eax, %ecx	# D.11432, D.11432
	movl	%ecx, %eax	# D.11432, D.11432
	movl	%eax, %ecx	# D.11432, tmp1260
	shrl	$31, %ecx	#, tmp1260
	addl	%ecx, %eax	# tmp1260, tmp1261
	sarl	%eax	# tmp1262
	movl	%eax, 13128(%rdx)	# D.11432, img.539_550->m7
	.loc 1 2444 0
	movq	img(%rip), %rdx	# img, img.540
	movl	-352(%rbp), %ecx	# m1, D.11432
	movl	-348(%rbp), %eax	# m1, D.11432
	subl	%eax, %ecx	# D.11432, D.11432
	movl	-344(%rbp), %eax	# m1, D.11432
	subl	%eax, %ecx	# D.11432, D.11432
	movl	-340(%rbp), %eax	# m1, D.11432
	addl	%ecx, %eax	# D.11432, D.11432
	movl	%eax, %ecx	# D.11432, tmp1263
	shrl	$31, %ecx	#, tmp1263
	addl	%ecx, %eax	# tmp1263, tmp1264
	sarl	%eax	# tmp1265
	movl	%eax, 13384(%rdx)	# D.11432, img.540_559->m7
	.loc 1 2447 0
	movl	$0, -500(%rbp)	#, coeff_cost
	.loc 1 2448 0
	movl	$0, -496(%rbp)	#, cr_cbp_tmp
	.loc 1 2450 0
	movl	$0, -528(%rbp)	#, n2
	jmp	.L611	#
.L638:
	.loc 1 2452 0
	movl	$0, -524(%rbp)	#, n1
	jmp	.L612	#
.L637:
	.loc 1 2454 0
	movl	-528(%rbp), %eax	# n2, tmp1266
	leal	3(%rax), %edx	#, tmp1268
	testl	%eax, %eax	# tmp1267
	cmovs	%edx, %eax	# tmp1268,, tmp1267
	sarl	$2, %eax	#, tmp1269
	leal	(%rax,%rax), %ecx	#, D.11432
	movl	-524(%rbp), %eax	# n1, tmp1270
	leal	3(%rax), %edx	#, tmp1272
	testl	%eax, %eax	# tmp1271
	cmovs	%edx, %eax	# tmp1272,, tmp1271
	sarl	$2, %eax	#, tmp1273
	addl	%ecx, %eax	# D.11432, tmp1274
	movl	%eax, -420(%rbp)	# tmp1274, b4
	.loc 1 2455 0
	movq	img(%rip), %rax	# img, img.541
	movq	14136(%rax), %rax	# img.541_576->cofAC, D.11442
	movl	-564(%rbp), %edx	# uv, tmp1275
	movslq	%edx, %rdx	# tmp1275, D.11435
	addq	$4, %rdx	#, D.11435
	salq	$3, %rdx	#, D.11435
	addq	%rdx, %rax	# D.11435, D.11442
	movq	(%rax), %rax	# *_581, D.11434
	movl	-420(%rbp), %edx	# b4, tmp1276
	movslq	%edx, %rdx	# tmp1276, D.11433
	salq	$3, %rdx	#, D.11433
	addq	%rdx, %rax	# D.11433, D.11434
	movq	(%rax), %rax	# *_585, D.11436
	movq	(%rax), %rax	# *_586, tmp1277
	movq	%rax, -368(%rbp)	# tmp1277, ACLevel
	.loc 1 2456 0
	movq	img(%rip), %rax	# img, img.542
	movq	14136(%rax), %rax	# img.542_588->cofAC, D.11442
	movl	-564(%rbp), %edx	# uv, tmp1278
	movslq	%edx, %rdx	# tmp1278, D.11435
	addq	$4, %rdx	#, D.11435
	salq	$3, %rdx	#, D.11435
	addq	%rdx, %rax	# D.11435, D.11442
	movq	(%rax), %rax	# *_593, D.11434
	movl	-420(%rbp), %edx	# b4, tmp1279
	movslq	%edx, %rdx	# tmp1279, D.11433
	salq	$3, %rdx	#, D.11433
	addq	%rdx, %rax	# D.11433, D.11434
	movq	(%rax), %rax	# *_597, D.11436
	movq	8(%rax), %rax	# MEM[(int * *)_598 + 8B], tmp1280
	movq	%rax, -360(%rbp)	# tmp1280, ACRun
	.loc 1 2458 0
	movl	$-1, -504(%rbp)	#, run
	.loc 1 2459 0
	movl	$0, -508(%rbp)	#, scan_pos
	.loc 1 2461 0
	movl	$1, -520(%rbp)	#, coeff_ctr
	jmp	.L613	#
.L636:
	.loc 1 2464 0
	movq	img(%rip), %rax	# img, img.543
	movl	72444(%rax), %eax	# img.543_603->field_picture, D.11443
	testl	%eax, %eax	# D.11443
	jne	.L614	#,
	.loc 1 2464 0 is_stmt 0 discriminator 1
	movl	mb_adaptive(%rip), %eax	# mb_adaptive, mb_adaptive.544
	testl	%eax, %eax	# mb_adaptive.544
	je	.L615	#,
	movq	img(%rip), %rax	# img, img.545
	movl	72008(%rax), %eax	# img.545_606->field_mode, D.11432
	testl	%eax, %eax	# D.11432
	je	.L615	#,
.L614:
	.loc 1 2466 0 is_stmt 1
	movl	-520(%rbp), %eax	# coeff_ctr, tmp1282
	cltq
	movzbl	FIELD_SCAN(%rax,%rax), %eax	# FIELD_SCAN, D.11438
	movzbl	%al, %eax	# D.11438, tmp1283
	movl	%eax, -540(%rbp)	# tmp1283, i
	.loc 1 2467 0
	movl	-520(%rbp), %eax	# coeff_ctr, tmp1285
	cltq
	movzbl	FIELD_SCAN+1(%rax,%rax), %eax	# FIELD_SCAN, D.11438
	movzbl	%al, %eax	# D.11438, tmp1286
	movl	%eax, -536(%rbp)	# tmp1286, j
	jmp	.L616	#
.L615:
	.loc 1 2471 0
	movl	-520(%rbp), %eax	# coeff_ctr, tmp1288
	cltq
	movzbl	SNGL_SCAN(%rax,%rax), %eax	# SNGL_SCAN, D.11438
	movzbl	%al, %eax	# D.11438, tmp1289
	movl	%eax, -540(%rbp)	# tmp1289, i
	.loc 1 2472 0
	movl	-520(%rbp), %eax	# coeff_ctr, tmp1291
	cltq
	movzbl	SNGL_SCAN+1(%rax,%rax), %eax	# SNGL_SCAN, D.11438
	movzbl	%al, %eax	# D.11438, tmp1292
	movl	%eax, -536(%rbp)	# tmp1292, j
.L616:
	.loc 1 2474 0
	addl	$1, -504(%rbp)	#, run
	.loc 1 2475 0
	movl	$0, -532(%rbp)	#, ilev
	.loc 1 2478 0
	movl	-540(%rbp), %eax	# i, tmp1293
	movl	-524(%rbp), %edx	# n1, tmp1294
	leal	(%rdx,%rax), %ecx	#, D.11432
	movl	-536(%rbp), %eax	# j, tmp1295
	movl	-528(%rbp), %edx	# n2, tmp1296
	addl	%edx, %eax	# tmp1296, D.11432
	cltq
	movslq	%ecx, %rdx	# D.11432, tmp1298
	salq	$3, %rdx	#, tmp1299
	addq	%rdx, %rax	# tmp1299, tmp1300
	movl	-288(%rbp,%rax,4), %eax	# predicted_chroma_block, D.11432
	cltd
	xorl	%edx, %eax	# tmp1301, D.11432
	subl	%edx, %eax	# tmp1301, D.11432
	movl	-536(%rbp), %edx	# j, tmp1303
	movslq	%edx, %rdx	# tmp1303, tmp1302
	movl	-464(%rbp), %ecx	# qp_rem_sp, tmp1305
	movslq	%ecx, %rsi	# tmp1305, tmp1304
	movl	-540(%rbp), %ecx	# i, tmp1307
	movslq	%ecx, %rcx	# tmp1307, tmp1306
	salq	$2, %rsi	#, tmp1308
	addq	%rsi, %rcx	# tmp1308, tmp1309
	salq	$2, %rcx	#, tmp1310
	addq	%rcx, %rdx	# tmp1310, tmp1311
	movl	quant_coef(,%rdx,4), %edx	# quant_coef, D.11432
	imull	%eax, %edx	# D.11432, D.11432
	movl	-456(%rbp), %eax	# qp_const2, tmp1312
	addl	%eax, %edx	# tmp1312, D.11432
	movl	-460(%rbp), %eax	# q_bits_sp, tmp1313
	movl	%eax, %ecx	# tmp1313, tmp1765
	sarl	%cl, %edx	# tmp1765, tmp1314
	movl	%edx, %eax	# tmp1314, tmp1314
	movl	%eax, -436(%rbp)	# tmp1314, c_err1
	.loc 1 2479 0
	movl	-460(%rbp), %eax	# q_bits_sp, tmp1315
	movl	-436(%rbp), %edx	# c_err1, tmp1316
	movl	%eax, %ecx	# tmp1315, tmp1767
	sall	%cl, %edx	# tmp1767, D.11432
	movl	%edx, %eax	# D.11432, D.11432
	movl	-536(%rbp), %edx	# j, tmp1318
	movslq	%edx, %rdx	# tmp1318, tmp1317
	movl	-464(%rbp), %ecx	# qp_rem_sp, tmp1320
	movslq	%ecx, %rsi	# tmp1320, tmp1319
	movl	-540(%rbp), %ecx	# i, tmp1322
	movslq	%ecx, %rcx	# tmp1322, tmp1321
	salq	$2, %rsi	#, tmp1323
	addq	%rsi, %rcx	# tmp1323, tmp1324
	salq	$2, %rcx	#, tmp1325
	addq	%rcx, %rdx	# tmp1325, tmp1326
	movl	quant_coef(,%rdx,4), %ebx	# quant_coef, D.11432
	cltd
	idivl	%ebx	# D.11432
	movl	%eax, -436(%rbp)	# tmp1327, c_err1
	.loc 1 2480 0
	movq	img(%rip), %rax	# img, img.546
	movl	-540(%rbp), %edx	# i, tmp1329
	movl	-524(%rbp), %ecx	# n1, tmp1330
	leal	(%rcx,%rdx), %esi	#, D.11432
	movl	-536(%rbp), %edx	# j, tmp1331
	movl	-528(%rbp), %ecx	# n2, tmp1332
	addl	%ecx, %edx	# tmp1332, D.11432
	movslq	%edx, %rdx	# D.11432, tmp1333
	movslq	%esi, %rcx	# D.11432, tmp1334
	salq	$4, %rcx	#, tmp1335
	addq	%rcx, %rdx	# tmp1335, tmp1336
	addq	$3276, %rdx	#, tmp1337
	movl	8(%rax,%rdx,4), %ebx	# img.546_629->m7, D.11432
	movl	-540(%rbp), %eax	# i, tmp1338
	movl	-524(%rbp), %edx	# n1, tmp1339
	leal	(%rdx,%rax), %ecx	#, D.11432
	movl	-536(%rbp), %eax	# j, tmp1340
	movl	-528(%rbp), %edx	# n2, tmp1341
	addl	%edx, %eax	# tmp1341, D.11432
	cltq
	movslq	%ecx, %rdx	# D.11432, tmp1343
	salq	$3, %rdx	#, tmp1344
	addq	%rdx, %rax	# tmp1344, tmp1345
	movl	-288(%rbp,%rax,4), %edx	# predicted_chroma_block, D.11432
	movl	-436(%rbp), %eax	# c_err1, tmp1346
	movl	%edx, %esi	# D.11432,
	movl	%eax, %edi	# tmp1346,
	call	sign	#
	subl	%eax, %ebx	# D.11432, tmp1347
	movl	%ebx, %eax	# tmp1347, tmp1347
	movl	%eax, -436(%rbp)	# tmp1347, c_err1
	.loc 1 2481 0
	movl	-436(%rbp), %eax	# c_err1, tmp1349
	cltd
	movl	%edx, %eax	# tmp1348, D.11432
	xorl	-436(%rbp), %eax	# c_err1, D.11432
	subl	%edx, %eax	# tmp1348, D.11432
	movl	-536(%rbp), %edx	# j, tmp1351
	movslq	%edx, %rdx	# tmp1351, tmp1350
	movl	-480(%rbp), %ecx	# qp_rem, tmp1353
	movslq	%ecx, %rsi	# tmp1353, tmp1352
	movl	-540(%rbp), %ecx	# i, tmp1355
	movslq	%ecx, %rcx	# tmp1355, tmp1354
	salq	$2, %rsi	#, tmp1356
	addq	%rsi, %rcx	# tmp1356, tmp1357
	salq	$2, %rcx	#, tmp1358
	addq	%rcx, %rdx	# tmp1358, tmp1359
	movl	quant_coef(,%rdx,4), %edx	# quant_coef, D.11432
	imull	%eax, %edx	# D.11432, D.11432
	movl	-472(%rbp), %eax	# qp_const, tmp1360
	addl	%eax, %edx	# tmp1360, D.11432
	movl	-476(%rbp), %eax	# q_bits, tmp1361
	movl	%eax, %ecx	# tmp1361, tmp1772
	sarl	%cl, %edx	# tmp1772, tmp1362
	movl	%edx, %eax	# tmp1362, tmp1362
	movl	%eax, -432(%rbp)	# tmp1362, level1
	.loc 1 2484 0
	movq	img(%rip), %rax	# img, img.547
	movl	-540(%rbp), %edx	# i, tmp1363
	movl	-524(%rbp), %ecx	# n1, tmp1364
	leal	(%rcx,%rdx), %esi	#, D.11432
	movl	-536(%rbp), %edx	# j, tmp1365
	movl	-528(%rbp), %ecx	# n2, tmp1366
	addl	%ecx, %edx	# tmp1366, D.11432
	movslq	%edx, %rdx	# D.11432, tmp1367
	movslq	%esi, %rcx	# D.11432, tmp1368
	salq	$4, %rcx	#, tmp1369
	addq	%rcx, %rdx	# tmp1369, tmp1370
	addq	$3276, %rdx	#, tmp1371
	movl	8(%rax,%rdx,4), %edx	# img.547_643->m7, D.11432
	movl	-540(%rbp), %eax	# i, tmp1372
	movl	-524(%rbp), %ecx	# n1, tmp1373
	leal	(%rcx,%rax), %esi	#, D.11432
	movl	-536(%rbp), %eax	# j, tmp1374
	movl	-528(%rbp), %ecx	# n2, tmp1375
	addl	%ecx, %eax	# tmp1375, D.11432
	cltq
	movslq	%esi, %rcx	# D.11432, tmp1377
	salq	$3, %rcx	#, tmp1378
	addq	%rcx, %rax	# tmp1378, tmp1379
	movl	-288(%rbp,%rax,4), %eax	# predicted_chroma_block, D.11432
	subl	%eax, %edx	# D.11432, tmp1380
	movl	%edx, %eax	# tmp1380, tmp1380
	movl	%eax, -428(%rbp)	# tmp1380, c_err2
	.loc 1 2485 0
	movl	-428(%rbp), %eax	# c_err2, tmp1382
	cltd
	movl	%edx, %eax	# tmp1381, D.11432
	xorl	-428(%rbp), %eax	# c_err2, D.11432
	subl	%edx, %eax	# tmp1381, D.11432
	movl	-536(%rbp), %edx	# j, tmp1384
	movslq	%edx, %rdx	# tmp1384, tmp1383
	movl	-480(%rbp), %ecx	# qp_rem, tmp1386
	movslq	%ecx, %rsi	# tmp1386, tmp1385
	movl	-540(%rbp), %ecx	# i, tmp1388
	movslq	%ecx, %rcx	# tmp1388, tmp1387
	salq	$2, %rsi	#, tmp1389
	addq	%rsi, %rcx	# tmp1389, tmp1390
	salq	$2, %rcx	#, tmp1391
	addq	%rcx, %rdx	# tmp1391, tmp1392
	movl	quant_coef(,%rdx,4), %edx	# quant_coef, D.11432
	imull	%eax, %edx	# D.11432, D.11432
	movl	-472(%rbp), %eax	# qp_const, tmp1393
	addl	%eax, %edx	# tmp1393, D.11432
	movl	-476(%rbp), %eax	# q_bits, tmp1394
	movl	%eax, %ecx	# tmp1394, tmp1776
	sarl	%cl, %edx	# tmp1776, tmp1395
	movl	%edx, %eax	# tmp1395, tmp1395
	movl	%eax, -424(%rbp)	# tmp1395, level2
	.loc 1 2487 0
	movl	-432(%rbp), %eax	# level1, tmp1396
	cmpl	-424(%rbp), %eax	# level2, tmp1396
	je	.L617	#,
	.loc 1 2487 0 is_stmt 0 discriminator 1
	cmpl	$0, -432(%rbp)	#, level1
	je	.L617	#,
	cmpl	$0, -424(%rbp)	#, level2
	je	.L617	#,
	.loc 1 2489 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.548
	movl	-540(%rbp), %edx	# i, tmp1397
	movl	-524(%rbp), %ecx	# n1, tmp1398
	leal	(%rcx,%rdx), %esi	#, D.11432
	movl	-536(%rbp), %edx	# j, tmp1399
	movl	-528(%rbp), %ecx	# n2, tmp1400
	addl	%ecx, %edx	# tmp1400, D.11432
	movslq	%edx, %rdx	# D.11432, tmp1401
	movslq	%esi, %rcx	# D.11432, tmp1402
	salq	$4, %rcx	#, tmp1403
	addq	%rcx, %rdx	# tmp1403, tmp1404
	addq	$3276, %rdx	#, tmp1405
	movl	8(%rax,%rdx,4), %ebx	# img.548_656->m7, D.11432
	movl	-436(%rbp), %edx	# c_err1, tmp1406
	movl	-432(%rbp), %eax	# level1, tmp1407
	movl	%edx, %esi	# tmp1406,
	movl	%eax, %edi	# tmp1407,
	call	sign	#
	movl	-536(%rbp), %edx	# j, tmp1409
	movslq	%edx, %rdx	# tmp1409, tmp1408
	movl	-480(%rbp), %ecx	# qp_rem, tmp1411
	movslq	%ecx, %rsi	# tmp1411, tmp1410
	movl	-540(%rbp), %ecx	# i, tmp1413
	movslq	%ecx, %rcx	# tmp1413, tmp1412
	salq	$2, %rsi	#, tmp1414
	addq	%rsi, %rcx	# tmp1414, tmp1415
	salq	$2, %rcx	#, tmp1416
	addq	%rcx, %rdx	# tmp1416, tmp1417
	movl	dequant_coef(,%rdx,4), %edx	# dequant_coef, D.11432
	imull	%eax, %edx	# D.11432, D.11432
	movl	-536(%rbp), %eax	# j, tmp1419
	cltq
	movl	-540(%rbp), %ecx	# i, tmp1421
	movslq	%ecx, %rcx	# tmp1421, tmp1420
	salq	$2, %rcx	#, tmp1422
	addq	%rcx, %rax	# tmp1422, tmp1423
	movl	A(,%rax,4), %eax	# A, D.11432
	imull	%eax, %edx	# D.11432, D.11432
	movl	-484(%rbp), %eax	# qp_per, tmp1424
	movl	%eax, %ecx	# tmp1424, tmp1778
	sall	%cl, %edx	# tmp1778, D.11432
	movl	%edx, %eax	# D.11432, D.11432
	sarl	$6, %eax	#, D.11432
	subl	%eax, %ebx	# D.11432, D.11432
	movl	%ebx, %ecx	# D.11432, D.11432
	movl	-540(%rbp), %eax	# i, tmp1425
	movl	-524(%rbp), %edx	# n1, tmp1426
	leal	(%rdx,%rax), %esi	#, D.11432
	movl	-536(%rbp), %eax	# j, tmp1427
	movl	-528(%rbp), %edx	# n2, tmp1428
	addl	%edx, %eax	# tmp1428, D.11432
	cltq
	movslq	%esi, %rdx	# D.11432, tmp1430
	salq	$3, %rdx	#, tmp1431
	addq	%rdx, %rax	# tmp1431, tmp1432
	movl	-288(%rbp,%rax,4), %eax	# predicted_chroma_block, D.11432
	subl	%eax, %ecx	# D.11432, D.11432
	movl	%ecx, %eax	# D.11432, D.11432
	cvtsi2sd	%eax, %xmm0	# D.11432, tmp1433
	movsd	%xmm0, -384(%rbp)	# tmp1433, D_dis1
	.loc 1 2491 0
	leaq	-544(%rbp), %rcx	#, tmp1434
	leaq	-548(%rbp), %rdx	#, tmp1435
	movl	-504(%rbp), %esi	# run, tmp1436
	movl	-432(%rbp), %eax	# level1, tmp1437
	movl	%eax, %edi	# tmp1437,
	call	levrun_linfo_inter	#
	.loc 1 2492 0
	movsd	-384(%rbp), %xmm0	# D_dis1, tmp1438
	movapd	%xmm0, %xmm1	# tmp1438, D.11437
	mulsd	-384(%rbp), %xmm1	# D_dis1, D.11437
	movl	-548(%rbp), %eax	# len, len.549
	cvtsi2sd	%eax, %xmm0	# len.549, D.11437
	mulsd	-392(%rbp), %xmm0	# lambda_mode, D.11437
	addsd	%xmm1, %xmm0	# D.11437, tmp1439
	movsd	%xmm0, -384(%rbp)	# tmp1439, D_dis1
	.loc 1 2494 0
	movq	img(%rip), %rax	# img, img.550
	movl	-540(%rbp), %edx	# i, tmp1440
	movl	-524(%rbp), %ecx	# n1, tmp1441
	leal	(%rcx,%rdx), %esi	#, D.11432
	movl	-536(%rbp), %edx	# j, tmp1442
	movl	-528(%rbp), %ecx	# n2, tmp1443
	addl	%ecx, %edx	# tmp1443, D.11432
	movslq	%edx, %rdx	# D.11432, tmp1444
	movslq	%esi, %rcx	# D.11432, tmp1445
	salq	$4, %rcx	#, tmp1446
	addq	%rcx, %rdx	# tmp1446, tmp1447
	addq	$3276, %rdx	#, tmp1448
	movl	8(%rax,%rdx,4), %ebx	# img.550_678->m7, D.11432
	movl	-428(%rbp), %edx	# c_err2, tmp1449
	movl	-424(%rbp), %eax	# level2, tmp1450
	movl	%edx, %esi	# tmp1449,
	movl	%eax, %edi	# tmp1450,
	call	sign	#
	movl	-536(%rbp), %edx	# j, tmp1452
	movslq	%edx, %rdx	# tmp1452, tmp1451
	movl	-480(%rbp), %ecx	# qp_rem, tmp1454
	movslq	%ecx, %rsi	# tmp1454, tmp1453
	movl	-540(%rbp), %ecx	# i, tmp1456
	movslq	%ecx, %rcx	# tmp1456, tmp1455
	salq	$2, %rsi	#, tmp1457
	addq	%rsi, %rcx	# tmp1457, tmp1458
	salq	$2, %rcx	#, tmp1459
	addq	%rcx, %rdx	# tmp1459, tmp1460
	movl	dequant_coef(,%rdx,4), %edx	# dequant_coef, D.11432
	imull	%eax, %edx	# D.11432, D.11432
	movl	-536(%rbp), %eax	# j, tmp1462
	cltq
	movl	-540(%rbp), %ecx	# i, tmp1464
	movslq	%ecx, %rcx	# tmp1464, tmp1463
	salq	$2, %rcx	#, tmp1465
	addq	%rcx, %rax	# tmp1465, tmp1466
	movl	A(,%rax,4), %eax	# A, D.11432
	imull	%eax, %edx	# D.11432, D.11432
	movl	-484(%rbp), %eax	# qp_per, tmp1467
	movl	%eax, %ecx	# tmp1467, tmp1783
	sall	%cl, %edx	# tmp1783, D.11432
	movl	%edx, %eax	# D.11432, D.11432
	sarl	$6, %eax	#, D.11432
	subl	%eax, %ebx	# D.11432, D.11432
	movl	%ebx, %ecx	# D.11432, D.11432
	movl	-540(%rbp), %eax	# i, tmp1468
	movl	-524(%rbp), %edx	# n1, tmp1469
	leal	(%rdx,%rax), %esi	#, D.11432
	movl	-536(%rbp), %eax	# j, tmp1470
	movl	-528(%rbp), %edx	# n2, tmp1471
	addl	%edx, %eax	# tmp1471, D.11432
	cltq
	movslq	%esi, %rdx	# D.11432, tmp1473
	salq	$3, %rdx	#, tmp1474
	addq	%rdx, %rax	# tmp1474, tmp1475
	movl	-288(%rbp,%rax,4), %eax	# predicted_chroma_block, D.11432
	subl	%eax, %ecx	# D.11432, D.11432
	movl	%ecx, %eax	# D.11432, D.11432
	cvtsi2sd	%eax, %xmm0	# D.11432, tmp1476
	movsd	%xmm0, -376(%rbp)	# tmp1476, D_dis2
	.loc 1 2495 0
	leaq	-544(%rbp), %rcx	#, tmp1477
	leaq	-548(%rbp), %rdx	#, tmp1478
	movl	-504(%rbp), %esi	# run, tmp1479
	movl	-424(%rbp), %eax	# level2, tmp1480
	movl	%eax, %edi	# tmp1480,
	call	levrun_linfo_inter	#
	.loc 1 2496 0
	movsd	-376(%rbp), %xmm0	# D_dis2, tmp1481
	movapd	%xmm0, %xmm1	# tmp1481, D.11437
	mulsd	-376(%rbp), %xmm1	# D_dis2, D.11437
	movl	-548(%rbp), %eax	# len, len.551
	cvtsi2sd	%eax, %xmm0	# len.551, D.11437
	mulsd	-392(%rbp), %xmm0	# lambda_mode, D.11437
	addsd	%xmm1, %xmm0	# D.11437, tmp1482
	movsd	%xmm0, -376(%rbp)	# tmp1482, D_dis2
	.loc 1 2498 0
	movsd	-384(%rbp), %xmm0	# D_dis1, tmp1483
	ucomisd	-376(%rbp), %xmm0	# D_dis2, tmp1483
	jp	.L618	#,
	movsd	-384(%rbp), %xmm0	# D_dis1, tmp1484
	ucomisd	-376(%rbp), %xmm0	# D_dis2, tmp1484
	jne	.L618	#,
	.loc 1 2499 0
	movl	-432(%rbp), %eax	# level1, tmp1486
	sarl	$31, %eax	#, tmp1485
	movl	%eax, %edx	# tmp1485, D.11432
	xorl	-432(%rbp), %edx	# level1, D.11432
	subl	%eax, %edx	# tmp1485, D.11432
	movl	-424(%rbp), %eax	# level2, tmp1488
	sarl	$31, %eax	#, tmp1487
	movl	%eax, %ecx	# tmp1487, tmp1487
	movl	%ecx, %eax	# tmp1487, D.11432
	xorl	-424(%rbp), %eax	# level2, D.11432
	subl	%ecx, %eax	# tmp1487, D.11432
	cmpl	%eax, %edx	# D.11432, D.11432
	jge	.L620	#,
	.loc 1 2499 0 is_stmt 0 discriminator 1
	movl	-432(%rbp), %eax	# level1, iftmp.552
	jmp	.L621	#
.L620:
	.loc 1 2499 0 discriminator 2
	movl	-424(%rbp), %eax	# level2, iftmp.552
.L621:
	movl	%eax, -512(%rbp)	# iftmp.552, level
	jmp	.L622	#
.L618:
	.loc 1 2502 0 is_stmt 1
	movsd	-376(%rbp), %xmm0	# D_dis2, tmp1489
	ucomisd	-384(%rbp), %xmm0	# D_dis1, tmp1489
	jbe	.L666	#,
	.loc 1 2503 0
	movl	-432(%rbp), %eax	# level1, tmp1490
	movl	%eax, -512(%rbp)	# tmp1490, level
	jmp	.L622	#
.L666:
	.loc 1 2505 0
	movl	-424(%rbp), %eax	# level2, tmp1491
	movl	%eax, -512(%rbp)	# tmp1491, level
.L622:
	.loc 1 2507 0
	movl	-512(%rbp), %eax	# level, tmp1492
	cmpl	-432(%rbp), %eax	# level1, tmp1492
	jne	.L625	#,
	.loc 1 2507 0 is_stmt 0 discriminator 1
	movl	-436(%rbp), %eax	# c_err1, iftmp.553
	jmp	.L626	#
.L625:
	.loc 1 2507 0 discriminator 2
	movl	-428(%rbp), %eax	# c_err2, iftmp.553
.L626:
	.loc 1 2507 0 discriminator 3
	movl	%eax, -516(%rbp)	# iftmp.553, c_err
	jmp	.L627	#
.L617:
	.loc 1 2509 0 is_stmt 1
	movl	-432(%rbp), %eax	# level1, tmp1493
	cmpl	-424(%rbp), %eax	# level2, tmp1493
	jne	.L628	#,
	.loc 1 2511 0
	movl	-432(%rbp), %eax	# level1, tmp1494
	movl	%eax, -512(%rbp)	# tmp1494, level
	.loc 1 2512 0
	movl	-436(%rbp), %eax	# c_err1, tmp1495
	movl	%eax, -516(%rbp)	# tmp1495, c_err
	jmp	.L627	#
.L628:
	.loc 1 2516 0
	cmpl	$0, -432(%rbp)	#, level1
	jne	.L629	#,
	.loc 1 2516 0 is_stmt 0 discriminator 1
	movl	-432(%rbp), %eax	# level1, iftmp.554
	jmp	.L630	#
.L629:
	.loc 1 2516 0 discriminator 2
	movl	-424(%rbp), %eax	# level2, iftmp.554
.L630:
	.loc 1 2516 0 discriminator 3
	movl	%eax, -512(%rbp)	# iftmp.554, level
	.loc 1 2517 0 is_stmt 1 discriminator 3
	cmpl	$0, -432(%rbp)	#, level1
	jne	.L631	#,
	.loc 1 2517 0 is_stmt 0 discriminator 1
	movl	-436(%rbp), %eax	# c_err1, iftmp.555
	jmp	.L632	#
.L631:
	.loc 1 2517 0 discriminator 2
	movl	-428(%rbp), %eax	# c_err2, iftmp.555
.L632:
	.loc 1 2517 0 discriminator 3
	movl	%eax, -516(%rbp)	# iftmp.555, c_err
.L627:
	.loc 1 2520 0 is_stmt 1
	cmpl	$0, -512(%rbp)	#, level
	je	.L633	#,
	.loc 1 2522 0
	movq	-416(%rbp), %rax	# currMB, tmp1496
	movq	464(%rax), %rdx	# currMB_80->cbp_blk, D.11440
	movl	-564(%rbp), %eax	# uv, tmp1497
	sall	$2, %eax	#, D.11432
	leal	16(%rax), %ecx	#, D.11432
	movl	-528(%rbp), %eax	# n2, tmp1498
	sarl	%eax	# D.11432
	movl	%eax, %esi	# D.11432, D.11432
	movl	-524(%rbp), %eax	# n1, tmp1499
	sarl	$2, %eax	#, D.11432
	addl	%esi, %eax	# D.11432, D.11432
	addl	%ecx, %eax	# D.11432, D.11432
	movl	$1, %esi	#, tmp1500
	movl	%eax, %ecx	# D.11432, tmp1792
	sall	%cl, %esi	# tmp1792, D.11432
	movl	%esi, %eax	# D.11432, D.11432
	cltq
	orq	%rax, %rdx	# D.11440, D.11440
	movq	-416(%rbp), %rax	# currMB, tmp1501
	movq	%rdx, 464(%rax)	# D.11440, currMB_80->cbp_blk
	.loc 1 2523 0
	cmpl	$1, -512(%rbp)	#, level
	jle	.L634	#,
	.loc 1 2524 0
	addl	$999999, -500(%rbp)	#, coeff_cost
	jmp	.L635	#
.L634:
	.loc 1 2526 0
	movq	input(%rip), %rax	# input, input.556
	movl	2468(%rax), %edx	# input.556_729->disthres, D.11432
	movl	-504(%rbp), %eax	# run, tmp1503
	cltq
	movslq	%edx, %rdx	# D.11432, tmp1504
	salq	$4, %rdx	#, tmp1505
	addq	%rdx, %rax	# tmp1505, tmp1506
	addq	$COEFF_COST, %rax	#, tmp1507
	movzbl	(%rax), %eax	# COEFF_COST, D.11438
	movzbl	%al, %eax	# D.11438, D.11432
	addl	%eax, -500(%rbp)	# D.11432, coeff_cost
.L635:
	.loc 1 2528 0
	movl	$2, -496(%rbp)	#, cr_cbp_tmp
	.loc 1 2529 0
	movl	-508(%rbp), %eax	# scan_pos, tmp1508
	cltq
	leaq	0(,%rax,4), %rdx	#, D.11433
	movq	-368(%rbp), %rax	# ACLevel, tmp1509
	leaq	(%rdx,%rax), %rbx	#, D.11441
	movl	-516(%rbp), %edx	# c_err, tmp1510
	movl	-512(%rbp), %eax	# level, tmp1511
	movl	%edx, %esi	# tmp1510,
	movl	%eax, %edi	# tmp1511,
	call	sign	#
	movl	%eax, (%rbx)	# D.11432, *_737
	.loc 1 2530 0
	movl	-508(%rbp), %eax	# scan_pos, tmp1512
	cltq
	leaq	0(,%rax,4), %rdx	#, D.11433
	movq	-360(%rbp), %rax	# ACRun, tmp1513
	addq	%rax, %rdx	# tmp1513, D.11441
	movl	-504(%rbp), %eax	# run, tmp1514
	movl	%eax, (%rdx)	# tmp1514, *_741
	.loc 1 2531 0
	addl	$1, -508(%rbp)	#, scan_pos
	.loc 1 2532 0
	movl	$-1, -504(%rbp)	#, run
	.loc 1 2533 0
	movl	-516(%rbp), %edx	# c_err, tmp1515
	movl	-512(%rbp), %eax	# level, tmp1516
	movl	%edx, %esi	# tmp1515,
	movl	%eax, %edi	# tmp1516,
	call	sign	#
	movl	-536(%rbp), %edx	# j, tmp1518
	movslq	%edx, %rdx	# tmp1518, tmp1517
	movl	-480(%rbp), %ecx	# qp_rem, tmp1520
	movslq	%ecx, %rsi	# tmp1520, tmp1519
	movl	-540(%rbp), %ecx	# i, tmp1522
	movslq	%ecx, %rcx	# tmp1522, tmp1521
	salq	$2, %rsi	#, tmp1523
	addq	%rsi, %rcx	# tmp1523, tmp1524
	salq	$2, %rcx	#, tmp1525
	addq	%rcx, %rdx	# tmp1525, tmp1526
	movl	dequant_coef(,%rdx,4), %edx	# dequant_coef, D.11432
	imull	%eax, %edx	# D.11432, D.11432
	movl	-536(%rbp), %eax	# j, tmp1528
	cltq
	movl	-540(%rbp), %ecx	# i, tmp1530
	movslq	%ecx, %rcx	# tmp1530, tmp1529
	salq	$2, %rcx	#, tmp1531
	addq	%rcx, %rax	# tmp1531, tmp1532
	movl	A(,%rax,4), %eax	# A, D.11432
	imull	%eax, %edx	# D.11432, D.11432
	movl	-484(%rbp), %eax	# qp_per, tmp1533
	movl	%eax, %ecx	# tmp1533, tmp1794
	sall	%cl, %edx	# tmp1794, D.11432
	movl	%edx, %eax	# D.11432, D.11432
	sarl	$6, %eax	#, tmp1534
	movl	%eax, -532(%rbp)	# tmp1534, ilev
.L633:
	.loc 1 2535 0
	movl	-540(%rbp), %eax	# i, tmp1535
	movl	-524(%rbp), %edx	# n1, tmp1536
	leal	(%rdx,%rax), %ecx	#, D.11432
	movl	-536(%rbp), %eax	# j, tmp1537
	movl	-528(%rbp), %edx	# n2, tmp1538
	addl	%edx, %eax	# tmp1538, D.11432
	cltq
	movslq	%ecx, %rdx	# D.11432, tmp1540
	salq	$3, %rdx	#, tmp1541
	addq	%rdx, %rax	# tmp1541, tmp1542
	movl	-288(%rbp,%rax,4), %eax	# predicted_chroma_block, D.11432
	addl	%eax, -532(%rbp)	# D.11432, ilev
	.loc 1 2536 0
	movq	img(%rip), %rbx	# img, img.557
	movl	-540(%rbp), %eax	# i, tmp1543
	movl	-524(%rbp), %edx	# n1, tmp1544
	leal	(%rdx,%rax), %r12d	#, D.11432
	movl	-536(%rbp), %eax	# j, tmp1545
	movl	-528(%rbp), %edx	# n2, tmp1546
	leal	(%rdx,%rax), %r13d	#, D.11432
	movl	-532(%rbp), %eax	# ilev, tmp1548
	cltd
	movl	%edx, %eax	# tmp1547, D.11432
	xorl	-532(%rbp), %eax	# ilev, D.11432
	subl	%edx, %eax	# tmp1547, D.11432
	movl	-536(%rbp), %edx	# j, tmp1550
	movslq	%edx, %rdx	# tmp1550, tmp1549
	movl	-464(%rbp), %ecx	# qp_rem_sp, tmp1552
	movslq	%ecx, %rsi	# tmp1552, tmp1551
	movl	-540(%rbp), %ecx	# i, tmp1554
	movslq	%ecx, %rcx	# tmp1554, tmp1553
	salq	$2, %rsi	#, tmp1555
	addq	%rsi, %rcx	# tmp1555, tmp1556
	salq	$2, %rcx	#, tmp1557
	addq	%rcx, %rdx	# tmp1557, tmp1558
	movl	quant_coef(,%rdx,4), %edx	# quant_coef, D.11432
	imull	%eax, %edx	# D.11432, D.11432
	movl	-456(%rbp), %eax	# qp_const2, tmp1559
	addl	%eax, %edx	# tmp1559, D.11432
	movl	-460(%rbp), %eax	# q_bits_sp, tmp1560
	movl	%eax, %ecx	# tmp1560, tmp1796
	sarl	%cl, %edx	# tmp1796, D.11432
	movl	-532(%rbp), %eax	# ilev, tmp1561
	movl	%eax, %esi	# tmp1561,
	movl	%edx, %edi	# D.11432,
	call	sign	#
	movl	-536(%rbp), %edx	# j, tmp1563
	movslq	%edx, %rdx	# tmp1563, tmp1562
	movl	-464(%rbp), %ecx	# qp_rem_sp, tmp1565
	movslq	%ecx, %rsi	# tmp1565, tmp1564
	movl	-540(%rbp), %ecx	# i, tmp1567
	movslq	%ecx, %rcx	# tmp1567, tmp1566
	salq	$2, %rsi	#, tmp1568
	addq	%rsi, %rcx	# tmp1568, tmp1569
	salq	$2, %rcx	#, tmp1570
	addq	%rcx, %rdx	# tmp1570, tmp1571
	movl	dequant_coef(,%rdx,4), %edx	# dequant_coef, D.11432
	imull	%eax, %edx	# D.11432, D.11432
	movl	-468(%rbp), %eax	# qp_per_sp, tmp1572
	movl	%eax, %ecx	# tmp1572, tmp1797
	sall	%cl, %edx	# tmp1797, D.11432
	movslq	%r13d, %rax	# D.11432, tmp1573
	movslq	%r12d, %rcx	# D.11432, tmp1574
	salq	$4, %rcx	#, tmp1575
	addq	%rcx, %rax	# tmp1575, tmp1576
	addq	$3276, %rax	#, tmp1577
	movl	%edx, 8(%rbx,%rax,4)	# D.11432, img.557_755->m7
	.loc 1 2461 0
	addl	$1, -520(%rbp)	#, coeff_ctr
.L613:
	.loc 1 2461 0 is_stmt 0 discriminator 1
	cmpl	$15, -520(%rbp)	#, coeff_ctr
	jle	.L636	#,
	.loc 1 2538 0 is_stmt 1
	movl	-508(%rbp), %eax	# scan_pos, tmp1578
	cltq
	leaq	0(,%rax,4), %rdx	#, D.11433
	movq	-368(%rbp), %rax	# ACLevel, tmp1579
	addq	%rdx, %rax	# D.11433, D.11441
	movl	$0, (%rax)	#, *_770
	.loc 1 2452 0
	addl	$4, -524(%rbp)	#, n1
.L612:
	.loc 1 2452 0 is_stmt 0 discriminator 1
	cmpl	$4, -524(%rbp)	#, n1
	jle	.L637	#,
	.loc 1 2450 0 is_stmt 1
	addl	$4, -528(%rbp)	#, n2
.L611:
	.loc 1 2450 0 is_stmt 0 discriminator 1
	cmpl	$4, -528(%rbp)	#, n2
	jle	.L638	#,
	.loc 1 2544 0 is_stmt 1
	cmpl	$2, -496(%rbp)	#, cr_cbp_tmp
	jne	.L639	#,
	.loc 1 2545 0
	movl	$2, -568(%rbp)	#, cr_cbp
.L639:
	.loc 1 2549 0
	movl	$0, -528(%rbp)	#, n2
	jmp	.L640	#
.L655:
	.loc 1 2551 0
	movl	$0, -524(%rbp)	#, n1
	jmp	.L641	#
.L654:
	.loc 1 2553 0
	movl	$0, -536(%rbp)	#, j
	jmp	.L642	#
.L647:
	.loc 1 2555 0
	movl	$0, -540(%rbp)	#, i
	jmp	.L643	#
.L644:
	.loc 1 2557 0 discriminator 2
	movq	img(%rip), %rax	# img, img.558
	movl	-540(%rbp), %edx	# i, tmp1580
	movl	-524(%rbp), %ecx	# n1, tmp1581
	leal	(%rcx,%rdx), %esi	#, D.11432
	movl	-536(%rbp), %edx	# j, tmp1582
	movl	-528(%rbp), %ecx	# n2, tmp1583
	addl	%ecx, %edx	# tmp1583, D.11432
	movslq	%edx, %rdx	# D.11432, tmp1584
	movslq	%esi, %rcx	# D.11432, tmp1585
	salq	$4, %rcx	#, tmp1586
	addq	%rcx, %rdx	# tmp1586, tmp1587
	addq	$3276, %rdx	#, tmp1588
	movl	8(%rax,%rdx,4), %edx	# img.558_778->m7, D.11432
	movl	-540(%rbp), %eax	# i, tmp1590
	cltq
	movl	%edx, -336(%rbp,%rax,4)	# D.11432, m5
	.loc 1 2555 0 discriminator 2
	addl	$1, -540(%rbp)	#, i
.L643:
	.loc 1 2555 0 is_stmt 0 discriminator 1
	cmpl	$3, -540(%rbp)	#, i
	jle	.L644	#,
	.loc 1 2559 0 is_stmt 1
	movl	-336(%rbp), %edx	# m5, D.11432
	movl	-328(%rbp), %eax	# m5, D.11432
	addl	%edx, %eax	# D.11432, D.11432
	movl	%eax, -320(%rbp)	# D.11432, m6
	.loc 1 2560 0
	movl	-336(%rbp), %edx	# m5, D.11432
	movl	-328(%rbp), %eax	# m5, D.11432
	subl	%eax, %edx	# D.11432, D.11432
	movl	%edx, %eax	# D.11432, D.11432
	movl	%eax, -316(%rbp)	# D.11432, m6
	.loc 1 2561 0
	movl	-332(%rbp), %eax	# m5, D.11432
	sarl	%eax	# D.11432
	movl	%eax, %edx	# D.11432, D.11432
	movl	-324(%rbp), %eax	# m5, D.11432
	subl	%eax, %edx	# D.11432, D.11432
	movl	%edx, %eax	# D.11432, D.11432
	movl	%eax, -312(%rbp)	# D.11432, m6
	.loc 1 2562 0
	movl	-332(%rbp), %eax	# m5, D.11432
	movl	-324(%rbp), %edx	# m5, D.11432
	sarl	%edx	# D.11432
	addl	%edx, %eax	# D.11432, D.11432
	movl	%eax, -308(%rbp)	# D.11432, m6
	.loc 1 2564 0
	movl	$0, -540(%rbp)	#, i
	jmp	.L645	#
.L646:
	.loc 1 2566 0 discriminator 2
	movl	$3, %eax	#, tmp1594
	subl	-540(%rbp), %eax	# i, tmp1593
	movl	%eax, -448(%rbp)	# tmp1593, i1
	.loc 1 2567 0 discriminator 2
	movq	img(%rip), %rax	# img, img.559
	movl	-540(%rbp), %edx	# i, tmp1595
	movl	-524(%rbp), %ecx	# n1, tmp1596
	leal	(%rcx,%rdx), %esi	#, D.11432
	movl	-536(%rbp), %edx	# j, tmp1597
	movl	-528(%rbp), %ecx	# n2, tmp1598
	leal	(%rcx,%rdx), %edi	#, D.11432
	movl	-540(%rbp), %edx	# i, tmp1600
	movslq	%edx, %rdx	# tmp1600, tmp1599
	movl	-320(%rbp,%rdx,4), %ecx	# m6, D.11432
	movl	-448(%rbp), %edx	# i1, tmp1602
	movslq	%edx, %rdx	# tmp1602, tmp1601
	movl	-320(%rbp,%rdx,4), %edx	# m6, D.11432
	addl	%edx, %ecx	# D.11432, D.11432
	movslq	%edi, %rdx	# D.11432, tmp1603
	movslq	%esi, %rsi	# D.11432, tmp1604
	salq	$4, %rsi	#, tmp1605
	addq	%rsi, %rdx	# tmp1605, tmp1606
	addq	$3276, %rdx	#, tmp1607
	movl	%ecx, 8(%rax,%rdx,4)	# D.11432, img.559_799->m7
	.loc 1 2568 0 discriminator 2
	movq	img(%rip), %rax	# img, img.560
	movl	-448(%rbp), %edx	# i1, tmp1608
	movl	-524(%rbp), %ecx	# n1, tmp1609
	leal	(%rcx,%rdx), %esi	#, D.11432
	movl	-536(%rbp), %edx	# j, tmp1610
	movl	-528(%rbp), %ecx	# n2, tmp1611
	leal	(%rcx,%rdx), %edi	#, D.11432
	movl	-540(%rbp), %edx	# i, tmp1613
	movslq	%edx, %rdx	# tmp1613, tmp1612
	movl	-320(%rbp,%rdx,4), %ecx	# m6, D.11432
	movl	-448(%rbp), %edx	# i1, tmp1615
	movslq	%edx, %rdx	# tmp1615, tmp1614
	movl	-320(%rbp,%rdx,4), %edx	# m6, D.11432
	subl	%edx, %ecx	# D.11432, D.11432
	movslq	%edi, %rdx	# D.11432, tmp1616
	movslq	%esi, %rsi	# D.11432, tmp1617
	salq	$4, %rsi	#, tmp1618
	addq	%rsi, %rdx	# tmp1618, tmp1619
	addq	$3276, %rdx	#, tmp1620
	movl	%ecx, 8(%rax,%rdx,4)	# D.11432, img.560_805->m7
	.loc 1 2564 0 discriminator 2
	addl	$1, -540(%rbp)	#, i
.L645:
	.loc 1 2564 0 is_stmt 0 discriminator 1
	cmpl	$1, -540(%rbp)	#, i
	jle	.L646	#,
	.loc 1 2553 0 is_stmt 1
	addl	$1, -536(%rbp)	#, j
.L642:
	.loc 1 2553 0 is_stmt 0 discriminator 1
	cmpl	$3, -536(%rbp)	#, j
	jle	.L647	#,
	.loc 1 2573 0 is_stmt 1
	movl	$0, -540(%rbp)	#, i
	jmp	.L648	#
.L653:
	.loc 1 2575 0
	movl	$0, -536(%rbp)	#, j
	jmp	.L649	#
.L650:
	.loc 1 2577 0 discriminator 2
	movq	img(%rip), %rax	# img, img.561
	movl	-540(%rbp), %edx	# i, tmp1621
	movl	-524(%rbp), %ecx	# n1, tmp1622
	leal	(%rcx,%rdx), %esi	#, D.11432
	movl	-536(%rbp), %edx	# j, tmp1623
	movl	-528(%rbp), %ecx	# n2, tmp1624
	addl	%ecx, %edx	# tmp1624, D.11432
	movslq	%edx, %rdx	# D.11432, tmp1625
	movslq	%esi, %rcx	# D.11432, tmp1626
	salq	$4, %rcx	#, tmp1627
	addq	%rcx, %rdx	# tmp1627, tmp1628
	addq	$3276, %rdx	#, tmp1629
	movl	8(%rax,%rdx,4), %edx	# img.561_815->m7, D.11432
	movl	-536(%rbp), %eax	# j, tmp1631
	cltq
	movl	%edx, -336(%rbp,%rax,4)	# D.11432, m5
	.loc 1 2575 0 discriminator 2
	addl	$1, -536(%rbp)	#, j
.L649:
	.loc 1 2575 0 is_stmt 0 discriminator 1
	cmpl	$3, -536(%rbp)	#, j
	jle	.L650	#,
	.loc 1 2579 0 is_stmt 1
	movl	-336(%rbp), %edx	# m5, D.11432
	movl	-328(%rbp), %eax	# m5, D.11432
	addl	%edx, %eax	# D.11432, D.11432
	movl	%eax, -320(%rbp)	# D.11432, m6
	.loc 1 2580 0
	movl	-336(%rbp), %edx	# m5, D.11432
	movl	-328(%rbp), %eax	# m5, D.11432
	subl	%eax, %edx	# D.11432, D.11432
	movl	%edx, %eax	# D.11432, D.11432
	movl	%eax, -316(%rbp)	# D.11432, m6
	.loc 1 2581 0
	movl	-332(%rbp), %eax	# m5, D.11432
	sarl	%eax	# D.11432
	movl	%eax, %edx	# D.11432, D.11432
	movl	-324(%rbp), %eax	# m5, D.11432
	subl	%eax, %edx	# D.11432, D.11432
	movl	%edx, %eax	# D.11432, D.11432
	movl	%eax, -312(%rbp)	# D.11432, m6
	.loc 1 2582 0
	movl	-332(%rbp), %eax	# m5, D.11432
	movl	-324(%rbp), %edx	# m5, D.11432
	sarl	%edx	# D.11432
	addl	%edx, %eax	# D.11432, D.11432
	movl	%eax, -308(%rbp)	# D.11432, m6
	.loc 1 2584 0
	movl	$0, -536(%rbp)	#, j
	jmp	.L651	#
.L652:
	.loc 1 2586 0 discriminator 2
	movl	$3, %eax	#, tmp1635
	subl	-536(%rbp), %eax	# j, tmp1634
	movl	%eax, -440(%rbp)	# tmp1634, j2
	.loc 1 2587 0 discriminator 2
	movq	img(%rip), %rcx	# img, img.562
	movl	-540(%rbp), %eax	# i, tmp1636
	movl	-524(%rbp), %edx	# n1, tmp1637
	leal	(%rdx,%rax), %esi	#, D.11432
	movl	-536(%rbp), %eax	# j, tmp1638
	movl	-528(%rbp), %edx	# n2, tmp1639
	leal	(%rdx,%rax), %edi	#, D.11432
	movl	-536(%rbp), %eax	# j, tmp1641
	cltq
	movl	-320(%rbp,%rax,4), %edx	# m6, D.11432
	movl	-440(%rbp), %eax	# j2, tmp1643
	cltq
	movl	-320(%rbp,%rax,4), %eax	# m6, D.11432
	addl	%edx, %eax	# D.11432, D.11432
	addl	$32, %eax	#, D.11432
	sarl	$6, %eax	#, D.11432
	movl	$0, %edx	#, tmp1644
	testl	%eax, %eax	# D.11432
	cmovns	%eax, %edx	# D.11432,, D.11432
	movq	img(%rip), %rax	# img, img.563
	movl	72688(%rax), %eax	# img.563_845->max_imgpel_value_uv, D.11432
	cmpl	%eax, %edx	# D.11432, D.11432
	cmovle	%edx, %eax	# D.11432,, D.11432
	movslq	%edi, %rdx	# D.11432, tmp1645
	movslq	%esi, %rsi	# D.11432, tmp1646
	salq	$4, %rsi	#, tmp1647
	addq	%rsi, %rdx	# tmp1647, tmp1648
	addq	$3276, %rdx	#, tmp1649
	movl	%eax, 8(%rcx,%rdx,4)	# D.11432, img.562_836->m7
	.loc 1 2588 0 discriminator 2
	movq	img(%rip), %rcx	# img, img.564
	movl	-540(%rbp), %eax	# i, tmp1650
	movl	-524(%rbp), %edx	# n1, tmp1651
	leal	(%rdx,%rax), %esi	#, D.11432
	movl	-440(%rbp), %eax	# j2, tmp1652
	movl	-528(%rbp), %edx	# n2, tmp1653
	leal	(%rdx,%rax), %edi	#, D.11432
	movl	-536(%rbp), %eax	# j, tmp1655
	cltq
	movl	-320(%rbp,%rax,4), %edx	# m6, D.11432
	movl	-440(%rbp), %eax	# j2, tmp1657
	cltq
	movl	-320(%rbp,%rax,4), %eax	# m6, D.11432
	subl	%eax, %edx	# D.11432, D.11432
	movl	%edx, %eax	# D.11432, D.11432
	addl	$32, %eax	#, D.11432
	sarl	$6, %eax	#, D.11432
	movl	$0, %edx	#, tmp1658
	testl	%eax, %eax	# D.11432
	cmovns	%eax, %edx	# D.11432,, D.11432
	movq	img(%rip), %rax	# img, img.565
	movl	72688(%rax), %eax	# img.565_857->max_imgpel_value_uv, D.11432
	cmpl	%eax, %edx	# D.11432, D.11432
	cmovle	%edx, %eax	# D.11432,, D.11432
	movslq	%edi, %rdx	# D.11432, tmp1659
	movslq	%esi, %rsi	# D.11432, tmp1660
	salq	$4, %rsi	#, tmp1661
	addq	%rsi, %rdx	# tmp1661, tmp1662
	addq	$3276, %rdx	#, tmp1663
	movl	%eax, 8(%rcx,%rdx,4)	# D.11432, img.564_848->m7
	.loc 1 2584 0 discriminator 2
	addl	$1, -536(%rbp)	#, j
.L651:
	.loc 1 2584 0 is_stmt 0 discriminator 1
	cmpl	$1, -536(%rbp)	#, j
	jle	.L652	#,
	.loc 1 2573 0 is_stmt 1
	addl	$1, -540(%rbp)	#, i
.L648:
	.loc 1 2573 0 is_stmt 0 discriminator 1
	cmpl	$3, -540(%rbp)	#, i
	jle	.L653	#,
	.loc 1 2551 0 is_stmt 1
	addl	$4, -524(%rbp)	#, n1
.L641:
	.loc 1 2551 0 is_stmt 0 discriminator 1
	cmpl	$4, -524(%rbp)	#, n1
	jle	.L654	#,
	.loc 1 2549 0 is_stmt 1
	addl	$4, -528(%rbp)	#, n2
.L640:
	.loc 1 2549 0 is_stmt 0 discriminator 1
	cmpl	$4, -528(%rbp)	#, n2
	jle	.L655	#,
	.loc 1 2595 0 is_stmt 1
	movl	$0, -536(%rbp)	#, j
	jmp	.L656	#
.L659:
	.loc 1 2596 0
	movl	$0, -540(%rbp)	#, i
	jmp	.L657	#
.L658:
	.loc 1 2598 0 discriminator 2
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.566
	movq	6464(%rax), %rax	# enc_picture.566_866->imgUV, D.11444
	movl	-564(%rbp), %edx	# uv, tmp1664
	movslq	%edx, %rdx	# tmp1664, D.11433
	salq	$3, %rdx	#, D.11433
	addq	%rdx, %rax	# D.11433, D.11444
	movq	(%rax), %rdx	# *_870, D.11445
	movq	img(%rip), %rax	# img, img.567
	movl	164(%rax), %ecx	# img.567_872->pix_c_y, D.11432
	movl	-536(%rbp), %eax	# j, tmp1665
	addl	%ecx, %eax	# D.11432, D.11432
	cltq
	salq	$3, %rax	#, D.11433
	addq	%rdx, %rax	# D.11445, D.11445
	movq	(%rax), %rdx	# *_877, D.11446
	movq	img(%rip), %rax	# img, img.568
	movl	160(%rax), %ecx	# img.568_879->pix_c_x, D.11432
	movl	-540(%rbp), %eax	# i, tmp1666
	addl	%ecx, %eax	# D.11432, D.11432
	cltq
	addq	%rax, %rax	# D.11433
	addq	%rax, %rdx	# D.11433, D.11446
	movq	img(%rip), %rax	# img, img.569
	movl	-536(%rbp), %ecx	# j, tmp1668
	movslq	%ecx, %rcx	# tmp1668, tmp1667
	movl	-540(%rbp), %esi	# i, tmp1670
	movslq	%esi, %rsi	# tmp1670, tmp1669
	salq	$4, %rsi	#, tmp1671
	addq	%rsi, %rcx	# tmp1671, tmp1672
	addq	$3276, %rcx	#, tmp1673
	movl	8(%rax,%rcx,4), %eax	# img.569_885->m7, D.11432
	movw	%ax, (%rdx)	# D.11439, *_884
	.loc 1 2596 0 discriminator 2
	addl	$1, -540(%rbp)	#, i
.L657:
	.loc 1 2596 0 is_stmt 0 discriminator 1
	cmpl	$7, -540(%rbp)	#, i
	jle	.L658	#,
	.loc 1 2595 0 is_stmt 1
	addl	$1, -536(%rbp)	#, j
.L656:
	.loc 1 2595 0 is_stmt 0 discriminator 1
	cmpl	$7, -536(%rbp)	#, j
	jle	.L659	#,
	.loc 1 2601 0 is_stmt 1
	movl	-568(%rbp), %eax	# cr_cbp, D.11432
	.loc 1 2602 0
	addq	$552, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	dct_chroma_sp, .-dct_chroma_sp
	.globl	copyblock_sp
	.type	copyblock_sp, @function
copyblock_sp:
.LFB11:
	.loc 1 2620 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$168, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -164(%rbp)	# block_x, block_x
	movl	%esi, -168(%rbp)	# block_y, block_y
	.loc 1 2625 0
	movq	img(%rip), %rax	# img, img.570
	movq	14168(%rax), %rdx	# img.570_17->mb_data, D.11447
	movq	img(%rip), %rax	# img, img.571
	movl	12(%rax), %eax	# img.571_19->current_mb_nr, D.11448
	cltq
	imulq	$632, %rax, %rax	#, D.11449, D.11449
	addq	%rdx, %rax	# D.11447, tmp205
	movq	%rax, -120(%rbp)	# tmp205, currMB
	.loc 1 2628 0
	movq	-120(%rbp), %rax	# currMB, tmp206
	movl	16(%rax), %ecx	# currMB_23->qpsp, D.11448
	movl	$715827883, %edx	#, tmp208
	movl	%ecx, %eax	# D.11448, tmp469
	imull	%edx	# tmp208
	movl	%ecx, %eax	# D.11448, tmp209
	sarl	$31, %eax	#, tmp209
	subl	%eax, %edx	# tmp209, tmp210
	movl	%edx, %eax	# tmp210, tmp210
	movl	%eax, -144(%rbp)	# tmp210, qp_per
	.loc 1 2629 0
	movq	-120(%rbp), %rax	# currMB, tmp211
	movl	16(%rax), %ecx	# currMB_23->qpsp, D.11448
	movl	$715827883, %edx	#, tmp213
	movl	%ecx, %eax	# D.11448, tmp470
	imull	%edx	# tmp213
	movl	%ecx, %eax	# D.11448, tmp214
	sarl	$31, %eax	#, tmp214
	subl	%eax, %edx	# tmp214, tmp215
	movl	%edx, %eax	# tmp215, tmp215
	movl	%eax, -140(%rbp)	# tmp215, qp_rem
	movl	-140(%rbp), %edx	# qp_rem, tmp216
	movl	%edx, %eax	# tmp216, tmp217
	addl	%eax, %eax	# tmp217
	addl	%edx, %eax	# tmp216, tmp217
	addl	%eax, %eax	# tmp218
	subl	%eax, %ecx	# tmp217, tmp219
	movl	%ecx, %eax	# tmp219, tmp219
	movl	%eax, -140(%rbp)	# tmp219, qp_rem
	.loc 1 2630 0
	movl	-144(%rbp), %eax	# qp_per, tmp223
	addl	$15, %eax	#, tmp222
	movl	%eax, -136(%rbp)	# tmp222, q_bits
	.loc 1 2631 0
	movl	-136(%rbp), %eax	# q_bits, tmp224
	movl	$1, %edx	#, tmp225
	movl	%eax, %ecx	# tmp224, tmp479
	sall	%cl, %edx	# tmp479, D.11448
	movl	%edx, %eax	# D.11448, D.11448
	movl	%eax, %edx	# D.11448, tmp226
	shrl	$31, %edx	#, tmp226
	addl	%edx, %eax	# tmp226, tmp227
	sarl	%eax	# tmp228
	movl	%eax, -132(%rbp)	# tmp228, qp_const2
	.loc 1 2634 0
	movl	$0, -148(%rbp)	#, j
	jmp	.L668	#
.L671:
	.loc 1 2635 0
	movl	$0, -152(%rbp)	#, i
	jmp	.L669	#
.L670:
	.loc 1 2637 0 discriminator 2
	movq	img(%rip), %rax	# img, img.572
	movl	-164(%rbp), %edx	# block_x, tmp229
	movl	-152(%rbp), %ecx	# i, tmp230
	leal	(%rcx,%rdx), %esi	#, D.11448
	movl	-168(%rbp), %edx	# block_y, tmp231
	movl	-148(%rbp), %ecx	# j, tmp232
	addl	%ecx, %edx	# tmp232, D.11448
	movslq	%edx, %rdx	# D.11448, tmp233
	movslq	%esi, %rcx	# D.11448, tmp234
	salq	$4, %rcx	#, tmp235
	addq	%rcx, %rdx	# tmp235, tmp236
	addq	$6296, %rdx	#, tmp237
	movzwl	8(%rax,%rdx,2), %eax	# img.572_33->mpr, D.11450
	movzwl	%ax, %eax	# D.11450, D.11448
	movl	-148(%rbp), %edx	# j, tmp239
	movslq	%edx, %rdx	# tmp239, tmp238
	movl	-152(%rbp), %ecx	# i, tmp241
	movslq	%ecx, %rcx	# tmp241, tmp240
	salq	$2, %rcx	#, tmp242
	addq	%rcx, %rdx	# tmp242, tmp243
	movl	%eax, -80(%rbp,%rdx,4)	# D.11448, predicted_block
	.loc 1 2635 0 discriminator 2
	addl	$1, -152(%rbp)	#, i
.L669:
	.loc 1 2635 0 is_stmt 0 discriminator 1
	cmpl	$3, -152(%rbp)	#, i
	jle	.L670	#,
	.loc 1 2634 0 is_stmt 1
	addl	$1, -148(%rbp)	#, j
.L668:
	.loc 1 2634 0 is_stmt 0 discriminator 1
	cmpl	$3, -148(%rbp)	#, j
	jle	.L671	#,
	.loc 1 2640 0 is_stmt 1
	movl	$0, -148(%rbp)	#, j
	jmp	.L672	#
.L675:
	.loc 1 2642 0
	movl	$0, -152(%rbp)	#, i
	jmp	.L673	#
.L674:
	.loc 1 2644 0 discriminator 2
	movl	$3, %eax	#, tmp247
	subl	-152(%rbp), %eax	# i, tmp246
	movl	%eax, -128(%rbp)	# tmp246, i1
	.loc 1 2645 0 discriminator 2
	movl	-148(%rbp), %eax	# j, tmp249
	cltq
	movl	-152(%rbp), %edx	# i, tmp251
	movslq	%edx, %rdx	# tmp251, tmp250
	salq	$2, %rdx	#, tmp252
	addq	%rdx, %rax	# tmp252, tmp253
	movl	-80(%rbp,%rax,4), %edx	# predicted_block, D.11448
	movl	-148(%rbp), %eax	# j, tmp255
	cltq
	movl	-128(%rbp), %ecx	# i1, tmp257
	movslq	%ecx, %rcx	# tmp257, tmp256
	salq	$2, %rcx	#, tmp258
	addq	%rcx, %rax	# tmp258, tmp259
	movl	-80(%rbp,%rax,4), %eax	# predicted_block, D.11448
	addl	%eax, %edx	# D.11448, D.11448
	movl	-152(%rbp), %eax	# i, tmp261
	cltq
	movl	%edx, -112(%rbp,%rax,4)	# D.11448, m5
	.loc 1 2646 0 discriminator 2
	movl	-148(%rbp), %eax	# j, tmp263
	cltq
	movl	-152(%rbp), %edx	# i, tmp265
	movslq	%edx, %rdx	# tmp265, tmp264
	salq	$2, %rdx	#, tmp266
	addq	%rdx, %rax	# tmp266, tmp267
	movl	-80(%rbp,%rax,4), %edx	# predicted_block, D.11448
	movl	-148(%rbp), %eax	# j, tmp269
	cltq
	movl	-128(%rbp), %ecx	# i1, tmp271
	movslq	%ecx, %rcx	# tmp271, tmp270
	salq	$2, %rcx	#, tmp272
	addq	%rcx, %rax	# tmp272, tmp273
	movl	-80(%rbp,%rax,4), %eax	# predicted_block, D.11448
	subl	%eax, %edx	# D.11448, D.11448
	movl	-128(%rbp), %eax	# i1, tmp275
	cltq
	movl	%edx, -112(%rbp,%rax,4)	# D.11448, m5
	.loc 1 2642 0 discriminator 2
	addl	$1, -152(%rbp)	#, i
.L673:
	.loc 1 2642 0 is_stmt 0 discriminator 1
	cmpl	$1, -152(%rbp)	#, i
	jle	.L674	#,
	.loc 1 2648 0 is_stmt 1
	movl	-112(%rbp), %edx	# m5, D.11448
	movl	-108(%rbp), %eax	# m5, D.11448
	addl	%eax, %edx	# D.11448, D.11448
	movl	-148(%rbp), %eax	# j, tmp277
	cltq
	movl	%edx, -80(%rbp,%rax,4)	# D.11448, predicted_block
	.loc 1 2649 0
	movl	-112(%rbp), %edx	# m5, D.11448
	movl	-108(%rbp), %eax	# m5, D.11448
	subl	%eax, %edx	# D.11448, D.11448
	movl	-148(%rbp), %eax	# j, tmp279
	cltq
	addq	$8, %rax	#, tmp280
	movl	%edx, -80(%rbp,%rax,4)	# D.11448, predicted_block
	.loc 1 2650 0
	movl	-100(%rbp), %eax	# m5, D.11448
	leal	(%rax,%rax), %edx	#, D.11448
	movl	-104(%rbp), %eax	# m5, D.11448
	addl	%eax, %edx	# D.11448, D.11448
	movl	-148(%rbp), %eax	# j, tmp282
	cltq
	addq	$4, %rax	#, tmp283
	movl	%edx, -80(%rbp,%rax,4)	# D.11448, predicted_block
	.loc 1 2651 0
	movl	-100(%rbp), %edx	# m5, D.11448
	movl	-104(%rbp), %ecx	# m5, D.11448
	movl	$0, %eax	#, tmp284
	subl	%ecx, %eax	# D.11448, tmp284
	addl	%eax, %eax	# tmp285
	addl	%eax, %edx	# D.11448, D.11448
	movl	-148(%rbp), %eax	# j, tmp287
	cltq
	addq	$12, %rax	#, tmp288
	movl	%edx, -80(%rbp,%rax,4)	# D.11448, predicted_block
	.loc 1 2640 0
	addl	$1, -148(%rbp)	#, j
.L672:
	.loc 1 2640 0 is_stmt 0 discriminator 1
	cmpl	$3, -148(%rbp)	#, j
	jle	.L675	#,
	.loc 1 2656 0 is_stmt 1
	movl	$0, -152(%rbp)	#, i
	jmp	.L676	#
.L679:
	.loc 1 2658 0
	movl	$0, -148(%rbp)	#, j
	jmp	.L677	#
.L678:
	.loc 1 2660 0 discriminator 2
	movl	$3, %eax	#, tmp292
	subl	-148(%rbp), %eax	# j, tmp291
	movl	%eax, -124(%rbp)	# tmp291, j1
	.loc 1 2661 0 discriminator 2
	movl	-148(%rbp), %eax	# j, tmp294
	cltq
	movl	-152(%rbp), %edx	# i, tmp296
	movslq	%edx, %rdx	# tmp296, tmp295
	salq	$2, %rdx	#, tmp297
	addq	%rdx, %rax	# tmp297, tmp298
	movl	-80(%rbp,%rax,4), %edx	# predicted_block, D.11448
	movl	-124(%rbp), %eax	# j1, tmp300
	cltq
	movl	-152(%rbp), %ecx	# i, tmp302
	movslq	%ecx, %rcx	# tmp302, tmp301
	salq	$2, %rcx	#, tmp303
	addq	%rcx, %rax	# tmp303, tmp304
	movl	-80(%rbp,%rax,4), %eax	# predicted_block, D.11448
	addl	%eax, %edx	# D.11448, D.11448
	movl	-148(%rbp), %eax	# j, tmp306
	cltq
	movl	%edx, -112(%rbp,%rax,4)	# D.11448, m5
	.loc 1 2662 0 discriminator 2
	movl	-148(%rbp), %eax	# j, tmp308
	cltq
	movl	-152(%rbp), %edx	# i, tmp310
	movslq	%edx, %rdx	# tmp310, tmp309
	salq	$2, %rdx	#, tmp311
	addq	%rdx, %rax	# tmp311, tmp312
	movl	-80(%rbp,%rax,4), %edx	# predicted_block, D.11448
	movl	-124(%rbp), %eax	# j1, tmp314
	cltq
	movl	-152(%rbp), %ecx	# i, tmp316
	movslq	%ecx, %rcx	# tmp316, tmp315
	salq	$2, %rcx	#, tmp317
	addq	%rcx, %rax	# tmp317, tmp318
	movl	-80(%rbp,%rax,4), %eax	# predicted_block, D.11448
	subl	%eax, %edx	# D.11448, D.11448
	movl	-124(%rbp), %eax	# j1, tmp320
	cltq
	movl	%edx, -112(%rbp,%rax,4)	# D.11448, m5
	.loc 1 2658 0 discriminator 2
	addl	$1, -148(%rbp)	#, j
.L677:
	.loc 1 2658 0 is_stmt 0 discriminator 1
	cmpl	$1, -148(%rbp)	#, j
	jle	.L678	#,
	.loc 1 2664 0 is_stmt 1
	movl	-112(%rbp), %edx	# m5, D.11448
	movl	-108(%rbp), %eax	# m5, D.11448
	addl	%eax, %edx	# D.11448, D.11448
	movl	-152(%rbp), %eax	# i, tmp322
	cltq
	salq	$4, %rax	#, tmp323
	leaq	-16(%rbp), %rbx	#, tmp481
	addq	%rbx, %rax	# tmp481, tmp324
	subq	$64, %rax	#, tmp325
	movl	%edx, (%rax)	# D.11448, predicted_block
	.loc 1 2665 0
	movl	-112(%rbp), %edx	# m5, D.11448
	movl	-108(%rbp), %eax	# m5, D.11448
	subl	%eax, %edx	# D.11448, D.11448
	movl	-152(%rbp), %eax	# i, tmp327
	cltq
	salq	$4, %rax	#, tmp328
	leaq	-16(%rbp), %rbx	#, tmp482
	addq	%rbx, %rax	# tmp482, tmp329
	subq	$56, %rax	#, tmp330
	movl	%edx, (%rax)	# D.11448, predicted_block
	.loc 1 2666 0
	movl	-100(%rbp), %eax	# m5, D.11448
	leal	(%rax,%rax), %edx	#, D.11448
	movl	-104(%rbp), %eax	# m5, D.11448
	addl	%eax, %edx	# D.11448, D.11448
	movl	-152(%rbp), %eax	# i, tmp332
	cltq
	salq	$4, %rax	#, tmp333
	leaq	-16(%rbp), %rdi	#, tmp483
	addq	%rdi, %rax	# tmp483, tmp334
	subq	$60, %rax	#, tmp335
	movl	%edx, (%rax)	# D.11448, predicted_block
	.loc 1 2667 0
	movl	-100(%rbp), %edx	# m5, D.11448
	movl	-104(%rbp), %ecx	# m5, D.11448
	movl	$0, %eax	#, tmp336
	subl	%ecx, %eax	# D.11448, tmp336
	addl	%eax, %eax	# tmp337
	addl	%eax, %edx	# D.11448, D.11448
	movl	-152(%rbp), %eax	# i, tmp339
	cltq
	salq	$4, %rax	#, tmp340
	leaq	-16(%rbp), %rbx	#, tmp484
	addq	%rbx, %rax	# tmp484, tmp341
	subq	$52, %rax	#, tmp342
	movl	%edx, (%rax)	# D.11448, predicted_block
	.loc 1 2656 0
	addl	$1, -152(%rbp)	#, i
.L676:
	.loc 1 2656 0 is_stmt 0 discriminator 1
	cmpl	$3, -152(%rbp)	#, i
	jle	.L679	#,
	.loc 1 2671 0 is_stmt 1
	movl	$0, -148(%rbp)	#, j
	jmp	.L680	#
.L683:
	.loc 1 2672 0
	movl	$0, -152(%rbp)	#, i
	jmp	.L681	#
.L682:
	.loc 1 2673 0 discriminator 2
	movq	img(%rip), %rbx	# img, img.573
	movl	-148(%rbp), %eax	# j, tmp344
	cltq
	movl	-152(%rbp), %edx	# i, tmp346
	movslq	%edx, %rdx	# tmp346, tmp345
	salq	$2, %rdx	#, tmp347
	addq	%rdx, %rax	# tmp347, tmp348
	movl	-80(%rbp,%rax,4), %esi	# predicted_block, D.11448
	movl	-148(%rbp), %eax	# j, tmp350
	cltq
	movl	-152(%rbp), %edx	# i, tmp352
	movslq	%edx, %rdx	# tmp352, tmp351
	salq	$2, %rdx	#, tmp353
	addq	%rdx, %rax	# tmp353, tmp354
	movl	-80(%rbp,%rax,4), %eax	# predicted_block, D.11448
	cltd
	xorl	%edx, %eax	# tmp355, D.11448
	subl	%edx, %eax	# tmp355, D.11448
	movl	-148(%rbp), %edx	# j, tmp357
	movslq	%edx, %rdx	# tmp357, tmp356
	movl	-140(%rbp), %ecx	# qp_rem, tmp359
	movslq	%ecx, %rdi	# tmp359, tmp358
	movl	-152(%rbp), %ecx	# i, tmp361
	movslq	%ecx, %rcx	# tmp361, tmp360
	salq	$2, %rdi	#, tmp362
	addq	%rdi, %rcx	# tmp362, tmp363
	salq	$2, %rcx	#, tmp364
	addq	%rcx, %rdx	# tmp364, tmp365
	movl	quant_coef(,%rdx,4), %edx	# quant_coef, D.11448
	imull	%eax, %edx	# D.11448, D.11448
	movl	-132(%rbp), %eax	# qp_const2, tmp366
	addl	%eax, %edx	# tmp366, D.11448
	movl	-136(%rbp), %eax	# q_bits, tmp367
	movl	%eax, %ecx	# tmp367, tmp486
	sarl	%cl, %edx	# tmp486, D.11448
	movl	%edx, %eax	# D.11448, D.11448
	movl	%eax, %edi	# D.11448,
	call	sign	#
	movl	-148(%rbp), %edx	# j, tmp369
	movslq	%edx, %rdx	# tmp369, tmp368
	movl	-140(%rbp), %ecx	# qp_rem, tmp371
	movslq	%ecx, %rsi	# tmp371, tmp370
	movl	-152(%rbp), %ecx	# i, tmp373
	movslq	%ecx, %rcx	# tmp373, tmp372
	salq	$2, %rsi	#, tmp374
	addq	%rsi, %rcx	# tmp374, tmp375
	salq	$2, %rcx	#, tmp376
	addq	%rcx, %rdx	# tmp376, tmp377
	movl	dequant_coef(,%rdx,4), %edx	# dequant_coef, D.11448
	imull	%eax, %edx	# D.11448, D.11448
	movl	-144(%rbp), %eax	# qp_per, tmp378
	movl	%eax, %ecx	# tmp378, tmp487
	sall	%cl, %edx	# tmp487, D.11448
	movl	-148(%rbp), %eax	# j, tmp380
	cltq
	movl	-152(%rbp), %ecx	# i, tmp382
	movslq	%ecx, %rcx	# tmp382, tmp381
	salq	$4, %rcx	#, tmp383
	addq	%rcx, %rax	# tmp383, tmp384
	addq	$3276, %rax	#, tmp385
	movl	%edx, 8(%rbx,%rax,4)	# D.11448, img.573_94->m7
	.loc 1 2672 0 discriminator 2
	addl	$1, -152(%rbp)	#, i
.L681:
	.loc 1 2672 0 is_stmt 0 discriminator 1
	cmpl	$3, -152(%rbp)	#, i
	jle	.L682	#,
	.loc 1 2671 0 is_stmt 1
	addl	$1, -148(%rbp)	#, j
.L680:
	.loc 1 2671 0 is_stmt 0 discriminator 1
	cmpl	$3, -148(%rbp)	#, j
	jle	.L683	#,
	.loc 1 2678 0 is_stmt 1
	movl	$0, -148(%rbp)	#, j
	jmp	.L684	#
.L689:
	.loc 1 2680 0
	movl	$0, -152(%rbp)	#, i
	jmp	.L685	#
.L686:
	.loc 1 2682 0 discriminator 2
	movq	img(%rip), %rax	# img, img.574
	movl	-148(%rbp), %edx	# j, tmp387
	movslq	%edx, %rdx	# tmp387, tmp386
	movl	-152(%rbp), %ecx	# i, tmp389
	movslq	%ecx, %rcx	# tmp389, tmp388
	salq	$4, %rcx	#, tmp390
	addq	%rcx, %rdx	# tmp390, tmp391
	addq	$3276, %rdx	#, tmp392
	movl	8(%rax,%rdx,4), %edx	# img.574_110->m7, D.11448
	movl	-152(%rbp), %eax	# i, tmp394
	cltq
	movl	%edx, -112(%rbp,%rax,4)	# D.11448, m5
	.loc 1 2680 0 discriminator 2
	addl	$1, -152(%rbp)	#, i
.L685:
	.loc 1 2680 0 is_stmt 0 discriminator 1
	cmpl	$3, -152(%rbp)	#, i
	jle	.L686	#,
	.loc 1 2684 0 is_stmt 1
	movl	-112(%rbp), %edx	# m5, D.11448
	movl	-104(%rbp), %eax	# m5, D.11448
	addl	%edx, %eax	# D.11448, D.11448
	movl	%eax, -96(%rbp)	# D.11448, m6
	.loc 1 2685 0
	movl	-112(%rbp), %edx	# m5, D.11448
	movl	-104(%rbp), %eax	# m5, D.11448
	subl	%eax, %edx	# D.11448, D.11448
	movl	%edx, %eax	# D.11448, D.11448
	movl	%eax, -92(%rbp)	# D.11448, m6
	.loc 1 2686 0
	movl	-108(%rbp), %eax	# m5, D.11448
	sarl	%eax	# D.11448
	movl	%eax, %edx	# D.11448, D.11448
	movl	-100(%rbp), %eax	# m5, D.11448
	subl	%eax, %edx	# D.11448, D.11448
	movl	%edx, %eax	# D.11448, D.11448
	movl	%eax, -88(%rbp)	# D.11448, m6
	.loc 1 2687 0
	movl	-108(%rbp), %eax	# m5, D.11448
	movl	-100(%rbp), %edx	# m5, D.11448
	sarl	%edx	# D.11448
	addl	%edx, %eax	# D.11448, D.11448
	movl	%eax, -84(%rbp)	# D.11448, m6
	.loc 1 2689 0
	movl	$0, -152(%rbp)	#, i
	jmp	.L687	#
.L688:
	.loc 1 2691 0 discriminator 2
	movl	$3, %eax	#, tmp398
	subl	-152(%rbp), %eax	# i, tmp397
	movl	%eax, -128(%rbp)	# tmp397, i1
	.loc 1 2692 0 discriminator 2
	movq	img(%rip), %rax	# img, img.575
	movl	-152(%rbp), %edx	# i, tmp400
	movslq	%edx, %rdx	# tmp400, tmp399
	movl	-96(%rbp,%rdx,4), %ecx	# m6, D.11448
	movl	-128(%rbp), %edx	# i1, tmp402
	movslq	%edx, %rdx	# tmp402, tmp401
	movl	-96(%rbp,%rdx,4), %edx	# m6, D.11448
	addl	%edx, %ecx	# D.11448, D.11448
	movl	-148(%rbp), %edx	# j, tmp404
	movslq	%edx, %rdx	# tmp404, tmp403
	movl	-152(%rbp), %esi	# i, tmp406
	movslq	%esi, %rsi	# tmp406, tmp405
	salq	$4, %rsi	#, tmp407
	addq	%rsi, %rdx	# tmp407, tmp408
	addq	$3276, %rdx	#, tmp409
	movl	%ecx, 8(%rax,%rdx,4)	# D.11448, img.575_129->m7
	.loc 1 2693 0 discriminator 2
	movq	img(%rip), %rax	# img, img.576
	movl	-152(%rbp), %edx	# i, tmp411
	movslq	%edx, %rdx	# tmp411, tmp410
	movl	-96(%rbp,%rdx,4), %ecx	# m6, D.11448
	movl	-128(%rbp), %edx	# i1, tmp413
	movslq	%edx, %rdx	# tmp413, tmp412
	movl	-96(%rbp,%rdx,4), %edx	# m6, D.11448
	subl	%edx, %ecx	# D.11448, D.11448
	movl	-148(%rbp), %edx	# j, tmp415
	movslq	%edx, %rdx	# tmp415, tmp414
	movl	-128(%rbp), %esi	# i1, tmp417
	movslq	%esi, %rsi	# tmp417, tmp416
	salq	$4, %rsi	#, tmp418
	addq	%rsi, %rdx	# tmp418, tmp419
	addq	$3276, %rdx	#, tmp420
	movl	%ecx, 8(%rax,%rdx,4)	# D.11448, img.576_133->m7
	.loc 1 2689 0 discriminator 2
	addl	$1, -152(%rbp)	#, i
.L687:
	.loc 1 2689 0 is_stmt 0 discriminator 1
	cmpl	$1, -152(%rbp)	#, i
	jle	.L688	#,
	.loc 1 2678 0 is_stmt 1
	addl	$1, -148(%rbp)	#, j
.L684:
	.loc 1 2678 0 is_stmt 0 discriminator 1
	cmpl	$3, -148(%rbp)	#, j
	jle	.L689	#,
	.loc 1 2697 0 is_stmt 1
	movl	$0, -152(%rbp)	#, i
	jmp	.L690	#
.L695:
	.loc 1 2699 0
	movl	$0, -148(%rbp)	#, j
	jmp	.L691	#
.L692:
	.loc 1 2700 0 discriminator 2
	movq	img(%rip), %rax	# img, img.577
	movl	-148(%rbp), %edx	# j, tmp422
	movslq	%edx, %rdx	# tmp422, tmp421
	movl	-152(%rbp), %ecx	# i, tmp424
	movslq	%ecx, %rcx	# tmp424, tmp423
	salq	$4, %rcx	#, tmp425
	addq	%rcx, %rdx	# tmp425, tmp426
	addq	$3276, %rdx	#, tmp427
	movl	8(%rax,%rdx,4), %edx	# img.577_141->m7, D.11448
	movl	-148(%rbp), %eax	# j, tmp429
	cltq
	movl	%edx, -112(%rbp,%rax,4)	# D.11448, m5
	.loc 1 2699 0 discriminator 2
	addl	$1, -148(%rbp)	#, j
.L691:
	.loc 1 2699 0 is_stmt 0 discriminator 1
	cmpl	$3, -148(%rbp)	#, j
	jle	.L692	#,
	.loc 1 2702 0 is_stmt 1
	movl	-112(%rbp), %edx	# m5, D.11448
	movl	-104(%rbp), %eax	# m5, D.11448
	addl	%edx, %eax	# D.11448, D.11448
	movl	%eax, -96(%rbp)	# D.11448, m6
	.loc 1 2703 0
	movl	-112(%rbp), %edx	# m5, D.11448
	movl	-104(%rbp), %eax	# m5, D.11448
	subl	%eax, %edx	# D.11448, D.11448
	movl	%edx, %eax	# D.11448, D.11448
	movl	%eax, -92(%rbp)	# D.11448, m6
	.loc 1 2704 0
	movl	-108(%rbp), %eax	# m5, D.11448
	sarl	%eax	# D.11448
	movl	%eax, %edx	# D.11448, D.11448
	movl	-100(%rbp), %eax	# m5, D.11448
	subl	%eax, %edx	# D.11448, D.11448
	movl	%edx, %eax	# D.11448, D.11448
	movl	%eax, -88(%rbp)	# D.11448, m6
	.loc 1 2705 0
	movl	-108(%rbp), %eax	# m5, D.11448
	movl	-100(%rbp), %edx	# m5, D.11448
	sarl	%edx	# D.11448
	addl	%edx, %eax	# D.11448, D.11448
	movl	%eax, -84(%rbp)	# D.11448, m6
	.loc 1 2707 0
	movl	$0, -148(%rbp)	#, j
	jmp	.L693	#
.L694:
	.loc 1 2709 0 discriminator 2
	movl	$3, %eax	#, tmp433
	subl	-148(%rbp), %eax	# j, tmp432
	movl	%eax, -124(%rbp)	# tmp432, j1
	.loc 1 2710 0 discriminator 2
	movq	img(%rip), %rcx	# img, img.578
	movl	-148(%rbp), %eax	# j, tmp435
	cltq
	movl	-96(%rbp,%rax,4), %edx	# m6, D.11448
	movl	-124(%rbp), %eax	# j1, tmp437
	cltq
	movl	-96(%rbp,%rax,4), %eax	# m6, D.11448
	addl	%edx, %eax	# D.11448, D.11448
	addl	$32, %eax	#, D.11448
	sarl	$6, %eax	#, D.11448
	movl	$0, %edx	#, tmp438
	testl	%eax, %eax	# D.11448
	cmovns	%eax, %edx	# D.11448,, D.11448
	movq	img(%rip), %rax	# img, img.579
	movl	72684(%rax), %eax	# img.579_167->max_imgpel_value, D.11448
	cmpl	%eax, %edx	# D.11448, D.11448
	cmovle	%edx, %eax	# D.11448,, D.11448
	movl	-148(%rbp), %edx	# j, tmp440
	movslq	%edx, %rdx	# tmp440, tmp439
	movl	-152(%rbp), %esi	# i, tmp442
	movslq	%esi, %rsi	# tmp442, tmp441
	salq	$4, %rsi	#, tmp443
	addq	%rsi, %rdx	# tmp443, tmp444
	addq	$3276, %rdx	#, tmp445
	movl	%eax, 8(%rcx,%rdx,4)	# D.11448, img.578_160->m7
	.loc 1 2711 0 discriminator 2
	movq	img(%rip), %rcx	# img, img.580
	movl	-148(%rbp), %eax	# j, tmp447
	cltq
	movl	-96(%rbp,%rax,4), %edx	# m6, D.11448
	movl	-124(%rbp), %eax	# j1, tmp449
	cltq
	movl	-96(%rbp,%rax,4), %eax	# m6, D.11448
	subl	%eax, %edx	# D.11448, D.11448
	movl	%edx, %eax	# D.11448, D.11448
	addl	$32, %eax	#, D.11448
	sarl	$6, %eax	#, D.11448
	movl	$0, %edx	#, tmp450
	testl	%eax, %eax	# D.11448
	cmovns	%eax, %edx	# D.11448,, D.11448
	movq	img(%rip), %rax	# img, img.581
	movl	72684(%rax), %eax	# img.581_177->max_imgpel_value, D.11448
	cmpl	%eax, %edx	# D.11448, D.11448
	cmovle	%edx, %eax	# D.11448,, D.11448
	movl	-124(%rbp), %edx	# j1, tmp452
	movslq	%edx, %rdx	# tmp452, tmp451
	movl	-152(%rbp), %esi	# i, tmp454
	movslq	%esi, %rsi	# tmp454, tmp453
	salq	$4, %rsi	#, tmp455
	addq	%rsi, %rdx	# tmp455, tmp456
	addq	$3276, %rdx	#, tmp457
	movl	%eax, 8(%rcx,%rdx,4)	# D.11448, img.580_170->m7
	.loc 1 2707 0 discriminator 2
	addl	$1, -148(%rbp)	#, j
.L693:
	.loc 1 2707 0 is_stmt 0 discriminator 1
	cmpl	$1, -148(%rbp)	#, j
	jle	.L694	#,
	.loc 1 2697 0 is_stmt 1
	addl	$1, -152(%rbp)	#, i
.L690:
	.loc 1 2697 0 is_stmt 0 discriminator 1
	cmpl	$3, -152(%rbp)	#, i
	jle	.L695	#,
	.loc 1 2717 0 is_stmt 1
	movl	$0, -148(%rbp)	#, j
	jmp	.L696	#
.L699:
	.loc 1 2718 0
	movl	$0, -152(%rbp)	#, i
	jmp	.L697	#
.L698:
	.loc 1 2719 0 discriminator 2
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.582
	movq	6424(%rax), %rdx	# enc_picture.582_184->imgY, D.11451
	movq	img(%rip), %rax	# img, img.583
	movl	156(%rax), %ecx	# img.583_186->pix_y, D.11448
	movl	-168(%rbp), %eax	# block_y, tmp458
	addl	%eax, %ecx	# tmp458, D.11448
	movl	-148(%rbp), %eax	# j, tmp459
	addl	%ecx, %eax	# D.11448, D.11448
	cltq
	salq	$3, %rax	#, D.11449
	addq	%rdx, %rax	# D.11451, D.11451
	movq	(%rax), %rdx	# *_192, D.11452
	movq	img(%rip), %rax	# img, img.584
	movl	152(%rax), %ecx	# img.584_194->pix_x, D.11448
	movl	-164(%rbp), %eax	# block_x, tmp460
	addl	%eax, %ecx	# tmp460, D.11448
	movl	-152(%rbp), %eax	# i, tmp461
	addl	%ecx, %eax	# D.11448, D.11448
	cltq
	addq	%rax, %rax	# D.11449
	addq	%rax, %rdx	# D.11449, D.11452
	movq	img(%rip), %rax	# img, img.585
	movl	-148(%rbp), %ecx	# j, tmp463
	movslq	%ecx, %rcx	# tmp463, tmp462
	movl	-152(%rbp), %esi	# i, tmp465
	movslq	%esi, %rsi	# tmp465, tmp464
	salq	$4, %rsi	#, tmp466
	addq	%rsi, %rcx	# tmp466, tmp467
	addq	$3276, %rcx	#, tmp468
	movl	8(%rax,%rcx,4), %eax	# img.585_201->m7, D.11448
	movw	%ax, (%rdx)	# D.11450, *_200
	.loc 1 2718 0 discriminator 2
	addl	$1, -152(%rbp)	#, i
.L697:
	.loc 1 2718 0 is_stmt 0 discriminator 1
	cmpl	$3, -152(%rbp)	#, i
	jle	.L698	#,
	.loc 1 2717 0 is_stmt 1
	addl	$1, -148(%rbp)	#, j
.L696:
	.loc 1 2717 0 is_stmt 0 discriminator 1
	cmpl	$3, -148(%rbp)	#, j
	jle	.L699	#,
	.loc 1 2720 0 is_stmt 1
	addq	$168, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	copyblock_sp, .-copyblock_sp
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	1074266112
	.align 8
.LC2:
	.long	858993459
	.long	1072378675
	.align 8
.LC3:
	.long	0
	.long	1074790400
	.text
.Letext0:
	.file 2 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 3 "defines.h"
	.file 4 "parsetcommon.h"
	.file 5 "global.h"
	.file 6 "mbuffer.h"
	.file 7 "block.h"
	.file 8 "q_matrix.h"
	.file 9 "q_offsets.h"
	.file 10 "image.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x3a85
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF648
	.byte	0x1
	.long	.LASF649
	.long	.LASF650
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x4
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
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x4
	.long	0x34
	.long	0x75
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF7
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF8
	.uleb128 0x6
	.byte	0x8
	.long	0x34
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x7
	.long	.LASF13
	.byte	0x2
	.byte	0xc5
	.long	0x5e
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF11
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF12
	.uleb128 0x7
	.long	.LASF14
	.byte	0x3
	.byte	0x1e
	.long	0x3b
	.uleb128 0x8
	.byte	0x4
	.byte	0x4
	.byte	0x2a
	.long	0xd0
	.uleb128 0x9
	.long	.LASF15
	.sleb128 0
	.uleb128 0x9
	.long	.LASF16
	.sleb128 1
	.byte	0
	.uleb128 0x7
	.long	.LASF17
	.byte	0x4
	.byte	0x2d
	.long	0xbb
	.uleb128 0xa
	.byte	0xf0
	.byte	0x4
	.byte	0x67
	.long	0x24c
	.uleb128 0xb
	.long	.LASF18
	.byte	0x4
	.byte	0x69
	.long	0xd0
	.byte	0
	.uleb128 0xb
	.long	.LASF19
	.byte	0x4
	.byte	0x6a
	.long	0x49
	.byte	0x4
	.uleb128 0xb
	.long	.LASF20
	.byte	0x4
	.byte	0x6b
	.long	0x49
	.byte	0x8
	.uleb128 0xb
	.long	.LASF21
	.byte	0x4
	.byte	0x6c
	.long	0xd0
	.byte	0xc
	.uleb128 0xb
	.long	.LASF22
	.byte	0x4
	.byte	0x6e
	.long	0xd0
	.byte	0x10
	.uleb128 0xb
	.long	.LASF23
	.byte	0x4
	.byte	0x6f
	.long	0xd0
	.byte	0x14
	.uleb128 0xb
	.long	.LASF24
	.byte	0x4
	.byte	0x70
	.long	0x24c
	.byte	0x18
	.uleb128 0xb
	.long	.LASF25
	.byte	0x4
	.byte	0x73
	.long	0xd0
	.byte	0x38
	.uleb128 0xb
	.long	.LASF26
	.byte	0x4
	.byte	0x74
	.long	0x49
	.byte	0x3c
	.uleb128 0xb
	.long	.LASF27
	.byte	0x4
	.byte	0x75
	.long	0x49
	.byte	0x40
	.uleb128 0xb
	.long	.LASF28
	.byte	0x4
	.byte	0x77
	.long	0x25c
	.byte	0x44
	.uleb128 0xb
	.long	.LASF29
	.byte	0x4
	.byte	0x79
	.long	0x25c
	.byte	0x64
	.uleb128 0xb
	.long	.LASF30
	.byte	0x4
	.byte	0x7a
	.long	0x25c
	.byte	0x84
	.uleb128 0xb
	.long	.LASF31
	.byte	0x4
	.byte	0x7c
	.long	0xd0
	.byte	0xa4
	.uleb128 0xb
	.long	.LASF32
	.byte	0x4
	.byte	0x7d
	.long	0x49
	.byte	0xa8
	.uleb128 0xb
	.long	.LASF33
	.byte	0x4
	.byte	0x7f
	.long	0x49
	.byte	0xac
	.uleb128 0xb
	.long	.LASF34
	.byte	0x4
	.byte	0x80
	.long	0x26c
	.byte	0xb0
	.uleb128 0xb
	.long	.LASF35
	.byte	0x4
	.byte	0x82
	.long	0x34
	.byte	0xb8
	.uleb128 0xb
	.long	.LASF36
	.byte	0x4
	.byte	0x83
	.long	0x34
	.byte	0xbc
	.uleb128 0xb
	.long	.LASF37
	.byte	0x4
	.byte	0x84
	.long	0xd0
	.byte	0xc0
	.uleb128 0xb
	.long	.LASF38
	.byte	0x4
	.byte	0x85
	.long	0x49
	.byte	0xc4
	.uleb128 0xb
	.long	.LASF39
	.byte	0x4
	.byte	0x86
	.long	0x34
	.byte	0xc8
	.uleb128 0xb
	.long	.LASF40
	.byte	0x4
	.byte	0x87
	.long	0x34
	.byte	0xcc
	.uleb128 0xb
	.long	.LASF41
	.byte	0x4
	.byte	0x88
	.long	0x34
	.byte	0xd0
	.uleb128 0xb
	.long	.LASF42
	.byte	0x4
	.byte	0x8a
	.long	0x34
	.byte	0xd4
	.uleb128 0xb
	.long	.LASF43
	.byte	0x4
	.byte	0x8b
	.long	0x34
	.byte	0xd8
	.uleb128 0xb
	.long	.LASF44
	.byte	0x4
	.byte	0x8d
	.long	0xd0
	.byte	0xdc
	.uleb128 0xb
	.long	.LASF45
	.byte	0x4
	.byte	0x8e
	.long	0xd0
	.byte	0xe0
	.uleb128 0xb
	.long	.LASF46
	.byte	0x4
	.byte	0x8f
	.long	0xd0
	.byte	0xe4
	.uleb128 0xb
	.long	.LASF47
	.byte	0x4
	.byte	0x90
	.long	0xd0
	.byte	0xe8
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x25c
	.uleb128 0x5
	.long	0x75
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.long	0x49
	.long	0x26c
	.uleb128 0x5
	.long	0x75
	.byte	0x7
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xb0
	.uleb128 0x7
	.long	.LASF48
	.byte	0x4
	.byte	0x91
	.long	0xdb
	.uleb128 0x7
	.long	.LASF49
	.byte	0x5
	.byte	0x3e
	.long	0x90
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.byte	0x9b
	.long	0x2c7
	.uleb128 0x9
	.long	.LASF50
	.sleb128 0
	.uleb128 0x9
	.long	.LASF51
	.sleb128 1
	.uleb128 0x9
	.long	.LASF52
	.sleb128 2
	.uleb128 0x9
	.long	.LASF53
	.sleb128 3
	.uleb128 0x9
	.long	.LASF54
	.sleb128 4
	.uleb128 0x9
	.long	.LASF55
	.sleb128 5
	.uleb128 0x9
	.long	.LASF56
	.sleb128 6
	.uleb128 0x9
	.long	.LASF57
	.sleb128 7
	.uleb128 0x9
	.long	.LASF58
	.sleb128 8
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.byte	0xb3
	.long	0x2dc
	.uleb128 0x9
	.long	.LASF59
	.sleb128 0
	.uleb128 0x9
	.long	.LASF60
	.sleb128 1
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.byte	0xba
	.long	0x2f7
	.uleb128 0x9
	.long	.LASF61
	.sleb128 0
	.uleb128 0x9
	.long	.LASF62
	.sleb128 1
	.uleb128 0x9
	.long	.LASF63
	.sleb128 2
	.byte	0
	.uleb128 0x7
	.long	.LASF64
	.byte	0x5
	.byte	0xbe
	.long	0x2dc
	.uleb128 0xa
	.byte	0x68
	.byte	0x5
	.byte	0xcf
	.long	0x3f2
	.uleb128 0xb
	.long	.LASF65
	.byte	0x5
	.byte	0xd1
	.long	0x49
	.byte	0
	.uleb128 0xb
	.long	.LASF66
	.byte	0x5
	.byte	0xd1
	.long	0x49
	.byte	0x4
	.uleb128 0xb
	.long	.LASF67
	.byte	0x5
	.byte	0xd2
	.long	0x49
	.byte	0x8
	.uleb128 0xb
	.long	.LASF68
	.byte	0x5
	.byte	0xd3
	.long	0x49
	.byte	0xc
	.uleb128 0xb
	.long	.LASF69
	.byte	0x5
	.byte	0xd4
	.long	0x49
	.byte	0x10
	.uleb128 0xb
	.long	.LASF70
	.byte	0x5
	.byte	0xd5
	.long	0x26c
	.byte	0x18
	.uleb128 0xb
	.long	.LASF71
	.byte	0x5
	.byte	0xd6
	.long	0x83
	.byte	0x20
	.uleb128 0xb
	.long	.LASF72
	.byte	0x5
	.byte	0xd9
	.long	0x49
	.byte	0x28
	.uleb128 0xb
	.long	.LASF73
	.byte	0x5
	.byte	0xd9
	.long	0x49
	.byte	0x2c
	.uleb128 0xb
	.long	.LASF74
	.byte	0x5
	.byte	0xda
	.long	0x49
	.byte	0x30
	.uleb128 0xb
	.long	.LASF75
	.byte	0x5
	.byte	0xdb
	.long	0x49
	.byte	0x34
	.uleb128 0xb
	.long	.LASF76
	.byte	0x5
	.byte	0xdc
	.long	0x49
	.byte	0x38
	.uleb128 0xb
	.long	.LASF77
	.byte	0x5
	.byte	0xdd
	.long	0x26c
	.byte	0x40
	.uleb128 0xb
	.long	.LASF78
	.byte	0x5
	.byte	0xde
	.long	0x83
	.byte	0x48
	.uleb128 0xc
	.string	"C"
	.byte	0x5
	.byte	0xdf
	.long	0x34
	.byte	0x50
	.uleb128 0xc
	.string	"CS"
	.byte	0x5
	.byte	0xdf
	.long	0x34
	.byte	0x54
	.uleb128 0xc
	.string	"E"
	.byte	0x5
	.byte	0xe0
	.long	0x34
	.byte	0x58
	.uleb128 0xc
	.string	"ES"
	.byte	0x5
	.byte	0xe0
	.long	0x34
	.byte	0x5c
	.uleb128 0xc
	.string	"B"
	.byte	0x5
	.byte	0xe1
	.long	0x34
	.byte	0x60
	.uleb128 0xc
	.string	"BS"
	.byte	0x5
	.byte	0xe1
	.long	0x34
	.byte	0x64
	.byte	0
	.uleb128 0x7
	.long	.LASF79
	.byte	0x5
	.byte	0xe2
	.long	0x302
	.uleb128 0x7
	.long	.LASF80
	.byte	0x5
	.byte	0xe4
	.long	0x408
	.uleb128 0x6
	.byte	0x8
	.long	0x3f2
	.uleb128 0xa
	.byte	0x10
	.byte	0x5
	.byte	0xe7
	.long	0x43b
	.uleb128 0xb
	.long	.LASF81
	.byte	0x5
	.byte	0xe9
	.long	0x42
	.byte	0
	.uleb128 0xc
	.string	"MPS"
	.byte	0x5
	.byte	0xea
	.long	0x3b
	.byte	0x2
	.uleb128 0xb
	.long	.LASF82
	.byte	0x5
	.byte	0xec
	.long	0x2d
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.long	.LASF83
	.byte	0x5
	.byte	0xee
	.long	0x40e
	.uleb128 0xd
	.value	0x5e0
	.byte	0x5
	.value	0x102
	.long	0x4b2
	.uleb128 0xe
	.long	.LASF84
	.byte	0x5
	.value	0x104
	.long	0x4b2
	.byte	0
	.uleb128 0xf
	.long	.LASF85
	.byte	0x5
	.value	0x105
	.long	0x4c8
	.value	0x210
	.uleb128 0xf
	.long	.LASF86
	.byte	0x5
	.value	0x106
	.long	0x4de
	.value	0x330
	.uleb128 0xf
	.long	.LASF87
	.byte	0x5
	.value	0x107
	.long	0x4f4
	.value	0x470
	.uleb128 0xf
	.long	.LASF88
	.byte	0x5
	.value	0x108
	.long	0x50a
	.value	0x530
	.uleb128 0xf
	.long	.LASF89
	.byte	0x5
	.value	0x109
	.long	0x50a
	.value	0x570
	.uleb128 0xf
	.long	.LASF90
	.byte	0x5
	.value	0x10a
	.long	0x51a
	.value	0x5b0
	.byte	0
	.uleb128 0x4
	.long	0x43b
	.long	0x4c8
	.uleb128 0x5
	.long	0x75
	.byte	0x2
	.uleb128 0x5
	.long	0x75
	.byte	0xa
	.byte	0
	.uleb128 0x4
	.long	0x43b
	.long	0x4de
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.uleb128 0x5
	.long	0x75
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.long	0x43b
	.long	0x4f4
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.uleb128 0x5
	.long	0x75
	.byte	0x9
	.byte	0
	.uleb128 0x4
	.long	0x43b
	.long	0x50a
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.uleb128 0x5
	.long	0x75
	.byte	0x5
	.byte	0
	.uleb128 0x4
	.long	0x43b
	.long	0x51a
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.long	0x43b
	.long	0x52a
	.uleb128 0x5
	.long	0x75
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.long	.LASF91
	.byte	0x5
	.value	0x10c
	.long	0x446
	.uleb128 0xd
	.value	0x2f60
	.byte	0x5
	.value	0x119
	.long	0x5ca
	.uleb128 0xe
	.long	.LASF92
	.byte	0x5
	.value	0x11b
	.long	0x5ca
	.byte	0
	.uleb128 0xe
	.long	.LASF93
	.byte	0x5
	.value	0x11c
	.long	0x50a
	.byte	0x20
	.uleb128 0xe
	.long	.LASF94
	.byte	0x5
	.value	0x11d
	.long	0x5da
	.byte	0x60
	.uleb128 0xf
	.long	.LASF95
	.byte	0x5
	.value	0x11e
	.long	0x5f0
	.value	0x120
	.uleb128 0xf
	.long	.LASF96
	.byte	0x5
	.value	0x11f
	.long	0x606
	.value	0x3a0
	.uleb128 0xf
	.long	.LASF97
	.byte	0x5
	.value	0x120
	.long	0x606
	.value	0xd00
	.uleb128 0xf
	.long	.LASF98
	.byte	0x5
	.value	0x121
	.long	0x61c
	.value	0x1660
	.uleb128 0xf
	.long	.LASF99
	.byte	0x5
	.value	0x122
	.long	0x61c
	.value	0x1980
	.uleb128 0xf
	.long	.LASF100
	.byte	0x5
	.value	0x123
	.long	0x606
	.value	0x1ca0
	.uleb128 0xf
	.long	.LASF101
	.byte	0x5
	.value	0x124
	.long	0x606
	.value	0x2600
	.byte	0
	.uleb128 0x4
	.long	0x43b
	.long	0x5da
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.long	0x43b
	.long	0x5f0
	.uleb128 0x5
	.long	0x75
	.byte	0x2
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.long	0x43b
	.long	0x606
	.uleb128 0x5
	.long	0x75
	.byte	0x9
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.long	0x43b
	.long	0x61c
	.uleb128 0x5
	.long	0x75
	.byte	0x9
	.uleb128 0x5
	.long	0x75
	.byte	0xe
	.byte	0
	.uleb128 0x4
	.long	0x43b
	.long	0x632
	.uleb128 0x5
	.long	0x75
	.byte	0x9
	.uleb128 0x5
	.long	0x75
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.long	.LASF102
	.byte	0x5
	.value	0x125
	.long	0x536
	.uleb128 0x11
	.long	.LASF108
	.byte	0x18
	.byte	0x5
	.value	0x129
	.long	0x696
	.uleb128 0xe
	.long	.LASF103
	.byte	0x5
	.value	0x12b
	.long	0x34
	.byte	0
	.uleb128 0xe
	.long	.LASF104
	.byte	0x5
	.value	0x12c
	.long	0x34
	.byte	0x4
	.uleb128 0x12
	.string	"x"
	.byte	0x5
	.value	0x12d
	.long	0x34
	.byte	0x8
	.uleb128 0x12
	.string	"y"
	.byte	0x5
	.value	0x12e
	.long	0x34
	.byte	0xc
	.uleb128 0xe
	.long	.LASF105
	.byte	0x5
	.value	0x12f
	.long	0x34
	.byte	0x10
	.uleb128 0xe
	.long	.LASF106
	.byte	0x5
	.value	0x130
	.long	0x34
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.long	.LASF107
	.byte	0x5
	.value	0x131
	.long	0x63e
	.uleb128 0x11
	.long	.LASF109
	.byte	0x10
	.byte	0x5
	.value	0x134
	.long	0x6d7
	.uleb128 0xe
	.long	.LASF110
	.byte	0x5
	.value	0x136
	.long	0x34
	.byte	0
	.uleb128 0xe
	.long	.LASF111
	.byte	0x5
	.value	0x137
	.long	0x34
	.byte	0x4
	.uleb128 0xe
	.long	.LASF112
	.byte	0x5
	.value	0x138
	.long	0x6d7
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x6a2
	.uleb128 0x10
	.long	.LASF113
	.byte	0x5
	.value	0x139
	.long	0x6a2
	.uleb128 0x11
	.long	.LASF114
	.byte	0x20
	.byte	0x5
	.value	0x13c
	.long	0x745
	.uleb128 0xe
	.long	.LASF115
	.byte	0x5
	.value	0x13e
	.long	0x34
	.byte	0
	.uleb128 0xe
	.long	.LASF116
	.byte	0x5
	.value	0x13f
	.long	0x34
	.byte	0x4
	.uleb128 0xe
	.long	.LASF117
	.byte	0x5
	.value	0x140
	.long	0x34
	.byte	0x8
	.uleb128 0xe
	.long	.LASF118
	.byte	0x5
	.value	0x141
	.long	0x34
	.byte	0xc
	.uleb128 0xe
	.long	.LASF119
	.byte	0x5
	.value	0x142
	.long	0x34
	.byte	0x10
	.uleb128 0xe
	.long	.LASF112
	.byte	0x5
	.value	0x143
	.long	0x745
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x6e9
	.uleb128 0x10
	.long	.LASF120
	.byte	0x5
	.value	0x144
	.long	0x6e9
	.uleb128 0x11
	.long	.LASF121
	.byte	0x30
	.byte	0x5
	.value	0x147
	.long	0x7e5
	.uleb128 0xe
	.long	.LASF122
	.byte	0x5
	.value	0x149
	.long	0x34
	.byte	0
	.uleb128 0xe
	.long	.LASF123
	.byte	0x5
	.value	0x14a
	.long	0x34
	.byte	0x4
	.uleb128 0xe
	.long	.LASF124
	.byte	0x5
	.value	0x14b
	.long	0x34
	.byte	0x8
	.uleb128 0x12
	.string	"len"
	.byte	0x5
	.value	0x14c
	.long	0x34
	.byte	0xc
	.uleb128 0x12
	.string	"inf"
	.byte	0x5
	.value	0x14d
	.long	0x34
	.byte	0x10
	.uleb128 0xe
	.long	.LASF125
	.byte	0x5
	.value	0x14e
	.long	0x49
	.byte	0x14
	.uleb128 0xe
	.long	.LASF126
	.byte	0x5
	.value	0x14f
	.long	0x34
	.byte	0x18
	.uleb128 0x12
	.string	"k"
	.byte	0x5
	.value	0x150
	.long	0x34
	.byte	0x1c
	.uleb128 0xe
	.long	.LASF127
	.byte	0x5
	.value	0x158
	.long	0x7ff
	.byte	0x20
	.uleb128 0xe
	.long	.LASF128
	.byte	0x5
	.value	0x15a
	.long	0x81b
	.byte	0x28
	.byte	0
	.uleb128 0x13
	.long	0x7ff
	.uleb128 0x14
	.long	0x34
	.uleb128 0x14
	.long	0x34
	.uleb128 0x14
	.long	0x83
	.uleb128 0x14
	.long	0x83
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x7e5
	.uleb128 0x13
	.long	0x815
	.uleb128 0x14
	.long	0x815
	.uleb128 0x14
	.long	0x3fd
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x757
	.uleb128 0x6
	.byte	0x8
	.long	0x805
	.uleb128 0x10
	.long	.LASF129
	.byte	0x5
	.value	0x15c
	.long	0x757
	.uleb128 0x15
	.long	.LASF130
	.value	0x278
	.byte	0x5
	.value	0x15f
	.long	0xaa7
	.uleb128 0xe
	.long	.LASF131
	.byte	0x5
	.value	0x161
	.long	0x34
	.byte	0
	.uleb128 0xe
	.long	.LASF132
	.byte	0x5
	.value	0x162
	.long	0x34
	.byte	0x4
	.uleb128 0xe
	.long	.LASF133
	.byte	0x5
	.value	0x163
	.long	0x34
	.byte	0x8
	.uleb128 0x12
	.string	"qp"
	.byte	0x5
	.value	0x164
	.long	0x34
	.byte	0xc
	.uleb128 0xe
	.long	.LASF134
	.byte	0x5
	.value	0x165
	.long	0x34
	.byte	0x10
	.uleb128 0xe
	.long	.LASF135
	.byte	0x5
	.value	0x166
	.long	0x24c
	.byte	0x14
	.uleb128 0xe
	.long	.LASF136
	.byte	0x5
	.value	0x168
	.long	0xaa7
	.byte	0x38
	.uleb128 0xe
	.long	.LASF137
	.byte	0x5
	.value	0x169
	.long	0xaa7
	.byte	0x40
	.uleb128 0xe
	.long	.LASF138
	.byte	0x5
	.value	0x16b
	.long	0x34
	.byte	0x48
	.uleb128 0x12
	.string	"mvd"
	.byte	0x5
	.value	0x16c
	.long	0xaad
	.byte	0x4c
	.uleb128 0xf
	.long	.LASF139
	.byte	0x5
	.value	0x16d
	.long	0xacf
	.value	0x14c
	.uleb128 0xf
	.long	.LASF140
	.byte	0x5
	.value	0x16e
	.long	0xacf
	.value	0x18c
	.uleb128 0x16
	.string	"cbp"
	.byte	0x5
	.value	0x16f
	.long	0x34
	.value	0x1cc
	.uleb128 0xf
	.long	.LASF141
	.byte	0x5
	.value	0x170
	.long	0x27d
	.value	0x1d0
	.uleb128 0xf
	.long	.LASF142
	.byte	0x5
	.value	0x171
	.long	0xadf
	.value	0x1d8
	.uleb128 0xf
	.long	.LASF143
	.byte	0x5
	.value	0x172
	.long	0xadf
	.value	0x1e8
	.uleb128 0xf
	.long	.LASF144
	.byte	0x5
	.value	0x173
	.long	0x2d
	.value	0x1f8
	.uleb128 0xf
	.long	.LASF145
	.byte	0x5
	.value	0x175
	.long	0x34
	.value	0x200
	.uleb128 0xf
	.long	.LASF146
	.byte	0x5
	.value	0x176
	.long	0x34
	.value	0x204
	.uleb128 0xf
	.long	.LASF147
	.byte	0x5
	.value	0x177
	.long	0x34
	.value	0x208
	.uleb128 0xf
	.long	.LASF148
	.byte	0x5
	.value	0x179
	.long	0x34
	.value	0x20c
	.uleb128 0xf
	.long	.LASF149
	.byte	0x5
	.value	0x17a
	.long	0x34
	.value	0x210
	.uleb128 0xf
	.long	.LASF150
	.byte	0x5
	.value	0x17c
	.long	0x34
	.value	0x214
	.uleb128 0xf
	.long	.LASF151
	.byte	0x5
	.value	0x17e
	.long	0x34
	.value	0x218
	.uleb128 0xf
	.long	.LASF152
	.byte	0x5
	.value	0x17e
	.long	0x34
	.value	0x21c
	.uleb128 0xf
	.long	.LASF153
	.byte	0x5
	.value	0x17e
	.long	0x34
	.value	0x220
	.uleb128 0xf
	.long	.LASF154
	.byte	0x5
	.value	0x17e
	.long	0x34
	.value	0x224
	.uleb128 0xf
	.long	.LASF155
	.byte	0x5
	.value	0x17f
	.long	0x34
	.value	0x228
	.uleb128 0xf
	.long	.LASF156
	.byte	0x5
	.value	0x17f
	.long	0x34
	.value	0x22c
	.uleb128 0xf
	.long	.LASF157
	.byte	0x5
	.value	0x17f
	.long	0x34
	.value	0x230
	.uleb128 0xf
	.long	.LASF158
	.byte	0x5
	.value	0x17f
	.long	0x34
	.value	0x234
	.uleb128 0xf
	.long	.LASF159
	.byte	0x5
	.value	0x181
	.long	0x34
	.value	0x238
	.uleb128 0xf
	.long	.LASF160
	.byte	0x5
	.value	0x182
	.long	0x34
	.value	0x23c
	.uleb128 0xf
	.long	.LASF161
	.byte	0x5
	.value	0x183
	.long	0x34
	.value	0x240
	.uleb128 0xf
	.long	.LASF162
	.byte	0x5
	.value	0x186
	.long	0x34
	.value	0x244
	.uleb128 0xf
	.long	.LASF163
	.byte	0x5
	.value	0x18a
	.long	0xa9
	.value	0x248
	.uleb128 0xf
	.long	.LASF164
	.byte	0x5
	.value	0x18b
	.long	0x34
	.value	0x250
	.uleb128 0xf
	.long	.LASF165
	.byte	0x5
	.value	0x18c
	.long	0x34
	.value	0x254
	.uleb128 0xf
	.long	.LASF166
	.byte	0x5
	.value	0x18d
	.long	0x34
	.value	0x258
	.uleb128 0xf
	.long	.LASF167
	.byte	0x5
	.value	0x18e
	.long	0x34
	.value	0x25c
	.uleb128 0xf
	.long	.LASF168
	.byte	0x5
	.value	0x18f
	.long	0x34
	.value	0x260
	.uleb128 0xf
	.long	.LASF169
	.byte	0x5
	.value	0x191
	.long	0x34
	.value	0x264
	.uleb128 0xf
	.long	.LASF170
	.byte	0x5
	.value	0x192
	.long	0x34
	.value	0x268
	.uleb128 0xf
	.long	.LASF171
	.byte	0x5
	.value	0x193
	.long	0x34
	.value	0x26c
	.uleb128 0xf
	.long	.LASF172
	.byte	0x5
	.value	0x195
	.long	0x34
	.value	0x270
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x82d
	.uleb128 0x4
	.long	0x34
	.long	0xacf
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0xadf
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0xaef
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x10
	.long	.LASF173
	.byte	0x5
	.value	0x196
	.long	0x82d
	.uleb128 0x17
	.byte	0x30
	.byte	0x5
	.value	0x19b
	.long	0xb94
	.uleb128 0xe
	.long	.LASF174
	.byte	0x5
	.value	0x19d
	.long	0x34
	.byte	0
	.uleb128 0xe
	.long	.LASF175
	.byte	0x5
	.value	0x19e
	.long	0x34
	.byte	0x4
	.uleb128 0xe
	.long	.LASF176
	.byte	0x5
	.value	0x19f
	.long	0xb0
	.byte	0x8
	.uleb128 0xe
	.long	.LASF177
	.byte	0x5
	.value	0x1a0
	.long	0x34
	.byte	0xc
	.uleb128 0xe
	.long	.LASF178
	.byte	0x5
	.value	0x1a1
	.long	0x34
	.byte	0x10
	.uleb128 0xe
	.long	.LASF179
	.byte	0x5
	.value	0x1a2
	.long	0xb0
	.byte	0x14
	.uleb128 0xe
	.long	.LASF180
	.byte	0x5
	.value	0x1a4
	.long	0xb0
	.byte	0x15
	.uleb128 0xe
	.long	.LASF181
	.byte	0x5
	.value	0x1a5
	.long	0x34
	.byte	0x18
	.uleb128 0xe
	.long	.LASF182
	.byte	0x5
	.value	0x1a6
	.long	0x34
	.byte	0x1c
	.uleb128 0xe
	.long	.LASF183
	.byte	0x5
	.value	0x1a8
	.long	0x26c
	.byte	0x20
	.uleb128 0xe
	.long	.LASF184
	.byte	0x5
	.value	0x1a9
	.long	0x34
	.byte	0x28
	.byte	0
	.uleb128 0x10
	.long	.LASF185
	.byte	0x5
	.value	0x1ab
	.long	0xafb
	.uleb128 0x11
	.long	.LASF186
	.byte	0x78
	.byte	0x5
	.value	0x1ae
	.long	0xbd5
	.uleb128 0xe
	.long	.LASF187
	.byte	0x5
	.value	0x1b1
	.long	0xbd5
	.byte	0
	.uleb128 0xe
	.long	.LASF188
	.byte	0x5
	.value	0x1b2
	.long	0x3f2
	.byte	0x8
	.uleb128 0xe
	.long	.LASF189
	.byte	0x5
	.value	0x1b4
	.long	0xbfb
	.byte	0x70
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xb94
	.uleb128 0x18
	.long	0x34
	.long	0xbef
	.uleb128 0x14
	.long	0xbef
	.uleb128 0x14
	.long	0xbf5
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x821
	.uleb128 0x6
	.byte	0x8
	.long	0xba0
	.uleb128 0x6
	.byte	0x8
	.long	0xbdb
	.uleb128 0x10
	.long	.LASF190
	.byte	0x5
	.value	0x1b8
	.long	0xba0
	.uleb128 0x17
	.byte	0x98
	.byte	0x5
	.value	0x1bb
	.long	0xd1a
	.uleb128 0xe
	.long	.LASF191
	.byte	0x5
	.value	0x1bd
	.long	0x34
	.byte	0
	.uleb128 0x12
	.string	"qp"
	.byte	0x5
	.value	0x1be
	.long	0x34
	.byte	0x4
	.uleb128 0xe
	.long	.LASF192
	.byte	0x5
	.value	0x1bf
	.long	0x34
	.byte	0x8
	.uleb128 0xe
	.long	.LASF193
	.byte	0x5
	.value	0x1c0
	.long	0x34
	.byte	0xc
	.uleb128 0xe
	.long	.LASF194
	.byte	0x5
	.value	0x1c1
	.long	0x34
	.byte	0x10
	.uleb128 0xe
	.long	.LASF195
	.byte	0x5
	.value	0x1c2
	.long	0x34
	.byte	0x14
	.uleb128 0xe
	.long	.LASF196
	.byte	0x5
	.value	0x1c3
	.long	0xd1a
	.byte	0x18
	.uleb128 0xe
	.long	.LASF197
	.byte	0x5
	.value	0x1c4
	.long	0xd20
	.byte	0x20
	.uleb128 0xe
	.long	.LASF198
	.byte	0x5
	.value	0x1c5
	.long	0xd26
	.byte	0x28
	.uleb128 0xe
	.long	.LASF199
	.byte	0x5
	.value	0x1c8
	.long	0xd2c
	.byte	0x30
	.uleb128 0xe
	.long	.LASF200
	.byte	0x5
	.value	0x1ca
	.long	0x34
	.byte	0x38
	.uleb128 0xe
	.long	.LASF201
	.byte	0x5
	.value	0x1cb
	.long	0x83
	.byte	0x40
	.uleb128 0xe
	.long	.LASF202
	.byte	0x5
	.value	0x1cc
	.long	0x83
	.byte	0x48
	.uleb128 0xe
	.long	.LASF203
	.byte	0x5
	.value	0x1cd
	.long	0x83
	.byte	0x50
	.uleb128 0xe
	.long	.LASF204
	.byte	0x5
	.value	0x1ce
	.long	0x34
	.byte	0x58
	.uleb128 0xe
	.long	.LASF205
	.byte	0x5
	.value	0x1cf
	.long	0x83
	.byte	0x60
	.uleb128 0xe
	.long	.LASF206
	.byte	0x5
	.value	0x1d0
	.long	0x83
	.byte	0x68
	.uleb128 0xe
	.long	.LASF207
	.byte	0x5
	.value	0x1d1
	.long	0x83
	.byte	0x70
	.uleb128 0xe
	.long	.LASF208
	.byte	0x5
	.value	0x1d3
	.long	0xd41
	.byte	0x78
	.uleb128 0xe
	.long	.LASF209
	.byte	0x5
	.value	0x1d5
	.long	0xd47
	.byte	0x80
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xc01
	.uleb128 0x6
	.byte	0x8
	.long	0x52a
	.uleb128 0x6
	.byte	0x8
	.long	0x632
	.uleb128 0x6
	.byte	0x8
	.long	0x6dd
	.uleb128 0x18
	.long	0xd0
	.long	0xd41
	.uleb128 0x14
	.long	0x34
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xd32
	.uleb128 0x4
	.long	0x34
	.long	0xd5d
	.uleb128 0x5
	.long	0x75
	.byte	0x2
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.long	.LASF210
	.byte	0x5
	.value	0x1d7
	.long	0xc0d
	.uleb128 0xd
	.value	0x338
	.byte	0x5
	.value	0x1db
	.long	0xdd3
	.uleb128 0xe
	.long	.LASF211
	.byte	0x5
	.value	0x1dd
	.long	0x34
	.byte	0
	.uleb128 0xe
	.long	.LASF212
	.byte	0x5
	.value	0x1de
	.long	0x34
	.byte	0x4
	.uleb128 0xe
	.long	.LASF213
	.byte	0x5
	.value	0x1df
	.long	0xdd3
	.byte	0x8
	.uleb128 0xf
	.long	.LASF214
	.byte	0x5
	.value	0x1e0
	.long	0x34
	.value	0x328
	.uleb128 0xf
	.long	.LASF215
	.byte	0x5
	.value	0x1e1
	.long	0xa2
	.value	0x32c
	.uleb128 0xf
	.long	.LASF216
	.byte	0x5
	.value	0x1e2
	.long	0xa2
	.value	0x330
	.uleb128 0xf
	.long	.LASF217
	.byte	0x5
	.value	0x1e3
	.long	0xa2
	.value	0x334
	.byte	0
	.uleb128 0x4
	.long	0xde3
	.long	0xde3
	.uleb128 0x5
	.long	0x75
	.byte	0x63
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xd5d
	.uleb128 0x10
	.long	.LASF218
	.byte	0x5
	.value	0x1e4
	.long	0xd69
	.uleb128 0x6
	.byte	0x8
	.long	0x83
	.uleb128 0x6
	.byte	0x8
	.long	0xe01
	.uleb128 0x6
	.byte	0x8
	.long	0xe07
	.uleb128 0x6
	.byte	0x8
	.long	0x42
	.uleb128 0x6
	.byte	0x8
	.long	0x26c
	.uleb128 0xd
	.value	0xe08
	.byte	0x5
	.value	0x295
	.long	0x161b
	.uleb128 0xe
	.long	.LASF219
	.byte	0x5
	.value	0x297
	.long	0x34
	.byte	0
	.uleb128 0xe
	.long	.LASF220
	.byte	0x5
	.value	0x298
	.long	0x34
	.byte	0x4
	.uleb128 0xe
	.long	.LASF221
	.byte	0x5
	.value	0x29a
	.long	0x34
	.byte	0x8
	.uleb128 0x12
	.string	"qp0"
	.byte	0x5
	.value	0x29b
	.long	0x34
	.byte	0xc
	.uleb128 0x12
	.string	"qpN"
	.byte	0x5
	.value	0x29c
	.long	0x34
	.byte	0x10
	.uleb128 0xe
	.long	.LASF222
	.byte	0x5
	.value	0x29d
	.long	0x34
	.byte	0x14
	.uleb128 0xe
	.long	.LASF223
	.byte	0x5
	.value	0x29e
	.long	0x34
	.byte	0x18
	.uleb128 0xe
	.long	.LASF224
	.byte	0x5
	.value	0x2a0
	.long	0x34
	.byte	0x1c
	.uleb128 0xe
	.long	.LASF225
	.byte	0x5
	.value	0x2a1
	.long	0x34
	.byte	0x20
	.uleb128 0xe
	.long	.LASF226
	.byte	0x5
	.value	0x2a4
	.long	0x34
	.byte	0x24
	.uleb128 0xe
	.long	.LASF227
	.byte	0x5
	.value	0x2a5
	.long	0x34
	.byte	0x28
	.uleb128 0xe
	.long	.LASF228
	.byte	0x5
	.value	0x2a6
	.long	0x34
	.byte	0x2c
	.uleb128 0xe
	.long	.LASF229
	.byte	0x5
	.value	0x2a7
	.long	0x34
	.byte	0x30
	.uleb128 0xe
	.long	.LASF230
	.byte	0x5
	.value	0x2a8
	.long	0x34
	.byte	0x34
	.uleb128 0xe
	.long	.LASF231
	.byte	0x5
	.value	0x2a9
	.long	0x34
	.byte	0x38
	.uleb128 0xe
	.long	.LASF232
	.byte	0x5
	.value	0x2aa
	.long	0x34
	.byte	0x3c
	.uleb128 0xe
	.long	.LASF233
	.byte	0x5
	.value	0x2ac
	.long	0x34
	.byte	0x40
	.uleb128 0xe
	.long	.LASF234
	.byte	0x5
	.value	0x2ad
	.long	0x34
	.byte	0x44
	.uleb128 0xe
	.long	.LASF235
	.byte	0x5
	.value	0x2ae
	.long	0x34
	.byte	0x48
	.uleb128 0xe
	.long	.LASF236
	.byte	0x5
	.value	0x2af
	.long	0x34
	.byte	0x4c
	.uleb128 0xe
	.long	.LASF237
	.byte	0x5
	.value	0x2b3
	.long	0x161b
	.byte	0x50
	.uleb128 0xe
	.long	.LASF238
	.byte	0x5
	.value	0x2b4
	.long	0x161b
	.byte	0x90
	.uleb128 0xe
	.long	.LASF239
	.byte	0x5
	.value	0x2b5
	.long	0x34
	.byte	0xd0
	.uleb128 0xe
	.long	.LASF240
	.byte	0x5
	.value	0x2b6
	.long	0x34
	.byte	0xd4
	.uleb128 0xe
	.long	.LASF241
	.byte	0x5
	.value	0x2b7
	.long	0x34
	.byte	0xd8
	.uleb128 0xe
	.long	.LASF242
	.byte	0x5
	.value	0x2b8
	.long	0x34
	.byte	0xdc
	.uleb128 0xe
	.long	.LASF243
	.byte	0x5
	.value	0x2b9
	.long	0x1631
	.byte	0xe0
	.uleb128 0xf
	.long	.LASF244
	.byte	0x5
	.value	0x2ba
	.long	0x1631
	.value	0x1a8
	.uleb128 0xf
	.long	.LASF245
	.byte	0x5
	.value	0x2bb
	.long	0x1631
	.value	0x270
	.uleb128 0xf
	.long	.LASF246
	.byte	0x5
	.value	0x2bc
	.long	0x1631
	.value	0x338
	.uleb128 0xf
	.long	.LASF247
	.byte	0x5
	.value	0x2bd
	.long	0x1631
	.value	0x400
	.uleb128 0xf
	.long	.LASF248
	.byte	0x5
	.value	0x2be
	.long	0x34
	.value	0x4c8
	.uleb128 0xf
	.long	.LASF249
	.byte	0x5
	.value	0x2c0
	.long	0x34
	.value	0x4cc
	.uleb128 0xf
	.long	.LASF250
	.byte	0x5
	.value	0x2c1
	.long	0x34
	.value	0x4d0
	.uleb128 0xf
	.long	.LASF251
	.byte	0x5
	.value	0x2c4
	.long	0x34
	.value	0x4d4
	.uleb128 0x16
	.string	"qpB"
	.byte	0x5
	.value	0x2c5
	.long	0x34
	.value	0x4d8
	.uleb128 0xf
	.long	.LASF252
	.byte	0x5
	.value	0x2c6
	.long	0x34
	.value	0x4dc
	.uleb128 0xf
	.long	.LASF253
	.byte	0x5
	.value	0x2c7
	.long	0x34
	.value	0x4e0
	.uleb128 0xf
	.long	.LASF254
	.byte	0x5
	.value	0x2c8
	.long	0x34
	.value	0x4e4
	.uleb128 0xf
	.long	.LASF255
	.byte	0x5
	.value	0x2ca
	.long	0x34
	.value	0x4e8
	.uleb128 0xf
	.long	.LASF256
	.byte	0x5
	.value	0x2cb
	.long	0x34
	.value	0x4ec
	.uleb128 0xf
	.long	.LASF257
	.byte	0x5
	.value	0x2cc
	.long	0x34
	.value	0x4f0
	.uleb128 0xf
	.long	.LASF258
	.byte	0x5
	.value	0x2cd
	.long	0x34
	.value	0x4f4
	.uleb128 0xf
	.long	.LASF259
	.byte	0x5
	.value	0x2d1
	.long	0x34
	.value	0x4f8
	.uleb128 0xf
	.long	.LASF134
	.byte	0x5
	.value	0x2d2
	.long	0x34
	.value	0x4fc
	.uleb128 0xf
	.long	.LASF260
	.byte	0x5
	.value	0x2d3
	.long	0x34
	.value	0x500
	.uleb128 0xf
	.long	.LASF261
	.byte	0x5
	.value	0x2d5
	.long	0x34
	.value	0x504
	.uleb128 0xf
	.long	.LASF262
	.byte	0x5
	.value	0x2d6
	.long	0x34
	.value	0x508
	.uleb128 0xf
	.long	.LASF263
	.byte	0x5
	.value	0x2d7
	.long	0x34
	.value	0x50c
	.uleb128 0xf
	.long	.LASF264
	.byte	0x5
	.value	0x2d8
	.long	0x34
	.value	0x510
	.uleb128 0xf
	.long	.LASF265
	.byte	0x5
	.value	0x2d9
	.long	0x34
	.value	0x514
	.uleb128 0xf
	.long	.LASF266
	.byte	0x5
	.value	0x2da
	.long	0x34
	.value	0x518
	.uleb128 0xf
	.long	.LASF267
	.byte	0x5
	.value	0x2db
	.long	0x34
	.value	0x51c
	.uleb128 0xf
	.long	.LASF268
	.byte	0x5
	.value	0x2dc
	.long	0x34
	.value	0x520
	.uleb128 0xf
	.long	.LASF269
	.byte	0x5
	.value	0x2dd
	.long	0x34
	.value	0x524
	.uleb128 0xf
	.long	.LASF270
	.byte	0x5
	.value	0x2de
	.long	0x34
	.value	0x528
	.uleb128 0xf
	.long	.LASF271
	.byte	0x5
	.value	0x2df
	.long	0x1641
	.value	0x52c
	.uleb128 0xf
	.long	.LASF272
	.byte	0x5
	.value	0x2e0
	.long	0x34
	.value	0x92c
	.uleb128 0xf
	.long	.LASF273
	.byte	0x5
	.value	0x2e1
	.long	0x34
	.value	0x930
	.uleb128 0xf
	.long	.LASF274
	.byte	0x5
	.value	0x2e3
	.long	0x34
	.value	0x934
	.uleb128 0xf
	.long	.LASF275
	.byte	0x5
	.value	0x2e4
	.long	0x34
	.value	0x938
	.uleb128 0xf
	.long	.LASF276
	.byte	0x5
	.value	0x2e5
	.long	0x34
	.value	0x93c
	.uleb128 0xf
	.long	.LASF277
	.byte	0x5
	.value	0x2e7
	.long	0x34
	.value	0x940
	.uleb128 0xf
	.long	.LASF278
	.byte	0x5
	.value	0x2e8
	.long	0x34
	.value	0x944
	.uleb128 0xf
	.long	.LASF279
	.byte	0x5
	.value	0x2e9
	.long	0x34
	.value	0x948
	.uleb128 0xf
	.long	.LASF280
	.byte	0x5
	.value	0x2ea
	.long	0x34
	.value	0x94c
	.uleb128 0xf
	.long	.LASF281
	.byte	0x5
	.value	0x2eb
	.long	0x34
	.value	0x950
	.uleb128 0xf
	.long	.LASF282
	.byte	0x5
	.value	0x2ec
	.long	0x34
	.value	0x954
	.uleb128 0xf
	.long	.LASF283
	.byte	0x5
	.value	0x2ed
	.long	0x34
	.value	0x958
	.uleb128 0xf
	.long	.LASF284
	.byte	0x5
	.value	0x2ef
	.long	0x34
	.value	0x95c
	.uleb128 0xf
	.long	.LASF285
	.byte	0x5
	.value	0x2f0
	.long	0x34
	.value	0x960
	.uleb128 0xf
	.long	.LASF286
	.byte	0x5
	.value	0x2f1
	.long	0x34
	.value	0x964
	.uleb128 0xf
	.long	.LASF287
	.byte	0x5
	.value	0x2f2
	.long	0x34
	.value	0x968
	.uleb128 0xf
	.long	.LASF288
	.byte	0x5
	.value	0x2f3
	.long	0x34
	.value	0x96c
	.uleb128 0xf
	.long	.LASF289
	.byte	0x5
	.value	0x2f4
	.long	0x34
	.value	0x970
	.uleb128 0xf
	.long	.LASF290
	.byte	0x5
	.value	0x2f5
	.long	0x34
	.value	0x974
	.uleb128 0xf
	.long	.LASF291
	.byte	0x5
	.value	0x2f7
	.long	0xa9
	.value	0x978
	.uleb128 0xf
	.long	.LASF41
	.byte	0x5
	.value	0x2f9
	.long	0x34
	.value	0x980
	.uleb128 0xf
	.long	.LASF292
	.byte	0x5
	.value	0x2fb
	.long	0x34
	.value	0x984
	.uleb128 0xf
	.long	.LASF293
	.byte	0x5
	.value	0x2fe
	.long	0x34
	.value	0x988
	.uleb128 0xf
	.long	.LASF294
	.byte	0x5
	.value	0x301
	.long	0x34
	.value	0x98c
	.uleb128 0xf
	.long	.LASF295
	.byte	0x5
	.value	0x301
	.long	0x34
	.value	0x990
	.uleb128 0xf
	.long	.LASF296
	.byte	0x5
	.value	0x301
	.long	0x34
	.value	0x994
	.uleb128 0xf
	.long	.LASF297
	.byte	0x5
	.value	0x302
	.long	0x34
	.value	0x998
	.uleb128 0xf
	.long	.LASF298
	.byte	0x5
	.value	0x302
	.long	0x34
	.value	0x99c
	.uleb128 0xf
	.long	.LASF299
	.byte	0x5
	.value	0x304
	.long	0x34
	.value	0x9a0
	.uleb128 0xf
	.long	.LASF300
	.byte	0x5
	.value	0x305
	.long	0x34
	.value	0x9a4
	.uleb128 0xf
	.long	.LASF301
	.byte	0x5
	.value	0x306
	.long	0x34
	.value	0x9a8
	.uleb128 0xf
	.long	.LASF302
	.byte	0x5
	.value	0x309
	.long	0x34
	.value	0x9ac
	.uleb128 0xf
	.long	.LASF303
	.byte	0x5
	.value	0x30a
	.long	0x1631
	.value	0x9b0
	.uleb128 0xf
	.long	.LASF304
	.byte	0x5
	.value	0x30b
	.long	0x1631
	.value	0xa78
	.uleb128 0xf
	.long	.LASF305
	.byte	0x5
	.value	0x30e
	.long	0x34
	.value	0xb40
	.uleb128 0xf
	.long	.LASF306
	.byte	0x5
	.value	0x30f
	.long	0x34
	.value	0xb44
	.uleb128 0xf
	.long	.LASF307
	.byte	0x5
	.value	0x311
	.long	0x34
	.value	0xb48
	.uleb128 0xf
	.long	.LASF308
	.byte	0x5
	.value	0x313
	.long	0x34
	.value	0xb4c
	.uleb128 0xf
	.long	.LASF309
	.byte	0x5
	.value	0x314
	.long	0x34
	.value	0xb50
	.uleb128 0xf
	.long	.LASF310
	.byte	0x5
	.value	0x315
	.long	0x34
	.value	0xb54
	.uleb128 0xf
	.long	.LASF311
	.byte	0x5
	.value	0x316
	.long	0x34
	.value	0xb58
	.uleb128 0xf
	.long	.LASF312
	.byte	0x5
	.value	0x317
	.long	0x34
	.value	0xb5c
	.uleb128 0xf
	.long	.LASF313
	.byte	0x5
	.value	0x318
	.long	0x34
	.value	0xb60
	.uleb128 0xf
	.long	.LASF314
	.byte	0x5
	.value	0x319
	.long	0x34
	.value	0xb64
	.uleb128 0xf
	.long	.LASF315
	.byte	0x5
	.value	0x31b
	.long	0x34
	.value	0xb68
	.uleb128 0xf
	.long	.LASF316
	.byte	0x5
	.value	0x31d
	.long	0x34
	.value	0xb6c
	.uleb128 0xf
	.long	.LASF169
	.byte	0x5
	.value	0x31e
	.long	0x34
	.value	0xb70
	.uleb128 0xf
	.long	.LASF170
	.byte	0x5
	.value	0x31f
	.long	0x34
	.value	0xb74
	.uleb128 0xf
	.long	.LASF171
	.byte	0x5
	.value	0x320
	.long	0x34
	.value	0xb78
	.uleb128 0xf
	.long	.LASF317
	.byte	0x5
	.value	0x322
	.long	0x34
	.value	0xb7c
	.uleb128 0xf
	.long	.LASF318
	.byte	0x5
	.value	0x323
	.long	0x34
	.value	0xb80
	.uleb128 0xf
	.long	.LASF319
	.byte	0x5
	.value	0x324
	.long	0x34
	.value	0xb84
	.uleb128 0xf
	.long	.LASF320
	.byte	0x5
	.value	0x327
	.long	0x1631
	.value	0xb88
	.uleb128 0xf
	.long	.LASF26
	.byte	0x5
	.value	0x328
	.long	0x34
	.value	0xc50
	.uleb128 0xf
	.long	.LASF27
	.byte	0x5
	.value	0x329
	.long	0x34
	.value	0xc54
	.uleb128 0xf
	.long	.LASF29
	.byte	0x5
	.value	0x32b
	.long	0x83
	.value	0xc58
	.uleb128 0xf
	.long	.LASF30
	.byte	0x5
	.value	0x32c
	.long	0x83
	.value	0xc60
	.uleb128 0xf
	.long	.LASF34
	.byte	0x5
	.value	0x32d
	.long	0x26c
	.value	0xc68
	.uleb128 0xf
	.long	.LASF28
	.byte	0x5
	.value	0x32e
	.long	0x83
	.value	0xc70
	.uleb128 0xf
	.long	.LASF31
	.byte	0x5
	.value	0x330
	.long	0x34
	.value	0xc78
	.uleb128 0xf
	.long	.LASF32
	.byte	0x5
	.value	0x331
	.long	0x34
	.value	0xc7c
	.uleb128 0xf
	.long	.LASF321
	.byte	0x5
	.value	0x332
	.long	0x34
	.value	0xc80
	.uleb128 0xf
	.long	.LASF322
	.byte	0x5
	.value	0x334
	.long	0x34
	.value	0xc84
	.uleb128 0xf
	.long	.LASF323
	.byte	0x5
	.value	0x335
	.long	0x34
	.value	0xc88
	.uleb128 0xf
	.long	.LASF324
	.byte	0x5
	.value	0x337
	.long	0x34
	.value	0xc8c
	.uleb128 0xf
	.long	.LASF325
	.byte	0x5
	.value	0x338
	.long	0x34
	.value	0xc90
	.uleb128 0xf
	.long	.LASF326
	.byte	0x5
	.value	0x339
	.long	0x34
	.value	0xc94
	.uleb128 0xf
	.long	.LASF327
	.byte	0x5
	.value	0x33a
	.long	0x34
	.value	0xc98
	.uleb128 0xf
	.long	.LASF328
	.byte	0x5
	.value	0x33b
	.long	0x34
	.value	0xc9c
	.uleb128 0xf
	.long	.LASF329
	.byte	0x5
	.value	0x33c
	.long	0x34
	.value	0xca0
	.uleb128 0xf
	.long	.LASF330
	.byte	0x5
	.value	0x33f
	.long	0x34
	.value	0xca4
	.uleb128 0xf
	.long	.LASF331
	.byte	0x5
	.value	0x340
	.long	0x34
	.value	0xca8
	.uleb128 0xf
	.long	.LASF332
	.byte	0x5
	.value	0x341
	.long	0x34
	.value	0xcac
	.uleb128 0xf
	.long	.LASF333
	.byte	0x5
	.value	0x342
	.long	0x34
	.value	0xcb0
	.uleb128 0xf
	.long	.LASF334
	.byte	0x5
	.value	0x343
	.long	0x34
	.value	0xcb4
	.uleb128 0xf
	.long	.LASF335
	.byte	0x5
	.value	0x345
	.long	0x34
	.value	0xcb8
	.uleb128 0xf
	.long	.LASF336
	.byte	0x5
	.value	0x346
	.long	0x24c
	.value	0xcbc
	.uleb128 0xf
	.long	.LASF337
	.byte	0x5
	.value	0x349
	.long	0x34
	.value	0xcdc
	.uleb128 0xf
	.long	.LASF338
	.byte	0x5
	.value	0x34c
	.long	0x34
	.value	0xce0
	.uleb128 0xf
	.long	.LASF339
	.byte	0x5
	.value	0x34d
	.long	0x34
	.value	0xce4
	.uleb128 0xf
	.long	.LASF340
	.byte	0x5
	.value	0x34e
	.long	0x34
	.value	0xce8
	.uleb128 0xf
	.long	.LASF341
	.byte	0x5
	.value	0x34f
	.long	0x34
	.value	0xcec
	.uleb128 0xf
	.long	.LASF342
	.byte	0x5
	.value	0x350
	.long	0x34
	.value	0xcf0
	.uleb128 0xf
	.long	.LASF42
	.byte	0x5
	.value	0x351
	.long	0x34
	.value	0xcf4
	.uleb128 0xf
	.long	.LASF43
	.byte	0x5
	.value	0x352
	.long	0x34
	.value	0xcf8
	.uleb128 0xf
	.long	.LASF343
	.byte	0x5
	.value	0x355
	.long	0x34
	.value	0xcfc
	.uleb128 0xf
	.long	.LASF344
	.byte	0x5
	.value	0x358
	.long	0x34
	.value	0xd00
	.uleb128 0xf
	.long	.LASF345
	.byte	0x5
	.value	0x35b
	.long	0x34
	.value	0xd04
	.uleb128 0xf
	.long	.LASF346
	.byte	0x5
	.value	0x35c
	.long	0x1652
	.value	0xd08
	.uleb128 0xf
	.long	.LASF347
	.byte	0x5
	.value	0x35e
	.long	0x1631
	.value	0xd38
	.uleb128 0xf
	.long	.LASF348
	.byte	0x5
	.value	0x35f
	.long	0x34
	.value	0xe00
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x1631
	.uleb128 0x5
	.long	0x75
	.byte	0x7
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.long	0x7c
	.long	0x1641
	.uleb128 0x5
	.long	0x75
	.byte	0xc7
	.byte	0
	.uleb128 0x4
	.long	0x7c
	.long	0x1652
	.uleb128 0x19
	.long	0x75
	.value	0x3ff
	.byte	0
	.uleb128 0x4
	.long	0xa9
	.long	0x1662
	.uleb128 0x5
	.long	0x75
	.byte	0x5
	.byte	0
	.uleb128 0x10
	.long	.LASF349
	.byte	0x5
	.value	0x361
	.long	0xe13
	.uleb128 0x1a
	.long	0x11c20
	.byte	0x5
	.value	0x364
	.long	0x2053
	.uleb128 0xe
	.long	.LASF350
	.byte	0x5
	.value	0x366
	.long	0x34
	.byte	0
	.uleb128 0x12
	.string	"pn"
	.byte	0x5
	.value	0x367
	.long	0x34
	.byte	0x4
	.uleb128 0xe
	.long	.LASF351
	.byte	0x5
	.value	0x368
	.long	0x34
	.byte	0x8
	.uleb128 0xe
	.long	.LASF352
	.byte	0x5
	.value	0x369
	.long	0x34
	.byte	0xc
	.uleb128 0xe
	.long	.LASF353
	.byte	0x5
	.value	0x36a
	.long	0x34
	.byte	0x10
	.uleb128 0xe
	.long	.LASF354
	.byte	0x5
	.value	0x36b
	.long	0x34
	.byte	0x14
	.uleb128 0xe
	.long	.LASF122
	.byte	0x5
	.value	0x36c
	.long	0x34
	.byte	0x18
	.uleb128 0xe
	.long	.LASF355
	.byte	0x5
	.value	0x36d
	.long	0x34
	.byte	0x1c
	.uleb128 0xe
	.long	.LASF226
	.byte	0x5
	.value	0x36e
	.long	0x34
	.byte	0x20
	.uleb128 0xe
	.long	.LASF356
	.byte	0x5
	.value	0x36f
	.long	0x34
	.byte	0x24
	.uleb128 0x12
	.string	"qp"
	.byte	0x5
	.value	0x370
	.long	0x34
	.byte	0x28
	.uleb128 0xe
	.long	.LASF134
	.byte	0x5
	.value	0x371
	.long	0x34
	.byte	0x2c
	.uleb128 0xe
	.long	.LASF357
	.byte	0x5
	.value	0x372
	.long	0xa2
	.byte	0x30
	.uleb128 0xe
	.long	.LASF358
	.byte	0x5
	.value	0x373
	.long	0x34
	.byte	0x34
	.uleb128 0xe
	.long	.LASF359
	.byte	0x5
	.value	0x374
	.long	0x34
	.byte	0x38
	.uleb128 0xe
	.long	.LASF360
	.byte	0x5
	.value	0x375
	.long	0x34
	.byte	0x3c
	.uleb128 0xe
	.long	.LASF361
	.byte	0x5
	.value	0x376
	.long	0x34
	.byte	0x40
	.uleb128 0xe
	.long	.LASF362
	.byte	0x5
	.value	0x377
	.long	0x34
	.byte	0x44
	.uleb128 0xe
	.long	.LASF363
	.byte	0x5
	.value	0x378
	.long	0x34
	.byte	0x48
	.uleb128 0xe
	.long	.LASF364
	.byte	0x5
	.value	0x379
	.long	0x34
	.byte	0x4c
	.uleb128 0xe
	.long	.LASF365
	.byte	0x5
	.value	0x37a
	.long	0x34
	.byte	0x50
	.uleb128 0xe
	.long	.LASF366
	.byte	0x5
	.value	0x37b
	.long	0x34
	.byte	0x54
	.uleb128 0xe
	.long	.LASF367
	.byte	0x5
	.value	0x37c
	.long	0x34
	.byte	0x58
	.uleb128 0xe
	.long	.LASF368
	.byte	0x5
	.value	0x37d
	.long	0x34
	.byte	0x5c
	.uleb128 0xe
	.long	.LASF369
	.byte	0x5
	.value	0x37e
	.long	0x34
	.byte	0x60
	.uleb128 0xe
	.long	.LASF370
	.byte	0x5
	.value	0x37f
	.long	0xdf5
	.byte	0x68
	.uleb128 0xe
	.long	.LASF371
	.byte	0x5
	.value	0x380
	.long	0xdf5
	.byte	0x70
	.uleb128 0xe
	.long	.LASF372
	.byte	0x5
	.value	0x382
	.long	0x34
	.byte	0x78
	.uleb128 0xe
	.long	.LASF373
	.byte	0x5
	.value	0x383
	.long	0x2053
	.byte	0x80
	.uleb128 0xe
	.long	.LASF374
	.byte	0x5
	.value	0x385
	.long	0x34
	.byte	0x88
	.uleb128 0xe
	.long	.LASF375
	.byte	0x5
	.value	0x386
	.long	0x34
	.byte	0x8c
	.uleb128 0xe
	.long	.LASF376
	.byte	0x5
	.value	0x387
	.long	0x34
	.byte	0x90
	.uleb128 0xe
	.long	.LASF377
	.byte	0x5
	.value	0x388
	.long	0x34
	.byte	0x94
	.uleb128 0xe
	.long	.LASF378
	.byte	0x5
	.value	0x389
	.long	0x34
	.byte	0x98
	.uleb128 0xe
	.long	.LASF379
	.byte	0x5
	.value	0x38a
	.long	0x34
	.byte	0x9c
	.uleb128 0xe
	.long	.LASF380
	.byte	0x5
	.value	0x38b
	.long	0x34
	.byte	0xa0
	.uleb128 0xe
	.long	.LASF381
	.byte	0x5
	.value	0x38c
	.long	0x34
	.byte	0xa4
	.uleb128 0xe
	.long	.LASF382
	.byte	0x5
	.value	0x38e
	.long	0x34
	.byte	0xa8
	.uleb128 0xe
	.long	.LASF383
	.byte	0x5
	.value	0x38f
	.long	0x34
	.byte	0xac
	.uleb128 0xe
	.long	.LASF384
	.byte	0x5
	.value	0x390
	.long	0x34
	.byte	0xb0
	.uleb128 0xe
	.long	.LASF385
	.byte	0x5
	.value	0x391
	.long	0x34
	.byte	0xb4
	.uleb128 0xe
	.long	.LASF386
	.byte	0x5
	.value	0x395
	.long	0x2059
	.byte	0xb8
	.uleb128 0xf
	.long	.LASF387
	.byte	0x5
	.value	0x397
	.long	0x2075
	.value	0x12b8
	.uleb128 0xf
	.long	.LASF388
	.byte	0x5
	.value	0x398
	.long	0x2091
	.value	0x1cb8
	.uleb128 0xf
	.long	.LASF389
	.byte	0x5
	.value	0x399
	.long	0x20ad
	.value	0x2138
	.uleb128 0x16
	.string	"mpr"
	.byte	0x5
	.value	0x39a
	.long	0x20cf
	.value	0x3138
	.uleb128 0x16
	.string	"m7"
	.byte	0x5
	.value	0x39b
	.long	0x20e5
	.value	0x3338
	.uleb128 0xf
	.long	.LASF390
	.byte	0x5
	.value	0x39d
	.long	0x20fb
	.value	0x3738
	.uleb128 0xf
	.long	.LASF391
	.byte	0x5
	.value	0x39e
	.long	0x2053
	.value	0x3740
	.uleb128 0xf
	.long	.LASF392
	.byte	0x5
	.value	0x3a0
	.long	0x2101
	.value	0x3748
	.uleb128 0xf
	.long	.LASF393
	.byte	0x5
	.value	0x3a1
	.long	0xde3
	.value	0x3750
	.uleb128 0xf
	.long	.LASF394
	.byte	0x5
	.value	0x3a2
	.long	0x2107
	.value	0x3758
	.uleb128 0xf
	.long	.LASF395
	.byte	0x5
	.value	0x3a3
	.long	0x210d
	.value	0x3760
	.uleb128 0x1b
	.long	.LASF396
	.byte	0x5
	.value	0x3a5
	.long	0x83
	.long	0x11860
	.uleb128 0x1b
	.long	.LASF397
	.byte	0x5
	.value	0x3a6
	.long	0x83
	.long	0x11868
	.uleb128 0x1c
	.string	"tr"
	.byte	0x5
	.value	0x3a8
	.long	0x34
	.long	0x11870
	.uleb128 0x1b
	.long	.LASF398
	.byte	0x5
	.value	0x3a9
	.long	0x34
	.long	0x11874
	.uleb128 0x1b
	.long	.LASF399
	.byte	0x5
	.value	0x3aa
	.long	0x49
	.long	0x11878
	.uleb128 0x1b
	.long	.LASF400
	.byte	0x5
	.value	0x3ab
	.long	0x49
	.long	0x1187c
	.uleb128 0x1b
	.long	.LASF401
	.byte	0x5
	.value	0x3ac
	.long	0x211e
	.long	0x11880
	.uleb128 0x1b
	.long	.LASF402
	.byte	0x5
	.value	0x3ad
	.long	0x34
	.long	0x118c0
	.uleb128 0x1b
	.long	.LASF403
	.byte	0x5
	.value	0x3ae
	.long	0x34
	.long	0x118c4
	.uleb128 0x1b
	.long	.LASF404
	.byte	0x5
	.value	0x3af
	.long	0x34
	.long	0x118c8
	.uleb128 0x1b
	.long	.LASF405
	.byte	0x5
	.value	0x3b0
	.long	0x34
	.long	0x118cc
	.uleb128 0x1b
	.long	.LASF406
	.byte	0x5
	.value	0x3b1
	.long	0x34
	.long	0x118d0
	.uleb128 0x1b
	.long	.LASF407
	.byte	0x5
	.value	0x3b4
	.long	0xa9
	.long	0x118d8
	.uleb128 0x1b
	.long	.LASF408
	.byte	0x5
	.value	0x3b5
	.long	0x34
	.long	0x118e0
	.uleb128 0x1b
	.long	.LASF409
	.byte	0x5
	.value	0x3b6
	.long	0x34
	.long	0x118e4
	.uleb128 0x1b
	.long	.LASF410
	.byte	0x5
	.value	0x3b7
	.long	0x34
	.long	0x118e8
	.uleb128 0x1b
	.long	.LASF411
	.byte	0x5
	.value	0x3b8
	.long	0x34
	.long	0x118ec
	.uleb128 0x1b
	.long	.LASF412
	.byte	0x5
	.value	0x3ba
	.long	0x2134
	.long	0x118f0
	.uleb128 0x1b
	.long	.LASF413
	.byte	0x5
	.value	0x3bb
	.long	0x2134
	.long	0x118f8
	.uleb128 0x1b
	.long	.LASF414
	.byte	0x5
	.value	0x3bd
	.long	0x2134
	.long	0x11900
	.uleb128 0x1b
	.long	.LASF415
	.byte	0x5
	.value	0x3be
	.long	0x2134
	.long	0x11908
	.uleb128 0x1b
	.long	.LASF162
	.byte	0x5
	.value	0x3bf
	.long	0x2158
	.long	0x11910
	.uleb128 0x1b
	.long	.LASF169
	.byte	0x5
	.value	0x3c3
	.long	0x34
	.long	0x11930
	.uleb128 0x1b
	.long	.LASF170
	.byte	0x5
	.value	0x3c4
	.long	0x34
	.long	0x11934
	.uleb128 0x1b
	.long	.LASF171
	.byte	0x5
	.value	0x3c5
	.long	0x34
	.long	0x11938
	.uleb128 0x1b
	.long	.LASF253
	.byte	0x5
	.value	0x3c7
	.long	0x34
	.long	0x1193c
	.uleb128 0x1b
	.long	.LASF416
	.byte	0x5
	.value	0x3c9
	.long	0x34
	.long	0x11940
	.uleb128 0x1b
	.long	.LASF417
	.byte	0x5
	.value	0x3ca
	.long	0x34
	.long	0x11944
	.uleb128 0x1b
	.long	.LASF418
	.byte	0x5
	.value	0x3cc
	.long	0x34
	.long	0x11948
	.uleb128 0x1b
	.long	.LASF419
	.byte	0x5
	.value	0x3cd
	.long	0x34
	.long	0x1194c
	.uleb128 0x1b
	.long	.LASF420
	.byte	0x5
	.value	0x3ce
	.long	0x2168
	.long	0x11950
	.uleb128 0x1b
	.long	.LASF421
	.byte	0x5
	.value	0x3cf
	.long	0x34
	.long	0x11ab8
	.uleb128 0x1b
	.long	.LASF422
	.byte	0x5
	.value	0x3d0
	.long	0x34
	.long	0x11abc
	.uleb128 0x1b
	.long	.LASF423
	.byte	0x5
	.value	0x3d2
	.long	0x34
	.long	0x11ac0
	.uleb128 0x1b
	.long	.LASF424
	.byte	0x5
	.value	0x3d3
	.long	0x34
	.long	0x11ac4
	.uleb128 0x1b
	.long	.LASF425
	.byte	0x5
	.value	0x3d4
	.long	0x34
	.long	0x11ac8
	.uleb128 0x1b
	.long	.LASF426
	.byte	0x5
	.value	0x3d6
	.long	0x34
	.long	0x11acc
	.uleb128 0x1b
	.long	.LASF427
	.byte	0x5
	.value	0x3d8
	.long	0x34
	.long	0x11ad0
	.uleb128 0x1b
	.long	.LASF323
	.byte	0x5
	.value	0x3dc
	.long	0x49
	.long	0x11ad4
	.uleb128 0x1b
	.long	.LASF428
	.byte	0x5
	.value	0x3e0
	.long	0x49
	.long	0x11ad8
	.uleb128 0x1b
	.long	.LASF429
	.byte	0x5
	.value	0x3e1
	.long	0x34
	.long	0x11adc
	.uleb128 0x1b
	.long	.LASF430
	.byte	0x5
	.value	0x3e2
	.long	0x34
	.long	0x11ae0
	.uleb128 0x1b
	.long	.LASF431
	.byte	0x5
	.value	0x3e3
	.long	0x49
	.long	0x11ae4
	.uleb128 0x1b
	.long	.LASF432
	.byte	0x5
	.value	0x3e4
	.long	0x217e
	.long	0x11ae8
	.uleb128 0x1b
	.long	.LASF433
	.byte	0x5
	.value	0x3e9
	.long	0x49
	.long	0x11aec
	.uleb128 0x1b
	.long	.LASF434
	.byte	0x5
	.value	0x3ea
	.long	0x34
	.long	0x11af0
	.uleb128 0x1b
	.long	.LASF435
	.byte	0x5
	.value	0x3ec
	.long	0x65
	.long	0x11af4
	.uleb128 0x1b
	.long	.LASF436
	.byte	0x5
	.value	0x3f0
	.long	0x49
	.long	0x11afc
	.uleb128 0x1b
	.long	.LASF437
	.byte	0x5
	.value	0x3f1
	.long	0x34
	.long	0x11b00
	.uleb128 0x1b
	.long	.LASF438
	.byte	0x5
	.value	0x3f2
	.long	0x34
	.long	0x11b04
	.uleb128 0x1b
	.long	.LASF439
	.byte	0x5
	.value	0x3f3
	.long	0x34
	.long	0x11b08
	.uleb128 0x1b
	.long	.LASF440
	.byte	0x5
	.value	0x3f4
	.long	0x34
	.long	0x11b0c
	.uleb128 0x1b
	.long	.LASF441
	.byte	0x5
	.value	0x3f5
	.long	0x49
	.long	0x11b10
	.uleb128 0x1b
	.long	.LASF442
	.byte	0x5
	.value	0x3f7
	.long	0x49
	.long	0x11b14
	.uleb128 0x1b
	.long	.LASF443
	.byte	0x5
	.value	0x3f8
	.long	0x49
	.long	0x11b18
	.uleb128 0x1b
	.long	.LASF444
	.byte	0x5
	.value	0x3f9
	.long	0x49
	.long	0x11b1c
	.uleb128 0x1b
	.long	.LASF445
	.byte	0x5
	.value	0x3fa
	.long	0x49
	.long	0x11b20
	.uleb128 0x1b
	.long	.LASF446
	.byte	0x5
	.value	0x3fb
	.long	0x49
	.long	0x11b24
	.uleb128 0x1b
	.long	.LASF447
	.byte	0x5
	.value	0x3fc
	.long	0x49
	.long	0x11b28
	.uleb128 0x1b
	.long	.LASF25
	.byte	0x5
	.value	0x3ff
	.long	0x49
	.long	0x11b2c
	.uleb128 0x1b
	.long	.LASF448
	.byte	0x5
	.value	0x403
	.long	0x34
	.long	0x11b30
	.uleb128 0x1b
	.long	.LASF449
	.byte	0x5
	.value	0x405
	.long	0x34
	.long	0x11b34
	.uleb128 0x1b
	.long	.LASF450
	.byte	0x5
	.value	0x406
	.long	0x34
	.long	0x11b38
	.uleb128 0x1b
	.long	.LASF451
	.byte	0x5
	.value	0x407
	.long	0x34
	.long	0x11b3c
	.uleb128 0x1b
	.long	.LASF452
	.byte	0x5
	.value	0x409
	.long	0x218e
	.long	0x11b40
	.uleb128 0x1b
	.long	.LASF325
	.byte	0x5
	.value	0x40b
	.long	0x34
	.long	0x11b48
	.uleb128 0x1b
	.long	.LASF453
	.byte	0x5
	.value	0x40f
	.long	0x34
	.long	0x11b4c
	.uleb128 0x1b
	.long	.LASF454
	.byte	0x5
	.value	0x410
	.long	0x34
	.long	0x11b50
	.uleb128 0x1b
	.long	.LASF455
	.byte	0x5
	.value	0x411
	.long	0x34
	.long	0x11b54
	.uleb128 0x1b
	.long	.LASF456
	.byte	0x5
	.value	0x412
	.long	0x34
	.long	0x11b58
	.uleb128 0x1b
	.long	.LASF457
	.byte	0x5
	.value	0x413
	.long	0xa9
	.long	0x11b60
	.uleb128 0x1b
	.long	.LASF458
	.byte	0x5
	.value	0x414
	.long	0x34
	.long	0x11b68
	.uleb128 0x1b
	.long	.LASF459
	.byte	0x5
	.value	0x415
	.long	0x34
	.long	0x11b6c
	.uleb128 0x1b
	.long	.LASF460
	.byte	0x5
	.value	0x416
	.long	0x34
	.long	0x11b70
	.uleb128 0x1b
	.long	.LASF461
	.byte	0x5
	.value	0x417
	.long	0x34
	.long	0x11b74
	.uleb128 0x1b
	.long	.LASF462
	.byte	0x5
	.value	0x418
	.long	0x34
	.long	0x11b78
	.uleb128 0x1b
	.long	.LASF463
	.byte	0x5
	.value	0x419
	.long	0x34
	.long	0x11b7c
	.uleb128 0x1b
	.long	.LASF464
	.byte	0x5
	.value	0x41a
	.long	0x34
	.long	0x11b80
	.uleb128 0x1b
	.long	.LASF465
	.byte	0x5
	.value	0x41b
	.long	0x2194
	.long	0x11b88
	.uleb128 0x1b
	.long	.LASF466
	.byte	0x5
	.value	0x41c
	.long	0x34
	.long	0x11b90
	.uleb128 0x1b
	.long	.LASF467
	.byte	0x5
	.value	0x41d
	.long	0x34
	.long	0x11b94
	.uleb128 0x1b
	.long	.LASF468
	.byte	0x5
	.value	0x41e
	.long	0x34
	.long	0x11b98
	.uleb128 0x1b
	.long	.LASF469
	.byte	0x5
	.value	0x41f
	.long	0x34
	.long	0x11b9c
	.uleb128 0x1b
	.long	.LASF470
	.byte	0x5
	.value	0x420
	.long	0x34
	.long	0x11ba0
	.uleb128 0x1b
	.long	.LASF471
	.byte	0x5
	.value	0x421
	.long	0x34
	.long	0x11ba4
	.uleb128 0x1b
	.long	.LASF472
	.byte	0x5
	.value	0x422
	.long	0x34
	.long	0x11ba8
	.uleb128 0x1b
	.long	.LASF473
	.byte	0x5
	.value	0x423
	.long	0x34
	.long	0x11bac
	.uleb128 0x1b
	.long	.LASF474
	.byte	0x5
	.value	0x424
	.long	0x34
	.long	0x11bb0
	.uleb128 0x1b
	.long	.LASF475
	.byte	0x5
	.value	0x425
	.long	0x34
	.long	0x11bb4
	.uleb128 0x1b
	.long	.LASF476
	.byte	0x5
	.value	0x426
	.long	0x34
	.long	0x11bb8
	.uleb128 0x1b
	.long	.LASF477
	.byte	0x5
	.value	0x428
	.long	0x34
	.long	0x11bbc
	.uleb128 0x1b
	.long	.LASF478
	.byte	0x5
	.value	0x42a
	.long	0x34
	.long	0x11bc0
	.uleb128 0x1b
	.long	.LASF479
	.byte	0x5
	.value	0x42b
	.long	0x34
	.long	0x11bc4
	.uleb128 0x1b
	.long	.LASF480
	.byte	0x5
	.value	0x42c
	.long	0x34
	.long	0x11bc8
	.uleb128 0x1b
	.long	.LASF321
	.byte	0x5
	.value	0x42e
	.long	0x34
	.long	0x11bcc
	.uleb128 0x1b
	.long	.LASF481
	.byte	0x5
	.value	0x430
	.long	0x34
	.long	0x11bd0
	.uleb128 0x1b
	.long	.LASF482
	.byte	0x5
	.value	0x431
	.long	0x34
	.long	0x11bd4
	.uleb128 0x1b
	.long	.LASF483
	.byte	0x5
	.value	0x432
	.long	0x34
	.long	0x11bd8
	.uleb128 0x1b
	.long	.LASF484
	.byte	0x5
	.value	0x433
	.long	0x34
	.long	0x11bdc
	.uleb128 0x1b
	.long	.LASF485
	.byte	0x5
	.value	0x434
	.long	0x34
	.long	0x11be0
	.uleb128 0x1b
	.long	.LASF486
	.byte	0x5
	.value	0x435
	.long	0x34
	.long	0x11be4
	.uleb128 0x1b
	.long	.LASF487
	.byte	0x5
	.value	0x436
	.long	0x49
	.long	0x11be8
	.uleb128 0x1b
	.long	.LASF488
	.byte	0x5
	.value	0x437
	.long	0x34
	.long	0x11bec
	.uleb128 0x1b
	.long	.LASF489
	.byte	0x5
	.value	0x438
	.long	0x34
	.long	0x11bf0
	.uleb128 0x1b
	.long	.LASF490
	.byte	0x5
	.value	0x43a
	.long	0x34
	.long	0x11bf4
	.uleb128 0x1b
	.long	.LASF491
	.byte	0x5
	.value	0x43b
	.long	0x34
	.long	0x11bf8
	.uleb128 0x1b
	.long	.LASF235
	.byte	0x5
	.value	0x43c
	.long	0x34
	.long	0x11bfc
	.uleb128 0x1b
	.long	.LASF492
	.byte	0x5
	.value	0x43d
	.long	0x34
	.long	0x11c00
	.uleb128 0x1b
	.long	.LASF493
	.byte	0x5
	.value	0x43e
	.long	0x34
	.long	0x11c04
	.uleb128 0x1b
	.long	.LASF494
	.byte	0x5
	.value	0x43f
	.long	0x34
	.long	0x11c08
	.uleb128 0x1b
	.long	.LASF495
	.byte	0x5
	.value	0x441
	.long	0x65
	.long	0x11c0c
	.uleb128 0x1b
	.long	.LASF344
	.byte	0x5
	.value	0x444
	.long	0x34
	.long	0x11c14
	.uleb128 0x1b
	.long	.LASF496
	.byte	0x5
	.value	0x446
	.long	0x34
	.long	0x11c18
	.uleb128 0x1b
	.long	.LASF497
	.byte	0x5
	.value	0x447
	.long	0x34
	.long	0x11c1c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xdf5
	.uleb128 0x4
	.long	0x42
	.long	0x2075
	.uleb128 0x5
	.long	0x75
	.byte	0x8
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.long	0x42
	.long	0x2091
	.uleb128 0x5
	.long	0x75
	.byte	0x4
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.long	0x42
	.long	0x20ad
	.uleb128 0x5
	.long	0x75
	.byte	0x8
	.uleb128 0x5
	.long	0x75
	.byte	0x7
	.uleb128 0x5
	.long	0x75
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.long	0x42
	.long	0x20cf
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.long	0x42
	.long	0x20e5
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x20fb
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2053
	.uleb128 0x6
	.byte	0x8
	.long	0xde9
	.uleb128 0x6
	.byte	0x8
	.long	0xaef
	.uleb128 0x4
	.long	0x821
	.long	0x211e
	.uleb128 0x19
	.long	0x75
	.value	0x4af
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x2134
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x213a
	.uleb128 0x6
	.byte	0x8
	.long	0x2140
	.uleb128 0x6
	.byte	0x8
	.long	0x2146
	.uleb128 0x6
	.byte	0x8
	.long	0x214c
	.uleb128 0x6
	.byte	0x8
	.long	0x2152
	.uleb128 0x6
	.byte	0x8
	.long	0x57
	.uleb128 0x4
	.long	0x57
	.long	0x2168
	.uleb128 0x5
	.long	0x75
	.byte	0xe
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x217e
	.uleb128 0x5
	.long	0x75
	.byte	0x5
	.uleb128 0x5
	.long	0x75
	.byte	0xe
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x218e
	.uleb128 0x5
	.long	0x75
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x74b
	.uleb128 0x6
	.byte	0x8
	.long	0xa9
	.uleb128 0x10
	.long	.LASF498
	.byte	0x5
	.value	0x449
	.long	0x166e
	.uleb128 0x1d
	.long	.LASF499
	.value	0x19b8
	.byte	0x6
	.byte	0x15
	.long	0x241c
	.uleb128 0xb
	.long	.LASF355
	.byte	0x6
	.byte	0x17
	.long	0x2f7
	.byte	0
	.uleb128 0xc
	.string	"poc"
	.byte	0x6
	.byte	0x19
	.long	0x34
	.byte	0x4
	.uleb128 0xb
	.long	.LASF500
	.byte	0x6
	.byte	0x1a
	.long	0x34
	.byte	0x8
	.uleb128 0xb
	.long	.LASF501
	.byte	0x6
	.byte	0x1b
	.long	0x34
	.byte	0xc
	.uleb128 0xb
	.long	.LASF502
	.byte	0x6
	.byte	0x1c
	.long	0x34
	.byte	0x10
	.uleb128 0xb
	.long	.LASF503
	.byte	0x6
	.byte	0x1d
	.long	0x34
	.byte	0x14
	.uleb128 0xb
	.long	.LASF504
	.byte	0x6
	.byte	0x1e
	.long	0x241c
	.byte	0x18
	.uleb128 0x1e
	.long	.LASF505
	.byte	0x6
	.byte	0x1f
	.long	0x241c
	.value	0x648
	.uleb128 0x1e
	.long	.LASF506
	.byte	0x6
	.byte	0x20
	.long	0x241c
	.value	0xc78
	.uleb128 0x1e
	.long	.LASF507
	.byte	0x6
	.byte	0x21
	.long	0x241c
	.value	0x12a8
	.uleb128 0x1e
	.long	.LASF441
	.byte	0x6
	.byte	0x22
	.long	0x49
	.value	0x18d8
	.uleb128 0x1e
	.long	.LASF508
	.byte	0x6
	.byte	0x23
	.long	0x34
	.value	0x18dc
	.uleb128 0x1e
	.long	.LASF117
	.byte	0x6
	.byte	0x24
	.long	0x34
	.value	0x18e0
	.uleb128 0x1e
	.long	.LASF118
	.byte	0x6
	.byte	0x25
	.long	0x34
	.value	0x18e4
	.uleb128 0x1e
	.long	.LASF509
	.byte	0x6
	.byte	0x27
	.long	0x34
	.value	0x18e8
	.uleb128 0x1e
	.long	.LASF510
	.byte	0x6
	.byte	0x28
	.long	0x34
	.value	0x18ec
	.uleb128 0x1e
	.long	.LASF511
	.byte	0x6
	.byte	0x29
	.long	0x34
	.value	0x18f0
	.uleb128 0x1e
	.long	.LASF512
	.byte	0x6
	.byte	0x2a
	.long	0x34
	.value	0x18f4
	.uleb128 0x1e
	.long	.LASF513
	.byte	0x6
	.byte	0x2c
	.long	0x34
	.value	0x18f8
	.uleb128 0x1e
	.long	.LASF514
	.byte	0x6
	.byte	0x2c
	.long	0x34
	.value	0x18fc
	.uleb128 0x1e
	.long	.LASF515
	.byte	0x6
	.byte	0x2c
	.long	0x34
	.value	0x1900
	.uleb128 0x1e
	.long	.LASF516
	.byte	0x6
	.byte	0x2c
	.long	0x34
	.value	0x1904
	.uleb128 0x1e
	.long	.LASF517
	.byte	0x6
	.byte	0x2d
	.long	0x34
	.value	0x1908
	.uleb128 0x1e
	.long	.LASF518
	.byte	0x6
	.byte	0x2e
	.long	0x34
	.value	0x190c
	.uleb128 0x1e
	.long	.LASF427
	.byte	0x6
	.byte	0x2f
	.long	0x34
	.value	0x1910
	.uleb128 0x1e
	.long	.LASF519
	.byte	0x6
	.byte	0x31
	.long	0xe01
	.value	0x1918
	.uleb128 0x1e
	.long	.LASF520
	.byte	0x6
	.byte	0x32
	.long	0xe07
	.value	0x1920
	.uleb128 0x1e
	.long	.LASF521
	.byte	0x6
	.byte	0x33
	.long	0xe07
	.value	0x1928
	.uleb128 0x1e
	.long	.LASF522
	.byte	0x6
	.byte	0x34
	.long	0xe01
	.value	0x1930
	.uleb128 0x1e
	.long	.LASF523
	.byte	0x6
	.byte	0x35
	.long	0xe01
	.value	0x1938
	.uleb128 0x1e
	.long	.LASF524
	.byte	0x6
	.byte	0x36
	.long	0xdfb
	.value	0x1940
	.uleb128 0x1e
	.long	.LASF150
	.byte	0x6
	.byte	0x38
	.long	0x26c
	.value	0x1948
	.uleb128 0x1e
	.long	.LASF525
	.byte	0x6
	.byte	0x3a
	.long	0x2146
	.value	0x1950
	.uleb128 0x1e
	.long	.LASF526
	.byte	0x6
	.byte	0x3c
	.long	0x2432
	.value	0x1958
	.uleb128 0x1e
	.long	.LASF527
	.byte	0x6
	.byte	0x3f
	.long	0x2432
	.value	0x1960
	.uleb128 0x1f
	.string	"mv"
	.byte	0x6
	.byte	0x42
	.long	0x2140
	.value	0x1968
	.uleb128 0x1e
	.long	.LASF528
	.byte	0x6
	.byte	0x44
	.long	0xe0d
	.value	0x1970
	.uleb128 0x1e
	.long	.LASF529
	.byte	0x6
	.byte	0x45
	.long	0xe0d
	.value	0x1978
	.uleb128 0x1e
	.long	.LASF419
	.byte	0x6
	.byte	0x47
	.long	0x2444
	.value	0x1980
	.uleb128 0x1e
	.long	.LASF530
	.byte	0x6
	.byte	0x48
	.long	0x2444
	.value	0x1988
	.uleb128 0x1e
	.long	.LASF531
	.byte	0x6
	.byte	0x49
	.long	0x2444
	.value	0x1990
	.uleb128 0x1e
	.long	.LASF532
	.byte	0x6
	.byte	0x4b
	.long	0x34
	.value	0x1998
	.uleb128 0x1e
	.long	.LASF533
	.byte	0x6
	.byte	0x4c
	.long	0x34
	.value	0x199c
	.uleb128 0x1e
	.long	.LASF534
	.byte	0x6
	.byte	0x4d
	.long	0x34
	.value	0x19a0
	.uleb128 0x1e
	.long	.LASF535
	.byte	0x6
	.byte	0x4e
	.long	0x34
	.value	0x19a4
	.uleb128 0x1e
	.long	.LASF536
	.byte	0x6
	.byte	0x4f
	.long	0x34
	.value	0x19a8
	.uleb128 0x1e
	.long	.LASF537
	.byte	0x6
	.byte	0x50
	.long	0x34
	.value	0x19ac
	.uleb128 0x1e
	.long	.LASF538
	.byte	0x6
	.byte	0x51
	.long	0x34
	.value	0x19b0
	.byte	0
	.uleb128 0x4
	.long	0x27d
	.long	0x2432
	.uleb128 0x5
	.long	0x75
	.byte	0x5
	.uleb128 0x5
	.long	0x75
	.byte	0x20
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2438
	.uleb128 0x6
	.byte	0x8
	.long	0x243e
	.uleb128 0x6
	.byte	0x8
	.long	0x27d
	.uleb128 0x6
	.byte	0x8
	.long	0x21a6
	.uleb128 0x7
	.long	.LASF539
	.byte	0x6
	.byte	0x52
	.long	0x21a6
	.uleb128 0x6
	.byte	0x8
	.long	0x244a
	.uleb128 0x20
	.long	.LASF616
	.byte	0x1
	.byte	0x6a
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x25af
	.uleb128 0x21
	.long	.LASF540
	.byte	0x1
	.byte	0x6a
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -324
	.uleb128 0x21
	.long	.LASF541
	.byte	0x1
	.byte	0x6a
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x21
	.long	.LASF542
	.byte	0x1
	.byte	0x6a
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x21
	.long	.LASF543
	.byte	0x1
	.byte	0x6a
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x21
	.long	.LASF544
	.byte	0x1
	.byte	0x6a
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x22
	.string	"i"
	.byte	0x1
	.byte	0x6c
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x22
	.string	"j"
	.byte	0x1
	.byte	0x6c
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -316
	.uleb128 0x22
	.string	"s0"
	.byte	0x1
	.byte	0x6d
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x23
	.long	.LASF545
	.byte	0x1
	.byte	0x6e
	.long	0x25af
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x23
	.long	.LASF519
	.byte	0x1
	.byte	0x6f
	.long	0xe01
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x23
	.long	.LASF546
	.byte	0x1
	.byte	0x71
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -292
	.uleb128 0x23
	.long	.LASF547
	.byte	0x1
	.byte	0x72
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x23
	.long	.LASF548
	.byte	0x1
	.byte	0x73
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -284
	.uleb128 0x23
	.long	.LASF549
	.byte	0x1
	.byte	0x75
	.long	0x25bf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x23
	.long	.LASF550
	.byte	0x1
	.byte	0x76
	.long	0x696
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x23
	.long	.LASF551
	.byte	0x1
	.byte	0x76
	.long	0x696
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x23
	.long	.LASF552
	.byte	0x1
	.byte	0x76
	.long	0x696
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x23
	.long	.LASF553
	.byte	0x1
	.byte	0x78
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -308
	.uleb128 0x23
	.long	.LASF554
	.byte	0x1
	.byte	0x79
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x23
	.long	.LASF555
	.byte	0x1
	.byte	0x7a
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -300
	.uleb128 0x23
	.long	.LASF556
	.byte	0x1
	.byte	0x7b
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x25bf
	.uleb128 0x5
	.long	0x75
	.byte	0xc
	.byte	0
	.uleb128 0x4
	.long	0x696
	.long	0x25cf
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x24
	.long	.LASF651
	.byte	0x1
	.value	0x18c
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x2700
	.uleb128 0x25
	.string	"s0"
	.byte	0x1
	.value	0x18e
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -656
	.uleb128 0x25
	.string	"s1"
	.byte	0x1
	.value	0x18e
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -652
	.uleb128 0x25
	.string	"s2"
	.byte	0x1
	.value	0x18e
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -648
	.uleb128 0x25
	.string	"s"
	.byte	0x1
	.value	0x18f
	.long	0x2700
	.uleb128 0x3
	.byte	0x91
	.sleb128 -560
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.value	0x190
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -644
	.uleb128 0x25
	.string	"j"
	.byte	0x1
	.value	0x190
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -640
	.uleb128 0x25
	.string	"ih"
	.byte	0x1
	.value	0x192
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -636
	.uleb128 0x25
	.string	"iv"
	.byte	0x1
	.value	0x192
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -632
	.uleb128 0x25
	.string	"ib"
	.byte	0x1
	.value	0x193
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -612
	.uleb128 0x25
	.string	"ic"
	.byte	0x1
	.value	0x193
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -608
	.uleb128 0x25
	.string	"iaa"
	.byte	0x1
	.value	0x193
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -604
	.uleb128 0x26
	.long	.LASF557
	.byte	0x1
	.value	0x195
	.long	0xe01
	.uleb128 0x3
	.byte	0x91
	.sleb128 -600
	.uleb128 0x26
	.long	.LASF548
	.byte	0x1
	.value	0x196
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -616
	.uleb128 0x25
	.string	"up"
	.byte	0x1
	.value	0x198
	.long	0x696
	.uleb128 0x3
	.byte	0x91
	.sleb128 -592
	.uleb128 0x26
	.long	.LASF558
	.byte	0x1
	.value	0x199
	.long	0x2716
	.uleb128 0x3
	.byte	0x91
	.sleb128 -432
	.uleb128 0x26
	.long	.LASF559
	.byte	0x1
	.value	0x19b
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -628
	.uleb128 0x26
	.long	.LASF560
	.byte	0x1
	.value	0x19b
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -624
	.uleb128 0x26
	.long	.LASF561
	.byte	0x1
	.value	0x19b
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -620
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x2716
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.long	0x696
	.long	0x2726
	.uleb128 0x5
	.long	0x75
	.byte	0x10
	.byte	0
	.uleb128 0x27
	.long	.LASF576
	.byte	0x1
	.value	0x202
	.long	0x34
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x28fa
	.uleb128 0x28
	.long	.LASF562
	.byte	0x1
	.value	0x202
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2292
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.value	0x205
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2284
	.uleb128 0x25
	.string	"j"
	.byte	0x1
	.value	0x205
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2280
	.uleb128 0x25
	.string	"ii"
	.byte	0x1
	.value	0x206
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2276
	.uleb128 0x25
	.string	"jj"
	.byte	0x1
	.value	0x206
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2272
	.uleb128 0x25
	.string	"i1"
	.byte	0x1
	.value	0x207
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2232
	.uleb128 0x25
	.string	"j1"
	.byte	0x1
	.value	0x207
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2228
	.uleb128 0x25
	.string	"M1"
	.byte	0x1
	.value	0x208
	.long	0x20e5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2080
	.uleb128 0x25
	.string	"M4"
	.byte	0x1
	.value	0x209
	.long	0x211e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2144
	.uleb128 0x25
	.string	"M5"
	.byte	0x1
	.value	0x20a
	.long	0xadf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2176
	.uleb128 0x25
	.string	"M6"
	.byte	0x1
	.value	0x20a
	.long	0xadf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2160
	.uleb128 0x25
	.string	"M0"
	.byte	0x1
	.value	0x20b
	.long	0x28fa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1056
	.uleb128 0x25
	.string	"run"
	.byte	0x1
	.value	0x20c
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2268
	.uleb128 0x26
	.long	.LASF563
	.byte	0x1
	.value	0x20c
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2264
	.uleb128 0x26
	.long	.LASF564
	.byte	0x1
	.value	0x20c
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2260
	.uleb128 0x26
	.long	.LASF565
	.byte	0x1
	.value	0x20c
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2256
	.uleb128 0x26
	.long	.LASF566
	.byte	0x1
	.value	0x20d
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2244
	.uleb128 0x26
	.long	.LASF567
	.byte	0x1
	.value	0x20d
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2240
	.uleb128 0x26
	.long	.LASF568
	.byte	0x1
	.value	0x20d
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2236
	.uleb128 0x26
	.long	.LASF569
	.byte	0x1
	.value	0x20e
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2252
	.uleb128 0x26
	.long	.LASF570
	.byte	0x1
	.value	0x210
	.long	0x2107
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2216
	.uleb128 0x25
	.string	"b8"
	.byte	0x1
	.value	0x212
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2224
	.uleb128 0x25
	.string	"b4"
	.byte	0x1
	.value	0x212
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2220
	.uleb128 0x26
	.long	.LASF571
	.byte	0x1
	.value	0x213
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2208
	.uleb128 0x26
	.long	.LASF572
	.byte	0x1
	.value	0x214
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2200
	.uleb128 0x26
	.long	.LASF573
	.byte	0x1
	.value	0x215
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2192
	.uleb128 0x26
	.long	.LASF574
	.byte	0x1
	.value	0x216
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2184
	.uleb128 0x26
	.long	.LASF575
	.byte	0x1
	.value	0x218
	.long	0xd0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -2248
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x291c
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x27
	.long	.LASF577
	.byte	0x1
	.value	0x36b
	.long	0x34
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x2afe
	.uleb128 0x28
	.long	.LASF376
	.byte	0x1
	.value	0x36b
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x28
	.long	.LASF377
	.byte	0x1
	.value	0x36b
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x28
	.long	.LASF578
	.byte	0x1
	.value	0x36b
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x28
	.long	.LASF579
	.byte	0x1
	.value	0x36b
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x29
	.long	.LASF593
	.byte	0x1
	.value	0x36d
	.long	0x34
	.long	0x2999
	.uleb128 0x14
	.long	0x34
	.uleb128 0x14
	.long	0x34
	.byte	0
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.value	0x36f
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x25
	.string	"j"
	.byte	0x1
	.value	0x36f
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x25
	.string	"i1"
	.byte	0x1
	.value	0x36f
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x25
	.string	"j1"
	.byte	0x1
	.value	0x36f
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x26
	.long	.LASF580
	.byte	0x1
	.value	0x36f
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x25
	.string	"m5"
	.byte	0x1
	.value	0x36f
	.long	0xadf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x25
	.string	"m6"
	.byte	0x1
	.value	0x36f
	.long	0xadf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.long	.LASF564
	.byte	0x1
	.value	0x36f
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x26
	.long	.LASF565
	.byte	0x1
	.value	0x371
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x26
	.long	.LASF563
	.byte	0x1
	.value	0x371
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x25
	.string	"run"
	.byte	0x1
	.value	0x371
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x26
	.long	.LASF581
	.byte	0x1
	.value	0x372
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x26
	.long	.LASF566
	.byte	0x1
	.value	0x373
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x26
	.long	.LASF567
	.byte	0x1
	.value	0x373
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x26
	.long	.LASF568
	.byte	0x1
	.value	0x373
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x26
	.long	.LASF105
	.byte	0x1
	.value	0x375
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x26
	.long	.LASF106
	.byte	0x1
	.value	0x376
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x25
	.string	"b8"
	.byte	0x1
	.value	0x377
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x25
	.string	"b4"
	.byte	0x1
	.value	0x378
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x26
	.long	.LASF573
	.byte	0x1
	.value	0x379
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x26
	.long	.LASF574
	.byte	0x1
	.value	0x37a
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x26
	.long	.LASF570
	.byte	0x1
	.value	0x37c
	.long	0x2107
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.long	.LASF575
	.byte	0x1
	.value	0x37d
	.long	0xd0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x27
	.long	.LASF582
	.byte	0x1
	.value	0x44a
	.long	0x34
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x2db0
	.uleb128 0x2a
	.string	"uv"
	.byte	0x1
	.value	0x44a
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -404
	.uleb128 0x28
	.long	.LASF583
	.byte	0x1
	.value	0x44a
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -408
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.value	0x44c
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -396
	.uleb128 0x25
	.string	"j"
	.byte	0x1
	.value	0x44c
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -392
	.uleb128 0x25
	.string	"i1"
	.byte	0x1
	.value	0x44c
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -292
	.uleb128 0x25
	.string	"j2"
	.byte	0x1
	.value	0x44c
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -284
	.uleb128 0x26
	.long	.LASF580
	.byte	0x1
	.value	0x44c
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -388
	.uleb128 0x25
	.string	"n2"
	.byte	0x1
	.value	0x44c
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -384
	.uleb128 0x25
	.string	"n1"
	.byte	0x1
	.value	0x44c
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -380
	.uleb128 0x25
	.string	"j1"
	.byte	0x1
	.value	0x44c
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x26
	.long	.LASF375
	.byte	0x1
	.value	0x44c
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x26
	.long	.LASF564
	.byte	0x1
	.value	0x44c
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -376
	.uleb128 0x26
	.long	.LASF565
	.byte	0x1
	.value	0x44c
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -372
	.uleb128 0x26
	.long	.LASF563
	.byte	0x1
	.value	0x44c
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -368
	.uleb128 0x25
	.string	"run"
	.byte	0x1
	.value	0x44c
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -364
	.uleb128 0x25
	.string	"m1"
	.byte	0x1
	.value	0x44d
	.long	0xadf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x25
	.string	"m5"
	.byte	0x1
	.value	0x44d
	.long	0xadf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x25
	.string	"m6"
	.byte	0x1
	.value	0x44d
	.long	0xadf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x26
	.long	.LASF578
	.byte	0x1
	.value	0x44e
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -360
	.uleb128 0x26
	.long	.LASF584
	.byte	0x1
	.value	0x44f
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -356
	.uleb128 0x26
	.long	.LASF585
	.byte	0x1
	.value	0x450
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x26
	.long	.LASF570
	.byte	0x1
	.value	0x451
	.long	0x2107
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x26
	.long	.LASF566
	.byte	0x1
	.value	0x453
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -308
	.uleb128 0x26
	.long	.LASF567
	.byte	0x1
	.value	0x453
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x26
	.long	.LASF568
	.byte	0x1
	.value	0x453
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -300
	.uleb128 0x26
	.long	.LASF586
	.byte	0x1
	.value	0x454
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x25
	.string	"b4"
	.byte	0x1
	.value	0x456
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -348
	.uleb128 0x26
	.long	.LASF571
	.byte	0x1
	.value	0x457
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x26
	.long	.LASF572
	.byte	0x1
	.value	0x458
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x26
	.long	.LASF573
	.byte	0x1
	.value	0x459
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x26
	.long	.LASF574
	.byte	0x1
	.value	0x45a
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x26
	.long	.LASF579
	.byte	0x1
	.value	0x45b
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x26
	.long	.LASF587
	.byte	0x1
	.value	0x45c
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -324
	.uleb128 0x26
	.long	.LASF588
	.byte	0x1
	.value	0x45f
	.long	0x2db0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x25
	.string	"yuv"
	.byte	0x1
	.value	0x460
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x25
	.string	"b8"
	.byte	0x1
	.value	0x461
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x25
	.string	"m3"
	.byte	0x1
	.value	0x462
	.long	0x211e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x25
	.string	"m4"
	.byte	0x1
	.value	0x463
	.long	0x211e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x26
	.long	.LASF589
	.byte	0x1
	.value	0x464
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -340
	.uleb128 0x26
	.long	.LASF590
	.byte	0x1
	.value	0x465
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x26
	.long	.LASF591
	.byte	0x1
	.value	0x466
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -332
	.uleb128 0x26
	.long	.LASF575
	.byte	0x1
	.value	0x467
	.long	0xd0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -316
	.byte	0
	.uleb128 0x4
	.long	0x27d
	.long	0x2dc0
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x27
	.long	.LASF592
	.byte	0x1
	.value	0x6c0
	.long	0x34
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x2f71
	.uleb128 0x2a
	.string	"uv"
	.byte	0x1
	.value	0x6c0
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x2a
	.string	"b8"
	.byte	0x1
	.value	0x6c0
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x2a
	.string	"b4"
	.byte	0x1
	.value	0x6c0
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x29
	.long	.LASF593
	.byte	0x1
	.value	0x6c2
	.long	0x34
	.long	0x2e2a
	.uleb128 0x14
	.long	0x34
	.uleb128 0x14
	.long	0x34
	.byte	0
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.value	0x6c4
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x25
	.string	"j"
	.byte	0x1
	.value	0x6c4
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x25
	.string	"i1"
	.byte	0x1
	.value	0x6c4
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x25
	.string	"j1"
	.byte	0x1
	.value	0x6c4
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x26
	.long	.LASF580
	.byte	0x1
	.value	0x6c4
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x25
	.string	"m5"
	.byte	0x1
	.value	0x6c4
	.long	0xadf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x25
	.string	"m6"
	.byte	0x1
	.value	0x6c4
	.long	0xadf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.long	.LASF564
	.byte	0x1
	.value	0x6c4
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x26
	.long	.LASF565
	.byte	0x1
	.value	0x6c5
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x26
	.long	.LASF563
	.byte	0x1
	.value	0x6c5
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x25
	.string	"run"
	.byte	0x1
	.value	0x6c5
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x26
	.long	.LASF594
	.byte	0x1
	.value	0x6c6
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x26
	.long	.LASF570
	.byte	0x1
	.value	0x6c7
	.long	0x2107
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x26
	.long	.LASF579
	.byte	0x1
	.value	0x6c8
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x26
	.long	.LASF566
	.byte	0x1
	.value	0x6ca
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x26
	.long	.LASF567
	.byte	0x1
	.value	0x6ca
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x26
	.long	.LASF568
	.byte	0x1
	.value	0x6ca
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x26
	.long	.LASF586
	.byte	0x1
	.value	0x6cb
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x26
	.long	.LASF573
	.byte	0x1
	.value	0x6cd
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x26
	.long	.LASF574
	.byte	0x1
	.value	0x6ce
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.long	.LASF575
	.byte	0x1
	.value	0x6d0
	.long	0xd0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.byte	0
	.uleb128 0x27
	.long	.LASF595
	.byte	0x1
	.value	0x782
	.long	0x34
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x3029
	.uleb128 0x2a
	.string	"uv"
	.byte	0x1
	.value	0x782
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x28
	.long	.LASF583
	.byte	0x1
	.value	0x782
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x25
	.string	"run"
	.byte	0x1
	.value	0x784
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.long	.LASF563
	.byte	0x1
	.value	0x784
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x26
	.long	.LASF564
	.byte	0x1
	.value	0x784
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.long	.LASF565
	.byte	0x1
	.value	0x784
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.value	0x784
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x25
	.string	"j"
	.byte	0x1
	.value	0x784
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.long	.LASF571
	.byte	0x1
	.value	0x785
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.long	.LASF572
	.byte	0x1
	.value	0x786
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x27
	.long	.LASF596
	.byte	0x1
	.value	0x7b4
	.long	0x34
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x32ed
	.uleb128 0x28
	.long	.LASF376
	.byte	0x1
	.value	0x7b4
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -308
	.uleb128 0x28
	.long	.LASF377
	.byte	0x1
	.value	0x7b4
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x28
	.long	.LASF578
	.byte	0x1
	.value	0x7b4
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x29
	.long	.LASF593
	.byte	0x1
	.value	0x7b6
	.long	0x34
	.long	0x3096
	.uleb128 0x14
	.long	0x34
	.uleb128 0x14
	.long	0x34
	.byte	0
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.value	0x7b8
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -284
	.uleb128 0x25
	.string	"j"
	.byte	0x1
	.value	0x7b8
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x25
	.string	"i1"
	.byte	0x1
	.value	0x7b8
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x25
	.string	"j1"
	.byte	0x1
	.value	0x7b8
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x26
	.long	.LASF580
	.byte	0x1
	.value	0x7b8
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -276
	.uleb128 0x25
	.string	"m5"
	.byte	0x1
	.value	0x7b8
	.long	0xadf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x25
	.string	"m6"
	.byte	0x1
	.value	0x7b8
	.long	0xadf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x26
	.long	.LASF564
	.byte	0x1
	.value	0x7b8
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x26
	.long	.LASF597
	.byte	0x1
	.value	0x7b9
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x26
	.long	.LASF565
	.byte	0x1
	.value	0x7b9
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -268
	.uleb128 0x26
	.long	.LASF563
	.byte	0x1
	.value	0x7b9
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x25
	.string	"run"
	.byte	0x1
	.value	0x7b9
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -260
	.uleb128 0x26
	.long	.LASF581
	.byte	0x1
	.value	0x7ba
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x26
	.long	.LASF598
	.byte	0x1
	.value	0x7bc
	.long	0x211e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x26
	.long	.LASF599
	.byte	0x1
	.value	0x7bc
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -252
	.uleb128 0x26
	.long	.LASF600
	.byte	0x1
	.value	0x7bc
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -204
	.uleb128 0x26
	.long	.LASF566
	.byte	0x1
	.value	0x7bd
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x26
	.long	.LASF567
	.byte	0x1
	.value	0x7bd
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -228
	.uleb128 0x26
	.long	.LASF568
	.byte	0x1
	.value	0x7bd
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x26
	.long	.LASF601
	.byte	0x1
	.value	0x7be
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -220
	.uleb128 0x26
	.long	.LASF602
	.byte	0x1
	.value	0x7be
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x26
	.long	.LASF603
	.byte	0x1
	.value	0x7be
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -212
	.uleb128 0x26
	.long	.LASF105
	.byte	0x1
	.value	0x7c0
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x26
	.long	.LASF106
	.byte	0x1
	.value	0x7c1
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -244
	.uleb128 0x25
	.string	"b8"
	.byte	0x1
	.value	0x7c2
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x25
	.string	"b4"
	.byte	0x1
	.value	0x7c3
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -236
	.uleb128 0x26
	.long	.LASF573
	.byte	0x1
	.value	0x7c4
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x26
	.long	.LASF574
	.byte	0x1
	.value	0x7c5
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x26
	.long	.LASF570
	.byte	0x1
	.value	0x7c6
	.long	0x2107
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x26
	.long	.LASF604
	.byte	0x1
	.value	0x7c9
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -188
	.uleb128 0x26
	.long	.LASF605
	.byte	0x1
	.value	0x7c9
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x26
	.long	.LASF606
	.byte	0x1
	.value	0x7c9
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x26
	.long	.LASF607
	.byte	0x1
	.value	0x7c9
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x26
	.long	.LASF608
	.byte	0x1
	.value	0x7ca
	.long	0xa9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x26
	.long	.LASF609
	.byte	0x1
	.value	0x7ca
	.long	0xa9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x25
	.string	"len"
	.byte	0x1
	.value	0x7cb
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -292
	.uleb128 0x26
	.long	.LASF610
	.byte	0x1
	.value	0x7cb
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x26
	.long	.LASF611
	.byte	0x1
	.value	0x7cc
	.long	0xa9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.byte	0
	.uleb128 0x27
	.long	.LASF612
	.byte	0x1
	.value	0x8b7
	.long	0x34
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x3602
	.uleb128 0x2a
	.string	"uv"
	.byte	0x1
	.value	0x8b7
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -580
	.uleb128 0x28
	.long	.LASF583
	.byte	0x1
	.value	0x8b7
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -584
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.value	0x8b9
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -556
	.uleb128 0x25
	.string	"j"
	.byte	0x1
	.value	0x8b9
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -552
	.uleb128 0x25
	.string	"i1"
	.byte	0x1
	.value	0x8b9
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -464
	.uleb128 0x25
	.string	"j2"
	.byte	0x1
	.value	0x8b9
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -456
	.uleb128 0x26
	.long	.LASF580
	.byte	0x1
	.value	0x8b9
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -548
	.uleb128 0x25
	.string	"n2"
	.byte	0x1
	.value	0x8b9
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -544
	.uleb128 0x25
	.string	"n1"
	.byte	0x1
	.value	0x8b9
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -540
	.uleb128 0x25
	.string	"j1"
	.byte	0x1
	.value	0x8b9
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -460
	.uleb128 0x26
	.long	.LASF375
	.byte	0x1
	.value	0x8b9
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -468
	.uleb128 0x26
	.long	.LASF564
	.byte	0x1
	.value	0x8b9
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -536
	.uleb128 0x26
	.long	.LASF597
	.byte	0x1
	.value	0x8b9
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -488
	.uleb128 0x26
	.long	.LASF599
	.byte	0x1
	.value	0x8b9
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -532
	.uleb128 0x26
	.long	.LASF565
	.byte	0x1
	.value	0x8b9
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -528
	.uleb128 0x26
	.long	.LASF563
	.byte	0x1
	.value	0x8b9
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -524
	.uleb128 0x25
	.string	"run"
	.byte	0x1
	.value	0x8b9
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -520
	.uleb128 0x25
	.string	"m1"
	.byte	0x1
	.value	0x8ba
	.long	0xadf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -368
	.uleb128 0x25
	.string	"m5"
	.byte	0x1
	.value	0x8ba
	.long	0xadf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x25
	.string	"m6"
	.byte	0x1
	.value	0x8ba
	.long	0xadf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x26
	.long	.LASF578
	.byte	0x1
	.value	0x8bb
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -516
	.uleb128 0x26
	.long	.LASF584
	.byte	0x1
	.value	0x8bc
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -512
	.uleb128 0x26
	.long	.LASF613
	.byte	0x1
	.value	0x8bd
	.long	0x3602
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x26
	.long	.LASF600
	.byte	0x1
	.value	0x8bd
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -472
	.uleb128 0x25
	.string	"mp1"
	.byte	0x1
	.value	0x8bd
	.long	0xadf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x26
	.long	.LASF570
	.byte	0x1
	.value	0x8be
	.long	0x2107
	.uleb128 0x3
	.byte	0x91
	.sleb128 -432
	.uleb128 0x26
	.long	.LASF566
	.byte	0x1
	.value	0x8c0
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -500
	.uleb128 0x26
	.long	.LASF567
	.byte	0x1
	.value	0x8c0
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -496
	.uleb128 0x26
	.long	.LASF568
	.byte	0x1
	.value	0x8c0
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -492
	.uleb128 0x26
	.long	.LASF601
	.byte	0x1
	.value	0x8c1
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -484
	.uleb128 0x26
	.long	.LASF602
	.byte	0x1
	.value	0x8c1
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -480
	.uleb128 0x26
	.long	.LASF603
	.byte	0x1
	.value	0x8c1
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -476
	.uleb128 0x25
	.string	"b4"
	.byte	0x1
	.value	0x8c3
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -436
	.uleb128 0x26
	.long	.LASF571
	.byte	0x1
	.value	0x8c4
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -424
	.uleb128 0x26
	.long	.LASF572
	.byte	0x1
	.value	0x8c5
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -416
	.uleb128 0x26
	.long	.LASF573
	.byte	0x1
	.value	0x8c6
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -384
	.uleb128 0x26
	.long	.LASF574
	.byte	0x1
	.value	0x8c7
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -376
	.uleb128 0x26
	.long	.LASF604
	.byte	0x1
	.value	0x8c9
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -452
	.uleb128 0x26
	.long	.LASF605
	.byte	0x1
	.value	0x8c9
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -444
	.uleb128 0x26
	.long	.LASF606
	.byte	0x1
	.value	0x8c9
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -448
	.uleb128 0x26
	.long	.LASF607
	.byte	0x1
	.value	0x8c9
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -440
	.uleb128 0x25
	.string	"len"
	.byte	0x1
	.value	0x8ca
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -564
	.uleb128 0x26
	.long	.LASF610
	.byte	0x1
	.value	0x8ca
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -560
	.uleb128 0x26
	.long	.LASF608
	.byte	0x1
	.value	0x8cb
	.long	0xa9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -400
	.uleb128 0x26
	.long	.LASF609
	.byte	0x1
	.value	0x8cb
	.long	0xa9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -392
	.uleb128 0x26
	.long	.LASF611
	.byte	0x1
	.value	0x8cc
	.long	0xa9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -408
	.uleb128 0x26
	.long	.LASF614
	.byte	0x1
	.value	0x8cf
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -508
	.uleb128 0x26
	.long	.LASF615
	.byte	0x1
	.value	0x8d0
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -504
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x3618
	.uleb128 0x5
	.long	0x75
	.byte	0x7
	.uleb128 0x5
	.long	0x75
	.byte	0x7
	.byte	0
	.uleb128 0x2b
	.long	.LASF617
	.byte	0x1
	.value	0xa3b
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x372a
	.uleb128 0x28
	.long	.LASF376
	.byte	0x1
	.value	0xa3b
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x28
	.long	.LASF377
	.byte	0x1
	.value	0xa3b
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x29
	.long	.LASF593
	.byte	0x1
	.value	0xa3d
	.long	0x34
	.long	0x3671
	.uleb128 0x14
	.long	0x34
	.uleb128 0x14
	.long	0x34
	.byte	0
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.value	0xa3f
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x25
	.string	"j"
	.byte	0x1
	.value	0xa3f
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x25
	.string	"i1"
	.byte	0x1
	.value	0xa3f
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x25
	.string	"j1"
	.byte	0x1
	.value	0xa3f
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x25
	.string	"m5"
	.byte	0x1
	.value	0xa3f
	.long	0xadf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x25
	.string	"m6"
	.byte	0x1
	.value	0xa3f
	.long	0xadf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x26
	.long	.LASF570
	.byte	0x1
	.value	0xa41
	.long	0x2107
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x26
	.long	.LASF598
	.byte	0x1
	.value	0xa43
	.long	0x211e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x26
	.long	.LASF566
	.byte	0x1
	.value	0xa44
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x26
	.long	.LASF567
	.byte	0x1
	.value	0xa45
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x26
	.long	.LASF568
	.byte	0x1
	.value	0xa46
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x26
	.long	.LASF600
	.byte	0x1
	.value	0xa47
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.byte	0
	.uleb128 0x4
	.long	0x3b
	.long	0x3740
	.uleb128 0x5
	.long	0x75
	.byte	0x7
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x23
	.long	.LASF618
	.byte	0x7
	.byte	0xa8
	.long	0x372a
	.uleb128 0x9
	.byte	0x3
	.quad	cbp_blk_chroma
	.uleb128 0x22
	.string	"A"
	.byte	0x1
	.byte	0x38
	.long	0x3768
	.uleb128 0x9
	.byte	0x3
	.quad	A
	.uleb128 0x2c
	.long	0x211e
	.uleb128 0x4
	.long	0x34
	.long	0x3789
	.uleb128 0x5
	.long	0x75
	.byte	0x5
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x2d
	.long	.LASF619
	.byte	0x8
	.byte	0x12
	.long	0x376d
	.uleb128 0x4
	.long	0x34
	.long	0x37b6
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.uleb128 0x5
	.long	0x75
	.byte	0x5
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x2d
	.long	.LASF620
	.byte	0x8
	.byte	0x13
	.long	0x3794
	.uleb128 0x2d
	.long	.LASF621
	.byte	0x8
	.byte	0x15
	.long	0x376d
	.uleb128 0x2d
	.long	.LASF622
	.byte	0x8
	.byte	0x16
	.long	0x3794
	.uleb128 0x2d
	.long	.LASF623
	.byte	0x8
	.byte	0x1b
	.long	0x376d
	.uleb128 0x2d
	.long	.LASF624
	.byte	0x8
	.byte	0x1c
	.long	0x3794
	.uleb128 0x2d
	.long	.LASF625
	.byte	0x8
	.byte	0x1e
	.long	0x376d
	.uleb128 0x2d
	.long	.LASF626
	.byte	0x8
	.byte	0x1f
	.long	0x3794
	.uleb128 0x4
	.long	0x34
	.long	0x381f
	.uleb128 0x5
	.long	0x75
	.byte	0xc
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x2d
	.long	.LASF627
	.byte	0x9
	.byte	0x12
	.long	0x3803
	.uleb128 0x4
	.long	0x34
	.long	0x384c
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.uleb128 0x5
	.long	0x75
	.byte	0xc
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x2d
	.long	.LASF628
	.byte	0x9
	.byte	0x13
	.long	0x382a
	.uleb128 0x2d
	.long	.LASF629
	.byte	0x9
	.byte	0x15
	.long	0x3803
	.uleb128 0x2d
	.long	.LASF630
	.byte	0x9
	.byte	0x16
	.long	0x382a
	.uleb128 0x2e
	.long	.LASF631
	.byte	0x5
	.value	0x1ee
	.long	0xe01
	.uleb128 0x2e
	.long	.LASF632
	.byte	0x5
	.value	0x1f6
	.long	0x3885
	.uleb128 0x6
	.byte	0x8
	.long	0x272
	.uleb128 0x2e
	.long	.LASF633
	.byte	0x5
	.value	0x1fb
	.long	0x34
	.uleb128 0x4
	.long	0x34
	.long	0x38b3
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x2e
	.long	.LASF634
	.byte	0x5
	.value	0x228
	.long	0x3897
	.uleb128 0x2e
	.long	.LASF635
	.byte	0x5
	.value	0x228
	.long	0x3897
	.uleb128 0x2e
	.long	.LASF636
	.byte	0x5
	.value	0x4b7
	.long	0x38d7
	.uleb128 0x6
	.byte	0x8
	.long	0x1662
	.uleb128 0x2f
	.string	"img"
	.byte	0x5
	.value	0x4b8
	.long	0x38e9
	.uleb128 0x6
	.byte	0x8
	.long	0x219a
	.uleb128 0x2d
	.long	.LASF637
	.byte	0xa
	.byte	0x13
	.long	0x2455
	.uleb128 0x4
	.long	0xb0
	.long	0x390a
	.uleb128 0x5
	.long	0x75
	.byte	0x33
	.byte	0
	.uleb128 0x30
	.long	.LASF638
	.byte	0x7
	.byte	0x16
	.long	0x391f
	.uleb128 0x9
	.byte	0x3
	.quad	QP_SCALE_CR
	.uleb128 0x2c
	.long	0x38fa
	.uleb128 0x4
	.long	0xb0
	.long	0x393a
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.byte	0
	.uleb128 0x30
	.long	.LASF639
	.byte	0x7
	.byte	0x20
	.long	0x394f
	.uleb128 0x9
	.byte	0x3
	.quad	SNGL_SCAN
	.uleb128 0x2c
	.long	0x3924
	.uleb128 0x30
	.long	.LASF640
	.byte	0x7
	.byte	0x29
	.long	0x3969
	.uleb128 0x9
	.byte	0x3
	.quad	FIELD_SCAN
	.uleb128 0x2c
	.long	0x3924
	.uleb128 0x4
	.long	0xb0
	.long	0x3984
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.byte	0
	.uleb128 0x30
	.long	.LASF641
	.byte	0x7
	.byte	0x33
	.long	0x3999
	.uleb128 0x9
	.byte	0x3
	.quad	COEFF_COST
	.uleb128 0x2c
	.long	0x396e
	.uleb128 0x4
	.long	0xb0
	.long	0x39ba
	.uleb128 0x5
	.long	0x75
	.byte	0x2
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.byte	0
	.uleb128 0x30
	.long	.LASF642
	.byte	0x7
	.byte	0x3c
	.long	0x39cf
	.uleb128 0x9
	.byte	0x3
	.quad	COEFF_BIT_COST
	.uleb128 0x2c
	.long	0x399e
	.uleb128 0x4
	.long	0xb0
	.long	0x39ea
	.uleb128 0x5
	.long	0x75
	.byte	0x7
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.byte	0
	.uleb128 0x30
	.long	.LASF643
	.byte	0x7
	.byte	0x75
	.long	0x39ff
	.uleb128 0x9
	.byte	0x3
	.quad	SCAN_YUV422
	.uleb128 0x2c
	.long	0x39d4
	.uleb128 0x4
	.long	0x3b
	.long	0x3a20
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x30
	.long	.LASF644
	.byte	0x7
	.byte	0x7e
	.long	0x3a35
	.uleb128 0x9
	.byte	0x3
	.quad	hor_offset
	.uleb128 0x2c
	.long	0x3a04
	.uleb128 0x30
	.long	.LASF645
	.byte	0x7
	.byte	0x93
	.long	0x3a4f
	.uleb128 0x9
	.byte	0x3
	.quad	ver_offset
	.uleb128 0x2c
	.long	0x3a04
	.uleb128 0x30
	.long	.LASF646
	.byte	0x1
	.byte	0x27
	.long	0x3a69
	.uleb128 0x9
	.byte	0x3
	.quad	quant_coef
	.uleb128 0x2c
	.long	0x376d
	.uleb128 0x30
	.long	.LASF647
	.byte	0x1
	.byte	0x30
	.long	0x3a83
	.uleb128 0x9
	.byte	0x3
	.quad	dequant_coef
	.uleb128 0x2c
	.long	0x376d
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x13
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x6
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x30
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
.LASF484:
	.string	"bitdepth_luma_qp_scale"
.LASF334:
	.string	"channel_type"
.LASF565:
	.string	"level"
.LASF40:
	.string	"pic_init_qs_minus26"
.LASF539:
	.string	"StorablePicture"
.LASF485:
	.string	"bitdepth_chroma_qp_scale"
.LASF335:
	.string	"ScalingMatrixPresentFlag"
.LASF450:
	.string	"no_output_of_prior_pics_flag"
.LASF53:
	.string	"BITS_INTER_MB"
.LASF417:
	.string	"num_ref_idx_l1_active"
.LASF433:
	.string	"pic_order_cnt_lsb"
.LASF621:
	.string	"LevelScale4x4Luma_Inter"
.LASF474:
	.string	"write_macroblock"
.LASF7:
	.string	"sizetype"
.LASF477:
	.string	"DeblockCall"
.LASF523:
	.string	"imgY_ups_w"
.LASF58:
	.string	"MAX_BITCOUNTER_MB"
.LASF359:
	.string	"width_cr"
.LASF446:
	.string	"PicSizeInMbs"
.LASF649:
	.string	"block.c"
.LASF395:
	.string	"MB_SyntaxElements"
.LASF521:
	.string	"imgY_11_w"
.LASF390:
	.string	"cofAC"
.LASF641:
	.string	"COEFF_COST"
.LASF607:
	.string	"level2"
.LASF594:
	.string	"nonzeroAC"
.LASF579:
	.string	"intra"
.LASF515:
	.string	"size_x_cr"
.LASF492:
	.string	"lossless_qpprime_flag"
.LASF273:
	.string	"PocMemoryManagement"
.LASF405:
	.string	"imgtr_next_P_fld"
.LASF225:
	.string	"search_range"
.LASF420:
	.string	"mvscale"
.LASF49:
	.string	"int64"
.LASF213:
	.string	"slices"
.LASF117:
	.string	"long_term_pic_num"
.LASF518:
	.string	"coded_frame"
.LASF606:
	.string	"level1"
.LASF371:
	.string	"ipredmode8x8"
.LASF375:
	.string	"mb_y"
.LASF452:
	.string	"dec_ref_pic_marking_buffer"
.LASF242:
	.string	"infile_header"
.LASF568:
	.string	"q_bits"
.LASF292:
	.string	"full_search"
.LASF119:
	.string	"max_long_term_frame_idx_plus1"
.LASF642:
	.string	"COEFF_BIT_COST"
.LASF44:
	.string	"deblocking_filter_control_present_flag"
.LASF329:
	.string	"DisplayEncParams"
.LASF625:
	.string	"InvLevelScale4x4Luma_Inter"
.LASF593:
	.string	"sign"
.LASF419:
	.string	"top_field"
.LASF45:
	.string	"constrained_intra_pred_flag"
.LASF81:
	.string	"state"
.LASF288:
	.string	"Intra16x16ParDisable"
.LASF95:
	.string	"bcbp_contexts"
.LASF121:
	.string	"syntaxelement"
.LASF624:
	.string	"InvLevelScale4x4Chroma_Intra"
.LASF608:
	.string	"D_dis1"
.LASF609:
	.string	"D_dis2"
.LASF251:
	.string	"successive_Bframe"
.LASF261:
	.string	"WeightedPrediction"
.LASF122:
	.string	"type"
.LASF410:
	.string	"fw_mb_mode"
.LASF447:
	.string	"FrameSizeInMbs"
.LASF527:
	.string	"ref_id"
.LASF169:
	.string	"LFDisableIdc"
.LASF517:
	.string	"chroma_vector_adjustment"
.LASF643:
	.string	"SCAN_YUV422"
.LASF254:
	.string	"directInferenceFlag"
.LASF182:
	.string	"bits_to_go_skip"
.LASF412:
	.string	"pred_mv"
.LASF324:
	.string	"context_init_method"
.LASF326:
	.string	"AllowTransform8x8"
.LASF490:
	.string	"num_blk8x8_uv"
.LASF240:
	.string	"slice_argument"
.LASF199:
	.string	"rmpni_buffer"
.LASF281:
	.string	"InterSearch8x4"
.LASF150:
	.string	"mb_field"
.LASF280:
	.string	"InterSearch8x8"
.LASF313:
	.string	"NumFramesInELSubSeq"
.LASF548:
	.string	"mb_nr"
.LASF118:
	.string	"long_term_frame_idx"
.LASF507:
	.string	"bottom_ref_pic_num"
.LASF370:
	.string	"ipredmode"
.LASF267:
	.string	"RDBSliceWeightOnly"
.LASF232:
	.string	"GenerateMultiplePPS"
.LASF142:
	.string	"b8mode"
.LASF601:
	.string	"qp_per_sp"
.LASF208:
	.string	"slice_too_big"
.LASF387:
	.string	"mprr_2"
.LASF388:
	.string	"mprr_3"
.LASF175:
	.string	"bits_to_go"
.LASF114:
	.string	"DecRefPicMarking_s"
.LASF120:
	.string	"DecRefPicMarking_t"
.LASF37:
	.string	"weighted_pred_flag"
.LASF475:
	.string	"bot_MB"
.LASF473:
	.string	"BasicUnit"
.LASF226:
	.string	"num_ref_frames"
.LASF645:
	.string	"ver_offset"
.LASF77:
	.string	"EcodestrmS"
.LASF397:
	.string	"intra_block"
.LASF57:
	.string	"BITS_DELTA_QUANT_MB"
.LASF566:
	.string	"qp_per"
.LASF6:
	.string	"long int"
.LASF496:
	.string	"auto_crop_right"
.LASF508:
	.string	"pic_num"
.LASF389:
	.string	"mprr_c"
.LASF159:
	.string	"all_blk_8x8"
.LASF301:
	.string	"nobskip"
.LASF448:
	.string	"nal_reference_idc"
.LASF439:
	.string	"framepoc"
.LASF577:
	.string	"dct_luma"
.LASF454:
	.string	"NumberofTextureBits"
.LASF385:
	.string	"opix_c_y"
.LASF617:
	.string	"copyblock_sp"
.LASF263:
	.string	"UseWeightedReferenceME"
.LASF510:
	.string	"used_for_reference"
.LASF315:
	.string	"RandomIntraMBRefresh"
.LASF476:
	.string	"write_macroblock_frame"
.LASF179:
	.string	"stored_byte_buf"
.LASF50:
	.string	"BITS_HEADER"
.LASF349:
	.string	"InputParameters"
.LASF316:
	.string	"LFSendParameters"
.LASF443:
	.string	"PicHeightInMapUnits"
.LASF505:
	.string	"frm_ref_pic_num"
.LASF462:
	.string	"NumberofGOP"
.LASF482:
	.string	"bitdepth_luma"
.LASF54:
	.string	"BITS_CBP_MB"
.LASF384:
	.string	"opix_c_x"
.LASF67:
	.string	"Ebuffer"
.LASF243:
	.string	"infile"
.LASF245:
	.string	"ReconFile"
.LASF583:
	.string	"cr_cbp"
.LASF66:
	.string	"Erange"
.LASF573:
	.string	"ACLevel"
.LASF4:
	.string	"signed char"
.LASF357:
	.string	"framerate"
.LASF194:
	.string	"max_part_nr"
.LASF80:
	.string	"EncodingEnvironmentPtr"
.LASF428:
	.string	"delta_pic_order_always_zero_flag"
.LASF374:
	.string	"mb_x"
.LASF149:
	.string	"IntraChromaPredModeFlag"
.LASF126:
	.string	"context"
.LASF19:
	.string	"pic_parameter_set_id"
.LASF203:
	.string	"long_term_pic_idx_l0"
.LASF207:
	.string	"long_term_pic_idx_l1"
.LASF200:
	.string	"ref_pic_list_reordering_flag_l0"
.LASF204:
	.string	"ref_pic_list_reordering_flag_l1"
.LASF464:
	.string	"NumberofPPicture"
.LASF459:
	.string	"NumberofMBHeaderBits"
.LASF391:
	.string	"cofDC"
.LASF1:
	.string	"unsigned char"
.LASF140:
	.string	"intra_pred_modes8x8"
.LASF24:
	.string	"pic_scaling_list_present_flag"
.LASF258:
	.string	"BiPredMESubPel"
.LASF478:
	.string	"last_pic_bottom_field"
.LASF255:
	.string	"BiPredMotionEstimation"
.LASF414:
	.string	"bipred_mv1"
.LASF415:
	.string	"bipred_mv2"
.LASF97:
	.string	"last_contexts"
.LASF148:
	.string	"c_ipred_mode"
.LASF28:
	.string	"run_length_minus1"
.LASF489:
	.string	"max_imgpel_value_uv"
.LASF236:
	.string	"intra_upd"
.LASF201:
	.string	"remapping_of_pic_nums_idc_l0"
.LASF205:
	.string	"remapping_of_pic_nums_idc_l1"
.LASF202:
	.string	"abs_diff_pic_num_minus1_l0"
.LASF206:
	.string	"abs_diff_pic_num_minus1_l1"
.LASF319:
	.string	"SPPercentageThreshold"
.LASF176:
	.string	"byte_buf"
.LASF219:
	.string	"ProfileIDC"
.LASF162:
	.string	"bi_pred_me"
.LASF133:
	.string	"delta_qp"
.LASF570:
	.string	"currMB"
.LASF554:
	.string	"block_available_left"
.LASF41:
	.string	"chroma_qp_index_offset"
.LASF356:
	.string	"max_num_references"
.LASF8:
	.string	"char"
.LASF369:
	.string	"block_c_x"
.LASF553:
	.string	"block_available_up"
.LASF585:
	.string	"DCcoded"
.LASF618:
	.string	"cbp_blk_chroma"
.LASF90:
	.string	"transform_size_contexts"
.LASF451:
	.string	"long_term_reference_flag"
.LASF230:
	.string	"Log2MaxFrameNum"
.LASF365:
	.string	"is_intra_block"
.LASF193:
	.string	"start_mb_nr"
.LASF330:
	.string	"RCEnable"
.LASF265:
	.string	"RDPictureIntra"
.LASF229:
	.string	"B_List1_refs"
.LASF104:
	.string	"mb_addr"
.LASF252:
	.string	"qpBRSOffset"
.LASF512:
	.string	"non_existing"
.LASF317:
	.string	"SparePictureOption"
.LASF51:
	.string	"BITS_TOTAL_MB"
.LASF540:
	.string	"img_x"
.LASF541:
	.string	"img_y"
.LASF294:
	.string	"qpN2"
.LASF572:
	.string	"DCRun"
.LASF248:
	.string	"intra_period"
.LASF136:
	.string	"mb_available_up"
.LASF435:
	.string	"delta_pic_order_cnt"
.LASF283:
	.string	"InterSearch4x4"
.LASF592:
	.string	"dct_chroma4x4"
.LASF282:
	.string	"InterSearch4x8"
.LASF650:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/464.h264ref/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF520:
	.string	"imgY_11"
.LASF453:
	.string	"NumberofHeaderBits"
.LASF297:
	.string	"qp02"
.LASF351:
	.string	"nb_references"
.LASF125:
	.string	"bitpattern"
.LASF89:
	.string	"mb_aff_contexts"
.LASF160:
	.string	"luma_transform_size_8x8_flag"
.LASF604:
	.string	"c_err1"
.LASF336:
	.string	"ScalingListPresentFlag"
.LASF555:
	.string	"block_available_up_left"
.LASF377:
	.string	"block_y"
.LASF268:
	.string	"SkipIntraInInterSlices"
.LASF392:
	.string	"currentPicture"
.LASF85:
	.string	"b8_type_contexts"
.LASF48:
	.string	"pic_parameter_set_rbsp_t"
.LASF30:
	.string	"bottom_right"
.LASF262:
	.string	"WeightedBiprediction"
.LASF544:
	.string	"all_available"
.LASF408:
	.string	"p_interval"
.LASF218:
	.string	"Picture"
.LASF629:
	.string	"LevelOffset4x4Luma_Inter"
.LASF501:
	.string	"bottom_poc"
.LASF406:
	.string	"imgtr_last_P_fld"
.LASF636:
	.string	"input"
.LASF304:
	.string	"LeakyBucketParamFile"
.LASF522:
	.string	"imgY_ups"
.LASF221:
	.string	"no_frames"
.LASF165:
	.string	"prev_delta_qp"
.LASF39:
	.string	"pic_init_qp_minus26"
.LASF233:
	.string	"img_width"
.LASF272:
	.string	"PyramidRefReorder"
.LASF366:
	.string	"is_v_block"
.LASF612:
	.string	"dct_chroma_sp"
.LASF239:
	.string	"slice_mode"
.LASF277:
	.string	"InterSearch16x16"
.LASF576:
	.string	"dct_luma_16x16"
.LASF368:
	.string	"mb_y_intra"
.LASF84:
	.string	"mb_type_contexts"
.LASF29:
	.string	"top_left"
.LASF634:
	.string	"dc_level"
.LASF183:
	.string	"streamBuffer"
.LASF75:
	.string	"Ebits_to_goS"
.LASF278:
	.string	"InterSearch16x8"
.LASF465:
	.string	"MADofMB"
.LASF599:
	.string	"c_err"
.LASF416:
	.string	"num_ref_idx_l0_active"
.LASF325:
	.string	"model_number"
.LASF547:
	.string	"joff"
.LASF558:
	.string	"left"
.LASF563:
	.string	"scan_pos"
.LASF257:
	.string	"BiPredMESearchRange"
.LASF130:
	.string	"macroblock"
.LASF597:
	.string	"qp_const"
.LASF582:
	.string	"dct_chroma"
.LASF437:
	.string	"toppoc"
.LASF427:
	.string	"MbaffFrameFlag"
.LASF65:
	.string	"Elow"
.LASF382:
	.string	"opix_x"
.LASF333:
	.string	"basicunit"
.LASF500:
	.string	"top_poc"
.LASF305:
	.string	"PicInterlace"
.LASF192:
	.string	"picture_type"
.LASF495:
	.string	"chroma_qp_offset"
.LASF271:
	.string	"ExplicitPyramidFormat"
.LASF445:
	.string	"PicHeightInMbs"
.LASF343:
	.string	"lossless_qpprime_y_zero_flag"
.LASF47:
	.string	"vui_pic_parameters_flag"
.LASF499:
	.string	"storable_picture"
.LASF247:
	.string	"QmatrixFile"
.LASF418:
	.string	"field_mode"
.LASF264:
	.string	"RDPictureDecision"
.LASF611:
	.string	"lambda_mode"
.LASF79:
	.string	"EncodingEnvironment"
.LASF189:
	.string	"writeSyntaxElement"
.LASF220:
	.string	"LevelIDC"
.LASF0:
	.string	"long unsigned int"
.LASF93:
	.string	"cipr_contexts"
.LASF551:
	.string	"pix_c"
.LASF78:
	.string	"Ecodestrm_lenS"
.LASF331:
	.string	"bit_rate"
.LASF195:
	.string	"num_mb"
.LASF438:
	.string	"bottompoc"
.LASF231:
	.string	"ResendPPS"
.LASF619:
	.string	"LevelScale4x4Luma_Intra"
.LASF286:
	.string	"Intra4x4DiagDisable"
.LASF402:
	.string	"pstruct_next_P"
.LASF146:
	.string	"lf_alpha_c0_offset"
.LASF497:
	.string	"auto_crop_bottom"
.LASF246:
	.string	"TraceFile"
.LASF543:
	.string	"up_available"
.LASF561:
	.string	"left_up_avail"
.LASF241:
	.string	"UseConstrainedIntraPred"
.LASF103:
	.string	"available"
.LASF466:
	.string	"BasicUnitQP"
.LASF458:
	.string	"NumberofMBTextureBits"
.LASF580:
	.string	"ilev"
.LASF616:
	.string	"intrapred_luma"
.LASF144:
	.string	"cbp_bits"
.LASF614:
	.string	"qpChroma"
.LASF502:
	.string	"frame_poc"
.LASF380:
	.string	"pix_c_x"
.LASF381:
	.string	"pix_c_y"
.LASF223:
	.string	"hadamard"
.LASF409:
	.string	"b_frame_to_code"
.LASF214:
	.string	"bits_per_picture"
.LASF367:
	.string	"mb_y_upd"
.LASF348:
	.string	"OffsetMatrixPresentFlag"
.LASF311:
	.string	"NoOfDecoders"
.LASF110:
	.string	"RMPNI"
.LASF591:
	.string	"q_bits_422"
.LASF635:
	.string	"dc_level_temp"
.LASF63:
	.string	"BOTTOM_FIELD"
.LASF170:
	.string	"LFAlphaC0Offset"
.LASF575:
	.string	"lossless_qpprime"
.LASF147:
	.string	"lf_beta_offset"
.LASF116:
	.string	"difference_of_pic_nums_minus1"
.LASF314:
	.string	"NumFrameIn2ndIGOP"
.LASF60:
	.string	"CABAC"
.LASF436:
	.string	"field_picture"
.LASF249:
	.string	"idr_enable"
.LASF386:
	.string	"mprr"
.LASF250:
	.string	"start_frame"
.LASF519:
	.string	"imgY"
.LASF91:
	.string	"MotionInfoContexts"
.LASF560:
	.string	"left_avail"
.LASF9:
	.string	"long long int"
.LASF35:
	.string	"num_ref_idx_l0_active_minus1"
.LASF407:
	.string	"b_interval"
.LASF68:
	.string	"Ebits_to_go"
.LASF399:
	.string	"fld_flag"
.LASF401:
	.string	"direct_intraP_ref"
.LASF358:
	.string	"width"
.LASF18:
	.string	"Valid"
.LASF138:
	.string	"mb_type"
.LASF178:
	.string	"stored_bits_to_go"
.LASF494:
	.string	"mb_cr_size_y"
.LASF589:
	.string	"qp_per_dc"
.LASF432:
	.string	"offset_for_ref_frame"
.LASF132:
	.string	"slice_nr"
.LASF550:
	.string	"pix_b"
.LASF216:
	.string	"distortion_u"
.LASF217:
	.string	"distortion_v"
.LASF215:
	.string	"distortion_y"
.LASF181:
	.string	"byte_pos_skip"
.LASF171:
	.string	"LFBetaOffset"
.LASF12:
	.string	"double"
.LASF644:
	.string	"hor_offset"
.LASF318:
	.string	"SPDetectionThreshold"
.LASF531:
	.string	"frame"
.LASF177:
	.string	"stored_byte_pos"
.LASF344:
	.string	"residue_transform_flag"
.LASF564:
	.string	"coeff_ctr"
.LASF404:
	.string	"imgtr_last_P_frm"
.LASF631:
	.string	"imgY_org"
.LASF590:
	.string	"qp_rem_dc"
.LASF98:
	.string	"one_contexts"
.LASF516:
	.string	"size_y_cr"
.LASF306:
	.string	"MbInterlace"
.LASF134:
	.string	"qpsp"
.LASF11:
	.string	"float"
.LASF328:
	.string	"ReportFrameStats"
.LASF270:
	.string	"PyramidCoding"
.LASF567:
	.string	"qp_rem"
.LASF82:
	.string	"count"
.LASF166:
	.string	"prev_cbp"
.LASF274:
	.string	"symbol_mode"
.LASF83:
	.string	"BiContextType"
.LASF511:
	.string	"is_output"
.LASF400:
	.string	"rd_pass"
.LASF569:
	.string	"ac_coef"
.LASF396:
	.string	"quad"
.LASF602:
	.string	"qp_rem_sp"
.LASF3:
	.string	"unsigned int"
.LASF107:
	.string	"PixelPos"
.LASF99:
	.string	"abs_contexts"
.LASF69:
	.string	"Ebits_to_follow"
.LASF632:
	.string	"active_pps"
.LASF184:
	.string	"write_flag"
.LASF353:
	.string	"total_number_mb"
.LASF545:
	.string	"PredPel"
.LASF43:
	.string	"cr_qp_index_offset"
.LASF622:
	.string	"LevelScale4x4Chroma_Inter"
.LASF71:
	.string	"Ecodestrm_len"
.LASF198:
	.string	"tex_ctx"
.LASF259:
	.string	"sp_periodicity"
.LASF596:
	.string	"dct_luma_sp"
.LASF463:
	.string	"TotalQpforPPicture"
.LASF137:
	.string	"mb_available_left"
.LASF109:
	.string	"RMPNIbuffer_s"
.LASF113:
	.string	"RMPNIbuffer_t"
.LASF321:
	.string	"slice_group_change_cycle"
.LASF557:
	.string	"imgY_pred"
.LASF346:
	.string	"LambdaWeight"
.LASF102:
	.string	"TextureInfoContexts"
.LASF530:
	.string	"bottom_field"
.LASF352:
	.string	"current_mb_nr"
.LASF302:
	.string	"NumberLeakyBuckets"
.LASF623:
	.string	"InvLevelScale4x4Luma_Intra"
.LASF504:
	.string	"ref_pic_num"
.LASF423:
	.string	"layer"
.LASF562:
	.string	"new_intra_mode"
.LASF143:
	.string	"b8pdir"
.LASF211:
	.string	"no_slices"
.LASF430:
	.string	"offset_for_top_to_bottom_field"
.LASF290:
	.string	"ChromaIntraDisable"
.LASF549:
	.string	"pix_a"
.LASF403:
	.string	"imgtr_next_P_frm"
.LASF468:
	.string	"FieldControl"
.LASF552:
	.string	"pix_d"
.LASF460:
	.string	"NumberofCodedBFrame"
.LASF422:
	.string	"i16offset"
.LASF289:
	.string	"Intra16x16PlaneDisable"
.LASF108:
	.string	"pix_pos"
.LASF260:
	.string	"qpsp_pred"
.LASF323:
	.string	"pic_order_cnt_type"
.LASF378:
	.string	"pix_x"
.LASF379:
	.string	"pix_y"
.LASF648:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF493:
	.string	"mb_cr_size_x"
.LASF498:
	.string	"ImageParameters"
.LASF188:
	.string	"ee_cabac"
.LASF584:
	.string	"cr_cbp_tmp"
.LASF15:
	.string	"FALSE"
.LASF167:
	.string	"predict_qp"
.LASF529:
	.string	"field_frame"
.LASF224:
	.string	"hadamardqpel"
.LASF105:
	.string	"pos_x"
.LASF106:
	.string	"pos_y"
.LASF285:
	.string	"Intra4x4ParDisable"
.LASF376:
	.string	"block_x"
.LASF303:
	.string	"LeakyBucketRateFile"
.LASF234:
	.string	"img_height"
.LASF238:
	.string	"part_size"
.LASF276:
	.string	"partition_mode"
.LASF479:
	.string	"last_has_mmco_5"
.LASF538:
	.string	"frame_cropping_rect_bottom_offset"
.LASF101:
	.string	"fld_last_contexts"
.LASF429:
	.string	"offset_for_non_ref_pic"
.LASF46:
	.string	"redundant_pic_cnt_present_flag"
.LASF172:
	.string	"skip_flag"
.LASF441:
	.string	"frame_num"
.LASF96:
	.string	"map_contexts"
.LASF320:
	.string	"SliceGroupConfigFileName"
.LASF115:
	.string	"memory_management_control_operation"
.LASF626:
	.string	"InvLevelScale4x4Chroma_Inter"
.LASF307:
	.string	"IntraBottom"
.LASF185:
	.string	"Bitstream"
.LASF347:
	.string	"QOffsetMatrixFile"
.LASF228:
	.string	"B_List0_refs"
.LASF610:
	.string	"info"
.LASF425:
	.string	"NoResidueDirect"
.LASF472:
	.string	"NumberofCodedMacroBlocks"
.LASF21:
	.string	"entropy_coding_mode_flag"
.LASF191:
	.string	"picture_id"
.LASF533:
	.string	"frame_mbs_only_flag"
.LASF398:
	.string	"fld_type"
.LASF461:
	.string	"NumberofCodedPFrame"
.LASF36:
	.string	"num_ref_idx_l1_active_minus1"
.LASF10:
	.string	"long long unsigned int"
.LASF52:
	.string	"BITS_MB_MODE"
.LASF605:
	.string	"c_err2"
.LASF256:
	.string	"BiPredMERefinements"
.LASF139:
	.string	"intra_pred_modes"
.LASF361:
	.string	"height_cr"
.LASF413:
	.string	"all_mv"
.LASF296:
	.string	"qp2start"
.LASF638:
	.string	"QP_SCALE_CR"
.LASF360:
	.string	"height"
.LASF355:
	.string	"structure"
.LASF209:
	.string	"field_ctx"
.LASF38:
	.string	"weighted_bipred_idc"
.LASF190:
	.string	"DataPartition"
.LASF394:
	.string	"mb_data"
.LASF537:
	.string	"frame_cropping_rect_top_offset"
.LASF332:
	.string	"SeinitialQP"
.LASF456:
	.string	"NumberofBasicUnitTextureBits"
.LASF431:
	.string	"num_ref_frames_in_pic_order_cnt_cycle"
.LASF210:
	.string	"Slice"
.LASF186:
	.string	"datapartition"
.LASF76:
	.string	"Ebits_to_followS"
.LASF362:
	.string	"height_cr_frame"
.LASF470:
	.string	"Frame_Total_Number_MB"
.LASF123:
	.string	"value1"
.LASF124:
	.string	"value2"
.LASF556:
	.string	"block_available_up_right"
.LASF535:
	.string	"frame_cropping_rect_left_offset"
.LASF342:
	.string	"rgb_input_flag"
.LASF187:
	.string	"bitstream"
.LASF633:
	.string	"mb_adaptive"
.LASF227:
	.string	"P_List0_refs"
.LASF312:
	.string	"RestrictRef"
.LASF506:
	.string	"top_ref_pic_num"
.LASF627:
	.string	"LevelOffset4x4Luma_Intra"
.LASF72:
	.string	"ElowS"
.LASF27:
	.string	"slice_group_map_type"
.LASF574:
	.string	"ACRun"
.LASF17:
	.string	"Boolean"
.LASF620:
	.string	"LevelScale4x4Chroma_Intra"
.LASF275:
	.string	"of_mode"
.LASF613:
	.string	"predicted_chroma_block"
.LASF486:
	.string	"bitdepth_lambda_scale"
.LASF300:
	.string	"disthres"
.LASF424:
	.string	"old_layer"
.LASF350:
	.string	"number"
.LASF532:
	.string	"chroma_format_idc"
.LASF298:
	.string	"qpBRS2Offset"
.LASF488:
	.string	"max_imgpel_value"
.LASF442:
	.string	"PicWidthInMbs"
.LASF20:
	.string	"seq_parameter_set_id"
.LASF308:
	.string	"LossRateA"
.LASF309:
	.string	"LossRateB"
.LASF310:
	.string	"LossRateC"
.LASF481:
	.string	"pic_unit_size_on_disk"
.LASF487:
	.string	"dc_pred_value"
.LASF491:
	.string	"num_cdc_coeff"
.LASF341:
	.string	"img_width_cr"
.LASF173:
	.string	"Macroblock"
.LASF87:
	.string	"ref_no_contexts"
.LASF615:
	.string	"qpChromaSP"
.LASF237:
	.string	"blc_size"
.LASF61:
	.string	"FRAME"
.LASF449:
	.string	"adaptive_ref_pic_buffering_flag"
.LASF56:
	.string	"BITS_COEFF_UV_MB"
.LASF14:
	.string	"byte"
.LASF112:
	.string	"Next"
.LASF269:
	.string	"BRefPictures"
.LASF111:
	.string	"Data"
.LASF467:
	.string	"TopFieldFlag"
.LASF5:
	.string	"short int"
.LASF503:
	.string	"order_num"
.LASF528:
	.string	"moving_block"
.LASF70:
	.string	"Ecodestrm"
.LASF383:
	.string	"opix_y"
.LASF235:
	.string	"yuv_format"
.LASF337:
	.string	"FMEnable"
.LASF426:
	.string	"redundant_pic_cnt"
.LASF411:
	.string	"bw_mb_mode"
.LASF322:
	.string	"redundant_slice_flag"
.LASF338:
	.string	"BitDepthLuma"
.LASF639:
	.string	"SNGL_SCAN"
.LASF16:
	.string	"TRUE"
.LASF299:
	.string	"rdopt"
.LASF74:
	.string	"EbufferS"
.LASF628:
	.string	"LevelOffset4x4Chroma_Intra"
.LASF440:
	.string	"ThisPOC"
.LASF59:
	.string	"UVLC"
.LASF457:
	.string	"TotalMADBasicUnit"
.LASF164:
	.string	"prev_qp"
.LASF284:
	.string	"IntraDisableInterOnly"
.LASF86:
	.string	"mv_res_contexts"
.LASF279:
	.string	"InterSearch8x16"
.LASF637:
	.string	"enc_picture"
.LASF546:
	.string	"ioff"
.LASF163:
	.string	"actj"
.LASF26:
	.string	"num_slice_groups_minus1"
.LASF434:
	.string	"delta_pic_order_cnt_bottom"
.LASF421:
	.string	"buf_cycle"
.LASF55:
	.string	"BITS_COEFF_Y_MB"
.LASF372:
	.string	"cod_counter"
.LASF595:
	.string	"dct_chroma_DC"
.LASF196:
	.string	"partArr"
.LASF542:
	.string	"left_available"
.LASF586:
	.string	"qp_c"
.LASF174:
	.string	"byte_pos"
.LASF244:
	.string	"outfile"
.LASF92:
	.string	"ipr_contexts"
.LASF151:
	.string	"mbAddrA"
.LASF152:
	.string	"mbAddrB"
.LASF153:
	.string	"mbAddrC"
.LASF154:
	.string	"mbAddrD"
.LASF327:
	.string	"LowPassForIntra8x8"
.LASF373:
	.string	"nz_coeff"
.LASF571:
	.string	"DCLevel"
.LASF88:
	.string	"delta_qp_contexts"
.LASF587:
	.string	"uv_scale"
.LASF287:
	.string	"Intra4x4DirDisable"
.LASF646:
	.string	"quant_coef"
.LASF455:
	.string	"NumberofBasicUnitHeaderBits"
.LASF129:
	.string	"SyntaxElement"
.LASF295:
	.string	"qpB2"
.LASF339:
	.string	"BitDepthChroma"
.LASF471:
	.string	"IFLAG"
.LASF578:
	.string	"coeff_cost"
.LASF480:
	.string	"pre_frame_num"
.LASF25:
	.string	"pic_order_present_flag"
.LASF603:
	.string	"q_bits_sp"
.LASF145:
	.string	"lf_disable"
.LASF62:
	.string	"TOP_FIELD"
.LASF581:
	.string	"nonzero"
.LASF513:
	.string	"size_x"
.LASF514:
	.string	"size_y"
.LASF212:
	.string	"idr_flag"
.LASF2:
	.string	"short unsigned int"
.LASF469:
	.string	"FieldFrame"
.LASF293:
	.string	"last_frame"
.LASF536:
	.string	"frame_cropping_rect_right_offset"
.LASF588:
	.string	"cbpblk_pattern"
.LASF168:
	.string	"predict_error"
.LASF354:
	.string	"current_slice_nr"
.LASF253:
	.string	"direct_spatial_mv_pred_flag"
.LASF222:
	.string	"jumpd"
.LASF600:
	.string	"qp_const2"
.LASF483:
	.string	"bitdepth_chroma"
.LASF127:
	.string	"mapping"
.LASF525:
	.string	"ref_idx"
.LASF340:
	.string	"img_height_cr"
.LASF534:
	.string	"frame_cropping_flag"
.LASF524:
	.string	"imgUV"
.LASF32:
	.string	"slice_group_change_rate_minus1"
.LASF651:
	.string	"intrapred_luma_16x16"
.LASF526:
	.string	"ref_pic_id"
.LASF13:
	.string	"int64_t"
.LASF128:
	.string	"writing"
.LASF34:
	.string	"slice_group_id"
.LASF100:
	.string	"fld_map_contexts"
.LASF180:
	.string	"byte_buf_skip"
.LASF31:
	.string	"slice_group_change_direction_flag"
.LASF23:
	.string	"pic_scaling_matrix_present_flag"
.LASF291:
	.string	"FrameRate"
.LASF266:
	.string	"RDPSliceWeightOnly"
.LASF94:
	.string	"cbp_contexts"
.LASF42:
	.string	"cb_qp_index_offset"
.LASF197:
	.string	"mot_ctx"
.LASF33:
	.string	"pic_size_in_map_units_minus1"
.LASF647:
	.string	"dequant_coef"
.LASF161:
	.string	"NoMbPartLessThan8x8Flag"
.LASF640:
	.string	"FIELD_SCAN"
.LASF363:
	.string	"subblock_x"
.LASF364:
	.string	"subblock_y"
.LASF509:
	.string	"is_long_term"
.LASF22:
	.string	"transform_8x8_mode_flag"
.LASF598:
	.string	"predicted_block"
.LASF345:
	.string	"UseExplicitLambdaParams"
.LASF131:
	.string	"currSEnr"
.LASF559:
	.string	"up_avail"
.LASF64:
	.string	"PictureStructure"
.LASF444:
	.string	"FrameHeightInMbs"
.LASF393:
	.string	"currentSlice"
.LASF135:
	.string	"bitcounter"
.LASF73:
	.string	"ErangeS"
.LASF155:
	.string	"mbAvailA"
.LASF156:
	.string	"mbAvailB"
.LASF157:
	.string	"mbAvailC"
.LASF158:
	.string	"mbAvailD"
.LASF141:
	.string	"cbp_blk"
.LASF630:
	.string	"LevelOffset4x4Chroma_Inter"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
