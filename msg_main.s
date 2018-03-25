	.file	"msg_main.c"
	.globl	msg
	.data
	.align 8
	.type	msg, @object
	.size	msg, 14
msg:
	.ascii	"Hello, world!\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$14, %edx
	movl	$msg, %esi
	movl	$1, %edi
	call	write
	movl	$0, %edi
	call	_exit
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.9) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
