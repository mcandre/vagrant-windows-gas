.extern _GetStdHandle@4
.extern _WriteFile@20
.extern _ExitProcess@4

.section .rodata

msg: .ascii "Hello World!\r\n"

.equ msg_len, .-msg
.equ stdout_query, -11

.section .data

stdout: .long 0

bytes_written: .long 0

.section .text

.global start

start:
    sub $4, %esp
    push $stdout_query
    call _GetStdHandle@4
    mov %eax, (stdout)
    add $4, %esp

    sub $20, %esp
    push $0
    push $bytes_written
    push $msg_len
    push $msg
    push (stdout)
    call _WriteFile@20
    add $20, %esp

    sub $4, %esp
    push $0
    call _ExitProcess@4
    add $4, %esp
    ret
