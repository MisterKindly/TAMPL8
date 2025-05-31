cmake_minimum_required(VERSION 3.10)

project(solver_app)

add_executable(solver_app equation.cpp)

if (NOT TARGET formatter_ex)
    add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/../formatter_ex_lib ${CMAKE_BINARY_DIR}/formatter_ex_lib)
endif()


if (NOT TARGET solver_lib)
    add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/../solver_lib solver_lib)
endif()


target_link_libraries(solver_app formatter_ex solver)
