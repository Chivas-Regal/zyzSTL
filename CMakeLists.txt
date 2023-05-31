cmake_minimum_required(VERSION 3.24)

project(zyzstl)

set(CMAKE_CXX_STANDARD 20)
set(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/lib)

include_directories(
        ${PROJECT_SOURCE_DIR}/include/
        ${PROJECT_SOURCE_DIR}/include/containers/
        ${PROJECT_SOURCE_DIR}/include/mem-alloc/
)

aux_source_directory(./src SRC_FILES)
aux_source_directory(./src/containers SRC_FILES)
aux_source_directory(./src/mem-alloc SRC_FILES)

add_library(${PROJECT_NAME} SHARED ${SRC_FILES})

add_executable(stllib example/main.cpp)
target_link_libraries(stllib
        ${PROJECT_NAME}
        -lpthread
)