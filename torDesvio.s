.section .text 
.globl _start
_start:
    movq $0, %rax    /*comeca o reg %rax com o valor 0*/
    movq $10, %rbx   /*coloca o valor 10 no reg %rbx*/
loop:
    cmpq %rbx, %rax  /*compara os valores de rbx com rax*/
    jg fim_loop      /*se o valor de %rax for maior que %rbx ele pula para o fim do loop*/
    add $1, %rax     /*add 1 no valor do reg %rax*/
    jmp fim_loop     /*volta para o inicio do laço*/
fim_loop:
    movq $60, %rax
    movq %rax, %rdi
    syscall
    