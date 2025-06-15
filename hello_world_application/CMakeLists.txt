cmake_minimum_required(VERSION 3.10)

project(hello)

add_executable(hello hello_world.cpp)

if (NOT TARGET formatter_ex)
    add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/../formatter_ex_lib ${CMAKE_BINARY_DIR}/formatter_ex_lib)
endif()

target_link_libraries(hello formatter_ex)

install(TARGETS hello 
        RUNTIME DESTINATION bin
        BUNDLE DESTINATION bin)
