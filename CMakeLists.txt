cmake_minimum_required(VERSION 3.24)

project(mem_manage)

set(CMAKE_CXX_STANDARD 20)
set(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/lib)
add_compile_options(-pthread)

find_package(OpenCV REQUIRED)

include_directories(
        ${PROJECT_SOURCE_DIR}/include/
)

aux_source_directory(./src SRC_FILES)
add_library(${PROJECT_NAME} SHARED ${SRC_FILES})

add_executable(stllib example/main.cpp)
target_link_libraries(stllib
        ${OpenCV_LIBS}
        ${PROJECT_NAME}
)