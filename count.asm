.data
    array:  .word  19, 2, 3, 7, 5, 10, 9, 0, 6, 1  # Array of 10 integers
    msg:    .asciiz "Number of even numbers: "         # Message to display before the result

.text
    .globl main  # Marks the main label as globally accessible for the program

main:
    li $t0, 0          # Initialize even number counter ($t0) to 0
    li $t1, 10         # Set loop counter ($t1) to array size (10 elements)
    la $t2, array      # Load the base address of the array into $t2

loop:
    lw $t3, 0($t2)     # Load current array element into $t3
    andi $t4, $t3, 1   # Check if the number is even (least significant bit == 0)
    beqz $t4, increment # If even, jump to increment counter

next:
    addi $t2, $t2, 4   # Move to the next element in the array
    addi $t1, $t1, -1  # Decrement loop counter
    bnez $t1, loop     # Repeat loop if there are more elements
    b end_loop         # Exit loop once done

increment:
    addi $t0, $t0, 1   # Increment even number counter
    b next             # Continue to the next element

end_loop:
    # Print the message
    li $v0, 4          # Syscall for printing a string
    la $a0, msg        # Load address of message
    syscall

    # Print the count of even numbers
    li $v0, 1          # Syscall for printing an integer
    move $a0, $t0      # Move even number count to $a0
    syscall

    # Exit program
    li $v0, 10         # Syscall for exit
    syscall
