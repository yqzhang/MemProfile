	.file	"configfile.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 configfile.c -mtune=generic -march=x86-64 -g
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
	.globl	Map
	.section	.rodata
.LC0:
	.string	"ProfileIDC"
.LC1:
	.string	"LevelIDC"
.LC2:
	.string	"FrameRate"
.LC3:
	.string	"IDRIntraEnable"
.LC4:
	.string	"StartFrame"
.LC5:
	.string	"IntraPeriod"
.LC6:
	.string	"FramesToBeEncoded"
.LC7:
	.string	"QPISlice"
.LC8:
	.string	"QPPSlice"
.LC9:
	.string	"QPBSlice"
.LC10:
	.string	"FrameSkip"
.LC11:
	.string	"UseHadamard"
.LC12:
	.string	"UseHadamardQpelOnly"
.LC13:
	.string	"SearchRange"
.LC14:
	.string	"NumberReferenceFrames"
.LC15:
	.string	"PList0References"
.LC16:
	.string	"BList0References"
.LC17:
	.string	"BList1References"
.LC18:
	.string	"Log2MaxFrameNum"
.LC19:
	.string	"GenerateMultiplePPS"
.LC20:
	.string	"ResendPPS"
.LC21:
	.string	"SourceWidth"
.LC22:
	.string	"SourceHeight"
.LC23:
	.string	"MbLineIntraUpdate"
.LC24:
	.string	"SliceMode"
.LC25:
	.string	"SliceArgument"
.LC26:
	.string	"UseConstrainedIntraPred"
.LC27:
	.string	"InputFile"
.LC28:
	.string	"InputHeaderLength"
.LC29:
	.string	"OutputFile"
.LC30:
	.string	"ReconFile"
.LC31:
	.string	"TraceFile"
.LC32:
	.string	"NumberBFrames"
.LC33:
	.string	"BRefPicQPOffset"
.LC34:
	.string	"DirectModeType"
.LC35:
	.string	"DirectInferenceFlag"
.LC36:
	.string	"SPPicturePeriodicity"
.LC37:
	.string	"QPSPSlice"
.LC38:
	.string	"QPSP2Slice"
.LC39:
	.string	"SymbolMode"
.LC40:
	.string	"OutFileMode"
.LC41:
	.string	"PartitionMode"
.LC42:
	.string	"InterSearch16x16"
.LC43:
	.string	"InterSearch16x8"
.LC44:
	.string	"InterSearch8x16"
.LC45:
	.string	"InterSearch8x8"
.LC46:
	.string	"InterSearch8x4"
.LC47:
	.string	"InterSearch4x8"
.LC48:
	.string	"InterSearch4x4"
.LC49:
	.string	"IntraDisableInterOnly"
.LC50:
	.string	"Intra4x4ParDisable"
.LC51:
	.string	"Intra4x4DiagDisable"
.LC52:
	.string	"Intra4x4DirDisable"
.LC53:
	.string	"Intra16x16ParDisable"
.LC54:
	.string	"Intra16x16PlaneDisable"
.LC55:
	.string	"ChromaIntraDisable"
.LC56:
	.string	"RestrictSearchRange"
.LC57:
	.string	"LastFrameNumber"
.LC58:
	.string	"ChangeQPI"
.LC59:
	.string	"ChangeQPP"
.LC60:
	.string	"ChangeQPB"
.LC61:
	.string	"ChangeQPBSRefOffset"
.LC62:
	.string	"ChangeQPStart"
.LC63:
	.string	"RDOptimization"
.LC64:
	.string	"DisableThresholding"
.LC65:
	.string	"DisableBSkipRDO"
.LC66:
	.string	"LossRateA"
.LC67:
	.string	"LossRateB"
.LC68:
	.string	"LossRateC"
.LC69:
	.string	"NumberOfDecoders"
.LC70:
	.string	"RestrictRefFrames"
.LC71:
	.string	"NumberofLeakyBuckets"
.LC72:
	.string	"LeakyBucketRateFile"
.LC73:
	.string	"LeakyBucketParamFile"
.LC74:
	.string	"PicInterlace"
.LC75:
	.string	"MbInterlace"
.LC76:
	.string	"IntraBottom"
	.align 8
.LC77:
	.string	"NumberFramesInEnhancementLayerSubSequence"
.LC78:
	.string	"NumberOfFrameInSecondIGOP"
.LC79:
	.string	"RandomIntraMBRefresh"
.LC80:
	.string	"WeightedPrediction"
.LC81:
	.string	"WeightedBiprediction"
.LC82:
	.string	"UseWeightedReferenceME"
.LC83:
	.string	"RDPictureDecision"
.LC84:
	.string	"RDPictureIntra"
.LC85:
	.string	"RDPSliceWeightOnly"
.LC86:
	.string	"RDBSliceWeightOnly"
.LC87:
	.string	"SkipIntraInInterSlices"
.LC88:
	.string	"BReferencePictures"
.LC89:
	.string	"PyramidCoding"
.LC90:
	.string	"ExplicitPyramidFormat"
.LC91:
	.string	"PyramidRefReorder"
.LC92:
	.string	"PocMemoryManagement"
.LC93:
	.string	"BiPredMotionEstimation"
.LC94:
	.string	"BiPredMERefinements"
.LC95:
	.string	"BiPredMESearchRange"
.LC96:
	.string	"BiPredMESubPel"
.LC97:
	.string	"LoopFilterParametersFlag"
.LC98:
	.string	"LoopFilterDisable"
.LC99:
	.string	"LoopFilterAlphaC0Offset"
.LC100:
	.string	"LoopFilterBetaOffset"
.LC101:
	.string	"SparePictureOption"
.LC102:
	.string	"SparePictureDetectionThr"
.LC103:
	.string	"SparePicturePercentageThr"
.LC104:
	.string	"num_slice_groups_minus1"
.LC105:
	.string	"slice_group_map_type"
	.align 8
.LC106:
	.string	"slice_group_change_direction_flag"
	.align 8
.LC107:
	.string	"slice_group_change_rate_minus1"
.LC108:
	.string	"SliceGroupConfigFileName"
.LC109:
	.string	"UseRedundantSlice"
.LC110:
	.string	"PicOrderCntType"
.LC111:
	.string	"ContextInitMethod"
.LC112:
	.string	"FixedModelNumber"
.LC113:
	.string	"Transform8x8Mode"
.LC114:
	.string	"ReportFrameStats"
.LC115:
	.string	"DisplayEncParams"
.LC116:
	.string	"RateControlEnable"
.LC117:
	.string	"Bitrate"
.LC118:
	.string	"InitialQP"
.LC119:
	.string	"BasicUnit"
.LC120:
	.string	"ChannelType"
.LC121:
	.string	"QmatrixFile"
.LC122:
	.string	"ScalingMatrixPresentFlag"
.LC123:
	.string	"ScalingListPresentFlag0"
.LC124:
	.string	"ScalingListPresentFlag1"
.LC125:
	.string	"ScalingListPresentFlag2"
.LC126:
	.string	"ScalingListPresentFlag3"
.LC127:
	.string	"ScalingListPresentFlag4"
.LC128:
	.string	"ScalingListPresentFlag5"
.LC129:
	.string	"ScalingListPresentFlag6"
.LC130:
	.string	"ScalingListPresentFlag7"
.LC131:
	.string	"UseFME"
.LC132:
	.string	"ChromaQPOffset"
.LC133:
	.string	"BitDepthLuma"
.LC134:
	.string	"BitDepthChroma"
.LC135:
	.string	"YUVFormat"
.LC136:
	.string	"RGBInput"
.LC137:
	.string	"CbQPOffset"
.LC138:
	.string	"CrQPOffset"
	.align 8
.LC139:
	.string	"QPPrimeYZeroTransformBypassFlag"
.LC140:
	.string	"ResidueTransformFlag"
.LC141:
	.string	"UseExplicitLambdaParams"
.LC142:
	.string	"LambdaWeightPslice"
.LC143:
	.string	"LambdaWeightBslice"
.LC144:
	.string	"LambdaWeightIslice"
.LC145:
	.string	"LambdaWeightSPslice"
.LC146:
	.string	"LambdaWeightSIslice"
.LC147:
	.string	"LambdaWeightRefBslice"
.LC148:
	.string	"QOffsetMatrixFile"
.LC149:
	.string	"OffsetMatrixPresentFlag"
	.data
	.align 32
	.type	Map, @object
	.size	Map, 8456
Map:
# TokenName:
	.quad	.LC0
# Place:
	.quad	configinput
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	1079377920
# param_limits:
	.long	0
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	0
# TokenName:
	.quad	.LC1
# Place:
	.quad	configinput+4
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	1077215232
# param_limits:
	.long	0
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	0
# TokenName:
	.quad	.LC2
# Place:
	.quad	configinput+2424
# Type:
	.long	2
# Default:
	.zero	4
	.long	0
	.long	1077805056
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1079574528
# TokenName:
	.quad	.LC3
# Place:
	.quad	configinput+1228
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1072693248
# TokenName:
	.quad	.LC4
# Place:
	.quad	configinput+1232
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	2
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	0
# TokenName:
	.quad	.LC5
# Place:
	.quad	configinput+1224
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	2
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	0
# TokenName:
	.quad	.LC6
# Place:
	.quad	configinput+8
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	1072693248
# param_limits:
	.long	2
# min_limit:
	.zero	4
	.long	0
	.long	1072693248
# max_limit:
	.long	0
	.long	0
# TokenName:
	.quad	.LC7
# Place:
	.quad	configinput+12
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	1077411840
# param_limits:
	.long	3
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1078558720
# TokenName:
	.quad	.LC8
# Place:
	.quad	configinput+16
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	1077411840
# param_limits:
	.long	3
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1078558720
# TokenName:
	.quad	.LC9
# Place:
	.quad	configinput+1240
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	1077411840
# param_limits:
	.long	3
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1078558720
# TokenName:
	.quad	.LC10
# Place:
	.quad	configinput+20
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	2
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	0
# TokenName:
	.quad	.LC11
# Place:
	.quad	configinput+24
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1072693248
# TokenName:
	.quad	.LC12
# Place:
	.quad	configinput+28
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1072693248
# TokenName:
	.quad	.LC13
# Place:
	.quad	configinput+32
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	1076887552
# param_limits:
	.long	2
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	0
# TokenName:
	.quad	.LC14
# Place:
	.quad	configinput+36
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	1072693248
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	1072693248
# max_limit:
	.long	0
	.long	1076887552
# TokenName:
	.quad	.LC15
# Place:
	.quad	configinput+40
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1076887552
# TokenName:
	.quad	.LC16
# Place:
	.quad	configinput+44
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1076887552
# TokenName:
	.quad	.LC17
# Place:
	.quad	configinput+48
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	1072693248
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1076887552
# TokenName:
	.quad	.LC18
# Place:
	.quad	configinput+52
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	2
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	0
# TokenName:
	.quad	.LC19
# Place:
	.quad	configinput+60
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1072693248
# TokenName:
	.quad	.LC20
# Place:
	.quad	configinput+56
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1072693248
# TokenName:
	.quad	.LC21
# Place:
	.quad	configinput+64
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	1080426496
# param_limits:
	.long	2
# min_limit:
	.zero	4
	.long	0
	.long	1076887552
# max_limit:
	.long	0
	.long	0
# TokenName:
	.quad	.LC22
# Place:
	.quad	configinput+68
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	1080164352
# param_limits:
	.long	2
# min_limit:
	.zero	4
	.long	0
	.long	1076887552
# max_limit:
	.long	0
	.long	0
# TokenName:
	.quad	.LC23
# Place:
	.quad	configinput+76
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1072693248
# TokenName:
	.quad	.LC24
# Place:
	.quad	configinput+208
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1074266112
# TokenName:
	.quad	.LC25
# Place:
	.quad	configinput+212
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	2
# min_limit:
	.zero	4
	.long	0
	.long	1072693248
# max_limit:
	.long	0
	.long	1072693248
# TokenName:
	.quad	.LC26
# Place:
	.quad	configinput+216
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1072693248
# TokenName:
	.quad	.LC27
# Place:
	.quad	configinput+224
# Type:
	.long	1
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	0
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	0
# TokenName:
	.quad	.LC28
# Place:
	.quad	configinput+220
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	2
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1072693248
# TokenName:
	.quad	.LC29
# Place:
	.quad	configinput+424
# Type:
	.long	1
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	0
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	0
# TokenName:
	.quad	.LC30
# Place:
	.quad	configinput+624
# Type:
	.long	1
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	0
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	0
# TokenName:
	.quad	.LC31
# Place:
	.quad	configinput+824
# Type:
	.long	1
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	0
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	0
# TokenName:
	.quad	.LC32
# Place:
	.quad	configinput+1236
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	2
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	0
# TokenName:
	.quad	.LC33
# Place:
	.quad	configinput+1244
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	0
# min_limit:
	.zero	4
	.long	0
	.long	-1068924928
# max_limit:
	.long	0
	.long	1078558720
# TokenName:
	.quad	.LC34
# Place:
	.quad	configinput+1248
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1072693248
# TokenName:
	.quad	.LC35
# Place:
	.quad	configinput+1252
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1072693248
# TokenName:
	.quad	.LC36
# Place:
	.quad	configinput+1272
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	2
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	0
# TokenName:
	.quad	.LC37
# Place:
	.quad	configinput+1276
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	1077411840
# param_limits:
	.long	3
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1078558720
# TokenName:
	.quad	.LC38
# Place:
	.quad	configinput+1280
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	1077411840
# param_limits:
	.long	3
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1078558720
# TokenName:
	.quad	.LC39
# Place:
	.quad	configinput+2356
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1072693248
# TokenName:
	.quad	.LC40
# Place:
	.quad	configinput+2360
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1072693248
# TokenName:
	.quad	.LC41
# Place:
	.quad	configinput+2364
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1072693248
# TokenName:
	.quad	.LC42
# Place:
	.quad	configinput+2368
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1072693248
# TokenName:
	.quad	.LC43
# Place:
	.quad	configinput+2372
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1072693248
# TokenName:
	.quad	.LC44
# Place:
	.quad	configinput+2376
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1072693248
# TokenName:
	.quad	.LC45
# Place:
	.quad	configinput+2380
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1072693248
# TokenName:
	.quad	.LC46
# Place:
	.quad	configinput+2384
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1072693248
# TokenName:
	.quad	.LC47
# Place:
	.quad	configinput+2388
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1072693248
# TokenName:
	.quad	.LC48
# Place:
	.quad	configinput+2392
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1072693248
# TokenName:
	.quad	.LC49
# Place:
	.quad	configinput+2396
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1072693248
# TokenName:
	.quad	.LC50
# Place:
	.quad	configinput+2400
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1072693248
# TokenName:
	.quad	.LC51
# Place:
	.quad	configinput+2404
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1072693248
# TokenName:
	.quad	.LC52
# Place:
	.quad	configinput+2408
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1072693248
# TokenName:
	.quad	.LC53
# Place:
	.quad	configinput+2412
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1072693248
# TokenName:
	.quad	.LC54
# Place:
	.quad	configinput+2416
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1072693248
# TokenName:
	.quad	.LC55
# Place:
	.quad	configinput+2420
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1072693248
# TokenName:
	.quad	.LC56
# Place:
	.quad	configinput+2436
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1073741824
# TokenName:
	.quad	.LC57
# Place:
	.quad	configinput+2440
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	2
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	0
# TokenName:
	.quad	.LC58
# Place:
	.quad	configinput+2456
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	1077411840
# param_limits:
	.long	3
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1078558720
# TokenName:
	.quad	.LC59
# Place:
	.quad	configinput+2444
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	1077411840
# param_limits:
	.long	3
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1078558720
# TokenName:
	.quad	.LC60
# Place:
	.quad	configinput+2448
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	1077411840
# param_limits:
	.long	3
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1078558720
# TokenName:
	.quad	.LC61
# Place:
	.quad	configinput+2460
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	-1068924928
# max_limit:
	.long	0
	.long	1078558720
# TokenName:
	.quad	.LC62
# Place:
	.quad	configinput+2452
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	2
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	0
# TokenName:
	.quad	.LC63
# Place:
	.quad	configinput+2464
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1072693248
# TokenName:
	.quad	.LC64
# Place:
	.quad	configinput+2468
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1072693248
# TokenName:
	.quad	.LC65
# Place:
	.quad	configinput+2472
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1072693248
# TokenName:
	.quad	.LC66
# Place:
	.quad	configinput+2892
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	2
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	0
# TokenName:
	.quad	.LC67
# Place:
	.quad	configinput+2896
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	2
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	0
# TokenName:
	.quad	.LC68
# Place:
	.quad	configinput+2900
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	2
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	0
# TokenName:
	.quad	.LC69
# Place:
	.quad	configinput+2904
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	2
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	0
# TokenName:
	.quad	.LC70
# Place:
	.quad	configinput+2908
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1072693248
# TokenName:
	.quad	.LC71
# Place:
	.quad	configinput+2476
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	1073741824
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	1073741824
# max_limit:
	.long	0
	.long	1081073664
# TokenName:
	.quad	.LC72
# Place:
	.quad	configinput+2480
# Type:
	.long	1
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	0
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	0
# TokenName:
	.quad	.LC73
# Place:
	.quad	configinput+2680
# Type:
	.long	1
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	0
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	0
# TokenName:
	.quad	.LC74
# Place:
	.quad	configinput+2880
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1073741824
# TokenName:
	.quad	.LC75
# Place:
	.quad	configinput+2884
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1073741824
# TokenName:
	.quad	.LC76
# Place:
	.quad	configinput+2888
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1072693248
# TokenName:
	.quad	.LC77
# Place:
	.quad	configinput+2912
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	2
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	0
# TokenName:
	.quad	.LC78
# Place:
	.quad	configinput+2916
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	2
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	0
# TokenName:
	.quad	.LC79
# Place:
	.quad	configinput+2920
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	2
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	0
# TokenName:
	.quad	.LC80
# Place:
	.quad	configinput+1284
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1072693248
# TokenName:
	.quad	.LC81
# Place:
	.quad	configinput+1288
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1073741824
# TokenName:
	.quad	.LC82
# Place:
	.quad	configinput+1292
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1072693248
# TokenName:
	.quad	.LC83
# Place:
	.quad	configinput+1296
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1072693248
# TokenName:
	.quad	.LC84
# Place:
	.quad	configinput+1300
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1072693248
# TokenName:
	.quad	.LC85
# Place:
	.quad	configinput+1304
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	1072693248
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1072693248
# TokenName:
	.quad	.LC86
# Place:
	.quad	configinput+1308
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1072693248
# TokenName:
	.quad	.LC87
# Place:
	.quad	configinput+1312
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1072693248
# TokenName:
	.quad	.LC88
# Place:
	.quad	configinput+1316
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1072693248
# TokenName:
	.quad	.LC89
# Place:
	.quad	configinput+1320
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1074266112
# TokenName:
	.quad	.LC90
# Place:
	.quad	configinput+1324
# Type:
	.long	1
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	0
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	0
# TokenName:
	.quad	.LC91
# Place:
	.quad	configinput+2348
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1072693248
# TokenName:
	.quad	.LC92
# Place:
	.quad	configinput+2352
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1072693248
# TokenName:
	.quad	.LC93
# Place:
	.quad	configinput+1256
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1072693248
# TokenName:
	.quad	.LC94
# Place:
	.quad	configinput+1260
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1075052544
# TokenName:
	.quad	.LC95
# Place:
	.quad	configinput+1264
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	1075838976
# param_limits:
	.long	2
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	0
# TokenName:
	.quad	.LC96
# Place:
	.quad	configinput+1268
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	1072693248
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1073741824
# TokenName:
	.quad	.LC97
# Place:
	.quad	configinput+2924
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1072693248
# TokenName:
	.quad	.LC98
# Place:
	.quad	configinput+2928
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1073741824
# TokenName:
	.quad	.LC99
# Place:
	.quad	configinput+2932
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	-1072168960
# max_limit:
	.long	0
	.long	1075314688
# TokenName:
	.quad	.LC100
# Place:
	.quad	configinput+2936
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	-1072168960
# max_limit:
	.long	0
	.long	1075314688
# TokenName:
	.quad	.LC101
# Place:
	.quad	configinput+2940
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1072693248
# TokenName:
	.quad	.LC102
# Place:
	.quad	configinput+2944
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	2
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	0
# TokenName:
	.quad	.LC103
# Place:
	.quad	configinput+2948
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	2
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1079574528
# TokenName:
	.quad	.LC104
# Place:
	.quad	configinput+3152
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1075576832
# TokenName:
	.quad	.LC105
# Place:
	.quad	configinput+3156
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1075314688
# TokenName:
	.quad	.LC106
# Place:
	.quad	configinput+3192
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1073741824
# TokenName:
	.quad	.LC107
# Place:
	.quad	configinput+3196
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	2
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1072693248
# TokenName:
	.quad	.LC108
# Place:
	.quad	configinput+2952
# Type:
	.long	1
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	0
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	0
# TokenName:
	.quad	.LC109
# Place:
	.quad	configinput+3204
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1072693248
# TokenName:
	.quad	.LC110
# Place:
	.quad	configinput+3208
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1073741824
# TokenName:
	.quad	.LC111
# Place:
	.quad	configinput+3212
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1072693248
# TokenName:
	.quad	.LC112
# Place:
	.quad	configinput+3216
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1073741824
# TokenName:
	.quad	.LC113
# Place:
	.quad	configinput+3220
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1073741824
# TokenName:
	.quad	.LC114
# Place:
	.quad	configinput+3228
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1072693248
# TokenName:
	.quad	.LC115
# Place:
	.quad	configinput+3232
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1072693248
# TokenName:
	.quad	.LC116
# Place:
	.quad	configinput+3236
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1072693248
# TokenName:
	.quad	.LC117
# Place:
	.quad	configinput+3240
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	2
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	0
# TokenName:
	.quad	.LC118
# Place:
	.quad	configinput+3244
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	3
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1078558720
# TokenName:
	.quad	.LC119
# Place:
	.quad	configinput+3248
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	2
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	0
# TokenName:
	.quad	.LC120
# Place:
	.quad	configinput+3252
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1072693248
# TokenName:
	.quad	.LC121
# Place:
	.quad	configinput+1024
# Type:
	.long	1
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	0
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	0
# TokenName:
	.quad	.LC122
# Place:
	.quad	configinput+3256
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1074266112
# TokenName:
	.quad	.LC123
# Place:
	.quad	configinput+3260
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1074266112
# TokenName:
	.quad	.LC124
# Place:
	.quad	configinput+3264
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1074266112
# TokenName:
	.quad	.LC125
# Place:
	.quad	configinput+3268
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1074266112
# TokenName:
	.quad	.LC126
# Place:
	.quad	configinput+3272
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1074266112
# TokenName:
	.quad	.LC127
# Place:
	.quad	configinput+3276
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1074266112
# TokenName:
	.quad	.LC128
# Place:
	.quad	configinput+3280
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1074266112
# TokenName:
	.quad	.LC129
# Place:
	.quad	configinput+3284
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1074266112
# TokenName:
	.quad	.LC130
# Place:
	.quad	configinput+3288
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1074266112
# TokenName:
	.quad	.LC131
# Place:
	.quad	configinput+3292
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1072693248
# TokenName:
	.quad	.LC132
# Place:
	.quad	configinput+2432
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	-1068924928
# max_limit:
	.long	0
	.long	1078558720
# TokenName:
	.quad	.LC133
# Place:
	.quad	configinput+3296
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	1075838976
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	1075838976
# max_limit:
	.long	0
	.long	1076363264
# TokenName:
	.quad	.LC134
# Place:
	.quad	configinput+3300
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	1075838976
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	1075838976
# max_limit:
	.long	0
	.long	1076363264
# TokenName:
	.quad	.LC135
# Place:
	.quad	configinput+72
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	1072693248
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1074266112
# TokenName:
	.quad	.LC136
# Place:
	.quad	configinput+3312
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1072693248
# TokenName:
	.quad	.LC137
# Place:
	.quad	configinput+3316
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	-1068924928
# max_limit:
	.long	0
	.long	1078558720
# TokenName:
	.quad	.LC138
# Place:
	.quad	configinput+3320
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	-1068924928
# max_limit:
	.long	0
	.long	1078558720
# TokenName:
	.quad	.LC139
# Place:
	.quad	configinput+3324
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1072693248
# TokenName:
	.quad	.LC140
# Place:
	.quad	configinput+3328
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1072693248
# TokenName:
	.quad	.LC141
# Place:
	.quad	configinput+3332
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1074266112
# TokenName:
	.quad	.LC142
# Place:
	.quad	configinput+3336
# Type:
	.long	2
# Default:
	.zero	4
	.long	1546188227
	.long	1072022159
# param_limits:
	.long	2
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	0
# TokenName:
	.quad	.LC143
# Place:
	.quad	configinput+3344
# Type:
	.long	2
# Default:
	.zero	4
	.long	0
	.long	1073741824
# param_limits:
	.long	2
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	0
# TokenName:
	.quad	.LC144
# Place:
	.quad	configinput+3352
# Type:
	.long	2
# Default:
	.zero	4
	.long	3435973837
	.long	1071959244
# param_limits:
	.long	2
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	0
# TokenName:
	.quad	.LC145
# Place:
	.quad	configinput+3360
# Type:
	.long	2
# Default:
	.zero	4
	.long	0
	.long	1073217536
# param_limits:
	.long	2
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	0
# TokenName:
	.quad	.LC146
# Place:
	.quad	configinput+3368
# Type:
	.long	2
# Default:
	.zero	4
	.long	3435973837
	.long	1071959244
# param_limits:
	.long	2
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	0
# TokenName:
	.quad	.LC147
# Place:
	.quad	configinput+3376
# Type:
	.long	2
# Default:
	.zero	4
	.long	0
	.long	1073217536
# param_limits:
	.long	2
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	0
# TokenName:
	.quad	.LC148
# Place:
	.quad	configinput+3384
# Type:
	.long	1
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	0
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	0
# TokenName:
	.quad	.LC149
# Place:
	.quad	configinput+3584
# Type:
	.long	0
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	1
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	1074266112
# TokenName:
	.quad	0
# Place:
	.quad	0
# Type:
	.long	-1
# Default:
	.zero	4
	.long	0
	.long	0
# param_limits:
	.long	0
# min_limit:
	.zero	4
	.long	0
	.long	0
# max_limit:
	.long	0
	.long	0
	.comm	configinput,3592,32
	.section	.rodata
	.align 8
.LC150:
	.ascii	"\n   lencod [-h] [-p defenc.cfg] {[-f curenc1.cfg]...[-f cur"
	.ascii	"encN.cfg]} {[-p EncParam1=EncValue1]..[-p EncParamM=EncValue"
	.ascii	"M]}\n\n## Parameters\n\n## Options\n   -h :  prints function"
	.ascii	" usage\n   -d :  use <defenc.cfg> as default file for parame"
	.ascii	"ter initializations.\n         If not used then file default"
	.ascii	"s to encoder.cfg in local directory.\n   -f :  read <curencM"
	.ascii	".cfg> for reseting selected encoder parameters.\n         Mu"
	.ascii	"ltiple files could be used that set different parameters\n  "
	.ascii	" -p :  Set parameter <EncParamM> to <EncValueM>.\n         S"
	.ascii	"ee default encoder.cfg file for description of all parameter"
	.ascii	"s.\n\n## Supported video file formats\n   RAW:  .yuv -> YUV "
	.ascii	"4:2:0\n\n## Examples of usage:\n   lencod\n   lencod  -h\n "
	.string	"  lencod  -d default.cfg\n   lencod  -f curenc1.cfg\n   lencod  -f curenc1.cfg -p InputFile=\"e:\\data\\container_qcif_30.yuv\" -p SourceWidth=176 -p SourceHeight=144\n   lencod  -f curenc1.cfg -p FramesToBeEncoded=30 -p QPISlice=28 -p QPPSlice=28 -p QPBSlice=30\n"
	.text
	.globl	JMHelpExit
	.type	JMHelpExit, @function
JMHelpExit:
.LFB2:
	.file 1 "configfile.c"
	.loc 1 103 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 104 0
	movq	stderr(%rip), %rax	# stderr, stderr.0
	movq	%rax, %rcx	# stderr.0,
	movl	$955, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC150, %edi	#,
	call	fwrite	#
	.loc 1 128 0
	movl	$-1, %edi	#,
	call	exit	#
	.cfi_endproc
.LFE2:
	.size	JMHelpExit, .-JMHelpExit
	.section	.rodata
.LC151:
	.string	"encoder.cfg"
.LC152:
	.string	"Setting Default Parameters..."
.LC153:
	.string	"-h"
.LC154:
	.string	"-d"
.LC155:
	.string	"Parsing Configfile %s"
.LC156:
	.string	"-f"
.LC157:
	.string	"-p"
.LC158:
	.string	"Configure: content"
	.align 8
.LC159:
	.string	"Parsing command line string '%s'"
	.align 8
.LC160:
	.string	"Error in command line, ac %d, around string '%s', missing -f or -p parameters?"
	.text
	.globl	Configure
	.type	Configure, @function
Configure:
.LFB3:
	.loc 1 142 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movl	%edi, -52(%rbp)	# ac, ac
	movq	%rsi, -64(%rbp)	# av, av
	.loc 1 145 0
	movq	$.LC151, -32(%rbp)	#, filename
	.loc 1 147 0
	movl	$3592, %edx	#,
	movl	$0, %esi	#,
	movl	$configinput, %edi	#,
	call	memset	#
	.loc 1 149 0
	movl	$.LC152, %edi	#,
	call	puts	#
	.loc 1 150 0
	movl	$0, %eax	#,
	call	InitEncoderParams	#
	.loc 1 153 0
	movl	$1, -44(%rbp)	#, CLcount
	.loc 1 155 0
	cmpl	$2, -52(%rbp)	#, ac
	jne	.L3	#,
	.loc 1 157 0
	movq	-64(%rbp), %rax	# av, tmp131
	addq	$8, %rax	#, D.6395
	movq	(%rax), %rax	# *_16, D.6396
	movl	$2, %edx	#,
	movl	$.LC153, %esi	#,
	movq	%rax, %rdi	# D.6396,
	call	strncmp	#
	testl	%eax, %eax	# D.6397
	jne	.L3	#,
	.loc 1 159 0
	movl	$0, %eax	#,
	call	JMHelpExit	#
.L3:
	.loc 1 163 0
	cmpl	$2, -52(%rbp)	#, ac
	jle	.L4	#,
	.loc 1 165 0
	movq	-64(%rbp), %rax	# av, tmp132
	addq	$8, %rax	#, D.6395
	movq	(%rax), %rax	# *_19, D.6396
	movl	$2, %edx	#,
	movl	$.LC154, %esi	#,
	movq	%rax, %rdi	# D.6396,
	call	strncmp	#
	testl	%eax, %eax	# D.6397
	jne	.L5	#,
	.loc 1 167 0
	movq	-64(%rbp), %rax	# av, tmp133
	movq	16(%rax), %rax	# MEM[(char * *)av_15(D) + 16B], tmp134
	movq	%rax, -32(%rbp)	# tmp134, filename
	.loc 1 168 0
	movl	$3, -44(%rbp)	#, CLcount
.L5:
	.loc 1 170 0
	movq	-64(%rbp), %rax	# av, tmp135
	addq	$8, %rax	#, D.6395
	movq	(%rax), %rax	# *_24, D.6396
	movl	$2, %edx	#,
	movl	$.LC153, %esi	#,
	movq	%rax, %rdi	# D.6396,
	call	strncmp	#
	testl	%eax, %eax	# D.6397
	jne	.L4	#,
	.loc 1 172 0
	movl	$0, %eax	#,
	call	JMHelpExit	#
.L4:
	.loc 1 175 0
	movq	-32(%rbp), %rax	# filename, tmp136
	movq	%rax, %rsi	# tmp136,
	movl	$.LC155, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 176 0
	movq	-32(%rbp), %rax	# filename, tmp137
	movq	%rax, %rdi	# tmp137,
	call	GetConfigFileContent	#
	movq	%rax, -8(%rbp)	# tmp138, content
	.loc 1 177 0
	cmpq	$0, -8(%rbp)	#, content
	jne	.L6	#,
	.loc 1 178 0
	movl	$300, %esi	#,
	movl	$errortext, %edi	#,
	call	error	#
.L6:
	.loc 1 179 0
	movq	-8(%rbp), %rax	# content, tmp139
	movq	%rax, %rdi	# tmp139,
	call	strlen	#
	movl	%eax, %edx	# D.6398, D.6397
	movq	-8(%rbp), %rax	# content, tmp140
	movl	%edx, %esi	# D.6397,
	movq	%rax, %rdi	# tmp140,
	call	ParseContent	#
	.loc 1 180 0
	movl	$10, %edi	#,
	call	putchar	#
	.loc 1 181 0
	movq	-8(%rbp), %rax	# content, tmp141
	movq	%rax, %rdi	# tmp141,
	call	free	#
	.loc 1 185 0
	jmp	.L7	#
.L22:
	.loc 1 187 0
	movl	-44(%rbp), %eax	# CLcount, tmp142
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6398
	movq	-64(%rbp), %rax	# av, tmp143
	addq	%rdx, %rax	# D.6398, D.6395
	movq	(%rax), %rax	# *_32, D.6396
	movl	$2, %edx	#,
	movl	$.LC153, %esi	#,
	movq	%rax, %rdi	# D.6396,
	call	strncmp	#
	testl	%eax, %eax	# D.6397
	jne	.L8	#,
	.loc 1 189 0
	movl	$0, %eax	#,
	call	JMHelpExit	#
.L8:
	.loc 1 192 0
	movl	-44(%rbp), %eax	# CLcount, tmp144
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6398
	movq	-64(%rbp), %rax	# av, tmp145
	addq	%rdx, %rax	# D.6398, D.6395
	movq	(%rax), %rax	# *_37, D.6396
	movl	$2, %edx	#,
	movl	$.LC156, %esi	#,
	movq	%rax, %rdi	# D.6396,
	call	strncmp	#
	testl	%eax, %eax	# D.6397
	jne	.L9	#,
	.loc 1 194 0
	movl	-44(%rbp), %eax	# CLcount, tmp146
	cltq
	addq	$1, %rax	#, D.6399
	leaq	0(,%rax,8), %rdx	#, D.6399
	movq	-64(%rbp), %rax	# av, tmp147
	addq	%rdx, %rax	# D.6399, D.6395
	movq	(%rax), %rax	# *_43, D.6396
	movq	%rax, %rdi	# D.6396,
	call	GetConfigFileContent	#
	movq	%rax, -8(%rbp)	# tmp148, content
	.loc 1 195 0
	cmpq	$0, -8(%rbp)	#, content
	jne	.L10	#,
	.loc 1 196 0
	movl	$300, %esi	#,
	movl	$errortext, %edi	#,
	call	error	#
.L10:
	.loc 1 197 0
	movl	-44(%rbp), %eax	# CLcount, tmp149
	cltq
	addq	$1, %rax	#, D.6399
	leaq	0(,%rax,8), %rdx	#, D.6399
	movq	-64(%rbp), %rax	# av, tmp150
	addq	%rdx, %rax	# D.6399, D.6395
	movq	(%rax), %rax	# *_49, D.6396
	movq	%rax, %rsi	# D.6396,
	movl	$.LC155, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 198 0
	movq	-8(%rbp), %rax	# content, tmp151
	movq	%rax, %rdi	# tmp151,
	call	strlen	#
	movl	%eax, %edx	# D.6398, D.6397
	movq	-8(%rbp), %rax	# content, tmp152
	movl	%edx, %esi	# D.6397,
	movq	%rax, %rdi	# tmp152,
	call	ParseContent	#
	.loc 1 199 0
	movl	$10, %edi	#,
	call	putchar	#
	.loc 1 200 0
	movq	-8(%rbp), %rax	# content, tmp153
	movq	%rax, %rdi	# tmp153,
	call	free	#
	.loc 1 201 0
	addl	$2, -44(%rbp)	#, CLcount
	jmp	.L7	#
.L9:
	.loc 1 204 0
	movl	-44(%rbp), %eax	# CLcount, tmp154
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6398
	movq	-64(%rbp), %rax	# av, tmp155
	addq	%rdx, %rax	# D.6398, D.6395
	movq	(%rax), %rax	# *_56, D.6396
	movl	$2, %edx	#,
	movl	$.LC157, %esi	#,
	movq	%rax, %rdi	# D.6396,
	call	strncmp	#
	testl	%eax, %eax	# D.6397
	jne	.L11	#,
	.loc 1 209 0
	addl	$1, -44(%rbp)	#, CLcount
	.loc 1 210 0
	movl	$0, -40(%rbp)	#, ContentLen
	.loc 1 211 0
	movl	-44(%rbp), %eax	# CLcount, tmp156
	movl	%eax, -36(%rbp)	# tmp156, NumberParams
	.loc 1 214 0
	jmp	.L12	#
.L14:
	.loc 1 215 0
	movl	-36(%rbp), %eax	# NumberParams, NumberParams.1
	leal	1(%rax), %edx	#, tmp157
	movl	%edx, -36(%rbp)	# tmp157, NumberParams
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6398
	movq	-64(%rbp), %rax	# av, tmp158
	addq	%rdx, %rax	# D.6398, D.6395
	movq	(%rax), %rax	# *_71, D.6396
	movq	%rax, %rdi	# D.6396,
	call	strlen	#
	movl	%eax, %edx	# D.6398, D.6401
	movl	-40(%rbp), %eax	# ContentLen, ContentLen.2
	addl	%edx, %eax	# D.6401, D.6401
	movl	%eax, -40(%rbp)	# D.6401, ContentLen
.L12:
	.loc 1 214 0 discriminator 1
	movl	-36(%rbp), %eax	# NumberParams, tmp159
	cmpl	-52(%rbp), %eax	# ac, tmp159
	jge	.L13	#,
	.loc 1 214 0 is_stmt 0 discriminator 2
	movl	-36(%rbp), %eax	# NumberParams, tmp160
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6398
	movq	-64(%rbp), %rax	# av, tmp161
	addq	%rdx, %rax	# D.6398, D.6395
	movq	(%rax), %rax	# *_64, D.6396
	movzbl	(%rax), %eax	# *_65, D.6400
	cmpb	$45, %al	#, D.6400
	jne	.L14	#,
.L13:
	.loc 1 216 0 is_stmt 1
	addl	$1000, -40(%rbp)	#, ContentLen
	.loc 1 219 0
	movl	-40(%rbp), %eax	# ContentLen, tmp162
	cltq
	movq	%rax, %rdi	# D.6398,
	call	malloc	#
	movq	%rax, -8(%rbp)	# tmp163, content
	cmpq	$0, -8(%rbp)	#, content
	jne	.L15	#,
	.loc 1 219 0 is_stmt 0 discriminator 1
	movl	$.LC158, %edi	#,
	call	no_mem_exit	#
.L15:
	.loc 1 220 0 is_stmt 1
	movq	-8(%rbp), %rax	# content, tmp164
	movb	$0, (%rax)	#, *content_80
	.loc 1 224 0
	jmp	.L16	#
.L21:
.LBB2:
	.loc 1 226 0
	movl	-44(%rbp), %eax	# CLcount, tmp165
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6398
	movq	-64(%rbp), %rax	# av, tmp166
	addq	%rdx, %rax	# D.6398, D.6395
	movq	(%rax), %rax	# *_83, tmp167
	movq	%rax, -24(%rbp)	# tmp167, source
	.loc 1 227 0
	movq	-8(%rbp), %rax	# content, tmp168
	movq	%rax, %rdi	# tmp168,
	call	strlen	#
	movq	-8(%rbp), %rdx	# content, tmp172
	addq	%rdx, %rax	# tmp172, tmp171
	movq	%rax, -16(%rbp)	# tmp171, destin
	.loc 1 229 0
	jmp	.L17	#
.L20:
	.loc 1 231 0
	movq	-24(%rbp), %rax	# source, tmp173
	movzbl	(%rax), %eax	# *source_9, D.6400
	cmpb	$61, %al	#, D.6400
	jne	.L18	#,
	.loc 1 233 0
	movq	-16(%rbp), %rax	# destin, destin.3
	leaq	1(%rax), %rdx	#, tmp174
	movq	%rdx, -16(%rbp)	# tmp174, destin
	movb	$32, (%rax)	#, *destin.3_89
	movq	-16(%rbp), %rax	# destin, destin.4
	leaq	1(%rax), %rdx	#, tmp175
	movq	%rdx, -16(%rbp)	# tmp175, destin
	movb	$61, (%rax)	#, *destin.4_91
	movq	-16(%rbp), %rax	# destin, destin.5
	leaq	1(%rax), %rdx	#, tmp176
	movq	%rdx, -16(%rbp)	# tmp176, destin
	movb	$32, (%rax)	#, *destin.5_93
	jmp	.L19	#
.L18:
	.loc 1 235 0
	movq	-16(%rbp), %rax	# destin, destin.6
	leaq	1(%rax), %rdx	#, tmp177
	movq	%rdx, -16(%rbp)	# tmp177, destin
	movq	-24(%rbp), %rdx	# source, tmp178
	movzbl	(%rdx), %edx	# *source_9, D.6400
	movb	%dl, (%rax)	# D.6400, *destin.6_95
.L19:
	.loc 1 236 0
	addq	$1, -24(%rbp)	#, source
.L17:
	.loc 1 229 0 discriminator 1
	movq	-24(%rbp), %rax	# source, tmp179
	movzbl	(%rax), %eax	# *source_9, D.6400
	testb	%al, %al	# D.6400
	jne	.L20	#,
	.loc 1 238 0
	movq	-16(%rbp), %rax	# destin, tmp180
	movb	$0, (%rax)	#, *destin_11
	.loc 1 239 0
	addl	$1, -44(%rbp)	#, CLcount
.L16:
.LBE2:
	.loc 1 224 0 discriminator 1
	movl	-44(%rbp), %eax	# CLcount, tmp181
	cmpl	-36(%rbp), %eax	# NumberParams, tmp181
	jl	.L21	#,
	.loc 1 241 0
	movq	-8(%rbp), %rax	# content, tmp182
	movq	%rax, %rsi	# tmp182,
	movl	$.LC159, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 242 0
	movq	-8(%rbp), %rax	# content, tmp183
	movq	%rax, %rdi	# tmp183,
	call	strlen	#
	movl	%eax, %edx	# D.6398, D.6397
	movq	-8(%rbp), %rax	# content, tmp184
	movl	%edx, %esi	# D.6397,
	movq	%rax, %rdi	# tmp184,
	call	ParseContent	#
	.loc 1 243 0
	movq	-8(%rbp), %rax	# content, tmp185
	movq	%rax, %rdi	# tmp185,
	call	free	#
	.loc 1 244 0
	movl	$10, %edi	#,
	call	putchar	#
	jmp	.L7	#
.L11:
	.loc 1 248 0
	movl	-44(%rbp), %eax	# CLcount, tmp186
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6398
	movq	-64(%rbp), %rax	# av, tmp187
	addq	%rdx, %rax	# D.6398, D.6395
	movq	(%rax), %rdx	# *_104, D.6396
	movl	-44(%rbp), %eax	# CLcount, tmp188
	movq	%rdx, %r8	# D.6396,
	movl	%eax, %ecx	# tmp188,
	movl	$.LC160, %edx	#,
	movl	$300, %esi	#,
	movl	$errortext, %edi	#,
	movl	$0, %eax	#,
	call	snprintf	#
	.loc 1 249 0
	movl	$300, %esi	#,
	movl	$errortext, %edi	#,
	call	error	#
.L7:
	.loc 1 185 0 discriminator 1
	movl	-44(%rbp), %eax	# CLcount, tmp189
	cmpl	-52(%rbp), %eax	# ac, tmp189
	jl	.L22	#,
	.loc 1 253 0
	movl	$10, %edi	#,
	call	putchar	#
	.loc 1 254 0
	movl	$0, %eax	#,
	call	PatchInp	#
	.loc 1 255 0
	movq	input(%rip), %rax	# input, input.7
	movl	3232(%rax), %eax	# input.7_106->DisplayEncParams, D.6397
	testl	%eax, %eax	# D.6397
	je	.L2	#,
	.loc 1 256 0
	movl	$0, %eax	#,
	call	DisplayEncoderParams	#
.L2:
	.loc 1 257 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	Configure, .-Configure
	.section	.rodata
.LC161:
	.string	"r"
	.align 8
.LC162:
	.string	"Cannot open configuration file %s."
	.align 8
.LC163:
	.string	"Cannot fseek in configuration file %s."
	.align 8
.LC164:
	.string	"Unreasonable Filesize %ld reported by ftell for configuration file %s."
.LC165:
	.string	"GetConfigFileContent: buf"
	.text
	.globl	GetConfigFileContent
	.type	GetConfigFileContent, @function
GetConfigFileContent:
.LFB4:
	.loc 1 272 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# Filename, Filename
	.loc 1 277 0
	movq	-40(%rbp), %rax	# Filename, tmp69
	movl	$.LC161, %esi	#,
	movq	%rax, %rdi	# tmp69,
	call	fopen	#
	movq	%rax, -24(%rbp)	# tmp70, f
	cmpq	$0, -24(%rbp)	#, f
	jne	.L25	#,
	.loc 1 279 0
	movq	-40(%rbp), %rax	# Filename, tmp71
	movq	%rax, %rcx	# tmp71,
	movl	$.LC162, %edx	#,
	movl	$300, %esi	#,
	movl	$errortext, %edi	#,
	movl	$0, %eax	#,
	call	snprintf	#
	.loc 1 280 0
	movl	$0, %eax	#, D.6412
	jmp	.L26	#
.L25:
	.loc 1 283 0
	movq	-24(%rbp), %rax	# f, tmp72
	movl	$2, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp72,
	call	fseek	#
	testl	%eax, %eax	# D.6413
	je	.L27	#,
	.loc 1 285 0
	movq	-40(%rbp), %rax	# Filename, tmp73
	movq	%rax, %rcx	# tmp73,
	movl	$.LC163, %edx	#,
	movl	$300, %esi	#,
	movl	$errortext, %edi	#,
	movl	$0, %eax	#,
	call	snprintf	#
	.loc 1 286 0
	movl	$0, %eax	#, D.6412
	jmp	.L26	#
.L27:
	.loc 1 289 0
	movq	-24(%rbp), %rax	# f, tmp74
	movq	%rax, %rdi	# tmp74,
	call	ftell	#
	movq	%rax, -16(%rbp)	# tmp75, FileSize
	.loc 1 290 0
	cmpq	$0, -16(%rbp)	#, FileSize
	js	.L28	#,
	.loc 1 290 0 is_stmt 0 discriminator 1
	cmpq	$60000, -16(%rbp)	#, FileSize
	jle	.L29	#,
.L28:
	.loc 1 292 0 is_stmt 1
	movq	-40(%rbp), %rdx	# Filename, tmp76
	movq	-16(%rbp), %rax	# FileSize, tmp77
	movq	%rdx, %r8	# tmp76,
	movq	%rax, %rcx	# tmp77,
	movl	$.LC164, %edx	#,
	movl	$300, %esi	#,
	movl	$errortext, %edi	#,
	movl	$0, %eax	#,
	call	snprintf	#
	.loc 1 293 0
	movl	$0, %eax	#, D.6412
	jmp	.L26	#
.L29:
	.loc 1 295 0
	movq	-24(%rbp), %rax	# f, tmp78
	movl	$0, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp78,
	call	fseek	#
	testl	%eax, %eax	# D.6413
	je	.L30	#,
	.loc 1 297 0
	movq	-40(%rbp), %rax	# Filename, tmp79
	movq	%rax, %rcx	# tmp79,
	movl	$.LC163, %edx	#,
	movl	$300, %esi	#,
	movl	$errortext, %edi	#,
	movl	$0, %eax	#,
	call	snprintf	#
	.loc 1 298 0
	movl	$0, %eax	#, D.6412
	jmp	.L26	#
.L30:
	.loc 1 301 0
	movq	-16(%rbp), %rax	# FileSize, tmp80
	addq	$1, %rax	#, D.6414
	movq	%rax, %rdi	# D.6415,
	call	malloc	#
	movq	%rax, -8(%rbp)	# tmp81, buf
	cmpq	$0, -8(%rbp)	#, buf
	jne	.L31	#,
	.loc 1 301 0 is_stmt 0 discriminator 1
	movl	$.LC165, %edi	#,
	call	no_mem_exit	#
.L31:
	.loc 1 307 0 is_stmt 1
	movq	-16(%rbp), %rdx	# FileSize, FileSize.8
	movq	-24(%rbp), %rcx	# f, tmp82
	movq	-8(%rbp), %rax	# buf, tmp83
	movl	$1, %esi	#,
	movq	%rax, %rdi	# tmp83,
	call	fread	#
	movq	%rax, -16(%rbp)	# D.6415, FileSize
	.loc 1 308 0
	movq	-16(%rbp), %rdx	# FileSize, FileSize.9
	movq	-8(%rbp), %rax	# buf, tmp84
	addq	%rdx, %rax	# FileSize.9, D.6412
	movb	$0, (%rax)	#, *_17
	.loc 1 311 0
	movq	-24(%rbp), %rax	# f, tmp85
	movq	%rax, %rdi	# tmp85,
	call	fclose	#
	.loc 1 312 0
	movq	-8(%rbp), %rax	# buf, D.6412
.L26:
	.loc 1 313 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	GetConfigFileContent, .-GetConfigFileContent
	.section	.rodata
	.align 8
.LC166:
	.string	" Parsing error in config file: Parameter Name '%s' not recognized."
.LC167:
	.string	"="
.LC168:
	.string	"%d"
	.align 8
.LC169:
	.string	" Parsing error: Expected numerical value for Parameter of %s, found '%s'."
.LC170:
	.string	"%lf"
	.text
	.type	ParseContent, @function
ParseContent:
.LFB5:
	.loc 1 329 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$80064, %rsp	#,
	movq	%rdi, -80056(%rbp)	# buf, buf
	movl	%esi, -80060(%rbp)	# bufsize, bufsize
	.loc 1 333 0
	movl	$0, -80044(%rbp)	#, item
	.loc 1 334 0
	movl	$0, -80040(%rbp)	#, InString
	movl	$0, -80036(%rbp)	#, InItem
	.loc 1 335 0
	movq	-80056(%rbp), %rax	# buf, tmp94
	movq	%rax, -80016(%rbp)	# tmp94, p
	.loc 1 336 0
	movl	-80060(%rbp), %eax	# bufsize, tmp95
	movslq	%eax, %rdx	# tmp95, D.6421
	movq	-80056(%rbp), %rax	# buf, tmp99
	addq	%rdx, %rax	# D.6421, tmp98
	movq	%rax, -80008(%rbp)	# tmp98, bufend
	.loc 1 344 0
	jmp	.L33	#
.L49:
	.loc 1 346 0
	movq	-80016(%rbp), %rax	# p, tmp100
	movzbl	(%rax), %eax	# *p_11, D.6422
	movsbl	%al, %eax	# D.6422, D.6423
	subl	$9, %eax	#, tmp101
	cmpl	$26, %eax	#, tmp101
	ja	.L34	#,
	movl	%eax, %eax	# tmp101, tmp102
	movq	.L36(,%rax,8), %rax	#, tmp103
	jmp	*%rax	# tmp103
	.section	.rodata
	.align 8
	.align 4
.L36:
	.quad	.L35
	.quad	.L37
	.quad	.L34
	.quad	.L34
	.quad	.L38
	.quad	.L34
	.quad	.L34
	.quad	.L34
	.quad	.L34
	.quad	.L34
	.quad	.L34
	.quad	.L34
	.quad	.L34
	.quad	.L34
	.quad	.L34
	.quad	.L34
	.quad	.L34
	.quad	.L34
	.quad	.L34
	.quad	.L34
	.quad	.L34
	.quad	.L34
	.quad	.L34
	.quad	.L35
	.quad	.L34
	.quad	.L39
	.quad	.L40
	.text
.L38:
	.loc 1 349 0
	addq	$1, -80016(%rbp)	#, p
	.loc 1 350 0
	jmp	.L33	#
.L40:
	.loc 1 352 0
	movq	-80016(%rbp), %rax	# p, tmp104
	movb	$0, (%rax)	#, *p_11
	.loc 1 353 0
	jmp	.L41	#
.L43:
	.loc 1 354 0
	addq	$1, -80016(%rbp)	#, p
.L41:
	.loc 1 353 0 discriminator 1
	movq	-80016(%rbp), %rax	# p, tmp105
	movzbl	(%rax), %eax	# *p_9, D.6422
	cmpb	$10, %al	#, D.6422
	je	.L42	#,
	.loc 1 353 0 is_stmt 0 discriminator 2
	movq	-80016(%rbp), %rax	# p, tmp106
	cmpq	-80008(%rbp), %rax	# bufend, tmp106
	jb	.L43	#,
.L42:
	.loc 1 355 0 is_stmt 1
	movl	$0, -80040(%rbp)	#, InString
	.loc 1 356 0
	movl	$0, -80036(%rbp)	#, InItem
	.loc 1 357 0
	jmp	.L33	#
.L37:
	.loc 1 359 0
	movl	$0, -80036(%rbp)	#, InItem
	.loc 1 360 0
	movl	$0, -80040(%rbp)	#, InString
	.loc 1 361 0
	movq	-80016(%rbp), %rax	# p, p.10
	leaq	1(%rax), %rdx	#, tmp107
	movq	%rdx, -80016(%rbp)	# tmp107, p
	movb	$0, (%rax)	#, *p.10_30
	.loc 1 362 0
	jmp	.L33	#
.L35:
	.loc 1 365 0
	cmpl	$0, -80040(%rbp)	#, InString
	je	.L44	#,
	.loc 1 366 0
	addq	$1, -80016(%rbp)	#, p
	.loc 1 372 0
	jmp	.L33	#
.L44:
	.loc 1 369 0
	movq	-80016(%rbp), %rax	# p, p.11
	leaq	1(%rax), %rdx	#, tmp108
	movq	%rdx, -80016(%rbp)	# tmp108, p
	movb	$0, (%rax)	#, *p.11_33
	.loc 1 370 0
	movl	$0, -80036(%rbp)	#, InItem
	.loc 1 372 0
	jmp	.L33	#
.L39:
	.loc 1 375 0
	movq	-80016(%rbp), %rax	# p, p.12
	leaq	1(%rax), %rdx	#, tmp109
	movq	%rdx, -80016(%rbp)	# tmp109, p
	movb	$0, (%rax)	#, *p.12_36
	.loc 1 376 0
	cmpl	$0, -80040(%rbp)	#, InString
	jne	.L46	#,
	.loc 1 378 0
	movl	-80044(%rbp), %eax	# item, item.13
	leal	1(%rax), %edx	#, tmp110
	movl	%edx, -80044(%rbp)	# tmp110, item
	cltq
	movq	-80016(%rbp), %rdx	# p, tmp112
	movq	%rdx, -80000(%rbp,%rax,8)	# tmp112, items
	.loc 1 379 0
	notl	-80036(%rbp)	# InItem
	jmp	.L47	#
.L46:
	.loc 1 382 0
	movl	$0, -80036(%rbp)	#, InItem
.L47:
	.loc 1 383 0
	notl	-80040(%rbp)	# InString
	.loc 1 384 0
	jmp	.L33	#
.L34:
	.loc 1 387 0
	cmpl	$0, -80036(%rbp)	#, InItem
	jne	.L48	#,
	.loc 1 389 0
	movl	-80044(%rbp), %eax	# item, item.14
	leal	1(%rax), %edx	#, tmp113
	movl	%edx, -80044(%rbp)	# tmp113, item
	cltq
	movq	-80016(%rbp), %rdx	# p, tmp115
	movq	%rdx, -80000(%rbp,%rax,8)	# tmp115, items
	.loc 1 390 0
	notl	-80036(%rbp)	# InItem
.L48:
	.loc 1 392 0
	addq	$1, -80016(%rbp)	#, p
.L33:
	.loc 1 344 0 discriminator 1
	movq	-80016(%rbp), %rax	# p, tmp116
	cmpq	-80008(%rbp), %rax	# bufend, tmp116
	jb	.L49	#,
	.loc 1 396 0
	subl	$1, -80044(%rbp)	#, item
	.loc 1 398 0
	movl	$0, -80032(%rbp)	#, i
	jmp	.L50	#
.L59:
	.loc 1 400 0
	movl	-80032(%rbp), %eax	# i, tmp118
	cltq
	movq	-80000(%rbp,%rax,8), %rax	# items, D.6424
	movq	%rax, %rdi	# D.6424,
	call	ParameterNameToMapIndex	#
	movl	%eax, -80028(%rbp)	# tmp119, MapIdx
	cmpl	$0, -80028(%rbp)	#, MapIdx
	jns	.L51	#,
	.loc 1 402 0
	movl	-80032(%rbp), %eax	# i, tmp121
	cltq
	movq	-80000(%rbp,%rax,8), %rax	# items, D.6424
	movq	%rax, %rcx	# D.6424,
	movl	$.LC166, %edx	#,
	movl	$300, %esi	#,
	movl	$errortext, %edi	#,
	movl	$0, %eax	#,
	call	snprintf	#
	.loc 1 403 0
	movl	$300, %esi	#,
	movl	$errortext, %edi	#,
	call	error	#
.L51:
	.loc 1 405 0
	movl	-80032(%rbp), %eax	# i, tmp122
	addl	$1, %eax	#, D.6423
	cltq
	movq	-80000(%rbp,%rax,8), %rax	# items, D.6424
	movq	%rax, %rsi	# D.6424,
	movl	$.LC167, %edi	#,
	call	strcmp	#
	testl	%eax, %eax	# D.6423
	je	.L52	#,
	.loc 1 407 0
	movabsq	$7453010377905885216, %rax	#, tmp166
	movq	%rax, errortext(%rip)	# tmp166, MEM[(void *)&errortext]
	movabsq	$7575180396224210208, %rax	#, tmp167
	movq	%rax, errortext+8(%rip)	# tmp167, MEM[(void *)&errortext]
	movabsq	$7451599682962399342, %rax	#, tmp168
	movq	%rax, errortext+16(%rip)	# tmp168, MEM[(void *)&errortext]
	movabsq	$2819317574018885152, %rax	#, tmp169
	movq	%rax, errortext+24(%rip)	# tmp169, MEM[(void *)&errortext]
	movabsq	$7162254444797634365, %rax	#, tmp170
	movq	%rax, errortext+32(%rip)	# tmp170, MEM[(void *)&errortext]
	movabsq	$8367814968646854004, %rax	#, tmp171
	movq	%rax, errortext+40(%rip)	# tmp171, MEM[(void *)&errortext]
	movabsq	$7957688353961305448, %rax	#, tmp172
	movq	%rax, errortext+48(%rip)	# tmp172, MEM[(void *)&errortext]
	movabsq	$2336916768757653604, %rax	#, tmp173
	movq	%rax, errortext+56(%rip)	# tmp173, MEM[(void *)&errortext]
	movabsq	$2335225676751203945, %rax	#, tmp174
	movq	%rax, errortext+64(%rip)	# tmp174, MEM[(void *)&errortext]
	movl	$1701734764, errortext+72(%rip)	#, MEM[(void *)&errortext]
	movw	$46, errortext+76(%rip)	#, MEM[(void *)&errortext]
	.loc 1 408 0
	movl	$300, %esi	#,
	movl	$errortext, %edi	#,
	call	error	#
.L52:
	.loc 1 413 0
	movl	-80028(%rbp), %eax	# MapIdx, tmp126
	cltq
	salq	$3, %rax	#, tmp128
	leaq	0(,%rax,8), %rdx	#, tmp129
	subq	%rax, %rdx	# tmp127, tmp129
	leaq	Map+16(%rdx), %rax	#, tmp130
	movl	(%rax), %eax	# Map[MapIdx_50].Type, D.6423
	cmpl	$1, %eax	#, D.6423
	je	.L54	#,
	cmpl	$2, %eax	#, D.6423
	je	.L55	#,
	testl	%eax, %eax	# D.6423
	jne	.L53	#,
	.loc 1 416 0
	movl	-80032(%rbp), %eax	# i, tmp131
	addl	$2, %eax	#, D.6423
	cltq
	movq	-80000(%rbp,%rax,8), %rax	# items, D.6424
	leaq	-80048(%rbp), %rdx	#, tmp133
	movl	$.LC168, %esi	#,
	movq	%rax, %rdi	# D.6424,
	movl	$0, %eax	#,
	call	__isoc99_sscanf	#
	cmpl	$1, %eax	#, D.6423
	je	.L57	#,
	.loc 1 418 0
	movl	-80032(%rbp), %eax	# i, tmp134
	addl	$2, %eax	#, D.6423
	cltq
	movq	-80000(%rbp,%rax,8), %rdx	# items, D.6424
	movl	-80032(%rbp), %eax	# i, tmp137
	cltq
	movq	-80000(%rbp,%rax,8), %rax	# items, D.6424
	movq	%rdx, %r8	# D.6424,
	movq	%rax, %rcx	# D.6424,
	movl	$.LC169, %edx	#,
	movl	$300, %esi	#,
	movl	$errortext, %edi	#,
	movl	$0, %eax	#,
	call	snprintf	#
	.loc 1 419 0
	movl	$300, %esi	#,
	movl	$errortext, %edi	#,
	call	error	#
.L57:
	.loc 1 421 0
	movl	-80028(%rbp), %eax	# MapIdx, tmp139
	cltq
	salq	$3, %rax	#, tmp141
	leaq	0(,%rax,8), %rdx	#, tmp142
	subq	%rax, %rdx	# tmp140, tmp142
	leaq	Map(%rdx), %rax	#, tmp143
	movq	8(%rax), %rax	# Map[MapIdx_50].Place, D.6425
	movl	-80048(%rbp), %edx	# IntContent, IntContent.15
	movl	%edx, (%rax)	# IntContent.15, MEM[(int *)_62]
	.loc 1 422 0
	movl	$46, %edi	#,
	call	putchar	#
	.loc 1 423 0
	jmp	.L53	#
.L54:
	.loc 1 425 0
	movl	-80032(%rbp), %eax	# i, tmp144
	addl	$2, %eax	#, D.6423
	cltq
	movq	-80000(%rbp,%rax,8), %rcx	# items, D.6424
	movl	-80028(%rbp), %eax	# MapIdx, tmp147
	cltq
	salq	$3, %rax	#, tmp149
	leaq	0(,%rax,8), %rdx	#, tmp150
	subq	%rax, %rdx	# tmp148, tmp150
	leaq	Map(%rdx), %rax	#, tmp151
	movq	8(%rax), %rax	# Map[MapIdx_50].Place, D.6425
	movl	$200, %edx	#,
	movq	%rcx, %rsi	# D.6424,
	movq	%rax, %rdi	# D.6425,
	call	strncpy	#
	.loc 1 426 0
	movl	$46, %edi	#,
	call	putchar	#
	.loc 1 427 0
	jmp	.L53	#
.L55:
	.loc 1 429 0
	movl	-80032(%rbp), %eax	# i, tmp152
	addl	$2, %eax	#, D.6423
	cltq
	movq	-80000(%rbp,%rax,8), %rax	# items, D.6424
	leaq	-80024(%rbp), %rdx	#, tmp154
	movl	$.LC170, %esi	#,
	movq	%rax, %rdi	# D.6424,
	movl	$0, %eax	#,
	call	__isoc99_sscanf	#
	cmpl	$1, %eax	#, D.6423
	je	.L58	#,
	.loc 1 431 0
	movl	-80032(%rbp), %eax	# i, tmp155
	addl	$2, %eax	#, D.6423
	cltq
	movq	-80000(%rbp,%rax,8), %rdx	# items, D.6424
	movl	-80032(%rbp), %eax	# i, tmp158
	cltq
	movq	-80000(%rbp,%rax,8), %rax	# items, D.6424
	movq	%rdx, %r8	# D.6424,
	movq	%rax, %rcx	# D.6424,
	movl	$.LC169, %edx	#,
	movl	$300, %esi	#,
	movl	$errortext, %edi	#,
	movl	$0, %eax	#,
	call	snprintf	#
	.loc 1 432 0
	movl	$300, %esi	#,
	movl	$errortext, %edi	#,
	call	error	#
.L58:
	.loc 1 434 0
	movl	-80028(%rbp), %eax	# MapIdx, tmp160
	cltq
	salq	$3, %rax	#, tmp162
	leaq	0(,%rax,8), %rdx	#, tmp163
	subq	%rax, %rdx	# tmp161, tmp163
	leaq	Map(%rdx), %rax	#, tmp164
	movq	8(%rax), %rdx	# Map[MapIdx_50].Place, D.6425
	movq	-80024(%rbp), %rax	# DoubleContent, DoubleContent.16
	movq	%rax, (%rdx)	# DoubleContent.16, MEM[(double *)_73]
	.loc 1 435 0
	movl	$46, %edi	#,
	call	putchar	#
	.loc 1 436 0
	nop
.L53:
	.loc 1 398 0
	addl	$3, -80032(%rbp)	#, i
.L50:
	.loc 1 398 0 is_stmt 0 discriminator 1
	movl	-80032(%rbp), %eax	# i, tmp165
	cmpl	-80044(%rbp), %eax	# item, tmp165
	jl	.L59	#,
	.loc 1 441 0 is_stmt 1
	movq	input(%rip), %rax	# input, input.17
	movl	$3592, %edx	#,
	movl	$configinput, %esi	#,
	movq	%rax, %rdi	# input.17,
	call	memcpy	#
	.loc 1 442 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	ParseContent, .-ParseContent
	.type	ParameterNameToMapIndex, @function
ParameterNameToMapIndex:
.LFB6:
	.loc 1 456 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# s, s
	.loc 1 457 0
	movl	$0, -4(%rbp)	#, i
	.loc 1 459 0
	jmp	.L61	#
.L64:
	.loc 1 460 0
	movl	-4(%rbp), %eax	# i, tmp65
	cltq
	salq	$3, %rax	#, tmp67
	leaq	0(,%rax,8), %rdx	#, tmp68
	subq	%rax, %rdx	# tmp66, tmp68
	leaq	Map(%rdx), %rax	#, tmp69
	movq	(%rax), %rax	# Map[i_1].TokenName, D.6432
	movq	-24(%rbp), %rdx	# s, tmp70
	movq	%rdx, %rsi	# tmp70,
	movq	%rax, %rdi	# D.6432,
	call	strcmp	#
	testl	%eax, %eax	# D.6431
	jne	.L62	#,
	.loc 1 461 0
	movl	-4(%rbp), %eax	# i, D.6431
	jmp	.L63	#
.L62:
	.loc 1 463 0
	addl	$1, -4(%rbp)	#, i
.L61:
	.loc 1 459 0 discriminator 1
	movl	-4(%rbp), %eax	# i, tmp72
	cltq
	salq	$3, %rax	#, tmp74
	leaq	0(,%rax,8), %rdx	#, tmp75
	subq	%rax, %rdx	# tmp73, tmp75
	leaq	Map(%rdx), %rax	#, tmp76
	movq	(%rax), %rax	# Map[i_1].TokenName, D.6432
	testq	%rax, %rax	# D.6432
	jne	.L64	#,
	.loc 1 464 0
	movl	$-1, %eax	#, D.6431
.L63:
	.loc 1 465 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	ParameterNameToMapIndex, .-ParameterNameToMapIndex
	.type	InitEncoderParams, @function
InitEncoderParams:
.LFB7:
	.loc 1 476 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 477 0
	movl	$0, -4(%rbp)	#, i
	.loc 1 479 0
	jmp	.L66	#
.L69:
	.loc 1 481 0
	movl	-4(%rbp), %eax	# i, tmp70
	cltq
	salq	$3, %rax	#, tmp72
	leaq	0(,%rax,8), %rdx	#, tmp73
	subq	%rax, %rdx	# tmp71, tmp73
	leaq	Map+16(%rdx), %rax	#, tmp74
	movl	(%rax), %eax	# Map[i_1].Type, D.6434
	testl	%eax, %eax	# D.6434
	jne	.L67	#,
	.loc 1 482 0
	movl	-4(%rbp), %eax	# i, tmp76
	cltq
	salq	$3, %rax	#, tmp78
	leaq	0(,%rax,8), %rdx	#, tmp79
	subq	%rax, %rdx	# tmp77, tmp79
	leaq	Map(%rdx), %rax	#, tmp80
	movq	8(%rax), %rcx	# Map[i_1].Place, D.6435
	movl	-4(%rbp), %eax	# i, tmp82
	cltq
	salq	$3, %rax	#, tmp84
	leaq	0(,%rax,8), %rdx	#, tmp85
	subq	%rax, %rdx	# tmp83, tmp85
	leaq	Map+16(%rdx), %rax	#, tmp86
	movsd	8(%rax), %xmm0	# Map[i_1].Default, D.6436
	cvttsd2si	%xmm0, %eax	# D.6436, D.6434
	movl	%eax, (%rcx)	# D.6434, MEM[(int *)_5]
	jmp	.L68	#
.L67:
	.loc 1 483 0
	movl	-4(%rbp), %eax	# i, tmp88
	cltq
	salq	$3, %rax	#, tmp90
	leaq	0(,%rax,8), %rdx	#, tmp91
	subq	%rax, %rdx	# tmp89, tmp91
	leaq	Map+16(%rdx), %rax	#, tmp92
	movl	(%rax), %eax	# Map[i_1].Type, D.6434
	cmpl	$2, %eax	#, D.6434
	jne	.L68	#,
	.loc 1 484 0
	movl	-4(%rbp), %eax	# i, tmp94
	cltq
	salq	$3, %rax	#, tmp96
	leaq	0(,%rax,8), %rdx	#, tmp97
	subq	%rax, %rdx	# tmp95, tmp97
	leaq	Map(%rdx), %rax	#, tmp98
	movq	8(%rax), %rcx	# Map[i_1].Place, D.6435
	movl	-4(%rbp), %eax	# i, tmp100
	cltq
	salq	$3, %rax	#, tmp102
	leaq	0(,%rax,8), %rdx	#, tmp103
	subq	%rax, %rdx	# tmp101, tmp103
	leaq	Map+16(%rdx), %rax	#, tmp104
	movq	8(%rax), %rax	# Map[i_1].Default, D.6436
	movq	%rax, (%rcx)	# D.6436, MEM[(double *)_9]
.L68:
	.loc 1 485 0
	addl	$1, -4(%rbp)	#, i
.L66:
	.loc 1 479 0 discriminator 1
	movl	-4(%rbp), %eax	# i, tmp106
	cltq
	salq	$3, %rax	#, tmp108
	leaq	0(,%rax,8), %rdx	#, tmp109
	subq	%rax, %rdx	# tmp107, tmp109
	leaq	Map(%rdx), %rax	#, tmp110
	movq	(%rax), %rax	# Map[i_1].TokenName, D.6433
	testq	%rax, %rax	# D.6433
	jne	.L69	#,
	.loc 1 487 0
	movl	$-1, %eax	#, D.6434
	.loc 1 488 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	InitEncoderParams, .-InitEncoderParams
	.section	.rodata
	.align 8
.LC171:
	.string	"Error in input parameter %s. Check configuration file. Value should be in [%d, %d] range."
	.align 8
.LC172:
	.string	"Error in input parameter %s. Check configuration file. Value should be in [%.2f, %.2f] range."
	.align 8
.LC173:
	.string	"Error in input parameter %s. Check configuration file. Value should not be smaller than %d."
	.align 8
.LC174:
	.string	"Error in input parameter %s. Check configuration file. Value should not be smaller than %2.f."
	.text
	.type	TestEncoderParams, @function
TestEncoderParams:
.LFB8:
	.loc 1 499 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# bitdepth_qp_scale, bitdepth_qp_scale
	.loc 1 500 0
	movl	$0, -4(%rbp)	#, i
	.loc 1 502 0
	jmp	.L72	#
.L87:
	.loc 1 504 0
	movl	-4(%rbp), %eax	# i, tmp122
	cltq
	salq	$3, %rax	#, tmp124
	leaq	0(,%rax,8), %rdx	#, tmp125
	subq	%rax, %rdx	# tmp123, tmp125
	leaq	Map+32(%rdx), %rax	#, tmp126
	movl	(%rax), %eax	# Map[i_1].param_limits, D.6438
	cmpl	$1, %eax	#, D.6438
	jne	.L73	#,
	.loc 1 506 0
	movl	-4(%rbp), %eax	# i, tmp128
	cltq
	salq	$3, %rax	#, tmp130
	leaq	0(,%rax,8), %rdx	#, tmp131
	subq	%rax, %rdx	# tmp129, tmp131
	leaq	Map+16(%rdx), %rax	#, tmp132
	movl	(%rax), %eax	# Map[i_1].Type, D.6438
	testl	%eax, %eax	# D.6438
	jne	.L74	#,
	.loc 1 508 0
	movl	-4(%rbp), %eax	# i, tmp134
	cltq
	salq	$3, %rax	#, tmp136
	leaq	0(,%rax,8), %rdx	#, tmp137
	subq	%rax, %rdx	# tmp135, tmp137
	leaq	Map(%rdx), %rax	#, tmp138
	movq	8(%rax), %rax	# Map[i_1].Place, D.6439
	movl	(%rax), %ecx	# MEM[(int *)_6], D.6438
	movl	-4(%rbp), %eax	# i, tmp140
	cltq
	salq	$3, %rax	#, tmp142
	leaq	0(,%rax,8), %rdx	#, tmp143
	subq	%rax, %rdx	# tmp141, tmp143
	leaq	Map+32(%rdx), %rax	#, tmp144
	movsd	8(%rax), %xmm0	# Map[i_1].min_limit, D.6440
	cvttsd2si	%xmm0, %eax	# D.6440, D.6438
	cmpl	%eax, %ecx	# D.6438, D.6438
	jl	.L75	#,
	.loc 1 508 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# i, tmp146
	cltq
	salq	$3, %rax	#, tmp148
	leaq	0(,%rax,8), %rdx	#, tmp149
	subq	%rax, %rdx	# tmp147, tmp149
	leaq	Map(%rdx), %rax	#, tmp150
	movq	8(%rax), %rax	# Map[i_1].Place, D.6439
	movl	(%rax), %ecx	# MEM[(int *)_10], D.6438
	movl	-4(%rbp), %eax	# i, tmp152
	cltq
	salq	$3, %rax	#, tmp154
	leaq	0(,%rax,8), %rdx	#, tmp155
	subq	%rax, %rdx	# tmp153, tmp155
	leaq	Map+48(%rdx), %rax	#, tmp156
	movsd	(%rax), %xmm0	# Map[i_1].max_limit, D.6440
	cvttsd2si	%xmm0, %eax	# D.6440, D.6438
	cmpl	%eax, %ecx	# D.6438, D.6438
	jle	.L80	#,
.L75:
	.loc 1 510 0 is_stmt 1
	movl	-4(%rbp), %eax	# i, tmp158
	cltq
	salq	$3, %rax	#, tmp160
	leaq	0(,%rax,8), %rdx	#, tmp161
	subq	%rax, %rdx	# tmp159, tmp161
	leaq	Map+48(%rdx), %rax	#, tmp162
	movsd	(%rax), %xmm0	# Map[i_1].max_limit, D.6440
	cvttsd2si	%xmm0, %esi	# D.6440, D.6438
	movl	-4(%rbp), %eax	# i, tmp164
	cltq
	salq	$3, %rax	#, tmp166
	leaq	0(,%rax,8), %rdx	#, tmp167
	subq	%rax, %rdx	# tmp165, tmp167
	leaq	Map+32(%rdx), %rax	#, tmp168
	movsd	8(%rax), %xmm0	# Map[i_1].min_limit, D.6440
	cvttsd2si	%xmm0, %ecx	# D.6440, D.6438
	movl	-4(%rbp), %eax	# i, tmp170
	cltq
	salq	$3, %rax	#, tmp172
	leaq	0(,%rax,8), %rdx	#, tmp173
	subq	%rax, %rdx	# tmp171, tmp173
	leaq	Map(%rdx), %rax	#, tmp174
	movq	(%rax), %rax	# Map[i_1].TokenName, D.6437
	movl	%esi, %r9d	# D.6438,
	movl	%ecx, %r8d	# D.6438,
	movq	%rax, %rcx	# D.6437,
	movl	$.LC171, %edx	#,
	movl	$300, %esi	#,
	movl	$errortext, %edi	#,
	movl	$0, %eax	#,
	call	snprintf	#
	.loc 1 511 0
	movl	$400, %esi	#,
	movl	$errortext, %edi	#,
	call	error	#
	jmp	.L80	#
.L74:
	.loc 1 515 0
	movl	-4(%rbp), %eax	# i, tmp176
	cltq
	salq	$3, %rax	#, tmp178
	leaq	0(,%rax,8), %rdx	#, tmp179
	subq	%rax, %rdx	# tmp177, tmp179
	leaq	Map+16(%rdx), %rax	#, tmp180
	movl	(%rax), %eax	# Map[i_1].Type, D.6438
	cmpl	$2, %eax	#, D.6438
	jne	.L80	#,
	.loc 1 517 0
	movl	-4(%rbp), %eax	# i, tmp182
	cltq
	salq	$3, %rax	#, tmp184
	leaq	0(,%rax,8), %rdx	#, tmp185
	subq	%rax, %rdx	# tmp183, tmp185
	leaq	Map(%rdx), %rax	#, tmp186
	movq	8(%rax), %rax	# Map[i_1].Place, D.6439
	movsd	(%rax), %xmm1	# MEM[(double *)_20], D.6440
	movl	-4(%rbp), %eax	# i, tmp188
	cltq
	salq	$3, %rax	#, tmp190
	leaq	0(,%rax,8), %rdx	#, tmp191
	subq	%rax, %rdx	# tmp189, tmp191
	leaq	Map+32(%rdx), %rax	#, tmp192
	movsd	8(%rax), %xmm0	# Map[i_1].min_limit, D.6440
	ucomisd	%xmm1, %xmm0	# D.6440, D.6440
	ja	.L78	#,
	.loc 1 517 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# i, tmp194
	cltq
	salq	$3, %rax	#, tmp196
	leaq	0(,%rax,8), %rdx	#, tmp197
	subq	%rax, %rdx	# tmp195, tmp197
	leaq	Map(%rdx), %rax	#, tmp198
	movq	8(%rax), %rax	# Map[i_1].Place, D.6439
	movsd	(%rax), %xmm0	# MEM[(double *)_23], D.6440
	movl	-4(%rbp), %eax	# i, tmp200
	cltq
	salq	$3, %rax	#, tmp202
	leaq	0(,%rax,8), %rdx	#, tmp203
	subq	%rax, %rdx	# tmp201, tmp203
	leaq	Map+48(%rdx), %rax	#, tmp204
	movsd	(%rax), %xmm1	# Map[i_1].max_limit, D.6440
	ucomisd	%xmm1, %xmm0	# D.6440, D.6440
	ja	.L78	#,
	jmp	.L80	#
.L78:
	.loc 1 519 0 is_stmt 1
	movl	-4(%rbp), %eax	# i, tmp206
	cltq
	salq	$3, %rax	#, tmp208
	leaq	0(,%rax,8), %rdx	#, tmp209
	subq	%rax, %rdx	# tmp207, tmp209
	leaq	Map+48(%rdx), %rax	#, tmp210
	movq	(%rax), %rsi	# Map[i_1].max_limit, D.6440
	movl	-4(%rbp), %eax	# i, tmp212
	cltq
	salq	$3, %rax	#, tmp214
	leaq	0(,%rax,8), %rdx	#, tmp215
	subq	%rax, %rdx	# tmp213, tmp215
	leaq	Map+32(%rdx), %rax	#, tmp216
	movq	8(%rax), %rcx	# Map[i_1].min_limit, D.6440
	movl	-4(%rbp), %eax	# i, tmp218
	cltq
	salq	$3, %rax	#, tmp220
	leaq	0(,%rax,8), %rdx	#, tmp221
	subq	%rax, %rdx	# tmp219, tmp221
	leaq	Map(%rdx), %rax	#, tmp222
	movq	(%rax), %rax	# Map[i_1].TokenName, D.6437
	movq	%rsi, -32(%rbp)	# D.6440, %sfp
	movsd	-32(%rbp), %xmm1	# %sfp,
	movq	%rcx, -32(%rbp)	# D.6440, %sfp
	movsd	-32(%rbp), %xmm0	# %sfp,
	movq	%rax, %rcx	# D.6437,
	movl	$.LC172, %edx	#,
	movl	$300, %esi	#,
	movl	$errortext, %edi	#,
	movl	$2, %eax	#,
	call	snprintf	#
	.loc 1 520 0
	movl	$400, %esi	#,
	movl	$errortext, %edi	#,
	call	error	#
	jmp	.L80	#
.L73:
	.loc 1 524 0
	movl	-4(%rbp), %eax	# i, tmp224
	cltq
	salq	$3, %rax	#, tmp226
	leaq	0(,%rax,8), %rdx	#, tmp227
	subq	%rax, %rdx	# tmp225, tmp227
	leaq	Map+32(%rdx), %rax	#, tmp228
	movl	(%rax), %eax	# Map[i_1].param_limits, D.6438
	cmpl	$2, %eax	#, D.6438
	jne	.L81	#,
	.loc 1 526 0
	movl	-4(%rbp), %eax	# i, tmp230
	cltq
	salq	$3, %rax	#, tmp232
	leaq	0(,%rax,8), %rdx	#, tmp233
	subq	%rax, %rdx	# tmp231, tmp233
	leaq	Map+16(%rdx), %rax	#, tmp234
	movl	(%rax), %eax	# Map[i_1].Type, D.6438
	testl	%eax, %eax	# D.6438
	jne	.L82	#,
	.loc 1 528 0
	movl	-4(%rbp), %eax	# i, tmp236
	cltq
	salq	$3, %rax	#, tmp238
	leaq	0(,%rax,8), %rdx	#, tmp239
	subq	%rax, %rdx	# tmp237, tmp239
	leaq	Map(%rdx), %rax	#, tmp240
	movq	8(%rax), %rax	# Map[i_1].Place, D.6439
	movl	(%rax), %ecx	# MEM[(int *)_31], D.6438
	movl	-4(%rbp), %eax	# i, tmp242
	cltq
	salq	$3, %rax	#, tmp244
	leaq	0(,%rax,8), %rdx	#, tmp245
	subq	%rax, %rdx	# tmp243, tmp245
	leaq	Map+32(%rdx), %rax	#, tmp246
	movsd	8(%rax), %xmm0	# Map[i_1].min_limit, D.6440
	cvttsd2si	%xmm0, %eax	# D.6440, D.6438
	cmpl	%eax, %ecx	# D.6438, D.6438
	jge	.L80	#,
	.loc 1 530 0
	movl	-4(%rbp), %eax	# i, tmp248
	cltq
	salq	$3, %rax	#, tmp250
	leaq	0(,%rax,8), %rdx	#, tmp251
	subq	%rax, %rdx	# tmp249, tmp251
	leaq	Map+32(%rdx), %rax	#, tmp252
	movsd	8(%rax), %xmm0	# Map[i_1].min_limit, D.6440
	cvttsd2si	%xmm0, %ecx	# D.6440, D.6438
	movl	-4(%rbp), %eax	# i, tmp254
	cltq
	salq	$3, %rax	#, tmp256
	leaq	0(,%rax,8), %rdx	#, tmp257
	subq	%rax, %rdx	# tmp255, tmp257
	leaq	Map(%rdx), %rax	#, tmp258
	movq	(%rax), %rax	# Map[i_1].TokenName, D.6437
	movl	%ecx, %r8d	# D.6438,
	movq	%rax, %rcx	# D.6437,
	movl	$.LC173, %edx	#,
	movl	$300, %esi	#,
	movl	$errortext, %edi	#,
	movl	$0, %eax	#,
	call	snprintf	#
	.loc 1 531 0
	movl	$400, %esi	#,
	movl	$errortext, %edi	#,
	call	error	#
	jmp	.L80	#
.L82:
	.loc 1 535 0
	movl	-4(%rbp), %eax	# i, tmp260
	cltq
	salq	$3, %rax	#, tmp262
	leaq	0(,%rax,8), %rdx	#, tmp263
	subq	%rax, %rdx	# tmp261, tmp263
	leaq	Map+16(%rdx), %rax	#, tmp264
	movl	(%rax), %eax	# Map[i_1].Type, D.6438
	cmpl	$2, %eax	#, D.6438
	jne	.L80	#,
	.loc 1 537 0
	movl	-4(%rbp), %eax	# i, tmp266
	cltq
	salq	$3, %rax	#, tmp268
	leaq	0(,%rax,8), %rdx	#, tmp269
	subq	%rax, %rdx	# tmp267, tmp269
	leaq	Map(%rdx), %rax	#, tmp270
	movq	8(%rax), %rax	# Map[i_1].Place, D.6439
	movsd	(%rax), %xmm1	# MEM[(double *)_39], D.6440
	movl	-4(%rbp), %eax	# i, tmp272
	cltq
	salq	$3, %rax	#, tmp274
	leaq	0(,%rax,8), %rdx	#, tmp275
	subq	%rax, %rdx	# tmp273, tmp275
	leaq	Map+32(%rdx), %rax	#, tmp276
	movsd	8(%rax), %xmm0	# Map[i_1].min_limit, D.6440
	ucomisd	%xmm1, %xmm0	# D.6440, D.6440
	ja	.L89	#,
	jmp	.L80	#
.L89:
	.loc 1 539 0
	movl	-4(%rbp), %eax	# i, tmp278
	cltq
	salq	$3, %rax	#, tmp280
	leaq	0(,%rax,8), %rdx	#, tmp281
	subq	%rax, %rdx	# tmp279, tmp281
	leaq	Map+32(%rdx), %rax	#, tmp282
	movq	8(%rax), %rcx	# Map[i_1].min_limit, D.6440
	movl	-4(%rbp), %eax	# i, tmp284
	cltq
	salq	$3, %rax	#, tmp286
	leaq	0(,%rax,8), %rdx	#, tmp287
	subq	%rax, %rdx	# tmp285, tmp287
	leaq	Map(%rdx), %rax	#, tmp288
	movq	(%rax), %rax	# Map[i_1].TokenName, D.6437
	movq	%rcx, -32(%rbp)	# D.6440, %sfp
	movsd	-32(%rbp), %xmm0	# %sfp,
	movq	%rax, %rcx	# D.6437,
	movl	$.LC174, %edx	#,
	movl	$300, %esi	#,
	movl	$errortext, %edi	#,
	movl	$1, %eax	#,
	call	snprintf	#
	.loc 1 540 0
	movl	$400, %esi	#,
	movl	$errortext, %edi	#,
	call	error	#
	jmp	.L80	#
.L81:
	.loc 1 544 0
	movl	-4(%rbp), %eax	# i, tmp290
	cltq
	salq	$3, %rax	#, tmp292
	leaq	0(,%rax,8), %rdx	#, tmp293
	subq	%rax, %rdx	# tmp291, tmp293
	leaq	Map+32(%rdx), %rax	#, tmp294
	movl	(%rax), %eax	# Map[i_1].param_limits, D.6438
	cmpl	$3, %eax	#, D.6438
	jne	.L80	#,
	.loc 1 546 0
	movl	-4(%rbp), %eax	# i, tmp296
	cltq
	salq	$3, %rax	#, tmp298
	leaq	0(,%rax,8), %rdx	#, tmp299
	subq	%rax, %rdx	# tmp297, tmp299
	leaq	Map+16(%rdx), %rax	#, tmp300
	movl	(%rax), %eax	# Map[i_1].Type, D.6438
	testl	%eax, %eax	# D.6438
	jne	.L80	#,
	.loc 1 548 0
	movl	-4(%rbp), %eax	# i, tmp302
	cltq
	salq	$3, %rax	#, tmp304
	leaq	0(,%rax,8), %rdx	#, tmp305
	subq	%rax, %rdx	# tmp303, tmp305
	leaq	Map(%rdx), %rax	#, tmp306
	movq	8(%rax), %rax	# Map[i_1].Place, D.6439
	movl	(%rax), %ecx	# MEM[(int *)_46], D.6438
	movl	-4(%rbp), %eax	# i, tmp308
	cltq
	salq	$3, %rax	#, tmp310
	leaq	0(,%rax,8), %rdx	#, tmp311
	subq	%rax, %rdx	# tmp309, tmp311
	leaq	Map+32(%rdx), %rax	#, tmp312
	movsd	8(%rax), %xmm1	# Map[i_1].min_limit, D.6440
	cvtsi2sd	-20(%rbp), %xmm0	# bitdepth_qp_scale, D.6440
	subsd	%xmm0, %xmm1	# D.6440, D.6440
	movapd	%xmm1, %xmm0	# D.6440, D.6440
	cvttsd2si	%xmm0, %eax	# D.6440, D.6438
	cmpl	%eax, %ecx	# D.6438, D.6438
	jl	.L86	#,
	.loc 1 548 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax	# i, tmp314
	cltq
	salq	$3, %rax	#, tmp316
	leaq	0(,%rax,8), %rdx	#, tmp317
	subq	%rax, %rdx	# tmp315, tmp317
	leaq	Map(%rdx), %rax	#, tmp318
	movq	8(%rax), %rax	# Map[i_1].Place, D.6439
	movl	(%rax), %ecx	# MEM[(int *)_53], D.6438
	movl	-4(%rbp), %eax	# i, tmp320
	cltq
	salq	$3, %rax	#, tmp322
	leaq	0(,%rax,8), %rdx	#, tmp323
	subq	%rax, %rdx	# tmp321, tmp323
	leaq	Map+48(%rdx), %rax	#, tmp324
	movsd	(%rax), %xmm0	# Map[i_1].max_limit, D.6440
	cvttsd2si	%xmm0, %eax	# D.6440, D.6438
	cmpl	%eax, %ecx	# D.6438, D.6438
	jle	.L80	#,
.L86:
	.loc 1 550 0 is_stmt 1
	movl	-4(%rbp), %eax	# i, tmp326
	cltq
	salq	$3, %rax	#, tmp328
	leaq	0(,%rax,8), %rdx	#, tmp329
	subq	%rax, %rdx	# tmp327, tmp329
	leaq	Map+48(%rdx), %rax	#, tmp330
	movsd	(%rax), %xmm0	# Map[i_1].max_limit, D.6440
	cvttsd2si	%xmm0, %esi	# D.6440, D.6438
	movl	-4(%rbp), %eax	# i, tmp332
	cltq
	salq	$3, %rax	#, tmp334
	leaq	0(,%rax,8), %rdx	#, tmp335
	subq	%rax, %rdx	# tmp333, tmp335
	leaq	Map+32(%rdx), %rax	#, tmp336
	movsd	8(%rax), %xmm1	# Map[i_1].min_limit, D.6440
	cvtsi2sd	-20(%rbp), %xmm0	# bitdepth_qp_scale, D.6440
	subsd	%xmm0, %xmm1	# D.6440, D.6440
	movapd	%xmm1, %xmm0	# D.6440, D.6440
	cvttsd2si	%xmm0, %ecx	# D.6440, D.6438
	movl	-4(%rbp), %eax	# i, tmp338
	cltq
	salq	$3, %rax	#, tmp340
	leaq	0(,%rax,8), %rdx	#, tmp341
	subq	%rax, %rdx	# tmp339, tmp341
	leaq	Map(%rdx), %rax	#, tmp342
	movq	(%rax), %rax	# Map[i_1].TokenName, D.6437
	movl	%esi, %r9d	# D.6438,
	movl	%ecx, %r8d	# D.6438,
	movq	%rax, %rcx	# D.6437,
	movl	$.LC171, %edx	#,
	movl	$300, %esi	#,
	movl	$errortext, %edi	#,
	movl	$0, %eax	#,
	call	snprintf	#
	.loc 1 551 0
	movl	$400, %esi	#,
	movl	$errortext, %edi	#,
	call	error	#
.L80:
	.loc 1 557 0
	addl	$1, -4(%rbp)	#, i
.L72:
	.loc 1 502 0 discriminator 1
	movl	-4(%rbp), %eax	# i, tmp344
	cltq
	salq	$3, %rax	#, tmp346
	leaq	0(,%rax,8), %rdx	#, tmp347
	subq	%rax, %rdx	# tmp345, tmp347
	leaq	Map(%rdx), %rax	#, tmp348
	movq	(%rax), %rax	# Map[i_1].TokenName, D.6437
	testq	%rax, %rax	# D.6437
	jne	.L87	#,
	.loc 1 559 0
	movl	$-1, %eax	#, D.6438
	.loc 1 560 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	TestEncoderParams, .-TestEncoderParams
	.section	.rodata
	.align 8
.LC175:
	.string	"******************************************************"
	.align 8
.LC176:
	.string	"*               Encoder Parameters                   *"
.LC177:
	.string	"Parameter %s = %d\n"
.LC178:
	.string	"Parameter %s = %s\n"
.LC179:
	.string	"Parameter %s = %.2f\n"
	.text
	.type	DisplayEncoderParams, @function
DisplayEncoderParams:
.LFB9:
	.loc 1 573 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	.loc 1 574 0
	movl	$0, -4(%rbp)	#, i
	.loc 1 576 0
	movl	$.LC175, %edi	#,
	call	puts	#
	.loc 1 577 0
	movl	$.LC176, %edi	#,
	call	puts	#
	.loc 1 578 0
	movl	$.LC175, %edi	#,
	call	puts	#
	.loc 1 579 0
	jmp	.L91	#
.L95:
	.loc 1 581 0
	movl	-4(%rbp), %eax	# i, tmp74
	cltq
	salq	$3, %rax	#, tmp76
	leaq	0(,%rax,8), %rdx	#, tmp77
	subq	%rax, %rdx	# tmp75, tmp77
	leaq	Map+16(%rdx), %rax	#, tmp78
	movl	(%rax), %eax	# Map[i_1].Type, D.6447
	testl	%eax, %eax	# D.6447
	jne	.L92	#,
	.loc 1 582 0
	movl	-4(%rbp), %eax	# i, tmp80
	cltq
	salq	$3, %rax	#, tmp82
	leaq	0(,%rax,8), %rdx	#, tmp83
	subq	%rax, %rdx	# tmp81, tmp83
	leaq	Map(%rdx), %rax	#, tmp84
	movq	8(%rax), %rax	# Map[i_1].Place, D.6448
	movl	(%rax), %ecx	# MEM[(int *)_5], D.6447
	movl	-4(%rbp), %eax	# i, tmp86
	cltq
	salq	$3, %rax	#, tmp88
	leaq	0(,%rax,8), %rdx	#, tmp89
	subq	%rax, %rdx	# tmp87, tmp89
	leaq	Map(%rdx), %rax	#, tmp90
	movq	(%rax), %rax	# Map[i_1].TokenName, D.6446
	movl	%ecx, %edx	# D.6447,
	movq	%rax, %rsi	# D.6446,
	movl	$.LC177, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	jmp	.L93	#
.L92:
	.loc 1 583 0
	movl	-4(%rbp), %eax	# i, tmp92
	cltq
	salq	$3, %rax	#, tmp94
	leaq	0(,%rax,8), %rdx	#, tmp95
	subq	%rax, %rdx	# tmp93, tmp95
	leaq	Map+16(%rdx), %rax	#, tmp96
	movl	(%rax), %eax	# Map[i_1].Type, D.6447
	cmpl	$1, %eax	#, D.6447
	jne	.L94	#,
	.loc 1 584 0
	movl	-4(%rbp), %eax	# i, tmp98
	cltq
	salq	$3, %rax	#, tmp100
	leaq	0(,%rax,8), %rdx	#, tmp101
	subq	%rax, %rdx	# tmp99, tmp101
	leaq	Map(%rdx), %rax	#, tmp102
	movq	8(%rax), %rcx	# Map[i_1].Place, D.6448
	movl	-4(%rbp), %eax	# i, tmp104
	cltq
	salq	$3, %rax	#, tmp106
	leaq	0(,%rax,8), %rdx	#, tmp107
	subq	%rax, %rdx	# tmp105, tmp107
	leaq	Map(%rdx), %rax	#, tmp108
	movq	(%rax), %rax	# Map[i_1].TokenName, D.6446
	movq	%rcx, %rdx	# D.6448,
	movq	%rax, %rsi	# D.6446,
	movl	$.LC178, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	jmp	.L93	#
.L94:
	.loc 1 585 0
	movl	-4(%rbp), %eax	# i, tmp110
	cltq
	salq	$3, %rax	#, tmp112
	leaq	0(,%rax,8), %rdx	#, tmp113
	subq	%rax, %rdx	# tmp111, tmp113
	leaq	Map+16(%rdx), %rax	#, tmp114
	movl	(%rax), %eax	# Map[i_1].Type, D.6447
	cmpl	$2, %eax	#, D.6447
	jne	.L93	#,
	.loc 1 586 0
	movl	-4(%rbp), %eax	# i, tmp116
	cltq
	salq	$3, %rax	#, tmp118
	leaq	0(,%rax,8), %rdx	#, tmp119
	subq	%rax, %rdx	# tmp117, tmp119
	leaq	Map(%rdx), %rax	#, tmp120
	movq	8(%rax), %rax	# Map[i_1].Place, D.6448
	movq	(%rax), %rcx	# MEM[(double *)_12], D.6449
	movl	-4(%rbp), %eax	# i, tmp122
	cltq
	salq	$3, %rax	#, tmp124
	leaq	0(,%rax,8), %rdx	#, tmp125
	subq	%rax, %rdx	# tmp123, tmp125
	leaq	Map(%rdx), %rax	#, tmp126
	movq	(%rax), %rax	# Map[i_1].TokenName, D.6446
	movq	%rcx, -24(%rbp)	# D.6449, %sfp
	movsd	-24(%rbp), %xmm0	# %sfp,
	movq	%rax, %rsi	# D.6446,
	movl	$.LC179, %edi	#,
	movl	$1, %eax	#,
	call	printf	#
.L93:
	.loc 1 587 0
	addl	$1, -4(%rbp)	#, i
.L91:
	.loc 1 579 0 discriminator 1
	movl	-4(%rbp), %eax	# i, tmp128
	cltq
	salq	$3, %rax	#, tmp130
	leaq	0(,%rax,8), %rdx	#, tmp131
	subq	%rax, %rdx	# tmp129, tmp131
	leaq	Map(%rdx), %rax	#, tmp132
	movq	(%rax), %rax	# Map[i_1].TokenName, D.6446
	testq	%rax, %rax	# D.6446
	jne	.L95	#,
	.loc 1 589 0
	movl	$.LC175, %edi	#,
	call	puts	#
	.loc 1 590 0
	movl	$-1, %eax	#, D.6447
	.loc 1 591 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	DisplayEncoderParams, .-DisplayEncoderParams
	.globl	CeilLog2
	.type	CeilLog2, @function
CeilLog2:
.LFB10:
	.loc 1 600 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)	# uiVal, uiVal
	.loc 1 601 0
	movl	-20(%rbp), %eax	# uiVal, tmp64
	subl	$1, %eax	#, tmp63
	movl	%eax, -8(%rbp)	# tmp63, uiTmp
	.loc 1 602 0
	movl	$0, -4(%rbp)	#, uiRet
	.loc 1 604 0
	jmp	.L98	#
.L99:
	.loc 1 606 0
	shrl	-8(%rbp)	# uiTmp
	.loc 1 607 0
	addl	$1, -4(%rbp)	#, uiRet
.L98:
	.loc 1 604 0 discriminator 1
	cmpl	$0, -8(%rbp)	#, uiTmp
	jne	.L99	#,
	.loc 1 609 0
	movl	-4(%rbp), %eax	# uiRet, D.6455
	.loc 1 610 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	CeilLog2, .-CeilLog2
	.section	.rodata
	.align 8
.LC182:
	.string	"Number of B-frames %d can not exceed the number of frames skipped"
	.align 8
.LC183:
	.string	"Unsupported direct mode=%d, use TEMPORAL=0 or SPATIAL=1"
	.align 8
.LC184:
	.string	"\nDirectInferenceFlag set to 1 due to interlace coding."
	.align 8
.LC185:
	.string	"Incorrect value %d for IntraBottom. Use 0 (disable) or 1 (enable)."
	.align 8
.LC186:
	.string	"Unsupported symbol mode=%d, use UVLC=0 or CABAC=1"
.LC187:
	.string	"Input file %s does not exist"
.LC188:
	.string	"Error open file %s"
.LC189:
	.string	"w"
	.align 8
.LC190:
	.string	"even number of lines required for interlaced coding"
	.align 8
.LC191:
	.string	"Warning: Automatical cropping activated: Coded frame Size: %dx%d\n"
	.align 8
.LC192:
	.string	"PatchInp: input->run_length_minus1"
.LC193:
	.string	"%*[^\n]"
.LC194:
	.string	"PatchInp: input->top_left"
.LC195:
	.string	"PatchInp: input->bottom_right"
	.align 8
.LC196:
	.string	"PatchInp: input->slice_group_id"
	.align 8
.LC197:
	.string	"Error read slice group information from file %s"
	.align 8
.LC198:
	.string	"Unsupported PicInterlace=%d, use frame based coding=0 or field based coding=1 or adaptive=2"
	.align 8
.LC199:
	.string	"Unsupported MbInterlace=%d, use frame based coding=0 or field based coding=1 or adaptive=2"
	.align 8
.LC200:
	.string	"NumFramesInELSubSeq (%d) is out of range [0,%d)."
	.align 8
.LC201:
	.string	"Weighted prediction coding is not supported for MB AFF currently."
	.align 8
.LC202:
	.string	"Stored B pictures combined with IDR pictures only supported in Picture Order Count type 0\n"
	.align 8
.LC203:
	.string	"temporal direct needs at least 2 ref frames\n"
	.align 8
.LC204:
	.string	"\nAllowTransform8x8 may be used only with ProfileIDC %d to %d."
	.align 8
.LC205:
	.string	"\nScalingMatrixPresentFlag may be used only with ProfileIDC %d to %d."
	.align 8
.LC206:
	.string	"\nFRExt Profile(YUV Format) Error!\nYUV422 can be used only with ProfileIDC %d or %d\n"
	.align 8
.LC207:
	.string	"\nFRExt Profile(YUV Format) Error!\nYUV444 can be used only with ProfileIDC %d.\n"
	.text
	.type	PatchInp, @function
PatchInp:
.LFB11:
	.loc 1 620 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	.loc 1 621 0
	movq	input(%rip), %rax	# input, input.18
	movl	3296(%rax), %eax	# input.18_9->BitDepthLuma, D.6456
	leal	-8(%rax), %edx	#, D.6456
	movl	%edx, %eax	# D.6456, tmp503
	addl	%eax, %eax	# tmp503
	addl	%edx, %eax	# D.6456, tmp503
	addl	%eax, %eax	# tmp504
	movl	%eax, -48(%rbp)	# tmp503, bitdepth_qp_scale
	.loc 1 624 0
	movq	$0, -24(%rbp)	#, sgfile
	.loc 1 630 0
	movq	input(%rip), %rax	# input, input.19
	movl	$1, 3224(%rax)	#, input.19_14->LowPassForIntra8x8
	.loc 1 632 0
	movl	-48(%rbp), %eax	# bitdepth_qp_scale, tmp505
	movl	%eax, %edi	# tmp505,
	call	TestEncoderParams	#
	.loc 1 634 0
	movq	input(%rip), %rax	# input, input.20
	movsd	2424(%rax), %xmm0	# input.20_15->FrameRate, D.6457
	xorpd	%xmm1, %xmm1	# tmp506
	ucomisd	%xmm1, %xmm0	# tmp506, D.6457
	jp	.L102	#,
	xorpd	%xmm1, %xmm1	# tmp507
	ucomisd	%xmm1, %xmm0	# tmp507, D.6457
	jne	.L102	#,
	.loc 1 635 0
	movq	input(%rip), %rdx	# input, input.21
	movabsq	$4629137466983448576, %rax	#, tmp508
	movq	%rax, 2424(%rdx)	# tmp508, input.21_17->FrameRate
.L102:
	.loc 1 639 0
	movq	input(%rip), %rax	# input, input.22
	movl	$16, 80(%rax)	#, input.22_18->blc_size
	.loc 1 640 0
	movq	input(%rip), %rax	# input, input.23
	movl	$16, 84(%rax)	#, input.23_19->blc_size
	.loc 1 642 0
	movq	input(%rip), %rax	# input, input.24
	movl	$16, 88(%rax)	#, input.24_20->blc_size
	.loc 1 643 0
	movq	input(%rip), %rax	# input, input.25
	movl	$16, 92(%rax)	#, input.25_21->blc_size
	.loc 1 645 0
	movq	input(%rip), %rax	# input, input.26
	movl	$16, 96(%rax)	#, input.26_22->blc_size
	.loc 1 646 0
	movq	input(%rip), %rax	# input, input.27
	movl	$8, 100(%rax)	#, input.27_23->blc_size
	.loc 1 648 0
	movq	input(%rip), %rax	# input, input.28
	movl	$8, 104(%rax)	#, input.28_24->blc_size
	.loc 1 649 0
	movq	input(%rip), %rax	# input, input.29
	movl	$16, 108(%rax)	#, input.29_25->blc_size
	.loc 1 651 0
	movq	input(%rip), %rax	# input, input.30
	movl	$8, 112(%rax)	#, input.30_26->blc_size
	.loc 1 652 0
	movq	input(%rip), %rax	# input, input.31
	movl	$8, 116(%rax)	#, input.31_27->blc_size
	.loc 1 654 0
	movq	input(%rip), %rax	# input, input.32
	movl	$8, 120(%rax)	#, input.32_28->blc_size
	.loc 1 655 0
	movq	input(%rip), %rax	# input, input.33
	movl	$4, 124(%rax)	#, input.33_29->blc_size
	.loc 1 657 0
	movq	input(%rip), %rax	# input, input.34
	movl	$4, 128(%rax)	#, input.34_30->blc_size
	.loc 1 658 0
	movq	input(%rip), %rax	# input, input.35
	movl	$8, 132(%rax)	#, input.35_31->blc_size
	.loc 1 660 0
	movq	input(%rip), %rax	# input, input.36
	movl	$4, 136(%rax)	#, input.36_32->blc_size
	.loc 1 661 0
	movq	input(%rip), %rax	# input, input.37
	movl	$4, 140(%rax)	#, input.37_33->blc_size
	.loc 1 664 0
	movq	input(%rip), %rax	# input, input.38
	movl	$4, 144(%rax)	#, input.38_34->part_size
	.loc 1 665 0
	movq	input(%rip), %rax	# input, input.39
	movl	$4, 148(%rax)	#, input.39_35->part_size
	.loc 1 666 0
	movq	input(%rip), %rax	# input, input.40
	movl	$4, 152(%rax)	#, input.40_36->part_size
	.loc 1 667 0
	movq	input(%rip), %rax	# input, input.41
	movl	$4, 156(%rax)	#, input.41_37->part_size
	.loc 1 668 0
	movq	input(%rip), %rax	# input, input.42
	movl	$4, 160(%rax)	#, input.42_38->part_size
	.loc 1 669 0
	movq	input(%rip), %rax	# input, input.43
	movl	$2, 164(%rax)	#, input.43_39->part_size
	.loc 1 670 0
	movq	input(%rip), %rax	# input, input.44
	movl	$2, 168(%rax)	#, input.44_40->part_size
	.loc 1 671 0
	movq	input(%rip), %rax	# input, input.45
	movl	$4, 172(%rax)	#, input.45_41->part_size
	.loc 1 672 0
	movq	input(%rip), %rax	# input, input.46
	movl	$2, 176(%rax)	#, input.46_42->part_size
	.loc 1 673 0
	movq	input(%rip), %rax	# input, input.47
	movl	$2, 180(%rax)	#, input.47_43->part_size
	.loc 1 674 0
	movq	input(%rip), %rax	# input, input.48
	movl	$2, 184(%rax)	#, input.48_44->part_size
	.loc 1 675 0
	movq	input(%rip), %rax	# input, input.49
	movl	$1, 188(%rax)	#, input.49_45->part_size
	.loc 1 676 0
	movq	input(%rip), %rax	# input, input.50
	movl	$1, 192(%rax)	#, input.50_46->part_size
	.loc 1 677 0
	movq	input(%rip), %rax	# input, input.51
	movl	$2, 196(%rax)	#, input.51_47->part_size
	.loc 1 678 0
	movq	input(%rip), %rax	# input, input.52
	movl	$1, 200(%rax)	#, input.52_48->part_size
	.loc 1 679 0
	movq	input(%rip), %rax	# input, input.53
	movl	$1, 204(%rax)	#, input.53_49->part_size
.LBB3:
	.loc 1 684 0
	movq	input(%rip), %rax	# input, input.55
	movl	1316(%rax), %eax	# input.55_50->BRefPictures, D.6456
	testl	%eax, %eax	# D.6456
	je	.L104	#,
	.loc 1 684 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.56
	movl	1236(%rax), %eax	# input.56_52->successive_Bframe, D.6456
	addl	$1, %eax	#, iftmp.54
	jmp	.L105	#
.L104:
	.loc 1 684 0 discriminator 2
	movl	$1, %eax	#, iftmp.54
.L105:
	.loc 1 684 0 discriminator 3
	movl	%eax, -44(%rbp)	# iftmp.54, storedBplus1
	.loc 1 687 0 is_stmt 1 discriminator 3
	movq	input(%rip), %rax	# input, input.57
	movl	52(%rax), %eax	# input.57_57->Log2MaxFrameNum, D.6456
	cmpl	$3, %eax	#, D.6456
	jg	.L106	#,
	.loc 1 688 0
	movq	input(%rip), %rax	# input, input.59
	movl	8(%rax), %eax	# input.59_59->no_frames, D.6456
	imull	-44(%rbp), %eax	# storedBplus1, D.6456
	movl	%eax, %edi	# D.6458,
	call	CeilLog2	#
	subl	$4, %eax	#, D.6456
	testl	%eax, %eax	# D.6456
	jle	.L107	#,
	.loc 1 688 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.60
	movl	8(%rax), %eax	# input.60_66->no_frames, D.6456
	imull	-44(%rbp), %eax	# storedBplus1, D.6456
	movl	%eax, %edi	# D.6458,
	call	CeilLog2	#
	subl	$4, %eax	#, D.6456
	jmp	.L108	#
.L107:
	.loc 1 688 0 discriminator 2
	movl	$0, %eax	#, iftmp.58
.L108:
	.loc 1 688 0 discriminator 1
	movl	%eax, log2_max_frame_num_minus4(%rip)	# iftmp.58, log2_max_frame_num_minus4
	jmp	.L109	#
.L106:
	.loc 1 690 0 is_stmt 1
	movq	input(%rip), %rax	# input, input.61
	movl	52(%rax), %eax	# input.61_75->Log2MaxFrameNum, D.6456
	subl	$4, %eax	#, D.6456
	movl	%eax, log2_max_frame_num_minus4(%rip)	# log2_max_frame_num_minus4.62, log2_max_frame_num_minus4
.L109:
.LBE3:
	.loc 1 694 0
	movq	input(%rip), %rax	# input, input.64
	movl	8(%rax), %eax	# input.64_79->no_frames, D.6456
	leal	(%rax,%rax), %edx	#, D.6456
	movq	input(%rip), %rax	# input, input.65
	movl	20(%rax), %eax	# input.65_82->jumpd, D.6456
	addl	$1, %eax	#, D.6456
	imull	%edx, %eax	# D.6456, D.6456
	movl	%eax, %edi	# D.6458,
	call	CeilLog2	#
	subl	$4, %eax	#, D.6456
	testl	%eax, %eax	# D.6456
	jle	.L110	#,
	.loc 1 694 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.66
	movl	8(%rax), %eax	# input.66_90->no_frames, D.6456
	leal	(%rax,%rax), %edx	#, D.6456
	movq	input(%rip), %rax	# input, input.67
	movl	20(%rax), %eax	# input.67_93->jumpd, D.6456
	addl	$1, %eax	#, D.6456
	imull	%edx, %eax	# D.6456, D.6456
	movl	%eax, %edi	# D.6458,
	call	CeilLog2	#
	subl	$4, %eax	#, D.6456
	jmp	.L111	#
.L110:
	.loc 1 694 0 discriminator 2
	movl	$0, %eax	#, iftmp.63
.L111:
	.loc 1 694 0 discriminator 3
	movl	%eax, log2_max_pic_order_cnt_lsb_minus4(%rip)	# iftmp.63, log2_max_pic_order_cnt_lsb_minus4
	.loc 1 697 0 is_stmt 1 discriminator 3
	movq	input(%rip), %rax	# input, input.68
	movl	1236(%rax), %edx	# input.68_103->successive_Bframe, D.6456
	movq	input(%rip), %rax	# input, input.69
	movl	20(%rax), %eax	# input.69_105->jumpd, D.6456
	cmpl	%eax, %edx	# D.6456, D.6456
	jle	.L112	#,
	.loc 1 699 0
	movq	input(%rip), %rax	# input, input.70
	movl	1236(%rax), %eax	# input.70_107->successive_Bframe, D.6456
	movl	%eax, %ecx	# D.6456,
	movl	$.LC182, %edx	#,
	movl	$300, %esi	#,
	movl	$errortext, %edi	#,
	movl	$0, %eax	#,
	call	snprintf	#
	.loc 1 700 0
	movl	$400, %esi	#,
	movl	$errortext, %edi	#,
	call	error	#
.L112:
	.loc 1 704 0
	movq	input(%rip), %rax	# input, input.71
	movl	1236(%rax), %eax	# input.71_109->successive_Bframe, D.6456
	testl	%eax, %eax	# D.6456
	je	.L113	#,
	.loc 1 704 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.72
	movl	1248(%rax), %eax	# input.72_111->direct_spatial_mv_pred_flag, D.6456
	cmpl	$1, %eax	#, D.6456
	je	.L113	#,
	movq	input(%rip), %rax	# input, input.73
	movl	1248(%rax), %eax	# input.73_113->direct_spatial_mv_pred_flag, D.6456
	testl	%eax, %eax	# D.6456
	je	.L113	#,
	.loc 1 706 0 is_stmt 1
	movq	input(%rip), %rax	# input, input.74
	movl	1248(%rax), %eax	# input.74_115->direct_spatial_mv_pred_flag, D.6456
	movl	%eax, %ecx	# D.6456,
	movl	$.LC183, %edx	#,
	movl	$300, %esi	#,
	movl	$errortext, %edi	#,
	movl	$0, %eax	#,
	call	snprintf	#
	.loc 1 707 0
	movl	$400, %esi	#,
	movl	$errortext, %edi	#,
	call	error	#
.L113:
	.loc 1 710 0
	movq	input(%rip), %rax	# input, input.75
	movl	2880(%rax), %eax	# input.75_117->PicInterlace, D.6456
	testl	%eax, %eax	# D.6456
	jg	.L114	#,
	.loc 1 710 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.76
	movl	2884(%rax), %eax	# input.76_119->MbInterlace, D.6456
	testl	%eax, %eax	# D.6456
	jle	.L115	#,
.L114:
	.loc 1 712 0 is_stmt 1
	movq	input(%rip), %rax	# input, input.77
	movl	1252(%rax), %eax	# input.77_121->directInferenceFlag, D.6456
	testl	%eax, %eax	# D.6456
	jne	.L116	#,
	.loc 1 713 0
	movl	$.LC184, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
.L116:
	.loc 1 714 0
	movq	input(%rip), %rax	# input, input.78
	movl	$1, 1252(%rax)	#, input.78_123->directInferenceFlag
.L115:
	.loc 1 717 0
	movq	input(%rip), %rax	# input, input.79
	movl	2880(%rax), %eax	# input.79_124->PicInterlace, D.6456
	testl	%eax, %eax	# D.6456
	jle	.L117	#,
	.loc 1 719 0
	movq	input(%rip), %rax	# input, input.80
	movl	2888(%rax), %eax	# input.80_126->IntraBottom, D.6456
	testl	%eax, %eax	# D.6456
	je	.L117	#,
	.loc 1 719 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.81
	movl	2888(%rax), %eax	# input.81_128->IntraBottom, D.6456
	cmpl	$1, %eax	#, D.6456
	je	.L117	#,
	.loc 1 721 0 is_stmt 1
	movq	input(%rip), %rax	# input, input.82
	movl	2888(%rax), %eax	# input.82_130->IntraBottom, D.6456
	movl	%eax, %ecx	# D.6456,
	movl	$.LC185, %edx	#,
	movl	$300, %esi	#,
	movl	$errortext, %edi	#,
	movl	$0, %eax	#,
	call	snprintf	#
	.loc 1 722 0
	movl	$400, %esi	#,
	movl	$errortext, %edi	#,
	call	error	#
.L117:
	.loc 1 726 0
	movq	input(%rip), %rax	# input, input.83
	movl	2356(%rax), %eax	# input.83_132->symbol_mode, D.6456
	testl	%eax, %eax	# D.6456
	je	.L118	#,
	.loc 1 726 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.84
	movl	2356(%rax), %eax	# input.84_134->symbol_mode, D.6456
	cmpl	$1, %eax	#, D.6456
	je	.L118	#,
	.loc 1 728 0 is_stmt 1
	movq	input(%rip), %rax	# input, input.85
	movl	2356(%rax), %eax	# input.85_136->symbol_mode, D.6456
	movl	%eax, %ecx	# D.6456,
	movl	$.LC186, %edx	#,
	movl	$300, %esi	#,
	movl	$errortext, %edi	#,
	movl	$0, %eax	#,
	call	snprintf	#
	.loc 1 729 0
	movl	$400, %esi	#,
	movl	$errortext, %edi	#,
	call	error	#
.L118:
	.loc 1 733 0
	movq	input(%rip), %rax	# input, input.86
	addq	$224, %rax	#, D.6459
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.6459,
	movl	$0, %eax	#,
	call	open	#
	movl	%eax, p_in(%rip)	# p_in.87, p_in
	movl	p_in(%rip), %eax	# p_in, p_in.88
	cmpl	$-1, %eax	#, p_in.88
	jne	.L119	#,
	.loc 1 735 0
	movq	input(%rip), %rax	# input, input.89
	addq	$224, %rax	#, D.6459
	movq	%rax, %rcx	# D.6459,
	movl	$.LC187, %edx	#,
	movl	$300, %esi	#,
	movl	$errortext, %edi	#,
	movl	$0, %eax	#,
	call	snprintf	#
	.loc 1 736 0
	movl	$500, %esi	#,
	movl	$errortext, %edi	#,
	call	error	#
.L119:
	.loc 1 739 0
	movq	input(%rip), %rax	# input, input.90
	addq	$624, %rax	#, D.6459
	movzbl	(%rax), %eax	# MEM[(const char *)_145], D.6460
	testb	%al, %al	# D.6460
	je	.L120	#,
	.loc 1 739 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.91
	addq	$624, %rax	#, D.6459
	movl	$384, %edx	#,
	movl	$577, %esi	#,
	movq	%rax, %rdi	# D.6459,
	movl	$0, %eax	#,
	call	open	#
	movl	%eax, p_dec(%rip)	# p_dec.92, p_dec
	movl	p_dec(%rip), %eax	# p_dec, p_dec.93
	cmpl	$-1, %eax	#, p_dec.93
	jne	.L120	#,
	.loc 1 741 0 is_stmt 1
	movq	input(%rip), %rax	# input, input.94
	addq	$624, %rax	#, D.6459
	movq	%rax, %rcx	# D.6459,
	movl	$.LC188, %edx	#,
	movl	$300, %esi	#,
	movl	$errortext, %edi	#,
	movl	$0, %eax	#,
	call	snprintf	#
	.loc 1 742 0
	movl	$500, %esi	#,
	movl	$errortext, %edi	#,
	call	error	#
.L120:
	.loc 1 745 0
	movq	input(%rip), %rax	# input, input.95
	addq	$824, %rax	#, D.6459
	movzbl	(%rax), %eax	# MEM[(const char *)_154], D.6460
	testb	%al, %al	# D.6460
	je	.L121	#,
	.loc 1 745 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.96
	addq	$824, %rax	#, D.6459
	movl	$.LC189, %esi	#,
	movq	%rax, %rdi	# D.6459,
	call	fopen	#
	movq	%rax, p_trace(%rip)	# p_trace.97, p_trace
	movq	p_trace(%rip), %rax	# p_trace, p_trace.98
	testq	%rax, %rax	# p_trace.98
	jne	.L121	#,
	.loc 1 747 0 is_stmt 1
	movq	input(%rip), %rax	# input, input.99
	addq	$824, %rax	#, D.6459
	movq	%rax, %rcx	# D.6459,
	movl	$.LC188, %edx	#,
	movl	$300, %esi	#,
	movl	$errortext, %edi	#,
	movl	$0, %eax	#,
	call	snprintf	#
	.loc 1 748 0
	movl	$500, %esi	#,
	movl	$errortext, %edi	#,
	call	error	#
.L121:
	.loc 1 769 0
	movq	input(%rip), %rax	# input, input.100
	movl	64(%rax), %eax	# input.100_162->img_width, D.6456
	andl	$15, %eax	#, D.6461
	testl	%eax, %eax	# D.6461
	je	.L122	#,
	.loc 1 771 0
	movq	img(%rip), %rcx	# img, img.101
	movq	input(%rip), %rax	# input, input.102
	movl	64(%rax), %eax	# input.102_167->img_width, D.6456
	cltd
	shrl	$28, %edx	#, tmp510
	addl	%edx, %eax	# tmp510, tmp511
	andl	$15, %eax	#, tmp512
	subl	%edx, %eax	# tmp510, tmp513
	movl	$16, %edx	#, tmp514
	subl	%eax, %edx	# D.6456, D.6456
	movl	%edx, %eax	# D.6456, D.6456
	movl	%eax, 72728(%rcx)	# D.6456, img.101_166->auto_crop_right
	jmp	.L123	#
.L122:
	.loc 1 775 0
	movq	img(%rip), %rax	# img, img.103
	movl	$0, 72728(%rax)	#, img.103_171->auto_crop_right
.L123:
	.loc 1 777 0
	movq	input(%rip), %rax	# input, input.104
	movl	2880(%rax), %eax	# input.104_172->PicInterlace, D.6456
	testl	%eax, %eax	# D.6456
	jne	.L124	#,
	.loc 1 777 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.105
	movl	2884(%rax), %eax	# input.105_174->MbInterlace, D.6456
	testl	%eax, %eax	# D.6456
	je	.L125	#,
.L124:
	.loc 1 779 0 is_stmt 1
	movq	input(%rip), %rax	# input, input.106
	movl	68(%rax), %eax	# input.106_186->img_height, D.6456
	andl	$1, %eax	#, D.6461
	testl	%eax, %eax	# D.6461
	je	.L126	#,
	.loc 1 781 0
	movl	$500, %esi	#,
	movl	$.LC190, %edi	#,
	call	error	#
.L126:
	.loc 1 783 0
	movq	input(%rip), %rax	# input, input.107
	movl	68(%rax), %eax	# input.107_190->img_height, D.6456
	andl	$31, %eax	#, D.6461
	testl	%eax, %eax	# D.6461
	je	.L127	#,
	.loc 1 785 0
	movq	img(%rip), %rcx	# img, img.108
	movq	input(%rip), %rax	# input, input.109
	movl	68(%rax), %eax	# input.109_195->img_height, D.6456
	cltd
	shrl	$27, %edx	#, tmp516
	addl	%edx, %eax	# tmp516, tmp517
	andl	$31, %eax	#, tmp518
	subl	%edx, %eax	# tmp516, tmp519
	movl	$32, %edx	#, tmp520
	subl	%eax, %edx	# D.6456, D.6456
	movl	%edx, %eax	# D.6456, D.6456
	movl	%eax, 72732(%rcx)	# D.6456, img.108_194->auto_crop_bottom
	.loc 1 783 0
	jmp	.L129	#
.L127:
	.loc 1 789 0
	movq	img(%rip), %rax	# img, img.110
	movl	$0, 72732(%rax)	#, img.110_199->auto_crop_bottom
	.loc 1 783 0
	jmp	.L129	#
.L125:
	.loc 1 794 0
	movq	input(%rip), %rax	# input, input.111
	movl	68(%rax), %eax	# input.111_176->img_height, D.6456
	andl	$15, %eax	#, D.6461
	testl	%eax, %eax	# D.6461
	je	.L130	#,
	.loc 1 796 0
	movq	img(%rip), %rcx	# img, img.112
	movq	input(%rip), %rax	# input, input.113
	movl	68(%rax), %eax	# input.113_181->img_height, D.6456
	cltd
	shrl	$28, %edx	#, tmp522
	addl	%edx, %eax	# tmp522, tmp523
	andl	$15, %eax	#, tmp524
	subl	%edx, %eax	# tmp522, tmp525
	movl	$16, %edx	#, tmp526
	subl	%eax, %edx	# D.6456, D.6456
	movl	%edx, %eax	# D.6456, D.6456
	movl	%eax, 72732(%rcx)	# D.6456, img.112_180->auto_crop_bottom
	jmp	.L129	#
.L130:
	.loc 1 800 0
	movq	img(%rip), %rax	# img, img.114
	movl	$0, 72732(%rax)	#, img.114_185->auto_crop_bottom
.L129:
	.loc 1 803 0
	movq	img(%rip), %rax	# img, img.115
	movl	72732(%rax), %eax	# img.115_200->auto_crop_bottom, D.6456
	testl	%eax, %eax	# D.6456
	jne	.L131	#,
	.loc 1 803 0 is_stmt 0 discriminator 1
	movq	img(%rip), %rax	# img, img.116
	movl	72728(%rax), %eax	# img.116_202->auto_crop_right, D.6456
	testl	%eax, %eax	# D.6456
	je	.L132	#,
.L131:
	.loc 1 805 0 is_stmt 1
	movq	input(%rip), %rax	# input, input.117
	movl	68(%rax), %edx	# input.117_204->img_height, D.6456
	movq	img(%rip), %rax	# img, img.118
	movl	72732(%rax), %eax	# img.118_206->auto_crop_bottom, D.6456
	addl	%eax, %edx	# D.6456, D.6456
	movq	input(%rip), %rax	# input, input.119
	movl	64(%rax), %ecx	# input.119_209->img_width, D.6456
	movq	img(%rip), %rax	# img, img.120
	movl	72728(%rax), %eax	# img.120_211->auto_crop_right, D.6456
	addl	%ecx, %eax	# D.6456, D.6456
	movl	%eax, %esi	# D.6456,
	movl	$.LC191, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
.L132:
	.loc 1 818 0
	movq	input(%rip), %rax	# input, input.121
	movl	3152(%rax), %eax	# input.121_214->num_slice_groups_minus1, D.6456
	testl	%eax, %eax	# D.6456
	je	.L133	#,
	.loc 1 819 0 discriminator 1
	movq	input(%rip), %rax	# input, input.122
	movl	3156(%rax), %eax	# input.122_216->slice_group_map_type, D.6456
	.loc 1 818 0 discriminator 1
	testl	%eax, %eax	# D.6456
	je	.L134	#,
	.loc 1 819 0
	movq	input(%rip), %rax	# input, input.123
	movl	3156(%rax), %eax	# input.123_218->slice_group_map_type, D.6456
	cmpl	$2, %eax	#, D.6456
	je	.L134	#,
	.loc 1 819 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.124
	movl	3156(%rax), %eax	# input.124_220->slice_group_map_type, D.6456
	cmpl	$6, %eax	#, D.6456
	jne	.L133	#,
.L134:
	.loc 1 821 0 is_stmt 1
	movq	input(%rip), %rax	# input, input.125
	addq	$2952, %rax	#, D.6459
	movzbl	(%rax), %eax	# MEM[(const char *)_223], D.6460
	testb	%al, %al	# D.6460
	je	.L135	#,
	.loc 1 821 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.126
	addq	$2952, %rax	#, D.6459
	movl	$.LC161, %esi	#,
	movq	%rax, %rdi	# D.6459,
	call	fopen	#
	movq	%rax, -24(%rbp)	# tmp527, sgfile
	cmpq	$0, -24(%rbp)	#, sgfile
	jne	.L135	#,
	.loc 1 823 0 is_stmt 1
	movq	input(%rip), %rax	# input, input.127
	addq	$2952, %rax	#, D.6459
	movq	%rax, %rcx	# D.6459,
	movl	$.LC188, %edx	#,
	movl	$300, %esi	#,
	movl	$errortext, %edi	#,
	movl	$0, %eax	#,
	call	snprintf	#
	.loc 1 824 0
	movl	$500, %esi	#,
	movl	$errortext, %edi	#,
	call	error	#
	jmp	.L133	#
.L135:
	.loc 1 828 0
	movq	input(%rip), %rax	# input, input.128
	movl	3156(%rax), %eax	# input.128_230->slice_group_map_type, D.6456
	testl	%eax, %eax	# D.6456
	jne	.L136	#,
	.loc 1 830 0
	movq	input(%rip), %rbx	# input, input.129
	movq	input(%rip), %rax	# input, input.130
	movl	3152(%rax), %eax	# input.130_233->num_slice_groups_minus1, D.6456
	addl	$1, %eax	#, D.6456
	cltq
	salq	$2, %rax	#, D.6462
	movq	%rax, %rdi	# D.6462,
	call	malloc	#
	movq	%rax, 3184(%rbx)	# D.6463, input.129_232->run_length_minus1
	.loc 1 831 0
	movq	input(%rip), %rax	# input, input.131
	movq	3184(%rax), %rax	# input.131_239->run_length_minus1, D.6464
	testq	%rax, %rax	# D.6464
	jne	.L137	#,
	.loc 1 832 0
	movl	$.LC192, %edi	#,
	call	no_mem_exit	#
.L137:
	.loc 1 835 0
	movl	$0, -52(%rbp)	#, i
	jmp	.L138	#
.L139:
	.loc 1 837 0 discriminator 2
	movq	input(%rip), %rax	# input, input.132
	movq	3184(%rax), %rax	# input.132_244->run_length_minus1, D.6464
	movl	-52(%rbp), %edx	# i, tmp529
	movslq	%edx, %rdx	# tmp529, D.6462
	salq	$2, %rdx	#, D.6462
	addq	%rax, %rdx	# D.6464, D.6464
	movq	-24(%rbp), %rax	# sgfile, tmp530
	movl	$.LC168, %esi	#,
	movq	%rax, %rdi	# tmp530,
	movl	$0, %eax	#,
	call	__isoc99_fscanf	#
	.loc 1 838 0 discriminator 2
	movq	-24(%rbp), %rax	# sgfile, tmp531
	movl	$.LC193, %esi	#,
	movq	%rax, %rdi	# tmp531,
	movl	$0, %eax	#,
	call	__isoc99_fscanf	#
	.loc 1 835 0 discriminator 2
	addl	$1, -52(%rbp)	#, i
.L138:
	.loc 1 835 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.133
	movl	3152(%rax), %eax	# input.133_242->num_slice_groups_minus1, D.6456
	cmpl	-52(%rbp), %eax	# i, D.6456
	jge	.L139	#,
	jmp	.L140	#
.L136:
	.loc 1 842 0 is_stmt 1
	movq	input(%rip), %rax	# input, input.134
	movl	3156(%rax), %eax	# input.134_250->slice_group_map_type, D.6456
	cmpl	$2, %eax	#, D.6456
	jne	.L141	#,
	.loc 1 844 0
	movq	input(%rip), %rbx	# input, input.135
	movq	input(%rip), %rax	# input, input.136
	movl	3152(%rax), %eax	# input.136_253->num_slice_groups_minus1, D.6456
	cltq
	salq	$2, %rax	#, D.6462
	movq	%rax, %rdi	# D.6462,
	call	malloc	#
	movq	%rax, 3160(%rbx)	# D.6463, input.135_252->top_left
	.loc 1 845 0
	movq	input(%rip), %rbx	# input, input.137
	movq	input(%rip), %rax	# input, input.138
	movl	3152(%rax), %eax	# input.138_259->num_slice_groups_minus1, D.6456
	cltq
	salq	$2, %rax	#, D.6462
	movq	%rax, %rdi	# D.6462,
	call	malloc	#
	movq	%rax, 3168(%rbx)	# D.6463, input.137_258->bottom_right
	.loc 1 846 0
	movq	input(%rip), %rax	# input, input.139
	movq	3160(%rax), %rax	# input.139_264->top_left, D.6464
	testq	%rax, %rax	# D.6464
	jne	.L142	#,
	.loc 1 847 0
	movl	$.LC194, %edi	#,
	call	no_mem_exit	#
.L142:
	.loc 1 848 0
	movq	input(%rip), %rax	# input, input.140
	movq	3168(%rax), %rax	# input.140_266->bottom_right, D.6464
	testq	%rax, %rax	# D.6464
	jne	.L143	#,
	.loc 1 849 0
	movl	$.LC195, %edi	#,
	call	no_mem_exit	#
.L143:
	.loc 1 852 0
	movl	$0, -52(%rbp)	#, i
	jmp	.L144	#
.L145:
	.loc 1 854 0 discriminator 2
	movq	input(%rip), %rax	# input, input.141
	movq	3160(%rax), %rax	# input.141_271->top_left, D.6464
	movl	-52(%rbp), %edx	# i, tmp534
	movslq	%edx, %rdx	# tmp534, D.6462
	salq	$2, %rdx	#, D.6462
	addq	%rax, %rdx	# D.6464, D.6464
	movq	-24(%rbp), %rax	# sgfile, tmp535
	movl	$.LC168, %esi	#,
	movq	%rax, %rdi	# tmp535,
	movl	$0, %eax	#,
	call	__isoc99_fscanf	#
	.loc 1 855 0 discriminator 2
	movq	-24(%rbp), %rax	# sgfile, tmp536
	movl	$.LC193, %esi	#,
	movq	%rax, %rdi	# tmp536,
	movl	$0, %eax	#,
	call	__isoc99_fscanf	#
	.loc 1 856 0 discriminator 2
	movq	input(%rip), %rax	# input, input.142
	movq	3168(%rax), %rax	# input.142_276->bottom_right, D.6464
	movl	-52(%rbp), %edx	# i, tmp537
	movslq	%edx, %rdx	# tmp537, D.6462
	salq	$2, %rdx	#, D.6462
	addq	%rax, %rdx	# D.6464, D.6464
	movq	-24(%rbp), %rax	# sgfile, tmp538
	movl	$.LC168, %esi	#,
	movq	%rax, %rdi	# tmp538,
	movl	$0, %eax	#,
	call	__isoc99_fscanf	#
	.loc 1 857 0 discriminator 2
	movq	-24(%rbp), %rax	# sgfile, tmp539
	movl	$.LC193, %esi	#,
	movq	%rax, %rdi	# tmp539,
	movl	$0, %eax	#,
	call	__isoc99_fscanf	#
	.loc 1 852 0 discriminator 2
	addl	$1, -52(%rbp)	#, i
.L144:
	.loc 1 852 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.143
	movl	3152(%rax), %eax	# input.143_269->num_slice_groups_minus1, D.6456
	cmpl	-52(%rbp), %eax	# i, D.6456
	jg	.L145	#,
	jmp	.L140	#
.L141:
	.loc 1 861 0 is_stmt 1
	movq	input(%rip), %rax	# input, input.144
	movl	3156(%rax), %eax	# input.144_282->slice_group_map_type, D.6456
	cmpl	$6, %eax	#, D.6456
	jne	.L140	#,
.LBB4:
	.loc 1 865 0
	movq	input(%rip), %rax	# input, input.146
	movl	2880(%rax), %eax	# input.146_284->PicInterlace, D.6456
	testl	%eax, %eax	# D.6456
	jne	.L146	#,
	.loc 1 865 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.147
	movl	2884(%rax), %eax	# input.147_286->MbInterlace, D.6456
	testl	%eax, %eax	# D.6456
	jne	.L146	#,
	.loc 1 865 0 discriminator 3
	movl	$1, %eax	#, iftmp.145
	jmp	.L147	#
.L146:
	.loc 1 865 0 discriminator 2
	movl	$0, %eax	#, iftmp.145
.L147:
	.loc 1 865 0 discriminator 4
	movl	%eax, -40(%rbp)	# iftmp.145, frame_mb_only
	.loc 1 866 0 is_stmt 1 discriminator 4
	movq	input(%rip), %rax	# input, input.148
	movl	64(%rax), %edx	# input.148_291->img_width, D.6456
	movq	img(%rip), %rax	# img, img.149
	movl	72728(%rax), %eax	# img.149_293->auto_crop_right, D.6456
	addl	%edx, %eax	# D.6456, D.6456
	leal	15(%rax), %edx	#, tmp541
	testl	%eax, %eax	# tmp540
	cmovs	%edx, %eax	# tmp541,, tmp540
	sarl	$4, %eax	#, tmp542
	movl	%eax, -36(%rbp)	# tmp542, mb_width
	.loc 1 867 0 discriminator 4
	movq	input(%rip), %rax	# input, input.150
	movl	68(%rax), %edx	# input.150_297->img_height, D.6456
	movq	img(%rip), %rax	# img, img.151
	movl	72732(%rax), %eax	# img.151_299->auto_crop_bottom, D.6456
	addl	%edx, %eax	# D.6456, D.6456
	leal	15(%rax), %edx	#, tmp544
	testl	%eax, %eax	# tmp543
	cmovs	%edx, %eax	# tmp544,, tmp543
	sarl	$4, %eax	#, tmp545
	movl	%eax, -32(%rbp)	# tmp545, mb_height
	.loc 1 868 0 discriminator 4
	movl	$2, %eax	#, tmp546
	subl	-40(%rbp), %eax	# frame_mb_only, D.6456
	movl	%eax, %ebx	# D.6456, D.6456
	movl	-32(%rbp), %eax	# mb_height, tmp549
	cltd
	idivl	%ebx	# D.6456
	movl	%eax, -28(%rbp)	# tmp547, mapunit_height
	.loc 1 870 0 discriminator 4
	movq	input(%rip), %rbx	# input, input.152
	movl	-28(%rbp), %eax	# mapunit_height, tmp550
	movslq	%eax, %rdx	# tmp550, D.6462
	movl	-36(%rbp), %eax	# mb_width, tmp551
	cltq
	imulq	%rdx, %rax	# D.6462, D.6462
	movq	%rax, %rdi	# D.6462,
	call	malloc	#
	movq	%rax, 3176(%rbx)	# D.6463, input.152_305->slice_group_id
	.loc 1 871 0 discriminator 4
	movq	input(%rip), %rax	# input, input.153
	movq	3176(%rax), %rax	# input.153_310->slice_group_id, D.6465
	testq	%rax, %rax	# D.6465
	jne	.L148	#,
	.loc 1 872 0
	movl	$.LC196, %edi	#,
	call	no_mem_exit	#
.L148:
	.loc 1 875 0
	movl	$0, -52(%rbp)	#, i
	jmp	.L149	#
.L151:
	.loc 1 877 0
	leaq	-56(%rbp), %rdx	#, tmp553
	movq	-24(%rbp), %rax	# sgfile, tmp554
	movl	$.LC168, %esi	#,
	movq	%rax, %rdi	# tmp554,
	movl	$0, %eax	#,
	call	__isoc99_fscanf	#
	.loc 1 878 0
	movq	input(%rip), %rax	# input, input.154
	movq	3176(%rax), %rdx	# input.154_314->slice_group_id, D.6465
	movl	-52(%rbp), %eax	# i, tmp555
	cltq
	addq	%rax, %rdx	# D.6466, D.6465
	movl	-56(%rbp), %eax	# tmp, tmp.155
	movb	%al, (%rdx)	# D.6467, *_317
	.loc 1 879 0
	movq	input(%rip), %rax	# input, input.156
	movq	3176(%rax), %rdx	# input.156_320->slice_group_id, D.6465
	movl	-52(%rbp), %eax	# i, tmp556
	cltq
	addq	%rdx, %rax	# D.6465, D.6465
	movzbl	(%rax), %eax	# *_323, D.6467
	movzbl	%al, %edx	# D.6467, D.6456
	movq	input(%rip), %rax	# input, input.157
	movl	3152(%rax), %eax	# input.157_326->num_slice_groups_minus1, D.6456
	cmpl	%eax, %edx	# D.6456, D.6456
	jle	.L150	#,
	.loc 1 881 0
	movq	input(%rip), %rax	# input, input.158
	addq	$2952, %rax	#, D.6459
	movq	%rax, %rcx	# D.6459,
	movl	$.LC197, %edx	#,
	movl	$300, %esi	#,
	movl	$errortext, %edi	#,
	movl	$0, %eax	#,
	call	snprintf	#
	.loc 1 882 0
	movl	$500, %esi	#,
	movl	$errortext, %edi	#,
	call	error	#
.L150:
	.loc 1 884 0
	movq	-24(%rbp), %rax	# sgfile, tmp557
	movl	$.LC193, %esi	#,
	movq	%rax, %rdi	# tmp557,
	movl	$0, %eax	#,
	call	__isoc99_fscanf	#
	.loc 1 875 0
	addl	$1, -52(%rbp)	#, i
.L149:
	.loc 1 875 0 is_stmt 0 discriminator 1
	movl	-28(%rbp), %eax	# mapunit_height, tmp558
	imull	-36(%rbp), %eax	# mb_width, D.6456
	cmpl	-52(%rbp), %eax	# i, D.6456
	jg	.L151	#,
.L140:
.LBE4:
	.loc 1 887 0 is_stmt 1
	movq	-24(%rbp), %rax	# sgfile, tmp559
	movq	%rax, %rdi	# tmp559,
	call	fclose	#
.L133:
	.loc 1 893 0
	movq	input(%rip), %rax	# input, input.159
	movl	2348(%rax), %eax	# input.159_331->PyramidRefReorder, D.6456
	testl	%eax, %eax	# D.6456
	je	.L152	#,
	.loc 1 893 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.160
	movl	1320(%rax), %eax	# input.160_333->PyramidCoding, D.6456
	testl	%eax, %eax	# D.6456
	je	.L152	#,
	movq	input(%rip), %rax	# input, input.161
	movl	2880(%rax), %eax	# input.161_335->PicInterlace, D.6456
	testl	%eax, %eax	# D.6456
	jne	.L153	#,
	movq	input(%rip), %rax	# input, input.162
	movl	2884(%rax), %eax	# input.162_337->MbInterlace, D.6456
	testl	%eax, %eax	# D.6456
	je	.L152	#,
.L153:
	.loc 1 895 0 is_stmt 1
	movabsq	$5936986127288400208, %rax	#, tmp581
	movq	%rax, errortext(%rip)	# tmp581, MEM[(void *)&errortext]
	movabsq	$7306090318268622437, %rax	#, tmp582
	movq	%rax, errortext+8(%rip)	# tmp582, MEM[(void *)&errortext]
	movabsq	$8463143809214980210, %rax	#, tmp583
	movq	%rax, errortext+16(%rip)	# tmp583, MEM[(void *)&errortext]
	movabsq	$2334102057695277168, %rax	#, tmp584
	movq	%rax, errortext+24(%rip)	# tmp584, MEM[(void *)&errortext]
	movabsq	$8389723559378053495, %rax	#, tmp585
	movq	%rax, errortext+32(%rip)	# tmp585, MEM[(void *)&errortext]
	movabsq	$7286935674596127333, %rax	#, tmp586
	movq	%rax, errortext+40(%rip)	# tmp586, MEM[(void *)&errortext]
	movabsq	$2334956330750534510, %rax	#, tmp587
	movq	%rax, errortext+48(%rip)	# tmp587, MEM[(void *)&errortext]
	movabsq	$753055992357610861, %rax	#, tmp588
	movq	%rax, errortext+56(%rip)	# tmp588, MEM[(void *)&errortext]
	movb	$0, errortext+64(%rip)	#, MEM[(void *)&errortext]
	.loc 1 896 0
	movl	$400, %esi	#,
	movl	$errortext, %edi	#,
	call	error	#
.L152:
	.loc 1 899 0
	movq	input(%rip), %rax	# input, input.163
	movl	2352(%rax), %eax	# input.163_339->PocMemoryManagement, D.6456
	testl	%eax, %eax	# D.6456
	je	.L154	#,
	.loc 1 899 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.164
	movl	1320(%rax), %eax	# input.164_341->PyramidCoding, D.6456
	testl	%eax, %eax	# D.6456
	je	.L154	#,
	movq	input(%rip), %rax	# input, input.165
	movl	2880(%rax), %eax	# input.165_343->PicInterlace, D.6456
	testl	%eax, %eax	# D.6456
	jne	.L155	#,
	movq	input(%rip), %rax	# input, input.166
	movl	2884(%rax), %eax	# input.166_345->MbInterlace, D.6456
	testl	%eax, %eax	# D.6456
	je	.L154	#,
.L155:
	.loc 1 901 0 is_stmt 1
	movabsq	$8245929724596154192, %rax	#, tmp589
	movq	%rax, errortext(%rip)	# tmp589, MEM[(void *)&errortext]
	movabsq	$7882820390943280505, %rax	#, tmp590
	movq	%rax, errortext+8(%rip)	# tmp590, MEM[(void *)&errortext]
	movabsq	$2338616625293717093, %rax	#, tmp591
	movq	%rax, errortext+16(%rip)	# tmp591, MEM[(void *)&errortext]
	movabsq	$7310593918082512243, %rax	#, tmp592
	movq	%rax, errortext+24(%rip)	# tmp592, MEM[(void *)&errortext]
	movabsq	$5269326413218390116, %rax	#, tmp593
	movq	%rax, errortext+32(%rip)	# tmp593, MEM[(void *)&errortext]
	movabsq	$7305790138928690286, %rax	#, tmp594
	movq	%rax, errortext+40(%rip)	# tmp594, MEM[(void *)&errortext]
	movabsq	$7956000646299018528, %rax	#, tmp595
	movq	%rax, errortext+48(%rip)	# tmp595, MEM[(void *)&errortext]
	movabsq	$7237117975334821991, %rax	#, tmp596
	movq	%rax, errortext+56(%rip)	# tmp596, MEM[(void *)&errortext]
	movw	$2675, errortext+64(%rip)	#, MEM[(void *)&errortext]
	movb	$0, errortext+66(%rip)	#, MEM[(void *)&errortext]
	.loc 1 902 0
	movl	$400, %esi	#,
	movl	$errortext, %edi	#,
	call	error	#
.L154:
	.loc 1 907 0
	movq	input(%rip), %rax	# input, input.167
	movl	2880(%rax), %eax	# input.167_347->PicInterlace, D.6456
	testl	%eax, %eax	# D.6456
	je	.L156	#,
	.loc 1 907 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.168
	movl	2880(%rax), %eax	# input.168_349->PicInterlace, D.6456
	cmpl	$2, %eax	#, D.6456
	je	.L156	#,
	movq	input(%rip), %rax	# input, input.169
	movl	2880(%rax), %eax	# input.169_351->PicInterlace, D.6456
	cmpl	$1, %eax	#, D.6456
	je	.L156	#,
	.loc 1 909 0 is_stmt 1
	movq	input(%rip), %rax	# input, input.170
	movl	2880(%rax), %eax	# input.170_353->PicInterlace, D.6456
	movl	%eax, %ecx	# D.6456,
	movl	$.LC198, %edx	#,
	movl	$300, %esi	#,
	movl	$errortext, %edi	#,
	movl	$0, %eax	#,
	call	snprintf	#
	.loc 1 910 0
	movl	$400, %esi	#,
	movl	$errortext, %edi	#,
	call	error	#
.L156:
	.loc 1 914 0
	movq	input(%rip), %rax	# input, input.171
	movl	2884(%rax), %eax	# input.171_355->MbInterlace, D.6456
	testl	%eax, %eax	# D.6456
	je	.L157	#,
	.loc 1 914 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.172
	movl	2884(%rax), %eax	# input.172_357->MbInterlace, D.6456
	cmpl	$2, %eax	#, D.6456
	je	.L157	#,
	movq	input(%rip), %rax	# input, input.173
	movl	2884(%rax), %eax	# input.173_359->MbInterlace, D.6456
	cmpl	$1, %eax	#, D.6456
	je	.L157	#,
	.loc 1 916 0 is_stmt 1
	movq	input(%rip), %rax	# input, input.174
	movl	2884(%rax), %eax	# input.174_361->MbInterlace, D.6456
	movl	%eax, %ecx	# D.6456,
	movl	$.LC199, %edx	#,
	movl	$300, %esi	#,
	movl	$errortext, %edi	#,
	movl	$0, %eax	#,
	call	snprintf	#
	.loc 1 917 0
	movl	$400, %esi	#,
	movl	$errortext, %edi	#,
	call	error	#
.L157:
	.loc 1 921 0
	movq	input(%rip), %rax	# input, input.175
	movl	2464(%rax), %eax	# input.175_363->rdopt, D.6456
	testl	%eax, %eax	# D.6456
	jne	.L158	#,
	.loc 1 921 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.176
	movl	2884(%rax), %eax	# input.176_365->MbInterlace, D.6456
	testl	%eax, %eax	# D.6456
	je	.L158	#,
	.loc 1 923 0 is_stmt 1
	movabsq	$7575131840791462477, %rax	#, tmp597
	movq	%rax, errortext(%rip)	# tmp597, MEM[(void *)&errortext]
	movabsq	$8026294645362139251, %rax	#, tmp598
	movq	%rax, errortext+8(%rip)	# tmp598, MEM[(void *)&errortext]
	movabsq	$7308324500379103341, %rax	#, tmp599
	movq	%rax, errortext+16(%rip)	# tmp599, MEM[(void *)&errortext]
	movabsq	$8029390818649929504, %rax	#, tmp600
	movq	%rax, errortext+24(%rip)	# tmp600, MEM[(void *)&errortext]
	movabsq	$8390328346540649838, %rax	#, tmp601
	movq	%rax, errortext+32(%rip)	# tmp601, MEM[(void *)&errortext]
	movabsq	$7142819396017810793, %rax	#, tmp602
	movq	%rax, errortext+40(%rip)	# tmp602, MEM[(void *)&errortext]
	movl	$1852400751, errortext+48(%rip)	#, MEM[(void *)&errortext]
	movw	$11879, errortext+52(%rip)	#, MEM[(void *)&errortext]
	movb	$0, errortext+54(%rip)	#, MEM[(void *)&errortext]
	.loc 1 924 0
	movl	$500, %esi	#,
	movl	$errortext, %edi	#,
	call	error	#
.L158:
	.loc 1 927 0
	movq	input(%rip), %rax	# input, input.177
	movl	2464(%rax), %eax	# input.177_367->rdopt, D.6456
	cmpl	$1, %eax	#, D.6456
	jle	.L159	#,
	.loc 1 929 0
	movabsq	$7596844095265260626, %rax	#, tmp603
	movq	%rax, errortext(%rip)	# tmp603, MEM[(void *)&errortext]
	movabsq	$3620171100265406842, %rax	#, tmp604
	movq	%rax, errortext+8(%rip)	# tmp604, MEM[(void *)&errortext]
	movabsq	$7018895639105727776, %rax	#, tmp605
	movq	%rax, errortext+16(%rip)	# tmp605, MEM[(void *)&errortext]
	movabsq	$7214887984819216499, %rax	#, tmp606
	movq	%rax, errortext+24(%rip)	# tmp606, MEM[(void *)&errortext]
	movabsq	$8386114176436887909, %rax	#, tmp607
	movq	%rax, errortext+32(%rip)	# tmp607, MEM[(void *)&errortext]
	movabsq	$8031079698301740133, %rax	#, tmp608
	movq	%rax, errortext+40(%rip)	# tmp608, MEM[(void *)&errortext]
	movabsq	$7595165076687512608, %rax	#, tmp609
	movq	%rax, errortext+48(%rip)	# tmp609, MEM[(void *)&errortext]
	movabsq	$7309940769498883950, %rax	#, tmp610
	movq	%rax, errortext+56(%rip)	# tmp610, MEM[(void *)&errortext]
	movabsq	$8295740938855148641, %rax	#, tmp611
	movq	%rax, errortext+64(%rip)	# tmp611, MEM[(void *)&errortext]
	movabsq	$7234316338220854633, %rax	#, tmp612
	movq	%rax, errortext+72(%rip)	# tmp612, MEM[(void *)&errortext]
	movabsq	$8243105122543297568, %rax	#, tmp613
	movq	%rax, errortext+80(%rip)	# tmp613, MEM[(void *)&errortext]
	movw	$11891, errortext+88(%rip)	#, MEM[(void *)&errortext]
	movb	$0, errortext+90(%rip)	#, MEM[(void *)&errortext]
	.loc 1 930 0
	movl	$500, %esi	#,
	movl	$errortext, %edi	#,
	call	error	#
.L159:
	.loc 1 936 0
	movq	input(%rip), %rax	# input, input.178
	movl	2912(%rax), %edx	# input.178_369->NumFramesInELSubSeq, D.6456
	movq	input(%rip), %rax	# input, input.179
	movl	36(%rax), %eax	# input.179_371->num_ref_frames, D.6456
	cmpl	%eax, %edx	# D.6456, D.6456
	jge	.L160	#,
	.loc 1 936 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.180
	movl	2912(%rax), %eax	# input.180_373->NumFramesInELSubSeq, D.6456
	testl	%eax, %eax	# D.6456
	jns	.L161	#,
.L160:
	.loc 1 938 0 is_stmt 1
	movq	input(%rip), %rax	# input, input.181
	movl	36(%rax), %edx	# input.181_375->num_ref_frames, D.6456
	movq	input(%rip), %rax	# input, input.182
	movl	2912(%rax), %eax	# input.182_377->NumFramesInELSubSeq, D.6456
	movl	%edx, %r8d	# D.6456,
	movl	%eax, %ecx	# D.6456,
	movl	$.LC200, %edx	#,
	movl	$300, %esi	#,
	movl	$errortext, %edi	#,
	movl	$0, %eax	#,
	call	snprintf	#
	.loc 1 939 0
	movl	$500, %esi	#,
	movl	$errortext, %edi	#,
	call	error	#
.L161:
	.loc 1 942 0
	movq	input(%rip), %rax	# input, input.183
	movl	2912(%rax), %eax	# input.183_379->NumFramesInELSubSeq, D.6456
	testl	%eax, %eax	# D.6456
	jle	.L162	#,
	.loc 1 942 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.184
	movl	2360(%rax), %eax	# input.184_381->of_mode, D.6456
	testl	%eax, %eax	# D.6456
	jne	.L162	#,
	.loc 1 944 0 is_stmt 1
	movabsq	$7234297702172356165, %rax	#, tmp614
	movq	%rax, errortext(%rip)	# tmp614, MEM[(void *)&errortext]
	movabsq	$2338328219042662176, %rax	#, tmp615
	movq	%rax, errortext+8(%rip)	# tmp615, MEM[(void *)&errortext]
	movabsq	$8102104866965712750, %rax	#, tmp616
	movq	%rax, errortext+16(%rip)	# tmp616, MEM[(void *)&errortext]
	movabsq	$7955925832297640559, %rax	#, tmp617
	movq	%rax, errortext+24(%rip)	# tmp617, MEM[(void *)&errortext]
	movabsq	$7310033184398860832, %rax	#, tmp618
	movq	%rax, errortext+32(%rip)	# tmp618, MEM[(void *)&errortext]
	movabsq	$2334382411596459361, %rax	#, tmp619
	movq	%rax, errortext+40(%rip)	# tmp619, MEM[(void *)&errortext]
	movabsq	$2328453719058050657, %rax	#, tmp620
	movq	%rax, errortext+48(%rip)	# tmp620, MEM[(void *)&errortext]
	movabsq	$8387243061094412141, %rax	#, tmp621
	movq	%rax, errortext+56(%rip)	# tmp621, MEM[(void *)&errortext]
	movw	$46, errortext+64(%rip)	#, MEM[(void *)&errortext]
	.loc 1 945 0
	movl	$500, %esi	#,
	movl	$errortext, %edi	#,
	call	error	#
.L162:
	.loc 1 949 0
	movq	input(%rip), %rax	# input, input.185
	movl	2880(%rax), %eax	# input.185_383->PicInterlace, D.6456
	testl	%eax, %eax	# D.6456
	jne	.L163	#,
	.loc 1 949 0 is_stmt 0 discriminator 2
	movq	input(%rip), %rax	# input, input.186
	movl	2884(%rax), %eax	# input.186_385->MbInterlace, D.6456
	testl	%eax, %eax	# D.6456
	je	.L164	#,
.L163:
	.loc 1 949 0 discriminator 1
	movq	input(%rip), %rax	# input, input.187
	movl	2940(%rax), %eax	# input.187_387->SparePictureOption, D.6456
	cmpl	$1, %eax	#, D.6456
	jne	.L164	#,
	.loc 1 951 0 is_stmt 1
	movabsq	$7935469438777050689, %rax	#, tmp622
	movq	%rax, errortext(%rip)	# tmp622, MEM[(void *)&errortext]
	movabsq	$7021232144242472047, %rax	#, tmp623
	movq	%rax, errortext+8(%rip)	# tmp623, MEM[(void *)&errortext]
	movabsq	$7599578516193175924, %rax	#, tmp624
	movq	%rax, errortext+16(%rip)	# tmp624, MEM[(void *)&errortext]
	movabsq	$7310012280771471476, %rax	#, tmp625
	movq	%rax, errortext+24(%rip)	# tmp625, MEM[(void *)&errortext]
	movabsq	$7310034287920246816, %rax	#, tmp626
	movq	%rax, errortext+32(%rip)	# tmp626, MEM[(void *)&errortext]
	movw	$46, errortext+40(%rip)	#, MEM[(void *)&errortext]
	.loc 1 952 0
	movl	$500, %esi	#,
	movl	$errortext, %edi	#,
	call	error	#
.L164:
	.loc 1 956 0
	movq	input(%rip), %rax	# input, input.188
	movl	2360(%rax), %eax	# input.188_389->of_mode, D.6456
	cmpl	$1, %eax	#, D.6456
	je	.L165	#,
	.loc 1 956 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.189
	movl	2940(%rax), %eax	# input.189_391->SparePictureOption, D.6456
	cmpl	$1, %eax	#, D.6456
	jne	.L165	#,
	.loc 1 958 0 is_stmt 1
	movabsq	$5788341720507510351, %rax	#, tmp627
	movq	%rax, errortext(%rip)	# tmp627, MEM[(void *)&errortext]
	movabsq	$2338623232362770208, %rax	#, tmp628
	movq	%rax, errortext+8(%rip)	# tmp628, MEM[(void *)&errortext]
	movabsq	$2338328219396370285, %rax	#, tmp629
	movq	%rax, errortext+16(%rip)	# tmp629, MEM[(void *)&errortext]
	movabsq	$7091327050118426467, %rax	#, tmp630
	movq	%rax, errortext+24(%rip)	# tmp630, MEM[(void *)&errortext]
	movabsq	$2335244403110602092, %rax	#, tmp631
	movq	%rax, errortext+32(%rip)	# tmp631, MEM[(void *)&errortext]
	movabsq	$7597608191456800883, %rax	#, tmp632
	movq	%rax, errortext+40(%rip)	# tmp632, MEM[(void *)&errortext]
	movabsq	$7306563065539294307, %rax	#, tmp633
	movq	%rax, errortext+48(%rip)	# tmp633, MEM[(void *)&errortext]
	movabsq	$13074728477881441, %rax	#, tmp634
	movq	%rax, errortext+56(%rip)	# tmp634, MEM[(void *)&errortext]
	.loc 1 959 0
	movl	$500, %esi	#,
	movl	$errortext, %edi	#,
	call	error	#
.L165:
	.loc 1 962 0
	movq	input(%rip), %rax	# input, input.190
	movl	1284(%rax), %eax	# input.190_393->WeightedPrediction, D.6456
	testl	%eax, %eax	# D.6456
	jg	.L166	#,
	.loc 1 962 0 is_stmt 0 discriminator 2
	movq	input(%rip), %rax	# input, input.191
	movl	1288(%rax), %eax	# input.191_395->WeightedBiprediction, D.6456
	testl	%eax, %eax	# D.6456
	jle	.L167	#,
.L166:
	.loc 1 962 0 discriminator 1
	movq	input(%rip), %rax	# input, input.192
	movl	2884(%rax), %eax	# input.192_397->MbInterlace, D.6456
	testl	%eax, %eax	# D.6456
	je	.L167	#,
	.loc 1 964 0 is_stmt 1
	movl	$.LC201, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
	.loc 1 965 0
	movl	$500, %esi	#,
	movl	$errortext, %edi	#,
	call	error	#
.L167:
	.loc 1 967 0
	movq	input(%rip), %rax	# input, input.193
	movl	2912(%rax), %eax	# input.193_399->NumFramesInELSubSeq, D.6456
	testl	%eax, %eax	# D.6456
	jle	.L168	#,
	.loc 1 967 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.194
	movl	1284(%rax), %eax	# input.194_401->WeightedPrediction, D.6456
	testl	%eax, %eax	# D.6456
	jle	.L168	#,
	.loc 1 969 0 is_stmt 1
	movabsq	$7234297702172356165, %rax	#, tmp635
	movq	%rax, errortext(%rip)	# tmp635, MEM[(void *)&errortext]
	movabsq	$2338328219042662176, %rax	#, tmp636
	movq	%rax, errortext+8(%rip)	# tmp636, MEM[(void *)&errortext]
	movabsq	$8102104866965712750, %rax	#, tmp637
	movq	%rax, errortext+16(%rip)	# tmp637, MEM[(void *)&errortext]
	movabsq	$7955925832297640559, %rax	#, tmp638
	movq	%rax, errortext+24(%rip)	# tmp638, MEM[(void *)&errortext]
	movabsq	$7310582888488335136, %rax	#, tmp639
	movq	%rax, errortext+32(%rip)	# tmp639, MEM[(void *)&errortext]
	movabsq	$7163367069183909988, %rax	#, tmp640
	movq	%rax, errortext+40(%rip)	# tmp640, MEM[(void *)&errortext]
	movabsq	$7237112117150574964, %rax	#, tmp641
	movq	%rax, errortext+48(%rip)	# tmp641, MEM[(void *)&errortext]
	movabsq	$7306087009987554921, %rax	#, tmp642
	movq	%rax, errortext+56(%rip)	# tmp642, MEM[(void *)&errortext]
	movl	$1952807200, errortext+64(%rip)	#, MEM[(void *)&errortext]
	movw	$46, errortext+68(%rip)	#, MEM[(void *)&errortext]
	.loc 1 970 0
	movl	$500, %esi	#,
	movl	$errortext, %edi	#,
	call	error	#
.L168:
	.loc 1 974 0
	movq	input(%rip), %rax	# input, input.195
	movl	3152(%rax), %eax	# input.195_403->num_slice_groups_minus1, D.6456
	testl	%eax, %eax	# D.6456
	jle	.L169	#,
	.loc 1 976 0
	movq	input(%rip), %rax	# input, input.196
	movl	3156(%rax), %eax	# input.196_405->slice_group_map_type, D.6456
	cmpl	$2, %eax	#, D.6456
	jle	.L169	#,
	.loc 1 976 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.197
	movl	3156(%rax), %eax	# input.197_407->slice_group_map_type, D.6456
	cmpl	$5, %eax	#, D.6456
	jg	.L169	#,
	.loc 1 977 0 is_stmt 1
	movq	input(%rip), %rax	# input, input.198
	movl	$1, 3152(%rax)	#, input.198_409->num_slice_groups_minus1
.L169:
	.loc 1 981 0
	movq	input(%rip), %rax	# input, input.199
	movl	3236(%rax), %eax	# input.199_410->RCEnable, D.6456
	testl	%eax, %eax	# D.6456
	je	.L170	#,
	.loc 1 983 0
	movq	input(%rip), %rax	# input, input.200
	movl	68(%rax), %edx	# input.200_412->img_height, D.6456
	movq	img(%rip), %rax	# img, img.201
	movl	72732(%rax), %eax	# img.201_414->auto_crop_bottom, D.6456
	leal	(%rdx,%rax), %ecx	#, D.6456
	movq	input(%rip), %rax	# input, input.202
	movl	64(%rax), %edx	# input.202_417->img_width, D.6456
	movq	img(%rip), %rax	# img, img.203
	movl	72728(%rax), %eax	# img.203_419->auto_crop_right, D.6456
	addl	%edx, %eax	# D.6456, D.6456
	imull	%ecx, %eax	# D.6456, D.6456
	leal	255(%rax), %edx	#, tmp569
	testl	%eax, %eax	# tmp568
	cmovs	%edx, %eax	# tmp569,, tmp568
	sarl	$8, %eax	#, tmp570
	movq	input(%rip), %rdx	# input, input.204
	movl	3248(%rdx), %ecx	# input.204_424->basicunit, D.6456
	cltd
	idivl	%ecx	# D.6456
	movl	%edx, %eax	# tmp571, D.6456
	testl	%eax, %eax	# D.6456
	je	.L170	#,
	.loc 1 985 0
	movabsq	$7959303527790240066, %rax	#, tmp643
	movq	%rax, errortext(%rip)	# tmp643, MEM[(void *)&errortext]
	movabsq	$8029390865705235561, %rax	#, tmp644
	movq	%rax, errortext+8(%rip)	# tmp644, MEM[(void *)&errortext]
	movabsq	$7308895133777535092, %rax	#, tmp645
	movq	%rax, errortext+16(%rip)	# tmp645, MEM[(void *)&errortext]
	movabsq	$7162256618223247460, %rax	#, tmp646
	movq	%rax, errortext+24(%rip)	# tmp646, MEM[(void *)&errortext]
	movl	$779709556, errortext+32(%rip)	#, MEM[(void *)&errortext]
	movb	$0, errortext+36(%rip)	#, MEM[(void *)&errortext]
	.loc 1 986 0
	movl	$500, %esi	#,
	movl	$errortext, %edi	#,
	call	error	#
.L170:
	.loc 1 990 0
	movq	input(%rip), %rax	# input, input.205
	movl	1236(%rax), %eax	# input.205_427->successive_Bframe, D.6456
	testl	%eax, %eax	# D.6456
	je	.L171	#,
	.loc 1 990 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.206
	movl	1316(%rax), %eax	# input.206_429->BRefPictures, D.6456
	testl	%eax, %eax	# D.6456
	je	.L171	#,
	movq	input(%rip), %rax	# input, input.207
	movl	1228(%rax), %eax	# input.207_431->idr_enable, D.6456
	testl	%eax, %eax	# D.6456
	je	.L171	#,
	movq	input(%rip), %rax	# input, input.208
	movl	1224(%rax), %eax	# input.208_433->intra_period, D.6456
	testl	%eax, %eax	# D.6456
	je	.L171	#,
	movq	input(%rip), %rax	# input, input.209
	movl	3208(%rax), %eax	# input.209_435->pic_order_cnt_type, D.6456
	testl	%eax, %eax	# D.6456
	je	.L171	#,
	.loc 1 992 0 is_stmt 1
	movl	$-1000, %esi	#,
	movl	$.LC202, %edi	#,
	call	error	#
.L171:
	.loc 1 995 0
	movq	input(%rip), %rax	# input, input.210
	movl	1248(%rax), %eax	# input.210_437->direct_spatial_mv_pred_flag, D.6456
	testl	%eax, %eax	# D.6456
	jne	.L172	#,
	.loc 1 995 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.211
	movl	36(%rax), %eax	# input.211_439->num_ref_frames, D.6456
	cmpl	$1, %eax	#, D.6456
	jg	.L172	#,
	movq	input(%rip), %rax	# input, input.212
	movl	1236(%rax), %eax	# input.212_441->successive_Bframe, D.6456
	testl	%eax, %eax	# D.6456
	jle	.L172	#,
	.loc 1 996 0 is_stmt 1
	movl	$-1000, %esi	#,
	movl	$.LC203, %edi	#,
	call	error	#
.L172:
	.loc 1 999 0
	movq	input(%rip), %rax	# input, input.213
	movl	3220(%rax), %eax	# input.213_443->AllowTransform8x8, D.6456
	testl	%eax, %eax	# D.6456
	je	.L173	#,
	.loc 1 999 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.214
	movl	1272(%rax), %eax	# input.214_445->sp_periodicity, D.6456
	testl	%eax, %eax	# D.6456
	je	.L173	#,
	.loc 1 1001 0 is_stmt 1
	movabsq	$8603403748580545546, %rax	#, tmp647
	movq	%rax, errortext(%rip)	# tmp647, MEM[(void *)&errortext]
	movabsq	$7237123111361460256, %rax	#, tmp648
	movq	%rax, errortext+8(%rip)	# tmp648, MEM[(void *)&errortext]
	movabsq	$8390045716468801637, %rax	#, tmp649
	movq	%rax, errortext+16(%rip)	# tmp649, MEM[(void *)&errortext]
	movabsq	$7308609286709274912, %rax	#, tmp650
	movq	%rax, errortext+24(%rip)	# tmp650, MEM[(void *)&errortext]
	movabsq	$8245921732048024686, %rax	#, tmp651
	movq	%rax, errortext+32(%rip)	# tmp651, MEM[(void *)&errortext]
	movabsq	$7881706606049653536, %rax	#, tmp652
	movq	%rax, errortext+40(%rip)	# tmp652, MEM[(void *)&errortext]
	movl	$3044197, errortext+48(%rip)	#, MEM[(void *)&errortext]
	.loc 1 1002 0
	movl	$500, %esi	#,
	movl	$errortext, %edi	#,
	call	error	#
.L173:
	.loc 1 1005 0
	movq	input(%rip), %rax	# input, input.215
	movl	3220(%rax), %eax	# input.215_447->AllowTransform8x8, D.6456
	testl	%eax, %eax	# D.6456
	je	.L174	#,
	.loc 1 1005 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.216
	movl	(%rax), %eax	# input.216_449->ProfileIDC, D.6456
	cmpl	$99, %eax	#, D.6456
	jle	.L175	#,
	movq	input(%rip), %rax	# input, input.217
	movl	(%rax), %eax	# input.217_451->ProfileIDC, D.6456
	cmpl	$144, %eax	#, D.6456
	jle	.L174	#,
.L175:
	.loc 1 1007 0 is_stmt 1
	movl	$144, %r8d	#,
	movl	$100, %ecx	#,
	movl	$.LC204, %edx	#,
	movl	$300, %esi	#,
	movl	$errortext, %edi	#,
	movl	$0, %eax	#,
	call	snprintf	#
	.loc 1 1008 0
	movl	$500, %esi	#,
	movl	$errortext, %edi	#,
	call	error	#
.L174:
	.loc 1 1010 0
	movq	input(%rip), %rax	# input, input.218
	movl	3256(%rax), %eax	# input.218_453->ScalingMatrixPresentFlag, D.6456
	testl	%eax, %eax	# D.6456
	je	.L176	#,
	.loc 1 1010 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.219
	movl	(%rax), %eax	# input.219_455->ProfileIDC, D.6456
	cmpl	$99, %eax	#, D.6456
	jle	.L177	#,
	movq	input(%rip), %rax	# input, input.220
	movl	(%rax), %eax	# input.220_457->ProfileIDC, D.6456
	cmpl	$144, %eax	#, D.6456
	jle	.L176	#,
.L177:
	.loc 1 1012 0 is_stmt 1
	movl	$144, %r8d	#,
	movl	$100, %ecx	#,
	movl	$.LC205, %edx	#,
	movl	$300, %esi	#,
	movl	$errortext, %edi	#,
	movl	$0, %eax	#,
	call	snprintf	#
	.loc 1 1013 0
	movl	$500, %esi	#,
	movl	$errortext, %edi	#,
	call	error	#
.L176:
	.loc 1 1016 0
	movq	input(%rip), %rax	# input, input.221
	movl	72(%rax), %eax	# input.221_459->yuv_format, D.6456
	cmpl	$2, %eax	#, D.6456
	jne	.L178	#,
	.loc 1 1016 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.222
	movl	(%rax), %eax	# input.222_461->ProfileIDC, D.6456
	cmpl	$121, %eax	#, D.6456
	jg	.L178	#,
	.loc 1 1018 0 is_stmt 1
	movl	$144, %r8d	#,
	movl	$122, %ecx	#,
	movl	$.LC206, %edx	#,
	movl	$300, %esi	#,
	movl	$errortext, %edi	#,
	movl	$0, %eax	#,
	call	snprintf	#
	.loc 1 1019 0
	movl	$500, %esi	#,
	movl	$errortext, %edi	#,
	call	error	#
.L178:
	.loc 1 1021 0
	movq	input(%rip), %rax	# input, input.223
	movl	72(%rax), %eax	# input.223_463->yuv_format, D.6456
	cmpl	$3, %eax	#, D.6456
	jne	.L179	#,
	.loc 1 1021 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.224
	movl	(%rax), %eax	# input.224_465->ProfileIDC, D.6456
	cmpl	$143, %eax	#, D.6456
	jg	.L179	#,
	.loc 1 1023 0 is_stmt 1
	movl	$144, %ecx	#,
	movl	$.LC207, %edx	#,
	movl	$300, %esi	#,
	movl	$errortext, %edi	#,
	movl	$0, %eax	#,
	call	snprintf	#
	.loc 1 1024 0
	movl	$500, %esi	#,
	movl	$errortext, %edi	#,
	call	error	#
.L179:
	.loc 1 1028 0
	movq	input(%rip), %rax	# input, input.225
	movl	72(%rax), %eax	# input.225_467->yuv_format, D.6456
	cmpl	$3, %eax	#, D.6456
	je	.L180	#,
	.loc 1 1028 0 is_stmt 0 discriminator 1
	movq	input(%rip), %rax	# input, input.226
	movl	3328(%rax), %eax	# input.226_469->residue_transform_flag, D.6456
	testl	%eax, %eax	# D.6456
	je	.L180	#,
	.loc 1 1030 0 is_stmt 1
	movabsq	$7310859974176231946, %rax	#, tmp653
	movq	%rax, errortext(%rip)	# tmp653, MEM[(void *)&errortext]
	movabsq	$8367813930540557088, %rax	#, tmp654
	movq	%rax, errortext+8(%rip)	# tmp654, MEM[(void *)&errortext]
	movabsq	$7886488383293120882, %rax	#, tmp655
	movq	%rax, errortext+16(%rip)	# tmp655, MEM[(void *)&errortext]
	movabsq	$8102104866965645600, %rax	#, tmp656
	movq	%rax, errortext+24(%rip)	# tmp656, MEM[(void *)&errortext]
	movabsq	$7957614682157904495, %rax	#, tmp657
	movq	%rax, errortext+32(%rip)	# tmp657, MEM[(void *)&errortext]
	movabsq	$6149982424733350252, %rax	#, tmp658
	movq	%rax, errortext+40(%rip)	# tmp658, MEM[(void *)&errortext]
	movl	$875836502, errortext+48(%rip)	#, MEM[(void *)&errortext]
	movw	$46, errortext+52(%rip)	#, MEM[(void *)&errortext]
	.loc 1 1031 0
	movl	$500, %esi	#,
	movl	$errortext, %edi	#,
	call	error	#
.L180:
	.loc 1 1034 0
	movl	$0, %eax	#,
	call	ProfileCheck	#
	.loc 1 1035 0
	movl	$0, %eax	#,
	call	LevelCheck	#
	.loc 1 1036 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	PatchInp, .-PatchInp
	.globl	PatchInputNoFrames
	.type	PatchInputNoFrames, @function
PatchInputNoFrames:
.LFB12:
	.loc 1 1039 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 1044 0
	movq	input(%rip), %rax	# input, input.227
	movq	input(%rip), %rdx	# input, input.228
	movl	8(%rdx), %edx	# input.228_2->no_frames, D.6494
	leal	-1(%rdx), %ecx	#, D.6494
	movq	input(%rip), %rdx	# input, input.229
	movl	2912(%rdx), %edx	# input.229_5->NumFramesInELSubSeq, D.6494
	addl	$1, %edx	#, D.6494
	imull	%ecx, %edx	# D.6494, D.6494
	addl	$1, %edx	#, D.6494
	movl	%edx, 8(%rax)	# D.6494, input.227_1->no_frames
	.loc 1 1045 0
	movq	input(%rip), %rax	# input, input.230
	movl	2916(%rax), %eax	# input.230_10->NumFrameIn2ndIGOP, D.6494
	testl	%eax, %eax	# D.6494
	je	.L183	#,
	.loc 1 1046 0
	movq	input(%rip), %rax	# input, input.231
	movq	input(%rip), %rdx	# input, input.232
	movl	2916(%rdx), %edx	# input.232_13->NumFrameIn2ndIGOP, D.6494
	leal	-1(%rdx), %ecx	#, D.6494
	movq	input(%rip), %rdx	# input, input.233
	movl	2912(%rdx), %edx	# input.233_16->NumFramesInELSubSeq, D.6494
	addl	$1, %edx	#, D.6494
	imull	%ecx, %edx	# D.6494, D.6494
	addl	$1, %edx	#, D.6494
	movl	%edx, 2916(%rax)	# D.6494, input.231_12->NumFrameIn2ndIGOP
.L183:
	.loc 1 1047 0
	movq	input(%rip), %rax	# input, input.234
	movl	8(%rax), %eax	# input.234_21->no_frames, FirstFrameIn2ndIGOP.235
	movl	%eax, FirstFrameIn2ndIGOP(%rip)	# FirstFrameIn2ndIGOP.235, FirstFrameIn2ndIGOP
	.loc 1 1048 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	PatchInputNoFrames, .-PatchInputNoFrames
	.section	.rodata
	.align 8
.LC208:
	.string	"Profile must be baseline(66)/main(77)/extended(88) or FRExt (%d to %d)."
	.text
	.type	ProfileCheck, @function
ProfileCheck:
.LFB13:
	.loc 1 1051 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 1052 0
	movq	input(%rip), %rax	# input, input.236
	movl	(%rax), %eax	# input.236_1->ProfileIDC, D.6495
	cmpl	$66, %eax	#, D.6495
	je	.L185	#,
	.loc 1 1053 0 discriminator 1
	movq	input(%rip), %rax	# input, input.237
	movl	(%rax), %eax	# input.237_3->ProfileIDC, D.6495
	.loc 1 1052 0 discriminator 1
	cmpl	$77, %eax	#, D.6495
	je	.L185	#,
	.loc 1 1054 0
	movq	input(%rip), %rax	# input, input.238
	movl	(%rax), %eax	# input.238_5->ProfileIDC, D.6495
	.loc 1 1053 0
	cmpl	$88, %eax	#, D.6495
	je	.L185	#,
	.loc 1 1055 0
	movq	input(%rip), %rax	# input, input.239
	movl	(%rax), %eax	# input.239_7->ProfileIDC, D.6495
	.loc 1 1054 0
	cmpl	$100, %eax	#, D.6495
	je	.L185	#,
	.loc 1 1056 0
	movq	input(%rip), %rax	# input, input.240
	movl	(%rax), %eax	# input.240_9->ProfileIDC, D.6495
	.loc 1 1055 0
	cmpl	$110, %eax	#, D.6495
	je	.L185	#,
	.loc 1 1057 0
	movq	input(%rip), %rax	# input, input.241
	movl	(%rax), %eax	# input.241_11->ProfileIDC, D.6495
	.loc 1 1056 0
	cmpl	$122, %eax	#, D.6495
	je	.L185	#,
	.loc 1 1058 0
	movq	input(%rip), %rax	# input, input.242
	movl	(%rax), %eax	# input.242_13->ProfileIDC, D.6495
	.loc 1 1057 0
	cmpl	$144, %eax	#, D.6495
	je	.L185	#,
	.loc 1 1060 0
	movl	$144, %r8d	#,
	movl	$100, %ecx	#,
	movl	$.LC208, %edx	#,
	movl	$300, %esi	#,
	movl	$errortext, %edi	#,
	movl	$0, %eax	#,
	call	snprintf	#
	.loc 1 1061 0
	movl	$500, %esi	#,
	movl	$errortext, %edi	#,
	call	error	#
.L185:
	.loc 1 1064 0
	movq	input(%rip), %rax	# input, input.243
	movl	(%rax), %eax	# input.243_15->ProfileIDC, D.6495
	cmpl	$66, %eax	#, D.6495
	jne	.L186	#,
	.loc 1 1066 0
	movq	input(%rip), %rax	# input, input.244
	movl	1236(%rax), %eax	# input.244_17->successive_Bframe, D.6495
	testl	%eax, %eax	# D.6495
	je	.L187	#,
	.loc 1 1068 0
	movabsq	$8247626262918471746, %rax	#, tmp115
	movq	%rax, errortext(%rip)	# tmp115, MEM[(void *)&errortext]
	movabsq	$7935454085357007717, %rax	#, tmp116
	movq	%rax, errortext+8(%rip)	# tmp116, MEM[(void *)&errortext]
	movabsq	$8606216625670091887, %rax	#, tmp117
	movq	%rax, errortext+16(%rip)	# tmp117, MEM[(void *)&errortext]
	movabsq	$7017206827978876005, %rax	#, tmp118
	movq	%rax, errortext+24(%rip)	# tmp118, MEM[(void *)&errortext]
	movabsq	$13059373818209651, %rax	#, tmp119
	movq	%rax, errortext+32(%rip)	# tmp119, MEM[(void *)&errortext]
	.loc 1 1069 0
	movl	$500, %esi	#,
	movl	$errortext, %edi	#,
	call	error	#
.L187:
	.loc 1 1071 0
	movq	input(%rip), %rax	# input, input.245
	movl	1272(%rax), %eax	# input.245_19->sp_periodicity, D.6495
	testl	%eax, %eax	# D.6495
	je	.L188	#,
	.loc 1 1073 0
	movabsq	$8463498904239886419, %rax	#, tmp120
	movq	%rax, errortext(%rip)	# tmp120, MEM[(void *)&errortext]
	movabsq	$2334397743343297906, %rax	#, tmp121
	movq	%rax, errortext+8(%rip)	# tmp121, MEM[(void *)&errortext]
	movabsq	$8028911400106880878, %rax	#, tmp122
	movq	%rax, errortext+16(%rip)	# tmp122, MEM[(void *)&errortext]
	movabsq	$7070772812765750647, %rax	#, tmp123
	movq	%rax, errortext+24(%rip)	# tmp123, MEM[(void *)&errortext]
	movabsq	$3343199697461670753, %rax	#, tmp124
	movq	%rax, errortext+32(%rip)	# tmp124, MEM[(void *)&errortext]
	movb	$0, errortext+40(%rip)	#, MEM[(void *)&errortext]
	.loc 1 1074 0
	movl	$500, %esi	#,
	movl	$errortext, %edi	#,
	call	error	#
.L188:
	.loc 1 1076 0
	movq	input(%rip), %rax	# input, input.246
	movl	2364(%rax), %eax	# input.246_21->partition_mode, D.6495
	testl	%eax, %eax	# D.6495
	je	.L189	#,
	.loc 1 1078 0
	movabsq	$8241992077440999748, %rax	#, tmp125
	movq	%rax, errortext(%rip)	# tmp125, MEM[(void *)&errortext]
	movabsq	$7956011641516353908, %rax	#, tmp126
	movq	%rax, errortext+8(%rip)	# tmp126, MEM[(void *)&errortext]
	movabsq	$8390045716468801639, %rax	#, tmp127
	movq	%rax, errortext+16(%rip)	# tmp127, MEM[(void *)&errortext]
	movabsq	$7234319696884687136, %rax	#, tmp128
	movq	%rax, errortext+24(%rip)	# tmp128, MEM[(void *)&errortext]
	movabsq	$7310293694231243040, %rax	#, tmp129
	movq	%rax, errortext+32(%rip)	# tmp129, MEM[(void *)&errortext]
	movl	$1701734764, errortext+40(%rip)	#, MEM[(void *)&errortext]
	movw	$46, errortext+44(%rip)	#, MEM[(void *)&errortext]
	.loc 1 1079 0
	movl	$500, %esi	#,
	movl	$errortext, %edi	#,
	call	error	#
.L189:
	.loc 1 1081 0
	movq	input(%rip), %rax	# input, input.247
	movl	1284(%rax), %eax	# input.247_23->WeightedPrediction, D.6495
	testl	%eax, %eax	# D.6495
	je	.L190	#,
	.loc 1 1083 0
	movabsq	$7234316368200951127, %rax	#, tmp130
	movq	%rax, errortext(%rip)	# tmp130, MEM[(void *)&errortext]
	movabsq	$8386662811013640224, %rax	#, tmp131
	movq	%rax, errortext+8(%rip)	# tmp131, MEM[(void *)&errortext]
	movabsq	$7935469438779682665, %rax	#, tmp132
	movq	%rax, errortext+16(%rip)	# tmp132, MEM[(void *)&errortext]
	movabsq	$8606216625670091887, %rax	#, tmp133
	movq	%rax, errortext+24(%rip)	# tmp133, MEM[(void *)&errortext]
	movabsq	$7017206827978876005, %rax	#, tmp134
	movq	%rax, errortext+32(%rip)	# tmp134, MEM[(void *)&errortext]
	movabsq	$13059373818209651, %rax	#, tmp135
	movq	%rax, errortext+40(%rip)	# tmp135, MEM[(void *)&errortext]
	.loc 1 1084 0
	movl	$500, %esi	#,
	movl	$errortext, %edi	#,
	call	error	#
.L190:
	.loc 1 1086 0
	movq	input(%rip), %rax	# input, input.248
	movl	1288(%rax), %eax	# input.248_25->WeightedBiprediction, D.6495
	testl	%eax, %eax	# D.6495
	je	.L191	#,
	.loc 1 1088 0
	movabsq	$7234316368200951127, %rax	#, tmp136
	movq	%rax, errortext(%rip)	# tmp136, MEM[(void *)&errortext]
	movabsq	$8386662811013640224, %rax	#, tmp137
	movq	%rax, errortext+8(%rip)	# tmp137, MEM[(void *)&errortext]
	movabsq	$7935469438779682665, %rax	#, tmp138
	movq	%rax, errortext+16(%rip)	# tmp138, MEM[(void *)&errortext]
	movabsq	$8606216625670091887, %rax	#, tmp139
	movq	%rax, errortext+24(%rip)	# tmp139, MEM[(void *)&errortext]
	movabsq	$7017206827978876005, %rax	#, tmp140
	movq	%rax, errortext+32(%rip)	# tmp140, MEM[(void *)&errortext]
	movabsq	$13059373818209651, %rax	#, tmp141
	movq	%rax, errortext+40(%rip)	# tmp141, MEM[(void *)&errortext]
	.loc 1 1089 0
	movl	$500, %esi	#,
	movl	$errortext, %edi	#,
	call	error	#
.L191:
	.loc 1 1091 0
	movq	input(%rip), %rax	# input, input.249
	movl	2356(%rax), %eax	# input.249_27->symbol_mode, D.6495
	cmpl	$1, %eax	#, D.6495
	jne	.L186	#,
	.loc 1 1093 0
	movabsq	$8316213660146090307, %rax	#, tmp142
	movq	%rax, errortext(%rip)	# tmp142, MEM[(void *)&errortext]
	movabsq	$7812726245601275424, %rax	#, tmp143
	movq	%rax, errortext+8(%rip)	# tmp143, MEM[(void *)&errortext]
	movabsq	$2336920844496107375, %rax	#, tmp144
	movq	%rax, errortext+16(%rip)	# tmp144, MEM[(void *)&errortext]
	movabsq	$7308895159548338530, %rax	#, tmp145
	movq	%rax, errortext+24(%rip)	# tmp145, MEM[(void *)&errortext]
	movw	$46, errortext+32(%rip)	#, MEM[(void *)&errortext]
	.loc 1 1094 0
	movl	$500, %esi	#,
	movl	$errortext, %edi	#,
	call	error	#
.L186:
	.loc 1 1099 0
	movq	input(%rip), %rax	# input, input.250
	movl	(%rax), %eax	# input.250_29->ProfileIDC, D.6495
	cmpl	$77, %eax	#, D.6495
	jne	.L192	#,
	.loc 1 1101 0
	movq	input(%rip), %rax	# input, input.251
	movl	1272(%rax), %eax	# input.251_31->sp_periodicity, D.6495
	testl	%eax, %eax	# D.6495
	je	.L193	#,
	.loc 1 1103 0
	movabsq	$8463498904239886419, %rax	#, tmp146
	movq	%rax, errortext(%rip)	# tmp146, MEM[(void *)&errortext]
	movabsq	$2334397743343297906, %rax	#, tmp147
	movq	%rax, errortext+8(%rip)	# tmp147, MEM[(void *)&errortext]
	movabsq	$8028911400106880878, %rax	#, tmp148
	movq	%rax, errortext+16(%rip)	# tmp148, MEM[(void *)&errortext]
	movabsq	$7863406347182957943, %rax	#, tmp149
	movq	%rax, errortext+24(%rip)	# tmp149, MEM[(void *)&errortext]
	movl	$778987873, errortext+32(%rip)	#, MEM[(void *)&errortext]
	movb	$0, errortext+36(%rip)	#, MEM[(void *)&errortext]
	.loc 1 1104 0
	movl	$500, %esi	#,
	movl	$errortext, %edi	#,
	call	error	#
.L193:
	.loc 1 1106 0
	movq	input(%rip), %rax	# input, input.252
	movl	2364(%rax), %eax	# input.252_33->partition_mode, D.6495
	testl	%eax, %eax	# D.6495
	je	.L194	#,
	.loc 1 1108 0
	movabsq	$8241992077440999748, %rax	#, tmp150
	movq	%rax, errortext(%rip)	# tmp150, MEM[(void *)&errortext]
	movabsq	$7956011641516353908, %rax	#, tmp151
	movq	%rax, errortext+8(%rip)	# tmp151, MEM[(void *)&errortext]
	movabsq	$8390045716468801639, %rax	#, tmp152
	movq	%rax, errortext+16(%rip)	# tmp152, MEM[(void *)&errortext]
	movabsq	$7234319696884687136, %rax	#, tmp153
	movq	%rax, errortext+24(%rip)	# tmp153, MEM[(void *)&errortext]
	movabsq	$7955997338050128160, %rax	#, tmp154
	movq	%rax, errortext+32(%rip)	# tmp154, MEM[(void *)&errortext]
	movw	$46, errortext+40(%rip)	#, MEM[(void *)&errortext]
	.loc 1 1109 0
	movl	$500, %esi	#,
	movl	$errortext, %edi	#,
	call	error	#
.L194:
	.loc 1 1111 0
	movq	input(%rip), %rax	# input, input.253
	movl	3152(%rax), %eax	# input.253_35->num_slice_groups_minus1, D.6495
	testl	%eax, %eax	# D.6495
	je	.L195	#,
	.loc 1 1113 0
	movabsq	$7163375925087532398, %rax	#, tmp155
	movq	%rax, errortext(%rip)	# tmp155, MEM[(void *)&errortext]
	movabsq	$8318277633274503013, %rax	#, tmp156
	movq	%rax, errortext+8(%rip)	# tmp156, MEM[(void *)&errortext]
	movabsq	$4481490052411125087, %rax	#, tmp157
	movq	%rax, errortext+16(%rip)	# tmp157, MEM[(void *)&errortext]
	movabsq	$2317470676566941744, %rax	#, tmp158
	movq	%rax, errortext+24(%rip)	# tmp158, MEM[(void *)&errortext]
	movabsq	$6998721842871563113, %rax	#, tmp159
	movq	%rax, errortext+32(%rip)	# tmp159, MEM[(void *)&errortext]
	movabsq	$7575164960195439724, %rax	#, tmp160
	movq	%rax, errortext+40(%rip)	# tmp160, MEM[(void *)&errortext]
	movabsq	$13069247813853294, %rax	#, tmp161
	movq	%rax, errortext+48(%rip)	# tmp161, MEM[(void *)&errortext]
	.loc 1 1114 0
	movl	$500, %esi	#,
	movl	$errortext, %edi	#,
	call	error	#
.L195:
	.loc 1 1116 0
	movq	input(%rip), %rax	# input, input.254
	movl	3204(%rax), %eax	# input.254_37->redundant_slice_flag, D.6495
	testl	%eax, %eax	# D.6495
	je	.L192	#,
	.loc 1 1118 0
	movabsq	$7953748842491700562, %rax	#, tmp162
	movq	%rax, errortext(%rip)	# tmp162, MEM[(void *)&errortext]
	movabsq	$8247626262918471796, %rax	#, tmp163
	movq	%rax, errortext+8(%rip)	# tmp163, MEM[(void *)&errortext]
	movabsq	$7935454085357007717, %rax	#, tmp164
	movq	%rax, errortext+16(%rip)	# tmp164, MEM[(void *)&errortext]
	movabsq	$8606216625670091887, %rax	#, tmp165
	movq	%rax, errortext+24(%rip)	# tmp165, MEM[(void *)&errortext]
	movabsq	$7020303052722693221, %rax	#, tmp166
	movq	%rax, errortext+32(%rip)	# tmp166, MEM[(void *)&errortext]
	movl	$3042921, errortext+40(%rip)	#, MEM[(void *)&errortext]
	.loc 1 1119 0
	movl	$500, %esi	#,
	movl	$errortext, %edi	#,
	call	error	#
.L192:
	.loc 1 1124 0
	movq	input(%rip), %rax	# input, input.255
	movl	(%rax), %eax	# input.255_39->ProfileIDC, D.6495
	cmpl	$88, %eax	#, D.6495
	jne	.L184	#,
	.loc 1 1126 0
	movq	input(%rip), %rax	# input, input.256
	movl	1252(%rax), %eax	# input.256_41->directInferenceFlag, D.6495
	testl	%eax, %eax	# D.6495
	jne	.L197	#,
	.loc 1 1128 0
	movabsq	$4062093359164057956, %rax	#, tmp167
	movq	%rax, errortext(%rip)	# tmp167, MEM[(void *)&errortext]
	movabsq	$8243107317371844728, %rax	#, tmp168
	movq	%rax, errortext+8(%rip)	# tmp168, MEM[(void *)&errortext]
	movabsq	$7020098208489762405, %rax	#, tmp169
	movq	%rax, errortext+16(%rip)	# tmp169, MEM[(void *)&errortext]
	movabsq	$7070779454211825767, %rax	#, tmp170
	movq	%rax, errortext+24(%rip)	# tmp170, MEM[(void *)&errortext]
	movabsq	$2336349463739965541, %rax	#, tmp171
	movq	%rax, errortext+32(%rip)	# tmp171, MEM[(void *)&errortext]
	movabsq	$2336920843635945332, %rax	#, tmp172
	movq	%rax, errortext+40(%rip)	# tmp172, MEM[(void *)&errortext]
	movabsq	$7234298801751881829, %rax	#, tmp173
	movq	%rax, errortext+48(%rip)	# tmp173, MEM[(void *)&errortext]
	movw	$46, errortext+56(%rip)	#, MEM[(void *)&errortext]
	.loc 1 1129 0
	movl	$500, %esi	#,
	movl	$errortext, %edi	#,
	call	error	#
.L197:
	.loc 1 1132 0
	movq	input(%rip), %rax	# input, input.257
	movl	2356(%rax), %eax	# input.257_43->symbol_mode, D.6495
	cmpl	$1, %eax	#, D.6495
	jne	.L184	#,
	.loc 1 1134 0
	movabsq	$8316213660146090307, %rax	#, tmp174
	movq	%rax, errortext(%rip)	# tmp174, MEM[(void *)&errortext]
	movabsq	$7812726245601275424, %rax	#, tmp175
	movq	%rax, errortext+8(%rip)	# tmp175, MEM[(void *)&errortext]
	movabsq	$2336920844496107375, %rax	#, tmp176
	movq	%rax, errortext+16(%rip)	# tmp176, MEM[(void *)&errortext]
	movabsq	$7234298801751881829, %rax	#, tmp177
	movq	%rax, errortext+24(%rip)	# tmp177, MEM[(void *)&errortext]
	movw	$46, errortext+32(%rip)	#, MEM[(void *)&errortext]
	.loc 1 1135 0
	movl	$500, %esi	#,
	movl	$errortext, %edi	#,
	call	error	#
.L184:
	.loc 1 1138 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	ProfileCheck, .-ProfileCheck
	.type	LevelCheck, @function
LevelCheck:
.LFB14:
	.loc 1 1141 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 1142 0
	nop
	.loc 1 1143 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	LevelCheck, .-LevelCheck
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/x86_64-linux-gnu/sys/types.h"
	.file 5 "/usr/include/stdio.h"
	.file 6 "/usr/include/libio.h"
	.file 7 "defines.h"
	.file 8 "parsetcommon.h"
	.file 9 "global.h"
	.file 10 "configfile.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x276a
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF570
	.byte	0x1
	.long	.LASF571
	.long	.LASF572
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
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
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
	.uleb128 0x5
	.long	0x3f
	.long	0x96
	.uleb128 0x6
	.long	0x96
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x7
	.byte	0x8
	.uleb128 0x8
	.byte	0x8
	.long	0xa5
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x8
	.byte	0x8
	.long	0x3f
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF12
	.uleb128 0x2
	.long	.LASF13
	.byte	0x4
	.byte	0xc5
	.long	0x69
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF14
	.uleb128 0x2
	.long	.LASF15
	.byte	0x5
	.byte	0x30
	.long	0xd6
	.uleb128 0x9
	.long	.LASF45
	.byte	0xd8
	.byte	0x6
	.byte	0xf6
	.long	0x257
	.uleb128 0xa
	.long	.LASF16
	.byte	0x6
	.byte	0xf7
	.long	0x3f
	.byte	0
	.uleb128 0xa
	.long	.LASF17
	.byte	0x6
	.byte	0xfc
	.long	0x9f
	.byte	0x8
	.uleb128 0xa
	.long	.LASF18
	.byte	0x6
	.byte	0xfd
	.long	0x9f
	.byte	0x10
	.uleb128 0xa
	.long	.LASF19
	.byte	0x6
	.byte	0xfe
	.long	0x9f
	.byte	0x18
	.uleb128 0xa
	.long	.LASF20
	.byte	0x6
	.byte	0xff
	.long	0x9f
	.byte	0x20
	.uleb128 0xb
	.long	.LASF21
	.byte	0x6
	.value	0x100
	.long	0x9f
	.byte	0x28
	.uleb128 0xb
	.long	.LASF22
	.byte	0x6
	.value	0x101
	.long	0x9f
	.byte	0x30
	.uleb128 0xb
	.long	.LASF23
	.byte	0x6
	.value	0x102
	.long	0x9f
	.byte	0x38
	.uleb128 0xb
	.long	.LASF24
	.byte	0x6
	.value	0x103
	.long	0x9f
	.byte	0x40
	.uleb128 0xb
	.long	.LASF25
	.byte	0x6
	.value	0x105
	.long	0x9f
	.byte	0x48
	.uleb128 0xb
	.long	.LASF26
	.byte	0x6
	.value	0x106
	.long	0x9f
	.byte	0x50
	.uleb128 0xb
	.long	.LASF27
	.byte	0x6
	.value	0x107
	.long	0x9f
	.byte	0x58
	.uleb128 0xb
	.long	.LASF28
	.byte	0x6
	.value	0x109
	.long	0x28f
	.byte	0x60
	.uleb128 0xb
	.long	.LASF29
	.byte	0x6
	.value	0x10b
	.long	0x295
	.byte	0x68
	.uleb128 0xb
	.long	.LASF30
	.byte	0x6
	.value	0x10d
	.long	0x3f
	.byte	0x70
	.uleb128 0xb
	.long	.LASF31
	.byte	0x6
	.value	0x111
	.long	0x3f
	.byte	0x74
	.uleb128 0xb
	.long	.LASF32
	.byte	0x6
	.value	0x113
	.long	0x70
	.byte	0x78
	.uleb128 0xb
	.long	.LASF33
	.byte	0x6
	.value	0x117
	.long	0x4d
	.byte	0x80
	.uleb128 0xb
	.long	.LASF34
	.byte	0x6
	.value	0x118
	.long	0x5b
	.byte	0x82
	.uleb128 0xb
	.long	.LASF35
	.byte	0x6
	.value	0x119
	.long	0x29b
	.byte	0x83
	.uleb128 0xb
	.long	.LASF36
	.byte	0x6
	.value	0x11d
	.long	0x2ab
	.byte	0x88
	.uleb128 0xb
	.long	.LASF37
	.byte	0x6
	.value	0x126
	.long	0x7b
	.byte	0x90
	.uleb128 0xb
	.long	.LASF38
	.byte	0x6
	.value	0x12f
	.long	0x9d
	.byte	0x98
	.uleb128 0xb
	.long	.LASF39
	.byte	0x6
	.value	0x130
	.long	0x9d
	.byte	0xa0
	.uleb128 0xb
	.long	.LASF40
	.byte	0x6
	.value	0x131
	.long	0x9d
	.byte	0xa8
	.uleb128 0xb
	.long	.LASF41
	.byte	0x6
	.value	0x132
	.long	0x9d
	.byte	0xb0
	.uleb128 0xb
	.long	.LASF42
	.byte	0x6
	.value	0x133
	.long	0x2d
	.byte	0xb8
	.uleb128 0xb
	.long	.LASF43
	.byte	0x6
	.value	0x135
	.long	0x3f
	.byte	0xc0
	.uleb128 0xb
	.long	.LASF44
	.byte	0x6
	.value	0x137
	.long	0x2b1
	.byte	0xc4
	.byte	0
	.uleb128 0xc
	.long	.LASF573
	.byte	0x6
	.byte	0x9b
	.uleb128 0x9
	.long	.LASF46
	.byte	0x18
	.byte	0x6
	.byte	0xa1
	.long	0x28f
	.uleb128 0xa
	.long	.LASF47
	.byte	0x6
	.byte	0xa2
	.long	0x28f
	.byte	0
	.uleb128 0xa
	.long	.LASF48
	.byte	0x6
	.byte	0xa3
	.long	0x295
	.byte	0x8
	.uleb128 0xa
	.long	.LASF49
	.byte	0x6
	.byte	0xa7
	.long	0x3f
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x25e
	.uleb128 0x8
	.byte	0x8
	.long	0xd6
	.uleb128 0x5
	.long	0xa5
	.long	0x2ab
	.uleb128 0x6
	.long	0x96
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x257
	.uleb128 0x5
	.long	0xa5
	.long	0x2c1
	.uleb128 0x6
	.long	0x96
	.byte	0x13
	.byte	0
	.uleb128 0x2
	.long	.LASF50
	.byte	0x7
	.byte	0x1e
	.long	0x46
	.uleb128 0xd
	.byte	0x4
	.byte	0x8
	.byte	0x2a
	.long	0x2e1
	.uleb128 0xe
	.long	.LASF51
	.sleb128 0
	.uleb128 0xe
	.long	.LASF52
	.sleb128 1
	.byte	0
	.uleb128 0x2
	.long	.LASF53
	.byte	0x8
	.byte	0x2d
	.long	0x2cc
	.uleb128 0x5
	.long	0x3f
	.long	0x2fc
	.uleb128 0x6
	.long	0x96
	.byte	0x7
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x2c1
	.uleb128 0x2
	.long	.LASF54
	.byte	0x9
	.byte	0x3e
	.long	0xb9
	.uleb128 0xd
	.byte	0x4
	.byte	0x9
	.byte	0x69
	.long	0x322
	.uleb128 0xe
	.long	.LASF55
	.sleb128 0
	.uleb128 0xe
	.long	.LASF56
	.sleb128 1
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.byte	0x9
	.byte	0x70
	.long	0x33d
	.uleb128 0xe
	.long	.LASF57
	.sleb128 0
	.uleb128 0xe
	.long	.LASF58
	.sleb128 1
	.uleb128 0xe
	.long	.LASF59
	.sleb128 2
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.byte	0x9
	.byte	0x9b
	.long	0x37c
	.uleb128 0xe
	.long	.LASF60
	.sleb128 0
	.uleb128 0xe
	.long	.LASF61
	.sleb128 1
	.uleb128 0xe
	.long	.LASF62
	.sleb128 2
	.uleb128 0xe
	.long	.LASF63
	.sleb128 3
	.uleb128 0xe
	.long	.LASF64
	.sleb128 4
	.uleb128 0xe
	.long	.LASF65
	.sleb128 5
	.uleb128 0xe
	.long	.LASF66
	.sleb128 6
	.uleb128 0xe
	.long	.LASF67
	.sleb128 7
	.uleb128 0xe
	.long	.LASF68
	.sleb128 8
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.byte	0x9
	.byte	0xb3
	.long	0x391
	.uleb128 0xe
	.long	.LASF69
	.sleb128 0
	.uleb128 0xe
	.long	.LASF70
	.sleb128 1
	.byte	0
	.uleb128 0xf
	.byte	0x68
	.byte	0x9
	.byte	0xcf
	.long	0x481
	.uleb128 0xa
	.long	.LASF71
	.byte	0x9
	.byte	0xd1
	.long	0x54
	.byte	0
	.uleb128 0xa
	.long	.LASF72
	.byte	0x9
	.byte	0xd1
	.long	0x54
	.byte	0x4
	.uleb128 0xa
	.long	.LASF73
	.byte	0x9
	.byte	0xd2
	.long	0x54
	.byte	0x8
	.uleb128 0xa
	.long	.LASF74
	.byte	0x9
	.byte	0xd3
	.long	0x54
	.byte	0xc
	.uleb128 0xa
	.long	.LASF75
	.byte	0x9
	.byte	0xd4
	.long	0x54
	.byte	0x10
	.uleb128 0xa
	.long	.LASF76
	.byte	0x9
	.byte	0xd5
	.long	0x2fc
	.byte	0x18
	.uleb128 0xa
	.long	.LASF77
	.byte	0x9
	.byte	0xd6
	.long	0xac
	.byte	0x20
	.uleb128 0xa
	.long	.LASF78
	.byte	0x9
	.byte	0xd9
	.long	0x54
	.byte	0x28
	.uleb128 0xa
	.long	.LASF79
	.byte	0x9
	.byte	0xd9
	.long	0x54
	.byte	0x2c
	.uleb128 0xa
	.long	.LASF80
	.byte	0x9
	.byte	0xda
	.long	0x54
	.byte	0x30
	.uleb128 0xa
	.long	.LASF81
	.byte	0x9
	.byte	0xdb
	.long	0x54
	.byte	0x34
	.uleb128 0xa
	.long	.LASF82
	.byte	0x9
	.byte	0xdc
	.long	0x54
	.byte	0x38
	.uleb128 0xa
	.long	.LASF83
	.byte	0x9
	.byte	0xdd
	.long	0x2fc
	.byte	0x40
	.uleb128 0xa
	.long	.LASF84
	.byte	0x9
	.byte	0xde
	.long	0xac
	.byte	0x48
	.uleb128 0x10
	.string	"C"
	.byte	0x9
	.byte	0xdf
	.long	0x3f
	.byte	0x50
	.uleb128 0x10
	.string	"CS"
	.byte	0x9
	.byte	0xdf
	.long	0x3f
	.byte	0x54
	.uleb128 0x10
	.string	"E"
	.byte	0x9
	.byte	0xe0
	.long	0x3f
	.byte	0x58
	.uleb128 0x10
	.string	"ES"
	.byte	0x9
	.byte	0xe0
	.long	0x3f
	.byte	0x5c
	.uleb128 0x10
	.string	"B"
	.byte	0x9
	.byte	0xe1
	.long	0x3f
	.byte	0x60
	.uleb128 0x10
	.string	"BS"
	.byte	0x9
	.byte	0xe1
	.long	0x3f
	.byte	0x64
	.byte	0
	.uleb128 0x2
	.long	.LASF85
	.byte	0x9
	.byte	0xe2
	.long	0x391
	.uleb128 0x2
	.long	.LASF86
	.byte	0x9
	.byte	0xe4
	.long	0x497
	.uleb128 0x8
	.byte	0x8
	.long	0x481
	.uleb128 0xf
	.byte	0x10
	.byte	0x9
	.byte	0xe7
	.long	0x4ca
	.uleb128 0xa
	.long	.LASF87
	.byte	0x9
	.byte	0xe9
	.long	0x4d
	.byte	0
	.uleb128 0x10
	.string	"MPS"
	.byte	0x9
	.byte	0xea
	.long	0x46
	.byte	0x2
	.uleb128 0xa
	.long	.LASF88
	.byte	0x9
	.byte	0xec
	.long	0x38
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.long	.LASF89
	.byte	0x9
	.byte	0xee
	.long	0x49d
	.uleb128 0x11
	.value	0x5e0
	.byte	0x9
	.value	0x102
	.long	0x541
	.uleb128 0xb
	.long	.LASF90
	.byte	0x9
	.value	0x104
	.long	0x541
	.byte	0
	.uleb128 0x12
	.long	.LASF91
	.byte	0x9
	.value	0x105
	.long	0x557
	.value	0x210
	.uleb128 0x12
	.long	.LASF92
	.byte	0x9
	.value	0x106
	.long	0x56d
	.value	0x330
	.uleb128 0x12
	.long	.LASF93
	.byte	0x9
	.value	0x107
	.long	0x583
	.value	0x470
	.uleb128 0x12
	.long	.LASF94
	.byte	0x9
	.value	0x108
	.long	0x599
	.value	0x530
	.uleb128 0x12
	.long	.LASF95
	.byte	0x9
	.value	0x109
	.long	0x599
	.value	0x570
	.uleb128 0x12
	.long	.LASF96
	.byte	0x9
	.value	0x10a
	.long	0x5a9
	.value	0x5b0
	.byte	0
	.uleb128 0x5
	.long	0x4ca
	.long	0x557
	.uleb128 0x6
	.long	0x96
	.byte	0x2
	.uleb128 0x6
	.long	0x96
	.byte	0xa
	.byte	0
	.uleb128 0x5
	.long	0x4ca
	.long	0x56d
	.uleb128 0x6
	.long	0x96
	.byte	0x1
	.uleb128 0x6
	.long	0x96
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	0x4ca
	.long	0x583
	.uleb128 0x6
	.long	0x96
	.byte	0x1
	.uleb128 0x6
	.long	0x96
	.byte	0x9
	.byte	0
	.uleb128 0x5
	.long	0x4ca
	.long	0x599
	.uleb128 0x6
	.long	0x96
	.byte	0x1
	.uleb128 0x6
	.long	0x96
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.long	0x4ca
	.long	0x5a9
	.uleb128 0x6
	.long	0x96
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.long	0x4ca
	.long	0x5b9
	.uleb128 0x6
	.long	0x96
	.byte	0x2
	.byte	0
	.uleb128 0x13
	.long	.LASF97
	.byte	0x9
	.value	0x10c
	.long	0x4d5
	.uleb128 0x11
	.value	0x2f60
	.byte	0x9
	.value	0x119
	.long	0x659
	.uleb128 0xb
	.long	.LASF98
	.byte	0x9
	.value	0x11b
	.long	0x659
	.byte	0
	.uleb128 0xb
	.long	.LASF99
	.byte	0x9
	.value	0x11c
	.long	0x599
	.byte	0x20
	.uleb128 0xb
	.long	.LASF100
	.byte	0x9
	.value	0x11d
	.long	0x669
	.byte	0x60
	.uleb128 0x12
	.long	.LASF101
	.byte	0x9
	.value	0x11e
	.long	0x67f
	.value	0x120
	.uleb128 0x12
	.long	.LASF102
	.byte	0x9
	.value	0x11f
	.long	0x695
	.value	0x3a0
	.uleb128 0x12
	.long	.LASF103
	.byte	0x9
	.value	0x120
	.long	0x695
	.value	0xd00
	.uleb128 0x12
	.long	.LASF104
	.byte	0x9
	.value	0x121
	.long	0x6ab
	.value	0x1660
	.uleb128 0x12
	.long	.LASF105
	.byte	0x9
	.value	0x122
	.long	0x6ab
	.value	0x1980
	.uleb128 0x12
	.long	.LASF106
	.byte	0x9
	.value	0x123
	.long	0x695
	.value	0x1ca0
	.uleb128 0x12
	.long	.LASF107
	.byte	0x9
	.value	0x124
	.long	0x695
	.value	0x2600
	.byte	0
	.uleb128 0x5
	.long	0x4ca
	.long	0x669
	.uleb128 0x6
	.long	0x96
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.long	0x4ca
	.long	0x67f
	.uleb128 0x6
	.long	0x96
	.byte	0x2
	.uleb128 0x6
	.long	0x96
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.long	0x4ca
	.long	0x695
	.uleb128 0x6
	.long	0x96
	.byte	0x9
	.uleb128 0x6
	.long	0x96
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.long	0x4ca
	.long	0x6ab
	.uleb128 0x6
	.long	0x96
	.byte	0x9
	.uleb128 0x6
	.long	0x96
	.byte	0xe
	.byte	0
	.uleb128 0x5
	.long	0x4ca
	.long	0x6c1
	.uleb128 0x6
	.long	0x96
	.byte	0x9
	.uleb128 0x6
	.long	0x96
	.byte	0x4
	.byte	0
	.uleb128 0x13
	.long	.LASF108
	.byte	0x9
	.value	0x125
	.long	0x5c5
	.uleb128 0x14
	.long	.LASF109
	.byte	0x10
	.byte	0x9
	.value	0x134
	.long	0x702
	.uleb128 0xb
	.long	.LASF110
	.byte	0x9
	.value	0x136
	.long	0x3f
	.byte	0
	.uleb128 0xb
	.long	.LASF111
	.byte	0x9
	.value	0x137
	.long	0x3f
	.byte	0x4
	.uleb128 0xb
	.long	.LASF112
	.byte	0x9
	.value	0x138
	.long	0x702
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x6cd
	.uleb128 0x13
	.long	.LASF113
	.byte	0x9
	.value	0x139
	.long	0x6cd
	.uleb128 0x14
	.long	.LASF114
	.byte	0x20
	.byte	0x9
	.value	0x13c
	.long	0x770
	.uleb128 0xb
	.long	.LASF115
	.byte	0x9
	.value	0x13e
	.long	0x3f
	.byte	0
	.uleb128 0xb
	.long	.LASF116
	.byte	0x9
	.value	0x13f
	.long	0x3f
	.byte	0x4
	.uleb128 0xb
	.long	.LASF117
	.byte	0x9
	.value	0x140
	.long	0x3f
	.byte	0x8
	.uleb128 0xb
	.long	.LASF118
	.byte	0x9
	.value	0x141
	.long	0x3f
	.byte	0xc
	.uleb128 0xb
	.long	.LASF119
	.byte	0x9
	.value	0x142
	.long	0x3f
	.byte	0x10
	.uleb128 0xb
	.long	.LASF112
	.byte	0x9
	.value	0x143
	.long	0x770
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x714
	.uleb128 0x13
	.long	.LASF120
	.byte	0x9
	.value	0x144
	.long	0x714
	.uleb128 0x14
	.long	.LASF121
	.byte	0x30
	.byte	0x9
	.value	0x147
	.long	0x810
	.uleb128 0xb
	.long	.LASF122
	.byte	0x9
	.value	0x149
	.long	0x3f
	.byte	0
	.uleb128 0xb
	.long	.LASF123
	.byte	0x9
	.value	0x14a
	.long	0x3f
	.byte	0x4
	.uleb128 0xb
	.long	.LASF124
	.byte	0x9
	.value	0x14b
	.long	0x3f
	.byte	0x8
	.uleb128 0x15
	.string	"len"
	.byte	0x9
	.value	0x14c
	.long	0x3f
	.byte	0xc
	.uleb128 0x15
	.string	"inf"
	.byte	0x9
	.value	0x14d
	.long	0x3f
	.byte	0x10
	.uleb128 0xb
	.long	.LASF125
	.byte	0x9
	.value	0x14e
	.long	0x54
	.byte	0x14
	.uleb128 0xb
	.long	.LASF126
	.byte	0x9
	.value	0x14f
	.long	0x3f
	.byte	0x18
	.uleb128 0x15
	.string	"k"
	.byte	0x9
	.value	0x150
	.long	0x3f
	.byte	0x1c
	.uleb128 0xb
	.long	.LASF127
	.byte	0x9
	.value	0x158
	.long	0x82a
	.byte	0x20
	.uleb128 0xb
	.long	.LASF128
	.byte	0x9
	.value	0x15a
	.long	0x846
	.byte	0x28
	.byte	0
	.uleb128 0x16
	.long	0x82a
	.uleb128 0x17
	.long	0x3f
	.uleb128 0x17
	.long	0x3f
	.uleb128 0x17
	.long	0xac
	.uleb128 0x17
	.long	0xac
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x810
	.uleb128 0x16
	.long	0x840
	.uleb128 0x17
	.long	0x840
	.uleb128 0x17
	.long	0x48c
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x782
	.uleb128 0x8
	.byte	0x8
	.long	0x830
	.uleb128 0x13
	.long	.LASF129
	.byte	0x9
	.value	0x15c
	.long	0x782
	.uleb128 0x18
	.long	.LASF130
	.value	0x278
	.byte	0x9
	.value	0x15f
	.long	0xad2
	.uleb128 0xb
	.long	.LASF131
	.byte	0x9
	.value	0x161
	.long	0x3f
	.byte	0
	.uleb128 0xb
	.long	.LASF132
	.byte	0x9
	.value	0x162
	.long	0x3f
	.byte	0x4
	.uleb128 0xb
	.long	.LASF133
	.byte	0x9
	.value	0x163
	.long	0x3f
	.byte	0x8
	.uleb128 0x15
	.string	"qp"
	.byte	0x9
	.value	0x164
	.long	0x3f
	.byte	0xc
	.uleb128 0xb
	.long	.LASF134
	.byte	0x9
	.value	0x165
	.long	0x3f
	.byte	0x10
	.uleb128 0xb
	.long	.LASF135
	.byte	0x9
	.value	0x166
	.long	0x2ec
	.byte	0x14
	.uleb128 0xb
	.long	.LASF136
	.byte	0x9
	.value	0x168
	.long	0xad2
	.byte	0x38
	.uleb128 0xb
	.long	.LASF137
	.byte	0x9
	.value	0x169
	.long	0xad2
	.byte	0x40
	.uleb128 0xb
	.long	.LASF138
	.byte	0x9
	.value	0x16b
	.long	0x3f
	.byte	0x48
	.uleb128 0x15
	.string	"mvd"
	.byte	0x9
	.value	0x16c
	.long	0xad8
	.byte	0x4c
	.uleb128 0x12
	.long	.LASF139
	.byte	0x9
	.value	0x16d
	.long	0xafa
	.value	0x14c
	.uleb128 0x12
	.long	.LASF140
	.byte	0x9
	.value	0x16e
	.long	0xafa
	.value	0x18c
	.uleb128 0x19
	.string	"cbp"
	.byte	0x9
	.value	0x16f
	.long	0x3f
	.value	0x1cc
	.uleb128 0x12
	.long	.LASF141
	.byte	0x9
	.value	0x170
	.long	0x302
	.value	0x1d0
	.uleb128 0x12
	.long	.LASF142
	.byte	0x9
	.value	0x171
	.long	0xb0a
	.value	0x1d8
	.uleb128 0x12
	.long	.LASF143
	.byte	0x9
	.value	0x172
	.long	0xb0a
	.value	0x1e8
	.uleb128 0x12
	.long	.LASF144
	.byte	0x9
	.value	0x173
	.long	0x38
	.value	0x1f8
	.uleb128 0x12
	.long	.LASF145
	.byte	0x9
	.value	0x175
	.long	0x3f
	.value	0x200
	.uleb128 0x12
	.long	.LASF146
	.byte	0x9
	.value	0x176
	.long	0x3f
	.value	0x204
	.uleb128 0x12
	.long	.LASF147
	.byte	0x9
	.value	0x177
	.long	0x3f
	.value	0x208
	.uleb128 0x12
	.long	.LASF148
	.byte	0x9
	.value	0x179
	.long	0x3f
	.value	0x20c
	.uleb128 0x12
	.long	.LASF149
	.byte	0x9
	.value	0x17a
	.long	0x3f
	.value	0x210
	.uleb128 0x12
	.long	.LASF150
	.byte	0x9
	.value	0x17c
	.long	0x3f
	.value	0x214
	.uleb128 0x12
	.long	.LASF151
	.byte	0x9
	.value	0x17e
	.long	0x3f
	.value	0x218
	.uleb128 0x12
	.long	.LASF152
	.byte	0x9
	.value	0x17e
	.long	0x3f
	.value	0x21c
	.uleb128 0x12
	.long	.LASF153
	.byte	0x9
	.value	0x17e
	.long	0x3f
	.value	0x220
	.uleb128 0x12
	.long	.LASF154
	.byte	0x9
	.value	0x17e
	.long	0x3f
	.value	0x224
	.uleb128 0x12
	.long	.LASF155
	.byte	0x9
	.value	0x17f
	.long	0x3f
	.value	0x228
	.uleb128 0x12
	.long	.LASF156
	.byte	0x9
	.value	0x17f
	.long	0x3f
	.value	0x22c
	.uleb128 0x12
	.long	.LASF157
	.byte	0x9
	.value	0x17f
	.long	0x3f
	.value	0x230
	.uleb128 0x12
	.long	.LASF158
	.byte	0x9
	.value	0x17f
	.long	0x3f
	.value	0x234
	.uleb128 0x12
	.long	.LASF159
	.byte	0x9
	.value	0x181
	.long	0x3f
	.value	0x238
	.uleb128 0x12
	.long	.LASF160
	.byte	0x9
	.value	0x182
	.long	0x3f
	.value	0x23c
	.uleb128 0x12
	.long	.LASF161
	.byte	0x9
	.value	0x183
	.long	0x3f
	.value	0x240
	.uleb128 0x12
	.long	.LASF162
	.byte	0x9
	.value	0x186
	.long	0x3f
	.value	0x244
	.uleb128 0x12
	.long	.LASF163
	.byte	0x9
	.value	0x18a
	.long	0xb1a
	.value	0x248
	.uleb128 0x12
	.long	.LASF164
	.byte	0x9
	.value	0x18b
	.long	0x3f
	.value	0x250
	.uleb128 0x12
	.long	.LASF165
	.byte	0x9
	.value	0x18c
	.long	0x3f
	.value	0x254
	.uleb128 0x12
	.long	.LASF166
	.byte	0x9
	.value	0x18d
	.long	0x3f
	.value	0x258
	.uleb128 0x12
	.long	.LASF167
	.byte	0x9
	.value	0x18e
	.long	0x3f
	.value	0x25c
	.uleb128 0x12
	.long	.LASF168
	.byte	0x9
	.value	0x18f
	.long	0x3f
	.value	0x260
	.uleb128 0x12
	.long	.LASF169
	.byte	0x9
	.value	0x191
	.long	0x3f
	.value	0x264
	.uleb128 0x12
	.long	.LASF170
	.byte	0x9
	.value	0x192
	.long	0x3f
	.value	0x268
	.uleb128 0x12
	.long	.LASF171
	.byte	0x9
	.value	0x193
	.long	0x3f
	.value	0x26c
	.uleb128 0x12
	.long	.LASF172
	.byte	0x9
	.value	0x195
	.long	0x3f
	.value	0x270
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x858
	.uleb128 0x5
	.long	0x3f
	.long	0xafa
	.uleb128 0x6
	.long	0x96
	.byte	0x1
	.uleb128 0x6
	.long	0x96
	.byte	0x3
	.uleb128 0x6
	.long	0x96
	.byte	0x3
	.uleb128 0x6
	.long	0x96
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.long	0x3f
	.long	0xb0a
	.uleb128 0x6
	.long	0x96
	.byte	0xf
	.byte	0
	.uleb128 0x5
	.long	0x3f
	.long	0xb1a
	.uleb128 0x6
	.long	0x96
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF173
	.uleb128 0x13
	.long	.LASF174
	.byte	0x9
	.value	0x196
	.long	0x858
	.uleb128 0x1a
	.byte	0x30
	.byte	0x9
	.value	0x19b
	.long	0xbc6
	.uleb128 0xb
	.long	.LASF175
	.byte	0x9
	.value	0x19d
	.long	0x3f
	.byte	0
	.uleb128 0xb
	.long	.LASF176
	.byte	0x9
	.value	0x19e
	.long	0x3f
	.byte	0x4
	.uleb128 0xb
	.long	.LASF177
	.byte	0x9
	.value	0x19f
	.long	0x2c1
	.byte	0x8
	.uleb128 0xb
	.long	.LASF178
	.byte	0x9
	.value	0x1a0
	.long	0x3f
	.byte	0xc
	.uleb128 0xb
	.long	.LASF179
	.byte	0x9
	.value	0x1a1
	.long	0x3f
	.byte	0x10
	.uleb128 0xb
	.long	.LASF180
	.byte	0x9
	.value	0x1a2
	.long	0x2c1
	.byte	0x14
	.uleb128 0xb
	.long	.LASF181
	.byte	0x9
	.value	0x1a4
	.long	0x2c1
	.byte	0x15
	.uleb128 0xb
	.long	.LASF182
	.byte	0x9
	.value	0x1a5
	.long	0x3f
	.byte	0x18
	.uleb128 0xb
	.long	.LASF183
	.byte	0x9
	.value	0x1a6
	.long	0x3f
	.byte	0x1c
	.uleb128 0xb
	.long	.LASF184
	.byte	0x9
	.value	0x1a8
	.long	0x2fc
	.byte	0x20
	.uleb128 0xb
	.long	.LASF185
	.byte	0x9
	.value	0x1a9
	.long	0x3f
	.byte	0x28
	.byte	0
	.uleb128 0x13
	.long	.LASF186
	.byte	0x9
	.value	0x1ab
	.long	0xb2d
	.uleb128 0x14
	.long	.LASF187
	.byte	0x78
	.byte	0x9
	.value	0x1ae
	.long	0xc07
	.uleb128 0xb
	.long	.LASF188
	.byte	0x9
	.value	0x1b1
	.long	0xc07
	.byte	0
	.uleb128 0xb
	.long	.LASF189
	.byte	0x9
	.value	0x1b2
	.long	0x481
	.byte	0x8
	.uleb128 0xb
	.long	.LASF190
	.byte	0x9
	.value	0x1b4
	.long	0xc2d
	.byte	0x70
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xbc6
	.uleb128 0x1b
	.long	0x3f
	.long	0xc21
	.uleb128 0x17
	.long	0xc21
	.uleb128 0x17
	.long	0xc27
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x84c
	.uleb128 0x8
	.byte	0x8
	.long	0xbd2
	.uleb128 0x8
	.byte	0x8
	.long	0xc0d
	.uleb128 0x13
	.long	.LASF191
	.byte	0x9
	.value	0x1b8
	.long	0xbd2
	.uleb128 0x1a
	.byte	0x98
	.byte	0x9
	.value	0x1bb
	.long	0xd4c
	.uleb128 0xb
	.long	.LASF192
	.byte	0x9
	.value	0x1bd
	.long	0x3f
	.byte	0
	.uleb128 0x15
	.string	"qp"
	.byte	0x9
	.value	0x1be
	.long	0x3f
	.byte	0x4
	.uleb128 0xb
	.long	.LASF193
	.byte	0x9
	.value	0x1bf
	.long	0x3f
	.byte	0x8
	.uleb128 0xb
	.long	.LASF194
	.byte	0x9
	.value	0x1c0
	.long	0x3f
	.byte	0xc
	.uleb128 0xb
	.long	.LASF195
	.byte	0x9
	.value	0x1c1
	.long	0x3f
	.byte	0x10
	.uleb128 0xb
	.long	.LASF196
	.byte	0x9
	.value	0x1c2
	.long	0x3f
	.byte	0x14
	.uleb128 0xb
	.long	.LASF197
	.byte	0x9
	.value	0x1c3
	.long	0xd4c
	.byte	0x18
	.uleb128 0xb
	.long	.LASF198
	.byte	0x9
	.value	0x1c4
	.long	0xd52
	.byte	0x20
	.uleb128 0xb
	.long	.LASF199
	.byte	0x9
	.value	0x1c5
	.long	0xd58
	.byte	0x28
	.uleb128 0xb
	.long	.LASF200
	.byte	0x9
	.value	0x1c8
	.long	0xd5e
	.byte	0x30
	.uleb128 0xb
	.long	.LASF201
	.byte	0x9
	.value	0x1ca
	.long	0x3f
	.byte	0x38
	.uleb128 0xb
	.long	.LASF202
	.byte	0x9
	.value	0x1cb
	.long	0xac
	.byte	0x40
	.uleb128 0xb
	.long	.LASF203
	.byte	0x9
	.value	0x1cc
	.long	0xac
	.byte	0x48
	.uleb128 0xb
	.long	.LASF204
	.byte	0x9
	.value	0x1cd
	.long	0xac
	.byte	0x50
	.uleb128 0xb
	.long	.LASF205
	.byte	0x9
	.value	0x1ce
	.long	0x3f
	.byte	0x58
	.uleb128 0xb
	.long	.LASF206
	.byte	0x9
	.value	0x1cf
	.long	0xac
	.byte	0x60
	.uleb128 0xb
	.long	.LASF207
	.byte	0x9
	.value	0x1d0
	.long	0xac
	.byte	0x68
	.uleb128 0xb
	.long	.LASF208
	.byte	0x9
	.value	0x1d1
	.long	0xac
	.byte	0x70
	.uleb128 0xb
	.long	.LASF209
	.byte	0x9
	.value	0x1d3
	.long	0xd73
	.byte	0x78
	.uleb128 0xb
	.long	.LASF210
	.byte	0x9
	.value	0x1d5
	.long	0xd79
	.byte	0x80
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xc33
	.uleb128 0x8
	.byte	0x8
	.long	0x5b9
	.uleb128 0x8
	.byte	0x8
	.long	0x6c1
	.uleb128 0x8
	.byte	0x8
	.long	0x708
	.uleb128 0x1b
	.long	0x2e1
	.long	0xd73
	.uleb128 0x17
	.long	0x3f
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xd64
	.uleb128 0x5
	.long	0x3f
	.long	0xd8f
	.uleb128 0x6
	.long	0x96
	.byte	0x2
	.uleb128 0x6
	.long	0x96
	.byte	0x1
	.byte	0
	.uleb128 0x13
	.long	.LASF211
	.byte	0x9
	.value	0x1d7
	.long	0xc3f
	.uleb128 0x11
	.value	0x338
	.byte	0x9
	.value	0x1db
	.long	0xe05
	.uleb128 0xb
	.long	.LASF212
	.byte	0x9
	.value	0x1dd
	.long	0x3f
	.byte	0
	.uleb128 0xb
	.long	.LASF213
	.byte	0x9
	.value	0x1de
	.long	0x3f
	.byte	0x4
	.uleb128 0xb
	.long	.LASF214
	.byte	0x9
	.value	0x1df
	.long	0xe05
	.byte	0x8
	.uleb128 0x12
	.long	.LASF215
	.byte	0x9
	.value	0x1e0
	.long	0x3f
	.value	0x328
	.uleb128 0x12
	.long	.LASF216
	.byte	0x9
	.value	0x1e1
	.long	0xe1b
	.value	0x32c
	.uleb128 0x12
	.long	.LASF217
	.byte	0x9
	.value	0x1e2
	.long	0xe1b
	.value	0x330
	.uleb128 0x12
	.long	.LASF218
	.byte	0x9
	.value	0x1e3
	.long	0xe1b
	.value	0x334
	.byte	0
	.uleb128 0x5
	.long	0xe15
	.long	0xe15
	.uleb128 0x6
	.long	0x96
	.byte	0x63
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xd8f
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF219
	.uleb128 0x13
	.long	.LASF220
	.byte	0x9
	.value	0x1e4
	.long	0xd9b
	.uleb128 0x8
	.byte	0x8
	.long	0xac
	.uleb128 0x11
	.value	0xe08
	.byte	0x9
	.value	0x295
	.long	0x163c
	.uleb128 0xb
	.long	.LASF221
	.byte	0x9
	.value	0x297
	.long	0x3f
	.byte	0
	.uleb128 0xb
	.long	.LASF222
	.byte	0x9
	.value	0x298
	.long	0x3f
	.byte	0x4
	.uleb128 0xb
	.long	.LASF223
	.byte	0x9
	.value	0x29a
	.long	0x3f
	.byte	0x8
	.uleb128 0x15
	.string	"qp0"
	.byte	0x9
	.value	0x29b
	.long	0x3f
	.byte	0xc
	.uleb128 0x15
	.string	"qpN"
	.byte	0x9
	.value	0x29c
	.long	0x3f
	.byte	0x10
	.uleb128 0xb
	.long	.LASF224
	.byte	0x9
	.value	0x29d
	.long	0x3f
	.byte	0x14
	.uleb128 0xb
	.long	.LASF225
	.byte	0x9
	.value	0x29e
	.long	0x3f
	.byte	0x18
	.uleb128 0xb
	.long	.LASF226
	.byte	0x9
	.value	0x2a0
	.long	0x3f
	.byte	0x1c
	.uleb128 0xb
	.long	.LASF227
	.byte	0x9
	.value	0x2a1
	.long	0x3f
	.byte	0x20
	.uleb128 0xb
	.long	.LASF228
	.byte	0x9
	.value	0x2a4
	.long	0x3f
	.byte	0x24
	.uleb128 0xb
	.long	.LASF229
	.byte	0x9
	.value	0x2a5
	.long	0x3f
	.byte	0x28
	.uleb128 0xb
	.long	.LASF230
	.byte	0x9
	.value	0x2a6
	.long	0x3f
	.byte	0x2c
	.uleb128 0xb
	.long	.LASF231
	.byte	0x9
	.value	0x2a7
	.long	0x3f
	.byte	0x30
	.uleb128 0xb
	.long	.LASF232
	.byte	0x9
	.value	0x2a8
	.long	0x3f
	.byte	0x34
	.uleb128 0xb
	.long	.LASF233
	.byte	0x9
	.value	0x2a9
	.long	0x3f
	.byte	0x38
	.uleb128 0xb
	.long	.LASF234
	.byte	0x9
	.value	0x2aa
	.long	0x3f
	.byte	0x3c
	.uleb128 0xb
	.long	.LASF235
	.byte	0x9
	.value	0x2ac
	.long	0x3f
	.byte	0x40
	.uleb128 0xb
	.long	.LASF236
	.byte	0x9
	.value	0x2ad
	.long	0x3f
	.byte	0x44
	.uleb128 0xb
	.long	.LASF237
	.byte	0x9
	.value	0x2ae
	.long	0x3f
	.byte	0x48
	.uleb128 0xb
	.long	.LASF238
	.byte	0x9
	.value	0x2af
	.long	0x3f
	.byte	0x4c
	.uleb128 0xb
	.long	.LASF239
	.byte	0x9
	.value	0x2b3
	.long	0x163c
	.byte	0x50
	.uleb128 0xb
	.long	.LASF240
	.byte	0x9
	.value	0x2b4
	.long	0x163c
	.byte	0x90
	.uleb128 0xb
	.long	.LASF241
	.byte	0x9
	.value	0x2b5
	.long	0x3f
	.byte	0xd0
	.uleb128 0xb
	.long	.LASF242
	.byte	0x9
	.value	0x2b6
	.long	0x3f
	.byte	0xd4
	.uleb128 0xb
	.long	.LASF243
	.byte	0x9
	.value	0x2b7
	.long	0x3f
	.byte	0xd8
	.uleb128 0xb
	.long	.LASF244
	.byte	0x9
	.value	0x2b8
	.long	0x3f
	.byte	0xdc
	.uleb128 0xb
	.long	.LASF245
	.byte	0x9
	.value	0x2b9
	.long	0x1652
	.byte	0xe0
	.uleb128 0x12
	.long	.LASF246
	.byte	0x9
	.value	0x2ba
	.long	0x1652
	.value	0x1a8
	.uleb128 0x12
	.long	.LASF247
	.byte	0x9
	.value	0x2bb
	.long	0x1652
	.value	0x270
	.uleb128 0x12
	.long	.LASF248
	.byte	0x9
	.value	0x2bc
	.long	0x1652
	.value	0x338
	.uleb128 0x12
	.long	.LASF249
	.byte	0x9
	.value	0x2bd
	.long	0x1652
	.value	0x400
	.uleb128 0x12
	.long	.LASF250
	.byte	0x9
	.value	0x2be
	.long	0x3f
	.value	0x4c8
	.uleb128 0x12
	.long	.LASF251
	.byte	0x9
	.value	0x2c0
	.long	0x3f
	.value	0x4cc
	.uleb128 0x12
	.long	.LASF252
	.byte	0x9
	.value	0x2c1
	.long	0x3f
	.value	0x4d0
	.uleb128 0x12
	.long	.LASF253
	.byte	0x9
	.value	0x2c4
	.long	0x3f
	.value	0x4d4
	.uleb128 0x19
	.string	"qpB"
	.byte	0x9
	.value	0x2c5
	.long	0x3f
	.value	0x4d8
	.uleb128 0x12
	.long	.LASF254
	.byte	0x9
	.value	0x2c6
	.long	0x3f
	.value	0x4dc
	.uleb128 0x12
	.long	.LASF255
	.byte	0x9
	.value	0x2c7
	.long	0x3f
	.value	0x4e0
	.uleb128 0x12
	.long	.LASF256
	.byte	0x9
	.value	0x2c8
	.long	0x3f
	.value	0x4e4
	.uleb128 0x12
	.long	.LASF257
	.byte	0x9
	.value	0x2ca
	.long	0x3f
	.value	0x4e8
	.uleb128 0x12
	.long	.LASF258
	.byte	0x9
	.value	0x2cb
	.long	0x3f
	.value	0x4ec
	.uleb128 0x12
	.long	.LASF259
	.byte	0x9
	.value	0x2cc
	.long	0x3f
	.value	0x4f0
	.uleb128 0x12
	.long	.LASF260
	.byte	0x9
	.value	0x2cd
	.long	0x3f
	.value	0x4f4
	.uleb128 0x12
	.long	.LASF261
	.byte	0x9
	.value	0x2d1
	.long	0x3f
	.value	0x4f8
	.uleb128 0x12
	.long	.LASF134
	.byte	0x9
	.value	0x2d2
	.long	0x3f
	.value	0x4fc
	.uleb128 0x12
	.long	.LASF262
	.byte	0x9
	.value	0x2d3
	.long	0x3f
	.value	0x500
	.uleb128 0x12
	.long	.LASF263
	.byte	0x9
	.value	0x2d5
	.long	0x3f
	.value	0x504
	.uleb128 0x12
	.long	.LASF264
	.byte	0x9
	.value	0x2d6
	.long	0x3f
	.value	0x508
	.uleb128 0x12
	.long	.LASF265
	.byte	0x9
	.value	0x2d7
	.long	0x3f
	.value	0x50c
	.uleb128 0x12
	.long	.LASF266
	.byte	0x9
	.value	0x2d8
	.long	0x3f
	.value	0x510
	.uleb128 0x12
	.long	.LASF267
	.byte	0x9
	.value	0x2d9
	.long	0x3f
	.value	0x514
	.uleb128 0x12
	.long	.LASF268
	.byte	0x9
	.value	0x2da
	.long	0x3f
	.value	0x518
	.uleb128 0x12
	.long	.LASF269
	.byte	0x9
	.value	0x2db
	.long	0x3f
	.value	0x51c
	.uleb128 0x12
	.long	.LASF270
	.byte	0x9
	.value	0x2dc
	.long	0x3f
	.value	0x520
	.uleb128 0x12
	.long	.LASF271
	.byte	0x9
	.value	0x2dd
	.long	0x3f
	.value	0x524
	.uleb128 0x12
	.long	.LASF272
	.byte	0x9
	.value	0x2de
	.long	0x3f
	.value	0x528
	.uleb128 0x12
	.long	.LASF273
	.byte	0x9
	.value	0x2df
	.long	0x1662
	.value	0x52c
	.uleb128 0x12
	.long	.LASF274
	.byte	0x9
	.value	0x2e0
	.long	0x3f
	.value	0x92c
	.uleb128 0x12
	.long	.LASF275
	.byte	0x9
	.value	0x2e1
	.long	0x3f
	.value	0x930
	.uleb128 0x12
	.long	.LASF276
	.byte	0x9
	.value	0x2e3
	.long	0x3f
	.value	0x934
	.uleb128 0x12
	.long	.LASF277
	.byte	0x9
	.value	0x2e4
	.long	0x3f
	.value	0x938
	.uleb128 0x12
	.long	.LASF278
	.byte	0x9
	.value	0x2e5
	.long	0x3f
	.value	0x93c
	.uleb128 0x12
	.long	.LASF279
	.byte	0x9
	.value	0x2e7
	.long	0x3f
	.value	0x940
	.uleb128 0x12
	.long	.LASF280
	.byte	0x9
	.value	0x2e8
	.long	0x3f
	.value	0x944
	.uleb128 0x12
	.long	.LASF281
	.byte	0x9
	.value	0x2e9
	.long	0x3f
	.value	0x948
	.uleb128 0x12
	.long	.LASF282
	.byte	0x9
	.value	0x2ea
	.long	0x3f
	.value	0x94c
	.uleb128 0x12
	.long	.LASF283
	.byte	0x9
	.value	0x2eb
	.long	0x3f
	.value	0x950
	.uleb128 0x12
	.long	.LASF284
	.byte	0x9
	.value	0x2ec
	.long	0x3f
	.value	0x954
	.uleb128 0x12
	.long	.LASF285
	.byte	0x9
	.value	0x2ed
	.long	0x3f
	.value	0x958
	.uleb128 0x12
	.long	.LASF286
	.byte	0x9
	.value	0x2ef
	.long	0x3f
	.value	0x95c
	.uleb128 0x12
	.long	.LASF287
	.byte	0x9
	.value	0x2f0
	.long	0x3f
	.value	0x960
	.uleb128 0x12
	.long	.LASF288
	.byte	0x9
	.value	0x2f1
	.long	0x3f
	.value	0x964
	.uleb128 0x12
	.long	.LASF289
	.byte	0x9
	.value	0x2f2
	.long	0x3f
	.value	0x968
	.uleb128 0x12
	.long	.LASF290
	.byte	0x9
	.value	0x2f3
	.long	0x3f
	.value	0x96c
	.uleb128 0x12
	.long	.LASF291
	.byte	0x9
	.value	0x2f4
	.long	0x3f
	.value	0x970
	.uleb128 0x12
	.long	.LASF292
	.byte	0x9
	.value	0x2f5
	.long	0x3f
	.value	0x974
	.uleb128 0x12
	.long	.LASF293
	.byte	0x9
	.value	0x2f7
	.long	0xb1a
	.value	0x978
	.uleb128 0x12
	.long	.LASF294
	.byte	0x9
	.value	0x2f9
	.long	0x3f
	.value	0x980
	.uleb128 0x12
	.long	.LASF295
	.byte	0x9
	.value	0x2fb
	.long	0x3f
	.value	0x984
	.uleb128 0x12
	.long	.LASF296
	.byte	0x9
	.value	0x2fe
	.long	0x3f
	.value	0x988
	.uleb128 0x12
	.long	.LASF297
	.byte	0x9
	.value	0x301
	.long	0x3f
	.value	0x98c
	.uleb128 0x12
	.long	.LASF298
	.byte	0x9
	.value	0x301
	.long	0x3f
	.value	0x990
	.uleb128 0x12
	.long	.LASF299
	.byte	0x9
	.value	0x301
	.long	0x3f
	.value	0x994
	.uleb128 0x12
	.long	.LASF300
	.byte	0x9
	.value	0x302
	.long	0x3f
	.value	0x998
	.uleb128 0x12
	.long	.LASF301
	.byte	0x9
	.value	0x302
	.long	0x3f
	.value	0x99c
	.uleb128 0x12
	.long	.LASF302
	.byte	0x9
	.value	0x304
	.long	0x3f
	.value	0x9a0
	.uleb128 0x12
	.long	.LASF303
	.byte	0x9
	.value	0x305
	.long	0x3f
	.value	0x9a4
	.uleb128 0x12
	.long	.LASF304
	.byte	0x9
	.value	0x306
	.long	0x3f
	.value	0x9a8
	.uleb128 0x12
	.long	.LASF305
	.byte	0x9
	.value	0x309
	.long	0x3f
	.value	0x9ac
	.uleb128 0x12
	.long	.LASF306
	.byte	0x9
	.value	0x30a
	.long	0x1652
	.value	0x9b0
	.uleb128 0x12
	.long	.LASF307
	.byte	0x9
	.value	0x30b
	.long	0x1652
	.value	0xa78
	.uleb128 0x12
	.long	.LASF308
	.byte	0x9
	.value	0x30e
	.long	0x3f
	.value	0xb40
	.uleb128 0x12
	.long	.LASF309
	.byte	0x9
	.value	0x30f
	.long	0x3f
	.value	0xb44
	.uleb128 0x12
	.long	.LASF310
	.byte	0x9
	.value	0x311
	.long	0x3f
	.value	0xb48
	.uleb128 0x12
	.long	.LASF311
	.byte	0x9
	.value	0x313
	.long	0x3f
	.value	0xb4c
	.uleb128 0x12
	.long	.LASF312
	.byte	0x9
	.value	0x314
	.long	0x3f
	.value	0xb50
	.uleb128 0x12
	.long	.LASF313
	.byte	0x9
	.value	0x315
	.long	0x3f
	.value	0xb54
	.uleb128 0x12
	.long	.LASF314
	.byte	0x9
	.value	0x316
	.long	0x3f
	.value	0xb58
	.uleb128 0x12
	.long	.LASF315
	.byte	0x9
	.value	0x317
	.long	0x3f
	.value	0xb5c
	.uleb128 0x12
	.long	.LASF316
	.byte	0x9
	.value	0x318
	.long	0x3f
	.value	0xb60
	.uleb128 0x12
	.long	.LASF317
	.byte	0x9
	.value	0x319
	.long	0x3f
	.value	0xb64
	.uleb128 0x12
	.long	.LASF318
	.byte	0x9
	.value	0x31b
	.long	0x3f
	.value	0xb68
	.uleb128 0x12
	.long	.LASF319
	.byte	0x9
	.value	0x31d
	.long	0x3f
	.value	0xb6c
	.uleb128 0x12
	.long	.LASF169
	.byte	0x9
	.value	0x31e
	.long	0x3f
	.value	0xb70
	.uleb128 0x12
	.long	.LASF170
	.byte	0x9
	.value	0x31f
	.long	0x3f
	.value	0xb74
	.uleb128 0x12
	.long	.LASF171
	.byte	0x9
	.value	0x320
	.long	0x3f
	.value	0xb78
	.uleb128 0x12
	.long	.LASF320
	.byte	0x9
	.value	0x322
	.long	0x3f
	.value	0xb7c
	.uleb128 0x12
	.long	.LASF321
	.byte	0x9
	.value	0x323
	.long	0x3f
	.value	0xb80
	.uleb128 0x12
	.long	.LASF322
	.byte	0x9
	.value	0x324
	.long	0x3f
	.value	0xb84
	.uleb128 0x12
	.long	.LASF323
	.byte	0x9
	.value	0x327
	.long	0x1652
	.value	0xb88
	.uleb128 0x12
	.long	.LASF324
	.byte	0x9
	.value	0x328
	.long	0x3f
	.value	0xc50
	.uleb128 0x12
	.long	.LASF325
	.byte	0x9
	.value	0x329
	.long	0x3f
	.value	0xc54
	.uleb128 0x12
	.long	.LASF326
	.byte	0x9
	.value	0x32b
	.long	0xac
	.value	0xc58
	.uleb128 0x12
	.long	.LASF327
	.byte	0x9
	.value	0x32c
	.long	0xac
	.value	0xc60
	.uleb128 0x12
	.long	.LASF328
	.byte	0x9
	.value	0x32d
	.long	0x2fc
	.value	0xc68
	.uleb128 0x12
	.long	.LASF329
	.byte	0x9
	.value	0x32e
	.long	0xac
	.value	0xc70
	.uleb128 0x12
	.long	.LASF330
	.byte	0x9
	.value	0x330
	.long	0x3f
	.value	0xc78
	.uleb128 0x12
	.long	.LASF331
	.byte	0x9
	.value	0x331
	.long	0x3f
	.value	0xc7c
	.uleb128 0x12
	.long	.LASF332
	.byte	0x9
	.value	0x332
	.long	0x3f
	.value	0xc80
	.uleb128 0x12
	.long	.LASF333
	.byte	0x9
	.value	0x334
	.long	0x3f
	.value	0xc84
	.uleb128 0x12
	.long	.LASF334
	.byte	0x9
	.value	0x335
	.long	0x3f
	.value	0xc88
	.uleb128 0x12
	.long	.LASF335
	.byte	0x9
	.value	0x337
	.long	0x3f
	.value	0xc8c
	.uleb128 0x12
	.long	.LASF336
	.byte	0x9
	.value	0x338
	.long	0x3f
	.value	0xc90
	.uleb128 0x12
	.long	.LASF337
	.byte	0x9
	.value	0x339
	.long	0x3f
	.value	0xc94
	.uleb128 0x12
	.long	.LASF338
	.byte	0x9
	.value	0x33a
	.long	0x3f
	.value	0xc98
	.uleb128 0x12
	.long	.LASF339
	.byte	0x9
	.value	0x33b
	.long	0x3f
	.value	0xc9c
	.uleb128 0x12
	.long	.LASF340
	.byte	0x9
	.value	0x33c
	.long	0x3f
	.value	0xca0
	.uleb128 0x12
	.long	.LASF341
	.byte	0x9
	.value	0x33f
	.long	0x3f
	.value	0xca4
	.uleb128 0x12
	.long	.LASF342
	.byte	0x9
	.value	0x340
	.long	0x3f
	.value	0xca8
	.uleb128 0x12
	.long	.LASF343
	.byte	0x9
	.value	0x341
	.long	0x3f
	.value	0xcac
	.uleb128 0x12
	.long	.LASF344
	.byte	0x9
	.value	0x342
	.long	0x3f
	.value	0xcb0
	.uleb128 0x12
	.long	.LASF345
	.byte	0x9
	.value	0x343
	.long	0x3f
	.value	0xcb4
	.uleb128 0x12
	.long	.LASF346
	.byte	0x9
	.value	0x345
	.long	0x3f
	.value	0xcb8
	.uleb128 0x12
	.long	.LASF347
	.byte	0x9
	.value	0x346
	.long	0x2ec
	.value	0xcbc
	.uleb128 0x12
	.long	.LASF348
	.byte	0x9
	.value	0x349
	.long	0x3f
	.value	0xcdc
	.uleb128 0x12
	.long	.LASF349
	.byte	0x9
	.value	0x34c
	.long	0x3f
	.value	0xce0
	.uleb128 0x12
	.long	.LASF350
	.byte	0x9
	.value	0x34d
	.long	0x3f
	.value	0xce4
	.uleb128 0x12
	.long	.LASF351
	.byte	0x9
	.value	0x34e
	.long	0x3f
	.value	0xce8
	.uleb128 0x12
	.long	.LASF352
	.byte	0x9
	.value	0x34f
	.long	0x3f
	.value	0xcec
	.uleb128 0x12
	.long	.LASF353
	.byte	0x9
	.value	0x350
	.long	0x3f
	.value	0xcf0
	.uleb128 0x12
	.long	.LASF354
	.byte	0x9
	.value	0x351
	.long	0x3f
	.value	0xcf4
	.uleb128 0x12
	.long	.LASF355
	.byte	0x9
	.value	0x352
	.long	0x3f
	.value	0xcf8
	.uleb128 0x12
	.long	.LASF356
	.byte	0x9
	.value	0x355
	.long	0x3f
	.value	0xcfc
	.uleb128 0x12
	.long	.LASF357
	.byte	0x9
	.value	0x358
	.long	0x3f
	.value	0xd00
	.uleb128 0x12
	.long	.LASF358
	.byte	0x9
	.value	0x35b
	.long	0x3f
	.value	0xd04
	.uleb128 0x12
	.long	.LASF359
	.byte	0x9
	.value	0x35c
	.long	0x1673
	.value	0xd08
	.uleb128 0x12
	.long	.LASF360
	.byte	0x9
	.value	0x35e
	.long	0x1652
	.value	0xd38
	.uleb128 0x12
	.long	.LASF361
	.byte	0x9
	.value	0x35f
	.long	0x3f
	.value	0xe00
	.byte	0
	.uleb128 0x5
	.long	0x3f
	.long	0x1652
	.uleb128 0x6
	.long	0x96
	.byte	0x7
	.uleb128 0x6
	.long	0x96
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.long	0xa5
	.long	0x1662
	.uleb128 0x6
	.long	0x96
	.byte	0xc7
	.byte	0
	.uleb128 0x5
	.long	0xa5
	.long	0x1673
	.uleb128 0x1c
	.long	0x96
	.value	0x3ff
	.byte	0
	.uleb128 0x5
	.long	0xb1a
	.long	0x1683
	.uleb128 0x6
	.long	0x96
	.byte	0x5
	.byte	0
	.uleb128 0x13
	.long	.LASF362
	.byte	0x9
	.value	0x361
	.long	0xe34
	.uleb128 0x1d
	.long	0x11c20
	.byte	0x9
	.value	0x364
	.long	0x2074
	.uleb128 0xb
	.long	.LASF363
	.byte	0x9
	.value	0x366
	.long	0x3f
	.byte	0
	.uleb128 0x15
	.string	"pn"
	.byte	0x9
	.value	0x367
	.long	0x3f
	.byte	0x4
	.uleb128 0xb
	.long	.LASF364
	.byte	0x9
	.value	0x368
	.long	0x3f
	.byte	0x8
	.uleb128 0xb
	.long	.LASF365
	.byte	0x9
	.value	0x369
	.long	0x3f
	.byte	0xc
	.uleb128 0xb
	.long	.LASF366
	.byte	0x9
	.value	0x36a
	.long	0x3f
	.byte	0x10
	.uleb128 0xb
	.long	.LASF367
	.byte	0x9
	.value	0x36b
	.long	0x3f
	.byte	0x14
	.uleb128 0xb
	.long	.LASF122
	.byte	0x9
	.value	0x36c
	.long	0x3f
	.byte	0x18
	.uleb128 0xb
	.long	.LASF368
	.byte	0x9
	.value	0x36d
	.long	0x3f
	.byte	0x1c
	.uleb128 0xb
	.long	.LASF228
	.byte	0x9
	.value	0x36e
	.long	0x3f
	.byte	0x20
	.uleb128 0xb
	.long	.LASF369
	.byte	0x9
	.value	0x36f
	.long	0x3f
	.byte	0x24
	.uleb128 0x15
	.string	"qp"
	.byte	0x9
	.value	0x370
	.long	0x3f
	.byte	0x28
	.uleb128 0xb
	.long	.LASF134
	.byte	0x9
	.value	0x371
	.long	0x3f
	.byte	0x2c
	.uleb128 0xb
	.long	.LASF370
	.byte	0x9
	.value	0x372
	.long	0xe1b
	.byte	0x30
	.uleb128 0xb
	.long	.LASF371
	.byte	0x9
	.value	0x373
	.long	0x3f
	.byte	0x34
	.uleb128 0xb
	.long	.LASF372
	.byte	0x9
	.value	0x374
	.long	0x3f
	.byte	0x38
	.uleb128 0xb
	.long	.LASF373
	.byte	0x9
	.value	0x375
	.long	0x3f
	.byte	0x3c
	.uleb128 0xb
	.long	.LASF374
	.byte	0x9
	.value	0x376
	.long	0x3f
	.byte	0x40
	.uleb128 0xb
	.long	.LASF375
	.byte	0x9
	.value	0x377
	.long	0x3f
	.byte	0x44
	.uleb128 0xb
	.long	.LASF376
	.byte	0x9
	.value	0x378
	.long	0x3f
	.byte	0x48
	.uleb128 0xb
	.long	.LASF377
	.byte	0x9
	.value	0x379
	.long	0x3f
	.byte	0x4c
	.uleb128 0xb
	.long	.LASF378
	.byte	0x9
	.value	0x37a
	.long	0x3f
	.byte	0x50
	.uleb128 0xb
	.long	.LASF379
	.byte	0x9
	.value	0x37b
	.long	0x3f
	.byte	0x54
	.uleb128 0xb
	.long	.LASF380
	.byte	0x9
	.value	0x37c
	.long	0x3f
	.byte	0x58
	.uleb128 0xb
	.long	.LASF381
	.byte	0x9
	.value	0x37d
	.long	0x3f
	.byte	0x5c
	.uleb128 0xb
	.long	.LASF382
	.byte	0x9
	.value	0x37e
	.long	0x3f
	.byte	0x60
	.uleb128 0xb
	.long	.LASF383
	.byte	0x9
	.value	0x37f
	.long	0xe2e
	.byte	0x68
	.uleb128 0xb
	.long	.LASF384
	.byte	0x9
	.value	0x380
	.long	0xe2e
	.byte	0x70
	.uleb128 0xb
	.long	.LASF385
	.byte	0x9
	.value	0x382
	.long	0x3f
	.byte	0x78
	.uleb128 0xb
	.long	.LASF386
	.byte	0x9
	.value	0x383
	.long	0x2074
	.byte	0x80
	.uleb128 0xb
	.long	.LASF387
	.byte	0x9
	.value	0x385
	.long	0x3f
	.byte	0x88
	.uleb128 0xb
	.long	.LASF388
	.byte	0x9
	.value	0x386
	.long	0x3f
	.byte	0x8c
	.uleb128 0xb
	.long	.LASF389
	.byte	0x9
	.value	0x387
	.long	0x3f
	.byte	0x90
	.uleb128 0xb
	.long	.LASF390
	.byte	0x9
	.value	0x388
	.long	0x3f
	.byte	0x94
	.uleb128 0xb
	.long	.LASF391
	.byte	0x9
	.value	0x389
	.long	0x3f
	.byte	0x98
	.uleb128 0xb
	.long	.LASF392
	.byte	0x9
	.value	0x38a
	.long	0x3f
	.byte	0x9c
	.uleb128 0xb
	.long	.LASF393
	.byte	0x9
	.value	0x38b
	.long	0x3f
	.byte	0xa0
	.uleb128 0xb
	.long	.LASF394
	.byte	0x9
	.value	0x38c
	.long	0x3f
	.byte	0xa4
	.uleb128 0xb
	.long	.LASF395
	.byte	0x9
	.value	0x38e
	.long	0x3f
	.byte	0xa8
	.uleb128 0xb
	.long	.LASF396
	.byte	0x9
	.value	0x38f
	.long	0x3f
	.byte	0xac
	.uleb128 0xb
	.long	.LASF397
	.byte	0x9
	.value	0x390
	.long	0x3f
	.byte	0xb0
	.uleb128 0xb
	.long	.LASF398
	.byte	0x9
	.value	0x391
	.long	0x3f
	.byte	0xb4
	.uleb128 0xb
	.long	.LASF399
	.byte	0x9
	.value	0x395
	.long	0x207a
	.byte	0xb8
	.uleb128 0x12
	.long	.LASF400
	.byte	0x9
	.value	0x397
	.long	0x2096
	.value	0x12b8
	.uleb128 0x12
	.long	.LASF401
	.byte	0x9
	.value	0x398
	.long	0x20b2
	.value	0x1cb8
	.uleb128 0x12
	.long	.LASF402
	.byte	0x9
	.value	0x399
	.long	0x20ce
	.value	0x2138
	.uleb128 0x19
	.string	"mpr"
	.byte	0x9
	.value	0x39a
	.long	0x20f0
	.value	0x3138
	.uleb128 0x19
	.string	"m7"
	.byte	0x9
	.value	0x39b
	.long	0x2106
	.value	0x3338
	.uleb128 0x12
	.long	.LASF403
	.byte	0x9
	.value	0x39d
	.long	0x211c
	.value	0x3738
	.uleb128 0x12
	.long	.LASF404
	.byte	0x9
	.value	0x39e
	.long	0x2074
	.value	0x3740
	.uleb128 0x12
	.long	.LASF405
	.byte	0x9
	.value	0x3a0
	.long	0x2122
	.value	0x3748
	.uleb128 0x12
	.long	.LASF406
	.byte	0x9
	.value	0x3a1
	.long	0xe15
	.value	0x3750
	.uleb128 0x12
	.long	.LASF407
	.byte	0x9
	.value	0x3a2
	.long	0x2128
	.value	0x3758
	.uleb128 0x12
	.long	.LASF408
	.byte	0x9
	.value	0x3a3
	.long	0x212e
	.value	0x3760
	.uleb128 0x1e
	.long	.LASF409
	.byte	0x9
	.value	0x3a5
	.long	0xac
	.long	0x11860
	.uleb128 0x1e
	.long	.LASF410
	.byte	0x9
	.value	0x3a6
	.long	0xac
	.long	0x11868
	.uleb128 0x1f
	.string	"tr"
	.byte	0x9
	.value	0x3a8
	.long	0x3f
	.long	0x11870
	.uleb128 0x1e
	.long	.LASF411
	.byte	0x9
	.value	0x3a9
	.long	0x3f
	.long	0x11874
	.uleb128 0x1e
	.long	.LASF412
	.byte	0x9
	.value	0x3aa
	.long	0x54
	.long	0x11878
	.uleb128 0x1e
	.long	.LASF413
	.byte	0x9
	.value	0x3ab
	.long	0x54
	.long	0x1187c
	.uleb128 0x1e
	.long	.LASF414
	.byte	0x9
	.value	0x3ac
	.long	0x213f
	.long	0x11880
	.uleb128 0x1e
	.long	.LASF415
	.byte	0x9
	.value	0x3ad
	.long	0x3f
	.long	0x118c0
	.uleb128 0x1e
	.long	.LASF416
	.byte	0x9
	.value	0x3ae
	.long	0x3f
	.long	0x118c4
	.uleb128 0x1e
	.long	.LASF417
	.byte	0x9
	.value	0x3af
	.long	0x3f
	.long	0x118c8
	.uleb128 0x1e
	.long	.LASF418
	.byte	0x9
	.value	0x3b0
	.long	0x3f
	.long	0x118cc
	.uleb128 0x1e
	.long	.LASF419
	.byte	0x9
	.value	0x3b1
	.long	0x3f
	.long	0x118d0
	.uleb128 0x1e
	.long	.LASF420
	.byte	0x9
	.value	0x3b4
	.long	0xb1a
	.long	0x118d8
	.uleb128 0x1e
	.long	.LASF421
	.byte	0x9
	.value	0x3b5
	.long	0x3f
	.long	0x118e0
	.uleb128 0x1e
	.long	.LASF422
	.byte	0x9
	.value	0x3b6
	.long	0x3f
	.long	0x118e4
	.uleb128 0x1e
	.long	.LASF423
	.byte	0x9
	.value	0x3b7
	.long	0x3f
	.long	0x118e8
	.uleb128 0x1e
	.long	.LASF424
	.byte	0x9
	.value	0x3b8
	.long	0x3f
	.long	0x118ec
	.uleb128 0x1e
	.long	.LASF425
	.byte	0x9
	.value	0x3ba
	.long	0x2155
	.long	0x118f0
	.uleb128 0x1e
	.long	.LASF426
	.byte	0x9
	.value	0x3bb
	.long	0x2155
	.long	0x118f8
	.uleb128 0x1e
	.long	.LASF427
	.byte	0x9
	.value	0x3bd
	.long	0x2155
	.long	0x11900
	.uleb128 0x1e
	.long	.LASF428
	.byte	0x9
	.value	0x3be
	.long	0x2155
	.long	0x11908
	.uleb128 0x1e
	.long	.LASF162
	.byte	0x9
	.value	0x3bf
	.long	0x2179
	.long	0x11910
	.uleb128 0x1e
	.long	.LASF169
	.byte	0x9
	.value	0x3c3
	.long	0x3f
	.long	0x11930
	.uleb128 0x1e
	.long	.LASF170
	.byte	0x9
	.value	0x3c4
	.long	0x3f
	.long	0x11934
	.uleb128 0x1e
	.long	.LASF171
	.byte	0x9
	.value	0x3c5
	.long	0x3f
	.long	0x11938
	.uleb128 0x1e
	.long	.LASF255
	.byte	0x9
	.value	0x3c7
	.long	0x3f
	.long	0x1193c
	.uleb128 0x1e
	.long	.LASF429
	.byte	0x9
	.value	0x3c9
	.long	0x3f
	.long	0x11940
	.uleb128 0x1e
	.long	.LASF430
	.byte	0x9
	.value	0x3ca
	.long	0x3f
	.long	0x11944
	.uleb128 0x1e
	.long	.LASF431
	.byte	0x9
	.value	0x3cc
	.long	0x3f
	.long	0x11948
	.uleb128 0x1e
	.long	.LASF432
	.byte	0x9
	.value	0x3cd
	.long	0x3f
	.long	0x1194c
	.uleb128 0x1e
	.long	.LASF433
	.byte	0x9
	.value	0x3ce
	.long	0x2189
	.long	0x11950
	.uleb128 0x1e
	.long	.LASF434
	.byte	0x9
	.value	0x3cf
	.long	0x3f
	.long	0x11ab8
	.uleb128 0x1e
	.long	.LASF435
	.byte	0x9
	.value	0x3d0
	.long	0x3f
	.long	0x11abc
	.uleb128 0x1e
	.long	.LASF436
	.byte	0x9
	.value	0x3d2
	.long	0x3f
	.long	0x11ac0
	.uleb128 0x1e
	.long	.LASF437
	.byte	0x9
	.value	0x3d3
	.long	0x3f
	.long	0x11ac4
	.uleb128 0x1e
	.long	.LASF438
	.byte	0x9
	.value	0x3d4
	.long	0x3f
	.long	0x11ac8
	.uleb128 0x1e
	.long	.LASF439
	.byte	0x9
	.value	0x3d6
	.long	0x3f
	.long	0x11acc
	.uleb128 0x1e
	.long	.LASF440
	.byte	0x9
	.value	0x3d8
	.long	0x3f
	.long	0x11ad0
	.uleb128 0x1e
	.long	.LASF334
	.byte	0x9
	.value	0x3dc
	.long	0x54
	.long	0x11ad4
	.uleb128 0x1e
	.long	.LASF441
	.byte	0x9
	.value	0x3e0
	.long	0x54
	.long	0x11ad8
	.uleb128 0x1e
	.long	.LASF442
	.byte	0x9
	.value	0x3e1
	.long	0x3f
	.long	0x11adc
	.uleb128 0x1e
	.long	.LASF443
	.byte	0x9
	.value	0x3e2
	.long	0x3f
	.long	0x11ae0
	.uleb128 0x1e
	.long	.LASF444
	.byte	0x9
	.value	0x3e3
	.long	0x54
	.long	0x11ae4
	.uleb128 0x1e
	.long	.LASF445
	.byte	0x9
	.value	0x3e4
	.long	0x219f
	.long	0x11ae8
	.uleb128 0x1e
	.long	.LASF446
	.byte	0x9
	.value	0x3e9
	.long	0x54
	.long	0x11aec
	.uleb128 0x1e
	.long	.LASF447
	.byte	0x9
	.value	0x3ea
	.long	0x3f
	.long	0x11af0
	.uleb128 0x1e
	.long	.LASF448
	.byte	0x9
	.value	0x3ec
	.long	0x86
	.long	0x11af4
	.uleb128 0x1e
	.long	.LASF449
	.byte	0x9
	.value	0x3f0
	.long	0x54
	.long	0x11afc
	.uleb128 0x1e
	.long	.LASF450
	.byte	0x9
	.value	0x3f1
	.long	0x3f
	.long	0x11b00
	.uleb128 0x1e
	.long	.LASF451
	.byte	0x9
	.value	0x3f2
	.long	0x3f
	.long	0x11b04
	.uleb128 0x1e
	.long	.LASF452
	.byte	0x9
	.value	0x3f3
	.long	0x3f
	.long	0x11b08
	.uleb128 0x1e
	.long	.LASF453
	.byte	0x9
	.value	0x3f4
	.long	0x3f
	.long	0x11b0c
	.uleb128 0x1e
	.long	.LASF454
	.byte	0x9
	.value	0x3f5
	.long	0x54
	.long	0x11b10
	.uleb128 0x1e
	.long	.LASF455
	.byte	0x9
	.value	0x3f7
	.long	0x54
	.long	0x11b14
	.uleb128 0x1e
	.long	.LASF456
	.byte	0x9
	.value	0x3f8
	.long	0x54
	.long	0x11b18
	.uleb128 0x1e
	.long	.LASF457
	.byte	0x9
	.value	0x3f9
	.long	0x54
	.long	0x11b1c
	.uleb128 0x1e
	.long	.LASF458
	.byte	0x9
	.value	0x3fa
	.long	0x54
	.long	0x11b20
	.uleb128 0x1e
	.long	.LASF459
	.byte	0x9
	.value	0x3fb
	.long	0x54
	.long	0x11b24
	.uleb128 0x1e
	.long	.LASF460
	.byte	0x9
	.value	0x3fc
	.long	0x54
	.long	0x11b28
	.uleb128 0x1e
	.long	.LASF461
	.byte	0x9
	.value	0x3ff
	.long	0x54
	.long	0x11b2c
	.uleb128 0x1e
	.long	.LASF462
	.byte	0x9
	.value	0x403
	.long	0x3f
	.long	0x11b30
	.uleb128 0x1e
	.long	.LASF463
	.byte	0x9
	.value	0x405
	.long	0x3f
	.long	0x11b34
	.uleb128 0x1e
	.long	.LASF464
	.byte	0x9
	.value	0x406
	.long	0x3f
	.long	0x11b38
	.uleb128 0x1e
	.long	.LASF465
	.byte	0x9
	.value	0x407
	.long	0x3f
	.long	0x11b3c
	.uleb128 0x1e
	.long	.LASF466
	.byte	0x9
	.value	0x409
	.long	0x21af
	.long	0x11b40
	.uleb128 0x1e
	.long	.LASF336
	.byte	0x9
	.value	0x40b
	.long	0x3f
	.long	0x11b48
	.uleb128 0x1e
	.long	.LASF467
	.byte	0x9
	.value	0x40f
	.long	0x3f
	.long	0x11b4c
	.uleb128 0x1e
	.long	.LASF468
	.byte	0x9
	.value	0x410
	.long	0x3f
	.long	0x11b50
	.uleb128 0x1e
	.long	.LASF469
	.byte	0x9
	.value	0x411
	.long	0x3f
	.long	0x11b54
	.uleb128 0x1e
	.long	.LASF470
	.byte	0x9
	.value	0x412
	.long	0x3f
	.long	0x11b58
	.uleb128 0x1e
	.long	.LASF471
	.byte	0x9
	.value	0x413
	.long	0xb1a
	.long	0x11b60
	.uleb128 0x1e
	.long	.LASF472
	.byte	0x9
	.value	0x414
	.long	0x3f
	.long	0x11b68
	.uleb128 0x1e
	.long	.LASF473
	.byte	0x9
	.value	0x415
	.long	0x3f
	.long	0x11b6c
	.uleb128 0x1e
	.long	.LASF474
	.byte	0x9
	.value	0x416
	.long	0x3f
	.long	0x11b70
	.uleb128 0x1e
	.long	.LASF475
	.byte	0x9
	.value	0x417
	.long	0x3f
	.long	0x11b74
	.uleb128 0x1e
	.long	.LASF476
	.byte	0x9
	.value	0x418
	.long	0x3f
	.long	0x11b78
	.uleb128 0x1e
	.long	.LASF477
	.byte	0x9
	.value	0x419
	.long	0x3f
	.long	0x11b7c
	.uleb128 0x1e
	.long	.LASF478
	.byte	0x9
	.value	0x41a
	.long	0x3f
	.long	0x11b80
	.uleb128 0x1e
	.long	.LASF479
	.byte	0x9
	.value	0x41b
	.long	0x21b5
	.long	0x11b88
	.uleb128 0x1e
	.long	.LASF480
	.byte	0x9
	.value	0x41c
	.long	0x3f
	.long	0x11b90
	.uleb128 0x1e
	.long	.LASF481
	.byte	0x9
	.value	0x41d
	.long	0x3f
	.long	0x11b94
	.uleb128 0x1e
	.long	.LASF482
	.byte	0x9
	.value	0x41e
	.long	0x3f
	.long	0x11b98
	.uleb128 0x1e
	.long	.LASF483
	.byte	0x9
	.value	0x41f
	.long	0x3f
	.long	0x11b9c
	.uleb128 0x1e
	.long	.LASF484
	.byte	0x9
	.value	0x420
	.long	0x3f
	.long	0x11ba0
	.uleb128 0x1e
	.long	.LASF485
	.byte	0x9
	.value	0x421
	.long	0x3f
	.long	0x11ba4
	.uleb128 0x1e
	.long	.LASF486
	.byte	0x9
	.value	0x422
	.long	0x3f
	.long	0x11ba8
	.uleb128 0x1e
	.long	.LASF487
	.byte	0x9
	.value	0x423
	.long	0x3f
	.long	0x11bac
	.uleb128 0x1e
	.long	.LASF488
	.byte	0x9
	.value	0x424
	.long	0x3f
	.long	0x11bb0
	.uleb128 0x1e
	.long	.LASF489
	.byte	0x9
	.value	0x425
	.long	0x3f
	.long	0x11bb4
	.uleb128 0x1e
	.long	.LASF490
	.byte	0x9
	.value	0x426
	.long	0x3f
	.long	0x11bb8
	.uleb128 0x1e
	.long	.LASF491
	.byte	0x9
	.value	0x428
	.long	0x3f
	.long	0x11bbc
	.uleb128 0x1e
	.long	.LASF492
	.byte	0x9
	.value	0x42a
	.long	0x3f
	.long	0x11bc0
	.uleb128 0x1e
	.long	.LASF493
	.byte	0x9
	.value	0x42b
	.long	0x3f
	.long	0x11bc4
	.uleb128 0x1e
	.long	.LASF494
	.byte	0x9
	.value	0x42c
	.long	0x3f
	.long	0x11bc8
	.uleb128 0x1e
	.long	.LASF332
	.byte	0x9
	.value	0x42e
	.long	0x3f
	.long	0x11bcc
	.uleb128 0x1e
	.long	.LASF495
	.byte	0x9
	.value	0x430
	.long	0x3f
	.long	0x11bd0
	.uleb128 0x1e
	.long	.LASF496
	.byte	0x9
	.value	0x431
	.long	0x3f
	.long	0x11bd4
	.uleb128 0x1e
	.long	.LASF497
	.byte	0x9
	.value	0x432
	.long	0x3f
	.long	0x11bd8
	.uleb128 0x1e
	.long	.LASF498
	.byte	0x9
	.value	0x433
	.long	0x3f
	.long	0x11bdc
	.uleb128 0x1e
	.long	.LASF499
	.byte	0x9
	.value	0x434
	.long	0x3f
	.long	0x11be0
	.uleb128 0x1e
	.long	.LASF500
	.byte	0x9
	.value	0x435
	.long	0x3f
	.long	0x11be4
	.uleb128 0x1e
	.long	.LASF501
	.byte	0x9
	.value	0x436
	.long	0x54
	.long	0x11be8
	.uleb128 0x1e
	.long	.LASF502
	.byte	0x9
	.value	0x437
	.long	0x3f
	.long	0x11bec
	.uleb128 0x1e
	.long	.LASF503
	.byte	0x9
	.value	0x438
	.long	0x3f
	.long	0x11bf0
	.uleb128 0x1e
	.long	.LASF504
	.byte	0x9
	.value	0x43a
	.long	0x3f
	.long	0x11bf4
	.uleb128 0x1e
	.long	.LASF505
	.byte	0x9
	.value	0x43b
	.long	0x3f
	.long	0x11bf8
	.uleb128 0x1e
	.long	.LASF237
	.byte	0x9
	.value	0x43c
	.long	0x3f
	.long	0x11bfc
	.uleb128 0x1e
	.long	.LASF506
	.byte	0x9
	.value	0x43d
	.long	0x3f
	.long	0x11c00
	.uleb128 0x1e
	.long	.LASF507
	.byte	0x9
	.value	0x43e
	.long	0x3f
	.long	0x11c04
	.uleb128 0x1e
	.long	.LASF508
	.byte	0x9
	.value	0x43f
	.long	0x3f
	.long	0x11c08
	.uleb128 0x1e
	.long	.LASF509
	.byte	0x9
	.value	0x441
	.long	0x86
	.long	0x11c0c
	.uleb128 0x1e
	.long	.LASF357
	.byte	0x9
	.value	0x444
	.long	0x3f
	.long	0x11c14
	.uleb128 0x1e
	.long	.LASF510
	.byte	0x9
	.value	0x446
	.long	0x3f
	.long	0x11c18
	.uleb128 0x1e
	.long	.LASF511
	.byte	0x9
	.value	0x447
	.long	0x3f
	.long	0x11c1c
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xe2e
	.uleb128 0x5
	.long	0x4d
	.long	0x2096
	.uleb128 0x6
	.long	0x96
	.byte	0x8
	.uleb128 0x6
	.long	0x96
	.byte	0xf
	.uleb128 0x6
	.long	0x96
	.byte	0xf
	.byte	0
	.uleb128 0x5
	.long	0x4d
	.long	0x20b2
	.uleb128 0x6
	.long	0x96
	.byte	0x4
	.uleb128 0x6
	.long	0x96
	.byte	0xf
	.uleb128 0x6
	.long	0x96
	.byte	0xf
	.byte	0
	.uleb128 0x5
	.long	0x4d
	.long	0x20ce
	.uleb128 0x6
	.long	0x96
	.byte	0x8
	.uleb128 0x6
	.long	0x96
	.byte	0x7
	.uleb128 0x6
	.long	0x96
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.long	0x4d
	.long	0x20f0
	.uleb128 0x6
	.long	0x96
	.byte	0x1
	.uleb128 0x6
	.long	0x96
	.byte	0x3
	.uleb128 0x6
	.long	0x96
	.byte	0xf
	.uleb128 0x6
	.long	0x96
	.byte	0xf
	.byte	0
	.uleb128 0x5
	.long	0x4d
	.long	0x2106
	.uleb128 0x6
	.long	0x96
	.byte	0xf
	.uleb128 0x6
	.long	0x96
	.byte	0xf
	.byte	0
	.uleb128 0x5
	.long	0x3f
	.long	0x211c
	.uleb128 0x6
	.long	0x96
	.byte	0xf
	.uleb128 0x6
	.long	0x96
	.byte	0xf
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x2074
	.uleb128 0x8
	.byte	0x8
	.long	0xe22
	.uleb128 0x8
	.byte	0x8
	.long	0xb21
	.uleb128 0x5
	.long	0x84c
	.long	0x213f
	.uleb128 0x1c
	.long	0x96
	.value	0x4af
	.byte	0
	.uleb128 0x5
	.long	0x3f
	.long	0x2155
	.uleb128 0x6
	.long	0x96
	.byte	0x3
	.uleb128 0x6
	.long	0x96
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x215b
	.uleb128 0x8
	.byte	0x8
	.long	0x2161
	.uleb128 0x8
	.byte	0x8
	.long	0x2167
	.uleb128 0x8
	.byte	0x8
	.long	0x216d
	.uleb128 0x8
	.byte	0x8
	.long	0x2173
	.uleb128 0x8
	.byte	0x8
	.long	0x62
	.uleb128 0x5
	.long	0x62
	.long	0x2189
	.uleb128 0x6
	.long	0x96
	.byte	0xe
	.byte	0
	.uleb128 0x5
	.long	0x3f
	.long	0x219f
	.uleb128 0x6
	.long	0x96
	.byte	0x5
	.uleb128 0x6
	.long	0x96
	.byte	0xe
	.byte	0
	.uleb128 0x5
	.long	0x3f
	.long	0x21af
	.uleb128 0x6
	.long	0x96
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x776
	.uleb128 0x8
	.byte	0x8
	.long	0xb1a
	.uleb128 0x13
	.long	.LASF512
	.byte	0x9
	.value	0x449
	.long	0x168f
	.uleb128 0xf
	.byte	0x38
	.byte	0xa
	.byte	0x16
	.long	0x2224
	.uleb128 0xa
	.long	.LASF513
	.byte	0xa
	.byte	0x17
	.long	0x9f
	.byte	0
	.uleb128 0xa
	.long	.LASF514
	.byte	0xa
	.byte	0x18
	.long	0x9d
	.byte	0x8
	.uleb128 0xa
	.long	.LASF515
	.byte	0xa
	.byte	0x19
	.long	0x3f
	.byte	0x10
	.uleb128 0xa
	.long	.LASF516
	.byte	0xa
	.byte	0x1a
	.long	0xb1a
	.byte	0x18
	.uleb128 0xa
	.long	.LASF517
	.byte	0xa
	.byte	0x1b
	.long	0x3f
	.byte	0x20
	.uleb128 0xa
	.long	.LASF518
	.byte	0xa
	.byte	0x1c
	.long	0xb1a
	.byte	0x28
	.uleb128 0xa
	.long	.LASF519
	.byte	0xa
	.byte	0x1d
	.long	0xb1a
	.byte	0x30
	.byte	0
	.uleb128 0x2
	.long	.LASF520
	.byte	0xa
	.byte	0x1e
	.long	0x21c7
	.uleb128 0x20
	.long	.LASF556
	.byte	0x1
	.byte	0x66
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x21
	.long	.LASF574
	.byte	0x1
	.byte	0x8d
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x22f6
	.uleb128 0x22
	.string	"ac"
	.byte	0x1
	.byte	0x8d
	.long	0x3f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x22
	.string	"av"
	.byte	0x1
	.byte	0x8d
	.long	0x22f6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x23
	.long	.LASF521
	.byte	0x1
	.byte	0x8f
	.long	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.long	.LASF522
	.byte	0x1
	.byte	0x90
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x23
	.long	.LASF523
	.byte	0x1
	.byte	0x90
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x23
	.long	.LASF524
	.byte	0x1
	.byte	0x90
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x23
	.long	.LASF525
	.byte	0x1
	.byte	0x91
	.long	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x24
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x23
	.long	.LASF526
	.byte	0x1
	.byte	0xe2
	.long	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.long	.LASF527
	.byte	0x1
	.byte	0xe3
	.long	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x9f
	.uleb128 0x25
	.long	.LASF545
	.byte	0x1
	.value	0x10f
	.long	0x9f
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x2359
	.uleb128 0x26
	.long	.LASF528
	.byte	0x1
	.value	0x10f
	.long	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.long	.LASF529
	.byte	0x1
	.value	0x111
	.long	0x69
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x28
	.string	"f"
	.byte	0x1
	.value	0x112
	.long	0x2359
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.string	"buf"
	.byte	0x1
	.value	0x113
	.long	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xcb
	.uleb128 0x29
	.long	.LASF539
	.byte	0x1
	.value	0x148
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x2446
	.uleb128 0x2a
	.string	"buf"
	.byte	0x1
	.value	0x148
	.long	0x9f
	.uleb128 0x4
	.byte	0x91
	.sleb128 -80072
	.uleb128 0x26
	.long	.LASF530
	.byte	0x1
	.value	0x148
	.long	0x3f
	.uleb128 0x4
	.byte	0x91
	.sleb128 -80076
	.uleb128 0x27
	.long	.LASF531
	.byte	0x1
	.value	0x14b
	.long	0x2446
	.uleb128 0x4
	.byte	0x91
	.sleb128 -80016
	.uleb128 0x27
	.long	.LASF532
	.byte	0x1
	.value	0x14c
	.long	0x3f
	.uleb128 0x4
	.byte	0x91
	.sleb128 -80044
	.uleb128 0x27
	.long	.LASF533
	.byte	0x1
	.value	0x14d
	.long	0x3f
	.uleb128 0x4
	.byte	0x91
	.sleb128 -80060
	.uleb128 0x27
	.long	.LASF534
	.byte	0x1
	.value	0x14e
	.long	0x3f
	.uleb128 0x4
	.byte	0x91
	.sleb128 -80056
	.uleb128 0x27
	.long	.LASF535
	.byte	0x1
	.value	0x14e
	.long	0x3f
	.uleb128 0x4
	.byte	0x91
	.sleb128 -80052
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.value	0x14f
	.long	0x9f
	.uleb128 0x4
	.byte	0x91
	.sleb128 -80032
	.uleb128 0x27
	.long	.LASF536
	.byte	0x1
	.value	0x150
	.long	0x9f
	.uleb128 0x4
	.byte	0x91
	.sleb128 -80024
	.uleb128 0x27
	.long	.LASF537
	.byte	0x1
	.value	0x151
	.long	0x3f
	.uleb128 0x4
	.byte	0x91
	.sleb128 -80064
	.uleb128 0x27
	.long	.LASF538
	.byte	0x1
	.value	0x152
	.long	0xb1a
	.uleb128 0x4
	.byte	0x91
	.sleb128 -80040
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x153
	.long	0x3f
	.uleb128 0x4
	.byte	0x91
	.sleb128 -80048
	.byte	0
	.uleb128 0x5
	.long	0x9f
	.long	0x2457
	.uleb128 0x1c
	.long	0x96
	.value	0x270f
	.byte	0
	.uleb128 0x2b
	.long	.LASF541
	.byte	0x1
	.value	0x1c7
	.long	0x3f
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x2494
	.uleb128 0x2a
	.string	"s"
	.byte	0x1
	.value	0x1c7
	.long	0x9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x1c9
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2c
	.long	.LASF540
	.byte	0x1
	.value	0x1db
	.long	0x3f
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x24c4
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x1dd
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2b
	.long	.LASF542
	.byte	0x1
	.value	0x1f2
	.long	0x3f
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x2503
	.uleb128 0x26
	.long	.LASF543
	.byte	0x1
	.value	0x1f2
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x1f4
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2d
	.long	.LASF544
	.byte	0x1
	.value	0x23c
	.long	0x3f
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x2533
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x23e
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2e
	.long	.LASF546
	.byte	0x1
	.value	0x257
	.long	0x54
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x2583
	.uleb128 0x26
	.long	.LASF547
	.byte	0x1
	.value	0x257
	.long	0x54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x27
	.long	.LASF548
	.byte	0x1
	.value	0x259
	.long	0x54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.long	.LASF549
	.byte	0x1
	.value	0x25a
	.long	0x54
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2f
	.long	.LASF575
	.byte	0x1
	.value	0x26b
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x2651
	.uleb128 0x27
	.long	.LASF543
	.byte	0x1
	.value	0x26d
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x27
	.long	.LASF550
	.byte	0x1
	.value	0x270
	.long	0x2359
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x271
	.long	0x3f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x27
	.long	.LASF551
	.byte	0x1
	.value	0x272
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x27
	.long	.LASF552
	.byte	0x1
	.value	0x273
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x27
	.long	.LASF553
	.byte	0x1
	.value	0x273
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x27
	.long	.LASF554
	.byte	0x1
	.value	0x273
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x30
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.long	0x262e
	.uleb128 0x27
	.long	.LASF555
	.byte	0x1
	.value	0x2ac
	.long	0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0x24
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x28
	.string	"tmp"
	.byte	0x1
	.value	0x35f
	.long	0x3f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	.LASF557
	.byte	0x1
	.value	0x40e
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x32
	.long	.LASF558
	.byte	0x1
	.value	0x41a
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x33
	.long	.LASF559
	.byte	0x1
	.value	0x474
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x34
	.long	.LASF560
	.byte	0x5
	.byte	0xaa
	.long	0x295
	.uleb128 0x35
	.long	.LASF561
	.byte	0x9
	.value	0x1f2
	.long	0x54
	.uleb128 0x35
	.long	.LASF562
	.byte	0x9
	.value	0x1f3
	.long	0x54
	.uleb128 0x5
	.long	0xa5
	.long	0x26d3
	.uleb128 0x1c
	.long	0x96
	.value	0x12b
	.byte	0
	.uleb128 0x35
	.long	.LASF563
	.byte	0x9
	.value	0x222
	.long	0x26c2
	.uleb128 0x35
	.long	.LASF564
	.byte	0x9
	.value	0x4b7
	.long	0x26eb
	.uleb128 0x8
	.byte	0x8
	.long	0x1683
	.uleb128 0x36
	.string	"img"
	.byte	0x9
	.value	0x4b8
	.long	0x26fd
	.uleb128 0x8
	.byte	0x8
	.long	0x21bb
	.uleb128 0x35
	.long	.LASF565
	.byte	0x9
	.value	0x4c1
	.long	0x2359
	.uleb128 0x35
	.long	.LASF566
	.byte	0x9
	.value	0x4c2
	.long	0x3f
	.uleb128 0x35
	.long	.LASF567
	.byte	0x9
	.value	0x4c3
	.long	0x3f
	.uleb128 0x35
	.long	.LASF568
	.byte	0x9
	.value	0x5a6
	.long	0x3f
	.uleb128 0x37
	.long	.LASF569
	.byte	0x1
	.byte	0x4f
	.long	0x1683
	.uleb128 0x9
	.byte	0x3
	.quad	configinput
	.uleb128 0x5
	.long	0x2224
	.long	0x2758
	.uleb128 0x6
	.long	0x96
	.byte	0x96
	.byte	0
	.uleb128 0x38
	.string	"Map"
	.byte	0xa
	.byte	0x2b
	.long	0x2748
	.uleb128 0x9
	.byte	0x3
	.quad	Map
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x2c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x2d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
.LASF498:
	.string	"bitdepth_luma_qp_scale"
.LASF345:
	.string	"channel_type"
.LASF364:
	.string	"nb_references"
.LASF57:
	.string	"FRAME_CODING"
.LASF499:
	.string	"bitdepth_chroma_qp_scale"
.LASF346:
	.string	"ScalingMatrixPresentFlag"
.LASF464:
	.string	"no_output_of_prior_pics_flag"
.LASF63:
	.string	"BITS_INTER_MB"
.LASF430:
	.string	"num_ref_idx_l1_active"
.LASF446:
	.string	"pic_order_cnt_lsb"
.LASF7:
	.string	"size_t"
.LASF488:
	.string	"write_macroblock"
.LASF10:
	.string	"sizetype"
.LASF491:
	.string	"DeblockCall"
.LASF68:
	.string	"MAX_BITCOUNTER_MB"
.LASF372:
	.string	"width_cr"
.LASF459:
	.string	"PicSizeInMbs"
.LASF408:
	.string	"MB_SyntaxElements"
.LASF403:
	.string	"cofAC"
.LASF506:
	.string	"lossless_qpprime_flag"
.LASF275:
	.string	"PocMemoryManagement"
.LASF418:
	.string	"imgtr_next_P_fld"
.LASF227:
	.string	"search_range"
.LASF433:
	.string	"mvscale"
.LASF54:
	.string	"int64"
.LASF27:
	.string	"_IO_save_end"
.LASF214:
	.string	"slices"
.LASF117:
	.string	"long_term_pic_num"
.LASF384:
	.string	"ipredmode8x8"
.LASF388:
	.string	"mb_y"
.LASF466:
	.string	"dec_ref_pic_marking_buffer"
.LASF244:
	.string	"infile_header"
.LASF295:
	.string	"full_search"
.LASF119:
	.string	"max_long_term_frame_idx_plus1"
.LASF507:
	.string	"mb_cr_size_x"
.LASF340:
	.string	"DisplayEncParams"
.LASF20:
	.string	"_IO_write_base"
.LASF432:
	.string	"top_field"
.LASF87:
	.string	"state"
.LASF36:
	.string	"_lock"
.LASF290:
	.string	"Intra16x16ParDisable"
.LASF101:
	.string	"bcbp_contexts"
.LASF121:
	.string	"syntaxelement"
.LASF253:
	.string	"successive_Bframe"
.LASF556:
	.string	"JMHelpExit"
.LASF263:
	.string	"WeightedPrediction"
.LASF122:
	.string	"type"
.LASF423:
	.string	"fw_mb_mode"
.LASF460:
	.string	"FrameSizeInMbs"
.LASF25:
	.string	"_IO_save_base"
.LASF169:
	.string	"LFDisableIdc"
.LASF256:
	.string	"directInferenceFlag"
.LASF183:
	.string	"bits_to_go_skip"
.LASF425:
	.string	"pred_mv"
.LASF335:
	.string	"context_init_method"
.LASF337:
	.string	"AllowTransform8x8"
.LASF504:
	.string	"num_blk8x8_uv"
.LASF242:
	.string	"slice_argument"
.LASF200:
	.string	"rmpni_buffer"
.LASF29:
	.string	"_chain"
.LASF283:
	.string	"InterSearch8x4"
.LASF150:
	.string	"mb_field"
.LASF282:
	.string	"InterSearch8x8"
.LASF316:
	.string	"NumFramesInELSubSeq"
.LASF33:
	.string	"_cur_column"
.LASF383:
	.string	"ipredmode"
.LASF269:
	.string	"RDBSliceWeightOnly"
.LASF234:
	.string	"GenerateMultiplePPS"
.LASF142:
	.string	"b8mode"
.LASF355:
	.string	"cr_qp_index_offset"
.LASF209:
	.string	"slice_too_big"
.LASF400:
	.string	"mprr_2"
.LASF401:
	.string	"mprr_3"
.LASF176:
	.string	"bits_to_go"
.LASF114:
	.string	"DecRefPicMarking_s"
.LASF120:
	.string	"DecRefPicMarking_t"
.LASF489:
	.string	"bot_MB"
.LASF398:
	.string	"opix_c_y"
.LASF487:
	.string	"BasicUnit"
.LASF228:
	.string	"num_ref_frames"
.LASF83:
	.string	"EcodestrmS"
.LASF410:
	.string	"intra_block"
.LASF67:
	.string	"BITS_DELTA_QUANT_MB"
.LASF6:
	.string	"long int"
.LASF510:
	.string	"auto_crop_right"
.LASF543:
	.string	"bitdepth_qp_scale"
.LASF402:
	.string	"mprr_c"
.LASF159:
	.string	"all_blk_8x8"
.LASF304:
	.string	"nobskip"
.LASF462:
	.string	"nal_reference_idc"
.LASF452:
	.string	"framepoc"
.LASF468:
	.string	"NumberofTextureBits"
.LASF46:
	.string	"_IO_marker"
.LASF561:
	.string	"log2_max_frame_num_minus4"
.LASF265:
	.string	"UseWeightedReferenceME"
.LASF288:
	.string	"Intra4x4DiagDisable"
.LASF527:
	.string	"destin"
.LASF318:
	.string	"RandomIntraMBRefresh"
.LASF490:
	.string	"write_macroblock_frame"
.LASF180:
	.string	"stored_byte_buf"
.LASF513:
	.string	"TokenName"
.LASF60:
	.string	"BITS_HEADER"
.LASF362:
	.string	"InputParameters"
.LASF319:
	.string	"LFSendParameters"
.LASF456:
	.string	"PicHeightInMapUnits"
.LASF476:
	.string	"NumberofGOP"
.LASF541:
	.string	"ParameterNameToMapIndex"
.LASF496:
	.string	"bitdepth_luma"
.LASF64:
	.string	"BITS_CBP_MB"
.LASF518:
	.string	"min_limit"
.LASF397:
	.string	"opix_c_x"
.LASF73:
	.string	"Ebuffer"
.LASF554:
	.string	"mapunit_height"
.LASF245:
	.string	"infile"
.LASF72:
	.string	"Erange"
.LASF4:
	.string	"signed char"
.LASF370:
	.string	"framerate"
.LASF195:
	.string	"max_part_nr"
.LASF86:
	.string	"EncodingEnvironmentPtr"
.LASF45:
	.string	"_IO_FILE"
.LASF441:
	.string	"delta_pic_order_always_zero_flag"
.LASF451:
	.string	"bottompoc"
.LASF277:
	.string	"of_mode"
.LASF525:
	.string	"filename"
.LASF149:
	.string	"IntraChromaPredModeFlag"
.LASF126:
	.string	"context"
.LASF204:
	.string	"long_term_pic_idx_l0"
.LASF208:
	.string	"long_term_pic_idx_l1"
.LASF201:
	.string	"ref_pic_list_reordering_flag_l0"
.LASF205:
	.string	"ref_pic_list_reordering_flag_l1"
.LASF478:
	.string	"NumberofPPicture"
.LASF473:
	.string	"NumberofMBHeaderBits"
.LASF404:
	.string	"cofDC"
.LASF1:
	.string	"unsigned char"
.LASF140:
	.string	"intra_pred_modes8x8"
.LASF546:
	.string	"CeilLog2"
.LASF59:
	.string	"ADAPTIVE_CODING"
.LASF492:
	.string	"last_pic_bottom_field"
.LASF257:
	.string	"BiPredMotionEstimation"
.LASF427:
	.string	"bipred_mv1"
.LASF428:
	.string	"bipred_mv2"
.LASF103:
	.string	"last_contexts"
.LASF148:
	.string	"c_ipred_mode"
.LASF329:
	.string	"run_length_minus1"
.LASF503:
	.string	"max_imgpel_value_uv"
.LASF238:
	.string	"intra_upd"
.LASF202:
	.string	"remapping_of_pic_nums_idc_l0"
.LASF206:
	.string	"remapping_of_pic_nums_idc_l1"
.LASF203:
	.string	"abs_diff_pic_num_minus1_l0"
.LASF207:
	.string	"abs_diff_pic_num_minus1_l1"
.LASF322:
	.string	"SPPercentageThreshold"
.LASF177:
	.string	"byte_buf"
.LASF221:
	.string	"ProfileIDC"
.LASF162:
	.string	"bi_pred_me"
.LASF133:
	.string	"delta_qp"
.LASF559:
	.string	"LevelCheck"
.LASF294:
	.string	"chroma_qp_index_offset"
.LASF369:
	.string	"max_num_references"
.LASF11:
	.string	"char"
.LASF382:
	.string	"block_c_x"
.LASF96:
	.string	"transform_size_contexts"
.LASF465:
	.string	"long_term_reference_flag"
.LASF232:
	.string	"Log2MaxFrameNum"
.LASF378:
	.string	"is_intra_block"
.LASF519:
	.string	"max_limit"
.LASF194:
	.string	"start_mb_nr"
.LASF566:
	.string	"p_in"
.LASF565:
	.string	"p_trace"
.LASF341:
	.string	"RCEnable"
.LASF267:
	.string	"RDPictureIntra"
.LASF231:
	.string	"B_List1_refs"
.LASF573:
	.string	"_IO_lock_t"
.LASF254:
	.string	"qpBRSOffset"
.LASF320:
	.string	"SparePictureOption"
.LASF61:
	.string	"BITS_TOTAL_MB"
.LASF297:
	.string	"qpN2"
.LASF526:
	.string	"source"
.LASF250:
	.string	"intra_period"
.LASF136:
	.string	"mb_available_up"
.LASF448:
	.string	"delta_pic_order_cnt"
.LASF285:
	.string	"InterSearch4x4"
.LASF284:
	.string	"InterSearch4x8"
.LASF572:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/464.h264ref/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF17:
	.string	"_IO_read_ptr"
.LASF467:
	.string	"NumberofHeaderBits"
.LASF300:
	.string	"qp02"
.LASF125:
	.string	"bitpattern"
.LASF548:
	.string	"uiTmp"
.LASF95:
	.string	"mb_aff_contexts"
.LASF160:
	.string	"luma_transform_size_8x8_flag"
.LASF347:
	.string	"ScalingListPresentFlag"
.LASF390:
	.string	"block_y"
.LASF270:
	.string	"SkipIntraInInterSlices"
.LASF49:
	.string	"_pos"
.LASF538:
	.string	"DoubleContent"
.LASF405:
	.string	"currentPicture"
.LASF91:
	.string	"b8_type_contexts"
.LASF327:
	.string	"bottom_right"
.LASF264:
	.string	"WeightedBiprediction"
.LASF421:
	.string	"p_interval"
.LASF220:
	.string	"Picture"
.LASF419:
	.string	"imgtr_last_P_fld"
.LASF547:
	.string	"uiVal"
.LASF564:
	.string	"input"
.LASF307:
	.string	"LeakyBucketParamFile"
.LASF28:
	.string	"_markers"
.LASF223:
	.string	"no_frames"
.LASF165:
	.string	"prev_delta_qp"
.LASF539:
	.string	"ParseContent"
.LASF235:
	.string	"img_width"
.LASF274:
	.string	"PyramidRefReorder"
.LASF379:
	.string	"is_v_block"
.LASF241:
	.string	"slice_mode"
.LASF279:
	.string	"InterSearch16x16"
.LASF381:
	.string	"mb_y_intra"
.LASF90:
	.string	"mb_type_contexts"
.LASF326:
	.string	"top_left"
.LASF574:
	.string	"Configure"
.LASF184:
	.string	"streamBuffer"
.LASF81:
	.string	"Ebits_to_goS"
.LASF280:
	.string	"InterSearch16x8"
.LASF479:
	.string	"MADofMB"
.LASF516:
	.string	"Default"
.LASF429:
	.string	"num_ref_idx_l0_active"
.LASF336:
	.string	"model_number"
.LASF259:
	.string	"BiPredMESearchRange"
.LASF130:
	.string	"macroblock"
.LASF450:
	.string	"toppoc"
.LASF440:
	.string	"MbaffFrameFlag"
.LASF71:
	.string	"Elow"
.LASF37:
	.string	"_offset"
.LASF344:
	.string	"basicunit"
.LASF308:
	.string	"PicInterlace"
.LASF193:
	.string	"picture_type"
.LASF509:
	.string	"chroma_qp_offset"
.LASF273:
	.string	"ExplicitPyramidFormat"
.LASF458:
	.string	"PicHeightInMbs"
.LASF356:
	.string	"lossless_qpprime_y_zero_flag"
.LASF249:
	.string	"QmatrixFile"
.LASF537:
	.string	"IntContent"
.LASF534:
	.string	"InString"
.LASF266:
	.string	"RDPictureDecision"
.LASF85:
	.string	"EncodingEnvironment"
.LASF190:
	.string	"writeSyntaxElement"
.LASF222:
	.string	"LevelIDC"
.LASF0:
	.string	"long unsigned int"
.LASF99:
	.string	"cipr_contexts"
.LASF84:
	.string	"Ecodestrm_lenS"
.LASF342:
	.string	"bit_rate"
.LASF196:
	.string	"num_mb"
.LASF31:
	.string	"_flags2"
.LASF233:
	.string	"ResendPPS"
.LASF517:
	.string	"param_limits"
.LASF19:
	.string	"_IO_read_base"
.LASF415:
	.string	"pstruct_next_P"
.LASF146:
	.string	"lf_alpha_c0_offset"
.LASF511:
	.string	"auto_crop_bottom"
.LASF248:
	.string	"TraceFile"
.LASF44:
	.string	"_unused2"
.LASF550:
	.string	"sgfile"
.LASF243:
	.string	"UseConstrainedIntraPred"
.LASF536:
	.string	"bufend"
.LASF480:
	.string	"BasicUnitQP"
.LASF472:
	.string	"NumberofMBTextureBits"
.LASF144:
	.string	"cbp_bits"
.LASF32:
	.string	"_old_offset"
.LASF393:
	.string	"pix_c_x"
.LASF394:
	.string	"pix_c_y"
.LASF225:
	.string	"hadamard"
.LASF422:
	.string	"b_frame_to_code"
.LASF215:
	.string	"bits_per_picture"
.LASF380:
	.string	"mb_y_upd"
.LASF361:
	.string	"OffsetMatrixPresentFlag"
.LASF314:
	.string	"NoOfDecoders"
.LASF110:
	.string	"RMPNI"
.LASF170:
	.string	"LFAlphaC0Offset"
.LASF147:
	.string	"lf_beta_offset"
.LASF116:
	.string	"difference_of_pic_nums_minus1"
.LASF317:
	.string	"NumFrameIn2ndIGOP"
.LASF70:
	.string	"CABAC"
.LASF449:
	.string	"field_picture"
.LASF251:
	.string	"idr_enable"
.LASF399:
	.string	"mprr"
.LASF252:
	.string	"start_frame"
.LASF97:
	.string	"MotionInfoContexts"
.LASF562:
	.string	"log2_max_pic_order_cnt_lsb_minus4"
.LASF12:
	.string	"long long int"
.LASF420:
	.string	"b_interval"
.LASF74:
	.string	"Ebits_to_go"
.LASF412:
	.string	"fld_flag"
.LASF414:
	.string	"direct_intraP_ref"
.LASF371:
	.string	"width"
.LASF138:
	.string	"mb_type"
.LASF179:
	.string	"stored_bits_to_go"
.LASF508:
	.string	"mb_cr_size_y"
.LASF445:
	.string	"offset_for_ref_frame"
.LASF132:
	.string	"slice_nr"
.LASF217:
	.string	"distortion_u"
.LASF218:
	.string	"distortion_v"
.LASF216:
	.string	"distortion_y"
.LASF182:
	.string	"byte_pos_skip"
.LASF171:
	.string	"LFBetaOffset"
.LASF153:
	.string	"mbAddrC"
.LASF173:
	.string	"double"
.LASF22:
	.string	"_IO_write_end"
.LASF374:
	.string	"height_cr"
.LASF321:
	.string	"SPDetectionThreshold"
.LASF178:
	.string	"stored_byte_pos"
.LASF357:
	.string	"residue_transform_flag"
.LASF417:
	.string	"imgtr_last_P_frm"
.LASF104:
	.string	"one_contexts"
.LASF309:
	.string	"MbInterlace"
.LASF134:
	.string	"qpsp"
.LASF219:
	.string	"float"
.LASF339:
	.string	"ReportFrameStats"
.LASF272:
	.string	"PyramidCoding"
.LASF88:
	.string	"count"
.LASF166:
	.string	"prev_cbp"
.LASF276:
	.string	"symbol_mode"
.LASF89:
	.string	"BiContextType"
.LASF23:
	.string	"_IO_buf_base"
.LASF413:
	.string	"rd_pass"
.LASF528:
	.string	"Filename"
.LASF409:
	.string	"quad"
.LASF529:
	.string	"FileSize"
.LASF3:
	.string	"unsigned int"
.LASF105:
	.string	"abs_contexts"
.LASF75:
	.string	"Ebits_to_follow"
.LASF185:
	.string	"write_flag"
.LASF366:
	.string	"total_number_mb"
.LASF247:
	.string	"ReconFile"
.LASF77:
	.string	"Ecodestrm_len"
.LASF199:
	.string	"tex_ctx"
.LASF261:
	.string	"sp_periodicity"
.LASF514:
	.string	"Place"
.LASF38:
	.string	"__pad1"
.LASF39:
	.string	"__pad2"
.LASF40:
	.string	"__pad3"
.LASF41:
	.string	"__pad4"
.LASF42:
	.string	"__pad5"
.LASF137:
	.string	"mb_available_left"
.LASF109:
	.string	"RMPNIbuffer_s"
.LASF113:
	.string	"RMPNIbuffer_t"
.LASF48:
	.string	"_sbuf"
.LASF332:
	.string	"slice_group_change_cycle"
.LASF359:
	.string	"LambdaWeight"
.LASF108:
	.string	"TextureInfoContexts"
.LASF545:
	.string	"GetConfigFileContent"
.LASF365:
	.string	"current_mb_nr"
.LASF305:
	.string	"NumberLeakyBuckets"
.LASF436:
	.string	"layer"
.LASF143:
	.string	"b8pdir"
.LASF212:
	.string	"no_slices"
.LASF443:
	.string	"offset_for_top_to_bottom_field"
.LASF16:
	.string	"_flags"
.LASF515:
	.string	"Type"
.LASF292:
	.string	"ChromaIntraDisable"
.LASF416:
	.string	"imgtr_next_P_frm"
.LASF482:
	.string	"FieldControl"
.LASF474:
	.string	"NumberofCodedBFrame"
.LASF435:
	.string	"i16offset"
.LASF291:
	.string	"Intra16x16PlaneDisable"
.LASF262:
	.string	"qpsp_pred"
.LASF43:
	.string	"_mode"
.LASF334:
	.string	"pic_order_cnt_type"
.LASF391:
	.string	"pix_x"
.LASF392:
	.string	"pix_y"
.LASF568:
	.string	"FirstFrameIn2ndIGOP"
.LASF570:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF512:
	.string	"ImageParameters"
.LASF542:
	.string	"TestEncoderParams"
.LASF189:
	.string	"ee_cabac"
.LASF51:
	.string	"FALSE"
.LASF167:
	.string	"predict_qp"
.LASF524:
	.string	"NumberParams"
.LASF535:
	.string	"InItem"
.LASF58:
	.string	"FIELD_CODING"
.LASF226:
	.string	"hadamardqpel"
.LASF431:
	.string	"field_mode"
.LASF287:
	.string	"Intra4x4ParDisable"
.LASF389:
	.string	"block_x"
.LASF306:
	.string	"LeakyBucketRateFile"
.LASF236:
	.string	"img_height"
.LASF240:
	.string	"part_size"
.LASF278:
	.string	"partition_mode"
.LASF493:
	.string	"last_has_mmco_5"
.LASF107:
	.string	"fld_last_contexts"
.LASF442:
	.string	"offset_for_non_ref_pic"
.LASF15:
	.string	"FILE"
.LASF172:
	.string	"skip_flag"
.LASF454:
	.string	"frame_num"
.LASF102:
	.string	"map_contexts"
.LASF323:
	.string	"SliceGroupConfigFileName"
.LASF553:
	.string	"mb_height"
.LASF115:
	.string	"memory_management_control_operation"
.LASF310:
	.string	"IntraBottom"
.LASF186:
	.string	"Bitstream"
.LASF360:
	.string	"QOffsetMatrixFile"
.LASF230:
	.string	"B_List0_refs"
.LASF438:
	.string	"NoResidueDirect"
.LASF486:
	.string	"NumberofCodedMacroBlocks"
.LASF192:
	.string	"picture_id"
.LASF552:
	.string	"mb_width"
.LASF411:
	.string	"fld_type"
.LASF55:
	.string	"PAR_OF_ANNEXB"
.LASF475:
	.string	"NumberofCodedPFrame"
.LASF14:
	.string	"long long unsigned int"
.LASF62:
	.string	"BITS_MB_MODE"
.LASF118:
	.string	"long_term_frame_idx"
.LASF258:
	.string	"BiPredMERefinements"
.LASF549:
	.string	"uiRet"
.LASF531:
	.string	"items"
.LASF520:
	.string	"Mapping"
.LASF139:
	.string	"intra_pred_modes"
.LASF8:
	.string	"__off_t"
.LASF426:
	.string	"all_mv"
.LASF299:
	.string	"qp2start"
.LASF373:
	.string	"height"
.LASF368:
	.string	"structure"
.LASF210:
	.string	"field_ctx"
.LASF191:
	.string	"DataPartition"
.LASF407:
	.string	"mb_data"
.LASF343:
	.string	"SeinitialQP"
.LASF470:
	.string	"NumberofBasicUnitTextureBits"
.LASF567:
	.string	"p_dec"
.LASF444:
	.string	"num_ref_frames_in_pic_order_cnt_cycle"
.LASF211:
	.string	"Slice"
.LASF187:
	.string	"datapartition"
.LASF82:
	.string	"Ebits_to_followS"
.LASF523:
	.string	"ContentLen"
.LASF375:
	.string	"height_cr_frame"
.LASF532:
	.string	"MapIdx"
.LASF484:
	.string	"Frame_Total_Number_MB"
.LASF123:
	.string	"value1"
.LASF124:
	.string	"value2"
.LASF353:
	.string	"rgb_input_flag"
.LASF188:
	.string	"bitstream"
.LASF229:
	.string	"P_List0_refs"
.LASF315:
	.string	"RestrictRef"
.LASF26:
	.string	"_IO_backup_base"
.LASF35:
	.string	"_shortbuf"
.LASF78:
	.string	"ElowS"
.LASF555:
	.string	"storedBplus1"
.LASF325:
	.string	"slice_group_map_type"
.LASF53:
	.string	"Boolean"
.LASF47:
	.string	"_next"
.LASF9:
	.string	"__off64_t"
.LASF500:
	.string	"bitdepth_lambda_scale"
.LASF303:
	.string	"disthres"
.LASF437:
	.string	"old_layer"
.LASF363:
	.string	"number"
.LASF301:
	.string	"qpBRS2Offset"
.LASF502:
	.string	"max_imgpel_value"
.LASF455:
	.string	"PicWidthInMbs"
.LASF311:
	.string	"LossRateA"
.LASF312:
	.string	"LossRateB"
.LASF313:
	.string	"LossRateC"
.LASF495:
	.string	"pic_unit_size_on_disk"
.LASF501:
	.string	"dc_pred_value"
.LASF505:
	.string	"num_cdc_coeff"
.LASF24:
	.string	"_IO_buf_end"
.LASF352:
	.string	"img_width_cr"
.LASF387:
	.string	"mb_x"
.LASF174:
	.string	"Macroblock"
.LASF93:
	.string	"ref_no_contexts"
.LASF239:
	.string	"blc_size"
.LASF463:
	.string	"adaptive_ref_pic_buffering_flag"
.LASF66:
	.string	"BITS_COEFF_UV_MB"
.LASF50:
	.string	"byte"
.LASF112:
	.string	"Next"
.LASF271:
	.string	"BRefPictures"
.LASF111:
	.string	"Data"
.LASF481:
	.string	"TopFieldFlag"
.LASF560:
	.string	"stderr"
.LASF5:
	.string	"short int"
.LASF395:
	.string	"opix_x"
.LASF76:
	.string	"Ecodestrm"
.LASF396:
	.string	"opix_y"
.LASF237:
	.string	"yuv_format"
.LASF348:
	.string	"FMEnable"
.LASF439:
	.string	"redundant_pic_cnt"
.LASF424:
	.string	"bw_mb_mode"
.LASF333:
	.string	"redundant_slice_flag"
.LASF563:
	.string	"errortext"
.LASF349:
	.string	"BitDepthLuma"
.LASF52:
	.string	"TRUE"
.LASF34:
	.string	"_vtable_offset"
.LASF302:
	.string	"rdopt"
.LASF533:
	.string	"item"
.LASF80:
	.string	"EbufferS"
.LASF569:
	.string	"configinput"
.LASF551:
	.string	"frame_mb_only"
.LASF453:
	.string	"ThisPOC"
.LASF69:
	.string	"UVLC"
.LASF571:
	.string	"configfile.c"
.LASF471:
	.string	"TotalMADBasicUnit"
.LASF164:
	.string	"prev_qp"
.LASF286:
	.string	"IntraDisableInterOnly"
.LASF92:
	.string	"mv_res_contexts"
.LASF281:
	.string	"InterSearch8x16"
.LASF163:
	.string	"actj"
.LASF540:
	.string	"InitEncoderParams"
.LASF324:
	.string	"num_slice_groups_minus1"
.LASF447:
	.string	"delta_pic_order_cnt_bottom"
.LASF434:
	.string	"buf_cycle"
.LASF65:
	.string	"BITS_COEFF_Y_MB"
.LASF385:
	.string	"cod_counter"
.LASF197:
	.string	"partArr"
.LASF175:
	.string	"byte_pos"
.LASF246:
	.string	"outfile"
.LASF98:
	.string	"ipr_contexts"
.LASF151:
	.string	"mbAddrA"
.LASF152:
	.string	"mbAddrB"
.LASF18:
	.string	"_IO_read_end"
.LASF154:
	.string	"mbAddrD"
.LASF521:
	.string	"content"
.LASF338:
	.string	"LowPassForIntra8x8"
.LASF386:
	.string	"nz_coeff"
.LASF557:
	.string	"PatchInputNoFrames"
.LASF94:
	.string	"delta_qp_contexts"
.LASF530:
	.string	"bufsize"
.LASF289:
	.string	"Intra4x4DirDisable"
.LASF575:
	.string	"PatchInp"
.LASF544:
	.string	"DisplayEncoderParams"
.LASF469:
	.string	"NumberofBasicUnitHeaderBits"
.LASF129:
	.string	"SyntaxElement"
.LASF298:
	.string	"qpB2"
.LASF350:
	.string	"BitDepthChroma"
.LASF485:
	.string	"IFLAG"
.LASF30:
	.string	"_fileno"
.LASF494:
	.string	"pre_frame_num"
.LASF461:
	.string	"pic_order_present_flag"
.LASF145:
	.string	"lf_disable"
.LASF260:
	.string	"BiPredMESubPel"
.LASF56:
	.string	"PAR_OF_RTP"
.LASF213:
	.string	"idr_flag"
.LASF2:
	.string	"short unsigned int"
.LASF483:
	.string	"FieldFrame"
.LASF296:
	.string	"last_frame"
.LASF168:
	.string	"predict_error"
.LASF367:
	.string	"current_slice_nr"
.LASF255:
	.string	"direct_spatial_mv_pred_flag"
.LASF224:
	.string	"jumpd"
.LASF522:
	.string	"CLcount"
.LASF497:
	.string	"bitdepth_chroma"
.LASF21:
	.string	"_IO_write_ptr"
.LASF127:
	.string	"mapping"
.LASF477:
	.string	"TotalQpforPPicture"
.LASF351:
	.string	"img_height_cr"
.LASF558:
	.string	"ProfileCheck"
.LASF331:
	.string	"slice_group_change_rate_minus1"
.LASF13:
	.string	"int64_t"
.LASF128:
	.string	"writing"
.LASF328:
	.string	"slice_group_id"
.LASF106:
	.string	"fld_map_contexts"
.LASF181:
	.string	"byte_buf_skip"
.LASF330:
	.string	"slice_group_change_direction_flag"
.LASF293:
	.string	"FrameRate"
.LASF268:
	.string	"RDPSliceWeightOnly"
.LASF100:
	.string	"cbp_contexts"
.LASF354:
	.string	"cb_qp_index_offset"
.LASF198:
	.string	"mot_ctx"
.LASF161:
	.string	"NoMbPartLessThan8x8Flag"
.LASF376:
	.string	"subblock_x"
.LASF377:
	.string	"subblock_y"
.LASF358:
	.string	"UseExplicitLambdaParams"
.LASF131:
	.string	"currSEnr"
.LASF457:
	.string	"FrameHeightInMbs"
.LASF406:
	.string	"currentSlice"
.LASF135:
	.string	"bitcounter"
.LASF79:
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
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
