#pragma once

#include <coroutine>
#include <iterator>
#include <utility>

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

            Value value_;
            std::suspend_always yield_value(Ref value){
                value_ = value;
                return {};
            }
            // auto co() { return handle_type::from_promise(*this); }
            generator<Ref, Value> get_return_object() { return generator<Ref, Value>{handle_type::from_promise(*this)}; }
            std::suspend_always initial_suspend() const { return {}; }
            std::suspend_always final_suspend() noexcept { return {}; }
            void unhandled_exception() { exit(1); throw; }
            void return_void() {}
            Value value() const { return value_; }
        };

        generator() noexcept = default;

        ~generator() noexcept
        {
            /* TODO */
            if (coroutine_ != nullptr)
            {
                coroutine_.destroy();
            }
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
                    coro_.resume();
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
