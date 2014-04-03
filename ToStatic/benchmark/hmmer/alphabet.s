	.file	"alphabet.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 alphabet.c -mtune=generic -march=x86-64 -g -fverbose-asm
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
	.string	"No such alphabet type"
	.align 8
.LC1:
	.string	"Looks like nucleic acid sequence, hope that's right"
	.align 8
.LC2:
	.string	"Looks like amino acid sequence, hope that's right"
	.align 8
.LC3:
	.string	"Sorry, I can't tell if that's protein or DNA"
	.text
	.globl	DetermineAlphabet
	.type	DetermineAlphabet, @function
DetermineAlphabet:
.LFB2:
	.file 1 "alphabet.c"
	.loc 1 45 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# rseqs, rseqs
	movl	%esi, -44(%rbp)	# nseq, nseq
	.loc 1 52 0
	movl	$0, -4(%rbp)	#, type
	.loc 1 53 0
	movl	$0, -8(%rbp)	#, amino
	movl	-8(%rbp), %eax	# amino, tmp64
	movl	%eax, -12(%rbp)	# tmp64, nucleic
	movl	-12(%rbp), %eax	# nucleic, tmp65
	movl	%eax, -16(%rbp)	# tmp65, other
	.loc 1 54 0
	movl	$0, -20(%rbp)	#, idx
	jmp	.L2	#
.L10:
	.loc 1 55 0
	movl	-20(%rbp), %eax	# idx, tmp66
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6932
	movq	-40(%rbp), %rax	# rseqs, tmp67
	addq	%rdx, %rax	# D.6932, D.6933
	movq	(%rax), %rax	# *_18, D.6934
	movq	%rax, %rdi	# D.6934,
	call	Seqtype	#
	cmpl	$1, %eax	#, D.6935
	je	.L4	#,
	cmpl	$1, %eax	#, D.6935
	jg	.L5	#,
	testl	%eax, %eax	# D.6935
	je	.L6	#,
	jmp	.L3	#
.L5:
	cmpl	$2, %eax	#, D.6935
	je	.L7	#,
	cmpl	$3, %eax	#, D.6935
	je	.L8	#,
	jmp	.L3	#
.L7:
	.loc 1 56 0
	addl	$1, -12(%rbp)	#, nucleic
	jmp	.L9	#
.L4:
	.loc 1 57 0
	addl	$1, -12(%rbp)	#, nucleic
	jmp	.L9	#
.L8:
	.loc 1 58 0
	addl	$1, -8(%rbp)	#, amino
	jmp	.L9	#
.L6:
	.loc 1 59 0
	addl	$1, -16(%rbp)	#, other
	jmp	.L9	#
.L3:
	.loc 1 60 0
	movl	$.LC0, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L9:
	.loc 1 54 0
	addl	$1, -20(%rbp)	#, idx
.L2:
	.loc 1 54 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# idx, tmp68
	cmpl	-44(%rbp), %eax	# nseq, tmp68
	jl	.L10	#,
	.loc 1 64 0 is_stmt 1
	movl	-12(%rbp), %eax	# nucleic, tmp69
	cmpl	-44(%rbp), %eax	# nseq, tmp69
	jne	.L11	#,
	.loc 1 64 0 is_stmt 0 discriminator 1
	movl	$2, -4(%rbp)	#, type
	jmp	.L12	#
.L11:
	.loc 1 65 0 is_stmt 1
	movl	-8(%rbp), %eax	# amino, tmp70
	cmpl	-44(%rbp), %eax	# nseq, tmp70
	jne	.L13	#,
	.loc 1 65 0 is_stmt 0 discriminator 1
	movl	$3, -4(%rbp)	#, type
	jmp	.L12	#
.L13:
	.loc 1 66 0 is_stmt 1
	movl	-12(%rbp), %eax	# nucleic, tmp71
	cmpl	-8(%rbp), %eax	# amino, tmp71
	jle	.L14	#,
	.loc 1 66 0 is_stmt 0 discriminator 1
	movl	-12(%rbp), %eax	# nucleic, tmp72
	cmpl	-16(%rbp), %eax	# other, tmp72
	jle	.L14	#,
	.loc 1 67 0 is_stmt 1
	movl	$.LC1, %edi	#,
	movl	$0, %eax	#,
	call	Warn	#
	.loc 1 68 0
	movl	$2, -4(%rbp)	#, type
	jmp	.L12	#
.L14:
	.loc 1 70 0
	movl	-8(%rbp), %eax	# amino, tmp73
	cmpl	-12(%rbp), %eax	# nucleic, tmp73
	jle	.L15	#,
	.loc 1 70 0 is_stmt 0 discriminator 1
	movl	-8(%rbp), %eax	# amino, tmp74
	cmpl	-16(%rbp), %eax	# other, tmp74
	jle	.L15	#,
	.loc 1 71 0 is_stmt 1
	movl	$.LC2, %edi	#,
	movl	$0, %eax	#,
	call	Warn	#
	.loc 1 72 0
	movl	$3, -4(%rbp)	#, type
	jmp	.L12	#
.L15:
	.loc 1 74 0
	movl	$.LC3, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L12:
	.loc 1 78 0
	movl	-4(%rbp), %eax	# type, tmp75
	movl	%eax, %edi	# tmp75,
	call	SetAlphabet	#
	.loc 1 79 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	DetermineAlphabet, .-DetermineAlphabet
	.section	.rodata
	.align 8
.LC4:
	.string	"An alphabet type conflict occurred.\nYou probably mixed a DNA seq file with a protein model, or vice versa."
.LC5:
	.string	"S"
.LC6:
	.string	"ND"
.LC7:
	.string	"QE"
.LC8:
	.string	"ACDEFGHIKLMNPQRSTVWY"
.LC9:
	.string	"T"
.LC10:
	.string	"ACGT"
.LC11:
	.string	"AG"
.LC12:
	.string	"CT"
.LC13:
	.string	"AC"
.LC14:
	.string	"GT"
.LC15:
	.string	"CG"
.LC16:
	.string	"AT"
.LC17:
	.string	"ACT"
.LC18:
	.string	"CGT"
.LC19:
	.string	"ACG"
.LC20:
	.string	"AGT"
	.align 8
.LC21:
	.string	"No support for non-nucleic or protein alphabets"
	.text
	.globl	SetAlphabet
	.type	SetAlphabet, @function
SetAlphabet:
.LFB3:
	.loc 1 89 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, -20(%rbp)	# type, type
	.loc 1 109 0
	movl	Alphabet_type(%rip), %eax	# Alphabet_type, Alphabet_type.0
	testl	%eax, %eax	# Alphabet_type.0
	je	.L17	#,
	.loc 1 111 0
	movl	Alphabet_type(%rip), %eax	# Alphabet_type, Alphabet_type.1
	cmpl	%eax, -20(%rbp)	# Alphabet_type.1, type
	je	.L18	#,
	.loc 1 112 0
	movl	$.LC4, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
	.loc 1 118 0
	jmp	.L16	#
.L18:
	jmp	.L16	#
.L17:
	.loc 1 121 0
	movl	-20(%rbp), %eax	# type, type
	cmpl	$2, %eax	#, type
	je	.L21	#,
	cmpl	$3, %eax	#, type
	jne	.L31	#,
	.loc 1 123 0
	movl	-20(%rbp), %eax	# type, tmp72
	movl	%eax, Alphabet_type(%rip)	# tmp72, Alphabet_type
	.loc 1 125 0
	movabsq	$5280548930227290945, %rax	#, tmp96
	movq	%rax, Alphabet(%rip)	# tmp96, MEM[(char * {ref-all})&Alphabet]
	movabsq	$6003950658591214667, %rax	#, tmp97
	movq	%rax, Alphabet+8(%rip)	# tmp97, MEM[(char * {ref-all})&Alphabet]
	movabsq	$6366473957580166740, %rax	#, tmp98
	movq	%rax, Alphabet+16(%rip)	# tmp98, MEM[(char * {ref-all})&Alphabet]
	movb	$0, Alphabet+24(%rip)	#, MEM[(char * {ref-all})&Alphabet]
	.loc 1 126 0
	movl	$20, Alphabet_size(%rip)	#, Alphabet_size
	.loc 1 127 0
	movl	$24, Alphabet_iupac(%rip)	#, Alphabet_iupac
	.loc 1 128 0
	movl	$0, -4(%rbp)	#, x
	jmp	.L23	#
.L24:
	.loc 1 129 0 discriminator 2
	movl	Alphabet_size(%rip), %eax	# Alphabet_size, Alphabet_size.2
	movslq	%eax, %rcx	# Alphabet_size.2, D.6941
	movl	-4(%rbp), %eax	# x, tmp75
	movslq	%eax, %rdx	# tmp75, tmp74
	movq	%rdx, %rax	# tmp74, tmp76
	salq	$2, %rax	#, tmp76
	addq	%rdx, %rax	# tmp74, tmp76
	salq	$2, %rax	#, tmp77
	addq	$Degenerate, %rax	#, D.6942
	movq	%rcx, %rdx	# D.6941,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.6942,
	call	memset	#
	.loc 1 128 0 discriminator 2
	addl	$1, -4(%rbp)	#, x
.L23:
	.loc 1 128 0 is_stmt 0 discriminator 1
	movl	Alphabet_iupac(%rip), %eax	# Alphabet_iupac, Alphabet_iupac.3
	cmpl	%eax, -4(%rbp)	# Alphabet_iupac.3, x
	jl	.L24	#,
	.loc 1 131 0 is_stmt 1
	movl	$0, -4(%rbp)	#, x
	jmp	.L25	#
.L26:
	.loc 1 132 0 discriminator 2
	movl	-4(%rbp), %eax	# x, tmp79
	movslq	%eax, %rdx	# tmp79, tmp78
	movq	%rdx, %rax	# tmp78, tmp80
	salq	$2, %rax	#, tmp80
	addq	%rdx, %rax	# tmp78, tmp80
	salq	$2, %rax	#, tmp80
	addq	%rdx, %rax	# tmp78, tmp80
	addq	$Degenerate, %rax	#, tmp81
	movb	$1, (%rax)	#, Degenerate
	.loc 1 133 0 discriminator 2
	movl	-4(%rbp), %eax	# x, tmp83
	cltq
	movl	$1, DegenCount(,%rax,4)	#, DegenCount
	.loc 1 131 0 discriminator 2
	addl	$1, -4(%rbp)	#, x
.L25:
	.loc 1 131 0 is_stmt 0 discriminator 1
	movl	Alphabet_size(%rip), %eax	# Alphabet_size, Alphabet_size.4
	cmpl	%eax, -4(%rbp)	# Alphabet_size.4, x
	jl	.L26	#,
	.loc 1 135 0 is_stmt 1
	movl	$.LC5, %esi	#,
	movl	$85, %edi	#,
	call	set_degenerate	#
	.loc 1 136 0
	movl	$.LC6, %esi	#,
	movl	$66, %edi	#,
	call	set_degenerate	#
	.loc 1 137 0
	movl	$.LC7, %esi	#,
	movl	$90, %edi	#,
	call	set_degenerate	#
	.loc 1 138 0
	movl	$.LC8, %esi	#,
	movl	$88, %edi	#,
	call	set_degenerate	#
	.loc 1 139 0
	jmp	.L16	#
.L21:
	.loc 1 141 0
	movl	-20(%rbp), %eax	# type, tmp84
	movl	%eax, Alphabet_type(%rip)	# tmp84, Alphabet_type
	.loc 1 143 0
	movabsq	$6436292945859003201, %rax	#, tmp99
	movq	%rax, Alphabet(%rip)	# tmp99, MEM[(void *)&Alphabet]
	movabsq	$4924196121046371149, %rax	#, tmp100
	movq	%rax, Alphabet+8(%rip)	# tmp100, MEM[(void *)&Alphabet]
	movw	$88, Alphabet+16(%rip)	#, MEM[(void *)&Alphabet]
	.loc 1 144 0
	movl	$4, Alphabet_size(%rip)	#, Alphabet_size
	.loc 1 145 0
	movl	$17, Alphabet_iupac(%rip)	#, Alphabet_iupac
	.loc 1 146 0
	movl	$0, -4(%rbp)	#, x
	jmp	.L27	#
.L28:
	.loc 1 147 0 discriminator 2
	movl	Alphabet_size(%rip), %eax	# Alphabet_size, Alphabet_size.5
	movslq	%eax, %rcx	# Alphabet_size.5, D.6941
	movl	-4(%rbp), %eax	# x, tmp87
	movslq	%eax, %rdx	# tmp87, tmp86
	movq	%rdx, %rax	# tmp86, tmp88
	salq	$2, %rax	#, tmp88
	addq	%rdx, %rax	# tmp86, tmp88
	salq	$2, %rax	#, tmp89
	addq	$Degenerate, %rax	#, D.6942
	movq	%rcx, %rdx	# D.6941,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# D.6942,
	call	memset	#
	.loc 1 146 0 discriminator 2
	addl	$1, -4(%rbp)	#, x
.L27:
	.loc 1 146 0 is_stmt 0 discriminator 1
	movl	Alphabet_iupac(%rip), %eax	# Alphabet_iupac, Alphabet_iupac.6
	cmpl	%eax, -4(%rbp)	# Alphabet_iupac.6, x
	jl	.L28	#,
	.loc 1 149 0 is_stmt 1
	movl	$0, -4(%rbp)	#, x
	jmp	.L29	#
.L30:
	.loc 1 150 0 discriminator 2
	movl	-4(%rbp), %eax	# x, tmp91
	movslq	%eax, %rdx	# tmp91, tmp90
	movq	%rdx, %rax	# tmp90, tmp92
	salq	$2, %rax	#, tmp92
	addq	%rdx, %rax	# tmp90, tmp92
	salq	$2, %rax	#, tmp92
	addq	%rdx, %rax	# tmp90, tmp92
	addq	$Degenerate, %rax	#, tmp93
	movb	$1, (%rax)	#, Degenerate
	.loc 1 151 0 discriminator 2
	movl	-4(%rbp), %eax	# x, tmp95
	cltq
	movl	$1, DegenCount(,%rax,4)	#, DegenCount
	.loc 1 149 0 discriminator 2
	addl	$1, -4(%rbp)	#, x
.L29:
	.loc 1 149 0 is_stmt 0 discriminator 1
	movl	Alphabet_size(%rip), %eax	# Alphabet_size, Alphabet_size.7
	cmpl	%eax, -4(%rbp)	# Alphabet_size.7, x
	jl	.L30	#,
	.loc 1 153 0 is_stmt 1
	movl	$.LC9, %esi	#,
	movl	$85, %edi	#,
	call	set_degenerate	#
	.loc 1 154 0
	movl	$.LC10, %esi	#,
	movl	$78, %edi	#,
	call	set_degenerate	#
	.loc 1 155 0
	movl	$.LC10, %esi	#,
	movl	$88, %edi	#,
	call	set_degenerate	#
	.loc 1 156 0
	movl	$.LC11, %esi	#,
	movl	$82, %edi	#,
	call	set_degenerate	#
	.loc 1 157 0
	movl	$.LC12, %esi	#,
	movl	$89, %edi	#,
	call	set_degenerate	#
	.loc 1 158 0
	movl	$.LC13, %esi	#,
	movl	$77, %edi	#,
	call	set_degenerate	#
	.loc 1 159 0
	movl	$.LC14, %esi	#,
	movl	$75, %edi	#,
	call	set_degenerate	#
	.loc 1 160 0
	movl	$.LC15, %esi	#,
	movl	$83, %edi	#,
	call	set_degenerate	#
	.loc 1 161 0
	movl	$.LC16, %esi	#,
	movl	$87, %edi	#,
	call	set_degenerate	#
	.loc 1 162 0
	movl	$.LC17, %esi	#,
	movl	$72, %edi	#,
	call	set_degenerate	#
	.loc 1 163 0
	movl	$.LC18, %esi	#,
	movl	$66, %edi	#,
	call	set_degenerate	#
	.loc 1 164 0
	movl	$.LC19, %esi	#,
	movl	$86, %edi	#,
	call	set_degenerate	#
	.loc 1 165 0
	movl	$.LC20, %esi	#,
	movl	$68, %edi	#,
	call	set_degenerate	#
	.loc 1 166 0
	jmp	.L16	#
.L31:
	.loc 1 167 0
	movl	$.LC21, %edi	#,
	movl	$0, %eax	#,
	call	Die	#
.L16:
	.loc 1 174 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	SetAlphabet, .-SetAlphabet
	.globl	SymbolIndex
	.type	SymbolIndex, @function
SymbolIndex:
.LFB4:
	.loc 1 185 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movl	%edi, %eax	# sym, tmp70
	movb	%al, -20(%rbp)	# tmp70, sym
	.loc 1 187 0
	movsbl	-20(%rbp), %eax	# sym, D.6961
	movl	%eax, %edi	# D.6961,
	call	toupper	#
	movsbl	%al, %eax	# D.6962, D.6961
	movl	%eax, %esi	# D.6961,
	movl	$Alphabet, %edi	#,
	call	strchr	#
	movq	%rax, -8(%rbp)	# tmp71, s
	cmpq	$0, -8(%rbp)	#, s
	jne	.L33	#,
	.loc 1 188 0
	movl	Alphabet_iupac(%rip), %eax	# Alphabet_iupac, Alphabet_iupac.9
	.loc 1 187 0
	subl	$1, %eax	#, iftmp.8
	jmp	.L34	#
.L33:
	.loc 1 188 0 discriminator 1
	movq	-8(%rbp), %rdx	# s, s.10
	movl	$Alphabet, %eax	#, Alphabet.11
	subq	%rax, %rdx	# Alphabet.11, D.6963
	movq	%rdx, %rax	# D.6963, D.6963
.L34:
	.loc 1 189 0 discriminator 2
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	SymbolIndex, .-SymbolIndex
	.section	.rodata
.LC22:
	.string	"alphabet.c"
	.text
	.globl	DigitizeSequence
	.type	DigitizeSequence, @function
DigitizeSequence:
.LFB5:
	.loc 1 211 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# seq, seq
	movl	%esi, -44(%rbp)	# L, L
	.loc 1 215 0
	movl	-44(%rbp), %eax	# L, tmp78
	addl	$2, %eax	#, D.6964
	cltq
	movq	%rax, %rdx	# D.6965,
	movl	$215, %esi	#,
	movl	$.LC22, %edi	#,
	call	sre_malloc	#
	movq	%rax, -24(%rbp)	# tmp79, dsq
	.loc 1 216 0
	movl	-44(%rbp), %eax	# L, tmp80
	cltq
	leaq	1(%rax), %rdx	#, D.6966
	movq	-24(%rbp), %rax	# dsq, tmp81
	addq	%rdx, %rax	# D.6966, D.6967
	movl	Alphabet_iupac(%rip), %edx	# Alphabet_iupac, Alphabet_iupac.12
	movb	%dl, (%rax)	# D.6968, *_8
	movzbl	(%rax), %edx	# *_8, D.6968
	movq	-24(%rbp), %rax	# dsq, tmp82
	movb	%dl, (%rax)	# D.6968, *dsq_5
	.loc 1 217 0
	movl	$1, -28(%rbp)	#, i
	jmp	.L37	#
.L38:
	.loc 1 218 0 discriminator 2
	movl	-28(%rbp), %eax	# i, tmp83
	movslq	%eax, %rdx	# tmp83, D.6966
	movq	-24(%rbp), %rax	# dsq, tmp84
	leaq	(%rdx,%rax), %rbx	#, D.6967
	movl	-28(%rbp), %eax	# i, tmp85
	cltq
	leaq	-1(%rax), %rdx	#, D.6966
	movq	-40(%rbp), %rax	# seq, tmp86
	addq	%rdx, %rax	# D.6966, D.6967
	movzbl	(%rax), %eax	# *_18, D.6968
	movsbl	%al, %eax	# D.6968, D.6964
	movl	%eax, %edi	# D.6964,
	call	SymbolIndex	#
	movb	%al, (%rbx)	# D.6968, *_14
	.loc 1 217 0 discriminator 2
	addl	$1, -28(%rbp)	#, i
.L37:
	.loc 1 217 0 is_stmt 0 discriminator 1
	movl	-28(%rbp), %eax	# i, tmp87
	cmpl	-44(%rbp), %eax	# L, tmp87
	jle	.L38	#,
	.loc 1 219 0 is_stmt 1
	movq	-24(%rbp), %rax	# dsq, D.6967
	.loc 1 220 0
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	DigitizeSequence, .-DigitizeSequence
	.globl	DedigitizeSequence
	.type	DedigitizeSequence, @function
DedigitizeSequence:
.LFB6:
	.loc 1 231 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# dsq, dsq
	movl	%esi, -28(%rbp)	# L, L
	.loc 1 235 0
	movl	-28(%rbp), %eax	# L, tmp73
	addl	$1, %eax	#, D.6970
	cltq
	movq	%rax, %rdx	# D.6971,
	movl	$235, %esi	#,
	movl	$.LC22, %edi	#,
	call	sre_malloc	#
	movq	%rax, -8(%rbp)	# tmp74, seq
	.loc 1 236 0
	movl	$0, -12(%rbp)	#, i
	jmp	.L41	#
.L42:
	.loc 1 237 0 discriminator 2
	movl	-12(%rbp), %eax	# i, tmp75
	movslq	%eax, %rdx	# tmp75, D.6972
	movq	-8(%rbp), %rax	# seq, tmp76
	addq	%rax, %rdx	# tmp76, D.6973
	movl	-12(%rbp), %eax	# i, tmp77
	cltq
	leaq	1(%rax), %rcx	#, D.6972
	movq	-24(%rbp), %rax	# dsq, tmp78
	addq	%rcx, %rax	# D.6972, D.6973
	movzbl	(%rax), %eax	# *_12, D.6974
	movsbl	%al, %eax	# D.6974, D.6970
	cltq
	movzbl	Alphabet(%rax), %eax	# Alphabet, D.6974
	movb	%al, (%rdx)	# D.6974, *_8
	.loc 1 236 0 discriminator 2
	addl	$1, -12(%rbp)	#, i
.L41:
	.loc 1 236 0 is_stmt 0 discriminator 1
	movl	-12(%rbp), %eax	# i, tmp80
	cmpl	-28(%rbp), %eax	# L, tmp80
	jl	.L42	#,
	.loc 1 238 0 is_stmt 1
	movl	-28(%rbp), %eax	# L, tmp81
	movslq	%eax, %rdx	# tmp81, D.6972
	movq	-8(%rbp), %rax	# seq, tmp82
	addq	%rdx, %rax	# D.6972, D.6973
	movb	$0, (%rax)	#, *_18
	.loc 1 239 0
	movq	-8(%rbp), %rax	# seq, D.6973
	.loc 1 240 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	DedigitizeSequence, .-DedigitizeSequence
	.globl	DigitizeAlignment
	.type	DigitizeAlignment, @function
DigitizeAlignment:
.LFB7:
	.loc 1 258 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# msa, msa
	movq	%rsi, -64(%rbp)	# ret_dsqs, ret_dsqs
	.loc 1 264 0
	movq	-56(%rbp), %rax	# msa, tmp143
	movl	28(%rax), %eax	# msa_5(D)->nseq, D.6975
	cltq
	salq	$3, %rax	#, D.6976
	movq	%rax, %rdx	# D.6976,
	movl	$264, %esi	#,
	movl	$.LC22, %edi	#,
	call	sre_malloc	#
	movq	%rax, -24(%rbp)	# tmp144, dsq
	.loc 1 265 0
	movl	$0, -36(%rbp)	#, idx
	jmp	.L45	#
.L49:
	.loc 1 266 0
	movl	-36(%rbp), %eax	# idx, tmp145
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6976
	movq	-24(%rbp), %rax	# dsq, tmp146
	leaq	(%rdx,%rax), %rbx	#, D.6977
	movq	-56(%rbp), %rax	# msa, tmp147
	movl	24(%rax), %eax	# msa_5(D)->alen, D.6975
	addl	$2, %eax	#, D.6975
	cltq
	movq	%rax, %rdx	# D.6976,
	movl	$266, %esi	#,
	movl	$.LC22, %edi	#,
	call	sre_malloc	#
	movq	%rax, (%rbx)	# D.6978, *_14
	.loc 1 268 0
	movl	-36(%rbp), %eax	# idx, tmp148
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6976
	movq	-24(%rbp), %rax	# dsq, tmp149
	addq	%rdx, %rax	# D.6976, D.6977
	movq	(%rax), %rax	# *_21, D.6979
	movl	Alphabet_iupac(%rip), %edx	# Alphabet_iupac, Alphabet_iupac.13
	movb	%dl, (%rax)	# D.6980, *_22
	.loc 1 270 0
	movl	$0, -28(%rbp)	#, apos
	movl	$1, -32(%rbp)	#, dpos
	jmp	.L46	#
.L48:
	.loc 1 271 0
	movq	-56(%rbp), %rax	# msa, tmp150
	movq	(%rax), %rax	# msa_5(D)->aseq, D.6977
	movl	-36(%rbp), %edx	# idx, tmp151
	movslq	%edx, %rdx	# tmp151, D.6976
	salq	$3, %rdx	#, D.6976
	addq	%rdx, %rax	# D.6976, D.6977
	movq	(%rax), %rdx	# *_31, D.6979
	movl	-28(%rbp), %eax	# apos, tmp152
	cltq
	addq	%rdx, %rax	# D.6979, D.6979
	movzbl	(%rax), %eax	# *_34, D.6980
	cmpb	$32, %al	#, D.6980
	je	.L47	#,
	.loc 1 271 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# msa, tmp153
	movq	(%rax), %rax	# msa_5(D)->aseq, D.6977
	movl	-36(%rbp), %edx	# idx, tmp154
	movslq	%edx, %rdx	# tmp154, D.6976
	salq	$3, %rdx	#, D.6976
	addq	%rdx, %rax	# D.6976, D.6977
	movq	(%rax), %rdx	# *_39, D.6979
	movl	-28(%rbp), %eax	# apos, tmp155
	cltq
	addq	%rdx, %rax	# D.6979, D.6979
	movzbl	(%rax), %eax	# *_42, D.6980
	cmpb	$46, %al	#, D.6980
	je	.L47	#,
	movq	-56(%rbp), %rax	# msa, tmp156
	movq	(%rax), %rax	# msa_5(D)->aseq, D.6977
	movl	-36(%rbp), %edx	# idx, tmp157
	movslq	%edx, %rdx	# tmp157, D.6976
	salq	$3, %rdx	#, D.6976
	addq	%rdx, %rax	# D.6976, D.6977
	movq	(%rax), %rdx	# *_47, D.6979
	movl	-28(%rbp), %eax	# apos, tmp158
	cltq
	addq	%rdx, %rax	# D.6979, D.6979
	movzbl	(%rax), %eax	# *_50, D.6980
	cmpb	$95, %al	#, D.6980
	je	.L47	#,
	movq	-56(%rbp), %rax	# msa, tmp159
	movq	(%rax), %rax	# msa_5(D)->aseq, D.6977
	movl	-36(%rbp), %edx	# idx, tmp160
	movslq	%edx, %rdx	# tmp160, D.6976
	salq	$3, %rdx	#, D.6976
	addq	%rdx, %rax	# D.6976, D.6977
	movq	(%rax), %rdx	# *_55, D.6979
	movl	-28(%rbp), %eax	# apos, tmp161
	cltq
	addq	%rdx, %rax	# D.6979, D.6979
	movzbl	(%rax), %eax	# *_58, D.6980
	cmpb	$45, %al	#, D.6980
	je	.L47	#,
	movq	-56(%rbp), %rax	# msa, tmp162
	movq	(%rax), %rax	# msa_5(D)->aseq, D.6977
	movl	-36(%rbp), %edx	# idx, tmp163
	movslq	%edx, %rdx	# tmp163, D.6976
	salq	$3, %rdx	#, D.6976
	addq	%rdx, %rax	# D.6976, D.6977
	movq	(%rax), %rdx	# *_63, D.6979
	movl	-28(%rbp), %eax	# apos, tmp164
	cltq
	addq	%rdx, %rax	# D.6979, D.6979
	movzbl	(%rax), %eax	# *_66, D.6980
	cmpb	$126, %al	#, D.6980
	je	.L47	#,
	.loc 1 272 0 is_stmt 1
	movl	-36(%rbp), %eax	# idx, tmp165
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6976
	movq	-24(%rbp), %rax	# dsq, tmp166
	addq	%rdx, %rax	# D.6976, D.6977
	movq	(%rax), %rcx	# *_70, D.6979
	movl	-32(%rbp), %eax	# dpos, dpos.14
	leal	1(%rax), %edx	#, tmp167
	movl	%edx, -32(%rbp)	# tmp167, dpos
	cltq
	leaq	(%rcx,%rax), %rbx	#, D.6979
	movq	-56(%rbp), %rax	# msa, tmp168
	movq	(%rax), %rax	# msa_5(D)->aseq, D.6977
	movl	-36(%rbp), %edx	# idx, tmp169
	movslq	%edx, %rdx	# tmp169, D.6976
	salq	$3, %rdx	#, D.6976
	addq	%rdx, %rax	# D.6976, D.6977
	movq	(%rax), %rdx	# *_79, D.6979
	movl	-28(%rbp), %eax	# apos, tmp170
	cltq
	addq	%rdx, %rax	# D.6979, D.6979
	movzbl	(%rax), %eax	# *_82, D.6980
	movsbl	%al, %eax	# D.6980, D.6975
	movl	%eax, %edi	# D.6975,
	call	SymbolIndex	#
	movb	%al, (%rbx)	# D.6980, *_75
.L47:
	.loc 1 270 0
	addl	$1, -28(%rbp)	#, apos
.L46:
	.loc 1 270 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# msa, tmp171
	movl	24(%rax), %eax	# msa_5(D)->alen, D.6975
	cmpl	-28(%rbp), %eax	# apos, D.6975
	jg	.L48	#,
	.loc 1 274 0 is_stmt 1
	movl	-36(%rbp), %eax	# idx, tmp172
	cltq
	leaq	0(,%rax,8), %rdx	#, D.6976
	movq	-24(%rbp), %rax	# dsq, tmp173
	addq	%rdx, %rax	# D.6976, D.6977
	movq	(%rax), %rdx	# *_90, D.6979
	movl	-32(%rbp), %eax	# dpos, tmp174
	cltq
	addq	%rax, %rdx	# D.6981, D.6979
	movl	Alphabet_iupac(%rip), %eax	# Alphabet_iupac, Alphabet_iupac.15
	movb	%al, (%rdx)	# D.6980, *_93
	.loc 1 265 0
	addl	$1, -36(%rbp)	#, idx
.L45:
	.loc 1 265 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax	# msa, tmp175
	movl	28(%rax), %eax	# msa_5(D)->nseq, D.6975
	cmpl	-36(%rbp), %eax	# idx, D.6975
	jg	.L49	#,
	.loc 1 276 0 is_stmt 1
	movq	-64(%rbp), %rax	# ret_dsqs, tmp176
	movq	-24(%rbp), %rdx	# dsq, tmp177
	movq	%rdx, (%rax)	# tmp177, *ret_dsqs_97(D)
	.loc 1 277 0
	addq	$56, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	DigitizeAlignment, .-DigitizeAlignment
	.globl	P7CountSymbol
	.type	P7CountSymbol, @function
P7CountSymbol:
.LFB8:
	.loc 1 294 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# counters, counters
	movl	%esi, %eax	# symidx, tmp84
	movss	%xmm0, -32(%rbp)	# wt, wt
	movb	%al, -28(%rbp)	# tmp84, symidx
	.loc 1 297 0
	movsbl	-28(%rbp), %edx	# symidx, D.6982
	movl	Alphabet_size(%rip), %eax	# Alphabet_size, Alphabet_size.16
	cmpl	%eax, %edx	# Alphabet_size.16, D.6982
	jge	.L51	#,
	.loc 1 298 0
	movsbq	-28(%rbp), %rax	# symidx, D.6983
	leaq	0(,%rax,4), %rdx	#, D.6983
	movq	-24(%rbp), %rax	# counters, tmp85
	addq	%rdx, %rax	# D.6983, D.6984
	movsbq	-28(%rbp), %rdx	# symidx, D.6983
	leaq	0(,%rdx,4), %rcx	#, D.6983
	movq	-24(%rbp), %rdx	# counters, tmp86
	addq	%rcx, %rdx	# D.6983, D.6984
	movss	(%rdx), %xmm0	# *_11, D.6985
	addss	-32(%rbp), %xmm0	# wt, D.6985
	movss	%xmm0, (%rax)	# D.6985, *_8
	jmp	.L50	#
.L51:
	.loc 1 300 0
	movl	$0, -4(%rbp)	#, x
	jmp	.L53	#
.L55:
	.loc 1 301 0
	movsbl	-28(%rbp), %eax	# symidx, D.6982
	movl	-4(%rbp), %edx	# x, tmp88
	movslq	%edx, %rcx	# tmp88, tmp87
	movslq	%eax, %rdx	# D.6982, tmp89
	movq	%rdx, %rax	# tmp89, tmp90
	salq	$2, %rax	#, tmp90
	addq	%rdx, %rax	# tmp89, tmp90
	salq	$2, %rax	#, tmp91
	addq	%rcx, %rax	# tmp87, tmp92
	addq	$Degenerate, %rax	#, tmp93
	movzbl	(%rax), %eax	# Degenerate, D.6986
	testb	%al, %al	# D.6986
	je	.L54	#,
	.loc 1 302 0
	movl	-4(%rbp), %eax	# x, tmp94
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6983
	movq	-24(%rbp), %rax	# counters, tmp95
	addq	%rax, %rdx	# tmp95, D.6984
	movl	-4(%rbp), %eax	# x, tmp96
	cltq
	leaq	0(,%rax,4), %rcx	#, D.6983
	movq	-24(%rbp), %rax	# counters, tmp97
	addq	%rcx, %rax	# D.6983, D.6984
	movss	(%rax), %xmm2	# *_24, D.6985
	movsbl	-28(%rbp), %eax	# symidx, D.6982
	cltq
	movl	DegenCount(,%rax,4), %eax	# DegenCount, D.6982
	cvtsi2ss	%eax, %xmm0	# D.6982, D.6985
	movss	-32(%rbp), %xmm1	# wt, tmp99
	divss	%xmm0, %xmm1	# D.6985, D.6985
	movaps	%xmm1, %xmm0	# D.6985, D.6985
	addss	%xmm2, %xmm0	# D.6985, D.6985
	movss	%xmm0, (%rdx)	# D.6985, *_21
.L54:
	.loc 1 300 0
	addl	$1, -4(%rbp)	#, x
.L53:
	.loc 1 300 0 is_stmt 0 discriminator 1
	movl	Alphabet_size(%rip), %eax	# Alphabet_size, Alphabet_size.17
	cmpl	%eax, -4(%rbp)	# Alphabet_size.17, x
	jl	.L55	#,
.L50:
	.loc 1 304 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	P7CountSymbol, .-P7CountSymbol
	.globl	DefaultGeneticCode
	.type	DefaultGeneticCode, @function
DefaultGeneticCode:
.LFB9:
	.loc 1 321 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# aacode, aacode
	.loc 1 324 0
	movl	$0, -20(%rbp)	#, x
	jmp	.L57	#
.L60:
	.loc 1 325 0
	movl	-20(%rbp), %eax	# x, tmp76
	cltq
	movq	stdcode1(,%rax,8), %rax	# stdcode1, D.6987
	movzbl	(%rax), %eax	# *_3, D.6988
	cmpb	$42, %al	#, D.6988
	jne	.L58	#,
	.loc 1 325 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax	# x, tmp77
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6989
	movq	-40(%rbp), %rax	# aacode, tmp78
	addq	%rdx, %rax	# D.6989, D.6990
	movl	$-1, (%rax)	#, *_8
	jmp	.L59	#
.L58:
	.loc 1 326 0 is_stmt 1
	movl	-20(%rbp), %eax	# x, tmp79
	cltq
	leaq	0(,%rax,4), %rdx	#, D.6989
	movq	-40(%rbp), %rax	# aacode, tmp80
	leaq	(%rdx,%rax), %rbx	#, D.6990
	movl	-20(%rbp), %eax	# x, tmp82
	cltq
	movq	stdcode1(,%rax,8), %rax	# stdcode1, D.6987
	movzbl	(%rax), %eax	# *_12, D.6988
	movsbl	%al, %eax	# D.6988, D.6991
	movl	%eax, %esi	# D.6991,
	movl	$Alphabet, %edi	#,
	call	strchr	#
	movq	%rax, %rdx	# D.6987, D.6992
	movl	$Alphabet, %eax	#, Alphabet.18
	subq	%rax, %rdx	# Alphabet.18, D.6992
	movq	%rdx, %rax	# D.6992, D.6992
	movl	%eax, (%rbx)	# D.6991, *_11
.L59:
	.loc 1 324 0
	addl	$1, -20(%rbp)	#, x
.L57:
	.loc 1 324 0 is_stmt 0 discriminator 1
	cmpl	$63, -20(%rbp)	#, x
	jle	.L60	#,
	.loc 1 328 0 is_stmt 1
	addq	$40, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	DefaultGeneticCode, .-DefaultGeneticCode
	.globl	DefaultCodonBias
	.type	DefaultCodonBias, @function
DefaultCodonBias:
.LFB10:
	.loc 1 344 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# codebias, codebias
	.loc 1 345 0
	movq	-8(%rbp), %rdx	# codebias, tmp122
	movl	.LC23(%rip), %eax	#, tmp123
	movl	%eax, (%rdx)	# tmp123, *codebias_1(D)
	.loc 1 346 0
	movq	-8(%rbp), %rax	# codebias, tmp124
	leaq	4(%rax), %rdx	#, D.6993
	movl	.LC23(%rip), %eax	#, tmp125
	movl	%eax, (%rdx)	# tmp125, *_2
	.loc 1 347 0
	movq	-8(%rbp), %rax	# codebias, tmp126
	leaq	8(%rax), %rdx	#, D.6993
	movl	.LC23(%rip), %eax	#, tmp127
	movl	%eax, (%rdx)	# tmp127, *_3
	.loc 1 348 0
	movq	-8(%rbp), %rax	# codebias, tmp128
	leaq	12(%rax), %rdx	#, D.6993
	movl	.LC23(%rip), %eax	#, tmp129
	movl	%eax, (%rdx)	# tmp129, *_4
	.loc 1 349 0
	movq	-8(%rbp), %rax	# codebias, tmp130
	leaq	16(%rax), %rdx	#, D.6993
	movl	.LC24(%rip), %eax	#, tmp131
	movl	%eax, (%rdx)	# tmp131, *_5
	.loc 1 350 0
	movq	-8(%rbp), %rax	# codebias, tmp132
	leaq	20(%rax), %rdx	#, D.6993
	movl	.LC24(%rip), %eax	#, tmp133
	movl	%eax, (%rdx)	# tmp133, *_6
	.loc 1 351 0
	movq	-8(%rbp), %rax	# codebias, tmp134
	leaq	24(%rax), %rdx	#, D.6993
	movl	.LC24(%rip), %eax	#, tmp135
	movl	%eax, (%rdx)	# tmp135, *_7
	.loc 1 352 0
	movq	-8(%rbp), %rax	# codebias, tmp136
	leaq	28(%rax), %rdx	#, D.6993
	movl	.LC24(%rip), %eax	#, tmp137
	movl	%eax, (%rdx)	# tmp137, *_8
	.loc 1 353 0
	movq	-8(%rbp), %rax	# codebias, tmp138
	leaq	32(%rax), %rdx	#, D.6993
	movl	.LC25(%rip), %eax	#, tmp139
	movl	%eax, (%rdx)	# tmp139, *_9
	.loc 1 354 0
	movq	-8(%rbp), %rax	# codebias, tmp140
	leaq	36(%rax), %rdx	#, D.6993
	movl	.LC25(%rip), %eax	#, tmp141
	movl	%eax, (%rdx)	# tmp141, *_10
	.loc 1 355 0
	movq	-8(%rbp), %rax	# codebias, tmp142
	leaq	40(%rax), %rdx	#, D.6993
	movl	.LC25(%rip), %eax	#, tmp143
	movl	%eax, (%rdx)	# tmp143, *_11
	.loc 1 356 0
	movq	-8(%rbp), %rax	# codebias, tmp144
	leaq	44(%rax), %rdx	#, D.6993
	movl	.LC25(%rip), %eax	#, tmp145
	movl	%eax, (%rdx)	# tmp145, *_12
	.loc 1 357 0
	movq	-8(%rbp), %rax	# codebias, tmp146
	leaq	48(%rax), %rdx	#, D.6993
	movl	.LC26(%rip), %eax	#, tmp147
	movl	%eax, (%rdx)	# tmp147, *_13
	.loc 1 358 0
	movq	-8(%rbp), %rax	# codebias, tmp148
	leaq	52(%rax), %rdx	#, D.6993
	movl	.LC26(%rip), %eax	#, tmp149
	movl	%eax, (%rdx)	# tmp149, *_14
	.loc 1 359 0
	movq	-8(%rbp), %rax	# codebias, tmp150
	leaq	56(%rax), %rdx	#, D.6993
	movl	.LC27(%rip), %eax	#, tmp151
	movl	%eax, (%rdx)	# tmp151, *_15
	.loc 1 360 0
	movq	-8(%rbp), %rax	# codebias, tmp152
	leaq	60(%rax), %rdx	#, D.6993
	movl	.LC26(%rip), %eax	#, tmp153
	movl	%eax, (%rdx)	# tmp153, *_16
	.loc 1 361 0
	movq	-8(%rbp), %rax	# codebias, tmp154
	leaq	64(%rax), %rdx	#, D.6993
	movl	.LC23(%rip), %eax	#, tmp155
	movl	%eax, (%rdx)	# tmp155, *_17
	.loc 1 362 0
	movq	-8(%rbp), %rax	# codebias, tmp156
	leaq	68(%rax), %rdx	#, D.6993
	movl	.LC23(%rip), %eax	#, tmp157
	movl	%eax, (%rdx)	# tmp157, *_18
	.loc 1 363 0
	movq	-8(%rbp), %rax	# codebias, tmp158
	leaq	72(%rax), %rdx	#, D.6993
	movl	.LC23(%rip), %eax	#, tmp159
	movl	%eax, (%rdx)	# tmp159, *_19
	.loc 1 364 0
	movq	-8(%rbp), %rax	# codebias, tmp160
	leaq	76(%rax), %rdx	#, D.6993
	movl	.LC23(%rip), %eax	#, tmp161
	movl	%eax, (%rdx)	# tmp161, *_20
	.loc 1 365 0
	movq	-8(%rbp), %rax	# codebias, tmp162
	leaq	80(%rax), %rdx	#, D.6993
	movl	.LC24(%rip), %eax	#, tmp163
	movl	%eax, (%rdx)	# tmp163, *_21
	.loc 1 366 0
	movq	-8(%rbp), %rax	# codebias, tmp164
	leaq	84(%rax), %rdx	#, D.6993
	movl	.LC24(%rip), %eax	#, tmp165
	movl	%eax, (%rdx)	# tmp165, *_22
	.loc 1 367 0
	movq	-8(%rbp), %rax	# codebias, tmp166
	leaq	88(%rax), %rdx	#, D.6993
	movl	.LC24(%rip), %eax	#, tmp167
	movl	%eax, (%rdx)	# tmp167, *_23
	.loc 1 368 0
	movq	-8(%rbp), %rax	# codebias, tmp168
	leaq	92(%rax), %rdx	#, D.6993
	movl	.LC24(%rip), %eax	#, tmp169
	movl	%eax, (%rdx)	# tmp169, *_24
	.loc 1 369 0
	movq	-8(%rbp), %rax	# codebias, tmp170
	leaq	96(%rax), %rdx	#, D.6993
	movl	.LC25(%rip), %eax	#, tmp171
	movl	%eax, (%rdx)	# tmp171, *_25
	.loc 1 370 0
	movq	-8(%rbp), %rax	# codebias, tmp172
	leaq	100(%rax), %rdx	#, D.6993
	movl	.LC25(%rip), %eax	#, tmp173
	movl	%eax, (%rdx)	# tmp173, *_26
	.loc 1 371 0
	movq	-8(%rbp), %rax	# codebias, tmp174
	leaq	104(%rax), %rdx	#, D.6993
	movl	.LC25(%rip), %eax	#, tmp175
	movl	%eax, (%rdx)	# tmp175, *_27
	.loc 1 372 0
	movq	-8(%rbp), %rax	# codebias, tmp176
	leaq	108(%rax), %rdx	#, D.6993
	movl	.LC25(%rip), %eax	#, tmp177
	movl	%eax, (%rdx)	# tmp177, *_28
	.loc 1 373 0
	movq	-8(%rbp), %rax	# codebias, tmp178
	leaq	112(%rax), %rdx	#, D.6993
	movl	.LC25(%rip), %eax	#, tmp179
	movl	%eax, (%rdx)	# tmp179, *_29
	.loc 1 374 0
	movq	-8(%rbp), %rax	# codebias, tmp180
	leaq	116(%rax), %rdx	#, D.6993
	movl	.LC25(%rip), %eax	#, tmp181
	movl	%eax, (%rdx)	# tmp181, *_30
	.loc 1 375 0
	movq	-8(%rbp), %rax	# codebias, tmp182
	leaq	120(%rax), %rdx	#, D.6993
	movl	.LC25(%rip), %eax	#, tmp183
	movl	%eax, (%rdx)	# tmp183, *_31
	.loc 1 376 0
	movq	-8(%rbp), %rax	# codebias, tmp184
	leaq	124(%rax), %rdx	#, D.6993
	movl	.LC25(%rip), %eax	#, tmp185
	movl	%eax, (%rdx)	# tmp185, *_32
	.loc 1 377 0
	movq	-8(%rbp), %rax	# codebias, tmp186
	leaq	128(%rax), %rdx	#, D.6993
	movl	.LC23(%rip), %eax	#, tmp187
	movl	%eax, (%rdx)	# tmp187, *_33
	.loc 1 378 0
	movq	-8(%rbp), %rax	# codebias, tmp188
	leaq	132(%rax), %rdx	#, D.6993
	movl	.LC23(%rip), %eax	#, tmp189
	movl	%eax, (%rdx)	# tmp189, *_34
	.loc 1 379 0
	movq	-8(%rbp), %rax	# codebias, tmp190
	leaq	136(%rax), %rdx	#, D.6993
	movl	.LC23(%rip), %eax	#, tmp191
	movl	%eax, (%rdx)	# tmp191, *_35
	.loc 1 380 0
	movq	-8(%rbp), %rax	# codebias, tmp192
	leaq	140(%rax), %rdx	#, D.6993
	movl	.LC23(%rip), %eax	#, tmp193
	movl	%eax, (%rdx)	# tmp193, *_36
	.loc 1 381 0
	movq	-8(%rbp), %rax	# codebias, tmp194
	leaq	144(%rax), %rdx	#, D.6993
	movl	.LC24(%rip), %eax	#, tmp195
	movl	%eax, (%rdx)	# tmp195, *_37
	.loc 1 382 0
	movq	-8(%rbp), %rax	# codebias, tmp196
	leaq	148(%rax), %rdx	#, D.6993
	movl	.LC24(%rip), %eax	#, tmp197
	movl	%eax, (%rdx)	# tmp197, *_38
	.loc 1 383 0
	movq	-8(%rbp), %rax	# codebias, tmp198
	leaq	152(%rax), %rdx	#, D.6993
	movl	.LC24(%rip), %eax	#, tmp199
	movl	%eax, (%rdx)	# tmp199, *_39
	.loc 1 384 0
	movq	-8(%rbp), %rax	# codebias, tmp200
	leaq	156(%rax), %rdx	#, D.6993
	movl	.LC24(%rip), %eax	#, tmp201
	movl	%eax, (%rdx)	# tmp201, *_40
	.loc 1 385 0
	movq	-8(%rbp), %rax	# codebias, tmp202
	leaq	160(%rax), %rdx	#, D.6993
	movl	.LC24(%rip), %eax	#, tmp203
	movl	%eax, (%rdx)	# tmp203, *_41
	.loc 1 386 0
	movq	-8(%rbp), %rax	# codebias, tmp204
	leaq	164(%rax), %rdx	#, D.6993
	movl	.LC24(%rip), %eax	#, tmp205
	movl	%eax, (%rdx)	# tmp205, *_42
	.loc 1 387 0
	movq	-8(%rbp), %rax	# codebias, tmp206
	leaq	168(%rax), %rdx	#, D.6993
	movl	.LC24(%rip), %eax	#, tmp207
	movl	%eax, (%rdx)	# tmp207, *_43
	.loc 1 388 0
	movq	-8(%rbp), %rax	# codebias, tmp208
	leaq	172(%rax), %rdx	#, D.6993
	movl	.LC24(%rip), %eax	#, tmp209
	movl	%eax, (%rdx)	# tmp209, *_44
	.loc 1 389 0
	movq	-8(%rbp), %rax	# codebias, tmp210
	leaq	176(%rax), %rdx	#, D.6993
	movl	.LC24(%rip), %eax	#, tmp211
	movl	%eax, (%rdx)	# tmp211, *_45
	.loc 1 390 0
	movq	-8(%rbp), %rax	# codebias, tmp212
	leaq	180(%rax), %rdx	#, D.6993
	movl	.LC24(%rip), %eax	#, tmp213
	movl	%eax, (%rdx)	# tmp213, *_46
	.loc 1 391 0
	movq	-8(%rbp), %rax	# codebias, tmp214
	leaq	184(%rax), %rdx	#, D.6993
	movl	.LC24(%rip), %eax	#, tmp215
	movl	%eax, (%rdx)	# tmp215, *_47
	.loc 1 392 0
	movq	-8(%rbp), %rax	# codebias, tmp216
	leaq	188(%rax), %rdx	#, D.6993
	movl	.LC24(%rip), %eax	#, tmp217
	movl	%eax, (%rdx)	# tmp217, *_48
	.loc 1 393 0
	movq	-8(%rbp), %rax	# codebias, tmp218
	leaq	192(%rax), %rdx	#, D.6993
	movl	.LC28(%rip), %eax	#, tmp219
	movl	%eax, (%rdx)	# tmp219, *_49
	.loc 1 394 0
	movq	-8(%rbp), %rax	# codebias, tmp220
	leaq	196(%rax), %rdx	#, D.6993
	movl	.LC23(%rip), %eax	#, tmp221
	movl	%eax, (%rdx)	# tmp221, *_50
	.loc 1 395 0
	movq	-8(%rbp), %rax	# codebias, tmp222
	leaq	200(%rax), %rdx	#, D.6993
	movl	.LC28(%rip), %eax	#, tmp223
	movl	%eax, (%rdx)	# tmp223, *_51
	.loc 1 396 0
	movq	-8(%rbp), %rax	# codebias, tmp224
	leaq	204(%rax), %rdx	#, D.6993
	movl	.LC23(%rip), %eax	#, tmp225
	movl	%eax, (%rdx)	# tmp225, *_52
	.loc 1 397 0
	movq	-8(%rbp), %rax	# codebias, tmp226
	leaq	208(%rax), %rdx	#, D.6993
	movl	.LC25(%rip), %eax	#, tmp227
	movl	%eax, (%rdx)	# tmp227, *_53
	.loc 1 398 0
	movq	-8(%rbp), %rax	# codebias, tmp228
	leaq	212(%rax), %rdx	#, D.6993
	movl	.LC25(%rip), %eax	#, tmp229
	movl	%eax, (%rdx)	# tmp229, *_54
	.loc 1 399 0
	movq	-8(%rbp), %rax	# codebias, tmp230
	leaq	216(%rax), %rdx	#, D.6993
	movl	.LC25(%rip), %eax	#, tmp231
	movl	%eax, (%rdx)	# tmp231, *_55
	.loc 1 400 0
	movq	-8(%rbp), %rax	# codebias, tmp232
	leaq	220(%rax), %rdx	#, D.6993
	movl	.LC25(%rip), %eax	#, tmp233
	movl	%eax, (%rdx)	# tmp233, *_56
	.loc 1 401 0
	movq	-8(%rbp), %rax	# codebias, tmp234
	leaq	224(%rax), %rdx	#, D.6993
	movl	.LC28(%rip), %eax	#, tmp235
	movl	%eax, (%rdx)	# tmp235, *_57
	.loc 1 402 0
	movq	-8(%rbp), %rax	# codebias, tmp236
	leaq	228(%rax), %rdx	#, D.6993
	movl	.LC23(%rip), %eax	#, tmp237
	movl	%eax, (%rdx)	# tmp237, *_58
	.loc 1 403 0
	movq	-8(%rbp), %rax	# codebias, tmp238
	leaq	232(%rax), %rdx	#, D.6993
	movl	.LC27(%rip), %eax	#, tmp239
	movl	%eax, (%rdx)	# tmp239, *_59
	.loc 1 404 0
	movq	-8(%rbp), %rax	# codebias, tmp240
	leaq	236(%rax), %rdx	#, D.6993
	movl	.LC23(%rip), %eax	#, tmp241
	movl	%eax, (%rdx)	# tmp241, *_60
	.loc 1 405 0
	movq	-8(%rbp), %rax	# codebias, tmp242
	leaq	240(%rax), %rdx	#, D.6993
	movl	.LC25(%rip), %eax	#, tmp243
	movl	%eax, (%rdx)	# tmp243, *_61
	.loc 1 406 0
	movq	-8(%rbp), %rax	# codebias, tmp244
	leaq	244(%rax), %rdx	#, D.6993
	movl	.LC23(%rip), %eax	#, tmp245
	movl	%eax, (%rdx)	# tmp245, *_62
	.loc 1 407 0
	movq	-8(%rbp), %rax	# codebias, tmp246
	leaq	248(%rax), %rdx	#, D.6993
	movl	.LC25(%rip), %eax	#, tmp247
	movl	%eax, (%rdx)	# tmp247, *_63
	.loc 1 408 0
	movq	-8(%rbp), %rax	# codebias, tmp248
	leaq	252(%rax), %rdx	#, D.6993
	movl	.LC23(%rip), %eax	#, tmp249
	movl	%eax, (%rdx)	# tmp249, *_64
	.loc 1 409 0
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	DefaultCodonBias, .-DefaultCodonBias
	.type	set_degenerate, @function
set_degenerate:
.LFB11:
	.loc 1 420 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$24, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, %eax	# iupac, tmp78
	movq	%rsi, -32(%rbp)	# syms, syms
	movb	%al, -20(%rbp)	# tmp78, iupac
	.loc 1 421 0
	movsbl	-20(%rbp), %eax	# iupac, D.6994
	movl	%eax, %esi	# D.6994,
	movl	$Alphabet, %edi	#,
	call	strchr	#
	movq	%rax, %rdx	# D.6995, D.6996
	movl	$Alphabet, %eax	#, Alphabet.19
	movq	%rdx, %rbx	# D.6996, D.6996
	subq	%rax, %rbx	# Alphabet.19, D.6996
	movq	-32(%rbp), %rax	# syms, tmp79
	movq	%rax, %rdi	# tmp79,
	call	strlen	#
	movl	%eax, DegenCount(,%rbx,4)	# D.6994, DegenCount
	.loc 1 422 0
	jmp	.L63	#
.L64:
	.loc 1 423 0
	movsbl	-20(%rbp), %eax	# iupac, D.6994
	movl	%eax, %esi	# D.6994,
	movl	$Alphabet, %edi	#,
	call	strchr	#
	movq	%rax, %rdx	# D.6995, D.6996
	movl	$Alphabet, %eax	#, Alphabet.20
	subq	%rax, %rdx	# Alphabet.20, D.6996
	movq	%rdx, %rbx	# D.6996, D.6996
	.loc 1 424 0
	movq	-32(%rbp), %rax	# syms, tmp80
	movzbl	(%rax), %eax	# *syms_1, D.6998
	movsbl	%al, %eax	# D.6998, D.6994
	movl	%eax, %esi	# D.6994,
	movl	$Alphabet, %edi	#,
	call	strchr	#
	movq	%rax, %rdx	# D.6995, D.6996
	movl	$Alphabet, %eax	#, Alphabet.21
	subq	%rax, %rdx	# Alphabet.21, D.6996
	movq	%rbx, %rax	# D.6996, tmp81
	salq	$2, %rax	#, tmp81
	addq	%rbx, %rax	# D.6996, tmp81
	salq	$2, %rax	#, tmp82
	addq	%rdx, %rax	# D.6996, tmp83
	addq	$Degenerate, %rax	#, tmp84
	movb	$1, (%rax)	#, Degenerate
	.loc 1 425 0
	addq	$1, -32(%rbp)	#, syms
.L63:
	.loc 1 422 0 discriminator 1
	movq	-32(%rbp), %rax	# syms, tmp85
	movzbl	(%rax), %eax	# *syms_1, D.6998
	testb	%al, %al	# D.6998
	jne	.L64	#,
	.loc 1 427 0
	addq	$24, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	set_degenerate, .-set_degenerate
	.section	.rodata
	.align 4
.LC23:
	.long	1056964608
	.align 4
.LC24:
	.long	1048576000
	.align 4
.LC25:
	.long	1042983595
	.align 4
.LC26:
	.long	1051372203
	.align 4
.LC27:
	.long	1065353216
	.align 4
.LC28:
	.long	0
	.text
.Letext0:
	.file 2 "gki.h"
	.file 3 "msa.h"
	.file 4 "squid.h"
	.file 5 "structs.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x745
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF80
	.byte	0x1
	.long	.LASF81
	.long	.LASF82
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
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF7
	.uleb128 0x4
	.byte	0x8
	.long	0x72
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF8
	.uleb128 0x4
	.byte	0x8
	.long	0x34
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF9
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
	.uleb128 0x5
	.long	.LASF17
	.byte	0x18
	.byte	0x2
	.byte	0x1a
	.long	0xcc
	.uleb128 0x6
	.string	"key"
	.byte	0x2
	.byte	0x1b
	.long	0x6c
	.byte	0
	.uleb128 0x6
	.string	"idx"
	.byte	0x2
	.byte	0x1c
	.long	0x34
	.byte	0x8
	.uleb128 0x6
	.string	"nxt"
	.byte	0x2
	.byte	0x1d
	.long	0xcc
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0x9b
	.uleb128 0x7
	.byte	0x18
	.byte	0x2
	.byte	0x24
	.long	0x10b
	.uleb128 0x8
	.long	.LASF13
	.byte	0x2
	.byte	0x25
	.long	0x10b
	.byte	0
	.uleb128 0x8
	.long	.LASF14
	.byte	0x2
	.byte	0x27
	.long	0x34
	.byte	0x8
	.uleb128 0x8
	.long	.LASF15
	.byte	0x2
	.byte	0x28
	.long	0x34
	.byte	0xc
	.uleb128 0x8
	.long	.LASF16
	.byte	0x2
	.byte	0x29
	.long	0x34
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0xcc
	.uleb128 0x9
	.string	"GKI"
	.byte	0x2
	.byte	0x2a
	.long	0xd2
	.uleb128 0x4
	.byte	0x8
	.long	0x6c
	.uleb128 0x4
	.byte	0x8
	.long	0x8d
	.uleb128 0xa
	.long	.LASF18
	.value	0x168
	.byte	0x3
	.byte	0x70
	.long	0x364
	.uleb128 0x8
	.long	.LASF19
	.byte	0x3
	.byte	0x73
	.long	0x11c
	.byte	0
	.uleb128 0x8
	.long	.LASF20
	.byte	0x3
	.byte	0x74
	.long	0x11c
	.byte	0x8
	.uleb128 0x6
	.string	"wgt"
	.byte	0x3
	.byte	0x75
	.long	0x122
	.byte	0x10
	.uleb128 0x8
	.long	.LASF21
	.byte	0x3
	.byte	0x76
	.long	0x34
	.byte	0x18
	.uleb128 0x8
	.long	.LASF22
	.byte	0x3
	.byte	0x77
	.long	0x34
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF23
	.byte	0x3
	.byte	0x7b
	.long	0x34
	.byte	0x20
	.uleb128 0x8
	.long	.LASF24
	.byte	0x3
	.byte	0x7c
	.long	0x34
	.byte	0x24
	.uleb128 0x8
	.long	.LASF25
	.byte	0x3
	.byte	0x7d
	.long	0x6c
	.byte	0x28
	.uleb128 0x8
	.long	.LASF26
	.byte	0x3
	.byte	0x7e
	.long	0x6c
	.byte	0x30
	.uleb128 0x6
	.string	"acc"
	.byte	0x3
	.byte	0x7f
	.long	0x6c
	.byte	0x38
	.uleb128 0x6
	.string	"au"
	.byte	0x3
	.byte	0x80
	.long	0x6c
	.byte	0x40
	.uleb128 0x8
	.long	.LASF27
	.byte	0x3
	.byte	0x81
	.long	0x6c
	.byte	0x48
	.uleb128 0x8
	.long	.LASF28
	.byte	0x3
	.byte	0x82
	.long	0x6c
	.byte	0x50
	.uleb128 0x6
	.string	"rf"
	.byte	0x3
	.byte	0x83
	.long	0x6c
	.byte	0x58
	.uleb128 0x8
	.long	.LASF29
	.byte	0x3
	.byte	0x84
	.long	0x11c
	.byte	0x60
	.uleb128 0x8
	.long	.LASF30
	.byte	0x3
	.byte	0x85
	.long	0x11c
	.byte	0x68
	.uleb128 0x6
	.string	"ss"
	.byte	0x3
	.byte	0x86
	.long	0x11c
	.byte	0x70
	.uleb128 0x6
	.string	"sa"
	.byte	0x3
	.byte	0x87
	.long	0x11c
	.byte	0x78
	.uleb128 0x8
	.long	.LASF31
	.byte	0x3
	.byte	0x88
	.long	0x364
	.byte	0x80
	.uleb128 0x8
	.long	.LASF32
	.byte	0x3
	.byte	0x89
	.long	0x374
	.byte	0x98
	.uleb128 0x8
	.long	.LASF33
	.byte	0x3
	.byte	0x90
	.long	0x11c
	.byte	0xb0
	.uleb128 0x8
	.long	.LASF34
	.byte	0x3
	.byte	0x91
	.long	0x34
	.byte	0xb8
	.uleb128 0x8
	.long	.LASF35
	.byte	0x3
	.byte	0x92
	.long	0x34
	.byte	0xbc
	.uleb128 0x8
	.long	.LASF36
	.byte	0x3
	.byte	0x94
	.long	0x11c
	.byte	0xc0
	.uleb128 0x6
	.string	"gf"
	.byte	0x3
	.byte	0x95
	.long	0x11c
	.byte	0xc8
	.uleb128 0x6
	.string	"ngf"
	.byte	0x3
	.byte	0x96
	.long	0x34
	.byte	0xd0
	.uleb128 0x8
	.long	.LASF37
	.byte	0x3
	.byte	0x97
	.long	0x34
	.byte	0xd4
	.uleb128 0x8
	.long	.LASF38
	.byte	0x3
	.byte	0x99
	.long	0x11c
	.byte	0xd8
	.uleb128 0x6
	.string	"gs"
	.byte	0x3
	.byte	0x9a
	.long	0x384
	.byte	0xe0
	.uleb128 0x8
	.long	.LASF39
	.byte	0x3
	.byte	0x9b
	.long	0x38a
	.byte	0xe8
	.uleb128 0x6
	.string	"ngs"
	.byte	0x3
	.byte	0x9c
	.long	0x34
	.byte	0xf0
	.uleb128 0x8
	.long	.LASF40
	.byte	0x3
	.byte	0x9e
	.long	0x11c
	.byte	0xf8
	.uleb128 0xb
	.string	"gc"
	.byte	0x3
	.byte	0x9f
	.long	0x11c
	.value	0x100
	.uleb128 0xc
	.long	.LASF41
	.byte	0x3
	.byte	0xa0
	.long	0x38a
	.value	0x108
	.uleb128 0xb
	.string	"ngc"
	.byte	0x3
	.byte	0xa1
	.long	0x34
	.value	0x110
	.uleb128 0xc
	.long	.LASF42
	.byte	0x3
	.byte	0xa3
	.long	0x11c
	.value	0x118
	.uleb128 0xb
	.string	"gr"
	.byte	0x3
	.byte	0xa4
	.long	0x384
	.value	0x120
	.uleb128 0xc
	.long	.LASF43
	.byte	0x3
	.byte	0xa5
	.long	0x38a
	.value	0x128
	.uleb128 0xb
	.string	"ngr"
	.byte	0x3
	.byte	0xa6
	.long	0x34
	.value	0x130
	.uleb128 0xc
	.long	.LASF44
	.byte	0x3
	.byte	0xaa
	.long	0x38a
	.value	0x138
	.uleb128 0xc
	.long	.LASF45
	.byte	0x3
	.byte	0xab
	.long	0x34
	.value	0x140
	.uleb128 0xc
	.long	.LASF46
	.byte	0x3
	.byte	0xac
	.long	0x34
	.value	0x144
	.uleb128 0xc
	.long	.LASF47
	.byte	0x3
	.byte	0xad
	.long	0x79
	.value	0x148
	.uleb128 0xc
	.long	.LASF48
	.byte	0x3
	.byte	0xae
	.long	0x79
	.value	0x150
	.uleb128 0xc
	.long	.LASF49
	.byte	0x3
	.byte	0xaf
	.long	0x79
	.value	0x158
	.uleb128 0xc
	.long	.LASF50
	.byte	0x3
	.byte	0xb0
	.long	0x34
	.value	0x160
	.byte	0
	.uleb128 0xd
	.long	0x8d
	.long	0x374
	.uleb128 0xe
	.long	0x65
	.byte	0x5
	.byte	0
	.uleb128 0xd
	.long	0x34
	.long	0x384
	.uleb128 0xe
	.long	0x65
	.byte	0x5
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0x11c
	.uleb128 0x4
	.byte	0x8
	.long	0x111
	.uleb128 0x9
	.string	"MSA"
	.byte	0x3
	.byte	0xb1
	.long	0x128
	.uleb128 0x4
	.byte	0x8
	.long	0x390
	.uleb128 0xf
	.long	.LASF55
	.byte	0x1
	.byte	0x2c
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x421
	.uleb128 0x10
	.long	.LASF51
	.byte	0x1
	.byte	0x2c
	.long	0x11c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x10
	.long	.LASF22
	.byte	0x1
	.byte	0x2c
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x11
	.string	"idx"
	.byte	0x1
	.byte	0x2e
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x12
	.long	.LASF52
	.byte	0x1
	.byte	0x2f
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x12
	.long	.LASF53
	.byte	0x1
	.byte	0x2f
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x12
	.long	.LASF54
	.byte	0x1
	.byte	0x2f
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.long	.LASF24
	.byte	0x1
	.byte	0x30
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xf
	.long	.LASF56
	.byte	0x1
	.byte	0x58
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x459
	.uleb128 0x10
	.long	.LASF24
	.byte	0x1
	.byte	0x58
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x11
	.string	"x"
	.byte	0x1
	.byte	0x5a
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x13
	.long	.LASF57
	.byte	0x1
	.byte	0xb8
	.long	0x34
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x495
	.uleb128 0x14
	.string	"sym"
	.byte	0x1
	.byte	0xb8
	.long	0x72
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x11
	.string	"s"
	.byte	0x1
	.byte	0xba
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x13
	.long	.LASF58
	.byte	0x1
	.byte	0xd2
	.long	0x6c
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x4eb
	.uleb128 0x14
	.string	"seq"
	.byte	0x1
	.byte	0xd2
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x14
	.string	"L"
	.byte	0x1
	.byte	0xd2
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x11
	.string	"dsq"
	.byte	0x1
	.byte	0xd4
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.byte	0xd5
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x13
	.long	.LASF59
	.byte	0x1
	.byte	0xe6
	.long	0x6c
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x541
	.uleb128 0x14
	.string	"dsq"
	.byte	0x1
	.byte	0xe6
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x14
	.string	"L"
	.byte	0x1
	.byte	0xe6
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x11
	.string	"seq"
	.byte	0x1
	.byte	0xe8
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.byte	0xe9
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x15
	.long	.LASF60
	.byte	0x1
	.value	0x101
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x5bc
	.uleb128 0x16
	.string	"msa"
	.byte	0x1
	.value	0x101
	.long	0x39b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x17
	.long	.LASF61
	.byte	0x1
	.value	0x101
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x18
	.string	"dsq"
	.byte	0x1
	.value	0x103
	.long	0x11c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.string	"idx"
	.byte	0x1
	.value	0x104
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x19
	.long	.LASF62
	.byte	0x1
	.value	0x105
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x19
	.long	.LASF63
	.byte	0x1
	.value	0x106
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x1a
	.long	.LASF64
	.byte	0x1
	.value	0x125
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x614
	.uleb128 0x17
	.long	.LASF65
	.byte	0x1
	.value	0x125
	.long	0x122
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.long	.LASF66
	.byte	0x1
	.value	0x125
	.long	0x72
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x16
	.string	"wt"
	.byte	0x1
	.value	0x125
	.long	0x8d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x18
	.string	"x"
	.byte	0x1
	.value	0x127
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x15
	.long	.LASF67
	.byte	0x1
	.value	0x140
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x64f
	.uleb128 0x17
	.long	.LASF68
	.byte	0x1
	.value	0x140
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x18
	.string	"x"
	.byte	0x1
	.value	0x142
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x1a
	.long	.LASF69
	.byte	0x1
	.value	0x157
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x67d
	.uleb128 0x17
	.long	.LASF70
	.byte	0x1
	.value	0x157
	.long	0x122
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1b
	.long	.LASF83
	.byte	0x1
	.value	0x1a3
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x6ba
	.uleb128 0x17
	.long	.LASF71
	.byte	0x1
	.value	0x1a3
	.long	0x72
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x17
	.long	.LASF72
	.byte	0x1
	.value	0x1a3
	.long	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0xd
	.long	0x6c
	.long	0x6c5
	.uleb128 0x1c
	.byte	0
	.uleb128 0x1d
	.long	.LASF73
	.byte	0x4
	.byte	0x7e
	.long	0x6ba
	.uleb128 0xd
	.long	0x72
	.long	0x6e0
	.uleb128 0xe
	.long	0x65
	.byte	0x18
	.byte	0
	.uleb128 0x1d
	.long	.LASF74
	.byte	0x5
	.byte	0x39
	.long	0x6d0
	.uleb128 0x1d
	.long	.LASF75
	.byte	0x5
	.byte	0x3a
	.long	0x34
	.uleb128 0x1d
	.long	.LASF76
	.byte	0x5
	.byte	0x3b
	.long	0x34
	.uleb128 0x1d
	.long	.LASF77
	.byte	0x5
	.byte	0x3c
	.long	0x34
	.uleb128 0xd
	.long	0x72
	.long	0x722
	.uleb128 0xe
	.long	0x65
	.byte	0x17
	.uleb128 0xe
	.long	0x65
	.byte	0x13
	.byte	0
	.uleb128 0x1d
	.long	.LASF78
	.byte	0x5
	.byte	0x3d
	.long	0x70c
	.uleb128 0xd
	.long	0x34
	.long	0x73d
	.uleb128 0xe
	.long	0x65
	.byte	0x17
	.byte	0
	.uleb128 0x1d
	.long	.LASF79
	.byte	0x5
	.byte	0x3e
	.long	0x72d
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
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
.LASF11:
	.string	"float"
.LASF31:
	.string	"cutoff"
.LASF32:
	.string	"cutoff_is_set"
.LASF60:
	.string	"DigitizeAlignment"
.LASF57:
	.string	"SymbolIndex"
.LASF47:
	.string	"sqlen"
.LASF37:
	.string	"alloc_ngf"
.LASF20:
	.string	"sqname"
.LASF42:
	.string	"gr_tag"
.LASF5:
	.string	"short int"
.LASF7:
	.string	"sizetype"
.LASF81:
	.string	"alphabet.c"
.LASF79:
	.string	"DegenCount"
.LASF67:
	.string	"DefaultGeneticCode"
.LASF28:
	.string	"sa_cons"
.LASF56:
	.string	"SetAlphabet"
.LASF43:
	.string	"gr_idx"
.LASF76:
	.string	"Alphabet_size"
.LASF70:
	.string	"codebias"
.LASF51:
	.string	"rseqs"
.LASF22:
	.string	"nseq"
.LASF74:
	.string	"Alphabet"
.LASF58:
	.string	"DigitizeSequence"
.LASF82:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/456.hmmer/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF9:
	.string	"long long int"
.LASF50:
	.string	"lastidx"
.LASF48:
	.string	"sslen"
.LASF6:
	.string	"long int"
.LASF78:
	.string	"Degenerate"
.LASF52:
	.string	"other"
.LASF61:
	.string	"ret_dsqs"
.LASF16:
	.string	"nkeys"
.LASF59:
	.string	"DedigitizeSequence"
.LASF38:
	.string	"gs_tag"
.LASF25:
	.string	"name"
.LASF23:
	.string	"flags"
.LASF15:
	.string	"nhash"
.LASF30:
	.string	"sqdesc"
.LASF1:
	.string	"unsigned char"
.LASF35:
	.string	"alloc_ncomment"
.LASF71:
	.string	"iupac"
.LASF80:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF73:
	.string	"stdcode1"
.LASF4:
	.string	"signed char"
.LASF10:
	.string	"long long unsigned int"
.LASF72:
	.string	"syms"
.LASF24:
	.string	"type"
.LASF34:
	.string	"ncomment"
.LASF3:
	.string	"unsigned int"
.LASF33:
	.string	"comment"
.LASF68:
	.string	"aacode"
.LASF39:
	.string	"gs_idx"
.LASF69:
	.string	"DefaultCodonBias"
.LASF2:
	.string	"short unsigned int"
.LASF14:
	.string	"primelevel"
.LASF8:
	.string	"char"
.LASF45:
	.string	"nseqalloc"
.LASF77:
	.string	"Alphabet_iupac"
.LASF27:
	.string	"ss_cons"
.LASF21:
	.string	"alen"
.LASF62:
	.string	"dpos"
.LASF55:
	.string	"DetermineAlphabet"
.LASF0:
	.string	"long unsigned int"
.LASF29:
	.string	"sqacc"
.LASF64:
	.string	"P7CountSymbol"
.LASF17:
	.string	"gki_elem"
.LASF46:
	.string	"nseqlump"
.LASF18:
	.string	"msa_struct"
.LASF83:
	.string	"set_degenerate"
.LASF40:
	.string	"gc_tag"
.LASF53:
	.string	"nucleic"
.LASF36:
	.string	"gf_tag"
.LASF13:
	.string	"table"
.LASF12:
	.string	"double"
.LASF19:
	.string	"aseq"
.LASF49:
	.string	"salen"
.LASF44:
	.string	"index"
.LASF63:
	.string	"apos"
.LASF66:
	.string	"symidx"
.LASF65:
	.string	"counters"
.LASF54:
	.string	"amino"
.LASF41:
	.string	"gc_idx"
.LASF75:
	.string	"Alphabet_type"
.LASF26:
	.string	"desc"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
