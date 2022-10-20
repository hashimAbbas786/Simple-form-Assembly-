.model small
.stack 100h
.data
; Variables
intro db 09, 09, 09, 09, "Admission", 10, "$"
firstMessage db "Enter name: $"
secondMessage db "Enter Intermediate percentage: $"
thirdMessage db "Enter Matric percentage: $"
fourthMessage db "Enter field: $"
a db ?
b db ?
c db ?
d db ?
.code 
start:

    mov ax, @data ; Connectivity
    mov ds, ax

    mov ah, 09    ; Printing Intro message
    lea dx, intro
    int 21h
    
    mov ah, 09   ; Printing *Enter name*
    lea dx, firstMessage
    int 21h
    
    mov ah, 3fh   ; Taking name from the user
    mov a, al
    int 21h
    
    mov ah, 09    ; Printing *Enter Intermediate marks*
    lea dx, secondMessage
    int 21h
    
    mov ah, 3fh   ; Taking Intermediate marks from the user
    mov b, al
    int 21h
    
    mov ah, 09    ; Printing *Enter Matric percentage: *
    lea dx, thirdMessage 
    int 21h
    
    mov ah, 3fh   ; Taking Matric percentage from the user
    mov c, al
    int 21h
    
    mov ah, 09   ; Printing *Enter field: *
    lea dx, fourthMessage 
    int 21h
    
    mov ah, 3fh  ; Taking field from the user
    mov d, al
    int 21h
    
    mov ah, 4ch   ; Exiting from the code
    int 21h

end start
