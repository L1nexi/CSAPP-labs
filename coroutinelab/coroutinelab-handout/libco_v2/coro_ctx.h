#pragma once

#include <stdlib.h>

namespace coro {

using func_t = void (*)(void *);
using uint64_t = unsigned long;

struct context {
    // TODO: add member variables you need
    uint64_t RBX, RBP, R12, R13, R14, R15;  // callee-saved
    uint64_t RDI, RSI, RDX, RCX, R8, R9;    // argument
    uint64_t *RIP, *RSP;                    // RSP 假定为已设置
};

// getcontext 和 makecontext 一起
// 在调用之前需要设置栈以及栈指针
void ctx_make(context *ctx, func_t coro_func, const void *arg);
}  // namespace coro
