cmake_minimum_required(VERSION 3.10)
project(hello)

add_executable(hello hello_world.cpp)
target_link_libraries(hello formatter_ex)
