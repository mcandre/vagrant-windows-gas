; .extern GetStdHandle
; .extern WriteFile
; .extern ExitProcess
;
; .section .rodata
;
; msg: .ascii "Hello World!\r\n"
;
; .equ msg_len, .-msg
; .equ stdout_query, -11
;
; .section .data
;
; stdout: .long 0
;
; bytes_written: .long 0
;
; .section .text
;
; .global start
;
; start:
;     mov $stdout_query, %rcx
;     call GetStdHandle
;     mov %rax, (stdout)
;
;     mov  (stdout), %rcx
;     mov  $msg, %rdx
;     mov  $msg_len, %r8
;     mov  $bytes_written, %r9
;     push $0
;     call WriteFile
;
;     xor %rcx, %rcx
;     call ExitProcess
