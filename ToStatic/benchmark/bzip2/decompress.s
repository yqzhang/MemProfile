	.file	"decompress.c"
# GNU C (Ubuntu/Linaro 4.8.1-10ubuntu9) version 4.8.1 (x86_64-linux-gnu)
#	compiled by GNU C version 4.8.1, GMP version 5.1.2, MPFR version 3.1.1-p2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D SPEC_CPU -D NDEBUG
# -D SPEC_CPU_LP64 decompress.c -mtune=generic -march=x86-64 -g
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
	.type	makeMaps_d, @function
makeMaps_d:
.LFB2:
	.file 1 "decompress.c"
	.loc 1 68 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# s, s
	.loc 1 70 0
	movq	-24(%rbp), %rax	# s, tmp64
	movl	$0, 3192(%rax)	#, s_2(D)->nInUse
	.loc 1 71 0
	movl	$0, -4(%rbp)	#, i
	jmp	.L2	#
.L4:
	.loc 1 72 0
	movq	-24(%rbp), %rdx	# s, tmp65
	movl	-4(%rbp), %eax	# i, tmp67
	cltq
	movzbl	3196(%rdx,%rax), %eax	# s_2(D)->inUse, D.5854
	testb	%al, %al	# D.5854
	je	.L3	#,
	.loc 1 73 0
	movq	-24(%rbp), %rax	# s, tmp68
	movl	3192(%rax), %eax	# s_2(D)->nInUse, D.5855
	movl	-4(%rbp), %edx	# i, tmp69
	movl	%edx, %ecx	# tmp69, D.5854
	movq	-24(%rbp), %rdx	# s, tmp70
	cltq
	movb	%cl, 3468(%rdx,%rax)	# D.5854, s_2(D)->seqToUnseq
	.loc 1 74 0
	movq	-24(%rbp), %rax	# s, tmp72
	movl	3192(%rax), %eax	# s_2(D)->nInUse, D.5855
	leal	1(%rax), %edx	#, D.5855
	movq	-24(%rbp), %rax	# s, tmp73
	movl	%edx, 3192(%rax)	# D.5855, s_2(D)->nInUse
.L3:
	.loc 1 71 0
	addl	$1, -4(%rbp)	#, i
.L2:
	.loc 1 71 0 is_stmt 0 discriminator 1
	cmpl	$255, -4(%rbp)	#, i
	jle	.L4	#,
	.loc 1 76 0 is_stmt 1
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	makeMaps_d, .-makeMaps_d
	.section	.rodata
.LC0:
	.string	"\n    [%d: huff+mtf "
.LC1:
	.string	"rt+rld"
	.text
	.globl	BZ2_decompress
	.type	BZ2_decompress, @function
BZ2_decompress:
.LFB3:
	.loc 1 147 0
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$392, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -392(%rbp)	# s, s
	.loc 1 147 0
	movq	%fs:40, %rax	#, tmp3589
	movq	%rax, -24(%rbp)	# tmp3589, D.5875
	xorl	%eax, %eax	# tmp3589
	.loc 1 151 0
	movq	-392(%rbp), %rax	# s, tmp1940
	movq	(%rax), %rax	# s_422(D)->strm, tmp1941
	movq	%rax, -40(%rbp)	# tmp1941, strm
	.loc 1 179 0
	movq	-392(%rbp), %rax	# s, tmp1942
	movl	8(%rax), %eax	# s_422(D)->state, D.5856
	cmpl	$10, %eax	#, D.5856
	jne	.L6	#,
	.loc 1 181 0
	movq	-392(%rbp), %rax	# s, tmp1943
	movl	$0, 64036(%rax)	#, s_422(D)->save_i
	.loc 1 182 0
	movq	-392(%rbp), %rax	# s, tmp1944
	movl	$0, 64040(%rax)	#, s_422(D)->save_j
	.loc 1 183 0
	movq	-392(%rbp), %rax	# s, tmp1945
	movl	$0, 64044(%rax)	#, s_422(D)->save_t
	.loc 1 184 0
	movq	-392(%rbp), %rax	# s, tmp1946
	movl	$0, 64048(%rax)	#, s_422(D)->save_alphaSize
	.loc 1 185 0
	movq	-392(%rbp), %rax	# s, tmp1947
	movl	$0, 64052(%rax)	#, s_422(D)->save_nGroups
	.loc 1 186 0
	movq	-392(%rbp), %rax	# s, tmp1948
	movl	$0, 64056(%rax)	#, s_422(D)->save_nSelectors
	.loc 1 187 0
	movq	-392(%rbp), %rax	# s, tmp1949
	movl	$0, 64060(%rax)	#, s_422(D)->save_EOB
	.loc 1 188 0
	movq	-392(%rbp), %rax	# s, tmp1950
	movl	$0, 64064(%rax)	#, s_422(D)->save_groupNo
	.loc 1 189 0
	movq	-392(%rbp), %rax	# s, tmp1951
	movl	$0, 64068(%rax)	#, s_422(D)->save_groupPos
	.loc 1 190 0
	movq	-392(%rbp), %rax	# s, tmp1952
	movl	$0, 64072(%rax)	#, s_422(D)->save_nextSym
	.loc 1 191 0
	movq	-392(%rbp), %rax	# s, tmp1953
	movl	$0, 64076(%rax)	#, s_422(D)->save_nblockMAX
	.loc 1 192 0
	movq	-392(%rbp), %rax	# s, tmp1954
	movl	$0, 64080(%rax)	#, s_422(D)->save_nblock
	.loc 1 193 0
	movq	-392(%rbp), %rax	# s, tmp1955
	movl	$0, 64084(%rax)	#, s_422(D)->save_es
	.loc 1 194 0
	movq	-392(%rbp), %rax	# s, tmp1956
	movl	$0, 64088(%rax)	#, s_422(D)->save_N
	.loc 1 195 0
	movq	-392(%rbp), %rax	# s, tmp1957
	movl	$0, 64092(%rax)	#, s_422(D)->save_curr
	.loc 1 196 0
	movq	-392(%rbp), %rax	# s, tmp1958
	movl	$0, 64096(%rax)	#, s_422(D)->save_zt
	.loc 1 197 0
	movq	-392(%rbp), %rax	# s, tmp1959
	movl	$0, 64100(%rax)	#, s_422(D)->save_zn
	.loc 1 198 0
	movq	-392(%rbp), %rax	# s, tmp1960
	movl	$0, 64104(%rax)	#, s_422(D)->save_zvec
	.loc 1 199 0
	movq	-392(%rbp), %rax	# s, tmp1961
	movl	$0, 64108(%rax)	#, s_422(D)->save_zj
	.loc 1 200 0
	movq	-392(%rbp), %rax	# s, tmp1962
	movl	$0, 64112(%rax)	#, s_422(D)->save_gSel
	.loc 1 201 0
	movq	-392(%rbp), %rax	# s, tmp1963
	movl	$0, 64116(%rax)	#, s_422(D)->save_gMinlen
	.loc 1 202 0
	movq	-392(%rbp), %rax	# s, tmp1964
	movq	$0, 64120(%rax)	#, s_422(D)->save_gLimit
	.loc 1 203 0
	movq	-392(%rbp), %rax	# s, tmp1965
	movq	$0, 64128(%rax)	#, s_422(D)->save_gBase
	.loc 1 204 0
	movq	-392(%rbp), %rax	# s, tmp1966
	movq	$0, 64136(%rax)	#, s_422(D)->save_gPerm
.L6:
	.loc 1 208 0
	movq	-392(%rbp), %rax	# s, tmp1967
	movl	64036(%rax), %eax	# s_422(D)->save_i, tmp1968
	movl	%eax, -360(%rbp)	# tmp1968, i
	.loc 1 209 0
	movq	-392(%rbp), %rax	# s, tmp1969
	movl	64040(%rax), %eax	# s_422(D)->save_j, tmp1970
	movl	%eax, -356(%rbp)	# tmp1970, j
	.loc 1 210 0
	movq	-392(%rbp), %rax	# s, tmp1971
	movl	64044(%rax), %eax	# s_422(D)->save_t, tmp1972
	movl	%eax, -352(%rbp)	# tmp1972, t
	.loc 1 211 0
	movq	-392(%rbp), %rax	# s, tmp1973
	movl	64048(%rax), %eax	# s_422(D)->save_alphaSize, tmp1974
	movl	%eax, -348(%rbp)	# tmp1974, alphaSize
	.loc 1 212 0
	movq	-392(%rbp), %rax	# s, tmp1975
	movl	64052(%rax), %eax	# s_422(D)->save_nGroups, tmp1976
	movl	%eax, -344(%rbp)	# tmp1976, nGroups
	.loc 1 213 0
	movq	-392(%rbp), %rax	# s, tmp1977
	movl	64056(%rax), %eax	# s_422(D)->save_nSelectors, tmp1978
	movl	%eax, -340(%rbp)	# tmp1978, nSelectors
	.loc 1 214 0
	movq	-392(%rbp), %rax	# s, tmp1979
	movl	64060(%rax), %eax	# s_422(D)->save_EOB, tmp1980
	movl	%eax, -336(%rbp)	# tmp1980, EOB
	.loc 1 215 0
	movq	-392(%rbp), %rax	# s, tmp1981
	movl	64064(%rax), %eax	# s_422(D)->save_groupNo, tmp1982
	movl	%eax, -332(%rbp)	# tmp1982, groupNo
	.loc 1 216 0
	movq	-392(%rbp), %rax	# s, tmp1983
	movl	64068(%rax), %eax	# s_422(D)->save_groupPos, tmp1984
	movl	%eax, -328(%rbp)	# tmp1984, groupPos
	.loc 1 217 0
	movq	-392(%rbp), %rax	# s, tmp1985
	movl	64072(%rax), %eax	# s_422(D)->save_nextSym, tmp1986
	movl	%eax, -324(%rbp)	# tmp1986, nextSym
	.loc 1 218 0
	movq	-392(%rbp), %rax	# s, tmp1987
	movl	64076(%rax), %eax	# s_422(D)->save_nblockMAX, tmp1988
	movl	%eax, -320(%rbp)	# tmp1988, nblockMAX
	.loc 1 219 0
	movq	-392(%rbp), %rax	# s, tmp1989
	movl	64080(%rax), %eax	# s_422(D)->save_nblock, tmp1990
	movl	%eax, -316(%rbp)	# tmp1990, nblock
	.loc 1 220 0
	movq	-392(%rbp), %rax	# s, tmp1991
	movl	64084(%rax), %eax	# s_422(D)->save_es, tmp1992
	movl	%eax, -312(%rbp)	# tmp1992, es
	.loc 1 221 0
	movq	-392(%rbp), %rax	# s, tmp1993
	movl	64088(%rax), %eax	# s_422(D)->save_N, tmp1994
	movl	%eax, -308(%rbp)	# tmp1994, N
	.loc 1 222 0
	movq	-392(%rbp), %rax	# s, tmp1995
	movl	64092(%rax), %eax	# s_422(D)->save_curr, tmp1996
	movl	%eax, -304(%rbp)	# tmp1996, curr
	.loc 1 223 0
	movq	-392(%rbp), %rax	# s, tmp1997
	movl	64096(%rax), %eax	# s_422(D)->save_zt, tmp1998
	movl	%eax, -244(%rbp)	# tmp1998, zt
	.loc 1 224 0
	movq	-392(%rbp), %rax	# s, tmp1999
	movl	64100(%rax), %eax	# s_422(D)->save_zn, tmp2000
	movl	%eax, -300(%rbp)	# tmp2000, zn
	.loc 1 225 0
	movq	-392(%rbp), %rax	# s, tmp2001
	movl	64104(%rax), %eax	# s_422(D)->save_zvec, tmp2002
	movl	%eax, -296(%rbp)	# tmp2002, zvec
	.loc 1 226 0
	movq	-392(%rbp), %rax	# s, tmp2003
	movl	64108(%rax), %eax	# s_422(D)->save_zj, tmp2004
	movl	%eax, -292(%rbp)	# tmp2004, zj
	.loc 1 227 0
	movq	-392(%rbp), %rax	# s, tmp2005
	movl	64112(%rax), %eax	# s_422(D)->save_gSel, tmp2006
	movl	%eax, -288(%rbp)	# tmp2006, gSel
	.loc 1 228 0
	movq	-392(%rbp), %rax	# s, tmp2007
	movl	64116(%rax), %eax	# s_422(D)->save_gMinlen, tmp2008
	movl	%eax, -284(%rbp)	# tmp2008, gMinlen
	.loc 1 229 0
	movq	-392(%rbp), %rax	# s, tmp2009
	movq	64120(%rax), %rax	# s_422(D)->save_gLimit, tmp2010
	movq	%rax, -64(%rbp)	# tmp2010, gLimit
	.loc 1 230 0
	movq	-392(%rbp), %rax	# s, tmp2011
	movq	64128(%rax), %rax	# s_422(D)->save_gBase, tmp2012
	movq	%rax, -56(%rbp)	# tmp2012, gBase
	.loc 1 231 0
	movq	-392(%rbp), %rax	# s, tmp2013
	movq	64136(%rax), %rax	# s_422(D)->save_gPerm, tmp2014
	movq	%rax, -48(%rbp)	# tmp2014, gPerm
	.loc 1 233 0
	movl	$0, -372(%rbp)	#, retVal
	.loc 1 235 0
	movq	-392(%rbp), %rax	# s, tmp2015
	movl	8(%rax), %eax	# s_422(D)->state, D.5856
	subl	$10, %eax	#, tmp2016
	cmpl	$40, %eax	#, tmp2016
	ja	.L7	#,
	movl	%eax, %eax	# tmp2016, tmp2017
	movq	.L9(,%rax,8), %rax	#, tmp2018
	jmp	*%rax	# tmp2018
	.section	.rodata
	.align 8
	.align 4
.L9:
	.quad	.L8
	.quad	.L10
	.quad	.L11
	.quad	.L12
	.quad	.L13
	.quad	.L14
	.quad	.L15
	.quad	.L16
	.quad	.L17
	.quad	.L18
	.quad	.L19
	.quad	.L20
	.quad	.L21
	.quad	.L22
	.quad	.L23
	.quad	.L24
	.quad	.L25
	.quad	.L26
	.quad	.L27
	.quad	.L28
	.quad	.L29
	.quad	.L30
	.quad	.L31
	.quad	.L32
	.quad	.L33
	.quad	.L34
	.quad	.L35
	.quad	.L36
	.quad	.L37
	.quad	.L38
	.quad	.L39
	.quad	.L40
	.quad	.L41
	.quad	.L42
	.quad	.L43
	.quad	.L44
	.quad	.L45
	.quad	.L46
	.quad	.L47
	.quad	.L48
	.quad	.L49
	.text
.L8:
	.loc 1 237 0
	movq	-392(%rbp), %rax	# s, tmp2019
	movl	$10, 8(%rax)	#, s_422(D)->state
.L55:
	.loc 1 237 0 is_stmt 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp2020
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	cmpl	$7, %eax	#, D.5856
	jle	.L50	#,
.LBB2:
	movq	-392(%rbp), %rax	# s, tmp2021
	movl	32(%rax), %edx	# s_422(D)->bsBuff, D.5857
	movq	-392(%rbp), %rax	# s, tmp2022
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	subl	$8, %eax	#, D.5856
	movl	%eax, %ecx	# D.5856, tmp3592
	shrl	%cl, %edx	# tmp3592, D.5857
	movl	%edx, %eax	# D.5857, D.5857
	andl	$255, %eax	#, tmp2023
	movl	%eax, -240(%rbp)	# tmp2023, v
	movq	-392(%rbp), %rax	# s, tmp2024
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	leal	-8(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp2025
	movl	%edx, 36(%rax)	# D.5856, s_422(D)->bsLive
	movl	-240(%rbp), %eax	# v, tmp2026
	movb	%al, -375(%rbp)	# tmp2026, uc
	nop
.LBE2:
	.loc 1 238 0 is_stmt 1 discriminator 1
	cmpb	$66, -375(%rbp)	#, uc
	je	.L10	#,
	jmp	.L395	#
.L50:
	.loc 1 237 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp2027
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	8(%rax), %eax	# _461->avail_in, D.5857
	testl	%eax, %eax	# D.5857
	jne	.L52	#,
	.loc 1 237 0 is_stmt 0 discriminator 1
	movl	$0, -372(%rbp)	#, retVal
	jmp	.L53	#
.L52:
	.loc 1 237 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp2028
	movl	32(%rax), %eax	# s_422(D)->bsBuff, D.5857
	sall	$8, %eax	#, D.5857
	movl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp2029
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movq	(%rax), %rax	# _466->next_in, D.5859
	movzbl	(%rax), %eax	# MEM[(UChar *)_467], D.5860
	movzbl	%al, %eax	# D.5860, D.5857
	orl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp2030
	movl	%edx, 32(%rax)	# D.5857, s_422(D)->bsBuff
	movq	-392(%rbp), %rax	# s, tmp2031
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	leal	8(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp2032
	movl	%edx, 36(%rax)	# D.5856, s_422(D)->bsLive
	movq	-392(%rbp), %rax	# s, tmp2033
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movq	(%rax), %rdx	# _473->next_in, D.5859
	addq	$1, %rdx	#, D.5859
	movq	%rdx, (%rax)	# D.5859, _473->next_in
	movq	-392(%rbp), %rax	# s, tmp2034
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	8(%rax), %edx	# _476->avail_in, D.5857
	subl	$1, %edx	#, D.5857
	movl	%edx, 8(%rax)	# D.5857, _476->avail_in
	movq	-392(%rbp), %rax	# s, tmp2035
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	12(%rax), %edx	# _479->total_in_lo32, D.5857
	addl	$1, %edx	#, D.5857
	movl	%edx, 12(%rax)	# D.5857, _479->total_in_lo32
	movq	-392(%rbp), %rax	# s, tmp2036
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	12(%rax), %eax	# _482->total_in_lo32, D.5857
	testl	%eax, %eax	# D.5857
	jne	.L54	#,
	.loc 1 237 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp2037
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	16(%rax), %edx	# _484->total_in_hi32, D.5857
	addl	$1, %edx	#, D.5857
	movl	%edx, 16(%rax)	# D.5857, _484->total_in_hi32
	jmp	.L55	#
.L54:
	.loc 1 237 0 discriminator 2
	jmp	.L55	#
.L395:
	.loc 1 238 0 is_stmt 1 discriminator 1
	movl	$-5, -372(%rbp)	#, retVal
	jmp	.L53	#
.L10:
	.loc 1 240 0
	movq	-392(%rbp), %rax	# s, tmp2038
	movl	$11, 8(%rax)	#, s_422(D)->state
.L60:
	.loc 1 240 0 is_stmt 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp2039
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	cmpl	$7, %eax	#, D.5856
	jle	.L56	#,
.LBB3:
	movq	-392(%rbp), %rax	# s, tmp2040
	movl	32(%rax), %edx	# s_422(D)->bsBuff, D.5857
	movq	-392(%rbp), %rax	# s, tmp2041
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	subl	$8, %eax	#, D.5856
	movl	%eax, %ecx	# D.5856, tmp3595
	shrl	%cl, %edx	# tmp3595, D.5857
	movl	%edx, %eax	# D.5857, D.5857
	andl	$255, %eax	#, tmp2042
	movl	%eax, -236(%rbp)	# tmp2042, v
	movq	-392(%rbp), %rax	# s, tmp2043
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	leal	-8(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp2044
	movl	%edx, 36(%rax)	# D.5856, s_422(D)->bsLive
	movl	-236(%rbp), %eax	# v, tmp2045
	movb	%al, -375(%rbp)	# tmp2045, uc
	nop
.LBE3:
	.loc 1 241 0 is_stmt 1 discriminator 1
	cmpb	$90, -375(%rbp)	#, uc
	je	.L11	#,
	jmp	.L396	#
.L56:
	.loc 1 240 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp2046
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	8(%rax), %eax	# _497->avail_in, D.5857
	testl	%eax, %eax	# D.5857
	jne	.L58	#,
	.loc 1 240 0 is_stmt 0 discriminator 1
	movl	$0, -372(%rbp)	#, retVal
	jmp	.L53	#
.L58:
	.loc 1 240 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp2047
	movl	32(%rax), %eax	# s_422(D)->bsBuff, D.5857
	sall	$8, %eax	#, D.5857
	movl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp2048
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movq	(%rax), %rax	# _502->next_in, D.5859
	movzbl	(%rax), %eax	# MEM[(UChar *)_503], D.5860
	movzbl	%al, %eax	# D.5860, D.5857
	orl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp2049
	movl	%edx, 32(%rax)	# D.5857, s_422(D)->bsBuff
	movq	-392(%rbp), %rax	# s, tmp2050
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	leal	8(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp2051
	movl	%edx, 36(%rax)	# D.5856, s_422(D)->bsLive
	movq	-392(%rbp), %rax	# s, tmp2052
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movq	(%rax), %rdx	# _509->next_in, D.5859
	addq	$1, %rdx	#, D.5859
	movq	%rdx, (%rax)	# D.5859, _509->next_in
	movq	-392(%rbp), %rax	# s, tmp2053
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	8(%rax), %edx	# _512->avail_in, D.5857
	subl	$1, %edx	#, D.5857
	movl	%edx, 8(%rax)	# D.5857, _512->avail_in
	movq	-392(%rbp), %rax	# s, tmp2054
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	12(%rax), %edx	# _515->total_in_lo32, D.5857
	addl	$1, %edx	#, D.5857
	movl	%edx, 12(%rax)	# D.5857, _515->total_in_lo32
	movq	-392(%rbp), %rax	# s, tmp2055
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	12(%rax), %eax	# _518->total_in_lo32, D.5857
	testl	%eax, %eax	# D.5857
	jne	.L59	#,
	.loc 1 240 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp2056
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	16(%rax), %edx	# _520->total_in_hi32, D.5857
	addl	$1, %edx	#, D.5857
	movl	%edx, 16(%rax)	# D.5857, _520->total_in_hi32
	jmp	.L60	#
.L59:
	.loc 1 240 0 discriminator 2
	jmp	.L60	#
.L396:
	.loc 1 241 0 is_stmt 1 discriminator 1
	movl	$-5, -372(%rbp)	#, retVal
	jmp	.L53	#
.L11:
	.loc 1 243 0
	movq	-392(%rbp), %rax	# s, tmp2057
	movl	$12, 8(%rax)	#, s_422(D)->state
.L65:
	.loc 1 243 0 is_stmt 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp2058
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	cmpl	$7, %eax	#, D.5856
	jle	.L61	#,
.LBB4:
	movq	-392(%rbp), %rax	# s, tmp2059
	movl	32(%rax), %edx	# s_422(D)->bsBuff, D.5857
	movq	-392(%rbp), %rax	# s, tmp2060
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	subl	$8, %eax	#, D.5856
	movl	%eax, %ecx	# D.5856, tmp3598
	shrl	%cl, %edx	# tmp3598, D.5857
	movl	%edx, %eax	# D.5857, D.5857
	andl	$255, %eax	#, tmp2061
	movl	%eax, -232(%rbp)	# tmp2061, v
	movq	-392(%rbp), %rax	# s, tmp2062
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	leal	-8(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp2063
	movl	%edx, 36(%rax)	# D.5856, s_422(D)->bsLive
	movl	-232(%rbp), %eax	# v, tmp2064
	movb	%al, -375(%rbp)	# tmp2064, uc
	nop
.LBE4:
	.loc 1 244 0 is_stmt 1 discriminator 1
	cmpb	$104, -375(%rbp)	#, uc
	je	.L12	#,
	jmp	.L397	#
.L61:
	.loc 1 243 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp2065
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	8(%rax), %eax	# _533->avail_in, D.5857
	testl	%eax, %eax	# D.5857
	jne	.L63	#,
	.loc 1 243 0 is_stmt 0 discriminator 1
	movl	$0, -372(%rbp)	#, retVal
	jmp	.L53	#
.L63:
	.loc 1 243 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp2066
	movl	32(%rax), %eax	# s_422(D)->bsBuff, D.5857
	sall	$8, %eax	#, D.5857
	movl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp2067
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movq	(%rax), %rax	# _538->next_in, D.5859
	movzbl	(%rax), %eax	# MEM[(UChar *)_539], D.5860
	movzbl	%al, %eax	# D.5860, D.5857
	orl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp2068
	movl	%edx, 32(%rax)	# D.5857, s_422(D)->bsBuff
	movq	-392(%rbp), %rax	# s, tmp2069
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	leal	8(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp2070
	movl	%edx, 36(%rax)	# D.5856, s_422(D)->bsLive
	movq	-392(%rbp), %rax	# s, tmp2071
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movq	(%rax), %rdx	# _545->next_in, D.5859
	addq	$1, %rdx	#, D.5859
	movq	%rdx, (%rax)	# D.5859, _545->next_in
	movq	-392(%rbp), %rax	# s, tmp2072
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	8(%rax), %edx	# _548->avail_in, D.5857
	subl	$1, %edx	#, D.5857
	movl	%edx, 8(%rax)	# D.5857, _548->avail_in
	movq	-392(%rbp), %rax	# s, tmp2073
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	12(%rax), %edx	# _551->total_in_lo32, D.5857
	addl	$1, %edx	#, D.5857
	movl	%edx, 12(%rax)	# D.5857, _551->total_in_lo32
	movq	-392(%rbp), %rax	# s, tmp2074
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	12(%rax), %eax	# _554->total_in_lo32, D.5857
	testl	%eax, %eax	# D.5857
	jne	.L64	#,
	.loc 1 243 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp2075
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	16(%rax), %edx	# _556->total_in_hi32, D.5857
	addl	$1, %edx	#, D.5857
	movl	%edx, 16(%rax)	# D.5857, _556->total_in_hi32
	jmp	.L65	#
.L64:
	.loc 1 243 0 discriminator 2
	jmp	.L65	#
.L397:
	.loc 1 244 0 is_stmt 1 discriminator 1
	movl	$-5, -372(%rbp)	#, retVal
	jmp	.L53	#
.L12:
	.loc 1 246 0
	movq	-392(%rbp), %rax	# s, tmp2076
	movl	$13, 8(%rax)	#, s_422(D)->state
.L70:
	.loc 1 246 0 is_stmt 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp2077
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	cmpl	$7, %eax	#, D.5856
	jle	.L66	#,
.LBB5:
	movq	-392(%rbp), %rax	# s, tmp2078
	movl	32(%rax), %edx	# s_422(D)->bsBuff, D.5857
	movq	-392(%rbp), %rax	# s, tmp2079
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	subl	$8, %eax	#, D.5856
	movl	%eax, %ecx	# D.5856, tmp3601
	shrl	%cl, %edx	# tmp3601, D.5857
	movl	%edx, %eax	# D.5857, D.5857
	andl	$255, %eax	#, tmp2080
	movl	%eax, -228(%rbp)	# tmp2080, v
	movq	-392(%rbp), %rax	# s, tmp2081
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	leal	-8(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp2082
	movl	%edx, 36(%rax)	# D.5856, s_422(D)->bsLive
	movl	-228(%rbp), %edx	# v, v.0
	movq	-392(%rbp), %rax	# s, tmp2083
	movl	%edx, 40(%rax)	# v.0, s_422(D)->blockSize100k
	nop
.LBE5:
	.loc 1 247 0 is_stmt 1 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp2095
	movl	40(%rax), %eax	# s_422(D)->blockSize100k, D.5856
	cmpl	$48, %eax	#, D.5856
	jle	.L71	#,
	jmp	.L398	#
.L66:
	.loc 1 246 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp2084
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	8(%rax), %eax	# _600->avail_in, D.5857
	testl	%eax, %eax	# D.5857
	jne	.L68	#,
	.loc 1 246 0 is_stmt 0 discriminator 1
	movl	$0, -372(%rbp)	#, retVal
	jmp	.L53	#
.L68:
	.loc 1 246 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp2085
	movl	32(%rax), %eax	# s_422(D)->bsBuff, D.5857
	sall	$8, %eax	#, D.5857
	movl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp2086
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movq	(%rax), %rax	# _605->next_in, D.5859
	movzbl	(%rax), %eax	# MEM[(UChar *)_606], D.5860
	movzbl	%al, %eax	# D.5860, D.5857
	orl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp2087
	movl	%edx, 32(%rax)	# D.5857, s_422(D)->bsBuff
	movq	-392(%rbp), %rax	# s, tmp2088
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	leal	8(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp2089
	movl	%edx, 36(%rax)	# D.5856, s_422(D)->bsLive
	movq	-392(%rbp), %rax	# s, tmp2090
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movq	(%rax), %rdx	# _612->next_in, D.5859
	addq	$1, %rdx	#, D.5859
	movq	%rdx, (%rax)	# D.5859, _612->next_in
	movq	-392(%rbp), %rax	# s, tmp2091
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	8(%rax), %edx	# _615->avail_in, D.5857
	subl	$1, %edx	#, D.5857
	movl	%edx, 8(%rax)	# D.5857, _615->avail_in
	movq	-392(%rbp), %rax	# s, tmp2092
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	12(%rax), %edx	# _618->total_in_lo32, D.5857
	addl	$1, %edx	#, D.5857
	movl	%edx, 12(%rax)	# D.5857, _618->total_in_lo32
	movq	-392(%rbp), %rax	# s, tmp2093
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	12(%rax), %eax	# _621->total_in_lo32, D.5857
	testl	%eax, %eax	# D.5857
	jne	.L69	#,
	.loc 1 246 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp2094
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	16(%rax), %edx	# _623->total_in_hi32, D.5857
	addl	$1, %edx	#, D.5857
	movl	%edx, 16(%rax)	# D.5857, _623->total_in_hi32
	jmp	.L70	#
.L69:
	.loc 1 246 0 discriminator 2
	jmp	.L70	#
.L398:
	.loc 1 248 0 is_stmt 1 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp2096
	movl	40(%rax), %eax	# s_422(D)->blockSize100k, D.5856
	.loc 1 247 0 discriminator 1
	cmpl	$57, %eax	#, D.5856
	jle	.L72	#,
.L71:
	.loc 1 248 0
	movl	$-5, -372(%rbp)	#, retVal
	jmp	.L53	#
.L72:
	.loc 1 249 0
	movq	-392(%rbp), %rax	# s, tmp2097
	movl	40(%rax), %eax	# s_422(D)->blockSize100k, D.5856
	leal	-48(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp2098
	movl	%edx, 40(%rax)	# D.5856, s_422(D)->blockSize100k
	.loc 1 251 0
	movq	-392(%rbp), %rax	# s, tmp2099
	movzbl	44(%rax), %eax	# s_422(D)->smallDecompress, D.5860
	testb	%al, %al	# D.5860
	je	.L73	#,
	.loc 1 252 0
	movq	-40(%rbp), %rax	# strm, tmp2100
	movq	56(%rax), %rax	# strm_423->bzalloc, D.5861
	movq	-392(%rbp), %rdx	# s, tmp2101
	movl	40(%rdx), %edx	# s_422(D)->blockSize100k, D.5856
	imull	$200000, %edx, %edx	#, D.5862, D.5862
	movl	%edx, %esi	# D.5862, D.5856
	movq	-40(%rbp), %rdx	# strm, tmp2102
	movq	72(%rdx), %rcx	# strm_423->opaque, D.5863
	movl	$1, %edx	#,
	movq	%rcx, %rdi	# D.5863,
	call	*%rax	# D.5861
	movq	-392(%rbp), %rdx	# s, tmp2103
	movq	%rax, 3160(%rdx)	# D.5863, s_422(D)->ll16
	.loc 1 253 0
	movq	-40(%rbp), %rax	# strm, tmp2104
	movq	56(%rax), %rax	# strm_423->bzalloc, D.5861
	movq	-392(%rbp), %rdx	# s, tmp2105
	movl	40(%rdx), %edx	# s_422(D)->blockSize100k, D.5856
	imull	$100000, %edx, %edx	#, D.5856, D.5856
	addl	$1, %edx	#, D.5856
	movl	%edx, %esi	# D.5856, D.5856
	sarl	%esi	# D.5856
	movq	-40(%rbp), %rdx	# strm, tmp2106
	movq	72(%rdx), %rcx	# strm_423->opaque, D.5863
	movl	$1, %edx	#,
	movq	%rcx, %rdi	# D.5863,
	call	*%rax	# D.5861
	movq	-392(%rbp), %rdx	# s, tmp2107
	movq	%rax, 3168(%rdx)	# D.5863, s_422(D)->ll4
	.loc 1 256 0
	movq	-392(%rbp), %rax	# s, tmp2108
	movq	3160(%rax), %rax	# s_422(D)->ll16, D.5864
	testq	%rax, %rax	# D.5864
	je	.L74	#,
	.loc 1 256 0 is_stmt 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp2109
	movq	3168(%rax), %rax	# s_422(D)->ll4, D.5865
	testq	%rax, %rax	# D.5865
	jne	.L13	#,
.L74:
	.loc 1 256 0 discriminator 1
	movl	$-3, -372(%rbp)	#, retVal
	jmp	.L53	#
.L73:
	.loc 1 258 0 is_stmt 1
	movq	-40(%rbp), %rax	# strm, tmp2110
	movq	56(%rax), %rax	# strm_423->bzalloc, D.5861
	movq	-392(%rbp), %rdx	# s, tmp2111
	movl	40(%rdx), %edx	# s_422(D)->blockSize100k, D.5856
	imull	$400000, %edx, %edx	#, D.5862, D.5862
	movl	%edx, %esi	# D.5862, D.5856
	movq	-40(%rbp), %rdx	# strm, tmp2112
	movq	72(%rdx), %rcx	# strm_423->opaque, D.5863
	movl	$1, %edx	#,
	movq	%rcx, %rdi	# D.5863,
	call	*%rax	# D.5861
	movq	-392(%rbp), %rdx	# s, tmp2113
	movq	%rax, 3152(%rdx)	# D.5863, s_422(D)->tt
	.loc 1 259 0
	movq	-392(%rbp), %rax	# s, tmp2114
	movq	3152(%rax), %rax	# s_422(D)->tt, D.5866
	testq	%rax, %rax	# D.5866
	jne	.L13	#,
	.loc 1 259 0 is_stmt 0 discriminator 1
	movl	$-3, -372(%rbp)	#, retVal
	jmp	.L53	#
.L13:
	.loc 1 262 0 is_stmt 1
	movq	-392(%rbp), %rax	# s, tmp2115
	movl	$14, 8(%rax)	#, s_422(D)->state
.L79:
	.loc 1 262 0 is_stmt 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp2116
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	cmpl	$7, %eax	#, D.5856
	jle	.L75	#,
.LBB6:
	movq	-392(%rbp), %rax	# s, tmp2117
	movl	32(%rax), %edx	# s_422(D)->bsBuff, D.5857
	movq	-392(%rbp), %rax	# s, tmp2118
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	subl	$8, %eax	#, D.5856
	movl	%eax, %ecx	# D.5856, tmp3605
	shrl	%cl, %edx	# tmp3605, D.5857
	movl	%edx, %eax	# D.5857, D.5857
	andl	$255, %eax	#, tmp2119
	movl	%eax, -224(%rbp)	# tmp2119, v
	movq	-392(%rbp), %rax	# s, tmp2120
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	leal	-8(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp2121
	movl	%edx, 36(%rax)	# D.5856, s_422(D)->bsLive
	movl	-224(%rbp), %eax	# v, tmp2122
	movb	%al, -375(%rbp)	# tmp2122, uc
	nop
.LBE6:
	.loc 1 264 0 is_stmt 1 discriminator 1
	cmpb	$23, -375(%rbp)	#, uc
	jne	.L80	#,
	jmp	.L399	#
.L75:
	.loc 1 262 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp2123
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	8(%rax), %eax	# _636->avail_in, D.5857
	testl	%eax, %eax	# D.5857
	jne	.L77	#,
	.loc 1 262 0 is_stmt 0 discriminator 1
	movl	$0, -372(%rbp)	#, retVal
	jmp	.L53	#
.L77:
	.loc 1 262 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp2124
	movl	32(%rax), %eax	# s_422(D)->bsBuff, D.5857
	sall	$8, %eax	#, D.5857
	movl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp2125
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movq	(%rax), %rax	# _641->next_in, D.5859
	movzbl	(%rax), %eax	# MEM[(UChar *)_642], D.5860
	movzbl	%al, %eax	# D.5860, D.5857
	orl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp2126
	movl	%edx, 32(%rax)	# D.5857, s_422(D)->bsBuff
	movq	-392(%rbp), %rax	# s, tmp2127
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	leal	8(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp2128
	movl	%edx, 36(%rax)	# D.5856, s_422(D)->bsLive
	movq	-392(%rbp), %rax	# s, tmp2129
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movq	(%rax), %rdx	# _648->next_in, D.5859
	addq	$1, %rdx	#, D.5859
	movq	%rdx, (%rax)	# D.5859, _648->next_in
	movq	-392(%rbp), %rax	# s, tmp2130
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	8(%rax), %edx	# _651->avail_in, D.5857
	subl	$1, %edx	#, D.5857
	movl	%edx, 8(%rax)	# D.5857, _651->avail_in
	movq	-392(%rbp), %rax	# s, tmp2131
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	12(%rax), %edx	# _654->total_in_lo32, D.5857
	addl	$1, %edx	#, D.5857
	movl	%edx, 12(%rax)	# D.5857, _654->total_in_lo32
	movq	-392(%rbp), %rax	# s, tmp2132
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	12(%rax), %eax	# _657->total_in_lo32, D.5857
	testl	%eax, %eax	# D.5857
	jne	.L78	#,
	.loc 1 262 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp2133
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	16(%rax), %edx	# _659->total_in_hi32, D.5857
	addl	$1, %edx	#, D.5857
	movl	%edx, 16(%rax)	# D.5857, _659->total_in_hi32
	jmp	.L79	#
.L78:
	.loc 1 262 0 discriminator 2
	jmp	.L79	#
.L399:
	.loc 1 264 0 is_stmt 1 discriminator 1
	jmp	.L41	#
.L80:
	.loc 1 265 0
	cmpb	$49, -375(%rbp)	#, uc
	je	.L14	#,
	.loc 1 265 0 is_stmt 0 discriminator 1
	movl	$-4, -372(%rbp)	#, retVal
	jmp	.L53	#
.L14:
	.loc 1 266 0 is_stmt 1
	movq	-392(%rbp), %rax	# s, tmp2134
	movl	$15, 8(%rax)	#, s_422(D)->state
.L85:
	.loc 1 266 0 is_stmt 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp2135
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	cmpl	$7, %eax	#, D.5856
	jle	.L81	#,
.LBB7:
	movq	-392(%rbp), %rax	# s, tmp2136
	movl	32(%rax), %edx	# s_422(D)->bsBuff, D.5857
	movq	-392(%rbp), %rax	# s, tmp2137
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	subl	$8, %eax	#, D.5856
	movl	%eax, %ecx	# D.5856, tmp3608
	shrl	%cl, %edx	# tmp3608, D.5857
	movl	%edx, %eax	# D.5857, D.5857
	andl	$255, %eax	#, tmp2138
	movl	%eax, -220(%rbp)	# tmp2138, v
	movq	-392(%rbp), %rax	# s, tmp2139
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	leal	-8(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp2140
	movl	%edx, 36(%rax)	# D.5856, s_422(D)->bsLive
	movl	-220(%rbp), %eax	# v, tmp2141
	movb	%al, -375(%rbp)	# tmp2141, uc
	nop
.LBE7:
	.loc 1 267 0 is_stmt 1 discriminator 1
	cmpb	$65, -375(%rbp)	#, uc
	je	.L15	#,
	jmp	.L400	#
.L81:
	.loc 1 266 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp2142
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	8(%rax), %eax	# _672->avail_in, D.5857
	testl	%eax, %eax	# D.5857
	jne	.L83	#,
	.loc 1 266 0 is_stmt 0 discriminator 1
	movl	$0, -372(%rbp)	#, retVal
	jmp	.L53	#
.L83:
	.loc 1 266 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp2143
	movl	32(%rax), %eax	# s_422(D)->bsBuff, D.5857
	sall	$8, %eax	#, D.5857
	movl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp2144
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movq	(%rax), %rax	# _677->next_in, D.5859
	movzbl	(%rax), %eax	# MEM[(UChar *)_678], D.5860
	movzbl	%al, %eax	# D.5860, D.5857
	orl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp2145
	movl	%edx, 32(%rax)	# D.5857, s_422(D)->bsBuff
	movq	-392(%rbp), %rax	# s, tmp2146
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	leal	8(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp2147
	movl	%edx, 36(%rax)	# D.5856, s_422(D)->bsLive
	movq	-392(%rbp), %rax	# s, tmp2148
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movq	(%rax), %rdx	# _684->next_in, D.5859
	addq	$1, %rdx	#, D.5859
	movq	%rdx, (%rax)	# D.5859, _684->next_in
	movq	-392(%rbp), %rax	# s, tmp2149
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	8(%rax), %edx	# _687->avail_in, D.5857
	subl	$1, %edx	#, D.5857
	movl	%edx, 8(%rax)	# D.5857, _687->avail_in
	movq	-392(%rbp), %rax	# s, tmp2150
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	12(%rax), %edx	# _690->total_in_lo32, D.5857
	addl	$1, %edx	#, D.5857
	movl	%edx, 12(%rax)	# D.5857, _690->total_in_lo32
	movq	-392(%rbp), %rax	# s, tmp2151
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	12(%rax), %eax	# _693->total_in_lo32, D.5857
	testl	%eax, %eax	# D.5857
	jne	.L84	#,
	.loc 1 266 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp2152
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	16(%rax), %edx	# _695->total_in_hi32, D.5857
	addl	$1, %edx	#, D.5857
	movl	%edx, 16(%rax)	# D.5857, _695->total_in_hi32
	jmp	.L85	#
.L84:
	.loc 1 266 0 discriminator 2
	jmp	.L85	#
.L400:
	.loc 1 267 0 is_stmt 1 discriminator 1
	movl	$-4, -372(%rbp)	#, retVal
	jmp	.L53	#
.L15:
	.loc 1 268 0
	movq	-392(%rbp), %rax	# s, tmp2153
	movl	$16, 8(%rax)	#, s_422(D)->state
.L90:
	.loc 1 268 0 is_stmt 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp2154
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	cmpl	$7, %eax	#, D.5856
	jle	.L86	#,
.LBB8:
	movq	-392(%rbp), %rax	# s, tmp2155
	movl	32(%rax), %edx	# s_422(D)->bsBuff, D.5857
	movq	-392(%rbp), %rax	# s, tmp2156
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	subl	$8, %eax	#, D.5856
	movl	%eax, %ecx	# D.5856, tmp3611
	shrl	%cl, %edx	# tmp3611, D.5857
	movl	%edx, %eax	# D.5857, D.5857
	andl	$255, %eax	#, tmp2157
	movl	%eax, -216(%rbp)	# tmp2157, v
	movq	-392(%rbp), %rax	# s, tmp2158
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	leal	-8(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp2159
	movl	%edx, 36(%rax)	# D.5856, s_422(D)->bsLive
	movl	-216(%rbp), %eax	# v, tmp2160
	movb	%al, -375(%rbp)	# tmp2160, uc
	nop
.LBE8:
	.loc 1 269 0 is_stmt 1 discriminator 1
	cmpb	$89, -375(%rbp)	#, uc
	je	.L16	#,
	jmp	.L401	#
.L86:
	.loc 1 268 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp2161
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	8(%rax), %eax	# _708->avail_in, D.5857
	testl	%eax, %eax	# D.5857
	jne	.L88	#,
	.loc 1 268 0 is_stmt 0 discriminator 1
	movl	$0, -372(%rbp)	#, retVal
	jmp	.L53	#
.L88:
	.loc 1 268 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp2162
	movl	32(%rax), %eax	# s_422(D)->bsBuff, D.5857
	sall	$8, %eax	#, D.5857
	movl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp2163
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movq	(%rax), %rax	# _713->next_in, D.5859
	movzbl	(%rax), %eax	# MEM[(UChar *)_714], D.5860
	movzbl	%al, %eax	# D.5860, D.5857
	orl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp2164
	movl	%edx, 32(%rax)	# D.5857, s_422(D)->bsBuff
	movq	-392(%rbp), %rax	# s, tmp2165
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	leal	8(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp2166
	movl	%edx, 36(%rax)	# D.5856, s_422(D)->bsLive
	movq	-392(%rbp), %rax	# s, tmp2167
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movq	(%rax), %rdx	# _720->next_in, D.5859
	addq	$1, %rdx	#, D.5859
	movq	%rdx, (%rax)	# D.5859, _720->next_in
	movq	-392(%rbp), %rax	# s, tmp2168
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	8(%rax), %edx	# _723->avail_in, D.5857
	subl	$1, %edx	#, D.5857
	movl	%edx, 8(%rax)	# D.5857, _723->avail_in
	movq	-392(%rbp), %rax	# s, tmp2169
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	12(%rax), %edx	# _726->total_in_lo32, D.5857
	addl	$1, %edx	#, D.5857
	movl	%edx, 12(%rax)	# D.5857, _726->total_in_lo32
	movq	-392(%rbp), %rax	# s, tmp2170
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	12(%rax), %eax	# _729->total_in_lo32, D.5857
	testl	%eax, %eax	# D.5857
	jne	.L89	#,
	.loc 1 268 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp2171
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	16(%rax), %edx	# _731->total_in_hi32, D.5857
	addl	$1, %edx	#, D.5857
	movl	%edx, 16(%rax)	# D.5857, _731->total_in_hi32
	jmp	.L90	#
.L89:
	.loc 1 268 0 discriminator 2
	jmp	.L90	#
.L401:
	.loc 1 269 0 is_stmt 1 discriminator 1
	movl	$-4, -372(%rbp)	#, retVal
	jmp	.L53	#
.L16:
	.loc 1 270 0
	movq	-392(%rbp), %rax	# s, tmp2172
	movl	$17, 8(%rax)	#, s_422(D)->state
.L95:
	.loc 1 270 0 is_stmt 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp2173
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	cmpl	$7, %eax	#, D.5856
	jle	.L91	#,
.LBB9:
	movq	-392(%rbp), %rax	# s, tmp2174
	movl	32(%rax), %edx	# s_422(D)->bsBuff, D.5857
	movq	-392(%rbp), %rax	# s, tmp2175
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	subl	$8, %eax	#, D.5856
	movl	%eax, %ecx	# D.5856, tmp3614
	shrl	%cl, %edx	# tmp3614, D.5857
	movl	%edx, %eax	# D.5857, D.5857
	andl	$255, %eax	#, tmp2176
	movl	%eax, -212(%rbp)	# tmp2176, v
	movq	-392(%rbp), %rax	# s, tmp2177
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	leal	-8(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp2178
	movl	%edx, 36(%rax)	# D.5856, s_422(D)->bsLive
	movl	-212(%rbp), %eax	# v, tmp2179
	movb	%al, -375(%rbp)	# tmp2179, uc
	nop
.LBE9:
	.loc 1 271 0 is_stmt 1 discriminator 1
	cmpb	$38, -375(%rbp)	#, uc
	je	.L17	#,
	jmp	.L402	#
.L91:
	.loc 1 270 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp2180
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	8(%rax), %eax	# _744->avail_in, D.5857
	testl	%eax, %eax	# D.5857
	jne	.L93	#,
	.loc 1 270 0 is_stmt 0 discriminator 1
	movl	$0, -372(%rbp)	#, retVal
	jmp	.L53	#
.L93:
	.loc 1 270 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp2181
	movl	32(%rax), %eax	# s_422(D)->bsBuff, D.5857
	sall	$8, %eax	#, D.5857
	movl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp2182
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movq	(%rax), %rax	# _749->next_in, D.5859
	movzbl	(%rax), %eax	# MEM[(UChar *)_750], D.5860
	movzbl	%al, %eax	# D.5860, D.5857
	orl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp2183
	movl	%edx, 32(%rax)	# D.5857, s_422(D)->bsBuff
	movq	-392(%rbp), %rax	# s, tmp2184
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	leal	8(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp2185
	movl	%edx, 36(%rax)	# D.5856, s_422(D)->bsLive
	movq	-392(%rbp), %rax	# s, tmp2186
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movq	(%rax), %rdx	# _756->next_in, D.5859
	addq	$1, %rdx	#, D.5859
	movq	%rdx, (%rax)	# D.5859, _756->next_in
	movq	-392(%rbp), %rax	# s, tmp2187
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	8(%rax), %edx	# _759->avail_in, D.5857
	subl	$1, %edx	#, D.5857
	movl	%edx, 8(%rax)	# D.5857, _759->avail_in
	movq	-392(%rbp), %rax	# s, tmp2188
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	12(%rax), %edx	# _762->total_in_lo32, D.5857
	addl	$1, %edx	#, D.5857
	movl	%edx, 12(%rax)	# D.5857, _762->total_in_lo32
	movq	-392(%rbp), %rax	# s, tmp2189
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	12(%rax), %eax	# _765->total_in_lo32, D.5857
	testl	%eax, %eax	# D.5857
	jne	.L94	#,
	.loc 1 270 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp2190
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	16(%rax), %edx	# _767->total_in_hi32, D.5857
	addl	$1, %edx	#, D.5857
	movl	%edx, 16(%rax)	# D.5857, _767->total_in_hi32
	jmp	.L95	#
.L94:
	.loc 1 270 0 discriminator 2
	jmp	.L95	#
.L402:
	.loc 1 271 0 is_stmt 1 discriminator 1
	movl	$-4, -372(%rbp)	#, retVal
	jmp	.L53	#
.L17:
	.loc 1 272 0
	movq	-392(%rbp), %rax	# s, tmp2191
	movl	$18, 8(%rax)	#, s_422(D)->state
.L100:
	.loc 1 272 0 is_stmt 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp2192
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	cmpl	$7, %eax	#, D.5856
	jle	.L96	#,
.LBB10:
	movq	-392(%rbp), %rax	# s, tmp2193
	movl	32(%rax), %edx	# s_422(D)->bsBuff, D.5857
	movq	-392(%rbp), %rax	# s, tmp2194
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	subl	$8, %eax	#, D.5856
	movl	%eax, %ecx	# D.5856, tmp3617
	shrl	%cl, %edx	# tmp3617, D.5857
	movl	%edx, %eax	# D.5857, D.5857
	andl	$255, %eax	#, tmp2195
	movl	%eax, -208(%rbp)	# tmp2195, v
	movq	-392(%rbp), %rax	# s, tmp2196
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	leal	-8(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp2197
	movl	%edx, 36(%rax)	# D.5856, s_422(D)->bsLive
	movl	-208(%rbp), %eax	# v, tmp2198
	movb	%al, -375(%rbp)	# tmp2198, uc
	nop
.LBE10:
	.loc 1 273 0 is_stmt 1 discriminator 1
	cmpb	$83, -375(%rbp)	#, uc
	je	.L18	#,
	jmp	.L403	#
.L96:
	.loc 1 272 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp2199
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	8(%rax), %eax	# _780->avail_in, D.5857
	testl	%eax, %eax	# D.5857
	jne	.L98	#,
	.loc 1 272 0 is_stmt 0 discriminator 1
	movl	$0, -372(%rbp)	#, retVal
	jmp	.L53	#
.L98:
	.loc 1 272 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp2200
	movl	32(%rax), %eax	# s_422(D)->bsBuff, D.5857
	sall	$8, %eax	#, D.5857
	movl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp2201
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movq	(%rax), %rax	# _785->next_in, D.5859
	movzbl	(%rax), %eax	# MEM[(UChar *)_786], D.5860
	movzbl	%al, %eax	# D.5860, D.5857
	orl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp2202
	movl	%edx, 32(%rax)	# D.5857, s_422(D)->bsBuff
	movq	-392(%rbp), %rax	# s, tmp2203
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	leal	8(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp2204
	movl	%edx, 36(%rax)	# D.5856, s_422(D)->bsLive
	movq	-392(%rbp), %rax	# s, tmp2205
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movq	(%rax), %rdx	# _792->next_in, D.5859
	addq	$1, %rdx	#, D.5859
	movq	%rdx, (%rax)	# D.5859, _792->next_in
	movq	-392(%rbp), %rax	# s, tmp2206
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	8(%rax), %edx	# _795->avail_in, D.5857
	subl	$1, %edx	#, D.5857
	movl	%edx, 8(%rax)	# D.5857, _795->avail_in
	movq	-392(%rbp), %rax	# s, tmp2207
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	12(%rax), %edx	# _798->total_in_lo32, D.5857
	addl	$1, %edx	#, D.5857
	movl	%edx, 12(%rax)	# D.5857, _798->total_in_lo32
	movq	-392(%rbp), %rax	# s, tmp2208
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	12(%rax), %eax	# _801->total_in_lo32, D.5857
	testl	%eax, %eax	# D.5857
	jne	.L99	#,
	.loc 1 272 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp2209
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	16(%rax), %edx	# _803->total_in_hi32, D.5857
	addl	$1, %edx	#, D.5857
	movl	%edx, 16(%rax)	# D.5857, _803->total_in_hi32
	jmp	.L100	#
.L99:
	.loc 1 272 0 discriminator 2
	jmp	.L100	#
.L403:
	.loc 1 273 0 is_stmt 1 discriminator 1
	movl	$-4, -372(%rbp)	#, retVal
	jmp	.L53	#
.L18:
	.loc 1 274 0
	movq	-392(%rbp), %rax	# s, tmp2210
	movl	$19, 8(%rax)	#, s_422(D)->state
.L105:
	.loc 1 274 0 is_stmt 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp2211
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	cmpl	$7, %eax	#, D.5856
	jle	.L101	#,
.LBB11:
	movq	-392(%rbp), %rax	# s, tmp2212
	movl	32(%rax), %edx	# s_422(D)->bsBuff, D.5857
	movq	-392(%rbp), %rax	# s, tmp2213
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	subl	$8, %eax	#, D.5856
	movl	%eax, %ecx	# D.5856, tmp3620
	shrl	%cl, %edx	# tmp3620, D.5857
	movl	%edx, %eax	# D.5857, D.5857
	andl	$255, %eax	#, tmp2214
	movl	%eax, -204(%rbp)	# tmp2214, v
	movq	-392(%rbp), %rax	# s, tmp2215
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	leal	-8(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp2216
	movl	%edx, 36(%rax)	# D.5856, s_422(D)->bsLive
	movl	-204(%rbp), %eax	# v, tmp2217
	movb	%al, -375(%rbp)	# tmp2217, uc
	nop
.LBE11:
	.loc 1 275 0 is_stmt 1 discriminator 1
	cmpb	$89, -375(%rbp)	#, uc
	je	.L106	#,
	jmp	.L404	#
.L101:
	.loc 1 274 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp2218
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	8(%rax), %eax	# _821->avail_in, D.5857
	testl	%eax, %eax	# D.5857
	jne	.L103	#,
	.loc 1 274 0 is_stmt 0 discriminator 1
	movl	$0, -372(%rbp)	#, retVal
	jmp	.L53	#
.L103:
	.loc 1 274 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp2219
	movl	32(%rax), %eax	# s_422(D)->bsBuff, D.5857
	sall	$8, %eax	#, D.5857
	movl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp2220
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movq	(%rax), %rax	# _826->next_in, D.5859
	movzbl	(%rax), %eax	# MEM[(UChar *)_827], D.5860
	movzbl	%al, %eax	# D.5860, D.5857
	orl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp2221
	movl	%edx, 32(%rax)	# D.5857, s_422(D)->bsBuff
	movq	-392(%rbp), %rax	# s, tmp2222
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	leal	8(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp2223
	movl	%edx, 36(%rax)	# D.5856, s_422(D)->bsLive
	movq	-392(%rbp), %rax	# s, tmp2224
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movq	(%rax), %rdx	# _833->next_in, D.5859
	addq	$1, %rdx	#, D.5859
	movq	%rdx, (%rax)	# D.5859, _833->next_in
	movq	-392(%rbp), %rax	# s, tmp2225
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	8(%rax), %edx	# _836->avail_in, D.5857
	subl	$1, %edx	#, D.5857
	movl	%edx, 8(%rax)	# D.5857, _836->avail_in
	movq	-392(%rbp), %rax	# s, tmp2226
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	12(%rax), %edx	# _839->total_in_lo32, D.5857
	addl	$1, %edx	#, D.5857
	movl	%edx, 12(%rax)	# D.5857, _839->total_in_lo32
	movq	-392(%rbp), %rax	# s, tmp2227
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	12(%rax), %eax	# _842->total_in_lo32, D.5857
	testl	%eax, %eax	# D.5857
	jne	.L104	#,
	.loc 1 274 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp2228
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	16(%rax), %edx	# _844->total_in_hi32, D.5857
	addl	$1, %edx	#, D.5857
	movl	%edx, 16(%rax)	# D.5857, _844->total_in_hi32
	jmp	.L105	#
.L104:
	.loc 1 274 0 discriminator 2
	jmp	.L105	#
.L404:
	.loc 1 275 0 is_stmt 1 discriminator 1
	movl	$-4, -372(%rbp)	#, retVal
	jmp	.L53	#
.L106:
	.loc 1 277 0
	movq	-392(%rbp), %rax	# s, tmp2229
	movl	48(%rax), %eax	# s_422(D)->currBlockNo, D.5856
	leal	1(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp2230
	movl	%edx, 48(%rax)	# D.5856, s_422(D)->currBlockNo
	.loc 1 278 0
	movq	-392(%rbp), %rax	# s, tmp2231
	movl	52(%rax), %eax	# s_422(D)->verbosity, D.5856
	cmpl	$1, %eax	#, D.5856
	jle	.L107	#,
	.loc 1 279 0
	movq	-392(%rbp), %rax	# s, tmp2232
	movl	48(%rax), %edx	# s_422(D)->currBlockNo, D.5856
	movq	stderr(%rip), %rax	# stderr, stderr.1
	movl	$.LC0, %esi	#,
	movq	%rax, %rdi	# stderr.1,
	movl	$0, %eax	#,
	call	fprintf	#
.L107:
	.loc 1 281 0
	movq	-392(%rbp), %rax	# s, tmp2233
	movl	$0, 3176(%rax)	#, s_422(D)->storedBlockCRC
.L19:
	.loc 1 282 0
	movq	-392(%rbp), %rax	# s, tmp2234
	movl	$20, 8(%rax)	#, s_422(D)->state
.L112:
	.loc 1 282 0 is_stmt 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp2235
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	cmpl	$7, %eax	#, D.5856
	jle	.L108	#,
.LBB12:
	movq	-392(%rbp), %rax	# s, tmp2236
	movl	32(%rax), %edx	# s_422(D)->bsBuff, D.5857
	movq	-392(%rbp), %rax	# s, tmp2237
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	subl	$8, %eax	#, D.5856
	movl	%eax, %ecx	# D.5856, tmp3623
	shrl	%cl, %edx	# tmp3623, D.5857
	movl	%edx, %eax	# D.5857, D.5857
	andl	$255, %eax	#, tmp2238
	movl	%eax, -200(%rbp)	# tmp2238, v
	movq	-392(%rbp), %rax	# s, tmp2239
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	leal	-8(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp2240
	movl	%edx, 36(%rax)	# D.5856, s_422(D)->bsLive
	movl	-200(%rbp), %eax	# v, tmp2241
	movb	%al, -375(%rbp)	# tmp2241, uc
	nop
.LBE12:
	.loc 1 283 0 is_stmt 1 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp2253
	movl	3176(%rax), %eax	# s_422(D)->storedBlockCRC, D.5857
	sall	$8, %eax	#, D.5857
	movl	%eax, %edx	# D.5857, D.5857
	movzbl	-375(%rbp), %eax	# uc, D.5857
	orl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp2254
	movl	%edx, 3176(%rax)	# D.5857, s_422(D)->storedBlockCRC
	jmp	.L20	#
.L108:
	.loc 1 282 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp2242
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	8(%rax), %eax	# _860->avail_in, D.5857
	testl	%eax, %eax	# D.5857
	jne	.L110	#,
	.loc 1 282 0 is_stmt 0 discriminator 1
	movl	$0, -372(%rbp)	#, retVal
	jmp	.L53	#
.L110:
	.loc 1 282 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp2243
	movl	32(%rax), %eax	# s_422(D)->bsBuff, D.5857
	sall	$8, %eax	#, D.5857
	movl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp2244
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movq	(%rax), %rax	# _865->next_in, D.5859
	movzbl	(%rax), %eax	# MEM[(UChar *)_866], D.5860
	movzbl	%al, %eax	# D.5860, D.5857
	orl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp2245
	movl	%edx, 32(%rax)	# D.5857, s_422(D)->bsBuff
	movq	-392(%rbp), %rax	# s, tmp2246
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	leal	8(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp2247
	movl	%edx, 36(%rax)	# D.5856, s_422(D)->bsLive
	movq	-392(%rbp), %rax	# s, tmp2248
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movq	(%rax), %rdx	# _872->next_in, D.5859
	addq	$1, %rdx	#, D.5859
	movq	%rdx, (%rax)	# D.5859, _872->next_in
	movq	-392(%rbp), %rax	# s, tmp2249
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	8(%rax), %edx	# _875->avail_in, D.5857
	subl	$1, %edx	#, D.5857
	movl	%edx, 8(%rax)	# D.5857, _875->avail_in
	movq	-392(%rbp), %rax	# s, tmp2250
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	12(%rax), %edx	# _878->total_in_lo32, D.5857
	addl	$1, %edx	#, D.5857
	movl	%edx, 12(%rax)	# D.5857, _878->total_in_lo32
	movq	-392(%rbp), %rax	# s, tmp2251
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	12(%rax), %eax	# _881->total_in_lo32, D.5857
	testl	%eax, %eax	# D.5857
	jne	.L111	#,
	.loc 1 282 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp2252
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	16(%rax), %edx	# _883->total_in_hi32, D.5857
	addl	$1, %edx	#, D.5857
	movl	%edx, 16(%rax)	# D.5857, _883->total_in_hi32
	jmp	.L112	#
.L111:
	.loc 1 282 0 discriminator 2
	jmp	.L112	#
.L20:
	.loc 1 284 0 is_stmt 1
	movq	-392(%rbp), %rax	# s, tmp2255
	movl	$21, 8(%rax)	#, s_422(D)->state
.L117:
	.loc 1 284 0 is_stmt 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp2256
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	cmpl	$7, %eax	#, D.5856
	jle	.L113	#,
.LBB13:
	movq	-392(%rbp), %rax	# s, tmp2257
	movl	32(%rax), %edx	# s_422(D)->bsBuff, D.5857
	movq	-392(%rbp), %rax	# s, tmp2258
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	subl	$8, %eax	#, D.5856
	movl	%eax, %ecx	# D.5856, tmp3627
	shrl	%cl, %edx	# tmp3627, D.5857
	movl	%edx, %eax	# D.5857, D.5857
	andl	$255, %eax	#, tmp2259
	movl	%eax, -196(%rbp)	# tmp2259, v
	movq	-392(%rbp), %rax	# s, tmp2260
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	leal	-8(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp2261
	movl	%edx, 36(%rax)	# D.5856, s_422(D)->bsLive
	movl	-196(%rbp), %eax	# v, tmp2262
	movb	%al, -375(%rbp)	# tmp2262, uc
	nop
.LBE13:
	.loc 1 285 0 is_stmt 1 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp2274
	movl	3176(%rax), %eax	# s_422(D)->storedBlockCRC, D.5857
	sall	$8, %eax	#, D.5857
	movl	%eax, %edx	# D.5857, D.5857
	movzbl	-375(%rbp), %eax	# uc, D.5857
	orl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp2275
	movl	%edx, 3176(%rax)	# D.5857, s_422(D)->storedBlockCRC
	jmp	.L21	#
.L113:
	.loc 1 284 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp2263
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	8(%rax), %eax	# _899->avail_in, D.5857
	testl	%eax, %eax	# D.5857
	jne	.L115	#,
	.loc 1 284 0 is_stmt 0 discriminator 1
	movl	$0, -372(%rbp)	#, retVal
	jmp	.L53	#
.L115:
	.loc 1 284 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp2264
	movl	32(%rax), %eax	# s_422(D)->bsBuff, D.5857
	sall	$8, %eax	#, D.5857
	movl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp2265
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movq	(%rax), %rax	# _904->next_in, D.5859
	movzbl	(%rax), %eax	# MEM[(UChar *)_905], D.5860
	movzbl	%al, %eax	# D.5860, D.5857
	orl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp2266
	movl	%edx, 32(%rax)	# D.5857, s_422(D)->bsBuff
	movq	-392(%rbp), %rax	# s, tmp2267
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	leal	8(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp2268
	movl	%edx, 36(%rax)	# D.5856, s_422(D)->bsLive
	movq	-392(%rbp), %rax	# s, tmp2269
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movq	(%rax), %rdx	# _911->next_in, D.5859
	addq	$1, %rdx	#, D.5859
	movq	%rdx, (%rax)	# D.5859, _911->next_in
	movq	-392(%rbp), %rax	# s, tmp2270
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	8(%rax), %edx	# _914->avail_in, D.5857
	subl	$1, %edx	#, D.5857
	movl	%edx, 8(%rax)	# D.5857, _914->avail_in
	movq	-392(%rbp), %rax	# s, tmp2271
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	12(%rax), %edx	# _917->total_in_lo32, D.5857
	addl	$1, %edx	#, D.5857
	movl	%edx, 12(%rax)	# D.5857, _917->total_in_lo32
	movq	-392(%rbp), %rax	# s, tmp2272
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	12(%rax), %eax	# _920->total_in_lo32, D.5857
	testl	%eax, %eax	# D.5857
	jne	.L116	#,
	.loc 1 284 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp2273
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	16(%rax), %edx	# _922->total_in_hi32, D.5857
	addl	$1, %edx	#, D.5857
	movl	%edx, 16(%rax)	# D.5857, _922->total_in_hi32
	jmp	.L117	#
.L116:
	.loc 1 284 0 discriminator 2
	jmp	.L117	#
.L21:
	.loc 1 286 0 is_stmt 1
	movq	-392(%rbp), %rax	# s, tmp2276
	movl	$22, 8(%rax)	#, s_422(D)->state
.L122:
	.loc 1 286 0 is_stmt 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp2277
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	cmpl	$7, %eax	#, D.5856
	jle	.L118	#,
.LBB14:
	movq	-392(%rbp), %rax	# s, tmp2278
	movl	32(%rax), %edx	# s_422(D)->bsBuff, D.5857
	movq	-392(%rbp), %rax	# s, tmp2279
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	subl	$8, %eax	#, D.5856
	movl	%eax, %ecx	# D.5856, tmp3631
	shrl	%cl, %edx	# tmp3631, D.5857
	movl	%edx, %eax	# D.5857, D.5857
	andl	$255, %eax	#, tmp2280
	movl	%eax, -192(%rbp)	# tmp2280, v
	movq	-392(%rbp), %rax	# s, tmp2281
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	leal	-8(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp2282
	movl	%edx, 36(%rax)	# D.5856, s_422(D)->bsLive
	movl	-192(%rbp), %eax	# v, tmp2283
	movb	%al, -375(%rbp)	# tmp2283, uc
	nop
.LBE14:
	.loc 1 287 0 is_stmt 1 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp2295
	movl	3176(%rax), %eax	# s_422(D)->storedBlockCRC, D.5857
	sall	$8, %eax	#, D.5857
	movl	%eax, %edx	# D.5857, D.5857
	movzbl	-375(%rbp), %eax	# uc, D.5857
	orl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp2296
	movl	%edx, 3176(%rax)	# D.5857, s_422(D)->storedBlockCRC
	jmp	.L22	#
.L118:
	.loc 1 286 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp2284
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	8(%rax), %eax	# _938->avail_in, D.5857
	testl	%eax, %eax	# D.5857
	jne	.L120	#,
	.loc 1 286 0 is_stmt 0 discriminator 1
	movl	$0, -372(%rbp)	#, retVal
	jmp	.L53	#
.L120:
	.loc 1 286 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp2285
	movl	32(%rax), %eax	# s_422(D)->bsBuff, D.5857
	sall	$8, %eax	#, D.5857
	movl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp2286
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movq	(%rax), %rax	# _943->next_in, D.5859
	movzbl	(%rax), %eax	# MEM[(UChar *)_944], D.5860
	movzbl	%al, %eax	# D.5860, D.5857
	orl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp2287
	movl	%edx, 32(%rax)	# D.5857, s_422(D)->bsBuff
	movq	-392(%rbp), %rax	# s, tmp2288
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	leal	8(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp2289
	movl	%edx, 36(%rax)	# D.5856, s_422(D)->bsLive
	movq	-392(%rbp), %rax	# s, tmp2290
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movq	(%rax), %rdx	# _950->next_in, D.5859
	addq	$1, %rdx	#, D.5859
	movq	%rdx, (%rax)	# D.5859, _950->next_in
	movq	-392(%rbp), %rax	# s, tmp2291
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	8(%rax), %edx	# _953->avail_in, D.5857
	subl	$1, %edx	#, D.5857
	movl	%edx, 8(%rax)	# D.5857, _953->avail_in
	movq	-392(%rbp), %rax	# s, tmp2292
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	12(%rax), %edx	# _956->total_in_lo32, D.5857
	addl	$1, %edx	#, D.5857
	movl	%edx, 12(%rax)	# D.5857, _956->total_in_lo32
	movq	-392(%rbp), %rax	# s, tmp2293
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	12(%rax), %eax	# _959->total_in_lo32, D.5857
	testl	%eax, %eax	# D.5857
	jne	.L121	#,
	.loc 1 286 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp2294
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	16(%rax), %edx	# _961->total_in_hi32, D.5857
	addl	$1, %edx	#, D.5857
	movl	%edx, 16(%rax)	# D.5857, _961->total_in_hi32
	jmp	.L122	#
.L121:
	.loc 1 286 0 discriminator 2
	jmp	.L122	#
.L22:
	.loc 1 288 0 is_stmt 1
	movq	-392(%rbp), %rax	# s, tmp2297
	movl	$23, 8(%rax)	#, s_422(D)->state
.L127:
	.loc 1 288 0 is_stmt 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp2298
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	cmpl	$7, %eax	#, D.5856
	jle	.L123	#,
.LBB15:
	movq	-392(%rbp), %rax	# s, tmp2299
	movl	32(%rax), %edx	# s_422(D)->bsBuff, D.5857
	movq	-392(%rbp), %rax	# s, tmp2300
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	subl	$8, %eax	#, D.5856
	movl	%eax, %ecx	# D.5856, tmp3635
	shrl	%cl, %edx	# tmp3635, D.5857
	movl	%edx, %eax	# D.5857, D.5857
	andl	$255, %eax	#, tmp2301
	movl	%eax, -188(%rbp)	# tmp2301, v
	movq	-392(%rbp), %rax	# s, tmp2302
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	leal	-8(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp2303
	movl	%edx, 36(%rax)	# D.5856, s_422(D)->bsLive
	movl	-188(%rbp), %eax	# v, tmp2304
	movb	%al, -375(%rbp)	# tmp2304, uc
	nop
.LBE15:
	.loc 1 289 0 is_stmt 1 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp2316
	movl	3176(%rax), %eax	# s_422(D)->storedBlockCRC, D.5857
	sall	$8, %eax	#, D.5857
	movl	%eax, %edx	# D.5857, D.5857
	movzbl	-375(%rbp), %eax	# uc, D.5857
	orl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp2317
	movl	%edx, 3176(%rax)	# D.5857, s_422(D)->storedBlockCRC
	jmp	.L23	#
.L123:
	.loc 1 288 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp2305
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	8(%rax), %eax	# _977->avail_in, D.5857
	testl	%eax, %eax	# D.5857
	jne	.L125	#,
	.loc 1 288 0 is_stmt 0 discriminator 1
	movl	$0, -372(%rbp)	#, retVal
	jmp	.L53	#
.L125:
	.loc 1 288 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp2306
	movl	32(%rax), %eax	# s_422(D)->bsBuff, D.5857
	sall	$8, %eax	#, D.5857
	movl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp2307
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movq	(%rax), %rax	# _982->next_in, D.5859
	movzbl	(%rax), %eax	# MEM[(UChar *)_983], D.5860
	movzbl	%al, %eax	# D.5860, D.5857
	orl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp2308
	movl	%edx, 32(%rax)	# D.5857, s_422(D)->bsBuff
	movq	-392(%rbp), %rax	# s, tmp2309
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	leal	8(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp2310
	movl	%edx, 36(%rax)	# D.5856, s_422(D)->bsLive
	movq	-392(%rbp), %rax	# s, tmp2311
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movq	(%rax), %rdx	# _989->next_in, D.5859
	addq	$1, %rdx	#, D.5859
	movq	%rdx, (%rax)	# D.5859, _989->next_in
	movq	-392(%rbp), %rax	# s, tmp2312
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	8(%rax), %edx	# _992->avail_in, D.5857
	subl	$1, %edx	#, D.5857
	movl	%edx, 8(%rax)	# D.5857, _992->avail_in
	movq	-392(%rbp), %rax	# s, tmp2313
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	12(%rax), %edx	# _995->total_in_lo32, D.5857
	addl	$1, %edx	#, D.5857
	movl	%edx, 12(%rax)	# D.5857, _995->total_in_lo32
	movq	-392(%rbp), %rax	# s, tmp2314
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	12(%rax), %eax	# _998->total_in_lo32, D.5857
	testl	%eax, %eax	# D.5857
	jne	.L126	#,
	.loc 1 288 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp2315
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	16(%rax), %edx	# _1000->total_in_hi32, D.5857
	addl	$1, %edx	#, D.5857
	movl	%edx, 16(%rax)	# D.5857, _1000->total_in_hi32
	jmp	.L127	#
.L126:
	.loc 1 288 0 discriminator 2
	jmp	.L127	#
.L23:
	.loc 1 291 0 is_stmt 1
	movq	-392(%rbp), %rax	# s, tmp2318
	movl	$24, 8(%rax)	#, s_422(D)->state
.L132:
	.loc 1 291 0 is_stmt 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp2319
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	testl	%eax, %eax	# D.5856
	jle	.L128	#,
.LBB16:
	movq	-392(%rbp), %rax	# s, tmp2320
	movl	32(%rax), %edx	# s_422(D)->bsBuff, D.5857
	movq	-392(%rbp), %rax	# s, tmp2321
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	subl	$1, %eax	#, D.5856
	movl	%eax, %ecx	# D.5856, tmp3639
	shrl	%cl, %edx	# tmp3639, D.5857
	movl	%edx, %eax	# D.5857, D.5857
	andl	$1, %eax	#, tmp2322
	movl	%eax, -184(%rbp)	# tmp2322, v
	movq	-392(%rbp), %rax	# s, tmp2323
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	leal	-1(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp2324
	movl	%edx, 36(%rax)	# D.5856, s_422(D)->bsLive
	movl	-184(%rbp), %eax	# v, tmp2325
	movl	%eax, %edx	# tmp2325, D.5860
	movq	-392(%rbp), %rax	# s, tmp2326
	movb	%dl, 20(%rax)	# D.5860, s_422(D)->blockRandomised
	nop
.LBE16:
	.loc 1 293 0 is_stmt 1 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp2338
	movl	$0, 56(%rax)	#, s_422(D)->origPtr
	jmp	.L24	#
.L128:
	.loc 1 291 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp2327
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	8(%rax), %eax	# _1012->avail_in, D.5857
	testl	%eax, %eax	# D.5857
	jne	.L130	#,
	.loc 1 291 0 is_stmt 0 discriminator 1
	movl	$0, -372(%rbp)	#, retVal
	jmp	.L53	#
.L130:
	.loc 1 291 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp2328
	movl	32(%rax), %eax	# s_422(D)->bsBuff, D.5857
	sall	$8, %eax	#, D.5857
	movl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp2329
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movq	(%rax), %rax	# _1017->next_in, D.5859
	movzbl	(%rax), %eax	# MEM[(UChar *)_1018], D.5860
	movzbl	%al, %eax	# D.5860, D.5857
	orl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp2330
	movl	%edx, 32(%rax)	# D.5857, s_422(D)->bsBuff
	movq	-392(%rbp), %rax	# s, tmp2331
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	leal	8(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp2332
	movl	%edx, 36(%rax)	# D.5856, s_422(D)->bsLive
	movq	-392(%rbp), %rax	# s, tmp2333
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movq	(%rax), %rdx	# _1024->next_in, D.5859
	addq	$1, %rdx	#, D.5859
	movq	%rdx, (%rax)	# D.5859, _1024->next_in
	movq	-392(%rbp), %rax	# s, tmp2334
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	8(%rax), %edx	# _1027->avail_in, D.5857
	subl	$1, %edx	#, D.5857
	movl	%edx, 8(%rax)	# D.5857, _1027->avail_in
	movq	-392(%rbp), %rax	# s, tmp2335
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	12(%rax), %edx	# _1030->total_in_lo32, D.5857
	addl	$1, %edx	#, D.5857
	movl	%edx, 12(%rax)	# D.5857, _1030->total_in_lo32
	movq	-392(%rbp), %rax	# s, tmp2336
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	12(%rax), %eax	# _1033->total_in_lo32, D.5857
	testl	%eax, %eax	# D.5857
	jne	.L131	#,
	.loc 1 291 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp2337
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	16(%rax), %edx	# _1035->total_in_hi32, D.5857
	addl	$1, %edx	#, D.5857
	movl	%edx, 16(%rax)	# D.5857, _1035->total_in_hi32
	jmp	.L132	#
.L131:
	.loc 1 291 0 discriminator 2
	jmp	.L132	#
.L24:
	.loc 1 294 0 is_stmt 1
	movq	-392(%rbp), %rax	# s, tmp2339
	movl	$25, 8(%rax)	#, s_422(D)->state
.L137:
	.loc 1 294 0 is_stmt 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp2340
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	cmpl	$7, %eax	#, D.5856
	jle	.L133	#,
.LBB17:
	movq	-392(%rbp), %rax	# s, tmp2341
	movl	32(%rax), %edx	# s_422(D)->bsBuff, D.5857
	movq	-392(%rbp), %rax	# s, tmp2342
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	subl	$8, %eax	#, D.5856
	movl	%eax, %ecx	# D.5856, tmp3642
	shrl	%cl, %edx	# tmp3642, D.5857
	movl	%edx, %eax	# D.5857, D.5857
	andl	$255, %eax	#, tmp2343
	movl	%eax, -180(%rbp)	# tmp2343, v
	movq	-392(%rbp), %rax	# s, tmp2344
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	leal	-8(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp2345
	movl	%edx, 36(%rax)	# D.5856, s_422(D)->bsLive
	movl	-180(%rbp), %eax	# v, tmp2346
	movb	%al, -375(%rbp)	# tmp2346, uc
	nop
.LBE17:
	.loc 1 295 0 is_stmt 1 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp2358
	movl	56(%rax), %eax	# s_422(D)->origPtr, D.5856
	sall	$8, %eax	#, D.5856
	movl	%eax, %edx	# D.5856, D.5856
	movzbl	-375(%rbp), %eax	# uc, D.5856
	orl	%eax, %edx	# D.5856, D.5856
	movq	-392(%rbp), %rax	# s, tmp2359
	movl	%edx, 56(%rax)	# D.5856, s_422(D)->origPtr
	jmp	.L25	#
.L133:
	.loc 1 294 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp2347
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	8(%rax), %eax	# _1051->avail_in, D.5857
	testl	%eax, %eax	# D.5857
	jne	.L135	#,
	.loc 1 294 0 is_stmt 0 discriminator 1
	movl	$0, -372(%rbp)	#, retVal
	jmp	.L53	#
.L135:
	.loc 1 294 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp2348
	movl	32(%rax), %eax	# s_422(D)->bsBuff, D.5857
	sall	$8, %eax	#, D.5857
	movl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp2349
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movq	(%rax), %rax	# _1056->next_in, D.5859
	movzbl	(%rax), %eax	# MEM[(UChar *)_1057], D.5860
	movzbl	%al, %eax	# D.5860, D.5857
	orl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp2350
	movl	%edx, 32(%rax)	# D.5857, s_422(D)->bsBuff
	movq	-392(%rbp), %rax	# s, tmp2351
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	leal	8(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp2352
	movl	%edx, 36(%rax)	# D.5856, s_422(D)->bsLive
	movq	-392(%rbp), %rax	# s, tmp2353
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movq	(%rax), %rdx	# _1063->next_in, D.5859
	addq	$1, %rdx	#, D.5859
	movq	%rdx, (%rax)	# D.5859, _1063->next_in
	movq	-392(%rbp), %rax	# s, tmp2354
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	8(%rax), %edx	# _1066->avail_in, D.5857
	subl	$1, %edx	#, D.5857
	movl	%edx, 8(%rax)	# D.5857, _1066->avail_in
	movq	-392(%rbp), %rax	# s, tmp2355
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	12(%rax), %edx	# _1069->total_in_lo32, D.5857
	addl	$1, %edx	#, D.5857
	movl	%edx, 12(%rax)	# D.5857, _1069->total_in_lo32
	movq	-392(%rbp), %rax	# s, tmp2356
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	12(%rax), %eax	# _1072->total_in_lo32, D.5857
	testl	%eax, %eax	# D.5857
	jne	.L136	#,
	.loc 1 294 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp2357
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	16(%rax), %edx	# _1074->total_in_hi32, D.5857
	addl	$1, %edx	#, D.5857
	movl	%edx, 16(%rax)	# D.5857, _1074->total_in_hi32
	jmp	.L137	#
.L136:
	.loc 1 294 0 discriminator 2
	jmp	.L137	#
.L25:
	.loc 1 296 0 is_stmt 1
	movq	-392(%rbp), %rax	# s, tmp2360
	movl	$26, 8(%rax)	#, s_422(D)->state
.L142:
	.loc 1 296 0 is_stmt 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp2361
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	cmpl	$7, %eax	#, D.5856
	jle	.L138	#,
.LBB18:
	movq	-392(%rbp), %rax	# s, tmp2362
	movl	32(%rax), %edx	# s_422(D)->bsBuff, D.5857
	movq	-392(%rbp), %rax	# s, tmp2363
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	subl	$8, %eax	#, D.5856
	movl	%eax, %ecx	# D.5856, tmp3646
	shrl	%cl, %edx	# tmp3646, D.5857
	movl	%edx, %eax	# D.5857, D.5857
	andl	$255, %eax	#, tmp2364
	movl	%eax, -176(%rbp)	# tmp2364, v
	movq	-392(%rbp), %rax	# s, tmp2365
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	leal	-8(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp2366
	movl	%edx, 36(%rax)	# D.5856, s_422(D)->bsLive
	movl	-176(%rbp), %eax	# v, tmp2367
	movb	%al, -375(%rbp)	# tmp2367, uc
	nop
.LBE18:
	.loc 1 297 0 is_stmt 1 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp2379
	movl	56(%rax), %eax	# s_422(D)->origPtr, D.5856
	sall	$8, %eax	#, D.5856
	movl	%eax, %edx	# D.5856, D.5856
	movzbl	-375(%rbp), %eax	# uc, D.5856
	orl	%eax, %edx	# D.5856, D.5856
	movq	-392(%rbp), %rax	# s, tmp2380
	movl	%edx, 56(%rax)	# D.5856, s_422(D)->origPtr
	jmp	.L26	#
.L138:
	.loc 1 296 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp2368
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	8(%rax), %eax	# _1090->avail_in, D.5857
	testl	%eax, %eax	# D.5857
	jne	.L140	#,
	.loc 1 296 0 is_stmt 0 discriminator 1
	movl	$0, -372(%rbp)	#, retVal
	jmp	.L53	#
.L140:
	.loc 1 296 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp2369
	movl	32(%rax), %eax	# s_422(D)->bsBuff, D.5857
	sall	$8, %eax	#, D.5857
	movl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp2370
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movq	(%rax), %rax	# _1095->next_in, D.5859
	movzbl	(%rax), %eax	# MEM[(UChar *)_1096], D.5860
	movzbl	%al, %eax	# D.5860, D.5857
	orl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp2371
	movl	%edx, 32(%rax)	# D.5857, s_422(D)->bsBuff
	movq	-392(%rbp), %rax	# s, tmp2372
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	leal	8(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp2373
	movl	%edx, 36(%rax)	# D.5856, s_422(D)->bsLive
	movq	-392(%rbp), %rax	# s, tmp2374
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movq	(%rax), %rdx	# _1102->next_in, D.5859
	addq	$1, %rdx	#, D.5859
	movq	%rdx, (%rax)	# D.5859, _1102->next_in
	movq	-392(%rbp), %rax	# s, tmp2375
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	8(%rax), %edx	# _1105->avail_in, D.5857
	subl	$1, %edx	#, D.5857
	movl	%edx, 8(%rax)	# D.5857, _1105->avail_in
	movq	-392(%rbp), %rax	# s, tmp2376
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	12(%rax), %edx	# _1108->total_in_lo32, D.5857
	addl	$1, %edx	#, D.5857
	movl	%edx, 12(%rax)	# D.5857, _1108->total_in_lo32
	movq	-392(%rbp), %rax	# s, tmp2377
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	12(%rax), %eax	# _1111->total_in_lo32, D.5857
	testl	%eax, %eax	# D.5857
	jne	.L141	#,
	.loc 1 296 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp2378
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	16(%rax), %edx	# _1113->total_in_hi32, D.5857
	addl	$1, %edx	#, D.5857
	movl	%edx, 16(%rax)	# D.5857, _1113->total_in_hi32
	jmp	.L142	#
.L141:
	.loc 1 296 0 discriminator 2
	jmp	.L142	#
.L26:
	.loc 1 298 0 is_stmt 1
	movq	-392(%rbp), %rax	# s, tmp2381
	movl	$27, 8(%rax)	#, s_422(D)->state
.L147:
	.loc 1 298 0 is_stmt 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp2382
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	cmpl	$7, %eax	#, D.5856
	jle	.L143	#,
.LBB19:
	movq	-392(%rbp), %rax	# s, tmp2383
	movl	32(%rax), %edx	# s_422(D)->bsBuff, D.5857
	movq	-392(%rbp), %rax	# s, tmp2384
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	subl	$8, %eax	#, D.5856
	movl	%eax, %ecx	# D.5856, tmp3650
	shrl	%cl, %edx	# tmp3650, D.5857
	movl	%edx, %eax	# D.5857, D.5857
	andl	$255, %eax	#, tmp2385
	movl	%eax, -172(%rbp)	# tmp2385, v
	movq	-392(%rbp), %rax	# s, tmp2386
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	leal	-8(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp2387
	movl	%edx, 36(%rax)	# D.5856, s_422(D)->bsLive
	movl	-172(%rbp), %eax	# v, tmp2388
	movb	%al, -375(%rbp)	# tmp2388, uc
	nop
.LBE19:
	.loc 1 299 0 is_stmt 1 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp2400
	movl	56(%rax), %eax	# s_422(D)->origPtr, D.5856
	sall	$8, %eax	#, D.5856
	movl	%eax, %edx	# D.5856, D.5856
	movzbl	-375(%rbp), %eax	# uc, D.5856
	orl	%eax, %edx	# D.5856, D.5856
	movq	-392(%rbp), %rax	# s, tmp2401
	movl	%edx, 56(%rax)	# D.5856, s_422(D)->origPtr
	.loc 1 301 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp2402
	movl	56(%rax), %eax	# s_422(D)->origPtr, D.5856
	testl	%eax, %eax	# D.5856
	jns	.L148	#,
	jmp	.L405	#
.L143:
	.loc 1 298 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp2389
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	8(%rax), %eax	# _1137->avail_in, D.5857
	testl	%eax, %eax	# D.5857
	jne	.L145	#,
	.loc 1 298 0 is_stmt 0 discriminator 1
	movl	$0, -372(%rbp)	#, retVal
	jmp	.L53	#
.L145:
	.loc 1 298 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp2390
	movl	32(%rax), %eax	# s_422(D)->bsBuff, D.5857
	sall	$8, %eax	#, D.5857
	movl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp2391
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movq	(%rax), %rax	# _1142->next_in, D.5859
	movzbl	(%rax), %eax	# MEM[(UChar *)_1143], D.5860
	movzbl	%al, %eax	# D.5860, D.5857
	orl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp2392
	movl	%edx, 32(%rax)	# D.5857, s_422(D)->bsBuff
	movq	-392(%rbp), %rax	# s, tmp2393
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	leal	8(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp2394
	movl	%edx, 36(%rax)	# D.5856, s_422(D)->bsLive
	movq	-392(%rbp), %rax	# s, tmp2395
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movq	(%rax), %rdx	# _1149->next_in, D.5859
	addq	$1, %rdx	#, D.5859
	movq	%rdx, (%rax)	# D.5859, _1149->next_in
	movq	-392(%rbp), %rax	# s, tmp2396
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	8(%rax), %edx	# _1152->avail_in, D.5857
	subl	$1, %edx	#, D.5857
	movl	%edx, 8(%rax)	# D.5857, _1152->avail_in
	movq	-392(%rbp), %rax	# s, tmp2397
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	12(%rax), %edx	# _1155->total_in_lo32, D.5857
	addl	$1, %edx	#, D.5857
	movl	%edx, 12(%rax)	# D.5857, _1155->total_in_lo32
	movq	-392(%rbp), %rax	# s, tmp2398
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	12(%rax), %eax	# _1158->total_in_lo32, D.5857
	testl	%eax, %eax	# D.5857
	jne	.L146	#,
	.loc 1 298 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp2399
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	16(%rax), %edx	# _1160->total_in_hi32, D.5857
	addl	$1, %edx	#, D.5857
	movl	%edx, 16(%rax)	# D.5857, _1160->total_in_hi32
	jmp	.L147	#
.L146:
	.loc 1 298 0 discriminator 2
	jmp	.L147	#
.L405:
	.loc 1 302 0 is_stmt 1
	movl	$-4, -372(%rbp)	#, retVal
	jmp	.L53	#
.L148:
	.loc 1 303 0
	movq	-392(%rbp), %rax	# s, tmp2403
	movl	56(%rax), %edx	# s_422(D)->origPtr, D.5856
	movq	-392(%rbp), %rax	# s, tmp2404
	movl	40(%rax), %eax	# s_422(D)->blockSize100k, D.5856
	imull	$100000, %eax, %eax	#, D.5856, D.5856
	addl	$10, %eax	#, D.5856
	cmpl	%eax, %edx	# D.5856, D.5856
	jle	.L149	#,
	.loc 1 304 0
	movl	$-4, -372(%rbp)	#, retVal
	jmp	.L53	#
.L149:
	.loc 1 307 0
	movl	$0, -360(%rbp)	#, i
	jmp	.L150	#
.L27:
	.loc 1 308 0
	movq	-392(%rbp), %rax	# s, tmp2405
	movl	$28, 8(%rax)	#, s_422(D)->state
.L155:
	.loc 1 308 0 is_stmt 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp2406
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	testl	%eax, %eax	# D.5856
	jle	.L151	#,
.LBB20:
	movq	-392(%rbp), %rax	# s, tmp2407
	movl	32(%rax), %edx	# s_422(D)->bsBuff, D.5857
	movq	-392(%rbp), %rax	# s, tmp2408
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	subl	$1, %eax	#, D.5856
	movl	%eax, %ecx	# D.5856, tmp3654
	shrl	%cl, %edx	# tmp3654, D.5857
	movl	%edx, %eax	# D.5857, D.5857
	andl	$1, %eax	#, tmp2409
	movl	%eax, -84(%rbp)	# tmp2409, v
	movq	-392(%rbp), %rax	# s, tmp2410
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	leal	-1(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp2411
	movl	%edx, 36(%rax)	# D.5856, s_422(D)->bsLive
	movl	-84(%rbp), %eax	# v, tmp2412
	movb	%al, -375(%rbp)	# tmp2412, uc
	nop
.LBE20:
	.loc 1 309 0 is_stmt 1 discriminator 1
	cmpb	$1, -375(%rbp)	#, uc
	jne	.L156	#,
	jmp	.L406	#
.L151:
	.loc 1 308 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp2413
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	8(%rax), %eax	# _2418->avail_in, D.5857
	testl	%eax, %eax	# D.5857
	jne	.L153	#,
	.loc 1 308 0 is_stmt 0 discriminator 1
	movl	$0, -372(%rbp)	#, retVal
	jmp	.L53	#
.L153:
	.loc 1 308 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp2414
	movl	32(%rax), %eax	# s_422(D)->bsBuff, D.5857
	sall	$8, %eax	#, D.5857
	movl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp2415
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movq	(%rax), %rax	# _2423->next_in, D.5859
	movzbl	(%rax), %eax	# MEM[(UChar *)_2424], D.5860
	movzbl	%al, %eax	# D.5860, D.5857
	orl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp2416
	movl	%edx, 32(%rax)	# D.5857, s_422(D)->bsBuff
	movq	-392(%rbp), %rax	# s, tmp2417
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	leal	8(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp2418
	movl	%edx, 36(%rax)	# D.5856, s_422(D)->bsLive
	movq	-392(%rbp), %rax	# s, tmp2419
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movq	(%rax), %rdx	# _2430->next_in, D.5859
	addq	$1, %rdx	#, D.5859
	movq	%rdx, (%rax)	# D.5859, _2430->next_in
	movq	-392(%rbp), %rax	# s, tmp2420
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	8(%rax), %edx	# _2433->avail_in, D.5857
	subl	$1, %edx	#, D.5857
	movl	%edx, 8(%rax)	# D.5857, _2433->avail_in
	movq	-392(%rbp), %rax	# s, tmp2421
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	12(%rax), %edx	# _2436->total_in_lo32, D.5857
	addl	$1, %edx	#, D.5857
	movl	%edx, 12(%rax)	# D.5857, _2436->total_in_lo32
	movq	-392(%rbp), %rax	# s, tmp2422
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	12(%rax), %eax	# _2439->total_in_lo32, D.5857
	testl	%eax, %eax	# D.5857
	jne	.L154	#,
	.loc 1 308 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp2423
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	16(%rax), %edx	# _2441->total_in_hi32, D.5857
	addl	$1, %edx	#, D.5857
	movl	%edx, 16(%rax)	# D.5857, _2441->total_in_hi32
	jmp	.L155	#
.L154:
	.loc 1 308 0 discriminator 2
	jmp	.L155	#
.L406:
	.loc 1 310 0 is_stmt 1
	movq	-392(%rbp), %rdx	# s, tmp2424
	movl	-360(%rbp), %eax	# i, tmp2426
	cltq
	movb	$1, 3452(%rdx,%rax)	#, s_422(D)->inUse16
	jmp	.L157	#
.L156:
	.loc 1 311 0
	movq	-392(%rbp), %rdx	# s, tmp2427
	movl	-360(%rbp), %eax	# i, tmp2429
	cltq
	movb	$0, 3452(%rdx,%rax)	#, s_422(D)->inUse16
.L157:
	.loc 1 307 0
	addl	$1, -360(%rbp)	#, i
.L150:
	.loc 1 307 0 is_stmt 0 discriminator 1
	cmpl	$15, -360(%rbp)	#, i
	jle	.L27	#,
	.loc 1 314 0 is_stmt 1
	movl	$0, -360(%rbp)	#, i
	jmp	.L158	#
.L159:
	.loc 1 314 0 is_stmt 0 discriminator 2
	movq	-392(%rbp), %rdx	# s, tmp2430
	movl	-360(%rbp), %eax	# i, tmp2432
	cltq
	movb	$0, 3196(%rdx,%rax)	#, s_422(D)->inUse
	addl	$1, -360(%rbp)	#, i
.L158:
	.loc 1 314 0 discriminator 1
	cmpl	$255, -360(%rbp)	#, i
	jle	.L159	#,
	.loc 1 316 0 is_stmt 1
	movl	$0, -360(%rbp)	#, i
	jmp	.L160	#
.L169:
	.loc 1 317 0
	movq	-392(%rbp), %rdx	# s, tmp2433
	movl	-360(%rbp), %eax	# i, tmp2435
	cltq
	movzbl	3452(%rdx,%rax), %eax	# s_422(D)->inUse16, D.5860
	testb	%al, %al	# D.5860
	je	.L161	#,
	.loc 1 318 0
	movl	$0, -356(%rbp)	#, j
	jmp	.L162	#
.L28:
	.loc 1 319 0
	movq	-392(%rbp), %rax	# s, tmp2436
	movl	$29, 8(%rax)	#, s_422(D)->state
.L167:
	.loc 1 319 0 is_stmt 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp2437
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	testl	%eax, %eax	# D.5856
	jle	.L163	#,
.LBB21:
	movq	-392(%rbp), %rax	# s, tmp2438
	movl	32(%rax), %edx	# s_422(D)->bsBuff, D.5857
	movq	-392(%rbp), %rax	# s, tmp2439
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	subl	$1, %eax	#, D.5856
	movl	%eax, %ecx	# D.5856, tmp3657
	shrl	%cl, %edx	# tmp3657, D.5857
	movl	%edx, %eax	# D.5857, D.5857
	andl	$1, %eax	#, tmp2440
	movl	%eax, -80(%rbp)	# tmp2440, v
	movq	-392(%rbp), %rax	# s, tmp2441
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	leal	-1(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp2442
	movl	%edx, 36(%rax)	# D.5856, s_422(D)->bsLive
	movl	-80(%rbp), %eax	# v, tmp2443
	movb	%al, -375(%rbp)	# tmp2443, uc
	nop
.LBE21:
	.loc 1 320 0 is_stmt 1 discriminator 1
	cmpb	$1, -375(%rbp)	#, uc
	jne	.L168	#,
	jmp	.L407	#
.L163:
	.loc 1 319 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp2444
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	8(%rax), %eax	# _2459->avail_in, D.5857
	testl	%eax, %eax	# D.5857
	jne	.L165	#,
	.loc 1 319 0 is_stmt 0 discriminator 1
	movl	$0, -372(%rbp)	#, retVal
	jmp	.L53	#
.L165:
	.loc 1 319 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp2445
	movl	32(%rax), %eax	# s_422(D)->bsBuff, D.5857
	sall	$8, %eax	#, D.5857
	movl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp2446
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movq	(%rax), %rax	# _2464->next_in, D.5859
	movzbl	(%rax), %eax	# MEM[(UChar *)_2465], D.5860
	movzbl	%al, %eax	# D.5860, D.5857
	orl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp2447
	movl	%edx, 32(%rax)	# D.5857, s_422(D)->bsBuff
	movq	-392(%rbp), %rax	# s, tmp2448
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	leal	8(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp2449
	movl	%edx, 36(%rax)	# D.5856, s_422(D)->bsLive
	movq	-392(%rbp), %rax	# s, tmp2450
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movq	(%rax), %rdx	# _2471->next_in, D.5859
	addq	$1, %rdx	#, D.5859
	movq	%rdx, (%rax)	# D.5859, _2471->next_in
	movq	-392(%rbp), %rax	# s, tmp2451
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	8(%rax), %edx	# _2474->avail_in, D.5857
	subl	$1, %edx	#, D.5857
	movl	%edx, 8(%rax)	# D.5857, _2474->avail_in
	movq	-392(%rbp), %rax	# s, tmp2452
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	12(%rax), %edx	# _2477->total_in_lo32, D.5857
	addl	$1, %edx	#, D.5857
	movl	%edx, 12(%rax)	# D.5857, _2477->total_in_lo32
	movq	-392(%rbp), %rax	# s, tmp2453
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	12(%rax), %eax	# _2480->total_in_lo32, D.5857
	testl	%eax, %eax	# D.5857
	jne	.L166	#,
	.loc 1 319 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp2454
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	16(%rax), %edx	# _2482->total_in_hi32, D.5857
	addl	$1, %edx	#, D.5857
	movl	%edx, 16(%rax)	# D.5857, _2482->total_in_hi32
	jmp	.L167	#
.L166:
	.loc 1 319 0 discriminator 2
	jmp	.L167	#
.L407:
	.loc 1 320 0 is_stmt 1 discriminator 1
	movl	-360(%rbp), %eax	# i, tmp2455
	sall	$4, %eax	#, D.5856
	movl	%eax, %edx	# D.5856, D.5856
	movl	-356(%rbp), %eax	# j, tmp2456
	addl	%edx, %eax	# D.5856, D.5856
	movq	-392(%rbp), %rdx	# s, tmp2457
	cltq
	movb	$1, 3196(%rdx,%rax)	#, s_422(D)->inUse
.L168:
	.loc 1 318 0
	addl	$1, -356(%rbp)	#, j
.L162:
	.loc 1 318 0 is_stmt 0 discriminator 1
	cmpl	$15, -356(%rbp)	#, j
	jle	.L28	#,
.L161:
	.loc 1 316 0 is_stmt 1
	addl	$1, -360(%rbp)	#, i
.L160:
	.loc 1 316 0 is_stmt 0 discriminator 1
	cmpl	$15, -360(%rbp)	#, i
	jle	.L169	#,
	.loc 1 322 0 is_stmt 1
	movq	-392(%rbp), %rax	# s, tmp2459
	movq	%rax, %rdi	# tmp2459,
	call	makeMaps_d	#
	.loc 1 323 0
	movq	-392(%rbp), %rax	# s, tmp2460
	movl	3192(%rax), %eax	# s_422(D)->nInUse, D.5856
	testl	%eax, %eax	# D.5856
	jne	.L170	#,
	.loc 1 323 0 is_stmt 0 discriminator 1
	movl	$-4, -372(%rbp)	#, retVal
	jmp	.L53	#
.L170:
	.loc 1 324 0 is_stmt 1
	movq	-392(%rbp), %rax	# s, tmp2461
	movl	3192(%rax), %eax	# s_422(D)->nInUse, D.5856
	addl	$2, %eax	#, tmp2462
	movl	%eax, -348(%rbp)	# tmp2462, alphaSize
.L29:
	.loc 1 327 0
	movq	-392(%rbp), %rax	# s, tmp2463
	movl	$30, 8(%rax)	#, s_422(D)->state
.L175:
	.loc 1 327 0 is_stmt 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp2464
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	cmpl	$2, %eax	#, D.5856
	jle	.L171	#,
.LBB22:
	movq	-392(%rbp), %rax	# s, tmp2465
	movl	32(%rax), %edx	# s_422(D)->bsBuff, D.5857
	movq	-392(%rbp), %rax	# s, tmp2466
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	subl	$3, %eax	#, D.5856
	movl	%eax, %ecx	# D.5856, tmp3661
	shrl	%cl, %edx	# tmp3661, D.5857
	movl	%edx, %eax	# D.5857, D.5857
	andl	$7, %eax	#, tmp2467
	movl	%eax, -76(%rbp)	# tmp2467, v
	movq	-392(%rbp), %rax	# s, tmp2468
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	leal	-3(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp2469
	movl	%edx, 36(%rax)	# D.5856, s_422(D)->bsLive
	movl	-76(%rbp), %eax	# v, tmp2470
	movl	%eax, -344(%rbp)	# tmp2470, nGroups
	nop
.LBE22:
	.loc 1 328 0 is_stmt 1 discriminator 1
	cmpl	$1, -344(%rbp)	#, nGroups
	jle	.L176	#,
	jmp	.L408	#
.L171:
	.loc 1 327 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp2471
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	8(%rax), %eax	# _2502->avail_in, D.5857
	testl	%eax, %eax	# D.5857
	jne	.L173	#,
	.loc 1 327 0 is_stmt 0 discriminator 1
	movl	$0, -372(%rbp)	#, retVal
	jmp	.L53	#
.L173:
	.loc 1 327 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp2472
	movl	32(%rax), %eax	# s_422(D)->bsBuff, D.5857
	sall	$8, %eax	#, D.5857
	movl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp2473
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movq	(%rax), %rax	# _2507->next_in, D.5859
	movzbl	(%rax), %eax	# MEM[(UChar *)_2508], D.5860
	movzbl	%al, %eax	# D.5860, D.5857
	orl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp2474
	movl	%edx, 32(%rax)	# D.5857, s_422(D)->bsBuff
	movq	-392(%rbp), %rax	# s, tmp2475
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	leal	8(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp2476
	movl	%edx, 36(%rax)	# D.5856, s_422(D)->bsLive
	movq	-392(%rbp), %rax	# s, tmp2477
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movq	(%rax), %rdx	# _2514->next_in, D.5859
	addq	$1, %rdx	#, D.5859
	movq	%rdx, (%rax)	# D.5859, _2514->next_in
	movq	-392(%rbp), %rax	# s, tmp2478
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	8(%rax), %edx	# _2517->avail_in, D.5857
	subl	$1, %edx	#, D.5857
	movl	%edx, 8(%rax)	# D.5857, _2517->avail_in
	movq	-392(%rbp), %rax	# s, tmp2479
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	12(%rax), %edx	# _2520->total_in_lo32, D.5857
	addl	$1, %edx	#, D.5857
	movl	%edx, 12(%rax)	# D.5857, _2520->total_in_lo32
	movq	-392(%rbp), %rax	# s, tmp2480
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	12(%rax), %eax	# _2523->total_in_lo32, D.5857
	testl	%eax, %eax	# D.5857
	jne	.L174	#,
	.loc 1 327 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp2481
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	16(%rax), %edx	# _2525->total_in_hi32, D.5857
	addl	$1, %edx	#, D.5857
	movl	%edx, 16(%rax)	# D.5857, _2525->total_in_hi32
	jmp	.L175	#
.L174:
	.loc 1 327 0 discriminator 2
	jmp	.L175	#
.L408:
	.loc 1 328 0 is_stmt 1 discriminator 2
	cmpl	$6, -344(%rbp)	#, nGroups
	jle	.L30	#,
.L176:
	.loc 1 328 0 is_stmt 0 discriminator 1
	movl	$-4, -372(%rbp)	#, retVal
	jmp	.L53	#
.L30:
	.loc 1 329 0 is_stmt 1
	movq	-392(%rbp), %rax	# s, tmp2482
	movl	$31, 8(%rax)	#, s_422(D)->state
.L181:
	.loc 1 329 0 is_stmt 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp2483
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	cmpl	$14, %eax	#, D.5856
	jle	.L177	#,
.LBB23:
	movq	-392(%rbp), %rax	# s, tmp2484
	movl	32(%rax), %edx	# s_422(D)->bsBuff, D.5857
	movq	-392(%rbp), %rax	# s, tmp2485
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	subl	$15, %eax	#, D.5856
	movl	%eax, %ecx	# D.5856, tmp3664
	shrl	%cl, %edx	# tmp3664, D.5857
	movl	%edx, %eax	# D.5857, D.5857
	andl	$32767, %eax	#, tmp2486
	movl	%eax, -72(%rbp)	# tmp2486, v
	movq	-392(%rbp), %rax	# s, tmp2487
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	leal	-15(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp2488
	movl	%edx, 36(%rax)	# D.5856, s_422(D)->bsLive
	movl	-72(%rbp), %eax	# v, tmp2489
	movl	%eax, -340(%rbp)	# tmp2489, nSelectors
	nop
.LBE23:
	.loc 1 330 0 is_stmt 1 discriminator 1
	cmpl	$0, -340(%rbp)	#, nSelectors
	jg	.L182	#,
	jmp	.L409	#
.L177:
	.loc 1 329 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp2490
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	8(%rax), %eax	# _2539->avail_in, D.5857
	testl	%eax, %eax	# D.5857
	jne	.L179	#,
	.loc 1 329 0 is_stmt 0 discriminator 1
	movl	$0, -372(%rbp)	#, retVal
	jmp	.L53	#
.L179:
	.loc 1 329 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp2491
	movl	32(%rax), %eax	# s_422(D)->bsBuff, D.5857
	sall	$8, %eax	#, D.5857
	movl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp2492
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movq	(%rax), %rax	# _2544->next_in, D.5859
	movzbl	(%rax), %eax	# MEM[(UChar *)_2545], D.5860
	movzbl	%al, %eax	# D.5860, D.5857
	orl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp2493
	movl	%edx, 32(%rax)	# D.5857, s_422(D)->bsBuff
	movq	-392(%rbp), %rax	# s, tmp2494
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	leal	8(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp2495
	movl	%edx, 36(%rax)	# D.5856, s_422(D)->bsLive
	movq	-392(%rbp), %rax	# s, tmp2496
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movq	(%rax), %rdx	# _2551->next_in, D.5859
	addq	$1, %rdx	#, D.5859
	movq	%rdx, (%rax)	# D.5859, _2551->next_in
	movq	-392(%rbp), %rax	# s, tmp2497
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	8(%rax), %edx	# _2554->avail_in, D.5857
	subl	$1, %edx	#, D.5857
	movl	%edx, 8(%rax)	# D.5857, _2554->avail_in
	movq	-392(%rbp), %rax	# s, tmp2498
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	12(%rax), %edx	# _2557->total_in_lo32, D.5857
	addl	$1, %edx	#, D.5857
	movl	%edx, 12(%rax)	# D.5857, _2557->total_in_lo32
	movq	-392(%rbp), %rax	# s, tmp2499
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	12(%rax), %eax	# _2560->total_in_lo32, D.5857
	testl	%eax, %eax	# D.5857
	jne	.L180	#,
	.loc 1 329 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp2500
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	16(%rax), %edx	# _2562->total_in_hi32, D.5857
	addl	$1, %edx	#, D.5857
	movl	%edx, 16(%rax)	# D.5857, _2562->total_in_hi32
	jmp	.L181	#
.L180:
	.loc 1 329 0 discriminator 2
	jmp	.L181	#
.L409:
	.loc 1 330 0 is_stmt 1 discriminator 1
	movl	$-4, -372(%rbp)	#, retVal
	jmp	.L53	#
.L182:
	.loc 1 331 0
	movl	$0, -360(%rbp)	#, i
	jmp	.L183	#
.L192:
	.loc 1 332 0
	movl	$0, -356(%rbp)	#, j
.L31:
	.loc 1 334 0
	movq	-392(%rbp), %rax	# s, tmp2501
	movl	$32, 8(%rax)	#, s_422(D)->state
.L188:
	.loc 1 334 0 is_stmt 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp2502
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	testl	%eax, %eax	# D.5856
	jle	.L184	#,
.LBB24:
	movq	-392(%rbp), %rax	# s, tmp2503
	movl	32(%rax), %edx	# s_422(D)->bsBuff, D.5857
	movq	-392(%rbp), %rax	# s, tmp2504
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	subl	$1, %eax	#, D.5856
	movl	%eax, %ecx	# D.5856, tmp3667
	shrl	%cl, %edx	# tmp3667, D.5857
	movl	%edx, %eax	# D.5857, D.5857
	andl	$1, %eax	#, tmp2505
	movl	%eax, -68(%rbp)	# tmp2505, v
	movq	-392(%rbp), %rax	# s, tmp2506
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	leal	-1(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp2507
	movl	%edx, 36(%rax)	# D.5856, s_422(D)->bsLive
	movl	-68(%rbp), %eax	# v, tmp2508
	movb	%al, -375(%rbp)	# tmp2508, uc
	nop
.LBE24:
	.loc 1 335 0 is_stmt 1 discriminator 1
	cmpb	$0, -375(%rbp)	#, uc
	jne	.L189	#,
	jmp	.L410	#
.L184:
	.loc 1 334 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp2509
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	8(%rax), %eax	# _2578->avail_in, D.5857
	testl	%eax, %eax	# D.5857
	jne	.L186	#,
	.loc 1 334 0 is_stmt 0 discriminator 1
	movl	$0, -372(%rbp)	#, retVal
	jmp	.L53	#
.L186:
	.loc 1 334 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp2510
	movl	32(%rax), %eax	# s_422(D)->bsBuff, D.5857
	sall	$8, %eax	#, D.5857
	movl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp2511
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movq	(%rax), %rax	# _2583->next_in, D.5859
	movzbl	(%rax), %eax	# MEM[(UChar *)_2584], D.5860
	movzbl	%al, %eax	# D.5860, D.5857
	orl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp2512
	movl	%edx, 32(%rax)	# D.5857, s_422(D)->bsBuff
	movq	-392(%rbp), %rax	# s, tmp2513
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	leal	8(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp2514
	movl	%edx, 36(%rax)	# D.5856, s_422(D)->bsLive
	movq	-392(%rbp), %rax	# s, tmp2515
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movq	(%rax), %rdx	# _2590->next_in, D.5859
	addq	$1, %rdx	#, D.5859
	movq	%rdx, (%rax)	# D.5859, _2590->next_in
	movq	-392(%rbp), %rax	# s, tmp2516
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	8(%rax), %edx	# _2593->avail_in, D.5857
	subl	$1, %edx	#, D.5857
	movl	%edx, 8(%rax)	# D.5857, _2593->avail_in
	movq	-392(%rbp), %rax	# s, tmp2517
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	12(%rax), %edx	# _2596->total_in_lo32, D.5857
	addl	$1, %edx	#, D.5857
	movl	%edx, 12(%rax)	# D.5857, _2596->total_in_lo32
	movq	-392(%rbp), %rax	# s, tmp2518
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	12(%rax), %eax	# _2599->total_in_lo32, D.5857
	testl	%eax, %eax	# D.5857
	jne	.L187	#,
	.loc 1 334 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp2519
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	16(%rax), %edx	# _2601->total_in_hi32, D.5857
	addl	$1, %edx	#, D.5857
	movl	%edx, 16(%rax)	# D.5857, _2601->total_in_hi32
	jmp	.L188	#
.L187:
	.loc 1 334 0 discriminator 2
	jmp	.L188	#
.L410:
	.loc 1 335 0 is_stmt 1 discriminator 1
	nop
	.loc 1 339 0 discriminator 1
	movl	-356(%rbp), %eax	# j, tmp2521
	movl	%eax, %ecx	# tmp2521, D.5860
	movq	-392(%rbp), %rdx	# s, tmp2522
	movl	-360(%rbp), %eax	# i, tmp2524
	cltq
	movb	%cl, 25886(%rdx,%rax)	# D.5860, s_422(D)->selectorMtf
	.loc 1 331 0 discriminator 1
	addl	$1, -360(%rbp)	#, i
	jmp	.L183	#
.L189:
	.loc 1 336 0
	addl	$1, -356(%rbp)	#, j
	.loc 1 337 0
	movl	-356(%rbp), %eax	# j, tmp2520
	cmpl	-344(%rbp), %eax	# nGroups, tmp2520
	jl	.L191	#,
	.loc 1 337 0 is_stmt 0 discriminator 1
	movl	$-4, -372(%rbp)	#, retVal
	jmp	.L53	#
.L191:
	.loc 1 338 0 is_stmt 1
	jmp	.L31	#
.L183:
	.loc 1 331 0 discriminator 1
	movl	-360(%rbp), %eax	# i, tmp2525
	cmpl	-340(%rbp), %eax	# nSelectors, tmp2525
	jl	.L192	#,
.LBB25:
	.loc 1 345 0
	movb	$0, -374(%rbp)	#, v
	jmp	.L193	#
.L194:
	.loc 1 345 0 is_stmt 0 discriminator 2
	movzbl	-374(%rbp), %eax	# v, D.5856
	cltq
	movzbl	-374(%rbp), %edx	# v, tmp2527
	movb	%dl, -32(%rbp,%rax)	# tmp2527, pos
	movzbl	-374(%rbp), %eax	# v, v.2
	addl	$1, %eax	#, tmp2528
	movb	%al, -374(%rbp)	# tmp2528, v
.L193:
	.loc 1 345 0 discriminator 1
	movzbl	-374(%rbp), %eax	# v, D.5856
	cmpl	-344(%rbp), %eax	# nGroups, D.5856
	jl	.L194	#,
	.loc 1 347 0 is_stmt 1
	movl	$0, -360(%rbp)	#, i
	jmp	.L195	#
.L198:
	.loc 1 348 0
	movq	-392(%rbp), %rdx	# s, tmp2529
	movl	-360(%rbp), %eax	# i, tmp2531
	cltq
	movzbl	25886(%rdx,%rax), %eax	# s_422(D)->selectorMtf, tmp2532
	movb	%al, -374(%rbp)	# tmp2532, v
	.loc 1 349 0
	movzbl	-374(%rbp), %eax	# v, D.5856
	cltq
	movzbl	-32(%rbp,%rax), %eax	# pos, tmp2534
	movb	%al, -373(%rbp)	# tmp2534, tmp
	.loc 1 350 0
	jmp	.L196	#
.L197:
	.loc 1 350 0 is_stmt 0 discriminator 2
	movzbl	-374(%rbp), %ecx	# v, D.5856
	movzbl	-374(%rbp), %eax	# v, D.5856
	subl	$1, %eax	#, D.5856
	cltq
	movzbl	-32(%rbp,%rax), %edx	# pos, D.5860
	movslq	%ecx, %rax	# D.5856, tmp2536
	movb	%dl, -32(%rbp,%rax)	# D.5860, pos
	movzbl	-374(%rbp), %eax	# v, v.3
	subl	$1, %eax	#, tmp2537
	movb	%al, -374(%rbp)	# tmp2537, v
.L196:
	.loc 1 350 0 discriminator 1
	cmpb	$0, -374(%rbp)	#, v
	jne	.L197	#,
	.loc 1 351 0 is_stmt 1
	movzbl	-373(%rbp), %eax	# tmp, tmp2538
	movb	%al, -32(%rbp)	# tmp2538, pos
	.loc 1 352 0
	movq	-392(%rbp), %rdx	# s, tmp2539
	movl	-360(%rbp), %eax	# i, tmp2541
	cltq
	movzbl	-373(%rbp), %ecx	# tmp, tmp2542
	movb	%cl, 7884(%rdx,%rax)	# tmp2542, s_422(D)->selector
	.loc 1 347 0
	addl	$1, -360(%rbp)	#, i
.L195:
	.loc 1 347 0 is_stmt 0 discriminator 1
	movl	-360(%rbp), %eax	# i, tmp2543
	cmpl	-340(%rbp), %eax	# nSelectors, tmp2543
	jl	.L198	#,
.LBE25:
	.loc 1 357 0 is_stmt 1
	movl	$0, -352(%rbp)	#, t
	jmp	.L199	#
.L32:
	.loc 1 358 0
	movq	-392(%rbp), %rax	# s, tmp2544
	movl	$33, 8(%rax)	#, s_422(D)->state
.L204:
	.loc 1 358 0 is_stmt 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp2545
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	cmpl	$4, %eax	#, D.5856
	jle	.L200	#,
.LBB26:
	movq	-392(%rbp), %rax	# s, tmp2546
	movl	32(%rax), %edx	# s_422(D)->bsBuff, D.5857
	movq	-392(%rbp), %rax	# s, tmp2547
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	subl	$5, %eax	#, D.5856
	movl	%eax, %ecx	# D.5856, tmp3670
	shrl	%cl, %edx	# tmp3670, D.5857
	movl	%edx, %eax	# D.5857, D.5857
	andl	$31, %eax	#, tmp2548
	movl	%eax, -132(%rbp)	# tmp2548, v
	movq	-392(%rbp), %rax	# s, tmp2549
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	leal	-5(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp2550
	movl	%edx, 36(%rax)	# D.5856, s_422(D)->bsLive
	movl	-132(%rbp), %eax	# v, tmp2551
	movl	%eax, -304(%rbp)	# tmp2551, curr
	nop
.LBE26:
	.loc 1 359 0 is_stmt 1 discriminator 1
	movl	$0, -360(%rbp)	#, i
	jmp	.L205	#
.L200:
	.loc 1 358 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp2552
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	8(%rax), %eax	# _1511->avail_in, D.5857
	testl	%eax, %eax	# D.5857
	jne	.L202	#,
	.loc 1 358 0 is_stmt 0 discriminator 1
	movl	$0, -372(%rbp)	#, retVal
	jmp	.L53	#
.L202:
	.loc 1 358 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp2553
	movl	32(%rax), %eax	# s_422(D)->bsBuff, D.5857
	sall	$8, %eax	#, D.5857
	movl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp2554
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movq	(%rax), %rax	# _1516->next_in, D.5859
	movzbl	(%rax), %eax	# MEM[(UChar *)_1517], D.5860
	movzbl	%al, %eax	# D.5860, D.5857
	orl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp2555
	movl	%edx, 32(%rax)	# D.5857, s_422(D)->bsBuff
	movq	-392(%rbp), %rax	# s, tmp2556
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	leal	8(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp2557
	movl	%edx, 36(%rax)	# D.5856, s_422(D)->bsLive
	movq	-392(%rbp), %rax	# s, tmp2558
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movq	(%rax), %rdx	# _1523->next_in, D.5859
	addq	$1, %rdx	#, D.5859
	movq	%rdx, (%rax)	# D.5859, _1523->next_in
	movq	-392(%rbp), %rax	# s, tmp2559
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	8(%rax), %edx	# _1526->avail_in, D.5857
	subl	$1, %edx	#, D.5857
	movl	%edx, 8(%rax)	# D.5857, _1526->avail_in
	movq	-392(%rbp), %rax	# s, tmp2560
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	12(%rax), %edx	# _1529->total_in_lo32, D.5857
	addl	$1, %edx	#, D.5857
	movl	%edx, 12(%rax)	# D.5857, _1529->total_in_lo32
	movq	-392(%rbp), %rax	# s, tmp2561
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	12(%rax), %eax	# _1532->total_in_lo32, D.5857
	testl	%eax, %eax	# D.5857
	jne	.L203	#,
	.loc 1 358 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp2562
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	16(%rax), %edx	# _1534->total_in_hi32, D.5857
	addl	$1, %edx	#, D.5857
	movl	%edx, 16(%rax)	# D.5857, _1534->total_in_hi32
	jmp	.L204	#
.L203:
	.loc 1 358 0 discriminator 2
	jmp	.L204	#
.L220:
	.loc 1 361 0 is_stmt 1
	cmpl	$0, -304(%rbp)	#, curr
	jle	.L206	#,
	.loc 1 361 0 is_stmt 0 discriminator 2
	cmpl	$20, -304(%rbp)	#, curr
	jle	.L33	#,
.L206:
	.loc 1 361 0 discriminator 1
	movl	$-4, -372(%rbp)	#, retVal
	jmp	.L53	#
.L33:
	.loc 1 362 0 is_stmt 1
	movq	-392(%rbp), %rax	# s, tmp2563
	movl	$34, 8(%rax)	#, s_422(D)->state
.L211:
	.loc 1 362 0 is_stmt 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp2564
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	testl	%eax, %eax	# D.5856
	jle	.L207	#,
.LBB27:
	movq	-392(%rbp), %rax	# s, tmp2565
	movl	32(%rax), %edx	# s_422(D)->bsBuff, D.5857
	movq	-392(%rbp), %rax	# s, tmp2566
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	subl	$1, %eax	#, D.5856
	movl	%eax, %ecx	# D.5856, tmp3673
	shrl	%cl, %edx	# tmp3673, D.5857
	movl	%edx, %eax	# D.5857, D.5857
	andl	$1, %eax	#, tmp2567
	movl	%eax, -128(%rbp)	# tmp2567, v
	movq	-392(%rbp), %rax	# s, tmp2568
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	leal	-1(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp2569
	movl	%edx, 36(%rax)	# D.5856, s_422(D)->bsLive
	movl	-128(%rbp), %eax	# v, tmp2570
	movb	%al, -375(%rbp)	# tmp2570, uc
	nop
.LBE27:
	.loc 1 363 0 is_stmt 1 discriminator 1
	cmpb	$0, -375(%rbp)	#, uc
	jne	.L34	#,
	jmp	.L411	#
.L207:
	.loc 1 362 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp2571
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	8(%rax), %eax	# _1549->avail_in, D.5857
	testl	%eax, %eax	# D.5857
	jne	.L209	#,
	.loc 1 362 0 is_stmt 0 discriminator 1
	movl	$0, -372(%rbp)	#, retVal
	jmp	.L53	#
.L209:
	.loc 1 362 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp2572
	movl	32(%rax), %eax	# s_422(D)->bsBuff, D.5857
	sall	$8, %eax	#, D.5857
	movl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp2573
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movq	(%rax), %rax	# _1554->next_in, D.5859
	movzbl	(%rax), %eax	# MEM[(UChar *)_1555], D.5860
	movzbl	%al, %eax	# D.5860, D.5857
	orl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp2574
	movl	%edx, 32(%rax)	# D.5857, s_422(D)->bsBuff
	movq	-392(%rbp), %rax	# s, tmp2575
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	leal	8(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp2576
	movl	%edx, 36(%rax)	# D.5856, s_422(D)->bsLive
	movq	-392(%rbp), %rax	# s, tmp2577
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movq	(%rax), %rdx	# _1561->next_in, D.5859
	addq	$1, %rdx	#, D.5859
	movq	%rdx, (%rax)	# D.5859, _1561->next_in
	movq	-392(%rbp), %rax	# s, tmp2578
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	8(%rax), %edx	# _1564->avail_in, D.5857
	subl	$1, %edx	#, D.5857
	movl	%edx, 8(%rax)	# D.5857, _1564->avail_in
	movq	-392(%rbp), %rax	# s, tmp2579
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	12(%rax), %edx	# _1567->total_in_lo32, D.5857
	addl	$1, %edx	#, D.5857
	movl	%edx, 12(%rax)	# D.5857, _1567->total_in_lo32
	movq	-392(%rbp), %rax	# s, tmp2580
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	12(%rax), %eax	# _1570->total_in_lo32, D.5857
	testl	%eax, %eax	# D.5857
	jne	.L210	#,
	.loc 1 362 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp2581
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	16(%rax), %edx	# _1572->total_in_hi32, D.5857
	addl	$1, %edx	#, D.5857
	movl	%edx, 16(%rax)	# D.5857, _1572->total_in_hi32
	jmp	.L211	#
.L210:
	.loc 1 362 0 discriminator 2
	jmp	.L211	#
.L411:
	.loc 1 363 0 is_stmt 1 discriminator 1
	nop
	.loc 1 367 0 discriminator 1
	movl	-304(%rbp), %eax	# curr, tmp2601
	movl	%eax, %edx	# tmp2601, D.5860
	movq	-392(%rbp), %rsi	# s, tmp2602
	movl	-360(%rbp), %eax	# i, tmp2604
	movslq	%eax, %rcx	# tmp2604, tmp2603
	movl	-352(%rbp), %eax	# t, tmp2606
	cltq
	addq	%rax, %rax	# tmp2608
	movq	%rax, %rdi	# tmp2607, tmp2609
	salq	$7, %rdi	#, tmp2609
	addq	%rdi, %rax	# tmp2609, tmp2607
	addq	%rsi, %rax	# tmp2602, tmp2610
	addq	%rcx, %rax	# tmp2603, tmp2611
	addq	$43888, %rax	#, tmp2612
	movb	%dl, (%rax)	# D.5860, s_422(D)->len
	.loc 1 359 0 discriminator 1
	addl	$1, -360(%rbp)	#, i
	jmp	.L205	#
.L34:
	.loc 1 364 0
	movq	-392(%rbp), %rax	# s, tmp2582
	movl	$35, 8(%rax)	#, s_422(D)->state
.L217:
	.loc 1 364 0 is_stmt 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp2583
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	testl	%eax, %eax	# D.5856
	jle	.L213	#,
.LBB28:
	movq	-392(%rbp), %rax	# s, tmp2584
	movl	32(%rax), %edx	# s_422(D)->bsBuff, D.5857
	movq	-392(%rbp), %rax	# s, tmp2585
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	subl	$1, %eax	#, D.5856
	movl	%eax, %ecx	# D.5856, tmp3677
	shrl	%cl, %edx	# tmp3677, D.5857
	movl	%edx, %eax	# D.5857, D.5857
	andl	$1, %eax	#, tmp2586
	movl	%eax, -124(%rbp)	# tmp2586, v
	movq	-392(%rbp), %rax	# s, tmp2587
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	leal	-1(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp2588
	movl	%edx, 36(%rax)	# D.5856, s_422(D)->bsLive
	movl	-124(%rbp), %eax	# v, tmp2589
	movb	%al, -375(%rbp)	# tmp2589, uc
	nop
.LBE28:
	.loc 1 365 0 is_stmt 1 discriminator 1
	cmpb	$0, -375(%rbp)	#, uc
	jne	.L218	#,
	jmp	.L412	#
.L213:
	.loc 1 364 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp2590
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	8(%rax), %eax	# _1587->avail_in, D.5857
	testl	%eax, %eax	# D.5857
	jne	.L215	#,
	.loc 1 364 0 is_stmt 0 discriminator 1
	movl	$0, -372(%rbp)	#, retVal
	jmp	.L53	#
.L215:
	.loc 1 364 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp2591
	movl	32(%rax), %eax	# s_422(D)->bsBuff, D.5857
	sall	$8, %eax	#, D.5857
	movl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp2592
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movq	(%rax), %rax	# _1592->next_in, D.5859
	movzbl	(%rax), %eax	# MEM[(UChar *)_1593], D.5860
	movzbl	%al, %eax	# D.5860, D.5857
	orl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp2593
	movl	%edx, 32(%rax)	# D.5857, s_422(D)->bsBuff
	movq	-392(%rbp), %rax	# s, tmp2594
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	leal	8(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp2595
	movl	%edx, 36(%rax)	# D.5856, s_422(D)->bsLive
	movq	-392(%rbp), %rax	# s, tmp2596
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movq	(%rax), %rdx	# _1599->next_in, D.5859
	addq	$1, %rdx	#, D.5859
	movq	%rdx, (%rax)	# D.5859, _1599->next_in
	movq	-392(%rbp), %rax	# s, tmp2597
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	8(%rax), %edx	# _1602->avail_in, D.5857
	subl	$1, %edx	#, D.5857
	movl	%edx, 8(%rax)	# D.5857, _1602->avail_in
	movq	-392(%rbp), %rax	# s, tmp2598
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	12(%rax), %edx	# _1605->total_in_lo32, D.5857
	addl	$1, %edx	#, D.5857
	movl	%edx, 12(%rax)	# D.5857, _1605->total_in_lo32
	movq	-392(%rbp), %rax	# s, tmp2599
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	12(%rax), %eax	# _1608->total_in_lo32, D.5857
	testl	%eax, %eax	# D.5857
	jne	.L216	#,
	.loc 1 364 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp2600
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	16(%rax), %edx	# _1610->total_in_hi32, D.5857
	addl	$1, %edx	#, D.5857
	movl	%edx, 16(%rax)	# D.5857, _1610->total_in_hi32
	jmp	.L217	#
.L216:
	.loc 1 364 0 discriminator 2
	jmp	.L217	#
.L412:
	.loc 1 365 0 is_stmt 1 discriminator 1
	addl	$1, -304(%rbp)	#, curr
	.loc 1 366 0 discriminator 1
	jmp	.L220	#
.L218:
	.loc 1 365 0 discriminator 2
	subl	$1, -304(%rbp)	#, curr
	.loc 1 366 0 discriminator 2
	jmp	.L220	#
.L205:
	.loc 1 359 0 discriminator 1
	movl	-360(%rbp), %eax	# i, tmp2613
	cmpl	-348(%rbp), %eax	# alphaSize, tmp2613
	jl	.L220	#,
	.loc 1 357 0
	addl	$1, -352(%rbp)	#, t
.L199:
	.loc 1 357 0 is_stmt 0 discriminator 1
	movl	-352(%rbp), %eax	# t, tmp2614
	cmpl	-344(%rbp), %eax	# nGroups, tmp2614
	jl	.L32	#,
	.loc 1 372 0 is_stmt 1
	movl	$0, -352(%rbp)	#, t
	jmp	.L221	#
.L226:
	.loc 1 373 0
	movl	$32, -368(%rbp)	#, minLen
	.loc 1 374 0
	movl	$0, -364(%rbp)	#, maxLen
	.loc 1 375 0
	movl	$0, -360(%rbp)	#, i
	jmp	.L222	#
.L225:
	.loc 1 376 0
	movq	-392(%rbp), %rcx	# s, tmp2615
	movl	-360(%rbp), %eax	# i, tmp2617
	movslq	%eax, %rdx	# tmp2617, tmp2616
	movl	-352(%rbp), %eax	# t, tmp2619
	cltq
	addq	%rax, %rax	# tmp2621
	movq	%rax, %rsi	# tmp2620, tmp2622
	salq	$7, %rsi	#, tmp2622
	addq	%rsi, %rax	# tmp2622, tmp2620
	addq	%rcx, %rax	# tmp2615, tmp2623
	addq	%rdx, %rax	# tmp2616, tmp2624
	addq	$43888, %rax	#, tmp2625
	movzbl	(%rax), %eax	# s_422(D)->len, D.5860
	movzbl	%al, %eax	# D.5860, D.5856
	cmpl	-364(%rbp), %eax	# maxLen, D.5856
	jle	.L223	#,
	.loc 1 376 0 is_stmt 0 discriminator 1
	movq	-392(%rbp), %rcx	# s, tmp2626
	movl	-360(%rbp), %eax	# i, tmp2628
	movslq	%eax, %rdx	# tmp2628, tmp2627
	movl	-352(%rbp), %eax	# t, tmp2630
	cltq
	addq	%rax, %rax	# tmp2632
	movq	%rax, %rsi	# tmp2631, tmp2633
	salq	$7, %rsi	#, tmp2633
	addq	%rsi, %rax	# tmp2633, tmp2631
	addq	%rcx, %rax	# tmp2626, tmp2634
	addq	%rdx, %rax	# tmp2627, tmp2635
	addq	$43888, %rax	#, tmp2636
	movzbl	(%rax), %eax	# s_422(D)->len, D.5860
	movzbl	%al, %eax	# D.5860, tmp2637
	movl	%eax, -364(%rbp)	# tmp2637, maxLen
.L223:
	.loc 1 377 0 is_stmt 1
	movq	-392(%rbp), %rcx	# s, tmp2638
	movl	-360(%rbp), %eax	# i, tmp2640
	movslq	%eax, %rdx	# tmp2640, tmp2639
	movl	-352(%rbp), %eax	# t, tmp2642
	cltq
	addq	%rax, %rax	# tmp2644
	movq	%rax, %rsi	# tmp2643, tmp2645
	salq	$7, %rsi	#, tmp2645
	addq	%rsi, %rax	# tmp2645, tmp2643
	addq	%rcx, %rax	# tmp2638, tmp2646
	addq	%rdx, %rax	# tmp2639, tmp2647
	addq	$43888, %rax	#, tmp2648
	movzbl	(%rax), %eax	# s_422(D)->len, D.5860
	movzbl	%al, %eax	# D.5860, D.5856
	cmpl	-368(%rbp), %eax	# minLen, D.5856
	jge	.L224	#,
	.loc 1 377 0 is_stmt 0 discriminator 1
	movq	-392(%rbp), %rcx	# s, tmp2649
	movl	-360(%rbp), %eax	# i, tmp2651
	movslq	%eax, %rdx	# tmp2651, tmp2650
	movl	-352(%rbp), %eax	# t, tmp2653
	cltq
	addq	%rax, %rax	# tmp2655
	movq	%rax, %rsi	# tmp2654, tmp2656
	salq	$7, %rsi	#, tmp2656
	addq	%rsi, %rax	# tmp2656, tmp2654
	addq	%rcx, %rax	# tmp2649, tmp2657
	addq	%rdx, %rax	# tmp2650, tmp2658
	addq	$43888, %rax	#, tmp2659
	movzbl	(%rax), %eax	# s_422(D)->len, D.5860
	movzbl	%al, %eax	# D.5860, tmp2660
	movl	%eax, -368(%rbp)	# tmp2660, minLen
.L224:
	.loc 1 375 0 is_stmt 1
	addl	$1, -360(%rbp)	#, i
.L222:
	.loc 1 375 0 is_stmt 0 discriminator 1
	movl	-360(%rbp), %eax	# i, tmp2661
	cmpl	-348(%rbp), %eax	# alphaSize, tmp2661
	jl	.L225	#,
	.loc 1 379 0 is_stmt 1
	movl	-352(%rbp), %eax	# t, tmp2663
	cltq
	addq	%rax, %rax	# tmp2665
	movq	%rax, %rdx	# tmp2664, tmp2666
	salq	$7, %rdx	#, tmp2666
	addq	%rdx, %rax	# tmp2666, tmp2664
	leaq	43888(%rax), %rdx	#, tmp2667
	movq	-392(%rbp), %rax	# s, tmp2668
	leaq	(%rdx,%rax), %rcx	#, D.5865
	movl	-352(%rbp), %eax	# t, tmp2670
	cltq
	salq	$3, %rax	#, tmp2672
	movq	%rax, %rdx	# tmp2671, tmp2673
	salq	$7, %rdx	#, tmp2673
	addq	%rdx, %rax	# tmp2673, tmp2671
	leaq	57808(%rax), %rdx	#, tmp2674
	movq	-392(%rbp), %rax	# s, tmp2676
	addq	%rdx, %rax	# tmp2674, tmp2675
	leaq	12(%rax), %rdx	#, D.5868
	movl	-352(%rbp), %eax	# t, tmp2678
	cltq
	salq	$3, %rax	#, tmp2680
	movq	%rax, %rsi	# tmp2679, tmp2681
	salq	$7, %rsi	#, tmp2681
	addq	%rsi, %rax	# tmp2681, tmp2679
	leaq	51616(%rax), %rsi	#, tmp2682
	movq	-392(%rbp), %rax	# s, tmp2684
	addq	%rsi, %rax	# tmp2682, tmp2683
	leaq	12(%rax), %rsi	#, D.5868
	movl	-352(%rbp), %eax	# t, tmp2686
	cltq
	salq	$3, %rax	#, tmp2688
	movq	%rax, %rdi	# tmp2687, tmp2689
	salq	$7, %rdi	#, tmp2689
	addq	%rdi, %rax	# tmp2689, tmp2687
	leaq	45424(%rax), %rdi	#, tmp2690
	movq	-392(%rbp), %rax	# s, tmp2692
	addq	%rdi, %rax	# tmp2690, tmp2691
	leaq	12(%rax), %rdi	#, D.5868
	movl	-364(%rbp), %r9d	# maxLen, tmp2693
	movl	-368(%rbp), %r8d	# minLen, tmp2694
	movl	-348(%rbp), %eax	# alphaSize, tmp2695
	movl	%eax, (%rsp)	# tmp2695,
	call	BZ2_hbCreateDecodeTables	#
	.loc 1 386 0
	movq	-392(%rbp), %rax	# s, tmp2696
	movl	-352(%rbp), %edx	# t, tmp2698
	movslq	%edx, %rdx	# tmp2698, tmp2697
	leaq	16000(%rdx), %rcx	#, tmp2699
	movl	-368(%rbp), %edx	# minLen, tmp2700
	movl	%edx, 12(%rax,%rcx,4)	# tmp2700, s_422(D)->minLens
	.loc 1 372 0
	addl	$1, -352(%rbp)	#, t
.L221:
	.loc 1 372 0 is_stmt 0 discriminator 1
	movl	-352(%rbp), %eax	# t, tmp2701
	cmpl	-344(%rbp), %eax	# nGroups, tmp2701
	jl	.L226	#,
	.loc 1 391 0 is_stmt 1
	movq	-392(%rbp), %rax	# s, tmp2702
	movl	3192(%rax), %eax	# s_422(D)->nInUse, D.5856
	addl	$1, %eax	#, tmp2703
	movl	%eax, -336(%rbp)	# tmp2703, EOB
	.loc 1 392 0
	movq	-392(%rbp), %rax	# s, tmp2704
	movl	40(%rax), %eax	# s_422(D)->blockSize100k, D.5856
	imull	$100000, %eax, %eax	#, D.5856, tmp2705
	movl	%eax, -320(%rbp)	# tmp2705, nblockMAX
	.loc 1 393 0
	movl	$-1, -332(%rbp)	#, groupNo
	.loc 1 394 0
	movl	$0, -328(%rbp)	#, groupPos
	.loc 1 396 0
	movl	$0, -360(%rbp)	#, i
	jmp	.L227	#
.L228:
	.loc 1 396 0 is_stmt 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp2706
	movl	-360(%rbp), %edx	# i, tmp2708
	movslq	%edx, %rdx	# tmp2708, tmp2707
	addq	$16, %rdx	#, tmp2709
	movl	$0, 4(%rax,%rdx,4)	#, s_422(D)->unzftab
	addl	$1, -360(%rbp)	#, i
.L227:
	.loc 1 396 0 discriminator 1
	cmpl	$255, -360(%rbp)	#, i
	jle	.L228	#,
.LBB29:
	.loc 1 401 0 is_stmt 1
	movl	$4095, -272(%rbp)	#, kk
	.loc 1 402 0
	movl	$15, -280(%rbp)	#, ii
	jmp	.L229	#
.L232:
	.loc 1 403 0
	movl	$15, -276(%rbp)	#, jj
	jmp	.L230	#
.L231:
	.loc 1 404 0 discriminator 2
	movl	-280(%rbp), %eax	# ii, tmp2710
	sall	$4, %eax	#, D.5860
	movl	%eax, %edx	# D.5860, D.5860
	movl	-276(%rbp), %eax	# jj, tmp2711
	leal	(%rdx,%rax), %ecx	#, D.5860
	movq	-392(%rbp), %rdx	# s, tmp2712
	movl	-272(%rbp), %eax	# kk, tmp2714
	cltq
	movb	%cl, 3724(%rdx,%rax)	# D.5860, s_422(D)->mtfa
	.loc 1 405 0 discriminator 2
	subl	$1, -272(%rbp)	#, kk
	.loc 1 403 0 discriminator 2
	subl	$1, -276(%rbp)	#, jj
.L230:
	.loc 1 403 0 is_stmt 0 discriminator 1
	cmpl	$0, -276(%rbp)	#, jj
	jns	.L231	#,
	.loc 1 407 0 is_stmt 1
	movl	-272(%rbp), %eax	# kk, tmp2715
	leal	1(%rax), %ecx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp2716
	movl	-280(%rbp), %edx	# ii, tmp2718
	movslq	%edx, %rdx	# tmp2718, tmp2717
	addq	$1952, %rdx	#, tmp2719
	movl	%ecx, 12(%rax,%rdx,4)	# D.5856, s_422(D)->mtfbase
	.loc 1 402 0
	subl	$1, -280(%rbp)	#, ii
.L229:
	.loc 1 402 0 is_stmt 0 discriminator 1
	cmpl	$0, -280(%rbp)	#, ii
	jns	.L232	#,
.LBE29:
	.loc 1 412 0 is_stmt 1
	movl	$0, -316(%rbp)	#, nblock
	.loc 1 413 0
	cmpl	$0, -328(%rbp)	#, groupPos
	jne	.L233	#,
	.loc 1 413 0 is_stmt 0 discriminator 1
	addl	$1, -332(%rbp)	#, groupNo
	movl	-332(%rbp), %eax	# groupNo, tmp2720
	cmpl	-340(%rbp), %eax	# nSelectors, tmp2720
	jl	.L234	#,
	movl	$-4, -372(%rbp)	#, retVal
	jmp	.L53	#
.L234:
	.loc 1 413 0 discriminator 2
	movl	$50, -328(%rbp)	#, groupPos
	movq	-392(%rbp), %rdx	# s, tmp2721
	movl	-332(%rbp), %eax	# groupNo, tmp2723
	cltq
	movzbl	7884(%rdx,%rax), %eax	# s_422(D)->selector, D.5860
	movzbl	%al, %eax	# D.5860, tmp2724
	movl	%eax, -288(%rbp)	# tmp2724, gSel
	movq	-392(%rbp), %rax	# s, tmp2725
	movl	-288(%rbp), %edx	# gSel, tmp2727
	movslq	%edx, %rdx	# tmp2727, tmp2726
	addq	$16000, %rdx	#, tmp2728
	movl	12(%rax,%rdx,4), %eax	# s_422(D)->minLens, tmp2729
	movl	%eax, -284(%rbp)	# tmp2729, gMinlen
	movl	-288(%rbp), %eax	# gSel, tmp2731
	cltq
	salq	$3, %rax	#, tmp2733
	movq	%rax, %rdx	# tmp2732, tmp2734
	salq	$7, %rdx	#, tmp2734
	addq	%rdx, %rax	# tmp2734, tmp2732
	leaq	45424(%rax), %rdx	#, tmp2735
	movq	-392(%rbp), %rax	# s, tmp2737
	addq	%rdx, %rax	# tmp2735, tmp2736
	addq	$12, %rax	#, tmp2738
	movq	%rax, -64(%rbp)	# tmp2738, gLimit
	movl	-288(%rbp), %eax	# gSel, tmp2740
	cltq
	salq	$3, %rax	#, tmp2742
	movq	%rax, %rdx	# tmp2741, tmp2743
	salq	$7, %rdx	#, tmp2743
	addq	%rdx, %rax	# tmp2743, tmp2741
	leaq	57808(%rax), %rdx	#, tmp2744
	movq	-392(%rbp), %rax	# s, tmp2746
	addq	%rdx, %rax	# tmp2744, tmp2745
	addq	$12, %rax	#, tmp2747
	movq	%rax, -48(%rbp)	# tmp2747, gPerm
	movl	-288(%rbp), %eax	# gSel, tmp2749
	cltq
	salq	$3, %rax	#, tmp2751
	movq	%rax, %rdx	# tmp2750, tmp2752
	salq	$7, %rdx	#, tmp2752
	addq	%rdx, %rax	# tmp2752, tmp2750
	leaq	51616(%rax), %rdx	#, tmp2753
	movq	-392(%rbp), %rax	# s, tmp2755
	addq	%rdx, %rax	# tmp2753, tmp2754
	addq	$12, %rax	#, tmp2756
	movq	%rax, -56(%rbp)	# tmp2756, gBase
.L233:
	subl	$1, -328(%rbp)	#, groupPos
	movl	-284(%rbp), %eax	# gMinlen, tmp2757
	movl	%eax, -300(%rbp)	# tmp2757, zn
.L35:
	.loc 1 413 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp2758
	movl	$36, 8(%rax)	#, s_422(D)->state
.L239:
	movq	-392(%rbp), %rax	# s, tmp2759
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	cmpl	-300(%rbp), %eax	# zn, D.5856
	jl	.L235	#,
.LBB30:
	movq	-392(%rbp), %rax	# s, tmp2760
	movl	32(%rax), %edx	# s_422(D)->bsBuff, D.5857
	movq	-392(%rbp), %rax	# s, tmp2761
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	subl	-300(%rbp), %eax	# zn, D.5856
	movl	%edx, %esi	# D.5857, D.5857
	movl	%eax, %ecx	# D.5856, tmp3692
	shrl	%cl, %esi	# tmp3692, D.5857
	movl	-300(%rbp), %eax	# zn, tmp2762
	movl	$1, %edx	#, tmp2763
	movl	%eax, %ecx	# tmp2762, tmp3694
	sall	%cl, %edx	# tmp3694, D.5856
	movl	%edx, %eax	# D.5856, D.5856
	subl	$1, %eax	#, D.5856
	andl	%esi, %eax	# D.5857, tmp2764
	movl	%eax, -120(%rbp)	# tmp2764, v
	movq	-392(%rbp), %rax	# s, tmp2765
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	subl	-300(%rbp), %eax	# zn, D.5856
	movl	%eax, %edx	# D.5856, D.5856
	movq	-392(%rbp), %rax	# s, tmp2766
	movl	%edx, 36(%rax)	# D.5856, s_422(D)->bsLive
	movl	-120(%rbp), %eax	# v, tmp2767
	movl	%eax, -296(%rbp)	# tmp2767, zvec
	jmp	.L236	#
.L235:
.LBE30:
	.loc 1 413 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp2768
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	8(%rax), %eax	# _1674->avail_in, D.5857
	testl	%eax, %eax	# D.5857
	jne	.L237	#,
	.loc 1 413 0 discriminator 1
	movl	$0, -372(%rbp)	#, retVal
	jmp	.L53	#
.L237:
	.loc 1 413 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp2769
	movl	32(%rax), %eax	# s_422(D)->bsBuff, D.5857
	sall	$8, %eax	#, D.5857
	movl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp2770
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movq	(%rax), %rax	# _1679->next_in, D.5859
	movzbl	(%rax), %eax	# MEM[(UChar *)_1680], D.5860
	movzbl	%al, %eax	# D.5860, D.5857
	orl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp2771
	movl	%edx, 32(%rax)	# D.5857, s_422(D)->bsBuff
	movq	-392(%rbp), %rax	# s, tmp2772
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	leal	8(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp2773
	movl	%edx, 36(%rax)	# D.5856, s_422(D)->bsLive
	movq	-392(%rbp), %rax	# s, tmp2774
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movq	(%rax), %rdx	# _1686->next_in, D.5859
	addq	$1, %rdx	#, D.5859
	movq	%rdx, (%rax)	# D.5859, _1686->next_in
	movq	-392(%rbp), %rax	# s, tmp2775
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	8(%rax), %edx	# _1689->avail_in, D.5857
	subl	$1, %edx	#, D.5857
	movl	%edx, 8(%rax)	# D.5857, _1689->avail_in
	movq	-392(%rbp), %rax	# s, tmp2776
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	12(%rax), %edx	# _1692->total_in_lo32, D.5857
	addl	$1, %edx	#, D.5857
	movl	%edx, 12(%rax)	# D.5857, _1692->total_in_lo32
	movq	-392(%rbp), %rax	# s, tmp2777
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	12(%rax), %eax	# _1695->total_in_lo32, D.5857
	testl	%eax, %eax	# D.5857
	jne	.L238	#,
	.loc 1 413 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp2778
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	16(%rax), %edx	# _1697->total_in_hi32, D.5857
	addl	$1, %edx	#, D.5857
	movl	%edx, 16(%rax)	# D.5857, _1697->total_in_hi32
	jmp	.L239	#
.L238:
	.loc 1 413 0 discriminator 2
	jmp	.L239	#
.L236:
	.loc 1 413 0 discriminator 1
	cmpl	$20, -300(%rbp)	#, zn
	jle	.L240	#,
	movl	$-4, -372(%rbp)	#, retVal
	jmp	.L53	#
.L240:
	.loc 1 413 0 discriminator 2
	movl	-300(%rbp), %eax	# zn, tmp2779
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5869
	movq	-64(%rbp), %rax	# gLimit, tmp2780
	addq	%rdx, %rax	# D.5869, D.5868
	movl	(%rax), %eax	# *_1703, D.5856
	cmpl	-296(%rbp), %eax	# zvec, D.5856
	jl	.L241	#,
	.loc 1 413 0 discriminator 1
	nop
	movl	-300(%rbp), %eax	# zn, tmp2803
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5869
	movq	-56(%rbp), %rax	# gBase, tmp2804
	addq	%rdx, %rax	# D.5869, D.5868
	movl	(%rax), %eax	# *_1707, D.5856
	movl	-296(%rbp), %edx	# zvec, tmp2805
	subl	%eax, %edx	# D.5856, D.5856
	movl	%edx, %eax	# D.5856, D.5856
	testl	%eax, %eax	# D.5856
	js	.L248	#,
	jmp	.L413	#
.L241:
	.loc 1 413 0 discriminator 2
	addl	$1, -300(%rbp)	#, zn
.L36:
	.loc 1 413 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp2781
	movl	$37, 8(%rax)	#, s_422(D)->state
.L247:
	movq	-392(%rbp), %rax	# s, tmp2782
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	testl	%eax, %eax	# D.5856
	jle	.L243	#,
.LBB31:
	movq	-392(%rbp), %rax	# s, tmp2783
	movl	32(%rax), %edx	# s_422(D)->bsBuff, D.5857
	movq	-392(%rbp), %rax	# s, tmp2784
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	subl	$1, %eax	#, D.5856
	movl	%eax, %ecx	# D.5856, tmp3699
	shrl	%cl, %edx	# tmp3699, D.5857
	movl	%edx, %eax	# D.5857, D.5857
	andl	$1, %eax	#, tmp2785
	movl	%eax, -116(%rbp)	# tmp2785, v
	movq	-392(%rbp), %rax	# s, tmp2786
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	leal	-1(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp2787
	movl	%edx, 36(%rax)	# D.5856, s_422(D)->bsLive
	movl	-116(%rbp), %eax	# v, tmp2788
	movl	%eax, -292(%rbp)	# tmp2788, zj
	nop
.LBE31:
	movl	-296(%rbp), %eax	# zvec, tmp2800
	addl	%eax, %eax	# D.5856
	orl	-292(%rbp), %eax	# zj, tmp2802
	movl	%eax, -296(%rbp)	# tmp2802, zvec
	jmp	.L236	#
.L243:
	.loc 1 413 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp2789
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	8(%rax), %eax	# _1737->avail_in, D.5857
	testl	%eax, %eax	# D.5857
	jne	.L245	#,
	.loc 1 413 0 discriminator 1
	movl	$0, -372(%rbp)	#, retVal
	jmp	.L53	#
.L245:
	.loc 1 413 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp2790
	movl	32(%rax), %eax	# s_422(D)->bsBuff, D.5857
	sall	$8, %eax	#, D.5857
	movl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp2791
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movq	(%rax), %rax	# _1742->next_in, D.5859
	movzbl	(%rax), %eax	# MEM[(UChar *)_1743], D.5860
	movzbl	%al, %eax	# D.5860, D.5857
	orl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp2792
	movl	%edx, 32(%rax)	# D.5857, s_422(D)->bsBuff
	movq	-392(%rbp), %rax	# s, tmp2793
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	leal	8(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp2794
	movl	%edx, 36(%rax)	# D.5856, s_422(D)->bsLive
	movq	-392(%rbp), %rax	# s, tmp2795
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movq	(%rax), %rdx	# _1749->next_in, D.5859
	addq	$1, %rdx	#, D.5859
	movq	%rdx, (%rax)	# D.5859, _1749->next_in
	movq	-392(%rbp), %rax	# s, tmp2796
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	8(%rax), %edx	# _1752->avail_in, D.5857
	subl	$1, %edx	#, D.5857
	movl	%edx, 8(%rax)	# D.5857, _1752->avail_in
	movq	-392(%rbp), %rax	# s, tmp2797
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	12(%rax), %edx	# _1755->total_in_lo32, D.5857
	addl	$1, %edx	#, D.5857
	movl	%edx, 12(%rax)	# D.5857, _1755->total_in_lo32
	movq	-392(%rbp), %rax	# s, tmp2798
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	12(%rax), %eax	# _1758->total_in_lo32, D.5857
	testl	%eax, %eax	# D.5857
	jne	.L246	#,
	.loc 1 413 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp2799
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	16(%rax), %edx	# _1760->total_in_hi32, D.5857
	addl	$1, %edx	#, D.5857
	movl	%edx, 16(%rax)	# D.5857, _1760->total_in_hi32
	jmp	.L247	#
.L246:
	.loc 1 413 0 discriminator 2
	jmp	.L247	#
.L413:
	movl	-300(%rbp), %eax	# zn, tmp2806
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5869
	movq	-56(%rbp), %rax	# gBase, tmp2807
	addq	%rdx, %rax	# D.5869, D.5868
	movl	(%rax), %eax	# *_1712, D.5856
	movl	-296(%rbp), %edx	# zvec, tmp2808
	subl	%eax, %edx	# D.5856, D.5856
	movl	%edx, %eax	# D.5856, D.5856
	cmpl	$257, %eax	#, D.5856
	jle	.L249	#,
.L248:
	.loc 1 413 0 discriminator 1
	movl	$-4, -372(%rbp)	#, retVal
	jmp	.L53	#
.L249:
	movl	-300(%rbp), %eax	# zn, tmp2809
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5869
	movq	-56(%rbp), %rax	# gBase, tmp2810
	addq	%rdx, %rax	# D.5869, D.5868
	movl	(%rax), %eax	# *_1717, D.5856
	movl	-296(%rbp), %edx	# zvec, tmp2811
	subl	%eax, %edx	# D.5856, D.5856
	movl	%edx, %eax	# D.5856, D.5856
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5869
	movq	-48(%rbp), %rax	# gPerm, tmp2812
	addq	%rdx, %rax	# D.5869, D.5868
	movl	(%rax), %eax	# *_1722, tmp2813
	movl	%eax, -324(%rbp)	# tmp2813, nextSym
.L317:
	.loc 1 417 0 is_stmt 1
	movl	-324(%rbp), %eax	# nextSym, tmp2814
	cmpl	-336(%rbp), %eax	# EOB, tmp2814
	jne	.L250	#,
	.loc 1 417 0 is_stmt 0 discriminator 1
	nop
	.loc 1 524 0 is_stmt 1 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp3159
	movl	56(%rax), %eax	# s_422(D)->origPtr, D.5856
	testl	%eax, %eax	# D.5856
	js	.L318	#,
	jmp	.L414	#
.L250:
	.loc 1 419 0
	cmpl	$0, -324(%rbp)	#, nextSym
	je	.L252	#,
	.loc 1 419 0 is_stmt 0 discriminator 1
	cmpl	$1, -324(%rbp)	#, nextSym
	jne	.L253	#,
.L252:
	.loc 1 421 0 is_stmt 1
	movl	$-1, -312(%rbp)	#, es
	.loc 1 422 0
	movl	$1, -308(%rbp)	#, N
.L273:
	.loc 1 424 0
	cmpl	$0, -324(%rbp)	#, nextSym
	jne	.L254	#,
	.loc 1 424 0 is_stmt 0 discriminator 1
	movl	-308(%rbp), %eax	# N, tmp2815
	addl	%eax, -312(%rbp)	# tmp2815, es
	jmp	.L255	#
.L254:
	.loc 1 425 0 is_stmt 1
	cmpl	$1, -324(%rbp)	#, nextSym
	jne	.L255	#,
	.loc 1 425 0 is_stmt 0 discriminator 1
	movl	-308(%rbp), %eax	# N, tmp2816
	addl	%eax, %eax	# D.5856
	addl	%eax, -312(%rbp)	# D.5856, es
.L255:
	.loc 1 426 0 is_stmt 1
	sall	-308(%rbp)	# N
	.loc 1 427 0
	cmpl	$0, -328(%rbp)	#, groupPos
	jne	.L256	#,
	.loc 1 427 0 is_stmt 0 discriminator 1
	addl	$1, -332(%rbp)	#, groupNo
	movl	-332(%rbp), %eax	# groupNo, tmp2817
	cmpl	-340(%rbp), %eax	# nSelectors, tmp2817
	jl	.L257	#,
	movl	$-4, -372(%rbp)	#, retVal
	jmp	.L53	#
.L257:
	.loc 1 427 0 discriminator 2
	movl	$50, -328(%rbp)	#, groupPos
	movq	-392(%rbp), %rdx	# s, tmp2818
	movl	-332(%rbp), %eax	# groupNo, tmp2820
	cltq
	movzbl	7884(%rdx,%rax), %eax	# s_422(D)->selector, D.5860
	movzbl	%al, %eax	# D.5860, tmp2821
	movl	%eax, -288(%rbp)	# tmp2821, gSel
	movq	-392(%rbp), %rax	# s, tmp2822
	movl	-288(%rbp), %edx	# gSel, tmp2824
	movslq	%edx, %rdx	# tmp2824, tmp2823
	addq	$16000, %rdx	#, tmp2825
	movl	12(%rax,%rdx,4), %eax	# s_422(D)->minLens, tmp2826
	movl	%eax, -284(%rbp)	# tmp2826, gMinlen
	movl	-288(%rbp), %eax	# gSel, tmp2828
	cltq
	salq	$3, %rax	#, tmp2830
	movq	%rax, %rdx	# tmp2829, tmp2831
	salq	$7, %rdx	#, tmp2831
	addq	%rdx, %rax	# tmp2831, tmp2829
	leaq	45424(%rax), %rdx	#, tmp2832
	movq	-392(%rbp), %rax	# s, tmp2834
	addq	%rdx, %rax	# tmp2832, tmp2833
	addq	$12, %rax	#, tmp2835
	movq	%rax, -64(%rbp)	# tmp2835, gLimit
	movl	-288(%rbp), %eax	# gSel, tmp2837
	cltq
	salq	$3, %rax	#, tmp2839
	movq	%rax, %rdx	# tmp2838, tmp2840
	salq	$7, %rdx	#, tmp2840
	addq	%rdx, %rax	# tmp2840, tmp2838
	leaq	57808(%rax), %rdx	#, tmp2841
	movq	-392(%rbp), %rax	# s, tmp2843
	addq	%rdx, %rax	# tmp2841, tmp2842
	addq	$12, %rax	#, tmp2844
	movq	%rax, -48(%rbp)	# tmp2844, gPerm
	movl	-288(%rbp), %eax	# gSel, tmp2846
	cltq
	salq	$3, %rax	#, tmp2848
	movq	%rax, %rdx	# tmp2847, tmp2849
	salq	$7, %rdx	#, tmp2849
	addq	%rdx, %rax	# tmp2849, tmp2847
	leaq	51616(%rax), %rdx	#, tmp2850
	movq	-392(%rbp), %rax	# s, tmp2852
	addq	%rdx, %rax	# tmp2850, tmp2851
	addq	$12, %rax	#, tmp2853
	movq	%rax, -56(%rbp)	# tmp2853, gBase
.L256:
	subl	$1, -328(%rbp)	#, groupPos
	movl	-284(%rbp), %eax	# gMinlen, tmp2854
	movl	%eax, -300(%rbp)	# tmp2854, zn
.L37:
	.loc 1 427 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp2855
	movl	$38, 8(%rax)	#, s_422(D)->state
.L262:
	movq	-392(%rbp), %rax	# s, tmp2856
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	cmpl	-300(%rbp), %eax	# zn, D.5856
	jl	.L258	#,
.LBB32:
	movq	-392(%rbp), %rax	# s, tmp2857
	movl	32(%rax), %edx	# s_422(D)->bsBuff, D.5857
	movq	-392(%rbp), %rax	# s, tmp2858
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	subl	-300(%rbp), %eax	# zn, D.5856
	movl	%edx, %esi	# D.5857, D.5857
	movl	%eax, %ecx	# D.5856, tmp3707
	shrl	%cl, %esi	# tmp3707, D.5857
	movl	-300(%rbp), %eax	# zn, tmp2859
	movl	$1, %edx	#, tmp2860
	movl	%eax, %ecx	# tmp2859, tmp3709
	sall	%cl, %edx	# tmp3709, D.5856
	movl	%edx, %eax	# D.5856, D.5856
	subl	$1, %eax	#, D.5856
	andl	%esi, %eax	# D.5857, tmp2861
	movl	%eax, -96(%rbp)	# tmp2861, v
	movq	-392(%rbp), %rax	# s, tmp2862
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	subl	-300(%rbp), %eax	# zn, D.5856
	movl	%eax, %edx	# D.5856, D.5856
	movq	-392(%rbp), %rax	# s, tmp2863
	movl	%edx, 36(%rax)	# D.5856, s_422(D)->bsLive
	movl	-96(%rbp), %eax	# v, tmp2864
	movl	%eax, -296(%rbp)	# tmp2864, zvec
	jmp	.L259	#
.L258:
.LBE32:
	.loc 1 427 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp2865
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	8(%rax), %eax	# _2230->avail_in, D.5857
	testl	%eax, %eax	# D.5857
	jne	.L260	#,
	.loc 1 427 0 discriminator 1
	movl	$0, -372(%rbp)	#, retVal
	jmp	.L53	#
.L260:
	.loc 1 427 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp2866
	movl	32(%rax), %eax	# s_422(D)->bsBuff, D.5857
	sall	$8, %eax	#, D.5857
	movl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp2867
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movq	(%rax), %rax	# _2235->next_in, D.5859
	movzbl	(%rax), %eax	# MEM[(UChar *)_2236], D.5860
	movzbl	%al, %eax	# D.5860, D.5857
	orl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp2868
	movl	%edx, 32(%rax)	# D.5857, s_422(D)->bsBuff
	movq	-392(%rbp), %rax	# s, tmp2869
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	leal	8(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp2870
	movl	%edx, 36(%rax)	# D.5856, s_422(D)->bsLive
	movq	-392(%rbp), %rax	# s, tmp2871
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movq	(%rax), %rdx	# _2242->next_in, D.5859
	addq	$1, %rdx	#, D.5859
	movq	%rdx, (%rax)	# D.5859, _2242->next_in
	movq	-392(%rbp), %rax	# s, tmp2872
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	8(%rax), %edx	# _2245->avail_in, D.5857
	subl	$1, %edx	#, D.5857
	movl	%edx, 8(%rax)	# D.5857, _2245->avail_in
	movq	-392(%rbp), %rax	# s, tmp2873
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	12(%rax), %edx	# _2248->total_in_lo32, D.5857
	addl	$1, %edx	#, D.5857
	movl	%edx, 12(%rax)	# D.5857, _2248->total_in_lo32
	movq	-392(%rbp), %rax	# s, tmp2874
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	12(%rax), %eax	# _2251->total_in_lo32, D.5857
	testl	%eax, %eax	# D.5857
	jne	.L261	#,
	.loc 1 427 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp2875
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	16(%rax), %edx	# _2253->total_in_hi32, D.5857
	addl	$1, %edx	#, D.5857
	movl	%edx, 16(%rax)	# D.5857, _2253->total_in_hi32
	jmp	.L262	#
.L261:
	.loc 1 427 0 discriminator 2
	jmp	.L262	#
.L259:
	.loc 1 427 0 discriminator 1
	cmpl	$20, -300(%rbp)	#, zn
	jle	.L263	#,
	movl	$-4, -372(%rbp)	#, retVal
	jmp	.L53	#
.L263:
	.loc 1 427 0 discriminator 2
	movl	-300(%rbp), %eax	# zn, tmp2876
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5869
	movq	-64(%rbp), %rax	# gLimit, tmp2877
	addq	%rdx, %rax	# D.5869, D.5868
	movl	(%rax), %eax	# *_2259, D.5856
	cmpl	-296(%rbp), %eax	# zvec, D.5856
	jl	.L264	#,
	.loc 1 427 0 discriminator 1
	nop
	movl	-300(%rbp), %eax	# zn, tmp2900
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5869
	movq	-56(%rbp), %rax	# gBase, tmp2901
	addq	%rdx, %rax	# D.5869, D.5868
	movl	(%rax), %eax	# *_2263, D.5856
	movl	-296(%rbp), %edx	# zvec, tmp2902
	subl	%eax, %edx	# D.5856, D.5856
	movl	%edx, %eax	# D.5856, D.5856
	testl	%eax, %eax	# D.5856
	js	.L271	#,
	jmp	.L415	#
.L264:
	.loc 1 427 0 discriminator 2
	addl	$1, -300(%rbp)	#, zn
.L38:
	.loc 1 427 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp2878
	movl	$39, 8(%rax)	#, s_422(D)->state
.L270:
	movq	-392(%rbp), %rax	# s, tmp2879
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	testl	%eax, %eax	# D.5856
	jle	.L266	#,
.LBB33:
	movq	-392(%rbp), %rax	# s, tmp2880
	movl	32(%rax), %edx	# s_422(D)->bsBuff, D.5857
	movq	-392(%rbp), %rax	# s, tmp2881
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	subl	$1, %eax	#, D.5856
	movl	%eax, %ecx	# D.5856, tmp3714
	shrl	%cl, %edx	# tmp3714, D.5857
	movl	%edx, %eax	# D.5857, D.5857
	andl	$1, %eax	#, tmp2882
	movl	%eax, -92(%rbp)	# tmp2882, v
	movq	-392(%rbp), %rax	# s, tmp2883
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	leal	-1(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp2884
	movl	%edx, 36(%rax)	# D.5856, s_422(D)->bsLive
	movl	-92(%rbp), %eax	# v, tmp2885
	movl	%eax, -292(%rbp)	# tmp2885, zj
	nop
.LBE33:
	movl	-296(%rbp), %eax	# zvec, tmp2897
	addl	%eax, %eax	# D.5856
	orl	-292(%rbp), %eax	# zj, tmp2899
	movl	%eax, -296(%rbp)	# tmp2899, zvec
	jmp	.L259	#
.L266:
	.loc 1 427 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp2886
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	8(%rax), %eax	# _2319->avail_in, D.5857
	testl	%eax, %eax	# D.5857
	jne	.L268	#,
	.loc 1 427 0 discriminator 1
	movl	$0, -372(%rbp)	#, retVal
	jmp	.L53	#
.L268:
	.loc 1 427 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp2887
	movl	32(%rax), %eax	# s_422(D)->bsBuff, D.5857
	sall	$8, %eax	#, D.5857
	movl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp2888
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movq	(%rax), %rax	# _2324->next_in, D.5859
	movzbl	(%rax), %eax	# MEM[(UChar *)_2325], D.5860
	movzbl	%al, %eax	# D.5860, D.5857
	orl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp2889
	movl	%edx, 32(%rax)	# D.5857, s_422(D)->bsBuff
	movq	-392(%rbp), %rax	# s, tmp2890
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	leal	8(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp2891
	movl	%edx, 36(%rax)	# D.5856, s_422(D)->bsLive
	movq	-392(%rbp), %rax	# s, tmp2892
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movq	(%rax), %rdx	# _2331->next_in, D.5859
	addq	$1, %rdx	#, D.5859
	movq	%rdx, (%rax)	# D.5859, _2331->next_in
	movq	-392(%rbp), %rax	# s, tmp2893
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	8(%rax), %edx	# _2334->avail_in, D.5857
	subl	$1, %edx	#, D.5857
	movl	%edx, 8(%rax)	# D.5857, _2334->avail_in
	movq	-392(%rbp), %rax	# s, tmp2894
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	12(%rax), %edx	# _2337->total_in_lo32, D.5857
	addl	$1, %edx	#, D.5857
	movl	%edx, 12(%rax)	# D.5857, _2337->total_in_lo32
	movq	-392(%rbp), %rax	# s, tmp2895
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	12(%rax), %eax	# _2340->total_in_lo32, D.5857
	testl	%eax, %eax	# D.5857
	jne	.L269	#,
	.loc 1 427 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp2896
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	16(%rax), %edx	# _2342->total_in_hi32, D.5857
	addl	$1, %edx	#, D.5857
	movl	%edx, 16(%rax)	# D.5857, _2342->total_in_hi32
	jmp	.L270	#
.L269:
	.loc 1 427 0 discriminator 2
	jmp	.L270	#
.L415:
	movl	-300(%rbp), %eax	# zn, tmp2903
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5869
	movq	-56(%rbp), %rax	# gBase, tmp2904
	addq	%rdx, %rax	# D.5869, D.5868
	movl	(%rax), %eax	# *_2268, D.5856
	movl	-296(%rbp), %edx	# zvec, tmp2905
	subl	%eax, %edx	# D.5856, D.5856
	movl	%edx, %eax	# D.5856, D.5856
	cmpl	$257, %eax	#, D.5856
	jle	.L272	#,
.L271:
	.loc 1 427 0 discriminator 1
	movl	$-4, -372(%rbp)	#, retVal
	jmp	.L53	#
.L272:
	movl	-300(%rbp), %eax	# zn, tmp2906
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5869
	movq	-56(%rbp), %rax	# gBase, tmp2907
	addq	%rdx, %rax	# D.5869, D.5868
	movl	(%rax), %eax	# *_2273, D.5856
	movl	-296(%rbp), %edx	# zvec, tmp2908
	subl	%eax, %edx	# D.5856, D.5856
	movl	%edx, %eax	# D.5856, D.5856
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5869
	movq	-48(%rbp), %rax	# gPerm, tmp2909
	addq	%rdx, %rax	# D.5869, D.5868
	movl	(%rax), %eax	# *_2278, tmp2910
	movl	%eax, -324(%rbp)	# tmp2910, nextSym
	.loc 1 429 0 is_stmt 1 discriminator 1
	cmpl	$0, -324(%rbp)	#, nextSym
	je	.L273	#,
	cmpl	$1, -324(%rbp)	#, nextSym
	je	.L273	#,
	.loc 1 431 0
	addl	$1, -312(%rbp)	#, es
	.loc 1 432 0
	movq	-392(%rbp), %rax	# s, tmp2911
	movl	7820(%rax), %eax	# s_422(D)->mtfbase, D.5856
	movq	-392(%rbp), %rdx	# s, tmp2912
	cltq
	movzbl	3724(%rdx,%rax), %eax	# s_422(D)->mtfa, D.5860
	movzbl	%al, %eax	# D.5860, D.5856
	movq	-392(%rbp), %rdx	# s, tmp2914
	cltq
	movzbl	3468(%rdx,%rax), %eax	# s_422(D)->seqToUnseq, tmp2916
	movb	%al, -375(%rbp)	# tmp2916, uc
	.loc 1 433 0
	movzbl	-375(%rbp), %edx	# uc, D.5856
	movzbl	-375(%rbp), %ecx	# uc, D.5856
	movq	-392(%rbp), %rax	# s, tmp2917
	movslq	%ecx, %rcx	# D.5856, tmp2918
	addq	$16, %rcx	#, tmp2919
	movl	4(%rax,%rcx,4), %ecx	# s_422(D)->unzftab, D.5856
	movl	-312(%rbp), %eax	# es, tmp2920
	addl	%eax, %ecx	# tmp2920, D.5856
	movq	-392(%rbp), %rax	# s, tmp2921
	movslq	%edx, %rdx	# D.5856, tmp2922
	addq	$16, %rdx	#, tmp2923
	movl	%ecx, 4(%rax,%rdx,4)	# D.5856, s_422(D)->unzftab
	.loc 1 435 0
	movq	-392(%rbp), %rax	# s, tmp2924
	movzbl	44(%rax), %eax	# s_422(D)->smallDecompress, D.5860
	testb	%al, %al	# D.5860
	je	.L274	#,
	.loc 1 436 0
	jmp	.L275	#
.L277:
	.loc 1 437 0
	movl	-316(%rbp), %eax	# nblock, tmp2925
	cmpl	-320(%rbp), %eax	# nblockMAX, tmp2925
	jl	.L276	#,
	.loc 1 437 0 is_stmt 0 discriminator 1
	movl	$-4, -372(%rbp)	#, retVal
	jmp	.L53	#
.L276:
	.loc 1 438 0 is_stmt 1
	movq	-392(%rbp), %rax	# s, tmp2926
	movq	3160(%rax), %rax	# s_422(D)->ll16, D.5864
	movl	-316(%rbp), %edx	# nblock, tmp2927
	movslq	%edx, %rdx	# tmp2927, D.5869
	addq	%rdx, %rdx	# D.5869
	addq	%rax, %rdx	# D.5864, D.5864
	movzbl	-375(%rbp), %eax	# uc, D.5870
	movw	%ax, (%rdx)	# D.5870, *_2294
	.loc 1 439 0
	addl	$1, -316(%rbp)	#, nblock
	.loc 1 440 0
	subl	$1, -312(%rbp)	#, es
.L275:
	.loc 1 436 0 discriminator 1
	cmpl	$0, -312(%rbp)	#, es
	jg	.L277	#,
	.loc 1 450 0
	jmp	.L282	#
.L274:
	.loc 1 443 0
	jmp	.L279	#
.L281:
	.loc 1 444 0
	movl	-316(%rbp), %eax	# nblock, tmp2928
	cmpl	-320(%rbp), %eax	# nblockMAX, tmp2928
	jl	.L280	#,
	.loc 1 444 0 is_stmt 0 discriminator 1
	movl	$-4, -372(%rbp)	#, retVal
	jmp	.L53	#
.L280:
	.loc 1 445 0 is_stmt 1
	movq	-392(%rbp), %rax	# s, tmp2929
	movq	3152(%rax), %rax	# s_422(D)->tt, D.5866
	movl	-316(%rbp), %edx	# nblock, tmp2930
	movslq	%edx, %rdx	# tmp2930, D.5869
	salq	$2, %rdx	#, D.5869
	addq	%rax, %rdx	# D.5866, D.5866
	movzbl	-375(%rbp), %eax	# uc, D.5857
	movl	%eax, (%rdx)	# D.5857, *_2302
	.loc 1 446 0
	addl	$1, -316(%rbp)	#, nblock
	.loc 1 447 0
	subl	$1, -312(%rbp)	#, es
.L279:
	.loc 1 443 0 discriminator 1
	cmpl	$0, -312(%rbp)	#, es
	jg	.L281	#,
	.loc 1 450 0
	jmp	.L282	#
.L253:
	.loc 1 454 0
	movl	-316(%rbp), %eax	# nblock, tmp2931
	cmpl	-320(%rbp), %eax	# nblockMAX, tmp2931
	jl	.L283	#,
	.loc 1 454 0 is_stmt 0 discriminator 1
	movl	$-4, -372(%rbp)	#, retVal
	jmp	.L53	#
.L283:
.LBB34:
	.loc 1 460 0 is_stmt 1
	movl	-324(%rbp), %eax	# nextSym, tmp2932
	subl	$1, %eax	#, D.5856
	movl	%eax, -248(%rbp)	# D.5856, nn
	.loc 1 462 0
	cmpl	$15, -248(%rbp)	#, nn
	ja	.L284	#,
	.loc 1 464 0
	movq	-392(%rbp), %rax	# s, tmp2933
	movl	7820(%rax), %eax	# s_422(D)->mtfbase, tmp2934
	movl	%eax, -256(%rbp)	# tmp2934, pp
	.loc 1 465 0
	movl	-256(%rbp), %edx	# pp, pp.4
	movl	-248(%rbp), %eax	# nn, tmp2935
	addl	%edx, %eax	# pp.4, D.5857
	movq	-392(%rbp), %rdx	# s, tmp2936
	movl	%eax, %eax	# D.5857, tmp2937
	movzbl	3724(%rdx,%rax), %eax	# s_422(D)->mtfa, tmp2938
	movb	%al, -375(%rbp)	# tmp2938, uc
	.loc 1 466 0
	jmp	.L285	#
.L286:
.LBB35:
	.loc 1 467 0
	movl	-256(%rbp), %edx	# pp, pp.5
	movl	-248(%rbp), %eax	# nn, tmp2939
	addl	%edx, %eax	# pp.5, D.5857
	movl	%eax, -108(%rbp)	# D.5857, z
	.loc 1 468 0
	movl	-108(%rbp), %eax	# z, tmp2940
	subl	$1, %eax	#, D.5856
	movq	-392(%rbp), %rdx	# s, tmp2941
	cltq
	movzbl	3724(%rdx,%rax), %ecx	# s_422(D)->mtfa, D.5860
	movq	-392(%rbp), %rdx	# s, tmp2943
	movl	-108(%rbp), %eax	# z, tmp2945
	cltq
	movb	%cl, 3724(%rdx,%rax)	# D.5860, s_422(D)->mtfa
	.loc 1 469 0
	movl	-108(%rbp), %eax	# z, tmp2946
	leal	-1(%rax), %esi	#, D.5856
	movl	-108(%rbp), %eax	# z, tmp2947
	subl	$2, %eax	#, D.5856
	movq	-392(%rbp), %rdx	# s, tmp2948
	cltq
	movzbl	3724(%rdx,%rax), %ecx	# s_422(D)->mtfa, D.5860
	movq	-392(%rbp), %rdx	# s, tmp2950
	movslq	%esi, %rax	# D.5856, tmp2951
	movb	%cl, 3724(%rdx,%rax)	# D.5860, s_422(D)->mtfa
	.loc 1 470 0
	movl	-108(%rbp), %eax	# z, tmp2952
	leal	-2(%rax), %esi	#, D.5856
	movl	-108(%rbp), %eax	# z, tmp2953
	subl	$3, %eax	#, D.5856
	movq	-392(%rbp), %rdx	# s, tmp2954
	cltq
	movzbl	3724(%rdx,%rax), %ecx	# s_422(D)->mtfa, D.5860
	movq	-392(%rbp), %rdx	# s, tmp2956
	movslq	%esi, %rax	# D.5856, tmp2957
	movb	%cl, 3724(%rdx,%rax)	# D.5860, s_422(D)->mtfa
	.loc 1 471 0
	movl	-108(%rbp), %eax	# z, tmp2958
	leal	-3(%rax), %esi	#, D.5856
	movl	-108(%rbp), %eax	# z, tmp2959
	subl	$4, %eax	#, D.5856
	movq	-392(%rbp), %rdx	# s, tmp2960
	cltq
	movzbl	3724(%rdx,%rax), %ecx	# s_422(D)->mtfa, D.5860
	movq	-392(%rbp), %rdx	# s, tmp2962
	movslq	%esi, %rax	# D.5856, tmp2963
	movb	%cl, 3724(%rdx,%rax)	# D.5860, s_422(D)->mtfa
	.loc 1 472 0
	subl	$4, -248(%rbp)	#, nn
.L285:
.LBE35:
	.loc 1 466 0 discriminator 1
	cmpl	$3, -248(%rbp)	#, nn
	ja	.L286	#,
	.loc 1 474 0
	jmp	.L287	#
.L288:
	.loc 1 475 0
	movl	-256(%rbp), %edx	# pp, pp.6
	movl	-248(%rbp), %eax	# nn, tmp2964
	leal	(%rdx,%rax), %esi	#, D.5857
	movl	-256(%rbp), %edx	# pp, pp.7
	movl	-248(%rbp), %eax	# nn, tmp2965
	addl	%edx, %eax	# pp.7, D.5857
	subl	$1, %eax	#, D.5857
	movq	-392(%rbp), %rdx	# s, tmp2966
	movl	%eax, %eax	# D.5857, tmp2967
	movzbl	3724(%rdx,%rax), %ecx	# s_422(D)->mtfa, D.5860
	movq	-392(%rbp), %rdx	# s, tmp2968
	movl	%esi, %eax	# D.5857, tmp2969
	movb	%cl, 3724(%rdx,%rax)	# D.5860, s_422(D)->mtfa
	subl	$1, -248(%rbp)	#, nn
.L287:
	.loc 1 474 0 discriminator 1
	cmpl	$0, -248(%rbp)	#, nn
	jne	.L288	#,
	.loc 1 477 0
	movq	-392(%rbp), %rdx	# s, tmp2970
	movl	-256(%rbp), %eax	# pp, tmp2972
	cltq
	movzbl	-375(%rbp), %ecx	# uc, tmp2973
	movb	%cl, 3724(%rdx,%rax)	# tmp2973, s_422(D)->mtfa
	jmp	.L289	#
.L284:
	.loc 1 480 0
	movl	-248(%rbp), %eax	# nn, tmp2974
	shrl	$4, %eax	#, D.5857
	movl	%eax, -252(%rbp)	# D.5857, lno
	.loc 1 481 0
	movl	-248(%rbp), %eax	# nn, nn.8
	andl	$15, %eax	#, tmp2975
	movl	%eax, -104(%rbp)	# tmp2975, off
	.loc 1 482 0
	movq	-392(%rbp), %rax	# s, tmp2976
	movl	-252(%rbp), %edx	# lno, tmp2978
	movslq	%edx, %rdx	# tmp2978, tmp2977
	addq	$1952, %rdx	#, tmp2979
	movl	12(%rax,%rdx,4), %edx	# s_422(D)->mtfbase, D.5856
	movl	-104(%rbp), %eax	# off, tmp2983
	addl	%edx, %eax	# D.5856, tmp2982
	movl	%eax, -256(%rbp)	# tmp2982, pp
	.loc 1 483 0
	movq	-392(%rbp), %rdx	# s, tmp2984
	movl	-256(%rbp), %eax	# pp, tmp2986
	cltq
	movzbl	3724(%rdx,%rax), %eax	# s_422(D)->mtfa, tmp2987
	movb	%al, -375(%rbp)	# tmp2987, uc
	.loc 1 484 0
	jmp	.L290	#
.L291:
	.loc 1 485 0
	movl	-256(%rbp), %eax	# pp, tmp2988
	subl	$1, %eax	#, D.5856
	movq	-392(%rbp), %rdx	# s, tmp2989
	cltq
	movzbl	3724(%rdx,%rax), %ecx	# s_422(D)->mtfa, D.5860
	movq	-392(%rbp), %rdx	# s, tmp2991
	movl	-256(%rbp), %eax	# pp, tmp2993
	cltq
	movb	%cl, 3724(%rdx,%rax)	# D.5860, s_422(D)->mtfa
	subl	$1, -256(%rbp)	#, pp
.L290:
	.loc 1 484 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp2994
	movl	-252(%rbp), %edx	# lno, tmp2996
	movslq	%edx, %rdx	# tmp2996, tmp2995
	addq	$1952, %rdx	#, tmp2997
	movl	12(%rax,%rdx,4), %eax	# s_422(D)->mtfbase, D.5856
	cmpl	-256(%rbp), %eax	# pp, D.5856
	jl	.L291	#,
	.loc 1 487 0
	movq	-392(%rbp), %rax	# s, tmp2998
	movl	-252(%rbp), %edx	# lno, tmp3000
	movslq	%edx, %rdx	# tmp3000, tmp2999
	addq	$1952, %rdx	#, tmp3001
	movl	12(%rax,%rdx,4), %eax	# s_422(D)->mtfbase, D.5856
	leal	1(%rax), %ecx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp3002
	movl	-252(%rbp), %edx	# lno, tmp3004
	movslq	%edx, %rdx	# tmp3004, tmp3003
	addq	$1952, %rdx	#, tmp3005
	movl	%ecx, 12(%rax,%rdx,4)	# D.5856, s_422(D)->mtfbase
	.loc 1 488 0
	jmp	.L292	#
.L293:
	.loc 1 489 0
	movq	-392(%rbp), %rax	# s, tmp3006
	movl	-252(%rbp), %edx	# lno, tmp3008
	movslq	%edx, %rdx	# tmp3008, tmp3007
	addq	$1952, %rdx	#, tmp3009
	movl	12(%rax,%rdx,4), %eax	# s_422(D)->mtfbase, D.5856
	leal	-1(%rax), %ecx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp3010
	movl	-252(%rbp), %edx	# lno, tmp3012
	movslq	%edx, %rdx	# tmp3012, tmp3011
	addq	$1952, %rdx	#, tmp3013
	movl	%ecx, 12(%rax,%rdx,4)	# D.5856, s_422(D)->mtfbase
	.loc 1 490 0
	movq	-392(%rbp), %rax	# s, tmp3014
	movl	-252(%rbp), %edx	# lno, tmp3016
	movslq	%edx, %rdx	# tmp3016, tmp3015
	addq	$1952, %rdx	#, tmp3017
	movl	12(%rax,%rdx,4), %esi	# s_422(D)->mtfbase, D.5856
	.loc 1 491 0
	movl	-252(%rbp), %eax	# lno, tmp3018
	leal	-1(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp3019
	movslq	%edx, %rdx	# D.5856, tmp3020
	addq	$1952, %rdx	#, tmp3021
	movl	12(%rax,%rdx,4), %eax	# s_422(D)->mtfbase, D.5856
	addl	$15, %eax	#, D.5856
	movq	-392(%rbp), %rdx	# s, tmp3022
	cltq
	movzbl	3724(%rdx,%rax), %ecx	# s_422(D)->mtfa, D.5860
	movq	-392(%rbp), %rdx	# s, tmp3024
	movslq	%esi, %rax	# D.5856, tmp3025
	movb	%cl, 3724(%rdx,%rax)	# D.5860, s_422(D)->mtfa
	.loc 1 492 0
	subl	$1, -252(%rbp)	#, lno
.L292:
	.loc 1 488 0 discriminator 1
	cmpl	$0, -252(%rbp)	#, lno
	jg	.L293	#,
	.loc 1 494 0
	movq	-392(%rbp), %rax	# s, tmp3026
	movl	7820(%rax), %eax	# s_422(D)->mtfbase, D.5856
	leal	-1(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp3027
	movl	%edx, 7820(%rax)	# D.5856, s_422(D)->mtfbase
	.loc 1 495 0
	movq	-392(%rbp), %rax	# s, tmp3028
	movl	7820(%rax), %eax	# s_422(D)->mtfbase, D.5856
	movq	-392(%rbp), %rdx	# s, tmp3029
	cltq
	movzbl	-375(%rbp), %ecx	# uc, tmp3031
	movb	%cl, 3724(%rdx,%rax)	# tmp3031, s_422(D)->mtfa
	.loc 1 496 0
	movq	-392(%rbp), %rax	# s, tmp3032
	movl	7820(%rax), %eax	# s_422(D)->mtfbase, D.5856
	testl	%eax, %eax	# D.5856
	jne	.L289	#,
	.loc 1 497 0
	movl	$4095, -260(%rbp)	#, kk
	.loc 1 498 0
	movl	$15, -268(%rbp)	#, ii
	jmp	.L294	#
.L297:
	.loc 1 499 0
	movl	$15, -264(%rbp)	#, jj
	jmp	.L295	#
.L296:
	.loc 1 500 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp3033
	movl	-268(%rbp), %edx	# ii, tmp3035
	movslq	%edx, %rdx	# tmp3035, tmp3034
	addq	$1952, %rdx	#, tmp3036
	movl	12(%rax,%rdx,4), %edx	# s_422(D)->mtfbase, D.5856
	movl	-264(%rbp), %eax	# jj, tmp3037
	addl	%edx, %eax	# D.5856, D.5856
	movq	-392(%rbp), %rdx	# s, tmp3038
	cltq
	movzbl	3724(%rdx,%rax), %ecx	# s_422(D)->mtfa, D.5860
	movq	-392(%rbp), %rdx	# s, tmp3040
	movl	-260(%rbp), %eax	# kk, tmp3042
	cltq
	movb	%cl, 3724(%rdx,%rax)	# D.5860, s_422(D)->mtfa
	.loc 1 501 0 discriminator 2
	subl	$1, -260(%rbp)	#, kk
	.loc 1 499 0 discriminator 2
	subl	$1, -264(%rbp)	#, jj
.L295:
	.loc 1 499 0 is_stmt 0 discriminator 1
	cmpl	$0, -264(%rbp)	#, jj
	jns	.L296	#,
	.loc 1 503 0 is_stmt 1
	movl	-260(%rbp), %eax	# kk, tmp3043
	leal	1(%rax), %ecx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp3044
	movl	-268(%rbp), %edx	# ii, tmp3046
	movslq	%edx, %rdx	# tmp3046, tmp3045
	addq	$1952, %rdx	#, tmp3047
	movl	%ecx, 12(%rax,%rdx,4)	# D.5856, s_422(D)->mtfbase
	.loc 1 498 0
	subl	$1, -268(%rbp)	#, ii
.L294:
	.loc 1 498 0 is_stmt 0 discriminator 1
	cmpl	$0, -268(%rbp)	#, ii
	jns	.L297	#,
.L289:
.LBE34:
	.loc 1 510 0 is_stmt 1
	movzbl	-375(%rbp), %eax	# uc, D.5856
	movq	-392(%rbp), %rdx	# s, tmp3048
	cltq
	movzbl	3468(%rdx,%rax), %eax	# s_422(D)->seqToUnseq, D.5860
	movzbl	%al, %eax	# D.5860, D.5856
	movq	-392(%rbp), %rdx	# s, tmp3050
	movslq	%eax, %rcx	# D.5856, tmp3051
	addq	$16, %rcx	#, tmp3052
	movl	4(%rdx,%rcx,4), %edx	# s_422(D)->unzftab, D.5856
	leal	1(%rdx), %ecx	#, D.5856
	movq	-392(%rbp), %rdx	# s, tmp3053
	cltq
	addq	$16, %rax	#, tmp3055
	movl	%ecx, 4(%rdx,%rax,4)	# D.5856, s_422(D)->unzftab
	.loc 1 511 0
	movq	-392(%rbp), %rax	# s, tmp3056
	movzbl	44(%rax), %eax	# s_422(D)->smallDecompress, D.5860
	testb	%al, %al	# D.5860
	je	.L298	#,
	.loc 1 512 0
	movq	-392(%rbp), %rax	# s, tmp3057
	movq	3160(%rax), %rax	# s_422(D)->ll16, D.5864
	movl	-316(%rbp), %edx	# nblock, tmp3058
	movslq	%edx, %rdx	# tmp3058, D.5869
	addq	%rdx, %rdx	# D.5869
	leaq	(%rax,%rdx), %rcx	#, D.5864
	movzbl	-375(%rbp), %eax	# uc, D.5856
	movq	-392(%rbp), %rdx	# s, tmp3059
	cltq
	movzbl	3468(%rdx,%rax), %eax	# s_422(D)->seqToUnseq, D.5860
	movzbl	%al, %eax	# D.5860, D.5870
	movw	%ax, (%rcx)	# D.5870, *_2140
	jmp	.L299	#
.L298:
	.loc 1 513 0
	movq	-392(%rbp), %rax	# s, tmp3061
	movq	3152(%rax), %rax	# s_422(D)->tt, D.5866
	movl	-316(%rbp), %edx	# nblock, tmp3062
	movslq	%edx, %rdx	# tmp3062, D.5869
	salq	$2, %rdx	#, D.5869
	leaq	(%rax,%rdx), %rcx	#, D.5866
	movzbl	-375(%rbp), %eax	# uc, D.5856
	movq	-392(%rbp), %rdx	# s, tmp3063
	cltq
	movzbl	3468(%rdx,%rax), %eax	# s_422(D)->seqToUnseq, D.5860
	movzbl	%al, %eax	# D.5860, D.5857
	movl	%eax, (%rcx)	# D.5857, *_2147
.L299:
	.loc 1 514 0
	addl	$1, -316(%rbp)	#, nblock
	.loc 1 516 0
	cmpl	$0, -328(%rbp)	#, groupPos
	jne	.L300	#,
	.loc 1 516 0 is_stmt 0 discriminator 1
	addl	$1, -332(%rbp)	#, groupNo
	movl	-332(%rbp), %eax	# groupNo, tmp3065
	cmpl	-340(%rbp), %eax	# nSelectors, tmp3065
	jl	.L301	#,
	movl	$-4, -372(%rbp)	#, retVal
	jmp	.L53	#
.L301:
	.loc 1 516 0 discriminator 2
	movl	$50, -328(%rbp)	#, groupPos
	movq	-392(%rbp), %rdx	# s, tmp3066
	movl	-332(%rbp), %eax	# groupNo, tmp3068
	cltq
	movzbl	7884(%rdx,%rax), %eax	# s_422(D)->selector, D.5860
	movzbl	%al, %eax	# D.5860, tmp3069
	movl	%eax, -288(%rbp)	# tmp3069, gSel
	movq	-392(%rbp), %rax	# s, tmp3070
	movl	-288(%rbp), %edx	# gSel, tmp3072
	movslq	%edx, %rdx	# tmp3072, tmp3071
	addq	$16000, %rdx	#, tmp3073
	movl	12(%rax,%rdx,4), %eax	# s_422(D)->minLens, tmp3074
	movl	%eax, -284(%rbp)	# tmp3074, gMinlen
	movl	-288(%rbp), %eax	# gSel, tmp3076
	cltq
	salq	$3, %rax	#, tmp3078
	movq	%rax, %rdx	# tmp3077, tmp3079
	salq	$7, %rdx	#, tmp3079
	addq	%rdx, %rax	# tmp3079, tmp3077
	leaq	45424(%rax), %rdx	#, tmp3080
	movq	-392(%rbp), %rax	# s, tmp3082
	addq	%rdx, %rax	# tmp3080, tmp3081
	addq	$12, %rax	#, tmp3083
	movq	%rax, -64(%rbp)	# tmp3083, gLimit
	movl	-288(%rbp), %eax	# gSel, tmp3085
	cltq
	salq	$3, %rax	#, tmp3087
	movq	%rax, %rdx	# tmp3086, tmp3088
	salq	$7, %rdx	#, tmp3088
	addq	%rdx, %rax	# tmp3088, tmp3086
	leaq	57808(%rax), %rdx	#, tmp3089
	movq	-392(%rbp), %rax	# s, tmp3091
	addq	%rdx, %rax	# tmp3089, tmp3090
	addq	$12, %rax	#, tmp3092
	movq	%rax, -48(%rbp)	# tmp3092, gPerm
	movl	-288(%rbp), %eax	# gSel, tmp3094
	cltq
	salq	$3, %rax	#, tmp3096
	movq	%rax, %rdx	# tmp3095, tmp3097
	salq	$7, %rdx	#, tmp3097
	addq	%rdx, %rax	# tmp3097, tmp3095
	leaq	51616(%rax), %rdx	#, tmp3098
	movq	-392(%rbp), %rax	# s, tmp3100
	addq	%rdx, %rax	# tmp3098, tmp3099
	addq	$12, %rax	#, tmp3101
	movq	%rax, -56(%rbp)	# tmp3101, gBase
.L300:
	subl	$1, -328(%rbp)	#, groupPos
	movl	-284(%rbp), %eax	# gMinlen, tmp3102
	movl	%eax, -300(%rbp)	# tmp3102, zn
.L39:
	.loc 1 516 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp3103
	movl	$40, 8(%rax)	#, s_422(D)->state
.L306:
	movq	-392(%rbp), %rax	# s, tmp3104
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	cmpl	-300(%rbp), %eax	# zn, D.5856
	jl	.L302	#,
.LBB36:
	movq	-392(%rbp), %rax	# s, tmp3105
	movl	32(%rax), %edx	# s_422(D)->bsBuff, D.5857
	movq	-392(%rbp), %rax	# s, tmp3106
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	subl	-300(%rbp), %eax	# zn, D.5856
	movl	%edx, %esi	# D.5857, D.5857
	movl	%eax, %ecx	# D.5856, tmp3722
	shrl	%cl, %esi	# tmp3722, D.5857
	movl	-300(%rbp), %eax	# zn, tmp3107
	movl	$1, %edx	#, tmp3108
	movl	%eax, %ecx	# tmp3107, tmp3724
	sall	%cl, %edx	# tmp3724, D.5856
	movl	%edx, %eax	# D.5856, D.5856
	subl	$1, %eax	#, D.5856
	andl	%esi, %eax	# D.5857, tmp3109
	movl	%eax, -100(%rbp)	# tmp3109, v
	movq	-392(%rbp), %rax	# s, tmp3110
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	subl	-300(%rbp), %eax	# zn, D.5856
	movl	%eax, %edx	# D.5856, D.5856
	movq	-392(%rbp), %rax	# s, tmp3111
	movl	%edx, 36(%rax)	# D.5856, s_422(D)->bsLive
	movl	-100(%rbp), %eax	# v, tmp3112
	movl	%eax, -296(%rbp)	# tmp3112, zvec
	jmp	.L303	#
.L302:
.LBE36:
	.loc 1 516 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp3113
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	8(%rax), %eax	# _2177->avail_in, D.5857
	testl	%eax, %eax	# D.5857
	jne	.L304	#,
	.loc 1 516 0 discriminator 1
	movl	$0, -372(%rbp)	#, retVal
	jmp	.L53	#
.L304:
	.loc 1 516 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp3114
	movl	32(%rax), %eax	# s_422(D)->bsBuff, D.5857
	sall	$8, %eax	#, D.5857
	movl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp3115
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movq	(%rax), %rax	# _2182->next_in, D.5859
	movzbl	(%rax), %eax	# MEM[(UChar *)_2183], D.5860
	movzbl	%al, %eax	# D.5860, D.5857
	orl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp3116
	movl	%edx, 32(%rax)	# D.5857, s_422(D)->bsBuff
	movq	-392(%rbp), %rax	# s, tmp3117
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	leal	8(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp3118
	movl	%edx, 36(%rax)	# D.5856, s_422(D)->bsLive
	movq	-392(%rbp), %rax	# s, tmp3119
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movq	(%rax), %rdx	# _2189->next_in, D.5859
	addq	$1, %rdx	#, D.5859
	movq	%rdx, (%rax)	# D.5859, _2189->next_in
	movq	-392(%rbp), %rax	# s, tmp3120
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	8(%rax), %edx	# _2192->avail_in, D.5857
	subl	$1, %edx	#, D.5857
	movl	%edx, 8(%rax)	# D.5857, _2192->avail_in
	movq	-392(%rbp), %rax	# s, tmp3121
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	12(%rax), %edx	# _2195->total_in_lo32, D.5857
	addl	$1, %edx	#, D.5857
	movl	%edx, 12(%rax)	# D.5857, _2195->total_in_lo32
	movq	-392(%rbp), %rax	# s, tmp3122
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	12(%rax), %eax	# _2198->total_in_lo32, D.5857
	testl	%eax, %eax	# D.5857
	jne	.L305	#,
	.loc 1 516 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp3123
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	16(%rax), %edx	# _2200->total_in_hi32, D.5857
	addl	$1, %edx	#, D.5857
	movl	%edx, 16(%rax)	# D.5857, _2200->total_in_hi32
	jmp	.L306	#
.L305:
	.loc 1 516 0 discriminator 2
	jmp	.L306	#
.L303:
	.loc 1 516 0 discriminator 1
	cmpl	$20, -300(%rbp)	#, zn
	jle	.L307	#,
	movl	$-4, -372(%rbp)	#, retVal
	jmp	.L53	#
.L307:
	.loc 1 516 0 discriminator 2
	movl	-300(%rbp), %eax	# zn, tmp3124
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5869
	movq	-64(%rbp), %rax	# gLimit, tmp3125
	addq	%rdx, %rax	# D.5869, D.5868
	movl	(%rax), %eax	# *_2348, D.5856
	cmpl	-296(%rbp), %eax	# zvec, D.5856
	jl	.L308	#,
	.loc 1 516 0 discriminator 1
	nop
	movl	-300(%rbp), %eax	# zn, tmp3148
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5869
	movq	-56(%rbp), %rax	# gBase, tmp3149
	addq	%rdx, %rax	# D.5869, D.5868
	movl	(%rax), %eax	# *_2352, D.5856
	movl	-296(%rbp), %edx	# zvec, tmp3150
	subl	%eax, %edx	# D.5856, D.5856
	movl	%edx, %eax	# D.5856, D.5856
	testl	%eax, %eax	# D.5856
	js	.L315	#,
	jmp	.L416	#
.L308:
	.loc 1 516 0 discriminator 2
	addl	$1, -300(%rbp)	#, zn
.L40:
	.loc 1 516 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp3126
	movl	$41, 8(%rax)	#, s_422(D)->state
.L314:
	movq	-392(%rbp), %rax	# s, tmp3127
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	testl	%eax, %eax	# D.5856
	jle	.L310	#,
.LBB37:
	movq	-392(%rbp), %rax	# s, tmp3128
	movl	32(%rax), %edx	# s_422(D)->bsBuff, D.5857
	movq	-392(%rbp), %rax	# s, tmp3129
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	subl	$1, %eax	#, D.5856
	movl	%eax, %ecx	# D.5856, tmp3729
	shrl	%cl, %edx	# tmp3729, D.5857
	movl	%edx, %eax	# D.5857, D.5857
	andl	$1, %eax	#, tmp3130
	movl	%eax, -88(%rbp)	# tmp3130, v
	movq	-392(%rbp), %rax	# s, tmp3131
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	leal	-1(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp3132
	movl	%edx, 36(%rax)	# D.5856, s_422(D)->bsLive
	movl	-88(%rbp), %eax	# v, tmp3133
	movl	%eax, -292(%rbp)	# tmp3133, zj
	nop
.LBE37:
	movl	-296(%rbp), %eax	# zvec, tmp3145
	addl	%eax, %eax	# D.5856
	orl	-292(%rbp), %eax	# zj, tmp3147
	movl	%eax, -296(%rbp)	# tmp3147, zvec
	jmp	.L303	#
.L310:
	.loc 1 516 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp3134
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	8(%rax), %eax	# _2382->avail_in, D.5857
	testl	%eax, %eax	# D.5857
	jne	.L312	#,
	.loc 1 516 0 discriminator 1
	movl	$0, -372(%rbp)	#, retVal
	jmp	.L53	#
.L312:
	.loc 1 516 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp3135
	movl	32(%rax), %eax	# s_422(D)->bsBuff, D.5857
	sall	$8, %eax	#, D.5857
	movl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp3136
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movq	(%rax), %rax	# _2387->next_in, D.5859
	movzbl	(%rax), %eax	# MEM[(UChar *)_2388], D.5860
	movzbl	%al, %eax	# D.5860, D.5857
	orl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp3137
	movl	%edx, 32(%rax)	# D.5857, s_422(D)->bsBuff
	movq	-392(%rbp), %rax	# s, tmp3138
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	leal	8(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp3139
	movl	%edx, 36(%rax)	# D.5856, s_422(D)->bsLive
	movq	-392(%rbp), %rax	# s, tmp3140
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movq	(%rax), %rdx	# _2394->next_in, D.5859
	addq	$1, %rdx	#, D.5859
	movq	%rdx, (%rax)	# D.5859, _2394->next_in
	movq	-392(%rbp), %rax	# s, tmp3141
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	8(%rax), %edx	# _2397->avail_in, D.5857
	subl	$1, %edx	#, D.5857
	movl	%edx, 8(%rax)	# D.5857, _2397->avail_in
	movq	-392(%rbp), %rax	# s, tmp3142
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	12(%rax), %edx	# _2400->total_in_lo32, D.5857
	addl	$1, %edx	#, D.5857
	movl	%edx, 12(%rax)	# D.5857, _2400->total_in_lo32
	movq	-392(%rbp), %rax	# s, tmp3143
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	12(%rax), %eax	# _2403->total_in_lo32, D.5857
	testl	%eax, %eax	# D.5857
	jne	.L313	#,
	.loc 1 516 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp3144
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	16(%rax), %edx	# _2405->total_in_hi32, D.5857
	addl	$1, %edx	#, D.5857
	movl	%edx, 16(%rax)	# D.5857, _2405->total_in_hi32
	jmp	.L314	#
.L313:
	.loc 1 516 0 discriminator 2
	jmp	.L314	#
.L416:
	movl	-300(%rbp), %eax	# zn, tmp3151
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5869
	movq	-56(%rbp), %rax	# gBase, tmp3152
	addq	%rdx, %rax	# D.5869, D.5868
	movl	(%rax), %eax	# *_2357, D.5856
	movl	-296(%rbp), %edx	# zvec, tmp3153
	subl	%eax, %edx	# D.5856, D.5856
	movl	%edx, %eax	# D.5856, D.5856
	cmpl	$257, %eax	#, D.5856
	jle	.L316	#,
.L315:
	.loc 1 516 0 discriminator 1
	movl	$-4, -372(%rbp)	#, retVal
	jmp	.L53	#
.L316:
	movl	-300(%rbp), %eax	# zn, tmp3154
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5869
	movq	-56(%rbp), %rax	# gBase, tmp3155
	addq	%rdx, %rax	# D.5869, D.5868
	movl	(%rax), %eax	# *_2362, D.5856
	movl	-296(%rbp), %edx	# zvec, tmp3156
	subl	%eax, %edx	# D.5856, D.5856
	movl	%edx, %eax	# D.5856, D.5856
	cltq
	leaq	0(,%rax,4), %rdx	#, D.5869
	movq	-48(%rbp), %rax	# gPerm, tmp3157
	addq	%rdx, %rax	# D.5869, D.5868
	movl	(%rax), %eax	# *_2367, tmp3158
	movl	%eax, -324(%rbp)	# tmp3158, nextSym
	.loc 1 517 0 is_stmt 1 discriminator 1
	nop
.L282:
	.loc 1 519 0
	jmp	.L317	#
.L414:
	.loc 1 524 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp3160
	movl	56(%rax), %eax	# s_422(D)->origPtr, D.5856
	cmpl	-316(%rbp), %eax	# nblock, D.5856
	jl	.L319	#,
.L318:
	.loc 1 525 0
	movl	$-4, -372(%rbp)	#, retVal
	jmp	.L53	#
.L319:
	.loc 1 528 0
	movq	-392(%rbp), %rax	# s, tmp3161
	movl	$0, 1096(%rax)	#, s_422(D)->cftab
	.loc 1 529 0
	movl	$1, -360(%rbp)	#, i
	jmp	.L320	#
.L321:
	.loc 1 529 0 is_stmt 0 discriminator 2
	movl	-360(%rbp), %eax	# i, tmp3162
	leal	-1(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp3163
	movslq	%edx, %rdx	# D.5856, tmp3164
	addq	$16, %rdx	#, tmp3165
	movl	4(%rax,%rdx,4), %edx	# s_422(D)->unzftab, D.5856
	movq	-392(%rbp), %rax	# s, tmp3166
	movl	-360(%rbp), %ecx	# i, tmp3168
	movslq	%ecx, %rcx	# tmp3168, tmp3167
	addq	$272, %rcx	#, tmp3169
	movl	%edx, 8(%rax,%rcx,4)	# D.5856, s_422(D)->cftab
	addl	$1, -360(%rbp)	#, i
.L320:
	.loc 1 529 0 discriminator 1
	cmpl	$256, -360(%rbp)	#, i
	jle	.L321	#,
	.loc 1 530 0 is_stmt 1
	movl	$1, -360(%rbp)	#, i
	jmp	.L322	#
.L323:
	.loc 1 530 0 is_stmt 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp3170
	movl	-360(%rbp), %edx	# i, tmp3172
	movslq	%edx, %rdx	# tmp3172, tmp3171
	addq	$272, %rdx	#, tmp3173
	movl	8(%rax,%rdx,4), %edx	# s_422(D)->cftab, D.5856
	movl	-360(%rbp), %eax	# i, tmp3174
	leal	-1(%rax), %ecx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp3175
	movslq	%ecx, %rcx	# D.5856, tmp3176
	addq	$272, %rcx	#, tmp3177
	movl	8(%rax,%rcx,4), %eax	# s_422(D)->cftab, D.5856
	leal	(%rdx,%rax), %ecx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp3178
	movl	-360(%rbp), %edx	# i, tmp3180
	movslq	%edx, %rdx	# tmp3180, tmp3179
	addq	$272, %rdx	#, tmp3181
	movl	%ecx, 8(%rax,%rdx,4)	# D.5856, s_422(D)->cftab
	addl	$1, -360(%rbp)	#, i
.L322:
	.loc 1 530 0 discriminator 1
	cmpl	$256, -360(%rbp)	#, i
	jle	.L323	#,
	.loc 1 531 0 is_stmt 1
	movl	$0, -360(%rbp)	#, i
	jmp	.L324	#
.L327:
	.loc 1 532 0
	movq	-392(%rbp), %rax	# s, tmp3182
	movl	-360(%rbp), %edx	# i, tmp3184
	movslq	%edx, %rdx	# tmp3184, tmp3183
	addq	$272, %rdx	#, tmp3185
	movl	8(%rax,%rdx,4), %eax	# s_422(D)->cftab, D.5856
	testl	%eax, %eax	# D.5856
	js	.L325	#,
	.loc 1 532 0 is_stmt 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp3186
	movl	-360(%rbp), %edx	# i, tmp3188
	movslq	%edx, %rdx	# tmp3188, tmp3187
	addq	$272, %rdx	#, tmp3189
	movl	8(%rax,%rdx,4), %eax	# s_422(D)->cftab, D.5856
	cmpl	-316(%rbp), %eax	# nblock, D.5856
	jle	.L326	#,
.L325:
	.loc 1 534 0 is_stmt 1
	movl	$-4, -372(%rbp)	#, retVal
	jmp	.L53	#
.L326:
	.loc 1 531 0
	addl	$1, -360(%rbp)	#, i
.L324:
	.loc 1 531 0 is_stmt 0 discriminator 1
	cmpl	$256, -360(%rbp)	#, i
	jle	.L327	#,
	.loc 1 538 0 is_stmt 1
	movq	-392(%rbp), %rax	# s, tmp3190
	movl	$0, 16(%rax)	#, s_422(D)->state_out_len
	.loc 1 539 0
	movq	-392(%rbp), %rax	# s, tmp3191
	movb	$0, 12(%rax)	#, s_422(D)->state_out_ch
	.loc 1 540 0
	movq	-392(%rbp), %rax	# s, tmp3192
	movl	$-1, 3184(%rax)	#, s_422(D)->calculatedBlockCRC
	.loc 1 541 0
	movq	-392(%rbp), %rax	# s, tmp3193
	movl	$2, 8(%rax)	#, s_422(D)->state
	.loc 1 542 0
	movq	-392(%rbp), %rax	# s, tmp3194
	movl	52(%rax), %eax	# s_422(D)->verbosity, D.5856
	cmpl	$1, %eax	#, D.5856
	jle	.L328	#,
	.loc 1 542 0 is_stmt 0 discriminator 1
	movq	stderr(%rip), %rax	# stderr, stderr.9
	movq	%rax, %rcx	# stderr.9,
	movl	$6, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC1, %edi	#,
	call	fwrite	#
.L328:
	.loc 1 544 0 is_stmt 1
	movq	-392(%rbp), %rax	# s, tmp3195
	movzbl	44(%rax), %eax	# s_422(D)->smallDecompress, D.5860
	testb	%al, %al	# D.5860
	je	.L329	#,
	.loc 1 547 0
	movl	$0, -360(%rbp)	#, i
	jmp	.L330	#
.L331:
	.loc 1 547 0 is_stmt 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp3196
	movl	-360(%rbp), %edx	# i, tmp3198
	movslq	%edx, %rdx	# tmp3198, tmp3197
	addq	$272, %rdx	#, tmp3199
	movl	8(%rax,%rdx,4), %edx	# s_422(D)->cftab, D.5856
	movq	-392(%rbp), %rax	# s, tmp3200
	movl	-360(%rbp), %ecx	# i, tmp3202
	movslq	%ecx, %rcx	# tmp3202, tmp3201
	addq	$528, %rcx	#, tmp3203
	movl	%edx, 12(%rax,%rcx,4)	# D.5856, s_422(D)->cftabCopy
	addl	$1, -360(%rbp)	#, i
.L330:
	.loc 1 547 0 discriminator 1
	cmpl	$256, -360(%rbp)	#, i
	jle	.L331	#,
	.loc 1 550 0 is_stmt 1
	movl	$0, -360(%rbp)	#, i
	jmp	.L332	#
.L335:
	.loc 1 551 0
	movq	-392(%rbp), %rax	# s, tmp3204
	movq	3160(%rax), %rax	# s_422(D)->ll16, D.5864
	movl	-360(%rbp), %edx	# i, tmp3205
	movslq	%edx, %rdx	# tmp3205, D.5869
	addq	%rdx, %rdx	# D.5869
	addq	%rdx, %rax	# D.5869, D.5864
	movzwl	(%rax), %eax	# *_1790, D.5870
	movb	%al, -375(%rbp)	# D.5870, uc
	.loc 1 552 0
	movq	-392(%rbp), %rax	# s, tmp3206
	movq	3160(%rax), %rax	# s_422(D)->ll16, D.5864
	movl	-360(%rbp), %edx	# i, tmp3207
	movslq	%edx, %rdx	# tmp3207, D.5869
	addq	%rdx, %rdx	# D.5869
	addq	%rax, %rdx	# D.5864, D.5864
	movzbl	-375(%rbp), %ecx	# uc, D.5856
	movq	-392(%rbp), %rax	# s, tmp3208
	movslq	%ecx, %rcx	# D.5856, tmp3209
	addq	$528, %rcx	#, tmp3210
	movl	12(%rax,%rcx,4), %eax	# s_422(D)->cftabCopy, D.5856
	movw	%ax, (%rdx)	# D.5870, *_1796
	movl	-360(%rbp), %eax	# i, tmp3211
	andl	$1, %eax	#, D.5856
	testl	%eax, %eax	# D.5856
	jne	.L333	#,
	.loc 1 552 0 is_stmt 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp3212
	movq	3168(%rax), %rdx	# s_422(D)->ll4, D.5865
	movl	-360(%rbp), %eax	# i, tmp3213
	sarl	%eax	# D.5856
	cltq
	addq	%rax, %rdx	# D.5871, D.5865
	movq	-392(%rbp), %rax	# s, tmp3214
	movq	3168(%rax), %rcx	# s_422(D)->ll4, D.5865
	movl	-360(%rbp), %eax	# i, tmp3215
	sarl	%eax	# D.5856
	cltq
	addq	%rcx, %rax	# D.5865, D.5865
	movzbl	(%rax), %eax	# *_1808, D.5860
	andl	$-16, %eax	#, D.5872
	movl	%eax, %esi	# D.5872, D.5872
	movzbl	-375(%rbp), %ecx	# uc, D.5856
	movq	-392(%rbp), %rax	# s, tmp3216
	movslq	%ecx, %rcx	# D.5856, tmp3217
	addq	$528, %rcx	#, tmp3218
	movl	12(%rax,%rcx,4), %eax	# s_422(D)->cftabCopy, D.5856
	sarl	$16, %eax	#, D.5856
	orl	%esi, %eax	# D.5872, D.5872
	movb	%al, (%rdx)	# D.5860, *_1804
	jmp	.L334	#
.L333:
	.loc 1 552 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp3219
	movq	3168(%rax), %rdx	# s_422(D)->ll4, D.5865
	movl	-360(%rbp), %eax	# i, tmp3220
	sarl	%eax	# D.5856
	cltq
	addq	%rax, %rdx	# D.5871, D.5865
	movq	-392(%rbp), %rax	# s, tmp3221
	movq	3168(%rax), %rcx	# s_422(D)->ll4, D.5865
	movl	-360(%rbp), %eax	# i, tmp3222
	sarl	%eax	# D.5856
	cltq
	addq	%rcx, %rax	# D.5865, D.5865
	movzbl	(%rax), %eax	# *_1825, D.5860
	andl	$15, %eax	#, D.5872
	movl	%eax, %esi	# D.5872, D.5872
	movzbl	-375(%rbp), %ecx	# uc, D.5856
	movq	-392(%rbp), %rax	# s, tmp3223
	movslq	%ecx, %rcx	# D.5856, tmp3224
	addq	$528, %rcx	#, tmp3225
	movl	12(%rax,%rcx,4), %eax	# s_422(D)->cftabCopy, D.5856
	sarl	$16, %eax	#, D.5856
	sall	$4, %eax	#, D.5856
	orl	%esi, %eax	# D.5872, D.5872
	movb	%al, (%rdx)	# D.5860, *_1821
.L334:
	.loc 1 553 0 is_stmt 1
	movzbl	-375(%rbp), %eax	# uc, D.5856
	movq	-392(%rbp), %rdx	# s, tmp3226
	movslq	%eax, %rcx	# D.5856, tmp3227
	addq	$528, %rcx	#, tmp3228
	movl	12(%rdx,%rcx,4), %edx	# s_422(D)->cftabCopy, D.5856
	leal	1(%rdx), %ecx	#, D.5856
	movq	-392(%rbp), %rdx	# s, tmp3229
	cltq
	addq	$528, %rax	#, tmp3231
	movl	%ecx, 12(%rdx,%rax,4)	# D.5856, s_422(D)->cftabCopy
	.loc 1 550 0
	addl	$1, -360(%rbp)	#, i
.L332:
	.loc 1 550 0 is_stmt 0 discriminator 1
	movl	-360(%rbp), %eax	# i, tmp3232
	cmpl	-316(%rbp), %eax	# nblock, tmp3232
	jl	.L335	#,
	.loc 1 557 0 is_stmt 1
	movq	-392(%rbp), %rax	# s, tmp3233
	movl	56(%rax), %eax	# s_422(D)->origPtr, tmp3234
	movl	%eax, -360(%rbp)	# tmp3234, i
	.loc 1 558 0
	movq	-392(%rbp), %rax	# s, tmp3235
	movq	3160(%rax), %rax	# s_422(D)->ll16, D.5864
	movl	-360(%rbp), %edx	# i, tmp3236
	movslq	%edx, %rdx	# tmp3236, D.5869
	addq	%rdx, %rdx	# D.5869
	addq	%rdx, %rax	# D.5869, D.5864
	movzwl	(%rax), %eax	# *_1844, D.5870
	movzwl	%ax, %edx	# D.5870, D.5857
	movq	-392(%rbp), %rax	# s, tmp3237
	movq	3168(%rax), %rcx	# s_422(D)->ll4, D.5865
	movl	-360(%rbp), %eax	# i, tmp3238
	sarl	%eax	# D.5856
	cltq
	addq	%rcx, %rax	# D.5865, D.5865
	movzbl	(%rax), %eax	# *_1850, D.5860
	movzbl	%al, %esi	# D.5860, D.5857
	movl	-360(%rbp), %eax	# i, tmp3239
	sall	$2, %eax	#, D.5856
	andl	$4, %eax	#, D.5856
	movl	%eax, %ecx	# D.5856, tmp3736
	shrl	%cl, %esi	# tmp3736, D.5857
	movl	%esi, %eax	# D.5857, D.5857
	andl	$15, %eax	#, D.5857
	sall	$16, %eax	#, D.5857
	orl	%edx, %eax	# D.5857, D.5857
	movl	%eax, -356(%rbp)	# D.5857, j
.L338:
.LBB38:
	.loc 1 560 0
	movq	-392(%rbp), %rax	# s, tmp3240
	movq	3160(%rax), %rax	# s_422(D)->ll16, D.5864
	movl	-356(%rbp), %edx	# j, tmp3241
	movslq	%edx, %rdx	# tmp3241, D.5869
	addq	%rdx, %rdx	# D.5869
	addq	%rdx, %rax	# D.5869, D.5864
	movzwl	(%rax), %eax	# *_1863, D.5870
	movzwl	%ax, %edx	# D.5870, D.5857
	movq	-392(%rbp), %rax	# s, tmp3242
	movq	3168(%rax), %rcx	# s_422(D)->ll4, D.5865
	movl	-356(%rbp), %eax	# j, tmp3243
	sarl	%eax	# D.5856
	cltq
	addq	%rcx, %rax	# D.5865, D.5865
	movzbl	(%rax), %eax	# *_1869, D.5860
	movzbl	%al, %esi	# D.5860, D.5857
	movl	-356(%rbp), %eax	# j, tmp3244
	sall	$2, %eax	#, D.5856
	andl	$4, %eax	#, D.5856
	movl	%eax, %ecx	# D.5856, tmp3738
	shrl	%cl, %esi	# tmp3738, D.5857
	movl	%esi, %eax	# D.5857, D.5857
	andl	$15, %eax	#, D.5857
	sall	$16, %eax	#, D.5857
	orl	%edx, %eax	# D.5857, D.5857
	movl	%eax, -112(%rbp)	# D.5857, tmp
	.loc 1 561 0
	movq	-392(%rbp), %rax	# s, tmp3245
	movq	3160(%rax), %rax	# s_422(D)->ll16, D.5864
	movl	-356(%rbp), %edx	# j, tmp3246
	movslq	%edx, %rdx	# tmp3246, D.5869
	addq	%rdx, %rdx	# D.5869
	addq	%rax, %rdx	# D.5864, D.5864
	movl	-360(%rbp), %eax	# i, tmp3247
	movw	%ax, (%rdx)	# D.5870, *_1882
	movl	-356(%rbp), %eax	# j, tmp3248
	andl	$1, %eax	#, D.5856
	testl	%eax, %eax	# D.5856
	jne	.L336	#,
	.loc 1 561 0 is_stmt 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp3249
	movq	3168(%rax), %rdx	# s_422(D)->ll4, D.5865
	movl	-356(%rbp), %eax	# j, tmp3250
	sarl	%eax	# D.5856
	cltq
	addq	%rax, %rdx	# D.5871, D.5865
	movq	-392(%rbp), %rax	# s, tmp3251
	movq	3168(%rax), %rcx	# s_422(D)->ll4, D.5865
	movl	-356(%rbp), %eax	# j, tmp3252
	sarl	%eax	# D.5856
	cltq
	addq	%rcx, %rax	# D.5865, D.5865
	movzbl	(%rax), %eax	# *_1892, D.5860
	andl	$-16, %eax	#, D.5872
	movl	%eax, %ecx	# D.5872, D.5872
	movl	-360(%rbp), %eax	# i, tmp3253
	sarl	$16, %eax	#, D.5856
	orl	%ecx, %eax	# D.5872, D.5872
	movb	%al, (%rdx)	# D.5860, *_1888
	jmp	.L337	#
.L336:
	.loc 1 561 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp3254
	movq	3168(%rax), %rdx	# s_422(D)->ll4, D.5865
	movl	-356(%rbp), %eax	# j, tmp3255
	sarl	%eax	# D.5856
	cltq
	addq	%rax, %rdx	# D.5871, D.5865
	movq	-392(%rbp), %rax	# s, tmp3256
	movq	3168(%rax), %rcx	# s_422(D)->ll4, D.5865
	movl	-356(%rbp), %eax	# j, tmp3257
	sarl	%eax	# D.5856
	cltq
	addq	%rcx, %rax	# D.5865, D.5865
	movzbl	(%rax), %eax	# *_1907, D.5860
	andl	$15, %eax	#, D.5872
	movl	%eax, %ecx	# D.5872, D.5872
	movl	-360(%rbp), %eax	# i, tmp3258
	sarl	$16, %eax	#, D.5856
	sall	$4, %eax	#, D.5856
	orl	%ecx, %eax	# D.5872, D.5872
	movb	%al, (%rdx)	# D.5860, *_1903
.L337:
	.loc 1 562 0 is_stmt 1
	movl	-356(%rbp), %eax	# j, tmp3259
	movl	%eax, -360(%rbp)	# tmp3259, i
	.loc 1 563 0
	movl	-112(%rbp), %eax	# tmp, tmp3260
	movl	%eax, -356(%rbp)	# tmp3260, j
.LBE38:
	.loc 1 565 0
	movq	-392(%rbp), %rax	# s, tmp3261
	movl	56(%rax), %eax	# s_422(D)->origPtr, D.5856
	cmpl	-360(%rbp), %eax	# i, D.5856
	jne	.L338	#,
	.loc 1 567 0
	movq	-392(%rbp), %rax	# s, tmp3262
	movl	56(%rax), %eax	# s_422(D)->origPtr, D.5856
	movl	%eax, %edx	# D.5856, D.5857
	movq	-392(%rbp), %rax	# s, tmp3263
	movl	%edx, 60(%rax)	# D.5857, s_422(D)->tPos
	.loc 1 568 0
	movq	-392(%rbp), %rax	# s, tmp3264
	movl	$0, 1092(%rax)	#, s_422(D)->nblock_used
	.loc 1 569 0
	movq	-392(%rbp), %rax	# s, tmp3265
	movzbl	20(%rax), %eax	# s_422(D)->blockRandomised, D.5860
	testb	%al, %al	# D.5860
	je	.L339	#,
	.loc 1 570 0
	movq	-392(%rbp), %rax	# s, tmp3266
	movl	$0, 24(%rax)	#, s_422(D)->rNToGo
	movq	-392(%rbp), %rax	# s, tmp3267
	movl	$0, 28(%rax)	#, s_422(D)->rTPos
	.loc 1 571 0
	movq	-392(%rbp), %rax	# s, tmp3268
	leaq	1096(%rax), %rdx	#, D.5873
	movq	-392(%rbp), %rax	# s, tmp3269
	movl	60(%rax), %eax	# s_422(D)->tPos, D.5857
	movq	%rdx, %rsi	# D.5873,
	movl	%eax, %edi	# D.5856,
	call	BZ2_indexIntoF	#
	movq	-392(%rbp), %rdx	# s, tmp3270
	movl	%eax, 64(%rdx)	# D.5856, s_422(D)->k0
	movq	-392(%rbp), %rax	# s, tmp3271
	movq	3160(%rax), %rdx	# s_422(D)->ll16, D.5864
	movq	-392(%rbp), %rax	# s, tmp3272
	movl	60(%rax), %eax	# s_422(D)->tPos, D.5857
	movl	%eax, %eax	# D.5857, D.5869
	addq	%rax, %rax	# D.5869
	addq	%rdx, %rax	# D.5864, D.5864
	movzwl	(%rax), %eax	# *_1930, D.5870
	movzwl	%ax, %edx	# D.5870, D.5857
	movq	-392(%rbp), %rax	# s, tmp3273
	movq	3168(%rax), %rcx	# s_422(D)->ll4, D.5865
	movq	-392(%rbp), %rax	# s, tmp3274
	movl	60(%rax), %eax	# s_422(D)->tPos, D.5857
	shrl	%eax	# D.5857
	movl	%eax, %eax	# D.5857, D.5871
	addq	%rcx, %rax	# D.5865, D.5865
	movzbl	(%rax), %eax	# *_1937, D.5860
	movzbl	%al, %esi	# D.5860, D.5857
	movq	-392(%rbp), %rax	# s, tmp3275
	movl	60(%rax), %eax	# s_422(D)->tPos, D.5857
	sall	$2, %eax	#, D.5857
	andl	$4, %eax	#, D.5856
	movl	%eax, %ecx	# D.5856, tmp3742
	shrl	%cl, %esi	# tmp3742, D.5857
	movl	%esi, %eax	# D.5857, D.5857
	andl	$15, %eax	#, D.5857
	sall	$16, %eax	#, D.5857
	orl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp3276
	movl	%edx, 60(%rax)	# D.5857, s_422(D)->tPos
	movq	-392(%rbp), %rax	# s, tmp3277
	movl	1092(%rax), %eax	# s_422(D)->nblock_used, D.5856
	leal	1(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp3278
	movl	%edx, 1092(%rax)	# D.5856, s_422(D)->nblock_used
	.loc 1 572 0
	movq	-392(%rbp), %rax	# s, tmp3279
	movl	24(%rax), %eax	# s_422(D)->rNToGo, D.5856
	testl	%eax, %eax	# D.5856
	jne	.L340	#,
	.loc 1 572 0 is_stmt 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp3280
	movl	28(%rax), %eax	# s_422(D)->rTPos, D.5856
	cltq
	movl	BZ2_rNums(,%rax,4), %edx	# BZ2_rNums, D.5856
	movq	-392(%rbp), %rax	# s, tmp3282
	movl	%edx, 24(%rax)	# D.5856, s_422(D)->rNToGo
	movq	-392(%rbp), %rax	# s, tmp3283
	movl	28(%rax), %eax	# s_422(D)->rTPos, D.5856
	leal	1(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp3284
	movl	%edx, 28(%rax)	# D.5856, s_422(D)->rTPos
	movq	-392(%rbp), %rax	# s, tmp3285
	movl	28(%rax), %eax	# s_422(D)->rTPos, D.5856
	cmpl	$512, %eax	#, D.5856
	jne	.L340	#,
	movq	-392(%rbp), %rax	# s, tmp3286
	movl	$0, 28(%rax)	#, s_422(D)->rTPos
.L340:
	.loc 1 572 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp3287
	movl	24(%rax), %eax	# s_422(D)->rNToGo, D.5856
	leal	-1(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp3288
	movl	%edx, 24(%rax)	# D.5856, s_422(D)->rNToGo
	movq	-392(%rbp), %rax	# s, tmp3289
	movl	64(%rax), %edx	# s_422(D)->k0, D.5856
	movq	-392(%rbp), %rax	# s, tmp3290
	movl	24(%rax), %eax	# s_422(D)->rNToGo, D.5856
	cmpl	$1, %eax	#, D.5856
	sete	%al	#, D.5874
	movzbl	%al, %eax	# D.5874, D.5856
	xorl	%eax, %edx	# D.5856, D.5856
	movq	-392(%rbp), %rax	# s, tmp3291
	movl	%edx, 64(%rax)	# D.5856, s_422(D)->k0
	jmp	.L342	#
.L339:
	.loc 1 574 0 is_stmt 1
	movq	-392(%rbp), %rax	# s, tmp3292
	leaq	1096(%rax), %rdx	#, D.5873
	movq	-392(%rbp), %rax	# s, tmp3293
	movl	60(%rax), %eax	# s_422(D)->tPos, D.5857
	movq	%rdx, %rsi	# D.5873,
	movl	%eax, %edi	# D.5856,
	call	BZ2_indexIntoF	#
	movq	-392(%rbp), %rdx	# s, tmp3294
	movl	%eax, 64(%rdx)	# D.5856, s_422(D)->k0
	movq	-392(%rbp), %rax	# s, tmp3295
	movq	3160(%rax), %rdx	# s_422(D)->ll16, D.5864
	movq	-392(%rbp), %rax	# s, tmp3296
	movl	60(%rax), %eax	# s_422(D)->tPos, D.5857
	movl	%eax, %eax	# D.5857, D.5869
	addq	%rax, %rax	# D.5869
	addq	%rdx, %rax	# D.5864, D.5864
	movzwl	(%rax), %eax	# *_1971, D.5870
	movzwl	%ax, %edx	# D.5870, D.5857
	movq	-392(%rbp), %rax	# s, tmp3297
	movq	3168(%rax), %rcx	# s_422(D)->ll4, D.5865
	movq	-392(%rbp), %rax	# s, tmp3298
	movl	60(%rax), %eax	# s_422(D)->tPos, D.5857
	shrl	%eax	# D.5857
	movl	%eax, %eax	# D.5857, D.5871
	addq	%rcx, %rax	# D.5865, D.5865
	movzbl	(%rax), %eax	# *_1978, D.5860
	movzbl	%al, %esi	# D.5860, D.5857
	movq	-392(%rbp), %rax	# s, tmp3299
	movl	60(%rax), %eax	# s_422(D)->tPos, D.5857
	sall	$2, %eax	#, D.5857
	andl	$4, %eax	#, D.5856
	movl	%eax, %ecx	# D.5856, tmp3744
	shrl	%cl, %esi	# tmp3744, D.5857
	movl	%esi, %eax	# D.5857, D.5857
	andl	$15, %eax	#, D.5857
	sall	$16, %eax	#, D.5857
	orl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp3300
	movl	%edx, 60(%rax)	# D.5857, s_422(D)->tPos
	movq	-392(%rbp), %rax	# s, tmp3301
	movl	1092(%rax), %eax	# s_422(D)->nblock_used, D.5856
	leal	1(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp3302
	movl	%edx, 1092(%rax)	# D.5856, s_422(D)->nblock_used
	jmp	.L342	#
.L329:
	.loc 1 580 0
	movl	$0, -360(%rbp)	#, i
	jmp	.L343	#
.L344:
	.loc 1 581 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp3303
	movq	3152(%rax), %rax	# s_422(D)->tt, D.5866
	movl	-360(%rbp), %edx	# i, tmp3304
	movslq	%edx, %rdx	# tmp3304, D.5869
	salq	$2, %rdx	#, D.5869
	addq	%rdx, %rax	# D.5869, D.5866
	movl	(%rax), %eax	# *_1995, D.5857
	movb	%al, -375(%rbp)	# D.5857, uc
	.loc 1 582 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp3305
	movq	3152(%rax), %rdx	# s_422(D)->tt, D.5866
	movzbl	-375(%rbp), %ecx	# uc, D.5856
	movq	-392(%rbp), %rax	# s, tmp3306
	movslq	%ecx, %rcx	# D.5856, tmp3307
	addq	$272, %rcx	#, tmp3308
	movl	8(%rax,%rcx,4), %eax	# s_422(D)->cftab, D.5856
	cltq
	salq	$2, %rax	#, D.5869
	addq	%rax, %rdx	# D.5869, D.5866
	movq	-392(%rbp), %rax	# s, tmp3309
	movq	3152(%rax), %rcx	# s_422(D)->tt, D.5866
	movzbl	-375(%rbp), %esi	# uc, D.5856
	movq	-392(%rbp), %rax	# s, tmp3310
	movslq	%esi, %rsi	# D.5856, tmp3311
	addq	$272, %rsi	#, tmp3312
	movl	8(%rax,%rsi,4), %eax	# s_422(D)->cftab, D.5856
	cltq
	salq	$2, %rax	#, D.5869
	addq	%rcx, %rax	# D.5866, D.5866
	movl	(%rax), %ecx	# *_2009, D.5857
	movl	-360(%rbp), %eax	# i, tmp3313
	sall	$8, %eax	#, D.5856
	orl	%ecx, %eax	# D.5857, D.5857
	movl	%eax, (%rdx)	# D.5857, *_2003
	.loc 1 583 0 discriminator 2
	movzbl	-375(%rbp), %eax	# uc, D.5856
	movq	-392(%rbp), %rdx	# s, tmp3314
	movslq	%eax, %rcx	# D.5856, tmp3315
	addq	$272, %rcx	#, tmp3316
	movl	8(%rdx,%rcx,4), %edx	# s_422(D)->cftab, D.5856
	leal	1(%rdx), %ecx	#, D.5856
	movq	-392(%rbp), %rdx	# s, tmp3317
	cltq
	addq	$272, %rax	#, tmp3319
	movl	%ecx, 8(%rdx,%rax,4)	# D.5856, s_422(D)->cftab
	.loc 1 580 0 discriminator 2
	addl	$1, -360(%rbp)	#, i
.L343:
	.loc 1 580 0 is_stmt 0 discriminator 1
	movl	-360(%rbp), %eax	# i, tmp3320
	cmpl	-316(%rbp), %eax	# nblock, tmp3320
	jl	.L344	#,
	.loc 1 586 0 is_stmt 1
	movq	-392(%rbp), %rax	# s, tmp3321
	movq	3152(%rax), %rdx	# s_422(D)->tt, D.5866
	movq	-392(%rbp), %rax	# s, tmp3322
	movl	56(%rax), %eax	# s_422(D)->origPtr, D.5856
	cltq
	salq	$2, %rax	#, D.5869
	addq	%rdx, %rax	# D.5866, D.5866
	movl	(%rax), %eax	# *_2022, D.5857
	shrl	$8, %eax	#, D.5857
	movl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp3323
	movl	%edx, 60(%rax)	# D.5857, s_422(D)->tPos
	.loc 1 587 0
	movq	-392(%rbp), %rax	# s, tmp3324
	movl	$0, 1092(%rax)	#, s_422(D)->nblock_used
	.loc 1 588 0
	movq	-392(%rbp), %rax	# s, tmp3325
	movzbl	20(%rax), %eax	# s_422(D)->blockRandomised, D.5860
	testb	%al, %al	# D.5860
	je	.L345	#,
	.loc 1 589 0
	movq	-392(%rbp), %rax	# s, tmp3326
	movl	$0, 24(%rax)	#, s_422(D)->rNToGo
	movq	-392(%rbp), %rax	# s, tmp3327
	movl	$0, 28(%rax)	#, s_422(D)->rTPos
	.loc 1 590 0
	movq	-392(%rbp), %rax	# s, tmp3328
	movq	3152(%rax), %rdx	# s_422(D)->tt, D.5866
	movq	-392(%rbp), %rax	# s, tmp3329
	movl	60(%rax), %eax	# s_422(D)->tPos, D.5857
	movl	%eax, %eax	# D.5857, D.5869
	salq	$2, %rax	#, D.5869
	addq	%rdx, %rax	# D.5866, D.5866
	movl	(%rax), %edx	# *_2030, D.5857
	movq	-392(%rbp), %rax	# s, tmp3330
	movl	%edx, 60(%rax)	# D.5857, s_422(D)->tPos
	movq	-392(%rbp), %rax	# s, tmp3331
	movl	60(%rax), %eax	# s_422(D)->tPos, D.5857
	movzbl	%al, %edx	# D.5860, D.5856
	movq	-392(%rbp), %rax	# s, tmp3332
	movl	%edx, 64(%rax)	# D.5856, s_422(D)->k0
	movq	-392(%rbp), %rax	# s, tmp3333
	movl	60(%rax), %eax	# s_422(D)->tPos, D.5857
	shrl	$8, %eax	#, D.5857
	movl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp3334
	movl	%edx, 60(%rax)	# D.5857, s_422(D)->tPos
	movq	-392(%rbp), %rax	# s, tmp3335
	movl	1092(%rax), %eax	# s_422(D)->nblock_used, D.5856
	leal	1(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp3336
	movl	%edx, 1092(%rax)	# D.5856, s_422(D)->nblock_used
	.loc 1 591 0
	movq	-392(%rbp), %rax	# s, tmp3337
	movl	24(%rax), %eax	# s_422(D)->rNToGo, D.5856
	testl	%eax, %eax	# D.5856
	jne	.L346	#,
	.loc 1 591 0 is_stmt 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp3338
	movl	28(%rax), %eax	# s_422(D)->rTPos, D.5856
	cltq
	movl	BZ2_rNums(,%rax,4), %edx	# BZ2_rNums, D.5856
	movq	-392(%rbp), %rax	# s, tmp3340
	movl	%edx, 24(%rax)	# D.5856, s_422(D)->rNToGo
	movq	-392(%rbp), %rax	# s, tmp3341
	movl	28(%rax), %eax	# s_422(D)->rTPos, D.5856
	leal	1(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp3342
	movl	%edx, 28(%rax)	# D.5856, s_422(D)->rTPos
	movq	-392(%rbp), %rax	# s, tmp3343
	movl	28(%rax), %eax	# s_422(D)->rTPos, D.5856
	cmpl	$512, %eax	#, D.5856
	jne	.L346	#,
	movq	-392(%rbp), %rax	# s, tmp3344
	movl	$0, 28(%rax)	#, s_422(D)->rTPos
.L346:
	.loc 1 591 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp3345
	movl	24(%rax), %eax	# s_422(D)->rNToGo, D.5856
	leal	-1(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp3346
	movl	%edx, 24(%rax)	# D.5856, s_422(D)->rNToGo
	movq	-392(%rbp), %rax	# s, tmp3347
	movl	64(%rax), %edx	# s_422(D)->k0, D.5856
	movq	-392(%rbp), %rax	# s, tmp3348
	movl	24(%rax), %eax	# s_422(D)->rNToGo, D.5856
	cmpl	$1, %eax	#, D.5856
	sete	%al	#, D.5874
	movzbl	%al, %eax	# D.5874, D.5856
	xorl	%eax, %edx	# D.5856, D.5856
	movq	-392(%rbp), %rax	# s, tmp3349
	movl	%edx, 64(%rax)	# D.5856, s_422(D)->k0
	jmp	.L342	#
.L345:
	.loc 1 593 0 is_stmt 1
	movq	-392(%rbp), %rax	# s, tmp3350
	movq	3152(%rax), %rdx	# s_422(D)->tt, D.5866
	movq	-392(%rbp), %rax	# s, tmp3351
	movl	60(%rax), %eax	# s_422(D)->tPos, D.5857
	movl	%eax, %eax	# D.5857, D.5869
	salq	$2, %rax	#, D.5869
	addq	%rdx, %rax	# D.5866, D.5866
	movl	(%rax), %edx	# *_2056, D.5857
	movq	-392(%rbp), %rax	# s, tmp3352
	movl	%edx, 60(%rax)	# D.5857, s_422(D)->tPos
	movq	-392(%rbp), %rax	# s, tmp3353
	movl	60(%rax), %eax	# s_422(D)->tPos, D.5857
	movzbl	%al, %edx	# D.5860, D.5856
	movq	-392(%rbp), %rax	# s, tmp3354
	movl	%edx, 64(%rax)	# D.5856, s_422(D)->k0
	movq	-392(%rbp), %rax	# s, tmp3355
	movl	60(%rax), %eax	# s_422(D)->tPos, D.5857
	shrl	$8, %eax	#, D.5857
	movl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp3356
	movl	%edx, 60(%rax)	# D.5857, s_422(D)->tPos
	movq	-392(%rbp), %rax	# s, tmp3357
	movl	1092(%rax), %eax	# s_422(D)->nblock_used, D.5856
	leal	1(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp3358
	movl	%edx, 1092(%rax)	# D.5856, s_422(D)->nblock_used
.L342:
	.loc 1 598 0
	movl	$0, -372(%rbp)	#, retVal
	jmp	.L53	#
.L41:
	.loc 1 604 0
	movq	-392(%rbp), %rax	# s, tmp3359
	movl	$42, 8(%rax)	#, s_422(D)->state
.L351:
	.loc 1 604 0 is_stmt 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp3360
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	cmpl	$7, %eax	#, D.5856
	jle	.L347	#,
.LBB39:
	movq	-392(%rbp), %rax	# s, tmp3361
	movl	32(%rax), %edx	# s_422(D)->bsBuff, D.5857
	movq	-392(%rbp), %rax	# s, tmp3362
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	subl	$8, %eax	#, D.5856
	movl	%eax, %ecx	# D.5856, tmp3749
	shrl	%cl, %edx	# tmp3749, D.5857
	movl	%edx, %eax	# D.5857, D.5857
	andl	$255, %eax	#, tmp3363
	movl	%eax, -168(%rbp)	# tmp3363, v
	movq	-392(%rbp), %rax	# s, tmp3364
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	leal	-8(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp3365
	movl	%edx, 36(%rax)	# D.5856, s_422(D)->bsLive
	movl	-168(%rbp), %eax	# v, tmp3366
	movb	%al, -375(%rbp)	# tmp3366, uc
	nop
.LBE39:
	.loc 1 605 0 is_stmt 1 discriminator 1
	cmpb	$114, -375(%rbp)	#, uc
	je	.L42	#,
	jmp	.L417	#
.L347:
	.loc 1 604 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp3367
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	8(%rax), %eax	# _1173->avail_in, D.5857
	testl	%eax, %eax	# D.5857
	jne	.L349	#,
	.loc 1 604 0 is_stmt 0 discriminator 1
	movl	$0, -372(%rbp)	#, retVal
	jmp	.L53	#
.L349:
	.loc 1 604 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp3368
	movl	32(%rax), %eax	# s_422(D)->bsBuff, D.5857
	sall	$8, %eax	#, D.5857
	movl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp3369
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movq	(%rax), %rax	# _1178->next_in, D.5859
	movzbl	(%rax), %eax	# MEM[(UChar *)_1179], D.5860
	movzbl	%al, %eax	# D.5860, D.5857
	orl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp3370
	movl	%edx, 32(%rax)	# D.5857, s_422(D)->bsBuff
	movq	-392(%rbp), %rax	# s, tmp3371
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	leal	8(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp3372
	movl	%edx, 36(%rax)	# D.5856, s_422(D)->bsLive
	movq	-392(%rbp), %rax	# s, tmp3373
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movq	(%rax), %rdx	# _1185->next_in, D.5859
	addq	$1, %rdx	#, D.5859
	movq	%rdx, (%rax)	# D.5859, _1185->next_in
	movq	-392(%rbp), %rax	# s, tmp3374
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	8(%rax), %edx	# _1188->avail_in, D.5857
	subl	$1, %edx	#, D.5857
	movl	%edx, 8(%rax)	# D.5857, _1188->avail_in
	movq	-392(%rbp), %rax	# s, tmp3375
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	12(%rax), %edx	# _1191->total_in_lo32, D.5857
	addl	$1, %edx	#, D.5857
	movl	%edx, 12(%rax)	# D.5857, _1191->total_in_lo32
	movq	-392(%rbp), %rax	# s, tmp3376
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	12(%rax), %eax	# _1194->total_in_lo32, D.5857
	testl	%eax, %eax	# D.5857
	jne	.L350	#,
	.loc 1 604 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp3377
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	16(%rax), %edx	# _1196->total_in_hi32, D.5857
	addl	$1, %edx	#, D.5857
	movl	%edx, 16(%rax)	# D.5857, _1196->total_in_hi32
	jmp	.L351	#
.L350:
	.loc 1 604 0 discriminator 2
	jmp	.L351	#
.L417:
	.loc 1 605 0 is_stmt 1 discriminator 1
	movl	$-4, -372(%rbp)	#, retVal
	jmp	.L53	#
.L42:
	.loc 1 606 0
	movq	-392(%rbp), %rax	# s, tmp3378
	movl	$43, 8(%rax)	#, s_422(D)->state
.L356:
	.loc 1 606 0 is_stmt 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp3379
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	cmpl	$7, %eax	#, D.5856
	jle	.L352	#,
.LBB40:
	movq	-392(%rbp), %rax	# s, tmp3380
	movl	32(%rax), %edx	# s_422(D)->bsBuff, D.5857
	movq	-392(%rbp), %rax	# s, tmp3381
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	subl	$8, %eax	#, D.5856
	movl	%eax, %ecx	# D.5856, tmp3752
	shrl	%cl, %edx	# tmp3752, D.5857
	movl	%edx, %eax	# D.5857, D.5857
	andl	$255, %eax	#, tmp3382
	movl	%eax, -164(%rbp)	# tmp3382, v
	movq	-392(%rbp), %rax	# s, tmp3383
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	leal	-8(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp3384
	movl	%edx, 36(%rax)	# D.5856, s_422(D)->bsLive
	movl	-164(%rbp), %eax	# v, tmp3385
	movb	%al, -375(%rbp)	# tmp3385, uc
	nop
.LBE40:
	.loc 1 607 0 is_stmt 1 discriminator 1
	cmpb	$69, -375(%rbp)	#, uc
	je	.L43	#,
	jmp	.L418	#
.L352:
	.loc 1 606 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp3386
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	8(%rax), %eax	# _1209->avail_in, D.5857
	testl	%eax, %eax	# D.5857
	jne	.L354	#,
	.loc 1 606 0 is_stmt 0 discriminator 1
	movl	$0, -372(%rbp)	#, retVal
	jmp	.L53	#
.L354:
	.loc 1 606 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp3387
	movl	32(%rax), %eax	# s_422(D)->bsBuff, D.5857
	sall	$8, %eax	#, D.5857
	movl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp3388
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movq	(%rax), %rax	# _1214->next_in, D.5859
	movzbl	(%rax), %eax	# MEM[(UChar *)_1215], D.5860
	movzbl	%al, %eax	# D.5860, D.5857
	orl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp3389
	movl	%edx, 32(%rax)	# D.5857, s_422(D)->bsBuff
	movq	-392(%rbp), %rax	# s, tmp3390
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	leal	8(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp3391
	movl	%edx, 36(%rax)	# D.5856, s_422(D)->bsLive
	movq	-392(%rbp), %rax	# s, tmp3392
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movq	(%rax), %rdx	# _1221->next_in, D.5859
	addq	$1, %rdx	#, D.5859
	movq	%rdx, (%rax)	# D.5859, _1221->next_in
	movq	-392(%rbp), %rax	# s, tmp3393
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	8(%rax), %edx	# _1224->avail_in, D.5857
	subl	$1, %edx	#, D.5857
	movl	%edx, 8(%rax)	# D.5857, _1224->avail_in
	movq	-392(%rbp), %rax	# s, tmp3394
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	12(%rax), %edx	# _1227->total_in_lo32, D.5857
	addl	$1, %edx	#, D.5857
	movl	%edx, 12(%rax)	# D.5857, _1227->total_in_lo32
	movq	-392(%rbp), %rax	# s, tmp3395
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	12(%rax), %eax	# _1230->total_in_lo32, D.5857
	testl	%eax, %eax	# D.5857
	jne	.L355	#,
	.loc 1 606 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp3396
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	16(%rax), %edx	# _1232->total_in_hi32, D.5857
	addl	$1, %edx	#, D.5857
	movl	%edx, 16(%rax)	# D.5857, _1232->total_in_hi32
	jmp	.L356	#
.L355:
	.loc 1 606 0 discriminator 2
	jmp	.L356	#
.L418:
	.loc 1 607 0 is_stmt 1 discriminator 1
	movl	$-4, -372(%rbp)	#, retVal
	jmp	.L53	#
.L43:
	.loc 1 608 0
	movq	-392(%rbp), %rax	# s, tmp3397
	movl	$44, 8(%rax)	#, s_422(D)->state
.L361:
	.loc 1 608 0 is_stmt 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp3398
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	cmpl	$7, %eax	#, D.5856
	jle	.L357	#,
.LBB41:
	movq	-392(%rbp), %rax	# s, tmp3399
	movl	32(%rax), %edx	# s_422(D)->bsBuff, D.5857
	movq	-392(%rbp), %rax	# s, tmp3400
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	subl	$8, %eax	#, D.5856
	movl	%eax, %ecx	# D.5856, tmp3755
	shrl	%cl, %edx	# tmp3755, D.5857
	movl	%edx, %eax	# D.5857, D.5857
	andl	$255, %eax	#, tmp3401
	movl	%eax, -160(%rbp)	# tmp3401, v
	movq	-392(%rbp), %rax	# s, tmp3402
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	leal	-8(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp3403
	movl	%edx, 36(%rax)	# D.5856, s_422(D)->bsLive
	movl	-160(%rbp), %eax	# v, tmp3404
	movb	%al, -375(%rbp)	# tmp3404, uc
	nop
.LBE41:
	.loc 1 609 0 is_stmt 1 discriminator 1
	cmpb	$56, -375(%rbp)	#, uc
	je	.L44	#,
	jmp	.L419	#
.L357:
	.loc 1 608 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp3405
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	8(%rax), %eax	# _1245->avail_in, D.5857
	testl	%eax, %eax	# D.5857
	jne	.L359	#,
	.loc 1 608 0 is_stmt 0 discriminator 1
	movl	$0, -372(%rbp)	#, retVal
	jmp	.L53	#
.L359:
	.loc 1 608 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp3406
	movl	32(%rax), %eax	# s_422(D)->bsBuff, D.5857
	sall	$8, %eax	#, D.5857
	movl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp3407
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movq	(%rax), %rax	# _1250->next_in, D.5859
	movzbl	(%rax), %eax	# MEM[(UChar *)_1251], D.5860
	movzbl	%al, %eax	# D.5860, D.5857
	orl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp3408
	movl	%edx, 32(%rax)	# D.5857, s_422(D)->bsBuff
	movq	-392(%rbp), %rax	# s, tmp3409
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	leal	8(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp3410
	movl	%edx, 36(%rax)	# D.5856, s_422(D)->bsLive
	movq	-392(%rbp), %rax	# s, tmp3411
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movq	(%rax), %rdx	# _1257->next_in, D.5859
	addq	$1, %rdx	#, D.5859
	movq	%rdx, (%rax)	# D.5859, _1257->next_in
	movq	-392(%rbp), %rax	# s, tmp3412
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	8(%rax), %edx	# _1260->avail_in, D.5857
	subl	$1, %edx	#, D.5857
	movl	%edx, 8(%rax)	# D.5857, _1260->avail_in
	movq	-392(%rbp), %rax	# s, tmp3413
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	12(%rax), %edx	# _1263->total_in_lo32, D.5857
	addl	$1, %edx	#, D.5857
	movl	%edx, 12(%rax)	# D.5857, _1263->total_in_lo32
	movq	-392(%rbp), %rax	# s, tmp3414
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	12(%rax), %eax	# _1266->total_in_lo32, D.5857
	testl	%eax, %eax	# D.5857
	jne	.L360	#,
	.loc 1 608 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp3415
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	16(%rax), %edx	# _1268->total_in_hi32, D.5857
	addl	$1, %edx	#, D.5857
	movl	%edx, 16(%rax)	# D.5857, _1268->total_in_hi32
	jmp	.L361	#
.L360:
	.loc 1 608 0 discriminator 2
	jmp	.L361	#
.L419:
	.loc 1 609 0 is_stmt 1 discriminator 1
	movl	$-4, -372(%rbp)	#, retVal
	jmp	.L53	#
.L44:
	.loc 1 610 0
	movq	-392(%rbp), %rax	# s, tmp3416
	movl	$45, 8(%rax)	#, s_422(D)->state
.L366:
	.loc 1 610 0 is_stmt 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp3417
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	cmpl	$7, %eax	#, D.5856
	jle	.L362	#,
.LBB42:
	movq	-392(%rbp), %rax	# s, tmp3418
	movl	32(%rax), %edx	# s_422(D)->bsBuff, D.5857
	movq	-392(%rbp), %rax	# s, tmp3419
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	subl	$8, %eax	#, D.5856
	movl	%eax, %ecx	# D.5856, tmp3758
	shrl	%cl, %edx	# tmp3758, D.5857
	movl	%edx, %eax	# D.5857, D.5857
	andl	$255, %eax	#, tmp3420
	movl	%eax, -156(%rbp)	# tmp3420, v
	movq	-392(%rbp), %rax	# s, tmp3421
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	leal	-8(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp3422
	movl	%edx, 36(%rax)	# D.5856, s_422(D)->bsLive
	movl	-156(%rbp), %eax	# v, tmp3423
	movb	%al, -375(%rbp)	# tmp3423, uc
	nop
.LBE42:
	.loc 1 611 0 is_stmt 1 discriminator 1
	cmpb	$80, -375(%rbp)	#, uc
	je	.L45	#,
	jmp	.L420	#
.L362:
	.loc 1 610 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp3424
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	8(%rax), %eax	# _1281->avail_in, D.5857
	testl	%eax, %eax	# D.5857
	jne	.L364	#,
	.loc 1 610 0 is_stmt 0 discriminator 1
	movl	$0, -372(%rbp)	#, retVal
	jmp	.L53	#
.L364:
	.loc 1 610 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp3425
	movl	32(%rax), %eax	# s_422(D)->bsBuff, D.5857
	sall	$8, %eax	#, D.5857
	movl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp3426
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movq	(%rax), %rax	# _1286->next_in, D.5859
	movzbl	(%rax), %eax	# MEM[(UChar *)_1287], D.5860
	movzbl	%al, %eax	# D.5860, D.5857
	orl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp3427
	movl	%edx, 32(%rax)	# D.5857, s_422(D)->bsBuff
	movq	-392(%rbp), %rax	# s, tmp3428
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	leal	8(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp3429
	movl	%edx, 36(%rax)	# D.5856, s_422(D)->bsLive
	movq	-392(%rbp), %rax	# s, tmp3430
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movq	(%rax), %rdx	# _1293->next_in, D.5859
	addq	$1, %rdx	#, D.5859
	movq	%rdx, (%rax)	# D.5859, _1293->next_in
	movq	-392(%rbp), %rax	# s, tmp3431
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	8(%rax), %edx	# _1296->avail_in, D.5857
	subl	$1, %edx	#, D.5857
	movl	%edx, 8(%rax)	# D.5857, _1296->avail_in
	movq	-392(%rbp), %rax	# s, tmp3432
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	12(%rax), %edx	# _1299->total_in_lo32, D.5857
	addl	$1, %edx	#, D.5857
	movl	%edx, 12(%rax)	# D.5857, _1299->total_in_lo32
	movq	-392(%rbp), %rax	# s, tmp3433
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	12(%rax), %eax	# _1302->total_in_lo32, D.5857
	testl	%eax, %eax	# D.5857
	jne	.L365	#,
	.loc 1 610 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp3434
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	16(%rax), %edx	# _1304->total_in_hi32, D.5857
	addl	$1, %edx	#, D.5857
	movl	%edx, 16(%rax)	# D.5857, _1304->total_in_hi32
	jmp	.L366	#
.L365:
	.loc 1 610 0 discriminator 2
	jmp	.L366	#
.L420:
	.loc 1 611 0 is_stmt 1 discriminator 1
	movl	$-4, -372(%rbp)	#, retVal
	jmp	.L53	#
.L45:
	.loc 1 612 0
	movq	-392(%rbp), %rax	# s, tmp3435
	movl	$46, 8(%rax)	#, s_422(D)->state
.L371:
	.loc 1 612 0 is_stmt 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp3436
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	cmpl	$7, %eax	#, D.5856
	jle	.L367	#,
.LBB43:
	movq	-392(%rbp), %rax	# s, tmp3437
	movl	32(%rax), %edx	# s_422(D)->bsBuff, D.5857
	movq	-392(%rbp), %rax	# s, tmp3438
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	subl	$8, %eax	#, D.5856
	movl	%eax, %ecx	# D.5856, tmp3761
	shrl	%cl, %edx	# tmp3761, D.5857
	movl	%edx, %eax	# D.5857, D.5857
	andl	$255, %eax	#, tmp3439
	movl	%eax, -152(%rbp)	# tmp3439, v
	movq	-392(%rbp), %rax	# s, tmp3440
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	leal	-8(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp3441
	movl	%edx, 36(%rax)	# D.5856, s_422(D)->bsLive
	movl	-152(%rbp), %eax	# v, tmp3442
	movb	%al, -375(%rbp)	# tmp3442, uc
	nop
.LBE43:
	.loc 1 613 0 is_stmt 1 discriminator 1
	cmpb	$-112, -375(%rbp)	#, uc
	je	.L372	#,
	jmp	.L421	#
.L367:
	.loc 1 612 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp3443
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	8(%rax), %eax	# _1317->avail_in, D.5857
	testl	%eax, %eax	# D.5857
	jne	.L369	#,
	.loc 1 612 0 is_stmt 0 discriminator 1
	movl	$0, -372(%rbp)	#, retVal
	jmp	.L53	#
.L369:
	.loc 1 612 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp3444
	movl	32(%rax), %eax	# s_422(D)->bsBuff, D.5857
	sall	$8, %eax	#, D.5857
	movl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp3445
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movq	(%rax), %rax	# _1322->next_in, D.5859
	movzbl	(%rax), %eax	# MEM[(UChar *)_1323], D.5860
	movzbl	%al, %eax	# D.5860, D.5857
	orl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp3446
	movl	%edx, 32(%rax)	# D.5857, s_422(D)->bsBuff
	movq	-392(%rbp), %rax	# s, tmp3447
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	leal	8(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp3448
	movl	%edx, 36(%rax)	# D.5856, s_422(D)->bsLive
	movq	-392(%rbp), %rax	# s, tmp3449
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movq	(%rax), %rdx	# _1329->next_in, D.5859
	addq	$1, %rdx	#, D.5859
	movq	%rdx, (%rax)	# D.5859, _1329->next_in
	movq	-392(%rbp), %rax	# s, tmp3450
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	8(%rax), %edx	# _1332->avail_in, D.5857
	subl	$1, %edx	#, D.5857
	movl	%edx, 8(%rax)	# D.5857, _1332->avail_in
	movq	-392(%rbp), %rax	# s, tmp3451
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	12(%rax), %edx	# _1335->total_in_lo32, D.5857
	addl	$1, %edx	#, D.5857
	movl	%edx, 12(%rax)	# D.5857, _1335->total_in_lo32
	movq	-392(%rbp), %rax	# s, tmp3452
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	12(%rax), %eax	# _1338->total_in_lo32, D.5857
	testl	%eax, %eax	# D.5857
	jne	.L370	#,
	.loc 1 612 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp3453
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	16(%rax), %edx	# _1340->total_in_hi32, D.5857
	addl	$1, %edx	#, D.5857
	movl	%edx, 16(%rax)	# D.5857, _1340->total_in_hi32
	jmp	.L371	#
.L370:
	.loc 1 612 0 discriminator 2
	jmp	.L371	#
.L421:
	.loc 1 613 0 is_stmt 1 discriminator 1
	movl	$-4, -372(%rbp)	#, retVal
	jmp	.L53	#
.L372:
	.loc 1 615 0
	movq	-392(%rbp), %rax	# s, tmp3454
	movl	$0, 3180(%rax)	#, s_422(D)->storedCombinedCRC
.L46:
	.loc 1 616 0
	movq	-392(%rbp), %rax	# s, tmp3455
	movl	$47, 8(%rax)	#, s_422(D)->state
.L377:
	.loc 1 616 0 is_stmt 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp3456
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	cmpl	$7, %eax	#, D.5856
	jle	.L373	#,
.LBB44:
	movq	-392(%rbp), %rax	# s, tmp3457
	movl	32(%rax), %edx	# s_422(D)->bsBuff, D.5857
	movq	-392(%rbp), %rax	# s, tmp3458
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	subl	$8, %eax	#, D.5856
	movl	%eax, %ecx	# D.5856, tmp3764
	shrl	%cl, %edx	# tmp3764, D.5857
	movl	%edx, %eax	# D.5857, D.5857
	andl	$255, %eax	#, tmp3459
	movl	%eax, -148(%rbp)	# tmp3459, v
	movq	-392(%rbp), %rax	# s, tmp3460
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	leal	-8(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp3461
	movl	%edx, 36(%rax)	# D.5856, s_422(D)->bsLive
	movl	-148(%rbp), %eax	# v, tmp3462
	movb	%al, -375(%rbp)	# tmp3462, uc
	nop
.LBE44:
	.loc 1 617 0 is_stmt 1 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp3474
	movl	3180(%rax), %eax	# s_422(D)->storedCombinedCRC, D.5857
	sall	$8, %eax	#, D.5857
	movl	%eax, %edx	# D.5857, D.5857
	movzbl	-375(%rbp), %eax	# uc, D.5857
	orl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp3475
	movl	%edx, 3180(%rax)	# D.5857, s_422(D)->storedCombinedCRC
	jmp	.L47	#
.L373:
	.loc 1 616 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp3463
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	8(%rax), %eax	# _1356->avail_in, D.5857
	testl	%eax, %eax	# D.5857
	jne	.L375	#,
	.loc 1 616 0 is_stmt 0 discriminator 1
	movl	$0, -372(%rbp)	#, retVal
	jmp	.L53	#
.L375:
	.loc 1 616 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp3464
	movl	32(%rax), %eax	# s_422(D)->bsBuff, D.5857
	sall	$8, %eax	#, D.5857
	movl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp3465
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movq	(%rax), %rax	# _1361->next_in, D.5859
	movzbl	(%rax), %eax	# MEM[(UChar *)_1362], D.5860
	movzbl	%al, %eax	# D.5860, D.5857
	orl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp3466
	movl	%edx, 32(%rax)	# D.5857, s_422(D)->bsBuff
	movq	-392(%rbp), %rax	# s, tmp3467
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	leal	8(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp3468
	movl	%edx, 36(%rax)	# D.5856, s_422(D)->bsLive
	movq	-392(%rbp), %rax	# s, tmp3469
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movq	(%rax), %rdx	# _1368->next_in, D.5859
	addq	$1, %rdx	#, D.5859
	movq	%rdx, (%rax)	# D.5859, _1368->next_in
	movq	-392(%rbp), %rax	# s, tmp3470
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	8(%rax), %edx	# _1371->avail_in, D.5857
	subl	$1, %edx	#, D.5857
	movl	%edx, 8(%rax)	# D.5857, _1371->avail_in
	movq	-392(%rbp), %rax	# s, tmp3471
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	12(%rax), %edx	# _1374->total_in_lo32, D.5857
	addl	$1, %edx	#, D.5857
	movl	%edx, 12(%rax)	# D.5857, _1374->total_in_lo32
	movq	-392(%rbp), %rax	# s, tmp3472
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	12(%rax), %eax	# _1377->total_in_lo32, D.5857
	testl	%eax, %eax	# D.5857
	jne	.L376	#,
	.loc 1 616 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp3473
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	16(%rax), %edx	# _1379->total_in_hi32, D.5857
	addl	$1, %edx	#, D.5857
	movl	%edx, 16(%rax)	# D.5857, _1379->total_in_hi32
	jmp	.L377	#
.L376:
	.loc 1 616 0 discriminator 2
	jmp	.L377	#
.L47:
	.loc 1 618 0 is_stmt 1
	movq	-392(%rbp), %rax	# s, tmp3476
	movl	$48, 8(%rax)	#, s_422(D)->state
.L382:
	.loc 1 618 0 is_stmt 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp3477
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	cmpl	$7, %eax	#, D.5856
	jle	.L378	#,
.LBB45:
	movq	-392(%rbp), %rax	# s, tmp3478
	movl	32(%rax), %edx	# s_422(D)->bsBuff, D.5857
	movq	-392(%rbp), %rax	# s, tmp3479
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	subl	$8, %eax	#, D.5856
	movl	%eax, %ecx	# D.5856, tmp3768
	shrl	%cl, %edx	# tmp3768, D.5857
	movl	%edx, %eax	# D.5857, D.5857
	andl	$255, %eax	#, tmp3480
	movl	%eax, -144(%rbp)	# tmp3480, v
	movq	-392(%rbp), %rax	# s, tmp3481
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	leal	-8(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp3482
	movl	%edx, 36(%rax)	# D.5856, s_422(D)->bsLive
	movl	-144(%rbp), %eax	# v, tmp3483
	movb	%al, -375(%rbp)	# tmp3483, uc
	nop
.LBE45:
	.loc 1 619 0 is_stmt 1 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp3495
	movl	3180(%rax), %eax	# s_422(D)->storedCombinedCRC, D.5857
	sall	$8, %eax	#, D.5857
	movl	%eax, %edx	# D.5857, D.5857
	movzbl	-375(%rbp), %eax	# uc, D.5857
	orl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp3496
	movl	%edx, 3180(%rax)	# D.5857, s_422(D)->storedCombinedCRC
	jmp	.L48	#
.L378:
	.loc 1 618 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp3484
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	8(%rax), %eax	# _1395->avail_in, D.5857
	testl	%eax, %eax	# D.5857
	jne	.L380	#,
	.loc 1 618 0 is_stmt 0 discriminator 1
	movl	$0, -372(%rbp)	#, retVal
	jmp	.L53	#
.L380:
	.loc 1 618 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp3485
	movl	32(%rax), %eax	# s_422(D)->bsBuff, D.5857
	sall	$8, %eax	#, D.5857
	movl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp3486
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movq	(%rax), %rax	# _1400->next_in, D.5859
	movzbl	(%rax), %eax	# MEM[(UChar *)_1401], D.5860
	movzbl	%al, %eax	# D.5860, D.5857
	orl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp3487
	movl	%edx, 32(%rax)	# D.5857, s_422(D)->bsBuff
	movq	-392(%rbp), %rax	# s, tmp3488
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	leal	8(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp3489
	movl	%edx, 36(%rax)	# D.5856, s_422(D)->bsLive
	movq	-392(%rbp), %rax	# s, tmp3490
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movq	(%rax), %rdx	# _1407->next_in, D.5859
	addq	$1, %rdx	#, D.5859
	movq	%rdx, (%rax)	# D.5859, _1407->next_in
	movq	-392(%rbp), %rax	# s, tmp3491
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	8(%rax), %edx	# _1410->avail_in, D.5857
	subl	$1, %edx	#, D.5857
	movl	%edx, 8(%rax)	# D.5857, _1410->avail_in
	movq	-392(%rbp), %rax	# s, tmp3492
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	12(%rax), %edx	# _1413->total_in_lo32, D.5857
	addl	$1, %edx	#, D.5857
	movl	%edx, 12(%rax)	# D.5857, _1413->total_in_lo32
	movq	-392(%rbp), %rax	# s, tmp3493
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	12(%rax), %eax	# _1416->total_in_lo32, D.5857
	testl	%eax, %eax	# D.5857
	jne	.L381	#,
	.loc 1 618 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp3494
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	16(%rax), %edx	# _1418->total_in_hi32, D.5857
	addl	$1, %edx	#, D.5857
	movl	%edx, 16(%rax)	# D.5857, _1418->total_in_hi32
	jmp	.L382	#
.L381:
	.loc 1 618 0 discriminator 2
	jmp	.L382	#
.L48:
	.loc 1 620 0 is_stmt 1
	movq	-392(%rbp), %rax	# s, tmp3497
	movl	$49, 8(%rax)	#, s_422(D)->state
.L387:
	.loc 1 620 0 is_stmt 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp3498
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	cmpl	$7, %eax	#, D.5856
	jle	.L383	#,
.LBB46:
	movq	-392(%rbp), %rax	# s, tmp3499
	movl	32(%rax), %edx	# s_422(D)->bsBuff, D.5857
	movq	-392(%rbp), %rax	# s, tmp3500
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	subl	$8, %eax	#, D.5856
	movl	%eax, %ecx	# D.5856, tmp3772
	shrl	%cl, %edx	# tmp3772, D.5857
	movl	%edx, %eax	# D.5857, D.5857
	andl	$255, %eax	#, tmp3501
	movl	%eax, -140(%rbp)	# tmp3501, v
	movq	-392(%rbp), %rax	# s, tmp3502
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	leal	-8(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp3503
	movl	%edx, 36(%rax)	# D.5856, s_422(D)->bsLive
	movl	-140(%rbp), %eax	# v, tmp3504
	movb	%al, -375(%rbp)	# tmp3504, uc
	nop
.LBE46:
	.loc 1 621 0 is_stmt 1 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp3516
	movl	3180(%rax), %eax	# s_422(D)->storedCombinedCRC, D.5857
	sall	$8, %eax	#, D.5857
	movl	%eax, %edx	# D.5857, D.5857
	movzbl	-375(%rbp), %eax	# uc, D.5857
	orl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp3517
	movl	%edx, 3180(%rax)	# D.5857, s_422(D)->storedCombinedCRC
	jmp	.L49	#
.L383:
	.loc 1 620 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp3505
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	8(%rax), %eax	# _1434->avail_in, D.5857
	testl	%eax, %eax	# D.5857
	jne	.L385	#,
	.loc 1 620 0 is_stmt 0 discriminator 1
	movl	$0, -372(%rbp)	#, retVal
	jmp	.L53	#
.L385:
	.loc 1 620 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp3506
	movl	32(%rax), %eax	# s_422(D)->bsBuff, D.5857
	sall	$8, %eax	#, D.5857
	movl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp3507
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movq	(%rax), %rax	# _1439->next_in, D.5859
	movzbl	(%rax), %eax	# MEM[(UChar *)_1440], D.5860
	movzbl	%al, %eax	# D.5860, D.5857
	orl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp3508
	movl	%edx, 32(%rax)	# D.5857, s_422(D)->bsBuff
	movq	-392(%rbp), %rax	# s, tmp3509
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	leal	8(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp3510
	movl	%edx, 36(%rax)	# D.5856, s_422(D)->bsLive
	movq	-392(%rbp), %rax	# s, tmp3511
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movq	(%rax), %rdx	# _1446->next_in, D.5859
	addq	$1, %rdx	#, D.5859
	movq	%rdx, (%rax)	# D.5859, _1446->next_in
	movq	-392(%rbp), %rax	# s, tmp3512
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	8(%rax), %edx	# _1449->avail_in, D.5857
	subl	$1, %edx	#, D.5857
	movl	%edx, 8(%rax)	# D.5857, _1449->avail_in
	movq	-392(%rbp), %rax	# s, tmp3513
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	12(%rax), %edx	# _1452->total_in_lo32, D.5857
	addl	$1, %edx	#, D.5857
	movl	%edx, 12(%rax)	# D.5857, _1452->total_in_lo32
	movq	-392(%rbp), %rax	# s, tmp3514
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	12(%rax), %eax	# _1455->total_in_lo32, D.5857
	testl	%eax, %eax	# D.5857
	jne	.L386	#,
	.loc 1 620 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp3515
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	16(%rax), %edx	# _1457->total_in_hi32, D.5857
	addl	$1, %edx	#, D.5857
	movl	%edx, 16(%rax)	# D.5857, _1457->total_in_hi32
	jmp	.L387	#
.L386:
	.loc 1 620 0 discriminator 2
	jmp	.L387	#
.L49:
	.loc 1 622 0 is_stmt 1
	movq	-392(%rbp), %rax	# s, tmp3518
	movl	$50, 8(%rax)	#, s_422(D)->state
.L392:
	.loc 1 622 0 is_stmt 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp3519
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	cmpl	$7, %eax	#, D.5856
	jle	.L388	#,
.LBB47:
	movq	-392(%rbp), %rax	# s, tmp3520
	movl	32(%rax), %edx	# s_422(D)->bsBuff, D.5857
	movq	-392(%rbp), %rax	# s, tmp3521
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	subl	$8, %eax	#, D.5856
	movl	%eax, %ecx	# D.5856, tmp3776
	shrl	%cl, %edx	# tmp3776, D.5857
	movl	%edx, %eax	# D.5857, D.5857
	andl	$255, %eax	#, tmp3522
	movl	%eax, -136(%rbp)	# tmp3522, v
	movq	-392(%rbp), %rax	# s, tmp3523
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	leal	-8(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp3524
	movl	%edx, 36(%rax)	# D.5856, s_422(D)->bsLive
	movl	-136(%rbp), %eax	# v, tmp3525
	movb	%al, -375(%rbp)	# tmp3525, uc
	nop
.LBE47:
	.loc 1 623 0 is_stmt 1 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp3537
	movl	3180(%rax), %eax	# s_422(D)->storedCombinedCRC, D.5857
	sall	$8, %eax	#, D.5857
	movl	%eax, %edx	# D.5857, D.5857
	movzbl	-375(%rbp), %eax	# uc, D.5857
	orl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp3538
	movl	%edx, 3180(%rax)	# D.5857, s_422(D)->storedCombinedCRC
	.loc 1 625 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp3539
	movl	$1, 8(%rax)	#, s_422(D)->state
	.loc 1 626 0 discriminator 1
	movl	$4, -372(%rbp)	#, retVal
	jmp	.L53	#
.L388:
	.loc 1 622 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp3526
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	8(%rax), %eax	# _1474->avail_in, D.5857
	testl	%eax, %eax	# D.5857
	jne	.L390	#,
	.loc 1 622 0 is_stmt 0 discriminator 1
	movl	$0, -372(%rbp)	#, retVal
	jmp	.L53	#
.L390:
	.loc 1 622 0 discriminator 2
	movq	-392(%rbp), %rax	# s, tmp3527
	movl	32(%rax), %eax	# s_422(D)->bsBuff, D.5857
	sall	$8, %eax	#, D.5857
	movl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp3528
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movq	(%rax), %rax	# _1479->next_in, D.5859
	movzbl	(%rax), %eax	# MEM[(UChar *)_1480], D.5860
	movzbl	%al, %eax	# D.5860, D.5857
	orl	%eax, %edx	# D.5857, D.5857
	movq	-392(%rbp), %rax	# s, tmp3529
	movl	%edx, 32(%rax)	# D.5857, s_422(D)->bsBuff
	movq	-392(%rbp), %rax	# s, tmp3530
	movl	36(%rax), %eax	# s_422(D)->bsLive, D.5856
	leal	8(%rax), %edx	#, D.5856
	movq	-392(%rbp), %rax	# s, tmp3531
	movl	%edx, 36(%rax)	# D.5856, s_422(D)->bsLive
	movq	-392(%rbp), %rax	# s, tmp3532
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movq	(%rax), %rdx	# _1486->next_in, D.5859
	addq	$1, %rdx	#, D.5859
	movq	%rdx, (%rax)	# D.5859, _1486->next_in
	movq	-392(%rbp), %rax	# s, tmp3533
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	8(%rax), %edx	# _1489->avail_in, D.5857
	subl	$1, %edx	#, D.5857
	movl	%edx, 8(%rax)	# D.5857, _1489->avail_in
	movq	-392(%rbp), %rax	# s, tmp3534
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	12(%rax), %edx	# _1492->total_in_lo32, D.5857
	addl	$1, %edx	#, D.5857
	movl	%edx, 12(%rax)	# D.5857, _1492->total_in_lo32
	movq	-392(%rbp), %rax	# s, tmp3535
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	12(%rax), %eax	# _1495->total_in_lo32, D.5857
	testl	%eax, %eax	# D.5857
	jne	.L391	#,
	.loc 1 622 0 discriminator 1
	movq	-392(%rbp), %rax	# s, tmp3536
	movq	(%rax), %rax	# s_422(D)->strm, D.5858
	movl	16(%rax), %edx	# _1497->total_in_hi32, D.5857
	addl	$1, %edx	#, D.5857
	movl	%edx, 16(%rax)	# D.5857, _1497->total_in_hi32
	jmp	.L392	#
.L391:
	.loc 1 622 0 discriminator 2
	jmp	.L392	#
.L7:
	.loc 1 628 0 is_stmt 1
	movl	$4001, %edi	#,
	call	BZ2_bz__AssertH__fail	#
	.loc 1 631 0
	movl	$4002, %edi	#,
	call	BZ2_bz__AssertH__fail	#
.L53:
	.loc 1 635 0
	movq	-392(%rbp), %rax	# s, tmp3540
	movl	-360(%rbp), %edx	# i, tmp3541
	movl	%edx, 64036(%rax)	# tmp3541, s_422(D)->save_i
	.loc 1 636 0
	movq	-392(%rbp), %rax	# s, tmp3542
	movl	-356(%rbp), %edx	# j, tmp3543
	movl	%edx, 64040(%rax)	# tmp3543, s_422(D)->save_j
	.loc 1 637 0
	movq	-392(%rbp), %rax	# s, tmp3544
	movl	-352(%rbp), %edx	# t, tmp3545
	movl	%edx, 64044(%rax)	# tmp3545, s_422(D)->save_t
	.loc 1 638 0
	movq	-392(%rbp), %rax	# s, tmp3546
	movl	-348(%rbp), %edx	# alphaSize, tmp3547
	movl	%edx, 64048(%rax)	# tmp3547, s_422(D)->save_alphaSize
	.loc 1 639 0
	movq	-392(%rbp), %rax	# s, tmp3548
	movl	-344(%rbp), %edx	# nGroups, tmp3549
	movl	%edx, 64052(%rax)	# tmp3549, s_422(D)->save_nGroups
	.loc 1 640 0
	movq	-392(%rbp), %rax	# s, tmp3550
	movl	-340(%rbp), %edx	# nSelectors, tmp3551
	movl	%edx, 64056(%rax)	# tmp3551, s_422(D)->save_nSelectors
	.loc 1 641 0
	movq	-392(%rbp), %rax	# s, tmp3552
	movl	-336(%rbp), %edx	# EOB, tmp3553
	movl	%edx, 64060(%rax)	# tmp3553, s_422(D)->save_EOB
	.loc 1 642 0
	movq	-392(%rbp), %rax	# s, tmp3554
	movl	-332(%rbp), %edx	# groupNo, tmp3555
	movl	%edx, 64064(%rax)	# tmp3555, s_422(D)->save_groupNo
	.loc 1 643 0
	movq	-392(%rbp), %rax	# s, tmp3556
	movl	-328(%rbp), %edx	# groupPos, tmp3557
	movl	%edx, 64068(%rax)	# tmp3557, s_422(D)->save_groupPos
	.loc 1 644 0
	movq	-392(%rbp), %rax	# s, tmp3558
	movl	-324(%rbp), %edx	# nextSym, tmp3559
	movl	%edx, 64072(%rax)	# tmp3559, s_422(D)->save_nextSym
	.loc 1 645 0
	movq	-392(%rbp), %rax	# s, tmp3560
	movl	-320(%rbp), %edx	# nblockMAX, tmp3561
	movl	%edx, 64076(%rax)	# tmp3561, s_422(D)->save_nblockMAX
	.loc 1 646 0
	movq	-392(%rbp), %rax	# s, tmp3562
	movl	-316(%rbp), %edx	# nblock, tmp3563
	movl	%edx, 64080(%rax)	# tmp3563, s_422(D)->save_nblock
	.loc 1 647 0
	movq	-392(%rbp), %rax	# s, tmp3564
	movl	-312(%rbp), %edx	# es, tmp3565
	movl	%edx, 64084(%rax)	# tmp3565, s_422(D)->save_es
	.loc 1 648 0
	movq	-392(%rbp), %rax	# s, tmp3566
	movl	-308(%rbp), %edx	# N, tmp3567
	movl	%edx, 64088(%rax)	# tmp3567, s_422(D)->save_N
	.loc 1 649 0
	movq	-392(%rbp), %rax	# s, tmp3568
	movl	-304(%rbp), %edx	# curr, tmp3569
	movl	%edx, 64092(%rax)	# tmp3569, s_422(D)->save_curr
	.loc 1 650 0
	movq	-392(%rbp), %rax	# s, tmp3570
	movl	-244(%rbp), %edx	# zt, tmp3571
	movl	%edx, 64096(%rax)	# tmp3571, s_422(D)->save_zt
	.loc 1 651 0
	movq	-392(%rbp), %rax	# s, tmp3572
	movl	-300(%rbp), %edx	# zn, tmp3573
	movl	%edx, 64100(%rax)	# tmp3573, s_422(D)->save_zn
	.loc 1 652 0
	movq	-392(%rbp), %rax	# s, tmp3574
	movl	-296(%rbp), %edx	# zvec, tmp3575
	movl	%edx, 64104(%rax)	# tmp3575, s_422(D)->save_zvec
	.loc 1 653 0
	movq	-392(%rbp), %rax	# s, tmp3576
	movl	-292(%rbp), %edx	# zj, tmp3577
	movl	%edx, 64108(%rax)	# tmp3577, s_422(D)->save_zj
	.loc 1 654 0
	movq	-392(%rbp), %rax	# s, tmp3578
	movl	-288(%rbp), %edx	# gSel, tmp3579
	movl	%edx, 64112(%rax)	# tmp3579, s_422(D)->save_gSel
	.loc 1 655 0
	movq	-392(%rbp), %rax	# s, tmp3580
	movl	-284(%rbp), %edx	# gMinlen, tmp3581
	movl	%edx, 64116(%rax)	# tmp3581, s_422(D)->save_gMinlen
	.loc 1 656 0
	movq	-392(%rbp), %rax	# s, tmp3582
	movq	-64(%rbp), %rdx	# gLimit, tmp3583
	movq	%rdx, 64120(%rax)	# tmp3583, s_422(D)->save_gLimit
	.loc 1 657 0
	movq	-392(%rbp), %rax	# s, tmp3584
	movq	-56(%rbp), %rdx	# gBase, tmp3585
	movq	%rdx, 64128(%rax)	# tmp3585, s_422(D)->save_gBase
	.loc 1 658 0
	movq	-392(%rbp), %rax	# s, tmp3586
	movq	-48(%rbp), %rdx	# gPerm, tmp3587
	movq	%rdx, 64136(%rax)	# tmp3587, s_422(D)->save_gPerm
	.loc 1 660 0
	movl	-372(%rbp), %eax	# retVal, D.5867
	.loc 1 661 0
	movq	-24(%rbp), %rbx	# D.5875, tmp3590
	xorq	%fs:40, %rbx	#, tmp3590
	je	.L394	#,
	call	__stack_chk_fail	#
.L394:
	addq	$392, %rsp	#,
	popq	%rbx	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	BZ2_decompress, .-BZ2_decompress
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/libio.h"
	.file 5 "bzlib.h"
	.file 6 "bzlib_private.h"
	.file 7 "/usr/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1174
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF148
	.byte	0x1
	.long	.LASF149
	.long	.LASF150
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
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF12
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF13
	.uleb128 0x7
	.long	.LASF43
	.byte	0xd8
	.byte	0x4
	.byte	0xf6
	.long	0x22b
	.uleb128 0x8
	.long	.LASF14
	.byte	0x4
	.byte	0xf7
	.long	0x3f
	.byte	0
	.uleb128 0x8
	.long	.LASF15
	.byte	0x4
	.byte	0xfc
	.long	0x8f
	.byte	0x8
	.uleb128 0x8
	.long	.LASF16
	.byte	0x4
	.byte	0xfd
	.long	0x8f
	.byte	0x10
	.uleb128 0x8
	.long	.LASF17
	.byte	0x4
	.byte	0xfe
	.long	0x8f
	.byte	0x18
	.uleb128 0x8
	.long	.LASF18
	.byte	0x4
	.byte	0xff
	.long	0x8f
	.byte	0x20
	.uleb128 0x9
	.long	.LASF19
	.byte	0x4
	.value	0x100
	.long	0x8f
	.byte	0x28
	.uleb128 0x9
	.long	.LASF20
	.byte	0x4
	.value	0x101
	.long	0x8f
	.byte	0x30
	.uleb128 0x9
	.long	.LASF21
	.byte	0x4
	.value	0x102
	.long	0x8f
	.byte	0x38
	.uleb128 0x9
	.long	.LASF22
	.byte	0x4
	.value	0x103
	.long	0x8f
	.byte	0x40
	.uleb128 0x9
	.long	.LASF23
	.byte	0x4
	.value	0x105
	.long	0x8f
	.byte	0x48
	.uleb128 0x9
	.long	.LASF24
	.byte	0x4
	.value	0x106
	.long	0x8f
	.byte	0x50
	.uleb128 0x9
	.long	.LASF25
	.byte	0x4
	.value	0x107
	.long	0x8f
	.byte	0x58
	.uleb128 0x9
	.long	.LASF26
	.byte	0x4
	.value	0x109
	.long	0x263
	.byte	0x60
	.uleb128 0x9
	.long	.LASF27
	.byte	0x4
	.value	0x10b
	.long	0x269
	.byte	0x68
	.uleb128 0x9
	.long	.LASF28
	.byte	0x4
	.value	0x10d
	.long	0x3f
	.byte	0x70
	.uleb128 0x9
	.long	.LASF29
	.byte	0x4
	.value	0x111
	.long	0x3f
	.byte	0x74
	.uleb128 0x9
	.long	.LASF30
	.byte	0x4
	.value	0x113
	.long	0x70
	.byte	0x78
	.uleb128 0x9
	.long	.LASF31
	.byte	0x4
	.value	0x117
	.long	0x4d
	.byte	0x80
	.uleb128 0x9
	.long	.LASF32
	.byte	0x4
	.value	0x118
	.long	0x5b
	.byte	0x82
	.uleb128 0x9
	.long	.LASF33
	.byte	0x4
	.value	0x119
	.long	0x26f
	.byte	0x83
	.uleb128 0x9
	.long	.LASF34
	.byte	0x4
	.value	0x11d
	.long	0x27f
	.byte	0x88
	.uleb128 0x9
	.long	.LASF35
	.byte	0x4
	.value	0x126
	.long	0x7b
	.byte	0x90
	.uleb128 0x9
	.long	.LASF36
	.byte	0x4
	.value	0x12f
	.long	0x8d
	.byte	0x98
	.uleb128 0x9
	.long	.LASF37
	.byte	0x4
	.value	0x130
	.long	0x8d
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF38
	.byte	0x4
	.value	0x131
	.long	0x8d
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF39
	.byte	0x4
	.value	0x132
	.long	0x8d
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF40
	.byte	0x4
	.value	0x133
	.long	0x2d
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF41
	.byte	0x4
	.value	0x135
	.long	0x3f
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF42
	.byte	0x4
	.value	0x137
	.long	0x285
	.byte	0xc4
	.byte	0
	.uleb128 0xa
	.long	.LASF151
	.byte	0x4
	.byte	0x9b
	.uleb128 0x7
	.long	.LASF44
	.byte	0x18
	.byte	0x4
	.byte	0xa1
	.long	0x263
	.uleb128 0x8
	.long	.LASF45
	.byte	0x4
	.byte	0xa2
	.long	0x263
	.byte	0
	.uleb128 0x8
	.long	.LASF46
	.byte	0x4
	.byte	0xa3
	.long	0x269
	.byte	0x8
	.uleb128 0x8
	.long	.LASF47
	.byte	0x4
	.byte	0xa7
	.long	0x3f
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x232
	.uleb128 0x6
	.byte	0x8
	.long	0xaa
	.uleb128 0xb
	.long	0x95
	.long	0x27f
	.uleb128 0xc
	.long	0x86
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x22b
	.uleb128 0xb
	.long	0x95
	.long	0x295
	.uleb128 0xc
	.long	0x86
	.byte	0x13
	.byte	0
	.uleb128 0xd
	.byte	0x50
	.byte	0x5
	.byte	0xcc
	.long	0x32e
	.uleb128 0x8
	.long	.LASF48
	.byte	0x5
	.byte	0xcd
	.long	0x8f
	.byte	0
	.uleb128 0x8
	.long	.LASF49
	.byte	0x5
	.byte	0xce
	.long	0x54
	.byte	0x8
	.uleb128 0x8
	.long	.LASF50
	.byte	0x5
	.byte	0xcf
	.long	0x54
	.byte	0xc
	.uleb128 0x8
	.long	.LASF51
	.byte	0x5
	.byte	0xd0
	.long	0x54
	.byte	0x10
	.uleb128 0x8
	.long	.LASF52
	.byte	0x5
	.byte	0xd2
	.long	0x8f
	.byte	0x18
	.uleb128 0x8
	.long	.LASF53
	.byte	0x5
	.byte	0xd3
	.long	0x54
	.byte	0x20
	.uleb128 0x8
	.long	.LASF54
	.byte	0x5
	.byte	0xd4
	.long	0x54
	.byte	0x24
	.uleb128 0x8
	.long	.LASF55
	.byte	0x5
	.byte	0xd5
	.long	0x54
	.byte	0x28
	.uleb128 0x8
	.long	.LASF56
	.byte	0x5
	.byte	0xd7
	.long	0x8d
	.byte	0x30
	.uleb128 0x8
	.long	.LASF57
	.byte	0x5
	.byte	0xd9
	.long	0x347
	.byte	0x38
	.uleb128 0x8
	.long	.LASF58
	.byte	0x5
	.byte	0xda
	.long	0x35d
	.byte	0x40
	.uleb128 0x8
	.long	.LASF59
	.byte	0x5
	.byte	0xdb
	.long	0x8d
	.byte	0x48
	.byte	0
	.uleb128 0xe
	.long	0x8d
	.long	0x347
	.uleb128 0xf
	.long	0x8d
	.uleb128 0xf
	.long	0x3f
	.uleb128 0xf
	.long	0x3f
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x32e
	.uleb128 0x10
	.long	0x35d
	.uleb128 0xf
	.long	0x8d
	.uleb128 0xf
	.long	0x8d
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x34d
	.uleb128 0x2
	.long	.LASF60
	.byte	0x5
	.byte	0xdd
	.long	0x295
	.uleb128 0x2
	.long	.LASF61
	.byte	0x6
	.byte	0x52
	.long	0x46
	.uleb128 0x2
	.long	.LASF62
	.byte	0x6
	.byte	0x53
	.long	0x46
	.uleb128 0x2
	.long	.LASF63
	.byte	0x6
	.byte	0x54
	.long	0x3f
	.uleb128 0x2
	.long	.LASF64
	.byte	0x6
	.byte	0x55
	.long	0x54
	.uleb128 0x2
	.long	.LASF65
	.byte	0x6
	.byte	0x57
	.long	0x4d
	.uleb128 0x6
	.byte	0x8
	.long	0x363
	.uleb128 0x6
	.byte	0x8
	.long	0x38f
	.uleb128 0x6
	.byte	0x8
	.long	0x379
	.uleb128 0x6
	.byte	0x8
	.long	0x39a
	.uleb128 0xb
	.long	0x36e
	.long	0x3cd
	.uleb128 0xc
	.long	0x86
	.byte	0xff
	.byte	0
	.uleb128 0xb
	.long	0x379
	.long	0x3dd
	.uleb128 0xc
	.long	0x86
	.byte	0xff
	.byte	0
	.uleb128 0xb
	.long	0x379
	.long	0x3ee
	.uleb128 0x11
	.long	0x86
	.value	0x4651
	.byte	0
	.uleb128 0xb
	.long	0x379
	.long	0x405
	.uleb128 0xc
	.long	0x86
	.byte	0x5
	.uleb128 0x11
	.long	0x86
	.value	0x101
	.byte	0
	.uleb128 0xb
	.long	0x384
	.long	0x41c
	.uleb128 0xc
	.long	0x86
	.byte	0x5
	.uleb128 0x11
	.long	0x86
	.value	0x101
	.byte	0
	.uleb128 0x12
	.value	0xfa90
	.byte	0x6
	.value	0x17e
	.long	0x794
	.uleb128 0x9
	.long	.LASF66
	.byte	0x6
	.value	0x180
	.long	0x3a5
	.byte	0
	.uleb128 0x9
	.long	.LASF56
	.byte	0x6
	.value	0x183
	.long	0x384
	.byte	0x8
	.uleb128 0x9
	.long	.LASF67
	.byte	0x6
	.value	0x186
	.long	0x379
	.byte	0xc
	.uleb128 0x9
	.long	.LASF68
	.byte	0x6
	.value	0x187
	.long	0x384
	.byte	0x10
	.uleb128 0x9
	.long	.LASF69
	.byte	0x6
	.value	0x188
	.long	0x36e
	.byte	0x14
	.uleb128 0x9
	.long	.LASF70
	.byte	0x6
	.value	0x189
	.long	0x384
	.byte	0x18
	.uleb128 0x9
	.long	.LASF71
	.byte	0x6
	.value	0x189
	.long	0x384
	.byte	0x1c
	.uleb128 0x9
	.long	.LASF72
	.byte	0x6
	.value	0x18c
	.long	0x38f
	.byte	0x20
	.uleb128 0x9
	.long	.LASF73
	.byte	0x6
	.value	0x18d
	.long	0x384
	.byte	0x24
	.uleb128 0x9
	.long	.LASF74
	.byte	0x6
	.value	0x190
	.long	0x384
	.byte	0x28
	.uleb128 0x9
	.long	.LASF75
	.byte	0x6
	.value	0x191
	.long	0x36e
	.byte	0x2c
	.uleb128 0x9
	.long	.LASF76
	.byte	0x6
	.value	0x192
	.long	0x384
	.byte	0x30
	.uleb128 0x9
	.long	.LASF77
	.byte	0x6
	.value	0x193
	.long	0x384
	.byte	0x34
	.uleb128 0x9
	.long	.LASF78
	.byte	0x6
	.value	0x196
	.long	0x384
	.byte	0x38
	.uleb128 0x9
	.long	.LASF79
	.byte	0x6
	.value	0x197
	.long	0x38f
	.byte	0x3c
	.uleb128 0x13
	.string	"k0"
	.byte	0x6
	.value	0x198
	.long	0x384
	.byte	0x40
	.uleb128 0x9
	.long	.LASF80
	.byte	0x6
	.value	0x199
	.long	0x794
	.byte	0x44
	.uleb128 0x14
	.long	.LASF81
	.byte	0x6
	.value	0x19a
	.long	0x384
	.value	0x444
	.uleb128 0x14
	.long	.LASF82
	.byte	0x6
	.value	0x19b
	.long	0x7a4
	.value	0x448
	.uleb128 0x14
	.long	.LASF83
	.byte	0x6
	.value	0x19c
	.long	0x7a4
	.value	0x84c
	.uleb128 0x15
	.string	"tt"
	.byte	0x6
	.value	0x19f
	.long	0x3ab
	.value	0xc50
	.uleb128 0x14
	.long	.LASF84
	.byte	0x6
	.value	0x1a2
	.long	0x3b7
	.value	0xc58
	.uleb128 0x15
	.string	"ll4"
	.byte	0x6
	.value	0x1a3
	.long	0x3b1
	.value	0xc60
	.uleb128 0x14
	.long	.LASF85
	.byte	0x6
	.value	0x1a6
	.long	0x38f
	.value	0xc68
	.uleb128 0x14
	.long	.LASF86
	.byte	0x6
	.value	0x1a7
	.long	0x38f
	.value	0xc6c
	.uleb128 0x14
	.long	.LASF87
	.byte	0x6
	.value	0x1a8
	.long	0x38f
	.value	0xc70
	.uleb128 0x14
	.long	.LASF88
	.byte	0x6
	.value	0x1a9
	.long	0x38f
	.value	0xc74
	.uleb128 0x14
	.long	.LASF89
	.byte	0x6
	.value	0x1ac
	.long	0x384
	.value	0xc78
	.uleb128 0x14
	.long	.LASF90
	.byte	0x6
	.value	0x1ad
	.long	0x3bd
	.value	0xc7c
	.uleb128 0x14
	.long	.LASF91
	.byte	0x6
	.value	0x1ae
	.long	0x7b5
	.value	0xd7c
	.uleb128 0x14
	.long	.LASF92
	.byte	0x6
	.value	0x1af
	.long	0x3cd
	.value	0xd8c
	.uleb128 0x14
	.long	.LASF93
	.byte	0x6
	.value	0x1b2
	.long	0x7c5
	.value	0xe8c
	.uleb128 0x14
	.long	.LASF94
	.byte	0x6
	.value	0x1b3
	.long	0x7d6
	.value	0x1e8c
	.uleb128 0x14
	.long	.LASF95
	.byte	0x6
	.value	0x1b4
	.long	0x3dd
	.value	0x1ecc
	.uleb128 0x14
	.long	.LASF96
	.byte	0x6
	.value	0x1b5
	.long	0x3dd
	.value	0x651e
	.uleb128 0x15
	.string	"len"
	.byte	0x6
	.value	0x1b6
	.long	0x3ee
	.value	0xab70
	.uleb128 0x14
	.long	.LASF97
	.byte	0x6
	.value	0x1b8
	.long	0x405
	.value	0xb17c
	.uleb128 0x14
	.long	.LASF98
	.byte	0x6
	.value	0x1b9
	.long	0x405
	.value	0xc9ac
	.uleb128 0x14
	.long	.LASF99
	.byte	0x6
	.value	0x1ba
	.long	0x405
	.value	0xe1dc
	.uleb128 0x14
	.long	.LASF100
	.byte	0x6
	.value	0x1bb
	.long	0x7e6
	.value	0xfa0c
	.uleb128 0x14
	.long	.LASF101
	.byte	0x6
	.value	0x1be
	.long	0x384
	.value	0xfa24
	.uleb128 0x14
	.long	.LASF102
	.byte	0x6
	.value	0x1bf
	.long	0x384
	.value	0xfa28
	.uleb128 0x14
	.long	.LASF103
	.byte	0x6
	.value	0x1c0
	.long	0x384
	.value	0xfa2c
	.uleb128 0x14
	.long	.LASF104
	.byte	0x6
	.value	0x1c1
	.long	0x384
	.value	0xfa30
	.uleb128 0x14
	.long	.LASF105
	.byte	0x6
	.value	0x1c2
	.long	0x384
	.value	0xfa34
	.uleb128 0x14
	.long	.LASF106
	.byte	0x6
	.value	0x1c3
	.long	0x384
	.value	0xfa38
	.uleb128 0x14
	.long	.LASF107
	.byte	0x6
	.value	0x1c4
	.long	0x384
	.value	0xfa3c
	.uleb128 0x14
	.long	.LASF108
	.byte	0x6
	.value	0x1c5
	.long	0x384
	.value	0xfa40
	.uleb128 0x14
	.long	.LASF109
	.byte	0x6
	.value	0x1c6
	.long	0x384
	.value	0xfa44
	.uleb128 0x14
	.long	.LASF110
	.byte	0x6
	.value	0x1c7
	.long	0x384
	.value	0xfa48
	.uleb128 0x14
	.long	.LASF111
	.byte	0x6
	.value	0x1c8
	.long	0x384
	.value	0xfa4c
	.uleb128 0x14
	.long	.LASF112
	.byte	0x6
	.value	0x1c9
	.long	0x384
	.value	0xfa50
	.uleb128 0x14
	.long	.LASF113
	.byte	0x6
	.value	0x1ca
	.long	0x384
	.value	0xfa54
	.uleb128 0x14
	.long	.LASF114
	.byte	0x6
	.value	0x1cb
	.long	0x384
	.value	0xfa58
	.uleb128 0x14
	.long	.LASF115
	.byte	0x6
	.value	0x1cc
	.long	0x384
	.value	0xfa5c
	.uleb128 0x14
	.long	.LASF116
	.byte	0x6
	.value	0x1cd
	.long	0x384
	.value	0xfa60
	.uleb128 0x14
	.long	.LASF117
	.byte	0x6
	.value	0x1ce
	.long	0x384
	.value	0xfa64
	.uleb128 0x14
	.long	.LASF118
	.byte	0x6
	.value	0x1cf
	.long	0x384
	.value	0xfa68
	.uleb128 0x14
	.long	.LASF119
	.byte	0x6
	.value	0x1d0
	.long	0x384
	.value	0xfa6c
	.uleb128 0x14
	.long	.LASF120
	.byte	0x6
	.value	0x1d1
	.long	0x384
	.value	0xfa70
	.uleb128 0x14
	.long	.LASF121
	.byte	0x6
	.value	0x1d2
	.long	0x384
	.value	0xfa74
	.uleb128 0x14
	.long	.LASF122
	.byte	0x6
	.value	0x1d3
	.long	0x7f6
	.value	0xfa78
	.uleb128 0x14
	.long	.LASF123
	.byte	0x6
	.value	0x1d4
	.long	0x7f6
	.value	0xfa80
	.uleb128 0x14
	.long	.LASF124
	.byte	0x6
	.value	0x1d5
	.long	0x7f6
	.value	0xfa88
	.byte	0
	.uleb128 0xb
	.long	0x384
	.long	0x7a4
	.uleb128 0xc
	.long	0x86
	.byte	0xff
	.byte	0
	.uleb128 0xb
	.long	0x384
	.long	0x7b5
	.uleb128 0x11
	.long	0x86
	.value	0x100
	.byte	0
	.uleb128 0xb
	.long	0x36e
	.long	0x7c5
	.uleb128 0xc
	.long	0x86
	.byte	0xf
	.byte	0
	.uleb128 0xb
	.long	0x379
	.long	0x7d6
	.uleb128 0x11
	.long	0x86
	.value	0xfff
	.byte	0
	.uleb128 0xb
	.long	0x384
	.long	0x7e6
	.uleb128 0xc
	.long	0x86
	.byte	0xf
	.byte	0
	.uleb128 0xb
	.long	0x384
	.long	0x7f6
	.uleb128 0xc
	.long	0x86
	.byte	0x5
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x384
	.uleb128 0x16
	.long	.LASF125
	.byte	0x6
	.value	0x1d8
	.long	0x41c
	.uleb128 0x17
	.long	.LASF152
	.byte	0x1
	.byte	0x43
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x83e
	.uleb128 0x18
	.string	"s"
	.byte	0x1
	.byte	0x43
	.long	0x83e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.byte	0x45
	.long	0x384
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x7fc
	.uleb128 0x1a
	.long	.LASF153
	.byte	0x1
	.byte	0x92
	.long	0x384
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x1140
	.uleb128 0x18
	.string	"s"
	.byte	0x1
	.byte	0x92
	.long	0x83e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -408
	.uleb128 0x19
	.string	"uc"
	.byte	0x1
	.byte	0x94
	.long	0x379
	.uleb128 0x3
	.byte	0x91
	.sleb128 -391
	.uleb128 0x1b
	.long	.LASF126
	.byte	0x1
	.byte	0x95
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -388
	.uleb128 0x1b
	.long	.LASF127
	.byte	0x1
	.byte	0x96
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -384
	.uleb128 0x1b
	.long	.LASF128
	.byte	0x1
	.byte	0x96
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -380
	.uleb128 0x1b
	.long	.LASF66
	.byte	0x1
	.byte	0x97
	.long	0x3a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.byte	0x9a
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -376
	.uleb128 0x19
	.string	"j"
	.byte	0x1
	.byte	0x9b
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -372
	.uleb128 0x19
	.string	"t"
	.byte	0x1
	.byte	0x9c
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -368
	.uleb128 0x1b
	.long	.LASF129
	.byte	0x1
	.byte	0x9d
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -364
	.uleb128 0x1b
	.long	.LASF130
	.byte	0x1
	.byte	0x9e
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -360
	.uleb128 0x1b
	.long	.LASF131
	.byte	0x1
	.byte	0x9f
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -356
	.uleb128 0x19
	.string	"EOB"
	.byte	0x1
	.byte	0xa0
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x1b
	.long	.LASF132
	.byte	0x1
	.byte	0xa1
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -348
	.uleb128 0x1b
	.long	.LASF133
	.byte	0x1
	.byte	0xa2
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x1b
	.long	.LASF134
	.byte	0x1
	.byte	0xa3
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -340
	.uleb128 0x1b
	.long	.LASF135
	.byte	0x1
	.byte	0xa4
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x1b
	.long	.LASF136
	.byte	0x1
	.byte	0xa5
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -332
	.uleb128 0x19
	.string	"es"
	.byte	0x1
	.byte	0xa6
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x19
	.string	"N"
	.byte	0x1
	.byte	0xa7
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -324
	.uleb128 0x1b
	.long	.LASF137
	.byte	0x1
	.byte	0xa8
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x19
	.string	"zt"
	.byte	0x1
	.byte	0xa9
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -260
	.uleb128 0x19
	.string	"zn"
	.byte	0x1
	.byte	0xaa
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -316
	.uleb128 0x1b
	.long	.LASF138
	.byte	0x1
	.byte	0xab
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x19
	.string	"zj"
	.byte	0x1
	.byte	0xac
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -308
	.uleb128 0x1b
	.long	.LASF139
	.byte	0x1
	.byte	0xad
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x1b
	.long	.LASF140
	.byte	0x1
	.byte	0xae
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -300
	.uleb128 0x1b
	.long	.LASF141
	.byte	0x1
	.byte	0xaf
	.long	0x7f6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1b
	.long	.LASF142
	.byte	0x1
	.byte	0xb0
	.long	0x7f6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1b
	.long	.LASF143
	.byte	0x1
	.byte	0xb1
	.long	0x7f6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1c
	.long	.LASF144
	.byte	0x1
	.value	0x279
	.quad	.L53
	.uleb128 0x1c
	.long	.LASF145
	.byte	0x1
	.value	0x25a
	.quad	.L41
	.uleb128 0x1d
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0xa59
	.uleb128 0x19
	.string	"v"
	.byte	0x1
	.byte	0xed
	.long	0x38f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.byte	0
	.uleb128 0x1d
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.long	0xa7c
	.uleb128 0x19
	.string	"v"
	.byte	0x1
	.byte	0xf0
	.long	0x38f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -252
	.byte	0
	.uleb128 0x1d
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.long	0xa9f
	.uleb128 0x19
	.string	"v"
	.byte	0x1
	.byte	0xf3
	.long	0x38f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.byte	0
	.uleb128 0x1d
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.long	0xac2
	.uleb128 0x19
	.string	"v"
	.byte	0x1
	.byte	0xf6
	.long	0x38f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -244
	.byte	0
	.uleb128 0x1d
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.long	0xae6
	.uleb128 0x1e
	.string	"v"
	.byte	0x1
	.value	0x106
	.long	0x38f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.byte	0
	.uleb128 0x1d
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.long	0xb0a
	.uleb128 0x1e
	.string	"v"
	.byte	0x1
	.value	0x10a
	.long	0x38f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -236
	.byte	0
	.uleb128 0x1d
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.long	0xb2e
	.uleb128 0x1e
	.string	"v"
	.byte	0x1
	.value	0x10c
	.long	0x38f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.byte	0
	.uleb128 0x1d
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.long	0xb52
	.uleb128 0x1e
	.string	"v"
	.byte	0x1
	.value	0x10e
	.long	0x38f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -228
	.byte	0
	.uleb128 0x1d
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.long	0xb76
	.uleb128 0x1e
	.string	"v"
	.byte	0x1
	.value	0x110
	.long	0x38f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.byte	0
	.uleb128 0x1d
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.long	0xb9a
	.uleb128 0x1e
	.string	"v"
	.byte	0x1
	.value	0x112
	.long	0x38f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -220
	.byte	0
	.uleb128 0x1d
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.long	0xbbe
	.uleb128 0x1e
	.string	"v"
	.byte	0x1
	.value	0x11a
	.long	0x38f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.byte	0
	.uleb128 0x1d
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.long	0xbe2
	.uleb128 0x1e
	.string	"v"
	.byte	0x1
	.value	0x11c
	.long	0x38f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -212
	.byte	0
	.uleb128 0x1d
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.long	0xc06
	.uleb128 0x1e
	.string	"v"
	.byte	0x1
	.value	0x11e
	.long	0x38f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.byte	0
	.uleb128 0x1d
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.long	0xc2a
	.uleb128 0x1e
	.string	"v"
	.byte	0x1
	.value	0x120
	.long	0x38f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -204
	.byte	0
	.uleb128 0x1d
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.long	0xc4e
	.uleb128 0x1e
	.string	"v"
	.byte	0x1
	.value	0x123
	.long	0x38f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.byte	0
	.uleb128 0x1d
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.long	0xc72
	.uleb128 0x1e
	.string	"v"
	.byte	0x1
	.value	0x126
	.long	0x38f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -196
	.byte	0
	.uleb128 0x1d
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.long	0xc96
	.uleb128 0x1e
	.string	"v"
	.byte	0x1
	.value	0x128
	.long	0x38f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.byte	0
	.uleb128 0x1d
	.quad	.LBB19
	.quad	.LBE19-.LBB19
	.long	0xcba
	.uleb128 0x1e
	.string	"v"
	.byte	0x1
	.value	0x12a
	.long	0x38f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -188
	.byte	0
	.uleb128 0x1d
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.long	0xcde
	.uleb128 0x1e
	.string	"v"
	.byte	0x1
	.value	0x134
	.long	0x38f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.byte	0
	.uleb128 0x1d
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.long	0xd02
	.uleb128 0x1e
	.string	"v"
	.byte	0x1
	.value	0x13f
	.long	0x38f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x1d
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.long	0xd26
	.uleb128 0x1e
	.string	"v"
	.byte	0x1
	.value	0x147
	.long	0x38f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.byte	0
	.uleb128 0x1d
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.long	0xd4a
	.uleb128 0x1e
	.string	"v"
	.byte	0x1
	.value	0x149
	.long	0x38f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.uleb128 0x1d
	.quad	.LBB24
	.quad	.LBE24-.LBB24
	.long	0xd6e
	.uleb128 0x1e
	.string	"v"
	.byte	0x1
	.value	0x14e
	.long	0x38f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.uleb128 0x1d
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.long	0xdb1
	.uleb128 0x1e
	.string	"pos"
	.byte	0x1
	.value	0x158
	.long	0x1140
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.string	"tmp"
	.byte	0x1
	.value	0x158
	.long	0x379
	.uleb128 0x3
	.byte	0x91
	.sleb128 -389
	.uleb128 0x1e
	.string	"v"
	.byte	0x1
	.value	0x158
	.long	0x379
	.uleb128 0x3
	.byte	0x91
	.sleb128 -390
	.byte	0
	.uleb128 0x1d
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.long	0xdd5
	.uleb128 0x1e
	.string	"v"
	.byte	0x1
	.value	0x166
	.long	0x38f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.byte	0
	.uleb128 0x1d
	.quad	.LBB27
	.quad	.LBE27-.LBB27
	.long	0xdf9
	.uleb128 0x1e
	.string	"v"
	.byte	0x1
	.value	0x16a
	.long	0x38f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.byte	0
	.uleb128 0x1d
	.quad	.LBB28
	.quad	.LBE28-.LBB28
	.long	0xe1d
	.uleb128 0x1e
	.string	"v"
	.byte	0x1
	.value	0x16c
	.long	0x38f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.byte	0
	.uleb128 0x1d
	.quad	.LBB29
	.quad	.LBE29-.LBB29
	.long	0xe60
	.uleb128 0x1e
	.string	"ii"
	.byte	0x1
	.value	0x190
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x1e
	.string	"jj"
	.byte	0x1
	.value	0x190
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -292
	.uleb128 0x1e
	.string	"kk"
	.byte	0x1
	.value	0x190
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.byte	0
	.uleb128 0x1d
	.quad	.LBB30
	.quad	.LBE30-.LBB30
	.long	0xe84
	.uleb128 0x1e
	.string	"v"
	.byte	0x1
	.value	0x19d
	.long	0x38f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.byte	0
	.uleb128 0x1d
	.quad	.LBB31
	.quad	.LBE31-.LBB31
	.long	0xea8
	.uleb128 0x1e
	.string	"v"
	.byte	0x1
	.value	0x19d
	.long	0x38f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.byte	0
	.uleb128 0x1d
	.quad	.LBB32
	.quad	.LBE32-.LBB32
	.long	0xecc
	.uleb128 0x1e
	.string	"v"
	.byte	0x1
	.value	0x1ab
	.long	0x38f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x1d
	.quad	.LBB33
	.quad	.LBE33-.LBB33
	.long	0xef0
	.uleb128 0x1e
	.string	"v"
	.byte	0x1
	.value	0x1ab
	.long	0x38f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.byte	0
	.uleb128 0x1d
	.quad	.LBB34
	.quad	.LBE34-.LBB34
	.long	0xf91
	.uleb128 0x1e
	.string	"ii"
	.byte	0x1
	.value	0x1ca
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -284
	.uleb128 0x1e
	.string	"jj"
	.byte	0x1
	.value	0x1ca
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x1e
	.string	"kk"
	.byte	0x1
	.value	0x1ca
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -276
	.uleb128 0x1e
	.string	"pp"
	.byte	0x1
	.value	0x1ca
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x1e
	.string	"lno"
	.byte	0x1
	.value	0x1ca
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -268
	.uleb128 0x1e
	.string	"off"
	.byte	0x1
	.value	0x1ca
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x1e
	.string	"nn"
	.byte	0x1
	.value	0x1cb
	.long	0x38f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x1f
	.quad	.LBB35
	.quad	.LBE35-.LBB35
	.uleb128 0x1e
	.string	"z"
	.byte	0x1
	.value	0x1d3
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.byte	0
	.byte	0
	.uleb128 0x1d
	.quad	.LBB36
	.quad	.LBE36-.LBB36
	.long	0xfb5
	.uleb128 0x1e
	.string	"v"
	.byte	0x1
	.value	0x204
	.long	0x38f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.byte	0
	.uleb128 0x1d
	.quad	.LBB37
	.quad	.LBE37-.LBB37
	.long	0xfd9
	.uleb128 0x1e
	.string	"v"
	.byte	0x1
	.value	0x204
	.long	0x38f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.byte	0
	.uleb128 0x1d
	.quad	.LBB38
	.quad	.LBE38-.LBB38
	.long	0xfff
	.uleb128 0x1e
	.string	"tmp"
	.byte	0x1
	.value	0x230
	.long	0x384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.byte	0
	.uleb128 0x1d
	.quad	.LBB39
	.quad	.LBE39-.LBB39
	.long	0x1023
	.uleb128 0x1e
	.string	"v"
	.byte	0x1
	.value	0x25c
	.long	0x38f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.byte	0
	.uleb128 0x1d
	.quad	.LBB40
	.quad	.LBE40-.LBB40
	.long	0x1047
	.uleb128 0x1e
	.string	"v"
	.byte	0x1
	.value	0x25e
	.long	0x38f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.byte	0
	.uleb128 0x1d
	.quad	.LBB41
	.quad	.LBE41-.LBB41
	.long	0x106b
	.uleb128 0x1e
	.string	"v"
	.byte	0x1
	.value	0x260
	.long	0x38f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.byte	0
	.uleb128 0x1d
	.quad	.LBB42
	.quad	.LBE42-.LBB42
	.long	0x108f
	.uleb128 0x1e
	.string	"v"
	.byte	0x1
	.value	0x262
	.long	0x38f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -172
	.byte	0
	.uleb128 0x1d
	.quad	.LBB43
	.quad	.LBE43-.LBB43
	.long	0x10b3
	.uleb128 0x1e
	.string	"v"
	.byte	0x1
	.value	0x264
	.long	0x38f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0x1d
	.quad	.LBB44
	.quad	.LBE44-.LBB44
	.long	0x10d7
	.uleb128 0x1e
	.string	"v"
	.byte	0x1
	.value	0x268
	.long	0x38f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.byte	0
	.uleb128 0x1d
	.quad	.LBB45
	.quad	.LBE45-.LBB45
	.long	0x10fb
	.uleb128 0x1e
	.string	"v"
	.byte	0x1
	.value	0x26a
	.long	0x38f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.byte	0
	.uleb128 0x1d
	.quad	.LBB46
	.quad	.LBE46-.LBB46
	.long	0x111f
	.uleb128 0x1e
	.string	"v"
	.byte	0x1
	.value	0x26c
	.long	0x38f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.byte	0
	.uleb128 0x1f
	.quad	.LBB47
	.quad	.LBE47-.LBB47
	.uleb128 0x1e
	.string	"v"
	.byte	0x1
	.value	0x26e
	.long	0x38f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x379
	.long	0x1150
	.uleb128 0xc
	.long	0x86
	.byte	0x5
	.byte	0
	.uleb128 0x20
	.long	.LASF146
	.byte	0x7
	.byte	0xaa
	.long	0x269
	.uleb128 0xb
	.long	0x384
	.long	0x116c
	.uleb128 0x11
	.long	0x86
	.value	0x1ff
	.byte	0
	.uleb128 0x20
	.long	.LASF147
	.byte	0x6
	.byte	0xa5
	.long	0x115b
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
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
.LASF105:
	.string	"save_nGroups"
.LASF67:
	.string	"state_out_ch"
.LASF147:
	.string	"BZ2_rNums"
.LASF118:
	.string	"save_zvec"
.LASF33:
	.string	"_shortbuf"
.LASF151:
	.string	"_IO_lock_t"
.LASF51:
	.string	"total_in_hi32"
.LASF146:
	.string	"stderr"
.LASF22:
	.string	"_IO_buf_end"
.LASF73:
	.string	"bsLive"
.LASF149:
	.string	"decompress.c"
.LASF61:
	.string	"Bool"
.LASF58:
	.string	"bzfree"
.LASF20:
	.string	"_IO_write_end"
.LASF3:
	.string	"unsigned int"
.LASF80:
	.string	"unzftab"
.LASF14:
	.string	"_flags"
.LASF108:
	.string	"save_groupNo"
.LASF26:
	.string	"_markers"
.LASF109:
	.string	"save_groupPos"
.LASF97:
	.string	"limit"
.LASF140:
	.string	"gMinlen"
.LASF85:
	.string	"storedBlockCRC"
.LASF90:
	.string	"inUse"
.LASF120:
	.string	"save_gSel"
.LASF47:
	.string	"_pos"
.LASF59:
	.string	"opaque"
.LASF25:
	.string	"_IO_save_end"
.LASF141:
	.string	"gLimit"
.LASF115:
	.string	"save_curr"
.LASF65:
	.string	"UInt16"
.LASF117:
	.string	"save_zn"
.LASF98:
	.string	"base"
.LASF116:
	.string	"save_zt"
.LASF87:
	.string	"calculatedBlockCRC"
.LASF13:
	.string	"long long unsigned int"
.LASF131:
	.string	"nSelectors"
.LASF93:
	.string	"mtfa"
.LASF142:
	.string	"gBase"
.LASF96:
	.string	"selectorMtf"
.LASF123:
	.string	"save_gBase"
.LASF95:
	.string	"selector"
.LASF24:
	.string	"_IO_backup_base"
.LASF35:
	.string	"_offset"
.LASF28:
	.string	"_fileno"
.LASF53:
	.string	"avail_out"
.LASF7:
	.string	"size_t"
.LASF129:
	.string	"alphaSize"
.LASF17:
	.string	"_IO_read_base"
.LASF130:
	.string	"nGroups"
.LASF64:
	.string	"UInt32"
.LASF45:
	.string	"_next"
.LASF99:
	.string	"perm"
.LASF101:
	.string	"save_i"
.LASF138:
	.string	"zvec"
.LASF69:
	.string	"blockRandomised"
.LASF63:
	.string	"Int32"
.LASF66:
	.string	"strm"
.LASF11:
	.string	"char"
.LASF132:
	.string	"groupNo"
.LASF41:
	.string	"_mode"
.LASF44:
	.string	"_IO_marker"
.LASF122:
	.string	"save_gLimit"
.LASF15:
	.string	"_IO_read_ptr"
.LASF111:
	.string	"save_nblockMAX"
.LASF152:
	.string	"makeMaps_d"
.LASF79:
	.string	"tPos"
.LASF18:
	.string	"_IO_write_base"
.LASF12:
	.string	"long long int"
.LASF23:
	.string	"_IO_save_base"
.LASF52:
	.string	"next_out"
.LASF89:
	.string	"nInUse"
.LASF77:
	.string	"verbosity"
.LASF133:
	.string	"groupPos"
.LASF70:
	.string	"rNToGo"
.LASF36:
	.string	"__pad1"
.LASF37:
	.string	"__pad2"
.LASF38:
	.string	"__pad3"
.LASF39:
	.string	"__pad4"
.LASF40:
	.string	"__pad5"
.LASF32:
	.string	"_vtable_offset"
.LASF55:
	.string	"total_out_hi32"
.LASF74:
	.string	"blockSize100k"
.LASF94:
	.string	"mtfbase"
.LASF121:
	.string	"save_gMinlen"
.LASF144:
	.string	"save_state_and_return"
.LASF78:
	.string	"origPtr"
.LASF139:
	.string	"gSel"
.LASF148:
	.string	"GNU C 4.8.1 -mtune=generic -march=x86-64 -g -fno-strict-aliasing -fstack-protector"
.LASF16:
	.string	"_IO_read_end"
.LASF5:
	.string	"short int"
.LASF110:
	.string	"save_nextSym"
.LASF91:
	.string	"inUse16"
.LASF137:
	.string	"curr"
.LASF6:
	.string	"long int"
.LASF48:
	.string	"next_in"
.LASF135:
	.string	"nblockMAX"
.LASF100:
	.string	"minLens"
.LASF153:
	.string	"BZ2_decompress"
.LASF71:
	.string	"rTPos"
.LASF150:
	.string	"/home/yunqi/SPEC2006/benchspec/CPU2006/401.bzip2/build/build_base_amd64-m64-gcc43-nn.0000"
.LASF62:
	.string	"UChar"
.LASF127:
	.string	"minLen"
.LASF50:
	.string	"total_in_lo32"
.LASF92:
	.string	"seqToUnseq"
.LASF106:
	.string	"save_nSelectors"
.LASF57:
	.string	"bzalloc"
.LASF68:
	.string	"state_out_len"
.LASF114:
	.string	"save_N"
.LASF82:
	.string	"cftab"
.LASF34:
	.string	"_lock"
.LASF10:
	.string	"sizetype"
.LASF112:
	.string	"save_nblock"
.LASF49:
	.string	"avail_in"
.LASF0:
	.string	"long unsigned int"
.LASF126:
	.string	"retVal"
.LASF30:
	.string	"_old_offset"
.LASF102:
	.string	"save_j"
.LASF43:
	.string	"_IO_FILE"
.LASF103:
	.string	"save_t"
.LASF128:
	.string	"maxLen"
.LASF75:
	.string	"smallDecompress"
.LASF76:
	.string	"currBlockNo"
.LASF1:
	.string	"unsigned char"
.LASF119:
	.string	"save_zj"
.LASF46:
	.string	"_sbuf"
.LASF19:
	.string	"_IO_write_ptr"
.LASF113:
	.string	"save_es"
.LASF143:
	.string	"gPerm"
.LASF124:
	.string	"save_gPerm"
.LASF56:
	.string	"state"
.LASF125:
	.string	"DState"
.LASF8:
	.string	"__off_t"
.LASF4:
	.string	"signed char"
.LASF60:
	.string	"bz_stream"
.LASF83:
	.string	"cftabCopy"
.LASF2:
	.string	"short unsigned int"
.LASF136:
	.string	"nblock"
.LASF145:
	.string	"endhdr_2"
.LASF54:
	.string	"total_out_lo32"
.LASF86:
	.string	"storedCombinedCRC"
.LASF27:
	.string	"_chain"
.LASF29:
	.string	"_flags2"
.LASF88:
	.string	"calculatedCombinedCRC"
.LASF104:
	.string	"save_alphaSize"
.LASF31:
	.string	"_cur_column"
.LASF134:
	.string	"nextSym"
.LASF84:
	.string	"ll16"
.LASF107:
	.string	"save_EOB"
.LASF9:
	.string	"__off64_t"
.LASF42:
	.string	"_unused2"
.LASF21:
	.string	"_IO_buf_base"
.LASF72:
	.string	"bsBuff"
.LASF81:
	.string	"nblock_used"
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
