#pragma once

#include <coroutine>
#include <iterator>
#include <utility>
#include <iostream>

#define print(x) std::cout << x << std::endl

namespace coro
{

    template <typename Ref, typename Value = std::remove_cvref_t<Ref>>
    class generator
    {
    public:
        // TODO: implement promise_type

        struct promise_type;
        using handle_type = std::coroutine_handle<promise_type>;
        struct GeneratorEnd {};
        struct promise_type
        {   
            friend generator;
            Value value_{};
            promise_type *parent_ = nullptr;
            promise_type *root_ = nullptr;
            promise_type *leaf_ = nullptr;
            // 叶节点的调用：
            std::suspend_always yield_value(Ref value){
                root_->value_ = value;
                return {};
            }
            // 非叶节点，需要递归
            auto yield_value(generator<Ref, Value> &&gen){
                struct  recursiveAwaiter{
                    friend generator;
                    recursiveAwaiter(generator<Ref, Value> &&gen): gen_(gen) {}
                    bool await_ready(){ return !gen_.coroutine_; }
                    handle_type await_suspend(handle_type handle){
                        promise_type *current = &(handle.promise());
                        promise_type *nested = &(gen_.coroutine_.promise());
                        promise_type *root = current->root_;
                        root->leaf_ = nested;
                        nested->parent_ = current;
                        nested->root_ = root;
                        
                        return gen_.coroutine_;
                    }
                    void await_resume() noexcept{}
                    generator gen_;
                };
                return recursiveAwaiter(std::move(gen));
            }

            // auto co() { return handle_type::from_promise(*this); }
            generator<Ref, Value> get_return_object() { return generator<Ref, Value>{handle_type::from_promise(*this)}; }
            std::suspend_always initial_suspend() const { return {}; }
            auto final_suspend() noexcept { 
                struct finalAwaiter{
                    bool await_ready() noexcept { return false; };
                    std::coroutine_handle<> await_suspend(handle_type handle) noexcept {
                        promise_type &prom = handle.promise();
                        promise_type *parent = prom.parent_;
                        if (parent != nullptr)
                        {
                            (prom.root_)->leaf_ = parent;
                            return handle_type::from_promise(*parent);
                        }
                        else
                        {
                            return std::noop_coroutine();
                        }
                    }
                    void await_resume() noexcept { };
                };
                return finalAwaiter{};
            }
            void unhandled_exception() { exit(1); throw; }
            void return_void() {}
            Value value() const { return root_->value_; }
        }; 

        generator() noexcept = default;

        ~generator() noexcept
        {
            /* TODO */
            // if (coroutine_ != nullptr)
            // {
            //     promise_type &prom = coroutine_.promise();
            //     if (prom.parent_ == nullptr)
            //     {

            //     }
            // }
        }

        class iterator
        {
        public:
            using iterator_category = std::input_iterator_tag;
            using difference_type = std::ptrdiff_t;
            using value_type = Value;
            using reference = Ref;
            using pointer = std::add_pointer_t<Ref>;

            iterator() noexcept = default;
            iterator(const iterator &) = delete;
            iterator(iterator &&o)
            {
                std::swap(coro_, o.coro_);
            }

            iterator &operator=(iterator &&o)
            {
                std::swap(coro_, o.coro_);
                return *this;
            }

            ~iterator() {}

            // TODO: implement operator== and operator!=
            bool operator!=(const GeneratorEnd& end) const { return coro_ && !coro_.done(); }
            bool operator==(const GeneratorEnd& end) const { return !coro_ || coro_.done(); }
            // TODO: implement operator++ and operator++(int)
            iterator &operator++(){
                if (coro_ != nullptr && coro_.done() == false)
                {
                    promise_type &prom = coro_.promise();
                    handle_type hand = handle_type::from_promise(*(prom.leaf_));
                    assert(hand != nullptr);
                    hand.resume();
                    return *this;
                }
            }
            void operator++(int)
            {
                if (coro_ != nullptr && coro_.done() == false)
                {
                    (void)operator++();
                }
            }
            // TODO: implement operator* and operator->
            Ref operator*() const
            {
                if (coro_ != nullptr && coro_.done() == false)
                {
                return coro_.promise().value();
                }
                return {};
            }
            Ref operator->();

        private:
            friend generator;

            // TODO: implement iterator constructor
            // hint: maybe you need to a promise handle
            explicit iterator(handle_type h_) noexcept {
                coro_ = h_;
            }

            // TODO: add member variables you need
            handle_type coro_ = nullptr;
        };

        // TODO: implement begin() and end() member functions
        GeneratorEnd end() const { return GeneratorEnd{}; };
        iterator begin() { 
            if (coroutine_ != nullptr)
            {
                promise_type &prom = coroutine_.promise();
                prom.root_ = &prom;
                prom.leaf_ = &prom;
                coroutine_.resume();
            }

            return iterator(coroutine_);
        }


    private:
        // TODO: implement generator constructor
        explicit generator(handle_type handle) noexcept: coroutine_(handle) {}

        // TODO: add member variables you need
        handle_type coroutine_ = nullptr;
    };

} // namespace coro
