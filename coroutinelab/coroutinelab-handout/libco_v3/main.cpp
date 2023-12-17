#include <cassert>
#include <iostream>

#define CO_BEGIN switch(started){ case 0:/* TODO */

#define CO_END   }/* TODO */

#define CO_YIELD(x) started = __LINE__; return x; case __LINE__:  /* TODO */

#define CO_RETURN(...) /* TODO */

struct coroutine_base {
    /* TODO */
    int started = 0;
};

class fib : public coroutine_base {
private:
    /* TODO */
    int a = 0;
    int b = 1;

public:
    // TODO: update below code when you implement
    // CO_BEGIN/CO_END/CO_YIELD/CO_RETURN
    int operator()() {
        // int a = 0, b = 1;
        CO_BEGIN
            while (true) {
            // return a;
            CO_YIELD(a);
            int tmp = a;
            a = b;
            b = tmp + b;
        }
        return -1;
        CO_END
    }
};

int main() {
    int ans[] = {0, 1, 1, 2, 3, 5, 8, 13, 21, 34};
    fib foo;
    for (int i = 0; i < 10; i++)
        assert(foo() == ans[i]);
    std::cout << "libco_v3 test passed!" << std::endl;
}
