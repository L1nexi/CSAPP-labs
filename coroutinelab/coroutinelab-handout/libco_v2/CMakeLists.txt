cmake_minimum_required(VERSION 3.22)

set(SRC_LIST main.cpp coroutine.cpp coro_ctx.cpp)

project(main)

add_executable(${PROJECT_NAME} ${SRC_LIST})