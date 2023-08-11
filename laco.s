.section .text
.global _start
_start:
movq $0, %rdi
_inicio:
cmp $255, %rdi
je _fim
add $1, %rdi
jmp _inicio
_fim:
movq $60, %rax
syscall