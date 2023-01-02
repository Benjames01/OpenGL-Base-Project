cmake_minimum_required(VERSION 3.25.1)

project(COMP3016-PCG LANGUAGES CXX C)

set(SOURCES "src/main.cpp" "src/ShaderLoader.cpp" "src/ShaderLoader.h")

add_subdirectory(dependencies)
add_executable(COMP3016-PCG ${SOURCES})

add_custom_target(copy-resources ALL 
COMMAND ${CMAKE_COMMAND} -E copy_directory  ${PROJECT_SOURCE_DIR}/resources ${PROJECT_BINARY_DIR}/resources
COMMENT "Copying the resource directory to the binary location")
add_dependencies(COMP3016-PCG copy-resources)

target_link_libraries(COMP3016-PCG PRIVATE glfw glad glm)
target_include_directories(COMP3016-PCG PRIVATE "src/")
