#include "coroutine.h"

#include <cstring>
#include <iostream>
#define print(x) std::cout << x << std::endl;

namespace coro
{

    static coroutine_env g_coro_env;

    extern "C"
    {
        extern void coro_ctx_swap(context *, context *) asm("coro_ctx_swap");
    };

    coroutine *create(func_t coro_func, void *arg, const coroutine_attr *attr)
    {
        // TODO: implement your code here
        coroutine_attr at;
        if (attr != nullptr)
        {
            at = *attr;
        }
        else
        {
            at.sstack = nullptr;
            at.stack_size = 32 * 1024;
        }
        // 对齐为 4k 的倍数
        at.stack_size = (at.stack_size + 4095) & -4096l;
        // 栈的大小在 8k 到 128k 之间
        at.stack_size = at.stack_size > 128 * 1024 ? 128 * 1024 : at.stack_size;
        at.stack_size = at.stack_size < 8 * 1024 ? 8 * 1024 : at.stack_size;

        // 创建协程
        coroutine *tmp = new coroutine;
        assert(tmp != nullptr);
        tmp->arg = arg;
        tmp->coro_func = coro_func;
        tmp->sstack = at.sstack;

        // 私有栈，分配栈空间
        if (at.sstack == nullptr)
        {
            tmp->stack = new stack_mem(at.stack_size);
            assert(tmp->stack != nullptr);
            tmp->isShared = false;
        }
        else // 共享栈
        {
            // 由于 lazy 的方法，暂时不用初始化 stack_mem
            tmp->isShared = true;
        }

        return tmp;
    }

    void release(coroutine *co)
    {
        // TODO: implement your code here
        assert(co != nullptr);
        delete co;
    }
    void save_stack(coroutine *co)
    {
        // TODO: implement your code here
        assert(co != nullptr);
        assert(co->stack != nullptr);
        stack_mem *pmem = co->stack;
        char *topStack = pmem->stack_ptr + pmem->stack_size;
        char *btmStack = (char *)(co->ctx.RSP);
        size_t size = topStack - btmStack;
        stack_mem *newMem = new stack_mem(size);
        memcpy(newMem->stack_ptr, btmStack, size);
        pmem->prev = nullptr;
        co->stack = newMem;
        co->isSaved = true;
        return;
    }

    void swap(coroutine *curr, coroutine *pending)
    {
        // TODO: implement your code here
        if (pending->isShared == true && pending->isSaved == true) // 共享栈且已经保存
        {
            // pending 所属共享栈
            share_stack *pstack = pending->sstack;
            assert(pstack != nullptr);
            // 已经保存，需要申请共享栈
            pending->isSaved = false;
            stack_mem *pmem = pstack->get_stackmem();
            if (pmem == curr->stack)
            {
                pmem = pending->sstack->get_stackmem();
            }
            // 有需要时保存上一个协程的栈帧
            assert(pmem != nullptr);
            if (pmem->prev != nullptr)
            {
                save_stack(pmem->prev);
            }

            // 复制栈内容可能导致原局部变量的地址失效
            stack_mem *curMem = pending->stack;
            assert(curMem != nullptr);
            memcpy(pmem->stack_ptr + pmem->stack_size - curMem->stack_size,
                   curMem->stack_ptr, curMem->stack_size);

            pending->ctx.RSP = (uint64_t *)(pmem->stack_ptr + pmem->stack_size - curMem->stack_size);
            delete curMem;
            pending->stack = pmem;
            pending->stack->prev = pending;
            // 还没有保存，说明可以直接继续执行
        }
        coro_ctx_swap(&curr->ctx, &pending->ctx);
    }

    static void func_wrap(coroutine *co)
    {
        assert(co != nullptr);
        if (co->coro_func)
        {
            co->coro_func(co->arg);
        }
        co->end = true;
        yield(-1);
    }

    int resume(coroutine *co, int param)
    {
        // TODO: implement your code here
        coroutine *cur = g_coro_env.get_coro(-1);
        g_coro_env.push(co);
        if (co->started == 0)
        {
            co->started = 1;
            // 分配栈空间
            if (co->isShared == true) // 共享栈。此时肯定未保存
            {
                stack_mem *pmem = co->sstack->get_stackmem();
                if (pmem == cur->stack)
                {
                    pmem = co->sstack->get_stackmem();
                }
                assert(pmem != nullptr);
                if (pmem->prev != nullptr)
                {
                    save_stack(pmem->prev);
                }
                co->stack = pmem;
                pmem->prev = co;
                co->ctx.RSP = (uint64_t *)(pmem->stack_ptr + pmem->stack_size);
            }
            else // 私有栈
            {
                assert(co->stack != nullptr);
                stack_mem *pmem = co->stack;
                co->ctx.RSP = (uint64_t *)(pmem->stack_ptr + pmem->stack_size);
            }
            // 修改 ctx
            ctx_make(&co->ctx, (func_t)func_wrap, co);
        }
        co->data = param;
        // 启动或者恢复协程
        swap(cur, co);
        // yield 的返回位置
        return cur->data;
    }
    int yield(int ret)
    {
        // TODO: implement your code here
        coroutine *cur = g_coro_env.get_coro(-1);
        g_coro_env.pop();
        coroutine *retpos = g_coro_env.get_coro(-1);
        retpos->data = ret;
        // 如果 ret = -1，则协程已经结束
        if (ret == -1 && cur->isShared == true)
        {
            cur->stack->prev = nullptr;
        }
        swap(cur, retpos);
        return cur->data;
    }

} // namespace coro
