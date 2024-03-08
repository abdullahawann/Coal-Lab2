[org 0x0100]

jmp start

array: dw 111, 999, 888, 888, 11, 99, 88, 88, 1, 9, 8, 8  
max: dw 0
secondlargest: dw 0

start:
    mov ax,0 
    mov bx,0 ; initializing counter
    mov cx,24 ; total no of bytes in array
l1:
    mov ax,[array+bx]
    cmp [max],ax
    jg l2
    mov [max],ax

l2:
    add bx,2
    cmp bx,cx
    jne l1

initialize:
    mov ax,0
    mov bx,0
    mov cx,24

l3:
    mov ax,[array+bx]
    cmp [secondlargest],ax
    jg l4
    cmp ax,[max]
    je l4
    mov [secondlargest],ax

l4:
    add bx,2
    cmp bx,cx
    jne l3


mov ax,0x4c00
int 0x21