.globl asm_mul
.type asm_mul, @function
.text
asm_mul:
    mov %rdi, %rax      # move first argument into rax
    imul %rsi           # multiply rax *= rsi
    ret
.size asm_mul, .-asm_mul

.section .note.GNU-stack,"",@progbits
