  .section .data

  .section .text

  .globl _start

_start:
  pushl $3
  pushl $2

  call power

  movl %eax, %ebx

  movl $1, %eax
  int $0x80
  
  .type power, @function
power:
  pushl %ebp
  movl %esp, %ebp
  subl $4, %esp

  movl 8(%ebp), %ebx
  movl 12(%ebp), %ecx

  movl %ebx, -4(%ebp)

power_loop_start:
  cmpl $1, %ecx
  je power_loop_end
  movl -4(%ebp), %eax
  imull %ebx, %eax
  movl %eax, -4(%ebp)

  decl %ecx
  jmp power_loop_start

power_loop_end:
  movl -4(%ebp), %eax
  movl %ebp, %esp
  popl %ebp
  ret
