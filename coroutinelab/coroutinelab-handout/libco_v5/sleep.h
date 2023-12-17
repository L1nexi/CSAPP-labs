#include <coroutine>
#include <functional>
#include <queue>
#include <thread>

namespace coro {

static std::queue<std::function<bool()>> task_queue;

struct sleep {
    sleep(int n_ms) : delay{n_ms} {}

    std::chrono::milliseconds delay;
    // TODO: add functions to make sleep be an awaitable object
    bool await_ready() noexcept { 
        return false;
    }
    void await_suspend(std::coroutine_handle<> handle) noexcept{
        std::this_thread::sleep_for(delay);
        task_queue.emplace(
            [handle] () {
                handle.resume();
                return handle.done();
            }
        );
    }
    void await_resume() noexcept {  };
};

struct Task {
    // TODO: add functions to make Task be an coroutine handle
    struct promise_type;
    using handle_type = std::coroutine_handle<promise_type>;
    struct promise_type{
        auto get_return_object() { return Task{handle_type::from_promise(*this)}; }
        std::suspend_never initial_suspend() { return {}; }
        std::suspend_always final_suspend() noexcept { return {}; }
        void unhandled_exception() { throw; }
        void return_void() {}

        std::jthread thr;
    };
    Task(handle_type && handle): coroutine_(handle) {}
    Task(const handle_type &handle) : coroutine_(handle) {}
    ~Task(){
        if (coroutine_ != nullptr)
        {
            coroutine_.destroy();
        }
    }
    handle_type coroutine_ = nullptr;
};

void wait_task_queue_empty() {
    // TODO: block current thread until task queue is empty
    while (task_queue.empty() == false)
    {
        auto func = task_queue.front();
        func();
        task_queue.pop();
    }
}

}  // namespace coro
