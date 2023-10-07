.section .text
.globl _start
_start: 
    movq $5, %rax
    movq $10, %rbx
    mul %rbx
    movq %rax, %rbx
    movq $60, %rax
    movq %rbx, %rdi
    syscall

