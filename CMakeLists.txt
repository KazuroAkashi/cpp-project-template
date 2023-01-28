cmake_minimum_required(VERSION 3.16.2)

project(cpp_template)

set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

set(COMPILE_OPTIONS -Wall -Wextra -Wpedantic -Werror -std=c++20)

file(GLOB_RECURSE SRC_FILES src/*.cpp)

function(prepare_target)

    target_compile_options(${PROJECT_NAME} PRIVATE ${COMPILE_OPTIONS})

    target_include_directories(${PROJECT_NAME} PUBLIC include)

endfunction()

if (NOT DEFINED ENV{TEST})
    add_executable(${PROJECT_NAME} ${SRC_FILES})

    prepare_target()

else()

    add_library(${PROJECT_NAME} ${SRC_FILES})

    prepare_target()

    add_subdirectory(tests)

    target_compile_options(tests PRIVATE ${COMPILE_OPTIONS})


    target_link_libraries(tests cpp_template)
endif()
