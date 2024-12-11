.data
	arr: .word 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
	#arr: .word 7, 2, 5, 11, 4, 6, 1, 1, 8, 3
	message: .asciiz "The average is: "
	size: .word 10
	divisor: .float 10.0
.text

main:
 	# Initialize sum to 0
 	li $t0, 0
 	
 	# Loop Counter (i)
    	li $t1, 0

loop:
    	# Check if i < size
    	lw $t2, size
    	
    	# If i == size, exit
    	beq $t1, $t2, calculate_average

    	# Load Address of Array
    	la $t3, arr
    	
    	# Calculate i * 4 to get the number of bytes
    	sll $t4, $t1, 2
    	
    	# Get Address of arr[i]
    	add $t3, $t3, $t4
    	
    	# Load the value of arr[i] in $t5
    	lw $t5, 0($t3)

    	# Add arr[i] to sum
    	add $t0, $t0, $t5

    	# Increment i
    	add $t1, $t1, 1
    	
    	# Jump back to the beginning of the loop
    	j loop

calculate_average:
    	# Convert sum to float
    	mtc1 $t0, $f0
    	cvt.s.w $f0, $f0
    	
    	# Convert size to float
    	mtc1 $t2, $f1
    	cvt.s.w $f1, $f1    	

    	# Divide sum by size
    	div.s $f2, $f0, $f1

    	# Print the message
    	li $v0, 4
    	la $a0, message
    	syscall

    	# Print the average
    	li $v0, 2
    	mov.s $f12, $f2
   	syscall

    	# Exit the program
    	li $v0, 10
    	syscall
