[org 0x0100]

jmp start

num1 : dw 4
start:
     mov ax, [num1]
     mov cx, ax

l2:
  dec cx
  mov bx, cx

l1:
  add ax, [num1]
  dec bx
  cmp bx, 0
  jnz l1
  cmp cx, 1
  jne l2

mov ax, 0x4c00
int 0x21

