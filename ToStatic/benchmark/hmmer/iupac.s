	.file	"iupac.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 iupac.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.globl	dnafq
	.data
	.align 16
	.type	dnafq, @object
	.size	dnafq, 16
dnafq:
	.long	1048576000
	.long	1048576000
	.long	1048576000
	.long	1048576000
	.globl	aafq
	.align 32
	.type	aafq, @object
	.size	aafq, 80
aafq:
	.long	1033546299
	.long	1015745270
	.long	1029256432
	.long	1031893273
	.long	1025963534
	.long	1032597111
	.long	1018662090
	.long	1030398625
	.long	1030966097
	.long	1035945978
	.long	1019286471
	.long	1027179815
	.long	1028245235
	.long	1025820995
	.long	1028865590
	.long	1033102575
	.long	1030444259
	.long	1032168151
	.long	1011680083
	.long	1023607476
	.globl	aa_alphabet
	.align 16
	.type	aa_alphabet, @object
	.size	aa_alphabet, 21
aa_alphabet:
	.string	"ACDEFGHIKLMNPQRSTVWY"
	.globl	aa_index
	.align 32
	.type	aa_index, @object
	.size	aa_index, 80
aa_index:
	.long	0
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.long	8
	.long	10
	.long	11
	.long	12
	.long	13
	.long	15
	.long	16
	.long	17
	.long	18
	.long	19
	.long	21
	.long	22
	.long	24
	.globl	iupac
	.align 32
	.type	iupac, @object
	.size	iupac, 68
iupac:
# sym:
	.byte	65
# symcomp:
	.byte	84
# code:
	.byte	8
# comp:
	.byte	1
# sym:
	.byte	67
# symcomp:
	.byte	71
# code:
	.byte	4
# comp:
	.byte	2
# sym:
	.byte	71
# symcomp:
	.byte	67
# code:
	.byte	2
# comp:
	.byte	4
# sym:
	.byte	84
# symcomp:
	.byte	65
# code:
	.byte	1
# comp:
	.byte	8
# sym:
	.byte	85
# symcomp:
	.byte	65
# code:
	.byte	1
# comp:
	.byte	8
# sym:
	.byte	78
# symcomp:
	.byte	78
# code:
	.byte	15
# comp:
	.byte	15
# sym:
	.byte	32
# symcomp:
	.byte	32
# code:
	.byte	16
# comp:
	.byte	16
# sym:
	.byte	82
# symcomp:
	.byte	89
# code:
	.byte	10
# comp:
	.byte	5
# sym:
	.byte	89
# symcomp:
	.byte	82
# code:
	.byte	5
# comp:
	.byte	10
# sym:
	.byte	77
# symcomp:
	.byte	75
# code:
	.byte	12
# comp:
	.byte	3
# sym:
	.byte	75
# symcomp:
	.byte	77
# code:
	.byte	3
# comp:
	.byte	12
# sym:
	.byte	83
# symcomp:
	.byte	83
# code:
	.byte	6
# comp:
	.byte	6
# sym:
	.byte	87
# symcomp:
	.byte	87
# code:
	.byte	9
# comp:
	.byte	9
# sym:
	.byte	72
# symcomp:
	.byte	68
# code:
	.byte	13
# comp:
	.byte	11
# sym:
	.byte	66
# symcomp:
	.byte	86
# code:
	.byte	7
# comp:
	.byte	14
# sym:
	.byte	86
# symcomp:
	.byte	66
# code:
	.byte	14
# comp:
	.byte	7
# sym:
	.byte	68
# symcomp:
	.byte	72
# code:
	.byte	11
# comp:
	.byte	13
	.globl	stdcode1
	.section	.rodata
.LC0:
	.string	"K"
.LC1:
	.string	"N"
.LC2:
	.string	"T"
.LC3:
	.string	"R"
.LC4:
	.string	"S"
.LC5:
	.string	"I"
.LC6:
	.string	"M"
.LC7:
	.string	"Q"
.LC8:
	.string	"H"
.LC9:
	.string	"P"
.LC10:
	.string	"L"
.LC11:
	.string	"E"
.LC12:
	.string	"D"
.LC13:
	.string	"A"
.LC14:
	.string	"G"
.LC15:
	.string	"V"
.LC16:
	.string	"*"
.LC17:
	.string	"Y"
.LC18:
	.string	"C"
.LC19:
	.string	"W"
.LC20:
	.string	"F"
.LC21:
	.string	"X"
	.data
	.align 32
	.type	stdcode1, @object
	.size	stdcode1, 520
stdcode1:
	.quad	.LC0
	.quad	.LC1
	.quad	.LC0
	.quad	.LC1
	.quad	.LC2
	.quad	.LC2
	.quad	.LC2
	.quad	.LC2
	.quad	.LC3
	.quad	.LC4
	.quad	.LC3
	.quad	.LC4
	.quad	.LC5
	.quad	.LC5
	.quad	.LC6
	.quad	.LC5
	.quad	.LC7
	.quad	.LC8
	.quad	.LC7
	.quad	.LC8
	.quad	.LC9
	.quad	.LC9
	.quad	.LC9
	.quad	.LC9
	.quad	.LC3
	.quad	.LC3
	.quad	.LC3
	.quad	.LC3
	.quad	.LC10
	.quad	.LC10
	.quad	.LC10
	.quad	.LC10
	.quad	.LC11
	.quad	.LC12
	.quad	.LC11
	.quad	.LC12
	.quad	.LC13
	.quad	.LC13
	.quad	.LC13
	.quad	.LC13
	.quad	.LC14
	.quad	.LC14
	.quad	.LC14
	.quad	.LC14
	.quad	.LC15
	.quad	.LC15
	.quad	.LC15
	.quad	.LC15
	.quad	.LC16
	.quad	.LC17
	.quad	.LC16
	.quad	.LC17
	.quad	.LC4
	.quad	.LC4
	.quad	.LC4
	.quad	.LC4
	.quad	.LC16
	.quad	.LC18
	.quad	.LC19
	.quad	.LC18
	.quad	.LC10
	.quad	.LC20
	.quad	.LC10
	.quad	.LC20
	.quad	.LC21
	.globl	stdcode3
	.section	.rodata
.LC22:
	.string	"Lys"
.LC23:
	.string	"Asn"
.LC24:
	.string	"Thr"
.LC25:
	.string	"Arg"
.LC26:
	.string	"Ser"
.LC27:
	.string	"Ile"
.LC28:
	.string	"Met"
.LC29:
	.string	"Gln"
.LC30:
	.string	"His"
.LC31:
	.string	"Pro"
.LC32:
	.string	"Leu"
.LC33:
	.string	"Glu"
.LC34:
	.string	"Asp"
.LC35:
	.string	"Ala"
.LC36:
	.string	"Gly"
.LC37:
	.string	"Val"
.LC38:
	.string	"***"
.LC39:
	.string	"Tyr"
.LC40:
	.string	"Cys"
.LC41:
	.string	"Trp"
.LC42:
	.string	"Phe"
.LC43:
	.string	"XXX"
	.data
	.align 32
	.type	stdcode3, @object
	.size	stdcode3, 520
stdcode3:
	.quad	.LC22
	.quad	.LC23
	.quad	.LC22
	.quad	.LC23
	.quad	.LC24
	.quad	.LC24
	.quad	.LC24
	.quad	.LC24
	.quad	.LC25
	.quad	.LC26
	.quad	.LC25
	.quad	.LC26
	.quad	.LC27
	.quad	.LC27
	.quad	.LC28
	.quad	.LC27
	.quad	.LC29
	.quad	.LC30
	.quad	.LC29
	.quad	.LC30
	.quad	.LC31
	.quad	.LC31
	.quad	.LC31
	.quad	.LC31
	.quad	.LC25
	.quad	.LC25
	.quad	.LC25
	.quad	.LC25
	.quad	.LC32
	.quad	.LC32
	.quad	.LC32
	.quad	.LC32
	.quad	.LC33
	.quad	.LC34
	.quad	.LC33
	.quad	.LC34
	.quad	.LC35
	.quad	.LC35
	.quad	.LC35
	.quad	.LC35
	.quad	.LC36
	.quad	.LC36
	.quad	.LC36
	.quad	.LC36
	.quad	.LC37
	.quad	.LC37
	.quad	.LC37
	.quad	.LC37
	.quad	.LC38
	.quad	.LC39
	.quad	.LC38
	.quad	.LC39
	.quad	.LC26
	.quad	.LC26
	.quad	.LC26
	.quad	.LC26
	.quad	.LC38
	.quad	.LC40
	.quad	.LC41
	.quad	.LC40
	.quad	.LC32
	.quad	.LC42
	.quad	.LC32
	.quad	.LC41
	.quad	.LC43
	.text
.Letext0:
	.file 1 "squid.h"
	.file 2 "iupac.c"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1b2
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF23
	.byte	0x1
	.long	.LASF24
	.long	.LASF25
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF0
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
	.uleb128 0x4
	.byte	0x8
	.long	0x62
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF8
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF10
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF11
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF12
	.uleb128 0x5
	.long	.LASF26
	.byte	0x4
	.byte	0x1
	.byte	0x75
	.long	0xc2
	.uleb128 0x6
	.string	"sym"
	.byte	0x1
	.byte	0x76
	.long	0x62
	.byte	0
	.uleb128 0x7
	.long	.LASF13
	.byte	0x1
	.byte	0x77
	.long	0x62
	.byte	0x1
	.uleb128 0x7
	.long	.LASF14
	.byte	0x1
	.byte	0x78
	.long	0x62
	.byte	0x2
	.uleb128 0x7
	.long	.LASF15
	.byte	0x1
	.byte	0x79
	.long	0x62
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.long	0x85
	.long	0xd2
	.uleb128 0x9
	.long	0x55
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.long	.LASF16
	.byte	0x2
	.byte	0x3f
	.long	0xc2
	.uleb128 0x9
	.byte	0x3
	.quad	iupac
	.uleb128 0x8
	.long	0x5c
	.long	0xf7
	.uleb128 0x9
	.long	0x55
	.byte	0x40
	.byte	0
	.uleb128 0xa
	.long	.LASF17
	.byte	0x2
	.byte	0x54
	.long	0xe7
	.uleb128 0x9
	.byte	0x3
	.quad	stdcode1
	.uleb128 0xa
	.long	.LASF18
	.byte	0x2
	.byte	0x9b
	.long	0xe7
	.uleb128 0x9
	.byte	0x3
	.quad	stdcode3
	.uleb128 0x8
	.long	0x69
	.long	0x131
	.uleb128 0x9
	.long	0x55
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.long	.LASF19
	.byte	0x2
	.byte	0x19
	.long	0x121
	.uleb128 0x9
	.byte	0x3
	.quad	dnafq
	.uleb128 0x8
	.long	0x69
	.long	0x156
	.uleb128 0x9
	.long	0x55
	.byte	0x13
	.byte	0
	.uleb128 0xa
	.long	.LASF20
	.byte	0x2
	.byte	0x21
	.long	0x146
	.uleb128 0x9
	.byte	0x3
	.quad	aafq
	.uleb128 0x8
	.long	0x62
	.long	0x17b
	.uleb128 0x9
	.long	0x55
	.byte	0x14
	.byte	0
	.uleb128 0xa
	.long	.LASF21
	.byte	0x2
	.byte	0x38
	.long	0x16b
	.uleb128 0x9
	.byte	0x3
	.quad	aa_alphabet
	.uleb128 0x8
	.long	0x47
	.long	0x1a0
	.uleb128 0x9
	.long	0x55
	.byte	0x13
	.byte	0
	.uleb128 0xa
	.long	.LASF22
	.byte	0x2
	.byte	0x3a
	.long	0x190
	.uleb128 0x9
	.byte	0x3
	.quad	aa_index
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.long	0x1c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF11:
	.string	"long long int"
.LASF2:
	.string	"short unsigned int"
.LASF3:
	.string	"unsigned int"
.LASF24:
	.string	"iupac.c"
.LASF17:
	.string	"stdcode1"
.LASF26:
	.string	"iupactype"
.LASF18:
	.string	"stdcode3"
.LASF13:
	.string	"symcomp"
.LASF0:
	.string	"long unsigned int"
.LASF21:
	.string	"aa_alphabet"
.LASF12:
	.string	"long long unsigned int"
.LASF23:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF22:
	.string	"aa_index"
.LASF1:
	.string	"unsigned char"
.LASF8:
	.string	"char"
.LASF6:
	.string	"long int"
.LASF19:
	.string	"dnafq"
.LASF10:
	.string	"double"
.LASF14:
	.string	"code"
.LASF4:
	.string	"signed char"
.LASF16:
	.string	"iupac"
.LASF20:
	.string	"aafq"
.LASF15:
	.string	"comp"
.LASF9:
	.string	"float"
.LASF5:
	.string	"short int"
.LASF7:
	.string	"sizetype"
.LASF25:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/456.hmmer/build/build_base_amd64-m64-gcc43-nn.0000"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
