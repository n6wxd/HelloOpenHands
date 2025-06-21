.section __TEXT,__text,regular,pure_instructions
.globl _main
.align 2

_main:
    // write system call
    mov x16, #4                 // system call number for write
    mov x0, #1                  // file descriptor (stdout)
    adrp x1, hello_msg@PAGE     // load page address of hello_msg
    add x1, x1, hello_msg@PAGEOFF // add page offset
    mov x2, #13                 // number of bytes to write
    svc #0                      // invoke system call

    // exit system call
    mov x16, #1                 // system call number for exit
    mov x0, #0                  // exit status
    svc #0                      // invoke system call

.section __TEXT,__cstring,cstring_literals
hello_msg:
    .asciz "hello world!\n"