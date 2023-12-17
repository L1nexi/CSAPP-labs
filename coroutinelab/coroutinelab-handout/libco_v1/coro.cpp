#include "coro.h"

namespace coro {
// static coroutine_env g_coro_env;
coroutine_env g_coro_env;

coroutine* create(func_t func, void* args) {
    // TODO: implement your code here
    coroutine *tmp = new coroutine(func, args);
    return tmp;
}

void release(coroutine* co) {
    assert(co != nullptr);
    delete co;
}

// func_warp 通过一个辅助函数来标志协程的结束
static void func_wrap(coroutine* co) {
    if (co->coro_func) 
    {
        co->coro_func(co->args);
    }
    co->end = true;
    yield(-1);
}

int resume(coroutine* co, int param) {
    // TODO: implement your code here
    // resume: 恢复上下文
    // 如果为启动，则启动并设置上下文。

    // 主协程
    coroutine *cur = g_coro_env.get_coro(-1);
    g_coro_env.push(co);
    co->data = param;
    if (co->started == 0)
    {
        co->started = 1;
        // 初始化
        getcontext(&co->ctx);
        // 分配栈空间
        co->ctx.uc_stack.ss_size = co->stackSize;
        co->ctx.uc_stack.ss_sp = co->stackptr;
        co->ctx.uc_link = &cur->ctx;
        // 修改 ucp
        makecontext(&co->ctx, (void (*)())func_wrap, 1, co);
    }

    // 启动协程
    swapcontext(&(cur->ctx), &(co->ctx));

    return cur->data;
}

int yield(int ret) {
    // 暂停，保存上下文
    // TODO: implement your code here
    coroutine *cur = g_coro_env.get_coro(-1);
    g_coro_env.pop();
    coroutine *retpos = g_coro_env.get_coro(-1);   // 主协程
    retpos->data = ret;
    swapcontext(&cur->ctx, &retpos->ctx);
    return cur->data;    
}

}  // namespace coro