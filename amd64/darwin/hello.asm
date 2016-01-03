; vim:ft=nasm

section .text
  global start

start:
  mov rax,0x2000004
  mov rdi,0 ; stdout
  mov rsi,msg
  mov rdx,len
  syscall

  mov rax,0x2000001
  mov rdi,0 ; success!
  syscall

section .data
  msg db "Hello, Assembler!", 0xa
  len equ $-msg
