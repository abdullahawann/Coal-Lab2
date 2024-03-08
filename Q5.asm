[org 0x0100]

jmp start

array : dw 111, 999, 888, 888, 11, 99, 88, 88, 1, 9, 8, 8
maximum : dw 0

start:
     mov bx, 0
     mov cx, 12
     
l2: 
  mov ax, [array + bx]
  cmp word[maximum], ax
  jg l1
  mov[maximum], ax

l1:
  add bx, 2
  sub cx, 1
  jne l2
  mov ax, [maximum]

mov ax, 0x4c00
int 0x21
