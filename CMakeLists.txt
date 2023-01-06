cmake_minimum_required(VERSION 3.25.1)

project(COMP3016-PCG LANGUAGES CXX C)

set(SOURCES 
    "src/main.cpp"

    "src/common/ShaderLoader.hpp"
    "src/common/ShaderLoader.cpp"
    "src/common/ModelLoader.hpp"
    "src/common/ModelLoader.cpp"

    "src/common/UserInput.cpp"
    "src/common/UserInput.hpp"
    "src/common/Shader.hpp"
    "src/common/Shader.cpp"

    "src/gui/ToolWindow.hpp"
    "src/gui/TestWindow.cpp"

    "src/model/Graphics.hpp"
    "src/model/Mesh.hpp"
    "src/model/Mesh.cpp"
    "src/model/Terrain.hpp"
    "src/model/Terrain.cpp"
)

add_subdirectory(dependencies)


set(IMGUI_LOCATION ${CMAKE_SOURCE_DIR}/dependencies/imgui)
set(IMGUI_BINDING ${CMAKE_SOURCE_DIR}/dependencies/imgui/backends)
set(IMGUI_SOURCES
    ${IMGUI_LOCATION}/imconfig.h
    ${IMGUI_LOCATION}/imgui.h
    ${IMGUI_LOCATION}/imgui.cpp
    ${IMGUI_LOCATION}/imgui_widgets.cpp
    ${IMGUI_LOCATION}/imgui_tables.cpp
    ${IMGUI_LOCATION}/imgui_internal.h
    ${IMGUI_LOCATION}/imgui_draw.cpp
    ${IMGUI_LOCATION}/imgui_demo.cpp
    ${IMGUI_LOCATION}/imstb_truetype.h
    ${IMGUI_LOCATION}/imstb_textedit.h
    ${IMGUI_LOCATION}/imstb_rectpack.h
    # Bindings for GLFW
    ${IMGUI_LOCATION}/imgui_impl_opengl3.h
    ${IMGUI_LOCATION}/imgui_impl_opengl3.cpp
    ${IMGUI_LOCATION}/imgui_impl_opengl3_loader.h
    ${IMGUI_LOCATION}/imgui_impl_glfw.h
    ${IMGUI_LOCATION}/imgui_impl_glfw.cpp
)
add_library(IMGUI ${IMGUI_SOURCES})


include_directories(${CMAKE_CURRENT_LIST_DIR}/dependencies/SOIL2/src)
add_library(SOIL2 STATIC IMPORTED)
set_property(TARGET SOIL2 PROPERTY IMPORTED_IMPLIB ${CMAKE_SOURCE_DIR}/dependencies/SOIL2/lib/windows/soil2-debug.lib)
set_property(TARGET SOIL2 PROPERTY IMPORTED_LOCATION ${CMAKE_SOURCE_DIR}/dependencies/SOIL2/lib/windows/soil2-debug.dll)
message("${SOIL2}")

add_executable(COMP3016-PCG ${SOURCES})

add_custom_target(copy-resources ALL 
COMMAND ${CMAKE_COMMAND} -E copy_directory  ${PROJECT_SOURCE_DIR}/resources ${PROJECT_BINARY_DIR}/resources
COMMENT "Copying the resource directory to the binary location")
add_dependencies(COMP3016-PCG copy-resources)

add_custom_command(TARGET COMP3016-PCG POST_BUILD
    COMMAND ${CMAKE_COMMAND} -E copy_if_different ${CMAKE_SOURCE_DIR}/dependencies/SOIL2/lib/windows/soil2-debug.dll ${CMAKE_BINARY_DIR}
    COMMAND_EXPAND_LISTS
    COMMENT "Copying the runtime DLLs to the binary location"
)

# Link imgui to glfw
target_link_libraries(IMGUI glfw)
target_link_libraries(COMP3016-PCG PRIVATE glfw glad glm SOIL2 PUBLIC IMGUI)
target_include_directories(COMP3016-PCG PRIVATE "src/" ${IMGUI_LOCATION})
  