cmake_minimum_required(VERSION 3.20)

project(cachelab)

set(SRC_LIST csim.c csim.h trans.c)

add_executable(${PROJECT_NAME} ${SRC_LIST})