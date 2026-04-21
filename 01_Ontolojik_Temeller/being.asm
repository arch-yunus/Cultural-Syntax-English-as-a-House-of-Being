; -----------------------------------------------------------------------------
; ontological_foundations/being.asm
; Concept: The House of Being as Binary Execution
; Author: Cultural-Syntax Linguistic Engine
; -----------------------------------------------------------------------------

section .data
    dasein db 'Dasein (Being-in-the-world)', 0xA, 0
    dasein_len equ $ - dasein

section .text
    global _start

_start:
    ; Registering the existence in the kernel of reality
    mov rax, 1          ; write syscall
    mov rdi, 1          ; stdout
    mov rsi, dasein     ; message pointer
    mov rdx, dasein_len ; message length
    syscall

    ; Maintaining the House of Being
    ; Loop of existence
exist:
    ; hlt ; In a real kernel, we would halt. Here we exit gracefully to the OS.
    
    mov rax, 60         ; exit syscall
    xor rdi, rdi        ; status 0
    syscall
