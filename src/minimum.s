  .include "src/linux.s"
  .section .data
list:
  .long 2, 3, 4, 0

  .section .text

  .globl _start
_start:
  movl $0, %edi
  movl list(, %edi, 4), %ebx

start_loop:
  cmpl $0, %ebx
  jmp end_loop

  incl %edi
  movl list(, %edi, 4), %eax
  cmpl %eax, %ebx
  jge start_loop
  movl %eax, %ebx

end_loop: 
  movl $SYS_EXIT, %eax
  int $LINUX_SYSCALL



