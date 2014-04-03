	.file	"transform8x8.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 transform8x8.c -mtune=generic -march=x86-64 -g
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
	.comm	cofAC8x8_chroma,1152,32
	.globl	quant_coef8
	.section	.rodata
	.align 32
	.type	quant_coef8, @object
	.size	quant_coef8, 1536
quant_coef8:
	.long	13107
	.long	12222
	.long	16777
	.long	12222
	.long	13107
	.long	12222
	.long	16777
	.long	12222
	.long	12222
	.long	11428
	.long	15481
	.long	11428
	.long	12222
	.long	11428
	.long	15481
	.long	11428
	.long	16777
	.long	15481
	.long	20972
	.long	15481
	.long	16777
	.long	15481
	.long	20972
	.long	15481
	.long	12222
	.long	11428
	.long	15481
	.long	11428
	.long	12222
	.long	11428
	.long	15481
	.long	11428
	.long	13107
	.long	12222
	.long	16777
	.long	12222
	.long	13107
	.long	12222
	.long	16777
	.long	12222
	.long	12222
	.long	11428
	.long	15481
	.long	11428
	.long	12222
	.long	11428
	.long	15481
	.long	11428
	.long	16777
	.long	15481
	.long	20972
	.long	15481
	.long	16777
	.long	15481
	.long	20972
	.long	15481
	.long	12222
	.long	11428
	.long	15481
	.long	11428
	.long	12222
	.long	11428
	.long	15481
	.long	11428
	.long	11916
	.long	11058
	.long	14980
	.long	11058
	.long	11916
	.long	11058
	.long	14980
	.long	11058
	.long	11058
	.long	10826
	.long	14290
	.long	10826
	.long	11058
	.long	10826
	.long	14290
	.long	10826
	.long	14980
	.long	14290
	.long	19174
	.long	14290
	.long	14980
	.long	14290
	.long	19174
	.long	14290
	.long	11058
	.long	10826
	.long	14290
	.long	10826
	.long	11058
	.long	10826
	.long	14290
	.long	10826
	.long	11916
	.long	11058
	.long	14980
	.long	11058
	.long	11916
	.long	11058
	.long	14980
	.long	11058
	.long	11058
	.long	10826
	.long	14290
	.long	10826
	.long	11058
	.long	10826
	.long	14290
	.long	10826
	.long	14980
	.long	14290
	.long	19174
	.long	14290
	.long	14980
	.long	14290
	.long	19174
	.long	14290
	.long	11058
	.long	10826
	.long	14290
	.long	10826
	.long	11058
	.long	10826
	.long	14290
	.long	10826
	.long	10082
	.long	9675
	.long	12710
	.long	9675
	.long	10082
	.long	9675
	.long	12710
	.long	9675
	.long	9675
	.long	8943
	.long	11985
	.long	8943
	.long	9675
	.long	8943
	.long	11985
	.long	8943
	.long	12710
	.long	11985
	.long	15978
	.long	11985
	.long	12710
	.long	11985
	.long	15978
	.long	11985
	.long	9675
	.long	8943
	.long	11985
	.long	8943
	.long	9675
	.long	8943
	.long	11985
	.long	8943
	.long	10082
	.long	9675
	.long	12710
	.long	9675
	.long	10082
	.long	9675
	.long	12710
	.long	9675
	.long	9675
	.long	8943
	.long	11985
	.long	8943
	.long	9675
	.long	8943
	.long	11985
	.long	8943
	.long	12710
	.long	11985
	.long	15978
	.long	11985
	.long	12710
	.long	11985
	.long	15978
	.long	11985
	.long	9675
	.long	8943
	.long	11985
	.long	8943
	.long	9675
	.long	8943
	.long	11985
	.long	8943
	.long	9362
	.long	8931
	.long	11984
	.long	8931
	.long	9362
	.long	8931
	.long	11984
	.long	8931
	.long	8931
	.long	8228
	.long	11259
	.long	8228
	.long	8931
	.long	8228
	.long	11259
	.long	8228
	.long	11984
	.long	11259
	.long	14913
	.long	11259
	.long	11984
	.long	11259
	.long	14913
	.long	11259
	.long	8931
	.long	8228
	.long	11259
	.long	8228
	.long	8931
	.long	8228
	.long	11259
	.long	8228
	.long	9362
	.long	8931
	.long	11984
	.long	8931
	.long	9362
	.long	8931
	.long	11984
	.long	8931
	.long	8931
	.long	8228
	.long	11259
	.long	8228
	.long	8931
	.long	8228
	.long	11259
	.long	8228
	.long	11984
	.long	11259
	.long	14913
	.long	11259
	.long	11984
	.long	11259
	.long	14913
	.long	11259
	.long	8931
	.long	8228
	.long	11259
	.long	8228
	.long	8931
	.long	8228
	.long	11259
	.long	8228
	.long	8192
	.long	7740
	.long	10486
	.long	7740
	.long	8192
	.long	7740
	.long	10486
	.long	7740
	.long	7740
	.long	7346
	.long	9777
	.long	7346
	.long	7740
	.long	7346
	.long	9777
	.long	7346
	.long	10486
	.long	9777
	.long	13159
	.long	9777
	.long	10486
	.long	9777
	.long	13159
	.long	9777
	.long	7740
	.long	7346
	.long	9777
	.long	7346
	.long	7740
	.long	7346
	.long	9777
	.long	7346
	.long	8192
	.long	7740
	.long	10486
	.long	7740
	.long	8192
	.long	7740
	.long	10486
	.long	7740
	.long	7740
	.long	7346
	.long	9777
	.long	7346
	.long	7740
	.long	7346
	.long	9777
	.long	7346
	.long	10486
	.long	9777
	.long	13159
	.long	9777
	.long	10486
	.long	9777
	.long	13159
	.long	9777
	.long	7740
	.long	7346
	.long	9777
	.long	7346
	.long	7740
	.long	7346
	.long	9777
	.long	7346
	.long	7282
	.long	6830
	.long	9118
	.long	6830
	.long	7282
	.long	6830
	.long	9118
	.long	6830
	.long	6830
	.long	6428
	.long	8640
	.long	6428
	.long	6830
	.long	6428
	.long	8640
	.long	6428
	.long	9118
	.long	8640
	.long	11570
	.long	8640
	.long	9118
	.long	8640
	.long	11570
	.long	8640
	.long	6830
	.long	6428
	.long	8640
	.long	6428
	.long	6830
	.long	6428
	.long	8640
	.long	6428
	.long	7282
	.long	6830
	.long	9118
	.long	6830
	.long	7282
	.long	6830
	.long	9118
	.long	6830
	.long	6830
	.long	6428
	.long	8640
	.long	6428
	.long	6830
	.long	6428
	.long	8640
	.long	6428
	.long	9118
	.long	8640
	.long	11570
	.long	8640
	.long	9118
	.long	8640
	.long	11570
	.long	8640
	.long	6830
	.long	6428
	.long	8640
	.long	6428
	.long	6830
	.long	6428
	.long	8640
	.long	6428
	.globl	dequant_coef8
	.align 32
	.type	dequant_coef8, @object
	.size	dequant_coef8, 1536
dequant_coef8:
	.long	20
	.long	19
	.long	25
	.long	19
	.long	20
	.long	19
	.long	25
	.long	19
	.long	19
	.long	18
	.long	24
	.long	18
	.long	19
	.long	18
	.long	24
	.long	18
	.long	25
	.long	24
	.long	32
	.long	24
	.long	25
	.long	24
	.long	32
	.long	24
	.long	19
	.long	18
	.long	24
	.long	18
	.long	19
	.long	18
	.long	24
	.long	18
	.long	20
	.long	19
	.long	25
	.long	19
	.long	20
	.long	19
	.long	25
	.long	19
	.long	19
	.long	18
	.long	24
	.long	18
	.long	19
	.long	18
	.long	24
	.long	18
	.long	25
	.long	24
	.long	32
	.long	24
	.long	25
	.long	24
	.long	32
	.long	24
	.long	19
	.long	18
	.long	24
	.long	18
	.long	19
	.long	18
	.long	24
	.long	18
	.long	22
	.long	21
	.long	28
	.long	21
	.long	22
	.long	21
	.long	28
	.long	21
	.long	21
	.long	19
	.long	26
	.long	19
	.long	21
	.long	19
	.long	26
	.long	19
	.long	28
	.long	26
	.long	35
	.long	26
	.long	28
	.long	26
	.long	35
	.long	26
	.long	21
	.long	19
	.long	26
	.long	19
	.long	21
	.long	19
	.long	26
	.long	19
	.long	22
	.long	21
	.long	28
	.long	21
	.long	22
	.long	21
	.long	28
	.long	21
	.long	21
	.long	19
	.long	26
	.long	19
	.long	21
	.long	19
	.long	26
	.long	19
	.long	28
	.long	26
	.long	35
	.long	26
	.long	28
	.long	26
	.long	35
	.long	26
	.long	21
	.long	19
	.long	26
	.long	19
	.long	21
	.long	19
	.long	26
	.long	19
	.long	26
	.long	24
	.long	33
	.long	24
	.long	26
	.long	24
	.long	33
	.long	24
	.long	24
	.long	23
	.long	31
	.long	23
	.long	24
	.long	23
	.long	31
	.long	23
	.long	33
	.long	31
	.long	42
	.long	31
	.long	33
	.long	31
	.long	42
	.long	31
	.long	24
	.long	23
	.long	31
	.long	23
	.long	24
	.long	23
	.long	31
	.long	23
	.long	26
	.long	24
	.long	33
	.long	24
	.long	26
	.long	24
	.long	33
	.long	24
	.long	24
	.long	23
	.long	31
	.long	23
	.long	24
	.long	23
	.long	31
	.long	23
	.long	33
	.long	31
	.long	42
	.long	31
	.long	33
	.long	31
	.long	42
	.long	31
	.long	24
	.long	23
	.long	31
	.long	23
	.long	24
	.long	23
	.long	31
	.long	23
	.long	28
	.long	26
	.long	35
	.long	26
	.long	28
	.long	26
	.long	35
	.long	26
	.long	26
	.long	25
	.long	33
	.long	25
	.long	26
	.long	25
	.long	33
	.long	25
	.long	35
	.long	33
	.long	45
	.long	33
	.long	35
	.long	33
	.long	45
	.long	33
	.long	26
	.long	25
	.long	33
	.long	25
	.long	26
	.long	25
	.long	33
	.long	25
	.long	28
	.long	26
	.long	35
	.long	26
	.long	28
	.long	26
	.long	35
	.long	26
	.long	26
	.long	25
	.long	33
	.long	25
	.long	26
	.long	25
	.long	33
	.long	25
	.long	35
	.long	33
	.long	45
	.long	33
	.long	35
	.long	33
	.long	45
	.long	33
	.long	26
	.long	25
	.long	33
	.long	25
	.long	26
	.long	25
	.long	33
	.long	25
	.long	32
	.long	30
	.long	40
	.long	30
	.long	32
	.long	30
	.long	40
	.long	30
	.long	30
	.long	28
	.long	38
	.long	28
	.long	30
	.long	28
	.long	38
	.long	28
	.long	40
	.long	38
	.long	51
	.long	38
	.long	40
	.long	38
	.long	51
	.long	38
	.long	30
	.long	28
	.long	38
	.long	28
	.long	30
	.long	28
	.long	38
	.long	28
	.long	32
	.long	30
	.long	40
	.long	30
	.long	32
	.long	30
	.long	40
	.long	30
	.long	30
	.long	28
	.long	38
	.long	28
	.long	30
	.long	28
	.long	38
	.long	28
	.long	40
	.long	38
	.long	51
	.long	38
	.long	40
	.long	38
	.long	51
	.long	38
	.long	30
	.long	28
	.long	38
	.long	28
	.long	30
	.long	28
	.long	38
	.long	28
	.long	36
	.long	34
	.long	46
	.long	34
	.long	36
	.long	34
	.long	46
	.long	34
	.long	34
	.long	32
	.long	43
	.long	32
	.long	34
	.long	32
	.long	43
	.long	32
	.long	46
	.long	43
	.long	58
	.long	43
	.long	46
	.long	43
	.long	58
	.long	43
	.long	34
	.long	32
	.long	43
	.long	32
	.long	34
	.long	32
	.long	43
	.long	32
	.long	36
	.long	34
	.long	46
	.long	34
	.long	36
	.long	34
	.long	46
	.long	34
	.long	34
	.long	32
	.long	43
	.long	32
	.long	34
	.long	32
	.long	43
	.long	32
	.long	46
	.long	43
	.long	58
	.long	43
	.long	46
	.long	43
	.long	58
	.long	43
	.long	34
	.long	32
	.long	43
	.long	32
	.long	34
	.long	32
	.long	43
	.long	32
	.globl	SNGL_SCAN8x8
	.align 32
	.type	SNGL_SCAN8x8, @object
	.size	SNGL_SCAN8x8, 128
SNGL_SCAN8x8:
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
	.byte	0
	.byte	4
	.byte	1
	.byte	3
	.byte	2
	.byte	2
	.byte	3
	.byte	1
	.byte	4
	.byte	0
	.byte	5
	.byte	0
	.byte	4
	.byte	1
	.byte	3
	.byte	2
	.byte	2
	.byte	3
	.byte	1
	.byte	4
	.byte	0
	.byte	5
	.byte	0
	.byte	6
	.byte	1
	.byte	5
	.byte	2
	.byte	4
	.byte	3
	.byte	3
	.byte	4
	.byte	2
	.byte	5
	.byte	1
	.byte	6
	.byte	0
	.byte	7
	.byte	0
	.byte	6
	.byte	1
	.byte	5
	.byte	2
	.byte	4
	.byte	3
	.byte	3
	.byte	4
	.byte	2
	.byte	5
	.byte	1
	.byte	6
	.byte	0
	.byte	7
	.byte	1
	.byte	7
	.byte	2
	.byte	6
	.byte	3
	.byte	5
	.byte	4
	.byte	4
	.byte	5
	.byte	3
	.byte	6
	.byte	2
	.byte	7
	.byte	1
	.byte	7
	.byte	2
	.byte	6
	.byte	3
	.byte	5
	.byte	4
	.byte	4
	.byte	5
	.byte	3
	.byte	6
	.byte	2
	.byte	7
	.byte	3
	.byte	7
	.byte	4
	.byte	6
	.byte	5
	.byte	5
	.byte	6
	.byte	4
	.byte	7
	.byte	3
	.byte	7
	.byte	4
	.byte	6
	.byte	5
	.byte	5
	.byte	6
	.byte	4
	.byte	7
	.byte	5
	.byte	7
	.byte	6
	.byte	6
	.byte	7
	.byte	5
	.byte	7
	.byte	6
	.byte	6
	.byte	7
	.byte	7
	.byte	7
	.globl	FIELD_SCAN8x8
	.align 32
	.type	FIELD_SCAN8x8, @object
	.size	FIELD_SCAN8x8, 128
FIELD_SCAN8x8:
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	2
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	3
	.byte	0
	.byte	4
	.byte	1
	.byte	2
	.byte	2
	.byte	0
	.byte	1
	.byte	3
	.byte	0
	.byte	5
	.byte	0
	.byte	6
	.byte	0
	.byte	7
	.byte	1
	.byte	4
	.byte	2
	.byte	1
	.byte	3
	.byte	0
	.byte	2
	.byte	2
	.byte	1
	.byte	5
	.byte	1
	.byte	6
	.byte	1
	.byte	7
	.byte	2
	.byte	3
	.byte	3
	.byte	1
	.byte	4
	.byte	0
	.byte	3
	.byte	2
	.byte	2
	.byte	4
	.byte	2
	.byte	5
	.byte	2
	.byte	6
	.byte	2
	.byte	7
	.byte	3
	.byte	3
	.byte	4
	.byte	1
	.byte	5
	.byte	0
	.byte	4
	.byte	2
	.byte	3
	.byte	4
	.byte	3
	.byte	5
	.byte	3
	.byte	6
	.byte	3
	.byte	7
	.byte	4
	.byte	3
	.byte	5
	.byte	1
	.byte	6
	.byte	0
	.byte	5
	.byte	2
	.byte	4
	.byte	4
	.byte	4
	.byte	5
	.byte	4
	.byte	6
	.byte	4
	.byte	7
	.byte	5
	.byte	3
	.byte	6
	.byte	1
	.byte	6
	.byte	2
	.byte	5
	.byte	4
	.byte	5
	.byte	5
	.byte	5
	.byte	6
	.byte	5
	.byte	7
	.byte	6
	.byte	3
	.byte	7
	.byte	0
	.byte	7
	.byte	1
	.byte	6
	.byte	4
	.byte	6
	.byte	5
	.byte	6
	.byte	6
	.byte	6
	.byte	7
	.byte	7
	.byte	2
	.byte	7
	.byte	3
	.byte	7
	.byte	4
	.byte	7
	.byte	5
	.byte	7
	.byte	6
	.byte	7
	.byte	7
	.globl	COEFF_COST8x8
	.align 32
	.type	COEFF_COST8x8, @object
	.size	COEFF_COST8x8, 128
COEFF_COST8x8:
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
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
	.text
	.globl	Mode_Decision_for_new_Intra8x8Macroblock
	.type	Mode_Decision_for_new_Intra8x8Macroblock, @function
Mode_Decision_for_new_Intra8x8Macroblock:
.LFB2:
	.file 1 "transform8x8.c"
	.loc 1 218 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movsd	%xmm0, -24(%rbp)	# lambda, lambda
	movq	%rdi, -32(%rbp)	# min_cost, min_cost
	.loc 1 219 0
	movl	$0, -8(%rbp)	#, cbp
	.loc 1 221 0
	movsd	-24(%rbp), %xmm1	# lambda, tmp70
	movsd	.LC0(%rip), %xmm0	#, tmp71
	mulsd	%xmm1, %xmm0	# tmp70, D.10399
	movsd	.LC1(%rip), %xmm1	#, tmp72
	addsd	%xmm1, %xmm0	# tmp72, D.10399
	call	floor	#
	cvttsd2si	%xmm0, %edx	# D.10399, D.10400
	movq	-32(%rbp), %rax	# min_cost, tmp73
	movl	%edx, (%rax)	# D.10400, *min_cost_10(D)
	.loc 1 223 0
	movl	$0, -4(%rbp)	#, b8
	jmp	.L2	#
.L4:
	.loc 1 225 0
	leaq	-12(%rbp), %rcx	#, tmp74
	movq	-24(%rbp), %rax	# lambda, tmp75
	movl	-4(%rbp), %edx	# b8, tmp76
	movq	%rcx, %rsi	# tmp74,
	movq	%rax, -40(%rbp)	# tmp75, %sfp
	movsd	-40(%rbp), %xmm0	# %sfp,
	movl	%edx, %edi	# tmp76,
	call	Mode_Decision_for_new_8x8IntraBlocks	#
	testl	%eax, %eax	# D.10400
	je	.L3	#,
	.loc 1 227 0
	movl	-4(%rbp), %eax	# b8, tmp77
	movl	$1, %edx	#, tmp78
	movl	%eax, %ecx	# tmp77, tmp84
	sall	%cl, %edx	# tmp84, D.10400
	movl	%edx, %eax	# D.10400, D.10400
	orl	%eax, -8(%rbp)	# D.10400, cbp
.L3:
	.loc 1 229 0
	movq	-32(%rbp), %rax	# min_cost, tmp79
	movl	(%rax), %edx	# *min_cost_10(D), D.10400
	movl	-12(%rbp), %eax	# cost8x8, cost8x8.0
	addl	%eax, %edx	# cost8x8.0, D.10400
	movq	-32(%rbp), %rax	# min_cost, tmp80
	movl	%edx, (%rax)	# D.10400, *min_cost_10(D)
	.loc 1 223 0
	addl	$1, -4(%rbp)	#, b8
.L2:
	.loc 1 223 0 is_stmt 0 discriminator 1
	cmpl	$3, -4(%rbp)	#, b8
	jle	.L4	#,
	.loc 1 232 0 is_stmt 1
	movl	-8(%rbp), %eax	# cbp, D.10400
	.loc 1 233 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	Mode_Decision_for_new_Intra8x8Macroblock, .-Mode_Decision_for_new_Intra8x8Macroblock
	.globl	Mode_Decision_for_new_8x8IntraBlocks
	.type	Mode_Decision_for_new_8x8IntraBlocks, @function
Mode_Decision_for_new_8x8IntraBlocks:
.LFB3:
	.loc 1 243 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$1168, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movl	%edi, -1156(%rbp)	# b8, b8
	movsd	%xmm0, -1168(%rbp)	# lambda, lambda
	movq	%rsi, -1176(%rbp)	# min_cost, min_cost
	.loc 1 244 0
	movl	$0, -1116(%rbp)	#, best_ipmode
	.loc 1 245 0
	movl	$0, -1092(%rbp)	#, nonzero
	.loc 1 247 0
	movl	$0, %eax	#, tmp1114
	movq	%rax, -992(%rbp)	# tmp1114, rdcost
	.loc 1 249 0
	movl	-1156(%rbp), %eax	# b8, tmp1115
	cltd
	shrl	$31, %edx	#, tmp1117
	addl	%edx, %eax	# tmp1117, tmp1118
	andl	$1, %eax	#, tmp1119
	subl	%edx, %eax	# tmp1117, tmp1120
	sall	$3, %eax	#, tmp1121
	movl	%eax, -1068(%rbp)	# tmp1121, block_x
	.loc 1 250 0
	movl	-1156(%rbp), %eax	# b8, tmp1122
	movl	%eax, %edx	# tmp1122, tmp1123
	shrl	$31, %edx	#, tmp1123
	addl	%edx, %eax	# tmp1123, tmp1124
	sarl	%eax	# tmp1125
	sall	$3, %eax	#, tmp1126
	movl	%eax, -1064(%rbp)	# tmp1126, block_y
	.loc 1 251 0
	movq	img(%rip), %rax	# img, img.1
	movl	152(%rax), %edx	# img.1_110->pix_x, D.10402
	movl	-1068(%rbp), %eax	# block_x, tmp1130
	addl	%edx, %eax	# D.10402, tmp1129
	movl	%eax, -1060(%rbp)	# tmp1129, pic_pix_x
	.loc 1 252 0
	movq	img(%rip), %rax	# img, img.2
	movl	156(%rax), %edx	# img.2_113->pix_y, D.10402
	movl	-1064(%rbp), %eax	# block_y, tmp1134
	addl	%edx, %eax	# D.10402, tmp1133
	movl	%eax, -1056(%rbp)	# tmp1133, pic_pix_y
	.loc 1 253 0
	movq	img(%rip), %rax	# img, img.3
	movl	168(%rax), %edx	# img.3_116->opix_x, D.10402
	movl	-1068(%rbp), %eax	# block_x, tmp1138
	addl	%edx, %eax	# D.10402, tmp1137
	movl	%eax, -1052(%rbp)	# tmp1137, pic_opix_x
	.loc 1 254 0
	movq	img(%rip), %rax	# img, img.4
	movl	172(%rax), %edx	# img.4_119->opix_y, D.10402
	movl	-1064(%rbp), %eax	# block_y, tmp1142
	addl	%edx, %eax	# D.10402, tmp1141
	movl	%eax, -1048(%rbp)	# tmp1141, pic_opix_y
	.loc 1 255 0
	movl	-1060(%rbp), %eax	# pic_pix_x, tmp1144
	leal	3(%rax), %edx	#, tmp1146
	testl	%eax, %eax	# tmp1145
	cmovs	%edx, %eax	# tmp1146,, tmp1145
	sarl	$2, %eax	#, tmp1147
	movl	%eax, -1044(%rbp)	# tmp1147, pic_block_x
	.loc 1 256 0
	movl	-1056(%rbp), %eax	# pic_pix_y, tmp1149
	leal	3(%rax), %edx	#, tmp1151
	testl	%eax, %eax	# tmp1150
	cmovs	%edx, %eax	# tmp1151,, tmp1150
	sarl	$2, %eax	#, tmp1152
	movl	%eax, -1040(%rbp)	# tmp1152, pic_block_y
	.loc 1 257 0
	movabsq	$5055640609639927018, %rax	#, tmp1153
	movq	%rax, -1000(%rbp)	# tmp1153, min_rdcost
	.loc 1 258 0
	movq	imgY_org(%rip), %rax	# imgY_org, tmp1154
	movq	%rax, -984(%rbp)	# tmp1154, imgY_orig
	.loc 1 273 0
	movq	img(%rip), %rax	# img, img.5
	movq	14168(%rax), %rdx	# img.5_126->mb_data, D.10403
	movq	img(%rip), %rax	# img, img.6
	movl	12(%rax), %eax	# img.6_128->current_mb_nr, D.10402
	cltq
	imulq	$632, %rax, %rax	#, D.10404, D.10404
	addq	%rdx, %rax	# D.10403, D.10403
	movl	524(%rax), %eax	# _132->c_ipred_mode, tmp1155
	movl	%eax, -1036(%rbp)	# tmp1155, c_ipmode
	.loc 1 276 0
	movl	-1064(%rbp), %eax	# block_y, tmp1156
	leal	3(%rax), %edx	#, tmp1158
	testl	%eax, %eax	# tmp1157
	cmovs	%edx, %eax	# tmp1158,, tmp1157
	sarl	$2, %eax	#, tmp1159
	movl	%eax, %edx	# tmp1159, D.10402
	movl	-1068(%rbp), %eax	# block_x, tmp1160
	leal	3(%rax), %ecx	#, tmp1162
	testl	%eax, %eax	# tmp1161
	cmovs	%ecx, %eax	# tmp1162,, tmp1161
	sarl	$2, %eax	#, tmp1163
	movl	%eax, %esi	# tmp1163, D.10402
	movq	img(%rip), %rax	# img, img.7
	movl	12(%rax), %eax	# img.7_136->current_mb_nr, D.10402
	leaq	-976(%rbp), %rcx	#, tmp1164
	movq	%rcx, %r9	# tmp1164,
	movl	$0, %r8d	#,
	movl	$-1, %ecx	#,
	movl	%eax, %edi	# D.10402,
	call	getLuma4x4Neighbour	#
	.loc 1 277 0
	movl	-1064(%rbp), %eax	# block_y, tmp1165
	leal	3(%rax), %edx	#, tmp1167
	testl	%eax, %eax	# tmp1166
	cmovs	%edx, %eax	# tmp1167,, tmp1166
	sarl	$2, %eax	#, tmp1168
	movl	%eax, %edx	# tmp1168, D.10402
	movl	-1068(%rbp), %eax	# block_x, tmp1169
	leal	3(%rax), %ecx	#, tmp1171
	testl	%eax, %eax	# tmp1170
	cmovs	%ecx, %eax	# tmp1171,, tmp1170
	sarl	$2, %eax	#, tmp1172
	movl	%eax, %esi	# tmp1172, D.10402
	movq	img(%rip), %rax	# img, img.8
	movl	12(%rax), %eax	# img.8_140->current_mb_nr, D.10402
	leaq	-944(%rbp), %rcx	#, tmp1173
	movq	%rcx, %r9	# tmp1173,
	movl	$-1, %r8d	#,
	movl	$0, %ecx	#,
	movl	%eax, %edi	# D.10402,
	call	getLuma4x4Neighbour	#
	.loc 1 279 0
	movq	input(%rip), %rax	# input, input.9
	movl	216(%rax), %eax	# input.9_142->UseConstrainedIntraPred, D.10402
	testl	%eax, %eax	# D.10402
	je	.L7	#,
	.loc 1 281 0
	movl	-944(%rbp), %eax	# top_block.available, D.10402
	testl	%eax, %eax	# D.10402
	je	.L8	#,
	.loc 1 281 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.11
	movq	71784(%rax), %rax	# img.11_145->intra_block, D.10405
	movl	-940(%rbp), %edx	# top_block.mb_addr, D.10402
	movslq	%edx, %rdx	# D.10402, D.10404
	salq	$2, %rdx	#, D.10404
	addq	%rdx, %rax	# D.10404, D.10405
	movl	(%rax), %eax	# *_150, iftmp.10
	jmp	.L9	#
.L8:
	.loc 1 281 0 discriminator 2
	movl	$0, %eax	#, iftmp.10
.L9:
	.loc 1 281 0 discriminator 3
	movl	%eax, -944(%rbp)	# iftmp.10, top_block.available
	.loc 1 282 0 is_stmt 1 discriminator 3
	movl	-976(%rbp), %eax	# left_block.available, D.10402
	testl	%eax, %eax	# D.10402
	je	.L10	#,
	.loc 1 282 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.13
	movq	71784(%rax), %rax	# img.13_154->intra_block, D.10405
	movl	-972(%rbp), %edx	# left_block.mb_addr, D.10402
	movslq	%edx, %rdx	# D.10402, D.10404
	salq	$2, %rdx	#, D.10404
	addq	%rdx, %rax	# D.10404, D.10405
	movl	(%rax), %eax	# *_159, iftmp.12
	jmp	.L11	#
.L10:
	.loc 1 282 0 discriminator 2
	movl	$0, %eax	#, iftmp.12
.L11:
	.loc 1 282 0 discriminator 3
	movl	%eax, -976(%rbp)	# iftmp.12, left_block.available
.L7:
	.loc 1 285 0 is_stmt 1
	movl	-1156(%rbp), %eax	# b8, b8.14
	addl	$1, %eax	#, D.10406
	cmpl	$2, %eax	#, D.10406
	jbe	.L12	#,
	.loc 1 286 0
	movl	-944(%rbp), %eax	# top_block.available, D.10402
	testl	%eax, %eax	# D.10402
	je	.L13	#,
	.loc 1 286 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.16
	movq	112(%rax), %rax	# img.16_165->ipredmode8x8, D.10407
	movl	-928(%rbp), %edx	# top_block.pos_x, D.10402
	movslq	%edx, %rdx	# D.10402, D.10404
	salq	$3, %rdx	#, D.10404
	addq	%rdx, %rax	# D.10404, D.10407
	movq	(%rax), %rax	# *_170, D.10405
	movl	-924(%rbp), %edx	# top_block.pos_y, D.10402
	movslq	%edx, %rdx	# D.10402, D.10404
	salq	$2, %rdx	#, D.10404
	addq	%rdx, %rax	# D.10404, D.10405
	movl	(%rax), %eax	# *_175, iftmp.15
	jmp	.L14	#
.L13:
	.loc 1 286 0 discriminator 2
	movl	$-1, %eax	#, iftmp.15
.L14:
	.loc 1 286 0 discriminator 1
	movl	%eax, -1088(%rbp)	# iftmp.15, upMode
	jmp	.L15	#
.L12:
	.loc 1 288 0 is_stmt 1
	movl	-944(%rbp), %eax	# top_block.available, D.10402
	testl	%eax, %eax	# D.10402
	je	.L16	#,
	.loc 1 288 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.18
	movq	104(%rax), %rax	# img.18_180->ipredmode, D.10407
	movl	-928(%rbp), %edx	# top_block.pos_x, D.10402
	movslq	%edx, %rdx	# D.10402, D.10404
	salq	$3, %rdx	#, D.10404
	addq	%rdx, %rax	# D.10404, D.10407
	movq	(%rax), %rax	# *_185, D.10405
	movl	-924(%rbp), %edx	# top_block.pos_y, D.10402
	movslq	%edx, %rdx	# D.10402, D.10404
	salq	$2, %rdx	#, D.10404
	addq	%rdx, %rax	# D.10404, D.10405
	movl	(%rax), %eax	# *_190, iftmp.17
	jmp	.L17	#
.L16:
	.loc 1 288 0 discriminator 2
	movl	$-1, %eax	#, iftmp.17
.L17:
	.loc 1 288 0 discriminator 3
	movl	%eax, -1088(%rbp)	# iftmp.17, upMode
.L15:
	.loc 1 289 0 is_stmt 1
	movl	-1156(%rbp), %eax	# b8, b8.19
	andl	$1, %eax	#, D.10406
	testl	%eax, %eax	# D.10406
	je	.L18	#,
	.loc 1 290 0
	movl	-976(%rbp), %eax	# left_block.available, D.10402
	testl	%eax, %eax	# D.10402
	je	.L19	#,
	.loc 1 290 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.21
	movq	112(%rax), %rax	# img.21_197->ipredmode8x8, D.10407
	movl	-960(%rbp), %edx	# left_block.pos_x, D.10402
	movslq	%edx, %rdx	# D.10402, D.10404
	salq	$3, %rdx	#, D.10404
	addq	%rdx, %rax	# D.10404, D.10407
	movq	(%rax), %rax	# *_202, D.10405
	movl	-956(%rbp), %edx	# left_block.pos_y, D.10402
	movslq	%edx, %rdx	# D.10402, D.10404
	salq	$2, %rdx	#, D.10404
	addq	%rdx, %rax	# D.10404, D.10405
	movl	(%rax), %eax	# *_207, iftmp.20
	jmp	.L20	#
.L19:
	.loc 1 290 0 discriminator 2
	movl	$-1, %eax	#, iftmp.20
.L20:
	movl	%eax, -1084(%rbp)	# iftmp.20, leftMode
	jmp	.L21	#
.L18:
	.loc 1 292 0 is_stmt 1
	movl	-976(%rbp), %eax	# left_block.available, D.10402
	testl	%eax, %eax	# D.10402
	je	.L22	#,
	.loc 1 292 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.23
	movq	104(%rax), %rax	# img.23_212->ipredmode, D.10407
	movl	-960(%rbp), %edx	# left_block.pos_x, D.10402
	movslq	%edx, %rdx	# D.10402, D.10404
	salq	$3, %rdx	#, D.10404
	addq	%rdx, %rax	# D.10404, D.10407
	movq	(%rax), %rax	# *_217, D.10405
	movl	-956(%rbp), %edx	# left_block.pos_y, D.10402
	movslq	%edx, %rdx	# D.10402, D.10404
	salq	$2, %rdx	#, D.10404
	addq	%rdx, %rax	# D.10404, D.10405
	movl	(%rax), %eax	# *_222, iftmp.22
	jmp	.L23	#
.L22:
	.loc 1 292 0 discriminator 2
	movl	$-1, %eax	#, iftmp.22
.L23:
	.loc 1 292 0 discriminator 3
	movl	%eax, -1084(%rbp)	# iftmp.22, leftMode
.L21:
	.loc 1 294 0 is_stmt 1
	cmpl	$0, -1088(%rbp)	#, upMode
	js	.L24	#,
	.loc 1 294 0 is_stmt 0 discriminator 1
	cmpl	$0, -1084(%rbp)	#, leftMode
	js	.L24	#,
	movl	-1088(%rbp), %eax	# upMode, tmp1174
	cmpl	%eax, -1084(%rbp)	# tmp1174, leftMode
	cmovle	-1084(%rbp), %eax	# leftMode,, iftmp.24
	jmp	.L25	#
.L24:
	.loc 1 294 0 discriminator 2
	movl	$2, %eax	#, iftmp.24
.L25:
	.loc 1 294 0 discriminator 3
	movl	%eax, -1032(%rbp)	# iftmp.24, mostProbableMode
	.loc 1 296 0 is_stmt 1 discriminator 3
	movq	-1176(%rbp), %rax	# min_cost, tmp1175
	movl	$2147483647, (%rax)	#, *min_cost_229(D)
	.loc 1 299 0 discriminator 3
	leaq	-1124(%rbp), %rdi	#, tmp1176
	leaq	-1128(%rbp), %rcx	#, tmp1177
	leaq	-1132(%rbp), %rdx	#, tmp1178
	movl	-1056(%rbp), %esi	# pic_pix_y, tmp1179
	movl	-1060(%rbp), %eax	# pic_pix_x, tmp1180
	movq	%rdi, %r8	# tmp1176,
	movl	%eax, %edi	# tmp1180,
	call	intrapred_luma8x8	#
	.loc 1 302 0 discriminator 3
	movl	$0, -1120(%rbp)	#, ipmode
	jmp	.L26	#
.L119:
	.loc 1 304 0
	cmpl	$2, -1120(%rbp)	#, ipmode
	je	.L27	#,
	.loc 1 304 0 is_stmt 0 discriminator 1
	cmpl	$0, -1120(%rbp)	#, ipmode
	je	.L28	#,
	.loc 1 305 0 is_stmt 1
	cmpl	$7, -1120(%rbp)	#, ipmode
	je	.L28	#,
	.loc 1 305 0 is_stmt 0 discriminator 2
	cmpl	$3, -1120(%rbp)	#, ipmode
	jne	.L29	#,
.L28:
	.loc 1 305 0 discriminator 1
	movl	-1128(%rbp), %eax	# up_available, up_available.25
	testl	%eax, %eax	# up_available.25
	jne	.L27	#,
.L29:
	cmpl	$1, -1120(%rbp)	#, ipmode
	je	.L30	#,
	.loc 1 306 0 is_stmt 1
	cmpl	$8, -1120(%rbp)	#, ipmode
	jne	.L31	#,
.L30:
	.loc 1 306 0 is_stmt 0 discriminator 1
	movl	-1132(%rbp), %eax	# left_available, left_available.26
	testl	%eax, %eax	# left_available.26
	jne	.L27	#,
.L31:
	.loc 1 306 0 discriminator 2
	movl	-1124(%rbp), %eax	# all_available, all_available.27
	testl	%eax, %eax	# all_available.27
	je	.L32	#,
.L27:
	.loc 1 309 0 is_stmt 1
	movq	input(%rip), %rax	# input, input.28
	movl	2464(%rax), %eax	# input.28_234->rdopt, D.10402
	testl	%eax, %eax	# D.10402
	jne	.L33	#,
	.loc 1 311 0
	movl	$0, -1108(%rbp)	#, j
	movl	-1108(%rbp), %eax	# j, tmp1181
	movl	%eax, -1104(%rbp)	# tmp1181, k
	jmp	.L34	#
.L37:
	.loc 1 312 0
	movl	$0, -1112(%rbp)	#, i
	jmp	.L35	#
.L36:
	.loc 1 314 0 discriminator 2
	movl	-1108(%rbp), %eax	# j, tmp1182
	movl	-1048(%rbp), %edx	# pic_opix_y, tmp1183
	addl	%edx, %eax	# tmp1183, D.10402
	cltq
	leaq	0(,%rax,8), %rdx	#, D.10404
	movq	-984(%rbp), %rax	# imgY_orig, tmp1184
	addq	%rdx, %rax	# D.10404, D.10408
	movq	(%rax), %rax	# *_242, D.10409
	movl	-1112(%rbp), %edx	# i, tmp1185
	movl	-1052(%rbp), %ecx	# pic_opix_x, tmp1186
	addl	%ecx, %edx	# tmp1186, D.10402
	movslq	%edx, %rdx	# D.10402, D.10404
	addq	%rdx, %rdx	# D.10404
	addq	%rdx, %rax	# D.10404, D.10409
	movzwl	(%rax), %eax	# *_247, D.10410
	movzwl	%ax, %edx	# D.10410, D.10402
	movq	img(%rip), %rax	# img, img.29
	movl	-1112(%rbp), %ecx	# i, tmp1188
	movslq	%ecx, %rcx	# tmp1188, tmp1187
	movl	-1120(%rbp), %esi	# ipmode, tmp1190
	movslq	%esi, %rdi	# tmp1190, tmp1189
	movl	-1108(%rbp), %esi	# j, tmp1192
	movslq	%esi, %rsi	# tmp1192, tmp1191
	salq	$3, %rdi	#, tmp1193
	addq	%rdi, %rsi	# tmp1193, tmp1194
	salq	$3, %rsi	#, tmp1195
	addq	%rsi, %rcx	# tmp1195, tmp1196
	addq	$3672, %rcx	#, tmp1197
	movzwl	8(%rax,%rcx,2), %eax	# img.29_250->mprr_3, D.10410
	movzwl	%ax, %eax	# D.10410, D.10402
	subl	%eax, %edx	# D.10402, D.10402
	movl	-1104(%rbp), %eax	# k, tmp1199
	cltq
	movl	%edx, -784(%rbp,%rax,4)	# D.10402, diff
	.loc 1 312 0 discriminator 2
	addl	$1, -1112(%rbp)	#, i
	addl	$1, -1104(%rbp)	#, k
.L35:
	.loc 1 312 0 is_stmt 0 discriminator 1
	cmpl	$7, -1112(%rbp)	#, i
	jle	.L36	#,
	.loc 1 311 0 is_stmt 1
	addl	$1, -1108(%rbp)	#, j
.L34:
	.loc 1 311 0 is_stmt 0 discriminator 1
	cmpl	$7, -1108(%rbp)	#, j
	jle	.L37	#,
	.loc 1 316 0 is_stmt 1
	movl	-1120(%rbp), %eax	# ipmode, tmp1200
	cmpl	-1032(%rbp), %eax	# mostProbableMode, tmp1200
	je	.L38	#,
	.loc 1 316 0 is_stmt 0 discriminator 1
	movsd	-1168(%rbp), %xmm1	# lambda, tmp1201
	movsd	.LC4(%rip), %xmm0	#, tmp1202
	mulsd	%xmm1, %xmm0	# tmp1201, D.10411
	call	floor	#
	cvttsd2si	%xmm0, %eax	# D.10411, iftmp.30
	jmp	.L39	#
.L38:
	.loc 1 316 0 discriminator 2
	movl	$0, %eax	#, iftmp.30
.L39:
	.loc 1 316 0 discriminator 3
	movl	%eax, -1028(%rbp)	# iftmp.30, cost
	.loc 1 317 0 is_stmt 1 discriminator 3
	movq	input(%rip), %rax	# input, input.31
	movl	24(%rax), %edx	# input.31_263->hadamard, D.10402
	leaq	-784(%rbp), %rax	#, tmp1203
	movl	%edx, %esi	# D.10402,
	movq	%rax, %rdi	# tmp1203,
	call	SATD8X8	#
	addl	%eax, -1028(%rbp)	# D.10402, cost
	.loc 1 318 0 discriminator 3
	movq	-1176(%rbp), %rax	# min_cost, tmp1204
	movl	(%rax), %eax	# *min_cost_229(D), D.10402
	cmpl	-1028(%rbp), %eax	# cost, D.10402
	jle	.L32	#,
	.loc 1 320 0
	movl	-1120(%rbp), %eax	# ipmode, tmp1205
	movl	%eax, -1116(%rbp)	# tmp1205, best_ipmode
	.loc 1 321 0
	movq	-1176(%rbp), %rax	# min_cost, tmp1206
	movl	-1028(%rbp), %edx	# cost, tmp1207
	movl	%edx, (%rax)	# tmp1207, *min_cost_229(D)
	jmp	.L32	#
.L33:
	.loc 1 327 0
	movq	img(%rip), %rax	# img, img.32
	movl	72724(%rax), %eax	# img.32_269->residue_transform_flag, D.10402
	testl	%eax, %eax	# D.10402
	jne	.L41	#,
	.loc 1 330 0
	movl	$0, -1108(%rbp)	#, j
	jmp	.L42	#
.L45:
	.loc 1 331 0
	movl	$0, -1112(%rbp)	#, i
	jmp	.L43	#
.L44:
	.loc 1 333 0 discriminator 2
	movq	img(%rip), %rax	# img, img.33
	movl	-1112(%rbp), %edx	# i, tmp1208
	movl	-1068(%rbp), %ecx	# block_x, tmp1209
	leal	(%rcx,%rdx), %r8d	#, D.10402
	movl	-1108(%rbp), %edx	# j, tmp1210
	movl	-1064(%rbp), %ecx	# block_y, tmp1211
	leal	(%rcx,%rdx), %r9d	#, D.10402
	movq	img(%rip), %rdx	# img, img.34
	movl	-1112(%rbp), %ecx	# i, tmp1213
	movslq	%ecx, %rcx	# tmp1213, tmp1212
	movl	-1120(%rbp), %esi	# ipmode, tmp1215
	movslq	%esi, %rdi	# tmp1215, tmp1214
	movl	-1108(%rbp), %esi	# j, tmp1217
	movslq	%esi, %rsi	# tmp1217, tmp1216
	salq	$3, %rdi	#, tmp1218
	addq	%rdi, %rsi	# tmp1218, tmp1219
	salq	$3, %rsi	#, tmp1220
	addq	%rsi, %rcx	# tmp1220, tmp1221
	addq	$3672, %rcx	#, tmp1222
	movzwl	8(%rdx,%rcx,2), %edx	# img.34_276->mprr_3, D.10410
	movslq	%r9d, %rcx	# D.10402, tmp1223
	movslq	%r8d, %rsi	# D.10402, tmp1224
	salq	$4, %rsi	#, tmp1225
	addq	%rsi, %rcx	# tmp1225, tmp1226
	addq	$6296, %rcx	#, tmp1227
	movw	%dx, 8(%rax,%rcx,2)	# D.10410, img.33_273->mpr
	.loc 1 334 0 discriminator 2
	movq	img(%rip), %rax	# img, img.35
	movl	-1108(%rbp), %edx	# j, tmp1228
	movl	-1048(%rbp), %ecx	# pic_opix_y, tmp1229
	addl	%ecx, %edx	# tmp1229, D.10402
	movslq	%edx, %rdx	# D.10402, D.10404
	leaq	0(,%rdx,8), %rcx	#, D.10404
	movq	-984(%rbp), %rdx	# imgY_orig, tmp1230
	addq	%rcx, %rdx	# D.10404, D.10408
	movq	(%rdx), %rdx	# *_282, D.10409
	movl	-1112(%rbp), %ecx	# i, tmp1231
	movl	-1052(%rbp), %esi	# pic_opix_x, tmp1232
	addl	%esi, %ecx	# tmp1232, D.10402
	movslq	%ecx, %rcx	# D.10402, D.10404
	addq	%rcx, %rcx	# D.10404
	addq	%rcx, %rdx	# D.10404, D.10409
	movzwl	(%rdx), %edx	# *_287, D.10410
	movzwl	%dx, %ecx	# D.10410, D.10402
	movq	img(%rip), %rdx	# img, img.36
	movl	-1112(%rbp), %esi	# i, tmp1234
	movslq	%esi, %rsi	# tmp1234, tmp1233
	movl	-1120(%rbp), %edi	# ipmode, tmp1236
	movslq	%edi, %r8	# tmp1236, tmp1235
	movl	-1108(%rbp), %edi	# j, tmp1238
	movslq	%edi, %rdi	# tmp1238, tmp1237
	salq	$3, %r8	#, tmp1239
	addq	%r8, %rdi	# tmp1239, tmp1240
	salq	$3, %rdi	#, tmp1241
	addq	%rdi, %rsi	# tmp1241, tmp1242
	addq	$3672, %rsi	#, tmp1243
	movzwl	8(%rdx,%rsi,2), %edx	# img.36_290->mprr_3, D.10410
	movzwl	%dx, %edx	# D.10410, D.10402
	subl	%edx, %ecx	# D.10402, D.10402
	movl	-1108(%rbp), %edx	# j, tmp1245
	movslq	%edx, %rdx	# tmp1245, tmp1244
	movl	-1112(%rbp), %esi	# i, tmp1247
	movslq	%esi, %rsi	# tmp1247, tmp1246
	salq	$4, %rsi	#, tmp1248
	addq	%rsi, %rdx	# tmp1248, tmp1249
	addq	$3276, %rdx	#, tmp1250
	movl	%ecx, 8(%rax,%rdx,4)	# D.10402, img.35_278->m7
	.loc 1 331 0 discriminator 2
	addl	$1, -1112(%rbp)	#, i
.L43:
	.loc 1 331 0 is_stmt 0 discriminator 1
	cmpl	$7, -1112(%rbp)	#, i
	jle	.L44	#,
	.loc 1 330 0 is_stmt 1
	addl	$1, -1108(%rbp)	#, j
.L42:
	.loc 1 330 0 is_stmt 0 discriminator 1
	cmpl	$7, -1108(%rbp)	#, j
	jle	.L45	#,
	.loc 1 338 0 is_stmt 1
	movl	$0, %eax	#,
	call	store_coding_state_cs_cm	#
	.loc 1 341 0
	movl	-1032(%rbp), %ecx	# mostProbableMode, tmp1251
	movq	-1000(%rbp), %rdx	# min_rdcost, tmp1252
	movq	-1168(%rbp), %rax	# lambda, tmp1253
	movl	-1120(%rbp), %r8d	# ipmode, tmp1254
	movl	-1156(%rbp), %esi	# b8, tmp1255
	leaq	-1136(%rbp), %rdi	#, tmp1256
	movq	%rdx, -1184(%rbp)	# tmp1252, %sfp
	movsd	-1184(%rbp), %xmm1	# %sfp,
	movq	%rax, -1184(%rbp)	# tmp1253, %sfp
	movsd	-1184(%rbp), %xmm0	# %sfp,
	movl	%r8d, %edx	# tmp1254,
	call	RDCost_for_8x8IntraBlocks	#
	movsd	%xmm0, -1184(%rbp)	#, %sfp
	movq	-1184(%rbp), %rax	# %sfp, tmp1257
	movq	%rax, -992(%rbp)	# tmp1257, rdcost
	movsd	-1000(%rbp), %xmm0	# min_rdcost, tmp1258
	ucomisd	-992(%rbp), %xmm0	# rdcost, tmp1258
	jbe	.L46	#,
	.loc 1 344 0
	movl	$0, -1108(%rbp)	#, j
	jmp	.L48	#
.L53:
	.loc 1 345 0
	movl	$0, -1112(%rbp)	#, i
	jmp	.L49	#
.L52:
	.loc 1 346 0
	movl	$0, -1104(%rbp)	#, k
	jmp	.L50	#
.L51:
	.loc 1 347 0 discriminator 2
	movq	cofAC8x8(%rip), %rax	# cofAC8x8, cofAC8x8.37
	movl	-1156(%rbp), %edx	# b8, tmp1259
	movslq	%edx, %rdx	# tmp1259, D.10404
	salq	$3, %rdx	#, D.10404
	addq	%rdx, %rax	# D.10404, D.10412
	movq	(%rax), %rax	# *_303, D.10413
	movl	-1104(%rbp), %edx	# k, tmp1260
	movslq	%edx, %rdx	# tmp1260, D.10404
	salq	$3, %rdx	#, D.10404
	addq	%rdx, %rax	# D.10404, D.10413
	movq	(%rax), %rax	# *_307, D.10407
	movl	-1108(%rbp), %edx	# j, tmp1261
	movslq	%edx, %rdx	# tmp1261, D.10404
	salq	$3, %rdx	#, D.10404
	addq	%rdx, %rax	# D.10404, D.10407
	movq	(%rax), %rax	# *_311, D.10405
	movl	-1112(%rbp), %edx	# i, tmp1262
	movslq	%edx, %rdx	# tmp1262, D.10404
	salq	$2, %rdx	#, D.10404
	addq	%rax, %rdx	# D.10405, D.10405
	movq	img(%rip), %rax	# img, img.38
	movq	14136(%rax), %rax	# img.38_316->cofAC, D.10412
	movl	-1156(%rbp), %ecx	# b8, tmp1263
	movslq	%ecx, %rcx	# tmp1263, D.10404
	salq	$3, %rcx	#, D.10404
	addq	%rcx, %rax	# D.10404, D.10412
	movq	(%rax), %rax	# *_320, D.10413
	movl	-1104(%rbp), %ecx	# k, tmp1264
	movslq	%ecx, %rcx	# tmp1264, D.10404
	salq	$3, %rcx	#, D.10404
	addq	%rcx, %rax	# D.10404, D.10413
	movq	(%rax), %rax	# *_324, D.10407
	movl	-1108(%rbp), %ecx	# j, tmp1265
	movslq	%ecx, %rcx	# tmp1265, D.10404
	salq	$3, %rcx	#, D.10404
	addq	%rcx, %rax	# D.10404, D.10407
	movq	(%rax), %rax	# *_328, D.10405
	movl	-1112(%rbp), %ecx	# i, tmp1266
	movslq	%ecx, %rcx	# tmp1266, D.10404
	salq	$2, %rcx	#, D.10404
	addq	%rcx, %rax	# D.10404, D.10405
	movl	(%rax), %eax	# *_332, D.10402
	movl	%eax, (%rdx)	# D.10402, *_315
	.loc 1 346 0 discriminator 2
	addl	$1, -1104(%rbp)	#, k
.L50:
	.loc 1 346 0 is_stmt 0 discriminator 1
	cmpl	$3, -1104(%rbp)	#, k
	jle	.L51	#,
	.loc 1 345 0 is_stmt 1
	addl	$1, -1112(%rbp)	#, i
.L49:
	.loc 1 345 0 is_stmt 0 discriminator 1
	cmpl	$64, -1112(%rbp)	#, i
	jle	.L52	#,
	.loc 1 344 0 is_stmt 1
	addl	$1, -1108(%rbp)	#, j
.L48:
	.loc 1 344 0 is_stmt 0 discriminator 1
	cmpl	$1, -1108(%rbp)	#, j
	jle	.L53	#,
	.loc 1 350 0 is_stmt 1
	movl	$0, -1096(%rbp)	#, y
	jmp	.L54	#
.L57:
	.loc 1 351 0
	movl	$0, -1100(%rbp)	#, x
	jmp	.L55	#
.L56:
	.loc 1 352 0 discriminator 2
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.39
	movq	6424(%rax), %rax	# enc_picture.39_339->imgY, D.10408
	movl	-1096(%rbp), %edx	# y, tmp1267
	movl	-1056(%rbp), %ecx	# pic_pix_y, tmp1268
	addl	%ecx, %edx	# tmp1268, D.10402
	movslq	%edx, %rdx	# D.10402, D.10404
	salq	$3, %rdx	#, D.10404
	addq	%rdx, %rax	# D.10404, D.10408
	movq	(%rax), %rax	# *_344, D.10409
	movl	-1100(%rbp), %edx	# x, tmp1269
	movl	-1060(%rbp), %ecx	# pic_pix_x, tmp1270
	addl	%ecx, %edx	# tmp1270, D.10402
	movslq	%edx, %rdx	# D.10402, D.10404
	addq	%rdx, %rdx	# D.10404
	addq	%rdx, %rax	# D.10404, D.10409
	movzwl	(%rax), %eax	# *_349, D.10410
	movl	-1100(%rbp), %edx	# x, tmp1272
	movslq	%edx, %rdx	# tmp1272, tmp1271
	movl	-1096(%rbp), %ecx	# y, tmp1274
	movslq	%ecx, %rcx	# tmp1274, tmp1273
	salq	$3, %rcx	#, tmp1275
	addq	%rcx, %rdx	# tmp1275, tmp1276
	movw	%ax, -912(%rbp,%rdx,2)	# D.10410, rec8x8
	.loc 1 351 0 discriminator 2
	addl	$1, -1100(%rbp)	#, x
.L55:
	.loc 1 351 0 is_stmt 0 discriminator 1
	cmpl	$7, -1100(%rbp)	#, x
	jle	.L56	#,
	.loc 1 350 0 is_stmt 1
	addl	$1, -1096(%rbp)	#, y
.L54:
	.loc 1 350 0 is_stmt 0 discriminator 1
	cmpl	$7, -1096(%rbp)	#, y
	jle	.L57	#,
	.loc 1 355 0 is_stmt 1
	movl	-1136(%rbp), %eax	# c_nz, tmp1277
	movl	%eax, -1092(%rbp)	# tmp1277, nonzero
	.loc 1 358 0
	movq	-992(%rbp), %rax	# rdcost, tmp1278
	movq	%rax, -1000(%rbp)	# tmp1278, min_rdcost
	.loc 1 359 0
	movl	-1120(%rbp), %eax	# ipmode, tmp1279
	movl	%eax, -1116(%rbp)	# tmp1279, best_ipmode
.L46:
	.loc 1 361 0
	movl	$0, %eax	#,
	call	reset_coding_state_cs_cm	#
	jmp	.L32	#
.L41:
	.loc 1 366 0
	movl	$0, -1108(%rbp)	#, j
	jmp	.L58	#
.L61:
	.loc 1 367 0
	movl	$0, -1112(%rbp)	#, i
	jmp	.L59	#
.L60:
	.loc 1 369 0 discriminator 2
	movq	imgUV_org(%rip), %rax	# imgUV_org, imgUV_org.40
	movq	(%rax), %rax	# *imgUV_org.40_358, D.10408
	movl	-1108(%rbp), %edx	# j, tmp1280
	movl	-1048(%rbp), %ecx	# pic_opix_y, tmp1281
	addl	%ecx, %edx	# tmp1281, D.10402
	movslq	%edx, %rdx	# D.10402, D.10404
	salq	$3, %rdx	#, D.10404
	addq	%rdx, %rax	# D.10404, D.10408
	movq	(%rax), %rax	# *_363, D.10409
	movl	-1112(%rbp), %edx	# i, tmp1282
	movl	-1052(%rbp), %ecx	# pic_opix_x, tmp1283
	addl	%ecx, %edx	# tmp1283, D.10402
	movslq	%edx, %rdx	# D.10402, D.10404
	addq	%rdx, %rdx	# D.10404
	addq	%rdx, %rax	# D.10404, D.10409
	movzwl	(%rax), %eax	# *_368, D.10410
	movzwl	%ax, %edx	# D.10410, D.10402
	movq	img(%rip), %rax	# img, img.41
	movl	-1112(%rbp), %ecx	# i, tmp1284
	movl	-1068(%rbp), %esi	# block_x, tmp1285
	leal	(%rsi,%rcx), %r8d	#, D.10402
	movl	-1108(%rbp), %ecx	# j, tmp1286
	movl	-1064(%rbp), %esi	# block_y, tmp1287
	addl	%esi, %ecx	# tmp1287, D.10402
	movslq	%ecx, %rcx	# D.10402, tmp1288
	movl	-1036(%rbp), %esi	# c_ipmode, tmp1290
	movslq	%esi, %rdi	# tmp1290, tmp1289
	movslq	%r8d, %rsi	# D.10402, tmp1291
	salq	$4, %rdi	#, tmp1292
	addq	%rdi, %rsi	# tmp1292, tmp1293
	salq	$4, %rsi	#, tmp1294
	addq	%rsi, %rcx	# tmp1294, tmp1295
	addq	$4248, %rcx	#, tmp1296
	movzwl	8(%rax,%rcx,2), %eax	# img.41_371->mprr_c, D.10410
	movzwl	%ax, %eax	# D.10410, D.10402
	subl	%eax, %edx	# D.10402, tmp1297
	movl	%edx, %eax	# tmp1297, tmp1297
	movl	%eax, -1024(%rbp)	# tmp1297, residue_B
	.loc 1 370 0 discriminator 2
	movq	imgY_org(%rip), %rax	# imgY_org, imgY_org.42
	movl	-1108(%rbp), %edx	# j, tmp1298
	movl	-1048(%rbp), %ecx	# pic_opix_y, tmp1299
	addl	%ecx, %edx	# tmp1299, D.10402
	movslq	%edx, %rdx	# D.10402, D.10404
	salq	$3, %rdx	#, D.10404
	addq	%rdx, %rax	# D.10404, D.10408
	movq	(%rax), %rax	# *_381, D.10409
	movl	-1112(%rbp), %edx	# i, tmp1300
	movl	-1052(%rbp), %ecx	# pic_opix_x, tmp1301
	addl	%ecx, %edx	# tmp1301, D.10402
	movslq	%edx, %rdx	# D.10402, D.10404
	addq	%rdx, %rdx	# D.10404
	addq	%rdx, %rax	# D.10404, D.10409
	movzwl	(%rax), %eax	# *_386, D.10410
	movzwl	%ax, %edx	# D.10410, D.10402
	movq	img(%rip), %rax	# img, img.43
	movl	-1112(%rbp), %ecx	# i, tmp1303
	movslq	%ecx, %rcx	# tmp1303, tmp1302
	movl	-1120(%rbp), %esi	# ipmode, tmp1305
	movslq	%esi, %rdi	# tmp1305, tmp1304
	movl	-1108(%rbp), %esi	# j, tmp1307
	movslq	%esi, %rsi	# tmp1307, tmp1306
	salq	$3, %rdi	#, tmp1308
	addq	%rdi, %rsi	# tmp1308, tmp1309
	salq	$3, %rsi	#, tmp1310
	addq	%rsi, %rcx	# tmp1310, tmp1311
	addq	$3672, %rcx	#, tmp1312
	movzwl	8(%rax,%rcx,2), %eax	# img.43_389->mprr_3, D.10410
	movzwl	%ax, %eax	# D.10410, D.10402
	subl	%eax, %edx	# D.10402, tmp1313
	movl	%edx, %eax	# tmp1313, tmp1313
	movl	%eax, -1020(%rbp)	# tmp1313, residue_G
	.loc 1 371 0 discriminator 2
	movq	imgUV_org(%rip), %rax	# imgUV_org, imgUV_org.44
	addq	$8, %rax	#, D.10414
	movq	(%rax), %rax	# *_394, D.10408
	movl	-1108(%rbp), %edx	# j, tmp1314
	movl	-1048(%rbp), %ecx	# pic_opix_y, tmp1315
	addl	%ecx, %edx	# tmp1315, D.10402
	movslq	%edx, %rdx	# D.10402, D.10404
	salq	$3, %rdx	#, D.10404
	addq	%rdx, %rax	# D.10404, D.10408
	movq	(%rax), %rax	# *_399, D.10409
	movl	-1112(%rbp), %edx	# i, tmp1316
	movl	-1052(%rbp), %ecx	# pic_opix_x, tmp1317
	addl	%ecx, %edx	# tmp1317, D.10402
	movslq	%edx, %rdx	# D.10402, D.10404
	addq	%rdx, %rdx	# D.10404
	addq	%rdx, %rax	# D.10404, D.10409
	movzwl	(%rax), %eax	# *_404, D.10410
	movzwl	%ax, %edx	# D.10410, D.10402
	movq	img(%rip), %rax	# img, img.45
	movl	-1112(%rbp), %ecx	# i, tmp1318
	movl	-1068(%rbp), %esi	# block_x, tmp1319
	leal	(%rsi,%rcx), %r8d	#, D.10402
	movl	-1108(%rbp), %ecx	# j, tmp1320
	movl	-1064(%rbp), %esi	# block_y, tmp1321
	addl	%esi, %ecx	# tmp1321, D.10402
	movslq	%ecx, %rcx	# D.10402, tmp1322
	movl	-1036(%rbp), %esi	# c_ipmode, tmp1324
	movslq	%esi, %rdi	# tmp1324, tmp1323
	movslq	%r8d, %rsi	# D.10402, tmp1325
	salq	$4, %rdi	#, tmp1326
	addq	%rdi, %rsi	# tmp1326, tmp1327
	salq	$4, %rsi	#, tmp1328
	addq	%rsi, %rcx	# tmp1328, tmp1329
	addq	$5272, %rcx	#, tmp1330
	movzwl	8(%rax,%rcx,2), %eax	# img.45_407->mprr_c, D.10410
	movzwl	%ax, %eax	# D.10410, D.10402
	subl	%eax, %edx	# D.10402, tmp1331
	movl	%edx, %eax	# tmp1331, tmp1331
	movl	%eax, -1016(%rbp)	# tmp1331, residue_R
	.loc 1 374 0 discriminator 2
	movl	-1024(%rbp), %eax	# residue_B, tmp1332
	movl	-1016(%rbp), %edx	# residue_R, tmp1333
	subl	%eax, %edx	# tmp1332, D.10402
	movl	-1108(%rbp), %eax	# j, tmp1335
	cltq
	movl	-1112(%rbp), %ecx	# i, tmp1337
	movslq	%ecx, %rcx	# tmp1337, tmp1336
	salq	$4, %rcx	#, tmp1338
	addq	%rcx, %rax	# tmp1338, tmp1339
	movl	%edx, resTrans_R(,%rax,4)	# D.10402, resTrans_R
	.loc 1 375 0 discriminator 2
	movl	-1108(%rbp), %eax	# j, tmp1341
	cltq
	movl	-1112(%rbp), %edx	# i, tmp1343
	movslq	%edx, %rdx	# tmp1343, tmp1342
	salq	$4, %rdx	#, tmp1344
	addq	%rdx, %rax	# tmp1344, tmp1345
	movl	resTrans_R(,%rax,4), %eax	# resTrans_R, D.10402
	sarl	%eax	# D.10402
	movl	%eax, %edx	# D.10402, D.10402
	movl	-1024(%rbp), %eax	# residue_B, tmp1349
	addl	%edx, %eax	# D.10402, tmp1348
	movl	%eax, -1012(%rbp)	# tmp1348, temp
	.loc 1 376 0 discriminator 2
	movl	-1012(%rbp), %eax	# temp, tmp1350
	movl	-1020(%rbp), %edx	# residue_G, tmp1351
	subl	%eax, %edx	# tmp1350, D.10402
	movl	-1108(%rbp), %eax	# j, tmp1353
	cltq
	movl	-1112(%rbp), %ecx	# i, tmp1355
	movslq	%ecx, %rcx	# tmp1355, tmp1354
	salq	$4, %rcx	#, tmp1356
	addq	%rcx, %rax	# tmp1356, tmp1357
	movl	%edx, resTrans_B(,%rax,4)	# D.10402, resTrans_B
	.loc 1 377 0 discriminator 2
	movl	-1108(%rbp), %eax	# j, tmp1359
	cltq
	movl	-1112(%rbp), %edx	# i, tmp1361
	movslq	%edx, %rdx	# tmp1361, tmp1360
	salq	$4, %rdx	#, tmp1362
	addq	%rdx, %rax	# tmp1362, tmp1363
	movl	resTrans_B(,%rax,4), %eax	# resTrans_B, D.10402
	sarl	%eax	# D.10402
	movl	%eax, %edx	# D.10402, D.10402
	movl	-1012(%rbp), %eax	# temp, tmp1364
	addl	%eax, %edx	# tmp1364, D.10402
	movl	-1108(%rbp), %eax	# j, tmp1366
	cltq
	movl	-1112(%rbp), %ecx	# i, tmp1368
	movslq	%ecx, %rcx	# tmp1368, tmp1367
	salq	$4, %rcx	#, tmp1369
	addq	%rcx, %rax	# tmp1369, tmp1370
	movl	%edx, resTrans_G(,%rax,4)	# D.10402, resTrans_G
	.loc 1 367 0 discriminator 2
	addl	$1, -1112(%rbp)	#, i
.L59:
	.loc 1 367 0 is_stmt 0 discriminator 1
	cmpl	$7, -1112(%rbp)	#, i
	jle	.L60	#,
	.loc 1 366 0 is_stmt 1
	addl	$1, -1108(%rbp)	#, j
.L58:
	.loc 1 366 0 is_stmt 0 discriminator 1
	cmpl	$7, -1108(%rbp)	#, j
	jle	.L61	#,
	.loc 1 380 0 is_stmt 1
	movl	$0, -1108(%rbp)	#, j
	jmp	.L62	#
.L65:
	.loc 1 381 0
	movl	$0, -1112(%rbp)	#, i
	jmp	.L63	#
.L64:
	.loc 1 383 0 discriminator 2
	movq	img(%rip), %rax	# img, img.46
	movl	-1108(%rbp), %edx	# j, tmp1372
	movslq	%edx, %rdx	# tmp1372, tmp1371
	movl	-1112(%rbp), %ecx	# i, tmp1374
	movslq	%ecx, %rcx	# tmp1374, tmp1373
	salq	$4, %rcx	#, tmp1375
	addq	%rcx, %rdx	# tmp1375, tmp1376
	movl	resTrans_G(,%rdx,4), %edx	# resTrans_G, D.10402
	movl	-1108(%rbp), %ecx	# j, tmp1378
	movslq	%ecx, %rcx	# tmp1378, tmp1377
	movl	-1112(%rbp), %esi	# i, tmp1380
	movslq	%esi, %rsi	# tmp1380, tmp1379
	salq	$4, %rsi	#, tmp1381
	addq	%rsi, %rcx	# tmp1381, tmp1382
	addq	$3276, %rcx	#, tmp1383
	movl	%edx, 8(%rax,%rcx,4)	# D.10402, img.46_425->m7
	.loc 1 381 0 discriminator 2
	addl	$1, -1112(%rbp)	#, i
.L63:
	.loc 1 381 0 is_stmt 0 discriminator 1
	cmpl	$7, -1112(%rbp)	#, i
	jle	.L64	#,
	.loc 1 380 0 is_stmt 1
	addl	$1, -1108(%rbp)	#, j
.L62:
	.loc 1 380 0 is_stmt 0 discriminator 1
	cmpl	$7, -1108(%rbp)	#, j
	jle	.L65	#,
	.loc 1 386 0 is_stmt 1
	movl	$0, %eax	#,
	call	store_coding_state_cs_cm	#
	.loc 1 387 0
	movl	-1032(%rbp), %ecx	# mostProbableMode, tmp1384
	movq	-1000(%rbp), %rdx	# min_rdcost, tmp1385
	movq	-1168(%rbp), %rax	# lambda, tmp1386
	movl	-1120(%rbp), %r8d	# ipmode, tmp1387
	movl	-1156(%rbp), %esi	# b8, tmp1388
	leaq	-1136(%rbp), %rdi	#, tmp1389
	movq	%rdx, -1184(%rbp)	# tmp1385, %sfp
	movsd	-1184(%rbp), %xmm1	# %sfp,
	movq	%rax, -1184(%rbp)	# tmp1386, %sfp
	movsd	-1184(%rbp), %xmm0	# %sfp,
	movl	%r8d, %edx	# tmp1387,
	call	RDCost_for_8x8IntraBlocks	#
	cvttsd2si	%xmm0, %eax	# D.10411, tmp1390
	movl	%eax, -1080(%rbp)	# tmp1390, rate
	.loc 1 388 0
	movl	$0, %eax	#,
	call	reset_coding_state_cs_cm	#
	.loc 1 390 0
	movl	$0, -1108(%rbp)	#, j
	jmp	.L66	#
.L69:
	.loc 1 391 0
	movl	$0, -1112(%rbp)	#, i
	jmp	.L67	#
.L68:
	.loc 1 393 0 discriminator 2
	movq	img(%rip), %rax	# img, img.47
	movl	-1108(%rbp), %edx	# j, tmp1392
	movslq	%edx, %rdx	# tmp1392, tmp1391
	movl	-1112(%rbp), %ecx	# i, tmp1394
	movslq	%ecx, %rcx	# tmp1394, tmp1393
	salq	$4, %rcx	#, tmp1395
	addq	%rcx, %rdx	# tmp1395, tmp1396
	addq	$3276, %rdx	#, tmp1397
	movl	8(%rax,%rdx,4), %eax	# img.47_433->m7, D.10402
	movl	-1108(%rbp), %edx	# j, tmp1399
	movslq	%edx, %rdx	# tmp1399, tmp1398
	movl	-1112(%rbp), %ecx	# i, tmp1401
	movslq	%ecx, %rcx	# tmp1401, tmp1400
	salq	$4, %rcx	#, tmp1402
	addq	%rcx, %rdx	# tmp1402, tmp1403
	movl	%eax, rec_resG(,%rdx,4)	# D.10402, rec_resG
	.loc 1 391 0 discriminator 2
	addl	$1, -1112(%rbp)	#, i
.L67:
	.loc 1 391 0 is_stmt 0 discriminator 1
	cmpl	$7, -1112(%rbp)	#, i
	jle	.L68	#,
	.loc 1 390 0 is_stmt 1
	addl	$1, -1108(%rbp)	#, j
.L66:
	.loc 1 390 0 is_stmt 0 discriminator 1
	cmpl	$7, -1108(%rbp)	#, j
	jle	.L69	#,
	.loc 1 396 0 is_stmt 1
	movl	$0, %eax	#,
	call	store_coding_state_cs_cm	#
	.loc 1 397 0
	movl	$0, -1072(%rbp)	#, b4
	jmp	.L70	#
.L83:
	.loc 1 400 0
	movl	-1072(%rbp), %eax	# b4, tmp1404
	cltd
	shrl	$31, %edx	#, tmp1406
	addl	%edx, %eax	# tmp1406, tmp1407
	andl	$1, %eax	#, tmp1408
	subl	%edx, %eax	# tmp1406, tmp1409
	sall	$2, %eax	#, tmp1410
	movl	%eax, -1008(%rbp)	# tmp1410, block4x4_x
	.loc 1 401 0
	movl	-1072(%rbp), %eax	# b4, tmp1411
	movl	%eax, %edx	# tmp1411, tmp1412
	shrl	$31, %edx	#, tmp1412
	addl	%edx, %eax	# tmp1412, tmp1413
	sarl	%eax	# tmp1414
	sall	$2, %eax	#, tmp1415
	movl	%eax, -1004(%rbp)	# tmp1415, block4x4_y
	.loc 1 403 0
	movl	$0, -1108(%rbp)	#, j
	jmp	.L71	#
.L74:
	.loc 1 404 0
	movl	$0, -1112(%rbp)	#, i
	jmp	.L72	#
.L73:
	.loc 1 406 0 discriminator 2
	movq	img(%rip), %rax	# img, img.48
	movl	-1008(%rbp), %edx	# block4x4_x, tmp1416
	movl	-1112(%rbp), %ecx	# i, tmp1417
	leal	(%rcx,%rdx), %esi	#, D.10402
	movl	-1004(%rbp), %edx	# block4x4_y, tmp1418
	movl	-1108(%rbp), %ecx	# j, tmp1419
	addl	%ecx, %edx	# tmp1419, D.10402
	movslq	%edx, %rdx	# D.10402, tmp1420
	movslq	%esi, %rcx	# D.10402, tmp1421
	salq	$4, %rcx	#, tmp1422
	addq	%rcx, %rdx	# tmp1422, tmp1423
	movl	resTrans_R(,%rdx,4), %edx	# resTrans_R, D.10402
	movl	-1108(%rbp), %ecx	# j, tmp1425
	movslq	%ecx, %rcx	# tmp1425, tmp1424
	movl	-1112(%rbp), %esi	# i, tmp1427
	movslq	%esi, %rsi	# tmp1427, tmp1426
	salq	$4, %rsi	#, tmp1428
	addq	%rsi, %rcx	# tmp1428, tmp1429
	addq	$3276, %rcx	#, tmp1430
	movl	%edx, 8(%rax,%rcx,4)	# D.10402, img.48_444->m7
	.loc 1 404 0 discriminator 2
	addl	$1, -1112(%rbp)	#, i
.L72:
	.loc 1 404 0 is_stmt 0 discriminator 1
	cmpl	$3, -1112(%rbp)	#, i
	jle	.L73	#,
	.loc 1 403 0 is_stmt 1
	addl	$1, -1108(%rbp)	#, j
.L71:
	.loc 1 403 0 is_stmt 0 discriminator 1
	cmpl	$3, -1108(%rbp)	#, j
	jle	.L74	#,
	.loc 1 408 0 is_stmt 1
	movl	-1156(%rbp), %eax	# b8, tmp1431
	leal	4(%rax), %ecx	#, D.10402
	movl	-1072(%rbp), %eax	# b4, tmp1432
	movl	$0, %edx	#,
	movl	%eax, %esi	# tmp1432,
	movl	%ecx, %edi	# D.10402,
	call	RDCost_for_4x4Blocks_Chroma	#
	addl	%eax, -1080(%rbp)	# D.10402, rate
	.loc 1 409 0
	movl	$0, -1108(%rbp)	#, j
	jmp	.L75	#
.L78:
	.loc 1 410 0
	movl	$0, -1112(%rbp)	#, i
	jmp	.L76	#
.L77:
	.loc 1 412 0 discriminator 2
	movl	-1008(%rbp), %eax	# block4x4_x, tmp1433
	movl	-1112(%rbp), %edx	# i, tmp1434
	leal	(%rdx,%rax), %esi	#, D.10402
	movl	-1004(%rbp), %eax	# block4x4_y, tmp1435
	movl	-1108(%rbp), %edx	# j, tmp1436
	leal	(%rdx,%rax), %edi	#, D.10402
	movq	img(%rip), %rax	# img, img.49
	movl	-1108(%rbp), %edx	# j, tmp1438
	movslq	%edx, %rdx	# tmp1438, tmp1437
	movl	-1112(%rbp), %ecx	# i, tmp1440
	movslq	%ecx, %rcx	# tmp1440, tmp1439
	salq	$4, %rcx	#, tmp1441
	addq	%rcx, %rdx	# tmp1441, tmp1442
	addq	$3276, %rdx	#, tmp1443
	movl	8(%rax,%rdx,4), %eax	# img.49_457->m7, D.10402
	movslq	%edi, %rdx	# D.10402, tmp1444
	movslq	%esi, %rcx	# D.10402, tmp1445
	salq	$4, %rcx	#, tmp1446
	addq	%rcx, %rdx	# tmp1446, tmp1447
	movl	%eax, rec_resR(,%rdx,4)	# D.10402, rec_resR
	.loc 1 413 0 discriminator 2
	movq	img(%rip), %rax	# img, img.50
	movl	-1008(%rbp), %edx	# block4x4_x, tmp1448
	movl	-1112(%rbp), %ecx	# i, tmp1449
	leal	(%rcx,%rdx), %esi	#, D.10402
	movl	-1004(%rbp), %edx	# block4x4_y, tmp1450
	movl	-1108(%rbp), %ecx	# j, tmp1451
	addl	%ecx, %edx	# tmp1451, D.10402
	movslq	%edx, %rdx	# D.10402, tmp1452
	movslq	%esi, %rcx	# D.10402, tmp1453
	salq	$4, %rcx	#, tmp1454
	addq	%rcx, %rdx	# tmp1454, tmp1455
	movl	resTrans_B(,%rdx,4), %edx	# resTrans_B, D.10402
	movl	-1108(%rbp), %ecx	# j, tmp1457
	movslq	%ecx, %rcx	# tmp1457, tmp1456
	movl	-1112(%rbp), %esi	# i, tmp1459
	movslq	%esi, %rsi	# tmp1459, tmp1458
	salq	$4, %rsi	#, tmp1460
	addq	%rsi, %rcx	# tmp1460, tmp1461
	addq	$3276, %rcx	#, tmp1462
	movl	%edx, 8(%rax,%rcx,4)	# D.10402, img.50_459->m7
	.loc 1 410 0 discriminator 2
	addl	$1, -1112(%rbp)	#, i
.L76:
	.loc 1 410 0 is_stmt 0 discriminator 1
	cmpl	$3, -1112(%rbp)	#, i
	jle	.L77	#,
	.loc 1 409 0 is_stmt 1
	addl	$1, -1108(%rbp)	#, j
.L75:
	.loc 1 409 0 is_stmt 0 discriminator 1
	cmpl	$3, -1108(%rbp)	#, j
	jle	.L78	#,
	.loc 1 415 0 is_stmt 1
	movl	-1156(%rbp), %eax	# b8, tmp1463
	leal	8(%rax), %ecx	#, D.10402
	movl	-1072(%rbp), %eax	# b4, tmp1464
	movl	$1, %edx	#,
	movl	%eax, %esi	# tmp1464,
	movl	%ecx, %edi	# D.10402,
	call	RDCost_for_4x4Blocks_Chroma	#
	addl	%eax, -1080(%rbp)	# D.10402, rate
	.loc 1 416 0
	movl	$0, -1108(%rbp)	#, j
	jmp	.L79	#
.L82:
	.loc 1 417 0
	movl	$0, -1112(%rbp)	#, i
	jmp	.L80	#
.L81:
	.loc 1 419 0 discriminator 2
	movl	-1008(%rbp), %eax	# block4x4_x, tmp1465
	movl	-1112(%rbp), %edx	# i, tmp1466
	leal	(%rdx,%rax), %esi	#, D.10402
	movl	-1004(%rbp), %eax	# block4x4_y, tmp1467
	movl	-1108(%rbp), %edx	# j, tmp1468
	leal	(%rdx,%rax), %edi	#, D.10402
	movq	img(%rip), %rax	# img, img.51
	movl	-1108(%rbp), %edx	# j, tmp1470
	movslq	%edx, %rdx	# tmp1470, tmp1469
	movl	-1112(%rbp), %ecx	# i, tmp1472
	movslq	%ecx, %rcx	# tmp1472, tmp1471
	salq	$4, %rcx	#, tmp1473
	addq	%rcx, %rdx	# tmp1473, tmp1474
	addq	$3276, %rdx	#, tmp1475
	movl	8(%rax,%rdx,4), %eax	# img.51_472->m7, D.10402
	movslq	%edi, %rdx	# D.10402, tmp1476
	movslq	%esi, %rcx	# D.10402, tmp1477
	salq	$4, %rcx	#, tmp1478
	addq	%rcx, %rdx	# tmp1478, tmp1479
	movl	%eax, rec_resB(,%rdx,4)	# D.10402, rec_resB
	.loc 1 417 0 discriminator 2
	addl	$1, -1112(%rbp)	#, i
.L80:
	.loc 1 417 0 is_stmt 0 discriminator 1
	cmpl	$3, -1112(%rbp)	#, i
	jle	.L81	#,
	.loc 1 416 0 is_stmt 1
	addl	$1, -1108(%rbp)	#, j
.L79:
	.loc 1 416 0 is_stmt 0 discriminator 1
	cmpl	$3, -1108(%rbp)	#, j
	jle	.L82	#,
	.loc 1 397 0 is_stmt 1
	addl	$1, -1072(%rbp)	#, b4
.L70:
	.loc 1 397 0 is_stmt 0 discriminator 1
	cmpl	$3, -1072(%rbp)	#, b4
	jle	.L83	#,
	.loc 1 422 0 is_stmt 1
	movl	$0, %eax	#,
	call	reset_coding_state_cs_cm	#
	.loc 1 424 0
	movl	$0, -1108(%rbp)	#, j
	jmp	.L84	#
.L87:
	.loc 1 425 0
	movl	$0, -1112(%rbp)	#, i
	jmp	.L85	#
.L86:
	.loc 1 428 0 discriminator 2
	movl	-1108(%rbp), %eax	# j, tmp1481
	cltq
	movl	-1112(%rbp), %edx	# i, tmp1483
	movslq	%edx, %rdx	# tmp1483, tmp1482
	salq	$4, %rdx	#, tmp1484
	addq	%rdx, %rax	# tmp1484, tmp1485
	movl	rec_resG(,%rax,4), %eax	# rec_resG, D.10402
	movl	-1108(%rbp), %edx	# j, tmp1487
	movslq	%edx, %rdx	# tmp1487, tmp1486
	movl	-1112(%rbp), %ecx	# i, tmp1489
	movslq	%ecx, %rcx	# tmp1489, tmp1488
	salq	$4, %rcx	#, tmp1490
	addq	%rcx, %rdx	# tmp1490, tmp1491
	movl	rec_resB(,%rdx,4), %edx	# rec_resB, D.10402
	sarl	%edx	# D.10402
	subl	%edx, %eax	# D.10402, tmp1492
	movl	%eax, -1012(%rbp)	# tmp1492, temp
	.loc 1 429 0 discriminator 2
	movl	-1108(%rbp), %eax	# j, tmp1494
	cltq
	movl	-1112(%rbp), %edx	# i, tmp1496
	movslq	%edx, %rdx	# tmp1496, tmp1495
	salq	$4, %rdx	#, tmp1497
	addq	%rdx, %rax	# tmp1497, tmp1498
	movl	rec_resB(,%rax,4), %edx	# rec_resB, D.10402
	movl	-1012(%rbp), %eax	# temp, tmp1502
	addl	%edx, %eax	# D.10402, tmp1501
	movl	%eax, -1020(%rbp)	# tmp1501, residue_G
	.loc 1 430 0 discriminator 2
	movl	-1108(%rbp), %eax	# j, tmp1504
	cltq
	movl	-1112(%rbp), %edx	# i, tmp1506
	movslq	%edx, %rdx	# tmp1506, tmp1505
	salq	$4, %rdx	#, tmp1507
	addq	%rdx, %rax	# tmp1507, tmp1508
	movl	rec_resR(,%rax,4), %eax	# rec_resR, D.10402
	sarl	%eax	# D.10402
	movl	%eax, %edx	# D.10402, D.10402
	movl	-1012(%rbp), %eax	# temp, tmp1512
	subl	%edx, %eax	# D.10402, tmp1511
	movl	%eax, -1024(%rbp)	# tmp1511, residue_B
	.loc 1 431 0 discriminator 2
	movl	-1108(%rbp), %eax	# j, tmp1514
	cltq
	movl	-1112(%rbp), %edx	# i, tmp1516
	movslq	%edx, %rdx	# tmp1516, tmp1515
	salq	$4, %rdx	#, tmp1517
	addq	%rdx, %rax	# tmp1517, tmp1518
	movl	rec_resR(,%rax,4), %edx	# rec_resR, D.10402
	movl	-1024(%rbp), %eax	# residue_B, tmp1522
	addl	%edx, %eax	# D.10402, tmp1521
	movl	%eax, -1016(%rbp)	# tmp1521, residue_R
	.loc 1 432 0 discriminator 2
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.52
	movq	6464(%rax), %rax	# enc_picture.52_490->imgUV, D.10414
	movq	(%rax), %rax	# *_491, D.10408
	movl	-1108(%rbp), %edx	# j, tmp1523
	movl	-1056(%rbp), %ecx	# pic_pix_y, tmp1524
	addl	%ecx, %edx	# tmp1524, D.10402
	movslq	%edx, %rdx	# D.10402, D.10404
	salq	$3, %rdx	#, D.10404
	addq	%rdx, %rax	# D.10404, D.10408
	movq	(%rax), %rax	# *_496, D.10409
	movl	-1112(%rbp), %edx	# i, tmp1525
	movl	-1060(%rbp), %ecx	# pic_pix_x, tmp1526
	addl	%ecx, %edx	# tmp1526, D.10402
	movslq	%edx, %rdx	# D.10402, D.10404
	addq	%rdx, %rdx	# D.10404
	leaq	(%rax,%rdx), %rcx	#, D.10409
	movq	img(%rip), %rax	# img, img.53
	movl	-1112(%rbp), %edx	# i, tmp1527
	movl	-1068(%rbp), %esi	# block_x, tmp1528
	leal	(%rsi,%rdx), %r8d	#, D.10402
	movl	-1108(%rbp), %edx	# j, tmp1529
	movl	-1064(%rbp), %esi	# block_y, tmp1530
	addl	%esi, %edx	# tmp1530, D.10402
	movslq	%edx, %rdx	# D.10402, tmp1531
	movl	-1036(%rbp), %esi	# c_ipmode, tmp1533
	movslq	%esi, %rdi	# tmp1533, tmp1532
	movslq	%r8d, %rsi	# D.10402, tmp1534
	salq	$4, %rdi	#, tmp1535
	addq	%rdi, %rsi	# tmp1535, tmp1536
	salq	$4, %rsi	#, tmp1537
	addq	%rsi, %rdx	# tmp1537, tmp1538
	addq	$4248, %rdx	#, tmp1539
	movzwl	8(%rax,%rdx,2), %eax	# img.53_502->mprr_c, D.10410
	movzwl	%ax, %edx	# D.10410, D.10402
	movl	-1024(%rbp), %eax	# residue_B, tmp1540
	addl	%edx, %eax	# D.10402, D.10402
	movl	$0, %edx	#, tmp1541
	testl	%eax, %eax	# D.10402
	cmovns	%eax, %edx	# D.10402,, D.10402
	movq	img(%rip), %rax	# img, img.54
	movl	72688(%rax), %eax	# img.54_509->max_imgpel_value_uv, D.10402
	cmpl	%eax, %edx	# D.10402, D.10402
	cmovle	%edx, %eax	# D.10402,, D.10402
	movw	%ax, (%rcx)	# D.10410, *_501
	.loc 1 433 0 discriminator 2
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.55
	movq	6424(%rax), %rax	# enc_picture.55_513->imgY, D.10408
	movl	-1108(%rbp), %edx	# j, tmp1542
	movl	-1056(%rbp), %ecx	# pic_pix_y, tmp1543
	addl	%ecx, %edx	# tmp1543, D.10402
	movslq	%edx, %rdx	# D.10402, D.10404
	salq	$3, %rdx	#, D.10404
	addq	%rdx, %rax	# D.10404, D.10408
	movq	(%rax), %rax	# *_518, D.10409
	movl	-1112(%rbp), %edx	# i, tmp1544
	movl	-1060(%rbp), %ecx	# pic_pix_x, tmp1545
	addl	%ecx, %edx	# tmp1545, D.10402
	movslq	%edx, %rdx	# D.10402, D.10404
	addq	%rdx, %rdx	# D.10404
	leaq	(%rax,%rdx), %rcx	#, D.10409
	movq	img(%rip), %rax	# img, img.56
	movl	-1112(%rbp), %edx	# i, tmp1547
	movslq	%edx, %rdx	# tmp1547, tmp1546
	movl	-1120(%rbp), %esi	# ipmode, tmp1549
	movslq	%esi, %rdi	# tmp1549, tmp1548
	movl	-1108(%rbp), %esi	# j, tmp1551
	movslq	%esi, %rsi	# tmp1551, tmp1550
	salq	$3, %rdi	#, tmp1552
	addq	%rdi, %rsi	# tmp1552, tmp1553
	salq	$3, %rsi	#, tmp1554
	addq	%rsi, %rdx	# tmp1554, tmp1555
	addq	$3672, %rdx	#, tmp1556
	movzwl	8(%rax,%rdx,2), %eax	# img.56_524->mprr_3, D.10410
	movzwl	%ax, %edx	# D.10410, D.10402
	movl	-1020(%rbp), %eax	# residue_G, tmp1557
	addl	%edx, %eax	# D.10402, D.10402
	movl	$0, %edx	#, tmp1558
	testl	%eax, %eax	# D.10402
	cmovns	%eax, %edx	# D.10402,, D.10402
	movq	img(%rip), %rax	# img, img.57
	movl	72684(%rax), %eax	# img.57_529->max_imgpel_value, D.10402
	cmpl	%eax, %edx	# D.10402, D.10402
	cmovle	%edx, %eax	# D.10402,, D.10402
	movw	%ax, (%rcx)	# D.10410, *_523
	.loc 1 434 0 discriminator 2
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.58
	movq	6464(%rax), %rax	# enc_picture.58_533->imgUV, D.10414
	addq	$8, %rax	#, D.10414
	movq	(%rax), %rax	# *_535, D.10408
	movl	-1108(%rbp), %edx	# j, tmp1559
	movl	-1056(%rbp), %ecx	# pic_pix_y, tmp1560
	addl	%ecx, %edx	# tmp1560, D.10402
	movslq	%edx, %rdx	# D.10402, D.10404
	salq	$3, %rdx	#, D.10404
	addq	%rdx, %rax	# D.10404, D.10408
	movq	(%rax), %rax	# *_540, D.10409
	movl	-1112(%rbp), %edx	# i, tmp1561
	movl	-1060(%rbp), %ecx	# pic_pix_x, tmp1562
	addl	%ecx, %edx	# tmp1562, D.10402
	movslq	%edx, %rdx	# D.10402, D.10404
	addq	%rdx, %rdx	# D.10404
	leaq	(%rax,%rdx), %rcx	#, D.10409
	movq	img(%rip), %rax	# img, img.59
	movl	-1112(%rbp), %edx	# i, tmp1563
	movl	-1068(%rbp), %esi	# block_x, tmp1564
	leal	(%rsi,%rdx), %r8d	#, D.10402
	movl	-1108(%rbp), %edx	# j, tmp1565
	movl	-1064(%rbp), %esi	# block_y, tmp1566
	addl	%esi, %edx	# tmp1566, D.10402
	movslq	%edx, %rdx	# D.10402, tmp1567
	movl	-1036(%rbp), %esi	# c_ipmode, tmp1569
	movslq	%esi, %rdi	# tmp1569, tmp1568
	movslq	%r8d, %rsi	# D.10402, tmp1570
	salq	$4, %rdi	#, tmp1571
	addq	%rdi, %rsi	# tmp1571, tmp1572
	salq	$4, %rsi	#, tmp1573
	addq	%rsi, %rdx	# tmp1573, tmp1574
	addq	$5272, %rdx	#, tmp1575
	movzwl	8(%rax,%rdx,2), %eax	# img.59_546->mprr_c, D.10410
	movzwl	%ax, %edx	# D.10410, D.10402
	movl	-1016(%rbp), %eax	# residue_R, tmp1576
	addl	%edx, %eax	# D.10402, D.10402
	movl	$0, %edx	#, tmp1577
	testl	%eax, %eax	# D.10402
	cmovns	%eax, %edx	# D.10402,, D.10402
	movq	img(%rip), %rax	# img, img.60
	movl	72688(%rax), %eax	# img.60_553->max_imgpel_value_uv, D.10402
	cmpl	%eax, %edx	# D.10402, D.10402
	cmovle	%edx, %eax	# D.10402,, D.10402
	movw	%ax, (%rcx)	# D.10410, *_545
	.loc 1 425 0 discriminator 2
	addl	$1, -1112(%rbp)	#, i
.L85:
	.loc 1 425 0 is_stmt 0 discriminator 1
	cmpl	$7, -1112(%rbp)	#, i
	jle	.L86	#,
	.loc 1 424 0 is_stmt 1
	addl	$1, -1108(%rbp)	#, j
.L84:
	.loc 1 424 0 is_stmt 0 discriminator 1
	cmpl	$7, -1108(%rbp)	#, j
	jle	.L87	#,
	.loc 1 437 0 is_stmt 1
	movl	$0, -1076(%rbp)	#, distortion
	.loc 1 438 0
	movl	$0, -1096(%rbp)	#, y
	jmp	.L88	#
.L91:
	.loc 1 439 0
	movl	-1060(%rbp), %eax	# pic_pix_x, tmp1578
	movl	%eax, -1100(%rbp)	# tmp1578, x
	jmp	.L89	#
.L90:
	.loc 1 441 0 discriminator 2
	movq	imgY_org(%rip), %rax	# imgY_org, imgY_org.61
	movl	-1096(%rbp), %edx	# y, tmp1579
	movl	-1056(%rbp), %ecx	# pic_pix_y, tmp1580
	addl	%ecx, %edx	# tmp1580, D.10402
	movslq	%edx, %rdx	# D.10402, D.10404
	salq	$3, %rdx	#, D.10404
	addq	%rdx, %rax	# D.10404, D.10408
	movq	(%rax), %rax	# *_567, D.10409
	movl	-1100(%rbp), %edx	# x, tmp1581
	movslq	%edx, %rdx	# tmp1581, D.10404
	addq	%rdx, %rdx	# D.10404
	addq	%rdx, %rax	# D.10404, D.10409
	movzwl	(%rax), %eax	# *_571, D.10410
	movzwl	%ax, %edx	# D.10410, D.10402
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.62
	movq	6424(%rax), %rax	# enc_picture.62_574->imgY, D.10408
	movl	-1096(%rbp), %ecx	# y, tmp1582
	movl	-1056(%rbp), %esi	# pic_pix_y, tmp1583
	addl	%esi, %ecx	# tmp1583, D.10402
	movslq	%ecx, %rcx	# D.10402, D.10404
	salq	$3, %rcx	#, D.10404
	addq	%rcx, %rax	# D.10404, D.10408
	movq	(%rax), %rax	# *_579, D.10409
	movl	-1100(%rbp), %ecx	# x, tmp1584
	movslq	%ecx, %rcx	# tmp1584, D.10404
	addq	%rcx, %rcx	# D.10404
	addq	%rcx, %rax	# D.10404, D.10409
	movzwl	(%rax), %eax	# *_583, D.10410
	movzwl	%ax, %eax	# D.10410, D.10402
	movl	%edx, %edi	# D.10402, D.10402
	subl	%eax, %edi	# D.10402, D.10402
	movq	imgY_org(%rip), %rax	# imgY_org, imgY_org.63
	movl	-1096(%rbp), %edx	# y, tmp1585
	movl	-1056(%rbp), %ecx	# pic_pix_y, tmp1586
	addl	%ecx, %edx	# tmp1586, D.10402
	movslq	%edx, %rdx	# D.10402, D.10404
	salq	$3, %rdx	#, D.10404
	addq	%rdx, %rax	# D.10404, D.10408
	movq	(%rax), %rax	# *_591, D.10409
	movl	-1100(%rbp), %edx	# x, tmp1587
	movslq	%edx, %rdx	# tmp1587, D.10404
	addq	%rdx, %rdx	# D.10404
	addq	%rdx, %rax	# D.10404, D.10409
	movzwl	(%rax), %eax	# *_595, D.10410
	movzwl	%ax, %edx	# D.10410, D.10402
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.64
	movq	6424(%rax), %rax	# enc_picture.64_598->imgY, D.10408
	movl	-1096(%rbp), %ecx	# y, tmp1588
	movl	-1056(%rbp), %esi	# pic_pix_y, tmp1589
	addl	%esi, %ecx	# tmp1589, D.10402
	movslq	%ecx, %rcx	# D.10402, D.10404
	salq	$3, %rcx	#, D.10404
	addq	%rcx, %rax	# D.10404, D.10408
	movq	(%rax), %rax	# *_603, D.10409
	movl	-1100(%rbp), %ecx	# x, tmp1590
	movslq	%ecx, %rcx	# tmp1590, D.10404
	addq	%rcx, %rcx	# D.10404
	addq	%rcx, %rax	# D.10404, D.10409
	movzwl	(%rax), %eax	# *_607, D.10410
	movzwl	%ax, %eax	# D.10410, D.10402
	subl	%eax, %edx	# D.10402, D.10402
	movl	%edx, %eax	# D.10402, D.10402
	imull	%edi, %eax	# D.10402, D.10402
	addl	%eax, -1076(%rbp)	# D.10402, distortion
	.loc 1 442 0 discriminator 2
	movq	imgUV_org(%rip), %rax	# imgUV_org, imgUV_org.65
	movq	(%rax), %rax	# *imgUV_org.65_613, D.10408
	movl	-1096(%rbp), %edx	# y, tmp1591
	movl	-1056(%rbp), %ecx	# pic_pix_y, tmp1592
	addl	%ecx, %edx	# tmp1592, D.10402
	movslq	%edx, %rdx	# D.10402, D.10404
	salq	$3, %rdx	#, D.10404
	addq	%rdx, %rax	# D.10404, D.10408
	movq	(%rax), %rax	# *_618, D.10409
	movl	-1100(%rbp), %edx	# x, tmp1593
	movslq	%edx, %rdx	# tmp1593, D.10404
	addq	%rdx, %rdx	# D.10404
	addq	%rdx, %rax	# D.10404, D.10409
	movzwl	(%rax), %eax	# *_622, D.10410
	movzwl	%ax, %edx	# D.10410, D.10402
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.66
	movq	6464(%rax), %rax	# enc_picture.66_625->imgUV, D.10414
	movq	(%rax), %rax	# *_626, D.10408
	movl	-1096(%rbp), %ecx	# y, tmp1594
	movl	-1056(%rbp), %esi	# pic_pix_y, tmp1595
	addl	%esi, %ecx	# tmp1595, D.10402
	movslq	%ecx, %rcx	# D.10402, D.10404
	salq	$3, %rcx	#, D.10404
	addq	%rcx, %rax	# D.10404, D.10408
	movq	(%rax), %rax	# *_631, D.10409
	movl	-1100(%rbp), %ecx	# x, tmp1596
	movslq	%ecx, %rcx	# tmp1596, D.10404
	addq	%rcx, %rcx	# D.10404
	addq	%rcx, %rax	# D.10404, D.10409
	movzwl	(%rax), %eax	# *_635, D.10410
	movzwl	%ax, %eax	# D.10410, D.10402
	movl	%edx, %edi	# D.10402, D.10402
	subl	%eax, %edi	# D.10402, D.10402
	movq	imgUV_org(%rip), %rax	# imgUV_org, imgUV_org.67
	movq	(%rax), %rax	# *imgUV_org.67_639, D.10408
	movl	-1096(%rbp), %edx	# y, tmp1597
	movl	-1056(%rbp), %ecx	# pic_pix_y, tmp1598
	addl	%ecx, %edx	# tmp1598, D.10402
	movslq	%edx, %rdx	# D.10402, D.10404
	salq	$3, %rdx	#, D.10404
	addq	%rdx, %rax	# D.10404, D.10408
	movq	(%rax), %rax	# *_644, D.10409
	movl	-1100(%rbp), %edx	# x, tmp1599
	movslq	%edx, %rdx	# tmp1599, D.10404
	addq	%rdx, %rdx	# D.10404
	addq	%rdx, %rax	# D.10404, D.10409
	movzwl	(%rax), %eax	# *_648, D.10410
	movzwl	%ax, %edx	# D.10410, D.10402
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.68
	movq	6464(%rax), %rax	# enc_picture.68_651->imgUV, D.10414
	movq	(%rax), %rax	# *_652, D.10408
	movl	-1096(%rbp), %ecx	# y, tmp1600
	movl	-1056(%rbp), %esi	# pic_pix_y, tmp1601
	addl	%esi, %ecx	# tmp1601, D.10402
	movslq	%ecx, %rcx	# D.10402, D.10404
	salq	$3, %rcx	#, D.10404
	addq	%rcx, %rax	# D.10404, D.10408
	movq	(%rax), %rax	# *_657, D.10409
	movl	-1100(%rbp), %ecx	# x, tmp1602
	movslq	%ecx, %rcx	# tmp1602, D.10404
	addq	%rcx, %rcx	# D.10404
	addq	%rcx, %rax	# D.10404, D.10409
	movzwl	(%rax), %eax	# *_661, D.10410
	movzwl	%ax, %eax	# D.10410, D.10402
	subl	%eax, %edx	# D.10402, D.10402
	movl	%edx, %eax	# D.10402, D.10402
	imull	%edi, %eax	# D.10402, D.10402
	addl	%eax, -1076(%rbp)	# D.10402, distortion
	.loc 1 443 0 discriminator 2
	movq	imgUV_org(%rip), %rax	# imgUV_org, imgUV_org.69
	addq	$8, %rax	#, D.10414
	movq	(%rax), %rax	# *_668, D.10408
	movl	-1096(%rbp), %edx	# y, tmp1603
	movl	-1056(%rbp), %ecx	# pic_pix_y, tmp1604
	addl	%ecx, %edx	# tmp1604, D.10402
	movslq	%edx, %rdx	# D.10402, D.10404
	salq	$3, %rdx	#, D.10404
	addq	%rdx, %rax	# D.10404, D.10408
	movq	(%rax), %rax	# *_673, D.10409
	movl	-1100(%rbp), %edx	# x, tmp1605
	movslq	%edx, %rdx	# tmp1605, D.10404
	addq	%rdx, %rdx	# D.10404
	addq	%rdx, %rax	# D.10404, D.10409
	movzwl	(%rax), %eax	# *_677, D.10410
	movzwl	%ax, %edx	# D.10410, D.10402
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.70
	movq	6464(%rax), %rax	# enc_picture.70_680->imgUV, D.10414
	addq	$8, %rax	#, D.10414
	movq	(%rax), %rax	# *_682, D.10408
	movl	-1096(%rbp), %ecx	# y, tmp1606
	movl	-1056(%rbp), %esi	# pic_pix_y, tmp1607
	addl	%esi, %ecx	# tmp1607, D.10402
	movslq	%ecx, %rcx	# D.10402, D.10404
	salq	$3, %rcx	#, D.10404
	addq	%rcx, %rax	# D.10404, D.10408
	movq	(%rax), %rax	# *_687, D.10409
	movl	-1100(%rbp), %ecx	# x, tmp1608
	movslq	%ecx, %rcx	# tmp1608, D.10404
	addq	%rcx, %rcx	# D.10404
	addq	%rcx, %rax	# D.10404, D.10409
	movzwl	(%rax), %eax	# *_691, D.10410
	movzwl	%ax, %eax	# D.10410, D.10402
	movl	%edx, %edi	# D.10402, D.10402
	subl	%eax, %edi	# D.10402, D.10402
	movq	imgUV_org(%rip), %rax	# imgUV_org, imgUV_org.71
	addq	$8, %rax	#, D.10414
	movq	(%rax), %rax	# *_696, D.10408
	movl	-1096(%rbp), %edx	# y, tmp1609
	movl	-1056(%rbp), %ecx	# pic_pix_y, tmp1610
	addl	%ecx, %edx	# tmp1610, D.10402
	movslq	%edx, %rdx	# D.10402, D.10404
	salq	$3, %rdx	#, D.10404
	addq	%rdx, %rax	# D.10404, D.10408
	movq	(%rax), %rax	# *_701, D.10409
	movl	-1100(%rbp), %edx	# x, tmp1611
	movslq	%edx, %rdx	# tmp1611, D.10404
	addq	%rdx, %rdx	# D.10404
	addq	%rdx, %rax	# D.10404, D.10409
	movzwl	(%rax), %eax	# *_705, D.10410
	movzwl	%ax, %edx	# D.10410, D.10402
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.72
	movq	6464(%rax), %rax	# enc_picture.72_708->imgUV, D.10414
	addq	$8, %rax	#, D.10414
	movq	(%rax), %rax	# *_710, D.10408
	movl	-1096(%rbp), %ecx	# y, tmp1612
	movl	-1056(%rbp), %esi	# pic_pix_y, tmp1613
	addl	%esi, %ecx	# tmp1613, D.10402
	movslq	%ecx, %rcx	# D.10402, D.10404
	salq	$3, %rcx	#, D.10404
	addq	%rcx, %rax	# D.10404, D.10408
	movq	(%rax), %rax	# *_715, D.10409
	movl	-1100(%rbp), %ecx	# x, tmp1614
	movslq	%ecx, %rcx	# tmp1614, D.10404
	addq	%rcx, %rcx	# D.10404
	addq	%rcx, %rax	# D.10404, D.10409
	movzwl	(%rax), %eax	# *_719, D.10410
	movzwl	%ax, %eax	# D.10410, D.10402
	subl	%eax, %edx	# D.10402, D.10402
	movl	%edx, %eax	# D.10402, D.10402
	imull	%edi, %eax	# D.10402, D.10402
	addl	%eax, -1076(%rbp)	# D.10402, distortion
	.loc 1 439 0 discriminator 2
	addl	$1, -1100(%rbp)	#, x
.L89:
	.loc 1 439 0 is_stmt 0 discriminator 1
	movl	-1060(%rbp), %eax	# pic_pix_x, tmp1615
	addl	$8, %eax	#, D.10402
	cmpl	-1100(%rbp), %eax	# x, D.10402
	jg	.L90	#,
	.loc 1 438 0 is_stmt 1
	addl	$1, -1096(%rbp)	#, y
.L88:
	.loc 1 438 0 is_stmt 0 discriminator 1
	cmpl	$7, -1096(%rbp)	#, y
	jle	.L91	#,
	.loc 1 445 0 is_stmt 1
	cvtsi2sd	-1076(%rbp), %xmm1	# distortion, D.10411
	cvtsi2sd	-1080(%rbp), %xmm0	# rate, D.10411
	mulsd	-1168(%rbp), %xmm0	# lambda, D.10411
	addsd	%xmm1, %xmm0	# D.10411, tmp1616
	movsd	%xmm0, -992(%rbp)	# tmp1616, rdcost
	.loc 1 447 0
	movsd	-1000(%rbp), %xmm0	# min_rdcost, tmp1617
	ucomisd	-992(%rbp), %xmm0	# rdcost, tmp1617
	jbe	.L32	#,
	.loc 1 450 0
	movl	$0, -1108(%rbp)	#, j
	jmp	.L93	#
.L98:
	.loc 1 451 0
	movl	$0, -1112(%rbp)	#, i
	jmp	.L94	#
.L97:
	.loc 1 452 0
	movl	$0, -1104(%rbp)	#, k
	jmp	.L95	#
.L96:
	.loc 1 453 0 discriminator 2
	movq	cofAC8x8(%rip), %rax	# cofAC8x8, cofAC8x8.73
	movl	-1156(%rbp), %edx	# b8, tmp1618
	movslq	%edx, %rdx	# tmp1618, D.10404
	salq	$3, %rdx	#, D.10404
	addq	%rdx, %rax	# D.10404, D.10412
	movq	(%rax), %rax	# *_737, D.10413
	movl	-1104(%rbp), %edx	# k, tmp1619
	movslq	%edx, %rdx	# tmp1619, D.10404
	salq	$3, %rdx	#, D.10404
	addq	%rdx, %rax	# D.10404, D.10413
	movq	(%rax), %rax	# *_741, D.10407
	movl	-1108(%rbp), %edx	# j, tmp1620
	movslq	%edx, %rdx	# tmp1620, D.10404
	salq	$3, %rdx	#, D.10404
	addq	%rdx, %rax	# D.10404, D.10407
	movq	(%rax), %rax	# *_745, D.10405
	movl	-1112(%rbp), %edx	# i, tmp1621
	movslq	%edx, %rdx	# tmp1621, D.10404
	salq	$2, %rdx	#, D.10404
	addq	%rax, %rdx	# D.10405, D.10405
	movq	img(%rip), %rax	# img, img.74
	movq	14136(%rax), %rax	# img.74_750->cofAC, D.10412
	movl	-1156(%rbp), %ecx	# b8, tmp1622
	movslq	%ecx, %rcx	# tmp1622, D.10404
	salq	$3, %rcx	#, D.10404
	addq	%rcx, %rax	# D.10404, D.10412
	movq	(%rax), %rax	# *_754, D.10413
	movl	-1104(%rbp), %ecx	# k, tmp1623
	movslq	%ecx, %rcx	# tmp1623, D.10404
	salq	$3, %rcx	#, D.10404
	addq	%rcx, %rax	# D.10404, D.10413
	movq	(%rax), %rax	# *_758, D.10407
	movl	-1108(%rbp), %ecx	# j, tmp1624
	movslq	%ecx, %rcx	# tmp1624, D.10404
	salq	$3, %rcx	#, D.10404
	addq	%rcx, %rax	# D.10404, D.10407
	movq	(%rax), %rax	# *_762, D.10405
	movl	-1112(%rbp), %ecx	# i, tmp1625
	movslq	%ecx, %rcx	# tmp1625, D.10404
	salq	$2, %rcx	#, D.10404
	addq	%rcx, %rax	# D.10404, D.10405
	movl	(%rax), %eax	# *_766, D.10402
	movl	%eax, (%rdx)	# D.10402, *_749
	.loc 1 452 0 discriminator 2
	addl	$1, -1104(%rbp)	#, k
.L95:
	.loc 1 452 0 is_stmt 0 discriminator 1
	cmpl	$3, -1104(%rbp)	#, k
	jle	.L96	#,
	.loc 1 451 0 is_stmt 1
	addl	$1, -1112(%rbp)	#, i
.L94:
	.loc 1 451 0 is_stmt 0 discriminator 1
	cmpl	$64, -1112(%rbp)	#, i
	jle	.L97	#,
	.loc 1 450 0 is_stmt 1
	addl	$1, -1108(%rbp)	#, j
.L93:
	.loc 1 450 0 is_stmt 0 discriminator 1
	cmpl	$1, -1108(%rbp)	#, j
	jle	.L98	#,
	.loc 1 455 0 is_stmt 1
	movl	$0, -1072(%rbp)	#, b4
	jmp	.L99	#
.L114:
	.loc 1 457 0
	movl	-1072(%rbp), %eax	# b4, tmp1626
	cltd
	shrl	$31, %edx	#, tmp1628
	addl	%edx, %eax	# tmp1628, tmp1629
	andl	$1, %eax	#, tmp1630
	subl	%edx, %eax	# tmp1628, tmp1631
	sall	$2, %eax	#, tmp1632
	movl	%eax, -1008(%rbp)	# tmp1632, block4x4_x
	.loc 1 458 0
	movl	-1072(%rbp), %eax	# b4, tmp1633
	movl	%eax, %edx	# tmp1633, tmp1634
	shrl	$31, %edx	#, tmp1634
	addl	%edx, %eax	# tmp1634, tmp1635
	sarl	%eax	# tmp1636
	sall	$2, %eax	#, tmp1637
	movl	%eax, -1004(%rbp)	# tmp1637, block4x4_y
	.loc 1 460 0
	movl	$0, -1108(%rbp)	#, j
	jmp	.L100	#
.L103:
	.loc 1 461 0
	movl	$0, -1112(%rbp)	#, i
	jmp	.L101	#
.L102:
	.loc 1 461 0 is_stmt 0 discriminator 2
	movq	img(%rip), %rax	# img, img.75
	movq	14136(%rax), %rax	# img.75_778->cofAC, D.10412
	movl	-1156(%rbp), %edx	# b8, tmp1638
	movslq	%edx, %rdx	# tmp1638, D.10415
	addq	$4, %rdx	#, D.10415
	salq	$3, %rdx	#, D.10415
	addq	%rdx, %rax	# D.10415, D.10412
	movq	(%rax), %rax	# *_783, D.10413
	movl	-1072(%rbp), %edx	# b4, tmp1639
	movslq	%edx, %rdx	# tmp1639, D.10404
	salq	$3, %rdx	#, D.10404
	addq	%rdx, %rax	# D.10404, D.10413
	movq	(%rax), %rax	# *_787, D.10407
	movl	-1108(%rbp), %edx	# j, tmp1640
	movslq	%edx, %rdx	# tmp1640, D.10404
	salq	$3, %rdx	#, D.10404
	addq	%rdx, %rax	# D.10404, D.10407
	movq	(%rax), %rax	# *_791, D.10405
	movl	-1112(%rbp), %edx	# i, tmp1641
	movslq	%edx, %rdx	# tmp1641, D.10404
	salq	$2, %rdx	#, D.10404
	addq	%rdx, %rax	# D.10404, D.10405
	movl	(%rax), %esi	# *_795, D.10402
	movl	-1112(%rbp), %eax	# i, tmp1643
	movslq	%eax, %rdi	# tmp1643, tmp1642
	movl	-1072(%rbp), %eax	# b4, tmp1645
	cltq
	movl	-1108(%rbp), %edx	# j, tmp1647
	movslq	%edx, %rcx	# tmp1647, tmp1646
	movq	%rax, %rdx	# tmp1644, tmp1648
	salq	$3, %rdx	#, tmp1648
	addq	%rax, %rdx	# tmp1644, tmp1648
	leaq	0(,%rdx,4), %rax	#, tmp1649
	movq	%rax, %rdx	# tmp1649, tmp1648
	movq	%rcx, %rax	# tmp1646, tmp1650
	salq	$3, %rax	#, tmp1650
	addq	%rcx, %rax	# tmp1646, tmp1650
	addq	%rax, %rax	# tmp1651
	addq	%rdx, %rax	# tmp1648, tmp1652
	addq	%rdi, %rax	# tmp1642, tmp1653
	movl	%esi, cofAC8x8_chroma(,%rax,4)	# D.10402, cofAC8x8_chroma
	addl	$1, -1112(%rbp)	#, i
.L101:
	.loc 1 461 0 discriminator 1
	cmpl	$17, -1112(%rbp)	#, i
	jle	.L102	#,
	.loc 1 460 0 is_stmt 1
	addl	$1, -1108(%rbp)	#, j
.L100:
	.loc 1 460 0 is_stmt 0 discriminator 1
	cmpl	$1, -1108(%rbp)	#, j
	jle	.L103	#,
	.loc 1 462 0 is_stmt 1
	movl	$0, -1108(%rbp)	#, j
	jmp	.L104	#
.L107:
	.loc 1 463 0
	movl	$0, -1112(%rbp)	#, i
	jmp	.L105	#
.L106:
	.loc 1 463 0 is_stmt 0 discriminator 2
	movq	img(%rip), %rax	# img, img.76
	movq	14136(%rax), %rax	# img.76_801->cofAC, D.10412
	movl	-1156(%rbp), %edx	# b8, tmp1654
	movslq	%edx, %rdx	# tmp1654, D.10415
	addq	$8, %rdx	#, D.10415
	salq	$3, %rdx	#, D.10415
	addq	%rdx, %rax	# D.10415, D.10412
	movq	(%rax), %rax	# *_806, D.10413
	movl	-1072(%rbp), %edx	# b4, tmp1655
	movslq	%edx, %rdx	# tmp1655, D.10404
	salq	$3, %rdx	#, D.10404
	addq	%rdx, %rax	# D.10404, D.10413
	movq	(%rax), %rax	# *_810, D.10407
	movl	-1108(%rbp), %edx	# j, tmp1656
	movslq	%edx, %rdx	# tmp1656, D.10404
	salq	$3, %rdx	#, D.10404
	addq	%rdx, %rax	# D.10404, D.10407
	movq	(%rax), %rax	# *_814, D.10405
	movl	-1112(%rbp), %edx	# i, tmp1657
	movslq	%edx, %rdx	# tmp1657, D.10404
	salq	$2, %rdx	#, D.10404
	addq	%rdx, %rax	# D.10404, D.10405
	movl	(%rax), %esi	# *_818, D.10402
	movl	-1112(%rbp), %eax	# i, tmp1659
	movslq	%eax, %rdi	# tmp1659, tmp1658
	movl	-1072(%rbp), %eax	# b4, tmp1661
	cltq
	movl	-1108(%rbp), %edx	# j, tmp1663
	movslq	%edx, %rcx	# tmp1663, tmp1662
	movq	%rax, %rdx	# tmp1660, tmp1664
	salq	$3, %rdx	#, tmp1664
	addq	%rax, %rdx	# tmp1660, tmp1664
	leaq	0(,%rdx,4), %rax	#, tmp1665
	movq	%rax, %rdx	# tmp1665, tmp1664
	movq	%rcx, %rax	# tmp1662, tmp1666
	salq	$3, %rax	#, tmp1666
	addq	%rcx, %rax	# tmp1662, tmp1666
	addq	%rax, %rax	# tmp1667
	addq	%rdx, %rax	# tmp1664, tmp1668
	addq	%rdi, %rax	# tmp1658, tmp1669
	addq	$144, %rax	#, tmp1670
	movl	%esi, cofAC8x8_chroma(,%rax,4)	# D.10402, cofAC8x8_chroma
	addl	$1, -1112(%rbp)	#, i
.L105:
	.loc 1 463 0 discriminator 1
	cmpl	$17, -1112(%rbp)	#, i
	jle	.L106	#,
	.loc 1 462 0 is_stmt 1
	addl	$1, -1108(%rbp)	#, j
.L104:
	.loc 1 462 0 is_stmt 0 discriminator 1
	cmpl	$1, -1108(%rbp)	#, j
	jle	.L107	#,
	.loc 1 465 0 is_stmt 1
	movl	$0, -1112(%rbp)	#, i
	jmp	.L108	#
.L113:
	.loc 1 467 0
	movl	-1156(%rbp), %eax	# b8, tmp1671
	cltd
	shrl	$31, %edx	#, tmp1673
	addl	%edx, %eax	# tmp1673, tmp1674
	andl	$1, %eax	#, tmp1675
	subl	%edx, %eax	# tmp1673, tmp1676
	leal	(%rax,%rax), %ecx	#, D.10402
	movl	-1072(%rbp), %eax	# b4, tmp1677
	cltd
	shrl	$31, %edx	#, tmp1679
	addl	%edx, %eax	# tmp1679, tmp1680
	andl	$1, %eax	#, tmp1681
	subl	%edx, %eax	# tmp1679, tmp1682
	leal	(%rcx,%rax), %edi	#, D.10402
	movl	-1156(%rbp), %eax	# b8, tmp1683
	movl	%eax, %edx	# tmp1683, tmp1684
	shrl	$31, %edx	#, tmp1684
	addl	%edx, %eax	# tmp1684, tmp1685
	sarl	%eax	# tmp1686
	leal	(%rax,%rax), %edx	#, D.10402
	movl	-1072(%rbp), %eax	# b4, tmp1687
	movl	%eax, %ecx	# tmp1687, tmp1688
	shrl	$31, %ecx	#, tmp1688
	addl	%ecx, %eax	# tmp1688, tmp1689
	sarl	%eax	# tmp1690
	leal	(%rdx,%rax), %esi	#, D.10402
	movl	-1156(%rbp), %eax	# b8, tmp1691
	cltd
	shrl	$31, %edx	#, tmp1693
	addl	%edx, %eax	# tmp1693, tmp1694
	andl	$1, %eax	#, tmp1695
	subl	%edx, %eax	# tmp1693, tmp1696
	leal	(%rax,%rax), %ecx	#, D.10402
	movl	-1072(%rbp), %eax	# b4, tmp1697
	cltd
	shrl	$31, %edx	#, tmp1699
	addl	%edx, %eax	# tmp1699, tmp1700
	andl	$1, %eax	#, tmp1701
	subl	%edx, %eax	# tmp1699, tmp1702
	leal	(%rcx,%rax), %r8d	#, D.10402
	movl	-1156(%rbp), %eax	# b8, tmp1703
	movl	%eax, %edx	# tmp1703, tmp1704
	shrl	$31, %edx	#, tmp1704
	addl	%edx, %eax	# tmp1704, tmp1705
	sarl	%eax	# tmp1706
	leal	(%rax,%rax), %edx	#, D.10402
	movl	-1072(%rbp), %eax	# b4, tmp1707
	movl	%eax, %ecx	# tmp1707, tmp1708
	shrl	$31, %ecx	#, tmp1708
	addl	%ecx, %eax	# tmp1708, tmp1709
	sarl	%eax	# tmp1710
	addl	%edx, %eax	# D.10402, D.10402
	cltq
	movl	-1112(%rbp), %edx	# i, tmp1713
	movslq	%edx, %rcx	# tmp1713, tmp1712
	movslq	%r8d, %rdx	# D.10402, tmp1714
	salq	$2, %rcx	#, tmp1715
	addq	%rcx, %rdx	# tmp1715, tmp1716
	salq	$2, %rdx	#, tmp1717
	addq	%rdx, %rax	# tmp1717, tmp1718
	movl	dc_level_temp(,%rax,4), %eax	# dc_level_temp, D.10402
	movslq	%esi, %rdx	# D.10402, tmp1719
	movl	-1112(%rbp), %ecx	# i, tmp1721
	movslq	%ecx, %rsi	# tmp1721, tmp1720
	movslq	%edi, %rcx	# D.10402, tmp1722
	salq	$2, %rsi	#, tmp1723
	addq	%rsi, %rcx	# tmp1723, tmp1724
	salq	$2, %rcx	#, tmp1725
	addq	%rcx, %rdx	# tmp1725, tmp1726
	movl	%eax, dc_level(,%rdx,4)	# D.10402, dc_level
	.loc 1 468 0
	movl	-1156(%rbp), %eax	# b8, tmp1727
	cltd
	shrl	$31, %edx	#, tmp1729
	addl	%edx, %eax	# tmp1729, tmp1730
	andl	$1, %eax	#, tmp1731
	subl	%edx, %eax	# tmp1729, tmp1732
	leal	(%rax,%rax), %ecx	#, D.10402
	movl	-1072(%rbp), %eax	# b4, tmp1733
	cltd
	shrl	$31, %edx	#, tmp1735
	addl	%edx, %eax	# tmp1735, tmp1736
	andl	$1, %eax	#, tmp1737
	subl	%edx, %eax	# tmp1735, tmp1738
	leal	(%rcx,%rax), %edi	#, D.10402
	movl	-1156(%rbp), %eax	# b8, tmp1739
	movl	%eax, %edx	# tmp1739, tmp1740
	shrl	$31, %edx	#, tmp1740
	addl	%edx, %eax	# tmp1740, tmp1741
	sarl	%eax	# tmp1742
	leal	(%rax,%rax), %edx	#, D.10402
	movl	-1072(%rbp), %eax	# b4, tmp1743
	movl	%eax, %ecx	# tmp1743, tmp1744
	shrl	$31, %ecx	#, tmp1744
	addl	%ecx, %eax	# tmp1744, tmp1745
	sarl	%eax	# tmp1746
	leal	(%rdx,%rax), %esi	#, D.10402
	movl	-1156(%rbp), %eax	# b8, tmp1747
	cltd
	shrl	$31, %edx	#, tmp1749
	addl	%edx, %eax	# tmp1749, tmp1750
	andl	$1, %eax	#, tmp1751
	subl	%edx, %eax	# tmp1749, tmp1752
	leal	(%rax,%rax), %ecx	#, D.10402
	movl	-1072(%rbp), %eax	# b4, tmp1753
	cltd
	shrl	$31, %edx	#, tmp1755
	addl	%edx, %eax	# tmp1755, tmp1756
	andl	$1, %eax	#, tmp1757
	subl	%edx, %eax	# tmp1755, tmp1758
	leal	(%rcx,%rax), %r8d	#, D.10402
	movl	-1156(%rbp), %eax	# b8, tmp1759
	movl	%eax, %edx	# tmp1759, tmp1760
	shrl	$31, %edx	#, tmp1760
	addl	%edx, %eax	# tmp1760, tmp1761
	sarl	%eax	# tmp1762
	leal	(%rax,%rax), %edx	#, D.10402
	movl	-1072(%rbp), %eax	# b4, tmp1763
	movl	%eax, %ecx	# tmp1763, tmp1764
	shrl	$31, %ecx	#, tmp1764
	addl	%ecx, %eax	# tmp1764, tmp1765
	sarl	%eax	# tmp1766
	addl	%edx, %eax	# D.10402, D.10402
	cltq
	movl	-1112(%rbp), %edx	# i, tmp1769
	movslq	%edx, %rcx	# tmp1769, tmp1768
	movslq	%r8d, %rdx	# D.10402, tmp1770
	salq	$2, %rcx	#, tmp1771
	addq	%rcx, %rdx	# tmp1771, tmp1772
	salq	$2, %rdx	#, tmp1773
	addq	%rdx, %rax	# tmp1773, tmp1774
	movl	cbp_chroma_block_temp(,%rax,4), %eax	# cbp_chroma_block_temp, D.10402
	movslq	%esi, %rdx	# D.10402, tmp1775
	movl	-1112(%rbp), %ecx	# i, tmp1777
	movslq	%ecx, %rsi	# tmp1777, tmp1776
	movslq	%edi, %rcx	# D.10402, tmp1778
	salq	$2, %rsi	#, tmp1779
	addq	%rsi, %rcx	# tmp1779, tmp1780
	salq	$2, %rcx	#, tmp1781
	addq	%rcx, %rdx	# tmp1781, tmp1782
	movl	%eax, cbp_chroma_block(,%rdx,4)	# D.10402, cbp_chroma_block
	.loc 1 470 0
	movl	$0, -1096(%rbp)	#, y
	jmp	.L109	#
.L112:
	.loc 1 471 0
	movl	$0, -1100(%rbp)	#, x
	jmp	.L110	#
.L111:
	.loc 1 471 0 is_stmt 0 discriminator 2
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.77
	movq	6464(%rax), %rax	# enc_picture.77_859->imgUV, D.10414
	movl	-1112(%rbp), %edx	# i, tmp1783
	movslq	%edx, %rdx	# tmp1783, D.10404
	salq	$3, %rdx	#, D.10404
	addq	%rdx, %rax	# D.10404, D.10414
	movq	(%rax), %rax	# *_863, D.10408
	movl	-1096(%rbp), %edx	# y, tmp1784
	movl	-1056(%rbp), %ecx	# pic_pix_y, tmp1785
	addl	%edx, %ecx	# tmp1784, D.10402
	movl	-1004(%rbp), %edx	# block4x4_y, tmp1786
	addl	%ecx, %edx	# D.10402, D.10402
	movslq	%edx, %rdx	# D.10402, D.10404
	salq	$3, %rdx	#, D.10404
	addq	%rdx, %rax	# D.10404, D.10408
	movq	(%rax), %rax	# *_869, D.10409
	movl	-1100(%rbp), %edx	# x, tmp1787
	movl	-1060(%rbp), %ecx	# pic_pix_x, tmp1788
	addl	%edx, %ecx	# tmp1787, D.10402
	movl	-1008(%rbp), %edx	# block4x4_x, tmp1789
	addl	%ecx, %edx	# D.10402, D.10402
	movslq	%edx, %rdx	# D.10402, D.10404
	addq	%rdx, %rdx	# D.10404
	addq	%rdx, %rax	# D.10404, D.10409
	movzwl	(%rax), %eax	# *_875, D.10410
	movzwl	%ax, %eax	# D.10410, D.10402
	movl	-1100(%rbp), %edx	# x, tmp1791
	movslq	%edx, %rdx	# tmp1791, tmp1790
	movl	-1072(%rbp), %ecx	# b4, tmp1793
	movslq	%ecx, %rcx	# tmp1793, tmp1792
	movl	-1112(%rbp), %esi	# i, tmp1795
	movslq	%esi, %rsi	# tmp1795, tmp1794
	salq	$2, %rsi	#, tmp1796
	addq	%rcx, %rsi	# tmp1792, tmp1797
	movl	-1096(%rbp), %ecx	# y, tmp1799
	movslq	%ecx, %rcx	# tmp1799, tmp1798
	salq	$2, %rsi	#, tmp1800
	addq	%rsi, %rcx	# tmp1800, tmp1801
	salq	$2, %rcx	#, tmp1802
	addq	%rcx, %rdx	# tmp1802, tmp1803
	movl	%eax, -528(%rbp,%rdx,4)	# D.10402, rec8x8_c
	addl	$1, -1100(%rbp)	#, x
.L110:
	.loc 1 471 0 discriminator 1
	cmpl	$3, -1100(%rbp)	#, x
	jle	.L111	#,
	.loc 1 470 0 is_stmt 1
	addl	$1, -1096(%rbp)	#, y
.L109:
	.loc 1 470 0 is_stmt 0 discriminator 1
	cmpl	$3, -1096(%rbp)	#, y
	jle	.L112	#,
	.loc 1 465 0 is_stmt 1
	addl	$1, -1112(%rbp)	#, i
.L108:
	.loc 1 465 0 is_stmt 0 discriminator 1
	cmpl	$1, -1112(%rbp)	#, i
	jle	.L113	#,
	.loc 1 455 0 is_stmt 1
	addl	$1, -1072(%rbp)	#, b4
.L99:
	.loc 1 455 0 is_stmt 0 discriminator 1
	cmpl	$3, -1072(%rbp)	#, b4
	jle	.L114	#,
	.loc 1 476 0 is_stmt 1
	movl	$0, -1096(%rbp)	#, y
	jmp	.L115	#
.L118:
	.loc 1 477 0
	movl	$0, -1100(%rbp)	#, x
	jmp	.L116	#
.L117:
	.loc 1 478 0 discriminator 2
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.78
	movq	6424(%rax), %rax	# enc_picture.78_884->imgY, D.10408
	movl	-1096(%rbp), %edx	# y, tmp1804
	movl	-1056(%rbp), %ecx	# pic_pix_y, tmp1805
	addl	%ecx, %edx	# tmp1805, D.10402
	movslq	%edx, %rdx	# D.10402, D.10404
	salq	$3, %rdx	#, D.10404
	addq	%rdx, %rax	# D.10404, D.10408
	movq	(%rax), %rax	# *_889, D.10409
	movl	-1100(%rbp), %edx	# x, tmp1806
	movl	-1060(%rbp), %ecx	# pic_pix_x, tmp1807
	addl	%ecx, %edx	# tmp1807, D.10402
	movslq	%edx, %rdx	# D.10402, D.10404
	addq	%rdx, %rdx	# D.10404
	addq	%rdx, %rax	# D.10404, D.10409
	movzwl	(%rax), %eax	# *_894, D.10410
	movl	-1100(%rbp), %edx	# x, tmp1809
	movslq	%edx, %rdx	# tmp1809, tmp1808
	movl	-1096(%rbp), %ecx	# y, tmp1811
	movslq	%ecx, %rcx	# tmp1811, tmp1810
	salq	$3, %rcx	#, tmp1812
	addq	%rcx, %rdx	# tmp1812, tmp1813
	movw	%ax, -912(%rbp,%rdx,2)	# D.10410, rec8x8
	.loc 1 477 0 discriminator 2
	addl	$1, -1100(%rbp)	#, x
.L116:
	.loc 1 477 0 is_stmt 0 discriminator 1
	cmpl	$7, -1100(%rbp)	#, x
	jle	.L117	#,
	.loc 1 476 0 is_stmt 1
	addl	$1, -1096(%rbp)	#, y
.L115:
	.loc 1 476 0 is_stmt 0 discriminator 1
	cmpl	$7, -1096(%rbp)	#, y
	jle	.L118	#,
	.loc 1 481 0 is_stmt 1
	movl	-1136(%rbp), %eax	# c_nz, tmp1814
	movl	%eax, -1092(%rbp)	# tmp1814, nonzero
	.loc 1 484 0
	movq	-992(%rbp), %rax	# rdcost, tmp1815
	movq	%rax, -1000(%rbp)	# tmp1815, min_rdcost
	.loc 1 485 0
	movl	-1120(%rbp), %eax	# ipmode, tmp1816
	movl	%eax, -1116(%rbp)	# tmp1816, best_ipmode
.L32:
	.loc 1 302 0
	addl	$1, -1120(%rbp)	#, ipmode
.L26:
	.loc 1 302 0 is_stmt 0 discriminator 1
	cmpl	$8, -1120(%rbp)	#, ipmode
	jle	.L119	#,
	.loc 1 493 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.79
	movq	112(%rax), %rax	# img.79_902->ipredmode8x8, D.10407
	movl	-1044(%rbp), %edx	# pic_block_x, tmp1817
	movslq	%edx, %rdx	# tmp1817, D.10404
	salq	$3, %rdx	#, D.10404
	addq	%rdx, %rax	# D.10404, D.10407
	movq	(%rax), %rax	# *_906, D.10405
	movl	-1040(%rbp), %edx	# pic_block_y, tmp1818
	movslq	%edx, %rdx	# tmp1818, D.10404
	salq	$2, %rdx	#, D.10404
	addq	%rax, %rdx	# D.10405, D.10405
	movl	-1116(%rbp), %eax	# best_ipmode, tmp1819
	movl	%eax, (%rdx)	# tmp1819, *_910
	.loc 1 494 0
	movq	img(%rip), %rax	# img, img.80
	movq	14168(%rax), %rdx	# img.80_911->mb_data, D.10403
	movq	img(%rip), %rax	# img, img.81
	movl	12(%rax), %eax	# img.81_913->current_mb_nr, D.10402
	cltq
	imulq	$632, %rax, %rax	#, D.10404, D.10404
	addq	%rax, %rdx	# D.10404, D.10403
	movl	-1156(%rbp), %eax	# b8, tmp1820
	leal	0(,%rax,4), %ecx	#, D.10402
	movl	-1032(%rbp), %eax	# mostProbableMode, tmp1821
	cmpl	-1116(%rbp), %eax	# best_ipmode, tmp1821
	je	.L120	#,
	.loc 1 494 0 is_stmt 0 discriminator 1
	movl	-1116(%rbp), %eax	# best_ipmode, tmp1822
	cmpl	-1032(%rbp), %eax	# mostProbableMode, tmp1822
	jl	.L121	#,
	movl	-1116(%rbp), %eax	# best_ipmode, tmp1823
	subl	$1, %eax	#, iftmp.83
	jmp	.L123	#
.L121:
	.loc 1 494 0 discriminator 2
	movl	-1116(%rbp), %eax	# best_ipmode, iftmp.83
	jmp	.L123	#
.L120:
	movl	$-1, %eax	#, iftmp.82
.L123:
	.loc 1 494 0 discriminator 3
	movslq	%ecx, %rcx	# D.10402, tmp1824
	addq	$96, %rcx	#, tmp1825
	movl	%eax, 12(%rdx,%rcx,4)	# iftmp.82, _917->intra_pred_modes8x8
	.loc 1 496 0 is_stmt 1 discriminator 3
	movl	$0, -1108(%rbp)	#, j
	jmp	.L124	#
.L127:
	.loc 1 497 0
	movl	$0, -1112(%rbp)	#, i
	jmp	.L125	#
.L126:
	.loc 1 498 0 discriminator 2
	movq	img(%rip), %rax	# img, img.84
	movq	112(%rax), %rcx	# img.84_925->ipredmode8x8, D.10407
	movq	img(%rip), %rax	# img, img.85
	movl	136(%rax), %eax	# img.85_927->mb_x, D.10402
	leal	0(,%rax,4), %edx	#, D.10402
	movl	-1112(%rbp), %eax	# i, tmp1826
	leal	(%rdx,%rax), %esi	#, D.10402
	movl	-1156(%rbp), %eax	# b8, tmp1827
	cltd
	shrl	$31, %edx	#, tmp1829
	addl	%edx, %eax	# tmp1829, tmp1830
	andl	$1, %eax	#, tmp1831
	subl	%edx, %eax	# tmp1829, tmp1832
	addl	%eax, %eax	# D.10402
	addl	%esi, %eax	# D.10402, D.10402
	cltq
	salq	$3, %rax	#, D.10404
	addq	%rcx, %rax	# D.10407, D.10407
	movq	(%rax), %rdx	# *_936, D.10405
	movq	img(%rip), %rax	# img, img.86
	movl	140(%rax), %eax	# img.86_938->mb_y, D.10402
	leal	0(,%rax,4), %ecx	#, D.10402
	movl	-1108(%rbp), %eax	# j, tmp1833
	addl	%eax, %ecx	# tmp1833, D.10402
	movl	-1156(%rbp), %eax	# b8, tmp1834
	movl	%eax, %esi	# tmp1834, tmp1835
	shrl	$31, %esi	#, tmp1835
	addl	%esi, %eax	# tmp1835, tmp1836
	sarl	%eax	# tmp1837
	addl	%eax, %eax	# D.10402
	addl	%ecx, %eax	# D.10402, D.10402
	cltq
	salq	$2, %rax	#, D.10404
	addq	%rax, %rdx	# D.10404, D.10405
	movl	-1116(%rbp), %eax	# best_ipmode, tmp1838
	movl	%eax, (%rdx)	# tmp1838, *_947
	.loc 1 497 0 discriminator 2
	addl	$1, -1112(%rbp)	#, i
.L125:
	.loc 1 497 0 is_stmt 0 discriminator 1
	cmpl	$1, -1112(%rbp)	#, i
	jle	.L126	#,
	.loc 1 496 0 is_stmt 1
	addl	$1, -1108(%rbp)	#, j
.L124:
	.loc 1 496 0 is_stmt 0 discriminator 1
	cmpl	$1, -1108(%rbp)	#, j
	jle	.L127	#,
	.loc 1 501 0 is_stmt 1
	movq	input(%rip), %rax	# input, input.87
	movl	2464(%rax), %eax	# input.87_950->rdopt, D.10402
	testl	%eax, %eax	# D.10402
	jne	.L128	#,
	.loc 1 504 0
	movq	img(%rip), %rax	# img, img.88
	movl	72724(%rax), %eax	# img.88_952->residue_transform_flag, D.10402
	testl	%eax, %eax	# D.10402
	jne	.L129	#,
	.loc 1 507 0
	movl	$0, -1108(%rbp)	#, j
	jmp	.L130	#
.L133:
	.loc 1 508 0
	movl	$0, -1112(%rbp)	#, i
	jmp	.L131	#
.L132:
	.loc 1 510 0 discriminator 2
	movq	img(%rip), %rax	# img, img.89
	movl	-1112(%rbp), %edx	# i, tmp1839
	movl	-1068(%rbp), %ecx	# block_x, tmp1840
	leal	(%rcx,%rdx), %r8d	#, D.10402
	movl	-1108(%rbp), %edx	# j, tmp1841
	movl	-1064(%rbp), %ecx	# block_y, tmp1842
	leal	(%rcx,%rdx), %r9d	#, D.10402
	movq	img(%rip), %rdx	# img, img.90
	movl	-1112(%rbp), %ecx	# i, tmp1844
	movslq	%ecx, %rcx	# tmp1844, tmp1843
	movl	-1116(%rbp), %esi	# best_ipmode, tmp1846
	movslq	%esi, %rdi	# tmp1846, tmp1845
	movl	-1108(%rbp), %esi	# j, tmp1848
	movslq	%esi, %rsi	# tmp1848, tmp1847
	salq	$3, %rdi	#, tmp1849
	addq	%rdi, %rsi	# tmp1849, tmp1850
	salq	$3, %rsi	#, tmp1851
	addq	%rsi, %rcx	# tmp1851, tmp1852
	addq	$3672, %rcx	#, tmp1853
	movzwl	8(%rdx,%rcx,2), %edx	# img.90_959->mprr_3, D.10410
	movslq	%r9d, %rcx	# D.10402, tmp1854
	movslq	%r8d, %rsi	# D.10402, tmp1855
	salq	$4, %rsi	#, tmp1856
	addq	%rsi, %rcx	# tmp1856, tmp1857
	addq	$6296, %rcx	#, tmp1858
	movw	%dx, 8(%rax,%rcx,2)	# D.10410, img.89_956->mpr
	.loc 1 511 0 discriminator 2
	movq	img(%rip), %rax	# img, img.91
	movl	-1108(%rbp), %edx	# j, tmp1859
	movl	-1048(%rbp), %ecx	# pic_opix_y, tmp1860
	addl	%ecx, %edx	# tmp1860, D.10402
	movslq	%edx, %rdx	# D.10402, D.10404
	leaq	0(,%rdx,8), %rcx	#, D.10404
	movq	-984(%rbp), %rdx	# imgY_orig, tmp1861
	addq	%rcx, %rdx	# D.10404, D.10408
	movq	(%rdx), %rdx	# *_965, D.10409
	movl	-1112(%rbp), %ecx	# i, tmp1862
	movl	-1052(%rbp), %esi	# pic_opix_x, tmp1863
	addl	%esi, %ecx	# tmp1863, D.10402
	movslq	%ecx, %rcx	# D.10402, D.10404
	addq	%rcx, %rcx	# D.10404
	addq	%rcx, %rdx	# D.10404, D.10409
	movzwl	(%rdx), %edx	# *_970, D.10410
	movzwl	%dx, %ecx	# D.10410, D.10402
	movq	img(%rip), %rdx	# img, img.92
	movl	-1112(%rbp), %esi	# i, tmp1865
	movslq	%esi, %rsi	# tmp1865, tmp1864
	movl	-1116(%rbp), %edi	# best_ipmode, tmp1867
	movslq	%edi, %r8	# tmp1867, tmp1866
	movl	-1108(%rbp), %edi	# j, tmp1869
	movslq	%edi, %rdi	# tmp1869, tmp1868
	salq	$3, %r8	#, tmp1870
	addq	%r8, %rdi	# tmp1870, tmp1871
	salq	$3, %rdi	#, tmp1872
	addq	%rdi, %rsi	# tmp1872, tmp1873
	addq	$3672, %rsi	#, tmp1874
	movzwl	8(%rdx,%rsi,2), %edx	# img.92_973->mprr_3, D.10410
	movzwl	%dx, %edx	# D.10410, D.10402
	subl	%edx, %ecx	# D.10402, D.10402
	movl	-1108(%rbp), %edx	# j, tmp1876
	movslq	%edx, %rdx	# tmp1876, tmp1875
	movl	-1112(%rbp), %esi	# i, tmp1878
	movslq	%esi, %rsi	# tmp1878, tmp1877
	salq	$4, %rsi	#, tmp1879
	addq	%rsi, %rdx	# tmp1879, tmp1880
	addq	$3276, %rdx	#, tmp1881
	movl	%ecx, 8(%rax,%rdx,4)	# D.10402, img.91_961->m7
	.loc 1 508 0 discriminator 2
	addl	$1, -1112(%rbp)	#, i
.L131:
	.loc 1 508 0 is_stmt 0 discriminator 1
	cmpl	$7, -1112(%rbp)	#, i
	jle	.L132	#,
	.loc 1 507 0 is_stmt 1
	addl	$1, -1108(%rbp)	#, j
.L130:
	.loc 1 507 0 is_stmt 0 discriminator 1
	cmpl	$7, -1108(%rbp)	#, j
	jle	.L133	#,
	.loc 1 514 0 is_stmt 1
	leaq	-1140(%rbp), %rcx	#, tmp1882
	movl	-1156(%rbp), %eax	# b8, tmp1883
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp1882,
	movl	%eax, %edi	# tmp1883,
	call	dct_luma8x8	#
	movl	%eax, -1092(%rbp)	# tmp1884, nonzero
	jmp	.L134	#
.L129:
	.loc 1 518 0
	movl	$0, -1108(%rbp)	#, j
	jmp	.L135	#
.L138:
	.loc 1 519 0
	movl	$0, -1112(%rbp)	#, i
	jmp	.L136	#
.L137:
	.loc 1 521 0 discriminator 2
	movq	img(%rip), %rax	# img, img.93
	movl	-1112(%rbp), %edx	# i, tmp1885
	movl	-1068(%rbp), %ecx	# block_x, tmp1886
	leal	(%rcx,%rdx), %r8d	#, D.10402
	movl	-1108(%rbp), %edx	# j, tmp1887
	movl	-1064(%rbp), %ecx	# block_y, tmp1888
	leal	(%rcx,%rdx), %r9d	#, D.10402
	movq	img(%rip), %rdx	# img, img.94
	movl	-1112(%rbp), %ecx	# i, tmp1890
	movslq	%ecx, %rcx	# tmp1890, tmp1889
	movl	-1116(%rbp), %esi	# best_ipmode, tmp1892
	movslq	%esi, %rdi	# tmp1892, tmp1891
	movl	-1108(%rbp), %esi	# j, tmp1894
	movslq	%esi, %rsi	# tmp1894, tmp1893
	salq	$3, %rdi	#, tmp1895
	addq	%rdi, %rsi	# tmp1895, tmp1896
	salq	$3, %rsi	#, tmp1897
	addq	%rsi, %rcx	# tmp1897, tmp1898
	addq	$3672, %rcx	#, tmp1899
	movzwl	8(%rdx,%rcx,2), %edx	# img.94_985->mprr_3, D.10410
	movslq	%r9d, %rcx	# D.10402, tmp1900
	movslq	%r8d, %rsi	# D.10402, tmp1901
	salq	$4, %rsi	#, tmp1902
	addq	%rsi, %rcx	# tmp1902, tmp1903
	addq	$6296, %rcx	#, tmp1904
	movw	%dx, 8(%rax,%rcx,2)	# D.10410, img.93_982->mpr
	.loc 1 522 0 discriminator 2
	movq	imgUV_org(%rip), %rax	# imgUV_org, imgUV_org.95
	movq	(%rax), %rax	# *imgUV_org.95_987, D.10408
	movl	-1108(%rbp), %edx	# j, tmp1905
	movl	-1048(%rbp), %ecx	# pic_opix_y, tmp1906
	addl	%ecx, %edx	# tmp1906, D.10402
	movslq	%edx, %rdx	# D.10402, D.10404
	salq	$3, %rdx	#, D.10404
	addq	%rdx, %rax	# D.10404, D.10408
	movq	(%rax), %rax	# *_992, D.10409
	movl	-1112(%rbp), %edx	# i, tmp1907
	movl	-1052(%rbp), %ecx	# pic_opix_x, tmp1908
	addl	%ecx, %edx	# tmp1908, D.10402
	movslq	%edx, %rdx	# D.10402, D.10404
	addq	%rdx, %rdx	# D.10404
	addq	%rdx, %rax	# D.10404, D.10409
	movzwl	(%rax), %eax	# *_997, D.10410
	movzwl	%ax, %edx	# D.10410, D.10402
	movq	img(%rip), %rax	# img, img.96
	movl	-1112(%rbp), %ecx	# i, tmp1909
	movl	-1068(%rbp), %esi	# block_x, tmp1910
	leal	(%rsi,%rcx), %r8d	#, D.10402
	movl	-1108(%rbp), %ecx	# j, tmp1911
	movl	-1064(%rbp), %esi	# block_y, tmp1912
	addl	%esi, %ecx	# tmp1912, D.10402
	movslq	%ecx, %rcx	# D.10402, tmp1913
	movl	-1036(%rbp), %esi	# c_ipmode, tmp1915
	movslq	%esi, %rdi	# tmp1915, tmp1914
	movslq	%r8d, %rsi	# D.10402, tmp1916
	salq	$4, %rdi	#, tmp1917
	addq	%rdi, %rsi	# tmp1917, tmp1918
	salq	$4, %rsi	#, tmp1919
	addq	%rsi, %rcx	# tmp1919, tmp1920
	addq	$4248, %rcx	#, tmp1921
	movzwl	8(%rax,%rcx,2), %eax	# img.96_1000->mprr_c, D.10410
	movzwl	%ax, %eax	# D.10410, D.10402
	subl	%eax, %edx	# D.10402, tmp1922
	movl	%edx, %eax	# tmp1922, tmp1922
	movl	%eax, -1024(%rbp)	# tmp1922, residue_B
	.loc 1 523 0 discriminator 2
	movq	imgY_org(%rip), %rax	# imgY_org, imgY_org.97
	movl	-1108(%rbp), %edx	# j, tmp1923
	movl	-1048(%rbp), %ecx	# pic_opix_y, tmp1924
	addl	%ecx, %edx	# tmp1924, D.10402
	movslq	%edx, %rdx	# D.10402, D.10404
	salq	$3, %rdx	#, D.10404
	addq	%rdx, %rax	# D.10404, D.10408
	movq	(%rax), %rax	# *_1010, D.10409
	movl	-1112(%rbp), %edx	# i, tmp1925
	movl	-1052(%rbp), %ecx	# pic_opix_x, tmp1926
	addl	%ecx, %edx	# tmp1926, D.10402
	movslq	%edx, %rdx	# D.10402, D.10404
	addq	%rdx, %rdx	# D.10404
	addq	%rdx, %rax	# D.10404, D.10409
	movzwl	(%rax), %eax	# *_1015, D.10410
	movzwl	%ax, %edx	# D.10410, D.10402
	movq	img(%rip), %rax	# img, img.98
	movl	-1112(%rbp), %ecx	# i, tmp1928
	movslq	%ecx, %rcx	# tmp1928, tmp1927
	movl	-1116(%rbp), %esi	# best_ipmode, tmp1930
	movslq	%esi, %rdi	# tmp1930, tmp1929
	movl	-1108(%rbp), %esi	# j, tmp1932
	movslq	%esi, %rsi	# tmp1932, tmp1931
	salq	$3, %rdi	#, tmp1933
	addq	%rdi, %rsi	# tmp1933, tmp1934
	salq	$3, %rsi	#, tmp1935
	addq	%rsi, %rcx	# tmp1935, tmp1936
	addq	$3672, %rcx	#, tmp1937
	movzwl	8(%rax,%rcx,2), %eax	# img.98_1018->mprr_3, D.10410
	movzwl	%ax, %eax	# D.10410, D.10402
	subl	%eax, %edx	# D.10402, tmp1938
	movl	%edx, %eax	# tmp1938, tmp1938
	movl	%eax, -1020(%rbp)	# tmp1938, residue_G
	.loc 1 524 0 discriminator 2
	movq	imgUV_org(%rip), %rax	# imgUV_org, imgUV_org.99
	addq	$8, %rax	#, D.10414
	movq	(%rax), %rax	# *_1023, D.10408
	movl	-1108(%rbp), %edx	# j, tmp1939
	movl	-1048(%rbp), %ecx	# pic_opix_y, tmp1940
	addl	%ecx, %edx	# tmp1940, D.10402
	movslq	%edx, %rdx	# D.10402, D.10404
	salq	$3, %rdx	#, D.10404
	addq	%rdx, %rax	# D.10404, D.10408
	movq	(%rax), %rax	# *_1028, D.10409
	movl	-1112(%rbp), %edx	# i, tmp1941
	movl	-1052(%rbp), %ecx	# pic_opix_x, tmp1942
	addl	%ecx, %edx	# tmp1942, D.10402
	movslq	%edx, %rdx	# D.10402, D.10404
	addq	%rdx, %rdx	# D.10404
	addq	%rdx, %rax	# D.10404, D.10409
	movzwl	(%rax), %eax	# *_1033, D.10410
	movzwl	%ax, %edx	# D.10410, D.10402
	movq	img(%rip), %rax	# img, img.100
	movl	-1112(%rbp), %ecx	# i, tmp1943
	movl	-1068(%rbp), %esi	# block_x, tmp1944
	leal	(%rsi,%rcx), %r8d	#, D.10402
	movl	-1108(%rbp), %ecx	# j, tmp1945
	movl	-1064(%rbp), %esi	# block_y, tmp1946
	addl	%esi, %ecx	# tmp1946, D.10402
	movslq	%ecx, %rcx	# D.10402, tmp1947
	movl	-1036(%rbp), %esi	# c_ipmode, tmp1949
	movslq	%esi, %rdi	# tmp1949, tmp1948
	movslq	%r8d, %rsi	# D.10402, tmp1950
	salq	$4, %rdi	#, tmp1951
	addq	%rdi, %rsi	# tmp1951, tmp1952
	salq	$4, %rsi	#, tmp1953
	addq	%rsi, %rcx	# tmp1953, tmp1954
	addq	$5272, %rcx	#, tmp1955
	movzwl	8(%rax,%rcx,2), %eax	# img.100_1036->mprr_c, D.10410
	movzwl	%ax, %eax	# D.10410, D.10402
	subl	%eax, %edx	# D.10402, tmp1956
	movl	%edx, %eax	# tmp1956, tmp1956
	movl	%eax, -1016(%rbp)	# tmp1956, residue_R
	.loc 1 527 0 discriminator 2
	movl	-1024(%rbp), %eax	# residue_B, tmp1957
	movl	-1016(%rbp), %edx	# residue_R, tmp1958
	subl	%eax, %edx	# tmp1957, D.10402
	movl	-1108(%rbp), %eax	# j, tmp1960
	cltq
	movl	-1112(%rbp), %ecx	# i, tmp1962
	movslq	%ecx, %rcx	# tmp1962, tmp1961
	salq	$4, %rcx	#, tmp1963
	addq	%rcx, %rax	# tmp1963, tmp1964
	movl	%edx, resTrans_R(,%rax,4)	# D.10402, resTrans_R
	.loc 1 528 0 discriminator 2
	movl	-1108(%rbp), %eax	# j, tmp1966
	cltq
	movl	-1112(%rbp), %edx	# i, tmp1968
	movslq	%edx, %rdx	# tmp1968, tmp1967
	salq	$4, %rdx	#, tmp1969
	addq	%rdx, %rax	# tmp1969, tmp1970
	movl	resTrans_R(,%rax,4), %eax	# resTrans_R, D.10402
	sarl	%eax	# D.10402
	movl	%eax, %edx	# D.10402, D.10402
	movl	-1024(%rbp), %eax	# residue_B, tmp1974
	addl	%edx, %eax	# D.10402, tmp1973
	movl	%eax, -1012(%rbp)	# tmp1973, temp
	.loc 1 529 0 discriminator 2
	movl	-1012(%rbp), %eax	# temp, tmp1975
	movl	-1020(%rbp), %edx	# residue_G, tmp1976
	subl	%eax, %edx	# tmp1975, D.10402
	movl	-1108(%rbp), %eax	# j, tmp1978
	cltq
	movl	-1112(%rbp), %ecx	# i, tmp1980
	movslq	%ecx, %rcx	# tmp1980, tmp1979
	salq	$4, %rcx	#, tmp1981
	addq	%rcx, %rax	# tmp1981, tmp1982
	movl	%edx, resTrans_B(,%rax,4)	# D.10402, resTrans_B
	.loc 1 530 0 discriminator 2
	movl	-1108(%rbp), %eax	# j, tmp1984
	cltq
	movl	-1112(%rbp), %edx	# i, tmp1986
	movslq	%edx, %rdx	# tmp1986, tmp1985
	salq	$4, %rdx	#, tmp1987
	addq	%rdx, %rax	# tmp1987, tmp1988
	movl	resTrans_B(,%rax,4), %eax	# resTrans_B, D.10402
	sarl	%eax	# D.10402
	movl	%eax, %edx	# D.10402, D.10402
	movl	-1012(%rbp), %eax	# temp, tmp1989
	addl	%eax, %edx	# tmp1989, D.10402
	movl	-1108(%rbp), %eax	# j, tmp1991
	cltq
	movl	-1112(%rbp), %ecx	# i, tmp1993
	movslq	%ecx, %rcx	# tmp1993, tmp1992
	salq	$4, %rcx	#, tmp1994
	addq	%rcx, %rax	# tmp1994, tmp1995
	movl	%edx, resTrans_G(,%rax,4)	# D.10402, resTrans_G
	.loc 1 519 0 discriminator 2
	addl	$1, -1112(%rbp)	#, i
.L136:
	.loc 1 519 0 is_stmt 0 discriminator 1
	cmpl	$7, -1112(%rbp)	#, i
	jle	.L137	#,
	.loc 1 518 0 is_stmt 1
	addl	$1, -1108(%rbp)	#, j
.L135:
	.loc 1 518 0 is_stmt 0 discriminator 1
	cmpl	$7, -1108(%rbp)	#, j
	jle	.L138	#,
	.loc 1 533 0 is_stmt 1
	movl	$0, -1108(%rbp)	#, j
	jmp	.L139	#
.L142:
	.loc 1 534 0
	movl	$0, -1112(%rbp)	#, i
	jmp	.L140	#
.L141:
	.loc 1 536 0 discriminator 2
	movq	img(%rip), %rax	# img, img.101
	movl	-1108(%rbp), %edx	# j, tmp1997
	movslq	%edx, %rdx	# tmp1997, tmp1996
	movl	-1112(%rbp), %ecx	# i, tmp1999
	movslq	%ecx, %rcx	# tmp1999, tmp1998
	salq	$4, %rcx	#, tmp2000
	addq	%rcx, %rdx	# tmp2000, tmp2001
	movl	resTrans_G(,%rdx,4), %edx	# resTrans_G, D.10402
	movl	-1108(%rbp), %ecx	# j, tmp2003
	movslq	%ecx, %rcx	# tmp2003, tmp2002
	movl	-1112(%rbp), %esi	# i, tmp2005
	movslq	%esi, %rsi	# tmp2005, tmp2004
	salq	$4, %rsi	#, tmp2006
	addq	%rsi, %rcx	# tmp2006, tmp2007
	addq	$3276, %rcx	#, tmp2008
	movl	%edx, 8(%rax,%rcx,4)	# D.10402, img.101_1054->m7
	.loc 1 534 0 discriminator 2
	addl	$1, -1112(%rbp)	#, i
.L140:
	.loc 1 534 0 is_stmt 0 discriminator 1
	cmpl	$7, -1112(%rbp)	#, i
	jle	.L141	#,
	.loc 1 533 0 is_stmt 1
	addl	$1, -1108(%rbp)	#, j
.L139:
	.loc 1 533 0 is_stmt 0 discriminator 1
	cmpl	$7, -1108(%rbp)	#, j
	jle	.L142	#,
	.loc 1 539 0 is_stmt 1
	leaq	-1140(%rbp), %rcx	#, tmp2009
	movl	-1156(%rbp), %eax	# b8, tmp2010
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp2009,
	movl	%eax, %edi	# tmp2010,
	call	dct_luma8x8	#
	movl	%eax, -1092(%rbp)	# tmp2011, nonzero
	.loc 1 541 0
	movl	$0, -1108(%rbp)	#, j
	jmp	.L143	#
.L146:
	.loc 1 542 0
	movl	$0, -1112(%rbp)	#, i
	jmp	.L144	#
.L145:
	.loc 1 544 0 discriminator 2
	movq	img(%rip), %rax	# img, img.102
	movl	-1108(%rbp), %edx	# j, tmp2013
	movslq	%edx, %rdx	# tmp2013, tmp2012
	movl	-1112(%rbp), %ecx	# i, tmp2015
	movslq	%ecx, %rcx	# tmp2015, tmp2014
	salq	$4, %rcx	#, tmp2016
	addq	%rcx, %rdx	# tmp2016, tmp2017
	addq	$3276, %rdx	#, tmp2018
	movl	8(%rax,%rdx,4), %eax	# img.102_1061->m7, D.10402
	movl	-1108(%rbp), %edx	# j, tmp2020
	movslq	%edx, %rdx	# tmp2020, tmp2019
	movl	-1112(%rbp), %ecx	# i, tmp2022
	movslq	%ecx, %rcx	# tmp2022, tmp2021
	salq	$4, %rcx	#, tmp2023
	addq	%rcx, %rdx	# tmp2023, tmp2024
	movl	%eax, rec_resG(,%rdx,4)	# D.10402, rec_resG
	.loc 1 542 0 discriminator 2
	addl	$1, -1112(%rbp)	#, i
.L144:
	.loc 1 542 0 is_stmt 0 discriminator 1
	cmpl	$7, -1112(%rbp)	#, i
	jle	.L145	#,
	.loc 1 541 0 is_stmt 1
	addl	$1, -1108(%rbp)	#, j
.L143:
	.loc 1 541 0 is_stmt 0 discriminator 1
	cmpl	$7, -1108(%rbp)	#, j
	jle	.L146	#,
	.loc 1 547 0 is_stmt 1
	movl	$0, -1072(%rbp)	#, b4
	jmp	.L147	#
.L160:
	.loc 1 549 0
	movl	-1072(%rbp), %eax	# b4, tmp2025
	cltd
	shrl	$31, %edx	#, tmp2027
	addl	%edx, %eax	# tmp2027, tmp2028
	andl	$1, %eax	#, tmp2029
	subl	%edx, %eax	# tmp2027, tmp2030
	sall	$2, %eax	#, tmp2031
	movl	%eax, -1008(%rbp)	# tmp2031, block4x4_x
	.loc 1 550 0
	movl	-1072(%rbp), %eax	# b4, tmp2032
	movl	%eax, %edx	# tmp2032, tmp2033
	shrl	$31, %edx	#, tmp2033
	addl	%edx, %eax	# tmp2033, tmp2034
	sarl	%eax	# tmp2035
	sall	$2, %eax	#, tmp2036
	movl	%eax, -1004(%rbp)	# tmp2036, block4x4_y
	.loc 1 552 0
	movl	$0, -1108(%rbp)	#, j
	jmp	.L148	#
.L151:
	.loc 1 553 0
	movl	$0, -1112(%rbp)	#, i
	jmp	.L149	#
.L150:
	.loc 1 555 0 discriminator 2
	movq	img(%rip), %rax	# img, img.103
	movl	-1008(%rbp), %edx	# block4x4_x, tmp2037
	movl	-1112(%rbp), %ecx	# i, tmp2038
	leal	(%rcx,%rdx), %esi	#, D.10402
	movl	-1004(%rbp), %edx	# block4x4_y, tmp2039
	movl	-1108(%rbp), %ecx	# j, tmp2040
	addl	%ecx, %edx	# tmp2040, D.10402
	movslq	%edx, %rdx	# D.10402, tmp2041
	movslq	%esi, %rcx	# D.10402, tmp2042
	salq	$4, %rcx	#, tmp2043
	addq	%rcx, %rdx	# tmp2043, tmp2044
	movl	resTrans_R(,%rdx,4), %edx	# resTrans_R, D.10402
	movl	-1108(%rbp), %ecx	# j, tmp2046
	movslq	%ecx, %rcx	# tmp2046, tmp2045
	movl	-1112(%rbp), %esi	# i, tmp2048
	movslq	%esi, %rsi	# tmp2048, tmp2047
	salq	$4, %rsi	#, tmp2049
	addq	%rsi, %rcx	# tmp2049, tmp2050
	addq	$3276, %rcx	#, tmp2051
	movl	%edx, 8(%rax,%rcx,4)	# D.10402, img.103_1072->m7
	.loc 1 553 0 discriminator 2
	addl	$1, -1112(%rbp)	#, i
.L149:
	.loc 1 553 0 is_stmt 0 discriminator 1
	cmpl	$3, -1112(%rbp)	#, i
	jle	.L150	#,
	.loc 1 552 0 is_stmt 1
	addl	$1, -1108(%rbp)	#, j
.L148:
	.loc 1 552 0 is_stmt 0 discriminator 1
	cmpl	$3, -1108(%rbp)	#, j
	jle	.L151	#,
	.loc 1 557 0 is_stmt 1
	movl	-1156(%rbp), %eax	# b8, tmp2052
	cltd
	shrl	$31, %edx	#, tmp2054
	addl	%edx, %eax	# tmp2054, tmp2055
	andl	$1, %eax	#, tmp2056
	subl	%edx, %eax	# tmp2054, tmp2057
	leal	(%rax,%rax), %ecx	#, D.10402
	movl	-1072(%rbp), %eax	# b4, tmp2058
	cltd
	shrl	$31, %edx	#, tmp2060
	addl	%edx, %eax	# tmp2060, tmp2061
	andl	$1, %eax	#, tmp2062
	subl	%edx, %eax	# tmp2060, tmp2063
	leal	(%rcx,%rax), %ebx	#, D.10402
	movl	-1156(%rbp), %eax	# b8, tmp2064
	movl	%eax, %edx	# tmp2064, tmp2065
	shrl	$31, %edx	#, tmp2065
	addl	%edx, %eax	# tmp2065, tmp2066
	sarl	%eax	# tmp2067
	leal	(%rax,%rax), %edx	#, D.10402
	movl	-1072(%rbp), %eax	# b4, tmp2068
	movl	%eax, %ecx	# tmp2068, tmp2069
	shrl	$31, %ecx	#, tmp2069
	addl	%ecx, %eax	# tmp2069, tmp2070
	sarl	%eax	# tmp2071
	leal	(%rdx,%rax), %r12d	#, D.10402
	movl	-1156(%rbp), %eax	# b8, tmp2072
	leal	4(%rax), %ecx	#, D.10402
	movl	-1072(%rbp), %eax	# b4, tmp2073
	movl	%eax, %edx	# tmp2073,
	movl	%ecx, %esi	# D.10402,
	movl	$0, %edi	#,
	call	dct_chroma4x4	#
	movslq	%r12d, %rdx	# D.10402, tmp2074
	movslq	%ebx, %rcx	# D.10402, tmp2075
	salq	$2, %rcx	#, tmp2076
	addq	%rcx, %rdx	# tmp2076, tmp2077
	movl	%eax, cbp_chroma_block(,%rdx,4)	# D.10402, cbp_chroma_block
	.loc 1 558 0
	movl	-1156(%rbp), %eax	# b8, tmp2078
	cltd
	shrl	$31, %edx	#, tmp2080
	addl	%edx, %eax	# tmp2080, tmp2081
	andl	$1, %eax	#, tmp2082
	subl	%edx, %eax	# tmp2080, tmp2083
	leal	(%rax,%rax), %ecx	#, D.10402
	movl	-1072(%rbp), %eax	# b4, tmp2084
	cltd
	shrl	$31, %edx	#, tmp2086
	addl	%edx, %eax	# tmp2086, tmp2087
	andl	$1, %eax	#, tmp2088
	subl	%edx, %eax	# tmp2086, tmp2089
	addl	%eax, %ecx	# D.10402, D.10402
	movl	-1156(%rbp), %eax	# b8, tmp2090
	movl	%eax, %edx	# tmp2090, tmp2091
	shrl	$31, %edx	#, tmp2091
	addl	%edx, %eax	# tmp2091, tmp2092
	sarl	%eax	# tmp2093
	leal	(%rax,%rax), %edx	#, D.10402
	movl	-1072(%rbp), %eax	# b4, tmp2094
	movl	%eax, %esi	# tmp2094, tmp2095
	shrl	$31, %esi	#, tmp2095
	addl	%esi, %eax	# tmp2095, tmp2096
	sarl	%eax	# tmp2097
	leal	(%rdx,%rax), %esi	#, D.10402
	movl	-1156(%rbp), %eax	# b8, tmp2098
	cltd
	shrl	$31, %edx	#, tmp2100
	addl	%edx, %eax	# tmp2100, tmp2101
	andl	$1, %eax	#, tmp2102
	subl	%edx, %eax	# tmp2100, tmp2103
	leal	(%rax,%rax), %edi	#, D.10402
	movl	-1072(%rbp), %eax	# b4, tmp2104
	cltd
	shrl	$31, %edx	#, tmp2106
	addl	%edx, %eax	# tmp2106, tmp2107
	andl	$1, %eax	#, tmp2108
	subl	%edx, %eax	# tmp2106, tmp2109
	leal	(%rdi,%rax), %edx	#, D.10402
	movl	-1156(%rbp), %eax	# b8, tmp2110
	movl	%eax, %edi	# tmp2110, tmp2111
	shrl	$31, %edi	#, tmp2111
	addl	%edi, %eax	# tmp2111, tmp2112
	sarl	%eax	# tmp2113
	leal	(%rax,%rax), %edi	#, D.10402
	movl	-1072(%rbp), %eax	# b4, tmp2114
	movl	%eax, %r8d	# tmp2114, tmp2115
	shrl	$31, %r8d	#, tmp2115
	addl	%r8d, %eax	# tmp2115, tmp2116
	sarl	%eax	# tmp2117
	addl	%edi, %eax	# D.10402, D.10402
	cltq
	movslq	%edx, %rdx	# D.10402, tmp2119
	salq	$2, %rdx	#, tmp2120
	addq	%rdx, %rax	# tmp2120, tmp2121
	movl	dc_level_temp(,%rax,4), %eax	# dc_level_temp, D.10402
	movslq	%esi, %rdx	# D.10402, tmp2122
	movslq	%ecx, %rcx	# D.10402, tmp2123
	salq	$2, %rcx	#, tmp2124
	addq	%rcx, %rdx	# tmp2124, tmp2125
	movl	%eax, dc_level(,%rdx,4)	# D.10402, dc_level
	.loc 1 559 0
	movl	$0, -1108(%rbp)	#, j
	jmp	.L152	#
.L155:
	.loc 1 560 0
	movl	$0, -1112(%rbp)	#, i
	jmp	.L153	#
.L154:
	.loc 1 562 0 discriminator 2
	movl	-1008(%rbp), %eax	# block4x4_x, tmp2126
	movl	-1112(%rbp), %edx	# i, tmp2127
	leal	(%rdx,%rax), %esi	#, D.10402
	movl	-1004(%rbp), %eax	# block4x4_y, tmp2128
	movl	-1108(%rbp), %edx	# j, tmp2129
	leal	(%rdx,%rax), %edi	#, D.10402
	movq	img(%rip), %rax	# img, img.104
	movl	-1108(%rbp), %edx	# j, tmp2131
	movslq	%edx, %rdx	# tmp2131, tmp2130
	movl	-1112(%rbp), %ecx	# i, tmp2133
	movslq	%ecx, %rcx	# tmp2133, tmp2132
	salq	$4, %rcx	#, tmp2134
	addq	%rcx, %rdx	# tmp2134, tmp2135
	addq	$3276, %rdx	#, tmp2136
	movl	8(%rax,%rdx,4), %eax	# img.104_1109->m7, D.10402
	movslq	%edi, %rdx	# D.10402, tmp2137
	movslq	%esi, %rcx	# D.10402, tmp2138
	salq	$4, %rcx	#, tmp2139
	addq	%rcx, %rdx	# tmp2139, tmp2140
	movl	%eax, rec_resR(,%rdx,4)	# D.10402, rec_resR
	.loc 1 563 0 discriminator 2
	movq	img(%rip), %rax	# img, img.105
	movl	-1008(%rbp), %edx	# block4x4_x, tmp2141
	movl	-1112(%rbp), %ecx	# i, tmp2142
	leal	(%rcx,%rdx), %esi	#, D.10402
	movl	-1004(%rbp), %edx	# block4x4_y, tmp2143
	movl	-1108(%rbp), %ecx	# j, tmp2144
	addl	%ecx, %edx	# tmp2144, D.10402
	movslq	%edx, %rdx	# D.10402, tmp2145
	movslq	%esi, %rcx	# D.10402, tmp2146
	salq	$4, %rcx	#, tmp2147
	addq	%rcx, %rdx	# tmp2147, tmp2148
	movl	resTrans_B(,%rdx,4), %edx	# resTrans_B, D.10402
	movl	-1108(%rbp), %ecx	# j, tmp2150
	movslq	%ecx, %rcx	# tmp2150, tmp2149
	movl	-1112(%rbp), %esi	# i, tmp2152
	movslq	%esi, %rsi	# tmp2152, tmp2151
	salq	$4, %rsi	#, tmp2153
	addq	%rsi, %rcx	# tmp2153, tmp2154
	addq	$3276, %rcx	#, tmp2155
	movl	%edx, 8(%rax,%rcx,4)	# D.10402, img.105_1111->m7
	.loc 1 560 0 discriminator 2
	addl	$1, -1112(%rbp)	#, i
.L153:
	.loc 1 560 0 is_stmt 0 discriminator 1
	cmpl	$3, -1112(%rbp)	#, i
	jle	.L154	#,
	.loc 1 559 0 is_stmt 1
	addl	$1, -1108(%rbp)	#, j
.L152:
	.loc 1 559 0 is_stmt 0 discriminator 1
	cmpl	$3, -1108(%rbp)	#, j
	jle	.L155	#,
	.loc 1 565 0 is_stmt 1
	movl	-1156(%rbp), %eax	# b8, tmp2156
	cltd
	shrl	$31, %edx	#, tmp2158
	addl	%edx, %eax	# tmp2158, tmp2159
	andl	$1, %eax	#, tmp2160
	subl	%edx, %eax	# tmp2158, tmp2161
	leal	(%rax,%rax), %ecx	#, D.10402
	movl	-1072(%rbp), %eax	# b4, tmp2162
	cltd
	shrl	$31, %edx	#, tmp2164
	addl	%edx, %eax	# tmp2164, tmp2165
	andl	$1, %eax	#, tmp2166
	subl	%edx, %eax	# tmp2164, tmp2167
	leal	(%rcx,%rax), %ebx	#, D.10402
	movl	-1156(%rbp), %eax	# b8, tmp2168
	movl	%eax, %edx	# tmp2168, tmp2169
	shrl	$31, %edx	#, tmp2169
	addl	%edx, %eax	# tmp2169, tmp2170
	sarl	%eax	# tmp2171
	leal	(%rax,%rax), %edx	#, D.10402
	movl	-1072(%rbp), %eax	# b4, tmp2172
	movl	%eax, %ecx	# tmp2172, tmp2173
	shrl	$31, %ecx	#, tmp2173
	addl	%ecx, %eax	# tmp2173, tmp2174
	sarl	%eax	# tmp2175
	leal	(%rdx,%rax), %r12d	#, D.10402
	movl	-1156(%rbp), %eax	# b8, tmp2176
	leal	8(%rax), %ecx	#, D.10402
	movl	-1072(%rbp), %eax	# b4, tmp2177
	movl	%eax, %edx	# tmp2177,
	movl	%ecx, %esi	# D.10402,
	movl	$1, %edi	#,
	call	dct_chroma4x4	#
	movslq	%r12d, %rdx	# D.10402, tmp2178
	movslq	%ebx, %rcx	# D.10402, tmp2179
	salq	$2, %rcx	#, tmp2180
	addq	%rcx, %rdx	# tmp2180, tmp2181
	addq	$16, %rdx	#, tmp2182
	movl	%eax, cbp_chroma_block(,%rdx,4)	# D.10402, cbp_chroma_block
	.loc 1 566 0
	movl	-1156(%rbp), %eax	# b8, tmp2183
	cltd
	shrl	$31, %edx	#, tmp2185
	addl	%edx, %eax	# tmp2185, tmp2186
	andl	$1, %eax	#, tmp2187
	subl	%edx, %eax	# tmp2185, tmp2188
	leal	(%rax,%rax), %ecx	#, D.10402
	movl	-1072(%rbp), %eax	# b4, tmp2189
	cltd
	shrl	$31, %edx	#, tmp2191
	addl	%edx, %eax	# tmp2191, tmp2192
	andl	$1, %eax	#, tmp2193
	subl	%edx, %eax	# tmp2191, tmp2194
	addl	%eax, %ecx	# D.10402, D.10402
	movl	-1156(%rbp), %eax	# b8, tmp2195
	movl	%eax, %edx	# tmp2195, tmp2196
	shrl	$31, %edx	#, tmp2196
	addl	%edx, %eax	# tmp2196, tmp2197
	sarl	%eax	# tmp2198
	leal	(%rax,%rax), %edx	#, D.10402
	movl	-1072(%rbp), %eax	# b4, tmp2199
	movl	%eax, %esi	# tmp2199, tmp2200
	shrl	$31, %esi	#, tmp2200
	addl	%esi, %eax	# tmp2200, tmp2201
	sarl	%eax	# tmp2202
	leal	(%rdx,%rax), %esi	#, D.10402
	movl	-1156(%rbp), %eax	# b8, tmp2203
	cltd
	shrl	$31, %edx	#, tmp2205
	addl	%edx, %eax	# tmp2205, tmp2206
	andl	$1, %eax	#, tmp2207
	subl	%edx, %eax	# tmp2205, tmp2208
	leal	(%rax,%rax), %edi	#, D.10402
	movl	-1072(%rbp), %eax	# b4, tmp2209
	cltd
	shrl	$31, %edx	#, tmp2211
	addl	%edx, %eax	# tmp2211, tmp2212
	andl	$1, %eax	#, tmp2213
	subl	%edx, %eax	# tmp2211, tmp2214
	leal	(%rdi,%rax), %edx	#, D.10402
	movl	-1156(%rbp), %eax	# b8, tmp2215
	movl	%eax, %edi	# tmp2215, tmp2216
	shrl	$31, %edi	#, tmp2216
	addl	%edi, %eax	# tmp2216, tmp2217
	sarl	%eax	# tmp2218
	leal	(%rax,%rax), %edi	#, D.10402
	movl	-1072(%rbp), %eax	# b4, tmp2219
	movl	%eax, %r8d	# tmp2219, tmp2220
	shrl	$31, %r8d	#, tmp2220
	addl	%r8d, %eax	# tmp2220, tmp2221
	sarl	%eax	# tmp2222
	addl	%edi, %eax	# D.10402, D.10402
	cltq
	movslq	%edx, %rdx	# D.10402, tmp2224
	salq	$2, %rdx	#, tmp2225
	addq	%rdx, %rax	# tmp2225, tmp2226
	addq	$16, %rax	#, tmp2227
	movl	dc_level_temp(,%rax,4), %eax	# dc_level_temp, D.10402
	movslq	%esi, %rdx	# D.10402, tmp2228
	movslq	%ecx, %rcx	# D.10402, tmp2229
	salq	$2, %rcx	#, tmp2230
	addq	%rcx, %rdx	# tmp2230, tmp2231
	addq	$16, %rdx	#, tmp2232
	movl	%eax, dc_level(,%rdx,4)	# D.10402, dc_level
	.loc 1 567 0
	movl	$0, -1108(%rbp)	#, j
	jmp	.L156	#
.L159:
	.loc 1 568 0
	movl	$0, -1112(%rbp)	#, i
	jmp	.L157	#
.L158:
	.loc 1 570 0 discriminator 2
	movl	-1008(%rbp), %eax	# block4x4_x, tmp2233
	movl	-1112(%rbp), %edx	# i, tmp2234
	leal	(%rdx,%rax), %esi	#, D.10402
	movl	-1004(%rbp), %eax	# block4x4_y, tmp2235
	movl	-1108(%rbp), %edx	# j, tmp2236
	leal	(%rdx,%rax), %edi	#, D.10402
	movq	img(%rip), %rax	# img, img.106
	movl	-1108(%rbp), %edx	# j, tmp2238
	movslq	%edx, %rdx	# tmp2238, tmp2237
	movl	-1112(%rbp), %ecx	# i, tmp2240
	movslq	%ecx, %rcx	# tmp2240, tmp2239
	salq	$4, %rcx	#, tmp2241
	addq	%rcx, %rdx	# tmp2241, tmp2242
	addq	$3276, %rdx	#, tmp2243
	movl	8(%rax,%rdx,4), %eax	# img.106_1148->m7, D.10402
	movslq	%edi, %rdx	# D.10402, tmp2244
	movslq	%esi, %rcx	# D.10402, tmp2245
	salq	$4, %rcx	#, tmp2246
	addq	%rcx, %rdx	# tmp2246, tmp2247
	movl	%eax, rec_resB(,%rdx,4)	# D.10402, rec_resB
	.loc 1 568 0 discriminator 2
	addl	$1, -1112(%rbp)	#, i
.L157:
	.loc 1 568 0 is_stmt 0 discriminator 1
	cmpl	$3, -1112(%rbp)	#, i
	jle	.L158	#,
	.loc 1 567 0 is_stmt 1
	addl	$1, -1108(%rbp)	#, j
.L156:
	.loc 1 567 0 is_stmt 0 discriminator 1
	cmpl	$3, -1108(%rbp)	#, j
	jle	.L159	#,
	.loc 1 547 0 is_stmt 1
	addl	$1, -1072(%rbp)	#, b4
.L147:
	.loc 1 547 0 is_stmt 0 discriminator 1
	cmpl	$3, -1072(%rbp)	#, b4
	jle	.L160	#,
	.loc 1 574 0 is_stmt 1
	movl	$0, -1108(%rbp)	#, j
	jmp	.L161	#
.L164:
	.loc 1 575 0
	movl	$0, -1112(%rbp)	#, i
	jmp	.L162	#
.L163:
	.loc 1 578 0 discriminator 2
	movl	-1108(%rbp), %eax	# j, tmp2249
	cltq
	movl	-1112(%rbp), %edx	# i, tmp2251
	movslq	%edx, %rdx	# tmp2251, tmp2250
	salq	$4, %rdx	#, tmp2252
	addq	%rdx, %rax	# tmp2252, tmp2253
	movl	rec_resG(,%rax,4), %eax	# rec_resG, D.10402
	movl	-1108(%rbp), %edx	# j, tmp2255
	movslq	%edx, %rdx	# tmp2255, tmp2254
	movl	-1112(%rbp), %ecx	# i, tmp2257
	movslq	%ecx, %rcx	# tmp2257, tmp2256
	salq	$4, %rcx	#, tmp2258
	addq	%rcx, %rdx	# tmp2258, tmp2259
	movl	rec_resB(,%rdx,4), %edx	# rec_resB, D.10402
	sarl	%edx	# D.10402
	subl	%edx, %eax	# D.10402, tmp2260
	movl	%eax, -1012(%rbp)	# tmp2260, temp
	.loc 1 579 0 discriminator 2
	movl	-1108(%rbp), %eax	# j, tmp2262
	cltq
	movl	-1112(%rbp), %edx	# i, tmp2264
	movslq	%edx, %rdx	# tmp2264, tmp2263
	salq	$4, %rdx	#, tmp2265
	addq	%rdx, %rax	# tmp2265, tmp2266
	movl	rec_resB(,%rax,4), %edx	# rec_resB, D.10402
	movl	-1012(%rbp), %eax	# temp, tmp2270
	addl	%edx, %eax	# D.10402, tmp2269
	movl	%eax, -1020(%rbp)	# tmp2269, residue_G
	.loc 1 580 0 discriminator 2
	movl	-1108(%rbp), %eax	# j, tmp2272
	cltq
	movl	-1112(%rbp), %edx	# i, tmp2274
	movslq	%edx, %rdx	# tmp2274, tmp2273
	salq	$4, %rdx	#, tmp2275
	addq	%rdx, %rax	# tmp2275, tmp2276
	movl	rec_resR(,%rax,4), %eax	# rec_resR, D.10402
	sarl	%eax	# D.10402
	movl	%eax, %edx	# D.10402, D.10402
	movl	-1012(%rbp), %eax	# temp, tmp2280
	subl	%edx, %eax	# D.10402, tmp2279
	movl	%eax, -1024(%rbp)	# tmp2279, residue_B
	.loc 1 581 0 discriminator 2
	movl	-1108(%rbp), %eax	# j, tmp2282
	cltq
	movl	-1112(%rbp), %edx	# i, tmp2284
	movslq	%edx, %rdx	# tmp2284, tmp2283
	salq	$4, %rdx	#, tmp2285
	addq	%rdx, %rax	# tmp2285, tmp2286
	movl	rec_resR(,%rax,4), %edx	# rec_resR, D.10402
	movl	-1024(%rbp), %eax	# residue_B, tmp2290
	addl	%edx, %eax	# D.10402, tmp2289
	movl	%eax, -1016(%rbp)	# tmp2289, residue_R
	.loc 1 582 0 discriminator 2
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.107
	movq	6464(%rax), %rax	# enc_picture.107_1166->imgUV, D.10414
	movq	(%rax), %rax	# *_1167, D.10408
	movl	-1108(%rbp), %edx	# j, tmp2291
	movl	-1056(%rbp), %ecx	# pic_pix_y, tmp2292
	addl	%ecx, %edx	# tmp2292, D.10402
	movslq	%edx, %rdx	# D.10402, D.10404
	salq	$3, %rdx	#, D.10404
	addq	%rdx, %rax	# D.10404, D.10408
	movq	(%rax), %rax	# *_1172, D.10409
	movl	-1112(%rbp), %edx	# i, tmp2293
	movl	-1060(%rbp), %ecx	# pic_pix_x, tmp2294
	addl	%ecx, %edx	# tmp2294, D.10402
	movslq	%edx, %rdx	# D.10402, D.10404
	addq	%rdx, %rdx	# D.10404
	leaq	(%rax,%rdx), %rcx	#, D.10409
	movq	img(%rip), %rax	# img, img.108
	movl	-1112(%rbp), %edx	# i, tmp2295
	movl	-1068(%rbp), %esi	# block_x, tmp2296
	leal	(%rsi,%rdx), %r8d	#, D.10402
	movl	-1108(%rbp), %edx	# j, tmp2297
	movl	-1064(%rbp), %esi	# block_y, tmp2298
	addl	%esi, %edx	# tmp2298, D.10402
	movslq	%edx, %rdx	# D.10402, tmp2299
	movl	-1036(%rbp), %esi	# c_ipmode, tmp2301
	movslq	%esi, %rdi	# tmp2301, tmp2300
	movslq	%r8d, %rsi	# D.10402, tmp2302
	salq	$4, %rdi	#, tmp2303
	addq	%rdi, %rsi	# tmp2303, tmp2304
	salq	$4, %rsi	#, tmp2305
	addq	%rsi, %rdx	# tmp2305, tmp2306
	addq	$4248, %rdx	#, tmp2307
	movzwl	8(%rax,%rdx,2), %eax	# img.108_1178->mprr_c, D.10410
	movzwl	%ax, %edx	# D.10410, D.10402
	movl	-1024(%rbp), %eax	# residue_B, tmp2308
	addl	%edx, %eax	# D.10402, D.10402
	movl	$0, %edx	#, tmp2309
	testl	%eax, %eax	# D.10402
	cmovns	%eax, %edx	# D.10402,, D.10402
	movq	img(%rip), %rax	# img, img.109
	movl	72688(%rax), %eax	# img.109_1185->max_imgpel_value_uv, D.10402
	cmpl	%eax, %edx	# D.10402, D.10402
	cmovle	%edx, %eax	# D.10402,, D.10402
	movw	%ax, (%rcx)	# D.10410, *_1177
	.loc 1 583 0 discriminator 2
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.110
	movq	6424(%rax), %rax	# enc_picture.110_1189->imgY, D.10408
	movl	-1108(%rbp), %edx	# j, tmp2310
	movl	-1056(%rbp), %ecx	# pic_pix_y, tmp2311
	addl	%ecx, %edx	# tmp2311, D.10402
	movslq	%edx, %rdx	# D.10402, D.10404
	salq	$3, %rdx	#, D.10404
	addq	%rdx, %rax	# D.10404, D.10408
	movq	(%rax), %rax	# *_1194, D.10409
	movl	-1112(%rbp), %edx	# i, tmp2312
	movl	-1060(%rbp), %ecx	# pic_pix_x, tmp2313
	addl	%ecx, %edx	# tmp2313, D.10402
	movslq	%edx, %rdx	# D.10402, D.10404
	addq	%rdx, %rdx	# D.10404
	leaq	(%rax,%rdx), %rcx	#, D.10409
	movq	img(%rip), %rax	# img, img.111
	movl	-1112(%rbp), %edx	# i, tmp2315
	movslq	%edx, %rdx	# tmp2315, tmp2314
	movl	-1116(%rbp), %esi	# best_ipmode, tmp2317
	movslq	%esi, %rdi	# tmp2317, tmp2316
	movl	-1108(%rbp), %esi	# j, tmp2319
	movslq	%esi, %rsi	# tmp2319, tmp2318
	salq	$3, %rdi	#, tmp2320
	addq	%rdi, %rsi	# tmp2320, tmp2321
	salq	$3, %rsi	#, tmp2322
	addq	%rsi, %rdx	# tmp2322, tmp2323
	addq	$3672, %rdx	#, tmp2324
	movzwl	8(%rax,%rdx,2), %eax	# img.111_1200->mprr_3, D.10410
	movzwl	%ax, %edx	# D.10410, D.10402
	movl	-1020(%rbp), %eax	# residue_G, tmp2325
	addl	%edx, %eax	# D.10402, D.10402
	movl	$0, %edx	#, tmp2326
	testl	%eax, %eax	# D.10402
	cmovns	%eax, %edx	# D.10402,, D.10402
	movq	img(%rip), %rax	# img, img.112
	movl	72684(%rax), %eax	# img.112_1205->max_imgpel_value, D.10402
	cmpl	%eax, %edx	# D.10402, D.10402
	cmovle	%edx, %eax	# D.10402,, D.10402
	movw	%ax, (%rcx)	# D.10410, *_1199
	.loc 1 584 0 discriminator 2
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.113
	movq	6464(%rax), %rax	# enc_picture.113_1209->imgUV, D.10414
	addq	$8, %rax	#, D.10414
	movq	(%rax), %rax	# *_1211, D.10408
	movl	-1108(%rbp), %edx	# j, tmp2327
	movl	-1056(%rbp), %ecx	# pic_pix_y, tmp2328
	addl	%ecx, %edx	# tmp2328, D.10402
	movslq	%edx, %rdx	# D.10402, D.10404
	salq	$3, %rdx	#, D.10404
	addq	%rdx, %rax	# D.10404, D.10408
	movq	(%rax), %rax	# *_1216, D.10409
	movl	-1112(%rbp), %edx	# i, tmp2329
	movl	-1060(%rbp), %ecx	# pic_pix_x, tmp2330
	addl	%ecx, %edx	# tmp2330, D.10402
	movslq	%edx, %rdx	# D.10402, D.10404
	addq	%rdx, %rdx	# D.10404
	leaq	(%rax,%rdx), %rcx	#, D.10409
	movq	img(%rip), %rax	# img, img.114
	movl	-1112(%rbp), %edx	# i, tmp2331
	movl	-1068(%rbp), %esi	# block_x, tmp2332
	leal	(%rsi,%rdx), %r8d	#, D.10402
	movl	-1108(%rbp), %edx	# j, tmp2333
	movl	-1064(%rbp), %esi	# block_y, tmp2334
	addl	%esi, %edx	# tmp2334, D.10402
	movslq	%edx, %rdx	# D.10402, tmp2335
	movl	-1036(%rbp), %esi	# c_ipmode, tmp2337
	movslq	%esi, %rdi	# tmp2337, tmp2336
	movslq	%r8d, %rsi	# D.10402, tmp2338
	salq	$4, %rdi	#, tmp2339
	addq	%rdi, %rsi	# tmp2339, tmp2340
	salq	$4, %rsi	#, tmp2341
	addq	%rsi, %rdx	# tmp2341, tmp2342
	addq	$5272, %rdx	#, tmp2343
	movzwl	8(%rax,%rdx,2), %eax	# img.114_1222->mprr_c, D.10410
	movzwl	%ax, %edx	# D.10410, D.10402
	movl	-1016(%rbp), %eax	# residue_R, tmp2344
	addl	%edx, %eax	# D.10402, D.10402
	movl	$0, %edx	#, tmp2345
	testl	%eax, %eax	# D.10402
	cmovns	%eax, %edx	# D.10402,, D.10402
	movq	img(%rip), %rax	# img, img.115
	movl	72688(%rax), %eax	# img.115_1229->max_imgpel_value_uv, D.10402
	cmpl	%eax, %edx	# D.10402, D.10402
	cmovle	%edx, %eax	# D.10402,, D.10402
	movw	%ax, (%rcx)	# D.10410, *_1221
	.loc 1 575 0 discriminator 2
	addl	$1, -1112(%rbp)	#, i
.L162:
	.loc 1 575 0 is_stmt 0 discriminator 1
	cmpl	$7, -1112(%rbp)	#, i
	jle	.L163	#,
	.loc 1 574 0 is_stmt 1
	addl	$1, -1108(%rbp)	#, j
.L161:
	.loc 1 574 0 is_stmt 0 discriminator 1
	cmpl	$7, -1108(%rbp)	#, j
	jle	.L164	#,
	jmp	.L134	#
.L128:
	.loc 1 591 0 is_stmt 1
	movl	$0, -1108(%rbp)	#, j
	jmp	.L165	#
.L170:
	.loc 1 592 0
	movl	$0, -1112(%rbp)	#, i
	jmp	.L166	#
.L169:
	.loc 1 593 0
	movl	$0, -1104(%rbp)	#, k
	jmp	.L167	#
.L168:
	.loc 1 594 0 discriminator 2
	movq	img(%rip), %rax	# img, img.116
	movq	14136(%rax), %rax	# img.116_1238->cofAC, D.10412
	movl	-1156(%rbp), %edx	# b8, tmp2346
	movslq	%edx, %rdx	# tmp2346, D.10404
	salq	$3, %rdx	#, D.10404
	addq	%rdx, %rax	# D.10404, D.10412
	movq	(%rax), %rax	# *_1242, D.10413
	movl	-1104(%rbp), %edx	# k, tmp2347
	movslq	%edx, %rdx	# tmp2347, D.10404
	salq	$3, %rdx	#, D.10404
	addq	%rdx, %rax	# D.10404, D.10413
	movq	(%rax), %rax	# *_1246, D.10407
	movl	-1108(%rbp), %edx	# j, tmp2348
	movslq	%edx, %rdx	# tmp2348, D.10404
	salq	$3, %rdx	#, D.10404
	addq	%rdx, %rax	# D.10404, D.10407
	movq	(%rax), %rax	# *_1250, D.10405
	movl	-1112(%rbp), %edx	# i, tmp2349
	movslq	%edx, %rdx	# tmp2349, D.10404
	salq	$2, %rdx	#, D.10404
	addq	%rax, %rdx	# D.10405, D.10405
	movq	cofAC8x8(%rip), %rax	# cofAC8x8, cofAC8x8.117
	movl	-1156(%rbp), %ecx	# b8, tmp2350
	movslq	%ecx, %rcx	# tmp2350, D.10404
	salq	$3, %rcx	#, D.10404
	addq	%rcx, %rax	# D.10404, D.10412
	movq	(%rax), %rax	# *_1258, D.10413
	movl	-1104(%rbp), %ecx	# k, tmp2351
	movslq	%ecx, %rcx	# tmp2351, D.10404
	salq	$3, %rcx	#, D.10404
	addq	%rcx, %rax	# D.10404, D.10413
	movq	(%rax), %rax	# *_1262, D.10407
	movl	-1108(%rbp), %ecx	# j, tmp2352
	movslq	%ecx, %rcx	# tmp2352, D.10404
	salq	$3, %rcx	#, D.10404
	addq	%rcx, %rax	# D.10404, D.10407
	movq	(%rax), %rax	# *_1266, D.10405
	movl	-1112(%rbp), %ecx	# i, tmp2353
	movslq	%ecx, %rcx	# tmp2353, D.10404
	salq	$2, %rcx	#, D.10404
	addq	%rcx, %rax	# D.10404, D.10405
	movl	(%rax), %eax	# *_1270, D.10402
	movl	%eax, (%rdx)	# D.10402, *_1254
	.loc 1 593 0 discriminator 2
	addl	$1, -1104(%rbp)	#, k
.L167:
	.loc 1 593 0 is_stmt 0 discriminator 1
	cmpl	$3, -1104(%rbp)	#, k
	jle	.L168	#,
	.loc 1 592 0 is_stmt 1
	addl	$1, -1112(%rbp)	#, i
.L166:
	.loc 1 592 0 is_stmt 0 discriminator 1
	cmpl	$64, -1112(%rbp)	#, i
	jle	.L169	#,
	.loc 1 591 0 is_stmt 1
	addl	$1, -1108(%rbp)	#, j
.L165:
	.loc 1 591 0 is_stmt 0 discriminator 1
	cmpl	$1, -1108(%rbp)	#, j
	jle	.L170	#,
	.loc 1 597 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.118
	movl	72724(%rax), %eax	# img.118_1275->residue_transform_flag, D.10402
	testl	%eax, %eax	# D.10402
	je	.L171	#,
	.loc 1 598 0
	movl	$0, -1072(%rbp)	#, b4
	jmp	.L172	#
.L181:
	.loc 1 599 0
	movl	$0, -1108(%rbp)	#, j
	jmp	.L173	#
.L176:
	.loc 1 600 0
	movl	$0, -1112(%rbp)	#, i
	jmp	.L174	#
.L175:
	.loc 1 600 0 is_stmt 0 discriminator 2
	movq	img(%rip), %rax	# img, img.119
	movq	14136(%rax), %rax	# img.119_1280->cofAC, D.10412
	movl	-1156(%rbp), %edx	# b8, tmp2354
	movslq	%edx, %rdx	# tmp2354, D.10415
	addq	$4, %rdx	#, D.10415
	salq	$3, %rdx	#, D.10415
	addq	%rdx, %rax	# D.10415, D.10412
	movq	(%rax), %rax	# *_1285, D.10413
	movl	-1072(%rbp), %edx	# b4, tmp2355
	movslq	%edx, %rdx	# tmp2355, D.10404
	salq	$3, %rdx	#, D.10404
	addq	%rdx, %rax	# D.10404, D.10413
	movq	(%rax), %rax	# *_1289, D.10407
	movl	-1108(%rbp), %edx	# j, tmp2356
	movslq	%edx, %rdx	# tmp2356, D.10404
	salq	$3, %rdx	#, D.10404
	addq	%rdx, %rax	# D.10404, D.10407
	movq	(%rax), %rax	# *_1293, D.10405
	movl	-1112(%rbp), %edx	# i, tmp2357
	movslq	%edx, %rdx	# tmp2357, D.10404
	salq	$2, %rdx	#, D.10404
	leaq	(%rax,%rdx), %rsi	#, D.10405
	movl	-1112(%rbp), %eax	# i, tmp2359
	movslq	%eax, %rdi	# tmp2359, tmp2358
	movl	-1072(%rbp), %eax	# b4, tmp2361
	cltq
	movl	-1108(%rbp), %edx	# j, tmp2363
	movslq	%edx, %rcx	# tmp2363, tmp2362
	movq	%rax, %rdx	# tmp2360, tmp2364
	salq	$3, %rdx	#, tmp2364
	addq	%rax, %rdx	# tmp2360, tmp2364
	leaq	0(,%rdx,4), %rax	#, tmp2365
	movq	%rax, %rdx	# tmp2365, tmp2364
	movq	%rcx, %rax	# tmp2362, tmp2366
	salq	$3, %rax	#, tmp2366
	addq	%rcx, %rax	# tmp2362, tmp2366
	addq	%rax, %rax	# tmp2367
	addq	%rdx, %rax	# tmp2364, tmp2368
	addq	%rdi, %rax	# tmp2358, tmp2369
	movl	cofAC8x8_chroma(,%rax,4), %eax	# cofAC8x8_chroma, D.10402
	movl	%eax, (%rsi)	# D.10402, *_1297
	addl	$1, -1112(%rbp)	#, i
.L174:
	.loc 1 600 0 discriminator 1
	cmpl	$17, -1112(%rbp)	#, i
	jle	.L175	#,
	.loc 1 599 0 is_stmt 1
	addl	$1, -1108(%rbp)	#, j
.L173:
	.loc 1 599 0 is_stmt 0 discriminator 1
	cmpl	$1, -1108(%rbp)	#, j
	jle	.L176	#,
	.loc 1 601 0 is_stmt 1
	movl	$0, -1108(%rbp)	#, j
	jmp	.L177	#
.L180:
	.loc 1 602 0
	movl	$0, -1112(%rbp)	#, i
	jmp	.L178	#
.L179:
	.loc 1 602 0 is_stmt 0 discriminator 2
	movq	img(%rip), %rax	# img, img.120
	movq	14136(%rax), %rax	# img.120_1303->cofAC, D.10412
	movl	-1156(%rbp), %edx	# b8, tmp2370
	movslq	%edx, %rdx	# tmp2370, D.10415
	addq	$8, %rdx	#, D.10415
	salq	$3, %rdx	#, D.10415
	addq	%rdx, %rax	# D.10415, D.10412
	movq	(%rax), %rax	# *_1308, D.10413
	movl	-1072(%rbp), %edx	# b4, tmp2371
	movslq	%edx, %rdx	# tmp2371, D.10404
	salq	$3, %rdx	#, D.10404
	addq	%rdx, %rax	# D.10404, D.10413
	movq	(%rax), %rax	# *_1312, D.10407
	movl	-1108(%rbp), %edx	# j, tmp2372
	movslq	%edx, %rdx	# tmp2372, D.10404
	salq	$3, %rdx	#, D.10404
	addq	%rdx, %rax	# D.10404, D.10407
	movq	(%rax), %rax	# *_1316, D.10405
	movl	-1112(%rbp), %edx	# i, tmp2373
	movslq	%edx, %rdx	# tmp2373, D.10404
	salq	$2, %rdx	#, D.10404
	leaq	(%rax,%rdx), %rsi	#, D.10405
	movl	-1112(%rbp), %eax	# i, tmp2375
	movslq	%eax, %rdi	# tmp2375, tmp2374
	movl	-1072(%rbp), %eax	# b4, tmp2377
	cltq
	movl	-1108(%rbp), %edx	# j, tmp2379
	movslq	%edx, %rcx	# tmp2379, tmp2378
	movq	%rax, %rdx	# tmp2376, tmp2380
	salq	$3, %rdx	#, tmp2380
	addq	%rax, %rdx	# tmp2376, tmp2380
	leaq	0(,%rdx,4), %rax	#, tmp2381
	movq	%rax, %rdx	# tmp2381, tmp2380
	movq	%rcx, %rax	# tmp2378, tmp2382
	salq	$3, %rax	#, tmp2382
	addq	%rcx, %rax	# tmp2378, tmp2382
	addq	%rax, %rax	# tmp2383
	addq	%rdx, %rax	# tmp2380, tmp2384
	addq	%rdi, %rax	# tmp2374, tmp2385
	addq	$144, %rax	#, tmp2386
	movl	cofAC8x8_chroma(,%rax,4), %eax	# cofAC8x8_chroma, D.10402
	movl	%eax, (%rsi)	# D.10402, *_1320
	addl	$1, -1112(%rbp)	#, i
.L178:
	.loc 1 602 0 discriminator 1
	cmpl	$17, -1112(%rbp)	#, i
	jle	.L179	#,
	.loc 1 601 0 is_stmt 1
	addl	$1, -1108(%rbp)	#, j
.L177:
	.loc 1 601 0 is_stmt 0 discriminator 1
	cmpl	$1, -1108(%rbp)	#, j
	jle	.L180	#,
	.loc 1 598 0 is_stmt 1
	addl	$1, -1072(%rbp)	#, b4
.L172:
	.loc 1 598 0 is_stmt 0 discriminator 1
	cmpl	$3, -1072(%rbp)	#, b4
	jle	.L181	#,
.L171:
	.loc 1 606 0 is_stmt 1
	movl	$0, -1096(%rbp)	#, y
	jmp	.L182	#
.L185:
	.loc 1 607 0
	movl	$0, -1100(%rbp)	#, x
	jmp	.L183	#
.L184:
	.loc 1 609 0 discriminator 2
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.121
	movq	6424(%rax), %rax	# enc_picture.121_1327->imgY, D.10408
	movl	-1096(%rbp), %edx	# y, tmp2387
	movl	-1056(%rbp), %ecx	# pic_pix_y, tmp2388
	addl	%ecx, %edx	# tmp2388, D.10402
	movslq	%edx, %rdx	# D.10402, D.10404
	salq	$3, %rdx	#, D.10404
	addq	%rdx, %rax	# D.10404, D.10408
	movq	(%rax), %rax	# *_1332, D.10409
	movl	-1100(%rbp), %edx	# x, tmp2389
	movl	-1060(%rbp), %ecx	# pic_pix_x, tmp2390
	addl	%ecx, %edx	# tmp2390, D.10402
	movslq	%edx, %rdx	# D.10402, D.10404
	addq	%rdx, %rdx	# D.10404
	addq	%rax, %rdx	# D.10409, D.10409
	movl	-1100(%rbp), %eax	# x, tmp2392
	cltq
	movl	-1096(%rbp), %ecx	# y, tmp2394
	movslq	%ecx, %rcx	# tmp2394, tmp2393
	salq	$3, %rcx	#, tmp2395
	addq	%rcx, %rax	# tmp2395, tmp2396
	movzwl	-912(%rbp,%rax,2), %eax	# rec8x8, D.10410
	movw	%ax, (%rdx)	# D.10410, *_1337
	.loc 1 610 0 discriminator 2
	movq	img(%rip), %rax	# img, img.122
	movl	-1100(%rbp), %edx	# x, tmp2397
	movl	-1068(%rbp), %ecx	# block_x, tmp2398
	leal	(%rcx,%rdx), %r8d	#, D.10402
	movl	-1096(%rbp), %edx	# y, tmp2399
	movl	-1064(%rbp), %ecx	# block_y, tmp2400
	leal	(%rcx,%rdx), %r9d	#, D.10402
	movq	img(%rip), %rdx	# img, img.123
	movl	-1100(%rbp), %ecx	# x, tmp2402
	movslq	%ecx, %rcx	# tmp2402, tmp2401
	movl	-1116(%rbp), %esi	# best_ipmode, tmp2404
	movslq	%esi, %rdi	# tmp2404, tmp2403
	movl	-1096(%rbp), %esi	# y, tmp2406
	movslq	%esi, %rsi	# tmp2406, tmp2405
	salq	$3, %rdi	#, tmp2407
	addq	%rdi, %rsi	# tmp2407, tmp2408
	salq	$3, %rsi	#, tmp2409
	addq	%rsi, %rcx	# tmp2409, tmp2410
	addq	$3672, %rcx	#, tmp2411
	movzwl	8(%rdx,%rcx,2), %edx	# img.123_1342->mprr_3, D.10410
	movslq	%r9d, %rcx	# D.10402, tmp2412
	movslq	%r8d, %rsi	# D.10402, tmp2413
	salq	$4, %rsi	#, tmp2414
	addq	%rsi, %rcx	# tmp2414, tmp2415
	addq	$6296, %rcx	#, tmp2416
	movw	%dx, 8(%rax,%rcx,2)	# D.10410, img.122_1339->mpr
	.loc 1 607 0 discriminator 2
	addl	$1, -1100(%rbp)	#, x
.L183:
	.loc 1 607 0 is_stmt 0 discriminator 1
	cmpl	$7, -1100(%rbp)	#, x
	jle	.L184	#,
	.loc 1 606 0 is_stmt 1
	addl	$1, -1096(%rbp)	#, y
.L182:
	.loc 1 606 0 is_stmt 0 discriminator 1
	cmpl	$7, -1096(%rbp)	#, y
	jle	.L185	#,
	.loc 1 614 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.124
	movl	72724(%rax), %eax	# img.124_1346->residue_transform_flag, D.10402
	testl	%eax, %eax	# D.10402
	je	.L134	#,
	.loc 1 616 0
	movl	$0, -1072(%rbp)	#, b4
	jmp	.L186	#
.L193:
	.loc 1 618 0
	movl	-1072(%rbp), %eax	# b4, tmp2417
	cltd
	shrl	$31, %edx	#, tmp2419
	addl	%edx, %eax	# tmp2419, tmp2420
	andl	$1, %eax	#, tmp2421
	subl	%edx, %eax	# tmp2419, tmp2422
	sall	$2, %eax	#, tmp2423
	movl	%eax, -1008(%rbp)	# tmp2423, block4x4_x
	.loc 1 619 0
	movl	-1072(%rbp), %eax	# b4, tmp2424
	movl	%eax, %edx	# tmp2424, tmp2425
	shrl	$31, %edx	#, tmp2425
	addl	%edx, %eax	# tmp2425, tmp2426
	sarl	%eax	# tmp2427
	sall	$2, %eax	#, tmp2428
	movl	%eax, -1004(%rbp)	# tmp2428, block4x4_y
	.loc 1 620 0
	movl	$0, -1112(%rbp)	#, i
	jmp	.L187	#
.L192:
	.loc 1 623 0
	movl	$0, -1096(%rbp)	#, y
	jmp	.L188	#
.L191:
	.loc 1 624 0
	movl	$0, -1100(%rbp)	#, x
	jmp	.L189	#
.L190:
	.loc 1 624 0 is_stmt 0 discriminator 2
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.125
	movq	6464(%rax), %rax	# enc_picture.125_1356->imgUV, D.10414
	movl	-1112(%rbp), %edx	# i, tmp2429
	movslq	%edx, %rdx	# tmp2429, D.10404
	salq	$3, %rdx	#, D.10404
	addq	%rdx, %rax	# D.10404, D.10414
	movq	(%rax), %rax	# *_1360, D.10408
	movl	-1096(%rbp), %edx	# y, tmp2430
	movl	-1056(%rbp), %ecx	# pic_pix_y, tmp2431
	addl	%edx, %ecx	# tmp2430, D.10402
	movl	-1004(%rbp), %edx	# block4x4_y, tmp2432
	addl	%ecx, %edx	# D.10402, D.10402
	movslq	%edx, %rdx	# D.10402, D.10404
	salq	$3, %rdx	#, D.10404
	addq	%rdx, %rax	# D.10404, D.10408
	movq	(%rax), %rax	# *_1366, D.10409
	movl	-1100(%rbp), %edx	# x, tmp2433
	movl	-1060(%rbp), %ecx	# pic_pix_x, tmp2434
	addl	%edx, %ecx	# tmp2433, D.10402
	movl	-1008(%rbp), %edx	# block4x4_x, tmp2435
	addl	%ecx, %edx	# D.10402, D.10402
	movslq	%edx, %rdx	# D.10402, D.10404
	addq	%rdx, %rdx	# D.10404
	addq	%rax, %rdx	# D.10409, D.10409
	movl	-1100(%rbp), %eax	# x, tmp2437
	cltq
	movl	-1072(%rbp), %ecx	# b4, tmp2439
	movslq	%ecx, %rcx	# tmp2439, tmp2438
	movl	-1112(%rbp), %esi	# i, tmp2441
	movslq	%esi, %rsi	# tmp2441, tmp2440
	salq	$2, %rsi	#, tmp2442
	addq	%rcx, %rsi	# tmp2438, tmp2443
	movl	-1096(%rbp), %ecx	# y, tmp2445
	movslq	%ecx, %rcx	# tmp2445, tmp2444
	salq	$2, %rsi	#, tmp2446
	addq	%rsi, %rcx	# tmp2446, tmp2447
	salq	$2, %rcx	#, tmp2448
	addq	%rcx, %rax	# tmp2448, tmp2449
	movl	-528(%rbp,%rax,4), %eax	# rec8x8_c, D.10402
	movw	%ax, (%rdx)	# D.10410, *_1372
	addl	$1, -1100(%rbp)	#, x
.L189:
	.loc 1 624 0 discriminator 1
	cmpl	$3, -1100(%rbp)	#, x
	jle	.L190	#,
	.loc 1 623 0 is_stmt 1
	addl	$1, -1096(%rbp)	#, y
.L188:
	.loc 1 623 0 is_stmt 0 discriminator 1
	cmpl	$3, -1096(%rbp)	#, y
	jle	.L191	#,
	.loc 1 620 0 is_stmt 1
	addl	$1, -1112(%rbp)	#, i
.L187:
	.loc 1 620 0 is_stmt 0 discriminator 1
	cmpl	$1, -1112(%rbp)	#, i
	jle	.L192	#,
	.loc 1 616 0 is_stmt 1
	addl	$1, -1072(%rbp)	#, b4
.L186:
	.loc 1 616 0 is_stmt 0 discriminator 1
	cmpl	$3, -1072(%rbp)	#, b4
	jle	.L193	#,
.L134:
	.loc 1 630 0 is_stmt 1
	movl	-1092(%rbp), %eax	# nonzero, D.10402
	.loc 1 631 0
	addq	$1168, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	Mode_Decision_for_new_8x8IntraBlocks, .-Mode_Decision_for_new_8x8IntraBlocks
	.globl	intrapred_luma8x8
	.type	intrapred_luma8x8, @function
intrapred_luma8x8:
.LFB4:
	.loc 1 694 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r15	#
	pushq	%r14	#
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	subq	$552, %rsp	#,
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movl	%edi, -500(%rbp)	# img_x, img_x
	movl	%esi, -504(%rbp)	# img_y, img_y
	movq	%rdx, -512(%rbp)	# left_available, left_available
	movq	%rcx, -520(%rbp)	# up_available, up_available
	movq	%r8, -528(%rbp)	# all_available, all_available
	.loc 1 698 0
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.126
	movq	6424(%rax), %rax	# enc_picture.126_19->imgY, tmp2078
	movq	%rax, -456(%rbp)	# tmp2078, imgY
	.loc 1 700 0
	movl	-500(%rbp), %eax	# img_x, tmp2082
	andl	$15, %eax	#, tmp2081
	movl	%eax, -468(%rbp)	# tmp2081, ioff
	.loc 1 701 0
	movl	-504(%rbp), %eax	# img_y, tmp2086
	andl	$15, %eax	#, tmp2085
	movl	%eax, -464(%rbp)	# tmp2085, joff
	.loc 1 702 0
	movq	img(%rip), %rax	# img, img.127
	movl	12(%rax), %eax	# img.127_25->current_mb_nr, tmp2087
	movl	%eax, -460(%rbp)	# tmp2087, mb_nr
	.loc 1 712 0
	movl	$0, -496(%rbp)	#, i
	jmp	.L198	#
.L199:
	.loc 1 714 0 discriminator 2
	leaq	-240(%rbp), %rcx	#, tmp2088
	movl	-496(%rbp), %eax	# i, tmp2090
	movslq	%eax, %rdx	# tmp2090, tmp2089
	movq	%rdx, %rax	# tmp2089, tmp2091
	addq	%rax, %rax	# tmp2091
	addq	%rdx, %rax	# tmp2089, tmp2091
	salq	$3, %rax	#, tmp2092
	addq	%rax, %rcx	# tmp2091, D.10416
	movl	-496(%rbp), %eax	# i, tmp2093
	movl	-464(%rbp), %edx	# joff, tmp2094
	addl	%eax, %edx	# tmp2093, D.10417
	movl	-468(%rbp), %eax	# ioff, tmp2095
	leal	-1(%rax), %esi	#, D.10417
	movl	-460(%rbp), %eax	# mb_nr, tmp2096
	movq	%rcx, %r8	# D.10416,
	movl	$1, %ecx	#,
	movl	%eax, %edi	# tmp2096,
	call	getNeighbour	#
	.loc 1 712 0 discriminator 2
	addl	$1, -496(%rbp)	#, i
.L198:
	.loc 1 712 0 is_stmt 0 discriminator 1
	cmpl	$7, -496(%rbp)	#, i
	jle	.L199	#,
	.loc 1 717 0 is_stmt 1
	movl	-464(%rbp), %eax	# joff, tmp2097
	leal	-1(%rax), %edx	#, D.10417
	leaq	-448(%rbp), %rcx	#, tmp2098
	movl	-468(%rbp), %esi	# ioff, tmp2099
	movl	-460(%rbp), %eax	# mb_nr, tmp2100
	movq	%rcx, %r8	# tmp2098,
	movl	$1, %ecx	#,
	movl	%eax, %edi	# tmp2100,
	call	getNeighbour	#
	.loc 1 718 0
	movl	-464(%rbp), %eax	# joff, tmp2101
	leal	-1(%rax), %edx	#, D.10417
	movl	-468(%rbp), %eax	# ioff, tmp2102
	leal	8(%rax), %esi	#, D.10417
	leaq	-416(%rbp), %rcx	#, tmp2103
	movl	-460(%rbp), %eax	# mb_nr, tmp2104
	movq	%rcx, %r8	# tmp2103,
	movl	$1, %ecx	#,
	movl	%eax, %edi	# tmp2104,
	call	getNeighbour	#
	.loc 1 719 0
	movl	-464(%rbp), %eax	# joff, tmp2105
	leal	-1(%rax), %edx	#, D.10417
	movl	-468(%rbp), %eax	# ioff, tmp2106
	leal	-1(%rax), %esi	#, D.10417
	leaq	-384(%rbp), %rcx	#, tmp2107
	movl	-460(%rbp), %eax	# mb_nr, tmp2108
	movq	%rcx, %r8	# tmp2107,
	movl	$1, %ecx	#,
	movl	%eax, %edi	# tmp2108,
	call	getNeighbour	#
	.loc 1 721 0
	movl	-416(%rbp), %eax	# pix_c.available, D.10417
	testl	%eax, %eax	# D.10417
	je	.L200	#,
	.loc 1 721 0 is_stmt 0 discriminator 1
	cmpl	$8, -468(%rbp)	#, ioff
	jne	.L201	#,
	.loc 1 721 0 discriminator 4
	cmpl	$8, -464(%rbp)	#, joff
	je	.L200	#,
.L201:
	.loc 1 721 0 discriminator 3
	movl	$1, %eax	#, iftmp.128
	jmp	.L202	#
.L200:
	.loc 1 721 0 discriminator 2
	movl	$0, %eax	#, iftmp.128
.L202:
	.loc 1 721 0 discriminator 5
	movl	%eax, -416(%rbp)	# iftmp.128, pix_c.available
	.loc 1 723 0 is_stmt 1 discriminator 5
	movq	input(%rip), %rax	# input, input.129
	movl	216(%rax), %eax	# input.129_40->UseConstrainedIntraPred, D.10417
	testl	%eax, %eax	# D.10417
	je	.L203	#,
	.loc 1 725 0
	movl	$0, -496(%rbp)	#, i
	movl	$1, -480(%rbp)	#, block_available_left
	jmp	.L204	#
.L207:
	.loc 1 726 0
	movl	-496(%rbp), %eax	# i, tmp2110
	movslq	%eax, %rdx	# tmp2110, tmp2109
	movq	%rdx, %rax	# tmp2109, tmp2111
	addq	%rax, %rax	# tmp2111
	addq	%rdx, %rax	# tmp2109, tmp2111
	salq	$3, %rax	#, tmp2112
	leaq	-48(%rbp), %rbx	#, tmp2307
	addq	%rbx, %rax	# tmp2307, tmp2113
	subq	$192, %rax	#, tmp2114
	movl	(%rax), %eax	# pix_a[i_2].available, D.10417
	testl	%eax, %eax	# D.10417
	je	.L205	#,
	.loc 1 726 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.131
	movq	71784(%rax), %rcx	# img.131_45->intra_block, D.10418
	movl	-496(%rbp), %eax	# i, tmp2116
	movslq	%eax, %rdx	# tmp2116, tmp2115
	movq	%rdx, %rax	# tmp2115, tmp2117
	addq	%rax, %rax	# tmp2117
	addq	%rdx, %rax	# tmp2115, tmp2117
	salq	$3, %rax	#, tmp2118
	leaq	-48(%rbp), %rbx	#, tmp2308
	addq	%rbx, %rax	# tmp2308, tmp2119
	subq	$192, %rax	#, tmp2120
	movl	4(%rax), %eax	# pix_a[i_2].mb_addr, D.10417
	cltq
	salq	$2, %rax	#, D.10419
	addq	%rcx, %rax	# D.10418, D.10418
	movl	(%rax), %eax	# *_50, iftmp.130
	jmp	.L206	#
.L205:
	.loc 1 726 0 discriminator 2
	movl	$0, %eax	#, iftmp.130
.L206:
	.loc 1 726 0 discriminator 3
	andl	%eax, -480(%rbp)	# iftmp.130, block_available_left
	.loc 1 725 0 is_stmt 1 discriminator 3
	addl	$1, -496(%rbp)	#, i
.L204:
	.loc 1 725 0 is_stmt 0 discriminator 1
	cmpl	$7, -496(%rbp)	#, i
	jle	.L207	#,
	.loc 1 727 0 is_stmt 1
	movl	-448(%rbp), %eax	# pix_b.available, D.10417
	testl	%eax, %eax	# D.10417
	je	.L208	#,
	.loc 1 727 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.133
	movq	71784(%rax), %rax	# img.133_56->intra_block, D.10418
	movl	-444(%rbp), %edx	# pix_b.mb_addr, D.10417
	movslq	%edx, %rdx	# D.10417, D.10419
	salq	$2, %rdx	#, D.10419
	addq	%rdx, %rax	# D.10419, D.10418
	movl	(%rax), %eax	# *_61, iftmp.132
	jmp	.L209	#
.L208:
	.loc 1 727 0 discriminator 2
	movl	$0, %eax	#, iftmp.132
.L209:
	.loc 1 727 0 discriminator 3
	movl	%eax, -484(%rbp)	# iftmp.132, block_available_up
	.loc 1 728 0 is_stmt 1 discriminator 3
	movl	-416(%rbp), %eax	# pix_c.available, D.10417
	testl	%eax, %eax	# D.10417
	je	.L210	#,
	.loc 1 728 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.135
	movq	71784(%rax), %rax	# img.135_66->intra_block, D.10418
	movl	-412(%rbp), %edx	# pix_c.mb_addr, D.10417
	movslq	%edx, %rdx	# D.10417, D.10419
	salq	$2, %rdx	#, D.10419
	addq	%rdx, %rax	# D.10419, D.10418
	movl	(%rax), %eax	# *_71, iftmp.134
	jmp	.L211	#
.L210:
	.loc 1 728 0 discriminator 2
	movl	$0, %eax	#, iftmp.134
.L211:
	.loc 1 728 0 discriminator 3
	movl	%eax, -472(%rbp)	# iftmp.134, block_available_up_right
	.loc 1 729 0 is_stmt 1 discriminator 3
	movl	-384(%rbp), %eax	# pix_d.available, D.10417
	testl	%eax, %eax	# D.10417
	je	.L212	#,
	.loc 1 729 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.137
	movq	71784(%rax), %rax	# img.137_76->intra_block, D.10418
	movl	-380(%rbp), %edx	# pix_d.mb_addr, D.10417
	movslq	%edx, %rdx	# D.10417, D.10419
	salq	$2, %rdx	#, D.10419
	addq	%rdx, %rax	# D.10419, D.10418
	movl	(%rax), %eax	# *_81, iftmp.136
	jmp	.L213	#
.L212:
	.loc 1 729 0 discriminator 2
	movl	$0, %eax	#, iftmp.136
.L213:
	.loc 1 729 0 discriminator 1
	movl	%eax, -476(%rbp)	# iftmp.136, block_available_up_left
	jmp	.L214	#
.L203:
	.loc 1 733 0 is_stmt 1
	movl	-240(%rbp), %eax	# pix_a[0].available, tmp2121
	movl	%eax, -480(%rbp)	# tmp2121, block_available_left
	.loc 1 734 0
	movl	-448(%rbp), %eax	# pix_b.available, tmp2122
	movl	%eax, -484(%rbp)	# tmp2122, block_available_up
	.loc 1 735 0
	movl	-416(%rbp), %eax	# pix_c.available, tmp2123
	movl	%eax, -472(%rbp)	# tmp2123, block_available_up_right
	.loc 1 736 0
	movl	-384(%rbp), %eax	# pix_d.available, tmp2124
	movl	%eax, -476(%rbp)	# tmp2124, block_available_up_left
.L214:
	.loc 1 739 0
	movq	-512(%rbp), %rax	# left_available, tmp2125
	movl	-480(%rbp), %edx	# block_available_left, tmp2126
	movl	%edx, (%rax)	# tmp2126, *left_available_89(D)
	.loc 1 740 0
	movq	-520(%rbp), %rax	# up_available, tmp2127
	movl	-484(%rbp), %edx	# block_available_up, tmp2128
	movl	%edx, (%rax)	# tmp2128, *up_available_90(D)
	.loc 1 741 0
	cmpl	$0, -484(%rbp)	#, block_available_up
	je	.L215	#,
	.loc 1 741 0 is_stmt 0 discriminator 1
	cmpl	$0, -480(%rbp)	#, block_available_left
	je	.L215	#,
	cmpl	$0, -476(%rbp)	#, block_available_up_left
	je	.L215	#,
	.loc 1 741 0 discriminator 3
	movl	$1, %eax	#, iftmp.138
	jmp	.L216	#
.L215:
	.loc 1 741 0 discriminator 2
	movl	$0, %eax	#, iftmp.138
.L216:
	.loc 1 741 0 discriminator 4
	movq	-528(%rbp), %rdx	# all_available, tmp2129
	movl	%eax, (%rdx)	# iftmp.138, *all_available_93(D)
	.loc 1 743 0 is_stmt 1 discriminator 4
	movl	-500(%rbp), %eax	# img_x, tmp2133
	andl	$15, %eax	#, tmp2132
	movl	%eax, -496(%rbp)	# tmp2132, i
	.loc 1 744 0 discriminator 4
	movl	-504(%rbp), %eax	# img_y, tmp2137
	andl	$15, %eax	#, tmp2136
	movl	%eax, -492(%rbp)	# tmp2136, j
	.loc 1 748 0 discriminator 4
	cmpl	$0, -484(%rbp)	#, block_available_up
	je	.L217	#,
	.loc 1 750 0
	movl	-428(%rbp), %eax	# pix_b.pos_y, D.10417
	cltq
	leaq	0(,%rax,8), %rdx	#, D.10419
	movq	-456(%rbp), %rax	# imgY, tmp2138
	addq	%rdx, %rax	# D.10419, D.10420
	movq	(%rax), %rax	# *_99, D.10421
	movl	-432(%rbp), %edx	# pix_b.pos_x, D.10417
	movslq	%edx, %rdx	# D.10417, D.10419
	addq	%rdx, %rdx	# D.10419
	addq	%rdx, %rax	# D.10419, D.10421
	movzwl	(%rax), %eax	# *_104, D.10422
	movzwl	%ax, %eax	# D.10422, D.10417
	movl	%eax, -348(%rbp)	# D.10417, PredPel
	.loc 1 751 0
	movl	-428(%rbp), %eax	# pix_b.pos_y, D.10417
	cltq
	leaq	0(,%rax,8), %rdx	#, D.10419
	movq	-456(%rbp), %rax	# imgY, tmp2139
	addq	%rdx, %rax	# D.10419, D.10420
	movq	(%rax), %rax	# *_110, D.10421
	movl	-432(%rbp), %edx	# pix_b.pos_x, D.10417
	movslq	%edx, %rdx	# D.10417, D.10423
	addq	$1, %rdx	#, D.10423
	addq	%rdx, %rdx	# D.10423
	addq	%rdx, %rax	# D.10423, D.10421
	movzwl	(%rax), %eax	# *_116, D.10422
	movzwl	%ax, %eax	# D.10422, D.10417
	movl	%eax, -344(%rbp)	# D.10417, PredPel
	.loc 1 752 0
	movl	-428(%rbp), %eax	# pix_b.pos_y, D.10417
	cltq
	leaq	0(,%rax,8), %rdx	#, D.10419
	movq	-456(%rbp), %rax	# imgY, tmp2140
	addq	%rdx, %rax	# D.10419, D.10420
	movq	(%rax), %rax	# *_122, D.10421
	movl	-432(%rbp), %edx	# pix_b.pos_x, D.10417
	movslq	%edx, %rdx	# D.10417, D.10423
	addq	$2, %rdx	#, D.10423
	addq	%rdx, %rdx	# D.10423
	addq	%rdx, %rax	# D.10423, D.10421
	movzwl	(%rax), %eax	# *_128, D.10422
	movzwl	%ax, %eax	# D.10422, D.10417
	movl	%eax, -340(%rbp)	# D.10417, PredPel
	.loc 1 753 0
	movl	-428(%rbp), %eax	# pix_b.pos_y, D.10417
	cltq
	leaq	0(,%rax,8), %rdx	#, D.10419
	movq	-456(%rbp), %rax	# imgY, tmp2141
	addq	%rdx, %rax	# D.10419, D.10420
	movq	(%rax), %rax	# *_134, D.10421
	movl	-432(%rbp), %edx	# pix_b.pos_x, D.10417
	movslq	%edx, %rdx	# D.10417, D.10423
	addq	$3, %rdx	#, D.10423
	addq	%rdx, %rdx	# D.10423
	addq	%rdx, %rax	# D.10423, D.10421
	movzwl	(%rax), %eax	# *_140, D.10422
	movzwl	%ax, %eax	# D.10422, D.10417
	movl	%eax, -336(%rbp)	# D.10417, PredPel
	.loc 1 754 0
	movl	-428(%rbp), %eax	# pix_b.pos_y, D.10417
	cltq
	leaq	0(,%rax,8), %rdx	#, D.10419
	movq	-456(%rbp), %rax	# imgY, tmp2142
	addq	%rdx, %rax	# D.10419, D.10420
	movq	(%rax), %rax	# *_146, D.10421
	movl	-432(%rbp), %edx	# pix_b.pos_x, D.10417
	movslq	%edx, %rdx	# D.10417, D.10423
	addq	$4, %rdx	#, D.10423
	addq	%rdx, %rdx	# D.10423
	addq	%rdx, %rax	# D.10423, D.10421
	movzwl	(%rax), %eax	# *_152, D.10422
	movzwl	%ax, %eax	# D.10422, D.10417
	movl	%eax, -332(%rbp)	# D.10417, PredPel
	.loc 1 755 0
	movl	-428(%rbp), %eax	# pix_b.pos_y, D.10417
	cltq
	leaq	0(,%rax,8), %rdx	#, D.10419
	movq	-456(%rbp), %rax	# imgY, tmp2143
	addq	%rdx, %rax	# D.10419, D.10420
	movq	(%rax), %rax	# *_158, D.10421
	movl	-432(%rbp), %edx	# pix_b.pos_x, D.10417
	movslq	%edx, %rdx	# D.10417, D.10423
	addq	$5, %rdx	#, D.10423
	addq	%rdx, %rdx	# D.10423
	addq	%rdx, %rax	# D.10423, D.10421
	movzwl	(%rax), %eax	# *_164, D.10422
	movzwl	%ax, %eax	# D.10422, D.10417
	movl	%eax, -328(%rbp)	# D.10417, PredPel
	.loc 1 756 0
	movl	-428(%rbp), %eax	# pix_b.pos_y, D.10417
	cltq
	leaq	0(,%rax,8), %rdx	#, D.10419
	movq	-456(%rbp), %rax	# imgY, tmp2144
	addq	%rdx, %rax	# D.10419, D.10420
	movq	(%rax), %rax	# *_170, D.10421
	movl	-432(%rbp), %edx	# pix_b.pos_x, D.10417
	movslq	%edx, %rdx	# D.10417, D.10423
	addq	$6, %rdx	#, D.10423
	addq	%rdx, %rdx	# D.10423
	addq	%rdx, %rax	# D.10423, D.10421
	movzwl	(%rax), %eax	# *_176, D.10422
	movzwl	%ax, %eax	# D.10422, D.10417
	movl	%eax, -324(%rbp)	# D.10417, PredPel
	.loc 1 757 0
	movl	-428(%rbp), %eax	# pix_b.pos_y, D.10417
	cltq
	leaq	0(,%rax,8), %rdx	#, D.10419
	movq	-456(%rbp), %rax	# imgY, tmp2145
	addq	%rdx, %rax	# D.10419, D.10420
	movq	(%rax), %rax	# *_182, D.10421
	movl	-432(%rbp), %edx	# pix_b.pos_x, D.10417
	movslq	%edx, %rdx	# D.10417, D.10423
	addq	$7, %rdx	#, D.10423
	addq	%rdx, %rdx	# D.10423
	addq	%rdx, %rax	# D.10423, D.10421
	movzwl	(%rax), %eax	# *_188, D.10422
	movzwl	%ax, %eax	# D.10422, D.10417
	movl	%eax, -320(%rbp)	# D.10417, PredPel
	jmp	.L218	#
.L217:
	.loc 1 761 0
	movq	img(%rip), %rax	# img, img.139
	movl	72680(%rax), %eax	# img.139_191->dc_pred_value, D.10424
	movl	%eax, -320(%rbp)	# D.10417, PredPel
	movl	-320(%rbp), %eax	# PredPel, D.10417
	movl	%eax, -324(%rbp)	# D.10417, PredPel
	movl	-324(%rbp), %eax	# PredPel, D.10417
	movl	%eax, -328(%rbp)	# D.10417, PredPel
	movl	-328(%rbp), %eax	# PredPel, D.10417
	movl	%eax, -332(%rbp)	# D.10417, PredPel
	movl	-332(%rbp), %eax	# PredPel, D.10417
	movl	%eax, -336(%rbp)	# D.10417, PredPel
	movl	-336(%rbp), %eax	# PredPel, D.10417
	movl	%eax, -340(%rbp)	# D.10417, PredPel
	movl	-340(%rbp), %eax	# PredPel, D.10417
	movl	%eax, -344(%rbp)	# D.10417, PredPel
	movl	-344(%rbp), %eax	# PredPel, D.10417
	movl	%eax, -348(%rbp)	# D.10417, PredPel
.L218:
	.loc 1 764 0
	cmpl	$0, -472(%rbp)	#, block_available_up_right
	je	.L219	#,
	.loc 1 766 0
	movl	-396(%rbp), %eax	# pix_c.pos_y, D.10417
	cltq
	leaq	0(,%rax,8), %rdx	#, D.10419
	movq	-456(%rbp), %rax	# imgY, tmp2146
	addq	%rdx, %rax	# D.10419, D.10420
	movq	(%rax), %rax	# *_204, D.10421
	movl	-400(%rbp), %edx	# pix_c.pos_x, D.10417
	movslq	%edx, %rdx	# D.10417, D.10419
	addq	%rdx, %rdx	# D.10419
	addq	%rdx, %rax	# D.10419, D.10421
	movzwl	(%rax), %eax	# *_209, D.10422
	movzwl	%ax, %eax	# D.10422, D.10417
	movl	%eax, -316(%rbp)	# D.10417, PredPel
	.loc 1 767 0
	movl	-396(%rbp), %eax	# pix_c.pos_y, D.10417
	cltq
	leaq	0(,%rax,8), %rdx	#, D.10419
	movq	-456(%rbp), %rax	# imgY, tmp2147
	addq	%rdx, %rax	# D.10419, D.10420
	movq	(%rax), %rax	# *_215, D.10421
	movl	-400(%rbp), %edx	# pix_c.pos_x, D.10417
	movslq	%edx, %rdx	# D.10417, D.10423
	addq	$1, %rdx	#, D.10423
	addq	%rdx, %rdx	# D.10423
	addq	%rdx, %rax	# D.10423, D.10421
	movzwl	(%rax), %eax	# *_221, D.10422
	movzwl	%ax, %eax	# D.10422, D.10417
	movl	%eax, -312(%rbp)	# D.10417, PredPel
	.loc 1 768 0
	movl	-396(%rbp), %eax	# pix_c.pos_y, D.10417
	cltq
	leaq	0(,%rax,8), %rdx	#, D.10419
	movq	-456(%rbp), %rax	# imgY, tmp2148
	addq	%rdx, %rax	# D.10419, D.10420
	movq	(%rax), %rax	# *_227, D.10421
	movl	-400(%rbp), %edx	# pix_c.pos_x, D.10417
	movslq	%edx, %rdx	# D.10417, D.10423
	addq	$2, %rdx	#, D.10423
	addq	%rdx, %rdx	# D.10423
	addq	%rdx, %rax	# D.10423, D.10421
	movzwl	(%rax), %eax	# *_233, D.10422
	movzwl	%ax, %eax	# D.10422, D.10417
	movl	%eax, -308(%rbp)	# D.10417, PredPel
	.loc 1 769 0
	movl	-396(%rbp), %eax	# pix_c.pos_y, D.10417
	cltq
	leaq	0(,%rax,8), %rdx	#, D.10419
	movq	-456(%rbp), %rax	# imgY, tmp2149
	addq	%rdx, %rax	# D.10419, D.10420
	movq	(%rax), %rax	# *_239, D.10421
	movl	-400(%rbp), %edx	# pix_c.pos_x, D.10417
	movslq	%edx, %rdx	# D.10417, D.10423
	addq	$3, %rdx	#, D.10423
	addq	%rdx, %rdx	# D.10423
	addq	%rdx, %rax	# D.10423, D.10421
	movzwl	(%rax), %eax	# *_245, D.10422
	movzwl	%ax, %eax	# D.10422, D.10417
	movl	%eax, -304(%rbp)	# D.10417, PredPel
	.loc 1 770 0
	movl	-396(%rbp), %eax	# pix_c.pos_y, D.10417
	cltq
	leaq	0(,%rax,8), %rdx	#, D.10419
	movq	-456(%rbp), %rax	# imgY, tmp2150
	addq	%rdx, %rax	# D.10419, D.10420
	movq	(%rax), %rax	# *_251, D.10421
	movl	-400(%rbp), %edx	# pix_c.pos_x, D.10417
	movslq	%edx, %rdx	# D.10417, D.10423
	addq	$4, %rdx	#, D.10423
	addq	%rdx, %rdx	# D.10423
	addq	%rdx, %rax	# D.10423, D.10421
	movzwl	(%rax), %eax	# *_257, D.10422
	movzwl	%ax, %eax	# D.10422, D.10417
	movl	%eax, -300(%rbp)	# D.10417, PredPel
	.loc 1 771 0
	movl	-396(%rbp), %eax	# pix_c.pos_y, D.10417
	cltq
	leaq	0(,%rax,8), %rdx	#, D.10419
	movq	-456(%rbp), %rax	# imgY, tmp2151
	addq	%rdx, %rax	# D.10419, D.10420
	movq	(%rax), %rax	# *_263, D.10421
	movl	-400(%rbp), %edx	# pix_c.pos_x, D.10417
	movslq	%edx, %rdx	# D.10417, D.10423
	addq	$5, %rdx	#, D.10423
	addq	%rdx, %rdx	# D.10423
	addq	%rdx, %rax	# D.10423, D.10421
	movzwl	(%rax), %eax	# *_269, D.10422
	movzwl	%ax, %eax	# D.10422, D.10417
	movl	%eax, -296(%rbp)	# D.10417, PredPel
	.loc 1 772 0
	movl	-396(%rbp), %eax	# pix_c.pos_y, D.10417
	cltq
	leaq	0(,%rax,8), %rdx	#, D.10419
	movq	-456(%rbp), %rax	# imgY, tmp2152
	addq	%rdx, %rax	# D.10419, D.10420
	movq	(%rax), %rax	# *_275, D.10421
	movl	-400(%rbp), %edx	# pix_c.pos_x, D.10417
	movslq	%edx, %rdx	# D.10417, D.10423
	addq	$6, %rdx	#, D.10423
	addq	%rdx, %rdx	# D.10423
	addq	%rdx, %rax	# D.10423, D.10421
	movzwl	(%rax), %eax	# *_281, D.10422
	movzwl	%ax, %eax	# D.10422, D.10417
	movl	%eax, -292(%rbp)	# D.10417, PredPel
	.loc 1 773 0
	movl	-396(%rbp), %eax	# pix_c.pos_y, D.10417
	cltq
	leaq	0(,%rax,8), %rdx	#, D.10419
	movq	-456(%rbp), %rax	# imgY, tmp2153
	addq	%rdx, %rax	# D.10419, D.10420
	movq	(%rax), %rax	# *_287, D.10421
	movl	-400(%rbp), %edx	# pix_c.pos_x, D.10417
	movslq	%edx, %rdx	# D.10417, D.10423
	addq	$7, %rdx	#, D.10423
	addq	%rdx, %rdx	# D.10423
	addq	%rdx, %rax	# D.10423, D.10421
	movzwl	(%rax), %eax	# *_293, D.10422
	movzwl	%ax, %eax	# D.10422, D.10417
	movl	%eax, -288(%rbp)	# D.10417, PredPel
	jmp	.L220	#
.L219:
	.loc 1 778 0
	movl	-320(%rbp), %eax	# PredPel, D.10417
	movl	%eax, -288(%rbp)	# D.10417, PredPel
	movl	-288(%rbp), %eax	# PredPel, D.10417
	movl	%eax, -292(%rbp)	# D.10417, PredPel
	movl	-292(%rbp), %eax	# PredPel, D.10417
	movl	%eax, -296(%rbp)	# D.10417, PredPel
	movl	-296(%rbp), %eax	# PredPel, D.10417
	movl	%eax, -300(%rbp)	# D.10417, PredPel
	movl	-300(%rbp), %eax	# PredPel, D.10417
	movl	%eax, -304(%rbp)	# D.10417, PredPel
	movl	-304(%rbp), %eax	# PredPel, D.10417
	movl	%eax, -308(%rbp)	# D.10417, PredPel
	movl	-308(%rbp), %eax	# PredPel, D.10417
	movl	%eax, -312(%rbp)	# D.10417, PredPel
	movl	-312(%rbp), %eax	# PredPel, D.10417
	movl	%eax, -316(%rbp)	# D.10417, PredPel
.L220:
	.loc 1 781 0
	cmpl	$0, -480(%rbp)	#, block_available_left
	je	.L221	#,
	.loc 1 783 0
	movl	-220(%rbp), %eax	# pix_a[0].pos_y, D.10417
	cltq
	leaq	0(,%rax,8), %rdx	#, D.10419
	movq	-456(%rbp), %rax	# imgY, tmp2154
	addq	%rdx, %rax	# D.10419, D.10420
	movq	(%rax), %rax	# *_307, D.10421
	movl	-224(%rbp), %edx	# pix_a[0].pos_x, D.10417
	movslq	%edx, %rdx	# D.10417, D.10419
	addq	%rdx, %rdx	# D.10419
	addq	%rdx, %rax	# D.10419, D.10421
	movzwl	(%rax), %eax	# *_312, D.10422
	movzwl	%ax, %eax	# D.10422, D.10417
	movl	%eax, -284(%rbp)	# D.10417, PredPel
	.loc 1 784 0
	movl	-196(%rbp), %eax	# pix_a[1].pos_y, D.10417
	cltq
	leaq	0(,%rax,8), %rdx	#, D.10419
	movq	-456(%rbp), %rax	# imgY, tmp2155
	addq	%rdx, %rax	# D.10419, D.10420
	movq	(%rax), %rax	# *_318, D.10421
	movl	-200(%rbp), %edx	# pix_a[1].pos_x, D.10417
	movslq	%edx, %rdx	# D.10417, D.10419
	addq	%rdx, %rdx	# D.10419
	addq	%rdx, %rax	# D.10419, D.10421
	movzwl	(%rax), %eax	# *_323, D.10422
	movzwl	%ax, %eax	# D.10422, D.10417
	movl	%eax, -280(%rbp)	# D.10417, PredPel
	.loc 1 785 0
	movl	-172(%rbp), %eax	# pix_a[2].pos_y, D.10417
	cltq
	leaq	0(,%rax,8), %rdx	#, D.10419
	movq	-456(%rbp), %rax	# imgY, tmp2156
	addq	%rdx, %rax	# D.10419, D.10420
	movq	(%rax), %rax	# *_329, D.10421
	movl	-176(%rbp), %edx	# pix_a[2].pos_x, D.10417
	movslq	%edx, %rdx	# D.10417, D.10419
	addq	%rdx, %rdx	# D.10419
	addq	%rdx, %rax	# D.10419, D.10421
	movzwl	(%rax), %eax	# *_334, D.10422
	movzwl	%ax, %eax	# D.10422, D.10417
	movl	%eax, -276(%rbp)	# D.10417, PredPel
	.loc 1 786 0
	movl	-148(%rbp), %eax	# pix_a[3].pos_y, D.10417
	cltq
	leaq	0(,%rax,8), %rdx	#, D.10419
	movq	-456(%rbp), %rax	# imgY, tmp2157
	addq	%rdx, %rax	# D.10419, D.10420
	movq	(%rax), %rax	# *_340, D.10421
	movl	-152(%rbp), %edx	# pix_a[3].pos_x, D.10417
	movslq	%edx, %rdx	# D.10417, D.10419
	addq	%rdx, %rdx	# D.10419
	addq	%rdx, %rax	# D.10419, D.10421
	movzwl	(%rax), %eax	# *_345, D.10422
	movzwl	%ax, %eax	# D.10422, D.10417
	movl	%eax, -272(%rbp)	# D.10417, PredPel
	.loc 1 787 0
	movl	-124(%rbp), %eax	# pix_a[4].pos_y, D.10417
	cltq
	leaq	0(,%rax,8), %rdx	#, D.10419
	movq	-456(%rbp), %rax	# imgY, tmp2158
	addq	%rdx, %rax	# D.10419, D.10420
	movq	(%rax), %rax	# *_351, D.10421
	movl	-128(%rbp), %edx	# pix_a[4].pos_x, D.10417
	movslq	%edx, %rdx	# D.10417, D.10419
	addq	%rdx, %rdx	# D.10419
	addq	%rdx, %rax	# D.10419, D.10421
	movzwl	(%rax), %eax	# *_356, D.10422
	movzwl	%ax, %eax	# D.10422, D.10417
	movl	%eax, -268(%rbp)	# D.10417, PredPel
	.loc 1 788 0
	movl	-100(%rbp), %eax	# pix_a[5].pos_y, D.10417
	cltq
	leaq	0(,%rax,8), %rdx	#, D.10419
	movq	-456(%rbp), %rax	# imgY, tmp2159
	addq	%rdx, %rax	# D.10419, D.10420
	movq	(%rax), %rax	# *_362, D.10421
	movl	-104(%rbp), %edx	# pix_a[5].pos_x, D.10417
	movslq	%edx, %rdx	# D.10417, D.10419
	addq	%rdx, %rdx	# D.10419
	addq	%rdx, %rax	# D.10419, D.10421
	movzwl	(%rax), %eax	# *_367, D.10422
	movzwl	%ax, %eax	# D.10422, D.10417
	movl	%eax, -264(%rbp)	# D.10417, PredPel
	.loc 1 789 0
	movl	-76(%rbp), %eax	# pix_a[6].pos_y, D.10417
	cltq
	leaq	0(,%rax,8), %rdx	#, D.10419
	movq	-456(%rbp), %rax	# imgY, tmp2160
	addq	%rdx, %rax	# D.10419, D.10420
	movq	(%rax), %rax	# *_373, D.10421
	movl	-80(%rbp), %edx	# pix_a[6].pos_x, D.10417
	movslq	%edx, %rdx	# D.10417, D.10419
	addq	%rdx, %rdx	# D.10419
	addq	%rdx, %rax	# D.10419, D.10421
	movzwl	(%rax), %eax	# *_378, D.10422
	movzwl	%ax, %eax	# D.10422, D.10417
	movl	%eax, -260(%rbp)	# D.10417, PredPel
	.loc 1 790 0
	movl	-52(%rbp), %eax	# pix_a[7].pos_y, D.10417
	cltq
	leaq	0(,%rax,8), %rdx	#, D.10419
	movq	-456(%rbp), %rax	# imgY, tmp2161
	addq	%rdx, %rax	# D.10419, D.10420
	movq	(%rax), %rax	# *_384, D.10421
	movl	-56(%rbp), %edx	# pix_a[7].pos_x, D.10417
	movslq	%edx, %rdx	# D.10417, D.10419
	addq	%rdx, %rdx	# D.10419
	addq	%rdx, %rax	# D.10419, D.10421
	movzwl	(%rax), %eax	# *_389, D.10422
	movzwl	%ax, %eax	# D.10422, D.10417
	movl	%eax, -256(%rbp)	# D.10417, PredPel
	jmp	.L222	#
.L221:
	.loc 1 794 0
	movq	img(%rip), %rax	# img, img.140
	movl	72680(%rax), %eax	# img.140_392->dc_pred_value, D.10424
	movl	%eax, -256(%rbp)	# D.10417, PredPel
	movl	-256(%rbp), %eax	# PredPel, D.10417
	movl	%eax, -260(%rbp)	# D.10417, PredPel
	movl	-260(%rbp), %eax	# PredPel, D.10417
	movl	%eax, -264(%rbp)	# D.10417, PredPel
	movl	-264(%rbp), %eax	# PredPel, D.10417
	movl	%eax, -268(%rbp)	# D.10417, PredPel
	movl	-268(%rbp), %eax	# PredPel, D.10417
	movl	%eax, -272(%rbp)	# D.10417, PredPel
	movl	-272(%rbp), %eax	# PredPel, D.10417
	movl	%eax, -276(%rbp)	# D.10417, PredPel
	movl	-276(%rbp), %eax	# PredPel, D.10417
	movl	%eax, -280(%rbp)	# D.10417, PredPel
	movl	-280(%rbp), %eax	# PredPel, D.10417
	movl	%eax, -284(%rbp)	# D.10417, PredPel
.L222:
	.loc 1 797 0
	cmpl	$0, -476(%rbp)	#, block_available_up_left
	je	.L223	#,
	.loc 1 799 0
	movl	-364(%rbp), %eax	# pix_d.pos_y, D.10417
	cltq
	leaq	0(,%rax,8), %rdx	#, D.10419
	movq	-456(%rbp), %rax	# imgY, tmp2162
	addq	%rdx, %rax	# D.10419, D.10420
	movq	(%rax), %rax	# *_405, D.10421
	movl	-368(%rbp), %edx	# pix_d.pos_x, D.10417
	movslq	%edx, %rdx	# D.10417, D.10419
	addq	%rdx, %rdx	# D.10419
	addq	%rdx, %rax	# D.10419, D.10421
	movzwl	(%rax), %eax	# *_410, D.10422
	movzwl	%ax, %eax	# D.10422, D.10417
	movl	%eax, -352(%rbp)	# D.10417, PredPel
	jmp	.L224	#
.L223:
	.loc 1 803 0
	movq	img(%rip), %rax	# img, img.141
	movl	72680(%rax), %eax	# img.141_413->dc_pred_value, D.10424
	movl	%eax, -352(%rbp)	# D.10417, PredPel
.L224:
	.loc 1 806 0
	movl	$0, -496(%rbp)	#, i
	jmp	.L225	#
.L226:
	.loc 1 807 0 discriminator 2
	movq	img(%rip), %rax	# img, img.142
	movl	-496(%rbp), %edx	# i, tmp2164
	movslq	%edx, %rdx	# tmp2164, tmp2163
	salq	$7, %rdx	#, tmp2165
	addq	%rdx, %rax	# tmp2165, tmp2166
	addq	$7344, %rax	#, tmp2167
	movw	$-1, 8(%rax)	#, img.142_417->mprr_3
	.loc 1 806 0 discriminator 2
	addl	$1, -496(%rbp)	#, i
.L225:
	.loc 1 806 0 is_stmt 0 discriminator 1
	cmpl	$8, -496(%rbp)	#, i
	jle	.L226	#,
	.loc 1 809 0 is_stmt 1
	movl	-480(%rbp), %ecx	# block_available_left, tmp2168
	movl	-484(%rbp), %edx	# block_available_up, tmp2169
	movl	-476(%rbp), %esi	# block_available_up_left, tmp2170
	leaq	-352(%rbp), %rax	#, tmp2171
	movq	%rax, %rdi	# tmp2171,
	call	LowPassForIntra8x8Pred	#
	.loc 1 814 0
	movl	$0, -488(%rbp)	#, s0
	.loc 1 815 0
	cmpl	$0, -484(%rbp)	#, block_available_up
	je	.L227	#,
	.loc 1 815 0 is_stmt 0 discriminator 1
	cmpl	$0, -480(%rbp)	#, block_available_left
	je	.L227	#,
	.loc 1 818 0 is_stmt 1
	movl	-348(%rbp), %edx	# PredPel, D.10417
	movl	-344(%rbp), %eax	# PredPel, D.10417
	addl	%eax, %edx	# D.10417, D.10417
	movl	-340(%rbp), %eax	# PredPel, D.10417
	addl	%eax, %edx	# D.10417, D.10417
	movl	-336(%rbp), %eax	# PredPel, D.10417
	addl	%eax, %edx	# D.10417, D.10417
	movl	-332(%rbp), %eax	# PredPel, D.10417
	addl	%eax, %edx	# D.10417, D.10417
	movl	-328(%rbp), %eax	# PredPel, D.10417
	addl	%eax, %edx	# D.10417, D.10417
	movl	-324(%rbp), %eax	# PredPel, D.10417
	addl	%eax, %edx	# D.10417, D.10417
	movl	-320(%rbp), %eax	# PredPel, D.10417
	addl	%eax, %edx	# D.10417, D.10417
	movl	-284(%rbp), %eax	# PredPel, D.10417
	addl	%eax, %edx	# D.10417, D.10417
	movl	-280(%rbp), %eax	# PredPel, D.10417
	addl	%eax, %edx	# D.10417, D.10417
	movl	-276(%rbp), %eax	# PredPel, D.10417
	addl	%eax, %edx	# D.10417, D.10417
	movl	-272(%rbp), %eax	# PredPel, D.10417
	addl	%eax, %edx	# D.10417, D.10417
	movl	-268(%rbp), %eax	# PredPel, D.10417
	addl	%eax, %edx	# D.10417, D.10417
	movl	-264(%rbp), %eax	# PredPel, D.10417
	addl	%eax, %edx	# D.10417, D.10417
	movl	-260(%rbp), %eax	# PredPel, D.10417
	addl	%eax, %edx	# D.10417, D.10417
	movl	-256(%rbp), %eax	# PredPel, D.10417
	addl	%edx, %eax	# D.10417, D.10417
	addl	$8, %eax	#, D.10417
	sarl	$4, %eax	#, tmp2172
	movl	%eax, -488(%rbp)	# tmp2172, s0
	jmp	.L228	#
.L227:
	.loc 1 820 0
	cmpl	$0, -484(%rbp)	#, block_available_up
	jne	.L229	#,
	.loc 1 820 0 is_stmt 0 discriminator 1
	cmpl	$0, -480(%rbp)	#, block_available_left
	je	.L229	#,
	.loc 1 823 0 is_stmt 1
	movl	-284(%rbp), %edx	# PredPel, D.10417
	movl	-280(%rbp), %eax	# PredPel, D.10417
	addl	%eax, %edx	# D.10417, D.10417
	movl	-276(%rbp), %eax	# PredPel, D.10417
	addl	%eax, %edx	# D.10417, D.10417
	movl	-272(%rbp), %eax	# PredPel, D.10417
	addl	%eax, %edx	# D.10417, D.10417
	movl	-268(%rbp), %eax	# PredPel, D.10417
	addl	%eax, %edx	# D.10417, D.10417
	movl	-264(%rbp), %eax	# PredPel, D.10417
	addl	%eax, %edx	# D.10417, D.10417
	movl	-260(%rbp), %eax	# PredPel, D.10417
	addl	%eax, %edx	# D.10417, D.10417
	movl	-256(%rbp), %eax	# PredPel, D.10417
	addl	%edx, %eax	# D.10417, D.10417
	addl	$4, %eax	#, D.10417
	sarl	$3, %eax	#, tmp2173
	movl	%eax, -488(%rbp)	# tmp2173, s0
	jmp	.L228	#
.L229:
	.loc 1 825 0
	cmpl	$0, -484(%rbp)	#, block_available_up
	je	.L230	#,
	.loc 1 825 0 is_stmt 0 discriminator 1
	cmpl	$0, -480(%rbp)	#, block_available_left
	jne	.L230	#,
	.loc 1 828 0 is_stmt 1
	movl	-348(%rbp), %edx	# PredPel, D.10417
	movl	-344(%rbp), %eax	# PredPel, D.10417
	addl	%eax, %edx	# D.10417, D.10417
	movl	-340(%rbp), %eax	# PredPel, D.10417
	addl	%eax, %edx	# D.10417, D.10417
	movl	-336(%rbp), %eax	# PredPel, D.10417
	addl	%eax, %edx	# D.10417, D.10417
	movl	-332(%rbp), %eax	# PredPel, D.10417
	addl	%eax, %edx	# D.10417, D.10417
	movl	-328(%rbp), %eax	# PredPel, D.10417
	addl	%eax, %edx	# D.10417, D.10417
	movl	-324(%rbp), %eax	# PredPel, D.10417
	addl	%eax, %edx	# D.10417, D.10417
	movl	-320(%rbp), %eax	# PredPel, D.10417
	addl	%edx, %eax	# D.10417, D.10417
	addl	$4, %eax	#, D.10417
	sarl	$3, %eax	#, tmp2174
	movl	%eax, -488(%rbp)	# tmp2174, s0
	jmp	.L228	#
.L230:
	.loc 1 833 0
	movq	img(%rip), %rax	# img, img.143
	movl	72680(%rax), %eax	# img.143_487->dc_pred_value, D.10424
	movl	%eax, -488(%rbp)	# D.10424, s0
.L228:
	.loc 1 836 0
	movl	$0, -492(%rbp)	#, j
	jmp	.L231	#
.L234:
	.loc 1 838 0
	movl	$0, -496(%rbp)	#, i
	jmp	.L232	#
.L233:
	.loc 1 841 0 discriminator 2
	movq	img(%rip), %rax	# img, img.144
	movl	-488(%rbp), %edx	# s0, tmp2175
	movl	-492(%rbp), %ecx	# j, tmp2177
	movslq	%ecx, %rcx	# tmp2177, tmp2176
	movl	-496(%rbp), %esi	# i, tmp2179
	movslq	%esi, %rsi	# tmp2179, tmp2178
	salq	$3, %rsi	#, tmp2180
	addq	%rsi, %rcx	# tmp2180, tmp2181
	addq	$3800, %rcx	#, tmp2182
	movw	%dx, 8(%rax,%rcx,2)	# D.10422, img.144_492->mprr_3
	.loc 1 838 0 discriminator 2
	addl	$1, -496(%rbp)	#, i
.L232:
	.loc 1 838 0 is_stmt 0 discriminator 1
	cmpl	$7, -496(%rbp)	#, i
	jle	.L233	#,
	.loc 1 836 0 is_stmt 1
	addl	$1, -492(%rbp)	#, j
.L231:
	.loc 1 836 0 is_stmt 0 discriminator 1
	cmpl	$7, -492(%rbp)	#, j
	jle	.L234	#,
	.loc 1 850 0 is_stmt 1
	movl	$0, -496(%rbp)	#, i
	jmp	.L235	#
.L236:
	.loc 1 852 0 discriminator 2
	movq	img(%rip), %r10	# img, img.145
	.loc 1 853 0 discriminator 2
	movq	img(%rip), %rax	# img, img.146
	.loc 1 854 0 discriminator 2
	movq	img(%rip), %rdx	# img, img.147
	.loc 1 855 0 discriminator 2
	movq	img(%rip), %rcx	# img, img.148
	.loc 1 856 0 discriminator 2
	movq	img(%rip), %rsi	# img, img.149
	.loc 1 857 0 discriminator 2
	movq	img(%rip), %rdi	# img, img.150
	.loc 1 858 0 discriminator 2
	movq	img(%rip), %r8	# img, img.151
	.loc 1 859 0 discriminator 2
	movq	img(%rip), %r9	# img, img.152
	movl	-496(%rbp), %r11d	# i, tmp2183
	movslq	%r11d, %r11	# tmp2183, D.10423
	addq	$1, %r11	#, D.10423
	movl	-352(%rbp,%r11,4), %r11d	# PredPel, D.10417
	movl	-496(%rbp), %ebx	# i, tmp2185
	movslq	%ebx, %rbx	# tmp2185, tmp2184
	addq	$3728, %rbx	#, tmp2186
	movw	%r11w, 8(%r9,%rbx,2)	# D.10422, img.152_504->mprr_3
	movl	-496(%rbp), %r11d	# i, tmp2188
	movslq	%r11d, %r11	# tmp2188, tmp2187
	addq	$3728, %r11	#, tmp2189
	movzwl	8(%r9,%r11,2), %r9d	# img.152_504->mprr_3, D.10422
	.loc 1 858 0 discriminator 2
	movl	-496(%rbp), %r11d	# i, tmp2191
	movslq	%r11d, %r11	# tmp2191, tmp2190
	addq	$3720, %r11	#, tmp2192
	movw	%r9w, 8(%r8,%r11,2)	# D.10422, img.151_503->mprr_3
	movl	-496(%rbp), %r9d	# i, tmp2194
	movslq	%r9d, %r9	# tmp2194, tmp2193
	addq	$3720, %r9	#, tmp2195
	movzwl	8(%r8,%r9,2), %r8d	# img.151_503->mprr_3, D.10422
	.loc 1 857 0 discriminator 2
	movl	-496(%rbp), %r9d	# i, tmp2197
	movslq	%r9d, %r9	# tmp2197, tmp2196
	addq	$3712, %r9	#, tmp2198
	movw	%r8w, 8(%rdi,%r9,2)	# D.10422, img.150_502->mprr_3
	movl	-496(%rbp), %r8d	# i, tmp2200
	movslq	%r8d, %r8	# tmp2200, tmp2199
	addq	$3712, %r8	#, tmp2201
	movzwl	8(%rdi,%r8,2), %edi	# img.150_502->mprr_3, D.10422
	.loc 1 856 0 discriminator 2
	movl	-496(%rbp), %r8d	# i, tmp2203
	movslq	%r8d, %r8	# tmp2203, tmp2202
	addq	$3704, %r8	#, tmp2204
	movw	%di, 8(%rsi,%r8,2)	# D.10422, img.149_501->mprr_3
	movl	-496(%rbp), %edi	# i, tmp2206
	movslq	%edi, %rdi	# tmp2206, tmp2205
	addq	$3704, %rdi	#, tmp2207
	movzwl	8(%rsi,%rdi,2), %esi	# img.149_501->mprr_3, D.10422
	.loc 1 855 0 discriminator 2
	movl	-496(%rbp), %edi	# i, tmp2209
	movslq	%edi, %rdi	# tmp2209, tmp2208
	addq	$3696, %rdi	#, tmp2210
	movw	%si, 8(%rcx,%rdi,2)	# D.10422, img.148_500->mprr_3
	movl	-496(%rbp), %esi	# i, tmp2212
	movslq	%esi, %rsi	# tmp2212, tmp2211
	addq	$3696, %rsi	#, tmp2213
	movzwl	8(%rcx,%rsi,2), %ecx	# img.148_500->mprr_3, D.10422
	.loc 1 854 0 discriminator 2
	movl	-496(%rbp), %esi	# i, tmp2215
	movslq	%esi, %rsi	# tmp2215, tmp2214
	addq	$3688, %rsi	#, tmp2216
	movw	%cx, 8(%rdx,%rsi,2)	# D.10422, img.147_499->mprr_3
	movl	-496(%rbp), %ecx	# i, tmp2218
	movslq	%ecx, %rcx	# tmp2218, tmp2217
	addq	$3688, %rcx	#, tmp2219
	movzwl	8(%rdx,%rcx,2), %edx	# img.147_499->mprr_3, D.10422
	.loc 1 853 0 discriminator 2
	movl	-496(%rbp), %ecx	# i, tmp2221
	movslq	%ecx, %rcx	# tmp2221, tmp2220
	addq	$3680, %rcx	#, tmp2222
	movw	%dx, 8(%rax,%rcx,2)	# D.10422, img.146_498->mprr_3
	movl	-496(%rbp), %edx	# i, tmp2224
	movslq	%edx, %rdx	# tmp2224, tmp2223
	addq	$3680, %rdx	#, tmp2225
	movzwl	8(%rax,%rdx,2), %eax	# img.146_498->mprr_3, D.10422
	.loc 1 852 0 discriminator 2
	movl	-496(%rbp), %edx	# i, tmp2227
	movslq	%edx, %rdx	# tmp2227, tmp2226
	addq	$3672, %rdx	#, tmp2228
	movw	%ax, 8(%r10,%rdx,2)	# D.10422, img.145_497->mprr_3
	.loc 1 860 0 discriminator 2
	movq	img(%rip), %r11	# img, img.153
	.loc 1 861 0 discriminator 2
	movq	img(%rip), %rax	# img, img.154
	.loc 1 862 0 discriminator 2
	movq	img(%rip), %rdx	# img, img.155
	.loc 1 863 0 discriminator 2
	movq	img(%rip), %rcx	# img, img.156
	.loc 1 864 0 discriminator 2
	movq	img(%rip), %rsi	# img, img.157
	.loc 1 865 0 discriminator 2
	movq	img(%rip), %rdi	# img, img.158
	.loc 1 866 0 discriminator 2
	movq	img(%rip), %r8	# img, img.159
	.loc 1 867 0 discriminator 2
	movq	img(%rip), %r9	# img, img.160
	movl	-496(%rbp), %r10d	# i, tmp2229
	movslq	%r10d, %r10	# tmp2229, D.10423
	addq	$17, %r10	#, D.10423
	movl	-352(%rbp,%r10,4), %r10d	# PredPel, D.10417
	movl	-496(%rbp), %ebx	# i, tmp2231
	movslq	%ebx, %rbx	# tmp2231, tmp2230
	salq	$4, %rbx	#, tmp2232
	addq	%r9, %rbx	# img.160, tmp2233
	addq	$7486, %rbx	#, tmp2234
	movw	%r10w, 8(%rbx)	# D.10422, img.160_523->mprr_3
	movl	-496(%rbp), %r10d	# i, tmp2236
	movslq	%r10d, %r10	# tmp2236, tmp2235
	salq	$4, %r10	#, tmp2237
	addq	%r10, %r9	# tmp2237, tmp2238
	addq	$7486, %r9	#, tmp2239
	movzwl	8(%r9), %r9d	# img.160_523->mprr_3, D.10422
	.loc 1 866 0 discriminator 2
	movl	-496(%rbp), %r10d	# i, tmp2241
	movslq	%r10d, %r10	# tmp2241, tmp2240
	salq	$4, %r10	#, tmp2242
	addq	%r8, %r10	# img.159, tmp2243
	addq	$7484, %r10	#, tmp2244
	movw	%r9w, 8(%r10)	# D.10422, img.159_522->mprr_3
	movl	-496(%rbp), %r9d	# i, tmp2246
	movslq	%r9d, %r9	# tmp2246, tmp2245
	salq	$4, %r9	#, tmp2247
	addq	%r9, %r8	# tmp2247, tmp2248
	addq	$7484, %r8	#, tmp2249
	movzwl	8(%r8), %r8d	# img.159_522->mprr_3, D.10422
	.loc 1 865 0 discriminator 2
	movl	-496(%rbp), %r9d	# i, tmp2251
	movslq	%r9d, %r9	# tmp2251, tmp2250
	salq	$4, %r9	#, tmp2252
	addq	%rdi, %r9	# img.158, tmp2253
	addq	$7482, %r9	#, tmp2254
	movw	%r8w, 8(%r9)	# D.10422, img.158_521->mprr_3
	movl	-496(%rbp), %r8d	# i, tmp2256
	movslq	%r8d, %r8	# tmp2256, tmp2255
	salq	$4, %r8	#, tmp2257
	addq	%r8, %rdi	# tmp2257, tmp2258
	addq	$7482, %rdi	#, tmp2259
	movzwl	8(%rdi), %edi	# img.158_521->mprr_3, D.10422
	.loc 1 864 0 discriminator 2
	movl	-496(%rbp), %r8d	# i, tmp2261
	movslq	%r8d, %r8	# tmp2261, tmp2260
	salq	$4, %r8	#, tmp2262
	addq	%rsi, %r8	# img.157, tmp2263
	addq	$7480, %r8	#, tmp2264
	movw	%di, 8(%r8)	# D.10422, img.157_520->mprr_3
	movl	-496(%rbp), %edi	# i, tmp2266
	movslq	%edi, %rdi	# tmp2266, tmp2265
	salq	$4, %rdi	#, tmp2267
	addq	%rdi, %rsi	# tmp2267, tmp2268
	addq	$7480, %rsi	#, tmp2269
	movzwl	8(%rsi), %esi	# img.157_520->mprr_3, D.10422
	.loc 1 863 0 discriminator 2
	movl	-496(%rbp), %edi	# i, tmp2271
	movslq	%edi, %rdi	# tmp2271, tmp2270
	salq	$4, %rdi	#, tmp2272
	addq	%rcx, %rdi	# img.156, tmp2273
	addq	$7478, %rdi	#, tmp2274
	movw	%si, 8(%rdi)	# D.10422, img.156_519->mprr_3
	movl	-496(%rbp), %esi	# i, tmp2276
	movslq	%esi, %rsi	# tmp2276, tmp2275
	salq	$4, %rsi	#, tmp2277
	addq	%rsi, %rcx	# tmp2277, tmp2278
	addq	$7478, %rcx	#, tmp2279
	movzwl	8(%rcx), %ecx	# img.156_519->mprr_3, D.10422
	.loc 1 862 0 discriminator 2
	movl	-496(%rbp), %esi	# i, tmp2281
	movslq	%esi, %rsi	# tmp2281, tmp2280
	salq	$4, %rsi	#, tmp2282
	addq	%rdx, %rsi	# img.155, tmp2283
	addq	$7476, %rsi	#, tmp2284
	movw	%cx, 8(%rsi)	# D.10422, img.155_518->mprr_3
	movl	-496(%rbp), %ecx	# i, tmp2286
	movslq	%ecx, %rcx	# tmp2286, tmp2285
	salq	$4, %rcx	#, tmp2287
	addq	%rcx, %rdx	# tmp2287, tmp2288
	addq	$7476, %rdx	#, tmp2289
	movzwl	8(%rdx), %edx	# img.155_518->mprr_3, D.10422
	.loc 1 861 0 discriminator 2
	movl	-496(%rbp), %ecx	# i, tmp2291
	movslq	%ecx, %rcx	# tmp2291, tmp2290
	salq	$4, %rcx	#, tmp2292
	addq	%rax, %rcx	# img.154, tmp2293
	addq	$7474, %rcx	#, tmp2294
	movw	%dx, 8(%rcx)	# D.10422, img.154_517->mprr_3
	movl	-496(%rbp), %edx	# i, tmp2296
	movslq	%edx, %rdx	# tmp2296, tmp2295
	salq	$4, %rdx	#, tmp2297
	addq	%rdx, %rax	# tmp2297, tmp2298
	addq	$7474, %rax	#, tmp2299
	movzwl	8(%rax), %eax	# img.154_517->mprr_3, D.10422
	.loc 1 860 0 discriminator 2
	movl	-496(%rbp), %edx	# i, tmp2301
	movslq	%edx, %rdx	# tmp2301, tmp2300
	addq	$467, %rdx	#, tmp2302
	salq	$4, %rdx	#, tmp2303
	addq	%r11, %rdx	# img.153, tmp2304
	movw	%ax, 8(%rdx)	# D.10422, img.153_516->mprr_3
	.loc 1 850 0 discriminator 2
	addl	$1, -496(%rbp)	#, i
.L235:
	.loc 1 850 0 is_stmt 0 discriminator 1
	cmpl	$7, -496(%rbp)	#, i
	jle	.L236	#,
	.loc 1 870 0 is_stmt 1
	cmpl	$0, -484(%rbp)	#, block_available_up
	jne	.L237	#,
	.loc 1 870 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.161
	movw	$-1, 7352(%rax)	#, img.161_536->mprr_3
.L237:
	.loc 1 871 0 is_stmt 1
	cmpl	$0, -480(%rbp)	#, block_available_left
	jne	.L238	#,
	.loc 1 871 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.162
	movw	$-1, 7480(%rax)	#, img.162_537->mprr_3
.L238:
	.loc 1 876 0 is_stmt 1
	cmpl	$0, -484(%rbp)	#, block_available_up
	je	.L239	#,
	.loc 1 879 0
	movq	img(%rip), %rax	# img, img.163
	movl	-348(%rbp), %ecx	# PredPel, D.10417
	movl	-340(%rbp), %edx	# PredPel, D.10417
	addl	%edx, %ecx	# D.10417, D.10417
	movl	-344(%rbp), %edx	# PredPel, D.10417
	addl	%edx, %edx	# D.10417
	addl	%ecx, %edx	# D.10417, D.10417
	addl	$2, %edx	#, D.10417
	sarl	$2, %edx	#, D.10417
	movw	%dx, 7736(%rax)	# D.10422, img.163_538->mprr_3
	.loc 1 880 0
	movq	img(%rip), %rdx	# img, img.164
	.loc 1 881 0
	movq	img(%rip), %rax	# img, img.165
	movl	-344(%rbp), %esi	# PredPel, D.10417
	movl	-336(%rbp), %ecx	# PredPel, D.10417
	addl	%ecx, %esi	# D.10417, D.10417
	movl	-340(%rbp), %ecx	# PredPel, D.10417
	addl	%ecx, %ecx	# D.10417
	addl	%esi, %ecx	# D.10417, D.10417
	addl	$2, %ecx	#, D.10417
	sarl	$2, %ecx	#, D.10417
	movw	%cx, 7752(%rax)	# D.10422, img.165_549->mprr_3
	movzwl	7752(%rax), %eax	# img.165_549->mprr_3, D.10422
	.loc 1 880 0
	movw	%ax, 7738(%rdx)	# D.10422, img.164_548->mprr_3
	.loc 1 882 0
	movq	img(%rip), %rcx	# img, img.166
	.loc 1 883 0
	movq	img(%rip), %rax	# img, img.167
	.loc 1 884 0
	movq	img(%rip), %rdx	# img, img.168
	movl	-340(%rbp), %edi	# PredPel, D.10417
	movl	-332(%rbp), %esi	# PredPel, D.10417
	addl	%esi, %edi	# D.10417, D.10417
	movl	-336(%rbp), %esi	# PredPel, D.10417
	addl	%esi, %esi	# D.10417
	addl	%edi, %esi	# D.10417, D.10417
	addl	$2, %esi	#, D.10417
	sarl	$2, %esi	#, D.10417
	movw	%si, 7768(%rdx)	# D.10422, img.168_562->mprr_3
	movzwl	7768(%rdx), %edx	# img.168_562->mprr_3, D.10422
	.loc 1 883 0
	movw	%dx, 7754(%rax)	# D.10422, img.167_561->mprr_3
	movzwl	7754(%rax), %eax	# img.167_561->mprr_3, D.10422
	.loc 1 882 0
	movw	%ax, 7740(%rcx)	# D.10422, img.166_560->mprr_3
	.loc 1 885 0
	movq	img(%rip), %rsi	# img, img.169
	.loc 1 886 0
	movq	img(%rip), %rax	# img, img.170
	.loc 1 887 0
	movq	img(%rip), %rdx	# img, img.171
	.loc 1 888 0
	movq	img(%rip), %rcx	# img, img.172
	movl	-336(%rbp), %r8d	# PredPel, D.10417
	movl	-328(%rbp), %edi	# PredPel, D.10417
	addl	%edi, %r8d	# D.10417, D.10417
	movl	-332(%rbp), %edi	# PredPel, D.10417
	addl	%edi, %edi	# D.10417
	addl	%r8d, %edi	# D.10417, D.10417
	addl	$2, %edi	#, D.10417
	sarl	$2, %edi	#, D.10417
	movw	%di, 7784(%rcx)	# D.10422, img.172_577->mprr_3
	movzwl	7784(%rcx), %ecx	# img.172_577->mprr_3, D.10422
	.loc 1 887 0
	movw	%cx, 7770(%rdx)	# D.10422, img.171_576->mprr_3
	movzwl	7770(%rdx), %edx	# img.171_576->mprr_3, D.10422
	.loc 1 886 0
	movw	%dx, 7756(%rax)	# D.10422, img.170_575->mprr_3
	movzwl	7756(%rax), %eax	# img.170_575->mprr_3, D.10422
	.loc 1 885 0
	movw	%ax, 7742(%rsi)	# D.10422, img.169_574->mprr_3
	.loc 1 889 0
	movq	img(%rip), %rdi	# img, img.173
	.loc 1 890 0
	movq	img(%rip), %rax	# img, img.174
	.loc 1 891 0
	movq	img(%rip), %rdx	# img, img.175
	.loc 1 892 0
	movq	img(%rip), %rcx	# img, img.176
	.loc 1 893 0
	movq	img(%rip), %rsi	# img, img.177
	movl	-332(%rbp), %r9d	# PredPel, D.10417
	movl	-324(%rbp), %r8d	# PredPel, D.10417
	addl	%r8d, %r9d	# D.10417, D.10417
	movl	-328(%rbp), %r8d	# PredPel, D.10417
	addl	%r8d, %r8d	# D.10417
	addl	%r9d, %r8d	# D.10417, D.10417
	addl	$2, %r8d	#, D.10417
	sarl	$2, %r8d	#, D.10417
	movw	%r8w, 7800(%rsi)	# D.10422, img.177_594->mprr_3
	movzwl	7800(%rsi), %esi	# img.177_594->mprr_3, D.10422
	.loc 1 892 0
	movw	%si, 7786(%rcx)	# D.10422, img.176_593->mprr_3
	movzwl	7786(%rcx), %ecx	# img.176_593->mprr_3, D.10422
	.loc 1 891 0
	movw	%cx, 7772(%rdx)	# D.10422, img.175_592->mprr_3
	movzwl	7772(%rdx), %edx	# img.175_592->mprr_3, D.10422
	.loc 1 890 0
	movw	%dx, 7758(%rax)	# D.10422, img.174_591->mprr_3
	movzwl	7758(%rax), %eax	# img.174_591->mprr_3, D.10422
	.loc 1 889 0
	movw	%ax, 7744(%rdi)	# D.10422, img.173_590->mprr_3
	.loc 1 894 0
	movq	img(%rip), %r8	# img, img.178
	.loc 1 895 0
	movq	img(%rip), %rax	# img, img.179
	.loc 1 896 0
	movq	img(%rip), %rdx	# img, img.180
	.loc 1 897 0
	movq	img(%rip), %rcx	# img, img.181
	.loc 1 898 0
	movq	img(%rip), %rsi	# img, img.182
	.loc 1 899 0
	movq	img(%rip), %rdi	# img, img.183
	movl	-328(%rbp), %r10d	# PredPel, D.10417
	movl	-320(%rbp), %r9d	# PredPel, D.10417
	addl	%r9d, %r10d	# D.10417, D.10417
	movl	-324(%rbp), %r9d	# PredPel, D.10417
	addl	%r9d, %r9d	# D.10417
	addl	%r10d, %r9d	# D.10417, D.10417
	addl	$2, %r9d	#, D.10417
	sarl	$2, %r9d	#, D.10417
	movw	%r9w, 7816(%rdi)	# D.10422, img.183_613->mprr_3
	movzwl	7816(%rdi), %edi	# img.183_613->mprr_3, D.10422
	.loc 1 898 0
	movw	%di, 7802(%rsi)	# D.10422, img.182_612->mprr_3
	movzwl	7802(%rsi), %esi	# img.182_612->mprr_3, D.10422
	.loc 1 897 0
	movw	%si, 7788(%rcx)	# D.10422, img.181_611->mprr_3
	movzwl	7788(%rcx), %ecx	# img.181_611->mprr_3, D.10422
	.loc 1 896 0
	movw	%cx, 7774(%rdx)	# D.10422, img.180_610->mprr_3
	movzwl	7774(%rdx), %edx	# img.180_610->mprr_3, D.10422
	.loc 1 895 0
	movw	%dx, 7760(%rax)	# D.10422, img.179_609->mprr_3
	movzwl	7760(%rax), %eax	# img.179_609->mprr_3, D.10422
	.loc 1 894 0
	movw	%ax, 7746(%r8)	# D.10422, img.178_608->mprr_3
	.loc 1 900 0
	movq	img(%rip), %r9	# img, img.184
	.loc 1 901 0
	movq	img(%rip), %rax	# img, img.185
	.loc 1 902 0
	movq	img(%rip), %rdx	# img, img.186
	.loc 1 903 0
	movq	img(%rip), %rcx	# img, img.187
	.loc 1 904 0
	movq	img(%rip), %rsi	# img, img.188
	.loc 1 905 0
	movq	img(%rip), %rdi	# img, img.189
	.loc 1 906 0
	movq	img(%rip), %r8	# img, img.190
	movl	-324(%rbp), %r11d	# PredPel, D.10417
	movl	-316(%rbp), %r10d	# PredPel, D.10417
	addl	%r10d, %r11d	# D.10417, D.10417
	movl	-320(%rbp), %r10d	# PredPel, D.10417
	addl	%r10d, %r10d	# D.10417
	addl	%r11d, %r10d	# D.10417, D.10417
	addl	$2, %r10d	#, D.10417
	sarl	$2, %r10d	#, D.10417
	movw	%r10w, 7832(%r8)	# D.10422, img.190_634->mprr_3
	movzwl	7832(%r8), %r8d	# img.190_634->mprr_3, D.10422
	.loc 1 905 0
	movw	%r8w, 7818(%rdi)	# D.10422, img.189_633->mprr_3
	movzwl	7818(%rdi), %edi	# img.189_633->mprr_3, D.10422
	.loc 1 904 0
	movw	%di, 7804(%rsi)	# D.10422, img.188_632->mprr_3
	movzwl	7804(%rsi), %esi	# img.188_632->mprr_3, D.10422
	.loc 1 903 0
	movw	%si, 7790(%rcx)	# D.10422, img.187_631->mprr_3
	movzwl	7790(%rcx), %ecx	# img.187_631->mprr_3, D.10422
	.loc 1 902 0
	movw	%cx, 7776(%rdx)	# D.10422, img.186_630->mprr_3
	movzwl	7776(%rdx), %edx	# img.186_630->mprr_3, D.10422
	.loc 1 901 0
	movw	%dx, 7762(%rax)	# D.10422, img.185_629->mprr_3
	movzwl	7762(%rax), %eax	# img.185_629->mprr_3, D.10422
	.loc 1 900 0
	movw	%ax, 7748(%r9)	# D.10422, img.184_628->mprr_3
	.loc 1 907 0
	movq	img(%rip), %r10	# img, img.191
	.loc 1 908 0
	movq	img(%rip), %rax	# img, img.192
	.loc 1 909 0
	movq	img(%rip), %rdx	# img, img.193
	.loc 1 910 0
	movq	img(%rip), %rcx	# img, img.194
	.loc 1 911 0
	movq	img(%rip), %rsi	# img, img.195
	.loc 1 912 0
	movq	img(%rip), %rdi	# img, img.196
	.loc 1 913 0
	movq	img(%rip), %r8	# img, img.197
	.loc 1 914 0
	movq	img(%rip), %r9	# img, img.198
	movl	-320(%rbp), %ebx	# PredPel, D.10417
	movl	-312(%rbp), %r11d	# PredPel, D.10417
	addl	%r11d, %ebx	# D.10417, D.10417
	movl	-316(%rbp), %r11d	# PredPel, D.10417
	addl	%r11d, %r11d	# D.10417
	addl	%ebx, %r11d	# D.10417, D.10417
	addl	$2, %r11d	#, D.10417
	sarl	$2, %r11d	#, D.10417
	movw	%r11w, 7848(%r9)	# D.10422, img.198_657->mprr_3
	movzwl	7848(%r9), %r9d	# img.198_657->mprr_3, D.10422
	.loc 1 913 0
	movw	%r9w, 7834(%r8)	# D.10422, img.197_656->mprr_3
	movzwl	7834(%r8), %r8d	# img.197_656->mprr_3, D.10422
	.loc 1 912 0
	movw	%r8w, 7820(%rdi)	# D.10422, img.196_655->mprr_3
	movzwl	7820(%rdi), %edi	# img.196_655->mprr_3, D.10422
	.loc 1 911 0
	movw	%di, 7806(%rsi)	# D.10422, img.195_654->mprr_3
	movzwl	7806(%rsi), %esi	# img.195_654->mprr_3, D.10422
	.loc 1 910 0
	movw	%si, 7792(%rcx)	# D.10422, img.194_653->mprr_3
	movzwl	7792(%rcx), %ecx	# img.194_653->mprr_3, D.10422
	.loc 1 909 0
	movw	%cx, 7778(%rdx)	# D.10422, img.193_652->mprr_3
	movzwl	7778(%rdx), %edx	# img.193_652->mprr_3, D.10422
	.loc 1 908 0
	movw	%dx, 7764(%rax)	# D.10422, img.192_651->mprr_3
	movzwl	7764(%rax), %eax	# img.192_651->mprr_3, D.10422
	.loc 1 907 0
	movw	%ax, 7750(%r10)	# D.10422, img.191_650->mprr_3
	.loc 1 915 0
	movq	img(%rip), %r9	# img, img.199
	.loc 1 916 0
	movq	img(%rip), %rax	# img, img.200
	.loc 1 917 0
	movq	img(%rip), %rdx	# img, img.201
	.loc 1 918 0
	movq	img(%rip), %rcx	# img, img.202
	.loc 1 919 0
	movq	img(%rip), %rsi	# img, img.203
	.loc 1 920 0
	movq	img(%rip), %rdi	# img, img.204
	.loc 1 921 0
	movq	img(%rip), %r8	# img, img.205
	movl	-316(%rbp), %r11d	# PredPel, D.10417
	movl	-308(%rbp), %r10d	# PredPel, D.10417
	addl	%r10d, %r11d	# D.10417, D.10417
	movl	-312(%rbp), %r10d	# PredPel, D.10417
	addl	%r10d, %r10d	# D.10417
	addl	%r11d, %r10d	# D.10417, D.10417
	addl	$2, %r10d	#, D.10417
	sarl	$2, %r10d	#, D.10417
	movw	%r10w, 7850(%r8)	# D.10422, img.205_680->mprr_3
	movzwl	7850(%r8), %r8d	# img.205_680->mprr_3, D.10422
	.loc 1 920 0
	movw	%r8w, 7836(%rdi)	# D.10422, img.204_679->mprr_3
	movzwl	7836(%rdi), %edi	# img.204_679->mprr_3, D.10422
	.loc 1 919 0
	movw	%di, 7822(%rsi)	# D.10422, img.203_678->mprr_3
	movzwl	7822(%rsi), %esi	# img.203_678->mprr_3, D.10422
	.loc 1 918 0
	movw	%si, 7808(%rcx)	# D.10422, img.202_677->mprr_3
	movzwl	7808(%rcx), %ecx	# img.202_677->mprr_3, D.10422
	.loc 1 917 0
	movw	%cx, 7794(%rdx)	# D.10422, img.201_676->mprr_3
	movzwl	7794(%rdx), %edx	# img.201_676->mprr_3, D.10422
	.loc 1 916 0
	movw	%dx, 7780(%rax)	# D.10422, img.200_675->mprr_3
	movzwl	7780(%rax), %eax	# img.200_675->mprr_3, D.10422
	.loc 1 915 0
	movw	%ax, 7766(%r9)	# D.10422, img.199_674->mprr_3
	.loc 1 922 0
	movq	img(%rip), %r8	# img, img.206
	.loc 1 923 0
	movq	img(%rip), %rax	# img, img.207
	.loc 1 924 0
	movq	img(%rip), %rdx	# img, img.208
	.loc 1 925 0
	movq	img(%rip), %rcx	# img, img.209
	.loc 1 926 0
	movq	img(%rip), %rsi	# img, img.210
	.loc 1 927 0
	movq	img(%rip), %rdi	# img, img.211
	movl	-312(%rbp), %r10d	# PredPel, D.10417
	movl	-304(%rbp), %r9d	# PredPel, D.10417
	addl	%r9d, %r10d	# D.10417, D.10417
	movl	-308(%rbp), %r9d	# PredPel, D.10417
	addl	%r9d, %r9d	# D.10417
	addl	%r10d, %r9d	# D.10417, D.10417
	addl	$2, %r9d	#, D.10417
	sarl	$2, %r9d	#, D.10417
	movw	%r9w, 7852(%rdi)	# D.10422, img.211_701->mprr_3
	movzwl	7852(%rdi), %edi	# img.211_701->mprr_3, D.10422
	.loc 1 926 0
	movw	%di, 7838(%rsi)	# D.10422, img.210_700->mprr_3
	movzwl	7838(%rsi), %esi	# img.210_700->mprr_3, D.10422
	.loc 1 925 0
	movw	%si, 7824(%rcx)	# D.10422, img.209_699->mprr_3
	movzwl	7824(%rcx), %ecx	# img.209_699->mprr_3, D.10422
	.loc 1 924 0
	movw	%cx, 7810(%rdx)	# D.10422, img.208_698->mprr_3
	movzwl	7810(%rdx), %edx	# img.208_698->mprr_3, D.10422
	.loc 1 923 0
	movw	%dx, 7796(%rax)	# D.10422, img.207_697->mprr_3
	movzwl	7796(%rax), %eax	# img.207_697->mprr_3, D.10422
	.loc 1 922 0
	movw	%ax, 7782(%r8)	# D.10422, img.206_696->mprr_3
	.loc 1 928 0
	movq	img(%rip), %rdi	# img, img.212
	.loc 1 929 0
	movq	img(%rip), %rax	# img, img.213
	.loc 1 930 0
	movq	img(%rip), %rdx	# img, img.214
	.loc 1 931 0
	movq	img(%rip), %rcx	# img, img.215
	.loc 1 932 0
	movq	img(%rip), %rsi	# img, img.216
	movl	-308(%rbp), %r9d	# PredPel, D.10417
	movl	-300(%rbp), %r8d	# PredPel, D.10417
	addl	%r8d, %r9d	# D.10417, D.10417
	movl	-304(%rbp), %r8d	# PredPel, D.10417
	addl	%r8d, %r8d	# D.10417
	addl	%r9d, %r8d	# D.10417, D.10417
	addl	$2, %r8d	#, D.10417
	sarl	$2, %r8d	#, D.10417
	movw	%r8w, 7854(%rsi)	# D.10422, img.216_720->mprr_3
	movzwl	7854(%rsi), %esi	# img.216_720->mprr_3, D.10422
	.loc 1 931 0
	movw	%si, 7840(%rcx)	# D.10422, img.215_719->mprr_3
	movzwl	7840(%rcx), %ecx	# img.215_719->mprr_3, D.10422
	.loc 1 930 0
	movw	%cx, 7826(%rdx)	# D.10422, img.214_718->mprr_3
	movzwl	7826(%rdx), %edx	# img.214_718->mprr_3, D.10422
	.loc 1 929 0
	movw	%dx, 7812(%rax)	# D.10422, img.213_717->mprr_3
	movzwl	7812(%rax), %eax	# img.213_717->mprr_3, D.10422
	.loc 1 928 0
	movw	%ax, 7798(%rdi)	# D.10422, img.212_716->mprr_3
	.loc 1 933 0
	movq	img(%rip), %rsi	# img, img.217
	.loc 1 934 0
	movq	img(%rip), %rax	# img, img.218
	.loc 1 935 0
	movq	img(%rip), %rdx	# img, img.219
	.loc 1 936 0
	movq	img(%rip), %rcx	# img, img.220
	movl	-304(%rbp), %r8d	# PredPel, D.10417
	movl	-296(%rbp), %edi	# PredPel, D.10417
	addl	%edi, %r8d	# D.10417, D.10417
	movl	-300(%rbp), %edi	# PredPel, D.10417
	addl	%edi, %edi	# D.10417
	addl	%r8d, %edi	# D.10417, D.10417
	addl	$2, %edi	#, D.10417
	sarl	$2, %edi	#, D.10417
	movw	%di, 7856(%rcx)	# D.10422, img.220_737->mprr_3
	movzwl	7856(%rcx), %ecx	# img.220_737->mprr_3, D.10422
	.loc 1 935 0
	movw	%cx, 7842(%rdx)	# D.10422, img.219_736->mprr_3
	movzwl	7842(%rdx), %edx	# img.219_736->mprr_3, D.10422
	.loc 1 934 0
	movw	%dx, 7828(%rax)	# D.10422, img.218_735->mprr_3
	movzwl	7828(%rax), %eax	# img.218_735->mprr_3, D.10422
	.loc 1 933 0
	movw	%ax, 7814(%rsi)	# D.10422, img.217_734->mprr_3
	.loc 1 937 0
	movq	img(%rip), %rcx	# img, img.221
	.loc 1 938 0
	movq	img(%rip), %rax	# img, img.222
	.loc 1 939 0
	movq	img(%rip), %rdx	# img, img.223
	movl	-300(%rbp), %edi	# PredPel, D.10417
	movl	-292(%rbp), %esi	# PredPel, D.10417
	addl	%esi, %edi	# D.10417, D.10417
	movl	-296(%rbp), %esi	# PredPel, D.10417
	addl	%esi, %esi	# D.10417
	addl	%edi, %esi	# D.10417, D.10417
	addl	$2, %esi	#, D.10417
	sarl	$2, %esi	#, D.10417
	movw	%si, 7858(%rdx)	# D.10422, img.223_752->mprr_3
	movzwl	7858(%rdx), %edx	# img.223_752->mprr_3, D.10422
	.loc 1 938 0
	movw	%dx, 7844(%rax)	# D.10422, img.222_751->mprr_3
	movzwl	7844(%rax), %eax	# img.222_751->mprr_3, D.10422
	.loc 1 937 0
	movw	%ax, 7830(%rcx)	# D.10422, img.221_750->mprr_3
	.loc 1 940 0
	movq	img(%rip), %rdx	# img, img.224
	.loc 1 941 0
	movq	img(%rip), %rax	# img, img.225
	movl	-296(%rbp), %esi	# PredPel, D.10417
	movl	-288(%rbp), %ecx	# PredPel, D.10417
	addl	%ecx, %esi	# D.10417, D.10417
	movl	-292(%rbp), %ecx	# PredPel, D.10417
	addl	%ecx, %ecx	# D.10417
	addl	%esi, %ecx	# D.10417, D.10417
	addl	$2, %ecx	#, D.10417
	sarl	$2, %ecx	#, D.10417
	movw	%cx, 7860(%rax)	# D.10422, img.225_765->mprr_3
	movzwl	7860(%rax), %eax	# img.225_765->mprr_3, D.10422
	.loc 1 940 0
	movw	%ax, 7846(%rdx)	# D.10422, img.224_764->mprr_3
	.loc 1 942 0
	movq	img(%rip), %rcx	# img, img.226
	movl	-292(%rbp), %esi	# PredPel, D.10417
	movl	-288(%rbp), %edx	# PredPel, D.10417
	movl	%edx, %eax	# D.10417, tmp2305
	addl	%eax, %eax	# tmp2305
	addl	%edx, %eax	# D.10417, D.10417
	addl	%esi, %eax	# D.10417, D.10417
	addl	$2, %eax	#, D.10417
	sarl	$2, %eax	#, D.10417
	movw	%ax, 7862(%rcx)	# D.10422, img.226_776->mprr_3
	.loc 1 947 0
	movq	img(%rip), %rax	# img, img.227
	movl	-348(%rbp), %ecx	# PredPel, D.10417
	movl	-344(%rbp), %edx	# PredPel, D.10417
	addl	%ecx, %edx	# D.10417, D.10417
	addl	$1, %edx	#, D.10417
	sarl	%edx	# D.10417
	movw	%dx, 8248(%rax)	# D.10422, img.227_784->mprr_3
	.loc 1 948 0
	movq	img(%rip), %rdx	# img, img.228
	.loc 1 949 0
	movq	img(%rip), %rax	# img, img.229
	movl	-344(%rbp), %esi	# PredPel, D.10417
	movl	-340(%rbp), %ecx	# PredPel, D.10417
	addl	%esi, %ecx	# D.10417, D.10417
	addl	$1, %ecx	#, D.10417
	sarl	%ecx	# D.10417
	movw	%cx, 8280(%rax)	# D.10422, img.229_792->mprr_3
	movzwl	8280(%rax), %eax	# img.229_792->mprr_3, D.10422
	.loc 1 948 0
	movw	%ax, 8250(%rdx)	# D.10422, img.228_791->mprr_3
	.loc 1 950 0
	movq	img(%rip), %rcx	# img, img.230
	.loc 1 951 0
	movq	img(%rip), %rax	# img, img.231
	.loc 1 952 0
	movq	img(%rip), %rdx	# img, img.232
	movl	-340(%rbp), %edi	# PredPel, D.10417
	movl	-336(%rbp), %esi	# PredPel, D.10417
	addl	%edi, %esi	# D.10417, D.10417
	addl	$1, %esi	#, D.10417
	sarl	%esi	# D.10417
	movw	%si, 8312(%rdx)	# D.10422, img.232_802->mprr_3
	movzwl	8312(%rdx), %edx	# img.232_802->mprr_3, D.10422
	.loc 1 951 0
	movw	%dx, 8282(%rax)	# D.10422, img.231_801->mprr_3
	movzwl	8282(%rax), %eax	# img.231_801->mprr_3, D.10422
	.loc 1 950 0
	movw	%ax, 8252(%rcx)	# D.10422, img.230_800->mprr_3
	.loc 1 953 0
	movq	img(%rip), %rsi	# img, img.233
	.loc 1 954 0
	movq	img(%rip), %rax	# img, img.234
	.loc 1 955 0
	movq	img(%rip), %rdx	# img, img.235
	.loc 1 956 0
	movq	img(%rip), %rcx	# img, img.236
	movl	-336(%rbp), %r8d	# PredPel, D.10417
	movl	-332(%rbp), %edi	# PredPel, D.10417
	addl	%r8d, %edi	# D.10417, D.10417
	addl	$1, %edi	#, D.10417
	sarl	%edi	# D.10417
	movw	%di, 8344(%rcx)	# D.10422, img.236_814->mprr_3
	movzwl	8344(%rcx), %ecx	# img.236_814->mprr_3, D.10422
	.loc 1 955 0
	movw	%cx, 8314(%rdx)	# D.10422, img.235_813->mprr_3
	movzwl	8314(%rdx), %edx	# img.235_813->mprr_3, D.10422
	.loc 1 954 0
	movw	%dx, 8284(%rax)	# D.10422, img.234_812->mprr_3
	movzwl	8284(%rax), %eax	# img.234_812->mprr_3, D.10422
	.loc 1 953 0
	movw	%ax, 8254(%rsi)	# D.10422, img.233_811->mprr_3
	.loc 1 957 0
	movq	img(%rip), %rsi	# img, img.237
	.loc 1 958 0
	movq	img(%rip), %rax	# img, img.238
	.loc 1 959 0
	movq	img(%rip), %rdx	# img, img.239
	.loc 1 960 0
	movq	img(%rip), %rcx	# img, img.240
	movl	-332(%rbp), %r8d	# PredPel, D.10417
	movl	-328(%rbp), %edi	# PredPel, D.10417
	addl	%r8d, %edi	# D.10417, D.10417
	addl	$1, %edi	#, D.10417
	sarl	%edi	# D.10417
	movw	%di, 8346(%rcx)	# D.10422, img.240_827->mprr_3
	movzwl	8346(%rcx), %ecx	# img.240_827->mprr_3, D.10422
	.loc 1 959 0
	movw	%cx, 8316(%rdx)	# D.10422, img.239_826->mprr_3
	movzwl	8316(%rdx), %edx	# img.239_826->mprr_3, D.10422
	.loc 1 958 0
	movw	%dx, 8286(%rax)	# D.10422, img.238_825->mprr_3
	movzwl	8286(%rax), %eax	# img.238_825->mprr_3, D.10422
	.loc 1 957 0
	movw	%ax, 8256(%rsi)	# D.10422, img.237_824->mprr_3
	.loc 1 961 0
	movq	img(%rip), %rsi	# img, img.241
	.loc 1 962 0
	movq	img(%rip), %rax	# img, img.242
	.loc 1 963 0
	movq	img(%rip), %rdx	# img, img.243
	.loc 1 964 0
	movq	img(%rip), %rcx	# img, img.244
	movl	-328(%rbp), %r8d	# PredPel, D.10417
	movl	-324(%rbp), %edi	# PredPel, D.10417
	addl	%r8d, %edi	# D.10417, D.10417
	addl	$1, %edi	#, D.10417
	sarl	%edi	# D.10417
	movw	%di, 8348(%rcx)	# D.10422, img.244_840->mprr_3
	movzwl	8348(%rcx), %ecx	# img.244_840->mprr_3, D.10422
	.loc 1 963 0
	movw	%cx, 8318(%rdx)	# D.10422, img.243_839->mprr_3
	movzwl	8318(%rdx), %edx	# img.243_839->mprr_3, D.10422
	.loc 1 962 0
	movw	%dx, 8288(%rax)	# D.10422, img.242_838->mprr_3
	movzwl	8288(%rax), %eax	# img.242_838->mprr_3, D.10422
	.loc 1 961 0
	movw	%ax, 8258(%rsi)	# D.10422, img.241_837->mprr_3
	.loc 1 965 0
	movq	img(%rip), %rsi	# img, img.245
	.loc 1 966 0
	movq	img(%rip), %rax	# img, img.246
	.loc 1 967 0
	movq	img(%rip), %rdx	# img, img.247
	.loc 1 968 0
	movq	img(%rip), %rcx	# img, img.248
	movl	-324(%rbp), %r8d	# PredPel, D.10417
	movl	-320(%rbp), %edi	# PredPel, D.10417
	addl	%r8d, %edi	# D.10417, D.10417
	addl	$1, %edi	#, D.10417
	sarl	%edi	# D.10417
	movw	%di, 8350(%rcx)	# D.10422, img.248_853->mprr_3
	movzwl	8350(%rcx), %ecx	# img.248_853->mprr_3, D.10422
	.loc 1 967 0
	movw	%cx, 8320(%rdx)	# D.10422, img.247_852->mprr_3
	movzwl	8320(%rdx), %edx	# img.247_852->mprr_3, D.10422
	.loc 1 966 0
	movw	%dx, 8290(%rax)	# D.10422, img.246_851->mprr_3
	movzwl	8290(%rax), %eax	# img.246_851->mprr_3, D.10422
	.loc 1 965 0
	movw	%ax, 8260(%rsi)	# D.10422, img.245_850->mprr_3
	.loc 1 969 0
	movq	img(%rip), %rsi	# img, img.249
	.loc 1 970 0
	movq	img(%rip), %rax	# img, img.250
	.loc 1 971 0
	movq	img(%rip), %rdx	# img, img.251
	.loc 1 972 0
	movq	img(%rip), %rcx	# img, img.252
	movl	-320(%rbp), %r8d	# PredPel, D.10417
	movl	-316(%rbp), %edi	# PredPel, D.10417
	addl	%r8d, %edi	# D.10417, D.10417
	addl	$1, %edi	#, D.10417
	sarl	%edi	# D.10417
	movw	%di, 8352(%rcx)	# D.10422, img.252_866->mprr_3
	movzwl	8352(%rcx), %ecx	# img.252_866->mprr_3, D.10422
	.loc 1 971 0
	movw	%cx, 8322(%rdx)	# D.10422, img.251_865->mprr_3
	movzwl	8322(%rdx), %edx	# img.251_865->mprr_3, D.10422
	.loc 1 970 0
	movw	%dx, 8292(%rax)	# D.10422, img.250_864->mprr_3
	movzwl	8292(%rax), %eax	# img.250_864->mprr_3, D.10422
	.loc 1 969 0
	movw	%ax, 8262(%rsi)	# D.10422, img.249_863->mprr_3
	.loc 1 973 0
	movq	img(%rip), %rcx	# img, img.253
	.loc 1 974 0
	movq	img(%rip), %rax	# img, img.254
	.loc 1 975 0
	movq	img(%rip), %rdx	# img, img.255
	movl	-316(%rbp), %edi	# PredPel, D.10417
	movl	-312(%rbp), %esi	# PredPel, D.10417
	addl	%edi, %esi	# D.10417, D.10417
	addl	$1, %esi	#, D.10417
	sarl	%esi	# D.10417
	movw	%si, 8354(%rdx)	# D.10422, img.255_878->mprr_3
	movzwl	8354(%rdx), %edx	# img.255_878->mprr_3, D.10422
	.loc 1 974 0
	movw	%dx, 8324(%rax)	# D.10422, img.254_877->mprr_3
	movzwl	8324(%rax), %eax	# img.254_877->mprr_3, D.10422
	.loc 1 973 0
	movw	%ax, 8294(%rcx)	# D.10422, img.253_876->mprr_3
	.loc 1 976 0
	movq	img(%rip), %rdx	# img, img.256
	.loc 1 977 0
	movq	img(%rip), %rax	# img, img.257
	movl	-312(%rbp), %esi	# PredPel, D.10417
	movl	-308(%rbp), %ecx	# PredPel, D.10417
	addl	%esi, %ecx	# D.10417, D.10417
	addl	$1, %ecx	#, D.10417
	sarl	%ecx	# D.10417
	movw	%cx, 8356(%rax)	# D.10422, img.257_888->mprr_3
	movzwl	8356(%rax), %eax	# img.257_888->mprr_3, D.10422
	.loc 1 976 0
	movw	%ax, 8326(%rdx)	# D.10422, img.256_887->mprr_3
	.loc 1 978 0
	movq	img(%rip), %rax	# img, img.258
	movl	-308(%rbp), %ecx	# PredPel, D.10417
	movl	-304(%rbp), %edx	# PredPel, D.10417
	addl	%ecx, %edx	# D.10417, D.10417
	addl	$1, %edx	#, D.10417
	sarl	%edx	# D.10417
	movw	%dx, 8358(%rax)	# D.10422, img.258_896->mprr_3
	.loc 1 979 0
	movq	img(%rip), %rax	# img, img.259
	movl	-348(%rbp), %ecx	# PredPel, D.10417
	movl	-340(%rbp), %edx	# PredPel, D.10417
	addl	%edx, %ecx	# D.10417, D.10417
	movl	-344(%rbp), %edx	# PredPel, D.10417
	addl	%edx, %edx	# D.10417
	addl	%ecx, %edx	# D.10417, D.10417
	addl	$2, %edx	#, D.10417
	sarl	$2, %edx	#, D.10417
	movw	%dx, 8264(%rax)	# D.10422, img.259_903->mprr_3
	.loc 1 980 0
	movq	img(%rip), %rdx	# img, img.260
	.loc 1 981 0
	movq	img(%rip), %rax	# img, img.261
	movl	-344(%rbp), %esi	# PredPel, D.10417
	movl	-336(%rbp), %ecx	# PredPel, D.10417
	addl	%ecx, %esi	# D.10417, D.10417
	movl	-340(%rbp), %ecx	# PredPel, D.10417
	addl	%ecx, %ecx	# D.10417
	addl	%esi, %ecx	# D.10417, D.10417
	addl	$2, %ecx	#, D.10417
	sarl	$2, %ecx	#, D.10417
	movw	%cx, 8296(%rax)	# D.10422, img.261_914->mprr_3
	movzwl	8296(%rax), %eax	# img.261_914->mprr_3, D.10422
	.loc 1 980 0
	movw	%ax, 8266(%rdx)	# D.10422, img.260_913->mprr_3
	.loc 1 982 0
	movq	img(%rip), %rcx	# img, img.262
	.loc 1 983 0
	movq	img(%rip), %rax	# img, img.263
	.loc 1 984 0
	movq	img(%rip), %rdx	# img, img.264
	movl	-340(%rbp), %edi	# PredPel, D.10417
	movl	-332(%rbp), %esi	# PredPel, D.10417
	addl	%esi, %edi	# D.10417, D.10417
	movl	-336(%rbp), %esi	# PredPel, D.10417
	addl	%esi, %esi	# D.10417
	addl	%edi, %esi	# D.10417, D.10417
	addl	$2, %esi	#, D.10417
	sarl	$2, %esi	#, D.10417
	movw	%si, 8328(%rdx)	# D.10422, img.264_927->mprr_3
	movzwl	8328(%rdx), %edx	# img.264_927->mprr_3, D.10422
	.loc 1 983 0
	movw	%dx, 8298(%rax)	# D.10422, img.263_926->mprr_3
	movzwl	8298(%rax), %eax	# img.263_926->mprr_3, D.10422
	.loc 1 982 0
	movw	%ax, 8268(%rcx)	# D.10422, img.262_925->mprr_3
	.loc 1 985 0
	movq	img(%rip), %rsi	# img, img.265
	.loc 1 986 0
	movq	img(%rip), %rax	# img, img.266
	.loc 1 987 0
	movq	img(%rip), %rdx	# img, img.267
	.loc 1 988 0
	movq	img(%rip), %rcx	# img, img.268
	movl	-336(%rbp), %r8d	# PredPel, D.10417
	movl	-328(%rbp), %edi	# PredPel, D.10417
	addl	%edi, %r8d	# D.10417, D.10417
	movl	-332(%rbp), %edi	# PredPel, D.10417
	addl	%edi, %edi	# D.10417
	addl	%r8d, %edi	# D.10417, D.10417
	addl	$2, %edi	#, D.10417
	sarl	$2, %edi	#, D.10417
	movw	%di, 8360(%rcx)	# D.10422, img.268_942->mprr_3
	movzwl	8360(%rcx), %ecx	# img.268_942->mprr_3, D.10422
	.loc 1 987 0
	movw	%cx, 8330(%rdx)	# D.10422, img.267_941->mprr_3
	movzwl	8330(%rdx), %edx	# img.267_941->mprr_3, D.10422
	.loc 1 986 0
	movw	%dx, 8300(%rax)	# D.10422, img.266_940->mprr_3
	movzwl	8300(%rax), %eax	# img.266_940->mprr_3, D.10422
	.loc 1 985 0
	movw	%ax, 8270(%rsi)	# D.10422, img.265_939->mprr_3
	.loc 1 989 0
	movq	img(%rip), %rsi	# img, img.269
	.loc 1 990 0
	movq	img(%rip), %rax	# img, img.270
	.loc 1 991 0
	movq	img(%rip), %rdx	# img, img.271
	.loc 1 992 0
	movq	img(%rip), %rcx	# img, img.272
	movl	-332(%rbp), %r8d	# PredPel, D.10417
	movl	-324(%rbp), %edi	# PredPel, D.10417
	addl	%edi, %r8d	# D.10417, D.10417
	movl	-328(%rbp), %edi	# PredPel, D.10417
	addl	%edi, %edi	# D.10417
	addl	%r8d, %edi	# D.10417, D.10417
	addl	$2, %edi	#, D.10417
	sarl	$2, %edi	#, D.10417
	movw	%di, 8362(%rcx)	# D.10422, img.272_958->mprr_3
	movzwl	8362(%rcx), %ecx	# img.272_958->mprr_3, D.10422
	.loc 1 991 0
	movw	%cx, 8332(%rdx)	# D.10422, img.271_957->mprr_3
	movzwl	8332(%rdx), %edx	# img.271_957->mprr_3, D.10422
	.loc 1 990 0
	movw	%dx, 8302(%rax)	# D.10422, img.270_956->mprr_3
	movzwl	8302(%rax), %eax	# img.270_956->mprr_3, D.10422
	.loc 1 989 0
	movw	%ax, 8272(%rsi)	# D.10422, img.269_955->mprr_3
	.loc 1 993 0
	movq	img(%rip), %rsi	# img, img.273
	.loc 1 994 0
	movq	img(%rip), %rax	# img, img.274
	.loc 1 995 0
	movq	img(%rip), %rdx	# img, img.275
	.loc 1 996 0
	movq	img(%rip), %rcx	# img, img.276
	movl	-328(%rbp), %r8d	# PredPel, D.10417
	movl	-320(%rbp), %edi	# PredPel, D.10417
	addl	%edi, %r8d	# D.10417, D.10417
	movl	-324(%rbp), %edi	# PredPel, D.10417
	addl	%edi, %edi	# D.10417
	addl	%r8d, %edi	# D.10417, D.10417
	addl	$2, %edi	#, D.10417
	sarl	$2, %edi	#, D.10417
	movw	%di, 8364(%rcx)	# D.10422, img.276_974->mprr_3
	movzwl	8364(%rcx), %ecx	# img.276_974->mprr_3, D.10422
	.loc 1 995 0
	movw	%cx, 8334(%rdx)	# D.10422, img.275_973->mprr_3
	movzwl	8334(%rdx), %edx	# img.275_973->mprr_3, D.10422
	.loc 1 994 0
	movw	%dx, 8304(%rax)	# D.10422, img.274_972->mprr_3
	movzwl	8304(%rax), %eax	# img.274_972->mprr_3, D.10422
	.loc 1 993 0
	movw	%ax, 8274(%rsi)	# D.10422, img.273_971->mprr_3
	.loc 1 997 0
	movq	img(%rip), %rsi	# img, img.277
	.loc 1 998 0
	movq	img(%rip), %rax	# img, img.278
	.loc 1 999 0
	movq	img(%rip), %rdx	# img, img.279
	.loc 1 1000 0
	movq	img(%rip), %rcx	# img, img.280
	movl	-324(%rbp), %r8d	# PredPel, D.10417
	movl	-316(%rbp), %edi	# PredPel, D.10417
	addl	%edi, %r8d	# D.10417, D.10417
	movl	-320(%rbp), %edi	# PredPel, D.10417
	addl	%edi, %edi	# D.10417
	addl	%r8d, %edi	# D.10417, D.10417
	addl	$2, %edi	#, D.10417
	sarl	$2, %edi	#, D.10417
	movw	%di, 8366(%rcx)	# D.10422, img.280_990->mprr_3
	movzwl	8366(%rcx), %ecx	# img.280_990->mprr_3, D.10422
	.loc 1 999 0
	movw	%cx, 8336(%rdx)	# D.10422, img.279_989->mprr_3
	movzwl	8336(%rdx), %edx	# img.279_989->mprr_3, D.10422
	.loc 1 998 0
	movw	%dx, 8306(%rax)	# D.10422, img.278_988->mprr_3
	movzwl	8306(%rax), %eax	# img.278_988->mprr_3, D.10422
	.loc 1 997 0
	movw	%ax, 8276(%rsi)	# D.10422, img.277_987->mprr_3
	.loc 1 1001 0
	movq	img(%rip), %rsi	# img, img.281
	.loc 1 1002 0
	movq	img(%rip), %rax	# img, img.282
	.loc 1 1003 0
	movq	img(%rip), %rdx	# img, img.283
	.loc 1 1004 0
	movq	img(%rip), %rcx	# img, img.284
	movl	-320(%rbp), %r8d	# PredPel, D.10417
	movl	-312(%rbp), %edi	# PredPel, D.10417
	addl	%edi, %r8d	# D.10417, D.10417
	movl	-316(%rbp), %edi	# PredPel, D.10417
	addl	%edi, %edi	# D.10417
	addl	%r8d, %edi	# D.10417, D.10417
	addl	$2, %edi	#, D.10417
	sarl	$2, %edi	#, D.10417
	movw	%di, 8368(%rcx)	# D.10422, img.284_1006->mprr_3
	movzwl	8368(%rcx), %ecx	# img.284_1006->mprr_3, D.10422
	.loc 1 1003 0
	movw	%cx, 8338(%rdx)	# D.10422, img.283_1005->mprr_3
	movzwl	8338(%rdx), %edx	# img.283_1005->mprr_3, D.10422
	.loc 1 1002 0
	movw	%dx, 8308(%rax)	# D.10422, img.282_1004->mprr_3
	movzwl	8308(%rax), %eax	# img.282_1004->mprr_3, D.10422
	.loc 1 1001 0
	movw	%ax, 8278(%rsi)	# D.10422, img.281_1003->mprr_3
	.loc 1 1005 0
	movq	img(%rip), %rcx	# img, img.285
	.loc 1 1006 0
	movq	img(%rip), %rax	# img, img.286
	.loc 1 1007 0
	movq	img(%rip), %rdx	# img, img.287
	movl	-316(%rbp), %edi	# PredPel, D.10417
	movl	-308(%rbp), %esi	# PredPel, D.10417
	addl	%esi, %edi	# D.10417, D.10417
	movl	-312(%rbp), %esi	# PredPel, D.10417
	addl	%esi, %esi	# D.10417
	addl	%edi, %esi	# D.10417, D.10417
	addl	$2, %esi	#, D.10417
	sarl	$2, %esi	#, D.10417
	movw	%si, 8370(%rdx)	# D.10422, img.287_1021->mprr_3
	movzwl	8370(%rdx), %edx	# img.287_1021->mprr_3, D.10422
	.loc 1 1006 0
	movw	%dx, 8340(%rax)	# D.10422, img.286_1020->mprr_3
	movzwl	8340(%rax), %eax	# img.286_1020->mprr_3, D.10422
	.loc 1 1005 0
	movw	%ax, 8310(%rcx)	# D.10422, img.285_1019->mprr_3
	.loc 1 1008 0
	movq	img(%rip), %rdx	# img, img.288
	.loc 1 1009 0
	movq	img(%rip), %rax	# img, img.289
	movl	-312(%rbp), %esi	# PredPel, D.10417
	movl	-304(%rbp), %ecx	# PredPel, D.10417
	addl	%ecx, %esi	# D.10417, D.10417
	movl	-308(%rbp), %ecx	# PredPel, D.10417
	addl	%ecx, %ecx	# D.10417
	addl	%esi, %ecx	# D.10417, D.10417
	addl	$2, %ecx	#, D.10417
	sarl	$2, %ecx	#, D.10417
	movw	%cx, 8372(%rax)	# D.10422, img.289_1034->mprr_3
	movzwl	8372(%rax), %eax	# img.289_1034->mprr_3, D.10422
	.loc 1 1008 0
	movw	%ax, 8342(%rdx)	# D.10422, img.288_1033->mprr_3
	.loc 1 1010 0
	movq	img(%rip), %rax	# img, img.290
	movl	-308(%rbp), %ecx	# PredPel, D.10417
	movl	-300(%rbp), %edx	# PredPel, D.10417
	addl	%edx, %ecx	# D.10417, D.10417
	movl	-304(%rbp), %edx	# PredPel, D.10417
	addl	%edx, %edx	# D.10417
	addl	%ecx, %edx	# D.10417, D.10417
	addl	$2, %edx	#, D.10417
	sarl	$2, %edx	#, D.10417
	movw	%dx, 8374(%rax)	# D.10422, img.290_1045->mprr_3
.L239:
	.loc 1 1016 0
	cmpl	$0, -484(%rbp)	#, block_available_up
	je	.L240	#,
	.loc 1 1016 0 is_stmt 0 discriminator 1
	cmpl	$0, -480(%rbp)	#, block_available_left
	je	.L240	#,
	cmpl	$0, -476(%rbp)	#, block_available_up_left
	je	.L240	#,
	.loc 1 1019 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.291
	movl	-256(%rbp), %ecx	# PredPel, D.10417
	movl	-264(%rbp), %edx	# PredPel, D.10417
	addl	%edx, %ecx	# D.10417, D.10417
	movl	-260(%rbp), %edx	# PredPel, D.10417
	addl	%edx, %edx	# D.10417
	addl	%ecx, %edx	# D.10417, D.10417
	addl	$2, %edx	#, D.10417
	sarl	$2, %edx	#, D.10417
	movw	%dx, 7976(%rax)	# D.10422, img.291_1055->mprr_3
	.loc 1 1020 0
	movq	img(%rip), %rdx	# img, img.292
	.loc 1 1021 0
	movq	img(%rip), %rax	# img, img.293
	movl	-260(%rbp), %esi	# PredPel, D.10417
	movl	-268(%rbp), %ecx	# PredPel, D.10417
	addl	%ecx, %esi	# D.10417, D.10417
	movl	-264(%rbp), %ecx	# PredPel, D.10417
	addl	%ecx, %ecx	# D.10417
	addl	%esi, %ecx	# D.10417, D.10417
	addl	$2, %ecx	#, D.10417
	sarl	$2, %ecx	#, D.10417
	movw	%cx, 7978(%rax)	# D.10422, img.293_1066->mprr_3
	movzwl	7978(%rax), %eax	# img.293_1066->mprr_3, D.10422
	.loc 1 1020 0
	movw	%ax, 7960(%rdx)	# D.10422, img.292_1065->mprr_3
	.loc 1 1022 0
	movq	img(%rip), %rcx	# img, img.294
	.loc 1 1023 0
	movq	img(%rip), %rax	# img, img.295
	.loc 1 1024 0
	movq	img(%rip), %rdx	# img, img.296
	movl	-264(%rbp), %edi	# PredPel, D.10417
	movl	-272(%rbp), %esi	# PredPel, D.10417
	addl	%esi, %edi	# D.10417, D.10417
	movl	-268(%rbp), %esi	# PredPel, D.10417
	addl	%esi, %esi	# D.10417
	addl	%edi, %esi	# D.10417, D.10417
	addl	$2, %esi	#, D.10417
	sarl	$2, %esi	#, D.10417
	movw	%si, 7980(%rdx)	# D.10422, img.296_1079->mprr_3
	movzwl	7980(%rdx), %edx	# img.296_1079->mprr_3, D.10422
	.loc 1 1023 0
	movw	%dx, 7962(%rax)	# D.10422, img.295_1078->mprr_3
	movzwl	7962(%rax), %eax	# img.295_1078->mprr_3, D.10422
	.loc 1 1022 0
	movw	%ax, 7944(%rcx)	# D.10422, img.294_1077->mprr_3
	.loc 1 1025 0
	movq	img(%rip), %rsi	# img, img.297
	.loc 1 1026 0
	movq	img(%rip), %rax	# img, img.298
	.loc 1 1027 0
	movq	img(%rip), %rdx	# img, img.299
	.loc 1 1028 0
	movq	img(%rip), %rcx	# img, img.300
	movl	-268(%rbp), %r8d	# PredPel, D.10417
	movl	-276(%rbp), %edi	# PredPel, D.10417
	addl	%edi, %r8d	# D.10417, D.10417
	movl	-272(%rbp), %edi	# PredPel, D.10417
	addl	%edi, %edi	# D.10417
	addl	%r8d, %edi	# D.10417, D.10417
	addl	$2, %edi	#, D.10417
	sarl	$2, %edi	#, D.10417
	movw	%di, 7982(%rcx)	# D.10422, img.300_1094->mprr_3
	movzwl	7982(%rcx), %ecx	# img.300_1094->mprr_3, D.10422
	.loc 1 1027 0
	movw	%cx, 7964(%rdx)	# D.10422, img.299_1093->mprr_3
	movzwl	7964(%rdx), %edx	# img.299_1093->mprr_3, D.10422
	.loc 1 1026 0
	movw	%dx, 7946(%rax)	# D.10422, img.298_1092->mprr_3
	movzwl	7946(%rax), %eax	# img.298_1092->mprr_3, D.10422
	.loc 1 1025 0
	movw	%ax, 7928(%rsi)	# D.10422, img.297_1091->mprr_3
	.loc 1 1029 0
	movq	img(%rip), %rdi	# img, img.301
	.loc 1 1030 0
	movq	img(%rip), %rax	# img, img.302
	.loc 1 1031 0
	movq	img(%rip), %rdx	# img, img.303
	.loc 1 1032 0
	movq	img(%rip), %rcx	# img, img.304
	.loc 1 1033 0
	movq	img(%rip), %rsi	# img, img.305
	movl	-272(%rbp), %r9d	# PredPel, D.10417
	movl	-280(%rbp), %r8d	# PredPel, D.10417
	addl	%r8d, %r9d	# D.10417, D.10417
	movl	-276(%rbp), %r8d	# PredPel, D.10417
	addl	%r8d, %r8d	# D.10417
	addl	%r9d, %r8d	# D.10417, D.10417
	addl	$2, %r8d	#, D.10417
	sarl	$2, %r8d	#, D.10417
	movw	%r8w, 7984(%rsi)	# D.10422, img.305_1111->mprr_3
	movzwl	7984(%rsi), %esi	# img.305_1111->mprr_3, D.10422
	.loc 1 1032 0
	movw	%si, 7966(%rcx)	# D.10422, img.304_1110->mprr_3
	movzwl	7966(%rcx), %ecx	# img.304_1110->mprr_3, D.10422
	.loc 1 1031 0
	movw	%cx, 7948(%rdx)	# D.10422, img.303_1109->mprr_3
	movzwl	7948(%rdx), %edx	# img.303_1109->mprr_3, D.10422
	.loc 1 1030 0
	movw	%dx, 7930(%rax)	# D.10422, img.302_1108->mprr_3
	movzwl	7930(%rax), %eax	# img.302_1108->mprr_3, D.10422
	.loc 1 1029 0
	movw	%ax, 7912(%rdi)	# D.10422, img.301_1107->mprr_3
	.loc 1 1034 0
	movq	img(%rip), %r8	# img, img.306
	.loc 1 1035 0
	movq	img(%rip), %rax	# img, img.307
	.loc 1 1036 0
	movq	img(%rip), %rdx	# img, img.308
	.loc 1 1037 0
	movq	img(%rip), %rcx	# img, img.309
	.loc 1 1038 0
	movq	img(%rip), %rsi	# img, img.310
	.loc 1 1039 0
	movq	img(%rip), %rdi	# img, img.311
	movl	-276(%rbp), %r10d	# PredPel, D.10417
	movl	-284(%rbp), %r9d	# PredPel, D.10417
	addl	%r9d, %r10d	# D.10417, D.10417
	movl	-280(%rbp), %r9d	# PredPel, D.10417
	addl	%r9d, %r9d	# D.10417
	addl	%r10d, %r9d	# D.10417, D.10417
	addl	$2, %r9d	#, D.10417
	sarl	$2, %r9d	#, D.10417
	movw	%r9w, 7986(%rdi)	# D.10422, img.311_1130->mprr_3
	movzwl	7986(%rdi), %edi	# img.311_1130->mprr_3, D.10422
	.loc 1 1038 0
	movw	%di, 7968(%rsi)	# D.10422, img.310_1129->mprr_3
	movzwl	7968(%rsi), %esi	# img.310_1129->mprr_3, D.10422
	.loc 1 1037 0
	movw	%si, 7950(%rcx)	# D.10422, img.309_1128->mprr_3
	movzwl	7950(%rcx), %ecx	# img.309_1128->mprr_3, D.10422
	.loc 1 1036 0
	movw	%cx, 7932(%rdx)	# D.10422, img.308_1127->mprr_3
	movzwl	7932(%rdx), %edx	# img.308_1127->mprr_3, D.10422
	.loc 1 1035 0
	movw	%dx, 7914(%rax)	# D.10422, img.307_1126->mprr_3
	movzwl	7914(%rax), %eax	# img.307_1126->mprr_3, D.10422
	.loc 1 1034 0
	movw	%ax, 7896(%r8)	# D.10422, img.306_1125->mprr_3
	.loc 1 1040 0
	movq	img(%rip), %r9	# img, img.312
	.loc 1 1041 0
	movq	img(%rip), %rax	# img, img.313
	.loc 1 1042 0
	movq	img(%rip), %rdx	# img, img.314
	.loc 1 1043 0
	movq	img(%rip), %rcx	# img, img.315
	.loc 1 1044 0
	movq	img(%rip), %rsi	# img, img.316
	.loc 1 1045 0
	movq	img(%rip), %rdi	# img, img.317
	.loc 1 1046 0
	movq	img(%rip), %r8	# img, img.318
	movl	-280(%rbp), %r11d	# PredPel, D.10417
	movl	-352(%rbp), %r10d	# PredPel, D.10417
	addl	%r10d, %r11d	# D.10417, D.10417
	movl	-284(%rbp), %r10d	# PredPel, D.10417
	addl	%r10d, %r10d	# D.10417
	addl	%r11d, %r10d	# D.10417, D.10417
	addl	$2, %r10d	#, D.10417
	sarl	$2, %r10d	#, D.10417
	movw	%r10w, 7988(%r8)	# D.10422, img.318_1151->mprr_3
	movzwl	7988(%r8), %r8d	# img.318_1151->mprr_3, D.10422
	.loc 1 1045 0
	movw	%r8w, 7970(%rdi)	# D.10422, img.317_1150->mprr_3
	movzwl	7970(%rdi), %edi	# img.317_1150->mprr_3, D.10422
	.loc 1 1044 0
	movw	%di, 7952(%rsi)	# D.10422, img.316_1149->mprr_3
	movzwl	7952(%rsi), %esi	# img.316_1149->mprr_3, D.10422
	.loc 1 1043 0
	movw	%si, 7934(%rcx)	# D.10422, img.315_1148->mprr_3
	movzwl	7934(%rcx), %ecx	# img.315_1148->mprr_3, D.10422
	.loc 1 1042 0
	movw	%cx, 7916(%rdx)	# D.10422, img.314_1147->mprr_3
	movzwl	7916(%rdx), %edx	# img.314_1147->mprr_3, D.10422
	.loc 1 1041 0
	movw	%dx, 7898(%rax)	# D.10422, img.313_1146->mprr_3
	movzwl	7898(%rax), %eax	# img.313_1146->mprr_3, D.10422
	.loc 1 1040 0
	movw	%ax, 7880(%r9)	# D.10422, img.312_1145->mprr_3
	.loc 1 1047 0
	movq	img(%rip), %r10	# img, img.319
	.loc 1 1048 0
	movq	img(%rip), %rax	# img, img.320
	.loc 1 1049 0
	movq	img(%rip), %rdx	# img, img.321
	.loc 1 1050 0
	movq	img(%rip), %rcx	# img, img.322
	.loc 1 1051 0
	movq	img(%rip), %rsi	# img, img.323
	.loc 1 1052 0
	movq	img(%rip), %rdi	# img, img.324
	.loc 1 1053 0
	movq	img(%rip), %r8	# img, img.325
	.loc 1 1054 0
	movq	img(%rip), %r9	# img, img.326
	movl	-284(%rbp), %ebx	# PredPel, D.10417
	movl	-348(%rbp), %r11d	# PredPel, D.10417
	addl	%r11d, %ebx	# D.10417, D.10417
	movl	-352(%rbp), %r11d	# PredPel, D.10417
	addl	%r11d, %r11d	# D.10417
	addl	%ebx, %r11d	# D.10417, D.10417
	addl	$2, %r11d	#, D.10417
	sarl	$2, %r11d	#, D.10417
	movw	%r11w, 7990(%r9)	# D.10422, img.326_1174->mprr_3
	movzwl	7990(%r9), %r9d	# img.326_1174->mprr_3, D.10422
	.loc 1 1053 0
	movw	%r9w, 7972(%r8)	# D.10422, img.325_1173->mprr_3
	movzwl	7972(%r8), %r8d	# img.325_1173->mprr_3, D.10422
	.loc 1 1052 0
	movw	%r8w, 7954(%rdi)	# D.10422, img.324_1172->mprr_3
	movzwl	7954(%rdi), %edi	# img.324_1172->mprr_3, D.10422
	.loc 1 1051 0
	movw	%di, 7936(%rsi)	# D.10422, img.323_1171->mprr_3
	movzwl	7936(%rsi), %esi	# img.323_1171->mprr_3, D.10422
	.loc 1 1050 0
	movw	%si, 7918(%rcx)	# D.10422, img.322_1170->mprr_3
	movzwl	7918(%rcx), %ecx	# img.322_1170->mprr_3, D.10422
	.loc 1 1049 0
	movw	%cx, 7900(%rdx)	# D.10422, img.321_1169->mprr_3
	movzwl	7900(%rdx), %edx	# img.321_1169->mprr_3, D.10422
	.loc 1 1048 0
	movw	%dx, 7882(%rax)	# D.10422, img.320_1168->mprr_3
	movzwl	7882(%rax), %eax	# img.320_1168->mprr_3, D.10422
	.loc 1 1047 0
	movw	%ax, 7864(%r10)	# D.10422, img.319_1167->mprr_3
	.loc 1 1055 0
	movq	img(%rip), %r9	# img, img.327
	.loc 1 1056 0
	movq	img(%rip), %rax	# img, img.328
	.loc 1 1057 0
	movq	img(%rip), %rdx	# img, img.329
	.loc 1 1058 0
	movq	img(%rip), %rcx	# img, img.330
	.loc 1 1059 0
	movq	img(%rip), %rsi	# img, img.331
	.loc 1 1060 0
	movq	img(%rip), %rdi	# img, img.332
	.loc 1 1061 0
	movq	img(%rip), %r8	# img, img.333
	movl	-352(%rbp), %r11d	# PredPel, D.10417
	movl	-344(%rbp), %r10d	# PredPel, D.10417
	addl	%r10d, %r11d	# D.10417, D.10417
	movl	-348(%rbp), %r10d	# PredPel, D.10417
	addl	%r10d, %r10d	# D.10417
	addl	%r11d, %r10d	# D.10417, D.10417
	addl	$2, %r10d	#, D.10417
	sarl	$2, %r10d	#, D.10417
	movw	%r10w, 7974(%r8)	# D.10422, img.333_1197->mprr_3
	movzwl	7974(%r8), %r8d	# img.333_1197->mprr_3, D.10422
	.loc 1 1060 0
	movw	%r8w, 7956(%rdi)	# D.10422, img.332_1196->mprr_3
	movzwl	7956(%rdi), %edi	# img.332_1196->mprr_3, D.10422
	.loc 1 1059 0
	movw	%di, 7938(%rsi)	# D.10422, img.331_1195->mprr_3
	movzwl	7938(%rsi), %esi	# img.331_1195->mprr_3, D.10422
	.loc 1 1058 0
	movw	%si, 7920(%rcx)	# D.10422, img.330_1194->mprr_3
	movzwl	7920(%rcx), %ecx	# img.330_1194->mprr_3, D.10422
	.loc 1 1057 0
	movw	%cx, 7902(%rdx)	# D.10422, img.329_1193->mprr_3
	movzwl	7902(%rdx), %edx	# img.329_1193->mprr_3, D.10422
	.loc 1 1056 0
	movw	%dx, 7884(%rax)	# D.10422, img.328_1192->mprr_3
	movzwl	7884(%rax), %eax	# img.328_1192->mprr_3, D.10422
	.loc 1 1055 0
	movw	%ax, 7866(%r9)	# D.10422, img.327_1191->mprr_3
	.loc 1 1062 0
	movq	img(%rip), %r8	# img, img.334
	.loc 1 1063 0
	movq	img(%rip), %rax	# img, img.335
	.loc 1 1064 0
	movq	img(%rip), %rdx	# img, img.336
	.loc 1 1065 0
	movq	img(%rip), %rcx	# img, img.337
	.loc 1 1066 0
	movq	img(%rip), %rsi	# img, img.338
	.loc 1 1067 0
	movq	img(%rip), %rdi	# img, img.339
	movl	-348(%rbp), %r10d	# PredPel, D.10417
	movl	-340(%rbp), %r9d	# PredPel, D.10417
	addl	%r9d, %r10d	# D.10417, D.10417
	movl	-344(%rbp), %r9d	# PredPel, D.10417
	addl	%r9d, %r9d	# D.10417
	addl	%r10d, %r9d	# D.10417, D.10417
	addl	$2, %r9d	#, D.10417
	sarl	$2, %r9d	#, D.10417
	movw	%r9w, 7958(%rdi)	# D.10422, img.339_1218->mprr_3
	movzwl	7958(%rdi), %edi	# img.339_1218->mprr_3, D.10422
	.loc 1 1066 0
	movw	%di, 7940(%rsi)	# D.10422, img.338_1217->mprr_3
	movzwl	7940(%rsi), %esi	# img.338_1217->mprr_3, D.10422
	.loc 1 1065 0
	movw	%si, 7922(%rcx)	# D.10422, img.337_1216->mprr_3
	movzwl	7922(%rcx), %ecx	# img.337_1216->mprr_3, D.10422
	.loc 1 1064 0
	movw	%cx, 7904(%rdx)	# D.10422, img.336_1215->mprr_3
	movzwl	7904(%rdx), %edx	# img.336_1215->mprr_3, D.10422
	.loc 1 1063 0
	movw	%dx, 7886(%rax)	# D.10422, img.335_1214->mprr_3
	movzwl	7886(%rax), %eax	# img.335_1214->mprr_3, D.10422
	.loc 1 1062 0
	movw	%ax, 7868(%r8)	# D.10422, img.334_1213->mprr_3
	.loc 1 1068 0
	movq	img(%rip), %rdi	# img, img.340
	.loc 1 1069 0
	movq	img(%rip), %rax	# img, img.341
	.loc 1 1070 0
	movq	img(%rip), %rdx	# img, img.342
	.loc 1 1071 0
	movq	img(%rip), %rcx	# img, img.343
	.loc 1 1072 0
	movq	img(%rip), %rsi	# img, img.344
	movl	-344(%rbp), %r9d	# PredPel, D.10417
	movl	-336(%rbp), %r8d	# PredPel, D.10417
	addl	%r8d, %r9d	# D.10417, D.10417
	movl	-340(%rbp), %r8d	# PredPel, D.10417
	addl	%r8d, %r8d	# D.10417
	addl	%r9d, %r8d	# D.10417, D.10417
	addl	$2, %r8d	#, D.10417
	sarl	$2, %r8d	#, D.10417
	movw	%r8w, 7942(%rsi)	# D.10422, img.344_1237->mprr_3
	movzwl	7942(%rsi), %esi	# img.344_1237->mprr_3, D.10422
	.loc 1 1071 0
	movw	%si, 7924(%rcx)	# D.10422, img.343_1236->mprr_3
	movzwl	7924(%rcx), %ecx	# img.343_1236->mprr_3, D.10422
	.loc 1 1070 0
	movw	%cx, 7906(%rdx)	# D.10422, img.342_1235->mprr_3
	movzwl	7906(%rdx), %edx	# img.342_1235->mprr_3, D.10422
	.loc 1 1069 0
	movw	%dx, 7888(%rax)	# D.10422, img.341_1234->mprr_3
	movzwl	7888(%rax), %eax	# img.341_1234->mprr_3, D.10422
	.loc 1 1068 0
	movw	%ax, 7870(%rdi)	# D.10422, img.340_1233->mprr_3
	.loc 1 1073 0
	movq	img(%rip), %rsi	# img, img.345
	.loc 1 1074 0
	movq	img(%rip), %rax	# img, img.346
	.loc 1 1075 0
	movq	img(%rip), %rdx	# img, img.347
	.loc 1 1076 0
	movq	img(%rip), %rcx	# img, img.348
	movl	-340(%rbp), %r8d	# PredPel, D.10417
	movl	-332(%rbp), %edi	# PredPel, D.10417
	addl	%edi, %r8d	# D.10417, D.10417
	movl	-336(%rbp), %edi	# PredPel, D.10417
	addl	%edi, %edi	# D.10417
	addl	%r8d, %edi	# D.10417, D.10417
	addl	$2, %edi	#, D.10417
	sarl	$2, %edi	#, D.10417
	movw	%di, 7926(%rcx)	# D.10422, img.348_1254->mprr_3
	movzwl	7926(%rcx), %ecx	# img.348_1254->mprr_3, D.10422
	.loc 1 1075 0
	movw	%cx, 7908(%rdx)	# D.10422, img.347_1253->mprr_3
	movzwl	7908(%rdx), %edx	# img.347_1253->mprr_3, D.10422
	.loc 1 1074 0
	movw	%dx, 7890(%rax)	# D.10422, img.346_1252->mprr_3
	movzwl	7890(%rax), %eax	# img.346_1252->mprr_3, D.10422
	.loc 1 1073 0
	movw	%ax, 7872(%rsi)	# D.10422, img.345_1251->mprr_3
	.loc 1 1077 0
	movq	img(%rip), %rcx	# img, img.349
	.loc 1 1078 0
	movq	img(%rip), %rax	# img, img.350
	.loc 1 1079 0
	movq	img(%rip), %rdx	# img, img.351
	movl	-336(%rbp), %edi	# PredPel, D.10417
	movl	-328(%rbp), %esi	# PredPel, D.10417
	addl	%esi, %edi	# D.10417, D.10417
	movl	-332(%rbp), %esi	# PredPel, D.10417
	addl	%esi, %esi	# D.10417
	addl	%edi, %esi	# D.10417, D.10417
	addl	$2, %esi	#, D.10417
	sarl	$2, %esi	#, D.10417
	movw	%si, 7910(%rdx)	# D.10422, img.351_1269->mprr_3
	movzwl	7910(%rdx), %edx	# img.351_1269->mprr_3, D.10422
	.loc 1 1078 0
	movw	%dx, 7892(%rax)	# D.10422, img.350_1268->mprr_3
	movzwl	7892(%rax), %eax	# img.350_1268->mprr_3, D.10422
	.loc 1 1077 0
	movw	%ax, 7874(%rcx)	# D.10422, img.349_1267->mprr_3
	.loc 1 1080 0
	movq	img(%rip), %rdx	# img, img.352
	.loc 1 1081 0
	movq	img(%rip), %rax	# img, img.353
	movl	-332(%rbp), %esi	# PredPel, D.10417
	movl	-324(%rbp), %ecx	# PredPel, D.10417
	addl	%ecx, %esi	# D.10417, D.10417
	movl	-328(%rbp), %ecx	# PredPel, D.10417
	addl	%ecx, %ecx	# D.10417
	addl	%esi, %ecx	# D.10417, D.10417
	addl	$2, %ecx	#, D.10417
	sarl	$2, %ecx	#, D.10417
	movw	%cx, 7894(%rax)	# D.10422, img.353_1282->mprr_3
	movzwl	7894(%rax), %eax	# img.353_1282->mprr_3, D.10422
	.loc 1 1080 0
	movw	%ax, 7876(%rdx)	# D.10422, img.352_1281->mprr_3
	.loc 1 1082 0
	movq	img(%rip), %rax	# img, img.354
	movl	-328(%rbp), %ecx	# PredPel, D.10417
	movl	-320(%rbp), %edx	# PredPel, D.10417
	addl	%edx, %ecx	# D.10417, D.10417
	movl	-324(%rbp), %edx	# PredPel, D.10417
	addl	%edx, %edx	# D.10417
	addl	%ecx, %edx	# D.10417, D.10417
	addl	$2, %edx	#, D.10417
	sarl	$2, %edx	#, D.10417
	movw	%dx, 7878(%rax)	# D.10422, img.354_1293->mprr_3
	.loc 1 1087 0
	movq	img(%rip), %rsi	# img, img.355
	.loc 1 1088 0
	movq	img(%rip), %rax	# img, img.356
	.loc 1 1089 0
	movq	img(%rip), %rdx	# img, img.357
	.loc 1 1090 0
	movq	img(%rip), %rcx	# img, img.358
	movl	-352(%rbp), %r8d	# PredPel, D.10417
	movl	-348(%rbp), %edi	# PredPel, D.10417
	addl	%r8d, %edi	# D.10417, D.10417
	addl	$1, %edi	#, D.10417
	sarl	%edi	# D.10417
	movw	%di, 8094(%rcx)	# D.10422, img.358_1306->mprr_3
	movzwl	8094(%rcx), %ecx	# img.358_1306->mprr_3, D.10422
	.loc 1 1089 0
	movw	%cx, 8060(%rdx)	# D.10422, img.357_1305->mprr_3
	movzwl	8060(%rdx), %edx	# img.357_1305->mprr_3, D.10422
	.loc 1 1088 0
	movw	%dx, 8026(%rax)	# D.10422, img.356_1304->mprr_3
	movzwl	8026(%rax), %eax	# img.356_1304->mprr_3, D.10422
	.loc 1 1087 0
	movw	%ax, 7992(%rsi)	# D.10422, img.355_1303->mprr_3
	.loc 1 1091 0
	movq	img(%rip), %rsi	# img, img.359
	.loc 1 1092 0
	movq	img(%rip), %rax	# img, img.360
	.loc 1 1093 0
	movq	img(%rip), %rdx	# img, img.361
	.loc 1 1094 0
	movq	img(%rip), %rcx	# img, img.362
	movl	-348(%rbp), %r8d	# PredPel, D.10417
	movl	-344(%rbp), %edi	# PredPel, D.10417
	addl	%r8d, %edi	# D.10417, D.10417
	addl	$1, %edi	#, D.10417
	sarl	%edi	# D.10417
	movw	%di, 8096(%rcx)	# D.10422, img.362_1319->mprr_3
	movzwl	8096(%rcx), %ecx	# img.362_1319->mprr_3, D.10422
	.loc 1 1093 0
	movw	%cx, 8062(%rdx)	# D.10422, img.361_1318->mprr_3
	movzwl	8062(%rdx), %edx	# img.361_1318->mprr_3, D.10422
	.loc 1 1092 0
	movw	%dx, 8028(%rax)	# D.10422, img.360_1317->mprr_3
	movzwl	8028(%rax), %eax	# img.360_1317->mprr_3, D.10422
	.loc 1 1091 0
	movw	%ax, 7994(%rsi)	# D.10422, img.359_1316->mprr_3
	.loc 1 1095 0
	movq	img(%rip), %rsi	# img, img.363
	.loc 1 1096 0
	movq	img(%rip), %rax	# img, img.364
	.loc 1 1097 0
	movq	img(%rip), %rdx	# img, img.365
	.loc 1 1098 0
	movq	img(%rip), %rcx	# img, img.366
	movl	-344(%rbp), %r8d	# PredPel, D.10417
	movl	-340(%rbp), %edi	# PredPel, D.10417
	addl	%r8d, %edi	# D.10417, D.10417
	addl	$1, %edi	#, D.10417
	sarl	%edi	# D.10417
	movw	%di, 8098(%rcx)	# D.10422, img.366_1332->mprr_3
	movzwl	8098(%rcx), %ecx	# img.366_1332->mprr_3, D.10422
	.loc 1 1097 0
	movw	%cx, 8064(%rdx)	# D.10422, img.365_1331->mprr_3
	movzwl	8064(%rdx), %edx	# img.365_1331->mprr_3, D.10422
	.loc 1 1096 0
	movw	%dx, 8030(%rax)	# D.10422, img.364_1330->mprr_3
	movzwl	8030(%rax), %eax	# img.364_1330->mprr_3, D.10422
	.loc 1 1095 0
	movw	%ax, 7996(%rsi)	# D.10422, img.363_1329->mprr_3
	.loc 1 1099 0
	movq	img(%rip), %rsi	# img, img.367
	.loc 1 1100 0
	movq	img(%rip), %rax	# img, img.368
	.loc 1 1101 0
	movq	img(%rip), %rdx	# img, img.369
	.loc 1 1102 0
	movq	img(%rip), %rcx	# img, img.370
	movl	-340(%rbp), %r8d	# PredPel, D.10417
	movl	-336(%rbp), %edi	# PredPel, D.10417
	addl	%r8d, %edi	# D.10417, D.10417
	addl	$1, %edi	#, D.10417
	sarl	%edi	# D.10417
	movw	%di, 8100(%rcx)	# D.10422, img.370_1345->mprr_3
	movzwl	8100(%rcx), %ecx	# img.370_1345->mprr_3, D.10422
	.loc 1 1101 0
	movw	%cx, 8066(%rdx)	# D.10422, img.369_1344->mprr_3
	movzwl	8066(%rdx), %edx	# img.369_1344->mprr_3, D.10422
	.loc 1 1100 0
	movw	%dx, 8032(%rax)	# D.10422, img.368_1343->mprr_3
	movzwl	8032(%rax), %eax	# img.368_1343->mprr_3, D.10422
	.loc 1 1099 0
	movw	%ax, 7998(%rsi)	# D.10422, img.367_1342->mprr_3
	.loc 1 1103 0
	movq	img(%rip), %rsi	# img, img.371
	.loc 1 1104 0
	movq	img(%rip), %rax	# img, img.372
	.loc 1 1105 0
	movq	img(%rip), %rdx	# img, img.373
	.loc 1 1106 0
	movq	img(%rip), %rcx	# img, img.374
	movl	-336(%rbp), %r8d	# PredPel, D.10417
	movl	-332(%rbp), %edi	# PredPel, D.10417
	addl	%r8d, %edi	# D.10417, D.10417
	addl	$1, %edi	#, D.10417
	sarl	%edi	# D.10417
	movw	%di, 8102(%rcx)	# D.10422, img.374_1358->mprr_3
	movzwl	8102(%rcx), %ecx	# img.374_1358->mprr_3, D.10422
	.loc 1 1105 0
	movw	%cx, 8068(%rdx)	# D.10422, img.373_1357->mprr_3
	movzwl	8068(%rdx), %edx	# img.373_1357->mprr_3, D.10422
	.loc 1 1104 0
	movw	%dx, 8034(%rax)	# D.10422, img.372_1356->mprr_3
	movzwl	8034(%rax), %eax	# img.372_1356->mprr_3, D.10422
	.loc 1 1103 0
	movw	%ax, 8000(%rsi)	# D.10422, img.371_1355->mprr_3
	.loc 1 1107 0
	movq	img(%rip), %rcx	# img, img.375
	.loc 1 1108 0
	movq	img(%rip), %rax	# img, img.376
	.loc 1 1109 0
	movq	img(%rip), %rdx	# img, img.377
	movl	-332(%rbp), %edi	# PredPel, D.10417
	movl	-328(%rbp), %esi	# PredPel, D.10417
	addl	%edi, %esi	# D.10417, D.10417
	addl	$1, %esi	#, D.10417
	sarl	%esi	# D.10417
	movw	%si, 8070(%rdx)	# D.10422, img.377_1370->mprr_3
	movzwl	8070(%rdx), %edx	# img.377_1370->mprr_3, D.10422
	.loc 1 1108 0
	movw	%dx, 8036(%rax)	# D.10422, img.376_1369->mprr_3
	movzwl	8036(%rax), %eax	# img.376_1369->mprr_3, D.10422
	.loc 1 1107 0
	movw	%ax, 8002(%rcx)	# D.10422, img.375_1368->mprr_3
	.loc 1 1110 0
	movq	img(%rip), %rdx	# img, img.378
	.loc 1 1111 0
	movq	img(%rip), %rax	# img, img.379
	movl	-328(%rbp), %esi	# PredPel, D.10417
	movl	-324(%rbp), %ecx	# PredPel, D.10417
	addl	%esi, %ecx	# D.10417, D.10417
	addl	$1, %ecx	#, D.10417
	sarl	%ecx	# D.10417
	movw	%cx, 8038(%rax)	# D.10422, img.379_1380->mprr_3
	movzwl	8038(%rax), %eax	# img.379_1380->mprr_3, D.10422
	.loc 1 1110 0
	movw	%ax, 8004(%rdx)	# D.10422, img.378_1379->mprr_3
	.loc 1 1112 0
	movq	img(%rip), %rax	# img, img.380
	movl	-324(%rbp), %ecx	# PredPel, D.10417
	movl	-320(%rbp), %edx	# PredPel, D.10417
	addl	%ecx, %edx	# D.10417, D.10417
	addl	$1, %edx	#, D.10417
	sarl	%edx	# D.10417
	movw	%dx, 8006(%rax)	# D.10422, img.380_1388->mprr_3
	.loc 1 1113 0
	movq	img(%rip), %rsi	# img, img.381
	.loc 1 1114 0
	movq	img(%rip), %rax	# img, img.382
	.loc 1 1115 0
	movq	img(%rip), %rdx	# img, img.383
	.loc 1 1116 0
	movq	img(%rip), %rcx	# img, img.384
	movl	-284(%rbp), %r8d	# PredPel, D.10417
	movl	-348(%rbp), %edi	# PredPel, D.10417
	addl	%edi, %r8d	# D.10417, D.10417
	movl	-352(%rbp), %edi	# PredPel, D.10417
	addl	%edi, %edi	# D.10417
	addl	%r8d, %edi	# D.10417, D.10417
	addl	$2, %edi	#, D.10417
	sarl	$2, %edi	#, D.10417
	movw	%di, 8110(%rcx)	# D.10422, img.384_1398->mprr_3
	movzwl	8110(%rcx), %ecx	# img.384_1398->mprr_3, D.10422
	.loc 1 1115 0
	movw	%cx, 8076(%rdx)	# D.10422, img.383_1397->mprr_3
	movzwl	8076(%rdx), %edx	# img.383_1397->mprr_3, D.10422
	.loc 1 1114 0
	movw	%dx, 8042(%rax)	# D.10422, img.382_1396->mprr_3
	movzwl	8042(%rax), %eax	# img.382_1396->mprr_3, D.10422
	.loc 1 1113 0
	movw	%ax, 8008(%rsi)	# D.10422, img.381_1395->mprr_3
	.loc 1 1117 0
	movq	img(%rip), %rsi	# img, img.385
	.loc 1 1118 0
	movq	img(%rip), %rax	# img, img.386
	.loc 1 1119 0
	movq	img(%rip), %rdx	# img, img.387
	.loc 1 1120 0
	movq	img(%rip), %rcx	# img, img.388
	movl	-352(%rbp), %r8d	# PredPel, D.10417
	movl	-344(%rbp), %edi	# PredPel, D.10417
	addl	%edi, %r8d	# D.10417, D.10417
	movl	-348(%rbp), %edi	# PredPel, D.10417
	addl	%edi, %edi	# D.10417
	addl	%r8d, %edi	# D.10417, D.10417
	addl	$2, %edi	#, D.10417
	sarl	$2, %edi	#, D.10417
	movw	%di, 8112(%rcx)	# D.10422, img.388_1414->mprr_3
	movzwl	8112(%rcx), %ecx	# img.388_1414->mprr_3, D.10422
	.loc 1 1119 0
	movw	%cx, 8078(%rdx)	# D.10422, img.387_1413->mprr_3
	movzwl	8078(%rdx), %edx	# img.387_1413->mprr_3, D.10422
	.loc 1 1118 0
	movw	%dx, 8044(%rax)	# D.10422, img.386_1412->mprr_3
	movzwl	8044(%rax), %eax	# img.386_1412->mprr_3, D.10422
	.loc 1 1117 0
	movw	%ax, 8010(%rsi)	# D.10422, img.385_1411->mprr_3
	.loc 1 1121 0
	movq	img(%rip), %rsi	# img, img.389
	.loc 1 1122 0
	movq	img(%rip), %rax	# img, img.390
	.loc 1 1123 0
	movq	img(%rip), %rdx	# img, img.391
	.loc 1 1124 0
	movq	img(%rip), %rcx	# img, img.392
	movl	-348(%rbp), %r8d	# PredPel, D.10417
	movl	-340(%rbp), %edi	# PredPel, D.10417
	addl	%edi, %r8d	# D.10417, D.10417
	movl	-344(%rbp), %edi	# PredPel, D.10417
	addl	%edi, %edi	# D.10417
	addl	%r8d, %edi	# D.10417, D.10417
	addl	$2, %edi	#, D.10417
	sarl	$2, %edi	#, D.10417
	movw	%di, 8114(%rcx)	# D.10422, img.392_1430->mprr_3
	movzwl	8114(%rcx), %ecx	# img.392_1430->mprr_3, D.10422
	.loc 1 1123 0
	movw	%cx, 8080(%rdx)	# D.10422, img.391_1429->mprr_3
	movzwl	8080(%rdx), %edx	# img.391_1429->mprr_3, D.10422
	.loc 1 1122 0
	movw	%dx, 8046(%rax)	# D.10422, img.390_1428->mprr_3
	movzwl	8046(%rax), %eax	# img.390_1428->mprr_3, D.10422
	.loc 1 1121 0
	movw	%ax, 8012(%rsi)	# D.10422, img.389_1427->mprr_3
	.loc 1 1125 0
	movq	img(%rip), %rsi	# img, img.393
	.loc 1 1126 0
	movq	img(%rip), %rax	# img, img.394
	.loc 1 1127 0
	movq	img(%rip), %rdx	# img, img.395
	.loc 1 1128 0
	movq	img(%rip), %rcx	# img, img.396
	movl	-344(%rbp), %r8d	# PredPel, D.10417
	movl	-336(%rbp), %edi	# PredPel, D.10417
	addl	%edi, %r8d	# D.10417, D.10417
	movl	-340(%rbp), %edi	# PredPel, D.10417
	addl	%edi, %edi	# D.10417
	addl	%r8d, %edi	# D.10417, D.10417
	addl	$2, %edi	#, D.10417
	sarl	$2, %edi	#, D.10417
	movw	%di, 8116(%rcx)	# D.10422, img.396_1446->mprr_3
	movzwl	8116(%rcx), %ecx	# img.396_1446->mprr_3, D.10422
	.loc 1 1127 0
	movw	%cx, 8082(%rdx)	# D.10422, img.395_1445->mprr_3
	movzwl	8082(%rdx), %edx	# img.395_1445->mprr_3, D.10422
	.loc 1 1126 0
	movw	%dx, 8048(%rax)	# D.10422, img.394_1444->mprr_3
	movzwl	8048(%rax), %eax	# img.394_1444->mprr_3, D.10422
	.loc 1 1125 0
	movw	%ax, 8014(%rsi)	# D.10422, img.393_1443->mprr_3
	.loc 1 1129 0
	movq	img(%rip), %rsi	# img, img.397
	.loc 1 1130 0
	movq	img(%rip), %rax	# img, img.398
	.loc 1 1131 0
	movq	img(%rip), %rdx	# img, img.399
	.loc 1 1132 0
	movq	img(%rip), %rcx	# img, img.400
	movl	-340(%rbp), %r8d	# PredPel, D.10417
	movl	-332(%rbp), %edi	# PredPel, D.10417
	addl	%edi, %r8d	# D.10417, D.10417
	movl	-336(%rbp), %edi	# PredPel, D.10417
	addl	%edi, %edi	# D.10417
	addl	%r8d, %edi	# D.10417, D.10417
	addl	$2, %edi	#, D.10417
	sarl	$2, %edi	#, D.10417
	movw	%di, 8118(%rcx)	# D.10422, img.400_1462->mprr_3
	movzwl	8118(%rcx), %ecx	# img.400_1462->mprr_3, D.10422
	.loc 1 1131 0
	movw	%cx, 8084(%rdx)	# D.10422, img.399_1461->mprr_3
	movzwl	8084(%rdx), %edx	# img.399_1461->mprr_3, D.10422
	.loc 1 1130 0
	movw	%dx, 8050(%rax)	# D.10422, img.398_1460->mprr_3
	movzwl	8050(%rax), %eax	# img.398_1460->mprr_3, D.10422
	.loc 1 1129 0
	movw	%ax, 8016(%rsi)	# D.10422, img.397_1459->mprr_3
	.loc 1 1133 0
	movq	img(%rip), %rcx	# img, img.401
	.loc 1 1134 0
	movq	img(%rip), %rax	# img, img.402
	.loc 1 1135 0
	movq	img(%rip), %rdx	# img, img.403
	movl	-336(%rbp), %edi	# PredPel, D.10417
	movl	-328(%rbp), %esi	# PredPel, D.10417
	addl	%esi, %edi	# D.10417, D.10417
	movl	-332(%rbp), %esi	# PredPel, D.10417
	addl	%esi, %esi	# D.10417
	addl	%edi, %esi	# D.10417, D.10417
	addl	$2, %esi	#, D.10417
	sarl	$2, %esi	#, D.10417
	movw	%si, 8086(%rdx)	# D.10422, img.403_1477->mprr_3
	movzwl	8086(%rdx), %edx	# img.403_1477->mprr_3, D.10422
	.loc 1 1134 0
	movw	%dx, 8052(%rax)	# D.10422, img.402_1476->mprr_3
	movzwl	8052(%rax), %eax	# img.402_1476->mprr_3, D.10422
	.loc 1 1133 0
	movw	%ax, 8018(%rcx)	# D.10422, img.401_1475->mprr_3
	.loc 1 1136 0
	movq	img(%rip), %rdx	# img, img.404
	.loc 1 1137 0
	movq	img(%rip), %rax	# img, img.405
	movl	-332(%rbp), %esi	# PredPel, D.10417
	movl	-324(%rbp), %ecx	# PredPel, D.10417
	addl	%ecx, %esi	# D.10417, D.10417
	movl	-328(%rbp), %ecx	# PredPel, D.10417
	addl	%ecx, %ecx	# D.10417
	addl	%esi, %ecx	# D.10417, D.10417
	addl	$2, %ecx	#, D.10417
	sarl	$2, %ecx	#, D.10417
	movw	%cx, 8054(%rax)	# D.10422, img.405_1490->mprr_3
	movzwl	8054(%rax), %eax	# img.405_1490->mprr_3, D.10422
	.loc 1 1136 0
	movw	%ax, 8020(%rdx)	# D.10422, img.404_1489->mprr_3
	.loc 1 1138 0
	movq	img(%rip), %rax	# img, img.406
	movl	-328(%rbp), %ecx	# PredPel, D.10417
	movl	-320(%rbp), %edx	# PredPel, D.10417
	addl	%edx, %ecx	# D.10417, D.10417
	movl	-324(%rbp), %edx	# PredPel, D.10417
	addl	%edx, %edx	# D.10417
	addl	%ecx, %edx	# D.10417, D.10417
	addl	$2, %edx	#, D.10417
	sarl	$2, %edx	#, D.10417
	movw	%dx, 8022(%rax)	# D.10422, img.406_1501->mprr_3
	.loc 1 1139 0
	movq	img(%rip), %rcx	# img, img.407
	.loc 1 1140 0
	movq	img(%rip), %rax	# img, img.408
	.loc 1 1141 0
	movq	img(%rip), %rdx	# img, img.409
	movl	-280(%rbp), %edi	# PredPel, D.10417
	movl	-352(%rbp), %esi	# PredPel, D.10417
	addl	%esi, %edi	# D.10417, D.10417
	movl	-284(%rbp), %esi	# PredPel, D.10417
	addl	%esi, %esi	# D.10417
	addl	%edi, %esi	# D.10417, D.10417
	addl	$2, %esi	#, D.10417
	sarl	$2, %esi	#, D.10417
	movw	%si, 8092(%rdx)	# D.10422, img.409_1513->mprr_3
	movzwl	8092(%rdx), %edx	# img.409_1513->mprr_3, D.10422
	.loc 1 1140 0
	movw	%dx, 8058(%rax)	# D.10422, img.408_1512->mprr_3
	movzwl	8058(%rax), %eax	# img.408_1512->mprr_3, D.10422
	.loc 1 1139 0
	movw	%ax, 8024(%rcx)	# D.10422, img.407_1511->mprr_3
	.loc 1 1142 0
	movq	img(%rip), %rcx	# img, img.410
	.loc 1 1143 0
	movq	img(%rip), %rax	# img, img.411
	.loc 1 1144 0
	movq	img(%rip), %rdx	# img, img.412
	movl	-276(%rbp), %edi	# PredPel, D.10417
	movl	-284(%rbp), %esi	# PredPel, D.10417
	addl	%esi, %edi	# D.10417, D.10417
	movl	-280(%rbp), %esi	# PredPel, D.10417
	addl	%esi, %esi	# D.10417
	addl	%edi, %esi	# D.10417, D.10417
	addl	$2, %esi	#, D.10417
	sarl	$2, %esi	#, D.10417
	movw	%si, 8108(%rdx)	# D.10422, img.412_1527->mprr_3
	movzwl	8108(%rdx), %edx	# img.412_1527->mprr_3, D.10422
	.loc 1 1143 0
	movw	%dx, 8074(%rax)	# D.10422, img.411_1526->mprr_3
	movzwl	8074(%rax), %eax	# img.411_1526->mprr_3, D.10422
	.loc 1 1142 0
	movw	%ax, 8040(%rcx)	# D.10422, img.410_1525->mprr_3
	.loc 1 1145 0
	movq	img(%rip), %rdx	# img, img.413
	.loc 1 1146 0
	movq	img(%rip), %rax	# img, img.414
	movl	-272(%rbp), %esi	# PredPel, D.10417
	movl	-280(%rbp), %ecx	# PredPel, D.10417
	addl	%ecx, %esi	# D.10417, D.10417
	movl	-276(%rbp), %ecx	# PredPel, D.10417
	addl	%ecx, %ecx	# D.10417
	addl	%esi, %ecx	# D.10417, D.10417
	addl	$2, %ecx	#, D.10417
	sarl	$2, %ecx	#, D.10417
	movw	%cx, 8090(%rax)	# D.10422, img.414_1540->mprr_3
	movzwl	8090(%rax), %eax	# img.414_1540->mprr_3, D.10422
	.loc 1 1145 0
	movw	%ax, 8056(%rdx)	# D.10422, img.413_1539->mprr_3
	.loc 1 1147 0
	movq	img(%rip), %rdx	# img, img.415
	.loc 1 1148 0
	movq	img(%rip), %rax	# img, img.416
	movl	-268(%rbp), %esi	# PredPel, D.10417
	movl	-276(%rbp), %ecx	# PredPel, D.10417
	addl	%ecx, %esi	# D.10417, D.10417
	movl	-272(%rbp), %ecx	# PredPel, D.10417
	addl	%ecx, %ecx	# D.10417
	addl	%esi, %ecx	# D.10417, D.10417
	addl	$2, %ecx	#, D.10417
	sarl	$2, %ecx	#, D.10417
	movw	%cx, 8106(%rax)	# D.10422, img.416_1552->mprr_3
	movzwl	8106(%rax), %eax	# img.416_1552->mprr_3, D.10422
	.loc 1 1147 0
	movw	%ax, 8072(%rdx)	# D.10422, img.415_1551->mprr_3
	.loc 1 1149 0
	movq	img(%rip), %rax	# img, img.417
	movl	-264(%rbp), %ecx	# PredPel, D.10417
	movl	-272(%rbp), %edx	# PredPel, D.10417
	addl	%edx, %ecx	# D.10417, D.10417
	movl	-268(%rbp), %edx	# PredPel, D.10417
	addl	%edx, %edx	# D.10417
	addl	%ecx, %edx	# D.10417, D.10417
	addl	$2, %edx	#, D.10417
	sarl	$2, %edx	#, D.10417
	movw	%dx, 8088(%rax)	# D.10422, img.417_1563->mprr_3
	.loc 1 1150 0
	movq	img(%rip), %rax	# img, img.418
	movl	-260(%rbp), %ecx	# PredPel, D.10417
	movl	-268(%rbp), %edx	# PredPel, D.10417
	addl	%edx, %ecx	# D.10417, D.10417
	movl	-264(%rbp), %edx	# PredPel, D.10417
	addl	%edx, %edx	# D.10417
	addl	%ecx, %edx	# D.10417, D.10417
	addl	$2, %edx	#, D.10417
	sarl	$2, %edx	#, D.10417
	movw	%dx, 8104(%rax)	# D.10422, img.418_1573->mprr_3
	.loc 1 1156 0
	movq	img(%rip), %rsi	# img, img.419
	.loc 1 1157 0
	movq	img(%rip), %rax	# img, img.420
	.loc 1 1158 0
	movq	img(%rip), %rdx	# img, img.421
	.loc 1 1159 0
	movq	img(%rip), %rcx	# img, img.422
	movl	-284(%rbp), %r8d	# PredPel, D.10417
	movl	-352(%rbp), %edi	# PredPel, D.10417
	addl	%r8d, %edi	# D.10417, D.10417
	addl	$1, %edi	#, D.10417
	sarl	%edi	# D.10417
	movw	%di, 8180(%rcx)	# D.10422, img.422_1586->mprr_3
	movzwl	8180(%rcx), %ecx	# img.422_1586->mprr_3, D.10422
	.loc 1 1158 0
	movw	%cx, 8160(%rdx)	# D.10422, img.421_1585->mprr_3
	movzwl	8160(%rdx), %edx	# img.421_1585->mprr_3, D.10422
	.loc 1 1157 0
	movw	%dx, 8140(%rax)	# D.10422, img.420_1584->mprr_3
	movzwl	8140(%rax), %eax	# img.420_1584->mprr_3, D.10422
	.loc 1 1156 0
	movw	%ax, 8120(%rsi)	# D.10422, img.419_1583->mprr_3
	.loc 1 1160 0
	movq	img(%rip), %rsi	# img, img.423
	.loc 1 1161 0
	movq	img(%rip), %rax	# img, img.424
	.loc 1 1162 0
	movq	img(%rip), %rdx	# img, img.425
	.loc 1 1163 0
	movq	img(%rip), %rcx	# img, img.426
	movl	-280(%rbp), %r8d	# PredPel, D.10417
	movl	-284(%rbp), %edi	# PredPel, D.10417
	addl	%r8d, %edi	# D.10417, D.10417
	addl	$1, %edi	#, D.10417
	sarl	%edi	# D.10417
	movw	%di, 8196(%rcx)	# D.10422, img.426_1599->mprr_3
	movzwl	8196(%rcx), %ecx	# img.426_1599->mprr_3, D.10422
	.loc 1 1162 0
	movw	%cx, 8176(%rdx)	# D.10422, img.425_1598->mprr_3
	movzwl	8176(%rdx), %edx	# img.425_1598->mprr_3, D.10422
	.loc 1 1161 0
	movw	%dx, 8156(%rax)	# D.10422, img.424_1597->mprr_3
	movzwl	8156(%rax), %eax	# img.424_1597->mprr_3, D.10422
	.loc 1 1160 0
	movw	%ax, 8136(%rsi)	# D.10422, img.423_1596->mprr_3
	.loc 1 1164 0
	movq	img(%rip), %rsi	# img, img.427
	.loc 1 1165 0
	movq	img(%rip), %rax	# img, img.428
	.loc 1 1166 0
	movq	img(%rip), %rdx	# img, img.429
	.loc 1 1167 0
	movq	img(%rip), %rcx	# img, img.430
	movl	-276(%rbp), %r8d	# PredPel, D.10417
	movl	-280(%rbp), %edi	# PredPel, D.10417
	addl	%r8d, %edi	# D.10417, D.10417
	addl	$1, %edi	#, D.10417
	sarl	%edi	# D.10417
	movw	%di, 8212(%rcx)	# D.10422, img.430_1612->mprr_3
	movzwl	8212(%rcx), %ecx	# img.430_1612->mprr_3, D.10422
	.loc 1 1166 0
	movw	%cx, 8192(%rdx)	# D.10422, img.429_1611->mprr_3
	movzwl	8192(%rdx), %edx	# img.429_1611->mprr_3, D.10422
	.loc 1 1165 0
	movw	%dx, 8172(%rax)	# D.10422, img.428_1610->mprr_3
	movzwl	8172(%rax), %eax	# img.428_1610->mprr_3, D.10422
	.loc 1 1164 0
	movw	%ax, 8152(%rsi)	# D.10422, img.427_1609->mprr_3
	.loc 1 1168 0
	movq	img(%rip), %rsi	# img, img.431
	.loc 1 1169 0
	movq	img(%rip), %rax	# img, img.432
	.loc 1 1170 0
	movq	img(%rip), %rdx	# img, img.433
	.loc 1 1171 0
	movq	img(%rip), %rcx	# img, img.434
	movl	-272(%rbp), %r8d	# PredPel, D.10417
	movl	-276(%rbp), %edi	# PredPel, D.10417
	addl	%r8d, %edi	# D.10417, D.10417
	addl	$1, %edi	#, D.10417
	sarl	%edi	# D.10417
	movw	%di, 8228(%rcx)	# D.10422, img.434_1625->mprr_3
	movzwl	8228(%rcx), %ecx	# img.434_1625->mprr_3, D.10422
	.loc 1 1170 0
	movw	%cx, 8208(%rdx)	# D.10422, img.433_1624->mprr_3
	movzwl	8208(%rdx), %edx	# img.433_1624->mprr_3, D.10422
	.loc 1 1169 0
	movw	%dx, 8188(%rax)	# D.10422, img.432_1623->mprr_3
	movzwl	8188(%rax), %eax	# img.432_1623->mprr_3, D.10422
	.loc 1 1168 0
	movw	%ax, 8168(%rsi)	# D.10422, img.431_1622->mprr_3
	.loc 1 1172 0
	movq	img(%rip), %rsi	# img, img.435
	.loc 1 1173 0
	movq	img(%rip), %rax	# img, img.436
	.loc 1 1174 0
	movq	img(%rip), %rdx	# img, img.437
	.loc 1 1175 0
	movq	img(%rip), %rcx	# img, img.438
	movl	-268(%rbp), %r8d	# PredPel, D.10417
	movl	-272(%rbp), %edi	# PredPel, D.10417
	addl	%r8d, %edi	# D.10417, D.10417
	addl	$1, %edi	#, D.10417
	sarl	%edi	# D.10417
	movw	%di, 8244(%rcx)	# D.10422, img.438_1638->mprr_3
	movzwl	8244(%rcx), %ecx	# img.438_1638->mprr_3, D.10422
	.loc 1 1174 0
	movw	%cx, 8224(%rdx)	# D.10422, img.437_1637->mprr_3
	movzwl	8224(%rdx), %edx	# img.437_1637->mprr_3, D.10422
	.loc 1 1173 0
	movw	%dx, 8204(%rax)	# D.10422, img.436_1636->mprr_3
	movzwl	8204(%rax), %eax	# img.436_1636->mprr_3, D.10422
	.loc 1 1172 0
	movw	%ax, 8184(%rsi)	# D.10422, img.435_1635->mprr_3
	.loc 1 1176 0
	movq	img(%rip), %rcx	# img, img.439
	.loc 1 1177 0
	movq	img(%rip), %rax	# img, img.440
	.loc 1 1178 0
	movq	img(%rip), %rdx	# img, img.441
	movl	-264(%rbp), %edi	# PredPel, D.10417
	movl	-268(%rbp), %esi	# PredPel, D.10417
	addl	%edi, %esi	# D.10417, D.10417
	addl	$1, %esi	#, D.10417
	sarl	%esi	# D.10417
	movw	%si, 8240(%rdx)	# D.10422, img.441_1650->mprr_3
	movzwl	8240(%rdx), %edx	# img.441_1650->mprr_3, D.10422
	.loc 1 1177 0
	movw	%dx, 8220(%rax)	# D.10422, img.440_1649->mprr_3
	movzwl	8220(%rax), %eax	# img.440_1649->mprr_3, D.10422
	.loc 1 1176 0
	movw	%ax, 8200(%rcx)	# D.10422, img.439_1648->mprr_3
	.loc 1 1179 0
	movq	img(%rip), %rdx	# img, img.442
	.loc 1 1180 0
	movq	img(%rip), %rax	# img, img.443
	movl	-260(%rbp), %esi	# PredPel, D.10417
	movl	-264(%rbp), %ecx	# PredPel, D.10417
	addl	%esi, %ecx	# D.10417, D.10417
	addl	$1, %ecx	#, D.10417
	sarl	%ecx	# D.10417
	movw	%cx, 8236(%rax)	# D.10422, img.443_1660->mprr_3
	movzwl	8236(%rax), %eax	# img.443_1660->mprr_3, D.10422
	.loc 1 1179 0
	movw	%ax, 8216(%rdx)	# D.10422, img.442_1659->mprr_3
	.loc 1 1181 0
	movq	img(%rip), %rax	# img, img.444
	movl	-256(%rbp), %ecx	# PredPel, D.10417
	movl	-260(%rbp), %edx	# PredPel, D.10417
	addl	%ecx, %edx	# D.10417, D.10417
	addl	$1, %edx	#, D.10417
	sarl	%edx	# D.10417
	movw	%dx, 8232(%rax)	# D.10422, img.444_1668->mprr_3
	.loc 1 1182 0
	movq	img(%rip), %rsi	# img, img.445
	.loc 1 1183 0
	movq	img(%rip), %rax	# img, img.446
	.loc 1 1184 0
	movq	img(%rip), %rdx	# img, img.447
	.loc 1 1185 0
	movq	img(%rip), %rcx	# img, img.448
	movl	-284(%rbp), %r8d	# PredPel, D.10417
	movl	-348(%rbp), %edi	# PredPel, D.10417
	addl	%edi, %r8d	# D.10417, D.10417
	movl	-352(%rbp), %edi	# PredPel, D.10417
	addl	%edi, %edi	# D.10417
	addl	%r8d, %edi	# D.10417, D.10417
	addl	$2, %edi	#, D.10417
	sarl	$2, %edi	#, D.10417
	movw	%di, 8182(%rcx)	# D.10422, img.448_1678->mprr_3
	movzwl	8182(%rcx), %ecx	# img.448_1678->mprr_3, D.10422
	.loc 1 1184 0
	movw	%cx, 8162(%rdx)	# D.10422, img.447_1677->mprr_3
	movzwl	8162(%rdx), %edx	# img.447_1677->mprr_3, D.10422
	.loc 1 1183 0
	movw	%dx, 8142(%rax)	# D.10422, img.446_1676->mprr_3
	movzwl	8142(%rax), %eax	# img.446_1676->mprr_3, D.10422
	.loc 1 1182 0
	movw	%ax, 8122(%rsi)	# D.10422, img.445_1675->mprr_3
	.loc 1 1186 0
	movq	img(%rip), %rsi	# img, img.449
	.loc 1 1187 0
	movq	img(%rip), %rax	# img, img.450
	.loc 1 1188 0
	movq	img(%rip), %rdx	# img, img.451
	.loc 1 1189 0
	movq	img(%rip), %rcx	# img, img.452
	movl	-352(%rbp), %r8d	# PredPel, D.10417
	movl	-280(%rbp), %edi	# PredPel, D.10417
	addl	%edi, %r8d	# D.10417, D.10417
	movl	-284(%rbp), %edi	# PredPel, D.10417
	addl	%edi, %edi	# D.10417
	addl	%r8d, %edi	# D.10417, D.10417
	addl	$2, %edi	#, D.10417
	sarl	$2, %edi	#, D.10417
	movw	%di, 8198(%rcx)	# D.10422, img.452_1694->mprr_3
	movzwl	8198(%rcx), %ecx	# img.452_1694->mprr_3, D.10422
	.loc 1 1188 0
	movw	%cx, 8178(%rdx)	# D.10422, img.451_1693->mprr_3
	movzwl	8178(%rdx), %edx	# img.451_1693->mprr_3, D.10422
	.loc 1 1187 0
	movw	%dx, 8158(%rax)	# D.10422, img.450_1692->mprr_3
	movzwl	8158(%rax), %eax	# img.450_1692->mprr_3, D.10422
	.loc 1 1186 0
	movw	%ax, 8138(%rsi)	# D.10422, img.449_1691->mprr_3
	.loc 1 1190 0
	movq	img(%rip), %rsi	# img, img.453
	.loc 1 1191 0
	movq	img(%rip), %rax	# img, img.454
	.loc 1 1192 0
	movq	img(%rip), %rdx	# img, img.455
	.loc 1 1193 0
	movq	img(%rip), %rcx	# img, img.456
	movl	-284(%rbp), %r8d	# PredPel, D.10417
	movl	-276(%rbp), %edi	# PredPel, D.10417
	addl	%edi, %r8d	# D.10417, D.10417
	movl	-280(%rbp), %edi	# PredPel, D.10417
	addl	%edi, %edi	# D.10417
	addl	%r8d, %edi	# D.10417, D.10417
	addl	$2, %edi	#, D.10417
	sarl	$2, %edi	#, D.10417
	movw	%di, 8214(%rcx)	# D.10422, img.456_1710->mprr_3
	movzwl	8214(%rcx), %ecx	# img.456_1710->mprr_3, D.10422
	.loc 1 1192 0
	movw	%cx, 8194(%rdx)	# D.10422, img.455_1709->mprr_3
	movzwl	8194(%rdx), %edx	# img.455_1709->mprr_3, D.10422
	.loc 1 1191 0
	movw	%dx, 8174(%rax)	# D.10422, img.454_1708->mprr_3
	movzwl	8174(%rax), %eax	# img.454_1708->mprr_3, D.10422
	.loc 1 1190 0
	movw	%ax, 8154(%rsi)	# D.10422, img.453_1707->mprr_3
	.loc 1 1194 0
	movq	img(%rip), %rsi	# img, img.457
	.loc 1 1195 0
	movq	img(%rip), %rax	# img, img.458
	.loc 1 1196 0
	movq	img(%rip), %rdx	# img, img.459
	.loc 1 1197 0
	movq	img(%rip), %rcx	# img, img.460
	movl	-280(%rbp), %r8d	# PredPel, D.10417
	movl	-272(%rbp), %edi	# PredPel, D.10417
	addl	%edi, %r8d	# D.10417, D.10417
	movl	-276(%rbp), %edi	# PredPel, D.10417
	addl	%edi, %edi	# D.10417
	addl	%r8d, %edi	# D.10417, D.10417
	addl	$2, %edi	#, D.10417
	sarl	$2, %edi	#, D.10417
	movw	%di, 8230(%rcx)	# D.10422, img.460_1726->mprr_3
	movzwl	8230(%rcx), %ecx	# img.460_1726->mprr_3, D.10422
	.loc 1 1196 0
	movw	%cx, 8210(%rdx)	# D.10422, img.459_1725->mprr_3
	movzwl	8210(%rdx), %edx	# img.459_1725->mprr_3, D.10422
	.loc 1 1195 0
	movw	%dx, 8190(%rax)	# D.10422, img.458_1724->mprr_3
	movzwl	8190(%rax), %eax	# img.458_1724->mprr_3, D.10422
	.loc 1 1194 0
	movw	%ax, 8170(%rsi)	# D.10422, img.457_1723->mprr_3
	.loc 1 1198 0
	movq	img(%rip), %rsi	# img, img.461
	.loc 1 1199 0
	movq	img(%rip), %rax	# img, img.462
	.loc 1 1200 0
	movq	img(%rip), %rdx	# img, img.463
	.loc 1 1201 0
	movq	img(%rip), %rcx	# img, img.464
	movl	-276(%rbp), %r8d	# PredPel, D.10417
	movl	-268(%rbp), %edi	# PredPel, D.10417
	addl	%edi, %r8d	# D.10417, D.10417
	movl	-272(%rbp), %edi	# PredPel, D.10417
	addl	%edi, %edi	# D.10417
	addl	%r8d, %edi	# D.10417, D.10417
	addl	$2, %edi	#, D.10417
	sarl	$2, %edi	#, D.10417
	movw	%di, 8246(%rcx)	# D.10422, img.464_1742->mprr_3
	movzwl	8246(%rcx), %ecx	# img.464_1742->mprr_3, D.10422
	.loc 1 1200 0
	movw	%cx, 8226(%rdx)	# D.10422, img.463_1741->mprr_3
	movzwl	8226(%rdx), %edx	# img.463_1741->mprr_3, D.10422
	.loc 1 1199 0
	movw	%dx, 8206(%rax)	# D.10422, img.462_1740->mprr_3
	movzwl	8206(%rax), %eax	# img.462_1740->mprr_3, D.10422
	.loc 1 1198 0
	movw	%ax, 8186(%rsi)	# D.10422, img.461_1739->mprr_3
	.loc 1 1202 0
	movq	img(%rip), %rcx	# img, img.465
	.loc 1 1203 0
	movq	img(%rip), %rax	# img, img.466
	.loc 1 1204 0
	movq	img(%rip), %rdx	# img, img.467
	movl	-272(%rbp), %edi	# PredPel, D.10417
	movl	-264(%rbp), %esi	# PredPel, D.10417
	addl	%esi, %edi	# D.10417, D.10417
	movl	-268(%rbp), %esi	# PredPel, D.10417
	addl	%esi, %esi	# D.10417
	addl	%edi, %esi	# D.10417, D.10417
	addl	$2, %esi	#, D.10417
	sarl	$2, %esi	#, D.10417
	movw	%si, 8242(%rdx)	# D.10422, img.467_1757->mprr_3
	movzwl	8242(%rdx), %edx	# img.467_1757->mprr_3, D.10422
	.loc 1 1203 0
	movw	%dx, 8222(%rax)	# D.10422, img.466_1756->mprr_3
	movzwl	8222(%rax), %eax	# img.466_1756->mprr_3, D.10422
	.loc 1 1202 0
	movw	%ax, 8202(%rcx)	# D.10422, img.465_1755->mprr_3
	.loc 1 1205 0
	movq	img(%rip), %rdx	# img, img.468
	.loc 1 1206 0
	movq	img(%rip), %rax	# img, img.469
	movl	-268(%rbp), %esi	# PredPel, D.10417
	movl	-260(%rbp), %ecx	# PredPel, D.10417
	addl	%ecx, %esi	# D.10417, D.10417
	movl	-264(%rbp), %ecx	# PredPel, D.10417
	addl	%ecx, %ecx	# D.10417
	addl	%esi, %ecx	# D.10417, D.10417
	addl	$2, %ecx	#, D.10417
	sarl	$2, %ecx	#, D.10417
	movw	%cx, 8238(%rax)	# D.10422, img.469_1770->mprr_3
	movzwl	8238(%rax), %eax	# img.469_1770->mprr_3, D.10422
	.loc 1 1205 0
	movw	%ax, 8218(%rdx)	# D.10422, img.468_1769->mprr_3
	.loc 1 1207 0
	movq	img(%rip), %rax	# img, img.470
	movl	-264(%rbp), %ecx	# PredPel, D.10417
	movl	-256(%rbp), %edx	# PredPel, D.10417
	addl	%edx, %ecx	# D.10417, D.10417
	movl	-260(%rbp), %edx	# PredPel, D.10417
	addl	%edx, %edx	# D.10417
	addl	%ecx, %edx	# D.10417, D.10417
	addl	$2, %edx	#, D.10417
	sarl	$2, %edx	#, D.10417
	movw	%dx, 8234(%rax)	# D.10422, img.470_1781->mprr_3
	.loc 1 1208 0
	movq	img(%rip), %rcx	# img, img.471
	.loc 1 1209 0
	movq	img(%rip), %rax	# img, img.472
	.loc 1 1210 0
	movq	img(%rip), %rdx	# img, img.473
	movl	-352(%rbp), %edi	# PredPel, D.10417
	movl	-344(%rbp), %esi	# PredPel, D.10417
	addl	%esi, %edi	# D.10417, D.10417
	movl	-348(%rbp), %esi	# PredPel, D.10417
	addl	%esi, %esi	# D.10417
	addl	%edi, %esi	# D.10417, D.10417
	addl	$2, %esi	#, D.10417
	sarl	$2, %esi	#, D.10417
	movw	%si, 8164(%rdx)	# D.10422, img.473_1793->mprr_3
	movzwl	8164(%rdx), %edx	# img.473_1793->mprr_3, D.10422
	.loc 1 1209 0
	movw	%dx, 8144(%rax)	# D.10422, img.472_1792->mprr_3
	movzwl	8144(%rax), %eax	# img.472_1792->mprr_3, D.10422
	.loc 1 1208 0
	movw	%ax, 8124(%rcx)	# D.10422, img.471_1791->mprr_3
	.loc 1 1211 0
	movq	img(%rip), %rcx	# img, img.474
	.loc 1 1212 0
	movq	img(%rip), %rax	# img, img.475
	.loc 1 1213 0
	movq	img(%rip), %rdx	# img, img.476
	movl	-348(%rbp), %edi	# PredPel, D.10417
	movl	-340(%rbp), %esi	# PredPel, D.10417
	addl	%esi, %edi	# D.10417, D.10417
	movl	-344(%rbp), %esi	# PredPel, D.10417
	addl	%esi, %esi	# D.10417
	addl	%edi, %esi	# D.10417, D.10417
	addl	$2, %esi	#, D.10417
	sarl	$2, %esi	#, D.10417
	movw	%si, 8166(%rdx)	# D.10422, img.476_1807->mprr_3
	movzwl	8166(%rdx), %edx	# img.476_1807->mprr_3, D.10422
	.loc 1 1212 0
	movw	%dx, 8146(%rax)	# D.10422, img.475_1806->mprr_3
	movzwl	8146(%rax), %eax	# img.475_1806->mprr_3, D.10422
	.loc 1 1211 0
	movw	%ax, 8126(%rcx)	# D.10422, img.474_1805->mprr_3
	.loc 1 1214 0
	movq	img(%rip), %rdx	# img, img.477
	.loc 1 1215 0
	movq	img(%rip), %rax	# img, img.478
	movl	-344(%rbp), %esi	# PredPel, D.10417
	movl	-336(%rbp), %ecx	# PredPel, D.10417
	addl	%ecx, %esi	# D.10417, D.10417
	movl	-340(%rbp), %ecx	# PredPel, D.10417
	addl	%ecx, %ecx	# D.10417
	addl	%esi, %ecx	# D.10417, D.10417
	addl	$2, %ecx	#, D.10417
	sarl	$2, %ecx	#, D.10417
	movw	%cx, 8148(%rax)	# D.10422, img.478_1820->mprr_3
	movzwl	8148(%rax), %eax	# img.478_1820->mprr_3, D.10422
	.loc 1 1214 0
	movw	%ax, 8128(%rdx)	# D.10422, img.477_1819->mprr_3
	.loc 1 1216 0
	movq	img(%rip), %rdx	# img, img.479
	.loc 1 1217 0
	movq	img(%rip), %rax	# img, img.480
	movl	-340(%rbp), %esi	# PredPel, D.10417
	movl	-332(%rbp), %ecx	# PredPel, D.10417
	addl	%ecx, %esi	# D.10417, D.10417
	movl	-336(%rbp), %ecx	# PredPel, D.10417
	addl	%ecx, %ecx	# D.10417
	addl	%esi, %ecx	# D.10417, D.10417
	addl	$2, %ecx	#, D.10417
	sarl	$2, %ecx	#, D.10417
	movw	%cx, 8150(%rax)	# D.10422, img.480_1832->mprr_3
	movzwl	8150(%rax), %eax	# img.480_1832->mprr_3, D.10422
	.loc 1 1216 0
	movw	%ax, 8130(%rdx)	# D.10422, img.479_1831->mprr_3
	.loc 1 1218 0
	movq	img(%rip), %rax	# img, img.481
	movl	-336(%rbp), %ecx	# PredPel, D.10417
	movl	-328(%rbp), %edx	# PredPel, D.10417
	addl	%edx, %ecx	# D.10417, D.10417
	movl	-332(%rbp), %edx	# PredPel, D.10417
	addl	%edx, %edx	# D.10417
	addl	%ecx, %edx	# D.10417, D.10417
	addl	$2, %edx	#, D.10417
	sarl	$2, %edx	#, D.10417
	movw	%dx, 8132(%rax)	# D.10422, img.481_1843->mprr_3
	.loc 1 1219 0
	movq	img(%rip), %rax	# img, img.482
	movl	-332(%rbp), %ecx	# PredPel, D.10417
	movl	-324(%rbp), %edx	# PredPel, D.10417
	addl	%edx, %ecx	# D.10417, D.10417
	movl	-328(%rbp), %edx	# PredPel, D.10417
	addl	%edx, %edx	# D.10417
	addl	%ecx, %edx	# D.10417, D.10417
	addl	$2, %edx	#, D.10417
	sarl	$2, %edx	#, D.10417
	movw	%dx, 8134(%rax)	# D.10422, img.482_1853->mprr_3
.L240:
	.loc 1 1225 0
	cmpl	$0, -480(%rbp)	#, block_available_left
	je	.L197	#,
	.loc 1 1227 0
	movq	img(%rip), %rax	# img, img.483
	movl	-284(%rbp), %ecx	# PredPel, D.10417
	movl	-280(%rbp), %edx	# PredPel, D.10417
	addl	%ecx, %edx	# D.10417, D.10417
	addl	$1, %edx	#, D.10417
	sarl	%edx	# D.10417
	movw	%dx, 8376(%rax)	# D.10422, img.483_1863->mprr_3
	.loc 1 1228 0
	movq	img(%rip), %rdx	# img, img.484
	.loc 1 1229 0
	movq	img(%rip), %rax	# img, img.485
	movl	-280(%rbp), %esi	# PredPel, D.10417
	movl	-276(%rbp), %ecx	# PredPel, D.10417
	addl	%esi, %ecx	# D.10417, D.10417
	addl	$1, %ecx	#, D.10417
	sarl	%ecx	# D.10417
	movw	%cx, 8380(%rax)	# D.10422, img.485_1871->mprr_3
	movzwl	8380(%rax), %eax	# img.485_1871->mprr_3, D.10422
	.loc 1 1228 0
	movw	%ax, 8392(%rdx)	# D.10422, img.484_1870->mprr_3
	.loc 1 1230 0
	movq	img(%rip), %rcx	# img, img.486
	.loc 1 1231 0
	movq	img(%rip), %rax	# img, img.487
	.loc 1 1232 0
	movq	img(%rip), %rdx	# img, img.488
	movl	-276(%rbp), %edi	# PredPel, D.10417
	movl	-272(%rbp), %esi	# PredPel, D.10417
	addl	%edi, %esi	# D.10417, D.10417
	addl	$1, %esi	#, D.10417
	sarl	%esi	# D.10417
	movw	%si, 8384(%rdx)	# D.10422, img.488_1881->mprr_3
	movzwl	8384(%rdx), %edx	# img.488_1881->mprr_3, D.10422
	.loc 1 1231 0
	movw	%dx, 8396(%rax)	# D.10422, img.487_1880->mprr_3
	movzwl	8396(%rax), %eax	# img.487_1880->mprr_3, D.10422
	.loc 1 1230 0
	movw	%ax, 8408(%rcx)	# D.10422, img.486_1879->mprr_3
	.loc 1 1233 0
	movq	img(%rip), %rsi	# img, img.489
	.loc 1 1234 0
	movq	img(%rip), %rax	# img, img.490
	.loc 1 1235 0
	movq	img(%rip), %rdx	# img, img.491
	.loc 1 1236 0
	movq	img(%rip), %rcx	# img, img.492
	movl	-272(%rbp), %r8d	# PredPel, D.10417
	movl	-268(%rbp), %edi	# PredPel, D.10417
	addl	%r8d, %edi	# D.10417, D.10417
	addl	$1, %edi	#, D.10417
	sarl	%edi	# D.10417
	movw	%di, 8388(%rcx)	# D.10422, img.492_1893->mprr_3
	movzwl	8388(%rcx), %ecx	# img.492_1893->mprr_3, D.10422
	.loc 1 1235 0
	movw	%cx, 8400(%rdx)	# D.10422, img.491_1892->mprr_3
	movzwl	8400(%rdx), %edx	# img.491_1892->mprr_3, D.10422
	.loc 1 1234 0
	movw	%dx, 8412(%rax)	# D.10422, img.490_1891->mprr_3
	movzwl	8412(%rax), %eax	# img.490_1891->mprr_3, D.10422
	.loc 1 1233 0
	movw	%ax, 8424(%rsi)	# D.10422, img.489_1890->mprr_3
	.loc 1 1237 0
	movq	img(%rip), %rsi	# img, img.493
	.loc 1 1238 0
	movq	img(%rip), %rax	# img, img.494
	.loc 1 1239 0
	movq	img(%rip), %rdx	# img, img.495
	.loc 1 1240 0
	movq	img(%rip), %rcx	# img, img.496
	movl	-268(%rbp), %r8d	# PredPel, D.10417
	movl	-264(%rbp), %edi	# PredPel, D.10417
	addl	%r8d, %edi	# D.10417, D.10417
	addl	$1, %edi	#, D.10417
	sarl	%edi	# D.10417
	movw	%di, 8404(%rcx)	# D.10422, img.496_1906->mprr_3
	movzwl	8404(%rcx), %ecx	# img.496_1906->mprr_3, D.10422
	.loc 1 1239 0
	movw	%cx, 8416(%rdx)	# D.10422, img.495_1905->mprr_3
	movzwl	8416(%rdx), %edx	# img.495_1905->mprr_3, D.10422
	.loc 1 1238 0
	movw	%dx, 8428(%rax)	# D.10422, img.494_1904->mprr_3
	movzwl	8428(%rax), %eax	# img.494_1904->mprr_3, D.10422
	.loc 1 1237 0
	movw	%ax, 8440(%rsi)	# D.10422, img.493_1903->mprr_3
	.loc 1 1241 0
	movq	img(%rip), %rsi	# img, img.497
	.loc 1 1242 0
	movq	img(%rip), %rax	# img, img.498
	.loc 1 1243 0
	movq	img(%rip), %rdx	# img, img.499
	.loc 1 1244 0
	movq	img(%rip), %rcx	# img, img.500
	movl	-264(%rbp), %r8d	# PredPel, D.10417
	movl	-260(%rbp), %edi	# PredPel, D.10417
	addl	%r8d, %edi	# D.10417, D.10417
	addl	$1, %edi	#, D.10417
	sarl	%edi	# D.10417
	movw	%di, 8420(%rcx)	# D.10422, img.500_1919->mprr_3
	movzwl	8420(%rcx), %ecx	# img.500_1919->mprr_3, D.10422
	.loc 1 1243 0
	movw	%cx, 8432(%rdx)	# D.10422, img.499_1918->mprr_3
	movzwl	8432(%rdx), %edx	# img.499_1918->mprr_3, D.10422
	.loc 1 1242 0
	movw	%dx, 8444(%rax)	# D.10422, img.498_1917->mprr_3
	movzwl	8444(%rax), %eax	# img.498_1917->mprr_3, D.10422
	.loc 1 1241 0
	movw	%ax, 8456(%rsi)	# D.10422, img.497_1916->mprr_3
	.loc 1 1245 0
	movq	img(%rip), %rsi	# img, img.501
	.loc 1 1246 0
	movq	img(%rip), %rax	# img, img.502
	.loc 1 1247 0
	movq	img(%rip), %rdx	# img, img.503
	.loc 1 1248 0
	movq	img(%rip), %rcx	# img, img.504
	movl	-260(%rbp), %r8d	# PredPel, D.10417
	movl	-256(%rbp), %edi	# PredPel, D.10417
	addl	%r8d, %edi	# D.10417, D.10417
	addl	$1, %edi	#, D.10417
	sarl	%edi	# D.10417
	movw	%di, 8436(%rcx)	# D.10422, img.504_1932->mprr_3
	movzwl	8436(%rcx), %ecx	# img.504_1932->mprr_3, D.10422
	.loc 1 1247 0
	movw	%cx, 8448(%rdx)	# D.10422, img.503_1931->mprr_3
	movzwl	8448(%rdx), %edx	# img.503_1931->mprr_3, D.10422
	.loc 1 1246 0
	movw	%dx, 8460(%rax)	# D.10422, img.502_1930->mprr_3
	movzwl	8460(%rax), %eax	# img.502_1930->mprr_3, D.10422
	.loc 1 1245 0
	movw	%ax, 8472(%rsi)	# D.10422, img.501_1929->mprr_3
	.loc 1 1249 0
	movq	img(%rip), %rax	# img, img.505
	movq	%rax, -536(%rbp)	# img.505, %sfp
	.loc 1 1250 0
	movq	img(%rip), %r10	# img, img.506
	.loc 1 1251 0
	movq	img(%rip), %r11	# img, img.507
	.loc 1 1252 0
	movq	img(%rip), %rbx	# img, img.508
	.loc 1 1253 0
	movq	img(%rip), %r12	# img, img.509
	.loc 1 1254 0
	movq	img(%rip), %r13	# img, img.510
	.loc 1 1255 0
	movq	img(%rip), %r14	# img, img.511
	.loc 1 1256 0
	movq	img(%rip), %r15	# img, img.512
	.loc 1 1257 0
	movq	img(%rip), %rax	# img, img.513
	movq	%rax, -544(%rbp)	# img.513, %sfp
	.loc 1 1258 0
	movq	img(%rip), %rdi	# img, img.514
	movq	%rdi, -552(%rbp)	# img.514, %sfp
	.loc 1 1259 0
	movq	img(%rip), %rcx	# img, img.515
	movq	%rcx, -560(%rbp)	# img.515, %sfp
	.loc 1 1260 0
	movq	img(%rip), %rdx	# img, img.516
	movq	%rdx, -568(%rbp)	# img.516, %sfp
	.loc 1 1261 0
	movq	img(%rip), %r9	# img, img.517
	movq	%r9, -576(%rbp)	# img.517, %sfp
	.loc 1 1262 0
	movq	img(%rip), %r8	# img, img.518
	movq	%r8, -584(%rbp)	# img.518, %sfp
	.loc 1 1263 0
	movq	img(%rip), %r9	# img, img.519
	.loc 1 1264 0
	movq	img(%rip), %r8	# img, img.520
	.loc 1 1265 0
	movq	img(%rip), %rdi	# img, img.521
	.loc 1 1266 0
	movq	img(%rip), %rsi	# img, img.522
	.loc 1 1267 0
	movq	img(%rip), %rcx	# img, img.523
	.loc 1 1268 0
	movq	img(%rip), %rdx	# img, img.524
	movl	-256(%rbp), %eax	# PredPel, D.10417
	movw	%ax, 8502(%rdx)	# D.10422, img.524_1961->mprr_3
	movzwl	8502(%rdx), %eax	# img.524_1961->mprr_3, D.10422
	.loc 1 1267 0
	movw	%ax, 8500(%rcx)	# D.10422, img.523_1960->mprr_3
	movzwl	8500(%rcx), %eax	# img.523_1960->mprr_3, D.10422
	.loc 1 1266 0
	movw	%ax, 8498(%rsi)	# D.10422, img.522_1959->mprr_3
	movzwl	8498(%rsi), %eax	# img.522_1959->mprr_3, D.10422
	.loc 1 1265 0
	movw	%ax, 8496(%rdi)	# D.10422, img.521_1958->mprr_3
	movzwl	8496(%rdi), %eax	# img.521_1958->mprr_3, D.10422
	.loc 1 1264 0
	movw	%ax, 8494(%r8)	# D.10422, img.520_1957->mprr_3
	movzwl	8494(%r8), %eax	# img.520_1957->mprr_3, D.10422
	.loc 1 1263 0
	movw	%ax, 8492(%r9)	# D.10422, img.519_1956->mprr_3
	movzwl	8492(%r9), %eax	# img.519_1956->mprr_3, D.10422
	.loc 1 1262 0
	movq	-584(%rbp), %r8	# %sfp, img.518
	movw	%ax, 8490(%r8)	# D.10422, img.518_1955->mprr_3
	movzwl	8490(%r8), %eax	# img.518_1955->mprr_3, D.10422
	.loc 1 1261 0
	movq	-576(%rbp), %r9	# %sfp, img.517
	movw	%ax, 8488(%r9)	# D.10422, img.517_1954->mprr_3
	movzwl	8488(%r9), %eax	# img.517_1954->mprr_3, D.10422
	.loc 1 1260 0
	movq	-568(%rbp), %rdx	# %sfp, img.516
	movw	%ax, 8486(%rdx)	# D.10422, img.516_1953->mprr_3
	movzwl	8486(%rdx), %eax	# img.516_1953->mprr_3, D.10422
	.loc 1 1259 0
	movq	-560(%rbp), %rcx	# %sfp, img.515
	movw	%ax, 8484(%rcx)	# D.10422, img.515_1952->mprr_3
	movzwl	8484(%rcx), %eax	# img.515_1952->mprr_3, D.10422
	.loc 1 1258 0
	movq	-552(%rbp), %rdi	# %sfp, img.514
	movw	%ax, 8482(%rdi)	# D.10422, img.514_1951->mprr_3
	movzwl	8482(%rdi), %eax	# img.514_1951->mprr_3, D.10422
	.loc 1 1257 0
	movq	-544(%rbp), %rsi	# %sfp, img.513
	movw	%ax, 8480(%rsi)	# D.10422, img.513_1950->mprr_3
	movq	%rsi, %rax	# img.513, img.513
	movzwl	8480(%rax), %eax	# img.513_1950->mprr_3, D.10422
	.loc 1 1256 0
	movw	%ax, 8478(%r15)	# D.10422, img.512_1949->mprr_3
	movzwl	8478(%r15), %eax	# img.512_1949->mprr_3, D.10422
	.loc 1 1255 0
	movw	%ax, 8476(%r14)	# D.10422, img.511_1948->mprr_3
	movzwl	8476(%r14), %eax	# img.511_1948->mprr_3, D.10422
	.loc 1 1254 0
	movw	%ax, 8470(%r13)	# D.10422, img.510_1947->mprr_3
	movzwl	8470(%r13), %eax	# img.510_1947->mprr_3, D.10422
	.loc 1 1253 0
	movw	%ax, 8468(%r12)	# D.10422, img.509_1946->mprr_3
	movzwl	8468(%r12), %eax	# img.509_1946->mprr_3, D.10422
	.loc 1 1252 0
	movw	%ax, 8466(%rbx)	# D.10422, img.508_1945->mprr_3
	movzwl	8466(%rbx), %eax	# img.508_1945->mprr_3, D.10422
	.loc 1 1251 0
	movw	%ax, 8464(%r11)	# D.10422, img.507_1944->mprr_3
	movzwl	8464(%r11), %eax	# img.507_1944->mprr_3, D.10422
	.loc 1 1250 0
	movw	%ax, 8454(%r10)	# D.10422, img.506_1943->mprr_3
	movzwl	8454(%r10), %eax	# img.506_1943->mprr_3, D.10422
	.loc 1 1249 0
	movq	-536(%rbp), %rbx	# %sfp, img.505
	movw	%ax, 8452(%rbx)	# D.10422, img.505_1942->mprr_3
	.loc 1 1269 0
	movq	img(%rip), %r8	# img, img.525
	.loc 1 1270 0
	movq	img(%rip), %rdx	# img, img.526
	.loc 1 1271 0
	movq	img(%rip), %rcx	# img, img.527
	.loc 1 1272 0
	movq	img(%rip), %rsi	# img, img.528
	movl	-260(%rbp), %r9d	# PredPel, D.10417
	movl	-256(%rbp), %edi	# PredPel, D.10417
	movl	%edi, %eax	# D.10417, tmp2306
	addl	%eax, %eax	# tmp2306
	addl	%edi, %eax	# D.10417, D.10417
	addl	%r9d, %eax	# D.10417, D.10417
	addl	$2, %eax	#, D.10417
	sarl	$2, %eax	#, D.10417
	movw	%ax, 8438(%rsi)	# D.10422, img.528_1986->mprr_3
	movzwl	8438(%rsi), %eax	# img.528_1986->mprr_3, D.10422
	.loc 1 1271 0
	movw	%ax, 8450(%rcx)	# D.10422, img.527_1985->mprr_3
	movzwl	8450(%rcx), %eax	# img.527_1985->mprr_3, D.10422
	.loc 1 1270 0
	movw	%ax, 8462(%rdx)	# D.10422, img.526_1984->mprr_3
	movzwl	8462(%rdx), %eax	# img.526_1984->mprr_3, D.10422
	.loc 1 1269 0
	movw	%ax, 8474(%r8)	# D.10422, img.525_1983->mprr_3
	.loc 1 1273 0
	movq	img(%rip), %rsi	# img, img.529
	.loc 1 1274 0
	movq	img(%rip), %rax	# img, img.530
	.loc 1 1275 0
	movq	img(%rip), %rdx	# img, img.531
	.loc 1 1276 0
	movq	img(%rip), %rcx	# img, img.532
	movl	-256(%rbp), %r8d	# PredPel, D.10417
	movl	-264(%rbp), %edi	# PredPel, D.10417
	addl	%edi, %r8d	# D.10417, D.10417
	movl	-260(%rbp), %edi	# PredPel, D.10417
	addl	%edi, %edi	# D.10417
	addl	%r8d, %edi	# D.10417, D.10417
	addl	$2, %edi	#, D.10417
	sarl	$2, %edi	#, D.10417
	movw	%di, 8422(%rcx)	# D.10422, img.532_2000->mprr_3
	movzwl	8422(%rcx), %ecx	# img.532_2000->mprr_3, D.10422
	.loc 1 1275 0
	movw	%cx, 8434(%rdx)	# D.10422, img.531_1999->mprr_3
	movzwl	8434(%rdx), %edx	# img.531_1999->mprr_3, D.10422
	.loc 1 1274 0
	movw	%dx, 8446(%rax)	# D.10422, img.530_1998->mprr_3
	movzwl	8446(%rax), %eax	# img.530_1998->mprr_3, D.10422
	.loc 1 1273 0
	movw	%ax, 8458(%rsi)	# D.10422, img.529_1997->mprr_3
	.loc 1 1277 0
	movq	img(%rip), %rsi	# img, img.533
	.loc 1 1278 0
	movq	img(%rip), %rax	# img, img.534
	.loc 1 1279 0
	movq	img(%rip), %rdx	# img, img.535
	.loc 1 1280 0
	movq	img(%rip), %rcx	# img, img.536
	movl	-260(%rbp), %r8d	# PredPel, D.10417
	movl	-268(%rbp), %edi	# PredPel, D.10417
	addl	%edi, %r8d	# D.10417, D.10417
	movl	-264(%rbp), %edi	# PredPel, D.10417
	addl	%edi, %edi	# D.10417
	addl	%r8d, %edi	# D.10417, D.10417
	addl	$2, %edi	#, D.10417
	sarl	$2, %edi	#, D.10417
	movw	%di, 8406(%rcx)	# D.10422, img.536_2016->mprr_3
	movzwl	8406(%rcx), %ecx	# img.536_2016->mprr_3, D.10422
	.loc 1 1279 0
	movw	%cx, 8418(%rdx)	# D.10422, img.535_2015->mprr_3
	movzwl	8418(%rdx), %edx	# img.535_2015->mprr_3, D.10422
	.loc 1 1278 0
	movw	%dx, 8430(%rax)	# D.10422, img.534_2014->mprr_3
	movzwl	8430(%rax), %eax	# img.534_2014->mprr_3, D.10422
	.loc 1 1277 0
	movw	%ax, 8442(%rsi)	# D.10422, img.533_2013->mprr_3
	.loc 1 1281 0
	movq	img(%rip), %rsi	# img, img.537
	.loc 1 1282 0
	movq	img(%rip), %rax	# img, img.538
	.loc 1 1283 0
	movq	img(%rip), %rdx	# img, img.539
	.loc 1 1284 0
	movq	img(%rip), %rcx	# img, img.540
	movl	-264(%rbp), %r8d	# PredPel, D.10417
	movl	-272(%rbp), %edi	# PredPel, D.10417
	addl	%edi, %r8d	# D.10417, D.10417
	movl	-268(%rbp), %edi	# PredPel, D.10417
	addl	%edi, %edi	# D.10417
	addl	%r8d, %edi	# D.10417, D.10417
	addl	$2, %edi	#, D.10417
	sarl	$2, %edi	#, D.10417
	movw	%di, 8390(%rcx)	# D.10422, img.540_2032->mprr_3
	movzwl	8390(%rcx), %ecx	# img.540_2032->mprr_3, D.10422
	.loc 1 1283 0
	movw	%cx, 8402(%rdx)	# D.10422, img.539_2031->mprr_3
	movzwl	8402(%rdx), %edx	# img.539_2031->mprr_3, D.10422
	.loc 1 1282 0
	movw	%dx, 8414(%rax)	# D.10422, img.538_2030->mprr_3
	movzwl	8414(%rax), %eax	# img.538_2030->mprr_3, D.10422
	.loc 1 1281 0
	movw	%ax, 8426(%rsi)	# D.10422, img.537_2029->mprr_3
	.loc 1 1285 0
	movq	img(%rip), %rcx	# img, img.541
	.loc 1 1286 0
	movq	img(%rip), %rax	# img, img.542
	.loc 1 1287 0
	movq	img(%rip), %rdx	# img, img.543
	movl	-268(%rbp), %edi	# PredPel, D.10417
	movl	-276(%rbp), %esi	# PredPel, D.10417
	addl	%esi, %edi	# D.10417, D.10417
	movl	-272(%rbp), %esi	# PredPel, D.10417
	addl	%esi, %esi	# D.10417
	addl	%edi, %esi	# D.10417, D.10417
	addl	$2, %esi	#, D.10417
	sarl	$2, %esi	#, D.10417
	movw	%si, 8386(%rdx)	# D.10422, img.543_2047->mprr_3
	movzwl	8386(%rdx), %edx	# img.543_2047->mprr_3, D.10422
	.loc 1 1286 0
	movw	%dx, 8398(%rax)	# D.10422, img.542_2046->mprr_3
	movzwl	8398(%rax), %eax	# img.542_2046->mprr_3, D.10422
	.loc 1 1285 0
	movw	%ax, 8410(%rcx)	# D.10422, img.541_2045->mprr_3
	.loc 1 1288 0
	movq	img(%rip), %rdx	# img, img.544
	.loc 1 1289 0
	movq	img(%rip), %rax	# img, img.545
	movl	-272(%rbp), %esi	# PredPel, D.10417
	movl	-280(%rbp), %ecx	# PredPel, D.10417
	addl	%ecx, %esi	# D.10417, D.10417
	movl	-276(%rbp), %ecx	# PredPel, D.10417
	addl	%ecx, %ecx	# D.10417
	addl	%esi, %ecx	# D.10417, D.10417
	addl	$2, %ecx	#, D.10417
	sarl	$2, %ecx	#, D.10417
	movw	%cx, 8382(%rax)	# D.10422, img.545_2060->mprr_3
	movzwl	8382(%rax), %eax	# img.545_2060->mprr_3, D.10422
	.loc 1 1288 0
	movw	%ax, 8394(%rdx)	# D.10422, img.544_2059->mprr_3
	.loc 1 1290 0
	movq	img(%rip), %rax	# img, img.546
	movl	-276(%rbp), %ecx	# PredPel, D.10417
	movl	-284(%rbp), %edx	# PredPel, D.10417
	addl	%edx, %ecx	# D.10417, D.10417
	movl	-280(%rbp), %edx	# PredPel, D.10417
	addl	%edx, %edx	# D.10417
	addl	%ecx, %edx	# D.10417, D.10417
	addl	$2, %edx	#, D.10417
	sarl	$2, %edx	#, D.10417
	movw	%dx, 8378(%rax)	# D.10422, img.546_2071->mprr_3
.L197:
	.loc 1 1292 0
	addq	$552, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%r15	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	intrapred_luma8x8, .-intrapred_luma8x8
	.globl	LowPassForIntra8x8Pred
	.type	LowPassForIntra8x8Pred, @function
LowPassForIntra8x8Pred:
.LFB5:
	.loc 1 1301 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$28, %rsp	#,
	movq	%rdi, -136(%rbp)	# PredPel, PredPel
	movl	%esi, -140(%rbp)	# block_up_left, block_up_left
	movl	%edx, -144(%rbp)	# block_up, block_up
	movl	%ecx, -148(%rbp)	# block_left, block_left
	.loc 1 1306 0
	movl	$0, -116(%rbp)	#, i
	jmp	.L243	#
.L244:
	.loc 1 1307 0 discriminator 2
	movl	-116(%rbp), %eax	# i, tmp197
	cltq
	leaq	0(,%rax,4), %rdx	#, D.10425
	movq	-136(%rbp), %rax	# PredPel, tmp198
	addq	%rdx, %rax	# D.10425, D.10426
	movl	(%rax), %edx	# *_9, D.10427
	movl	-116(%rbp), %eax	# i, tmp200
	cltq
	movl	%edx, -112(%rbp,%rax,4)	# D.10427, LoopArray
	.loc 1 1306 0 discriminator 2
	addl	$1, -116(%rbp)	#, i
.L243:
	.loc 1 1306 0 is_stmt 0 discriminator 1
	cmpl	$24, -116(%rbp)	#, i
	jle	.L244	#,
	.loc 1 1309 0 is_stmt 1
	cmpl	$0, -144(%rbp)	#, block_up
	je	.L245	#,
	.loc 1 1311 0
	cmpl	$0, -140(%rbp)	#, block_up_left
	je	.L246	#,
	.loc 1 1313 0
	movq	-136(%rbp), %rax	# PredPel, tmp201
	movl	(%rax), %eax	# *PredPel_8(D), D.10427
	movq	-136(%rbp), %rdx	# PredPel, tmp202
	addq	$4, %rdx	#, D.10426
	movl	(%rdx), %edx	# *_15, D.10427
	addl	%edx, %edx	# D.10427
	addl	%eax, %edx	# D.10427, D.10427
	movq	-136(%rbp), %rax	# PredPel, tmp203
	addq	$8, %rax	#, D.10426
	movl	(%rax), %eax	# *_19, D.10427
	addl	%edx, %eax	# D.10427, D.10427
	addl	$2, %eax	#, D.10427
	sarl	$2, %eax	#, D.10427
	movl	%eax, -108(%rbp)	# D.10427, LoopArray
	jmp	.L247	#
.L246:
	.loc 1 1316 0
	movq	-136(%rbp), %rax	# PredPel, tmp204
	addq	$4, %rax	#, D.10426
	movl	(%rax), %eax	# *_24, D.10427
	movq	-136(%rbp), %rdx	# PredPel, tmp205
	addq	$4, %rdx	#, D.10426
	movl	(%rdx), %edx	# *_26, D.10427
	addl	%edx, %edx	# D.10427
	addl	%eax, %edx	# D.10427, D.10427
	movq	-136(%rbp), %rax	# PredPel, tmp206
	addq	$8, %rax	#, D.10426
	movl	(%rax), %eax	# *_30, D.10427
	addl	%edx, %eax	# D.10427, D.10427
	addl	$2, %eax	#, D.10427
	sarl	$2, %eax	#, D.10427
	movl	%eax, -108(%rbp)	# D.10427, LoopArray
.L247:
	.loc 1 1319 0
	movl	$2, -116(%rbp)	#, i
	jmp	.L248	#
.L249:
	.loc 1 1321 0 discriminator 2
	movl	-116(%rbp), %eax	# i, tmp207
	cltq
	salq	$2, %rax	#, D.10425
	leaq	-4(%rax), %rdx	#, D.10428
	movq	-136(%rbp), %rax	# PredPel, tmp208
	addq	%rdx, %rax	# D.10428, D.10426
	movl	(%rax), %eax	# *_39, D.10427
	movl	-116(%rbp), %edx	# i, tmp209
	movslq	%edx, %rdx	# tmp209, D.10425
	leaq	0(,%rdx,4), %rcx	#, D.10425
	movq	-136(%rbp), %rdx	# PredPel, tmp210
	addq	%rcx, %rdx	# D.10425, D.10426
	movl	(%rdx), %edx	# *_43, D.10427
	addl	%edx, %edx	# D.10427
	addl	%eax, %edx	# D.10427, D.10427
	movl	-116(%rbp), %eax	# i, tmp211
	cltq
	addq	$1, %rax	#, D.10428
	leaq	0(,%rax,4), %rcx	#, D.10428
	movq	-136(%rbp), %rax	# PredPel, tmp212
	addq	%rcx, %rax	# D.10428, D.10426
	movl	(%rax), %eax	# *_50, D.10427
	addl	%edx, %eax	# D.10427, D.10427
	addl	$2, %eax	#, D.10427
	sarl	$2, %eax	#, D.10427
	movl	%eax, %edx	# D.10427, D.10427
	movl	-116(%rbp), %eax	# i, tmp214
	cltq
	movl	%edx, -112(%rbp,%rax,4)	# D.10427, LoopArray
	.loc 1 1319 0 discriminator 2
	addl	$1, -116(%rbp)	#, i
.L248:
	.loc 1 1319 0 is_stmt 0 discriminator 1
	cmpl	$15, -116(%rbp)	#, i
	jle	.L249	#,
	.loc 1 1323 0 is_stmt 1
	movq	-136(%rbp), %rax	# PredPel, tmp215
	addq	$64, %rax	#, D.10426
	movl	(%rax), %eax	# *_56, D.10427
	movq	-136(%rbp), %rdx	# PredPel, tmp216
	addq	$64, %rdx	#, D.10426
	movl	(%rdx), %edx	# *_58, D.10427
	addl	%edx, %edx	# D.10427
	addl	%eax, %edx	# D.10427, D.10427
	movq	-136(%rbp), %rax	# PredPel, tmp217
	addq	$60, %rax	#, D.10426
	movl	(%rax), %eax	# *_62, D.10427
	addl	%edx, %eax	# D.10427, D.10427
	addl	$2, %eax	#, D.10427
	sarl	$2, %eax	#, D.10427
	movl	%eax, -48(%rbp)	# D.10427, LoopArray
.L245:
	.loc 1 1326 0
	cmpl	$0, -140(%rbp)	#, block_up_left
	je	.L250	#,
	.loc 1 1329 0
	cmpl	$0, -144(%rbp)	#, block_up
	je	.L251	#,
	.loc 1 1329 0 is_stmt 0 discriminator 1
	cmpl	$0, -148(%rbp)	#, block_left
	je	.L251	#,
	.loc 1 1331 0 is_stmt 1
	movq	-136(%rbp), %rax	# PredPel, tmp218
	addq	$68, %rax	#, D.10426
	movl	(%rax), %edx	# *_68, D.10427
	movq	-136(%rbp), %rax	# PredPel, tmp219
	movl	(%rax), %eax	# *PredPel_8(D), D.10427
	addl	%eax, %eax	# D.10427
	addl	%eax, %edx	# D.10427, D.10427
	movq	-136(%rbp), %rax	# PredPel, tmp220
	addq	$4, %rax	#, D.10426
	movl	(%rax), %eax	# *_73, D.10427
	addl	%edx, %eax	# D.10427, D.10427
	addl	$2, %eax	#, D.10427
	sarl	$2, %eax	#, D.10427
	movl	%eax, -112(%rbp)	# D.10427, LoopArray
	jmp	.L250	#
.L251:
	.loc 1 1335 0
	cmpl	$0, -144(%rbp)	#, block_up
	je	.L252	#,
	.loc 1 1336 0
	movq	-136(%rbp), %rax	# PredPel, tmp221
	movl	(%rax), %edx	# *PredPel_8(D), D.10427
	movq	-136(%rbp), %rax	# PredPel, tmp222
	movl	(%rax), %eax	# *PredPel_8(D), D.10427
	addl	%eax, %eax	# D.10427
	addl	%eax, %edx	# D.10427, D.10427
	movq	-136(%rbp), %rax	# PredPel, tmp223
	addq	$4, %rax	#, D.10426
	movl	(%rax), %eax	# *_82, D.10427
	addl	%edx, %eax	# D.10427, D.10427
	addl	$2, %eax	#, D.10427
	sarl	$2, %eax	#, D.10427
	movl	%eax, -112(%rbp)	# D.10427, LoopArray
	jmp	.L250	#
.L252:
	.loc 1 1338 0
	cmpl	$0, -148(%rbp)	#, block_left
	je	.L250	#,
	.loc 1 1339 0
	movq	-136(%rbp), %rax	# PredPel, tmp224
	movl	(%rax), %edx	# *PredPel_8(D), D.10427
	movq	-136(%rbp), %rax	# PredPel, tmp225
	movl	(%rax), %eax	# *PredPel_8(D), D.10427
	addl	%eax, %eax	# D.10427
	addl	%eax, %edx	# D.10427, D.10427
	movq	-136(%rbp), %rax	# PredPel, tmp226
	addq	$68, %rax	#, D.10426
	movl	(%rax), %eax	# *_91, D.10427
	addl	%edx, %eax	# D.10427, D.10427
	addl	$2, %eax	#, D.10427
	sarl	$2, %eax	#, D.10427
	movl	%eax, -112(%rbp)	# D.10427, LoopArray
.L250:
	.loc 1 1344 0
	cmpl	$0, -148(%rbp)	#, block_left
	je	.L253	#,
	.loc 1 1346 0
	cmpl	$0, -140(%rbp)	#, block_up_left
	je	.L254	#,
	.loc 1 1347 0
	movq	-136(%rbp), %rax	# PredPel, tmp227
	movl	(%rax), %eax	# *PredPel_8(D), D.10427
	movq	-136(%rbp), %rdx	# PredPel, tmp228
	addq	$68, %rdx	#, D.10426
	movl	(%rdx), %edx	# *_97, D.10427
	addl	%edx, %edx	# D.10427
	addl	%eax, %edx	# D.10427, D.10427
	movq	-136(%rbp), %rax	# PredPel, tmp229
	addq	$72, %rax	#, D.10426
	movl	(%rax), %eax	# *_101, D.10427
	addl	%edx, %eax	# D.10427, D.10427
	addl	$2, %eax	#, D.10427
	sarl	$2, %eax	#, D.10427
	movl	%eax, -44(%rbp)	# D.10427, LoopArray
	jmp	.L255	#
.L254:
	.loc 1 1349 0
	movq	-136(%rbp), %rax	# PredPel, tmp230
	addq	$68, %rax	#, D.10426
	movl	(%rax), %eax	# *_106, D.10427
	movq	-136(%rbp), %rdx	# PredPel, tmp231
	addq	$68, %rdx	#, D.10426
	movl	(%rdx), %edx	# *_108, D.10427
	addl	%edx, %edx	# D.10427
	addl	%eax, %edx	# D.10427, D.10427
	movq	-136(%rbp), %rax	# PredPel, tmp232
	addq	$72, %rax	#, D.10426
	movl	(%rax), %eax	# *_112, D.10427
	addl	%edx, %eax	# D.10427, D.10427
	addl	$2, %eax	#, D.10427
	sarl	$2, %eax	#, D.10427
	movl	%eax, -44(%rbp)	# D.10427, LoopArray
.L255:
	.loc 1 1351 0
	movl	$18, -116(%rbp)	#, i
	jmp	.L256	#
.L257:
	.loc 1 1353 0 discriminator 2
	movl	-116(%rbp), %eax	# i, tmp233
	cltq
	salq	$2, %rax	#, D.10425
	leaq	-4(%rax), %rdx	#, D.10428
	movq	-136(%rbp), %rax	# PredPel, tmp234
	addq	%rdx, %rax	# D.10428, D.10426
	movl	(%rax), %eax	# *_121, D.10427
	movl	-116(%rbp), %edx	# i, tmp235
	movslq	%edx, %rdx	# tmp235, D.10425
	leaq	0(,%rdx,4), %rcx	#, D.10425
	movq	-136(%rbp), %rdx	# PredPel, tmp236
	addq	%rcx, %rdx	# D.10425, D.10426
	movl	(%rdx), %edx	# *_125, D.10427
	addl	%edx, %edx	# D.10427
	addl	%eax, %edx	# D.10427, D.10427
	movl	-116(%rbp), %eax	# i, tmp237
	cltq
	addq	$1, %rax	#, D.10428
	leaq	0(,%rax,4), %rcx	#, D.10428
	movq	-136(%rbp), %rax	# PredPel, tmp238
	addq	%rcx, %rax	# D.10428, D.10426
	movl	(%rax), %eax	# *_132, D.10427
	addl	%edx, %eax	# D.10427, D.10427
	addl	$2, %eax	#, D.10427
	sarl	$2, %eax	#, D.10427
	movl	%eax, %edx	# D.10427, D.10427
	movl	-116(%rbp), %eax	# i, tmp240
	cltq
	movl	%edx, -112(%rbp,%rax,4)	# D.10427, LoopArray
	.loc 1 1351 0 discriminator 2
	addl	$1, -116(%rbp)	#, i
.L256:
	.loc 1 1351 0 is_stmt 0 discriminator 1
	cmpl	$23, -116(%rbp)	#, i
	jle	.L257	#,
	.loc 1 1355 0 is_stmt 1
	movq	-136(%rbp), %rax	# PredPel, tmp241
	addq	$92, %rax	#, D.10426
	movl	(%rax), %eax	# *_138, D.10427
	movq	-136(%rbp), %rdx	# PredPel, tmp242
	addq	$96, %rdx	#, D.10426
	movl	(%rdx), %edx	# *_140, D.10427
	addl	%edx, %edx	# D.10427
	addl	%eax, %edx	# D.10427, D.10427
	movq	-136(%rbp), %rax	# PredPel, tmp243
	addq	$96, %rax	#, D.10426
	movl	(%rax), %eax	# *_144, D.10427
	addl	%edx, %eax	# D.10427, D.10427
	addl	$2, %eax	#, D.10427
	sarl	$2, %eax	#, D.10427
	movl	%eax, -16(%rbp)	# D.10427, LoopArray
.L253:
	.loc 1 1358 0
	movl	$0, -116(%rbp)	#, i
	jmp	.L258	#
.L259:
	.loc 1 1359 0 discriminator 2
	movl	-116(%rbp), %eax	# i, tmp244
	cltq
	leaq	0(,%rax,4), %rdx	#, D.10425
	movq	-136(%rbp), %rax	# PredPel, tmp245
	addq	%rax, %rdx	# tmp245, D.10426
	movl	-116(%rbp), %eax	# i, tmp247
	cltq
	movl	-112(%rbp,%rax,4), %eax	# LoopArray, D.10427
	movl	%eax, (%rdx)	# D.10427, *_152
	.loc 1 1358 0 discriminator 2
	addl	$1, -116(%rbp)	#, i
.L258:
	.loc 1 1358 0 is_stmt 0 discriminator 1
	cmpl	$24, -116(%rbp)	#, i
	jle	.L259	#,
	.loc 1 1360 0 is_stmt 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	LowPassForIntra8x8Pred, .-LowPassForIntra8x8Pred
	.globl	RDCost_for_8x8IntraBlocks
	.type	RDCost_for_8x8IntraBlocks, @function
RDCost_for_8x8IntraBlocks:
.LFB6:
	.loc 1 1374 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$160, %rsp	#,
	movq	%rdi, -120(%rbp)	# nonzero, nonzero
	movl	%esi, -124(%rbp)	# b8, b8
	movl	%edx, -128(%rbp)	# ipmode, ipmode
	movsd	%xmm0, -136(%rbp)	# lambda, lambda
	movsd	%xmm1, -144(%rbp)	# min_rdcost, min_rdcost
	movl	%ecx, -148(%rbp)	# mostProbableMode, mostProbableMode
	.loc 1 1375 0
	movl	$0, %eax	#, tmp141
	movq	%rax, -56(%rbp)	# tmp141, rdcost
	.loc 1 1377 0
	movq	$0, -72(%rbp)	#, distortion
	.loc 1 1378 0
	movl	-124(%rbp), %eax	# b8, tmp142
	cltd
	shrl	$31, %edx	#, tmp144
	addl	%edx, %eax	# tmp144, tmp145
	andl	$1, %eax	#, tmp146
	subl	%edx, %eax	# tmp144, tmp147
	sall	$3, %eax	#, tmp148
	movl	%eax, -92(%rbp)	# tmp148, block_x
	.loc 1 1379 0
	movl	-124(%rbp), %eax	# b8, tmp149
	movl	%eax, %edx	# tmp149, tmp150
	shrl	$31, %edx	#, tmp150
	addl	%edx, %eax	# tmp150, tmp151
	sarl	%eax	# tmp152
	sall	$3, %eax	#, tmp153
	movl	%eax, -88(%rbp)	# tmp153, block_y
	.loc 1 1380 0
	movq	img(%rip), %rax	# img, img.547
	movl	152(%rax), %edx	# img.547_19->pix_x, D.10430
	movl	-92(%rbp), %eax	# block_x, tmp157
	addl	%edx, %eax	# D.10430, tmp156
	movl	%eax, -84(%rbp)	# tmp156, pic_pix_x
	.loc 1 1381 0
	movq	img(%rip), %rax	# img, img.548
	movl	156(%rax), %edx	# img.548_22->pix_y, D.10430
	movl	-88(%rbp), %eax	# block_y, tmp161
	addl	%edx, %eax	# D.10430, tmp160
	movl	%eax, -80(%rbp)	# tmp160, pic_pix_y
	.loc 1 1382 0
	movq	img(%rip), %rax	# img, img.549
	movl	172(%rax), %edx	# img.549_25->opix_y, D.10430
	movl	-88(%rbp), %eax	# block_y, tmp165
	addl	%edx, %eax	# D.10430, tmp164
	movl	%eax, -76(%rbp)	# tmp164, pic_opix_y
	.loc 1 1383 0
	movq	imgY_org(%rip), %rax	# imgY_org, tmp166
	movq	%rax, -48(%rbp)	# tmp166, imgY_orig
	.loc 1 1384 0
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.550
	movq	6424(%rax), %rax	# enc_picture.550_29->imgY, tmp167
	movq	%rax, -40(%rbp)	# tmp167, imgY
	.loc 1 1386 0
	movq	img(%rip), %rax	# img, img.551
	movq	14160(%rax), %rax	# img.551_31->currentSlice, tmp168
	movq	%rax, -32(%rbp)	# tmp168, currSlice
	.loc 1 1387 0
	movq	img(%rip), %rax	# img, img.552
	movq	14168(%rax), %rdx	# img.552_33->mb_data, D.10431
	movq	img(%rip), %rax	# img, img.553
	movl	12(%rax), %eax	# img.553_35->current_mb_nr, D.10430
	cltq
	imulq	$632, %rax, %rax	#, D.10432, D.10432
	addq	%rdx, %rax	# D.10431, tmp169
	movq	%rax, -24(%rbp)	# tmp169, currMB
	.loc 1 1388 0
	movq	img(%rip), %rcx	# img, img.554
	movq	-24(%rbp), %rax	# currMB, tmp170
	movl	(%rax), %eax	# currMB_39->currSEnr, D.10430
	movslq	%eax, %rdx	# D.10430, tmp171
	movq	%rdx, %rax	# tmp171, tmp172
	addq	%rax, %rax	# tmp172
	addq	%rdx, %rax	# tmp171, tmp172
	salq	$4, %rax	#, tmp173
	addq	$14176, %rax	#, tmp174
	addq	%rcx, %rax	# img.554, tmp175
	movq	%rax, -16(%rbp)	# tmp175, currSE
	.loc 1 1389 0
	movq	input(%rip), %rax	# input, input.555
	movl	2364(%rax), %eax	# input.555_43->partition_mode, D.10430
	cltq
	movq	assignSE2partition(,%rax,8), %rax	# assignSE2partition, tmp177
	movq	%rax, -8(%rbp)	# tmp177, partMap
	.loc 1 1393 0
	movl	$0, -112(%rbp)	#, dummy
	.loc 1 1395 0
	leaq	-112(%rbp), %rcx	#, tmp178
	movl	-124(%rbp), %eax	# b8, tmp179
	movl	$1, %edx	#,
	movq	%rcx, %rsi	# tmp178,
	movl	%eax, %edi	# tmp179,
	call	dct_luma8x8	#
	movq	-120(%rbp), %rdx	# nonzero, tmp180
	movl	%eax, (%rdx)	# D.10430, *nonzero_47(D)
	.loc 1 1398 0
	movl	$0, -104(%rbp)	#, y
	jmp	.L261	#
.L264:
	.loc 1 1399 0
	movl	-84(%rbp), %eax	# pic_pix_x, tmp181
	movl	%eax, -108(%rbp)	# tmp181, x
	jmp	.L262	#
.L263:
	.loc 1 1400 0 discriminator 2
	movq	img(%rip), %rax	# img, img.556
	movq	71776(%rax), %rax	# img.556_51->quad, D.10433
	movl	-104(%rbp), %edx	# y, tmp182
	movl	-76(%rbp), %ecx	# pic_opix_y, tmp183
	addl	%ecx, %edx	# tmp183, D.10430
	movslq	%edx, %rdx	# D.10430, D.10432
	leaq	0(,%rdx,8), %rcx	#, D.10432
	movq	-48(%rbp), %rdx	# imgY_orig, tmp184
	addq	%rcx, %rdx	# D.10432, D.10434
	movq	(%rdx), %rdx	# *_56, D.10435
	movl	-108(%rbp), %ecx	# x, tmp185
	movslq	%ecx, %rcx	# tmp185, D.10432
	addq	%rcx, %rcx	# D.10432
	addq	%rcx, %rdx	# D.10432, D.10435
	movzwl	(%rdx), %edx	# *_60, D.10436
	movzwl	%dx, %ecx	# D.10436, D.10430
	movl	-104(%rbp), %edx	# y, tmp186
	movl	-80(%rbp), %esi	# pic_pix_y, tmp187
	addl	%esi, %edx	# tmp187, D.10430
	movslq	%edx, %rdx	# D.10430, D.10432
	leaq	0(,%rdx,8), %rsi	#, D.10432
	movq	-40(%rbp), %rdx	# imgY, tmp188
	addq	%rsi, %rdx	# D.10432, D.10434
	movq	(%rdx), %rdx	# *_66, D.10435
	movl	-108(%rbp), %esi	# x, tmp189
	movslq	%esi, %rsi	# tmp189, D.10432
	addq	%rsi, %rsi	# D.10432
	addq	%rsi, %rdx	# D.10432, D.10435
	movzwl	(%rdx), %edx	# *_70, D.10436
	movzwl	%dx, %edx	# D.10436, D.10430
	subl	%edx, %ecx	# D.10430, D.10430
	movl	%ecx, %edx	# D.10430, D.10430
	movslq	%edx, %rdx	# D.10430, D.10432
	salq	$2, %rdx	#, D.10432
	addq	%rdx, %rax	# D.10432, D.10433
	movl	(%rax), %eax	# *_76, D.10430
	cltq
	addq	%rax, -72(%rbp)	# D.10437, distortion
	.loc 1 1399 0 discriminator 2
	addl	$1, -108(%rbp)	#, x
.L262:
	.loc 1 1399 0 is_stmt 0 discriminator 1
	movl	-84(%rbp), %eax	# pic_pix_x, tmp190
	addl	$8, %eax	#, D.10430
	cmpl	-108(%rbp), %eax	# x, D.10430
	jg	.L263	#,
	.loc 1 1398 0 is_stmt 1
	addl	$1, -104(%rbp)	#, y
.L261:
	.loc 1 1398 0 is_stmt 0 discriminator 1
	cmpl	$7, -104(%rbp)	#, y
	jle	.L264	#,
	.loc 1 1403 0 is_stmt 1
	movl	-148(%rbp), %eax	# mostProbableMode, tmp191
	cmpl	-128(%rbp), %eax	# ipmode, tmp191
	je	.L265	#,
	.loc 1 1403 0 is_stmt 0 discriminator 1
	movl	-128(%rbp), %eax	# ipmode, tmp192
	cmpl	-148(%rbp), %eax	# mostProbableMode, tmp192
	jl	.L266	#,
	movl	-128(%rbp), %eax	# ipmode, tmp193
	subl	$1, %eax	#, iftmp.558
	jmp	.L268	#
.L266:
	.loc 1 1403 0 discriminator 2
	movl	-128(%rbp), %eax	# ipmode, iftmp.558
	jmp	.L268	#
.L265:
	movl	$-1, %eax	#, iftmp.557
.L268:
	.loc 1 1403 0 discriminator 3
	movq	-16(%rbp), %rdx	# currSE, tmp194
	movl	%eax, 4(%rdx)	# iftmp.557, currSE_42->value1
	.loc 1 1406 0 is_stmt 1 discriminator 3
	movq	-16(%rbp), %rax	# currSE, tmp195
	movl	-124(%rbp), %edx	# b8, tmp196
	movl	%edx, 24(%rax)	# tmp196, currSE_42->context
	.loc 1 1407 0 discriminator 3
	movq	-16(%rbp), %rax	# currSE, tmp197
	movl	$4, (%rax)	#, currSE_42->type
	.loc 1 1410 0 discriminator 3
	movq	input(%rip), %rax	# input, input.559
	movl	2356(%rax), %eax	# input.559_88->symbol_mode, D.10430
	testl	%eax, %eax	# D.10430
	je	.L269	#,
	.loc 1 1411 0
	movq	-16(%rbp), %rax	# currSE, tmp198
	movq	$writeIntraPredMode_CABAC, 40(%rax)	#, currSE_42->writing
.L269:
	.loc 1 1414 0
	movq	img(%rip), %rax	# img, img.560
	movl	24(%rax), %eax	# img.560_90->type, D.10430
	cmpl	$1, %eax	#, D.10430
	je	.L270	#,
	.loc 1 1415 0
	movq	-32(%rbp), %rax	# currSlice, tmp199
	movq	24(%rax), %rdx	# currSlice_32->partArr, D.10438
	movq	-8(%rbp), %rax	# partMap, tmp200
	addq	$16, %rax	#, D.10439
	movl	(%rax), %eax	# *_93, D.10430
	cltq
	salq	$3, %rax	#, tmp202
	movq	%rax, %rcx	# tmp201, tmp203
	salq	$4, %rcx	#, tmp203
	subq	%rax, %rcx	# tmp201, D.10432
	movq	%rcx, %rax	# D.10432, D.10432
	addq	%rdx, %rax	# D.10438, tmp204
	movq	%rax, -64(%rbp)	# tmp204, dataPart
	jmp	.L271	#
.L270:
	.loc 1 1417 0
	movq	-32(%rbp), %rax	# currSlice, tmp205
	movq	24(%rax), %rdx	# currSlice_32->partArr, D.10438
	movq	-8(%rbp), %rax	# partMap, tmp206
	addq	$72, %rax	#, D.10439
	movl	(%rax), %eax	# *_99, D.10430
	cltq
	salq	$3, %rax	#, tmp208
	movq	%rax, %rcx	# tmp207, tmp209
	salq	$4, %rcx	#, tmp209
	subq	%rax, %rcx	# tmp207, D.10432
	movq	%rcx, %rax	# D.10432, D.10432
	addq	%rdx, %rax	# D.10438, tmp210
	movq	%rax, -64(%rbp)	# tmp210, dataPart
.L271:
	.loc 1 1420 0
	movq	input(%rip), %rax	# input, input.561
	movl	2356(%rax), %eax	# input.561_104->symbol_mode, D.10430
	testl	%eax, %eax	# D.10430
	jne	.L272	#,
	.loc 1 1421 0
	movq	-64(%rbp), %rdx	# dataPart, tmp211
	movq	-16(%rbp), %rax	# currSE, tmp212
	movq	%rdx, %rsi	# tmp211,
	movq	%rax, %rdi	# tmp212,
	call	writeSyntaxElement_Intra4x4PredictionMode	#
	jmp	.L273	#
.L272:
	.loc 1 1423 0
	movq	-64(%rbp), %rax	# dataPart, tmp213
	movq	112(%rax), %rax	# dataPart_7->writeSyntaxElement, D.10440
	movq	-64(%rbp), %rcx	# dataPart, tmp214
	movq	-16(%rbp), %rdx	# currSE, tmp215
	movq	%rcx, %rsi	# tmp214,
	movq	%rdx, %rdi	# tmp215,
	call	*%rax	# D.10440
.L273:
	.loc 1 1425 0
	movq	-16(%rbp), %rax	# currSE, tmp216
	movl	12(%rax), %eax	# currSE_42->len, tmp217
	movl	%eax, -100(%rbp)	# tmp217, rate
	.loc 1 1426 0
	addq	$48, -16(%rbp)	#, currSE
	.loc 1 1427 0
	movq	-24(%rbp), %rax	# currMB, tmp218
	movl	(%rax), %eax	# currMB_39->currSEnr, D.10430
	leal	1(%rax), %edx	#, D.10430
	movq	-24(%rbp), %rax	# currMB, tmp219
	movl	%edx, (%rax)	# D.10430, currMB_39->currSEnr
	.loc 1 1431 0
	movq	input(%rip), %rax	# input, input.562
	movl	2356(%rax), %eax	# input.562_111->symbol_mode, D.10430
	testl	%eax, %eax	# D.10430
	jne	.L274	#,
.LBB2:
	.loc 1 1434 0
	movl	$0, -96(%rbp)	#, b4
	jmp	.L275	#
.L276:
	.loc 1 1435 0 discriminator 2
	movl	-96(%rbp), %edx	# b4, tmp220
	movl	-124(%rbp), %eax	# b8, tmp221
	movl	$0, %ecx	#,
	movl	%eax, %esi	# tmp221,
	movl	$0, %edi	#,
	call	writeCoeff4x4_CAVLC	#
	addl	%eax, -100(%rbp)	# D.10430, rate
	.loc 1 1434 0 discriminator 2
	addl	$1, -96(%rbp)	#, b4
.L275:
	.loc 1 1434 0 is_stmt 0 discriminator 1
	cmpl	$3, -96(%rbp)	#, b4
	jle	.L276	#,
.LBE2:
	jmp	.L277	#
.L274:
	.loc 1 1439 0 is_stmt 1
	movl	-124(%rbp), %eax	# b8, tmp222
	movl	$1, %esi	#,
	movl	%eax, %edi	# tmp222,
	call	writeLumaCoeff8x8_CABAC	#
	addl	%eax, -100(%rbp)	# D.10430, rate
.L277:
	.loc 1 1443 0
	cvtsi2sdq	-72(%rbp), %xmm1	# distortion, D.10429
	cvtsi2sd	-100(%rbp), %xmm0	# rate, D.10429
	mulsd	-136(%rbp), %xmm0	# lambda, D.10429
	addsd	%xmm1, %xmm0	# D.10429, tmp223
	movsd	%xmm0, -56(%rbp)	# tmp223, rdcost
	.loc 1 1445 0
	movq	img(%rip), %rax	# img, img.563
	movl	72724(%rax), %eax	# img.563_124->residue_transform_flag, D.10430
	testl	%eax, %eax	# D.10430
	je	.L278	#,
	.loc 1 1446 0
	cvtsi2sd	-100(%rbp), %xmm2	# rate, D.10429
	movsd	%xmm2, -160(%rbp)	# D.10429, %sfp
	movq	-160(%rbp), %rax	# %sfp, D.10429
	jmp	.L280	#
.L278:
	.loc 1 1448 0
	movq	-56(%rbp), %rax	# rdcost, D.10429
.L280:
	.loc 1 1449 0
	movq	%rax, -160(%rbp)	# <retval>, %sfp
	movsd	-160(%rbp), %xmm0	# %sfp,
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	RDCost_for_8x8IntraBlocks, .-RDCost_for_8x8IntraBlocks
	.globl	dct_luma8x8
	.type	dct_luma8x8, @function
dct_luma8x8:
.LFB7:
	.loc 1 1471 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$472, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -468(%rbp)	# b8, b8
	movq	%rsi, -480(%rbp)	# coeff_cost, coeff_cost
	movl	%edx, -472(%rbp)	# intra, intra
	.loc 1 1478 0
	movl	$0, -432(%rbp)	#, dq_lshift
	movl	$0, -428(%rbp)	#, dq_rshift
	movl	$0, -424(%rbp)	#, dq_round
	.loc 1 1480 0
	movl	-468(%rbp), %eax	# b8, tmp753
	cltd
	shrl	$31, %edx	#, tmp755
	addl	%edx, %eax	# tmp755, tmp756
	andl	$1, %eax	#, tmp757
	subl	%edx, %eax	# tmp755, tmp758
	sall	$3, %eax	#, tmp759
	movl	%eax, -420(%rbp)	# tmp759, block_x
	.loc 1 1481 0
	movl	-468(%rbp), %eax	# b8, tmp760
	movl	%eax, %edx	# tmp760, tmp761
	shrl	$31, %edx	#, tmp761
	addl	%edx, %eax	# tmp761, tmp762
	sarl	%eax	# tmp763
	sall	$3, %eax	#, tmp764
	movl	%eax, -416(%rbp)	# tmp764, block_y
	.loc 1 1482 0
	movq	img(%rip), %rax	# img, img.564
	movq	14136(%rax), %rax	# img.564_36->cofAC, D.10442
	movl	-468(%rbp), %edx	# b8, tmp765
	movslq	%edx, %rdx	# tmp765, D.10443
	salq	$3, %rdx	#, D.10443
	addq	%rdx, %rax	# D.10443, D.10442
	movq	(%rax), %rax	# *_40, D.10444
	movq	(%rax), %rax	# *_41, D.10445
	movq	(%rax), %rax	# *_42, tmp766
	movq	%rax, -392(%rbp)	# tmp766, ACLevel
	.loc 1 1483 0
	movq	img(%rip), %rax	# img, img.565
	movq	14136(%rax), %rax	# img.565_44->cofAC, D.10442
	movl	-468(%rbp), %edx	# b8, tmp767
	movslq	%edx, %rdx	# tmp767, D.10443
	salq	$3, %rdx	#, D.10443
	addq	%rdx, %rax	# D.10443, D.10442
	movq	(%rax), %rax	# *_48, D.10444
	movq	(%rax), %rax	# *_49, D.10445
	movq	8(%rax), %rax	# MEM[(int * *)_50 + 8B], tmp768
	movq	%rax, -384(%rbp)	# tmp768, ACRun
	.loc 1 1487 0
	movq	img(%rip), %rax	# img, img.566
	movq	14168(%rax), %rdx	# img.566_52->mb_data, D.10446
	movq	img(%rip), %rax	# img, img.567
	movl	12(%rax), %eax	# img.567_54->current_mb_nr, D.10441
	cltq
	imulq	$632, %rax, %rax	#, D.10443, D.10443
	addq	%rdx, %rax	# D.10446, tmp769
	movq	%rax, -376(%rbp)	# tmp769, currMB
	.loc 1 1488 0
	movq	img(%rip), %rax	# img, img.569
	movl	40(%rax), %edx	# img.569_59->qp, D.10441
	movq	img(%rip), %rax	# img, img.570
	movl	72668(%rax), %eax	# img.570_61->bitdepth_luma_qp_scale, D.10441
	addl	%edx, %eax	# D.10441, D.10441
	testl	%eax, %eax	# D.10441
	jne	.L282	#,
	.loc 1 1488 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.571
	movl	72704(%rax), %eax	# img.571_64->lossless_qpprime_flag, D.10441
	cmpl	$1, %eax	#, D.10441
	jne	.L282	#,
	.loc 1 1488 0 discriminator 3
	movl	$1, %eax	#, iftmp.568
	jmp	.L283	#
.L282:
	.loc 1 1488 0 discriminator 2
	movl	$0, %eax	#, iftmp.568
.L283:
	.loc 1 1488 0 discriminator 4
	movl	%eax, -412(%rbp)	# iftmp.568, lossless_qpprime
	.loc 1 1490 0 is_stmt 1 discriminator 4
	movq	img(%rip), %rax	# img, img.572
	movl	40(%rax), %edx	# img.572_69->qp, D.10441
	movq	img(%rip), %rax	# img, img.573
	movl	72668(%rax), %eax	# img.573_71->bitdepth_luma_qp_scale, D.10441
	leal	(%rdx,%rax), %ecx	#, D.10441
	movl	$715827883, %edx	#, tmp771
	movl	%ecx, %eax	# D.10441, tmp1546
	imull	%edx	# tmp771
	movl	%ecx, %eax	# D.10441, tmp772
	sarl	$31, %eax	#, tmp772
	subl	%eax, %edx	# tmp772, tmp773
	movl	%edx, %eax	# tmp773, tmp773
	movl	%eax, -408(%rbp)	# tmp773, qp_per
	.loc 1 1491 0 discriminator 4
	movq	img(%rip), %rax	# img, img.574
	movl	40(%rax), %edx	# img.574_75->qp, D.10441
	movq	img(%rip), %rax	# img, img.575
	movl	72668(%rax), %eax	# img.575_77->bitdepth_luma_qp_scale, D.10441
	leal	(%rdx,%rax), %ecx	#, D.10441
	movl	$715827883, %edx	#, tmp775
	movl	%ecx, %eax	# D.10441, tmp1547
	imull	%edx	# tmp775
	movl	%ecx, %eax	# D.10441, tmp776
	sarl	$31, %eax	#, tmp776
	subl	%eax, %edx	# tmp776, tmp777
	movl	%edx, %eax	# tmp777, tmp777
	movl	%eax, -404(%rbp)	# tmp777, qp_rem
	movl	-404(%rbp), %edx	# qp_rem, tmp778
	movl	%edx, %eax	# tmp778, tmp779
	addl	%eax, %eax	# tmp779
	addl	%edx, %eax	# tmp778, tmp779
	addl	%eax, %eax	# tmp780
	subl	%eax, %ecx	# tmp779, tmp781
	movl	%ecx, %eax	# tmp781, tmp781
	movl	%eax, -404(%rbp)	# tmp781, qp_rem
	.loc 1 1492 0 discriminator 4
	movl	-408(%rbp), %eax	# qp_per, tmp785
	addl	$16, %eax	#, tmp784
	movl	%eax, -400(%rbp)	# tmp784, q_bits
	.loc 1 1494 0 discriminator 4
	cmpl	$5, -408(%rbp)	#, qp_per
	jg	.L284	#,
	.loc 1 1496 0
	movl	$6, %eax	#, tmp789
	subl	-408(%rbp), %eax	# qp_per, tmp788
	movl	%eax, -428(%rbp)	# tmp788, dq_rshift
	.loc 1 1497 0
	movl	$5, %eax	#, tmp790
	subl	-408(%rbp), %eax	# qp_per, D.10441
	movl	$1, %edx	#, tmp791
	movl	%eax, %ecx	# D.10441, tmp1559
	sall	%cl, %edx	# tmp1559, tmp792
	movl	%edx, %eax	# tmp792, tmp792
	movl	%eax, -424(%rbp)	# tmp792, dq_round
	jmp	.L285	#
.L284:
	.loc 1 1500 0
	movl	-408(%rbp), %eax	# qp_per, tmp796
	subl	$6, %eax	#, tmp795
	movl	%eax, -432(%rbp)	# tmp795, dq_lshift
.L285:
	.loc 1 1509 0
	movq	img(%rip), %rax	# img, img.576
	movl	24(%rax), %eax	# img.576_86->type, D.10441
	cmpl	$2, %eax	#, D.10441
	jne	.L286	#,
	.loc 1 1510 0
	movl	-400(%rbp), %eax	# q_bits, tmp797
	movl	$1, %edx	#, tmp798
	movl	%eax, %ecx	# tmp797, tmp1561
	sall	%cl, %edx	# tmp1561, D.10441
	movl	%edx, %ecx	# D.10441, D.10441
	movl	$1431655766, %edx	#, tmp800
	movl	%ecx, %eax	# D.10441, tmp1548
	imull	%edx	# tmp800
	movl	%ecx, %eax	# D.10441, tmp801
	sarl	$31, %eax	#, tmp801
	subl	%eax, %edx	# tmp801, tmp802
	movl	%edx, %eax	# tmp802, tmp802
	movl	%eax, -396(%rbp)	# tmp802, qp_const
	jmp	.L287	#
.L286:
	.loc 1 1512 0
	movl	-400(%rbp), %eax	# q_bits, tmp803
	movl	$1, %edx	#, tmp804
	movl	%eax, %ecx	# tmp803, tmp1566
	sall	%cl, %edx	# tmp1566, D.10441
	movl	%edx, %ecx	# D.10441, D.10441
	movl	$715827883, %edx	#, tmp806
	movl	%ecx, %eax	# D.10441, tmp1549
	imull	%edx	# tmp806
	movl	%ecx, %eax	# D.10441, tmp807
	sarl	$31, %eax	#, tmp807
	subl	%eax, %edx	# tmp807, tmp808
	movl	%edx, %eax	# tmp808, tmp808
	movl	%eax, -396(%rbp)	# tmp808, qp_const
.L287:
	.loc 1 1516 0
	movl	$0, -464(%rbp)	#, i
	jmp	.L288	#
.L290:
.LBB3:
	.loc 1 1519 0 discriminator 1
	movq	img(%rip), %rax	# img, img.577
	movl	-464(%rbp), %edx	# i, tmp810
	movslq	%edx, %rdx	# tmp810, tmp809
	addq	$3276, %rdx	#, tmp811
	movl	8(%rax,%rdx,4), %edx	# img.577_93->m7, D.10441
	movq	img(%rip), %rax	# img, img.578
	movl	-464(%rbp), %ecx	# i, tmp813
	movslq	%ecx, %rcx	# tmp813, tmp812
	addq	$3388, %rcx	#, tmp814
	movl	8(%rax,%rcx,4), %eax	# img.578_95->m7, D.10441
	addl	%edx, %eax	# D.10441, D.10441
	movl	%eax, -336(%rbp)	# D.10441, a
	.loc 1 1520 0 discriminator 1
	movq	img(%rip), %rax	# img, img.579
	movl	-464(%rbp), %edx	# i, tmp816
	movslq	%edx, %rdx	# tmp816, tmp815
	addq	$3292, %rdx	#, tmp817
	movl	8(%rax,%rdx,4), %edx	# img.579_98->m7, D.10441
	movq	img(%rip), %rax	# img, img.580
	movl	-464(%rbp), %ecx	# i, tmp819
	movslq	%ecx, %rcx	# tmp819, tmp818
	addq	$3372, %rcx	#, tmp820
	movl	8(%rax,%rcx,4), %eax	# img.580_100->m7, D.10441
	addl	%edx, %eax	# D.10441, D.10441
	movl	%eax, -332(%rbp)	# D.10441, a
	.loc 1 1521 0 discriminator 1
	movq	img(%rip), %rax	# img, img.581
	movl	-464(%rbp), %edx	# i, tmp822
	movslq	%edx, %rdx	# tmp822, tmp821
	addq	$3308, %rdx	#, tmp823
	movl	8(%rax,%rdx,4), %edx	# img.581_103->m7, D.10441
	movq	img(%rip), %rax	# img, img.582
	movl	-464(%rbp), %ecx	# i, tmp825
	movslq	%ecx, %rcx	# tmp825, tmp824
	addq	$3356, %rcx	#, tmp826
	movl	8(%rax,%rcx,4), %eax	# img.582_105->m7, D.10441
	addl	%edx, %eax	# D.10441, D.10441
	movl	%eax, -328(%rbp)	# D.10441, a
	.loc 1 1522 0 discriminator 1
	movq	img(%rip), %rax	# img, img.583
	movl	-464(%rbp), %edx	# i, tmp828
	movslq	%edx, %rdx	# tmp828, tmp827
	addq	$3324, %rdx	#, tmp829
	movl	8(%rax,%rdx,4), %edx	# img.583_108->m7, D.10441
	movq	img(%rip), %rax	# img, img.584
	movl	-464(%rbp), %ecx	# i, tmp831
	movslq	%ecx, %rcx	# tmp831, tmp830
	addq	$3340, %rcx	#, tmp832
	movl	8(%rax,%rcx,4), %eax	# img.584_110->m7, D.10441
	addl	%edx, %eax	# D.10441, D.10441
	movl	%eax, -324(%rbp)	# D.10441, a
	.loc 1 1524 0 discriminator 1
	movl	-336(%rbp), %edx	# a, D.10441
	movl	-324(%rbp), %eax	# a, D.10441
	addl	%edx, %eax	# D.10441, D.10441
	movl	%eax, -304(%rbp)	# D.10441, b
	.loc 1 1525 0 discriminator 1
	movl	-332(%rbp), %edx	# a, D.10441
	movl	-328(%rbp), %eax	# a, D.10441
	addl	%edx, %eax	# D.10441, D.10441
	movl	%eax, -300(%rbp)	# D.10441, b
	.loc 1 1526 0 discriminator 1
	movl	-336(%rbp), %edx	# a, D.10441
	movl	-324(%rbp), %eax	# a, D.10441
	subl	%eax, %edx	# D.10441, D.10441
	movl	%edx, %eax	# D.10441, D.10441
	movl	%eax, -296(%rbp)	# D.10441, b
	.loc 1 1527 0 discriminator 1
	movl	-332(%rbp), %edx	# a, D.10441
	movl	-328(%rbp), %eax	# a, D.10441
	subl	%eax, %edx	# D.10441, D.10441
	movl	%edx, %eax	# D.10441, D.10441
	movl	%eax, -292(%rbp)	# D.10441, b
	.loc 1 1529 0 discriminator 1
	movq	img(%rip), %rax	# img, img.585
	movl	-464(%rbp), %edx	# i, tmp834
	movslq	%edx, %rdx	# tmp834, tmp833
	addq	$3276, %rdx	#, tmp835
	movl	8(%rax,%rdx,4), %edx	# img.585_125->m7, D.10441
	movq	img(%rip), %rax	# img, img.586
	movl	-464(%rbp), %ecx	# i, tmp837
	movslq	%ecx, %rcx	# tmp837, tmp836
	addq	$3388, %rcx	#, tmp838
	movl	8(%rax,%rcx,4), %eax	# img.586_127->m7, D.10441
	subl	%eax, %edx	# D.10441, D.10441
	movl	%edx, %eax	# D.10441, D.10441
	movl	%eax, -320(%rbp)	# D.10441, a
	.loc 1 1530 0 discriminator 1
	movq	img(%rip), %rax	# img, img.587
	movl	-464(%rbp), %edx	# i, tmp840
	movslq	%edx, %rdx	# tmp840, tmp839
	addq	$3292, %rdx	#, tmp841
	movl	8(%rax,%rdx,4), %edx	# img.587_130->m7, D.10441
	movq	img(%rip), %rax	# img, img.588
	movl	-464(%rbp), %ecx	# i, tmp843
	movslq	%ecx, %rcx	# tmp843, tmp842
	addq	$3372, %rcx	#, tmp844
	movl	8(%rax,%rcx,4), %eax	# img.588_132->m7, D.10441
	subl	%eax, %edx	# D.10441, D.10441
	movl	%edx, %eax	# D.10441, D.10441
	movl	%eax, -316(%rbp)	# D.10441, a
	.loc 1 1531 0 discriminator 1
	movq	img(%rip), %rax	# img, img.589
	movl	-464(%rbp), %edx	# i, tmp846
	movslq	%edx, %rdx	# tmp846, tmp845
	addq	$3308, %rdx	#, tmp847
	movl	8(%rax,%rdx,4), %edx	# img.589_135->m7, D.10441
	movq	img(%rip), %rax	# img, img.590
	movl	-464(%rbp), %ecx	# i, tmp849
	movslq	%ecx, %rcx	# tmp849, tmp848
	addq	$3356, %rcx	#, tmp850
	movl	8(%rax,%rcx,4), %eax	# img.590_137->m7, D.10441
	subl	%eax, %edx	# D.10441, D.10441
	movl	%edx, %eax	# D.10441, D.10441
	movl	%eax, -312(%rbp)	# D.10441, a
	.loc 1 1532 0 discriminator 1
	movq	img(%rip), %rax	# img, img.591
	movl	-464(%rbp), %edx	# i, tmp852
	movslq	%edx, %rdx	# tmp852, tmp851
	addq	$3324, %rdx	#, tmp853
	movl	8(%rax,%rdx,4), %edx	# img.591_140->m7, D.10441
	movq	img(%rip), %rax	# img, img.592
	movl	-464(%rbp), %ecx	# i, tmp855
	movslq	%ecx, %rcx	# tmp855, tmp854
	addq	$3340, %rcx	#, tmp856
	movl	8(%rax,%rcx,4), %eax	# img.592_142->m7, D.10441
	subl	%eax, %edx	# D.10441, D.10441
	movl	%edx, %eax	# D.10441, D.10441
	movl	%eax, -308(%rbp)	# D.10441, a
	.loc 1 1534 0 discriminator 1
	movl	-316(%rbp), %edx	# a, D.10441
	movl	-312(%rbp), %eax	# a, D.10441
	addl	%eax, %edx	# D.10441, D.10441
	movl	-320(%rbp), %eax	# a, D.10441
	sarl	%eax	# D.10441
	movl	%eax, %ecx	# D.10441, D.10441
	movl	-320(%rbp), %eax	# a, D.10441
	addl	%ecx, %eax	# D.10441, D.10441
	addl	%edx, %eax	# D.10441, D.10441
	movl	%eax, -288(%rbp)	# D.10441, b
	.loc 1 1535 0 discriminator 1
	movl	-320(%rbp), %edx	# a, D.10441
	movl	-308(%rbp), %eax	# a, D.10441
	subl	%eax, %edx	# D.10441, D.10441
	movl	-312(%rbp), %eax	# a, D.10441
	sarl	%eax	# D.10441
	movl	%eax, %ecx	# D.10441, D.10441
	movl	-312(%rbp), %eax	# a, D.10441
	addl	%ecx, %eax	# D.10441, D.10441
	subl	%eax, %edx	# D.10441, D.10441
	movl	%edx, %eax	# D.10441, D.10441
	movl	%eax, -284(%rbp)	# D.10441, b
	.loc 1 1536 0 discriminator 1
	movl	-320(%rbp), %edx	# a, D.10441
	movl	-308(%rbp), %eax	# a, D.10441
	addl	%eax, %edx	# D.10441, D.10441
	movl	-316(%rbp), %eax	# a, D.10441
	sarl	%eax	# D.10441
	movl	%eax, %ecx	# D.10441, D.10441
	movl	-316(%rbp), %eax	# a, D.10441
	addl	%ecx, %eax	# D.10441, D.10441
	subl	%eax, %edx	# D.10441, D.10441
	movl	%edx, %eax	# D.10441, D.10441
	movl	%eax, -280(%rbp)	# D.10441, b
	.loc 1 1537 0 discriminator 1
	movl	-316(%rbp), %edx	# a, D.10441
	movl	-312(%rbp), %eax	# a, D.10441
	subl	%eax, %edx	# D.10441, D.10441
	movl	-308(%rbp), %eax	# a, D.10441
	sarl	%eax	# D.10441
	movl	%eax, %ecx	# D.10441, D.10441
	movl	-308(%rbp), %eax	# a, D.10441
	addl	%ecx, %eax	# D.10441, D.10441
	addl	%edx, %eax	# D.10441, D.10441
	movl	%eax, -276(%rbp)	# D.10441, b
	.loc 1 1539 0 discriminator 1
	movl	-304(%rbp), %edx	# b, D.10441
	movl	-300(%rbp), %eax	# b, D.10441
	addl	%eax, %edx	# D.10441, D.10441
	movl	-464(%rbp), %eax	# i, tmp858
	cltq
	movl	%edx, -272(%rbp,%rax,4)	# D.10441, m6
	.loc 1 1540 0 discriminator 1
	movl	-296(%rbp), %eax	# b, D.10441
	movl	-292(%rbp), %edx	# b, D.10441
	sarl	%edx	# D.10441
	addl	%eax, %edx	# D.10441, D.10441
	movl	-464(%rbp), %eax	# i, tmp860
	cltq
	addq	$16, %rax	#, tmp861
	movl	%edx, -272(%rbp,%rax,4)	# D.10441, m6
	.loc 1 1541 0 discriminator 1
	movl	-304(%rbp), %edx	# b, D.10441
	movl	-300(%rbp), %eax	# b, D.10441
	subl	%eax, %edx	# D.10441, D.10441
	movl	-464(%rbp), %eax	# i, tmp863
	cltq
	addq	$32, %rax	#, tmp864
	movl	%edx, -272(%rbp,%rax,4)	# D.10441, m6
	.loc 1 1542 0 discriminator 1
	movl	-296(%rbp), %eax	# b, D.10441
	sarl	%eax	# D.10441
	movl	%eax, %edx	# D.10441, D.10441
	movl	-292(%rbp), %eax	# b, D.10441
	subl	%eax, %edx	# D.10441, D.10441
	movl	-464(%rbp), %eax	# i, tmp866
	cltq
	addq	$48, %rax	#, tmp867
	movl	%edx, -272(%rbp,%rax,4)	# D.10441, m6
	.loc 1 1543 0 discriminator 1
	movl	-288(%rbp), %eax	# b, D.10441
	movl	-276(%rbp), %edx	# b, D.10441
	sarl	$2, %edx	#, D.10441
	addl	%eax, %edx	# D.10441, D.10441
	movl	-464(%rbp), %eax	# i, tmp869
	cltq
	addq	$8, %rax	#, tmp870
	movl	%edx, -272(%rbp,%rax,4)	# D.10441, m6
	.loc 1 1544 0 discriminator 1
	movl	-284(%rbp), %eax	# b, D.10441
	movl	-280(%rbp), %edx	# b, D.10441
	sarl	$2, %edx	#, D.10441
	addl	%eax, %edx	# D.10441, D.10441
	movl	-464(%rbp), %eax	# i, tmp872
	cltq
	addq	$24, %rax	#, tmp873
	movl	%edx, -272(%rbp,%rax,4)	# D.10441, m6
	.loc 1 1545 0 discriminator 1
	movl	-280(%rbp), %eax	# b, D.10441
	movl	-284(%rbp), %edx	# b, D.10441
	sarl	$2, %edx	#, D.10441
	subl	%edx, %eax	# D.10441, D.10441
	movl	%eax, %edx	# D.10441, D.10441
	movl	-464(%rbp), %eax	# i, tmp875
	cltq
	addq	$40, %rax	#, tmp876
	movl	%edx, -272(%rbp,%rax,4)	# D.10441, m6
	.loc 1 1546 0 discriminator 1
	movl	-288(%rbp), %eax	# b, D.10441
	sarl	$2, %eax	#, D.10441
	movl	%eax, %edx	# D.10441, D.10441
	movl	-276(%rbp), %eax	# b, D.10441
	subl	%eax, %edx	# D.10441, D.10441
	movl	-464(%rbp), %eax	# i, tmp878
	cltq
	addq	$56, %rax	#, tmp879
	movl	%edx, -272(%rbp,%rax,4)	# D.10441, m6
.LBE3:
	.loc 1 1516 0 discriminator 1
	addl	$1, -464(%rbp)	#, i
.L288:
	cmpl	$7, -464(%rbp)	#, i
	jg	.L289	#,
	.loc 1 1516 0 is_stmt 0 discriminator 2
	cmpl	$0, -412(%rbp)	#, lossless_qpprime
	je	.L290	#,
.L289:
	.loc 1 1550 0 is_stmt 1
	movl	$0, -464(%rbp)	#, i
	jmp	.L291	#
.L293:
.LBB4:
	.loc 1 1553 0 discriminator 1
	movl	-464(%rbp), %eax	# i, tmp881
	cltq
	salq	$5, %rax	#, tmp882
	leaq	-16(%rbp), %rbx	#, tmp1585
	addq	%rbx, %rax	# tmp1585, tmp883
	subq	$256, %rax	#, tmp884
	movl	(%rax), %edx	# m6, D.10441
	movl	-464(%rbp), %eax	# i, tmp886
	cltq
	salq	$5, %rax	#, tmp887
	leaq	-16(%rbp), %rbx	#, tmp1586
	addq	%rbx, %rax	# tmp1586, tmp888
	subq	$228, %rax	#, tmp889
	movl	(%rax), %eax	# m6, D.10441
	addl	%edx, %eax	# D.10441, D.10441
	movl	%eax, -336(%rbp)	# D.10441, a
	.loc 1 1554 0 discriminator 1
	movl	-464(%rbp), %eax	# i, tmp891
	cltq
	salq	$5, %rax	#, tmp892
	leaq	-16(%rbp), %rbx	#, tmp1587
	addq	%rbx, %rax	# tmp1587, tmp893
	subq	$252, %rax	#, tmp894
	movl	(%rax), %edx	# m6, D.10441
	movl	-464(%rbp), %eax	# i, tmp896
	cltq
	salq	$5, %rax	#, tmp897
	leaq	-16(%rbp), %rbx	#, tmp1588
	addq	%rbx, %rax	# tmp1588, tmp898
	subq	$232, %rax	#, tmp899
	movl	(%rax), %eax	# m6, D.10441
	addl	%edx, %eax	# D.10441, D.10441
	movl	%eax, -332(%rbp)	# D.10441, a
	.loc 1 1555 0 discriminator 1
	movl	-464(%rbp), %eax	# i, tmp901
	cltq
	salq	$5, %rax	#, tmp902
	leaq	-16(%rbp), %rbx	#, tmp1589
	addq	%rbx, %rax	# tmp1589, tmp903
	subq	$248, %rax	#, tmp904
	movl	(%rax), %edx	# m6, D.10441
	movl	-464(%rbp), %eax	# i, tmp906
	cltq
	salq	$5, %rax	#, tmp907
	leaq	-16(%rbp), %rbx	#, tmp1590
	addq	%rbx, %rax	# tmp1590, tmp908
	subq	$236, %rax	#, tmp909
	movl	(%rax), %eax	# m6, D.10441
	addl	%edx, %eax	# D.10441, D.10441
	movl	%eax, -328(%rbp)	# D.10441, a
	.loc 1 1556 0 discriminator 1
	movl	-464(%rbp), %eax	# i, tmp911
	cltq
	salq	$5, %rax	#, tmp912
	leaq	-16(%rbp), %rbx	#, tmp1591
	addq	%rbx, %rax	# tmp1591, tmp913
	subq	$244, %rax	#, tmp914
	movl	(%rax), %edx	# m6, D.10441
	movl	-464(%rbp), %eax	# i, tmp916
	cltq
	salq	$5, %rax	#, tmp917
	leaq	-16(%rbp), %rbx	#, tmp1592
	addq	%rbx, %rax	# tmp1592, tmp918
	subq	$240, %rax	#, tmp919
	movl	(%rax), %eax	# m6, D.10441
	addl	%edx, %eax	# D.10441, D.10441
	movl	%eax, -324(%rbp)	# D.10441, a
	.loc 1 1558 0 discriminator 1
	movl	-336(%rbp), %edx	# a, D.10441
	movl	-324(%rbp), %eax	# a, D.10441
	addl	%edx, %eax	# D.10441, D.10441
	movl	%eax, -304(%rbp)	# D.10441, b
	.loc 1 1559 0 discriminator 1
	movl	-332(%rbp), %edx	# a, D.10441
	movl	-328(%rbp), %eax	# a, D.10441
	addl	%edx, %eax	# D.10441, D.10441
	movl	%eax, -300(%rbp)	# D.10441, b
	.loc 1 1560 0 discriminator 1
	movl	-336(%rbp), %edx	# a, D.10441
	movl	-324(%rbp), %eax	# a, D.10441
	subl	%eax, %edx	# D.10441, D.10441
	movl	%edx, %eax	# D.10441, D.10441
	movl	%eax, -296(%rbp)	# D.10441, b
	.loc 1 1561 0 discriminator 1
	movl	-332(%rbp), %edx	# a, D.10441
	movl	-328(%rbp), %eax	# a, D.10441
	subl	%eax, %edx	# D.10441, D.10441
	movl	%edx, %eax	# D.10441, D.10441
	movl	%eax, -292(%rbp)	# D.10441, b
	.loc 1 1563 0 discriminator 1
	movl	-464(%rbp), %eax	# i, tmp921
	cltq
	salq	$5, %rax	#, tmp922
	leaq	-16(%rbp), %rdi	#, tmp1595
	addq	%rdi, %rax	# tmp1595, tmp923
	subq	$256, %rax	#, tmp924
	movl	(%rax), %edx	# m6, D.10441
	movl	-464(%rbp), %eax	# i, tmp926
	cltq
	salq	$5, %rax	#, tmp927
	leaq	-16(%rbp), %rbx	#, tmp1596
	addq	%rbx, %rax	# tmp1596, tmp928
	subq	$228, %rax	#, tmp929
	movl	(%rax), %eax	# m6, D.10441
	subl	%eax, %edx	# D.10441, D.10441
	movl	%edx, %eax	# D.10441, D.10441
	movl	%eax, -320(%rbp)	# D.10441, a
	.loc 1 1564 0 discriminator 1
	movl	-464(%rbp), %eax	# i, tmp931
	cltq
	salq	$5, %rax	#, tmp932
	leaq	-16(%rbp), %rdi	#, tmp1598
	addq	%rdi, %rax	# tmp1598, tmp933
	subq	$252, %rax	#, tmp934
	movl	(%rax), %edx	# m6, D.10441
	movl	-464(%rbp), %eax	# i, tmp936
	cltq
	salq	$5, %rax	#, tmp937
	leaq	-16(%rbp), %rbx	#, tmp1599
	addq	%rbx, %rax	# tmp1599, tmp938
	subq	$232, %rax	#, tmp939
	movl	(%rax), %eax	# m6, D.10441
	subl	%eax, %edx	# D.10441, D.10441
	movl	%edx, %eax	# D.10441, D.10441
	movl	%eax, -316(%rbp)	# D.10441, a
	.loc 1 1565 0 discriminator 1
	movl	-464(%rbp), %eax	# i, tmp941
	cltq
	salq	$5, %rax	#, tmp942
	leaq	-16(%rbp), %rdi	#, tmp1601
	addq	%rdi, %rax	# tmp1601, tmp943
	subq	$248, %rax	#, tmp944
	movl	(%rax), %edx	# m6, D.10441
	movl	-464(%rbp), %eax	# i, tmp946
	cltq
	salq	$5, %rax	#, tmp947
	leaq	-16(%rbp), %rbx	#, tmp1602
	addq	%rbx, %rax	# tmp1602, tmp948
	subq	$236, %rax	#, tmp949
	movl	(%rax), %eax	# m6, D.10441
	subl	%eax, %edx	# D.10441, D.10441
	movl	%edx, %eax	# D.10441, D.10441
	movl	%eax, -312(%rbp)	# D.10441, a
	.loc 1 1566 0 discriminator 1
	movl	-464(%rbp), %eax	# i, tmp951
	cltq
	salq	$5, %rax	#, tmp952
	leaq	-16(%rbp), %rdi	#, tmp1604
	addq	%rdi, %rax	# tmp1604, tmp953
	subq	$244, %rax	#, tmp954
	movl	(%rax), %edx	# m6, D.10441
	movl	-464(%rbp), %eax	# i, tmp956
	cltq
	salq	$5, %rax	#, tmp957
	leaq	-16(%rbp), %rbx	#, tmp1605
	addq	%rbx, %rax	# tmp1605, tmp958
	subq	$240, %rax	#, tmp959
	movl	(%rax), %eax	# m6, D.10441
	subl	%eax, %edx	# D.10441, D.10441
	movl	%edx, %eax	# D.10441, D.10441
	movl	%eax, -308(%rbp)	# D.10441, a
	.loc 1 1568 0 discriminator 1
	movl	-316(%rbp), %edx	# a, D.10441
	movl	-312(%rbp), %eax	# a, D.10441
	addl	%eax, %edx	# D.10441, D.10441
	movl	-320(%rbp), %eax	# a, D.10441
	sarl	%eax	# D.10441
	movl	%eax, %ecx	# D.10441, D.10441
	movl	-320(%rbp), %eax	# a, D.10441
	addl	%ecx, %eax	# D.10441, D.10441
	addl	%edx, %eax	# D.10441, D.10441
	movl	%eax, -288(%rbp)	# D.10441, b
	.loc 1 1569 0 discriminator 1
	movl	-320(%rbp), %edx	# a, D.10441
	movl	-308(%rbp), %eax	# a, D.10441
	subl	%eax, %edx	# D.10441, D.10441
	movl	-312(%rbp), %eax	# a, D.10441
	sarl	%eax	# D.10441
	movl	%eax, %ecx	# D.10441, D.10441
	movl	-312(%rbp), %eax	# a, D.10441
	addl	%ecx, %eax	# D.10441, D.10441
	subl	%eax, %edx	# D.10441, D.10441
	movl	%edx, %eax	# D.10441, D.10441
	movl	%eax, -284(%rbp)	# D.10441, b
	.loc 1 1570 0 discriminator 1
	movl	-320(%rbp), %edx	# a, D.10441
	movl	-308(%rbp), %eax	# a, D.10441
	addl	%eax, %edx	# D.10441, D.10441
	movl	-316(%rbp), %eax	# a, D.10441
	sarl	%eax	# D.10441
	movl	%eax, %ecx	# D.10441, D.10441
	movl	-316(%rbp), %eax	# a, D.10441
	addl	%ecx, %eax	# D.10441, D.10441
	subl	%eax, %edx	# D.10441, D.10441
	movl	%edx, %eax	# D.10441, D.10441
	movl	%eax, -280(%rbp)	# D.10441, b
	.loc 1 1571 0 discriminator 1
	movl	-316(%rbp), %edx	# a, D.10441
	movl	-312(%rbp), %eax	# a, D.10441
	subl	%eax, %edx	# D.10441, D.10441
	movl	-308(%rbp), %eax	# a, D.10441
	sarl	%eax	# D.10441
	movl	%eax, %ecx	# D.10441, D.10441
	movl	-308(%rbp), %eax	# a, D.10441
	addl	%ecx, %eax	# D.10441, D.10441
	addl	%edx, %eax	# D.10441, D.10441
	movl	%eax, -276(%rbp)	# D.10441, b
	.loc 1 1573 0 discriminator 1
	movq	img(%rip), %rax	# img, img.593
	movl	-304(%rbp), %ecx	# b, D.10441
	movl	-300(%rbp), %edx	# b, D.10441
	addl	%ecx, %edx	# D.10441, D.10441
	movl	-464(%rbp), %ecx	# i, tmp961
	movslq	%ecx, %rcx	# tmp961, tmp960
	salq	$6, %rcx	#, tmp962
	addq	%rcx, %rax	# tmp962, tmp963
	addq	$13104, %rax	#, tmp964
	movl	%edx, 8(%rax)	# D.10441, img.593_277->m7
	.loc 1 1574 0 discriminator 1
	movq	img(%rip), %rax	# img, img.594
	movl	-296(%rbp), %edx	# b, D.10441
	movl	-292(%rbp), %ecx	# b, D.10441
	sarl	%ecx	# D.10441
	addl	%ecx, %edx	# D.10441, D.10441
	movl	-464(%rbp), %ecx	# i, tmp966
	movslq	%ecx, %rcx	# tmp966, tmp965
	salq	$6, %rcx	#, tmp967
	addq	%rcx, %rax	# tmp967, tmp968
	addq	$13112, %rax	#, tmp969
	movl	%edx, 8(%rax)	# D.10441, img.594_281->m7
	.loc 1 1575 0 discriminator 1
	movq	img(%rip), %rax	# img, img.595
	movl	-304(%rbp), %ecx	# b, D.10441
	movl	-300(%rbp), %edx	# b, D.10441
	subl	%edx, %ecx	# D.10441, D.10441
	movl	%ecx, %edx	# D.10441, D.10441
	movl	-464(%rbp), %ecx	# i, tmp971
	movslq	%ecx, %rcx	# tmp971, tmp970
	addq	$205, %rcx	#, tmp972
	salq	$6, %rcx	#, tmp973
	addq	%rcx, %rax	# tmp973, tmp974
	movl	%edx, 8(%rax)	# D.10441, img.595_286->m7
	.loc 1 1576 0 discriminator 1
	movq	img(%rip), %rax	# img, img.596
	movl	-296(%rbp), %edx	# b, D.10441
	movl	%edx, %ecx	# D.10441, D.10441
	sarl	%ecx	# D.10441
	movl	-292(%rbp), %edx	# b, D.10441
	subl	%edx, %ecx	# D.10441, D.10441
	movl	%ecx, %edx	# D.10441, D.10441
	movl	-464(%rbp), %ecx	# i, tmp976
	movslq	%ecx, %rcx	# tmp976, tmp975
	salq	$6, %rcx	#, tmp977
	addq	%rcx, %rax	# tmp977, tmp978
	addq	$13128, %rax	#, tmp979
	movl	%edx, 8(%rax)	# D.10441, img.596_290->m7
	.loc 1 1577 0 discriminator 1
	movq	img(%rip), %rax	# img, img.597
	movl	-288(%rbp), %edx	# b, D.10441
	movl	-276(%rbp), %ecx	# b, D.10441
	sarl	$2, %ecx	#, D.10441
	addl	%ecx, %edx	# D.10441, D.10441
	movl	-464(%rbp), %ecx	# i, tmp981
	movslq	%ecx, %rcx	# tmp981, tmp980
	salq	$6, %rcx	#, tmp982
	addq	%rcx, %rax	# tmp982, tmp983
	addq	$13108, %rax	#, tmp984
	movl	%edx, 8(%rax)	# D.10441, img.597_295->m7
	.loc 1 1578 0 discriminator 1
	movq	img(%rip), %rax	# img, img.598
	movl	-284(%rbp), %edx	# b, D.10441
	movl	-280(%rbp), %ecx	# b, D.10441
	sarl	$2, %ecx	#, D.10441
	addl	%ecx, %edx	# D.10441, D.10441
	movl	-464(%rbp), %ecx	# i, tmp986
	movslq	%ecx, %rcx	# tmp986, tmp985
	salq	$6, %rcx	#, tmp987
	addq	%rcx, %rax	# tmp987, tmp988
	addq	$13116, %rax	#, tmp989
	movl	%edx, 8(%rax)	# D.10441, img.598_300->m7
	.loc 1 1579 0 discriminator 1
	movq	img(%rip), %rax	# img, img.599
	movl	-280(%rbp), %edx	# b, D.10441
	movl	-284(%rbp), %ecx	# b, D.10441
	sarl	$2, %ecx	#, D.10441
	subl	%ecx, %edx	# D.10441, D.10441
	movl	-464(%rbp), %ecx	# i, tmp991
	movslq	%ecx, %rcx	# tmp991, tmp990
	salq	$6, %rcx	#, tmp992
	addq	%rcx, %rax	# tmp992, tmp993
	addq	$13124, %rax	#, tmp994
	movl	%edx, 8(%rax)	# D.10441, img.599_305->m7
	.loc 1 1580 0 discriminator 1
	movq	img(%rip), %rax	# img, img.600
	movl	-288(%rbp), %edx	# b, D.10441
	movl	%edx, %ecx	# D.10441, D.10441
	sarl	$2, %ecx	#, D.10441
	movl	-276(%rbp), %edx	# b, D.10441
	subl	%edx, %ecx	# D.10441, D.10441
	movl	%ecx, %edx	# D.10441, D.10441
	movl	-464(%rbp), %ecx	# i, tmp996
	movslq	%ecx, %rcx	# tmp996, tmp995
	salq	$6, %rcx	#, tmp997
	addq	%rcx, %rax	# tmp997, tmp998
	addq	$13132, %rax	#, tmp999
	movl	%edx, 8(%rax)	# D.10441, img.600_310->m7
.LBE4:
	.loc 1 1550 0 discriminator 1
	addl	$1, -464(%rbp)	#, i
.L291:
	cmpl	$7, -464(%rbp)	#, i
	jg	.L292	#,
	.loc 1 1550 0 is_stmt 0 discriminator 2
	cmpl	$0, -412(%rbp)	#, lossless_qpprime
	je	.L293	#,
.L292:
	.loc 1 1586 0 is_stmt 1
	movl	$0, -436(%rbp)	#, nonzero
	.loc 1 1588 0
	movl	$-1, -440(%rbp)	#, run
	.loc 1 1589 0
	movl	$0, -444(%rbp)	#, scan_pos
	.loc 1 1591 0
	movl	$-1, -340(%rbp)	#, runs
	movl	-340(%rbp), %eax	# runs, D.10441
	movl	%eax, -344(%rbp)	# D.10441, runs
	movl	-344(%rbp), %eax	# runs, D.10441
	movl	%eax, -348(%rbp)	# D.10441, runs
	movl	-348(%rbp), %eax	# runs, D.10441
	movl	%eax, -352(%rbp)	# D.10441, runs
	.loc 1 1592 0
	movl	$0, -356(%rbp)	#, scan_poss
	movl	-356(%rbp), %eax	# scan_poss, D.10441
	movl	%eax, -360(%rbp)	# D.10441, scan_poss
	movl	-360(%rbp), %eax	# scan_poss, D.10441
	movl	%eax, -364(%rbp)	# D.10441, scan_poss
	movl	-364(%rbp), %eax	# scan_poss, D.10441
	movl	%eax, -368(%rbp)	# D.10441, scan_poss
	.loc 1 1594 0
	movl	$0, -452(%rbp)	#, coeff_ctr
	jmp	.L294	#
.L314:
	.loc 1 1597 0
	movq	img(%rip), %rax	# img, img.601
	movl	72444(%rax), %eax	# img.601_326->field_picture, D.10447
	testl	%eax, %eax	# D.10447
	jne	.L295	#,
	.loc 1 1597 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.602
	movl	72400(%rax), %eax	# img.602_328->MbaffFrameFlag, D.10441
	testl	%eax, %eax	# D.10441
	je	.L296	#,
	movq	-376(%rbp), %rax	# currMB, tmp1000
	movl	532(%rax), %eax	# currMB_58->mb_field, D.10441
	testl	%eax, %eax	# D.10441
	je	.L296	#,
.L295:
	.loc 1 1599 0 is_stmt 1
	movl	-452(%rbp), %eax	# coeff_ctr, tmp1002
	cltq
	movzbl	FIELD_SCAN8x8(%rax,%rax), %eax	# FIELD_SCAN8x8, D.10448
	movzbl	%al, %eax	# D.10448, tmp1003
	movl	%eax, -464(%rbp)	# tmp1003, i
	.loc 1 1600 0
	movl	-452(%rbp), %eax	# coeff_ctr, tmp1005
	cltq
	movzbl	FIELD_SCAN8x8+1(%rax,%rax), %eax	# FIELD_SCAN8x8, D.10448
	movzbl	%al, %eax	# D.10448, tmp1006
	movl	%eax, -460(%rbp)	# tmp1006, j
	jmp	.L297	#
.L296:
	.loc 1 1604 0
	movl	-452(%rbp), %eax	# coeff_ctr, tmp1008
	cltq
	movzbl	SNGL_SCAN8x8(%rax,%rax), %eax	# SNGL_SCAN8x8, D.10448
	movzbl	%al, %eax	# D.10448, tmp1009
	movl	%eax, -464(%rbp)	# tmp1009, i
	.loc 1 1605 0
	movl	-452(%rbp), %eax	# coeff_ctr, tmp1011
	cltq
	movzbl	SNGL_SCAN8x8+1(%rax,%rax), %eax	# SNGL_SCAN8x8, D.10448
	movzbl	%al, %eax	# D.10448, tmp1012
	movl	%eax, -460(%rbp)	# tmp1012, j
.L297:
	.loc 1 1608 0
	addl	$1, -440(%rbp)	#, run
	.loc 1 1609 0
	movl	$0, -456(%rbp)	#, ilev
	.loc 1 1611 0
	movl	-452(%rbp), %eax	# coeff_ctr, tmp1013
	andl	$3, %eax	#, D.10441
	movslq	%eax, %rdx	# D.10441, tmp1014
	movl	-352(%rbp,%rdx,4), %edx	# runs, D.10441
	addl	$1, %edx	#, D.10441
	cltq
	movl	%edx, -352(%rbp,%rax,4)	# D.10441, runs
	.loc 1 1613 0
	cmpl	$0, -412(%rbp)	#, lossless_qpprime
	je	.L298	#,
	.loc 1 1614 0
	movq	img(%rip), %rax	# img, img.603
	movl	-460(%rbp), %edx	# j, tmp1017
	movslq	%edx, %rdx	# tmp1017, tmp1016
	movl	-464(%rbp), %ecx	# i, tmp1019
	movslq	%ecx, %rcx	# tmp1019, tmp1018
	salq	$4, %rcx	#, tmp1020
	addq	%rcx, %rdx	# tmp1020, tmp1021
	addq	$3276, %rdx	#, tmp1022
	movl	8(%rax,%rdx,4), %edx	# img.603_344->m7, D.10441
	movl	%edx, %eax	# D.10441, tmp1023
	sarl	$31, %eax	#, tmp1023
	xorl	%eax, %edx	# tmp1023, tmp1024
	movl	%edx, -448(%rbp)	# tmp1024, level
	subl	%eax, -448(%rbp)	# tmp1023, level
	jmp	.L299	#
.L298:
	.loc 1 1615 0
	cmpl	$1, -472(%rbp)	#, intra
	jne	.L300	#,
	.loc 1 1616 0
	movq	img(%rip), %rax	# img, img.604
	movl	-460(%rbp), %edx	# j, tmp1026
	movslq	%edx, %rdx	# tmp1026, tmp1025
	movl	-464(%rbp), %ecx	# i, tmp1028
	movslq	%ecx, %rcx	# tmp1028, tmp1027
	salq	$4, %rcx	#, tmp1029
	addq	%rcx, %rdx	# tmp1029, tmp1030
	addq	$3276, %rdx	#, tmp1031
	movl	8(%rax,%rdx,4), %eax	# img.604_348->m7, D.10441
	cltd
	xorl	%edx, %eax	# tmp1032, D.10441
	subl	%edx, %eax	# tmp1032, D.10441
	movl	-460(%rbp), %edx	# j, tmp1034
	movslq	%edx, %rdx	# tmp1034, tmp1033
	movl	-404(%rbp), %ecx	# qp_rem, tmp1036
	movslq	%ecx, %rsi	# tmp1036, tmp1035
	movl	-464(%rbp), %ecx	# i, tmp1038
	movslq	%ecx, %rcx	# tmp1038, tmp1037
	salq	$3, %rsi	#, tmp1039
	addq	%rsi, %rcx	# tmp1039, tmp1040
	salq	$3, %rcx	#, tmp1041
	addq	%rcx, %rdx	# tmp1041, tmp1042
	movl	LevelScale8x8Luma_Intra(,%rdx,4), %edx	# LevelScale8x8Luma_Intra, D.10441
	imull	%eax, %edx	# D.10441, D.10441
	movl	-460(%rbp), %eax	# j, tmp1044
	cltq
	movl	-408(%rbp), %ecx	# qp_per, tmp1046
	movslq	%ecx, %rsi	# tmp1046, tmp1045
	movl	-464(%rbp), %ecx	# i, tmp1048
	movslq	%ecx, %rcx	# tmp1048, tmp1047
	salq	$3, %rsi	#, tmp1049
	addq	%rsi, %rcx	# tmp1049, tmp1050
	salq	$3, %rcx	#, tmp1051
	addq	%rcx, %rax	# tmp1051, tmp1052
	movl	LevelOffset8x8Luma_Intra(,%rax,4), %eax	# LevelOffset8x8Luma_Intra, D.10441
	addl	%eax, %edx	# D.10441, D.10441
	movl	-400(%rbp), %eax	# q_bits, tmp1053
	movl	%eax, %ecx	# tmp1053, tmp1620
	sarl	%cl, %edx	# tmp1620, tmp1054
	movl	%edx, %eax	# tmp1054, tmp1054
	movl	%eax, -448(%rbp)	# tmp1054, level
	jmp	.L299	#
.L300:
	.loc 1 1619 0
	movq	img(%rip), %rax	# img, img.605
	movl	-460(%rbp), %edx	# j, tmp1056
	movslq	%edx, %rdx	# tmp1056, tmp1055
	movl	-464(%rbp), %ecx	# i, tmp1058
	movslq	%ecx, %rcx	# tmp1058, tmp1057
	salq	$4, %rcx	#, tmp1059
	addq	%rcx, %rdx	# tmp1059, tmp1060
	addq	$3276, %rdx	#, tmp1061
	movl	8(%rax,%rdx,4), %eax	# img.605_356->m7, D.10441
	cltd
	xorl	%edx, %eax	# tmp1062, D.10441
	subl	%edx, %eax	# tmp1062, D.10441
	movl	-460(%rbp), %edx	# j, tmp1064
	movslq	%edx, %rdx	# tmp1064, tmp1063
	movl	-404(%rbp), %ecx	# qp_rem, tmp1066
	movslq	%ecx, %rsi	# tmp1066, tmp1065
	movl	-464(%rbp), %ecx	# i, tmp1068
	movslq	%ecx, %rcx	# tmp1068, tmp1067
	salq	$3, %rsi	#, tmp1069
	addq	%rsi, %rcx	# tmp1069, tmp1070
	salq	$3, %rcx	#, tmp1071
	addq	%rcx, %rdx	# tmp1071, tmp1072
	movl	LevelScale8x8Luma_Inter(,%rdx,4), %edx	# LevelScale8x8Luma_Inter, D.10441
	imull	%eax, %edx	# D.10441, D.10441
	movl	-460(%rbp), %eax	# j, tmp1074
	cltq
	movl	-408(%rbp), %ecx	# qp_per, tmp1076
	movslq	%ecx, %rsi	# tmp1076, tmp1075
	movl	-464(%rbp), %ecx	# i, tmp1078
	movslq	%ecx, %rcx	# tmp1078, tmp1077
	salq	$3, %rsi	#, tmp1079
	addq	%rsi, %rcx	# tmp1079, tmp1080
	salq	$3, %rcx	#, tmp1081
	addq	%rcx, %rax	# tmp1081, tmp1082
	movl	LevelOffset8x8Luma_Inter(,%rax,4), %eax	# LevelOffset8x8Luma_Inter, D.10441
	addl	%eax, %edx	# D.10441, D.10441
	movl	-400(%rbp), %eax	# q_bits, tmp1083
	movl	%eax, %ecx	# tmp1083, tmp1622
	sarl	%cl, %edx	# tmp1622, tmp1084
	movl	%edx, %eax	# tmp1084, tmp1084
	movl	%eax, -448(%rbp)	# tmp1084, level
.L299:
	.loc 1 1622 0
	cmpl	$0, -448(%rbp)	#, level
	je	.L301	#,
	.loc 1 1624 0
	movl	$1, -436(%rbp)	#, nonzero
	.loc 1 1626 0
	movq	-376(%rbp), %rax	# currMB, tmp1085
	movl	572(%rax), %eax	# currMB_58->luma_transform_size_8x8_flag, D.10441
	testl	%eax, %eax	# D.10441
	je	.L302	#,
	.loc 1 1626 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.606
	movl	2356(%rax), %eax	# input.606_366->symbol_mode, D.10441
	testl	%eax, %eax	# D.10441
	jne	.L302	#,
	.loc 1 1628 0 is_stmt 1
	cmpl	$1, -448(%rbp)	#, level
	jle	.L303	#,
	.loc 1 1629 0
	movq	-480(%rbp), %rax	# coeff_cost, tmp1086
	movl	(%rax), %eax	# *coeff_cost_368(D), D.10441
	leal	999999(%rax), %edx	#, D.10441
	movq	-480(%rbp), %rax	# coeff_cost, tmp1087
	movl	%edx, (%rax)	# D.10441, *coeff_cost_368(D)
	jmp	.L304	#
.L303:
	.loc 1 1631 0
	movq	-480(%rbp), %rax	# coeff_cost, tmp1088
	movl	(%rax), %edx	# *coeff_cost_368(D), D.10441
	movq	input(%rip), %rax	# input, input.607
	movl	2468(%rax), %ecx	# input.607_372->disthres, D.10441
	movl	-452(%rbp), %eax	# coeff_ctr, tmp1089
	andl	$3, %eax	#, D.10441
	cltq
	movl	-352(%rbp,%rax,4), %eax	# runs, D.10441
	cltq
	movslq	%ecx, %rcx	# D.10441, tmp1092
	salq	$6, %rcx	#, tmp1093
	addq	%rcx, %rax	# tmp1093, tmp1094
	addq	$COEFF_COST8x8, %rax	#, tmp1095
	movzbl	(%rax), %eax	# COEFF_COST8x8, D.10448
	movzbl	%al, %eax	# D.10448, D.10441
	addl	%eax, %edx	# D.10441, D.10441
	movq	-480(%rbp), %rax	# coeff_cost, tmp1096
	movl	%edx, (%rax)	# D.10441, *coeff_cost_368(D)
.L304:
	.loc 1 1633 0
	movq	img(%rip), %rax	# img, img.608
	movq	14136(%rax), %rax	# img.608_379->cofAC, D.10442
	movl	-468(%rbp), %edx	# b8, tmp1097
	movslq	%edx, %rdx	# tmp1097, D.10443
	salq	$3, %rdx	#, D.10443
	addq	%rdx, %rax	# D.10443, D.10442
	movq	(%rax), %rax	# *_383, D.10444
	movl	-452(%rbp), %edx	# coeff_ctr, tmp1098
	movslq	%edx, %rdx	# tmp1098, D.10443
	andl	$3, %edx	#, D.10443
	salq	$3, %rdx	#, D.10443
	addq	%rdx, %rax	# D.10443, D.10444
	movq	(%rax), %rax	# *_388, D.10445
	movq	(%rax), %rdx	# *_389, D.10449
	movl	-452(%rbp), %eax	# coeff_ctr, tmp1099
	andl	$3, %eax	#, D.10441
	cltq
	movl	-368(%rbp,%rax,4), %eax	# scan_poss, D.10441
	cltq
	salq	$2, %rax	#, D.10443
	leaq	(%rdx,%rax), %rbx	#, D.10449
	movq	img(%rip), %rax	# img, img.609
	movl	-460(%rbp), %edx	# j, tmp1102
	movslq	%edx, %rdx	# tmp1102, tmp1101
	movl	-464(%rbp), %ecx	# i, tmp1104
	movslq	%ecx, %rcx	# tmp1104, tmp1103
	salq	$4, %rcx	#, tmp1105
	addq	%rcx, %rdx	# tmp1105, tmp1106
	addq	$3276, %rdx	#, tmp1107
	movl	8(%rax,%rdx,4), %edx	# img.609_396->m7, D.10441
	movl	-448(%rbp), %eax	# level, tmp1108
	movl	%edx, %esi	# D.10441,
	movl	%eax, %edi	# tmp1108,
	call	sign	#
	movl	%eax, (%rbx)	# D.10441, *_395
	.loc 1 1634 0
	movq	img(%rip), %rax	# img, img.610
	movq	14136(%rax), %rax	# img.610_399->cofAC, D.10442
	movl	-468(%rbp), %edx	# b8, tmp1109
	movslq	%edx, %rdx	# tmp1109, D.10443
	salq	$3, %rdx	#, D.10443
	addq	%rdx, %rax	# D.10443, D.10442
	movq	(%rax), %rax	# *_403, D.10444
	movl	-452(%rbp), %edx	# coeff_ctr, tmp1110
	movslq	%edx, %rdx	# tmp1110, D.10443
	andl	$3, %edx	#, D.10443
	salq	$3, %rdx	#, D.10443
	addq	%rdx, %rax	# D.10443, D.10444
	movq	(%rax), %rax	# *_408, D.10445
	addq	$8, %rax	#, D.10445
	movq	(%rax), %rdx	# *_410, D.10449
	movl	-452(%rbp), %eax	# coeff_ctr, tmp1111
	andl	$3, %eax	#, D.10441
	cltq
	movl	-368(%rbp,%rax,4), %eax	# scan_poss, D.10441
	cltq
	salq	$2, %rax	#, D.10443
	addq	%rax, %rdx	# D.10443, D.10449
	movl	-452(%rbp), %eax	# coeff_ctr, tmp1113
	andl	$3, %eax	#, D.10441
	cltq
	movl	-352(%rbp,%rax,4), %eax	# runs, D.10441
	movl	%eax, (%rdx)	# D.10441, *_416
	.loc 1 1635 0
	movl	-452(%rbp), %eax	# coeff_ctr, tmp1115
	andl	$3, %eax	#, D.10441
	movslq	%eax, %rdx	# D.10441, tmp1116
	movl	-368(%rbp,%rdx,4), %edx	# scan_poss, D.10441
	addl	$1, %edx	#, D.10441
	cltq
	movl	%edx, -368(%rbp,%rax,4)	# D.10441, scan_poss
	.loc 1 1636 0
	movl	-452(%rbp), %eax	# coeff_ctr, tmp1118
	andl	$3, %eax	#, D.10441
	cltq
	movl	$-1, -352(%rbp,%rax,4)	#, runs
	jmp	.L305	#
.L302:
	.loc 1 1640 0
	cmpl	$1, -448(%rbp)	#, level
	jle	.L306	#,
	.loc 1 1641 0
	movq	-480(%rbp), %rax	# coeff_cost, tmp1120
	movl	(%rax), %eax	# *coeff_cost_368(D), D.10441
	leal	999999(%rax), %edx	#, D.10441
	movq	-480(%rbp), %rax	# coeff_cost, tmp1121
	movl	%edx, (%rax)	# D.10441, *coeff_cost_368(D)
	jmp	.L307	#
.L306:
	.loc 1 1643 0
	movq	-480(%rbp), %rax	# coeff_cost, tmp1122
	movl	(%rax), %edx	# *coeff_cost_368(D), D.10441
	movq	input(%rip), %rax	# input, input.611
	movl	2468(%rax), %ecx	# input.611_426->disthres, D.10441
	movl	-440(%rbp), %eax	# run, tmp1124
	cltq
	movslq	%ecx, %rcx	# D.10441, tmp1125
	salq	$6, %rcx	#, tmp1126
	addq	%rcx, %rax	# tmp1126, tmp1127
	addq	$COEFF_COST8x8, %rax	#, tmp1128
	movzbl	(%rax), %eax	# COEFF_COST8x8, D.10448
	movzbl	%al, %eax	# D.10448, D.10441
	addl	%eax, %edx	# D.10441, D.10441
	movq	-480(%rbp), %rax	# coeff_cost, tmp1129
	movl	%edx, (%rax)	# D.10441, *coeff_cost_368(D)
.L307:
	.loc 1 1644 0
	movl	-444(%rbp), %eax	# scan_pos, tmp1130
	cltq
	leaq	0(,%rax,4), %rdx	#, D.10443
	movq	-392(%rbp), %rax	# ACLevel, tmp1131
	leaq	(%rdx,%rax), %rbx	#, D.10449
	movq	img(%rip), %rax	# img, img.612
	movl	-460(%rbp), %edx	# j, tmp1133
	movslq	%edx, %rdx	# tmp1133, tmp1132
	movl	-464(%rbp), %ecx	# i, tmp1135
	movslq	%ecx, %rcx	# tmp1135, tmp1134
	salq	$4, %rcx	#, tmp1136
	addq	%rcx, %rdx	# tmp1136, tmp1137
	addq	$3276, %rdx	#, tmp1138
	movl	8(%rax,%rdx,4), %edx	# img.612_434->m7, D.10441
	movl	-448(%rbp), %eax	# level, tmp1139
	movl	%edx, %esi	# D.10441,
	movl	%eax, %edi	# tmp1139,
	call	sign	#
	movl	%eax, (%rbx)	# D.10441, *_433
	.loc 1 1645 0
	movl	-444(%rbp), %eax	# scan_pos, tmp1140
	cltq
	leaq	0(,%rax,4), %rdx	#, D.10443
	movq	-384(%rbp), %rax	# ACRun, tmp1141
	addq	%rax, %rdx	# tmp1141, D.10449
	movl	-440(%rbp), %eax	# run, tmp1142
	movl	%eax, (%rdx)	# tmp1142, *_439
	.loc 1 1646 0
	addl	$1, -444(%rbp)	#, scan_pos
	.loc 1 1647 0
	movl	$-1, -440(%rbp)	#, run
.L305:
	.loc 1 1649 0
	movq	img(%rip), %rax	# img, img.613
	movl	-460(%rbp), %edx	# j, tmp1144
	movslq	%edx, %rdx	# tmp1144, tmp1143
	movl	-464(%rbp), %ecx	# i, tmp1146
	movslq	%ecx, %rcx	# tmp1146, tmp1145
	salq	$4, %rcx	#, tmp1147
	addq	%rcx, %rdx	# tmp1147, tmp1148
	addq	$3276, %rdx	#, tmp1149
	movl	8(%rax,%rdx,4), %edx	# img.613_442->m7, D.10441
	movl	-448(%rbp), %eax	# level, tmp1150
	movl	%edx, %esi	# D.10441,
	movl	%eax, %edi	# tmp1150,
	call	sign	#
	movl	%eax, -448(%rbp)	# tmp1151, level
	.loc 1 1650 0
	cmpl	$0, -412(%rbp)	#, lossless_qpprime
	je	.L308	#,
	.loc 1 1652 0
	movl	-448(%rbp), %eax	# level, tmp1152
	movl	%eax, -456(%rbp)	# tmp1152, ilev
	jmp	.L301	#
.L308:
	.loc 1 1654 0
	cmpl	$1, -472(%rbp)	#, intra
	jne	.L309	#,
	.loc 1 1656 0
	cmpl	$5, -408(%rbp)	#, qp_per
	jle	.L310	#,
	.loc 1 1657 0
	movl	-460(%rbp), %eax	# j, tmp1154
	cltq
	movl	-404(%rbp), %edx	# qp_rem, tmp1156
	movslq	%edx, %rcx	# tmp1156, tmp1155
	movl	-464(%rbp), %edx	# i, tmp1158
	movslq	%edx, %rdx	# tmp1158, tmp1157
	salq	$3, %rcx	#, tmp1159
	addq	%rcx, %rdx	# tmp1159, tmp1160
	salq	$3, %rdx	#, tmp1161
	addq	%rdx, %rax	# tmp1161, tmp1162
	movl	InvLevelScale8x8Luma_Intra(,%rax,4), %eax	# InvLevelScale8x8Luma_Intra, D.10441
	imull	-448(%rbp), %eax	# level, D.10441
	movl	%eax, %edx	# D.10441, D.10441
	movl	-432(%rbp), %eax	# dq_lshift, tmp1163
	movl	%eax, %ecx	# tmp1163, tmp1625
	sall	%cl, %edx	# tmp1625, tmp1164
	movl	%edx, %eax	# tmp1164, tmp1164
	movl	%eax, -456(%rbp)	# tmp1164, ilev
	jmp	.L301	#
.L310:
	.loc 1 1659 0
	movl	-460(%rbp), %eax	# j, tmp1166
	cltq
	movl	-404(%rbp), %edx	# qp_rem, tmp1168
	movslq	%edx, %rcx	# tmp1168, tmp1167
	movl	-464(%rbp), %edx	# i, tmp1170
	movslq	%edx, %rdx	# tmp1170, tmp1169
	salq	$3, %rcx	#, tmp1171
	addq	%rcx, %rdx	# tmp1171, tmp1172
	salq	$3, %rdx	#, tmp1173
	addq	%rdx, %rax	# tmp1173, tmp1174
	movl	InvLevelScale8x8Luma_Intra(,%rax,4), %eax	# InvLevelScale8x8Luma_Intra, D.10441
	imull	-448(%rbp), %eax	# level, D.10441
	movl	%eax, %edx	# D.10441, D.10441
	movl	-424(%rbp), %eax	# dq_round, tmp1175
	addl	%eax, %edx	# tmp1175, D.10441
	movl	-428(%rbp), %eax	# dq_rshift, tmp1176
	movl	%eax, %ecx	# tmp1176, tmp1628
	sarl	%cl, %edx	# tmp1628, tmp1177
	movl	%edx, %eax	# tmp1177, tmp1177
	movl	%eax, -456(%rbp)	# tmp1177, ilev
	jmp	.L301	#
.L309:
	.loc 1 1663 0
	cmpl	$5, -408(%rbp)	#, qp_per
	jle	.L312	#,
	.loc 1 1664 0
	movl	-460(%rbp), %eax	# j, tmp1179
	cltq
	movl	-404(%rbp), %edx	# qp_rem, tmp1181
	movslq	%edx, %rcx	# tmp1181, tmp1180
	movl	-464(%rbp), %edx	# i, tmp1183
	movslq	%edx, %rdx	# tmp1183, tmp1182
	salq	$3, %rcx	#, tmp1184
	addq	%rcx, %rdx	# tmp1184, tmp1185
	salq	$3, %rdx	#, tmp1186
	addq	%rdx, %rax	# tmp1186, tmp1187
	movl	InvLevelScale8x8Luma_Inter(,%rax,4), %eax	# InvLevelScale8x8Luma_Inter, D.10441
	imull	-448(%rbp), %eax	# level, D.10441
	movl	%eax, %edx	# D.10441, D.10441
	movl	-432(%rbp), %eax	# dq_lshift, tmp1188
	movl	%eax, %ecx	# tmp1188, tmp1631
	sall	%cl, %edx	# tmp1631, tmp1189
	movl	%edx, %eax	# tmp1189, tmp1189
	movl	%eax, -456(%rbp)	# tmp1189, ilev
	jmp	.L301	#
.L312:
	.loc 1 1666 0
	movl	-460(%rbp), %eax	# j, tmp1191
	cltq
	movl	-404(%rbp), %edx	# qp_rem, tmp1193
	movslq	%edx, %rcx	# tmp1193, tmp1192
	movl	-464(%rbp), %edx	# i, tmp1195
	movslq	%edx, %rdx	# tmp1195, tmp1194
	salq	$3, %rcx	#, tmp1196
	addq	%rcx, %rdx	# tmp1196, tmp1197
	salq	$3, %rdx	#, tmp1198
	addq	%rdx, %rax	# tmp1198, tmp1199
	movl	InvLevelScale8x8Luma_Inter(,%rax,4), %eax	# InvLevelScale8x8Luma_Inter, D.10441
	imull	-448(%rbp), %eax	# level, D.10441
	movl	%eax, %edx	# D.10441, D.10441
	movl	-424(%rbp), %eax	# dq_round, tmp1200
	addl	%eax, %edx	# tmp1200, D.10441
	movl	-428(%rbp), %eax	# dq_rshift, tmp1201
	movl	%eax, %ecx	# tmp1201, tmp1634
	sarl	%cl, %edx	# tmp1634, tmp1202
	movl	%edx, %eax	# tmp1202, tmp1202
	movl	%eax, -456(%rbp)	# tmp1202, ilev
.L301:
	.loc 1 1669 0
	cmpl	$0, -412(%rbp)	#, lossless_qpprime
	jne	.L313	#,
	.loc 1 1670 0
	movq	img(%rip), %rax	# img, img.614
	movl	-460(%rbp), %edx	# j, tmp1204
	movslq	%edx, %rdx	# tmp1204, tmp1203
	movl	-464(%rbp), %ecx	# i, tmp1206
	movslq	%ecx, %rcx	# tmp1206, tmp1205
	salq	$4, %rcx	#, tmp1207
	addq	%rcx, %rdx	# tmp1207, tmp1208
	leaq	3276(%rdx), %rcx	#, tmp1209
	movl	-456(%rbp), %edx	# ilev, tmp1210
	movl	%edx, 8(%rax,%rcx,4)	# tmp1210, img.614_460->m7
.L313:
	.loc 1 1594 0
	addl	$1, -452(%rbp)	#, coeff_ctr
.L294:
	.loc 1 1594 0 is_stmt 0 discriminator 1
	cmpl	$63, -452(%rbp)	#, coeff_ctr
	jle	.L314	#,
	.loc 1 1672 0 is_stmt 1
	movq	-376(%rbp), %rax	# currMB, tmp1211
	movl	572(%rax), %eax	# currMB_58->luma_transform_size_8x8_flag, D.10441
	testl	%eax, %eax	# D.10441
	je	.L315	#,
	.loc 1 1672 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.615
	movl	2356(%rax), %eax	# input.615_463->symbol_mode, D.10441
	testl	%eax, %eax	# D.10441
	je	.L316	#,
.L315:
	.loc 1 1673 0 is_stmt 1
	movl	-444(%rbp), %eax	# scan_pos, tmp1212
	cltq
	leaq	0(,%rax,4), %rdx	#, D.10443
	movq	-392(%rbp), %rax	# ACLevel, tmp1213
	addq	%rdx, %rax	# D.10443, D.10449
	movl	$0, (%rax)	#, *_484
	jmp	.L317	#
.L316:
	.loc 1 1675 0
	movl	$0, -464(%rbp)	#, i
	jmp	.L318	#
.L319:
	.loc 1 1676 0 discriminator 2
	movq	img(%rip), %rax	# img, img.616
	movq	14136(%rax), %rax	# img.616_466->cofAC, D.10442
	movl	-468(%rbp), %edx	# b8, tmp1214
	movslq	%edx, %rdx	# tmp1214, D.10443
	salq	$3, %rdx	#, D.10443
	addq	%rdx, %rax	# D.10443, D.10442
	movq	(%rax), %rax	# *_470, D.10444
	movl	-464(%rbp), %edx	# i, tmp1215
	movslq	%edx, %rdx	# tmp1215, D.10443
	salq	$3, %rdx	#, D.10443
	addq	%rdx, %rax	# D.10443, D.10444
	movq	(%rax), %rax	# *_474, D.10445
	movq	(%rax), %rdx	# *_475, D.10449
	movl	-464(%rbp), %eax	# i, tmp1217
	cltq
	movl	-368(%rbp,%rax,4), %eax	# scan_poss, D.10441
	cltq
	salq	$2, %rax	#, D.10443
	addq	%rdx, %rax	# D.10449, D.10449
	movl	$0, (%rax)	#, *_480
	.loc 1 1675 0 discriminator 2
	addl	$1, -464(%rbp)	#, i
.L318:
	.loc 1 1675 0 is_stmt 0 discriminator 1
	cmpl	$3, -464(%rbp)	#, i
	jle	.L319	#,
.L317:
	.loc 1 1684 0 is_stmt 1
	movl	$0, -464(%rbp)	#, i
	jmp	.L320	#
.L322:
.LBB5:
	.loc 1 1687 0 discriminator 1
	movq	img(%rip), %rax	# img, img.617
	movl	-464(%rbp), %edx	# i, tmp1219
	movslq	%edx, %rdx	# tmp1219, tmp1218
	addq	$3276, %rdx	#, tmp1220
	movl	8(%rax,%rdx,4), %edx	# img.617_486->m7, D.10441
	movq	img(%rip), %rax	# img, img.618
	movl	-464(%rbp), %ecx	# i, tmp1222
	movslq	%ecx, %rcx	# tmp1222, tmp1221
	addq	$3340, %rcx	#, tmp1223
	movl	8(%rax,%rcx,4), %eax	# img.618_488->m7, D.10441
	addl	%edx, %eax	# D.10441, D.10441
	movl	%eax, -336(%rbp)	# D.10441, a
	.loc 1 1688 0 discriminator 1
	movq	img(%rip), %rax	# img, img.619
	movl	-464(%rbp), %edx	# i, tmp1225
	movslq	%edx, %rdx	# tmp1225, tmp1224
	addq	$3276, %rdx	#, tmp1226
	movl	8(%rax,%rdx,4), %edx	# img.619_491->m7, D.10441
	movq	img(%rip), %rax	# img, img.620
	movl	-464(%rbp), %ecx	# i, tmp1228
	movslq	%ecx, %rcx	# tmp1228, tmp1227
	addq	$3340, %rcx	#, tmp1229
	movl	8(%rax,%rcx,4), %eax	# img.620_493->m7, D.10441
	subl	%eax, %edx	# D.10441, D.10441
	movl	%edx, %eax	# D.10441, D.10441
	movl	%eax, -320(%rbp)	# D.10441, a
	.loc 1 1689 0 discriminator 1
	movq	img(%rip), %rax	# img, img.621
	movl	-464(%rbp), %edx	# i, tmp1231
	movslq	%edx, %rdx	# tmp1231, tmp1230
	addq	$3308, %rdx	#, tmp1232
	movl	8(%rax,%rdx,4), %eax	# img.621_496->m7, D.10441
	sarl	%eax	# D.10441
	movl	%eax, %ecx	# D.10441, D.10441
	movq	img(%rip), %rax	# img, img.622
	movl	-464(%rbp), %edx	# i, tmp1234
	movslq	%edx, %rdx	# tmp1234, tmp1233
	addq	$3372, %rdx	#, tmp1235
	movl	8(%rax,%rdx,4), %eax	# img.622_499->m7, D.10441
	subl	%eax, %ecx	# D.10441, D.10441
	movl	%ecx, %eax	# D.10441, D.10441
	movl	%eax, -328(%rbp)	# D.10441, a
	.loc 1 1690 0 discriminator 1
	movq	img(%rip), %rax	# img, img.623
	movl	-464(%rbp), %edx	# i, tmp1237
	movslq	%edx, %rdx	# tmp1237, tmp1236
	addq	$3308, %rdx	#, tmp1238
	movl	8(%rax,%rdx,4), %edx	# img.623_502->m7, D.10441
	movq	img(%rip), %rax	# img, img.624
	movl	-464(%rbp), %ecx	# i, tmp1240
	movslq	%ecx, %rcx	# tmp1240, tmp1239
	addq	$3372, %rcx	#, tmp1241
	movl	8(%rax,%rcx,4), %eax	# img.624_504->m7, D.10441
	sarl	%eax	# D.10441
	addl	%edx, %eax	# D.10441, D.10441
	movl	%eax, -312(%rbp)	# D.10441, a
	.loc 1 1692 0 discriminator 1
	movl	-336(%rbp), %edx	# a, D.10441
	movl	-312(%rbp), %eax	# a, D.10441
	addl	%edx, %eax	# D.10441, D.10441
	movl	%eax, -304(%rbp)	# D.10441, b
	.loc 1 1693 0 discriminator 1
	movl	-320(%rbp), %edx	# a, D.10441
	movl	-328(%rbp), %eax	# a, D.10441
	addl	%edx, %eax	# D.10441, D.10441
	movl	%eax, -296(%rbp)	# D.10441, b
	.loc 1 1694 0 discriminator 1
	movl	-320(%rbp), %edx	# a, D.10441
	movl	-328(%rbp), %eax	# a, D.10441
	subl	%eax, %edx	# D.10441, D.10441
	movl	%edx, %eax	# D.10441, D.10441
	movl	%eax, -288(%rbp)	# D.10441, b
	.loc 1 1695 0 discriminator 1
	movl	-336(%rbp), %edx	# a, D.10441
	movl	-312(%rbp), %eax	# a, D.10441
	subl	%eax, %edx	# D.10441, D.10441
	movl	%edx, %eax	# D.10441, D.10441
	movl	%eax, -280(%rbp)	# D.10441, b
	.loc 1 1697 0 discriminator 1
	movq	img(%rip), %rax	# img, img.625
	movl	-464(%rbp), %edx	# i, tmp1243
	movslq	%edx, %rdx	# tmp1243, tmp1242
	addq	$3356, %rdx	#, tmp1244
	movl	8(%rax,%rdx,4), %edx	# img.625_520->m7, D.10441
	movq	img(%rip), %rax	# img, img.626
	movl	-464(%rbp), %ecx	# i, tmp1246
	movslq	%ecx, %rcx	# tmp1246, tmp1245
	addq	$3324, %rcx	#, tmp1247
	movl	8(%rax,%rcx,4), %eax	# img.626_522->m7, D.10441
	movl	%edx, %ecx	# D.10441, D.10441
	subl	%eax, %ecx	# D.10441, D.10441
	movq	img(%rip), %rax	# img, img.627
	movl	-464(%rbp), %edx	# i, tmp1249
	movslq	%edx, %rdx	# tmp1249, tmp1248
	addq	$3388, %rdx	#, tmp1250
	movl	8(%rax,%rdx,4), %eax	# img.627_525->m7, D.10441
	subl	%eax, %ecx	# D.10441, D.10441
	movq	img(%rip), %rax	# img, img.628
	movl	-464(%rbp), %edx	# i, tmp1252
	movslq	%edx, %rdx	# tmp1252, tmp1251
	addq	$3388, %rdx	#, tmp1253
	movl	8(%rax,%rdx,4), %eax	# img.628_528->m7, D.10441
	sarl	%eax	# D.10441
	subl	%eax, %ecx	# D.10441, D.10441
	movl	%ecx, %eax	# D.10441, D.10441
	movl	%eax, -332(%rbp)	# D.10441, a
	.loc 1 1698 0 discriminator 1
	movq	img(%rip), %rax	# img, img.629
	movl	-464(%rbp), %edx	# i, tmp1255
	movslq	%edx, %rdx	# tmp1255, tmp1254
	addq	$3292, %rdx	#, tmp1256
	movl	8(%rax,%rdx,4), %edx	# img.629_532->m7, D.10441
	movq	img(%rip), %rax	# img, img.630
	movl	-464(%rbp), %ecx	# i, tmp1258
	movslq	%ecx, %rcx	# tmp1258, tmp1257
	addq	$3388, %rcx	#, tmp1259
	movl	8(%rax,%rcx,4), %eax	# img.630_534->m7, D.10441
	leal	(%rdx,%rax), %ecx	#, D.10441
	movq	img(%rip), %rax	# img, img.631
	movl	-464(%rbp), %edx	# i, tmp1261
	movslq	%edx, %rdx	# tmp1261, tmp1260
	addq	$3324, %rdx	#, tmp1262
	movl	8(%rax,%rdx,4), %eax	# img.631_537->m7, D.10441
	subl	%eax, %ecx	# D.10441, D.10441
	movq	img(%rip), %rax	# img, img.632
	movl	-464(%rbp), %edx	# i, tmp1264
	movslq	%edx, %rdx	# tmp1264, tmp1263
	addq	$3324, %rdx	#, tmp1265
	movl	8(%rax,%rdx,4), %eax	# img.632_540->m7, D.10441
	sarl	%eax	# D.10441
	subl	%eax, %ecx	# D.10441, D.10441
	movl	%ecx, %eax	# D.10441, D.10441
	movl	%eax, -324(%rbp)	# D.10441, a
	.loc 1 1699 0 discriminator 1
	movq	img(%rip), %rax	# img, img.633
	movl	-464(%rbp), %edx	# i, tmp1267
	movslq	%edx, %rdx	# tmp1267, tmp1266
	addq	$3388, %rdx	#, tmp1268
	movl	8(%rax,%rdx,4), %edx	# img.633_544->m7, D.10441
	movq	img(%rip), %rax	# img, img.634
	movl	-464(%rbp), %ecx	# i, tmp1270
	movslq	%ecx, %rcx	# tmp1270, tmp1269
	addq	$3292, %rcx	#, tmp1271
	movl	8(%rax,%rcx,4), %eax	# img.634_546->m7, D.10441
	movl	%edx, %ecx	# D.10441, D.10441
	subl	%eax, %ecx	# D.10441, D.10441
	movq	img(%rip), %rax	# img, img.635
	movl	-464(%rbp), %edx	# i, tmp1273
	movslq	%edx, %rdx	# tmp1273, tmp1272
	addq	$3356, %rdx	#, tmp1274
	movl	8(%rax,%rdx,4), %eax	# img.635_549->m7, D.10441
	addl	%eax, %ecx	# D.10441, D.10441
	movq	img(%rip), %rax	# img, img.636
	movl	-464(%rbp), %edx	# i, tmp1276
	movslq	%edx, %rdx	# tmp1276, tmp1275
	addq	$3356, %rdx	#, tmp1277
	movl	8(%rax,%rdx,4), %eax	# img.636_552->m7, D.10441
	sarl	%eax	# D.10441
	addl	%ecx, %eax	# D.10441, D.10441
	movl	%eax, -316(%rbp)	# D.10441, a
	.loc 1 1700 0 discriminator 1
	movq	img(%rip), %rax	# img, img.637
	movl	-464(%rbp), %edx	# i, tmp1279
	movslq	%edx, %rdx	# tmp1279, tmp1278
	addq	$3324, %rdx	#, tmp1280
	movl	8(%rax,%rdx,4), %edx	# img.637_556->m7, D.10441
	movq	img(%rip), %rax	# img, img.638
	movl	-464(%rbp), %ecx	# i, tmp1282
	movslq	%ecx, %rcx	# tmp1282, tmp1281
	addq	$3356, %rcx	#, tmp1283
	movl	8(%rax,%rcx,4), %eax	# img.638_558->m7, D.10441
	leal	(%rdx,%rax), %ecx	#, D.10441
	movq	img(%rip), %rax	# img, img.639
	movl	-464(%rbp), %edx	# i, tmp1285
	movslq	%edx, %rdx	# tmp1285, tmp1284
	addq	$3292, %rdx	#, tmp1286
	movl	8(%rax,%rdx,4), %eax	# img.639_561->m7, D.10441
	addl	%eax, %ecx	# D.10441, D.10441
	movq	img(%rip), %rax	# img, img.640
	movl	-464(%rbp), %edx	# i, tmp1288
	movslq	%edx, %rdx	# tmp1288, tmp1287
	addq	$3292, %rdx	#, tmp1289
	movl	8(%rax,%rdx,4), %eax	# img.640_564->m7, D.10441
	sarl	%eax	# D.10441
	addl	%ecx, %eax	# D.10441, D.10441
	movl	%eax, -308(%rbp)	# D.10441, a
	.loc 1 1702 0 discriminator 1
	movl	-332(%rbp), %eax	# a, D.10441
	movl	-308(%rbp), %edx	# a, D.10441
	sarl	$2, %edx	#, D.10441
	addl	%edx, %eax	# D.10441, D.10441
	movl	%eax, -300(%rbp)	# D.10441, b
	.loc 1 1703 0 discriminator 1
	movl	-308(%rbp), %eax	# a, D.10441
	movl	-332(%rbp), %edx	# a, D.10441
	sarl	$2, %edx	#, D.10441
	subl	%edx, %eax	# D.10441, D.10441
	movl	%eax, -276(%rbp)	# D.10441, b
	.loc 1 1704 0 discriminator 1
	movl	-324(%rbp), %eax	# a, D.10441
	movl	-316(%rbp), %edx	# a, D.10441
	sarl	$2, %edx	#, D.10441
	addl	%edx, %eax	# D.10441, D.10441
	movl	%eax, -292(%rbp)	# D.10441, b
	.loc 1 1705 0 discriminator 1
	movl	-324(%rbp), %eax	# a, D.10441
	sarl	$2, %eax	#, D.10441
	movl	%eax, %edx	# D.10441, D.10441
	movl	-316(%rbp), %eax	# a, D.10441
	subl	%eax, %edx	# D.10441, D.10441
	movl	%edx, %eax	# D.10441, D.10441
	movl	%eax, -284(%rbp)	# D.10441, b
	.loc 1 1707 0 discriminator 1
	movl	-304(%rbp), %edx	# b, D.10441
	movl	-276(%rbp), %eax	# b, D.10441
	addl	%eax, %edx	# D.10441, D.10441
	movl	-464(%rbp), %eax	# i, tmp1291
	cltq
	movl	%edx, -272(%rbp,%rax,4)	# D.10441, m6
	.loc 1 1708 0 discriminator 1
	movl	-296(%rbp), %edx	# b, D.10441
	movl	-284(%rbp), %eax	# b, D.10441
	addl	%eax, %edx	# D.10441, D.10441
	movl	-464(%rbp), %eax	# i, tmp1293
	cltq
	addq	$8, %rax	#, tmp1294
	movl	%edx, -272(%rbp,%rax,4)	# D.10441, m6
	.loc 1 1709 0 discriminator 1
	movl	-288(%rbp), %edx	# b, D.10441
	movl	-292(%rbp), %eax	# b, D.10441
	addl	%eax, %edx	# D.10441, D.10441
	movl	-464(%rbp), %eax	# i, tmp1296
	cltq
	addq	$16, %rax	#, tmp1297
	movl	%edx, -272(%rbp,%rax,4)	# D.10441, m6
	.loc 1 1710 0 discriminator 1
	movl	-280(%rbp), %edx	# b, D.10441
	movl	-300(%rbp), %eax	# b, D.10441
	addl	%eax, %edx	# D.10441, D.10441
	movl	-464(%rbp), %eax	# i, tmp1299
	cltq
	addq	$24, %rax	#, tmp1300
	movl	%edx, -272(%rbp,%rax,4)	# D.10441, m6
	.loc 1 1711 0 discriminator 1
	movl	-280(%rbp), %edx	# b, D.10441
	movl	-300(%rbp), %eax	# b, D.10441
	subl	%eax, %edx	# D.10441, D.10441
	movl	-464(%rbp), %eax	# i, tmp1302
	cltq
	addq	$32, %rax	#, tmp1303
	movl	%edx, -272(%rbp,%rax,4)	# D.10441, m6
	.loc 1 1712 0 discriminator 1
	movl	-288(%rbp), %edx	# b, D.10441
	movl	-292(%rbp), %eax	# b, D.10441
	subl	%eax, %edx	# D.10441, D.10441
	movl	-464(%rbp), %eax	# i, tmp1305
	cltq
	addq	$40, %rax	#, tmp1306
	movl	%edx, -272(%rbp,%rax,4)	# D.10441, m6
	.loc 1 1713 0 discriminator 1
	movl	-296(%rbp), %edx	# b, D.10441
	movl	-284(%rbp), %eax	# b, D.10441
	subl	%eax, %edx	# D.10441, D.10441
	movl	-464(%rbp), %eax	# i, tmp1308
	cltq
	addq	$48, %rax	#, tmp1309
	movl	%edx, -272(%rbp,%rax,4)	# D.10441, m6
	.loc 1 1714 0 discriminator 1
	movl	-304(%rbp), %edx	# b, D.10441
	movl	-276(%rbp), %eax	# b, D.10441
	subl	%eax, %edx	# D.10441, D.10441
	movl	-464(%rbp), %eax	# i, tmp1311
	cltq
	addq	$56, %rax	#, tmp1312
	movl	%edx, -272(%rbp,%rax,4)	# D.10441, m6
.LBE5:
	.loc 1 1684 0 discriminator 1
	addl	$1, -464(%rbp)	#, i
.L320:
	cmpl	$7, -464(%rbp)	#, i
	jg	.L321	#,
	.loc 1 1684 0 is_stmt 0 discriminator 2
	cmpl	$0, -412(%rbp)	#, lossless_qpprime
	je	.L322	#,
.L321:
	.loc 1 1718 0 is_stmt 1
	movl	$0, -464(%rbp)	#, i
	jmp	.L323	#
.L325:
.LBB6:
	.loc 1 1721 0 discriminator 1
	movl	-464(%rbp), %eax	# i, tmp1314
	cltq
	salq	$5, %rax	#, tmp1315
	leaq	-16(%rbp), %rdi	#, tmp1646
	addq	%rdi, %rax	# tmp1646, tmp1316
	subq	$256, %rax	#, tmp1317
	movl	(%rax), %edx	# m6, D.10441
	movl	-464(%rbp), %eax	# i, tmp1319
	cltq
	salq	$5, %rax	#, tmp1320
	leaq	-16(%rbp), %rbx	#, tmp1647
	addq	%rbx, %rax	# tmp1647, tmp1321
	subq	$240, %rax	#, tmp1322
	movl	(%rax), %eax	# m6, D.10441
	addl	%edx, %eax	# D.10441, D.10441
	movl	%eax, -336(%rbp)	# D.10441, a
	.loc 1 1722 0 discriminator 1
	movl	-464(%rbp), %eax	# i, tmp1324
	cltq
	salq	$5, %rax	#, tmp1325
	leaq	-16(%rbp), %rdi	#, tmp1648
	addq	%rdi, %rax	# tmp1648, tmp1326
	subq	$256, %rax	#, tmp1327
	movl	(%rax), %edx	# m6, D.10441
	movl	-464(%rbp), %eax	# i, tmp1329
	cltq
	salq	$5, %rax	#, tmp1330
	leaq	-16(%rbp), %rbx	#, tmp1649
	addq	%rbx, %rax	# tmp1649, tmp1331
	subq	$240, %rax	#, tmp1332
	movl	(%rax), %eax	# m6, D.10441
	subl	%eax, %edx	# D.10441, D.10441
	movl	%edx, %eax	# D.10441, D.10441
	movl	%eax, -320(%rbp)	# D.10441, a
	.loc 1 1723 0 discriminator 1
	movl	-464(%rbp), %eax	# i, tmp1334
	cltq
	salq	$5, %rax	#, tmp1335
	leaq	-16(%rbp), %rdi	#, tmp1651
	addq	%rdi, %rax	# tmp1651, tmp1336
	subq	$248, %rax	#, tmp1337
	movl	(%rax), %eax	# m6, D.10441
	sarl	%eax	# D.10441
	movl	%eax, %edx	# D.10441, D.10441
	movl	-464(%rbp), %eax	# i, tmp1339
	cltq
	salq	$5, %rax	#, tmp1340
	leaq	-16(%rbp), %rbx	#, tmp1653
	addq	%rbx, %rax	# tmp1653, tmp1341
	subq	$232, %rax	#, tmp1342
	movl	(%rax), %eax	# m6, D.10441
	subl	%eax, %edx	# D.10441, D.10441
	movl	%edx, %eax	# D.10441, D.10441
	movl	%eax, -328(%rbp)	# D.10441, a
	.loc 1 1724 0 discriminator 1
	movl	-464(%rbp), %eax	# i, tmp1344
	cltq
	salq	$5, %rax	#, tmp1345
	leaq	-16(%rbp), %rdi	#, tmp1655
	addq	%rdi, %rax	# tmp1655, tmp1346
	subq	$248, %rax	#, tmp1347
	movl	(%rax), %eax	# m6, D.10441
	movl	-464(%rbp), %edx	# i, tmp1349
	movslq	%edx, %rdx	# tmp1349, tmp1348
	salq	$5, %rdx	#, tmp1350
	leaq	-16(%rbp), %rbx	#, tmp1656
	addq	%rbx, %rdx	# tmp1656, tmp1351
	subq	$232, %rdx	#, tmp1352
	movl	(%rdx), %edx	# m6, D.10441
	sarl	%edx	# D.10441
	addl	%edx, %eax	# D.10441, D.10441
	movl	%eax, -312(%rbp)	# D.10441, a
	.loc 1 1726 0 discriminator 1
	movl	-336(%rbp), %edx	# a, D.10441
	movl	-312(%rbp), %eax	# a, D.10441
	addl	%edx, %eax	# D.10441, D.10441
	movl	%eax, -304(%rbp)	# D.10441, b
	.loc 1 1727 0 discriminator 1
	movl	-320(%rbp), %edx	# a, D.10441
	movl	-328(%rbp), %eax	# a, D.10441
	addl	%edx, %eax	# D.10441, D.10441
	movl	%eax, -296(%rbp)	# D.10441, b
	.loc 1 1728 0 discriminator 1
	movl	-320(%rbp), %edx	# a, D.10441
	movl	-328(%rbp), %eax	# a, D.10441
	subl	%eax, %edx	# D.10441, D.10441
	movl	%edx, %eax	# D.10441, D.10441
	movl	%eax, -288(%rbp)	# D.10441, b
	.loc 1 1729 0 discriminator 1
	movl	-336(%rbp), %edx	# a, D.10441
	movl	-312(%rbp), %eax	# a, D.10441
	subl	%eax, %edx	# D.10441, D.10441
	movl	%edx, %eax	# D.10441, D.10441
	movl	%eax, -280(%rbp)	# D.10441, b
	.loc 1 1731 0 discriminator 1
	movl	-464(%rbp), %eax	# i, tmp1354
	cltq
	salq	$5, %rax	#, tmp1355
	leaq	-16(%rbp), %rdi	#, tmp1659
	addq	%rdi, %rax	# tmp1659, tmp1356
	subq	$236, %rax	#, tmp1357
	movl	(%rax), %edx	# m6, D.10441
	movl	-464(%rbp), %eax	# i, tmp1359
	cltq
	salq	$5, %rax	#, tmp1360
	leaq	-16(%rbp), %rbx	#, tmp1660
	addq	%rbx, %rax	# tmp1660, tmp1361
	subq	$244, %rax	#, tmp1362
	movl	(%rax), %eax	# m6, D.10441
	subl	%eax, %edx	# D.10441, D.10441
	movl	-464(%rbp), %eax	# i, tmp1364
	cltq
	salq	$5, %rax	#, tmp1365
	leaq	-16(%rbp), %rdi	#, tmp1661
	addq	%rdi, %rax	# tmp1661, tmp1366
	subq	$228, %rax	#, tmp1367
	movl	(%rax), %eax	# m6, D.10441
	subl	%eax, %edx	# D.10441, D.10441
	movl	-464(%rbp), %eax	# i, tmp1369
	cltq
	salq	$5, %rax	#, tmp1370
	leaq	-16(%rbp), %rbx	#, tmp1662
	addq	%rbx, %rax	# tmp1662, tmp1371
	subq	$228, %rax	#, tmp1372
	movl	(%rax), %eax	# m6, D.10441
	sarl	%eax	# D.10441
	subl	%eax, %edx	# D.10441, D.10441
	movl	%edx, %eax	# D.10441, D.10441
	movl	%eax, -332(%rbp)	# D.10441, a
	.loc 1 1732 0 discriminator 1
	movl	-464(%rbp), %eax	# i, tmp1374
	cltq
	salq	$5, %rax	#, tmp1375
	leaq	-16(%rbp), %rdi	#, tmp1664
	addq	%rdi, %rax	# tmp1664, tmp1376
	subq	$252, %rax	#, tmp1377
	movl	(%rax), %edx	# m6, D.10441
	movl	-464(%rbp), %eax	# i, tmp1379
	cltq
	salq	$5, %rax	#, tmp1380
	leaq	-16(%rbp), %rbx	#, tmp1665
	addq	%rbx, %rax	# tmp1665, tmp1381
	subq	$228, %rax	#, tmp1382
	movl	(%rax), %eax	# m6, D.10441
	addl	%eax, %edx	# D.10441, D.10441
	movl	-464(%rbp), %eax	# i, tmp1384
	cltq
	salq	$5, %rax	#, tmp1385
	leaq	-16(%rbp), %rdi	#, tmp1666
	addq	%rdi, %rax	# tmp1666, tmp1386
	subq	$244, %rax	#, tmp1387
	movl	(%rax), %eax	# m6, D.10441
	subl	%eax, %edx	# D.10441, D.10441
	movl	-464(%rbp), %eax	# i, tmp1389
	cltq
	salq	$5, %rax	#, tmp1390
	leaq	-16(%rbp), %rbx	#, tmp1667
	addq	%rbx, %rax	# tmp1667, tmp1391
	subq	$244, %rax	#, tmp1392
	movl	(%rax), %eax	# m6, D.10441
	sarl	%eax	# D.10441
	subl	%eax, %edx	# D.10441, D.10441
	movl	%edx, %eax	# D.10441, D.10441
	movl	%eax, -324(%rbp)	# D.10441, a
	.loc 1 1733 0 discriminator 1
	movl	-464(%rbp), %eax	# i, tmp1394
	cltq
	salq	$5, %rax	#, tmp1395
	leaq	-16(%rbp), %rdi	#, tmp1669
	addq	%rdi, %rax	# tmp1669, tmp1396
	subq	$228, %rax	#, tmp1397
	movl	(%rax), %edx	# m6, D.10441
	movl	-464(%rbp), %eax	# i, tmp1399
	cltq
	salq	$5, %rax	#, tmp1400
	leaq	-16(%rbp), %rbx	#, tmp1670
	addq	%rbx, %rax	# tmp1670, tmp1401
	subq	$252, %rax	#, tmp1402
	movl	(%rax), %eax	# m6, D.10441
	subl	%eax, %edx	# D.10441, D.10441
	movl	-464(%rbp), %eax	# i, tmp1404
	cltq
	salq	$5, %rax	#, tmp1405
	leaq	-16(%rbp), %rdi	#, tmp1671
	addq	%rdi, %rax	# tmp1671, tmp1406
	subq	$236, %rax	#, tmp1407
	movl	(%rax), %eax	# m6, D.10441
	addl	%eax, %edx	# D.10441, D.10441
	movl	-464(%rbp), %eax	# i, tmp1409
	cltq
	salq	$5, %rax	#, tmp1410
	leaq	-16(%rbp), %rbx	#, tmp1672
	addq	%rbx, %rax	# tmp1672, tmp1411
	subq	$236, %rax	#, tmp1412
	movl	(%rax), %eax	# m6, D.10441
	sarl	%eax	# D.10441
	addl	%edx, %eax	# D.10441, D.10441
	movl	%eax, -316(%rbp)	# D.10441, a
	.loc 1 1734 0 discriminator 1
	movl	-464(%rbp), %eax	# i, tmp1414
	cltq
	salq	$5, %rax	#, tmp1415
	leaq	-16(%rbp), %rdi	#, tmp1673
	addq	%rdi, %rax	# tmp1673, tmp1416
	subq	$244, %rax	#, tmp1417
	movl	(%rax), %edx	# m6, D.10441
	movl	-464(%rbp), %eax	# i, tmp1419
	cltq
	salq	$5, %rax	#, tmp1420
	leaq	-16(%rbp), %rbx	#, tmp1674
	addq	%rbx, %rax	# tmp1674, tmp1421
	subq	$236, %rax	#, tmp1422
	movl	(%rax), %eax	# m6, D.10441
	addl	%eax, %edx	# D.10441, D.10441
	movl	-464(%rbp), %eax	# i, tmp1424
	cltq
	salq	$5, %rax	#, tmp1425
	leaq	-16(%rbp), %rdi	#, tmp1675
	addq	%rdi, %rax	# tmp1675, tmp1426
	subq	$252, %rax	#, tmp1427
	movl	(%rax), %eax	# m6, D.10441
	addl	%eax, %edx	# D.10441, D.10441
	movl	-464(%rbp), %eax	# i, tmp1429
	cltq
	salq	$5, %rax	#, tmp1430
	leaq	-16(%rbp), %rbx	#, tmp1676
	addq	%rbx, %rax	# tmp1676, tmp1431
	subq	$252, %rax	#, tmp1432
	movl	(%rax), %eax	# m6, D.10441
	sarl	%eax	# D.10441
	addl	%edx, %eax	# D.10441, D.10441
	movl	%eax, -308(%rbp)	# D.10441, a
	.loc 1 1736 0 discriminator 1
	movl	-332(%rbp), %eax	# a, D.10441
	movl	-308(%rbp), %edx	# a, D.10441
	sarl	$2, %edx	#, D.10441
	addl	%edx, %eax	# D.10441, D.10441
	movl	%eax, -300(%rbp)	# D.10441, b
	.loc 1 1737 0 discriminator 1
	movl	-308(%rbp), %eax	# a, D.10441
	movl	-332(%rbp), %edx	# a, D.10441
	sarl	$2, %edx	#, D.10441
	subl	%edx, %eax	# D.10441, D.10441
	movl	%eax, -276(%rbp)	# D.10441, b
	.loc 1 1738 0 discriminator 1
	movl	-324(%rbp), %eax	# a, D.10441
	movl	-316(%rbp), %edx	# a, D.10441
	sarl	$2, %edx	#, D.10441
	addl	%edx, %eax	# D.10441, D.10441
	movl	%eax, -292(%rbp)	# D.10441, b
	.loc 1 1739 0 discriminator 1
	movl	-324(%rbp), %eax	# a, D.10441
	sarl	$2, %eax	#, D.10441
	movl	%eax, %edx	# D.10441, D.10441
	movl	-316(%rbp), %eax	# a, D.10441
	subl	%eax, %edx	# D.10441, D.10441
	movl	%edx, %eax	# D.10441, D.10441
	movl	%eax, -284(%rbp)	# D.10441, b
	.loc 1 1741 0 discriminator 1
	movq	img(%rip), %rax	# img, img.641
	movl	-304(%rbp), %ecx	# b, D.10441
	movl	-276(%rbp), %edx	# b, D.10441
	addl	%ecx, %edx	# D.10441, D.10441
	movl	-464(%rbp), %ecx	# i, tmp1434
	movslq	%ecx, %rcx	# tmp1434, tmp1433
	salq	$6, %rcx	#, tmp1435
	addq	%rcx, %rax	# tmp1435, tmp1436
	addq	$13104, %rax	#, tmp1437
	movl	%edx, 8(%rax)	# D.10441, img.641_684->m7
	.loc 1 1742 0 discriminator 1
	movq	img(%rip), %rax	# img, img.642
	movl	-296(%rbp), %ecx	# b, D.10441
	movl	-284(%rbp), %edx	# b, D.10441
	addl	%ecx, %edx	# D.10441, D.10441
	movl	-464(%rbp), %ecx	# i, tmp1439
	movslq	%ecx, %rcx	# tmp1439, tmp1438
	salq	$6, %rcx	#, tmp1440
	addq	%rcx, %rax	# tmp1440, tmp1441
	addq	$13108, %rax	#, tmp1442
	movl	%edx, 8(%rax)	# D.10441, img.642_688->m7
	.loc 1 1743 0 discriminator 1
	movq	img(%rip), %rax	# img, img.643
	movl	-288(%rbp), %ecx	# b, D.10441
	movl	-292(%rbp), %edx	# b, D.10441
	addl	%ecx, %edx	# D.10441, D.10441
	movl	-464(%rbp), %ecx	# i, tmp1444
	movslq	%ecx, %rcx	# tmp1444, tmp1443
	salq	$6, %rcx	#, tmp1445
	addq	%rcx, %rax	# tmp1445, tmp1446
	addq	$13112, %rax	#, tmp1447
	movl	%edx, 8(%rax)	# D.10441, img.643_692->m7
	.loc 1 1744 0 discriminator 1
	movq	img(%rip), %rax	# img, img.644
	movl	-280(%rbp), %ecx	# b, D.10441
	movl	-300(%rbp), %edx	# b, D.10441
	addl	%ecx, %edx	# D.10441, D.10441
	movl	-464(%rbp), %ecx	# i, tmp1449
	movslq	%ecx, %rcx	# tmp1449, tmp1448
	salq	$6, %rcx	#, tmp1450
	addq	%rcx, %rax	# tmp1450, tmp1451
	addq	$13116, %rax	#, tmp1452
	movl	%edx, 8(%rax)	# D.10441, img.644_696->m7
	.loc 1 1745 0 discriminator 1
	movq	img(%rip), %rax	# img, img.645
	movl	-280(%rbp), %ecx	# b, D.10441
	movl	-300(%rbp), %edx	# b, D.10441
	subl	%edx, %ecx	# D.10441, D.10441
	movl	%ecx, %edx	# D.10441, D.10441
	movl	-464(%rbp), %ecx	# i, tmp1454
	movslq	%ecx, %rcx	# tmp1454, tmp1453
	addq	$205, %rcx	#, tmp1455
	salq	$6, %rcx	#, tmp1456
	addq	%rcx, %rax	# tmp1456, tmp1457
	movl	%edx, 8(%rax)	# D.10441, img.645_700->m7
	.loc 1 1746 0 discriminator 1
	movq	img(%rip), %rax	# img, img.646
	movl	-288(%rbp), %ecx	# b, D.10441
	movl	-292(%rbp), %edx	# b, D.10441
	subl	%edx, %ecx	# D.10441, D.10441
	movl	%ecx, %edx	# D.10441, D.10441
	movl	-464(%rbp), %ecx	# i, tmp1459
	movslq	%ecx, %rcx	# tmp1459, tmp1458
	salq	$6, %rcx	#, tmp1460
	addq	%rcx, %rax	# tmp1460, tmp1461
	addq	$13124, %rax	#, tmp1462
	movl	%edx, 8(%rax)	# D.10441, img.646_704->m7
	.loc 1 1747 0 discriminator 1
	movq	img(%rip), %rax	# img, img.647
	movl	-296(%rbp), %ecx	# b, D.10441
	movl	-284(%rbp), %edx	# b, D.10441
	subl	%edx, %ecx	# D.10441, D.10441
	movl	%ecx, %edx	# D.10441, D.10441
	movl	-464(%rbp), %ecx	# i, tmp1464
	movslq	%ecx, %rcx	# tmp1464, tmp1463
	salq	$6, %rcx	#, tmp1465
	addq	%rcx, %rax	# tmp1465, tmp1466
	addq	$13128, %rax	#, tmp1467
	movl	%edx, 8(%rax)	# D.10441, img.647_708->m7
	.loc 1 1748 0 discriminator 1
	movq	img(%rip), %rax	# img, img.648
	movl	-304(%rbp), %ecx	# b, D.10441
	movl	-276(%rbp), %edx	# b, D.10441
	subl	%edx, %ecx	# D.10441, D.10441
	movl	%ecx, %edx	# D.10441, D.10441
	movl	-464(%rbp), %ecx	# i, tmp1469
	movslq	%ecx, %rcx	# tmp1469, tmp1468
	salq	$6, %rcx	#, tmp1470
	addq	%rcx, %rax	# tmp1470, tmp1471
	addq	$13132, %rax	#, tmp1472
	movl	%edx, 8(%rax)	# D.10441, img.648_712->m7
.LBE6:
	.loc 1 1718 0 discriminator 1
	addl	$1, -464(%rbp)	#, i
.L323:
	cmpl	$7, -464(%rbp)	#, i
	jg	.L324	#,
	.loc 1 1718 0 is_stmt 0 discriminator 2
	cmpl	$0, -412(%rbp)	#, lossless_qpprime
	je	.L325	#,
.L324:
	.loc 1 1751 0 is_stmt 1
	movl	$0, -464(%rbp)	#, i
	jmp	.L326	#
.L332:
	.loc 1 1752 0
	movl	$0, -460(%rbp)	#, j
	jmp	.L327	#
.L331:
	.loc 1 1754 0
	cmpl	$0, -412(%rbp)	#, lossless_qpprime
	je	.L328	#,
	.loc 1 1755 0
	movq	img(%rip), %rax	# img, img.649
	movq	img(%rip), %rdx	# img, img.650
	movl	-460(%rbp), %ecx	# j, tmp1474
	movslq	%ecx, %rcx	# tmp1474, tmp1473
	movl	-464(%rbp), %esi	# i, tmp1476
	movslq	%esi, %rsi	# tmp1476, tmp1475
	salq	$4, %rsi	#, tmp1477
	addq	%rsi, %rcx	# tmp1477, tmp1478
	addq	$3276, %rcx	#, tmp1479
	movl	8(%rdx,%rcx,4), %ecx	# img.650_720->m7, D.10441
	movq	img(%rip), %rdx	# img, img.651
	movl	-420(%rbp), %esi	# block_x, tmp1480
	movl	-464(%rbp), %edi	# i, tmp1481
	leal	(%rdi,%rsi), %r8d	#, D.10441
	movl	-416(%rbp), %esi	# block_y, tmp1482
	movl	-460(%rbp), %edi	# j, tmp1483
	addl	%edi, %esi	# tmp1483, D.10441
	movslq	%esi, %rsi	# D.10441, tmp1484
	movslq	%r8d, %rdi	# D.10441, tmp1485
	salq	$4, %rdi	#, tmp1486
	addq	%rdi, %rsi	# tmp1486, tmp1487
	addq	$6296, %rsi	#, tmp1488
	movzwl	8(%rdx,%rsi,2), %edx	# img.651_722->mpr, D.10450
	movzwl	%dx, %edx	# D.10450, D.10441
	addl	%edx, %ecx	# D.10441, D.10441
	movl	-460(%rbp), %edx	# j, tmp1490
	movslq	%edx, %rdx	# tmp1490, tmp1489
	movl	-464(%rbp), %esi	# i, tmp1492
	movslq	%esi, %rsi	# tmp1492, tmp1491
	salq	$4, %rsi	#, tmp1493
	addq	%rsi, %rdx	# tmp1493, tmp1494
	addq	$3276, %rdx	#, tmp1495
	movl	%ecx, 8(%rax,%rdx,4)	# D.10441, img.649_719->m7
	jmp	.L329	#
.L328:
	.loc 1 1758 0
	movq	img(%rip), %rax	# img, img.652
	movl	72724(%rax), %eax	# img.652_728->residue_transform_flag, D.10441
	testl	%eax, %eax	# D.10441
	jne	.L330	#,
	.loc 1 1759 0
	movq	img(%rip), %rcx	# img, img.653
	movq	img(%rip), %rax	# img, img.654
	movl	-460(%rbp), %edx	# j, tmp1497
	movslq	%edx, %rdx	# tmp1497, tmp1496
	movl	-464(%rbp), %esi	# i, tmp1499
	movslq	%esi, %rsi	# tmp1499, tmp1498
	salq	$4, %rsi	#, tmp1500
	addq	%rsi, %rdx	# tmp1500, tmp1501
	addq	$3276, %rdx	#, tmp1502
	movl	8(%rax,%rdx,4), %eax	# img.654_731->m7, D.10441
	movslq	%eax, %rdx	# D.10441, D.10451
	movq	img(%rip), %rax	# img, img.655
	movl	-420(%rbp), %esi	# block_x, tmp1503
	movl	-464(%rbp), %edi	# i, tmp1504
	leal	(%rdi,%rsi), %r8d	#, D.10441
	movl	-416(%rbp), %esi	# block_y, tmp1505
	movl	-460(%rbp), %edi	# j, tmp1506
	addl	%edi, %esi	# tmp1506, D.10441
	movslq	%esi, %rsi	# D.10441, tmp1507
	movslq	%r8d, %rdi	# D.10441, tmp1508
	salq	$4, %rdi	#, tmp1509
	addq	%rdi, %rsi	# tmp1509, tmp1510
	addq	$6296, %rsi	#, tmp1511
	movzwl	8(%rax,%rsi,2), %eax	# img.655_734->mpr, D.10450
	movzwl	%ax, %eax	# D.10450, D.10451
	salq	$6, %rax	#, D.10451
	addq	%rdx, %rax	# D.10451, D.10451
	addq	$32, %rax	#, D.10451
	sarq	$6, %rax	#, D.10451
	movl	$0, %edx	#, tmp1512
	testq	%rax, %rax	# D.10451
	cmovns	%rax, %rdx	# D.10451,, D.10451
	movq	img(%rip), %rax	# img, img.656
	movl	72684(%rax), %eax	# img.656_744->max_imgpel_value, D.10441
	cltq
	cmpq	%rax, %rdx	# D.10451, D.10451
	cmovle	%rdx, %rax	# D.10451,, D.10451
	movl	-460(%rbp), %edx	# j, tmp1514
	movslq	%edx, %rdx	# tmp1514, tmp1513
	movl	-464(%rbp), %esi	# i, tmp1516
	movslq	%esi, %rsi	# tmp1516, tmp1515
	salq	$4, %rsi	#, tmp1517
	addq	%rsi, %rdx	# tmp1517, tmp1518
	addq	$3276, %rdx	#, tmp1519
	movl	%eax, 8(%rcx,%rdx,4)	# D.10441, img.653_730->m7
	jmp	.L329	#
.L330:
	.loc 1 1761 0
	movq	img(%rip), %rax	# img, img.657
	movq	img(%rip), %rdx	# img, img.658
	movl	-460(%rbp), %ecx	# j, tmp1521
	movslq	%ecx, %rcx	# tmp1521, tmp1520
	movl	-464(%rbp), %esi	# i, tmp1523
	movslq	%esi, %rsi	# tmp1523, tmp1522
	salq	$4, %rsi	#, tmp1524
	addq	%rsi, %rcx	# tmp1524, tmp1525
	addq	$3276, %rcx	#, tmp1526
	movl	8(%rdx,%rcx,4), %edx	# img.658_750->m7, D.10441
	addl	$32, %edx	#, D.10441
	movl	%edx, %ecx	# D.10441, D.10441
	sarl	$6, %ecx	#, D.10441
	movl	-460(%rbp), %edx	# j, tmp1528
	movslq	%edx, %rdx	# tmp1528, tmp1527
	movl	-464(%rbp), %esi	# i, tmp1530
	movslq	%esi, %rsi	# tmp1530, tmp1529
	salq	$4, %rsi	#, tmp1531
	addq	%rsi, %rdx	# tmp1531, tmp1532
	addq	$3276, %rdx	#, tmp1533
	movl	%ecx, 8(%rax,%rdx,4)	# D.10441, img.657_749->m7
.L329:
	.loc 1 1752 0
	addl	$1, -460(%rbp)	#, j
.L327:
	.loc 1 1752 0 is_stmt 0 discriminator 1
	cmpl	$7, -460(%rbp)	#, j
	jle	.L331	#,
	.loc 1 1751 0 is_stmt 1
	addl	$1, -464(%rbp)	#, i
.L326:
	.loc 1 1751 0 is_stmt 0 discriminator 1
	cmpl	$7, -464(%rbp)	#, i
	jle	.L332	#,
	.loc 1 1767 0 is_stmt 1
	movq	img(%rip), %rax	# img, img.659
	movl	72724(%rax), %eax	# img.659_756->residue_transform_flag, D.10441
	testl	%eax, %eax	# D.10441
	jne	.L333	#,
	.loc 1 1768 0
	movl	$0, -460(%rbp)	#, j
	jmp	.L334	#
.L337:
	.loc 1 1769 0
	movl	$0, -464(%rbp)	#, i
	jmp	.L335	#
.L336:
	.loc 1 1770 0 discriminator 2
	movq	enc_picture(%rip), %rax	# enc_picture, enc_picture.660
	movq	6424(%rax), %rdx	# enc_picture.660_760->imgY, D.10452
	movq	img(%rip), %rax	# img, img.661
	movl	156(%rax), %ecx	# img.661_762->pix_y, D.10441
	movl	-416(%rbp), %eax	# block_y, tmp1534
	addl	%eax, %ecx	# tmp1534, D.10441
	movl	-460(%rbp), %eax	# j, tmp1535
	addl	%ecx, %eax	# D.10441, D.10441
	cltq
	salq	$3, %rax	#, D.10443
	addq	%rdx, %rax	# D.10452, D.10452
	movq	(%rax), %rdx	# *_768, D.10453
	movq	img(%rip), %rax	# img, img.662
	movl	152(%rax), %ecx	# img.662_770->pix_x, D.10441
	movl	-420(%rbp), %eax	# block_x, tmp1536
	addl	%eax, %ecx	# tmp1536, D.10441
	movl	-464(%rbp), %eax	# i, tmp1537
	addl	%ecx, %eax	# D.10441, D.10441
	cltq
	addq	%rax, %rax	# D.10443
	addq	%rax, %rdx	# D.10443, D.10453
	movq	img(%rip), %rax	# img, img.663
	movl	-460(%rbp), %ecx	# j, tmp1539
	movslq	%ecx, %rcx	# tmp1539, tmp1538
	movl	-464(%rbp), %esi	# i, tmp1541
	movslq	%esi, %rsi	# tmp1541, tmp1540
	salq	$4, %rsi	#, tmp1542
	addq	%rsi, %rcx	# tmp1542, tmp1543
	addq	$3276, %rcx	#, tmp1544
	movl	8(%rax,%rcx,4), %eax	# img.663_777->m7, D.10441
	movw	%ax, (%rdx)	# D.10450, *_776
	.loc 1 1769 0 discriminator 2
	addl	$1, -464(%rbp)	#, i
.L335:
	.loc 1 1769 0 is_stmt 0 discriminator 1
	cmpl	$7, -464(%rbp)	#, i
	jle	.L336	#,
	.loc 1 1768 0 is_stmt 1
	addl	$1, -460(%rbp)	#, j
.L334:
	.loc 1 1768 0 is_stmt 0 discriminator 1
	cmpl	$7, -460(%rbp)	#, j
	jle	.L337	#,
.L333:
	.loc 1 1772 0 is_stmt 1
	movl	-436(%rbp), %eax	# nonzero, D.10441
	.loc 1 1773 0
	addq	$472, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	dct_luma8x8, .-dct_luma8x8
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	1075314688
	.align 8
.LC1:
	.long	2446413372
	.long	1071644252
	.align 8
.LC4:
	.long	0
	.long	1074790400
	.text
.Letext0:
	.file 2 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 3 "defines.h"
	.file 4 "parsetcommon.h"
	.file 5 "global.h"
	.file 6 "mbuffer.h"
	.file 7 "q_matrix.h"
	.file 8 "q_offsets.h"
	.file 9 "image.h"
	.file 10 "elements.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x3005
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF661
	.byte	0x1
	.long	.LASF662
	.long	.LASF663
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
	.uleb128 0x6
	.byte	0x8
	.long	0xa8
	.uleb128 0x8
	.long	0x34
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
	.uleb128 0x9
	.byte	0x4
	.byte	0x4
	.byte	0x2a
	.long	0xdb
	.uleb128 0xa
	.long	.LASF15
	.sleb128 0
	.uleb128 0xa
	.long	.LASF16
	.sleb128 1
	.byte	0
	.uleb128 0x7
	.long	.LASF17
	.byte	0x4
	.byte	0x2d
	.long	0xc6
	.uleb128 0x4
	.long	0x34
	.long	0xf6
	.uleb128 0x5
	.long	0x75
	.byte	0x7
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xbb
	.uleb128 0x7
	.long	.LASF18
	.byte	0x5
	.byte	0x3e
	.long	0x90
	.uleb128 0x9
	.byte	0x4
	.byte	0x5
	.byte	0x78
	.long	0x194
	.uleb128 0xa
	.long	.LASF19
	.sleb128 0
	.uleb128 0xa
	.long	.LASF20
	.sleb128 1
	.uleb128 0xa
	.long	.LASF21
	.sleb128 2
	.uleb128 0xa
	.long	.LASF22
	.sleb128 3
	.uleb128 0xa
	.long	.LASF23
	.sleb128 4
	.uleb128 0xa
	.long	.LASF24
	.sleb128 5
	.uleb128 0xa
	.long	.LASF25
	.sleb128 6
	.uleb128 0xa
	.long	.LASF26
	.sleb128 7
	.uleb128 0xa
	.long	.LASF27
	.sleb128 8
	.uleb128 0xa
	.long	.LASF28
	.sleb128 9
	.uleb128 0xa
	.long	.LASF29
	.sleb128 10
	.uleb128 0xa
	.long	.LASF30
	.sleb128 11
	.uleb128 0xa
	.long	.LASF31
	.sleb128 12
	.uleb128 0xa
	.long	.LASF32
	.sleb128 13
	.uleb128 0xa
	.long	.LASF33
	.sleb128 14
	.uleb128 0xa
	.long	.LASF34
	.sleb128 15
	.uleb128 0xa
	.long	.LASF35
	.sleb128 16
	.uleb128 0xa
	.long	.LASF36
	.sleb128 17
	.uleb128 0xa
	.long	.LASF37
	.sleb128 18
	.uleb128 0xa
	.long	.LASF38
	.sleb128 19
	.uleb128 0xa
	.long	.LASF39
	.sleb128 20
	.uleb128 0xa
	.long	.LASF40
	.sleb128 21
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.byte	0x5
	.byte	0x9b
	.long	0x1d3
	.uleb128 0xa
	.long	.LASF41
	.sleb128 0
	.uleb128 0xa
	.long	.LASF42
	.sleb128 1
	.uleb128 0xa
	.long	.LASF43
	.sleb128 2
	.uleb128 0xa
	.long	.LASF44
	.sleb128 3
	.uleb128 0xa
	.long	.LASF45
	.sleb128 4
	.uleb128 0xa
	.long	.LASF46
	.sleb128 5
	.uleb128 0xa
	.long	.LASF47
	.sleb128 6
	.uleb128 0xa
	.long	.LASF48
	.sleb128 7
	.uleb128 0xa
	.long	.LASF49
	.sleb128 8
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.byte	0x5
	.byte	0xb3
	.long	0x1e8
	.uleb128 0xa
	.long	.LASF50
	.sleb128 0
	.uleb128 0xa
	.long	.LASF51
	.sleb128 1
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.byte	0x5
	.byte	0xba
	.long	0x203
	.uleb128 0xa
	.long	.LASF52
	.sleb128 0
	.uleb128 0xa
	.long	.LASF53
	.sleb128 1
	.uleb128 0xa
	.long	.LASF54
	.sleb128 2
	.byte	0
	.uleb128 0x7
	.long	.LASF55
	.byte	0x5
	.byte	0xbe
	.long	0x1e8
	.uleb128 0x9
	.byte	0x4
	.byte	0x5
	.byte	0xc1
	.long	0x235
	.uleb128 0xa
	.long	.LASF56
	.sleb128 0
	.uleb128 0xa
	.long	.LASF57
	.sleb128 1
	.uleb128 0xa
	.long	.LASF58
	.sleb128 2
	.uleb128 0xa
	.long	.LASF59
	.sleb128 3
	.uleb128 0xa
	.long	.LASF60
	.sleb128 4
	.byte	0
	.uleb128 0xb
	.byte	0x68
	.byte	0x5
	.byte	0xcf
	.long	0x325
	.uleb128 0xc
	.long	.LASF61
	.byte	0x5
	.byte	0xd1
	.long	0x49
	.byte	0
	.uleb128 0xc
	.long	.LASF62
	.byte	0x5
	.byte	0xd1
	.long	0x49
	.byte	0x4
	.uleb128 0xc
	.long	.LASF63
	.byte	0x5
	.byte	0xd2
	.long	0x49
	.byte	0x8
	.uleb128 0xc
	.long	.LASF64
	.byte	0x5
	.byte	0xd3
	.long	0x49
	.byte	0xc
	.uleb128 0xc
	.long	.LASF65
	.byte	0x5
	.byte	0xd4
	.long	0x49
	.byte	0x10
	.uleb128 0xc
	.long	.LASF66
	.byte	0x5
	.byte	0xd5
	.long	0xf6
	.byte	0x18
	.uleb128 0xc
	.long	.LASF67
	.byte	0x5
	.byte	0xd6
	.long	0x83
	.byte	0x20
	.uleb128 0xc
	.long	.LASF68
	.byte	0x5
	.byte	0xd9
	.long	0x49
	.byte	0x28
	.uleb128 0xc
	.long	.LASF69
	.byte	0x5
	.byte	0xd9
	.long	0x49
	.byte	0x2c
	.uleb128 0xc
	.long	.LASF70
	.byte	0x5
	.byte	0xda
	.long	0x49
	.byte	0x30
	.uleb128 0xc
	.long	.LASF71
	.byte	0x5
	.byte	0xdb
	.long	0x49
	.byte	0x34
	.uleb128 0xc
	.long	.LASF72
	.byte	0x5
	.byte	0xdc
	.long	0x49
	.byte	0x38
	.uleb128 0xc
	.long	.LASF73
	.byte	0x5
	.byte	0xdd
	.long	0xf6
	.byte	0x40
	.uleb128 0xc
	.long	.LASF74
	.byte	0x5
	.byte	0xde
	.long	0x83
	.byte	0x48
	.uleb128 0xd
	.string	"C"
	.byte	0x5
	.byte	0xdf
	.long	0x34
	.byte	0x50
	.uleb128 0xd
	.string	"CS"
	.byte	0x5
	.byte	0xdf
	.long	0x34
	.byte	0x54
	.uleb128 0xd
	.string	"E"
	.byte	0x5
	.byte	0xe0
	.long	0x34
	.byte	0x58
	.uleb128 0xd
	.string	"ES"
	.byte	0x5
	.byte	0xe0
	.long	0x34
	.byte	0x5c
	.uleb128 0xd
	.string	"B"
	.byte	0x5
	.byte	0xe1
	.long	0x34
	.byte	0x60
	.uleb128 0xd
	.string	"BS"
	.byte	0x5
	.byte	0xe1
	.long	0x34
	.byte	0x64
	.byte	0
	.uleb128 0x7
	.long	.LASF75
	.byte	0x5
	.byte	0xe2
	.long	0x235
	.uleb128 0x7
	.long	.LASF76
	.byte	0x5
	.byte	0xe4
	.long	0x33b
	.uleb128 0x6
	.byte	0x8
	.long	0x325
	.uleb128 0xb
	.byte	0x10
	.byte	0x5
	.byte	0xe7
	.long	0x36e
	.uleb128 0xc
	.long	.LASF77
	.byte	0x5
	.byte	0xe9
	.long	0x42
	.byte	0
	.uleb128 0xd
	.string	"MPS"
	.byte	0x5
	.byte	0xea
	.long	0x3b
	.byte	0x2
	.uleb128 0xc
	.long	.LASF78
	.byte	0x5
	.byte	0xec
	.long	0x2d
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.long	.LASF79
	.byte	0x5
	.byte	0xee
	.long	0x341
	.uleb128 0xe
	.value	0x5e0
	.byte	0x5
	.value	0x102
	.long	0x3e5
	.uleb128 0xf
	.long	.LASF80
	.byte	0x5
	.value	0x104
	.long	0x3e5
	.byte	0
	.uleb128 0x10
	.long	.LASF81
	.byte	0x5
	.value	0x105
	.long	0x3fb
	.value	0x210
	.uleb128 0x10
	.long	.LASF82
	.byte	0x5
	.value	0x106
	.long	0x411
	.value	0x330
	.uleb128 0x10
	.long	.LASF83
	.byte	0x5
	.value	0x107
	.long	0x427
	.value	0x470
	.uleb128 0x10
	.long	.LASF84
	.byte	0x5
	.value	0x108
	.long	0x43d
	.value	0x530
	.uleb128 0x10
	.long	.LASF85
	.byte	0x5
	.value	0x109
	.long	0x43d
	.value	0x570
	.uleb128 0x10
	.long	.LASF86
	.byte	0x5
	.value	0x10a
	.long	0x44d
	.value	0x5b0
	.byte	0
	.uleb128 0x4
	.long	0x36e
	.long	0x3fb
	.uleb128 0x5
	.long	0x75
	.byte	0x2
	.uleb128 0x5
	.long	0x75
	.byte	0xa
	.byte	0
	.uleb128 0x4
	.long	0x36e
	.long	0x411
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.uleb128 0x5
	.long	0x75
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.long	0x36e
	.long	0x427
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.uleb128 0x5
	.long	0x75
	.byte	0x9
	.byte	0
	.uleb128 0x4
	.long	0x36e
	.long	0x43d
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.uleb128 0x5
	.long	0x75
	.byte	0x5
	.byte	0
	.uleb128 0x4
	.long	0x36e
	.long	0x44d
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.long	0x36e
	.long	0x45d
	.uleb128 0x5
	.long	0x75
	.byte	0x2
	.byte	0
	.uleb128 0x11
	.long	.LASF87
	.byte	0x5
	.value	0x10c
	.long	0x379
	.uleb128 0xe
	.value	0x2f60
	.byte	0x5
	.value	0x119
	.long	0x4fd
	.uleb128 0xf
	.long	.LASF88
	.byte	0x5
	.value	0x11b
	.long	0x4fd
	.byte	0
	.uleb128 0xf
	.long	.LASF89
	.byte	0x5
	.value	0x11c
	.long	0x43d
	.byte	0x20
	.uleb128 0xf
	.long	.LASF90
	.byte	0x5
	.value	0x11d
	.long	0x50d
	.byte	0x60
	.uleb128 0x10
	.long	.LASF91
	.byte	0x5
	.value	0x11e
	.long	0x523
	.value	0x120
	.uleb128 0x10
	.long	.LASF92
	.byte	0x5
	.value	0x11f
	.long	0x539
	.value	0x3a0
	.uleb128 0x10
	.long	.LASF93
	.byte	0x5
	.value	0x120
	.long	0x539
	.value	0xd00
	.uleb128 0x10
	.long	.LASF94
	.byte	0x5
	.value	0x121
	.long	0x54f
	.value	0x1660
	.uleb128 0x10
	.long	.LASF95
	.byte	0x5
	.value	0x122
	.long	0x54f
	.value	0x1980
	.uleb128 0x10
	.long	.LASF96
	.byte	0x5
	.value	0x123
	.long	0x539
	.value	0x1ca0
	.uleb128 0x10
	.long	.LASF97
	.byte	0x5
	.value	0x124
	.long	0x539
	.value	0x2600
	.byte	0
	.uleb128 0x4
	.long	0x36e
	.long	0x50d
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.long	0x36e
	.long	0x523
	.uleb128 0x5
	.long	0x75
	.byte	0x2
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.long	0x36e
	.long	0x539
	.uleb128 0x5
	.long	0x75
	.byte	0x9
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.long	0x36e
	.long	0x54f
	.uleb128 0x5
	.long	0x75
	.byte	0x9
	.uleb128 0x5
	.long	0x75
	.byte	0xe
	.byte	0
	.uleb128 0x4
	.long	0x36e
	.long	0x565
	.uleb128 0x5
	.long	0x75
	.byte	0x9
	.uleb128 0x5
	.long	0x75
	.byte	0x4
	.byte	0
	.uleb128 0x11
	.long	.LASF98
	.byte	0x5
	.value	0x125
	.long	0x469
	.uleb128 0x12
	.long	.LASF104
	.byte	0x18
	.byte	0x5
	.value	0x129
	.long	0x5c9
	.uleb128 0xf
	.long	.LASF99
	.byte	0x5
	.value	0x12b
	.long	0x34
	.byte	0
	.uleb128 0xf
	.long	.LASF100
	.byte	0x5
	.value	0x12c
	.long	0x34
	.byte	0x4
	.uleb128 0x13
	.string	"x"
	.byte	0x5
	.value	0x12d
	.long	0x34
	.byte	0x8
	.uleb128 0x13
	.string	"y"
	.byte	0x5
	.value	0x12e
	.long	0x34
	.byte	0xc
	.uleb128 0xf
	.long	.LASF101
	.byte	0x5
	.value	0x12f
	.long	0x34
	.byte	0x10
	.uleb128 0xf
	.long	.LASF102
	.byte	0x5
	.value	0x130
	.long	0x34
	.byte	0x14
	.byte	0
	.uleb128 0x11
	.long	.LASF103
	.byte	0x5
	.value	0x131
	.long	0x571
	.uleb128 0x12
	.long	.LASF105
	.byte	0x10
	.byte	0x5
	.value	0x134
	.long	0x60a
	.uleb128 0xf
	.long	.LASF106
	.byte	0x5
	.value	0x136
	.long	0x34
	.byte	0
	.uleb128 0xf
	.long	.LASF107
	.byte	0x5
	.value	0x137
	.long	0x34
	.byte	0x4
	.uleb128 0xf
	.long	.LASF108
	.byte	0x5
	.value	0x138
	.long	0x60a
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5d5
	.uleb128 0x11
	.long	.LASF109
	.byte	0x5
	.value	0x139
	.long	0x5d5
	.uleb128 0x12
	.long	.LASF110
	.byte	0x20
	.byte	0x5
	.value	0x13c
	.long	0x678
	.uleb128 0xf
	.long	.LASF111
	.byte	0x5
	.value	0x13e
	.long	0x34
	.byte	0
	.uleb128 0xf
	.long	.LASF112
	.byte	0x5
	.value	0x13f
	.long	0x34
	.byte	0x4
	.uleb128 0xf
	.long	.LASF113
	.byte	0x5
	.value	0x140
	.long	0x34
	.byte	0x8
	.uleb128 0xf
	.long	.LASF114
	.byte	0x5
	.value	0x141
	.long	0x34
	.byte	0xc
	.uleb128 0xf
	.long	.LASF115
	.byte	0x5
	.value	0x142
	.long	0x34
	.byte	0x10
	.uleb128 0xf
	.long	.LASF108
	.byte	0x5
	.value	0x143
	.long	0x678
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x61c
	.uleb128 0x11
	.long	.LASF116
	.byte	0x5
	.value	0x144
	.long	0x61c
	.uleb128 0x12
	.long	.LASF117
	.byte	0x30
	.byte	0x5
	.value	0x147
	.long	0x718
	.uleb128 0xf
	.long	.LASF118
	.byte	0x5
	.value	0x149
	.long	0x34
	.byte	0
	.uleb128 0xf
	.long	.LASF119
	.byte	0x5
	.value	0x14a
	.long	0x34
	.byte	0x4
	.uleb128 0xf
	.long	.LASF120
	.byte	0x5
	.value	0x14b
	.long	0x34
	.byte	0x8
	.uleb128 0x13
	.string	"len"
	.byte	0x5
	.value	0x14c
	.long	0x34
	.byte	0xc
	.uleb128 0x13
	.string	"inf"
	.byte	0x5
	.value	0x14d
	.long	0x34
	.byte	0x10
	.uleb128 0xf
	.long	.LASF121
	.byte	0x5
	.value	0x14e
	.long	0x49
	.byte	0x14
	.uleb128 0xf
	.long	.LASF122
	.byte	0x5
	.value	0x14f
	.long	0x34
	.byte	0x18
	.uleb128 0x13
	.string	"k"
	.byte	0x5
	.value	0x150
	.long	0x34
	.byte	0x1c
	.uleb128 0xf
	.long	.LASF123
	.byte	0x5
	.value	0x158
	.long	0x732
	.byte	0x20
	.uleb128 0xf
	.long	.LASF124
	.byte	0x5
	.value	0x15a
	.long	0x74e
	.byte	0x28
	.byte	0
	.uleb128 0x14
	.long	0x732
	.uleb128 0x15
	.long	0x34
	.uleb128 0x15
	.long	0x34
	.uleb128 0x15
	.long	0x83
	.uleb128 0x15
	.long	0x83
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x718
	.uleb128 0x14
	.long	0x748
	.uleb128 0x15
	.long	0x748
	.uleb128 0x15
	.long	0x330
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x68a
	.uleb128 0x6
	.byte	0x8
	.long	0x738
	.uleb128 0x11
	.long	.LASF125
	.byte	0x5
	.value	0x15c
	.long	0x68a
	.uleb128 0x16
	.long	.LASF126
	.value	0x278
	.byte	0x5
	.value	0x15f
	.long	0x9da
	.uleb128 0xf
	.long	.LASF127
	.byte	0x5
	.value	0x161
	.long	0x34
	.byte	0
	.uleb128 0xf
	.long	.LASF128
	.byte	0x5
	.value	0x162
	.long	0x34
	.byte	0x4
	.uleb128 0xf
	.long	.LASF129
	.byte	0x5
	.value	0x163
	.long	0x34
	.byte	0x8
	.uleb128 0x13
	.string	"qp"
	.byte	0x5
	.value	0x164
	.long	0x34
	.byte	0xc
	.uleb128 0xf
	.long	.LASF130
	.byte	0x5
	.value	0x165
	.long	0x34
	.byte	0x10
	.uleb128 0xf
	.long	.LASF131
	.byte	0x5
	.value	0x166
	.long	0xe6
	.byte	0x14
	.uleb128 0xf
	.long	.LASF132
	.byte	0x5
	.value	0x168
	.long	0x9da
	.byte	0x38
	.uleb128 0xf
	.long	.LASF133
	.byte	0x5
	.value	0x169
	.long	0x9da
	.byte	0x40
	.uleb128 0xf
	.long	.LASF134
	.byte	0x5
	.value	0x16b
	.long	0x34
	.byte	0x48
	.uleb128 0x13
	.string	"mvd"
	.byte	0x5
	.value	0x16c
	.long	0x9e0
	.byte	0x4c
	.uleb128 0x10
	.long	.LASF135
	.byte	0x5
	.value	0x16d
	.long	0xa02
	.value	0x14c
	.uleb128 0x10
	.long	.LASF136
	.byte	0x5
	.value	0x16e
	.long	0xa02
	.value	0x18c
	.uleb128 0x17
	.string	"cbp"
	.byte	0x5
	.value	0x16f
	.long	0x34
	.value	0x1cc
	.uleb128 0x10
	.long	.LASF137
	.byte	0x5
	.value	0x170
	.long	0xfc
	.value	0x1d0
	.uleb128 0x10
	.long	.LASF138
	.byte	0x5
	.value	0x171
	.long	0xa12
	.value	0x1d8
	.uleb128 0x10
	.long	.LASF139
	.byte	0x5
	.value	0x172
	.long	0xa12
	.value	0x1e8
	.uleb128 0x10
	.long	.LASF140
	.byte	0x5
	.value	0x173
	.long	0x2d
	.value	0x1f8
	.uleb128 0x10
	.long	.LASF141
	.byte	0x5
	.value	0x175
	.long	0x34
	.value	0x200
	.uleb128 0x10
	.long	.LASF142
	.byte	0x5
	.value	0x176
	.long	0x34
	.value	0x204
	.uleb128 0x10
	.long	.LASF143
	.byte	0x5
	.value	0x177
	.long	0x34
	.value	0x208
	.uleb128 0x10
	.long	.LASF144
	.byte	0x5
	.value	0x179
	.long	0x34
	.value	0x20c
	.uleb128 0x10
	.long	.LASF145
	.byte	0x5
	.value	0x17a
	.long	0x34
	.value	0x210
	.uleb128 0x10
	.long	.LASF146
	.byte	0x5
	.value	0x17c
	.long	0x34
	.value	0x214
	.uleb128 0x10
	.long	.LASF147
	.byte	0x5
	.value	0x17e
	.long	0x34
	.value	0x218
	.uleb128 0x10
	.long	.LASF148
	.byte	0x5
	.value	0x17e
	.long	0x34
	.value	0x21c
	.uleb128 0x10
	.long	.LASF149
	.byte	0x5
	.value	0x17e
	.long	0x34
	.value	0x220
	.uleb128 0x10
	.long	.LASF150
	.byte	0x5
	.value	0x17e
	.long	0x34
	.value	0x224
	.uleb128 0x10
	.long	.LASF151
	.byte	0x5
	.value	0x17f
	.long	0x34
	.value	0x228
	.uleb128 0x10
	.long	.LASF152
	.byte	0x5
	.value	0x17f
	.long	0x34
	.value	0x22c
	.uleb128 0x10
	.long	.LASF153
	.byte	0x5
	.value	0x17f
	.long	0x34
	.value	0x230
	.uleb128 0x10
	.long	.LASF154
	.byte	0x5
	.value	0x17f
	.long	0x34
	.value	0x234
	.uleb128 0x10
	.long	.LASF155
	.byte	0x5
	.value	0x181
	.long	0x34
	.value	0x238
	.uleb128 0x10
	.long	.LASF156
	.byte	0x5
	.value	0x182
	.long	0x34
	.value	0x23c
	.uleb128 0x10
	.long	.LASF157
	.byte	0x5
	.value	0x183
	.long	0x34
	.value	0x240
	.uleb128 0x10
	.long	.LASF158
	.byte	0x5
	.value	0x186
	.long	0x34
	.value	0x244
	.uleb128 0x10
	.long	.LASF159
	.byte	0x5
	.value	0x18a
	.long	0xb4
	.value	0x248
	.uleb128 0x10
	.long	.LASF160
	.byte	0x5
	.value	0x18b
	.long	0x34
	.value	0x250
	.uleb128 0x10
	.long	.LASF161
	.byte	0x5
	.value	0x18c
	.long	0x34
	.value	0x254
	.uleb128 0x10
	.long	.LASF162
	.byte	0x5
	.value	0x18d
	.long	0x34
	.value	0x258
	.uleb128 0x10
	.long	.LASF163
	.byte	0x5
	.value	0x18e
	.long	0x34
	.value	0x25c
	.uleb128 0x10
	.long	.LASF164
	.byte	0x5
	.value	0x18f
	.long	0x34
	.value	0x260
	.uleb128 0x10
	.long	.LASF165
	.byte	0x5
	.value	0x191
	.long	0x34
	.value	0x264
	.uleb128 0x10
	.long	.LASF166
	.byte	0x5
	.value	0x192
	.long	0x34
	.value	0x268
	.uleb128 0x10
	.long	.LASF167
	.byte	0x5
	.value	0x193
	.long	0x34
	.value	0x26c
	.uleb128 0x10
	.long	.LASF168
	.byte	0x5
	.value	0x195
	.long	0x34
	.value	0x270
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x760
	.uleb128 0x4
	.long	0x34
	.long	0xa02
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
	.long	0xa12
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0xa22
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x11
	.long	.LASF169
	.byte	0x5
	.value	0x196
	.long	0x760
	.uleb128 0x18
	.byte	0x30
	.byte	0x5
	.value	0x19b
	.long	0xac7
	.uleb128 0xf
	.long	.LASF170
	.byte	0x5
	.value	0x19d
	.long	0x34
	.byte	0
	.uleb128 0xf
	.long	.LASF171
	.byte	0x5
	.value	0x19e
	.long	0x34
	.byte	0x4
	.uleb128 0xf
	.long	.LASF172
	.byte	0x5
	.value	0x19f
	.long	0xbb
	.byte	0x8
	.uleb128 0xf
	.long	.LASF173
	.byte	0x5
	.value	0x1a0
	.long	0x34
	.byte	0xc
	.uleb128 0xf
	.long	.LASF174
	.byte	0x5
	.value	0x1a1
	.long	0x34
	.byte	0x10
	.uleb128 0xf
	.long	.LASF175
	.byte	0x5
	.value	0x1a2
	.long	0xbb
	.byte	0x14
	.uleb128 0xf
	.long	.LASF176
	.byte	0x5
	.value	0x1a4
	.long	0xbb
	.byte	0x15
	.uleb128 0xf
	.long	.LASF177
	.byte	0x5
	.value	0x1a5
	.long	0x34
	.byte	0x18
	.uleb128 0xf
	.long	.LASF178
	.byte	0x5
	.value	0x1a6
	.long	0x34
	.byte	0x1c
	.uleb128 0xf
	.long	.LASF179
	.byte	0x5
	.value	0x1a8
	.long	0xf6
	.byte	0x20
	.uleb128 0xf
	.long	.LASF180
	.byte	0x5
	.value	0x1a9
	.long	0x34
	.byte	0x28
	.byte	0
	.uleb128 0x11
	.long	.LASF181
	.byte	0x5
	.value	0x1ab
	.long	0xa2e
	.uleb128 0x12
	.long	.LASF182
	.byte	0x78
	.byte	0x5
	.value	0x1ae
	.long	0xb08
	.uleb128 0xf
	.long	.LASF183
	.byte	0x5
	.value	0x1b1
	.long	0xb08
	.byte	0
	.uleb128 0xf
	.long	.LASF184
	.byte	0x5
	.value	0x1b2
	.long	0x325
	.byte	0x8
	.uleb128 0xf
	.long	.LASF185
	.byte	0x5
	.value	0x1b4
	.long	0xb2e
	.byte	0x70
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xac7
	.uleb128 0x19
	.long	0x34
	.long	0xb22
	.uleb128 0x15
	.long	0xb22
	.uleb128 0x15
	.long	0xb28
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x754
	.uleb128 0x6
	.byte	0x8
	.long	0xad3
	.uleb128 0x6
	.byte	0x8
	.long	0xb0e
	.uleb128 0x11
	.long	.LASF186
	.byte	0x5
	.value	0x1b8
	.long	0xad3
	.uleb128 0x18
	.byte	0x98
	.byte	0x5
	.value	0x1bb
	.long	0xc4d
	.uleb128 0xf
	.long	.LASF187
	.byte	0x5
	.value	0x1bd
	.long	0x34
	.byte	0
	.uleb128 0x13
	.string	"qp"
	.byte	0x5
	.value	0x1be
	.long	0x34
	.byte	0x4
	.uleb128 0xf
	.long	.LASF188
	.byte	0x5
	.value	0x1bf
	.long	0x34
	.byte	0x8
	.uleb128 0xf
	.long	.LASF189
	.byte	0x5
	.value	0x1c0
	.long	0x34
	.byte	0xc
	.uleb128 0xf
	.long	.LASF190
	.byte	0x5
	.value	0x1c1
	.long	0x34
	.byte	0x10
	.uleb128 0xf
	.long	.LASF191
	.byte	0x5
	.value	0x1c2
	.long	0x34
	.byte	0x14
	.uleb128 0xf
	.long	.LASF192
	.byte	0x5
	.value	0x1c3
	.long	0xc4d
	.byte	0x18
	.uleb128 0xf
	.long	.LASF193
	.byte	0x5
	.value	0x1c4
	.long	0xc53
	.byte	0x20
	.uleb128 0xf
	.long	.LASF194
	.byte	0x5
	.value	0x1c5
	.long	0xc59
	.byte	0x28
	.uleb128 0xf
	.long	.LASF195
	.byte	0x5
	.value	0x1c8
	.long	0xc5f
	.byte	0x30
	.uleb128 0xf
	.long	.LASF196
	.byte	0x5
	.value	0x1ca
	.long	0x34
	.byte	0x38
	.uleb128 0xf
	.long	.LASF197
	.byte	0x5
	.value	0x1cb
	.long	0x83
	.byte	0x40
	.uleb128 0xf
	.long	.LASF198
	.byte	0x5
	.value	0x1cc
	.long	0x83
	.byte	0x48
	.uleb128 0xf
	.long	.LASF199
	.byte	0x5
	.value	0x1cd
	.long	0x83
	.byte	0x50
	.uleb128 0xf
	.long	.LASF200
	.byte	0x5
	.value	0x1ce
	.long	0x34
	.byte	0x58
	.uleb128 0xf
	.long	.LASF201
	.byte	0x5
	.value	0x1cf
	.long	0x83
	.byte	0x60
	.uleb128 0xf
	.long	.LASF202
	.byte	0x5
	.value	0x1d0
	.long	0x83
	.byte	0x68
	.uleb128 0xf
	.long	.LASF203
	.byte	0x5
	.value	0x1d1
	.long	0x83
	.byte	0x70
	.uleb128 0xf
	.long	.LASF204
	.byte	0x5
	.value	0x1d3
	.long	0xc74
	.byte	0x78
	.uleb128 0xf
	.long	.LASF205
	.byte	0x5
	.value	0x1d5
	.long	0xc7a
	.byte	0x80
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xb34
	.uleb128 0x6
	.byte	0x8
	.long	0x45d
	.uleb128 0x6
	.byte	0x8
	.long	0x565
	.uleb128 0x6
	.byte	0x8
	.long	0x610
	.uleb128 0x19
	.long	0xdb
	.long	0xc74
	.uleb128 0x15
	.long	0x34
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xc65
	.uleb128 0x4
	.long	0x34
	.long	0xc90
	.uleb128 0x5
	.long	0x75
	.byte	0x2
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.byte	0
	.uleb128 0x11
	.long	.LASF206
	.byte	0x5
	.value	0x1d7
	.long	0xb40
	.uleb128 0xe
	.value	0x338
	.byte	0x5
	.value	0x1db
	.long	0xd06
	.uleb128 0xf
	.long	.LASF207
	.byte	0x5
	.value	0x1dd
	.long	0x34
	.byte	0
	.uleb128 0xf
	.long	.LASF208
	.byte	0x5
	.value	0x1de
	.long	0x34
	.byte	0x4
	.uleb128 0xf
	.long	.LASF209
	.byte	0x5
	.value	0x1df
	.long	0xd06
	.byte	0x8
	.uleb128 0x10
	.long	.LASF210
	.byte	0x5
	.value	0x1e0
	.long	0x34
	.value	0x328
	.uleb128 0x10
	.long	.LASF211
	.byte	0x5
	.value	0x1e1
	.long	0xad
	.value	0x32c
	.uleb128 0x10
	.long	.LASF212
	.byte	0x5
	.value	0x1e2
	.long	0xad
	.value	0x330
	.uleb128 0x10
	.long	.LASF213
	.byte	0x5
	.value	0x1e3
	.long	0xad
	.value	0x334
	.byte	0
	.uleb128 0x4
	.long	0xd16
	.long	0xd16
	.uleb128 0x5
	.long	0x75
	.byte	0x63
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xc90
	.uleb128 0x11
	.long	.LASF214
	.byte	0x5
	.value	0x1e4
	.long	0xc9c
	.uleb128 0x6
	.byte	0x8
	.long	0x83
	.uleb128 0x6
	.byte	0x8
	.long	0xd34
	.uleb128 0x6
	.byte	0x8
	.long	0xd3a
	.uleb128 0x6
	.byte	0x8
	.long	0x42
	.uleb128 0x6
	.byte	0x8
	.long	0xf6
	.uleb128 0xe
	.value	0xe08
	.byte	0x5
	.value	0x295
	.long	0x154e
	.uleb128 0xf
	.long	.LASF215
	.byte	0x5
	.value	0x297
	.long	0x34
	.byte	0
	.uleb128 0xf
	.long	.LASF216
	.byte	0x5
	.value	0x298
	.long	0x34
	.byte	0x4
	.uleb128 0xf
	.long	.LASF217
	.byte	0x5
	.value	0x29a
	.long	0x34
	.byte	0x8
	.uleb128 0x13
	.string	"qp0"
	.byte	0x5
	.value	0x29b
	.long	0x34
	.byte	0xc
	.uleb128 0x13
	.string	"qpN"
	.byte	0x5
	.value	0x29c
	.long	0x34
	.byte	0x10
	.uleb128 0xf
	.long	.LASF218
	.byte	0x5
	.value	0x29d
	.long	0x34
	.byte	0x14
	.uleb128 0xf
	.long	.LASF219
	.byte	0x5
	.value	0x29e
	.long	0x34
	.byte	0x18
	.uleb128 0xf
	.long	.LASF220
	.byte	0x5
	.value	0x2a0
	.long	0x34
	.byte	0x1c
	.uleb128 0xf
	.long	.LASF221
	.byte	0x5
	.value	0x2a1
	.long	0x34
	.byte	0x20
	.uleb128 0xf
	.long	.LASF222
	.byte	0x5
	.value	0x2a4
	.long	0x34
	.byte	0x24
	.uleb128 0xf
	.long	.LASF223
	.byte	0x5
	.value	0x2a5
	.long	0x34
	.byte	0x28
	.uleb128 0xf
	.long	.LASF224
	.byte	0x5
	.value	0x2a6
	.long	0x34
	.byte	0x2c
	.uleb128 0xf
	.long	.LASF225
	.byte	0x5
	.value	0x2a7
	.long	0x34
	.byte	0x30
	.uleb128 0xf
	.long	.LASF226
	.byte	0x5
	.value	0x2a8
	.long	0x34
	.byte	0x34
	.uleb128 0xf
	.long	.LASF227
	.byte	0x5
	.value	0x2a9
	.long	0x34
	.byte	0x38
	.uleb128 0xf
	.long	.LASF228
	.byte	0x5
	.value	0x2aa
	.long	0x34
	.byte	0x3c
	.uleb128 0xf
	.long	.LASF229
	.byte	0x5
	.value	0x2ac
	.long	0x34
	.byte	0x40
	.uleb128 0xf
	.long	.LASF230
	.byte	0x5
	.value	0x2ad
	.long	0x34
	.byte	0x44
	.uleb128 0xf
	.long	.LASF231
	.byte	0x5
	.value	0x2ae
	.long	0x34
	.byte	0x48
	.uleb128 0xf
	.long	.LASF232
	.byte	0x5
	.value	0x2af
	.long	0x34
	.byte	0x4c
	.uleb128 0xf
	.long	.LASF233
	.byte	0x5
	.value	0x2b3
	.long	0x154e
	.byte	0x50
	.uleb128 0xf
	.long	.LASF234
	.byte	0x5
	.value	0x2b4
	.long	0x154e
	.byte	0x90
	.uleb128 0xf
	.long	.LASF235
	.byte	0x5
	.value	0x2b5
	.long	0x34
	.byte	0xd0
	.uleb128 0xf
	.long	.LASF236
	.byte	0x5
	.value	0x2b6
	.long	0x34
	.byte	0xd4
	.uleb128 0xf
	.long	.LASF237
	.byte	0x5
	.value	0x2b7
	.long	0x34
	.byte	0xd8
	.uleb128 0xf
	.long	.LASF238
	.byte	0x5
	.value	0x2b8
	.long	0x34
	.byte	0xdc
	.uleb128 0xf
	.long	.LASF239
	.byte	0x5
	.value	0x2b9
	.long	0x1564
	.byte	0xe0
	.uleb128 0x10
	.long	.LASF240
	.byte	0x5
	.value	0x2ba
	.long	0x1564
	.value	0x1a8
	.uleb128 0x10
	.long	.LASF241
	.byte	0x5
	.value	0x2bb
	.long	0x1564
	.value	0x270
	.uleb128 0x10
	.long	.LASF242
	.byte	0x5
	.value	0x2bc
	.long	0x1564
	.value	0x338
	.uleb128 0x10
	.long	.LASF243
	.byte	0x5
	.value	0x2bd
	.long	0x1564
	.value	0x400
	.uleb128 0x10
	.long	.LASF244
	.byte	0x5
	.value	0x2be
	.long	0x34
	.value	0x4c8
	.uleb128 0x10
	.long	.LASF245
	.byte	0x5
	.value	0x2c0
	.long	0x34
	.value	0x4cc
	.uleb128 0x10
	.long	.LASF246
	.byte	0x5
	.value	0x2c1
	.long	0x34
	.value	0x4d0
	.uleb128 0x10
	.long	.LASF247
	.byte	0x5
	.value	0x2c4
	.long	0x34
	.value	0x4d4
	.uleb128 0x17
	.string	"qpB"
	.byte	0x5
	.value	0x2c5
	.long	0x34
	.value	0x4d8
	.uleb128 0x10
	.long	.LASF248
	.byte	0x5
	.value	0x2c6
	.long	0x34
	.value	0x4dc
	.uleb128 0x10
	.long	.LASF249
	.byte	0x5
	.value	0x2c7
	.long	0x34
	.value	0x4e0
	.uleb128 0x10
	.long	.LASF250
	.byte	0x5
	.value	0x2c8
	.long	0x34
	.value	0x4e4
	.uleb128 0x10
	.long	.LASF251
	.byte	0x5
	.value	0x2ca
	.long	0x34
	.value	0x4e8
	.uleb128 0x10
	.long	.LASF252
	.byte	0x5
	.value	0x2cb
	.long	0x34
	.value	0x4ec
	.uleb128 0x10
	.long	.LASF253
	.byte	0x5
	.value	0x2cc
	.long	0x34
	.value	0x4f0
	.uleb128 0x10
	.long	.LASF254
	.byte	0x5
	.value	0x2cd
	.long	0x34
	.value	0x4f4
	.uleb128 0x10
	.long	.LASF255
	.byte	0x5
	.value	0x2d1
	.long	0x34
	.value	0x4f8
	.uleb128 0x10
	.long	.LASF130
	.byte	0x5
	.value	0x2d2
	.long	0x34
	.value	0x4fc
	.uleb128 0x10
	.long	.LASF256
	.byte	0x5
	.value	0x2d3
	.long	0x34
	.value	0x500
	.uleb128 0x10
	.long	.LASF257
	.byte	0x5
	.value	0x2d5
	.long	0x34
	.value	0x504
	.uleb128 0x10
	.long	.LASF258
	.byte	0x5
	.value	0x2d6
	.long	0x34
	.value	0x508
	.uleb128 0x10
	.long	.LASF259
	.byte	0x5
	.value	0x2d7
	.long	0x34
	.value	0x50c
	.uleb128 0x10
	.long	.LASF260
	.byte	0x5
	.value	0x2d8
	.long	0x34
	.value	0x510
	.uleb128 0x10
	.long	.LASF261
	.byte	0x5
	.value	0x2d9
	.long	0x34
	.value	0x514
	.uleb128 0x10
	.long	.LASF262
	.byte	0x5
	.value	0x2da
	.long	0x34
	.value	0x518
	.uleb128 0x10
	.long	.LASF263
	.byte	0x5
	.value	0x2db
	.long	0x34
	.value	0x51c
	.uleb128 0x10
	.long	.LASF264
	.byte	0x5
	.value	0x2dc
	.long	0x34
	.value	0x520
	.uleb128 0x10
	.long	.LASF265
	.byte	0x5
	.value	0x2dd
	.long	0x34
	.value	0x524
	.uleb128 0x10
	.long	.LASF266
	.byte	0x5
	.value	0x2de
	.long	0x34
	.value	0x528
	.uleb128 0x10
	.long	.LASF267
	.byte	0x5
	.value	0x2df
	.long	0x1574
	.value	0x52c
	.uleb128 0x10
	.long	.LASF268
	.byte	0x5
	.value	0x2e0
	.long	0x34
	.value	0x92c
	.uleb128 0x10
	.long	.LASF269
	.byte	0x5
	.value	0x2e1
	.long	0x34
	.value	0x930
	.uleb128 0x10
	.long	.LASF270
	.byte	0x5
	.value	0x2e3
	.long	0x34
	.value	0x934
	.uleb128 0x10
	.long	.LASF271
	.byte	0x5
	.value	0x2e4
	.long	0x34
	.value	0x938
	.uleb128 0x10
	.long	.LASF272
	.byte	0x5
	.value	0x2e5
	.long	0x34
	.value	0x93c
	.uleb128 0x10
	.long	.LASF273
	.byte	0x5
	.value	0x2e7
	.long	0x34
	.value	0x940
	.uleb128 0x10
	.long	.LASF274
	.byte	0x5
	.value	0x2e8
	.long	0x34
	.value	0x944
	.uleb128 0x10
	.long	.LASF275
	.byte	0x5
	.value	0x2e9
	.long	0x34
	.value	0x948
	.uleb128 0x10
	.long	.LASF276
	.byte	0x5
	.value	0x2ea
	.long	0x34
	.value	0x94c
	.uleb128 0x10
	.long	.LASF277
	.byte	0x5
	.value	0x2eb
	.long	0x34
	.value	0x950
	.uleb128 0x10
	.long	.LASF278
	.byte	0x5
	.value	0x2ec
	.long	0x34
	.value	0x954
	.uleb128 0x10
	.long	.LASF279
	.byte	0x5
	.value	0x2ed
	.long	0x34
	.value	0x958
	.uleb128 0x10
	.long	.LASF280
	.byte	0x5
	.value	0x2ef
	.long	0x34
	.value	0x95c
	.uleb128 0x10
	.long	.LASF281
	.byte	0x5
	.value	0x2f0
	.long	0x34
	.value	0x960
	.uleb128 0x10
	.long	.LASF282
	.byte	0x5
	.value	0x2f1
	.long	0x34
	.value	0x964
	.uleb128 0x10
	.long	.LASF283
	.byte	0x5
	.value	0x2f2
	.long	0x34
	.value	0x968
	.uleb128 0x10
	.long	.LASF284
	.byte	0x5
	.value	0x2f3
	.long	0x34
	.value	0x96c
	.uleb128 0x10
	.long	.LASF285
	.byte	0x5
	.value	0x2f4
	.long	0x34
	.value	0x970
	.uleb128 0x10
	.long	.LASF286
	.byte	0x5
	.value	0x2f5
	.long	0x34
	.value	0x974
	.uleb128 0x10
	.long	.LASF287
	.byte	0x5
	.value	0x2f7
	.long	0xb4
	.value	0x978
	.uleb128 0x10
	.long	.LASF288
	.byte	0x5
	.value	0x2f9
	.long	0x34
	.value	0x980
	.uleb128 0x10
	.long	.LASF289
	.byte	0x5
	.value	0x2fb
	.long	0x34
	.value	0x984
	.uleb128 0x10
	.long	.LASF290
	.byte	0x5
	.value	0x2fe
	.long	0x34
	.value	0x988
	.uleb128 0x10
	.long	.LASF291
	.byte	0x5
	.value	0x301
	.long	0x34
	.value	0x98c
	.uleb128 0x10
	.long	.LASF292
	.byte	0x5
	.value	0x301
	.long	0x34
	.value	0x990
	.uleb128 0x10
	.long	.LASF293
	.byte	0x5
	.value	0x301
	.long	0x34
	.value	0x994
	.uleb128 0x10
	.long	.LASF294
	.byte	0x5
	.value	0x302
	.long	0x34
	.value	0x998
	.uleb128 0x10
	.long	.LASF295
	.byte	0x5
	.value	0x302
	.long	0x34
	.value	0x99c
	.uleb128 0x10
	.long	.LASF296
	.byte	0x5
	.value	0x304
	.long	0x34
	.value	0x9a0
	.uleb128 0x10
	.long	.LASF297
	.byte	0x5
	.value	0x305
	.long	0x34
	.value	0x9a4
	.uleb128 0x10
	.long	.LASF298
	.byte	0x5
	.value	0x306
	.long	0x34
	.value	0x9a8
	.uleb128 0x10
	.long	.LASF299
	.byte	0x5
	.value	0x309
	.long	0x34
	.value	0x9ac
	.uleb128 0x10
	.long	.LASF300
	.byte	0x5
	.value	0x30a
	.long	0x1564
	.value	0x9b0
	.uleb128 0x10
	.long	.LASF301
	.byte	0x5
	.value	0x30b
	.long	0x1564
	.value	0xa78
	.uleb128 0x10
	.long	.LASF302
	.byte	0x5
	.value	0x30e
	.long	0x34
	.value	0xb40
	.uleb128 0x10
	.long	.LASF303
	.byte	0x5
	.value	0x30f
	.long	0x34
	.value	0xb44
	.uleb128 0x10
	.long	.LASF304
	.byte	0x5
	.value	0x311
	.long	0x34
	.value	0xb48
	.uleb128 0x10
	.long	.LASF305
	.byte	0x5
	.value	0x313
	.long	0x34
	.value	0xb4c
	.uleb128 0x10
	.long	.LASF306
	.byte	0x5
	.value	0x314
	.long	0x34
	.value	0xb50
	.uleb128 0x10
	.long	.LASF307
	.byte	0x5
	.value	0x315
	.long	0x34
	.value	0xb54
	.uleb128 0x10
	.long	.LASF308
	.byte	0x5
	.value	0x316
	.long	0x34
	.value	0xb58
	.uleb128 0x10
	.long	.LASF309
	.byte	0x5
	.value	0x317
	.long	0x34
	.value	0xb5c
	.uleb128 0x10
	.long	.LASF310
	.byte	0x5
	.value	0x318
	.long	0x34
	.value	0xb60
	.uleb128 0x10
	.long	.LASF311
	.byte	0x5
	.value	0x319
	.long	0x34
	.value	0xb64
	.uleb128 0x10
	.long	.LASF312
	.byte	0x5
	.value	0x31b
	.long	0x34
	.value	0xb68
	.uleb128 0x10
	.long	.LASF313
	.byte	0x5
	.value	0x31d
	.long	0x34
	.value	0xb6c
	.uleb128 0x10
	.long	.LASF165
	.byte	0x5
	.value	0x31e
	.long	0x34
	.value	0xb70
	.uleb128 0x10
	.long	.LASF166
	.byte	0x5
	.value	0x31f
	.long	0x34
	.value	0xb74
	.uleb128 0x10
	.long	.LASF167
	.byte	0x5
	.value	0x320
	.long	0x34
	.value	0xb78
	.uleb128 0x10
	.long	.LASF314
	.byte	0x5
	.value	0x322
	.long	0x34
	.value	0xb7c
	.uleb128 0x10
	.long	.LASF315
	.byte	0x5
	.value	0x323
	.long	0x34
	.value	0xb80
	.uleb128 0x10
	.long	.LASF316
	.byte	0x5
	.value	0x324
	.long	0x34
	.value	0xb84
	.uleb128 0x10
	.long	.LASF317
	.byte	0x5
	.value	0x327
	.long	0x1564
	.value	0xb88
	.uleb128 0x10
	.long	.LASF318
	.byte	0x5
	.value	0x328
	.long	0x34
	.value	0xc50
	.uleb128 0x10
	.long	.LASF319
	.byte	0x5
	.value	0x329
	.long	0x34
	.value	0xc54
	.uleb128 0x10
	.long	.LASF320
	.byte	0x5
	.value	0x32b
	.long	0x83
	.value	0xc58
	.uleb128 0x10
	.long	.LASF321
	.byte	0x5
	.value	0x32c
	.long	0x83
	.value	0xc60
	.uleb128 0x10
	.long	.LASF322
	.byte	0x5
	.value	0x32d
	.long	0xf6
	.value	0xc68
	.uleb128 0x10
	.long	.LASF323
	.byte	0x5
	.value	0x32e
	.long	0x83
	.value	0xc70
	.uleb128 0x10
	.long	.LASF324
	.byte	0x5
	.value	0x330
	.long	0x34
	.value	0xc78
	.uleb128 0x10
	.long	.LASF325
	.byte	0x5
	.value	0x331
	.long	0x34
	.value	0xc7c
	.uleb128 0x10
	.long	.LASF326
	.byte	0x5
	.value	0x332
	.long	0x34
	.value	0xc80
	.uleb128 0x10
	.long	.LASF327
	.byte	0x5
	.value	0x334
	.long	0x34
	.value	0xc84
	.uleb128 0x10
	.long	.LASF328
	.byte	0x5
	.value	0x335
	.long	0x34
	.value	0xc88
	.uleb128 0x10
	.long	.LASF329
	.byte	0x5
	.value	0x337
	.long	0x34
	.value	0xc8c
	.uleb128 0x10
	.long	.LASF330
	.byte	0x5
	.value	0x338
	.long	0x34
	.value	0xc90
	.uleb128 0x10
	.long	.LASF331
	.byte	0x5
	.value	0x339
	.long	0x34
	.value	0xc94
	.uleb128 0x10
	.long	.LASF332
	.byte	0x5
	.value	0x33a
	.long	0x34
	.value	0xc98
	.uleb128 0x10
	.long	.LASF333
	.byte	0x5
	.value	0x33b
	.long	0x34
	.value	0xc9c
	.uleb128 0x10
	.long	.LASF334
	.byte	0x5
	.value	0x33c
	.long	0x34
	.value	0xca0
	.uleb128 0x10
	.long	.LASF335
	.byte	0x5
	.value	0x33f
	.long	0x34
	.value	0xca4
	.uleb128 0x10
	.long	.LASF336
	.byte	0x5
	.value	0x340
	.long	0x34
	.value	0xca8
	.uleb128 0x10
	.long	.LASF337
	.byte	0x5
	.value	0x341
	.long	0x34
	.value	0xcac
	.uleb128 0x10
	.long	.LASF338
	.byte	0x5
	.value	0x342
	.long	0x34
	.value	0xcb0
	.uleb128 0x10
	.long	.LASF339
	.byte	0x5
	.value	0x343
	.long	0x34
	.value	0xcb4
	.uleb128 0x10
	.long	.LASF340
	.byte	0x5
	.value	0x345
	.long	0x34
	.value	0xcb8
	.uleb128 0x10
	.long	.LASF341
	.byte	0x5
	.value	0x346
	.long	0xe6
	.value	0xcbc
	.uleb128 0x10
	.long	.LASF342
	.byte	0x5
	.value	0x349
	.long	0x34
	.value	0xcdc
	.uleb128 0x10
	.long	.LASF343
	.byte	0x5
	.value	0x34c
	.long	0x34
	.value	0xce0
	.uleb128 0x10
	.long	.LASF344
	.byte	0x5
	.value	0x34d
	.long	0x34
	.value	0xce4
	.uleb128 0x10
	.long	.LASF345
	.byte	0x5
	.value	0x34e
	.long	0x34
	.value	0xce8
	.uleb128 0x10
	.long	.LASF346
	.byte	0x5
	.value	0x34f
	.long	0x34
	.value	0xcec
	.uleb128 0x10
	.long	.LASF347
	.byte	0x5
	.value	0x350
	.long	0x34
	.value	0xcf0
	.uleb128 0x10
	.long	.LASF348
	.byte	0x5
	.value	0x351
	.long	0x34
	.value	0xcf4
	.uleb128 0x10
	.long	.LASF349
	.byte	0x5
	.value	0x352
	.long	0x34
	.value	0xcf8
	.uleb128 0x10
	.long	.LASF350
	.byte	0x5
	.value	0x355
	.long	0x34
	.value	0xcfc
	.uleb128 0x10
	.long	.LASF351
	.byte	0x5
	.value	0x358
	.long	0x34
	.value	0xd00
	.uleb128 0x10
	.long	.LASF352
	.byte	0x5
	.value	0x35b
	.long	0x34
	.value	0xd04
	.uleb128 0x10
	.long	.LASF353
	.byte	0x5
	.value	0x35c
	.long	0x1585
	.value	0xd08
	.uleb128 0x10
	.long	.LASF354
	.byte	0x5
	.value	0x35e
	.long	0x1564
	.value	0xd38
	.uleb128 0x10
	.long	.LASF355
	.byte	0x5
	.value	0x35f
	.long	0x34
	.value	0xe00
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x1564
	.uleb128 0x5
	.long	0x75
	.byte	0x7
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.long	0x7c
	.long	0x1574
	.uleb128 0x5
	.long	0x75
	.byte	0xc7
	.byte	0
	.uleb128 0x4
	.long	0x7c
	.long	0x1585
	.uleb128 0x1a
	.long	0x75
	.value	0x3ff
	.byte	0
	.uleb128 0x4
	.long	0xb4
	.long	0x1595
	.uleb128 0x5
	.long	0x75
	.byte	0x5
	.byte	0
	.uleb128 0x11
	.long	.LASF356
	.byte	0x5
	.value	0x361
	.long	0xd46
	.uleb128 0x1b
	.long	0x11c20
	.byte	0x5
	.value	0x364
	.long	0x1f86
	.uleb128 0xf
	.long	.LASF357
	.byte	0x5
	.value	0x366
	.long	0x34
	.byte	0
	.uleb128 0x13
	.string	"pn"
	.byte	0x5
	.value	0x367
	.long	0x34
	.byte	0x4
	.uleb128 0xf
	.long	.LASF358
	.byte	0x5
	.value	0x368
	.long	0x34
	.byte	0x8
	.uleb128 0xf
	.long	.LASF359
	.byte	0x5
	.value	0x369
	.long	0x34
	.byte	0xc
	.uleb128 0xf
	.long	.LASF360
	.byte	0x5
	.value	0x36a
	.long	0x34
	.byte	0x10
	.uleb128 0xf
	.long	.LASF361
	.byte	0x5
	.value	0x36b
	.long	0x34
	.byte	0x14
	.uleb128 0xf
	.long	.LASF118
	.byte	0x5
	.value	0x36c
	.long	0x34
	.byte	0x18
	.uleb128 0xf
	.long	.LASF362
	.byte	0x5
	.value	0x36d
	.long	0x34
	.byte	0x1c
	.uleb128 0xf
	.long	.LASF222
	.byte	0x5
	.value	0x36e
	.long	0x34
	.byte	0x20
	.uleb128 0xf
	.long	.LASF363
	.byte	0x5
	.value	0x36f
	.long	0x34
	.byte	0x24
	.uleb128 0x13
	.string	"qp"
	.byte	0x5
	.value	0x370
	.long	0x34
	.byte	0x28
	.uleb128 0xf
	.long	.LASF130
	.byte	0x5
	.value	0x371
	.long	0x34
	.byte	0x2c
	.uleb128 0xf
	.long	.LASF364
	.byte	0x5
	.value	0x372
	.long	0xad
	.byte	0x30
	.uleb128 0xf
	.long	.LASF365
	.byte	0x5
	.value	0x373
	.long	0x34
	.byte	0x34
	.uleb128 0xf
	.long	.LASF366
	.byte	0x5
	.value	0x374
	.long	0x34
	.byte	0x38
	.uleb128 0xf
	.long	.LASF367
	.byte	0x5
	.value	0x375
	.long	0x34
	.byte	0x3c
	.uleb128 0xf
	.long	.LASF368
	.byte	0x5
	.value	0x376
	.long	0x34
	.byte	0x40
	.uleb128 0xf
	.long	.LASF369
	.byte	0x5
	.value	0x377
	.long	0x34
	.byte	0x44
	.uleb128 0xf
	.long	.LASF370
	.byte	0x5
	.value	0x378
	.long	0x34
	.byte	0x48
	.uleb128 0xf
	.long	.LASF371
	.byte	0x5
	.value	0x379
	.long	0x34
	.byte	0x4c
	.uleb128 0xf
	.long	.LASF372
	.byte	0x5
	.value	0x37a
	.long	0x34
	.byte	0x50
	.uleb128 0xf
	.long	.LASF373
	.byte	0x5
	.value	0x37b
	.long	0x34
	.byte	0x54
	.uleb128 0xf
	.long	.LASF374
	.byte	0x5
	.value	0x37c
	.long	0x34
	.byte	0x58
	.uleb128 0xf
	.long	.LASF375
	.byte	0x5
	.value	0x37d
	.long	0x34
	.byte	0x5c
	.uleb128 0xf
	.long	.LASF376
	.byte	0x5
	.value	0x37e
	.long	0x34
	.byte	0x60
	.uleb128 0xf
	.long	.LASF377
	.byte	0x5
	.value	0x37f
	.long	0xd28
	.byte	0x68
	.uleb128 0xf
	.long	.LASF378
	.byte	0x5
	.value	0x380
	.long	0xd28
	.byte	0x70
	.uleb128 0xf
	.long	.LASF379
	.byte	0x5
	.value	0x382
	.long	0x34
	.byte	0x78
	.uleb128 0xf
	.long	.LASF380
	.byte	0x5
	.value	0x383
	.long	0x1f86
	.byte	0x80
	.uleb128 0xf
	.long	.LASF381
	.byte	0x5
	.value	0x385
	.long	0x34
	.byte	0x88
	.uleb128 0xf
	.long	.LASF382
	.byte	0x5
	.value	0x386
	.long	0x34
	.byte	0x8c
	.uleb128 0xf
	.long	.LASF383
	.byte	0x5
	.value	0x387
	.long	0x34
	.byte	0x90
	.uleb128 0xf
	.long	.LASF384
	.byte	0x5
	.value	0x388
	.long	0x34
	.byte	0x94
	.uleb128 0xf
	.long	.LASF385
	.byte	0x5
	.value	0x389
	.long	0x34
	.byte	0x98
	.uleb128 0xf
	.long	.LASF386
	.byte	0x5
	.value	0x38a
	.long	0x34
	.byte	0x9c
	.uleb128 0xf
	.long	.LASF387
	.byte	0x5
	.value	0x38b
	.long	0x34
	.byte	0xa0
	.uleb128 0xf
	.long	.LASF388
	.byte	0x5
	.value	0x38c
	.long	0x34
	.byte	0xa4
	.uleb128 0xf
	.long	.LASF389
	.byte	0x5
	.value	0x38e
	.long	0x34
	.byte	0xa8
	.uleb128 0xf
	.long	.LASF390
	.byte	0x5
	.value	0x38f
	.long	0x34
	.byte	0xac
	.uleb128 0xf
	.long	.LASF391
	.byte	0x5
	.value	0x390
	.long	0x34
	.byte	0xb0
	.uleb128 0xf
	.long	.LASF392
	.byte	0x5
	.value	0x391
	.long	0x34
	.byte	0xb4
	.uleb128 0xf
	.long	.LASF393
	.byte	0x5
	.value	0x395
	.long	0x1f8c
	.byte	0xb8
	.uleb128 0x10
	.long	.LASF394
	.byte	0x5
	.value	0x397
	.long	0x1fa8
	.value	0x12b8
	.uleb128 0x10
	.long	.LASF395
	.byte	0x5
	.value	0x398
	.long	0x1fc4
	.value	0x1cb8
	.uleb128 0x10
	.long	.LASF396
	.byte	0x5
	.value	0x399
	.long	0x1fe0
	.value	0x2138
	.uleb128 0x17
	.string	"mpr"
	.byte	0x5
	.value	0x39a
	.long	0x2002
	.value	0x3138
	.uleb128 0x17
	.string	"m7"
	.byte	0x5
	.value	0x39b
	.long	0x2018
	.value	0x3338
	.uleb128 0x10
	.long	.LASF397
	.byte	0x5
	.value	0x39d
	.long	0x202e
	.value	0x3738
	.uleb128 0x10
	.long	.LASF398
	.byte	0x5
	.value	0x39e
	.long	0x1f86
	.value	0x3740
	.uleb128 0x10
	.long	.LASF399
	.byte	0x5
	.value	0x3a0
	.long	0x2034
	.value	0x3748
	.uleb128 0x10
	.long	.LASF400
	.byte	0x5
	.value	0x3a1
	.long	0xd16
	.value	0x3750
	.uleb128 0x10
	.long	.LASF401
	.byte	0x5
	.value	0x3a2
	.long	0x203a
	.value	0x3758
	.uleb128 0x10
	.long	.LASF402
	.byte	0x5
	.value	0x3a3
	.long	0x2040
	.value	0x3760
	.uleb128 0x1c
	.long	.LASF403
	.byte	0x5
	.value	0x3a5
	.long	0x83
	.long	0x11860
	.uleb128 0x1c
	.long	.LASF404
	.byte	0x5
	.value	0x3a6
	.long	0x83
	.long	0x11868
	.uleb128 0x1d
	.string	"tr"
	.byte	0x5
	.value	0x3a8
	.long	0x34
	.long	0x11870
	.uleb128 0x1c
	.long	.LASF405
	.byte	0x5
	.value	0x3a9
	.long	0x34
	.long	0x11874
	.uleb128 0x1c
	.long	.LASF406
	.byte	0x5
	.value	0x3aa
	.long	0x49
	.long	0x11878
	.uleb128 0x1c
	.long	.LASF407
	.byte	0x5
	.value	0x3ab
	.long	0x49
	.long	0x1187c
	.uleb128 0x1c
	.long	.LASF408
	.byte	0x5
	.value	0x3ac
	.long	0x2051
	.long	0x11880
	.uleb128 0x1c
	.long	.LASF409
	.byte	0x5
	.value	0x3ad
	.long	0x34
	.long	0x118c0
	.uleb128 0x1c
	.long	.LASF410
	.byte	0x5
	.value	0x3ae
	.long	0x34
	.long	0x118c4
	.uleb128 0x1c
	.long	.LASF411
	.byte	0x5
	.value	0x3af
	.long	0x34
	.long	0x118c8
	.uleb128 0x1c
	.long	.LASF412
	.byte	0x5
	.value	0x3b0
	.long	0x34
	.long	0x118cc
	.uleb128 0x1c
	.long	.LASF413
	.byte	0x5
	.value	0x3b1
	.long	0x34
	.long	0x118d0
	.uleb128 0x1c
	.long	.LASF414
	.byte	0x5
	.value	0x3b4
	.long	0xb4
	.long	0x118d8
	.uleb128 0x1c
	.long	.LASF415
	.byte	0x5
	.value	0x3b5
	.long	0x34
	.long	0x118e0
	.uleb128 0x1c
	.long	.LASF416
	.byte	0x5
	.value	0x3b6
	.long	0x34
	.long	0x118e4
	.uleb128 0x1c
	.long	.LASF417
	.byte	0x5
	.value	0x3b7
	.long	0x34
	.long	0x118e8
	.uleb128 0x1c
	.long	.LASF418
	.byte	0x5
	.value	0x3b8
	.long	0x34
	.long	0x118ec
	.uleb128 0x1c
	.long	.LASF419
	.byte	0x5
	.value	0x3ba
	.long	0x2067
	.long	0x118f0
	.uleb128 0x1c
	.long	.LASF420
	.byte	0x5
	.value	0x3bb
	.long	0x2067
	.long	0x118f8
	.uleb128 0x1c
	.long	.LASF421
	.byte	0x5
	.value	0x3bd
	.long	0x2067
	.long	0x11900
	.uleb128 0x1c
	.long	.LASF422
	.byte	0x5
	.value	0x3be
	.long	0x2067
	.long	0x11908
	.uleb128 0x1c
	.long	.LASF158
	.byte	0x5
	.value	0x3bf
	.long	0x208b
	.long	0x11910
	.uleb128 0x1c
	.long	.LASF165
	.byte	0x5
	.value	0x3c3
	.long	0x34
	.long	0x11930
	.uleb128 0x1c
	.long	.LASF166
	.byte	0x5
	.value	0x3c4
	.long	0x34
	.long	0x11934
	.uleb128 0x1c
	.long	.LASF167
	.byte	0x5
	.value	0x3c5
	.long	0x34
	.long	0x11938
	.uleb128 0x1c
	.long	.LASF249
	.byte	0x5
	.value	0x3c7
	.long	0x34
	.long	0x1193c
	.uleb128 0x1c
	.long	.LASF423
	.byte	0x5
	.value	0x3c9
	.long	0x34
	.long	0x11940
	.uleb128 0x1c
	.long	.LASF424
	.byte	0x5
	.value	0x3ca
	.long	0x34
	.long	0x11944
	.uleb128 0x1c
	.long	.LASF425
	.byte	0x5
	.value	0x3cc
	.long	0x34
	.long	0x11948
	.uleb128 0x1c
	.long	.LASF426
	.byte	0x5
	.value	0x3cd
	.long	0x34
	.long	0x1194c
	.uleb128 0x1c
	.long	.LASF427
	.byte	0x5
	.value	0x3ce
	.long	0x209b
	.long	0x11950
	.uleb128 0x1c
	.long	.LASF428
	.byte	0x5
	.value	0x3cf
	.long	0x34
	.long	0x11ab8
	.uleb128 0x1c
	.long	.LASF429
	.byte	0x5
	.value	0x3d0
	.long	0x34
	.long	0x11abc
	.uleb128 0x1c
	.long	.LASF430
	.byte	0x5
	.value	0x3d2
	.long	0x34
	.long	0x11ac0
	.uleb128 0x1c
	.long	.LASF431
	.byte	0x5
	.value	0x3d3
	.long	0x34
	.long	0x11ac4
	.uleb128 0x1c
	.long	.LASF432
	.byte	0x5
	.value	0x3d4
	.long	0x34
	.long	0x11ac8
	.uleb128 0x1c
	.long	.LASF433
	.byte	0x5
	.value	0x3d6
	.long	0x34
	.long	0x11acc
	.uleb128 0x1c
	.long	.LASF434
	.byte	0x5
	.value	0x3d8
	.long	0x34
	.long	0x11ad0
	.uleb128 0x1c
	.long	.LASF328
	.byte	0x5
	.value	0x3dc
	.long	0x49
	.long	0x11ad4
	.uleb128 0x1c
	.long	.LASF435
	.byte	0x5
	.value	0x3e0
	.long	0x49
	.long	0x11ad8
	.uleb128 0x1c
	.long	.LASF436
	.byte	0x5
	.value	0x3e1
	.long	0x34
	.long	0x11adc
	.uleb128 0x1c
	.long	.LASF437
	.byte	0x5
	.value	0x3e2
	.long	0x34
	.long	0x11ae0
	.uleb128 0x1c
	.long	.LASF438
	.byte	0x5
	.value	0x3e3
	.long	0x49
	.long	0x11ae4
	.uleb128 0x1c
	.long	.LASF439
	.byte	0x5
	.value	0x3e4
	.long	0x20b1
	.long	0x11ae8
	.uleb128 0x1c
	.long	.LASF440
	.byte	0x5
	.value	0x3e9
	.long	0x49
	.long	0x11aec
	.uleb128 0x1c
	.long	.LASF441
	.byte	0x5
	.value	0x3ea
	.long	0x34
	.long	0x11af0
	.uleb128 0x1c
	.long	.LASF442
	.byte	0x5
	.value	0x3ec
	.long	0x65
	.long	0x11af4
	.uleb128 0x1c
	.long	.LASF443
	.byte	0x5
	.value	0x3f0
	.long	0x49
	.long	0x11afc
	.uleb128 0x1c
	.long	.LASF444
	.byte	0x5
	.value	0x3f1
	.long	0x34
	.long	0x11b00
	.uleb128 0x1c
	.long	.LASF445
	.byte	0x5
	.value	0x3f2
	.long	0x34
	.long	0x11b04
	.uleb128 0x1c
	.long	.LASF446
	.byte	0x5
	.value	0x3f3
	.long	0x34
	.long	0x11b08
	.uleb128 0x1c
	.long	.LASF447
	.byte	0x5
	.value	0x3f4
	.long	0x34
	.long	0x11b0c
	.uleb128 0x1c
	.long	.LASF448
	.byte	0x5
	.value	0x3f5
	.long	0x49
	.long	0x11b10
	.uleb128 0x1c
	.long	.LASF449
	.byte	0x5
	.value	0x3f7
	.long	0x49
	.long	0x11b14
	.uleb128 0x1c
	.long	.LASF450
	.byte	0x5
	.value	0x3f8
	.long	0x49
	.long	0x11b18
	.uleb128 0x1c
	.long	.LASF451
	.byte	0x5
	.value	0x3f9
	.long	0x49
	.long	0x11b1c
	.uleb128 0x1c
	.long	.LASF452
	.byte	0x5
	.value	0x3fa
	.long	0x49
	.long	0x11b20
	.uleb128 0x1c
	.long	.LASF453
	.byte	0x5
	.value	0x3fb
	.long	0x49
	.long	0x11b24
	.uleb128 0x1c
	.long	.LASF454
	.byte	0x5
	.value	0x3fc
	.long	0x49
	.long	0x11b28
	.uleb128 0x1c
	.long	.LASF455
	.byte	0x5
	.value	0x3ff
	.long	0x49
	.long	0x11b2c
	.uleb128 0x1c
	.long	.LASF456
	.byte	0x5
	.value	0x403
	.long	0x34
	.long	0x11b30
	.uleb128 0x1c
	.long	.LASF457
	.byte	0x5
	.value	0x405
	.long	0x34
	.long	0x11b34
	.uleb128 0x1c
	.long	.LASF458
	.byte	0x5
	.value	0x406
	.long	0x34
	.long	0x11b38
	.uleb128 0x1c
	.long	.LASF459
	.byte	0x5
	.value	0x407
	.long	0x34
	.long	0x11b3c
	.uleb128 0x1c
	.long	.LASF460
	.byte	0x5
	.value	0x409
	.long	0x20c1
	.long	0x11b40
	.uleb128 0x1c
	.long	.LASF330
	.byte	0x5
	.value	0x40b
	.long	0x34
	.long	0x11b48
	.uleb128 0x1c
	.long	.LASF461
	.byte	0x5
	.value	0x40f
	.long	0x34
	.long	0x11b4c
	.uleb128 0x1c
	.long	.LASF462
	.byte	0x5
	.value	0x410
	.long	0x34
	.long	0x11b50
	.uleb128 0x1c
	.long	.LASF463
	.byte	0x5
	.value	0x411
	.long	0x34
	.long	0x11b54
	.uleb128 0x1c
	.long	.LASF464
	.byte	0x5
	.value	0x412
	.long	0x34
	.long	0x11b58
	.uleb128 0x1c
	.long	.LASF465
	.byte	0x5
	.value	0x413
	.long	0xb4
	.long	0x11b60
	.uleb128 0x1c
	.long	.LASF466
	.byte	0x5
	.value	0x414
	.long	0x34
	.long	0x11b68
	.uleb128 0x1c
	.long	.LASF467
	.byte	0x5
	.value	0x415
	.long	0x34
	.long	0x11b6c
	.uleb128 0x1c
	.long	.LASF468
	.byte	0x5
	.value	0x416
	.long	0x34
	.long	0x11b70
	.uleb128 0x1c
	.long	.LASF469
	.byte	0x5
	.value	0x417
	.long	0x34
	.long	0x11b74
	.uleb128 0x1c
	.long	.LASF470
	.byte	0x5
	.value	0x418
	.long	0x34
	.long	0x11b78
	.uleb128 0x1c
	.long	.LASF471
	.byte	0x5
	.value	0x419
	.long	0x34
	.long	0x11b7c
	.uleb128 0x1c
	.long	.LASF472
	.byte	0x5
	.value	0x41a
	.long	0x34
	.long	0x11b80
	.uleb128 0x1c
	.long	.LASF473
	.byte	0x5
	.value	0x41b
	.long	0x20c7
	.long	0x11b88
	.uleb128 0x1c
	.long	.LASF474
	.byte	0x5
	.value	0x41c
	.long	0x34
	.long	0x11b90
	.uleb128 0x1c
	.long	.LASF475
	.byte	0x5
	.value	0x41d
	.long	0x34
	.long	0x11b94
	.uleb128 0x1c
	.long	.LASF476
	.byte	0x5
	.value	0x41e
	.long	0x34
	.long	0x11b98
	.uleb128 0x1c
	.long	.LASF477
	.byte	0x5
	.value	0x41f
	.long	0x34
	.long	0x11b9c
	.uleb128 0x1c
	.long	.LASF478
	.byte	0x5
	.value	0x420
	.long	0x34
	.long	0x11ba0
	.uleb128 0x1c
	.long	.LASF479
	.byte	0x5
	.value	0x421
	.long	0x34
	.long	0x11ba4
	.uleb128 0x1c
	.long	.LASF480
	.byte	0x5
	.value	0x422
	.long	0x34
	.long	0x11ba8
	.uleb128 0x1c
	.long	.LASF481
	.byte	0x5
	.value	0x423
	.long	0x34
	.long	0x11bac
	.uleb128 0x1c
	.long	.LASF482
	.byte	0x5
	.value	0x424
	.long	0x34
	.long	0x11bb0
	.uleb128 0x1c
	.long	.LASF483
	.byte	0x5
	.value	0x425
	.long	0x34
	.long	0x11bb4
	.uleb128 0x1c
	.long	.LASF484
	.byte	0x5
	.value	0x426
	.long	0x34
	.long	0x11bb8
	.uleb128 0x1c
	.long	.LASF485
	.byte	0x5
	.value	0x428
	.long	0x34
	.long	0x11bbc
	.uleb128 0x1c
	.long	.LASF486
	.byte	0x5
	.value	0x42a
	.long	0x34
	.long	0x11bc0
	.uleb128 0x1c
	.long	.LASF487
	.byte	0x5
	.value	0x42b
	.long	0x34
	.long	0x11bc4
	.uleb128 0x1c
	.long	.LASF488
	.byte	0x5
	.value	0x42c
	.long	0x34
	.long	0x11bc8
	.uleb128 0x1c
	.long	.LASF326
	.byte	0x5
	.value	0x42e
	.long	0x34
	.long	0x11bcc
	.uleb128 0x1c
	.long	.LASF489
	.byte	0x5
	.value	0x430
	.long	0x34
	.long	0x11bd0
	.uleb128 0x1c
	.long	.LASF490
	.byte	0x5
	.value	0x431
	.long	0x34
	.long	0x11bd4
	.uleb128 0x1c
	.long	.LASF491
	.byte	0x5
	.value	0x432
	.long	0x34
	.long	0x11bd8
	.uleb128 0x1c
	.long	.LASF492
	.byte	0x5
	.value	0x433
	.long	0x34
	.long	0x11bdc
	.uleb128 0x1c
	.long	.LASF493
	.byte	0x5
	.value	0x434
	.long	0x34
	.long	0x11be0
	.uleb128 0x1c
	.long	.LASF494
	.byte	0x5
	.value	0x435
	.long	0x34
	.long	0x11be4
	.uleb128 0x1c
	.long	.LASF495
	.byte	0x5
	.value	0x436
	.long	0x49
	.long	0x11be8
	.uleb128 0x1c
	.long	.LASF496
	.byte	0x5
	.value	0x437
	.long	0x34
	.long	0x11bec
	.uleb128 0x1c
	.long	.LASF497
	.byte	0x5
	.value	0x438
	.long	0x34
	.long	0x11bf0
	.uleb128 0x1c
	.long	.LASF498
	.byte	0x5
	.value	0x43a
	.long	0x34
	.long	0x11bf4
	.uleb128 0x1c
	.long	.LASF499
	.byte	0x5
	.value	0x43b
	.long	0x34
	.long	0x11bf8
	.uleb128 0x1c
	.long	.LASF231
	.byte	0x5
	.value	0x43c
	.long	0x34
	.long	0x11bfc
	.uleb128 0x1c
	.long	.LASF500
	.byte	0x5
	.value	0x43d
	.long	0x34
	.long	0x11c00
	.uleb128 0x1c
	.long	.LASF501
	.byte	0x5
	.value	0x43e
	.long	0x34
	.long	0x11c04
	.uleb128 0x1c
	.long	.LASF502
	.byte	0x5
	.value	0x43f
	.long	0x34
	.long	0x11c08
	.uleb128 0x1c
	.long	.LASF503
	.byte	0x5
	.value	0x441
	.long	0x65
	.long	0x11c0c
	.uleb128 0x1c
	.long	.LASF351
	.byte	0x5
	.value	0x444
	.long	0x34
	.long	0x11c14
	.uleb128 0x1c
	.long	.LASF504
	.byte	0x5
	.value	0x446
	.long	0x34
	.long	0x11c18
	.uleb128 0x1c
	.long	.LASF505
	.byte	0x5
	.value	0x447
	.long	0x34
	.long	0x11c1c
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xd28
	.uleb128 0x4
	.long	0x42
	.long	0x1fa8
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
	.long	0x1fc4
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
	.long	0x1fe0
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
	.long	0x2002
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
	.long	0x2018
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x202e
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.uleb128 0x5
	.long	0x75
	.byte	0xf
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1f86
	.uleb128 0x6
	.byte	0x8
	.long	0xd1c
	.uleb128 0x6
	.byte	0x8
	.long	0xa22
	.uleb128 0x4
	.long	0x754
	.long	0x2051
	.uleb128 0x1a
	.long	0x75
	.value	0x4af
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x2067
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x206d
	.uleb128 0x6
	.byte	0x8
	.long	0x2073
	.uleb128 0x6
	.byte	0x8
	.long	0x2079
	.uleb128 0x6
	.byte	0x8
	.long	0x207f
	.uleb128 0x6
	.byte	0x8
	.long	0x2085
	.uleb128 0x6
	.byte	0x8
	.long	0x57
	.uleb128 0x4
	.long	0x57
	.long	0x209b
	.uleb128 0x5
	.long	0x75
	.byte	0xe
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x20b1
	.uleb128 0x5
	.long	0x75
	.byte	0x5
	.uleb128 0x5
	.long	0x75
	.byte	0xe
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x20c1
	.uleb128 0x5
	.long	0x75
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x67e
	.uleb128 0x6
	.byte	0x8
	.long	0xb4
	.uleb128 0x11
	.long	.LASF506
	.byte	0x5
	.value	0x449
	.long	0x15a1
	.uleb128 0x1e
	.long	.LASF507
	.value	0x19b8
	.byte	0x6
	.byte	0x15
	.long	0x234f
	.uleb128 0xc
	.long	.LASF362
	.byte	0x6
	.byte	0x17
	.long	0x203
	.byte	0
	.uleb128 0xd
	.string	"poc"
	.byte	0x6
	.byte	0x19
	.long	0x34
	.byte	0x4
	.uleb128 0xc
	.long	.LASF508
	.byte	0x6
	.byte	0x1a
	.long	0x34
	.byte	0x8
	.uleb128 0xc
	.long	.LASF509
	.byte	0x6
	.byte	0x1b
	.long	0x34
	.byte	0xc
	.uleb128 0xc
	.long	.LASF510
	.byte	0x6
	.byte	0x1c
	.long	0x34
	.byte	0x10
	.uleb128 0xc
	.long	.LASF511
	.byte	0x6
	.byte	0x1d
	.long	0x34
	.byte	0x14
	.uleb128 0xc
	.long	.LASF512
	.byte	0x6
	.byte	0x1e
	.long	0x234f
	.byte	0x18
	.uleb128 0x1f
	.long	.LASF513
	.byte	0x6
	.byte	0x1f
	.long	0x234f
	.value	0x648
	.uleb128 0x1f
	.long	.LASF514
	.byte	0x6
	.byte	0x20
	.long	0x234f
	.value	0xc78
	.uleb128 0x1f
	.long	.LASF515
	.byte	0x6
	.byte	0x21
	.long	0x234f
	.value	0x12a8
	.uleb128 0x1f
	.long	.LASF448
	.byte	0x6
	.byte	0x22
	.long	0x49
	.value	0x18d8
	.uleb128 0x1f
	.long	.LASF516
	.byte	0x6
	.byte	0x23
	.long	0x34
	.value	0x18dc
	.uleb128 0x1f
	.long	.LASF113
	.byte	0x6
	.byte	0x24
	.long	0x34
	.value	0x18e0
	.uleb128 0x1f
	.long	.LASF114
	.byte	0x6
	.byte	0x25
	.long	0x34
	.value	0x18e4
	.uleb128 0x1f
	.long	.LASF517
	.byte	0x6
	.byte	0x27
	.long	0x34
	.value	0x18e8
	.uleb128 0x1f
	.long	.LASF518
	.byte	0x6
	.byte	0x28
	.long	0x34
	.value	0x18ec
	.uleb128 0x1f
	.long	.LASF519
	.byte	0x6
	.byte	0x29
	.long	0x34
	.value	0x18f0
	.uleb128 0x1f
	.long	.LASF520
	.byte	0x6
	.byte	0x2a
	.long	0x34
	.value	0x18f4
	.uleb128 0x1f
	.long	.LASF521
	.byte	0x6
	.byte	0x2c
	.long	0x34
	.value	0x18f8
	.uleb128 0x1f
	.long	.LASF522
	.byte	0x6
	.byte	0x2c
	.long	0x34
	.value	0x18fc
	.uleb128 0x1f
	.long	.LASF523
	.byte	0x6
	.byte	0x2c
	.long	0x34
	.value	0x1900
	.uleb128 0x1f
	.long	.LASF524
	.byte	0x6
	.byte	0x2c
	.long	0x34
	.value	0x1904
	.uleb128 0x1f
	.long	.LASF525
	.byte	0x6
	.byte	0x2d
	.long	0x34
	.value	0x1908
	.uleb128 0x1f
	.long	.LASF526
	.byte	0x6
	.byte	0x2e
	.long	0x34
	.value	0x190c
	.uleb128 0x1f
	.long	.LASF434
	.byte	0x6
	.byte	0x2f
	.long	0x34
	.value	0x1910
	.uleb128 0x1f
	.long	.LASF527
	.byte	0x6
	.byte	0x31
	.long	0xd34
	.value	0x1918
	.uleb128 0x1f
	.long	.LASF528
	.byte	0x6
	.byte	0x32
	.long	0xd3a
	.value	0x1920
	.uleb128 0x1f
	.long	.LASF529
	.byte	0x6
	.byte	0x33
	.long	0xd3a
	.value	0x1928
	.uleb128 0x1f
	.long	.LASF530
	.byte	0x6
	.byte	0x34
	.long	0xd34
	.value	0x1930
	.uleb128 0x1f
	.long	.LASF531
	.byte	0x6
	.byte	0x35
	.long	0xd34
	.value	0x1938
	.uleb128 0x1f
	.long	.LASF532
	.byte	0x6
	.byte	0x36
	.long	0xd2e
	.value	0x1940
	.uleb128 0x1f
	.long	.LASF146
	.byte	0x6
	.byte	0x38
	.long	0xf6
	.value	0x1948
	.uleb128 0x1f
	.long	.LASF533
	.byte	0x6
	.byte	0x3a
	.long	0x2079
	.value	0x1950
	.uleb128 0x1f
	.long	.LASF534
	.byte	0x6
	.byte	0x3c
	.long	0x2365
	.value	0x1958
	.uleb128 0x1f
	.long	.LASF535
	.byte	0x6
	.byte	0x3f
	.long	0x2365
	.value	0x1960
	.uleb128 0x20
	.string	"mv"
	.byte	0x6
	.byte	0x42
	.long	0x2073
	.value	0x1968
	.uleb128 0x1f
	.long	.LASF536
	.byte	0x6
	.byte	0x44
	.long	0xd40
	.value	0x1970
	.uleb128 0x1f
	.long	.LASF537
	.byte	0x6
	.byte	0x45
	.long	0xd40
	.value	0x1978
	.uleb128 0x1f
	.long	.LASF426
	.byte	0x6
	.byte	0x47
	.long	0x2377
	.value	0x1980
	.uleb128 0x1f
	.long	.LASF538
	.byte	0x6
	.byte	0x48
	.long	0x2377
	.value	0x1988
	.uleb128 0x1f
	.long	.LASF539
	.byte	0x6
	.byte	0x49
	.long	0x2377
	.value	0x1990
	.uleb128 0x1f
	.long	.LASF540
	.byte	0x6
	.byte	0x4b
	.long	0x34
	.value	0x1998
	.uleb128 0x1f
	.long	.LASF541
	.byte	0x6
	.byte	0x4c
	.long	0x34
	.value	0x199c
	.uleb128 0x1f
	.long	.LASF542
	.byte	0x6
	.byte	0x4d
	.long	0x34
	.value	0x19a0
	.uleb128 0x1f
	.long	.LASF543
	.byte	0x6
	.byte	0x4e
	.long	0x34
	.value	0x19a4
	.uleb128 0x1f
	.long	.LASF544
	.byte	0x6
	.byte	0x4f
	.long	0x34
	.value	0x19a8
	.uleb128 0x1f
	.long	.LASF545
	.byte	0x6
	.byte	0x50
	.long	0x34
	.value	0x19ac
	.uleb128 0x1f
	.long	.LASF546
	.byte	0x6
	.byte	0x51
	.long	0x34
	.value	0x19b0
	.byte	0
	.uleb128 0x4
	.long	0xfc
	.long	0x2365
	.uleb128 0x5
	.long	0x75
	.byte	0x5
	.uleb128 0x5
	.long	0x75
	.byte	0x20
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x236b
	.uleb128 0x6
	.byte	0x8
	.long	0x2371
	.uleb128 0x6
	.byte	0x8
	.long	0xfc
	.uleb128 0x6
	.byte	0x8
	.long	0x20d9
	.uleb128 0x7
	.long	.LASF547
	.byte	0x6
	.byte	0x52
	.long	0x20d9
	.uleb128 0x6
	.byte	0x8
	.long	0x237d
	.uleb128 0x21
	.long	.LASF551
	.byte	0x1
	.byte	0xd9
	.long	0x34
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x23f5
	.uleb128 0x22
	.long	.LASF548
	.byte	0x1
	.byte	0xd9
	.long	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x22
	.long	.LASF549
	.byte	0x1
	.byte	0xd9
	.long	0x83
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x23
	.string	"cbp"
	.byte	0x1
	.byte	0xdb
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.string	"b8"
	.byte	0x1
	.byte	0xdb
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x24
	.long	.LASF550
	.byte	0x1
	.byte	0xdb
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x21
	.long	.LASF552
	.byte	0x1
	.byte	0xf2
	.long	0x34
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x26dd
	.uleb128 0x25
	.string	"b8"
	.byte	0x1
	.byte	0xf2
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1172
	.uleb128 0x22
	.long	.LASF548
	.byte	0x1
	.byte	0xf2
	.long	0xb4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1184
	.uleb128 0x22
	.long	.LASF549
	.byte	0x1
	.byte	0xf2
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1192
	.uleb128 0x24
	.long	.LASF553
	.byte	0x1
	.byte	0xf4
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1136
	.uleb128 0x24
	.long	.LASF554
	.byte	0x1
	.byte	0xf4
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1132
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.byte	0xf4
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1128
	.uleb128 0x23
	.string	"j"
	.byte	0x1
	.byte	0xf4
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1124
	.uleb128 0x23
	.string	"k"
	.byte	0x1
	.byte	0xf4
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1120
	.uleb128 0x23
	.string	"x"
	.byte	0x1
	.byte	0xf4
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1116
	.uleb128 0x23
	.string	"y"
	.byte	0x1
	.byte	0xf4
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1112
	.uleb128 0x24
	.long	.LASF555
	.byte	0x1
	.byte	0xf4
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1044
	.uleb128 0x24
	.long	.LASF556
	.byte	0x1
	.byte	0xf4
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1156
	.uleb128 0x24
	.long	.LASF557
	.byte	0x1
	.byte	0xf5
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1152
	.uleb128 0x24
	.long	.LASF558
	.byte	0x1
	.byte	0xf5
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1108
	.uleb128 0x24
	.long	.LASF559
	.byte	0x1
	.byte	0xf5
	.long	0x26dd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -800
	.uleb128 0x24
	.long	.LASF560
	.byte	0x1
	.byte	0xf6
	.long	0x26ed
	.uleb128 0x3
	.byte	0x91
	.sleb128 -928
	.uleb128 0x24
	.long	.LASF561
	.byte	0x1
	.byte	0xf7
	.long	0xb4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1008
	.uleb128 0x24
	.long	.LASF562
	.byte	0x1
	.byte	0xf8
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1024
	.uleb128 0x24
	.long	.LASF563
	.byte	0x1
	.byte	0xf8
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1020
	.uleb128 0x24
	.long	.LASF383
	.byte	0x1
	.byte	0xf9
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1084
	.uleb128 0x24
	.long	.LASF384
	.byte	0x1
	.byte	0xfa
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1080
	.uleb128 0x24
	.long	.LASF564
	.byte	0x1
	.byte	0xfb
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1076
	.uleb128 0x24
	.long	.LASF565
	.byte	0x1
	.byte	0xfc
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.uleb128 0x24
	.long	.LASF566
	.byte	0x1
	.byte	0xfd
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1068
	.uleb128 0x24
	.long	.LASF567
	.byte	0x1
	.byte	0xfe
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1064
	.uleb128 0x24
	.long	.LASF568
	.byte	0x1
	.byte	0xff
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1060
	.uleb128 0x26
	.long	.LASF569
	.byte	0x1
	.value	0x100
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1056
	.uleb128 0x26
	.long	.LASF570
	.byte	0x1
	.value	0x101
	.long	0xb4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1016
	.uleb128 0x26
	.long	.LASF571
	.byte	0x1
	.value	0x102
	.long	0xd34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1000
	.uleb128 0x27
	.long	.LASF633
	.byte	0x1
	.value	0x103
	.long	0x202e
	.uleb128 0x26
	.long	.LASF572
	.byte	0x1
	.value	0x105
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1148
	.uleb128 0x26
	.long	.LASF573
	.byte	0x1
	.value	0x105
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1144
	.uleb128 0x26
	.long	.LASF574
	.byte	0x1
	.value	0x105
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1140
	.uleb128 0x26
	.long	.LASF575
	.byte	0x1
	.value	0x107
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1104
	.uleb128 0x26
	.long	.LASF576
	.byte	0x1
	.value	0x108
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1100
	.uleb128 0x26
	.long	.LASF577
	.byte	0x1
	.value	0x109
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1048
	.uleb128 0x26
	.long	.LASF578
	.byte	0x1
	.value	0x10b
	.long	0x5c9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -992
	.uleb128 0x26
	.long	.LASF579
	.byte	0x1
	.value	0x10c
	.long	0x5c9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -960
	.uleb128 0x26
	.long	.LASF580
	.byte	0x1
	.value	0x10f
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1032
	.uleb128 0x26
	.long	.LASF581
	.byte	0x1
	.value	0x10f
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1036
	.uleb128 0x26
	.long	.LASF582
	.byte	0x1
	.value	0x10f
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1040
	.uleb128 0x26
	.long	.LASF583
	.byte	0x1
	.value	0x110
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1096
	.uleb128 0x26
	.long	.LASF584
	.byte	0x1
	.value	0x110
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1092
	.uleb128 0x26
	.long	.LASF585
	.byte	0x1
	.value	0x110
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1028
	.uleb128 0x28
	.string	"b4"
	.byte	0x1
	.value	0x110
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1088
	.uleb128 0x26
	.long	.LASF586
	.byte	0x1
	.value	0x111
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1052
	.uleb128 0x26
	.long	.LASF587
	.byte	0x1
	.value	0x112
	.long	0x2703
	.uleb128 0x3
	.byte	0x91
	.sleb128 -544
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x26ed
	.uleb128 0x5
	.long	0x75
	.byte	0x3f
	.byte	0
	.uleb128 0x4
	.long	0x42
	.long	0x2703
	.uleb128 0x5
	.long	0x75
	.byte	0x7
	.uleb128 0x5
	.long	0x75
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x2725
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
	.byte	0x3
	.byte	0
	.uleb128 0x29
	.long	.LASF602
	.byte	0x1
	.value	0x2b5
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x288f
	.uleb128 0x2a
	.long	.LASF588
	.byte	0x1
	.value	0x2b5
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -516
	.uleb128 0x2a
	.long	.LASF589
	.byte	0x1
	.value	0x2b5
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -520
	.uleb128 0x2a
	.long	.LASF572
	.byte	0x1
	.value	0x2b5
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -528
	.uleb128 0x2a
	.long	.LASF573
	.byte	0x1
	.value	0x2b5
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -536
	.uleb128 0x2a
	.long	.LASF574
	.byte	0x1
	.value	0x2b5
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -544
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x2b7
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -512
	.uleb128 0x28
	.string	"j"
	.byte	0x1
	.value	0x2b7
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -508
	.uleb128 0x28
	.string	"s0"
	.byte	0x1
	.value	0x2b8
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -504
	.uleb128 0x26
	.long	.LASF590
	.byte	0x1
	.value	0x2b9
	.long	0x288f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -368
	.uleb128 0x26
	.long	.LASF527
	.byte	0x1
	.value	0x2ba
	.long	0xd34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -472
	.uleb128 0x26
	.long	.LASF591
	.byte	0x1
	.value	0x2bc
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -484
	.uleb128 0x26
	.long	.LASF592
	.byte	0x1
	.value	0x2bd
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -480
	.uleb128 0x26
	.long	.LASF593
	.byte	0x1
	.value	0x2be
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -476
	.uleb128 0x26
	.long	.LASF594
	.byte	0x1
	.value	0x2c0
	.long	0x289f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x26
	.long	.LASF595
	.byte	0x1
	.value	0x2c1
	.long	0x5c9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -464
	.uleb128 0x26
	.long	.LASF596
	.byte	0x1
	.value	0x2c1
	.long	0x5c9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -432
	.uleb128 0x26
	.long	.LASF597
	.byte	0x1
	.value	0x2c1
	.long	0x5c9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -400
	.uleb128 0x26
	.long	.LASF598
	.byte	0x1
	.value	0x2c3
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -500
	.uleb128 0x26
	.long	.LASF599
	.byte	0x1
	.value	0x2c4
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -496
	.uleb128 0x26
	.long	.LASF600
	.byte	0x1
	.value	0x2c5
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -492
	.uleb128 0x26
	.long	.LASF601
	.byte	0x1
	.value	0x2c6
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -488
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x289f
	.uleb128 0x5
	.long	0x75
	.byte	0x18
	.byte	0
	.uleb128 0x4
	.long	0x5c9
	.long	0x28af
	.uleb128 0x5
	.long	0x75
	.byte	0x7
	.byte	0
	.uleb128 0x2b
	.long	.LASF603
	.byte	0x1
	.value	0x514
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x292c
	.uleb128 0x2a
	.long	.LASF590
	.byte	0x1
	.value	0x514
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2a
	.long	.LASF604
	.byte	0x1
	.value	0x514
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x2a
	.long	.LASF605
	.byte	0x1
	.value	0x514
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2a
	.long	.LASF606
	.byte	0x1
	.value	0x514
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x516
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x26
	.long	.LASF607
	.byte	0x1
	.value	0x517
	.long	0x288f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.byte	0
	.uleb128 0x2c
	.long	.LASF608
	.byte	0x1
	.value	0x55d
	.long	0xb4
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x2ae5
	.uleb128 0x2a
	.long	.LASF558
	.byte	0x1
	.value	0x55d
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2d
	.string	"b8"
	.byte	0x1
	.value	0x55d
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x2a
	.long	.LASF553
	.byte	0x1
	.value	0x55d
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2a
	.long	.LASF548
	.byte	0x1
	.value	0x55d
	.long	0xb4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2a
	.long	.LASF570
	.byte	0x1
	.value	0x55d
	.long	0xb4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x2a
	.long	.LASF577
	.byte	0x1
	.value	0x55d
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x26
	.long	.LASF561
	.byte	0x1
	.value	0x55f
	.long	0xb4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.long	.LASF556
	.byte	0x1
	.value	0x560
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x28
	.string	"x"
	.byte	0x1
	.value	0x560
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x28
	.string	"y"
	.byte	0x1
	.value	0x560
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x26
	.long	.LASF583
	.byte	0x1
	.value	0x560
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x26
	.long	.LASF584
	.byte	0x1
	.value	0x561
	.long	0xfc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x26
	.long	.LASF383
	.byte	0x1
	.value	0x562
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x26
	.long	.LASF384
	.byte	0x1
	.value	0x563
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x26
	.long	.LASF564
	.byte	0x1
	.value	0x564
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x26
	.long	.LASF565
	.byte	0x1
	.value	0x565
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x26
	.long	.LASF567
	.byte	0x1
	.value	0x566
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x26
	.long	.LASF571
	.byte	0x1
	.value	0x567
	.long	0xd34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x26
	.long	.LASF527
	.byte	0x1
	.value	0x568
	.long	0xd34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x26
	.long	.LASF609
	.byte	0x1
	.value	0x56a
	.long	0xd16
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.long	.LASF610
	.byte	0x1
	.value	0x56b
	.long	0x203a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x26
	.long	.LASF611
	.byte	0x1
	.value	0x56c
	.long	0xb22
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.long	.LASF612
	.byte	0x1
	.value	0x56d
	.long	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.long	.LASF613
	.byte	0x1
	.value	0x56e
	.long	0xc4d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2e
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x28
	.string	"b4"
	.byte	0x1
	.value	0x599
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	.LASF614
	.byte	0x1
	.value	0x5be
	.long	0x34
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x2d91
	.uleb128 0x2d
	.string	"b8"
	.byte	0x1
	.value	0x5be
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -484
	.uleb128 0x2a
	.long	.LASF615
	.byte	0x1
	.value	0x5be
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -496
	.uleb128 0x2a
	.long	.LASF616
	.byte	0x1
	.value	0x5be
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -488
	.uleb128 0x2f
	.long	.LASF664
	.byte	0x1
	.value	0x5c0
	.long	0x34
	.long	0x2b51
	.uleb128 0x15
	.long	0x34
	.uleb128 0x15
	.long	0x34
	.byte	0
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x5c2
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -480
	.uleb128 0x28
	.string	"j"
	.byte	0x1
	.value	0x5c2
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -476
	.uleb128 0x26
	.long	.LASF617
	.byte	0x1
	.value	0x5c2
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -472
	.uleb128 0x26
	.long	.LASF618
	.byte	0x1
	.value	0x5c2
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -468
	.uleb128 0x26
	.long	.LASF619
	.byte	0x1
	.value	0x5c3
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -412
	.uleb128 0x26
	.long	.LASF620
	.byte	0x1
	.value	0x5c3
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -464
	.uleb128 0x26
	.long	.LASF621
	.byte	0x1
	.value	0x5c3
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -460
	.uleb128 0x28
	.string	"run"
	.byte	0x1
	.value	0x5c3
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -456
	.uleb128 0x26
	.long	.LASF558
	.byte	0x1
	.value	0x5c4
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -452
	.uleb128 0x26
	.long	.LASF622
	.byte	0x1
	.value	0x5c5
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -424
	.uleb128 0x26
	.long	.LASF623
	.byte	0x1
	.value	0x5c5
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -420
	.uleb128 0x26
	.long	.LASF624
	.byte	0x1
	.value	0x5c5
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -416
	.uleb128 0x26
	.long	.LASF625
	.byte	0x1
	.value	0x5c6
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -448
	.uleb128 0x26
	.long	.LASF626
	.byte	0x1
	.value	0x5c6
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -444
	.uleb128 0x26
	.long	.LASF627
	.byte	0x1
	.value	0x5c6
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -440
	.uleb128 0x26
	.long	.LASF383
	.byte	0x1
	.value	0x5c8
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -436
	.uleb128 0x26
	.long	.LASF384
	.byte	0x1
	.value	0x5c9
	.long	0x34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -432
	.uleb128 0x26
	.long	.LASF628
	.byte	0x1
	.value	0x5ca
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -408
	.uleb128 0x26
	.long	.LASF629
	.byte	0x1
	.value	0x5cb
	.long	0x83
	.uleb128 0x3
	.byte	0x91
	.sleb128 -400
	.uleb128 0x28
	.string	"m6"
	.byte	0x1
	.value	0x5cc
	.long	0x2d91
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x26
	.long	.LASF630
	.byte	0x1
	.value	0x5cd
	.long	0xa12
	.uleb128 0x3
	.byte	0x91
	.sleb128 -384
	.uleb128 0x26
	.long	.LASF631
	.byte	0x1
	.value	0x5cd
	.long	0xa12
	.uleb128 0x3
	.byte	0x91
	.sleb128 -368
	.uleb128 0x26
	.long	.LASF610
	.byte	0x1
	.value	0x5cf
	.long	0x203a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -392
	.uleb128 0x26
	.long	.LASF632
	.byte	0x1
	.value	0x5d0
	.long	0xdb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -428
	.uleb128 0x30
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.long	0x2cfe
	.uleb128 0x28
	.string	"a"
	.byte	0x1
	.value	0x5ee
	.long	0xe6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x28
	.string	"b"
	.byte	0x1
	.value	0x5ee
	.long	0xe6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.byte	0
	.uleb128 0x30
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.long	0x2d30
	.uleb128 0x28
	.string	"a"
	.byte	0x1
	.value	0x610
	.long	0xe6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x28
	.string	"b"
	.byte	0x1
	.value	0x610
	.long	0xe6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.byte	0
	.uleb128 0x30
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.long	0x2d62
	.uleb128 0x28
	.string	"a"
	.byte	0x1
	.value	0x696
	.long	0xe6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x28
	.string	"b"
	.byte	0x1
	.value	0x696
	.long	0xe6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.byte	0
	.uleb128 0x2e
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x28
	.string	"a"
	.byte	0x1
	.value	0x6b8
	.long	0xe6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x28
	.string	"b"
	.byte	0x1
	.value	0x6b8
	.long	0xe6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x2da7
	.uleb128 0x5
	.long	0x75
	.byte	0x7
	.uleb128 0x5
	.long	0x75
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.long	0x34
	.long	0x2dc3
	.uleb128 0x5
	.long	0x75
	.byte	0x5
	.uleb128 0x5
	.long	0x75
	.byte	0x7
	.uleb128 0x5
	.long	0x75
	.byte	0x7
	.byte	0
	.uleb128 0x31
	.long	.LASF634
	.byte	0x7
	.byte	0x18
	.long	0x2da7
	.uleb128 0x31
	.long	.LASF635
	.byte	0x7
	.byte	0x19
	.long	0x2da7
	.uleb128 0x31
	.long	.LASF636
	.byte	0x7
	.byte	0x21
	.long	0x2da7
	.uleb128 0x31
	.long	.LASF637
	.byte	0x7
	.byte	0x22
	.long	0x2da7
	.uleb128 0x4
	.long	0x34
	.long	0x2e0b
	.uleb128 0x5
	.long	0x75
	.byte	0xc
	.uleb128 0x5
	.long	0x75
	.byte	0x7
	.uleb128 0x5
	.long	0x75
	.byte	0x7
	.byte	0
	.uleb128 0x31
	.long	.LASF638
	.byte	0x8
	.byte	0x18
	.long	0x2def
	.uleb128 0x31
	.long	.LASF639
	.byte	0x8
	.byte	0x19
	.long	0x2def
	.uleb128 0x27
	.long	.LASF640
	.byte	0x5
	.value	0x1ee
	.long	0xd34
	.uleb128 0x27
	.long	.LASF641
	.byte	0x5
	.value	0x1ef
	.long	0xd2e
	.uleb128 0x27
	.long	.LASF642
	.byte	0x5
	.value	0x225
	.long	0x2018
	.uleb128 0x27
	.long	.LASF643
	.byte	0x5
	.value	0x225
	.long	0x2018
	.uleb128 0x27
	.long	.LASF644
	.byte	0x5
	.value	0x225
	.long	0x2018
	.uleb128 0x27
	.long	.LASF645
	.byte	0x5
	.value	0x226
	.long	0x2018
	.uleb128 0x27
	.long	.LASF646
	.byte	0x5
	.value	0x226
	.long	0x2018
	.uleb128 0x27
	.long	.LASF647
	.byte	0x5
	.value	0x226
	.long	0x2018
	.uleb128 0x4
	.long	0x34
	.long	0x2e9d
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
	.uleb128 0x27
	.long	.LASF648
	.byte	0x5
	.value	0x228
	.long	0x2e81
	.uleb128 0x27
	.long	.LASF649
	.byte	0x5
	.value	0x228
	.long	0x2e81
	.uleb128 0x27
	.long	.LASF650
	.byte	0x5
	.value	0x229
	.long	0x2e81
	.uleb128 0x27
	.long	.LASF651
	.byte	0x5
	.value	0x229
	.long	0x2e81
	.uleb128 0x27
	.long	.LASF652
	.byte	0x5
	.value	0x4b7
	.long	0x2ed9
	.uleb128 0x6
	.byte	0x8
	.long	0x1595
	.uleb128 0x32
	.string	"img"
	.byte	0x5
	.value	0x4b8
	.long	0x2eeb
	.uleb128 0x6
	.byte	0x8
	.long	0x20cd
	.uleb128 0x31
	.long	.LASF653
	.byte	0x9
	.byte	0x13
	.long	0x2388
	.uleb128 0x4
	.long	0x83
	.long	0x2f0c
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.byte	0
	.uleb128 0x31
	.long	.LASF654
	.byte	0xa
	.byte	0x68
	.long	0x2efc
	.uleb128 0x4
	.long	0x34
	.long	0x2f39
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.uleb128 0x5
	.long	0x75
	.byte	0x3
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.uleb128 0x5
	.long	0x75
	.byte	0x11
	.byte	0
	.uleb128 0x33
	.long	.LASF655
	.byte	0x1
	.byte	0x21
	.long	0x2f17
	.uleb128 0x9
	.byte	0x3
	.quad	cofAC8x8_chroma
	.uleb128 0x33
	.long	.LASF656
	.byte	0x1
	.byte	0x28
	.long	0x2f63
	.uleb128 0x9
	.byte	0x3
	.quad	quant_coef8
	.uleb128 0x8
	.long	0x2da7
	.uleb128 0x33
	.long	.LASF657
	.byte	0x1
	.byte	0x69
	.long	0x2f7d
	.uleb128 0x9
	.byte	0x3
	.quad	dequant_coef8
	.uleb128 0x8
	.long	0x2da7
	.uleb128 0x4
	.long	0xbb
	.long	0x2f98
	.uleb128 0x5
	.long	0x75
	.byte	0x3f
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.byte	0
	.uleb128 0x33
	.long	.LASF658
	.byte	0x1
	.byte	0xac
	.long	0x2fad
	.uleb128 0x9
	.byte	0x3
	.quad	SNGL_SCAN8x8
	.uleb128 0x8
	.long	0x2f82
	.uleb128 0x33
	.long	.LASF659
	.byte	0x1
	.byte	0xb9
	.long	0x2fc7
	.uleb128 0x9
	.byte	0x3
	.quad	FIELD_SCAN8x8
	.uleb128 0x8
	.long	0x2f82
	.uleb128 0x4
	.long	0xbb
	.long	0x2fe2
	.uleb128 0x5
	.long	0x75
	.byte	0x1
	.uleb128 0x5
	.long	0x75
	.byte	0x3f
	.byte	0
	.uleb128 0x33
	.long	.LASF660
	.byte	0x1
	.byte	0xc6
	.long	0x2ff7
	.uleb128 0x9
	.byte	0x3
	.quad	COEFF_COST8x8
	.uleb128 0x8
	.long	0x2fcc
	.uleb128 0x27
	.long	.LASF633
	.byte	0x1
	.value	0x103
	.long	0x202e
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0xb
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x28
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
	.uleb128 0x2a
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
.LASF492:
	.string	"bitdepth_luma_qp_scale"
.LASF339:
	.string	"channel_type"
.LASF620:
	.string	"level"
.LASF547:
	.string	"StorablePicture"
.LASF493:
	.string	"bitdepth_chroma_qp_scale"
.LASF31:
	.string	"SE_LUM_DC_INTER"
.LASF458:
	.string	"no_output_of_prior_pics_flag"
.LASF44:
	.string	"BITS_INTER_MB"
.LASF424:
	.string	"num_ref_idx_l1_active"
.LASF440:
	.string	"pic_order_cnt_lsb"
.LASF482:
	.string	"write_macroblock"
.LASF7:
	.string	"sizetype"
.LASF485:
	.string	"DeblockCall"
.LASF531:
	.string	"imgY_ups_w"
.LASF49:
	.string	"MAX_BITCOUNTER_MB"
.LASF566:
	.string	"pic_opix_x"
.LASF567:
	.string	"pic_opix_y"
.LASF38:
	.string	"SE_EOS"
.LASF29:
	.string	"SE_CHR_AC_INTRA"
.LASF366:
	.string	"width_cr"
.LASF453:
	.string	"PicSizeInMbs"
.LASF57:
	.string	"B_SLICE"
.LASF402:
	.string	"MB_SyntaxElements"
.LASF529:
	.string	"imgY_11_w"
.LASF397:
	.string	"cofAC"
.LASF554:
	.string	"best_ipmode"
.LASF616:
	.string	"intra"
.LASF340:
	.string	"ScalingMatrixPresentFlag"
.LASF500:
	.string	"lossless_qpprime_flag"
.LASF269:
	.string	"PocMemoryManagement"
.LASF412:
	.string	"imgtr_next_P_fld"
.LASF221:
	.string	"search_range"
.LASF427:
	.string	"mvscale"
.LASF18:
	.string	"int64"
.LASF209:
	.string	"slices"
.LASF113:
	.string	"long_term_pic_num"
.LASF56:
	.string	"P_SLICE"
.LASF378:
	.string	"ipredmode8x8"
.LASF382:
	.string	"mb_y"
.LASF460:
	.string	"dec_ref_pic_marking_buffer"
.LASF238:
	.string	"infile_header"
.LASF624:
	.string	"q_bits"
.LASF289:
	.string	"full_search"
.LASF115:
	.string	"max_long_term_frame_idx_plus1"
.LASF501:
	.string	"mb_cr_size_x"
.LASF334:
	.string	"DisplayEncParams"
.LASF664:
	.string	"sign"
.LASF426:
	.string	"top_field"
.LASF77:
	.string	"state"
.LASF662:
	.string	"transform8x8.c"
.LASF284:
	.string	"Intra16x16ParDisable"
.LASF91:
	.string	"bcbp_contexts"
.LASF117:
	.string	"syntaxelement"
.LASF247:
	.string	"successive_Bframe"
.LASF257:
	.string	"WeightedPrediction"
.LASF118:
	.string	"type"
.LASF417:
	.string	"fw_mb_mode"
.LASF454:
	.string	"FrameSizeInMbs"
.LASF535:
	.string	"ref_id"
.LASF165:
	.string	"LFDisableIdc"
.LASF525:
	.string	"chroma_vector_adjustment"
.LASF250:
	.string	"directInferenceFlag"
.LASF178:
	.string	"bits_to_go_skip"
.LASF419:
	.string	"pred_mv"
.LASF329:
	.string	"context_init_method"
.LASF331:
	.string	"AllowTransform8x8"
.LASF498:
	.string	"num_blk8x8_uv"
.LASF236:
	.string	"slice_argument"
.LASF195:
	.string	"rmpni_buffer"
.LASF30:
	.string	"SE_CBP_INTER"
.LASF146:
	.string	"mb_field"
.LASF276:
	.string	"InterSearch8x8"
.LASF310:
	.string	"NumFramesInELSubSeq"
.LASF593:
	.string	"mb_nr"
.LASF608:
	.string	"RDCost_for_8x8IntraBlocks"
.LASF114:
	.string	"long_term_frame_idx"
.LASF560:
	.string	"rec8x8"
.LASF515:
	.string	"bottom_ref_pic_num"
.LASF377:
	.string	"ipredmode"
.LASF263:
	.string	"RDBSliceWeightOnly"
.LASF228:
	.string	"GenerateMultiplePPS"
.LASF651:
	.string	"cbp_chroma_block_temp"
.LASF138:
	.string	"b8mode"
.LASF349:
	.string	"cr_qp_index_offset"
.LASF607:
	.string	"LoopArray"
.LASF204:
	.string	"slice_too_big"
.LASF36:
	.string	"SE_DELTA_QUANT_INTRA"
.LASF395:
	.string	"mprr_3"
.LASF559:
	.string	"diff"
.LASF171:
	.string	"bits_to_go"
.LASF110:
	.string	"DecRefPicMarking_s"
.LASF116:
	.string	"DecRefPicMarking_t"
.LASF483:
	.string	"bot_MB"
.LASF481:
	.string	"BasicUnit"
.LASF222:
	.string	"num_ref_frames"
.LASF73:
	.string	"EcodestrmS"
.LASF404:
	.string	"intra_block"
.LASF48:
	.string	"BITS_DELTA_QUANT_MB"
.LASF622:
	.string	"qp_per"
.LASF6:
	.string	"long int"
.LASF504:
	.string	"auto_crop_right"
.LASF636:
	.string	"InvLevelScale8x8Luma_Intra"
.LASF516:
	.string	"pic_num"
.LASF396:
	.string	"mprr_c"
.LASF155:
	.string	"all_blk_8x8"
.LASF298:
	.string	"nobskip"
.LASF456:
	.string	"nal_reference_idc"
.LASF604:
	.string	"block_up_left"
.LASF446:
	.string	"framepoc"
.LASF609:
	.string	"currSlice"
.LASF462:
	.string	"NumberofTextureBits"
.LASF391:
	.string	"opix_c_x"
.LASF392:
	.string	"opix_c_y"
.LASF21:
	.string	"SE_MBTYPE"
.LASF259:
	.string	"UseWeightedReferenceME"
.LASF518:
	.string	"used_for_reference"
.LASF312:
	.string	"RandomIntraMBRefresh"
.LASF484:
	.string	"write_macroblock_frame"
.LASF175:
	.string	"stored_byte_buf"
.LASF41:
	.string	"BITS_HEADER"
.LASF356:
	.string	"InputParameters"
.LASF313:
	.string	"LFSendParameters"
.LASF450:
	.string	"PicHeightInMapUnits"
.LASF513:
	.string	"frm_ref_pic_num"
.LASF470:
	.string	"NumberofGOP"
.LASF606:
	.string	"block_left"
.LASF490:
	.string	"bitdepth_luma"
.LASF45:
	.string	"BITS_CBP_MB"
.LASF28:
	.string	"SE_LUM_AC_INTRA"
.LASF63:
	.string	"Ebuffer"
.LASF239:
	.string	"infile"
.LASF577:
	.string	"mostProbableMode"
.LASF62:
	.string	"Erange"
.LASF40:
	.string	"SE_MAX_ELEMENTS"
.LASF628:
	.string	"ACLevel"
.LASF4:
	.string	"signed char"
.LASF364:
	.string	"framerate"
.LASF190:
	.string	"max_part_nr"
.LASF76:
	.string	"EncodingEnvironmentPtr"
.LASF435:
	.string	"delta_pic_order_always_zero_flag"
.LASF571:
	.string	"imgY_orig"
.LASF381:
	.string	"mb_x"
.LASF570:
	.string	"min_rdcost"
.LASF145:
	.string	"IntraChromaPredModeFlag"
.LASF277:
	.string	"InterSearch8x4"
.LASF122:
	.string	"context"
.LASF199:
	.string	"long_term_pic_idx_l0"
.LASF203:
	.string	"long_term_pic_idx_l1"
.LASF196:
	.string	"ref_pic_list_reordering_flag_l0"
.LASF200:
	.string	"ref_pic_list_reordering_flag_l1"
.LASF472:
	.string	"NumberofPPicture"
.LASF467:
	.string	"NumberofMBHeaderBits"
.LASF398:
	.string	"cofDC"
.LASF1:
	.string	"unsigned char"
.LASF136:
	.string	"intra_pred_modes8x8"
.LASF254:
	.string	"BiPredMESubPel"
.LASF486:
	.string	"last_pic_bottom_field"
.LASF251:
	.string	"BiPredMotionEstimation"
.LASF421:
	.string	"bipred_mv1"
.LASF422:
	.string	"bipred_mv2"
.LASF93:
	.string	"last_contexts"
.LASF144:
	.string	"c_ipred_mode"
.LASF323:
	.string	"run_length_minus1"
.LASF497:
	.string	"max_imgpel_value_uv"
.LASF232:
	.string	"intra_upd"
.LASF197:
	.string	"remapping_of_pic_nums_idc_l0"
.LASF201:
	.string	"remapping_of_pic_nums_idc_l1"
.LASF198:
	.string	"abs_diff_pic_num_minus1_l0"
.LASF202:
	.string	"abs_diff_pic_num_minus1_l1"
.LASF316:
	.string	"SPPercentageThreshold"
.LASF172:
	.string	"byte_buf"
.LASF215:
	.string	"ProfileIDC"
.LASF158:
	.string	"bi_pred_me"
.LASF564:
	.string	"pic_pix_x"
.LASF565:
	.string	"pic_pix_y"
.LASF644:
	.string	"resTrans_B"
.LASF129:
	.string	"delta_qp"
.LASF610:
	.string	"currMB"
.LASF599:
	.string	"block_available_left"
.LASF638:
	.string	"LevelOffset8x8Luma_Intra"
.LASF288:
	.string	"chroma_qp_index_offset"
.LASF363:
	.string	"max_num_references"
.LASF8:
	.string	"char"
.LASF376:
	.string	"block_c_x"
.LASF598:
	.string	"block_available_up"
.LASF555:
	.string	"cost"
.LASF86:
	.string	"transform_size_contexts"
.LASF459:
	.string	"long_term_reference_flag"
.LASF226:
	.string	"Log2MaxFrameNum"
.LASF548:
	.string	"lambda"
.LASF372:
	.string	"is_intra_block"
.LASF189:
	.string	"start_mb_nr"
.LASF335:
	.string	"RCEnable"
.LASF261:
	.string	"RDPictureIntra"
.LASF225:
	.string	"B_List1_refs"
.LASF100:
	.string	"mb_addr"
.LASF248:
	.string	"qpBRSOffset"
.LASF520:
	.string	"non_existing"
.LASF314:
	.string	"SparePictureOption"
.LASF42:
	.string	"BITS_TOTAL_MB"
.LASF588:
	.string	"img_x"
.LASF589:
	.string	"img_y"
.LASF291:
	.string	"qpN2"
.LASF626:
	.string	"dq_rshift"
.LASF244:
	.string	"intra_period"
.LASF132:
	.string	"mb_available_up"
.LASF442:
	.string	"delta_pic_order_cnt"
.LASF279:
	.string	"InterSearch4x4"
.LASF278:
	.string	"InterSearch4x8"
.LASF663:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/464.h264ref/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF528:
	.string	"imgY_11"
.LASF461:
	.string	"NumberofHeaderBits"
.LASF294:
	.string	"qp02"
.LASF358:
	.string	"nb_references"
.LASF121:
	.string	"bitpattern"
.LASF540:
	.string	"chroma_format_idc"
.LASF60:
	.string	"SI_SLICE"
.LASF85:
	.string	"mb_aff_contexts"
.LASF156:
	.string	"luma_transform_size_8x8_flag"
.LASF341:
	.string	"ScalingListPresentFlag"
.LASF600:
	.string	"block_available_up_left"
.LASF384:
	.string	"block_y"
.LASF264:
	.string	"SkipIntraInInterSlices"
.LASF399:
	.string	"currentPicture"
.LASF81:
	.string	"b8_type_contexts"
.LASF321:
	.string	"bottom_right"
.LASF258:
	.string	"WeightedBiprediction"
.LASF574:
	.string	"all_available"
.LASF415:
	.string	"p_interval"
.LASF214:
	.string	"Picture"
.LASF509:
	.string	"bottom_poc"
.LASF413:
	.string	"imgtr_last_P_fld"
.LASF652:
	.string	"input"
.LASF301:
	.string	"LeakyBucketParamFile"
.LASF530:
	.string	"imgY_ups"
.LASF217:
	.string	"no_frames"
.LASF161:
	.string	"prev_delta_qp"
.LASF229:
	.string	"img_width"
.LASF268:
	.string	"PyramidRefReorder"
.LASF550:
	.string	"cost8x8"
.LASF576:
	.string	"leftMode"
.LASF373:
	.string	"is_v_block"
.LASF235:
	.string	"slice_mode"
.LASF625:
	.string	"dq_lshift"
.LASF273:
	.string	"InterSearch16x16"
.LASF375:
	.string	"mb_y_intra"
.LASF80:
	.string	"mb_type_contexts"
.LASF320:
	.string	"top_left"
.LASF648:
	.string	"dc_level"
.LASF179:
	.string	"streamBuffer"
.LASF71:
	.string	"Ebits_to_goS"
.LASF274:
	.string	"InterSearch16x8"
.LASF473:
	.string	"MADofMB"
.LASF423:
	.string	"num_ref_idx_l0_active"
.LASF330:
	.string	"model_number"
.LASF583:
	.string	"rate"
.LASF58:
	.string	"I_SLICE"
.LASF253:
	.string	"BiPredMESearchRange"
.LASF126:
	.string	"macroblock"
.LASF619:
	.string	"qp_const"
.LASF444:
	.string	"toppoc"
.LASF434:
	.string	"MbaffFrameFlag"
.LASF61:
	.string	"Elow"
.LASF389:
	.string	"opix_x"
.LASF338:
	.string	"basicunit"
.LASF508:
	.string	"top_poc"
.LASF302:
	.string	"PicInterlace"
.LASF188:
	.string	"picture_type"
.LASF503:
	.string	"chroma_qp_offset"
.LASF267:
	.string	"ExplicitPyramidFormat"
.LASF452:
	.string	"PicHeightInMbs"
.LASF350:
	.string	"lossless_qpprime_y_zero_flag"
.LASF562:
	.string	"block4x4_x"
.LASF563:
	.string	"block4x4_y"
.LASF507:
	.string	"storable_picture"
.LASF243:
	.string	"QmatrixFile"
.LASF647:
	.string	"rec_resB"
.LASF425:
	.string	"field_mode"
.LASF260:
	.string	"RDPictureDecision"
.LASF646:
	.string	"rec_resG"
.LASF75:
	.string	"EncodingEnvironment"
.LASF185:
	.string	"writeSyntaxElement"
.LASF633:
	.string	"cofAC8x8"
.LASF39:
	.string	"SE_TRANSFORM_SIZE_FLAG"
.LASF0:
	.string	"long unsigned int"
.LASF89:
	.string	"cipr_contexts"
.LASF596:
	.string	"pix_c"
.LASF74:
	.string	"Ecodestrm_lenS"
.LASF336:
	.string	"bit_rate"
.LASF191:
	.string	"num_mb"
.LASF650:
	.string	"cbp_chroma_block"
.LASF445:
	.string	"bottompoc"
.LASF26:
	.string	"SE_LUM_DC_INTRA"
.LASF227:
	.string	"ResendPPS"
.LASF282:
	.string	"Intra4x4DiagDisable"
.LASF409:
	.string	"pstruct_next_P"
.LASF142:
	.string	"lf_alpha_c0_offset"
.LASF505:
	.string	"auto_crop_bottom"
.LASF242:
	.string	"TraceFile"
.LASF573:
	.string	"up_available"
.LASF237:
	.string	"UseConstrainedIntraPred"
.LASF99:
	.string	"available"
.LASF584:
	.string	"distortion"
.LASF474:
	.string	"BasicUnitQP"
.LASF466:
	.string	"NumberofMBTextureBits"
.LASF617:
	.string	"ilev"
.LASF140:
	.string	"cbp_bits"
.LASF216:
	.string	"LevelIDC"
.LASF526:
	.string	"coded_frame"
.LASF510:
	.string	"frame_poc"
.LASF387:
	.string	"pix_c_x"
.LASF388:
	.string	"pix_c_y"
.LASF219:
	.string	"hadamard"
.LASF416:
	.string	"b_frame_to_code"
.LASF581:
	.string	"residue_G"
.LASF210:
	.string	"bits_per_picture"
.LASF374:
	.string	"mb_y_upd"
.LASF355:
	.string	"OffsetMatrixPresentFlag"
.LASF308:
	.string	"NoOfDecoders"
.LASF106:
	.string	"RMPNI"
.LASF649:
	.string	"dc_level_temp"
.LASF54:
	.string	"BOTTOM_FIELD"
.LASF166:
	.string	"LFAlphaC0Offset"
.LASF632:
	.string	"lossless_qpprime"
.LASF143:
	.string	"lf_beta_offset"
.LASF112:
	.string	"difference_of_pic_nums_minus1"
.LASF311:
	.string	"NumFrameIn2ndIGOP"
.LASF51:
	.string	"CABAC"
.LASF443:
	.string	"field_picture"
.LASF245:
	.string	"idr_enable"
.LASF393:
	.string	"mprr"
.LASF246:
	.string	"start_frame"
.LASF527:
	.string	"imgY"
.LASF87:
	.string	"MotionInfoContexts"
.LASF9:
	.string	"long long int"
.LASF414:
	.string	"b_interval"
.LASF64:
	.string	"Ebits_to_go"
.LASF406:
	.string	"fld_flag"
.LASF408:
	.string	"direct_intraP_ref"
.LASF365:
	.string	"width"
.LASF134:
	.string	"mb_type"
.LASF174:
	.string	"stored_bits_to_go"
.LASF502:
	.string	"mb_cr_size_y"
.LASF551:
	.string	"Mode_Decision_for_new_Intra8x8Macroblock"
.LASF394:
	.string	"mprr_2"
.LASF128:
	.string	"slice_nr"
.LASF595:
	.string	"pix_b"
.LASF32:
	.string	"SE_CHR_DC_INTER"
.LASF213:
	.string	"distortion_v"
.LASF211:
	.string	"distortion_y"
.LASF177:
	.string	"byte_pos_skip"
.LASF167:
	.string	"LFBetaOffset"
.LASF12:
	.string	"double"
.LASF603:
	.string	"LowPassForIntra8x8Pred"
.LASF315:
	.string	"SPDetectionThreshold"
.LASF539:
	.string	"frame"
.LASF173:
	.string	"stored_byte_pos"
.LASF351:
	.string	"residue_transform_flag"
.LASF25:
	.string	"SE_CBP_INTRA"
.LASF618:
	.string	"coeff_ctr"
.LASF411:
	.string	"imgtr_last_P_frm"
.LASF640:
	.string	"imgY_org"
.LASF37:
	.string	"SE_BFRAME"
.LASF94:
	.string	"one_contexts"
.LASF524:
	.string	"size_y_cr"
.LASF303:
	.string	"MbInterlace"
.LASF130:
	.string	"qpsp"
.LASF11:
	.string	"float"
.LASF630:
	.string	"scan_poss"
.LASF333:
	.string	"ReportFrameStats"
.LASF266:
	.string	"PyramidCoding"
.LASF623:
	.string	"qp_rem"
.LASF78:
	.string	"count"
.LASF162:
	.string	"prev_cbp"
.LASF270:
	.string	"symbol_mode"
.LASF79:
	.string	"BiContextType"
.LASF654:
	.string	"assignSE2partition"
.LASF519:
	.string	"is_output"
.LASF407:
	.string	"rd_pass"
.LASF403:
	.string	"quad"
.LASF3:
	.string	"unsigned int"
.LASF549:
	.string	"min_cost"
.LASF103:
	.string	"PixelPos"
.LASF95:
	.string	"abs_contexts"
.LASF65:
	.string	"Ebits_to_follow"
.LASF180:
	.string	"write_flag"
.LASF360:
	.string	"total_number_mb"
.LASF325:
	.string	"slice_group_change_rate_minus1"
.LASF561:
	.string	"rdcost"
.LASF590:
	.string	"PredPel"
.LASF241:
	.string	"ReconFile"
.LASF67:
	.string	"Ecodestrm_len"
.LASF194:
	.string	"tex_ctx"
.LASF255:
	.string	"sp_periodicity"
.LASF635:
	.string	"LevelScale8x8Luma_Inter"
.LASF641:
	.string	"imgUV_org"
.LASF523:
	.string	"size_x_cr"
.LASF471:
	.string	"TotalQpforPPicture"
.LASF133:
	.string	"mb_available_left"
.LASF105:
	.string	"RMPNIbuffer_s"
.LASF109:
	.string	"RMPNIbuffer_t"
.LASF631:
	.string	"runs"
.LASF23:
	.string	"SE_INTRAPREDMODE"
.LASF326:
	.string	"slice_group_change_cycle"
.LASF659:
	.string	"FIELD_SCAN8x8"
.LASF353:
	.string	"LambdaWeight"
.LASF98:
	.string	"TextureInfoContexts"
.LASF538:
	.string	"bottom_field"
.LASF359:
	.string	"current_mb_nr"
.LASF299:
	.string	"NumberLeakyBuckets"
.LASF512:
	.string	"ref_pic_num"
.LASF430:
	.string	"layer"
.LASF139:
	.string	"b8pdir"
.LASF207:
	.string	"no_slices"
.LASF627:
	.string	"dq_round"
.LASF437:
	.string	"offset_for_top_to_bottom_field"
.LASF34:
	.string	"SE_CHR_AC_INTER"
.LASF286:
	.string	"ChromaIntraDisable"
.LASF594:
	.string	"pix_a"
.LASF410:
	.string	"imgtr_next_P_frm"
.LASF476:
	.string	"FieldControl"
.LASF597:
	.string	"pix_d"
.LASF468:
	.string	"NumberofCodedBFrame"
.LASF429:
	.string	"i16offset"
.LASF285:
	.string	"Intra16x16PlaneDisable"
.LASF104:
	.string	"pix_pos"
.LASF256:
	.string	"qpsp_pred"
.LASF328:
	.string	"pic_order_cnt_type"
.LASF212:
	.string	"distortion_u"
.LASF385:
	.string	"pix_x"
.LASF386:
	.string	"pix_y"
.LASF661:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF506:
	.string	"ImageParameters"
.LASF184:
	.string	"ee_cabac"
.LASF586:
	.string	"c_ipmode"
.LASF15:
	.string	"FALSE"
.LASF163:
	.string	"predict_qp"
.LASF220:
	.string	"hadamardqpel"
.LASF101:
	.string	"pos_x"
.LASF102:
	.string	"pos_y"
.LASF281:
	.string	"Intra4x4ParDisable"
.LASF568:
	.string	"pic_block_x"
.LASF383:
	.string	"block_x"
.LASF605:
	.string	"block_up"
.LASF300:
	.string	"LeakyBucketRateFile"
.LASF230:
	.string	"img_height"
.LASF234:
	.string	"part_size"
.LASF272:
	.string	"partition_mode"
.LASF645:
	.string	"rec_resR"
.LASF487:
	.string	"last_has_mmco_5"
.LASF546:
	.string	"frame_cropping_rect_bottom_offset"
.LASF97:
	.string	"fld_last_contexts"
.LASF436:
	.string	"offset_for_non_ref_pic"
.LASF168:
	.string	"skip_flag"
.LASF448:
	.string	"frame_num"
.LASF92:
	.string	"map_contexts"
.LASF317:
	.string	"SliceGroupConfigFileName"
.LASF59:
	.string	"SP_SLICE"
.LASF111:
	.string	"memory_management_control_operation"
.LASF304:
	.string	"IntraBottom"
.LASF181:
	.string	"Bitstream"
.LASF354:
	.string	"QOffsetMatrixFile"
.LASF224:
	.string	"B_List0_refs"
.LASF552:
	.string	"Mode_Decision_for_new_8x8IntraBlocks"
.LASF432:
	.string	"NoResidueDirect"
.LASF480:
	.string	"NumberofCodedMacroBlocks"
.LASF621:
	.string	"scan_pos"
.LASF187:
	.string	"picture_id"
.LASF541:
	.string	"frame_mbs_only_flag"
.LASF655:
	.string	"cofAC8x8_chroma"
.LASF405:
	.string	"fld_type"
.LASF469:
	.string	"NumberofCodedPFrame"
.LASF10:
	.string	"long long unsigned int"
.LASF43:
	.string	"BITS_MB_MODE"
.LASF252:
	.string	"BiPredMERefinements"
.LASF135:
	.string	"intra_pred_modes"
.LASF368:
	.string	"height_cr"
.LASF420:
	.string	"all_mv"
.LASF293:
	.string	"qp2start"
.LASF367:
	.string	"height"
.LASF362:
	.string	"structure"
.LASF205:
	.string	"field_ctx"
.LASF537:
	.string	"field_frame"
.LASF186:
	.string	"DataPartition"
.LASF35:
	.string	"SE_DELTA_QUANT_INTER"
.LASF401:
	.string	"mb_data"
.LASF545:
	.string	"frame_cropping_rect_top_offset"
.LASF337:
	.string	"SeinitialQP"
.LASF643:
	.string	"resTrans_G"
.LASF464:
	.string	"NumberofBasicUnitTextureBits"
.LASF657:
	.string	"dequant_coef8"
.LASF438:
	.string	"num_ref_frames_in_pic_order_cnt_cycle"
.LASF642:
	.string	"resTrans_R"
.LASF206:
	.string	"Slice"
.LASF182:
	.string	"datapartition"
.LASF72:
	.string	"Ebits_to_followS"
.LASF369:
	.string	"height_cr_frame"
.LASF637:
	.string	"InvLevelScale8x8Luma_Inter"
.LASF478:
	.string	"Frame_Total_Number_MB"
.LASF612:
	.string	"partMap"
.LASF119:
	.string	"value1"
.LASF120:
	.string	"value2"
.LASF50:
	.string	"UVLC"
.LASF601:
	.string	"block_available_up_right"
.LASF543:
	.string	"frame_cropping_rect_left_offset"
.LASF347:
	.string	"rgb_input_flag"
.LASF183:
	.string	"bitstream"
.LASF223:
	.string	"P_List0_refs"
.LASF309:
	.string	"RestrictRef"
.LASF514:
	.string	"top_ref_pic_num"
.LASF613:
	.string	"dataPart"
.LASF68:
	.string	"ElowS"
.LASF319:
	.string	"slice_group_map_type"
.LASF587:
	.string	"rec8x8_c"
.LASF629:
	.string	"ACRun"
.LASF17:
	.string	"Boolean"
.LASF271:
	.string	"of_mode"
.LASF494:
	.string	"bitdepth_lambda_scale"
.LASF297:
	.string	"disthres"
.LASF431:
	.string	"old_layer"
.LASF357:
	.string	"number"
.LASF33:
	.string	"SE_LUM_AC_INTER"
.LASF295:
	.string	"qpBRS2Offset"
.LASF496:
	.string	"max_imgpel_value"
.LASF449:
	.string	"PicWidthInMbs"
.LASF556:
	.string	"dummy"
.LASF305:
	.string	"LossRateA"
.LASF306:
	.string	"LossRateB"
.LASF307:
	.string	"LossRateC"
.LASF489:
	.string	"pic_unit_size_on_disk"
.LASF495:
	.string	"dc_pred_value"
.LASF499:
	.string	"num_cdc_coeff"
.LASF346:
	.string	"img_width_cr"
.LASF19:
	.string	"SE_HEADER"
.LASF582:
	.string	"residue_B"
.LASF169:
	.string	"Macroblock"
.LASF83:
	.string	"ref_no_contexts"
.LASF233:
	.string	"blc_size"
.LASF52:
	.string	"FRAME"
.LASF457:
	.string	"adaptive_ref_pic_buffering_flag"
.LASF47:
	.string	"BITS_COEFF_UV_MB"
.LASF14:
	.string	"byte"
.LASF580:
	.string	"residue_R"
.LASF108:
	.string	"Next"
.LASF265:
	.string	"BRefPictures"
.LASF107:
	.string	"Data"
.LASF475:
	.string	"TopFieldFlag"
.LASF5:
	.string	"short int"
.LASF511:
	.string	"order_num"
.LASF656:
	.string	"quant_coef8"
.LASF536:
	.string	"moving_block"
.LASF66:
	.string	"Ecodestrm"
.LASF390:
	.string	"opix_y"
.LASF231:
	.string	"yuv_format"
.LASF342:
	.string	"FMEnable"
.LASF433:
	.string	"redundant_pic_cnt"
.LASF418:
	.string	"bw_mb_mode"
.LASF327:
	.string	"redundant_slice_flag"
.LASF343:
	.string	"BitDepthLuma"
.LASF16:
	.string	"TRUE"
.LASF611:
	.string	"currSE"
.LASF296:
	.string	"rdopt"
.LASF614:
	.string	"dct_luma8x8"
.LASF70:
	.string	"EbufferS"
.LASF447:
	.string	"ThisPOC"
.LASF24:
	.string	"SE_MVD"
.LASF465:
	.string	"TotalMADBasicUnit"
.LASF160:
	.string	"prev_qp"
.LASF280:
	.string	"IntraDisableInterOnly"
.LASF82:
	.string	"mv_res_contexts"
.LASF658:
	.string	"SNGL_SCAN8x8"
.LASF275:
	.string	"InterSearch8x16"
.LASF653:
	.string	"enc_picture"
.LASF591:
	.string	"ioff"
.LASF159:
	.string	"actj"
.LASF318:
	.string	"num_slice_groups_minus1"
.LASF441:
	.string	"delta_pic_order_cnt_bottom"
.LASF428:
	.string	"buf_cycle"
.LASF46:
	.string	"BITS_COEFF_Y_MB"
.LASF379:
	.string	"cod_counter"
.LASF592:
	.string	"joff"
.LASF22:
	.string	"SE_REFFRAME"
.LASF192:
	.string	"partArr"
.LASF572:
	.string	"left_available"
.LASF170:
	.string	"byte_pos"
.LASF240:
	.string	"outfile"
.LASF557:
	.string	"c_nz"
.LASF88:
	.string	"ipr_contexts"
.LASF147:
	.string	"mbAddrA"
.LASF148:
	.string	"mbAddrB"
.LASF149:
	.string	"mbAddrC"
.LASF150:
	.string	"mbAddrD"
.LASF332:
	.string	"LowPassForIntra8x8"
.LASF380:
	.string	"nz_coeff"
.LASF639:
	.string	"LevelOffset8x8Luma_Inter"
.LASF84:
	.string	"delta_qp_contexts"
.LASF283:
	.string	"Intra4x4DirDisable"
.LASF463:
	.string	"NumberofBasicUnitHeaderBits"
.LASF125:
	.string	"SyntaxElement"
.LASF292:
	.string	"qpB2"
.LASF344:
	.string	"BitDepthChroma"
.LASF479:
	.string	"IFLAG"
.LASF615:
	.string	"coeff_cost"
.LASF488:
	.string	"pre_frame_num"
.LASF569:
	.string	"pic_block_y"
.LASF455:
	.string	"pic_order_present_flag"
.LASF141:
	.string	"lf_disable"
.LASF53:
	.string	"TOP_FIELD"
.LASF558:
	.string	"nonzero"
.LASF575:
	.string	"upMode"
.LASF521:
	.string	"size_x"
.LASF522:
	.string	"size_y"
.LASF208:
	.string	"idr_flag"
.LASF579:
	.string	"top_block"
.LASF27:
	.string	"SE_CHR_DC_INTRA"
.LASF2:
	.string	"short unsigned int"
.LASF477:
	.string	"FieldFrame"
.LASF290:
	.string	"last_frame"
.LASF544:
	.string	"frame_cropping_rect_right_offset"
.LASF164:
	.string	"predict_error"
.LASF361:
	.string	"current_slice_nr"
.LASF249:
	.string	"direct_spatial_mv_pred_flag"
.LASF218:
	.string	"jumpd"
.LASF491:
	.string	"bitdepth_chroma"
.LASF123:
	.string	"mapping"
.LASF533:
	.string	"ref_idx"
.LASF345:
	.string	"img_height_cr"
.LASF542:
	.string	"frame_cropping_flag"
.LASF532:
	.string	"imgUV"
.LASF20:
	.string	"SE_PTYPE"
.LASF534:
	.string	"ref_pic_id"
.LASF13:
	.string	"int64_t"
.LASF124:
	.string	"writing"
.LASF322:
	.string	"slice_group_id"
.LASF96:
	.string	"fld_map_contexts"
.LASF176:
	.string	"byte_buf_skip"
.LASF324:
	.string	"slice_group_change_direction_flag"
.LASF287:
	.string	"FrameRate"
.LASF585:
	.string	"temp"
.LASF262:
	.string	"RDPSliceWeightOnly"
.LASF90:
	.string	"cbp_contexts"
.LASF348:
	.string	"cb_qp_index_offset"
.LASF193:
	.string	"mot_ctx"
.LASF660:
	.string	"COEFF_COST8x8"
.LASF553:
	.string	"ipmode"
.LASF157:
	.string	"NoMbPartLessThan8x8Flag"
.LASF370:
	.string	"subblock_x"
.LASF371:
	.string	"subblock_y"
.LASF517:
	.string	"is_long_term"
.LASF578:
	.string	"left_block"
.LASF352:
	.string	"UseExplicitLambdaParams"
.LASF127:
	.string	"currSEnr"
.LASF439:
	.string	"offset_for_ref_frame"
.LASF55:
	.string	"PictureStructure"
.LASF451:
	.string	"FrameHeightInMbs"
.LASF400:
	.string	"currentSlice"
.LASF131:
	.string	"bitcounter"
.LASF634:
	.string	"LevelScale8x8Luma_Intra"
.LASF69:
	.string	"ErangeS"
.LASF602:
	.string	"intrapred_luma8x8"
.LASF151:
	.string	"mbAvailA"
.LASF152:
	.string	"mbAvailB"
.LASF153:
	.string	"mbAvailC"
.LASF154:
	.string	"mbAvailD"
.LASF137:
	.string	"cbp_blk"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
