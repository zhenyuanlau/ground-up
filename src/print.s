  .section .data
  .equ STDIN, 0
  .equ STDOUT, 1
  .equ STDERR, 2
  .equ SYSCALL, 1
  .equ SYS_WRITE, 4
  .equ SYS_EXIT, 1

msg:
  .ascii "Hello"

  .section .text

  .globl _start
_start:
  movl $1, %eax
  movl $0, %ebx

  int $0x80
