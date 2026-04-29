; -----------------------------------------------------------------------------
; ontological_foundations/being.asm
; Concept: The House of Being as Binary Execution (Linguistic v3.0)
; -----------------------------------------------------------------------------

; --- Linguistic Equates (Ontological Op-Codes) ---
SELF      equ 0x01      ; The "I" Register
ACTION    equ 0x02      ; The "Active Verb" Bus
OBJECT    equ 0x03      ; The "Object" Destination
PRESENCE  equ 0x04      ; The "Dasein" Kernel Flag

section .data
    declaration db 'I AM (The Linguistic Initialization)', 0xA, 0
    decl_len    equ $ - declaration

section .text
    global _start

_start:
    ; --- Step 1: Bootstrapping Existence ---
    ; In English, existence starts with the 'I' (Subject).
    mov rax, SELF       ; Load the self into the primary register
    
    ; --- Step 2: Executing Presence ---
    ; Syscall: Declare Presence to the Kernel of Reality
    mov rax, 1          ; Syscall: WRITE
    mov rdi, 1          ; STDOUT
    mov rsi, declaration
    mov rdx, decl_len
    syscall

    ; --- Step 3: The Infinite Loop of Being ---
    ; As Heidegger notes: Being is a constant process of dwelling.
dwelling:
    nop                 ; Maintaining state
    jmp dwelling        ; The 'Being' does not terminate naturally.

    ; Emergency Exit (Unreachable in perfect ontology)
    mov rax, 60
    xor rdi, rdi
    syscall
