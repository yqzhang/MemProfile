	.file	"crctable.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 crctable.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.globl	BZ2_crc32Table
	.data
	.align 32
	.type	BZ2_crc32Table, @object
	.size	BZ2_crc32Table, 1024
BZ2_crc32Table:
	.long	0
	.long	79764919
	.long	159529838
	.long	222504665
	.long	319059676
	.long	398814059
	.long	445009330
	.long	507990021
	.long	638119352
	.long	583659535
	.long	797628118
	.long	726387553
	.long	890018660
	.long	835552979
	.long	1015980042
	.long	944750013
	.long	1276238704
	.long	1221641927
	.long	1167319070
	.long	1095957929
	.long	1595256236
	.long	1540665371
	.long	1452775106
	.long	1381403509
	.long	1780037320
	.long	1859660671
	.long	1671105958
	.long	1733955601
	.long	2031960084
	.long	2111593891
	.long	1889500026
	.long	1952343757
	.long	-1742489888
	.long	-1662866601
	.long	-1851683442
	.long	-1788833735
	.long	-1960329156
	.long	-1880695413
	.long	-2103051438
	.long	-2040207643
	.long	-1104454824
	.long	-1159051537
	.long	-1213636554
	.long	-1284997759
	.long	-1389417084
	.long	-1444007885
	.long	-1532160278
	.long	-1603531939
	.long	-734892656
	.long	-789352409
	.long	-575645954
	.long	-646886583
	.long	-952755380
	.long	-1007220997
	.long	-827056094
	.long	-898286187
	.long	-231047128
	.long	-151282273
	.long	-71779514
	.long	-8804623
	.long	-515967244
	.long	-436212925
	.long	-390279782
	.long	-327299027
	.long	881225847
	.long	809987520
	.long	1023691545
	.long	969234094
	.long	662832811
	.long	591600412
	.long	771767749
	.long	717299826
	.long	311336399
	.long	374308984
	.long	453813921
	.long	533576470
	.long	25881363
	.long	88864420
	.long	134795389
	.long	214552010
	.long	2023205639
	.long	2086057648
	.long	1897238633
	.long	1976864222
	.long	1804852699
	.long	1867694188
	.long	1645340341
	.long	1724971778
	.long	1587496639
	.long	1516133128
	.long	1461550545
	.long	1406951526
	.long	1302016099
	.long	1230646740
	.long	1142491917
	.long	1087903418
	.long	-1398421865
	.long	-1469785312
	.long	-1524105735
	.long	-1578704818
	.long	-1079922613
	.long	-1151291908
	.long	-1239184603
	.long	-1293773166
	.long	-1968362705
	.long	-1905510760
	.long	-2094067647
	.long	-2014441994
	.long	-1716953613
	.long	-1654112188
	.long	-1876203875
	.long	-1796572374
	.long	-525066777
	.long	-462094256
	.long	-382327159
	.long	-302564546
	.long	-206542021
	.long	-143559028
	.long	-97365931
	.long	-17609246
	.long	-960696225
	.long	-1031934488
	.long	-817968335
	.long	-872425850
	.long	-709327229
	.long	-780559564
	.long	-600130067
	.long	-654598054
	.long	1762451694
	.long	1842216281
	.long	1619975040
	.long	1682949687
	.long	2047383090
	.long	2127137669
	.long	1938468188
	.long	2001449195
	.long	1325665622
	.long	1271206113
	.long	1183200824
	.long	1111960463
	.long	1543535498
	.long	1489069629
	.long	1434599652
	.long	1363369299
	.long	622672798
	.long	568075817
	.long	748617968
	.long	677256519
	.long	907627842
	.long	853037301
	.long	1067152940
	.long	995781531
	.long	51762726
	.long	131386257
	.long	177728840
	.long	240578815
	.long	269590778
	.long	349224269
	.long	429104020
	.long	491947555
	.long	-248556018
	.long	-168932423
	.long	-122852000
	.long	-60002089
	.long	-500490030
	.long	-420856475
	.long	-341238852
	.long	-278395381
	.long	-685261898
	.long	-739858943
	.long	-559578920
	.long	-630940305
	.long	-1004286614
	.long	-1058877219
	.long	-845023740
	.long	-916395085
	.long	-1119974018
	.long	-1174433591
	.long	-1262701040
	.long	-1333941337
	.long	-1371866206
	.long	-1426332139
	.long	-1481064244
	.long	-1552294533
	.long	-1690935098
	.long	-1611170447
	.long	-1833673816
	.long	-1770699233
	.long	-2009983462
	.long	-1930228819
	.long	-2119160460
	.long	-2056179517
	.long	1569362073
	.long	1498123566
	.long	1409854455
	.long	1355396672
	.long	1317987909
	.long	1246755826
	.long	1192025387
	.long	1137557660
	.long	2072149281
	.long	2135122070
	.long	1912620623
	.long	1992383480
	.long	1753615357
	.long	1816598090
	.long	1627664531
	.long	1707420964
	.long	295390185
	.long	358241886
	.long	404320391
	.long	483945776
	.long	43990325
	.long	106832002
	.long	186451547
	.long	266083308
	.long	932423249
	.long	861060070
	.long	1041341759
	.long	986742920
	.long	613929101
	.long	542559546
	.long	756411363
	.long	701822548
	.long	-978770311
	.long	-1050133554
	.long	-869589737
	.long	-924188512
	.long	-693284699
	.long	-764654318
	.long	-550540341
	.long	-605129092
	.long	-475935807
	.long	-413084042
	.long	-366743377
	.long	-287118056
	.long	-257573603
	.long	-194731862
	.long	-114850189
	.long	-35218492
	.long	-1984365303
	.long	-1921392450
	.long	-2143631769
	.long	-2063868976
	.long	-1698919467
	.long	-1635936670
	.long	-1824608069
	.long	-1744851700
	.long	-1347415887
	.long	-1418654458
	.long	-1506661409
	.long	-1561119128
	.long	-1129027987
	.long	-1200260134
	.long	-1254728445
	.long	-1309196108
	.text
.Letext0:
	.file 1 "bzlib_private.h"
	.file 2 "crctable.c"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x9e
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF11
	.byte	0x1
	.long	.LASF12
	.long	.LASF13
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
	.long	.LASF14
	.byte	0x1
	.byte	0x55
	.long	0x39
	.uleb128 0x5
	.long	0x71
	.long	0x8c
	.uleb128 0x6
	.long	0x55
	.byte	0xff
	.byte	0
	.uleb128 0x7
	.long	.LASF15
	.byte	0x2
	.byte	0x47
	.long	0x7c
	.uleb128 0x9
	.byte	0x3
	.quad	BZ2_crc32Table
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
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
.LASF9:
	.string	"long long int"
.LASF3:
	.string	"unsigned int"
.LASF15:
	.string	"BZ2_crc32Table"
.LASF0:
	.string	"long unsigned int"
.LASF14:
	.string	"UInt32"
.LASF10:
	.string	"long long unsigned int"
.LASF1:
	.string	"unsigned char"
.LASF8:
	.string	"char"
.LASF12:
	.string	"crctable.c"
.LASF6:
	.string	"long int"
.LASF13:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/401.bzip2/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF11:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF2:
	.string	"short unsigned int"
.LASF4:
	.string	"signed char"
.LASF5:
	.string	"short int"
.LASF7:
	.string	"sizetype"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
