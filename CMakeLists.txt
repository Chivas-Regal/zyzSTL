cmake_minimum_required(VERSION 3.24)

project(mem_manage)

set(CMAKE_CXX_STANDARD 20)
add_compile_options(-pthread)

aux_source_directory(. SRC_LIST)
aux_source_directory(./include SRC_LIST)
aux_source_directory(./src SRC_LIST)

add_executable(${PROJECT_NAME} ${SRC_LIST})