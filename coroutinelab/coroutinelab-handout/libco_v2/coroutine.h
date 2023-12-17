#pragma once

#include <cassert>
#include <cstdlib>

#include "coro_ctx.h"

namespace coro {

struct coroutine;
struct coroutine_attr;

coroutine *create(func_t coro_func, void *arg, const coroutine_attr *attr = nullptr);
void release(coroutine *co);

int resume(coroutine *co, int param = 0);
int yield(int ret = 0);

struct stack_mem {
    int stack_size = 0;  // 栈的大小
    // TODO: add member variables you need
    char *stack_ptr = nullptr;
    // 上一个使用该共享栈的协程
    coroutine *prev = nullptr;

    stack_mem(size_t size) : stack_size(size) {
        // TODO: implement your code here
        assert(size > 0);
        stack_ptr = new char[size];
        assert(stack_ptr != nullptr);
    }

    ~stack_mem() {
        // TODO: implement your code here
        assert(stack_ptr != nullptr);
        delete[] stack_ptr;
    }
};

struct share_stack {
    int count = 0;
    int stack_size = 0;
    stack_mem **stack_array = nullptr;
    // TODO: add member variables you need
    int current = 0;    // 循环使用

    share_stack(int count, size_t stack_size)
        : count(count), stack_size(stack_size) {
        // TODO: implement your code here
        stack_array = new stack_mem *[count];
        assert(stack_array != nullptr);
        for (int i = 0; i < count; ++i)
        {
            stack_array[i] = new stack_mem(stack_size);
            assert(stack_array[i] != nullptr);
        } 
    }

    ~share_stack() {
        // TODO: implement your code here
        assert(stack_array != nullptr);
        for (int i = 0;i < count; ++i)
        {
            delete stack_array[i];
        }
        delete[] stack_array;
    }

    // 申请一个共享栈
    stack_mem *get_stackmem() {
        // TODO: implement your code here
        int tmp = current;
        current = (current + 1) % count; 
        return stack_array[current];
    }
};

struct coroutine {
    bool started = false;
    bool end = false;

    func_t coro_func = nullptr;
    void *arg = nullptr;

    // TODO: add member variables you need
    int data = 0;
    // 已经保存时，为保存的栈
    // 未保存时，为当前栈的信息
    stack_mem *stack = nullptr;
    // 是否为共享栈
    bool isShared = false;
    // 标志当前协程的栈的内容是否已经保存
    bool isSaved = false;
    // 只有为共享栈时这两个变量有意义
    // 归属的共享栈
    share_stack *sstack = nullptr;
    
    context ctx = {0};

    ~coroutine() {
        // TODO: implement your code here
        assert(stack != nullptr);
        if (isShared == false)
        {
            delete stack;
        }
        else
        {
            if (isSaved == true)
            {
                delete stack;
            }
        }
    }
};

struct coroutine_attr {
    int stack_size = 128 * 1024;
    share_stack *sstack = nullptr;
};

class coroutine_env {
private:
    // TODO: add member variables you need
    coroutine *co_env_stack[2000] = { nullptr };
    int top = -1;
public:
    // TODO: add member variables you need

public:
    coroutine_env() {
        // 提供主函数的上下文
        // TODO: implement your code here
        coroutine *mainctx = create(nullptr, nullptr);
        push(mainctx);
    }

    coroutine *get_coro(int idx) {
    // TODO: implement your code here
        return idx == -1 ? co_env_stack[top] : co_env_stack[idx];
    }

    void pop() {
        // TODO: implement your code here
        assert(top >= -1);
        co_env_stack[top] = nullptr;
        --top;
    }


    void push(coroutine *co) {
        // TODO: implement your code here
        
        co_env_stack[++top] = co;
    }
    ~coroutine_env()
    {
        coroutine *co = co_env_stack[0];
        release(co);
    }
};

}  // namespace coro
