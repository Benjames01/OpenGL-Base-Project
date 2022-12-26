cmake_minimum_required(VERSION 3.25.1)

project(BensOpenGLBase LANGUAGES CXX C)

set(SOURCES "src/main.cpp")

add_subdirectory(dependencies)
add_executable(BensOpenGLBase ${SOURCES})

target_link_libraries(BensOpenGLBase PRIVATE glfw glad)
target_include_directories(BensOpenGLBase PRIVATE "src/")

