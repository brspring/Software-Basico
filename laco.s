/*Laco que faz o incremento de 0 ate 255*/

.section .text
.global _start
_start:
    movq $0, %rdi     /*inicia o registrador rdi com o valor 0*/
_inicio:              /*seta o rotulo "_inicio para indicar o inicio do laco"*/
    cmp $255, %rdi    /*ve se o registrador rdi esta com o valor 255*/
    je _fim           /*se for igual pula para o rotulo "_fim"*/
    add $1, %rdi      /*incremento do laço de 1 em 1*/
    jmp _inicio       /*volta para o inicio caso nao caia na condicao de ser igual a 255*/          
_fim:
    movq $60, %rax    /*coloca o valor 60 no rax para indicar para o sistema o fim do programa*/
    syscall
