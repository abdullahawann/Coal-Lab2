[org 0x0100]

jmp start

num : dw 7

start:
     mov ax, 0
     mov si, [num]

add:
   add ax, [num1]
   sub si, 1
   cmp si, 0
   jnz add

mov ax, 0x4c00
int 0x21