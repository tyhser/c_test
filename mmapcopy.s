	.file	"mmapcopy.c"
	.text
.Ltext0:
	.section	.rodata
.LC0:
	.string	"error!"
.LC1:
	.string	"mmapcopy"
.LC2:
	.string	"%s: %s\n"
.LC3:
	.string	"%ld"
	.text
	.globl	main
	.type	main, @function
main:
.LFB2:
	.file 1 "mmapcopy.c"
	.loc 1 4 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$192, %rsp
	movl	%edi, -180(%rbp)
	movq	%rsi, -192(%rbp)
	.loc 1 4 0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 8 0
	cmpl	$2, -180(%rbp)
	je	.L2
	.loc 1 10 0
	movl	$.LC0, %edi
	call	puts
	.loc 1 11 0
	movl	$0, %edi
	call	exit
.L2:
	.loc 1 13 0
	movq	-192(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	open
	shrl	$31, %eax
	movzbl	%al, %eax
	movl	%eax, -172(%rbp)
	cmpl	$0, -172(%rbp)
	je	.L3
	.loc 1 15 0
	call	__errno_location
	movl	(%rax), %eax
	movl	%eax, %edi
	call	strerror
	movq	%rax, %rdx
	movq	stderr(%rip), %rax
	movq	%rdx, %rcx
	movl	$.LC1, %edx
	movl	$.LC2, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	.loc 1 16 0
	movl	$1, %edi
	call	exit
.L3:
	.loc 1 19 0
	leaq	-160(%rbp), %rdx
	movl	-172(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	fstat
	.loc 1 20 0
	movq	-112(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
	.loc 1 21 0
	movq	-112(%rbp), %rax
	movq	%rax, %rsi
	movl	-172(%rbp), %eax
	movl	$0, %r9d
	movl	%eax, %r8d
	movl	$2, %ecx
	movl	$1, %edx
	movl	$0, %edi
	call	mmap
	movq	%rax, -168(%rbp)
	.loc 1 22 0
	movq	-112(%rbp), %rax
	movq	%rax, %rdx
	movq	-168(%rbp), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	write
	.loc 1 23 0
	movl	$0, %edi
	call	exit
	.cfi_endproc
.LFE2:
	.size	main, .-main
.Letext0:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 3 "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h"
	.file 4 "/usr/include/time.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/stat.h"
	.file 6 "/usr/include/libio.h"
	.file 7 "/usr/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x46f
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF80
	.byte	0xc
	.long	.LASF81
	.long	.LASF82
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF1
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x8
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
	.uleb128 0x4
	.long	.LASF7
	.byte	0x2
	.byte	0x7c
	.long	0x42
	.uleb128 0x4
	.long	.LASF8
	.byte	0x2
	.byte	0x7d
	.long	0x3b
	.uleb128 0x4
	.long	.LASF9
	.byte	0x2
	.byte	0x7e
	.long	0x3b
	.uleb128 0x4
	.long	.LASF10
	.byte	0x2
	.byte	0x7f
	.long	0x42
	.uleb128 0x4
	.long	.LASF11
	.byte	0x2
	.byte	0x81
	.long	0x3b
	.uleb128 0x4
	.long	.LASF12
	.byte	0x2
	.byte	0x82
	.long	0x42
	.uleb128 0x4
	.long	.LASF13
	.byte	0x2
	.byte	0x83
	.long	0x5e
	.uleb128 0x4
	.long	.LASF14
	.byte	0x2
	.byte	0x84
	.long	0x5e
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF15
	.uleb128 0x4
	.long	.LASF16
	.byte	0x2
	.byte	0x8b
	.long	0x5e
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x4
	.long	.LASF17
	.byte	0x2
	.byte	0x99
	.long	0x5e
	.uleb128 0x4
	.long	.LASF18
	.byte	0x2
	.byte	0x9e
	.long	0x5e
	.uleb128 0x4
	.long	.LASF19
	.byte	0x2
	.byte	0xaf
	.long	0x5e
	.uleb128 0x6
	.byte	0x8
	.long	0xf8
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF20
	.uleb128 0x4
	.long	.LASF21
	.byte	0x3
	.byte	0xd8
	.long	0x42
	.uleb128 0x7
	.long	.LASF26
	.byte	0x10
	.byte	0x4
	.byte	0x78
	.long	0x12f
	.uleb128 0x8
	.long	.LASF22
	.byte	0x4
	.byte	0x7a
	.long	0xc4
	.byte	0
	.uleb128 0x8
	.long	.LASF23
	.byte	0x4
	.byte	0x7b
	.long	0xe7
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF24
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF25
	.uleb128 0x7
	.long	.LASF27
	.byte	0x90
	.byte	0x5
	.byte	0x2e
	.long	0x1fe
	.uleb128 0x8
	.long	.LASF28
	.byte	0x5
	.byte	0x30
	.long	0x65
	.byte	0
	.uleb128 0x8
	.long	.LASF29
	.byte	0x5
	.byte	0x35
	.long	0x86
	.byte	0x8
	.uleb128 0x8
	.long	.LASF30
	.byte	0x5
	.byte	0x3d
	.long	0x9c
	.byte	0x10
	.uleb128 0x8
	.long	.LASF31
	.byte	0x5
	.byte	0x3e
	.long	0x91
	.byte	0x18
	.uleb128 0x8
	.long	.LASF32
	.byte	0x5
	.byte	0x40
	.long	0x70
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF33
	.byte	0x5
	.byte	0x41
	.long	0x7b
	.byte	0x20
	.uleb128 0x8
	.long	.LASF34
	.byte	0x5
	.byte	0x43
	.long	0x57
	.byte	0x24
	.uleb128 0x8
	.long	.LASF35
	.byte	0x5
	.byte	0x45
	.long	0x65
	.byte	0x28
	.uleb128 0x8
	.long	.LASF36
	.byte	0x5
	.byte	0x4a
	.long	0xa7
	.byte	0x30
	.uleb128 0x8
	.long	.LASF37
	.byte	0x5
	.byte	0x4e
	.long	0xd1
	.byte	0x38
	.uleb128 0x8
	.long	.LASF38
	.byte	0x5
	.byte	0x50
	.long	0xdc
	.byte	0x40
	.uleb128 0x8
	.long	.LASF39
	.byte	0x5
	.byte	0x5b
	.long	0x10a
	.byte	0x48
	.uleb128 0x8
	.long	.LASF40
	.byte	0x5
	.byte	0x5c
	.long	0x10a
	.byte	0x58
	.uleb128 0x8
	.long	.LASF41
	.byte	0x5
	.byte	0x5d
	.long	0x10a
	.byte	0x68
	.uleb128 0x8
	.long	.LASF42
	.byte	0x5
	.byte	0x6a
	.long	0x1fe
	.byte	0x78
	.byte	0
	.uleb128 0x9
	.long	0xe7
	.long	0x20e
	.uleb128 0xa
	.long	0xbd
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.long	.LASF43
	.byte	0xd8
	.byte	0x6
	.byte	0xf1
	.long	0x38b
	.uleb128 0x8
	.long	.LASF44
	.byte	0x6
	.byte	0xf2
	.long	0x57
	.byte	0
	.uleb128 0x8
	.long	.LASF45
	.byte	0x6
	.byte	0xf7
	.long	0xf2
	.byte	0x8
	.uleb128 0x8
	.long	.LASF46
	.byte	0x6
	.byte	0xf8
	.long	0xf2
	.byte	0x10
	.uleb128 0x8
	.long	.LASF47
	.byte	0x6
	.byte	0xf9
	.long	0xf2
	.byte	0x18
	.uleb128 0x8
	.long	.LASF48
	.byte	0x6
	.byte	0xfa
	.long	0xf2
	.byte	0x20
	.uleb128 0x8
	.long	.LASF49
	.byte	0x6
	.byte	0xfb
	.long	0xf2
	.byte	0x28
	.uleb128 0x8
	.long	.LASF50
	.byte	0x6
	.byte	0xfc
	.long	0xf2
	.byte	0x30
	.uleb128 0x8
	.long	.LASF51
	.byte	0x6
	.byte	0xfd
	.long	0xf2
	.byte	0x38
	.uleb128 0x8
	.long	.LASF52
	.byte	0x6
	.byte	0xfe
	.long	0xf2
	.byte	0x40
	.uleb128 0xb
	.long	.LASF53
	.byte	0x6
	.value	0x100
	.long	0xf2
	.byte	0x48
	.uleb128 0xb
	.long	.LASF54
	.byte	0x6
	.value	0x101
	.long	0xf2
	.byte	0x50
	.uleb128 0xb
	.long	.LASF55
	.byte	0x6
	.value	0x102
	.long	0xf2
	.byte	0x58
	.uleb128 0xb
	.long	.LASF56
	.byte	0x6
	.value	0x104
	.long	0x3c3
	.byte	0x60
	.uleb128 0xb
	.long	.LASF57
	.byte	0x6
	.value	0x106
	.long	0x3c9
	.byte	0x68
	.uleb128 0xb
	.long	.LASF58
	.byte	0x6
	.value	0x108
	.long	0x57
	.byte	0x70
	.uleb128 0xb
	.long	.LASF59
	.byte	0x6
	.value	0x10c
	.long	0x57
	.byte	0x74
	.uleb128 0xb
	.long	.LASF60
	.byte	0x6
	.value	0x10e
	.long	0xa7
	.byte	0x78
	.uleb128 0xb
	.long	.LASF61
	.byte	0x6
	.value	0x112
	.long	0x34
	.byte	0x80
	.uleb128 0xb
	.long	.LASF62
	.byte	0x6
	.value	0x113
	.long	0x49
	.byte	0x82
	.uleb128 0xb
	.long	.LASF63
	.byte	0x6
	.value	0x114
	.long	0x3cf
	.byte	0x83
	.uleb128 0xb
	.long	.LASF64
	.byte	0x6
	.value	0x118
	.long	0x3df
	.byte	0x88
	.uleb128 0xb
	.long	.LASF65
	.byte	0x6
	.value	0x121
	.long	0xb2
	.byte	0x90
	.uleb128 0xb
	.long	.LASF66
	.byte	0x6
	.value	0x129
	.long	0xcf
	.byte	0x98
	.uleb128 0xb
	.long	.LASF67
	.byte	0x6
	.value	0x12a
	.long	0xcf
	.byte	0xa0
	.uleb128 0xb
	.long	.LASF68
	.byte	0x6
	.value	0x12b
	.long	0xcf
	.byte	0xa8
	.uleb128 0xb
	.long	.LASF69
	.byte	0x6
	.value	0x12c
	.long	0xcf
	.byte	0xb0
	.uleb128 0xb
	.long	.LASF70
	.byte	0x6
	.value	0x12e
	.long	0xff
	.byte	0xb8
	.uleb128 0xb
	.long	.LASF71
	.byte	0x6
	.value	0x12f
	.long	0x57
	.byte	0xc0
	.uleb128 0xb
	.long	.LASF72
	.byte	0x6
	.value	0x131
	.long	0x3e5
	.byte	0xc4
	.byte	0
	.uleb128 0xc
	.long	.LASF83
	.byte	0x6
	.byte	0x96
	.uleb128 0x7
	.long	.LASF73
	.byte	0x18
	.byte	0x6
	.byte	0x9c
	.long	0x3c3
	.uleb128 0x8
	.long	.LASF74
	.byte	0x6
	.byte	0x9d
	.long	0x3c3
	.byte	0
	.uleb128 0x8
	.long	.LASF75
	.byte	0x6
	.byte	0x9e
	.long	0x3c9
	.byte	0x8
	.uleb128 0x8
	.long	.LASF76
	.byte	0x6
	.byte	0xa2
	.long	0x57
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x392
	.uleb128 0x6
	.byte	0x8
	.long	0x20e
	.uleb128 0x9
	.long	0xf8
	.long	0x3df
	.uleb128 0xa
	.long	0xbd
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x38b
	.uleb128 0x9
	.long	0xf8
	.long	0x3f5
	.uleb128 0xa
	.long	0xbd
	.byte	0x13
	.byte	0
	.uleb128 0xd
	.long	.LASF84
	.byte	0x1
	.byte	0x3
	.long	0x57
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x461
	.uleb128 0xe
	.long	.LASF77
	.byte	0x1
	.byte	0x3
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0xe
	.long	.LASF78
	.byte	0x1
	.byte	0x3
	.long	0x461
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0xf
	.string	"fd"
	.byte	0x1
	.byte	0x5
	.long	0x57
	.uleb128 0x3
	.byte	0x91
	.sleb128 -188
	.uleb128 0x10
	.long	.LASF79
	.byte	0x1
	.byte	0x6
	.long	0xf2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x10
	.long	.LASF27
	.byte	0x1
	.byte	0x7
	.long	0x13d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xf2
	.uleb128 0x11
	.long	.LASF85
	.byte	0x7
	.byte	0xaa
	.long	0x3c9
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
.LASF35:
	.string	"st_rdev"
.LASF23:
	.string	"tv_nsec"
.LASF59:
	.string	"_flags2"
.LASF60:
	.string	"_old_offset"
.LASF62:
	.string	"_vtable_offset"
.LASF36:
	.string	"st_size"
.LASF65:
	.string	"_offset"
.LASF58:
	.string	"_fileno"
.LASF22:
	.string	"tv_sec"
.LASF55:
	.string	"_IO_save_end"
.LASF11:
	.string	"__mode_t"
.LASF21:
	.string	"size_t"
.LASF15:
	.string	"sizetype"
.LASF41:
	.string	"st_ctim"
.LASF49:
	.string	"_IO_write_ptr"
.LASF84:
	.string	"main"
.LASF19:
	.string	"__syscall_slong_t"
.LASF28:
	.string	"st_dev"
.LASF51:
	.string	"_IO_buf_base"
.LASF30:
	.string	"st_nlink"
.LASF5:
	.string	"short int"
.LASF56:
	.string	"_markers"
.LASF46:
	.string	"_IO_read_end"
.LASF37:
	.string	"st_blksize"
.LASF85:
	.string	"stderr"
.LASF25:
	.string	"long long int"
.LASF33:
	.string	"st_gid"
.LASF64:
	.string	"_lock"
.LASF6:
	.string	"long int"
.LASF12:
	.string	"__nlink_t"
.LASF61:
	.string	"_cur_column"
.LASF76:
	.string	"_pos"
.LASF82:
	.string	"/home/ludwig/src/c_test"
.LASF78:
	.string	"argv"
.LASF75:
	.string	"_sbuf"
.LASF43:
	.string	"_IO_FILE"
.LASF0:
	.string	"unsigned char"
.LASF77:
	.string	"argc"
.LASF4:
	.string	"signed char"
.LASF29:
	.string	"st_ino"
.LASF24:
	.string	"long long unsigned int"
.LASF2:
	.string	"unsigned int"
.LASF73:
	.string	"_IO_marker"
.LASF63:
	.string	"_shortbuf"
.LASF14:
	.string	"__off64_t"
.LASF48:
	.string	"_IO_write_base"
.LASF72:
	.string	"_unused2"
.LASF45:
	.string	"_IO_read_ptr"
.LASF17:
	.string	"__blksize_t"
.LASF70:
	.string	"__pad5"
.LASF52:
	.string	"_IO_buf_end"
.LASF81:
	.string	"mmapcopy.c"
.LASF20:
	.string	"char"
.LASF34:
	.string	"__pad0"
.LASF66:
	.string	"__pad1"
.LASF67:
	.string	"__pad2"
.LASF68:
	.string	"__pad3"
.LASF69:
	.string	"__pad4"
.LASF38:
	.string	"st_blocks"
.LASF74:
	.string	"_next"
.LASF40:
	.string	"st_mtim"
.LASF10:
	.string	"__ino_t"
.LASF39:
	.string	"st_atim"
.LASF32:
	.string	"st_uid"
.LASF1:
	.string	"short unsigned int"
.LASF79:
	.string	"bufp"
.LASF80:
	.string	"GNU C11 5.4.0 20160609 -mtune=generic -march=x86-64 -g -fstack-protector-strong"
.LASF3:
	.string	"long unsigned int"
.LASF50:
	.string	"_IO_write_end"
.LASF16:
	.string	"__time_t"
.LASF44:
	.string	"_flags"
.LASF13:
	.string	"__off_t"
.LASF57:
	.string	"_chain"
.LASF7:
	.string	"__dev_t"
.LASF54:
	.string	"_IO_backup_base"
.LASF42:
	.string	"__glibc_reserved"
.LASF71:
	.string	"_mode"
.LASF47:
	.string	"_IO_read_base"
.LASF26:
	.string	"timespec"
.LASF8:
	.string	"__uid_t"
.LASF53:
	.string	"_IO_save_base"
.LASF27:
	.string	"stat"
.LASF31:
	.string	"st_mode"
.LASF18:
	.string	"__blkcnt_t"
.LASF83:
	.string	"_IO_lock_t"
.LASF9:
	.string	"__gid_t"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.9) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
