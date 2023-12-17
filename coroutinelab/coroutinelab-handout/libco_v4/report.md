Part 4
---

1.  需要包含 `promise_type` 。一般也包含协程句柄 `std::coroutine_handle<promise_type> handle_`
2.  一般至少需要提供:

```c++
struct promise_type{
    generator<Ref, Value> get_return_object() { return generator<Ref, Value>{handle_type::from_promise(*this)}; }
    std::suspend_never initial_suspend() { return {}; }
    std::suspend_always final_suspend() noexcept { return {}; }
    void unhandled_exception() {}
};
```
还可以提供：
```c++
return_void()
return_value()
yield_value()
```

3.  需要提供：
```C++
struct Awaitable {
    std::coroutine_handle<> *hp_;
    constexpr bool await_ready() const noexcept { return false; }   //是否要挂起，如果返回 true，那么 co_await 就不会挂起函数；
    void await_suspend(std::coroutine_handle<> h) { *hp_ = h; }     // 协程挂起时的行为；
    void await_resume() noexcept {                                  // co_await 的返回值，通常返回空； 
        std::cout << "Event signaled, resuming." << std::endl;
    }
};
```
另外也可以提供 `return_void()`、`return_value()`、和 `yield_value()`

4.   通常需要提供
```c++
template<>
struct coroutine_handle<void>
{
bool done() const;
void resume();
void destroy();
void* address() const;
static coroutine_handle from_address(void* address);
};

```   

5.  
```c++
co_yield <expression>;
```
相当于执行：
```C++
co_await promise.yield_value(<expression>);
```

```c++
co_return <expression>;
```

相当于执行：
```c++
co_await promise.return_value(<expression>); goto end;
```

6.  伪代码如下
``` c++
{
   promise-type promise promise-constructor-arguments ;
   try {
      co_await promise.initial_suspend() ;
      <function-body>
   } catch ( ... ) {
      if (!initial-await-resume-called)
         throw ;
      promise.unhandled_exception() ;
   }
final-suspend :
   co_await promise.final_suspend() ;
}

```
创建一个协程的时候，协程会首先执行 `co_await promise.initial_suspend()`，若这没有使得协程挂起（称为热启动），协程将继续执行到下一个 `co_yield/await/return <expression>` 语句。随后协程将 `co_yield/co_return <expression>` 转换为 `co_await yield/return_value(<expression>)`。

接下来协程会调用 `await_ready()` 函数，根据其返回值决定是否挂起。如果挂起，协程会调用 `await_suspend(handle_type)` ，控制挂起时的行为。随后协程根据 `await_suspend` 的返回值来决定下一步操作：`void` 表示挂起。 `bool: true` 表示控制返回给调用方， `bool:false` 表示恢复当前协程。 `std::coroutine_handle<>` 表示切换到另外一个协程。 `await_resume()` 用来返回 `co_await` 的返回值。
 
协程挂起后，可以通过 `handle_type handle` 对协程进行 `resume() / destroy()`。协程这样不断的暂停、恢复，直到协程运行完毕，这时候协程调用语句 
`co_await promise.final_suspend()`。如果这使得协程挂起，则需要手动 `destroy()` ，否则不用。