	.file	"parse_args_file.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I . -I . -I libutil -imultiarch x86_64-linux-gnu
# -D SPEC_CPU -D NDEBUG -D SPEC_CPU -D HAVE_CONFIG_H -D SPEC_CPU_LP64
# parse_args_file.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.section	.rodata
.LC0:
	.string	"-logbase"
.LC1:
	.string	"1.0003"
	.align 8
.LC2:
	.string	"Base in which all log-likelihoods calculated"
.LC3:
	.string	"-feat"
.LC4:
	.string	"1s_c_d_dd"
	.align 8
.LC5:
	.string	"Feature type: Must be s3_1x39 / s2_4x / cep_dcep[,%d] / cep[,%d] / %d,%d,...,%d"
.LC6:
	.string	"-gs"
.LC7:
	.string	"Gaussian Selection Mapping."
.LC8:
	.string	"-ds"
.LC9:
	.string	"1"
	.align 8
.LC10:
	.string	"Ratio of Down-sampling the frame computation."
.LC11:
	.string	"-cond_ds"
.LC12:
	.string	"0"
	.align 8
.LC13:
	.string	"Conditional Down-sampling, override normal down sampling."
.LC14:
	.string	"-gs4gs"
	.align 8
.LC15:
	.string	"A flag that specified whether the input GS map will be used for Gaussian Selection. If it is disabled, the map will only provide information to other modules."
.LC16:
	.string	"-svq4svq"
	.align 8
.LC17:
	.string	"A flag that specified whether the input SVQ will be used as approximate scores of the Gaussians"
.LC18:
	.string	"-ci_pbeam"
.LC19:
	.string	"1e-80"
	.align 8
.LC20:
	.string	"CI phone beam for CI-based GMM Selection. Good number should be [0(widest) .. 1(narrowest)]"
.LC21:
	.string	"-wend_beam"
.LC22:
	.string	"1.0e-80"
	.align 8
.LC23:
	.string	"Beam selecting word-final HMMs exiting in each frame [0(widest) .. 1(narrowest)]"
.LC24:
	.string	"-pl_window"
	.align 8
.LC25:
	.string	"Window size (actually window size-1) of phoneme look-ahead."
.LC26:
	.string	"-pheurtype"
	.align 8
.LC27:
	.string	"0 = bypass, 1= sum of max, 2 = sum of avg, 3 = sum of 1st senones only"
.LC28:
	.string	"-pl_beam"
	.align 8
.LC29:
	.string	"Beam for phoneme look-ahead. [0(widest) .. 1(narrowest)]"
.LC30:
	.string	"-ctl"
	.align 8
.LC31:
	.string	"Control file listing utterances to be processed"
.LC32:
	.string	"-ctl_lm"
	.align 8
.LC33:
	.string	"Control file that list the corresponding LMs"
.LC34:
	.string	"-beam"
.LC35:
	.string	"1.0e-55"
	.align 8
.LC36:
	.string	"Beam selecting active HMMs (relative to best) in each frame [0(widest)..1(narrowest)]"
.LC37:
	.string	"-pbeam"
.LC38:
	.string	"1.0e-50"
	.align 8
.LC39:
	.string	"Beam selecting HMMs transitioning to successors in each frame [0(widest)..1(narrowest)]"
.LC40:
	.string	"-wbeam"
.LC41:
	.string	"1.0e-35"
	.align 8
.LC42:
	.string	"Beam selecting word-final HMMs exiting in each frame [0(widest)..1(narrowest)]"
.LC43:
	.string	"-lminmemory"
	.align 8
.LC44:
	.string	"Load language model into memory (default: use disk cache for lm"
.LC45:
	.string	"-log3table"
	.align 8
.LC46:
	.string	"Determines whether to use the log3 table or to compute the values at run time."
.LC47:
	.string	"-vqeval"
.LC48:
	.string	"3"
	.align 8
.LC49:
	.string	"How many vectors should be analyzed by VQ when building the shortlist. It speeds up the decoder, but at a cost."
.LC50:
	.string	"-senmgau"
.LC51:
	.string	".cont."
	.align 8
.LC52:
	.string	"Senone to mixture-gaussian mapping file (or .semi. or .cont.)"
.LC53:
	.string	"-cmn"
.LC54:
	.string	"current"
	.align 8
.LC55:
	.string	"Cepstral mean normalization scheme (default: Cep -= mean-over-current-sentence(Cep))"
.LC56:
	.string	"-varnorm"
.LC57:
	.string	"no"
	.align 8
.LC58:
	.string	"Variance normalize each utterance (yes/no; only applicable if CMN is also performed)"
.LC59:
	.string	"-agc"
.LC60:
	.string	"max"
	.align 8
.LC61:
	.string	"Automatic gain control for c0 ('max' or 'none'); (max: c0 -= max-over-current-sentence(c0))"
.LC62:
	.string	"-mdef"
.LC63:
	.string	"Model definition input file"
.LC64:
	.string	"-dict"
	.align 8
.LC65:
	.string	"Pronunciation dictionary input file"
.LC66:
	.string	"-fdict"
	.align 8
.LC67:
	.string	"Filler word pronunciation dictionary input file"
.LC68:
	.string	"-lm"
	.align 8
.LC69:
	.string	"Word trigram language model input file"
.LC70:
	.string	"-fillpen"
	.align 8
.LC71:
	.string	"Filler word probabilities input file"
.LC72:
	.string	"-silprob"
.LC73:
	.string	"0.1"
	.align 8
.LC74:
	.string	"Default silence word probability"
.LC75:
	.string	"-fillprob"
	.align 8
.LC76:
	.string	"Default non-silence filler word probability"
.LC77:
	.string	"-lw"
.LC78:
	.string	"8.5"
.LC79:
	.string	"Language weight"
.LC80:
	.string	"-wip"
.LC81:
	.string	"0.7"
.LC82:
	.string	"Word insertion penalty"
.LC83:
	.string	"-uw"
.LC84:
	.string	"Unigram weight"
.LC85:
	.string	"-mean"
	.align 8
.LC86:
	.string	"Mixture gaussian means input file"
.LC87:
	.string	"-var"
	.align 8
.LC88:
	.string	"Mixture gaussian variances input file"
.LC89:
	.string	"-varfloor"
.LC90:
	.string	"0.0001"
	.align 8
.LC91:
	.string	"Mixture gaussian variance floor (applied to data from -var file)"
.LC92:
	.string	"-mixw"
	.align 8
.LC93:
	.string	"Senone mixture weights input file"
.LC94:
	.string	"-mixwfloor"
.LC95:
	.string	"0.0000001"
	.align 8
.LC96:
	.string	"Senone mixture weights floor (applied to data from -mixw file)"
.LC97:
	.string	"-subvq"
	.align 8
.LC98:
	.string	"Sub-vector quantized form of acoustic model"
.LC99:
	.string	"-tmat"
	.align 8
.LC100:
	.string	"HMM state transition matrix input file"
.LC101:
	.string	"-tmatfloor"
	.align 8
.LC102:
	.string	"HMM state transition probability floor (applied to -tmat file)"
.LC103:
	.string	"-Nlextree"
	.align 8
.LC104:
	.string	"No. of lextrees to be instantiated; entries into them staggered in time"
.LC105:
	.string	"-epl"
	.align 8
.LC106:
	.string	"Entries Per Lextree; #successive entries into one lextree before lextree-entries shifted to the next"
.LC107:
	.string	"-subvqbeam"
.LC108:
	.string	"3.0e-3"
	.align 8
.LC109:
	.string	"Beam selecting best components within each mixture Gaussian [0(widest)..1(narrowest)]"
.LC110:
	.string	"-utt"
	.align 8
.LC111:
	.string	"Utterance file to be processed (-ctlcount argument times)"
.LC112:
	.string	"-ctloffset"
	.align 8
.LC113:
	.string	"No. of utterances at the beginning of -ctl file to be skipped"
.LC114:
	.string	"-ctlcount"
.LC115:
	.string	"1000000000"
	.align 8
.LC116:
	.string	"No. of utterances to be processed (after skipping -ctloffset entries)"
.LC117:
	.string	"-cepdir"
	.align 8
.LC118:
	.string	"Input cepstrum files directory (prefixed to filespecs in control file)"
.LC119:
	.string	"-bptbldir"
	.align 8
.LC120:
	.string	"Directory in which to dump word Viterbi back pointer table (for debugging)"
.LC121:
	.string	"-outlatdir"
	.align 8
.LC122:
	.string	"Directory in which to dump word lattices"
.LC123:
	.string	"-outlatoldfmt"
	.align 8
.LC124:
	.string	"Whether to dump lattices in old format"
.LC125:
	.string	"-latext"
.LC126:
	.string	"lat.gz"
	.align 8
.LC127:
	.string	"Filename extension for lattice files (gzip compressed, by default)"
.LC128:
	.string	"-hmmdump"
	.align 8
.LC129:
	.string	"Whether to dump active HMM details to stderr (for debugging)"
.LC130:
	.string	"-lextreedump"
	.align 8
.LC131:
	.string	"Whether to dump the lextree structure to stderr (for debugging)"
.LC132:
	.string	"-maxwpf"
.LC133:
	.string	"20"
	.align 8
.LC134:
	.string	"Max no. of distinct word exits to maintain at each frame"
.LC135:
	.string	"-maxhistpf"
.LC136:
	.string	"100"
	.align 8
.LC137:
	.string	"Max no. of histories to maintain at each frame"
.LC138:
	.string	"-bghist"
	.align 8
.LC139:
	.string	"Bigram-mode: If TRUE only one BP entry/frame; else one per LM state"
.LC140:
	.string	"-maxhmmpf"
.LC141:
	.string	"20000"
	.align 8
.LC142:
	.string	"Max no. of active HMMs to maintain at each frame; approx."
.LC143:
	.string	"-hmmhistbinsize"
.LC144:
	.string	"5000"
	.align 8
.LC145:
	.string	"Performance histogram: #frames vs #HMMs active; #HMMs/bin in this histogram"
.LC146:
	.string	"-ptranskip"
	.align 8
.LC147:
	.string	"Use wbeam for phone transitions every so many frames (if >= 1)"
.LC148:
	.string	"-hyp"
	.align 8
.LC149:
	.string	"Recognition result file, with only words"
.LC150:
	.string	"-hypseg"
	.align 8
.LC151:
	.string	"Recognition result file, with word segmentations and scores"
.LC152:
	.string	"-treeugprob"
	.align 8
.LC153:
	.string	"If TRUE (non-0), Use unigram probs in lextree"
.LC154:
	.string	"-maxhyplen"
.LC155:
	.string	"1000"
	.align 8
.LC156:
	.string	"Maximum number of words in a partial hypothesis (for block decoding)"
.LC157:
	.string	"-maxcepvecs"
.LC158:
	.string	"256"
	.align 8
.LC159:
	.string	"Maximum number of cepstral vectors that can be obtained from a single sample buffer"
.LC160:
	.string	"-samprate"
.LC161:
	.string	"8000"
	.align 8
.LC162:
	.string	"Sampling rate (only 8K and 16K currently supported)"
.LC163:
	.string	"-nfilt"
.LC164:
	.string	"31"
.LC165:
	.string	"Number of mel filters"
.LC166:
	.string	"-lowerf"
.LC167:
	.string	"200"
.LC168:
	.string	"Lower edge of filters"
.LC169:
	.string	"-upperf"
.LC170:
	.string	"3500"
.LC171:
	.string	"Upper edge of filters"
.LC172:
	.string	"-alpha"
.LC173:
	.string	"0.97"
.LC174:
	.string	"alpha for pre-emphasis window"
.LC175:
	.string	"-frate"
.LC176:
	.string	"frame rate"
.LC177:
	.string	"-nfft"
.LC178:
	.string	"no. pts for FFT"
.LC179:
	.string	"-wlen"
.LC180:
	.string	"0.0256"
.LC181:
	.string	"window length"
.LC182:
	.string	"-lmdumpdir"
	.align 8
.LC183:
	.string	"The directory for dumping the DMP file. "
.LC184:
	.string	"-lmctlfn"
	.align 8
.LC185:
	.string	"Control file for language model\n"
	.data
	.align 32
	.type	arg, @object
	.size	arg, 2464
arg:
# name:
	.quad	.LC0
# type:
	.long	4
# deflt:
	.zero	4
	.quad	.LC1
# doc:
	.quad	.LC2
# name:
	.quad	.LC3
# type:
	.long	8
# deflt:
	.zero	4
	.quad	.LC4
# doc:
	.quad	.LC5
# name:
	.quad	.LC6
# type:
	.long	8
# deflt:
	.zero	4
	.quad	0
# doc:
	.quad	.LC7
# name:
	.quad	.LC8
# type:
	.long	2
# deflt:
	.zero	4
	.quad	.LC9
# doc:
	.quad	.LC10
# name:
	.quad	.LC11
# type:
	.long	2
# deflt:
	.zero	4
	.quad	.LC12
# doc:
	.quad	.LC13
# name:
	.quad	.LC14
# type:
	.long	2
# deflt:
	.zero	4
	.quad	.LC9
# doc:
	.quad	.LC15
# name:
	.quad	.LC16
# type:
	.long	2
# deflt:
	.zero	4
	.quad	.LC12
# doc:
	.quad	.LC17
# name:
	.quad	.LC18
# type:
	.long	4
# deflt:
	.zero	4
	.quad	.LC19
# doc:
	.quad	.LC20
# name:
	.quad	.LC21
# type:
	.long	4
# deflt:
	.zero	4
	.quad	.LC22
# doc:
	.quad	.LC23
# name:
	.quad	.LC24
# type:
	.long	2
# deflt:
	.zero	4
	.quad	.LC9
# doc:
	.quad	.LC25
# name:
	.quad	.LC26
# type:
	.long	2
# deflt:
	.zero	4
	.quad	.LC12
# doc:
	.quad	.LC27
# name:
	.quad	.LC28
# type:
	.long	4
# deflt:
	.zero	4
	.quad	.LC22
# doc:
	.quad	.LC29
# name:
	.quad	.LC30
# type:
	.long	8
# deflt:
	.zero	4
	.quad	0
# doc:
	.quad	.LC31
# name:
	.quad	.LC32
# type:
	.long	8
# deflt:
	.zero	4
	.quad	0
# doc:
	.quad	.LC33
# name:
	.quad	.LC34
# type:
	.long	6
# deflt:
	.zero	4
	.quad	.LC35
# doc:
	.quad	.LC36
# name:
	.quad	.LC37
# type:
	.long	6
# deflt:
	.zero	4
	.quad	.LC38
# doc:
	.quad	.LC39
# name:
	.quad	.LC40
# type:
	.long	6
# deflt:
	.zero	4
	.quad	.LC41
# doc:
	.quad	.LC42
# name:
	.quad	.LC43
# type:
	.long	2
# deflt:
	.zero	4
	.quad	.LC12
# doc:
	.quad	.LC44
# name:
	.quad	.LC45
# type:
	.long	2
# deflt:
	.zero	4
	.quad	.LC9
# doc:
	.quad	.LC46
# name:
	.quad	.LC47
# type:
	.long	2
# deflt:
	.zero	4
	.quad	.LC48
# doc:
	.quad	.LC49
# name:
	.quad	.LC50
# type:
	.long	8
# deflt:
	.zero	4
	.quad	.LC51
# doc:
	.quad	.LC52
# name:
	.quad	.LC53
# type:
	.long	8
# deflt:
	.zero	4
	.quad	.LC54
# doc:
	.quad	.LC55
# name:
	.quad	.LC56
# type:
	.long	8
# deflt:
	.zero	4
	.quad	.LC57
# doc:
	.quad	.LC58
# name:
	.quad	.LC59
# type:
	.long	8
# deflt:
	.zero	4
	.quad	.LC60
# doc:
	.quad	.LC61
# name:
	.quad	.LC62
# type:
	.long	9
# deflt:
	.zero	4
	.quad	0
# doc:
	.quad	.LC63
# name:
	.quad	.LC64
# type:
	.long	9
# deflt:
	.zero	4
	.quad	0
# doc:
	.quad	.LC65
# name:
	.quad	.LC66
# type:
	.long	9
# deflt:
	.zero	4
	.quad	0
# doc:
	.quad	.LC67
# name:
	.quad	.LC68
# type:
	.long	9
# deflt:
	.zero	4
	.quad	0
# doc:
	.quad	.LC69
# name:
	.quad	.LC70
# type:
	.long	8
# deflt:
	.zero	4
	.quad	0
# doc:
	.quad	.LC71
# name:
	.quad	.LC72
# type:
	.long	4
# deflt:
	.zero	4
	.quad	.LC73
# doc:
	.quad	.LC74
# name:
	.quad	.LC75
# type:
	.long	4
# deflt:
	.zero	4
	.quad	.LC73
# doc:
	.quad	.LC76
# name:
	.quad	.LC77
# type:
	.long	4
# deflt:
	.zero	4
	.quad	.LC78
# doc:
	.quad	.LC79
# name:
	.quad	.LC80
# type:
	.long	4
# deflt:
	.zero	4
	.quad	.LC81
# doc:
	.quad	.LC82
# name:
	.quad	.LC83
# type:
	.long	4
# deflt:
	.zero	4
	.quad	.LC81
# doc:
	.quad	.LC84
# name:
	.quad	.LC85
# type:
	.long	9
# deflt:
	.zero	4
	.quad	0
# doc:
	.quad	.LC86
# name:
	.quad	.LC87
# type:
	.long	9
# deflt:
	.zero	4
	.quad	0
# doc:
	.quad	.LC88
# name:
	.quad	.LC89
# type:
	.long	4
# deflt:
	.zero	4
	.quad	.LC90
# doc:
	.quad	.LC91
# name:
	.quad	.LC92
# type:
	.long	9
# deflt:
	.zero	4
	.quad	0
# doc:
	.quad	.LC93
# name:
	.quad	.LC94
# type:
	.long	4
# deflt:
	.zero	4
	.quad	.LC95
# doc:
	.quad	.LC96
# name:
	.quad	.LC97
# type:
	.long	8
# deflt:
	.zero	4
	.quad	0
# doc:
	.quad	.LC98
# name:
	.quad	.LC99
# type:
	.long	9
# deflt:
	.zero	4
	.quad	0
# doc:
	.quad	.LC100
# name:
	.quad	.LC101
# type:
	.long	4
# deflt:
	.zero	4
	.quad	.LC90
# doc:
	.quad	.LC102
# name:
	.quad	.LC103
# type:
	.long	2
# deflt:
	.zero	4
	.quad	.LC48
# doc:
	.quad	.LC104
# name:
	.quad	.LC105
# type:
	.long	2
# deflt:
	.zero	4
	.quad	.LC48
# doc:
	.quad	.LC106
# name:
	.quad	.LC107
# type:
	.long	6
# deflt:
	.zero	4
	.quad	.LC108
# doc:
	.quad	.LC109
# name:
	.quad	.LC110
# type:
	.long	8
# deflt:
	.zero	4
	.quad	0
# doc:
	.quad	.LC111
# name:
	.quad	.LC112
# type:
	.long	2
# deflt:
	.zero	4
	.quad	.LC12
# doc:
	.quad	.LC113
# name:
	.quad	.LC114
# type:
	.long	2
# deflt:
	.zero	4
	.quad	.LC115
# doc:
	.quad	.LC116
# name:
	.quad	.LC117
# type:
	.long	8
# deflt:
	.zero	4
	.quad	0
# doc:
	.quad	.LC118
# name:
	.quad	.LC119
# type:
	.long	8
# deflt:
	.zero	4
	.quad	0
# doc:
	.quad	.LC120
# name:
	.quad	.LC121
# type:
	.long	8
# deflt:
	.zero	4
	.quad	0
# doc:
	.quad	.LC122
# name:
	.quad	.LC123
# type:
	.long	2
# deflt:
	.zero	4
	.quad	.LC9
# doc:
	.quad	.LC124
# name:
	.quad	.LC125
# type:
	.long	8
# deflt:
	.zero	4
	.quad	.LC126
# doc:
	.quad	.LC127
# name:
	.quad	.LC128
# type:
	.long	2
# deflt:
	.zero	4
	.quad	.LC12
# doc:
	.quad	.LC129
# name:
	.quad	.LC130
# type:
	.long	2
# deflt:
	.zero	4
	.quad	.LC12
# doc:
	.quad	.LC131
# name:
	.quad	.LC132
# type:
	.long	2
# deflt:
	.zero	4
	.quad	.LC133
# doc:
	.quad	.LC134
# name:
	.quad	.LC135
# type:
	.long	2
# deflt:
	.zero	4
	.quad	.LC136
# doc:
	.quad	.LC137
# name:
	.quad	.LC138
# type:
	.long	2
# deflt:
	.zero	4
	.quad	.LC12
# doc:
	.quad	.LC139
# name:
	.quad	.LC140
# type:
	.long	2
# deflt:
	.zero	4
	.quad	.LC141
# doc:
	.quad	.LC142
# name:
	.quad	.LC143
# type:
	.long	2
# deflt:
	.zero	4
	.quad	.LC144
# doc:
	.quad	.LC145
# name:
	.quad	.LC146
# type:
	.long	2
# deflt:
	.zero	4
	.quad	.LC12
# doc:
	.quad	.LC147
# name:
	.quad	.LC148
# type:
	.long	8
# deflt:
	.zero	4
	.quad	0
# doc:
	.quad	.LC149
# name:
	.quad	.LC150
# type:
	.long	8
# deflt:
	.zero	4
	.quad	0
# doc:
	.quad	.LC151
# name:
	.quad	.LC152
# type:
	.long	2
# deflt:
	.zero	4
	.quad	.LC9
# doc:
	.quad	.LC153
# name:
	.quad	.LC154
# type:
	.long	2
# deflt:
	.zero	4
	.quad	.LC155
# doc:
	.quad	.LC156
# name:
	.quad	.LC157
# type:
	.long	2
# deflt:
	.zero	4
	.quad	.LC158
# doc:
	.quad	.LC159
# name:
	.quad	.LC160
# type:
	.long	2
# deflt:
	.zero	4
	.quad	.LC161
# doc:
	.quad	.LC162
# name:
	.quad	.LC163
# type:
	.long	2
# deflt:
	.zero	4
	.quad	.LC164
# doc:
	.quad	.LC165
# name:
	.quad	.LC166
# type:
	.long	4
# deflt:
	.zero	4
	.quad	.LC167
# doc:
	.quad	.LC168
# name:
	.quad	.LC169
# type:
	.long	4
# deflt:
	.zero	4
	.quad	.LC170
# doc:
	.quad	.LC171
# name:
	.quad	.LC172
# type:
	.long	4
# deflt:
	.zero	4
	.quad	.LC173
# doc:
	.quad	.LC174
# name:
	.quad	.LC175
# type:
	.long	2
# deflt:
	.zero	4
	.quad	.LC136
# doc:
	.quad	.LC176
# name:
	.quad	.LC177
# type:
	.long	2
# deflt:
	.zero	4
	.quad	.LC158
# doc:
	.quad	.LC178
# name:
	.quad	.LC179
# type:
	.long	4
# deflt:
	.zero	4
	.quad	.LC180
# doc:
	.quad	.LC181
# name:
	.quad	.LC182
# type:
	.long	8
# deflt:
	.zero	4
	.quad	0
# doc:
	.quad	.LC183
# name:
	.quad	.LC184
# type:
	.long	8
# deflt:
	.zero	4
	.quad	0
# doc:
	.quad	.LC185
# name:
	.quad	0
# type:
	.long	2
# deflt:
	.zero	4
	.quad	0
# doc:
	.quad	0
	.local	liveargs
	.comm	liveargs,8,8
	.section	.rodata
.LC186:
	.string	"r"
.LC187:
	.string	"FATAL_ERROR"
.LC188:
	.string	"parse_args_file.c"
	.align 8
.LC189:
	.string	"Unable to open arguments file %s for reading\n"
.LC190:
	.string	" \t\n"
	.text
	.globl	parse_args_file
	.type	parse_args_file, @function
parse_args_file:
.LFB2:
	.file 1 "parse_args_file.c"
	.loc 1 376 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# live_args, live_args
	.loc 1 383 0
	cmpq	$0, -40(%rbp)	#, live_args
	jne	.L2	#,
	.loc 1 384 0
	movq	stderr(%rip), %rax	# stderr, stderr.0
	movl	$arg, %esi	#,
	movq	%rax, %rdi	# stderr.0,
	call	cmd_ln_print_help	#
	.loc 1 385 0
	jmp	.L1	#
.L2:
	.loc 1 387 0
	movq	-40(%rbp), %rax	# live_args, tmp84
	movl	$.LC186, %esi	#,
	movq	%rax, %rdi	# tmp84,
	call	fopen	#
	movq	%rax, -24(%rbp)	# tmp85, fp
	cmpq	$0, -24(%rbp)	#, fp
	jne	.L4	#,
	.loc 1 388 0
	movl	$.LC187, %edx	#,
	movl	$388, %esi	#,
	movl	$.LC188, %edi	#,
	call	_E__pr_header	#
	movq	-40(%rbp), %rax	# live_args, tmp86
	movq	%rax, %rsi	# tmp86,
	movl	$.LC189, %edi	#,
	movl	$0, %eax	#,
	call	_E__die_error	#
.L4:
	.loc 1 390 0
	movl	$390, %ecx	#,
	movl	$.LC188, %edx	#,
	movl	$1, %esi	#,
	movl	$10000, %edi	#,
	call	__ckd_calloc__	#
	movq	%rax, -16(%rbp)	# tmp87, argline
	.loc 1 391 0
	movl	$1, -32(%rbp)	#, nargs
	.loc 1 392 0
	movl	$0, -28(%rbp)	#, maxarglen
	.loc 1 393 0
	jmp	.L5	#
.L11:
	.loc 1 394 0
	movq	-16(%rbp), %rax	# argline, tmp88
	movl	$.LC190, %esi	#,
	movq	%rax, %rdi	# tmp88,
	call	strtok	#
	movq	%rax, -8(%rbp)	# tmp89, targ
	cmpq	$0, -8(%rbp)	#, targ
	jne	.L6	#,
	.loc 1 395 0
	jmp	.L5	#
.L6:
	.loc 1 396 0
	movq	-8(%rbp), %rax	# targ, tmp90
	movq	%rax, %rdi	# tmp90,
	call	strlen	#
	cmpl	-28(%rbp), %eax	# maxarglen, D.5153
	jle	.L7	#,
	.loc 1 396 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# targ, tmp91
	movq	%rax, %rdi	# tmp91,
	call	strlen	#
	movl	%eax, -28(%rbp)	# D.5152, maxarglen
.L7:
	.loc 1 397 0 is_stmt 1
	addl	$1, -32(%rbp)	#, nargs
	.loc 1 399 0
	jmp	.L8	#
.L10:
	.loc 1 400 0
	movq	-8(%rbp), %rax	# targ, tmp92
	movq	%rax, %rdi	# tmp92,
	call	strlen	#
	cmpl	-28(%rbp), %eax	# maxarglen, D.5153
	jle	.L9	#,
	.loc 1 400 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax	# targ, tmp93
	movq	%rax, %rdi	# tmp93,
	call	strlen	#
	movl	%eax, -28(%rbp)	# D.5152, maxarglen
.L9:
	.loc 1 401 0 is_stmt 1
	addl	$1, -32(%rbp)	#, nargs
.L8:
	.loc 1 399 0 discriminator 1
	movl	$.LC190, %esi	#,
	movl	$0, %edi	#,
	call	strtok	#
	movq	%rax, -8(%rbp)	# tmp94, targ
	cmpq	$0, -8(%rbp)	#, targ
	jne	.L10	#,
.L5:
	.loc 1 393 0 discriminator 1
	movq	-24(%rbp), %rdx	# fp, tmp95
	movq	-16(%rbp), %rax	# argline, tmp96
	movl	$10000, %esi	#,
	movq	%rax, %rdi	# tmp96,
	call	fgets	#
	testq	%rax, %rax	# D.5151
	jne	.L11	#,
	.loc 1 404 0
	movq	-24(%rbp), %rax	# fp, tmp97
	movq	%rax, %rdi	# tmp97,
	call	rewind	#
	.loc 1 406 0
	movl	-32(%rbp), %eax	# nargs, tmp98
	movl	%eax, nliveargs.4903(%rip)	# tmp98, nliveargs
	.loc 1 407 0
	movl	-28(%rbp), %eax	# maxarglen, tmp99
	leal	1(%rax), %esi	#, D.5153
	movl	-32(%rbp), %eax	# nargs, tmp100
	movl	$407, %r8d	#,
	movl	$.LC188, %ecx	#,
	movl	$1, %edx	#,
	movl	%eax, %edi	# tmp100,
	call	__ckd_calloc_2d__	#
	movq	%rax, liveargs(%rip)	# liveargs.1, liveargs
	.loc 1 409 0
	movl	$1, -32(%rbp)	#, nargs
	.loc 1 410 0
	jmp	.L12	#
.L16:
	.loc 1 411 0
	movq	-16(%rbp), %rax	# argline, tmp101
	movl	$.LC190, %esi	#,
	movq	%rax, %rdi	# tmp101,
	call	strtok	#
	movq	%rax, -8(%rbp)	# tmp102, targ
	cmpq	$0, -8(%rbp)	#, targ
	jne	.L13	#,
	.loc 1 412 0
	jmp	.L12	#
.L13:
	.loc 1 414 0
	movq	liveargs(%rip), %rcx	# liveargs, liveargs.2
	movl	-32(%rbp), %eax	# nargs, nargs.3
	leal	1(%rax), %edx	#, tmp103
	movl	%edx, -32(%rbp)	# tmp103, nargs
	cltq
	salq	$3, %rax	#, D.5152
	addq	%rcx, %rax	# liveargs.2, D.5154
	movq	(%rax), %rax	# *_38, D.5151
	movq	-8(%rbp), %rdx	# targ, tmp104
	movq	%rdx, %rsi	# tmp104,
	movq	%rax, %rdi	# D.5151,
	call	strcpy	#
	.loc 1 415 0
	jmp	.L14	#
.L15:
	.loc 1 416 0
	movq	liveargs(%rip), %rcx	# liveargs, liveargs.4
	movl	-32(%rbp), %eax	# nargs, nargs.5
	leal	1(%rax), %edx	#, tmp105
	movl	%edx, -32(%rbp)	# tmp105, nargs
	cltq
	salq	$3, %rax	#, D.5152
	addq	%rcx, %rax	# liveargs.4, D.5154
	movq	(%rax), %rax	# *_46, D.5151
	movq	-8(%rbp), %rdx	# targ, tmp106
	movq	%rdx, %rsi	# tmp106,
	movq	%rax, %rdi	# D.5151,
	call	strcpy	#
.L14:
	.loc 1 415 0 discriminator 1
	movl	$.LC190, %esi	#,
	movl	$0, %edi	#,
	call	strtok	#
	movq	%rax, -8(%rbp)	# tmp107, targ
	cmpq	$0, -8(%rbp)	#, targ
	jne	.L15	#,
.L12:
	.loc 1 410 0 discriminator 1
	movq	-24(%rbp), %rdx	# fp, tmp108
	movq	-16(%rbp), %rax	# argline, tmp109
	movl	$10000, %esi	#,
	movq	%rax, %rdi	# tmp109,
	call	fgets	#
	testq	%rax, %rax	# D.5151
	jne	.L16	#,
	.loc 1 419 0
	movq	-24(%rbp), %rax	# fp, tmp110
	movq	%rax, %rdi	# tmp110,
	call	fclose	#
	.loc 1 422 0
	movq	-16(%rbp), %rax	# argline, tmp111
	movq	%rax, %rdi	# tmp111,
	call	free	#
	.loc 1 424 0
	movq	liveargs(%rip), %rdx	# liveargs, liveargs.6
	movl	nliveargs.4903(%rip), %eax	# nliveargs, nliveargs.7
	movl	%eax, %esi	# nliveargs.7,
	movl	$arg, %edi	#,
	call	cmd_ln_parse	#
	.loc 1 426 0
	nop
.L1:
	.loc 1 427 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	parse_args_file, .-parse_args_file
	.globl	parse_args_free
	.type	parse_args_free, @function
parse_args_free:
.LFB3:
	.loc 1 431 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	.loc 1 432 0
	movl	$0, %eax	#,
	call	cmd_ln_free	#
	.loc 1 433 0
	movq	liveargs(%rip), %rax	# liveargs, liveargs.8
	movq	%rax, %rdi	# liveargs.8,
	call	ckd_free_2d	#
	.loc 1 434 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	parse_args_free, .-parse_args_free
	.local	nliveargs.4903
	.comm	nliveargs.4903,4,4
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "./libutil/prim_type.h"
	.file 7 "./libutil/cmd_ln.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x3ff
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF63
	.byte	0x1
	.long	.LASF64
	.long	.LASF65
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
	.long	.LASF66
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
	.byte	0x3f
	.long	0x62
	.uleb128 0x2
	.long	.LASF52
	.byte	0x7
	.byte	0x4c
	.long	0x2ae
	.uleb128 0xd
	.byte	0x20
	.byte	0x7
	.byte	0x4f
	.long	0x2fd
	.uleb128 0x8
	.long	.LASF53
	.byte	0x7
	.byte	0x50
	.long	0x8f
	.byte	0
	.uleb128 0x8
	.long	.LASF54
	.byte	0x7
	.byte	0x51
	.long	0x2b9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF55
	.byte	0x7
	.byte	0x52
	.long	0x8f
	.byte	0x10
	.uleb128 0xe
	.string	"doc"
	.byte	0x7
	.byte	0x53
	.long	0x8f
	.byte	0x18
	.byte	0
	.uleb128 0x2
	.long	.LASF56
	.byte	0x7
	.byte	0x54
	.long	0x2c4
	.uleb128 0xf
	.long	.LASF67
	.byte	0x1
	.value	0x177
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x396
	.uleb128 0x10
	.long	.LASF68
	.byte	0x1
	.value	0x177
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x11
	.long	.LASF57
	.byte	0x1
	.value	0x17a
	.long	0x2ae
	.uleb128 0x9
	.byte	0x3
	.quad	nliveargs.4903
	.uleb128 0x11
	.long	.LASF58
	.byte	0x1
	.value	0x17b
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x11
	.long	.LASF59
	.byte	0x1
	.value	0x17b
	.long	0x2ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x11
	.long	.LASF60
	.byte	0x1
	.value	0x17c
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x11
	.long	.LASF61
	.byte	0x1
	.value	0x17c
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.string	"fp"
	.byte	0x1
	.value	0x17d
	.long	0x396
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x9c
	.uleb128 0x13
	.long	.LASF69
	.byte	0x1
	.value	0x1ae
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xb
	.long	0x2fd
	.long	0x3c6
	.uleb128 0xc
	.long	0x86
	.byte	0x4c
	.byte	0
	.uleb128 0x14
	.string	"arg"
	.byte	0x1
	.byte	0x36
	.long	0x3b6
	.uleb128 0x9
	.byte	0x3
	.quad	arg
	.uleb128 0x11
	.long	.LASF62
	.byte	0x1
	.value	0x175
	.long	0x3f1
	.uleb128 0x9
	.byte	0x3
	.quad	liveargs
	.uleb128 0x6
	.byte	0x8
	.long	0x8f
	.uleb128 0x15
	.long	.LASF70
	.byte	0x4
	.byte	0xaa
	.long	0x266
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
.LASF67:
	.string	"parse_args_file"
.LASF42:
	.string	"_IO_FILE"
.LASF24:
	.string	"_IO_save_end"
.LASF5:
	.string	"short int"
.LASF7:
	.string	"size_t"
.LASF10:
	.string	"sizetype"
.LASF34:
	.string	"_offset"
.LASF68:
	.string	"live_args"
.LASF69:
	.string	"parse_args_free"
.LASF18:
	.string	"_IO_write_ptr"
.LASF13:
	.string	"_flags"
.LASF57:
	.string	"nliveargs"
.LASF20:
	.string	"_IO_buf_base"
.LASF50:
	.string	"double"
.LASF25:
	.string	"_markers"
.LASF15:
	.string	"_IO_read_end"
.LASF62:
	.string	"liveargs"
.LASF49:
	.string	"float"
.LASF70:
	.string	"stderr"
.LASF47:
	.string	"long long int"
.LASF33:
	.string	"_lock"
.LASF6:
	.string	"long int"
.LASF30:
	.string	"_cur_column"
.LASF46:
	.string	"_pos"
.LASF53:
	.string	"name"
.LASF31:
	.string	"_vtable_offset"
.LASF29:
	.string	"_old_offset"
.LASF1:
	.string	"unsigned char"
.LASF56:
	.string	"arg_t"
.LASF63:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF58:
	.string	"nargs"
.LASF4:
	.string	"signed char"
.LASF48:
	.string	"long long unsigned int"
.LASF54:
	.string	"type"
.LASF3:
	.string	"unsigned int"
.LASF43:
	.string	"_IO_marker"
.LASF32:
	.string	"_shortbuf"
.LASF9:
	.string	"__off64_t"
.LASF17:
	.string	"_IO_write_base"
.LASF60:
	.string	"argline"
.LASF14:
	.string	"_IO_read_ptr"
.LASF64:
	.string	"parse_args_file.c"
.LASF21:
	.string	"_IO_buf_end"
.LASF11:
	.string	"char"
.LASF44:
	.string	"_next"
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
.LASF65:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/482.sphinx3/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF2:
	.string	"short unsigned int"
.LASF0:
	.string	"long unsigned int"
.LASF51:
	.string	"int32"
.LASF19:
	.string	"_IO_write_end"
.LASF55:
	.string	"deflt"
.LASF27:
	.string	"_fileno"
.LASF26:
	.string	"_chain"
.LASF8:
	.string	"__off_t"
.LASF23:
	.string	"_IO_backup_base"
.LASF28:
	.string	"_flags2"
.LASF61:
	.string	"targ"
.LASF40:
	.string	"_mode"
.LASF16:
	.string	"_IO_read_base"
.LASF59:
	.string	"maxarglen"
.LASF41:
	.string	"_unused2"
.LASF22:
	.string	"_IO_save_base"
.LASF12:
	.string	"FILE"
.LASF45:
	.string	"_sbuf"
.LASF52:
	.string	"argtype_t"
.LASF66:
	.string	"_IO_lock_t"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
