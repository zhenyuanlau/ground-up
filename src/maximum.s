  .section .data

array:
  .long 1, 2, 3, 4, 5

  .section .text
  .globl _start
_start:
  movl $0, %edi
  movl array(, %edi, 4), %eax
  movl %eax, %ebx

start_loop:
  cmpl $0, %eax
  je end_loop
  incl %edi
  movl array(, %edi, 4), %eax
  cmpl %ebx, %eax
  jle start_loop

  movl %eax, %ebx

  jmp start_loop

end_loop:
  movl $1, %eax
  movl $110, %ebx
  int $0x80
