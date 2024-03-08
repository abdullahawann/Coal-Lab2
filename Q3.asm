 [org 0x0100]

jmp start

array : dw 1, 9, 9, 9, 8, 8, 8, 8, 8, 8, 1, 1, 9, 9, 8, 8, 8, 8, 1, 9, 8, 8
number : dw 8
frequency : dw 0

start:
    mov cx,44                 ;Total bytes of array 
    mov bx,0 

l1:
    mov ax, [array + bx]
    cmp ax, [number]
    jne notfound

    add word [frequency],1

notfound: 
     add bx,2
     cmp bx,cx
     jne l1

mov ax, [frequency]
mov ax,0x4c00
int 0x21