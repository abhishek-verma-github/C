	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 15	sdk_version 10, 15
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function main
LCPI0_0:
	.quad	4696837146684686336     ## double 1.0E+6
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4
LCPI0_1:
	.long	1127219200              ## 0x43300000
	.long	1160773632              ## 0x45300000
	.long	0                       ## 0x0
	.long	0                       ## 0x0
LCPI0_2:
	.quad	4841369599423283200     ## double 4503599627370496
	.quad	4985484787499139072     ## double 1.9342813113834067E+25
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movsd	LCPI0_0(%rip), %xmm0    ## xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)        ## 8-byte Spill
	callq	_clock
	movq	%rax, -8(%rbp)
	movl	_N(%rip), %edi
	callq	_dfib
	movl	%eax, -20(%rbp)
	callq	_clock
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, %xmm0
	movaps	LCPI0_1(%rip), %xmm1    ## xmm1 = [1127219200,1160773632,0,0]
	punpckldq	%xmm1, %xmm0    ## xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	movapd	LCPI0_2(%rip), %xmm2    ## xmm2 = [4.503599627370496E+15,1.9342813113834067E+25]
	subpd	%xmm2, %xmm0
	haddpd	%xmm0, %xmm0
	movsd	LCPI0_0(%rip), %xmm3    ## xmm3 = mem[0],zero
	divsd	%xmm3, %xmm0
	movsd	%xmm0, -32(%rbp)
	movl	_N(%rip), %esi
	movl	-20(%rbp), %edx
	movsd	-32(%rbp), %xmm0        ## xmm0 = mem[0],zero
	leaq	L_.str(%rip), %rdi
	movb	$1, %al
	movaps	%xmm1, -80(%rbp)        ## 16-byte Spill
	movaps	%xmm2, -96(%rbp)        ## 16-byte Spill
	callq	_printf
	movl	%eax, -100(%rbp)        ## 4-byte Spill
	callq	_clock
	movq	%rax, -8(%rbp)
	movl	_N(%rip), %edi
	callq	_fib
	movl	%eax, -36(%rbp)
	callq	_clock
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, %xmm0
	movaps	-80(%rbp), %xmm1        ## 16-byte Reload
	punpckldq	%xmm1, %xmm0    ## xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	movaps	-96(%rbp), %xmm2        ## 16-byte Reload
	subpd	%xmm2, %xmm0
	haddpd	%xmm0, %xmm0
	movsd	-56(%rbp), %xmm3        ## 8-byte Reload
                                        ## xmm3 = mem[0],zero
	divsd	%xmm3, %xmm0
	movsd	%xmm0, -48(%rbp)
	movl	_N(%rip), %esi
	movl	-20(%rbp), %edx
	movsd	-48(%rbp), %xmm0        ## xmm0 = mem[0],zero
	leaq	L_.str(%rip), %rdi
	movb	$1, %al
	callq	_printf
	xorl	%edx, %edx
	movl	%eax, -104(%rbp)        ## 4-byte Spill
	movl	%edx, %eax
	addq	$112, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_fib                    ## -- Begin function fib
	.p2align	4, 0x90
_fib:                                   ## @fib
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -8(%rbp)
	cmpl	$2, -8(%rbp)
	jge	LBB1_2
## %bb.1:
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	LBB1_3
LBB1_2:
	movl	-8(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %edi
	callq	_fib
	movl	-8(%rbp), %edi
	subl	$2, %edi
	movl	%eax, -12(%rbp)         ## 4-byte Spill
	callq	_fib
	movl	-12(%rbp), %edi         ## 4-byte Reload
	addl	%eax, %edi
	movl	%edi, -4(%rbp)
LBB1_3:
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_dfib                   ## -- Begin function dfib
	.p2align	4, 0x90
_dfib:                                  ## @dfib
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movl	%edi, -12(%rbp)
	movl	-12(%rbp), %edi
	addl	$2, %edi
	movl	%edi, %eax
	movq	%rsp, %rcx
	movq	%rcx, -24(%rbp)
	leaq	15(,%rax,4), %rcx
	andq	$-16, %rcx
	movq	%rax, -48(%rbp)         ## 8-byte Spill
	movq	%rcx, %rax
	callq	____chkstk_darwin
	subq	%rax, %rsp
	movq	%rsp, %rax
	movq	-48(%rbp), %rcx         ## 8-byte Reload
	movq	%rcx, -32(%rbp)
	movl	$0, (%rax)
	movl	$1, 4(%rax)
	movl	$2, -36(%rbp)
	movq	%rax, -56(%rbp)         ## 8-byte Spill
LBB2_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-36(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-56(%rbp), %rdx         ## 8-byte Reload
	movl	(%rdx,%rcx,4), %eax
	movl	-36(%rbp), %esi
	subl	$2, %esi
	movslq	%esi, %rcx
	addl	(%rdx,%rcx,4), %eax
	movslq	-36(%rbp), %rcx
	movl	%eax, (%rdx,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	LBB2_1
LBB2_4:
	movslq	-12(%rbp), %rax
	movq	-56(%rbp), %rcx         ## 8-byte Reload
	movl	(%rcx,%rax,4), %eax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsp
	movq	___stack_chk_guard@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rdx
	movq	-8(%rbp), %rsi
	cmpq	%rsi, %rdx
	movl	%eax, -60(%rbp)         ## 4-byte Spill
	jne	LBB2_6
## %bb.5:
	movl	-60(%rbp), %eax         ## 4-byte Reload
	movq	%rbp, %rsp
	popq	%rbp
	retq
LBB2_6:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__DATA,__data
	.globl	_N                      ## @N
	.p2align	2
_N:
	.long	40                      ## 0x28

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d th fibonacci number : %d [time-taken]: %f sec\n"


.subsections_via_symbols
