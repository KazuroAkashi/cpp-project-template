cmake_minimum_required(VERSION 3.16.2)

project(cpp_template)

set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

set(COMPILE_OPTIONS -Wall -Wextra -Wpedantic -Werror -std=c++20)

file(GLOB_RECURSE SRC_FILES src/*.cpp)
add_library(${PROJECT_NAME} ${SRC_FILES})

add_subdirectory(tests)

target_compile_options(cpp_template PRIVATE ${COMPILE_OPTIONS})
target_compile_options(tests PRIVATE ${COMPILE_OPTIONS})

target_include_directories(${PROJECT_NAME} PUBLIC include)

target_link_libraries(tests cpp_template)
