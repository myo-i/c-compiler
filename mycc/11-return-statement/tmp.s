  .globl main
main:
  push %rbp
  mov %rsp, %rbp
  sub $0, %rsp
  mov $1, %rax
  mov $2, %rax
  mov $3, %rax
  jmp .L.return
.L.return:
  mov %rbp, %rsp
  pop %rbp
  ret
