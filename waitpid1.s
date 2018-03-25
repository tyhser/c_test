	.file	"waitpid1.c"
	.section	.rodata
.LC0:
	.string	"%s: %s\n"
	.text
	.globl	unix_error
	.type	unix_error, @function
unix_error:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	__errno_location
	movl	(%rax), %eax
	movl	%eax, %edi
	call	strerror
	movq	%rax, %rcx
	movq	stderr(%rip), %rax
	movq	-8(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movl	$0, %edi
	call	exit
	.cfi_endproc
.LFE2:
	.size	unix_error, .-unix_error
	.section	.rodata
	.align 8
.LC1:
	.string	"child %d terminated normally with exit status=%d\n"
	.align 8
.LC2:
	.string	"child %d terminated abnormally\n"
.LC3:
	.string	"waitpid error"
	.text
	.globl	main
	.type	main, @function
main:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -16(%rbp)
	jmp	.L3
.L5:
	call	fork
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.L4
	movl	-16(%rbp), %eax
	addl	$100, %eax
	movl	%eax, %edi
	call	exit
.L4:
	addl	$1, -16(%rbp)
.L3:
	cmpl	$111, -16(%rbp)
	jle	.L5
	jmp	.L6
.L8:
	movl	-20(%rbp), %eax
	movl	%eax, -48(%rbp)
	movl	-48(%rbp), %eax
	andl	$127, %eax
	testl	%eax, %eax
	jne	.L7
	movl	-20(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %eax
	andl	$65280, %eax
	sarl	$8, %eax
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	jmp	.L6
.L7:
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
.L6:
	leaq	-20(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$-1, %edi
	call	waitpid
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jg	.L8
	call	__errno_location
	movl	(%rax), %eax
	cmpl	$10, %eax
	je	.L9
	movl	$.LC3, %edi
	call	unix_error
.L9:
	movl	$0, %edi
	call	exit
	.cfi_endproc
.LFE3:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.9) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
