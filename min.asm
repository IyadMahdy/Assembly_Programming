.data
	a2: .word 10, 31, 5, 7, 11, 3, 8, 40, 12, 4
	a: .word 11, 2, 3, 7, 5, 10, 9, 22, 6, 1
	message: .asciiz "Min element is: "
	
.text 
	li $s0,1
	la $s1,a2
	lw $s2,0($s1)
	
while:	
	slti $t0,$s0,10
	beq $t0,$zero,exit
	
	sll $t1,$s0,2

	add $t1,$t1,$s1
	lw $t2, 0($t1)
	slt $t1,$t2,$s2
	beq $t1,$zero,else
	move $s2,$t2
	
else:	addi $s0,$s0,1
	j while
exit:
	la $a0, message
	li $v0, 4
	syscall 
	move $a0, $s2
	li $v0 1
	syscall 
