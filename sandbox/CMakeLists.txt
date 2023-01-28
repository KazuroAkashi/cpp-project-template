cmake_minimum_required(VERSION 3.16.2)

project(sandbox)

file(GLOB_RECURSE SRC_FILES ./*.cpp)
add_executable(${PROJECT_NAME} ${SRC_FILES})

target_include_directories(${PROJECT_NAME} PRIVATE ${LIB_INCLUDE})