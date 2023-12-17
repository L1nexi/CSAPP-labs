cmake_minimum_required(VERSION 3.22)

set (SRCLIST main.cpp coro.cpp)

project (main)

add_executable (${PROJECT_NAME} ${SRCLIST})