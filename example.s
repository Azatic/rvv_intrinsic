	.file	"simple_example.c"
	.option pic
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"Vector length: %zu\n"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-48
	sd	ra,40(sp)
	sd	s0,32(sp)
	addi	s0,sp,48
	li	a5,64
	sd	a5,-32(s0)
	ld	a4,-32(s0)
	vsetvli	a5,a4,e64,m1
	sd	a5,-40(s0)
	ld	a5,-40(s0)
	sd	a5,-24(s0)
	ld	a1,-24(s0)
	lla	a0,.LC0
	call	printf@plt
	li	a5,0
	mv	a0,a5
	ld	ra,40(sp)
	ld	s0,32(sp)
	addi	sp,sp,48
	jr	ra
	.size	main, .-main
	.ident	"GCC: (Debian 10.4.0-8revyos2.4) 10.4.0"
	.section	.note.GNU-stack,"",@progbits
