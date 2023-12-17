#pragma once

#include <ucontext.h>
#include <stack>
#include <cassert>

namespace coro {

class coroutine;
// 传入时应当进行类型转换
using func_t = void (*)(void*);

coroutine* create(func_t func, void* args);
void release(coroutine* co);
int resume(coroutine* co, int param = 0);
int yield(int ret = 0);

struct coroutine {
    bool started = false;
    bool end = false;

    // 协程函数
    func_t coro_func = nullptr;
    void* args = nullptr;
    // TODO: add member variables you need
    // 申请将要使用的栈空间
    char *stackptr = nullptr;
    static constexpr int stackSize = 10240;
    int data = 0;

    // 保存的上下文
    ucontext_t ctx = {0};

    coroutine(func_t func, void* args) : coro_func(func), args(args) {
        /* TODO */
        stackptr = new char[stackSize];
        assert(stackptr != nullptr);

    }  

    ~coroutine() {
        /* TODO */
        delete []stackptr;
    }
};

class coroutine_env {
private:
    // TODO: add member variables you need
    constexpr static int co_env_stack_size = 2000;
    coroutine *co_env_stack[co_env_stack_size] = {nullptr};
    int top = -1;
public:
    coroutine_env() {
        // 提供主函数的上下文
        // TODO: implement your code here
        coroutine *mainCtx = create(nullptr, nullptr);
        push(mainCtx);
    }

    coroutine* get_coro(int idx) {
        // TODO: implement your code here
        return idx == -1 ? co_env_stack[top] : co_env_stack[idx];
    }

    void push(coroutine* co) {
        // TODO: implement your code here
        assert(top != co_env_stack_size);
        co_env_stack[++top] = co;
    }

    void pop() {
        // TODO: implement your code here
        assert(top >= -1);
        co_env_stack[top] = nullptr;
        --top;
        
    }
};

}  // namespace coro