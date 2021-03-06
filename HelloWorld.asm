section         .text                           ;This will run on (at least) a Intel(R) Xeon(R) CPU E5-2650 processor
global          _start                          ;must be decared for linker (ld)

_start:                                         ;tell linker entry point

        mov     edx,len                         ;message length
        mov     ecx,msg                         ;message to write
        mov     ebx,1                           ;file descriptor (stdout)
        mov     eax,4                           ;system call number (sys_write)
        int     0x80                            ;call kernel

        mov     eax,1                           ;system call number (sys_exit)
        int     0x80                            ;call kernel

section         .data

msg     db      'Hello, World!',0xa             ;our dear string
len     equ     $ - msg                         ;length of our dear string
