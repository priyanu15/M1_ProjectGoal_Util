	.file	"taxcalculator.c"
	.text
	.section	.rodata
.LC0:
	.string	"\n\n\nInput your annual income:\t"
.LC1:
	.string	"%lf"
.LC16:
	.string	"\n\n\nYour tax is:\t%0.2lf \n\n\n"
	.align 8
.LC17:
	.string	"Input Q or q to exit. Input any other character to continue: "
.LC18:
	.string	"%c"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movb	$32, -25(%rbp)
	jmp	.L2
.L13:
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-24(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movsd	-24(%rbp), %xmm1
	movsd	.LC2(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	.LC3(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	-24(%rbp), %xmm1
	movsd	.LC4(%rip), %xmm0
	comisd	%xmm1, %xmm0
	jb	.L20
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L5
.L20:
	movsd	-24(%rbp), %xmm1
	movsd	.LC6(%rip), %xmm0
	comisd	%xmm1, %xmm0
	jb	.L21
	movsd	-24(%rbp), %xmm0
	movsd	.LC4(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	movsd	.LC7(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	.LC3(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L5
.L21:
	movsd	-24(%rbp), %xmm1
	movsd	.LC8(%rip), %xmm0
	comisd	%xmm1, %xmm0
	jb	.L22
	movsd	-24(%rbp), %xmm0
	movsd	.LC6(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	movsd	.LC9(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	.LC3(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	movsd	.LC10(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L5
.L22:
	movsd	-24(%rbp), %xmm1
	movsd	.LC11(%rip), %xmm0
	comisd	%xmm1, %xmm0
	jb	.L23
	movsd	-24(%rbp), %xmm0
	movsd	.LC8(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	movsd	.LC12(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	.LC3(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	movsd	.LC13(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L5
.L23:
	movsd	-24(%rbp), %xmm0
	movsd	.LC11(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	movsd	.LC14(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	.LC3(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	movsd	.LC15(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
.L5:
	movq	-16(%rbp), %rax
	movq	%rax, %xmm0
	leaq	.LC16(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	call	getchar@PLT
	leaq	.LC17(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-25(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC18(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
.L2:
	movzbl	-25(%rbp), %eax
	cmpb	$113, %al
	je	.L12
	movzbl	-25(%rbp), %eax
	cmpb	$81, %al
	jne	.L13
.L12:
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L15
	call	__stack_chk_fail@PLT
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC2:
	.long	0
	.long	1079083008
	.align 8
.LC3:
	.long	0
	.long	1079574528
	.align 8
.LC4:
	.long	0
	.long	1091470464
	.align 8
.LC6:
	.long	0
	.long	1092867616
	.align 8
.LC7:
	.long	0
	.long	1076101120
	.align 8
.LC8:
	.long	0
	.long	1093766192
	.align 8
.LC9:
	.long	0
	.long	1076756480
	.align 8
.LC10:
	.long	0
	.long	1088653312
	.align 8
.LC11:
	.long	0
	.long	1094739768
	.align 8
.LC12:
	.long	0
	.long	1077149696
	.align 8
.LC13:
	.long	0
	.long	1090261888
	.align 8
.LC14:
	.long	0
	.long	1077477376
	.align 8
.LC15:
	.long	0
	.long	1091779040
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
