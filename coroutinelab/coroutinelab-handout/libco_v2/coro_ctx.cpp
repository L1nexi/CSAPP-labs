#include "coro_ctx.h"

#include <cstdint>
#include <cstring>

namespace coro {


void ctx_make(context* ctx, func_t coro_func, const void* arg) {
    // TODO: implement your code here
    ctx->RIP = (uint64_t *)coro_func;
    ctx->RDI = (uint64_t)arg;
    // 在调用 coro_ctx_swap 时，rsp 的 16 进制的第一位应当为 8
    uint64_t sp = (uint64_t)ctx->RSP;
    sp = (sp - 8) & -16l;
    ctx->RSP = (uint64_t *)sp;
}

}  // namespace coro
