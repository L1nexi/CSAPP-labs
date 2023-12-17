.text

.globl coro_ctx_swap
coro_ctx_swap:
    // TODO
    movq    %rbx, (%rdi)
    movq    %rbp, 8(%rdi)
    movq    %r12, 16(%rdi)
    movq    %r13, 24(%rdi)
    movq    %r14, 32(%rdi)
    movq    %r15, 40(%rdi)
    movq    %rdi, 48(%rdi)
    movq    %rsi, 56(%rdi)
    movq    %rdx, 64(%rdi)
    movq    %rcx, 72(%rdi)
    movq    %r8, 80(%rdi)
    movq    %r9, 88(%rdi)
    // 返回地址
    movq    (%rsp), %rcx
    movq    %rcx, 96(%rdi)
    leaq    8(%rsp), %rcx
    movq    %rcx, 104(%rdi)
    // load
    movq    (%rsi), %rbx
    movq    8(%rsi), %rbp
    movq    16(%rsi), %r12
    movq    24(%rsi), %r13
    movq    32(%rsi), %r14
    movq    40(%rsi), %r15
    movq    64(%rsi), %rdx
    movq    80(%rsi), %r8
    movq    88(%rsi), %r9
    movq    104(%rsi), %rsp
    movq    96(%rsi), %rcx
    subq    $0x10, %rsp
    movq    %rcx, (%rsp)
    movq    72(%rsi), %rcx
    movq    48(%rsi), %rdi
    movq    56(%rsi), %rsi
    ret