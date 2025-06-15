cmake_minimum_required(VERSION 3.10)

if(DEFINED ENV{GITHUB_REF})
    string(REGEX MATCH "refs/tags/v([0-9]+\\.[0-9]+\\.[0-9]+)" _ $ENV{GITHUB_REF})
    if(CMAKE_MATCH_1)
        set(SOLVER_VERSION ${CMAKE_MATCH_1})
    endif()
endif()

if(NOT DEFINED SOLVER_VERSION)
    set(SOLVER_VERSION "0.0.0")
endif()

string(REPLACE "." ";" VERSION_LIST ${SOLVER_VERSION})
list(GET VERSION_LIST 0 SOLVER_VERSION_MAJOR)
list(GET VERSION_LIST 1 SOLVER_VERSION_MINOR)
list(GET VERSION_LIST 2 SOLVER_VERSION_PATCH)
set(SOLVER_VERSION_TWEAK 0)

project(Solver VERSION ${SOLVER_VERSION})

set(LIBRARY_OUTPUT_PATH ${CMAKE_BINARY_DIR}/lib)
set(EXECUTABLE_OUTPUT_PATH ${CMAKE_BINARY_DIR}/bin)

add_subdirectory(formatter_lib)
add_subdirectory(formatter_ex_lib)
add_subdirectory(solver_lib)
add_subdirectory(solver_application)
add_subdirectory(hello_world_application)

include(CPackConfig.cmake)
